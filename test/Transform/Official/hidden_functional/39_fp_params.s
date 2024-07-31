.global main
.section .bss


.section .data
k:
.word 0x00000000
.CONSTANT.7.0:
.word 0x00000000
.section .text
main:
  LUI t0, 1048575
  ADDIW t0, t0, -640
  ADD sp, sp, t0
  LUI t5, 1
  ADDIW t5, t5, -1960
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1648
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1192
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -656
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -648
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -640
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -632
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -624
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -136
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -128
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -120
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -112
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -104
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  FSD fs0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -88
  ADD t5, t5, sp
  FSD fs1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -80
  ADD t5, t5, sp
  FSD fs2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -72
  ADD t5, t5, sp
  FSD fs3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -64
  ADD t5, t5, sp
  FSD fs4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -56
  ADD t5, t5, sp
  FSD fs5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -48
  ADD t5, t5, sp
  FSD fs6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -40
  ADD t5, t5, sp
  FSD fs7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -32
  ADD t5, t5, sp
  FSD fs8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -24
  ADD t5, t5, sp
  FSD fs9, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  FSD fs10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -8
  ADD t5, t5, sp
  FSD fs11, 0(t5)
  CALL getint
  ADD s8, a0, zero
  LA s6, k
  SW s8, 0(s6)
  ADD t4, zero, zero
  SW t4, 1940(sp)
  # implict jump to bb1
bb1:
  LW t4, 1940(sp)
  ADD s8, t4, zero
  ADDI s6, zero, 12
  MULW s6, s8, s6
  LUI a0, 1
  ADDIW a0, a0, -616
  ADD a0, a0, sp
  ADD s6, a0, s6
  ADD a0, s6, zero
  CALL getfarray
  ADDIW t4, s8, 1
  SW t4, 1960(sp)
  LW t4, 1960(sp)
  SLTI s8, t4, 40
  BNE s8, zero, bb36
  # implict jump to bb2
bb2:
  ADD t4, zero, zero
  SW t4, 1956(sp)
  # implict jump to bb3
bb3:
  LW t4, 1956(sp)
  ADD s6, t4, zero
  ADDI s8, zero, 12
  MULW s8, s6, s8
  LUI a0, 1
  ADDIW a0, a0, -944
  ADD a0, a0, sp
  ADD s8, a0, s8
  ADD a0, s8, zero
  CALL getarray
  ADDIW t4, s6, 1
  SW t4, 1952(sp)
  LW t4, 1952(sp)
  SLTI s8, t4, 24
  BNE s8, zero, bb35
  # implict jump to bb4
