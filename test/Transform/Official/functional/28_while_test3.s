.global main
.global EightWhile
.section .bss




.section .data
e:
.word 0x00000000
f:
.word 0x00000000
h:
.word 0x00000000
g:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -144
  SD s0, 40(sp)
  SD ra, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  SD s7, 104(sp)
  SD s8, 112(sp)
  SD s9, 120(sp)
  SD s10, 128(sp)
  SD s11, 136(sp)
  LA s10, g
  ADDI s11, zero, 1
  SW s11, 0(s10)
  LA s10, h
  ADDI s11, zero, 2
  SW s11, 0(s10)
  LA s10, e
  ADDI s11, zero, 4
  SW s11, 0(s10)
  LA s10, f
  ADDI s11, zero, 6
  SW s11, 0(s10)
  ADDI s10, zero, 5
  SLTI s10, s10, 20
  BNE s10, zero, bb3
  # implict jump to bb1
bb1:
  ADDI s10, zero, 5
  ADDI s11, zero, 6
  ADDI t0, zero, 7
  ADDI t1, zero, 10
  # implict jump to bb2
bb2:
  ADDW s0, s11, t1
  ADDW s0, s10, s0
  ADDW s0, s0, t0
  LA s1, e
  LW s1, 0(s1)
  ADDW s1, s1, t1
  LA s3, g
  LW s3, 0(s3)
  SUBW s1, s1, s3
  LA s3, h
  LW s3, 0(s3)
  ADDW s1, s1, s3
  SUBW s0, s0, s1
  ADD a0, s0, zero
  LD s0, 40(sp)
  LD ra, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  LD s9, 120(sp)
  LD s10, 128(sp)
  LD s11, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb3:
  ADDI t2, zero, 5
  ADDI t4, zero, 6
  SW t4, 32(sp)
  ADDI a1, zero, 7
  ADDI a2, zero, 10
  # implict jump to bb4
bb4:
  ADD a3, a2, zero
  ADD a4, a1, zero
  LW t4, 32(sp)
  ADD a5, t4, zero
  ADD a6, t2, zero
  ADDIW t4, a6, 3
  SW t4, 8(sp)
  SLTI a6, a5, 10
  BNE a6, zero, bb10
  # implict jump to bb5
bb5:
  ADD a6, a5, zero
  ADD a7, a4, zero
  ADD t6, a3, zero
  # implict jump to bb6
bb6:
  ADD s5, t6, zero
  ADD s7, a7, zero
  ADDI s0, zero, 2
  SUBW s4, a6, s0
  # implict jump to bb7
bb7:
  LW t4, 8(sp)
  SLTI s0, t4, 20
  BNE s0, zero, bb9
  # implict jump to bb8
bb8:
  LW t4, 8(sp)
  ADD s10, t4, zero
  ADD s11, s4, zero
  ADD t0, s7, zero
  ADD t1, s5, zero
  JAL zero, bb2
bb9:
  LW t4, 8(sp)
  ADD t2, t4, zero
  ADD t4, s4, zero
  SW t4, 32(sp)
  ADD a1, s7, zero
  ADD a2, s5, zero
  JAL zero, bb4
bb10:
  # implict jump to bb11
bb11:
  ADD s1, a3, zero
  ADD s0, a4, zero
  ADD s3, a5, zero
  ADDIW t4, s3, 1
  SW t4, 4(sp)
  XORI s3, s0, 7
  SLTIU s3, s3, 1
  BNE s3, zero, bb17
  # implict jump to bb12
bb12:
  ADD s3, s0, zero
  ADD s9, s1, zero
  # implict jump to bb13
bb13:
  ADD s2, s9, zero
  ADDIW s6, s3, 1
  # implict jump to bb14
bb14:
  LW t4, 4(sp)
  SLTI s0, t4, 10
  BNE s0, zero, bb16
  # implict jump to bb15
bb15:
  LW t4, 4(sp)
  ADD a6, t4, zero
  ADD a7, s6, zero
  ADD t6, s2, zero
  JAL zero, bb6
bb16:
  LW t4, 4(sp)
  ADD a5, t4, zero
  ADD a4, s6, zero
  ADD a3, s2, zero
  JAL zero, bb11
