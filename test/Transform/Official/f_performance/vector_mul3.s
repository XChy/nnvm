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
main:   # loop depth 0
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
  ADDI a0, zero, 0
  LUI s0, 24
  ADDIW s0, s0, 1696
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb74
  # implict jump to bb1
bb1:   # loop depth 0
  LUI a0, 24
  ADDIW a0, a0, 1696
  ADD s1, zero, a0
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI a0, zero, 62
  CALL _sysy_starttime
  ADDI s2, zero, 0
  BLT s2, s1, bb71
  # implict jump to bb3
bb3:   # loop depth 0
  FCVT.S.W fs1, zero
  ADD s3, zero, zero
  # implict jump to bb4
bb4:   # loop depth 1
  BLT s2, s1, bb62
  # implict jump to bb5
bb5:   # loop depth 1
  BLT s2, s1, bb53
  # implict jump to bb6
bb6:   # loop depth 1
  BLT s2, s1, bb44
  # implict jump to bb7
bb7:   # loop depth 1
  BLT s2, s1, bb35
  # implict jump to bb8
bb8:   # loop depth 1
  ADDIW s3, s3, 1
  SLTI a0, s3, 1000
  BNE a0, zero, bb34
  # implict jump to bb9
bb9:   # loop depth 0
  ADDI a0, zero, 76
  CALL _sysy_stoptime
  BLT s2, s1, bb30
  # implict jump to bb10
bb10:   # loop depth 0
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb11
bb11:   # loop depth 0
  BLT s2, s1, bb26
  # implict jump to bb12
bb12:   # loop depth 0
  # implict jump to bb13
bb13:   # loop depth 0
  FDIV.S fs2, fs0, fs1
  LA a0, .CONSTANT.7.0
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.0
  FLW fs1, 0(a0)
  FSGNJN.S fs3, fs0, fs1
  # implict jump to bb14
bb14:   # loop depth 1
  LA a0, temp
  FLW fs0, 0(a0)
  FDIV.S fs1, fs2, fs0
  FSUB.S fs1, fs0, fs1
  LA a0, .CONSTANT.7.0
  FLW fs4, 0(a0)
  FLT.S a0, fs4, fs1
  BNE a0, zero, bb25
  # implict jump to bb15
bb15:   # loop depth 1
  FLT.S a0, fs1, fs3
  # implict jump to bb16
bb16:   # loop depth 1
  BNE a0, zero, bb24
  # implict jump to bb17
bb17:   # loop depth 0
  LA a0, .CONSTANT.7.1
  FLW fs1, 0(a0)
  FSUB.S fs0, fs0, fs1
  LA a0, .CONSTANT.7.0
  FLW fs1, 0(a0)
  FLE.S a0, fs0, fs1
  BNE a0, zero, bb23
  # implict jump to bb18
bb18:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb19
bb19:   # loop depth 0
  BNE a0, zero, bb22
  # implict jump to bb20
bb20:   # loop depth 0
  ADD a0, zero, zero
  CALL putint
  # implict jump to bb21
bb21:   # loop depth 0
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
bb22:   # loop depth 0
  ADDI a0, zero, 1
  CALL putint
  JAL zero, bb21
bb23:   # loop depth 0
  FLE.S a0, fs3, fs0
  JAL zero, bb19
bb24:   # loop depth 1
  LA a0, temp
  FLW fs0, 0(a0)
  FDIV.S fs1, fs2, fs0
  FADD.S fs0, fs0, fs1
  ADDI a0, zero, 2
  FCVT.S.W fs1, a0
  FDIV.S fs0, fs0, fs1
  LA a0, temp
  FSW fs0, 0(a0)
  JAL zero, bb14
bb25:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb16
bb26:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb27
bb27:   # loop depth 1
  SLLIW s0, a0, 2
  LUI t6, 98
  ADDIW t6, t6, -1312
  ADD t6, t6, sp
  ADD s0, t6, s0
  FLW fs2, 0(s0)
  FMUL.S fs2, fs2, fs2
  FADD.S fs1, fs1, fs2
  ADDIW a0, a0, 1
  BLT a0, s1, bb29
  # implict jump to bb28
