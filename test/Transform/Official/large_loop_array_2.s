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
  ADDIW t0, t0, -208
  ADD sp, sp, t0
  LUI t5, 8
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  FSD fs9, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  SD ra, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 40
  ADD t5, t5, sp
  FSD fs11, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 48
  ADD t6, t6, sp
  FSD fs10, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  FSD fs7, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 64
  ADD t6, t6, sp
  FSD fs6, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 72
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 80
  ADD t6, t6, sp
  SD s5, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  FSD fs5, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 96
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  FSD fs8, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 112
  ADD t6, t6, sp
  SD s7, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 120
  ADD t5, t5, sp
  FSD fs2, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 128
  ADD t6, t6, sp
  FSD fs0, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 136
  ADD t5, t5, sp
  FSD fs1, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 144
  ADD t6, t6, sp
  SD s8, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 152
  ADD t5, t5, sp
  FSD fs3, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 160
  ADD t6, t6, sp
  SD s9, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 168
  ADD t5, t5, sp
  FSD fs4, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 176
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 192
  ADD t6, t6, sp
  SD s4, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 200
  ADD t5, t5, sp
  SD s1, 0(t5)
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
  JAL zero, bb1
bb1:
  ADD s3, s2, zero
  ADD s4, s1, zero
  FSGNJ.S ft4, fs4, fs4
  LUI t6, 8
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  FSW ft4, 0(t6)
  FSGNJ.S fs1, fs3, fs3
  FSGNJ.S fs5, fs2, fs2
  LA s5, COUNT
  LW s6, 0(s5)
  SLT s5, s3, s6
  BNE s5, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s5, zero, 10
  REMW s6, s3, s5
  XOR s5, s6, zero
  SLTU s6, zero, s5
  BNE s6, zero, bb4
  JAL zero, bb6
bb3:
  ADDI a0, zero, 39
  CALL _sysy_stoptime
  LA s0, .CONSTANT.7.2
  FLW fs0, 0(s0)
  LUI t5, 8
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSUB.S fs1, ft4, fs0
  LA s0, .CONSTANT.7.3
  FLW fs0, 0(s0)
  FLE.S s0, fs1, fs0
  BNE s0, zero, bb10
  JAL zero, bb11
bb4:
  LA s5, .CONSTANT.7.0
  FLW fs6, 0(s5)
  LA s5, .CONSTANT.7.0
  FLW fs7, 0(s5)
  FSGNJ.S ft4, fs6, fs7
  LUI t6, 8
  ADDIW t6, t6, 16
  ADD t6, t6, sp
  FSW ft4, 0(t6)
  LA s5, .CONSTANT.7.1
  FLW fs6, 0(s5)
  LA s5, .CONSTANT.7.1
  FLW fs7, 0(s5)
  FSGNJ.S ft4, fs6, fs7
  LUI t5, 8
  ADDIW t5, t5, 8
  ADD t5, t5, sp
  FSW ft4, 0(t5)
  JAL zero, bb5
bb5:
  LUI t6, 8
  ADDIW t6, t6, 8
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 8
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  FSGNJ.S fs6, ft4, ft3
  LUI t6, 8
  ADDIW t6, t6, 16
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 16
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  FSGNJ.S fs7, ft4, ft3
  ADD s5, s4, zero
  JAL zero, bb7
bb6:
  LA s1, .CONSTANT.7.4
  FLW fs0, 0(s1)
  FADD.S fs2, fs1, fs0
  LA s1, .CONSTANT.7.5
  FLW fs0, 0(s1)
  FADD.S fs1, fs5, fs0
  FSGNJ.S ft4, fs1, fs1
  LUI t6, 8
  ADDIW t6, t6, 16
  ADD t6, t6, sp
  FSW ft4, 0(t6)
  FSGNJ.S ft4, fs2, fs2
  LUI t5, 8
  ADDIW t5, t5, 8
  ADD t5, t5, sp
  FSW ft4, 0(t5)
  JAL zero, bb5
bb7:
  ADD s6, s5, zero
  SLT s7, s6, s0
  BNE s7, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s7, zero, 4
  MULW s8, s6, s7
  LUI t6, 4
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  ADD s7, t6, s8
  FCVT.S.W fs10, s6
  FADD.S fs11, fs6, fs10
  FSW fs11, 0(s7)
  ADDI t5, sp, 0
  ADD s7, t5, s8
  FADD.S fs11, fs7, fs10
  FSW fs11, 0(s7)
  ADDIW s7, s6, 1
  ADD s5, s7, zero
  JAL zero, bb7
bb9:
  JAL zero, bb15
bb10:
  ADDI s0, zero, 1
  JAL zero, bb12
bb11:
  LA s1, .CONSTANT.7.3
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.3
  FLW fs2, 0(s1)
  FSGNJN.S fs3, fs0, fs2
  FLE.S s1, fs3, fs1
  ADD s0, s1, zero
  JAL zero, bb12
bb12:
  ADD s1, s0, zero
  BNE s1, zero, bb13
  JAL zero, bb14
