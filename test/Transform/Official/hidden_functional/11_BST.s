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
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  XORI s2, s0, -1
  SLTIU s2, s2, 1
  BNE s2, zero, bb5
  # implict jump to bb1
bb1:
  SLLIW s2, s0, 2
  LA s3, value
  ADD s3, s3, s2
  LW s3, 0(s3)
  BLT s3, s1, bb4
  # implict jump to bb2
bb2:
  LA s3, left_child
  ADD s3, s3, s2
  LW s4, 0(s3)
  ADD a0, s4, zero
  ADD a1, s1, zero
  CALL insert
  ADD s4, a0, zero
  SW s4, 0(s3)
  # implict jump to bb3
bb3:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb4:
  LA s3, right_child
  ADD s2, s3, s2
  LW s3, 0(s2)
  ADD a0, s3, zero
  ADD a1, s1, zero
  CALL insert
  ADD s3, a0, zero
  SW s3, 0(s2)
  JAL zero, bb3
bb5:
  LA s0, now
  LW s0, 0(s0)
  SLLIW s2, s0, 2
  LA s3, value
  ADD s3, s3, s2
  SW s1, 0(s3)
  LA s1, left_child
  ADD s1, s1, s2
  ADDI s3, zero, -1
  SW s3, 0(s1)
  LA s1, right_child
  ADD s1, s1, s2
  ADDI s2, zero, -1
  SW s2, 0(s1)
  ADDIW s1, s0, 1
  LA s2, now
  SW s1, 0(s2)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
new_node:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s0, a0, zero
  LA s1, now
  LW s1, 0(s1)
  SLLIW s2, s1, 2
  LA s3, value
  ADD s3, s3, s2
  SW s0, 0(s3)
  LA s0, left_child
  ADD s0, s0, s2
  ADDI s3, zero, -1
  SW s3, 0(s0)
  LA s0, right_child
  ADD s0, s0, s2
  ADDI s2, zero, -1
  SW s2, 0(s0)
  ADDIW s0, s1, 1
  LA s2, now
  SW s0, 0(s2)
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
delete:
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
  ADD s1, a1, zero
  XORI s2, s0, -1
  SLTIU s2, s2, 1
  BNE s2, zero, bb26
  # implict jump to bb8
bb8:
  SLLIW s2, s0, 2
  LA s3, value
  ADD s3, s3, s2
  LW s4, 0(s3)
  BLT s4, s1, bb25
  # implict jump to bb9
bb9:
  BLT s1, s4, bb24
  # implict jump to bb10
bb10:
  LA s4, left_child
  ADD s4, s4, s2
  LW s4, 0(s4)
  XORI s5, s4, -1
  SLTIU s5, s5, 1
  BNE s5, zero, bb23
  # implict jump to bb11
bb11:
  ADD s6, zero, zero
  # implict jump to bb12
bb12:
  BNE s6, zero, bb22
  # implict jump to bb13
bb13:
  BNE s5, zero, bb21
  # implict jump to bb14
bb14:
  LA s6, right_child
  ADD s6, s6, s2
  LW s6, 0(s6)
  XORI s6, s6, -1
  SLTIU s6, s6, 1
  # implict jump to bb15
bb15:
  BNE s6, zero, bb18
  # implict jump to bb16
bb16:
  LA s6, right_child
  ADD s6, s6, s2
  LW s7, 0(s6)
  ADD a0, s7, zero
  CALL find_minimum
  ADD s7, a0, zero
  SLLIW s7, s7, 2
  LA s8, value
  ADD s7, s8, s7
  LW s8, 0(s7)
  SW s8, 0(s3)
  LW s3, 0(s6)
  LW s7, 0(s7)
  ADD a0, s3, zero
  ADD a1, s7, zero
  CALL delete
  ADD s3, a0, zero
  SW s3, 0(s6)
  # implict jump to bb17
bb17:
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
bb18:
  BNE s5, zero, bb20
  # implict jump to bb19
bb19:
  ADD a0, s4, zero
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
bb20:
  LA s3, right_child
  ADD s3, s3, s2
  LW s3, 0(s3)
  ADD a0, s3, zero
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
bb21:
  ADDI s6, zero, 1
  JAL zero, bb15
bb22:
  ADDI a0, zero, -1
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
bb23:
  LA s7, right_child
  ADD s7, s7, s2
  LW s7, 0(s7)
  XORI s7, s7, -1
  SLTIU s7, s7, 1
  ADD s6, s7, zero
  JAL zero, bb12
bb24:
  LA s3, left_child
  ADD s3, s3, s2
  LW s4, 0(s3)
  ADD a0, s4, zero
  ADD a1, s1, zero
  CALL delete
  ADD s4, a0, zero
  SW s4, 0(s3)
  JAL zero, bb17
