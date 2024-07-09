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
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s11, 8(sp)
  SD s10, 16(sp)
  SD s0, 24(sp)
  SD s5, 32(sp)
  SD s7, 40(sp)
  SD s1, 48(sp)
  SD s6, 56(sp)
  SD s8, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD s9, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  LA s2, h
  ADDI s3, zero, 0
  SW s3, 0(s2)
  LA s2, tail
  ADDI s3, zero, 0
  SW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, inq
  ADD s4, s2, s3
  ADDI s2, zero, 1
  SW s2, 0(s4)
  LA s2, tail
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, tail
  SW s2, 0(s3)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s2, que
  ADD s3, s2, s4
  SW s0, 0(s3)
  JAL zero, bb1
bb1:
  ADD s0, zero, zero
  JAL zero, bb2
bb2:
  ADD s2, s0, zero
  LA s3, h
  LW s4, 0(s3)
  LA s3, tail
  LW s5, 0(s3)
  SLT s3, s4, s5
  BNE s3, zero, bb3
  JAL zero, bb4
bb3:
  LA s3, h
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, h
  SW s3, 0(s4)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LA s3, que
  ADD s4, s3, s5
  LW s3, 0(s4)
  XOR s4, s3, s1
  SLTIU s5, s4, 1
  BNE s5, zero, bb5
  JAL zero, bb16
bb4:
  ADD s0, zero, zero
  JAL zero, bb13
bb5:
  ADDI s4, zero, 1
  JAL zero, bb6
bb6:
  ADD s5, s4, zero
  ADDI s6, zero, 4
  MULW s7, s3, s6
  LA s6, head
  ADD s8, s6, s7
  LW s6, 0(s8)
  ADD s7, s6, zero
  JAL zero, bb7
bb7:
  ADD s6, s7, zero
  XORI s8, s6, -1
  SLTU s9, zero, s8
  BNE s9, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s8, zero, 4
  MULW s9, s6, s8
  LA s6, to
  ADD s8, s6, s9
  LW s6, 0(s8)
  ADDI s10, zero, 4
  MULW s11, s6, s10
  LA s6, inq
  ADD s10, s6, s11
  LW s6, 0(s10)
  XOR s10, s6, zero
  SLTU s6, zero, s10
  XORI s10, s6, 1
  XOR s6, s10, zero
  SLTU s10, zero, s6
  BNE s10, zero, bb10
  JAL zero, bb12
bb9:
  ADD s0, s5, zero
  JAL zero, bb2
bb10:
  LW s6, 0(s8)
  ADDI s8, zero, 4
  MULW s10, s6, s8
  LA s8, inq
  ADD s11, s8, s10
  ADDI s8, zero, 1
  SW s8, 0(s11)
  LA s8, tail
  LW s10, 0(s8)
  ADDIW s8, s10, 1
  LA s10, tail
  SW s8, 0(s10)
  ADDI s10, zero, 4
  MULW s11, s8, s10
  LA s8, que
  ADD s10, s8, s11
  SW s6, 0(s10)
  JAL zero, bb11
bb11:
  JAL zero, bb12
bb12:
  LA s6, next
  ADD s8, s6, s9
  LW s6, 0(s8)
  ADD s7, s6, zero
  JAL zero, bb7
bb13:
  ADD s1, s0, zero
  LA s3, tail
  LW s4, 0(s3)
  SLT s3, s4, s1
  XORI s4, s3, 1
  BNE s4, zero, bb14
  JAL zero, bb15
bb14:
  ADDI s3, zero, 4
  MULW s4, s1, s3
  LA s3, que
  ADD s5, s3, s4
  LW s3, 0(s5)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LA s3, inq
  ADD s4, s3, s5
  SW zero, 0(s4)
  ADDIW s3, s1, 1
  ADD s0, s3, zero
  JAL zero, bb13
bb15:
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s11, 8(sp)
  LD s10, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s7, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s8, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s9, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb16:
  ADD s4, s2, zero
  JAL zero, bb6
init:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, zero, zero
  JAL zero, bb18
bb18:
  ADD s1, s0, zero
  SLTI s2, s1, 1005
  BNE s2, zero, bb19
  JAL zero, bb20
bb19:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, head
  ADD s4, s2, s3
  ADDI s2, zero, -1
  SW s2, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb18
bb20:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
inqueue:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, inq
  ADD s3, s1, s2
  ADDI s1, zero, 1
  SW s1, 0(s3)
  LA s1, tail
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, tail
  SW s1, 0(s2)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, que
  ADD s2, s1, s3
  SW s0, 0(s2)
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
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
  ADDI sp, sp, -512
  SD s11, 400(sp)
  SD s6, 408(sp)
  SD s8, 416(sp)
  SD s0, 424(sp)
  SD s5, 432(sp)
  SD s7, 440(sp)
  SD s10, 448(sp)
  SD s1, 456(sp)
  SD s2, 464(sp)
  SD s9, 472(sp)
  SD s4, 480(sp)
  SD ra, 488(sp)
  SD s3, 496(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb63
bb24:
  LW t4, 48(sp)
  ADD s1, t4, zero
  LA s7, n
  SW s1, 0(s7)
  CALL getch
  ADD s1, a0, zero
  ADD s7, zero, zero
  ADD s9, s1, zero
  JAL zero, bb79
bb25:
  LW t4, 104(sp)
  ADD s0, t4, zero
  LA s5, m
  SW s0, 0(s5)
  JAL zero, bb59
bb26:
  ADD t4, zero, zero
  SW t4, 304(sp)
  ADD t4, zero, zero
  SW t4, 296(sp)
  ADD t4, zero, zero
  SW t4, 288(sp)
  ADD t4, zero, zero
  SW t4, 280(sp)
  JAL zero, bb27
bb27:
  LW t3, 280(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t3, 288(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t3, 296(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t3, 304(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LA s7, m
  LW s4, 0(s7)
  XOR s7, s4, zero
  SLTU s4, zero, s7
  BNE s4, zero, bb28
  JAL zero, bb29
bb28:
  CALL getch
  ADD s4, a0, zero
  ADD s7, s4, zero
  JAL zero, bb30
bb29:
  ADD a0, zero, zero
  LD s11, 400(sp)
  LD s6, 408(sp)
  LD s8, 416(sp)
  LD s0, 424(sp)
  LD s5, 432(sp)
  LD s7, 440(sp)
  LD s10, 448(sp)
  LD s1, 456(sp)
  LD s2, 464(sp)
  LD s9, 472(sp)
  LD s4, 480(sp)
  LD ra, 488(sp)
  LD s3, 496(sp)
  ADDI sp, sp, 512
  JALR zero, 0(ra)
bb30:
  ADD t4, s7, zero
  SW t4, 112(sp)
  LW t4, 112(sp)
  XORI s9, t4, 81
  SLTU s3, zero, s9
  BNE s3, zero, bb33
  JAL zero, bb34
bb31:
  CALL getch
  ADD s9, a0, zero
  ADD s7, s9, zero
  JAL zero, bb30
bb32:
  LW t4, 112(sp)
  XORI s7, t4, 81
  SLTIU s9, s7, 1
  BNE s9, zero, bb36
  JAL zero, bb40
bb33:
  LW t4, 112(sp)
  XORI s3, t4, 85
  SLTU s9, zero, s3
  ADD t4, s9, zero
  SB t4, 152(sp)
  JAL zero, bb35
bb34:
  ADD t4, zero, zero
  SB t4, 152(sp)
  JAL zero, bb35
bb35:
  LB t4, 152(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb31
  JAL zero, bb32
bb36:
  CALL getch
  ADD s7, a0, zero
  ADD s9, zero, zero
  ADD s4, s7, zero
  JAL zero, bb95
bb37:
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 232(sp)
  CALL getch
  ADD s4, a0, zero
  ADD s7, zero, zero
  ADD s10, s4, zero
  JAL zero, bb111
bb38:
  LW t4, 272(sp)
  ADD s1, t4, zero
  LA s4, h
  SW zero, 0(s4)
  LA s4, tail
  SW zero, 0(s4)
  ADDI s4, zero, 4
  LW t4, 232(sp)
  MULW s7, t4, s4
  LA s4, inq
  ADD s8, s4, s7
  ADDI s4, zero, 1
  SW s4, 0(s8)
  LA s4, tail
  LW s7, 0(s4)
  ADDIW s4, s7, 1
  LA s7, tail
  SW s4, 0(s7)
  ADDI s7, zero, 4
  MULW s8, s4, s7
  LA s4, que
  ADD s7, s4, s8
  LW t4, 232(sp)
  SW t4, 0(s7)
  JAL zero, bb44
bb39:
  ADD s4, s1, zero
  ADD s5, s3, zero
  ADD s6, s2, zero
  ADD s7, s0, zero
  LA s8, m
  LW s9, 0(s8)
  ADDI s8, zero, 1
  SUBW s10, s9, s8
  LA s8, m
  SW s10, 0(s8)
  ADD t4, s7, zero
  SW t4, 304(sp)
  ADD t4, s6, zero
  SW t4, 296(sp)
  ADD t4, s5, zero
  SW t4, 288(sp)
  ADD t4, s4, zero
  SW t4, 280(sp)
  JAL zero, bb27
bb40:
  CALL getch
  ADD s4, a0, zero
  ADD s5, zero, zero
  ADD s6, s4, zero
  JAL zero, bb127
bb41:
  LW t3, 360(sp)
  ADD t4, t3, zero
  SW t4, 384(sp)
  CALL getch
  ADD s6, a0, zero
  ADD s7, zero, zero
  ADD s8, s6, zero
  JAL zero, bb143
bb42:
  ADD s4, s5, zero
  LA s6, cnt
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s9, s7, s6
  LA s6, to
  ADD s7, s6, s9
  SW s4, 0(s7)
  LA s6, cnt
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s9, s7, s6
  LA s6, next
  ADD s7, s6, s9
  ADDI s6, zero, 4
  LW t4, 384(sp)
  MULW s9, t4, s6
  LA s6, head
  ADD t0, s6, s9
  LW s6, 0(t0)
  SW s6, 0(s7)
  LA s6, cnt
  LW s7, 0(s6)
  SW s7, 0(t0)
  LA s6, cnt
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, cnt
  SW s6, 0(s7)
  ADDI s7, zero, 4
  MULW s9, s6, s7
  LA s6, to
  ADD s7, s6, s9
  LW t4, 384(sp)
  SW t4, 0(s7)
  LA s6, cnt
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s9, s7, s6
  LA s6, next
  ADD s7, s6, s9
  ADDI s6, zero, 4
  MULW s9, s4, s6
  LA s6, head
  ADD t0, s6, s9
  LW s6, 0(t0)
  SW s6, 0(s7)
  LA s6, cnt
  LW s7, 0(s6)
  SW s7, 0(t0)
  LA s6, cnt
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, cnt
  SW s6, 0(s7)
  JAL zero, bb43
bb43:
  ADD s0, s4, zero
  LW t4, 384(sp)
  ADD s2, t4, zero
  LW t4, 136(sp)
  ADD s3, t4, zero
  LW t4, 144(sp)
  ADD s1, t4, zero
  JAL zero, bb39
bb44:
  ADD s4, zero, zero
  JAL zero, bb45
bb45:
  ADD s7, s4, zero
  LA s8, h
  LW s10, 0(s8)
  LA s8, tail
  LW s9, 0(s8)
  SLT s8, s10, s9
  BNE s8, zero, bb46
  JAL zero, bb47
bb46:
  LA s8, h
  LW s9, 0(s8)
  ADDIW s8, s9, 1
  LA s9, h
  SW s8, 0(s9)
  ADDI s9, zero, 4
  MULW s10, s8, s9
  LA s8, que
  ADD s9, s8, s10
  LW s8, 0(s9)
  XOR s9, s8, s1
  SLTIU s10, s9, 1
  BNE s10, zero, bb48
  JAL zero, bb159
bb47:
  ADD s0, zero, zero
  JAL zero, bb56
bb48:
  ADDI s9, zero, 1
  JAL zero, bb49
bb49:
  ADD s10, s9, zero
  ADDI s11, zero, 4
  MULW s3, s8, s11
  LA s11, head
  ADD s6, s11, s3
  LW s3, 0(s6)
  ADD s6, s3, zero
  JAL zero, bb50
bb50:
  ADD s3, s6, zero
  XORI s11, s3, -1
  SLTU s5, zero, s11
  BNE s5, zero, bb51
  JAL zero, bb52
bb51:
  ADDI s5, zero, 4
  MULW s11, s3, s5
  LA s3, to
  ADD s5, s3, s11
  LW s3, 0(s5)
  ADDI s2, zero, 4
  MULW s0, s3, s2
  LA s2, inq
  ADD s3, s2, s0
  LW s0, 0(s3)
  XOR s2, s0, zero
  SLTU s0, zero, s2
  XORI s2, s0, 1
  XOR s0, s2, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb53
  JAL zero, bb55
bb52:
  ADD s4, s10, zero
  JAL zero, bb45
bb53:
  LW s0, 0(s5)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, inq
  ADD s5, s2, s3
  ADDI s2, zero, 1
  SW s2, 0(s5)
  LA s2, tail
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, tail
  SW s2, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s2, s3
  LA s2, que
  ADD s3, s2, s5
  SW s0, 0(s3)
  JAL zero, bb54
bb54:
  JAL zero, bb55
bb55:
  LA s0, next
  ADD s2, s0, s11
  LW s0, 0(s2)
  ADD s6, s0, zero
  JAL zero, bb50
bb56:
  ADD s2, s0, zero
  LA s3, tail
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb57
  JAL zero, bb58
bb57:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s3, que
  ADD s5, s3, s4
  LW s3, 0(s5)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LA s3, inq
  ADD s4, s3, s5
  SW zero, 0(s4)
  ADDIW s3, s2, 1
  ADD s0, s3, zero
  JAL zero, bb56
bb58:
  ADD a0, s7, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t4, 120(sp)
  ADD s0, t4, zero
  LW t4, 128(sp)
  ADD s2, t4, zero
  ADD s3, s1, zero
  LW t4, 232(sp)
  ADD s1, t4, zero
  JAL zero, bb39
bb59:
  ADD s0, zero, zero
  JAL zero, bb60
bb60:
  ADD s5, s0, zero
  SLTI s6, s5, 1005
  BNE s6, zero, bb61
  JAL zero, bb62
bb61:
  ADDI s6, zero, 4
  MULW s8, s5, s6
  LA s6, head
  ADD s2, s6, s8
  ADDI s6, zero, -1
  SW s6, 0(s2)
  ADDIW s2, s5, 1
  ADD s0, s2, zero
  JAL zero, bb60
bb62:
  JAL zero, bb26
bb63:
  ADD t4, s2, zero
  SW t4, 8(sp)
  ADD t4, s1, zero
  SW t4, 0(sp)
  LW t4, 8(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb66
  JAL zero, bb67
bb64:
  LW t4, 8(sp)
  XORI s5, t4, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb69
  JAL zero, bb160
bb65:
  ADD s1, zero, zero
  LW t4, 8(sp)
  ADD s2, t4, zero
  JAL zero, bb71
bb66:
  ADDI t4, zero, 1
  SB t4, 16(sp)
  JAL zero, bb68
bb67:
  ADDI s0, zero, 57
  LW t4, 8(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 16(sp)
  JAL zero, bb68
bb68:
  LB t4, 16(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb64
  JAL zero, bb65
bb69:
  ADDI s5, zero, 1
  JAL zero, bb70
bb70:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb63
bb71:
  ADD t4, s2, zero
  SW t4, 32(sp)
  ADD t4, s1, zero
  SW t4, 24(sp)
  LW t4, 32(sp)
  SLTI s7, t4, 48
  XORI s8, s7, 1
  BNE s8, zero, bb74
  JAL zero, bb75
bb72:
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
  JAL zero, bb71
bb73:
  LW t4, 0(sp)
  XOR s1, t4, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb77
  JAL zero, bb78
bb74:
  ADDI s7, zero, 57
  LW t4, 32(sp)
  SLT s8, s7, t4
  XORI s7, s8, 1
  ADD t4, s7, zero
  SB t4, 40(sp)
  JAL zero, bb76
bb75:
  ADD t4, zero, zero
  SB t4, 40(sp)
  JAL zero, bb76
bb76:
  LB t4, 40(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb72
  JAL zero, bb73
bb77:
  LW t4, 24(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 48(sp)
  JAL zero, bb24
bb78:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb24
bb79:
  ADD t4, s9, zero
  SW t4, 64(sp)
  ADD t4, s7, zero
  SW t4, 56(sp)
  LW t4, 64(sp)
  SLTI s11, t4, 48
  BNE s11, zero, bb82
  JAL zero, bb83
bb80:
  LW t4, 64(sp)
  XORI s3, t4, 45
  SLTIU s0, s3, 1
  BNE s0, zero, bb85
  JAL zero, bb161
bb81:
  ADD s0, zero, zero
  LW t4, 64(sp)
  ADD s3, t4, zero
  JAL zero, bb87
bb82:
  ADDI t4, zero, 1
  SB t4, 72(sp)
  JAL zero, bb84
bb83:
  ADDI s0, zero, 57
  LW t4, 64(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 72(sp)
  JAL zero, bb84
bb84:
  LB t4, 72(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb80
  JAL zero, bb81
bb85:
  ADDI s0, zero, 1
  JAL zero, bb86
bb86:
  ADD s3, s0, zero
  CALL getch
  ADD s4, a0, zero
  ADD s7, s3, zero
  ADD s9, s4, zero
  JAL zero, bb79
bb87:
  ADD t4, s3, zero
  SW t4, 88(sp)
  ADD t4, s0, zero
  SW t4, 80(sp)
  LW t4, 88(sp)
  SLTI s9, t4, 48
  XORI s6, s9, 1
  BNE s6, zero, bb90
  JAL zero, bb91
bb88:
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
  JAL zero, bb87
bb89:
  LW t4, 56(sp)
  XOR s0, t4, zero
  SLTU s3, zero, s0
  BNE s3, zero, bb93
  JAL zero, bb94
bb90:
  ADDI s6, zero, 57
  LW t4, 88(sp)
  SLT s9, s6, t4
  XORI s6, s9, 1
  ADD t4, s6, zero
  SB t4, 96(sp)
  JAL zero, bb92
bb91:
  ADD t4, zero, zero
  SB t4, 96(sp)
  JAL zero, bb92
bb92:
  LB t4, 96(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb88
  JAL zero, bb89
bb93:
  LW t4, 80(sp)
  SUB s0, zero, t4
  ADD t4, s0, zero
  SW t4, 104(sp)
  JAL zero, bb25
bb94:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  JAL zero, bb25
bb95:
  ADD t4, s4, zero
  SW t4, 168(sp)
  ADD t4, s9, zero
  SW t4, 160(sp)
  LW t4, 168(sp)
  SLTI s1, t4, 48
  BNE s1, zero, bb98
  JAL zero, bb99
bb96:
  LW t4, 168(sp)
  XORI s10, t4, 45
  SLTIU s8, s10, 1
  BNE s8, zero, bb101
  JAL zero, bb162
bb97:
  ADD s3, zero, zero
  LW t4, 168(sp)
  ADD s4, t4, zero
  JAL zero, bb103
bb98:
  ADDI t4, zero, 1
  SB t4, 176(sp)
  JAL zero, bb100
bb99:
  ADDI s4, zero, 57
  LW t4, 168(sp)
  SLT s5, s4, t4
  ADD t4, s5, zero
  SB t4, 176(sp)
  JAL zero, bb100
bb100:
  LB t4, 176(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb96
  JAL zero, bb97
bb101:
  ADDI s8, zero, 1
  JAL zero, bb102
bb102:
  ADD s10, s8, zero
  CALL getch
  ADD s3, a0, zero
  ADD s9, s10, zero
  ADD s4, s3, zero
  JAL zero, bb95
bb103:
  ADD t4, s4, zero
  SW t4, 192(sp)
  ADD t4, s3, zero
  SW t4, 184(sp)
  LW t4, 192(sp)
  SLTI s10, t4, 48
  XORI s11, s10, 1
  BNE s11, zero, bb106
  JAL zero, bb107
bb104:
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
  JAL zero, bb103
bb105:
  LW t4, 160(sp)
  XOR s1, t4, zero
  SLTU s3, zero, s1
  BNE s3, zero, bb109
  JAL zero, bb110
bb106:
  ADDI s10, zero, 57
  LW t4, 192(sp)
  SLT s11, s10, t4
  XORI s10, s11, 1
  ADD t4, s10, zero
  SB t4, 200(sp)
  JAL zero, bb108
bb107:
  ADD t4, zero, zero
  SB t4, 200(sp)
  JAL zero, bb108
bb108:
  LB t4, 200(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb104
  JAL zero, bb105
bb109:
  LW t4, 184(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 208(sp)
  JAL zero, bb37
bb110:
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  JAL zero, bb37
bb111:
  ADD t4, s10, zero
  SW t4, 224(sp)
  ADD t4, s7, zero
  SW t4, 216(sp)
  LW t4, 224(sp)
  SLTI s8, t4, 48
  BNE s8, zero, bb114
  JAL zero, bb115
bb112:
  LW t4, 224(sp)
  XORI s11, t4, 45
  SLTIU s3, s11, 1
  BNE s3, zero, bb117
  JAL zero, bb163
bb113:
  ADD s3, zero, zero
  LW t4, 224(sp)
  ADD s7, t4, zero
  JAL zero, bb119
bb114:
  ADDI t4, zero, 1
  SB t4, 240(sp)
  JAL zero, bb116
bb115:
  ADDI s4, zero, 57
  LW t4, 224(sp)
  SLT s5, s4, t4
  ADD t4, s5, zero
  SB t4, 240(sp)
  JAL zero, bb116
bb116:
  LB t4, 240(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb112
  JAL zero, bb113
bb117:
  ADDI s3, zero, 1
  JAL zero, bb118
bb118:
  ADD s11, s3, zero
  CALL getch
  ADD s9, a0, zero
  ADD s7, s11, zero
  ADD s10, s9, zero
  JAL zero, bb111
bb119:
  ADD t4, s7, zero
  SW t4, 256(sp)
  ADD t4, s3, zero
  SW t4, 248(sp)
  LW t4, 256(sp)
  SLTI s11, t4, 48
  XORI s4, s11, 1
  BNE s4, zero, bb122
  JAL zero, bb123
bb120:
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
  JAL zero, bb119
bb121:
  LW t4, 216(sp)
  XOR s1, t4, zero
  SLTU s3, zero, s1
  BNE s3, zero, bb125
  JAL zero, bb126
bb122:
  ADDI s4, zero, 57
  LW t4, 256(sp)
  SLT s11, s4, t4
  XORI s4, s11, 1
  ADD t4, s4, zero
  SB t4, 264(sp)
  JAL zero, bb124
bb123:
  ADD t4, zero, zero
  SB t4, 264(sp)
  JAL zero, bb124
bb124:
  LB t4, 264(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb120
  JAL zero, bb121
bb125:
  LW t4, 248(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 272(sp)
  JAL zero, bb38
bb126:
  LW t3, 248(sp)
  ADD t4, t3, zero
  SW t4, 272(sp)
  JAL zero, bb38
bb127:
  ADD t4, s6, zero
  SW t4, 320(sp)
  ADD t4, s5, zero
  SW t4, 312(sp)
  LW t4, 320(sp)
  SLTI s8, t4, 48
  BNE s8, zero, bb130
  JAL zero, bb131
bb128:
  LW t4, 320(sp)
  XORI s9, t4, 45
  SLTIU s10, s9, 1
  BNE s10, zero, bb133
  JAL zero, bb164
bb129:
  ADD s5, zero, zero
  LW t4, 320(sp)
  ADD s6, t4, zero
  JAL zero, bb135
bb130:
  ADDI t4, zero, 1
  SB t4, 328(sp)
  JAL zero, bb132
bb131:
  ADDI s0, zero, 57
  LW t4, 320(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 328(sp)
  JAL zero, bb132
bb132:
  LB t4, 328(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb128
  JAL zero, bb129
bb133:
  ADDI s9, zero, 1
  JAL zero, bb134
bb134:
  ADD s10, s9, zero
  CALL getch
  ADD s11, a0, zero
  ADD s5, s10, zero
  ADD s6, s11, zero
  JAL zero, bb127
bb135:
  ADD t4, s6, zero
  SW t4, 344(sp)
  ADD t4, s5, zero
  SW t4, 336(sp)
  LW t4, 344(sp)
  SLTI s11, t4, 48
  XORI s7, s11, 1
  BNE s7, zero, bb138
  JAL zero, bb139
bb136:
  ADDI s7, zero, 10
  LW t4, 336(sp)
  MULW s4, t4, s7
  LW t4, 344(sp)
  ADDW s7, s4, t4
  ADDI s4, zero, 48
  SUBW s8, s7, s4
  CALL getch
  ADD s4, a0, zero
  ADD s5, s8, zero
  ADD s6, s4, zero
  JAL zero, bb135
bb137:
  LW t4, 312(sp)
  XOR s4, t4, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb141
  JAL zero, bb142
bb138:
  ADDI s7, zero, 57
  LW t4, 344(sp)
  SLT s11, s7, t4
  XORI s7, s11, 1
  ADD t4, s7, zero
  SB t4, 352(sp)
  JAL zero, bb140
bb139:
  ADD t4, zero, zero
  SB t4, 352(sp)
  JAL zero, bb140
bb140:
  LB t4, 352(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb136
  JAL zero, bb137
bb141:
  LW t4, 336(sp)
  SUB s4, zero, t4
  ADD t4, s4, zero
  SW t4, 360(sp)
  JAL zero, bb41
bb142:
  LW t3, 336(sp)
  ADD t4, t3, zero
  SW t4, 360(sp)
  JAL zero, bb41
bb143:
  ADD t4, s8, zero
  SW t4, 376(sp)
  ADD t4, s7, zero
  SW t4, 368(sp)
  LW t4, 376(sp)
  SLTI s9, t4, 48
  BNE s9, zero, bb146
  JAL zero, bb147
bb144:
  LW t4, 376(sp)
  XORI s11, t4, 45
  SLTIU s5, s11, 1
  BNE s5, zero, bb149
  JAL zero, bb165
bb145:
  ADD s5, zero, zero
  LW t4, 376(sp)
  ADD s7, t4, zero
  JAL zero, bb151
bb146:
  ADDI t4, zero, 1
  SB t4, 392(sp)
  JAL zero, bb148
bb147:
  ADDI s0, zero, 57
  LW t4, 376(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 392(sp)
  JAL zero, bb148
bb148:
  LB t4, 392(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb144
  JAL zero, bb145
bb149:
  ADDI s5, zero, 1
  JAL zero, bb150
bb150:
  ADD s11, s5, zero
  CALL getch
  ADD s10, a0, zero
  ADD s7, s11, zero
  ADD s8, s10, zero
  JAL zero, bb143
bb151:
  ADD s8, s7, zero
  ADD s10, s5, zero
  SLTI s11, s8, 48
  XORI s6, s11, 1
  BNE s6, zero, bb154
  JAL zero, bb155
bb152:
  ADDI s6, zero, 10
  MULW s4, s10, s6
  ADDW s6, s4, s8
  ADDI s4, zero, 48
  SUBW s9, s6, s4
  CALL getch
  ADD s4, a0, zero
  ADD s5, s9, zero
  ADD s7, s4, zero
  JAL zero, bb151
bb153:
  LW t4, 368(sp)
  XOR s4, t4, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb157
  JAL zero, bb158
bb154:
  ADDI s6, zero, 57
  SLT s11, s6, s8
  XORI s6, s11, 1
  ADD s11, s6, zero
  JAL zero, bb156
bb155:
  ADD s11, zero, zero
  JAL zero, bb156
bb156:
  ADD s6, s11, zero
  BNE s6, zero, bb152
  JAL zero, bb153
bb157:
  SUB s4, zero, s10
  ADD s5, s4, zero
  JAL zero, bb42
bb158:
  ADD s5, s10, zero
  JAL zero, bb42
bb159:
  ADD s9, s7, zero
  JAL zero, bb49
bb160:
  LW t4, 0(sp)
  ADD s5, t4, zero
  JAL zero, bb70
bb161:
  LW t4, 56(sp)
  ADD s0, t4, zero
  JAL zero, bb86
bb162:
  LW t4, 160(sp)
  ADD s8, t4, zero
  JAL zero, bb102
bb163:
  LW t4, 216(sp)
  ADD s3, t4, zero
  JAL zero, bb118
bb164:
  LW t4, 312(sp)
  ADD s9, t4, zero
  JAL zero, bb134
bb165:
  LW t4, 368(sp)
  ADD s5, t4, zero
  JAL zero, bb150
pop_queue:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  LA s0, h
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, h
  SW s0, 0(s1)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, que
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
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
  JAL zero, bb168
bb168:
  ADD s0, s2, zero
  ADD s3, s1, zero
  SLTI s4, s0, 48
  BNE s4, zero, bb171
  JAL zero, bb172
bb169:
  XORI s5, s0, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb174
  JAL zero, bb184
bb170:
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb176
bb171:
  ADDI s4, zero, 1
  JAL zero, bb173
bb172:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  ADD s4, s2, zero
  JAL zero, bb173
bb173:
  ADD s5, s4, zero
  BNE s5, zero, bb169
  JAL zero, bb170
bb174:
  ADDI s5, zero, 1
  JAL zero, bb175
bb175:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb168
bb176:
  ADD s5, s2, zero
  ADD s6, s1, zero
  SLTI s7, s5, 48
  XORI s8, s7, 1
  BNE s8, zero, bb179
  JAL zero, bb180
bb177:
  ADDI s7, zero, 10
  MULW s9, s6, s7
  ADDW s7, s9, s5
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb176
bb178:
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb182
  JAL zero, bb183
bb179:
  ADDI s7, zero, 57
  SLT s8, s7, s5
  XORI s7, s8, 1
  ADD s8, s7, zero
  JAL zero, bb181
bb180:
  ADD s8, zero, zero
  JAL zero, bb181
bb181:
  ADD s7, s8, zero
  BNE s7, zero, bb177
  JAL zero, bb178
bb182:
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
bb183:
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
bb184:
  ADD s5, s3, zero
  JAL zero, bb175
