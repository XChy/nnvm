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
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs3, 16(sp)
  FSD fs4, 24(sp)
  FSD fs5, 32(sp)
  FSD fs6, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s5, 80(sp)
  FSD fs0, 88(sp)
  FSD fs1, 96(sp)
  FSD fs2, 104(sp)
  LA s0, i_buf
  ADD a0, s0, zero
  CALL getfarray
  ADD s0, a0, zero
  ADDI a0, zero, 33
  CALL _sysy_starttime
  ADDI s1, zero, 0
  BLT s1, s0, bb2
  # implict jump to bb1
bb1:
  ADDI a0, zero, 41
  CALL _sysy_stoptime
  ADD a0, s0, zero
  LA s3, o_buf
  ADD a1, s3, zero
  CALL putfarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs3, 16(sp)
  FLD fs4, 24(sp)
  FLD fs5, 32(sp)
  FLD fs6, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  FLD fs0, 88(sp)
  FLD fs1, 96(sp)
  FLD fs2, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb2:
  ADDI s1, zero, 0
  FCVT.S.W fs0, s1
  ADD s1, zero, zero
  # implict jump to bb3
bb3:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  LA s4, o_buf
  ADD s4, s4, s3
  LA s5, i_buf
  ADD s3, s5, s3
  FLW fs1, 0(s3)
  FLE.S s3, fs1, fs0
  BNE s3, zero, bb19
  # implict jump to bb4
bb4:
  ADDI s3, zero, 1
  FCVT.S.W fs2, s3
  FADD.S fs2, fs1, fs2
  LA s3, .CONSTANT.7.0
  FLW fs3, 0(s3)
  FMUL.S fs2, fs2, fs3
  FLT.S s3, fs1, fs2
  BNE s3, zero, bb18
  # implict jump to bb5
bb5:
  FSUB.S fs3, fs1, fs2
  # implict jump to bb6
bb6:
  LA s3, .CONSTANT.7.1
  FLW fs4, 0(s3)
  FLT.S s3, fs4, fs3
  BNE s3, zero, bb11
  # implict jump to bb7
bb7:
  # implict jump to bb8
bb8:
  # implict jump to bb9
bb9:
  FSW fs2, 0(s4)
  ADDIW s2, s2, 1
  BLT s2, s0, bb10
  JAL zero, bb1
bb10:
  ADD s1, s2, zero
  JAL zero, bb3
bb11:
  FSGNJ.S fs3, fs1, fs1
  # implict jump to bb12
bb12:
  FSGNJ.S fs4, fs3, fs3
  FDIV.S fs5, fs1, fs4
  FADD.S fs5, fs4, fs5
  LA s3, .CONSTANT.7.0
  FLW fs6, 0(s3)
  FMUL.S fs5, fs5, fs6
  FLT.S s3, fs4, fs5
  BNE s3, zero, bb17
  # implict jump to bb13
bb13:
  FSUB.S fs6, fs4, fs5
  # implict jump to bb14
bb14:
  LA s3, .CONSTANT.7.1
  FLW fs4, 0(s3)
  FLT.S s3, fs4, fs6
  BNE s3, zero, bb16
  # implict jump to bb15
bb15:
  FSGNJ.S fs2, fs5, fs5
  JAL zero, bb8
bb16:
  FSGNJ.S fs3, fs5, fs5
  JAL zero, bb12
bb17:
  FSUB.S fs4, fs5, fs4
  FSGNJ.S fs6, fs4, fs4
  JAL zero, bb14
bb18:
  FSUB.S fs4, fs2, fs1
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb6
bb19:
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb9
