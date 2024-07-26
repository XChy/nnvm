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
  SD s11, 112(sp)
  SD s1, 120(sp)
  SD s2, 128(sp)
  SD s3, 136(sp)
  SD s4, 144(sp)
  SD s5, 152(sp)
  SD s6, 160(sp)
  SD s7, 168(sp)
  SD s8, 176(sp)
  SD s9, 184(sp)
  SD s10, 192(sp)
  CALL getint
  ADD s11, a0, zero
  LA s4, n
  SW s11, 0(s4)
  CALL getint
  ADD s4, a0, zero
  LA s11, m
  SW s4, 0(s11)
  LA s4, n
  LW s4, 0(s4)
  SLTI s11, s4, 1
  XORI s11, s11, 1
  BNE s11, zero, bb45
  # implict jump to bb1
bb1:
  LA s6, m
  LW s6, 0(s6)
  SLTI s6, s6, 1
  XORI s6, s6, 1
  BNE s6, zero, bb41
  # implict jump to bb2
bb2:
  LA s4, n
  LW s4, 0(s4)
  SLTI s6, s4, 1
  XORI s6, s6, 1
  BNE s6, zero, bb36
  # implict jump to bb3
bb3:
  # implict jump to bb4
bb4:
  ADD t4, s4, zero
  SW t4, 20(sp)
  LA s0, book
  ADDI s6, zero, 1
  SW s6, 4(s0)
  ADDI s0, zero, 1
  LW t4, 20(sp)
  SUBW s0, t4, s0
  SLTI s0, s0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb11
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
  LD s11, 112(sp)
  LD s1, 120(sp)
  LD s2, 128(sp)
  LD s3, 136(sp)
  LD s4, 144(sp)
  LD s5, 152(sp)
  LD s6, 160(sp)
  LD s7, 168(sp)
  LD s8, 176(sp)
  LD s9, 184(sp)
  LD s10, 192(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb7:
  ADDI s2, zero, 1
  # implict jump to bb8
bb8:
  ADD s3, s2, zero
  SLLIW s4, s3, 2
  LA s5, dis
  ADD s4, s5, s4
  LW s4, 0(s4)
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s9, s3, 1
  # implict jump to bb9
bb9:
  LA s3, n
  LW s3, 0(s3)
  SLT s3, s3, s9
  XORI s3, s3, 1
  BNE s3, zero, bb10
  JAL zero, bb6
bb10:
  ADD s2, s9, zero
  JAL zero, bb8
bb11:
  ADDI t4, zero, 1
  SW t4, 88(sp)
  ADD t4, zero, zero
  SB t4, 0(sp)
  # implict jump to bb12
bb12:
  LB t4, 0(sp)
  ADD s10, t4, zero
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t4, 20(sp)
  SLTI s11, t4, 1
  XORI s11, s11, 1
  BNE s11, zero, bb25
  # implict jump to bb13
bb13:
  ADD s11, zero, zero
  # implict jump to bb14
bb14:
  ADD t4, s10, zero
  SB t4, 1(sp)
  SLLIW s0, s11, 2
  LA s1, book
  ADD s1, s1, s0
  ADDI s2, zero, 1
  SW s2, 0(s1)
  LW t4, 20(sp)
  SLTI s1, t4, 1
  XORI s1, s1, 1
  BNE s1, zero, bb18
  # implict jump to bb15
bb15:
  LW t4, 24(sp)
  ADDIW s8, t4, 1
  # implict jump to bb16
bb16:
  ADDI s2, zero, 1
  LW t4, 20(sp)
  SUBW s2, t4, s2
  SLT s2, s2, s8
  XORI s2, s2, 1
  BNE s2, zero, bb17
  JAL zero, bb5
bb17:
  ADD t4, s8, zero
  SW t4, 88(sp)
  LB t3, 1(sp)
  ADD t4, t3, zero
  SB t4, 0(sp)
  JAL zero, bb12
bb18:
  ADDI s1, zero, 1
  # implict jump to bb19
bb19:
  ADD s2, s1, zero
  SLLIW s3, s11, 6
  LA s4, e
  ADD s3, s4, s3
  SLLIW s4, s2, 2
  ADD s3, s3, s4
  LW s3, 0(s3)
  LUI s5, 16
  ADDIW s5, s5, -1
  SLT s5, s3, s5
  BNE s5, zero, bb23
  # implict jump to bb20
bb20:
  ADDIW t4, s2, 1
  SW t4, 84(sp)
  # implict jump to bb21
bb21:
  LW t4, 20(sp)
  LW t3, 84(sp)
  SLT s2, t4, t3
  XORI s2, s2, 1
  BNE s2, zero, bb22
  JAL zero, bb15
bb22:
  LW t4, 84(sp)
  ADD s1, t4, zero
  JAL zero, bb19
bb23:
  LA s5, dis
  ADD s4, s5, s4
  LW s5, 0(s4)
  LA s6, dis
  ADD s6, s6, s0
  LW s7, 0(s6)
  ADDW s7, s7, s3
  BLT s7, s5, bb24
  JAL zero, bb20
bb24:
  LW s5, 0(s6)
  ADDW s3, s5, s3
  SW s3, 0(s4)
  JAL zero, bb20
bb25:
  LUI s4, 16
  ADDIW s4, s4, -1
  ADD t4, zero, s4
  SW t4, 76(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADDI t4, zero, 1
  SW t4, 12(sp)
  # implict jump to bb26
bb26:
  LW t4, 12(sp)
  ADD s1, t4, zero
  LW t4, 16(sp)
  ADD s4, t4, zero
  LW t4, 76(sp)
  ADD s3, t4, zero
  SLLIW s5, s1, 2
  LA s2, dis
  ADD s2, s2, s5
  LW s2, 0(s2)
  BLT s2, s3, bb35
  # implict jump to bb27
bb27:
  ADD s6, zero, zero
  # implict jump to bb28
bb28:
  ADD s7, s6, zero
  BNE s7, zero, bb34
  # implict jump to bb29
bb29:
  ADD s0, s4, zero
  # implict jump to bb30
bb30:
  ADD t4, s3, zero
  SW t4, 80(sp)
  ADD t4, s0, zero
  SW t4, 8(sp)
  ADDIW t4, s1, 1
  SW t4, 28(sp)
  # implict jump to bb31
bb31:
  LW t4, 20(sp)
  LW t3, 28(sp)
  SLT s0, t4, t3
  XORI s0, s0, 1
  BNE s0, zero, bb33
  # implict jump to bb32
bb32:
  LW t4, 8(sp)
  ADD s11, t4, zero
  ADD s10, s7, zero
  JAL zero, bb14
bb33:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  JAL zero, bb26
bb34:
  ADD s0, s1, zero
  ADD s3, s2, zero
  JAL zero, bb30
bb35:
  LA s0, book
  ADD s0, s0, s5
  LW s0, 0(s0)
  SLTIU s0, s0, 1
  ADD s6, s0, zero
  JAL zero, bb28
bb36:
  ADDI t4, zero, 1
  SW t4, 32(sp)
  # implict jump to bb37
bb37:
  LW t4, 32(sp)
  ADD s10, t4, zero
  SLLIW s11, s10, 2
  LA s6, dis
  ADD s6, s6, s11
  LA s0, e
  ADDI s0, s0, 64
  ADD s0, s0, s11
  LW s0, 0(s0)
  SW s0, 0(s6)
  LA s0, book
  ADD s0, s0, s11
  SW zero, 0(s0)
  ADDIW t4, s10, 1
  SW t4, 36(sp)
  # implict jump to bb38
bb38:
  LA s0, n
  LW s0, 0(s0)
  LW t4, 36(sp)
  SLT s6, s0, t4
  XORI s6, s6, 1
  BNE s6, zero, bb40
  # implict jump to bb39
bb39:
  ADD s4, s0, zero
  JAL zero, bb4
bb40:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  JAL zero, bb37
bb41:
  ADDI t4, zero, 1
  SW t4, 40(sp)
  # implict jump to bb42
bb42:
  LW t4, 40(sp)
  ADD s11, t4, zero
  CALL getint
  ADD s4, a0, zero
  CALL getint
  ADD s6, a0, zero
  SLLIW s4, s4, 6
  LA s10, e
  ADD s4, s10, s4
  SLLIW s6, s6, 2
  ADD s4, s4, s6
  CALL getint
  ADD s6, a0, zero
  SW s6, 0(s4)
  ADDIW t4, s11, 1
  SW t4, 48(sp)
  # implict jump to bb43
bb43:
  LA s4, m
  LW s4, 0(s4)
  LW t4, 48(sp)
  SLT s4, s4, t4
  XORI s4, s4, 1
  BNE s4, zero, bb44
  JAL zero, bb2
bb44:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb42
bb45:
  ADD t4, s4, zero
  SW t4, 52(sp)
  ADDI t4, zero, 1
  SW t4, 4(sp)
  # implict jump to bb46
bb46:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t4, 60(sp)
  SLTI s11, t4, 1
  XORI s11, s11, 1
  BNE s11, zero, bb50
  # implict jump to bb47
bb47:
  LW t3, 64(sp)
  ADDIW t4, t3, 1
  SW t4, 68(sp)
  # implict jump to bb48
bb48:
  LA s4, n
  LW t4, 0(s4)
  SW t4, 44(sp)
  LW t4, 44(sp)
  LW t3, 68(sp)
  SLT s6, t4, t3
  XORI s6, s6, 1
  BNE s6, zero, bb49
  JAL zero, bb1
bb49:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb46
bb50:
  ADDI t4, zero, 1
  SW t4, 56(sp)
  # implict jump to bb51
bb51:
  LW t4, 56(sp)
  ADD s11, t4, zero
  LW t4, 64(sp)
  XOR s4, t4, s11
  SLTIU s4, s4, 1
  BNE s4, zero, bb56
  # implict jump to bb52
bb52:
  LW t4, 64(sp)
  SLLIW s4, t4, 6
  LA s6, e
  ADD s4, s6, s4
  SLLIW s6, s11, 2
  ADD s4, s4, s6
  LUI s6, 16
  ADDIW s6, s6, -1
  SW s6, 0(s4)
  # implict jump to bb53
bb53:
  ADDIW t4, s11, 1
  SW t4, 72(sp)
  # implict jump to bb54
bb54:
  LW t4, 60(sp)
  LW t3, 72(sp)
  SLT s4, t4, t3
  XORI s4, s4, 1
  BNE s4, zero, bb55
  JAL zero, bb47
bb55:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  JAL zero, bb51
bb56:
  LW t4, 64(sp)
  SLLIW s4, t4, 6
  LA s6, e
  ADD s4, s6, s4
  SLLIW s6, s11, 2
  ADD s4, s4, s6
  ADDI s6, zero, 0
  SW s6, 0(s4)
  JAL zero, bb53
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
  BNE s9, zero, bb86
  # implict jump to bb58
bb58:
  # implict jump to bb59
bb59:
  LA s10, book
  ADDI s11, zero, 1
  SW s11, 4(s10)
  ADDI s10, zero, 1
  SUBW s10, s8, s10
  SLTI s10, s10, 1
  XORI s10, s10, 1
  BNE s10, zero, bb61
  # implict jump to bb60
bb60:
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
bb61:
  ADDI s10, zero, 1
  ADD s11, zero, zero
  # implict jump to bb62
bb62:
  ADD t0, s11, zero
  ADD t1, s10, zero
  SLTI t2, s8, 1
  XORI t2, t2, 1
  BNE t2, zero, bb75
  # implict jump to bb63
bb63:
  ADD t2, zero, zero
  # implict jump to bb64
bb64:
  ADD s3, t0, zero
  SLLIW s0, t2, 2
  LA s9, book
  ADD s9, s9, s0
  ADDI t0, zero, 1
  SW t0, 0(s9)
  SLTI s9, s8, 1
  XORI s9, s9, 1
  BNE s9, zero, bb68
  # implict jump to bb65
bb65:
  ADDIW s4, t1, 1
  # implict jump to bb66
bb66:
  ADDI t0, zero, 1
  SUBW t0, s8, t0
  SLT t0, t0, s4
  XORI t0, t0, 1
  BNE t0, zero, bb67
  JAL zero, bb60
bb67:
  ADD s10, s4, zero
  ADD s11, s3, zero
  JAL zero, bb62
bb68:
  ADDI s9, zero, 1
  # implict jump to bb69
bb69:
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
  BNE a5, zero, bb73
  # implict jump to bb70
bb70:
  ADDIW s1, t0, 1
  # implict jump to bb71
bb71:
  SLT t0, s8, s1
  XORI t0, t0, 1
  BNE t0, zero, bb72
  JAL zero, bb65
bb72:
  ADD s9, s1, zero
  JAL zero, bb69
bb73:
  LA a5, dis
  ADD a4, a5, a4
  LW a5, 0(a4)
  LA a6, dis
  ADD a6, a6, s0
  LW a7, 0(a6)
  ADDW a7, a7, a3
  BLT a7, a5, bb74
  JAL zero, bb70
bb74:
  LW a5, 0(a6)
  ADDW a3, a5, a3
  SW a3, 0(a4)
  JAL zero, bb70
bb75:
  LUI a0, 16
  ADDIW a0, a0, -1
  ADD a0, zero, a0
  ADD a1, zero, zero
  ADDI a2, zero, 1
  # implict jump to bb76
bb76:
  ADD a3, a2, zero
  ADD a4, a1, zero
  ADD a5, a0, zero
  SLLIW a6, a3, 2
  LA a7, dis
  ADD a7, a7, a6
  LW a7, 0(a7)
  BLT a7, a5, bb85
  # implict jump to bb77
bb77:
  ADD t6, zero, zero
  # implict jump to bb78
bb78:
  ADD s0, t6, zero
  BNE s0, zero, bb84
  # implict jump to bb79
bb79:
  ADD s9, a4, zero
  ADD a4, a5, zero
  # implict jump to bb80
bb80:
  ADD s5, a4, zero
  ADD s7, s9, zero
  ADDIW s6, a3, 1
  # implict jump to bb81
bb81:
  SLT s9, s8, s6
  XORI s9, s9, 1
  BNE s9, zero, bb83
  # implict jump to bb82
bb82:
  ADD t2, s7, zero
  ADD t0, s0, zero
  JAL zero, bb64
bb83:
  ADD a0, s5, zero
  ADD a1, s7, zero
  ADD a2, s6, zero
  JAL zero, bb76
bb84:
  ADD s9, a3, zero
  ADD a4, a7, zero
  JAL zero, bb80
bb85:
  LA s9, book
  ADD s9, s9, a6
  LW s9, 0(s9)
  SLTIU s9, s9, 1
  ADD t6, s9, zero
  JAL zero, bb78
bb86:
  ADDI t4, zero, 1
  SW t4, 0(sp)
  # implict jump to bb87
bb87:
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
  ADDIW s2, s10, 1
  # implict jump to bb88
bb88:
  LA s10, n
  LW s10, 0(s10)
  SLT s11, s10, s2
  XORI s11, s11, 1
  BNE s11, zero, bb90
  # implict jump to bb89
bb89:
  ADD s8, s10, zero
  JAL zero, bb59
bb90:
  ADD t4, s2, zero
  SW t4, 0(sp)
  JAL zero, bb87
