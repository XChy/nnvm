.global long_array
.global main
.section .bss

.section .data
N:
.word 0x00002710
.section .text
long_array:
  LUI t0, 1048547
  ADDIW t0, t0, -1392
  ADD sp, sp, t0
  LUI t5, 29
  ADDIW t5, t5, 1288
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1296
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1304
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1312
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1320
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1328
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1336
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1344
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1352
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1360
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1368
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t4, 29
  ADDIW t4, t4, 1376
  ADD t4, t4, sp
  SD s8, 0(t4)
  LUI t4, 29
  ADDIW t4, t4, 1384
  ADD t4, t4, sp
  SD s11, 0(t4)
  ADD t4, a0, zero
  LUI t5, 29
  ADDIW t5, t5, 1252
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t5, 29
  ADDIW t5, t5, 1256
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb1
bb1:
  LUI t3, 29
  ADDIW t3, t3, 1256
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 29
  ADDIW t5, t5, 1260
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI s3, 2
  ADDIW s3, s3, 1808
  LUI t4, 29
  ADDIW t4, t4, 1260
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s4, t4, s3
  BNE s4, zero, bb30
  # implict jump to bb2
bb2:
  ADD t4, zero, zero
  LUI t5, 29
  ADDIW t5, t5, 1264
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb3
bb3:
  LUI t3, 29
  ADDIW t3, t3, 1264
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 29
  ADDIW t5, t5, 1268
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI s5, 2
  ADDIW s5, s5, 1808
  LUI t4, 29
  ADDIW t4, t4, 1268
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s6, t4, s5
  BNE s6, zero, bb29
  # implict jump to bb4
bb4:
  ADD t4, zero, zero
  LUI t5, 29
  ADDIW t5, t5, 1272
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb5
bb5:
  LUI t3, 29
  ADDIW t3, t3, 1272
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 29
  ADDIW t5, t5, 1276
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI s7, 2
  ADDIW s7, s7, 1808
  LUI t4, 29
  ADDIW t4, t4, 1276
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s8, t4, s7
  BNE s8, zero, bb28
  # implict jump to bb6
bb6:
  ADD s7, zero, zero
  ADD s8, zero, zero
  ADD t4, zero, zero
  LUI t5, 29
  ADDIW t5, t5, 1284
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t5, 29
  ADDIW t5, t5, 1280
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb7
bb7:
  LUI t4, 29
  ADDIW t4, t4, 1280
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  LUI t3, 29
  ADDIW t3, t3, 1284
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 29
  ADDIW t5, t5, 1216
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s8, zero
  LUI a1, 29
  ADDIW a1, a1, 1228
  ADD a1, a1, sp
  SW t4, 0(a1)
  ADD t4, s7, zero
  LUI a1, 29
  ADDIW a1, a1, 1240
  ADD a1, a1, sp
  SW t4, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 1808
  SLT a2, s11, a1
  BNE a2, zero, bb9
  # implict jump to bb8
bb8:
  LUI t4, 29
  ADDIW t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a0, t4, zero
  LUI t5, 29
  ADDIW t5, t5, 1288
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1296
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI ra, 29
  ADDIW ra, ra, 1304
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 29
  ADDIW t5, t5, 1312
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1320
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1328
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1336
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1344
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1352
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1360
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1368
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1376
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1384
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t0, 29
  ADDIW t0, t0, 1392
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb9:
  SLTI a1, s11, 10
  BNE a1, zero, bb27
  # implict jump to bb10
bb10:
  SLTI a1, s11, 20
  BNE a1, zero, bb23
  # implict jump to bb11
bb11:
  SLTI a1, s11, 30
  BNE a1, zero, bb16
  # implict jump to bb12
