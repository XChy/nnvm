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
  SD s0, 8(sp)
  SD s3, 16(sp)
  SD s5, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s4, 48(sp)
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
  BLT s6, a2, bb14
  # implict jump to bb1
bb1:
  ADDI s10, zero, 0
  BLT s10, a2, bb3
  # implict jump to bb2
bb2:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s3, 16(sp)
  LD s5, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s4, 48(sp)
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
  ADD s10, zero, zero
  ADD s11, zero, zero
  FSGNJ.S fs7, fs4, fs4
  # implict jump to bb4
bb4:
  FSGNJ.S fs8, fs7, fs7
  ADD t0, s11, zero
  ADD t1, s10, zero
  BLT t0, a2, bb9
  # implict jump to bb5
bb5:
  ADD t2, t0, zero
  FSGNJ.S fs9, fs8, fs8
  # implict jump to bb6
bb6:
  FSGNJ.S fs2, fs9, fs9
  ADD s3, t2, zero
  SLLIW t2, t1, 2
  ADD t2, a1, t2
  FSW fs2, 0(t2)
  ADDIW s4, t1, 1
  # implict jump to bb7
bb7:
  BLT s4, a2, bb8
  JAL zero, bb2
bb8:
  ADD s10, s4, zero
  ADD s11, s3, zero
  FSGNJ.S fs7, fs2, fs2
  JAL zero, bb4
bb9:
  # implict jump to bb10
bb10:
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
  FADD.S fs3, fs10, fs11
  ADDIW s5, a4, 1
  # implict jump to bb11
bb11:
  BLT s5, a2, bb13
  # implict jump to bb12
bb12:
  ADD t2, s5, zero
  FSGNJ.S fs9, fs3, fs3
  JAL zero, bb6
bb13:
  ADD t0, s5, zero
  FSGNJ.S fs8, fs3, fs3
  JAL zero, bb10
bb14:
  ADD s6, zero, zero
  ADD s7, zero, zero
  FSGNJ.S fs5, fs4, fs4
  # implict jump to bb15
bb15:
  FSGNJ.S fs6, fs5, fs5
  ADD s8, s7, zero
  ADD s9, s6, zero
  BLT s8, a2, bb20
  # implict jump to bb16
bb16:
  ADD s10, s8, zero
  FSGNJ.S fs7, fs6, fs6
  # implict jump to bb17
bb17:
  FSGNJ.S fs1, fs7, fs7
  ADD s0, s10, zero
  SLLIW s10, s9, 2
  ADD s10, a3, s10
  FSW fs1, 0(s10)
  ADDIW s2, s9, 1
  # implict jump to bb18
bb18:
  BLT s2, a2, bb19
  JAL zero, bb1
bb19:
  ADD s6, s2, zero
  ADD s7, s0, zero
  FSGNJ.S fs5, fs1, fs1
  JAL zero, bb15
bb20:
  # implict jump to bb21
bb21:
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
  FADD.S fs0, fs8, fs9
  ADDIW s1, s11, 1
  # implict jump to bb22
bb22:
  BLT s1, a2, bb24
  # implict jump to bb23
bb23:
  ADD s10, s1, zero
  FSGNJ.S fs7, fs0, fs0
  JAL zero, bb17
bb24:
  ADD s8, s1, zero
  FSGNJ.S fs6, fs0, fs0
  JAL zero, bb21
mult1:
  ADDI sp, sp, -160
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s2, 16(sp)
  SD s3, 24(sp)
  SD s0, 32(sp)
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
  BLT zero, a2, bb27
  # implict jump to bb26
bb26:
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s2, 16(sp)
  LD s3, 24(sp)
  LD s0, 32(sp)
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
bb27:
  ADD s3, zero, zero
  ADD s4, zero, zero
  # implict jump to bb28
bb28:
  FSGNJ.S fs3, fs2, fs2
  ADD s5, s4, zero
  ADD s6, s3, zero
  BLT s5, a2, bb33
  # implict jump to bb29
bb29:
  ADD s7, s5, zero
  FSGNJ.S fs4, fs3, fs3
  # implict jump to bb30
