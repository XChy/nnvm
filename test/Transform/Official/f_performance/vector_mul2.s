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
  ADDIW t0, t0, 32
  ADD sp, sp, t0
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s4, 16(sp)
  SD s5, 24(sp)
  FSD fs0, 32(sp)
  FSD fs1, 40(sp)
  FSD fs2, 48(sp)
  FSD fs3, 56(sp)
  FSD fs4, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  ADDI s0, zero, 0
  LUI a0, 24
  ADDIW a0, a0, 1696
  SLT a0, s0, a0
  XORI a0, a0, 1
  BNE a0, zero, bb74
  # implict jump to bb1
bb1:
  LUI a0, 24
  ADDIW a0, a0, 1696
  ADD a0, zero, a0
  # implict jump to bb2
bb2:
  ADD s1, a0, zero
  ADDI a0, zero, 62
  CALL _sysy_starttime
  ADDI s0, zero, 0
  BLT s0, s1, bb71
  # implict jump to bb3
bb3:
  FCVT.S.W fs1, zero
  ADD a0, zero, zero
  # implict jump to bb4
bb4:
  ADD s2, a0, zero
  BLT s0, s1, bb62
  # implict jump to bb5
bb5:
  BLT s0, s1, bb53
  # implict jump to bb6
bb6:
  BLT s0, s1, bb44
  # implict jump to bb7
bb7:
  BLT s0, s1, bb35
  # implict jump to bb8
bb8:
  ADDIW s2, s2, 1
  SLTI a0, s2, 1000
  BNE a0, zero, bb34
  # implict jump to bb9
bb9:
  ADDI a0, zero, 76
  CALL _sysy_stoptime
  BLT s0, s1, bb30
  # implict jump to bb10
bb10:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb11
bb11:
  FSGNJ.S fs2, fs0, fs0
  BLT s0, s1, bb26
  # implict jump to bb12
bb12:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb13
bb13:
  FDIV.S fs4, fs2, fs0
  # implict jump to bb14
bb14:
  LA a0, temp
  FLW fs2, 0(a0)
  FDIV.S fs0, fs4, fs2
  FSUB.S fs3, fs2, fs0
  LA a0, .CONSTANT.7.0
  FLW fs0, 0(a0)
  FLT.S a0, fs0, fs3
  BNE a0, zero, bb25
  # implict jump to bb15
bb15:
  LA a0, .CONSTANT.7.0
  FLW fs1, 0(a0)
  LA a0, .CONSTANT.7.0
  FLW fs0, 0(a0)
  FSGNJN.S fs0, fs1, fs0
  FLT.S a0, fs3, fs0
  # implict jump to bb16
bb16:
  BNE a0, zero, bb24
  # implict jump to bb17
bb17:
  LA a0, .CONSTANT.7.1
  FLW fs0, 0(a0)
  FSUB.S fs2, fs2, fs0
  LA a0, .CONSTANT.7.0
  FLW fs0, 0(a0)
  FLE.S a0, fs2, fs0
  BNE a0, zero, bb23
  # implict jump to bb18
bb18:
  ADD a0, zero, zero
  # implict jump to bb19
bb19:
  BNE a0, zero, bb22
  # implict jump to bb20
bb20:
  ADD a0, zero, zero
  CALL putint
  # implict jump to bb21
bb21:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s4, 16(sp)
  LD s5, 24(sp)
  FLD fs0, 32(sp)
  FLD fs1, 40(sp)
  FLD fs2, 48(sp)
  FLD fs3, 56(sp)
  FLD fs4, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LUI t0, 293
  ADDIW t0, t0, -32
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb22:
  ADDI a0, zero, 1
  CALL putint
  JAL zero, bb21
bb23:
  LA a0, .CONSTANT.7.0
  FLW fs1, 0(a0)
  LA a0, .CONSTANT.7.0
  FLW fs0, 0(a0)
  FSGNJN.S fs0, fs1, fs0
  FLE.S a0, fs0, fs2
  JAL zero, bb19
bb24:
  LA a0, temp
  FLW fs1, 0(a0)
  FDIV.S fs0, fs4, fs1
  FADD.S fs0, fs1, fs0
  ADDI a0, zero, 2
  FCVT.S.W fs1, a0
  FDIV.S fs0, fs0, fs1
  LA a0, temp
  FSW fs0, 0(a0)
  JAL zero, bb14