bb28:   # loop depth 1433797376
  JAL zero, bb13
bb29:   # loop depth 1433796240
  JAL zero, bb27
bb30:   # loop depth 0
  ADD a0, zero, zero
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb31
bb31:   # loop depth 1
  SLLIW s0, a0, 2
  ADDI t6, sp, 96
  ADD s3, t6, s0
  FLW fs2, 0(s3)
  LUI t6, 98
  ADDIW t6, t6, -1312
  ADD t6, t6, sp
  ADD s0, t6, s0
  FLW fs3, 0(s0)
  FMUL.S fs2, fs2, fs3
  FADD.S fs0, fs0, fs2
  ADDIW a0, a0, 1
  BLT a0, s1, bb33
  # implict jump to bb32
bb32:   # loop depth 1433793712
  JAL zero, bb11
bb33:   # loop depth 1433792576
  JAL zero, bb31
bb34:   # loop depth 0
  JAL zero, bb4
bb35:   # loop depth 1
  ADD s0, zero, zero
  ADD a0, zero, zero
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb36
bb36:   # loop depth 2
  BLT a0, s1, bb40
  # implict jump to bb37
bb37:   # loop depth 0
  # implict jump to bb38
bb38:   # loop depth 2
  SLLIW s4, s0, 2
  ADDI t6, sp, 96
  ADD s4, t6, s4
  FSW fs0, 0(s4)
  ADDIW s0, s0, 1
  BLT s0, s1, bb39
  JAL zero, bb8
bb39:   # loop depth 1433806752
  JAL zero, bb36
bb40:   # loop depth 2
  # implict jump to bb41
bb41:   # loop depth 3
  SLLIW s4, a0, 2
  LUI t6, 195
  ADDIW t6, t6, 1376
  ADD t6, t6, sp
  ADD s4, t6, s4
  FLW fs2, 0(s4)
  ADDW s4, a0, s0
  ADDIW s5, s4, 1
  MULW s4, s4, s5
  SRAIW s5, s4, 31
  SRLIW s5, s5, 31
  ADD s4, s4, s5
  SRAIW s4, s4, 1
  ADDW s4, s4, a0
  ADDIW s4, s4, 1
  FCVT.S.W fs3, s4
  FDIV.S fs2, fs2, fs3
  FADD.S fs0, fs0, fs2
  ADDIW a0, a0, 1
  BLT a0, s1, bb43
  # implict jump to bb42
bb42:   # loop depth 1433811504
  JAL zero, bb38
bb43:   # loop depth 1433809264
  JAL zero, bb41
bb44:   # loop depth 1
  ADD s0, zero, zero
  ADD a0, zero, zero
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb45
bb45:   # loop depth 2
  BLT a0, s1, bb49
  # implict jump to bb46
bb46:   # loop depth 0
  # implict jump to bb47
bb47:   # loop depth 2
  SLLIW s4, s0, 2
  LUI t6, 195
  ADDIW t6, t6, 1376
  ADD t6, t6, sp
  ADD s4, t6, s4
  FSW fs0, 0(s4)
  ADDIW s0, s0, 1
  BLT s0, s1, bb48
  JAL zero, bb7
bb48:   # loop depth 1433778528
  JAL zero, bb45
bb49:   # loop depth 2
  # implict jump to bb50
bb50:   # loop depth 3
  SLLIW s4, a0, 2
  LUI t6, 98
  ADDIW t6, t6, -1312
  ADD t6, t6, sp
  ADD s4, t6, s4
  FLW fs2, 0(s4)
  ADDW s4, s0, a0
  ADDIW s5, s4, 1
  MULW s4, s4, s5
  SRAIW s5, s4, 31
  SRLIW s5, s5, 31
  ADD s4, s4, s5
  SRAIW s4, s4, 1
  ADDW s4, s4, s0
  ADDIW s4, s4, 1
  FCVT.S.W fs3, s4
  FDIV.S fs2, fs2, fs3
  FADD.S fs0, fs0, fs2
  ADDIW a0, a0, 1
  BLT a0, s1, bb52
  # implict jump to bb51
