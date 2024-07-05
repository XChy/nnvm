.global long_array
.global main
.section .bss

.section .data
N:
.word 0x00002710
.section .text
long_array:
  LUI t0, 1048547
  ADDI t0, t0, -1344
  ADD sp, sp, t0
  LUI t5, 29
  ADDI t5, t5, 1240
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t6, 29
  ADDI t6, t6, 1248
  ADD t6, t6, sp
  SD s10, 0(t6)
  LUI t5, 29
  ADDI t5, t5, 1256
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t6, 29
  ADDI t6, t6, 1264
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t5, 29
  ADDI t5, t5, 1272
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t6, 29
  ADDI t6, t6, 1280
  ADD t6, t6, sp
  SD s7, 0(t6)
  LUI t5, 29
  ADDI t5, t5, 1288
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t6, 29
  ADDI t6, t6, 1296
  ADD t6, t6, sp
  SD s6, 0(t6)
  LUI t5, 29
  ADDI t5, t5, 1304
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t6, 29
  ADDI t6, t6, 1312
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t5, 29
  ADDI t5, t5, 1320
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t6, 29
  ADDI t6, t6, 1328
  ADD t6, t6, sp
  SD ra, 0(t6)
  LUI t5, 29
  ADDI t5, t5, 1336
  ADD t5, t5, sp
  SD s8, 0(t5)
  ADD s0, a0, zero
  ADD s1, zero, zero
  JAL zero, bb1
bb1:
  LA s2, N
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LUI t6, 20
  ADDI t6, t6, -1920
  ADD t6, t6, sp
  ADD s2, t6, s3
  MULW s3, s1, s1
  ADDI s4, zero, 10
  REMW s5, s3, s4
  SW s5, 0(s2)
  ADDIW s2, s1, 1
  ADD s1, s2, zero
  JAL zero, bb1
bb3:
  ADD s1, zero, zero
  JAL zero, bb4
bb4:
  LA s2, N
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LUI t5, 10
  ADDI t5, t5, -960
  ADD t5, t5, sp
  ADD s2, t5, s3
  ADDI s3, zero, 4
  MULW s4, s1, s3
  LUI t6, 20
  ADDI t6, t6, -1920
  ADD t6, t6, sp
  ADD s3, t6, s4
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s1, s3
  LUI t5, 20
  ADDI t5, t5, -1920
  ADD t5, t5, sp
  ADD s3, t5, s5
  LW s5, 0(s3)
  MULW s3, s4, s5
  ADDI s4, zero, 10
  REMW s5, s3, s4
  SW s5, 0(s2)
  ADDIW s2, s1, 1
  ADD s1, s2, zero
  JAL zero, bb4
bb6:
  ADD s1, zero, zero
  JAL zero, bb7
bb7:
  LA s2, N
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t6, sp, 0
  ADD s2, t6, s3
  ADDI s3, zero, 4
  MULW s4, s1, s3
  LUI t5, 10
  ADDI t5, t5, -960
  ADD t5, t5, sp
  ADD s3, t5, s4
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s1, s3
  LUI t6, 10
  ADDI t6, t6, -960
  ADD t6, t6, sp
  ADD s3, t6, s5
  LW s5, 0(s3)
  MULW s3, s4, s5
  ADDI s4, zero, 100
  REMW s5, s3, s4
  ADDI s3, zero, 4
  MULW s4, s1, s3
  LUI t5, 20
  ADDI t5, t5, -1920
  ADD t5, t5, sp
  ADD s3, t5, s4
  LW s4, 0(s3)
  ADDW s3, s5, s4
  SW s3, 0(s2)
  ADDIW s2, s1, 1
  ADD s1, s2, zero
  JAL zero, bb7
bb9:
  ADD s1, zero, zero
  ADD t4, zero, zero
  LUI t6, 29
  ADDI t6, t6, 1232
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 29
  ADDI t5, t5, 1216
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 29
  ADDI t6, t6, 1224
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb10
bb10:
  LA s5, N
  LW s6, 0(s5)
  LUI t4, 29
  ADDI t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s5, t4, s6
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb11
  JAL zero, bb12
bb11:
  LUI t4, 29
  ADDI t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s5, t4, 10
  BNE s5, zero, bb13
  JAL zero, bb15
bb12:
  LUI t4, 29
  ADDI t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a0, t4, zero
  LUI t5, 29
  ADDI t5, t5, 1240
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t6, 29
  ADDI t6, t6, 1248
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI t5, 29
  ADDI t5, t5, 1256
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t6, 29
  ADDI t6, t6, 1264
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t5, 29
  ADDI t5, t5, 1272
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t6, 29
  ADDI t6, t6, 1280
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t5, 29
  ADDI t5, t5, 1288
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 29
  ADDI t6, t6, 1296
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t5, 29
  ADDI t5, t5, 1304
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t6, 29
  ADDI t6, t6, 1312
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t5, 29
  ADDI t5, t5, 1320
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI ra, 29
  ADDI ra, ra, 1328
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 29
  ADDI t6, t6, 1336
  ADD t6, t6, sp
  LD s8, 0(t6)
  LUI t0, 29
  ADDI t0, t0, 1344
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb13:
  ADDI s5, zero, 4
  LUI t4, 29
  ADDI t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s6, t4, s5
  ADDI t5, sp, 0
  ADD s5, t5, s6
  LW s6, 0(s5)
  LUI t4, 29
  ADDI t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s5, t4, s6
  ADDI s6, zero, 1333
  REMW s7, s5, s6
  ADD a0, s7, zero
  CALL putint
  ADD s5, s1, zero
  LUI t4, 29
  ADDI t4, t4, 1232
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s6, t4, zero
  ADD s8, s7, zero
  JAL zero, bb14
