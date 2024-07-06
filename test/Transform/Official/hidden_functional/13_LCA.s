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
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADDI s6, zero, 19
  ADD s7, s4, zero
  JAL zero, bb3
bb3:
  ADD s4, s7, zero
  ADD s8, s6, zero
  ADDI s9, zero, 4
  MULW s10, s4, s9
  LA s9, dep
  ADD s11, s9, s10
  LW s9, 0(s11)
  ADDI s10, zero, 4
  MULW s11, s5, s10
  LA s10, dep
  ADD t0, s10, s11
  LW s10, 0(t0)
  SLT s11, s10, s9
  XOR s9, s11, zero
  SLTU s10, zero, s9
  BNE s10, zero, bb4
  JAL zero, bb5
bb4:
  ADDI s9, zero, 80
  MULW s10, s4, s9
  LA s9, f
  ADD s11, s9, s10
  ADDI s9, zero, 4
  MULW s10, s8, s9
  ADD s9, s11, s10
  LW s10, 0(s9)
  XOR s9, s10, zero
  SLTU s10, zero, s9
  BNE s10, zero, bb6
  JAL zero, bb7
bb5:
  XOR s6, s4, s5
  SLTIU s7, s6, 1
  BNE s7, zero, bb11
  JAL zero, bb12
bb6:
  ADDI s9, zero, 80
  MULW s10, s4, s9
  LA s9, f
  ADD s11, s9, s10
  ADDI s9, zero, 4
  MULW s10, s8, s9
  ADD s9, s11, s10
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  LA s9, dep
  ADD s10, s9, s11
  LW s9, 0(s10)
  ADDI s10, zero, 4
  MULW s11, s5, s10
  LA s10, dep
  ADD t0, s10, s11
  LW s10, 0(t0)
  SLT s11, s9, s10
  XORI s9, s11, 1
  ADD s10, s9, zero
  JAL zero, bb8
bb7:
  ADD s10, zero, zero
  JAL zero, bb8
bb8:
  ADD s9, s10, zero
  BNE s9, zero, bb9
  JAL zero, bb19
bb9:
  ADDI s9, zero, 80
  MULW s11, s4, s9
  LA s9, f
  ADD t0, s9, s11
  ADDI s9, zero, 4
  MULW s11, s8, s9
  ADD s9, t0, s11
  LW s11, 0(s9)
  ADD s9, s11, zero
  JAL zero, bb10
bb10:
  ADD s11, s9, zero
  ADDI t0, zero, 1
  SUBW t1, s8, t0
  ADD s6, t1, zero
  ADD s7, s11, zero
  JAL zero, bb3
bb11:
  ADD a0, s4, zero
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
bb12:
  ADDI s6, zero, 19
  ADD s7, s5, zero
  ADD s5, s4, zero
  JAL zero, bb13
bb13:
  ADD s4, s5, zero
  ADD s8, s7, zero
  ADD s9, s6, zero
  SLT s10, s9, zero
  XORI s11, s10, 1
  XOR s10, s11, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb14
  JAL zero, bb15
bb14:
  ADDI s10, zero, 80
  MULW s11, s4, s10
  LA s10, f
  ADD t0, s10, s11
  ADDI s10, zero, 4
  MULW s11, s9, s10
  ADD s10, t0, s11
  LW s11, 0(s10)
  ADDI s10, zero, 80
  MULW t0, s8, s10
  LA s10, f
  ADD t1, s10, t0
  ADDI s10, zero, 4
  MULW t0, s9, s10
  ADD s10, t1, t0
  LW t0, 0(s10)
  XOR s10, s11, t0
  SLTU s11, zero, s10
  BNE s11, zero, bb16
  JAL zero, bb20
bb15:
  ADDI s5, zero, 80
  MULW s6, s4, s5
  LA s4, f
  ADD s5, s4, s6
  ADD s4, s5, zero
  LW s5, 0(s4)
  ADD a0, s5, zero
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
  ADDI s10, zero, 80
  MULW s11, s4, s10
  LA s10, f
  ADD t0, s10, s11
  ADDI s10, zero, 4
  MULW s11, s9, s10
  ADD s10, t0, s11
  LW s11, 0(s10)
  ADDI s10, zero, 80
  MULW t0, s8, s10
  LA s10, f
  ADD t1, s10, t0
  ADDI s10, zero, 4
  MULW t0, s9, s10
  ADD s10, t1, t0
  LW t0, 0(s10)
  ADD s10, t0, zero
  ADD t0, s11, zero
  JAL zero, bb17
