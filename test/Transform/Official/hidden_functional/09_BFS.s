.global same
.global init
.global inqueue
.global add_edge
.global main
.global pop_queue
.global quick_read
.section .bss

head:
.space 4020
inq:
.space 4020
next:
.space 20020
que:
.space 4020
to:
.space 20020






.section .data
h:
.word 0x00000000





maxm:
.word 0x0000138d
cnt:
.word 0x00000000
maxn:
.word 0x000003ed
m:
.word 0x00000000
tail:
.word 0x00000000
n:
.word 0x00000000
.section .text
same:
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
  ADD s3, a0, zero
  LA s4, h
  ADDI s5, zero, 0
  SW s5, 0(s4)
  LA s4, tail
  ADDI s5, zero, 0
  SW s5, 0(s4)
  SLLIW s4, s3, 2
  LA s5, inq
  ADD s4, s5, s4
  ADDI s5, zero, 1
  SW s5, 0(s4)
  ADDI s4, zero, 1
  ADDW s4, s4, zero
  LA s5, tail
  SW s4, 0(s5)
  SLLIW s4, s4, 2
  LA s5, que
  ADD s4, s5, s4
  SW s3, 0(s4)
  LA s3, h
  LW s3, 0(s3)
  LA s4, tail
  LW s4, 0(s4)
  BLT s3, s4, bb8
  # implict jump to bb1
bb1:
  ADD s3, zero, zero
  # implict jump to bb2
bb2:
  LA s6, tail
  LW s6, 0(s6)
  SLT s6, s6, zero
  XORI s6, s6, 1
  BNE s6, zero, bb4
  # implict jump to bb3
bb3:
  ADD a0, s3, zero
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
bb4:
  ADD s6, zero, zero
  # implict jump to bb5
bb5:
  ADD s7, s6, zero
  SLLIW s8, s7, 2
  LA s9, que
  ADD s8, s9, s8
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  LA s9, inq
  ADD s8, s9, s8
  SW zero, 0(s8)
  ADDIW s0, s7, 1
  # implict jump to bb6
bb6:
  LA s7, tail
  LW s7, 0(s7)
  SLT s7, s7, s0
  XORI s7, s7, 1
  BNE s7, zero, bb7
  JAL zero, bb3
bb7:
  ADD s6, s0, zero
  JAL zero, bb5
bb8:
  ADD s4, zero, zero
  # implict jump to bb9
bb9:
  ADD s5, s4, zero
  LA s6, h
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, h
  SW s6, 0(s7)
  SLLIW s6, s6, 2
  LA s7, que
  ADD s6, s7, s6
  LW s6, 0(s6)
  XOR s7, s6, a1
  SLTIU s7, s7, 1
  BNE s7, zero, bb22
  # implict jump to bb10
bb10:
  # implict jump to bb11
bb11:
  ADD s1, s5, zero
  SLLIW s5, s6, 2
  LA s6, head
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s6, s5, -1
  BNE s6, zero, bb16
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  LA s6, h
  LW s6, 0(s6)
  LA s7, tail
  LW s7, 0(s7)
  BLT s6, s7, bb15
  # implict jump to bb14
bb14:
  ADD s3, s1, zero
  JAL zero, bb2
bb15:
  ADD s4, s1, zero
  JAL zero, bb9
bb16:
  # implict jump to bb17
bb17:
  ADD s6, s5, zero
  SLLIW s6, s6, 2
  LA s7, to
  ADD s7, s7, s6
  LW s7, 0(s7)
  SLLIW s8, s7, 2
  LA s9, inq
  ADD s8, s9, s8
  LW s9, 0(s8)
  SLTU s9, zero, s9
  XORI s9, s9, 1
  BNE s9, zero, bb21
  # implict jump to bb18
bb18:
  LA s7, next
  ADD s6, s7, s6
  LW s2, 0(s6)
  # implict jump to bb19
bb19:
  XORI s6, s2, -1
  BNE s6, zero, bb20
  JAL zero, bb12
bb20:
  ADD s5, s2, zero
  JAL zero, bb17
