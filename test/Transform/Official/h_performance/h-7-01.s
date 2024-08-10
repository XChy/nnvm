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
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  FSD fs0, 40(sp)
  FSD fs1, 48(sp)
  FSD fs2, 56(sp)
  FSD fs3, 64(sp)
  FSD fs4, 72(sp)
  FSD fs5, 80(sp)
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
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  FLD fs0, 40(sp)
  FLD fs1, 48(sp)
  FLD fs2, 56(sp)
  FLD fs3, 64(sp)
  FLD fs4, 72(sp)
  FLD fs5, 80(sp)
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
  LA s2, i_buf
  SLLIW s0, a0, 2
  LA s3, o_buf
  ADD s2, s2, s0
  FLW fs2, 0(s2)
  ADD s0, s3, s0
  FLE.S s2, fs2, fs5
  BNE s2, zero, bb19
  # implict jump to bb4
bb4:   # loop depth 1
  ADDI s2, zero, 1
  FCVT.S.W fs0, s2
  FADD.S fs0, fs2, fs0
  FMUL.S fs1, fs0, fs4
  FLT.S s2, fs2, fs1
  BNE s2, zero, bb18
  # implict jump to bb5
bb5:   # loop depth 1
  FSUB.S fs0, fs2, fs1
  # implict jump to bb6
bb6:   # loop depth 1
  FLT.S s2, fs3, fs0
  BNE s2, zero, bb11
  # implict jump to bb7
bb7:   # loop depth 1
  # implict jump to bb8
bb8:   # loop depth 1
  # implict jump to bb9
bb9:   # loop depth 1
  ADDIW a0, a0, 1
  FSW fs1, 0(s0)
  BLT a0, s1, bb10
  JAL zero, bb1
bb10:   # loop depth 1
  JAL zero, bb3
bb11:   # loop depth 1
  FSGNJ.S fs0, fs2, fs2
  # implict jump to bb12
bb12:   # loop depth 2
  FDIV.S fs1, fs2, fs0
  FADD.S fs1, fs0, fs1
  FMUL.S fs1, fs1, fs4
  FLT.S s2, fs0, fs1
  BNE s2, zero, bb17
  # implict jump to bb13
bb13:   # loop depth 2
  FSUB.S fs0, fs0, fs1
  # implict jump to bb14
bb14:   # loop depth 2
  FLT.S s2, fs3, fs0
  BNE s2, zero, bb16
  # implict jump to bb15
bb15:   # loop depth 1
  JAL zero, bb8
bb16:   # loop depth 2
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb12
bb17:   # loop depth 2
  FSUB.S fs0, fs1, fs0
  JAL zero, bb14
bb18:   # loop depth 1
  FSUB.S fs0, fs1, fs2
  JAL zero, bb6
bb19:   # loop depth 1
  FSGNJ.S fs1, fs5, fs5
  JAL zero, bb9
