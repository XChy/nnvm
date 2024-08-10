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
insert:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  XORI a0, s0, -1
  SLTIU a0, a0, 1
  BNE a0, zero, bb5
  # implict jump to bb1
bb1:   # loop depth 0
  LA s1, value
  SLLIW a0, s0, 2
  ADD s1, s1, a0
  LW s1, 0(s1)
  BLT s1, a1, bb4
  # implict jump to bb2
bb2:   # loop depth 0
  LA s1, left_child
  ADD s1, s1, a0
  LW a0, 0(s1)
  CALL insert
  SW a0, 0(s1)
  # implict jump to bb3
bb3:   # loop depth 0
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb4:   # loop depth 0
  LA s1, right_child
  ADD s1, s1, a0
  LW a0, 0(s1)
  CALL insert
  SW a0, 0(s1)
  JAL zero, bb3
bb5:   # loop depth 0
  LA t0, now
  LA t1, value
  LA t2, left_child
  LA a4, right_child
  LW a0, 0(t0)
  ADDI a3, zero, -1
  LA a6, now
  ADDI a5, zero, -1
  SLLIW t0, a0, 2
  ADDIW a2, a0, 1
  ADD t1, t1, t0
  ADD t2, t2, t0
  SW a1, 0(t1)
  ADD t0, a4, t0
  SW a3, 0(t2)
  SW a5, 0(t0)
  SW a2, 0(a6)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
delete:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  ADD s1, a0, zero
  XORI a0, s1, -1
  SLTIU a0, a0, 1
  BNE a0, zero, bb31
  # implict jump to bb7
bb7:   # loop depth 0
  LA s0, value
  SLLIW a0, s1, 2
  LA s4, right_child
  ADD s2, s0, a0
  LW s3, 0(s2)
  ADD s0, s4, a0
  BLT s3, a1, bb30
  # implict jump to bb8
bb8:   # loop depth 0
  LA s4, left_child
  ADD s4, s4, a0
  BLT a1, s3, bb29
  # implict jump to bb9
bb9:   # loop depth 0
  LW a0, 0(s4)
  XORI a1, a0, -1
  SLTIU s3, a1, 1
  BNE s3, zero, bb28
  # implict jump to bb10
bb10:   # loop depth 0
  ADD a1, zero, zero
  # implict jump to bb11
bb11:   # loop depth 0
  BNE a1, zero, bb27
  # implict jump to bb12
bb12:   # loop depth 0
  BNE s3, zero, bb26
  # implict jump to bb13
bb13:   # loop depth 0
  LW a1, 0(s0)
  XORI a1, a1, -1
  SLTIU a1, a1, 1
  # implict jump to bb14
bb14:   # loop depth 0
  BNE a1, zero, bb23
  # implict jump to bb15
bb15:   # loop depth 0
  LW a0, 0(s0)
  # implict jump to bb16
bb16:   # loop depth 1
  XORI a1, a0, -1
  SLTIU a1, a1, 1
  BNE a1, zero, bb22
  # implict jump to bb17
bb17:   # loop depth 1
  LA s3, left_child
  SLLIW a1, a0, 2
  ADD a1, s3, a1
  LW a1, 0(a1)
  XORI s3, a1, -1
  BNE s3, zero, bb21
  # implict jump to bb18
bb18:   # loop depth 0
  # implict jump to bb19
bb19:   # loop depth 0
  LA a1, value
  SLLIW a0, a0, 2
  ADD a1, a1, a0
  LW a0, 0(a1)
  SW a0, 0(s2)
  LW a0, 0(s0)
  LW a1, 0(a1)
  CALL delete
  SW a0, 0(s0)
  # implict jump to bb20
bb20:   # loop depth 0
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb21:   # loop depth 1
  ADD a0, a1, zero
  JAL zero, bb16
bb22:   # loop depth 0
  ADDI a0, zero, -1
  JAL zero, bb19
bb23:   # loop depth 0
  BNE s3, zero, bb25
  # implict jump to bb24
bb24:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb25:   # loop depth 0
  LW a0, 0(s0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb26:   # loop depth 0
  ADDI a1, zero, 1
  JAL zero, bb14
bb27:   # loop depth 0
  ADDI a0, zero, -1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb28:   # loop depth 0
  LW a1, 0(s0)
  XORI a1, a1, -1
  SLTIU a1, a1, 1
  JAL zero, bb11
bb29:   # loop depth 0
  LW a0, 0(s4)
  CALL delete
  SW a0, 0(s4)
  JAL zero, bb20
bb30:   # loop depth 0
  LW a0, 0(s0)
  CALL delete
  SW a0, 0(s0)
  JAL zero, bb20
bb31:   # loop depth 0
  ADDI a0, zero, -1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:   # loop depth 0
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
  LA s0, now
  ADDI s1, zero, 0
  SW s1, 0(s0)
  CALL getint
  ADD s0, a0, zero
  SLTU s1, zero, s0
  XORI s1, s1, 1
  BNE s1, zero, bb44
  # implict jump to bb33
bb33:   # loop depth 0
  LA s1, now
  CALL getint
  LA s4, value
  LA s5, left_child
  LW s2, 0(s1)
  LA s8, right_child
  ADD s1, a0, zero
  ADDI s7, zero, -1
  LA s10, now
  ADDI s9, zero, -1
  SLLIW s3, s2, 2
  ADDIW s6, s2, 1
  ADD s4, s4, s3
  ADD s5, s5, s3
  SW s1, 0(s4)
  ADD s1, s8, s3
  SW s7, 0(s5)
  ADDI s3, zero, 1
  SW s9, 0(s1)
  SW s6, 0(s10)
  BLT s3, s0, bb41
  # implict jump to bb34
bb34:   # loop depth 0
  ADD a0, s2, zero
  CALL inorder
  ADDI a0, zero, 10
  CALL putch
  CALL getint
  ADD s3, a0, zero
  BLT zero, s3, bb37
  # implict jump to bb35
bb35:   # loop depth 0
  ADD a0, s2, zero
  # implict jump to bb36
bb36:   # loop depth 0
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
  LD s10, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb37:   # loop depth 0
  ADD s1, zero, zero
  ADD s0, s2, zero
  # implict jump to bb38
bb38:   # loop depth 1
  CALL getint
  ADDIW s1, s1, 1
  ADD a1, a0, zero
  ADD a0, s0, zero
  CALL delete
  ADD s0, a0, zero
  BLT s1, s3, bb40
  # implict jump to bb39
bb39:   # loop depth 0
  ADD a0, s0, zero
  JAL zero, bb36
bb40:   # loop depth 1
  JAL zero, bb38
bb41:   # loop depth 0
  ADDI s1, zero, 1
  # implict jump to bb42
bb42:   # loop depth 1
  CALL getint
  ADDIW s1, s1, 1
  ADD a1, a0, zero
  ADD a0, s2, zero
  CALL insert
  BLT s1, s0, bb43
  JAL zero, bb34
bb43:   # loop depth 1
  JAL zero, bb42
bb44:   # loop depth 0
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
  LD s10, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
inorder:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  XORI s0, a0, -1
  BNE s0, zero, bb47
  # implict jump to bb46
bb46:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb47:   # loop depth 0
  LA s1, left_child
  SLLIW s0, a0, 2
  LA s2, value
  LA s3, right_child
  ADD a0, s1, s0
  LW a0, 0(a0)
  ADD s1, s2, s0
  ADD s0, s3, s0
  CALL inorder
  LW a0, 0(s1)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW a0, 0(s0)
  CALL inorder
  JAL zero, bb46
