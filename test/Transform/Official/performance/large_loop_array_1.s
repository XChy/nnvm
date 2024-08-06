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
.word 0x58a29bc0
.CONSTANT.7.3:
.word 0x358637bd
.CONSTANT.7.4:
.word 0x3dcccccd
.CONSTANT.7.5:
.word 0x3e4ccccd
.section .text
main:   # loop depth 0
  LUI t0, 1048572
  ADDIW t0, t0, -112
  ADD sp, sp, t0
  SD ra, 0(sp)
  SD s5, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs2, 32(sp)
  FSD fs3, 40(sp)
  FSD fs4, 48(sp)
  FSD fs5, 56(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  CALL getint
  ADD s1, a0, zero
  ADDI a0, zero, 22
  CALL _sysy_starttime
  LA a0, COUNT
  LW s2, 0(a0)
  ADDI a0, zero, 0
  BLT a0, s2, bb8
  # implict jump to bb1
bb1:   # loop depth 0
  LA a0, .CONSTANT.7.0
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.0
  FLW fs1, 0(a0)
  FSGNJ.S fs3, fs0, fs1
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI a0, zero, 39
  CALL _sysy_stoptime
  LA a0, .CONSTANT.7.2
  FLW fs0, 0(a0)
  FSUB.S fs0, fs3, fs0
  LA a0, .CONSTANT.7.3
  FLW fs1, 0(a0)
  FLE.S a0, fs0, fs1
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
  LD s5, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  FLD fs4, 48(sp)
  FLD fs5, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  LUI t0, 4
  ADDIW t0, t0, 112
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb6:   # loop depth 0
  ADDI a0, zero, 10
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s5, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  FLD fs4, 48(sp)
  FLD fs5, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  LUI t0, 4
  ADDIW t0, t0, 112
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb7:   # loop depth 0
  LA a0, .CONSTANT.7.3
  FLW fs1, 0(a0)
  LA a0, .CONSTANT.7.3
  FLW fs2, 0(a0)
  FSGNJN.S fs1, fs1, fs2
  FLE.S a0, fs1, fs0
  JAL zero, bb4
bb8:   # loop depth 0
  ADD s3, zero, zero
  ADD s0, zero, zero
  LA a0, .CONSTANT.7.0
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.0
  FLW fs1, 0(a0)
  FSGNJ.S fs3, fs0, fs1
  LA a0, .CONSTANT.7.0
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.0
  FLW fs1, 0(a0)
  FSGNJ.S fs1, fs0, fs1
  LA a0, .CONSTANT.7.1
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.1
  FLW fs2, 0(a0)
  FSGNJ.S fs2, fs0, fs2
  # implict jump to bb9
bb9:   # loop depth 1
  ADDI a0, zero, 10
  REMW a0, s3, a0
  BNE a0, zero, bb26
  # implict jump to bb10
bb10:   # loop depth 1
  LA a0, .CONSTANT.7.4
  FLW fs0, 0(a0)
  FADD.S fs1, fs1, fs0
  LA a0, .CONSTANT.7.5
  FLW fs0, 0(a0)
  FADD.S fs2, fs2, fs0
  # implict jump to bb11
bb11:   # loop depth 1
  BLT s0, s1, bb22
  # implict jump to bb12
bb12:   # loop depth 0
  # implict jump to bb13
bb13:   # loop depth 1
  BLT zero, s1, bb18
  # implict jump to bb14
bb14:   # loop depth 0
  LA a0, .CONSTANT.7.0
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.0
  FLW fs4, 0(a0)
  FSGNJ.S fs0, fs0, fs4
  # implict jump to bb15
bb15:   # loop depth 1
  FADD.S fs3, fs3, fs0
  ADDIW s3, s3, 1
  BLT s3, s2, bb17
  # implict jump to bb16
bb16:   # loop depth 0
  JAL zero, bb2
bb17:   # loop depth 1433491280
  JAL zero, bb9
bb18:   # loop depth 1
  ADD a0, zero, zero
  LA s4, .CONSTANT.7.0
  FLW fs0, 0(s4)
  LA s4, .CONSTANT.7.0
  FLW fs4, 0(s4)
  FSGNJ.S fs0, fs0, fs4
  # implict jump to bb19
bb19:   # loop depth 2
  SLLIW s4, a0, 2
  ADDI t6, sp, 104
  ADD s5, t6, s4
  FLW fs4, 0(s5)
  LUI t6, 2
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  ADD s4, t6, s4
  FLW fs5, 0(s4)
  FMUL.S fs4, fs4, fs5
  FADD.S fs0, fs0, fs4
  ADDIW a0, a0, 1
  BLT a0, s1, bb21
  # implict jump to bb20
bb20:   # loop depth 1433488048
  JAL zero, bb15
bb21:   # loop depth 1433484928
  JAL zero, bb19
bb22:   # loop depth 1
  # implict jump to bb23
bb23:   # loop depth 2
  SLLIW a0, s0, 2
  ADDI t6, sp, 104
  ADD s4, t6, a0
  FCVT.S.W fs0, s0
  FADD.S fs4, fs1, fs0
  FSW fs4, 0(s4)
  LUI t6, 2
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  ADD a0, t6, a0
  FADD.S fs0, fs2, fs0
  FSW fs0, 0(a0)
  ADDIW s0, s0, 1
  BLT s0, s1, bb25
  # implict jump to bb24
bb24:   # loop depth 1433480256
  JAL zero, bb13
bb25:   # loop depth 1433478736
  JAL zero, bb23
bb26:   # loop depth 1
  LA a0, .CONSTANT.7.1
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.1
  FLW fs1, 0(a0)
  FSGNJ.S fs2, fs0, fs1
  LA a0, .CONSTANT.7.0
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.0
  FLW fs1, 0(a0)
  FSGNJ.S fs1, fs0, fs1
  JAL zero, bb11
