.global main
.global EightWhile
.section .bss




.section .data
e:
.byte 0, 0, 0, 0
f:
.byte 0, 0, 0, 0
h:
.byte 0, 0, 0, 0
g:
.byte 0, 0, 0, 0
.section .text
main:
  SD ra, 208(sp)
  SD s11, 184(sp)
  SD s10, 176(sp)
  SD s9, 168(sp)
  SD s8, 160(sp)
  SD s7, 152(sp)
  SD s6, 144(sp)
  SD s5, 136(sp)
  SD s4, 128(sp)
  SD s3, 120(sp)
  SD s2, 112(sp)
  SD s1, 40(sp)
  SD s0, 32(sp)
  ADDI sp, sp, -216
  LA s1, g
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s2, h
  ADDI s0, zero, 2
  SW s0, 0(s2)
  LA s3, e
  ADDI s0, zero, 4
  SW s0, 0(s3)
  LA s4, f
  ADDI s0, zero, 6
  SW s0, 0(s4)
  CALL EightWhile
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD s5, 136(sp)
  LD s6, 144(sp)
  LD s7, 152(sp)
  LD s8, 160(sp)
  LD s9, 168(sp)
  LD s10, 176(sp)
  LD s11, 184(sp)
  LD ra, 208(sp)
  ADDI sp, sp, 216
  JALR zero, 0(ra)
EightWhile:
  SD s11, 200(sp)
  SD s10, 192(sp)
  SD s9, 184(sp)
  SD s8, 176(sp)
  SD s7, 168(sp)
  SD s6, 160(sp)
  SD s5, 152(sp)
  SD s4, 144(sp)
  SD s3, 136(sp)
  SD s2, 128(sp)
  SD s1, 56(sp)
  SD s0, 48(sp)
  ADDI sp, sp, -224
  ADDI s0, zero, 5
  SW s0, 12(sp)
  ADDI s0, zero, 6
  SW s0, 8(sp)
  ADDI s0, zero, 7
  SW s0, 4(sp)
  ADDI s0, zero, 10
  SW s0, 0(sp)
  JAL zero, bb2
bb2:
  LW s0, 12(sp)
  SLTI s1, s0, 20
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb3
  JAL zero, bb4
bb3:
  LW s0, 12(sp)
  ADDIW s1, s0, 3
  SW s1, 12(sp)
  JAL zero, bb5
bb4:
  LW a3, 12(sp)
  LW a2, 8(sp)
  LW t0, 0(sp)
  ADDW a4, a2, t0
  ADDW a3, a3, a4
  LW t0, 4(sp)
  ADDW t4, a3, t0
  LA t0, e
  LW a5, 0(t0)
  LW t0, 0(sp)
  ADDW a7, a5, t0
  LA a5, g
  LW a6, 0(a5)
  SUBW a6, a7, a6
  LA a5, h
  LW t3, 0(a5)
  ADDW a5, a6, t3
  SUBW a6, t4, a5
  ADD a0, a6, zero
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 128(sp)
  LD s3, 136(sp)
  LD s4, 144(sp)
  LD s5, 152(sp)
  LD s6, 160(sp)
  LD s7, 168(sp)
  LD s8, 176(sp)
  LD s9, 184(sp)
  LD s10, 192(sp)
  LD s11, 200(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb5:
  LW s0, 8(sp)
  SLTI s1, s0, 10
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb6
  JAL zero, bb7
bb6:
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb8
bb7:
  LW t0, 8(sp)
  ADDI a1, zero, 2
  SUBW a2, t0, a1
  SW a2, 8(sp)
  JAL zero, bb2
bb8:
  LW s0, 4(sp)
  XORI s1, s0, 7
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb9
  JAL zero, bb10
bb9:
  LW s0, 4(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 4(sp)
  JAL zero, bb11
bb10:
  LW t0, 4(sp)
  ADDIW a1, t0, 1
  SW a1, 4(sp)
  JAL zero, bb5
bb11:
  LW s0, 0(sp)
  SLTI s2, s0, 20
  XOR s0, s2, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb12
  JAL zero, bb13
bb12:
  LW s0, 0(sp)
  ADDIW s2, s0, 3
  SW s2, 0(sp)
  JAL zero, bb14
bb13:
  LW a0, 0(sp)
  ADDI t0, zero, 1
  SUBW a1, a0, t0
  SW a1, 0(sp)
  JAL zero, bb8
bb14:
  LA s0, e
  LW s2, 0(s0)
  ADDI s0, zero, 1
  SLT s3, s0, s2
  XOR s0, s3, zero
  SLTU s3, zero, s0
  BNE s3, zero, bb15
  JAL zero, bb16
bb15:
  LA s0, e
  LW s3, 0(s0)
  ADDI s0, zero, 1
  SUBW s4, s3, s0
  LA s0, e
  SW s4, 0(s0)
  JAL zero, bb17
bb16:
  LA t0, e
  LW t2, 0(t0)
  ADDIW t0, t2, 1
  LA t2, e
  SW t0, 0(t2)
  JAL zero, bb11
bb17:
  LA s4, f
  LW s5, 0(s4)
  ADDI s4, zero, 2
  SLT s6, s4, s5
  XOR s4, s6, zero
  SLTU s6, zero, s4
  BNE s6, zero, bb18
  JAL zero, bb19
bb18:
  LA s4, f
  LW s6, 0(s4)
  ADDI s4, zero, 2
  SUBW s7, s6, s4
  LA s4, f
  SW s7, 0(s4)
  JAL zero, bb20
bb19:
  LA t0, f
  LW t1, 0(t0)
  ADDIW t1, t1, 1
  LA t0, f
  SW t1, 0(t0)
  JAL zero, bb14
bb20:
  LA s4, g
  LW s8, 0(s4)
  SLTI s4, s8, 3
  XOR s8, s4, zero
  SLTU s4, zero, s8
  BNE s4, zero, bb21
  JAL zero, bb22
bb21:
  LA s4, g
  LW s8, 0(s4)
  ADDIW s4, s8, 10
  LA s8, g
  SW s4, 0(s8)
  JAL zero, bb23
bb22:
  LA s4, g
  LW ra, 0(s4)
  ADDI s4, zero, 8
  SUBW t0, ra, s4
  LA s4, g
  SW t0, 0(s4)
  JAL zero, bb17
bb23:
  LA s4, h
  LW s9, 0(s4)
  SLTI s4, s9, 10
  XOR s9, s4, zero
  SLTU s4, zero, s9
  BNE s4, zero, bb24
  JAL zero, bb25
bb24:
  LA s4, h
  LW s9, 0(s4)
  ADDIW s9, s9, 8
  LA s4, h
  SW s9, 0(s4)
  JAL zero, bb23
bb25:
  LA s4, h
  LW s10, 0(s4)
  ADDI s4, zero, 1
  SUBW s11, s10, s4
  LA s4, h
  SW s11, 0(s4)
  JAL zero, bb20
