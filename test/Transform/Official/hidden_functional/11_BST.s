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
  SLLIW a0, s0, 2
  LA s1, value
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
  LW a0, 0(t0)
  SLLIW t0, a0, 2
  LA t1, value
  ADD t1, t1, t0
  SW a1, 0(t1)
  LA t1, left_child
  ADD t1, t1, t0
  ADDI t2, zero, -1
  SW t2, 0(t1)
  LA t1, right_child
  ADD t0, t1, t0
  ADDI t1, zero, -1
  SW t1, 0(t0)
  ADDIW t0, a0, 1
  LA t1, now
  SW t0, 0(t1)
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
  SLLIW a0, s1, 2
  LA s0, value
  ADD s2, s0, a0
  LW s3, 0(s2)
  LA s0, right_child
  ADD s0, s0, a0
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
  SLLIW a1, a0, 2
  LA s3, left_child
  ADD a1, s3, a1
  LW a1, 0(a1)
  XORI s3, a1, -1
  BNE s3, zero, bb21
  # implict jump to bb18
bb18:   # loop depth 0
  # implict jump to bb19
bb19:   # loop depth 0
  SLLIW a0, a0, 2
  LA a1, value
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
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  LA s0, now
  ADDI s1, zero, 0
  SW s1, 0(s0)
  CALL getint
  ADD s2, a0, zero
  SLTU s0, zero, s2
  XORI s0, s0, 1
  BNE s0, zero, bb44
  # implict jump to bb33
bb33:   # loop depth 0
  CALL getint
  ADD s1, a0, zero
  LA s0, now
  LW s0, 0(s0)
  SLLIW s3, s0, 2
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
  ADDIW s1, s0, 1
  LA s3, now
  SW s1, 0(s3)
  ADDI s1, zero, 1
  BLT s1, s2, bb41
  # implict jump to bb34
bb34:   # loop depth 0
  ADD a0, s0, zero
  CALL inorder
  ADDI a0, zero, 10
  CALL putch
  CALL getint
  ADD s2, a0, zero
  BLT zero, s2, bb37
  # implict jump to bb35
bb35:   # loop depth 0
  ADD a0, s0, zero
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
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb37:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb38
bb38:   # loop depth 1
  CALL getint
  ADD a1, a0, zero
  ADD a0, s0, zero
  CALL delete
  ADD s0, a0, zero
  ADDIW s1, s1, 1
  BLT s1, s2, bb40
  # implict jump to bb39
bb39:   # loop depth 0
  ADD a0, s0, zero
  JAL zero, bb36
bb40:   # loop depth 0
  JAL zero, bb38
bb41:   # loop depth 0
  ADDI s1, zero, 1
  # implict jump to bb42
bb42:   # loop depth 1
  CALL getint
  ADD a1, a0, zero
  ADD a0, s0, zero
  CALL insert
  ADDIW s1, s1, 1
  BLT s1, s2, bb43
  JAL zero, bb34
bb43:   # loop depth 1433747520
  JAL zero, bb42
bb44:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
inorder:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  XORI s0, a0, -1
  BNE s0, zero, bb47
  # implict jump to bb46
bb46:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb47:   # loop depth 0
  SLLIW s0, a0, 2
  LA a0, left_child
  ADD a0, a0, s0
  LW a0, 0(a0)
  CALL inorder
  LA a0, value
  ADD a0, a0, s0
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LA a0, right_child
  ADD a0, a0, s0
  LW a0, 0(a0)
  CALL inorder
  JAL zero, bb46
