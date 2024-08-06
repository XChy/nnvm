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
  ADDI sp, sp, -112
  SD ra, 0(sp)
  FSD fs4, 8(sp)
  FSD fs5, 16(sp)
  FSD fs6, 24(sp)
  FSD fs7, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  FSD fs0, 72(sp)
  FSD fs1, 80(sp)
  FSD fs2, 88(sp)
  FSD fs3, 96(sp)
  CALL getint
  ADD s1, a0, zero
  ADDI a0, zero, 41
  CALL _sysy_starttime
  ADDI s2, zero, 0
  BLT s2, s1, bb9
  # implict jump to bb1
bb1:   # loop depth 0
  LA a0, .CONSTANT.7.0
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.0
  FLW fs1, 0(a0)
  FSGNJ.S fs2, fs0, fs1
  LA a0, .CONSTANT.7.1
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.1
  FLW fs1, 0(a0)
  FSGNJ.S fs1, fs0, fs1
  LA a0, .CONSTANT.7.2
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.2
  FLW fs3, 0(a0)
  FSGNJ.S fs0, fs0, fs3
  # implict jump to bb2
bb2:   # loop depth 0
  BLT s2, s1, bb5
  # implict jump to bb3
bb3:   # loop depth 0
  # implict jump to bb4
bb4:   # loop depth 0
  FADD.S fs0, fs0, fs2
  FSUB.S fs0, fs0, fs1
  ADDI a0, zero, 43
  CALL _sysy_stoptime
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADD a0, zero, zero
  LD ra, 0(sp)
  FLD fs4, 8(sp)
  FLD fs5, 16(sp)
  FLD fs6, 24(sp)
  FLD fs7, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  FLD fs0, 72(sp)
  FLD fs1, 80(sp)
  FLD fs2, 88(sp)
  FLD fs3, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb5:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb6
bb6:   # loop depth 1
  LA s0, .CONSTANT.7.8
  FLW fs3, 0(s0)
  FADD.S fs0, fs0, fs3
  LA s0, .CONSTANT.7.9
  FLW fs3, 0(s0)
  FADD.S fs2, fs2, fs3
  LA s0, .CONSTANT.7.10
  FLW fs3, 0(s0)
  FADD.S fs1, fs1, fs3
  ADDIW a0, a0, 1
  BLT a0, s1, bb8
  # implict jump to bb7
bb7:   # loop depth 1433445648
  JAL zero, bb4
bb8:   # loop depth 1433443648
  JAL zero, bb6
bb9:   # loop depth 0
  LA a0, .CONSTANT.7.0
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.0
  FLW fs1, 0(a0)
  FSGNJ.S fs2, fs0, fs1
  LA a0, .CONSTANT.7.1
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.1
  FLW fs1, 0(a0)
  FSGNJ.S fs1, fs0, fs1
  LA a0, .CONSTANT.7.2
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.2
  FLW fs3, 0(a0)
  FSGNJ.S fs0, fs0, fs3
  ADDI a0, zero, 1
  ADD s0, zero, zero
  # implict jump to bb10
bb10:   # loop depth 1
  LA s3, .CONSTANT.7.3
  FLW fs3, 0(s3)
  FSUB.S fs3, fs0, fs3
  LA s3, .CONSTANT.7.4
  FLW fs4, 0(s3)
  FSUB.S fs4, fs2, fs4
  LA s3, .CONSTANT.7.5
  FLW fs5, 0(s3)
  FSUB.S fs5, fs1, fs5
  FMUL.S fs6, fs3, fs4
  FMUL.S fs6, fs6, fs5
  LA s3, .CONSTANT.7.6
  FLW fs7, 0(s3)
  FDIV.S fs6, fs7, fs6
  BLT a0, s1, bb15
  # implict jump to bb11
bb11:   # loop depth 0
  # implict jump to bb12
bb12:   # loop depth 1
  ADDIW s0, s0, 1
  BLT s0, s1, bb14
  # implict jump to bb13
bb13:   # loop depth 0
  JAL zero, bb2
bb14:   # loop depth 0
  JAL zero, bb10
bb15:   # loop depth 1
  LA s3, .CONSTANT.7.7
  FLW fs7, 0(s3)
  FMUL.S fs3, fs3, fs7
  FMUL.S fs3, fs3, fs6
  LA s3, .CONSTANT.7.7
  FLW fs7, 0(s3)
  FMUL.S fs4, fs4, fs7
  FMUL.S fs4, fs4, fs6
  LA s3, .CONSTANT.7.7
  FLW fs7, 0(s3)
  FMUL.S fs5, fs5, fs7
  FMUL.S fs5, fs5, fs6
  # implict jump to bb16
bb16:   # loop depth 2
  FSUB.S fs0, fs0, fs3
  FSUB.S fs2, fs2, fs4
  FSUB.S fs1, fs1, fs5
  ADDIW a0, a0, 1
  BLT a0, s1, bb18
  # implict jump to bb17
bb17:   # loop depth 1433441200
  JAL zero, bb12
bb18:   # loop depth 1433376720
  JAL zero, bb16
