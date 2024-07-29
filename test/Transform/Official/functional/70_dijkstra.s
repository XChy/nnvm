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
  ADDI sp, sp, -224
  SD ra, 96(sp)
  SD s0, 104(sp)
  SD s1, 112(sp)
  SD s2, 120(sp)
  SD s3, 128(sp)
  SD s4, 136(sp)
  SD s5, 144(sp)
  SD s6, 152(sp)
  SD s8, 176(sp)
  SD s9, 184(sp)
  SD s7, 192(sp)
  SD s10, 200(sp)
  SD s11, 208(sp)
  CALL getint
  ADD s10, a0, zero
  LA s7, n
  SW s10, 0(s7)
  CALL getint
  ADD s7, a0, zero
  LA s10, m
  SW s7, 0(s10)
  LA s7, n
  LW s7, 0(s7)
  SLTI s10, s7, 1
  XORI s10, s10, 1
  BNE s10, zero, bb51
  # implict jump to bb1
bb1:
  LA s7, m
  LW s7, 0(s7)
  SLTI s7, s7, 1
  XORI s7, s7, 1
  BNE s7, zero, bb46
  # implict jump to bb2
bb2:
  LA s0, n
  LW s0, 0(s0)
  SLTI s5, s0, 1
  XORI s5, s5, 1
  BNE s5, zero, bb40
  # implict jump to bb3
bb3:
  # implict jump to bb4
