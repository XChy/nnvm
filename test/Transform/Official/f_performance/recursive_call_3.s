.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
  FSGNJ.S fa0, fs0, fs0
  ADDIW s0, a0, -1
  ADD a0, s0, zero
  CALL func
  ADD a0, s0, zero
  FADD.S fs0, fs0, fa0
  FSGNJ.S fa0, fs0, fs0
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
  LA t0, .CONSTANT.7.0
  LA t1, .CONSTANT.7.0
  ADDI a0, zero, 21
  FCVT.S.L fs1, zero
  FLW ft0, 0(t0)
  FLW ft1, 0(t1)
  FSGNJ.S fs0, ft0, ft1
  CALL _sysy_starttime
  CALL getint
  FSGNJ.S fa0, fs0, fs0
  CALL func
  FSUB.S ft0, fa0, fs0
  FEQ.S t0, ft0, fs1
  BNE t0, zero, bb5
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
