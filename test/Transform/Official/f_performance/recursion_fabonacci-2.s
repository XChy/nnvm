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
takFP:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs2, 32(sp)
  FSD fs3, 40(sp)
  FSD fs4, 48(sp)
  FLT.S s0, fa1, fa0
  BNE s0, zero, bb3
  # implict jump to bb1
bb1:
  FSGNJ.S fa0, fa2, fa2
  # implict jump to bb2
bb2:
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  FLD fs4, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb3:
  FSGNJ.S fs3, fa0, fa0
  FSGNJ.S fs1, fa1, fa1
  FSGNJ.S fs0, fa2, fa2
  # implict jump to bb4
bb4:
  LA s0, .CONSTANT.7.0
  FLW fa0, 0(s0)
  FSUB.S fa0, fs3, fa0
  FSGNJ.S fa1, fs1, fs1
  FSGNJ.S fa2, fs0, fs0
  CALL takFP
  FSGNJ.D fs4, fa0, fa0
  LA s0, .CONSTANT.7.0
  FLW fa0, 0(s0)
  FSUB.S fa0, fs1, fa0
  FSGNJ.S fa1, fs0, fs0
  FSGNJ.S fa2, fs3, fs3
  CALL takFP
  FSGNJ.D fs2, fa0, fa0
  LA s0, .CONSTANT.7.0
  FLW fa0, 0(s0)
  FSUB.S fa0, fs0, fa0
  FSGNJ.S fa1, fs3, fs3
  FSGNJ.S fa2, fs1, fs1
  CALL takFP
  FLT.S s0, fs2, fs4
  BNE s0, zero, bb6
  # implict jump to bb5
bb5:
  JAL zero, bb2
bb6:
  FSGNJ.S fs3, fs4, fs4
  FSGNJ.S fs1, fs2, fs2
  FSGNJ.S fs0, fa0, fa0
  JAL zero, bb4
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs2, 32(sp)
  FSD fs3, 40(sp)
  ADDI a0, zero, 20
  CALL _sysy_starttime
  CALL getint
  ADD s0, a0, zero
  CALL getfloat
  FSGNJ.D fs2, fa0, fa0
  CALL getfloat
  FSGNJ.D fs1, fa0, fa0
  CALL getfloat
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.W fa0, s0
  LA s0, .CONSTANT.7.1
  FLW fs3, 0(s0)
  FADD.S fa0, fs3, fa0
  CALL fibFP
  FSGNJ.D fs3, fa0, fa0
  FSGNJ.S fa0, fs2, fs2
  FSGNJ.S fa1, fs1, fs1
  FSGNJ.S fa2, fs0, fs0
  CALL takFP
  FSGNJ.D fs0, fa0, fa0
  LA a0, .CONSTANT.7.2
  FLW fs1, 0(a0)
  FEQ.S a0, fs3, fs1
  BNE a0, zero, bb13
  # implict jump to bb8
bb8:
  ADDI a0, zero, 1
  CALL putint
  # implict jump to bb9
bb9:
  LA a0, .CONSTANT.7.0
  FLW fs1, 0(a0)
  FEQ.S a0, fs0, fs1
  BNE a0, zero, bb12
  # implict jump to bb10
bb10:
  ADDI a0, zero, 1
  CALL putint
  # implict jump to bb11
bb11:
  ADDI a0, zero, 41
  CALL _sysy_stoptime
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb12:
  ADDI a0, zero, 112
  CALL putch
  JAL zero, bb11
bb13:
  ADDI a0, zero, 112
  CALL putch
  JAL zero, bb9
fibFP:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSGNJ.D fs1, fa0, fa0
  LA s0, .CONSTANT.7.3
  FLW fa0, 0(s0)
  FLT.S s0, fs1, fa0
  BNE s0, zero, bb16
  # implict jump to bb15
bb15:
  LA s0, .CONSTANT.7.3
  FLW fa0, 0(s0)
  FSUB.S fa0, fs1, fa0
  CALL fibFP
  FSGNJ.D fs0, fa0, fa0
  LA s0, .CONSTANT.7.0
  FLW fa0, 0(s0)
  FSUB.S fa0, fs1, fa0
  CALL fibFP
  FADD.S fa0, fs0, fa0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb16:
  LA t0, .CONSTANT.7.0
  FLW ft0, 0(t0)
  LA t0, .CONSTANT.7.0
  FLW ft1, 0(t0)
  FSGNJ.S fa0, ft0, ft1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
