.global main
.section .bss
b:
.space 400040
a:
.space 400040
y:
.space 12000000
x:
.space 400040
v:
.space 12000000
.section .data





.section .text
main:
  ADDI sp, sp, -208
  SD ra, 88(sp)
  SD s0, 96(sp)
  SD s1, 104(sp)
  SD s2, 112(sp)
  SD s3, 120(sp)
  SD s4, 128(sp)
  SD s5, 136(sp)
  SD s6, 144(sp)
  SD s7, 152(sp)
  SD s8, 160(sp)
  SD s9, 168(sp)
  SD s10, 176(sp)
  SD s11, 184(sp)
  LA s0, x
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  ADDI s1, zero, 1
  SUBW t4, s0, s1
  SW t4, 76(sp)
  LA s1, y
  ADD a0, s1, zero
  CALL getarray
  LA s1, v
  ADD a0, s1, zero
  CALL getarray
  LA s1, a
  ADD a0, s1, zero
  CALL getarray
  ADDI a0, zero, 39
  CALL _sysy_starttime
  ADDI t4, zero, 0
  SW t4, 84(sp)
  ADD s2, zero, zero
  # implict jump to bb1
bb1:
  ADD t4, s2, zero
  SW t4, 80(sp)
  LW t4, 84(sp)
  LW t3, 76(sp)
  BLT t4, t3, bb37
  # implict jump to bb2
bb2:
  LW t4, 84(sp)
  LW t3, 76(sp)
  BLT t4, t3, bb24
  # implict jump to bb3
bb3:
  LW t4, 84(sp)
  LW t3, 76(sp)
  BLT t4, t3, bb21
  # implict jump to bb4
bb4:
  LW t4, 84(sp)
  LW t3, 76(sp)
  BLT t4, t3, bb8
  # implict jump to bb5
bb5:
  LW t4, 80(sp)
  ADDIW s3, t4, 1
  SLTI s4, s3, 100
  BNE s4, zero, bb7
  # implict jump to bb6
