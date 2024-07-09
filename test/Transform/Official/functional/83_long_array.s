.global long_array
.global main
.section .bss

.section .data
N:
.word 0x00002710
.section .text
long_array:
  LUI t0, 1048547
  ADDIW t0, t0, -1360
  ADD sp, sp, t0
  LUI t5, 29
  ADDIW t5, t5, 1248
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t6, 29
  ADDIW t6, t6, 1256
  ADD t6, t6, sp
  SD s11, 0(t6)
  LUI t5, 29
  ADDIW t5, t5, 1264
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t6, 29
  ADDIW t6, t6, 1272
  ADD t6, t6, sp
  SD s7, 0(t6)
  LUI t5, 29
  ADDIW t5, t5, 1280
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t6, 29
  ADDIW t6, t6, 1288
  ADD t6, t6, sp
  SD s1, 0(t6)
  LUI t5, 29
  ADDIW t5, t5, 1296
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t6, 29
  ADDIW t6, t6, 1304
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t5, 29
  ADDIW t5, t5, 1312
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t6, 29
  ADDIW t6, t6, 1320
  ADD t6, t6, sp
  SD s4, 0(t6)
  LUI t5, 29
  ADDIW t5, t5, 1328
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t4, 29
  ADDIW t4, t4, 1336
  ADD t4, t4, sp
  SD s8, 0(t4)
  LUI t4, 29
  ADDIW t4, t4, 1344
  ADD t4, t4, sp
  SD s9, 0(t4)
  ADD t4, a0, zero
  LUI t6, 29
  ADDIW t6, t6, 1240
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD s1, zero, zero
  JAL zero, bb1
bb1:
  ADD s2, s1, zero
  LUI s3, 2
  ADDIW s3, s3, 1808
  SLT s4, s2, s3
  BNE s4, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s3, t5, s4
  MULW s4, s2, s2
  ADDI s5, zero, 10
  REMW s6, s4, s5
  SW s6, 0(s3)
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb1
bb3:
  ADD s1, zero, zero
  JAL zero, bb4
bb4:
  ADD s2, s1, zero
  LUI s3, 2
  ADDIW s3, s3, 1808
  SLT s4, s2, s3
  BNE s4, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LUI t6, 10
  ADDIW t6, t6, -960
  ADD t6, t6, sp
  ADD s3, t6, s4
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s5, t5, s4
  LW s4, 0(s5)
  LW s6, 0(s5)
  MULW s5, s4, s6
  ADDI s4, zero, 10
  REMW s6, s5, s4
  SW s6, 0(s3)
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb4
bb6:
  ADD s1, zero, zero
  JAL zero, bb7
bb7:
  ADD s2, s1, zero
  LUI s3, 2
  ADDIW s3, s3, 1808
  SLT s4, s2, s3
  BNE s4, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADDI t6, sp, 0
  ADD s3, t6, s4
  LUI t5, 10
  ADDIW t5, t5, -960
  ADD t5, t5, sp
  ADD s5, t5, s4
  LW s6, 0(s5)
  LW s7, 0(s5)
  MULW s5, s6, s7
  ADDI s6, zero, 100
  REMW s7, s5, s6
  LUI t6, 20
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  ADD s5, t6, s4
  LW s4, 0(s5)
  ADDW s5, s7, s4
  SW s5, 0(s3)
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb7
bb9:
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADD s4, zero, zero
  JAL zero, bb10
bb10:
  ADD t4, s4, zero
  LUI t5, 29
  ADDIW t5, t5, 1232
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s3, zero
  LUI t6, 29
  ADDIW t6, t6, 1216
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s2, zero
  LUI t5, 29
  ADDIW t5, t5, 1224
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD s8, s1, zero
  LUI s9, 2
  ADDIW s9, s9, 1808
  LUI t4, 29
  ADDIW t4, t4, 1232
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s10, t4, s9
  BNE s10, zero, bb11
  JAL zero, bb12
bb11:
  LUI t4, 29
  ADDIW t4, t4, 1232
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s9, t4, 10
  BNE s9, zero, bb13
  JAL zero, bb15
