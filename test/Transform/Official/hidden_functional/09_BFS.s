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
  ADDI sp, sp, -80
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
  ADD s0, a0, zero
  LA s1, h
  ADDI s2, zero, 0
  SW s2, 0(s1)
  LA s1, tail
  ADDI s2, zero, 0
  SW s2, 0(s1)
  SLLIW s1, s0, 2
  LA s2, inq
  ADD s1, s2, s1
  ADDI s2, zero, 1
  SW s2, 0(s1)
  LA s1, tail
  ADDI s2, zero, 1
  SW s2, 0(s1)
  LA s1, que
  SW s0, 4(s1)
  LA s0, h
  LW s0, 0(s0)
  LA s1, tail
  LW s1, 0(s1)
  BLT s0, s1, bb7
  # implict jump to bb1
bb1:
  ADD s0, zero, zero
  # implict jump to bb2
bb2:
  LA s5, tail
  LW s5, 0(s5)
  SLT s5, s5, zero
  XORI s5, s5, 1
  BNE s5, zero, bb4
  # implict jump to bb3
bb3:
  ADD a0, s0, zero
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb4:
  ADD s5, zero, zero
  # implict jump to bb5
bb5:
  ADD s6, s5, zero
  SLLIW s7, s6, 2
  LA s8, que
  ADD s7, s8, s7
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s8, inq
  ADD s7, s8, s7
  SW zero, 0(s7)
  ADDIW s6, s6, 1
  LA s7, tail
  LW s7, 0(s7)
  SLT s7, s7, s6
  XORI s7, s7, 1
  BNE s7, zero, bb6
  JAL zero, bb3
bb6:
  ADD s5, s6, zero
  JAL zero, bb5
bb7:
  ADD s1, zero, zero
  # implict jump to bb8
bb8:
  ADD s2, s1, zero
  LA s3, h
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s4, h
  SW s3, 0(s4)
  SLLIW s3, s3, 2
  LA s4, que
  ADD s3, s4, s3
  LW s3, 0(s3)
  XOR s4, s3, a1
  SLTIU s4, s4, 1
  BNE s4, zero, bb19
  # implict jump to bb9
bb9:
  # implict jump to bb10
bb10:
  SLLIW s3, s3, 2
  LA s4, head
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s4, s3, -1
  BNE s4, zero, bb14
  # implict jump to bb11
bb11:
  LA s5, h
  LW s5, 0(s5)
  LA s6, tail
  LW s6, 0(s6)
  BLT s5, s6, bb13
  # implict jump to bb12
bb12:
  ADD s0, s2, zero
  JAL zero, bb2
bb13:
  ADD s1, s2, zero
  JAL zero, bb8
bb14:
  # implict jump to bb15
bb15:
  ADD s4, s3, zero
  SLLIW s4, s4, 2
  LA s5, to
  ADD s5, s5, s4
  LW s5, 0(s5)
  SLLIW s6, s5, 2
  LA s7, inq
  ADD s6, s7, s6
  LW s7, 0(s6)
  SLTU s7, zero, s7
  XORI s7, s7, 1
  BNE s7, zero, bb18
  # implict jump to bb16
bb16:
  LA s5, next
  ADD s4, s5, s4
  LW s4, 0(s4)
  XORI s5, s4, -1
  BNE s5, zero, bb17
  JAL zero, bb11
bb17:
  ADD s3, s4, zero
  JAL zero, bb15
bb18:
  ADDI s7, zero, 1
  SW s7, 0(s6)
  LA s6, tail
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, tail
  SW s6, 0(s7)
  SLLIW s6, s6, 2
  LA s7, que
  ADD s6, s7, s6
  SW s5, 0(s6)
  JAL zero, bb16
bb19:
  ADDI s2, zero, 1
  JAL zero, bb10
init:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s0, zero, zero
  # implict jump to bb21
bb21:
  ADD s1, s0, zero
  SLLIW s2, s1, 2
  LA s3, head
  ADD s2, s3, s2
  ADDI s3, zero, -1
  SW s3, 0(s2)
  ADDIW s1, s1, 1
  SLTI s2, s1, 1005
  BNE s2, zero, bb23
  # implict jump to bb22