bb17:
  ADD t4, s0, zero
  SW t4, 24(sp)
  ADD t4, s1, zero
  SW t4, 16(sp)
  # implict jump to bb18
bb18:
  LW t4, 16(sp)
  ADD s1, t4, zero
  LW t4, 24(sp)
  ADD s8, t4, zero
  ADDI s0, zero, 1
  SUBW t4, s8, s0
  SW t4, 0(sp)
  SLTI s0, s1, 20
  BNE s0, zero, bb24
  # implict jump to bb19
bb19:
  ADD s0, s1, zero
  # implict jump to bb20
bb20:
  ADDI s1, zero, 1
  SUBW t4, s0, s1
  SW t4, 20(sp)
  # implict jump to bb21
bb21:
  LW t4, 0(sp)
  XORI s0, t4, 7
  SLTIU s0, s0, 1
  BNE s0, zero, bb23
  # implict jump to bb22
bb22:
  LW t4, 0(sp)
  ADD s3, t4, zero
  LW t4, 20(sp)
  ADD s9, t4, zero
  JAL zero, bb13
bb23:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb18
bb24:
  ADD t4, s1, zero
  SW t4, 28(sp)
  # implict jump to bb25
bb25:
  LW t4, 28(sp)
  ADD s8, t4, zero
  ADDIW t4, s8, 3
  SW t4, 12(sp)
  LA s8, e
  LW s8, 0(s8)
  ADDI s1, zero, 1
  BLT s1, s8, bb30
  # implict jump to bb26
bb26:
  LA s1, e
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s8, e
  SW s1, 0(s8)
  # implict jump to bb27
bb27:
  LW t4, 12(sp)
  SLTI s1, t4, 20
  BNE s1, zero, bb29
  # implict jump to bb28
bb28:
  LW t4, 12(sp)
  ADD s0, t4, zero
  JAL zero, bb20
bb29:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  JAL zero, bb25
bb30:
  LA s1, e
  LW s1, 0(s1)
  ADDI s8, zero, 1
  SUBW s1, s1, s8
  LA s8, e
  SW s1, 0(s8)
  LA s1, f
  LW s1, 0(s1)
  ADDI s8, zero, 2
  BLT s8, s1, bb33
  # implict jump to bb31
bb31:
  LA s1, f
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s8, f
  SW s1, 0(s8)
  # implict jump to bb32
bb32:
  LA s1, e
  LW s1, 0(s1)
  ADDI s8, zero, 1
  BLT s8, s1, bb30
  JAL zero, bb26
bb33:
  LA s1, f
  LW s1, 0(s1)
  ADDI s8, zero, 2
  SUBW s1, s1, s8
  LA s8, f
  SW s1, 0(s8)
  LA s1, g
  LW s1, 0(s1)
  SLTI s1, s1, 3
  BNE s1, zero, bb36
  # implict jump to bb34
bb34:
  LA s1, g
  LW s1, 0(s1)
  ADDI s8, zero, 8
  SUBW s1, s1, s8
  LA s8, g
  SW s1, 0(s8)
  # implict jump to bb35
bb35:
  LA s1, f
  LW s1, 0(s1)
  ADDI s8, zero, 2
  BLT s8, s1, bb33
  JAL zero, bb31
bb36:
  LA s1, g
  LW s1, 0(s1)
  ADDIW s1, s1, 10
  LA s8, g
  SW s1, 0(s8)
  LA s1, h
  LW s1, 0(s1)
  SLTI s1, s1, 10
  BNE s1, zero, bb39
  # implict jump to bb37
bb37:
  LA s1, h
  LW s1, 0(s1)
  ADDI s8, zero, 1
  SUBW s1, s1, s8
  LA s8, h
  SW s1, 0(s8)
  # implict jump to bb38
bb38:
  LA s1, g
  LW s1, 0(s1)
  SLTI s1, s1, 3
  BNE s1, zero, bb36
  JAL zero, bb34
bb39:
  LA s1, h
  LW s1, 0(s1)
  ADDIW s1, s1, 8
  LA s8, h
  SW s1, 0(s8)
  # implict jump to bb40
