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
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  LA a0, A
  LA s1, b
  LA s2, x
  LA s3, y
  LA s4, n
  ADDI s0, zero, 0
  CALL getarray
  ADD a0, s1, zero
  CALL getarray
  ADD a0, s2, zero
  CALL getarray
  ADD a0, s3, zero
  CALL getarray
  ADDI a0, zero, 68
  CALL _sysy_starttime
  LW a1, 0(s4)
  BLT s0, a1, bb22
  # implict jump to bb1
bb1:   # loop depth 0
  BLT s0, a1, bb13
  # implict jump to bb2
bb2:   # loop depth 0
  ADDIW a0, a1, -1
  BGE a0, zero, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  LA s0, n
  ADDI a0, zero, 70
  LA s1, x
  CALL _sysy_stoptime
  LW a0, 0(s0)
  ADD a1, s1, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb4:   # loop depth 0
  # implict jump to bb5
bb5:   # loop depth 1
  LA t0, y
  LUI t1, 1
  ADDIW t1, t1, 1504
  SH2ADD t0, a0, t0
  MULW a2, a0, t1
  LW t0, 0(t0)
  ADDIW t1, a0, 1
  BLT t1, a1, bb9
  # implict jump to bb6
bb6:   # loop depth 1
  # implict jump to bb7
bb7:   # loop depth 1
  LA t2, A
  LA a3, x
  ADDIW t1, a0, -1
  ADD t2, t2, a2
  SH2ADD a2, a0, t2
  SH2ADD t2, a0, a3
  LW a0, 0(a2)
  DIVW t0, t0, a0
  SW t0, 0(t2)
  BGE t1, zero, bb8
  JAL zero, bb3
bb8:   # loop depth 1
  ADD a0, t1, zero
  JAL zero, bb5
bb9:   # loop depth 1
  # implict jump to bb10
bb10:   # loop depth 2
  LA t2, A
  LA a4, x
  ADD a3, t2, a2
  ADDIW t2, t1, 1
  SH2ADD a3, t1, a3
  SH2ADD a4, t1, a4
  LW t1, 0(a3)
  LW a3, 0(a4)
  MULW t1, t1, a3
  SUBW t0, t0, t1
  BLT t2, a1, bb12
  # implict jump to bb11
bb11:   # loop depth 1
  JAL zero, bb7
bb12:   # loop depth 2
  ADD t1, t2, zero
  JAL zero, bb10
bb13:   # loop depth 0
  ADD t2, zero, zero
  # implict jump to bb14
bb14:   # loop depth 1
  LA t0, b
  SH2ADD t0, t2, t0
  LW t0, 0(t0)
  BLT zero, t2, bb18
  # implict jump to bb15
bb15:   # loop depth 1
  # implict jump to bb16
bb16:   # loop depth 1
  LA a0, y
  ADDIW t1, t2, 1
  SH2ADD t2, t2, a0
  SW t0, 0(t2)
  BLT t1, a1, bb17
  JAL zero, bb2
bb17:   # loop depth 1
  ADD t2, t1, zero
  JAL zero, bb14
bb18:   # loop depth 1
  LUI t1, 1
  LA a2, A
  ADDIW t1, t1, 1504
  MULW a0, t2, t1
  ADD t1, zero, zero
  ADD a0, a2, a0
  # implict jump to bb19
bb19:   # loop depth 2
  LA a3, y
  SH2ADD a2, t1, a0
  LW a2, 0(a2)
  SH2ADD a3, t1, a3
  ADDIW t1, t1, 1
  LW a3, 0(a3)
  MULW a2, a2, a3
  SUBW t0, t0, a2
  BLT t1, t2, bb21
  # implict jump to bb20
bb20:   # loop depth 1
  JAL zero, bb16
bb21:   # loop depth 2
  JAL zero, bb19
bb22:   # loop depth 0
  ADD t0, zero, zero
  ADD t1, zero, zero
  ADD a2, zero, zero
  # implict jump to bb23
bb23:   # loop depth 1
  LUI t2, 1
  ADDIW t2, t2, 1504
  MULW a3, a2, t2
  BLT zero, a2, bb39
  # implict jump to bb24
bb24:   # loop depth 1
  # implict jump to bb25
bb25:   # loop depth 1
  BLT a2, a1, bb29
  # implict jump to bb26
bb26:   # loop depth 1
  # implict jump to bb27
bb27:   # loop depth 1
  ADDIW a2, a2, 1
  BLT a2, a1, bb28
  JAL zero, bb1
bb28:   # loop depth 1
  JAL zero, bb23
bb29:   # loop depth 1
  LA t0, A
  ADD t2, a2, zero
  ADD a0, t0, a3
  # implict jump to bb30
bb30:   # loop depth 2
  SH2ADD a3, t2, a0
  LW t0, 0(a3)
  BLT zero, a2, bb35
  # implict jump to bb31
bb31:   # loop depth 2
  ADD t1, zero, zero
  # implict jump to bb32
bb32:   # loop depth 2
  ADDIW t2, t2, 1
  SW t0, 0(a3)
  BLT t2, a1, bb34
  # implict jump to bb33
bb33:   # loop depth 1
  JAL zero, bb27
bb34:   # loop depth 2
  JAL zero, bb30
bb35:   # loop depth 2
  ADD t1, zero, zero
  # implict jump to bb36
bb36:   # loop depth 3
  LUI a4, 1
  ADDIW a4, a4, 1504
  LA a6, A
  MULW a5, t1, a4
  SH2ADD a4, t1, a0
  LW a4, 0(a4)
  ADDIW t1, t1, 1
  ADD a5, a6, a5
  SH2ADD a5, t2, a5
  LW a5, 0(a5)
  MULW a4, a4, a5
  SUBW t0, t0, a4
  BLT t1, a2, bb38
  # implict jump to bb37
bb37:   # loop depth 2
  JAL zero, bb32
bb38:   # loop depth 3
  JAL zero, bb36
bb39:   # loop depth 1
  ADD t2, zero, zero
  # implict jump to bb40
bb40:   # loop depth 2
  LA t0, A
  ADD a0, t0, a3
  SH2ADD a4, t2, a0
  LW t0, 0(a4)
  BLT zero, t2, bb45
  # implict jump to bb41
bb41:   # loop depth 2
  ADD t1, zero, zero
  # implict jump to bb42
bb42:   # loop depth 2
  LUI a0, 1
  LA a6, A
  ADDIW a0, a0, 1504
  MULW a5, t2, a0
  ADDIW a0, t2, 1
  ADD a5, a6, a5
  SH2ADD t2, t2, a5
  LW t2, 0(t2)
  DIVW t2, t0, t2
  SW t2, 0(a4)
  BLT a0, a2, bb44
  # implict jump to bb43
bb43:   # loop depth 1
  JAL zero, bb25
bb44:   # loop depth 2
  ADD t2, a0, zero
  JAL zero, bb40
bb45:   # loop depth 2
  ADD t1, zero, zero
  # implict jump to bb46
bb46:   # loop depth 3
  LUI a5, 1
  ADDIW a5, a5, 1504
  LA a7, A
  MULW a6, t1, a5
  SH2ADD a5, t1, a0
  LW a5, 0(a5)
  ADDIW t1, t1, 1
  ADD a6, a7, a6
  SH2ADD a6, t2, a6
  LW a6, 0(a6)
  MULW a5, a5, a6
  SUBW t0, t0, a5
  BLT t1, t2, bb48
  # implict jump to bb47
bb47:   # loop depth 2
  JAL zero, bb42
bb48:   # loop depth 3
  JAL zero, bb46
