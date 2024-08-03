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
main:
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
  ADD s1, a0, zero
  LA s0, n
  SW s1, 0(s0)
  CALL getint
  ADD s1, a0, zero
  LA s0, m
  SW s1, 0(s0)
  LA s0, n
  LW s1, 0(s0)
  SLTI s0, s1, 1
  XORI s0, s0, 1
  BNE s0, zero, bb39
  # implict jump to bb1
bb1:
  LA s0, m
  LW s0, 0(s0)
  SLTI s0, s0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb36
  # implict jump to bb2
bb2:
  LA a0, n
  LW s0, 0(a0)
  SLTI a0, s0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb32
  # implict jump to bb3
bb3:
  ADD a0, s0, zero
  # implict jump to bb4
bb4:
  ADD s11, a0, zero
  LA s0, book
  ADDI a0, zero, 1
  SW a0, 4(s0)
  ADDI a0, zero, 1
  SUBW s10, s11, a0
  SLTI a0, s10, 1
  XORI a0, a0, 1
  BNE a0, zero, bb10
  # implict jump to bb5
bb5:
  LA a0, n
  LW a0, 0(a0)
  SLTI a0, a0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb7
  # implict jump to bb6
bb6:
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
bb7:
  ADDI a0, zero, 1
  # implict jump to bb8
bb8:
  ADD s0, a0, zero
  SLLIW s1, s0, 2
  LA a0, dis
  ADD a0, a0, s1
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s0, s0, 1
  LA a0, n
  LW a0, 0(a0)
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb9
  JAL zero, bb6
bb9:
  ADD a0, s0, zero
  JAL zero, bb8
bb10:
  SLTI a0, s11, 1
  XORI s9, a0, 1
  ADDI a0, zero, 1
  ADD s0, zero, zero
  # implict jump to bb11
bb11:
  ADD s8, a0, zero
  BNE s9, zero, bb22
  # implict jump to bb12
bb12:
  ADD a0, zero, zero
  # implict jump to bb13
bb13:
  ADD s7, s0, zero
  ADD s1, a0, zero
  SLLIW s6, s1, 2
  LA a0, book
  ADD s0, a0, s6
  ADDI a0, zero, 1
  SW a0, 0(s0)
  BNE s9, zero, bb16
  # implict jump to bb14
bb14:
  ADDIW s0, s8, 1
  SLT a0, s10, s0
  XORI a0, a0, 1
  BNE a0, zero, bb15
  JAL zero, bb5
bb15:
  ADD a0, s0, zero
  ADD s0, s7, zero
  JAL zero, bb11
bb16:
  SLLIW s0, s1, 6
  LA a0, e
  ADD s5, a0, s0
  ADDI a0, zero, 1
  # implict jump to bb17
bb17:
  ADD s4, a0, zero
  SLLIW s0, s4, 2
  ADD a0, s5, s0
  LW s3, 0(a0)
  LUI a0, 16
  ADDIW a0, a0, -1
  SLT a0, s3, a0
  BNE a0, zero, bb20
  # implict jump to bb18
bb18:
  ADDIW s0, s4, 1
  SLT a0, s11, s0
  XORI a0, a0, 1
  BNE a0, zero, bb19
  JAL zero, bb14
bb19:
  ADD a0, s0, zero
  JAL zero, bb17
bb20:
  LA a0, dis
  ADD s2, a0, s0
  LW s1, 0(s2)
  LA a0, dis
  ADD s0, a0, s6
  LW a0, 0(s0)
  ADDW a0, a0, s3
  BLT a0, s1, bb21
  JAL zero, bb18
bb21:
  LW a0, 0(s0)
  ADDW a0, a0, s3
  SW a0, 0(s2)
  JAL zero, bb18
bb22:
  LUI a0, 16
  ADDIW a0, a0, -1
  ADD a0, zero, a0
  ADD s1, zero, zero
  ADDI s0, zero, 1
  # implict jump to bb23
bb23:
  ADD s2, s0, zero
  ADD s0, s1, zero
  ADD s3, a0, zero
  SLLIW s1, s2, 2
  LA a0, dis
  ADD a0, a0, s1
  LW s4, 0(a0)
  BLT s4, s3, bb31
  # implict jump to bb24
