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
  FSD fs2, 48(sp)
  LUI t5, 4
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 72
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 80
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  FSD fs0, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  FSD fs1, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  FSD fs5, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  FSD fs8, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 120
  ADD t5, t5, sp
  FSD fs3, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 128
  ADD t5, t5, sp
  FSD fs4, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 136
  ADD t5, t5, sp
  FSD fs6, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 144
  ADD t5, t5, sp
  FSD fs7, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 152
  ADD t5, t5, sp
  FSD fs9, 0(t5)
  CALL getint
  ADD s0, a0, zero
  ADDI a0, zero, 22
  CALL _sysy_starttime
  LA s1, .CONSTANT.7.0
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs1, 0(s1)
  FSGNJ.S fs2, fs0, fs1
  LA s1, .CONSTANT.7.1
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.1
  FLW fs1, 0(s1)
  FSGNJ.S fs3, fs0, fs1
  LA s1, .CONSTANT.7.1
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.1
  FLW fs1, 0(s1)
  FSGNJ.S fs4, fs0, fs1
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb1
bb1:
  ADD s3, s2, zero
  ADD s4, s1, zero
  FSGNJ.S fs0, fs4, fs4
  FSGNJ.S fs1, fs3, fs3
  FSGNJ.S fs5, fs2, fs2
  LA s5, COUNT
  LW s6, 0(s5)
  SLT s5, s3, s6
  BNE s5, zero, bb8
  # implict jump to bb2
bb2:
  ADDI a0, zero, 39
  CALL _sysy_stoptime
  LA s5, .CONSTANT.7.2
  FLW fs6, 0(s5)
  FSUB.S fs7, fs0, fs6
  LA s5, .CONSTANT.7.3
  FLW fs6, 0(s5)
  FLE.S s5, fs7, fs6
  BNE s5, zero, bb7
  # implict jump to bb3
bb3:
  LA s5, .CONSTANT.7.3
  FLW fs6, 0(s5)
  LA s5, .CONSTANT.7.3
  FLW fs8, 0(s5)
  FSGNJN.S fs9, fs6, fs8
  FLE.S s5, fs9, fs7
  ADD s6, s5, zero
  # implict jump to bb4
bb4:
  ADD s5, s6, zero
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
  FLD fs2, 48(sp)
  LUI t5, 4
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 72
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 80
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  FLD fs0, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  FLD fs1, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  FLD fs5, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  FLD fs8, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 120
  ADD t5, t5, sp
  FLD fs3, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 128
  ADD t5, t5, sp
  FLD fs4, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 136
  ADD t5, t5, sp
  FLD fs6, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 144
  ADD t5, t5, sp
  FLD fs7, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 152
  ADD t5, t5, sp
  FLD fs9, 0(t5)
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
  FLD fs2, 48(sp)
  LUI t5, 4
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 72
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 80
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  FLD fs0, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  FLD fs1, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  FLD fs5, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  FLD fs8, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 120
  ADD t5, t5, sp
  FLD fs3, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 128
  ADD t5, t5, sp
  FLD fs4, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 136
  ADD t5, t5, sp
  FLD fs6, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 144
  ADD t5, t5, sp
  FLD fs7, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 152
  ADD t5, t5, sp
  FLD fs9, 0(t5)
  LUI t0, 4
  ADDIW t0, t0, 160
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb7:
  ADDI s6, zero, 1
  JAL zero, bb4
bb8:
  ADDI s5, zero, 10
  REMW s6, s3, s5
  XOR s5, s6, zero
  SLTU s6, zero, s5
  BNE s6, zero, bb17
  # implict jump to bb9
bb9:
  LA s5, .CONSTANT.7.4
  FLW fs6, 0(s5)
  FADD.S fs7, fs1, fs6
  LA s5, .CONSTANT.7.5
  FLW fs1, 0(s5)
  FADD.S fs6, fs5, fs1
  FSGNJ.S fs1, fs6, fs6
  FSGNJ.S fs5, fs7, fs7
  # implict jump to bb10
