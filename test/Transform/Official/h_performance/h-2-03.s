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
  ADDIW t0, t0, 960
  ADD sp, sp, t0
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  FSD fs0, 96(sp)
  FSD fs1, 104(sp)
  FSD fs2, 112(sp)
  FSD fs3, 120(sp)
  FSD fs4, 128(sp)
  FSD fs5, 136(sp)
  FSD fs6, 144(sp)
  FSD fs7, 152(sp)
  FSD fs8, 160(sp)
  FSD fs9, 168(sp)
  FSD fs10, 176(sp)
  FSD fs11, 184(sp)
  ADDI a0, zero, 22
  CALL _sysy_starttime
  LA s0, COUNT
  LW s0, 0(s0)
  ADDI s1, zero, 0
  BLT s1, s0, bb8
  # implict jump to bb1
bb1:
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FSGNJ.S fs0, fs0, fs1
  # implict jump to bb2
bb2:
  ADDI a0, zero, 39
  CALL _sysy_stoptime
  LA s9, .CONSTANT.7.2
  FLW fs10, 0(s9)
  FSUB.S fs0, fs0, fs10
  FCVT.W.S s9, fs0, rtz
  FCVT.S.W fs0, s9
  LA s9, .CONSTANT.7.3
  FLW fs10, 0(s9)
  FLE.S s9, fs0, fs10
  BNE s9, zero, bb7
  # implict jump to bb3
bb3:
  ADD s9, zero, zero
  # implict jump to bb4
bb4:
  BNE s9, zero, bb6
  # implict jump to bb5
bb5:
  ADDI a0, zero, 1
  CALL putint
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  FLD fs0, 96(sp)
  FLD fs1, 104(sp)
  FLD fs2, 112(sp)
  FLD fs3, 120(sp)
  FLD fs4, 128(sp)
  FLD fs5, 136(sp)
  FLD fs6, 144(sp)
  FLD fs7, 152(sp)
  FLD fs8, 160(sp)
  FLD fs9, 168(sp)
  FLD fs10, 176(sp)
  FLD fs11, 184(sp)
  LUI t0, 12
  ADDIW t0, t0, -960
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb6:
  ADDI a0, zero, 10
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  FLD fs0, 96(sp)
  FLD fs1, 104(sp)
  FLD fs2, 112(sp)
  FLD fs3, 120(sp)
  FLD fs4, 128(sp)
  FLD fs5, 136(sp)
  FLD fs6, 144(sp)
  FLD fs7, 152(sp)
  FLD fs8, 160(sp)
  FLD fs9, 168(sp)
  FLD fs10, 176(sp)
  FLD fs11, 184(sp)
  LUI t0, 12
  ADDIW t0, t0, -960
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb7:
  LA s10, .CONSTANT.7.3
  FLW fs10, 0(s10)
  LA s10, .CONSTANT.7.3
  FLW fs11, 0(s10)
  FSGNJN.S fs10, fs10, fs11
  FLE.S s10, fs10, fs0
  ADD s9, s10, zero
  JAL zero, bb4
bb8:
  ADD s0, zero, zero
  ADD s1, zero, zero
  LA s2, .CONSTANT.7.0
  FLW fs1, 0(s2)
  LA s2, .CONSTANT.7.0
  FLW fs2, 0(s2)
  FSGNJ.S fs1, fs1, fs2
  LA s2, .CONSTANT.7.1
  FLW fs2, 0(s2)
  LA s2, .CONSTANT.7.1
  FLW fs3, 0(s2)
  FSGNJ.S fs2, fs2, fs3
  LA s2, .CONSTANT.7.0
  FLW fs3, 0(s2)
  LA s2, .CONSTANT.7.0
  FLW fs4, 0(s2)
  FSGNJ.S fs3, fs3, fs4
  # implict jump to bb9