bb24:
  ADD a0, zero, zero
  # implict jump to bb25
bb25:
  ADD s1, a0, zero
  BNE s1, zero, bb30
  # implict jump to bb26
bb26:
  ADD a0, s0, zero
  ADD s0, s3, zero
  # implict jump to bb27
bb27:
  ADD s3, s0, zero
  ADD s4, a0, zero
  ADDIW s0, s2, 1
  SLT a0, s11, s0
  XORI a0, a0, 1
  BNE a0, zero, bb29
  # implict jump to bb28
bb28:
  ADD a0, s4, zero
  ADD s0, s1, zero
  JAL zero, bb13
bb29:
  ADD a0, s3, zero
  ADD s1, s4, zero
  JAL zero, bb23
bb30:
  ADD a0, s2, zero
  ADD s0, s4, zero
  JAL zero, bb27
bb31:
  LA a0, book
  ADD a0, a0, s1
  LW a0, 0(a0)
  SLTIU a0, a0, 1
  JAL zero, bb25
bb32:
  LA a0, e
  ADDI s2, a0, 64
  ADDI a0, zero, 1
  # implict jump to bb33
bb33:
  ADD s3, a0, zero
  SLLIW s1, s3, 2
  LA a0, dis
  ADD s0, a0, s1
  ADD a0, s2, s1
  LW a0, 0(a0)
  SW a0, 0(s0)
  LA a0, book
  ADD a0, a0, s1
  SW zero, 0(a0)
  ADDIW s1, s3, 1
  LA a0, n
  LW s0, 0(a0)
  SLT a0, s0, s1
  XORI a0, a0, 1
  BNE a0, zero, bb35
  # implict jump to bb34
bb34:
  ADD a0, s0, zero
  JAL zero, bb4
bb35:
  ADD a0, s1, zero
  JAL zero, bb33
bb36:
  ADDI s0, zero, 1
  # implict jump to bb37
bb37:
  ADD s3, s0, zero
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  SLLIW s2, s0, 6
  LA s0, e
  ADD s2, s0, s2
  SLLIW s0, s1, 2
  ADD s0, s2, s0
  CALL getint
  ADD s1, a0, zero
  SW s1, 0(s0)
  ADDIW s1, s3, 1
  LA s0, m
  LW s0, 0(s0)
  SLT s0, s0, s1
  XORI s0, s0, 1
  BNE s0, zero, bb38
  JAL zero, bb2
bb38:
  ADD s0, s1, zero
  JAL zero, bb37
bb39:
  ADDI s0, zero, 1
  # implict jump to bb40
bb40:
  ADD s2, s0, zero
  ADD s3, s1, zero
  SLTI s0, s3, 1
  XORI s0, s0, 1
  BNE s0, zero, bb43
  # implict jump to bb41
bb41:
  ADDIW s2, s2, 1
  LA s0, n
  LW s1, 0(s0)
  SLT s0, s1, s2
  XORI s0, s0, 1
  BNE s0, zero, bb42
  JAL zero, bb1
bb42:
  ADD s0, s2, zero
  JAL zero, bb40
bb43:
  ADDI s0, zero, 1
  # implict jump to bb44
bb44:
  ADD s4, s0, zero
  XOR s0, s2, s4
  SLTIU s0, s0, 1
  BNE s0, zero, bb48
  # implict jump to bb45
bb45:
  SLLIW s1, s2, 6
  LA s0, e
  ADD s0, s0, s1
  SLLIW s1, s4, 2
  ADD s1, s0, s1
  LUI s0, 16
  ADDIW s0, s0, -1
  SW s0, 0(s1)
  # implict jump to bb46
bb46:
  ADDIW s1, s4, 1
  SLT s0, s3, s1
  XORI s0, s0, 1
  BNE s0, zero, bb47
  JAL zero, bb41
bb47:
  ADD s0, s1, zero
  JAL zero, bb44
bb48:
  SLLIW s1, s2, 6
  LA s0, e
  ADD s1, s0, s1
  SLLIW s0, s4, 2
  ADD s1, s1, s0
  ADDI s0, zero, 0
  SW s0, 0(s1)
  JAL zero, bb46
