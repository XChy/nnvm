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
  ADDIW t0, t0, 96
  ADD sp, sp, t0
  LUI t6, 293
  ADDIW t6, t6, -128
  ADD t6, t6, sp
  SD ra, 0(t6)
  LUI t6, 293
  ADDIW t6, t6, -120
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t0, 293
  ADDIW t0, t0, -112
  ADD t0, t0, sp
  SD s1, 0(t0)
  LUI t0, 293
  ADDIW t0, t0, -104
  ADD t0, t0, sp
  FSD fs0, 0(t0)
  LUI t0, 24
  ADDI t1, zero, 0
  ADDIW t0, t0, 1696
  ADD s0, zero, t0
  BGE t1, s0, bb68
  # implict jump to bb1
bb1:   # loop depth 0
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI a0, zero, 62
  ADDI s1, zero, 0
  CALL _sysy_starttime
  BLT s1, s0, bb65
  # implict jump to bb3
bb3:   # loop depth 0
  FCVT.S.W fs0, zero
  ADD a0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 1
  BLT s1, s0, bb56
  # implict jump to bb5
bb5:   # loop depth 1
  BLT s1, s0, bb47
  # implict jump to bb6
bb6:   # loop depth 1
  BLT s1, s0, bb38
  # implict jump to bb7
bb7:   # loop depth 1
  BLT s1, s0, bb29
  # implict jump to bb8
bb8:   # loop depth 1
  ADDIW a0, a0, 1
  SLTI t0, a0, 1000
  BNE t0, zero, bb28
  # implict jump to bb9
bb9:   # loop depth 0
  ADDI a0, zero, 76
  CALL _sysy_stoptime
  BLT s1, s0, bb24
  # implict jump to bb10
bb10:   # loop depth 0
  FSGNJ.S ft0, fs0, fs0
  # implict jump to bb11
bb11:   # loop depth 0
  BLT s1, s0, bb20
  # implict jump to bb12
bb12:   # loop depth 0
  # implict jump to bb13
bb13:   # loop depth 0
  LA t0, .CONSTANT.7.1
  LA t1, .CONSTANT.7.1
  ADDI t2, zero, 2
  FDIV.S ft3, ft0, fs0
  FLW ft0, 0(t0)
  FCVT.S.W ft5, t2
  LA t2, temp
  FLW ft1, 0(t1)
  FSGNJ.S ft2, ft0, ft1
  FSGNJN.S ft4, ft2, ft2
  # implict jump to bb14
bb14:   # loop depth 1
  FLW ft0, 0(t2)
  FDIV.S ft1, ft3, ft0
  FSUB.S ft1, ft0, ft1
  FLT.S t1, ft1, ft4
  FLT.S t0, ft2, ft1
  OR t0, t0, t1
  BNE t0, zero, bb19
  # implict jump to bb15
bb15:   # loop depth 0
  LA t0, .CONSTANT.7.0
  FLW ft1, 0(t0)
  FSUB.S ft0, ft0, ft1
  FLE.S t1, ft4, ft0
  FLE.S t0, ft0, ft2
  AND t0, t0, t1
  BNE t0, zero, bb18
  # implict jump to bb16
bb16:   # loop depth 0
  ADD a0, zero, zero
  CALL putint
  # implict jump to bb17
bb17:   # loop depth 0
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LUI ra, 293
  ADDIW ra, ra, -128
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 293
  ADDIW t6, t6, -120
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t6, 293
  ADDIW t6, t6, -112
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t6, 293
  ADDIW t6, t6, -104
  ADD t6, t6, sp
  FLD fs0, 0(t6)
  LUI t0, 293
  ADDIW t0, t0, -96
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb18:   # loop depth 0
  ADDI a0, zero, 1
  CALL putint
  JAL zero, bb17
bb19:   # loop depth 1
  FLW ft0, 0(t2)
  FDIV.S ft1, ft3, ft0
  FADD.S ft0, ft0, ft1
  FDIV.S ft0, ft0, ft5
  FSW ft0, 0(t2)
  JAL zero, bb14
bb20:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb21
bb21:   # loop depth 1
  SLLIW t1, t0, 2
  ADDIW t0, t0, 1
  LUI t6, 98
  ADDIW t6, t6, -1408
  ADD t6, t6, sp
  ADD t1, t6, t1
  FLW ft1, 0(t1)
  FMUL.S ft1, ft1, ft1
  FADD.S fs0, fs0, ft1
  BLT t0, s0, bb23
  # implict jump to bb22
