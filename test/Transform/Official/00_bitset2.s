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
  LA s0, staticvalue
  LW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LA s0, seed
  ADD s2, s0, s3
  LW s0, 0(s2)
  REMW s2, s1, s0
  LA s0, staticvalue
  SW s2, 0(s0)
  LA s0, staticvalue
  LW s1, 0(s0)
  SLT s0, s1, zero
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
  ADDI sp, sp, -224
  SD ra, 168(sp)
  SD s4, 176(sp)
  SD s3, 184(sp)
  SD s2, 192(sp)
  SD s1, 200(sp)
  SD s0, 208(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  SW s1, 160(sp)
  SW s2, 152(sp)
  ADDI s1, zero, 31
  SW s1, 16(sp)
  JAL zero, bb4
bb4:
  LW s1, 16(sp)
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb5
  JAL zero, bb6
bb5:
  LW s1, 16(sp)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SW s3, 16(sp)
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADD s1, zero, s2
  ADDI t5, sp, 24
  ADD s2, t5, s1
  SW zero, 0(s2)
  JAL zero, bb4
bb6:
  ADDI s1, zero, 4
  MUL s2, zero, s1
  ADDI t6, sp, 24
  ADD s1, t6, s2
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDI t5, sp, 24
  ADD s1, t5, s3
  ADDI s2, zero, 4
  MUL s3, zero, s2
  ADDI t6, sp, 24
  ADD s2, t6, s3
  LW s3, 0(s2)
  ADDI s2, zero, 2
  MULW s4, s3, s2
  SW s4, 0(s1)
  ADDI s1, zero, 4
  ADDI s2, zero, 2
  MULW s3, s1, s2
  ADDI t5, sp, 24
  ADD s1, t5, s3
  ADDI s2, zero, 4
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADDI t6, sp, 24
  ADD s2, t6, s4
  LW s3, 0(s2)
  ADDI s2, zero, 2
  MULW s4, s3, s2
  SW s4, 0(s1)
  ADDI s1, zero, 4
  ADDI s2, zero, 3
  MULW s3, s1, s2
  ADDI t5, sp, 24
  ADD s1, t5, s3
  ADDI s2, zero, 4
  ADDI s3, zero, 2
  MULW s4, s2, s3
  ADDI t6, sp, 24
  ADD s2, t6, s4
  LW s3, 0(s2)
  ADDI s2, zero, 2
  MULW s4, s3, s2
  SW s4, 0(s1)
  ADDI s1, zero, 4
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 24
  ADD s1, t5, s3
  ADDI s2, zero, 4
  ADDI s3, zero, 3
  MULW s4, s2, s3
  ADDI t6, sp, 24
  ADD s2, t6, s4
  LW s3, 0(s2)
  ADDI s2, zero, 2
  MULW s4, s3, s2
  SW s4, 0(s1)
  ADDI s1, zero, 4
  ADDI s2, zero, 5
  MULW s3, s1, s2
  ADDI t5, sp, 24
  ADD s1, t5, s3
  ADDI s2, zero, 4
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADDI t6, sp, 24
  ADD s2, t6, s4
  LW s3, 0(s2)
  ADDI s2, zero, 2
  MULW s4, s3, s2
  SW s4, 0(s1)
  ADDI s1, zero, 4
  ADDI s2, zero, 6
  MULW s3, s1, s2
  ADDI t5, sp, 24
  ADD s1, t5, s3
  ADDI s2, zero, 4
  ADDI s3, zero, 5
  MULW s4, s2, s3
  ADDI t6, sp, 24
  ADD s2, t6, s4
  LW s3, 0(s2)
  ADDI s2, zero, 2
  MULW s4, s3, s2
  SW s4, 0(s1)
  ADDI s1, zero, 4
  ADDI s2, zero, 7
  MULW s3, s1, s2
  ADDI t5, sp, 24
  ADD s1, t5, s3
  ADDI s2, zero, 4
  ADDI s3, zero, 6
  MULW s4, s2, s3
  ADDI t6, sp, 24
  ADD s2, t6, s4
  LW s3, 0(s2)
  ADDI s2, zero, 2
  MULW s4, s3, s2
  SW s4, 0(s1)
  ADDI s1, zero, 4
  ADDI s2, zero, 8
  MULW s3, s1, s2
  ADDI t5, sp, 24
  ADD s1, t5, s3
  ADDI s2, zero, 4
  ADDI s3, zero, 7
  MULW s4, s2, s3
  ADDI t6, sp, 24
  ADD s2, t6, s4
  LW s3, 0(s2)
  ADDI s2, zero, 2
  MULW s4, s3, s2
  SW s4, 0(s1)
  ADDI s1, zero, 4
  ADDI s2, zero, 9
  MULW s3, s1, s2
  ADDI t5, sp, 24
  ADD s1, t5, s3
  ADDI s2, zero, 4
  ADDI s3, zero, 8
  MULW s4, s2, s3
  ADDI t6, sp, 24
  ADD s2, t6, s4
  LW s3, 0(s2)
  ADDI s2, zero, 2
  MULW s4, s3, s2
  SW s4, 0(s1)
  ADDI s1, zero, 4
  ADDI s2, zero, 10
  MULW s3, s1, s2
  ADDI t5, sp, 24
  ADD s1, t5, s3
  ADDI s2, zero, 4
  ADDI s3, zero, 9
  MULW s4, s2, s3
  ADDI t6, sp, 24
  ADD s2, t6, s4
  LW s3, 0(s2)
  ADDI s2, zero, 2
  MULW s4, s3, s2
  SW s4, 0(s1)
  ADDI s1, zero, 10
  SW s1, 8(sp)
  JAL zero, bb7
bb7:
  LW s1, 8(sp)
  SLTI s2, s1, 30
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb8
  JAL zero, bb9
bb8:
  LW s1, 8(sp)
  ADDIW s2, s1, 1
  SW s2, 8(sp)
  LW s1, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 24
  ADD s1, t5, s3
  LW s2, 8(sp)
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  ADDI s2, zero, 4
  MULW s3, s4, s2
  ADDI t6, sp, 24
  ADD s2, t6, s3
  LW s3, 0(s2)
  ADDI s2, zero, 2
  MULW s4, s3, s2
  SW s4, 0(s1)
  JAL zero, bb7
bb9:
  SW zero, 0(sp)
  LW s1, 160(sp)
  ADDI s2, zero, 30
  DIVW s3, s1, s2
  LUI s1, 2
  ADDI s1, s1, 1808
  SLT s2, s3, s1
  XORI s1, s2, 1
  BNE s1, zero, bb10
  JAL zero, bb11
bb10:
  ADD a0, zero, zero
  LD ra, 168(sp)
  LD s4, 176(sp)
  LD s3, 184(sp)
  LD s2, 192(sp)
  LD s1, 200(sp)
  LD s0, 208(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb11:
  LW s1, 160(sp)
  ADDI s2, zero, 30
  DIVW s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADD s1, s0, s2
  LW s2, 0(s1)
  LW s1, 160(sp)
  ADDI s3, zero, 30
  REMW s4, s1, s3
  ADDI s1, zero, 4
  MULW s3, s4, s1
  ADDI t5, sp, 24
  ADD s1, t5, s3
  LW s3, 0(s1)
  DIVW s1, s2, s3
  ADDI s2, zero, 2
  REMW s3, s1, s2
  LW s1, 152(sp)
  XOR s2, s3, s1
  SLTU s1, zero, s2
  BNE s1, zero, bb12
  JAL zero, bb13
bb12:
  LW s1, 160(sp)
  ADDI s2, zero, 30
  DIVW s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADD s1, s0, s2
  LW s2, 0(s1)
  LW s1, 160(sp)
  ADDI s3, zero, 30
  REMW s4, s1, s3
  ADDI s1, zero, 4
  MULW s3, s4, s1
  ADDI t6, sp, 24
  ADD s1, t6, s3
  LW s3, 0(s1)
  DIVW s1, s2, s3
  ADDI s2, zero, 2
  REMW s3, s1, s2
  XOR s1, s3, zero
  SLTIU s2, s1, 1
  BNE s2, zero, bb14
  JAL zero, bb15
bb13:
  LW s1, 160(sp)
  ADDI s2, zero, 30
  DIVW s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADD s1, s0, s2
  LW s2, 160(sp)
  ADDI s3, zero, 30
  DIVW s4, s2, s3
  ADDI s2, zero, 4
  MULW s3, s4, s2
  ADD s2, s0, s3
  LW s0, 0(s2)
  LW s2, 0(sp)
  ADDW s3, s0, s2
  SW s3, 0(s1)
  ADD a0, zero, zero
  LD ra, 168(sp)
  LD s4, 176(sp)
  LD s3, 184(sp)
  LD s2, 192(sp)
  LD s1, 200(sp)
  LD s0, 208(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb14:
  LW s1, 152(sp)
  XORI s2, s1, 1
  SLTIU s1, s2, 1
  BNE s1, zero, bb16
  JAL zero, bb17
bb15:
  LW s1, 160(sp)
  ADDI s2, zero, 30
  DIVW s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADD s1, s0, s2
  LW s2, 0(s1)
  LW s1, 160(sp)
  ADDI s3, zero, 30
  REMW s4, s1, s3
  ADDI s1, zero, 4
  MULW s3, s4, s1
  ADDI t5, sp, 24
  ADD s1, t5, s3
  LW s3, 0(s1)
  DIVW s1, s2, s3
  ADDI s2, zero, 2
  REMW s3, s1, s2
  XORI s1, s3, 1
  SLTIU s2, s1, 1
  BNE s2, zero, bb18
  JAL zero, bb19
bb16:
  LW s1, 160(sp)
  ADDI s2, zero, 30
  REMW s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADDI t6, sp, 24
  ADD s1, t6, s2
  LW s2, 0(s1)
  SW s2, 0(sp)
  JAL zero, bb17
bb17:
  JAL zero, bb15
bb18:
  LW s1, 152(sp)
  XOR s2, s1, zero
  SLTIU s1, s2, 1
  BNE s1, zero, bb20
  JAL zero, bb21
bb19:
  JAL zero, bb13
bb20:
  LW s1, 0(sp)
  LW s2, 160(sp)
  ADDI s3, zero, 30
  REMW s4, s2, s3
  ADDI s2, zero, 4
  MULW s3, s4, s2
  ADDI t5, sp, 24
  ADD s2, t5, s3
  LW s3, 0(s2)
  SUBW s2, s1, s3
  SW s2, 0(sp)
  JAL zero, bb21
bb21:
  JAL zero, bb19
main:
  ADDI sp, sp, -64
  SD ra, 24(sp)
  SD s2, 32(sp)
  SD s1, 40(sp)
  SD s0, 48(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 16(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, staticvalue
  SW s0, 0(s1)
  ADDI a0, zero, 56
  CALL _sysy_starttime
  JAL zero, bb23
bb23:
  LW s0, 16(sp)
  SLT s1, zero, s0
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb24
  JAL zero, bb25
bb24:
  LW s0, 16(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 16(sp)
  CALL rand
  ADD s0, a0, zero
  LUI s1, 73
  ADDI s1, s1, 992
  REMW s2, s0, s1
  SW s2, 8(sp)
  CALL rand
  ADD s0, a0, zero
  ADDI s1, zero, 2
  REMW s2, s0, s1
  SW s2, 0(sp)
  LW s0, 8(sp)
  LW s1, 0(sp)
  LA s2, a
  ADD a0, s2, zero
  ADD a1, s0, zero
  ADD a2, s1, zero
  CALL set
  ADD s0, a0, zero
  JAL zero, bb23
bb25:
  ADDI a0, zero, 64
  CALL _sysy_starttime
  LUI s0, 2
  ADDI s0, s0, 1808
  ADD a0, zero, s0
  LA s0, a
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
