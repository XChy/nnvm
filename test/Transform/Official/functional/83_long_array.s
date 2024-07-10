.global long_array
.global main
.section .bss

.section .data
N:
.word 0x00002710
.section .text
long_array:
  LUI t0, 1048547
  ADDIW t0, t0, -1344
  ADD sp, sp, t0
  LUI t5, 29
  ADDIW t5, t5, 1232
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1240
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1248
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1256
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1264
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1272
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1280
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1288
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1296
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1304
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1312
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t4, 29
  ADDIW t4, t4, 1320
  ADD t4, t4, sp
  SD s8, 0(t4)
  LUI t4, 29
  ADDIW t4, t4, 1328
  ADD t4, t4, sp
  SD s9, 0(t4)
  ADD t4, a0, zero
  LUI t5, 29
  ADDIW t5, t5, 1228
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD s1, zero, zero
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  LUI s3, 2
  ADDIW s3, s3, 1808
  SLT s4, s2, s3
  BNE s4, zero, bb30
  # implict jump to bb2
bb2:
  ADD s1, zero, zero
  # implict jump to bb3
bb3:
  ADD s2, s1, zero
  LUI s3, 2
  ADDIW s3, s3, 1808
  SLT s4, s2, s3
  BNE s4, zero, bb29
  # implict jump to bb4
bb4:
  ADD s1, zero, zero
  # implict jump to bb5
bb5:
  ADD s2, s1, zero
  LUI s3, 2
  ADDIW s3, s3, 1808
  SLT s4, s2, s3
  BNE s4, zero, bb28
  # implict jump to bb6
bb6:
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADD s4, zero, zero
  # implict jump to bb7
bb7:
  ADD t4, s4, zero
  LUI t5, 29
  ADDIW t5, t5, 1224
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s3, zero
  LUI t5, 29
  ADDIW t5, t5, 1216
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s2, zero
  LUI t5, 29
  ADDIW t5, t5, 1220
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD s8, s1, zero
  LUI s9, 2
  ADDIW s9, s9, 1808
  LUI t4, 29
  ADDIW t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s10, t4, s9
  BNE s10, zero, bb9
  # implict jump to bb8
bb8:
  LUI t4, 29
  ADDIW t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a0, t4, zero
  LUI t5, 29
  ADDIW t5, t5, 1232
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1240
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI ra, 29
  ADDIW ra, ra, 1248
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 29
  ADDIW t5, t5, 1256
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1264
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1272
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1280
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1288
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1296
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1304
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1312
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1320
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1328
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t0, 29
  ADDIW t0, t0, 1344
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb9:
  LUI t4, 29
  ADDIW t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s9, t4, 10
  BNE s9, zero, bb27
  # implict jump to bb10
bb10:
  LUI t4, 29
  ADDIW t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s0, t4, 20
  BNE s0, zero, bb23
  # implict jump to bb11
bb11:
  LUI t4, 29
  ADDIW t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s2, t4, 30
  BNE s2, zero, bb16
  # implict jump to bb12
bb12:
  LUI t4, 29
  ADDIW t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s0, t4, 2
  ADDI t5, sp, 0
  ADD s1, t5, s0
  LW s0, 0(s1)
  LUI t4, 29
  ADDIW t4, t4, 1228
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s1, s0, t4
  LUI t4, 29
  ADDIW t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s0, t4, s1
  LUI s1, 24
  ADDIW s1, s1, 1684
  REMW s3, s0, s1
  ADD s2, s8, zero
  ADD s4, s3, zero
  # implict jump to bb13
bb13:
  ADD s5, s4, zero
  ADD s6, s2, zero
  ADD s0, s6, zero
  LUI t4, 29
  ADDIW t4, t4, 1220
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  ADD s3, s5, zero
  # implict jump to bb14
bb14:
  ADD s2, s3, zero
  ADD s4, s1, zero
  ADD s5, s0, zero
  ADD s9, s5, zero
  ADD s10, s4, zero
  ADD s6, s2, zero
  # implict jump to bb15
bb15:
  ADD s11, s6, zero
  ADD s7, s10, zero
  ADD s5, s9, zero
  LUI t4, 29
  ADDIW t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  ADD s1, s5, zero
  ADD s2, s7, zero
  ADD s3, s11, zero
  ADD s4, s0, zero
  JAL zero, bb7
