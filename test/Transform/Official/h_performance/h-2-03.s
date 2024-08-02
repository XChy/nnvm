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
.word 0x5b00bf8e
.CONSTANT.7.3:
.word 0x358637bd
.CONSTANT.7.4:
.word 0x3dcccccd
.CONSTANT.7.5:
.word 0x3e4ccccd
.section .text
main:
  LUI t0, 1048564
  ADDIW t0, t0, 1056
  ADD sp, sp, t0
  SD ra, 0(sp)
  FSD fs0, 8(sp)
  FSD fs1, 16(sp)
  FSD fs2, 24(sp)
  FSD fs3, 32(sp)
  FSD fs4, 40(sp)
  FSD fs5, 48(sp)
  SD s0, 56(sp)
  SD s1, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  ADDI a0, zero, 22
  CALL _sysy_starttime
  LA a0, COUNT
  LW a0, 0(a0)
  ADDI s0, zero, 0
  BLT s0, a0, bb8
  # implict jump to bb1
bb1:
  LA a0, .CONSTANT.7.0
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.0
  FLW fs1, 0(a0)
  FSGNJ.S fs0, fs0, fs1
  # implict jump to bb2
bb2:
  ADDI a0, zero, 39
  CALL _sysy_stoptime
  LA a0, .CONSTANT.7.2
  FLW fs1, 0(a0)
  FSUB.S fs0, fs0, fs1
  FCVT.W.S a0, fs0, rtz
  FCVT.S.W fs0, a0
  LA a0, .CONSTANT.7.3
  FLW fs1, 0(a0)
  FLE.S a0, fs0, fs1
  BNE a0, zero, bb7
  # implict jump to bb3
bb3:
  ADD a0, zero, zero
  # implict jump to bb4
bb4:
  BNE a0, zero, bb6
  # implict jump to bb5
bb5:
  ADDI a0, zero, 1
  CALL putint
  ADDI a0, zero, 1
  LD ra, 0(sp)
  FLD fs0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs2, 24(sp)
  FLD fs3, 32(sp)
  FLD fs4, 40(sp)
  FLD fs5, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LUI t0, 12
  ADDIW t0, t0, -1056
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb6:
  ADDI a0, zero, 10
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  FLD fs0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs2, 24(sp)
  FLD fs3, 32(sp)
  FLD fs4, 40(sp)
  FLD fs5, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LUI t0, 12
  ADDIW t0, t0, -1056
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb7:
  LA a0, .CONSTANT.7.3
  FLW fs1, 0(a0)
  LA a0, .CONSTANT.7.3
  FLW fs2, 0(a0)
  FSGNJN.S fs1, fs1, fs2
  FLE.S a0, fs1, fs0
  JAL zero, bb4
bb8:
  ADD a0, zero, zero
  ADD s0, zero, zero
  LA s1, .CONSTANT.7.0
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs1, 0(s1)
  FSGNJ.S fs0, fs0, fs1
  LA s1, .CONSTANT.7.0
  FLW fs1, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs2, 0(s1)
  FSGNJ.S fs3, fs1, fs2
  LA s1, .CONSTANT.7.1
  FLW fs1, 0(s1)
  LA s1, .CONSTANT.7.1
  FLW fs2, 0(s1)
  FSGNJ.S fs1, fs1, fs2
  # implict jump to bb9
bb9:
  FSGNJ.S fs2, fs1, fs1
  FSGNJ.S fs1, fs3, fs3
  ADDI s1, zero, 10
  REMW s1, s0, s1
  BNE s1, zero, bb23
  # implict jump to bb10
bb10:
  LA s1, .CONSTANT.7.4
  FLW fs3, 0(s1)
  FADD.S fs1, fs1, fs3
  LA s1, .CONSTANT.7.5
  FLW fs3, 0(s1)
  FADD.S fs2, fs2, fs3
  FSGNJ.S fs3, fs2, fs2
  # implict jump to bb11
bb11:
  FSGNJ.S fs2, fs1, fs1
  FSGNJ.S fs1, fs3, fs3
  LUI s1, 1
  ADDIW s1, s1, 1904
  SLT s1, a0, s1
  BNE s1, zero, bb19
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  ADD s1, zero, zero
  LA s2, .CONSTANT.7.0
  FLW fs3, 0(s2)
  LA s2, .CONSTANT.7.0
  FLW fs4, 0(s2)
  FSGNJ.S fs3, fs3, fs4
  # implict jump to bb14
bb14:
  SLLIW s2, s1, 2
  ADDI t5, sp, 88
  ADD s3, t5, s2
  FLW fs4, 0(s3)
  LUI t5, 6
  ADDIW t5, t5, -488
  ADD t5, t5, sp
  ADD s2, t5, s2
  FLW fs5, 0(s2)
  FMUL.S fs4, fs4, fs5
  FADD.S fs3, fs3, fs4
  ADDIW s1, s1, 1
  LUI s2, 1
  ADDIW s2, s2, 1904
  SLT s2, s1, s2
  BNE s2, zero, bb18
  # implict jump to bb15
bb15:
  FADD.S fs0, fs0, fs3
  ADDIW s0, s0, 1
  LA s1, COUNT
  LW s1, 0(s1)
  BLT s0, s1, bb17
  # implict jump to bb16
bb16:
  JAL zero, bb2
bb17:
  FSGNJ.S fs3, fs2, fs2
  JAL zero, bb9
bb18:
  JAL zero, bb14
bb19:
  # implict jump to bb20
bb20:
  SLLIW s1, a0, 2
  ADDI t5, sp, 88
  ADD s2, t5, s1
  FCVT.S.W fs3, a0
  FADD.S fs4, fs2, fs3
  FSW fs4, 0(s2)
  LUI t5, 6
  ADDIW t5, t5, -488
  ADD t5, t5, sp
  ADD s1, t5, s1
  FADD.S fs3, fs1, fs3
  FSW fs3, 0(s1)
  ADDIW a0, a0, 1
  LUI s1, 1
  ADDIW s1, s1, 1904
  SLT s1, a0, s1
  BNE s1, zero, bb22
  # implict jump to bb21
bb21:
  JAL zero, bb13
bb22:
  JAL zero, bb20
bb23:
  LA s1, .CONSTANT.7.1
  FLW fs1, 0(s1)
  LA s1, .CONSTANT.7.1
  FLW fs2, 0(s1)
  FSGNJ.S fs3, fs1, fs2
  LA s1, .CONSTANT.7.0
  FLW fs1, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs2, 0(s1)
  FSGNJ.S fs1, fs1, fs2
  JAL zero, bb11
