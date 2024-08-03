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
  SD s8, 72(sp)
  ADD a0, zero, zero
  # implict jump to bb1
bb1:
  ADD s1, a0, zero
  SLTI a0, s1, 1000
  BNE a0, zero, bb42
  # implict jump to bb2
bb2:
  ADDI a0, zero, 23
  CALL _sysy_starttime
  ADD a0, zero, zero
  # implict jump to bb3
bb3:
  ADD s1, a0, zero
  LUI a0, 1
  ADDIW a0, a0, -96
  MULW s0, s1, a0
  LA a0, b
  ADD s4, a0, s0
  SLLIW s3, s1, 2
  ADD a0, zero, zero
  # implict jump to bb4
bb4:
  ADD s5, a0, zero
  SLLIW a0, s5, 2
  ADD s2, s4, a0
  LUI a0, 1
  ADDIW a0, a0, -96
  MULW s0, s5, a0
  LA a0, a
  ADD a0, a0, s0
  ADD a0, a0, s3
  LW a0, 0(a0)
  SW a0, 0(s2)
  ADDIW a0, s5, 1
  SLTI s0, a0, 1000
  BNE s0, zero, bb41
  # implict jump to bb5
bb5:
  ADDIW a0, s1, 1
  SLTI s0, a0, 1000
  BNE s0, zero, bb40
  # implict jump to bb6
bb6:
  ADD a0, zero, zero
  # implict jump to bb7
bb7:
  ADD s1, a0, zero
  ADD a0, zero, zero
  # implict jump to bb8
bb8:
  ADD s2, a0, zero
  LUI a0, 1
  ADDIW a0, a0, -96
  MULW s5, s1, a0
  LA a0, a
  ADD s6, a0, s5
  SLLIW s3, s2, 2
  ADD s0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb9
bb9:
  ADD s7, a0, zero
  ADD s8, s0, zero
  SLLIW a0, s8, 2
  ADD a0, s6, a0
  LW s0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -96
  MULW s4, s8, a0
  LA a0, b
  ADD a0, a0, s4
  ADD a0, a0, s3
  LW a0, 0(a0)
  MULW a0, s0, a0
  ADDW s4, s7, a0
  ADDIW a0, s8, 1
  SLTI s0, a0, 1000
  BNE s0, zero, bb39
  # implict jump to bb10
bb10:
  LA a0, c
  ADD a0, a0, s5
  ADD a0, a0, s3
  SW s4, 0(a0)
  ADDIW s0, s2, 1
  SLTI a0, s0, 1000
  BNE a0, zero, bb38
  # implict jump to bb11
bb11:
  ADDIW a0, s1, 1
  SLTI s0, a0, 1000
  BNE s0, zero, bb37
  # implict jump to bb12
bb12:
  ADD a0, zero, zero
  # implict jump to bb13
bb13:
  ADD s2, a0, zero
  LUI a0, 1
  ADDIW a0, a0, -96
  MULW s0, s2, a0
  LA a0, c
  ADD s1, a0, s0
  ADD s0, zero, zero
  LUI a0, 524288
  ADDIW a0, a0, -1
  ADD a0, zero, a0
  # implict jump to bb14
bb14:
  ADD s3, a0, zero
  SLLIW a0, s0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  BLT a0, s3, bb36
  # implict jump to bb15
bb15:
  ADD a0, s3, zero
  # implict jump to bb16
bb16:
  ADD s3, a0, zero
  ADDIW a0, s0, 1
  SLTI s0, a0, 1000
  BNE s0, zero, bb35
  # implict jump to bb17
bb17:
  ADD a0, zero, zero
  # implict jump to bb18
bb18:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADD a0, s1, a0
  SW s3, 0(a0)
  ADDIW s0, s0, 1
  SLTI a0, s0, 1000
  BNE a0, zero, bb34
  # implict jump to bb19
bb19:
  ADDIW a0, s2, 1
  SLTI s0, a0, 1000
  BNE s0, zero, bb33
  # implict jump to bb20
bb20:
  ADD a0, zero, zero
  # implict jump to bb21
bb21:
  ADD s0, a0, zero
  LUI a0, 1
  ADDIW a0, a0, -96
  MULW s1, s0, a0
  LA a0, c
  ADD s4, a0, s1
  SLLIW s3, s0, 2
  ADD a0, zero, zero
  # implict jump to bb22
bb22:
  ADD s2, a0, zero
  SLLIW a0, s2, 2
  ADD s5, s4, a0
  LUI a0, 1
  ADDIW a0, a0, -96
  MULW s1, s2, a0
  LA a0, c
  ADD a0, a0, s1
  ADD a0, a0, s3
  LW a0, 0(a0)
  SUBW a0, zero, a0
  SW a0, 0(s5)
  ADDIW s1, s2, 1
  SLTI a0, s1, 1000
  BNE a0, zero, bb32
  # implict jump to bb23
bb23:
  ADDIW s0, s0, 1
  SLTI a0, s0, 1000
  BNE a0, zero, bb31
  # implict jump to bb24
bb24:
  ADD a0, zero, zero
  ADD s0, zero, zero
  # implict jump to bb25
bb25:
  ADD s1, s0, zero
  ADD s3, a0, zero
  LUI a0, 1
  ADDIW a0, a0, -96
  MULW s0, s1, a0
  LA a0, c
  ADD s2, a0, s0
  ADD a0, zero, zero
  ADD s0, s3, zero
  # implict jump to bb26
bb26:
  ADD s3, a0, zero
  SLLIW a0, s3, 2
  ADD a0, s2, a0
  LW a0, 0(a0)
  ADDW s4, s0, a0
  ADDIW s0, s3, 1
  SLTI a0, s0, 1000
  BNE a0, zero, bb30
  # implict jump to bb27
bb27:
  ADDIW s0, s1, 1
  SLTI a0, s0, 1000
  BNE a0, zero, bb29
  # implict jump to bb28
bb28:
  ADDI a0, zero, 92
  CALL _sysy_stoptime
  ADD a0, s4, zero
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
  LD s8, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb29:
  ADD a0, s4, zero
  JAL zero, bb25
bb30:
  ADD a0, s0, zero
  ADD s0, s4, zero
  JAL zero, bb26
bb31:
  ADD a0, s0, zero
  JAL zero, bb21
bb32:
  ADD a0, s1, zero
  JAL zero, bb22
bb33:
  JAL zero, bb13
bb34:
  ADD a0, s0, zero
  JAL zero, bb18
bb35:
  ADD s0, a0, zero
  ADD a0, s3, zero
  JAL zero, bb14
bb36:
  JAL zero, bb16
bb37:
  JAL zero, bb7
bb38:
  ADD a0, s0, zero
  JAL zero, bb8
bb39:
  ADD s0, a0, zero
  ADD a0, s4, zero
  JAL zero, bb9
bb40:
  JAL zero, bb3
bb41:
  JAL zero, bb4
bb42:
  LUI a0, 1
  ADDIW a0, a0, -96
  MULW s0, s1, a0
  LA a0, a
  ADD a0, a0, s0
  CALL getarray
  ADD s0, a0, zero
  XORI a0, s0, 1000
  BNE a0, zero, bb44
  # implict jump to bb43
bb43:
  ADDIW a0, s1, 1
  JAL zero, bb1
bb44:
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