bb25:
  ADDI a0, zero, 1
  JAL zero, bb16
bb26:
  ADD a0, zero, zero
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb27
bb27:
  FSGNJ.S fs1, fs0, fs0
  SLLIW s0, a0, 2
  LUI t5, 98
  ADDIW t5, t5, -1312
  ADD t5, t5, sp
  ADD s0, t5, s0
  FLW fs0, 0(s0)
  FMUL.S fs0, fs0, fs0
  FADD.S fs0, fs1, fs0
  ADDIW a0, a0, 1
  BLT a0, s1, bb29
  # implict jump to bb28
bb28:
  JAL zero, bb13
bb29:
  JAL zero, bb27
bb30:
  ADD a0, zero, zero
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb31
bb31:
  FSGNJ.S fs3, fs0, fs0
  ADD s3, a0, zero
  SLLIW s2, s3, 2
  ADDI a0, sp, 96
  ADD a0, a0, s2
  FLW fs2, 0(a0)
  LUI a0, 98
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  ADD a0, a0, s2
  FLW fs0, 0(a0)
  FMUL.S fs0, fs2, fs0
  FADD.S fs0, fs3, fs0
  ADDIW a0, s3, 1
  BLT a0, s1, bb33
  # implict jump to bb32
bb32:
  JAL zero, bb11
bb33:
  JAL zero, bb31
bb34:
  ADD a0, s2, zero
  JAL zero, bb4
bb35:
  ADD a0, zero, zero
  ADD s3, zero, zero
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb36
bb36:
  ADD s4, s3, zero
  ADD s3, a0, zero
  BLT s4, s1, bb40
  # implict jump to bb37
bb37:
  ADD a0, s4, zero
  # implict jump to bb38
bb38:
  ADD s4, a0, zero
  SLLIW a0, s3, 2
  ADDI t5, sp, 96
  ADD a0, t5, a0
  FSW fs0, 0(a0)
  ADDIW a0, s3, 1
  BLT a0, s1, bb39
  JAL zero, bb8
bb39:
  ADD s3, s4, zero
  JAL zero, bb36
bb40:
  ADD a0, s4, zero
  # implict jump to bb41
bb41:
  FSGNJ.S fs3, fs0, fs0
  ADD s4, a0, zero
  SLLIW a0, s4, 2
  LUI t5, 195
  ADDIW t5, t5, 1376
  ADD t5, t5, sp
  ADD a0, t5, a0
  FLW fs2, 0(a0)
  ADDW a0, s4, s3
  ADDIW s5, a0, 1
  MULW s5, a0, s5
  SRAIW a0, s5, 31
  SRLIW a0, a0, 31
  ADD a0, s5, a0
  SRAIW a0, a0, 1
  ADDW a0, a0, s4
  ADDIW a0, a0, 1
  FCVT.S.W fs0, a0
  FDIV.S fs0, fs2, fs0
  FADD.S fs0, fs3, fs0
  ADDIW a0, s4, 1
  BLT a0, s1, bb43
  # implict jump to bb42
bb42:
  JAL zero, bb38
bb43:
  JAL zero, bb41
bb44:
  ADD a0, zero, zero
  ADD s3, zero, zero
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb45
bb45:
  ADD s4, s3, zero
  ADD s3, a0, zero
  BLT s4, s1, bb49
  # implict jump to bb46
bb46:
  ADD a0, s4, zero
  # implict jump to bb47
bb47:
  ADD s4, a0, zero
  SLLIW a0, s3, 2
  LUI t5, 195
  ADDIW t5, t5, 1376
  ADD t5, t5, sp
  ADD a0, t5, a0
  FSW fs0, 0(a0)
  ADDIW a0, s3, 1
  BLT a0, s1, bb48
  JAL zero, bb7
bb48:
  ADD s3, s4, zero
  JAL zero, bb45
bb49:
  ADD a0, s4, zero
  # implict jump to bb50
