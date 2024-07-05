.global insert
.global new_node
.global delete
.global find_minimum
.global search
.global main
.global inorder
.section .bss

left_child:
.space 40000
value:
.space 40000
right_child:
.space 40000



.section .data
now:
.word 0x00000000



LF:
.word 0x0000000a
maxNode:
.word 0x00002710
space:
.word 0x00000020
.section .text
insert:
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
  ADDI s2, zero, 0
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  XOR s2, s0, s4
  SLTIU s3, s2, 1
  BNE s3, zero, bb1
  JAL zero, bb3
bb1:
  ADD a0, s1, zero
  CALL new_node
  ADD s2, a0, zero
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb2:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb3:
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, value
  ADD s4, s2, s3
  LW s2, 0(s4)
  SLT s3, s2, s1
  BNE s3, zero, bb4
  JAL zero, bb6
bb4:
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, right_child
  ADD s4, s2, s3
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, right_child
  ADD s5, s2, s3
  LW s2, 0(s5)
  ADD a0, s2, zero
  ADD a1, s1, zero
  CALL insert
  ADD s2, a0, zero
  SW s2, 0(s4)
  JAL zero, bb5
bb5:
  JAL zero, bb2
bb6:
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, left_child
  ADD s4, s2, s3
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, left_child
  ADD s5, s2, s3
  LW s2, 0(s5)
  ADD a0, s2, zero
  ADD a1, s1, zero
  CALL insert
  ADD s1, a0, zero
  SW s1, 0(s4)
  JAL zero, bb5
new_node:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  LA s1, now
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  LA s1, value
  ADD s2, s1, s3
  SW s0, 0(s2)
  LA s0, now
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, left_child
  ADD s1, s0, s2
  ADDI s0, zero, 0
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  SW s3, 0(s1)
  LA s0, now
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, right_child
  ADD s1, s0, s2
  ADDI s0, zero, 0
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  SW s3, 0(s1)
  LA s0, now
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, now
  SW s0, 0(s1)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
delete:
  ADDI sp, sp, -96
  SD s10, 0(sp)
  SD s9, 8(sp)
  SD s0, 16(sp)
  SD s5, 24(sp)
  SD s7, 32(sp)
  SD s2, 40(sp)
  SD s8, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD ra, 72(sp)
  SD s6, 80(sp)
  SD s1, 88(sp)
  ADD s0, a0, zero
  ADD s2, a1, zero
  ADDI s3, zero, 0
  ADDI s4, zero, 1
  SUBW s5, s3, s4
  XOR s3, s0, s5
  SLTIU s4, s3, 1
  BNE s4, zero, bb9
  JAL zero, bb10
bb9:
  ADDI s3, zero, 0
  ADDI s4, zero, 1
  SUBW s5, s3, s4
  ADD a0, s5, zero
  LD s10, 0(sp)
  LD s9, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s7, 32(sp)
  LD s2, 40(sp)
  LD s8, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD ra, 72(sp)
  LD s6, 80(sp)
  LD s1, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb10:
  ADDI s3, zero, 4
  MULW s4, s0, s3
  LA s3, value
  ADD s5, s3, s4
  LW s3, 0(s5)
  SLT s4, s3, s2
  BNE s4, zero, bb11
  JAL zero, bb13
bb11:
  ADDI s3, zero, 4
  MULW s4, s0, s3
  LA s3, right_child
  ADD s5, s3, s4
  ADDI s3, zero, 4
  MULW s4, s0, s3
  LA s3, right_child
  ADD s6, s3, s4
  LW s3, 0(s6)
  ADD a0, s3, zero
  ADD a1, s2, zero
  CALL delete
  ADD s3, a0, zero
  SW s3, 0(s5)
  JAL zero, bb12
bb12:
  ADD a0, s0, zero
  LD s10, 0(sp)
  LD s9, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s7, 32(sp)
  LD s2, 40(sp)
  LD s8, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD ra, 72(sp)
  LD s6, 80(sp)
  LD s1, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb13:
  ADDI s3, zero, 4
  MULW s4, s0, s3
  LA s3, value
  ADD s5, s3, s4
  LW s3, 0(s5)
  SLT s4, s2, s3
  BNE s4, zero, bb14
  JAL zero, bb16
bb14:
  ADDI s3, zero, 4
  MULW s4, s0, s3
  LA s3, left_child
  ADD s5, s3, s4
  ADDI s3, zero, 4
  MULW s4, s0, s3
  LA s3, left_child
  ADD s6, s3, s4
  LW s3, 0(s6)
  ADD a0, s3, zero
  ADD a1, s2, zero
  CALL delete
  ADD s2, a0, zero
  SW s2, 0(s5)
  ADD s2, zero, zero
  JAL zero, bb15
bb15:
  JAL zero, bb12
