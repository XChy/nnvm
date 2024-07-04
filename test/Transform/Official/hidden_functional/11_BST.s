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
  SD ra, 16(sp)
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD s1, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 8(sp)
  SW s1, 0(sp)
  LW s0, 8(sp)
  ADDI s1, zero, 0
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  XOR s1, s0, s3
  SLTIU s0, s1, 1
  BNE s0, zero, bb1
  JAL zero, bb3
bb1:
  LW s0, 0(sp)
  ADD a0, s0, zero
  CALL new_node
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb2:
  LW s0, 8(sp)
  ADD a0, s0, zero
  LD ra, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb3:
  LW s0, 0(sp)
  LW s1, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, value
  ADD s2, s1, s3
  LW s1, 0(s2)
  SLT s2, s1, s0
  BNE s2, zero, bb4
  JAL zero, bb6
bb4:
  LW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, right_child
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, right_child
  ADD s2, s0, s3
  LW s0, 0(s2)
  LW s2, 0(sp)
  ADD a0, s0, zero
  ADD a1, s2, zero
  CALL insert
  ADD s0, a0, zero
  SW s0, 0(s1)
  JAL zero, bb5
bb5:
  JAL zero, bb2
bb6:
  LW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, left_child
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, left_child
  ADD s2, s0, s3
  LW s0, 0(s2)
  LW s2, 0(sp)
  ADD a0, s0, zero
  ADD a1, s2, zero
  CALL insert
  ADD s0, a0, zero
  SW s0, 0(s1)
  JAL zero, bb5
new_node:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  SW s0, 0(sp)
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
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
delete:
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
  ADDI s1, zero, 0
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  XOR s1, s0, s3
  SLTIU s0, s1, 1
  BNE s0, zero, bb9
  JAL zero, bb10