bb40:
  LA s1, h
  LW s1, 0(s1)
  SLTI s1, s1, 10
  BNE s1, zero, bb39
  JAL zero, bb37
EightWhile:
  ADDI sp, sp, -144
  SD s0, 40(sp)
  SD s2, 48(sp)
  SD ra, 56(sp)
  SD s1, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  SD s7, 104(sp)
  SD s8, 112(sp)
  SD s9, 120(sp)
  SD s10, 128(sp)
  SD s11, 136(sp)
  ADDI s10, zero, 5
  SLTI s10, s10, 20
  BNE s10, zero, bb44
  # implict jump to bb42
bb42:
  ADDI s10, zero, 5
  ADDI s11, zero, 6
  ADDI t0, zero, 7
  ADDI t1, zero, 10
  # implict jump to bb43
bb43:
  ADDW s2, s11, t1
  ADDW s2, s10, s2
  ADDW s2, s2, t0
  LA s5, e
  LW s5, 0(s5)
  ADDW s5, s5, t1
  LA s6, g
  LW s6, 0(s6)
  SUBW s5, s5, s6
  LA s6, h
  LW s6, 0(s6)
  ADDW s5, s5, s6
  SUBW s2, s2, s5
  ADD a0, s2, zero
  LD s0, 40(sp)
  LD s2, 48(sp)
  LD ra, 56(sp)
  LD s1, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  LD s9, 120(sp)
  LD s10, 128(sp)
  LD s11, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb44:
  ADDI t2, zero, 5
  ADDI t4, zero, 6
  SW t4, 32(sp)
  ADDI a1, zero, 7
  ADDI a2, zero, 10
  # implict jump to bb45
bb45:
  ADD a3, a2, zero
  ADD a4, a1, zero
  LW t4, 32(sp)
  ADD a5, t4, zero
  ADD a6, t2, zero
  ADDIW t4, a6, 3
  SW t4, 8(sp)
  SLTI a6, a5, 10
  BNE a6, zero, bb51
  # implict jump to bb46
bb46:
  ADD a6, a5, zero
  ADD a7, a4, zero
  ADD t6, a3, zero
  # implict jump to bb47
bb47:
  ADD s4, t6, zero
  ADD s3, a7, zero
  ADDI s2, zero, 2
  SUBW s8, a6, s2
  # implict jump to bb48
bb48:
  LW t4, 8(sp)
  SLTI s2, t4, 20
  BNE s2, zero, bb50
  # implict jump to bb49
bb49:
  LW t4, 8(sp)
  ADD s10, t4, zero
  ADD s11, s8, zero
  ADD t0, s3, zero
  ADD t1, s4, zero
  JAL zero, bb43
bb50:
  LW t4, 8(sp)
  ADD t2, t4, zero
  ADD t4, s8, zero
  SW t4, 32(sp)
  ADD a1, s3, zero
  ADD a2, s4, zero
  JAL zero, bb45
bb51:
  # implict jump to bb52
bb52:
  ADD s2, a3, zero
  ADD s9, a4, zero
  ADD s6, a5, zero
  ADDIW t4, s6, 1
  SW t4, 4(sp)
  XORI s6, s9, 7
  SLTIU s6, s6, 1
  BNE s6, zero, bb58
  # implict jump to bb53
bb53:
  ADD s6, s9, zero
  ADD s7, s2, zero
  # implict jump to bb54
bb54:
  ADD s1, s7, zero
  ADDIW s0, s6, 1
  # implict jump to bb55
bb55:
  LW t4, 4(sp)
  SLTI s2, t4, 10
  BNE s2, zero, bb57
  # implict jump to bb56
bb56:
  LW t4, 4(sp)
  ADD a6, t4, zero
  ADD a7, s0, zero
  ADD t6, s1, zero
  JAL zero, bb47
bb57:
  LW t4, 4(sp)
  ADD a5, t4, zero
  ADD a4, s0, zero
  ADD a3, s1, zero
  JAL zero, bb52
bb58:
  ADD t4, s9, zero
  SW t4, 24(sp)
  ADD t4, s2, zero
  SW t4, 16(sp)
  # implict jump to bb59