bb22:   # loop depth 0
  JAL zero, bb13
bb23:   # loop depth 1
  JAL zero, bb21
bb24:   # loop depth 0
  FSGNJ.S ft0, fs0, fs0
  ADD t0, zero, zero
  # implict jump to bb25
bb25:   # loop depth 1
  SLLIW t1, t0, 2
  ADDIW t0, t0, 1
  LUI t2, 195
  ADDIW t2, t2, 1280
  ADD t2, t2, sp
  ADD t2, t2, t1
  LUI t6, 98
  ADDIW t6, t6, -1408
  ADD t6, t6, sp
  ADD t1, t6, t1
  FLW ft1, 0(t2)
  FLW ft2, 0(t1)
  FMUL.S ft1, ft1, ft2
  FADD.S ft0, ft0, ft1
  BLT t0, s0, bb27
  # implict jump to bb26
bb26:   # loop depth 0
  JAL zero, bb11
bb27:   # loop depth 1
  JAL zero, bb25
bb28:   # loop depth 1
  JAL zero, bb4
bb29:   # loop depth 1
  FSGNJ.S ft0, fs0, fs0
  ADD t0, zero, zero
  ADD t2, zero, zero
  # implict jump to bb30
bb30:   # loop depth 2
  BLT t0, s0, bb34
  # implict jump to bb31
bb31:   # loop depth 2
  # implict jump to bb32
bb32:   # loop depth 2
  SLLIW t1, t2, 2
  LUI t6, 195
  ADDIW t6, t6, 1280
  ADD t6, t6, sp
  ADD t1, t6, t1
  ADDIW t2, t2, 1
  FSW ft0, 0(t1)
  BLT t2, s0, bb33
  JAL zero, bb8
bb33:   # loop depth 2
  JAL zero, bb30
bb34:   # loop depth 2
  # implict jump to bb35
bb35:   # loop depth 3
  ADDW a1, t0, t2
  SLLIW t1, t0, 2
  ADDIW a2, a1, 1
  ADDI t6, sp, 0
  ADD t1, t6, t1
  MULW a1, a1, a2
  FLW ft1, 0(t1)
  ADDIW t1, t0, 1
  SRAIW a2, a1, 31
  SRLIW a2, a2, 31
  ADD a1, a1, a2
  SRAIW a1, a1, 1
  ADDW t0, a1, t0
  ADDIW t0, t0, 1
  FCVT.S.W ft2, t0
  FDIV.S ft1, ft1, ft2
  FADD.S ft0, ft0, ft1
  BLT t1, s0, bb37
  # implict jump to bb36
bb36:   # loop depth 2
  ADD t0, t1, zero
  JAL zero, bb32
bb37:   # loop depth 3
  ADD t0, t1, zero
  JAL zero, bb35
bb38:   # loop depth 1
  FSGNJ.S ft0, fs0, fs0
  ADD t0, zero, zero
  ADD t1, zero, zero
  # implict jump to bb39
bb39:   # loop depth 2
  BLT t0, s0, bb43
  # implict jump to bb40
bb40:   # loop depth 2
  # implict jump to bb41
bb41:   # loop depth 2
  SLLIW t2, t1, 2
  ADDI t6, sp, 0
  ADD t2, t6, t2
  ADDIW t1, t1, 1
  FSW ft0, 0(t2)
  BLT t1, s0, bb42
  JAL zero, bb7
bb42:   # loop depth 2
  JAL zero, bb39
bb43:   # loop depth 2
  # implict jump to bb44
bb44:   # loop depth 3
  ADDW a1, t1, t0
  SLLIW t2, t0, 2
  ADDIW a2, a1, 1
  LUI t6, 98
  ADDIW t6, t6, -1408
  ADD t6, t6, sp
  ADD t2, t6, t2
  MULW a1, a1, a2
  FLW ft1, 0(t2)
  ADDIW t0, t0, 1
  SRAIW t2, a1, 31
  SRLIW t2, t2, 31
  ADD t2, a1, t2
  SRAIW t2, t2, 1
  ADDW t2, t2, t1
  ADDIW t2, t2, 1
  FCVT.S.W ft2, t2
  FDIV.S ft1, ft1, ft2
  FADD.S ft0, ft0, ft1
  BLT t0, s0, bb46
  # implict jump to bb45