bb9:
  ADDI s0, zero, 0
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  ADD a0, s2, zero
  LD s4, 40(sp)
  LD ra, 48(sp)
  LD s3, 56(sp)
  LD s2, 64(sp)
  LD s1, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb10:
  LW s0, 24(sp)
  LW s1, 32(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, value
  ADD s2, s1, s3
  LW s1, 0(s2)
  SLT s2, s1, s0
  BNE s2, zero, bb11
  JAL zero, bb13
bb11:
  LW s0, 32(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, right_child
  ADD s1, s0, s2
  LW s0, 32(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, right_child
  ADD s2, s0, s3
  LW s0, 0(s2)
  LW s2, 24(sp)
  ADD a0, s0, zero
  ADD a1, s2, zero
  CALL delete
  ADD s0, a0, zero
  SW s0, 0(s1)
  JAL zero, bb12
bb12:
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
bb13:
  LW s0, 24(sp)
  LW s1, 32(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, value
  ADD s2, s1, s3
  LW s1, 0(s2)
  SLT s2, s0, s1
  BNE s2, zero, bb14
  JAL zero, bb16
bb14:
  LW s0, 32(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, left_child
  ADD s1, s0, s2
  LW s0, 32(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, left_child
  ADD s2, s0, s3
  LW s0, 0(s2)
  LW s2, 24(sp)
  ADD a0, s0, zero
  ADD a1, s2, zero
  CALL delete
  ADD s0, a0, zero
  SW s0, 0(s1)
  JAL zero, bb15
bb15:
  JAL zero, bb12
bb16:
  LW s0, 32(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, left_child
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADDI s1, zero, 0
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  XOR s1, s0, s3
  SLTIU s0, s1, 1
  BNE s0, zero, bb17
  JAL zero, bb18
bb17:
  LW s0, 32(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, right_child
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADDI s1, zero, 0
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  XOR s1, s0, s3
  SLTIU s0, s1, 1
  SB s0, 16(sp)
  JAL zero, bb19
bb18:
  ADDI s0, zero, 0
  SB s0, 16(sp)
  JAL zero, bb19
bb19:
  LB s0, 16(sp)
  BNE s0, zero, bb20
  JAL zero, bb22
bb20:
  ADDI s0, zero, 0
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  ADD a0, s2, zero
  LD s4, 40(sp)
  LD ra, 48(sp)
  LD s3, 56(sp)
  LD s2, 64(sp)
  LD s1, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb21:
  JAL zero, bb15
bb22:
  LW s0, 32(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, left_child
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADDI s1, zero, 0
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  XOR s1, s0, s3
  SLTIU s0, s1, 1
  BNE s0, zero, bb23
  JAL zero, bb24
bb23:
  ADDI s0, zero, 1
  SB s0, 8(sp)
  JAL zero, bb25
bb24:
  LW s0, 32(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, right_child
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADDI s1, zero, 0
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  XOR s1, s0, s3
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 8(sp)
  JAL zero, bb25
bb25:
  LB s0, 8(sp)
  BNE s0, zero, bb26
  JAL zero, bb28
bb26:
  LW s0, 32(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, left_child
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADDI s1, zero, 0
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  XOR s1, s0, s3
  SLTIU s0, s1, 1
  BNE s0, zero, bb29
  JAL zero, bb31
bb27:
  JAL zero, bb21
bb28:
  LW s0, 32(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, right_child
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL find_minimum
  ADD s0, a0, zero
  SW s0, 0(sp)
  LW s1, 32(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, value
  ADD s2, s1, s3
  ADDI s1, zero, 4
  MULW s3, s0, s1
  LA s0, value
  ADD s1, s0, s3
  LW s0, 0(s1)
  SW s0, 0(s2)
  LW s0, 32(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, right_child
  ADD s1, s0, s2
  LW s0, 32(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, right_child
  ADD s2, s0, s3
  LW s0, 0(s2)
  LW s2, 0(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s2, value
  ADD s3, s2, s4
  LW s2, 0(s3)
  ADD a0, s0, zero
  ADD a1, s2, zero
  CALL delete
  ADD s0, a0, zero
  SW s0, 0(s1)
  JAL zero, bb27
bb29:
  LW s0, 32(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, right_child
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  LD s4, 40(sp)
  LD ra, 48(sp)
  LD s3, 56(sp)
  LD s2, 64(sp)
  LD s1, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb30:
  JAL zero, bb27
bb31:
  LW s0, 32(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, left_child
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  LD s4, 40(sp)
  LD ra, 48(sp)
  LD s3, 56(sp)
  LD s2, 64(sp)
  LD s1, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
find_minimum:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  SW s0, 0(sp)
  ADDI s1, zero, 0
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  XOR s1, s0, s3
  SLTIU s0, s1, 1
  BNE s0, zero, bb33
  JAL zero, bb35
bb33:
  ADDI s0, zero, 0
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  ADD a0, s2, zero
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb34:
  LW s0, 0(sp)
  ADD a0, s0, zero
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb35:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, left_child
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADDI s1, zero, 0
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  XOR s1, s0, s3
  SLTU s0, zero, s1
  BNE s0, zero, bb36
  JAL zero, bb37
bb36:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, left_child
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL find_minimum
  ADD s0, a0, zero
  ADD a0, s0, zero
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
  SD ra, 24(sp)
  SD s3, 32(sp)
  SD s2, 40(sp)
  SD s1, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 16(sp)
  SW s1, 8(sp)
  LW s0, 16(sp)
  ADDI s1, zero, 0
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  XOR s1, s0, s3
  SLTIU s0, s1, 1
  BNE s0, zero, bb39
  JAL zero, bb40
bb39:
  ADDI s0, zero, 1
  SB s0, 0(sp)
  JAL zero, bb41
bb40:
  LW s0, 16(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, value
  ADD s1, s0, s2
  LW s0, 0(s1)
  LW s1, 8(sp)
  XOR s2, s0, s1
  SLTIU s0, s2, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 0(sp)
  JAL zero, bb41
bb41:
  LB s0, 0(sp)
  BNE s0, zero, bb42
  JAL zero, bb44
bb42:
  LW s0, 16(sp)
  ADD a0, s0, zero
  LD ra, 24(sp)
  LD s3, 32(sp)
  LD s2, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb43:
bb44:
  LW s0, 8(sp)
  LW s1, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, value
  ADD s2, s1, s3
  LW s1, 0(s2)
  SLT s2, s1, s0
  BNE s2, zero, bb45
  JAL zero, bb47
bb45:
  LW s0, 16(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, right_child
  ADD s1, s0, s2
  LW s0, 0(s1)
  LW s1, 8(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL search
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 24(sp)
  LD s3, 32(sp)
  LD s2, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb46:
  JAL zero, bb43
bb47:
  LW s0, 16(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, left_child
  ADD s1, s0, s2
  LW s0, 0(s1)
  LW s1, 8(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL search
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 24(sp)
  LD s3, 32(sp)
  LD s2, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -64
  SD s2, 24(sp)
  SD ra, 32(sp)
  SD s1, 40(sp)
  SD s0, 48(sp)
  LA s0, now
  ADDI s1, zero, 0
  SW s1, 0(s0)
  CALL getint
  ADD s0, a0, zero
  SW s0, 16(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb49
  JAL zero, bb50
bb49:
  ADD a0, zero, zero
  LD s2, 24(sp)
  LD ra, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb50:
  CALL getint
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL new_node
  ADD s0, a0, zero
  SW s0, 8(sp)
  ADDI s0, zero, 1
  SW s0, 0(sp)
  JAL zero, bb51
bb51:
  LW s0, 0(sp)
  LW s1, 16(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb52
  JAL zero, bb53
bb52:
  LW s0, 8(sp)
  CALL getint
  ADD s1, a0, zero
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL insert
  ADD s0, a0, zero
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb51
bb53:
  LW s0, 8(sp)
  ADD a0, s0, zero
  CALL inorder
  LA s0, LF
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putch
  CALL getint
  ADD s0, a0, zero
  SW s0, 16(sp)
  SW zero, 0(sp)
  JAL zero, bb54
bb54:
  LW s0, 0(sp)
  LW s1, 16(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb55
  JAL zero, bb56
bb55:
  LW s0, 8(sp)
  CALL getint
  ADD s1, a0, zero
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL delete
  ADD s0, a0, zero
  SW s0, 8(sp)
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb54
bb56:
  LW s0, 8(sp)
  ADD a0, s0, zero
  CALL inorder
  LA s0, LF
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putch
  ADD a0, zero, zero
  LD s2, 24(sp)
  LD ra, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
inorder:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  SW s0, 0(sp)
  ADDI s1, zero, 1
  SUB s2, zero, s1
  XOR s1, s0, s2
  SLTU s0, zero, s1
  BNE s0, zero, bb58
  JAL zero, bb59
bb58:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, left_child
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL inorder
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, value
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  LA s0, space
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putch
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, right_child
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL inorder
  JAL zero, bb59
bb59:
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