bb30:
  FSGNJ.S fs0, fs4, fs4
  ADD s2, s7, zero
  SLLIW s7, s6, 2
  ADD s7, a1, s7
  FSW fs0, 0(s7)
  ADDIW s0, s6, 1
  # implict jump to bb31
bb31:
  BLT s0, a2, bb32
  JAL zero, bb26
bb32:
  ADD s3, s0, zero
  ADD s4, s2, zero
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb28
bb33:
  # implict jump to bb34
bb34:
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
  FADD.S fs1, fs5, fs6
  ADDIW s1, s8, 1
  # implict jump to bb35
bb35:
  BLT s1, a2, bb37
  # implict jump to bb36
bb36:
  ADD s7, s1, zero
  FSGNJ.S fs4, fs1, fs1
  JAL zero, bb30
bb37:
  ADD s5, s1, zero
  FSGNJ.S fs3, fs1, fs1
  JAL zero, bb34
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
  # implict jump to bb39
bb39:
  LA s0, temp
  FLW fs1, 0(s0)
  FDIV.S fs2, fs0, fs1
  FSUB.S fs2, fs1, fs2
  LA s0, .CONSTANT.7.0
  FLW fs3, 0(s0)
  FLT.S s0, fs3, fs2
  BNE s0, zero, bb44
  # implict jump to bb40
bb40:
  LA s0, .CONSTANT.7.0
  FLW fs3, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs4, 0(s0)
  FSGNJN.S fs3, fs3, fs4
  FLT.S s0, fs2, fs3
  # implict jump to bb41
bb41:
  BNE s0, zero, bb43
  # implict jump to bb42
bb42:
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
bb43:
  LA s0, temp
  FLW fs1, 0(s0)
  FDIV.S fs2, fs0, fs1
  FADD.S fs1, fs1, fs2
  ADDI s0, zero, 2
  FCVT.S.W fs2, s0
  FDIV.S fs1, fs1, fs2
  LA s0, temp
  FSW fs1, 0(s0)
  JAL zero, bb39
bb44:
  ADDI s0, zero, 1
  JAL zero, bb41
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
  BLT zero, a2, bb48
  # implict jump to bb46
bb46:
  FSGNJ.S fs2, fs1, fs1
  # implict jump to bb47
bb47:
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
bb48:
  ADD s1, zero, zero
  # implict jump to bb49
bb49:
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
  # implict jump to bb50
bb50:
  BLT s0, a2, bb52
  # implict jump to bb51
bb51:
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb47
bb52:
  ADD s1, s0, zero
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb49
mult2:
  ADDI sp, sp, -160
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s3, 24(sp)
  SD s2, 32(sp)
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
  BLT zero, a2, bb55
  # implict jump to bb54
bb54:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
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
bb55:
  ADD s3, zero, zero
  ADD s4, zero, zero
  # implict jump to bb56
bb56:
  FSGNJ.S fs3, fs2, fs2
  ADD s5, s4, zero
  ADD s6, s3, zero
  BLT s5, a2, bb61
  # implict jump to bb57
bb57:
  ADD s7, s5, zero
  FSGNJ.S fs4, fs3, fs3
  # implict jump to bb58
bb58:
  FSGNJ.S fs0, fs4, fs4
  ADD s1, s7, zero
  SLLIW s7, s6, 2
  ADD s7, a1, s7
  FSW fs0, 0(s7)
  ADDIW s2, s6, 1
  # implict jump to bb59
bb59:
  BLT s2, a2, bb60
  JAL zero, bb54
bb60:
  ADD s3, s2, zero
  ADD s4, s1, zero
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb56
bb61:
  # implict jump to bb62
bb62:
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
  ADDIW s0, s8, 1
  # implict jump to bb63
bb63:
  BLT s0, a2, bb65
  # implict jump to bb64
bb64:
  ADD s7, s0, zero
  FSGNJ.S fs4, fs1, fs1
  JAL zero, bb58
bb65:
  ADD s5, s0, zero
  FSGNJ.S fs3, fs1, fs1
  JAL zero, bb62
