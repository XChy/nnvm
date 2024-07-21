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
  ADDI sp, sp, -144
  SD ra, 0(sp)
  SD s8, 8(sp)
  FSD fs3, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s9, 88(sp)
  FSD fs0, 96(sp)
  FSD fs1, 104(sp)
  FSD fs2, 112(sp)
  FSD fs4, 120(sp)
  FSD fs5, 128(sp)
  FSD fs6, 136(sp)
  ADDI s0, zero, 0
  FCVT.S.W fs0, s0
  FSGNJ.S fs1, fs0, fs0
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  ADD s3, s0, zero
  FSGNJ.S fs2, fs1, fs1
  BLT s2, a2, bb9
  # implict jump to bb2
bb2:
  FSGNJ.S fs3, fs0, fs0
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb3
bb3:
  ADD s6, s5, zero
  ADD s7, s4, zero
  FSGNJ.S fs4, fs3, fs3
  BLT s6, a2, bb5
  # implict jump to bb4
bb4:
  LD ra, 0(sp)
  LD s8, 8(sp)
  FLD fs3, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s9, 88(sp)
  FLD fs0, 96(sp)
  FLD fs1, 104(sp)
  FLD fs2, 112(sp)
  FLD fs4, 120(sp)
  FLD fs5, 128(sp)
  FLD fs6, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb5:
  # implict jump to bb6
bb6:
  ADD s8, s7, zero
  FSGNJ.S fs5, fs4, fs4
  BLT s8, a2, bb8
  # implict jump to bb7
bb7:
  SLLIW s9, s6, 2
  ADD s9, a1, s9
  FSW fs5, 0(s9)
  ADDIW s9, s6, 1
  FSGNJ.S fs3, fs5, fs5
  ADD s4, s8, zero
  ADD s5, s9, zero
  JAL zero, bb3
bb8:
  SLLIW s4, s8, 2
  ADD s4, a3, s4
  FLW fs3, 0(s4)
  ADDW s4, s8, s6
  ADDIW s5, s4, 1
  MULW s4, s4, s5
  ADDI s5, zero, 2
  DIVW s4, s4, s5
  ADDW s4, s4, s8
  ADDIW s4, s4, 1
  FCVT.S.W fs6, s4
  FDIV.S fs3, fs3, fs6
  FADD.S fs3, fs5, fs3
  ADDIW s4, s8, 1
  FSGNJ.S fs4, fs3, fs3
  ADD s7, s4, zero
  JAL zero, bb6
bb9:
  # implict jump to bb10
bb10:
  ADD s4, s3, zero
  FSGNJ.S fs3, fs2, fs2
  BLT s4, a2, bb12
  # implict jump to bb11
bb11:
  SLLIW s5, s2, 2
  ADD s5, a3, s5
  FSW fs3, 0(s5)
  ADDIW s5, s2, 1
  FSGNJ.S fs1, fs3, fs3
  ADD s0, s4, zero
  ADD s1, s5, zero
  JAL zero, bb1
bb12:
  SLLIW s0, s4, 2
  ADD s0, a0, s0
  FLW fs1, 0(s0)
  ADDW s0, s2, s4
  ADDIW s1, s0, 1
  MULW s0, s0, s1
  ADDI s1, zero, 2
  DIVW s0, s0, s1
  ADDW s0, s0, s2
  ADDIW s0, s0, 1
  FCVT.S.W fs4, s0
  FDIV.S fs1, fs1, fs4
  FADD.S fs1, fs3, fs1
  ADDIW s0, s4, 1
  FSGNJ.S fs2, fs1, fs1
  ADD s3, s0, zero
  JAL zero, bb10
mult1:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  FSD fs0, 56(sp)
  FSD fs1, 64(sp)
  FSD fs2, 72(sp)
  FSD fs3, 80(sp)
  FCVT.S.L fs0, zero
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb14
bb14:
  ADD s2, s1, zero
  ADD s3, s0, zero
  FSGNJ.S fs1, fs0, fs0
  BLT s2, a2, bb16
  # implict jump to bb15
