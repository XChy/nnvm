.global main
.section .bss



.section .data
temp:
.word 0x3f800000
.CONSTANT.7.0:
.word 0x358637bd
.CONSTANT.7.1:
.word 0x3f800000
.section .text
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
  FSD fs0, 288(sp)
  FSD fs1, 296(sp)
  FSD fs5, 304(sp)
  LUI t5, 98
  ADDIW t5, t5, -1096
  ADD t5, t5, sp
  FSD fs2, 0(t5)
  LUI t5, 98
  ADDIW t5, t5, -1088
  ADD t5, t5, sp
  FSD fs3, 0(t5)
  LUI t5, 195
  ADDIW t5, t5, 1608
  ADD t5, t5, sp
  FSD fs4, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  FSD fs7, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 216
  ADD t5, t5, sp
  FSD fs8, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 224
  ADD t5, t5, sp
  FSD fs6, 0(t5)
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
  ADDI s0, zero, 0
  LUI s1, 24
  ADDIW s1, s1, 1696
  SLT s0, s0, s1
  XORI s0, s0, 1
  BNE s0, zero, bb74
  # implict jump to bb1
bb1:
  LUI s0, 24
  ADDIW s0, s0, 1696
  ADD s0, zero, s0
  # implict jump to bb2
bb2:
  ADD t4, s0, zero
  SW t4, 136(sp)
  ADDI a0, zero, 62
  CALL _sysy_starttime
  ADDI t4, zero, 0
  SW t4, 132(sp)
  LW t4, 132(sp)
  LW t3, 136(sp)
  BLT t4, t3, bb71
  # implict jump to bb3
bb3:
  FCVT.S.W ft4, zero
  FSW ft4, 48(sp)
  ADD s4, zero, zero
  # implict jump to bb4
bb4:
  ADD t4, s4, zero
  SW t4, 148(sp)
  LW t4, 132(sp)
  LW t3, 136(sp)
  BLT t4, t3, bb62
  # implict jump to bb5
bb5:
  LW t4, 132(sp)
  LW t3, 136(sp)
  BLT t4, t3, bb53
  # implict jump to bb6
bb6:
  LW t4, 132(sp)
  LW t3, 136(sp)
  BLT t4, t3, bb44
  # implict jump to bb7
bb7:
  LW t4, 132(sp)
  LW t3, 136(sp)
  BLT t4, t3, bb35
  # implict jump to bb8
bb8:
  LW t4, 148(sp)
  ADDIW s10, t4, 1
  SLTI s9, s10, 1000
  BNE s9, zero, bb34
  # implict jump to bb9
bb9:
  ADDI a0, zero, 76
  CALL _sysy_stoptime
  FCVT.S.W fs7, zero
  LW t4, 132(sp)
  LW t3, 136(sp)
  BLT t4, t3, bb30
  # implict jump to bb10
bb10:
  FSGNJ.S fs8, fs7, fs7
  # implict jump to bb11
bb11:
  LW t4, 132(sp)
  LW t3, 136(sp)
  BLT t4, t3, bb26
  # implict jump to bb12
bb12:
  FSGNJ.S fs10, fs7, fs7
  # implict jump to bb13
bb13:
  FDIV.S fs0, fs8, fs10
  # implict jump to bb14
bb14:
  LA s11, temp
  FLW fs6, 0(s11)
  FDIV.S fs10, fs0, fs6
  FSUB.S fs10, fs6, fs10
  LA s11, .CONSTANT.7.0
  FLW fs1, 0(s11)
  FLT.S s11, fs1, fs10
  BNE s11, zero, bb25
  # implict jump to bb15
bb15:
  LA s11, .CONSTANT.7.0
  FLW fs1, 0(s11)
  LA s11, .CONSTANT.7.0
  FLW fs4, 0(s11)
  FSGNJN.S fs1, fs1, fs4
  FLT.S s11, fs10, fs1
  # implict jump to bb16
bb16:
  BNE s11, zero, bb24
  # implict jump to bb17
bb17:
  LA s11, .CONSTANT.7.1
  FLW fs1, 0(s11)
  FSUB.S fs1, fs6, fs1
  LA s11, .CONSTANT.7.0
  FLW fs4, 0(s11)
  FLE.S s11, fs1, fs4
  BNE s11, zero, bb23
  # implict jump to bb18