bb12:
  SLLIW a1, s11, 2
  ADDI a2, sp, 0
  ADD a2, a2, a1
  LW a1, 0(a2)
  LUI t4, 29
  ADDIW t4, t4, 1252
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a2, a1, t4
  LUI t4, 29
  ADDIW t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW a1, t4, a2
  LUI a2, 24
  ADDIW a2, a2, 1684
  REMW a3, a1, a2
  LUI t3, 29
  ADDIW t3, t3, 1240
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 29
  ADDIW t5, t5, 1220
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a3, zero
  LUI t5, 29
  ADDIW t5, t5, 1244
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb13
bb13:
  LUI t4, 29
  ADDIW t4, t4, 1244
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  LUI t4, 29
  ADDIW t4, t4, 1220
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  ADD s2, s1, zero
  LUI t4, 29
  ADDIW t4, t4, 1228
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  ADD s3, s0, zero
  # implict jump to bb14
bb14:
  ADD s9, s3, zero
  ADD s3, s1, zero
  ADD s1, s2, zero
  ADD s2, s1, zero
  ADD s1, s3, zero
  ADD s3, s9, zero
  # implict jump to bb15
bb15:
  ADD s0, s3, zero
  ADD s3, s1, zero
  ADD s1, s2, zero
  ADDIW s2, s11, 1
  ADD s7, s1, zero
  ADD s8, s3, zero
  ADD t4, s0, zero
  LUI t5, 29
  ADDIW t5, t5, 1284
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s2, zero
  LUI t5, 29
  ADDIW t5, t5, 1280
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb7
bb16:
  LUI a3, 1
  ADDIW a3, a3, 904
  ADD t4, zero, a3
  LUI t3, 29
  ADDIW t3, t3, 1232
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 29
  ADDIW t3, t3, 1216
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 29
  ADDIW t5, t5, 1224
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb17
bb17:
  LUI t3, 29
  ADDIW t3, t3, 1224
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 29
  ADDIW t3, t3, 1236
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 29
  ADDIW t3, t3, 1232
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI a7, 29
  ADDIW a7, a7, 1248
  ADD a7, a7, sp
  SW t4, 0(a7)
  LUI a7, 2
  ADDIW a7, a7, 1808
  LUI t4, 29
  ADDIW t4, t4, 1248
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT t6, t4, a7
  BNE t6, zero, bb19
  # implict jump to bb18
bb18:
  LUI t4, 29
  ADDIW t4, t4, 1236
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a0, t4, zero
  CALL putint
  LUI t3, 29
  ADDIW t3, t3, 1248
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 29
  ADDIW t3, t3, 1220
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 29
  ADDIW t3, t3, 1236
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 29
  ADDIW t5, t5, 1244
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb13
bb19:
  LUI s0, 1
  ADDIW s0, s0, -1863
  LUI t4, 29
  ADDIW t4, t4, 1248
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s4, s0, t4
  BNE s4, zero, bb22
  # implict jump to bb20
bb20:
  SLLIW s0, s11, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s4, t5, s0
  LW s0, 0(s4)
  LUI t4, 29
  ADDIW t4, t4, 1236
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s4, t4, s0
  LUI t4, 29
  ADDIW t4, t4, 1248
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s0, t4, 2
  ADDI t5, sp, 0
  ADD s5, t5, s0
  LW s0, 0(s5)
  ADDW s5, s4, s0
  LUI s0, 3
  ADDIW s0, s0, 1045
  REMW s4, s5, s0
  LUI t4, 29
  ADDIW t4, t4, 1248
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 2
  ADD s5, s0, zero
  ADD s0, s4, zero
  # implict jump to bb21
