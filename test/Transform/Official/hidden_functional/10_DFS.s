.global same
.global init
.global add_edge
.global main
.global clear
.global quick_read
.section .bss
vis:
.space 4020
head:
.space 4020
next:
.space 20020
to:
.space 20020





.section .data




maxm:
.word 0x0000138d
cnt:
.word 0x00000000
maxn:
.word 0x000003ed
m:
.word 0x00000000
n:
.word 0x00000000
.section .text
same:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SLLIW s2, s0, 2
  LA s3, vis
  ADD s4, s3, s2
  ADDI s3, zero, 1
  SW s3, 0(s4)
  XOR s3, s0, s1
  SLTIU s0, s3, 1
  BNE s0, zero, bb10
  # implict jump to bb1
bb1:
  LA s0, head
  ADD s3, s0, s2
  LW s0, 0(s3)
  ADD s2, s0, zero
  # implict jump to bb2
bb2:
  ADD s0, s2, zero
  XORI s3, s0, -1
  SLTU s4, zero, s3
  BNE s4, zero, bb4
  # implict jump to bb3
bb3:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb4:
  SLLIW s3, s0, 2
  LA s0, to
  ADD s4, s0, s3
  LW s0, 0(s4)
  SLLIW s4, s0, 2
  LA s5, vis
  ADD s6, s5, s4
  LW s4, 0(s6)
  XOR s5, s4, zero
  SLTU s4, zero, s5
  XORI s5, s4, 1
  XOR s4, s5, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb9
  # implict jump to bb5
bb5:
  ADD s4, zero, zero
  # implict jump to bb6
bb6:
  ADD s0, s4, zero
  BNE s0, zero, bb8
  # implict jump to bb7
bb7:
  LA s0, next
  ADD s4, s0, s3
  LW s0, 0(s4)
  ADD s2, s0, zero
  JAL zero, bb2
bb8:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb9:
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL same
  ADD s0, a0, zero
  XOR s5, s0, zero
  SLTU s0, zero, s5
  ADD s4, s0, zero
  JAL zero, bb6
bb10:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
init:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, zero, zero
  # implict jump to bb12
bb12:
  ADD s1, s0, zero
  SLTI s2, s1, 1005
  BNE s2, zero, bb14
  # implict jump to bb13
bb13:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb14:
  SLLIW s2, s1, 2
  LA s3, head
  ADD s4, s3, s2
  ADDI s2, zero, -1
  SW s2, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb12
add_edge:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  LA s2, cnt
  LW s3, 0(s2)
  SLLIW s2, s3, 2
  LA s3, to
  ADD s4, s3, s2
  SW s1, 0(s4)
  LA s2, cnt
  LW s3, 0(s2)
  SLLIW s2, s3, 2
  LA s3, next
  ADD s4, s3, s2
  SLLIW s2, s0, 2
  LA s3, head
  ADD s5, s3, s2
  LW s2, 0(s5)
  SW s2, 0(s4)
  LA s2, cnt
  LW s3, 0(s2)
  SW s3, 0(s5)
  LA s2, cnt
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, cnt
  SW s2, 0(s3)
  SLLIW s3, s2, 2
  LA s2, to
  ADD s4, s2, s3
  SW s0, 0(s4)
  LA s0, cnt
  LW s2, 0(s0)
  SLLIW s0, s2, 2
  LA s2, next
  ADD s3, s2, s0
  SLLIW s0, s1, 2
  LA s1, head
  ADD s2, s1, s0
  LW s0, 0(s2)
  SW s0, 0(s3)
  LA s0, cnt
  LW s1, 0(s0)
  SW s1, 0(s2)
  LA s0, cnt
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, cnt
  SW s0, 0(s1)
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -320
  SD s11, 216(sp)
  SD s10, 224(sp)
  SD s7, 232(sp)
  SD s0, 240(sp)
  SD s5, 248(sp)
  SD s9, 256(sp)
  SD s8, 264(sp)
  SD s4, 272(sp)
  SD s3, 280(sp)
  SD ra, 288(sp)
  SD s1, 296(sp)
  SD s6, 304(sp)
  SD s2, 312(sp)
  CALL getch
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 4(sp)
  ADD t4, s0, zero
  SW t4, 0(sp)
  # implict jump to bb17