bb9:
  FSGNJ.S fs4, fs3, fs3
  FSGNJ.S fs5, fs2, fs2
  FSGNJ.S fs6, fs1, fs1
  ADD s2, s1, zero
  ADD s3, s0, zero
  ADDI s4, zero, 10
  REMW s4, s3, s4
  BNE s4, zero, bb24
  # implict jump to bb10
bb10:
  LA s4, .CONSTANT.7.4
  FLW fs7, 0(s4)
  FADD.S fs6, fs6, fs7
  LA s4, .CONSTANT.7.5
  FLW fs7, 0(s4)
  FADD.S fs5, fs5, fs7
  # implict jump to bb11
bb11:
  LUI s4, 1
  ADDIW s4, s4, 1904
  SLT s4, s2, s4
  BNE s4, zero, bb20
  # implict jump to bb12
bb12:
  ADD s4, s2, zero
  # implict jump to bb13
bb13:
  ADD s6, zero, zero
  LA s7, .CONSTANT.7.0
  FLW fs7, 0(s7)
  LA s7, .CONSTANT.7.0
  FLW fs8, 0(s7)
  FSGNJ.S fs7, fs7, fs8
  # implict jump to bb14
bb14:
  FSGNJ.S fs8, fs7, fs7
  ADD s7, s6, zero
  SLLIW s8, s7, 2
  ADDI t5, sp, 192
  ADD s9, t5, s8
  FLW fs9, 0(s9)
  LUI t5, 6
  ADDIW t5, t5, -384
  ADD t5, t5, sp
  ADD s8, t5, s8
  FLW fs10, 0(s8)
  FMUL.S fs9, fs9, fs10
  FADD.S fs8, fs8, fs9
  ADDIW s7, s7, 1
  LUI s8, 1
  ADDIW s8, s8, 1904
  SLT s8, s7, s8
  BNE s8, zero, bb19
  # implict jump to bb15
bb15:
  # implict jump to bb16
bb16:
  FADD.S fs9, fs4, fs8
  ADDIW s8, s3, 1
  LA s9, COUNT
  LW s9, 0(s9)
  BLT s8, s9, bb18
  # implict jump to bb17
bb17:
  FSGNJ.S fs0, fs9, fs9
  JAL zero, bb2
bb18:
  ADD s0, s8, zero
  ADD s1, s4, zero
  FSGNJ.S fs1, fs6, fs6
  FSGNJ.S fs2, fs5, fs5
  FSGNJ.S fs3, fs9, fs9
  JAL zero, bb9
bb19:
  ADD s6, s7, zero
  FSGNJ.S fs7, fs8, fs8
  JAL zero, bb14
bb20:
  # implict jump to bb21
bb21:
  ADD s5, s2, zero
  SLLIW s6, s5, 2
  ADDI t5, sp, 192
  ADD s7, t5, s6
  FCVT.S.W fs7, s5
  FADD.S fs8, fs6, fs7
  FSW fs8, 0(s7)
  LUI t5, 6
  ADDIW t5, t5, -384
  ADD t5, t5, sp
  ADD s6, t5, s6
  FADD.S fs7, fs5, fs7
  FSW fs7, 0(s6)
  ADDIW s5, s5, 1
  LUI s6, 1
  ADDIW s6, s6, 1904
  SLT s6, s5, s6
  BNE s6, zero, bb23
  # implict jump to bb22
bb22:
  ADD s4, s5, zero
  JAL zero, bb13
bb23:
  ADD s2, s5, zero
  JAL zero, bb21
bb24:
  LA s4, .CONSTANT.7.1
  FLW fs7, 0(s4)
  LA s4, .CONSTANT.7.1
  FLW fs8, 0(s4)
  FSGNJ.S fs5, fs7, fs8
  LA s4, .CONSTANT.7.0
  FLW fs7, 0(s4)
  LA s4, .CONSTANT.7.0
  FLW fs8, 0(s4)
  FSGNJ.S fs6, fs7, fs8
  JAL zero, bb11
