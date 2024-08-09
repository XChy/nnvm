.global main
.section .bss




book:
.space 64

e:
.space 1024
dis:
.space 64
.section .data
w:
.word 0x00000000
v2:
.word 0x00000000
v1:
.word 0x00000000
m:
.word 0x00000000

n:
.word 0x00000000


.section .text
main:   # loop depth 0
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s5, 16(sp)
  SD s6, 24(sp)
  SD s7, 32(sp)
  SD s8, 40(sp)
  SD s9, 48(sp)
  SD s10, 56(sp)
  SD s11, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  CALL getint
  LA s1, n
  ADD s0, a0, zero
  LA s3, m
  SW s0, 0(s1)
  LA s0, n
  CALL getint
  ADD s2, a0, zero
  SW s2, 0(s3)
  LW s3, 0(s0)
  SLTI s0, s3, 1
  XORI s4, s0, 1
  BNE s4, zero, bb38
  # implict jump to bb1
bb1:   # loop depth 0
  SLTI s0, s2, 1
  XORI s0, s0, 1
  BNE s0, zero, bb35
  # implict jump to bb2
bb2:   # loop depth 0
  LA a0, n
  LW a0, 0(a0)
  SLTI s0, a0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb31
  # implict jump to bb3
bb3:   # loop depth 0
  LA s2, book
  ADDIW s11, a0, -1
  ADDI s3, zero, 1
  SLTI s1, s11, 1
  XORI s1, s1, 1
  SW s3, 4(s2)
  BNE s1, zero, bb9
  # implict jump to bb4
bb4:   # loop depth 0
  BNE s0, zero, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s5, 16(sp)
  LD s6, 24(sp)
  LD s7, 32(sp)
  LD s8, 40(sp)
  LD s9, 48(sp)
  LD s10, 56(sp)
  LD s11, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb6:   # loop depth 0
  ADDI s0, zero, 1
  # implict jump to bb7
bb7:   # loop depth 1
  LA s1, dis
  SLLIW a0, s0, 2
  LA s2, n
  ADD a0, s1, a0
  ADDIW s0, s0, 1
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW a0, 0(s2)
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb8
  JAL zero, bb5
bb8:   # loop depth 1
  JAL zero, bb7
bb9:   # loop depth 0
  ADDI s1, zero, 1
  ADD s3, zero, zero
  # implict jump to bb10
bb10:   # loop depth 1
  BNE s0, zero, bb21
  # implict jump to bb11
bb11:   # loop depth 1
  ADD s6, zero, zero
  # implict jump to bb12
bb12:   # loop depth 1
  LA s4, book
  SLLIW s2, s6, 2
  ADDI s5, zero, 1
  ADD s4, s4, s2
  ADD s10, s3, zero
  SW s5, 0(s4)
  BNE s0, zero, bb15
  # implict jump to bb13
bb13:   # loop depth 1
  ADDIW s1, s1, 1
  SLT s2, s11, s1
  XORI s2, s2, 1
  BNE s2, zero, bb14
  JAL zero, bb4
bb14:   # loop depth 1
  ADD s3, s10, zero
  JAL zero, bb10
bb15:   # loop depth 1
  LA s5, e
  SLLIW s3, s6, 6
  ADDI s4, zero, 1
  ADD s3, s5, s3
  # implict jump to bb16
bb16:   # loop depth 2
  LUI s7, 16
  SLLIW s6, s4, 2
  ADDIW s7, s7, -1
  ADD s5, s3, s6
  LW s5, 0(s5)
  SLT s7, s5, s7
  BNE s7, zero, bb19
  # implict jump to bb17
bb17:   # loop depth 2
  ADDIW s4, s4, 1
  SLT s5, a0, s4
  XORI s5, s5, 1
  BNE s5, zero, bb18
  JAL zero, bb13
bb18:   # loop depth 2
  JAL zero, bb16
bb19:   # loop depth 2
  LA s8, dis
  LA s7, dis
  ADD s6, s8, s6
  ADD s8, s7, s2
  LW s7, 0(s6)
  LW s9, 0(s8)
  ADDW s9, s9, s5
  BLT s9, s7, bb20
  JAL zero, bb17
bb20:   # loop depth 2
  LW s7, 0(s8)
  ADDW s5, s7, s5
  SW s5, 0(s6)
  JAL zero, bb17
