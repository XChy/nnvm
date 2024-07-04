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
  SD ra, 48(sp)
  SD s3, 56(sp)
  SD s2, 64(sp)
  SD s1, 72(sp)
  SD s0, 80(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 40(sp)
  SW s1, 32(sp)
  LA s0, h
  ADDI s1, zero, 0
  SW s1, 0(s0)
  LA s0, tail
  ADDI s1, zero, 0
  SW s1, 0(s0)
  LW s0, 40(sp)
  ADD a0, s0, zero
  CALL inqueue
  ADDI s0, zero, 0
  SW s0, 24(sp)
  JAL zero, bb1
bb1:
  LA s0, h
  LW s1, 0(s0)
  LA s0, tail
  LW s2, 0(s0)
  SLT s0, s1, s2
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb2
  JAL zero, bb3
bb2:
  CALL pop_queue
  ADD s0, a0, zero
  SW s0, 16(sp)
  LW s1, 32(sp)
  XOR s2, s0, s1
  SLTIU s0, s2, 1
  BNE s0, zero, bb4
  JAL zero, bb5
bb3:
  ADDI s0, zero, 0
  SW s0, 0(sp)
  JAL zero, bb11
bb4:
  ADDI s0, zero, 1
  SW s0, 24(sp)
  JAL zero, bb5
bb5:
  LW s0, 16(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, head
  ADD s1, s0, s2
  LW s0, 0(s1)
  SW s0, 8(sp)
  JAL zero, bb6
bb6:
  LW s0, 8(sp)
  ADDI s1, zero, 0
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  XOR s1, s0, s3
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb7
  JAL zero, bb8
bb7:
  LW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, to
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, inq
  ADD s1, s0, s2
  LW s0, 0(s1)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb9
  JAL zero, bb10
bb8:
  JAL zero, bb1
bb9:
  LW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, to
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL inqueue
  JAL zero, bb10
bb10:
  LW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, next
  ADD s1, s0, s2
  LW s0, 0(s1)
  SW s0, 8(sp)
  JAL zero, bb6
bb11:
  LW s0, 0(sp)
  LA s1, tail
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb12
  JAL zero, bb13
bb12:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, que
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, inq
  ADD s1, s0, s2
  SW zero, 0(s1)
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb11
bb13:
  LW s0, 24(sp)
  ADD a0, s0, zero
  LD ra, 48(sp)
  LD s3, 56(sp)
  LD s2, 64(sp)
  LD s1, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
init:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  SW zero, 0(sp)
  JAL zero, bb15
bb15:
  LW s0, 0(sp)
  LA s1, maxn
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb16
  JAL zero, bb17
bb16:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, head
  ADD s1, s0, s2
  ADDI s0, zero, 1
  SUB s2, zero, s0
  SW s2, 0(s1)
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb15
bb17:
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
inqueue:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  SW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, inq
  ADD s1, s0, s2
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, tail
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, tail
  SW s0, 0(s1)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, que
  ADD s1, s0, s2
  LW s0, 0(sp)
  SW s0, 0(s1)
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
add_edge:
  ADDI sp, sp, -64
  SD ra, 16(sp)
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD s1, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 8(sp)
  SW s1, 0(sp)
  LA s0, cnt
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  LA s0, to
  ADD s2, s0, s3
  SW s1, 0(s2)
  LA s0, cnt
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, next
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, head
  ADD s2, s0, s3
  LW s0, 0(s2)
  SW s0, 0(s1)
  LW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, head
  ADD s1, s0, s2
  LA s0, cnt
  LW s2, 0(s0)
  SW s2, 0(s1)
  LA s0, cnt
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, cnt
  SW s0, 0(s1)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, to
  ADD s1, s0, s2
  LW s0, 8(sp)
  SW s0, 0(s1)
  LA s0, cnt
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, next
  ADD s1, s0, s2
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, head
  ADD s2, s0, s3
  LW s0, 0(s2)
  SW s0, 0(s1)
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, head
  ADD s1, s0, s2
  LA s0, cnt
  LW s2, 0(s0)
  SW s2, 0(s1)
  LA s0, cnt
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, cnt
  SW s0, 0(s1)
  LD ra, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -80
  SD s2, 48(sp)
  SD ra, 56(sp)
  SD s1, 64(sp)
  SD s0, 72(sp)
  CALL quick_read
  ADD s0, a0, zero
  LA s1, n
  SW s0, 0(s1)
  CALL quick_read
  ADD s0, a0, zero
  LA s1, m
  SW s0, 0(s1)
  CALL init
  JAL zero, bb21
bb21:
  LA s0, m
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb22
  JAL zero, bb23
bb22:
  CALL getch
  ADD s0, a0, zero
  SW s0, 40(sp)
  JAL zero, bb24
bb23:
  ADD a0, zero, zero
  LD s2, 48(sp)
  LD ra, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb24:
  LW s0, 40(sp)
  XORI s1, s0, 81
  SLTU s0, zero, s1
  BNE s0, zero, bb27
  JAL zero, bb28
bb25:
  CALL getch
  ADD s0, a0, zero
  SW s0, 40(sp)
  JAL zero, bb24
bb26:
  LW s0, 40(sp)
  XORI s1, s0, 81
  SLTIU s0, s1, 1
  BNE s0, zero, bb30
  JAL zero, bb32
bb27:
  LW s0, 40(sp)
  XORI s1, s0, 85
  SLTU s0, zero, s1
  SB s0, 32(sp)
  JAL zero, bb29
bb28:
  SB zero, 32(sp)
  JAL zero, bb29
bb29:
  LB s0, 32(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb25
  JAL zero, bb26
bb30:
  CALL quick_read
  ADD s0, a0, zero
  SW s0, 24(sp)
  CALL quick_read
  ADD s0, a0, zero
  SW s0, 16(sp)
  LW s1, 24(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL same
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb31
bb31:
  LA s0, m
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  LA s0, m
  SW s2, 0(s0)
  JAL zero, bb21
bb32:
  CALL quick_read
  ADD s0, a0, zero
  SW s0, 8(sp)
  CALL quick_read
  ADD s0, a0, zero
  SW s0, 0(sp)
  LW s1, 8(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL add_edge
  JAL zero, bb31
pop_queue:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  LA s0, h
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, h
  SW s0, 0(s1)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, que
  ADD s3, s1, s2
  LW s1, 0(s3)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, que
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
quick_read:
  ADDI sp, sp, -80
  SD ra, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s0, 64(sp)
  CALL getch
  ADD s0, a0, zero
  SW s0, 32(sp)
  SW zero, 24(sp)
  SW zero, 16(sp)
  JAL zero, bb35
bb35:
  LW s0, 32(sp)
  SLTI s1, s0, 48
  BNE s1, zero, bb38
  JAL zero, bb39
bb36:
  LW s0, 32(sp)
  XORI s1, s0, 45
  SLTIU s0, s1, 1
  BNE s0, zero, bb41
  JAL zero, bb42
bb37:
  JAL zero, bb43
bb38:
  ADDI s0, zero, 1
  SB s0, 8(sp)
  JAL zero, bb40
bb39:
  LW s0, 32(sp)
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 8(sp)
  JAL zero, bb40
bb40:
  LB s0, 8(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb36
  JAL zero, bb37
bb41:
  ADDI s0, zero, 1
  SW s0, 16(sp)
  JAL zero, bb42
bb42:
  CALL getch
  ADD s0, a0, zero
  SW s0, 32(sp)
  JAL zero, bb35
bb43:
  LW s0, 32(sp)
  SLTI s1, s0, 48
  XORI s0, s1, 1
  BNE s0, zero, bb46
  JAL zero, bb47
bb44:
  LW s0, 24(sp)
  ADDI s1, zero, 10
  MULW s2, s0, s1
  LW s0, 32(sp)
  ADDW s1, s2, s0
  ADDI s0, zero, 48
  SUBW s2, s1, s0
  SW s2, 24(sp)
  CALL getch
  ADD s0, a0, zero
  SW s0, 32(sp)
  JAL zero, bb43
bb45:
  LW s0, 16(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb49
  JAL zero, bb51
bb46:
  LW s0, 32(sp)
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XORI s0, s2, 1
  SB s0, 0(sp)
  JAL zero, bb48
bb47:
  SB zero, 0(sp)
  JAL zero, bb48
bb48:
  LB s0, 0(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb44
  JAL zero, bb45
bb49:
  LW s0, 24(sp)
  SUB s1, zero, s0
  ADD a0, s1, zero
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb50:
bb51:
  LW s0, 24(sp)
  ADD a0, s0, zero
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