bb45:   # loop depth 2
  JAL zero, bb41
bb46:   # loop depth 3
  JAL zero, bb44
bb47:   # loop depth 1
  FSGNJ.S ft0, fs0, fs0
  ADD t0, zero, zero
  ADD t2, zero, zero
  # implict jump to bb48
bb48:   # loop depth 2
  BLT t0, s0, bb52
  # implict jump to bb49
bb49:   # loop depth 2
  # implict jump to bb50
bb50:   # loop depth 2
  SLLIW t1, t2, 2
  LUI t6, 98
  ADDIW t6, t6, -1408
  ADD t6, t6, sp
  ADD t1, t6, t1
  ADDIW t2, t2, 1
  FSW ft0, 0(t1)
  BLT t2, s0, bb51
  JAL zero, bb6
bb51:   # loop depth 2
  JAL zero, bb48
bb52:   # loop depth 2
  # implict jump to bb53
bb53:   # loop depth 3
  ADDW a1, t0, t2
  SLLIW t1, t0, 2
  ADDIW a2, a1, 1
  ADDI t6, sp, 0
  ADD t1, t6, t1
  MULW a1, a1, a2
  FLW ft1, 0(t1)
  ADDIW t1, t0, 1
  SRAIW a2, a1, 31
  SRLIW a2, a2, 31
  ADD a1, a1, a2
  SRAIW a1, a1, 1
  ADDW t0, a1, t0
  ADDIW t0, t0, 1
  FCVT.S.W ft2, t0
  FDIV.S ft1, ft1, ft2
  FADD.S ft0, ft0, ft1
  BLT t1, s0, bb55
  # implict jump to bb54
bb54:   # loop depth 2
  ADD t0, t1, zero
  JAL zero, bb50
bb55:   # loop depth 3
  ADD t0, t1, zero
  JAL zero, bb53
bb56:   # loop depth 1
  FSGNJ.S ft0, fs0, fs0
  ADD t0, zero, zero
  ADD t1, zero, zero
  # implict jump to bb57
bb57:   # loop depth 2
  BLT t0, s0, bb61
  # implict jump to bb58
bb58:   # loop depth 2
  # implict jump to bb59
bb59:   # loop depth 2
  SLLIW t2, t1, 2
  ADDI t6, sp, 0
  ADD t2, t6, t2
  ADDIW t1, t1, 1
  FSW ft0, 0(t2)
  BLT t1, s0, bb60
  JAL zero, bb5
bb60:   # loop depth 2
  JAL zero, bb57
bb61:   # loop depth 2
  # implict jump to bb62
bb62:   # loop depth 3
  ADDW a1, t1, t0
  SLLIW t2, t0, 2
  ADDIW a2, a1, 1
  LUI t6, 195
  ADDIW t6, t6, 1280
  ADD t6, t6, sp
  ADD t2, t6, t2
  MULW a1, a1, a2
  FLW ft1, 0(t2)
  ADDIW t0, t0, 1
  SRAIW t2, a1, 31
  SRLIW t2, t2, 31
  ADD t2, a1, t2
  SRAIW t2, t2, 1
  ADDW t2, t2, t1
  ADDIW t2, t2, 1
  FCVT.S.W ft2, t2
  FDIV.S ft1, ft1, ft2
  FADD.S ft0, ft0, ft1
  BLT t0, s0, bb64
  # implict jump to bb63
bb63:   # loop depth 2
  JAL zero, bb59
bb64:   # loop depth 3
  JAL zero, bb62
bb65:   # loop depth 0
  ADDI t1, zero, 1
  ADD t0, zero, zero
  FCVT.S.W ft0, t1
  # implict jump to bb66
bb66:   # loop depth 1
  SLLIW t1, t0, 2
  ADDIW t0, t0, 1
  LUI t6, 195
  ADDIW t6, t6, 1280
  ADD t6, t6, sp
  ADD t1, t6, t1
  FSW ft0, 0(t1)
  BLT t0, s0, bb67
  JAL zero, bb3
bb67:   # loop depth 1
  JAL zero, bb66
bb68:   # loop depth 0
  ADDI s0, zero, 2000
  JAL zero, bb2
