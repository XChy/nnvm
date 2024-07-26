.global main
.global loop
.section .bss







.section .data
COUNT:
.word 0x0007a120
.CONSTANT.7.0:
.word 0x5a229b58
.CONSTANT.7.1:
.word 0x358637bd
.CONSTANT.7.2:
.word 0x3f800000
.CONSTANT.7.3:
.word 0x00000000
.CONSTANT.7.4:
.word 0x3dcccccd
.CONSTANT.7.5:
.word 0x3e4ccccd
.section .text
main:
  LUI t0, 1048568
  ADDIW t0, t0, -224
  ADD sp, sp, t0
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s9, 80(sp)
  SD s11, 88(sp)
  FSD fs0, 96(sp)
  FSD fs4, 104(sp)
  SD s7, 112(sp)
  SD s8, 120(sp)
  SD s10, 128(sp)
  FSD fs1, 136(sp)
  FSD fs2, 144(sp)
  FSD fs3, 152(sp)
  FSD fs5, 160(sp)
  FSD fs6, 168(sp)
  FSD fs9, 176(sp)
  FSD fs11, 184(sp)
  FSD fs10, 192(sp)
  FSD fs7, 200(sp)
  FSD fs8, 208(sp)
  CALL getint
  ADD s4, a0, zero
  ADDI a0, zero, 22
  CALL _sysy_starttime
  LA s5, COUNT
  LW s5, 0(s5)
  ADDI s6, zero, 0
  BLT s6, s5, bb8
  # implict jump to bb1
bb1:
  LA s5, .CONSTANT.7.3
  FLW fs4, 0(s5)
  LA s5, .CONSTANT.7.3
  FLW fs5, 0(s5)
  FSGNJ.S fs4, fs4, fs5
  # implict jump to bb2
bb2:
  ADDI a0, zero, 39
  CALL _sysy_stoptime
  LA s9, .CONSTANT.7.0
  FLW fs1, 0(s9)
  FSUB.S fs1, fs4, fs1
  LA s9, .CONSTANT.7.1
  FLW fs2, 0(s9)
  FLE.S s9, fs1, fs2
  BNE s9, zero, bb7
  # implict jump to bb3
bb3:
  LA s9, .CONSTANT.7.1
  FLW fs2, 0(s9)
  LA s9, .CONSTANT.7.1
  FLW fs4, 0(s9)
  FSGNJN.S fs2, fs2, fs4
  FLE.S s9, fs2, fs1
  # implict jump to bb4
bb4:
  BNE s9, zero, bb6
  # implict jump to bb5
bb5:
  ADDI a0, zero, 1
  CALL putint
  ADDI a0, zero, 1
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s9, 80(sp)
  LD s11, 88(sp)
  FLD fs0, 96(sp)
  FLD fs4, 104(sp)
  LD s7, 112(sp)
  LD s8, 120(sp)
  LD s10, 128(sp)
  FLD fs1, 136(sp)
  FLD fs2, 144(sp)
  FLD fs3, 152(sp)
  FLD fs5, 160(sp)
  FLD fs6, 168(sp)
  FLD fs9, 176(sp)
  FLD fs11, 184(sp)
  FLD fs10, 192(sp)
  FLD fs7, 200(sp)
  FLD fs8, 208(sp)
  LUI t0, 8
  ADDIW t0, t0, 224
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb6:
  ADD a0, zero, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s9, 80(sp)
  LD s11, 88(sp)
  FLD fs0, 96(sp)
  FLD fs4, 104(sp)
  LD s7, 112(sp)
  LD s8, 120(sp)
  LD s10, 128(sp)
  FLD fs1, 136(sp)
  FLD fs2, 144(sp)
  FLD fs3, 152(sp)
  FLD fs5, 160(sp)
  FLD fs6, 168(sp)
  FLD fs9, 176(sp)
  FLD fs11, 184(sp)
  FLD fs10, 192(sp)
  FLD fs7, 200(sp)
  FLD fs8, 208(sp)
  LUI t0, 8
  ADDIW t0, t0, 224
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb7:
  ADDI s9, zero, 1
  JAL zero, bb4
bb8:
  ADD s5, zero, zero
  LA s6, .CONSTANT.7.3
  FLW fs5, 0(s6)
  LA s6, .CONSTANT.7.3
  FLW fs6, 0(s6)
  FSGNJ.S fs5, fs5, fs6
  LA s6, .CONSTANT.7.3
  FLW fs6, 0(s6)
  LA s6, .CONSTANT.7.3
  FLW fs7, 0(s6)
  FSGNJ.S fs6, fs6, fs7
  LA s6, .CONSTANT.7.2
  FLW fs7, 0(s6)
  LA s6, .CONSTANT.7.2
  FLW fs8, 0(s6)
  FSGNJ.S fs7, fs7, fs8
  ADD s6, zero, zero
  # implict jump to bb9
bb9:
  ADD t4, s6, zero
  SW t4, 4(sp)
  FSGNJ.S fs8, fs7, fs7
  FSGNJ.S fs9, fs6, fs6
  FSGNJ.S fs10, fs5, fs5
  ADD s8, s5, zero
  ADDI s9, zero, 10
  LW t4, 4(sp)
  REMW s9, t4, s9
  BNE s9, zero, bb29
  # implict jump to bb10
bb10:
  LA s9, .CONSTANT.7.4
  FLW fs11, 0(s9)
  FADD.S fs9, fs9, fs11
  LA s9, .CONSTANT.7.5
  FLW fs11, 0(s9)
  FADD.S fs8, fs8, fs11
  # implict jump to bb11