bb21:   # loop depth 1
  LUI s2, 16
  ADD s6, zero, zero
  ADDIW s2, s2, -1
  ADDI s5, zero, 1
  ADD s4, zero, s2
  # implict jump to bb22
bb22:   # loop depth 2
  LA s2, dis
  SLLIW s3, s5, 2
  ADD s2, s2, s3
  LW s2, 0(s2)
  BLT s2, s4, bb30
  # implict jump to bb23
bb23:   # loop depth 2
  ADD s3, zero, zero
  # implict jump to bb24
bb24:   # loop depth 2
  BNE s3, zero, bb29
  # implict jump to bb25
bb25:   # loop depth 2
  # implict jump to bb26
bb26:   # loop depth 2
  ADDIW s5, s5, 1
  SLT s2, a0, s5
  XORI s2, s2, 1
  BNE s2, zero, bb28
  # implict jump to bb27
bb27:   # loop depth 1
  JAL zero, bb12
bb28:   # loop depth 2
  JAL zero, bb22
bb29:   # loop depth 2
  ADD s6, s5, zero
  ADD s4, s2, zero
  JAL zero, bb26
bb30:   # loop depth 2
  LA s7, book
  ADD s3, s7, s3
  LW s3, 0(s3)
  SLTIU s3, s3, 1
  JAL zero, bb24
bb31:   # loop depth 0
  ADDI s1, zero, 1
  # implict jump to bb32
bb32:   # loop depth 1
  LA s3, e
  SLLIW s2, s1, 2
  LA s5, dis
  ADD s3, s3, s2
  LA s6, book
  LW s4, 64(s3)
  ADDIW s1, s1, 1
  ADD s3, s5, s2
  SLT s5, a0, s1
  ADD s2, s6, s2
  XORI s5, s5, 1
  SW s4, 0(s3)
  SW zero, 0(s2)
  BNE s5, zero, bb34
  # implict jump to bb33
bb33:   # loop depth 0
  JAL zero, bb3
bb34:   # loop depth 1
  JAL zero, bb32
bb35:   # loop depth 0
  ADDI s0, zero, 1
  # implict jump to bb36
bb36:   # loop depth 1
  LA s3, e
  LA s4, m
  CALL getint
  ADD s1, a0, zero
  ADDIW s0, s0, 1
  SLLIW s2, s1, 6
  CALL getint
  ADD s1, a0, zero
  ADD s2, s3, s2
  SLLIW s3, s1, 2
  CALL getint
  ADD s1, a0, zero
  ADD s2, s2, s3
  SW s1, 0(s2)
  LW s1, 0(s4)
  SLT s1, s1, s0
  XORI s1, s1, 1
  BNE s1, zero, bb37
  JAL zero, bb2
bb37:   # loop depth 1
  JAL zero, bb36
bb38:   # loop depth 0
  ADDI s1, zero, 1
  # implict jump to bb39
bb39:   # loop depth 1
  BNE s4, zero, bb42
  # implict jump to bb40
bb40:   # loop depth 1
  ADDIW s1, s1, 1
  SLT s0, s3, s1
  XORI s0, s0, 1
  BNE s0, zero, bb41
  JAL zero, bb1
bb41:   # loop depth 1
  JAL zero, bb39
bb42:   # loop depth 1
  SLLIW s5, s1, 6
  ADDI s0, zero, 1
  # implict jump to bb43
bb43:   # loop depth 2
  XOR s6, s1, s0
  SLLIW s7, s0, 2
  SLTIU s6, s6, 1
  BNE s6, zero, bb47
  # implict jump to bb44
bb44:   # loop depth 2
  LA s6, e
  LUI s8, 16
  ADDIW s8, s8, -1
  ADD s6, s6, s5
  ADD s6, s6, s7
  SW s8, 0(s6)
  # implict jump to bb45
bb45:   # loop depth 2
  ADDIW s0, s0, 1
  SLT s6, s3, s0
  XORI s6, s6, 1
  BNE s6, zero, bb46
  JAL zero, bb40
bb46:   # loop depth 2
  JAL zero, bb43
bb47:   # loop depth 2
  LA s6, e
  ADDI s8, zero, 0
  ADD s6, s6, s5
  ADD s6, s6, s7
  SW s8, 0(s6)
  JAL zero, bb45
