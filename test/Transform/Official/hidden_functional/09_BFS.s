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
  ADD s0, zero, zero
  JAL zero, bb1
bb1:
  ADD s2, s0, zero
  LA s3, h
  LW s4, 0(s3)
  LA s3, tail
  LW s5, 0(s3)
  SLT s3, s4, s5
  BNE s3, zero, bb2
  JAL zero, bb3
bb2:
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
  BNE s5, zero, bb4
  JAL zero, bb14
bb3:
  ADD s0, zero, zero
  JAL zero, bb11
bb4:
  ADDI s4, zero, 1
  JAL zero, bb5
bb5:
  ADD s5, s4, zero
  ADDI s6, zero, 4
  MULW s7, s3, s6
  LA s6, head
  ADD s8, s6, s7
  LW s6, 0(s8)
  ADD s7, s6, zero
  JAL zero, bb6
bb6:
  ADD s6, s7, zero
  XORI s8, s6, -1
  SLTU s9, zero, s8
  BNE s9, zero, bb7
  JAL zero, bb8
bb7:
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
  BNE s10, zero, bb9
  JAL zero, bb10
bb8:
  ADD s0, s5, zero
  JAL zero, bb1
bb9:
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
  JAL zero, bb10
bb10:
  LA s6, next
  ADD s8, s6, s9
  LW s6, 0(s8)
  ADD s7, s6, zero
  JAL zero, bb6
bb11:
  ADD s1, s0, zero
  LA s3, tail
  LW s4, 0(s3)
  SLT s3, s4, s1
  XORI s4, s3, 1
  BNE s4, zero, bb12
  JAL zero, bb13
bb12:
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
  JAL zero, bb11
bb13:
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
bb14:
  ADD s4, s2, zero
  JAL zero, bb5
init:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, zero, zero
  JAL zero, bb16
bb16:
  ADD s1, s0, zero
  SLTI s2, s1, 1005
  BNE s2, zero, bb17
  JAL zero, bb18
bb17:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, head
  ADD s4, s2, s3
  ADDI s2, zero, -1
  SW s2, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb16