main:
  LUI t0, 1048283
  ADDIW t0, t0, -256
  ADD sp, sp, t0
  SD ra, 176(sp)
  SD s0, 184(sp)
  SD s1, 192(sp)
  SD s2, 200(sp)
  SD s3, 208(sp)
  SD s4, 216(sp)
  SD s5, 224(sp)
  SD s6, 232(sp)
  SD s7, 240(sp)
  SD s8, 248(sp)
  SD s9, 256(sp)
  SD s10, 264(sp)
  SD s11, 272(sp)
  FSD fs0, 280(sp)
  FSD fs1, 288(sp)
  FSD fs2, 296(sp)
  FSD fs3, 304(sp)
  FSD fs4, 312(sp)
  FSD fs5, 320(sp)
  FSD fs6, 328(sp)
  FSD fs7, 336(sp)
  FSD fs8, 344(sp)
  FSD fs9, 352(sp)
  FSD fs10, 360(sp)
  FSD fs11, 368(sp)
  LUI a0, 24
  ADDIW a0, a0, 1696
  SLT a0, zero, a0
  XORI a0, a0, 1
  BNE a0, zero, bb153
  # implict jump to bb67
bb67:
  LUI a0, 24
  ADDIW a0, a0, 1696
  ADD a0, zero, a0
  # implict jump to bb68
bb68:
  ADD t4, a0, zero
  SW t4, 116(sp)
  ADDI a0, zero, 62
  CALL _sysy_starttime
  LW t4, 116(sp)
  BLT zero, t4, bb149
  # implict jump to bb69
bb69:
  SLTI s3, zero, 1000
  BNE s3, zero, bb97
  # implict jump to bb70
bb70:
  ADDI a0, zero, 76
  CALL _sysy_stoptime
  FCVT.S.L fs2, zero
  LW t4, 116(sp)
  BLT zero, t4, bb92
  # implict jump to bb71
bb71:
  FSGNJ.S fs9, fs2, fs2
  # implict jump to bb72
bb72:
  LW t4, 116(sp)
  BLT zero, t4, bb87
  # implict jump to bb73
bb73:
  FSGNJ.S fs6, fs2, fs2
  # implict jump to bb74
bb74:
  FDIV.S fs5, fs9, fs6
  # implict jump to bb75
bb75:
  LA s10, temp
  FLW fs0, 0(s10)
  FDIV.S fs6, fs5, fs0
  FSUB.S fs6, fs0, fs6
  LA s10, .CONSTANT.7.0
  FLW fs11, 0(s10)
  FLT.S s10, fs11, fs6
  BNE s10, zero, bb86
  # implict jump to bb76
bb76:
  LA s10, .CONSTANT.7.0
  FLW fs11, 0(s10)
  LA s10, .CONSTANT.7.0
  FLW fs3, 0(s10)
  FSGNJN.S fs3, fs11, fs3
  FLT.S s10, fs6, fs3
  # implict jump to bb77
bb77:
  BNE s10, zero, bb85
  # implict jump to bb78
bb78:
  LA s10, .CONSTANT.7.1
  FLW fs3, 0(s10)
  FSUB.S fs0, fs0, fs3
  LA s10, .CONSTANT.7.0
  FLW fs3, 0(s10)
  FLE.S s10, fs0, fs3
  BNE s10, zero, bb84
  # implict jump to bb79
bb79:
  ADD s10, zero, zero
  # implict jump to bb80
bb80:
  BNE s10, zero, bb83
  # implict jump to bb81
bb81:
  ADD a0, zero, zero
  CALL putint
  # implict jump to bb82
bb82:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 176(sp)
  LD s0, 184(sp)
  LD s1, 192(sp)
  LD s2, 200(sp)
  LD s3, 208(sp)
  LD s4, 216(sp)
  LD s5, 224(sp)
  LD s6, 232(sp)
  LD s7, 240(sp)
  LD s8, 248(sp)
  LD s9, 256(sp)
  LD s10, 264(sp)
  LD s11, 272(sp)
  FLD fs0, 280(sp)
  FLD fs1, 288(sp)
  FLD fs2, 296(sp)
  FLD fs3, 304(sp)
  FLD fs4, 312(sp)
  FLD fs5, 320(sp)
  FLD fs6, 328(sp)
  FLD fs7, 336(sp)
  FLD fs8, 344(sp)
  FLD fs9, 352(sp)
  FLD fs10, 360(sp)
  FLD fs11, 368(sp)
  LUI t0, 293
  ADDIW t0, t0, 256
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb83:
  ADDI a0, zero, 1
  CALL putint
  JAL zero, bb82