bb13:
  ADD a0, zero, zero
  CALL putint
  ADD a0, zero, zero
  LUI t6, 8
  ADDIW t6, t6, 24
  ADD t6, t6, sp
  FLD fs9, 0(t6)
  LUI ra, 8
  ADDIW ra, ra, 32
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 8
  ADDIW t5, t5, 40
  ADD t5, t5, sp
  FLD fs11, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 48
  ADD t6, t6, sp
  FLD fs10, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  FLD fs7, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 64
  ADD t6, t6, sp
  FLD fs6, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 72
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 80
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  FLD fs5, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 96
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  FLD fs8, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 112
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 120
  ADD t5, t5, sp
  FLD fs2, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 128
  ADD t6, t6, sp
  FLD fs0, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 136
  ADD t5, t5, sp
  FLD fs1, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 144
  ADD t6, t6, sp
  LD s8, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 152
  ADD t5, t5, sp
  FLD fs3, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 160
  ADD t6, t6, sp
  LD s9, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 168
  ADD t5, t5, sp
  FLD fs4, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 176
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 192
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 200
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t0, 8
  ADDIW t0, t0, 208
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb14:
  ADDI a0, zero, 1
  CALL putint
  ADDI a0, zero, 1
  LUI t6, 8
  ADDIW t6, t6, 24
  ADD t6, t6, sp
  FLD fs9, 0(t6)
  LUI ra, 8
  ADDIW ra, ra, 32
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 8
  ADDIW t5, t5, 40
  ADD t5, t5, sp
  FLD fs11, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 48
  ADD t6, t6, sp
  FLD fs10, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  FLD fs7, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 64
  ADD t6, t6, sp
  FLD fs6, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 72
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 80
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  FLD fs5, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 96
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  FLD fs8, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 112
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 120
  ADD t5, t5, sp
  FLD fs2, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 128
  ADD t6, t6, sp
  FLD fs0, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 136
  ADD t5, t5, sp
  FLD fs1, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 144
  ADD t6, t6, sp
  LD s8, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 152
  ADD t5, t5, sp
  FLD fs3, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 160
  ADD t6, t6, sp
  LD s9, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 168
  ADD t5, t5, sp
  FLD fs4, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 176
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 192
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 200
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t0, 8
  ADDIW t0, t0, 208
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb15:
  LA s5, .CONSTANT.7.1
  FLW fs10, 0(s5)
  LA s5, .CONSTANT.7.1
  FLW fs11, 0(s5)
  FSGNJ.S fs0, fs10, fs11
  ADD s5, zero, zero
  JAL zero, bb16
bb16:
  ADD s7, s5, zero
  FSGNJ.S fs10, fs0, fs0
  SLT s8, s7, s0
  BNE s8, zero, bb17
  JAL zero, bb18
bb17:
  ADDI s8, zero, 4
  MULW s9, s7, s8
  LUI t6, 4
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  ADD s8, t6, s9
  FLW fs11, 0(s8)
  ADDI t5, sp, 0
  ADD s8, t5, s9
  FLW fs9, 0(s8)
  FMUL.S fs8, fs11, fs9
  FADD.S fs9, fs10, fs8
  ADDIW s8, s7, 1
  FSGNJ.S fs0, fs9, fs9
  ADD s5, s8, zero
  JAL zero, bb16
bb18:
  LUI t6, 8
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  FADD.S fs0, ft4, fs10
  ADDIW s5, s3, 1
  FSGNJ.S fs2, fs7, fs7
  FSGNJ.S fs3, fs6, fs6
  FSGNJ.S fs4, fs0, fs0
  ADD s1, s6, zero
  ADD s2, s5, zero
  JAL zero, bb1
loop:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  FSD fs4, 8(sp)
  FSD fs3, 16(sp)
  SD s6, 24(sp)
  SD s0, 32(sp)
  SD s5, 40(sp)
  FSD fs2, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  FSD fs0, 80(sp)
  FSD fs1, 88(sp)
  SD s4, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  LA s3, .CONSTANT.7.1
  FLW fs0, 0(s3)
  LA s3, .CONSTANT.7.1
  FLW fs1, 0(s3)
  FSGNJ.S fs2, fs0, fs1
  ADD s3, zero, zero
  JAL zero, bb20
bb20:
  ADD s4, s3, zero
  FSGNJ.S fs0, fs2, fs2
  SLT s5, s4, s2
  BNE s5, zero, bb21
  JAL zero, bb22
bb21:
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s5, s0, s6
  FLW fs1, 0(s5)
  ADD s5, s1, s6
  FLW fs3, 0(s5)
  FMUL.S fs4, fs1, fs3
  FADD.S fs1, fs0, fs4
  ADDIW s5, s4, 1
  FSGNJ.S fs2, fs1, fs1
  ADD s3, s5, zero
  JAL zero, bb20
bb22:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  FLD fs4, 8(sp)
  FLD fs3, 16(sp)
  LD s6, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  FLD fs2, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  FLD fs0, 80(sp)
  FLD fs1, 88(sp)
  LD s4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
