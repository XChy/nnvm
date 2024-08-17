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
  LA a2, value
  LA t1, left_child
  LA t2, right_child
  ADD s0, a0, zero
  XORI t0, s0, -1
  BEQ t0, zero, bb5
  # implict jump to bb1
bb1:   # loop depth 0
  SH2ADD t0, s0, a2
  LW t0, 0(t0)
  BLT t0, a1, bb4
  # implict jump to bb2
bb2:   # loop depth 0
  SH2ADD s1, s0, t1
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
  SH2ADD s1, s0, t2
  LW a0, 0(s1)
  CALL insert
  SW a0, 0(s1)
  JAL zero, bb3
bb5:   # loop depth 0
  LA a3, now
  ADDI a4, zero, -1
  ADDI a5, zero, -1
  LW a0, 0(a3)
  SH2ADD t0, a0, a2
  SH2ADD t1, a0, t1
  SW a1, 0(t0)
  SH2ADD t0, a0, t2
  SW a4, 0(t1)
  ADDIW t1, a0, 1
  SW a5, 0(t0)
  SW t1, 0(a3)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
delete:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s1, a0, zero
  XORI t0, s1, -1
  BEQ t0, zero, bb31
  # implict jump to bb7
bb7:   # loop depth 0
  LA a2, value
  LA t0, right_child
  SH2ADD t2, s1, a2
  SH2ADD s0, s1, t0
  LW t0, 0(t2)
  BLT t0, a1, bb30
  # implict jump to bb8
bb8:   # loop depth 0
  LA a3, left_child
  SH2ADD s2, s1, a3
  BLT a1, t0, bb29
  # implict jump to bb9
bb9:   # loop depth 0
  LW a0, 0(s2)
  XORI t1, a0, -1
  BEQ t1, zero, bb28
  # implict jump to bb10
bb10:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb11
bb11:   # loop depth 0
  BNE t0, zero, bb27
  # implict jump to bb12
bb12:   # loop depth 0
  BEQ t1, zero, bb26
  # implict jump to bb13
bb13:   # loop depth 0
  LW t0, 0(s0)
  XORI t0, t0, -1
  SLTIU t0, t0, 1
  # implict jump to bb14
bb14:   # loop depth 0
  BNE t0, zero, bb23
  # implict jump to bb15
bb15:   # loop depth 0
  LW t0, 0(s0)
  # implict jump to bb16
bb16:   # loop depth 1
  XORI t1, t0, -1
  BEQ t1, zero, bb22
  # implict jump to bb17
bb17:   # loop depth 1
  SH2ADD t1, t0, a3
  LW t1, 0(t1)
  XORI a0, t1, -1
  BNE a0, zero, bb21
  # implict jump to bb18
bb18:   # loop depth 1
  # implict jump to bb19
bb19:   # loop depth 0
  SH2ADD t0, t0, a2
  LW t1, 0(t0)
  SW t1, 0(t2)
  LW a0, 0(s0)
  LW a1, 0(t0)
  CALL delete
  SW a0, 0(s0)
  # implict jump to bb20
bb20:   # loop depth 0
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb21:   # loop depth 1
  ADD t0, t1, zero
  JAL zero, bb16
bb22:   # loop depth 1
  ADDI t0, zero, -1
  JAL zero, bb19
bb23:   # loop depth 0
  BEQ t1, zero, bb25
  # implict jump to bb24
bb24:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb25:   # loop depth 0
  LW a0, 0(s0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb26:   # loop depth 0
  ADDI t0, zero, 1
  JAL zero, bb14
bb27:   # loop depth 0
  ADDI a0, zero, -1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb28:   # loop depth 0
  LW t0, 0(s0)
  XORI t0, t0, -1
  SLTIU t0, t0, 1
  JAL zero, bb11
bb29:   # loop depth 0
  LW a0, 0(s2)
  CALL delete
  SW a0, 0(s2)
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
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  LA s0, now
  ADDI t0, zero, 0
  SW t0, 0(s0)
  CALL getint
  ADD s2, a0, zero
  SLTU t0, zero, s2
  BEQ t0, zero, bb44
  # implict jump to bb33
bb33:   # loop depth 0
  CALL getint
  LA t0, value
  LW s1, 0(s0)
  LA t1, left_child
  LA a1, right_child
  ADDI t2, zero, -1
  ADDI a2, zero, -1
  SH2ADD t0, s1, t0
  SH2ADD t1, s1, t1
  SW a0, 0(t0)
  SH2ADD t0, s1, a1
  SW t2, 0(t1)
  ADDIW t1, s1, 1
  SW a2, 0(t0)
  ADDI t0, zero, 1
  SW t1, 0(s0)
  BLT t0, s2, bb41
  # implict jump to bb34
bb34:   # loop depth 0
  ADD a0, s1, zero
  CALL inorder
  ADDI a0, zero, 10
  CALL putch
  CALL getint
  ADD s2, a0, zero
  BLT zero, s2, bb37
  # implict jump to bb35
bb35:   # loop depth 0
  ADD a0, s1, zero
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
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb37:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb38
bb38:   # loop depth 1
  CALL getint
  ADDIW s0, s0, 1
  ADD a1, a0, zero
  ADD a0, s1, zero
  CALL delete
  BLT s0, s2, bb40
  # implict jump to bb39
bb39:   # loop depth 1
  JAL zero, bb36
bb40:   # loop depth 1
  ADD s1, a0, zero
  JAL zero, bb38
bb41:   # loop depth 0
  ADDI s0, zero, 1
  # implict jump to bb42
bb42:   # loop depth 1
  CALL getint
  ADD a1, a0, zero
  ADDIW s0, s0, 1
  ADD a0, s1, zero
  CALL insert
  BLT s0, s2, bb43
  JAL zero, bb34
bb43:   # loop depth 1
  JAL zero, bb42
bb44:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
inorder:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  XORI t0, a0, -1
  BNE t0, zero, bb47
  # implict jump to bb46
bb46:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb47:   # loop depth 0
  LA t0, left_child
  LA t1, value
  LA t2, right_child
  SH2ADD t0, a0, t0
  SH2ADD s0, a0, t1
  LW t0, 0(t0)
  SH2ADD s1, a0, t2
  ADD a0, t0, zero
  CALL inorder
  LW a0, 0(s0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW a0, 0(s1)
  CALL inorder
  JAL zero, bb46