bb50:
  ADD s4, a0, zero
  SLLIW a0, s4, 2
  LUI t5, 98
  ADDIW t5, t5, -1312
  ADD t5, t5, sp
  ADD a0, t5, a0
  FLW fs3, 0(a0)
  ADDW s5, s3, s4
  ADDIW a0, s5, 1
  MULW s5, s5, a0
  SRAIW a0, s5, 31
  SRLIW a0, a0, 31
  ADD a0, s5, a0
  SRAIW a0, a0, 1
  ADDW a0, a0, s3
  ADDIW a0, a0, 1
  FCVT.S.W fs2, a0
  FDIV.S fs2, fs3, fs2
  FADD.S fs0, fs0, fs2
  ADDIW a0, s4, 1
  BLT a0, s1, bb52
  # implict jump to bb51
bb51:
  JAL zero, bb47
bb52:
  JAL zero, bb50
bb53:
  ADD a0, zero, zero
  ADD s3, zero, zero
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb54
bb54:
  ADD s4, a0, zero
  BLT s3, s1, bb58
  # implict jump to bb55
bb55:
  ADD a0, s3, zero
  # implict jump to bb56
bb56:
  ADD s3, a0, zero
  SLLIW a0, s4, 2
  LUI t5, 98
  ADDIW t5, t5, -1312
  ADD t5, t5, sp
  ADD a0, t5, a0
  FSW fs0, 0(a0)
  ADDIW a0, s4, 1
  BLT a0, s1, bb57
  JAL zero, bb6
bb57:
  JAL zero, bb54
bb58:
  ADD a0, s3, zero
  # implict jump to bb59
bb59:
  FSGNJ.S fs3, fs0, fs0
  ADD s3, a0, zero
  SLLIW a0, s3, 2
  LUI t5, 195
  ADDIW t5, t5, 1376
  ADD t5, t5, sp
  ADD a0, t5, a0
  FLW fs2, 0(a0)
  ADDW s5, s3, s4
  ADDIW a0, s5, 1
  MULW s5, s5, a0
  SRAIW a0, s5, 31
  SRLIW a0, a0, 31
  ADD a0, s5, a0
  SRAIW a0, a0, 1
  ADDW a0, a0, s3
  ADDIW a0, a0, 1
  FCVT.S.W fs0, a0
  FDIV.S fs0, fs2, fs0
  FADD.S fs0, fs3, fs0
  ADDIW a0, s3, 1
  BLT a0, s1, bb61
  # implict jump to bb60
bb60:
  JAL zero, bb56
bb61:
  JAL zero, bb59
bb62:
  ADD s3, zero, zero
  ADD a0, zero, zero
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb63
bb63:
  ADD s5, s3, zero
  BLT a0, s1, bb67
  # implict jump to bb64
bb64:
  # implict jump to bb65
bb65:
  ADD s4, a0, zero
  SLLIW a0, s5, 2
  LUI t5, 195
  ADDIW t5, t5, 1376
  ADD t5, t5, sp
  ADD a0, t5, a0
  FSW fs0, 0(a0)
  ADDIW a0, s5, 1
  BLT a0, s1, bb66
  JAL zero, bb5
bb66:
  ADD s3, a0, zero
  ADD a0, s4, zero
  JAL zero, bb63
bb67:
  # implict jump to bb68
bb68:
  FSGNJ.S fs3, fs0, fs0
  ADD s3, a0, zero
  SLLIW a0, s3, 2
  ADDI t5, sp, 96
  ADD a0, t5, a0
  FLW fs0, 0(a0)
  ADDW a0, s5, s3
  ADDIW s4, a0, 1
  MULW s4, a0, s4
  SRAIW a0, s4, 31
  SRLIW a0, a0, 31
  ADD a0, s4, a0
  SRAIW a0, a0, 1
  ADDW a0, a0, s5
  ADDIW a0, a0, 1
  FCVT.S.W fs2, a0
  FDIV.S fs0, fs0, fs2
  FADD.S fs0, fs3, fs0
  ADDIW a0, s3, 1
  BLT a0, s1, bb70
  # implict jump to bb69
bb69:
  JAL zero, bb65
bb70:
  JAL zero, bb68
bb71:
  ADDI a0, zero, 1
  FCVT.S.W fs0, a0
  ADD a0, zero, zero
  # implict jump to bb72
bb72:
  SLLIW s2, a0, 2
  ADDI t5, sp, 96
  ADD s2, t5, s2
  FSW fs0, 0(s2)
  ADDIW a0, a0, 1
  BLT a0, s1, bb73
  JAL zero, bb3
bb73:
  JAL zero, bb72
bb74:
  ADDI a0, zero, 2000
  JAL zero, bb2
