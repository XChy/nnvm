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
.word 0x41180000
.CONSTANT.7.4:
.word 0x3fcccccd
.CONSTANT.7.5:
.word 0x40f33333
.CONSTANT.7.6:
.word 0x40dccccd
.CONSTANT.7.7:
.word 0x3c23d70a
.CONSTANT.7.8:
.word 0x3c83126f
.CONSTANT.7.9:
.word 0x3d9ba5e3
.CONSTANT.7.10:
.word 0x3d8d4fdf
.section .text
main:   # loop depth 0
  ADDI sp, sp, -128
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  FSD fs0, 56(sp)
  FSD fs1, 64(sp)
  FSD fs2, 72(sp)
  FSD fs3, 80(sp)
  FSD fs4, 88(sp)
  FSD fs5, 96(sp)
  FSD fs6, 104(sp)
  FSD fs7, 112(sp)
  FSD fs8, 120(sp)
  LA s0, .CONSTANT.7.0
  LA s1, .CONSTANT.7.0
  LA s3, .CONSTANT.7.1
  LA s4, .CONSTANT.7.1
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.2
  LA s5, .CONSTANT.7.2
  ADDI s2, zero, 0
  FLW fs1, 0(s1)
  FLW fs2, 0(s3)
  FSGNJ.S fs0, fs0, fs1
  FLW fs1, 0(s4)
  FLW fs3, 0(s0)
  FSGNJ.S fs1, fs2, fs1
  FLW fs2, 0(s5)
  CALL getint
  FSGNJ.S fs2, fs3, fs2
  ADD s1, a0, zero
  ADDI a0, zero, 41
  CALL _sysy_starttime
  BLT s2, s1, bb9
  # implict jump to bb1
bb1:   # loop depth 0
  # implict jump to bb2
bb2:   # loop depth 0
  BLT s2, s1, bb5
  # implict jump to bb3
bb3:   # loop depth 0
  # implict jump to bb4
bb4:   # loop depth 0
  ADDI a0, zero, 43
  CALL _sysy_stoptime
  FADD.S fa0, fs2, fs0
  FSUB.S fa0, fa0, fs1
  CALL putfloat
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  FLD fs0, 56(sp)
  FLD fs1, 64(sp)
  FLD fs2, 72(sp)
  FLD fs3, 80(sp)
  FLD fs4, 88(sp)
  FLD fs5, 96(sp)
  FLD fs6, 104(sp)
  FLD fs7, 112(sp)
  FLD fs8, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb5:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb6
bb6:   # loop depth 1
  LA s0, .CONSTANT.7.8
  LA s2, .CONSTANT.7.9
  LA s3, .CONSTANT.7.10
  FLW fs3, 0(s0)
  FLW fs4, 0(s2)
  ADDIW a0, a0, 1
  FADD.S fs2, fs2, fs3
  FLW fs3, 0(s3)
  FADD.S fs0, fs0, fs4
  FADD.S fs1, fs1, fs3
  BLT a0, s1, bb8
  # implict jump to bb7
bb7:   # loop depth 0
  JAL zero, bb4
bb8:   # loop depth 1
  JAL zero, bb6
bb9:   # loop depth 0
  LA s0, .CONSTANT.7.3
  LA s3, .CONSTANT.7.3
  ADDI a0, zero, 1
  FLW fs3, 0(s0)
  ADD s0, zero, zero
  FLW fs4, 0(s3)
  FSGNJ.S fs3, fs3, fs4
  # implict jump to bb10
bb10:   # loop depth 1
  LA s3, .CONSTANT.7.4
  LA s4, .CONSTANT.7.5
  LA s5, .CONSTANT.7.6
  FLW fs4, 0(s3)
  LA s3, .CONSTANT.7.7
  FLW fs5, 0(s4)
  FSUB.S fs4, fs2, fs4
  FSUB.S fs5, fs0, fs5
  FLW fs6, 0(s5)
  FSUB.S fs6, fs1, fs6
  FLW fs8, 0(s3)
  FMUL.S fs7, fs4, fs5
  FMUL.S fs7, fs7, fs6
  FDIV.S fs7, fs8, fs7
  BLT a0, s1, bb15
  # implict jump to bb11
bb11:   # loop depth 1
  # implict jump to bb12
bb12:   # loop depth 1
  ADDIW s0, s0, 1
  BLT s0, s1, bb14
  # implict jump to bb13
bb13:   # loop depth 0
  JAL zero, bb2
bb14:   # loop depth 1
  JAL zero, bb10
bb15:   # loop depth 1
  FMUL.S fs4, fs4, fs3
  FMUL.S fs5, fs5, fs3
  FMUL.S fs6, fs6, fs3
  FMUL.S fs4, fs4, fs7
  FMUL.S fs5, fs5, fs7
  FMUL.S fs6, fs6, fs7
  # implict jump to bb16
bb16:   # loop depth 2
  ADDIW a0, a0, 1
  FSUB.S fs0, fs0, fs5
  FSUB.S fs1, fs1, fs6
  FSUB.S fs2, fs2, fs4
  BLT a0, s1, bb18
  # implict jump to bb17
bb17:   # loop depth 1
  JAL zero, bb12
bb18:   # loop depth 2
  JAL zero, bb16
