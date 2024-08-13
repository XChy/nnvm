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
  ADDI sp, sp, -96
  SD ra, 0(sp)
  FSD fs3, 8(sp)
  FSD fs4, 16(sp)
  FSD fs5, 24(sp)
  FSD fs6, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  FSD fs0, 72(sp)
  FSD fs1, 80(sp)
  FSD fs2, 88(sp)
  LA a0, i_buf
  ADDI s0, zero, 0
  CALL getfarray
  ADD s1, a0, zero
  ADDI a0, zero, 33
  CALL _sysy_starttime
  BLT s0, s1, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  LA s0, o_buf
  ADDI a0, zero, 41
  CALL _sysy_stoptime
  ADD a1, s0, zero
  ADD a0, s1, zero
  CALL putfarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  FLD fs3, 8(sp)
  FLD fs4, 16(sp)
  FLD fs5, 24(sp)
  FLD fs6, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  FLD fs0, 72(sp)
  FLD fs1, 80(sp)
  FLD fs2, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb2:   # loop depth 0
  LA a0, .CONSTANT.7.0
  LA s0, .CONSTANT.7.0
  LA s2, .CONSTANT.7.1
  LA s3, .CONSTANT.7.1
  FLW fs0, 0(a0)
  ADDI a0, zero, 0
  FCVT.S.W fs5, a0
  ADD a0, zero, zero
  FLW fs1, 0(s0)
  FLW fs2, 0(s2)
  FSGNJ.S fs3, fs0, fs1
  FLW fs0, 0(s3)
  FSGNJ.S fs4, fs2, fs0
  # implict jump to bb3
bb3:   # loop depth 1
  LA s0, i_buf
  LA s2, o_buf
  SH2ADD s0, a0, s0
  FLW fs6, 0(s0)
  SH2ADD s0, a0, s2
  FLE.S s2, fs6, fs5
  BNE s2, zero, bb19
  # implict jump to bb4
bb4:   # loop depth 1
  ADDI s2, zero, 1
  FCVT.S.W fs0, s2
  FADD.S fs0, fs6, fs0
  FMUL.S fs0, fs0, fs4
  FSUB.S fs1, fs6, fs0
  FLT.S s2, fs6, fs0
  FSUB.S fs2, fs0, fs6
  BNE s2, zero, bb18
  # implict jump to bb5
bb5:   # loop depth 1
  FSGNJ.S fs2, fs1, fs1
  # implict jump to bb6
bb6:   # loop depth 1
  FLT.S s2, fs3, fs2
  BNE s2, zero, bb11
  # implict jump to bb7
bb7:   # loop depth 1
  # implict jump to bb8
bb8:   # loop depth 1
  # implict jump to bb9
bb9:   # loop depth 1
  ADDIW a0, a0, 1
  FSW fs0, 0(s0)
  BLT a0, s1, bb10
  JAL zero, bb1
bb10:   # loop depth 1
  JAL zero, bb3
bb11:   # loop depth 1
  FSGNJ.S fs2, fs6, fs6
  # implict jump to bb12
bb12:   # loop depth 2
  FDIV.S fs0, fs6, fs2
  FADD.S fs0, fs2, fs0
  FMUL.S fs0, fs0, fs4
  FSUB.S fs1, fs2, fs0
  FLT.S s2, fs2, fs0
  FSUB.S fs2, fs0, fs2
  BNE s2, zero, bb17
  # implict jump to bb13
bb13:   # loop depth 2
  FSGNJ.S fs2, fs1, fs1
  # implict jump to bb14
bb14:   # loop depth 2
  FLT.S s2, fs3, fs2
  BNE s2, zero, bb16
  # implict jump to bb15
bb15:   # loop depth 1
  JAL zero, bb8
bb16:   # loop depth 2
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb12
bb17:   # loop depth 2
  JAL zero, bb14
bb18:   # loop depth 1
  JAL zero, bb6
bb19:   # loop depth 1
  FSGNJ.S fs0, fs5, fs5
  JAL zero, bb9
