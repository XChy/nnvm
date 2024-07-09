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
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, vis
  ADD s4, s2, s3
  ADDI s2, zero, 1
  SW s2, 0(s4)
  XOR s2, s0, s1
  SLTIU s0, s2, 1
  BNE s0, zero, bb1
  JAL zero, bb2
bb1:
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
bb2:
  LA s0, head
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADD s2, s0, zero
  JAL zero, bb3
bb3:
  ADD s0, s2, zero
  XORI s3, s0, -1
  SLTU s4, zero, s3
  BNE s4, zero, bb4
  JAL zero, bb5
bb4:
  ADDI s3, zero, 4
  MULW s4, s0, s3
  LA s0, to
  ADD s3, s0, s4
  LW s0, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s0, s3
  LA s3, vis
  ADD s6, s3, s5
  LW s3, 0(s6)
  XOR s5, s3, zero
  SLTU s3, zero, s5
  XORI s5, s3, 1
  XOR s3, s5, zero
  SLTU s5, zero, s3
  BNE s5, zero, bb6
  JAL zero, bb7
bb5:
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
bb6:
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL same
  ADD s0, a0, zero
  XOR s3, s0, zero
  SLTU s0, zero, s3
  ADD s3, s0, zero
  JAL zero, bb8
bb7:
  ADD s3, zero, zero
  JAL zero, bb8
bb8:
  ADD s0, s3, zero
  BNE s0, zero, bb9
  JAL zero, bb10
bb9:
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
bb10:
  LA s0, next
  ADD s5, s0, s4
  LW s0, 0(s5)
  ADD s2, s0, zero
  JAL zero, bb3
init:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, zero, zero
  JAL zero, bb12
bb12:
  ADD s1, s0, zero
  SLTI s2, s1, 1005
  BNE s2, zero, bb13
  JAL zero, bb14
bb13:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, head
  ADD s4, s2, s3
  ADDI s2, zero, -1
  SW s2, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb12
