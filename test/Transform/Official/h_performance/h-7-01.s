.global main
.section .bss
o_buf:
.space 40000000
i_buf:
.space 40000000


.section .data


.CONSTANT.7.0:
.word 0x3f000000
.CONSTANT.7.1:
.word 0x2edbe6ff
.section .text
main:
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
  CALL getfarray
  ADD s0, a0, zero
  ADDI a0, zero, 33
  CALL _sysy_starttime
  ADDI a0, zero, 0
  BLT a0, s0, bb2
  # implict jump to bb1
bb1:
  ADDI a0, zero, 41
  CALL _sysy_stoptime
  ADD a0, s0, zero
  LA a1, o_buf
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
bb2:
  ADDI a0, zero, 0
  FCVT.S.W fs2, a0
  ADD a0, zero, zero
  # implict jump to bb3
bb3:
  ADD s2, a0, zero
  SLLIW s3, s2, 2
  LA a0, o_buf
  ADD s1, a0, s3
  LA a0, i_buf
  ADD a0, a0, s3
  FLW fs3, 0(a0)
  FLE.S a0, fs3, fs2
  BNE a0, zero, bb19
  # implict jump to bb4
bb4:
  ADDI a0, zero, 1
  FCVT.S.W fs0, a0
  FADD.S fs1, fs3, fs0
  LA a0, .CONSTANT.7.0
  FLW fs0, 0(a0)
  FMUL.S fs1, fs1, fs0
  FLT.S a0, fs3, fs1
  BNE a0, zero, bb18
  # implict jump to bb5
bb5:
  FSUB.S fs0, fs3, fs1
  # implict jump to bb6
bb6:
  FSGNJ.S fs4, fs0, fs0
  LA a0, .CONSTANT.7.1
  FLW fs0, 0(a0)
  FLT.S a0, fs0, fs4
  BNE a0, zero, bb11
  # implict jump to bb7
bb7:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb8
bb8:
  # implict jump to bb9
bb9:
  FSW fs0, 0(s1)
  ADDIW a0, s2, 1
  BLT a0, s0, bb10
  JAL zero, bb1
bb10:
  JAL zero, bb3
bb11:
  FSGNJ.S fs0, fs3, fs3
  # implict jump to bb12
bb12:
  FSGNJ.S fs5, fs0, fs0
  FDIV.S fs0, fs3, fs5
  FADD.S fs1, fs5, fs0
  LA a0, .CONSTANT.7.0
  FLW fs0, 0(a0)
  FMUL.S fs4, fs1, fs0
  FLT.S a0, fs5, fs4
  BNE a0, zero, bb17
  # implict jump to bb13
bb13:
  FSUB.S fs0, fs5, fs4
  # implict jump to bb14
bb14:
  FSGNJ.S fs1, fs0, fs0
  LA a0, .CONSTANT.7.1
  FLW fs0, 0(a0)
  FLT.S a0, fs0, fs1
  BNE a0, zero, bb16
  # implict jump to bb15
bb15:
  FSGNJ.S fs0, fs4, fs4
  JAL zero, bb8
bb16:
  FSGNJ.S fs0, fs4, fs4
  JAL zero, bb12
bb17:
  FSUB.S fs0, fs4, fs5
  JAL zero, bb14
bb18:
  FSUB.S fs0, fs1, fs3
  JAL zero, bb6
bb19:
  FSGNJ.S fs0, fs2, fs2
  JAL zero, bb9