bb12:
  LUI t4, 29
  ADDIW t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a0, t4, zero
  LUI t6, 29
  ADDIW t6, t6, 1248
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t5, 29
  ADDIW t5, t5, 1256
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI ra, 29
  ADDIW ra, ra, 1264
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 29
  ADDIW t6, t6, 1272
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t5, 29
  ADDIW t5, t5, 1280
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t6, 29
  ADDIW t6, t6, 1288
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t5, 29
  ADDIW t5, t5, 1296
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t6, 29
  ADDIW t6, t6, 1304
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t5, 29
  ADDIW t5, t5, 1312
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t6, 29
  ADDIW t6, t6, 1320
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t5, 29
  ADDIW t5, t5, 1328
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t6, 29
  ADDIW t6, t6, 1336
  ADD t6, t6, sp
  LD s8, 0(t6)
  LUI t5, 29
  ADDIW t5, t5, 1344
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t0, 29
  ADDIW t0, t0, 1360
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb13:
  ADDI s9, zero, 4
  LUI t4, 29
  ADDIW t4, t4, 1232
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s10, t4, s9
  ADDI t6, sp, 0
  ADD s9, t6, s10
  LW s10, 0(s9)
  LUI t4, 29
  ADDIW t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s9, t4, s10
  ADDI s10, zero, 1333
  REMW s11, s9, s10
  ADD a0, s11, zero
  CALL putint
  ADD s9, s8, zero
  LUI t4, 29
  ADDIW t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s10, t4, zero
  ADD s6, s11, zero
  JAL zero, bb14
bb14:
  ADD s11, s6, zero
  ADD s7, s10, zero
  ADD s5, s9, zero
  LUI t4, 29
  ADDIW t4, t4, 1232
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  ADD s1, s5, zero
  ADD s2, s7, zero
  ADD s3, s11, zero
  ADD s4, s0, zero
  JAL zero, bb10
bb15:
  LUI t4, 29
  ADDIW t4, t4, 1232
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s0, t4, 20
  BNE s0, zero, bb16
  JAL zero, bb18
bb16:
  LUI s0, 1
  ADDIW s0, s0, 904
  ADD s1, zero, s0
  LUI t4, 29
  ADDIW t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  JAL zero, bb19
bb17:
  ADD s2, s3, zero
  ADD s4, s1, zero
  ADD s5, s0, zero
  ADD s9, s5, zero
  ADD s10, s4, zero
  ADD s6, s2, zero
  JAL zero, bb14
bb18:
  LUI t4, 29
  ADDIW t4, t4, 1232
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s2, t4, 30
  BNE s2, zero, bb22
  JAL zero, bb24
bb19:
  ADD s2, s0, zero
  ADD s3, s1, zero
  LUI s4, 2
  ADDIW s4, s4, 1808
  SLT s5, s3, s4
  BNE s5, zero, bb20
  JAL zero, bb21
bb20:
  ADDI s4, zero, 4
  LUI t4, 29
  ADDIW t4, t4, 1232
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s5, t4, s4
  ADDI t5, sp, 0
  ADD s4, t5, s5
  LW s5, 0(s4)
  ADDW s4, s2, s5
  ADDI s5, zero, 4
  MULW s7, s3, s5
  LUI t6, 20
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  ADD s5, t6, s7
  LW s7, 0(s5)
  SUBW s5, s4, s7
  ADDIW s4, s3, 1
  ADD s1, s4, zero
  ADD s0, s5, zero
  JAL zero, bb19
bb21:
  ADD a0, s2, zero
  CALL putint
  ADD s0, s8, zero
  ADD s1, s3, zero
  ADD s3, s2, zero
  JAL zero, bb17
bb22:
  LUI s2, 1
  ADDIW s2, s2, 904
  ADD s4, zero, s2
  LUI t4, 29
  ADDIW t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  JAL zero, bb25
bb23:
  ADD s5, s4, zero
  ADD s6, s2, zero
  ADD s0, s6, zero
  LUI t4, 29
  ADDIW t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  ADD s3, s5, zero
  JAL zero, bb17
bb24:
  ADDI s0, zero, 4
  LUI t4, 29
  ADDIW t4, t4, 1232
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s1, t4, s0
  ADDI t5, sp, 0
  ADD s0, t5, s1
  LW s1, 0(s0)
  LUI t4, 29
  ADDIW t4, t4, 1240
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s0, s1, t4
  LUI t4, 29
  ADDIW t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s1, t4, s0
  LUI s0, 24
  ADDIW s0, s0, 1684
  REMW s3, s1, s0
  ADD s2, s8, zero
  ADD s4, s3, zero
  JAL zero, bb23
