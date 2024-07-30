.global main
.section .bss











.section .data
.CONSTANT.7.0:
.word 0x4099999a
.CONSTANT.7.1:
.word 0x3f8ccccd
.CONSTANT.7.2:
.word 0x3f800000
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
main:
  ADDI sp, sp, -272
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  SD s5, 112(sp)
  SD s6, 120(sp)
  SD s7, 128(sp)
  SD s8, 136(sp)
  FSD fs0, 144(sp)
  FSD fs1, 152(sp)
  FSD fs7, 160(sp)
  FSD fs8, 168(sp)
  SD s9, 176(sp)
  SD s10, 184(sp)
  SD s11, 192(sp)
  FSD fs2, 200(sp)
  FSD fs3, 208(sp)
  FSD fs4, 216(sp)
  FSD fs5, 224(sp)
  FSD fs6, 232(sp)
  FSD fs9, 240(sp)
  FSD fs10, 248(sp)
  FSD fs11, 256(sp)
  CALL getint
  ADD s0, a0, zero
  ADDI a0, zero, 41
  CALL _sysy_starttime
  ADDI s1, zero, 0
  BLT s1, s0, bb9
  # implict jump to bb1
bb1:
  LA s2, .CONSTANT.7.0
  FLW fs0, 0(s2)
  LA s2, .CONSTANT.7.0
  FLW fs1, 0(s2)
  FSGNJ.S ft4, fs0, fs1
  FSW ft4, 28(sp)
  LA s2, .CONSTANT.7.1
  FLW fs1, 0(s2)
  LA s2, .CONSTANT.7.1
  FLW fs2, 0(s2)
  FSGNJ.S ft4, fs1, fs2
  FSW ft4, 32(sp)
  LA s2, .CONSTANT.7.2
  FLW fs2, 0(s2)
  LA s2, .CONSTANT.7.2
  FLW fs3, 0(s2)
  FSGNJ.S fs2, fs2, fs3
  # implict jump to bb2
bb2:
  FLW ft4, 32(sp)
  FLW ft3, 32(sp)
  FSGNJ.S fs9, ft4, ft3
  FLW ft4, 28(sp)
  FLW ft3, 28(sp)
  FSGNJ.S fs1, ft4, ft3
  BLT s1, s0, bb5
  # implict jump to bb3
bb3:
  FSGNJ.S fs6, fs1, fs1
  FSGNJ.S fs10, fs9, fs9
  FSGNJ.S fs7, fs2, fs2
  # implict jump to bb4
