.global main
.section .bss
y:
.space 864000000
x:
.space 864000000
.section .data


.section .text
main:
  ADDI sp, sp, -144
  SD ra, 32(sp)
  SD s1, 40(sp)
  SD s11, 48(sp)
  SD s7, 56(sp)
  SD s10, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD s0, 96(sp)
  SD s5, 104(sp)
  SD s6, 112(sp)
  SD s8, 120(sp)
  SD s9, 128(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 0(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 16(sp)
  ADDI a0, zero, 13
  CALL _sysy_starttime
  ADD s2, zero, zero
  # implict jump to bb1
bb1:
  ADD s3, s2, zero
  LW t4, 0(sp)
  SLT s4, s3, t4
  BNE s4, zero, bb12
  # implict jump to bb2
bb2:
  ADDI s0, zero, 1
  LW t3, 0(sp)
  SUBW t4, t3, s0
  SW t4, 12(sp)
  ADDI t4, zero, 1
  SW t4, 28(sp)
  ADDI t4, zero, 1
  SW t4, 24(sp)
  # implict jump to bb3
bb3:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 8(sp)
  LW t3, 12(sp)
  SLT s6, t4, t3
  BNE s6, zero, bb5
  # implict jump to bb4
bb4:
  ADDI a0, zero, 53
  CALL _sysy_stoptime
  LW t4, 0(sp)
  ADD a0, t4, zero
  LA s0, x
  ADD a1, s0, zero
  CALL putarray
  ADDI s0, zero, 2
  LW t4, 0(sp)
  DIVW s1, t4, s0
  LUI s0, 352
  ADDIW s0, s0, -1792
  MULW s2, s1, s0
  LA s0, x
  ADD s3, s0, s2
  LUI s0, 1
  ADDIW s0, s0, -1696
  MULW s2, s1, s0
  ADD s0, s3, s2
  LW t4, 0(sp)
  ADD a0, t4, zero
  ADD a1, s0, zero
  CALL putarray
  ADDI s0, zero, 1
  LW t4, 8(sp)
  SUBW s1, t4, s0
  LUI s0, 352
  ADDIW s0, s0, -1792
  MULW s2, s1, s0
  LA s0, x
  ADD s1, s0, s2
  ADDI s0, zero, 1
  LW t4, 4(sp)
  SUBW s2, t4, s0
  LUI s0, 1
  ADDIW s0, s0, -1696
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW t4, 0(sp)
  ADD a0, t4, zero
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 32(sp)
  LD s1, 40(sp)
  LD s11, 48(sp)
  LD s7, 56(sp)
  LD s10, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s0, 96(sp)
  LD s5, 104(sp)
  LD s6, 112(sp)
  LD s8, 120(sp)
  LD s9, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb5:
  ADDI s6, zero, 1
  # implict jump to bb6
bb6:
  ADD t4, s6, zero
  SW t4, 20(sp)
  LW t4, 20(sp)
  LW t3, 12(sp)
  SLT s8, t4, t3
  BNE s8, zero, bb8
  # implict jump to bb7
bb7:
  LW t4, 8(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 28(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  JAL zero, bb3
bb8:
  ADDI s8, zero, 1
  # implict jump to bb9
bb9:
  ADD s9, s8, zero
  LW t4, 12(sp)
  SLT s10, s9, t4
  BNE s10, zero, bb11
  # implict jump to bb10
bb10:
  LW t4, 20(sp)
  ADDIW s0, t4, 1
  ADD s6, s0, zero
  JAL zero, bb6
bb11:
  LUI s10, 352
  ADDIW s10, s10, -1792
  LW t4, 8(sp)
  MULW s11, t4, s10
  LA s10, x
  ADD s4, s10, s11
  LUI s10, 1
  ADDIW s10, s10, -1696
  LW t4, 20(sp)
  MULW s11, t4, s10
  ADD s10, s4, s11
  SLLIW s5, s9, 2
  ADD s2, s10, s5
  ADDI s1, zero, 1
  LW t4, 8(sp)
  SUBW s7, t4, s1
  LUI s1, 352
  ADDIW s1, s1, -1792
  MULW s3, s7, s1
  LA s1, x
  ADD s7, s1, s3
  ADD s1, s7, s11
  ADD s3, s1, s5
  LW s1, 0(s3)
  LW t4, 8(sp)
  ADDIW s3, t4, 1
  LUI s7, 352
  ADDIW s7, s7, -1792
  MULW s0, s3, s7
  LA s3, x
  ADD s7, s3, s0
  ADD s0, s7, s11
  ADD s3, s0, s5
  LW s0, 0(s3)
  ADDW s3, s1, s0
  ADDI s0, zero, 1
  LW t4, 20(sp)
  SUBW s1, t4, s0
  LUI s0, 1
  ADDIW s0, s0, -1696
  MULW s7, s1, s0
  ADD s0, s4, s7
  ADD s1, s0, s5
  LW s0, 0(s1)
  ADDW s1, s3, s0
  LW t4, 20(sp)
  ADDIW s0, t4, 1
  LUI s3, 1
  ADDIW s3, s3, -1696
  MULW s7, s0, s3
  ADD s0, s4, s7
  ADD s3, s0, s5
  LW s0, 0(s3)
  ADDW s3, s1, s0
  ADDI s0, zero, 1
  SUBW s1, s9, s0
  SLLIW s0, s1, 2
  ADD s1, s10, s0
  LW s0, 0(s1)
  ADDW s1, s3, s0
  ADDIW s0, s9, 1
  SLLIW s3, s0, 2
  ADD s4, s10, s3
  LW s3, 0(s4)
  ADDW s4, s1, s3
  LW t4, 16(sp)
  DIVW s1, s4, t4
  SW s1, 0(s2)
  ADD s8, s0, zero
  JAL zero, bb9
bb12:
  ADD s4, zero, zero
  # implict jump to bb13
bb13:
  ADD s5, s4, zero
  LW t4, 0(sp)
  SLT s6, s5, t4
  BNE s6, zero, bb15
  # implict jump to bb14
bb14:
  ADDIW s0, s3, 1
  ADD s2, s0, zero
  JAL zero, bb1
bb15:
  ADD s6, zero, zero
  # implict jump to bb16
bb16:
  ADD s7, s6, zero
  LW t4, 0(sp)
  SLT s8, s7, t4
  BNE s8, zero, bb18
  # implict jump to bb17
bb17:
  ADDIW s0, s5, 1
  ADD s4, s0, zero
  JAL zero, bb13
bb18:
  LUI s8, 352
  ADDIW s8, s8, -1792
  MULW s9, s3, s8
  LA s8, x
  ADD s10, s8, s9
  LUI s8, 1
  ADDIW s8, s8, -1696
  MULW s11, s5, s8
  ADD s8, s10, s11
  SLLIW s10, s7, 2
  ADD s0, s8, s10
  ADDI s8, zero, 1
  SW s8, 0(s0)
  LA s0, y
  ADD s8, s0, s9
  ADD s0, s8, s11
  ADD s8, s0, s10
  SW zero, 0(s8)
  ADDIW s0, s7, 1
  ADD s6, s0, zero
  JAL zero, bb16