bb14:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
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
  ADDI s2, zero, 4
  MULW s4, s3, s2
  LA s2, to
  ADD s3, s2, s4
  SW s1, 0(s3)
  LA s2, cnt
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  LA s2, next
  ADD s3, s2, s4
  ADDI s2, zero, 4
  MULW s4, s0, s2
  LA s2, head
  ADD s5, s2, s4
  LW s2, 0(s5)
  SW s2, 0(s3)
  LA s2, cnt
  LW s3, 0(s2)
  SW s3, 0(s5)
  LA s2, cnt
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, cnt
  SW s2, 0(s3)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s2, to
  ADD s3, s2, s4
  SW s0, 0(s3)
  LA s0, cnt
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  LA s0, next
  ADD s2, s0, s3
  ADDI s0, zero, 4
  MULW s3, s1, s0
  LA s0, head
  ADD s1, s0, s3
  LW s0, 0(s1)
  SW s0, 0(s2)
  LA s0, cnt
  LW s2, 0(s0)
  SW s2, 0(s1)
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
  ADDI sp, sp, -464
  SD s11, 360(sp)
  SD s8, 368(sp)
  SD s10, 376(sp)
  SD s0, 384(sp)
  SD s5, 392(sp)
  SD s7, 400(sp)
  SD s1, 408(sp)
  SD s6, 416(sp)
  SD s2, 424(sp)
  SD s9, 432(sp)
  SD s4, 440(sp)
  SD ra, 448(sp)
  SD s3, 456(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb41
bb17:
  LW t4, 48(sp)
  ADD s1, t4, zero
  LA s7, n
  SW s1, 0(s7)
  CALL getch
  ADD s1, a0, zero
  ADD s7, zero, zero
  ADD s9, s1, zero
  JAL zero, bb57
bb18:
  LW t4, 104(sp)
  ADD s0, t4, zero
  LA s5, m
  SW s0, 0(s5)
  ADD s0, zero, zero
  JAL zero, bb35
bb19:
  ADD t4, s6, zero
  SW t4, 144(sp)
  ADD t4, s5, zero
  SW t4, 136(sp)
  ADD t4, s2, zero
  SW t4, 128(sp)
  ADD t4, s0, zero
  SW t4, 120(sp)
  LA s7, m
  LW s4, 0(s7)
  XOR s7, s4, zero
  SLTU s4, zero, s7
  BNE s4, zero, bb20
  JAL zero, bb21
bb20:
  CALL getch
  ADD s4, a0, zero
  ADD s7, s4, zero
  JAL zero, bb22
bb21:
  ADD a0, zero, zero
  LD s11, 360(sp)
  LD s8, 368(sp)
  LD s10, 376(sp)
  LD s0, 384(sp)
  LD s5, 392(sp)
  LD s7, 400(sp)
  LD s1, 408(sp)
  LD s6, 416(sp)
  LD s2, 424(sp)
  LD s9, 432(sp)
  LD s4, 440(sp)
  LD ra, 448(sp)
  LD s3, 456(sp)
  ADDI sp, sp, 464
  JALR zero, 0(ra)
bb22:
  ADD t4, s7, zero
  SW t4, 112(sp)
  LW t4, 112(sp)
  XORI s9, t4, 81
  SLTU s3, zero, s9
  BNE s3, zero, bb25
  JAL zero, bb26
bb23:
  CALL getch
  ADD s9, a0, zero
  ADD s7, s9, zero
  JAL zero, bb22
bb24:
  LW t4, 112(sp)
  XORI s7, t4, 81
  SLTIU s9, s7, 1
  BNE s9, zero, bb28
  JAL zero, bb32
bb25:
  LW t4, 112(sp)
  XORI s3, t4, 85
  SLTU s9, zero, s3
  ADD t4, s9, zero
  SB t4, 152(sp)
  JAL zero, bb27
bb26:
  ADD t4, zero, zero
  SB t4, 152(sp)
  JAL zero, bb27
bb27:
  LB t4, 152(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb23
  JAL zero, bb24
bb28:
  CALL getch
  ADD s7, a0, zero
  ADD s9, zero, zero
  ADD s4, s7, zero
  JAL zero, bb73
bb29:
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 232(sp)
  CALL getch
  ADD s4, a0, zero
  ADD s7, zero, zero
  ADD s10, s4, zero
  JAL zero, bb89
bb30:
  ADD s1, s3, zero
  ADDI s4, zero, 1
  JAL zero, bb38
bb31:
  LW t4, 264(sp)
  ADD s1, t4, zero
  LW t4, 272(sp)
  ADD s10, t4, zero
  LW t4, 280(sp)
  ADD s9, t4, zero
  LW t4, 288(sp)
  ADD s8, t4, zero
  LA s7, m
  LW s4, 0(s7)
  ADDI s7, zero, 1
  SUBW s11, s4, s7
  LA s4, m
  SW s11, 0(s4)
  ADD s0, s8, zero
  ADD s2, s9, zero
  ADD s5, s10, zero
  ADD s6, s1, zero
  JAL zero, bb19
bb32:
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb105
bb33:
  LW t4, 352(sp)
  ADD s1, t4, zero
  CALL getch
  ADD s7, a0, zero
  ADD s9, zero, zero
  ADD s10, s7, zero
  JAL zero, bb121
bb34:
  ADD s0, s2, zero
  LA s4, cnt
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MULW s8, s5, s4
  LA s4, to
  ADD s5, s4, s8
  SW s0, 0(s5)
  LA s4, cnt
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MULW s8, s5, s4
  LA s4, next
  ADD s5, s4, s8
  ADDI s4, zero, 4
  MULW s8, s1, s4
  LA s4, head
  ADD t0, s4, s8
  LW s4, 0(t0)
  SW s4, 0(s5)
  LA s4, cnt
  LW s5, 0(s4)
  SW s5, 0(t0)
  LA s4, cnt
  LW s5, 0(s4)
  ADDIW s4, s5, 1
  LA s5, cnt
  SW s4, 0(s5)
  ADDI s5, zero, 4
  MULW s8, s4, s5
  LA s4, to
  ADD s5, s4, s8
  SW s1, 0(s5)
  LA s4, cnt
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MULW s8, s5, s4
  LA s4, next
  ADD s5, s4, s8
  ADDI s4, zero, 4
  MULW s8, s0, s4
  LA s4, head
  ADD t0, s4, s8
  LW s4, 0(t0)
  SW s4, 0(s5)
  LA s4, cnt
  LW s5, 0(s4)
  SW s5, 0(t0)
  LA s4, cnt
  LW s5, 0(s4)
  ADDIW s4, s5, 1
  LA s5, cnt
  SW s4, 0(s5)
  ADD t4, s0, zero
  SW t4, 288(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 280(sp)
  ADD t4, s1, zero
  SW t4, 272(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 264(sp)
  JAL zero, bb31
bb35:
  ADD s5, s0, zero
  SLTI s6, s5, 1005
  BNE s6, zero, bb36
  JAL zero, bb37
bb36:
  ADDI s6, zero, 4
  MULW s8, s5, s6
  LA s6, head
  ADD s2, s6, s8
  ADDI s6, zero, -1
  SW s6, 0(s2)
  ADDIW s2, s5, 1
  ADD s0, s2, zero
  JAL zero, bb35
bb37:
  ADD s0, zero, zero
  ADD s2, zero, zero
  ADD s5, zero, zero
  ADD s6, zero, zero
  JAL zero, bb19
bb38:
  ADD s7, s4, zero
  LA s8, n
  LW s10, 0(s8)
  SLT s8, s10, s7
  XORI s10, s8, 1
  BNE s10, zero, bb39
  JAL zero, bb40
bb39:
  ADDI s8, zero, 4
  MULW s10, s7, s8
  LA s8, vis
  ADD s9, s8, s10
  SW zero, 0(s9)
  ADDIW s8, s7, 1
  ADD s4, s8, zero
  JAL zero, bb38
bb40:
  LW t4, 232(sp)
  ADD a0, t4, zero
  ADD a1, s1, zero
  CALL same
  ADD s4, a0, zero
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 288(sp)
  LW t3, 232(sp)
  ADD t4, t3, zero
  SW t4, 280(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 272(sp)
  ADD t4, s1, zero
  SW t4, 264(sp)
  JAL zero, bb31
bb41:
  ADD t4, s2, zero
  SW t4, 8(sp)
  ADD t4, s1, zero
  SW t4, 0(sp)
  LW t4, 8(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb44
  JAL zero, bb45
bb42:
  LW t4, 8(sp)
  XORI s5, t4, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb47
  JAL zero, bb137
bb43:
  ADD s1, zero, zero
  LW t4, 8(sp)
  ADD s2, t4, zero
  JAL zero, bb49
bb44:
  ADDI t4, zero, 1
  SB t4, 16(sp)
  JAL zero, bb46
bb45:
  ADDI s0, zero, 57
  LW t4, 8(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 16(sp)
  JAL zero, bb46
bb46:
  LB t4, 16(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb42
  JAL zero, bb43
bb47:
  ADDI s5, zero, 1
  JAL zero, bb48
bb48:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb41
bb49:
  ADD t4, s2, zero
  SW t4, 32(sp)
  ADD t4, s1, zero
  SW t4, 24(sp)
  LW t4, 32(sp)
  SLTI s7, t4, 48
  XORI s8, s7, 1
  BNE s8, zero, bb52
  JAL zero, bb53
bb50:
  ADDI s7, zero, 10
  LW t4, 24(sp)
  MULW s9, t4, s7
  LW t4, 32(sp)
  ADDW s7, s9, t4
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb49
bb51:
  LW t4, 0(sp)
  XOR s1, t4, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb55
  JAL zero, bb56
bb52:
  ADDI s7, zero, 57
  LW t4, 32(sp)
  SLT s8, s7, t4
  XORI s7, s8, 1
  ADD t4, s7, zero
  SB t4, 40(sp)
  JAL zero, bb54
bb53:
  ADD t4, zero, zero
  SB t4, 40(sp)
  JAL zero, bb54
bb54:
  LB t4, 40(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb50
  JAL zero, bb51
bb55:
  LW t4, 24(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 48(sp)
  JAL zero, bb17
bb56:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb17
bb57:
  ADD t4, s9, zero
  SW t4, 64(sp)
  ADD t4, s7, zero
  SW t4, 56(sp)
  LW t4, 64(sp)
  SLTI s11, t4, 48
  BNE s11, zero, bb60
  JAL zero, bb61
bb58:
  LW t4, 64(sp)
  XORI s3, t4, 45
  SLTIU s0, s3, 1
  BNE s0, zero, bb63
  JAL zero, bb138
bb59:
  ADD s0, zero, zero
  LW t4, 64(sp)
  ADD s3, t4, zero
  JAL zero, bb65
bb60:
  ADDI t4, zero, 1
  SB t4, 72(sp)
  JAL zero, bb62
bb61:
  ADDI s0, zero, 57
  LW t4, 64(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 72(sp)
  JAL zero, bb62
bb62:
  LB t4, 72(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb58
  JAL zero, bb59
bb63:
  ADDI s0, zero, 1
  JAL zero, bb64
bb64:
  ADD s3, s0, zero
  CALL getch
  ADD s4, a0, zero
  ADD s7, s3, zero
  ADD s9, s4, zero
  JAL zero, bb57
bb65:
  ADD t4, s3, zero
  SW t4, 88(sp)
  ADD t4, s0, zero
  SW t4, 80(sp)
  LW t4, 88(sp)
  SLTI s9, t4, 48
  XORI s6, s9, 1
  BNE s6, zero, bb68
  JAL zero, bb69
bb66:
  ADDI s6, zero, 10
  LW t4, 80(sp)
  MULW s5, t4, s6
  LW t4, 88(sp)
  ADDW s6, s5, t4
  ADDI s5, zero, 48
  SUBW s8, s6, s5
  CALL getch
  ADD s5, a0, zero
  ADD s0, s8, zero
  ADD s3, s5, zero
  JAL zero, bb65
bb67:
  LW t4, 56(sp)
  XOR s0, t4, zero
  SLTU s3, zero, s0
  BNE s3, zero, bb71
  JAL zero, bb72
bb68:
  ADDI s6, zero, 57
  LW t4, 88(sp)
  SLT s9, s6, t4
  XORI s6, s9, 1
  ADD t4, s6, zero
  SB t4, 96(sp)
  JAL zero, bb70
bb69:
  ADD t4, zero, zero
  SB t4, 96(sp)
  JAL zero, bb70
bb70:
  LB t4, 96(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb66
  JAL zero, bb67
bb71:
  LW t4, 80(sp)
  SUB s0, zero, t4
  ADD t4, s0, zero
  SW t4, 104(sp)
  JAL zero, bb18
bb72:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  JAL zero, bb18
bb73:
  ADD t4, s4, zero
  SW t4, 168(sp)
  ADD t4, s9, zero
  SW t4, 160(sp)
  LW t4, 168(sp)
  SLTI s1, t4, 48
  BNE s1, zero, bb76
  JAL zero, bb77
bb74:
  LW t4, 168(sp)
  XORI s10, t4, 45
  SLTIU s8, s10, 1
  BNE s8, zero, bb79
  JAL zero, bb139
bb75:
  ADD s3, zero, zero
  LW t4, 168(sp)
  ADD s4, t4, zero
  JAL zero, bb81
bb76:
  ADDI t4, zero, 1
  SB t4, 176(sp)
  JAL zero, bb78
bb77:
  ADDI s0, zero, 57
  LW t4, 168(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 176(sp)
  JAL zero, bb78
bb78:
  LB t4, 176(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb74
  JAL zero, bb75
bb79:
  ADDI s8, zero, 1
  JAL zero, bb80
bb80:
  ADD s10, s8, zero
  CALL getch
  ADD s3, a0, zero
  ADD s9, s10, zero
  ADD s4, s3, zero
  JAL zero, bb73
bb81:
  ADD t4, s4, zero
  SW t4, 192(sp)
  ADD t4, s3, zero
  SW t4, 184(sp)
  LW t4, 192(sp)
  SLTI s10, t4, 48
  XORI s11, s10, 1
  BNE s11, zero, bb84
  JAL zero, bb85
bb82:
  ADDI s10, zero, 10
  LW t4, 184(sp)
  MULW s7, t4, s10
  LW t4, 192(sp)
  ADDW s10, s7, t4
  ADDI s7, zero, 48
  SUBW s1, s10, s7
  CALL getch
  ADD s7, a0, zero
  ADD s3, s1, zero
  ADD s4, s7, zero
  JAL zero, bb81
bb83:
  LW t4, 160(sp)
  XOR s1, t4, zero
  SLTU s3, zero, s1
  BNE s3, zero, bb87
  JAL zero, bb88
bb84:
  ADDI s10, zero, 57
  LW t4, 192(sp)
  SLT s11, s10, t4
  XORI s10, s11, 1
  ADD t4, s10, zero
  SB t4, 200(sp)
  JAL zero, bb86
bb85:
  ADD t4, zero, zero
  SB t4, 200(sp)
  JAL zero, bb86
bb86:
  LB t4, 200(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb82
  JAL zero, bb83
bb87:
  LW t4, 184(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 208(sp)
  JAL zero, bb29
bb88:
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  JAL zero, bb29
bb89:
  ADD t4, s10, zero
  SW t4, 224(sp)
  ADD t4, s7, zero
  SW t4, 216(sp)
  LW t4, 224(sp)
  SLTI s8, t4, 48
  BNE s8, zero, bb92
  JAL zero, bb93
bb90:
  LW t4, 224(sp)
  XORI s11, t4, 45
  SLTIU s3, s11, 1
  BNE s3, zero, bb95
  JAL zero, bb140
bb91:
  ADD s3, zero, zero
  LW t4, 224(sp)
  ADD s7, t4, zero
  JAL zero, bb97
bb92:
  ADDI t4, zero, 1
  SB t4, 240(sp)
  JAL zero, bb94
bb93:
  ADDI s0, zero, 57
  LW t4, 224(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 240(sp)
  JAL zero, bb94
bb94:
  LB t4, 240(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb90
  JAL zero, bb91
bb95:
  ADDI s3, zero, 1
  JAL zero, bb96
bb96:
  ADD s11, s3, zero
  CALL getch
  ADD s9, a0, zero
  ADD s7, s11, zero
  ADD s10, s9, zero
  JAL zero, bb89
bb97:
  ADD t4, s7, zero
  SW t4, 256(sp)
  ADD t4, s3, zero
  SW t4, 248(sp)
  LW t4, 256(sp)
  SLTI s11, t4, 48
  XORI s4, s11, 1
  BNE s4, zero, bb100
  JAL zero, bb101
bb98:
  ADDI s4, zero, 10
  LW t4, 248(sp)
  MULW s1, t4, s4
  LW t4, 256(sp)
  ADDW s4, s1, t4
  ADDI s1, zero, 48
  SUBW s8, s4, s1
  CALL getch
  ADD s1, a0, zero
  ADD s3, s8, zero
  ADD s7, s1, zero
  JAL zero, bb97
bb99:
  LW t4, 216(sp)
  XOR s1, t4, zero
  SLTU s3, zero, s1
  BNE s3, zero, bb103
  JAL zero, bb104
bb100:
  ADDI s4, zero, 57
  LW t4, 256(sp)
  SLT s11, s4, t4
  XORI s4, s11, 1
  ADD t4, s4, zero
  SB t4, 296(sp)
  JAL zero, bb102
bb101:
  ADD t4, zero, zero
  SB t4, 296(sp)
  JAL zero, bb102
bb102:
  LB t4, 296(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb98
  JAL zero, bb99
bb103:
  LW t4, 248(sp)
  SUB s1, zero, t4
  ADD s3, s1, zero
  JAL zero, bb30
bb104:
  LW t4, 248(sp)
  ADD s3, t4, zero
  JAL zero, bb30
bb105:
  ADD t4, s2, zero
  SW t4, 312(sp)
  ADD t4, s1, zero
  SW t4, 304(sp)
  LW t4, 312(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb108
  JAL zero, bb109
bb106:
  LW t4, 312(sp)
  XORI s5, t4, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb111
  JAL zero, bb141
bb107:
  ADD s1, zero, zero
  LW t4, 312(sp)
  ADD s2, t4, zero
  JAL zero, bb113
bb108:
  ADDI t4, zero, 1
  SB t4, 320(sp)
  JAL zero, bb110
bb109:
  ADDI s0, zero, 57
  LW t4, 312(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 320(sp)
  JAL zero, bb110
bb110:
  LB t4, 320(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb106
  JAL zero, bb107
bb111:
  ADDI s5, zero, 1
  JAL zero, bb112
bb112:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb105
bb113:
  ADD t4, s2, zero
  SW t4, 336(sp)
  ADD t4, s1, zero
  SW t4, 328(sp)
  LW t4, 336(sp)
  SLTI s7, t4, 48
  XORI s8, s7, 1
  BNE s8, zero, bb116
  JAL zero, bb117
bb114:
  ADDI s7, zero, 10
  LW t4, 328(sp)
  MULW s9, t4, s7
  LW t4, 336(sp)
  ADDW s7, s9, t4
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb113
bb115:
  LW t4, 304(sp)
  XOR s1, t4, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb119
  JAL zero, bb120
bb116:
  ADDI s7, zero, 57
  LW t4, 336(sp)
  SLT s8, s7, t4
  XORI s7, s8, 1
  ADD t4, s7, zero
  SB t4, 344(sp)
  JAL zero, bb118
bb117:
  ADD t4, zero, zero
  SB t4, 344(sp)
  JAL zero, bb118
bb118:
  LB t4, 344(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb114
  JAL zero, bb115
bb119:
  LW t4, 328(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 352(sp)
  JAL zero, bb33
bb120:
  LW t3, 328(sp)
  ADD t4, t3, zero
  SW t4, 352(sp)
  JAL zero, bb33
bb121:
  ADD s7, s10, zero
  ADD s11, s9, zero
  SLTI s3, s7, 48
  BNE s3, zero, bb124
  JAL zero, bb125
bb122:
  XORI s0, s7, 45
  SLTIU s4, s0, 1
  BNE s4, zero, bb127
  JAL zero, bb142
bb123:
  ADD s0, zero, zero
  ADD s4, s7, zero
  JAL zero, bb129
bb124:
  ADDI s3, zero, 1
  JAL zero, bb126
bb125:
  ADDI s0, zero, 57
  SLT s2, s0, s7
  ADD s3, s2, zero
  JAL zero, bb126
bb126:
  ADD s0, s3, zero
  BNE s0, zero, bb122
  JAL zero, bb123
bb127:
  ADDI s0, zero, 1
  JAL zero, bb128
bb128:
  ADD s4, s0, zero
  CALL getch
  ADD s6, a0, zero
  ADD s9, s4, zero
  ADD s10, s6, zero
  JAL zero, bb121
bb129:
  ADD s6, s4, zero
  ADD s9, s0, zero
  SLTI s10, s6, 48
  XORI s5, s10, 1
  BNE s5, zero, bb132
  JAL zero, bb133
bb130:
  ADDI s5, zero, 10
  MULW s8, s9, s5
  ADDW s5, s8, s6
  ADDI s8, zero, 48
  SUBW s2, s5, s8
  CALL getch
  ADD s5, a0, zero
  ADD s0, s2, zero
  ADD s4, s5, zero
  JAL zero, bb129
bb131:
  XOR s0, s11, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb135
  JAL zero, bb136
bb132:
  ADDI s5, zero, 57
  SLT s10, s5, s6
  XORI s5, s10, 1
  ADD s10, s5, zero
  JAL zero, bb134
bb133:
  ADD s10, zero, zero
  JAL zero, bb134
bb134:
  ADD s5, s10, zero
  BNE s5, zero, bb130
  JAL zero, bb131
bb135:
  SUB s0, zero, s9
  ADD s2, s0, zero
  JAL zero, bb34
bb136:
  ADD s2, s9, zero
  JAL zero, bb34
bb137:
  LW t4, 0(sp)
  ADD s5, t4, zero
  JAL zero, bb48
bb138:
  LW t4, 56(sp)
  ADD s0, t4, zero
  JAL zero, bb64
bb139:
  LW t4, 160(sp)
  ADD s8, t4, zero
  JAL zero, bb80
bb140:
  LW t4, 216(sp)
  ADD s3, t4, zero
  JAL zero, bb96
bb141:
  LW t4, 304(sp)
  ADD s5, t4, zero
  JAL zero, bb112
bb142:
  ADD s0, s11, zero
  JAL zero, bb128
clear:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADDI s0, zero, 1
  JAL zero, bb144
bb144:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb145
  JAL zero, bb146
bb145:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, vis
  ADD s4, s2, s3
  SW zero, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb144
bb146:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
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
  JAL zero, bb148
bb148:
  ADD s0, s2, zero
  ADD s3, s1, zero
  SLTI s4, s0, 48
  BNE s4, zero, bb151
  JAL zero, bb152
bb149:
  XORI s5, s0, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb154
  JAL zero, bb164
bb150:
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb156
bb151:
  ADDI s4, zero, 1
  JAL zero, bb153
bb152:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  ADD s4, s2, zero
  JAL zero, bb153
bb153:
  ADD s5, s4, zero
  BNE s5, zero, bb149
  JAL zero, bb150
bb154:
  ADDI s5, zero, 1
  JAL zero, bb155
bb155:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb148
bb156:
  ADD s5, s2, zero
  ADD s6, s1, zero
  SLTI s7, s5, 48
  XORI s8, s7, 1
  BNE s8, zero, bb159
  JAL zero, bb160
bb157:
  ADDI s7, zero, 10
  MULW s9, s6, s7
  ADDW s7, s9, s5
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb156
bb158:
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb162
  JAL zero, bb163
bb159:
  ADDI s7, zero, 57
  SLT s8, s7, s5
  XORI s7, s8, 1
  ADD s8, s7, zero
  JAL zero, bb161
bb160:
  ADD s8, zero, zero
  JAL zero, bb161
bb161:
  ADD s7, s8, zero
  BNE s7, zero, bb157
  JAL zero, bb158
bb162:
  SUB s1, zero, s6
  ADD a0, s1, zero
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
bb163:
  ADD a0, s6, zero
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
bb164:
  ADD s5, s3, zero
  JAL zero, bb155
