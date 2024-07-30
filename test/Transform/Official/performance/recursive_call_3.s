.global func
.global main
.section .bss

.section .data
.CONSTANT.7.0:
.word 0x3f8020c5
.section .text
func:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  FSD fs0, 24(sp)
  FSD fs1, 32(sp)
  FSGNJ.D fs0, fa0, fa0
  ADD s0, a0, zero
  BLT s0, zero, bb2
  # implict jump to bb1
bb1:
  ADDI s1, zero, 1
  SUBW s0, s0, s1
  FSGNJ.S fa0, fs0, fs0
  ADD a0, s0, zero
  CALL func
  FSGNJ.D fs1, fa0, fa0
  FADD.S fs0, fs0, fs1
  FSGNJ.S fa0, fs0, fs0
  ADD a0, s0, zero
  CALL func
  FSGNJ.D fs1, fa0, fa0
  FSUB.S fs0, fs0, fs1
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  FLD fs0, 24(sp)
  FLD fs1, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb2:
  FCVT.S.W fs0, zero
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  FLD fs0, 24(sp)
  FLD fs1, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  FSD fs0, 24(sp)
  FSD fs1, 32(sp)
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
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FSUB.S fs0, fs0, fs1
  FCVT.S.L fs1, zero
  FEQ.S s0, fs0, fs1
  BNE s0, zero, bb5
  # implict jump to bb4
bb4:
  ADDI a0, zero, 32
  CALL _sysy_stoptime
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  FLD fs0, 24(sp)
  FLD fs1, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb5:
  ADDI a0, zero, 112
  CALL putch
  JAL zero, bb4