.global main
.global loop
.section .bss







.section .data
COUNT:
.word 0x0007a120
.CONSTANT.7.0:
.word 0x3f800000
.CONSTANT.7.1:
.word 0x00000000
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
  ADDIW t0, t0, -160
  ADD sp, sp, t0
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  LUI t5, 2
  ADDIW t5, t5, 48
  ADD t5, t5, sp
  FSD fs4, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  FSD fs0, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 72
  ADD t5, t5, sp
  FSD fs1, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 80
  ADD t5, t5, sp
  FSD fs3, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  FSD fs5, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  FSD fs2, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  FSD fs8, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 120
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 128
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 136
  ADD t5, t5, sp
  FSD fs6, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 144
  ADD t5, t5, sp
  FSD fs7, 0(t5)
  CALL getint
  ADD s0, a0, zero
  ADDI a0, zero, 22
  CALL _sysy_starttime
  ADD s1, zero, zero
  LA s2, .CONSTANT.7.0
  FLW fs0, 0(s2)
  LA s2, .CONSTANT.7.0
  FLW fs1, 0(s2)
  FSGNJ.S fs0, fs0, fs1
  LA s2, .CONSTANT.7.1
  FLW fs1, 0(s2)
  LA s2, .CONSTANT.7.1
  FLW fs2, 0(s2)
  FSGNJ.S fs1, fs1, fs2
  LA s2, .CONSTANT.7.1
  FLW fs2, 0(s2)
  LA s2, .CONSTANT.7.1
  FLW fs3, 0(s2)
  FSGNJ.S fs2, fs2, fs3
  ADD s2, zero, zero
  # implict jump to bb1
bb1:
  ADD s3, s2, zero
  FSGNJ.S fs3, fs2, fs2
  FSGNJ.S fs4, fs1, fs1
  FSGNJ.S fs5, fs0, fs0
  ADD s4, s1, zero
  LA s5, COUNT
  LW s5, 0(s5)
  BLT s4, s5, bb8
  # implict jump to bb2
bb2:
  ADDI a0, zero, 39
  CALL _sysy_stoptime
  LA s5, .CONSTANT.7.2
  FLW fs6, 0(s5)
  FSUB.S fs6, fs3, fs6
  LA s5, .CONSTANT.7.3
  FLW fs7, 0(s5)
  FLE.S s5, fs6, fs7
  BNE s5, zero, bb7
  # implict jump to bb3
bb3:
  LA s5, .CONSTANT.7.3
  FLW fs7, 0(s5)
  LA s5, .CONSTANT.7.3
  FLW fs8, 0(s5)
  FSGNJN.S fs7, fs7, fs8
  FLE.S s5, fs7, fs6
  # implict jump to bb4
bb4:
  BNE s5, zero, bb6
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
  LUI t5, 2
  ADDIW t5, t5, 48
  ADD t5, t5, sp
  FLD fs4, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  FLD fs0, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 72
  ADD t5, t5, sp
  FLD fs1, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 80
  ADD t5, t5, sp
  FLD fs3, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  FLD fs5, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  FLD fs2, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  FLD fs8, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 120
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 128
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 136
  ADD t5, t5, sp
  FLD fs6, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 144
  ADD t5, t5, sp
  FLD fs7, 0(t5)
  LUI t0, 4
  ADDIW t0, t0, 160
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
  LUI t5, 2
  ADDIW t5, t5, 48
  ADD t5, t5, sp
  FLD fs4, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  FLD fs0, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 72
  ADD t5, t5, sp
  FLD fs1, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 80
  ADD t5, t5, sp
  FLD fs3, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  FLD fs5, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  FLD fs2, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  FLD fs8, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 120
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 128
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 136
  ADD t5, t5, sp
  FLD fs6, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 144
  ADD t5, t5, sp
  FLD fs7, 0(t5)
  LUI t0, 4
  ADDIW t0, t0, 160
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb7:
  ADDI s5, zero, 1
  JAL zero, bb4
