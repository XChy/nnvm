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
.word 0x5a940d4e
.section .text
main:   # loop depth 0
  LUI t0, 1048566
  ADDIW t0, t0, 912
  ADD sp, sp, t0
  LUI t6, 10
  ADDIW t6, t6, -960
  ADD t6, t6, sp
  SD ra, 0(t6)
  LUI t6, 10
  ADDIW t6, t6, -952
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 10
  ADDIW t6, t6, -944
  ADD t6, t6, sp
  SD s1, 0(t6)
  LUI t0, 10
  ADDIW t0, t0, -936
  ADD t0, t0, sp
  FSD fs0, 0(t0)
  LUI t0, 10
  ADDIW t0, t0, -928
  ADD t0, t0, sp
  FSD fs1, 0(t0)
  LA t0, .CONSTANT.7.0
  LA t1, .CONSTANT.7.0
  LA s0, COUNT
  ADDI a0, zero, 22
  FLW fs0, 0(t0)
  ADDI s1, zero, 0
  FLW fs1, 0(t1)
  CALL _sysy_starttime
  FSGNJ.S ft0, fs0, fs1
  LW a0, 0(s0)
  BLT s1, a0, bb5
  # implict jump to bb1
bb1:   # loop depth 0
  FSGNJ.S fs1, ft0, ft0
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
  FCVT.W.S t0, ft0, rtz
  FCVT.S.W ft0, t0
  FLE.S t1, ft1, ft0
  FLE.S t0, ft0, fs0
  AND t0, t0, t1
  BNE t0, zero, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  ADDI a0, zero, 1
  CALL putint
  ADDI a0, zero, 1
  LUI ra, 10
  ADDIW ra, ra, -960
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 10
  ADDIW t6, t6, -952
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t6, 10
  ADDIW t6, t6, -944
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t6, 10
  ADDIW t6, t6, -936
  ADD t6, t6, sp
  FLD fs0, 0(t6)
  LUI t6, 10
  ADDIW t6, t6, -928
  ADD t6, t6, sp
  FLD fs1, 0(t6)
  LUI t0, 10
  ADDIW t0, t0, -912
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb4:   # loop depth 0
  ADDI a0, zero, 10
  CALL putint
  ADD a0, zero, zero
  LUI ra, 10
  ADDIW ra, ra, -960
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 10
  ADDIW t6, t6, -952
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t6, 10
  ADDIW t6, t6, -944
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t6, 10
  ADDIW t6, t6, -936
  ADD t6, t6, sp
  FLD fs0, 0(t6)
  LUI t6, 10
  ADDIW t6, t6, -928
  ADD t6, t6, sp
  FLD fs1, 0(t6)
  LUI t0, 10
  ADDIW t0, t0, -912
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb5:   # loop depth 0
  LA t0, .CONSTANT.7.1
  LA t1, .CONSTANT.7.1
  LUI a1, 1
  FSGNJ.S ft1, ft0, ft0
  FLW ft2, 0(t0)
  FSGNJ.S fs1, ft0, ft0
  ADDIW a1, a1, 904
  ADD t2, zero, zero
  FLW ft3, 0(t1)
  ADD t1, zero, zero
  ADD a1, zero, a1
  FSGNJ.S ft3, ft2, ft3
  FSGNJ.S ft2, ft3, ft3
  # implict jump to bb6
bb6:   # loop depth 1
  ADDI t0, zero, 10
  REMW t0, t2, t0
  LA a2, .CONSTANT.7.2
  LA a3, .CONSTANT.7.3
  FLW ft4, 0(a2)
  FLW ft5, 0(a3)
  FADD.S ft1, ft1, ft4
  FADD.S ft2, ft2, ft5
  BNE t0, zero, bb23
  # implict jump to bb7
bb7:   # loop depth 1
  # implict jump to bb8
bb8:   # loop depth 1
  BNE t0, zero, bb22
  # implict jump to bb9
bb9:   # loop depth 1
  # implict jump to bb10
bb10:   # loop depth 1
  BLT t1, a1, bb18
  # implict jump to bb11
bb11:   # loop depth 1
  # implict jump to bb12
bb12:   # loop depth 1
  FSGNJ.S ft4, ft0, ft0
  ADD t0, zero, zero
  # implict jump to bb13
bb13:   # loop depth 2
  SLLIW a2, t0, 2
  ADDIW t0, t0, 1
  LUI a3, 5
  ADDIW a3, a3, -480
  ADD a3, a3, sp
  ADD a3, a3, a2
  ADDI t6, sp, 0
  ADD a2, t6, a2
  FLW ft5, 0(a3)
  FLW ft6, 0(a2)
  FMUL.S ft5, ft5, ft6
  FADD.S ft4, ft4, ft5
  BLT t0, a1, bb17
  # implict jump to bb14
bb14:   # loop depth 1
  FADD.S fs1, fs1, ft4
  ADDIW t2, t2, 1
  BLT t2, a0, bb16
  # implict jump to bb15
bb15:   # loop depth 0
  JAL zero, bb2
bb16:   # loop depth 1
  JAL zero, bb6
bb17:   # loop depth 2
  JAL zero, bb13
bb18:   # loop depth 1
  # implict jump to bb19
bb19:   # loop depth 2
  FCVT.S.W ft4, t1
  SLLIW t0, t1, 2
  LUI a2, 5
  ADDIW a2, a2, -480
  ADD a2, a2, sp
  ADD a2, a2, t0
  ADDI t6, sp, 0
  ADD t0, t6, t0
  FADD.S ft5, ft1, ft4
  ADDIW t1, t1, 1
  FADD.S ft4, ft2, ft4
  FSW ft5, 0(a2)
  FSW ft4, 0(t0)
  BLT t1, a1, bb21
  # implict jump to bb20
bb20:   # loop depth 1
  JAL zero, bb12
bb21:   # loop depth 2
  JAL zero, bb19
bb22:   # loop depth 1
  FSGNJ.S ft1, ft0, ft0
  JAL zero, bb10
bb23:   # loop depth 1
  FSGNJ.S ft2, ft3, ft3
  JAL zero, bb8