bb25:
  ADD s5, s2, zero
  ADD s6, s4, zero
  LUI s7, 2
  ADDIW s7, s7, 1808
  SLT s9, s6, s7
  BNE s9, zero, bb26
  JAL zero, bb27
bb26:
  LUI s7, 1
  ADDIW s7, s7, -1863
  SLT s9, s7, s6
  BNE s9, zero, bb28
  JAL zero, bb30
bb27:
  ADD a0, s5, zero
  CALL putint
  ADD s2, s6, zero
  ADD s4, s5, zero
  JAL zero, bb23
bb28:
  ADDI s7, zero, 4
  LUI t4, 29
  ADDIW t4, t4, 1232
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s9, t4, s7
  LUI t6, 10
  ADDIW t6, t6, -960
  ADD t6, t6, sp
  ADD s7, t6, s9
  LW s9, 0(s7)
  ADDW s7, s5, s9
  ADDI s9, zero, 4
  MULW s10, s6, s9
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s9, t5, s10
  LW s10, 0(s9)
  SUBW s9, s7, s10
  ADDIW s7, s6, 1
  ADD s10, s7, zero
  ADD s7, s9, zero
  JAL zero, bb29
bb29:
  ADD s9, s7, zero
  ADD s11, s10, zero
  ADD s4, s11, zero
  ADD s2, s9, zero
  JAL zero, bb25
bb30:
  ADDI s2, zero, 4
  LUI t4, 29
  ADDIW t4, t4, 1232
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s4, t4, s2
  LUI t6, 20
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  ADD s2, t6, s4
  LW s4, 0(s2)
  ADDW s2, s5, s4
  ADDI s4, zero, 4
  MULW s9, s6, s4
  ADDI t5, sp, 0
  ADD s4, t5, s9
  LW s9, 0(s4)
  ADDW s4, s2, s9
  LUI s2, 3
  ADDIW s2, s2, 1045
  REMW s9, s4, s2
  ADDIW s2, s6, 2
  ADD s10, s2, zero
  ADD s7, s9, zero
  JAL zero, bb29
main:
  LUI t0, 1048547
  ADDIW t0, t0, -1344
  ADD sp, sp, t0
  LUI t5, 29
  ADDIW t5, t5, 1240
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t6, 29
  ADDIW t6, t6, 1248
  ADD t6, t6, sp
  SD s10, 0(t6)
  LUI t5, 29
  ADDIW t5, t5, 1256
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t6, 29
  ADDIW t6, t6, 1264
  ADD t6, t6, sp
  SD s1, 0(t6)
  LUI t5, 29
  ADDIW t5, t5, 1272
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t6, 29
  ADDIW t6, t6, 1280
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t5, 29
  ADDIW t5, t5, 1288
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t6, 29
  ADDIW t6, t6, 1296
  ADD t6, t6, sp
  SD s7, 0(t6)
  LUI t5, 29
  ADDIW t5, t5, 1304
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t6, 29
  ADDIW t6, t6, 1312
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t5, 29
  ADDIW t5, t5, 1320
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t6, 29
  ADDIW t6, t6, 1328
  ADD t6, t6, sp
  SD s4, 0(t6)
  LUI t5, 29
  ADDIW t5, t5, 1336
  ADD t5, t5, sp
  SD s8, 0(t5)
  JAL zero, bb33
bb32:
  ADD s1, s0, zero
  ADD a0, s1, zero
  LUI t6, 29
  ADDIW t6, t6, 1240
  ADD t6, t6, sp
  LD s11, 0(t6)
  LUI t5, 29
  ADDIW t5, t5, 1248
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t6, 29
  ADDIW t6, t6, 1256
  ADD t6, t6, sp
  LD s9, 0(t6)
  LUI t5, 29
  ADDIW t5, t5, 1264
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 29
  ADDIW t6, t6, 1272
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t5, 29
  ADDIW t5, t5, 1280
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t6, 29
  ADDIW t6, t6, 1288
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t5, 29
  ADDIW t5, t5, 1296
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI ra, 29
  ADDIW ra, ra, 1304
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 29
  ADDIW t6, t6, 1312
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t5, 29
  ADDIW t5, t5, 1320
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t6, 29
  ADDIW t6, t6, 1328
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t5, 29
  ADDIW t5, t5, 1336
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t0, 29
  ADDIW t0, t0, 1344
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb33:
  ADD s0, zero, zero
  JAL zero, bb34
