.global main
.global Dijkstra
.section .bss




book:
.space 64

e:
.space 1024
dis:
.space 64

.section .data
w:
.word 0x00000000
v2:
.word 0x00000000
v1:
.word 0x00000000
m:
.word 0x00000000

n:
.word 0x00000000


INF:
.word 0x0000ffff
.section .text
main:
  ADDI sp, sp, -208
  SD ra, 96(sp)
  SD s0, 104(sp)
  SD s1, 112(sp)
  SD s2, 120(sp)
  SD s3, 128(sp)
  SD s4, 136(sp)
  SD s5, 144(sp)
  SD s6, 152(sp)
  SD s7, 160(sp)
  SD s8, 168(sp)
  SD s10, 176(sp)
  SD s11, 184(sp)
  SD s9, 192(sp)
  CALL getint
  ADD s8, a0, zero
  LA s11, n
  SW s8, 0(s11)
  CALL getint
  ADD s8, a0, zero
  LA s11, m
  SW s8, 0(s11)
  LA s8, n
  LW s8, 0(s8)
  SLTI s11, s8, 1
  XORI s11, s11, 1
  BNE s11, zero, bb51
  # implict jump to bb1
bb1:
  LA s10, m
  LW s10, 0(s10)
  SLTI s10, s10, 1
  XORI s10, s10, 1
  BNE s10, zero, bb46
  # implict jump to bb2
bb2:
  LA s7, n
  LW s7, 0(s7)
  SLTI s8, s7, 1
  XORI s8, s8, 1
  BNE s8, zero, bb40
  # implict jump to bb3
bb3:
  # implict jump to bb4
bb4:
  ADD t4, s7, zero
  SW t4, 32(sp)
  LA s4, book
  ADDI s8, zero, 1
  SW s8, 4(s4)
  ADDI s4, zero, 1
  LW t4, 32(sp)
  SUBW s4, t4, s4
  SLTI s4, s4, 1
  XORI s4, s4, 1
  BNE s4, zero, bb12
  # implict jump to bb5
bb5:
  LA s2, n
  LW s2, 0(s2)
  SLTI s2, s2, 1
  XORI s2, s2, 1
  BNE s2, zero, bb7
  # implict jump to bb6