bb84:
  LA s11, .CONSTANT.7.0
  FLW fs3, 0(s11)
  LA s11, .CONSTANT.7.0
  FLW fs6, 0(s11)
  FSGNJN.S fs3, fs3, fs6
  FLE.S s11, fs3, fs0
  ADD s10, s11, zero
  JAL zero, bb80
bb85:
  LA s10, temp
  FLW fs0, 0(s10)
  FDIV.S fs3, fs5, fs0
  FADD.S fs0, fs0, fs3
  ADDI s10, zero, 2
  FCVT.S.W fs3, s10
  FDIV.S fs0, fs0, fs3
  LA s10, temp
  FSW fs0, 0(s10)
  JAL zero, bb75
bb86:
  ADDI s10, zero, 1
  JAL zero, bb77
bb87:
  ADD s4, zero, zero
  FSGNJ.S fs8, fs2, fs2
  # implict jump to bb88
bb88:
  FSGNJ.S fs11, fs8, fs8
  ADD s10, s4, zero
  SLLIW s11, s10, 2
  LUI t5, 98
  ADDIW t5, t5, -1032
  ADD t5, t5, sp
  ADD s11, t5, s11
  FLW fs0, 0(s11)
  FMUL.S fs0, fs0, fs0
  FADD.S fs7, fs11, fs0
  ADDIW s8, s10, 1
  # implict jump to bb89
bb89:
  LW t4, 116(sp)
  BLT s8, t4, bb91
  # implict jump to bb90
bb90:
  FSGNJ.S fs6, fs7, fs7
  JAL zero, bb74
bb91:
  ADD s4, s8, zero
  FSGNJ.S fs8, fs7, fs7
  JAL zero, bb88
bb92:
  ADD s0, zero, zero
  FSGNJ.S fs10, fs2, fs2
  # implict jump to bb93
bb93:
  FSGNJ.S fs11, fs10, fs10
  ADD s4, s0, zero
  SLLIW s10, s4, 2
  ADDI t5, sp, 376
  ADD s11, t5, s10
  FLW fs6, 0(s11)
  LUI t5, 98
  ADDIW t5, t5, -1032
  ADD t5, t5, sp
  ADD s10, t5, s10
  FLW fs8, 0(s10)
  FMUL.S fs6, fs6, fs8
  FADD.S fs4, fs11, fs6
  ADDIW s6, s4, 1
  # implict jump to bb94
bb94:
  LW t4, 116(sp)
  BLT s6, t4, bb96
  # implict jump to bb95
bb95:
  FSGNJ.S fs9, fs4, fs4
  JAL zero, bb72
bb96:
  ADD s0, s6, zero
  FSGNJ.S fs10, fs4, fs4
  JAL zero, bb93
bb97:
  ADD s3, zero, zero
  # implict jump to bb98
bb98:
  ADD t4, s3, zero
  SW t4, 152(sp)
  FCVT.S.L ft4, zero
  FSW ft4, 156(sp)
  LW t4, 116(sp)
  BLT zero, t4, bb138
  # implict jump to bb99
bb99:
  LW t4, 116(sp)
  BLT zero, t4, bb127
  # implict jump to bb100
bb100:
  LW t4, 116(sp)
  BLT zero, t4, bb116
  # implict jump to bb101
bb101:
  LW t4, 116(sp)
  BLT zero, t4, bb105
  # implict jump to bb102
bb102:
  LW t4, 152(sp)
  ADDIW s7, t4, 1
  # implict jump to bb103
bb103:
  SLTI s0, s7, 1000
  BNE s0, zero, bb104
  JAL zero, bb70
bb104:
  ADD s3, s7, zero
  JAL zero, bb98
