.global main
.global spmv
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

c:
.space 400040

.section .data





M:
.word 0x002dc6c0

N:
.word 0x000186aa
.section .text
main:
  ADDI sp, sp, -192
  SD ra, 88(sp)
  SD s0, 96(sp)
  SD s1, 104(sp)
  SD s2, 112(sp)
  SD s3, 120(sp)
  SD s5, 128(sp)
  SD s4, 136(sp)
  SD s7, 144(sp)
  SD s8, 152(sp)
  SD s9, 160(sp)
  SD s10, 168(sp)
  SD s11, 176(sp)
  SD s6, 184(sp)
  LA s9, x
  ADD a0, s9, zero
  CALL getarray
  ADD s9, a0, zero
  ADDI s10, zero, 1
  SUBW t4, s9, s10
  SW t4, 72(sp)
  LA s10, y
  ADD a0, s10, zero
  CALL getarray
  LA s10, v
  ADD a0, s10, zero
  CALL getarray
  LA s10, a
  ADD a0, s10, zero
  CALL getarray
  ADDI a0, zero, 39
  CALL _sysy_starttime
  ADDI s10, zero, 0
  SLTI s10, s10, 100
  BNE s10, zero, bb2
  # implict jump to bb1
bb1:
  ADDI a0, zero, 47
  CALL _sysy_stoptime
  LW t4, 72(sp)
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
  LD s5, 128(sp)
  LD s4, 136(sp)
  LD s7, 144(sp)
  LD s8, 152(sp)
  LD s9, 160(sp)
  LD s10, 168(sp)
  LD s11, 176(sp)
  LD s6, 184(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb2:
  ADD s10, zero, zero
  # implict jump to bb3
bb3:
  ADD t4, s10, zero
  SW t4, 76(sp)
  ADDI s11, zero, 0
  LW t4, 72(sp)
  BLT s11, t4, bb46
  # implict jump to bb4
bb4:
  LW t4, 72(sp)
  BLT zero, t4, bb30
  # implict jump to bb5
bb5:
  LW t4, 72(sp)
  BLT zero, t4, bb26
  # implict jump to bb6
bb6:
  LW t4, 72(sp)
  BLT zero, t4, bb10
  # implict jump to bb7
bb7:
  LW t4, 76(sp)
  ADDIW s2, t4, 1
  # implict jump to bb8
bb8:
  SLTI s4, s2, 100
  BNE s4, zero, bb9
  JAL zero, bb1
bb9:
  ADD s10, s2, zero
  JAL zero, bb3
bb10:
  ADD s6, zero, zero
  # implict jump to bb11
bb11:
  ADD t4, s6, zero
  SW t4, 8(sp)
  LW t3, 8(sp)
  SLLIW t4, t3, 2
  SW t4, 12(sp)
  LA s9, x
  LW t4, 12(sp)
  ADD s9, s9, t4
  LW t4, 0(s9)
  SW t4, 16(sp)
  LW t4, 8(sp)
  ADDIW s11, t4, 1
  SLLIW s3, s11, 2
  LA s4, x
  ADD s3, s4, s3
  LW s3, 0(s3)
  LW t4, 16(sp)
  BLT t4, s3, bb21
  # implict jump to bb12
bb12:
  ADD s4, s11, zero
  # implict jump to bb13
bb13:
  ADD t4, s4, zero
  SW t4, 84(sp)
  LW t4, 16(sp)
  BLT t4, s3, bb17
  # implict jump to bb14
bb14:
  # implict jump to bb15
bb15:
  LW t4, 84(sp)
  LW t3, 72(sp)
  BLT t4, t3, bb16
  JAL zero, bb7
bb16:
  LW t4, 84(sp)
  ADD s6, t4, zero
  JAL zero, bb11
bb17:
  LW t4, 16(sp)
  ADD s1, t4, zero
  # implict jump to bb18
bb18:
  ADD s4, s1, zero
  SLLIW s7, s4, 2
  LA s8, y
  ADD s8, s8, s7
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  LA s9, a
  ADD s8, s9, s8
  LW s9, 0(s8)
  LA s11, v
  ADD s7, s11, s7
  LW s7, 0(s7)
  LA s11, b
  LW t4, 12(sp)
  ADD s11, s11, t4
  LW s11, 0(s11)
  ADDI s5, zero, 1
  SUBW s5, s11, s5
  MULW s5, s7, s5
  ADDW s5, s9, s5
  SW s5, 0(s8)
  ADDIW s0, s4, 1
  # implict jump to bb19
bb19:
  BLT s0, s3, bb20
  JAL zero, bb14
bb20:
  ADD s1, s0, zero
  JAL zero, bb18
bb21:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  # implict jump to bb22
bb22:
  LW t4, 4(sp)
  ADD s9, t4, zero
  SLLIW s8, s9, 2
  LA s7, y
  ADD s7, s7, s8
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s11, a
  ADD s7, s11, s7
  LW s11, 0(s7)
  LA s1, v
  ADD s1, s1, s8
  LW s1, 0(s1)
  ADDW s1, s11, s1
  SW s1, 0(s7)
  ADDIW t4, s9, 1
  SW t4, 80(sp)
  # implict jump to bb23
bb23:
  LW t4, 8(sp)
  ADDIW s1, t4, 1
  SLLIW s7, s1, 2
  LA s8, x
  ADD s7, s8, s7
  LW s7, 0(s7)
  LW t4, 80(sp)
  BLT t4, s7, bb25
  # implict jump to bb24
bb24:
  ADD s3, s7, zero
  ADD s4, s1, zero
  JAL zero, bb13
bb25:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb22
bb26:
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb27
bb27:
  LW t4, 20(sp)
  ADD s6, t4, zero
  SLLIW s7, s6, 2
  LA s8, a
  ADD s7, s8, s7
  SW zero, 0(s7)
  ADDIW t4, s6, 1
  SW t4, 32(sp)
  # implict jump to bb28
bb28:
  LW t4, 32(sp)
  LW t3, 72(sp)
  BLT t4, t3, bb29
  JAL zero, bb6
bb29:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb27
bb30:
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb31
bb31:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t3, 0(sp)
  SLLIW t4, t3, 2
  SW t4, 60(sp)
  LA s11, x
  LW t4, 60(sp)
  ADD s11, s11, t4
  LW t4, 0(s11)
  SW t4, 56(sp)
  LW t4, 0(sp)
  ADDIW s11, t4, 1
  SLLIW s9, s11, 2
  LA s4, x
  ADD s4, s4, s9
  LW s4, 0(s4)
  LW t4, 56(sp)
  BLT t4, s4, bb41
  # implict jump to bb32
bb32:
  ADD s9, s11, zero
  # implict jump to bb33
bb33:
  ADD t4, s9, zero
  SW t4, 44(sp)
  ADD t4, s4, zero
  SW t4, 28(sp)
  LW t4, 56(sp)
  LW t3, 28(sp)
  BLT t4, t3, bb37
  # implict jump to bb34
bb34:
  # implict jump to bb35
bb35:
  LW t4, 44(sp)
  LW t3, 72(sp)
  BLT t4, t3, bb36
  JAL zero, bb5
bb36:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  JAL zero, bb31
bb37:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  # implict jump to bb38
bb38:
  LW t4, 24(sp)
  ADD s6, t4, zero
  SLLIW s7, s6, 2
  LA s8, y
  ADD s8, s8, s7
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  LA s9, b
  ADD s8, s9, s8
  LW s9, 0(s8)
  LA s11, v
  ADD s7, s11, s7
  LW s7, 0(s7)
  LA s11, a
  LW t4, 60(sp)
  ADD s11, s11, t4
  LW s11, 0(s11)
  ADDI s4, zero, 1
  SUBW s4, s11, s4
  MULW s4, s7, s4
  ADDW s4, s9, s4
  SW s4, 0(s8)
  ADDIW t4, s6, 1
  SW t4, 40(sp)
  # implict jump to bb39
bb39:
  LW t4, 40(sp)
  LW t3, 28(sp)
  BLT t4, t3, bb40
  JAL zero, bb34
bb40:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  JAL zero, bb38
bb41:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  # implict jump to bb42
bb42:
  LW t4, 48(sp)
  ADD s11, t4, zero
  SLLIW s7, s11, 2
  LA s3, y
  ADD s3, s3, s7
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  LA s6, b
  ADD s3, s6, s3
  LW s6, 0(s3)
  LA s8, v
  ADD s7, s8, s7
  LW s7, 0(s7)
  ADDW s6, s6, s7
  SW s6, 0(s3)
  ADDIW t4, s11, 1
  SW t4, 52(sp)
  # implict jump to bb43
bb43:
  LW t4, 0(sp)
  ADDIW s3, t4, 1
  SLLIW s6, s3, 2
  LA s7, x
  ADD s6, s7, s6
  LW s6, 0(s6)
  LW t4, 52(sp)
  BLT t4, s6, bb45
  # implict jump to bb44
bb44:
  ADD s4, s6, zero
  ADD s9, s3, zero
  JAL zero, bb33
bb45:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb42
bb46:
  ADD t4, zero, zero
  SW t4, 68(sp)
  # implict jump to bb47
bb47:
  LW t4, 68(sp)
  ADD s9, t4, zero
  SLLIW s11, s9, 2
  LA s6, b
  ADD s6, s6, s11
  SW zero, 0(s6)
  ADDIW t4, s9, 1
  SW t4, 64(sp)
  # implict jump to bb48
bb48:
  LW t4, 64(sp)
  LW t3, 72(sp)
  BLT t4, t3, bb49
  JAL zero, bb4
bb49:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  JAL zero, bb47
spmv:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  BLT zero, a0, bb69
  # implict jump to bb51
bb51:
  BLT zero, a0, bb53
  # implict jump to bb52
bb52:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb53:
  ADD s5, zero, zero
  # implict jump to bb54
bb54:
  ADD s6, s5, zero
  SLLIW s7, s6, 2
  ADD s8, a1, s7
  LW s9, 0(s8)
  ADDIW s10, s6, 1
  SLLIW s11, s10, 2
  ADD s11, a1, s11
  LW t0, 0(s11)
  BLT s9, t0, bb64
  # implict jump to bb55
bb55:
  # implict jump to bb56
bb56:
  ADD s0, s10, zero
  LW s10, 0(s8)
  LW t0, 0(s11)
  BLT s10, t0, bb60
  # implict jump to bb57
bb57:
  # implict jump to bb58
bb58:
  BLT s0, a0, bb59
  JAL zero, bb52
bb59:
  ADD s5, s0, zero
  JAL zero, bb54
bb60:
  # implict jump to bb61
bb61:
  ADD t0, s10, zero
  SLLIW t1, t0, 2
  ADD t2, a2, t1
  LW t2, 0(t2)
  SLLIW t2, t2, 2
  ADD t2, a5, t2
  LW a6, 0(t2)
  ADD t1, a3, t1
  LW t1, 0(t1)
  ADD a7, a4, s7
  LW a7, 0(a7)
  ADDI t6, zero, 1
  SUBW a7, a7, t6
  MULW t1, t1, a7
  ADDW t1, a6, t1
  SW t1, 0(t2)
  ADDIW s3, t0, 1
  # implict jump to bb62
bb62:
  LW t0, 0(s11)
  BLT s3, t0, bb63
  JAL zero, bb57
bb63:
  ADD s10, s3, zero
  JAL zero, bb61
bb64:
  # implict jump to bb65
bb65:
  ADD t0, s9, zero
  SLLIW t1, t0, 2
  ADD t2, a2, t1
  LW t2, 0(t2)
  SLLIW t2, t2, 2
  ADD t2, a5, t2
  LW a6, 0(t2)
  ADD t1, a3, t1
  LW t1, 0(t1)
  ADDW t1, a6, t1
  SW t1, 0(t2)
  ADDIW s2, t0, 1
  # implict jump to bb66
bb66:
  ADDIW t0, s6, 1
  SLLIW t1, t0, 2
  ADD t1, a1, t1
  LW t2, 0(t1)
  BLT s2, t2, bb68
  # implict jump to bb67
bb67:
  ADD s11, t1, zero
  ADD s10, t0, zero
  JAL zero, bb56
bb68:
  ADD s9, s2, zero
  JAL zero, bb65
bb69:
  ADD s4, zero, zero
  # implict jump to bb70
bb70:
  ADD s5, s4, zero
  SLLIW s6, s5, 2
  ADD s6, a5, s6
  SW zero, 0(s6)
  ADDIW s1, s5, 1
  # implict jump to bb71
bb71:
  BLT s1, a0, bb72
  JAL zero, bb51
bb72:
  ADD s4, s1, zero
  JAL zero, bb70