bb4:
  LA s8, k
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  LUI t5, 1
  ADDIW t5, t5, -616
  ADD t5, t5, sp
  ADD s6, t5, s8
  FLW ft4, 0(s6)
  FSW ft4, 1804(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 12
  LUI t5, 1
  ADDIW t5, t5, 328
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 328
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1808(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 24
  LUI t5, 1
  ADDIW t5, t5, 400
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 400
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1812(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 36
  LUI t5, 1
  ADDIW t5, t5, 632
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 632
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1816(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 48
  LUI t5, 1
  ADDIW t5, t5, 624
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 624
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1820(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 60
  LUI t5, 1
  ADDIW t5, t5, 616
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 616
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1824(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 72
  LUI t5, 1
  ADDIW t5, t5, 608
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 608
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1828(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 84
  LUI t5, 1
  ADDIW t5, t5, 600
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 600
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1832(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 96
  LUI t5, 1
  ADDIW t5, t5, 592
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 592
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1652(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 108
  LUI t5, 1
  ADDIW t5, t5, 584
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 584
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1592(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 120
  LUI t5, 1
  ADDIW t5, t5, 576
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 576
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1596(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 132
  LUI t5, 1
  ADDIW t5, t5, 568
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 568
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1600(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 144
  LUI t5, 1
  ADDIW t5, t5, 480
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 480
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  FSW ft4, 0(t4)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 156
  LUI t5, 1
  ADDIW t5, t5, 552
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 552
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  FSW ft4, 0(t4)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 168
  LUI t5, 1
  ADDIW t5, t5, 544
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 544
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  FSW ft4, 0(t4)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 180
  LUI t5, 1
  ADDIW t5, t5, 536
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 536
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  LUI t4, 1
  ADDIW t4, t4, -2024
  ADD t4, t4, sp
  FSW ft4, 0(t4)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 192
  LUI t5, 1
  ADDIW t5, t5, 528
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 528
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 2004(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 204
  LUI t5, 1
  ADDIW t5, t5, 520
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 520
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1976(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 216
  LUI t5, 1
  ADDIW t5, t5, 512
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 512
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1984(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 228
  LUI t5, 1
  ADDIW t5, t5, 504
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 504
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1992(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 240
  LUI t5, 1
  ADDIW t5, t5, 496
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 496
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 2000(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 252
  LUI t5, 1
  ADDIW t5, t5, 488
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 488
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 2008(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 264
  LUI t5, 1
  ADDIW t5, t5, 240
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 240
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 2016(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 276
  LUI t5, 1
  ADDIW t5, t5, 152
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 152
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 2024(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 288
  LUI t5, 1
  ADDIW t5, t5, 144
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 144
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 2032(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 300
  LUI t5, 1
  ADDIW t5, t5, 136
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 136
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1968(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 312
  LUI t5, 1
  ADDIW t5, t5, 128
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 128
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1704(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 324
  LUI t5, 1
  ADDIW t5, t5, 120
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 120
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1696(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 336
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 112
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1688(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 348
  LUI t5, 1
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 104
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1680(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 360
  LUI t5, 1
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 96
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1672(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 372
  LUI t5, 1
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 88
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1664(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 384
  LUI t5, 1
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 0
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1656(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 396
  LUI t5, 1
  ADDIW t5, t5, 72
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 72
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1648(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 408
  LUI t5, 1
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 64
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1640(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 420
  LUI t5, 1
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 56
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1632(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 432
  LUI t5, 1
  ADDIW t5, t5, 48
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 48
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1624(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 444
  LUI t5, 1
  ADDIW t5, t5, 40
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 40
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1616(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 456
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 32
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1608(sp)
  LUI t4, 1
  ADDIW t4, t4, -616
  ADD t4, t4, sp
  ADDI t4, t4, 468
  LUI t5, 1
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 24
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s8, t4, s8
  FLW ft4, 0(s8)
  FSW ft4, 1604(sp)
  FCVT.S.W ft4, zero
  FSW ft4, 1800(sp)
  FLW ft4, 1604(sp)
  FLW ft3, 1800(sp)
  FEQ.S s8, ft4, ft3
  XORI s8, s8, 1
  BNE s8, zero, bb34
  # implict jump to bb5
bb5:
  FLW ft4, 1804(sp)
  FLW ft3, 1804(sp)
  FSGNJ.S fs7, ft4, ft3
  FLW ft4, 1808(sp)
  FLW ft3, 1808(sp)
  FSGNJ.S fs11, ft4, ft3
  FLW ft4, 1812(sp)
  FLW ft3, 1812(sp)
  FSGNJ.S fs3, ft4, ft3
  FLW ft4, 1816(sp)
  FLW ft3, 1816(sp)
  FSGNJ.S fs2, ft4, ft3
  FLW ft4, 1820(sp)
  FLW ft3, 1820(sp)
  FSGNJ.S fs5, ft4, ft3
  FLW ft4, 1824(sp)
  FLW ft3, 1824(sp)
  FSGNJ.S fs4, ft4, ft3
  FLW ft4, 1828(sp)
  FLW ft3, 1828(sp)
  FSGNJ.S fs0, ft4, ft3
  FLW ft4, 1832(sp)
  FLW ft3, 1832(sp)
  FSGNJ.S fs10, ft4, ft3
  FLW ft4, 1652(sp)
  FLW ft3, 1652(sp)
  FSGNJ.S fs8, ft4, ft3
  FLW ft4, 1592(sp)
  FLW ft3, 1592(sp)
  FSGNJ.S fs1, ft4, ft3
  FLW ft4, 1596(sp)
  FLW ft3, 1596(sp)
  FSGNJ.S fs9, ft4, ft3
  FLW ft3, 1600(sp)
  FLW ft4, 1600(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 520(sp)
  LUI t5, 1
  ADDIW t5, t5, -2048
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -2048
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1796(sp)
  LUI t5, 1
  ADDIW t5, t5, -2040
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -2040
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1792(sp)
  LUI t5, 1
  ADDIW t5, t5, -2032
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -2032
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1788(sp)
  LUI t5, 1
  ADDIW t5, t5, -2024
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -2024
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1784(sp)
  FLW ft3, 2004(sp)
  FLW ft4, 2004(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1780(sp)
  FLW ft3, 1976(sp)
  FLW ft4, 1976(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1712(sp)
  FLW ft3, 1984(sp)
  FLW ft4, 1984(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1772(sp)
  FLW ft3, 1992(sp)
  FLW ft4, 1992(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1768(sp)
  FLW ft3, 2000(sp)
  FLW ft4, 2000(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1764(sp)
  FLW ft3, 2008(sp)
  FLW ft4, 2008(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1760(sp)
  FLW ft3, 2016(sp)
  FLW ft4, 2016(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1756(sp)
  FLW ft3, 2024(sp)
  FLW ft4, 2024(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1752(sp)
  FLW ft3, 2032(sp)
  FLW ft4, 2032(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1748(sp)
  FLW ft3, 1968(sp)
  FLW ft4, 1968(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1744(sp)
  FLW ft3, 1704(sp)
  FLW ft4, 1704(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1740(sp)
  FLW ft3, 1696(sp)
  FLW ft4, 1696(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1736(sp)
  FLW ft3, 1688(sp)
  FLW ft4, 1688(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1732(sp)
  FLW ft3, 1680(sp)
  FLW ft4, 1680(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1728(sp)
  FLW ft3, 1672(sp)
  FLW ft4, 1672(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1724(sp)
  FLW ft3, 1664(sp)
  FLW ft4, 1664(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1720(sp)
  FLW ft3, 1656(sp)
  FLW ft4, 1656(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1716(sp)
  FLW ft3, 1648(sp)
  FLW ft4, 1648(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1528(sp)
  FLW ft3, 1640(sp)
  FLW ft4, 1640(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1056(sp)
  FLW ft3, 1632(sp)
  FLW ft4, 1632(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 344(sp)
  FLW ft3, 1624(sp)
  FLW ft4, 1624(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 348(sp)
  FLW ft3, 1616(sp)
  FLW ft4, 1616(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 352(sp)
  FLW ft3, 1608(sp)
  FLW ft4, 1608(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 356(sp)
  FLW ft3, 1604(sp)
  FLW ft4, 1604(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 360(sp)
  # implict jump to bb6
bb6:
  FLW ft3, 360(sp)
  FLW ft4, 360(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 364(sp)
  FLW ft3, 356(sp)
  FLW ft4, 356(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 368(sp)
  FLW ft3, 352(sp)
  FLW ft4, 352(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 372(sp)
  FLW ft3, 348(sp)
  FLW ft4, 348(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 340(sp)
  FLW ft3, 344(sp)
  FLW ft4, 344(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 380(sp)
  FLW ft3, 1056(sp)
  FLW ft4, 1056(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 384(sp)
  FLW ft3, 1528(sp)
  FLW ft4, 1528(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 388(sp)
  FLW ft3, 1716(sp)
  FLW ft4, 1716(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 392(sp)
  FLW ft3, 1720(sp)
  FLW ft4, 1720(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 396(sp)
  FLW ft3, 1724(sp)
  FLW ft4, 1724(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 400(sp)
  FLW ft3, 1728(sp)
  FLW ft4, 1728(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 404(sp)
  FLW ft3, 1732(sp)
  FLW ft4, 1732(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 308(sp)
  FLW ft3, 1736(sp)
  FLW ft4, 1736(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 276(sp)
  FLW ft3, 1740(sp)
  FLW ft4, 1740(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 280(sp)
  FLW ft3, 1744(sp)
  FLW ft4, 1744(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 284(sp)
  FLW ft3, 1748(sp)
  FLW ft4, 1748(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 288(sp)
  FLW ft3, 1752(sp)
  FLW ft4, 1752(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 292(sp)
  FLW ft3, 1756(sp)
  FLW ft4, 1756(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 296(sp)
  FLW ft3, 1760(sp)
  FLW ft4, 1760(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 300(sp)
  FLW ft3, 1764(sp)
  FLW ft4, 1764(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 304(sp)
  FLW ft3, 1768(sp)
  FLW ft4, 1768(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 272(sp)
  FLW ft3, 1772(sp)
  FLW ft4, 1772(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 312(sp)
  FLW ft3, 1712(sp)
  FLW ft4, 1712(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 316(sp)
  FLW ft3, 1780(sp)
  FLW ft4, 1780(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 320(sp)
  FLW ft3, 1784(sp)
  FLW ft4, 1784(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 324(sp)
  FLW ft3, 1788(sp)
  FLW ft4, 1788(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 328(sp)
  FLW ft3, 1792(sp)
  FLW ft4, 1792(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 332(sp)
  FLW ft3, 1796(sp)
  FLW ft4, 1796(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 336(sp)
  FLW ft3, 520(sp)
  FLW ft4, 520(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 376(sp)
  FSGNJ.S ft4, fs9, fs9
  FSW ft4, 480(sp)
  FSGNJ.S ft4, fs1, fs1
  FSW ft4, 484(sp)
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 488(sp)
  FSGNJ.S ft4, fs10, fs10
  FSW ft4, 492(sp)
  FSGNJ.S ft4, fs0, fs0
  FSW ft4, 496(sp)
  FSGNJ.S ft4, fs4, fs4
  FSW ft4, 500(sp)
  FSGNJ.S ft4, fs5, fs5
  FSW ft4, 504(sp)
  FSGNJ.S ft4, fs2, fs2
  FSW ft4, 508(sp)
  FSGNJ.S ft4, fs3, fs3
  FSW ft4, 476(sp)
  FSGNJ.S ft4, fs11, fs11
  FSW ft4, 516(sp)
  FSGNJ.S fs6, fs7, fs7
  FLW ft4, 516(sp)
  FADD.S fs6, fs6, ft4
  FLW ft4, 476(sp)
  FADD.S fs6, fs6, ft4
  FLW ft4, 1800(sp)
  FEQ.S s8, fs6, ft4
  XORI s8, s8, 1
  BNE s8, zero, bb8
  # implict jump to bb7
bb7:
  FLW ft4, 516(sp)
  FLW ft3, 516(sp)
  FSGNJ.S fs7, ft4, ft3
  FLW ft4, 476(sp)
  FLW ft3, 476(sp)
  FSGNJ.S fs11, ft4, ft3
  FLW ft4, 508(sp)
  FLW ft3, 508(sp)
  FSGNJ.S fs3, ft4, ft3
  FLW ft4, 504(sp)
  FLW ft3, 504(sp)
  FSGNJ.S fs2, ft4, ft3
  FLW ft4, 500(sp)
  FLW ft3, 500(sp)
  FSGNJ.S fs5, ft4, ft3
  FLW ft4, 496(sp)
  FLW ft3, 496(sp)
  FSGNJ.S fs4, ft4, ft3
  FLW ft4, 492(sp)
  FLW ft3, 492(sp)
  FSGNJ.S fs0, ft4, ft3
  FLW ft4, 488(sp)
  FLW ft3, 488(sp)
  FSGNJ.S fs10, ft4, ft3
  FLW ft4, 484(sp)
  FLW ft3, 484(sp)
  FSGNJ.S fs8, ft4, ft3
  FLW ft4, 480(sp)
  FLW ft3, 480(sp)
  FSGNJ.S fs1, ft4, ft3
  FLW ft4, 376(sp)
  FLW ft3, 376(sp)
  FSGNJ.S fs9, ft4, ft3
  FLW ft3, 336(sp)
  FLW ft4, 336(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 520(sp)
  FLW ft3, 332(sp)
  FLW ft4, 332(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1796(sp)
  FLW ft3, 328(sp)
  FLW ft4, 328(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1792(sp)
  FLW ft3, 324(sp)
  FLW ft4, 324(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1788(sp)
  FLW ft3, 320(sp)
  FLW ft4, 320(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1784(sp)
  FLW ft3, 316(sp)
  FLW ft4, 316(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1780(sp)
  FLW ft3, 312(sp)
  FLW ft4, 312(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1712(sp)
  FLW ft3, 272(sp)
  FLW ft4, 272(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1772(sp)
  FLW ft3, 304(sp)
  FLW ft4, 304(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1768(sp)
  FLW ft3, 300(sp)
  FLW ft4, 300(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1764(sp)
  FLW ft3, 296(sp)
  FLW ft4, 296(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1760(sp)
  FLW ft3, 292(sp)
  FLW ft4, 292(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1756(sp)
  FLW ft3, 288(sp)
  FLW ft4, 288(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1752(sp)
  FLW ft3, 284(sp)
  FLW ft4, 284(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1748(sp)
  FLW ft3, 280(sp)
  FLW ft4, 280(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1744(sp)
  FLW ft3, 276(sp)
  FLW ft4, 276(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1740(sp)
  FLW ft3, 308(sp)
  FLW ft4, 308(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1736(sp)
  FLW ft3, 404(sp)
  FLW ft4, 404(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1732(sp)
  FLW ft3, 400(sp)
  FLW ft4, 400(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1728(sp)
  FLW ft3, 396(sp)
  FLW ft4, 396(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1724(sp)
  FLW ft3, 392(sp)
  FLW ft4, 392(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1720(sp)
  FLW ft3, 388(sp)
  FLW ft4, 388(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1716(sp)
  FLW ft3, 384(sp)
  FLW ft4, 384(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1528(sp)
  FLW ft3, 380(sp)
  FLW ft4, 380(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1056(sp)
  FLW ft3, 340(sp)
  FLW ft4, 340(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 344(sp)
  FLW ft3, 372(sp)
  FLW ft4, 372(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 348(sp)
  FLW ft3, 368(sp)
  FLW ft4, 368(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 352(sp)
  FLW ft3, 364(sp)
  FLW ft4, 364(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 356(sp)
  FSGNJ.S ft4, fs6, fs6
  FSW ft4, 360(sp)
  JAL zero, bb6
bb8:
  FLW ft3, 1800(sp)
  FLW ft4, 1800(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 524(sp)
  FLW ft3, 516(sp)
  FLW ft4, 516(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 528(sp)
  FLW ft3, 476(sp)
  FLW ft4, 476(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 532(sp)
  FLW ft3, 508(sp)
  FLW ft4, 508(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 536(sp)
  FLW ft3, 504(sp)
  FLW ft4, 504(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 540(sp)
  FLW ft3, 500(sp)
  FLW ft4, 500(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 444(sp)
  FLW ft3, 496(sp)
  FLW ft4, 496(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 412(sp)
  FLW ft3, 492(sp)
  FLW ft4, 492(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 416(sp)
  FLW ft3, 488(sp)
  FLW ft4, 488(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 420(sp)
  FLW ft3, 484(sp)
  FLW ft4, 484(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 424(sp)
  FLW ft3, 480(sp)
  FLW ft4, 480(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 428(sp)
  FLW ft3, 376(sp)
  FLW ft4, 376(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 432(sp)
  FLW ft3, 336(sp)
  FLW ft4, 336(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 436(sp)
  FLW ft3, 332(sp)
  FLW ft4, 332(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 440(sp)
  FLW ft3, 328(sp)
  FLW ft4, 328(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 408(sp)
  FLW ft3, 324(sp)
  FLW ft4, 324(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 448(sp)
  FLW ft3, 320(sp)
  FLW ft4, 320(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 452(sp)
  FLW ft3, 316(sp)
  FLW ft4, 316(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 456(sp)
  FLW ft3, 312(sp)
  FLW ft4, 312(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 460(sp)
  FLW ft3, 272(sp)
  FLW ft4, 272(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 464(sp)
  FLW ft3, 304(sp)
  FLW ft4, 304(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 468(sp)
  FLW ft3, 300(sp)
  FLW ft4, 300(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 472(sp)
  FLW ft3, 296(sp)
  FLW ft4, 296(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 240(sp)
  FLW ft3, 292(sp)
  FLW ft4, 292(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 72(sp)
  FLW ft3, 288(sp)
  FLW ft4, 288(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 76(sp)
  FLW ft3, 284(sp)
  FLW ft4, 284(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 80(sp)
  FLW ft3, 280(sp)
  FLW ft4, 280(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 84(sp)
  FLW ft3, 276(sp)
  FLW ft4, 276(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 88(sp)
  FLW ft3, 308(sp)
  FLW ft4, 308(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 92(sp)
  FLW ft4, 404(sp)
  FLW ft3, 404(sp)
  FSGNJ.S fs8, ft4, ft3
  FLW ft4, 400(sp)
  FLW ft3, 400(sp)
  FSGNJ.S fs9, ft4, ft3
  FLW ft4, 396(sp)
  FLW ft3, 396(sp)
  FSGNJ.S fs10, ft4, ft3
  FLW ft4, 392(sp)
  FLW ft3, 392(sp)
  FSGNJ.S fs11, ft4, ft3
  FLW ft4, 388(sp)
  FLW ft3, 388(sp)
  FSGNJ.S fs0, ft4, ft3
  FLW ft4, 384(sp)
  FLW ft3, 384(sp)
  FSGNJ.S fs1, ft4, ft3
  FLW ft4, 380(sp)
  FLW ft3, 380(sp)
  FSGNJ.S fs2, ft4, ft3
  FLW ft4, 340(sp)
  FLW ft3, 340(sp)
  FSGNJ.S fs3, ft4, ft3
  FLW ft4, 372(sp)
  FLW ft3, 372(sp)
  FSGNJ.S fs4, ft4, ft3
  FLW ft4, 368(sp)
  FLW ft3, 368(sp)
  FSGNJ.S fs5, ft4, ft3
  FLW ft4, 364(sp)
  FLW ft3, 364(sp)
  FSGNJ.S fs7, ft4, ft3
  # implict jump to bb9
bb9:
  FSGNJ.S ft4, fs6, fs6
  FSW ft4, 96(sp)
  FSGNJ.S ft4, fs7, fs7
  FSW ft4, 100(sp)
  FSGNJ.S ft4, fs5, fs5
  FSW ft4, 68(sp)
  FSGNJ.S ft4, fs4, fs4
  FSW ft4, 108(sp)
  FSGNJ.S ft4, fs3, fs3
  FSW ft4, 112(sp)
  FSGNJ.S ft4, fs2, fs2
  FSW ft4, 116(sp)
  FSGNJ.S ft4, fs1, fs1
  FSW ft4, 120(sp)
  FSGNJ.S ft4, fs0, fs0
  FSW ft4, 124(sp)
  FSGNJ.S ft4, fs11, fs11
  FSW ft4, 128(sp)
  FSGNJ.S ft4, fs10, fs10
  FSW ft4, 132(sp)
  FSGNJ.S ft4, fs9, fs9
  FSW ft4, 36(sp)
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 4(sp)
  FLW ft3, 92(sp)
  FLW ft4, 92(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 8(sp)
  FLW ft3, 88(sp)
  FLW ft4, 88(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 12(sp)
  FLW ft3, 84(sp)
  FLW ft4, 84(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 16(sp)
  FLW ft3, 80(sp)
  FLW ft4, 80(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 20(sp)
  FLW ft3, 76(sp)
  FLW ft4, 76(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 24(sp)
  FLW ft3, 72(sp)
  FLW ft4, 72(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 28(sp)
  FLW ft3, 240(sp)
  FLW ft4, 240(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 32(sp)
  FLW ft3, 472(sp)
  FLW ft4, 472(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 0(sp)
  FLW ft3, 468(sp)
  FLW ft4, 468(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 40(sp)
  FLW ft3, 464(sp)
  FLW ft4, 464(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 44(sp)
  FLW ft3, 460(sp)
  FLW ft4, 460(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 48(sp)
  FLW ft3, 456(sp)
  FLW ft4, 456(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 52(sp)
  FLW ft3, 452(sp)
  FLW ft4, 452(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 56(sp)
  FLW ft3, 448(sp)
  FLW ft4, 448(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 60(sp)
  FLW ft3, 408(sp)
  FLW ft4, 408(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 64(sp)
  FLW ft3, 440(sp)
  FLW ft4, 440(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 104(sp)
  FLW ft4, 436(sp)
  FLW ft3, 436(sp)
  FSGNJ.S fs3, ft4, ft3
  FLW ft4, 432(sp)
  FLW ft3, 432(sp)
  FSGNJ.S fs2, ft4, ft3
  FLW ft4, 428(sp)
  FLW ft3, 428(sp)
  FSGNJ.S fs1, ft4, ft3
  FLW ft4, 424(sp)
  FLW ft3, 424(sp)
  FSGNJ.S fs0, ft4, ft3
  FLW ft4, 420(sp)
  FLW ft3, 420(sp)
  FSGNJ.S fs11, ft4, ft3
  FLW ft4, 416(sp)
  FLW ft3, 416(sp)
  FSGNJ.S fs10, ft4, ft3
  FLW ft4, 412(sp)
  FLW ft3, 412(sp)
  FSGNJ.S fs9, ft4, ft3
  FLW ft4, 444(sp)
  FLW ft3, 444(sp)
  FSGNJ.S fs8, ft4, ft3
  FLW ft4, 540(sp)
  FLW ft3, 540(sp)
  FSGNJ.S fs6, ft4, ft3
  FLW ft4, 536(sp)
  FLW ft3, 536(sp)
  FSGNJ.S fs7, ft4, ft3
  FLW ft4, 532(sp)
  FLW ft3, 532(sp)
  FSGNJ.S fs5, ft4, ft3
  FLW ft4, 528(sp)
  FLW ft3, 528(sp)
  FSGNJ.S fs4, ft4, ft3
  FLW ft3, 524(sp)
  FLW ft4, 524(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1280(sp)
  FADD.S fs4, fs4, fs5
  FADD.S fs4, fs4, fs7
  FADD.S fs4, fs4, fs6
  FADD.S fs5, fs8, fs9
  FADD.S fs5, fs5, fs10
  FADD.S fs5, fs5, fs11
  FADD.S fs0, fs0, fs1
  FADD.S fs0, fs0, fs2
  FADD.S fs0, fs0, fs3
  FLW ft4, 104(sp)
  FLW ft3, 64(sp)
  FADD.S fs1, ft4, ft3
  FLW ft4, 60(sp)
  FADD.S fs1, fs1, ft4
  FLW ft4, 56(sp)
  FADD.S fs1, fs1, ft4
  FLW ft4, 52(sp)
  FLW ft3, 48(sp)
  FADD.S fs2, ft4, ft3
  FLW ft4, 44(sp)
  FADD.S fs2, fs2, ft4
  FLW ft4, 40(sp)
  FADD.S fs2, fs2, ft4
  FLW ft4, 0(sp)
  FLW ft3, 32(sp)
  FADD.S fs3, ft4, ft3
  FLW ft4, 28(sp)
  FADD.S fs3, fs3, ft4
  FLW ft4, 24(sp)
  FADD.S fs3, fs3, ft4
  FLW ft4, 20(sp)
  FLW ft3, 16(sp)
  FADD.S fs6, ft4, ft3
  FLW ft4, 12(sp)
  FADD.S fs6, fs6, ft4
  FLW ft4, 8(sp)
  FADD.S fs6, fs6, ft4
  FLW ft4, 4(sp)
  FLW ft3, 36(sp)
  FADD.S fs7, ft4, ft3
  FLW ft4, 132(sp)
  FADD.S fs7, fs7, ft4
  FLW ft4, 128(sp)
  FADD.S fs7, fs7, ft4
  FLW ft4, 124(sp)
  FLW ft3, 120(sp)
  FADD.S fs8, ft4, ft3
  FLW ft4, 116(sp)
  FADD.S fs8, fs8, ft4
  FLW ft4, 112(sp)
  FADD.S fs8, fs8, ft4
  FLW ft4, 108(sp)
  FLW ft3, 68(sp)
  FADD.S fs9, ft4, ft3
  FLW ft4, 100(sp)
  FADD.S fs9, fs9, ft4
  FLW ft4, 96(sp)
  FADD.S fs9, fs9, ft4
  LUI t5, 1
  ADDIW t5, t5, -1096
  ADD t5, t5, sp
  FSW fs4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1096
  ADD t5, t5, sp
  FSW fs5, 4(t5)
  LUI t5, 1
  ADDIW t5, t5, -1096
  ADD t5, t5, sp
  FSW fs0, 8(t5)
  LUI t5, 1
  ADDIW t5, t5, -1096
  ADD t5, t5, sp
  FSW fs1, 12(t5)
  LUI t5, 1
  ADDIW t5, t5, -1096
  ADD t5, t5, sp
  FSW fs2, 16(t5)
  LUI t5, 1
  ADDIW t5, t5, -1096
  ADD t5, t5, sp
  FSW fs3, 20(t5)
  LUI t5, 1
  ADDIW t5, t5, -1096
  ADD t5, t5, sp
  FSW fs6, 24(t5)
  LUI t5, 1
  ADDIW t5, t5, -1096
  ADD t5, t5, sp
  FSW fs7, 28(t5)
  LUI a0, 1
  ADDIW a0, a0, -1096
  ADD a0, a0, sp
  FSW fs8, 32(a0)
  LUI a0, 1
  ADDIW a0, a0, -1096
  ADD a0, a0, sp
  FSW fs9, 36(a0)
  ADDI a0, zero, 10
  LUI a1, 1
  ADDIW a1, a1, -1096
  ADD a1, a1, sp
  ADD a1, a1, zero
  CALL putfarray
  LA s8, k
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  LUI t5, 1
  ADDIW t5, t5, -1096
  ADD t5, t5, sp
  ADD s6, t5, s8
  FLW ft4, 0(s6)
  FSW ft4, 1100(sp)
  LUI t4, 1
  ADDIW t4, t4, -944
  ADD t4, t4, sp
  ADDI t4, t4, 276
  LUI t5, 1
  ADDIW t5, t5, -1200
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1200
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  LW t4, 0(s6)
  SW t4, 212(sp)
  LUI t4, 1
  ADDIW t4, t4, -944
  ADD t4, t4, sp
  ADDI t4, t4, 24
  LUI t5, 1
  ADDIW t5, t5, -1360
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1360
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  LW t4, 0(s6)
  SW t4, 216(sp)
  LUI t4, 1
  ADDIW t4, t4, -944
  ADD t4, t4, sp
  ADDI t4, t4, 72
  LUI t5, 1
  ADDIW t5, t5, -1304
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1304
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  LW t4, 0(s6)
  SW t4, 220(sp)
  LUI t4, 1
  ADDIW t4, t4, 624
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1032(sp)
  LUI t4, 1
  ADDIW t4, t4, -944
  ADD t4, t4, sp
  ADDI t4, t4, 12
  LUI t5, 1
  ADDIW t5, t5, -1432
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1432
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  LW t4, 0(s6)
  SW t4, 224(sp)
  LUI t4, 1
  ADDIW t4, t4, -944
  ADD t4, t4, sp
  ADDI t4, t4, 48
  LUI t5, 1
  ADDIW t5, t5, -1232
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1232
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  LW t4, 0(s6)
  SW t4, 228(sp)
  LUI t4, 1
  ADDIW t4, t4, -944
  ADD t4, t4, sp
  ADDI t4, t4, 60
  LUI t5, 1
  ADDIW t5, t5, -1424
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1424
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  LW t4, 0(s6)
  SW t4, 232(sp)
  LUI t4, 1
  ADDIW t4, t4, 592
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1028(sp)
  LUI t4, 1
  ADDIW t4, t4, 536
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 1024(sp)
  LUI t4, 1
  ADDIW t4, t4, 600
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 920(sp)
  LUI t4, 1
  ADDIW t4, t4, -944
  ADD t4, t4, sp
  ADDI t4, t4, 264
  LUI t5, 1
  ADDIW t5, t5, -1248
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1248
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  LW t4, 0(s6)
  SW t4, 236(sp)
  LUI t4, 1
  ADDIW t4, t4, 632
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 880(sp)
  LUI t4, 1
  ADDIW t4, t4, 112
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 872(sp)
  LUI t5, 1
  ADDIW t5, t5, -944
  ADD t5, t5, sp
  ADD s6, t5, s8
  LW t4, 0(s6)
  SW t4, 204(sp)
  LUI t4, 1
  ADDIW t4, t4, 40
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 864(sp)
  LUI t4, 1
  ADDIW t4, t4, -944
  ADD t4, t4, sp
  ADDI t4, t4, 228
  LUI t5, 1
  ADDIW t5, t5, -1288
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1288
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  LW t4, 0(s6)
  SW t4, 244(sp)
  LUI t4, 1
  ADDIW t4, t4, 96
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 860(sp)
  LUI t4, 1
  ADDIW t4, t4, 480
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 816(sp)
  LUI t4, 1
  ADDIW t4, t4, 328
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 848(sp)
  LUI t4, 1
  ADDIW t4, t4, 568
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 844(sp)
  LUI t4, 1
  ADDIW t4, t4, 32
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 828(sp)
  LUI t4, 1
  ADDIW t4, t4, 608
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 248(sp)
  LUI t4, 1
  ADDIW t4, t4, -944
  ADD t4, t4, sp
  ADDI t4, t4, 84
  LUI t5, 1
  ADDIW t5, t5, 360
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 360
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  LW t4, 0(s6)
  SW t4, 252(sp)
  LUI t4, 1
  ADDIW t4, t4, 0
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 256(sp)
  LUI t4, 1
  ADDIW t4, t4, -944
  ADD t4, t4, sp
  ADDI t4, t4, 120
  LUI t5, 1
  ADDIW t5, t5, 392
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 392
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  LW t4, 0(s6)
  SW t4, 260(sp)
  LUI t4, 1
  ADDIW t4, t4, -944
  ADD t4, t4, sp
  ADDI t4, t4, 156
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 384
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  LW t4, 0(s6)
  SW t4, 264(sp)
  LUI t4, 1
  ADDIW t4, t4, 496
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 268(sp)
  LUI t4, 1
  ADDIW t4, t4, 72
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 172(sp)
  LUI t4, 1
  ADDIW t4, t4, 152
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 140(sp)
  LUI t4, 1
  ADDIW t4, t4, 584
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 144(sp)
  LUI t4, 1
  ADDIW t4, t4, 136
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 148(sp)
  LUI t4, 1
  ADDIW t4, t4, -944
  ADD t4, t4, sp
  ADDI t4, t4, 96
  LUI t5, 1
  ADDIW t5, t5, 368
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 368
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  LW t4, 0(s6)
  SW t4, 152(sp)
  LUI t4, 1
  ADDIW t4, t4, 24
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 156(sp)
  LUI t4, 1
  ADDIW t4, t4, -944
  ADD t4, t4, sp
  ADDI t4, t4, 204
  LUI t5, 1
  ADDIW t5, t5, -1312
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1312
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  LW t4, 0(s6)
  SW t4, 160(sp)
  LUI t4, 1
  ADDIW t4, t4, 488
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 164(sp)
  LUI t4, 1
  ADDIW t4, t4, 528
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 168(sp)
  LUI t4, 1
  ADDIW t4, t4, 616
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 136(sp)
  LUI t4, 1
  ADDIW t4, t4, 64
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 176(sp)
  LUI t4, 1
  ADDIW t4, t4, -944
  ADD t4, t4, sp
  ADDI t4, t4, 216
  LUI t5, 1
  ADDIW t5, t5, 424
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 424
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  LW t4, 0(s6)
  SW t4, 180(sp)
  LUI t4, 1
  ADDIW t4, t4, -944
  ADD t4, t4, sp
  ADDI t4, t4, 108
  LUI t5, 1
  ADDIW t5, t5, -1104
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1104
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  LW t4, 0(s6)
  SW t4, 184(sp)
  LUI t4, 1
  ADDIW t4, t4, 544
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 188(sp)
  LUI t4, 1
  ADDIW t4, t4, 576
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 192(sp)
  LUI t5, 1
  ADDIW t5, t5, -616
  ADD t5, t5, sp
  ADD s6, t5, s8
  FLW ft4, 0(s6)
  FSW ft4, 196(sp)
  LUI t4, 1
  ADDIW t4, t4, -944
  ADD t4, t4, sp
  ADDI t4, t4, 144
  LUI t5, 1
  ADDIW t5, t5, 344
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 344
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  LW t4, 0(s6)
  SW t4, 200(sp)
  LUI t4, 1
  ADDIW t4, t4, 88
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 512(sp)
  LUI t4, 1
  ADDIW t4, t4, -944
  ADD t4, t4, sp
  ADDI t4, t4, 132
  LUI t5, 1
  ADDIW t5, t5, -1344
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1344
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  LW t4, 0(s6)
  SW t4, 888(sp)
  LUI t4, 1
  ADDIW t4, t4, -944
  ADD t4, t4, sp
  ADDI t4, t4, 192
  LUI t5, 1
  ADDIW t5, t5, 472
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 472
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  LW t4, 0(s6)
  SW t4, 892(sp)
  LUI t4, 1
  ADDIW t4, t4, 120
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 896(sp)
  LUI t4, 1
  ADDIW t4, t4, 144
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 900(sp)
  LUI t4, 1
  ADDIW t4, t4, 552
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 904(sp)
  LUI t4, 1
  ADDIW t4, t4, 104
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 908(sp)
  LUI t4, 1
  ADDIW t4, t4, -944
  ADD t4, t4, sp
  ADDI t4, t4, 36
  LUI t5, 1
  ADDIW t5, t5, -1328
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1328
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  LW t4, 0(s6)
  SW t4, 912(sp)
  LUI t4, 1
  ADDIW t4, t4, -944
  ADD t4, t4, sp
  ADDI t4, t4, 252
  LUI t5, 1
  ADDIW t5, t5, 352
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 352
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  LW t4, 0(s6)
  SW t4, 916(sp)
  LUI t4, 1
  ADDIW t4, t4, -944
  ADD t4, t4, sp
  ADDI t4, t4, 240
  LUI t5, 1
  ADDIW t5, t5, 416
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 416
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  LW t4, 0(s6)
  SW t4, 884(sp)
  LUI t4, 1
  ADDIW t4, t4, 512
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 924(sp)
  LUI t4, 1
  ADDIW t4, t4, 504
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 928(sp)
  LUI t4, 1
  ADDIW t4, t4, 240
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 932(sp)
  LUI t4, 1
  ADDIW t4, t4, 128
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 936(sp)
  LUI t4, 1
  ADDIW t4, t4, 48
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 940(sp)
  LUI t4, 1
  ADDIW t4, t4, 520
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 944(sp)
  LUI t4, 1
  ADDIW t4, t4, -944
  ADD t4, t4, sp
  ADDI t4, t4, 180
  LUI t5, 1
  ADDIW t5, t5, -1400
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1400
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  LW t4, 0(s6)
  SW t4, 948(sp)
  LUI t4, 1
  ADDIW t4, t4, 400
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  FLW ft4, 0(s6)
  FSW ft4, 852(sp)
  LUI t4, 1
  ADDIW t4, t4, -944
  ADD t4, t4, sp
  ADDI t4, t4, 168
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, 376
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s8
  LW t4, 0(s6)
  SW t4, 824(sp)
  LUI t4, 1
  ADDIW t4, t4, 56
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s8, t4, s8
  FLW ft4, 0(s8)
  FSW ft4, 820(sp)
  LW t4, 212(sp)
  BNE t4, zero, bb33
  # implict jump to bb10
bb10:
  LW t4, 216(sp)
  ADD s8, t4, zero
  LW t4, 220(sp)
  ADD s6, t4, zero
  FLW ft4, 1032(sp)
  FLW ft3, 1032(sp)
  FSGNJ.S fs11, ft4, ft3
  LW t4, 224(sp)
  ADD s10, t4, zero
  LW t4, 228(sp)
  ADD s11, t4, zero
  LW t4, 232(sp)
  ADD s1, t4, zero
  FLW ft4, 1028(sp)
  FLW ft3, 1028(sp)
  FSGNJ.S fs10, ft4, ft3
  FLW ft4, 1024(sp)
  FLW ft3, 1024(sp)
  FSGNJ.S fs9, ft4, ft3
  FLW ft4, 920(sp)
  FLW ft3, 920(sp)
  FSGNJ.S fs8, ft4, ft3
  LW t4, 236(sp)
  ADD s0, t4, zero
  FLW ft4, 880(sp)
  FLW ft3, 880(sp)
  FSGNJ.S fs7, ft4, ft3
  FLW ft4, 872(sp)
  FLW ft3, 872(sp)
  FSGNJ.S fs6, ft4, ft3
  LW t4, 204(sp)
  ADD s3, t4, zero
  FLW ft4, 864(sp)
  FLW ft3, 864(sp)
  FSGNJ.S fs5, ft4, ft3
  LW t4, 244(sp)
  ADD s9, t4, zero
  FLW ft4, 860(sp)
  FLW ft3, 860(sp)
  FSGNJ.S fs4, ft4, ft3
  FLW ft4, 816(sp)
  FLW ft3, 816(sp)
  FSGNJ.S fs3, ft4, ft3
  FLW ft4, 848(sp)
  FLW ft3, 848(sp)
  FSGNJ.S fs2, ft4, ft3
  FLW ft4, 844(sp)
  FLW ft3, 844(sp)
  FSGNJ.S fs1, ft4, ft3
  FLW ft4, 828(sp)
  FLW ft3, 828(sp)
  FSGNJ.S fs0, ft4, ft3
  FLW ft3, 248(sp)
  FLW ft4, 248(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1036(sp)
  LW t4, 252(sp)
  ADD s7, t4, zero
  FLW ft3, 256(sp)
  FLW ft4, 256(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1044(sp)
  LW t4, 260(sp)
  ADD s5, t4, zero
  LW t4, 264(sp)
  ADD s4, t4, zero
  FLW ft3, 268(sp)
  FLW ft4, 268(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1020(sp)
  FLW ft3, 172(sp)
  FLW ft4, 172(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1060(sp)
  FLW ft3, 140(sp)
  FLW ft4, 140(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1064(sp)
  FLW ft3, 144(sp)
  FLW ft4, 144(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1068(sp)
  FLW ft3, 148(sp)
  FLW ft4, 148(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1072(sp)
  LW t4, 152(sp)
  ADD s2, t4, zero
  FLW ft3, 156(sp)
  FLW ft4, 156(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1080(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 1084(sp)
  FLW ft3, 164(sp)
  FLW ft4, 164(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 988(sp)
  FLW ft3, 168(sp)
  FLW ft4, 168(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 956(sp)
  FLW ft3, 136(sp)
  FLW ft4, 136(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 960(sp)
  FLW ft3, 176(sp)
  FLW ft4, 176(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 964(sp)
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 968(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 972(sp)
  FLW ft3, 188(sp)
  FLW ft4, 188(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 976(sp)
  FLW ft3, 192(sp)
  FLW ft4, 192(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 980(sp)
  FLW ft3, 196(sp)
  FLW ft4, 196(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 984(sp)
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 952(sp)
  FLW ft3, 512(sp)
  FLW ft4, 512(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 992(sp)
  LW t3, 888(sp)
  ADD t4, t3, zero
  SW t4, 996(sp)
  LW t3, 892(sp)
  ADD t4, t3, zero
  SW t4, 1000(sp)
  FLW ft3, 896(sp)
  FLW ft4, 896(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1004(sp)
  FLW ft3, 900(sp)
  FLW ft4, 900(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1008(sp)
  FLW ft3, 904(sp)
  FLW ft4, 904(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1012(sp)
  FLW ft3, 908(sp)
  FLW ft4, 908(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1016(sp)
  LW t3, 912(sp)
  ADD t4, t3, zero
  SW t4, 784(sp)
  LW t3, 916(sp)
  ADD t4, t3, zero
  SW t4, 616(sp)
  LW t3, 884(sp)
  ADD t4, t3, zero
  SW t4, 620(sp)
  FLW ft3, 924(sp)
  FLW ft4, 924(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 624(sp)
  FLW ft3, 928(sp)
  FLW ft4, 928(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 628(sp)
  FLW ft3, 932(sp)
  FLW ft4, 932(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 632(sp)
  FLW ft3, 936(sp)
  FLW ft4, 936(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 636(sp)
  FLW ft3, 940(sp)
  FLW ft4, 940(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 640(sp)
  FLW ft3, 944(sp)
  FLW ft4, 944(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 644(sp)
  LW t3, 948(sp)
  ADD t4, t3, zero
  SW t4, 612(sp)
  FLW ft3, 852(sp)
  FLW ft4, 852(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 652(sp)
  LW t3, 824(sp)
  ADD t4, t3, zero
  SW t4, 656(sp)
  FLW ft3, 820(sp)
  FLW ft4, 820(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 660(sp)
  # implict jump to bb11
bb11:
  FLW ft3, 660(sp)
  FLW ft4, 660(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1476(sp)
  LW t3, 656(sp)
  ADD t4, t3, zero
  SW t4, 1304(sp)
  FLW ft3, 652(sp)
  FLW ft4, 652(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1116(sp)
  LW t3, 612(sp)
  ADD t4, t3, zero
  SW t4, 1300(sp)
  FLW ft3, 644(sp)
  FLW ft4, 644(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1172(sp)
  FLW ft3, 640(sp)
  FLW ft4, 640(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1112(sp)
  FLW ft3, 636(sp)
  FLW ft4, 636(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1260(sp)
  FLW ft3, 632(sp)
  FLW ft4, 632(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1264(sp)
  FLW ft3, 628(sp)
  FLW ft4, 628(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1108(sp)
  FLW ft3, 624(sp)
  FLW ft4, 624(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1104(sp)
  LW t3, 620(sp)
  ADD t4, t3, zero
  SW t4, 1268(sp)
  LW t3, 616(sp)
  ADD t4, t3, zero
  SW t4, 1252(sp)
  LW t3, 784(sp)
  ADD t4, t3, zero
  SW t4, 1892(sp)
  FLW ft3, 1016(sp)
  FLW ft4, 1016(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1256(sp)
  FLW ft3, 1012(sp)
  FLW ft4, 1012(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1332(sp)
  FLW ft3, 1008(sp)
  FLW ft4, 1008(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1096(sp)
  FLW ft3, 1004(sp)
  FLW ft4, 1004(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1092(sp)
  LW t3, 1000(sp)
  ADD t4, t3, zero
  SW t4, 1924(sp)
  LW t3, 996(sp)
  ADD t4, t3, zero
  SW t4, 1928(sp)
  FLW ft3, 992(sp)
  FLW ft4, 992(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1320(sp)
  LW t3, 952(sp)
  ADD t4, t3, zero
  SW t4, 832(sp)
  FLW ft3, 984(sp)
  FLW ft4, 984(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1508(sp)
  FLW ft3, 980(sp)
  FLW ft4, 980(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1316(sp)
  FLW ft3, 976(sp)
  FLW ft4, 976(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1312(sp)
  LW t3, 972(sp)
  ADD t4, t3, zero
  SW t4, 836(sp)
  LW t3, 968(sp)
  ADD t4, t3, zero
  SW t4, 1196(sp)
  FLW ft3, 964(sp)
  FLW ft4, 964(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1216(sp)
  FLW ft3, 960(sp)
  FLW ft4, 960(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1248(sp)
  FLW ft3, 956(sp)
  FLW ft4, 956(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1276(sp)
  FLW ft3, 988(sp)
  FLW ft4, 988(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1220(sp)
  LW t3, 1084(sp)
  ADD t4, t3, zero
  SW t4, 840(sp)
  FLW ft3, 1080(sp)
  FLW ft4, 1080(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1480(sp)
  ADD t4, s2, zero
  SW t4, 856(sp)
  FLW ft3, 1072(sp)
  FLW ft4, 1072(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1948(sp)
  FLW ft3, 1068(sp)
  FLW ft4, 1068(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1936(sp)
  FLW ft3, 1064(sp)
  FLW ft4, 1064(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1236(sp)
  FLW ft3, 1060(sp)
  FLW ft4, 1060(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1920(sp)
  FLW ft3, 1020(sp)
  FLW ft4, 1020(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1228(sp)
  ADD t4, s4, zero
  SW t4, 1292(sp)
  ADD t4, s5, zero
  SW t4, 1240(sp)
  FLW ft3, 1044(sp)
  FLW ft4, 1044(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1912(sp)
  ADD t4, s7, zero
  SW t4, 868(sp)
  FLW ft3, 1036(sp)
  FLW ft4, 1036(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1904(sp)
  FSGNJ.S ft4, fs0, fs0
  FSW ft4, 1272(sp)
  FSGNJ.S ft4, fs1, fs1
  FSW ft4, 1888(sp)
  FSGNJ.S ft4, fs2, fs2
  FSW ft4, 1324(sp)
  FSGNJ.S ft4, fs3, fs3
  FSW ft4, 1532(sp)
  FSGNJ.S ft4, fs4, fs4
  FSW ft4, 1880(sp)
  ADD t4, s9, zero
  SW t4, 876(sp)
  FSGNJ.S ft4, fs5, fs5
  FSW ft4, 1872(sp)
  ADD t4, s3, zero
  SW t4, 1040(sp)
  FSGNJ.S ft4, fs6, fs6
  FSW ft4, 1864(sp)
  FSGNJ.S ft4, fs7, fs7
  FSW ft4, 1852(sp)
  ADD t4, s0, zero
  SW t4, 1048(sp)
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 1844(sp)
  FSGNJ.S ft4, fs9, fs9
  FSW ft4, 1840(sp)
  FSGNJ.S ft4, fs10, fs10
  FSW ft4, 1308(sp)
  ADD t4, s1, zero
  SW t4, 1188(sp)
  ADD t4, s11, zero
  SW t4, 1052(sp)
  ADD t4, s10, zero
  SW t4, 1544(sp)
  FSGNJ.S ft4, fs11, fs11
  FSW ft4, 1244(sp)
  ADD t4, s6, zero
  SW t4, 1140(sp)
  ADD t4, s8, zero
  SW t4, 1076(sp)
  # implict jump to bb12
bb12:
  LW t4, 1544(sp)
  BNE t4, zero, bb14
  # implict jump to bb13
bb13:
  LW t4, 1076(sp)
  ADD s8, t4, zero
  LW t4, 1140(sp)
  ADD s6, t4, zero
  FLW ft4, 1244(sp)
  FLW ft3, 1244(sp)
  FSGNJ.S fs11, ft4, ft3
  LW t4, 1544(sp)
  ADD s10, t4, zero
  LW t4, 1052(sp)
  ADD s11, t4, zero
  LW t4, 1188(sp)
  ADD s1, t4, zero
  FLW ft4, 1308(sp)
  FLW ft3, 1308(sp)
  FSGNJ.S fs10, ft4, ft3
  FLW ft4, 1840(sp)
  FLW ft3, 1840(sp)
  FSGNJ.S fs9, ft4, ft3
  FLW ft4, 1844(sp)
  FLW ft3, 1844(sp)
  FSGNJ.S fs8, ft4, ft3
  LW t4, 1048(sp)
  ADD s0, t4, zero
  FLW ft4, 1852(sp)
  FLW ft3, 1852(sp)
  FSGNJ.S fs7, ft4, ft3
  FLW ft4, 1864(sp)
  FLW ft3, 1864(sp)
  FSGNJ.S fs6, ft4, ft3
  LW t4, 1040(sp)
  ADD s3, t4, zero
  FLW ft4, 1872(sp)
  FLW ft3, 1872(sp)
  FSGNJ.S fs5, ft4, ft3
  LW t4, 876(sp)
  ADD s9, t4, zero
  FLW ft4, 1880(sp)
  FLW ft3, 1880(sp)
  FSGNJ.S fs4, ft4, ft3
  FLW ft4, 1532(sp)
  FLW ft3, 1532(sp)
  FSGNJ.S fs3, ft4, ft3
  FLW ft4, 1324(sp)
  FLW ft3, 1324(sp)
  FSGNJ.S fs2, ft4, ft3
  FLW ft4, 1888(sp)
  FLW ft3, 1888(sp)
  FSGNJ.S fs1, ft4, ft3
  FLW ft4, 1272(sp)
  FLW ft3, 1272(sp)
  FSGNJ.S fs0, ft4, ft3
  FLW ft3, 1904(sp)
  FLW ft4, 1904(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1036(sp)
  LW t4, 868(sp)
  ADD s7, t4, zero
  FLW ft3, 1912(sp)
  FLW ft4, 1912(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1044(sp)
  LW t4, 1240(sp)
  ADD s5, t4, zero
  LW t4, 1292(sp)
  ADD s4, t4, zero
  FLW ft3, 1228(sp)
  FLW ft4, 1228(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1020(sp)
  FLW ft3, 1920(sp)
  FLW ft4, 1920(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1060(sp)
  FLW ft3, 1236(sp)
  FLW ft4, 1236(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1064(sp)
  FLW ft3, 1936(sp)
  FLW ft4, 1936(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1068(sp)
  FLW ft3, 1948(sp)
  FLW ft4, 1948(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1072(sp)
  LW t4, 856(sp)
  ADD s2, t4, zero
  FLW ft3, 1480(sp)
  FLW ft4, 1480(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1080(sp)
  LW t3, 840(sp)
  ADD t4, t3, zero
  SW t4, 1084(sp)
  FLW ft3, 1220(sp)
  FLW ft4, 1220(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 988(sp)
  FLW ft3, 1276(sp)
  FLW ft4, 1276(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 956(sp)
  FLW ft3, 1248(sp)
  FLW ft4, 1248(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 960(sp)
  FLW ft3, 1216(sp)
  FLW ft4, 1216(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 964(sp)
  LW t3, 1196(sp)
  ADD t4, t3, zero
  SW t4, 968(sp)
  LW t3, 836(sp)
  ADD t4, t3, zero
  SW t4, 972(sp)
  FLW ft3, 1312(sp)
  FLW ft4, 1312(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 976(sp)
  FLW ft3, 1316(sp)
  FLW ft4, 1316(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 980(sp)
  FLW ft3, 1508(sp)
  FLW ft4, 1508(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 984(sp)
  LW t3, 832(sp)
  ADD t4, t3, zero
  SW t4, 952(sp)
  FLW ft3, 1320(sp)
  FLW ft4, 1320(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 992(sp)
  LW t3, 1928(sp)
  ADD t4, t3, zero
  SW t4, 996(sp)
  LW t3, 1924(sp)
  ADD t4, t3, zero
  SW t4, 1000(sp)
  FLW ft3, 1092(sp)
  FLW ft4, 1092(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1004(sp)
  FLW ft3, 1096(sp)
  FLW ft4, 1096(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1008(sp)
  FLW ft3, 1332(sp)
  FLW ft4, 1332(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1012(sp)
  FLW ft3, 1256(sp)
  FLW ft4, 1256(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1016(sp)
  LW t3, 1892(sp)
  ADD t4, t3, zero
  SW t4, 784(sp)
  LW t3, 1252(sp)
  ADD t4, t3, zero
  SW t4, 616(sp)
  LW t3, 1268(sp)
  ADD t4, t3, zero
  SW t4, 620(sp)
  FLW ft3, 1104(sp)
  FLW ft4, 1104(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 624(sp)
  FLW ft3, 1108(sp)
  FLW ft4, 1108(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 628(sp)
  FLW ft3, 1264(sp)
  FLW ft4, 1264(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 632(sp)
  FLW ft3, 1260(sp)
  FLW ft4, 1260(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 636(sp)
  FLW ft3, 1112(sp)
  FLW ft4, 1112(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 640(sp)
  FLW ft3, 1172(sp)
  FLW ft4, 1172(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 644(sp)
  LW t3, 1300(sp)
  ADD t4, t3, zero
  SW t4, 612(sp)
  FLW ft3, 1116(sp)
  FLW ft4, 1116(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 652(sp)
  LW t3, 1304(sp)
  ADD t4, t3, zero
  SW t4, 656(sp)
  FLW ft3, 1476(sp)
  FLW ft4, 1476(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 660(sp)
  JAL zero, bb11
bb14:
  LW t3, 1544(sp)
  ADD t4, t3, zero
  SW t4, 556(sp)
  LW t3, 1076(sp)
  ADD t4, t3, zero
  SW t4, 564(sp)
  LW t3, 1140(sp)
  ADD t4, t3, zero
  SW t4, 584(sp)
  FLW ft3, 1244(sp)
  FLW ft4, 1244(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 664(sp)
  LW t3, 1544(sp)
  ADD t4, t3, zero
  SW t4, 588(sp)
  LW t3, 1052(sp)
  ADD t4, t3, zero
  SW t4, 604(sp)
  LW t3, 1188(sp)
  ADD t4, t3, zero
  SW t4, 648(sp)
  FLW ft3, 1308(sp)
  FLW ft4, 1308(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 668(sp)
  FLW ft3, 1840(sp)
  FLW ft4, 1840(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 672(sp)
  FLW ft3, 1844(sp)
  FLW ft4, 1844(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 676(sp)
  LW t3, 1048(sp)
  ADD t4, t3, zero
  SW t4, 752(sp)
  FLW ft3, 1852(sp)
  FLW ft4, 1852(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 580(sp)
  FLW ft3, 1864(sp)
  FLW ft4, 1864(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 548(sp)
  LW t3, 1040(sp)
  ADD t4, t3, zero
  SW t4, 772(sp)
  FLW ft3, 1872(sp)
  FLW ft4, 1872(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 552(sp)
  LW t3, 876(sp)
  ADD t4, t3, zero
  SW t4, 776(sp)
  FLW ft3, 1880(sp)
  FLW ft4, 1880(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 560(sp)
  FLW ft3, 1532(sp)
  FLW ft4, 1532(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 568(sp)
  FLW ft3, 1324(sp)
  FLW ft4, 1324(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 572(sp)
  FLW ft3, 1888(sp)
  FLW ft4, 1888(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 576(sp)
  FLW ft3, 1272(sp)
  FLW ft4, 1272(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 544(sp)
  FLW ft3, 1904(sp)
  FLW ft4, 1904(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 592(sp)
  LW t3, 868(sp)
  ADD t4, t3, zero
  SW t4, 780(sp)
  FLW ft3, 1912(sp)
  FLW ft4, 1912(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 596(sp)
  LW t3, 1240(sp)
  ADD t4, t3, zero
  SW t4, 808(sp)
  LW t3, 1292(sp)
  ADD t4, t3, zero
  SW t4, 716(sp)
  FLW ft3, 1228(sp)
  FLW ft4, 1228(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 600(sp)
  FLW ft3, 1920(sp)
  FLW ft4, 1920(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 608(sp)
  FLW ft3, 1236(sp)
  FLW ft4, 1236(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 756(sp)
  FLW ft3, 1936(sp)
  FLW ft4, 1936(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 760(sp)
  FLW ft3, 1948(sp)
  FLW ft4, 1948(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 764(sp)
  LW t4, 856(sp)
  ADD s0, t4, zero
  FLW ft3, 1480(sp)
  FLW ft4, 1480(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 768(sp)
  LW t4, 840(sp)
  ADD s1, t4, zero
  FLW ft3, 1220(sp)
  FLW ft4, 1220(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 748(sp)
  FLW ft3, 1276(sp)
  FLW ft4, 1276(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 788(sp)
  FLW ft3, 1248(sp)
  FLW ft4, 1248(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 792(sp)
  FLW ft3, 1216(sp)
  FLW ft4, 1216(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 796(sp)
  LW t4, 1196(sp)
  ADD s2, t4, zero
  LW t4, 836(sp)
  ADD s3, t4, zero
  FLW ft3, 1312(sp)
  FLW ft4, 1312(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 800(sp)
  FLW ft3, 1316(sp)
  FLW ft4, 1316(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 804(sp)
  FLW ft3, 1508(sp)
  FLW ft4, 1508(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 812(sp)
  LW t4, 832(sp)
  ADD s4, t4, zero
  FLW ft3, 1320(sp)
  FLW ft4, 1320(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 684(sp)
  LW t4, 1928(sp)
  ADD s5, t4, zero
  LW t4, 1924(sp)
  ADD s6, t4, zero
  FLW ft4, 1092(sp)
  FLW ft3, 1092(sp)
  FSGNJ.S fs4, ft4, ft3
  FLW ft4, 1096(sp)
  FLW ft3, 1096(sp)
  FSGNJ.S fs5, ft4, ft3
  FLW ft4, 1332(sp)
  FLW ft3, 1332(sp)
  FSGNJ.S fs6, ft4, ft3
  FLW ft4, 1256(sp)
  FLW ft3, 1256(sp)
  FSGNJ.S fs7, ft4, ft3
  LW t4, 1892(sp)
  ADD s7, t4, zero
  LW t4, 1252(sp)
  ADD s8, t4, zero
  LW t4, 1268(sp)
  ADD s9, t4, zero
  FLW ft4, 1104(sp)
  FLW ft3, 1104(sp)
  FSGNJ.S fs8, ft4, ft3
  FLW ft4, 1108(sp)
  FLW ft3, 1108(sp)
  FSGNJ.S fs9, ft4, ft3
  FLW ft4, 1264(sp)
  FLW ft3, 1264(sp)
  FSGNJ.S fs10, ft4, ft3
  FLW ft4, 1260(sp)
  FLW ft3, 1260(sp)
  FSGNJ.S fs11, ft4, ft3
  FLW ft4, 1112(sp)
  FLW ft3, 1112(sp)
  FSGNJ.S fs0, ft4, ft3
  FLW ft4, 1172(sp)
  FLW ft3, 1172(sp)
  FSGNJ.S fs1, ft4, ft3
  LW t4, 1300(sp)
  ADD s10, t4, zero
  FLW ft4, 1116(sp)
  FLW ft3, 1116(sp)
  FSGNJ.S fs2, ft4, ft3
  LW t4, 1304(sp)
  ADD s11, t4, zero
  FLW ft4, 1476(sp)
  FLW ft3, 1476(sp)
  FSGNJ.S fs3, ft4, ft3
  # implict jump to bb15
bb15:
  FSGNJ.S ft4, fs3, fs3
  FSW ft4, 692(sp)
  ADD t4, s11, zero
  SW t4, 1988(sp)
  ADD t4, s10, zero
  SW t4, 1964(sp)
  FSGNJ.S ft4, fs1, fs1
  FSW ft4, 1660(sp)
  FSGNJ.S ft4, fs0, fs0
  FSW ft4, 688(sp)
  FSGNJ.S ft4, fs11, fs11
  FSW ft4, 712(sp)
  FSGNJ.S ft4, fs10, fs10
  FSW ft4, 728(sp)
  FSGNJ.S ft4, fs9, fs9
  FSW ft4, 1644(sp)
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 1588(sp)
  ADD t4, s9, zero
  SW t4, 208(sp)
  ADD t4, s8, zero
  SW t4, 744(sp)
  FSGNJ.S ft4, fs7, fs7
  FSW ft4, 700(sp)
  FSGNJ.S ft4, fs6, fs6
  FSW ft4, 2012(sp)
  FSGNJ.S ft4, fs5, fs5
  FSW ft4, 680(sp)
  FSGNJ.S ft4, fs4, fs4
  FSW ft4, 708(sp)
  ADD t4, s6, zero
  SW t4, 1996(sp)
  FLW ft3, 684(sp)
  FLW ft4, 684(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 696(sp)
  ADD t4, s4, zero
  SW t4, 1212(sp)
  FLW ft4, 812(sp)
  FLW ft3, 812(sp)
  FSGNJ.S fs3, ft4, ft3
  FLW ft4, 804(sp)
  FLW ft3, 804(sp)
  FSGNJ.S fs0, ft4, ft3
  FLW ft3, 800(sp)
  FLW ft4, 800(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 2028(sp)
  ADD t4, s2, zero
  SW t4, 1620(sp)
  FLW ft3, 796(sp)
  FLW ft4, 796(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 704(sp)
  FLW ft4, 792(sp)
  FLW ft3, 792(sp)
  FSGNJ.S fs4, ft4, ft3
  FLW ft3, 788(sp)
  FLW ft4, 788(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1708(sp)
  FLW ft3, 748(sp)
  FLW ft4, 748(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1628(sp)
  ADD t4, s1, zero
  SW t4, 1692(sp)
  FLW ft3, 768(sp)
  FLW ft4, 768(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 720(sp)
  FLW ft3, 764(sp)
  FLW ft4, 764(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 724(sp)
  FLW ft4, 760(sp)
  FLW ft3, 760(sp)
  FSGNJ.S fs10, ft4, ft3
  FLW ft3, 756(sp)
  FLW ft4, 756(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 732(sp)
  FLW ft3, 608(sp)
  FLW ft4, 608(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 736(sp)
  FLW ft3, 600(sp)
  FLW ft4, 600(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 740(sp)
  LW t3, 716(sp)
  ADD t4, t3, zero
  SW t4, 1472(sp)
  LW t4, 808(sp)
  ADD s9, t4, zero
  FLW ft3, 596(sp)
  FLW ft4, 596(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1612(sp)
  LW t4, 780(sp)
  ADD s2, t4, zero
  FLW ft4, 592(sp)
  FLW ft3, 592(sp)
  FSGNJ.S fs5, ft4, ft3
  FLW ft3, 544(sp)
  FLW ft4, 544(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1636(sp)
  FLW ft4, 576(sp)
  FLW ft3, 576(sp)
  FSGNJ.S fs9, ft4, ft3
  FLW ft4, 572(sp)
  FLW ft3, 572(sp)
  FSGNJ.S fs8, ft4, ft3
  FLW ft3, 568(sp)
  FLW ft4, 568(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1120(sp)
  FLW ft3, 560(sp)
  FLW ft4, 560(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1668(sp)
  LW t3, 776(sp)
  ADD t4, t3, zero
  SW t4, 1676(sp)
  FLW ft3, 552(sp)
  FLW ft4, 552(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1684(sp)
  LW t4, 772(sp)
  ADD s1, t4, zero
  FLW ft3, 548(sp)
  FLW ft4, 548(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1700(sp)
  FLW ft4, 580(sp)
  FLW ft3, 580(sp)
  FSGNJ.S fs11, ft4, ft3
  LW t3, 752(sp)
  ADD t4, t3, zero
  SW t4, 2036(sp)
  FLW ft4, 676(sp)
  FLW ft3, 676(sp)
  FSGNJ.S fs7, ft4, ft3
  FLW ft3, 672(sp)
  FLW ft4, 672(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 2020(sp)
  FLW ft4, 668(sp)
  FLW ft3, 668(sp)
  FSGNJ.S fs6, ft4, ft3
  LW t4, 648(sp)
  ADD s10, t4, zero
  LW t4, 604(sp)
  ADD s6, t4, zero
  LW t4, 588(sp)
  ADD s11, t4, zero
  FLW ft4, 664(sp)
  FLW ft3, 664(sp)
  FSGNJ.S fs1, ft4, ft3
  LW t4, 584(sp)
  ADD s4, t4, zero
  LW t4, 564(sp)
  ADD s8, t4, zero
  LW t3, 556(sp)
  ADD t4, t3, zero
  SW t4, 1500(sp)
  FADD.S fs3, fs3, fs8
  FADD.S fs2, fs3, fs2
  FADD.S fs2, fs2, fs11
  FADD.S fs1, fs1, fs4
  FADD.S fs1, fs1, fs5
  FADD.S fs1, fs1, fs7
  FADD.S fs3, fs6, fs10
  FADD.S fs0, fs3, fs0
  FADD.S fs0, fs0, fs9
  FLW ft4, 1120(sp)
  FLW ft3, 2012(sp)
  FADD.S fs3, ft4, ft3
  FLW ft4, 2028(sp)
  FADD.S fs3, fs3, ft4
  FLW ft4, 2020(sp)
  FADD.S fs3, fs3, ft4
  FLW ft4, 1708(sp)
  FLW ft3, 1660(sp)
  FADD.S fs4, ft4, ft3
  FLW ft4, 1588(sp)
  FADD.S fs4, fs4, ft4
  FLW ft4, 1644(sp)
  FADD.S fs4, fs4, ft4
  FLW ft4, 740(sp)
  FLW ft3, 1628(sp)
  FADD.S fs5, ft4, ft3
  FLW ft4, 728(sp)
  FADD.S fs5, fs5, ft4
  FLW ft4, 732(sp)
  FADD.S fs5, fs5, ft4
  FLW ft4, 680(sp)
  FLW ft3, 724(sp)
  FADD.S fs6, ft4, ft3
  FLW ft4, 712(sp)
  FADD.S fs6, fs6, ft4
  FLW ft4, 708(sp)
  FADD.S fs6, fs6, ft4
  FLW ft4, 1700(sp)
  FLW ft3, 700(sp)
  FADD.S fs7, ft4, ft3
  FLW ft4, 1668(sp)
  FADD.S fs7, fs7, ft4
  FLW ft4, 696(sp)
  FADD.S fs7, fs7, ft4
  FLW ft4, 1612(sp)
  FLW ft3, 736(sp)
  FADD.S fs8, ft4, ft3
  FLW ft4, 704(sp)
  FADD.S fs8, fs8, ft4
  FLW ft4, 692(sp)
  FADD.S fs8, fs8, ft4
  FLW ft4, 688(sp)
  FLW ft3, 1684(sp)
  FADD.S fs9, ft4, ft3
  FLW ft4, 1636(sp)
  FADD.S fs9, fs9, ft4
  FLW ft4, 720(sp)
  FADD.S fs9, fs9, ft4
  LUI t5, 1
  ADDIW t5, t5, -1016
  ADD t5, t5, sp
  FSW fs2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1016
  ADD t5, t5, sp
  FSW fs1, 4(t5)
  LUI t5, 1
  ADDIW t5, t5, -1016
  ADD t5, t5, sp
  FSW fs0, 8(t5)
  LUI t5, 1
  ADDIW t5, t5, -1016
  ADD t5, t5, sp
  FSW fs3, 12(t5)
  LUI t5, 1
  ADDIW t5, t5, -1016
  ADD t5, t5, sp
  FSW fs4, 16(t5)
  LUI t5, 1
  ADDIW t5, t5, -1016
  ADD t5, t5, sp
  FSW fs5, 20(t5)
  LUI t5, 1
  ADDIW t5, t5, -1016
  ADD t5, t5, sp
  FSW fs6, 24(t5)
  LUI t5, 1
  ADDIW t5, t5, -1016
  ADD t5, t5, sp
  FSW fs7, 28(t5)
  LUI t5, 1
  ADDIW t5, t5, -1016
  ADD t5, t5, sp
  FSW fs8, 32(t5)
  LUI t5, 1
  ADDIW t5, t5, -1016
  ADD t5, t5, sp
  FSW fs9, 36(t5)
  ADDW s1, s1, s11
  ADDW s1, s1, s8
  ADDW s6, s7, s6
  ADDW s6, s6, s10
  ADDW s2, s4, s2
  ADDW s0, s2, s0
  ADDW s2, s3, s9
  ADDW s2, s2, s5
  LW t4, 1212(sp)
  LW t3, 1472(sp)
  ADDW s3, t4, t3
  LW t4, 1988(sp)
  ADDW s3, s3, t4
  LW t4, 1964(sp)
  LW t3, 1996(sp)
  ADDW s4, t4, t3
  LW t4, 1692(sp)
  ADDW s4, s4, t4
  LW t4, 1620(sp)
  LW t3, 1676(sp)
  ADDW s5, t4, t3
  LW t4, 208(sp)
  ADDW s5, s5, t4
  LW t4, 744(sp)
  LW t3, 2036(sp)
  ADDW s7, t4, t3
  LW t4, 1500(sp)
  ADDW s7, s7, t4
  LUI t5, 1
  ADDIW t5, t5, -976
  ADD t5, t5, sp
  SW s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -976
  ADD t5, t5, sp
  SW s6, 4(t5)
  LUI t5, 1
  ADDIW t5, t5, -976
  ADD t5, t5, sp
  SW s0, 8(t5)
  LUI t5, 1
  ADDIW t5, t5, -976
  ADD t5, t5, sp
  SW s2, 12(t5)
  LUI t5, 1
  ADDIW t5, t5, -976
  ADD t5, t5, sp
  SW s3, 16(t5)
  LUI t5, 1
  ADDIW t5, t5, -976
  ADD t5, t5, sp
  SW s4, 20(t5)
  LUI a0, 1
  ADDIW a0, a0, -976
  ADD a0, a0, sp
  SW s5, 24(a0)
  LUI a0, 1
  ADDIW a0, a0, -976
  ADD a0, a0, sp
  SW s7, 28(a0)
  ADDI a0, zero, 10
  LUI a1, 1
  ADDIW a1, a1, -1016
  ADD a1, a1, sp
  ADD a1, a1, zero
  CALL putfarray
  ADDI a0, zero, 8
  LUI a1, 1
  ADDIW a1, a1, -976
  ADD a1, a1, sp
  ADD a1, a1, zero
  CALL putarray
  ADD t4, zero, zero
  SW t4, 1516(sp)
  # implict jump to bb16
bb16:
  LW t4, 1516(sp)
  ADD s1, t4, zero
  SLLIW s2, s1, 2
  LUI t5, 1
  ADDIW t5, t5, -976
  ADD t5, t5, sp
  ADD s3, t5, s2
  LW s4, 0(s3)
  LUI t5, 1
  ADDIW t5, t5, -1016
  ADD t5, t5, sp
  ADD s2, t5, s2
  FLW fs0, 0(s2)
  FCVT.S.W fs1, s4
  FSUB.S fs0, fs1, fs0
  FCVT.W.S s2, fs0, rtz
  SW s2, 0(s3)
  ADDIW t4, s1, 1
  SW t4, 1524(sp)
  LW t4, 1524(sp)
  SLTI s2, t4, 8
  BNE s2, zero, bb32
  # implict jump to bb17
bb17:
  LA s2, k
  LW s2, 0(s2)
  SLLIW t4, s2, 2
  SW t4, 1464(sp)
  LW t4, 1464(sp)
  LUI t5, 1
  ADDIW t5, t5, -976
  ADD t5, t5, sp
  ADD s3, t5, t4
  LW s3, 0(s3)
  FCVT.S.W ft4, s3
  FSW ft4, 1972(sp)
  LW t4, 1464(sp)
  LUI t5, 1
  ADDIW t5, t5, -616
  ADD t5, t5, sp
  ADD s3, t5, t4
  FLW fs1, 0(s3)
  LUI t4, 1
  ADDIW t4, t4, 328
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs2, 0(s3)
  FADD.S fs1, fs1, fs2
  LUI t4, 1
  ADDIW t4, t4, 400
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs2, 0(s3)
  FADD.S fs1, fs1, fs2
  LUI t4, 1
  ADDIW t4, t4, 632
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs2, 0(s3)
  FADD.S fs1, fs1, fs2
  LUI t4, 1
  ADDIW t4, t4, 624
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs2, 0(s3)
  LUI t4, 1
  ADDIW t4, t4, 616
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs3, 0(s3)
  FADD.S fs2, fs2, fs3
  LUI t4, 1
  ADDIW t4, t4, 608
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs3, 0(s3)
  FADD.S fs2, fs2, fs3
  LUI t4, 1
  ADDIW t4, t4, 600
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs3, 0(s3)
  FADD.S fs2, fs2, fs3
  LUI t4, 1
  ADDIW t4, t4, 592
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs3, 0(s3)
  LUI t4, 1
  ADDIW t4, t4, 584
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs4, 0(s3)
  FADD.S fs3, fs3, fs4
  LUI t4, 1
  ADDIW t4, t4, 576
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs4, 0(s3)
  FADD.S fs3, fs3, fs4
  LUI t4, 1
  ADDIW t4, t4, 568
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs4, 0(s3)
  FADD.S fs3, fs3, fs4
  LUI t4, 1
  ADDIW t4, t4, 480
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs4, 0(s3)
  LUI t4, 1
  ADDIW t4, t4, 552
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs5, 0(s3)
  FADD.S fs4, fs4, fs5
  LUI t4, 1
  ADDIW t4, t4, 544
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs5, 0(s3)
  FADD.S fs4, fs4, fs5
  LUI t4, 1
  ADDIW t4, t4, 536
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs5, 0(s3)
  FADD.S fs4, fs4, fs5
  LUI t4, 1
  ADDIW t4, t4, 528
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs5, 0(s3)
  LUI t4, 1
  ADDIW t4, t4, 520
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs6, 0(s3)
  FADD.S fs5, fs5, fs6
  LUI t4, 1
  ADDIW t4, t4, 512
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs6, 0(s3)
  FADD.S fs5, fs5, fs6
  LUI t4, 1
  ADDIW t4, t4, 504
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs6, 0(s3)
  FADD.S fs5, fs5, fs6
  LUI t4, 1
  ADDIW t4, t4, 496
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs6, 0(s3)
  LUI t4, 1
  ADDIW t4, t4, 488
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs7, 0(s3)
  FADD.S fs6, fs6, fs7
  LUI t4, 1
  ADDIW t4, t4, 240
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs7, 0(s3)
  FADD.S fs6, fs6, fs7
  LUI t4, 1
  ADDIW t4, t4, 152
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs7, 0(s3)
  FADD.S fs6, fs6, fs7
  LUI t4, 1
  ADDIW t4, t4, 144
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs7, 0(s3)
  LUI t4, 1
  ADDIW t4, t4, 136
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs8, 0(s3)
  FADD.S fs7, fs7, fs8
  LUI t4, 1
  ADDIW t4, t4, 128
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs8, 0(s3)
  FADD.S fs7, fs7, fs8
  LUI t4, 1
  ADDIW t4, t4, 120
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs8, 0(s3)
  FADD.S fs7, fs7, fs8
  LUI t4, 1
  ADDIW t4, t4, 112
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs8, 0(s3)
  LUI t4, 1
  ADDIW t4, t4, 104
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs9, 0(s3)
  FADD.S fs8, fs8, fs9
  LUI t4, 1
  ADDIW t4, t4, 96
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs9, 0(s3)
  FADD.S fs8, fs8, fs9
  LUI t4, 1
  ADDIW t4, t4, 88
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs9, 0(s3)
  FADD.S fs8, fs8, fs9
  LUI t4, 1
  ADDIW t4, t4, 0
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs9, 0(s3)
  LUI t4, 1
  ADDIW t4, t4, 72
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs10, 0(s3)
  FADD.S fs9, fs9, fs10
  LUI t4, 1
  ADDIW t4, t4, 64
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs10, 0(s3)
  FADD.S fs9, fs9, fs10
  LUI t4, 1
  ADDIW t4, t4, 56
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs10, 0(s3)
  FADD.S fs9, fs9, fs10
  LUI t4, 1
  ADDIW t4, t4, 48
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs10, 0(s3)
  LUI t4, 1
  ADDIW t4, t4, 40
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs11, 0(s3)
  FADD.S fs10, fs10, fs11
  LUI t4, 1
  ADDIW t4, t4, 32
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs11, 0(s3)
  FADD.S fs10, fs10, fs11
  LUI t4, 1
  ADDIW t4, t4, 24
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s3, t4, t3
  FLW fs11, 0(s3)
  FADD.S fs10, fs10, fs11
  LUI t5, 1
  ADDIW t5, t5, -1056
  ADD t5, t5, sp
  FSW fs1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1056
  ADD t5, t5, sp
  FSW fs2, 4(t5)
  LUI t5, 1
  ADDIW t5, t5, -1056
  ADD t5, t5, sp
  FSW fs3, 8(t5)
  LUI t5, 1
  ADDIW t5, t5, -1056
  ADD t5, t5, sp
  FSW fs4, 12(t5)
  LUI t5, 1
  ADDIW t5, t5, -1056
  ADD t5, t5, sp
  FSW fs5, 16(t5)
  LUI t5, 1
  ADDIW t5, t5, -1056
  ADD t5, t5, sp
  FSW fs6, 20(t5)
  LUI t5, 1
  ADDIW t5, t5, -1056
  ADD t5, t5, sp
  FSW fs7, 24(t5)
  LUI t5, 1
  ADDIW t5, t5, -1056
  ADD t5, t5, sp
  FSW fs8, 28(t5)
  LUI t5, 1
  ADDIW t5, t5, -1056
  ADD t5, t5, sp
  FSW fs9, 32(t5)
  LUI t5, 1
  ADDIW t5, t5, -1056
  ADD t5, t5, sp
  FSW fs10, 36(t5)
  FLW fs1, 0(s3)
  FLW ft4, 1280(sp)
  FEQ.S s3, fs1, ft4
  XORI s3, s3, 1
  SLTU s3, zero, s3
  FCVT.S.W fs1, s3
  LA s3, .CONSTANT.7.0
  FLW fs2, 0(s3)
  FEQ.S s3, fs1, fs2
  XORI s3, s3, 1
  FCVT.S.W fs1, s3
  LA s3, .CONSTANT.7.0
  FLW fs2, 0(s3)
  FEQ.S s3, fs1, fs2
  XORI s3, s3, 1
  BNE s3, zero, bb21
  # implict jump to bb18
bb18:
  LUI t4, 1
  ADDIW t4, t4, 328
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s3, t4, zero
  LUI t4, 1
  ADDIW t4, t4, 400
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s4, t4, zero
  LUI t4, 1
  ADDIW t4, t4, 632
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s5, t4, zero
  LUI t4, 1
  ADDIW t4, t4, 624
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, zero
  LUI t4, 1
  ADDIW t4, t4, 616
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s7, t4, zero
  LUI t3, 1
  ADDIW t3, t3, 608
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1480
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 600
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1496
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 592
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1512
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 584
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1528
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 576
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1544
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 568
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1560
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 480
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1576
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 552
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 16
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 544
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 8
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 536
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 80
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 528
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 312
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 520
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 304
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 512
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 296
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 504
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 288
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 496
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 280
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 488
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 272
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 240
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 264
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 152
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 256
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 144
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 248
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 136
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 160
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 128
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 232
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 120
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 224
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 112
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 216
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 104
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 208
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 96
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 200
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 88
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 192
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 0
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 184
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 72
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 176
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 64
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 168
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 56
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 560
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 48
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1968
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 40
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -2000
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 32
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -2016
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 24
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1976
  ADD t5, t5, sp
  SD t4, 0(t5)
  # implict jump to bb19
bb19:
  LUI t3, 1
  ADDIW t3, t3, -1976
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1992
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -2016
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -2008
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -2000
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1984
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1968
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1952
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 560
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1944
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 168
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1936
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 176
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1928
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 184
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1920
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 192
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1912
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 200
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1904
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 208
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1896
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 216
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1888
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 224
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1880
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 232
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1872
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 160
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1864
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 248
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1856
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 256
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1848
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 264
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1840
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 272
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1536
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 280
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1632
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 288
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1624
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 296
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1616
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 304
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1608
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 312
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1600
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 80
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1592
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 8
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1584
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 16
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1568
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1576
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1552
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1560
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1640
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1544
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1520
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1528
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1504
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1512
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1488
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1496
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s11, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -1480
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s2, t4, zero
  ADD s10, s7, zero
  ADD s0, s6, zero
  ADD s9, s5, zero
  ADD s1, s4, zero
  ADD s8, s3, zero
  LW t4, 1464(sp)
  ADD s8, s8, t4
  FLW fs1, 0(s8)
  LW t4, 1464(sp)
  ADD s8, s1, t4
  FLW fs2, 0(s8)
  FADD.S fs1, fs1, fs2
  LW t4, 1464(sp)
  ADD s8, s9, t4
  FLW fs2, 0(s8)
  FADD.S fs1, fs1, fs2
  LW t4, 1464(sp)
  ADD s8, s0, t4
  FLW fs2, 0(s8)
  FADD.S fs1, fs1, fs2
  LW t4, 1464(sp)
  ADD s8, s10, t4
  FLW fs2, 0(s8)
  LW t4, 1464(sp)
  ADD s8, s2, t4
  FLW fs3, 0(s8)
  FADD.S fs2, fs2, fs3
  LW t4, 1464(sp)
  ADD s8, s11, t4
  FLW fs3, 0(s8)
  FADD.S fs2, fs2, fs3
  LUI t4, 1
  ADDIW t4, t4, -1488
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs3, 0(s8)
  FADD.S fs2, fs2, fs3
  LUI t4, 1
  ADDIW t4, t4, -1504
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs3, 0(s8)
  LUI t4, 1
  ADDIW t4, t4, -1520
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs4, 0(s8)
  FADD.S fs3, fs3, fs4
  LUI t4, 1
  ADDIW t4, t4, -1640
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs4, 0(s8)
  FADD.S fs3, fs3, fs4
  LUI t4, 1
  ADDIW t4, t4, -1552
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs4, 0(s8)
  FADD.S fs3, fs3, fs4
  LUI t4, 1
  ADDIW t4, t4, -1568
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs4, 0(s8)
  LUI t4, 1
  ADDIW t4, t4, -1584
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs5, 0(s8)
  FADD.S fs4, fs4, fs5
  LUI t4, 1
  ADDIW t4, t4, -1592
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs5, 0(s8)
  FADD.S fs4, fs4, fs5
  LUI t4, 1
  ADDIW t4, t4, -1600
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs5, 0(s8)
  FADD.S fs4, fs4, fs5
  LUI t4, 1
  ADDIW t4, t4, -1608
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs5, 0(s8)
  LUI t4, 1
  ADDIW t4, t4, -1616
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs6, 0(s8)
  FADD.S fs5, fs5, fs6
  LUI t4, 1
  ADDIW t4, t4, -1624
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs6, 0(s8)
  FADD.S fs5, fs5, fs6
  LUI t4, 1
  ADDIW t4, t4, -1632
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs6, 0(s8)
  FADD.S fs5, fs5, fs6
  LUI t4, 1
  ADDIW t4, t4, -1536
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs6, 0(s8)
  LUI t4, 1
  ADDIW t4, t4, -1840
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs7, 0(s8)
  FADD.S fs6, fs6, fs7
  LUI t4, 1
  ADDIW t4, t4, -1848
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs7, 0(s8)
  FADD.S fs6, fs6, fs7
  LUI t4, 1
  ADDIW t4, t4, -1856
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs7, 0(s8)
  FADD.S fs6, fs6, fs7
  LUI t4, 1
  ADDIW t4, t4, -1864
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs7, 0(s8)
  LUI t4, 1
  ADDIW t4, t4, -1872
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs8, 0(s8)
  FADD.S fs7, fs7, fs8
  LUI t4, 1
  ADDIW t4, t4, -1880
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs8, 0(s8)
  FADD.S fs7, fs7, fs8
  LUI t4, 1
  ADDIW t4, t4, -1888
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs8, 0(s8)
  FADD.S fs7, fs7, fs8
  LUI t4, 1
  ADDIW t4, t4, -1896
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs8, 0(s8)
  LUI t4, 1
  ADDIW t4, t4, -1904
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs9, 0(s8)
  FADD.S fs8, fs8, fs9
  LUI t4, 1
  ADDIW t4, t4, -1912
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs9, 0(s8)
  FADD.S fs8, fs8, fs9
  LUI t4, 1
  ADDIW t4, t4, -1920
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs9, 0(s8)
  FADD.S fs8, fs8, fs9
  LUI t4, 1
  ADDIW t4, t4, -1928
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs9, 0(s8)
  LUI t4, 1
  ADDIW t4, t4, -1936
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs10, 0(s8)
  FADD.S fs9, fs9, fs10
  LUI t4, 1
  ADDIW t4, t4, -1944
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs10, 0(s8)
  FADD.S fs9, fs9, fs10
  LUI t4, 1
  ADDIW t4, t4, -1952
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs10, 0(s8)
  FADD.S fs9, fs9, fs10
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs10, 0(s8)
  LUI t4, 1
  ADDIW t4, t4, -2008
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs11, 0(s8)
  FADD.S fs10, fs10, fs11
  LUI t4, 1
  ADDIW t4, t4, -1992
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW t3, 1464(sp)
  ADD s8, t4, t3
  FLW fs11, 0(s8)
  FADD.S fs10, fs10, fs11
  LW t4, 1464(sp)
  LUI t5, 1
  ADDIW t5, t5, -1056
  ADD t5, t5, sp
  ADD s8, t5, t4
  FLW fs11, 0(s8)
  FADD.S fs10, fs10, fs11
  LUI t5, 1
  ADDIW t5, t5, -1056
  ADD t5, t5, sp
  FSW fs1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1056
  ADD t5, t5, sp
  FSW fs2, 4(t5)
  LUI t5, 1
  ADDIW t5, t5, -1056
  ADD t5, t5, sp
  FSW fs3, 8(t5)
  LUI t5, 1
  ADDIW t5, t5, -1056
  ADD t5, t5, sp
  FSW fs4, 12(t5)
  LUI t5, 1
  ADDIW t5, t5, -1056
  ADD t5, t5, sp
  FSW fs5, 16(t5)
  LUI t5, 1
  ADDIW t5, t5, -1056
  ADD t5, t5, sp
  FSW fs6, 20(t5)
  LUI t5, 1
  ADDIW t5, t5, -1056
  ADD t5, t5, sp
  FSW fs7, 24(t5)
  LUI t5, 1
  ADDIW t5, t5, -1056
  ADD t5, t5, sp
  FSW fs8, 28(t5)
  LUI t5, 1
  ADDIW t5, t5, -1056
  ADD t5, t5, sp
  FSW fs9, 32(t5)
  LUI t5, 1
  ADDIW t5, t5, -1056
  ADD t5, t5, sp
  FSW fs10, 36(t5)
  FLW fs1, 0(s8)
  FLW ft4, 1280(sp)
  FEQ.S s8, fs1, ft4
  XORI s8, s8, 1
  SLTU s8, zero, s8
  FCVT.S.W fs1, s8
  LA s8, .CONSTANT.7.0
  FLW fs2, 0(s8)
  FEQ.S s8, fs1, fs2
  XORI s8, s8, 1
  FCVT.S.W fs1, s8
  LA s8, .CONSTANT.7.0
  FLW fs2, 0(s8)
  FEQ.S s8, fs1, fs2
  XORI s8, s8, 1
  BNE s8, zero, bb21
  # implict jump to bb20
bb20:
  ADD s3, s1, zero
  ADD s4, s9, zero
  ADD s5, s0, zero
  ADD s6, s10, zero
  ADD s7, s2, zero
  ADD t4, s11, zero
  LUI t3, 1
  ADDIW t3, t3, -1480
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1488
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1496
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1504
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1512
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1520
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1528
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1640
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1544
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1552
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1560
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1568
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1576
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1584
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 16
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1592
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 8
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1600
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 80
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1608
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 312
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1616
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 304
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1624
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 296
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1632
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 288
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1536
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 280
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1840
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 272
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1848
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 264
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1856
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 256
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1864
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 248
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1872
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 160
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1880
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 232
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1888
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 224
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1896
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 216
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1904
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 208
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1912
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 200
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1920
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 192
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1928
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 184
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1936
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 176
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1944
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 168
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1952
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 560
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1984
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1968
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -2008
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -2000
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1992
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -2016
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1056
  ADD t4, t4, sp
  ADD t4, t4, zero
  LUI t5, 1
  ADDIW t5, t5, -1976
  ADD t5, t5, sp
  SD t4, 0(t5)
  JAL zero, bb19
bb21:
  ADDI a0, zero, 10
  LUI a1, 1
  ADDIW a1, a1, -1056
  ADD a1, a1, sp
  ADD a1, a1, zero
  CALL putfarray
  LA s0, k
  LW s0, 0(s0)
  SLLIW t4, s0, 2
  LUI t5, 1
  ADDIW t5, t5, -2020
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -2020
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t5, 1
  ADDIW t5, t5, -1056
  ADD t5, t5, sp
  ADD s1, t5, t4
  FLW ft4, 0(s1)
  FSW ft4, 1980(sp)
  LUI t4, 1
  ADDIW t4, t4, -2020
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t5, 1
  ADDIW t5, t5, -616
  ADD t5, t5, sp
  ADD s1, t5, t4
  FLW fs2, 0(s1)
  LUI t4, 1
  ADDIW t4, t4, -1432
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s1, t4, t3
  LW s2, 0(s1)
  LUI t4, 1
  ADDIW t4, t4, 400
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s3, t4, t3
  FLW fs3, 0(s3)
  LUI t4, 1
  ADDIW t4, t4, -1360
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s3, t4, t3
  LW t4, 0(s3)
  SW t4, 1900(sp)
  LUI t4, 1
  ADDIW t4, t4, 632
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s4, t4, t3
  FLW ft4, 0(s4)
  FSW ft4, 1152(sp)
  LUI t4, 1
  ADDIW t4, t4, 624
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s4, t4, t3
  FLW ft4, 0(s4)
  FSW ft4, 1296(sp)
  LUI t4, 1
  ADDIW t4, t4, -1232
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s4, t4, t3
  LW s4, 0(s4)
  LUI t4, 1
  ADDIW t4, t4, -1424
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s5, t4, t3
  LW t4, 0(s5)
  SW t4, 1204(sp)
  LUI t4, 1
  ADDIW t4, t4, 368
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s6, t4, t3
  LW t4, 0(s6)
  SW t4, 1184(sp)
  LUI t4, 1
  ADDIW t4, t4, 584
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s7, t4, t3
  FLW ft4, 0(s7)
  FSW ft4, 1288(sp)
  LUI t4, 1
  ADDIW t4, t4, 576
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s7, t4, t3
  FLW ft4, 0(s7)
  FSW ft4, 1284(sp)
  LUI t4, 1
  ADDIW t4, t4, 568
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s7, t4, t3
  FLW ft4, 0(s7)
  FSW ft4, 1232(sp)
  LUI t4, 1
  ADDIW t4, t4, -1104
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s7, t4, t3
  LW t4, 0(s7)
  SW t4, 1168(sp)
  LUI t4, 1
  ADDIW t4, t4, 552
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s8, t4, t3
  FLW ft4, 0(s8)
  FSW ft4, 1224(sp)
  LUI t4, 1
  ADDIW t4, t4, 544
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s8, t4, t3
  FLW ft4, 0(s8)
  FSW ft4, 2044(sp)
  LUI t4, 1
  ADDIW t4, t4, 536
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s8, t4, t3
  FLW ft4, 0(s8)
  FSW ft4, 1776(sp)
  LUI t4, 1
  ADDIW t4, t4, 512
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s8, t4, t3
  FLW ft4, 0(s8)
  FSW ft4, 1860(sp)
  LUI t4, 1
  ADDIW t4, t4, 504
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s8, t4, t3
  FLW ft4, 0(s8)
  FSW ft4, 1944(sp)
  LUI t4, 1
  ADDIW t4, t4, 376
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s8, t4, t3
  LW t4, 0(s8)
  SW t4, 1148(sp)
  LUI t4, 1
  ADDIW t4, t4, 240
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s9, t4, t3
  FLW ft4, 0(s9)
  FSW ft4, 2040(sp)
  LUI t4, 1
  ADDIW t4, t4, 152
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s9, t4, t3
  FLW ft4, 0(s9)
  LUI t4, 1
  ADDIW t4, t4, -2028
  ADD t4, t4, sp
  FSW ft4, 0(t4)
  LUI t4, 1
  ADDIW t4, t4, -1312
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s9, t4, t3
  LW t4, 0(s9)
  SW t4, 1136(sp)
  LUI t4, 1
  ADDIW t4, t4, 424
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s10, t4, t3
  LW t4, 0(s10)
  SW t4, 1128(sp)
  LUI t4, 1
  ADDIW t4, t4, 144
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW ft4, 0(s11)
  LUI t4, 1
  ADDIW t4, t4, -2036
  ADD t4, t4, sp
  FSW ft4, 0(t4)
  LUI t4, 1
  ADDIW t4, t4, 136
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW ft4, 0(s11)
  LUI t4, 1
  ADDIW t4, t4, -2044
  ADD t4, t4, sp
  FSW ft4, 0(t4)
  LUI t4, 1
  ADDIW t4, t4, 416
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  LW t4, 0(s11)
  SW t4, 1932(sp)
  LUI t4, 1
  ADDIW t4, t4, 352
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s0, t4, t3
  LW t4, 0(s0)
  SW t4, 1876(sp)
  LUI t4, 1
  ADDIW t4, t4, 120
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s3, t4, t3
  FLW ft4, 0(s3)
  FSW ft4, 1848(sp)
  LUI t4, 1
  ADDIW t4, t4, 112
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s3, t4, t3
  FLW ft4, 0(s3)
  FSW ft4, 1856(sp)
  LUI t4, 1
  ADDIW t4, t4, -2020
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t5, 1
  ADDIW t5, t5, -944
  ADD t5, t5, sp
  ADD s3, t5, t4
  LW t4, 0(s3)
  SW t4, 1868(sp)
  LUI t4, 1
  ADDIW t4, t4, 88
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s0, t4, t3
  FLW ft4, 0(s0)
  FSW ft4, 1884(sp)
  LUI t4, 1
  ADDIW t4, t4, 0
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s0, t4, t3
  FLW ft4, 0(s0)
  FSW ft4, 1896(sp)
  LUI t4, 1
  ADDIW t4, t4, 56
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s0, t4, t3
  FLW ft4, 0(s0)
  FSW ft4, 1908(sp)
  LUI t4, 1
  ADDIW t4, t4, -1328
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s0, t4, t3
  LW t4, 0(s0)
  SW t4, 1916(sp)
  LUI t4, 1
  ADDIW t4, t4, 328
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW fs0, 0(s11)
  FADD.S fs0, fs2, fs0
  FADD.S fs0, fs0, fs3
  FLW ft4, 1152(sp)
  FADD.S fs0, fs0, ft4
  LUI t4, 1
  ADDIW t4, t4, 616
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW fs1, 0(s11)
  FLW ft4, 1296(sp)
  FADD.S fs1, ft4, fs1
  LUI t4, 1
  ADDIW t4, t4, 608
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW fs11, 0(s11)
  FADD.S fs1, fs1, fs11
  LUI t4, 1
  ADDIW t4, t4, 600
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW fs11, 0(s11)
  FADD.S fs1, fs1, fs11
  LUI t4, 1
  ADDIW t4, t4, 592
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW fs11, 0(s11)
  FLW ft4, 1288(sp)
  FADD.S fs11, fs11, ft4
  FLW ft4, 1284(sp)
  FADD.S fs11, fs11, ft4
  FLW ft4, 1232(sp)
  FADD.S fs11, fs11, ft4
  LUI t4, 1
  ADDIW t4, t4, 480
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW fs10, 0(s11)
  FLW ft4, 1224(sp)
  FADD.S fs10, fs10, ft4
  FLW ft4, 2044(sp)
  FADD.S fs10, fs10, ft4
  FLW ft4, 1776(sp)
  FADD.S fs10, fs10, ft4
  LUI t4, 1
  ADDIW t4, t4, 528
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW fs9, 0(s11)
  LUI t4, 1
  ADDIW t4, t4, 520
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW fs8, 0(s11)
  FADD.S fs8, fs9, fs8
  FLW ft4, 1860(sp)
  FADD.S fs8, fs8, ft4
  FLW ft4, 1944(sp)
  FADD.S fs8, fs8, ft4
  LUI t4, 1
  ADDIW t4, t4, 496
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW fs9, 0(s11)
  LUI t4, 1
  ADDIW t4, t4, 488
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW fs7, 0(s11)
  FADD.S fs7, fs9, fs7
  FLW ft4, 2040(sp)
  FADD.S fs7, fs7, ft4
  LUI t5, 1
  ADDIW t5, t5, -2028
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FADD.S fs7, fs7, ft4
  LUI t5, 1
  ADDIW t5, t5, -2036
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -2044
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  FADD.S fs9, ft4, ft3
  LUI t4, 1
  ADDIW t4, t4, 128
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW fs6, 0(s11)
  FADD.S fs6, fs9, fs6
  FLW ft4, 1848(sp)
  FADD.S fs6, fs6, ft4
  LUI t4, 1
  ADDIW t4, t4, 104
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW fs9, 0(s11)
  FLW ft4, 1856(sp)
  FADD.S fs9, ft4, fs9
  LUI t4, 1
  ADDIW t4, t4, 96
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW fs5, 0(s11)
  FADD.S fs5, fs9, fs5
  FLW ft4, 1884(sp)
  FADD.S fs5, fs5, ft4
  LUI t4, 1
  ADDIW t4, t4, 72
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW fs9, 0(s11)
  FLW ft4, 1896(sp)
  FADD.S fs9, ft4, fs9
  LUI t4, 1
  ADDIW t4, t4, 64
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW fs4, 0(s11)
  FADD.S fs4, fs9, fs4
  FLW ft4, 1908(sp)
  FADD.S fs4, fs4, ft4
  LUI t5, 1
  ADDIW t5, t5, -1184
  ADD t5, t5, sp
  FSW fs0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1184
  ADD t5, t5, sp
  FSW fs1, 4(t5)
  LUI t5, 1
  ADDIW t5, t5, -1184
  ADD t5, t5, sp
  FSW fs11, 8(t5)
  LUI t5, 1
  ADDIW t5, t5, -1184
  ADD t5, t5, sp
  FSW fs10, 12(t5)
  LUI t5, 1
  ADDIW t5, t5, -1184
  ADD t5, t5, sp
  FSW fs8, 16(t5)
  LUI t5, 1
  ADDIW t5, t5, -1184
  ADD t5, t5, sp
  FSW fs7, 20(t5)
  LUI t5, 1
  ADDIW t5, t5, -1184
  ADD t5, t5, sp
  FSW fs6, 24(t5)
  LUI t4, 1
  ADDIW t4, t4, -1184
  ADD t4, t4, sp
  FSW fs5, 28(t4)
  LUI t4, 1
  ADDIW t4, t4, -1184
  ADD t4, t4, sp
  ADDI t4, t4, 32
  LUI t5, 1
  ADDIW t5, t5, -1472
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1184
  ADD t5, t5, sp
  FSW fs4, 32(t5)
  LA s11, .CONSTANT.7.0
  FLW fs0, 0(s11)
  LUI t4, 1
  ADDIW t4, t4, -1184
  ADD t4, t4, sp
  FSW fs0, 36(t4)
  LW s3, 0(s3)
  ADDW s3, s3, s2
  LW t4, 1900(sp)
  ADDW s3, s3, t4
  LW s0, 0(s0)
  ADDW s0, s0, s4
  LW t4, 1204(sp)
  ADDW s0, s0, t4
  LUI t4, 1
  ADDIW t4, t4, -1304
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  LW s11, 0(s11)
  LUI t4, 1
  ADDIW t4, t4, 360
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s10, t4, t3
  LW s10, 0(s10)
  ADDW s10, s11, s10
  LW t4, 1184(sp)
  ADDW s10, s10, t4
  LUI t4, 1
  ADDIW t4, t4, 392
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  LW s11, 0(s11)
  LW t4, 1168(sp)
  ADDW s11, t4, s11
  LUI t4, 1
  ADDIW t4, t4, -1344
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s9, t4, t3
  LW s9, 0(s9)
  ADDW s9, s11, s9
  LUI t4, 1
  ADDIW t4, t4, 344
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  LW s11, 0(s11)
  LUI t4, 1
  ADDIW t4, t4, 384
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s8, t4, t3
  LW s8, 0(s8)
  ADDW s8, s11, s8
  LW t4, 1148(sp)
  ADDW s8, s8, t4
  LUI t4, 1
  ADDIW t4, t4, -1400
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  LW s11, 0(s11)
  LUI t4, 1
  ADDIW t4, t4, 472
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s7, t4, t3
  LW s7, 0(s7)
  ADDW s7, s11, s7
  LW t4, 1136(sp)
  ADDW s7, s7, t4
  LUI t4, 1
  ADDIW t4, t4, -1288
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  LW s11, 0(s11)
  LW t4, 1128(sp)
  ADDW s11, t4, s11
  LW t4, 1932(sp)
  ADDW s11, s11, t4
  LUI t4, 1
  ADDIW t4, t4, -1248
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s6, t4, t3
  LW s6, 0(s6)
  LW t4, 1876(sp)
  ADDW s6, t4, s6
  LUI t4, 1
  ADDIW t4, t4, -1200
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s5, t4, t3
  LW s5, 0(s5)
  ADDW s5, s6, s5
  LW s1, 0(s1)
  LW t4, 1868(sp)
  ADDW s1, t4, s1
  LW t4, 1900(sp)
  ADDW s1, s1, t4
  LW t4, 1916(sp)
  ADDW s1, s1, t4
  LUI t5, 1
  ADDIW t5, t5, -1144
  ADD t5, t5, sp
  SW s3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1144
  ADD t5, t5, sp
  SW s0, 4(t5)
  LUI t5, 1
  ADDIW t5, t5, -1144
  ADD t5, t5, sp
  SW s10, 8(t5)
  LUI t5, 1
  ADDIW t5, t5, -1144
  ADD t5, t5, sp
  SW s9, 12(t5)
  LUI t5, 1
  ADDIW t5, t5, -1144
  ADD t5, t5, sp
  SW s8, 16(t5)
  LUI t5, 1
  ADDIW t5, t5, -1144
  ADD t5, t5, sp
  SW s7, 20(t5)
  LUI t5, 1
  ADDIW t5, t5, -1144
  ADD t5, t5, sp
  SW s11, 24(t5)
  LUI t5, 1
  ADDIW t5, t5, -1144
  ADD t5, t5, sp
  SW s5, 28(t5)
  LUI t4, 1
  ADDIW t4, t4, -1144
  ADD t4, t4, sp
  SW s1, 32(t4)
  LUI t4, 1
  ADDIW t4, t4, -1144
  ADD t4, t4, sp
  SW zero, 36(t4)
  LW t4, 1916(sp)
  BNE t4, zero, bb31
  # implict jump to bb22
bb22:
  FSGNJ.S fs0, fs2, fs2
  ADD s0, s2, zero
  FSGNJ.S fs1, fs3, fs3
  LW t4, 1900(sp)
  ADD s1, t4, zero
  FLW ft3, 1152(sp)
  FLW ft4, 1152(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1448(sp)
  FLW ft3, 1296(sp)
  FLW ft4, 1296(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1444(sp)
  LUI t4, 1
  ADDIW t4, t4, 616
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s2, t4, zero
  LUI t3, 1
  ADDIW t3, t3, -1328
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1656
  ADD t3, t3, sp
  SD t4, 0(t3)
  ADD t4, s4, zero
  SW t4, 1460(sp)
  LW t3, 1204(sp)
  ADD t4, t3, zero
  SW t4, 1456(sp)
  LUI t3, 1
  ADDIW t3, t3, 608
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1664
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1304
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1672
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 360
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1680
  ADD t3, t3, sp
  SD t4, 0(t3)
  LW t3, 1184(sp)
  ADD t4, t3, zero
  SW t4, 1452(sp)
  LUI t3, 1
  ADDIW t3, t3, 600
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1688
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 592
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1696
  ADD t5, t5, sp
  SD t4, 0(t5)
  FLW ft3, 1288(sp)
  FLW ft4, 1288(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1440(sp)
  FLW ft3, 1284(sp)
  FLW ft4, 1284(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1436(sp)
  FLW ft3, 1232(sp)
  FLW ft4, 1232(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1432(sp)
  LUI t3, 1
  ADDIW t3, t3, 480
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1464
  ADD t3, t3, sp
  SD t4, 0(t3)
  LW t3, 1168(sp)
  ADD t4, t3, zero
  SW t4, 1468(sp)
  FLW ft3, 1224(sp)
  FLW ft4, 1224(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1428(sp)
  FLW ft3, 2044(sp)
  FLW ft4, 2044(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1424(sp)
  FLW ft3, 1776(sp)
  FLW ft4, 1776(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1420(sp)
  LUI t3, 1
  ADDIW t3, t3, 392
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1456
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 528
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1448
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1344
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1728
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 344
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1824
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 520
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1816
  ADD t5, t5, sp
  SD t4, 0(t5)
  FLW ft3, 1860(sp)
  FLW ft4, 1860(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1416(sp)
  FLW ft3, 1944(sp)
  FLW ft4, 1944(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1412(sp)
  LUI t3, 1
  ADDIW t3, t3, 384
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1808
  ADD t3, t3, sp
  SD t4, 0(t3)
  LW t3, 1148(sp)
  ADD t4, t3, zero
  SW t4, 1536(sp)
  LUI t3, 1
  ADDIW t3, t3, 496
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1800
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 488
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1792
  ADD t5, t5, sp
  SD t4, 0(t5)
  FLW ft3, 2040(sp)
  FLW ft4, 2040(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1548(sp)
  LUI t5, 1
  ADDIW t5, t5, -2028
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -2028
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1560(sp)
  LUI t3, 1
  ADDIW t3, t3, -1400
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1784
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 472
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1776
  ADD t3, t3, sp
  SD t4, 0(t3)
  LW t3, 1136(sp)
  ADD t4, t3, zero
  SW t4, 1572(sp)
  LW t3, 1128(sp)
  ADD t4, t3, zero
  SW t4, 1576(sp)
  LUI t5, 1
  ADDIW t5, t5, -2036
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -2036
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1580(sp)
  LUI t5, 1
  ADDIW t5, t5, -2044
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -2044
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1404(sp)
  LUI t3, 1
  ADDIW t3, t3, -1288
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1768
  ADD t3, t3, sp
  SD t4, 0(t3)
  LW t3, 1932(sp)
  ADD t4, t3, zero
  SW t4, 1344(sp)
  LUI t3, 1
  ADDIW t3, t3, 128
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1760
  ADD t3, t3, sp
  SD t4, 0(t3)
  LW t3, 1876(sp)
  ADD t4, t3, zero
  SW t4, 1348(sp)
  LUI t3, 1
  ADDIW t3, t3, -1248
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1752
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1200
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1744
  ADD t5, t5, sp
  SD t4, 0(t5)
  FLW ft3, 1848(sp)
  FLW ft4, 1848(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1360(sp)
  FLW ft3, 1856(sp)
  FLW ft4, 1856(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1364(sp)
  LUI t3, 1
  ADDIW t3, t3, 104
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1736
  ADD t3, t3, sp
  SD t4, 0(t3)
  LW t3, 1868(sp)
  ADD t4, t3, zero
  SW t4, 1376(sp)
  LUI t3, 1
  ADDIW t3, t3, -1432
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1832
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 96
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1720
  ADD t5, t5, sp
  SD t4, 0(t5)
  FLW ft3, 1884(sp)
  FLW ft4, 1884(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1388(sp)
  LW t3, 1900(sp)
  ADD t4, t3, zero
  SW t4, 1396(sp)
  FLW ft3, 1896(sp)
  FLW ft4, 1896(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1400(sp)
  LUI t3, 1
  ADDIW t3, t3, 72
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1712
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 64
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1704
  ADD t5, t5, sp
  SD t4, 0(t5)
  FLW ft3, 1908(sp)
  FLW ft4, 1908(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1340(sp)
  LW t3, 1916(sp)
  ADD t4, t3, zero
  SW t4, 1408(sp)
  # implict jump to bb23
bb23:
  LW t4, 1408(sp)
  ADD s11, t4, zero
  FLW ft4, 1340(sp)
  FLW ft3, 1340(sp)
  FSGNJ.S fs11, ft4, ft3
  LUI t3, 1
  ADDIW t3, t3, -1704
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1352
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1712
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1440
  ADD t5, t5, sp
  SD t4, 0(t5)
  FLW ft3, 1400(sp)
  FLW ft4, 1400(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1556(sp)
  LW t3, 1396(sp)
  ADD t4, t3, zero
  SW t4, 1392(sp)
  FLW ft3, 1388(sp)
  FLW ft4, 1388(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1520(sp)
  LUI t3, 1
  ADDIW t3, t3, -1720
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1416
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1832
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1368
  ADD t3, t3, sp
  SD t4, 0(t3)
  LW t3, 1376(sp)
  ADD t4, t3, zero
  SW t4, 1384(sp)
  LUI t3, 1
  ADDIW t3, t3, -1736
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1376
  ADD t5, t5, sp
  SD t4, 0(t5)
  FLW ft3, 1364(sp)
  FLW ft4, 1364(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1496(sp)
  FLW ft3, 1360(sp)
  FLW ft4, 1360(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1492(sp)
  LUI t3, 1
  ADDIW t3, t3, -1744
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1384
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1752
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1392
  ADD t3, t3, sp
  SD t4, 0(t3)
  LW t3, 1348(sp)
  ADD t4, t3, zero
  SW t4, 1368(sp)
  LUI t3, 1
  ADDIW t3, t3, -1760
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 336
  ADD t3, t3, sp
  SD t4, 0(t3)
  LW t3, 1344(sp)
  ADD t4, t3, zero
  SW t4, 1164(sp)
  LUI t3, 1
  ADDIW t3, t3, -1768
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1408
  ADD t5, t5, sp
  SD t4, 0(t5)
  FLW ft3, 1404(sp)
  FLW ft4, 1404(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1484(sp)
  FLW ft3, 1580(sp)
  FLW ft4, 1580(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1124(sp)
  LW t3, 1576(sp)
  ADD t4, t3, zero
  SW t4, 1352(sp)
  LW t3, 1572(sp)
  ADD t4, t3, zero
  SW t4, 1356(sp)
  LUI t3, 1
  ADDIW t3, t3, -1776
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1216
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1784
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1224
  ADD t5, t5, sp
  SD t4, 0(t5)
  FLW ft3, 1560(sp)
  FLW ft4, 1560(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1836(sp)
  FLW ft3, 1548(sp)
  FLW ft4, 1548(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1208(sp)
  LUI t3, 1
  ADDIW t3, t3, -1792
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 432
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1800
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1256
  ADD t3, t3, sp
  SD t4, 0(t3)
  LW t3, 1536(sp)
  ADD t4, t3, zero
  SW t4, 1568(sp)
  LUI t3, 1
  ADDIW t3, t3, -1808
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1264
  ADD t5, t5, sp
  SD t4, 0(t5)
  FLW ft3, 1412(sp)
  FLW ft4, 1412(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1200(sp)
  FLW ft3, 1416(sp)
  FLW ft4, 1416(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1180(sp)
  LUI t3, 1
  ADDIW t3, t3, -1816
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1272
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1824
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1280
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1728
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1296
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1448
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1320
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1456
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1240
  ADD t5, t5, sp
  SD t4, 0(t5)
  FLW ft3, 1420(sp)
  FLW ft4, 1420(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1176(sp)
  FLW ft3, 1424(sp)
  FLW ft4, 1424(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1504(sp)
  FLW ft3, 1428(sp)
  FLW ft4, 1428(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1160(sp)
  LW t3, 1468(sp)
  ADD t4, t3, zero
  SW t4, 1512(sp)
  LUI t3, 1
  ADDIW t3, t3, -1464
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1336
  ADD t5, t5, sp
  SD t4, 0(t5)
  FLW ft3, 1432(sp)
  FLW ft4, 1432(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1540(sp)
  FLW ft3, 1436(sp)
  FLW ft4, 1436(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1156(sp)
  FLW ft3, 1440(sp)
  FLW ft4, 1440(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1132(sp)
  LUI t3, 1
  ADDIW t3, t3, -1696
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1208
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1688
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 464
  ADD t3, t3, sp
  SD t4, 0(t3)
  LW t3, 1452(sp)
  ADD t4, t3, zero
  SW t4, 1488(sp)
  LUI t3, 1
  ADDIW t3, t3, -1680
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 456
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1672
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 448
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1664
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, 440
  ADD t3, t3, sp
  SD t4, 0(t3)
  LW t3, 1456(sp)
  ADD t4, t3, zero
  SW t4, 1088(sp)
  LW t3, 1460(sp)
  ADD t4, t3, zero
  SW t4, 1144(sp)
  LUI t3, 1
  ADDIW t3, t3, -1656
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, 408
  ADD t5, t5, sp
  SD t4, 0(t5)
  ADD t4, s2, zero
  LUI t5, 1
  ADDIW t5, t5, 320
  ADD t5, t5, sp
  SD t4, 0(t5)
  FLW ft3, 1444(sp)
  FLW ft4, 1444(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1552(sp)
  FLW ft3, 1448(sp)
  FLW ft4, 1448(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1584(sp)
  ADD t4, s1, zero
  SW t4, 1336(sp)
  FSGNJ.S ft4, fs1, fs1
  FSW ft4, 1192(sp)
  ADD t4, s0, zero
  SW t4, 1328(sp)
  FSGNJ.S ft4, fs0, fs0
  FSW ft4, 1380(sp)
  FCVT.S.W ft4, s11
  FSW ft4, 1564(sp)
  FCVT.W.S t4, fs11, rtz
  SW t4, 1372(sp)
  # implict jump to bb24
bb24:
  LUI t4, 1
  ADDIW t4, t4, -2020
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t5, 1
  ADDIW t5, t5, -1184
  ADD t5, t5, sp
  ADD s11, t5, t4
  FLW fs11, 0(s11)
  FLW ft4, 1380(sp)
  FADD.S fs11, ft4, fs11
  FLW ft4, 1192(sp)
  FADD.S fs11, fs11, ft4
  FLW ft4, 1584(sp)
  FADD.S fs11, fs11, ft4
  LUI t4, 1
  ADDIW t4, t4, 320
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW fs10, 0(s11)
  FLW ft4, 1552(sp)
  FADD.S fs10, ft4, fs10
  LUI t4, 1
  ADDIW t4, t4, 440
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW fs9, 0(s11)
  FADD.S fs9, fs10, fs9
  LUI t4, 1
  ADDIW t4, t4, 464
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW fs10, 0(s11)
  FADD.S fs9, fs9, fs10
  LUI t4, 1
  ADDIW t4, t4, -1208
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW fs10, 0(s11)
  FLW ft4, 1132(sp)
  FADD.S fs10, fs10, ft4
  FLW ft4, 1156(sp)
  FADD.S fs10, fs10, ft4
  FLW ft4, 1540(sp)
  FADD.S fs10, fs10, ft4
  LUI t4, 1
  ADDIW t4, t4, -1336
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW fs8, 0(s11)
  FLW ft4, 1160(sp)
  FADD.S fs8, fs8, ft4
  FLW ft4, 1504(sp)
  FADD.S fs8, fs8, ft4
  FLW ft4, 1176(sp)
  FADD.S fs8, fs8, ft4
  LUI t4, 1
  ADDIW t4, t4, -1320
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW fs7, 0(s11)
  LUI t4, 1
  ADDIW t4, t4, -1272
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW fs6, 0(s11)
  FADD.S fs6, fs7, fs6
  FLW ft4, 1180(sp)
  FADD.S fs6, fs6, ft4
  FLW ft4, 1200(sp)
  FADD.S fs6, fs6, ft4
  LUI t4, 1
  ADDIW t4, t4, -1256
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW fs7, 0(s11)
  LUI t4, 1
  ADDIW t4, t4, 432
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW fs5, 0(s11)
  FADD.S fs5, fs7, fs5
  FLW ft4, 1208(sp)
  FADD.S fs5, fs5, ft4
  FLW ft4, 1836(sp)
  FADD.S fs5, fs5, ft4
  FLW ft4, 1124(sp)
  FLW ft3, 1484(sp)
  FADD.S fs7, ft4, ft3
  LUI t4, 1
  ADDIW t4, t4, 336
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW fs4, 0(s11)
  FADD.S fs4, fs7, fs4
  FLW ft4, 1492(sp)
  FADD.S fs4, fs4, ft4
  LUI t4, 1
  ADDIW t4, t4, -1376
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW fs7, 0(s11)
  FLW ft4, 1496(sp)
  FADD.S fs7, ft4, fs7
  LUI t4, 1
  ADDIW t4, t4, -1416
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW fs3, 0(s11)
  FADD.S fs3, fs7, fs3
  FLW ft4, 1520(sp)
  FADD.S fs3, fs3, ft4
  LUI t4, 1
  ADDIW t4, t4, -1440
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW fs7, 0(s11)
  FLW ft4, 1556(sp)
  FADD.S fs7, ft4, fs7
  LUI t4, 1
  ADDIW t4, t4, -1352
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s11, t4, t3
  FLW fs2, 0(s11)
  FADD.S fs2, fs7, fs2
  FLW ft4, 1564(sp)
  FADD.S fs2, fs2, ft4
  LUI t5, 1
  ADDIW t5, t5, -1184
  ADD t5, t5, sp
  FSW fs11, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1184
  ADD t5, t5, sp
  FSW fs9, 4(t5)
  LUI t5, 1
  ADDIW t5, t5, -1184
  ADD t5, t5, sp
  FSW fs10, 8(t5)
  LUI t5, 1
  ADDIW t5, t5, -1184
  ADD t5, t5, sp
  FSW fs8, 12(t5)
  LUI t5, 1
  ADDIW t5, t5, -1184
  ADD t5, t5, sp
  FSW fs6, 16(t5)
  LUI t5, 1
  ADDIW t5, t5, -1184
  ADD t5, t5, sp
  FSW fs5, 20(t5)
  LUI t5, 1
  ADDIW t5, t5, -1184
  ADD t5, t5, sp
  FSW fs4, 24(t5)
  LUI t5, 1
  ADDIW t5, t5, -1184
  ADD t5, t5, sp
  FSW fs3, 28(t5)
  LUI t5, 1
  ADDIW t5, t5, -1184
  ADD t5, t5, sp
  FSW fs2, 32(t5)
  LA s11, .CONSTANT.7.0
  FLW fs2, 0(s11)
  LUI t4, 1
  ADDIW t4, t4, -1184
  ADD t4, t4, sp
  FSW fs2, 36(t4)
  LUI t4, 1
  ADDIW t4, t4, -2020
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t5, 1
  ADDIW t5, t5, -1144
  ADD t5, t5, sp
  ADD s11, t5, t4
  LW s11, 0(s11)
  LW t4, 1328(sp)
  ADDW s11, s11, t4
  LW t4, 1336(sp)
  ADDW s11, s11, t4
  LUI t4, 1
  ADDIW t4, t4, 408
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s10, t4, t3
  LW s10, 0(s10)
  LW t4, 1144(sp)
  ADDW s10, s10, t4
  LW t4, 1088(sp)
  ADDW s10, s10, t4
  LUI t4, 1
  ADDIW t4, t4, 448
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s9, t4, t3
  LW s9, 0(s9)
  LUI t4, 1
  ADDIW t4, t4, 456
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s8, t4, t3
  LW s8, 0(s8)
  ADDW s8, s9, s8
  LW t4, 1488(sp)
  ADDW s8, s8, t4
  LUI t4, 1
  ADDIW t4, t4, -1240
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s9, t4, t3
  LW s9, 0(s9)
  LW t4, 1512(sp)
  ADDW s9, t4, s9
  LUI t4, 1
  ADDIW t4, t4, -1296
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s7, t4, t3
  LW s7, 0(s7)
  ADDW s7, s9, s7
  LUI t4, 1
  ADDIW t4, t4, -1280
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s9, t4, t3
  LW s9, 0(s9)
  LUI t4, 1
  ADDIW t4, t4, -1264
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s6, t4, t3
  LW s6, 0(s6)
  ADDW s6, s9, s6
  LW t4, 1568(sp)
  ADDW s6, s6, t4
  LUI t4, 1
  ADDIW t4, t4, -1224
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s9, t4, t3
  LW s9, 0(s9)
  LUI t4, 1
  ADDIW t4, t4, -1216
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s5, t4, t3
  LW s5, 0(s5)
  ADDW s5, s9, s5
  LW t4, 1356(sp)
  ADDW s5, s5, t4
  LUI t4, 1
  ADDIW t4, t4, -1408
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s9, t4, t3
  LW s9, 0(s9)
  LW t4, 1352(sp)
  ADDW s9, t4, s9
  LW t4, 1164(sp)
  ADDW s9, s9, t4
  LUI t4, 1
  ADDIW t4, t4, -1392
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s4, t4, t3
  LW s4, 0(s4)
  LW t4, 1368(sp)
  ADDW s4, t4, s4
  LUI t4, 1
  ADDIW t4, t4, -1384
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s3, t4, t3
  LW s3, 0(s3)
  ADDW s3, s4, s3
  LUI t4, 1
  ADDIW t4, t4, -1368
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2020
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD s4, t4, t3
  LW s4, 0(s4)
  LW t4, 1384(sp)
  ADDW s4, t4, s4
  LW t4, 1392(sp)
  ADDW s4, s4, t4
  LW t4, 1372(sp)
  ADDW s4, s4, t4
  LUI t5, 1
  ADDIW t5, t5, -1144
  ADD t5, t5, sp
  SW s11, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1144
  ADD t5, t5, sp
  SW s10, 4(t5)
  LUI t5, 1
  ADDIW t5, t5, -1144
  ADD t5, t5, sp
  SW s8, 8(t5)
  LUI t5, 1
  ADDIW t5, t5, -1144
  ADD t5, t5, sp
  SW s7, 12(t5)
  LUI t5, 1
  ADDIW t5, t5, -1144
  ADD t5, t5, sp
  SW s6, 16(t5)
  LUI t5, 1
  ADDIW t5, t5, -1144
  ADD t5, t5, sp
  SW s5, 20(t5)
  LUI t5, 1
  ADDIW t5, t5, -1144
  ADD t5, t5, sp
  SW s9, 24(t5)
  LUI t5, 1
  ADDIW t5, t5, -1144
  ADD t5, t5, sp
  SW s3, 28(t5)
  LUI t4, 1
  ADDIW t4, t4, -1144
  ADD t4, t4, sp
  SW s4, 32(t4)
  LUI t4, 1
  ADDIW t4, t4, -1144
  ADD t4, t4, sp
  SW zero, 36(t4)
  LW t4, 1372(sp)
  BNE t4, zero, bb26
  # implict jump to bb25
bb25:
  FLW ft4, 1380(sp)
  FLW ft3, 1380(sp)
  FSGNJ.S fs0, ft4, ft3
  LW t4, 1328(sp)
  ADD s0, t4, zero
  FLW ft4, 1192(sp)
  FLW ft3, 1192(sp)
  FSGNJ.S fs1, ft4, ft3
  LW t4, 1336(sp)
  ADD s1, t4, zero
  FLW ft3, 1584(sp)
  FLW ft4, 1584(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1448(sp)
  FLW ft3, 1552(sp)
  FLW ft4, 1552(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1444(sp)
  LUI t4, 1
  ADDIW t4, t4, 320
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s2, t4, zero
  LUI t3, 1
  ADDIW t3, t3, 408
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1656
  ADD t3, t3, sp
  SD t4, 0(t3)
  LW t3, 1144(sp)
  ADD t4, t3, zero
  SW t4, 1460(sp)
  LW t3, 1088(sp)
  ADD t4, t3, zero
  SW t4, 1456(sp)
  LUI t3, 1
  ADDIW t3, t3, 440
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1664
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 448
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1672
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 456
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1680
  ADD t3, t3, sp
  SD t4, 0(t3)
  LW t3, 1488(sp)
  ADD t4, t3, zero
  SW t4, 1452(sp)
  LUI t3, 1
  ADDIW t3, t3, 464
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1688
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1208
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1696
  ADD t5, t5, sp
  SD t4, 0(t5)
  FLW ft3, 1132(sp)
  FLW ft4, 1132(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1440(sp)
  FLW ft3, 1156(sp)
  FLW ft4, 1156(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1436(sp)
  FLW ft3, 1540(sp)
  FLW ft4, 1540(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1432(sp)
  LUI t3, 1
  ADDIW t3, t3, -1336
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1464
  ADD t3, t3, sp
  SD t4, 0(t3)
  LW t3, 1512(sp)
  ADD t4, t3, zero
  SW t4, 1468(sp)
  FLW ft3, 1160(sp)
  FLW ft4, 1160(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1428(sp)
  FLW ft3, 1504(sp)
  FLW ft4, 1504(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1424(sp)
  FLW ft3, 1176(sp)
  FLW ft4, 1176(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1420(sp)
  LUI t3, 1
  ADDIW t3, t3, -1240
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1456
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1320
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1448
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1296
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1728
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1280
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1824
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1272
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1816
  ADD t5, t5, sp
  SD t4, 0(t5)
  FLW ft3, 1180(sp)
  FLW ft4, 1180(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1416(sp)
  FLW ft3, 1200(sp)
  FLW ft4, 1200(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1412(sp)
  LUI t3, 1
  ADDIW t3, t3, -1264
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1808
  ADD t3, t3, sp
  SD t4, 0(t3)
  LW t3, 1568(sp)
  ADD t4, t3, zero
  SW t4, 1536(sp)
  LUI t3, 1
  ADDIW t3, t3, -1256
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1800
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, 432
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1792
  ADD t5, t5, sp
  SD t4, 0(t5)
  FLW ft3, 1208(sp)
  FLW ft4, 1208(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1548(sp)
  FLW ft3, 1836(sp)
  FLW ft4, 1836(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1560(sp)
  LUI t3, 1
  ADDIW t3, t3, -1224
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1784
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1216
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1776
  ADD t3, t3, sp
  SD t4, 0(t3)
  LW t3, 1356(sp)
  ADD t4, t3, zero
  SW t4, 1572(sp)
  LW t3, 1352(sp)
  ADD t4, t3, zero
  SW t4, 1576(sp)
  FLW ft3, 1124(sp)
  FLW ft4, 1124(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1580(sp)
  FLW ft3, 1484(sp)
  FLW ft4, 1484(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1404(sp)
  LUI t3, 1
  ADDIW t3, t3, -1408
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1768
  ADD t3, t3, sp
  SD t4, 0(t3)
  LW t3, 1164(sp)
  ADD t4, t3, zero
  SW t4, 1344(sp)
  LUI t3, 1
  ADDIW t3, t3, 336
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1760
  ADD t3, t3, sp
  SD t4, 0(t3)
  LW t3, 1368(sp)
  ADD t4, t3, zero
  SW t4, 1348(sp)
  LUI t3, 1
  ADDIW t3, t3, -1392
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1752
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1384
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1744
  ADD t5, t5, sp
  SD t4, 0(t5)
  FLW ft3, 1492(sp)
  FLW ft4, 1492(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1360(sp)
  FLW ft3, 1496(sp)
  FLW ft4, 1496(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1364(sp)
  LUI t3, 1
  ADDIW t3, t3, -1376
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1736
  ADD t3, t3, sp
  SD t4, 0(t3)
  LW t3, 1384(sp)
  ADD t4, t3, zero
  SW t4, 1376(sp)
  LUI t3, 1
  ADDIW t3, t3, -1368
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1832
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1416
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1720
  ADD t5, t5, sp
  SD t4, 0(t5)
  FLW ft3, 1520(sp)
  FLW ft4, 1520(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1388(sp)
  LW t3, 1392(sp)
  ADD t4, t3, zero
  SW t4, 1396(sp)
  FLW ft3, 1556(sp)
  FLW ft4, 1556(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1400(sp)
  LUI t3, 1
  ADDIW t3, t3, -1440
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1712
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1352
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1704
  ADD t5, t5, sp
  SD t4, 0(t5)
  FLW ft3, 1564(sp)
  FLW ft4, 1564(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 1340(sp)
  LW t3, 1372(sp)
  ADD t4, t3, zero
  SW t4, 1408(sp)
  JAL zero, bb23
bb26:
  LUI t4, 1
  ADDIW t4, t4, -1472
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s0, t4, zero
  # implict jump to bb27
bb27:
  ADDI a0, zero, 10
  LUI a1, 1
  ADDIW a1, a1, -1184
  ADD a1, a1, sp
  ADD a1, a1, zero
  CALL putfarray
  ADDI a0, zero, 10
  LUI a1, 1
  ADDIW a1, a1, -1144
  ADD a1, a1, sp
  ADD a1, a1, zero
  CALL putarray
  ADD s1, zero, zero
  # implict jump to bb28
bb28:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  LUI t5, 1
  ADDIW t5, t5, -1144
  ADD t5, t5, sp
  ADD s4, t5, s3
  LW s5, 0(s4)
  LUI t5, 1
  ADDIW t5, t5, -1184
  ADD t5, t5, sp
  ADD s3, t5, s3
  FLW fs0, 0(s3)
  FCVT.S.W fs1, s5
  FSUB.S fs0, fs1, fs0
  FCVT.W.S s3, fs0, rtz
  SW s3, 0(s4)
  ADDIW s2, s2, 1
  SLTI s3, s2, 10
  BNE s3, zero, bb30
  # implict jump to bb29
bb29:
  LA s3, k
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  LUI t5, 1
  ADDIW t5, t5, -1144
  ADD t5, t5, sp
  ADD s3, t5, s3
  LW s3, 0(s3)
  FLW fs0, 0(s0)
  FCVT.S.W fs1, s3
  FMUL.S fs0, fs1, fs0
  FCVT.W.S s3, fs0, rtz
  FLW ft4, 1100(sp)
  FLW ft3, 1100(sp)
  FSGNJ.S fa0, ft4, ft3
  CALL putfloat
  ADDI a0, zero, 10
  CALL putch
  FLW ft4, 1972(sp)
  FLW ft3, 1972(sp)
  FSGNJ.S fa0, ft4, ft3
  CALL putfloat
  ADDI a0, zero, 10
  CALL putch
  FLW ft4, 1980(sp)
  FLW ft3, 1980(sp)
  FSGNJ.S fa0, ft4, ft3
  CALL putfloat
  ADDI a0, zero, 10
  CALL putch
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1960
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI ra, 1
  ADDIW ra, ra, -1648
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDIW t5, t5, -1192
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -656
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -648
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -640
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -632
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -624
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -136
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -128
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -120
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -112
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -104
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  FLD fs0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -88
  ADD t5, t5, sp
  FLD fs1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -80
  ADD t5, t5, sp
  FLD fs2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -72
  ADD t5, t5, sp
  FLD fs3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -64
  ADD t5, t5, sp
  FLD fs4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -56
  ADD t5, t5, sp
  FLD fs5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -48
  ADD t5, t5, sp
  FLD fs6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -40
  ADD t5, t5, sp
  FLD fs7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -32
  ADD t5, t5, sp
  FLD fs8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -24
  ADD t5, t5, sp
  FLD fs9, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  FLD fs10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -8
  ADD t5, t5, sp
  FLD fs11, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, 640
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb30:
  ADD s1, s2, zero
  JAL zero, bb28
bb31:
  LUI t4, 1
  ADDIW t4, t4, -1472
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s0, t4, zero
  JAL zero, bb27
bb32:
  LW t3, 1524(sp)
  ADD t4, t3, zero
  SW t4, 1516(sp)
  JAL zero, bb16
bb33:
  LW t3, 212(sp)
  ADD t4, t3, zero
  SW t4, 556(sp)
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 564(sp)
  LW t3, 220(sp)
  ADD t4, t3, zero
  SW t4, 584(sp)
  FLW ft3, 1032(sp)
  FLW ft4, 1032(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 664(sp)
  LW t3, 224(sp)
  ADD t4, t3, zero
  SW t4, 588(sp)
  LW t3, 228(sp)
  ADD t4, t3, zero
  SW t4, 604(sp)
  LW t3, 232(sp)
  ADD t4, t3, zero
  SW t4, 648(sp)
  FLW ft3, 1028(sp)
  FLW ft4, 1028(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 668(sp)
  FLW ft3, 1024(sp)
  FLW ft4, 1024(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 672(sp)
  FLW ft3, 920(sp)
  FLW ft4, 920(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 676(sp)
  LW t3, 236(sp)
  ADD t4, t3, zero
  SW t4, 752(sp)
  FLW ft3, 880(sp)
  FLW ft4, 880(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 580(sp)
  FLW ft3, 872(sp)
  FLW ft4, 872(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 548(sp)
  LW t3, 204(sp)
  ADD t4, t3, zero
  SW t4, 772(sp)
  FLW ft3, 864(sp)
  FLW ft4, 864(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 552(sp)
  LW t3, 244(sp)
  ADD t4, t3, zero
  SW t4, 776(sp)
  FLW ft3, 860(sp)
  FLW ft4, 860(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 560(sp)
  FLW ft3, 816(sp)
  FLW ft4, 816(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 568(sp)
  FLW ft3, 848(sp)
  FLW ft4, 848(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 572(sp)
  FLW ft3, 844(sp)
  FLW ft4, 844(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 576(sp)
  FLW ft3, 828(sp)
  FLW ft4, 828(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 544(sp)
  FLW ft3, 248(sp)
  FLW ft4, 248(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 592(sp)
  LW t3, 252(sp)
  ADD t4, t3, zero
  SW t4, 780(sp)
  FLW ft3, 256(sp)
  FLW ft4, 256(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 596(sp)
  LW t3, 260(sp)
  ADD t4, t3, zero
  SW t4, 808(sp)
  LW t3, 264(sp)
  ADD t4, t3, zero
  SW t4, 716(sp)
  FLW ft3, 268(sp)
  FLW ft4, 268(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 600(sp)
  FLW ft3, 172(sp)
  FLW ft4, 172(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 608(sp)
  FLW ft3, 140(sp)
  FLW ft4, 140(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 756(sp)
  FLW ft3, 144(sp)
  FLW ft4, 144(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 760(sp)
  FLW ft3, 148(sp)
  FLW ft4, 148(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 764(sp)
  LW t4, 152(sp)
  ADD s0, t4, zero
  FLW ft3, 156(sp)
  FLW ft4, 156(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 768(sp)
  LW t4, 160(sp)
  ADD s1, t4, zero
  FLW ft3, 164(sp)
  FLW ft4, 164(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 748(sp)
  FLW ft3, 168(sp)
  FLW ft4, 168(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 788(sp)
  FLW ft3, 136(sp)
  FLW ft4, 136(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 792(sp)
  FLW ft3, 176(sp)
  FLW ft4, 176(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 796(sp)
  LW t4, 180(sp)
  ADD s2, t4, zero
  LW t4, 184(sp)
  ADD s3, t4, zero
  FLW ft3, 188(sp)
  FLW ft4, 188(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 800(sp)
  FLW ft3, 192(sp)
  FLW ft4, 192(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 804(sp)
  FLW ft3, 196(sp)
  FLW ft4, 196(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 812(sp)
  LW t4, 200(sp)
  ADD s4, t4, zero
  FLW ft3, 512(sp)
  FLW ft4, 512(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 684(sp)
  LW t4, 888(sp)
  ADD s5, t4, zero
  LW t4, 892(sp)
  ADD s6, t4, zero
  FLW ft4, 896(sp)
  FLW ft3, 896(sp)
  FSGNJ.S fs4, ft4, ft3
  FLW ft4, 900(sp)
  FLW ft3, 900(sp)
  FSGNJ.S fs5, ft4, ft3
  FLW ft4, 904(sp)
  FLW ft3, 904(sp)
  FSGNJ.S fs6, ft4, ft3
  FLW ft4, 908(sp)
  FLW ft3, 908(sp)
  FSGNJ.S fs7, ft4, ft3
  LW t4, 912(sp)
  ADD s7, t4, zero
  LW t4, 916(sp)
  ADD s8, t4, zero
  LW t4, 884(sp)
  ADD s9, t4, zero
  FLW ft4, 924(sp)
  FLW ft3, 924(sp)
  FSGNJ.S fs8, ft4, ft3
  FLW ft4, 928(sp)
  FLW ft3, 928(sp)
  FSGNJ.S fs9, ft4, ft3
  FLW ft4, 932(sp)
  FLW ft3, 932(sp)
  FSGNJ.S fs10, ft4, ft3
  FLW ft4, 936(sp)
  FLW ft3, 936(sp)
  FSGNJ.S fs11, ft4, ft3
  FLW ft4, 940(sp)
  FLW ft3, 940(sp)
  FSGNJ.S fs0, ft4, ft3
  FLW ft4, 944(sp)
  FLW ft3, 944(sp)
  FSGNJ.S fs1, ft4, ft3
  LW t4, 948(sp)
  ADD s10, t4, zero
  FLW ft4, 852(sp)
  FLW ft3, 852(sp)
  FSGNJ.S fs2, ft4, ft3
  LW t4, 824(sp)
  ADD s11, t4, zero
  FLW ft4, 820(sp)
  FLW ft3, 820(sp)
  FSGNJ.S fs3, ft4, ft3
  JAL zero, bb15
bb34:
  FLW ft3, 1800(sp)
  FLW ft4, 1800(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 524(sp)
  FLW ft3, 1804(sp)
  FLW ft4, 1804(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 528(sp)
  FLW ft3, 1808(sp)
  FLW ft4, 1808(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 532(sp)
  FLW ft3, 1812(sp)
  FLW ft4, 1812(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 536(sp)
  FLW ft3, 1816(sp)
  FLW ft4, 1816(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 540(sp)
  FLW ft3, 1820(sp)
  FLW ft4, 1820(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 444(sp)
  FLW ft3, 1824(sp)
  FLW ft4, 1824(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 412(sp)
  FLW ft3, 1828(sp)
  FLW ft4, 1828(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 416(sp)
  FLW ft3, 1832(sp)
  FLW ft4, 1832(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 420(sp)
  FLW ft3, 1652(sp)
  FLW ft4, 1652(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 424(sp)
  FLW ft3, 1592(sp)
  FLW ft4, 1592(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 428(sp)
  FLW ft3, 1596(sp)
  FLW ft4, 1596(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 432(sp)
  FLW ft3, 1600(sp)
  FLW ft4, 1600(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 436(sp)
  LUI t5, 1
  ADDIW t5, t5, -2048
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -2048
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 440(sp)
  LUI t5, 1
  ADDIW t5, t5, -2040
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -2040
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 408(sp)
  LUI t5, 1
  ADDIW t5, t5, -2032
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -2032
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 448(sp)
  LUI t5, 1
  ADDIW t5, t5, -2024
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -2024
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 452(sp)
  FLW ft3, 2004(sp)
  FLW ft4, 2004(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 456(sp)
  FLW ft3, 1976(sp)
  FLW ft4, 1976(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 460(sp)
  FLW ft3, 1984(sp)
  FLW ft4, 1984(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 464(sp)
  FLW ft3, 1992(sp)
  FLW ft4, 1992(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 468(sp)
  FLW ft3, 2000(sp)
  FLW ft4, 2000(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 472(sp)
  FLW ft3, 2008(sp)
  FLW ft4, 2008(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 240(sp)
  FLW ft3, 2016(sp)
  FLW ft4, 2016(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 72(sp)
  FLW ft3, 2024(sp)
  FLW ft4, 2024(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 76(sp)
  FLW ft3, 2032(sp)
  FLW ft4, 2032(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 80(sp)
  FLW ft3, 1968(sp)
  FLW ft4, 1968(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 84(sp)
  FLW ft3, 1704(sp)
  FLW ft4, 1704(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 88(sp)
  FLW ft3, 1696(sp)
  FLW ft4, 1696(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 92(sp)
  FLW ft4, 1688(sp)
  FLW ft3, 1688(sp)
  FSGNJ.S fs8, ft4, ft3
  FLW ft4, 1680(sp)
  FLW ft3, 1680(sp)
  FSGNJ.S fs9, ft4, ft3
  FLW ft4, 1672(sp)
  FLW ft3, 1672(sp)
  FSGNJ.S fs10, ft4, ft3
  FLW ft4, 1664(sp)
  FLW ft3, 1664(sp)
  FSGNJ.S fs11, ft4, ft3
  FLW ft4, 1656(sp)
  FLW ft3, 1656(sp)
  FSGNJ.S fs0, ft4, ft3
  FLW ft4, 1648(sp)
  FLW ft3, 1648(sp)
  FSGNJ.S fs1, ft4, ft3
  FLW ft4, 1640(sp)
  FLW ft3, 1640(sp)
  FSGNJ.S fs2, ft4, ft3
  FLW ft4, 1632(sp)
  FLW ft3, 1632(sp)
  FSGNJ.S fs3, ft4, ft3
  FLW ft4, 1624(sp)
  FLW ft3, 1624(sp)
  FSGNJ.S fs4, ft4, ft3
  FLW ft4, 1616(sp)
  FLW ft3, 1616(sp)
  FSGNJ.S fs5, ft4, ft3
  FLW ft4, 1608(sp)
  FLW ft3, 1608(sp)
  FSGNJ.S fs7, ft4, ft3
  FLW ft4, 1604(sp)
  FLW ft3, 1604(sp)
  FSGNJ.S fs6, ft4, ft3
  JAL zero, bb9
bb35:
  LW t3, 1952(sp)
  ADD t4, t3, zero
  SW t4, 1956(sp)
  JAL zero, bb3
bb36:
  LW t3, 1960(sp)
  ADD t4, t3, zero
  SW t4, 1940(sp)
  JAL zero, bb1
