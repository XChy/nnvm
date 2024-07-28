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
  SD s2, 96(sp)
  SD ra, 112(sp)
  SD s0, 120(sp)
  SD s1, 128(sp)
  SD s8, 136(sp)
  SD s3, 144(sp)
  SD s4, 152(sp)
  SD s5, 160(sp)
  SD s6, 168(sp)
  SD s7, 176(sp)
  SD s9, 192(sp)
  SD s10, 200(sp)
  SD s11, 208(sp)
  CALL getint
  ADD s7, a0, zero
  LA s8, n
  SW s7, 0(s8)
  CALL getint
  ADD s7, a0, zero
  LA s8, m
  SW s7, 0(s8)
  LA s7, n
  LW s7, 0(s7)
  SLTI s8, s7, 1
  XORI s8, s8, 1
  BNE s8, zero, bb51
  # implict jump to bb1
bb1:
  LA s7, m
  LW s7, 0(s7)
  SLTI s7, s7, 1
  XORI s7, s7, 1
  BNE s7, zero, bb46
  # implict jump to bb2
bb2:
  LA s5, n
  LW s5, 0(s5)
  SLTI s6, s5, 1
  XORI s6, s6, 1
  BNE s6, zero, bb40
  # implict jump to bb3
bb3:
  # implict jump to bb4
bb4:
  ADD t4, s5, zero
  SW t4, 40(sp)
  LA s1, book
  ADDI s6, zero, 1
  SW s6, 4(s1)
  ADDI s1, zero, 1
  LW t4, 40(sp)
  SUBW s1, t4, s1
  SLTI s1, s1, 1
  XORI s1, s1, 1
  BNE s1, zero, bb12
  # implict jump to bb5
bb5:
  LA s3, n
  LW s3, 0(s3)
  SLTI s3, s3, 1
  XORI s3, s3, 1
  BNE s3, zero, bb7
  # implict jump to bb6
