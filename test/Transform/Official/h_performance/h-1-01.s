.global main
.section .bss

.section .data
lim:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -112
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s10, 96(sp)
  SD s11, 104(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, lim
  SW s0, 0(s1)
  ADDI a0, zero, 22
  CALL _sysy_starttime
  LA s0, lim
  LW s0, 0(s0)
  SLTI s1, s0, 1
  XORI s1, s1, 1
  BNE s1, zero, bb3
  # implict jump to bb1
bb1:
  ADD s1, zero, zero
  # implict jump to bb2
bb2:
  ADDI a0, zero, 27
  CALL _sysy_stoptime
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb3:
  ADD t4, zero, zero
  SW t4, 4(sp)
  ADDI t4, zero, 1
  SW t4, 0(sp)
  # implict jump to bb4
bb4:
  LW t4, 0(sp)
  ADD s4, t4, zero
  LW t4, 4(sp)
  ADD s5, t4, zero
  ADD s6, s0, zero
  ADD s7, zero, zero
  ADD s8, s4, zero
  # implict jump to bb5
bb5:
  ADD s9, s8, zero
  ADD s10, s7, zero
  XORI s11, s9, 1
  SLTIU s11, s11, 1
  BNE s11, zero, bb14
  # implict jump to bb6
bb6:
  ADDI s11, zero, 2
  REMW s11, s9, s11
  SLTIU s11, s11, 1
  BNE s11, zero, bb13
  # implict jump to bb7
bb7:
  ADDI s11, zero, 3
  MULW s11, s9, s11
  ADDIW s11, s11, 1
  SLT s3, s6, s11
  XORI s3, s3, 1
  BNE s3, zero, bb12
  # implict jump to bb8
bb8:
  ADD s3, zero, zero
  # implict jump to bb9
bb9:
  ADDW s2, s5, s3
  LUI s3, 244141
  ADDIW s3, s3, -1529
  REMW s2, s2, s3
  ADDIW s3, s4, 1
  LA s4, lim
  LW s4, 0(s4)
  SLT s5, s4, s3
  XORI s5, s5, 1
  BNE s5, zero, bb11
  # implict jump to bb10
bb10:
  ADD s1, s2, zero
  JAL zero, bb2
bb11:
  ADD s0, s4, zero
  ADD t4, s2, zero
  SW t4, 4(sp)
  ADD t4, s3, zero
  SW t4, 0(sp)
  JAL zero, bb4
bb12:
  ADDIW s2, s10, 1
  ADD s7, s2, zero
  ADD s8, s11, zero
  JAL zero, bb5
bb13:
  ADDI s2, zero, 2
  DIVW s2, s9, s2
  ADDIW s9, s10, 1
  ADD s7, s9, zero
  ADD s8, s2, zero
  JAL zero, bb5
bb14:
  ADD s3, s10, zero
  JAL zero, bb9
