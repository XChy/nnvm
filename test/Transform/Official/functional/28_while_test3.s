.global main
.global EightWhile
.section .bss




.section .data
e:
.word 0x00000000
f:
.word 0x00000000
h:
.word 0x00000000
g:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  LA s0, g
  ADDI s1, zero, 1
  SW s1, 0(s0)
  LA s0, h
  ADDI s1, zero, 2
  SW s1, 0(s0)
  LA s0, e
  ADDI s1, zero, 4
  SW s1, 0(s0)
  LA s0, f
  ADDI s1, zero, 6
  SW s1, 0(s0)
  CALL EightWhile
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
EightWhile:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s0, 16(sp)
  SD s5, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s7, 72(sp)
  SD ra, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  ADDI s0, zero, 10
  ADDI s1, zero, 7
  ADDI s2, zero, 5
  ADDI s3, zero, 6
  JAL zero, bb2
bb2:
  SLTI s4, s2, 20
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb3
  JAL zero, bb4
bb3:
  ADDIW s4, s2, 3
  ADD s5, s0, zero
  ADD s6, s1, zero
  ADD s7, s3, zero
  JAL zero, bb5
bb4:
  ADDW s4, s3, s0
  ADDW s3, s2, s4
  ADDW s2, s3, s1
  LA s1, e
  LW s3, 0(s1)
  ADDW s1, s3, s0
  LA s0, g
  LW s3, 0(s0)
  SUBW s0, s1, s3
  LA s1, h
  LW s3, 0(s1)
  ADDW s1, s0, s3
  SUBW s0, s2, s1
  ADD a0, s0, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s7, 72(sp)
  LD ra, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb5:
  SLTI s8, s7, 10
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb6
  JAL zero, bb7
bb6:
  ADDIW s8, s7, 1
  ADD s9, s5, zero
  ADD s10, s6, zero
  JAL zero, bb8
bb7:
  ADDI s8, zero, 2
  SUBW s9, s7, s8
  ADD s0, s5, zero
  ADD s1, s6, zero
  ADD s2, s4, zero
  ADD s3, s9, zero
  JAL zero, bb2
bb8:
  XORI s11, s10, 7
  SLTIU t0, s11, 1
  XOR s11, t0, zero
  SLTU t0, zero, s11
  BNE t0, zero, bb9
  JAL zero, bb10
bb9:
  ADDI s11, zero, 1
  SUBW t0, s10, s11
  ADD s11, s9, zero
  JAL zero, bb11
bb10:
  ADDIW s11, s10, 1
  ADD s5, s9, zero
  ADD s6, s11, zero
  ADD s7, s8, zero
  JAL zero, bb5
bb11:
  SLTI t1, s11, 20
  XOR t2, t1, zero
  SLTU t1, zero, t2
  BNE t1, zero, bb12
  JAL zero, bb13
bb12:
  ADDIW t1, s11, 3
  JAL zero, bb14
bb13:
  ADDI t1, zero, 1
  SUBW t2, s11, t1
  ADD s9, t2, zero
  ADD s10, t0, zero
  JAL zero, bb8
bb14:
  LA t2, e
  LW a0, 0(t2)
  ADDI t2, zero, 1
  SLT a1, t2, a0
  XOR t2, a1, zero
  SLTU a0, zero, t2
  BNE a0, zero, bb15
  JAL zero, bb16
bb15:
  LA t2, e
  LW a0, 0(t2)
  ADDI t2, zero, 1
  SUBW a1, a0, t2
  LA t2, e
  SW a1, 0(t2)
  JAL zero, bb17
bb16:
  LA t2, e
  LW a0, 0(t2)
  ADDIW t2, a0, 1
  LA a0, e
  SW t2, 0(a0)
  ADD s11, t1, zero
  JAL zero, bb11
bb17:
  LA t2, f
  LW a0, 0(t2)
  ADDI t2, zero, 2
  SLT a1, t2, a0
  XOR t2, a1, zero
  SLTU a0, zero, t2
  BNE a0, zero, bb18
  JAL zero, bb19
bb18:
  LA t2, f
  LW a0, 0(t2)
  ADDI t2, zero, 2
  SUBW a1, a0, t2
  LA t2, f
  SW a1, 0(t2)
  JAL zero, bb20
bb19:
  LA t2, f
  LW a0, 0(t2)
  ADDIW t2, a0, 1
  LA a0, f
  SW t2, 0(a0)
  JAL zero, bb14
bb20:
  LA t2, g
  LW a0, 0(t2)
  SLTI t2, a0, 3
  XOR a0, t2, zero
  SLTU t2, zero, a0
  BNE t2, zero, bb21
  JAL zero, bb22
bb21:
  LA t2, g
  LW a0, 0(t2)
  ADDIW t2, a0, 10
  LA a0, g
  SW t2, 0(a0)
  JAL zero, bb23
bb22:
  LA t2, g
  LW a0, 0(t2)
  ADDI t2, zero, 8
  SUBW a1, a0, t2
  LA t2, g
  SW a1, 0(t2)
  JAL zero, bb17
bb23:
  LA t2, h
  LW a0, 0(t2)
  SLTI t2, a0, 10
  XOR a0, t2, zero
  SLTU t2, zero, a0
  BNE t2, zero, bb24
  JAL zero, bb25
bb24:
  LA t2, h
  LW a0, 0(t2)
  ADDIW t2, a0, 8
  LA a0, h
  SW t2, 0(a0)
  JAL zero, bb23
bb25:
  LA t2, h
  LW a0, 0(t2)
  ADDI t2, zero, 1
  SUBW a1, a0, t2
  LA t2, h
  SW a1, 0(t2)
  JAL zero, bb20