bb10:
  FSGNJ.S fs6, fs5, fs5
  FSGNJ.S fs5, fs1, fs1
  ADD s5, s4, zero
  # implict jump to bb11
bb11:
  ADD s4, s5, zero
  SLT s6, s4, s0
  BNE s6, zero, bb16
  # implict jump to bb12
bb12:
  LA s6, .CONSTANT.7.1
  FLW fs1, 0(s6)
  LA s6, .CONSTANT.7.1
  FLW fs7, 0(s6)
  FSGNJ.S fs8, fs1, fs7
  ADD s6, zero, zero
  # implict jump to bb13
bb13:
  ADD s7, s6, zero
  FSGNJ.S fs1, fs8, fs8
  SLT s8, s7, s0
  BNE s8, zero, bb15
  # implict jump to bb14
bb14:
  FADD.S fs7, fs0, fs1
  ADDIW s8, s3, 1
  FSGNJ.S fs2, fs5, fs5
  FSGNJ.S fs3, fs6, fs6
  FSGNJ.S fs4, fs7, fs7
  ADD s1, s4, zero
  ADD s2, s8, zero
  JAL zero, bb1
bb15:
  SLLIW s1, s7, 2
  LUI t5, 2
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  ADD s2, t5, s1
  FLW fs2, 0(s2)
  ADDI t5, sp, 56
  ADD s2, t5, s1
  FLW fs3, 0(s2)
  FMUL.S fs4, fs2, fs3
  FADD.S fs2, fs1, fs4
  ADDIW s1, s7, 1
  FSGNJ.S fs8, fs2, fs2
  ADD s6, s1, zero
  JAL zero, bb13
bb16:
  SLLIW s1, s4, 2
  LUI t5, 2
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  ADD s2, t5, s1
  FCVT.S.W fs1, s4
  FADD.S fs2, fs6, fs1
  FSW fs2, 0(s2)
  ADDI t5, sp, 56
  ADD s2, t5, s1
  FADD.S fs2, fs5, fs1
  FSW fs2, 0(s2)
  ADDIW s1, s4, 1
  ADD s5, s1, zero
  JAL zero, bb11
bb17:
  LA s5, .CONSTANT.7.0
  FLW fs6, 0(s5)
  LA s5, .CONSTANT.7.0
  FLW fs7, 0(s5)
  FSGNJ.S fs1, fs6, fs7
  LA s5, .CONSTANT.7.1
  FLW fs6, 0(s5)
  LA s5, .CONSTANT.7.1
  FLW fs7, 0(s5)
  FSGNJ.S fs5, fs6, fs7
  JAL zero, bb10
loop:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  FSD fs0, 64(sp)
  FSD fs1, 72(sp)
  FSD fs2, 80(sp)
  FSD fs3, 88(sp)
  FSD fs4, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  LA s3, .CONSTANT.7.1
  FLW fs0, 0(s3)
  LA s3, .CONSTANT.7.1
  FLW fs1, 0(s3)
  FSGNJ.S fs2, fs0, fs1
  ADD s3, zero, zero
  # implict jump to bb19
bb19:
  ADD s4, s3, zero
  FSGNJ.S fs0, fs2, fs2
  SLT s5, s4, s2
  BNE s5, zero, bb21
  # implict jump to bb20
bb20:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  FLD fs0, 64(sp)
  FLD fs1, 72(sp)
  FLD fs2, 80(sp)
  FLD fs3, 88(sp)
  FLD fs4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb21:
  SLLIW s5, s4, 2
  ADD s6, s0, s5
  FLW fs1, 0(s6)
  ADD s6, s1, s5
  FLW fs3, 0(s6)
  FMUL.S fs4, fs1, fs3
  FADD.S fs1, fs0, fs4
  ADDIW s5, s4, 1
  FSGNJ.S fs2, fs1, fs1
  ADD s3, s5, zero
  JAL zero, bb19
