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
  BLT s3, s4, bb9
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
  # implict jump to bb5
bb5:
  ADD s6, zero, zero
  # implict jump to bb6
bb6:
  ADD s7, s6, zero
  SLLIW s8, s7, 2
  LA s9, que
  ADD s8, s9, s8
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  LA s9, inq
  ADD s8, s9, s8
  SW zero, 0(s8)
  ADDIW s1, s7, 1
  # implict jump to bb7
bb7:
  LA s7, tail
  LW s7, 0(s7)
  SLT s7, s7, s1
  XORI s7, s7, 1
  BNE s7, zero, bb8
  JAL zero, bb3
bb8:
  ADD s6, s1, zero
  JAL zero, bb6
bb9:
  # implict jump to bb10
bb10:
  ADD s4, zero, zero
  # implict jump to bb11
bb11:
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
  BNE s7, zero, bb25
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  ADD s0, s5, zero
  SLLIW s5, s6, 2
  LA s6, head
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s6, s5, -1
  BNE s6, zero, bb18
  # implict jump to bb14
bb14:
  # implict jump to bb15
bb15:
  LA s6, h
  LW s6, 0(s6)
  LA s7, tail
  LW s7, 0(s7)
  BLT s6, s7, bb17
  # implict jump to bb16
bb16:
  ADD s3, s0, zero
  JAL zero, bb2
bb17:
  ADD s4, s0, zero
  JAL zero, bb11
bb18:
  # implict jump to bb19
bb19:
  # implict jump to bb20
bb20:
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
  BNE s9, zero, bb24
  # implict jump to bb21
bb21:
  LA s7, next
  ADD s6, s7, s6
  LW s2, 0(s6)
  # implict jump to bb22
bb22:
  XORI s6, s2, -1
  BNE s6, zero, bb23
  JAL zero, bb14
bb23:
  ADD s5, s2, zero
  JAL zero, bb20
bb24:
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
  JAL zero, bb21
bb25:
  ADDI s5, zero, 1
  JAL zero, bb13
init:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SLTI s1, zero, 1005
  BNE s1, zero, bb28
  # implict jump to bb27
bb27:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb28:
  # implict jump to bb29
bb29:
  ADD s1, zero, zero
  # implict jump to bb30
bb30:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  LA s4, head
  ADD s3, s4, s3
  ADDI s4, zero, -1
  SW s4, 0(s3)
  ADDIW s0, s2, 1
  # implict jump to bb31
bb31:
  SLTI s2, s0, 1005
  BNE s2, zero, bb32
  JAL zero, bb27
bb32:
  ADD s1, s0, zero
  JAL zero, bb30
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
  SD s5, 280(sp)
  SD s6, 288(sp)
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
  # implict jump to bb36
