.global fun
.global main
.section .bss

.section .data
lim:
.word 0x00000000
.section .text
fun:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  XORI s2, s0, 1
  SLTIU s2, s2, 1
  BNE s2, zero, bb6
  # implict jump to bb1
bb1:
  ADDI s2, zero, 2
  REMW s2, s0, s2
  SLTIU s2, s2, 1
  BNE s2, zero, bb5
  # implict jump to bb2
bb2:
  ADDI s2, zero, 3
  MULW s2, s0, s2
  ADDIW s2, s2, 1
  LA s3, lim
  LW s3, 0(s3)
  SLT s3, s3, s2
  XORI s3, s3, 1
  BNE s3, zero, bb4
  # implict jump to bb3
bb3:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb4:
  ADDIW s3, s1, 1
  ADD a0, s2, zero
  ADD a1, s3, zero
  CALL fun
  ADD s2, a0, zero
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb5:
  ADDI s2, zero, 2
  DIVW s0, s0, s2
  ADDIW s2, s1, 1
  ADD a0, s0, zero
  ADD a1, s2, zero
  CALL fun
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb6:
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -48
  SD s0, 0(sp)
  SD s1, 8(sp)
  SD s2, 16(sp)
  SD s3, 24(sp)
  SD s4, 32(sp)
  SD s5, 40(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, lim
  SW s0, 0(s1)
  ADDI a0, zero, 22
  CALL _sysy_starttime
  LA s0, lim
  LW s0, 0(s0)
  SLTI s0, s0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb10
  # implict jump to bb8
bb8:
  ADD s0, zero, zero
  # implict jump to bb9
bb9:
  ADDI a0, zero, 27
  CALL _sysy_stoptime
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
bb10:
  ADD s1, zero, zero
  ADDI s2, zero, 1
  # implict jump to bb11
bb11:
  ADD s3, s2, zero
  ADD s4, s1, zero
  ADD a0, s3, zero
  ADD a1, zero, zero
  CALL fun
  ADD s5, a0, zero
  ADDW s4, s4, s5
  LUI s5, 244141
  ADDIW s5, s5, -1529
  REMW s4, s4, s5
  ADDIW s3, s3, 1
  LA s5, lim
  LW s5, 0(s5)
  SLT s5, s5, s3
  XORI s5, s5, 1
  BNE s5, zero, bb13
  # implict jump to bb12
bb12:
  ADD s0, s4, zero
  JAL zero, bb9
bb13:
  ADD s1, s4, zero
  ADD s2, s3, zero
  JAL zero, bb11
