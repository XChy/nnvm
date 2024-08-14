.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
x:
.space 5600
b:
.space 5600
y:
.space 5600
A:
.space 7840000

.section .data




n:
.word 0x00000578
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
  LA s0, A
  LA s4, b
  LA s3, x
  LA s2, y
  ADD a0, s0, zero
  LA s5, n
  LUI s1, 1
  ADDI s6, zero, 0
  CALL getarray
  ADDIW s1, s1, 1504
  ADD a0, s4, zero
  ADD s1, zero, s1
  CALL getarray
  ADD a0, s3, zero
  CALL getarray
  ADD a0, s2, zero
  CALL getarray
  ADDI a0, zero, 68
  CALL _sysy_starttime
  LW a0, 0(s5)
  BLT s6, a0, bb22
  # implict jump to bb1
bb1:   # loop depth 0
  BLT s6, a0, bb13
  # implict jump to bb2
bb2:   # loop depth 0
  ADDIW t2, a0, -1
  BGE t2, zero, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  ADDI a0, zero, 71
  CALL _sysy_stoptime
  LW a0, 0(s5)
  ADD a1, s3, zero
  CALL putarray
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
bb4:   # loop depth 0
  # implict jump to bb5
bb5:   # loop depth 1
  SH2ADD t0, t2, s2
  MULW a1, t2, s1
  LW t0, 0(t0)
  ADDIW t1, t2, 1
  BLT t1, a0, bb9
  # implict jump to bb6
bb6:   # loop depth 1
  # implict jump to bb7
bb7:   # loop depth 1
  ADD t1, s0, a1
  SH2ADD a1, t2, t1
  SH2ADD t1, t2, s3
  LW a1, 0(a1)
  ADDIW t2, t2, -1
  DIVW t0, t0, a1
  SW t0, 0(t1)
  BGE t2, zero, bb8
  JAL zero, bb3
bb8:   # loop depth 1
  JAL zero, bb5
bb9:   # loop depth 1
  # implict jump to bb10
bb10:   # loop depth 2
  ADD a2, s0, a1
  SH2ADD a2, t1, a2
  SH2ADD a3, t1, s3
  LW a2, 0(a2)
  ADDIW t1, t1, 1
  LW a3, 0(a3)
  MULW a2, a2, a3
  SUBW t0, t0, a2
  BLT t1, a0, bb12
  # implict jump to bb11
bb11:   # loop depth 1
  JAL zero, bb7
bb12:   # loop depth 2
  JAL zero, bb10
bb13:   # loop depth 0
  ADD a1, zero, zero
  ADD t2, zero, zero
  # implict jump to bb14
bb14:   # loop depth 1
  SH2ADD t0, a1, s4
  LW t0, 0(t0)
  BLT zero, a1, bb18
  # implict jump to bb15
bb15:   # loop depth 1
  # implict jump to bb16
bb16:   # loop depth 1
  SH2ADD t1, a1, s2
  ADDW t2, t2, s1
  ADDIW a1, a1, 1
  SW t0, 0(t1)
  BLT a1, a0, bb17
  JAL zero, bb2
bb17:   # loop depth 1
  JAL zero, bb14
bb18:   # loop depth 1
  ADD t1, zero, zero
  ADD a2, s0, t2
  # implict jump to bb19
bb19:   # loop depth 2
  SH2ADD a3, t1, a2
  SH2ADD a4, t1, s2
  LW a3, 0(a3)
  ADDIW t1, t1, 1
  LW a4, 0(a4)
  MULW a3, a3, a4
  SUBW t0, t0, a3
  BLT t1, a1, bb21
  # implict jump to bb20
bb20:   # loop depth 1
  JAL zero, bb16
bb21:   # loop depth 2
  JAL zero, bb19
bb22:   # loop depth 0
  ADD t0, zero, zero
  ADD t1, zero, zero
  ADD a1, zero, zero
  ADD a3, zero, zero
  # implict jump to bb23
bb23:   # loop depth 1
  BLT zero, a1, bb39
  # implict jump to bb24
bb24:   # loop depth 1
  # implict jump to bb25
bb25:   # loop depth 1
  BLT a1, a0, bb29
  # implict jump to bb26
bb26:   # loop depth 1
  # implict jump to bb27
bb27:   # loop depth 1
  ADDW a3, a3, s1
  ADDIW a1, a1, 1
  BLT a1, a0, bb28
  JAL zero, bb1
bb28:   # loop depth 1
  JAL zero, bb23
bb29:   # loop depth 1
  ADD a2, a1, zero
  ADD a4, s0, a3
  # implict jump to bb30
bb30:   # loop depth 2
  SH2ADD a5, a2, a4
  LW t0, 0(a5)
  BLT zero, a1, bb35
  # implict jump to bb31
bb31:   # loop depth 2
  ADD t1, zero, zero
  # implict jump to bb32
bb32:   # loop depth 2
  ADDIW a2, a2, 1
  SW t0, 0(a5)
  BLT a2, a0, bb34
  # implict jump to bb33
bb33:   # loop depth 1
  JAL zero, bb27
bb34:   # loop depth 2
  JAL zero, bb30
bb35:   # loop depth 2
  ADD t1, zero, zero
  ADD t2, zero, zero
  # implict jump to bb36
bb36:   # loop depth 3
  SH2ADD a6, t1, a4
  ADD a7, s0, t2
  LW a6, 0(a6)
  SH2ADD a7, a2, a7
  ADDW t2, t2, s1
  ADDIW t1, t1, 1
  LW a7, 0(a7)
  MULW a6, a6, a7
  SUBW t0, t0, a6
  BLT t1, a1, bb38
  # implict jump to bb37
bb37:   # loop depth 2
  JAL zero, bb32
bb38:   # loop depth 3
  JAL zero, bb36
bb39:   # loop depth 1
  ADD a2, zero, zero
  ADD a4, zero, zero
  # implict jump to bb40
bb40:   # loop depth 2
  ADD a6, s0, a3
  SH2ADD a5, a2, a6
  LW t0, 0(a5)
  BLT zero, a2, bb45
  # implict jump to bb41
bb41:   # loop depth 2
  ADD t1, zero, zero
  # implict jump to bb42
bb42:   # loop depth 2
  ADD t2, s0, a4
  SH2ADD t2, a2, t2
  ADDW a4, a4, s1
  LW t2, 0(t2)
  ADDIW a2, a2, 1
  DIVW t2, t0, t2
  SW t2, 0(a5)
  BLT a2, a1, bb44
  # implict jump to bb43
bb43:   # loop depth 1
  JAL zero, bb25
bb44:   # loop depth 2
  JAL zero, bb40
bb45:   # loop depth 2
  ADD t1, zero, zero
  ADD t2, zero, zero
  # implict jump to bb46
bb46:   # loop depth 3
  SH2ADD a7, t1, a6
  ADD t3, s0, t2
  LW a7, 0(a7)
  SH2ADD t3, a2, t3
  ADDW t2, t2, s1
  ADDIW t1, t1, 1
  LW t3, 0(t3)
  MULW a7, a7, t3
  SUBW t0, t0, a7
  BLT t1, a2, bb48
  # implict jump to bb47
bb47:   # loop depth 2
  JAL zero, bb42
bb48:   # loop depth 3
  JAL zero, bb46
