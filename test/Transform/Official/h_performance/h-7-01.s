.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
o_buf:
.space 40000000
i_buf:
.space 40000000


.section .data


.CONSTANT.7.0:
.word 0x2edbe6ff
.CONSTANT.7.1:
.word 0x3f000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  LA s2, i_buf
  LA s1, o_buf
  ADDI s3, zero, 0
  ADD a0, s2, zero
  CALL getfarray
  ADD s0, a0, zero
  ADDI a0, zero, 33
  CALL _sysy_starttime
  BLT s3, s0, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  ADDI a0, zero, 41
  CALL _sysy_stoptime
  ADD a1, s1, zero
  ADD a0, s0, zero
  CALL putfarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb2:   # loop depth 0
  LA t0, .CONSTANT.7.0
  LA t1, .CONSTANT.7.0
  LA t2, .CONSTANT.7.1
  LA a0, .CONSTANT.7.1
  FLW ft0, 0(t0)
  ADDI a1, zero, 0
  ADDI t0, zero, 1
  FCVT.S.W ft4, a1
  FLW ft1, 0(t1)
  FCVT.S.W ft7, t0
  ADD t0, zero, zero
  FLW ft2, 0(t2)
  FSGNJ.S ft5, ft0, ft1
  FLW ft0, 0(a0)
  FSGNJ.S ft6, ft2, ft0
  # implict jump to bb3
bb3:   # loop depth 1
  SH2ADD t2, t0, s2
  SH2ADD t1, t0, s1
  FLW ft3, 0(t2)
  FLE.S t2, ft3, ft4
  BNE t2, zero, bb19
  # implict jump to bb4
bb4:   # loop depth 1
  FADD.S ft0, ft3, ft7
  FMUL.S ft0, ft0, ft6
  FSUB.S ft1, ft3, ft0
  FLT.S t2, ft3, ft0
  FSUB.S ft2, ft0, ft3
  BNE t2, zero, bb18
  # implict jump to bb5
bb5:   # loop depth 1
  FSGNJ.S ft2, ft1, ft1
  # implict jump to bb6
bb6:   # loop depth 1
  FLT.S t2, ft5, ft2
  BNE t2, zero, bb11
  # implict jump to bb7
bb7:   # loop depth 1
  # implict jump to bb8
bb8:   # loop depth 1
  # implict jump to bb9
bb9:   # loop depth 1
  ADDIW t0, t0, 1
  FSW ft0, 0(t1)
  BLT t0, s0, bb10
  JAL zero, bb1
bb10:   # loop depth 1
  JAL zero, bb3
bb11:   # loop depth 1
  FSGNJ.S ft2, ft3, ft3
  # implict jump to bb12
bb12:   # loop depth 2
  FDIV.S ft0, ft3, ft2
  FADD.S ft0, ft2, ft0
  FMUL.S ft0, ft0, ft6
  FSUB.S ft1, ft2, ft0
  FLT.S t2, ft2, ft0
  FSUB.S ft2, ft0, ft2
  BNE t2, zero, bb17
  # implict jump to bb13
bb13:   # loop depth 2
  FSGNJ.S ft2, ft1, ft1
  # implict jump to bb14
bb14:   # loop depth 2
  FLT.S t2, ft5, ft2
  BNE t2, zero, bb16
  # implict jump to bb15
bb15:   # loop depth 2
  JAL zero, bb8
bb16:   # loop depth 2
  FSGNJ.S ft2, ft0, ft0
  JAL zero, bb12
bb17:   # loop depth 2
  JAL zero, bb14
bb18:   # loop depth 1
  JAL zero, bb6
bb19:   # loop depth 1
  FSGNJ.S ft0, ft4, ft4
  ADDIW t0, t0, 1
  FSW ft0, 0(t1)
  BLT t0, s0, bb10
  JAL zero, bb1
