.global main
.section .bss
y:
.space 864000000
x:
.space 864000000
.section .data


.section .text
main:
  ADDI sp, sp, -224
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  SD s5, 112(sp)
  SD s6, 120(sp)
  SD s7, 128(sp)
  SD s8, 136(sp)
  SD s9, 144(sp)
  SD s10, 152(sp)
  SD s11, 160(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 44(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 56(sp)
  ADDI a0, zero, 13
  CALL _sysy_starttime
  ADDI t4, zero, 0
  SW t4, 60(sp)
  LW t4, 60(sp)
  LW t3, 44(sp)
  BLT t4, t3, bb18
  # implict jump to bb1
bb1:
  ADDI s2, zero, 1
  LW t3, 44(sp)
  SUBW t4, t3, s2
  SW t4, 4(sp)
  ADDI s7, zero, 1
  LW t4, 4(sp)
  BLT s7, t4, bb4
  # implict jump to bb2
bb2:
  ADDI s7, zero, 1
  ADDI s6, zero, 1
  # implict jump to bb3
bb3:
  ADDI a0, zero, 53
  CALL _sysy_stoptime
  LW t4, 44(sp)
  ADD a0, t4, zero
  LA s5, x
  ADD a1, s5, zero
  CALL putarray
  LW t4, 44(sp)
  SRAIW s5, t4, 31
  SRLIW s5, s5, 31
  LW t4, 44(sp)
  ADD s5, t4, s5
  SRAIW s5, s5, 1
  LUI s8, 352
  ADDIW s8, s8, -1792
  MULW s8, s5, s8
  LA s11, x
  ADD s8, s11, s8
  LUI s11, 1
  ADDIW s11, s11, -1696
  MULW s5, s5, s11
  ADD s5, s8, s5
  LW t4, 44(sp)
  ADD a0, t4, zero
  ADD a1, s5, zero
  CALL putarray
  ADDI s5, zero, 1
  SUBW s5, s7, s5
  LUI s7, 352
  ADDIW s7, s7, -1792
  MULW s5, s5, s7
  LA s7, x
  ADD s5, s7, s5
  ADDI s7, zero, 1
  SUBW s6, s6, s7
  LUI s7, 1
  ADDIW s7, s7, -1696
  MULW s6, s6, s7
  ADD s5, s5, s6
  LW t4, 44(sp)
  ADD a0, t4, zero
  ADD a1, s5, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD s5, 112(sp)
  LD s6, 120(sp)
  LD s7, 128(sp)
  LD s8, 136(sp)
  LD s9, 144(sp)
  LD s10, 152(sp)
  LD s11, 160(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb4:
  LW t4, 4(sp)
  ADD s4, t4, zero
  ADDI s1, zero, 1
  # implict jump to bb5
bb5:
  ADD t4, s1, zero
  SW t4, 12(sp)
  ADD t4, s4, zero
  SW t4, 8(sp)
  ADDI t4, zero, 1
  SW t4, 20(sp)
  LW t4, 20(sp)
  LW t3, 8(sp)
  BLT t4, t3, bb10
  # implict jump to bb6
bb6:
  ADDI s5, zero, 1
  # implict jump to bb7
bb7:
  LW t4, 12(sp)
  ADDIW s2, t4, 1
  LW t4, 4(sp)
  BLT s2, t4, bb9
  # implict jump to bb8
bb8:
  ADD s7, s2, zero
  ADD s6, s5, zero
  JAL zero, bb3
bb9:
  LW t4, 4(sp)
  ADD s4, t4, zero
  ADD s1, s2, zero
  JAL zero, bb5
bb10:
  ADDI s10, zero, 1
  # implict jump to bb11
bb11:
  ADD t4, s10, zero
  SW t4, 16(sp)
  LW t4, 20(sp)
  LW t3, 8(sp)
  BLT t4, t3, bb15
  # implict jump to bb12
bb12:
  LW t4, 16(sp)
  ADDIW s0, t4, 1
  LW t4, 8(sp)
  BLT s0, t4, bb14
  # implict jump to bb13
bb13:
  ADD s5, s0, zero
  JAL zero, bb7
bb14:
  ADD s10, s0, zero
  JAL zero, bb11
bb15:
  LUI s11, 352
  ADDIW s11, s11, -1792
  LW t4, 12(sp)
  MULW s11, t4, s11
  LA s9, x
  ADD s9, s9, s11
  LUI s11, 1
  ADDIW s11, s11, -1696
  LW t4, 16(sp)
  MULW s11, t4, s11
  ADD t4, s9, s11
  SD t4, 168(sp)
  ADDI s3, zero, 1
  LW t4, 12(sp)
  SUBW s3, t4, s3
  LUI s0, 352
  ADDIW s0, s0, -1792
  MULW s0, s3, s0
  LA s3, x
  ADD s0, s3, s0
  ADD t4, s0, s11
  SD t4, 200(sp)
  LW t4, 12(sp)
  ADDIW s3, t4, 1
  LUI s0, 352
  ADDIW s0, s0, -1792
  MULW s0, s3, s0
  LA s3, x
  ADD s0, s3, s0
  ADD t4, s0, s11
  SD t4, 176(sp)
  ADDI s3, zero, 1
  LW t4, 16(sp)
  SUBW s3, t4, s3
  LUI s11, 1
  ADDIW s11, s11, -1696
  MULW s3, s3, s11
  ADD t4, s9, s3
  SD t4, 192(sp)
  LW t4, 16(sp)
  ADDIW s11, t4, 1
  LUI s3, 1
  ADDIW s3, s3, -1696
  MULW s3, s11, s3
  ADD t4, s9, s3
  SD t4, 184(sp)
  ADDI s9, zero, 1
  # implict jump to bb16
bb16:
  ADD s11, s9, zero
  SLLIW s3, s11, 2
  LD t4, 168(sp)
  ADD s0, t4, s3
  LD t4, 200(sp)
  ADD s8, t4, s3
  LW s8, 0(s8)
  LD t4, 176(sp)
  ADD s2, t4, s3
  LW s2, 0(s2)
  ADDW s2, s8, s2
  LD t4, 192(sp)
  ADD s8, t4, s3
  LW s8, 0(s8)
  ADDW s2, s2, s8
  LD t4, 184(sp)
  ADD s3, t4, s3
  LW s3, 0(s3)
  ADDW s2, s2, s3
  ADDI s3, zero, 1
  SUBW s3, s11, s3
  SLLIW s3, s3, 2
  LD t4, 168(sp)
  ADD s3, t4, s3
  LW s3, 0(s3)
  ADDW s2, s2, s3
  ADDIW s3, s11, 1
  SLLIW s8, s3, 2
  LD t4, 168(sp)
  ADD s8, t4, s8
  LW s8, 0(s8)
  ADDW s2, s2, s8
  LW t4, 56(sp)
  DIVW s2, s2, t4
  SW s2, 0(s0)
  LW t4, 8(sp)
  BLT s3, t4, bb17
  JAL zero, bb12
bb17:
  ADD s9, s3, zero
  JAL zero, bb16
bb18:
  ADD t4, zero, zero
  SW t4, 28(sp)
  # implict jump to bb19
bb19:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t4, 60(sp)
  LW t3, 44(sp)
  BLT t4, t3, bb22
  # implict jump to bb20
bb20:
  LW t3, 48(sp)
  ADDIW t4, t3, 1
  SW t4, 24(sp)
  LW t4, 24(sp)
  LW t3, 44(sp)
  BLT t4, t3, bb21
  JAL zero, bb1
bb21:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  JAL zero, bb19
bb22:
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb23
bb23:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t4, 60(sp)
  LW t3, 44(sp)
  BLT t4, t3, bb26
  # implict jump to bb24
bb24:
  LW t3, 52(sp)
  ADDIW t4, t3, 1
  SW t4, 32(sp)
  LW t4, 32(sp)
  LW t3, 44(sp)
  BLT t4, t3, bb25
  JAL zero, bb20
bb25:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  JAL zero, bb23
bb26:
  LUI s7, 352
  ADDIW s7, s7, -1792
  LW t4, 48(sp)
  MULW s7, t4, s7
  LA s8, x
  ADD s7, s8, s7
  LUI s8, 1
  ADDIW s8, s8, -1696
  LW t4, 52(sp)
  MULW s8, t4, s8
  ADD t4, s7, s8
  SD t4, 208(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  # implict jump to bb27
bb27:
  LW t4, 40(sp)
  ADD s9, t4, zero
  SLLIW s10, s9, 2
  LD t4, 208(sp)
  ADD s10, t4, s10
  ADDI s11, zero, 1
  SW s11, 0(s10)
  ADDIW t4, s9, 1
  SW t4, 0(sp)
  LW t4, 0(sp)
  LW t3, 44(sp)
  BLT t4, t3, bb28
  JAL zero, bb24
bb28:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb27