bb34:
  ADD s1, s0, zero
  LUI s2, 2
  ADDIW s2, s2, 1808
  SLT s3, s1, s2
  BNE s3, zero, bb35
  JAL zero, bb36
bb35:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t6, sp, 0
  ADD s2, t6, s3
  MULW s3, s1, s1
  ADDI s4, zero, 10
  REMW s5, s3, s4
  SW s5, 0(s2)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb34
bb36:
  ADD s0, zero, zero
  JAL zero, bb37
bb37:
  ADD s1, s0, zero
  LUI s2, 2
  ADDIW s2, s2, 1808
  SLT s3, s1, s2
  BNE s3, zero, bb38
  JAL zero, bb39
bb38:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LUI t5, 10
  ADDIW t5, t5, -960
  ADD t5, t5, sp
  ADD s2, t5, s3
  ADDI t6, sp, 0
  ADD s4, t6, s3
  LW s3, 0(s4)
  LW s5, 0(s4)
  MULW s4, s3, s5
  ADDI s3, zero, 10
  REMW s5, s4, s3
  SW s5, 0(s2)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb37
bb39:
  ADD s0, zero, zero
  JAL zero, bb40
bb40:
  ADD s1, s0, zero
  LUI s2, 2
  ADDIW s2, s2, 1808
  SLT s3, s1, s2
  BNE s3, zero, bb41
  JAL zero, bb42
bb41:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s2, t5, s3
  LUI t6, 10
  ADDIW t6, t6, -960
  ADD t6, t6, sp
  ADD s4, t6, s3
  LW s5, 0(s4)
  LW s6, 0(s4)
  MULW s4, s5, s6
  ADDI s5, zero, 100
  REMW s6, s4, s5
  ADDI t5, sp, 0
  ADD s4, t5, s3
  LW s3, 0(s4)
  ADDW s4, s6, s3
  SW s4, 0(s2)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb40
bb42:
  ADD s0, zero, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  JAL zero, bb43
bb43:
  ADD t4, s3, zero
  LUI t6, 29
  ADDIW t6, t6, 1232
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s2, zero
  LUI t5, 29
  ADDIW t5, t5, 1216
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s1, zero
  LUI t6, 29
  ADDIW t6, t6, 1224
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD s7, s0, zero
  LUI s8, 2
  ADDIW s8, s8, 1808
  LUI t4, 29
  ADDIW t4, t4, 1232
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s9, t4, s8
  BNE s9, zero, bb44
  JAL zero, bb45
bb44:
  LUI t4, 29
  ADDIW t4, t4, 1232
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s8, t4, 10
  BNE s8, zero, bb46
  JAL zero, bb48
bb45:
  LUI t4, 29
  ADDIW t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  JAL zero, bb32
bb46:
  ADDI s8, zero, 4
  LUI t4, 29
  ADDIW t4, t4, 1232
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s9, t4, s8
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s8, t5, s9
  LW s9, 0(s8)
  LUI t4, 29
  ADDIW t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s8, t4, s9
  ADDI s9, zero, 1333
  REMW s10, s8, s9
  ADD a0, s10, zero
  CALL putint
  ADD s8, s7, zero
  LUI t4, 29
  ADDIW t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s9, t4, zero
  ADD s11, s10, zero
  JAL zero, bb47
bb47:
  ADD s10, s11, zero
  ADD s5, s9, zero
  ADD s6, s8, zero
  LUI t4, 29
  ADDIW t4, t4, 1232
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s4, t4, 1
  ADD s0, s6, zero
  ADD s1, s5, zero
  ADD s2, s10, zero
  ADD s3, s4, zero
  JAL zero, bb43
bb48:
  LUI t4, 29
  ADDIW t4, t4, 1232
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s0, t4, 20
  BNE s0, zero, bb49
  JAL zero, bb51
bb49:
  LUI s0, 1
  ADDIW s0, s0, 904
  ADD s1, zero, s0
  LUI t4, 29
  ADDIW t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  JAL zero, bb52
bb50:
  ADD s2, s3, zero
  ADD s4, s1, zero
  ADD s5, s0, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  ADD s11, s2, zero
  JAL zero, bb47
