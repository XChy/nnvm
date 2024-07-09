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
  ADDI sp, sp, -160
  FSD fs6, 0(sp)
  SD s11, 8(sp)
  FSD fs5, 16(sp)
  SD s10, 24(sp)
  FSD fs4, 32(sp)
  SD s9, 40(sp)
  FSD fs3, 48(sp)
  SD s8, 56(sp)
  FSD fs2, 64(sp)
  SD s7, 72(sp)
  SD s6, 80(sp)
  SD ra, 88(sp)
  SD s0, 96(sp)
  SD s5, 104(sp)
  SD s1, 112(sp)
  SD s2, 120(sp)
  SD s3, 128(sp)
  SD s4, 136(sp)
  FSD fs0, 144(sp)
  FSD fs1, 152(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADDI s4, zero, 0
  FCVT.S.W fs0, s4
  FSGNJ.S fs1, fs0, fs0
  ADD s4, zero, zero
  ADD s5, zero, zero
  JAL zero, bb2
bb1:
  FLD fs6, 0(sp)
  LD s11, 8(sp)
  FLD fs5, 16(sp)
  LD s10, 24(sp)
  FLD fs4, 32(sp)
  LD s9, 40(sp)
  FLD fs3, 48(sp)
  LD s8, 56(sp)
  FLD fs2, 64(sp)
  LD s7, 72(sp)
  LD s6, 80(sp)
  LD ra, 88(sp)
  LD s0, 96(sp)
  LD s5, 104(sp)
  LD s1, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  FLD fs0, 144(sp)
  FLD fs1, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb2:
  ADD s6, s5, zero
  ADD s7, s4, zero
  FSGNJ.S fs2, fs1, fs1
  SLT s8, s6, s2
  BNE s8, zero, bb3
  JAL zero, bb4
bb3:
  FSGNJ.S fs3, fs2, fs2
  ADD s8, s7, zero
  JAL zero, bb5
bb4:
  FSGNJ.S fs1, fs0, fs0
  ADD s0, zero, zero
  ADD s4, zero, zero
  JAL zero, bb9
bb5:
  ADD s7, s8, zero
  FSGNJ.S fs2, fs3, fs3
  SLT s9, s7, s2
  BNE s9, zero, bb6
  JAL zero, bb8
bb6:
  ADDI s9, zero, 4
  MULW s10, s7, s9
  ADD s9, s0, s10
  FLW fs4, 0(s9)
  ADDW s9, s6, s7
  ADDIW s10, s9, 1
  MULW s11, s9, s10
  ADDI s9, zero, 2
  DIVW s10, s11, s9
  ADDW s9, s10, s6
  ADDIW s10, s9, 1
  ADD s9, s10, zero
  JAL zero, bb7
bb7:
  ADD s10, s9, zero
  FCVT.S.W fs5, s10
  FDIV.S fs6, fs4, fs5
  FADD.S fs4, fs2, fs6
  ADDIW s9, s7, 1
  FSGNJ.S fs3, fs4, fs4
  ADD s8, s9, zero
  JAL zero, bb5
bb8:
  ADDI s8, zero, 4
  MULW s9, s6, s8
  ADD s8, s3, s9
  FSW fs2, 0(s8)
  ADDIW s8, s6, 1
  FSGNJ.S fs1, fs2, fs2
  ADD s4, s7, zero
  ADD s5, s8, zero
  JAL zero, bb2
bb9:
  ADD s5, s4, zero
  ADD s6, s0, zero
  FSGNJ.S fs0, fs1, fs1
  SLT s7, s5, s2
  BNE s7, zero, bb10
  JAL zero, bb11
bb10:
  FSGNJ.S fs2, fs0, fs0
  ADD s7, s6, zero
  JAL zero, bb12
bb11:
  JAL zero, bb1
bb12:
  ADD s6, s7, zero
  FSGNJ.S fs0, fs2, fs2
  SLT s8, s6, s2
  BNE s8, zero, bb13
  JAL zero, bb15
bb13:
  ADDI s8, zero, 4
  MULW s9, s6, s8
  ADD s8, s3, s9
  FLW fs3, 0(s8)
  ADDW s8, s6, s5
  ADDIW s9, s8, 1
  MULW s10, s8, s9
  ADDI s8, zero, 2
  DIVW s9, s10, s8
  ADDW s8, s9, s6
  ADDIW s9, s8, 1
  ADD s8, s9, zero
  JAL zero, bb14
bb14:
  ADD s9, s8, zero
  FCVT.S.W fs4, s9
  FDIV.S fs5, fs3, fs4
  FADD.S fs3, fs0, fs5
  ADDIW s8, s6, 1
  FSGNJ.S fs2, fs3, fs3
  ADD s7, s8, zero
  JAL zero, bb12
bb15:
  ADDI s7, zero, 4
  MULW s8, s5, s7
  ADD s7, s1, s8
  FSW fs0, 0(s7)
  ADDIW s7, s5, 1
  FSGNJ.S fs1, fs0, fs0
  ADD s0, s6, zero
  ADD s4, s7, zero
  JAL zero, bb9
mult1:
  ADDI sp, sp, -144
  FSD fs5, 0(sp)
  SD s10, 8(sp)
  FSD fs4, 16(sp)
  SD s9, 24(sp)
  FSD fs3, 32(sp)
  SD s8, 40(sp)
  SD ra, 48(sp)
  FSD fs2, 56(sp)
  SD s7, 64(sp)
  SD s0, 72(sp)
  SD s5, 80(sp)
  SD s1, 88(sp)
  SD s6, 96(sp)
  SD s2, 104(sp)
  FSD fs0, 112(sp)
  FSD fs1, 120(sp)
  SD s3, 128(sp)
  SD s4, 136(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  FCVT.S.L fs0, zero
  FSGNJ.S fs1, fs0, fs0
  ADD s3, zero, zero
  ADD s4, zero, zero
  JAL zero, bb17
bb17:
  ADD s5, s4, zero
  ADD s6, s3, zero
  FSGNJ.S fs0, fs1, fs1
  SLT s7, s5, s2
  BNE s7, zero, bb18
  JAL zero, bb19
bb18:
  FSGNJ.S fs2, fs0, fs0
  ADD s7, s6, zero
  JAL zero, bb20
bb19:
  FLD fs5, 0(sp)
  LD s10, 8(sp)
  FLD fs4, 16(sp)
  LD s9, 24(sp)
  FLD fs3, 32(sp)
  LD s8, 40(sp)
  LD ra, 48(sp)
  FLD fs2, 56(sp)
  LD s7, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s1, 88(sp)
  LD s6, 96(sp)
  LD s2, 104(sp)
  FLD fs0, 112(sp)
  FLD fs1, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb20:
  ADD s6, s7, zero
  FSGNJ.S fs0, fs2, fs2
  SLT s8, s6, s2
  BNE s8, zero, bb21
  JAL zero, bb23
bb21:
  ADDI s8, zero, 4
  MULW s9, s6, s8
  ADD s8, s0, s9
  FLW fs3, 0(s8)
  ADDW s8, s5, s6
  ADDIW s9, s8, 1
  MULW s10, s8, s9
  ADDI s8, zero, 2
  DIVW s9, s10, s8
  ADDW s8, s9, s5
  ADDIW s9, s8, 1
  ADD s8, s9, zero
  JAL zero, bb22
bb22:
  ADD s9, s8, zero
  FCVT.S.W fs4, s9
  FDIV.S fs5, fs3, fs4
  FADD.S fs3, fs0, fs5
  ADDIW s8, s6, 1
  FSGNJ.S fs2, fs3, fs3
  ADD s7, s8, zero
  JAL zero, bb20
bb23:
  ADDI s7, zero, 4
  MULW s8, s5, s7
  ADD s7, s1, s8
  FSW fs0, 0(s7)
  ADDIW s7, s5, 1
  FSGNJ.S fs1, fs0, fs0
  ADD s3, s6, zero
  ADD s4, s7, zero
  JAL zero, bb17
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
  JAL zero, bb25
bb25:
  LA s0, temp
  FLW fs1, 0(s0)
  LA s0, temp
  FLW fs2, 0(s0)
  FDIV.S fs3, fs0, fs2
  FSUB.S fs2, fs1, fs3
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FLT.S s0, fs1, fs2
  BNE s0, zero, bb28
  JAL zero, bb29
bb26:
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
  JAL zero, bb25
bb27:
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
bb28:
  ADDI s0, zero, 1
  JAL zero, bb30
bb29:
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
  JAL zero, bb30
bb30:
  ADD s1, s0, zero
  BNE s1, zero, bb26
  JAL zero, bb27
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
  JAL zero, bb32
bb32:
  ADD s4, s3, zero
  FSGNJ.S fs0, fs1, fs1
  SLT s5, s4, s2
  BNE s5, zero, bb33
  JAL zero, bb34
bb33:
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
  JAL zero, bb32
bb34:
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
  SD s10, 8(sp)
  FSD fs4, 16(sp)
  SD s9, 24(sp)
  FSD fs3, 32(sp)
  SD s8, 40(sp)
  SD ra, 48(sp)
  FSD fs2, 56(sp)
  SD s7, 64(sp)
  SD s0, 72(sp)
  SD s5, 80(sp)
  SD s1, 88(sp)
  SD s6, 96(sp)
  SD s2, 104(sp)
  FSD fs0, 112(sp)
  FSD fs1, 120(sp)
  SD s3, 128(sp)
  SD s4, 136(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  FCVT.S.L fs0, zero
  FSGNJ.S fs1, fs0, fs0
  ADD s3, zero, zero
  ADD s4, zero, zero
  JAL zero, bb36
bb36:
  ADD s5, s4, zero
  ADD s6, s3, zero
  FSGNJ.S fs0, fs1, fs1
  SLT s7, s5, s2
  BNE s7, zero, bb37
  JAL zero, bb38
bb37:
  FSGNJ.S fs2, fs0, fs0
  ADD s7, s6, zero
  JAL zero, bb39
bb38:
  FLD fs5, 0(sp)
  LD s10, 8(sp)
  FLD fs4, 16(sp)
  LD s9, 24(sp)
  FLD fs3, 32(sp)
  LD s8, 40(sp)
  LD ra, 48(sp)
  FLD fs2, 56(sp)
  LD s7, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s1, 88(sp)
  LD s6, 96(sp)
  LD s2, 104(sp)
  FLD fs0, 112(sp)
  FLD fs1, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb39:
  ADD s6, s7, zero
  FSGNJ.S fs0, fs2, fs2
  SLT s8, s6, s2
  BNE s8, zero, bb40
  JAL zero, bb42
bb40:
  ADDI s8, zero, 4
  MULW s9, s6, s8
  ADD s8, s0, s9
  FLW fs3, 0(s8)
  ADDW s8, s6, s5
  ADDIW s9, s8, 1
  MULW s10, s8, s9
  ADDI s8, zero, 2
  DIVW s9, s10, s8
  ADDW s8, s9, s6
  ADDIW s9, s8, 1
  ADD s8, s9, zero
  JAL zero, bb41
bb41:
  ADD s9, s8, zero
  FCVT.S.W fs4, s9
  FDIV.S fs5, fs3, fs4
  FADD.S fs3, fs0, fs5
  ADDIW s8, s6, 1
  FSGNJ.S fs2, fs3, fs3
  ADD s7, s8, zero
  JAL zero, bb39
bb42:
  ADDI s7, zero, 4
  MULW s8, s5, s7
  ADD s7, s1, s8
  FSW fs0, 0(s7)
  ADDIW s7, s5, 1
  FSGNJ.S fs1, fs0, fs0
  ADD s3, s6, zero
  ADD s4, s7, zero
  JAL zero, bb36
main:
  LUI t0, 1048283
  ADDIW t0, t0, -32
  ADD sp, sp, t0
  LUI t5, 293
  ADDIW t5, t5, -128
  ADD t5, t5, sp
  FSD fs6, 0(t5)
  LUI t6, 293
  ADDIW t6, t6, -120
  ADD t6, t6, sp
  SD s11, 0(t6)
  LUI t5, 293
  ADDIW t5, t5, -112
  ADD t5, t5, sp
  FSD fs5, 0(t5)
  LUI t6, 293
  ADDIW t6, t6, -104
  ADD t6, t6, sp
  SD s10, 0(t6)
  LUI t5, 293
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t6, 293
  ADDIW t6, t6, -88
  ADD t6, t6, sp
  SD ra, 0(t6)
  LUI t5, 293
  ADDIW t5, t5, -80
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t6, 293
  ADDIW t6, t6, -72
  ADD t6, t6, sp
  SD s5, 0(t6)
  LUI t5, 293
  ADDIW t5, t5, -64
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t6, 293
  ADDIW t6, t6, -56
  ADD t6, t6, sp
  SD s7, 0(t6)
  LUI t5, 293
  ADDIW t5, t5, -48
  ADD t5, t5, sp
  FSD fs2, 0(t5)
  LUI t6, 293
  ADDIW t6, t6, -40
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t5, 293
  ADDIW t5, t5, -32
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t6, 293
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SD s4, 0(t6)
  LUI t5, 293
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  FSD fs0, 0(t5)
  LUI t6, 293
  ADDIW t6, t6, -8
  ADD t6, t6, sp
  FSD fs1, 0(t6)
  LUI t5, 293
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t6, 293
  ADDIW t6, t6, 8
  ADD t6, t6, sp
  FSD fs3, 0(t6)
  LUI t5, 293
  ADDIW t5, t5, 16
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t6, 293
  ADDIW t6, t6, 24
  ADD t6, t6, sp
  FSD fs4, 0(t6)
  LUI s0, 24
  ADDIW s0, s0, 1696
  SLT s1, zero, s0
  XORI s0, s1, 1
  BNE s0, zero, bb44
  JAL zero, bb102
bb44:
  ADDI s0, zero, 2000
  JAL zero, bb45
bb45:
  ADD s1, s0, zero
  ADDI a0, zero, 62
  CALL _sysy_starttime
  ADD s2, zero, zero
  JAL zero, bb46
bb46:
  ADD s3, s2, zero
  SLT s4, s3, s1
  BNE s4, zero, bb47
  JAL zero, bb48
bb47:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LUI t5, 195
  ADDIW t5, t5, 1280
  ADD t5, t5, sp
  ADD s4, t5, s5
  ADDI s5, zero, 1
  FCVT.S.W fs0, s5
  FSW fs0, 0(s4)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb46
bb48:
  ADD s2, zero, zero
  JAL zero, bb49
bb49:
  ADD s3, s2, zero
  SLTI s4, s3, 1000
  BNE s4, zero, bb50
  JAL zero, bb51
bb50:
  FCVT.S.L fs0, zero
  FSGNJ.S fs1, fs0, fs0
  ADD s4, zero, zero
  ADD s5, zero, zero
  JAL zero, bb61
bb51:
  ADDI a0, zero, 76
  CALL _sysy_stoptime
  FCVT.S.L fs0, zero
  FSGNJ.S fs1, fs0, fs0
  ADD s2, zero, zero
  JAL zero, bb82
bb52:
  FSGNJ.S fs2, fs1, fs1
  FSGNJ.S fs1, fs0, fs0
  ADD s2, zero, zero
  JAL zero, bb85
bb53:
  FSGNJ.S fs0, fs1, fs1
  FDIV.S fs1, fs2, fs0
  JAL zero, bb75
bb54:
  FSGNJ.S fs0, fs2, fs2
  LA s2, .CONSTANT.7.1
  FLW fs2, 0(s2)
  FSUB.S fs3, fs0, fs2
  LA s2, .CONSTANT.7.0
  FLW fs0, 0(s2)
  FLE.S s2, fs3, fs0
  BNE s2, zero, bb55
  JAL zero, bb56
bb55:
  LA s2, .CONSTANT.7.0
  FLW fs0, 0(s2)
  LA s2, .CONSTANT.7.0
  FLW fs2, 0(s2)
  FSGNJN.S fs4, fs0, fs2
  FLE.S s2, fs4, fs3
  ADD s3, s2, zero
  JAL zero, bb57
bb56:
  ADD s3, zero, zero
  JAL zero, bb57
bb57:
  ADD s2, s3, zero
  BNE s2, zero, bb58
  JAL zero, bb60
bb58:
  ADDI a0, zero, 1
  CALL putint
  JAL zero, bb59
bb59:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LUI t6, 293
  ADDIW t6, t6, -128
  ADD t6, t6, sp
  FLD fs6, 0(t6)
  LUI t5, 293
  ADDIW t5, t5, -120
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t6, 293
  ADDIW t6, t6, -112
  ADD t6, t6, sp
  FLD fs5, 0(t6)
  LUI t5, 293
  ADDIW t5, t5, -104
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t6, 293
  ADDIW t6, t6, -96
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI ra, 293
  ADDIW ra, ra, -88
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 293
  ADDIW t5, t5, -80
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t6, 293
  ADDIW t6, t6, -72
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t5, 293
  ADDIW t5, t5, -64
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 293
  ADDIW t6, t6, -56
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t5, 293
  ADDIW t5, t5, -48
  ADD t5, t5, sp
  FLD fs2, 0(t5)
  LUI t6, 293
  ADDIW t6, t6, -40
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t5, 293
  ADDIW t5, t5, -32
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t6, 293
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t5, 293
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  FLD fs0, 0(t5)
  LUI t6, 293
  ADDIW t6, t6, -8
  ADD t6, t6, sp
  FLD fs1, 0(t6)
  LUI t5, 293
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t6, 293
  ADDIW t6, t6, 8
  ADD t6, t6, sp
  FLD fs3, 0(t6)
  LUI t5, 293
  ADDIW t5, t5, 16
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t6, 293
  ADDIW t6, t6, 24
  ADD t6, t6, sp
  FLD fs4, 0(t6)
  LUI t0, 293
  ADDIW t0, t0, 32
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb60:
  ADD a0, zero, zero
  CALL putint
  JAL zero, bb59
bb61:
  ADD s6, s5, zero
  ADD s7, s4, zero
  FSGNJ.S fs2, fs1, fs1
  SLT s8, s6, s1
  BNE s8, zero, bb62
  JAL zero, bb63
bb62:
  FSGNJ.S fs3, fs2, fs2
  ADD s8, s7, zero
  JAL zero, bb64
bb63:
  FSGNJ.S fs1, fs0, fs0
  ADD s4, zero, zero
  ADD s5, zero, zero
  JAL zero, bb88
bb64:
  ADD s7, s8, zero
  FSGNJ.S fs2, fs3, fs3
  SLT s9, s7, s1
  BNE s9, zero, bb65
  JAL zero, bb67
bb65:
  ADDI s9, zero, 4
  MULW s10, s7, s9
  LUI t5, 195
  ADDIW t5, t5, 1280
  ADD t5, t5, sp
  ADD s9, t5, s10
  FLW fs4, 0(s9)
  ADDW s9, s6, s7
  ADDIW s10, s9, 1
  MULW s11, s9, s10
  ADDI s9, zero, 2
  DIVW s10, s11, s9
  ADDW s9, s10, s6
  ADDIW s10, s9, 1
  ADD s9, s10, zero
  JAL zero, bb66
bb66:
  ADD s10, s9, zero
  FCVT.S.W fs5, s10
  FDIV.S fs6, fs4, fs5
  FADD.S fs4, fs2, fs6
  ADDIW s9, s7, 1
  FSGNJ.S fs3, fs4, fs4
  ADD s8, s9, zero
  JAL zero, bb64
bb67:
  ADDI s8, zero, 4
  MULW s9, s6, s8
  ADDI t6, sp, 0
  ADD s8, t6, s9
  FSW fs2, 0(s8)
  ADDIW s8, s6, 1
  FSGNJ.S fs1, fs2, fs2
  ADD s4, s7, zero
  ADD s5, s8, zero
  JAL zero, bb61
bb68:
  ADD s6, s5, zero
  ADD s7, s4, zero
  FSGNJ.S fs2, fs1, fs1
  SLT s8, s6, s1
  BNE s8, zero, bb69
  JAL zero, bb70
bb69:
  FSGNJ.S fs3, fs2, fs2
  ADD s8, s7, zero
  JAL zero, bb71
bb70:
  FSGNJ.S fs1, fs0, fs0
  ADD s4, zero, zero
  ADD s5, zero, zero
  JAL zero, bb95
bb71:
  ADD s7, s8, zero
  FSGNJ.S fs2, fs3, fs3
  SLT s9, s7, s1
  BNE s9, zero, bb72
  JAL zero, bb74
bb72:
  ADDI s9, zero, 4
  MULW s10, s7, s9
  LUI t5, 98
  ADDIW t5, t5, -1408
  ADD t5, t5, sp
  ADD s9, t5, s10
  FLW fs4, 0(s9)
  ADDW s9, s6, s7
  ADDIW s10, s9, 1
  MULW s11, s9, s10
  ADDI s9, zero, 2
  DIVW s10, s11, s9
  ADDW s9, s10, s6
  ADDIW s10, s9, 1
  ADD s9, s10, zero
  JAL zero, bb73
bb73:
  ADD s10, s9, zero
  FCVT.S.W fs5, s10
  FDIV.S fs6, fs4, fs5
  FADD.S fs4, fs2, fs6
  ADDIW s9, s7, 1
  FSGNJ.S fs3, fs4, fs4
  ADD s8, s9, zero
  JAL zero, bb71
bb74:
  ADDI s8, zero, 4
  MULW s9, s6, s8
  ADDI t6, sp, 0
  ADD s8, t6, s9
  FSW fs2, 0(s8)
  ADDIW s8, s6, 1
  FSGNJ.S fs1, fs2, fs2
  ADD s4, s7, zero
  ADD s5, s8, zero
  JAL zero, bb68
bb75:
  JAL zero, bb76
bb76:
  LA s1, temp
  FLW fs0, 0(s1)
  LA s1, temp
  FLW fs2, 0(s1)
  FDIV.S fs3, fs1, fs2
  FSUB.S fs2, fs0, fs3
  LA s1, .CONSTANT.7.0
  FLW fs0, 0(s1)
  FLT.S s1, fs0, fs2
  BNE s1, zero, bb79
  JAL zero, bb80
bb77:
  LA s2, temp
  FLW fs0, 0(s2)
  LA s2, temp
  FLW fs2, 0(s2)
  FDIV.S fs3, fs1, fs2
  FADD.S fs2, fs0, fs3
  ADDI s2, zero, 2
  FCVT.S.W fs0, s2
  FDIV.S fs3, fs2, fs0
  LA s2, temp
  FSW fs3, 0(s2)
  JAL zero, bb76
bb78:
  LA s2, temp
  FLW fs0, 0(s2)
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb54
bb79:
  ADDI s1, zero, 1
  JAL zero, bb81
bb80:
  LA s2, temp
  FLW fs0, 0(s2)
  LA s2, temp
  FLW fs2, 0(s2)
  FDIV.S fs3, fs1, fs2
  FSUB.S fs2, fs0, fs3
  LA s2, .CONSTANT.7.0
  FLW fs0, 0(s2)
  LA s2, .CONSTANT.7.0
  FLW fs3, 0(s2)
  FSGNJN.S fs4, fs0, fs3
  FLT.S s2, fs2, fs4
  ADD s1, s2, zero
  JAL zero, bb81
bb81:
  ADD s2, s1, zero
  BNE s2, zero, bb77
  JAL zero, bb78
bb82:
  ADD s3, s2, zero
  FSGNJ.S fs2, fs1, fs1
  SLT s4, s3, s1
  BNE s4, zero, bb83
  JAL zero, bb84
bb83:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LUI t5, 195
  ADDIW t5, t5, 1280
  ADD t5, t5, sp
  ADD s4, t5, s5
  FLW fs3, 0(s4)
  LUI t6, 98
  ADDIW t6, t6, -1408
  ADD t6, t6, sp
  ADD s4, t6, s5
  FLW fs4, 0(s4)
  FMUL.S fs5, fs3, fs4
  FADD.S fs3, fs2, fs5
  ADDIW s4, s3, 1
  FSGNJ.S fs1, fs3, fs3
  ADD s2, s4, zero
  JAL zero, bb82
bb84:
  FSGNJ.S fs1, fs2, fs2
  JAL zero, bb52
bb85:
  ADD s3, s2, zero
  FSGNJ.S fs0, fs1, fs1
  SLT s4, s3, s1
  BNE s4, zero, bb86
  JAL zero, bb87
bb86:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LUI t5, 98
  ADDIW t5, t5, -1408
  ADD t5, t5, sp
  ADD s4, t5, s5
  FLW fs3, 0(s4)
  FLW fs4, 0(s4)
  FMUL.S fs5, fs3, fs4
  FADD.S fs3, fs0, fs5
  ADDIW s4, s3, 1
  FSGNJ.S fs1, fs3, fs3
  ADD s2, s4, zero
  JAL zero, bb85
bb87:
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb53
bb88:
  ADD s6, s5, zero
  ADD s7, s4, zero
  FSGNJ.S fs2, fs1, fs1
  SLT s8, s6, s1
  BNE s8, zero, bb89
  JAL zero, bb90
bb89:
  FSGNJ.S fs3, fs2, fs2
  ADD s8, s7, zero
  JAL zero, bb91
bb90:
  FSGNJ.S fs1, fs0, fs0
  ADD s4, zero, zero
  ADD s5, zero, zero
  JAL zero, bb68
bb91:
  ADD s7, s8, zero
  FSGNJ.S fs2, fs3, fs3
  SLT s9, s7, s1
  BNE s9, zero, bb92
  JAL zero, bb94
bb92:
  ADDI s9, zero, 4
  MULW s10, s7, s9
  ADDI t6, sp, 0
  ADD s9, t6, s10
  FLW fs4, 0(s9)
  ADDW s9, s7, s6
  ADDIW s10, s9, 1
  MULW s11, s9, s10
  ADDI s9, zero, 2
  DIVW s10, s11, s9
  ADDW s9, s10, s7
  ADDIW s10, s9, 1
  ADD s9, s10, zero
  JAL zero, bb93
bb93:
  ADD s10, s9, zero
  FCVT.S.W fs5, s10
  FDIV.S fs6, fs4, fs5
  FADD.S fs4, fs2, fs6
  ADDIW s9, s7, 1
  FSGNJ.S fs3, fs4, fs4
  ADD s8, s9, zero
  JAL zero, bb91
bb94:
  ADDI s8, zero, 4
  MULW s9, s6, s8
  LUI t5, 98
  ADDIW t5, t5, -1408
  ADD t5, t5, sp
  ADD s8, t5, s9
  FSW fs2, 0(s8)
  ADDIW s8, s6, 1
  FSGNJ.S fs1, fs2, fs2
  ADD s4, s7, zero
  ADD s5, s8, zero
  JAL zero, bb88
bb95:
  ADD s6, s5, zero
  ADD s7, s4, zero
  FSGNJ.S fs0, fs1, fs1
  SLT s8, s6, s1
  BNE s8, zero, bb96
  JAL zero, bb97
bb96:
  FSGNJ.S fs2, fs0, fs0
  ADD s8, s7, zero
  JAL zero, bb98
bb97:
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb49
bb98:
  ADD s7, s8, zero
  FSGNJ.S fs0, fs2, fs2
  SLT s9, s7, s1
  BNE s9, zero, bb99
  JAL zero, bb101
bb99:
  ADDI s9, zero, 4
  MULW s10, s7, s9
  ADDI t6, sp, 0
  ADD s9, t6, s10
  FLW fs3, 0(s9)
  ADDW s9, s7, s6
  ADDIW s10, s9, 1
  MULW s11, s9, s10
  ADDI s9, zero, 2
  DIVW s10, s11, s9
  ADDW s9, s10, s7
  ADDIW s10, s9, 1
  ADD s9, s10, zero
  JAL zero, bb100
bb100:
  ADD s10, s9, zero
  FCVT.S.W fs4, s10
  FDIV.S fs5, fs3, fs4
  FADD.S fs3, fs0, fs5
  ADDIW s9, s7, 1
  FSGNJ.S fs2, fs3, fs3
  ADD s8, s9, zero
  JAL zero, bb98
bb101:
  ADDI s8, zero, 4
  MULW s9, s6, s8
  LUI t5, 195
  ADDIW t5, t5, 1280
  ADD t5, t5, sp
  ADD s8, t5, s9
  FSW fs0, 0(s8)
  ADDIW s8, s6, 1
  FSGNJ.S fs1, fs0, fs0
  ADD s4, s7, zero
  ADD s5, s8, zero
  JAL zero, bb95
bb102:
  LUI s1, 24
  ADDIW s1, s1, 1696
  ADD s0, zero, s1
  JAL zero, bb45
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
