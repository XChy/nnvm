.global main
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
  # implict jump to bb1
bb1:
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t4, 128(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb96
  # implict jump to bb2
bb2:
  ADDI s4, zero, 57
  LW t4, 128(sp)
  SLT s4, s4, t4
  # implict jump to bb3
bb3:
  BNE s4, zero, bb92
  # implict jump to bb4
bb4:
  ADD t4, zero, zero
  SW t4, 136(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  # implict jump to bb5
bb5:
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t4, 140(sp)
  SLTI s8, t4, 48
  XORI s8, s8, 1
  BNE s8, zero, bb91
  # implict jump to bb6
bb6:
  ADD s8, zero, zero
  # implict jump to bb7
bb7:
  BNE s8, zero, bb90
  # implict jump to bb8
bb8:
  LW t4, 124(sp)
  BNE t4, zero, bb89
  # implict jump to bb9
bb9:
  LW t4, 144(sp)
  ADD s8, t4, zero
  # implict jump to bb10
bb10:
  LA s9, n
  SW s8, 0(s9)
  LA s8, n
  LW s8, 0(s8)
  BNE zero, s8, bb68
  # implict jump to bb11
bb11:
  LA s11, n
  LW s11, 0(s11)
  BLT zero, s11, bb56
  # implict jump to bb12
bb12:
  LA s7, n
  LW s7, 0(s7)
  BLT zero, s7, bb49
  # implict jump to bb13
bb13:
  ADDI s7, zero, -100
  # implict jump to bb14
bb14:
  ADD t4, s7, zero
  SW t4, 72(sp)
  LW t4, 72(sp)
  SLT s5, t4, zero
  XORI s5, s5, 1
  BNE s5, zero, bb40
  # implict jump to bb15
bb15:
  LA s10, n
  LW s10, 0(s10)
  BLT zero, s10, bb28
  # implict jump to bb16
bb16:
  LA s0, n
  LW s0, 0(s0)
  BNE s0, zero, bb25
  # implict jump to bb17
bb17:
  LA s5, n
  LW s5, 0(s5)
  ADD s6, zero, zero
  # implict jump to bb18
bb18:
  ADD s7, s6, zero
  SUBW s9, s7, s5
  BNE s9, zero, bb20
  # implict jump to bb19
bb19:
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
bb20:
  SLLIW s9, s7, 2
  LA s10, b
  ADD s10, s10, s9
  LW s10, 0(s10)
  BNE s10, zero, bb24
  # implict jump to bb21
bb21:
  LA s10, c
  ADD s9, s10, s9
  LW s9, 0(s9)
  BNE s9, zero, bb23
  # implict jump to bb22
bb22:
  ADDIW s7, s7, 1
  ADD s6, s7, zero
  JAL zero, bb18
bb23:
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
bb24:
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
bb25:
  ADD s0, zero, zero
  # implict jump to bb26
bb26:
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
  BNE s5, zero, bb27
  JAL zero, bb17
bb27:
  ADD s0, s2, zero
  JAL zero, bb26
bb28:
  LA s10, n
  LW t4, 0(s10)
  SW t4, 108(sp)
  ADD s1, zero, zero
  # implict jump to bb29
bb29:
  ADD t4, s1, zero
  SW t4, 112(sp)
  LW t3, 112(sp)
  ADDIW t4, t3, 1
  SW t4, 148(sp)
  LW t4, 148(sp)
  LW t3, 108(sp)
  BLT t4, t3, bb33
  # implict jump to bb30
bb30:
  LW t4, 112(sp)
  ADD s0, t4, zero
  # implict jump to bb31
bb31:
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
  BLT t4, s0, bb32
  JAL zero, bb16
bb32:
  LW t4, 148(sp)
  ADD s1, t4, zero
  JAL zero, bb29
bb33:
  LW t4, 112(sp)
  ADD s8, t4, zero
  LW t4, 148(sp)
  ADD s11, t4, zero
  # implict jump to bb34
bb34:
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
  BLT s4, s5, bb39
  # implict jump to bb35
bb35:
  ADD s4, s6, zero
  # implict jump to bb36
bb36:
  ADDIW s3, s3, 1
  LA s5, n
  LW s5, 0(s5)
  BLT s3, s5, bb38
  # implict jump to bb37
bb37:
  ADD s0, s4, zero
  JAL zero, bb31
bb38:
  ADD s8, s4, zero
  ADD s11, s3, zero
  JAL zero, bb34
bb39:
  ADD s4, s3, zero
  JAL zero, bb36
bb40:
  ADD t4, zero, zero
  SW t4, 100(sp)
  ADD t4, zero, zero
  SW t4, 92(sp)
  # implict jump to bb41
bb41:
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
  BNE s0, zero, bb45
  # implict jump to bb42
bb42:
  ADD s4, s11, zero
  # implict jump to bb43
bb43:
  ADD t4, s4, zero
  SW t4, 96(sp)
  LW t3, 68(sp)
  ADDIW t4, t3, 1
  SW t4, 12(sp)
  LW t4, 72(sp)
  LW t3, 12(sp)
  SLT s10, t4, t3
  XORI s10, s10, 1
  BNE s10, zero, bb44
  JAL zero, bb15
bb44:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  JAL zero, bb41
bb45:
  ADD t4, s11, zero
  SW t4, 84(sp)
  ADD t4, s0, zero
  SW t4, 76(sp)
  # implict jump to bb46
bb46:
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
  BNE t4, zero, bb48
  # implict jump to bb47
bb47:
  LW t4, 88(sp)
  ADD s4, t4, zero
  JAL zero, bb43
bb48:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  JAL zero, bb46
bb49:
  ADD t4, zero, zero
  SW t4, 60(sp)
  ADDI t4, zero, -100
  SW t4, 0(sp)
  # implict jump to bb50
bb50:
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
  BLT s3, s1, bb55
  # implict jump to bb51
bb51:
  # implict jump to bb52
bb52:
  ADD t4, s3, zero
  SW t4, 56(sp)
  ADDIW t4, s11, 1
  SW t4, 64(sp)
  LA s5, n
  LW s5, 0(s5)
  LW t4, 64(sp)
  BLT t4, s5, bb54
  # implict jump to bb53
bb53:
  LW t4, 56(sp)
  ADD s7, t4, zero
  JAL zero, bb14
bb54:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  JAL zero, bb50
bb55:
  ADD s3, s1, zero
  JAL zero, bb52
bb56:
  LA s11, n
  LW t4, 0(s11)
  SW t4, 20(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  # implict jump to bb57
bb57:
  LW t4, 40(sp)
  ADD s1, t4, zero
  LW t4, 48(sp)
  ADD s2, t4, zero
  ADDIW t4, s2, 1
  SW t4, 16(sp)
  LW t4, 16(sp)
  LW t3, 20(sp)
  BLT t4, t3, bb61
  # implict jump to bb58
bb58:
  ADD s4, s1, zero
  # implict jump to bb59
bb59:
  ADD t4, s4, zero
  SW t4, 44(sp)
  LA s7, n
  LW s7, 0(s7)
  LW t4, 16(sp)
  BLT t4, s7, bb60
  JAL zero, bb12
bb60:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb57
bb61:
  SLLIW s2, s2, 2
  LA s5, a
  ADD t4, s5, s2
  SD t4, 224(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  ADD t4, s1, zero
  SW t4, 24(sp)
  # implict jump to bb62
bb62:
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
  BLT s10, s8, bb67
  # implict jump to bb63
bb63:
  # implict jump to bb64
bb64:
  ADD t4, s6, zero
  SW t4, 28(sp)
  ADDIW t4, s7, 1
  SW t4, 36(sp)
  LA s7, n
  LW s7, 0(s7)
  LW t4, 36(sp)
  BLT t4, s7, bb66
  # implict jump to bb65
bb65:
  LW t4, 28(sp)
  ADD s4, t4, zero
  JAL zero, bb59
bb66:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  JAL zero, bb62
bb67:
  LD t4, 224(sp)
  LW s8, 0(t4)
  LW s10, 0(s2)
  LD t4, 224(sp)
  SW s10, 0(t4)
  SW s8, 0(s2)
  ADD s6, s8, zero
  JAL zero, bb64
bb68:
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb69
bb69:
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
  # implict jump to bb70
bb70:
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LW t4, 172(sp)
  SLTI s5, t4, 48
  BNE s5, zero, bb88
  # implict jump to bb71
bb71:
  ADDI s5, zero, 57
  LW t4, 172(sp)
  SLT s5, s5, t4
  # implict jump to bb72
bb72:
  BNE s5, zero, bb84
  # implict jump to bb73
bb73:
  ADD t4, zero, zero
  SW t4, 180(sp)
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  # implict jump to bb74
bb74:
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t4, 104(sp)
  SLTI s11, t4, 48
  XORI s11, s11, 1
  BNE s11, zero, bb83
  # implict jump to bb75
bb75:
  ADD s11, zero, zero
  # implict jump to bb76
bb76:
  BNE s11, zero, bb82
  # implict jump to bb77
bb77:
  LW t4, 168(sp)
  BNE t4, zero, bb81
  # implict jump to bb78
bb78:
  LW t4, 52(sp)
  ADD s10, t4, zero
  # implict jump to bb79
bb79:
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
  BNE t4, s11, bb80
  JAL zero, bb11
bb80:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb69
bb81:
  LW t4, 52(sp)
  SUBW s11, zero, t4
  ADD s10, s11, zero
  JAL zero, bb79
bb82:
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
  JAL zero, bb74
bb83:
  ADDI s10, zero, 57
  LW t4, 104(sp)
  SLT s10, s10, t4
  XORI s10, s10, 1
  ADD s11, s10, zero
  JAL zero, bb76
bb84:
  LW t4, 172(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb87
  # implict jump to bb85
bb85:
  LW t4, 168(sp)
  ADD s0, t4, zero
  # implict jump to bb86
bb86:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 164(sp)
  ADD t4, s1, zero
  SW t4, 160(sp)
  JAL zero, bb70
bb87:
  ADDI s0, zero, 1
  JAL zero, bb86
bb88:
  ADDI s5, zero, 1
  JAL zero, bb72
bb89:
  LW t4, 144(sp)
  SUBW s9, zero, t4
  ADD s8, s9, zero
  JAL zero, bb10
bb90:
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
  JAL zero, bb5
bb91:
  ADDI s9, zero, 57
  LW t4, 140(sp)
  SLT s9, s9, t4
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb7
bb92:
  LW t4, 128(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb95
  # implict jump to bb93
bb93:
  LW t4, 124(sp)
  ADD s0, t4, zero
  # implict jump to bb94
bb94:
  CALL getch
  ADD t4, s0, zero
  SW t4, 120(sp)
  ADD t4, a0, zero
  SW t4, 116(sp)
  JAL zero, bb1
bb95:
  ADDI s0, zero, 1
  JAL zero, bb94
bb96:
  ADDI s4, zero, 1
  JAL zero, bb3
