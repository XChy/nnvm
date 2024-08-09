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
.word 0x358637bd
.CONSTANT.7.3:
.word 0x5b00bf8e
.CONSTANT.7.4:
.word 0x3dcccccd
.CONSTANT.7.5:
.word 0x3e4ccccd
.section .text
main:   # loop depth 0
  LUI t0, 1048564
  ADDIW t0, t0, 1040
  ADD sp, sp, t0
  SD ra, 0(sp)
  FSD fs2, 8(sp)
  FSD fs3, 16(sp)
  FSD fs4, 24(sp)
  FSD fs5, 32(sp)
  FSD fs6, 40(sp)
  FSD fs7, 48(sp)
  SD s0, 56(sp)
  SD s1, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  FSD fs0, 96(sp)
  FSD fs1, 104(sp)
  LA a0, .CONSTANT.7.0
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.0
  FLW fs1, 0(a0)
  FSGNJ.S fs0, fs0, fs1
  ADDI a0, zero, 22
  CALL _sysy_starttime
  LA a0, COUNT
  LW s2, 0(a0)
  ADDI a0, zero, 0
  BLT a0, s2, bb8
  # implict jump to bb1
bb1:   # loop depth 0
  FSGNJ.S fs4, fs0, fs0
  # implict jump to bb2
bb2:   # loop depth 0
  LA a0, .CONSTANT.7.2
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.2
  FLW fs1, 0(a0)
  FSGNJ.S fs0, fs0, fs1
  ADDI a0, zero, 39
  CALL _sysy_stoptime
  LA a0, .CONSTANT.7.3
  FLW fs1, 0(a0)
  FSUB.S fs1, fs4, fs1
  FCVT.W.S a0, fs1, rtz
  FCVT.S.W fs1, a0
  FLE.S a0, fs1, fs0
  BNE a0, zero, bb7
  # implict jump to bb3
bb3:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 0
  BNE a0, zero, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  ADDI a0, zero, 1
  CALL putint
  ADDI a0, zero, 1
  LD ra, 0(sp)
  FLD fs2, 8(sp)
  FLD fs3, 16(sp)
  FLD fs4, 24(sp)
  FLD fs5, 32(sp)
  FLD fs6, 40(sp)
  FLD fs7, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  FLD fs0, 96(sp)
  FLD fs1, 104(sp)
  LUI t0, 12
  ADDIW t0, t0, -1040
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb6:   # loop depth 0
  ADDI a0, zero, 10
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  FLD fs2, 8(sp)
  FLD fs3, 16(sp)
  FLD fs4, 24(sp)
  FLD fs5, 32(sp)
  FLD fs6, 40(sp)
  FLD fs7, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  FLD fs0, 96(sp)
  FLD fs1, 104(sp)
  LUI t0, 12
  ADDIW t0, t0, -1040
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb7:   # loop depth 0
  FSGNJN.S fs0, fs0, fs0
  FLE.S a0, fs0, fs1
  JAL zero, bb4
bb8:   # loop depth 0
  LA a0, .CONSTANT.7.1
  FLW fs1, 0(a0)
  LA a0, .CONSTANT.7.1
  FLW fs2, 0(a0)
  FSGNJ.S fs2, fs1, fs2
  ADD s0, zero, zero
  ADD s1, zero, zero
  FSGNJ.S fs4, fs0, fs0
  FSGNJ.S fs1, fs0, fs0
  FSGNJ.S fs3, fs2, fs2
  # implict jump to bb9
bb9:   # loop depth 1
  ADDI a0, zero, 10
  REMW a0, s1, a0
  BNE a0, zero, bb23
  # implict jump to bb10
bb10:   # loop depth 1
  LA a0, .CONSTANT.7.4
  FLW fs5, 0(a0)
  FADD.S fs1, fs1, fs5
  LA a0, .CONSTANT.7.5
  FLW fs5, 0(a0)
  FADD.S fs3, fs3, fs5
  # implict jump to bb11
bb11:   # loop depth 1
  LUI a0, 1
  ADDIW a0, a0, 1904
  SLT a0, s0, a0
  BNE a0, zero, bb19
  # implict jump to bb12
bb12:   # loop depth 1
  # implict jump to bb13
bb13:   # loop depth 1
  ADD a0, zero, zero
  FSGNJ.S fs5, fs0, fs0
  # implict jump to bb14
bb14:   # loop depth 2
  SLLIW s3, a0, 2
  ADDI t6, sp, 112
  ADD s4, t6, s3
  FLW fs6, 0(s4)
  LUI t6, 6
  ADDIW t6, t6, -464
  ADD t6, t6, sp
  ADD s3, t6, s3
  FLW fs7, 0(s3)
  FMUL.S fs6, fs6, fs7
  FADD.S fs5, fs5, fs6
  ADDIW a0, a0, 1
  LUI s3, 1
  ADDIW s3, s3, 1904
  SLT s3, a0, s3
  BNE s3, zero, bb18
  # implict jump to bb15
bb15:   # loop depth 1
  FADD.S fs4, fs4, fs5
  ADDIW s1, s1, 1
  BLT s1, s2, bb17
  # implict jump to bb16
bb16:   # loop depth 0
  JAL zero, bb2
bb17:   # loop depth 1
  JAL zero, bb9
bb18:   # loop depth 2
  JAL zero, bb14
bb19:   # loop depth 1
  # implict jump to bb20
bb20:   # loop depth 2
  SLLIW a0, s0, 2
  ADDI t6, sp, 112
  ADD s3, t6, a0
  FCVT.S.W fs5, s0
  FADD.S fs6, fs1, fs5
  FSW fs6, 0(s3)
  LUI t6, 6
  ADDIW t6, t6, -464
  ADD t6, t6, sp
  ADD a0, t6, a0
  FADD.S fs5, fs3, fs5
  FSW fs5, 0(a0)
  ADDIW s0, s0, 1
  LUI a0, 1
  ADDIW a0, a0, 1904
  SLT a0, s0, a0
  BNE a0, zero, bb22
  # implict jump to bb21
bb21:   # loop depth 1
  JAL zero, bb13
bb22:   # loop depth 2
  JAL zero, bb20
bb23:   # loop depth 1
  FSGNJ.S fs3, fs2, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb11