bb16:
  LUI s2, 1
  ADDIW s2, s2, 904
  ADD s4, zero, s2
  LUI t4, 29
  ADDIW t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  # implict jump to bb17
bb17:
  ADD s5, s2, zero
  ADD s6, s4, zero
  LUI s7, 2
  ADDIW s7, s7, 1808
  SLT s9, s6, s7
  BNE s9, zero, bb19
  # implict jump to bb18
bb18:
  ADD a0, s5, zero
  CALL putint
  ADD s2, s6, zero
  ADD s4, s5, zero
  JAL zero, bb13
bb19:
  LUI s7, 1
  ADDIW s7, s7, -1863
  SLT s9, s7, s6
  BNE s9, zero, bb22
  # implict jump to bb20
bb20:
  LUI t4, 29
  ADDIW t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s2, t4, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s4, t5, s2
  LW s2, 0(s4)
  ADDW s4, s5, s2
  SLLIW s2, s6, 2
  ADDI t5, sp, 0
  ADD s10, t5, s2
  LW s2, 0(s10)
  ADDW s10, s4, s2
  LUI s2, 3
  ADDIW s2, s2, 1045
  REMW s4, s10, s2
  ADDIW s2, s6, 2
  ADD s9, s2, zero
  ADD s7, s4, zero
  # implict jump to bb21
bb21:
  ADD s10, s7, zero
  ADD s11, s9, zero
  ADD s4, s11, zero
  ADD s2, s10, zero
  JAL zero, bb17
bb22:
  LUI t4, 29
  ADDIW t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s7, t4, 2
  LUI t5, 10
  ADDIW t5, t5, -960
  ADD t5, t5, sp
  ADD s9, t5, s7
  LW s7, 0(s9)
  ADDW s9, s5, s7
  SLLIW s7, s6, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s10, t5, s7
  LW s7, 0(s10)
  SUBW s10, s9, s7
  ADDIW s7, s6, 1
  ADD s9, s7, zero
  ADD s7, s10, zero
  JAL zero, bb21
bb23:
  LUI s0, 1
  ADDIW s0, s0, 904
  ADD s1, zero, s0
  LUI t4, 29
  ADDIW t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  # implict jump to bb24
bb24:
  ADD s2, s0, zero
  ADD s3, s1, zero
  LUI s4, 2
  ADDIW s4, s4, 1808
  SLT s5, s3, s4
  BNE s5, zero, bb26
  # implict jump to bb25
bb25:
  ADD a0, s2, zero
  CALL putint
  ADD s0, s8, zero
  ADD s1, s3, zero
  ADD s3, s2, zero
  JAL zero, bb14
bb26:
  LUI t4, 29
  ADDIW t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s4, t4, 2
  ADDI t5, sp, 0
  ADD s5, t5, s4
  LW s4, 0(s5)
  ADDW s5, s2, s4
  SLLIW s4, s3, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s7, t5, s4
  LW s4, 0(s7)
  SUBW s7, s5, s4
  ADDIW s4, s3, 1
  ADD s1, s4, zero
  ADD s0, s7, zero
  JAL zero, bb24
bb27:
  LUI t4, 29
  ADDIW t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s9, t4, 2
  ADDI t5, sp, 0
  ADD s10, t5, s9
  LW s9, 0(s10)
  LUI t4, 29
  ADDIW t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s10, t4, s9
  ADDI s9, zero, 1333
  REMW s11, s10, s9
  ADD a0, s11, zero
  CALL putint
  ADD s9, s8, zero
  LUI t4, 29
  ADDIW t4, t4, 1220
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s10, t4, zero
  ADD s6, s11, zero
  JAL zero, bb15
bb28:
  SLLIW s3, s2, 2
  ADDI t5, sp, 0
  ADD s4, t5, s3
  LUI t5, 10
  ADDIW t5, t5, -960
  ADD t5, t5, sp
  ADD s5, t5, s3
  LW s6, 0(s5)
  MULW s5, s6, s6
  ADDI s6, zero, 100
  REMW s7, s5, s6
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s5, t5, s3
  LW s3, 0(s5)
  ADDW s5, s7, s3
  SW s5, 0(s4)
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb5
bb29:
  SLLIW s3, s2, 2
  LUI t5, 10
  ADDIW t5, t5, -960
  ADD t5, t5, sp
  ADD s4, t5, s3
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s5, t5, s3
  LW s3, 0(s5)
  MULW s5, s3, s3
  ADDI s3, zero, 10
  REMW s6, s5, s3
  SW s6, 0(s4)
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb3
bb30:
  SLLIW s3, s2, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s4, t5, s3
  MULW s3, s2, s2
  ADDI s5, zero, 10
  REMW s6, s3, s5
  SW s6, 0(s4)
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb1
main:
  LUI t0, 1048547
  ADDIW t0, t0, -1344
  ADD sp, sp, t0
  LUI t5, 29
  ADDIW t5, t5, 1232
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1240
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1248
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1256
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1264
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1272
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1280
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1288
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1296
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1304
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1312
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1320
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1328
  ADD t5, t5, sp
  SD s9, 0(t5)
  ADD s0, zero, zero
  # implict jump to bb32
