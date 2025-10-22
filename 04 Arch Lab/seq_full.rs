// This macro defines all pipeline registers in this architecture.
// In SEQ architecture, all stages are executed in a single cycle. Thus
// principally no pipeline registers are needed, with the exception of the
// program counter, since we need it for instruction fetching.
crate::define_stages! {
    /// The whole cycle is a single stage.
    SEQstage s { pc: u64 = 0 }
}

sim_macro::hcl! {

// Specify the CPU hardware devices set.
// This will imports all items from the hardware module.
#![hardware = crate::architectures::hardware_seq]

// Specify the program counter by an intermediate signal. This value is read by
// debugger. Conventionally, when we create a breakpoint at the line of code, the
// debugger seems to stop before executing the line of code. But in this simulator,
// The breakpoint take effects when the current cycle is executed (so the value of pc
// is calculated) and before the next cycle enters.
//
// Changing this value to other signals makes no difference to the simulation.
// But it affects the behavior of the debugger.
#![program_counter = pc]

// Specify a boolean intermediate signal to indicate whether the program should
// be terminated.
#![termination = prog_term]

// This attribute defines the identifiers for pipeline registers. For "F => f", the
// identifier `f` is the short name in [`crate::define_stages`], and `F` can be
// arbitrarily chosen.
//
// e.g. S.pc is the value at the start of the cycle (you should treat it as
// read-only), s.pc is the value at the end of the cycle (you should assign to it).
#![stage_alias(S => s)]

use Stat::*;

// You can use `:====: title :====:` to declare a section. This helps to organize
// your code and the information displayed by debugger. It makes no difference in
// the simulation. That means it does not alter the evaluation order of CPU cycle.
:==============================: Fetch Stage :================================:

u64 pc = S.pc;

@set_input(imem, {
    pc: pc
});

// Determine instruction code
u8 icode = [
    imem.error : NOP;
    true : imem.icode; // Default: get from instruction memory
];

// Determine instruction function
u8 ifun = [
    imem.error : 0; // set ifun to 0 if error
    true : imem.ifun;	// Default: get from instruction memory
];

bool instr_valid = icode in // CMOVX is the same as RRMOVQ
    { IOPQ, NOP, HALT, CMOVX, IRMOVQ, RMMOVQ, MRMOVQ,
    OPQ, JX, CALL, RET, PUSHQ, POPQ };

// Does fetched instruction require a regid byte?
bool need_regids =
    icode in { IOPQ, CMOVX, OPQ, PUSHQ, POPQ, IRMOVQ, RMMOVQ, MRMOVQ };

// Does fetched instruction require a constant word?
bool need_valC = icode in { IOPQ, IRMOVQ, RMMOVQ, MRMOVQ, JX, CALL };

@set_input(pc_inc, {
    need_valC: need_valC,
    need_regids: need_regids,
    old_pc: pc,
});

[u8; 9] align = imem.align;

@set_input(ialign, {
    align: align,
    need_regids: need_regids,
});

u64 valP = pc_inc.new_pc;

:=============================: Decode Stage :==============================:

// What register should be used as the A source?
u8 srcA = [
    icode in { CMOVX, RMMOVQ, OPQ, PUSHQ  } : ialign.rA;
    icode in { POPQ, RET } : RSP;
    true : RNONE; // Don't need register
];

// What register should be used as the B source?
u8 srcB = [
    icode in { IOPQ, OPQ, RMMOVQ, MRMOVQ } : ialign.rB;
    icode in { PUSHQ, POPQ, CALL, RET } : RSP;
    true : RNONE; // Don't need register
];

@set_input(reg_read, {
    srcA: srcA,
    srcB: srcB,
});

// What register should be used as the E destination?
u8 dstE = [
    icode in { CMOVX } && cnd : ialign.rB;
    icode in { IRMOVQ, OPQ, IOPQ } : ialign.rB;
    icode in { PUSHQ, POPQ, CALL, RET } : RSP;
    true : RNONE; // Don't write any register
];

// What register should be used as the M destination?
u8 dstM = [
    icode in { MRMOVQ, POPQ } : ialign.rA;
    true : RNONE; // Don't write any register
];

:==============================: Execute Stage :===============================:

// Select input A to ALU
u64 aluA = [
    icode in { CMOVX, OPQ } : reg_read.valA;
    icode in { IRMOVQ, RMMOVQ, MRMOVQ, IOPQ } : ialign.valC;
    icode in { CALL, PUSHQ } : NEG_8;
    icode in { RET, POPQ } : 8;
    // Other instructions don't need ALU
];

// Select input B to ALU
u64 aluB = [
    icode in { RMMOVQ, MRMOVQ, OPQ, CALL,
              PUSHQ, RET, POPQ, IOPQ } : reg_read.valB;
    icode in { CMOVX, IRMOVQ } : 0;
    // Other instructions don't need ALU
];

// Set the ALU function
u8 alufun = [
    icode == OPQ || icode == IOPQ : ifun;
    true : ADD;
];

@set_input(alu, {
    a: aluA,
    b: aluB,
    fun: alufun,
});

// Should the condition codes be updated?
bool set_cc = icode in { OPQ, IOPQ };

u64 valE = alu.e;

@set_input(reg_cc, {
    a: aluA,
    b: aluB,
    e: valE,
    opfun: alufun,
    set_cc: set_cc,
});

ConditionCode cc = reg_cc.cc;

@set_input(cond, {
    cc: cc,
    condfun: ifun,
});

bool cnd = cond.cnd;

:===============================: Memory Stage :===============================:

// Set read control signal
bool mem_read = icode in { MRMOVQ, POPQ, RET };

// Set write control signal
bool mem_write = icode in { RMMOVQ, PUSHQ, CALL };

// Select memory address
u64 mem_addr = [
    icode in { RMMOVQ, PUSHQ, CALL, MRMOVQ } : valE;
    icode in { POPQ, RET } : reg_read.valA;
    // Other instructions don't need address
];

// Select memory input data
u64 mem_data = [
    // Value from register
    icode in { RMMOVQ, PUSHQ } : reg_read.valA;
    // Return PC
    icode == CALL : valP;
    // Default: Don't write anything
];

@set_input(dmem, {
    read: mem_read,
    write: mem_write,
    addr: mem_addr,
    datain: mem_data,
});

u64 valM = dmem.dataout;

@set_input(reg_write, {
    dstE: dstE,
    dstM: dstM,
    valM: valM,
    valE: valE,
});

// Determine instruction status
Stat stat = [
    imem.error || dmem.error : Adr;
    !instr_valid : Ins;
    icode == HALT : Hlt;
    true : Aok;
];

bool prog_term = stat in { Hlt, Adr, Ins };

:==========================: Program Counter Update :==========================:

// What address should instruction be fetched at

u64 new_pc = [
    // Call.  Use instruction constant
    icode == CALL : ialign.valC;
    // Taken branch.  Use instruction constant
    icode == JX && cnd : ialign.valC;
    // Completion of RET instruction.  Use value from stack
    icode == RET : valM;
    // Default: Use incremented PC
    true : valP;
];

@set_stage(s, {
    pc: new_pc,
});
}

impl crate::framework::PipeSim<Arch> {
    fn print_state(&self) {}
}
