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
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  XORI a0, s0, -1
  SLTIU a0, a0, 1
  BNE a0, zero, bb5
  # implict jump to bb1
bb1:
  SLLIW a0, s0, 2
  LA s1, value
  ADD s1, s1, a0
  LW s1, 0(s1)
  BLT s1, a1, bb4
  # implict jump to bb2
bb2:
  LA s1, left_child
  ADD s1, s1, a0
  LW a0, 0(s1)
  CALL insert
  SW a0, 0(s1)
  # implict jump to bb3
bb3:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb4:
  LA s1, right_child
  ADD s1, s1, a0
  LW a0, 0(s1)
  CALL insert
  SW a0, 0(s1)
  JAL zero, bb3
bb5:
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
delete:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s0, a0, zero
  XORI a0, s0, -1
  SLTIU a0, a0, 1
  BNE a0, zero, bb31
  # implict jump to bb7
bb7:
  SLLIW s2, s0, 2
  LA a0, value
  ADD s1, a0, s2
  LW a0, 0(s1)
  BLT a0, a1, bb30
  # implict jump to bb8
bb8:
  BLT a1, a0, bb29
  # implict jump to bb9
bb9:
  LA a0, left_child
  ADD a0, a0, s2
  LW a0, 0(a0)
  XORI a1, a0, -1
  SLTIU s3, a1, 1
  BNE s3, zero, bb28
  # implict jump to bb10
bb10:
  ADD a1, zero, zero
  # implict jump to bb11
bb11:
  BNE a1, zero, bb27
  # implict jump to bb12
bb12:
  BNE s3, zero, bb26
  # implict jump to bb13
bb13:
  LA a1, right_child
  ADD a1, a1, s2
  LW a1, 0(a1)
  XORI a1, a1, -1
  SLTIU a1, a1, 1
  # implict jump to bb14
bb14:
  BNE a1, zero, bb23
  # implict jump to bb15
bb15:
  LA a0, right_child
  ADD s2, a0, s2
  LW a0, 0(s2)
  # implict jump to bb16
bb16:
  XORI a1, a0, -1
  SLTIU a1, a1, 1
  BNE a1, zero, bb22
  # implict jump to bb17
bb17:
  SLLIW a1, a0, 2
  LA s3, left_child
  ADD a1, s3, a1
  LW a1, 0(a1)
  XORI s3, a1, -1
  BNE s3, zero, bb21
  # implict jump to bb18
bb18:
  # implict jump to bb19
bb19:
  SLLIW a0, a0, 2
  LA a1, value
  ADD a1, a1, a0
  LW a0, 0(a1)
  SW a0, 0(s1)
  LW a0, 0(s2)
  LW a1, 0(a1)
  CALL delete
  SW a0, 0(s2)
  # implict jump to bb20
bb20:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb21:
  ADD a0, a1, zero
  JAL zero, bb16
bb22:
  ADDI a0, zero, -1
  JAL zero, bb19
bb23:
  BNE s3, zero, bb25
  # implict jump to bb24
bb24:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb25:
  LA t0, right_child
  ADD t0, t0, s2
  LW a0, 0(t0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb26:
  ADDI a1, zero, 1
  JAL zero, bb14
bb27:
  ADDI a0, zero, -1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb28:
  LA a1, right_child
  ADD a1, a1, s2
  LW a1, 0(a1)
  XORI a1, a1, -1
  SLTIU a1, a1, 1
  JAL zero, bb11
bb29:
  LA a0, left_child
  ADD s1, a0, s2
  LW a0, 0(s1)
  CALL delete
  SW a0, 0(s1)
  JAL zero, bb20
bb30:
  LA a0, right_child
  ADD s1, a0, s2
  LW a0, 0(s1)
  CALL delete
  SW a0, 0(s1)
  JAL zero, bb20
bb31:
  ADDI a0, zero, -1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
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
bb33:
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
bb34:
  ADD a0, s0, zero
  CALL inorder
  ADDI a0, zero, 10
  CALL putch
  CALL getint
  ADD s2, a0, zero
  BLT zero, s2, bb37
  # implict jump to bb35
bb35:
  ADD a0, s0, zero
  # implict jump to bb36
bb36:
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
bb37:
  ADD s1, zero, zero
  # implict jump to bb38
bb38:
  CALL getint
  ADD a1, a0, zero
  ADD a0, s0, zero
  CALL delete
  ADD s0, a0, zero
  ADDIW s1, s1, 1
  BLT s1, s2, bb40
  # implict jump to bb39
bb39:
  ADD a0, s0, zero
  JAL zero, bb36
bb40:
  JAL zero, bb38
bb41:
  ADDI s1, zero, 1
  # implict jump to bb42
bb42:
  CALL getint
  ADD a1, a0, zero
  ADD a0, s0, zero
  CALL insert
  ADDIW s1, s1, 1
  BLT s1, s2, bb43
  JAL zero, bb34
bb43:
  JAL zero, bb42
bb44:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
inorder:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  XORI s0, a0, -1
  BNE s0, zero, bb47
  # implict jump to bb46
bb46:
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb47:
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