bb15:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  FLD fs0, 56(sp)
  FLD fs1, 64(sp)
  FLD fs2, 72(sp)
  FLD fs3, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb16:
  # implict jump to bb17
bb17:
  ADD s4, s3, zero
  FSGNJ.S fs2, fs1, fs1
  BLT s4, a2, bb19
  # implict jump to bb18
bb18:
  SLLIW s5, s2, 2
  ADD s5, a1, s5
  FSW fs2, 0(s5)
  ADDIW s5, s2, 1
  FSGNJ.S fs0, fs2, fs2
  ADD s0, s4, zero
  ADD s1, s5, zero
  JAL zero, bb14
bb19:
  SLLIW s0, s4, 2
  ADD s0, a0, s0
  FLW fs0, 0(s0)
  ADDW s0, s2, s4
  ADDIW s1, s0, 1
  MULW s0, s0, s1
  ADDI s1, zero, 2
  DIVW s0, s0, s1
  ADDW s0, s0, s2
  ADDIW s0, s0, 1
  FCVT.S.W fs3, s0
  FDIV.S fs0, fs0, fs3
  FADD.S fs0, fs2, fs0
  ADDIW s0, s4, 1
  FSGNJ.S fs1, fs0, fs0
  ADD s3, s0, zero
  JAL zero, bb17
my_sqrt:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs2, 32(sp)
  FSD fs3, 40(sp)
  FSD fs4, 48(sp)
  FSGNJ.D fs0, fa0, fa0
  # implict jump to bb21
bb21:
  LA s0, temp
  FLW fs1, 0(s0)
  FDIV.S fs2, fs0, fs1
  FSUB.S fs2, fs1, fs2
  LA s0, .CONSTANT.7.0
  FLW fs3, 0(s0)
  FLT.S s0, fs3, fs2
  BNE s0, zero, bb26
  # implict jump to bb22
bb22:
  LA s0, .CONSTANT.7.0
  FLW fs3, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs4, 0(s0)
  FSGNJN.S fs3, fs3, fs4
  FLT.S s0, fs2, fs3
  # implict jump to bb23
bb23:
  BNE s0, zero, bb25
  # implict jump to bb24
bb24:
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  FLD fs4, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb25:
  LA s0, temp
  FLW fs1, 0(s0)
  FDIV.S fs2, fs0, fs1
  FADD.S fs1, fs1, fs2
  ADDI s0, zero, 2
  FCVT.S.W fs2, s0
  FDIV.S fs1, fs1, fs2
  LA s0, temp
  FSW fs1, 0(s0)
  JAL zero, bb21
bb26:
  ADDI s0, zero, 1
  JAL zero, bb23
Vectordot:
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
  FCVT.S.L fs0, zero
  ADD s0, zero, zero
  # implict jump to bb28
bb28:
  ADD s1, s0, zero
  FSGNJ.S fs1, fs0, fs0
  BLT s1, a2, bb30
  # implict jump to bb29
bb29:
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
bb30:
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
  JAL zero, bb28
mult2:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  FSD fs0, 56(sp)
  FSD fs1, 64(sp)
  FSD fs2, 72(sp)
  FSD fs3, 80(sp)
  FCVT.S.L fs0, zero
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb32
bb32:
  ADD s2, s1, zero
  ADD s3, s0, zero
  FSGNJ.S fs1, fs0, fs0
  BLT s2, a2, bb34
  # implict jump to bb33
bb33:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  FLD fs0, 56(sp)
  FLD fs1, 64(sp)
  FLD fs2, 72(sp)
  FLD fs3, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb34:
  # implict jump to bb35
bb35:
  ADD s4, s3, zero
  FSGNJ.S fs2, fs1, fs1
  BLT s4, a2, bb37
  # implict jump to bb36
bb36:
  SLLIW s5, s2, 2
  ADD s5, a1, s5
  FSW fs2, 0(s5)
  ADDIW s5, s2, 1
  FSGNJ.S fs0, fs2, fs2
  ADD s0, s4, zero
  ADD s1, s5, zero
  JAL zero, bb32
