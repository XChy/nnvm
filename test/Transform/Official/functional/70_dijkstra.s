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
  ADD s0, a0, zero
  LA s1, n
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, m
  SW s0, 0(s1)
  LA s0, n
  LW s0, 0(s0)
  SLTI s1, s0, 1
  XORI s1, s1, 1
  BNE s1, zero, bb39
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
  LW a0, 0(a0)
  SLTI s0, a0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb32
  # implict jump to bb3
bb3:
  # implict jump to bb4
bb4:
  ADD s11, a0, zero
  LA a0, book
  ADDI s0, zero, 1
  SW s0, 4(a0)
  ADDI a0, zero, 1
  SUBW a0, s11, a0
  SLTI s0, a0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb10
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
  SLLIW a0, s0, 2
  LA s1, dis
  ADD a0, s1, a0
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW a0, s0, 1
  LA s0, n
  LW s0, 0(s0)
  SLT s0, s0, a0
  XORI s0, s0, 1
  BNE s0, zero, bb9
  JAL zero, bb6
bb9:
  JAL zero, bb8
bb10:
  SLTI s0, s11, 1
  XORI s0, s0, 1
  ADDI s1, zero, 1
  ADD s2, zero, zero
  # implict jump to bb11
bb11:
  BNE s0, zero, bb22
  # implict jump to bb12
bb12:
  ADD s3, zero, zero
  # implict jump to bb13
bb13:
  ADD s4, s3, zero
  SLLIW s3, s4, 2
  LA s5, book
  ADD s5, s5, s3
  ADDI s6, zero, 1
  SW s6, 0(s5)
  BNE s0, zero, bb16
  # implict jump to bb14
bb14:
  ADDIW s1, s1, 1
  SLT s3, a0, s1
  XORI s3, s3, 1
  BNE s3, zero, bb15
  JAL zero, bb5
bb15:
  JAL zero, bb11
bb16:
  SLLIW s4, s4, 6
  LA s5, e
  ADD s4, s5, s4
  ADDI s5, zero, 1
  # implict jump to bb17
bb17:
  SLLIW s7, s5, 2
  ADD s6, s4, s7
  LW s6, 0(s6)
  LUI s8, 16
  ADDIW s8, s8, -1
  SLT s8, s6, s8
  BNE s8, zero, bb20
  # implict jump to bb18
bb18:
  ADDIW s5, s5, 1
  SLT s6, s11, s5
  XORI s6, s6, 1
  BNE s6, zero, bb19
  JAL zero, bb14
bb19:
  JAL zero, bb17
bb20:
  LA s8, dis
  ADD s7, s8, s7
  LW s8, 0(s7)
  LA s9, dis
  ADD s9, s9, s3
  LW s10, 0(s9)
  ADDW s10, s10, s6
  BLT s10, s8, bb21
  JAL zero, bb18
bb21:
  LW s8, 0(s9)
  ADDW s6, s8, s6
  SW s6, 0(s7)
  JAL zero, bb18
bb22:
  LUI s2, 16
  ADDIW s2, s2, -1
  ADD s5, zero, s2
  ADD s2, zero, zero
  ADDI s3, zero, 1
  # implict jump to bb23
bb23:
  ADD s4, s3, zero
  ADD s3, s2, zero
  ADD s2, s5, zero
  SLLIW s5, s4, 2
  LA s6, dis
  ADD s6, s6, s5
  LW s6, 0(s6)
  BLT s6, s2, bb31
  # implict jump to bb24
bb24:
  ADD s5, zero, zero
  # implict jump to bb25
bb25:
  BNE s5, zero, bb30
  # implict jump to bb26
bb26:
  ADD s7, s3, zero
  # implict jump to bb27
bb27:
  ADD s3, s2, zero
  ADD s2, s7, zero
  ADDIW s4, s4, 1
  SLT s6, s11, s4
  XORI s6, s6, 1
  BNE s6, zero, bb29
  # implict jump to bb28
bb28:
  ADD s3, s2, zero
  ADD s2, s5, zero
  JAL zero, bb13
bb29:
  ADD s5, s3, zero
  ADD s3, s4, zero
  JAL zero, bb23
bb30:
  ADD s7, s4, zero
  ADD s2, s6, zero
  JAL zero, bb27
bb31:
  LA s7, book
  ADD s5, s7, s5
  LW s5, 0(s5)
  SLTIU s5, s5, 1
  JAL zero, bb25
bb32:
  LA a0, e
  ADDI a0, a0, 64
  ADDI s0, zero, 1
  # implict jump to bb33
bb33:
  SLLIW s1, s0, 2
  LA s2, dis
  ADD s2, s2, s1
  ADD s3, a0, s1
  LW s3, 0(s3)
  SW s3, 0(s2)
  LA s2, book
  ADD s1, s2, s1
  SW zero, 0(s1)
  ADDIW s0, s0, 1
  LA s1, n
  LW s1, 0(s1)
  SLT s2, s1, s0
  XORI s2, s2, 1
  BNE s2, zero, bb35
  # implict jump to bb34
bb34:
  ADD a0, s1, zero
  JAL zero, bb4
bb35:
  JAL zero, bb33
bb36:
  ADDI s0, zero, 1
  # implict jump to bb37
bb37:
  CALL getint
  ADD s1, a0, zero
  CALL getint
  ADD s2, a0, zero
  SLLIW s1, s1, 6
  LA s3, e
  ADD s1, s3, s1
  SLLIW s2, s2, 2
  ADD s1, s1, s2
  CALL getint
  ADD s2, a0, zero
  SW s2, 0(s1)
  ADDIW s0, s0, 1
  LA s1, m
  LW s1, 0(s1)
  SLT s1, s1, s0
  XORI s1, s1, 1
  BNE s1, zero, bb38
  JAL zero, bb2
bb38:
  JAL zero, bb37
bb39:
  ADD s2, s0, zero
  ADDI s0, zero, 1
  # implict jump to bb40
bb40:
  ADD s1, s0, zero
  ADD s0, s2, zero
  SLTI s2, s0, 1
  XORI s2, s2, 1
  BNE s2, zero, bb43
  # implict jump to bb41
bb41:
  ADDIW s0, s1, 1
  LA s1, n
  LW s1, 0(s1)
  SLT s2, s1, s0
  XORI s2, s2, 1
  BNE s2, zero, bb42
  JAL zero, bb1
bb42:
  ADD s2, s1, zero
  JAL zero, bb40
bb43:
  ADDI s2, zero, 1
  # implict jump to bb44
bb44:
  XOR s3, s1, s2
  SLTIU s3, s3, 1
  BNE s3, zero, bb48
  # implict jump to bb45
bb45:
  SLLIW s3, s1, 6
  LA s4, e
  ADD s3, s4, s3
  SLLIW s4, s2, 2
  ADD s3, s3, s4
  LUI s4, 16
  ADDIW s4, s4, -1
  SW s4, 0(s3)
  # implict jump to bb46
bb46:
  ADDIW s2, s2, 1
  SLT s3, s0, s2
  XORI s3, s3, 1
  BNE s3, zero, bb47
  JAL zero, bb41
bb47:
  JAL zero, bb44
bb48:
  SLLIW s3, s1, 6
  LA s4, e
  ADD s3, s4, s3
  SLLIW s4, s2, 2
  ADD s3, s3, s4
  ADDI s4, zero, 0
  SW s4, 0(s3)
  JAL zero, bb46
