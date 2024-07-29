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
  ADDI sp, sp, -208
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s3, 16(sp)
  SD s4, 24(sp)
  SD s5, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
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
  FSD fs9, 176(sp)
  FSD fs10, 184(sp)
  FSD fs11, 192(sp)
  ADDI s6, zero, 0
  FCVT.S.W fs4, s6
  ADDI s6, zero, 0
  BLT s6, a2, bb16
  # implict jump to bb1
bb1:
  ADDI s10, zero, 0
  BLT s10, a2, bb3
  # implict jump to bb2
bb2:
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s3, 16(sp)
  LD s4, 24(sp)
  LD s5, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
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
  FLD fs9, 176(sp)
  FLD fs10, 184(sp)
  FLD fs11, 192(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb3:
  # implict jump to bb4
bb4:
  ADD s10, zero, zero
  ADD s11, zero, zero
  FSGNJ.S fs7, fs4, fs4
  # implict jump to bb5
bb5:
  FSGNJ.S fs8, fs7, fs7
  ADD t0, s11, zero
  ADD t1, s10, zero
  BLT t0, a2, bb10
  # implict jump to bb6
bb6:
  ADD t2, t0, zero
  FSGNJ.S fs9, fs8, fs8
  # implict jump to bb7
bb7:
  FSGNJ.S fs3, fs9, fs9
  ADD s4, t2, zero
  SLLIW t2, t1, 2
  ADD t2, a1, t2
  FSW fs3, 0(t2)
  ADDIW s3, t1, 1
  # implict jump to bb8
bb8:
  BLT s3, a2, bb9
  JAL zero, bb2
bb9:
  ADD s10, s3, zero
  ADD s11, s4, zero
  FSGNJ.S fs7, fs3, fs3
  JAL zero, bb5
bb10:
  # implict jump to bb11
bb11:
  # implict jump to bb12
bb12:
  FSGNJ.S fs10, fs8, fs8
  ADD a4, t0, zero
  SLLIW a5, a4, 2
  ADD a5, a3, a5
  FLW fs11, 0(a5)
  ADDW a5, a4, t1
  ADDIW a6, a5, 1
  MULW a5, a5, a6
  ADDI a6, zero, 2
  DIVW a5, a5, a6
  ADDW a5, a5, a4
  ADDIW a5, a5, 1
  FCVT.S.W ft0, a5
  FDIV.S fs11, fs11, ft0
  FADD.S fs2, fs10, fs11
  ADDIW s5, a4, 1
  # implict jump to bb13
bb13:
  BLT s5, a2, bb15
  # implict jump to bb14
bb14:
  ADD t2, s5, zero
  FSGNJ.S fs9, fs2, fs2
  JAL zero, bb7
bb15:
  ADD t0, s5, zero
  FSGNJ.S fs8, fs2, fs2
  JAL zero, bb12
bb16:
  # implict jump to bb17
bb17:
  ADD s6, zero, zero
  ADD s7, zero, zero
  FSGNJ.S fs5, fs4, fs4
  # implict jump to bb18
bb18:
  FSGNJ.S fs6, fs5, fs5
  ADD s8, s7, zero
  ADD s9, s6, zero
  BLT s8, a2, bb23
  # implict jump to bb19
bb19:
  ADD s10, s8, zero
  FSGNJ.S fs7, fs6, fs6
  # implict jump to bb20
bb20:
  FSGNJ.S fs0, fs7, fs7
  ADD s2, s10, zero
  SLLIW s10, s9, 2
  ADD s10, a3, s10
  FSW fs0, 0(s10)
  ADDIW s1, s9, 1
  # implict jump to bb21
bb21:
  BLT s1, a2, bb22
  JAL zero, bb1
bb22:
  ADD s6, s1, zero
  ADD s7, s2, zero
  FSGNJ.S fs5, fs0, fs0
  JAL zero, bb18
bb23:
  # implict jump to bb24
bb24:
  # implict jump to bb25
bb25:
  FSGNJ.S fs8, fs6, fs6
  ADD s11, s8, zero
  SLLIW t0, s11, 2
  ADD t0, a0, t0
  FLW fs9, 0(t0)
  ADDW t0, s9, s11
  ADDIW t1, t0, 1
  MULW t0, t0, t1
  ADDI t1, zero, 2
  DIVW t0, t0, t1
  ADDW t0, t0, s9
  ADDIW t0, t0, 1
  FCVT.S.W fs10, t0
  FDIV.S fs9, fs9, fs10
  FADD.S fs1, fs8, fs9
  ADDIW s0, s11, 1
  # implict jump to bb26
bb26:
  BLT s0, a2, bb28
  # implict jump to bb27
bb27:
  ADD s10, s0, zero
  FSGNJ.S fs7, fs1, fs1
  JAL zero, bb20
bb28:
  ADD s8, s0, zero
  FSGNJ.S fs6, fs1, fs1
  JAL zero, bb25
mult1:
  ADDI sp, sp, -160
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s6, 24(sp)
  SD s2, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  SD s5, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  FSD fs0, 96(sp)
  FSD fs1, 104(sp)
  FSD fs2, 112(sp)
  FSD fs3, 120(sp)
  FSD fs4, 128(sp)
  FSD fs5, 136(sp)
  FSD fs6, 144(sp)
  FSD fs7, 152(sp)
  FCVT.S.L fs2, zero
  BLT zero, a2, bb31
  # implict jump to bb30
bb30:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s6, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  FLD fs0, 96(sp)
  FLD fs1, 104(sp)
  FLD fs2, 112(sp)
  FLD fs3, 120(sp)
  FLD fs4, 128(sp)
  FLD fs5, 136(sp)
  FLD fs6, 144(sp)
  FLD fs7, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb31:
  # implict jump to bb32
bb32:
  ADD s3, zero, zero
  ADD s4, zero, zero
  # implict jump to bb33
bb33:
  FSGNJ.S fs3, fs2, fs2
  ADD s5, s4, zero
  ADD s6, s3, zero
  BLT s5, a2, bb38
  # implict jump to bb34
bb34:
  ADD s7, s5, zero
  FSGNJ.S fs4, fs3, fs3
  # implict jump to bb35
bb35:
  FSGNJ.S fs1, fs4, fs4
  ADD s1, s7, zero
  SLLIW s7, s6, 2
  ADD s7, a1, s7
  FSW fs1, 0(s7)
  ADDIW s2, s6, 1
  # implict jump to bb36
bb36:
  BLT s2, a2, bb37
  JAL zero, bb30
bb37:
  ADD s3, s2, zero
  ADD s4, s1, zero
  FSGNJ.S fs2, fs1, fs1
  JAL zero, bb33
bb38:
  # implict jump to bb39
bb39:
  # implict jump to bb40
bb40:
  FSGNJ.S fs5, fs3, fs3
  ADD s8, s5, zero
  SLLIW s9, s8, 2
  ADD s9, a0, s9
  FLW fs6, 0(s9)
  ADDW s9, s6, s8
  ADDIW s10, s9, 1
  MULW s9, s9, s10
  ADDI s10, zero, 2
  DIVW s9, s9, s10
  ADDW s9, s9, s6
  ADDIW s9, s9, 1
  FCVT.S.W fs7, s9
  FDIV.S fs6, fs6, fs7
  FADD.S fs0, fs5, fs6
  ADDIW s0, s8, 1
  # implict jump to bb41
bb41:
  BLT s0, a2, bb43
  # implict jump to bb42
bb42:
  ADD s7, s0, zero
  FSGNJ.S fs4, fs0, fs0
  JAL zero, bb35
bb43:
  ADD s5, s0, zero
  FSGNJ.S fs3, fs0, fs0
  JAL zero, bb40
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
  # implict jump to bb45
bb45:
  LA s0, temp
  FLW fs1, 0(s0)
  FDIV.S fs2, fs0, fs1
  FSUB.S fs2, fs1, fs2
  LA s0, .CONSTANT.7.0
  FLW fs3, 0(s0)
  FLT.S s0, fs3, fs2
  BNE s0, zero, bb50
  # implict jump to bb46
bb46:
  LA s0, .CONSTANT.7.0
  FLW fs3, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs4, 0(s0)
  FSGNJN.S fs3, fs3, fs4
  FLT.S s0, fs2, fs3
  # implict jump to bb47
bb47:
  BNE s0, zero, bb49
  # implict jump to bb48
bb48:
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
bb49:
  LA s0, temp
  FLW fs1, 0(s0)
  FDIV.S fs2, fs0, fs1
  FADD.S fs1, fs1, fs2
  ADDI s0, zero, 2
  FCVT.S.W fs2, s0
  FDIV.S fs1, fs1, fs2
  LA s0, temp
  FSW fs1, 0(s0)
  JAL zero, bb45
bb50:
  ADDI s0, zero, 1
  JAL zero, bb47
Vectordot:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  FSD fs0, 48(sp)
  FSD fs1, 56(sp)
  FSD fs2, 64(sp)
  FSD fs3, 72(sp)
  FSD fs4, 80(sp)
  FSD fs5, 88(sp)
  FCVT.S.L fs1, zero
  BLT zero, a2, bb54
  # implict jump to bb52
bb52:
  FSGNJ.S fs2, fs1, fs1
  # implict jump to bb53
bb53:
  FSGNJ.S fa0, fs2, fs2
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  FLD fs0, 48(sp)
  FLD fs1, 56(sp)
  FLD fs2, 64(sp)
  FLD fs3, 72(sp)
  FLD fs4, 80(sp)
  FLD fs5, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb54:
  # implict jump to bb55
bb55:
  ADD s1, zero, zero
  # implict jump to bb56
bb56:
  FSGNJ.S fs3, fs1, fs1
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  ADD s4, a0, s3
  FLW fs4, 0(s4)
  ADD s3, a1, s3
  FLW fs5, 0(s3)
  FMUL.S fs4, fs4, fs5
  FADD.S fs0, fs3, fs4
  ADDIW s0, s2, 1
  # implict jump to bb57
bb57:
  BLT s0, a2, bb59
  # implict jump to bb58
bb58:
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb53
bb59:
  ADD s1, s0, zero
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb56
mult2:
  ADDI sp, sp, -160
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  FSD fs0, 96(sp)
  FSD fs1, 104(sp)
  FSD fs2, 112(sp)
  FSD fs3, 120(sp)
  FSD fs4, 128(sp)
  FSD fs5, 136(sp)
  FSD fs6, 144(sp)
  FSD fs7, 152(sp)
  FCVT.S.L fs2, zero
  BLT zero, a2, bb62
  # implict jump to bb61
bb61:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  FLD fs0, 96(sp)
  FLD fs1, 104(sp)
  FLD fs2, 112(sp)
  FLD fs3, 120(sp)
  FLD fs4, 128(sp)
  FLD fs5, 136(sp)
  FLD fs6, 144(sp)
  FLD fs7, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb62:
  # implict jump to bb63
bb63:
  ADD s3, zero, zero
  ADD s4, zero, zero
  # implict jump to bb64
bb64:
  FSGNJ.S fs3, fs2, fs2
  ADD s5, s4, zero
  ADD s6, s3, zero
  BLT s5, a2, bb69
  # implict jump to bb65
bb65:
  ADD s7, s5, zero
  FSGNJ.S fs4, fs3, fs3
  # implict jump to bb66
bb66:
  FSGNJ.S fs0, fs4, fs4
  ADD s0, s7, zero
  SLLIW s7, s6, 2
  ADD s7, a1, s7
  FSW fs0, 0(s7)
  ADDIW s1, s6, 1
  # implict jump to bb67
bb67:
  BLT s1, a2, bb68
  JAL zero, bb61
bb68:
  ADD s3, s1, zero
  ADD s4, s0, zero
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb64
bb69:
  # implict jump to bb70
bb70:
  # implict jump to bb71
bb71:
  FSGNJ.S fs5, fs3, fs3
  ADD s8, s5, zero
  SLLIW s9, s8, 2
  ADD s9, a0, s9
  FLW fs6, 0(s9)
  ADDW s9, s8, s6
  ADDIW s10, s9, 1
  MULW s9, s9, s10
  ADDI s10, zero, 2
  DIVW s9, s9, s10
  ADDW s9, s9, s8
  ADDIW s9, s9, 1
  FCVT.S.W fs7, s9
  FDIV.S fs6, fs6, fs7
  FADD.S fs1, fs5, fs6
  ADDIW s2, s8, 1
  # implict jump to bb72
bb72:
  BLT s2, a2, bb74
  # implict jump to bb73
bb73:
  ADD s7, s2, zero
  FSGNJ.S fs4, fs1, fs1
  JAL zero, bb66
bb74:
  ADD s5, s2, zero
  FSGNJ.S fs3, fs1, fs1
  JAL zero, bb71
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
  FSD fs0, 280(sp)
  FSD fs1, 288(sp)
  SD s11, 296(sp)
  FSD fs2, 304(sp)
  FSD fs3, 312(sp)
  FSD fs4, 320(sp)
  FSD fs9, 328(sp)
  FSD fs10, 336(sp)
  FSD fs11, 344(sp)
  FSD fs5, 352(sp)
  FSD fs6, 360(sp)
  FSD fs7, 368(sp)
  LUI a0, 98
  ADDIW a0, a0, -1032
  ADD a0, a0, sp
  FSD fs8, 0(a0)
  LUI a0, 24
  ADDIW a0, a0, 1696
  SLT a0, zero, a0
  XORI a0, a0, 1
  BNE a0, zero, bb174
  # implict jump to bb76
bb76:
  LUI a0, 24
  ADDIW a0, a0, 1696
  ADD a0, zero, a0
  # implict jump to bb77
bb77:
  ADD t4, a0, zero
  SW t4, 128(sp)
  ADDI a0, zero, 62
  CALL _sysy_starttime
  LW t4, 128(sp)
  BLT zero, t4, bb169
  # implict jump to bb78
bb78:
  SLTI s9, zero, 1000
  BNE s9, zero, bb108
  # implict jump to bb79
bb79:
  ADDI a0, zero, 76
  CALL _sysy_stoptime
  FCVT.S.L fs8, zero
  LW t4, 128(sp)
  BLT zero, t4, bb102
  # implict jump to bb80
bb80:
  FSGNJ.S fs9, fs8, fs8
  # implict jump to bb81
bb81:
  LW t4, 128(sp)
  BLT zero, t4, bb96
  # implict jump to bb82
bb82:
  FSGNJ.S fs4, fs8, fs8
  # implict jump to bb83
bb83:
  FDIV.S fs3, fs9, fs4
  # implict jump to bb84
bb84:
  LA s10, temp
  FLW fs4, 0(s10)
  FDIV.S fs7, fs3, fs4
  FSUB.S fs7, fs4, fs7
  LA s10, .CONSTANT.7.0
  FLW fs11, 0(s10)
  FLT.S s10, fs11, fs7
  BNE s10, zero, bb95
  # implict jump to bb85
bb85:
  LA s10, .CONSTANT.7.0
  FLW fs11, 0(s10)
  LA s10, .CONSTANT.7.0
  FLW fs2, 0(s10)
  FSGNJN.S fs2, fs11, fs2
  FLT.S s10, fs7, fs2
  # implict jump to bb86
bb86:
  BNE s10, zero, bb94
  # implict jump to bb87
bb87:
  LA s10, .CONSTANT.7.1
  FLW fs2, 0(s10)
  FSUB.S fs2, fs4, fs2
  LA s10, .CONSTANT.7.0
  FLW fs4, 0(s10)
  FLE.S s10, fs2, fs4
  BNE s10, zero, bb93
  # implict jump to bb88
bb88:
  ADD s10, zero, zero
  # implict jump to bb89
bb89:
  BNE s10, zero, bb92
  # implict jump to bb90
bb90:
  ADD a0, zero, zero
  CALL putint
  # implict jump to bb91
bb91:
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
  FLD fs0, 280(sp)
  FLD fs1, 288(sp)
  LD s11, 296(sp)
  FLD fs2, 304(sp)
  FLD fs3, 312(sp)
  FLD fs4, 320(sp)
  FLD fs9, 328(sp)
  FLD fs10, 336(sp)
  FLD fs11, 344(sp)
  FLD fs5, 352(sp)
  FLD fs6, 360(sp)
  FLD fs7, 368(sp)
  LUI t5, 98
  ADDIW t5, t5, -1032
  ADD t5, t5, sp
  FLD fs8, 0(t5)
  LUI t0, 293
  ADDIW t0, t0, 256
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb92:
  ADDI a0, zero, 1
  CALL putint
  JAL zero, bb91
bb93:
  LA s11, .CONSTANT.7.0
  FLW fs4, 0(s11)
  LA s11, .CONSTANT.7.0
  FLW fs7, 0(s11)
  FSGNJN.S fs4, fs4, fs7
  FLE.S s11, fs4, fs2
  ADD s10, s11, zero
  JAL zero, bb89
bb94:
  LA s10, temp
  FLW fs2, 0(s10)
  FDIV.S fs4, fs3, fs2
  FADD.S fs2, fs2, fs4
  ADDI s10, zero, 2
  FCVT.S.W fs4, s10
  FDIV.S fs2, fs2, fs4
  LA s10, temp
  FSW fs2, 0(s10)
  JAL zero, bb84
bb95:
  ADDI s10, zero, 1
  JAL zero, bb86
bb96:
  # implict jump to bb97
bb97:
  ADD s5, zero, zero
  FSGNJ.S fs5, fs8, fs8
  # implict jump to bb98
bb98:
  FSGNJ.S fs11, fs5, fs5
  ADD s10, s5, zero
  SLLIW s11, s10, 2
  LUI t5, 98
  ADDIW t5, t5, -1024
  ADD t5, t5, sp
  ADD s11, t5, s11
  FLW fs7, 0(s11)
  FMUL.S fs7, fs7, fs7
  FADD.S fs0, fs11, fs7
  ADDIW s8, s10, 1
  # implict jump to bb99
bb99:
  LW t4, 128(sp)
  BLT s8, t4, bb101
  # implict jump to bb100
bb100:
  FSGNJ.S fs4, fs0, fs0
  JAL zero, bb83
bb101:
  ADD s5, s8, zero
  FSGNJ.S fs5, fs0, fs0
  JAL zero, bb98
bb102:
  # implict jump to bb103
bb103:
  ADD s2, zero, zero
  FSGNJ.S fs10, fs8, fs8
  # implict jump to bb104
bb104:
  FSGNJ.S fs11, fs10, fs10
  ADD s5, s2, zero
  SLLIW s10, s5, 2
  ADDI t5, sp, 376
  ADD s11, t5, s10
  FLW fs4, 0(s11)
  LUI t5, 98
  ADDIW t5, t5, -1024
  ADD t5, t5, sp
  ADD s10, t5, s10
  FLW fs5, 0(s10)
  FMUL.S fs4, fs4, fs5
  FADD.S fs1, fs11, fs4
  ADDIW t4, s5, 1
  SW t4, 144(sp)
  # implict jump to bb105
bb105:
  LW t4, 144(sp)
  LW t3, 128(sp)
  BLT t4, t3, bb107
  # implict jump to bb106
bb106:
  FSGNJ.S fs9, fs1, fs1
  JAL zero, bb81
bb107:
  LW t4, 144(sp)
  ADD s2, t4, zero
  FSGNJ.S fs10, fs1, fs1
  JAL zero, bb104
bb108:
  # implict jump to bb109
bb109:
  FCVT.S.L ft4, zero
  FSW ft4, 172(sp)
  ADD s9, zero, zero
  # implict jump to bb110
bb110:
  ADD t4, s9, zero
  SW t4, 160(sp)
  LW t4, 128(sp)
  BLT zero, t4, bb156
  # implict jump to bb111
bb111:
  LW t4, 128(sp)
  BLT zero, t4, bb143
  # implict jump to bb112
bb112:
  LW t4, 128(sp)
  BLT zero, t4, bb130
  # implict jump to bb113
bb113:
  LW t4, 128(sp)
  BLT zero, t4, bb117
  # implict jump to bb114
bb114:
  LW t4, 160(sp)
  ADDIW s6, t4, 1
  # implict jump to bb115
bb115:
  SLTI s2, s6, 1000
  BNE s2, zero, bb116
  JAL zero, bb79
bb116:
  ADD s9, s6, zero
  JAL zero, bb110
bb117:
  # implict jump to bb118
bb118:
  ADD s4, zero, zero
  ADD s7, zero, zero
  FLW ft3, 172(sp)
  FLW ft4, 172(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 96(sp)
  # implict jump to bb119
bb119:
  FLW ft4, 96(sp)
  FLW ft3, 96(sp)
  FSGNJ.S fs5, ft4, ft3
  ADD s10, s7, zero
  ADD t4, s4, zero
  SW t4, 124(sp)
  LW t4, 128(sp)
  BLT s10, t4, bb124
  # implict jump to bb120
bb120:
  ADD s2, s10, zero
  FSGNJ.S fs10, fs5, fs5
  # implict jump to bb121
bb121:
  FSGNJ.S fs6, fs10, fs10
  ADD s0, s2, zero
  LW t4, 124(sp)
  SLLIW s2, t4, 2
  ADDI t4, sp, 376
  ADD s2, t4, s2
  FSW fs6, 0(s2)
  LW t4, 124(sp)
  ADDIW s1, t4, 1
  # implict jump to bb122
bb122:
  LW t4, 128(sp)
  BLT s1, t4, bb123
  JAL zero, bb114
bb123:
  ADD s4, s1, zero
  ADD s7, s0, zero
  FSGNJ.S ft4, fs6, fs6
  FSW ft4, 96(sp)
  JAL zero, bb119
bb124:
  # implict jump to bb125
bb125:
  ADD t4, s10, zero
  SW t4, 116(sp)
  FSGNJ.S ft4, fs5, fs5
  FSW ft4, 104(sp)
  # implict jump to bb126
bb126:
  FLW ft4, 104(sp)
  FLW ft3, 104(sp)
  FSGNJ.S fs11, ft4, ft3
  LW t4, 116(sp)
  ADD s5, t4, zero
  SLLIW s11, s5, 2
  LUI t5, 195
  ADDIW t5, t5, 1664
  ADD t5, t5, sp
  ADD s11, t5, s11
  FLW fs9, 0(s11)
  LW t4, 124(sp)
  ADDW s11, s5, t4
  ADDIW s10, s11, 1
  MULW s10, s11, s10
  ADDI s11, zero, 2
  DIVW s10, s10, s11
  ADDW s10, s10, s5
  ADDIW s10, s10, 1
  FCVT.S.W fs8, s10
  FDIV.S fs8, fs9, fs8
  FADD.S ft4, fs11, fs8
  FSW ft4, 100(sp)
  ADDIW s3, s5, 1
  # implict jump to bb127
bb127:
  LW t4, 128(sp)
  BLT s3, t4, bb129
  # implict jump to bb128
bb128:
  ADD s2, s3, zero
  FLW ft4, 100(sp)
  FLW ft3, 100(sp)
  FSGNJ.S fs10, ft4, ft3
  JAL zero, bb121
bb129:
  ADD t4, s3, zero
  SW t4, 116(sp)
  FLW ft3, 100(sp)
  FLW ft4, 100(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 104(sp)
  JAL zero, bb126
bb130:
  # implict jump to bb131
bb131:
  ADD t4, zero, zero
  SW t4, 84(sp)
  ADD t4, zero, zero
  SW t4, 68(sp)
  FLW ft3, 172(sp)
  FLW ft4, 172(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 112(sp)
  # implict jump to bb132
bb132:
  FLW ft4, 112(sp)
  FLW ft3, 112(sp)
  FSGNJ.S fs9, ft4, ft3
  LW t4, 68(sp)
  ADD s10, t4, zero
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t4, 128(sp)
  BLT s10, t4, bb137
  # implict jump to bb133
bb133:
  ADD s11, s10, zero
  FSGNJ.S fs10, fs9, fs9
  # implict jump to bb134
bb134:
  FSGNJ.S ft4, fs10, fs10
  FSW ft4, 108(sp)
  ADD t4, s11, zero
  SW t4, 76(sp)
  LW t4, 60(sp)
  SLLIW s4, t4, 2
  LUI t5, 195
  ADDIW t5, t5, 1664
  ADD t5, t5, sp
  ADD s4, t5, s4
  FLW ft4, 108(sp)
  FSW ft4, 0(s4)
  LW t3, 60(sp)
  ADDIW t4, t3, 1
  SW t4, 88(sp)
  # implict jump to bb135
bb135:
  LW t4, 88(sp)
  LW t3, 128(sp)
  BLT t4, t3, bb136
  JAL zero, bb113
bb136:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  FLW ft3, 108(sp)
  FLW ft4, 108(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 112(sp)
  JAL zero, bb132
bb137:
  # implict jump to bb138
bb138:
  ADD t4, s10, zero
  SW t4, 64(sp)
  FSGNJ.S ft4, fs9, fs9
  FSW ft4, 120(sp)
  # implict jump to bb139
bb139:
  FLW ft4, 120(sp)
  FLW ft3, 120(sp)
  FSGNJ.S fs11, ft4, ft3
  LW t4, 64(sp)
  ADD s10, t4, zero
  SLLIW s7, s10, 2
  LUI t5, 98
  ADDIW t5, t5, -1024
  ADD t5, t5, sp
  ADD s7, t5, s7
  FLW fs5, 0(s7)
  LW t4, 60(sp)
  ADDW s7, t4, s10
  ADDIW s4, s7, 1
  MULW s4, s7, s4
  ADDI s7, zero, 2
  DIVW s4, s4, s7
  LW t4, 60(sp)
  ADDW s4, s4, t4
  ADDIW s4, s4, 1
  FCVT.S.W fs2, s4
  FDIV.S fs2, fs5, fs2
  FADD.S ft4, fs11, fs2
  FSW ft4, 136(sp)
  ADDIW t4, s10, 1
  SW t4, 140(sp)
  # implict jump to bb140
bb140:
  LW t4, 140(sp)
  LW t3, 128(sp)
  BLT t4, t3, bb142
  # implict jump to bb141
bb141:
  LW t4, 140(sp)
  ADD s11, t4, zero
  FLW ft4, 136(sp)
  FLW ft3, 136(sp)
  FSGNJ.S fs10, ft4, ft3
  JAL zero, bb134
bb142:
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  FLW ft3, 136(sp)
  FLW ft4, 136(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 120(sp)
  JAL zero, bb139
bb143:
  # implict jump to bb144
bb144:
  ADD t4, zero, zero
  SW t4, 52(sp)
  ADD t4, zero, zero
  SW t4, 44(sp)
  FLW ft3, 172(sp)
  FLW ft4, 172(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 72(sp)
  # implict jump to bb145
bb145:
  FLW ft4, 72(sp)
  FLW ft3, 72(sp)
  FSGNJ.S fs8, ft4, ft3
  LW t4, 44(sp)
  ADD s10, t4, zero
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t4, 128(sp)
  BLT s10, t4, bb150
  # implict jump to bb146
bb146:
  ADD s11, s10, zero
  FSGNJ.S fs9, fs8, fs8
  # implict jump to bb147
bb147:
  FSGNJ.S ft4, fs9, fs9
  FSW ft4, 80(sp)
  ADD t4, s11, zero
  SW t4, 28(sp)
  LW t4, 36(sp)
  SLLIW s2, t4, 2
  LUI t5, 98
  ADDIW t5, t5, -1024
  ADD t5, t5, sp
  ADD s2, t5, s2
  FLW ft4, 80(sp)
  FSW ft4, 0(s2)
  LW t3, 36(sp)
  ADDIW t4, t3, 1
  SW t4, 132(sp)
  # implict jump to bb148
bb148:
  LW t4, 132(sp)
  LW t3, 128(sp)
  BLT t4, t3, bb149
  JAL zero, bb112
bb149:
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  FLW ft3, 80(sp)
  FLW ft4, 80(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 72(sp)
  JAL zero, bb145
bb150:
  # implict jump to bb151
bb151:
  ADD t4, s10, zero
  SW t4, 40(sp)
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 0(sp)
  # implict jump to bb152
bb152:
  FLW ft4, 0(sp)
  FLW ft3, 0(sp)
  FSGNJ.S fs10, ft4, ft3
  LW t4, 40(sp)
  ADD s10, t4, zero
  SLLIW s7, s10, 2
  LUI t5, 195
  ADDIW t5, t5, 1664
  ADD t5, t5, sp
  ADD s7, t5, s7
  FLW fs8, 0(s7)
  LW t4, 36(sp)
  ADDW s7, s10, t4
  ADDIW s2, s7, 1
  MULW s2, s7, s2
  ADDI s7, zero, 2
  DIVW s2, s2, s7
  ADDW s2, s2, s10
  ADDIW s2, s2, 1
  FCVT.S.W fs11, s2
  FDIV.S fs8, fs8, fs11
  FADD.S ft4, fs10, fs8
  FSW ft4, 56(sp)
  ADDIW t4, s10, 1
  SW t4, 20(sp)
  # implict jump to bb153
bb153:
  LW t4, 20(sp)
  LW t3, 128(sp)
  BLT t4, t3, bb155
  # implict jump to bb154
bb154:
  LW t4, 20(sp)
  ADD s11, t4, zero
  FLW ft4, 56(sp)
  FLW ft3, 56(sp)
  FSGNJ.S fs9, ft4, ft3
  JAL zero, bb147
bb155:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  FLW ft3, 56(sp)
  FLW ft4, 56(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 0(sp)
  JAL zero, bb152
bb156:
  # implict jump to bb157
bb157:
  ADD t4, zero, zero
  SW t4, 176(sp)
  ADD t4, zero, zero
  SW t4, 164(sp)
  FLW ft3, 172(sp)
  FLW ft4, 172(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 24(sp)
  # implict jump to bb158
bb158:
  FLW ft4, 24(sp)
  FLW ft3, 24(sp)
  FSGNJ.S fs8, ft4, ft3
  LW t4, 164(sp)
  ADD s11, t4, zero
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t4, 128(sp)
  BLT s11, t4, bb163
  # implict jump to bb159
bb159:
  ADD s10, s11, zero
  FSGNJ.S fs10, fs8, fs8
  # implict jump to bb160
bb160:
  FSGNJ.S ft4, fs10, fs10
  FSW ft4, 32(sp)
  ADD t4, s10, zero
  SW t4, 156(sp)
  LW t4, 48(sp)
  SLLIW s2, t4, 2
  LUI t5, 195
  ADDIW t5, t5, 1664
  ADD t5, t5, sp
  ADD s2, t5, s2
  FLW ft4, 32(sp)
  FSW ft4, 0(s2)
  LW t3, 48(sp)
  ADDIW t4, t3, 1
  SW t4, 4(sp)
  # implict jump to bb161
bb161:
  LW t4, 4(sp)
  LW t3, 128(sp)
  BLT t4, t3, bb162
  JAL zero, bb111
bb162:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  FLW ft3, 32(sp)
  FLW ft4, 32(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 24(sp)
  JAL zero, bb158
bb163:
  # implict jump to bb164
bb164:
  ADD t4, s11, zero
  SW t4, 16(sp)
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 12(sp)
  # implict jump to bb165
bb165:
  FLW ft4, 12(sp)
  FLW ft3, 12(sp)
  FSGNJ.S fs8, ft4, ft3
  LW t4, 16(sp)
  ADD s11, t4, zero
  SLLIW s7, s11, 2
  ADDI t5, sp, 376
  ADD s7, t5, s7
  FLW fs5, 0(s7)
  LW t4, 48(sp)
  ADDW s7, t4, s11
  ADDIW s2, s7, 1
  MULW s2, s7, s2
  ADDI s7, zero, 2
  DIVW s2, s2, s7
  LW t4, 48(sp)
  ADDW s2, s2, t4
  ADDIW s2, s2, 1
  FCVT.S.W fs9, s2
  FDIV.S fs5, fs5, fs9
  FADD.S ft4, fs8, fs5
  FSW ft4, 8(sp)
  ADDIW t4, s11, 1
  SW t4, 92(sp)
  # implict jump to bb166
bb166:
  LW t4, 92(sp)
  LW t3, 128(sp)
  BLT t4, t3, bb168
  # implict jump to bb167
bb167:
  LW t4, 92(sp)
  ADD s10, t4, zero
  FLW ft4, 8(sp)
  FLW ft3, 8(sp)
  FSGNJ.S fs10, ft4, ft3
  JAL zero, bb160
bb168:
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  FLW ft3, 8(sp)
  FLW ft4, 8(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 12(sp)
  JAL zero, bb165
bb169:
  # implict jump to bb170
bb170:
  ADDI s11, zero, 1
  FCVT.S.W ft4, s11
  FSW ft4, 168(sp)
  ADD t4, zero, zero
  SW t4, 152(sp)
  # implict jump to bb171
bb171:
  LW t4, 152(sp)
  ADD s11, t4, zero
  SLLIW s9, s11, 2
  ADDI t5, sp, 376
  ADD s9, t5, s9
  FLW ft4, 168(sp)
  FSW ft4, 0(s9)
  ADDIW t4, s11, 1
  SW t4, 148(sp)
  # implict jump to bb172
bb172:
  LW t4, 148(sp)
  LW t3, 128(sp)
  BLT t4, t3, bb173
  JAL zero, bb78
bb173:
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  JAL zero, bb171
bb174:
  ADDI a0, zero, 2000
  JAL zero, bb77
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
