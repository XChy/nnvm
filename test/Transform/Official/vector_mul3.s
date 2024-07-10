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
  ADDI sp, sp, -176
  FSD fs7, 0(sp)
  SD ra, 8(sp)
  FSD fs6, 16(sp)
  SD s11, 24(sp)
  SD s10, 32(sp)
  FSD fs5, 40(sp)
  FSD fs4, 48(sp)
  SD s9, 56(sp)
  FSD fs3, 64(sp)
  SD s8, 72(sp)
  FSD fs2, 80(sp)
  SD s7, 88(sp)
  SD s6, 96(sp)
  SD s0, 104(sp)
  SD s5, 112(sp)
  SD s1, 120(sp)
  SD s2, 128(sp)
  SD s3, 136(sp)
  SD s4, 144(sp)
  FSD fs0, 152(sp)
  FSD fs1, 160(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADDI s4, zero, 0
  FCVT.S.W fs0, s4
  FSGNJ.S fs1, fs0, fs0
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb1
bb1:
  ADD s6, s5, zero
  ADD s7, s4, zero
  FSGNJ.S fs2, fs1, fs1
  SLT s8, s6, s2
  BNE s8, zero, bb9
  # implict jump to bb2
bb2:
  FSGNJ.S fs3, fs0, fs0
  ADD s8, zero, zero
  ADD s9, zero, zero
  # implict jump to bb3
bb3:
  ADD s10, s9, zero
  ADD s11, s8, zero
  FSGNJ.S fs4, fs3, fs3
  SLT t0, s10, s2
  BNE t0, zero, bb5
  # implict jump to bb4
bb4:
  FLD fs7, 0(sp)
  LD ra, 8(sp)
  FLD fs6, 16(sp)
  LD s11, 24(sp)
  LD s10, 32(sp)
  FLD fs5, 40(sp)
  FLD fs4, 48(sp)
  LD s9, 56(sp)
  FLD fs3, 64(sp)
  LD s8, 72(sp)
  FLD fs2, 80(sp)
  LD s7, 88(sp)
  LD s6, 96(sp)
  LD s0, 104(sp)
  LD s5, 112(sp)
  LD s1, 120(sp)
  LD s2, 128(sp)
  LD s3, 136(sp)
  LD s4, 144(sp)
  FLD fs0, 152(sp)
  FLD fs1, 160(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb5:
  FSGNJ.S fs5, fs4, fs4
  ADD t0, s11, zero
  # implict jump to bb6
bb6:
  ADD s11, t0, zero
  FSGNJ.S fs4, fs5, fs5
  SLT t1, s11, s2
  BNE t1, zero, bb8
  # implict jump to bb7
bb7:
  SLLIW t1, s10, 2
  ADD t2, s1, t1
  FSW fs4, 0(t2)
  ADDIW t1, s10, 1
  FSGNJ.S fs3, fs4, fs4
  ADD s8, s11, zero
  ADD s9, t1, zero
  JAL zero, bb3
bb8:
  SLLIW s8, s11, 2
  ADD s9, s3, s8
  FLW fs3, 0(s9)
  ADDW s8, s11, s10
  ADDIW s9, s8, 1
  MULW t1, s8, s9
  ADDI s8, zero, 2
  DIVW s9, t1, s8
  ADDW s8, s9, s11
  ADDIW s9, s8, 1
  FCVT.S.W fs6, s9
  FDIV.S fs7, fs3, fs6
  FADD.S fs3, fs4, fs7
  ADDIW s8, s11, 1
  FSGNJ.S fs5, fs3, fs3
  ADD t0, s8, zero
  JAL zero, bb6
bb9:
  FSGNJ.S fs3, fs2, fs2
  ADD s8, s7, zero
  # implict jump to bb10
bb10:
  ADD s7, s8, zero
  FSGNJ.S fs2, fs3, fs3
  SLT s9, s7, s2
  BNE s9, zero, bb12
  # implict jump to bb11
bb11:
  SLLIW s9, s6, 2
  ADD s10, s3, s9
  FSW fs2, 0(s10)
  ADDIW s9, s6, 1
  FSGNJ.S fs1, fs2, fs2
  ADD s4, s7, zero
  ADD s5, s9, zero
  JAL zero, bb1
bb12:
  SLLIW s4, s7, 2
  ADD s5, s0, s4
  FLW fs1, 0(s5)
  ADDW s4, s6, s7
  ADDIW s5, s4, 1
  MULW s9, s4, s5
  ADDI s4, zero, 2
  DIVW s5, s9, s4
  ADDW s4, s5, s6
  ADDIW s5, s4, 1
  FCVT.S.W fs4, s5
  FDIV.S fs5, fs1, fs4
  FADD.S fs1, fs2, fs5
  ADDIW s4, s7, 1
  FSGNJ.S fs3, fs1, fs1
  ADD s8, s4, zero
  JAL zero, bb10
mult1:
  ADDI sp, sp, -128
  SD s9, 0(sp)
  FSD fs4, 8(sp)
  FSD fs3, 16(sp)
  SD s8, 24(sp)
  SD ra, 32(sp)
  FSD fs2, 40(sp)
  SD s7, 48(sp)
  SD s0, 56(sp)
  SD s5, 64(sp)
  SD s1, 72(sp)
  SD s6, 80(sp)
  SD s2, 88(sp)
  FSD fs0, 96(sp)
  FSD fs1, 104(sp)
  SD s3, 112(sp)
  SD s4, 120(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  FCVT.S.L fs0, zero
  FSGNJ.S fs1, fs0, fs0
  ADD s3, zero, zero
  ADD s4, zero, zero
  # implict jump to bb14
bb14:
  ADD s5, s4, zero
  ADD s6, s3, zero
  FSGNJ.S fs0, fs1, fs1
  SLT s7, s5, s2
  BNE s7, zero, bb16
  # implict jump to bb15
bb15:
  LD s9, 0(sp)
  FLD fs4, 8(sp)
  FLD fs3, 16(sp)
  LD s8, 24(sp)
  LD ra, 32(sp)
  FLD fs2, 40(sp)
  LD s7, 48(sp)
  LD s0, 56(sp)
  LD s5, 64(sp)
  LD s1, 72(sp)
  LD s6, 80(sp)
  LD s2, 88(sp)
  FLD fs0, 96(sp)
  FLD fs1, 104(sp)
  LD s3, 112(sp)
  LD s4, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb16:
  FSGNJ.S fs2, fs0, fs0
  ADD s7, s6, zero
  # implict jump to bb17
bb17:
  ADD s6, s7, zero
  FSGNJ.S fs0, fs2, fs2
  SLT s8, s6, s2
  BNE s8, zero, bb19
  # implict jump to bb18
bb18:
  SLLIW s8, s5, 2
  ADD s9, s1, s8
  FSW fs0, 0(s9)
  ADDIW s8, s5, 1
  FSGNJ.S fs1, fs0, fs0
  ADD s3, s6, zero
  ADD s4, s8, zero
  JAL zero, bb14
bb19:
  SLLIW s3, s6, 2
  ADD s4, s0, s3
  FLW fs1, 0(s4)
  ADDW s3, s5, s6
  ADDIW s4, s3, 1
  MULW s8, s3, s4
  ADDI s3, zero, 2
  DIVW s4, s8, s3
  ADDW s3, s4, s5
  ADDIW s4, s3, 1
  FCVT.S.W fs3, s4
  FDIV.S fs4, fs1, fs3
  FADD.S fs1, fs0, fs4
  ADDIW s3, s6, 1
  FSGNJ.S fs2, fs1, fs1
  ADD s7, s3, zero
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
  # implict jump to bb21
bb21:
  LA s0, temp
  FLW fs1, 0(s0)
  FDIV.S fs2, fs0, fs1
  FSUB.S fs3, fs1, fs2
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FLT.S s0, fs1, fs3
  BNE s0, zero, bb26
  # implict jump to bb22
bb22:
  LA s0, temp
  FLW fs1, 0(s0)
  FDIV.S fs2, fs0, fs1
  FSUB.S fs3, fs1, fs2
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FSGNJN.S fs4, fs1, fs2
  FLT.S s0, fs3, fs4
  ADD s1, s0, zero
  # implict jump to bb23
bb23:
  ADD s0, s1, zero
  BNE s0, zero, bb25
  # implict jump to bb24
bb24:
  LA s0, temp
  FLW fs1, 0(s0)
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
bb25:
  LA s0, temp
  FLW fs1, 0(s0)
  FDIV.S fs2, fs0, fs1
  FADD.S fs3, fs1, fs2
  ADDI s0, zero, 2
  FCVT.S.W fs1, s0
  FDIV.S fs2, fs3, fs1
  LA s0, temp
  FSW fs2, 0(s0)
  JAL zero, bb21
bb26:
  ADDI s1, zero, 1
  JAL zero, bb23
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
  # implict jump to bb28
bb28:
  ADD s4, s3, zero
  FSGNJ.S fs0, fs1, fs1
  SLT s5, s4, s2
  BNE s5, zero, bb30
  # implict jump to bb29
bb29:
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
bb30:
  SLLIW s5, s4, 2
  ADD s6, s0, s5
  FLW fs2, 0(s6)
  ADD s6, s1, s5
  FLW fs3, 0(s6)
  FMUL.S fs4, fs2, fs3
  FADD.S fs2, fs0, fs4
  ADDIW s5, s4, 1
  FSGNJ.S fs1, fs2, fs2
  ADD s3, s5, zero
  JAL zero, bb28
mult2:
  ADDI sp, sp, -128
  SD s9, 0(sp)
  FSD fs4, 8(sp)
  FSD fs3, 16(sp)
  SD s8, 24(sp)
  SD ra, 32(sp)
  FSD fs2, 40(sp)
  SD s7, 48(sp)
  SD s0, 56(sp)
  SD s5, 64(sp)
  SD s1, 72(sp)
  SD s6, 80(sp)
  SD s2, 88(sp)
  FSD fs0, 96(sp)
  FSD fs1, 104(sp)
  SD s3, 112(sp)
  SD s4, 120(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  FCVT.S.L fs0, zero
  FSGNJ.S fs1, fs0, fs0
  ADD s3, zero, zero
  ADD s4, zero, zero
  # implict jump to bb32
bb32:
  ADD s5, s4, zero
  ADD s6, s3, zero
  FSGNJ.S fs0, fs1, fs1
  SLT s7, s5, s2
  BNE s7, zero, bb34
  # implict jump to bb33
bb33:
  LD s9, 0(sp)
  FLD fs4, 8(sp)
  FLD fs3, 16(sp)
  LD s8, 24(sp)
  LD ra, 32(sp)
  FLD fs2, 40(sp)
  LD s7, 48(sp)
  LD s0, 56(sp)
  LD s5, 64(sp)
  LD s1, 72(sp)
  LD s6, 80(sp)
  LD s2, 88(sp)
  FLD fs0, 96(sp)
  FLD fs1, 104(sp)
  LD s3, 112(sp)
  LD s4, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb34:
  FSGNJ.S fs2, fs0, fs0
  ADD s7, s6, zero
  # implict jump to bb35
bb35:
  ADD s6, s7, zero
  FSGNJ.S fs0, fs2, fs2
  SLT s8, s6, s2
  BNE s8, zero, bb37
  # implict jump to bb36
bb36:
  SLLIW s8, s5, 2
  ADD s9, s1, s8
  FSW fs0, 0(s9)
  ADDIW s8, s5, 1
  FSGNJ.S fs1, fs0, fs0
  ADD s3, s6, zero
  ADD s4, s8, zero
  JAL zero, bb32
bb37:
  SLLIW s3, s6, 2
  ADD s4, s0, s3
  FLW fs1, 0(s4)
  ADDW s3, s6, s5
  ADDIW s4, s3, 1
  MULW s8, s3, s4
  ADDI s3, zero, 2
  DIVW s4, s8, s3
  ADDW s3, s4, s6
  ADDIW s4, s3, 1
  FCVT.S.W fs3, s4
  FDIV.S fs4, fs1, fs3
  FADD.S fs1, fs0, fs4
  ADDIW s3, s6, 1
  FSGNJ.S fs2, fs1, fs1
  ADD s7, s3, zero
  JAL zero, bb35
main:
  LUI t0, 1048283
  ADDIW t0, t0, -80
  ADD sp, sp, t0
  LUI t5, 293
  ADDIW t5, t5, -128
  ADD t5, t5, sp
  FSD fs11, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -120
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -112
  ADD t5, t5, sp
  FSD fs1, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -104
  ADD t5, t5, sp
  FSD fs0, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -88
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -80
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -72
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -64
  ADD t5, t5, sp
  FSD fs5, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -56
  ADD t5, t5, sp
  FSD fs2, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -48
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -40
  ADD t5, t5, sp
  FSD fs8, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -32
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -24
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -8
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  FSD fs6, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 8
  ADD t5, t5, sp
  FSD fs7, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 16
  ADD t5, t5, sp
  FSD fs9, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  FSD fs10, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 40
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 48
  ADD t5, t5, sp
  FSD fs4, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  FSD fs3, 0(t5)
  LUI s0, 24
  ADDIW s0, s0, 1696
  SLT s1, zero, s0
  XORI s0, s1, 1
  BNE s0, zero, bb89
  # implict jump to bb39
bb39:
  LUI s0, 24
  ADDIW s0, s0, 1696
  ADD s1, zero, s0
  # implict jump to bb40
bb40:
  ADD s0, s1, zero
  ADDI a0, zero, 62
  CALL _sysy_starttime
  ADD s1, zero, zero
  # implict jump to bb41
bb41:
  ADD s2, s1, zero
  SLT s3, s2, s0
  BNE s3, zero, bb88
  # implict jump to bb42
bb42:
  ADD s3, zero, zero
  # implict jump to bb43
bb43:
  ADD s4, s3, zero
  SLTI s5, s4, 1000
  BNE s5, zero, bb63
  # implict jump to bb44
bb44:
  ADDI a0, zero, 76
  CALL _sysy_stoptime
  FCVT.S.L fs1, zero
  FSGNJ.S fs2, fs1, fs1
  ADD s5, zero, zero
  # implict jump to bb45
bb45:
  ADD s6, s5, zero
  FSGNJ.S fs3, fs2, fs2
  SLT s7, s6, s0
  BNE s7, zero, bb62
  # implict jump to bb46
bb46:
  FSGNJ.S fs4, fs1, fs1
  ADD s7, zero, zero
  # implict jump to bb47
bb47:
  ADD s8, s7, zero
  FSGNJ.S fs5, fs4, fs4
  SLT s9, s8, s0
  BNE s9, zero, bb61
  # implict jump to bb48
bb48:
  FDIV.S fs0, fs3, fs5
  # implict jump to bb49
bb49:
  LA s9, temp
  FLW fs6, 0(s9)
  FDIV.S fs7, fs0, fs6
  FSUB.S fs8, fs6, fs7
  LA s9, .CONSTANT.7.0
  FLW fs6, 0(s9)
  FLT.S s9, fs6, fs8
  BNE s9, zero, bb60
  # implict jump to bb50
bb50:
  LA s9, temp
  FLW fs6, 0(s9)
  FDIV.S fs7, fs0, fs6
  FSUB.S fs8, fs6, fs7
  LA s9, .CONSTANT.7.0
  FLW fs6, 0(s9)
  LA s9, .CONSTANT.7.0
  FLW fs7, 0(s9)
  FSGNJN.S fs9, fs6, fs7
  FLT.S s9, fs8, fs9
  ADD s10, s9, zero
  # implict jump to bb51
bb51:
  ADD s9, s10, zero
  BNE s9, zero, bb59
  # implict jump to bb52
bb52:
  LA s9, temp
  FLW fs6, 0(s9)
  LA s9, .CONSTANT.7.1
  FLW fs7, 0(s9)
  FSUB.S fs8, fs6, fs7
  LA s9, .CONSTANT.7.0
  FLW fs6, 0(s9)
  FLE.S s9, fs8, fs6
  BNE s9, zero, bb58
  # implict jump to bb53
bb53:
  ADD s9, zero, zero
  # implict jump to bb54
bb54:
  ADD s10, s9, zero
  BNE s10, zero, bb57
  # implict jump to bb55
bb55:
  ADD a0, zero, zero
  CALL putint
  # implict jump to bb56
bb56:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LUI t5, 293
  ADDIW t5, t5, -128
  ADD t5, t5, sp
  FLD fs11, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -120
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -112
  ADD t5, t5, sp
  FLD fs1, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -104
  ADD t5, t5, sp
  FLD fs0, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -88
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -80
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -72
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -64
  ADD t5, t5, sp
  FLD fs5, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -56
  ADD t5, t5, sp
  FLD fs2, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -48
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -40
  ADD t5, t5, sp
  FLD fs8, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -32
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -24
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, -8
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  FLD fs6, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 8
  ADD t5, t5, sp
  FLD fs7, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 16
  ADD t5, t5, sp
  FLD fs9, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  FLD fs10, 0(t5)
  LUI ra, 293
  ADDIW ra, ra, 32
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 293
  ADDIW t5, t5, 40
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 48
  ADD t5, t5, sp
  FLD fs4, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  FLD fs3, 0(t5)
  LUI t0, 293
  ADDIW t0, t0, 80
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb57:
  ADDI a0, zero, 1
  CALL putint
  JAL zero, bb56
bb58:
  LA s10, .CONSTANT.7.0
  FLW fs6, 0(s10)
  LA s10, .CONSTANT.7.0
  FLW fs7, 0(s10)
  FSGNJN.S fs9, fs6, fs7
  FLE.S s10, fs9, fs8
  ADD s9, s10, zero
  JAL zero, bb54
bb59:
  LA s9, temp
  FLW fs6, 0(s9)
  FDIV.S fs7, fs0, fs6
  FADD.S fs8, fs6, fs7
  ADDI s9, zero, 2
  FCVT.S.W fs6, s9
  FDIV.S fs7, fs8, fs6
  LA s9, temp
  FSW fs7, 0(s9)
  JAL zero, bb49
bb60:
  ADDI s10, zero, 1
  JAL zero, bb51
bb61:
  SLLIW s9, s8, 2
  LUI t5, 98
  ADDIW t5, t5, -1408
  ADD t5, t5, sp
  ADD s10, t5, s9
  FLW fs0, 0(s10)
  FMUL.S fs6, fs0, fs0
  FADD.S fs0, fs5, fs6
  ADDIW s9, s8, 1
  FSGNJ.S fs4, fs0, fs0
  ADD s7, s9, zero
  JAL zero, bb47
bb62:
  SLLIW s7, s6, 2
  LUI t5, 195
  ADDIW t5, t5, 1280
  ADD t5, t5, sp
  ADD s8, t5, s7
  FLW fs0, 0(s8)
  LUI t5, 98
  ADDIW t5, t5, -1408
  ADD t5, t5, sp
  ADD s8, t5, s7
  FLW fs4, 0(s8)
  FMUL.S fs5, fs0, fs4
  FADD.S fs0, fs3, fs5
  ADDIW s7, s6, 1
  FSGNJ.S fs2, fs0, fs0
  ADD s5, s7, zero
  JAL zero, bb45
bb63:
  FCVT.S.L fs0, zero
  FSGNJ.S fs1, fs0, fs0
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb64
bb64:
  ADD s7, s6, zero
  ADD s8, s5, zero
  FSGNJ.S fs2, fs1, fs1
  SLT s9, s7, s0
  BNE s9, zero, bb84
  # implict jump to bb65
bb65:
  FSGNJ.S fs3, fs0, fs0
  ADD s9, zero, zero
  ADD s10, zero, zero
  # implict jump to bb66
bb66:
  ADD s11, s10, zero
  ADD ra, s9, zero
  FSGNJ.S fs4, fs3, fs3
  SLT t0, s11, s0
  BNE t0, zero, bb80
  # implict jump to bb67
bb67:
  FSGNJ.S fs5, fs0, fs0
  ADD t0, zero, zero
  ADD t1, zero, zero
  # implict jump to bb68
bb68:
  ADD t2, t1, zero
  ADD a0, t0, zero
  FSGNJ.S fs6, fs5, fs5
  SLT a1, t2, s0
  BNE a1, zero, bb76
  # implict jump to bb69
bb69:
  FSGNJ.S fs7, fs0, fs0
  ADD a1, zero, zero
  ADD a2, zero, zero
  # implict jump to bb70
bb70:
  ADD a3, a2, zero
  ADD a4, a1, zero
  FSGNJ.S fs8, fs7, fs7
  SLT a5, a3, s0
  BNE a5, zero, bb72
  # implict jump to bb71
bb71:
  ADDIW a5, s4, 1
  ADD s3, a5, zero
  JAL zero, bb43
bb72:
  FSGNJ.S fs9, fs8, fs8
  ADD s3, a4, zero
  # implict jump to bb73
bb73:
  ADD a4, s3, zero
  FSGNJ.S fs8, fs9, fs9
  SLT a5, a4, s0
  BNE a5, zero, bb75
  # implict jump to bb74
bb74:
  SLLIW a5, a3, 2
  LUI a6, 195
  ADDIW a6, a6, 1280
  ADD a6, a6, sp
  ADD a6, a6, a5
  FSW fs8, 0(a6)
  ADDIW a5, a3, 1
  FSGNJ.S fs7, fs8, fs8
  ADD a1, a4, zero
  ADD a2, a5, zero
  JAL zero, bb70
bb75:
  SLLIW a1, a4, 2
  ADDI a2, sp, 0
  ADD a2, a2, a1
  FLW fs7, 0(a2)
  ADDW a1, a4, a3
  ADDIW a2, a1, 1
  MULW a5, a1, a2
  ADDI a1, zero, 2
  DIVW a2, a5, a1
  ADDW a1, a2, a4
  ADDIW a2, a1, 1
  FCVT.S.W fs10, a2
  FDIV.S fs11, fs7, fs10
  FADD.S fs7, fs8, fs11
  ADDIW a1, a4, 1
  FSGNJ.S fs9, fs7, fs7
  ADD s3, a1, zero
  JAL zero, bb73
bb76:
  FSGNJ.S fs7, fs6, fs6
  ADD s3, a0, zero
  # implict jump to bb77
bb77:
  ADD a0, s3, zero
  FSGNJ.S fs6, fs7, fs7
  SLT a1, a0, s0
  BNE a1, zero, bb79
  # implict jump to bb78
bb78:
  SLLIW a1, t2, 2
  ADDI a2, sp, 0
  ADD a2, a2, a1
  FSW fs6, 0(a2)
  ADDIW a1, t2, 1
  FSGNJ.S fs5, fs6, fs6
  ADD t0, a0, zero
  ADD t1, a1, zero
  JAL zero, bb68
bb79:
  SLLIW t0, a0, 2
  LUI t1, 98
  ADDIW t1, t1, -1408
  ADD t1, t1, sp
  ADD t1, t1, t0
  FLW fs5, 0(t1)
  ADDW t0, t2, a0
  ADDIW t1, t0, 1
  MULW a1, t0, t1
  ADDI t0, zero, 2
  DIVW t1, a1, t0
  ADDW t0, t1, t2
  ADDIW t1, t0, 1
  FCVT.S.W fs8, t1
  FDIV.S fs9, fs5, fs8
  FADD.S fs5, fs6, fs9
  ADDIW t0, a0, 1
  FSGNJ.S fs7, fs5, fs5
  ADD s3, t0, zero
  JAL zero, bb77
bb80:
  FSGNJ.S fs5, fs4, fs4
  ADD s3, ra, zero
  # implict jump to bb81
bb81:
  ADD ra, s3, zero
  FSGNJ.S fs4, fs5, fs5
  SLT t0, ra, s0
  BNE t0, zero, bb83
  # implict jump to bb82
bb82:
  SLLIW t0, s11, 2
  LUI t1, 98
  ADDIW t1, t1, -1408
  ADD t1, t1, sp
  ADD t1, t1, t0
  FSW fs4, 0(t1)
  ADDIW t0, s11, 1
  FSGNJ.S fs3, fs4, fs4
  ADD s9, ra, zero
  ADD s10, t0, zero
  JAL zero, bb66
bb83:
  SLLIW s9, ra, 2
  ADDI t5, sp, 0
  ADD s10, t5, s9
  FLW fs3, 0(s10)
  ADDW s9, ra, s11
  ADDIW s10, s9, 1
  MULW t0, s9, s10
  ADDI s9, zero, 2
  DIVW s10, t0, s9
  ADDW s9, s10, ra
  ADDIW s10, s9, 1
  FCVT.S.W fs6, s10
  FDIV.S fs7, fs3, fs6
  FADD.S fs3, fs4, fs7
  ADDIW s9, ra, 1
  FSGNJ.S fs5, fs3, fs3
  ADD s3, s9, zero
  JAL zero, bb81
bb84:
  FSGNJ.S fs3, fs2, fs2
  ADD s3, s8, zero
  # implict jump to bb85
bb85:
  ADD s8, s3, zero
  FSGNJ.S fs2, fs3, fs3
  SLT s9, s8, s0
  BNE s9, zero, bb87
  # implict jump to bb86
bb86:
  SLLIW s9, s7, 2
  ADDI t5, sp, 0
  ADD s10, t5, s9
  FSW fs2, 0(s10)
  ADDIW s9, s7, 1
  FSGNJ.S fs1, fs2, fs2
  ADD s5, s8, zero
  ADD s6, s9, zero
  JAL zero, bb64
bb87:
  SLLIW s5, s8, 2
  LUI t5, 195
  ADDIW t5, t5, 1280
  ADD t5, t5, sp
  ADD s6, t5, s5
  FLW fs1, 0(s6)
  ADDW s5, s7, s8
  ADDIW s6, s5, 1
  MULW s9, s5, s6
  ADDI s5, zero, 2
  DIVW s6, s9, s5
  ADDW s5, s6, s7
  ADDIW s6, s5, 1
  FCVT.S.W fs4, s6
  FDIV.S fs5, fs1, fs4
  FADD.S fs1, fs2, fs5
  ADDIW s5, s8, 1
  FSGNJ.S fs3, fs1, fs1
  ADD s3, s5, zero
  JAL zero, bb85
bb88:
  SLLIW s3, s2, 2
  LUI t5, 195
  ADDIW t5, t5, 1280
  ADD t5, t5, sp
  ADD s4, t5, s3
  ADDI s3, zero, 1
  FCVT.S.W fs0, s3
  FSW fs0, 0(s4)
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb41
bb89:
  ADDI s1, zero, 2000
  JAL zero, bb40
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