bb16:
  ADDI s3, zero, 4
  MULW s4, s0, s3
  LA s3, left_child
  ADD s5, s3, s4
  LW s3, 0(s5)
  ADDI s4, zero, 0
  ADDI s5, zero, 1
  SUBW s6, s4, s5
  XOR s4, s3, s6
  SLTIU s3, s4, 1
  BNE s3, zero, bb17
  JAL zero, bb18
bb17:
  ADDI s3, zero, 4
  MULW s4, s0, s3
  LA s3, right_child
  ADD s5, s3, s4
  LW s3, 0(s5)
  ADDI s4, zero, 0
  ADDI s5, zero, 1
  SUBW s6, s4, s5
  XOR s4, s3, s6
  SLTIU s3, s4, 1
  ADD s4, s3, zero
  JAL zero, bb19
bb18:
  ADD s4, zero, zero
  JAL zero, bb19
bb19:
  BNE s4, zero, bb20
  JAL zero, bb22
bb20:
  ADDI s3, zero, 0
  ADDI s5, zero, 1
  SUBW s6, s3, s5
  ADD a0, s6, zero
  LD s10, 0(sp)
  LD s9, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s7, 32(sp)
  LD s2, 40(sp)
  LD s8, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD ra, 72(sp)
  LD s6, 80(sp)
  LD s1, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb21:
  ADD s2, s1, zero
  JAL zero, bb15
bb22:
  ADDI s3, zero, 4
  MULW s5, s0, s3
  LA s3, left_child
  ADD s6, s3, s5
  LW s3, 0(s6)
  ADDI s5, zero, 0
  ADDI s6, zero, 1
  SUBW s7, s5, s6
  XOR s5, s3, s7
  SLTIU s3, s5, 1
  BNE s3, zero, bb23
  JAL zero, bb24
bb23:
  ADDI s3, zero, 1
  JAL zero, bb25
bb24:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, right_child
  ADD s5, s1, s2
  LW s1, 0(s5)
  ADDI s2, zero, 0
  ADDI s5, zero, 1
  SUBW s6, s2, s5
  XOR s2, s1, s6
  SLTIU s1, s2, 1
  XOR s2, s1, zero
  SLTU s1, zero, s2
  ADD s3, s1, zero
  JAL zero, bb25
bb25:
  BNE s3, zero, bb26
  JAL zero, bb28
bb26:
  ADDI s5, zero, 4
  MULW s6, s0, s5
  LA s5, left_child
  ADD s7, s5, s6
  LW s5, 0(s7)
  ADDI s6, zero, 0
  ADDI s7, zero, 1
  SUBW s8, s6, s7
  XOR s6, s5, s8
  SLTIU s5, s6, 1
  BNE s5, zero, bb29
  JAL zero, bb31
bb27:
  JAL zero, bb21
bb28:
  ADDI s5, zero, 4
  MULW s6, s0, s5
  LA s5, right_child
  ADD s7, s5, s6
  LW s5, 0(s7)
  ADD a0, s5, zero
  CALL find_minimum
  ADD s5, a0, zero
  ADDI s6, zero, 4
  MULW s7, s0, s6
  LA s6, value
  ADD s8, s6, s7
  ADDI s6, zero, 4
  MULW s7, s5, s6
  LA s6, value
  ADD s9, s6, s7
  LW s6, 0(s9)
  SW s6, 0(s8)
  ADDI s6, zero, 4
  MULW s7, s0, s6
  LA s6, right_child
  ADD s8, s6, s7
  ADDI s6, zero, 4
  MULW s7, s0, s6
  LA s6, right_child
  ADD s9, s6, s7
  LW s6, 0(s9)
  ADDI s7, zero, 4
  MULW s9, s5, s7
  LA s7, value
  ADD s10, s7, s9
  LW s7, 0(s10)
  ADD a0, s6, zero
  ADD a1, s7, zero
  CALL delete
  ADD s6, a0, zero
  SW s6, 0(s8)
  ADD s1, s5, zero
  JAL zero, bb27
bb29:
  ADDI s5, zero, 4
  MULW s6, s0, s5
  LA s5, right_child
  ADD s7, s5, s6
  LW s5, 0(s7)
  ADD a0, s5, zero
  LD s10, 0(sp)
  LD s9, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s7, 32(sp)
  LD s2, 40(sp)
  LD s8, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD ra, 72(sp)
  LD s6, 80(sp)
  LD s1, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb30:
  JAL zero, bb27
bb31:
  ADDI s5, zero, 4
  MULW s6, s0, s5
  LA s5, left_child
  ADD s7, s5, s6
  LW s5, 0(s7)
  ADD a0, s5, zero
  LD s10, 0(sp)
  LD s9, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s7, 32(sp)
  LD s2, 40(sp)
  LD s8, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD ra, 72(sp)
  LD s6, 80(sp)
  LD s1, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
