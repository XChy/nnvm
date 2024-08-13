.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss



.section .data
temp:
.word 0x3f800000
.CONSTANT.7.0:
.word 0x3f800000
.CONSTANT.7.1:
.word 0x358637bd
.section .text
main:   # loop depth 0
  LUI t0, 1048283
  ADDIW t0, t0, 16
  ADD sp, sp, t0
  SD ra, 0(sp)
  SD s5, 8(sp)
  SD s6, 16(sp)
  FSD fs0, 24(sp)
  FSD fs1, 32(sp)
  FSD fs2, 40(sp)
  FSD fs3, 48(sp)
  FSD fs4, 56(sp)
  FSD fs5, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  LUI s0, 24
  ADDI a0, zero, 0
  ADDIW s0, s0, 1696
  SLT a0, a0, s0
  BEQ a0, zero, bb68
  # implict jump to bb1
bb1:   # loop depth 0
  LUI a0, 24
  ADDIW a0, a0, 1696
  ADD s2, zero, a0
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI a0, zero, 62
  ADDI s3, zero, 0
  CALL _sysy_starttime
  BLT s3, s2, bb65
  # implict jump to bb3
bb3:   # loop depth 0
  FCVT.S.W fs1, zero
  ADD s4, zero, zero
  # implict jump to bb4
bb4:   # loop depth 1
  BLT s3, s2, bb56
  # implict jump to bb5
bb5:   # loop depth 1
  BLT s3, s2, bb47
  # implict jump to bb6
bb6:   # loop depth 1
  BLT s3, s2, bb38
  # implict jump to bb7
bb7:   # loop depth 1
  BLT s3, s2, bb29
  # implict jump to bb8
bb8:   # loop depth 1
  ADDIW s4, s4, 1
  SLTI a0, s4, 1000
  BNE a0, zero, bb28
  # implict jump to bb9
bb9:   # loop depth 0
  ADDI a0, zero, 76
  CALL _sysy_stoptime
  BLT s3, s2, bb24
  # implict jump to bb10
bb10:   # loop depth 0
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb11
bb11:   # loop depth 0
  BLT s3, s2, bb20
  # implict jump to bb12
bb12:   # loop depth 0
  # implict jump to bb13
bb13:   # loop depth 0
  LA a0, .CONSTANT.7.1
  LA s0, .CONSTANT.7.1
  ADDI s1, zero, 2
  FDIV.S fs3, fs0, fs1
  FLW fs0, 0(a0)
  FCVT.S.W fs5, s1
  FLW fs1, 0(s0)
  FSGNJ.S fs2, fs0, fs1
  FSGNJN.S fs4, fs2, fs2
  # implict jump to bb14
bb14:   # loop depth 1
  LA a0, temp
  FLW fs0, 0(a0)
  FDIV.S fs1, fs3, fs0
  FSUB.S fs1, fs0, fs1
  FLT.S s0, fs1, fs4
  FLT.S a0, fs2, fs1
  OR a0, a0, s0
  BNE a0, zero, bb19
  # implict jump to bb15
bb15:   # loop depth 0
  LA a0, .CONSTANT.7.0
  FLW fs1, 0(a0)
  FSUB.S fs0, fs0, fs1
  FLE.S s0, fs4, fs0
  FLE.S a0, fs0, fs2
  AND a0, a0, s0
  BNE a0, zero, bb18
  # implict jump to bb16
bb16:   # loop depth 0
  ADD a0, zero, zero
  CALL putint
  # implict jump to bb17
bb17:   # loop depth 0
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s5, 8(sp)
  LD s6, 16(sp)
  FLD fs0, 24(sp)
  FLD fs1, 32(sp)
  FLD fs2, 40(sp)
  FLD fs3, 48(sp)
  FLD fs4, 56(sp)
  FLD fs5, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LUI t0, 293
  ADDIW t0, t0, -16
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb18:   # loop depth 0
  ADDI a0, zero, 1
  CALL putint
  JAL zero, bb17
bb19:   # loop depth 1
  LA a0, temp
  LA s0, temp
  FLW fs0, 0(a0)
  FDIV.S fs1, fs3, fs0
  FADD.S fs0, fs0, fs1
  FDIV.S fs0, fs0, fs5
  FSW fs0, 0(s0)
  JAL zero, bb14
