.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global my_sin_impl
.global main
.global write_pgm
.section .bss













.section .data
seed:
.word 0x00000000
.CONSTANT.7.0:
.word 0x358637bd
.CONSTANT.7.1:
.word 0x40400000
.CONSTANT.7.2:
.word 0x40490fdb
.CONSTANT.7.3:
.word 0x40c90fdb
.CONSTANT.7.4:
.word 0x00000000
.CONSTANT.7.5:
.word 0x40000000
.CONSTANT.7.6:
.word 0x3f19999a
.CONSTANT.7.7:
.word 0x3ecccccd
.CONSTANT.7.8:
.word 0x3f000000
.CONSTANT.7.9:
.word 0x3dcccccd
.CONSTANT.7.10:
.word 0x3d4ccccd
.CONSTANT.7.11:
.word 0x437f0000
.section .text
my_sin_impl:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  FSD fs0, 8(sp)
  FSD fs1, 16(sp)
  ADDI t0, zero, 0
  FCVT.S.W ft1, t0
  FSGNJN.S ft0, fa0, fa0
  FLT.S t0, ft1, fa0
  BNE t0, zero, bb5
  # implict jump to bb1
bb1:   # loop depth 0
  # implict jump to bb2
bb2:   # loop depth 0
  LA t0, .CONSTANT.7.0
  FLW ft1, 0(t0)
  FLE.S t0, ft0, ft1
  BNE t0, zero, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  LA t0, .CONSTANT.7.1
  ADDI t1, zero, 4
  FCVT.S.W fs1, t1
  ADDI t1, zero, 3
  FLW ft0, 0(t0)
  FCVT.S.W fs0, t1
  FDIV.S fa0, fa0, ft0
  CALL my_sin_impl
  FMUL.S ft1, fs1, fa0
  FMUL.S ft0, fs0, fa0
  FMUL.S ft1, ft1, fa0
  FMUL.S ft1, ft1, fa0
  FSUB.S fa0, ft0, ft1
  LD ra, 0(sp)
  FLD fs0, 8(sp)
  FLD fs1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb4:   # loop depth 0
  LD ra, 0(sp)
  FLD fs0, 8(sp)
  FLD fs1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb5:   # loop depth 0
  FSGNJ.S ft0, fa0, fa0
  JAL zero, bb2
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  CALL write_pgm
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
write_pgm:   # loop depth 0
  ADDI sp, sp, -192
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  FSD fs1, 112(sp)
  FSD fs2, 120(sp)
  FSD fs3, 128(sp)
  FSD fs4, 136(sp)
  FSD fs5, 144(sp)
  FSD fs7, 152(sp)
  FSD fs8, 160(sp)
  FSD fs10, 168(sp)
  LA t0, .CONSTANT.7.2
  LA t1, .CONSTANT.7.2
  ADDI a0, zero, 2
  LA t2, .CONSTANT.7.3
  FLW ft0, 0(t0)
  FCVT.S.W fs10, a0
  LA t0, .CONSTANT.7.3
  ADDI a0, zero, 80
  FLW ft1, 0(t1)
  LUI t1, 24414
  ADDI a1, zero, 192
  ADDIW t1, t1, 262
  FSGNJ.S fs4, ft0, ft1
  FLW ft0, 0(t2)
  ADDI s3, zero, 4
  ADDI s2, zero, 8
  FDIV.S ft1, fs4, fs10
  FSW ft1, 16(sp)
  FLW ft1, 0(t0)
  ADDI s1, zero, 24
  FCVT.S.W ft2, a1
  FSW ft2, 24(sp)
  FSGNJ.S fs5, ft0, ft1
  FSGNJN.S ft0, fs4, fs4
  FSW ft0, 20(sp)
  FCVT.S.W ft0, t1
  FSW ft0, 12(sp)
  ADD s0, zero, zero
  CALL putch
  FSGNJN.S ft0, fs5, fs5
  FSW ft0, 60(sp)
  ADDI a0, zero, 50
  FCVT.S.W fs8, s3
  FCVT.S.W fs7, s2
  CALL putch
  ADDI a0, zero, 10
  FCVT.S.W ft0, s1
  FSW ft0, 8(sp)
  CALL putch
  ADDI a0, zero, 192
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI a0, zero, 192
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI a0, zero, 255
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb8
bb8:   # loop depth 1
  ADD s4, s0, zero
  LA t0, .CONSTANT.7.4
  FCVT.S.W ft0, s4
  LA t1, .CONSTANT.7.4
  FLW ft1, 0(t0)
  ADD s3, zero, zero
  FLW ft2, 24(sp)
  FDIV.S ft0, ft0, ft2
  FSW ft0, 28(sp)
  FLW ft0, 0(t1)
  FSGNJ.S fs2, ft1, ft0
  # implict jump to bb9
