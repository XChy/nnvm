.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s4, 16(sp)
  SD s5, 24(sp)
  SD s6, 32(sp)
  SD s7, 40(sp)
  SD s8, 48(sp)
  SD s9, 56(sp)
  SD s10, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  LA s1, n
  CALL getint
  ADD s0, a0, zero
  LA s3, m
  SW s0, 0(s1)
  LA s0, n
  CALL getint
  ADD s2, a0, zero
  SW s2, 0(s3)
  LW s3, 0(s0)
  SLTI s5, s3, 1
  BEQ s5, zero, bb41
  # implict jump to bb1
bb1:   # loop depth 0
  SLTI s0, s2, 1
  BEQ s0, zero, bb38
  # implict jump to bb2
bb2:   # loop depth 0
  LA a0, n
  LW a0, 0(a0)
  SLTI s9, a0, 1
  BEQ s9, zero, bb34
  # implict jump to bb3
bb3:   # loop depth 0
  LA s1, book
  ADDIW s10, a0, -1
  ADDI s2, zero, 1
  SLTI s0, s10, 1
  SW s2, 4(s1)
  BEQ s0, zero, bb9
  # implict jump to bb4
bb4:   # loop depth 0
  BEQ s9, zero, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s4, 16(sp)
  LD s5, 24(sp)
  LD s6, 32(sp)
  LD s7, 40(sp)
  LD s8, 48(sp)
  LD s9, 56(sp)
  LD s10, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb6:   # loop depth 0
  ADDI a0, zero, 1
  # implict jump to bb7
bb7:   # loop depth 1
  LA s1, dis
  LA s2, n
  ADDIW s0, a0, 1
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW a0, 0(s2)
  BGE a0, s0, bb8
  JAL zero, bb5
bb8:   # loop depth 1
  ADD a0, s0, zero
  JAL zero, bb7
bb9:   # loop depth 0
  ADD s1, zero, zero
  ADDI s0, zero, 1
  # implict jump to bb10
bb10:   # loop depth 1
  BEQ s9, zero, bb21
  # implict jump to bb11
bb11:   # loop depth 1
  ADD s5, zero, zero
  # implict jump to bb12
bb12:   # loop depth 1
  LA s2, book
  ADDI s3, zero, 1
  SH2ADD s2, s5, s2
  SW s3, 0(s2)
  BEQ s9, zero, bb15
  # implict jump to bb13
bb13:   # loop depth 1
  ADDIW s0, s0, 1
  BGE s10, s0, bb14
  JAL zero, bb4
bb14:   # loop depth 1
  JAL zero, bb10
bb15:   # loop depth 1
  LA s3, e
  LA s6, dis
  SLLIW s2, s5, 6
  ADDI s4, zero, 1
  ADD s3, s3, s2
  SH2ADD s2, s5, s6
  # implict jump to bb16
bb16:   # loop depth 2
  LUI s6, 16
  SH2ADD s5, s4, s3
  ADDIW s6, s6, -1
  LW s5, 0(s5)
  SLT s6, s5, s6
  BNE s6, zero, bb19
  # implict jump to bb17
bb17:   # loop depth 2
  ADDIW s4, s4, 1
  BGE a0, s4, bb18
  JAL zero, bb13
bb18:   # loop depth 2
  JAL zero, bb16
bb19:   # loop depth 2
  LA s6, dis
  SH2ADD s6, s4, s6
  LW s7, 0(s6)
  LW s8, 0(s2)
  ADDW s8, s8, s5
  BLT s8, s7, bb20
  JAL zero, bb17
bb20:   # loop depth 2
  LW s7, 0(s2)
  ADDW s5, s7, s5
  SW s5, 0(s6)
  JAL zero, bb17
bb21:   # loop depth 1
  LUI s1, 16
  ADDI s4, zero, 1
  ADDIW s1, s1, -1
  ADD s5, zero, zero
  ADD s2, zero, s1
  # implict jump to bb22
bb22:   # loop depth 2
  LA s1, dis
  SH2ADD s1, s4, s1
  LW s3, 0(s1)
  BLT s3, s2, bb33
  # implict jump to bb23
bb23:   # loop depth 2
  ADD s1, zero, zero
  # implict jump to bb24
bb24:   # loop depth 2
  BNE s1, zero, bb32
  # implict jump to bb25
bb25:   # loop depth 2
  # implict jump to bb26
bb26:   # loop depth 2
  BNE s1, zero, bb31
  # implict jump to bb27
bb27:   # loop depth 2
  # implict jump to bb28
bb28:   # loop depth 2
  ADDIW s4, s4, 1
  BGE a0, s4, bb30
  # implict jump to bb29
bb29:   # loop depth 1
  JAL zero, bb12
bb30:   # loop depth 2
  JAL zero, bb22
bb31:   # loop depth 2
  ADD s2, s3, zero
  JAL zero, bb28
bb32:   # loop depth 2
  ADD s5, s4, zero
  JAL zero, bb26
bb33:   # loop depth 2
  LA s1, book
  SH2ADD s1, s4, s1
  LW s1, 0(s1)
  SLTIU s1, s1, 1
  JAL zero, bb24
bb34:   # loop depth 0
  ADDI s0, zero, 1
  # implict jump to bb35
bb35:   # loop depth 1
  LA s1, e
  LA s4, dis
  LA s5, book
  SH2ADD s2, s0, s1
  ADDIW s1, s0, 1
  LW s3, 64(s2)
  SH2ADD s2, s0, s4
  SH2ADD s0, s0, s5
  SW s3, 0(s2)
  SW zero, 0(s0)
  BGE a0, s1, bb37
  # implict jump to bb36
bb36:   # loop depth 0
  JAL zero, bb3
bb37:   # loop depth 1
  ADD s0, s1, zero
  JAL zero, bb35
bb38:   # loop depth 0
  ADDI s0, zero, 1
  # implict jump to bb39
bb39:   # loop depth 1
  LA s2, e
  LA s3, m
  CALL getint
  ADD s1, a0, zero
  ADDIW s0, s0, 1
  SLLIW s1, s1, 6
  CALL getint
  ADD s2, s2, s1
  ADD s1, a0, zero
  CALL getint
  SH2ADD s2, s1, s2
  ADD s1, a0, zero
  SW s1, 0(s2)
  LW s1, 0(s3)
  BGE s1, s0, bb40
  JAL zero, bb2
bb40:   # loop depth 1
  JAL zero, bb39
bb41:   # loop depth 0
  ADDI s1, zero, 1
  # implict jump to bb42
bb42:   # loop depth 1
  BEQ s5, zero, bb45
  # implict jump to bb43
bb43:   # loop depth 1
  ADDIW s1, s1, 1
  BGE s3, s1, bb44
  JAL zero, bb1
bb44:   # loop depth 1
  JAL zero, bb42
bb45:   # loop depth 1
  LA s6, e
  SLLIW s4, s1, 6
  ADDI s0, zero, 1
  ADD s4, s6, s4
  # implict jump to bb46
bb46:   # loop depth 2
  BEQ s1, s0, bb50
  # implict jump to bb47
bb47:   # loop depth 2
  LUI s7, 16
  SH2ADD s6, s0, s4
  ADDIW s7, s7, -1
  SW s7, 0(s6)
  # implict jump to bb48
bb48:   # loop depth 2
  ADDIW s0, s0, 1
  BGE s3, s0, bb49
  JAL zero, bb43
bb49:   # loop depth 2
  JAL zero, bb46
bb50:   # loop depth 2
  ADDI s7, zero, 0
  SH2ADD s6, s0, s4
  SW s7, 0(s6)
  JAL zero, bb48