bb20:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb21
bb21:   # loop depth 1
  SLLIW s0, a0, 2
  ADDIW a0, a0, 1
  LUI t6, 98
  ADDIW t6, t6, -1296
  ADD t6, t6, sp
  ADD s0, t6, s0
  FLW fs2, 0(s0)
  FMUL.S fs2, fs2, fs2
  FADD.S fs1, fs1, fs2
  BLT a0, s2, bb23
  # implict jump to bb22
bb22:   # loop depth 0
  JAL zero, bb13
bb23:   # loop depth 1
  JAL zero, bb21
bb24:   # loop depth 0
  FSGNJ.S fs0, fs1, fs1
  ADD a0, zero, zero
  # implict jump to bb25
bb25:   # loop depth 1
  SLLIW s0, a0, 2
  ADDIW a0, a0, 1
  ADDI t6, sp, 112
  ADD s1, t6, s0
  LUI t6, 98
  ADDIW t6, t6, -1296
  ADD t6, t6, sp
  ADD s0, t6, s0
  FLW fs2, 0(s1)
  FLW fs3, 0(s0)
  FMUL.S fs2, fs2, fs3
  FADD.S fs0, fs0, fs2
  BLT a0, s2, bb27
  # implict jump to bb26
bb26:   # loop depth 0
  JAL zero, bb11
bb27:   # loop depth 1
  JAL zero, bb25
bb28:   # loop depth 1
  JAL zero, bb4
bb29:   # loop depth 1
  FSGNJ.S fs0, fs1, fs1
  ADD a0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb30
bb30:   # loop depth 2
  BLT a0, s2, bb34
  # implict jump to bb31
bb31:   # loop depth 2
  # implict jump to bb32
bb32:   # loop depth 2
  SLLIW s0, s1, 2
  ADDI t6, sp, 112
  ADD s0, t6, s0
  ADDIW s1, s1, 1
  FSW fs0, 0(s0)
  BLT s1, s2, bb33
  JAL zero, bb8
bb33:   # loop depth 2
  JAL zero, bb30
bb34:   # loop depth 2
  # implict jump to bb35
bb35:   # loop depth 3
  ADDW s5, a0, s1
  SLLIW s0, a0, 2
  ADDIW s6, s5, 1
  LUI t6, 195
  ADDIW t6, t6, 1392
  ADD t6, t6, sp
  ADD s0, t6, s0
  MULW s5, s5, s6
  FLW fs2, 0(s0)
  ADDIW s0, a0, 1
  SRAIW s6, s5, 31
  SRLIW s6, s6, 31
  ADD s5, s5, s6
  SRAIW s5, s5, 1
  ADDW a0, s5, a0
  ADDIW a0, a0, 1
  FCVT.S.W fs3, a0
  FDIV.S fs2, fs2, fs3
  FADD.S fs0, fs0, fs2
  BLT s0, s2, bb37
  # implict jump to bb36
bb36:   # loop depth 2
  ADD a0, s0, zero
  JAL zero, bb32
bb37:   # loop depth 3
  ADD a0, s0, zero
  JAL zero, bb35
bb38:   # loop depth 1
  FSGNJ.S fs0, fs1, fs1
  ADD a0, zero, zero
  ADD s0, zero, zero
  # implict jump to bb39
bb39:   # loop depth 2
  BLT a0, s2, bb43
  # implict jump to bb40
bb40:   # loop depth 2
  # implict jump to bb41
bb41:   # loop depth 2
  SLLIW s1, s0, 2
  LUI t6, 195
  ADDIW t6, t6, 1392
  ADD t6, t6, sp
  ADD s1, t6, s1
  ADDIW s0, s0, 1
  FSW fs0, 0(s1)
  BLT s0, s2, bb42
  JAL zero, bb7
bb42:   # loop depth 2
  JAL zero, bb39
bb43:   # loop depth 2
  # implict jump to bb44
bb44:   # loop depth 3
  ADDW s5, s0, a0
  SLLIW s1, a0, 2
  ADDIW s6, s5, 1
  LUI t6, 98
  ADDIW t6, t6, -1296
  ADD t6, t6, sp
  ADD s1, t6, s1
  MULW s5, s5, s6
  FLW fs2, 0(s1)
  ADDIW a0, a0, 1
  SRAIW s1, s5, 31
  SRLIW s1, s1, 31
  ADD s1, s5, s1
  SRAIW s1, s1, 1
  ADDW s1, s1, s0
  ADDIW s1, s1, 1
  FCVT.S.W fs3, s1
  FDIV.S fs2, fs2, fs3
  FADD.S fs0, fs0, fs2
  BLT a0, s2, bb46
  # implict jump to bb45
