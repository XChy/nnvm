.global mult_combin
.global mult1
.global my_sqrt
.global Vectordot
.global mult2
.global main
.global func
.section .bss



.section .data
temp:
.word 0x3f800000
.CONSTANT.7.0:
.word 0x358637bd
.CONSTANT.7.1:
.word 0x3f800000
.section .text
mult_combin:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD a0, s0, zero
  ADD a1, s3, zero
  ADD a2, s2, zero
  CALL mult1
  ADD a0, s3, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL mult2
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
mult1:
  ADDI sp, sp, -144
  FSD fs5, 0(sp)
  FSD fs4, 8(sp)
  SD s9, 16(sp)
  FSD fs3, 24(sp)
  SD s8, 32(sp)
  SD ra, 40(sp)
  FSD fs2, 48(sp)
  SD s7, 56(sp)
  SD s0, 64(sp)
  SD s5, 72(sp)
  SD s1, 80(sp)
  SD s6, 88(sp)
  SD s2, 96(sp)
  SD s3, 104(sp)
  FSD fs0, 112(sp)
  FSD fs1, 120(sp)
  SD s4, 128(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADDI s3, zero, 0
  FCVT.S.W fs0, s3
  FSGNJ.S fs1, fs0, fs0
  ADD s3, zero, zero
  ADD s4, zero, zero
  JAL zero, bb2
bb2:
  ADD s5, s4, zero
  ADD s6, s3, zero
  FSGNJ.S fs0, fs1, fs1
  SLT s7, s5, s2
  BNE s7, zero, bb3
  JAL zero, bb4
bb3:
  FSGNJ.S fs2, fs0, fs0
  ADD s7, s6, zero
  JAL zero, bb5
bb4:
  FLD fs5, 0(sp)
  FLD fs4, 8(sp)
  LD s9, 16(sp)
  FLD fs3, 24(sp)
  LD s8, 32(sp)
  LD ra, 40(sp)
  FLD fs2, 48(sp)
  LD s7, 56(sp)
  LD s0, 64(sp)
  LD s5, 72(sp)
  LD s1, 80(sp)
  LD s6, 88(sp)
  LD s2, 96(sp)
  LD s3, 104(sp)
  FLD fs0, 112(sp)
  FLD fs1, 120(sp)
  LD s4, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb5:
  ADD s6, s7, zero
  FSGNJ.S fs0, fs2, fs2
  SLT s8, s6, s2
  BNE s8, zero, bb6
  JAL zero, bb7
bb6:
  ADDI s8, zero, 4
  MULW s9, s6, s8
  ADD s8, s0, s9
  FLW fs3, 0(s8)
  ADD a0, s5, zero
  ADD a1, s6, zero
  CALL func
  ADD s8, a0, zero
  FCVT.S.W fs4, s8
  FDIV.S fs5, fs3, fs4
  FADD.S fs3, fs0, fs5
  ADDIW s8, s6, 1
  FSGNJ.S fs2, fs3, fs3
  ADD s7, s8, zero
  JAL zero, bb5
bb7:
  ADDI s7, zero, 4
  MULW s8, s5, s7
  ADD s7, s1, s8
  FSW fs0, 0(s7)
  ADDIW s7, s5, 1
  FSGNJ.S fs1, fs0, fs0
  ADD s3, s6, zero
  ADD s4, s7, zero
  JAL zero, bb2
my_sqrt:
  ADDI sp, sp, -64
  FSD fs4, 0(sp)
  SD s1, 8(sp)
  SD ra, 16(sp)
  FSD fs3, 24(sp)
  FSD fs1, 32(sp)
  SD s0, 40(sp)
  FSD fs2, 48(sp)
  FSD fs0, 56(sp)
  FSGNJ.D fs0, fa0, fa0
  JAL zero, bb9
bb9:
  LA s0, temp
  FLW fs1, 0(s0)
  LA s0, temp
  FLW fs2, 0(s0)
  FDIV.S fs3, fs0, fs2
  FSUB.S fs2, fs1, fs3
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FLT.S s0, fs1, fs2
  BNE s0, zero, bb12
  JAL zero, bb13
bb10:
  LA s1, temp
  FLW fs1, 0(s1)
  LA s1, temp
  FLW fs2, 0(s1)
  FDIV.S fs3, fs0, fs2
  FADD.S fs2, fs1, fs3
  ADDI s1, zero, 2
  FCVT.S.W fs1, s1
  FDIV.S fs3, fs2, fs1
  LA s1, temp
  FSW fs3, 0(s1)
  JAL zero, bb9
bb11:
  LA s1, temp
  FLW fs1, 0(s1)
  FSGNJ.S fa0, fs1, fs1
  FLD fs4, 0(sp)
  LD s1, 8(sp)
  LD ra, 16(sp)
  FLD fs3, 24(sp)
  FLD fs1, 32(sp)
  LD s0, 40(sp)
  FLD fs2, 48(sp)
  FLD fs0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb12:
  ADDI s0, zero, 1
  JAL zero, bb14
bb13:
  LA s1, temp
  FLW fs1, 0(s1)
  LA s1, temp
  FLW fs2, 0(s1)
  FDIV.S fs3, fs0, fs2
  FSUB.S fs2, fs1, fs3
  LA s1, .CONSTANT.7.0
  FLW fs1, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs3, 0(s1)
  FSGNJN.S fs4, fs1, fs3
  FLT.S s1, fs2, fs4
  ADD s0, s1, zero
  JAL zero, bb14
bb14:
  ADD s1, s0, zero
  BNE s1, zero, bb10
  JAL zero, bb11
Vectordot:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  FSD fs4, 8(sp)
  FSD fs3, 16(sp)
  FSD fs2, 24(sp)
  SD s0, 32(sp)
  SD s5, 40(sp)
  SD s1, 48(sp)
  SD s6, 56(sp)
  SD s2, 64(sp)
  FSD fs0, 72(sp)
  FSD fs1, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  FCVT.S.L fs0, zero
  FSGNJ.S fs1, fs0, fs0
  ADD s3, zero, zero
  JAL zero, bb16
bb16:
  ADD s4, s3, zero
  FSGNJ.S fs0, fs1, fs1
  SLT s5, s4, s2
  BNE s5, zero, bb17
  JAL zero, bb18
bb17:
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s5, s0, s6
  FLW fs2, 0(s5)
  ADD s5, s1, s6
  FLW fs3, 0(s5)
  FMUL.S fs4, fs2, fs3
  FADD.S fs2, fs0, fs4
  ADDIW s5, s4, 1
  FSGNJ.S fs1, fs2, fs2
  ADD s3, s5, zero
  JAL zero, bb16
bb18:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  FLD fs4, 8(sp)
  FLD fs3, 16(sp)
  FLD fs2, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s2, 64(sp)
  FLD fs0, 72(sp)
  FLD fs1, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
mult2:
  ADDI sp, sp, -144
  FSD fs5, 0(sp)
  FSD fs4, 8(sp)
  SD s9, 16(sp)
  FSD fs3, 24(sp)
  SD s8, 32(sp)
  SD ra, 40(sp)
  FSD fs2, 48(sp)
  SD s7, 56(sp)
  SD s0, 64(sp)
  SD s5, 72(sp)
  SD s1, 80(sp)
  SD s6, 88(sp)
  SD s2, 96(sp)
  FSD fs0, 104(sp)
  FSD fs1, 112(sp)
  SD s3, 120(sp)
  SD s4, 128(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  FCVT.S.L fs0, zero
  FSGNJ.S fs1, fs0, fs0
  ADD s3, zero, zero
  ADD s4, zero, zero
  JAL zero, bb20
bb20:
  ADD s5, s4, zero
  ADD s6, s3, zero
  FSGNJ.S fs0, fs1, fs1
  SLT s7, s5, s2
  BNE s7, zero, bb21
  JAL zero, bb22
bb21:
  FSGNJ.S fs2, fs0, fs0
  ADD s7, s6, zero
  JAL zero, bb23
bb22:
  FLD fs5, 0(sp)
  FLD fs4, 8(sp)
  LD s9, 16(sp)
  FLD fs3, 24(sp)
  LD s8, 32(sp)
  LD ra, 40(sp)
  FLD fs2, 48(sp)
  LD s7, 56(sp)
  LD s0, 64(sp)
  LD s5, 72(sp)
  LD s1, 80(sp)
  LD s6, 88(sp)
  LD s2, 96(sp)
  FLD fs0, 104(sp)
  FLD fs1, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb23:
  ADD s6, s7, zero
  FSGNJ.S fs0, fs2, fs2
  SLT s8, s6, s2
  BNE s8, zero, bb24
  JAL zero, bb25
bb24:
  ADDI s8, zero, 4
  MULW s9, s6, s8
  ADD s8, s0, s9
  FLW fs3, 0(s8)
  ADD a0, s6, zero
  ADD a1, s5, zero
  CALL func
  ADD s8, a0, zero
  FCVT.S.W fs4, s8
  FDIV.S fs5, fs3, fs4
  FADD.S fs3, fs0, fs5
  ADDIW s8, s6, 1
  FSGNJ.S fs2, fs3, fs3
  ADD s7, s8, zero
  JAL zero, bb23
bb25:
  ADDI s7, zero, 4
  MULW s8, s5, s7
  ADD s7, s1, s8
  FSW fs0, 0(s7)
  ADDIW s7, s5, 1
  FSGNJ.S fs1, fs0, fs0
  ADD s3, s6, zero
  ADD s4, s7, zero
  JAL zero, bb20
main:
  LUI t0, 1048283
  ADDI t0, t0, 32
  ADD sp, sp, t0
  LUI t5, 293
  ADDI t5, t5, -128
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t6, 293
  ADDI t6, t6, -120
  ADD t6, t6, sp
  FSD fs3, 0(t6)
  LUI t5, 293
  ADDI t5, t5, -112
  ADD t5, t5, sp
  FSD fs2, 0(t5)
  LUI t6, 293
  ADDI t6, t6, -104
  ADD t6, t6, sp
  FSD fs1, 0(t6)
  LUI t5, 293
  ADDI t5, t5, -96
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t6, 293
  ADDI t6, t6, -88
  ADD t6, t6, sp
  SD s5, 0(t6)
  LUI t5, 293
  ADDI t5, t5, -80
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t6, 293
  ADDI t6, t6, -72
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t5, 293
  ADDI t5, t5, -64
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t6, 293
  ADDI t6, t6, -56
  ADD t6, t6, sp
  SD s4, 0(t6)
  LUI t5, 293
  ADDI t5, t5, -48
  ADD t5, t5, sp
  FSD fs0, 0(t5)
  LUI s0, 24
  ADDI s0, s0, 1696
  SLT s1, zero, s0
  XORI s0, s1, 1
  BNE s0, zero, bb27
  JAL zero, bb41
bb27:
  ADDI s0, zero, 2000
  JAL zero, bb28
bb28:
  ADD s1, s0, zero
  ADDI a0, zero, 62
  CALL _sysy_starttime
  ADD s2, zero, zero
  JAL zero, bb29
bb29:
  ADD s3, s2, zero
  SLT s4, s3, s1
  BNE s4, zero, bb30
  JAL zero, bb31
bb30:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LUI t6, 195
  ADDI t6, t6, 1280
  ADD t6, t6, sp
  ADD s4, t6, s5
  ADDI s5, zero, 1
  FCVT.S.W fs0, s5
  FSW fs0, 0(s4)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb29
bb31:
  ADD s2, zero, zero
  JAL zero, bb32
bb32:
  ADD s3, s2, zero
  SLTI s4, s3, 1000
  BNE s4, zero, bb33
  JAL zero, bb34
bb33:
  LUI a0, 195
  ADDI a0, a0, 1280
  ADD a0, a0, sp
  ADD a0, a0, zero
  LUI a1, 98
  ADDI a1, a1, -1408
  ADD a1, a1, sp
  ADD a1, a1, zero
  ADD a2, s1, zero
  ADDI a3, sp, 0
  ADD a3, a3, zero
  CALL mult_combin
  LUI a0, 98
  ADDI a0, a0, -1408
  ADD a0, a0, sp
  ADD a0, a0, zero
  LUI a1, 195
  ADDI a1, a1, 1280
  ADD a1, a1, sp
  ADD a1, a1, zero
  ADD a2, s1, zero
  ADDI a3, sp, 0
  ADD a3, a3, zero
  CALL mult_combin
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb32
bb34:
  ADDI a0, zero, 76
  CALL _sysy_stoptime
  LUI a0, 195
  ADDI a0, a0, 1280
  ADD a0, a0, sp
  ADD a0, a0, zero
  LUI a1, 98
  ADDI a1, a1, -1408
  ADD a1, a1, sp
  ADD a1, a1, zero
  ADD a2, s1, zero
  CALL Vectordot
  FSGNJ.D fs0, fa0, fa0
  LUI a0, 98
  ADDI a0, a0, -1408
  ADD a0, a0, sp
  ADD a0, a0, zero
  LUI a1, 98
  ADDI a1, a1, -1408
  ADD a1, a1, sp
  ADD a1, a1, zero
  ADD a2, s1, zero
  CALL Vectordot
  FSGNJ.D fs1, fa0, fa0
  FDIV.S fs2, fs0, fs1
  FSGNJ.S fa0, fs2, fs2
  CALL my_sqrt
  FSGNJ.D fs0, fa0, fa0
  LA s1, .CONSTANT.7.1
  FLW fs1, 0(s1)
  FSUB.S fs2, fs0, fs1
  LA s1, .CONSTANT.7.0
  FLW fs0, 0(s1)
  FLE.S s1, fs2, fs0
  BNE s1, zero, bb35
  JAL zero, bb36
bb35:
  LA s1, .CONSTANT.7.0
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs1, 0(s1)
  FSGNJN.S fs3, fs0, fs1
  FLE.S s1, fs3, fs2
  ADD s2, s1, zero
  JAL zero, bb37
bb36:
  ADD s2, zero, zero
  JAL zero, bb37
bb37:
  ADD s1, s2, zero
  BNE s1, zero, bb38
  JAL zero, bb40
bb38:
  ADDI a0, zero, 1
  CALL putint
  JAL zero, bb39
bb39:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LUI ra, 293
  ADDI ra, ra, -128
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 293
  ADDI t5, t5, -120
  ADD t5, t5, sp
  FLD fs3, 0(t5)
  LUI t6, 293
  ADDI t6, t6, -112
  ADD t6, t6, sp
  FLD fs2, 0(t6)
  LUI t5, 293
  ADDI t5, t5, -104
  ADD t5, t5, sp
  FLD fs1, 0(t5)
  LUI t6, 293
  ADDI t6, t6, -96
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t5, 293
  ADDI t5, t5, -88
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t6, 293
  ADDI t6, t6, -80
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t5, 293
  ADDI t5, t5, -72
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t6, 293
  ADDI t6, t6, -64
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t5, 293
  ADDI t5, t5, -56
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t6, 293
  ADDI t6, t6, -48
  ADD t6, t6, sp
  FLD fs0, 0(t6)
  LUI t0, 293
  ADDI t0, t0, -32
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb40:
  ADD a0, zero, zero
  CALL putint
  JAL zero, bb39
bb41:
  LUI s1, 24
  ADDI s1, s1, 1696
  ADD s0, zero, s1
  JAL zero, bb28
func:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDW s2, s0, s1
  ADDIW s1, s2, 1
  MULW s3, s2, s1
  ADDI s1, zero, 2
  DIVW s2, s3, s1
  ADDW s1, s2, s0
  ADDIW s0, s1, 1
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