bb18:
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
  ADDI sp, sp, -304
  SD s11, 200(sp)
  SD s6, 208(sp)
  SD s8, 216(sp)
  SD s0, 224(sp)
  SD s5, 232(sp)
  SD s7, 240(sp)
  SD s10, 248(sp)
  SD s1, 256(sp)
  SD s2, 264(sp)
  SD s9, 272(sp)
  SD s4, 280(sp)
  SD ra, 288(sp)
  SD s3, 296(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb56
bb22:
  LW t4, 24(sp)
  ADD s1, t4, zero
  LA s7, n
  SW s1, 0(s7)
  CALL getch
  ADD s1, a0, zero
  ADD s7, zero, zero
  ADD s9, s1, zero
  JAL zero, bb72
bb23:
  LW t4, 52(sp)
  ADD s0, t4, zero
  LA s5, m
  SW s0, 0(s5)
  ADD s0, zero, zero
  JAL zero, bb53
bb24:
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LA s7, m
  LW s4, 0(s7)
  XOR s7, s4, zero
  SLTU s4, zero, s7
  BNE s4, zero, bb25
  JAL zero, bb26
bb25:
  CALL getch
  ADD s4, a0, zero
  ADD s7, s4, zero
  JAL zero, bb27
bb26:
  ADD a0, zero, zero
  LD s11, 200(sp)
  LD s6, 208(sp)
  LD s8, 216(sp)
  LD s0, 224(sp)
  LD s5, 232(sp)
  LD s7, 240(sp)
  LD s10, 248(sp)
  LD s1, 256(sp)
  LD s2, 264(sp)
  LD s9, 272(sp)
  LD s4, 280(sp)
  LD ra, 288(sp)
  LD s3, 296(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb27:
  ADD t4, s7, zero
  SW t4, 56(sp)
  LW t4, 56(sp)
  XORI s9, t4, 81
  SLTU s3, zero, s9
  BNE s3, zero, bb30
  JAL zero, bb31
bb28:
  CALL getch
  ADD s9, a0, zero
  ADD s7, s9, zero
  JAL zero, bb27
bb29:
  LW t4, 56(sp)
  XORI s7, t4, 81
  SLTIU s9, s7, 1
  BNE s9, zero, bb33
  JAL zero, bb37
bb30:
  LW t4, 56(sp)
  XORI s3, t4, 85
  SLTU s9, zero, s3
  ADD t4, s9, zero
  SB t4, 76(sp)
  JAL zero, bb32
bb31:
  ADD t4, zero, zero
  SB t4, 76(sp)
  JAL zero, bb32
bb32:
  LB t4, 76(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb28
  JAL zero, bb29
bb33:
  CALL getch
  ADD s7, a0, zero
  ADD s9, zero, zero
  ADD s4, s7, zero
  JAL zero, bb88
bb34:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  CALL getch
  ADD s4, a0, zero
  ADD s7, zero, zero
  ADD s10, s4, zero
  JAL zero, bb104
bb35:
  LW t4, 136(sp)
  ADD s1, t4, zero
  LA s4, h
  SW zero, 0(s4)
  LA s4, tail
  SW zero, 0(s4)
  ADDI s4, zero, 4
  LW t4, 116(sp)
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
  LW t4, 116(sp)
  SW t4, 0(s7)
  ADD s4, zero, zero
  JAL zero, bb40
bb36:
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
  SW t4, 152(sp)
  ADD t4, s6, zero
  SW t4, 148(sp)
  ADD t4, s5, zero
  SW t4, 144(sp)
  ADD t4, s4, zero
  SW t4, 140(sp)
  JAL zero, bb24
bb37:
  CALL getch
  ADD s4, a0, zero
  ADD s5, zero, zero
  ADD s6, s4, zero
  JAL zero, bb120
bb38:
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  CALL getch
  ADD s6, a0, zero
  ADD s7, zero, zero
  ADD s8, s6, zero
  JAL zero, bb136
bb39:
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
  LW t4, 192(sp)
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
  LW t4, 192(sp)
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
  ADD s0, s4, zero
  LW t4, 192(sp)
  ADD s2, t4, zero
  LW t4, 68(sp)
  ADD s3, t4, zero
  LW t4, 72(sp)
  ADD s1, t4, zero
  JAL zero, bb36
bb40:
  ADD s7, s4, zero
  LA s8, h
  LW s10, 0(s8)
  LA s8, tail
  LW s9, 0(s8)
  SLT s8, s10, s9
  BNE s8, zero, bb41
  JAL zero, bb42
bb41:
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
  BNE s10, zero, bb43
  JAL zero, bb152
bb42:
  ADD s0, zero, zero
  JAL zero, bb50
bb43:
  ADDI s9, zero, 1
  JAL zero, bb44
bb44:
  ADD s10, s9, zero
  ADDI s11, zero, 4
  MULW s3, s8, s11
  LA s11, head
  ADD s6, s11, s3
  LW s3, 0(s6)
  ADD s6, s3, zero
  JAL zero, bb45
bb45:
  ADD s3, s6, zero
  XORI s11, s3, -1
  SLTU s5, zero, s11
  BNE s5, zero, bb46
  JAL zero, bb47
bb46:
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
  BNE s2, zero, bb48
  JAL zero, bb49
bb47:
  ADD s4, s10, zero
  JAL zero, bb40
bb48:
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
  JAL zero, bb49
bb49:
  LA s0, next
  ADD s2, s0, s11
  LW s0, 0(s2)
  ADD s6, s0, zero
  JAL zero, bb45
bb50:
  ADD s2, s0, zero
  LA s3, tail
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb51
  JAL zero, bb52
bb51:
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
  JAL zero, bb50
bb52:
  ADD a0, s7, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t4, 60(sp)
  ADD s0, t4, zero
  LW t4, 64(sp)
  ADD s2, t4, zero
  ADD s3, s1, zero
  LW t4, 116(sp)
  ADD s1, t4, zero
  JAL zero, bb36
bb53:
  ADD s5, s0, zero
  SLTI s6, s5, 1005
  BNE s6, zero, bb54
  JAL zero, bb55
bb54:
  ADDI s6, zero, 4
  MULW s8, s5, s6
  LA s6, head
  ADD s2, s6, s8
  ADDI s6, zero, -1
  SW s6, 0(s2)
  ADDIW s2, s5, 1
  ADD s0, s2, zero
  JAL zero, bb53
bb55:
  ADD t4, zero, zero
  SW t4, 152(sp)
  ADD t4, zero, zero
  SW t4, 148(sp)
  ADD t4, zero, zero
  SW t4, 144(sp)
  ADD t4, zero, zero
  SW t4, 140(sp)
  JAL zero, bb24
bb56:
  ADD t4, s2, zero
  SW t4, 4(sp)
  ADD t4, s1, zero
  SW t4, 0(sp)
  LW t4, 4(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb59
  JAL zero, bb60
bb57:
  LW t4, 4(sp)
  XORI s5, t4, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb62
  JAL zero, bb153
bb58:
  ADD s1, zero, zero
  LW t4, 4(sp)
  ADD s2, t4, zero
  JAL zero, bb64
bb59:
  ADDI t4, zero, 1
  SB t4, 8(sp)
  JAL zero, bb61
bb60:
  ADDI s0, zero, 57
  LW t4, 4(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 8(sp)
  JAL zero, bb61
bb61:
  LB t4, 8(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb57
  JAL zero, bb58
bb62:
  ADDI s5, zero, 1
  JAL zero, bb63
bb63:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb56
bb64:
  ADD t4, s2, zero
  SW t4, 16(sp)
  ADD t4, s1, zero
  SW t4, 12(sp)
  LW t4, 16(sp)
  SLTI s7, t4, 48
  XORI s8, s7, 1
  BNE s8, zero, bb67
  JAL zero, bb68
bb65:
  ADDI s7, zero, 10
  LW t4, 12(sp)
  MULW s9, t4, s7
  LW t4, 16(sp)
  ADDW s7, s9, t4
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb64
bb66:
  LW t4, 0(sp)
  XOR s1, t4, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb70
  JAL zero, bb71
bb67:
  ADDI s7, zero, 57
  LW t4, 16(sp)
  SLT s8, s7, t4
  XORI s7, s8, 1
  ADD t4, s7, zero
  SB t4, 20(sp)
  JAL zero, bb69
bb68:
  ADD t4, zero, zero
  SB t4, 20(sp)
  JAL zero, bb69
bb69:
  LB t4, 20(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb65
  JAL zero, bb66
bb70:
  LW t4, 12(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 24(sp)
  JAL zero, bb22
bb71:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  JAL zero, bb22
bb72:
  ADD t4, s9, zero
  SW t4, 32(sp)
  ADD t4, s7, zero
  SW t4, 28(sp)
  LW t4, 32(sp)
  SLTI s11, t4, 48
  BNE s11, zero, bb75
  JAL zero, bb76
bb73:
  LW t4, 32(sp)
  XORI s3, t4, 45
  SLTIU s0, s3, 1
  BNE s0, zero, bb78
  JAL zero, bb154
bb74:
  ADD s0, zero, zero
  LW t4, 32(sp)
  ADD s3, t4, zero
  JAL zero, bb80
bb75:
  ADDI t4, zero, 1
  SB t4, 36(sp)
  JAL zero, bb77
bb76:
  ADDI s0, zero, 57
  LW t4, 32(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 36(sp)
  JAL zero, bb77
bb77:
  LB t4, 36(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb73
  JAL zero, bb74
bb78:
  ADDI s0, zero, 1
  JAL zero, bb79
bb79:
  ADD s3, s0, zero
  CALL getch
  ADD s4, a0, zero
  ADD s7, s3, zero
  ADD s9, s4, zero
  JAL zero, bb72
bb80:
  ADD t4, s3, zero
  SW t4, 44(sp)
  ADD t4, s0, zero
  SW t4, 40(sp)
  LW t4, 44(sp)
  SLTI s9, t4, 48
  XORI s6, s9, 1
  BNE s6, zero, bb83
  JAL zero, bb84
bb81:
  ADDI s6, zero, 10
  LW t4, 40(sp)
  MULW s5, t4, s6
  LW t4, 44(sp)
  ADDW s6, s5, t4
  ADDI s5, zero, 48
  SUBW s8, s6, s5
  CALL getch
  ADD s5, a0, zero
  ADD s0, s8, zero
  ADD s3, s5, zero
  JAL zero, bb80
bb82:
  LW t4, 28(sp)
  XOR s0, t4, zero
  SLTU s3, zero, s0
  BNE s3, zero, bb86
  JAL zero, bb87
bb83:
  ADDI s6, zero, 57
  LW t4, 44(sp)
  SLT s9, s6, t4
  XORI s6, s9, 1
  ADD t4, s6, zero
  SB t4, 48(sp)
  JAL zero, bb85
bb84:
  ADD t4, zero, zero
  SB t4, 48(sp)
  JAL zero, bb85
bb85:
  LB t4, 48(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb81
  JAL zero, bb82
bb86:
  LW t4, 40(sp)
  SUB s0, zero, t4
  ADD t4, s0, zero
  SW t4, 52(sp)
  JAL zero, bb23
bb87:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  JAL zero, bb23
bb88:
  ADD t4, s4, zero
  SW t4, 84(sp)
  ADD t4, s9, zero
  SW t4, 80(sp)
  LW t4, 84(sp)
  SLTI s1, t4, 48
  BNE s1, zero, bb91
  JAL zero, bb92
bb89:
  LW t4, 84(sp)
  XORI s10, t4, 45
  SLTIU s8, s10, 1
  BNE s8, zero, bb94
  JAL zero, bb155
bb90:
  ADD s3, zero, zero
  LW t4, 84(sp)
  ADD s4, t4, zero
  JAL zero, bb96
bb91:
  ADDI t4, zero, 1
  SB t4, 88(sp)
  JAL zero, bb93
bb92:
  ADDI s4, zero, 57
  LW t4, 84(sp)
  SLT s5, s4, t4
  ADD t4, s5, zero
  SB t4, 88(sp)
  JAL zero, bb93
bb93:
  LB t4, 88(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb89
  JAL zero, bb90
bb94:
  ADDI s8, zero, 1
  JAL zero, bb95
bb95:
  ADD s10, s8, zero
  CALL getch
  ADD s3, a0, zero
  ADD s9, s10, zero
  ADD s4, s3, zero
  JAL zero, bb88
bb96:
  ADD t4, s4, zero
  SW t4, 96(sp)
  ADD t4, s3, zero
  SW t4, 92(sp)
  LW t4, 96(sp)
  SLTI s10, t4, 48
  XORI s11, s10, 1
  BNE s11, zero, bb99
  JAL zero, bb100
bb97:
  ADDI s10, zero, 10
  LW t4, 92(sp)
  MULW s7, t4, s10
  LW t4, 96(sp)
  ADDW s10, s7, t4
  ADDI s7, zero, 48
  SUBW s1, s10, s7
  CALL getch
  ADD s7, a0, zero
  ADD s3, s1, zero
  ADD s4, s7, zero
  JAL zero, bb96
bb98:
  LW t4, 80(sp)
  XOR s1, t4, zero
  SLTU s3, zero, s1
  BNE s3, zero, bb102
  JAL zero, bb103
bb99:
  ADDI s10, zero, 57
  LW t4, 96(sp)
  SLT s11, s10, t4
  XORI s10, s11, 1
  ADD t4, s10, zero
  SB t4, 100(sp)
  JAL zero, bb101
bb100:
  ADD t4, zero, zero
  SB t4, 100(sp)
  JAL zero, bb101
bb101:
  LB t4, 100(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb97
  JAL zero, bb98
bb102:
  LW t4, 92(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 104(sp)
  JAL zero, bb34
bb103:
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  JAL zero, bb34
bb104:
  ADD t4, s10, zero
  SW t4, 112(sp)
  ADD t4, s7, zero
  SW t4, 108(sp)
  LW t4, 112(sp)
  SLTI s8, t4, 48
  BNE s8, zero, bb107
  JAL zero, bb108
bb105:
  LW t4, 112(sp)
  XORI s11, t4, 45
  SLTIU s3, s11, 1
  BNE s3, zero, bb110
  JAL zero, bb156
bb106:
  ADD s3, zero, zero
  LW t4, 112(sp)
  ADD s7, t4, zero
  JAL zero, bb112
bb107:
  ADDI t4, zero, 1
  SB t4, 120(sp)
  JAL zero, bb109
bb108:
  ADDI s4, zero, 57
  LW t4, 112(sp)
  SLT s5, s4, t4
  ADD t4, s5, zero
  SB t4, 120(sp)
  JAL zero, bb109
bb109:
  LB t4, 120(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb105
  JAL zero, bb106
bb110:
  ADDI s3, zero, 1
  JAL zero, bb111
bb111:
  ADD s11, s3, zero
  CALL getch
  ADD s9, a0, zero
  ADD s7, s11, zero
  ADD s10, s9, zero
  JAL zero, bb104
bb112:
  ADD t4, s7, zero
  SW t4, 128(sp)
  ADD t4, s3, zero
  SW t4, 124(sp)
  LW t4, 128(sp)
  SLTI s11, t4, 48
  XORI s4, s11, 1
  BNE s4, zero, bb115
  JAL zero, bb116
bb113:
  ADDI s4, zero, 10
  LW t4, 124(sp)
  MULW s1, t4, s4
  LW t4, 128(sp)
  ADDW s4, s1, t4
  ADDI s1, zero, 48
  SUBW s8, s4, s1
  CALL getch
  ADD s1, a0, zero
  ADD s3, s8, zero
  ADD s7, s1, zero
  JAL zero, bb112
bb114:
  LW t4, 108(sp)
  XOR s1, t4, zero
  SLTU s3, zero, s1
  BNE s3, zero, bb118
  JAL zero, bb119
bb115:
  ADDI s4, zero, 57
  LW t4, 128(sp)
  SLT s11, s4, t4
  XORI s4, s11, 1
  ADD t4, s4, zero
  SB t4, 132(sp)
  JAL zero, bb117
bb116:
  ADD t4, zero, zero
  SB t4, 132(sp)
  JAL zero, bb117
bb117:
  LB t4, 132(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb113
  JAL zero, bb114
bb118:
  LW t4, 124(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 136(sp)
  JAL zero, bb35
bb119:
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  JAL zero, bb35
bb120:
  ADD t4, s6, zero
  SW t4, 160(sp)
  ADD t4, s5, zero
  SW t4, 156(sp)
  LW t4, 160(sp)
  SLTI s8, t4, 48
  BNE s8, zero, bb123
  JAL zero, bb124
bb121:
  LW t4, 160(sp)
  XORI s9, t4, 45
  SLTIU s10, s9, 1
  BNE s10, zero, bb126
  JAL zero, bb157
bb122:
  ADD s5, zero, zero
  LW t4, 160(sp)
  ADD s6, t4, zero
  JAL zero, bb128
bb123:
  ADDI t4, zero, 1
  SB t4, 164(sp)
  JAL zero, bb125
bb124:
  ADDI s0, zero, 57
  LW t4, 160(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 164(sp)
  JAL zero, bb125
bb125:
  LB t4, 164(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb121
  JAL zero, bb122
bb126:
  ADDI s9, zero, 1
  JAL zero, bb127
bb127:
  ADD s10, s9, zero
  CALL getch
  ADD s11, a0, zero
  ADD s5, s10, zero
  ADD s6, s11, zero
  JAL zero, bb120
bb128:
  ADD t4, s6, zero
  SW t4, 172(sp)
  ADD t4, s5, zero
  SW t4, 168(sp)
  LW t4, 172(sp)
  SLTI s11, t4, 48
  XORI s7, s11, 1
  BNE s7, zero, bb131
  JAL zero, bb132
bb129:
  ADDI s7, zero, 10
  LW t4, 168(sp)
  MULW s4, t4, s7
  LW t4, 172(sp)
  ADDW s7, s4, t4
  ADDI s4, zero, 48
  SUBW s8, s7, s4
  CALL getch
  ADD s4, a0, zero
  ADD s5, s8, zero
  ADD s6, s4, zero
  JAL zero, bb128
bb130:
  LW t4, 156(sp)
  XOR s4, t4, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb134
  JAL zero, bb135
bb131:
  ADDI s7, zero, 57
  LW t4, 172(sp)
  SLT s11, s7, t4
  XORI s7, s11, 1
  ADD t4, s7, zero
  SB t4, 176(sp)
  JAL zero, bb133
bb132:
  ADD t4, zero, zero
  SB t4, 176(sp)
  JAL zero, bb133
bb133:
  LB t4, 176(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb129
  JAL zero, bb130
bb134:
  LW t4, 168(sp)
  SUB s4, zero, t4
  ADD t4, s4, zero
  SW t4, 180(sp)
  JAL zero, bb38
bb135:
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  JAL zero, bb38
bb136:
  ADD t4, s8, zero
  SW t4, 188(sp)
  ADD t4, s7, zero
  SW t4, 184(sp)
  LW t4, 188(sp)
  SLTI s9, t4, 48
  BNE s9, zero, bb139
  JAL zero, bb140
bb137:
  LW t4, 188(sp)
  XORI s11, t4, 45
  SLTIU s5, s11, 1
  BNE s5, zero, bb142
  JAL zero, bb158
bb138:
  ADD s5, zero, zero
  LW t4, 188(sp)
  ADD s7, t4, zero
  JAL zero, bb144
bb139:
  ADDI t4, zero, 1
  SB t4, 196(sp)
  JAL zero, bb141
bb140:
  ADDI s0, zero, 57
  LW t4, 188(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 196(sp)
  JAL zero, bb141
bb141:
  LB t4, 196(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb137
  JAL zero, bb138
bb142:
  ADDI s5, zero, 1
  JAL zero, bb143
bb143:
  ADD s11, s5, zero
  CALL getch
  ADD s10, a0, zero
  ADD s7, s11, zero
  ADD s8, s10, zero
  JAL zero, bb136
bb144:
  ADD s8, s7, zero
  ADD s10, s5, zero
  SLTI s11, s8, 48
  XORI s6, s11, 1
  BNE s6, zero, bb147
  JAL zero, bb148
bb145:
  ADDI s6, zero, 10
  MULW s4, s10, s6
  ADDW s6, s4, s8
  ADDI s4, zero, 48
  SUBW s9, s6, s4
  CALL getch
  ADD s4, a0, zero
  ADD s5, s9, zero
  ADD s7, s4, zero
  JAL zero, bb144
bb146:
  LW t4, 184(sp)
  XOR s4, t4, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb150
  JAL zero, bb151
bb147:
  ADDI s6, zero, 57
  SLT s11, s6, s8
  XORI s6, s11, 1
  ADD s11, s6, zero
  JAL zero, bb149
bb148:
  ADD s11, zero, zero
  JAL zero, bb149
bb149:
  ADD s6, s11, zero
  BNE s6, zero, bb145
  JAL zero, bb146
bb150:
  SUB s4, zero, s10
  ADD s5, s4, zero
  JAL zero, bb39
bb151:
  ADD s5, s10, zero
  JAL zero, bb39
bb152:
  ADD s9, s7, zero
  JAL zero, bb44
bb153:
  LW t4, 0(sp)
  ADD s5, t4, zero
  JAL zero, bb63
bb154:
  LW t4, 28(sp)
  ADD s0, t4, zero
  JAL zero, bb79
bb155:
  LW t4, 80(sp)
  ADD s8, t4, zero
  JAL zero, bb95
bb156:
  LW t4, 108(sp)
  ADD s3, t4, zero
  JAL zero, bb111
bb157:
  LW t4, 156(sp)
  ADD s9, t4, zero
  JAL zero, bb127
bb158:
  LW t4, 184(sp)
  ADD s5, t4, zero
  JAL zero, bb143
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
  JAL zero, bb161
bb161:
  ADD s0, s2, zero
  ADD s3, s1, zero
  SLTI s4, s0, 48
  BNE s4, zero, bb164
  JAL zero, bb165
bb162:
  XORI s5, s0, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb167
  JAL zero, bb177
bb163:
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb169
bb164:
  ADDI s4, zero, 1
  JAL zero, bb166
bb165:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  ADD s4, s2, zero
  JAL zero, bb166
bb166:
  ADD s5, s4, zero
  BNE s5, zero, bb162
  JAL zero, bb163
bb167:
  ADDI s5, zero, 1
  JAL zero, bb168
bb168:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb161
bb169:
  ADD s5, s2, zero
  ADD s6, s1, zero
  SLTI s7, s5, 48
  XORI s8, s7, 1
  BNE s8, zero, bb172
  JAL zero, bb173
bb170:
  ADDI s7, zero, 10
  MULW s9, s6, s7
  ADDW s7, s9, s5
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb169
bb171:
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb175
  JAL zero, bb176
bb172:
  ADDI s7, zero, 57
  SLT s8, s7, s5
  XORI s7, s8, 1
  ADD s8, s7, zero
  JAL zero, bb174
bb173:
  ADD s8, zero, zero
  JAL zero, bb174
bb174:
  ADD s7, s8, zero
  BNE s7, zero, bb170
  JAL zero, bb171
bb175:
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
bb176:
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
bb177:
  ADD s5, s3, zero
  JAL zero, bb168