bb17:
  ADD s11, t0, zero
  ADD t1, s10, zero
  ADDI t2, zero, 1
  SUBW a1, s9, t2
  ADD s6, a1, zero
  ADD s7, t1, zero
  ADD s5, s11, zero
  JAL zero, bb13
bb18:
  ADD s2, s1, zero
  ADD s3, s0, zero
  JAL zero, bb2
bb19:
  ADD s9, s4, zero
  JAL zero, bb10
bb20:
  ADD s10, s8, zero
  ADD t0, s4, zero
  JAL zero, bb17
init:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  LA s0, dep
  ADD s1, s0, zero
  LUI s0, 259060
  ADDI s0, s0, -193
  SW s0, 0(s1)
  ADDI s0, zero, 1
  JAL zero, bb22
bb22:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb23
  JAL zero, bb24
bb23:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, head
  ADD s4, s2, s3
  ADDI s2, zero, -1
  SW s2, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb22
bb24:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
tree:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s7, 48(sp)
  SD s5, 56(sp)
  SD s0, 64(sp)
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
  ADD s3, s2, zero
  ADDI s4, zero, 80
  MULW s5, s0, s4
  LA s4, f
  ADD s6, s4, s5
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s4, s6, s5
  LW s5, 0(s4)
  XOR s4, s5, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb27
  JAL zero, bb28
bb27:
  ADDI s4, zero, 80
  MULW s5, s0, s4
  LA s4, f
  ADD s6, s4, s5
  ADDIW s4, s3, 1
  ADDI s5, zero, 4
  MULW s7, s4, s5
  ADD s4, s6, s7
  ADDI s5, zero, 80
  MULW s6, s0, s5
  LA s5, f
  ADD s7, s5, s6
  ADDI s5, zero, 4
  MULW s6, s3, s5
  ADD s5, s7, s6
  LW s6, 0(s5)
  ADDI s5, zero, 80
  MULW s7, s6, s5
  LA s5, f
  ADD s6, s5, s7
  ADDI s5, zero, 4
  MULW s7, s3, s5
  ADD s5, s6, s7
  LW s6, 0(s5)
  SW s6, 0(s4)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
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
  ADD s0, s2, zero
  XORI s3, s0, -1
  SLTU s4, zero, s3
  XOR s3, s4, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb30
  JAL zero, bb31
bb30:
  ADDI s3, zero, 4
  MULW s4, s0, s3
  LA s3, to
  ADD s5, s3, s4
  LW s3, 0(s5)
  ADDIW s4, s1, 1
  ADD a0, s3, zero
  ADD a1, s4, zero
  CALL tree
  ADDI s3, zero, 4
  MULW s4, s0, s3
  LA s0, next
  ADD s3, s0, s4
  LW s0, 0(s3)
  ADD s2, s0, zero
  JAL zero, bb29
bb31:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s7, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
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
  ADD s1, s2, zero
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
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
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
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  XOR s2, s1, s3
  SLTU s3, zero, s2
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb35
  JAL zero, bb36
bb35:
  CALL quick_read
  ADD s2, a0, zero
  CALL quick_read
  ADD s3, a0, zero
  ADD a0, s2, zero
  ADD a1, s3, zero
  CALL add_edge
  ADDIW s2, s1, 1
  ADD s0, s2, zero
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
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
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
  JAL zero, bb41
bb41:
  ADD s0, s2, zero
  ADD s3, s1, zero
  SLTI s4, s0, 48
  BNE s4, zero, bb44
  JAL zero, bb45
bb42:
  XORI s5, s0, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb47
  JAL zero, bb57
bb43:
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb49
bb44:
  ADDI s4, zero, 1
  JAL zero, bb46
bb45:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XOR s1, s2, zero
  SLTU s2, zero, s1
  ADD s4, s2, zero
  JAL zero, bb46
bb46:
  ADD s5, s4, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
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
  ADD s5, s2, zero
  ADD s6, s1, zero
  SLTI s7, s5, 48
  XORI s8, s7, 1
  BNE s8, zero, bb52
  JAL zero, bb53
bb50:
  ADDI s7, zero, 10
  MULW s9, s6, s7
  ADDW s7, s9, s5
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb49
bb51:
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb55
  JAL zero, bb56
bb52:
  ADDI s7, zero, 57
  SLT s8, s7, s5
  XORI s7, s8, 1
  ADD s8, s7, zero
  JAL zero, bb54
bb53:
  ADD s8, zero, zero
  JAL zero, bb54
bb54:
  ADD s7, s8, zero
  XOR s9, s7, zero
  SLTU s7, zero, s9
  BNE s7, zero, bb50
  JAL zero, bb51
bb55:
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
bb56:
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
bb57:
  ADD s5, s3, zero
  JAL zero, bb48
