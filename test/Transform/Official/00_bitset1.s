.global rand
.global set
.global main
.section .bss

a:
.space 40000

.section .data
staticvalue:
.word 0x00000000

seed:
.byte 159, 188, 48, 1, 213, 226, 48, 1, 7, 202, 154, 59
.section .text
rand:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  LA s0, staticvalue
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s0, zero
  LA s0, seed
  ADD s3, s0, s2
  LW s0, 0(s3)
  MULW s2, s1, s0
  ADDI s0, zero, 4
  ADDI s1, zero, 1
  MULW s3, s0, s1
  LA s0, seed
  ADD s1, s0, s3
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LA s0, staticvalue
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LA s0, seed
  ADD s2, s0, s3
  LW s0, 0(s2)
  REMW s2, s1, s0
  LA s0, staticvalue
  SW s2, 0(s0)
  SLT s0, s2, zero
  BNE s0, zero, bb1
  JAL zero, bb2
bb1:
  ADDI s0, zero, 4
  ADDI s1, zero, 2
  MULW s2, s0, s1
  LA s0, seed
  ADD s1, s0, s2
  LW s0, 0(s1)
  LA s1, staticvalue
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LA s0, staticvalue
  SW s1, 0(s0)
  JAL zero, bb2
bb2:
  LA s0, staticvalue
  LW s1, 0(s0)
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
set:
  ADDI sp, sp, -240
  SD s0, 128(sp)
  SD s11, 136(sp)
  SD s10, 144(sp)
  SD ra, 152(sp)
  SD s1, 160(sp)
  SD s6, 168(sp)
  SD s7, 176(sp)
  SD s2, 184(sp)
  SD s8, 192(sp)
  SD s3, 200(sp)
  SD s9, 208(sp)
  SD s4, 216(sp)
  SD s5, 224(sp)
  ADD s1, a0, zero
  ADD s2, a1, zero
  ADD s3, a2, zero
  ADDI s4, zero, 31
  JAL zero, bb4
bb4:
  XOR s5, s4, zero
  SLTU s6, zero, s5
  BNE s6, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s5, zero, 1
  SUBW s6, s4, s5
  ADDI s5, zero, 4
  MULW s7, s6, s5
  ADD s5, zero, s7
  ADDI t5, sp, 0
  ADD s7, t5, s5
  SW zero, 0(s7)
  ADD s4, s6, zero
  JAL zero, bb4