bb32:
  ADD s1, s0, zero
  LUI s2, 2
  ADDIW s2, s2, 1808
  SLT s3, s1, s2
  BNE s3, zero, bb61
  # implict jump to bb33
bb33:
  ADD s0, zero, zero
  # implict jump to bb34
bb34:
  ADD s1, s0, zero
  LUI s2, 2
  ADDIW s2, s2, 1808
  SLT s3, s1, s2
  BNE s3, zero, bb60
  # implict jump to bb35
bb35:
  ADD s0, zero, zero
  # implict jump to bb36
bb36:
  ADD s1, s0, zero
  LUI s2, 2
  ADDIW s2, s2, 1808
  SLT s3, s1, s2
  BNE s3, zero, bb59
  # implict jump to bb37
bb37:
  ADD s0, zero, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  # implict jump to bb38
bb38:
  ADD t4, s3, zero
  LUI t5, 29
  ADDIW t5, t5, 1224
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s2, zero
  LUI t5, 29
  ADDIW t5, t5, 1216
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s1, zero
  LUI t5, 29
  ADDIW t5, t5, 1220
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD s7, s0, zero
  LUI s8, 2
  ADDIW s8, s8, 1808
  LUI t4, 29
  ADDIW t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s9, t4, s8
  BNE s9, zero, bb40
  # implict jump to bb39
bb39:
  LUI t4, 29
  ADDIW t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a0, t4, zero
  LUI t5, 29
  ADDIW t5, t5, 1232
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1240
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI ra, 29
  ADDIW ra, ra, 1248
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 29
  ADDIW t5, t5, 1256
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1264
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1272
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1280
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1288
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1296
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1304
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1312
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1320
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1328
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t0, 29
  ADDIW t0, t0, 1344
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb40:
  LUI t4, 29
  ADDIW t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s8, t4, 10
  BNE s8, zero, bb58
  # implict jump to bb41
bb41:
  LUI t4, 29
  ADDIW t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s0, t4, 20
  BNE s0, zero, bb54
  # implict jump to bb42
bb42:
  LUI t4, 29
  ADDIW t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s2, t4, 30
  BNE s2, zero, bb47
  # implict jump to bb43
bb43:
  LUI t4, 29
  ADDIW t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s0, t4, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s1, t5, s0
  LW s0, 0(s1)
  ADDI s1, zero, 9
  MULW s3, s0, s1
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
  # implict jump to bb44
bb44:
  ADD s5, s4, zero
  ADD s6, s2, zero
  ADD s0, s6, zero
  LUI t4, 29
  ADDIW t4, t4, 1220
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  ADD s3, s5, zero
  # implict jump to bb45
bb45:
  ADD s2, s3, zero
  ADD s4, s1, zero
  ADD s5, s0, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  ADD s11, s2, zero
  # implict jump to bb46
bb46:
  ADD s10, s11, zero
  ADD s5, s9, zero
  ADD s6, s8, zero
  LUI t4, 29
  ADDIW t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s4, t4, 1
  ADD s0, s6, zero
  ADD s1, s5, zero
  ADD s2, s10, zero
  ADD s3, s4, zero
  JAL zero, bb38
bb47:
  LUI s2, 1
  ADDIW s2, s2, 904
  ADD s4, zero, s2
  LUI t4, 29
  ADDIW t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  # implict jump to bb48
bb48:
  ADD s5, s2, zero
  ADD s6, s4, zero
  LUI s8, 2
  ADDIW s8, s8, 1808
  SLT s9, s6, s8
  BNE s9, zero, bb50
  # implict jump to bb49
