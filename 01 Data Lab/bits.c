/* 
 * CS:APP Data Lab 
 * 
 * <Please put your name and userid here>
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting an integer by more
     than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implent floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
     that you are allowed to use for your implementation of the function. 
     The max operator count is checked by dlc. Note that '=' is not 
     counted; you may use as many of these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce 
 *      the correct answers.
 */


#endif
/* Copyright (C) 1991-2024 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
/* wchar_t uses Unicode 10.0.0.  Version 10.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2017, fifth edition, plus
   the following additions from Amendment 1 to the fifth edition:
   - 56 emoji characters
   - 285 hentaigana
   - 3 additional Zanabazar Square characters */

/* 
 * bitOr - x|y using only ~ and & 
 *   Example: bitOr(6, 5) = 7
 *   Legal ops: ~ &
 *   Max ops: 8
 *   Rating: 1
 */
int bitOr(int x, int y) {
  return ~((~x)&(~y));
}
  /* 
  * upperBits - pads n upper bits with 1's
  *  You may assume 0 <= n <= 32
  *  Example: upperBits(4) = 0xF0000000
  *  Legal ops: ! ~ & ^ | + << >>
  *  Max ops: 10
  *  Rating: 1
  */
int upperBits(int n) {
  int mask=!!n;
  return (~mask+1)<<(33+~n);
}
/*
 * fullAdd - 4-bits add using bit-wise operations only.
 *   (0 <= x, y < 16) 
 *   Example: fullAdd(12, 7) = 3,
 *            fullAdd(7, 8) = 15,
 *   Legal ops: ~ | ^ & << >>
 *   Max ops: 30
 *   Rating: 2
 */
int fullAdd(int x, int y) {
  int sum_1=x^y,c_1=(x&y)<<1;
  int sum_2=sum_1^c_1,c_2=(sum_1&c_1)<<1;
  int sum_3=sum_2^c_2,c_3=(sum_2&c_2)<<1;
  int sum_4=sum_3^c_3;
  return sum_4&15;
}
/* 
 * rotateLeft - Rotate x to the left by n
 *   Can assume that 0 <= n <= 31
 *   Examples: rotateLeft(0x87654321,4) = 0x76543218
 *   Legal ops: ~ & ^ | + << >> !
 *   Max ops: 25
 *   Rating: 3 
 */
int rotateLeft(int x, int n) {
  int temp=x<<n;
  int mask=~(1<<31>>(33+~n)<<1);
  int temp_2=x>>(33+~n)&mask;
  return temp|temp_2;
}
/*
 * bitParity - returns 1 if x contains an odd number of 0's
 *   Examples: bitParity(5) = 0, bitParity(7) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20 
 *   Rating: 4
 */
int bitParity(int x) {
  x=x^(x>>16);
  x=x^(x>>8);
  x=x^(x>>4);
  x=x^(x>>2);
  x=x^(x>>1);
  return x&1;
}
/* 
 * palindrome - return 1 if x is palindrome in binary form,
 *   return 0 otherwise
 *   A number is palindrome if it is the same when reversed
 *   YOU MAY USE BIG CONST IN THIS PROBLEM, LIKE 0xFFFF0000
 *   YOU MAY USE BIG CONST IN THIS PROBLEM, LIKE 0xFFFF0000
 *   YOU MAY USE BIG CONST IN THIS PROBLEM, LIKE 0xFFFF0000
 *   Example: palindrome(0xff0000ff) = 1,
 *            palindrome(0xff00ff00) = 0
 *   Legal ops: ~ ! | ^ & << >> +
 *   Max ops: 40
 *   Rating: 4

 */
int palindrome(int x) {
  int temp_1=(x>>16);
  int temp_2=x&0x0000FFFF;
  temp_1=((temp_1&0x00005555)<<1) | ((temp_1>>1)&0x00005555);
  temp_1=((temp_1&0x00003333)<<2) | ((temp_1>>2)&0x00003333);
  temp_1=((temp_1&0x00000F0F)<<4) | ((temp_1>>4)&0x00000F0F);
  temp_1=((temp_1&0x000000FF)<<8) | ((temp_1>>8)&0x000000FF);
  return !(temp_1^temp_2);
}
/* 
 * negate - return -x 
 *   Example: negate(1) = -1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
int negate(int x) {
  return ~x+1;
}
/* 
 * oneMoreThan - return 1 if y is one more than x, and 0 otherwise
 *   Examples oneMoreThan(0, 1) = 1, oneMoreThan(-1, 1) = 0
 *   Legal ops: ~ & ! ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int oneMoreThan(int x, int y) {
  /* 反例是TMIN,TMAX*/
  int tmax=~(1<<31);
  int if_overflow=!!(x^tmax);
  return (if_overflow & !((x+1)^y));
}
/*
 * ezThreeFourths - multiplies by 3/4 rounding toward 0,
 *   Should exactly duplicate effect of C expression (x*3/4),
 *   including overflow behavior.
 *   Examples: ezThreeFourths(11) = 8
 *             ezThreeFourths(-9) = -6
 *             ezThreeFourths(1073741824) = -268435456 (overflow)
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 3
 */