bb37:
  SLLIW s0, s4, 2
  ADD s0, a0, s0
  FLW fs0, 0(s0)
  ADDW s0, s4, s2
  ADDIW s1, s0, 1
  MULW s0, s0, s1
  ADDI s1, zero, 2
  DIVW s0, s0, s1
  ADDW s0, s0, s4
  ADDIW s0, s0, 1
  FCVT.S.W fs3, s0
  FDIV.S fs0, fs0, fs3
  FADD.S fs0, fs2, fs0
  ADDIW s0, s4, 1
  FSGNJ.S fs1, fs0, fs0
  ADD s3, s0, zero
  JAL zero, bb35
main:
  LUI t0, 1048283
  ADDIW t0, t0, -64
  ADD sp, sp, t0
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  FSD fs0, 104(sp)
  FSD fs1, 112(sp)
  FSD fs2, 120(sp)
  FSD fs3, 128(sp)
  FSD fs5, 136(sp)
  FSD fs8, 144(sp)
  FSD fs6, 152(sp)
  FSD fs7, 160(sp)
  FSD fs4, 168(sp)
  FSD fs10, 176(sp)
  LUI t5, 98
  ADDIW t5, t5, -1224
  ADD t5, t5, sp
  FSD fs9, 0(t5)
  LUI s0, 24
  ADDIW s0, s0, 1696
  SLT s0, zero, s0
  XORI s0, s0, 1
  BNE s0, zero, bb89
  # implict jump to bb39
bb39:
  LUI s0, 24
  ADDIW s0, s0, 1696
  ADD s0, zero, s0
  # implict jump to bb40
bb40:
  ADDI a0, zero, 62
  CALL _sysy_starttime
  ADD s1, zero, zero
  # implict jump to bb41
bb41:
  ADD s2, s1, zero
  BLT s2, s0, bb88
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
  BLT s6, s0, bb62
  # implict jump to bb46
bb46:
  FSGNJ.S fs4, fs1, fs1
  ADD s7, zero, zero
  # implict jump to bb47
bb47:
  ADD s8, s7, zero
  FSGNJ.S fs5, fs4, fs4
  BLT s8, s0, bb61
  # implict jump to bb48
bb48:
  FDIV.S fs0, fs3, fs5
  # implict jump to bb49
bb49:
  LA s9, temp
  FLW fs6, 0(s9)
  FDIV.S fs7, fs0, fs6
  FSUB.S fs7, fs6, fs7
  LA s9, .CONSTANT.7.0
  FLW fs8, 0(s9)
  FLT.S s9, fs8, fs7
  BNE s9, zero, bb60
  # implict jump to bb50
bb50:
  LA s9, .CONSTANT.7.0
  FLW fs8, 0(s9)
  LA s9, .CONSTANT.7.0
  FLW fs9, 0(s9)
  FSGNJN.S fs8, fs8, fs9
  FLT.S s9, fs7, fs8
  # implict jump to bb51
bb51:
  BNE s9, zero, bb59
  # implict jump to bb52
bb52:
  LA s9, .CONSTANT.7.1
  FLW fs7, 0(s9)
  FSUB.S fs6, fs6, fs7
  LA s9, .CONSTANT.7.0
  FLW fs7, 0(s9)
  FLE.S s9, fs6, fs7
  BNE s9, zero, bb58
  # implict jump to bb53
bb53:
  ADD s9, zero, zero
  # implict jump to bb54
bb54:
  BNE s9, zero, bb57
  # implict jump to bb55
bb55:
  ADD a0, zero, zero
  CALL putint
  # implict jump to bb56
bb56:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  FLD fs0, 104(sp)
  FLD fs1, 112(sp)
  FLD fs2, 120(sp)
  FLD fs3, 128(sp)
  FLD fs5, 136(sp)
  FLD fs8, 144(sp)
  FLD fs6, 152(sp)
  FLD fs7, 160(sp)
  FLD fs4, 168(sp)
  FLD fs10, 176(sp)
  LUI t5, 98
  ADDIW t5, t5, -1224
  ADD t5, t5, sp
  FLD fs9, 0(t5)
  LUI t0, 293
  ADDIW t0, t0, 64
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb57:
  ADDI a0, zero, 1
  CALL putint
  JAL zero, bb56
