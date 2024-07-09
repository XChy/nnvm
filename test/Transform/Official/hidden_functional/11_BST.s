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
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  XORI s2, s0, -1
  SLTIU s3, s2, 1
  BNE s3, zero, bb1
  JAL zero, bb4
bb1:
  LA s2, now
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  LA s2, value
  ADD s3, s2, s4
  SW s1, 0(s3)
  LA s2, now
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  LA s2, left_child
  ADD s3, s2, s4
  ADDI s2, zero, -1
  SW s2, 0(s3)
  LA s2, now
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  LA s2, right_child
  ADD s3, s2, s4
  ADDI s2, zero, -1
  SW s2, 0(s3)
  LA s2, now
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, now
  SW s2, 0(s3)
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  ADD s2, s4, zero
  JAL zero, bb2
bb2:
  ADD s3, s2, zero
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb3:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb4:
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, value
  ADD s4, s2, s3
  LW s2, 0(s4)
  SLT s4, s2, s1
  BNE s4, zero, bb5
  JAL zero, bb7
bb5:
  LA s2, right_child
  ADD s4, s2, s3
  LW s2, 0(s4)
  ADD a0, s2, zero
  ADD a1, s1, zero
  CALL insert
  ADD s2, a0, zero
  SW s2, 0(s4)
  JAL zero, bb6
bb6:
  JAL zero, bb3