bb45:   # loop depth 2
  JAL zero, bb41
bb46:   # loop depth 3
  JAL zero, bb44
bb47:   # loop depth 1
  FSGNJ.S fs0, fs1, fs1
  ADD a0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb48
bb48:   # loop depth 2
  BLT a0, s2, bb52
  # implict jump to bb49
bb49:   # loop depth 2
  # implict jump to bb50
bb50:   # loop depth 2
  SLLIW s0, s1, 2
  LUI t6, 98
  ADDIW t6, t6, -1296
  ADD t6, t6, sp
  ADD s0, t6, s0
  ADDIW s1, s1, 1
  FSW fs0, 0(s0)
  BLT s1, s2, bb51
  JAL zero, bb6
bb51:   # loop depth 2
  JAL zero, bb48
bb52:   # loop depth 2
  # implict jump to bb53
bb53:   # loop depth 3
  ADDW s5, a0, s1
  SLLIW s0, a0, 2
  ADDIW s6, s5, 1
  LUI t6, 195
  ADDIW t6, t6, 1392
  ADD t6, t6, sp
  ADD s0, t6, s0
  MULW s5, s5, s6
  FLW fs2, 0(s0)
  ADDIW s0, a0, 1
  SRAIW s6, s5, 31
  SRLIW s6, s6, 31
  ADD s5, s5, s6
  SRAIW s5, s5, 1
  ADDW a0, s5, a0
  ADDIW a0, a0, 1
  FCVT.S.W fs3, a0
  FDIV.S fs2, fs2, fs3
  FADD.S fs0, fs0, fs2
  BLT s0, s2, bb55
  # implict jump to bb54
bb54:   # loop depth 2
  ADD a0, s0, zero
  JAL zero, bb50
bb55:   # loop depth 3
  ADD a0, s0, zero
  JAL zero, bb53
bb56:   # loop depth 1
  FSGNJ.S fs0, fs1, fs1
  ADD a0, zero, zero
  ADD s0, zero, zero
  # implict jump to bb57
bb57:   # loop depth 2
  BLT a0, s2, bb61
  # implict jump to bb58
bb58:   # loop depth 2
  # implict jump to bb59
bb59:   # loop depth 2
  SLLIW s1, s0, 2
  LUI t6, 195
  ADDIW t6, t6, 1392
  ADD t6, t6, sp
  ADD s1, t6, s1
  ADDIW s0, s0, 1
  FSW fs0, 0(s1)
  BLT s0, s2, bb60
  JAL zero, bb5
bb60:   # loop depth 2
  JAL zero, bb57
bb61:   # loop depth 2
  # implict jump to bb62
bb62:   # loop depth 3
  ADDW s5, s0, a0
  SLLIW s1, a0, 2
  ADDIW s6, s5, 1
  ADDI t6, sp, 112
  ADD s1, t6, s1
  MULW s5, s5, s6
  FLW fs2, 0(s1)
  ADDIW a0, a0, 1
  SRAIW s1, s5, 31
  SRLIW s1, s1, 31
  ADD s1, s5, s1
  SRAIW s1, s1, 1
  ADDW s1, s1, s0
  ADDIW s1, s1, 1
  FCVT.S.W fs3, s1
  FDIV.S fs2, fs2, fs3
  FADD.S fs0, fs0, fs2
  BLT a0, s2, bb64
  # implict jump to bb63
bb63:   # loop depth 2
  JAL zero, bb59
bb64:   # loop depth 3
  JAL zero, bb62
bb65:   # loop depth 0
  ADDI s0, zero, 1
  ADD a0, zero, zero
  FCVT.S.W fs0, s0
  # implict jump to bb66
bb66:   # loop depth 1
  SLLIW s0, a0, 2
  ADDIW a0, a0, 1
  ADDI t6, sp, 112
  ADD s0, t6, s0
  FSW fs0, 0(s0)
  BLT a0, s2, bb67
  JAL zero, bb3
bb67:   # loop depth 1
  JAL zero, bb66
bb68:   # loop depth 0
  ADDI s2, zero, 2000
  JAL zero, bb2