bb58:
  LA s10, .CONSTANT.7.0
  FLW fs7, 0(s10)
  LA s10, .CONSTANT.7.0
  FLW fs8, 0(s10)
  FSGNJN.S fs7, fs7, fs8
  FLE.S s10, fs7, fs6
  ADD s9, s10, zero
  JAL zero, bb54
bb59:
  LA s9, temp
  FLW fs6, 0(s9)
  FDIV.S fs7, fs0, fs6
  FADD.S fs6, fs6, fs7
  ADDI s9, zero, 2
  FCVT.S.W fs7, s9
  FDIV.S fs6, fs6, fs7
  LA s9, temp
  FSW fs6, 0(s9)
  JAL zero, bb49
bb60:
  ADDI s9, zero, 1
  JAL zero, bb51
bb61:
  SLLIW s9, s8, 2
  LUI t5, 98
  ADDIW t5, t5, -1216
  ADD t5, t5, sp
  ADD s9, t5, s9
  FLW fs0, 0(s9)
  FMUL.S fs0, fs0, fs0
  FADD.S fs0, fs5, fs0
  ADDIW s8, s8, 1
  FSGNJ.S fs4, fs0, fs0
  ADD s7, s8, zero
  JAL zero, bb47
bb62:
  SLLIW s7, s6, 2
  ADDI t5, sp, 184
  ADD s8, t5, s7
  FLW fs0, 0(s8)
  LUI t5, 98
  ADDIW t5, t5, -1216
  ADD t5, t5, sp
  ADD s7, t5, s7
  FLW fs4, 0(s7)
  FMUL.S fs0, fs0, fs4
  FADD.S fs0, fs3, fs0
  ADDIW s6, s6, 1
  FSGNJ.S fs2, fs0, fs0
  ADD s5, s6, zero
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
  BLT s7, s0, bb84
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
  BLT s11, s0, bb80
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
  BLT t2, s0, bb76
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
  BLT a3, s0, bb72
  # implict jump to bb71
bb71:
  ADDIW a5, s4, 1
  ADD s3, a5, zero
  JAL zero, bb43
bb72:
  ADD s3, a4, zero
  # implict jump to bb73
bb73:
  ADD a4, s3, zero
  FSGNJ.S fs9, fs8, fs8
  BLT a4, s0, bb75
  # implict jump to bb74
bb74:
  SLLIW a5, a3, 2
  ADDI t5, sp, 184
  ADD a5, t5, a5
  FSW fs9, 0(a5)
  ADDIW a5, a3, 1
  FSGNJ.S fs7, fs9, fs9
  ADD a1, a4, zero
  ADD a2, a5, zero
  JAL zero, bb70
bb75:
  SLLIW a1, a4, 2
  LUI t5, 195
  ADDIW t5, t5, 1472
  ADD t5, t5, sp
  ADD a1, t5, a1
  FLW fs7, 0(a1)
  ADDW a1, a4, a3
  ADDIW a2, a1, 1
  MULW a1, a1, a2
  ADDI a2, zero, 2
  DIVW a1, a1, a2
  ADDW a1, a1, a4
  ADDIW a1, a1, 1
  FCVT.S.W fs10, a1
  FDIV.S fs7, fs7, fs10
  FADD.S fs7, fs9, fs7
  ADDIW a1, a4, 1
  FSGNJ.S fs8, fs7, fs7
  ADD s3, a1, zero
  JAL zero, bb73
bb76:
  ADD s3, a0, zero
  # implict jump to bb77
bb77:
  ADD a0, s3, zero
  FSGNJ.S fs7, fs6, fs6
  BLT a0, s0, bb79
  # implict jump to bb78
bb78:
  SLLIW a1, t2, 2
  LUI t5, 195
  ADDIW t5, t5, 1472
  ADD t5, t5, sp
  ADD a1, t5, a1
  FSW fs7, 0(a1)
  ADDIW a1, t2, 1
  FSGNJ.S fs5, fs7, fs7
  ADD t0, a0, zero
  ADD t1, a1, zero
  JAL zero, bb68