bb7:
  LA s2, left_child
  ADD s4, s2, s3
  LW s2, 0(s4)
  ADD a0, s2, zero
  ADD a1, s1, zero
  CALL insert
  ADD s1, a0, zero
  SW s1, 0(s4)
  JAL zero, bb6
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
  ADDI s0, zero, -1
  SW s0, 0(s1)
  LA s0, now
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, right_child
  ADD s1, s0, s2
  ADDI s0, zero, -1
  SW s0, 0(s1)
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
  SD s9, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s7, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s8, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD ra, 72(sp)
  SD s4, 80(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  XORI s2, s0, -1
  SLTIU s3, s2, 1
  BNE s3, zero, bb10
  JAL zero, bb11
bb10:
  ADDI a0, zero, -1
  LD s9, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s8, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD ra, 72(sp)
  LD s4, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb11:
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, value
  ADD s4, s2, s3
  LW s2, 0(s4)
  SLT s5, s2, s1
  BNE s5, zero, bb12
  JAL zero, bb14
bb12:
  LA s2, right_child
  ADD s5, s2, s3
  LW s2, 0(s5)
  ADD a0, s2, zero
  ADD a1, s1, zero
  CALL delete
  ADD s2, a0, zero
  SW s2, 0(s5)
  JAL zero, bb13
bb13:
  ADD a0, s0, zero
  LD s9, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s8, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD ra, 72(sp)
  LD s4, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb14:
  LW s2, 0(s4)
  SLT s5, s1, s2
  BNE s5, zero, bb15
  JAL zero, bb17
bb15:
  LA s2, left_child
  ADD s5, s2, s3
  LW s2, 0(s5)
  ADD a0, s2, zero
  ADD a1, s1, zero
  CALL delete
  ADD s1, a0, zero
  SW s1, 0(s5)
  JAL zero, bb16
bb16:
  JAL zero, bb13
bb17:
  LA s1, left_child
  ADD s2, s1, s3
  LW s1, 0(s2)
  XORI s5, s1, -1
  SLTIU s1, s5, 1
  BNE s1, zero, bb18
  JAL zero, bb19
bb18:
  LA s1, right_child
  ADD s5, s1, s3
  LW s1, 0(s5)
  XORI s5, s1, -1
  SLTIU s1, s5, 1
  ADD s5, s1, zero
  JAL zero, bb20
bb19:
  ADD s5, zero, zero
  JAL zero, bb20
bb20:
  ADD s1, s5, zero
  BNE s1, zero, bb21
  JAL zero, bb22
bb21:
  ADDI a0, zero, -1
  LD s9, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s8, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD ra, 72(sp)
  LD s4, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb22:
  LW s1, 0(s2)
  XORI s6, s1, -1
  SLTIU s1, s6, 1
  BNE s1, zero, bb23
  JAL zero, bb24
bb23:
  ADDI s1, zero, 1
  JAL zero, bb25
bb24:
  LA s6, right_child
  ADD s7, s6, s3
  LW s6, 0(s7)
  XORI s7, s6, -1
  SLTIU s6, s7, 1
  ADD s1, s6, zero
  JAL zero, bb25
bb25:
  ADD s6, s1, zero
  BNE s6, zero, bb26
  JAL zero, bb27
bb26:
  LW s6, 0(s2)
  XORI s7, s6, -1
  SLTIU s6, s7, 1
  BNE s6, zero, bb28
  JAL zero, bb29
bb27:
  LA s6, right_child
  ADD s7, s6, s3
  LW s6, 0(s7)
  ADD a0, s6, zero
  CALL find_minimum
  ADD s6, a0, zero
  ADDI s8, zero, 4
  MULW s9, s6, s8
  LA s6, value
  ADD s8, s6, s9
  LW s6, 0(s8)
  SW s6, 0(s4)
  LW s6, 0(s7)
  LW s9, 0(s8)
  ADD a0, s6, zero
  ADD a1, s9, zero
  CALL delete
  ADD s6, a0, zero
  SW s6, 0(s7)
  JAL zero, bb16
bb28:
  LA s6, right_child
  ADD s7, s6, s3
  LW s6, 0(s7)
  ADD a0, s6, zero
  LD s9, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s8, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD ra, 72(sp)
  LD s4, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb29:
  LW s6, 0(s2)
  ADD a0, s6, zero
  LD s9, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s8, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD ra, 72(sp)
  LD s4, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
find_minimum:
  ADDI sp, sp, -48
  SD s3, 0(sp)
  SD ra, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  XORI s1, s0, -1
  SLTIU s2, s1, 1
  BNE s2, zero, bb31
  JAL zero, bb33
bb31:
  ADDI a0, zero, -1
  LD s3, 0(sp)
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb32:
  ADD a0, s0, zero
  LD s3, 0(sp)
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb33:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, left_child
  ADD s3, s1, s2
  LW s1, 0(s3)
  XORI s2, s1, -1
  SLTU s1, zero, s2
  BNE s1, zero, bb34
  JAL zero, bb35
bb34:
  LW s1, 0(s3)
  ADD a0, s1, zero
  CALL find_minimum
  ADD s1, a0, zero
  ADD a0, s1, zero
  LD s3, 0(sp)
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb35:
  JAL zero, bb32
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
  XORI s2, s0, -1
  SLTIU s3, s2, 1
  BNE s3, zero, bb37
  JAL zero, bb38
bb37:
  ADDI s2, zero, 1
  JAL zero, bb39
bb38:
  ADDI s3, zero, 4
  MULW s4, s0, s3
  LA s3, value
  ADD s5, s3, s4
  LW s3, 0(s5)
  XOR s4, s3, s1
  SLTIU s3, s4, 1
  ADD s2, s3, zero
  JAL zero, bb39
bb39:
  ADD s3, s2, zero
  BNE s3, zero, bb40
  JAL zero, bb41
bb40:
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
bb41:
  ADDI s3, zero, 4
  MULW s4, s0, s3
  LA s3, value
  ADD s5, s3, s4
  LW s3, 0(s5)
  SLT s5, s3, s1
  BNE s5, zero, bb42
  JAL zero, bb43
bb42:
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
bb43:
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
  ADDI sp, sp, -64
  SD s4, 0(sp)
  SD s3, 8(sp)
  SD ra, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
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
  BNE s2, zero, bb45
  JAL zero, bb46
bb45:
  ADD a0, zero, zero
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb46:
  CALL getint
  ADD s1, a0, zero
  LA s2, now
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  LA s2, value
  ADD s3, s2, s4
  SW s1, 0(s3)
  LA s1, now
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  LA s1, left_child
  ADD s2, s1, s3
  ADDI s1, zero, -1
  SW s1, 0(s2)
  LA s1, now
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  LA s1, right_child
  ADD s2, s1, s3
  ADDI s1, zero, -1
  SW s1, 0(s2)
  LA s1, now
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, now
  SW s1, 0(s2)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADD s1, s3, zero
  JAL zero, bb47
bb47:
  ADD s2, s1, zero
  ADDI s1, zero, 1
  JAL zero, bb48
bb48:
  ADD s3, s1, zero
  SLT s4, s3, s0
  BNE s4, zero, bb49
  JAL zero, bb50
bb49:
  CALL getint
  ADD s4, a0, zero
  ADD a0, s2, zero
  ADD a1, s4, zero
  CALL insert
  ADD s4, a0, zero
  ADDIW s4, s3, 1
  ADD s1, s4, zero
  JAL zero, bb48
bb50:
  ADD a0, s2, zero
  CALL inorder
  ADDI a0, zero, 10
  CALL putch
  CALL getint
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s3, s2, zero
  JAL zero, bb51
bb51:
  ADD s2, s3, zero
  ADD s4, s1, zero
  SLT s5, s4, s0
  BNE s5, zero, bb52
  JAL zero, bb53
bb52:
  CALL getint
  ADD s5, a0, zero
  ADD a0, s2, zero
  ADD a1, s5, zero
  CALL delete
  ADD s5, a0, zero
  ADDIW s6, s4, 1
  ADD s1, s6, zero
  ADD s3, s5, zero
  JAL zero, bb51
bb53:
  ADD a0, s2, zero
  CALL inorder
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
inorder:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  XORI s1, s0, -1
  SLTU s2, zero, s1
  BNE s2, zero, bb55
  JAL zero, bb56
bb55:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, left_child
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL inorder
  LA s0, value
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LA s0, right_child
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL inorder
  JAL zero, bb56
bb56:
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
