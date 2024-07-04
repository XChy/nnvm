.global long_array
.global main
.section .bss

.section .data
N:
.word 0x00002710
.section .text
long_array:
  LUI t0, 1048547
  ADDI t0, t0, -1312
  ADD sp, sp, t0
  LUI t5, 29
  ADDI t5, t5, 1256
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t6, 29
  ADDI t6, t6, 1264
  ADD t6, t6, sp
  SD s4, 0(t6)
  LUI t5, 29
  ADDI t5, t5, 1272
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t6, 29
  ADDI t6, t6, 1280
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t5, 29
  ADDI t5, t5, 1288
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t6, 29
  ADDI t6, t6, 1296
  ADD t6, t6, sp
  SD s0, 0(t6)
  ADD s0, a0, zero
  LUI t5, 29
  ADDI t5, t5, 1248
  ADD t5, t5, sp
  SW s0, 0(t5)
  ADDI s0, zero, 0
  SW s0, 24(sp)
  JAL zero, bb1
bb1:
  LW s0, 24(sp)
  LA s1, N
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  LW s0, 24(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LUI t6, 20
  ADDI t6, t6, -1888
  ADD t6, t6, sp
  ADD s0, t6, s2
  LW s1, 24(sp)
  LW s2, 24(sp)
  MULW s3, s1, s2
  ADDI s1, zero, 10
  REMW s2, s3, s1
  SW s2, 0(s0)
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  SW s1, 24(sp)
  JAL zero, bb1
bb3:
  ADDI s0, zero, 0
  SW s0, 24(sp)
  JAL zero, bb4
bb4:
  LW s0, 24(sp)
  LA s1, N
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb5
  JAL zero, bb6
bb5:
  LW s0, 24(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LUI t5, 10
  ADDI t5, t5, -928
  ADD t5, t5, sp
  ADD s0, t5, s2
  LW s1, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LUI t6, 20
  ADDI t6, t6, -1888
  ADD t6, t6, sp
  ADD s1, t6, s3
  LW s2, 0(s1)
  LW s1, 24(sp)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  LUI t5, 20
  ADDI t5, t5, -1888
  ADD t5, t5, sp
  ADD s1, t5, s4
  LW s3, 0(s1)
  MULW s1, s2, s3
  ADDI s2, zero, 10
  REMW s3, s1, s2
  SW s3, 0(s0)
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  SW s1, 24(sp)
  JAL zero, bb4
bb6:
  ADDI s0, zero, 0
  SW s0, 24(sp)
  JAL zero, bb7
bb7:
  LW s0, 24(sp)
  LA s1, N
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb8
  JAL zero, bb9
bb8:
  LW s0, 24(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t6, sp, 32
  ADD s0, t6, s2
  LW s1, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LUI t5, 10
  ADDI t5, t5, -928
  ADD t5, t5, sp
  ADD s1, t5, s3
  LW s2, 0(s1)
  LW s1, 24(sp)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  LUI t6, 10
  ADDI t6, t6, -928
  ADD t6, t6, sp
  ADD s1, t6, s4
  LW s3, 0(s1)
  MULW s1, s2, s3
  ADDI s2, zero, 100
  REMW s3, s1, s2
  LW s1, 24(sp)
  ADDI s2, zero, 4
  MULW s4, s1, s2
  LUI t5, 20
  ADDI t5, t5, -1888
  ADD t5, t5, sp
  ADD s1, t5, s4
  LW s2, 0(s1)
  ADDW s1, s3, s2
  SW s1, 0(s0)
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  SW s1, 24(sp)
  JAL zero, bb7
bb9:
  ADDI s0, zero, 0
  SW s0, 16(sp)
  ADDI s0, zero, 0
  SW s0, 24(sp)
  JAL zero, bb10
bb10:
  LW s0, 24(sp)
  LA s1, N
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb11
  JAL zero, bb12
bb11:
  LW s0, 24(sp)
  SLTI s1, s0, 10
  BNE s1, zero, bb13
  JAL zero, bb15
bb12:
  LW s0, 16(sp)
  ADD a0, s0, zero
  LUI ra, 29
  ADDI ra, ra, 1256
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 29
  ADDI t6, t6, 1264
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t5, 29
  ADDI t5, t5, 1272
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t6, 29
  ADDI t6, t6, 1280
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t5, 29
  ADDI t5, t5, 1288
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 29
  ADDI t6, t6, 1296
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t0, 29
  ADDI t0, t0, 1312
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb13:
  LW s0, 16(sp)
  LW s1, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 32
  ADD s1, t5, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 1333
  REMW s2, s1, s0
  SW s2, 16(sp)
  ADD a0, s2, zero
  CALL putint
  JAL zero, bb14
bb14:
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  SW s1, 24(sp)
  JAL zero, bb10
bb15:
  LW s0, 24(sp)
  SLTI s1, s0, 20
  BNE s1, zero, bb16
  JAL zero, bb18
bb16:
  LA s0, N
  LW s1, 0(s0)
  ADDI s0, zero, 2
  DIVW s2, s1, s0
  SW s2, 8(sp)
  JAL zero, bb19
bb17:
  JAL zero, bb14
bb18:
  LW s0, 24(sp)
  SLTI s1, s0, 30
  BNE s1, zero, bb22
  JAL zero, bb24
bb19:
  LW s0, 8(sp)
  LA s1, N
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb20
  JAL zero, bb21
bb20:
  LW s0, 16(sp)
  LW s1, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t6, sp, 32
  ADD s1, t6, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LUI t5, 20
  ADDI t5, t5, -1888
  ADD t5, t5, sp
  ADD s0, t5, s3
  LW s2, 0(s0)
  SUBW s0, s1, s2
  SW s0, 16(sp)
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb19
bb21:
  LW s0, 16(sp)
  ADD a0, s0, zero
  CALL putint
  JAL zero, bb17
bb22:
  LA s0, N
  LW s1, 0(s0)
  ADDI s0, zero, 2
  DIVW s2, s1, s0
  SW s2, 0(sp)
  JAL zero, bb25
bb23:
  JAL zero, bb17
bb24:
  LW s0, 16(sp)
  LW s1, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t6, sp, 32
  ADD s1, t6, s3
  LW s2, 0(s1)
  LUI t5, 29
  ADDI t5, t5, 1248
  ADD t5, t5, sp
  LW s1, 0(t5)
  MULW s3, s2, s1
  ADDW s1, s0, s3
  LUI s0, 24
  ADDI s0, s0, 1684
  REMW s2, s1, s0
  SW s2, 16(sp)
  JAL zero, bb23
bb25:
  LW s0, 0(sp)
  LA s1, N
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb26
  JAL zero, bb27
bb26:
  LW s0, 0(sp)
  LUI s1, 1
  ADDI s1, s1, -1863
  SLT s2, s1, s0
  BNE s2, zero, bb28
  JAL zero, bb30
bb27:
  LW s0, 16(sp)
  ADD a0, s0, zero
  CALL putint
  JAL zero, bb23
bb28:
  LW s0, 16(sp)
  LW s1, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LUI t6, 10
  ADDI t6, t6, -928
  ADD t6, t6, sp
  ADD s1, t6, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LUI t5, 20
  ADDI t5, t5, -1888
  ADD t5, t5, sp
  ADD s0, t5, s3
  LW s2, 0(s0)
  SUBW s0, s1, s2
  SW s0, 16(sp)
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb29
bb29:
  JAL zero, bb25
bb30:
  LW s0, 16(sp)
  LW s1, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LUI t6, 20
  ADDI t6, t6, -1888
  ADD t6, t6, sp
  ADD s1, t6, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADDI t5, sp, 32
  ADD s0, t5, s3
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LUI s1, 3
  ADDI s1, s1, 1045
  REMW s2, s0, s1
  SW s2, 16(sp)
  LW s0, 0(sp)
  ADDIW s1, s0, 2
  SW s1, 0(sp)
  JAL zero, bb29
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  ADDI a0, zero, 9
  CALL long_array
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