bb14:
  LUI t4, 29
  ADDI t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s7, t4, 1
  ADD s1, s5, zero
  ADD t4, s6, zero
  LUI t6, 29
  ADDI t6, t6, 1232
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s8, zero
  LUI t5, 29
  ADDI t5, t5, 1216
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s7, zero
  LUI t6, 29
  ADDI t6, t6, 1224
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb10
bb15:
  LUI t4, 29
  ADDI t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s7, t4, 20
  BNE s7, zero, bb16
  JAL zero, bb18
bb16:
  LA s7, N
  LW s9, 0(s7)
  ADDI s7, zero, 2
  DIVW s10, s9, s7
  ADD s7, s10, zero
  LUI t4, 29
  ADDI t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s9, t4, zero
  JAL zero, bb19
bb17:
  ADD s5, s3, zero
  ADD s6, s10, zero
  ADD s8, s7, zero
  JAL zero, bb14
bb18:
  LUI t4, 29
  ADDI t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s5, t4, 30
  BNE s5, zero, bb22
  JAL zero, bb24
bb19:
  LA s10, N
  LW s11, 0(s10)
  SLT s10, s7, s11
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb20
  JAL zero, bb21
bb20:
  ADDI s10, zero, 4
  LUI t4, 29
  ADDI t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s11, t4, s10
  ADDI t5, sp, 0
  ADD s10, t5, s11
  LW s11, 0(s10)
  ADDW s10, s9, s11
  ADDI s11, zero, 4
  MULW s3, s7, s11
  LUI t6, 20
  ADDI t6, t6, -1920
  ADD t6, t6, sp
  ADD s11, t6, s3
  LW s3, 0(s11)
  SUBW s11, s10, s3
  ADDIW s3, s7, 1
  ADD s7, s3, zero
  ADD s9, s11, zero
  JAL zero, bb19
bb21:
  ADD a0, s9, zero
  CALL putint
  ADD s3, s1, zero
  ADD s10, s7, zero
  ADD s7, s9, zero
  JAL zero, bb17
bb22:
  LA s5, N
  LW s6, 0(s5)
  ADDI s5, zero, 2
  DIVW s8, s6, s5
  ADD s5, s8, zero
  LUI t4, 29
  ADDI t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s6, t4, zero
  JAL zero, bb25
bb23:
  ADD s3, s2, zero
  LUI t4, 29
  ADDI t4, t4, 1232
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s10, t4, zero
  ADD s7, s4, zero
  JAL zero, bb17
bb24:
  ADDI s3, zero, 4
  LUI t4, 29
  ADDI t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s5, t4, s3
  ADDI t5, sp, 0
  ADD s3, t5, s5
  LW s5, 0(s3)
  MULW s3, s5, s0
  LUI t4, 29
  ADDI t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s5, t4, s3
  LUI s3, 24
  ADDI s3, s3, 1684
  REMW s6, s5, s3
  ADD s2, s1, zero
  ADD s4, s6, zero
  JAL zero, bb23
bb25:
  LA s8, N
  LW s9, 0(s8)
  SLT s8, s5, s9
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb26
  JAL zero, bb27
bb26:
  LUI s8, 1
  ADDI s8, s8, -1863
  SLT s9, s8, s5
  BNE s9, zero, bb28
  JAL zero, bb30
bb27:
  ADD a0, s6, zero
  CALL putint
  ADD s2, s5, zero
  ADD s4, s6, zero
  JAL zero, bb23
bb28:
  ADDI s8, zero, 4
  LUI t4, 29
  ADDI t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s9, t4, s8
  LUI t6, 10
  ADDI t6, t6, -960
  ADD t6, t6, sp
  ADD s8, t6, s9
  LW s9, 0(s8)
  ADDW s8, s6, s9
  ADDI s9, zero, 4
  MULW s11, s5, s9
  LUI t5, 20
  ADDI t5, t5, -1920
  ADD t5, t5, sp
  ADD s9, t5, s11
  LW s11, 0(s9)
  SUBW s9, s8, s11
  ADDIW s8, s5, 1
  ADD s11, s8, zero
  ADD s8, s9, zero
  JAL zero, bb29
bb29:
  ADD s5, s11, zero
  ADD s6, s8, zero
  JAL zero, bb25
bb30:
  ADDI s9, zero, 4
  LUI t4, 29
  ADDI t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s4, t4, s9
  LUI t6, 20
  ADDI t6, t6, -1920
  ADD t6, t6, sp
  ADD s9, t6, s4
  LW s4, 0(s9)
  ADDW s9, s6, s4
  ADDI s4, zero, 4
  MULW s2, s5, s4
  ADDI t5, sp, 0
  ADD s4, t5, s2
  LW s2, 0(s4)
  ADDW s4, s9, s2
  LUI s2, 3
  ADDI s2, s2, 1045
  REMW s9, s4, s2
  ADDIW s2, s5, 2
  ADD s11, s2, zero
  ADD s8, s9, zero
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