bb21:
  ADD s4, s0, zero
  ADD s0, s5, zero
  ADD t4, s0, zero
  LUI t5, 29
  ADDIW t5, t5, 1232
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s4, zero
  LUI t5, 29
  ADDIW t5, t5, 1224
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb17
bb22:
  SLLIW s4, s11, 2
  LUI t5, 10
  ADDIW t5, t5, -960
  ADD t5, t5, sp
  ADD s6, t5, s4
  LW s4, 0(s6)
  LUI t4, 29
  ADDIW t4, t4, 1236
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s6, t4, s4
  LUI t4, 29
  ADDIW t4, t4, 1248
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s4, t4, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s10, t5, s4
  LW s4, 0(s10)
  SUBW s10, s6, s4
  LUI t4, 29
  ADDIW t4, t4, 1248
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s4, t4, 1
  ADD s5, s4, zero
  ADD s0, s10, zero
  JAL zero, bb21
bb23:
  LUI s0, 1
  ADDIW s0, s0, 904
  ADD s4, zero, s0
  LUI t4, 29
  ADDIW t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  # implict jump to bb24
bb24:
  ADD s5, s0, zero
  ADD s6, s4, zero
  LUI s10, 2
  ADDIW s10, s10, 1808
  SLT s9, s6, s10
  BNE s9, zero, bb26
  # implict jump to bb25
bb25:
  ADD a0, s5, zero
  CALL putint
  LUI t4, 29
  ADDIW t4, t4, 1240
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  ADD s1, s6, zero
  ADD s3, s5, zero
  JAL zero, bb14
bb26:
  SLLIW s9, s11, 2
  ADDI t5, sp, 0
  ADD s10, t5, s9
  LW s9, 0(s10)
  ADDW s10, s5, s9
  SLLIW s5, s6, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s9, t5, s5
  LW s5, 0(s9)
  SUBW s9, s10, s5
  ADDIW s5, s6, 1
  ADD s4, s5, zero
  ADD s0, s9, zero
  JAL zero, bb24
bb27:
  SLLIW s0, s11, 2
  ADDI t5, sp, 0
  ADD s4, t5, s0
  LW s0, 0(s4)
  LUI t4, 29
  ADDIW t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s4, t4, s0
  ADDI s0, zero, 1333
  REMW s5, s4, s0
  ADD a0, s5, zero
  CALL putint
  LUI t4, 29
  ADDIW t4, t4, 1240
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  LUI t4, 29
  ADDIW t4, t4, 1228
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  ADD s3, s5, zero
  JAL zero, bb15
bb28:
  LUI t4, 29
  ADDIW t4, t4, 1276
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s0, t4, 2
  ADDI t5, sp, 0
  ADD s1, t5, s0
  LUI t5, 10
  ADDIW t5, t5, -960
  ADD t5, t5, sp
  ADD s2, t5, s0
  LW s3, 0(s2)
  MULW s2, s3, s3
  ADDI s3, zero, 100
  REMW s4, s2, s3
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s2, t5, s0
  LW s0, 0(s2)
  ADDW s2, s4, s0
  SW s2, 0(s1)
  LUI t4, 29
  ADDIW t4, t4, 1276
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  LUI t5, 29
  ADDIW t5, t5, 1272
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb5
bb29:
  LUI t4, 29
  ADDIW t4, t4, 1268
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s0, t4, 2
  LUI t5, 10
  ADDIW t5, t5, -960
  ADD t5, t5, sp
  ADD s1, t5, s0
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s2, t5, s0
  LW s0, 0(s2)
  MULW s2, s0, s0
  ADDI s0, zero, 10
  REMW s3, s2, s0
  SW s3, 0(s1)
  LUI t4, 29
  ADDIW t4, t4, 1268
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  LUI t5, 29
  ADDIW t5, t5, 1264
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb3
bb30:
  LUI t4, 29
  ADDIW t4, t4, 1260
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s0, t4, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s1, t5, s0
  LUI t4, 29
  ADDIW t4, t4, 1260
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 29
  ADDIW t3, t3, 1260
  ADD t3, t3, sp
  LW t3, 0(t3)
  MULW s0, t4, t3
  ADDI s2, zero, 10
  REMW s3, s0, s2
  SW s3, 0(s1)
  LUI t4, 29
  ADDIW t4, t4, 1260
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  LUI t5, 29
  ADDIW t5, t5, 1256
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb1
main:
  LUI t0, 1048547
  ADDIW t0, t0, -1392
  ADD sp, sp, t0
  LUI t5, 29
  ADDIW t5, t5, 1288
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1296
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1304
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1312
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1320
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1328
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1336
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1344
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1352
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1360
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1368
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t4, 29
  ADDIW t4, t4, 1376
  ADD t4, t4, sp
  SD s7, 0(t4)
  LUI t4, 29
  ADDIW t4, t4, 1384
  ADD t4, t4, sp
  SD s11, 0(t4)
  ADD t4, zero, zero
  LUI t5, 29
  ADDIW t5, t5, 1248
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb32
bb32:
  LUI t3, 29
  ADDIW t3, t3, 1248
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 29
  ADDIW t5, t5, 1252
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI s2, 2
  ADDIW s2, s2, 1808
  LUI t4, 29
  ADDIW t4, t4, 1252
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s3, t4, s2
  BNE s3, zero, bb61
  # implict jump to bb33