bb25:
  LA s3, right_child
  ADD s2, s3, s2
  LW s3, 0(s2)
  ADD a0, s3, zero
  ADD a1, s1, zero
  CALL delete
  ADD s1, a0, zero
  SW s1, 0(s2)
  JAL zero, bb17
bb26:
  ADDI a0, zero, -1
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
find_minimum:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s0, a0, zero
  XORI s1, s0, -1
  SLTIU s1, s1, 1
  BNE s1, zero, bb31
  # implict jump to bb28
bb28:
  SLLIW s1, s0, 2
  LA s2, left_child
  ADD s1, s2, s1
  LW s2, 0(s1)
  XORI s2, s2, -1
  BNE s2, zero, bb30
  # implict jump to bb29
bb29:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb30:
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL find_minimum
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb31:
  ADDI a0, zero, -1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
search:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  XORI s2, s0, -1
  SLTIU s2, s2, 1
  BNE s2, zero, bb39
  # implict jump to bb33
bb33:
  SLLIW s2, s0, 2
  LA s3, value
  ADD s2, s3, s2
  LW s2, 0(s2)
  XOR s2, s2, s1
  SLTIU s2, s2, 1
  # implict jump to bb34
bb34:
  BNE s2, zero, bb38
  # implict jump to bb35
bb35:
  SLLIW s2, s0, 2
  LA s3, value
  ADD s3, s3, s2
  LW s3, 0(s3)
  BLT s3, s1, bb37
  # implict jump to bb36
bb36:
  LA s3, left_child
  ADD s3, s3, s2
  LW s3, 0(s3)
  ADD a0, s3, zero
  ADD a1, s1, zero
  CALL search
  ADD s3, a0, zero
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb37:
  LA s3, right_child
  ADD s2, s3, s2
  LW s2, 0(s2)
  ADD a0, s2, zero
  ADD a1, s1, zero
  CALL search
  ADD s1, a0, zero
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb38:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb39:
  ADDI s2, zero, 1
  JAL zero, bb34
main:
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
  LA s0, now
  ADDI s1, zero, 0
  SW s1, 0(s0)
  CALL getint
  ADD s0, a0, zero
  SLTU s1, zero, s0
  XORI s1, s1, 1
  BNE s1, zero, bb48
  # implict jump to bb41
bb41:
  CALL getint
  ADD s1, a0, zero
  LA s2, now
  LW s2, 0(s2)
  SLLIW s3, s2, 2
  LA s4, value
  ADD s4, s4, s3
  SW s1, 0(s4)
  LA s1, left_child
  ADD s1, s1, s3
  ADDI s4, zero, -1
  SW s4, 0(s1)
  LA s1, right_child
  ADD s1, s1, s3
  ADDI s3, zero, -1
  SW s3, 0(s1)
  ADDIW s1, s2, 1
  LA s3, now
  SW s1, 0(s3)
  ADDI s1, zero, 1
  # implict jump to bb42
bb42:
  ADD s3, s1, zero
  BLT s3, s0, bb47
  # implict jump to bb43
bb43:
  ADD a0, s2, zero
  CALL inorder
  ADDI a0, zero, 10
  CALL putch
  CALL getint
  ADD s4, a0, zero
  ADD s5, zero, zero
  ADD s6, s2, zero
  # implict jump to bb44
bb44:
  ADD s7, s6, zero
  ADD s8, s5, zero
  BLT s8, s4, bb46
  # implict jump to bb45
bb45:
  ADD a0, s7, zero
  CALL inorder
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
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
bb46:
  CALL getint
  ADD s9, a0, zero
  ADD a0, s7, zero
  ADD a1, s9, zero
  CALL delete
  ADD s7, a0, zero
  ADDIW s8, s8, 1
  ADD s5, s8, zero
  ADD s6, s7, zero
  JAL zero, bb44
bb47:
  CALL getint
  ADD s4, a0, zero
  ADD a0, s2, zero
  ADD a1, s4, zero
  CALL insert
  ADDIW s3, s3, 1
  ADD s1, s3, zero
  JAL zero, bb42
bb48:
  ADD a0, zero, zero
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
inorder:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  XORI s1, s0, -1
  BNE s1, zero, bb51
  # implict jump to bb50
bb50:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb51:
  SLLIW s0, s0, 2
  LA s1, left_child
  ADD s1, s1, s0
  LW s1, 0(s1)
  ADD a0, s1, zero
  CALL inorder
  LA s1, value
  ADD s1, s1, s0
  LW s1, 0(s1)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LA s1, right_child
  ADD s0, s1, s0
  LW s0, 0(s0)
  ADD a0, s0, zero
  CALL inorder
  JAL zero, bb50