find_minimum:
  ADDI sp, sp, -48
  SD s4, 0(sp)
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 0
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  XOR s1, s0, s3
  SLTIU s2, s1, 1
  BNE s2, zero, bb33
  JAL zero, bb35
bb33:
  ADDI s1, zero, 0
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADD a0, s3, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb34:
  ADD a0, s0, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb35:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, left_child
  ADD s3, s1, s2
  LW s1, 0(s3)
  ADDI s2, zero, 0
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  XOR s2, s1, s4
  SLTU s1, zero, s2
  BNE s1, zero, bb36
  JAL zero, bb37
bb36:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, left_child
  ADD s3, s1, s2
  LW s1, 0(s3)
  ADD a0, s1, zero
  CALL find_minimum
  ADD s1, a0, zero
  ADD a0, s1, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb37:
  JAL zero, bb34
search:
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
  ADDI s2, zero, 0
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  XOR s2, s0, s4
  SLTIU s3, s2, 1
  BNE s3, zero, bb39
  JAL zero, bb40
bb39:
  ADDI s2, zero, 1
  JAL zero, bb41
bb40:
  ADDI s3, zero, 4
  MULW s4, s0, s3
  LA s3, value
  ADD s5, s3, s4
  LW s3, 0(s5)
  XOR s4, s3, s1
  SLTIU s3, s4, 1
  XOR s4, s3, zero
  SLTU s3, zero, s4
  ADD s2, s3, zero
  JAL zero, bb41
bb41:
  BNE s2, zero, bb42
  JAL zero, bb44
bb42:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb43:
bb44:
  ADDI s3, zero, 4
  MULW s4, s0, s3
  LA s3, value
  ADD s5, s3, s4
  LW s3, 0(s5)
  SLT s4, s3, s1
  BNE s4, zero, bb45
  JAL zero, bb47
bb45:
  ADDI s3, zero, 4
  MULW s4, s0, s3
  LA s3, right_child
  ADD s5, s3, s4
  LW s3, 0(s5)
  ADD a0, s3, zero
  ADD a1, s1, zero
  CALL search
  ADD s3, a0, zero
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb46:
  JAL zero, bb43
bb47:
  ADDI s3, zero, 4
  MULW s4, s0, s3
  LA s3, left_child
  ADD s5, s3, s4
  LW s3, 0(s5)
  ADD a0, s3, zero
  ADD a1, s1, zero
  CALL search
  ADD s3, a0, zero
  ADD a0, s3, zero
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
  SD s4, 0(sp)
  SD s3, 8(sp)
  SD ra, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  LA s0, now
  ADDI s1, zero, 0
  SW s1, 0(s0)
  CALL getint
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s2, zero, s1
  XORI s1, s2, 1
  ADD s2, s1, zero
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb49
  JAL zero, bb50
bb49:
  ADD a0, zero, zero
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb50:
  CALL getint
  ADD s1, a0, zero
  ADD a0, s1, zero
  CALL new_node
  ADD s1, a0, zero
  ADDI s2, zero, 1
  JAL zero, bb51
bb51:
  SLT s3, s2, s0
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb52
  JAL zero, bb53
bb52:
  CALL getint
  ADD s3, a0, zero
  ADD a0, s1, zero
  ADD a1, s3, zero
  CALL insert
  ADD s3, a0, zero
  ADDIW s3, s2, 1
  ADD s2, s3, zero
  JAL zero, bb51
bb53:
  ADD a0, s1, zero
  CALL inorder
  LA s0, LF
  LW s2, 0(s0)
  ADD a0, s2, zero
  CALL putch
  CALL getint
  ADD s0, a0, zero
  ADD s2, zero, zero
  ADD s3, s1, zero
  JAL zero, bb54
bb54:
  SLT s1, s2, s0
  XOR s4, s1, zero
  SLTU s1, zero, s4
  BNE s1, zero, bb55
  JAL zero, bb56
bb55:
  CALL getint
  ADD s1, a0, zero
  ADD a0, s3, zero
  ADD a1, s1, zero
  CALL delete
  ADD s1, a0, zero
  ADDIW s4, s2, 1
  ADD s2, s4, zero
  ADD s3, s1, zero
  JAL zero, bb54
bb56:
  ADD a0, s3, zero
  CALL inorder
  LA s0, LF
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putch
  ADD a0, zero, zero
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
inorder:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 1
  SUB s2, zero, s1
  XOR s1, s0, s2
  SLTU s2, zero, s1
  BNE s2, zero, bb58
  JAL zero, bb59
bb58:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, left_child
  ADD s3, s1, s2
  LW s1, 0(s3)
  ADD a0, s1, zero
  CALL inorder
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, value
  ADD s3, s1, s2
  LW s1, 0(s3)
  ADD a0, s1, zero
  CALL putint
  LA s1, space
  LW s2, 0(s1)
  ADD a0, s2, zero
  CALL putch
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, right_child
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL inorder
  JAL zero, bb59
bb59:
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
