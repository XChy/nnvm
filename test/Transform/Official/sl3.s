.global main
.section .bss
y:
.space 864000000
x:
.space 864000000
.section .data


.section .text
main:
  ADDI sp, sp, -192
  SD ra, 88(sp)
  SD s0, 96(sp)
  SD s1, 104(sp)
  SD s2, 112(sp)
  SD s5, 120(sp)
  SD s6, 128(sp)
  SD s3, 136(sp)
  SD s7, 144(sp)
  SD s9, 152(sp)
  SD s10, 160(sp)
  SD s11, 168(sp)
  SD s4, 176(sp)
  SD s8, 184(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 56(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 60(sp)
  ADDI a0, zero, 13
  CALL _sysy_starttime
  ADDI s9, zero, 0
  LW t4, 56(sp)
  BLT s9, t4, bb21
  # implict jump to bb1
bb1:
  ADDI s0, zero, 1
  LW t4, 56(sp)
  SUBW s0, t4, s0
  ADDI s4, zero, 1
  BLT s4, s0, bb4
  # implict jump to bb2
bb2:
  ADDI t4, zero, 1
  SW t4, 80(sp)
  ADDI s7, zero, 1
  # implict jump to bb3
bb3:
  LW t4, 80(sp)
  ADD s1, t4, zero
  ADDI a0, zero, 53
  CALL _sysy_stoptime
  LW t4, 56(sp)
  ADD a0, t4, zero
  LA s2, x
  ADD a1, s2, zero
  CALL putarray
  ADDI s2, zero, 2
  LW t4, 56(sp)
  DIVW s2, t4, s2
  LUI s3, 352
  ADDIW s3, s3, -1792
  MULW s3, s2, s3
  LA s4, x
  ADD s3, s4, s3
  LUI s4, 1
  ADDIW s4, s4, -1696
  MULW s2, s2, s4
  ADD s2, s3, s2
  LW t4, 56(sp)
  ADD a0, t4, zero
  ADD a1, s2, zero
  CALL putarray
  ADDI s2, zero, 1
  SUBW s2, s7, s2
  LUI s3, 352
  ADDIW s3, s3, -1792
  MULW s2, s2, s3
  LA s3, x
  ADD s2, s3, s2
  ADDI s3, zero, 1
  SUBW s1, s1, s3
  LUI s3, 1
  ADDIW s3, s3, -1696
  MULW s1, s1, s3
  ADD s1, s2, s1
  LW t4, 56(sp)
  ADD a0, t4, zero
  ADD a1, s1, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 88(sp)
  LD s0, 96(sp)
  LD s1, 104(sp)
  LD s2, 112(sp)
  LD s5, 120(sp)
  LD s6, 128(sp)
  LD s3, 136(sp)
  LD s7, 144(sp)
  LD s9, 152(sp)
  LD s10, 160(sp)
  LD s11, 168(sp)
  LD s4, 176(sp)
  LD s8, 184(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb4:
  ADD t4, s0, zero
  SW t4, 76(sp)
  ADDI t4, zero, 1
  SW t4, 4(sp)
  # implict jump to bb5
bb5:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  ADDI s9, zero, 1
  LW t4, 24(sp)
  BLT s9, t4, bb11
  # implict jump to bb6
bb6:
  ADDI s9, zero, 1
  # implict jump to bb7
bb7:
  ADD s5, s9, zero
  LW t3, 28(sp)
  ADDIW t4, t3, 1
  SW t4, 72(sp)
  # implict jump to bb8
bb8:
  ADDI s0, zero, 1
  LW t4, 56(sp)
  SUBW s0, t4, s0
  LW t4, 72(sp)
  BLT t4, s0, bb10
  # implict jump to bb9
bb9:
  ADD t4, s5, zero
  SW t4, 80(sp)
  LW t4, 72(sp)
  ADD s7, t4, zero
  JAL zero, bb3
bb10:
  ADD t4, s0, zero
  SW t4, 76(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb5
bb11:
  ADDI t4, zero, 1
  SW t4, 12(sp)
  # implict jump to bb12
bb12:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  ADDI s10, zero, 1
  LW t4, 24(sp)
  BLT s10, t4, bb17
  # implict jump to bb13
bb13:
  LW t3, 32(sp)
  ADDIW t4, t3, 1
  SW t4, 8(sp)
  # implict jump to bb14
bb14:
  LW t4, 8(sp)
  LW t3, 24(sp)
  BLT t4, t3, bb16
  # implict jump to bb15
bb15:
  LW t4, 8(sp)
  ADD s9, t4, zero
  JAL zero, bb7
bb16:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  JAL zero, bb12
bb17:
  ADDI t4, zero, 1
  SW t4, 20(sp)
  # implict jump to bb18
bb18:
  LW t4, 20(sp)
  ADD s11, t4, zero
  LUI s10, 352
  ADDIW s10, s10, -1792
  LW t4, 28(sp)
  MULW s10, t4, s10
  LA s6, x
  ADD s6, s6, s10
  LUI s10, 1
  ADDIW s10, s10, -1696
  LW t4, 32(sp)
  MULW s10, t4, s10
  ADD s3, s6, s10
  SLLIW s2, s11, 2
  ADD s8, s3, s2
  ADDI s1, zero, 1
  LW t4, 28(sp)
  SUBW s1, t4, s1
  LUI s0, 352
  ADDIW s0, s0, -1792
  MULW s0, s1, s0
  LA s1, x
  ADD s0, s1, s0
  ADD s0, s0, s10
  ADD s0, s0, s2
  LW s0, 0(s0)
  LW t4, 28(sp)
  ADDIW s1, t4, 1
  LUI s4, 352
  ADDIW s4, s4, -1792
  MULW s1, s1, s4
  LA s4, x
  ADD s1, s4, s1
  ADD s1, s1, s10
  ADD s1, s1, s2
  LW s1, 0(s1)
  ADDW s0, s0, s1
  ADDI s1, zero, 1
  LW t4, 32(sp)
  SUBW s1, t4, s1
  LUI s4, 1
  ADDIW s4, s4, -1696
  MULW s1, s1, s4
  ADD s1, s6, s1
  ADD s1, s1, s2
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LW t4, 32(sp)
  ADDIW s1, t4, 1
  LUI s4, 1
  ADDIW s4, s4, -1696
  MULW s1, s1, s4
  ADD s1, s6, s1
  ADD s1, s1, s2
  LW s1, 0(s1)
  ADDW s0, s0, s1
  ADDI s1, zero, 1
  SUBW s1, s11, s1
  SLLIW s1, s1, 2
  ADD s1, s3, s1
  LW s1, 0(s1)
  ADDW s0, s0, s1
  ADDIW t4, s11, 1
  SW t4, 16(sp)
  LW t4, 16(sp)
  SLLIW s1, t4, 2
  ADD s1, s3, s1
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LW t4, 60(sp)
  DIVW s0, s0, t4
  SW s0, 0(s8)
  # implict jump to bb19
bb19:
  LW t4, 16(sp)
  LW t3, 24(sp)
  BLT t4, t3, bb20
  JAL zero, bb13
bb20:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb18
bb21:
  ADD t4, zero, zero
  SW t4, 40(sp)
  # implict jump to bb22
bb22:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  ADDI s11, zero, 0
  LW t4, 56(sp)
  BLT s11, t4, bb26
  # implict jump to bb23
bb23:
  LW t3, 64(sp)
  ADDIW t4, t3, 1
  SW t4, 36(sp)
  # implict jump to bb24
bb24:
  LW t4, 36(sp)
  LW t3, 56(sp)
  BLT t4, t3, bb25
  JAL zero, bb1
bb25:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb22
bb26:
  ADD t4, zero, zero
  SW t4, 48(sp)
  # implict jump to bb27
bb27:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  ADDI s10, zero, 0
  LW t4, 56(sp)
  BLT s10, t4, bb31
  # implict jump to bb28
bb28:
  LW t3, 68(sp)
  ADDIW t4, t3, 1
  SW t4, 44(sp)
  # implict jump to bb29
bb29:
  LW t4, 44(sp)
  LW t3, 56(sp)
  BLT t4, t3, bb30
  JAL zero, bb23
bb30:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb27
bb31:
  ADD t4, zero, zero
  SW t4, 52(sp)
  # implict jump to bb32
bb32:
  LW t4, 52(sp)
  ADD s8, t4, zero
  LUI s7, 352
  ADDIW s7, s7, -1792
  LW t4, 64(sp)
  MULW s7, t4, s7
  LA s10, x
  ADD s10, s10, s7
  LUI s4, 1
  ADDIW s4, s4, -1696
  LW t4, 68(sp)
  MULW s4, t4, s4
  ADD s10, s10, s4
  SLLIW s11, s8, 2
  ADD s10, s10, s11
  ADDI s0, zero, 1
  SW s0, 0(s10)
  LA s0, y
  ADD s0, s0, s7
  ADD s0, s0, s4
  ADD s0, s0, s11
  ADDI s4, zero, 0
  SW s4, 0(s0)
  ADDIW t4, s8, 1
  SW t4, 0(sp)
  # implict jump to bb33
bb33:
  LW t4, 0(sp)
  LW t3, 56(sp)
  BLT t4, t3, bb34
  JAL zero, bb28
bb34:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  JAL zero, bb32
