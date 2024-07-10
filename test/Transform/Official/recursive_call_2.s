.global func
.global main
.global myabs
.section .bss


.section .data
.CONSTANT.7.0:
.word 0x3f8020c5
.CONSTANT.7.1:
.word 0x00000000
.section .text
func:
  ADDI sp, sp, -64
  FSD fs1, 0(sp)
  SD ra, 8(sp)
  SD s1, 16(sp)
  FSD fs2, 24(sp)
  SD s0, 32(sp)
  SD s2, 40(sp)
  FSD fs0, 48(sp)
  FSGNJ.D fs0, fa0, fa0
  ADD s0, a0, zero
  SLT s1, s0, zero
  BNE s1, zero, bb2
  # implict jump to bb1
bb1:
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  FSGNJ.S fa0, fs0, fs0
  ADD a0, s2, zero
  CALL func
  FSGNJ.D fs1, fa0, fa0
  FADD.S fs2, fs0, fs1
  FSGNJ.S fa0, fs2, fs2
  ADD a0, s2, zero
  CALL func
  FSGNJ.D fs0, fa0, fa0
  FSUB.S fs1, fs2, fs0
  FSGNJ.S fa0, fs1, fs1
  FLD fs1, 0(sp)
  LD ra, 8(sp)
  LD s1, 16(sp)
  FLD fs2, 24(sp)
  LD s0, 32(sp)
  LD s2, 40(sp)
  FLD fs0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb2:
  FCVT.S.W fs0, zero
  FSGNJ.S fa0, fs0, fs0
  FLD fs1, 0(sp)
  LD ra, 8(sp)
  LD s1, 16(sp)
  FLD fs2, 24(sp)
  LD s0, 32(sp)
  LD s2, 40(sp)
  FLD fs0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  FSD fs1, 8(sp)
  FSD fs0, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  FSD fs2, 40(sp)
  ADDI a0, zero, 21
  CALL _sysy_starttime
  CALL getint
  ADD s0, a0, zero
  LA s1, .CONSTANT.7.0
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs1, 0(s1)
  FSGNJ.S fa0, fs0, fs1
  ADD a0, s0, zero
  CALL func
  FSGNJ.D fs0, fa0, fa0
  LA s0, .CONSTANT.7.1
  FLW fs1, 0(s0)
  FSUB.S fs2, fs0, fs1
  FCVT.S.L fs0, zero
  FEQ.S s0, fs2, fs0
  BNE s0, zero, bb5
  # implict jump to bb4
bb4:
  ADDI a0, zero, 32
  CALL _sysy_stoptime
  ADD a0, zero, zero
  LD ra, 0(sp)
  FLD fs1, 8(sp)
  FLD fs0, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  FLD fs2, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb5:
  ADDI a0, zero, 112
  CALL putch
  JAL zero, bb4
myabs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs1, 16(sp)
  FSD fs0, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb10
  # implict jump to bb7
bb7:
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb9
  # implict jump to bb8
bb8:
bb9:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb10:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