bb33:
  ADD t4, zero, zero
  LUI t5, 29
  ADDIW t5, t5, 1256
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb34
bb34:
  LUI t3, 29
  ADDIW t3, t3, 1256
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 29
  ADDIW t5, t5, 1260
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI s4, 2
  ADDIW s4, s4, 1808
  LUI t4, 29
  ADDIW t4, t4, 1260
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s5, t4, s4
  BNE s5, zero, bb60
  # implict jump to bb35
bb35:
  ADD t4, zero, zero
  LUI t5, 29
  ADDIW t5, t5, 1264
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb36
bb36:
  LUI t3, 29
  ADDIW t3, t3, 1264
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 29
  ADDIW t5, t5, 1268
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI s6, 2
  ADDIW s6, s6, 1808
  LUI t4, 29
  ADDIW t4, t4, 1268
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s7, t4, s6
  BNE s7, zero, bb59
  # implict jump to bb37
bb37:
  ADD s6, zero, zero
  ADD t4, zero, zero
  LUI t5, 29
  ADDIW t5, t5, 1280
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t5, 29
  ADDIW t5, t5, 1276
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t5, 29
  ADDIW t5, t5, 1272
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb38
bb38:
  LUI t4, 29
  ADDIW t4, t4, 1272
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s10, t4, zero
  LUI t4, 29
  ADDIW t4, t4, 1276
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  LUI t3, 29
  ADDIW t3, t3, 1280
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t2, 29
  ADDIW t2, t2, 1216
  ADD t2, t2, sp
  SW t4, 0(t2)
  ADD t4, s6, zero
  LUI t2, 29
  ADDIW t2, t2, 1220
  ADD t2, t2, sp
  SW t4, 0(t2)
  LUI t2, 2
  ADDIW t2, t2, 1808
  SLT a0, s10, t2
  BNE a0, zero, bb40
  # implict jump to bb39
bb39:
  ADD a0, s11, zero
  LUI t5, 29
  ADDIW t5, t5, 1288
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1296
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI ra, 29
  ADDIW ra, ra, 1304
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 29
  ADDIW t5, t5, 1312
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1320
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1328
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1336
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1344
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1352
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1360
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1368
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1376
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1384
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t0, 29
  ADDIW t0, t0, 1392
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb40:
  SLTI t2, s10, 10
  BNE t2, zero, bb58
  # implict jump to bb41
bb41:
  SLTI t2, s10, 20
  BNE t2, zero, bb54
  # implict jump to bb42
bb42:
  SLTI t2, s10, 30
  BNE t2, zero, bb47
  # implict jump to bb43
