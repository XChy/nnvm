.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
  BEQ a0, zero, bb5
  # implict jump to bb1
bb1:   # loop depth 0
  LA a0, value
  SH2ADD a0, s0, a0
  LW a0, 0(a0)
  BLT a0, a1, bb4
  # implict jump to bb2
bb2:   # loop depth 0
  LA a0, left_child
  SH2ADD s1, s0, a0
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
  LA a0, right_child
  SH2ADD s1, s0, a0
  LW a0, 0(s1)
  CALL insert
  SW a0, 0(s1)
  JAL zero, bb3
bb5:   # loop depth 0
  LA t0, now
  LA t1, value
  LA t2, left_child
  LA a3, right_child
  LW a0, 0(t0)
  ADDI a2, zero, -1
  LA a5, now
  ADDI a4, zero, -1
  SH2ADD t0, a0, t1
  SH2ADD t1, a0, t2
  SW a1, 0(t0)
  SH2ADD t0, a0, a3
  SW a2, 0(t1)
  ADDIW t1, a0, 1
  SW a4, 0(t0)
  SW t1, 0(a5)
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
  ADD s1, a0, zero
  XORI a0, s1, -1
  BEQ a0, zero, bb31
  # implict jump to bb7
bb7:   # loop depth 0
  LA a0, value
  LA s0, right_child
  SH2ADD s2, s1, a0
  SH2ADD s0, s1, s0
  LW a0, 0(s2)
  BLT a0, a1, bb30
  # implict jump to bb8
bb8:   # loop depth 0
  LA s3, left_child
  SH2ADD s3, s1, s3
  BLT a1, a0, bb29
  # implict jump to bb9
bb9:   # loop depth 0
  LW a0, 0(s3)
  XORI s3, a0, -1
  BEQ s3, zero, bb28
  # implict jump to bb10
bb10:   # loop depth 0
  ADD a1, zero, zero
  # implict jump to bb11
bb11:   # loop depth 0
  BNE a1, zero, bb27
  # implict jump to bb12
bb12:   # loop depth 0
  BEQ s3, zero, bb26
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
  BEQ a1, zero, bb22
  # implict jump to bb17
bb17:   # loop depth 1
  LA a1, left_child
  SH2ADD a1, a0, a1
  LW a1, 0(a1)
  XORI s3, a1, -1
  BNE s3, zero, bb21
  # implict jump to bb18
bb18:   # loop depth 0
  # implict jump to bb19
bb19:   # loop depth 0
  LA a1, value
  SH2ADD a1, a0, a1
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
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb21:   # loop depth 1
  ADD a0, a1, zero
  JAL zero, bb16
bb22:   # loop depth 0
  ADDI a0, zero, -1
  JAL zero, bb19
bb23:   # loop depth 0
  BEQ s3, zero, bb25
  # implict jump to bb24
bb24:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb25:   # loop depth 0
  LW a0, 0(s0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
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
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb28:   # loop depth 0
  LW a1, 0(s0)
  XORI a1, a1, -1
  SLTIU a1, a1, 1
  JAL zero, bb11
bb29:   # loop depth 0
  LW a0, 0(s3)
  CALL delete
  SW a0, 0(s3)
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
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:   # loop depth 0
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
  LA s0, now
  ADDI s1, zero, 0
  SW s1, 0(s0)
  CALL getint
  ADD s2, a0, zero
  SLTU s0, zero, s2
  BEQ s0, zero, bb44
  # implict jump to bb33
bb33:   # loop depth 0
  LA s0, now
  CALL getint
  LA s3, value
  LA s4, left_child
  LW s0, 0(s0)
  LA s8, right_child
  ADD s1, a0, zero
  ADDI s7, zero, -1
  LA s6, now
  ADDI s5, zero, -1
  SH2ADD s3, s0, s3
  SH2ADD s4, s0, s4
  SW s1, 0(s3)
  SH2ADD s1, s0, s8
  SW s7, 0(s4)
  ADDIW s3, s0, 1
  SW s5, 0(s1)
  ADDI s1, zero, 1
  SW s3, 0(s6)
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
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb37:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb38
bb38:   # loop depth 1
  CALL getint
  ADDIW s1, s1, 1
  ADD a1, a0, zero
  ADD a0, s0, zero
  CALL delete
  ADD s0, a0, zero
  BLT s1, s2, bb40
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
  ADD a0, s0, zero
  CALL insert
  BLT s1, s2, bb43
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
inorder:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  XORI s0, a0, -1
  BNE s0, zero, bb47
  # implict jump to bb46
bb46:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb47:   # loop depth 0
  LA s0, left_child
  LA s1, value
  LA s2, right_child
  SH2ADD s0, a0, s0
  SH2ADD s1, a0, s1
  LW s0, 0(s0)
  SH2ADD s2, a0, s2
  ADD a0, s0, zero
  CALL inorder
  LW a0, 0(s1)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW a0, 0(s2)
  CALL inorder
  JAL zero, bb46