bb6:
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADDI t6, sp, 0
  ADD s4, t6, s5
  ADDI s5, zero, 1
  SW s5, 0(s4)
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADDI t5, sp, 0
  ADD s4, t5, s6
  ADDI s5, zero, 4
  MUL s6, zero, s5
  ADDI t6, sp, 0
  ADD s5, t6, s6
  LW s6, 0(s5)
  ADDI s5, zero, 2
  MULW s7, s6, s5
  SW s7, 0(s4)
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADDI t5, sp, 0
  ADD s4, t5, s6
  ADDI s5, zero, 4
  ADDI s6, zero, 1
  MULW s7, s5, s6
  ADDI t6, sp, 0
  ADD s5, t6, s7
  LW s6, 0(s5)
  ADDI s5, zero, 2
  MULW s7, s6, s5
  SW s7, 0(s4)
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADDI t5, sp, 0
  ADD s4, t5, s6
  ADDI s5, zero, 4
  ADDI s6, zero, 2
  MULW s7, s5, s6
  ADDI t6, sp, 0
  ADD s5, t6, s7
  LW s6, 0(s5)
  ADDI s5, zero, 2
  MULW s7, s6, s5
  SW s7, 0(s4)
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADDI t5, sp, 0
  ADD s4, t5, s6
  ADDI s5, zero, 4
  ADDI s6, zero, 3
  MULW s7, s5, s6
  ADDI t6, sp, 0
  ADD s5, t6, s7
  LW s6, 0(s5)
  ADDI s5, zero, 2
  MULW s7, s6, s5
  SW s7, 0(s4)
  ADDI s4, zero, 4
  ADDI s5, zero, 5
  MULW s6, s4, s5
  ADDI t5, sp, 0
  ADD s4, t5, s6
  ADDI s5, zero, 4
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADDI t6, sp, 0
  ADD s5, t6, s7
  LW s6, 0(s5)
  ADDI s5, zero, 2
  MULW s7, s6, s5
  SW s7, 0(s4)
  ADDI s4, zero, 4
  ADDI s5, zero, 6
  MULW s6, s4, s5
  ADDI t5, sp, 0
  ADD s4, t5, s6
  ADDI s5, zero, 4
  ADDI s6, zero, 5
  MULW s7, s5, s6
  ADDI t6, sp, 0
  ADD s5, t6, s7
  LW s6, 0(s5)
  ADDI s5, zero, 2
  MULW s7, s6, s5
  SW s7, 0(s4)
  ADDI s4, zero, 4
  ADDI s5, zero, 7
  MULW s6, s4, s5
  ADDI t5, sp, 0
  ADD s4, t5, s6
  ADDI s5, zero, 4
  ADDI s6, zero, 6
  MULW s7, s5, s6
  ADDI t6, sp, 0
  ADD s5, t6, s7
  LW s6, 0(s5)
  ADDI s5, zero, 2
  MULW s7, s6, s5
  SW s7, 0(s4)
  ADDI s4, zero, 4
  ADDI s5, zero, 8
  MULW s6, s4, s5
  ADDI t5, sp, 0
  ADD s4, t5, s6
  ADDI s5, zero, 4
  ADDI s6, zero, 7
  MULW s7, s5, s6
  ADDI t6, sp, 0
  ADD s5, t6, s7
  LW s6, 0(s5)
  ADDI s5, zero, 2
  MULW s7, s6, s5
  SW s7, 0(s4)
  ADDI s4, zero, 4
  ADDI s5, zero, 9
  MULW s6, s4, s5
  ADDI t5, sp, 0
  ADD s4, t5, s6
  ADDI s5, zero, 4
  ADDI s6, zero, 8
  MULW s7, s5, s6
  ADDI t6, sp, 0
  ADD s5, t6, s7
  LW s6, 0(s5)
  ADDI s5, zero, 2
  MULW s7, s6, s5
  SW s7, 0(s4)
  ADDI s4, zero, 4
  ADDI s5, zero, 10
  MULW s6, s4, s5
  ADDI t5, sp, 0
  ADD s4, t5, s6
  ADDI s5, zero, 4
  ADDI s6, zero, 9
  MULW s7, s5, s6
  ADDI t6, sp, 0
  ADD s5, t6, s7
  LW s6, 0(s5)
  ADDI s5, zero, 2
  MULW s7, s6, s5
  SW s7, 0(s4)
  ADDI s4, zero, 10
  JAL zero, bb7
bb7:
  SLTI s5, s4, 30
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb8
  JAL zero, bb9
bb8:
  ADDIW s5, s4, 1
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADDI t5, sp, 0
  ADD s6, t5, s7
  ADDI s7, zero, 1
  SUBW s8, s5, s7
  ADDI s7, zero, 4
  MULW s9, s8, s7
  ADDI t6, sp, 0
  ADD s7, t6, s9
  LW s8, 0(s7)
  ADDI s7, zero, 2
  MULW s9, s8, s7
  SW s9, 0(s6)
  ADD s4, s5, zero
  JAL zero, bb7
bb9:
  ADDI s4, zero, 30
  DIVW s5, s2, s4
  LUI s4, 2
  ADDI s4, s4, 1808
  SLT s6, s5, s4
  XORI s4, s6, 1
  BNE s4, zero, bb10
  JAL zero, bb11
bb10:
  ADD a0, zero, zero
  LD s0, 128(sp)
  LD s11, 136(sp)
  LD s10, 144(sp)
  LD ra, 152(sp)
  LD s1, 160(sp)
  LD s6, 168(sp)
  LD s7, 176(sp)
  LD s2, 184(sp)
  LD s8, 192(sp)
  LD s3, 200(sp)
  LD s9, 208(sp)
  LD s4, 216(sp)
  LD s5, 224(sp)
  ADDI sp, sp, 240
  JALR zero, 0(ra)
bb11:
  ADDI s4, zero, 30
  DIVW s5, s2, s4
  ADDI s4, zero, 4
  MULW s6, s5, s4
  ADD s4, s1, s6
  LW s5, 0(s4)
  ADDI s4, zero, 30
  REMW s6, s2, s4
  ADDI s4, zero, 4
  MULW s7, s6, s4
  ADDI t5, sp, 0
  ADD s4, t5, s7
  LW s6, 0(s4)
  DIVW s4, s5, s6
  ADDI s5, zero, 2
  REMW s6, s4, s5
  XOR s4, s6, s3
  SLTU s5, zero, s4
  BNE s5, zero, bb12
  JAL zero, bb22
