.global main
.section .bss
c:
.space 4000000
b:
.space 4000000
a:
.space 4000000
.section .data



.section .text
main:
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
  ADD s0, zero, zero
  # implict jump to bb1
bb1:
  SLTI a0, s0, 1000
  BNE a0, zero, bb42
  # implict jump to bb2
bb2:
  ADDI a0, zero, 23
  CALL _sysy_starttime
  ADD s0, zero, zero
  # implict jump to bb3
bb3:
  LUI a0, 1
  ADDIW a0, a0, -96
  MULW a0, s0, a0
  LA s1, b
  ADD s1, s1, a0
  SLLIW s2, s0, 2
  ADD a0, zero, zero
  # implict jump to bb4
bb4:
  SLLIW s3, a0, 2
  ADD s3, s1, s3
  LUI s4, 1
  ADDIW s4, s4, -96
  MULW s4, a0, s4
  LA s5, a
  ADD s4, s5, s4
  ADD s4, s4, s2
  LW s4, 0(s4)
  SW s4, 0(s3)
  ADDIW a0, a0, 1
  SLTI s3, a0, 1000
  BNE s3, zero, bb41
  # implict jump to bb5
bb5:
  ADDIW s0, s0, 1
  SLTI a0, s0, 1000
  BNE a0, zero, bb40
  # implict jump to bb6
bb6:
  ADD s2, zero, zero
  # implict jump to bb7
bb7:
  LUI a0, 1
  ADDIW a0, a0, -96
  MULW s3, s2, a0
  ADD s1, zero, zero
  # implict jump to bb8
bb8:
  SLLIW s4, s1, 2
  ADD s0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb9
bb9:
  LA s5, a
  ADD s5, s5, s3
  SLLIW s6, s0, 2
  ADD s5, s5, s6
  LW s5, 0(s5)
  LUI s6, 1
  ADDIW s6, s6, -96
  MULW s6, s0, s6
  LA s7, b
  ADD s6, s7, s6
  ADD s6, s6, s4
  LW s6, 0(s6)
  MULW s5, s5, s6
  ADDW a0, a0, s5
  ADDIW s0, s0, 1
  SLTI s5, s0, 1000
  BNE s5, zero, bb39
  # implict jump to bb10
bb10:
  LA s0, c
  ADD s0, s0, s3
  ADD s0, s0, s4
  SW a0, 0(s0)
  ADDIW s1, s1, 1
  SLTI a0, s1, 1000
  BNE a0, zero, bb38
  # implict jump to bb11
bb11:
  ADDIW s2, s2, 1
  SLTI a0, s2, 1000
  BNE a0, zero, bb37
  # implict jump to bb12
bb12:
  ADD s2, zero, zero
  # implict jump to bb13
bb13:
  LUI a0, 1
  ADDIW a0, a0, -96
  MULW s3, s2, a0
  ADD s1, zero, zero
  LUI a0, 524288
  ADDIW a0, a0, -1
  ADD s0, zero, a0
  # implict jump to bb14
bb14:
  LA a0, c
  ADD a0, a0, s3
  SLLIW s4, s1, 2
  ADD a0, a0, s4
  LW a0, 0(a0)
  BLT a0, s0, bb36
  # implict jump to bb15
bb15:
  # implict jump to bb16
bb16:
  ADDIW s1, s1, 1
  SLTI a0, s1, 1000
  BNE a0, zero, bb35
  # implict jump to bb17
bb17:
  LA a0, c
  ADD s1, a0, s3
  ADD a0, zero, zero
  # implict jump to bb18
bb18:
  SLLIW s3, a0, 2
  ADD s3, s1, s3
  SW s0, 0(s3)
  ADDIW a0, a0, 1
  SLTI s3, a0, 1000
  BNE s3, zero, bb34
  # implict jump to bb19
bb19:
  ADDIW s2, s2, 1
  SLTI a0, s2, 1000
  BNE a0, zero, bb33
  # implict jump to bb20
bb20:
  ADD s0, zero, zero
  # implict jump to bb21
bb21:
  LUI a0, 1
  ADDIW a0, a0, -96
  MULW a0, s0, a0
  LA s1, c
  ADD s1, s1, a0
  SLLIW s2, s0, 2
  ADD a0, zero, zero
  # implict jump to bb22
bb22:
  SLLIW s3, a0, 2
  ADD s3, s1, s3
  LUI s4, 1
  ADDIW s4, s4, -96
  MULW s4, a0, s4
  LA s5, c
  ADD s4, s5, s4
  ADD s4, s4, s2
  LW s4, 0(s4)
  SUBW s4, zero, s4
  SW s4, 0(s3)
  ADDIW a0, a0, 1
  SLTI s3, a0, 1000
  BNE s3, zero, bb32
  # implict jump to bb23
bb23:
  ADDIW s0, s0, 1
  SLTI a0, s0, 1000
  BNE a0, zero, bb31
  # implict jump to bb24
bb24:
  ADD s1, zero, zero
  ADD s0, zero, zero
  # implict jump to bb25
bb25:
  LUI a0, 1
  ADDIW a0, a0, -96
  MULW a0, s1, a0
  LA s2, c
  ADD s2, s2, a0
  ADD a0, zero, zero
  # implict jump to bb26
bb26:
  SLLIW s3, a0, 2
  ADD s3, s2, s3
  LW s3, 0(s3)
  ADDW s0, s0, s3
  ADDIW a0, a0, 1
  SLTI s3, a0, 1000
  BNE s3, zero, bb30
  # implict jump to bb27
bb27:
  ADDIW s1, s1, 1
  SLTI a0, s1, 1000
  BNE a0, zero, bb29
  # implict jump to bb28
bb28:
  ADDI a0, zero, 92
  CALL _sysy_stoptime
  ADD a0, s0, zero
  CALL putint
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb29:
  JAL zero, bb25
bb30:
  JAL zero, bb26
bb31:
  JAL zero, bb21
bb32:
  JAL zero, bb22
bb33:
  JAL zero, bb13
bb34:
  JAL zero, bb18
bb35:
  JAL zero, bb14
bb36:
  ADD s0, a0, zero
  JAL zero, bb16
bb37:
  JAL zero, bb7
bb38:
  JAL zero, bb8
bb39:
  JAL zero, bb9
bb40:
  JAL zero, bb3
bb41:
  JAL zero, bb4
bb42:
  LUI a0, 1
  ADDIW a0, a0, -96
  MULW a0, s0, a0
  LA s1, a
  ADD a0, s1, a0
  CALL getarray
  XORI s1, a0, 1000
  BNE s1, zero, bb44
  # implict jump to bb43
bb43:
  ADDIW s0, s0, 1
  JAL zero, bb1
bb44:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
