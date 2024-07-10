.global main
.section .bss
y:
.space 864000000
x:
.space 864000000
.section .data


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
  CALL getint
  ADD s1, a0, zero
  ADDI a0, zero, 13
  CALL _sysy_starttime
  ADD s2, zero, zero
  # implict jump to bb1
bb1:
  ADD t4, s2, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  SLT s4, t4, s0
  BNE s4, zero, bb12
  # implict jump to bb2
bb2:
  ADDI s4, zero, 1
  SUBW s5, s0, s4
  ADDI s4, zero, 1
  ADDI s6, zero, 1
  # implict jump to bb3
bb3:
  ADD s7, s6, zero
  ADD s8, s4, zero
  SLT s9, s8, s5
  BNE s9, zero, bb5
  # implict jump to bb4
bb4:
  ADDI a0, zero, 53
  CALL _sysy_stoptime
  ADD a0, s0, zero
  LA s9, x
  ADD a1, s9, zero
  CALL putarray
  ADDI s9, zero, 2
  DIVW s10, s0, s9
  LUI s9, 352
  ADDIW s9, s9, -1792
  MULW s11, s10, s9
  LA s9, x
  ADD s3, s9, s11
  LUI s9, 1
  ADDIW s9, s9, -1696
  MULW s11, s10, s9
  ADD s9, s3, s11
  ADD a0, s0, zero
  ADD a1, s9, zero
  CALL putarray
  ADDI s3, zero, 1
  SUBW s9, s8, s3
  LUI s3, 352
  ADDIW s3, s3, -1792
  MULW s10, s9, s3
  LA s3, x
  ADD s9, s3, s10
  ADDI s3, zero, 1
  SUBW s10, s7, s3
  LUI s3, 1
  ADDIW s3, s3, -1696
  MULW s7, s10, s3
  ADD s3, s9, s7
  ADD a0, s0, zero
  ADD a1, s3, zero
  CALL putarray
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
bb5:
  ADDI s3, zero, 1
  # implict jump to bb6
bb6:
  ADD s7, s3, zero
  SLT s9, s7, s5
  BNE s9, zero, bb8
  # implict jump to bb7
bb7:
  ADDIW s9, s8, 1
  ADD s4, s9, zero
  ADD s6, s7, zero
  JAL zero, bb3
bb8:
  ADDI s4, zero, 1
  # implict jump to bb9
bb9:
  ADD s6, s4, zero
  SLT s9, s6, s5
  BNE s9, zero, bb11
  # implict jump to bb10
bb10:
  ADDIW s9, s7, 1
  ADD s3, s9, zero
  JAL zero, bb6
bb11:
  LUI s3, 352
  ADDIW s3, s3, -1792
  MULW s9, s8, s3
  LA s3, x
  ADD s10, s3, s9
  LUI s3, 1
  ADDIW s3, s3, -1696
  MULW s9, s7, s3
  ADD s3, s10, s9
  SLLIW s11, s6, 2
  ADD ra, s3, s11
  ADDI t0, zero, 1
  SUBW t1, s8, t0
  LUI t0, 352
  ADDIW t0, t0, -1792
  MULW t2, t1, t0
  LA t0, x
  ADD t1, t0, t2
  ADD t0, t1, s9
  ADD t1, t0, s11
  LW t0, 0(t1)
  ADDIW t1, s8, 1
  LUI t2, 352
  ADDIW t2, t2, -1792
  MULW a0, t1, t2
  LA t1, x
  ADD t2, t1, a0
  ADD t1, t2, s9
  ADD s9, t1, s11
  LW t1, 0(s9)
  ADDW s9, t0, t1
  ADDI t0, zero, 1
  SUBW t1, s7, t0
  LUI t0, 1
  ADDIW t0, t0, -1696
  MULW t2, t1, t0
  ADD t0, s10, t2
  ADD t1, t0, s11
  LW t0, 0(t1)
  ADDW t1, s9, t0
  ADDIW s9, s7, 1
  LUI t0, 1
  ADDIW t0, t0, -1696
  MULW t2, s9, t0
  ADD s9, s10, t2
  ADD s10, s9, s11
  LW s9, 0(s10)
  ADDW s10, t1, s9
  ADDI s9, zero, 1
  SUBW s11, s6, s9
  SLLIW s9, s11, 2
  ADD s11, s3, s9
  LW s9, 0(s11)
  ADDW s11, s10, s9
  ADDIW s9, s6, 1
  SLLIW s6, s9, 2
  ADD s10, s3, s6
  LW s3, 0(s10)
  ADDW s6, s11, s3
  DIVW s3, s6, s1
  SW s3, 0(ra)
  ADD s4, s9, zero
  JAL zero, bb9
bb12:
  ADD s3, zero, zero
  # implict jump to bb13
bb13:
  ADD s4, s3, zero
  SLT s5, s4, s0
  BNE s5, zero, bb15
  # implict jump to bb14
bb14:
  LW t4, 0(sp)
  ADDIW s5, t4, 1
  ADD s2, s5, zero
  JAL zero, bb1
bb15:
  ADD s2, zero, zero
  # implict jump to bb16
bb16:
  ADD s5, s2, zero
  SLT s6, s5, s0
  BNE s6, zero, bb18
  # implict jump to bb17
bb17:
  ADDIW s6, s4, 1
  ADD s3, s6, zero
  JAL zero, bb13
bb18:
  LUI s3, 352
  ADDIW s3, s3, -1792
  LW t4, 0(sp)
  MULW s6, t4, s3
  LA s3, x
  ADD s7, s3, s6
  LUI s3, 1
  ADDIW s3, s3, -1696
  MULW s8, s4, s3
  ADD s3, s7, s8
  SLLIW s7, s5, 2
  ADD s9, s3, s7
  ADDI s3, zero, 1
  SW s3, 0(s9)
  LA s3, y
  ADD s9, s3, s6
  ADD s3, s9, s8
  ADD s6, s3, s7
  SW zero, 0(s6)
  ADDIW s3, s5, 1
  ADD s2, s3, zero
  JAL zero, bb16