bb4:
  FADD.S fs6, fs6, fs10
  FSUB.S fs6, fs6, fs7
  ADDI a0, zero, 43
  CALL _sysy_stoptime
  FSGNJ.S fa0, fs6, fs6
  CALL putfloat
  ADD a0, zero, zero
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD s5, 112(sp)
  LD s6, 120(sp)
  LD s7, 128(sp)
  LD s8, 136(sp)
  FLD fs0, 144(sp)
  FLD fs1, 152(sp)
  FLD fs7, 160(sp)
  FLD fs8, 168(sp)
  LD s9, 176(sp)
  LD s10, 184(sp)
  LD s11, 192(sp)
  FLD fs2, 200(sp)
  FLD fs3, 208(sp)
  FLD fs4, 216(sp)
  FLD fs5, 224(sp)
  FLD fs6, 232(sp)
  FLD fs9, 240(sp)
  FLD fs10, 248(sp)
  FLD fs11, 256(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb5:
  ADD s9, zero, zero
  # implict jump to bb6
bb6:
  ADD s10, s9, zero
  FSGNJ.S fs11, fs2, fs2
  FSGNJ.S fs8, fs9, fs9
  FSGNJ.S fs4, fs1, fs1
  LA s11, .CONSTANT.7.8
  FLW fs0, 0(s11)
  FADD.S fs0, fs4, fs0
  LA s11, .CONSTANT.7.9
  FLW fs4, 0(s11)
  FADD.S fs4, fs8, fs4
  LA s11, .CONSTANT.7.10
  FLW fs8, 0(s11)
  FADD.S fs8, fs11, fs8
  ADDIW s10, s10, 1
  BLT s10, s0, bb8
  # implict jump to bb7
bb7:
  FSGNJ.S fs6, fs0, fs0
  FSGNJ.S fs10, fs4, fs4
  FSGNJ.S fs7, fs8, fs8
  JAL zero, bb4
bb8:
  FSGNJ.S fs1, fs0, fs0
  FSGNJ.S fs9, fs4, fs4
  FSGNJ.S fs2, fs8, fs8
  ADD s9, s10, zero
  JAL zero, bb6
bb9:
  LA s2, .CONSTANT.7.0
  FLW fs3, 0(s2)
  LA s2, .CONSTANT.7.0
  FLW fs4, 0(s2)
  FSGNJ.S ft4, fs3, fs4
  FSW ft4, 24(sp)
  LA s2, .CONSTANT.7.1
  FLW fs4, 0(s2)
  LA s2, .CONSTANT.7.1
  FLW fs5, 0(s2)
  FSGNJ.S ft4, fs4, fs5
  FSW ft4, 20(sp)
  ADDI s2, zero, 1
  LA s3, .CONSTANT.7.2
  FLW fs5, 0(s3)
  LA s3, .CONSTANT.7.2
  FLW fs6, 0(s3)
  FSGNJ.S ft4, fs5, fs6
  FSW ft4, 16(sp)
  ADD s3, zero, zero
  # implict jump to bb10
bb10:
  ADD s4, s3, zero
  FLW ft4, 16(sp)
  FLW ft3, 16(sp)
  FSGNJ.S fs6, ft4, ft3
  ADD s5, s2, zero
  FLW ft4, 20(sp)
  FLW ft3, 20(sp)
  FSGNJ.S fs7, ft4, ft3
  FLW ft4, 24(sp)
  FLW ft3, 24(sp)
  FSGNJ.S fs8, ft4, ft3
  LA s6, .CONSTANT.7.3
  FLW fs9, 0(s6)
  FSUB.S fs9, fs8, fs9
  LA s6, .CONSTANT.7.4
  FLW fs10, 0(s6)
  FSUB.S fs10, fs7, fs10
  LA s6, .CONSTANT.7.5
  FLW fs11, 0(s6)
  FSUB.S fs11, fs6, fs11
  FMUL.S fs5, fs9, fs10
  FMUL.S fs5, fs5, fs11
  LA s6, .CONSTANT.7.6
  FLW fs4, 0(s6)
  FDIV.S fs4, fs4, fs5
  BLT s5, s0, bb15
  # implict jump to bb11
bb11:
  FSGNJ.S fs5, fs8, fs8
  FSGNJ.S fs3, fs7, fs7
  ADD s6, s5, zero
  FSGNJ.S fs0, fs6, fs6
  # implict jump to bb12
bb12:
  FSGNJ.S ft4, fs0, fs0
  FSW ft4, 0(sp)
  ADDIW s8, s4, 1
  BLT s8, s0, bb14
  # implict jump to bb13
bb13:
  FSGNJ.S ft4, fs5, fs5
  FSW ft4, 28(sp)
  FSGNJ.S ft4, fs3, fs3
  FSW ft4, 32(sp)
  FLW ft4, 0(sp)
  FLW ft3, 0(sp)
  FSGNJ.S fs2, ft4, ft3
  JAL zero, bb2
bb14:
  FSGNJ.S ft4, fs5, fs5
  FSW ft4, 24(sp)
  FSGNJ.S ft4, fs3, fs3
  FSW ft4, 20(sp)
  ADD s2, s6, zero
  FLW ft3, 0(sp)
  FLW ft4, 0(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 16(sp)
  ADD s3, s8, zero
  JAL zero, bb10
bb15:
  LA s7, .CONSTANT.7.7
  FLW fs1, 0(s7)
  FMUL.S fs1, fs9, fs1
  FMUL.S ft4, fs1, fs4
  FSW ft4, 44(sp)
  LA s7, .CONSTANT.7.7
  FLW fs9, 0(s7)
  FMUL.S fs9, fs10, fs9
  FMUL.S ft4, fs9, fs4
  FSW ft4, 40(sp)
  LA s7, .CONSTANT.7.7
  FLW fs10, 0(s7)
  FMUL.S fs10, fs11, fs10
  FMUL.S ft4, fs10, fs4
  FSW ft4, 36(sp)
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 8(sp)
  FSGNJ.S ft4, fs7, fs7
  FSW ft4, 56(sp)
  FSGNJ.S ft4, fs6, fs6
  FSW ft4, 48(sp)
  # implict jump to bb16
bb16:
  FLW ft4, 48(sp)
  FLW ft3, 48(sp)
  FSGNJ.S fs10, ft4, ft3
  ADD s7, s5, zero
  FLW ft4, 56(sp)
  FLW ft3, 56(sp)
  FSGNJ.S fs11, ft4, ft3
  FLW ft4, 8(sp)
  FLW ft3, 8(sp)
  FSGNJ.S fs4, ft4, ft3
  FLW ft3, 44(sp)
  FSUB.S ft4, fs4, ft3
  FSW ft4, 4(sp)
  FLW ft3, 40(sp)
  FSUB.S ft4, fs11, ft3
  FSW ft4, 12(sp)
  FLW ft3, 36(sp)
  FSUB.S ft4, fs10, ft3
  FSW ft4, 52(sp)
  ADDIW s7, s7, 1
  BLT s7, s0, bb18
  # implict jump to bb17
bb17:
  FLW ft4, 4(sp)
  FLW ft3, 4(sp)
  FSGNJ.S fs5, ft4, ft3
  FLW ft4, 12(sp)
  FLW ft3, 12(sp)
  FSGNJ.S fs3, ft4, ft3
  ADD s6, s7, zero
  FLW ft4, 52(sp)
  FLW ft3, 52(sp)
  FSGNJ.S fs0, ft4, ft3
  JAL zero, bb12
bb18:
  FLW ft3, 4(sp)
  FLW ft4, 4(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 8(sp)
  FLW ft3, 12(sp)
  FLW ft4, 12(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 56(sp)
  ADD s5, s7, zero
  FLW ft3, 52(sp)
  FLW ft4, 52(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 48(sp)
  JAL zero, bb16