bb36:
  LW t3, 228(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  LW t3, 224(sp)
  ADD t4, t3, zero
  SW t4, 220(sp)
  LW t4, 216(sp)
  SLTI s8, t4, 48
  BNE s8, zero, bb189
  # implict jump to bb37
bb37:
  ADDI s8, zero, 57
  LW t4, 216(sp)
  SLT s8, s8, t4
  # implict jump to bb38
bb38:
  BNE s8, zero, bb185
  # implict jump to bb39
bb39:
  ADD t4, zero, zero
  SW t4, 208(sp)
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 212(sp)
  # implict jump to bb40
bb40:
  LW t3, 212(sp)
  ADD t4, t3, zero
  SW t4, 204(sp)
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  LW t4, 204(sp)
  SLTI s9, t4, 48
  XORI s9, s9, 1
  BNE s9, zero, bb184
  # implict jump to bb41
bb41:
  ADD s9, zero, zero
  # implict jump to bb42
bb42:
  BNE s9, zero, bb183
  # implict jump to bb43
bb43:
  LW t4, 220(sp)
  BNE t4, zero, bb182
  # implict jump to bb44
bb44:
  LW t4, 200(sp)
  ADD s8, t4, zero
  # implict jump to bb45
bb45:
  LA s9, n
  SW s8, 0(s9)
  CALL getch
  ADD s8, a0, zero
  ADD t4, zero, zero
  SW t4, 132(sp)
  ADD t4, s8, zero
  SW t4, 196(sp)
  # implict jump to bb46
bb46:
  LW t3, 196(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t4, 64(sp)
  SLTI s8, t4, 48
  BNE s8, zero, bb181
  # implict jump to bb47
bb47:
  ADDI s8, zero, 57
  LW t4, 64(sp)
  SLT s8, s8, t4
  # implict jump to bb48
bb48:
  BNE s8, zero, bb177
  # implict jump to bb49
bb49:
  ADD t4, zero, zero
  SW t4, 56(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  # implict jump to bb50
bb50:
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t4, 52(sp)
  SLTI s9, t4, 48
  XORI s9, s9, 1
  BNE s9, zero, bb176
  # implict jump to bb51
bb51:
  ADD s9, zero, zero
  # implict jump to bb52
bb52:
  BNE s9, zero, bb175
  # implict jump to bb53
bb53:
  LW t4, 68(sp)
  BNE t4, zero, bb174
  # implict jump to bb54
bb54:
  LW t4, 48(sp)
  ADD s8, t4, zero
  # implict jump to bb55
bb55:
  LA s9, m
  SW s8, 0(s9)
  SLTI s8, zero, 1005
  BNE s8, zero, bb169
  # implict jump to bb56
bb56:
  LA s9, m
  LW s9, 0(s9)
  BNE s9, zero, bb58
  # implict jump to bb57
bb57:
  ADD a0, zero, zero
  LD ra, 248(sp)
  LD s0, 256(sp)
  LD s1, 264(sp)
  LD s2, 272(sp)
  LD s5, 280(sp)
  LD s6, 288(sp)
  LD s3, 296(sp)
  LD s4, 304(sp)
  LD s7, 312(sp)
  LD s8, 320(sp)
  LD s9, 328(sp)
  LD s10, 336(sp)
  LD s11, 344(sp)
  ADDI sp, sp, 352
  JALR zero, 0(ra)
bb58:
  # implict jump to bb59
bb59:
  ADD t4, zero, zero
  SW t4, 88(sp)
  ADD t4, zero, zero
  SW t4, 80(sp)
  ADD t4, zero, zero
  SW t4, 72(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb60
bb60:
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
  ADD s0, a0, zero
  ADD t4, s0, zero
  SW t4, 20(sp)
  # implict jump to bb61
bb61:
  LW t4, 20(sp)
  ADD s0, t4, zero
  XORI s2, s0, 81
  BNE s2, zero, bb168
  # implict jump to bb62
bb62:
  ADD s2, zero, zero
  # implict jump to bb63
bb63:
  BNE s2, zero, bb167
  # implict jump to bb64
bb64:
  XORI s0, s0, 81
  SLTIU s0, s0, 1
  BNE s0, zero, bb105
  # implict jump to bb65
bb65:
  CALL getch
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 100(sp)
  ADD t4, s0, zero
  SW t4, 96(sp)
  # implict jump to bb66
bb66:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t4, 108(sp)
  SLTI s8, t4, 48
  BNE s8, zero, bb104
  # implict jump to bb67
bb67:
  ADDI s8, zero, 57
  LW t4, 108(sp)
  SLT s8, s8, t4
  # implict jump to bb68
bb68:
  BNE s8, zero, bb100
  # implict jump to bb69
bb69:
  ADD t4, zero, zero
  SW t4, 116(sp)
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  # implict jump to bb70
bb70:
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t4, 120(sp)
  SLTI s10, t4, 48
  XORI s10, s10, 1
  BNE s10, zero, bb99
  # implict jump to bb71
bb71:
  ADD s10, zero, zero
  # implict jump to bb72
bb72:
  BNE s10, zero, bb98
  # implict jump to bb73
bb73:
  LW t4, 104(sp)
  BNE t4, zero, bb97
  # implict jump to bb74
bb74:
  LW t4, 124(sp)
  ADD s3, t4, zero
  # implict jump to bb75
bb75:
  ADD t4, s3, zero
  SW t4, 128(sp)
  CALL getch
  ADD s10, a0, zero
  ADD s9, zero, zero
  ADD t4, s10, zero
  SW t4, 232(sp)
  # implict jump to bb76
bb76:
  LW t4, 232(sp)
  ADD s5, t4, zero
  ADD s0, s9, zero
  SLTI s2, s5, 48
  BNE s2, zero, bb96
  # implict jump to bb77
bb77:
  ADDI s2, zero, 57
  SLT s2, s2, s5
  # implict jump to bb78
bb78:
  BNE s2, zero, bb92
  # implict jump to bb79
bb79:
  ADD s2, zero, zero
  ADD s7, s5, zero
  # implict jump to bb80
bb80:
  ADD s6, s7, zero
  ADD s4, s2, zero
  SLTI s8, s6, 48
  XORI s8, s8, 1
  BNE s8, zero, bb91
  # implict jump to bb81
bb81:
  ADD s8, zero, zero
  # implict jump to bb82
bb82:
  BNE s8, zero, bb90
  # implict jump to bb83
bb83:
  BNE s0, zero, bb89
  # implict jump to bb84
bb84:
  ADD s8, s4, zero
  # implict jump to bb85
bb85:
  LA s11, cnt
  LW s11, 0(s11)
  SLLIW s1, s11, 2
  LA s3, to
  ADD s3, s3, s1
  SW s8, 0(s3)
  LA s3, next
  ADD s1, s3, s1
  LW t4, 128(sp)
  SLLIW s3, t4, 2
  LA s10, head
  ADD s3, s10, s3
  LW s10, 0(s3)
  SW s10, 0(s1)
  SW s11, 0(s3)
  ADDIW s1, s11, 1
  LA s3, cnt
  SW s1, 0(s3)
  SLLIW s3, s1, 2
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
  SW s1, 0(s10)
  ADDIW s1, s1, 1
  LA s3, cnt
  SW s1, 0(s3)
  ADD s1, s8, zero
  LW t4, 128(sp)
  ADD s3, t4, zero
  LW t4, 32(sp)
  ADD s8, t4, zero
  LW t4, 28(sp)
  ADD s10, t4, zero
  # implict jump to bb86
bb86:
  ADD t4, s10, zero
  SW t4, 92(sp)
  ADD t4, s8, zero
  SW t4, 84(sp)
  ADD t4, s3, zero
  SW t4, 76(sp)
  ADD t4, s1, zero
  SW t4, 36(sp)
  LA s1, m
  LW s1, 0(s1)
  ADDI s3, zero, 1
  SUBW s1, s1, s3
  LA s3, m
  SW s1, 0(s3)
  # implict jump to bb87
bb87:
  LA s1, m
  LW s1, 0(s1)
  BNE s1, zero, bb88
  JAL zero, bb57
bb88:
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
  JAL zero, bb60
bb89:
  SUB s11, zero, s4
  ADD s8, s11, zero
  JAL zero, bb85
bb90:
  ADDI s11, zero, 10
  MULW s4, s4, s11
  ADDW s4, s4, s6
  ADDI s6, zero, 48
  SUBW s4, s4, s6
  CALL getch
  ADD s6, a0, zero
  ADD s2, s4, zero
  ADD s7, s6, zero
  JAL zero, bb80
bb91:
  ADDI s11, zero, 57
  SLT s11, s11, s6
  XORI s11, s11, 1
  ADD s8, s11, zero
  JAL zero, bb82
bb92:
  XORI s2, s5, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb95
  # implict jump to bb93
bb93:
  # implict jump to bb94
bb94:
  CALL getch
  ADD s2, a0, zero
  ADD s9, s0, zero
  ADD t4, s2, zero
  SW t4, 232(sp)
  JAL zero, bb76
bb95:
  ADDI s0, zero, 1
  JAL zero, bb94
bb96:
  ADDI s2, zero, 1
  JAL zero, bb78
bb97:
  LW t4, 124(sp)
  SUB s10, zero, t4
  ADD s3, s10, zero
  JAL zero, bb75
bb98:
  ADDI s0, zero, 10
  LW t4, 124(sp)
  MULW s0, t4, s0
  LW t4, 120(sp)
  ADDW s0, s0, t4
  ADDI s2, zero, 48
  SUBW s0, s0, s2
  CALL getch
  ADD s2, a0, zero
  ADD t4, s0, zero
  SW t4, 116(sp)
  ADD t4, s2, zero
  SW t4, 112(sp)
  JAL zero, bb70
bb99:
  ADDI s3, zero, 57
  LW t4, 120(sp)
  SLT s3, s3, t4
  XORI s3, s3, 1
  ADD s10, s3, zero
  JAL zero, bb72
bb100:
  LW t4, 108(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb103
  # implict jump to bb101
bb101:
  LW t4, 104(sp)
  ADD s0, t4, zero
  # implict jump to bb102
bb102:
  CALL getch
  ADD s2, a0, zero
  ADD t4, s0, zero
  SW t4, 100(sp)
  ADD t4, s2, zero
  SW t4, 96(sp)
  JAL zero, bb66
bb103:
  ADDI s0, zero, 1
  JAL zero, bb102
bb104:
  ADDI s8, zero, 1
  JAL zero, bb68
bb105:
  CALL getch
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 192(sp)
  ADD t4, s0, zero
  SW t4, 236(sp)
  # implict jump to bb106
bb106:
  LW t3, 236(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 240(sp)
  LW t4, 188(sp)
  SLTI s6, t4, 48
  BNE s6, zero, bb166
  # implict jump to bb107
bb107:
  ADDI s6, zero, 57
  LW t4, 188(sp)
  SLT s6, s6, t4
  # implict jump to bb108
bb108:
  BNE s6, zero, bb162
  # implict jump to bb109
bb109:
  ADD t4, zero, zero
  SW t4, 180(sp)
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  # implict jump to bb110
bb110:
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  LW t4, 176(sp)
  SLTI s0, t4, 48
  XORI s0, s0, 1
  BNE s0, zero, bb161
  # implict jump to bb111
bb111:
  ADD s0, zero, zero
  # implict jump to bb112
bb112:
  BNE s0, zero, bb160
  # implict jump to bb113
bb113:
  LW t4, 240(sp)
  BNE t4, zero, bb159
  # implict jump to bb114
bb114:
  LW t4, 172(sp)
  ADD s0, t4, zero
  # implict jump to bb115
bb115:
  ADD t4, s0, zero
  SW t4, 168(sp)
  CALL getch
  ADD s2, a0, zero
  ADD t4, zero, zero
  SW t4, 160(sp)
  ADD t4, s2, zero
  SW t4, 164(sp)
  # implict jump to bb116
bb116:
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LW t4, 152(sp)
  SLTI s6, t4, 48
  BNE s6, zero, bb158
  # implict jump to bb117
bb117:
  ADDI s6, zero, 57
  LW t4, 152(sp)
  SLT s6, s6, t4
  # implict jump to bb118
bb118:
  BNE s6, zero, bb154
  # implict jump to bb119
bb119:
  ADD t4, zero, zero
  SW t4, 144(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  # implict jump to bb120
bb120:
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t4, 140(sp)
  SLTI s2, t4, 48
  XORI s2, s2, 1
  BNE s2, zero, bb153
  # implict jump to bb121
bb121:
  ADD s2, zero, zero
  # implict jump to bb122
bb122:
  BNE s2, zero, bb152
  # implict jump to bb123
bb123:
  LW t4, 156(sp)
  BNE t4, zero, bb151
  # implict jump to bb124
bb124:
  LW t4, 136(sp)
  ADD s2, t4, zero
  # implict jump to bb125
bb125:
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
  BLT s5, s7, bb134
  # implict jump to bb126
bb126:
  ADD s5, zero, zero
  # implict jump to bb127
bb127:
  LA s0, tail
  LW s0, 0(s0)
  SLT s0, s0, zero
  XORI s0, s0, 1
  BNE s0, zero, bb129
  # implict jump to bb128
bb128:
  ADD a0, s5, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t4, 24(sp)
  ADD s1, t4, zero
  LW t4, 0(sp)
  ADD s3, t4, zero
  ADD s8, s2, zero
  LW t4, 168(sp)
  ADD s10, t4, zero
  JAL zero, bb86
bb129:
  # implict jump to bb130
bb130:
  ADD s0, zero, zero
  # implict jump to bb131
bb131:
  ADD s6, s0, zero
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
  # implict jump to bb132
bb132:
  LA s6, tail
  LW s6, 0(s6)
  LW t4, 8(sp)
  SLT s6, s6, t4
  XORI s6, s6, 1
  BNE s6, zero, bb133
  JAL zero, bb128
bb133:
  LW t4, 8(sp)
  ADD s0, t4, zero
  JAL zero, bb131
bb134:
  # implict jump to bb135
bb135:
  ADD s7, zero, zero
  # implict jump to bb136
bb136:
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
  BNE s9, zero, bb150
  # implict jump to bb137
bb137:
  # implict jump to bb138
bb138:
  ADD t4, s4, zero
  SW t4, 16(sp)
  SLLIW s4, s6, 2
  LA s6, head
  ADD s4, s6, s4
  LW s4, 0(s4)
  XORI s6, s4, -1
  BNE s6, zero, bb143
  # implict jump to bb139
bb139:
  # implict jump to bb140
bb140:
  LA s0, h
  LW s0, 0(s0)
  LA s6, tail
  LW s6, 0(s6)
  BLT s0, s6, bb142
  # implict jump to bb141
bb141:
  LW t4, 16(sp)
  ADD s5, t4, zero
  JAL zero, bb127
bb142:
  LW t4, 16(sp)
  ADD s7, t4, zero
  JAL zero, bb136
bb143:
  # implict jump to bb144
bb144:
  # implict jump to bb145
bb145:
  ADD s6, s4, zero
  SLLIW s6, s6, 2
  LA s9, to
  ADD s9, s9, s6
  LW s9, 0(s9)
  SLLIW s11, s9, 2
  LA s0, inq
  ADD s0, s0, s11
  LW s11, 0(s0)
  SLTU s11, zero, s11
  XORI s11, s11, 1
  BNE s11, zero, bb149
  # implict jump to bb146
bb146:
  LA s0, next
  ADD s0, s0, s6
  LW t4, 0(s0)
  SW t4, 12(sp)
  # implict jump to bb147
bb147:
  LW t4, 12(sp)
  XORI s0, t4, -1
  BNE s0, zero, bb148
  JAL zero, bb139
bb148:
  LW t4, 12(sp)
  ADD s4, t4, zero
  JAL zero, bb145
bb149:
  ADDI s11, zero, 1
  SW s11, 0(s0)
  LA s0, tail
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s11, tail
  SW s0, 0(s11)
  SLLIW s0, s0, 2
  LA s11, que
  ADD s0, s11, s0
  SW s9, 0(s0)
  JAL zero, bb146
bb150:
  ADDI s4, zero, 1
  JAL zero, bb138
bb151:
  LW t4, 136(sp)
  SUB s5, zero, t4
  ADD s2, s5, zero
  JAL zero, bb125
bb152:
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
  JAL zero, bb120
bb153:
  ADDI s5, zero, 57
  LW t4, 140(sp)
  SLT s5, s5, t4
  XORI s5, s5, 1
  ADD s2, s5, zero
  JAL zero, bb122
bb154:
  LW t4, 152(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb157
  # implict jump to bb155
bb155:
  LW t4, 156(sp)
  ADD s0, t4, zero
  # implict jump to bb156
bb156:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 160(sp)
  ADD t4, s1, zero
  SW t4, 164(sp)
  JAL zero, bb116
bb157:
  ADDI s0, zero, 1
  JAL zero, bb156
bb158:
  ADDI s6, zero, 1
  JAL zero, bb118
bb159:
  LW t4, 172(sp)
  SUB s2, zero, t4
  ADD s0, s2, zero
  JAL zero, bb115
bb160:
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
  JAL zero, bb110
bb161:
  ADDI s2, zero, 57
  LW t4, 176(sp)
  SLT s2, s2, t4
  XORI s2, s2, 1
  ADD s0, s2, zero
  JAL zero, bb112
bb162:
  LW t4, 188(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb165
  # implict jump to bb163
bb163:
  LW t4, 240(sp)
  ADD s0, t4, zero
  # implict jump to bb164
bb164:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 192(sp)
  ADD t4, s1, zero
  SW t4, 236(sp)
  JAL zero, bb106
bb165:
  ADDI s0, zero, 1
  JAL zero, bb164
bb166:
  ADDI s6, zero, 1
  JAL zero, bb108
bb167:
  CALL getch
  ADD s0, a0, zero
  ADD t4, s0, zero
  SW t4, 20(sp)
  JAL zero, bb61
bb168:
  XORI s6, s0, 85
  SLTU s6, zero, s6
  ADD s2, s6, zero
  JAL zero, bb63
bb169:
  # implict jump to bb170
bb170:
  ADD t4, zero, zero
  SW t4, 44(sp)
  # implict jump to bb171
bb171:
  LW t4, 44(sp)
  ADD s9, t4, zero
  SLLIW s10, s9, 2
  LA s11, head
  ADD s10, s11, s10
  ADDI s11, zero, -1
  SW s11, 0(s10)
  ADDIW t4, s9, 1
  SW t4, 40(sp)
  # implict jump to bb172
bb172:
  LW t4, 40(sp)
  SLTI s9, t4, 1005
  BNE s9, zero, bb173
  JAL zero, bb56
bb173:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  JAL zero, bb171
bb174:
  LW t4, 48(sp)
  SUB s9, zero, t4
  ADD s8, s9, zero
  JAL zero, bb55
bb175:
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
  JAL zero, bb50
bb176:
  ADDI s8, zero, 57
  LW t4, 52(sp)
  SLT s8, s8, t4
  XORI s8, s8, 1
  ADD s9, s8, zero
  JAL zero, bb52
bb177:
  LW t4, 64(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb180
  # implict jump to bb178
bb178:
  LW t4, 68(sp)
  ADD s0, t4, zero
  # implict jump to bb179
bb179:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 132(sp)
  ADD t4, s1, zero
  SW t4, 196(sp)
  JAL zero, bb46
bb180:
  ADDI s0, zero, 1
  JAL zero, bb179
bb181:
  ADDI s8, zero, 1
  JAL zero, bb48
bb182:
  LW t4, 200(sp)
  SUB s9, zero, t4
  ADD s8, s9, zero
  JAL zero, bb45
bb183:
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
  JAL zero, bb40
bb184:
  ADDI s8, zero, 57
  LW t4, 204(sp)
  SLT s8, s8, t4
  XORI s8, s8, 1
  ADD s9, s8, zero
  JAL zero, bb42
bb185:
  LW t4, 216(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb188
  # implict jump to bb186
bb186:
  LW t4, 220(sp)
  ADD s0, t4, zero
  # implict jump to bb187
bb187:
  CALL getch
  ADD t4, s0, zero
  SW t4, 224(sp)
  ADD t4, a0, zero
  SW t4, 228(sp)
  JAL zero, bb36
bb188:
  ADDI s0, zero, 1
  JAL zero, bb187
bb189:
  ADDI s8, zero, 1
  JAL zero, bb38
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
  # implict jump to bb192
bb192:
  ADD s2, s0, zero
  ADD s3, s1, zero
  SLTI s4, s2, 48
  BNE s4, zero, bb208
  # implict jump to bb193
bb193:
  ADDI s4, zero, 57
  SLT s4, s4, s2
  # implict jump to bb194
bb194:
  BNE s4, zero, bb204
  # implict jump to bb195
bb195:
  ADD s4, zero, zero
  ADD s5, s2, zero
  # implict jump to bb196
bb196:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s6, 48
  XORI s8, s8, 1
  BNE s8, zero, bb203
  # implict jump to bb197
bb197:
  ADD s8, zero, zero
  # implict jump to bb198
bb198:
  BNE s8, zero, bb202
  # implict jump to bb199
bb199:
  BNE s3, zero, bb201
  # implict jump to bb200
bb200:
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
bb201:
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
bb202:
  ADDI s8, zero, 10
  MULW s7, s7, s8
  ADDW s6, s7, s6
  ADDI s7, zero, 48
  SUBW s6, s6, s7
  CALL getch
  ADD s7, a0, zero
  ADD s4, s6, zero
  ADD s5, s7, zero
  JAL zero, bb196
bb203:
  ADDI s9, zero, 57
  SLT s9, s9, s6
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb198
bb204:
  XORI s2, s2, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb207
  # implict jump to bb205
bb205:
  ADD s2, s3, zero
  # implict jump to bb206
bb206:
  CALL getch
  ADD s1, s2, zero
  ADD s0, a0, zero
  JAL zero, bb192
bb207:
  ADDI s2, zero, 1
  JAL zero, bb206
bb208:
  ADDI s4, zero, 1
  JAL zero, bb194
