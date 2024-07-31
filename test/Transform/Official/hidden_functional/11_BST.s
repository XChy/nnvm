.global insert
.global delete
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
delete:
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
  SD s10, 88(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  XORI s2, s0, -1
  SLTIU s2, s2, 1
  BNE s2, zero, bb31
  # implict jump to bb7
bb7:
  SLLIW s2, s0, 2
  LA s3, value
  ADD s3, s3, s2
  LW s4, 0(s3)
  BLT s4, s1, bb30
  # implict jump to bb8
bb8:
  BLT s1, s4, bb29
  # implict jump to bb9
bb9:
  LA s4, left_child
  ADD s4, s4, s2
  LW s4, 0(s4)
  XORI s5, s4, -1
  SLTIU s5, s5, 1
  BNE s5, zero, bb28
  # implict jump to bb10
bb10:
  ADD s6, zero, zero
  # implict jump to bb11
bb11:
  BNE s6, zero, bb27
  # implict jump to bb12
bb12:
  BNE s5, zero, bb26
  # implict jump to bb13
bb13:
  LA s6, right_child
  ADD s6, s6, s2
  LW s6, 0(s6)
  XORI s6, s6, -1
  SLTIU s6, s6, 1
  # implict jump to bb14
bb14:
  BNE s6, zero, bb23
  # implict jump to bb15
bb15:
  LA s6, right_child
  ADD s6, s6, s2
  LW s7, 0(s6)
  # implict jump to bb16
bb16:
  ADD s8, s7, zero
  XORI s9, s8, -1
  SLTIU s9, s9, 1
  BNE s9, zero, bb22
  # implict jump to bb17
bb17:
  SLLIW s9, s8, 2
  LA s10, left_child
  ADD s9, s10, s9
  LW s9, 0(s9)
  XORI s10, s9, -1
  BNE s10, zero, bb21
  # implict jump to bb18
bb18:
  # implict jump to bb19
bb19:
  SLLIW s7, s8, 2
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
  # implict jump to bb20
bb20:
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
  LD s9, 80(sp)
  LD s10, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb21:
  ADD s7, s9, zero
  JAL zero, bb16
bb22:
  ADDI s8, zero, -1
  JAL zero, bb19
bb23:
  BNE s5, zero, bb25
  # implict jump to bb24
bb24:
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
  LD s9, 80(sp)
  LD s10, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb25:
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
  LD s9, 80(sp)
  LD s10, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb26:
  ADDI s6, zero, 1
  JAL zero, bb14
bb27:
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
  LD s9, 80(sp)
  LD s10, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb28:
  LA s7, right_child
  ADD s7, s7, s2
  LW s7, 0(s7)
  XORI s7, s7, -1
  SLTIU s7, s7, 1
  ADD s6, s7, zero
  JAL zero, bb11
bb29:
  LA s3, left_child
  ADD s3, s3, s2
  LW s4, 0(s3)
  ADD a0, s4, zero
  ADD a1, s1, zero
  CALL delete
  ADD s4, a0, zero
  SW s4, 0(s3)
  JAL zero, bb20
bb30:
  LA s3, right_child
  ADD s2, s3, s2
  LW s3, 0(s2)
  ADD a0, s3, zero
  ADD a1, s1, zero
  CALL delete
  ADD s1, a0, zero
  SW s1, 0(s2)
  JAL zero, bb20
bb31:
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
  LD s9, 80(sp)
  LD s10, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s3, 16(sp)
  SD s4, 24(sp)
  SD s8, 32(sp)
  SD s9, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s10, 88(sp)
  LA s0, now
  ADDI s1, zero, 0
  SW s1, 0(s0)
  CALL getint
  ADD s0, a0, zero
  SLTU s1, zero, s0
  XORI s1, s1, 1
  BNE s1, zero, bb44
  # implict jump to bb33
bb33:
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
  BLT s1, s0, bb41
  # implict jump to bb34
bb34:
  ADD a0, s2, zero
  CALL inorder
  ADDI a0, zero, 10
  CALL putch
  CALL getint
  ADD s4, a0, zero
  BLT zero, s4, bb37
  # implict jump to bb35
bb35:
  ADD s5, s2, zero
  # implict jump to bb36
bb36:
  ADD a0, s5, zero
  CALL inorder
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s3, 16(sp)
  LD s4, 24(sp)
  LD s8, 32(sp)
  LD s9, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s10, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb37:
  ADD s6, s2, zero
  ADD s7, zero, zero
  # implict jump to bb38
bb38:
  ADD s8, s7, zero
  ADD s9, s6, zero
  CALL getint
  ADD s10, a0, zero
  ADD a0, s9, zero
  ADD a1, s10, zero
  CALL delete
  ADD s9, a0, zero
  ADDIW s8, s8, 1
  BLT s8, s4, bb40
  # implict jump to bb39
bb39:
  ADD s5, s9, zero
  JAL zero, bb36
bb40:
  ADD s6, s9, zero
  ADD s7, s8, zero
  JAL zero, bb38
bb41:
  ADDI s1, zero, 1
  # implict jump to bb42
bb42:
  ADD s3, s1, zero
  CALL getint
  ADD s4, a0, zero
  ADD a0, s2, zero
  ADD a1, s4, zero
  CALL insert
  ADDIW s3, s3, 1
  BLT s3, s0, bb43
  JAL zero, bb34
bb43:
  ADD s1, s3, zero
  JAL zero, bb42
bb44:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s3, 16(sp)
  LD s4, 24(sp)
  LD s8, 32(sp)
  LD s9, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s10, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
inorder:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  XORI s1, s0, -1
  BNE s1, zero, bb47
  # implict jump to bb46
bb46:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb47:
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
  JAL zero, bb46
