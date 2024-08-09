.global func
.global main
.section .bss

.section .data
.CONSTANT.7.0:
.word 0x3f8020c5
.section .text
func:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSGNJ.D fs0, fa0, fa0
  BLT a0, zero, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  ADDIW s0, a0, -1
  FSGNJ.S fa0, fs0, fs0
  ADD a0, s0, zero
  CALL func
  FADD.S fs0, fs0, fa0
  FSGNJ.S fa0, fs0, fs0
  ADD a0, s0, zero
  CALL func
  FSUB.S fa0, fs0, fa0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:   # loop depth 0
  FCVT.S.W fa0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  FSD fs0, 8(sp)
  FSD fs1, 16(sp)
  LA a0, .CONSTANT.7.0
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.0
  FLW fs1, 0(a0)
  FSGNJ.S fs1, fs0, fs1
  ADDI a0, zero, 21
  CALL _sysy_starttime
  CALL getint
  FSGNJ.S fa0, fs1, fs1
  CALL func
  FSGNJ.D fs0, fa0, fa0
  FSUB.S fs0, fs0, fs1
  FCVT.S.L fs1, zero
  FEQ.S a0, fs0, fs1
  BNE a0, zero, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  ADDI a0, zero, 32
  CALL _sysy_stoptime
  ADD a0, zero, zero
  LD ra, 0(sp)
  FLD fs0, 8(sp)
  FLD fs1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb5:   # loop depth 0
  ADDI a0, zero, 112
  CALL putch
  JAL zero, bb4