bb79:
  SLLIW t0, a0, 2
  LUI t5, 98
  ADDIW t5, t5, -1216
  ADD t5, t5, sp
  ADD t0, t5, t0
  FLW fs5, 0(t0)
  ADDW t0, t2, a0
  ADDIW t1, t0, 1
  MULW t0, t0, t1
  ADDI t1, zero, 2
  DIVW t0, t0, t1
  ADDW t0, t0, t2
  ADDIW t0, t0, 1
  FCVT.S.W fs8, t0
  FDIV.S fs5, fs5, fs8
  FADD.S fs5, fs7, fs5
  ADDIW t0, a0, 1
  FSGNJ.S fs6, fs5, fs5
  ADD s3, t0, zero
  JAL zero, bb77
bb80:
  ADD s3, ra, zero
  # implict jump to bb81
bb81:
  ADD ra, s3, zero
  FSGNJ.S fs5, fs4, fs4
  BLT ra, s0, bb83
  # implict jump to bb82
bb82:
  SLLIW t0, s11, 2
  LUI t5, 98
  ADDIW t5, t5, -1216
  ADD t5, t5, sp
  ADD t0, t5, t0
  FSW fs5, 0(t0)
  ADDIW t0, s11, 1
  FSGNJ.S fs3, fs5, fs5
  ADD s9, ra, zero
  ADD s10, t0, zero
  JAL zero, bb66
bb83:
  SLLIW s9, ra, 2
  LUI t5, 195
  ADDIW t5, t5, 1472
  ADD t5, t5, sp
  ADD s9, t5, s9
  FLW fs3, 0(s9)
  ADDW s9, ra, s11
  ADDIW s10, s9, 1
  MULW s9, s9, s10
  ADDI s10, zero, 2
  DIVW s9, s9, s10
  ADDW s9, s9, ra
  ADDIW s9, s9, 1
  FCVT.S.W fs6, s9
  FDIV.S fs3, fs3, fs6
  FADD.S fs3, fs5, fs3
  ADDIW s9, ra, 1
  FSGNJ.S fs4, fs3, fs3
  ADD s3, s9, zero
  JAL zero, bb81
bb84:
  ADD s3, s8, zero
  # implict jump to bb85
bb85:
  ADD s8, s3, zero
  FSGNJ.S fs3, fs2, fs2
  BLT s8, s0, bb87
  # implict jump to bb86
bb86:
  SLLIW s9, s7, 2
  LUI t5, 195
  ADDIW t5, t5, 1472
  ADD t5, t5, sp
  ADD s9, t5, s9
  FSW fs3, 0(s9)
  ADDIW s9, s7, 1
  FSGNJ.S fs1, fs3, fs3
  ADD s5, s8, zero
  ADD s6, s9, zero
  JAL zero, bb64
bb87:
  SLLIW s5, s8, 2
  ADDI t5, sp, 184
  ADD s5, t5, s5
  FLW fs1, 0(s5)
  ADDW s5, s7, s8
  ADDIW s6, s5, 1
  MULW s5, s5, s6
  ADDI s6, zero, 2
  DIVW s5, s5, s6
  ADDW s5, s5, s7
  ADDIW s5, s5, 1
  FCVT.S.W fs4, s5
  FDIV.S fs1, fs1, fs4
  FADD.S fs1, fs3, fs1
  ADDIW s5, s8, 1
  FSGNJ.S fs2, fs1, fs1
  ADD s3, s5, zero
  JAL zero, bb85
bb88:
  SLLIW s3, s2, 2
  ADDI t5, sp, 184
  ADD s3, t5, s3
  ADDI s4, zero, 1
  FCVT.S.W fs0, s4
  FSW fs0, 0(s3)
  ADDIW s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb41
bb89:
  ADDI s0, zero, 2000
  JAL zero, bb40
func:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s0, a0, zero
  ADDW s1, s0, a1
  ADDIW s2, s1, 1
  MULW s1, s1, s2
  ADDI s2, zero, 2
  DIVW s1, s1, s2
  ADDW s0, s1, s0
  ADDIW s0, s0, 1
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
