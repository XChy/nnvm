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
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  LA s0, staticvalue
  LW s1, 0(s0)
  LA s0, seed
  ADD s2, s0, zero
  LW s0, 0(s2)
  MULW s2, s1, s0
  LA s0, seed
  ADDI s1, s0, 4
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LA s0, staticvalue
  SW s1, 0(s0)
  LA s0, seed
  ADDI s2, s0, 8
  LW s0, 0(s2)
  REMW s2, s1, s0
  LA s0, staticvalue
  SW s2, 0(s0)
  SLT s0, s2, zero
  BNE s0, zero, bb1
  JAL zero, bb2
bb1:
  LA s0, seed
  ADDI s1, s0, 8
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
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
set:
  ADDI sp, sp, -240
  SD s11, 128(sp)
  SD s10, 136(sp)
  SD s9, 144(sp)
  SD ra, 152(sp)
  SD s0, 160(sp)
  SD s5, 168(sp)
  SD s7, 176(sp)
  SD s1, 184(sp)
  SD s6, 192(sp)
  SD s8, 200(sp)
  SD s2, 208(sp)
  SD s3, 216(sp)
  SD s4, 224(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADDI s3, zero, 31
  JAL zero, bb4
bb4:
  ADD s4, s3, zero
  XOR s5, s4, zero
  SLTU s6, zero, s5
  BNE s6, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s5, zero, 1
  SUBW s6, s4, s5
  ADDI s4, zero, 4
  MULW s5, s6, s4
  ADD s4, zero, s5
  ADDI t5, sp, 0
  ADD s5, t5, s4
  SW zero, 0(s5)
  ADD s3, s6, zero
  JAL zero, bb4
bb6:
  ADDI t6, sp, 0
  ADD s3, t6, zero
  ADDI s4, zero, 1
  SW s4, 0(s3)
  ADDI s3, sp, 4
  ADDI t5, sp, 0
  ADD s4, t5, zero
  LW s5, 0(s4)
  ADDI s4, zero, 2
  MULW s6, s5, s4
  SW s6, 0(s3)
  ADDI s3, sp, 8
  ADDI s4, sp, 4
  LW s5, 0(s4)
  ADDI s4, zero, 2
  MULW s6, s5, s4
  SW s6, 0(s3)
  ADDI s3, sp, 12
  ADDI s4, sp, 8
  LW s5, 0(s4)
  ADDI s4, zero, 2
  MULW s6, s5, s4
  SW s6, 0(s3)
  ADDI s3, sp, 16
  ADDI s4, sp, 12
  LW s5, 0(s4)
  ADDI s4, zero, 2
  MULW s6, s5, s4
  SW s6, 0(s3)
  ADDI s3, sp, 20
  ADDI s4, sp, 16
  LW s5, 0(s4)
  ADDI s4, zero, 2
  MULW s6, s5, s4
  SW s6, 0(s3)
  ADDI s3, sp, 24
  ADDI s4, sp, 20
  LW s5, 0(s4)
  ADDI s4, zero, 2
  MULW s6, s5, s4
  SW s6, 0(s3)
  ADDI s3, sp, 28
  ADDI s4, sp, 24
  LW s5, 0(s4)
  ADDI s4, zero, 2
  MULW s6, s5, s4
  SW s6, 0(s3)
  ADDI s3, sp, 32
  ADDI s4, sp, 28
  LW s5, 0(s4)
  ADDI s4, zero, 2
  MULW s6, s5, s4
  SW s6, 0(s3)
  ADDI s3, sp, 36
  ADDI s4, sp, 32
  LW s5, 0(s4)
  ADDI s4, zero, 2
  MULW s6, s5, s4
  SW s6, 0(s3)
  ADDI s3, sp, 40
  ADDI s4, sp, 36
  LW s5, 0(s4)
  ADDI s4, zero, 2
  MULW s6, s5, s4
  SW s6, 0(s3)
  ADDI s3, zero, 10
  JAL zero, bb7
bb7:
  ADD s4, s3, zero
  SLTI s5, s4, 30
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb8
  JAL zero, bb9
bb8:
  ADDIW s5, s4, 1
  ADDI s4, zero, 4
  MULW s6, s5, s4
  ADDI t6, sp, 0
  ADD s4, t6, s6
  ADDI s6, zero, 1
  SUBW s7, s5, s6
  ADDI s6, zero, 4
  MULW s8, s7, s6
  ADDI t5, sp, 0
  ADD s6, t5, s8
  LW s7, 0(s6)
  ADDI s6, zero, 2
  MULW s8, s7, s6
  SW s8, 0(s4)
  ADD s3, s5, zero
  JAL zero, bb7
bb9:
  ADDI s3, zero, 30
  DIVW s4, s1, s3
  LUI s3, 2
  ADDI s3, s3, 1808
  SLT s5, s4, s3
  XORI s3, s5, 1
  BNE s3, zero, bb10
  JAL zero, bb11
bb10:
  ADD a0, zero, zero
  LD s11, 128(sp)
  LD s10, 136(sp)
  LD s9, 144(sp)
  LD ra, 152(sp)
  LD s0, 160(sp)
  LD s5, 168(sp)
  LD s7, 176(sp)
  LD s1, 184(sp)
  LD s6, 192(sp)
  LD s8, 200(sp)
  LD s2, 208(sp)
  LD s3, 216(sp)
  LD s4, 224(sp)
  ADDI sp, sp, 240
  JALR zero, 0(ra)
bb11:
  ADDI s3, zero, 30
  DIVW s4, s1, s3
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s0, s5
  LW s4, 0(s3)
  ADDI s3, zero, 30
  REMW s5, s1, s3
  ADDI s3, zero, 4
  MULW s6, s5, s3
  ADDI t6, sp, 0
  ADD s3, t6, s6
  LW s5, 0(s3)
  DIVW s3, s4, s5
  ADDI s4, zero, 2
  REMW s5, s3, s4
  XOR s3, s5, s2
  SLTU s4, zero, s3
  BNE s4, zero, bb12
  JAL zero, bb22
bb12:
  ADDI s3, zero, 30
  DIVW s4, s1, s3
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s0, s5
  LW s4, 0(s3)
  ADDI s3, zero, 30
  REMW s5, s1, s3
  ADDI s3, zero, 4
  MULW s6, s5, s3
  ADDI t5, sp, 0
  ADD s3, t5, s6
  LW s5, 0(s3)
  DIVW s3, s4, s5
  ADDI s4, zero, 2
  REMW s5, s3, s4
  XOR s3, s5, zero
  SLTIU s4, s3, 1
  BNE s4, zero, bb14
  JAL zero, bb23
bb13:
  ADD s6, s9, zero
  ADDI s10, zero, 30
  DIVW s11, s1, s10
  ADDI s10, zero, 4
  MULW t0, s11, s10
  ADD s10, s0, t0
  ADDI s11, zero, 30
  DIVW t0, s1, s11
  ADDI s11, zero, 4
  MULW t1, t0, s11
  ADD s11, s0, t1
  LW t0, 0(s11)
  ADDW s11, t0, s6
  SW s11, 0(s10)
  ADD a0, zero, zero
  LD s11, 128(sp)
  LD s10, 136(sp)
  LD s9, 144(sp)
  LD ra, 152(sp)
  LD s0, 160(sp)
  LD s5, 168(sp)
  LD s7, 176(sp)
  LD s1, 184(sp)
  LD s6, 192(sp)
  LD s8, 200(sp)
  LD s2, 208(sp)
  LD s3, 216(sp)
  LD s4, 224(sp)
  ADDI sp, sp, 240
  JALR zero, 0(ra)
bb14:
  XORI s3, s2, 1
  SLTIU s4, s3, 1
  BNE s4, zero, bb16
  JAL zero, bb24
bb15:
  ADD s4, s5, zero
  ADDI s6, zero, 30
  DIVW s7, s1, s6
  ADDI s6, zero, 4
  MULW s8, s7, s6
  ADD s6, s0, s8
  LW s7, 0(s6)
  ADDI s6, zero, 30
  REMW s8, s1, s6
  ADDI s6, zero, 4
  MULW s9, s8, s6
  ADDI t6, sp, 0
  ADD s6, t6, s9
  LW s8, 0(s6)
  DIVW s6, s7, s8
  ADDI s7, zero, 2
  REMW s8, s6, s7
  XORI s6, s8, 1
  SLTIU s7, s6, 1
  BNE s7, zero, bb18
  JAL zero, bb25
bb16:
  ADDI s3, zero, 30
  REMW s4, s1, s3
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADDI t5, sp, 0
  ADD s3, t5, s5
  LW s4, 0(s3)
  ADD s3, s4, zero
  JAL zero, bb17
bb17:
  ADD s4, s3, zero
  ADD s5, s4, zero
  JAL zero, bb15
bb18:
  XOR s6, s2, zero
  SLTIU s7, s6, 1
  BNE s7, zero, bb20
  JAL zero, bb26
bb19:
  ADD s6, s8, zero
  ADD s9, s6, zero
  JAL zero, bb13
bb20:
  ADDI s6, zero, 30
  REMW s7, s1, s6
  ADDI s6, zero, 4
  MULW s8, s7, s6
  ADDI t6, sp, 0
  ADD s6, t6, s8
  LW s7, 0(s6)
  SUBW s6, s4, s7
  ADD s7, s6, zero
  JAL zero, bb21
bb21:
  ADD s6, s7, zero
  ADD s8, s6, zero
  JAL zero, bb19
bb22:
  ADD s9, zero, zero
  JAL zero, bb13
bb23:
  ADD s5, zero, zero
  JAL zero, bb15
bb24:
  ADD s3, zero, zero
  JAL zero, bb17
bb25:
  ADD s8, s4, zero
  JAL zero, bb19
bb26:
  ADD s7, s4, zero
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
  ADD s0, s1, zero
  SLT s2, zero, s0
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb29
  JAL zero, bb30
bb29:
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  CALL rand
  ADD s0, a0, zero
  LUI s2, 73
  ADDI s2, s2, 992
  REMW s4, s0, s2
  CALL rand
  ADD s0, a0, zero
  ADDI s2, zero, 2
  REMW s5, s0, s2
  LA s0, a
  ADD a0, s0, zero
  ADD a1, s4, zero
  ADD a2, s5, zero
  CALL set
  ADD s0, a0, zero
  ADD s1, s3, zero
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
