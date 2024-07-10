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
takFP:
  ADDI sp, sp, -80
  FSD fs4, 0(sp)
  SD ra, 8(sp)
  FSD fs3, 16(sp)
  SD s0, 24(sp)
  FSD fs2, 32(sp)
  FSD fs6, 40(sp)
  FSD fs1, 48(sp)
  FSD fs5, 56(sp)
  FSD fs0, 64(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  FSGNJ.D fs2, fa2, fa2
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb2
  # implict jump to bb1
bb1:
  FSGNJ.S fa0, fs2, fs2
  FLD fs4, 0(sp)
  LD ra, 8(sp)
  FLD fs3, 16(sp)
  LD s0, 24(sp)
  FLD fs2, 32(sp)
  FLD fs6, 40(sp)
  FLD fs1, 48(sp)
  FLD fs5, 56(sp)
  FLD fs0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb2:
  LA s0, .CONSTANT.7.0
  FLW fs3, 0(s0)
  FSUB.S fs4, fs0, fs3
  FSGNJ.S fa0, fs4, fs4
  FSGNJ.S fa1, fs1, fs1
  FSGNJ.S fa2, fs2, fs2
  CALL takFP
  FSGNJ.D fs3, fa0, fa0
  LA s0, .CONSTANT.7.0
  FLW fs4, 0(s0)
  FSUB.S fs5, fs1, fs4
  FSGNJ.S fa0, fs5, fs5
  FSGNJ.S fa1, fs2, fs2
  FSGNJ.S fa2, fs0, fs0
  CALL takFP
  FSGNJ.D fs4, fa0, fa0
  LA s0, .CONSTANT.7.0
  FLW fs5, 0(s0)
  FSUB.S fs6, fs2, fs5
  FSGNJ.S fa0, fs6, fs6
  FSGNJ.S fa1, fs0, fs0
  FSGNJ.S fa2, fs1, fs1
  CALL takFP
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs3, fs3
  FSGNJ.S fa1, fs4, fs4
  FSGNJ.S fa2, fs0, fs0
  CALL takFP
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  FLD fs4, 0(sp)
  LD ra, 8(sp)
  FLD fs3, 16(sp)
  LD s0, 24(sp)
  FLD fs2, 32(sp)
  FLD fs6, 40(sp)
  FLD fs1, 48(sp)
  FLD fs5, 56(sp)
  FLD fs0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -64
  FSD fs4, 0(sp)
  SD ra, 8(sp)
  FSD fs3, 16(sp)
  FSD fs1, 24(sp)
  FSD fs5, 32(sp)
  FSD fs0, 40(sp)
  SD s0, 48(sp)
  FSD fs2, 56(sp)
  ADDI a0, zero, 20
  CALL _sysy_starttime
  CALL getint
  ADD s0, a0, zero
  CALL getfloat
  FSGNJ.D fs0, fa0, fa0
  CALL getfloat
  FSGNJ.D fs1, fa0, fa0
  CALL getfloat
  FSGNJ.D fs2, fa0, fa0
  FCVT.S.W fs3, s0
  LA s0, .CONSTANT.7.1
  FLW fs4, 0(s0)
  FADD.S fs5, fs4, fs3
  FSGNJ.S fa0, fs5, fs5
  CALL fibFP
  FSGNJ.D fs3, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  FSGNJ.S fa2, fs2, fs2
  CALL takFP
  FSGNJ.D fs0, fa0, fa0
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  FEQ.S s0, fs3, fs1
  BNE s0, zero, bb9
  # implict jump to bb4
bb4:
  ADDI a0, zero, 1
  CALL putint
  # implict jump to bb5
bb5:
  LA s0, .CONSTANT.7.3
  FLW fs1, 0(s0)
  FEQ.S s0, fs0, fs1
  BNE s0, zero, bb8
  # implict jump to bb6
bb6:
  ADDI a0, zero, 1
  CALL putint
  # implict jump to bb7
bb7:
  ADDI a0, zero, 41
  CALL _sysy_stoptime
  ADD a0, zero, zero
  FLD fs4, 0(sp)
  LD ra, 8(sp)
  FLD fs3, 16(sp)
  FLD fs1, 24(sp)
  FLD fs5, 32(sp)
  FLD fs0, 40(sp)
  LD s0, 48(sp)
  FLD fs2, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb8:
  ADDI a0, zero, 112
  CALL putch
  JAL zero, bb7
bb9:
  ADDI a0, zero, 112
  CALL putch
  JAL zero, bb5
fibFP:
  ADDI sp, sp, -48
  FSD fs3, 0(sp)
  SD ra, 8(sp)
  FSD fs2, 16(sp)
  FSD fs1, 24(sp)
  SD s0, 32(sp)
  FSD fs0, 40(sp)
  FSGNJ.D fs0, fa0, fa0
  LA s0, .CONSTANT.7.3
  FLW fs1, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb12
  # implict jump to bb11
bb11:
  LA s0, .CONSTANT.7.3
  FLW fs1, 0(s0)
  FSUB.S fs2, fs0, fs1
  FSGNJ.S fa0, fs2, fs2
  CALL fibFP
  FSGNJ.D fs1, fa0, fa0
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FSUB.S fs3, fs0, fs2
  FSGNJ.S fa0, fs3, fs3
  CALL fibFP
  FSGNJ.D fs0, fa0, fa0
  FADD.S fs2, fs1, fs0
  FSGNJ.S fa0, fs2, fs2
  FLD fs3, 0(sp)
  LD ra, 8(sp)
  FLD fs2, 16(sp)
  FLD fs1, 24(sp)
  LD s0, 32(sp)
  FLD fs0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb12:
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FSGNJ.S fa0, fs1, fs2
  FLD fs3, 0(sp)
  LD ra, 8(sp)
  FLD fs2, 16(sp)
  FLD fs1, 24(sp)
  LD s0, 32(sp)
  FLD fs0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