bb59:
  LW t4, 16(sp)
  ADD s2, t4, zero
  LW t4, 24(sp)
  ADD s5, t4, zero
  ADDI s9, zero, 1
  SUBW t4, s5, s9
  SW t4, 0(sp)
  SLTI s5, s2, 20
  BNE s5, zero, bb65
  # implict jump to bb60
bb60:
  ADD s5, s2, zero
  # implict jump to bb61
bb61:
  ADDI s2, zero, 1
  SUBW t4, s5, s2
  SW t4, 20(sp)
  # implict jump to bb62
bb62:
  LW t4, 0(sp)
  XORI s2, t4, 7
  SLTIU s2, s2, 1
  BNE s2, zero, bb64
  # implict jump to bb63
bb63:
  LW t4, 0(sp)
  ADD s6, t4, zero
  LW t4, 20(sp)
  ADD s7, t4, zero
  JAL zero, bb54
bb64:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb59
bb65:
  ADD t4, s2, zero
  SW t4, 28(sp)
  # implict jump to bb66
bb66:
  LW t4, 28(sp)
  ADD s9, t4, zero
  ADDIW t4, s9, 3
  SW t4, 12(sp)
  LA s9, e
  LW s9, 0(s9)
  ADDI s2, zero, 1
  BLT s2, s9, bb71
  # implict jump to bb67
bb67:
  LA s2, e
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s9, e
  SW s2, 0(s9)
  # implict jump to bb68
bb68:
  LW t4, 12(sp)
  SLTI s2, t4, 20
  BNE s2, zero, bb70
  # implict jump to bb69
bb69:
  LW t4, 12(sp)
  ADD s5, t4, zero
  JAL zero, bb61
bb70:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  JAL zero, bb66
bb71:
  LA s2, e
  LW s2, 0(s2)
  ADDI s9, zero, 1
  SUBW s2, s2, s9
  LA s9, e
  SW s2, 0(s9)
  LA s2, f
  LW s2, 0(s2)
  ADDI s9, zero, 2
  BLT s9, s2, bb74
  # implict jump to bb72
bb72:
  LA s2, f
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s9, f
  SW s2, 0(s9)
  # implict jump to bb73
bb73:
  LA s2, e
  LW s2, 0(s2)
  ADDI s9, zero, 1
  BLT s9, s2, bb71
  JAL zero, bb67
bb74:
  LA s2, f
  LW s2, 0(s2)
  ADDI s9, zero, 2
  SUBW s2, s2, s9
  LA s9, f
  SW s2, 0(s9)
  LA s2, g
  LW s2, 0(s2)
  SLTI s2, s2, 3
  BNE s2, zero, bb77
  # implict jump to bb75
bb75:
  LA s2, g
  LW s2, 0(s2)
  ADDI s9, zero, 8
  SUBW s2, s2, s9
  LA s9, g
  SW s2, 0(s9)
  # implict jump to bb76
bb76:
  LA s2, f
  LW s2, 0(s2)
  ADDI s9, zero, 2
  BLT s9, s2, bb74
  JAL zero, bb72
bb77:
  LA s2, g
  LW s2, 0(s2)
  ADDIW s2, s2, 10
  LA s9, g
  SW s2, 0(s9)
  LA s2, h
  LW s2, 0(s2)
  SLTI s2, s2, 10
  BNE s2, zero, bb80
  # implict jump to bb78
bb78:
  LA s2, h
  LW s2, 0(s2)
  ADDI s9, zero, 1
  SUBW s2, s2, s9
  LA s9, h
  SW s2, 0(s9)
  # implict jump to bb79
bb79:
  LA s2, g
  LW s2, 0(s2)
  SLTI s2, s2, 3
  BNE s2, zero, bb77
  JAL zero, bb75
bb80:
  LA s2, h
  LW s2, 0(s2)
  ADDIW s2, s2, 8
  LA s9, h
  SW s2, 0(s9)
  # implict jump to bb81
bb81:
  LA s2, h
  LW s2, 0(s2)
  SLTI s2, s2, 10
  BNE s2, zero, bb80
  JAL zero, bb78
