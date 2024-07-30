.global main
.global loop
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
main:
  LUI t0, 1048572
  ADDIW t0, t0, -192
  ADD sp, sp, t0
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  FSD fs2, 48(sp)
  LUI t5, 2
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 72
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 80
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  FSD fs0, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  FSD fs1, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 120
  ADD t5, t5, sp
  FSD fs8, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 128
  ADD t5, t5, sp
  FSD fs3, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 136
  ADD t5, t5, sp
  FSD fs4, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 144
  ADD t5, t5, sp
  FSD fs6, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 152
  ADD t5, t5, sp
  FSD fs7, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 160
  ADD t5, t5, sp
  FSD fs10, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 168
  ADD t5, t5, sp
  FSD fs11, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 176
  ADD t5, t5, sp
  FSD fs5, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  FSD fs9, 0(t5)
  CALL getint
  ADD s0, a0, zero
  ADDI a0, zero, 22
  CALL _sysy_starttime
  LA s1, COUNT
  LW s1, 0(s1)
  ADDI s2, zero, 0
  BLT s2, s1, bb8
  # implict jump to bb1
bb1:
  LA s1, .CONSTANT.7.0
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs1, 0(s1)
  FSGNJ.S fs0, fs0, fs1
  # implict jump to bb2
bb2:
  ADDI a0, zero, 39
  CALL _sysy_stoptime
  LA s10, .CONSTANT.7.2
  FLW fs10, 0(s10)
  FSUB.S fs0, fs0, fs10
  LA s10, .CONSTANT.7.3
  FLW fs10, 0(s10)
  FLE.S s10, fs0, fs10
  BNE s10, zero, bb7
  # implict jump to bb3
bb3:
  LA s10, .CONSTANT.7.3
  FLW fs10, 0(s10)
  LA s10, .CONSTANT.7.3
  FLW fs11, 0(s10)
  FSGNJN.S fs10, fs10, fs11
  FLE.S s10, fs10, fs0
  # implict jump to bb4
bb4:
  BNE s10, zero, bb6
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
  FLD fs2, 48(sp)
  LUI t5, 2
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 72
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 80
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  FLD fs0, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  FLD fs1, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 120
  ADD t5, t5, sp
  FLD fs8, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 128
  ADD t5, t5, sp
  FLD fs3, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 136
  ADD t5, t5, sp
  FLD fs4, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 144
  ADD t5, t5, sp
  FLD fs6, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 152
  ADD t5, t5, sp
  FLD fs7, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 160
  ADD t5, t5, sp
  FLD fs10, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 168
  ADD t5, t5, sp
  FLD fs11, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 176
  ADD t5, t5, sp
  FLD fs5, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  FLD fs9, 0(t5)
  LUI t0, 4
  ADDIW t0, t0, 192
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb6:
  ADD a0, zero, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  FLD fs2, 48(sp)
  LUI t5, 2
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 72
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 80
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  FLD fs0, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  FLD fs1, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 120
  ADD t5, t5, sp
  FLD fs8, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 128
  ADD t5, t5, sp
  FLD fs3, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 136
  ADD t5, t5, sp
  FLD fs4, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 144
  ADD t5, t5, sp
  FLD fs6, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 152
  ADD t5, t5, sp
  FLD fs7, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 160
  ADD t5, t5, sp
  FLD fs10, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 168
  ADD t5, t5, sp
  FLD fs11, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 176
  ADD t5, t5, sp
  FLD fs5, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  FLD fs9, 0(t5)
  LUI t0, 4
  ADDIW t0, t0, 192
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb7:
  ADDI s10, zero, 1
  JAL zero, bb4
bb8:
  ADD s1, zero, zero
  LA s2, .CONSTANT.7.0
  FLW fs1, 0(s2)
  LA s2, .CONSTANT.7.0
  FLW fs2, 0(s2)
  FSGNJ.S fs1, fs1, fs2
  ADD s2, zero, zero
  LA s3, .CONSTANT.7.0
  FLW fs2, 0(s3)
  LA s3, .CONSTANT.7.0
  FLW fs3, 0(s3)
  FSGNJ.S fs2, fs2, fs3
  LA s3, .CONSTANT.7.1
  FLW fs3, 0(s3)
  LA s3, .CONSTANT.7.1
  FLW fs4, 0(s3)
  FSGNJ.S fs3, fs3, fs4
  # implict jump to bb9
bb9:
  FSGNJ.S fs4, fs3, fs3
  FSGNJ.S fs5, fs2, fs2
  ADD s3, s2, zero
  FSGNJ.S fs6, fs1, fs1
  ADD s4, s1, zero
  ADDI s5, zero, 10
  REMW s5, s3, s5
  BNE s5, zero, bb26
  # implict jump to bb10