bb51:   # loop depth 1433782816
  JAL zero, bb47
bb52:   # loop depth 1433781040
  JAL zero, bb50
bb53:   # loop depth 1
  ADD s0, zero, zero
  ADD a0, zero, zero
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb54
bb54:   # loop depth 2
  BLT a0, s1, bb58
  # implict jump to bb55
bb55:   # loop depth 0
  # implict jump to bb56
bb56:   # loop depth 2
  SLLIW s4, s0, 2
  LUI t6, 98
  ADDIW t6, t6, -1312
  ADD t6, t6, sp
  ADD s4, t6, s4
  FSW fs0, 0(s4)
  ADDIW s0, s0, 1
  BLT s0, s1, bb57
  JAL zero, bb6
bb57:   # loop depth 1433799520
  JAL zero, bb54
bb58:   # loop depth 2
  # implict jump to bb59
bb59:   # loop depth 3
  SLLIW s4, a0, 2
  LUI t6, 195
  ADDIW t6, t6, 1376
  ADD t6, t6, sp
  ADD s4, t6, s4
  FLW fs2, 0(s4)
  ADDW s4, a0, s0
  ADDIW s5, s4, 1
  MULW s4, s4, s5
  SRAIW s5, s4, 31
  SRLIW s5, s5, 31
  ADD s4, s4, s5
  SRAIW s4, s4, 1
  ADDW s4, s4, a0
  ADDIW s4, s4, 1
  FCVT.S.W fs3, s4
  FDIV.S fs2, fs2, fs3
  FADD.S fs0, fs0, fs2
  ADDIW a0, a0, 1
  BLT a0, s1, bb61
  # implict jump to bb60
bb60:   # loop depth 1433802896
  JAL zero, bb56
bb61:   # loop depth 1433801120
  JAL zero, bb59
bb62:   # loop depth 1
  ADD s0, zero, zero
  ADD a0, zero, zero
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb63
bb63:   # loop depth 2
  BLT a0, s1, bb67
  # implict jump to bb64
bb64:   # loop depth 48
  # implict jump to bb65
bb65:   # loop depth 2
  SLLIW s4, s0, 2
  LUI t6, 195
  ADDIW t6, t6, 1376
  ADD t6, t6, sp
  ADD s4, t6, s4
  FSW fs0, 0(s4)
  ADDIW s0, s0, 1
  BLT s0, s1, bb66
  JAL zero, bb5
bb66:   # loop depth 4152470752
  JAL zero, bb63
bb67:   # loop depth 2
  # implict jump to bb68
bb68:   # loop depth 3
  SLLIW s4, a0, 2
  ADDI t6, sp, 96
  ADD s4, t6, s4
  FLW fs2, 0(s4)
  ADDW s4, s0, a0
  ADDIW s5, s4, 1
  MULW s4, s4, s5
  SRAIW s5, s4, 31
  SRLIW s5, s5, 31
  ADD s4, s4, s5
  SRAIW s4, s4, 1
  ADDW s4, s4, s0
  ADDIW s4, s4, 1
  FCVT.S.W fs3, s4
  FDIV.S fs2, fs2, fs3
  FADD.S fs0, fs0, fs2
  ADDIW a0, a0, 1
  BLT a0, s1, bb70
  # implict jump to bb69
bb69:   # loop depth 1433774848
  JAL zero, bb65
bb70:   # loop depth 4152470752
  JAL zero, bb68
bb71:   # loop depth 0
  ADDI a0, zero, 1
  FCVT.S.W fs0, a0
  ADD a0, zero, zero
  # implict jump to bb72
bb72:   # loop depth 1
  SLLIW s0, a0, 2
  ADDI t6, sp, 96
  ADD s0, t6, s0
  FSW fs0, 0(s0)
  ADDIW a0, a0, 1
  BLT a0, s1, bb73
  JAL zero, bb3
bb73:   # loop depth 0
  JAL zero, bb72
bb74:   # loop depth 0
  ADDI s1, zero, 2000
  JAL zero, bb2
