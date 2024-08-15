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
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  LA s6, n
  LA s5, m
  LUI s0, 16
  LA s2, e
  CALL getint
  ADDIW s0, s0, -1
  ADD s1, zero, s0
  SW a0, 0(s6)
  CALL getint
  SW a0, 0(s5)
  LW t2, 0(s6)
  SLTI a3, t2, 1
  BEQ a3, zero, bb41
  # implict jump to bb1
bb1:   # loop depth 0
  SLTI t0, a0, 1
  BEQ t0, zero, bb38
  # implict jump to bb2
bb2:   # loop depth 0
  LW a3, 0(s6)
  LA a6, book
  LA s0, dis
  SLTI a5, a3, 1
  BEQ a5, zero, bb34
  # implict jump to bb3
bb3:   # loop depth 0
  ADDIW a4, a3, -1
  ADDI t1, zero, 1
  SLTI t0, a4, 1
  SW t1, 4(a6)
  BEQ t0, zero, bb9
  # implict jump to bb4
bb4:   # loop depth 0
  BEQ a5, zero, bb6
  # implict jump to bb5
bb5:   # loop depth 0
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
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb6:   # loop depth 0
  ADDI s1, zero, 1
  # implict jump to bb7
bb7:   # loop depth 1
  SH2ADD t0, s1, s0
  ADDIW s1, s1, 1
  LW a0, 0(t0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW t0, 0(s6)
  BGE t0, s1, bb8
  JAL zero, bb5
bb8:   # loop depth 1
  JAL zero, bb7
bb9:   # loop depth 0
  ADD a1, zero, zero
  ADDI a2, zero, 1
  # implict jump to bb10
bb10:   # loop depth 1
  BEQ a5, zero, bb21
  # implict jump to bb11
bb11:   # loop depth 1
  ADD t2, zero, zero
  # implict jump to bb12
bb12:   # loop depth 1
  ADDI t1, zero, 1
  SH2ADD t0, t2, a6
  SW t1, 0(t0)
  BEQ a5, zero, bb15
  # implict jump to bb13
bb13:   # loop depth 1
  ADDIW a2, a2, 1
  BGE a4, a2, bb14
  JAL zero, bb4
bb14:   # loop depth 1
  JAL zero, bb10
bb15:   # loop depth 1
  SLLIW t1, t2, 6
  ADDI t0, zero, 1
  ADD a0, s2, t1
  SH2ADD t1, t2, s0
  # implict jump to bb16
bb16:   # loop depth 2
  SH2ADD t2, t0, a0
  LW t2, 0(t2)
  BLT t2, s1, bb19
  # implict jump to bb17
bb17:   # loop depth 2
  ADDIW t0, t0, 1
  BGE a3, t0, bb18
  JAL zero, bb13
bb18:   # loop depth 2
  JAL zero, bb16
bb19:   # loop depth 2
  SH2ADD a7, t0, s0
  LW t3, 0(a7)
  LW t4, 0(t1)
  ADDW t4, t4, t2
  BLT t4, t3, bb20
  JAL zero, bb17
bb20:   # loop depth 2
  LW t3, 0(t1)
  ADDW t2, t3, t2
  SW t2, 0(a7)
  JAL zero, bb17
bb21:   # loop depth 1
  ADDI a0, zero, 1
  ADD t2, zero, zero
  ADD t0, s1, zero
  # implict jump to bb22
bb22:   # loop depth 2
  SH2ADD t1, a0, s0
  LW t1, 0(t1)
  BLT t1, t0, bb33
  # implict jump to bb23
bb23:   # loop depth 2
  ADD a1, zero, zero
  # implict jump to bb24
bb24:   # loop depth 2
  BNE a1, zero, bb32
  # implict jump to bb25
bb25:   # loop depth 2
  # implict jump to bb26
bb26:   # loop depth 2
  BNE a1, zero, bb31
  # implict jump to bb27
bb27:   # loop depth 2
  # implict jump to bb28
bb28:   # loop depth 2
  ADDIW a0, a0, 1
  BGE a3, a0, bb30
  # implict jump to bb29
bb29:   # loop depth 1
  JAL zero, bb12
bb30:   # loop depth 2
  JAL zero, bb22
bb31:   # loop depth 2
  ADD t0, t1, zero
  JAL zero, bb28
bb32:   # loop depth 2
  ADD t2, a0, zero
  JAL zero, bb26
bb33:   # loop depth 2
  SH2ADD a1, a0, a6
  LW a1, 0(a1)
  SLTIU a1, a1, 1
  JAL zero, bb24
bb34:   # loop depth 0
  ADDI t0, zero, 1
  # implict jump to bb35
bb35:   # loop depth 1
  SH2ADD t2, t0, s2
  SH2ADD t1, t0, s0
  LW t2, 64(t2)
  SH2ADD a0, t0, a6
  ADDIW t0, t0, 1
  SW t2, 0(t1)
  SW zero, 0(a0)
  BGE a3, t0, bb37
  # implict jump to bb36
bb36:   # loop depth 0
  JAL zero, bb3
bb37:   # loop depth 1
  JAL zero, bb35
bb38:   # loop depth 0
  ADDI s4, zero, 1
  # implict jump to bb39
bb39:   # loop depth 1
  CALL getint
  ADDIW s4, s4, 1
  SLLIW s0, a0, 6
  CALL getint
  ADD s3, s2, s0
  ADD s0, a0, zero
  CALL getint
  SH2ADD t0, s0, s3
  SW a0, 0(t0)
  LW t0, 0(s5)
  BGE t0, s4, bb40
  JAL zero, bb2
bb40:   # loop depth 1
  JAL zero, bb39
bb41:   # loop depth 0
  ADDI t1, zero, 1
  # implict jump to bb42
bb42:   # loop depth 1
  BEQ a3, zero, bb45
  # implict jump to bb43
bb43:   # loop depth 1
  ADDIW t1, t1, 1
  BGE t2, t1, bb44
  JAL zero, bb1
bb44:   # loop depth 1
  JAL zero, bb42
bb45:   # loop depth 1
  SLLIW a1, t1, 6
  ADDI t0, zero, 1
  ADD a1, s2, a1
  # implict jump to bb46
bb46:   # loop depth 2
  BEQ t1, t0, bb50
  # implict jump to bb47
bb47:   # loop depth 2
  SH2ADD a2, t0, a1
  SW s1, 0(a2)
  # implict jump to bb48
bb48:   # loop depth 2
  ADDIW t0, t0, 1
  BGE t2, t0, bb49
  JAL zero, bb43
bb49:   # loop depth 2
  JAL zero, bb46
bb50:   # loop depth 2
  ADDI a4, zero, 0
  SH2ADD a2, t0, a1
  SW a4, 0(a2)
  JAL zero, bb48