bb43:
  SLLIW t2, s10, 2
  LUI a1, 20
  ADDIW a1, a1, -1920
  ADD a1, a1, sp
  ADD a1, a1, t2
  LW t2, 0(a1)
  ADDI a1, zero, 9
  MULW a2, t2, a1
  ADDW t2, s11, a2
  LUI a1, 24
  ADDIW a1, a1, 1684
  REMW a2, t2, a1
  LUI t3, 29
  ADDIW t3, t3, 1220
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 29
  ADDIW t5, t5, 1228
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a2, zero
  LUI t5, 29
  ADDIW t5, t5, 1232
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb44
bb44:
  LUI t4, 29
  ADDIW t4, t4, 1232
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  LUI t4, 29
  ADDIW t4, t4, 1228
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  ADD s2, s1, zero
  LUI t4, 29
  ADDIW t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  ADD s3, s0, zero
  # implict jump to bb45
bb45:
  ADD s7, s3, zero
  ADD s3, s1, zero
  ADD s1, s2, zero
  ADD s2, s1, zero
  ADD s1, s3, zero
  ADD s3, s7, zero
  # implict jump to bb46
bb46:
  ADD s0, s3, zero
  ADD s3, s1, zero
  ADD s1, s2, zero
  ADDIW s2, s10, 1
  ADD s6, s1, zero
  ADD t4, s3, zero
  LUI t5, 29
  ADDIW t5, t5, 1280
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s0, zero
  LUI t5, 29
  ADDIW t5, t5, 1276
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s2, zero
  LUI t5, 29
  ADDIW t5, t5, 1272
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb38
bb47:
  LUI a2, 1
  ADDIW a2, a2, 904
  ADD t4, zero, a2
  LUI t5, 29
  ADDIW t5, t5, 1224
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s11, zero
  LUI t5, 29
  ADDIW t5, t5, 1236
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb48
bb48:
  LUI t3, 29
  ADDIW t3, t3, 1236
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 29
  ADDIW t3, t3, 1240
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 29
  ADDIW t3, t3, 1224
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI a6, 29
  ADDIW a6, a6, 1244
  ADD a6, a6, sp
  SW t4, 0(a6)
  LUI a6, 2
  ADDIW a6, a6, 1808
  LUI t4, 29
  ADDIW t4, t4, 1244
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT a7, t4, a6
  BNE a7, zero, bb50
  # implict jump to bb49
bb49:
  LUI t4, 29
  ADDIW t4, t4, 1240
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a0, t4, zero
  CALL putint
  LUI t3, 29
  ADDIW t3, t3, 1244
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 29
  ADDIW t3, t3, 1228
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 29
  ADDIW t3, t3, 1240
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 29
  ADDIW t5, t5, 1232
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb44
bb50:
  LUI s0, 1
  ADDIW s0, s0, -1863
  LUI t4, 29
  ADDIW t4, t4, 1244
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s4, s0, t4
  BNE s4, zero, bb53
  # implict jump to bb51
bb51:
  SLLIW s0, s10, 2
  ADDI t5, sp, 0
  ADD s4, t5, s0
  LW s0, 0(s4)
  LUI t4, 29
  ADDIW t4, t4, 1240
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s4, t4, s0
  LUI t4, 29
  ADDIW t4, t4, 1244
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s0, t4, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s5, t5, s0
  LW s0, 0(s5)
  ADDW s5, s4, s0
  LUI s0, 3
  ADDIW s0, s0, 1045
  REMW s4, s5, s0
  LUI t4, 29
  ADDIW t4, t4, 1244
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 2
  ADD s5, s0, zero
  ADD s0, s4, zero
  # implict jump to bb52
bb52:
  ADD s4, s0, zero
  ADD s0, s5, zero
  ADD t4, s0, zero
  LUI t5, 29
  ADDIW t5, t5, 1224
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s4, zero
  LUI t5, 29
  ADDIW t5, t5, 1236
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb48
bb53:
  SLLIW s4, s10, 2
  LUI t5, 10
  ADDIW t5, t5, -960
  ADD t5, t5, sp
  ADD s9, t5, s4
  LW s4, 0(s9)
  LUI t4, 29
  ADDIW t4, t4, 1240
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s9, t4, s4
  LUI t4, 29
  ADDIW t4, t4, 1244
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s4, t4, 2
  ADDI t5, sp, 0
  ADD s8, t5, s4
  LW s4, 0(s8)
  SUBW s8, s9, s4
  LUI t4, 29
  ADDIW t4, t4, 1244
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s4, t4, 1
  ADD s5, s4, zero
  ADD s0, s8, zero
  JAL zero, bb52