bb18:
  ADD s11, zero, zero
  # implict jump to bb19
bb19:
  BNE s11, zero, bb22
  # implict jump to bb20
bb20:
  ADD a0, zero, zero
  CALL putint
  # implict jump to bb21
bb21:
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
  FLD fs0, 288(sp)
  FLD fs1, 296(sp)
  FLD fs5, 304(sp)
  LUI t5, 98
  ADDIW t5, t5, -1096
  ADD t5, t5, sp
  FLD fs2, 0(t5)
  LUI t5, 98
  ADDIW t5, t5, -1088
  ADD t5, t5, sp
  FLD fs3, 0(t5)
  LUI t5, 195
  ADDIW t5, t5, 1608
  ADD t5, t5, sp
  FLD fs4, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  FLD fs7, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 216
  ADD t5, t5, sp
  FLD fs8, 0(t5)
  LUI t5, 293
  ADDIW t5, t5, 224
  ADD t5, t5, sp
  FLD fs6, 0(t5)
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
bb22:
  ADDI a0, zero, 1
  CALL putint
  JAL zero, bb21
bb23:
  LA s0, .CONSTANT.7.0
  FLW fs4, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs6, 0(s0)
  FSGNJN.S fs4, fs4, fs6
  FLE.S s0, fs4, fs1
  ADD s11, s0, zero
  JAL zero, bb19
bb24:
  LA s0, temp
  FLW fs1, 0(s0)
  FDIV.S fs4, fs0, fs1
  FADD.S fs1, fs1, fs4
  ADDI s0, zero, 2
  FCVT.S.W fs4, s0
  FDIV.S fs1, fs1, fs4
  LA s0, temp
  FSW fs1, 0(s0)
  JAL zero, bb14
bb25:
  ADDI s11, zero, 1
  JAL zero, bb16
bb26:
  ADD s7, zero, zero
  FSGNJ.S fs11, fs7, fs7
  # implict jump to bb27
bb27:
  FSGNJ.S fs2, fs11, fs11
  ADD s8, s7, zero
  SLLIW s11, s8, 2
  LUI t5, 98
  ADDIW t5, t5, -1080
  ADD t5, t5, sp
  ADD s11, t5, s11
  FLW fs6, 0(s11)
  FMUL.S fs6, fs6, fs6
  FADD.S fs2, fs2, fs6
  ADDIW s8, s8, 1
  LW t4, 136(sp)
  BLT s8, t4, bb29
  # implict jump to bb28
bb28:
  FSGNJ.S fs10, fs2, fs2
  JAL zero, bb13
bb29:
  ADD s7, s8, zero
  FSGNJ.S fs11, fs2, fs2
  JAL zero, bb27
bb30:
  ADD s9, zero, zero
  FSGNJ.S fs9, fs7, fs7
  # implict jump to bb31
bb31:
  FSGNJ.S fs11, fs9, fs9
  ADD s8, s9, zero
  SLLIW s2, s8, 2
  LUI t5, 195
  ADDIW t5, t5, 1616
  ADD t5, t5, sp
  ADD s7, t5, s2
  FLW fs3, 0(s7)
  LUI t5, 98
  ADDIW t5, t5, -1080
  ADD t5, t5, sp
  ADD s2, t5, s2
  FLW fs10, 0(s2)
  FMUL.S fs3, fs3, fs10
  FADD.S fs3, fs11, fs3
  ADDIW s2, s8, 1
  LW t4, 136(sp)
  BLT s2, t4, bb33
  # implict jump to bb32
bb32:
  FSGNJ.S fs8, fs3, fs3
  JAL zero, bb11
bb33:
  ADD s9, s2, zero
  FSGNJ.S fs9, fs3, fs3
  JAL zero, bb31
bb34:
  ADD s4, s10, zero
  JAL zero, bb4
