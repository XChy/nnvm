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
  SD s4, 40(sp)
  SD ra, 48(sp)
  SD s3, 56(sp)
  SD s2, 64(sp)
  SD s1, 72(sp)
  SD s0, 80(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 32(sp)
  SW s1, 24(sp)
  LW s0, 32(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, dep
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, dep
  ADD s2, s1, s3
  LW s1, 0(s2)
  SLT s2, s0, s1
  BNE s2, zero, bb1
  JAL zero, bb2
bb1:
  LW s0, 32(sp)
  SW s0, 16(sp)
  LW s0, 24(sp)
  SW s0, 32(sp)
  LW s0, 16(sp)
  SW s0, 24(sp)
  JAL zero, bb2
bb2:
  ADDI s0, zero, 19
  SW s0, 8(sp)
  JAL zero, bb3
bb3:
  LW s0, 32(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, dep
  ADD s1, s0, s2
  LW s0, 0(s1)
  LW s1, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, dep
  ADD s2, s1, s3
  LW s1, 0(s2)
  SLT s2, s1, s0
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb4
  JAL zero, bb5
bb4:
  LW s0, 32(sp)
  ADDI s1, zero, 80
  MULW s2, s0, s1
  LA s0, f
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb6
  JAL zero, bb7
bb5:
  LW s0, 32(sp)
  LW s1, 24(sp)
  XOR s2, s0, s1
  SLTIU s0, s2, 1
  BNE s0, zero, bb11
  JAL zero, bb12
bb6:
  LW s0, 32(sp)
  ADDI s1, zero, 80
  MULW s2, s0, s1
  LA s0, f
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, dep
  ADD s1, s0, s2
  LW s0, 0(s1)
  LW s1, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, dep
  ADD s2, s1, s3
  LW s1, 0(s2)
  SLT s2, s0, s1
  XORI s0, s2, 1
  SB s0, 0(sp)
  JAL zero, bb8
bb7:
  SB zero, 0(sp)
  JAL zero, bb8
bb8:
  LB s0, 0(sp)
  BNE s0, zero, bb9
  JAL zero, bb10
bb9:
  LW s0, 32(sp)
  ADDI s1, zero, 80
  MULW s2, s0, s1
  LA s0, f
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(s0)
  SW s1, 32(sp)
  JAL zero, bb10
bb10:
  LW s0, 8(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 8(sp)
  JAL zero, bb3
bb11:
  LW s0, 32(sp)
  ADD a0, s0, zero
  LD s4, 40(sp)
  LD ra, 48(sp)
  LD s3, 56(sp)
  LD s2, 64(sp)
  LD s1, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb12:
  ADDI s0, zero, 19
  SW s0, 8(sp)
  JAL zero, bb13
bb13:
  LW s0, 8(sp)
  SLT s1, s0, zero
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb14
  JAL zero, bb15
bb14:
  LW s0, 32(sp)
  ADDI s1, zero, 80
  MULW s2, s0, s1
  LA s0, f
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(s0)
  LW s0, 24(sp)
  ADDI s2, zero, 80
  MULW s3, s0, s2
  LA s0, f
  ADD s2, s0, s3
  LW s0, 8(sp)
  ADDI s3, zero, 4
  MULW s4, s0, s3
  ADD s0, s2, s4
  LW s2, 0(s0)
  XOR s0, s1, s2
  SLTU s1, zero, s0
  BNE s1, zero, bb16
  JAL zero, bb17
bb15:
  LW s0, 32(sp)
  ADDI s1, zero, 80
  MULW s2, s0, s1
  LA s0, f
  ADD s1, s0, s2
  ADDI s0, zero, 4
  MULW s2, zero, s0
  ADD s0, s1, s2
  LW s1, 0(s0)
  ADD a0, s1, zero
  LD s4, 40(sp)
  LD ra, 48(sp)
  LD s3, 56(sp)
  LD s2, 64(sp)
  LD s1, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb16:
  LW s0, 32(sp)
  ADDI s1, zero, 80
  MULW s2, s0, s1
  LA s0, f
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(s0)
  SW s1, 32(sp)
  LW s0, 24(sp)
  ADDI s1, zero, 80
  MULW s2, s0, s1
  LA s0, f
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(s0)
  SW s1, 24(sp)
  JAL zero, bb17
bb17:
  LW s0, 8(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 8(sp)
  JAL zero, bb13
init:
  ADDI sp, sp, -48
  SD ra, 8(sp)
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
  SW s0, 0(sp)
  JAL zero, bb19
bb19:
  LW s0, 0(sp)
  LA s1, n
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb20
  JAL zero, bb21
bb20:
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
  JAL zero, bb19
bb21:
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
tree:
  ADDI sp, sp, -80
  SD ra, 32(sp)
  SD s4, 40(sp)
  SD s3, 48(sp)
  SD s2, 56(sp)
  SD s1, 64(sp)
  SD s0, 72(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 24(sp)
  SW s1, 16(sp)
  LW s0, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, dep
  ADD s2, s0, s3
  SW s1, 0(s2)
  SW zero, 8(sp)
  JAL zero, bb23
bb23:
  LW s0, 24(sp)
  ADDI s1, zero, 80
  MULW s2, s0, s1
  LA s0, f
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb24
  JAL zero, bb25
bb24:
  LW s0, 24(sp)
  ADDI s1, zero, 80
  MULW s2, s0, s1
  LA s0, f
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDIW s2, s0, 1
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s1, 24(sp)
  ADDI s2, zero, 80
  MULW s3, s1, s2
  LA s1, f
  ADD s2, s1, s3
  LW s1, 8(sp)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s1, s2, s4
  LW s2, 0(s1)
  ADDI s1, zero, 80
  MULW s3, s2, s1
  LA s1, f
  ADD s2, s1, s3
  LW s1, 8(sp)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s1, s2, s4
  LW s2, 0(s1)
  SW s2, 0(s0)
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb23
bb25:
  LW s0, 24(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, head
  ADD s1, s0, s2
  LW s0, 0(s1)
  SW s0, 8(sp)
  JAL zero, bb26
bb26:
  LW s0, 8(sp)
  ADDI s1, zero, 1
  SUB s2, zero, s1
  XOR s1, s0, s2
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb27
  JAL zero, bb28
bb27:
  LW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, to
  ADD s1, s0, s2
  LW s0, 0(s1)
  SW s0, 0(sp)
  LW s1, 16(sp)
  ADDIW s2, s1, 1
  ADD a0, s0, zero
  ADD a1, s2, zero
  CALL tree
  LW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, next
  ADD s1, s0, s2
  LW s0, 0(s1)
  SW s0, 8(sp)
  JAL zero, bb26
bb28:
  LD ra, 32(sp)
  LD s4, 40(sp)
  LD s3, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
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
  LW s0, 0(sp)
  ADDI s1, zero, 80
  MULW s2, s0, s1
  LA s0, f
  ADD s1, s0, s2
  ADDI s0, zero, 4
  MUL s2, zero, s0
  ADD s0, s1, s2
  LW s1, 8(sp)
  SW s1, 0(s0)
  LD ra, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -80
  SD ra, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s0, 64(sp)
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
  SW s0, 32(sp)
  JAL zero, bb31
bb31:
  LW s0, 32(sp)
  LA s1, n
  LW s2, 0(s1)
  XOR s1, s0, s2
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb32
  JAL zero, bb33
bb32:
  CALL quick_read
  ADD s0, a0, zero
  SW s0, 24(sp)
  CALL quick_read
  ADD s0, a0, zero
  SW s0, 16(sp)
  LW s1, 24(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL add_edge
  LW s0, 32(sp)
  ADDIW s1, s0, 1
  SW s1, 32(sp)
  JAL zero, bb31
bb33:
  ADDI a0, zero, 1
  ADDI a1, zero, 1
  CALL tree
  JAL zero, bb34
bb34:
  LA s0, m
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb35
  JAL zero, bb36
bb35:
  CALL quick_read
  ADD s0, a0, zero
  SW s0, 8(sp)
  CALL quick_read
  ADD s0, a0, zero
  SW s0, 0(sp)
  LW s1, 8(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
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
  JAL zero, bb34
bb36:
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
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
  JAL zero, bb38
bb38:
  LW s0, 32(sp)
  SLTI s1, s0, 48
  BNE s1, zero, bb41
  JAL zero, bb42
bb39:
  LW s0, 32(sp)
  XORI s1, s0, 45
  SLTIU s0, s1, 1
  BNE s0, zero, bb44
  JAL zero, bb45
bb40:
  JAL zero, bb46
bb41:
  ADDI s0, zero, 1
  SB s0, 8(sp)
  JAL zero, bb43
bb42:
  LW s0, 32(sp)
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 8(sp)
  JAL zero, bb43
bb43:
  LB s0, 8(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb39
  JAL zero, bb40
bb44:
  ADDI s0, zero, 1
  SW s0, 16(sp)
  JAL zero, bb45
bb45:
  CALL getch
  ADD s0, a0, zero
  SW s0, 32(sp)
  JAL zero, bb38
bb46:
  LW s0, 32(sp)
  SLTI s1, s0, 48
  XORI s0, s1, 1
  BNE s0, zero, bb49
  JAL zero, bb50
bb47:
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
  JAL zero, bb46
bb48:
  LW s0, 16(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb52
  JAL zero, bb54
bb49:
  LW s0, 32(sp)
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XORI s0, s2, 1
  SB s0, 0(sp)
  JAL zero, bb51
bb50:
  SB zero, 0(sp)
  JAL zero, bb51
bb51:
  LB s0, 0(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb47
  JAL zero, bb48
bb52:
  LW s0, 24(sp)
  SUB s1, zero, s0
  ADD a0, s1, zero
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb53:
bb54:
  LW s0, 24(sp)
  ADD a0, s0, zero
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