bb10:
  LA s5, .CONSTANT.7.4
  FLW fs7, 0(s5)
  FADD.S fs5, fs5, fs7
  LA s5, .CONSTANT.7.5
  FLW fs7, 0(s5)
  FADD.S fs4, fs4, fs7
  # implict jump to bb11
bb11:
  BLT s4, s0, bb22
  # implict jump to bb12
bb12:
  ADD s5, s4, zero
  # implict jump to bb13
bb13:
  BLT zero, s0, bb18
  # implict jump to bb14
bb14:
  LA s7, .CONSTANT.7.0
  FLW fs7, 0(s7)
  LA s7, .CONSTANT.7.0
  FLW fs8, 0(s7)
  FSGNJ.S fs7, fs7, fs8
  # implict jump to bb15
bb15:
  FADD.S fs7, fs6, fs7
  ADDIW s9, s3, 1
  LA s10, COUNT
  LW s10, 0(s10)
  BLT s9, s10, bb17
  # implict jump to bb16
bb16:
  FSGNJ.S fs0, fs7, fs7
  JAL zero, bb2
bb17:
  ADD s1, s5, zero
  FSGNJ.S fs1, fs7, fs7
  ADD s2, s9, zero
  FSGNJ.S fs2, fs5, fs5
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb9
bb18:
  ADD s7, zero, zero
  LA s8, .CONSTANT.7.0
  FLW fs8, 0(s8)
  LA s8, .CONSTANT.7.0
  FLW fs9, 0(s8)
  FSGNJ.S fs8, fs8, fs9
  # implict jump to bb19
bb19:
  FSGNJ.S fs9, fs8, fs8
  ADD s8, s7, zero
  SLLIW s9, s8, 2
  LUI t5, 2
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  ADD s10, t5, s9
  FLW fs10, 0(s10)
  ADDI t5, sp, 56
  ADD s9, t5, s9
  FLW fs11, 0(s9)
  FMUL.S fs10, fs10, fs11
  FADD.S fs9, fs9, fs10
  ADDIW s8, s8, 1
  BLT s8, s0, bb21
  # implict jump to bb20
bb20:
  FSGNJ.S fs7, fs9, fs9
  JAL zero, bb15
bb21:
  ADD s7, s8, zero
  FSGNJ.S fs8, fs9, fs9
  JAL zero, bb19
bb22:
  # implict jump to bb23
bb23:
  ADD s6, s4, zero
  SLLIW s7, s6, 2
  LUI t5, 2
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  ADD s8, t5, s7
  FCVT.S.W fs7, s6
  FADD.S fs8, fs5, fs7
  FSW fs8, 0(s8)
  ADDI t5, sp, 56
  ADD s7, t5, s7
  FADD.S fs7, fs4, fs7
  FSW fs7, 0(s7)
  ADDIW s6, s6, 1
  BLT s6, s0, bb25
  # implict jump to bb24
bb24:
  ADD s5, s6, zero
  JAL zero, bb13
bb25:
  ADD s4, s6, zero
  JAL zero, bb23
bb26:
  LA s5, .CONSTANT.7.1
  FLW fs7, 0(s5)
  LA s5, .CONSTANT.7.1
  FLW fs8, 0(s5)
  FSGNJ.S fs4, fs7, fs8
  LA s5, .CONSTANT.7.0
  FLW fs7, 0(s5)
  LA s5, .CONSTANT.7.0
  FLW fs8, 0(s5)
  FSGNJ.S fs5, fs7, fs8
  JAL zero, bb11
loop:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  FSD fs0, 40(sp)
  FSD fs1, 48(sp)
  FSD fs2, 56(sp)
  FSD fs3, 64(sp)
  FSD fs4, 72(sp)
  BLT zero, a2, bb30
  # implict jump to bb28
bb28:
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FSGNJ.S fs0, fs0, fs1
  # implict jump to bb29
bb29:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  FLD fs0, 40(sp)
  FLD fs1, 48(sp)
  FLD fs2, 56(sp)
  FLD fs3, 64(sp)
  FLD fs4, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb30:
  ADD s0, zero, zero
  LA s1, .CONSTANT.7.0
  FLW fs1, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs2, 0(s1)
  FSGNJ.S fs1, fs1, fs2
  # implict jump to bb31
bb31:
  FSGNJ.S fs2, fs1, fs1
  ADD s1, s0, zero
  SLLIW s2, s1, 2
  ADD s3, a0, s2
  FLW fs3, 0(s3)
  ADD s2, a1, s2
  FLW fs4, 0(s2)
  FMUL.S fs3, fs3, fs4
  FADD.S fs2, fs2, fs3
  ADDIW s1, s1, 1
  BLT s1, a2, bb33
  # implict jump to bb32
bb32:
  FSGNJ.S fs0, fs2, fs2
  JAL zero, bb29
bb33:
  ADD s0, s1, zero
  FSGNJ.S fs1, fs2, fs2
  JAL zero, bb31