bb17:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 12(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb142
  # implict jump to bb18
bb18:
  ADDI s4, zero, 57
  LW t4, 12(sp)
  SLT s5, s4, t4
  ADD s4, s5, zero
  # implict jump to bb19
bb19:
  ADD s5, s4, zero
  BNE s5, zero, bb138
  # implict jump to bb20
bb20:
  ADD t4, zero, zero
  SW t4, 20(sp)
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  # implict jump to bb21
bb21:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t4, 24(sp)
  SLTI s8, t4, 48
  XORI s9, s8, 1
  BNE s9, zero, bb137
  # implict jump to bb22
bb22:
  ADD s8, zero, zero
  # implict jump to bb23
bb23:
  ADD s9, s8, zero
  BNE s9, zero, bb136
  # implict jump to bb24
bb24:
  LW t4, 8(sp)
  XOR s8, t4, zero
  SLTU s9, zero, s8
  BNE s9, zero, bb135
  # implict jump to bb25
bb25:
  LW t4, 28(sp)
  ADD s8, t4, zero
  # implict jump to bb26
bb26:
  ADD s9, s8, zero
  LA s8, n
  SW s9, 0(s8)
  CALL getch
  ADD s8, a0, zero
  ADD t4, zero, zero
  SW t4, 36(sp)
  ADD t4, s8, zero
  SW t4, 32(sp)
  # implict jump to bb27
bb27:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t4, 44(sp)
  SLTI s2, t4, 48
  BNE s2, zero, bb134
  # implict jump to bb28
bb28:
  ADDI s2, zero, 57
  LW t4, 44(sp)
  SLT s1, s2, t4
  ADD s2, s1, zero
  # implict jump to bb29
bb29:
  ADD s1, s2, zero
  BNE s1, zero, bb130
  # implict jump to bb30
bb30:
  ADD t4, zero, zero
  SW t4, 52(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  # implict jump to bb31
bb31:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t4, 56(sp)
  SLTI s5, t4, 48
  XORI s4, s5, 1
  BNE s4, zero, bb129
  # implict jump to bb32
bb32:
  ADD s4, zero, zero
  # implict jump to bb33
bb33:
  ADD s5, s4, zero
  BNE s5, zero, bb128
  # implict jump to bb34
bb34:
  LW t4, 40(sp)
  XOR s4, t4, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb127
  # implict jump to bb35
bb35:
  LW t4, 60(sp)
  ADD s4, t4, zero
  # implict jump to bb36
bb36:
  ADD s5, s4, zero
  LA s4, m
  SW s5, 0(s4)
  ADD t4, zero, zero
  SW t4, 64(sp)
  # implict jump to bb37
bb37:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t4, 68(sp)
  SLTI s6, t4, 1005
  BNE s6, zero, bb126
  # implict jump to bb38
bb38:
  ADD t4, zero, zero
  SW t4, 104(sp)
  ADD t4, zero, zero
  SW t4, 100(sp)
  ADD t4, zero, zero
  SW t4, 96(sp)
  ADD t4, zero, zero
  SW t4, 92(sp)
  # implict jump to bb39
bb39:
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LA s3, m
  LW s0, 0(s3)
  XOR s3, s0, zero
  SLTU s0, zero, s3
  BNE s0, zero, bb41
  # implict jump to bb40
bb40:
  ADD a0, zero, zero
  LD s11, 216(sp)
  LD s10, 224(sp)
  LD s7, 232(sp)
  LD s0, 240(sp)
  LD s5, 248(sp)
  LD s9, 256(sp)
  LD s8, 264(sp)
  LD s4, 272(sp)
  LD s3, 280(sp)
  LD ra, 288(sp)
  LD s1, 296(sp)
  LD s6, 304(sp)
  LD s2, 312(sp)
  ADDI sp, sp, 320
  JALR zero, 0(ra)
bb41:
  CALL getch
  ADD s0, a0, zero
  ADD t4, s0, zero
  SW t4, 88(sp)
  # implict jump to bb42
bb42:
  LW t4, 88(sp)
  ADD s0, t4, zero
  XORI s4, s0, 81
  SLTU s5, zero, s4
  BNE s5, zero, bb125
  # implict jump to bb43
bb43:
  ADD s4, zero, zero
  # implict jump to bb44
bb44:
  ADD s1, s4, zero
  BNE s1, zero, bb124
  # implict jump to bb45
bb45:
  XORI s1, s0, 81
  SLTIU s0, s1, 1
  BNE s0, zero, bb84
  # implict jump to bb46
bb46:
  CALL getch
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 112(sp)
  ADD t4, s0, zero
  SW t4, 108(sp)
  # implict jump to bb47
bb47:
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  LW t4, 120(sp)
  SLTI s2, t4, 48
  BNE s2, zero, bb83
  # implict jump to bb48
bb48:
  ADDI s2, zero, 57
  LW t4, 120(sp)
  SLT s8, s2, t4
  ADD s2, s8, zero
  # implict jump to bb49
bb49:
  ADD s8, s2, zero
  BNE s8, zero, bb79
  # implict jump to bb50
bb50:
  ADD t4, zero, zero
  SW t4, 128(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  # implict jump to bb51
bb51:
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t4, 132(sp)
  SLTI s9, t4, 48
  XORI s10, s9, 1
  BNE s10, zero, bb78
  # implict jump to bb52
bb52:
  ADD s9, zero, zero
  # implict jump to bb53
bb53:
  ADD s7, s9, zero
  BNE s7, zero, bb77
  # implict jump to bb54
bb54:
  LW t4, 116(sp)
  XOR s7, t4, zero
  SLTU s9, zero, s7
  BNE s9, zero, bb76
  # implict jump to bb55
bb55:
  LW t4, 136(sp)
  ADD s7, t4, zero
  # implict jump to bb56
bb56:
  ADD t4, s7, zero
  SW t4, 140(sp)
  CALL getch
  ADD s7, a0, zero
  ADD s10, zero, zero
  ADD t4, s7, zero
  SW t4, 144(sp)
  # implict jump to bb57
bb57:
  LW t4, 144(sp)
  ADD s7, t4, zero
  ADD s4, s10, zero
  SLTI s1, s7, 48
  BNE s1, zero, bb75
  # implict jump to bb58
bb58:
  ADDI s1, zero, 57
  SLT s5, s1, s7
  ADD s1, s5, zero
  # implict jump to bb59
bb59:
  ADD s5, s1, zero
  BNE s5, zero, bb71
  # implict jump to bb60
bb60:
  ADD s1, zero, zero
  ADD s5, s7, zero
  # implict jump to bb61
bb61:
  ADD s0, s5, zero
  ADD s8, s1, zero
  SLTI s2, s0, 48
  XORI s11, s2, 1
  BNE s11, zero, bb70
  # implict jump to bb62
bb62:
  ADD s2, zero, zero
  # implict jump to bb63
bb63:
  ADD s3, s2, zero
  BNE s3, zero, bb69
  # implict jump to bb64
bb64:
  XOR s2, s4, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb68
  # implict jump to bb65
bb65:
  ADD s2, s8, zero
  # implict jump to bb66
bb66:
  ADD s3, s2, zero
  LA s2, cnt
  LW s11, 0(s2)
  SLLIW s2, s11, 2
  LA s11, to
  ADD s9, s11, s2
  SW s3, 0(s9)
  LA s2, cnt
  LW s9, 0(s2)
  SLLIW s2, s9, 2
  LA s9, next
  ADD s11, s9, s2
  LW t4, 140(sp)
  SLLIW s2, t4, 2
  LA s9, head
  ADD s6, s9, s2
  LW s2, 0(s6)
  SW s2, 0(s11)
  LA s2, cnt
  LW s9, 0(s2)
  SW s9, 0(s6)
  LA s2, cnt
  LW s6, 0(s2)
  ADDIW s2, s6, 1
  LA s6, cnt
  SW s2, 0(s6)
  SLLIW s6, s2, 2
  LA s2, to
  ADD s9, s2, s6
  LW t4, 140(sp)
  SW t4, 0(s9)
  LA s2, cnt
  LW s6, 0(s2)
  SLLIW s2, s6, 2
  LA s6, next
  ADD s9, s6, s2
  SLLIW s2, s3, 2
  LA s6, head
  ADD s11, s6, s2
  LW s2, 0(s11)
  SW s2, 0(s9)
  LA s2, cnt
  LW s6, 0(s2)
  SW s6, 0(s11)
  LA s2, cnt
  LW s6, 0(s2)
  ADDIW s2, s6, 1
  LA s6, cnt
  SW s2, 0(s6)
  ADD t4, s3, zero
  SW t4, 148(sp)
  LW t4, 76(sp)
  ADD s3, t4, zero
  LW t4, 140(sp)
  ADD s6, t4, zero
  LW t4, 84(sp)
  ADD s9, t4, zero
  # implict jump to bb67
bb67:
  ADD s0, s9, zero
  ADD s1, s6, zero
  ADD s6, s3, zero
  LW t4, 148(sp)
  ADD s3, t4, zero
  LA s9, m
  LW s7, 0(s9)
  ADDI s9, zero, 1
  SUBW s5, s7, s9
  LA s7, m
  SW s5, 0(s7)
  ADD t4, s3, zero
  SW t4, 104(sp)
  ADD t4, s6, zero
  SW t4, 100(sp)
  ADD t4, s1, zero
  SW t4, 96(sp)
  ADD t4, s0, zero
  SW t4, 92(sp)
  JAL zero, bb39
bb68:
  SUB s3, zero, s8
  ADD s2, s3, zero
  JAL zero, bb66
bb69:
  ADDI s11, zero, 10
  MULW s2, s8, s11
  ADDW s8, s2, s0
  ADDI s0, zero, 48
  SUBW s2, s8, s0
  CALL getch
  ADD s0, a0, zero
  ADD s1, s2, zero
  ADD s5, s0, zero
  JAL zero, bb61
bb70:
  ADDI s11, zero, 57
  SLT s3, s11, s0
  XORI s11, s3, 1
  ADD s2, s11, zero
  JAL zero, bb63
bb71:
  XORI s0, s7, 45
  SLTIU s1, s0, 1
  BNE s1, zero, bb74
  # implict jump to bb72
bb72:
  ADD s0, s4, zero
  # implict jump to bb73
bb73:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD s10, s1, zero
  ADD t4, s0, zero
  SW t4, 144(sp)
  JAL zero, bb57
bb74:
  ADDI s0, zero, 1
  JAL zero, bb73
bb75:
  ADDI s1, zero, 1
  JAL zero, bb59
bb76:
  LW t4, 136(sp)
  SUB s9, zero, t4
  ADD s7, s9, zero
  JAL zero, bb56
bb77:
  ADDI s0, zero, 10
  LW t4, 136(sp)
  MULW s1, t4, s0
  LW t4, 132(sp)
  ADDW s0, s1, t4
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s0, a0, zero
  ADD t4, s2, zero
  SW t4, 128(sp)
  ADD t4, s0, zero
  SW t4, 124(sp)
  JAL zero, bb51
bb78:
  ADDI s10, zero, 57
  LW t4, 132(sp)
  SLT s7, s10, t4
  XORI s10, s7, 1
  ADD s9, s10, zero
  JAL zero, bb53
bb79:
  LW t4, 120(sp)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  BNE s1, zero, bb82
  # implict jump to bb80
bb80:
  LW t4, 116(sp)
  ADD s0, t4, zero
  # implict jump to bb81
bb81:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD t4, s1, zero
  SW t4, 112(sp)
  ADD t4, s0, zero
  SW t4, 108(sp)
  JAL zero, bb47
bb82:
  ADDI s0, zero, 1
  JAL zero, bb81
bb83:
  ADDI s2, zero, 1
  JAL zero, bb49
bb84:
  CALL getch
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 156(sp)
  ADD t4, s0, zero
  SW t4, 152(sp)
  # implict jump to bb85
bb85:
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  LW t4, 164(sp)
  SLTI s5, t4, 48
  BNE s5, zero, bb123
  # implict jump to bb86
bb86:
  ADDI s5, zero, 57
  LW t4, 164(sp)
  SLT s7, s5, t4
  ADD s5, s7, zero
  # implict jump to bb87
bb87:
  ADD s7, s5, zero
  BNE s7, zero, bb119
  # implict jump to bb88
bb88:
  ADD t4, zero, zero
  SW t4, 172(sp)
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  # implict jump to bb89
bb89:
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  LW t4, 176(sp)
  SLTI s11, t4, 48
  XORI s2, s11, 1
  BNE s2, zero, bb118
  # implict jump to bb90
bb90:
  ADD s2, zero, zero
  # implict jump to bb91
bb91:
  ADD s1, s2, zero
  BNE s1, zero, bb117
  # implict jump to bb92
bb92:
  LW t4, 160(sp)
  XOR s1, t4, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb116
  # implict jump to bb93
bb93:
  LW t4, 180(sp)
  ADD s1, t4, zero
  # implict jump to bb94
bb94:
  ADD t4, s1, zero
  SW t4, 184(sp)
  CALL getch
  ADD s1, a0, zero
  ADD t4, zero, zero
  SW t4, 192(sp)
  ADD t4, s1, zero
  SW t4, 188(sp)
  # implict jump to bb95
bb95:
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 196(sp)
  LW t4, 200(sp)
  SLTI s7, t4, 48
  BNE s7, zero, bb115
  # implict jump to bb96
bb96:
  ADDI s7, zero, 57
  LW t4, 200(sp)
  SLT s5, s7, t4
  ADD s7, s5, zero
  # implict jump to bb97
bb97:
  ADD s5, s7, zero
  BNE s5, zero, bb111
  # implict jump to bb98
bb98:
  ADD t4, zero, zero
  SW t4, 208(sp)
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 204(sp)
  # implict jump to bb99
bb99:
  LW t4, 204(sp)
  ADD s8, t4, zero
  LW t4, 208(sp)
  ADD s10, t4, zero
  SLTI s2, s8, 48
  XORI s4, s2, 1
  BNE s4, zero, bb110
  # implict jump to bb100
bb100:
  ADD s2, zero, zero
  # implict jump to bb101
bb101:
  ADD s4, s2, zero
  BNE s4, zero, bb109
  # implict jump to bb102
bb102:
  LW t4, 196(sp)
  XOR s2, t4, zero
  SLTU s4, zero, s2
  BNE s4, zero, bb108
  # implict jump to bb103
bb103:
  ADD s2, s10, zero
  # implict jump to bb104
bb104:
  ADD s4, s2, zero
  ADDI s2, zero, 1
  # implict jump to bb105
bb105:
  ADD s11, s2, zero
  LA s0, n
  LW s1, 0(s0)
  SLT s0, s1, s11
  XORI s1, s0, 1
  BNE s1, zero, bb107
  # implict jump to bb106
bb106:
  LW t4, 184(sp)
  ADD a0, t4, zero
  ADD a1, s4, zero
  CALL same
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  LW t4, 184(sp)
  ADD s3, t4, zero
  LW t4, 80(sp)
  ADD s6, t4, zero
  ADD s9, s4, zero
  JAL zero, bb67
bb107:
  SLLIW s0, s11, 2
  LA s1, vis
  ADD s3, s1, s0
  SW zero, 0(s3)
  ADDIW s0, s11, 1
  ADD s2, s0, zero
  JAL zero, bb105
bb108:
  SUB s4, zero, s10
  ADD s2, s4, zero
  JAL zero, bb104
bb109:
  ADDI s0, zero, 10
  MULW s1, s10, s0
  ADDW s0, s1, s8
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s0, a0, zero
  ADD t4, s2, zero
  SW t4, 208(sp)
  ADD t4, s0, zero
  SW t4, 204(sp)
  JAL zero, bb99
bb110:
  ADDI s4, zero, 57
  SLT s11, s4, s8
  XORI s4, s11, 1
  ADD s2, s4, zero
  JAL zero, bb101
bb111:
  LW t4, 200(sp)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  BNE s1, zero, bb114
  # implict jump to bb112
bb112:
  LW t4, 196(sp)
  ADD s0, t4, zero
  # implict jump to bb113
bb113:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD t4, s1, zero
  SW t4, 192(sp)
  ADD t4, s0, zero
  SW t4, 188(sp)
  JAL zero, bb95
bb114:
  ADDI s0, zero, 1
  JAL zero, bb113
bb115:
  ADDI s7, zero, 1
  JAL zero, bb97
bb116:
  LW t4, 180(sp)
  SUB s2, zero, t4
  ADD s1, s2, zero
  JAL zero, bb94
bb117:
  ADDI s0, zero, 10
  LW t4, 180(sp)
  MULW s1, t4, s0
  LW t4, 176(sp)
  ADDW s0, s1, t4
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s0, a0, zero
  ADD t4, s2, zero
  SW t4, 172(sp)
  ADD t4, s0, zero
  SW t4, 168(sp)
  JAL zero, bb89
bb118:
  ADDI s11, zero, 57
  LW t4, 176(sp)
  SLT s1, s11, t4
  XORI s11, s1, 1
  ADD s2, s11, zero
  JAL zero, bb91
bb119:
  LW t4, 164(sp)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  BNE s1, zero, bb122
  # implict jump to bb120
bb120:
  LW t4, 160(sp)
  ADD s0, t4, zero
  # implict jump to bb121
bb121:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD t4, s1, zero
  SW t4, 156(sp)
  ADD t4, s0, zero
  SW t4, 152(sp)
  JAL zero, bb85
bb122:
  ADDI s0, zero, 1
  JAL zero, bb121
bb123:
  ADDI s5, zero, 1
  JAL zero, bb87
bb124:
  CALL getch
  ADD s0, a0, zero
  ADD t4, s0, zero
  SW t4, 88(sp)
  JAL zero, bb42
bb125:
  XORI s5, s0, 85
  SLTU s1, zero, s5
  ADD s4, s1, zero
  JAL zero, bb44
bb126:
  LW t4, 68(sp)
  SLLIW s0, t4, 2
  LA s1, head
  ADD s2, s1, s0
  ADDI s0, zero, -1
  SW s0, 0(s2)
  LW t4, 68(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 64(sp)
  JAL zero, bb37
bb127:
  LW t4, 60(sp)
  SUB s5, zero, t4
  ADD s4, s5, zero
  JAL zero, bb36
bb128:
  ADDI s0, zero, 10
  LW t4, 60(sp)
  MULW s1, t4, s0
  LW t4, 56(sp)
  ADDW s0, s1, t4
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s0, a0, zero
  ADD t4, s2, zero
  SW t4, 52(sp)
  ADD t4, s0, zero
  SW t4, 48(sp)
  JAL zero, bb31
bb129:
  ADDI s5, zero, 57
  LW t4, 56(sp)
  SLT s6, s5, t4
  XORI s5, s6, 1
  ADD s4, s5, zero
  JAL zero, bb33
bb130:
  LW t4, 44(sp)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  BNE s1, zero, bb133
  # implict jump to bb131
bb131:
  LW t4, 40(sp)
  ADD s0, t4, zero
  # implict jump to bb132
bb132:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD t4, s1, zero
  SW t4, 36(sp)
  ADD t4, s0, zero
  SW t4, 32(sp)
  JAL zero, bb27
bb133:
  ADDI s0, zero, 1
  JAL zero, bb132
bb134:
  ADDI s2, zero, 1
  JAL zero, bb29
bb135:
  LW t4, 28(sp)
  SUB s9, zero, t4
  ADD s8, s9, zero
  JAL zero, bb26
bb136:
  ADDI s0, zero, 10
  LW t4, 28(sp)
  MULW s1, t4, s0
  LW t4, 24(sp)
  ADDW s0, s1, t4
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s0, a0, zero
  ADD t4, s2, zero
  SW t4, 20(sp)
  ADD t4, s0, zero
  SW t4, 16(sp)
  JAL zero, bb21
bb137:
  ADDI s9, zero, 57
  LW t4, 24(sp)
  SLT s10, s9, t4
  XORI s9, s10, 1
  ADD s8, s9, zero
  JAL zero, bb23
bb138:
  LW t4, 12(sp)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  BNE s1, zero, bb141
  # implict jump to bb139
bb139:
  LW t4, 8(sp)
  ADD s0, t4, zero
  # implict jump to bb140
bb140:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD t4, s1, zero
  SW t4, 4(sp)
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb17
bb141:
  ADDI s0, zero, 1
  JAL zero, bb140
bb142:
  ADDI s4, zero, 1
  JAL zero, bb19
clear:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADDI s0, zero, 1
  # implict jump to bb144
bb144:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb146
  # implict jump to bb145
bb145:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb146:
  SLLIW s2, s1, 2
  LA s3, vis
  ADD s4, s3, s2
  SW zero, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb144
quick_read:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s7, 24(sp)
  SD s10, 32(sp)
  SD s1, 40(sp)
  SD s6, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  # implict jump to bb148
bb148:
  ADD s0, s2, zero
  ADD s3, s1, zero
  SLTI s4, s0, 48
  BNE s4, zero, bb164
  # implict jump to bb149
bb149:
  ADDI s4, zero, 57
  SLT s5, s4, s0
  ADD s4, s5, zero
  # implict jump to bb150
bb150:
  ADD s5, s4, zero
  BNE s5, zero, bb160
  # implict jump to bb151
bb151:
  ADD s4, zero, zero
  ADD s5, s0, zero
  # implict jump to bb152
bb152:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s6, 48
  XORI s9, s8, 1
  BNE s9, zero, bb159
  # implict jump to bb153
bb153:
  ADD s8, zero, zero
  # implict jump to bb154
bb154:
  ADD s9, s8, zero
  BNE s9, zero, bb158
  # implict jump to bb155
bb155:
  XOR s8, s3, zero
  SLTU s9, zero, s8
  BNE s9, zero, bb157
  # implict jump to bb156
bb156:
  ADD a0, s7, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s10, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb157:
  SUB s8, zero, s7
  ADD a0, s8, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s10, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb158:
  ADDI s8, zero, 10
  MULW s9, s7, s8
  ADDW s7, s9, s6
  ADDI s6, zero, 48
  SUBW s8, s7, s6
  CALL getch
  ADD s6, a0, zero
  ADD s4, s8, zero
  ADD s5, s6, zero
  JAL zero, bb152
bb159:
  ADDI s9, zero, 57
  SLT s10, s9, s6
  XORI s9, s10, 1
  ADD s8, s9, zero
  JAL zero, bb154
bb160:
  XORI s4, s0, 45
  SLTIU s0, s4, 1
  BNE s0, zero, bb163
  # implict jump to bb161
bb161:
  ADD s0, s3, zero
  # implict jump to bb162
bb162:
  ADD s3, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD s1, s3, zero
  ADD s2, s0, zero
  JAL zero, bb148
bb163:
  ADDI s0, zero, 1
  JAL zero, bb162
bb164:
  ADDI s4, zero, 1
  JAL zero, bb150
