.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss











.section .data
.CONSTANT.7.0:
.word 0x3f8ccccd
.CONSTANT.7.1:
.word 0x3f800000
.CONSTANT.7.2:
.word 0x4099999a
.CONSTANT.7.3:
.word 0x3fcccccd
.CONSTANT.7.4:
.word 0x40f33333
.CONSTANT.7.5:
.word 0x40dccccd
.CONSTANT.7.6:
.word 0x3c23d70a
.CONSTANT.7.7:
.word 0x41180000
.CONSTANT.7.8:
.word 0x3c83126f
.CONSTANT.7.9:
.word 0x3d9ba5e3
.CONSTANT.7.10:
.word 0x3d8d4fdf
.section .text
main:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  FSD fs0, 24(sp)
  FSD fs1, 32(sp)
  FSD fs2, 40(sp)
  LA t0, .CONSTANT.7.0
  LA t1, .CONSTANT.7.0
  LA t2, .CONSTANT.7.1
  LA a0, .CONSTANT.7.1
  FLW ft0, 0(t0)
  LA t0, .CONSTANT.7.2
  LA a1, .CONSTANT.7.2
  ADDI s1, zero, 0
  FLW ft1, 0(t1)
  FLW ft2, 0(t2)
  FSGNJ.S fs2, ft0, ft1
  FLW ft0, 0(a0)
  FLW ft1, 0(t0)
  FSGNJ.S fs1, ft2, ft0
  FLW ft0, 0(a1)
  FSGNJ.S fs0, ft1, ft0
  CALL getint
  ADD s0, a0, zero
  ADDI a0, zero, 41
  CALL _sysy_starttime
  BLT s1, s0, bb9
  # implict jump to bb1
bb1:   # loop depth 0
  # implict jump to bb2
bb2:   # loop depth 0
  BLT s1, s0, bb5
  # implict jump to bb3
bb3:   # loop depth 0
  # implict jump to bb4
bb4:   # loop depth 0
  ADDI a0, zero, 43
  CALL _sysy_stoptime
  FADD.S ft0, fs0, fs2
  FSUB.S fa0, ft0, fs1
  CALL putfloat
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  FLD fs0, 24(sp)
  FLD fs1, 32(sp)
  FLD fs2, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb5:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb6
bb6:   # loop depth 1
  LA t1, .CONSTANT.7.8
  LA t2, .CONSTANT.7.9
  LA a0, .CONSTANT.7.10
  FLW ft0, 0(t1)
  FLW ft1, 0(t2)
  FADD.S fs0, fs0, ft0
  ADDIW t0, t0, 1
  FLW ft0, 0(a0)
  FADD.S fs2, fs2, ft1
  FADD.S fs1, fs1, ft0
  BLT t0, s0, bb8
  # implict jump to bb7
bb7:   # loop depth 1
  JAL zero, bb4
bb8:   # loop depth 1
  JAL zero, bb6
bb9:   # loop depth 0
  ADD t1, zero, zero
  ADDI t0, zero, 1
  # implict jump to bb10
bb10:   # loop depth 1
  LA t2, .CONSTANT.7.3
  LA a0, .CONSTANT.7.4
  LA a1, .CONSTANT.7.5
  FLW ft0, 0(t2)
  LA t2, .CONSTANT.7.6
  FLW ft1, 0(a0)
  FSUB.S ft0, fs0, ft0
  FSUB.S ft1, fs2, ft1
  FLW ft2, 0(a1)
  FSUB.S ft2, fs1, ft2
  FLW ft4, 0(t2)
  FMUL.S ft3, ft0, ft1
  FMUL.S ft3, ft3, ft2
  FDIV.S ft3, ft4, ft3
  BLT t0, s0, bb15
  # implict jump to bb11
bb11:   # loop depth 1
  # implict jump to bb12
bb12:   # loop depth 1
  ADDIW t1, t1, 1
  BLT t1, s0, bb14
  # implict jump to bb13
bb13:   # loop depth 1
  JAL zero, bb2
bb14:   # loop depth 1
  JAL zero, bb10
bb15:   # loop depth 1
  LA t2, .CONSTANT.7.7
  LA a0, .CONSTANT.7.7
  FLW ft4, 0(t2)
  FLW ft5, 0(a0)
  FSGNJ.S ft4, ft4, ft5
  FMUL.S ft2, ft2, ft4
  FMUL.S ft1, ft1, ft4
  FMUL.S ft0, ft0, ft4
  FMUL.S ft2, ft2, ft3
  FMUL.S ft1, ft1, ft3
  FMUL.S ft0, ft0, ft3
  # implict jump to bb16
bb16:   # loop depth 2
  ADDIW t0, t0, 1
  FSUB.S fs1, fs1, ft2
  FSUB.S fs2, fs2, ft1
  FSUB.S fs0, fs0, ft0
  BLT t0, s0, bb18
  # implict jump to bb17
bb17:   # loop depth 2
  JAL zero, bb12
bb18:   # loop depth 2
  JAL zero, bb16