bb4:
  ADD t4, s0, zero
  SW t4, 4(sp)
  LA s2, book
  ADDI s5, zero, 1
  SW s5, 4(s2)
  ADDI s2, zero, 1
  LW t4, 4(sp)
  SUBW s2, t4, s2
  SLTI s2, s2, 1
  XORI s2, s2, 1
  BNE s2, zero, bb12
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
  LD s8, 176(sp)
  LD s9, 184(sp)
  LD s7, 192(sp)
  LD s10, 200(sp)
  LD s11, 208(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb7:
  ADDI s2, zero, 1
  # implict jump to bb8
bb8:
  # implict jump to bb9
bb9:
  ADD s3, s2, zero
  SLLIW s4, s3, 2
  LA s5, dis
  ADD s4, s5, s4
  LW s4, 0(s4)
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s11, s3, 1
  # implict jump to bb10
bb10:
  LA s3, n
  LW s3, 0(s3)
  SLT s3, s3, s11
  XORI s3, s3, 1
  BNE s3, zero, bb11
  JAL zero, bb6
bb11:
  ADD s2, s11, zero
  JAL zero, bb9
bb12:
  ADDI s2, zero, 1
  # implict jump to bb13
bb13:
  LW t4, 4(sp)
  SLTI s5, t4, 1
  XORI t4, s5, 1
  SB t4, 2(sp)
  ADD t4, s2, zero
  SW t4, 72(sp)
  ADD t4, zero, zero
  SB t4, 1(sp)
  # implict jump to bb14
bb14:
  LB t4, 1(sp)
  ADD s7, t4, zero
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LB t4, 2(sp)
  BNE t4, zero, bb28
  # implict jump to bb15
bb15:
  ADD s10, zero, zero
  # implict jump to bb16
bb16:
  ADD t4, s7, zero
  SB t4, 0(sp)
  SLLIW s0, s10, 2
  LA s1, book
  ADD s1, s1, s0
  ADDI s2, zero, 1
  SW s2, 0(s1)
  LW t4, 4(sp)
  SLTI s1, t4, 1
  XORI s1, s1, 1
  BNE s1, zero, bb20
  # implict jump to bb17
bb17:
  LW t4, 32(sp)
  ADDIW s6, t4, 1
  # implict jump to bb18
bb18:
  ADDI s2, zero, 1
  LW t4, 4(sp)
  SUBW s2, t4, s2
  SLT s2, s2, s6
  XORI s2, s2, 1
  BNE s2, zero, bb19
  JAL zero, bb5
bb19:
  ADD t4, s6, zero
  SW t4, 72(sp)
  LB t3, 0(sp)
  ADD t4, t3, zero
  SB t4, 1(sp)
  JAL zero, bb14
bb20:
  ADDI s1, zero, 1
  # implict jump to bb21
bb21:
  SLLIW s2, s10, 6
  LA s3, e
  ADD t4, s3, s2
  SD t4, 160(sp)
  # implict jump to bb22
bb22:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  LD t4, 160(sp)
  ADD s4, t4, s3
  LW s4, 0(s4)
  LUI s5, 16
  ADDIW s5, s5, -1
  SLT s5, s4, s5
  BNE s5, zero, bb26
  # implict jump to bb23
bb23:
  ADDIW t4, s2, 1
  SW t4, 56(sp)
  # implict jump to bb24
bb24:
  LW t4, 4(sp)
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
  LA s5, dis
  ADD s3, s5, s3
  LW s5, 0(s3)
  LA s7, dis
  ADD s7, s7, s0
  LW s8, 0(s7)
  ADDW s8, s8, s4
  BLT s8, s5, bb27
  JAL zero, bb23
bb27:
  LW s5, 0(s7)
  ADDW s4, s5, s4
  SW s4, 0(s3)
  JAL zero, bb23
bb28:
  ADDI s0, zero, 1
  LUI s1, 16
  ADDIW s1, s1, -1
  ADD s1, zero, s1
  # implict jump to bb29
bb29:
  ADD t4, s1, zero
  SW t4, 52(sp)
  ADD t4, zero, zero
  SW t4, 44(sp)
  ADD t4, s0, zero
  SW t4, 48(sp)
  # implict jump to bb30
bb30:
  LW t4, 48(sp)
  ADD s0, t4, zero
  LW t4, 44(sp)
  ADD s1, t4, zero
  LW t4, 52(sp)
  ADD s9, t4, zero
  SLLIW s4, s0, 2
  LA s3, dis
  ADD s3, s3, s4
  LW s3, 0(s3)
  BLT s3, s9, bb39
  # implict jump to bb31
bb31:
  ADD s5, zero, zero
  # implict jump to bb32
bb32:
  ADD s8, s5, zero
  BNE s8, zero, bb38
  # implict jump to bb33
bb33:
  ADD s2, s9, zero
  # implict jump to bb34
bb34:
  ADD t4, s2, zero
  SW t4, 40(sp)
  ADD t4, s1, zero
  SW t4, 28(sp)
  ADDIW t4, s0, 1
  SW t4, 20(sp)
  # implict jump to bb35
bb35:
  LW t4, 4(sp)
  LW t3, 20(sp)
  SLT s0, t4, t3
  XORI s0, s0, 1
  BNE s0, zero, bb37
  # implict jump to bb36
bb36:
  LW t4, 28(sp)
  ADD s10, t4, zero
  ADD s7, s8, zero
  JAL zero, bb16
bb37:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb30
bb38:
  ADD s1, s0, zero
  ADD s2, s3, zero
  JAL zero, bb34
bb39:
  LA s2, book
  ADD s2, s2, s4
  LW s2, 0(s2)
  SLTIU s2, s2, 1
  ADD s5, s2, zero
  JAL zero, bb32
bb40:
  ADDI s5, zero, 1
  # implict jump to bb41
bb41:
  LA s7, e
  ADDI t4, s7, 64
  SD t4, 168(sp)
  ADD t4, s5, zero
  SW t4, 24(sp)
  # implict jump to bb42
bb42:
  LW t4, 24(sp)
  ADD s7, t4, zero
  SLLIW s10, s7, 2
  LA s5, dis
  ADD s5, s5, s10
  LD t4, 168(sp)
  ADD s2, t4, s10
  LW s2, 0(s2)
  SW s2, 0(s5)
  LA s2, book
  ADD s2, s2, s10
  SW zero, 0(s2)
  ADDIW t4, s7, 1
  SW t4, 80(sp)
  # implict jump to bb43
bb43:
  LA s2, n
  LW s2, 0(s2)
  LW t4, 80(sp)
  SLT s5, s2, t4
  XORI s5, s5, 1
  BNE s5, zero, bb45
  # implict jump to bb44
bb44:
  ADD s0, s2, zero
  JAL zero, bb4
bb45:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  JAL zero, bb42
bb46:
  ADDI s7, zero, 1
  # implict jump to bb47
bb47:
  ADD t4, s7, zero
  SW t4, 16(sp)
  # implict jump to bb48
bb48:
  LW t4, 16(sp)
  ADD s10, t4, zero
  CALL getint
  ADD s5, a0, zero
  CALL getint
  ADD s7, a0, zero
  SLLIW s5, s5, 6
  LA s0, e
  ADD s0, s0, s5
  SLLIW s5, s7, 2
  ADD s0, s0, s5
  CALL getint
  ADD s5, a0, zero
  SW s5, 0(s0)
  ADDIW t4, s10, 1
  SW t4, 76(sp)
  # implict jump to bb49
bb49:
  LA s0, m
  LW s0, 0(s0)
  LW t4, 76(sp)
  SLT s0, s0, t4
  XORI s0, s0, 1
  BNE s0, zero, bb50
  JAL zero, bb2
bb50:
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb48
bb51:
  ADDI s10, zero, 1
  # implict jump to bb52
bb52:
  ADD t4, s7, zero
  SW t4, 8(sp)
  ADD t4, s10, zero
  SW t4, 60(sp)
  # implict jump to bb53
bb53:
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t4, 88(sp)
  SLTI s10, t4, 1
  XORI s10, s10, 1
  BNE s10, zero, bb57
  # implict jump to bb54
bb54:
  LW t3, 84(sp)
  ADDIW t4, t3, 1
  SW t4, 68(sp)
  # implict jump to bb55
bb55:
  LA s5, n
  LW t4, 0(s5)
  SW t4, 12(sp)
  LW t4, 12(sp)
  LW t3, 68(sp)
  SLT s7, t4, t3
  XORI s7, s7, 1
  BNE s7, zero, bb56
  JAL zero, bb1
bb56:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  JAL zero, bb53
bb57:
  ADDI s10, zero, 1
  # implict jump to bb58
bb58:
  ADD t4, s10, zero
  SW t4, 36(sp)
  # implict jump to bb59
bb59:
  LW t4, 36(sp)
  ADD s10, t4, zero
  LW t4, 84(sp)
  XOR s7, t4, s10
  SLTIU s7, s7, 1
  BNE s7, zero, bb64
  # implict jump to bb60
bb60:
  LW t4, 84(sp)
  SLLIW s7, t4, 6
  LA s5, e
  ADD s5, s5, s7
  SLLIW s7, s10, 2
  ADD s5, s5, s7
  LUI s7, 16
  ADDIW s7, s7, -1
  SW s7, 0(s5)
  # implict jump to bb61
bb61:
  ADDIW t4, s10, 1
  SW t4, 64(sp)
  # implict jump to bb62
bb62:
  LW t4, 88(sp)
  LW t3, 64(sp)
  SLT s5, t4, t3
  XORI s5, s5, 1
  BNE s5, zero, bb63
  JAL zero, bb54
bb63:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  JAL zero, bb59
bb64:
  LW t4, 84(sp)
  SLLIW s5, t4, 6
  LA s7, e
  ADD s5, s7, s5
  SLLIW s7, s10, 2
  ADD s5, s5, s7
  ADDI s7, zero, 0
  SW s7, 0(s5)
  JAL zero, bb61
Dijkstra:
  ADDI sp, sp, -128
  SD s9, 16(sp)
  SD ra, 24(sp)
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s5, 72(sp)
  SD s6, 80(sp)
  SD s7, 88(sp)
  SD s8, 96(sp)
  SD s10, 104(sp)
  SD s11, 112(sp)
  LA s11, n
  LW s11, 0(s11)
  SLTI t0, s11, 1
  XORI t0, t0, 1
  BNE t0, zero, bb97
  # implict jump to bb66
bb66:
  # implict jump to bb67
bb67:
  LA t1, book
  ADDI t2, zero, 1
  SW t2, 4(t1)
  ADDI t1, zero, 1
  SUBW t1, s11, t1
  SLTI t1, t1, 1
  XORI t1, t1, 1
  BNE t1, zero, bb69
  # implict jump to bb68
bb68:
  LD s9, 16(sp)
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s10, 104(sp)
  LD s11, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb69:
  ADDI t1, zero, 1
  # implict jump to bb70
bb70:
  SLTI t2, s11, 1
  XORI s3, t2, 1
  ADD t2, zero, zero
  # implict jump to bb71
bb71:
  ADD a0, t2, zero
  ADD t4, t1, zero
  SW t4, 8(sp)
  BNE s3, zero, bb85
  # implict jump to bb72
bb72:
  ADD a2, zero, zero
  # implict jump to bb73
bb73:
  ADD s5, a0, zero
  SLLIW s4, a2, 2
  LA s8, book
  ADD s8, s8, s4
  ADDI s9, zero, 1
  SW s9, 0(s8)
  SLTI s8, s11, 1
  XORI s8, s8, 1
  BNE s8, zero, bb77
  # implict jump to bb74
bb74:
  LW t4, 8(sp)
  ADDIW s7, t4, 1
  # implict jump to bb75
bb75:
  ADDI s9, zero, 1
  SUBW s9, s11, s9
  SLT s9, s9, s7
  XORI s9, s9, 1
  BNE s9, zero, bb76
  JAL zero, bb68
bb76:
  ADD t1, s7, zero
  ADD t2, s5, zero
  JAL zero, bb71
bb77:
  ADDI s8, zero, 1
  # implict jump to bb78
bb78:
  SLLIW s9, a2, 6
  LA t0, e
  ADD s1, t0, s9
  # implict jump to bb79
bb79:
  ADD s9, s8, zero
  SLLIW t0, s9, 2
  ADD a0, s1, t0
  LW a0, 0(a0)
  LUI a1, 16
  ADDIW a1, a1, -1
  SLT a1, a0, a1
  BNE a1, zero, bb83
  # implict jump to bb80
bb80:
  ADDIW s0, s9, 1
  # implict jump to bb81
bb81:
  SLT s9, s11, s0
  XORI s9, s9, 1
  BNE s9, zero, bb82
  JAL zero, bb74
bb82:
  ADD s8, s0, zero
  JAL zero, bb79
bb83:
  LA a1, dis
  ADD t0, a1, t0
  LW a1, 0(t0)
  LA a2, dis
  ADD a2, a2, s4
  LW a6, 0(a2)
  ADDW a6, a6, a0
  BLT a6, a1, bb84
  JAL zero, bb80
bb84:
  LW a1, 0(a2)
  ADDW a0, a1, a0
  SW a0, 0(t0)
  JAL zero, bb80
bb85:
  ADDI a3, zero, 1
  LUI a4, 16
  ADDIW a4, a4, -1
  ADD a4, zero, a4
  # implict jump to bb86
bb86:
  ADD a5, zero, zero
  # implict jump to bb87
bb87:
  ADD a6, a3, zero
  ADD a7, a5, zero
  ADD t6, a4, zero
  SLLIW s8, a6, 2
  LA t0, dis
  ADD t0, t0, s8
  LW t0, 0(t0)
  BLT t0, t6, bb96
  # implict jump to bb88
bb88:
  ADD s4, zero, zero
  # implict jump to bb89
bb89:
  ADD s9, s4, zero
  BNE s9, zero, bb95
  # implict jump to bb90
bb90:
  ADD s4, a7, zero
  ADD s8, t6, zero
  # implict jump to bb91
bb91:
  ADD s10, s8, zero
  ADD s6, s4, zero
  ADDIW s2, a6, 1
  # implict jump to bb92
bb92:
  SLT s4, s11, s2
  XORI s4, s4, 1
  BNE s4, zero, bb94
  # implict jump to bb93
bb93:
  ADD a2, s6, zero
  ADD a0, s9, zero
  JAL zero, bb73
bb94:
  ADD a4, s10, zero
  ADD a5, s6, zero
  ADD a3, s2, zero
  JAL zero, bb87
bb95:
  ADD s4, a6, zero
  ADD s8, t0, zero
  JAL zero, bb91
bb96:
  LA a1, book
  ADD s8, a1, s8
  LW s8, 0(s8)
  SLTIU s8, s8, 1
  ADD s4, s8, zero
  JAL zero, bb89
bb97:
  ADDI t0, zero, 1
  # implict jump to bb98
bb98:
  LA t1, e
  ADDI t4, t1, 64
  SD t4, 120(sp)
  ADD t4, t0, zero
  SW t4, 0(sp)
  # implict jump to bb99
bb99:
  LW t4, 0(sp)
  ADD t1, t4, zero
  SLLIW t2, t1, 2
  LA a0, dis
  ADD a0, a0, t2
  LD t4, 120(sp)
  ADD a1, t4, t2
  LW a1, 0(a1)
  SW a1, 0(a0)
  LA a0, book
  ADD t2, a0, t2
  SW zero, 0(t2)
  ADDIW t4, t1, 1
  SW t4, 4(sp)
  # implict jump to bb100
bb100:
  LA t1, n
  LW t1, 0(t1)
  LW t4, 4(sp)
  SLT t2, t1, t4
  XORI t2, t2, 1
  BNE t2, zero, bb102
  # implict jump to bb101
bb101:
  ADD s11, t1, zero
  JAL zero, bb67
bb102:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  JAL zero, bb99