bb35:
  ADD s3, zero, zero
  ADD s5, zero, zero
  FLW ft3, 48(sp)
  FLW ft4, 48(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 104(sp)
  # implict jump to bb36
bb36:
  FLW ft4, 104(sp)
  FLW ft3, 104(sp)
  FSGNJ.S fs6, ft4, ft3
  ADD s11, s5, zero
  ADD t4, s3, zero
  SW t4, 92(sp)
  LW t4, 136(sp)
  BLT s11, t4, bb40
  # implict jump to bb37
bb37:
  ADD s1, s11, zero
  FSGNJ.S fs5, fs6, fs6
  # implict jump to bb38
bb38:
  LW t4, 92(sp)
  SLLIW s6, t4, 2
  LUI t4, 195
  ADDIW t4, t4, 1616
  ADD t4, t4, sp
  ADD s6, t4, s6
  FSW fs5, 0(s6)
  LW t4, 92(sp)
  ADDIW s6, t4, 1
  LW t4, 136(sp)
  BLT s6, t4, bb39
  JAL zero, bb8
bb39:
  ADD s3, s6, zero
  ADD s5, s1, zero
  FSGNJ.S ft4, fs5, fs5
  FSW ft4, 104(sp)
  JAL zero, bb36
bb40:
  ADD t4, s11, zero
  SW t4, 116(sp)
  FSGNJ.S ft4, fs6, fs6
  FSW ft4, 112(sp)
  # implict jump to bb41
bb41:
  FLW ft4, 112(sp)
  FLW ft3, 112(sp)
  FSGNJ.S fs8, ft4, ft3
  LW t4, 116(sp)
  ADD s6, t4, zero
  SLLIW s0, s6, 2
  ADDI t5, sp, 312
  ADD s0, t5, s0
  FLW fs1, 0(s0)
  LW t4, 92(sp)
  ADDW s0, s6, t4
  ADDIW s10, s0, 1
  MULW s0, s0, s10
  SRAIW s10, s0, 31
  SRLIW s10, s10, 31
  ADD s0, s0, s10
  SRAIW s0, s0, 1
  ADDW s0, s0, s6
  ADDIW s0, s0, 1
  FCVT.S.W fs7, s0
  FDIV.S fs1, fs1, fs7
  FADD.S ft4, fs8, fs1
  FSW ft4, 108(sp)
  ADDIW t4, s6, 1
  SW t4, 100(sp)
  LW t4, 100(sp)
  LW t3, 136(sp)
  BLT t4, t3, bb43
  # implict jump to bb42
bb42:
  LW t4, 100(sp)
  ADD s1, t4, zero
  FLW ft4, 108(sp)
  FLW ft3, 108(sp)
  FSGNJ.S fs5, ft4, ft3
  JAL zero, bb38
bb43:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  FLW ft3, 108(sp)
  FLW ft4, 108(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 112(sp)
  JAL zero, bb41
bb44:
  ADD t4, zero, zero
  SW t4, 84(sp)
  ADD t4, zero, zero
  SW t4, 64(sp)
  FLW ft3, 48(sp)
  FLW ft4, 48(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 124(sp)
  # implict jump to bb45
bb45:
  FLW ft4, 124(sp)
  FLW ft3, 124(sp)
  FSGNJ.S fs11, ft4, ft3
  LW t4, 64(sp)
  ADD s6, t4, zero
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t4, 136(sp)
  BLT s6, t4, bb49
  # implict jump to bb46
bb46:
  ADD s9, s6, zero
  FSGNJ.S fs2, fs11, fs11
  # implict jump to bb47
bb47:
  FSGNJ.S ft4, fs2, fs2
  FSW ft4, 120(sp)
  ADD t4, s9, zero
  SW t4, 72(sp)
  LW t4, 40(sp)
  SLLIW s2, t4, 2
  ADDI t5, sp, 312
  ADD s2, t5, s2
  FLW ft4, 120(sp)
  FSW ft4, 0(s2)
  LW t3, 40(sp)
  ADDIW t4, t3, 1
  SW t4, 88(sp)
  LW t4, 88(sp)
  LW t3, 136(sp)
  BLT t4, t3, bb48
  JAL zero, bb7
bb48:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  FLW ft3, 120(sp)
  FLW ft4, 120(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 124(sp)
  JAL zero, bb45
bb49:
  ADD t4, s6, zero
  SW t4, 52(sp)
  FSGNJ.S ft4, fs11, fs11
  FSW ft4, 80(sp)
  # implict jump to bb50
bb50:
  FLW ft4, 80(sp)
  FLW ft3, 80(sp)
  FSGNJ.S fs4, ft4, ft3
  LW t4, 52(sp)
  ADD s3, t4, zero
  SLLIW s0, s3, 2
  LUI t5, 98
  ADDIW t5, t5, -1080
  ADD t5, t5, sp
  ADD s0, t5, s0
  FLW fs6, 0(s0)
  LW t4, 40(sp)
  ADDW s0, t4, s3
  ADDIW s2, s0, 1
  MULW s0, s0, s2
  SRAIW s2, s0, 31
  SRLIW s2, s2, 31
  ADD s0, s0, s2
  SRAIW s0, s0, 1
  LW t4, 40(sp)
  ADDW s0, s0, t4
  ADDIW s0, s0, 1
  FCVT.S.W fs3, s0
  FDIV.S fs3, fs6, fs3
  FADD.S ft4, fs4, fs3
  FSW ft4, 128(sp)
  ADDIW t4, s3, 1
  SW t4, 56(sp)
  LW t4, 56(sp)
  LW t3, 136(sp)
  BLT t4, t3, bb52
  # implict jump to bb51
bb51:
  LW t4, 56(sp)
  ADD s9, t4, zero
  FLW ft4, 128(sp)
  FLW ft3, 128(sp)
  FSGNJ.S fs2, ft4, ft3
  JAL zero, bb47
bb52:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  FLW ft3, 128(sp)
  FLW ft4, 128(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 80(sp)
  JAL zero, bb50
bb53:
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  FLW ft3, 48(sp)
  FLW ft4, 48(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 68(sp)
  # implict jump to bb54
bb54:
  FLW ft4, 68(sp)
  FLW ft3, 68(sp)
  FSGNJ.S fs8, ft4, ft3
  LW t4, 20(sp)
  ADD s3, t4, zero
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  LW t4, 136(sp)
  BLT s3, t4, bb58
  # implict jump to bb55
bb55:
  ADD s5, s3, zero
  FSGNJ.S fs9, fs8, fs8
  # implict jump to bb56
bb56:
  FSGNJ.S ft4, fs9, fs9
  FSW ft4, 76(sp)
  ADD t4, s5, zero
  SW t4, 28(sp)
  LW t4, 180(sp)
  SLLIW s7, t4, 2
  LUI t5, 98
  ADDIW t5, t5, -1080
  ADD t5, t5, sp
  ADD s7, t5, s7
  FLW ft4, 76(sp)
  FSW ft4, 0(s7)
  LW t3, 180(sp)
  ADDIW t4, t3, 1
  SW t4, 36(sp)
  LW t4, 36(sp)
  LW t3, 136(sp)
  BLT t4, t3, bb57
  JAL zero, bb6
bb57:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  FLW ft3, 76(sp)
  FLW ft4, 76(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 68(sp)
  JAL zero, bb54
bb58:
  ADD t4, s3, zero
  SW t4, 8(sp)
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 0(sp)
  # implict jump to bb59
bb59:
  FLW ft4, 0(sp)
  FLW ft3, 0(sp)
  FSGNJ.S fs10, ft4, ft3
  LW t4, 8(sp)
  ADD s8, t4, zero
  SLLIW s0, s8, 2
  ADDI t5, sp, 312
  ADD s0, t5, s0
  FLW fs11, 0(s0)
  LW t4, 180(sp)
  ADDW s0, s8, t4
  ADDIW s7, s0, 1
  MULW s0, s0, s7
  SRAIW s7, s0, 31
  SRLIW s7, s7, 31
  ADD s0, s0, s7
  SRAIW s0, s0, 1
  ADDW s0, s0, s8
  ADDIW s0, s0, 1
  FCVT.S.W fs1, s0
  FDIV.S fs1, fs11, fs1
  FADD.S ft4, fs10, fs1
  FSW ft4, 60(sp)
  ADDIW t4, s8, 1
  SW t4, 12(sp)
  LW t4, 12(sp)
  LW t3, 136(sp)
  BLT t4, t3, bb61
  # implict jump to bb60
bb60:
  LW t4, 12(sp)
  ADD s5, t4, zero
  FLW ft4, 60(sp)
  FLW ft3, 60(sp)
  FSGNJ.S fs9, ft4, ft3
  JAL zero, bb56
bb61:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  FLW ft3, 60(sp)
  FLW ft4, 60(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 0(sp)
  JAL zero, bb59
bb62:
  ADD t4, zero, zero
  SW t4, 172(sp)
  ADD t4, zero, zero
  SW t4, 160(sp)
  FLW ft3, 48(sp)
  FLW ft4, 48(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 24(sp)
  # implict jump to bb63
bb63:
  FLW ft4, 24(sp)
  FLW ft3, 24(sp)
  FSGNJ.S fs4, ft4, ft3
  LW t4, 160(sp)
  ADD s8, t4, zero
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t4, 136(sp)
  BLT s8, t4, bb67
  # implict jump to bb64
bb64:
  ADD s10, s8, zero
  FSGNJ.S fs5, fs4, fs4
  # implict jump to bb65
bb65:
  FSGNJ.S ft4, fs5, fs5
  FSW ft4, 44(sp)
  ADD t4, s10, zero
  SW t4, 168(sp)
  LW t4, 144(sp)
  SLLIW s1, t4, 2
  ADDI t5, sp, 312
  ADD s1, t5, s1
  FLW ft4, 44(sp)
  FSW ft4, 0(s1)
  LW t3, 144(sp)
  ADDIW t4, t3, 1
  SW t4, 176(sp)
  LW t4, 176(sp)
  LW t3, 136(sp)
  BLT t4, t3, bb66
  JAL zero, bb5
bb66:
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  FLW ft3, 44(sp)
  FLW ft4, 44(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 24(sp)
  JAL zero, bb63
bb67:
  ADD t4, s8, zero
  SW t4, 152(sp)
  FSGNJ.S ft4, fs4, fs4
  FSW ft4, 4(sp)
  # implict jump to bb68
bb68:
  FLW ft4, 4(sp)
  FLW ft3, 4(sp)
  FSGNJ.S fs6, ft4, ft3
  LW t4, 152(sp)
  ADD s11, t4, zero
  SLLIW s1, s11, 2
  LUI t5, 195
  ADDIW t5, t5, 1616
  ADD t5, t5, sp
  ADD s1, t5, s1
  FLW fs7, 0(s1)
  LW t4, 144(sp)
  ADDW s1, t4, s11
  ADDIW s0, s1, 1
  MULW s0, s1, s0
  SRAIW s1, s0, 31
  SRLIW s1, s1, 31
  ADD s0, s0, s1
  SRAIW s0, s0, 1
  LW t4, 144(sp)
  ADDW s0, s0, t4
  ADDIW s0, s0, 1
  FCVT.S.W fs8, s0
  FDIV.S fs7, fs7, fs8
  FADD.S ft4, fs6, fs7
  FSW ft4, 16(sp)
  ADDIW t4, s11, 1
  SW t4, 156(sp)
  LW t4, 156(sp)
  LW t3, 136(sp)
  BLT t4, t3, bb70
  # implict jump to bb69
bb69:
  LW t4, 156(sp)
  ADD s10, t4, zero
  FLW ft4, 16(sp)
  FLW ft3, 16(sp)
  FSGNJ.S fs5, ft4, ft3
  JAL zero, bb65
bb70:
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  FLW ft3, 16(sp)
  FLW ft4, 16(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 4(sp)
  JAL zero, bb68
bb71:
  ADDI s2, zero, 1
  FCVT.S.W ft4, s2
  FSW ft4, 164(sp)
  ADD t4, zero, zero
  SW t4, 140(sp)
  # implict jump to bb72
bb72:
  LW t4, 140(sp)
  ADD s3, t4, zero
  SLLIW s4, s3, 2
  LUI t5, 195
  ADDIW t5, t5, 1616
  ADD t5, t5, sp
  ADD s4, t5, s4
  FLW ft4, 164(sp)
  FSW ft4, 0(s4)
  ADDIW t4, s3, 1
  SW t4, 96(sp)
  LW t4, 96(sp)
  LW t3, 136(sp)
  BLT t4, t3, bb73
  JAL zero, bb3
bb73:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  JAL zero, bb72
bb74:
  ADDI s0, zero, 2000
  JAL zero, bb2
