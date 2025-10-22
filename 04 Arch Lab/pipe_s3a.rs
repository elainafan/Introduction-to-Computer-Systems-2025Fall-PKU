//! We found that the critical path length of `pipe_s2` is 7, and the dependency
//! path for calculating `f_pc` is too long. To reduce the dependency path length
//! of `f_pc`, we further split the pipeline stages, separating the Decode Stage
//! from the subsequent Execute, Memory, and Writeback stages.
//!
//! However, doing so introduces new issues:
//! 1. `reg_read` and `reg_write` are now in different pipeline stages, which 
//!    can lead to data hazards.
//! 2. The operands used in the calculation of `f_pc` are also split across
//!    different pipeline stages, which is actually incorrect because values in 
//!    different pipeline stages at a specific time belong to different
//!    instructions.
//!
//! To solve the above issues, we implement stall or bubble control on the 
//! pipeline registers when necessary, ensuring that we wait for one more cycle
//! to guarantee the correctness of the computed results.
//!
//! When reading this code, it is recommended to compare it with `pipe_s2` to\
//! better understand this version of the pipeline.

// A pipeline register stores necessary information to process the instruction
// at a specific stage.
crate::define_stages! {
    FetchStage f {
        valP: u64 = 0
    }
    DecodeStage d {
        stat: Stat = Stat::Aok, icode: u8 = NOP, ifun: u8 = 0,
        rA: u8 = RNONE, rB: u8 = RNONE,
        valC: u64 = 0, valP: u64 = 0
    }
    // Although this pipeline register is named as "ExecuteStage", it is actually
    // used in all of the rest stages.
    ExecuteStage e {
        stat: Stat = Stat::Aok, icode: u8 = NOP, ifun: u8 = 0,
        valP: u64 = 0, valC: u64 = 0,
        // reg_read is used in the Decode stage. At Decode stage, we store
        // d_valA and d_valB in this pipeline register for the Execute stage
        // of the next cycle.
        valA: u64 = 0, valB: u64 = 0,
        // reg_write will be used in the Execute stage. So at Decode stage, 
        // we store d_dstE and d_dstM in this pipeline register for the Execute
        // stage of the next cycle.
        dstE: u8 = RNONE, dstM: u8 = RNONE
    }
}