bb11:
  FSGNJ.S ft4, fs9, fs9
  FSW ft4, 8(sp)
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 0(sp)
  BLT s8, s4, bb24
  # implict jump to bb12
bb12:
  ADD s9, s8, zero
  # implict jump to bb13
bb13:
  ADD s0, s9, zero
  BLT zero, s4, bb19
  # implict jump to bb14
bb14:
  LA s7, .CONSTANT.7.3
  FLW fs1, 0(s7)
  LA s7, .CONSTANT.7.3
  FLW fs8, 0(s7)
  FSGNJ.S fs1, fs1, fs8
  # implict jump to bb15
bb15:
  FADD.S fs0, fs10, fs1
  LW t4, 4(sp)
  ADDIW s1, t4, 1
  # implict jump to bb16
bb16:
  LA s9, COUNT
  LW s9, 0(s9)
  BLT s1, s9, bb18
  # implict jump to bb17
bb17:
  FSGNJ.S fs4, fs0, fs0
  JAL zero, bb2
bb18:
  ADD s5, s0, zero
  FSGNJ.S fs5, fs0, fs0
  FLW ft4, 8(sp)
  FLW ft3, 8(sp)
  FSGNJ.S fs6, ft4, ft3
  FLW ft4, 0(sp)
  FLW ft3, 0(sp)
  FSGNJ.S fs7, ft4, ft3
  ADD s6, s1, zero
  JAL zero, bb9
bb19:
  ADD s7, zero, zero
  LA s9, .CONSTANT.7.3
  FLW fs8, 0(s9)
  LA s9, .CONSTANT.7.3
  FLW fs9, 0(s9)
  FSGNJ.S fs8, fs8, fs9
  # implict jump to bb20
bb20:
  FSGNJ.S fs9, fs8, fs8
  ADD s9, s7, zero
  SLLIW s10, s9, 2
  ADDI t5, sp, 216
  ADD s11, t5, s10
  FLW fs11, 0(s11)
  LUI t5, 4
  ADDIW t5, t5, 216
  ADD t5, t5, sp
  ADD s10, t5, s10
  FLW fs2, 0(s10)
  FMUL.S fs2, fs11, fs2
  FADD.S fs3, fs9, fs2
  ADDIW s2, s9, 1
  # implict jump to bb21
bb21:
  BLT s2, s4, bb23
  # implict jump to bb22
bb22:
  FSGNJ.S fs1, fs3, fs3
  JAL zero, bb15
bb23:
  ADD s7, s2, zero
  FSGNJ.S fs8, fs3, fs3
  JAL zero, bb20
bb24:
  # implict jump to bb25
bb25:
  ADD s10, s8, zero
  SLLIW s11, s10, 2
  ADDI t5, sp, 216
  ADD s7, t5, s11
  FCVT.S.W fs1, s10
  FLW ft4, 8(sp)
  FADD.S fs8, ft4, fs1
  FSW fs8, 0(s7)
  LUI t5, 4
  ADDIW t5, t5, 216
  ADD t5, t5, sp
  ADD s7, t5, s11
  FLW ft4, 0(sp)
  FADD.S fs1, ft4, fs1
  FSW fs1, 0(s7)
  ADDIW s3, s10, 1
  # implict jump to bb26
bb26:
  BLT s3, s4, bb28
  # implict jump to bb27
bb27:
  ADD s9, s3, zero
  JAL zero, bb13
bb28:
  ADD s8, s3, zero
  JAL zero, bb25
bb29:
  LA s9, .CONSTANT.7.2
  FLW fs11, 0(s9)
  LA s9, .CONSTANT.7.2
  FLW fs1, 0(s9)
  FSGNJ.S fs8, fs11, fs1
  LA s9, .CONSTANT.7.3
  FLW fs1, 0(s9)
  LA s9, .CONSTANT.7.3
  FLW fs11, 0(s9)
  FSGNJ.S fs9, fs1, fs11
  JAL zero, bb11
loop:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  FSD fs0, 48(sp)
  FSD fs1, 56(sp)
  FSD fs2, 64(sp)
  FSD fs3, 72(sp)
  FSD fs4, 80(sp)
  FSD fs5, 88(sp)
  BLT zero, a2, bb33
  # implict jump to bb31
bb31:
  LA s1, .CONSTANT.7.3
  FLW fs1, 0(s1)
  LA s1, .CONSTANT.7.3
  FLW fs2, 0(s1)
  FSGNJ.S fs1, fs1, fs2
  # implict jump to bb32
bb32:
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  FLD fs0, 48(sp)
  FLD fs1, 56(sp)
  FLD fs2, 64(sp)
  FLD fs3, 72(sp)
  FLD fs4, 80(sp)
  FLD fs5, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb33:
  ADD s1, zero, zero
  LA s2, .CONSTANT.7.3
  FLW fs2, 0(s2)
  LA s2, .CONSTANT.7.3
  FLW fs3, 0(s2)
  FSGNJ.S fs2, fs2, fs3
  # implict jump to bb34
bb34:
  FSGNJ.S fs3, fs2, fs2
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  ADD s4, a0, s3
  FLW fs4, 0(s4)
  ADD s3, a1, s3
  FLW fs5, 0(s3)
  FMUL.S fs4, fs4, fs5
  FADD.S fs0, fs3, fs4
  ADDIW s0, s2, 1
  # implict jump to bb35
bb35:
  BLT s0, a2, bb37
  # implict jump to bb36
bb36:
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb32
bb37:
  ADD s1, s0, zero
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb34
