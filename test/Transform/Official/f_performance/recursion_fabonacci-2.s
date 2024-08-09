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
.word 0x4c151c0a
.CONSTANT.7.3:
.word 0x40000000
.section .text
takFP:   # loop depth 0
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  FSD fs0, 24(sp)
  FSD fs1, 32(sp)
  FSD fs2, 40(sp)
  FSD fs3, 48(sp)
  FSD fs4, 56(sp)
  FSD fs5, 64(sp)
  FSD fs6, 72(sp)
  FLT.S s0, fa1, fa0
  BNE s0, zero, bb3
  # implict jump to bb1
bb1:   # loop depth 0
  FSGNJ.S fa0, fa2, fa2
  # implict jump to bb2
bb2:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  FLD fs0, 24(sp)
  FLD fs1, 32(sp)
  FLD fs2, 40(sp)
  FLD fs3, 48(sp)
  FLD fs4, 56(sp)
  FLD fs5, 64(sp)
  FLD fs6, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb3:   # loop depth 0
  LA s0, .CONSTANT.7.0
  LA s1, .CONSTANT.7.0
  FSGNJ.S fs2, fa0, fa0
  FLW fa0, 0(s0)
  FSGNJ.S fs1, fa1, fa1
  FSGNJ.S fs0, fa2, fa2
  FLW fa1, 0(s1)
  FSGNJ.S fs6, fa0, fa1
  # implict jump to bb4
bb4:   # loop depth 1
  FSUB.S fa0, fs2, fs6
  FSUB.S fs5, fs1, fs6
  FSGNJ.S fa1, fs1, fs1
  FSGNJ.S fa2, fs0, fs0
  FSUB.S fs4, fs0, fs6
  CALL takFP
  FSGNJ.D fs3, fa0, fa0
  FSGNJ.S fa1, fs0, fs0
  FSGNJ.S fa2, fs2, fs2
  FSGNJ.S fa0, fs5, fs5
  CALL takFP
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa1, fs2, fs2
  FLT.S s0, fs0, fs3
  FSGNJ.S fa2, fs1, fs1
  FSGNJ.S fa0, fs4, fs4
  CALL takFP
  BNE s0, zero, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  JAL zero, bb2
bb6:   # loop depth 1
  FSGNJ.S fs2, fs3, fs3
  FSGNJ.S fs1, fs0, fs0
  FSGNJ.S fs0, fa0, fa0
  JAL zero, bb4
main:   # loop depth 0
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  FSD fs0, 32(sp)
  FSD fs1, 40(sp)
  FSD fs2, 48(sp)
  FSD fs3, 56(sp)
  FSD fs4, 64(sp)
  ADDI a0, zero, 20
  LA s1, .CONSTANT.7.1
  LA s2, .CONSTANT.7.2
  CALL _sysy_starttime
  CALL getint
  ADD s0, a0, zero
  CALL getfloat
  FCVT.S.W fs3, s0
  FSGNJ.D fs2, fa0, fa0
  CALL getfloat
  FSGNJ.D fs1, fa0, fa0
  CALL getfloat
  FLW fs4, 0(s1)
  FSGNJ.D fs0, fa0, fa0
  FADD.S fa0, fs4, fs3
  CALL fibFP
  FSGNJ.D fs3, fa0, fa0
  FSGNJ.S fa1, fs1, fs1
  FSGNJ.S fa2, fs0, fs0
  FSGNJ.S fa0, fs2, fs2
  CALL takFP
  FLW fs1, 0(s2)
  FSGNJ.D fs0, fa0, fa0
  FEQ.S a0, fs3, fs1
  BNE a0, zero, bb13
  # implict jump to bb8
bb8:   # loop depth 0
  ADDI a0, zero, 1
  CALL putint
  # implict jump to bb9
bb9:   # loop depth 0
  LA a0, .CONSTANT.7.0
  FLW fs1, 0(a0)
  FEQ.S a0, fs0, fs1
  BNE a0, zero, bb12
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
  FLD fs4, 64(sp)
  ADDI sp, sp, 80
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
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  FSD fs0, 40(sp)
  FSD fs1, 48(sp)
  FSD fs2, 56(sp)
  LA s0, .CONSTANT.7.3
  LA s1, .CONSTANT.7.3
  LA s2, .CONSTANT.7.0
  LA s3, .CONSTANT.7.0
  FLW fs0, 0(s0)
  FLW fs1, 0(s1)
  FSGNJ.S fs1, fs0, fs1
  FLW fs0, 0(s2)
  FLW fs2, 0(s3)
  FLT.S s0, fa0, fs1
  FSGNJ.S fs0, fs0, fs2
  BNE s0, zero, bb16
  # implict jump to bb15
bb15:   # loop depth 0
  FSUB.S fs1, fa0, fs1
  FSUB.S fs0, fa0, fs0
  FSGNJ.S fa0, fs1, fs1
  CALL fibFP
  FSGNJ.D fs1, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  CALL fibFP
  FADD.S fa0, fs1, fa0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  FLD fs0, 40(sp)
  FLD fs1, 48(sp)
  FLD fs2, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb16:   # loop depth 0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  FLD fs0, 40(sp)
  FLD fs1, 48(sp)
  FLD fs2, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