int ezThreeFourths(int x) {
  int sum=(x<<1)+x;
  int bias=(sum>>31)&3;
  return (sum+bias)>>2;
}
/* 
 * isLess - if x < y  then return 1, else return 0 
 *   Example: isLess(4,5) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isLess(int x, int y) {
  int x_is_equal_to_y=x^y;
  int x_sign=(x>>31)&1,y_sign=(y>>31)&1;
  int sum=((x+(~y))>>31)&1;
  int is_not_same_sign=(x_sign^y_sign)&((x_sign^0)&(y_sign^1));
  int is_the_same_sign=!(x_sign^y_sign);
  int res= (is_not_same_sign | (is_the_same_sign & sum)) & !!(x_is_equal_to_y);
  return res;
}
/*
 * satMul2 - multiplies by 2, saturating to Tmin or Tmax if overflow
 *   Examples: satMul2(0x30000000) = 0x60000000
 *             satMul2(0x40000000) = 0x7FFFFFFF (saturate to TMax)
 *             satMul2(0x90000000) = 0x80000000 (saturate to TMin)
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3
 */
int satMul2(int x) {
  int sum=x+x;
  int if_overflow=(x^sum)>>31;
  int t_min=1<<31;
  int x_sign=x>>31;
  return (~if_overflow & sum) | (if_overflow & (~x_sign ^ t_min));
}
/*
 * modThree - calculate x mod 3 without using %.
 *   Example: modThree(12) = 0,
 *            modThree(2147483647) = 1,
 *            modThree(-8) = -2,
 *   Legal ops: ~ ! | ^ & << >> +
 *   Max ops: 60
 *   Rating: 4
 */
int modThree(int x) {
  int x_sign=(x>>31)&1;
  int tmin=1<<31;
  int mask_1=0xFF+(0xFF<<8);
  int mask_2=~(tmin>>8<<1);
  int mask_3=~(tmin>>4<<1);
  int mask_4=~(tmin>>2<<1);
  int is_3;
  int mask_sign;
  int x_1,x_2;
  int pd;
  x=(x>>16&mask_1)+(x&mask_1);
  x=(x>>8&mask_2)+(x&0xFF);
  x=(x>>4&mask_3)+(x&0xF);
  x=(x>>2&mask_4)+(x&3);
  x=(x>>2&mask_4)+(x&3);
  x=(x>>2&mask_4)+(x&3);
  is_3=!(x^3);
  x=x+((~3+1)&(~is_3+1));
  mask_sign=~x_sign+1;
  x_1=x+mask_sign;
  pd=!(x_1^1)&x_sign;
  x_2=x_1+((~3+1)&(~pd+1));
  return x_2;
}
/* 
 * float_half - Return bit-level equivalent of expression 0.5*f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representation of
 *   single-precision floating point values.
 *   When argument is NaN, return argument
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_half(unsigned uf) {
  int x_sign=uf&(0x80000000);
  int e_mask=0x7f800000;
  int x_e=uf&e_mask;
  int x_m=uf&(0x007fffff);
  int if_double_one=!((uf&3)^3);
  if(x_e==e_mask) return uf;
  if(!x_e) return x_sign | ((x_m>>1)+if_double_one);
  if((x_e>>23)==1) return x_sign | (((x_e | x_m)>>1)+if_double_one);
  return x_sign | ((((x_e>>23)-1)<<23)&e_mask) | x_m; 
}
/* 
 * float_i2f - Return bit-level equivalent of expression (float) x
 *   Result is returned as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point values.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_i2f(int x) {
  unsigned x_sign=(x>>31)&1,x_e=31,x_m,is_add,bias=0x7F,ux_e,mask=0x7FFFFF;
  if(x==0) return 0;
  if(x==(1<<31)) return 0xCF000000;
  if(x_sign) x=-x;
  while(!(x>>x_e)) x_e--;
  ux_e=x_e+bias;
  x=x<<(31-x_e);
  x_m=(x>>8)&mask;
  is_add=x&0xFF;
  x_m+=((is_add>0x80) || ((is_add==0x80)&&(x_m&1)));
  if(x_m>>23){
    x_m=x_m&mask;ux_e++;
  }
  return (x_sign<<31) | (ux_e<<23) | x_m;
}
/* 
 * float64_f2i - Return bit-level equivalent of expression (int) f
 *   for 64 bit floating point argument f.
 *   Argument is passed as two unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   double-precision floating point value.
 *   Notice: uf1 contains the lower part of the f64 f
 *   Anything out of range (including NaN and infinity) should return
 *   0x80000000u.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 20
 *   Rating: 4
 */
int float64_f2i(unsigned uf1, unsigned uf2) {
  unsigned x_sign=(uf2)>>31;
  int x_exp=(((uf2)>>20)&0x7FF)-1023;
  unsigned x_m;
  int res_mask;
  unsigned res;
  if(x_exp<0) return 0;
  else if(x_exp>=31) return 0x80000000u;
  x_m=((uf2&0xFFFFF)<<11) | ((uf1>>21)&0x7FF) | (0x80000000); // 只能取uf1的高11位和uf2的低20位，后续位数乘上指数一定不得整数，我们把前导1放在最高位
  res_mask=~(0x80000000>>(31-x_exp)<<1);//用于消除算术右移可能产生的1
  res=(x_m>>(31-x_exp)) & res_mask;//乘上前面的指数，因为默认前导1放在最高位，并且消掉算术右移可能存在的1
  if(x_sign) return -res;
  else return res;
}
/* 
 * float_pwr2 - Return bit-level equivalent of the expression 2.0^x
 *   (2.0 raised to the power x) for any 32-bit integer x.
 *
 *   The unsigned value that is returned should have the identical bit
 *   representation as the single-precision floating-point number 2.0^x.
 *   If the result is too small to be represented as a denorm, return
 *   0. If too large, return +INF.
 * 
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. Also if, while 
 *   Max ops: 30 
 *   Rating: 4
 */
unsigned float_pwr2(int x) {
  if(x<-149) return 0;
  else if(x<-126) return 1<<(x+149);
  else if(x<=127) return (x+127)<<23;
  return 0x7f800000;
}