sim_macro::hcl! {
#![hardware = crate::architectures::hardware_seq]
#![program_counter = f_pc]
#![termination = prog_term]
#![stage_alias(F => f, D => d, E => e)]

use Stat::*;

:==============================: Fetch Stage :================================:
// In the Fetch Stage, D.icode represents the instruction from the previous
// cycle.

// What address should instruction be fetched at?
// We use D.icode because we use the icode in the last cycle to determine the
// next PC.
u64 f_pc = [
    // Call.  Use instruction constant
    // If the previous instruction is CALL, the constant value should be the next PC
    // valC is from Fetch Stage, thus the last cycle
    D.icode == CALL : D.valC;
    // Taken branch.  Use instruction constant
    E.icode == JX && e_cnd : E.valC;
    // Completion of RET instruction.  Use value from stack
    // valM is from DEMW stage, thus the current cycle
    E.icode == RET : e_valM;
    // Default: Use incremented PC
    1 : F.valP;
];

@set_input(imem, {
    pc: f_pc
});

// Determine instruction code
// This signal is prefixed with 'f_' simply to inform that, it is not intended
// to be used in the Execute stage (why?). Use `D.icode` instead.
u8 f_icode = [
    imem.error : NOP;
    1 : imem.icode; // Default: get from instruction memory
];

// Determine instruction function
u8 f_ifun = [
    imem.error : 0; // set ifun to 0 if error
    1 : imem.ifun;	// Default: get from instruction memory
];

bool instr_valid = f_icode in // CMOVX is the same as RRMOVQ
    { NOP, HALT, CMOVX, IRMOVQ, RMMOVQ, MRMOVQ,
    OPQ, JX, CALL, RET, PUSHQ, POPQ };

// Does fetched instruction require a regid byte?
bool need_regids =
    f_icode in { CMOVX, OPQ, PUSHQ, POPQ, IRMOVQ, RMMOVQ, MRMOVQ };

// Does fetched instruction require a constant word?
bool need_valC = f_icode in { IRMOVQ, RMMOVQ, MRMOVQ, JX, CALL };

@set_input(pc_inc, {
    need_valC: need_valC,
    need_regids: need_regids,
    old_pc: f_pc,
});

u64 f_valP = pc_inc.new_pc;

[u8; 9] align = imem.align;

@set_input(ialign, {
    align: align,
    need_regids: need_regids,
});

u64 f_valC = ialign.valC;
u8 f_ra = ialign.rA;
u8 f_rb = ialign.rB;

@set_stage(f, {
    valP: f_valP,
});


Stat f_stat = [
    imem.error : Adr;
    !instr_valid : Ins;
    1 : Aok;
];

@set_stage(d, {
    valC: f_valC,
    valP: f_valP,
    rA: f_ra,
    rB: f_rb,
    icode: f_icode,
    ifun: f_ifun,
    stat: f_stat,
});

:==============================: Decode Stage :================================:
// In the Decode Stage, D.icode represents the current instruction.

u8 d_icode = D.icode;
u8 d_ifun = D.ifun;
u64 d_valP = D.valP;
u64 d_valC = D.valC;
Stat d_stat = D.stat;

// What register should be used as the A source?
u8 d_srcA = [
    D.icode in { CMOVX, RMMOVQ, OPQ, PUSHQ  } : D.rA;
    D.icode in { POPQ, RET } : RSP;
    1 : RNONE; // Don't need register
];

// What register should be used as the B source?
u8 d_srcB = [
    D.icode in { OPQ, RMMOVQ, MRMOVQ } : D.rB;
    D.icode in { PUSHQ, POPQ, CALL, RET } : RSP;
    1 : RNONE; // Don't need register
];

@set_input(reg_read, {
    srcA: d_srcA,
    srcB: d_srcB,
});

u64 d_valA = reg_read.valA;
u64 d_valB = reg_read.valB;

// What register should be used as the E destination?
// The logic of computing dstE is distributed on Decode stage and Execute stage.
u8 d_dstE = [
    D.icode in { CMOVX } : D.rB;
    D.icode in { IRMOVQ, OPQ } : D.rB;
    D.icode in { PUSHQ, POPQ, CALL, RET } : RSP;
    1 : RNONE; // Don't write any register
];

// What register should be used as the M destination?
u8 d_dstM = [
    D.icode in { MRMOVQ, POPQ } : D.rA;
    1 : RNONE; // Don't write any register
];

@set_stage(e, {
    valP: d_valP,
    valC: d_valC,
    valA: d_valA,
    valB: d_valB,
    dstE: d_dstE,
    dstM: d_dstM,
    icode: d_icode,
    ifun: d_ifun,
    stat: d_stat,
});

:=======================: "Execute Stage (Execute)" :==========================:
// In the Execute Stage, E.icode represents the current instruction.

u8 e_ifun = E.ifun;

// Select input A to ALU
u64 aluA = [
    E.icode in { CMOVX, OPQ } : E.valA;
    E.icode in { IRMOVQ, RMMOVQ, MRMOVQ } : E.valC;
    E.icode in { CALL, PUSHQ } : NEG_8;
    E.icode in { RET, POPQ } : 8;
    // Other instructions don't need ALU
];

// Select input B to ALU
u64 aluB = [
    E.icode in { RMMOVQ, MRMOVQ, OPQ, CALL,
              PUSHQ, RET, POPQ } : E.valB;
    E.icode in { CMOVX, IRMOVQ } : 0;
    // Other instructions don't need ALU
];

// Set the ALU function
u8 alufun = [
    E.icode == OPQ : e_ifun;
    1 : ADD;
];
@set_input(alu, {
    a: aluA,
    b: aluB,
    fun: alufun,
});

// Should the condition codes be updated?
bool set_cc = E.icode in { OPQ };

u64 e_valE = alu.e;

@set_input(reg_cc, {
    a: aluA,
    b: aluB,
    e: e_valE,
    opfun: alufun,
    set_cc: set_cc,
});

ConditionCode cc = reg_cc.cc;

@set_input(cond, {
    cc: cc,
    condfun: e_ifun,
});

bool e_cnd = cond.cnd;

u8 e_dstE = [
    E.icode == CMOVX && !e_cnd : RNONE;
    1 : E.dstE;
];
u8 e_dstM = E.dstM;


:========================: "Execute Stage (Memory)" :==========================:

// Set read control signal
bool mem_read = E.icode in { MRMOVQ, POPQ, RET };

// Set write control signal
bool mem_write = E.icode in { RMMOVQ, PUSHQ, CALL };

// Select memory address
u64 mem_addr = [
    E.icode in { RMMOVQ, PUSHQ, CALL, MRMOVQ } : e_valE;
    E.icode in { POPQ, RET } : E.valA;
    // Other instructions don't need address
];

// Select memory input data
u64 mem_data = [
    // Value from register
    E.icode in { RMMOVQ, PUSHQ } : E.valA;
    // Return PC (valP is the incremented PC)
    E.icode == CALL : E.valP;
    // Default: Don't write anything
];

@set_input(dmem, {
    read: mem_read,
    write: mem_write,
    addr: mem_addr,
    datain: mem_data,
});

u64 e_valM = dmem.dataout;

@set_input(reg_write, {
    dstE: e_dstE,
    dstM: e_dstM,
    valM: e_valM,
    valE: e_valE,
});

// Determine instruction status
Stat e_stat = [
    dmem.error : Adr;
    E.icode == HALT : Hlt;
    1 : E.stat;
];

bool prog_term = e_stat in { Hlt, Adr, Ins };

:========================: Pipeline Register Control :=========================:

// If a data hazard occurs, we need to wait for the data to be written to the
// registers before proceeding.
bool data_harzard = d_srcA != RNONE && d_srcA in { e_dstE, e_dstM }
    || d_srcB != RNONE && d_srcB in { e_dstE, e_dstM };

bool f_stall = D.icode in { JX, RET } || data_harzard;

@set_stage(f, {
    stall: f_stall,
});


bool d_stall = data_harzard;

bool d_bubble = D.icode in { JX, RET } && !d_stall;

@set_stage(d, {
    stall: d_stall,
    bubble: d_bubble,
});

// A data hazard has occurred, and the preceding stage is waiting. 
// This stage has nothing to do, so we insert a bubble.
bool e_bubble = data_harzard;

@set_stage(e, {
    bubble: e_bubble,
});

}

impl crate::framework::PipeSim<Arch> {
    fn print_state(&self) {
        use crate::utils::format_ctrl;
        use crate::utils::format_icode;

        #[allow(non_snake_case)]
        let PipeRegs { f: _, d: D, e: E } = &self.cur_state;
        let PipeRegs { f, d, e } = &self.nex_state;

        println!(
            r#"      Fetch  Decode ExMeWr
icode {f_icode} {d_icode} {e_icode}
ctrl  {fctrl} {dctrl} {ectrl}
"#,
            f_icode = format_icode(self.cur_inter.f_icode),
            d_icode = format_icode(D.icode),
            e_icode = format_icode(E.icode),
            fctrl = format_ctrl(f.bubble, f.stall),
            dctrl = format_ctrl(d.bubble, d.stall),
            ectrl = format_ctrl(e.bubble, e.stall),
        );
    }
}
