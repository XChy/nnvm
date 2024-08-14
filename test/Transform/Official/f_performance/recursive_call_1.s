.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global func
.global main
.section .bss


.section .data
.CONSTANT.7.0:
.word 0x3f8020c5
.CONSTANT.7.1:
.word 0x00000000
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
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  FSD fs0, 32(sp)
  ADDI a0, zero, 21
  LA s0, .CONSTANT.7.0
  LA s1, .CONSTANT.7.0
  LA s2, .CONSTANT.7.1
  FCVT.S.L fs0, zero
  CALL _sysy_starttime
  CALL getint
  FLW ft0, 0(s0)
  FLW ft1, 0(s1)
  FSGNJ.S fa0, ft0, ft1
  CALL func
  FLW ft0, 0(s2)
  FSUB.S ft0, fa0, ft0
  FEQ.S t0, ft0, fs0
  BNE t0, zero, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  ADDI a0, zero, 32
  CALL _sysy_stoptime
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  FLD fs0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb5:   # loop depth 0
  ADDI a0, zero, 112
  CALL putch
  JAL zero, bb4
