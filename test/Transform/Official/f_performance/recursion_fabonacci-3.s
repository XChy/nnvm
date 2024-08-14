.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global takFP
.global main
.global fibFP
.section .bss




.section .data
.CONSTANT.7.0:
.word 0x3f800000
.CONSTANT.7.1:
.word 0x41e00000
.CONSTANT.7.2:
.word 0x4d1de8d6
.CONSTANT.7.3:
.word 0x40000000
.section .text
takFP:   # loop depth 0
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs2, 32(sp)
  FSD fs3, 40(sp)
  FSD fs4, 48(sp)
  FSD fs5, 56(sp)
  FSD fs6, 64(sp)
  FLT.S t0, fa1, fa0
  BNE t0, zero, bb3
  # implict jump to bb1
bb1:   # loop depth 0
  FSGNJ.S fa0, fa2, fa2
  # implict jump to bb2
bb2:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  FLD fs4, 48(sp)
  FLD fs5, 56(sp)
  FLD fs6, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb3:   # loop depth 0
  LA t0, .CONSTANT.7.0
  LA t1, .CONSTANT.7.0
  FSGNJ.S fs2, fa2, fa2
  FLW ft0, 0(t0)
  FSGNJ.S fs1, fa1, fa1
  FSGNJ.S fs0, fa0, fa0
  FLW ft1, 0(t1)
  FSGNJ.S fs5, ft0, ft1
  # implict jump to bb4
bb4:   # loop depth 1
  FSUB.S fa0, fs0, fs5
  FSUB.S fs4, fs1, fs5
  FSGNJ.S fa1, fs1, fs1
  FSGNJ.S fa2, fs2, fs2
  FSUB.S fs6, fs2, fs5
  CALL takFP
  FSGNJ.S fa2, fs0, fs0
  FSGNJ.S fa1, fs2, fs2
  FSGNJ.D fs3, fa0, fa0
  FSGNJ.S fa0, fs4, fs4
  CALL takFP
  FSGNJ.D fs4, fa0, fa0
  FLT.S s0, fs4, fs3
  FSGNJ.S fa2, fs1, fs1
  FSGNJ.S fa1, fs0, fs0
  FSGNJ.S fa0, fs6, fs6
  CALL takFP
  BNE s0, zero, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  JAL zero, bb2
bb6:   # loop depth 1
  FSGNJ.S fs2, fa0, fa0
  FSGNJ.S fs1, fs4, fs4
  FSGNJ.S fs0, fs3, fs3
  JAL zero, bb4
main:   # loop depth 0
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  FSD fs0, 32(sp)
  FSD fs1, 40(sp)
  FSD fs2, 48(sp)
  FSD fs3, 56(sp)
  ADDI a0, zero, 20
  LA s1, .CONSTANT.7.1
  LA s2, .CONSTANT.7.2
  CALL _sysy_starttime
  CALL getint
  ADD s0, a0, zero
  CALL getfloat
  FCVT.S.W fs3, s0
  FSGNJ.D fs0, fa0, fa0
  CALL getfloat
  FSGNJ.D fs1, fa0, fa0
  CALL getfloat
  FLW ft0, 0(s1)
  FSGNJ.D fs2, fa0, fa0
  FADD.S fa0, fs3, ft0
  CALL fibFP
  FSGNJ.S fa2, fs2, fs2
  FSGNJ.S fa1, fs1, fs1
  FSGNJ.D fs1, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  CALL takFP
  FLW ft0, 0(s2)
  FSGNJ.D fs0, fa0, fa0
  FEQ.S t0, fs1, ft0
  BNE t0, zero, bb13
  # implict jump to bb8
bb8:   # loop depth 0
  ADDI a0, zero, 1
  CALL putint
  # implict jump to bb9
bb9:   # loop depth 0
  LA t0, .CONSTANT.7.3
  FLW ft0, 0(t0)
  FEQ.S t0, fs0, ft0
  BNE t0, zero, bb12
  # implict jump to bb10
bb10:   # loop depth 0
  ADDI a0, zero, 1
  CALL putint
  # implict jump to bb11
bb11:   # loop depth 0
  ADDI a0, zero, 41
  CALL _sysy_stoptime
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  FLD fs0, 32(sp)
  FLD fs1, 40(sp)
  FLD fs2, 48(sp)
  FLD fs3, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb12:   # loop depth 0
  ADDI a0, zero, 112
  CALL putch
  JAL zero, bb11
bb13:   # loop depth 0
  ADDI a0, zero, 112
  CALL putch
  JAL zero, bb9
fibFP:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  FSD fs0, 8(sp)
  FSD fs1, 16(sp)
  LA t0, .CONSTANT.7.3
  LA t1, .CONSTANT.7.3
  LA t2, .CONSTANT.7.0
  LA a0, .CONSTANT.7.0
  FLW ft0, 0(t0)
  FLW ft1, 0(t1)
  FLW ft2, 0(t2)
  FSGNJ.S ft0, ft0, ft1
  FLT.S t0, fa0, ft0
  FLW ft1, 0(a0)
  FSGNJ.S ft1, ft2, ft1
  BNE t0, zero, bb16
  # implict jump to bb15
bb15:   # loop depth 0
  FSUB.S ft0, fa0, ft0
  FSUB.S fs0, fa0, ft1
  FSGNJ.S fa0, ft0, ft0
  CALL fibFP
  FSGNJ.D fs1, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  CALL fibFP
  FADD.S fa0, fs1, fa0
  LD ra, 0(sp)
  FLD fs0, 8(sp)
  FLD fs1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb16:   # loop depth 0
  FSGNJ.S fa0, ft1, ft1
  LD ra, 0(sp)
  FLD fs0, 8(sp)
  FLD fs1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