bb12:
  ADDI s4, zero, 30
  DIVW s5, s2, s4
  ADDI s4, zero, 4
  MULW s6, s5, s4
  ADD s4, s1, s6
  LW s5, 0(s4)
  ADDI s4, zero, 30
  REMW s6, s2, s4
  ADDI s4, zero, 4
  MULW s7, s6, s4
  ADDI t6, sp, 0
  ADD s4, t6, s7
  LW s6, 0(s4)
  DIVW s4, s5, s6
  ADDI s5, zero, 2
  REMW s6, s4, s5
  XOR s4, s6, zero
  SLTIU s5, s4, 1
  BNE s5, zero, bb14
  JAL zero, bb23
bb13:
  ADDI s8, zero, 30
  DIVW s9, s2, s8
  ADDI s8, zero, 4
  MULW s10, s9, s8
  ADD s8, s1, s10
  ADDI s9, zero, 30
  DIVW s10, s2, s9
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s1, s11
  LW s10, 0(s9)
  ADDW s9, s10, s7
  SW s9, 0(s8)
  ADD a0, zero, zero
  LD s0, 128(sp)
  LD s11, 136(sp)
  LD s10, 144(sp)
  LD ra, 152(sp)
  LD s1, 160(sp)
  LD s6, 168(sp)
  LD s7, 176(sp)
  LD s2, 184(sp)
  LD s8, 192(sp)
  LD s3, 200(sp)
  LD s9, 208(sp)
  LD s4, 216(sp)
  LD s5, 224(sp)
  ADDI sp, sp, 240
  JALR zero, 0(ra)
bb14:
  XORI s4, s3, 1
  SLTIU s5, s4, 1
  BNE s5, zero, bb16
  JAL zero, bb24
bb15:
  ADDI s5, zero, 30
  DIVW s6, s2, s5
  ADDI s5, zero, 4
  MULW s7, s6, s5
  ADD s5, s1, s7
  LW s6, 0(s5)
  ADDI s5, zero, 30
  REMW s7, s2, s5
  ADDI s5, zero, 4
  MULW s8, s7, s5
  ADDI t5, sp, 0
  ADD s5, t5, s8
  LW s7, 0(s5)
  DIVW s5, s6, s7
  ADDI s6, zero, 2
  REMW s7, s5, s6
  XORI s5, s7, 1
  SLTIU s6, s5, 1
  BNE s6, zero, bb18
  JAL zero, bb25
bb16:
  ADDI s4, zero, 30
  REMW s5, s2, s4
  ADDI s4, zero, 4
  MULW s6, s5, s4
  ADDI t6, sp, 0
  ADD s4, t6, s6
  LW s5, 0(s4)
  ADD s4, s5, zero
  JAL zero, bb17
bb17:
  ADD s0, s4, zero
  JAL zero, bb15
bb18:
  XOR s5, s3, zero
  SLTIU s6, s5, 1
  BNE s6, zero, bb20
  JAL zero, bb26
bb19:
  ADD s7, s5, zero
  JAL zero, bb13
bb20:
  ADDI s5, zero, 30
  REMW s6, s2, s5
  ADDI s5, zero, 4
  MULW s7, s6, s5
  ADDI t5, sp, 0
  ADD s5, t5, s7
  LW s6, 0(s5)
  SUBW s5, s0, s6
  ADD s6, s5, zero
  JAL zero, bb21
bb21:
  ADD s5, s6, zero
  JAL zero, bb19
bb22:
  ADD s7, zero, zero
  JAL zero, bb13
bb23:
  ADD s0, zero, zero
  JAL zero, bb15
bb24:
  ADD s4, zero, zero
  JAL zero, bb17
bb25:
  ADD s5, s0, zero
  JAL zero, bb19
bb26:
  ADD s6, s0, zero
  JAL zero, bb21
main:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  LA s2, staticvalue
  SW s1, 0(s2)
  ADDI a0, zero, 56
  CALL _sysy_starttime
  ADD s1, s0, zero
  JAL zero, bb28
bb28:
  SLT s0, zero, s1
  XOR s2, s0, zero
  SLTU s0, zero, s2
  BNE s0, zero, bb29
  JAL zero, bb30
bb29:
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  CALL rand
  ADD s0, a0, zero
  LUI s3, 73
  ADDI s3, s3, 992
  REMW s4, s0, s3
  CALL rand
  ADD s0, a0, zero
  ADDI s3, zero, 2
  REMW s5, s0, s3
  LA s0, a
  ADD a0, s0, zero
  ADD a1, s4, zero
  ADD a2, s5, zero
  CALL set
  ADD s0, a0, zero
  ADD s1, s2, zero
  JAL zero, bb28
bb30:
  ADDI a0, zero, 64
  CALL _sysy_stoptime
  LUI s0, 2
  ADDI s0, s0, 1808
  ADD a0, zero, s0
  LA s0, a
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
