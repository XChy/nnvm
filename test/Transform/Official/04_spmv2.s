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
  ADDI sp, sp, -208
  SD ra, 96(sp)
  SD s0, 104(sp)
  SD s1, 112(sp)
  SD s2, 120(sp)
  SD s9, 128(sp)
  SD s11, 136(sp)
  SD s3, 144(sp)
  SD s4, 152(sp)
  SD s5, 160(sp)
  SD s6, 168(sp)
  SD s7, 176(sp)
  SD s8, 184(sp)
  SD s10, 192(sp)
  LA ra, x
  ADD a0, ra, zero
  CALL getarray
  ADD s4, a0, zero
  ADDI s6, zero, 1
  SUBW t4, s4, s6
  SW t4, 68(sp)
  LA s6, y
  ADD a0, s6, zero
  CALL getarray
  LA s6, v
  ADD a0, s6, zero
  CALL getarray
  LA s6, a
  ADD a0, s6, zero
  CALL getarray
  ADDI a0, zero, 39
  CALL _sysy_starttime
  ADDI s6, zero, 0
  SLTI s6, s6, 100
  BNE s6, zero, bb2
  # implict jump to bb1
bb1:
  ADDI a0, zero, 47
  CALL _sysy_stoptime
  LW t4, 68(sp)
  ADD a0, t4, zero
  LA s3, b
  ADD a1, s3, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 96(sp)
  LD s0, 104(sp)
  LD s1, 112(sp)
  LD s2, 120(sp)
  LD s9, 128(sp)
  LD s11, 136(sp)
  LD s3, 144(sp)
  LD s4, 152(sp)
  LD s5, 160(sp)
  LD s6, 168(sp)
  LD s7, 176(sp)
  LD s8, 184(sp)
  LD s10, 192(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb2:
  # implict jump to bb3
bb3:
  ADDI t4, zero, 0
  SW t4, 80(sp)
  ADD s6, zero, zero
  # implict jump to bb4
bb4:
  ADD t4, s6, zero
  SW t4, 72(sp)
  LW t4, 80(sp)
  LW t3, 68(sp)
  BLT t4, t3, bb54
  # implict jump to bb5
bb5:
  LW t4, 68(sp)
  BLT zero, t4, bb35
  # implict jump to bb6
bb6:
  LW t4, 68(sp)
  BLT zero, t4, bb30
  # implict jump to bb7
bb7:
  LW t4, 68(sp)
  BLT zero, t4, bb11
  # implict jump to bb8
bb8:
  LW t4, 72(sp)
  ADDIW s5, t4, 1
  # implict jump to bb9
bb9:
  SLTI s3, s5, 100
  BNE s3, zero, bb10
  JAL zero, bb1
bb10:
  ADD s6, s5, zero
  JAL zero, bb4
bb11:
  # implict jump to bb12
bb12:
  ADD s4, zero, zero
  # implict jump to bb13
bb13:
  ADD t4, s4, zero
  SW t4, 84(sp)
  LW t3, 84(sp)
  SLLIW t4, t3, 2
  SW t4, 4(sp)
  LA s10, x
  LW t4, 4(sp)
  ADD s10, s10, t4
  LW t4, 0(s10)
  SW t4, 8(sp)
  LW t4, 84(sp)
  ADDIW s7, t4, 1
  SLLIW s2, s7, 2
  LA s3, x
  ADD s2, s3, s2
  LW s2, 0(s2)
  LW t4, 8(sp)
  BLT t4, s2, bb24
  # implict jump to bb14
bb14:
  ADD s3, s7, zero
  # implict jump to bb15
bb15:
  ADD s11, s3, zero
  LW t4, 8(sp)
  BLT t4, s2, bb19
  # implict jump to bb16
bb16:
  # implict jump to bb17
bb17:
  LW t4, 68(sp)
  BLT s11, t4, bb18
  JAL zero, bb8
bb18:
  ADD s4, s11, zero
  JAL zero, bb13
bb19:
  # implict jump to bb20
bb20:
  LA s1, b
  LW t4, 4(sp)
  ADD s1, s1, t4
  LW s1, 0(s1)
  ADDI s3, zero, 1
  SUBW t4, s1, s3
  SW t4, 92(sp)
  LW t4, 8(sp)
  ADD s1, t4, zero
  # implict jump to bb21
bb21:
  ADD s3, s1, zero
  SLLIW s7, s3, 2
  LA s8, y
  ADD s8, s8, s7
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  LA s9, a
  ADD s8, s9, s8
  LW s9, 0(s8)
  LA s10, v
  ADD s7, s10, s7
  LW s7, 0(s7)
  LW t4, 92(sp)
  MULW s7, s7, t4
  ADDW s7, s9, s7
  SW s7, 0(s8)
  ADDIW s0, s3, 1
  # implict jump to bb22
bb22:
  BLT s0, s2, bb23
  JAL zero, bb16
bb23:
  ADD s1, s0, zero
  JAL zero, bb21
bb24:
  # implict jump to bb25
bb25:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  # implict jump to bb26
bb26:
  LW t4, 88(sp)
  ADD s10, t4, zero
  SLLIW s9, s10, 2
  LA s8, y
  ADD s8, s8, s9
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  LA s7, a
  ADD s7, s7, s8
  LW s8, 0(s7)
  LA s1, v
  ADD s1, s1, s9
  LW s1, 0(s1)
  ADDW s1, s8, s1
  SW s1, 0(s7)
  ADDIW t4, s10, 1
  SW t4, 24(sp)
  # implict jump to bb27
bb27:
  LW t4, 84(sp)
  ADDIW s1, t4, 1
  SLLIW s7, s1, 2
  LA s8, x
  ADD s7, s8, s7
  LW s7, 0(s7)
  LW t4, 24(sp)
  BLT t4, s7, bb29
  # implict jump to bb28
bb28:
  ADD s2, s7, zero
  ADD s3, s1, zero
  JAL zero, bb15
bb29:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  JAL zero, bb26
bb30:
  # implict jump to bb31
bb31:
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb32
bb32:
  LW t4, 12(sp)
  ADD s4, t4, zero
  SLLIW s8, s4, 2
  LA s9, a
  ADD s8, s9, s8
  SW zero, 0(s8)
  ADDIW t4, s4, 1
  SW t4, 28(sp)
  # implict jump to bb33
bb33:
  LW t4, 28(sp)
  LW t3, 68(sp)
  BLT t4, t3, bb34
  JAL zero, bb7
bb34:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  JAL zero, bb32
bb35:
  # implict jump to bb36
bb36:
  ADD t4, zero, zero
  SW t4, 32(sp)
  # implict jump to bb37
bb37:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 48(sp)
  SLLIW t4, t3, 2
  SW t4, 56(sp)
  LA s10, x
  LW t4, 56(sp)
  ADD s10, s10, t4
  LW t4, 0(s10)
  SW t4, 52(sp)
  LW t4, 48(sp)
  ADDIW s10, t4, 1
  SLLIW s7, s10, 2
  LA s8, x
  ADD s7, s8, s7
  LW s7, 0(s7)
  LW t4, 52(sp)
  BLT t4, s7, bb48
  # implict jump to bb38
bb38:
  ADD s8, s10, zero
  # implict jump to bb39
bb39:
  ADD t4, s8, zero
  SW t4, 44(sp)
  ADD t4, s7, zero
  SW t4, 20(sp)
  LW t4, 52(sp)
  LW t3, 20(sp)
  BLT t4, t3, bb43
  # implict jump to bb40
bb40:
  # implict jump to bb41
bb41:
  LW t4, 44(sp)
  LW t3, 68(sp)
  BLT t4, t3, bb42
  JAL zero, bb6
bb42:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  JAL zero, bb37
bb43:
  # implict jump to bb44
bb44:
  LA s2, a
  LW t4, 56(sp)
  ADD s2, s2, t4
  LW s2, 0(s2)
  ADDI s3, zero, 1
  SUBW t4, s2, s3
  SW t4, 0(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  # implict jump to bb45
bb45:
  LW t4, 16(sp)
  ADD s3, t4, zero
  SLLIW s4, s3, 2
  LA s8, y
  ADD s8, s8, s4
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  LA s9, b
  ADD s8, s9, s8
  LW s9, 0(s8)
  LA s10, v
  ADD s4, s10, s4
  LW s4, 0(s4)
  LW t4, 0(sp)
  MULW s4, s4, t4
  ADDW s4, s9, s4
  SW s4, 0(s8)
  ADDIW t4, s3, 1
  SW t4, 36(sp)
  # implict jump to bb46
bb46:
  LW t4, 36(sp)
  LW t3, 20(sp)
  BLT t4, t3, bb47
  JAL zero, bb40
bb47:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb45
bb48:
  # implict jump to bb49
bb49:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  # implict jump to bb50
bb50:
  LW t4, 40(sp)
  ADD s10, t4, zero
  SLLIW s9, s10, 2
  LA s4, y
  ADD s4, s4, s9
  LW s4, 0(s4)
  SLLIW s4, s4, 2
  LA s3, b
  ADD s3, s3, s4
  LW s4, 0(s3)
  LA s2, v
  ADD s2, s2, s9
  LW s2, 0(s2)
  ADDW s2, s4, s2
  SW s2, 0(s3)
  ADDIW t4, s10, 1
  SW t4, 60(sp)
  # implict jump to bb51
bb51:
  LW t4, 48(sp)
  ADDIW s2, t4, 1
  SLLIW s3, s2, 2
  LA s4, x
  ADD s3, s4, s3
  LW s3, 0(s3)
  LW t4, 60(sp)
  BLT t4, s3, bb53
  # implict jump to bb52
bb52:
  ADD s7, s3, zero
  ADD s8, s2, zero
  JAL zero, bb39
bb53:
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb50
bb54:
  # implict jump to bb55
bb55:
  ADD t4, zero, zero
  SW t4, 64(sp)
  # implict jump to bb56
bb56:
  LW t4, 64(sp)
  ADD s4, t4, zero
  SLLIW s7, s4, 2
  LA s10, b
  ADD s7, s10, s7
  SW zero, 0(s7)
  ADDIW t4, s4, 1
  SW t4, 76(sp)
  # implict jump to bb57
bb57:
  LW t4, 76(sp)
  LW t3, 68(sp)
  BLT t4, t3, bb58
  JAL zero, bb5
bb58:
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  JAL zero, bb56
spmv:
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
  ADD t4, a5, zero
  SD t4, 0(sp)
  BLT zero, a0, bb81
  # implict jump to bb60
bb60:
  BLT zero, a0, bb62
  # implict jump to bb61
bb61:
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
bb62:
  # implict jump to bb63
bb63:
  ADD s6, zero, zero
  # implict jump to bb64
bb64:
  ADD s7, s6, zero
  SLLIW s8, s7, 2
  ADD s9, a1, s8
  LW s10, 0(s9)
  ADDIW s11, s7, 1
  SLLIW t0, s11, 2
  ADD t0, a1, t0
  LW t1, 0(t0)
  BLT s10, t1, bb75
  # implict jump to bb65
bb65:
  # implict jump to bb66
bb66:
  ADD s3, s11, zero
  LW s11, 0(s9)
  LW t1, 0(t0)
  BLT s11, t1, bb70
  # implict jump to bb67
bb67:
  # implict jump to bb68
bb68:
  BLT s3, a0, bb69
  JAL zero, bb61
bb69:
  ADD s6, s3, zero
  JAL zero, bb64
bb70:
  # implict jump to bb71
bb71:
  ADD s1, a4, s8
  # implict jump to bb72
bb72:
  ADD t1, s11, zero
  SLLIW t2, t1, 2
  ADD a6, a2, t2
  LW a6, 0(a6)
  SLLIW a6, a6, 2
  LD t4, 0(sp)
  ADD a6, t4, a6
  LW a7, 0(a6)
  ADD t2, a3, t2
  LW t2, 0(t2)
  LW t6, 0(s1)
  ADDI a5, zero, 1
  SUBW a5, t6, a5
  MULW t2, t2, a5
  ADDW t2, a7, t2
  SW t2, 0(a6)
  ADDIW s0, t1, 1
  # implict jump to bb73
bb73:
  LW t1, 0(t0)
  BLT s0, t1, bb74
  JAL zero, bb67
bb74:
  ADD s11, s0, zero
  JAL zero, bb72
bb75:
  # implict jump to bb76
bb76:
  # implict jump to bb77
bb77:
  ADD t1, s10, zero
  SLLIW t2, t1, 2
  ADD a6, a2, t2
  LW a6, 0(a6)
  SLLIW a6, a6, 2
  LD t4, 0(sp)
  ADD a6, t4, a6
  LW a7, 0(a6)
  ADD t2, a3, t2
  LW t2, 0(t2)
  ADDW t2, a7, t2
  SW t2, 0(a6)
  ADDIW s2, t1, 1
  # implict jump to bb78
bb78:
  ADDIW t1, s7, 1
  SLLIW t2, t1, 2
  ADD t2, a1, t2
  LW a6, 0(t2)
  BLT s2, a6, bb80
  # implict jump to bb79
bb79:
  ADD t0, t2, zero
  ADD s11, t1, zero
  JAL zero, bb66
bb80:
  ADD s10, s2, zero
  JAL zero, bb77
bb81:
  # implict jump to bb82
bb82:
  ADD s5, zero, zero
  # implict jump to bb83
bb83:
  ADD s6, s5, zero
  SLLIW s7, s6, 2
  LD t4, 0(sp)
  ADD s7, t4, s7
  SW zero, 0(s7)
  ADDIW s4, s6, 1
  # implict jump to bb84
bb84:
  BLT s4, a0, bb85
  JAL zero, bb60
bb85:
  ADD s5, s4, zero
  JAL zero, bb83
