.global sortB
.global sortC
.global main
.global sortA
.global quick_read
.section .bss
c:
.space 400020
b:
.space 400020
a:
.space 400020
cnt:
.space 1600080

.section .data




n:
.word 0x00000000
.section .text
sortB:
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
  LA s0, n
  LW s0, 0(s0)
  ADDI s1, zero, 0
  BLT s1, s0, bb13
  # implict jump to bb1
bb1:
  ADDI s0, zero, -100
  # implict jump to bb2
bb2:
  SLT s5, s0, zero
  XORI s5, s5, 1
  BNE s5, zero, bb4
  # implict jump to bb3
bb3:
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
bb4:
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb5
bb5:
  ADD s7, s6, zero
  ADD s8, s5, zero
  SLLIW s9, s8, 2
  LA s10, cnt
  ADD s9, s10, s9
  LW s9, 0(s9)
  BNE s9, zero, bb9
  # implict jump to bb6
bb6:
  ADD s10, s7, zero
  # implict jump to bb7
bb7:
  ADDIW t1, s8, 1
  SLT t2, s0, t1
  XORI t2, t2, 1
  BNE t2, zero, bb8
  JAL zero, bb3
bb8:
  ADD s5, t1, zero
  ADD s6, s10, zero
  JAL zero, bb5
bb9:
  # implict jump to bb10
bb10:
  ADD s11, s9, zero
  ADD t0, s7, zero
  SLLIW t1, t0, 2
  ADD t1, a0, t1
  SW s8, 0(t1)
  ADDIW t0, t0, 1
  ADDI t1, zero, 1
  SUBW s11, s11, t1
  BNE s11, zero, bb12
  # implict jump to bb11
bb11:
  ADD s10, t0, zero
  JAL zero, bb7
bb12:
  ADD s7, t0, zero
  ADD s9, s11, zero
  JAL zero, bb10
bb13:
  ADD s1, zero, zero
  ADDI s2, zero, -100
  # implict jump to bb14
bb14:
  ADD s3, s2, zero
  ADD s4, s1, zero
  SLLIW s5, s4, 2
  ADD s5, a0, s5
  LW s6, 0(s5)
  SLLIW s6, s6, 2
  LA s7, cnt
  ADD s6, s7, s6
  LW s7, 0(s6)
  ADDIW s7, s7, 1
  SW s7, 0(s6)
  LW s5, 0(s5)
  BLT s3, s5, bb19
  # implict jump to bb15
bb15:
  # implict jump to bb16
bb16:
  ADDIW s4, s4, 1
  LA s5, n
  LW s5, 0(s5)
  BLT s4, s5, bb18
  # implict jump to bb17
bb17:
  ADD s0, s3, zero
  JAL zero, bb2
bb18:
  ADD s1, s4, zero
  ADD s2, s3, zero
  JAL zero, bb14
bb19:
  ADD s3, s5, zero
  JAL zero, bb16
sortC:
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
  LA s0, n
  LW s0, 0(s0)
  BLT zero, s0, bb22
  # implict jump to bb21
bb21:
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
bb22:
  ADD s1, zero, zero
  # implict jump to bb23
bb23:
  ADD s2, s1, zero
  ADD s3, s0, zero
  ADDIW s4, s2, 1
  BLT s4, s3, bb27
  # implict jump to bb24
bb24:
  ADD s5, s2, zero
  # implict jump to bb25
bb25:
  SLLIW s10, s2, 2
  ADD s10, a0, s10
  LW s11, 0(s10)
  SLLIW s5, s5, 2
  ADD s5, a0, s5
  LW t0, 0(s5)
  SW t0, 0(s10)
  SW s11, 0(s5)
  LA s5, n
  LW s5, 0(s5)
  BLT s4, s5, bb26
  JAL zero, bb21
bb26:
  ADD s0, s5, zero
  ADD s1, s4, zero
  JAL zero, bb23
bb27:
  ADD s6, s2, zero
  ADD s7, s4, zero
  # implict jump to bb28
bb28:
  ADD s8, s7, zero
  ADD s9, s6, zero
  SLLIW s10, s8, 2
  ADD s10, a0, s10
  LW s10, 0(s10)
  SLLIW s11, s9, 2
  ADD s11, a0, s11
  LW s11, 0(s11)
  BLT s10, s11, bb33
  # implict jump to bb29