bb6:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 96(sp)
  LD s0, 104(sp)
  LD s1, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD s5, 144(sp)
  LD s6, 152(sp)
  LD s7, 160(sp)
  LD s8, 168(sp)
  LD s10, 176(sp)
  LD s11, 184(sp)
  LD s9, 192(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb7:
  ADDI s2, zero, 1
  # implict jump to bb8
bb8:
  # implict jump to bb9
bb9:
  ADD s3, s2, zero
  SLLIW s4, s3, 2
  LA s6, dis
  ADD s4, s6, s4
  LW s4, 0(s4)
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s9, s3, 1
  # implict jump to bb10
bb10:
  LA s3, n
  LW s3, 0(s3)
  SLT s3, s3, s9
  XORI s3, s3, 1
  BNE s3, zero, bb11
  JAL zero, bb6
bb11:
  ADD s2, s9, zero
  JAL zero, bb9
bb12:
  ADDI s4, zero, 1
  # implict jump to bb13
bb13:
  ADD t4, s4, zero
  SW t4, 60(sp)
  ADD t4, zero, zero
  SB t4, 0(sp)
  # implict jump to bb14
bb14:
  LB t4, 0(sp)
  ADD s10, t4, zero
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t4, 32(sp)
  SLTI s11, t4, 1
  XORI s11, s11, 1
  BNE s11, zero, bb28
  # implict jump to bb15
bb15:
  ADD s11, zero, zero
  # implict jump to bb16
bb16:
  ADD t4, s10, zero
  SB t4, 1(sp)
  SLLIW s0, s11, 2
  LA s1, book
  ADD s1, s1, s0
  ADDI s2, zero, 1
  SW s2, 0(s1)
  LW t4, 32(sp)
  SLTI s1, t4, 1
  XORI s1, s1, 1
  BNE s1, zero, bb20
  # implict jump to bb17
bb17:
  LW t4, 28(sp)
  ADDIW s5, t4, 1
  # implict jump to bb18
bb18:
  ADDI s2, zero, 1
  LW t4, 32(sp)
  SUBW s2, t4, s2
  SLT s2, s2, s5
  XORI s2, s2, 1
  BNE s2, zero, bb19
  JAL zero, bb5
bb19:
  ADD t4, s5, zero
  SW t4, 60(sp)
  LB t3, 1(sp)
  ADD t4, t3, zero
  SB t4, 0(sp)
  JAL zero, bb14
bb20:
  ADDI s1, zero, 1
  # implict jump to bb21
bb21:
  # implict jump to bb22
bb22:
  ADD s2, s1, zero
  SLLIW s3, s11, 6
  LA s4, e
  ADD s3, s4, s3
  SLLIW s4, s2, 2
  ADD s3, s3, s4
  LW s3, 0(s3)
  LUI s6, 16
  ADDIW s6, s6, -1
  SLT s6, s3, s6
  BNE s6, zero, bb26
  # implict jump to bb23
bb23:
  ADDIW t4, s2, 1
  SW t4, 56(sp)
  # implict jump to bb24
bb24:
  LW t4, 32(sp)
  LW t3, 56(sp)
  SLT s2, t4, t3
  XORI s2, s2, 1
  BNE s2, zero, bb25
  JAL zero, bb17
bb25:
  LW t4, 56(sp)
  ADD s1, t4, zero
  JAL zero, bb22
bb26:
  LA s6, dis
  ADD s4, s6, s4
  LW s6, 0(s4)
  LA s7, dis
  ADD s7, s7, s0
  LW s8, 0(s7)
  ADDW s8, s8, s3
  BLT s8, s6, bb27
  JAL zero, bb23
bb27:
  LW s6, 0(s7)
  ADDW s3, s6, s3
  SW s3, 0(s4)
  JAL zero, bb23
bb28:
  ADDI s7, zero, 1
  LUI s6, 16
  ADDIW s6, s6, -1
  ADD s6, zero, s6
  # implict jump to bb29
bb29:
  ADD t4, s6, zero
  SW t4, 48(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  ADD t4, s7, zero
  SW t4, 44(sp)
  # implict jump to bb30
bb30:
  LW t4, 44(sp)
  ADD s7, t4, zero
  LW t4, 4(sp)
  ADD s6, t4, zero
  LW t4, 48(sp)
  ADD s1, t4, zero
  SLLIW s2, s7, 2
  LA s0, dis
  ADD s0, s0, s2
  LW s0, 0(s0)
  BLT s0, s1, bb39
  # implict jump to bb31
bb31:
  ADD s8, zero, zero
  # implict jump to bb32
bb32:
  ADD s3, s8, zero
  BNE s3, zero, bb38
  # implict jump to bb33
bb33:
  ADD s2, s6, zero
  # implict jump to bb34
bb34:
  ADD t4, s1, zero
  SW t4, 52(sp)
  ADD t4, s2, zero
  SW t4, 36(sp)
  ADDIW t4, s7, 1
  SW t4, 24(sp)
  # implict jump to bb35
bb35:
  LW t4, 32(sp)
  LW t3, 24(sp)
  SLT s0, t4, t3
  XORI s0, s0, 1
  BNE s0, zero, bb37
  # implict jump to bb36
bb36:
  LW t4, 36(sp)
  ADD s11, t4, zero
  ADD s10, s3, zero
  JAL zero, bb16
bb37:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  JAL zero, bb30
bb38:
  ADD s2, s7, zero
  ADD s1, s0, zero
  JAL zero, bb34
bb39:
  LA s4, book
  ADD s2, s4, s2
  LW s2, 0(s2)
  SLTIU s2, s2, 1
  ADD s8, s2, zero
  JAL zero, bb32
bb40:
  ADDI s8, zero, 1
  # implict jump to bb41
bb41:
  ADD t4, s8, zero
  SW t4, 20(sp)
  # implict jump to bb42
bb42:
  LW t4, 20(sp)
  ADD s10, t4, zero
  SLLIW s11, s10, 2
  LA s8, dis
  ADD s8, s8, s11
  LA s4, e
  ADDI s4, s4, 64
  ADD s4, s4, s11
  LW s4, 0(s4)
  SW s4, 0(s8)
  LA s4, book
  ADD s4, s4, s11
  SW zero, 0(s4)
  ADDIW t4, s10, 1
  SW t4, 16(sp)
  # implict jump to bb43
bb43:
  LA s4, n
  LW s4, 0(s4)
  LW t4, 16(sp)
  SLT s8, s4, t4
  XORI s8, s8, 1
  BNE s8, zero, bb45
  # implict jump to bb44
bb44:
  ADD s7, s4, zero
  JAL zero, bb4
bb45:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb42
bb46:
  ADDI s10, zero, 1
  # implict jump to bb47
bb47:
  ADD t4, s10, zero
  SW t4, 12(sp)
  # implict jump to bb48
bb48:
  LW t4, 12(sp)
  ADD s11, t4, zero
  CALL getint
  ADD s8, a0, zero
  CALL getint
  ADD s10, a0, zero
  SLLIW s8, s8, 6
  LA s7, e
  ADD s7, s7, s8
  SLLIW s8, s10, 2
  ADD s7, s7, s8
  CALL getint
  ADD s8, a0, zero
  SW s8, 0(s7)
  ADDIW t4, s11, 1
  SW t4, 40(sp)
  # implict jump to bb49
bb49:
  LA s7, m
  LW s7, 0(s7)
  LW t4, 40(sp)
  SLT s7, s7, t4
  XORI s7, s7, 1
  BNE s7, zero, bb50
  JAL zero, bb2
bb50:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  JAL zero, bb48
bb51:
  ADDI s11, zero, 1
  # implict jump to bb52
bb52:
  ADD t4, s8, zero
  SW t4, 64(sp)
  ADD t4, s11, zero
  SW t4, 72(sp)
  # implict jump to bb53
bb53:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t4, 76(sp)
  SLTI s11, t4, 1
  XORI s11, s11, 1
  BNE s11, zero, bb57
  # implict jump to bb54
bb54:
  LW t3, 80(sp)
  ADDIW t4, t3, 1
  SW t4, 84(sp)
  # implict jump to bb55
bb55:
  LA s8, n
  LW t4, 0(s8)
  SW t4, 8(sp)
  LW t4, 8(sp)
  LW t3, 84(sp)
  SLT s10, t4, t3
  XORI s10, s10, 1
  BNE s10, zero, bb56
  JAL zero, bb1
bb56:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  JAL zero, bb53
bb57:
  ADDI s11, zero, 1
  # implict jump to bb58
bb58:
  ADD t4, s11, zero
  SW t4, 68(sp)
  # implict jump to bb59
bb59:
  LW t4, 68(sp)
  ADD s11, t4, zero
  LW t4, 80(sp)
  XOR s8, t4, s11
  SLTIU s8, s8, 1
  BNE s8, zero, bb64
  # implict jump to bb60
bb60:
  LW t4, 80(sp)
  SLLIW s8, t4, 6
  LA s10, e
  ADD s8, s10, s8
  SLLIW s10, s11, 2
  ADD s8, s8, s10
  LUI s10, 16
  ADDIW s10, s10, -1
  SW s10, 0(s8)
  # implict jump to bb61
bb61:
  ADDIW t4, s11, 1
  SW t4, 88(sp)
  # implict jump to bb62
bb62:
  LW t4, 76(sp)
  LW t3, 88(sp)
  SLT s8, t4, t3
  XORI s8, s8, 1
  BNE s8, zero, bb63
  JAL zero, bb54
bb63:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  JAL zero, bb59
bb64:
  LW t4, 80(sp)
  SLLIW s8, t4, 6
  LA s10, e
  ADD s8, s10, s8
  SLLIW s10, s11, 2
  ADD s8, s8, s10
  ADDI s10, zero, 0
  SW s10, 0(s8)
  JAL zero, bb61
Dijkstra:
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
  LA s8, n
  LW s8, 0(s8)
  SLTI s9, s8, 1
  XORI s9, s9, 1
  BNE s9, zero, bb97
  # implict jump to bb66
bb66:
  # implict jump to bb67
bb67:
  LA s10, book
  ADDI s11, zero, 1
  SW s11, 4(s10)
  ADDI s10, zero, 1
  SUBW s10, s8, s10
  SLTI s10, s10, 1
  XORI s10, s10, 1
  BNE s10, zero, bb69
  # implict jump to bb68
bb68:
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
bb69:
  ADDI s10, zero, 1
  # implict jump to bb70
bb70:
  ADD s11, zero, zero
  # implict jump to bb71
bb71:
  ADD t0, s11, zero
  ADD t1, s10, zero
  SLTI t2, s8, 1
  XORI t2, t2, 1
  BNE t2, zero, bb85
  # implict jump to bb72
bb72:
  ADD t2, zero, zero
  # implict jump to bb73
bb73:
  ADD s3, t0, zero
  SLLIW s5, t2, 2
  LA s9, book
  ADD s9, s9, s5
  ADDI t0, zero, 1
  SW t0, 0(s9)
  SLTI s9, s8, 1
  XORI s9, s9, 1
  BNE s9, zero, bb77
  # implict jump to bb74
bb74:
  ADDIW s4, t1, 1
  # implict jump to bb75
bb75:
  ADDI t0, zero, 1
  SUBW t0, s8, t0
  SLT t0, t0, s4
  XORI t0, t0, 1
  BNE t0, zero, bb76
  JAL zero, bb68
bb76:
  ADD s10, s4, zero
  ADD s11, s3, zero
  JAL zero, bb71
bb77:
  ADDI s9, zero, 1
  # implict jump to bb78
bb78:
  # implict jump to bb79
bb79:
  ADD t0, s9, zero
  SLLIW a3, t2, 6
  LA a4, e
  ADD a3, a4, a3
  SLLIW a4, t0, 2
  ADD a3, a3, a4
  LW a3, 0(a3)
  LUI a5, 16
  ADDIW a5, a5, -1
  SLT a5, a3, a5
  BNE a5, zero, bb83
  # implict jump to bb80
bb80:
  ADDIW s0, t0, 1
  # implict jump to bb81
bb81:
  SLT t0, s8, s0
  XORI t0, t0, 1
  BNE t0, zero, bb82
  JAL zero, bb74
bb82:
  ADD s9, s0, zero
  JAL zero, bb79
bb83:
  LA a5, dis
  ADD a4, a5, a4
  LW a5, 0(a4)
  LA a6, dis
  ADD a6, a6, s5
  LW a7, 0(a6)
  ADDW a7, a7, a3
  BLT a7, a5, bb84
  JAL zero, bb80
bb84:
  LW a5, 0(a6)
  ADDW a3, a5, a3
  SW a3, 0(a4)
  JAL zero, bb80
bb85:
  ADDI a0, zero, 1
  LUI a1, 16
  ADDIW a1, a1, -1
  ADD a1, zero, a1
  # implict jump to bb86
bb86:
  ADD a2, zero, zero
  # implict jump to bb87
bb87:
  ADD a3, a0, zero
  ADD a4, a2, zero
  ADD a5, a1, zero
  SLLIW a6, a3, 2
  LA a7, dis
  ADD a7, a7, a6
  LW a7, 0(a7)
  BLT a7, a5, bb96
  # implict jump to bb88
bb88:
  ADD t6, zero, zero
  # implict jump to bb89
bb89:
  ADD s5, t6, zero
  BNE s5, zero, bb95
  # implict jump to bb90
bb90:
  ADD s9, a4, zero
  ADD a4, a5, zero
  # implict jump to bb91
bb91:
  ADD s6, a4, zero
  ADD s7, s9, zero
  ADDIW s2, a3, 1
  # implict jump to bb92
bb92:
  SLT s9, s8, s2
  XORI s9, s9, 1
  BNE s9, zero, bb94
  # implict jump to bb93
bb93:
  ADD t2, s7, zero
  ADD t0, s5, zero
  JAL zero, bb73
bb94:
  ADD a1, s6, zero
  ADD a2, s7, zero
  ADD a0, s2, zero
  JAL zero, bb87
bb95:
  ADD s9, a3, zero
  ADD a4, a7, zero
  JAL zero, bb91
bb96:
  LA s9, book
  ADD s9, s9, a6
  LW s9, 0(s9)
  SLTIU s9, s9, 1
  ADD t6, s9, zero
  JAL zero, bb89
bb97:
  ADDI s9, zero, 1
  # implict jump to bb98
bb98:
  ADD t4, s9, zero
  SW t4, 0(sp)
  # implict jump to bb99
bb99:
  LW t4, 0(sp)
  ADD s10, t4, zero
  SLLIW s11, s10, 2
  LA t0, dis
  ADD t0, t0, s11
  LA t1, e
  ADDI t1, t1, 64
  ADD t1, t1, s11
  LW t1, 0(t1)
  SW t1, 0(t0)
  LA t0, book
  ADD s11, t0, s11
  SW zero, 0(s11)
  ADDIW s1, s10, 1
  # implict jump to bb100
bb100:
  LA s10, n
  LW s10, 0(s10)
  SLT s11, s10, s1
  XORI s11, s11, 1
  BNE s11, zero, bb102
  # implict jump to bb101
bb101:
  ADD s8, s10, zero
  JAL zero, bb67
bb102:
  ADD t4, s1, zero
  SW t4, 0(sp)
  JAL zero, bb99