bb105:
  ADD s5, zero, zero
  ADD s9, zero, zero
  FLW ft3, 156(sp)
  FLW ft4, 156(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 108(sp)
  # implict jump to bb106
bb106:
  FLW ft4, 108(sp)
  FLW ft3, 108(sp)
  FSGNJ.S fs8, ft4, ft3
  ADD s10, s9, zero
  ADD t4, s5, zero
  SW t4, 76(sp)
  LW t4, 116(sp)
  BLT s10, t4, bb111
  # implict jump to bb107
bb107:
  ADD s4, s10, zero
  FSGNJ.S fs10, fs8, fs8
  # implict jump to bb108
bb108:
  FSGNJ.S fs1, fs10, fs10
  ADD s2, s4, zero
  LW t4, 76(sp)
  SLLIW s0, t4, 2
  ADDI t4, sp, 376
  ADD s0, t4, s0
  FSW fs1, 0(s0)
  LW t4, 76(sp)
  ADDIW s1, t4, 1
  # implict jump to bb109
bb109:
  LW t4, 116(sp)
  BLT s1, t4, bb110
  JAL zero, bb102
bb110:
  ADD s5, s1, zero
  ADD s9, s2, zero
  FSGNJ.S ft4, fs1, fs1
  FSW ft4, 108(sp)
  JAL zero, bb106
bb111:
  ADD t4, s10, zero
  SW t4, 80(sp)
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 100(sp)
  # implict jump to bb112
bb112:
  FLW ft4, 100(sp)
  FLW ft3, 100(sp)
  FSGNJ.S fs11, ft4, ft3
  LW t4, 80(sp)
  ADD s11, t4, zero
  SLLIW s10, s11, 2
  LUI t5, 195
  ADDIW t5, t5, 1656
  ADD t5, t5, sp
  ADD s10, t5, s10
  FLW fs9, 0(s10)
  LW t4, 76(sp)
  ADDW s10, s11, t4
  ADDIW s0, s10, 1
  MULW s0, s10, s0
  ADDI s10, zero, 2
  DIVW s0, s0, s10
  ADDW s0, s0, s11
  ADDIW s0, s0, 1
  FCVT.S.W fs2, s0
  FDIV.S fs2, fs9, fs2
  FADD.S ft4, fs11, fs2
  FSW ft4, 112(sp)
  ADDIW t4, s11, 1
  SW t4, 88(sp)
  # implict jump to bb113
bb113:
  LW t4, 88(sp)
  LW t3, 116(sp)
  BLT t4, t3, bb115
  # implict jump to bb114
bb114:
  LW t4, 88(sp)
  ADD s4, t4, zero
  FLW ft4, 112(sp)
  FLW ft3, 112(sp)
  FSGNJ.S fs10, ft4, ft3
  JAL zero, bb108
bb115:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  FLW ft3, 112(sp)
  FLW ft4, 112(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 100(sp)
  JAL zero, bb112
bb116:
  ADD t4, zero, zero
  SW t4, 72(sp)
  ADD t4, zero, zero
  SW t4, 56(sp)
  FLW ft3, 156(sp)
  FLW ft4, 156(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 92(sp)
  # implict jump to bb117
bb117:
  FLW ft4, 92(sp)
  FLW ft3, 92(sp)
  FSGNJ.S fs8, ft4, ft3
  LW t4, 56(sp)
  ADD s9, t4, zero
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t4, 116(sp)
  BLT s9, t4, bb122
  # implict jump to bb118
bb118:
  ADD s11, s9, zero
  FSGNJ.S fs10, fs8, fs8
  # implict jump to bb119
bb119:
  FSGNJ.S ft4, fs10, fs10
  FSW ft4, 96(sp)
  ADD t4, s11, zero
  SW t4, 64(sp)
  LW t4, 48(sp)
  SLLIW s5, t4, 2
  LUI t5, 195
  ADDIW t5, t5, 1656
  ADD t5, t5, sp
  ADD s5, t5, s5
  FLW ft4, 96(sp)
  FSW ft4, 0(s5)
  LW t3, 48(sp)
  ADDIW t4, t3, 1
  SW t4, 128(sp)
  # implict jump to bb120
bb120:
  LW t4, 128(sp)
  LW t3, 116(sp)
  BLT t4, t3, bb121
  JAL zero, bb101
bb121:
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  FLW ft3, 96(sp)
  FLW ft4, 96(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 92(sp)
  JAL zero, bb117
bb122:
  ADD t4, s9, zero
  SW t4, 0(sp)
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 68(sp)
  # implict jump to bb123
bb123:
  FLW ft4, 68(sp)
  FLW ft3, 68(sp)
  FSGNJ.S fs11, ft4, ft3
  LW t4, 0(sp)
  ADD s9, t4, zero
  SLLIW s5, s9, 2
  LUI t5, 98
  ADDIW t5, t5, -1032
  ADD t5, t5, sp
  ADD s5, t5, s5
  FLW fs3, 0(s5)
  LW t4, 48(sp)
  ADDW s5, t4, s9
  ADDIW s10, s5, 1
  MULW s5, s5, s10
  ADDI s10, zero, 2
  DIVW s5, s5, s10
  LW t4, 48(sp)
  ADDW s5, s5, t4
  ADDIW s5, s5, 1
  FCVT.S.W fs8, s5
  FDIV.S fs3, fs3, fs8
  FADD.S ft4, fs11, fs3
  FSW ft4, 84(sp)
  ADDIW t4, s9, 1
  SW t4, 124(sp)
  # implict jump to bb124
bb124:
  LW t4, 124(sp)
  LW t3, 116(sp)
  BLT t4, t3, bb126
  # implict jump to bb125
bb125:
  LW t4, 124(sp)
  ADD s11, t4, zero
  FLW ft4, 84(sp)
  FLW ft3, 84(sp)
  FSGNJ.S fs10, ft4, ft3
  JAL zero, bb119
bb126:
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  FLW ft3, 84(sp)
  FLW ft4, 84(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 68(sp)
  JAL zero, bb123
bb127:
  ADD t4, zero, zero
  SW t4, 40(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  FLW ft3, 156(sp)
  FLW ft4, 156(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 44(sp)
  # implict jump to bb128
bb128:
  FLW ft4, 44(sp)
  FLW ft3, 44(sp)
  FSGNJ.S fs8, ft4, ft3
  LW t4, 32(sp)
  ADD s9, t4, zero
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t4, 116(sp)
  BLT s9, t4, bb133
  # implict jump to bb129
bb129:
  ADD s11, s9, zero
  FSGNJ.S fs10, fs8, fs8
  # implict jump to bb130
bb130:
  FSGNJ.S ft4, fs10, fs10
  FSW ft4, 60(sp)
  ADD t4, s11, zero
  SW t4, 8(sp)
  LW t4, 24(sp)
  SLLIW s4, t4, 2
  LUI t5, 98
  ADDIW t5, t5, -1032
  ADD t5, t5, sp
  ADD s4, t5, s4
  FLW ft4, 60(sp)
  FSW ft4, 0(s4)
  LW t3, 24(sp)
  ADDIW t4, t3, 1
  SW t4, 16(sp)
  # implict jump to bb131
bb131:
  LW t4, 16(sp)
  LW t3, 116(sp)
  BLT t4, t3, bb132
  JAL zero, bb100
bb132:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  FLW ft3, 60(sp)
  FLW ft4, 60(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 44(sp)
  JAL zero, bb128
bb133:
  ADD t4, s9, zero
  SW t4, 28(sp)
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 36(sp)
  # implict jump to bb134
bb134:
  FLW ft4, 36(sp)
  FLW ft3, 36(sp)
  FSGNJ.S fs11, ft4, ft3
  LW t4, 28(sp)
  ADD s9, t4, zero
  SLLIW s5, s9, 2
  LUI t5, 195
  ADDIW t5, t5, 1656
  ADD t5, t5, sp
  ADD s5, t5, s5
  FLW fs8, 0(s5)
  LW t4, 24(sp)
  ADDW s5, s9, t4
  ADDIW s4, s5, 1
  MULW s4, s5, s4
  ADDI s5, zero, 2
  DIVW s4, s4, s5
  ADDW s4, s4, s9
  ADDIW s4, s4, 1
  FCVT.S.W fs2, s4
  FDIV.S fs2, fs8, fs2
  FADD.S ft4, fs11, fs2
  FSW ft4, 20(sp)
  ADDIW t4, s9, 1
  SW t4, 148(sp)
  # implict jump to bb135
bb135:
  LW t4, 148(sp)
  LW t3, 116(sp)
  BLT t4, t3, bb137
  # implict jump to bb136
bb136:
  LW t4, 148(sp)
  ADD s11, t4, zero
  FLW ft4, 20(sp)
  FLW ft3, 20(sp)
  FSGNJ.S fs10, ft4, ft3
  JAL zero, bb130
bb137:
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  FLW ft3, 20(sp)
  FLW ft4, 20(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 36(sp)
  JAL zero, bb134
bb138:
  ADD t4, zero, zero
  SW t4, 172(sp)
  ADD t4, zero, zero
  SW t4, 164(sp)
  FLW ft3, 156(sp)
  FLW ft4, 156(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 104(sp)
  # implict jump to bb139
bb139:
  FLW ft4, 104(sp)
  FLW ft3, 104(sp)
  FSGNJ.S fs8, ft4, ft3
  LW t4, 164(sp)
  ADD s9, t4, zero
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LW t4, 116(sp)
  BLT s9, t4, bb144
  # implict jump to bb140
bb140:
  ADD s11, s9, zero
  FSGNJ.S fs11, fs8, fs8
  # implict jump to bb141
bb141:
  FSGNJ.S ft4, fs11, fs11
  FSW ft4, 12(sp)
  ADD t4, s11, zero
  SW t4, 132(sp)
  LW t4, 168(sp)
  SLLIW s4, t4, 2
  LUI t5, 195
  ADDIW t5, t5, 1656
  ADD t5, t5, sp
  ADD s4, t5, s4
  FLW ft4, 12(sp)
  FSW ft4, 0(s4)
  LW t3, 168(sp)
  ADDIW t4, t3, 1
  SW t4, 120(sp)
  # implict jump to bb142
bb142:
  LW t4, 120(sp)
  LW t3, 116(sp)
  BLT t4, t3, bb143
  JAL zero, bb99
bb143:
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  FLW ft3, 12(sp)
  FLW ft4, 12(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 104(sp)
  JAL zero, bb139
bb144:
  ADD t4, s9, zero
  SW t4, 4(sp)
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 52(sp)
  # implict jump to bb145
bb145:
  FLW ft4, 52(sp)
  FLW ft3, 52(sp)
  FSGNJ.S fs8, ft4, ft3
  LW t4, 4(sp)
  ADD s9, t4, zero
  SLLIW s4, s9, 2
  ADDI t5, sp, 376
  ADD s4, t5, s4
  FLW fs10, 0(s4)
  LW t4, 168(sp)
  ADDW s4, t4, s9
  ADDIW s5, s4, 1
  MULW s4, s4, s5
  ADDI s5, zero, 2
  DIVW s4, s4, s5
  LW t4, 168(sp)
  ADDW s4, s4, t4
  ADDIW s4, s4, 1
  FCVT.S.W fs2, s4
  FDIV.S fs2, fs10, fs2
  FADD.S ft4, fs8, fs2
  FSW ft4, 160(sp)
  ADDIW t4, s9, 1
  SW t4, 144(sp)
  # implict jump to bb146
bb146:
  LW t4, 144(sp)
  LW t3, 116(sp)
  BLT t4, t3, bb148
  # implict jump to bb147
bb147:
  LW t4, 144(sp)
  ADD s11, t4, zero
  FLW ft4, 160(sp)
  FLW ft3, 160(sp)
  FSGNJ.S fs11, ft4, ft3
  JAL zero, bb141
bb148:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  FLW ft3, 160(sp)
  FLW ft4, 160(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 52(sp)
  JAL zero, bb145
bb149:
  ADD t4, zero, zero
  SW t4, 136(sp)
  # implict jump to bb150
bb150:
  LW t4, 136(sp)
  ADD s9, t4, zero
  SLLIW s11, s9, 2
  ADDI t5, sp, 376
  ADD s11, t5, s11
  ADDI s3, zero, 1
  FCVT.S.W fs11, s3
  FSW fs11, 0(s11)
  ADDIW t4, s9, 1
  SW t4, 140(sp)
  # implict jump to bb151
bb151:
  LW t4, 140(sp)
  LW t3, 116(sp)
  BLT t4, t3, bb152
  JAL zero, bb69
bb152:
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  JAL zero, bb150
bb153:
  ADDI a0, zero, 2000
  JAL zero, bb68
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
