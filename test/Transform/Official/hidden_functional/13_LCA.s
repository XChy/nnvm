.global LCA
.global init
.global tree
.global add_edge
.global main
.global quick_read
.section .bss
head:
.space 40020
next:
.space 40020
to:
.space 40020
dep:
.space 40020
f:
.space 800400




.section .data





n:
.word 0x00000000
cnt:
.word 0x00000000
m:
.word 0x00000000
maxn:
.word 0x00002715
.section .text
LCA:
  ADDI sp, sp, -96
  SD s10, 0(sp)
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s5, 24(sp)
  SD s7, 32(sp)
  SD s1, 40(sp)
  SD s6, 48(sp)
  SD s8, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s9, 88(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, dep
  ADD s4, s2, s3
  LW s2, 0(s4)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  LA s3, dep
  ADD s5, s3, s4
  LW s3, 0(s5)
  SLT s4, s2, s3
  BNE s4, zero, bb1
  JAL zero, bb18
bb1:
  ADD s2, s0, zero
  ADD s3, s1, zero
  JAL zero, bb2
bb2:
  ADDI s4, zero, 19
  ADD s5, s3, zero
  JAL zero, bb3
bb3:
  ADDI s6, zero, 4
  MULW s7, s5, s6
  LA s6, dep
  ADD s8, s6, s7
  LW s6, 0(s8)
  ADDI s7, zero, 4
  MULW s8, s2, s7
  LA s7, dep
  ADD s9, s7, s8
  LW s7, 0(s9)
  SLT s8, s7, s6
  XOR s6, s8, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb4
  JAL zero, bb5
bb4:
  ADDI s6, zero, 80
  MULW s7, s5, s6
  LA s6, f
  ADD s8, s6, s7
  ADDI s6, zero, 4
  MULW s7, s4, s6
  ADD s6, s8, s7
  LW s7, 0(s6)
  XOR s6, s7, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb6
  JAL zero, bb7
bb5:
  XOR s4, s5, s2
  SLTIU s6, s4, 1
  BNE s6, zero, bb11
  JAL zero, bb12
bb6:
  ADDI s6, zero, 80
  MULW s7, s5, s6
  LA s6, f
  ADD s8, s6, s7
  ADDI s6, zero, 4
  MULW s7, s4, s6
  ADD s6, s8, s7
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s8, s7, s6
  LA s6, dep
  ADD s7, s6, s8
  LW s6, 0(s7)
  ADDI s7, zero, 4
  MULW s8, s2, s7
  LA s7, dep
  ADD s9, s7, s8
  LW s7, 0(s9)
  SLT s8, s6, s7
  XORI s6, s8, 1
  ADD s7, s6, zero
  JAL zero, bb8
bb7:
  ADD s7, zero, zero
  JAL zero, bb8
bb8:
  BNE s7, zero, bb9
  JAL zero, bb19
bb9:
  ADDI s6, zero, 80
  MULW s8, s5, s6
  LA s6, f
  ADD s9, s6, s8
  ADDI s6, zero, 4
  MULW s8, s4, s6
  ADD s6, s9, s8
  LW s8, 0(s6)
  ADD s6, s8, zero
  JAL zero, bb10
bb10:
  ADDI s8, zero, 1
  SUBW s9, s4, s8
  ADD s4, s9, zero
  ADD s5, s6, zero
  JAL zero, bb3
bb11:
  ADD a0, s5, zero
  LD s10, 0(sp)
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s7, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s8, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s9, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb12:
  ADDI s4, zero, 19
  ADD s6, s2, zero
  ADD s7, s5, zero
  JAL zero, bb13
bb13:
  SLT s5, s4, zero
  XORI s8, s5, 1
  XOR s5, s8, zero
  SLTU s8, zero, s5
  BNE s8, zero, bb14
  JAL zero, bb15
bb14:
  ADDI s5, zero, 80
  MULW s8, s7, s5
  LA s5, f
  ADD s9, s5, s8
  ADDI s5, zero, 4
  MULW s8, s4, s5
  ADD s5, s9, s8
  LW s8, 0(s5)
  ADDI s5, zero, 80
  MULW s9, s6, s5
  LA s5, f
  ADD s10, s5, s9
  ADDI s5, zero, 4
  MULW s9, s4, s5
  ADD s5, s10, s9
  LW s9, 0(s5)
  XOR s5, s8, s9
  SLTU s8, zero, s5
  BNE s8, zero, bb16
  JAL zero, bb20
bb15:
  ADDI s4, zero, 80
  MULW s5, s7, s4
  LA s4, f
  ADD s6, s4, s5
  ADDI s4, zero, 4
  MULW s5, zero, s4
  ADD s4, s6, s5
  LW s5, 0(s4)
  ADD a0, s5, zero
  LD s10, 0(sp)
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s7, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s8, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s9, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb16:
  ADDI s5, zero, 80
  MULW s8, s7, s5
  LA s5, f
  ADD s9, s5, s8
  ADDI s5, zero, 4
  MULW s8, s4, s5
  ADD s5, s9, s8
  LW s8, 0(s5)
  ADDI s5, zero, 80
  MULW s9, s6, s5
  LA s5, f
  ADD s10, s5, s9
  ADDI s5, zero, 4
  MULW s9, s4, s5
  ADD s5, s10, s9
  LW s9, 0(s5)
  ADD s5, s9, zero
  ADD s9, s8, zero
  JAL zero, bb17
bb17:
  ADDI s8, zero, 1
  SUBW s10, s4, s8
  ADD s4, s10, zero
  ADD s6, s5, zero
  ADD s7, s9, zero
  JAL zero, bb13
bb18:
  ADD s2, s1, zero
  ADD s3, s0, zero
  JAL zero, bb2
bb19:
  ADD s6, s5, zero
  JAL zero, bb10
bb20:
  ADD s5, s6, zero
  ADD s9, s7, zero
  JAL zero, bb17
init:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADDI s0, zero, 4
  MUL s1, zero, s0
  LA s0, dep
  ADD s2, s0, s1
  LUI s0, 259060
  ADDI s0, s0, -193
  SW s0, 0(s2)
  ADDI s0, zero, 1
  JAL zero, bb22
bb22:
  LA s1, n
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s2, s1, 1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb23
  JAL zero, bb24
bb23:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, head
  ADD s3, s1, s2
  ADDI s1, zero, 1
  SUB s2, zero, s1
  SW s2, 0(s3)
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb22
bb24:
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
tree:
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
  LA s2, dep
  ADD s4, s2, s3
  SW s1, 0(s4)
  ADD s2, zero, zero
  JAL zero, bb26
bb26:
  ADDI s3, zero, 80
  MULW s4, s0, s3
  LA s3, f
  ADD s5, s3, s4
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s3, s5, s4
  LW s4, 0(s3)
  XOR s3, s4, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb27
  JAL zero, bb28
bb27:
  ADDI s3, zero, 80
  MULW s4, s0, s3
  LA s3, f
  ADD s5, s3, s4
  ADDIW s3, s2, 1
  ADDI s4, zero, 4
  MULW s6, s3, s4
  ADD s3, s5, s6
  ADDI s4, zero, 80
  MULW s5, s0, s4
  LA s4, f
  ADD s6, s4, s5
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s4, s6, s5
  LW s5, 0(s4)
  ADDI s4, zero, 80
  MULW s6, s5, s4
  LA s4, f
  ADD s5, s4, s6
  ADDI s4, zero, 4
  MULW s6, s2, s4
  ADD s4, s5, s6
  LW s5, 0(s4)
  SW s5, 0(s3)
  ADDIW s3, s2, 1
  ADD s2, s3, zero
  JAL zero, bb26
bb28:
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, head
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADD s2, s0, zero
  JAL zero, bb29
bb29:
  ADDI s0, zero, 1
  SUB s3, zero, s0
  XOR s0, s2, s3
  SLTU s3, zero, s0
  XOR s0, s3, zero
  SLTU s3, zero, s0
  BNE s3, zero, bb30
  JAL zero, bb31
bb30:
  ADDI s0, zero, 4
  MULW s3, s2, s0
  LA s0, to
  ADD s4, s0, s3
  LW s0, 0(s4)
  ADDIW s3, s1, 1
  ADD a0, s0, zero
  ADD a1, s3, zero
  CALL tree
  ADDI s0, zero, 4
  MULW s3, s2, s0
  LA s0, next
  ADD s4, s0, s3
  LW s0, 0(s4)
  ADD s2, s0, zero
  JAL zero, bb29
bb31:
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
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, head
  ADD s4, s2, s3
  LA s2, cnt
  LW s3, 0(s2)
  SW s3, 0(s4)
  LA s2, cnt
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, cnt
  SW s2, 0(s3)
  ADDI s2, zero, 80
  MULW s3, s1, s2
  LA s1, f
  ADD s2, s1, s3
  ADDI s1, zero, 4
  MUL s3, zero, s1
  ADD s1, s2, s3
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
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  CALL quick_read
  ADD s0, a0, zero
  LA s1, n
  SW s0, 0(s1)
  CALL quick_read
  ADD s0, a0, zero
  LA s1, m
  SW s0, 0(s1)
  CALL init
  ADDI s0, zero, 1
  JAL zero, bb34
bb34:
  LA s1, n
  LW s2, 0(s1)
  XOR s1, s0, s2
  SLTU s2, zero, s1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb35
  JAL zero, bb36
bb35:
  CALL quick_read
  ADD s1, a0, zero
  CALL quick_read
  ADD s2, a0, zero
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL add_edge
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb34
bb36:
  ADDI a0, zero, 1
  ADDI a1, zero, 1
  CALL tree
  JAL zero, bb37
bb37:
  LA s0, m
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb38
  JAL zero, bb39
bb38:
  CALL quick_read
  ADD s0, a0, zero
  CALL quick_read
  ADD s1, a0, zero
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL LCA
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s0, m
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  LA s0, m
  SW s2, 0(s0)
  JAL zero, bb37
bb39:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
quick_read:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s8, 8(sp)
  SD s4, 16(sp)
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD s6, 40(sp)
  SD s1, 48(sp)
  SD s7, 56(sp)
  SD s5, 64(sp)
  SD s0, 72(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb41
bb41:
  SLTI s0, s2, 48
  BNE s0, zero, bb44
  JAL zero, bb45
bb42:
  XORI s3, s2, 45
  SLTIU s4, s3, 1
  BNE s4, zero, bb47
  JAL zero, bb58
bb43:
  ADD s3, zero, zero
  ADD s4, s2, zero
  JAL zero, bb49
bb44:
  ADDI s0, zero, 1
  JAL zero, bb46
bb45:
  ADDI s3, zero, 57
  SLT s4, s3, s2
  XOR s3, s4, zero
  SLTU s4, zero, s3
  ADD s0, s4, zero
  JAL zero, bb46
bb46:
  XOR s3, s0, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb42
  JAL zero, bb43
bb47:
  ADDI s3, zero, 1
  JAL zero, bb48
bb48:
  CALL getch
  ADD s4, a0, zero
  ADD s1, s3, zero
  ADD s2, s4, zero
  JAL zero, bb41
bb49:
  SLTI s5, s4, 48
  XORI s6, s5, 1
  BNE s6, zero, bb52
  JAL zero, bb53
bb50:
  ADDI s5, zero, 10
  MULW s7, s3, s5
  ADDW s5, s7, s4
  ADDI s7, zero, 48
  SUBW s8, s5, s7
  CALL getch
  ADD s5, a0, zero
  ADD s3, s8, zero
  ADD s4, s5, zero
  JAL zero, bb49
bb51:
  XOR s5, s1, zero
  SLTU s7, zero, s5
  BNE s7, zero, bb55
  JAL zero, bb57
bb52:
  ADDI s5, zero, 57
  SLT s6, s5, s4
  XORI s5, s6, 1
  ADD s6, s5, zero
  JAL zero, bb54
bb53:
  ADD s6, zero, zero
  JAL zero, bb54
bb54:
  XOR s5, s6, zero
  SLTU s7, zero, s5
  BNE s7, zero, bb50
  JAL zero, bb51
bb55:
  SUB s5, zero, s3
  ADD a0, s5, zero
  LD ra, 0(sp)
  LD s8, 8(sp)
  LD s4, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s6, 40(sp)
  LD s1, 48(sp)
  LD s7, 56(sp)
  LD s5, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb56:
bb57:
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s8, 8(sp)
  LD s4, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s6, 40(sp)
  LD s1, 48(sp)
  LD s7, 56(sp)
  LD s5, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb58:
  ADD s3, s1, zero
  JAL zero, bb48