bb9:   # loop depth 2
  FSGNJ.S ft0, fs2, fs2
  FCVT.S.W ft1, s3
  ADD s1, zero, zero
  FLW ft2, 24(sp)
  FDIV.S ft1, ft1, ft2
  FSW ft1, 32(sp)
  # implict jump to bb10
bb10:   # loop depth 3
  LA t0, seed
  LUI t1, 4878
  ADDIW t1, t1, -158
  LUI t2, 6
  LW t0, 0(t0)
  LUI a0, 24414
  ADDIW t2, t2, -1243
  ADDIW a0, a0, 263
  LA a1, seed
  FSW ft0, 36(sp)
  MULW t0, t0, t1
  ADDW t0, t0, t2
  REMW t0, t0, a0
  SW t0, 0(a1)
  BLT t0, zero, bb54
  # implict jump to bb11
bb11:   # loop depth 3
  LA t0, seed
  FCVT.S.W ft1, s1
  LW t0, 0(t0)
  FCVT.S.W ft0, t0
  FLW ft2, 12(sp)
  FDIV.S ft0, ft0, ft2
  FADD.S ft0, ft1, ft0
  FMUL.S ft0, fs5, ft0
  FLW ft1, 8(sp)
  FDIV.S fs1, ft0, ft1
  FLW ft0, 16(sp)
  FADD.S ft1, fs1, ft0
  FLW ft0, 60(sp)
  FLT.S t1, ft1, ft0
  FLT.S t0, fs5, ft1
  OR t0, t0, t1
  BNE t0, zero, bb53
  # implict jump to bb12
bb12:   # loop depth 3
  # implict jump to bb13
bb13:   # loop depth 3
  FSUB.S fa0, ft1, fs5
  FLT.S t0, fs4, ft1
  BNE t0, zero, bb52
  # implict jump to bb14
bb14:   # loop depth 3
  FSGNJ.S fa0, ft1, ft1
  # implict jump to bb15
bb15:   # loop depth 3
  FADD.S ft1, fa0, fs5
  FLW ft0, 20(sp)
  FLT.S t0, fa0, ft0
  BNE t0, zero, bb51
  # implict jump to bb16
bb16:   # loop depth 3
  # implict jump to bb17
bb17:   # loop depth 3
  FLW ft0, 60(sp)
  FLT.S s2, fs1, ft0
  FLT.S s0, fs5, fs1
  CALL my_sin_impl
  OR t0, s0, s2
  FSGNJ.D fs3, fa0, fa0
  BNE t0, zero, bb50
  # implict jump to bb18
bb18:   # loop depth 3
  # implict jump to bb19
bb19:   # loop depth 3
  LA t0, .CONSTANT.7.6
  LA t1, .CONSTANT.7.6
  LA t2, .CONSTANT.7.7
  LA a0, .CONSTANT.7.7
  FLW ft2, 0(t0)
  LA a1, .CONSTANT.7.8
  LA a2, .CONSTANT.7.8
  FLW ft3, 0(t1)
  FSUB.S ft1, fs1, fs5
  FLT.S t0, fs4, fs1
  FLW ft4, 0(t2)
  FSGNJ.S ft0, ft2, ft3
  FSW ft0, 40(sp)
  FLW ft2, 0(a0)
  FLW ft3, 0(a1)
  FSGNJ.S ft0, ft4, ft2
  FSW ft0, 0(sp)
  FLW ft2, 0(a2)
  FSGNJ.S ft0, ft3, ft2
  FSW ft0, 4(sp)
  BNE t0, zero, bb49
  # implict jump to bb20
