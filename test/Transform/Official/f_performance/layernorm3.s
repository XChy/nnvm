.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
a:
.space 4000000


.section .data

.CONSTANT.7.0:
.word 0x3a83126f
.CONSTANT.7.1:
.word 0x3c23d70a
.section .text
main:   # loop depth 0
  LUI t0, 1048574
  ADDIW t0, t0, 128
  ADD sp, sp, t0
  LUI t6, 2
  ADDIW t6, t6, -192
  ADD t6, t6, sp
  SD ra, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -184
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -176
  ADD t6, t6, sp
  SD s1, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -168
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -160
  ADD t6, t6, sp
  FSD fs0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -152
  ADD t6, t6, sp
  FSD fs1, 0(t6)
  LUI t0, 2
  ADDIW t0, t0, -144
  ADD t0, t0, sp
  FSD fs2, 0(t0)
  LUI t0, 2
  ADDIW t0, t0, -136
  ADD t0, t0, sp
  FSD fs3, 0(t0)
  ADDI t0, zero, 0
  LA s0, a
  FCVT.S.W fs0, t0
  ADD s2, zero, zero
  ADD s1, zero, zero
  # implict jump to bb1
bb1:   # loop depth 1
  SLTI t0, s2, 1000
  BNE t0, zero, bb45
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI t1, zero, 2
  ADDI t0, zero, 1000
  FSGNJ.S fs3, fs0, fs0
  ADDI a0, zero, 42
  FCVT.S.W fs1, t1
  ADD s1, zero, zero
  FCVT.S.W fs2, t0
  CALL _sysy_starttime
  # implict jump to bb3
bb3:   # loop depth 1
  ADD t2, zero, zero
  ADD t0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 2
  FSGNJ.S ft0, fs0, fs0
  SLLIW a0, t2, 2
  ADD t1, zero, zero
  ADD a1, s0, t0
  LUI t6, 1
  ADDIW t6, t6, -96
  ADD t6, t6, sp
  ADD a0, t6, a0
  # implict jump to bb5
bb5:   # loop depth 3
  SH2ADD a2, t1, a1
  ADDIW t1, t1, 1
  FLW ft1, 0(a2)
  SLTI a2, t1, 1000
  FADD.S ft0, ft0, ft1
  BNE a2, zero, bb44
  # implict jump to bb6
bb6:   # loop depth 2
  FDIV.S ft0, ft0, fs2
  LUI t1, 1
  ADDIW t1, t1, -96
  ADDIW t2, t2, 1
  ADDW t0, t0, t1
  SLTI t1, t2, 1000
  FSW ft0, 0(a0)
  BNE t1, zero, bb43
  # implict jump to bb7
bb7:   # loop depth 1
  LA t0, .CONSTANT.7.0
  LA a0, .CONSTANT.7.0
  ADD t1, zero, zero
  ADD t2, zero, zero
  FLW ft0, 0(t0)
  FLW ft1, 0(a0)
  FSGNJ.S ft7, ft0, ft1
  # implict jump to bb8
bb8:   # loop depth 2
  FSGNJ.S ft0, fs0, fs0
  SLLIW a0, t1, 2
  LUI a1, 1
  ADDIW a1, a1, -96
  ADD a1, a1, sp
  ADD a1, a1, a0
  ADD t0, zero, zero
  FLW ft1, 0(a1)
  ADD a1, s0, t2
  ADDI t6, sp, 0
  ADD a0, t6, a0
  # implict jump to bb9
bb9:   # loop depth 3
  SH2ADD a2, t0, a1
  ADDIW t0, t0, 1
  FLW ft2, 0(a2)
  SLTI a2, t0, 1000
  FSUB.S ft2, ft2, ft1
  FMUL.S ft2, ft2, ft2
  FADD.S ft0, ft0, ft2
  BNE a2, zero, bb42
  # implict jump to bb10
bb10:   # loop depth 2
  FDIV.S ft0, ft0, fs2
  LA t0, .CONSTANT.7.1
  FLW ft1, 0(t0)
  FADD.S ft5, ft0, ft1
  FADD.S ft0, fs0, ft5
  FDIV.S ft4, ft0, fs1
  FMUL.S ft6, ft4, ft4
  FSUB.S ft0, ft6, ft5
  FLT.S t0, ft0, fs0
  FSGNJN.S ft1, ft0, ft0
  BNE t0, zero, bb41
  # implict jump to bb11
bb11:   # loop depth 2
  FSGNJ.S ft1, ft0, ft0
  # implict jump to bb12
bb12:   # loop depth 2
  FLT.S t0, ft7, ft1
  BNE t0, zero, bb31
  # implict jump to bb13
bb13:   # loop depth 2
  # implict jump to bb14
bb14:   # loop depth 2
  LUI t0, 1
  ADDIW t0, t0, -96
  ADDIW t1, t1, 1
  FSW ft4, 0(a0)
  ADDW t2, t2, t0
  SLTI t0, t1, 1000
  BNE t0, zero, bb30
  # implict jump to bb15
bb15:   # loop depth 1
  ADD t2, zero, zero
  ADD t1, zero, zero
  # implict jump to bb16
bb16:   # loop depth 2
  SLLIW t0, t2, 2
  LUI a0, 1
  ADDIW a0, a0, -96
  ADD a0, a0, sp
  ADD a0, a0, t0
  ADDI a1, sp, 0
  ADD a1, a1, t0
  FLW ft0, 0(a0)
  ADD t0, zero, zero
  ADD a0, s0, t1
  FLW ft1, 0(a1)
  # implict jump to bb17
