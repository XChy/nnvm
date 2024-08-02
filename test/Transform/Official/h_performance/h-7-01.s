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
  ADDI sp, sp, -80
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb2:
  ADDI a0, zero, 0
  FCVT.S.W fs0, a0
  ADD a0, zero, zero
  # implict jump to bb3
bb3:
  SLLIW s1, a0, 2
  LA s2, o_buf
  ADD s2, s2, s1
  LA s3, i_buf
  ADD s1, s3, s1
  FLW fs1, 0(s1)
  FLE.S s1, fs1, fs0
  BNE s1, zero, bb19
  # implict jump to bb4
bb4:
  ADDI s1, zero, 1
  FCVT.S.W fs2, s1
  FADD.S fs2, fs1, fs2
  LA s1, .CONSTANT.7.0
  FLW fs3, 0(s1)
  FMUL.S fs2, fs2, fs3
  FLT.S s1, fs1, fs2
  BNE s1, zero, bb18
  # implict jump to bb5
bb5:
  FSUB.S fs3, fs1, fs2
  # implict jump to bb6
bb6:
  LA s1, .CONSTANT.7.1
  FLW fs4, 0(s1)
  FLT.S s1, fs4, fs3
  BNE s1, zero, bb11
  # implict jump to bb7
bb7:
  FSGNJ.S fs1, fs2, fs2
  # implict jump to bb8
bb8:
  # implict jump to bb9
bb9:
  FSW fs1, 0(s2)
  ADDIW a0, a0, 1
  BLT a0, s0, bb10
  JAL zero, bb1
bb10:
  JAL zero, bb3
bb11:
  FSGNJ.S fs2, fs1, fs1
  # implict jump to bb12
bb12:
  FDIV.S fs3, fs1, fs2
  FADD.S fs3, fs2, fs3
  LA s1, .CONSTANT.7.0
  FLW fs4, 0(s1)
  FMUL.S fs3, fs3, fs4
  FLT.S s1, fs2, fs3
  BNE s1, zero, bb17
  # implict jump to bb13
bb13:
  FSUB.S fs2, fs2, fs3
  # implict jump to bb14
bb14:
  LA s1, .CONSTANT.7.1
  FLW fs4, 0(s1)
  FLT.S s1, fs4, fs2
  BNE s1, zero, bb16
  # implict jump to bb15
bb15:
  FSGNJ.S fs1, fs3, fs3
  JAL zero, bb8
bb16:
  FSGNJ.S fs2, fs3, fs3
  JAL zero, bb12
bb17:
  FSUB.S fs2, fs3, fs2
  JAL zero, bb14
bb18:
  FSUB.S fs3, fs2, fs1
  JAL zero, bb6
bb19:
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb9