bb20:   # loop depth 3
  # implict jump to bb21
bb21:   # loop depth 3
  FADD.S fa0, fs1, fs5
  FLW ft0, 20(sp)
  FLT.S t0, fs1, ft0
  BNE t0, zero, bb48
  # implict jump to bb22
bb22:   # loop depth 3
  FSGNJ.S fa0, fs1, fs1
  # implict jump to bb23
bb23:   # loop depth 3
  ADD s0, zero, zero
  FSGNJ.S fs1, fs2, fs2
  CALL my_sin_impl
  # implict jump to bb24
bb24:   # loop depth 4
  LA t0, .CONSTANT.7.5
  FLW ft0, 0(t0)
  SLTI t0, s0, 10
  FLT.S t1, fs1, ft0
  AND t0, t0, t1
  BNE t0, zero, bb36
  # implict jump to bb25
bb25:   # loop depth 3
  FSGNJ.S ft0, fs2, fs2
  # implict jump to bb26
bb26:   # loop depth 3
  ADDIW s1, s1, 1
  SLTI t0, s1, 24
  FLW ft1, 36(sp)
  FADD.S ft0, ft1, ft0
  BNE t0, zero, bb35
  # implict jump to bb27
bb27:   # loop depth 2
  FLW ft1, 8(sp)
  FDIV.S ft0, ft0, ft1
  LA t0, .CONSTANT.7.11
  ADDI t1, zero, 255
  FLW ft1, 0(t0)
  FMUL.S ft0, ft0, ft1
  FCVT.W.S a0, ft0, rtz
  BLT t1, a0, bb34
  # implict jump to bb28
bb28:   # loop depth 2
  # implict jump to bb29
bb29:   # loop depth 2
  ADDIW s3, s3, 1
  SLTI s0, s3, 192
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  BNE s0, zero, bb33
  # implict jump to bb30
bb30:   # loop depth 1
  ADDIW s0, s4, 1
  ADDI a0, zero, 10
  SLTI s1, s0, 192
  CALL putch
  BNE s1, zero, bb32
  # implict jump to bb31