bb29:
  # implict jump to bb30
bb30:
  ADDIW s8, s8, 1
  BLT s8, s3, bb32
  # implict jump to bb31
bb31:
  ADD s5, s9, zero
  JAL zero, bb25
bb32:
  ADD s6, s9, zero
  ADD s7, s8, zero
  JAL zero, bb28
bb33:
  ADD s9, s8, zero
  JAL zero, bb30
main:
  ADDI sp, sp, -304
  SD ra, 184(sp)
  SD s0, 192(sp)
  SD s1, 200(sp)
  SD s2, 208(sp)
  SD s5, 216(sp)
  SD s4, 232(sp)
  SD s3, 240(sp)
  SD s7, 248(sp)
  SD s8, 256(sp)
  SD s9, 264(sp)
  SD s10, 272(sp)
  SD s11, 280(sp)
  SD s6, 288(sp)
  CALL getch
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 120(sp)
  ADD t4, s0, zero
  SW t4, 116(sp)
  # implict jump to bb35
bb35:
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t4, 128(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb130
  # implict jump to bb36
bb36:
  ADDI s4, zero, 57
  LW t4, 128(sp)
  SLT s4, s4, t4
  # implict jump to bb37
bb37:
  BNE s4, zero, bb126
  # implict jump to bb38
bb38:
  ADD t4, zero, zero
  SW t4, 136(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  # implict jump to bb39
bb39:
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t4, 140(sp)
  SLTI s8, t4, 48
  XORI s8, s8, 1
  BNE s8, zero, bb125
  # implict jump to bb40
bb40:
  ADD s8, zero, zero
  # implict jump to bb41
bb41:
  BNE s8, zero, bb124
  # implict jump to bb42
bb42:
  LW t4, 124(sp)
  BNE t4, zero, bb123
  # implict jump to bb43
bb43:
  LW t4, 144(sp)
  ADD s8, t4, zero
  # implict jump to bb44
bb44:
  LA s9, n
  SW s8, 0(s9)
  LA s8, n
  LW s8, 0(s8)
  BNE zero, s8, bb102
  # implict jump to bb45
bb45:
  LA s11, n
  LW s11, 0(s11)
  BLT zero, s11, bb90
  # implict jump to bb46
bb46:
  LA s7, n
  LW s7, 0(s7)
  BLT zero, s7, bb83
  # implict jump to bb47
bb47:
  ADDI s7, zero, -100
  # implict jump to bb48
bb48:
  ADD t4, s7, zero
  SW t4, 72(sp)
  LW t4, 72(sp)
  SLT s5, t4, zero
  XORI s5, s5, 1
  BNE s5, zero, bb74
  # implict jump to bb49
bb49:
  LA s10, n
  LW s10, 0(s10)
  BLT zero, s10, bb62
  # implict jump to bb50
bb50:
  LA s0, n
  LW s0, 0(s0)
  BNE s0, zero, bb59
  # implict jump to bb51
bb51:
  LA s5, n
  LW s5, 0(s5)
  ADD s6, zero, zero
  # implict jump to bb52
bb52:
  ADD s7, s6, zero
  SUBW s9, s7, s5
  BNE s9, zero, bb54
  # implict jump to bb53
bb53:
  ADDI a0, zero, -123
  LD ra, 184(sp)
  LD s0, 192(sp)
  LD s1, 200(sp)
  LD s2, 208(sp)
  LD s5, 216(sp)
  LD s4, 232(sp)
  LD s3, 240(sp)
  LD s7, 248(sp)
  LD s8, 256(sp)
  LD s9, 264(sp)
  LD s10, 272(sp)
  LD s11, 280(sp)
  LD s6, 288(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb54:
  SLLIW s9, s7, 2
  LA s10, b
  ADD s10, s10, s9
  LW s10, 0(s10)
  BNE s10, zero, bb58
  # implict jump to bb55
bb55:
  LA s10, c
  ADD s9, s10, s9
  LW s9, 0(s9)
  BNE s9, zero, bb57
  # implict jump to bb56
bb56:
  ADDIW s7, s7, 1
  ADD s6, s7, zero
  JAL zero, bb52
bb57:
  ADDI a0, zero, 2
  LD ra, 184(sp)
  LD s0, 192(sp)
  LD s1, 200(sp)
  LD s2, 208(sp)
  LD s5, 216(sp)
  LD s4, 232(sp)
  LD s3, 240(sp)
  LD s7, 248(sp)
  LD s8, 256(sp)
  LD s9, 264(sp)
  LD s10, 272(sp)
  LD s11, 280(sp)
  LD s6, 288(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb58:
  ADDI a0, zero, 1
  LD ra, 184(sp)
  LD s0, 192(sp)
  LD s1, 200(sp)
  LD s2, 208(sp)
  LD s5, 216(sp)
  LD s4, 232(sp)
  LD s3, 240(sp)
  LD s7, 248(sp)
  LD s8, 256(sp)
  LD s9, 264(sp)
  LD s10, 272(sp)
  LD s11, 280(sp)
  LD s6, 288(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb59:
  ADD s0, zero, zero
  # implict jump to bb60
bb60:
  ADD s5, s0, zero
  SLLIW s6, s5, 2
  LA s9, b
  ADD s9, s9, s6
  LW s7, 0(s9)
  LA s2, a
  ADD s2, s2, s6
  LW s2, 0(s2)
  SUBW s7, s7, s2
  SW s7, 0(s9)
  LA s9, c
  ADD s6, s9, s6
  LW s9, 0(s6)
  SUBW s7, s9, s7
  SUBW s2, s7, s2
  SW s2, 0(s6)
  ADDIW s2, s5, 1
  LA s5, n
  LW s5, 0(s5)
  SUBW s5, s5, s2
  BNE s5, zero, bb61
  JAL zero, bb51
bb61:
  ADD s0, s2, zero
  JAL zero, bb60
bb62:
  LA s10, n
  LW t4, 0(s10)
  SW t4, 108(sp)
  ADD s1, zero, zero
  # implict jump to bb63
bb63:
  ADD t4, s1, zero
  SW t4, 112(sp)
  LW t3, 112(sp)
  ADDIW t4, t3, 1
  SW t4, 148(sp)
  LW t4, 148(sp)
  LW t3, 108(sp)
  BLT t4, t3, bb67
  # implict jump to bb64
bb64:
  LW t4, 112(sp)
  ADD s0, t4, zero
  # implict jump to bb65
bb65:
  LW t4, 112(sp)
  SLLIW s5, t4, 2
  LA s6, c
  ADD s5, s6, s5
  LW s6, 0(s5)
  SLLIW s0, s0, 2
  LA s9, c
  ADD s0, s9, s0
  LW s9, 0(s0)
  SW s9, 0(s5)
  SW s6, 0(s0)
  LA s0, n
  LW s0, 0(s0)
  LW t4, 148(sp)
  BLT t4, s0, bb66
  JAL zero, bb50
bb66:
  LW t4, 148(sp)
  ADD s1, t4, zero
  JAL zero, bb63
bb67:
  LW t4, 112(sp)
  ADD s8, t4, zero
  LW t4, 148(sp)
  ADD s11, t4, zero
  # implict jump to bb68
bb68:
  ADD s3, s11, zero
  ADD s6, s8, zero
  SLLIW s4, s3, 2
  LA s5, c
  ADD s4, s5, s4
  LW s4, 0(s4)
  SLLIW s5, s6, 2
  LA s9, c
  ADD s5, s9, s5
  LW s5, 0(s5)
  BLT s4, s5, bb73
  # implict jump to bb69
bb69:
  ADD s4, s6, zero
  # implict jump to bb70
bb70:
  ADDIW s3, s3, 1
  LA s5, n
  LW s5, 0(s5)
  BLT s3, s5, bb72
  # implict jump to bb71
bb71:
  ADD s0, s4, zero
  JAL zero, bb65
bb72:
  ADD s8, s4, zero
  ADD s11, s3, zero
  JAL zero, bb68
bb73:
  ADD s4, s3, zero
  JAL zero, bb70
bb74:
  ADD t4, zero, zero
  SW t4, 100(sp)
  ADD t4, zero, zero
  SW t4, 92(sp)
  # implict jump to bb75
bb75:
  LW t4, 92(sp)
  ADD s11, t4, zero
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t4, 68(sp)
  SLLIW s0, t4, 2
  LA s4, cnt
  ADD s0, s4, s0
  LW s0, 0(s0)
  BNE s0, zero, bb79
  # implict jump to bb76
bb76:
  ADD s4, s11, zero
  # implict jump to bb77
bb77:
  ADD t4, s4, zero
  SW t4, 96(sp)
  LW t3, 68(sp)
  ADDIW t4, t3, 1
  SW t4, 12(sp)
  LW t4, 72(sp)
  LW t3, 12(sp)
  SLT s10, t4, t3
  XORI s10, s10, 1
  BNE s10, zero, bb78
  JAL zero, bb49
bb78:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  JAL zero, bb75
bb79:
  ADD t4, s11, zero
  SW t4, 84(sp)
  ADD t4, s0, zero
  SW t4, 76(sp)
  # implict jump to bb80
bb80:
  LW t4, 76(sp)
  ADD s9, t4, zero
  LW t4, 84(sp)
  ADD s10, t4, zero
  SLLIW s3, s10, 2
  LA s8, b
  ADD s3, s8, s3
  LW t4, 68(sp)
  SW t4, 0(s3)
  ADDIW t4, s10, 1
  SW t4, 88(sp)
  ADDI s8, zero, 1
  SUBW t4, s9, s8
  SW t4, 80(sp)
  LW t4, 80(sp)
  BNE t4, zero, bb82
  # implict jump to bb81
bb81:
  LW t4, 88(sp)
  ADD s4, t4, zero
  JAL zero, bb77
bb82:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  JAL zero, bb80
bb83:
  ADD t4, zero, zero
  SW t4, 60(sp)
  ADDI t4, zero, -100
  SW t4, 0(sp)
  # implict jump to bb84
bb84:
  LW t4, 0(sp)
  ADD s3, t4, zero
  LW t4, 60(sp)
  ADD s11, t4, zero
  SLLIW s1, s11, 2
  LA s6, b
  ADD s1, s6, s1
  LW s1, 0(s1)
  SLLIW s6, s1, 2
  LA s5, cnt
  ADD s5, s5, s6
  LW s6, 0(s5)
  ADDIW s6, s6, 1
  SW s6, 0(s5)
  BLT s3, s1, bb89
  # implict jump to bb85
bb85:
  # implict jump to bb86
bb86:
  ADD t4, s3, zero
  SW t4, 56(sp)
  ADDIW t4, s11, 1
  SW t4, 64(sp)
  LA s5, n
  LW s5, 0(s5)
  LW t4, 64(sp)
  BLT t4, s5, bb88
  # implict jump to bb87
bb87:
  LW t4, 56(sp)
  ADD s7, t4, zero
  JAL zero, bb48
bb88:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  JAL zero, bb84
bb89:
  ADD s3, s1, zero
  JAL zero, bb86
bb90:
  LA s11, n
  LW t4, 0(s11)
  SW t4, 20(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  # implict jump to bb91
bb91:
  LW t4, 40(sp)
  ADD s1, t4, zero
  LW t4, 48(sp)
  ADD s2, t4, zero
  ADDIW t4, s2, 1
  SW t4, 16(sp)
  LW t4, 16(sp)
  LW t3, 20(sp)
  BLT t4, t3, bb95
  # implict jump to bb92
bb92:
  ADD s4, s1, zero
  # implict jump to bb93
bb93:
  ADD t4, s4, zero
  SW t4, 44(sp)
  LA s7, n
  LW s7, 0(s7)
  LW t4, 16(sp)
  BLT t4, s7, bb94
  JAL zero, bb46
bb94:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb91
bb95:
  SLLIW s2, s2, 2
  LA s5, a
  ADD t4, s5, s2
  SD t4, 224(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  ADD t4, s1, zero
  SW t4, 24(sp)
  # implict jump to bb96
bb96:
  LW t4, 24(sp)
  ADD s6, t4, zero
  LW t4, 32(sp)
  ADD s7, t4, zero
  LD t4, 224(sp)
  LW s8, 0(t4)
  SLLIW s10, s7, 2
  LA s2, a
  ADD s2, s2, s10
  LW s10, 0(s2)
  BLT s10, s8, bb101
  # implict jump to bb97
bb97:
  # implict jump to bb98
bb98:
  ADD t4, s6, zero
  SW t4, 28(sp)
  ADDIW t4, s7, 1
  SW t4, 36(sp)
  LA s7, n
  LW s7, 0(s7)
  LW t4, 36(sp)
  BLT t4, s7, bb100
  # implict jump to bb99
bb99:
  LW t4, 28(sp)
  ADD s4, t4, zero
  JAL zero, bb93
bb100:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  JAL zero, bb96
bb101:
  LD t4, 224(sp)
  LW s8, 0(t4)
  LW s10, 0(s2)
  LD t4, 224(sp)
  SW s10, 0(t4)
  SW s8, 0(s2)
  ADD s6, s8, zero
  JAL zero, bb98
bb102:
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb103
bb103:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LW t3, 156(sp)
  SLLIW t4, t3, 2
  SW t4, 152(sp)
  LA s11, a
  LW t3, 152(sp)
  ADD t4, s11, t3
  SD t4, 296(sp)
  CALL getch
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 164(sp)
  ADD t4, s0, zero
  SW t4, 160(sp)
  # implict jump to bb104
bb104:
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LW t4, 172(sp)
  SLTI s5, t4, 48
  BNE s5, zero, bb122
  # implict jump to bb105
bb105:
  ADDI s5, zero, 57
  LW t4, 172(sp)
  SLT s5, s5, t4
  # implict jump to bb106
bb106:
  BNE s5, zero, bb118
  # implict jump to bb107
bb107:
  ADD t4, zero, zero
  SW t4, 180(sp)
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  # implict jump to bb108
bb108:
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t4, 104(sp)
  SLTI s11, t4, 48
  XORI s11, s11, 1
  BNE s11, zero, bb117
  # implict jump to bb109
bb109:
  ADD s11, zero, zero
  # implict jump to bb110
bb110:
  BNE s11, zero, bb116
  # implict jump to bb111
bb111:
  LW t4, 168(sp)
  BNE t4, zero, bb115
  # implict jump to bb112
bb112:
  LW t4, 52(sp)
  ADD s10, t4, zero
  # implict jump to bb113
bb113:
  LD t4, 296(sp)
  SW s10, 0(t4)
  LA s11, b
  LW t4, 152(sp)
  ADD s11, s11, t4
  SW s10, 0(s11)
  LA s11, c
  LW t4, 152(sp)
  ADD s11, s11, t4
  SW s10, 0(s11)
  LW t3, 156(sp)
  ADDIW t4, t3, 1
  SW t4, 8(sp)
  LA s11, n
  LW s11, 0(s11)
  LW t4, 8(sp)
  BNE t4, s11, bb114
  JAL zero, bb45
bb114:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb103
bb115:
  LW t4, 52(sp)
  SUB s11, zero, t4
  ADD s10, s11, zero
  JAL zero, bb113
bb116:
  ADDI s0, zero, 10
  LW t4, 52(sp)
  MULW s0, t4, s0
  LW t4, 104(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 180(sp)
  ADD t4, s1, zero
  SW t4, 176(sp)
  JAL zero, bb108
bb117:
  ADDI s10, zero, 57
  LW t4, 104(sp)
  SLT s10, s10, t4
  XORI s10, s10, 1
  ADD s11, s10, zero
  JAL zero, bb110
bb118:
  LW t4, 172(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb121
  # implict jump to bb119
bb119:
  LW t4, 168(sp)
  ADD s0, t4, zero
  # implict jump to bb120
bb120:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 164(sp)
  ADD t4, s1, zero
  SW t4, 160(sp)
  JAL zero, bb104
bb121:
  ADDI s0, zero, 1
  JAL zero, bb120
bb122:
  ADDI s5, zero, 1
  JAL zero, bb106
bb123:
  LW t4, 144(sp)
  SUB s9, zero, t4
  ADD s8, s9, zero
  JAL zero, bb44
bb124:
  ADDI s0, zero, 10
  LW t4, 144(sp)
  MULW s0, t4, s0
  LW t4, 140(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 136(sp)
  ADD t4, s1, zero
  SW t4, 132(sp)
  JAL zero, bb39
bb125:
  ADDI s9, zero, 57
  LW t4, 140(sp)
  SLT s9, s9, t4
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb41
bb126:
  LW t4, 128(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb129
  # implict jump to bb127
bb127:
  LW t4, 124(sp)
  ADD s0, t4, zero
  # implict jump to bb128
bb128:
  CALL getch
  ADD t4, s0, zero
  SW t4, 120(sp)
  ADD t4, a0, zero
  SW t4, 116(sp)
  JAL zero, bb35
bb129:
  ADDI s0, zero, 1
  JAL zero, bb128
bb130:
  ADDI s4, zero, 1
  JAL zero, bb37
sortA:
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
  LA s0, n
  LW s0, 0(s0)
  BLT zero, s0, bb133
  # implict jump to bb132
bb132:
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
bb133:
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb134
bb134:
  ADD s2, s1, zero
  ADD s3, s0, zero
  ADDIW s4, s3, 1
  LA s5, n
  LW s5, 0(s5)
  BLT s4, s5, bb138
  # implict jump to bb135
bb135:
  ADD s5, s2, zero
  # implict jump to bb136
bb136:
  LA s9, n
  LW s9, 0(s9)
  BLT s4, s9, bb137
  JAL zero, bb132
bb137:
  ADD s0, s4, zero
  ADD s1, s5, zero
  JAL zero, bb134
bb138:
  SLLIW s3, s3, 2
  ADD s3, a0, s3
  ADD s6, s4, zero
  # implict jump to bb139
bb139:
  ADD s7, s2, zero
  ADD s8, s6, zero
  LW s9, 0(s3)
  SLLIW s10, s8, 2
  ADD s10, a0, s10
  LW s11, 0(s10)
  BLT s11, s9, bb144
  # implict jump to bb140
bb140:
  # implict jump to bb141
bb141:
  ADDIW s8, s8, 1
  LA s9, n
  LW s9, 0(s9)
  BLT s8, s9, bb143
  # implict jump to bb142
bb142:
  ADD s5, s7, zero
  JAL zero, bb136
bb143:
  ADD s6, s8, zero
  ADD s2, s7, zero
  JAL zero, bb139
bb144:
  LW s9, 0(s3)
  LW s11, 0(s10)
  SW s11, 0(s3)
  SW s9, 0(s10)
  ADD s7, s9, zero
  JAL zero, bb141
quick_read:
  ADDI sp, sp, -96
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
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb146
bb146:
  ADD s2, s0, zero
  ADD s3, s1, zero
  SLTI s4, s2, 48
  BNE s4, zero, bb162
  # implict jump to bb147
bb147:
  ADDI s4, zero, 57
  SLT s4, s4, s2
  # implict jump to bb148
bb148:
  BNE s4, zero, bb158
  # implict jump to bb149
bb149:
  ADD s4, zero, zero
  ADD s5, s2, zero
  # implict jump to bb150
bb150:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s6, 48
  XORI s8, s8, 1
  BNE s8, zero, bb157
  # implict jump to bb151
bb151:
  ADD s8, zero, zero
  # implict jump to bb152
bb152:
  BNE s8, zero, bb156
  # implict jump to bb153
bb153:
  BNE s3, zero, bb155
  # implict jump to bb154
bb154:
  ADD a0, s7, zero
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
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb155:
  SUB s8, zero, s7
  ADD a0, s8, zero
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
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb156:
  ADDI s8, zero, 10
  MULW s7, s7, s8
  ADDW s6, s7, s6
  ADDI s7, zero, 48
  SUBW s6, s6, s7
  CALL getch
  ADD s7, a0, zero
  ADD s4, s6, zero
  ADD s5, s7, zero
  JAL zero, bb150
bb157:
  ADDI s9, zero, 57
  SLT s9, s9, s6
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb152
bb158:
  XORI s2, s2, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb161
  # implict jump to bb159
bb159:
  ADD s2, s3, zero
  # implict jump to bb160
bb160:
  CALL getch
  ADD s1, s2, zero
  ADD s0, a0, zero
  JAL zero, bb146
bb161:
  ADDI s2, zero, 1
  JAL zero, bb160
bb162:
  ADDI s4, zero, 1
  JAL zero, bb148