bb6:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD s2, 96(sp)
  LD ra, 112(sp)
  LD s0, 120(sp)
  LD s1, 128(sp)
  LD s8, 136(sp)
  LD s3, 144(sp)
  LD s4, 152(sp)
  LD s5, 160(sp)
  LD s6, 168(sp)
  LD s7, 176(sp)
  LD s9, 192(sp)
  LD s10, 200(sp)
  LD s11, 208(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb7:
  ADDI s3, zero, 1
  # implict jump to bb8
bb8:
  # implict jump to bb9
bb9:
  ADD s4, s3, zero
  SLLIW s5, s4, 2
  LA s6, dis
  ADD s5, s6, s5
  LW s5, 0(s5)
  ADD a0, s5, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s11, s4, 1
  # implict jump to bb10
bb10:
  LA s4, n
  LW s4, 0(s4)
  SLT s4, s4, s11
  XORI s4, s4, 1
  BNE s4, zero, bb11
  JAL zero, bb6
bb11:
  ADD s3, s11, zero
  JAL zero, bb9
bb12:
  ADDI s1, zero, 1
  # implict jump to bb13
bb13:
  LW t4, 40(sp)
  SLTI s6, t4, 1
  XORI t4, s6, 1
  SB t4, 1(sp)
  ADD t4, s1, zero
  SW t4, 88(sp)
  ADD t4, zero, zero
  SB t4, 0(sp)
  # implict jump to bb14
bb14:
  LB t4, 0(sp)
  ADD s7, t4, zero
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LB t4, 1(sp)
  BNE t4, zero, bb28
  # implict jump to bb15
bb15:
  ADD s8, zero, zero
  # implict jump to bb16
bb16:
  ADD t4, s7, zero
  SB t4, 2(sp)
  SLLIW s0, s8, 2
  LA s1, book
  ADD s1, s1, s0
  ADDI s3, zero, 1
  SW s3, 0(s1)
  LW t4, 40(sp)
  SLTI s1, t4, 1
  XORI s1, s1, 1
  BNE s1, zero, bb20
  # implict jump to bb17
bb17:
  LW t4, 36(sp)
  ADDIW s2, t4, 1
  # implict jump to bb18
bb18:
  ADDI s3, zero, 1
  LW t4, 40(sp)
  SUBW s3, t4, s3
  SLT s3, s3, s2
  XORI s3, s3, 1
  BNE s3, zero, bb19
  JAL zero, bb5
bb19:
  ADD t4, s2, zero
  SW t4, 88(sp)
  LB t3, 2(sp)
  ADD t4, t3, zero
  SB t4, 0(sp)
  JAL zero, bb14
bb20:
  ADDI s1, zero, 1
  # implict jump to bb21
bb21:
  SLLIW s3, s8, 6
  LA s4, e
  ADD t4, s4, s3
  SD t4, 104(sp)
  # implict jump to bb22
bb22:
  ADD s3, s1, zero
  SLLIW s4, s3, 2
  LD t4, 104(sp)
  ADD s5, t4, s4
  LW s5, 0(s5)
  LUI s6, 16
  ADDIW s6, s6, -1
  SLT s6, s5, s6
  BNE s6, zero, bb26
  # implict jump to bb23
bb23:
  ADDIW t4, s3, 1
  SW t4, 84(sp)
  # implict jump to bb24
bb24:
  LW t4, 40(sp)
  LW t3, 84(sp)
  SLT s3, t4, t3
  XORI s3, s3, 1
  BNE s3, zero, bb25
  JAL zero, bb17
bb25:
  LW t4, 84(sp)
  ADD s1, t4, zero
  JAL zero, bb22
bb26:
  LA s6, dis
  ADD s4, s6, s4
  LW s6, 0(s4)
  LA s7, dis
  ADD s7, s7, s0
  LW s8, 0(s7)
  ADDW s8, s8, s5
  BLT s8, s6, bb27
  JAL zero, bb23
bb27:
  LW s6, 0(s7)
  ADDW s5, s6, s5
  SW s5, 0(s4)
  JAL zero, bb23
bb28:
  ADDI s5, zero, 1
  LUI s9, 16
  ADDIW s9, s9, -1
  ADD s9, zero, s9
  # implict jump to bb29
bb29:
  ADD t4, s9, zero
  SW t4, 56(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  ADD t4, s5, zero
  SW t4, 52(sp)
  # implict jump to bb30
bb30:
  LW t4, 52(sp)
  ADD s5, t4, zero
  LW t4, 48(sp)
  ADD s9, t4, zero
  LW t4, 56(sp)
  ADD s4, t4, zero
  SLLIW s3, s5, 2
  LA s0, dis
  ADD s0, s0, s3
  LW s0, 0(s0)
  BLT s0, s4, bb39
  # implict jump to bb31
bb31:
  ADD s6, zero, zero
  # implict jump to bb32
bb32:
  ADD s10, s6, zero
  BNE s10, zero, bb38
  # implict jump to bb33
bb33:
  ADD s1, s9, zero
  ADD s3, s4, zero
  # implict jump to bb34
bb34:
  ADD t4, s3, zero
  SW t4, 76(sp)
  ADD t4, s1, zero
  SW t4, 44(sp)
  ADDIW t4, s5, 1
  SW t4, 32(sp)
  # implict jump to bb35
bb35:
  LW t4, 40(sp)
  LW t3, 32(sp)
  SLT s0, t4, t3
  XORI s0, s0, 1
  BNE s0, zero, bb37
  # implict jump to bb36
bb36:
  LW t4, 44(sp)
  ADD s8, t4, zero
  ADD s7, s10, zero
  JAL zero, bb16
bb37:
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  JAL zero, bb30
bb38:
  ADD s1, s5, zero
  ADD s3, s0, zero
  JAL zero, bb34
bb39:
  LA s1, book
  ADD s1, s1, s3
  LW s1, 0(s1)
  SLTIU s1, s1, 1
  ADD s6, s1, zero
  JAL zero, bb32
bb40:
  ADDI s6, zero, 1
  # implict jump to bb41
bb41:
  LA s7, e
  ADDI t4, s7, 64
  SD t4, 184(sp)
  ADD t4, s6, zero
  SW t4, 28(sp)
  # implict jump to bb42
bb42:
  LW t4, 28(sp)
  ADD s7, t4, zero
  SLLIW s8, s7, 2
  LA s6, dis
  ADD s6, s6, s8
  LD t4, 184(sp)
  ADD s1, t4, s8
  LW s1, 0(s1)
  SW s1, 0(s6)
  LA s1, book
  ADD s1, s1, s8
  SW zero, 0(s1)
  ADDIW t4, s7, 1
  SW t4, 16(sp)
  # implict jump to bb43
bb43:
  LA s1, n
  LW s1, 0(s1)
  LW t4, 16(sp)
  SLT s6, s1, t4
  XORI s6, s6, 1
  BNE s6, zero, bb45
  # implict jump to bb44
bb44:
  ADD s5, s1, zero
  JAL zero, bb4
bb45:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  JAL zero, bb42
bb46:
  ADDI s7, zero, 1
  # implict jump to bb47
bb47:
  ADD t4, s7, zero
  SW t4, 24(sp)
  # implict jump to bb48
bb48:
  LW t4, 24(sp)
  ADD s8, t4, zero
  CALL getint
  ADD s6, a0, zero
  CALL getint
  ADD s7, a0, zero
  SLLIW s6, s6, 6
  LA s5, e
  ADD s5, s5, s6
  SLLIW s6, s7, 2
  ADD s5, s5, s6
  CALL getint
  ADD s6, a0, zero
  SW s6, 0(s5)
  ADDIW t4, s8, 1
  SW t4, 68(sp)
  # implict jump to bb49
bb49:
  LA s5, m
  LW s5, 0(s5)
  LW t4, 68(sp)
  SLT s5, s5, t4
  XORI s5, s5, 1
  BNE s5, zero, bb50
  JAL zero, bb2
bb50:
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  JAL zero, bb48
bb51:
  ADDI s8, zero, 1
  # implict jump to bb52
bb52:
  ADD t4, s7, zero
  SW t4, 12(sp)
  ADD t4, s8, zero
  SW t4, 60(sp)
  # implict jump to bb53
bb53:
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 8(sp)
  SLTI s8, t4, 1
  XORI s8, s8, 1
  BNE s8, zero, bb57
  # implict jump to bb54
bb54:
  LW t3, 64(sp)
  ADDIW t4, t3, 1
  SW t4, 72(sp)
  # implict jump to bb55
bb55:
  LA s6, n
  LW t4, 0(s6)
  SW t4, 20(sp)
  LW t4, 20(sp)
  LW t3, 72(sp)
  SLT s7, t4, t3
  XORI s7, s7, 1
  BNE s7, zero, bb56
  JAL zero, bb1
bb56:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  JAL zero, bb53
bb57:
  ADDI s8, zero, 1
  # implict jump to bb58
bb58:
  ADD t4, s8, zero
  SW t4, 4(sp)
  # implict jump to bb59
bb59:
  LW t4, 4(sp)
  ADD s8, t4, zero
  LW t4, 64(sp)
  XOR s7, t4, s8
  SLTIU s7, s7, 1
  BNE s7, zero, bb64
  # implict jump to bb60
bb60:
  LW t4, 64(sp)
  SLLIW s7, t4, 6
  LA s6, e
  ADD s6, s6, s7
  SLLIW s7, s8, 2
  ADD s6, s6, s7
  LUI s7, 16
  ADDIW s7, s7, -1
  SW s7, 0(s6)
  # implict jump to bb61
bb61:
  ADDIW t4, s8, 1
  SW t4, 80(sp)
  # implict jump to bb62
bb62:
  LW t4, 8(sp)
  LW t3, 80(sp)
  SLT s6, t4, t3
  XORI s6, s6, 1
  BNE s6, zero, bb63
  JAL zero, bb54
bb63:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb59
bb64:
  LW t4, 64(sp)
  SLLIW s6, t4, 6
  LA s7, e
  ADD s6, s7, s6
  SLLIW s7, s8, 2
  ADD s6, s6, s7
  ADDI s7, zero, 0
  SW s7, 0(s6)
  JAL zero, bb61
Dijkstra:
  ADDI sp, sp, -128
  SD s6, 16(sp)
  SD ra, 24(sp)
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s5, 72(sp)
  SD s7, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
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
  LD s6, 16(sp)
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s10, 104(sp)
  LD s11, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb69:
  ADDI t1, zero, 1
  # implict jump to bb70
bb70:
  SLTI t2, s11, 1
  XORI s6, t2, 1
  ADD t2, zero, zero
  # implict jump to bb71
bb71:
  ADD a0, t2, zero
  ADD t4, t1, zero
  SW t4, 8(sp)
  BNE s6, zero, bb85
  # implict jump to bb72
bb72:
  ADD a2, zero, zero
  # implict jump to bb73
bb73:
  ADD s8, a0, zero
  SLLIW s4, a2, 2
  LA s7, book
  ADD s7, s7, s4
  ADDI s9, zero, 1
  SW s9, 0(s7)
  SLTI s7, s11, 1
  XORI s7, s7, 1
  BNE s7, zero, bb77
  # implict jump to bb74
bb74:
  LW t4, 8(sp)
  ADDIW s10, t4, 1
  # implict jump to bb75
bb75:
  ADDI s9, zero, 1
  SUBW s9, s11, s9
  SLT s9, s9, s10
  XORI s9, s9, 1
  BNE s9, zero, bb76
  JAL zero, bb68
bb76:
  ADD t1, s10, zero
  ADD t2, s8, zero
  JAL zero, bb71
bb77:
  ADDI s7, zero, 1
  # implict jump to bb78
bb78:
  SLLIW s9, a2, 6
  LA t0, e
  ADD s1, t0, s9
  # implict jump to bb79
bb79:
  ADD s9, s7, zero
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
  ADD s7, s0, zero
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
  SLLIW s9, a6, 2
  LA t0, dis
  ADD t0, t0, s9
  LW t0, 0(t0)
  BLT t0, t6, bb96
  # implict jump to bb88
bb88:
  ADD s7, zero, zero
  # implict jump to bb89
bb89:
  ADD s4, s7, zero
  BNE s4, zero, bb95
  # implict jump to bb90
bb90:
  ADD s7, a7, zero
  ADD s9, t6, zero
  # implict jump to bb91
bb91:
  ADD s5, s9, zero
  ADD s2, s7, zero
  ADDIW s3, a6, 1
  # implict jump to bb92
bb92:
  SLT s7, s11, s3
  XORI s7, s7, 1
  BNE s7, zero, bb94
  # implict jump to bb93
bb93:
  ADD a2, s2, zero
  ADD a0, s4, zero
  JAL zero, bb73
bb94:
  ADD a4, s5, zero
  ADD a5, s2, zero
  ADD a3, s3, zero
  JAL zero, bb87
bb95:
  ADD s7, a6, zero
  ADD s9, t0, zero
  JAL zero, bb91
bb96:
  LA a1, book
  ADD s9, a1, s9
  LW s9, 0(s9)
  SLTIU s9, s9, 1
  ADD s7, s9, zero
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