bb21:
  ADDI s9, zero, 1
  SW s9, 0(s8)
  LA s8, tail
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s9, tail
  SW s8, 0(s9)
  SLLIW s8, s8, 2
  LA s9, que
  ADD s8, s9, s8
  SW s7, 0(s8)
  JAL zero, bb18
bb22:
  ADDI s5, zero, 1
  JAL zero, bb11
init:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SLTI s1, zero, 1005
  BNE s1, zero, bb25
  # implict jump to bb24
bb24:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb25:
  ADD s1, zero, zero
  # implict jump to bb26
bb26:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  LA s4, head
  ADD s3, s4, s3
  ADDI s4, zero, -1
  SW s4, 0(s3)
  ADDIW s0, s2, 1
  # implict jump to bb27
bb27:
  SLTI s2, s0, 1005
  BNE s2, zero, bb28
  JAL zero, bb24
bb28:
  ADD s1, s0, zero
  JAL zero, bb26
inqueue:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SLLIW s0, a0, 2
  LA s1, inq
  ADD s0, s1, s0
  ADDI s1, zero, 1
  SW s1, 0(s0)
  LA s0, tail
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s1, tail
  SW s0, 0(s1)
  SLLIW s0, s0, 2
  LA s1, que
  ADD s0, s1, s0
  SW a0, 0(s0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
add_edge:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  LA s0, cnt
  LW s0, 0(s0)
  SLLIW s1, s0, 2
  LA s2, to
  ADD s2, s2, s1
  SW a1, 0(s2)
  LA s2, next
  ADD s1, s2, s1
  SLLIW s2, a0, 2
  LA s3, head
  ADD s2, s3, s2
  LW s3, 0(s2)
  SW s3, 0(s1)
  SW s0, 0(s2)
  ADDIW s0, s0, 1
  LA s1, cnt
  SW s0, 0(s1)
  SLLIW s1, s0, 2
  LA s2, to
  ADD s2, s2, s1
  SW a0, 0(s2)
  LA s2, next
  ADD s1, s2, s1
  SLLIW s2, a1, 2
  LA s3, head
  ADD s2, s3, s2
  LW s3, 0(s2)
  SW s3, 0(s1)
  SW s0, 0(s2)
  ADDIW s0, s0, 1
  LA s1, cnt
  SW s0, 0(s1)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -352
  SD ra, 248(sp)
  SD s0, 256(sp)
  SD s1, 264(sp)
  SD s2, 272(sp)
  SD s6, 280(sp)
  SD s5, 288(sp)
  SD s3, 296(sp)
  SD s4, 304(sp)
  SD s7, 312(sp)
  SD s8, 320(sp)
  SD s9, 328(sp)
  SD s10, 336(sp)
  SD s11, 344(sp)
  CALL getch
  ADD s8, a0, zero
  ADD t4, zero, zero
  SW t4, 224(sp)
  ADD t4, s8, zero
  SW t4, 228(sp)
  # implict jump to bb32
bb32:
  LW t3, 228(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  LW t3, 224(sp)
  ADD t4, t3, zero
  SW t4, 220(sp)
  LW t4, 216(sp)
  SLTI s8, t4, 48
  BNE s8, zero, bb180
  # implict jump to bb33
bb33:
  ADDI s8, zero, 57
  LW t4, 216(sp)
  SLT s8, s8, t4
  # implict jump to bb34
bb34:
  BNE s8, zero, bb176
  # implict jump to bb35
bb35:
  ADD t4, zero, zero
  SW t4, 208(sp)
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 212(sp)
  # implict jump to bb36
bb36:
  LW t3, 212(sp)
  ADD t4, t3, zero
  SW t4, 204(sp)
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  LW t4, 204(sp)
  SLTI s9, t4, 48
  XORI s9, s9, 1
  BNE s9, zero, bb175
  # implict jump to bb37
bb37:
  ADD s9, zero, zero
  # implict jump to bb38
bb38:
  BNE s9, zero, bb174
  # implict jump to bb39
bb39:
  LW t4, 220(sp)
  BNE t4, zero, bb173
  # implict jump to bb40
bb40:
  LW t4, 200(sp)
  ADD s8, t4, zero
  # implict jump to bb41
bb41:
  LA s9, n
  SW s8, 0(s9)
  CALL getch
  ADD s8, a0, zero
  ADD t4, zero, zero
  SW t4, 132(sp)
  ADD t4, s8, zero
  SW t4, 196(sp)
  # implict jump to bb42
bb42:
  LW t3, 196(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t4, 64(sp)
  SLTI s8, t4, 48
  BNE s8, zero, bb172
  # implict jump to bb43
bb43:
  ADDI s8, zero, 57
  LW t4, 64(sp)
  SLT s8, s8, t4
  # implict jump to bb44
bb44:
  BNE s8, zero, bb168
  # implict jump to bb45
bb45:
  ADD t4, zero, zero
  SW t4, 56(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  # implict jump to bb46
bb46:
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t4, 52(sp)
  SLTI s9, t4, 48
  XORI s9, s9, 1
  BNE s9, zero, bb167
  # implict jump to bb47
bb47:
  ADD s9, zero, zero
  # implict jump to bb48
bb48:
  BNE s9, zero, bb166
  # implict jump to bb49
bb49:
  LW t4, 68(sp)
  BNE t4, zero, bb165
  # implict jump to bb50
bb50:
  LW t4, 48(sp)
  ADD s8, t4, zero
  # implict jump to bb51
bb51:
  LA s9, m
  SW s8, 0(s9)
  SLTI s8, zero, 1005
  BNE s8, zero, bb161
  # implict jump to bb52
bb52:
  LA s9, m
  LW s9, 0(s9)
  BNE s9, zero, bb54
  # implict jump to bb53
bb53:
  ADD a0, zero, zero
  LD ra, 248(sp)
  LD s0, 256(sp)
  LD s1, 264(sp)
  LD s2, 272(sp)
  LD s6, 280(sp)
  LD s5, 288(sp)
  LD s3, 296(sp)
  LD s4, 304(sp)
  LD s7, 312(sp)
  LD s8, 320(sp)
  LD s9, 328(sp)
  LD s10, 336(sp)
  LD s11, 344(sp)
  ADDI sp, sp, 352
  JALR zero, 0(ra)
bb54:
  ADD t4, zero, zero
  SW t4, 88(sp)
  ADD t4, zero, zero
  SW t4, 80(sp)
  ADD t4, zero, zero
  SW t4, 72(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb55
bb55:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  CALL getch
  ADD s1, a0, zero
  ADD t4, s1, zero
  SW t4, 20(sp)
  # implict jump to bb56
bb56:
  LW t4, 20(sp)
  ADD s1, t4, zero
  XORI s5, s1, 81
  BNE s5, zero, bb160
  # implict jump to bb57
bb57:
  ADD s5, zero, zero
  # implict jump to bb58
bb58:
  BNE s5, zero, bb159
  # implict jump to bb59
bb59:
  XORI s1, s1, 81
  SLTIU s1, s1, 1
  BNE s1, zero, bb100
  # implict jump to bb60
bb60:
  CALL getch
  ADD s1, a0, zero
  ADD t4, zero, zero
  SW t4, 100(sp)
  ADD t4, s1, zero
  SW t4, 96(sp)
  # implict jump to bb61
bb61:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t4, 108(sp)
  SLTI s8, t4, 48
  BNE s8, zero, bb99
  # implict jump to bb62
bb62:
  ADDI s8, zero, 57
  LW t4, 108(sp)
  SLT s8, s8, t4
  # implict jump to bb63
bb63:
  BNE s8, zero, bb95
  # implict jump to bb64
bb64:
  ADD t4, zero, zero
  SW t4, 116(sp)
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  # implict jump to bb65
bb65:
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t4, 120(sp)
  SLTI s10, t4, 48
  XORI s10, s10, 1
  BNE s10, zero, bb94
  # implict jump to bb66
bb66:
  ADD s10, zero, zero
  # implict jump to bb67
bb67:
  BNE s10, zero, bb93
  # implict jump to bb68
bb68:
  LW t4, 104(sp)
  BNE t4, zero, bb92
  # implict jump to bb69
bb69:
  LW t4, 124(sp)
  ADD s3, t4, zero
  # implict jump to bb70
bb70:
  ADD t4, s3, zero
  SW t4, 128(sp)
  CALL getch
  ADD s10, a0, zero
  ADD s9, zero, zero
  ADD t4, s10, zero
  SW t4, 232(sp)
  # implict jump to bb71
bb71:
  LW t4, 232(sp)
  ADD s7, t4, zero
  ADD s1, s9, zero
  SLTI s5, s7, 48
  BNE s5, zero, bb91
  # implict jump to bb72
bb72:
  ADDI s5, zero, 57
  SLT s5, s5, s7
  # implict jump to bb73
bb73:
  BNE s5, zero, bb87
  # implict jump to bb74
bb74:
  ADD s5, zero, zero
  ADD s2, s7, zero
  # implict jump to bb75
bb75:
  ADD s6, s2, zero
  ADD s4, s5, zero
  SLTI s8, s6, 48
  XORI s8, s8, 1
  BNE s8, zero, bb86
  # implict jump to bb76
bb76:
  ADD s8, zero, zero
  # implict jump to bb77
bb77:
  BNE s8, zero, bb85
  # implict jump to bb78
bb78:
  BNE s1, zero, bb84
  # implict jump to bb79
bb79:
  ADD s8, s4, zero
  # implict jump to bb80
bb80:
  LA s11, cnt
  LW s11, 0(s11)
  SLLIW s0, s11, 2
  LA s3, to
  ADD s3, s3, s0
  SW s8, 0(s3)
  LA s3, next
  ADD s0, s3, s0
  LW t4, 128(sp)
  SLLIW s3, t4, 2
  LA s10, head
  ADD s3, s10, s3
  LW s10, 0(s3)
  SW s10, 0(s0)
  SW s11, 0(s3)
  ADDIW s0, s11, 1
  LA s3, cnt
  SW s0, 0(s3)
  SLLIW s3, s0, 2
  LA s10, to
  ADD s10, s10, s3
  LW t4, 128(sp)
  SW t4, 0(s10)
  LA s10, next
  ADD s3, s10, s3
  SLLIW s10, s8, 2
  LA s11, head
  ADD s10, s11, s10
  LW s11, 0(s10)
  SW s11, 0(s3)
  SW s0, 0(s10)
  ADDIW s0, s0, 1
  LA s3, cnt
  SW s0, 0(s3)
  ADD s0, s8, zero
  LW t4, 128(sp)
  ADD s3, t4, zero
  LW t4, 32(sp)
  ADD s8, t4, zero
  LW t4, 28(sp)
  ADD s10, t4, zero
  # implict jump to bb81
bb81:
  ADD t4, s10, zero
  SW t4, 92(sp)
  ADD t4, s8, zero
  SW t4, 84(sp)
  ADD t4, s3, zero
  SW t4, 76(sp)
  ADD t4, s0, zero
  SW t4, 36(sp)
  LA s0, m
  LW s0, 0(s0)
  ADDI s3, zero, 1
  SUBW s0, s0, s3
  LA s3, m
  SW s0, 0(s3)
  # implict jump to bb82
bb82:
  LA s0, m
  LW s0, 0(s0)
  BNE s0, zero, bb83
  JAL zero, bb53
bb83:
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb55
bb84:
  SUB s11, zero, s4
  ADD s8, s11, zero
  JAL zero, bb80
bb85:
  ADDI s11, zero, 10
  MULW s4, s4, s11
  ADDW s4, s4, s6
  ADDI s6, zero, 48
  SUBW s4, s4, s6
  CALL getch
  ADD s6, a0, zero
  ADD s5, s4, zero
  ADD s2, s6, zero
  JAL zero, bb75
bb86:
  ADDI s11, zero, 57
  SLT s11, s11, s6
  XORI s11, s11, 1
  ADD s8, s11, zero
  JAL zero, bb77
bb87:
  XORI s2, s7, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb90
  # implict jump to bb88
bb88:
  # implict jump to bb89
bb89:
  CALL getch
  ADD s2, a0, zero
  ADD s9, s1, zero
  ADD t4, s2, zero
  SW t4, 232(sp)
  JAL zero, bb71
bb90:
  ADDI s1, zero, 1
  JAL zero, bb89
bb91:
  ADDI s5, zero, 1
  JAL zero, bb73
bb92:
  LW t4, 124(sp)
  SUB s10, zero, t4
  ADD s3, s10, zero
  JAL zero, bb70
bb93:
  ADDI s1, zero, 10
  LW t4, 124(sp)
  MULW s1, t4, s1
  LW t4, 120(sp)
  ADDW s1, s1, t4
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  CALL getch
  ADD s2, a0, zero
  ADD t4, s1, zero
  SW t4, 116(sp)
  ADD t4, s2, zero
  SW t4, 112(sp)
  JAL zero, bb65
bb94:
  ADDI s3, zero, 57
  LW t4, 120(sp)
  SLT s3, s3, t4
  XORI s3, s3, 1
  ADD s10, s3, zero
  JAL zero, bb67
bb95:
  LW t4, 108(sp)
  XORI s1, t4, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb98
  # implict jump to bb96
bb96:
  LW t4, 104(sp)
  ADD s1, t4, zero
  # implict jump to bb97
bb97:
  CALL getch
  ADD s2, a0, zero
  ADD t4, s1, zero
  SW t4, 100(sp)
  ADD t4, s2, zero
  SW t4, 96(sp)
  JAL zero, bb61
bb98:
  ADDI s1, zero, 1
  JAL zero, bb97
bb99:
  ADDI s8, zero, 1
  JAL zero, bb63
bb100:
  CALL getch
  ADD s1, a0, zero
  ADD t4, zero, zero
  SW t4, 192(sp)
  ADD t4, s1, zero
  SW t4, 236(sp)
  # implict jump to bb101
bb101:
  LW t3, 236(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 240(sp)
  LW t4, 188(sp)
  SLTI s6, t4, 48
  BNE s6, zero, bb158
  # implict jump to bb102
bb102:
  ADDI s6, zero, 57
  LW t4, 188(sp)
  SLT s6, s6, t4
  # implict jump to bb103
bb103:
  BNE s6, zero, bb154
  # implict jump to bb104
bb104:
  ADD t4, zero, zero
  SW t4, 180(sp)
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  # implict jump to bb105
bb105:
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  LW t4, 176(sp)
  SLTI s1, t4, 48
  XORI s1, s1, 1
  BNE s1, zero, bb153
  # implict jump to bb106
bb106:
  ADD s1, zero, zero
  # implict jump to bb107
bb107:
  BNE s1, zero, bb152
  # implict jump to bb108
bb108:
  LW t4, 240(sp)
  BNE t4, zero, bb151
  # implict jump to bb109
bb109:
  LW t4, 172(sp)
  ADD s1, t4, zero
  # implict jump to bb110
bb110:
  ADD t4, s1, zero
  SW t4, 168(sp)
  CALL getch
  ADD s2, a0, zero
  ADD t4, zero, zero
  SW t4, 160(sp)
  ADD t4, s2, zero
  SW t4, 164(sp)
  # implict jump to bb111
bb111:
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LW t4, 152(sp)
  SLTI s6, t4, 48
  BNE s6, zero, bb150
  # implict jump to bb112
bb112:
  ADDI s6, zero, 57
  LW t4, 152(sp)
  SLT s6, s6, t4
  # implict jump to bb113
bb113:
  BNE s6, zero, bb146
  # implict jump to bb114
bb114:
  ADD t4, zero, zero
  SW t4, 144(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  # implict jump to bb115
bb115:
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t4, 140(sp)
  SLTI s2, t4, 48
  XORI s2, s2, 1
  BNE s2, zero, bb145
  # implict jump to bb116
bb116:
  ADD s2, zero, zero
  # implict jump to bb117
bb117:
  BNE s2, zero, bb144
  # implict jump to bb118
bb118:
  LW t4, 156(sp)
  BNE t4, zero, bb143
  # implict jump to bb119
bb119:
  LW t4, 136(sp)
  ADD s2, t4, zero
  # implict jump to bb120
bb120:
  LA s5, h
  SW zero, 0(s5)
  LA s5, tail
  SW zero, 0(s5)
  LW t4, 168(sp)
  SLLIW s5, t4, 2
  LA s7, inq
  ADD s5, s7, s5
  ADDI s7, zero, 1
  SW s7, 0(s5)
  ADDI s5, zero, 1
  LA s7, tail
  SW s5, 0(s7)
  SLLIW s5, s5, 2
  LA s7, que
  ADD s5, s7, s5
  LW t4, 168(sp)
  SW t4, 0(s5)
  LA s5, h
  LW s5, 0(s5)
  LA s7, tail
  LW s7, 0(s7)
  BLT s5, s7, bb128
  # implict jump to bb121
bb121:
  ADD s5, zero, zero
  # implict jump to bb122
bb122:
  LA s1, tail
  LW s1, 0(s1)
  SLT s1, s1, zero
  XORI s1, s1, 1
  BNE s1, zero, bb124
  # implict jump to bb123
bb123:
  ADD a0, s5, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t4, 24(sp)
  ADD s0, t4, zero
  LW t4, 0(sp)
  ADD s3, t4, zero
  ADD s8, s2, zero
  LW t4, 168(sp)
  ADD s10, t4, zero
  JAL zero, bb81
bb124:
  ADD s1, zero, zero
  # implict jump to bb125
bb125:
  ADD s6, s1, zero
  SLLIW s9, s6, 2
  LA s11, que
  ADD s9, s11, s9
  LW s9, 0(s9)
  SLLIW s9, s9, 2
  LA s11, inq
  ADD s9, s11, s9
  SW zero, 0(s9)
  ADDIW t4, s6, 1
  SW t4, 8(sp)
  # implict jump to bb126
bb126:
  LA s6, tail
  LW s6, 0(s6)
  LW t4, 8(sp)
  SLT s6, s6, t4
  XORI s6, s6, 1
  BNE s6, zero, bb127
  JAL zero, bb123
bb127:
  LW t4, 8(sp)
  ADD s1, t4, zero
  JAL zero, bb125
bb128:
  ADD s7, zero, zero
  # implict jump to bb129
bb129:
  ADD s4, s7, zero
  LA s9, h
  LW s9, 0(s9)
  ADDIW s9, s9, 1
  LA s6, h
  SW s9, 0(s6)
  SLLIW s6, s9, 2
  LA s9, que
  ADD s6, s9, s6
  LW s6, 0(s6)
  XOR s9, s6, s2
  SLTIU s9, s9, 1
  BNE s9, zero, bb142
  # implict jump to bb130
bb130:
  # implict jump to bb131
bb131:
  ADD t4, s4, zero
  SW t4, 16(sp)
  SLLIW s4, s6, 2
  LA s6, head
  ADD s4, s6, s4
  LW s4, 0(s4)
  XORI s6, s4, -1
  BNE s6, zero, bb136
  # implict jump to bb132
bb132:
  # implict jump to bb133
bb133:
  LA s1, h
  LW s1, 0(s1)
  LA s6, tail
  LW s6, 0(s6)
  BLT s1, s6, bb135
  # implict jump to bb134
bb134:
  LW t4, 16(sp)
  ADD s5, t4, zero
  JAL zero, bb122
bb135:
  LW t4, 16(sp)
  ADD s7, t4, zero
  JAL zero, bb129
bb136:
  # implict jump to bb137
bb137:
  ADD s6, s4, zero
  SLLIW s6, s6, 2
  LA s9, to
  ADD s9, s9, s6
  LW s9, 0(s9)
  SLLIW s11, s9, 2
  LA s1, inq
  ADD s1, s1, s11
  LW s11, 0(s1)
  SLTU s11, zero, s11
  XORI s11, s11, 1
  BNE s11, zero, bb141
  # implict jump to bb138
bb138:
  LA s1, next
  ADD s1, s1, s6
  LW t4, 0(s1)
  SW t4, 12(sp)
  # implict jump to bb139
bb139:
  LW t4, 12(sp)
  XORI s1, t4, -1
  BNE s1, zero, bb140
  JAL zero, bb132
bb140:
  LW t4, 12(sp)
  ADD s4, t4, zero
  JAL zero, bb137
bb141:
  ADDI s11, zero, 1
  SW s11, 0(s1)
  LA s1, tail
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s11, tail
  SW s1, 0(s11)
  SLLIW s1, s1, 2
  LA s11, que
  ADD s1, s11, s1
  SW s9, 0(s1)
  JAL zero, bb138
bb142:
  ADDI s4, zero, 1
  JAL zero, bb131
bb143:
  LW t4, 136(sp)
  SUB s5, zero, t4
  ADD s2, s5, zero
  JAL zero, bb120
bb144:
  ADDI s0, zero, 10
  LW t4, 136(sp)
  MULW s0, t4, s0
  LW t4, 140(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 144(sp)
  ADD t4, s1, zero
  SW t4, 148(sp)
  JAL zero, bb115
bb145:
  ADDI s5, zero, 57
  LW t4, 140(sp)
  SLT s5, s5, t4
  XORI s5, s5, 1
  ADD s2, s5, zero
  JAL zero, bb117
bb146:
  LW t4, 152(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb149
  # implict jump to bb147
bb147:
  LW t4, 156(sp)
  ADD s0, t4, zero
  # implict jump to bb148
bb148:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 160(sp)
  ADD t4, s1, zero
  SW t4, 164(sp)
  JAL zero, bb111
bb149:
  ADDI s0, zero, 1
  JAL zero, bb148
bb150:
  ADDI s6, zero, 1
  JAL zero, bb113
bb151:
  LW t4, 172(sp)
  SUB s2, zero, t4
  ADD s1, s2, zero
  JAL zero, bb110
bb152:
  ADDI s0, zero, 10
  LW t4, 172(sp)
  MULW s0, t4, s0
  LW t4, 176(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 180(sp)
  ADD t4, s1, zero
  SW t4, 184(sp)
  JAL zero, bb105
bb153:
  ADDI s2, zero, 57
  LW t4, 176(sp)
  SLT s2, s2, t4
  XORI s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb107
bb154:
  LW t4, 188(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb157
  # implict jump to bb155
bb155:
  LW t4, 240(sp)
  ADD s0, t4, zero
  # implict jump to bb156
bb156:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 192(sp)
  ADD t4, s1, zero
  SW t4, 236(sp)
  JAL zero, bb101
bb157:
  ADDI s0, zero, 1
  JAL zero, bb156
bb158:
  ADDI s6, zero, 1
  JAL zero, bb103
bb159:
  CALL getch
  ADD s0, a0, zero
  ADD t4, s0, zero
  SW t4, 20(sp)
  JAL zero, bb56
bb160:
  XORI s6, s1, 85
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb58
bb161:
  ADD t4, zero, zero
  SW t4, 44(sp)
  # implict jump to bb162
bb162:
  LW t4, 44(sp)
  ADD s9, t4, zero
  SLLIW s10, s9, 2
  LA s11, head
  ADD s10, s11, s10
  ADDI s11, zero, -1
  SW s11, 0(s10)
  ADDIW t4, s9, 1
  SW t4, 40(sp)
  # implict jump to bb163
bb163:
  LW t4, 40(sp)
  SLTI s9, t4, 1005
  BNE s9, zero, bb164
  JAL zero, bb52
bb164:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  JAL zero, bb162
bb165:
  LW t4, 48(sp)
  SUB s9, zero, t4
  ADD s8, s9, zero
  JAL zero, bb51
bb166:
  ADDI s0, zero, 10
  LW t4, 48(sp)
  MULW s0, t4, s0
  LW t4, 52(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 56(sp)
  ADD t4, s1, zero
  SW t4, 60(sp)
  JAL zero, bb46
bb167:
  ADDI s8, zero, 57
  LW t4, 52(sp)
  SLT s8, s8, t4
  XORI s8, s8, 1
  ADD s9, s8, zero
  JAL zero, bb48
bb168:
  LW t4, 64(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb171
  # implict jump to bb169
bb169:
  LW t4, 68(sp)
  ADD s0, t4, zero
  # implict jump to bb170
bb170:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 132(sp)
  ADD t4, s1, zero
  SW t4, 196(sp)
  JAL zero, bb42
bb171:
  ADDI s0, zero, 1
  JAL zero, bb170
bb172:
  ADDI s8, zero, 1
  JAL zero, bb44
bb173:
  LW t4, 200(sp)
  SUB s9, zero, t4
  ADD s8, s9, zero
  JAL zero, bb41
bb174:
  ADDI s0, zero, 10
  LW t4, 200(sp)
  MULW s0, t4, s0
  LW t4, 204(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 208(sp)
  ADD t4, s1, zero
  SW t4, 212(sp)
  JAL zero, bb36
bb175:
  ADDI s8, zero, 57
  LW t4, 204(sp)
  SLT s8, s8, t4
  XORI s8, s8, 1
  ADD s9, s8, zero
  JAL zero, bb38
bb176:
  LW t4, 216(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb179
  # implict jump to bb177
bb177:
  LW t4, 220(sp)
  ADD s0, t4, zero
  # implict jump to bb178
bb178:
  CALL getch
  ADD t4, s0, zero
  SW t4, 224(sp)
  ADD t4, a0, zero
  SW t4, 228(sp)
  JAL zero, bb32
bb179:
  ADDI s0, zero, 1
  JAL zero, bb178
bb180:
  ADDI s8, zero, 1
  JAL zero, bb34
pop_queue:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  LA s0, h
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s1, h
  SW s0, 0(s1)
  SLLIW s0, s0, 2
  LA s1, que
  ADD s0, s1, s0
  LW s0, 0(s0)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
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
  # implict jump to bb183
bb183:
  ADD s2, s0, zero
  ADD s3, s1, zero
  SLTI s4, s2, 48
  BNE s4, zero, bb199
  # implict jump to bb184
bb184:
  ADDI s4, zero, 57
  SLT s4, s4, s2
  # implict jump to bb185
bb185:
  BNE s4, zero, bb195
  # implict jump to bb186
bb186:
  ADD s4, zero, zero
  ADD s5, s2, zero
  # implict jump to bb187
bb187:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s6, 48
  XORI s8, s8, 1
  BNE s8, zero, bb194
  # implict jump to bb188
bb188:
  ADD s8, zero, zero
  # implict jump to bb189
bb189:
  BNE s8, zero, bb193
  # implict jump to bb190
bb190:
  BNE s3, zero, bb192
  # implict jump to bb191
bb191:
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
bb192:
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
bb193:
  ADDI s8, zero, 10
  MULW s7, s7, s8
  ADDW s6, s7, s6
  ADDI s7, zero, 48
  SUBW s6, s6, s7
  CALL getch
  ADD s7, a0, zero
  ADD s4, s6, zero
  ADD s5, s7, zero
  JAL zero, bb187
bb194:
  ADDI s9, zero, 57
  SLT s9, s9, s6
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb189
bb195:
  XORI s2, s2, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb198
  # implict jump to bb196
bb196:
  ADD s2, s3, zero
  # implict jump to bb197
bb197:
  CALL getch
  ADD s1, s2, zero
  ADD s0, a0, zero
  JAL zero, bb183
bb198:
  ADDI s2, zero, 1
  JAL zero, bb197
bb199:
  ADDI s4, zero, 1
  JAL zero, bb185