bb51:
  LUI t4, 29
  ADDIW t4, t4, 1232
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s2, t4, 30
  BNE s2, zero, bb55
  JAL zero, bb57
bb52:
  ADD s2, s0, zero
  ADD s3, s1, zero
  LUI s4, 2
  ADDIW s4, s4, 1808
  SLT s5, s3, s4
  BNE s5, zero, bb53
  JAL zero, bb54
bb53:
  ADDI s4, zero, 4
  LUI t4, 29
  ADDIW t4, t4, 1232
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s5, t4, s4
  LUI t6, 20
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  ADD s4, t6, s5
  LW s5, 0(s4)
  ADDW s4, s2, s5
  ADDI s5, zero, 4
  MULW s6, s3, s5
  ADDI t5, sp, 0
  ADD s5, t5, s6
  LW s6, 0(s5)
  SUBW s5, s4, s6
  ADDIW s4, s3, 1
  ADD s1, s4, zero
  ADD s0, s5, zero
  JAL zero, bb52
bb54:
  ADD a0, s2, zero
  CALL putint
  ADD s0, s7, zero
  ADD s1, s3, zero
  ADD s3, s2, zero
  JAL zero, bb50
bb55:
  LUI s2, 1
  ADDIW s2, s2, 904
  ADD s4, zero, s2
  LUI t4, 29
  ADDIW t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  JAL zero, bb58
bb56:
  ADD s5, s4, zero
  ADD s6, s2, zero
  ADD s0, s6, zero
  LUI t4, 29
  ADDIW t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  ADD s3, s5, zero
  JAL zero, bb50
bb57:
  ADDI s0, zero, 4
  LUI t4, 29
  ADDIW t4, t4, 1232
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s1, t4, s0
  LUI t6, 20
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  ADD s0, t6, s1
  LW s1, 0(s0)
  ADDI s0, zero, 9
  MULW s3, s1, s0
  LUI t4, 29
  ADDIW t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s0, t4, s3
  LUI s1, 24
  ADDIW s1, s1, 1684
  REMW s3, s0, s1
  ADD s2, s7, zero
  ADD s4, s3, zero
  JAL zero, bb56
bb58:
  ADD s5, s2, zero
  ADD s6, s4, zero
  LUI s8, 2
  ADDIW s8, s8, 1808
  SLT s9, s6, s8
  BNE s9, zero, bb59
  JAL zero, bb60
bb59:
  LUI s8, 1
  ADDIW s8, s8, -1863
  SLT s9, s8, s6
  BNE s9, zero, bb61
  JAL zero, bb63
bb60:
  ADD a0, s5, zero
  CALL putint
  ADD s2, s6, zero
  ADD s4, s5, zero
  JAL zero, bb56
bb61:
  ADDI s8, zero, 4
  LUI t4, 29
  ADDIW t4, t4, 1232
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s9, t4, s8
  LUI t5, 10
  ADDIW t5, t5, -960
  ADD t5, t5, sp
  ADD s8, t5, s9
  LW s9, 0(s8)
  ADDW s8, s5, s9
  ADDI s9, zero, 4
  MULW s10, s6, s9
  ADDI t6, sp, 0
  ADD s9, t6, s10
  LW s10, 0(s9)
  SUBW s9, s8, s10
  ADDIW s8, s6, 1
  ADD s10, s8, zero
  ADD s8, s9, zero
  JAL zero, bb62
bb62:
  ADD s9, s8, zero
  ADD s11, s10, zero
  ADD s4, s11, zero
  ADD s2, s9, zero
  JAL zero, bb58
bb63:
  ADDI s2, zero, 4
  LUI t4, 29
  ADDIW t4, t4, 1232
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s4, t4, s2
  ADDI t5, sp, 0
  ADD s2, t5, s4
  LW s4, 0(s2)
  ADDW s2, s5, s4
  ADDI s4, zero, 4
  MULW s9, s6, s4
  LUI t6, 20
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  ADD s4, t6, s9
  LW s9, 0(s4)
  ADDW s4, s2, s9
  LUI s2, 3
  ADDIW s2, s2, 1045
  REMW s9, s4, s2
  ADDIW s2, s6, 2
  ADD s10, s2, zero
  ADD s8, s9, zero
  JAL zero, bb62