bb17:   # loop depth 3
  SH2ADD a1, t0, a0
  ADDIW t0, t0, 1
  FLW ft2, 0(a1)
  SLTI a2, t0, 1000
  FSUB.S ft2, ft2, ft0
  FDIV.S ft2, ft2, ft1
  FADD.S fs3, fs3, ft2
  FSW ft2, 0(a1)
  BNE a2, zero, bb29
  # implict jump to bb18
bb18:   # loop depth 2
  LUI a0, 1
  ADDIW t2, t2, 1
  ADDIW a0, a0, -96
  SLTI t0, t2, 1000
  ADDW t1, t1, a0
  BNE t0, zero, bb28
  # implict jump to bb19
bb19:   # loop depth 1
  ADDIW s1, s1, 1
  SLTI t0, s1, 100
  BNE t0, zero, bb27
  # implict jump to bb20
bb20:   # loop depth 0
  ADD t2, zero, zero
  ADD t1, zero, zero
  # implict jump to bb21
bb21:   # loop depth 1
  ADD t0, zero, zero
  ADD a0, s0, t1
  # implict jump to bb22
bb22:   # loop depth 2
  SH2ADD a1, t0, a0
  ADDIW t0, t0, 1
  FLW ft0, 0(a1)
  SLTI a1, t0, 1000
  FADD.S fs3, fs3, ft0
  BNE a1, zero, bb26
  # implict jump to bb23
bb23:   # loop depth 1
  LUI a0, 1
  ADDIW t2, t2, 1
  ADDIW a0, a0, -96
  SLTI t0, t2, 1000
  ADDW t1, t1, a0
  BNE t0, zero, bb25
  # implict jump to bb24
bb24:   # loop depth 0
  ADDI a0, zero, 95
  CALL _sysy_stoptime
  FSGNJ.S fa0, fs3, fs3
  CALL putfloat
  ADD a0, zero, zero
  LUI ra, 2
  ADDIW ra, ra, -192
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 2
  ADDIW t6, t6, -184
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -176
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -168
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -160
  ADD t6, t6, sp
  FLD fs0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -152
  ADD t6, t6, sp
  FLD fs1, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -144
  ADD t6, t6, sp
  FLD fs2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -136
  ADD t6, t6, sp
  FLD fs3, 0(t6)
  LUI t0, 2
  ADDIW t0, t0, -128
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb25:   # loop depth 1
  JAL zero, bb21
bb26:   # loop depth 2
  JAL zero, bb22
bb27:   # loop depth 1
  JAL zero, bb3
bb28:   # loop depth 2
  JAL zero, bb16
bb29:   # loop depth 3
  JAL zero, bb17
bb30:   # loop depth 2
  JAL zero, bb8
bb31:   # loop depth 2
  FSGNJ.S ft3, ft5, ft5
  FSGNJ.S ft2, fs0, fs0
  # implict jump to bb32
bb32:   # loop depth 3
  FLT.S t0, ft5, ft6
  BNE t0, zero, bb40
  # implict jump to bb33
bb33:   # loop depth 3
  FADD.S ft0, ft4, ft3
  FSGNJ.S ft2, ft4, ft4
  FDIV.S ft4, ft0, fs1
  # implict jump to bb34
bb34:   # loop depth 3
  FMUL.S ft6, ft4, ft4
  FSUB.S ft0, ft6, ft5
  FLT.S t0, ft0, fs0
  FSGNJN.S ft1, ft0, ft0
  BNE t0, zero, bb39
  # implict jump to bb35
bb35:   # loop depth 3
  FSGNJ.S ft1, ft0, ft0
  # implict jump to bb36
bb36:   # loop depth 3
  FLT.S t0, ft7, ft1
  BNE t0, zero, bb38
  # implict jump to bb37
bb37:   # loop depth 2
  JAL zero, bb14
bb38:   # loop depth 3
  JAL zero, bb32
bb39:   # loop depth 3
  JAL zero, bb36
bb40:   # loop depth 3
  FADD.S ft0, ft4, ft2
  FSGNJ.S ft3, ft4, ft4
  FDIV.S ft4, ft0, fs1
  JAL zero, bb34
bb41:   # loop depth 2
  JAL zero, bb12
bb42:   # loop depth 3
  JAL zero, bb9
bb43:   # loop depth 2
  JAL zero, bb4
bb44:   # loop depth 3
  JAL zero, bb5
bb45:   # loop depth 1
  ADD a0, s0, s1
  CALL getfarray
  XORI t0, a0, 1000
  BNE t0, zero, bb47
  # implict jump to bb46
bb46:   # loop depth 1
  LUI t0, 1
  ADDIW s2, s2, 1
  ADDIW t0, t0, -96
  ADDW s1, s1, t0
  JAL zero, bb1
bb47:   # loop depth 0
  LUI ra, 2
  ADDIW ra, ra, -192
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 2
  ADDIW t6, t6, -184
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -176
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -168
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -160
  ADD t6, t6, sp
  FLD fs0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -152
  ADD t6, t6, sp
  FLD fs1, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -144
  ADD t6, t6, sp
  FLD fs2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -136
  ADD t6, t6, sp
  FLD fs3, 0(t6)
  LUI t0, 2
  ADDIW t0, t0, -128
  ADD sp, sp, t0
  JALR zero, 0(ra)
