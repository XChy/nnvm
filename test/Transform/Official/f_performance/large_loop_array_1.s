.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss







.section .data
COUNT:
.word 0x0007a120
.CONSTANT.7.0:
.word 0x00000000
.CONSTANT.7.1:
.word 0x3f800000
.CONSTANT.7.2:
.word 0x3dcccccd
.CONSTANT.7.3:
.word 0x3e4ccccd
.CONSTANT.7.4:
.word 0x358637bd
.CONSTANT.7.5:
.word 0x58a29bc0
.section .text
main:   # loop depth 0
  LUI t0, 1048572
  ADDIW t0, t0, -48
  ADD sp, sp, t0
  LUI t6, 4
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  SD ra, 0(t6)
  LUI t6, 4
  ADDIW t6, t6, 8
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 4
  ADDIW t6, t6, 16
  ADD t6, t6, sp
  SD s1, 0(t6)
  LUI t6, 4
  ADDIW t6, t6, 24
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t0, 4
  ADDIW t0, t0, 32
  ADD t0, t0, sp
  FSD fs0, 0(t0)
  LUI t0, 4
  ADDIW t0, t0, 40
  ADD t0, t0, sp
  FSD fs1, 0(t0)
  LA t0, .CONSTANT.7.0
  LA t1, .CONSTANT.7.0
  LA s1, COUNT
  ADDI s2, zero, 0
  FLW fs0, 0(t0)
  FLW fs1, 0(t1)
  CALL getint
  FSGNJ.S fs0, fs0, fs1
  ADD s0, a0, zero
  ADDI a0, zero, 22
  CALL _sysy_starttime
  LW a0, 0(s1)
  BLT s2, a0, bb5
  # implict jump to bb1
bb1:   # loop depth 0
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb2
bb2:   # loop depth 0
  LA t0, .CONSTANT.7.4
  LA t1, .CONSTANT.7.4
  LA s0, .CONSTANT.7.5
  ADDI a0, zero, 39
  FLW ft0, 0(t0)
  FLW ft1, 0(t1)
  FSGNJ.S fs0, ft0, ft1
  CALL _sysy_stoptime
  FLW ft0, 0(s0)
  FSGNJN.S ft1, fs0, fs0
  FSUB.S ft0, fs1, ft0
  FLE.S t1, ft1, ft0
  FLE.S t0, ft0, fs0
  OR t0, t0, t1
  BNE t0, zero, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  ADDI a0, zero, 1
  CALL putint
  ADDI a0, zero, 1
  LUI ra, 4
  ADDIW ra, ra, 0
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 4
  ADDIW t6, t6, 8
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t6, 4
  ADDIW t6, t6, 16
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t6, 4
  ADDIW t6, t6, 24
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t6, 4
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  FLD fs0, 0(t6)
  LUI t6, 4
  ADDIW t6, t6, 40
  ADD t6, t6, sp
  FLD fs1, 0(t6)
  LUI t0, 4
  ADDIW t0, t0, 48
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb4:   # loop depth 0
  ADD a0, zero, zero
  CALL putint
  ADD a0, zero, zero
  LUI ra, 4
  ADDIW ra, ra, 0
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 4
  ADDIW t6, t6, 8
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t6, 4
  ADDIW t6, t6, 16
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t6, 4
  ADDIW t6, t6, 24
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t6, 4
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  FLD fs0, 0(t6)
  LUI t6, 4
  ADDIW t6, t6, 40
  ADD t6, t6, sp
  FLD fs1, 0(t6)
  LUI t0, 4
  ADDIW t0, t0, 48
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb5:   # loop depth 0
  LA t0, .CONSTANT.7.1
  LA a1, .CONSTANT.7.1
  FSGNJ.S ft1, fs0, fs0
  ADD t1, zero, zero
  FLW ft0, 0(t0)
  FSGNJ.S fs1, fs0, fs0
  ADD t2, zero, zero
  ADDI a3, zero, 0
  FLW ft2, 0(a1)
  FSGNJ.S ft3, ft0, ft2
  FSGNJ.S ft2, ft3, ft3
  # implict jump to bb6
bb6:   # loop depth 1
  ADDI t0, zero, 10
  REMW t0, t2, t0
  LA a1, .CONSTANT.7.2
  LA a2, .CONSTANT.7.3
  FLW ft0, 0(a1)
  FLW ft4, 0(a2)
  FADD.S ft1, ft1, ft0
  FADD.S ft2, ft2, ft4
  BNE t0, zero, bb26
  # implict jump to bb7
bb7:   # loop depth 1
  # implict jump to bb8
bb8:   # loop depth 1
  BNE t0, zero, bb25
  # implict jump to bb9
bb9:   # loop depth 1
  # implict jump to bb10
bb10:   # loop depth 1
  BLT t1, s0, bb21
  # implict jump to bb11
bb11:   # loop depth 1
  # implict jump to bb12
bb12:   # loop depth 1
  BLT a3, s0, bb17
  # implict jump to bb13
bb13:   # loop depth 1
  FSGNJ.S ft0, fs0, fs0
  # implict jump to bb14
bb14:   # loop depth 1
  ADDIW t2, t2, 1
  FADD.S fs1, fs1, ft0
  BLT t2, a0, bb16
  # implict jump to bb15
bb15:   # loop depth 0
  JAL zero, bb2
bb16:   # loop depth 1
  JAL zero, bb6
bb17:   # loop depth 1
  FSGNJ.S ft0, fs0, fs0
  ADD t0, zero, zero
  # implict jump to bb18
bb18:   # loop depth 2
  SLLIW a1, t0, 2
  ADDIW t0, t0, 1
  LUI a2, 2
  ADDIW a2, a2, 0
  ADD a2, a2, sp
  ADD a2, a2, a1
  ADDI t6, sp, 0
  ADD a1, t6, a1
  FLW ft4, 0(a2)
  FLW ft5, 0(a1)
  FMUL.S ft4, ft4, ft5
  FADD.S ft0, ft0, ft4
  BLT t0, s0, bb20
  # implict jump to bb19
bb19:   # loop depth 1
  JAL zero, bb14
bb20:   # loop depth 2
  JAL zero, bb18
bb21:   # loop depth 1
  # implict jump to bb22
bb22:   # loop depth 2
  FCVT.S.W ft0, t1
  SLLIW t0, t1, 2
  LUI a1, 2
  ADDIW a1, a1, 0
  ADD a1, a1, sp
  ADD a1, a1, t0
  ADDI t6, sp, 0
  ADD t0, t6, t0
  FADD.S ft4, ft1, ft0
  ADDIW t1, t1, 1
  FADD.S ft0, ft2, ft0
  FSW ft4, 0(a1)
  FSW ft0, 0(t0)
  BLT t1, s0, bb24
  # implict jump to bb23
bb23:   # loop depth 1
  JAL zero, bb12
bb24:   # loop depth 2
  JAL zero, bb22
bb25:   # loop depth 1
  FSGNJ.S ft1, fs0, fs0
  JAL zero, bb10
bb26:   # loop depth 1
  FSGNJ.S ft2, ft3, ft3
  JAL zero, bb8