bb31:   # loop depth 0
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  FLD fs1, 112(sp)
  FLD fs2, 120(sp)
  FLD fs3, 128(sp)
  FLD fs4, 136(sp)
  FLD fs5, 144(sp)
  FLD fs7, 152(sp)
  FLD fs8, 160(sp)
  FLD fs10, 168(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb32:   # loop depth 1
  JAL zero, bb8
bb33:   # loop depth 2
  JAL zero, bb9
bb34:   # loop depth 2
  ADDI a0, zero, 255
  JAL zero, bb29
bb35:   # loop depth 3
  JAL zero, bb10
bb36:   # loop depth 4
  FMUL.S ft2, fa0, fs1
  ADDI t0, zero, 10
  FMUL.S ft0, fs3, fs1
  FLW ft1, 28(sp)
  FADD.S ft3, ft1, ft2
  FLW ft1, 32(sp)
  FADD.S ft2, ft1, ft0
  FLW ft0, 0(sp)
  FSUB.S ft4, ft3, ft0
  FLW ft0, 0(sp)
  FSUB.S ft0, ft2, ft0
  FMUL.S ft4, ft4, ft4
  FMUL.S ft0, ft0, ft0
  FADD.S ft4, ft0, ft4
  FADD.S ft6, fs8, ft4
  FMUL.S ft5, fs10, ft4
  FDIV.S ft0, ft4, fs7
  FDIV.S ft5, ft5, ft6
  FLW ft1, 4(sp)
  FADD.S ft0, ft0, ft1
  FADD.S ft0, ft0, ft5
  # implict jump to bb37
bb37:   # loop depth 5
  ADDIW t0, t0, -1
  FDIV.S ft5, ft4, ft0
  FADD.S ft0, ft0, ft5
  FDIV.S ft0, ft0, fs10
  BNE t0, zero, bb47
  # implict jump to bb38
bb38:   # loop depth 4
  FLW ft1, 40(sp)
  FSUB.S ft4, ft3, ft1
  LA t1, .CONSTANT.7.9
  FLW ft1, 40(sp)
  FSUB.S ft2, ft2, ft1
  ADDI t0, zero, 10
  FLW ft3, 0(t1)
  FSUB.S ft3, ft0, ft3
  FMUL.S ft4, ft4, ft4
  FMUL.S ft0, ft2, ft2
  FADD.S ft4, ft0, ft4
  FADD.S ft5, fs8, ft4
  FMUL.S ft2, fs10, ft4
  FDIV.S ft0, ft4, fs7
  FDIV.S ft2, ft2, ft5
  FLW ft1, 4(sp)
  FADD.S ft0, ft0, ft1
  FADD.S ft0, ft0, ft2
  # implict jump to bb39
bb39:   # loop depth 5
  ADDIW t0, t0, -1
  FDIV.S ft2, ft4, ft0
  FADD.S ft0, ft0, ft2
  FDIV.S ft0, ft0, fs10
  BNE t0, zero, bb46
  # implict jump to bb40
bb40:   # loop depth 4
  LA t0, .CONSTANT.7.10
  FLW ft2, 0(t0)
  FSUB.S ft0, ft0, ft2
  FLT.S t0, ft3, ft0
  BNE t0, zero, bb45
  # implict jump to bb41
bb41:   # loop depth 4
  FSW ft0, 176(sp)
  FSW fs2, 180(sp)
  # implict jump to bb42
bb42:   # loop depth 4
  LA t0, .CONSTANT.7.0
  FLW ft0, 176(sp)
  FLW ft2, 0(t0)
  FLT.S t0, ft0, ft2
  BNE t0, zero, bb44
  # implict jump to bb43
bb43:   # loop depth 4
  FADD.S fs1, fs1, ft0
  ADDIW s0, s0, 1
  JAL zero, bb24
bb44:   # loop depth 3
  FLW ft0, 180(sp)
  JAL zero, bb26
bb45:   # loop depth 4
  FSW ft3, 176(sp)
  LA t0, .CONSTANT.7.1
  FLW ft0, 0(t0)
  FSW ft0, 180(sp)
  JAL zero, bb42
bb46:   # loop depth 5
  JAL zero, bb39
bb47:   # loop depth 5
  JAL zero, bb37
bb48:   # loop depth 3
  JAL zero, bb23
bb49:   # loop depth 3
  FSGNJ.S fs1, ft1, ft1
  JAL zero, bb21
bb50:   # loop depth 3
  FDIV.S ft0, fs1, fs5
  FCVT.W.S t0, ft0, rtz
  FCVT.S.W ft0, t0
  FMUL.S ft0, ft0, fs5
  FSUB.S fs1, fs1, ft0
  JAL zero, bb19
bb51:   # loop depth 3
  FSGNJ.S fa0, ft1, ft1
  JAL zero, bb17
bb52:   # loop depth 3
  JAL zero, bb15
bb53:   # loop depth 3
  FDIV.S ft2, ft1, fs5
  FCVT.W.S t0, ft2, rtz
  FCVT.S.W ft2, t0
  FMUL.S ft2, ft2, fs5
  FSUB.S ft1, ft1, ft2
  JAL zero, bb13
bb54:   # loop depth 3
  LA t0, seed
  LUI t1, 24414
  LA t2, seed
  ADDIW t1, t1, 263
  LW t0, 0(t0)
  ADDW t0, t0, t1
  SW t0, 0(t2)
  JAL zero, bb11
