.global main
.section .bss
y:
.space 864000000
x:
.space 864000000
.section .data


.section .text
main:
  ADDI sp, sp, -240
  SD ra, 80(sp)
  SD s0, 88(sp)
  SD s1, 96(sp)
  SD s2, 104(sp)
  SD s3, 112(sp)
  SD s4, 120(sp)
  SD s6, 144(sp)
  SD s11, 152(sp)
  SD s5, 160(sp)
  SD s7, 168(sp)
  SD s8, 184(sp)
  SD s9, 192(sp)
  SD s10, 200(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 52(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 0(sp)
  ADDI a0, zero, 13
  CALL _sysy_starttime
  ADDI s0, zero, 0
  LW t4, 52(sp)
  BLT s0, t4, bb24
  # implict jump to bb1
bb1:
  ADDI s0, zero, 1
  LW t4, 52(sp)
  SUBW s0, t4, s0
  ADDI s2, zero, 1
  BLT s2, s0, bb4
  # implict jump to bb2
bb2:
  ADDI s2, zero, 1
  ADDI s3, zero, 1
  # implict jump to bb3
bb3:
  ADDI a0, zero, 53
  CALL _sysy_stoptime
  LW t4, 52(sp)
  ADD a0, t4, zero
  LA s4, x
  ADD a1, s4, zero
  CALL putarray
  ADDI s4, zero, 2
  LW t4, 52(sp)
  DIVW s4, t4, s4
  LUI s6, 352
  ADDIW s6, s6, -1792
  MULW s6, s4, s6
  LA s7, x
  ADD s6, s7, s6
  LUI s7, 1
  ADDIW s7, s7, -1696
  MULW s4, s4, s7
  ADD s4, s6, s4
  LW t4, 52(sp)
  ADD a0, t4, zero
  ADD a1, s4, zero
  CALL putarray
  ADDI s4, zero, 1
  SUBW s3, s3, s4
  LUI s4, 352
  ADDIW s4, s4, -1792
  MULW s3, s3, s4
  LA s4, x
  ADD s3, s4, s3
  ADDI s4, zero, 1
  SUBW s2, s2, s4
  LUI s4, 1
  ADDIW s4, s4, -1696
  MULW s2, s2, s4
  ADD s2, s3, s2
  LW t4, 52(sp)
  ADD a0, t4, zero
  ADD a1, s2, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 80(sp)
  LD s0, 88(sp)
  LD s1, 96(sp)
  LD s2, 104(sp)
  LD s3, 112(sp)
  LD s4, 120(sp)
  LD s6, 144(sp)
  LD s11, 152(sp)
  LD s5, 160(sp)
  LD s7, 168(sp)
  LD s8, 184(sp)
  LD s9, 192(sp)
  LD s10, 200(sp)
  ADDI sp, sp, 240
  JALR zero, 0(ra)
bb4:
  ADDI s5, zero, 1
  # implict jump to bb5
bb5:
  # implict jump to bb6
bb6:
  ADD t4, s5, zero
  SW t4, 12(sp)
  ADD t4, s0, zero
  SW t4, 8(sp)
  ADDI s1, zero, 1
  LW t4, 8(sp)
  BLT s1, t4, bb12
  # implict jump to bb7
bb7:
  ADDI s1, zero, 1
  # implict jump to bb8
bb8:
  ADD s10, s1, zero
  LW t4, 12(sp)
  ADDIW s11, t4, 1
  # implict jump to bb9
bb9:
  ADDI s1, zero, 1
  LW t4, 52(sp)
  SUBW s1, t4, s1
  BLT s11, s1, bb11
  # implict jump to bb10
bb10:
  ADD s2, s10, zero
  ADD s3, s11, zero
  JAL zero, bb3
bb11:
  ADD s0, s1, zero
  ADD s5, s11, zero
  JAL zero, bb6
bb12:
  ADDI s7, zero, 1
  # implict jump to bb13
bb13:
  ADDI t4, zero, 1
  SW t4, 16(sp)
  ADD t4, s7, zero
  SW t4, 64(sp)
  # implict jump to bb14
bb14:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t4, 16(sp)
  LW t3, 8(sp)
  BLT t4, t3, bb19
  # implict jump to bb15
bb15:
  LW t3, 4(sp)
  ADDIW t4, t3, 1
  SW t4, 56(sp)
  # implict jump to bb16
bb16:
  LW t4, 56(sp)
  LW t3, 8(sp)
  BLT t4, t3, bb18
  # implict jump to bb17
bb17:
  LW t4, 56(sp)
  ADD s1, t4, zero
  JAL zero, bb8
bb18:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  JAL zero, bb14
bb19:
  ADDI s6, zero, 1
  # implict jump to bb20
bb20:
  LUI s8, 352
  ADDIW s8, s8, -1792
  LW t4, 12(sp)
  MULW s8, t4, s8
  LA s4, x
  ADD s4, s4, s8
  LUI s8, 1
  ADDIW s8, s8, -1696
  LW t4, 4(sp)
  MULW s8, t4, s8
  ADD t4, s4, s8
  SD t4, 128(sp)
  ADDI s9, zero, 1
  LW t4, 12(sp)
  SUBW s9, t4, s9
  LUI s7, 352
  ADDIW s7, s7, -1792
  MULW s7, s9, s7
  LA s9, x
  ADD s7, s9, s7
  ADD t4, s7, s8
  SD t4, 136(sp)
  LW t4, 12(sp)
  ADDIW s7, t4, 1
  LUI s9, 352
  ADDIW s9, s9, -1792
  MULW s7, s7, s9
  LA s9, x
  ADD s7, s9, s7
  ADD t4, s7, s8
  SD t4, 176(sp)
  ADDI s7, zero, 1
  LW t4, 4(sp)
  SUBW s7, t4, s7
  LUI s8, 1
  ADDIW s8, s8, -1696
  MULW s7, s7, s8
  ADD t4, s4, s7
  SD t4, 232(sp)
  LW t4, 4(sp)
  ADDIW s7, t4, 1
  LUI s8, 1
  ADDIW s8, s8, -1696
  MULW s7, s7, s8
  ADD t4, s4, s7
  SD t4, 224(sp)
  ADD t4, s6, zero
  SW t4, 76(sp)
  # implict jump to bb21
bb21:
  LW t4, 76(sp)
  ADD s6, t4, zero
  SLLIW s7, s6, 2
  LD t4, 128(sp)
  ADD s8, t4, s7
  LD t4, 136(sp)
  ADD s9, t4, s7
  LW s9, 0(s9)
  LD t4, 176(sp)
  ADD s4, t4, s7
  LW s4, 0(s4)
  ADDW s4, s9, s4
  LD t4, 232(sp)
  ADD s9, t4, s7
  LW s9, 0(s9)
  ADDW s4, s4, s9
  LD t4, 224(sp)
  ADD s7, t4, s7
  LW s7, 0(s7)
  ADDW s4, s4, s7
  ADDI s7, zero, 1
  SUBW s7, s6, s7
  SLLIW s7, s7, 2
  LD t4, 128(sp)
  ADD s7, t4, s7
  LW s7, 0(s7)
  ADDW s4, s4, s7
  ADDIW t4, s6, 1
  SW t4, 60(sp)
  LW t4, 60(sp)
  SLLIW s6, t4, 2
  LD t4, 128(sp)
  ADD s6, t4, s6
  LW s6, 0(s6)
  ADDW s4, s4, s6
  LW t4, 0(sp)
  DIVW s4, s4, t4
  SW s4, 0(s8)
  # implict jump to bb22
bb22:
  LW t4, 60(sp)
  LW t3, 8(sp)
  BLT t4, t3, bb23
  JAL zero, bb15
bb23:
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  JAL zero, bb21
bb24:
  # implict jump to bb25
bb25:
  ADDI t4, zero, 0
  SW t4, 68(sp)
  ADD t4, zero, zero
  SW t4, 28(sp)
  # implict jump to bb26
bb26:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t4, 68(sp)
  LW t3, 52(sp)
  BLT t4, t3, bb30
  # implict jump to bb27
bb27:
  LW t3, 44(sp)
  ADDIW t4, t3, 1
  SW t4, 24(sp)
  # implict jump to bb28
bb28:
  LW t4, 24(sp)
  LW t3, 52(sp)
  BLT t4, t3, bb29
  JAL zero, bb1
bb29:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  JAL zero, bb26
bb30:
  # implict jump to bb31
bb31:
  ADDI t4, zero, 0
  SW t4, 72(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  # implict jump to bb32
bb32:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t4, 72(sp)
  LW t3, 52(sp)
  BLT t4, t3, bb36
  # implict jump to bb33
bb33:
  LW t3, 36(sp)
  ADDIW t4, t3, 1
  SW t4, 32(sp)
  # implict jump to bb34
bb34:
  LW t4, 32(sp)
  LW t3, 52(sp)
  BLT t4, t3, bb35
  JAL zero, bb27
bb35:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb32
bb36:
  # implict jump to bb37
bb37:
  LUI s2, 352
  ADDIW s2, s2, -1792
  LW t4, 44(sp)
  MULW s2, t4, s2
  LA s0, x
  ADD s0, s0, s2
  LUI s3, 1
  ADDIW s3, s3, -1696
  LW t4, 36(sp)
  MULW s3, t4, s3
  ADD t4, s0, s3
  SD t4, 216(sp)
  LA s0, y
  ADD s0, s0, s2
  ADD t4, s0, s3
  SD t4, 208(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb38
bb38:
  LW t4, 20(sp)
  ADD s2, t4, zero
  SLLIW s3, s2, 2
  LD t4, 216(sp)
  ADD s0, t4, s3
  ADDI s5, zero, 1
  SW s5, 0(s0)
  LD t4, 208(sp)
  ADD s0, t4, s3
  ADDI s3, zero, 0
  SW s3, 0(s0)
  ADDIW t4, s2, 1
  SW t4, 48(sp)
  # implict jump to bb39
bb39:
  LW t4, 48(sp)
  LW t3, 52(sp)
  BLT t4, t3, bb40
  JAL zero, bb33
bb40:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb38