bb6:
  ADDI a0, zero, 47
  CALL _sysy_stoptime
  LW t4, 76(sp)
  ADD a0, t4, zero
  LA s4, b
  ADD a1, s4, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 88(sp)
  LD s0, 96(sp)
  LD s1, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD s5, 136(sp)
  LD s6, 144(sp)
  LD s7, 152(sp)
  LD s8, 160(sp)
  LD s9, 168(sp)
  LD s10, 176(sp)
  LD s11, 184(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb7:
  ADD s2, s3, zero
  JAL zero, bb1
bb8:
  ADD s9, zero, zero
  # implict jump to bb9
bb9:
  ADD s10, s9, zero
  SLLIW t4, s10, 2
  SW t4, 8(sp)
  LA s4, x
  LW t4, 8(sp)
  ADD s4, s4, t4
  LW t4, 0(s4)
  SW t4, 12(sp)
  ADDIW t4, s10, 1
  SW t4, 16(sp)
  LW t4, 16(sp)
  SLLIW s1, t4, 2
  LA s11, x
  ADD t4, s11, s1
  SD t4, 192(sp)
  LD t4, 192(sp)
  LW s11, 0(t4)
  LW t4, 12(sp)
  BLT t4, s11, bb17
  # implict jump to bb10
bb10:
  LW t4, 16(sp)
  ADD s5, t4, zero
  # implict jump to bb11
bb11:
  LW t4, 12(sp)
  BLT t4, s11, bb14
  # implict jump to bb12
bb12:
  LW t4, 76(sp)
  BLT s5, t4, bb13
  JAL zero, bb5
bb13:
  ADD s9, s5, zero
  JAL zero, bb9
bb14:
  LA s6, b
  LW t4, 8(sp)
  ADD s6, s6, t4
  LW s6, 0(s6)
  ADDI s7, zero, 1
  SUBW s6, s6, s7
  LW t4, 12(sp)
  ADD s7, t4, zero
  # implict jump to bb15
bb15:
  ADD s8, s7, zero
  SLLIW s10, s8, 2
  LA s4, y
  ADD s4, s4, s10
  LW s4, 0(s4)
  SLLIW s4, s4, 2
  LA s0, a
  ADD s0, s0, s4
  LW s4, 0(s0)
  LA s3, v
  ADD s3, s3, s10
  LW s3, 0(s3)
  MULW s3, s3, s6
  ADDW s3, s4, s3
  SW s3, 0(s0)
  ADDIW s0, s8, 1
  BLT s0, s11, bb16
  JAL zero, bb12
bb16:
  ADD s7, s0, zero
  JAL zero, bb15
bb17:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  # implict jump to bb18
bb18:
  LW t4, 4(sp)
  ADD s6, t4, zero
  SLLIW s7, s6, 2
  LA s8, y
  ADD s8, s8, s7
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  LA s1, a
  ADD s1, s1, s8
  LW s8, 0(s1)
  LA s10, v
  ADD s7, s10, s7
  LW s7, 0(s7)
  ADDW s7, s8, s7
  SW s7, 0(s1)
  ADDIW s1, s6, 1
  LD t4, 192(sp)
  LW s6, 0(t4)
  BLT s1, s6, bb20
  # implict jump to bb19
bb19:
  ADD s11, s6, zero
  LW t4, 16(sp)
  ADD s5, t4, zero
  JAL zero, bb11
bb20:
  ADD t4, s1, zero
  SW t4, 4(sp)
  JAL zero, bb18
bb21:
  ADD t4, zero, zero
  SW t4, 24(sp)
  # implict jump to bb22
bb22:
  LW t4, 24(sp)
  ADD s8, t4, zero
  SLLIW s9, s8, 2
  LA s10, a
  ADD s9, s10, s9
  SW zero, 0(s9)
  ADDIW t4, s8, 1
  SW t4, 20(sp)
  LW t4, 20(sp)
  LW t3, 76(sp)
  BLT t4, t3, bb23
  JAL zero, bb4
bb23:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  JAL zero, bb22
bb24:
  ADD t4, zero, zero
  SW t4, 28(sp)
  # implict jump to bb25
bb25:
  LW t4, 28(sp)
  ADD s7, t4, zero
  SLLIW t4, s7, 2
  SW t4, 0(sp)
  LA s9, x
  LW t4, 0(sp)
  ADD s9, s9, t4
  LW t4, 0(s9)
  SW t4, 60(sp)
  ADDIW t4, s7, 1
  SW t4, 64(sp)
  LW t4, 64(sp)
  SLLIW s10, t4, 2
  LA s11, x
  ADD t4, s11, s10
  SD t4, 200(sp)
  LD t4, 200(sp)
  LW s11, 0(t4)
  LW t4, 60(sp)
  BLT t4, s11, bb33
  # implict jump to bb26
bb26:
  LW t4, 64(sp)
  ADD s1, t4, zero
  # implict jump to bb27
bb27:
  ADD t4, s1, zero
  SW t4, 44(sp)
  ADD t4, s11, zero
  SW t4, 40(sp)
  LW t4, 60(sp)
  LW t3, 40(sp)
  BLT t4, t3, bb30
  # implict jump to bb28
bb28:
  LW t4, 44(sp)
  LW t3, 76(sp)
  BLT t4, t3, bb29
  JAL zero, bb3
bb29:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  JAL zero, bb25
bb30:
  LA s4, a
  LW t4, 0(sp)
  ADD s4, s4, t4
  LW s4, 0(s4)
  ADDI s5, zero, 1
  SUBW t4, s4, s5
  SW t4, 48(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  # implict jump to bb31
bb31:
  LW t4, 36(sp)
  ADD s7, t4, zero
  SLLIW s10, s7, 2
  LA s9, y
  ADD s9, s9, s10
  LW s9, 0(s9)
  SLLIW s9, s9, 2
  LA s8, b
  ADD s8, s8, s9
  LW s9, 0(s8)
  LA s3, v
  ADD s3, s3, s10
  LW s3, 0(s3)
  LW t4, 48(sp)
  MULW s3, s3, t4
  ADDW s3, s9, s3
  SW s3, 0(s8)
  ADDIW t4, s7, 1
  SW t4, 32(sp)
  LW t4, 32(sp)
  LW t3, 40(sp)
  BLT t4, t3, bb32
  JAL zero, bb28
bb32:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  JAL zero, bb31
bb33:
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  # implict jump to bb34
bb34:
  LW t4, 56(sp)
  ADD s0, t4, zero
  SLLIW s4, s0, 2
  LA s5, y
  ADD s5, s5, s4
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s10, b
  ADD s5, s10, s5
  LW s10, 0(s5)
  LA s7, v
  ADD s4, s7, s4
  LW s4, 0(s4)
  ADDW s4, s10, s4
  SW s4, 0(s5)
  ADDIW t4, s0, 1
  SW t4, 52(sp)
  LD t4, 200(sp)
  LW s4, 0(t4)
  LW t4, 52(sp)
  BLT t4, s4, bb36
  # implict jump to bb35
bb35:
  ADD s11, s4, zero
  LW t4, 64(sp)
  ADD s1, t4, zero
  JAL zero, bb27
bb36:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  JAL zero, bb34
bb37:
  ADD t4, zero, zero
  SW t4, 72(sp)
  # implict jump to bb38
bb38:
  LW t4, 72(sp)
  ADD s5, t4, zero
  SLLIW s6, s5, 2
  LA s7, b
  ADD s6, s7, s6
  SW zero, 0(s6)
  ADDIW t4, s5, 1
  SW t4, 68(sp)
  LW t4, 68(sp)
  LW t3, 76(sp)
  BLT t4, t3, bb39
  JAL zero, bb2
bb39:
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  JAL zero, bb38