bb49:
  ADD a0, s5, zero
  CALL putint
  ADD s2, s6, zero
  ADD s4, s5, zero
  JAL zero, bb44
bb50:
  LUI s8, 1
  ADDIW s8, s8, -1863
  SLT s9, s8, s6
  BNE s9, zero, bb53
  # implict jump to bb51
bb51:
  LUI t4, 29
  ADDIW t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s2, t4, 2
  ADDI t5, sp, 0
  ADD s4, t5, s2
  LW s2, 0(s4)
  ADDW s4, s5, s2
  SLLIW s2, s6, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s10, t5, s2
  LW s2, 0(s10)
  ADDW s10, s4, s2
  LUI s2, 3
  ADDIW s2, s2, 1045
  REMW s4, s10, s2
  ADDIW s2, s6, 2
  ADD s9, s2, zero
  ADD s8, s4, zero
  # implict jump to bb52
bb52:
  ADD s10, s8, zero
  ADD s11, s9, zero
  ADD s4, s11, zero
  ADD s2, s10, zero
  JAL zero, bb48
bb53:
  LUI t4, 29
  ADDIW t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s8, t4, 2
  LUI t5, 10
  ADDIW t5, t5, -960
  ADD t5, t5, sp
  ADD s9, t5, s8
  LW s8, 0(s9)
  ADDW s9, s5, s8
  SLLIW s8, s6, 2
  ADDI t5, sp, 0
  ADD s10, t5, s8
  LW s8, 0(s10)
  SUBW s10, s9, s8
  ADDIW s8, s6, 1
  ADD s9, s8, zero
  ADD s8, s10, zero
  JAL zero, bb52
bb54:
  LUI s0, 1
  ADDIW s0, s0, 904
  ADD s1, zero, s0
  LUI t4, 29
  ADDIW t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  # implict jump to bb55
bb55:
  ADD s2, s0, zero
  ADD s3, s1, zero
  LUI s4, 2
  ADDIW s4, s4, 1808
  SLT s5, s3, s4
  BNE s5, zero, bb57
  # implict jump to bb56
bb56:
  ADD a0, s2, zero
  CALL putint
  ADD s0, s7, zero
  ADD s1, s3, zero
  ADD s3, s2, zero
  JAL zero, bb45
bb57:
  LUI t4, 29
  ADDIW t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s4, t4, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s5, t5, s4
  LW s4, 0(s5)
  ADDW s5, s2, s4
  SLLIW s4, s3, 2
  ADDI t5, sp, 0
  ADD s6, t5, s4
  LW s4, 0(s6)
  SUBW s6, s5, s4
  ADDIW s4, s3, 1
  ADD s1, s4, zero
  ADD s0, s6, zero
  JAL zero, bb55
bb58:
  LUI t4, 29
  ADDIW t4, t4, 1224
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s8, t4, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s9, t5, s8
  LW s8, 0(s9)
  LUI t4, 29
  ADDIW t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s9, t4, s8
  ADDI s8, zero, 1333
  REMW s10, s9, s8
  ADD a0, s10, zero
  CALL putint
  ADD s8, s7, zero
  LUI t4, 29
  ADDIW t4, t4, 1220
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s9, t4, zero
  ADD s11, s10, zero
  JAL zero, bb46
bb59:
  SLLIW s2, s1, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s3, t5, s2
  LUI t5, 10
  ADDIW t5, t5, -960
  ADD t5, t5, sp
  ADD s4, t5, s2
  LW s5, 0(s4)
  MULW s4, s5, s5
  ADDI s5, zero, 100
  REMW s6, s4, s5
  ADDI t5, sp, 0
  ADD s4, t5, s2
  LW s2, 0(s4)
  ADDW s4, s6, s2
  SW s4, 0(s3)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb36
bb60:
  SLLIW s2, s1, 2
  LUI t5, 10
  ADDIW t5, t5, -960
  ADD t5, t5, sp
  ADD s3, t5, s2
  ADDI t5, sp, 0
  ADD s4, t5, s2
  LW s2, 0(s4)
  MULW s4, s2, s2
  ADDI s2, zero, 10
  REMW s5, s4, s2
  SW s5, 0(s3)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb34
bb61:
  SLLIW s2, s1, 2
  ADDI t5, sp, 0
  ADD s3, t5, s2
  MULW s2, s1, s1
  ADDI s4, zero, 10
  REMW s5, s2, s4
  SW s5, 0(s3)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb32
