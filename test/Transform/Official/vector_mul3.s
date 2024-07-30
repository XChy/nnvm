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
  ADDI sp, sp, -192
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
  FSD fs4, 136(sp)
  FSD fs5, 144(sp)
  FSD fs6, 152(sp)
  FSD fs7, 160(sp)
  FSD fs8, 168(sp)
  FSD fs10, 176(sp)
  FSD fs9, 184(sp)
  ADDI s0, zero, 0
  FCVT.S.W fs0, s0
  ADDI s0, zero, 0
  BLT s0, a2, bb12
  # implict jump to bb1
bb1:
  BLT s0, a2, bb3
  # implict jump to bb2
bb2:
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
  FLD fs4, 136(sp)
  FLD fs5, 144(sp)
  FLD fs6, 152(sp)
  FLD fs7, 160(sp)
  FLD fs8, 168(sp)
  FLD fs10, 176(sp)
  FLD fs9, 184(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb3:
  ADD s8, zero, zero
  ADD s9, zero, zero
  FSGNJ.S fs5, fs0, fs0
  # implict jump to bb4
bb4:
  FSGNJ.S fs6, fs5, fs5
  ADD s10, s9, zero
  ADD s11, s8, zero
  BLT s10, a2, bb8
  # implict jump to bb5
bb5:
  ADD t0, s10, zero
  FSGNJ.S fs7, fs6, fs6
  # implict jump to bb6
bb6:
  SLLIW t2, s11, 2
  ADD t2, a1, t2
  FSW fs7, 0(t2)
  ADDIW t2, s11, 1
  BLT t2, a2, bb7
  JAL zero, bb2
bb7:
  ADD s8, t2, zero
  ADD s9, t0, zero
  FSGNJ.S fs5, fs7, fs7
  JAL zero, bb4
bb8:
  # implict jump to bb9
bb9:
  FSGNJ.S fs8, fs6, fs6
  ADD t1, s10, zero
  SLLIW t2, t1, 2
  ADD t2, a3, t2
  FLW fs9, 0(t2)
  ADDW t2, t1, s11
  ADDIW a4, t2, 1
  MULW t2, t2, a4
  ADDI a4, zero, 2
  DIVW t2, t2, a4
  ADDW t2, t2, t1
  ADDIW t2, t2, 1
  FCVT.S.W fs10, t2
  FDIV.S fs9, fs9, fs10
  FADD.S fs8, fs8, fs9
  ADDIW t1, t1, 1
  BLT t1, a2, bb11
  # implict jump to bb10
bb10:
  ADD t0, t1, zero
  FSGNJ.S fs7, fs8, fs8
  JAL zero, bb6
bb11:
  ADD s10, t1, zero
  FSGNJ.S fs6, fs8, fs8
  JAL zero, bb9
bb12:
  ADD s1, zero, zero
  ADD s2, zero, zero
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb13
bb13:
  FSGNJ.S fs2, fs1, fs1
  ADD s3, s2, zero
  ADD s4, s1, zero
  BLT s3, a2, bb17
  # implict jump to bb14
bb14:
  ADD s5, s3, zero
  FSGNJ.S fs3, fs2, fs2
  # implict jump to bb15
bb15:
  SLLIW s7, s4, 2
  ADD s7, a3, s7
  FSW fs3, 0(s7)
  ADDIW s7, s4, 1
  BLT s7, a2, bb16
  JAL zero, bb1
bb16:
  ADD s1, s7, zero
  ADD s2, s5, zero
  FSGNJ.S fs1, fs3, fs3
  JAL zero, bb13
bb17:
  # implict jump to bb18
bb18:
  FSGNJ.S fs4, fs2, fs2
  ADD s6, s3, zero
  SLLIW s7, s6, 2
  ADD s7, a0, s7
  FLW fs5, 0(s7)
  ADDW s7, s4, s6
  ADDIW s8, s7, 1
  MULW s7, s7, s8
  ADDI s8, zero, 2
  DIVW s7, s7, s8
  ADDW s7, s7, s4
  ADDIW s7, s7, 1
  FCVT.S.W fs6, s7
  FDIV.S fs5, fs5, fs6
  FADD.S fs4, fs4, fs5
  ADDIW s6, s6, 1
  BLT s6, a2, bb20
  # implict jump to bb19
bb19:
  ADD s5, s6, zero
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb15
bb20:
  ADD s3, s6, zero
  FSGNJ.S fs2, fs4, fs4
  JAL zero, bb18
mult1:
  ADDI sp, sp, -128
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  FSD fs0, 72(sp)
  FSD fs1, 80(sp)
  FSD fs2, 88(sp)
  FSD fs3, 96(sp)
  FSD fs4, 104(sp)
  FSD fs5, 112(sp)
  FCVT.S.L fs0, zero
  BLT zero, a2, bb23
  # implict jump to bb22
bb22:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  FLD fs0, 72(sp)
  FLD fs1, 80(sp)
  FLD fs2, 88(sp)
  FLD fs3, 96(sp)
  FLD fs4, 104(sp)
  FLD fs5, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb23:
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb24
bb24:
  FSGNJ.S fs1, fs0, fs0
  ADD s2, s1, zero
  ADD s3, s0, zero
  BLT s2, a2, bb28
  # implict jump to bb25
bb25:
  ADD s4, s2, zero
  FSGNJ.S fs2, fs1, fs1
  # implict jump to bb26
bb26:
  SLLIW s6, s3, 2
  ADD s6, a1, s6
  FSW fs2, 0(s6)
  ADDIW s6, s3, 1
  BLT s6, a2, bb27
  JAL zero, bb22
bb27:
  ADD s0, s6, zero
  ADD s1, s4, zero
  FSGNJ.S fs0, fs2, fs2
  JAL zero, bb24
bb28:
  # implict jump to bb29
bb29:
  FSGNJ.S fs3, fs1, fs1
  ADD s5, s2, zero
  SLLIW s6, s5, 2
  ADD s6, a0, s6
  FLW fs4, 0(s6)
  ADDW s6, s3, s5
  ADDIW s7, s6, 1
  MULW s6, s6, s7
  ADDI s7, zero, 2
  DIVW s6, s6, s7
  ADDW s6, s6, s3
  ADDIW s6, s6, 1
  FCVT.S.W fs5, s6
  FDIV.S fs4, fs4, fs5
  FADD.S fs3, fs3, fs4
  ADDIW s5, s5, 1
  BLT s5, a2, bb31
  # implict jump to bb30
bb30:
  ADD s4, s5, zero
  FSGNJ.S fs2, fs3, fs3
  JAL zero, bb26
bb31:
  ADD s2, s5, zero
  FSGNJ.S fs1, fs3, fs3
  JAL zero, bb29
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
  # implict jump to bb33
bb33:
  LA s0, temp
  FLW fs1, 0(s0)
  FDIV.S fs2, fs0, fs1
  FSUB.S fs2, fs1, fs2
  LA s0, .CONSTANT.7.0
  FLW fs3, 0(s0)
  FLT.S s0, fs3, fs2
  BNE s0, zero, bb38
  # implict jump to bb34
bb34:
  LA s0, .CONSTANT.7.0
  FLW fs3, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs4, 0(s0)
  FSGNJN.S fs3, fs3, fs4
  FLT.S s0, fs2, fs3
  # implict jump to bb35
bb35:
  BNE s0, zero, bb37
  # implict jump to bb36
bb36:
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
bb37:
  LA s0, temp
  FLW fs1, 0(s0)
  FDIV.S fs2, fs0, fs1
  FADD.S fs1, fs1, fs2
  ADDI s0, zero, 2
  FCVT.S.W fs2, s0
  FDIV.S fs1, fs1, fs2
  LA s0, temp
  FSW fs1, 0(s0)
  JAL zero, bb33
bb38:
  ADDI s0, zero, 1
  JAL zero, bb35
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
  FSD fs4, 72(sp)
  FCVT.S.L fs0, zero
  BLT zero, a2, bb42
  # implict jump to bb40
bb40:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb41
bb41:
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
  FLD fs4, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb42:
  ADD s0, zero, zero
  # implict jump to bb43
bb43:
  FSGNJ.S fs2, fs0, fs0
  ADD s1, s0, zero
  SLLIW s2, s1, 2
  ADD s3, a0, s2
  FLW fs3, 0(s3)
  ADD s2, a1, s2
  FLW fs4, 0(s2)
  FMUL.S fs3, fs3, fs4
  FADD.S fs2, fs2, fs3
  ADDIW s1, s1, 1
  BLT s1, a2, bb45
  # implict jump to bb44
bb44:
  FSGNJ.S fs1, fs2, fs2
  JAL zero, bb41
bb45:
  ADD s0, s1, zero
  FSGNJ.S fs0, fs2, fs2
  JAL zero, bb43
mult2:
  ADDI sp, sp, -128
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  FSD fs0, 72(sp)
  FSD fs1, 80(sp)
  FSD fs2, 88(sp)
  FSD fs3, 96(sp)
  FSD fs4, 104(sp)
  FSD fs5, 112(sp)
  FCVT.S.L fs0, zero
  BLT zero, a2, bb48
  # implict jump to bb47
bb47:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  FLD fs0, 72(sp)
  FLD fs1, 80(sp)
  FLD fs2, 88(sp)
  FLD fs3, 96(sp)
  FLD fs4, 104(sp)
  FLD fs5, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb48:
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb49
bb49:
  FSGNJ.S fs1, fs0, fs0
  ADD s2, s1, zero
  ADD s3, s0, zero
  BLT s2, a2, bb53
  # implict jump to bb50
bb50:
  ADD s4, s2, zero
  FSGNJ.S fs2, fs1, fs1
  # implict jump to bb51
bb51:
  SLLIW s6, s3, 2
  ADD s6, a1, s6
  FSW fs2, 0(s6)
  ADDIW s6, s3, 1
  BLT s6, a2, bb52
  JAL zero, bb47
bb52:
  ADD s0, s6, zero
  ADD s1, s4, zero
  FSGNJ.S fs0, fs2, fs2
  JAL zero, bb49
bb53:
  # implict jump to bb54
bb54:
  FSGNJ.S fs3, fs1, fs1
  ADD s5, s2, zero
  SLLIW s6, s5, 2
  ADD s6, a0, s6
  FLW fs4, 0(s6)
  ADDW s6, s5, s3
  ADDIW s7, s6, 1
  MULW s6, s6, s7
  ADDI s7, zero, 2
  DIVW s6, s6, s7
  ADDW s6, s6, s5
  ADDIW s6, s6, 1
  FCVT.S.W fs5, s6
  FDIV.S fs4, fs4, fs5
  FADD.S fs3, fs3, fs4
  ADDIW s5, s5, 1
  BLT s5, a2, bb56
  # implict jump to bb55
bb55:
  ADD s4, s5, zero
  FSGNJ.S fs2, fs3, fs3
  JAL zero, bb51
bb56:
  ADD s2, s5, zero
  FSGNJ.S fs1, fs3, fs3
  JAL zero, bb54
main:
  LUI t0, 1048283
  ADDIW t0, t0, -256
  ADD sp, sp, t0
  SD ra, 184(sp)
  SD s0, 192(sp)
  SD s1, 200(sp)
  SD s2, 208(sp)
  SD s3, 216(sp)
  SD s4, 224(sp)
  SD s5, 232(sp)
  SD s6, 240(sp)
  SD s7, 248(sp)
  SD s8, 256(sp)
  SD s9, 264(sp)
  SD s10, 272(sp)
  SD s11, 280(sp)
  FSD fs8, 288(sp)
  LUI t5, 98
  ADDIW t5, t5, -1112
  ADD t5, t5, sp
  FSD fs0, 0(t5)
  LUI t5, 98
  ADDIW t5, t5, -1104
  ADD t5, t5, sp
  FSD fs1, 0(t5)
  LUI t5, 98
  ADDIW t5, t5, -1096
  ADD t5, t5, sp
  FSD fs2, 0(t5)
  LUI t5, 98
  ADDIW t5, t5, -1088
  ADD t5, t5, sp
  FSD fs4, 0(t5)
  LUI t5, 98
  ADDIW t5, t5, -1080
  ADD t5, t5, sp
  FSD fs5, 0(t5)
  LUI t5, 98
  ADDIW t5, t5, -1072
  ADD t5, t5, sp
  FSD fs6, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 216
  ADD t5, t5, sp
  FSD fs3, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 224
  ADD t5, t5, sp
  FSD fs7, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 232
  ADD t5, t5, sp
  FSD fs9, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 240
  ADD t5, t5, sp
  FSD fs10, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  FSD fs11, 0(t5)
  LUI s0, 24
  ADDIW s0, s0, 1696
  SLT s0, zero, s0
  XORI s0, s0, 1
  BNE s0, zero, bb131
  # implict jump to bb58
bb58:
  LUI s0, 24
  ADDIW s0, s0, 1696
  ADD s0, zero, s0
  # implict jump to bb59
bb59:
  ADD t4, s0, zero
  SW t4, 120(sp)
  ADDI a0, zero, 62
  CALL _sysy_starttime
  LW t4, 120(sp)
  BLT zero, t4, bb128
  # implict jump to bb60
bb60:
  FCVT.S.L ft4, zero
  FSW ft4, 168(sp)
  ADD s3, zero, zero
  # implict jump to bb61
bb61:
  ADD t4, s3, zero
  SW t4, 104(sp)
  LW t4, 120(sp)
  BLT zero, t4, bb119
  # implict jump to bb62
bb62:
  LW t4, 120(sp)
  BLT zero, t4, bb110
  # implict jump to bb63
bb63:
  LW t4, 120(sp)
  BLT zero, t4, bb101
  # implict jump to bb64
bb64:
  LW t4, 120(sp)
  BLT zero, t4, bb92
  # implict jump to bb65
bb65:
  LW t4, 104(sp)
  ADDIW s9, t4, 1
  SLTI s8, s9, 1000
  BNE s8, zero, bb91
  # implict jump to bb66
bb66:
  ADDI a0, zero, 76
  CALL _sysy_stoptime
  FCVT.S.L fs7, zero
  LW t4, 120(sp)
  BLT zero, t4, bb87
  # implict jump to bb67
bb67:
  FSGNJ.S fs8, fs7, fs7
  # implict jump to bb68
bb68:
  LW t4, 120(sp)
  BLT zero, t4, bb83
  # implict jump to bb69
bb69:
  FSGNJ.S fs10, fs7, fs7
  # implict jump to bb70
bb70:
  FDIV.S fs0, fs8, fs10
  # implict jump to bb71
bb71:
  LA s11, temp
  FLW fs6, 0(s11)
  FDIV.S fs10, fs0, fs6
  FSUB.S fs10, fs6, fs10
  LA s11, .CONSTANT.7.0
  FLW fs1, 0(s11)
  FLT.S s11, fs1, fs10
  BNE s11, zero, bb82
  # implict jump to bb72
bb72:
  LA s11, .CONSTANT.7.0
  FLW fs1, 0(s11)
  LA s11, .CONSTANT.7.0
  FLW fs4, 0(s11)
  FSGNJN.S fs1, fs1, fs4
  FLT.S s11, fs10, fs1
  # implict jump to bb73
bb73:
  BNE s11, zero, bb81
  # implict jump to bb74
bb74:
  LA s11, .CONSTANT.7.1
  FLW fs1, 0(s11)
  FSUB.S fs1, fs6, fs1
  LA s11, .CONSTANT.7.0
  FLW fs4, 0(s11)
  FLE.S s11, fs1, fs4
  BNE s11, zero, bb80
  # implict jump to bb75
bb75:
  ADD s11, zero, zero
  # implict jump to bb76
bb76:
  BNE s11, zero, bb79
  # implict jump to bb77
bb77:
  ADD a0, zero, zero
  CALL putint
  # implict jump to bb78
bb78:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 184(sp)
  LD s0, 192(sp)
  LD s1, 200(sp)
  LD s2, 208(sp)
  LD s3, 216(sp)
  LD s4, 224(sp)
  LD s5, 232(sp)
  LD s6, 240(sp)
  LD s7, 248(sp)
  LD s8, 256(sp)
  LD s9, 264(sp)
  LD s10, 272(sp)
  LD s11, 280(sp)
  FLD fs8, 288(sp)
  LUI t5, 98
  ADDIW t5, t5, -1112
  ADD t5, t5, sp
  FLD fs0, 0(t5)
  LUI t5, 98
  ADDIW t5, t5, -1104
  ADD t5, t5, sp
  FLD fs1, 0(t5)
  LUI t5, 98
  ADDIW t5, t5, -1096
  ADD t5, t5, sp
  FLD fs2, 0(t5)
  LUI t5, 98
  ADDIW t5, t5, -1088
  ADD t5, t5, sp
  FLD fs4, 0(t5)
  LUI t5, 98
  ADDIW t5, t5, -1080
  ADD t5, t5, sp
  FLD fs5, 0(t5)
  LUI t5, 98
  ADDIW t5, t5, -1072
  ADD t5, t5, sp
  FLD fs6, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 216
  ADD t5, t5, sp
  FLD fs3, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 224
  ADD t5, t5, sp
  FLD fs7, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 232
  ADD t5, t5, sp
  FLD fs9, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 240
  ADD t5, t5, sp
  FLD fs10, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  FLD fs11, 0(t5)
  LUI t0, 293
  ADDIW t0, t0, 256
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb79:
  ADDI a0, zero, 1
  CALL putint
  JAL zero, bb78
bb80:
  LA s0, .CONSTANT.7.0
  FLW fs4, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs6, 0(s0)
  FSGNJN.S fs4, fs4, fs6
  FLE.S s0, fs4, fs1
  ADD s11, s0, zero
  JAL zero, bb76
bb81:
  LA s0, temp
  FLW fs1, 0(s0)
  FDIV.S fs4, fs0, fs1
  FADD.S fs1, fs1, fs4
  ADDI s0, zero, 2
  FCVT.S.W fs4, s0
  FDIV.S fs1, fs1, fs4
  LA s0, temp
  FSW fs1, 0(s0)
  JAL zero, bb71
bb82:
  ADDI s11, zero, 1
  JAL zero, bb73
bb83:
  ADD s6, zero, zero
  FSGNJ.S fs11, fs7, fs7
  # implict jump to bb84
bb84:
  FSGNJ.S fs2, fs11, fs11
  ADD s7, s6, zero
  SLLIW s11, s7, 2
  LUI t5, 98
  ADDIW t5, t5, -1064
  ADD t5, t5, sp
  ADD s11, t5, s11
  FLW fs6, 0(s11)
  FMUL.S fs6, fs6, fs6
  FADD.S fs2, fs2, fs6
  ADDIW s7, s7, 1
  LW t4, 120(sp)
  BLT s7, t4, bb86
  # implict jump to bb85
bb85:
  FSGNJ.S fs10, fs2, fs2
  JAL zero, bb70
bb86:
  ADD s6, s7, zero
  FSGNJ.S fs11, fs2, fs2
  JAL zero, bb84
bb87:
  ADD s8, zero, zero
  FSGNJ.S fs9, fs7, fs7
  # implict jump to bb88
bb88:
  FSGNJ.S fs11, fs9, fs9
  ADD s7, s8, zero
  SLLIW s1, s7, 2
  LUI t5, 195
  ADDIW t5, t5, 1624
  ADD t5, t5, sp
  ADD s6, t5, s1
  FLW fs3, 0(s6)
  LUI t5, 98
  ADDIW t5, t5, -1064
  ADD t5, t5, sp
  ADD s1, t5, s1
  FLW fs10, 0(s1)
  FMUL.S fs3, fs3, fs10
  FADD.S fs3, fs11, fs3
  ADDIW s1, s7, 1
  LW t4, 120(sp)
  BLT s1, t4, bb90
  # implict jump to bb89
bb89:
  FSGNJ.S fs8, fs3, fs3
  JAL zero, bb68
bb90:
  ADD s8, s1, zero
  FSGNJ.S fs9, fs3, fs3
  JAL zero, bb88
bb91:
  ADD s3, s9, zero
  JAL zero, bb61
bb92:
  ADD s2, zero, zero
  ADD s4, zero, zero
  FLW ft3, 168(sp)
  FLW ft4, 168(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 112(sp)
  # implict jump to bb93
bb93:
  FLW ft4, 112(sp)
  FLW ft3, 112(sp)
  FSGNJ.S fs6, ft4, ft3
  ADD s11, s4, zero
  ADD t4, s2, zero
  SW t4, 80(sp)
  LW t4, 120(sp)
  BLT s11, t4, bb97
  # implict jump to bb94
bb94:
  ADD s10, s11, zero
  FSGNJ.S fs5, fs6, fs6
  # implict jump to bb95
bb95:
  LW t4, 80(sp)
  SLLIW s5, t4, 2
  LUI t4, 195
  ADDIW t4, t4, 1624
  ADD t4, t4, sp
  ADD s5, t4, s5
  FSW fs5, 0(s5)
  LW t4, 80(sp)
  ADDIW s5, t4, 1
  LW t4, 120(sp)
  BLT s5, t4, bb96
  JAL zero, bb65
bb96:
  ADD s2, s5, zero
  ADD s4, s10, zero
  FSGNJ.S ft4, fs5, fs5
  FSW ft4, 112(sp)
  JAL zero, bb93
bb97:
  ADD t4, s11, zero
  SW t4, 96(sp)
  FSGNJ.S ft4, fs6, fs6
  FSW ft4, 100(sp)
  # implict jump to bb98
bb98:
  FLW ft4, 100(sp)
  FLW ft3, 100(sp)
  FSGNJ.S fs8, ft4, ft3
  LW t4, 96(sp)
  ADD s5, t4, zero
  SLLIW s0, s5, 2
  ADDI t5, sp, 296
  ADD s0, t5, s0
  FLW fs1, 0(s0)
  LW t4, 80(sp)
  ADDW s0, s5, t4
  ADDIW s9, s0, 1
  MULW s0, s0, s9
  ADDI s9, zero, 2
  DIVW s0, s0, s9
  ADDW s0, s0, s5
  ADDIW s0, s0, 1
  FCVT.S.W fs7, s0
  FDIV.S fs1, fs1, fs7
  FADD.S ft4, fs8, fs1
  FSW ft4, 116(sp)
  ADDIW t4, s5, 1
  SW t4, 108(sp)
  LW t4, 108(sp)
  LW t3, 120(sp)
  BLT t4, t3, bb100
  # implict jump to bb99
bb99:
  LW t4, 108(sp)
  ADD s10, t4, zero
  FLW ft4, 116(sp)
  FLW ft3, 116(sp)
  FSGNJ.S fs5, ft4, ft3
  JAL zero, bb95
bb100:
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  FLW ft3, 116(sp)
  FLW ft4, 116(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 100(sp)
  JAL zero, bb98
bb101:
  ADD t4, zero, zero
  SW t4, 72(sp)
  ADD t4, zero, zero
  SW t4, 0(sp)
  FLW ft3, 168(sp)
  FLW ft4, 168(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 88(sp)
  # implict jump to bb102
bb102:
  FLW ft4, 88(sp)
  FLW ft3, 88(sp)
  FSGNJ.S fs11, ft4, ft3
  LW t4, 0(sp)
  ADD s5, t4, zero
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t4, 120(sp)
  BLT s5, t4, bb106
  # implict jump to bb103
bb103:
  ADD s8, s5, zero
  FSGNJ.S fs2, fs11, fs11
  # implict jump to bb104
bb104:
  FSGNJ.S ft4, fs2, fs2
  FSW ft4, 92(sp)
  ADD t4, s8, zero
  SW t4, 60(sp)
  LW t4, 28(sp)
  SLLIW s1, t4, 2
  ADDI t5, sp, 296
  ADD s1, t5, s1
  FLW ft4, 92(sp)
  FSW ft4, 0(s1)
  LW t3, 28(sp)
  ADDIW t4, t3, 1
  SW t4, 76(sp)
  LW t4, 76(sp)
  LW t3, 120(sp)
  BLT t4, t3, bb105
  JAL zero, bb64
bb105:
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  FLW ft3, 92(sp)
  FLW ft4, 92(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 88(sp)
  JAL zero, bb102
bb106:
  ADD t4, s5, zero
  SW t4, 40(sp)
  FSGNJ.S ft4, fs11, fs11
  FSW ft4, 68(sp)
  # implict jump to bb107
bb107:
  FLW ft4, 68(sp)
  FLW ft3, 68(sp)
  FSGNJ.S fs4, ft4, ft3
  LW t4, 40(sp)
  ADD s2, t4, zero
  SLLIW s0, s2, 2
  LUI t5, 98
  ADDIW t5, t5, -1064
  ADD t5, t5, sp
  ADD s0, t5, s0
  FLW fs6, 0(s0)
  LW t4, 28(sp)
  ADDW s0, t4, s2
  ADDIW s1, s0, 1
  MULW s0, s0, s1
  ADDI s1, zero, 2
  DIVW s0, s0, s1
  LW t4, 28(sp)
  ADDW s0, s0, t4
  ADDIW s0, s0, 1
  FCVT.S.W fs3, s0
  FDIV.S fs3, fs6, fs3
  FADD.S ft4, fs4, fs3
  FSW ft4, 84(sp)
  ADDIW t4, s2, 1
  SW t4, 44(sp)
  LW t4, 44(sp)
  LW t3, 120(sp)
  BLT t4, t3, bb109
  # implict jump to bb108
bb108:
  LW t4, 44(sp)
  ADD s8, t4, zero
  FLW ft4, 84(sp)
  FLW ft3, 84(sp)
  FSGNJ.S fs2, ft4, ft3
  JAL zero, bb104
bb109:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  FLW ft3, 84(sp)
  FLW ft4, 84(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 68(sp)
  JAL zero, bb107
bb110:
  ADD t4, zero, zero
  SW t4, 20(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  FLW ft3, 168(sp)
  FLW ft4, 168(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 56(sp)
  # implict jump to bb111
bb111:
  FLW ft4, 56(sp)
  FLW ft3, 56(sp)
  FSGNJ.S fs8, ft4, ft3
  LW t4, 8(sp)
  ADD s2, t4, zero
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  LW t4, 120(sp)
  BLT s2, t4, bb115
  # implict jump to bb112
bb112:
  ADD s4, s2, zero
  FSGNJ.S fs9, fs8, fs8
  # implict jump to bb113
bb113:
  FSGNJ.S ft4, fs9, fs9
  FSW ft4, 64(sp)
  ADD t4, s4, zero
  SW t4, 16(sp)
  LW t4, 164(sp)
  SLLIW s6, t4, 2
  LUI t5, 98
  ADDIW t5, t5, -1064
  ADD t5, t5, sp
  ADD s6, t5, s6
  FLW ft4, 64(sp)
  FSW ft4, 0(s6)
  LW t3, 164(sp)
  ADDIW t4, t3, 1
  SW t4, 24(sp)
  LW t4, 24(sp)
  LW t3, 120(sp)
  BLT t4, t3, bb114
  JAL zero, bb63
bb114:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  FLW ft3, 64(sp)
  FLW ft4, 64(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 56(sp)
  JAL zero, bb111
bb115:
  ADD t4, s2, zero
  SW t4, 176(sp)
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 36(sp)
  # implict jump to bb116
bb116:
  FLW ft4, 36(sp)
  FLW ft3, 36(sp)
  FSGNJ.S fs10, ft4, ft3
  LW t4, 176(sp)
  ADD s7, t4, zero
  SLLIW s0, s7, 2
  ADDI t5, sp, 296
  ADD s0, t5, s0
  FLW fs11, 0(s0)
  LW t4, 164(sp)
  ADDW s0, s7, t4
  ADDIW s6, s0, 1
  MULW s0, s0, s6
  ADDI s6, zero, 2
  DIVW s0, s0, s6
  ADDW s0, s0, s7
  ADDIW s0, s0, 1
  FCVT.S.W fs1, s0
  FDIV.S fs1, fs11, fs1
  FADD.S ft4, fs10, fs1
  FSW ft4, 48(sp)
  ADDIW t4, s7, 1
  SW t4, 52(sp)
  LW t4, 52(sp)
  LW t3, 120(sp)
  BLT t4, t3, bb118
  # implict jump to bb117
bb117:
  LW t4, 52(sp)
  ADD s4, t4, zero
  FLW ft4, 48(sp)
  FLW ft3, 48(sp)
  FSGNJ.S fs9, ft4, ft3
  JAL zero, bb113
bb118:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  FLW ft3, 48(sp)
  FLW ft4, 48(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 36(sp)
  JAL zero, bb116
bb119:
  ADD t4, zero, zero
  SW t4, 156(sp)
  ADD t4, zero, zero
  SW t4, 144(sp)
  FLW ft3, 168(sp)
  FLW ft4, 168(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 12(sp)
  # implict jump to bb120
bb120:
  FLW ft4, 12(sp)
  FLW ft3, 12(sp)
  FSGNJ.S fs4, ft4, ft3
  LW t4, 144(sp)
  ADD s7, t4, zero
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  LW t4, 120(sp)
  BLT s7, t4, bb124
  # implict jump to bb121
bb121:
  ADD s9, s7, zero
  FSGNJ.S fs5, fs4, fs4
  # implict jump to bb122
bb122:
  FSGNJ.S ft4, fs5, fs5
  FSW ft4, 32(sp)
  ADD t4, s9, zero
  SW t4, 152(sp)
  LW t4, 132(sp)
  SLLIW s10, t4, 2
  ADDI t5, sp, 296
  ADD s10, t5, s10
  FLW ft4, 32(sp)
  FSW ft4, 0(s10)
  LW t3, 132(sp)
  ADDIW t4, t3, 1
  SW t4, 160(sp)
  LW t4, 160(sp)
  LW t3, 120(sp)
  BLT t4, t3, bb123
  JAL zero, bb62
bb123:
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  FLW ft3, 32(sp)
  FLW ft4, 32(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 12(sp)
  JAL zero, bb120
bb124:
  ADD t4, s7, zero
  SW t4, 136(sp)
  FSGNJ.S ft4, fs4, fs4
  FSW ft4, 172(sp)
  # implict jump to bb125
bb125:
  FLW ft4, 172(sp)
  FLW ft3, 172(sp)
  FSGNJ.S fs6, ft4, ft3
  LW t4, 136(sp)
  ADD s10, t4, zero
  SLLIW s11, s10, 2
  LUI t5, 195
  ADDIW t5, t5, 1624
  ADD t5, t5, sp
  ADD s11, t5, s11
  FLW fs7, 0(s11)
  LW t4, 132(sp)
  ADDW s11, t4, s10
  ADDIW s0, s11, 1
  MULW s0, s11, s0
  ADDI s11, zero, 2
  DIVW s0, s0, s11
  LW t4, 132(sp)
  ADDW s0, s0, t4
  ADDIW s0, s0, 1
  FCVT.S.W fs8, s0
  FDIV.S fs7, fs7, fs8
  FADD.S ft4, fs6, fs7
  FSW ft4, 4(sp)
  ADDIW t4, s10, 1
  SW t4, 140(sp)
  LW t4, 140(sp)
  LW t3, 120(sp)
  BLT t4, t3, bb127
  # implict jump to bb126
bb126:
  LW t4, 140(sp)
  ADD s9, t4, zero
  FLW ft4, 4(sp)
  FLW ft3, 4(sp)
  FSGNJ.S fs5, ft4, ft3
  JAL zero, bb122
bb127:
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  FLW ft3, 4(sp)
  FLW ft4, 4(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 172(sp)
  JAL zero, bb125
bb128:
  ADDI s1, zero, 1
  FCVT.S.W ft4, s1
  FSW ft4, 148(sp)
  ADD t4, zero, zero
  SW t4, 124(sp)
  # implict jump to bb129
bb129:
  LW t4, 124(sp)
  ADD s2, t4, zero
  SLLIW s3, s2, 2
  LUI t5, 195
  ADDIW t5, t5, 1624
  ADD t5, t5, sp
  ADD s3, t5, s3
  FLW ft4, 148(sp)
  FSW ft4, 0(s3)
  ADDIW t4, s2, 1
  SW t4, 128(sp)
  LW t4, 128(sp)
  LW t3, 120(sp)
  BLT t4, t3, bb130
  JAL zero, bb60
bb130:
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  JAL zero, bb129
bb131:
  ADDI s0, zero, 2000
  JAL zero, bb59
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