bb22:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb23:
  ADD s0, s1, zero
  JAL zero, bb21
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
  SD s4, 40(sp)
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
  ADDIW s1, s0, 1
  LA s2, cnt
  SW s1, 0(s2)
  SLLIW s2, s1, 2
  LA s3, to
  ADD s3, s3, s2
  SW a0, 0(s3)
  LA s3, next
  ADD s2, s3, s2
  SLLIW s3, a1, 2
  LA s4, head
  ADD s3, s4, s3
  LW s4, 0(s3)
  SW s4, 0(s2)
  SW s1, 0(s3)
  ADDIW s0, s0, 2
  LA s1, cnt
  SW s0, 0(s1)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -336
  SD ra, 232(sp)
  SD s0, 240(sp)
  SD s1, 248(sp)
  SD s2, 256(sp)
  SD s3, 264(sp)
  SD s4, 272(sp)
  SD s5, 280(sp)
  SD s7, 288(sp)
  SD s8, 296(sp)
  SD s9, 304(sp)
  SD s6, 312(sp)
  SD s10, 320(sp)
  SD s11, 328(sp)
  CALL getch
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 208(sp)
  ADD t4, s0, zero
  SW t4, 204(sp)
  # implict jump to bb27
bb27:
  LW t3, 204(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 212(sp)
  LW t4, 216(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb169
  # implict jump to bb28
bb28:
  ADDI s4, zero, 57
  LW t4, 216(sp)
  SLT s4, s4, t4
  # implict jump to bb29
bb29:
  BNE s4, zero, bb165
  # implict jump to bb30
bb30:
  ADD t4, zero, zero
  SW t4, 224(sp)
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 220(sp)
  # implict jump to bb31
bb31:
  LW t3, 220(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t3, 224(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t4, 124(sp)
  SLTI s8, t4, 48
  XORI s8, s8, 1
  BNE s8, zero, bb164
  # implict jump to bb32
bb32:
  ADD s8, zero, zero
  # implict jump to bb33
bb33:
  BNE s8, zero, bb163
  # implict jump to bb34
bb34:
  LW t4, 212(sp)
  BNE t4, zero, bb162
  # implict jump to bb35
bb35:
  LW t4, 64(sp)
  ADD s8, t4, zero
  # implict jump to bb36
bb36:
  LA s9, n
  SW s8, 0(s9)
  CALL getch
  ADD s8, a0, zero
  ADD t4, zero, zero
  SW t4, 8(sp)
  ADD t4, s8, zero
  SW t4, 4(sp)
  # implict jump to bb37
bb37:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t4, 16(sp)
  SLTI s0, t4, 48
  BNE s0, zero, bb161
  # implict jump to bb38
bb38:
  ADDI s0, zero, 57
  LW t4, 16(sp)
  SLT s0, s0, t4
  # implict jump to bb39
bb39:
  BNE s0, zero, bb157
  # implict jump to bb40
bb40:
  ADD t4, zero, zero
  SW t4, 24(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  # implict jump to bb41
bb41:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t4, 28(sp)
  SLTI s5, t4, 48
  XORI s5, s5, 1
  BNE s5, zero, bb156
  # implict jump to bb42
bb42:
  ADD s5, zero, zero
  # implict jump to bb43
bb43:
  BNE s5, zero, bb155
  # implict jump to bb44
bb44:
  LW t4, 12(sp)
  BNE t4, zero, bb154
  # implict jump to bb45
bb45:
  LW t4, 32(sp)
  ADD s4, t4, zero
  # implict jump to bb46
bb46:
  LA s5, m
  SW s4, 0(s5)
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb47
bb47:
  LW t4, 36(sp)
  ADD s5, t4, zero
  SLLIW s6, s5, 2
  LA s7, head
  ADD s6, s7, s6
  ADDI s7, zero, -1
  SW s7, 0(s6)
  ADDIW t4, s5, 1
  SW t4, 40(sp)
  LW t4, 40(sp)
  SLTI s6, t4, 1005
  BNE s6, zero, bb153
  # implict jump to bb48
bb48:
  LA s6, m
  LW s6, 0(s6)
  BNE s6, zero, bb50
  # implict jump to bb49
bb49:
  ADD a0, zero, zero
  LD ra, 232(sp)
  LD s0, 240(sp)
  LD s1, 248(sp)
  LD s2, 256(sp)
  LD s3, 264(sp)
  LD s4, 272(sp)
  LD s5, 280(sp)
  LD s7, 288(sp)
  LD s8, 296(sp)
  LD s9, 304(sp)
  LD s6, 312(sp)
  LD s10, 320(sp)
  LD s11, 328(sp)
  ADDI sp, sp, 336
  JALR zero, 0(ra)
bb50:
  ADD t4, zero, zero
  SW t4, 76(sp)
  ADD t4, zero, zero
  SW t4, 72(sp)
  ADD t4, zero, zero
  SW t4, 68(sp)
  ADD t4, zero, zero
  SW t4, 0(sp)
  # implict jump to bb51
bb51:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  CALL getch
  ADD s3, a0, zero
  ADD t4, s3, zero
  SW t4, 60(sp)
  # implict jump to bb52
bb52:
  LW t4, 60(sp)
  ADD s2, t4, zero
  XORI s4, s2, 81
  BNE s4, zero, bb152
  # implict jump to bb53
bb53:
  ADD s4, zero, zero
  # implict jump to bb54
bb54:
  BNE s4, zero, bb151
  # implict jump to bb55
bb55:
  XORI s2, s2, 81
  SLTIU s2, s2, 1
  BNE s2, zero, bb95
  # implict jump to bb56
bb56:
  CALL getch
  ADD s2, a0, zero
  ADD t4, zero, zero
  SW t4, 84(sp)
  ADD t4, s2, zero
  SW t4, 80(sp)
  # implict jump to bb57
bb57:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t4, 92(sp)
  SLTI s10, t4, 48
  BNE s10, zero, bb94
  # implict jump to bb58
bb58:
  ADDI s10, zero, 57
  LW t4, 92(sp)
  SLT s10, s10, t4
  # implict jump to bb59
bb59:
  BNE s10, zero, bb90
  # implict jump to bb60
bb60:
  ADD t4, zero, zero
  SW t4, 100(sp)
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  # implict jump to bb61
bb61:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  LW t4, 104(sp)
  SLTI s9, t4, 48
  XORI s9, s9, 1
  BNE s9, zero, bb89
  # implict jump to bb62
bb62:
  ADD s9, zero, zero
  # implict jump to bb63
bb63:
  BNE s9, zero, bb88
  # implict jump to bb64
bb64:
  LW t4, 88(sp)
  BNE t4, zero, bb87
  # implict jump to bb65
bb65:
  LW t4, 108(sp)
  ADD s8, t4, zero
  # implict jump to bb66
bb66:
  ADD t4, s8, zero
  SW t4, 112(sp)
  CALL getch
  ADD s9, a0, zero
  ADD t4, zero, zero
  SW t4, 120(sp)
  ADD t4, s9, zero
  SW t4, 116(sp)
  # implict jump to bb67
bb67:
  LW t4, 116(sp)
  ADD s6, t4, zero
  LW t4, 120(sp)
  ADD s2, t4, zero
  SLTI s4, s6, 48
  BNE s4, zero, bb86
  # implict jump to bb68
bb68:
  ADDI s4, zero, 57
  SLT s4, s4, s6
  # implict jump to bb69
bb69:
  BNE s4, zero, bb82
  # implict jump to bb70
bb70:
  ADD s4, zero, zero
  ADD s11, s6, zero
  # implict jump to bb71
bb71:
  ADD s5, s11, zero
  ADD s1, s4, zero
  SLTI s10, s5, 48
  XORI s10, s10, 1
  BNE s10, zero, bb81
  # implict jump to bb72
bb72:
  ADD s10, zero, zero
  # implict jump to bb73
bb73:
  BNE s10, zero, bb80
  # implict jump to bb74
bb74:
  BNE s2, zero, bb79
  # implict jump to bb75
bb75:
  ADD s0, s1, zero
  # implict jump to bb76
bb76:
  LA s10, cnt
  LW s10, 0(s10)
  SLLIW s3, s10, 2
  LA s8, to
  ADD s8, s8, s3
  SW s0, 0(s8)
  LA s8, next
  ADD s3, s8, s3
  LW t4, 112(sp)
  SLLIW s8, t4, 2
  LA s9, head
  ADD s8, s9, s8
  LW s9, 0(s8)
  SW s9, 0(s3)
  SW s10, 0(s8)
  ADDIW s3, s10, 1
  LA s8, cnt
  SW s3, 0(s8)
  SLLIW s8, s3, 2
  LA s9, to
  ADD s9, s9, s8
  LW t4, 112(sp)
  SW t4, 0(s9)
  LA s9, next
  ADD s8, s9, s8
  SLLIW s9, s0, 2
  LA s7, head
  ADD s7, s7, s9
  LW s9, 0(s7)
  SW s9, 0(s8)
  SW s3, 0(s7)
  ADDIW s3, s10, 2
  LA s7, cnt
  SW s3, 0(s7)
  LW t4, 112(sp)
  ADD s3, t4, zero
  LW t4, 52(sp)
  ADD s7, t4, zero
  LW t4, 56(sp)
  ADD s8, t4, zero
  # implict jump to bb77
bb77:
  LA s10, m
  LW s10, 0(s10)
  ADDI s11, zero, 1
  SUBW s10, s10, s11
  LA s11, m
  SW s10, 0(s11)
  LA s10, m
  LW s10, 0(s10)
  BNE s10, zero, bb78
  JAL zero, bb49
bb78:
  ADD t4, s8, zero
  SW t4, 76(sp)
  ADD t4, s7, zero
  SW t4, 72(sp)
  ADD t4, s3, zero
  SW t4, 68(sp)
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb51
bb79:
  SUB s10, zero, s1
  ADD s0, s10, zero
  JAL zero, bb76
bb80:
  ADDI s9, zero, 10
  MULW s1, s1, s9
  ADDW s1, s1, s5
  ADDI s5, zero, 48
  SUBW s1, s1, s5
  CALL getch
  ADD s5, a0, zero
  ADD s4, s1, zero
  ADD s11, s5, zero
  JAL zero, bb71
bb81:
  ADDI s0, zero, 57
  SLT s0, s0, s5
  XORI s0, s0, 1
  ADD s10, s0, zero
  JAL zero, bb73
bb82:
  XORI s1, s6, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb85
  # implict jump to bb83
bb83:
  ADD s1, s2, zero
  # implict jump to bb84
bb84:
  CALL getch
  ADD s2, a0, zero
  ADD t4, s1, zero
  SW t4, 120(sp)
  ADD t4, s2, zero
  SW t4, 116(sp)
  JAL zero, bb67
bb85:
  ADDI s1, zero, 1
  JAL zero, bb84
bb86:
  ADDI s4, zero, 1
  JAL zero, bb69
bb87:
  LW t4, 108(sp)
  SUB s9, zero, t4
  ADD s8, s9, zero
  JAL zero, bb66
bb88:
  ADDI s1, zero, 10
  LW t4, 108(sp)
  MULW s1, t4, s1
  LW t4, 104(sp)
  ADDW s1, s1, t4
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  CALL getch
  ADD s2, a0, zero
  ADD t4, s1, zero
  SW t4, 100(sp)
  ADD t4, s2, zero
  SW t4, 96(sp)
  JAL zero, bb61
bb89:
  ADDI s8, zero, 57
  LW t4, 104(sp)
  SLT s8, s8, t4
  XORI s8, s8, 1
  ADD s9, s8, zero
  JAL zero, bb63
bb90:
  LW t4, 92(sp)
  XORI s1, t4, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb93
  # implict jump to bb91
bb91:
  LW t4, 88(sp)
  ADD s1, t4, zero
  # implict jump to bb92
bb92:
  CALL getch
  ADD s2, a0, zero
  ADD t4, s1, zero
  SW t4, 84(sp)
  ADD t4, s2, zero
  SW t4, 80(sp)
  JAL zero, bb57
bb93:
  ADDI s1, zero, 1
  JAL zero, bb92
bb94:
  ADDI s10, zero, 1
  JAL zero, bb59
bb95:
  CALL getch
  ADD s1, a0, zero
  ADD t4, zero, zero
  SW t4, 196(sp)
  ADD t4, s1, zero
  SW t4, 200(sp)
  # implict jump to bb96
bb96:
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  LW t3, 196(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  LW t4, 188(sp)
  SLTI s6, t4, 48
  BNE s6, zero, bb150
  # implict jump to bb97
bb97:
  ADDI s6, zero, 57
  LW t4, 188(sp)
  SLT s6, s6, t4
  # implict jump to bb98
bb98:
  BNE s6, zero, bb146
  # implict jump to bb99
bb99:
  ADD t4, zero, zero
  SW t4, 180(sp)
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  # implict jump to bb100
bb100:
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  LW t4, 176(sp)
  SLTI s1, t4, 48
  XORI s1, s1, 1
  BNE s1, zero, bb145
  # implict jump to bb101
bb101:
  ADD s1, zero, zero
  # implict jump to bb102
bb102:
  BNE s1, zero, bb144
  # implict jump to bb103
bb103:
  LW t4, 192(sp)
  BNE t4, zero, bb143
  # implict jump to bb104
bb104:
  LW t4, 172(sp)
  ADD s1, t4, zero
  # implict jump to bb105
bb105:
  ADD t4, s1, zero
  SW t4, 168(sp)
  CALL getch
  ADD s2, a0, zero
  ADD t4, zero, zero
  SW t4, 160(sp)
  ADD t4, s2, zero
  SW t4, 164(sp)
  # implict jump to bb106
bb106:
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LW t4, 152(sp)
  SLTI s6, t4, 48
  BNE s6, zero, bb142
  # implict jump to bb107
bb107:
  ADDI s6, zero, 57
  LW t4, 152(sp)
  SLT s6, s6, t4
  # implict jump to bb108
bb108:
  BNE s6, zero, bb138
  # implict jump to bb109
bb109:
  ADD t4, zero, zero
  SW t4, 144(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  # implict jump to bb110
bb110:
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t4, 140(sp)
  SLTI s2, t4, 48
  XORI s2, s2, 1
  BNE s2, zero, bb137
  # implict jump to bb111
bb111:
  ADD s2, zero, zero
  # implict jump to bb112
bb112:
  BNE s2, zero, bb136
  # implict jump to bb113
bb113:
  LW t4, 156(sp)
  BNE t4, zero, bb135
  # implict jump to bb114
bb114:
  LW t4, 136(sp)
  ADD s2, t4, zero
  # implict jump to bb115
bb115:
  ADD t4, s2, zero
  SW t4, 128(sp)
  LA s5, h
  SW zero, 0(s5)
  LA s5, tail
  SW zero, 0(s5)
  LW t4, 168(sp)
  SLLIW s5, t4, 2
  LA s9, inq
  ADD s5, s9, s5
  ADDI s9, zero, 1
  SW s9, 0(s5)
  LA s5, tail
  ADDI s9, zero, 1
  SW s9, 0(s5)
  LA s5, que
  LW t4, 168(sp)
  SW t4, 4(s5)
  LA s5, h
  LW s5, 0(s5)
  LA s9, tail
  LW s9, 0(s9)
  BLT s5, s9, bb122
  # implict jump to bb116
bb116:
  ADD s5, zero, zero
  # implict jump to bb117
bb117:
  LA s4, tail
  LW s4, 0(s4)
  SLT s4, s4, zero
  XORI s4, s4, 1
  BNE s4, zero, bb119
  # implict jump to bb118
bb118:
  ADD a0, s5, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t4, 44(sp)
  ADD s0, t4, zero
  LW t4, 48(sp)
  ADD s3, t4, zero
  LW t4, 128(sp)
  ADD s7, t4, zero
  LW t4, 168(sp)
  ADD s8, t4, zero
  JAL zero, bb77
bb119:
  ADD s4, zero, zero
  # implict jump to bb120
bb120:
  ADD s10, s4, zero
  SLLIW s11, s10, 2
  LA s2, que
  ADD s2, s2, s11
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s11, inq
  ADD s2, s11, s2
  SW zero, 0(s2)
  ADDIW s2, s10, 1
  LA s10, tail
  LW s10, 0(s10)
  SLT s10, s10, s2
  XORI s10, s10, 1
  BNE s10, zero, bb121
  JAL zero, bb118
bb121:
  ADD s4, s2, zero
  JAL zero, bb120
bb122:
  ADD s9, zero, zero
  # implict jump to bb123
bb123:
  ADD s4, s9, zero
  LA s10, h
  LW s10, 0(s10)
  ADDIW s10, s10, 1
  LA s6, h
  SW s10, 0(s6)
  SLLIW s6, s10, 2
  LA s10, que
  ADD s6, s10, s6
  LW s6, 0(s6)
  LW t4, 128(sp)
  XOR s10, s6, t4
  SLTIU s10, s10, 1
  BNE s10, zero, bb134
  # implict jump to bb124
bb124:
  # implict jump to bb125
bb125:
  ADD t4, s4, zero
  SW t4, 132(sp)
  SLLIW s6, s6, 2
  LA s10, head
  ADD s6, s10, s6
  LW s6, 0(s6)
  XORI s10, s6, -1
  BNE s10, zero, bb129
  # implict jump to bb126
bb126:
  LA s4, h
  LW s4, 0(s4)
  LA s10, tail
  LW s10, 0(s10)
  BLT s4, s10, bb128
  # implict jump to bb127
bb127:
  LW t4, 132(sp)
  ADD s5, t4, zero
  JAL zero, bb117
bb128:
  LW t4, 132(sp)
  ADD s9, t4, zero
  JAL zero, bb123
bb129:
  # implict jump to bb130
bb130:
  ADD s10, s6, zero
  SLLIW s10, s10, 2
  LA s11, to
  ADD s11, s11, s10
  LW s11, 0(s11)
  SLLIW s1, s11, 2
  LA s4, inq
  ADD s1, s4, s1
  LW s4, 0(s1)
  SLTU s4, zero, s4
  XORI s4, s4, 1
  BNE s4, zero, bb133
  # implict jump to bb131
bb131:
  LA s1, next
  ADD s1, s1, s10
  LW s1, 0(s1)
  XORI s4, s1, -1
  BNE s4, zero, bb132
  JAL zero, bb126
bb132:
  ADD s6, s1, zero
  JAL zero, bb130
bb133:
  ADDI s4, zero, 1
  SW s4, 0(s1)
  LA s1, tail
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, tail
  SW s1, 0(s4)
  SLLIW s1, s1, 2
  LA s4, que
  ADD s1, s4, s1
  SW s11, 0(s1)
  JAL zero, bb131
bb134:
  ADDI s4, zero, 1
  JAL zero, bb125
bb135:
  LW t4, 136(sp)
  SUB s5, zero, t4
  ADD s2, s5, zero
  JAL zero, bb115
bb136:
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
  JAL zero, bb110
bb137:
  ADDI s5, zero, 57
  LW t4, 140(sp)
  SLT s5, s5, t4
  XORI s5, s5, 1
  ADD s2, s5, zero
  JAL zero, bb112
bb138:
  LW t4, 152(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb141
  # implict jump to bb139
bb139:
  LW t4, 156(sp)
  ADD s0, t4, zero
  # implict jump to bb140
bb140:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 160(sp)
  ADD t4, s1, zero
  SW t4, 164(sp)
  JAL zero, bb106
bb141:
  ADDI s0, zero, 1
  JAL zero, bb140
bb142:
  ADDI s6, zero, 1
  JAL zero, bb108
bb143:
  LW t4, 172(sp)
  SUB s2, zero, t4
  ADD s1, s2, zero
  JAL zero, bb105
bb144:
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
  JAL zero, bb100
bb145:
  ADDI s2, zero, 57
  LW t4, 176(sp)
  SLT s2, s2, t4
  XORI s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb102
bb146:
  LW t4, 188(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb149
  # implict jump to bb147
bb147:
  LW t4, 192(sp)
  ADD s0, t4, zero
  # implict jump to bb148
bb148:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 196(sp)
  ADD t4, s1, zero
  SW t4, 200(sp)
  JAL zero, bb96
bb149:
  ADDI s0, zero, 1
  JAL zero, bb148
bb150:
  ADDI s6, zero, 1
  JAL zero, bb98
bb151:
  CALL getch
  ADD s0, a0, zero
  ADD t4, s0, zero
  SW t4, 60(sp)
  JAL zero, bb52
bb152:
  XORI s5, s2, 85
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb54
bb153:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  JAL zero, bb47
bb154:
  LW t4, 32(sp)
  SUB s5, zero, t4
  ADD s4, s5, zero
  JAL zero, bb46
bb155:
  ADDI s0, zero, 10
  LW t4, 32(sp)
  MULW s0, t4, s0
  LW t4, 28(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 24(sp)
  ADD t4, s1, zero
  SW t4, 20(sp)
  JAL zero, bb41
bb156:
  ADDI s4, zero, 57
  LW t4, 28(sp)
  SLT s4, s4, t4
  XORI s4, s4, 1
  ADD s5, s4, zero
  JAL zero, bb43
bb157:
  LW t4, 16(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb160
  # implict jump to bb158
bb158:
  LW t4, 12(sp)
  ADD s0, t4, zero
  # implict jump to bb159
bb159:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 8(sp)
  ADD t4, s1, zero
  SW t4, 4(sp)
  JAL zero, bb37
bb160:
  ADDI s0, zero, 1
  JAL zero, bb159
bb161:
  ADDI s0, zero, 1
  JAL zero, bb39
bb162:
  LW t4, 64(sp)
  SUB s9, zero, t4
  ADD s8, s9, zero
  JAL zero, bb36
bb163:
  ADDI s0, zero, 10
  LW t4, 64(sp)
  MULW s0, t4, s0
  LW t4, 124(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 224(sp)
  ADD t4, s1, zero
  SW t4, 220(sp)
  JAL zero, bb31
bb164:
  ADDI s9, zero, 57
  LW t4, 124(sp)
  SLT s9, s9, t4
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb33
bb165:
  LW t4, 216(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb168
  # implict jump to bb166
bb166:
  LW t4, 212(sp)
  ADD s0, t4, zero
  # implict jump to bb167
bb167:
  CALL getch
  ADD t4, s0, zero
  SW t4, 208(sp)
  ADD t4, a0, zero
  SW t4, 204(sp)
  JAL zero, bb27
bb168:
  ADDI s0, zero, 1
  JAL zero, bb167
bb169:
  ADDI s4, zero, 1
  JAL zero, bb29
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
  # implict jump to bb172
bb172:
  ADD s2, s0, zero
  ADD s3, s1, zero
  SLTI s4, s2, 48
  BNE s4, zero, bb188
  # implict jump to bb173
bb173:
  ADDI s4, zero, 57
  SLT s4, s4, s2
  # implict jump to bb174
bb174:
  BNE s4, zero, bb184
  # implict jump to bb175
bb175:
  ADD s4, zero, zero
  ADD s5, s2, zero
  # implict jump to bb176
bb176:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s6, 48
  XORI s8, s8, 1
  BNE s8, zero, bb183
  # implict jump to bb177
bb177:
  ADD s8, zero, zero
  # implict jump to bb178
bb178:
  BNE s8, zero, bb182
  # implict jump to bb179
bb179:
  BNE s3, zero, bb181
  # implict jump to bb180
bb180:
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
bb181:
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
bb182:
  ADDI s8, zero, 10
  MULW s7, s7, s8
  ADDW s6, s7, s6
  ADDI s7, zero, 48
  SUBW s6, s6, s7
  CALL getch
  ADD s7, a0, zero
  ADD s4, s6, zero
  ADD s5, s7, zero
  JAL zero, bb176
bb183:
  ADDI s9, zero, 57
  SLT s9, s9, s6
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb178
bb184:
  XORI s2, s2, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb187
  # implict jump to bb185
bb185:
  ADD s2, s3, zero
  # implict jump to bb186
bb186:
  CALL getch
  ADD s1, s2, zero
  ADD s0, a0, zero
  JAL zero, bb172
bb187:
  ADDI s2, zero, 1
  JAL zero, bb186
bb188:
  ADDI s4, zero, 1
  JAL zero, bb174
