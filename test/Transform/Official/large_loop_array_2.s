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
.word 0x5a229b58
.CONSTANT.7.3:
.word 0x358637bd
.CONSTANT.7.4:
.word 0x3dcccccd
.CONSTANT.7.5:
.word 0x3e4ccccd
.section .text
main:
  LUI t0, 1048568
  ADDIW t0, t0, -160
  ADD sp, sp, t0
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s3, 16(sp)
  SD s4, 24(sp)
  FSD fs4, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  FSD fs0, 88(sp)
  FSD fs1, 96(sp)
  FSD fs2, 104(sp)
  FSD fs3, 112(sp)
  FSD fs5, 120(sp)
  FSD fs6, 128(sp)
  FSD fs7, 136(sp)
  FSD fs8, 144(sp)
  CALL getint
  ADD s0, a0, zero
  ADDI a0, zero, 22
  CALL _sysy_starttime
  LA s1, .CONSTANT.7.0
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs1, 0(s1)
  FSGNJ.S fs0, fs0, fs1
  LA s1, .CONSTANT.7.1
  FLW fs1, 0(s1)
  LA s1, .CONSTANT.7.1
  FLW fs2, 0(s1)
  FSGNJ.S fs1, fs1, fs2
  LA s1, .CONSTANT.7.1
  FLW fs2, 0(s1)
  LA s1, .CONSTANT.7.1
  FLW fs3, 0(s1)
  FSGNJ.S fs2, fs2, fs3
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb1
bb1:
  ADD s3, s2, zero
  ADD s4, s1, zero
  FSGNJ.S fs3, fs2, fs2
  FSGNJ.S fs4, fs1, fs1
  FSGNJ.S fs5, fs0, fs0
  LA s5, COUNT
  LW s5, 0(s5)
  SLT s5, s3, s5
  BNE s5, zero, bb8
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
  LD s2, 8(sp)
  LD s3, 16(sp)
  LD s4, 24(sp)
  FLD fs4, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  FLD fs0, 88(sp)
  FLD fs1, 96(sp)
  FLD fs2, 104(sp)
  FLD fs3, 112(sp)
  FLD fs5, 120(sp)
  FLD fs6, 128(sp)
  FLD fs7, 136(sp)
  FLD fs8, 144(sp)
  LUI t0, 8
  ADDIW t0, t0, 160
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb6:
  ADD a0, zero, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s3, 16(sp)
  LD s4, 24(sp)
  FLD fs4, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  FLD fs0, 88(sp)
  FLD fs1, 96(sp)
  FLD fs2, 104(sp)
  FLD fs3, 112(sp)
  FLD fs5, 120(sp)
  FLD fs6, 128(sp)
  FLD fs7, 136(sp)
  FLD fs8, 144(sp)
  LUI t0, 8
  ADDIW t0, t0, 160
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb7:
  ADDI s5, zero, 1
  JAL zero, bb4
bb8:
  ADDI s5, zero, 10
  REMW s5, s3, s5
  XOR s5, s5, zero
  SLTU s5, zero, s5
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
  ADD s5, s4, zero
  SLT s6, s5, s0
  BNE s6, zero, bb16
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
  SLT s8, s7, s0
  BNE s8, zero, bb15
  # implict jump to bb14
bb14:
  FADD.S fs8, fs3, fs7
  ADDIW s8, s3, 1
  FSGNJ.S fs0, fs5, fs5
  FSGNJ.S fs1, fs4, fs4
  FSGNJ.S fs2, fs8, fs8
  ADD s1, s5, zero
  ADD s2, s8, zero
  JAL zero, bb1
bb15:
  SLLIW s1, s7, 2
  ADDI t5, sp, 152
  ADD s2, t5, s1
  FLW fs0, 0(s2)
  LUI t5, 4
  ADDIW t5, t5, 152
  ADD t5, t5, sp
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
  ADDI t5, sp, 152
  ADD s2, t5, s1
  FCVT.S.W fs0, s5
  FADD.S fs1, fs4, fs0
  FSW fs1, 0(s2)
  LUI t5, 4
  ADDIW t5, t5, 152
  ADD t5, t5, sp
  ADD s1, t5, s1
  FADD.S fs0, fs5, fs0
  FSW fs0, 0(s1)
  ADDIW s1, s5, 1
  ADD s4, s1, zero
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
  SLT s2, s1, a2
  BNE s2, zero, bb21
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