bb54:
  LUI s0, 1
  ADDIW s0, s0, 904
  ADD s4, zero, s0
  ADD s0, s11, zero
  # implict jump to bb55
bb55:
  ADD s5, s0, zero
  ADD s8, s4, zero
  LUI s9, 2
  ADDIW s9, s9, 1808
  SLT s7, s8, s9
  BNE s7, zero, bb57
  # implict jump to bb56
bb56:
  ADD a0, s5, zero
  CALL putint
  LUI t4, 29
  ADDIW t4, t4, 1220
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  ADD s1, s8, zero
  ADD s3, s5, zero
  JAL zero, bb45
bb57:
  SLLIW s7, s10, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s9, t5, s7
  LW s7, 0(s9)
  ADDW s9, s5, s7
  SLLIW s5, s8, 2
  ADDI t5, sp, 0
  ADD s7, t5, s5
  LW s5, 0(s7)
  SUBW s7, s9, s5
  ADDIW s5, s8, 1
  ADD s4, s5, zero
  ADD s0, s7, zero
  JAL zero, bb55
bb58:
  SLLIW s0, s10, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s4, t5, s0
  LW s0, 0(s4)
  ADDW s4, s11, s0
  ADDI s0, zero, 1333
  REMW s5, s4, s0
  ADD a0, s5, zero
  CALL putint
  LUI t4, 29
  ADDIW t4, t4, 1220
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  LUI t4, 29
  ADDIW t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  ADD s3, s5, zero
  JAL zero, bb46
bb59:
  LUI t4, 29
  ADDIW t4, t4, 1268
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s0, t4, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s1, t5, s0
  LUI t5, 10
  ADDIW t5, t5, -960
  ADD t5, t5, sp
  ADD s2, t5, s0
  LW s3, 0(s2)
  MULW s2, s3, s3
  ADDI s3, zero, 100
  REMW s4, s2, s3
  ADDI t5, sp, 0
  ADD s2, t5, s0
  LW s0, 0(s2)
  ADDW s2, s4, s0
  SW s2, 0(s1)
  LUI t4, 29
  ADDIW t4, t4, 1268
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  LUI t5, 29
  ADDIW t5, t5, 1264
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb36
bb60:
  LUI t4, 29
  ADDIW t4, t4, 1260
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s0, t4, 2
  LUI t5, 10
  ADDIW t5, t5, -960
  ADD t5, t5, sp
  ADD s1, t5, s0
  ADDI t5, sp, 0
  ADD s2, t5, s0
  LW s0, 0(s2)
  MULW s2, s0, s0
  ADDI s0, zero, 10
  REMW s3, s2, s0
  SW s3, 0(s1)
  LUI t4, 29
  ADDIW t4, t4, 1260
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  LUI t5, 29
  ADDIW t5, t5, 1256
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb34
bb61:
  LUI t4, 29
  ADDIW t4, t4, 1252
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s0, t4, 2
  ADDI t5, sp, 0
  ADD s1, t5, s0
  LUI t4, 29
  ADDIW t4, t4, 1252
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 29
  ADDIW t3, t3, 1252
  ADD t3, t3, sp
  LW t3, 0(t3)
  MULW s0, t4, t3
  ADDI s2, zero, 10
  REMW s3, s0, s2
  SW s3, 0(s1)
  LUI t4, 29
  ADDIW t4, t4, 1252
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  LUI t5, 29
  ADDIW t5, t5, 1248
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb32