bb8:
  ADDI s5, zero, 10
  REMW s5, s4, s5
  BNE s5, zero, bb17
  # implict jump to bb9
bb9:
  LA s5, .CONSTANT.7.4
  FLW fs6, 0(s5)
  FADD.S fs4, fs4, fs6
  LA s5, .CONSTANT.7.5
  FLW fs6, 0(s5)
  FADD.S fs5, fs5, fs6
  # implict jump to bb10
bb10:
  # implict jump to bb11
bb11:
  ADD s5, s3, zero
  BLT s5, s0, bb16
  # implict jump to bb12
bb12:
  LA s6, .CONSTANT.7.1
  FLW fs6, 0(s6)
  LA s6, .CONSTANT.7.1
  FLW fs7, 0(s6)
  FSGNJ.S fs6, fs6, fs7
  ADD s6, zero, zero
  # implict jump to bb13
bb13:
  ADD s7, s6, zero
  FSGNJ.S fs7, fs6, fs6
  BLT s7, s0, bb15
  # implict jump to bb14
bb14:
  FADD.S fs8, fs3, fs7
  ADDIW s8, s4, 1
  ADD s1, s8, zero
  FSGNJ.S fs0, fs5, fs5
  FSGNJ.S fs1, fs4, fs4
  FSGNJ.S fs2, fs8, fs8
  ADD s2, s5, zero
  JAL zero, bb1
bb15:
  SLLIW s1, s7, 2
  LUI t5, 2
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  ADD s2, t5, s1
  FLW fs0, 0(s2)
  ADDI t5, sp, 48
  ADD s1, t5, s1
  FLW fs1, 0(s1)
  FMUL.S fs0, fs0, fs1
  FADD.S fs0, fs7, fs0
  ADDIW s1, s7, 1
  FSGNJ.S fs6, fs0, fs0
  ADD s6, s1, zero
  JAL zero, bb13
bb16:
  SLLIW s1, s5, 2
  LUI t5, 2
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  ADD s2, t5, s1
  FCVT.S.W fs0, s5
  FADD.S fs1, fs4, fs0
  FSW fs1, 0(s2)
  ADDI t5, sp, 48
  ADD s1, t5, s1
  FADD.S fs0, fs5, fs0
  FSW fs0, 0(s1)
  ADDIW s1, s5, 1
  ADD s3, s1, zero
  JAL zero, bb11
bb17:
  LA s5, .CONSTANT.7.0
  FLW fs6, 0(s5)
  LA s5, .CONSTANT.7.0
  FLW fs7, 0(s5)
  FSGNJ.S fs5, fs6, fs7
  LA s5, .CONSTANT.7.1
  FLW fs6, 0(s5)
  LA s5, .CONSTANT.7.1
  FLW fs7, 0(s5)
  FSGNJ.S fs4, fs6, fs7
  JAL zero, bb10
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
  LA s0, .CONSTANT.7.1
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.1
  FLW fs1, 0(s0)
  FSGNJ.S fs0, fs0, fs1
  ADD s0, zero, zero
  # implict jump to bb19
bb19:
  ADD s1, s0, zero
  FSGNJ.S fs1, fs0, fs0
  BLT s1, a2, bb21
  # implict jump to bb20
bb20:
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  FLD fs0, 40(sp)
  FLD fs1, 48(sp)
  FLD fs2, 56(sp)
  FLD fs3, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb21:
  SLLIW s2, s1, 2
  ADD s3, a0, s2
  FLW fs2, 0(s3)
  ADD s2, a1, s2
  FLW fs3, 0(s2)
  FMUL.S fs2, fs2, fs3
  FADD.S fs1, fs1, fs2
  ADDIW s1, s1, 1
  FSGNJ.S fs0, fs1, fs1
  ADD s0, s1, zero
  JAL zero, bb19
