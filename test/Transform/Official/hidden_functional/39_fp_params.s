.global main
.section .bss


.section .data
k:
.word 0x00000000
.CONSTANT.7.0:
.word 0x00000000
.section .text
main:
  LUI t0, 1048573
  ADDIW t0, t0, 2032
  ADD sp, sp, t0
  LUI t6, 1
  ADDIW t6, t6, 632
  ADD t6, t6, sp
  FSD fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 640
  ADD t6, t6, sp
  FSD fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 648
  ADD t6, t6, sp
  FSD fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 656
  ADD t6, t6, sp
  FSD fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 664
  ADD t6, t6, sp
  FSD fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 672
  ADD t6, t6, sp
  FSD fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 680
  ADD t6, t6, sp
  FSD fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 688
  ADD t6, t6, sp
  FSD fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 696
  ADD t6, t6, sp
  FSD fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 704
  ADD t6, t6, sp
  FSD fs9, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 712
  ADD t6, t6, sp
  FSD fs10, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 720
  ADD t6, t6, sp
  FSD fs11, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 320
  ADD t6, t6, sp
  SD ra, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 328
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 336
  ADD t6, t6, sp
  SD s1, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 344
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SD s9, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 360
  ADD t6, t6, sp
  SD s10, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1984
  ADD t6, t6, sp
  SD s11, 0(t6)
  CALL getint
  LA s0, k
  SW a0, 0(s0)
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADD a0, a0, zero
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 12
  LUI t6, 1
  ADDIW t6, t6, 1504
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1504
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 24
  LUI t6, 1
  ADDIW t6, t6, 1512
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1512
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 36
  LUI t6, 1
  ADDIW t6, t6, 1520
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1520
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 48
  LUI t6, 1
  ADDIW t6, t6, 1528
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1528
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 60
  LUI t6, 1
  ADDIW t6, t6, 1536
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1536
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 72
  LUI t6, 1
  ADDIW t6, t6, 1624
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1624
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 84
  LUI t6, 1
  ADDIW t6, t6, 1872
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1872
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 96
  LUI t6, 1
  ADDIW t6, t6, 1880
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1880
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 108
  LUI t6, 1
  ADDIW t6, t6, 1888
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1888
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 120
  LUI t6, 1
  ADDIW t6, t6, 1896
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1896
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 132
  LUI t6, 1
  ADDIW t6, t6, 1904
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1904
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 144
  LUI t6, 1
  ADDIW t6, t6, 1912
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1912
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 156
  LUI t6, 1
  ADDIW t6, t6, 1920
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1920
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 168
  LUI t6, 1
  ADDIW t6, t6, 1928
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1928
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 180
  LUI t6, 1
  ADDIW t6, t6, 1936
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1936
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 192
  LUI t6, 1
  ADDIW t6, t6, 1864
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1864
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 204
  LUI t6, 1
  ADDIW t6, t6, 1952
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1952
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 216
  LUI t6, 1
  ADDIW t6, t6, 1960
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1960
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 228
  LUI t6, 1
  ADDIW t6, t6, 1968
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1968
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 240
  LUI t6, 1
  ADDIW t6, t6, 1976
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1976
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 252
  LUI t6, 1
  ADDIW t6, t6, 1984
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1984
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 264
  LUI t6, 1
  ADDIW t6, t6, 1992
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1992
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 276
  LUI t6, 1
  ADDIW t6, t6, 2000
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 2000
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 288
  LUI t6, 1
  ADDIW t6, t6, 2008
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 2008
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 300
  LUI t6, 1
  ADDIW t6, t6, 2016
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 2016
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 312
  LUI t6, 1
  ADDIW t6, t6, 1784
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1784
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 324
  LUI t6, 1
  ADDIW t6, t6, 1712
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1712
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 336
  LUI t6, 1
  ADDIW t6, t6, 1720
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1720
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 348
  LUI t6, 1
  ADDIW t6, t6, 1728
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1728
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 360
  LUI t6, 1
  ADDIW t6, t6, 1736
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1736
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 372
  LUI t6, 1
  ADDIW t6, t6, 1744
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1744
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 384
  LUI t6, 1
  ADDIW t6, t6, 1752
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1752
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 396
  LUI t6, 1
  ADDIW t6, t6, 1760
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1760
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 408
  LUI t6, 1
  ADDIW t6, t6, 1768
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1768
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 420
  LUI t6, 1
  ADDIW t6, t6, 1776
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1776
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 432
  LUI t6, 1
  ADDIW t6, t6, 1704
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1704
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 444
  LUI t6, 1
  ADDIW t6, t6, 1792
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1792
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 456
  LUI t6, 1
  ADDIW t6, t6, 1800
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1800
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 1
  ADDIW a0, a0, 2024
  ADD a0, a0, sp
  ADDI a0, a0, 468
  LUI t6, 1
  ADDIW t6, t6, 1808
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1808
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1592
  ADD a0, a0, sp
  ADD a0, a0, zero
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1592
  ADD a0, a0, sp
  ADDI a0, a0, 12
  LUI t6, 1
  ADDIW t6, t6, 1816
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1816
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1592
  ADD a0, a0, sp
  ADDI a0, a0, 24
  LUI t6, 1
  ADDIW t6, t6, 1824
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1824
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1592
  ADD a0, a0, sp
  ADDI a0, a0, 36
  LUI t6, 1
  ADDIW t6, t6, 1832
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1832
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1592
  ADD a0, a0, sp
  ADDI a0, a0, 48
  LUI t6, 1
  ADDIW t6, t6, 1840
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1840
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1592
  ADD a0, a0, sp
  ADDI a0, a0, 60
  LUI t6, 1
  ADDIW t6, t6, 1848
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1848
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1592
  ADD a0, a0, sp
  ADDI a0, a0, 72
  LUI t6, 1
  ADDIW t6, t6, 1856
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1856
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1592
  ADD a0, a0, sp
  ADDI a0, a0, 84
  LUI t6, 1
  ADDIW t6, t6, 1304
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1304
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1592
  ADD a0, a0, sp
  ADDI a0, a0, 96
  LUI t6, 1
  ADDIW t6, t6, 912
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 912
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1592
  ADD a0, a0, sp
  ADDI a0, a0, 108
  LUI t6, 1
  ADDIW t6, t6, 920
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 920
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1592
  ADD a0, a0, sp
  ADDI a0, a0, 120
  LUI t6, 1
  ADDIW t6, t6, 928
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 928
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1592
  ADD a0, a0, sp
  ADDI a0, a0, 132
  LUI t6, 1
  ADDIW t6, t6, 936
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 936
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1592
  ADD a0, a0, sp
  ADDI a0, a0, 144
  LUI t6, 1
  ADDIW t6, t6, 944
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 944
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1592
  ADD a0, a0, sp
  ADDI a0, a0, 156
  LUI t6, 1
  ADDIW t6, t6, 952
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 952
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1592
  ADD a0, a0, sp
  ADDI a0, a0, 168
  LUI t6, 1
  ADDIW t6, t6, 960
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 960
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1592
  ADD a0, a0, sp
  ADDI a0, a0, 180
  LUI t6, 1
  ADDIW t6, t6, 968
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 968
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1592
  ADD a0, a0, sp
  ADDI a0, a0, 192
  LUI t6, 1
  ADDIW t6, t6, 976
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 976
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1592
  ADD a0, a0, sp
  ADDI a0, a0, 204
  LUI t6, 1
  ADDIW t6, t6, 904
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 904
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1592
  ADD a0, a0, sp
  ADDI a0, a0, 216
  LUI t6, 1
  ADDIW t6, t6, 992
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 992
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1592
  ADD a0, a0, sp
  ADDI a0, a0, 228
  LUI t6, 1
  ADDIW t6, t6, 1000
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1000
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1592
  ADD a0, a0, sp
  ADDI a0, a0, 240
  LUI t6, 1
  ADDIW t6, t6, 1008
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1008
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1592
  ADD a0, a0, sp
  ADDI a0, a0, 252
  LUI t6, 1
  ADDIW t6, t6, 1016
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1016
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1592
  ADD a0, a0, sp
  ADDI a0, a0, 264
  LUI t6, 1
  ADDIW t6, t6, 1024
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1024
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1592
  ADD a0, a0, sp
  ADDI a0, a0, 276
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1032
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LA a0, k
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LUI a1, 1
  ADDIW a1, a1, 2024
  ADD a1, a1, sp
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -624
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 1504
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs7, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 1512
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -968
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 1520
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs10, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 1528
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs9, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 1536
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs8, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 1624
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs4, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 1872
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs3, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 1880
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs2, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 1888
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 1896
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -620
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -620
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, -712
  ADD a1, a1, sp
  FSW fs1, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 1904
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -616
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -616
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, -752
  ADD a1, a1, sp
  FSW fs1, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 1912
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -860
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -860
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSW fs1, 980(sp)
  LUI a1, 1
  ADDIW a1, a1, 1920
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -1036
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1036
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSW fs1, 1156(sp)
  LUI a1, 1
  ADDIW a1, a1, 1928
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -1032
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1032
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSW fs1, 204(sp)
  LUI a1, 1
  ADDIW a1, a1, 1936
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -1028
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1028
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSW fs1, 188(sp)
  LUI a1, 1
  ADDIW a1, a1, 1864
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -1024
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1024
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSW fs1, 140(sp)
  LUI a1, 1
  ADDIW a1, a1, 1952
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -1020
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1020
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSW fs1, 492(sp)
  LUI a1, 1
  ADDIW a1, a1, 1960
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -1016
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1016
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSW fs1, 488(sp)
  LUI a1, 1
  ADDIW a1, a1, 1968
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -1012
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1012
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSW fs1, 484(sp)
  LUI a1, 1
  ADDIW a1, a1, 1976
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -1008
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1008
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSW fs1, 440(sp)
  LUI a1, 1
  ADDIW a1, a1, 1984
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -1040
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1040
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSW fs1, 476(sp)
  LUI a1, 1
  ADDIW a1, a1, 1992
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -1000
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1000
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSW fs1, 472(sp)
  LUI a1, 1
  ADDIW a1, a1, 2000
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -996
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -996
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSW fs1, 468(sp)
  LUI a1, 1
  ADDIW a1, a1, 2008
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -992
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -992
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSW fs1, 464(sp)
  LUI a1, 1
  ADDIW a1, a1, 2016
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -988
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -988
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSW fs1, 460(sp)
  LUI a1, 1
  ADDIW a1, a1, 1784
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -984
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -984
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSW fs1, 456(sp)
  LUI a1, 1
  ADDIW a1, a1, 1712
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -980
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -980
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSW fs1, 452(sp)
  LUI a1, 1
  ADDIW a1, a1, 1720
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -976
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -976
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSW fs1, 448(sp)
  LUI a1, 1
  ADDIW a1, a1, 1728
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -972
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -972
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSW fs1, 444(sp)
  LUI a1, 1
  ADDIW a1, a1, 1736
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -1076
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1076
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSW fs1, 480(sp)
  LUI a1, 1
  ADDIW a1, a1, 1744
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSW fs1, 588(sp)
  LUI a1, 1
  ADDIW a1, a1, 1752
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -1108
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1108
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSW fs1, 584(sp)
  LUI a1, 1
  ADDIW a1, a1, 1760
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -1104
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1104
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSW fs1, 580(sp)
  LUI a1, 1
  ADDIW a1, a1, 1768
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -1100
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1100
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSW fs1, 576(sp)
  LUI a1, 1
  ADDIW a1, a1, 1776
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -1096
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1096
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSW fs1, 572(sp)
  LUI a1, 1
  ADDIW a1, a1, 1704
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -1092
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1092
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSW fs1, 568(sp)
  LUI a1, 1
  ADDIW a1, a1, 1792
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -1088
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1088
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSW fs1, 564(sp)
  LUI a1, 1
  ADDIW a1, a1, 1800
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -1084
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1084
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSW fs1, 560(sp)
  LUI a1, 1
  ADDIW a1, a1, 1808
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs1, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1116
  ADD a0, a0, sp
  FSW fs1, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1116
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSW fs1, 516(sp)
  ADDI a0, zero, 0
  FCVT.S.W fs1, a0
  LUI t6, 1
  ADDIW t6, t6, -1068
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1068
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSW fs1, 552(sp)
  FLW fs1, 552(sp)
  LUI t6, 1
  ADDIW t6, t6, -1072
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  FLW fs1, 516(sp)
  LUI t6, 1
  ADDIW t6, t6, -1080
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1080
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1072
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FEQ.S a0, fs1, fs5
  XORI a0, a0, 1
  LUI t6, 1
  ADDIW t6, t6, -624
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs1, fs1, fs7
  LUI t6, 1
  ADDIW t6, t6, -936
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  BNE a0, zero, bb22
  # implict jump to bb1
bb1:
  LUI t6, 1
  ADDIW t6, t6, -936
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -936
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs1, fs1, fs5
  LUI t6, 1
  ADDIW t6, t6, -936
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -936
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1968
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2004
  ADD t6, t6, sp
  FSW fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -968
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -968
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs1, fs1, fs5
  LUI t6, 1
  ADDIW t6, t6, -968
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -968
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1956
  ADD t6, t6, sp
  FSW fs10, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1952
  ADD t6, t6, sp
  FSW fs9, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1948
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1944
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1940
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1936
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1932
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -712
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -712
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1888
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -752
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -752
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1772
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 980(sp)
  FLW fs1, 980(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1768
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1156(sp)
  FLW fs1, 1156(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1764
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 204(sp)
  FLW fs1, 204(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 188(sp)
  FLW fs1, 188(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1756
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 140(sp)
  FLW fs1, 140(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1752
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 492(sp)
  FLW fs1, 492(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1748
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 488(sp)
  FLW fs1, 488(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1744
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 484(sp)
  FLW fs1, 484(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1776
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 440(sp)
  FLW fs1, 440(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1736
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 476(sp)
  FLW fs1, 476(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1732
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 472(sp)
  FLW fs1, 472(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1728
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 468(sp)
  FLW fs1, 468(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1724
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 464(sp)
  FLW fs1, 464(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1720
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 460(sp)
  FLW fs1, 460(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1716
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 456(sp)
  FLW fs1, 456(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1712
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 452(sp)
  FLW fs1, 452(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1708
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 448(sp)
  FLW fs1, 448(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1812
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 444(sp)
  FLW fs1, 444(sp)
  FSGNJ.S fs9, fs0, fs1
  FLW fs0, 480(sp)
  FLW fs1, 480(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 944(sp)
  FLW fs0, 588(sp)
  FLW fs1, 588(sp)
  FSGNJ.S fs1, fs0, fs1
  FLW fs0, 584(sp)
  FLW fs2, 584(sp)
  FSGNJ.S fs0, fs0, fs2
  LUI t6, 1
  ADDIW t6, t6, -1064
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 580(sp)
  FLW fs2, 580(sp)
  FSGNJ.S fs2, fs0, fs2
  FLW fs0, 576(sp)
  FLW fs3, 576(sp)
  FSGNJ.S fs0, fs0, fs3
  LUI t6, 1
  ADDIW t6, t6, -908
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 572(sp)
  FLW fs3, 572(sp)
  FSGNJ.S fs0, fs0, fs3
  FLW fs3, 568(sp)
  FLW fs4, 568(sp)
  FSGNJ.S fs3, fs3, fs4
  FLW fs4, 564(sp)
  FLW fs7, 564(sp)
  FSGNJ.S fs4, fs4, fs7
  LUI t6, 1
  ADDIW t6, t6, -1060
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  FLW fs4, 560(sp)
  FLW fs7, 560(sp)
  FSGNJ.S fs4, fs4, fs7
  LUI t6, 1
  ADDIW t6, t6, -1056
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  FLW fs4, 516(sp)
  FLW fs7, 516(sp)
  FSGNJ.S fs4, fs4, fs7
  # implict jump to bb2
bb2:
  LUI t6, 1
  ADDIW t6, t6, 464
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1056
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1056
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  LUI t6, 1
  ADDIW t6, t6, -1056
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1060
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1060
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  LUI t6, 1
  ADDIW t6, t6, -1060
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -908
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -908
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  LUI t6, 1
  ADDIW t6, t6, -908
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1064
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1064
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  LUI t6, 1
  ADDIW t6, t6, -1064
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  FLW fs4, 944(sp)
  FLW fs6, 944(sp)
  FSGNJ.S fs4, fs4, fs6
  FSW fs4, 1712(sp)
  LUI t6, 1
  ADDIW t6, t6, -1812
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1812
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1708(sp)
  LUI t6, 1
  ADDIW t6, t6, -1708
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1708
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1704(sp)
  LUI t6, 1
  ADDIW t6, t6, -1712
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1712
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1700(sp)
  LUI t6, 1
  ADDIW t6, t6, -1716
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1716
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1696(sp)
  LUI t6, 1
  ADDIW t6, t6, -1720
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1720
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1692(sp)
  LUI t6, 1
  ADDIW t6, t6, -1724
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1724
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1688(sp)
  LUI t6, 1
  ADDIW t6, t6, -1728
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1728
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1644(sp)
  LUI t6, 1
  ADDIW t6, t6, -1732
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1732
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1680(sp)
  LUI t6, 1
  ADDIW t6, t6, -1736
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1736
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1676(sp)
  LUI t6, 1
  ADDIW t6, t6, -1776
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1776
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1672(sp)
  LUI t6, 1
  ADDIW t6, t6, -1744
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1744
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1668(sp)
  LUI t6, 1
  ADDIW t6, t6, -1748
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1748
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1664(sp)
  LUI t6, 1
  ADDIW t6, t6, -1752
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1752
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1660(sp)
  LUI t6, 1
  ADDIW t6, t6, -1756
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1756
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1656(sp)
  LUI t6, 1
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1652(sp)
  LUI t6, 1
  ADDIW t6, t6, -1764
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1764
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1648(sp)
  LUI t6, 1
  ADDIW t6, t6, -1768
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1768
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1684(sp)
  LUI t6, 1
  ADDIW t6, t6, -1772
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1772
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1788(sp)
  LUI t6, 1
  ADDIW t6, t6, -1888
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1888
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1784(sp)
  LUI t6, 1
  ADDIW t6, t6, -1932
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1932
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1780(sp)
  LUI t6, 1
  ADDIW t6, t6, -1936
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1936
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1776(sp)
  LUI t6, 1
  ADDIW t6, t6, -1940
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1940
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1772(sp)
  LUI t6, 1
  ADDIW t6, t6, -1944
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1944
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1768(sp)
  LUI t6, 1
  ADDIW t6, t6, -1948
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1948
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1764(sp)
  LUI t6, 1
  ADDIW t6, t6, -1952
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1952
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1760(sp)
  LUI t6, 1
  ADDIW t6, t6, -1956
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1956
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1720(sp)
  LUI t6, 1
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1752(sp)
  LUI t6, 1
  ADDIW t6, t6, -2004
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2004
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs5, fs4, fs5
  LUI t6, 1
  ADDIW t6, t6, -1968
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1968
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs4, fs4, fs6
  FLW fs6, 1752(sp)
  FADD.S fs4, fs4, fs6
  FLW fs6, 552(sp)
  FEQ.S a0, fs4, fs6
  XORI a0, a0, 1
  FLW fs6, 1752(sp)
  FADD.S fs5, fs5, fs6
  BNE a0, zero, bb4
  # implict jump to bb3
bb3:
  LUI t6, 1
  ADDIW t6, t6, -1968
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1752(sp)
  FLW fs6, 1752(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -2004
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1720(sp)
  FLW fs6, 1720(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1760(sp)
  FLW fs6, 1760(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1956
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1764(sp)
  FLW fs6, 1764(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1952
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1768(sp)
  FLW fs6, 1768(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1948
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1772(sp)
  FLW fs6, 1772(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1944
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1776(sp)
  FLW fs6, 1776(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1940
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1780(sp)
  FLW fs6, 1780(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1936
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1784(sp)
  FLW fs6, 1784(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1932
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1788(sp)
  FLW fs6, 1788(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1888
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1684(sp)
  FLW fs6, 1684(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1772
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1648(sp)
  FLW fs6, 1648(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1768
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1652(sp)
  FLW fs6, 1652(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1764
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1656(sp)
  FLW fs6, 1656(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1660(sp)
  FLW fs6, 1660(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1756
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1664(sp)
  FLW fs6, 1664(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1752
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1668(sp)
  FLW fs6, 1668(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1748
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1672(sp)
  FLW fs6, 1672(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1744
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1676(sp)
  FLW fs6, 1676(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1776
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1680(sp)
  FLW fs6, 1680(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1736
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1644(sp)
  FLW fs6, 1644(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1732
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1688(sp)
  FLW fs6, 1688(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1728
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1692(sp)
  FLW fs6, 1692(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1724
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1696(sp)
  FLW fs6, 1696(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1720
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1700(sp)
  FLW fs6, 1700(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1716
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1704(sp)
  FLW fs6, 1704(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1712
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1708(sp)
  FLW fs6, 1708(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1708
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1812
  ADD t6, t6, sp
  FSW fs9, 0(t6)
  FLW fs5, 1712(sp)
  FLW fs6, 1712(sp)
  FSGNJ.S fs9, fs5, fs6
  FSW fs1, 944(sp)
  LUI t6, 1
  ADDIW t6, t6, -1064
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1064
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs1, fs1, fs5
  LUI t6, 1
  ADDIW t6, t6, -1064
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -908
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -908
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs2, fs2, fs5
  LUI t6, 1
  ADDIW t6, t6, -908
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FSGNJ.S fs0, fs3, fs3
  LUI t6, 1
  ADDIW t6, t6, -1060
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1060
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs3, fs3, fs5
  LUI t6, 1
  ADDIW t6, t6, -1056
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1056
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1060
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 464
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 464
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -928
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -928
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs5, fs7, fs5
  LUI t6, 1
  ADDIW t6, t6, -1056
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  JAL zero, bb2
bb4:
  LUI t6, 1
  ADDIW t6, t6, -1924
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1720(sp)
  FLW fs6, 1720(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1760(sp)
  FLW fs6, 1760(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1916
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1764(sp)
  FLW fs6, 1764(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1912
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1768(sp)
  FLW fs6, 1768(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1908
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1772(sp)
  FLW fs6, 1772(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1904
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1776(sp)
  FLW fs6, 1776(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1900
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1780(sp)
  FLW fs6, 1780(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1896
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1784(sp)
  FLW fs6, 1784(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1892
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1788(sp)
  FLW fs6, 1788(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1928
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1684(sp)
  FLW fs6, 1684(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1884
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1648(sp)
  FLW fs6, 1648(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1880
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1652(sp)
  FLW fs6, 1652(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1876
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1656(sp)
  FLW fs6, 1656(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1872
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1660(sp)
  FLW fs6, 1660(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1868
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1664(sp)
  FLW fs6, 1664(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1864
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1668(sp)
  FLW fs6, 1668(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1860
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1672(sp)
  FLW fs6, 1672(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1856
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1676(sp)
  FLW fs6, 1676(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1964
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1680(sp)
  FLW fs6, 1680(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -2000
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1644(sp)
  FLW fs6, 1644(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1996
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1688(sp)
  FLW fs6, 1688(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1992
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1692(sp)
  FLW fs6, 1692(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1988
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1696(sp)
  FLW fs6, 1696(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1984
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1700(sp)
  FLW fs6, 1700(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1980
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1704(sp)
  FLW fs6, 1704(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1976
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1708(sp)
  FLW fs6, 1708(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1972
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FSW fs9, 1068(sp)
  FLW fs5, 1712(sp)
  FLW fs6, 1712(sp)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 1064(sp)
  LUI t6, 1
  ADDIW t6, t6, -1064
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1064
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1064
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -908
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -908
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -908
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1060
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1060
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1060
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1056
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1056
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1056
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 464
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 464
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -608
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -608
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  # implict jump to bb5
bb5:
  FSW fs4, 1632(sp)
  FSW fs5, 1628(sp)
  LUI t6, 1
  ADDIW t6, t6, -1056
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1056
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  LUI t6, 1
  ADDIW t6, t6, -1056
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1056
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FSW fs4, 1624(sp)
  LUI t6, 1
  ADDIW t6, t6, -1060
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1060
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  LUI t6, 1
  ADDIW t6, t6, -1060
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1060
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FSW fs4, 1620(sp)
  FSW fs3, 1616(sp)
  FSW fs0, 1612(sp)
  LUI t6, 1
  ADDIW t6, t6, -908
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -908
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSGNJ.S fs0, fs0, fs3
  LUI t6, 1
  ADDIW t6, t6, -908
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -908
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FSW fs0, 1568(sp)
  FSW fs2, 1604(sp)
  LUI t6, 1
  ADDIW t6, t6, -1064
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1064
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSGNJ.S fs0, fs0, fs2
  LUI t6, 1
  ADDIW t6, t6, -1064
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1064
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FSW fs0, 1600(sp)
  FSW fs1, 1596(sp)
  FLW fs0, 1064(sp)
  FLW fs1, 1064(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1592(sp)
  FLW fs0, 1068(sp)
  FLW fs1, 1068(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1588(sp)
  LUI t6, 1
  ADDIW t6, t6, -1972
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1972
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1584(sp)
  LUI t6, 1
  ADDIW t6, t6, -1976
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1976
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1580(sp)
  LUI t6, 1
  ADDIW t6, t6, -1980
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1980
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1576(sp)
  LUI t6, 1
  ADDIW t6, t6, -1984
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1984
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1572(sp)
  LUI t6, 1
  ADDIW t6, t6, -1988
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1988
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1852
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1992
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1992
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1808
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1996
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1996
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1804
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2000
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2000
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1800
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1964
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1964
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1796
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1856
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1856
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1792
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1860
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1860
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1788
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1864
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1864
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1912(sp)
  LUI t6, 1
  ADDIW t6, t6, -1868
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1868
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1916(sp)
  LUI t6, 1
  ADDIW t6, t6, -1872
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1872
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1920(sp)
  LUI t6, 1
  ADDIW t6, t6, -1876
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1876
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1924(sp)
  LUI t6, 1
  ADDIW t6, t6, -1880
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1880
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 116
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1884
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1884
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 120
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1928
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1928
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 124
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1892
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1892
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 164
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1896
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1896
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 276
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1900
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1900
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 280
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1904
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1904
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 284
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1908
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1908
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 288
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1912
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1912
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 292
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1916
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1916
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 296
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 300
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1924
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1924
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 304
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 300
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 304
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, 92
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 92
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 296
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 196
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 288
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 292
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, 192
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 192
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 284
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 188
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 188
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 280
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 184
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 164
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 276
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, 180
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 180
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 124
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 176
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 176
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 120
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 172
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1924(sp)
  LUI t6, 1
  ADDIW t6, t6, 116
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, 168
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1920(sp)
  LUI t6, 1
  ADDIW t6, t6, 168
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, 128
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1916(sp)
  LUI t6, 1
  ADDIW t6, t6, 128
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, 160
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1788
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FLW fs1, 1912(sp)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, 156
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1792
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 156
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, 152
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1796
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 152
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs1, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1804
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1800
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FADD.S fs2, fs2, fs0
  LUI t6, 1
  ADDIW t6, t6, -1808
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FADD.S fs2, fs2, fs0
  LUI t6, 1
  ADDIW t6, t6, -1852
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FADD.S fs2, fs2, fs0
  FLW fs0, 1576(sp)
  FLW fs3, 1572(sp)
  FADD.S fs3, fs3, fs0
  FLW fs0, 1580(sp)
  FADD.S fs3, fs3, fs0
  FLW fs0, 1584(sp)
  FADD.S fs3, fs3, fs0
  FLW fs0, 1592(sp)
  FLW fs4, 1588(sp)
  FADD.S fs4, fs4, fs0
  FLW fs0, 1596(sp)
  FADD.S fs0, fs4, fs0
  FLW fs4, 1600(sp)
  FADD.S fs0, fs0, fs4
  FLW fs4, 1568(sp)
  FLW fs5, 1604(sp)
  FADD.S fs4, fs5, fs4
  FLW fs5, 1612(sp)
  FADD.S fs4, fs4, fs5
  FLW fs5, 1616(sp)
  FADD.S fs4, fs4, fs5
  FLW fs5, 1624(sp)
  FLW fs6, 1620(sp)
  FADD.S fs5, fs6, fs5
  FLW fs6, 1628(sp)
  FADD.S fs5, fs5, fs6
  FLW fs6, 1632(sp)
  FADD.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, 196
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1192
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 184
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1192
  ADD t6, t6, sp
  FSW fs6, 4(t6)
  LUI t6, 1
  ADDIW t6, t6, 172
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1192
  ADD t6, t6, sp
  FSW fs6, 8(t6)
  LUI t6, 1
  ADDIW t6, t6, 160
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1192
  ADD t6, t6, sp
  FSW fs6, 12(t6)
  LUI t6, 2
  ADDIW t6, t6, -1192
  ADD t6, t6, sp
  FSW fs1, 16(t6)
  LUI t6, 2
  ADDIW t6, t6, -1192
  ADD t6, t6, sp
  FSW fs2, 20(t6)
  LUI t6, 2
  ADDIW t6, t6, -1192
  ADD t6, t6, sp
  FSW fs3, 24(t6)
  LUI t6, 2
  ADDIW t6, t6, -1192
  ADD t6, t6, sp
  FSW fs0, 28(t6)
  LUI a0, 2
  ADDIW a0, a0, -1192
  ADD a0, a0, sp
  FSW fs4, 32(a0)
  LUI a0, 2
  ADDIW a0, a0, -1192
  ADD a0, a0, sp
  FSW fs5, 36(a0)
  ADDI a0, zero, 10
  LUI a1, 2
  ADDIW a1, a1, -1192
  ADD a1, a1, sp
  ADD a1, a1, zero
  CALL putfarray
  LA a0, k
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  SW a0, 648(sp)
  LW a0, 648(sp)
  LUI t6, 2
  ADDIW t6, t6, -1192
  ADD t6, t6, sp
  ADD a0, t6, a0
  FLW fs0, 0(a0)
  FSW fs0, 1636(sp)
  LUI a0, 1
  ADDIW a0, a0, 1032
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 648(sp)
  ADD a0, a0, a1
  LW a0, 0(a0)
  SW a0, 652(sp)
  LUI a0, 1
  ADDIW a0, a0, 1824
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 648(sp)
  ADD a0, a0, a1
  LW a0, 0(a0)
  SW a0, 656(sp)
  LUI a0, 1
  ADDIW a0, a0, 1856
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 648(sp)
  ADD a0, a0, a1
  LW a0, 0(a0)
  SW a0, 660(sp)
  LUI a0, 1
  ADDIW a0, a0, 1528
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 648(sp)
  ADD a0, a0, a1
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -940
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 1816
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 648(sp)
  ADD a0, a0, a1
  LW a0, 0(a0)
  SW a0, 664(sp)
  LUI a0, 1
  ADDIW a0, a0, 1840
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 648(sp)
  ADD a0, a0, a1
  LW a0, 0(a0)
  SW a0, 708(sp)
  LUI a0, 1
  ADDIW a0, a0, 1848
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 648(sp)
  ADD a0, a0, a1
  LW a0, 0(a0)
  SW a0, 824(sp)
  LUI a0, 1
  ADDIW a0, a0, 1880
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 648(sp)
  ADD a0, a0, a1
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -916
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 1936
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 648(sp)
  ADD a0, a0, a1
  FLW fs7, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 1872
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 648(sp)
  ADD a0, a0, a1
  FLW fs8, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 1024
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 648(sp)
  ADD a0, a0, a1
  LW a0, 0(a0)
  SW a0, 828(sp)
  LUI a0, 1
  ADDIW a0, a0, 1520
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 648(sp)
  ADD a0, a0, a1
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 1720
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 648(sp)
  ADD a0, a0, a1
  FLW fs9, 0(a0)
  LW a0, 648(sp)
  LUI t6, 2
  ADDIW t6, t6, -1592
  ADD t6, t6, sp
  ADD a0, t6, a0
  LW a0, 0(a0)
  SW a0, 832(sp)
  LUI a0, 1
  ADDIW a0, a0, 1792
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 648(sp)
  ADD a0, a0, a1
  FLW fs10, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 1000
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 648(sp)
  ADD a0, a0, a1
  LW a0, 0(a0)
  SW a0, 1876(sp)
  LUI a1, 1
  ADDIW a1, a1, 1736
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 648(sp)
  ADD a1, a1, s0
  FLW fs3, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 1912
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 648(sp)
  ADD a1, a1, s0
  FLW fs4, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 1504
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 648(sp)
  ADD a1, a1, s0
  FLW fs2, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 1904
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 648(sp)
  ADD a1, a1, s0
  FLW fs1, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 1800
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 648(sp)
  ADD a1, a1, s0
  FLW fs5, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -612
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -612
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 144
  ADD a1, a1, sp
  FSW fs5, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 1624
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 648(sp)
  ADD a1, a1, s0
  FLW fs5, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -1052
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1052
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1640(sp)
  LUI a1, 1
  ADDIW a1, a1, 1304
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 648(sp)
  ADD a1, a1, s0
  LW a1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, 1752
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 1952
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1952
  ADD t6, t6, sp
  LD s0, 0(t6)
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -1048
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1048
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1532(sp)
  LUI t6, 1
  ADDIW t6, t6, 928
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 1960
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1960
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s0, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -1700
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 952
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 1968
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1968
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s0, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -1696
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1976
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 1976
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1976
  ADD t6, t6, sp
  LD s0, 0(t6)
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -1044
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1044
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1496(sp)
  LUI t6, 1
  ADDIW t6, t6, 1760
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 1904
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1904
  ADD t6, t6, sp
  LD s0, 0(t6)
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -1004
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1004
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1500(sp)
  LUI t6, 1
  ADDIW t6, t6, 2000
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 1992
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1992
  ADD t6, t6, sp
  LD s0, 0(t6)
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -892
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -892
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1504(sp)
  LUI t6, 1
  ADDIW t6, t6, 1888
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 2000
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 2000
  ADD t6, t6, sp
  LD s0, 0(t6)
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -888
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -888
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1508(sp)
  LUI t6, 1
  ADDIW t6, t6, 2016
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 2008
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 2008
  ADD t6, t6, sp
  LD s0, 0(t6)
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -884
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -884
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1512(sp)
  LUI t6, 1
  ADDIW t6, t6, 912
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 2016
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 2016
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s0, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -1692
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1808
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 2024
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 2024
  ADD t6, t6, sp
  LD s0, 0(t6)
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -880
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -880
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1516(sp)
  LUI t6, 1
  ADDIW t6, t6, 904
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 2032
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 2032
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s0, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -1688
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1984
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 2040
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 2040
  ADD t6, t6, sp
  LD s0, 0(t6)
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -876
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -876
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1520(sp)
  LUI t6, 1
  ADDIW t6, t6, 1864
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 3
  ADDIW t6, t6, -2048
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 3
  ADDIW t6, t6, -2048
  ADD t6, t6, sp
  LD s0, 0(t6)
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -872
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -872
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1524(sp)
  LUI t6, 1
  ADDIW t6, t6, 1536
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 3
  ADDIW t6, t6, -2040
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 3
  ADDIW t6, t6, -2040
  ADD t6, t6, sp
  LD s0, 0(t6)
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -868
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -868
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1528(sp)
  LUI t6, 1
  ADDIW t6, t6, 1768
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 1824
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1824
  ADD t6, t6, sp
  LD s0, 0(t6)
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -864
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -864
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1492(sp)
  LUI t6, 1
  ADDIW t6, t6, 992
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 1752
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1752
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s0, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -1684
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 920
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 1760
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1760
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s0, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -1680
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1928
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 1768
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1768
  ADD t6, t6, sp
  LD s0, 0(t6)
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -896
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -896
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1536(sp)
  LUI t6, 1
  ADDIW t6, t6, 1896
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 1776
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1776
  ADD t6, t6, sp
  LD s0, 0(t6)
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -856
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -856
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1540(sp)
  LW s0, 648(sp)
  LUI t6, 1
  ADDIW t6, t6, 2024
  ADD t6, t6, sp
  ADD s0, t6, s0
  LUI t6, 2
  ADDIW t6, t6, 1784
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1784
  ADD t6, t6, sp
  LD s0, 0(t6)
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -852
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -852
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1544(sp)
  LUI t6, 1
  ADDIW t6, t6, 944
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 1792
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1792
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s0, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -1676
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1744
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 1800
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1800
  ADD t6, t6, sp
  LD s0, 0(t6)
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -848
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -848
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1548(sp)
  LUI t6, 1
  ADDIW t6, t6, 936
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 1808
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1808
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s0, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -1672
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 976
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 1816
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1816
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s0, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -1668
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1712
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 1744
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1744
  ADD t6, t6, sp
  LD s0, 0(t6)
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -844
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -844
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1552(sp)
  LUI t6, 1
  ADDIW t6, t6, 2008
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 1832
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1832
  ADD t6, t6, sp
  LD s0, 0(t6)
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -840
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -840
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1556(sp)
  LUI t6, 1
  ADDIW t6, t6, 1920
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 1840
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1840
  ADD t6, t6, sp
  LD s0, 0(t6)
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -836
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -836
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1560(sp)
  LUI t6, 1
  ADDIW t6, t6, 1728
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 1848
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1848
  ADD t6, t6, sp
  LD s0, 0(t6)
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -832
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -832
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1564(sp)
  LUI t6, 1
  ADDIW t6, t6, 1832
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 1856
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1856
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s0, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -148
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1016
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 1864
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1864
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s0, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -1704
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1008
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 1872
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1872
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s0, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -1660
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1960
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 1880
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1880
  ADD t6, t6, sp
  LD s0, 0(t6)
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -828
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -828
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1608(sp)
  LUI t6, 1
  ADDIW t6, t6, 1968
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 1888
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1888
  ADD t6, t6, sp
  LD s0, 0(t6)
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -932
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -932
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1724(sp)
  LUI t6, 1
  ADDIW t6, t6, 1992
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 1896
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1896
  ADD t6, t6, sp
  LD s0, 0(t6)
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -964
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -964
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1728(sp)
  LUI t6, 1
  ADDIW t6, t6, 1784
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 1344
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1344
  ADD t6, t6, sp
  LD s0, 0(t6)
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -960
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -960
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1732(sp)
  LUI t6, 1
  ADDIW t6, t6, 1704
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 952
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 952
  ADD t6, t6, sp
  LD s0, 0(t6)
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -956
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -956
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1736(sp)
  LUI t6, 1
  ADDIW t6, t6, 1952
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 960
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 960
  ADD t6, t6, sp
  LD s0, 0(t6)
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -952
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -952
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1740(sp)
  LUI t6, 1
  ADDIW t6, t6, 968
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 968
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 968
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s0, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -100
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1512
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 976
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 976
  ADD t6, t6, sp
  LD s0, 0(t6)
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -948
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -948
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1744(sp)
  LUI t6, 1
  ADDIW t6, t6, 960
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 984
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 984
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s0, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -236
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1776
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 648(sp)
  ADD s0, s0, s1
  LUI t6, 2
  ADDIW t6, t6, 992
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 992
  ADD t6, t6, sp
  LD s0, 0(t6)
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -944
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -944
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1748(sp)
  LW s0, 652(sp)
  BNE s0, zero, bb21
  # implict jump to bb6
bb6:
  LW s0, 656(sp)
  LUI t6, 1
  ADDIW t6, t6, -728
  ADD t6, t6, sp
  SW s0, 0(t6)
  LW s0, 660(sp)
  LUI t6, 1
  ADDIW t6, t6, -724
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -940
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -940
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -940
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -940
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1460(sp)
  LW s0, 664(sp)
  LUI t6, 1
  ADDIW t6, t6, -720
  ADD t6, t6, sp
  SW s0, 0(t6)
  LW s0, 708(sp)
  LUI t6, 1
  ADDIW t6, t6, -716
  ADD t6, t6, sp
  SW s0, 0(t6)
  LW s0, 824(sp)
  LUI t6, 1
  ADDIW t6, t6, -748
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -916
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -916
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -916
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -916
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1464(sp)
  FSW fs7, 1468(sp)
  FSW fs8, 1472(sp)
  LW s0, 828(sp)
  LUI t6, 1
  ADDIW t6, t6, -708
  ADD t6, t6, sp
  SW s0, 0(t6)
  FSW fs0, 1476(sp)
  FSW fs9, 1480(sp)
  LW s0, 832(sp)
  LUI a0, 1
  ADDIW a0, a0, -704
  ADD a0, a0, sp
  SW s0, 0(a0)
  FSW fs10, 1484(sp)
  LW a0, 1876(sp)
  SW a0, 1876(sp)
  LW a0, 1876(sp)
  LUI t6, 1
  ADDIW t6, t6, -700
  ADD t6, t6, sp
  SW a0, 0(t6)
  FSW fs3, 1488(sp)
  FSW fs4, 1384(sp)
  FSW fs2, 1348(sp)
  FSW fs1, 1352(sp)
  LUI t6, 1
  ADDIW t6, t6, 144
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 144
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1356(sp)
  FLW fs0, 1640(sp)
  FLW fs1, 1640(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1360(sp)
  LUI t6, 1
  ADDIW t6, t6, -696
  ADD t6, t6, sp
  SW a1, 0(t6)
  FLW fs0, 1532(sp)
  FLW fs1, 1532(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1364(sp)
  LUI a0, 1
  ADDIW a0, a0, -1700
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -692
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1696
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -336
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1496(sp)
  FLW fs1, 1496(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1368(sp)
  FLW fs0, 1500(sp)
  FLW fs1, 1500(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1372(sp)
  FLW fs0, 1504(sp)
  FLW fs1, 1504(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1376(sp)
  FLW fs0, 1508(sp)
  FLW fs1, 1508(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1380(sp)
  FLW fs0, 1512(sp)
  FLW fs1, 1512(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1344(sp)
  LUI a0, 1
  ADDIW a0, a0, -1692
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -332
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1516(sp)
  FLW fs1, 1516(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1388(sp)
  LUI a0, 1
  ADDIW a0, a0, -1688
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -328
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1520(sp)
  FLW fs1, 1520(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1392(sp)
  FLW fs0, 1524(sp)
  FLW fs1, 1524(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1396(sp)
  FLW fs0, 1528(sp)
  FLW fs1, 1528(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1400(sp)
  FLW fs0, 1492(sp)
  FLW fs1, 1492(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1404(sp)
  LUI a0, 1
  ADDIW a0, a0, -1684
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -324
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1680
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -320
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1536(sp)
  FLW fs1, 1536(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1408(sp)
  FLW fs0, 1540(sp)
  FLW fs1, 1540(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1412(sp)
  FLW fs0, 1544(sp)
  FLW fs1, 1544(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1416(sp)
  LUI a0, 1
  ADDIW a0, a0, -1676
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -316
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1548(sp)
  FLW fs1, 1548(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1756(sp)
  LUI a0, 1
  ADDIW a0, a0, -1672
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 420
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1668
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 308
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1552(sp)
  FLW fs1, 1552(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 612(sp)
  FLW fs0, 1556(sp)
  FLW fs1, 1556(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 608(sp)
  FLW fs0, 1560(sp)
  FLW fs1, 1560(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 604(sp)
  FLW fs0, 1564(sp)
  FLW fs1, 1564(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 600(sp)
  LUI a0, 1
  ADDIW a0, a0, -148
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 424
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1704
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 428
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1660
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 432
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1608(sp)
  FLW fs1, 1608(sp)
  FSGNJ.S fs2, fs0, fs1
  FLW fs0, 1724(sp)
  FLW fs1, 1724(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 596(sp)
  FLW fs0, 1728(sp)
  FLW fs1, 1728(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 632(sp)
  FLW fs0, 1732(sp)
  FLW fs1, 1732(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 740(sp)
  FLW fs0, 1736(sp)
  FLW fs1, 1736(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 736(sp)
  FLW fs0, 1740(sp)
  FLW fs1, 1740(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 732(sp)
  LUI a0, 1
  ADDIW a0, a0, -100
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 436
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1744(sp)
  FLW fs1, 1744(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 728(sp)
  LUI a0, 1
  ADDIW a0, a0, -236
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 440
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1748(sp)
  FLW fs1, 1748(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 724(sp)
  # implict jump to bb7
bb7:
  FLW fs0, 724(sp)
  FLW fs1, 724(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -1164
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 440
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1276
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 728(sp)
  FLW fs1, 728(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 2036(sp)
  LUI a0, 1
  ADDIW a0, a0, 436
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1280
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 732(sp)
  FLW fs1, 732(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 2040(sp)
  FLW fs0, 736(sp)
  FLW fs1, 736(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -2048
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 740(sp)
  FLW fs1, 740(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1148
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 632(sp)
  FLW fs1, 632(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1144
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 596(sp)
  FLW fs1, 596(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 2020(sp)
  LUI a0, 1
  ADDIW a0, a0, -1136
  ADD a0, a0, sp
  FSW fs2, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 432
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1284
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 428
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1288
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 424
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1292
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 600(sp)
  FLW fs1, 600(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -2036
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 604(sp)
  FLW fs1, 604(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -2032
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 608(sp)
  FLW fs1, 608(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -2028
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 612(sp)
  FLW fs1, 612(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -2024
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 308
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1332
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 420
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1300
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1756(sp)
  FLW fs1, 1756(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -2020
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -316
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1304
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1416(sp)
  FLW fs1, 1416(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -2016
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1412(sp)
  FLW fs1, 1412(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -2012
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1408(sp)
  FLW fs1, 1408(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -1252
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -320
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1308
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -324
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 248(sp)
  FLW fs0, 1404(sp)
  FLW fs1, 1404(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1248
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1400(sp)
  FLW fs1, 1400(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1244
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1396(sp)
  FLW fs1, 1396(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1240
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1392(sp)
  FLW fs1, 1392(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -1236
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -328
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 244(sp)
  FLW fs0, 1388(sp)
  FLW fs1, 1388(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -2008
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -332
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 240(sp)
  FLW fs0, 1344(sp)
  FLW fs1, 1344(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1984(sp)
  FLW fs0, 1380(sp)
  FLW fs1, 1380(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1952(sp)
  FLW fs0, 1376(sp)
  FLW fs1, 1376(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1956(sp)
  FLW fs0, 1372(sp)
  FLW fs1, 1372(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1960(sp)
  FLW fs0, 1368(sp)
  FLW fs1, 1368(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1964(sp)
  LUI a0, 1
  ADDIW a0, a0, -336
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 236(sp)
  LUI a0, 1
  ADDIW a0, a0, -692
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 232(sp)
  FLW fs0, 1364(sp)
  FLW fs1, 1364(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1976(sp)
  LUI a0, 1
  ADDIW a0, a0, -696
  ADD a0, a0, sp
  LW a0, 0(a0)
  FLW fs0, 1360(sp)
  FLW fs1, 1360(sp)
  FSGNJ.S fs2, fs0, fs1
  FLW fs0, 1356(sp)
  FLW fs1, 1356(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1944(sp)
  FLW fs0, 1352(sp)
  FLW fs1, 1352(sp)
  FSGNJ.S fs1, fs0, fs1
  FLW fs0, 1348(sp)
  FLW fs3, 1348(sp)
  FSGNJ.S fs0, fs0, fs3
  FSW fs0, 1988(sp)
  FLW fs0, 1384(sp)
  FLW fs3, 1384(sp)
  FSGNJ.S fs0, fs0, fs3
  FSW fs0, 1992(sp)
  FLW fs0, 1488(sp)
  FLW fs3, 1488(sp)
  FSGNJ.S fs0, fs0, fs3
  FSW fs0, 1996(sp)
  LUI a1, 1
  ADDIW a1, a1, -700
  ADD a1, a1, sp
  LW a1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -1784
  ADD t6, t6, sp
  SW a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, -1784
  ADD a1, a1, sp
  LW a1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -1784
  ADD t6, t6, sp
  SW a1, 0(t6)
  FLW fs0, 1484(sp)
  FLW fs3, 1484(sp)
  FSGNJ.S fs0, fs0, fs3
  FSW fs0, 2004(sp)
  LUI a1, 1
  ADDIW a1, a1, -704
  ADD a1, a1, sp
  LW a1, 0(a1)
  SW a1, 228(sp)
  FLW fs0, 1480(sp)
  FLW fs3, 1480(sp)
  FSGNJ.S fs0, fs0, fs3
  FSW fs0, 2008(sp)
  FLW fs0, 1476(sp)
  FLW fs3, 1476(sp)
  FSGNJ.S fs0, fs0, fs3
  LUI a1, 1
  ADDIW a1, a1, -708
  ADD a1, a1, sp
  LW a1, 0(a1)
  SW a1, 224(sp)
  FLW fs3, 1472(sp)
  FLW fs4, 1472(sp)
  FSGNJ.S fs3, fs3, fs4
  FSW fs3, 2016(sp)
  FLW fs3, 1468(sp)
  FLW fs4, 1468(sp)
  FSGNJ.S fs3, fs3, fs4
  LUI t6, 1
  ADDIW t6, t6, -1740
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  FLW fs3, 1464(sp)
  FLW fs4, 1464(sp)
  FSGNJ.S fs3, fs3, fs4
  FSW fs3, 424(sp)
  LUI a1, 1
  ADDIW a1, a1, -748
  ADD a1, a1, sp
  LW a1, 0(a1)
  SW a1, 132(sp)
  LUI a1, 1
  ADDIW a1, a1, -716
  ADD a1, a1, sp
  LW a1, 0(a1)
  SW a1, 252(sp)
  LUI a1, 1
  ADDIW a1, a1, -720
  ADD a1, a1, sp
  LW a1, 0(a1)
  SW a1, 44(sp)
  FLW fs3, 1460(sp)
  FLW fs4, 1460(sp)
  FSGNJ.S fs3, fs3, fs4
  FSW fs3, 432(sp)
  LUI a1, 1
  ADDIW a1, a1, -724
  ADD a1, a1, sp
  LW a1, 0(a1)
  SW a1, 64(sp)
  LUI a1, 1
  ADDIW a1, a1, -728
  ADD a1, a1, sp
  LW a1, 0(a1)
  SW a1, 60(sp)
  # implict jump to bb8
bb8:
  LW a1, 44(sp)
  BNE a1, zero, bb10
  # implict jump to bb9
bb9:
  LW a1, 60(sp)
  LUI t6, 1
  ADDIW t6, t6, -728
  ADD t6, t6, sp
  SW a1, 0(t6)
  LW a1, 64(sp)
  LUI t6, 1
  ADDIW t6, t6, -724
  ADD t6, t6, sp
  SW a1, 0(t6)
  FLW fs3, 432(sp)
  FLW fs4, 432(sp)
  FSGNJ.S fs3, fs3, fs4
  FSW fs3, 1460(sp)
  LW a1, 44(sp)
  LUI t6, 1
  ADDIW t6, t6, -720
  ADD t6, t6, sp
  SW a1, 0(t6)
  LW a1, 252(sp)
  LUI t6, 1
  ADDIW t6, t6, -716
  ADD t6, t6, sp
  SW a1, 0(t6)
  LW a1, 132(sp)
  LUI t6, 1
  ADDIW t6, t6, -748
  ADD t6, t6, sp
  SW a1, 0(t6)
  FLW fs3, 424(sp)
  FLW fs4, 424(sp)
  FSGNJ.S fs3, fs3, fs4
  FSW fs3, 1464(sp)
  LUI t6, 1
  ADDIW t6, t6, -1740
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1740
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FSGNJ.S fs3, fs3, fs4
  FSW fs3, 1468(sp)
  FLW fs3, 2016(sp)
  FLW fs4, 2016(sp)
  FSGNJ.S fs3, fs3, fs4
  FSW fs3, 1472(sp)
  LW a1, 224(sp)
  LUI t6, 1
  ADDIW t6, t6, -708
  ADD t6, t6, sp
  SW a1, 0(t6)
  FSW fs0, 1476(sp)
  FLW fs0, 2008(sp)
  FLW fs3, 2008(sp)
  FSGNJ.S fs0, fs0, fs3
  FSW fs0, 1480(sp)
  LW a1, 228(sp)
  LUI t6, 1
  ADDIW t6, t6, -704
  ADD t6, t6, sp
  SW a1, 0(t6)
  FLW fs0, 2004(sp)
  FLW fs3, 2004(sp)
  FSGNJ.S fs0, fs0, fs3
  FSW fs0, 1484(sp)
  LUI a1, 1
  ADDIW a1, a1, -1784
  ADD a1, a1, sp
  LW a1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -1784
  ADD t6, t6, sp
  SW a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, -1784
  ADD a1, a1, sp
  LW a1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -700
  ADD t6, t6, sp
  SW a1, 0(t6)
  FLW fs0, 1996(sp)
  FLW fs3, 1996(sp)
  FSGNJ.S fs0, fs0, fs3
  FSW fs0, 1488(sp)
  FLW fs0, 1992(sp)
  FLW fs3, 1992(sp)
  FSGNJ.S fs0, fs0, fs3
  FSW fs0, 1384(sp)
  FLW fs0, 1988(sp)
  FLW fs3, 1988(sp)
  FSGNJ.S fs0, fs0, fs3
  FSW fs0, 1348(sp)
  FSW fs1, 1352(sp)
  FLW fs0, 1944(sp)
  FLW fs1, 1944(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1356(sp)
  FSW fs2, 1360(sp)
  LUI t6, 1
  ADDIW t6, t6, -696
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1976(sp)
  FLW fs1, 1976(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1364(sp)
  LW a0, 232(sp)
  LUI t6, 1
  ADDIW t6, t6, -692
  ADD t6, t6, sp
  SW a0, 0(t6)
  LW a0, 236(sp)
  LUI t6, 1
  ADDIW t6, t6, -336
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1964(sp)
  FLW fs1, 1964(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1368(sp)
  FLW fs0, 1960(sp)
  FLW fs1, 1960(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1372(sp)
  FLW fs0, 1956(sp)
  FLW fs1, 1956(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1376(sp)
  FLW fs0, 1952(sp)
  FLW fs1, 1952(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1380(sp)
  FLW fs0, 1984(sp)
  FLW fs1, 1984(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1344(sp)
  LW a0, 240(sp)
  LUI t6, 1
  ADDIW t6, t6, -332
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2008
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2008
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1388(sp)
  LW a0, 244(sp)
  LUI t6, 1
  ADDIW t6, t6, -328
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1236
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1236
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1392(sp)
  LUI t6, 1
  ADDIW t6, t6, -1240
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1240
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1396(sp)
  LUI t6, 1
  ADDIW t6, t6, -1244
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1244
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1400(sp)
  LUI t6, 1
  ADDIW t6, t6, -1248
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1248
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1404(sp)
  LW a0, 248(sp)
  LUI t6, 1
  ADDIW t6, t6, -324
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1308
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -320
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1252
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1252
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1408(sp)
  LUI t6, 1
  ADDIW t6, t6, -2012
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2012
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1412(sp)
  LUI t6, 1
  ADDIW t6, t6, -2016
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2016
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1416(sp)
  LUI a0, 1
  ADDIW a0, a0, -1304
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -316
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2020
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2020
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1756(sp)
  LUI a0, 1
  ADDIW a0, a0, -1300
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 420
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1332
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 308
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2024
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2024
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 612(sp)
  LUI t6, 1
  ADDIW t6, t6, -2028
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2028
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 608(sp)
  LUI t6, 1
  ADDIW t6, t6, -2032
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2032
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 604(sp)
  LUI t6, 1
  ADDIW t6, t6, -2036
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2036
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 600(sp)
  LUI a0, 1
  ADDIW a0, a0, -1292
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 424
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1288
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 428
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1284
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 432
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1136
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1136
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs2, fs0, fs1
  FLW fs0, 2020(sp)
  FLW fs1, 2020(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 596(sp)
  LUI t6, 1
  ADDIW t6, t6, -1144
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1144
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 632(sp)
  LUI t6, 1
  ADDIW t6, t6, -1148
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1148
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 740(sp)
  LUI t6, 1
  ADDIW t6, t6, -2048
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2048
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 736(sp)
  FLW fs0, 2040(sp)
  FLW fs1, 2040(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 732(sp)
  LUI a0, 1
  ADDIW a0, a0, -1280
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 436
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 2036(sp)
  FLW fs1, 2036(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 728(sp)
  LUI a0, 1
  ADDIW a0, a0, -1276
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 440
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1164
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1164
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 724(sp)
  JAL zero, bb7
bb10:
  LW a1, 44(sp)
  LUI t6, 1
  ADDIW t6, t6, -1508
  ADD t6, t6, sp
  SW a1, 0(t6)
  LW a1, 60(sp)
  LUI t6, 1
  ADDIW t6, t6, -1504
  ADD t6, t6, sp
  SW a1, 0(t6)
  LW a1, 64(sp)
  LUI t6, 1
  ADDIW t6, t6, -1500
  ADD t6, t6, sp
  SW a1, 0(t6)
  FLW fs3, 432(sp)
  FLW fs4, 432(sp)
  FSGNJ.S fs3, fs3, fs4
  FSW fs3, 1232(sp)
  LW a1, 44(sp)
  LUI t6, 1
  ADDIW t6, t6, -1496
  ADD t6, t6, sp
  SW a1, 0(t6)
  LW a1, 252(sp)
  LUI t6, 1
  ADDIW t6, t6, -1492
  ADD t6, t6, sp
  SW a1, 0(t6)
  LW a1, 132(sp)
  LUI t6, 1
  ADDIW t6, t6, -1488
  ADD t6, t6, sp
  SW a1, 0(t6)
  FLW fs3, 424(sp)
  FLW fs4, 424(sp)
  FSGNJ.S fs3, fs3, fs4
  FSW fs3, 1196(sp)
  LUI t6, 1
  ADDIW t6, t6, -1740
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1740
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FSGNJ.S fs3, fs3, fs4
  FSW fs3, 1200(sp)
  FLW fs3, 2016(sp)
  FLW fs4, 2016(sp)
  FSGNJ.S fs3, fs3, fs4
  FSW fs3, 1204(sp)
  LW a1, 224(sp)
  LUI t6, 1
  ADDIW t6, t6, -1484
  ADD t6, t6, sp
  SW a1, 0(t6)
  FSW fs0, 1208(sp)
  FLW fs0, 2008(sp)
  FLW fs3, 2008(sp)
  FSGNJ.S fs0, fs0, fs3
  FSW fs0, 1212(sp)
  LW a1, 228(sp)
  LUI t6, 1
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SW a1, 0(t6)
  FLW fs0, 2004(sp)
  FLW fs3, 2004(sp)
  FSGNJ.S fs0, fs0, fs3
  FSW fs0, 1216(sp)
  LUI a1, 1
  ADDIW a1, a1, -1784
  ADD a1, a1, sp
  LW a1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -1784
  ADD t6, t6, sp
  SW a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, -1784
  ADD a1, a1, sp
  LW a1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -744
  ADD t6, t6, sp
  SW a1, 0(t6)
  FLW fs0, 1996(sp)
  FLW fs3, 1996(sp)
  FSGNJ.S fs0, fs0, fs3
  FSW fs0, 1220(sp)
  FLW fs0, 1992(sp)
  FLW fs3, 1992(sp)
  FSGNJ.S fs0, fs0, fs3
  FSW fs0, 1224(sp)
  FLW fs0, 1988(sp)
  FLW fs3, 1988(sp)
  FSGNJ.S fs0, fs0, fs3
  FSW fs0, 1228(sp)
  FSW fs1, 1192(sp)
  FLW fs0, 1944(sp)
  FLW fs1, 1944(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1236(sp)
  FSW fs2, 1240(sp)
  LUI t6, 1
  ADDIW t6, t6, -740
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1976(sp)
  FLW fs1, 1976(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1244(sp)
  LW a0, 232(sp)
  LUI t6, 1
  ADDIW t6, t6, -736
  ADD t6, t6, sp
  SW a0, 0(t6)
  LW a0, 236(sp)
  LUI t6, 1
  ADDIW t6, t6, -732
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1964(sp)
  FLW fs1, 1964(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1248(sp)
  FLW fs0, 1960(sp)
  FLW fs1, 1960(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1252(sp)
  FLW fs0, 1956(sp)
  FLW fs1, 1956(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1256(sp)
  FLW fs0, 1952(sp)
  FLW fs1, 1952(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1260(sp)
  FLW fs0, 1984(sp)
  FLW fs1, 1984(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1264(sp)
  LW a0, 240(sp)
  LUI t6, 1
  ADDIW t6, t6, -272
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2008
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2008
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1308(sp)
  LW a0, 244(sp)
  LUI t6, 1
  ADDIW t6, t6, -268
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1236
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1236
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1424(sp)
  LUI t6, 1
  ADDIW t6, t6, -1240
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1240
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1428(sp)
  LUI t6, 1
  ADDIW t6, t6, -1244
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1244
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1432(sp)
  LUI t6, 1
  ADDIW t6, t6, -1248
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1248
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1436(sp)
  LW a0, 248(sp)
  LUI t6, 1
  ADDIW t6, t6, -264
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1308
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -260
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1252
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1252
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1440(sp)
  LUI t6, 1
  ADDIW t6, t6, -2012
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2012
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1444(sp)
  LUI t6, 1
  ADDIW t6, t6, -2016
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2016
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1448(sp)
  LUI a0, 1
  ADDIW a0, a0, -1304
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -256
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2020
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2020
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1452(sp)
  LUI a0, 1
  ADDIW a0, a0, -1300
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -252
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1332
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -248
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2024
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2024
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1420(sp)
  LUI t6, 1
  ADDIW t6, t6, -2028
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2028
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -2032
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2032
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSGNJ.S fs1, fs1, fs2
  LUI t6, 1
  ADDIW t6, t6, -2036
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2036
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSGNJ.S fs2, fs2, fs3
  LUI a0, 1
  ADDIW a0, a0, -1292
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -244
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1288
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -348
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1284
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -380
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1136
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1136
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FSGNJ.S fs3, fs3, fs4
  FLW fs4, 2020(sp)
  FLW fs5, 2020(sp)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 764(sp)
  LUI t6, 1
  ADDIW t6, t6, -1144
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1144
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  LUI t6, 1
  ADDIW t6, t6, -1148
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1148
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -2048
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2048
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  FSGNJ.S fs6, fs6, fs7
  FSW fs6, 760(sp)
  FLW fs6, 2040(sp)
  FLW fs7, 2040(sp)
  FSGNJ.S fs6, fs6, fs7
  FSW fs6, 756(sp)
  LUI a0, 1
  ADDIW a0, a0, -1280
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -376
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs6, 2036(sp)
  FLW fs7, 2036(sp)
  FSGNJ.S fs6, fs6, fs7
  FSW fs6, 752(sp)
  LUI a0, 1
  ADDIW a0, a0, -1276
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -372
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1164
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1164
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  FSGNJ.S fs6, fs6, fs7
  # implict jump to bb11
bb11:
  FSW fs6, 328(sp)
  LUI a0, 1
  ADDIW a0, a0, -372
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1316
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs6, 752(sp)
  FLW fs7, 752(sp)
  FSGNJ.S fs6, fs6, fs7
  FSW fs6, 292(sp)
  LUI a0, 1
  ADDIW a0, a0, -376
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1320
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs6, 756(sp)
  FLW fs7, 756(sp)
  FSGNJ.S fs6, fs6, fs7
  FSW fs6, 296(sp)
  FLW fs6, 760(sp)
  FLW fs7, 760(sp)
  FSGNJ.S fs6, fs6, fs7
  FSW fs6, 300(sp)
  FSW fs5, 304(sp)
  FSW fs4, 308(sp)
  FLW fs4, 764(sp)
  FLW fs5, 764(sp)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 312(sp)
  FSW fs3, 316(sp)
  LUI a0, 1
  ADDIW a0, a0, -380
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1324
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -348
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1328
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -244
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 268
  ADD t6, t6, sp
  SW a0, 0(t6)
  FSW fs2, 320(sp)
  FSW fs1, 324(sp)
  FSW fs0, 288(sp)
  FLW fs0, 1420(sp)
  FLW fs1, 1420(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 332(sp)
  LUI a0, 1
  ADDIW a0, a0, -248
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 16
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -252
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 264
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1452(sp)
  FLW fs1, 1452(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 336(sp)
  LUI a0, 1
  ADDIW a0, a0, -256
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 260
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1448(sp)
  FLW fs1, 1448(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 340(sp)
  FLW fs0, 1444(sp)
  FLW fs1, 1444(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 344(sp)
  FLW fs0, 1440(sp)
  FLW fs1, 1440(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 348(sp)
  LUI a0, 1
  ADDIW a0, a0, -260
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 256
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -264
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 252
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1436(sp)
  FLW fs1, 1436(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 352(sp)
  FLW fs0, 1432(sp)
  FLW fs1, 1432(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 356(sp)
  FLW fs0, 1428(sp)
  FLW fs1, 1428(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 360(sp)
  FLW fs0, 1424(sp)
  FLW fs1, 1424(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 404(sp)
  LUI a0, 1
  ADDIW a0, a0, -268
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 92(sp)
  FLW fs0, 1308(sp)
  FLW fs1, 1308(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 520(sp)
  LUI a0, 1
  ADDIW a0, a0, -272
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 88(sp)
  FLW fs0, 1264(sp)
  FLW fs1, 1264(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 524(sp)
  FLW fs0, 1260(sp)
  FLW fs1, 1260(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1636
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1256(sp)
  FLW fs1, 1256(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1592
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1252(sp)
  FLW fs1, 1252(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 528(sp)
  FLW fs0, 1248(sp)
  FLW fs1, 1248(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -1476
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -732
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 1892(sp)
  LW a0, 1892(sp)
  SW a0, 1892(sp)
  LUI a1, 1
  ADDIW a1, a1, -736
  ADD a1, a1, sp
  LW a1, 0(a1)
  FLW fs0, 1244(sp)
  FLW fs1, 1244(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 532(sp)
  LUI a0, 1
  ADDIW a0, a0, -740
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 84(sp)
  FLW fs0, 1240(sp)
  FLW fs1, 1240(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1464
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1236(sp)
  FLW fs1, 1236(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 536(sp)
  FLW fs0, 1192(sp)
  FLW fs1, 1192(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 540(sp)
  FLW fs0, 1228(sp)
  FLW fs1, 1228(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1452
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1224(sp)
  FLW fs1, 1224(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1448
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1220(sp)
  FLW fs1, 1220(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -1480
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -744
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 80(sp)
  FLW fs0, 1216(sp)
  FLW fs1, 1216(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 544(sp)
  LUI a0, 1
  ADDIW a0, a0, -1152
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 76(sp)
  FLW fs0, 1212(sp)
  FLW fs1, 1212(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1432
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1208(sp)
  FLW fs1, 1208(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -1428
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1484
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 72(sp)
  FLW fs0, 1204(sp)
  FLW fs1, 1204(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 548(sp)
  FLW fs0, 1200(sp)
  FLW fs1, 1200(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1412
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1196(sp)
  FLW fs1, 1196(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -1552
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1488
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 220(sp)
  LUI a0, 1
  ADDIW a0, a0, -1492
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 512(sp)
  LUI a0, 1
  ADDIW a0, a0, -1496
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 508(sp)
  FLW fs0, 1232(sp)
  FLW fs1, 1232(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -1544
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1500
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 504(sp)
  LUI a0, 1
  ADDIW a0, a0, -1504
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 500(sp)
  LUI a0, 1
  ADDIW a0, a0, -1508
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 496(sp)
  FLW fs0, 340(sp)
  LUI t6, 1
  ADDIW t6, t6, -1452
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1608
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 292(sp)
  LUI t6, 1
  ADDIW t6, t6, -1608
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1612
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1612
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1428
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1616
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 356(sp)
  LUI t6, 1
  ADDIW t6, t6, -1544
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1620
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1620
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1464
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1624
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 548(sp)
  LUI t6, 1
  ADDIW t6, t6, -1624
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1444
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1636
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1552
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1192
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 344(sp)
  LUI t6, 1
  ADDIW t6, t6, -1192
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs9, fs1, fs0
  FLW fs0, 540(sp)
  FADD.S fs9, fs9, fs0
  FLW fs0, 324(sp)
  LUI t6, 1
  ADDIW t6, t6, -1448
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs1, fs1, fs0
  FLW fs0, 348(sp)
  FADD.S fs1, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1412
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FADD.S fs1, fs1, fs0
  FLW fs0, 296(sp)
  FLW fs2, 360(sp)
  FADD.S fs8, fs2, fs0
  FLW fs0, 316(sp)
  FADD.S fs8, fs8, fs0
  FLW fs0, 312(sp)
  FADD.S fs8, fs8, fs0
  FLW fs0, 404(sp)
  LUI t6, 1
  ADDIW t6, t6, -1476
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FADD.S fs6, fs2, fs0
  FLW fs0, 308(sp)
  FADD.S fs6, fs6, fs0
  LUI t6, 1
  ADDIW t6, t6, -1592
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FADD.S fs6, fs6, fs0
  FLW fs0, 288(sp)
  FLW fs2, 524(sp)
  FADD.S fs0, fs0, fs2
  FLW fs2, 304(sp)
  FADD.S fs0, fs0, fs2
  FLW fs2, 332(sp)
  FADD.S fs0, fs0, fs2
  FLW fs2, 320(sp)
  LUI t6, 1
  ADDIW t6, t6, -1432
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs3, fs2
  LUI t6, 1
  ADDIW t6, t6, -1480
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs2, fs3
  FLW fs3, 336(sp)
  FADD.S fs2, fs2, fs3
  FLW fs3, 528(sp)
  FLW fs4, 532(sp)
  FADD.S fs3, fs4, fs3
  FLW fs4, 352(sp)
  FADD.S fs3, fs3, fs4
  FLW fs4, 328(sp)
  FADD.S fs3, fs3, fs4
  FLW fs4, 300(sp)
  FLW fs5, 544(sp)
  FADD.S fs4, fs4, fs5
  FLW fs5, 536(sp)
  FADD.S fs4, fs4, fs5
  FLW fs5, 520(sp)
  FADD.S fs4, fs4, fs5
  LUI t6, 1
  ADDIW t6, t6, -1616
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1272
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1444
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1272
  ADD t6, t6, sp
  FSW fs5, 4(t6)
  LUI t6, 2
  ADDIW t6, t6, -1272
  ADD t6, t6, sp
  FSW fs9, 8(t6)
  LUI t6, 2
  ADDIW t6, t6, -1272
  ADD t6, t6, sp
  FSW fs1, 12(t6)
  LUI t6, 2
  ADDIW t6, t6, -1272
  ADD t6, t6, sp
  FSW fs8, 16(t6)
  LUI t6, 2
  ADDIW t6, t6, -1272
  ADD t6, t6, sp
  FSW fs6, 20(t6)
  LUI t6, 2
  ADDIW t6, t6, -1272
  ADD t6, t6, sp
  FSW fs0, 24(t6)
  LUI t6, 2
  ADDIW t6, t6, -1272
  ADD t6, t6, sp
  FSW fs2, 28(t6)
  LUI a0, 2
  ADDIW a0, a0, -1272
  ADD a0, a0, sp
  FSW fs3, 32(a0)
  LUI a0, 2
  ADDIW a0, a0, -1272
  ADD a0, a0, sp
  FSW fs4, 36(a0)
  LW a0, 76(sp)
  LW s0, 508(sp)
  ADDW a0, a0, s0
  SW a0, 136(sp)
  LW a0, 136(sp)
  LW s0, 500(sp)
  ADDW a0, a0, s0
  SW a0, 104(sp)
  LUI a0, 1
  ADDIW a0, a0, 268
  ADD a0, a0, sp
  LW a0, 0(a0)
  LW s0, 512(sp)
  ADDW a0, a0, s0
  SW a0, 12(sp)
  LW a0, 12(sp)
  LW s0, 220(sp)
  ADDW a0, a0, s0
  SW a0, 16(sp)
  LW a0, 84(sp)
  LW s0, 504(sp)
  ADDW a0, s0, a0
  SW a0, 20(sp)
  LW a0, 20(sp)
  LW s0, 88(sp)
  ADDW a0, a0, s0
  SW a0, 24(sp)
  LUI a0, 1
  ADDIW a0, a0, 256
  ADD a0, a0, sp
  LW a0, 0(a0)
  ADDW a0, a0, a1
  LUI a1, 1
  ADDIW a1, a1, 264
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADDW a0, a0, a1
  LUI a1, 1
  ADDIW a1, a1, 260
  ADD a1, a1, sp
  LW a1, 0(a1)
  LW s0, 1892(sp)
  ADDW a1, a1, s0
  LUI t6, 1
  ADDIW t6, t6, -1316
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADDW a1, a1, s0
  LUI t6, 1
  ADDIW t6, t6, -1320
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 16
  ADD t6, t6, sp
  LW s1, 0(t6)
  ADDW s0, s0, s1
  SW s0, 28(sp)
  LW s0, 28(sp)
  LW s1, 92(sp)
  ADDW s0, s0, s1
  SW s0, 32(sp)
  LUI t6, 1
  ADDIW t6, t6, 252
  ADD t6, t6, sp
  LW s0, 0(t6)
  LW s1, 80(sp)
  ADDW s0, s0, s1
  SW s0, 36(sp)
  LUI t6, 1
  ADDIW t6, t6, -1324
  ADD t6, t6, sp
  LW s0, 0(t6)
  LW s1, 36(sp)
  ADDW s0, s1, s0
  SW s0, 40(sp)
  LUI t6, 1
  ADDIW t6, t6, -1328
  ADD t6, t6, sp
  LW s0, 0(t6)
  LW s1, 72(sp)
  ADDW s0, s0, s1
  SW s0, 48(sp)
  LW s0, 48(sp)
  LW s1, 496(sp)
  ADDW s0, s0, s1
  SW s0, 52(sp)
  LW s0, 104(sp)
  LUI t6, 2
  ADDIW t6, t6, -1304
  ADD t6, t6, sp
  SW s0, 0(t6)
  LW s0, 16(sp)
  LUI t6, 2
  ADDIW t6, t6, -1304
  ADD t6, t6, sp
  SW s0, 4(t6)
  LW s0, 24(sp)
  LUI t6, 2
  ADDIW t6, t6, -1304
  ADD t6, t6, sp
  SW s0, 8(t6)
  LUI t6, 2
  ADDIW t6, t6, -1304
  ADD t6, t6, sp
  SW a0, 12(t6)
  LUI a0, 2
  ADDIW a0, a0, -1304
  ADD a0, a0, sp
  SW a1, 16(a0)
  LW a0, 32(sp)
  LUI t6, 2
  ADDIW t6, t6, -1304
  ADD t6, t6, sp
  SW a0, 20(t6)
  LW a0, 40(sp)
  LUI t6, 2
  ADDIW t6, t6, -1304
  ADD t6, t6, sp
  SW a0, 24(t6)
  LW a0, 52(sp)
  LUI a1, 2
  ADDIW a1, a1, -1304
  ADD a1, a1, sp
  SW a0, 28(a1)
  ADDI a0, zero, 10
  LUI a1, 2
  ADDIW a1, a1, -1272
  ADD a1, a1, sp
  ADD a1, a1, zero
  CALL putfarray
  ADDI a0, zero, 8
  LUI a1, 2
  ADDIW a1, a1, -1304
  ADD a1, a1, sp
  ADD a1, a1, zero
  CALL putarray
  LUI a0, 2
  ADDIW a0, a0, -1304
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1272
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FCVT.S.W fs1, a0
  FSUB.S fs0, fs1, fs0
  FCVT.W.S a0, fs0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1304
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1304
  ADD a0, a0, sp
  LW a0, 4(a0)
  LUI t6, 2
  ADDIW t6, t6, -1272
  ADD t6, t6, sp
  FLW fs0, 4(t6)
  FCVT.S.W fs1, a0
  FSUB.S fs0, fs1, fs0
  FCVT.W.S a0, fs0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1304
  ADD t6, t6, sp
  SW a0, 4(t6)
  LUI a0, 2
  ADDIW a0, a0, -1304
  ADD a0, a0, sp
  LW a0, 8(a0)
  LUI t6, 2
  ADDIW t6, t6, -1272
  ADD t6, t6, sp
  FLW fs0, 8(t6)
  FCVT.S.W fs1, a0
  FSUB.S fs0, fs1, fs0
  FCVT.W.S a0, fs0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1304
  ADD t6, t6, sp
  SW a0, 8(t6)
  LUI a0, 2
  ADDIW a0, a0, -1304
  ADD a0, a0, sp
  LW a0, 12(a0)
  LUI t6, 2
  ADDIW t6, t6, -1272
  ADD t6, t6, sp
  FLW fs0, 12(t6)
  FCVT.S.W fs1, a0
  FSUB.S fs0, fs1, fs0
  FCVT.W.S a0, fs0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1304
  ADD t6, t6, sp
  SW a0, 12(t6)
  LUI a0, 2
  ADDIW a0, a0, -1304
  ADD a0, a0, sp
  LW a0, 16(a0)
  LUI t6, 2
  ADDIW t6, t6, -1272
  ADD t6, t6, sp
  FLW fs0, 16(t6)
  FCVT.S.W fs1, a0
  FSUB.S fs0, fs1, fs0
  FCVT.W.S a0, fs0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1304
  ADD t6, t6, sp
  SW a0, 16(t6)
  LUI a0, 2
  ADDIW a0, a0, -1304
  ADD a0, a0, sp
  LW a0, 20(a0)
  LUI t6, 2
  ADDIW t6, t6, -1272
  ADD t6, t6, sp
  FLW fs0, 20(t6)
  FCVT.S.W fs1, a0
  FSUB.S fs0, fs1, fs0
  FCVT.W.S a0, fs0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1304
  ADD t6, t6, sp
  SW a0, 20(t6)
  LUI a0, 2
  ADDIW a0, a0, -1304
  ADD a0, a0, sp
  LW a0, 24(a0)
  LUI t6, 2
  ADDIW t6, t6, -1272
  ADD t6, t6, sp
  FLW fs0, 24(t6)
  FCVT.S.W fs1, a0
  FSUB.S fs0, fs1, fs0
  FCVT.W.S a0, fs0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1304
  ADD t6, t6, sp
  SW a0, 24(t6)
  LUI a0, 2
  ADDIW a0, a0, -1304
  ADD a0, a0, sp
  LW a0, 28(a0)
  LUI t6, 2
  ADDIW t6, t6, -1272
  ADD t6, t6, sp
  FLW fs0, 28(t6)
  FCVT.S.W fs1, a0
  FSUB.S fs0, fs1, fs0
  FCVT.W.S a0, fs0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1304
  ADD t6, t6, sp
  SW a0, 28(t6)
  LA a0, k
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LUI t6, 1
  ADDIW t6, t6, -1312
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1304
  ADD t6, t6, sp
  ADD a0, t6, a0
  LW a0, 0(a0)
  FCVT.S.W fs0, a0
  FSW fs0, 436(sp)
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 2024
  ADD t6, t6, sp
  ADD a0, t6, a0
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1504
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs1, 0(a0)
  FADD.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1512
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs1, 0(a0)
  FADD.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1520
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs1, 0(a0)
  FADD.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1528
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs1, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1536
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs2, 0(a0)
  FADD.S fs1, fs1, fs2
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1624
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs2, 0(a0)
  FADD.S fs1, fs1, fs2
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1872
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs2, 0(a0)
  FADD.S fs1, fs1, fs2
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1880
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs2, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1888
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs3, 0(a0)
  FADD.S fs2, fs2, fs3
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1896
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs3, 0(a0)
  FADD.S fs2, fs2, fs3
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1904
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs3, 0(a0)
  FADD.S fs2, fs2, fs3
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1912
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs3, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1920
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs4, 0(a0)
  FADD.S fs3, fs3, fs4
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1928
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs4, 0(a0)
  FADD.S fs3, fs3, fs4
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1936
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs4, 0(a0)
  FADD.S fs3, fs3, fs4
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1864
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs4, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1952
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs5, 0(a0)
  FADD.S fs4, fs4, fs5
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1960
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs5, 0(a0)
  FADD.S fs4, fs4, fs5
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1968
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs5, 0(a0)
  FADD.S fs4, fs4, fs5
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1976
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs5, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1984
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs6, 0(a0)
  FADD.S fs5, fs5, fs6
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1992
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs6, 0(a0)
  FADD.S fs5, fs5, fs6
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 2000
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs6, 0(a0)
  FADD.S fs5, fs5, fs6
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 2008
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs6, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 2016
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs7, 0(a0)
  FADD.S fs6, fs6, fs7
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1784
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs7, 0(a0)
  FADD.S fs6, fs6, fs7
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1712
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs7, 0(a0)
  FADD.S fs6, fs6, fs7
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1720
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs7, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1728
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs8, 0(a0)
  FADD.S fs7, fs7, fs8
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1736
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs8, 0(a0)
  FADD.S fs7, fs7, fs8
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1744
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs8, 0(a0)
  FADD.S fs7, fs7, fs8
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1752
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs8, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1760
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs9, 0(a0)
  FADD.S fs8, fs8, fs9
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1768
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs9, 0(a0)
  FADD.S fs8, fs8, fs9
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1776
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs9, 0(a0)
  FADD.S fs8, fs8, fs9
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1704
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs9, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1792
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs10, 0(a0)
  FADD.S fs9, fs9, fs10
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1800
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs10, 0(a0)
  FADD.S fs9, fs9, fs10
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1808
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs10, 0(a0)
  FADD.S fs9, fs9, fs10
  LUI t6, 2
  ADDIW t6, t6, -1232
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1232
  ADD t6, t6, sp
  FSW fs1, 4(t6)
  LUI t6, 2
  ADDIW t6, t6, -1232
  ADD t6, t6, sp
  FSW fs2, 8(t6)
  LUI t6, 2
  ADDIW t6, t6, -1232
  ADD t6, t6, sp
  FSW fs3, 12(t6)
  LUI t6, 2
  ADDIW t6, t6, -1232
  ADD t6, t6, sp
  FSW fs4, 16(t6)
  LUI t6, 2
  ADDIW t6, t6, -1232
  ADD t6, t6, sp
  FSW fs5, 20(t6)
  LUI t6, 2
  ADDIW t6, t6, -1232
  ADD t6, t6, sp
  FSW fs6, 24(t6)
  LUI t6, 2
  ADDIW t6, t6, -1232
  ADD t6, t6, sp
  FSW fs7, 28(t6)
  LUI t6, 2
  ADDIW t6, t6, -1232
  ADD t6, t6, sp
  FSW fs8, 32(t6)
  LUI t6, 2
  ADDIW t6, t6, -1232
  ADD t6, t6, sp
  FSW fs9, 36(t6)
  FLW fs0, 552(sp)
  FEQ.S a0, fs10, fs0
  XORI a0, a0, 1
  SLTU a0, zero, a0
  FCVT.S.W fs0, a0
  LA a0, .CONSTANT.7.0
  FLW fs1, 0(a0)
  FEQ.S a0, fs0, fs1
  XORI a0, a0, 1
  FCVT.S.W fs0, a0
  LA a0, .CONSTANT.7.0
  FLW fs1, 0(a0)
  FEQ.S a0, fs0, fs1
  XORI a0, a0, 1
  BNE a0, zero, bb15
  # implict jump to bb12
bb12:
  LUI a0, 1
  ADDIW a0, a0, 1504
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1032
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1512
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1024
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1520
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1016
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1528
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1008
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1536
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1000
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1624
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1072
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1872
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -984
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1880
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -976
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1888
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -968
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1896
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -960
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1904
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -952
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1912
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -944
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1920
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -936
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1928
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -928
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1936
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -920
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1864
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -832
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1952
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -640
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1960
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -632
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1968
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -624
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1976
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -616
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1984
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1192
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1992
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -608
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 2000
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1208
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 2008
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -600
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 2016
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1224
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1784
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -592
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1712
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -584
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1720
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -576
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1728
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1256
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1736
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -568
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1744
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1552
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1752
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1560
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1760
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1568
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1768
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1576
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1776
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1584
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1704
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1592
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1792
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1600
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1800
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1608
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1808
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1616
  ADD t6, t6, sp
  SD a0, 0(t6)
  # implict jump to bb13
bb13:
  LUI a0, 1
  ADDIW a0, a0, 1616
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 984
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1608
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 896
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1600
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 888
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1592
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 880
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1584
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 872
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1576
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 864
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1568
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 856
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1560
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 848
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1552
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 840
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 832
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1256
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 736
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -576
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 816
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -584
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 808
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -592
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 800
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1224
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 792
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -600
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 784
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1208
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 776
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -608
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 768
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1192
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -112
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -616
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -120
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -624
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -128
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -632
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -136
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -640
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -144
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -832
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -152
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -920
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -160
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -928
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -88
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -936
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 144
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -944
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 136
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -952
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 128
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -960
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 376
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -968
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 760
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -976
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 368
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -984
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 752
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1072
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 744
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1000
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 824
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1008
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1056
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1016
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1048
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1024
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -8
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1032
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1040
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1040
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -1312
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 1232
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1232
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 2
  ADDIW a1, a1, -8
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  LUI t6, 1
  ADDIW t6, t6, 1240
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1240
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs1, 0(a0)
  FADD.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, 1048
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -1312
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 1248
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1248
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs1, 0(a0)
  FADD.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, 1056
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -1312
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 1256
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1256
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs1, 0(a0)
  FADD.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, 824
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -1312
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 1264
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1264
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs1, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 744
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -1312
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 1272
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1272
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs2, 0(a0)
  FADD.S fs1, fs1, fs2
  LUI a0, 1
  ADDIW a0, a0, 752
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -1312
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 1280
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1280
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs2, 0(a0)
  FADD.S fs1, fs1, fs2
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 2
  ADDIW a1, a1, 368
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  LUI t6, 1
  ADDIW t6, t6, 1288
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1288
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs2, 0(a0)
  FADD.S fs1, fs1, fs2
  LUI a0, 1
  ADDIW a0, a0, 760
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -1312
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 1296
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1296
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs2, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 2
  ADDIW a1, a1, 376
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  LUI t6, 1
  ADDIW t6, t6, 1224
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1224
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs3, 0(a0)
  FADD.S fs2, fs2, fs3
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 2
  ADDIW a1, a1, 128
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  LUI t6, 1
  ADDIW t6, t6, 1312
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1312
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs3, 0(a0)
  FADD.S fs2, fs2, fs3
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 2
  ADDIW a1, a1, 136
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  LUI t6, 1
  ADDIW t6, t6, 1320
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1320
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs3, 0(a0)
  FADD.S fs2, fs2, fs3
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 2
  ADDIW a1, a1, 144
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  LUI t6, 1
  ADDIW t6, t6, 1328
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1328
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs3, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 2
  ADDIW a1, a1, -88
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  LUI t6, 1
  ADDIW t6, t6, 1336
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1336
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs4, 0(a0)
  FADD.S fs3, fs3, fs4
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 2
  ADDIW a1, a1, -160
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  LUI t6, 1
  ADDIW t6, t6, 1344
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1344
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs4, 0(a0)
  FADD.S fs3, fs3, fs4
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 2
  ADDIW a1, a1, -152
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  LUI t6, 1
  ADDIW t6, t6, 1352
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1352
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs4, 0(a0)
  FADD.S fs3, fs3, fs4
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 2
  ADDIW a1, a1, -144
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  LUI t6, 1
  ADDIW t6, t6, 1360
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1360
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs4, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 2
  ADDIW a1, a1, -136
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  LUI t6, 1
  ADDIW t6, t6, 1368
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1368
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs5, 0(a0)
  FADD.S fs4, fs4, fs5
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 2
  ADDIW a1, a1, -128
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  LUI t6, 1
  ADDIW t6, t6, 1376
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1376
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs5, 0(a0)
  FADD.S fs4, fs4, fs5
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 2
  ADDIW a1, a1, -120
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  LUI t6, 1
  ADDIW t6, t6, 1144
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1144
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs5, 0(a0)
  FADD.S fs4, fs4, fs5
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 2
  ADDIW a1, a1, -112
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  LUI t6, 1
  ADDIW t6, t6, 1072
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1072
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs5, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 768
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -1312
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 1080
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1080
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs6, 0(a0)
  FADD.S fs5, fs5, fs6
  LUI a0, 1
  ADDIW a0, a0, 776
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -1312
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 1088
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1088
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs6, 0(a0)
  FADD.S fs5, fs5, fs6
  LUI a0, 1
  ADDIW a0, a0, 784
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -1312
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 1096
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1096
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs6, 0(a0)
  FADD.S fs5, fs5, fs6
  LUI a0, 1
  ADDIW a0, a0, 792
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -1312
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 1104
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1104
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs6, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 800
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -1312
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 1112
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1112
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs7, 0(a0)
  FADD.S fs6, fs6, fs7
  LUI a0, 1
  ADDIW a0, a0, 808
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -1312
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 1120
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1120
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs7, 0(a0)
  FADD.S fs6, fs6, fs7
  LUI a0, 1
  ADDIW a0, a0, 816
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -1312
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 1128
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1128
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs7, 0(a0)
  FADD.S fs6, fs6, fs7
  LUI a0, 1
  ADDIW a0, a0, 736
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -1312
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 1136
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1136
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs7, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 832
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -1312
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 1064
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1064
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs8, 0(a0)
  FADD.S fs7, fs7, fs8
  LUI a0, 1
  ADDIW a0, a0, 840
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -1312
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 1152
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1152
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs8, 0(a0)
  FADD.S fs7, fs7, fs8
  LUI a0, 1
  ADDIW a0, a0, 848
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -1312
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 1160
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1160
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs8, 0(a0)
  FADD.S fs7, fs7, fs8
  LUI a0, 1
  ADDIW a0, a0, 856
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -1312
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 1168
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1168
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs8, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 864
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -1312
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 1176
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1176
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs9, 0(a0)
  FADD.S fs8, fs8, fs9
  LUI a0, 1
  ADDIW a0, a0, 872
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -1312
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 1184
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1184
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs9, 0(a0)
  FADD.S fs8, fs8, fs9
  LUI a0, 1
  ADDIW a0, a0, 880
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -1312
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 1192
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1192
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs9, 0(a0)
  FADD.S fs8, fs8, fs9
  LUI a0, 1
  ADDIW a0, a0, 888
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -1312
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 1200
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1200
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs9, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 896
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -1312
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 1208
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1208
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs10, 0(a0)
  FADD.S fs9, fs9, fs10
  LUI a0, 1
  ADDIW a0, a0, 984
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -1312
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 1216
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1216
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs10, 0(a0)
  FADD.S fs9, fs9, fs10
  LUI a0, 1
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1232
  ADD t6, t6, sp
  ADD a0, t6, a0
  LUI t6, 1
  ADDIW t6, t6, 1944
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1944
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs10, 0(a0)
  FADD.S fs9, fs9, fs10
  LUI t6, 2
  ADDIW t6, t6, -1232
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1232
  ADD t6, t6, sp
  FSW fs1, 4(t6)
  LUI t6, 2
  ADDIW t6, t6, -1232
  ADD t6, t6, sp
  FSW fs2, 8(t6)
  LUI t6, 2
  ADDIW t6, t6, -1232
  ADD t6, t6, sp
  FSW fs3, 12(t6)
  LUI t6, 2
  ADDIW t6, t6, -1232
  ADD t6, t6, sp
  FSW fs4, 16(t6)
  LUI t6, 2
  ADDIW t6, t6, -1232
  ADD t6, t6, sp
  FSW fs5, 20(t6)
  LUI t6, 2
  ADDIW t6, t6, -1232
  ADD t6, t6, sp
  FSW fs6, 24(t6)
  LUI t6, 2
  ADDIW t6, t6, -1232
  ADD t6, t6, sp
  FSW fs7, 28(t6)
  LUI t6, 2
  ADDIW t6, t6, -1232
  ADD t6, t6, sp
  FSW fs8, 32(t6)
  LUI a0, 2
  ADDIW a0, a0, -1232
  ADD a0, a0, sp
  FSW fs9, 36(a0)
  LUI a0, 1
  ADDIW a0, a0, 1944
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs0, 0(a0)
  FLW fs1, 552(sp)
  FEQ.S a0, fs0, fs1
  SB a0, 1(sp)
  LB a0, 1(sp)
  XORI a0, a0, 1
  LUI t6, 1
  ADDIW t6, t6, -1564
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1564
  ADD a0, a0, sp
  LW a0, 0(a0)
  SLTU a0, zero, a0
  LUI t6, 1
  ADDIW t6, t6, -1560
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1560
  ADD a0, a0, sp
  LW a0, 0(a0)
  FCVT.S.W fs0, a0
  LA a0, .CONSTANT.7.0
  LUI t6, 2
  ADDIW t6, t6, -664
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -664
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs1, 0(a0)
  FEQ.S a0, fs0, fs1
  SB a0, 2(sp)
  LB a0, 2(sp)
  XORI a0, a0, 1
  LUI t6, 1
  ADDIW t6, t6, -1664
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1664
  ADD a0, a0, sp
  LW a0, 0(a0)
  FCVT.S.W fs0, a0
  LA a0, .CONSTANT.7.0
  LUI t6, 2
  ADDIW t6, t6, -656
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -656
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs1, 0(a0)
  FEQ.S a0, fs0, fs1
  SB a0, 3(sp)
  LB a0, 3(sp)
  XORI a0, a0, 1
  SB a0, 4(sp)
  LB a0, 4(sp)
  BNE a0, zero, bb15
  # implict jump to bb14
bb14:
  LUI a0, 2
  ADDIW a0, a0, -8
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1032
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1048
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1024
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1056
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1016
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 824
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1008
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 744
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1000
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 752
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1072
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 368
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -984
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 760
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -976
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 376
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -968
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 128
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -960
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 136
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -952
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 144
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -944
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -88
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -936
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -160
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -928
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -152
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -920
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -144
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -832
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -136
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -640
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -128
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -632
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -120
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -624
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -112
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -616
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 768
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1192
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 776
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -608
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 784
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1208
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 792
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -600
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 800
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1224
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 808
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -592
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 816
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -584
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 736
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -576
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 832
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1256
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 840
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -568
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 848
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1552
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 856
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1560
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 864
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1568
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 872
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1576
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 880
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1584
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 888
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1592
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 896
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1600
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 984
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1608
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1232
  ADD a0, a0, sp
  ADD a0, a0, zero
  LUI t6, 1
  ADDIW t6, t6, 1616
  ADD t6, t6, sp
  SD a0, 0(t6)
  JAL zero, bb13
bb15:
  ADDI a0, zero, 10
  LUI a1, 2
  ADDIW a1, a1, -1232
  ADD a1, a1, sp
  ADD a1, a1, zero
  CALL putfarray
  LA a0, k
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  SW a0, 180(sp)
  LW a0, 180(sp)
  LUI t6, 2
  ADDIW t6, t6, -1232
  ADD t6, t6, sp
  ADD a0, t6, a0
  FLW fs0, 0(a0)
  FSW fs0, 2032(sp)
  LW a0, 180(sp)
  LUI t6, 1
  ADDIW t6, t6, 2024
  ADD t6, t6, sp
  ADD a0, t6, a0
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1172
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 1816
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LW a0, 0(a0)
  SW a0, 144(sp)
  LUI a0, 1
  ADDIW a0, a0, 1512
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1176
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 1824
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LW a0, 0(a0)
  SW a0, 148(sp)
  LUI a0, 1
  ADDIW a0, a0, 1520
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1180
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 1528
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -548
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 1840
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LW a0, 0(a0)
  SW a0, 152(sp)
  LUI a0, 1
  ADDIW a0, a0, 1848
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LW a0, 0(a0)
  SW a0, 156(sp)
  LUI a0, 1
  ADDIW a0, a0, 912
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LW a0, 0(a0)
  SW a0, 160(sp)
  LUI a0, 1
  ADDIW a0, a0, 1888
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 1896
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  FLW fs1, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 1904
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  FLW fs2, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 920
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LW a0, 0(a0)
  SW a0, 164(sp)
  LUI a0, 1
  ADDIW a0, a0, 1920
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  FLW fs3, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 1928
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  FLW fs5, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1184
  ADD a0, a0, sp
  FSW fs5, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 1936
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  FLW fs5, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1296
  ADD a0, a0, sp
  FSW fs5, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 1960
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  FLW fs5, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1336
  ADD a0, a0, sp
  FSW fs5, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 1968
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  FLW fs5, 0(a0)
  FSW fs5, 2028(sp)
  LUI a0, 1
  ADDIW a0, a0, 960
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LW a0, 0(a0)
  SW a0, 168(sp)
  LUI a0, 1
  ADDIW a0, a0, 1992
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  FLW fs5, 0(a0)
  FSW fs5, 2024(sp)
  LUI a0, 1
  ADDIW a0, a0, 2000
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  FLW fs5, 0(a0)
  FSW fs5, 1908(sp)
  LUI a0, 1
  ADDIW a0, a0, 904
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -1272
  ADD a1, a1, sp
  SW a0, 0(a1)
  LUI a0, 1
  ADDIW a0, a0, 992
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a1, a0, a1
  LW a0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1268
  ADD a1, a1, sp
  SW a0, 0(a1)
  LUI a0, 1
  ADDIW a0, a0, 2008
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a1, a0, a1
  FLW fs5, 0(a1)
  FSW fs5, 1860(sp)
  LUI a0, 1
  ADDIW a0, a0, 2016
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a1, a0, a1
  FLW fs5, 0(a1)
  FSW fs5, 1856(sp)
  LUI a0, 1
  ADDIW a0, a0, 1008
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a1, a0, a1
  LW a0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1264
  ADD a1, a1, sp
  SW a0, 0(a1)
  LUI a0, 1
  ADDIW a0, a0, 1016
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD s9, a0, a1
  LW a0, 0(s9)
  LUI a1, 1
  ADDIW a1, a1, -1368
  ADD a1, a1, sp
  SW a0, 0(a1)
  LUI a0, 1
  ADDIW a0, a0, 1712
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD s9, a0, a1
  FLW fs5, 0(s9)
  FSW fs5, 1852(sp)
  LUI a0, 1
  ADDIW a0, a0, 1720
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD s9, a0, a1
  FLW fs5, 0(s9)
  FSW fs5, 1848(sp)
  LW a0, 180(sp)
  LUI t6, 2
  ADDIW t6, t6, -1592
  ADD t6, t6, sp
  ADD s9, t6, a0
  LW a0, 0(s9)
  LUI a1, 1
  ADDIW a1, a1, -1404
  ADD a1, a1, sp
  SW a0, 0(a1)
  LUI a0, 1
  ADDIW a0, a0, 1744
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD s10, a0, a1
  FLW fs5, 0(s10)
  FSW fs5, 1844(sp)
  LUI a0, 1
  ADDIW a0, a0, 1752
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD s10, a0, a1
  FLW fs5, 0(s10)
  FSW fs5, 1840(sp)
  LUI a0, 1
  ADDIW a0, a0, 1776
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD s10, a0, a1
  FLW fs5, 0(s10)
  FSW fs5, 1836(sp)
  LUI a0, 1
  ADDIW a0, a0, 1832
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD s10, a0, a1
  LW a0, 0(s10)
  SW a0, 368(sp)
  LUI a0, 1
  ADDIW a0, a0, 1504
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD s0, a0, a1
  FLW fs9, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -1172
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FADD.S fs9, fs5, fs9
  LUI t6, 1
  ADDIW t6, t6, -1176
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FADD.S fs9, fs9, fs5
  LUI t6, 1
  ADDIW t6, t6, -1180
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FADD.S fs5, fs9, fs5
  FSW fs5, 1792(sp)
  LUI a0, 1
  ADDIW a0, a0, 1536
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD s0, a0, a1
  FLW fs10, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -548
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FADD.S fs10, fs4, fs10
  LUI a0, 1
  ADDIW a0, a0, 1624
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD s0, a0, a1
  FLW fs5, 0(s0)
  FSW fs5, 1828(sp)
  FLW fs5, 1828(sp)
  FADD.S fs10, fs10, fs5
  LUI a0, 1
  ADDIW a0, a0, 1872
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD s0, a0, a1
  FLW fs5, 0(s0)
  FSW fs5, 1824(sp)
  FLW fs5, 1824(sp)
  FADD.S fs5, fs10, fs5
  FSW fs5, 1820(sp)
  LUI a0, 1
  ADDIW a0, a0, 1880
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD s0, a0, a1
  FLW fs11, 0(s0)
  FADD.S fs11, fs11, fs0
  FADD.S fs11, fs11, fs1
  FADD.S fs5, fs11, fs2
  FSW fs5, 1816(sp)
  LUI a0, 1
  ADDIW a0, a0, 1912
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD s0, a0, a1
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -1364
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1364
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FADD.S fs5, fs5, fs3
  LUI t6, 1
  ADDIW t6, t6, -1408
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1408
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1184
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FADD.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1372
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1372
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1296
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FADD.S fs5, fs5, fs6
  FSW fs5, 1812(sp)
  LUI a0, 1
  ADDIW a0, a0, 1864
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD s0, a0, a1
  FLW fs5, 0(s0)
  LUI a0, 1
  ADDIW a0, a0, -1380
  ADD a0, a0, sp
  FSW fs5, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 1952
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD s0, a0, a1
  FLW fs5, 0(s0)
  FSW fs5, 1808(sp)
  FLW fs5, 1808(sp)
  LUI t6, 1
  ADDIW t6, t6, -1380
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FADD.S fs5, fs6, fs5
  LUI t6, 1
  ADDIW t6, t6, 248
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 248
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1336
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FADD.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, 244
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 2028(sp)
  LUI t6, 1
  ADDIW t6, t6, 244
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FADD.S fs5, fs6, fs5
  FSW fs5, 1804(sp)
  LUI a0, 1
  ADDIW a0, a0, 1976
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD s0, a0, a1
  FLW fs5, 0(s0)
  LUI a0, 1
  ADDIW a0, a0, 200
  ADD a0, a0, sp
  FSW fs5, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 1984
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD s0, a0, a1
  FLW fs5, 0(s0)
  FSW fs5, 1800(sp)
  FLW fs5, 1800(sp)
  LUI t6, 1
  ADDIW t6, t6, 200
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FADD.S fs5, fs6, fs5
  LUI t6, 1
  ADDIW t6, t6, 228
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 2024(sp)
  LUI t6, 1
  ADDIW t6, t6, 228
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FADD.S fs5, fs6, fs5
  LUI t6, 1
  ADDIW t6, t6, 224
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1908(sp)
  LUI t6, 1
  ADDIW t6, t6, 224
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FADD.S fs5, fs6, fs5
  FSW fs5, 1796(sp)
  FLW fs5, 1856(sp)
  FLW fs6, 1860(sp)
  FADD.S fs5, fs6, fs5
  FSW fs5, 1832(sp)
  LUI a0, 1
  ADDIW a0, a0, 1784
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD s0, a0, a1
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, 212
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1832(sp)
  LUI t6, 1
  ADDIW t6, t6, 212
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FADD.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, 208
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1852(sp)
  LUI t6, 1
  ADDIW t6, t6, 208
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FADD.S fs5, fs6, fs5
  FSW fs5, 1940(sp)
  LUI a0, 1
  ADDIW a0, a0, 1728
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD s0, a0, a1
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, 236
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1848(sp)
  LUI t6, 1
  ADDIW t6, t6, 236
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FADD.S fs5, fs5, fs6
  LUI a0, 1
  ADDIW a0, a0, 340
  ADD a0, a0, sp
  FSW fs5, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 1736
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD s0, a0, a1
  FLW fs5, 0(s0)
  FSW fs5, 1936(sp)
  FLW fs5, 1936(sp)
  LUI t6, 1
  ADDIW t6, t6, 340
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FADD.S fs5, fs6, fs5
  LUI t6, 1
  ADDIW t6, t6, 332
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1844(sp)
  LUI t6, 1
  ADDIW t6, t6, 332
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FADD.S fs5, fs6, fs5
  FSW fs5, 1932(sp)
  LUI a0, 1
  ADDIW a0, a0, 1760
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD s0, a0, a1
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, 324
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1840(sp)
  LUI t6, 1
  ADDIW t6, t6, 324
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FADD.S fs5, fs5, fs6
  FSW fs5, 1928(sp)
  LUI a0, 1
  ADDIW a0, a0, 1768
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD s0, a0, a1
  FLW fs5, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, 316
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1928(sp)
  LUI t6, 1
  ADDIW t6, t6, 316
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FADD.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, 312
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1836(sp)
  LUI t6, 1
  ADDIW t6, t6, 312
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FADD.S fs5, fs6, fs5
  LUI t6, 1
  ADDIW t6, t6, 272
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1792(sp)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1820(sp)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FSW fs5, 4(t6)
  FLW fs5, 1816(sp)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FSW fs5, 8(t6)
  FLW fs5, 1812(sp)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FSW fs5, 12(t6)
  FLW fs5, 1804(sp)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FSW fs5, 16(t6)
  FLW fs5, 1796(sp)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FSW fs5, 20(t6)
  FLW fs5, 1940(sp)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FSW fs5, 24(t6)
  FLW fs5, 1932(sp)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FSW fs5, 28(t6)
  LUI t6, 1
  ADDIW t6, t6, 272
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FSW fs5, 32(t6)
  LA s0, .CONSTANT.7.0
  FLW fs9, 0(s0)
  LUI a0, 2
  ADDIW a0, a0, -1112
  ADD a0, a0, sp
  FSW fs9, 36(a0)
  LUI a0, 1
  ADDIW a0, a0, -1404
  ADD a0, a0, sp
  LW a0, 0(a0)
  LW a1, 144(sp)
  ADDW s0, a0, a1
  LW a0, 148(sp)
  ADDW a0, s0, a0
  LUI a1, 1
  ADDIW a1, a1, -1400
  ADD a1, a1, sp
  SW a0, 0(a1)
  LW a0, 152(sp)
  LW a1, 368(sp)
  ADDW s11, a1, a0
  LW a0, 156(sp)
  ADDW a0, s11, a0
  LUI a1, 1
  ADDIW a1, a1, -1396
  ADD a1, a1, sp
  SW a0, 0(a1)
  LUI a0, 1
  ADDIW a0, a0, 1856
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, -344
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -344
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a0, 0(a0)
  SW a0, 184(sp)
  LUI a0, 1
  ADDIW a0, a0, 1304
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, -336
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -336
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a0, 0(a0)
  SW a0, 192(sp)
  LW a0, 192(sp)
  LW a1, 184(sp)
  ADDW a0, a1, a0
  SW a0, 196(sp)
  LW a0, 196(sp)
  LW a1, 160(sp)
  ADDW a0, a0, a1
  LUI a1, 1
  ADDIW a1, a1, -1392
  ADD a1, a1, sp
  SW a0, 0(a1)
  LUI a0, 1
  ADDIW a0, a0, 928
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, -248
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -248
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a0, 0(a0)
  SW a0, 208(sp)
  LW a0, 208(sp)
  LW a1, 164(sp)
  ADDW a0, a1, a0
  SW a0, 212(sp)
  LUI a0, 1
  ADDIW a0, a0, 936
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 0
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a0, 0(a0)
  SW a0, 972(sp)
  LW a0, 972(sp)
  LW a1, 212(sp)
  ADDW a0, a1, a0
  LUI a1, 1
  ADDIW a1, a1, -1388
  ADD a1, a1, sp
  SW a0, 0(a1)
  LUI a0, 1
  ADDIW a0, a0, 944
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 8
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 8
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a0, 0(a0)
  SW a0, 984(sp)
  LUI a0, 1
  ADDIW a0, a0, 952
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 16
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 16
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a0, 0(a0)
  SW a0, 992(sp)
  LW a0, 992(sp)
  LW a1, 984(sp)
  ADDW a0, a1, a0
  SW a0, 996(sp)
  LW a0, 996(sp)
  LW a1, 168(sp)
  ADDW a0, a0, a1
  SW a0, 1000(sp)
  LUI a0, 1
  ADDIW a0, a0, 968
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 24
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 24
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a0, 0(a0)
  SW a0, 968(sp)
  LUI a0, 1
  ADDIW a0, a0, 976
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 32
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a0, 0(a0)
  SW a0, 1016(sp)
  LW a0, 1016(sp)
  LW a1, 968(sp)
  ADDW a0, a1, a0
  SW a0, 1020(sp)
  LUI a0, 1
  ADDIW a0, a0, -1272
  ADD a0, a0, sp
  LW a0, 0(a0)
  LW a1, 1020(sp)
  ADDW a0, a1, a0
  SW a0, 1024(sp)
  LUI a0, 1
  ADDIW a0, a0, 1000
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 40
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 40
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a0, 0(a0)
  SW a0, 1032(sp)
  LUI a0, 1
  ADDIW a0, a0, -1268
  ADD a0, a0, sp
  LW a0, 0(a0)
  LW a1, 1032(sp)
  ADDW a0, a0, a1
  SW a0, 1036(sp)
  LUI a0, 1
  ADDIW a0, a0, -1264
  ADD a0, a0, sp
  LW a0, 0(a0)
  LW a1, 1036(sp)
  ADDW a0, a1, a0
  SW a0, 1040(sp)
  LUI a0, 1
  ADDIW a0, a0, 1024
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 48
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 48
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a0, 0(a0)
  SW a0, 896(sp)
  LUI a0, 1
  ADDIW a0, a0, -1368
  ADD a0, a0, sp
  LW a0, 0(a0)
  LW a1, 896(sp)
  ADDW a0, a0, a1
  SW a0, 900(sp)
  LUI a0, 1
  ADDIW a0, a0, 1032
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 56
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 56
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a0, 0(a0)
  SW a0, 908(sp)
  LW a0, 908(sp)
  LW a1, 900(sp)
  ADDW a0, a1, a0
  SW a0, 912(sp)
  LUI a0, 1
  ADDIW a0, a0, -1404
  ADD a0, a0, sp
  LW a0, 0(a0)
  LW a1, 144(sp)
  ADDW a0, a0, a1
  SW a0, 916(sp)
  LW a0, 916(sp)
  LW a1, 148(sp)
  ADDW a0, a0, a1
  SW a0, 920(sp)
  LW a0, 920(sp)
  LW a1, 368(sp)
  ADDW a0, a0, a1
  SW a0, 924(sp)
  LUI a0, 1
  ADDIW a0, a0, -1400
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1396
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SW a0, 4(t6)
  LUI a0, 1
  ADDIW a0, a0, -1392
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SW a0, 8(t6)
  LUI a0, 1
  ADDIW a0, a0, -1388
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SW a0, 12(t6)
  LW a0, 1000(sp)
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SW a0, 16(t6)
  LW a0, 1024(sp)
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SW a0, 20(t6)
  LW a0, 1040(sp)
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SW a0, 24(t6)
  LW a0, 912(sp)
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SW a0, 28(t6)
  LW a0, 924(sp)
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SW a0, 32(t6)
  LUI a0, 2
  ADDIW a0, a0, -1152
  ADD a0, a0, sp
  SW zero, 36(a0)
  LW a0, 368(sp)
  BNE a0, zero, bb20
  # implict jump to bb16
bb16:
  LUI t6, 1
  ADDIW t6, t6, -1172
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1172
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  LUI a0, 1
  ADDIW a0, a0, -1848
  ADD a0, a0, sp
  FSW fs5, 0(a0)
  LW a0, 144(sp)
  LUI t6, 1
  ADDIW t6, t6, -592
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1176
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1176
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  LUI a0, 1
  ADDIW a0, a0, -1844
  ADD a0, a0, sp
  FSW fs5, 0(a0)
  LW a0, 148(sp)
  LUI t6, 1
  ADDIW t6, t6, -588
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1180
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1180
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -548
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -548
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  LUI a0, 1
  ADDIW a0, a0, -548
  ADD a0, a0, sp
  FSW fs4, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 1536
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -648
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1832
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -560
  ADD t6, t6, sp
  SD a0, 0(t6)
  LW a0, 152(sp)
  LUI t6, 1
  ADDIW t6, t6, -576
  ADD t6, t6, sp
  SW a0, 0(t6)
  LW a0, 156(sp)
  LUI t6, 1
  ADDIW t6, t6, -572
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1624
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -552
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1856
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -544
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1304
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -536
  ADD t6, t6, sp
  SD a0, 0(t6)
  LW a0, 160(sp)
  LUI t6, 1
  ADDIW t6, t6, -556
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1872
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -528
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1880
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -520
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1912
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -512
  ADD t6, t6, sp
  SD a0, 0(t6)
  LW s3, 164(sp)
  LUI t6, 1
  ADDIW t6, t6, -1184
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1184
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  LUI t6, 1
  ADDIW t6, t6, -1296
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1296
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 936(sp)
  LUI a0, 1
  ADDIW a0, a0, 928
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -504
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1864
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -496
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 936
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -672
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 944
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -744
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1952
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -736
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1336
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1336
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1836
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 2028(sp)
  FLW fs6, 2028(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI a0, 1
  ADDIW a0, a0, -1832
  ADD a0, a0, sp
  FSW fs5, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 952
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -728
  ADD t6, t6, sp
  SD a0, 0(t6)
  LW a0, 168(sp)
  LUI t6, 1
  ADDIW t6, t6, -660
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1976
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -720
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1984
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1416
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs5, 2024(sp)
  FLW fs6, 2024(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1828
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1908(sp)
  FLW fs6, 1908(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI a0, 1
  ADDIW a0, a0, -1824
  ADD a0, a0, sp
  FSW fs5, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 968
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1424
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 976
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -712
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1272
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 532
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1268
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 536
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs5, 1860(sp)
  FLW fs6, 1860(sp)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 1028(sp)
  FLW fs5, 1856(sp)
  FLW fs6, 1856(sp)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 1012(sp)
  LUI a0, 1
  ADDIW a0, a0, 1000
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1440
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1264
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -648
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1784
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -704
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1368
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 548
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1024
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1448
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1032
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1456
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs5, 1852(sp)
  FLW fs6, 1852(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1820
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1848(sp)
  FLW fs6, 1848(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI a0, 1
  ADDIW a0, a0, -1816
  ADD a0, a0, sp
  FSW fs5, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 1728
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -696
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1404
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -636
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1816
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1472
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1736
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -688
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs5, 1844(sp)
  FLW fs6, 1844(sp)
  FSGNJ.S fs5, fs5, fs6
  LW a0, 148(sp)
  SW a0, 1888(sp)
  LW a0, 1888(sp)
  SW a0, 1888(sp)
  FLW fs6, 1840(sp)
  FLW fs7, 1840(sp)
  FSGNJ.S fs6, fs6, fs7
  LUI a0, 1
  ADDIW a0, a0, 1760
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -680
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1768
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -752
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs7, 1836(sp)
  FLW fs8, 1836(sp)
  FSGNJ.S fs7, fs7, fs8
  LW a0, 368(sp)
  SW a0, 368(sp)
  # implict jump to bb17
bb17:
  LW a0, 368(sp)
  SW a0, 368(sp)
  FSW fs7, 1336(sp)
  LUI a0, 2
  ADDIW a0, a0, -752
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1040
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -680
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1048
  ADD t6, t6, sp
  SD a0, 0(t6)
  FSW fs6, 1332(sp)
  LW a0, 1888(sp)
  SW a0, 1888(sp)
  LW a0, 1888(sp)
  LUI t6, 1
  ADDIW t6, t6, -1520
  ADD t6, t6, sp
  SW a0, 0(t6)
  FSW fs5, 1328(sp)
  LUI a0, 2
  ADDIW a0, a0, -688
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1056
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1472
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1064
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -636
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1532
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -696
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -992
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1816
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1816
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 1324(sp)
  LUI t6, 1
  ADDIW t6, t6, -1820
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1820
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 1320(sp)
  LUI a0, 1
  ADDIW a0, a0, 1456
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -760
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1448
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -768
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 548
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1548
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -704
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -776
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -648
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1516
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1440
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -784
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs5, 1012(sp)
  FLW fs6, 1012(sp)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 1316(sp)
  FLW fs5, 1028(sp)
  FLW fs6, 1028(sp)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 1312(sp)
  LUI a0, 1
  ADDIW a0, a0, 536
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1416
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 532
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1420
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -712
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -792
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1424
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -800
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1824
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1824
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 1268(sp)
  LUI t6, 1
  ADDIW t6, t6, -1828
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1828
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 1304(sp)
  LUI a0, 1
  ADDIW a0, a0, 1416
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -808
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -720
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -816
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -660
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1440
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -728
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -824
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1832
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1832
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 1300(sp)
  LUI t6, 1
  ADDIW t6, t6, -1836
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1836
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 1296(sp)
  LUI a0, 2
  ADDIW a0, a0, -736
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -912
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -744
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -840
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -672
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -848
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -496
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -856
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -504
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -864
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs5, 936(sp)
  FLW fs6, 936(sp)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 1292(sp)
  FSW fs4, 1288(sp)
  FSW fs3, 1284(sp)
  LUI a0, 1
  ADDIW a0, a0, -1468
  ADD a0, a0, sp
  SW s3, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -512
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -872
  ADD t6, t6, sp
  SD a0, 0(t6)
  FSW fs2, 1280(sp)
  FSW fs1, 1276(sp)
  FSW fs0, 1272(sp)
  LUI a0, 2
  ADDIW a0, a0, -520
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -880
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -528
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -888
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -556
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1632
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -536
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -544
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -896
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -552
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 632
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -572
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 1948(sp)
  LUI a0, 1
  ADDIW a0, a0, -576
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -408
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -560
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 912
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -648
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -904
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -548
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -548
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -548
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -588
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1644
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1844
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1844
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSGNJ.S fs9, fs2, fs3
  LUI a0, 1
  ADDIW a0, a0, -592
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1648
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1848
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1848
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSGNJ.S fs2, fs2, fs3
  LUI a0, 1
  ADDIW a0, a0, -196
  ADD a0, a0, sp
  FSW fs2, 0(a0)
  LW a0, 368(sp)
  FCVT.S.W fs2, a0
  FSW fs2, 1340(sp)
  FLW fs2, 1336(sp)
  FCVT.W.S a0, fs2, rtz
  SW a0, 372(sp)
  # implict jump to bb18
bb18:
  LW a0, 180(sp)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  ADD a0, t6, a0
  LUI t6, 2
  ADDIW t6, t6, 1000
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1000
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs2, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 460
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -196
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 460
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs2, fs3
  LUI t6, 1
  ADDIW t6, t6, 456
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 456
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FADD.S fs2, fs2, fs9
  LUI t6, 1
  ADDIW t6, t6, 416
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 416
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FADD.S fs2, fs2, fs0
  FSW fs2, 1716(sp)
  LUI a0, 2
  ADDIW a0, a0, -904
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 1008
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1008
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs2, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 444
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 444
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -548
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs2, fs1, fs2
  LUI a0, 1
  ADDIW a0, a0, -464
  ADD a0, a0, sp
  FSW fs2, 0(a0)
  LW a0, 180(sp)
  LUI a1, 2
  ADDIW a1, a1, 632
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  LUI t6, 2
  ADDIW t6, t6, 1016
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1016
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs2, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -468
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -468
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -464
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs3, fs2
  LUI a0, 1
  ADDIW a0, a0, -472
  ADD a0, a0, sp
  FSW fs2, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -888
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 944
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 944
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs2, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -480
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -480
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -472
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs3, fs2
  FSW fs2, 1456(sp)
  LUI a0, 2
  ADDIW a0, a0, -880
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1032
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs2, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -500
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 1272(sp)
  LUI t6, 1
  ADDIW t6, t6, -500
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs3, fs2
  LUI t6, 1
  ADDIW t6, t6, -504
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 1276(sp)
  LUI t6, 1
  ADDIW t6, t6, -504
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs3, fs2
  LUI t6, 1
  ADDIW t6, t6, -508
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 1280(sp)
  LUI t6, 1
  ADDIW t6, t6, -508
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs3, fs2
  LUI a0, 1
  ADDIW a0, a0, -512
  ADD a0, a0, sp
  FSW fs2, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -872
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 1040
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1040
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs2, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -520
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 1284(sp)
  LUI t6, 1
  ADDIW t6, t6, -520
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs3, fs2
  LUI t6, 1
  ADDIW t6, t6, -524
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 1288(sp)
  LUI t6, 1
  ADDIW t6, t6, -524
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs3, fs2
  LUI t6, 1
  ADDIW t6, t6, -528
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 1292(sp)
  LUI t6, 1
  ADDIW t6, t6, -528
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs3, fs2
  LUI a0, 1
  ADDIW a0, a0, -492
  ADD a0, a0, sp
  FSW fs2, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -856
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 1048
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1048
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs2, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -388
  ADD a0, a0, sp
  FSW fs2, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -912
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 1056
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1056
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs2, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -392
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -392
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -388
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs3, fs2
  LUI t6, 1
  ADDIW t6, t6, -400
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 1296(sp)
  LUI t6, 1
  ADDIW t6, t6, -400
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs3, fs2
  LUI t6, 1
  ADDIW t6, t6, -412
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 1300(sp)
  LUI t6, 1
  ADDIW t6, t6, -412
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs3, fs2
  LUI a0, 1
  ADDIW a0, a0, -436
  ADD a0, a0, sp
  FSW fs2, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -816
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 1064
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1064
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs2, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -448
  ADD a0, a0, sp
  FSW fs2, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -808
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 1072
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1072
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs2, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -448
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs3, fs2
  LUI t6, 1
  ADDIW t6, t6, -40
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 1304(sp)
  LUI t6, 1
  ADDIW t6, t6, -40
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs3, fs2
  LUI t6, 1
  ADDIW t6, t6, -92
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 1268(sp)
  LUI t6, 1
  ADDIW t6, t6, -92
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs3, fs2
  LUI t6, 1
  ADDIW t6, t6, -64
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 1316(sp)
  FLW fs3, 1312(sp)
  FADD.S fs2, fs3, fs2
  LUI a0, 1
  ADDIW a0, a0, -80
  ADD a0, a0, sp
  FSW fs2, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -776
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 1080
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1080
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs2, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -88
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -88
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -80
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs3, fs2
  LUI t6, 1
  ADDIW t6, t6, 44
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 1320(sp)
  LUI t6, 1
  ADDIW t6, t6, 44
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs3, fs2
  LUI a0, 1
  ADDIW a0, a0, 32
  ADD a0, a0, sp
  FSW fs2, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -992
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 1088
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1088
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs2, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -20
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 1324(sp)
  LUI t6, 1
  ADDIW t6, t6, -20
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs2, fs3
  LUI a0, 1
  ADDIW a0, a0, 8
  ADD a0, a0, sp
  FSW fs2, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -1056
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 1096
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1096
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs2, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -8
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -8
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 8
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs3, fs2
  LUI t6, 1
  ADDIW t6, t6, -168
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 1328(sp)
  LUI t6, 1
  ADDIW t6, t6, -168
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs3, fs2
  LUI a0, 1
  ADDIW a0, a0, -172
  ADD a0, a0, sp
  FSW fs2, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -1048
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 864
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 864
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs2, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -176
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 1332(sp)
  LUI t6, 1
  ADDIW t6, t6, -176
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs2, fs3
  LUI a0, 1
  ADDIW a0, a0, -180
  ADD a0, a0, sp
  FSW fs2, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -1040
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 792
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 792
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs2, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -184
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -184
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -180
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs3, fs2
  LUI t6, 1
  ADDIW t6, t6, -188
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 1340(sp)
  LUI t6, 1
  ADDIW t6, t6, -188
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs3, fs2
  LUI t6, 1
  ADDIW t6, t6, -192
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 1716(sp)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 1456(sp)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FSW fs2, 4(t6)
  LUI t6, 1
  ADDIW t6, t6, -512
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FSW fs2, 8(t6)
  LUI t6, 1
  ADDIW t6, t6, -492
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FSW fs2, 12(t6)
  LUI t6, 1
  ADDIW t6, t6, -436
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FSW fs2, 16(t6)
  LUI t6, 1
  ADDIW t6, t6, -64
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FSW fs2, 20(t6)
  LUI t6, 1
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FSW fs2, 24(t6)
  LUI t6, 1
  ADDIW t6, t6, -172
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FSW fs2, 28(t6)
  LUI t6, 1
  ADDIW t6, t6, -192
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1112
  ADD a0, a0, sp
  FSW fs2, 32(a0)
  LA a0, .CONSTANT.7.0
  LUI t6, 1
  ADDIW t6, t6, 1496
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1496
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs2, 0(a0)
  FSW fs2, 988(sp)
  FLW fs2, 988(sp)
  LUI a0, 2
  ADDIW a0, a0, -1112
  ADD a0, a0, sp
  FSW fs2, 36(a0)
  LW a0, 180(sp)
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  ADD a0, t6, a0
  LUI t6, 2
  ADDIW t6, t6, 800
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 800
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -128
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1648
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -128
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADDW a0, a1, a0
  LUI t6, 1
  ADDIW t6, t6, -16
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1644
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -16
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADDW a0, a1, a0
  LUI a1, 1
  ADDIW a1, a1, -12
  ADD a1, a1, sp
  SW a0, 0(a1)
  LUI a0, 2
  ADDIW a0, a0, 912
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 808
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 808
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -4
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -408
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -4
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADDW a0, a1, a0
  LUI a1, 1
  ADDIW a1, a1, 0
  ADD a1, a1, sp
  SW a0, 0(a1)
  LUI a0, 1
  ADDIW a0, a0, 0
  ADD a0, a0, sp
  LW a0, 0(a0)
  LW a1, 1948(sp)
  ADDW a0, a0, a1
  LUI a1, 1
  ADDIW a1, a1, 4
  ADD a1, a1, sp
  SW a0, 0(a1)
  LUI a0, 2
  ADDIW a0, a0, -896
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 816
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 816
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 12
  ADD t6, t6, sp
  SW a0, 0(t6)
  LW a0, 180(sp)
  ADD a0, s1, a0
  LUI t6, 2
  ADDIW t6, t6, 824
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 824
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 20
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 20
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 12
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADDW a0, a1, a0
  LUI t6, 1
  ADDIW t6, t6, 24
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1632
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 24
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADDW a0, a1, a0
  LUI a1, 1
  ADDIW a1, a1, 28
  ADD a1, a1, sp
  SW a0, 0(a1)
  LUI a0, 2
  ADDIW a0, a0, -864
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 832
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 832
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 36
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1468
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 36
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADDW a0, a0, a1
  LUI a1, 1
  ADDIW a1, a1, 40
  ADD a1, a1, sp
  SW a0, 0(a1)
  LUI a0, 2
  ADDIW a0, a0, -848
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 840
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 840
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 48
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 48
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 40
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADDW a0, a1, a0
  LUI a1, 1
  ADDIW a1, a1, -1656
  ADD a1, a1, sp
  SW a0, 0(a1)
  LUI a0, 2
  ADDIW a0, a0, -840
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 848
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 848
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -84
  ADD a1, a1, sp
  SW a0, 0(a1)
  LUI a0, 2
  ADDIW a0, a0, -824
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 856
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 856
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -76
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -76
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -84
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADDW a0, a1, a0
  LUI t6, 1
  ADDIW t6, t6, -72
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -72
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADDW a0, a1, a0
  LUI a1, 1
  ADDIW a1, a1, -1652
  ADD a1, a1, sp
  SW a0, 0(a1)
  LUI a0, 2
  ADDIW a0, a0, -800
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 784
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 784
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -60
  ADD a1, a1, sp
  SW a0, 0(a1)
  LUI a0, 2
  ADDIW a0, a0, -792
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 872
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 872
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -52
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -52
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -60
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADDW a0, a1, a0
  LUI t6, 1
  ADDIW t6, t6, -48
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1420
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -48
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADDW a0, a1, a0
  LUI a1, 1
  ADDIW a1, a1, -44
  ADD a1, a1, sp
  SW a0, 0(a1)
  LUI a0, 2
  ADDIW a0, a0, -784
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 880
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 880
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -36
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1416
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -36
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADDW a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, -32
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1516
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -32
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADDW a0, a1, a0
  LUI a1, 1
  ADDIW a1, a1, -28
  ADD a1, a1, sp
  SW a0, 0(a1)
  LUI a0, 2
  ADDIW a0, a0, -768
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 888
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 888
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -276
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1548
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -276
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADDW a0, a0, a1
  LUI a1, 1
  ADDIW a1, a1, -452
  ADD a1, a1, sp
  SW a0, 0(a1)
  LUI a0, 2
  ADDIW a0, a0, -760
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 896
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 896
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -444
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -444
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -452
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADDW a0, a1, a0
  LUI a1, 1
  ADDIW a1, a1, -440
  ADD a1, a1, sp
  SW a0, 0(a1)
  LUI a0, 2
  ADDIW a0, a0, -1064
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 180(sp)
  ADD a0, a0, a1
  LUI t6, 2
  ADDIW t6, t6, 904
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 904
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -432
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1532
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -432
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADDW a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, -428
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1520
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, -428
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADDW a0, a1, a0
  LUI a1, 1
  ADDIW a1, a1, -424
  ADD a1, a1, sp
  SW a0, 0(a1)
  LUI a0, 1
  ADDIW a0, a0, -424
  ADD a0, a0, sp
  LW a0, 0(a0)
  LW a1, 372(sp)
  ADDW a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, -456
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -12
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 4
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SW a0, 4(t6)
  LUI a0, 1
  ADDIW a0, a0, 28
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SW a0, 8(t6)
  LUI a0, 1
  ADDIW a0, a0, -1656
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SW a0, 12(t6)
  LUI a0, 1
  ADDIW a0, a0, -1652
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SW a0, 16(t6)
  LUI a0, 1
  ADDIW a0, a0, -44
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SW a0, 20(t6)
  LUI a0, 1
  ADDIW a0, a0, -28
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SW a0, 24(t6)
  LUI a0, 1
  ADDIW a0, a0, -440
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SW a0, 28(t6)
  LUI a0, 1
  ADDIW a0, a0, -456
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SW a0, 32(t6)
  LUI a0, 2
  ADDIW a0, a0, -1152
  ADD a0, a0, sp
  SW zero, 36(a0)
  LW a0, 372(sp)
  BNE a0, zero, bb20
  # implict jump to bb19
bb19:
  LUI t6, 1
  ADDIW t6, t6, -196
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -196
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSGNJ.S fs2, fs2, fs3
  LUI a0, 1
  ADDIW a0, a0, -1848
  ADD a0, a0, sp
  FSW fs2, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1648
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -592
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1844
  ADD a0, a0, sp
  FSW fs9, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1644
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -588
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -548
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -548
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -548
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -904
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -648
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 912
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -560
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -408
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -576
  ADD t6, t6, sp
  SW a0, 0(t6)
  LW a0, 1948(sp)
  LUI t6, 1
  ADDIW t6, t6, -572
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 632
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -552
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -896
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -544
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -536
  ADD a0, a0, sp
  SD s1, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1632
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -556
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -888
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -528
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -880
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -520
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs0, 1272(sp)
  FLW fs1, 1272(sp)
  FSGNJ.S fs0, fs0, fs1
  FLW fs1, 1276(sp)
  FLW fs2, 1276(sp)
  FSGNJ.S fs1, fs1, fs2
  FLW fs2, 1280(sp)
  FLW fs3, 1280(sp)
  FSGNJ.S fs2, fs2, fs3
  LUI a0, 2
  ADDIW a0, a0, -872
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -512
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1468
  ADD t6, t6, sp
  LW s3, 0(t6)
  FLW fs3, 1284(sp)
  FLW fs4, 1284(sp)
  FSGNJ.S fs3, fs3, fs4
  FLW fs4, 1288(sp)
  FLW fs5, 1288(sp)
  FSGNJ.S fs4, fs4, fs5
  FLW fs5, 1292(sp)
  FLW fs6, 1292(sp)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 936(sp)
  LUI a0, 2
  ADDIW a0, a0, -864
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -504
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -856
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -496
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -848
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -672
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -840
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -744
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -912
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -736
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs5, 1296(sp)
  FLW fs6, 1296(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1836
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1300(sp)
  FLW fs6, 1300(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI a0, 1
  ADDIW a0, a0, -1832
  ADD a0, a0, sp
  FSW fs5, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -824
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -728
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -660
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -816
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -720
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -808
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1416
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs5, 1304(sp)
  FLW fs6, 1304(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1828
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1268(sp)
  FLW fs6, 1268(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI a0, 1
  ADDIW a0, a0, -1824
  ADD a0, a0, sp
  FSW fs5, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -800
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1424
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -792
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -712
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1420
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 532
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1416
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 536
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs5, 1312(sp)
  FLW fs6, 1312(sp)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 1028(sp)
  FLW fs5, 1316(sp)
  FLW fs6, 1316(sp)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 1012(sp)
  LUI a0, 2
  ADDIW a0, a0, -784
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1440
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1516
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -648
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -776
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -704
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1548
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 548
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -768
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1448
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -760
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1456
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs5, 1320(sp)
  FLW fs6, 1320(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1820
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 1324(sp)
  FLW fs6, 1324(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI a0, 1
  ADDIW a0, a0, -1816
  ADD a0, a0, sp
  FSW fs5, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -992
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -696
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1532
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -636
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1064
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1472
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1056
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -688
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs5, 1328(sp)
  FLW fs6, 1328(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI a0, 1
  ADDIW a0, a0, -1520
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 1888(sp)
  LW a0, 1888(sp)
  SW a0, 1888(sp)
  FLW fs6, 1332(sp)
  FLW fs7, 1332(sp)
  FSGNJ.S fs6, fs6, fs7
  LUI a0, 2
  ADDIW a0, a0, -1048
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -680
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1040
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -752
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs7, 1340(sp)
  FLW fs8, 1340(sp)
  FSGNJ.S fs7, fs7, fs8
  LW a0, 372(sp)
  SW a0, 368(sp)
  JAL zero, bb17
bb20:
  ADDI a0, zero, 10
  LUI a1, 2
  ADDIW a1, a1, -1112
  ADD a1, a1, sp
  ADD a1, a1, zero
  CALL putfarray
  ADDI a0, zero, 10
  LUI a1, 2
  ADDIW a1, a1, -1152
  ADD a1, a1, sp
  ADD a1, a1, zero
  CALL putarray
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FLW fa0, 0(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  LW s0, 4(t6)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FLW fa0, 4(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SW s0, 4(t6)
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  LW s0, 8(t6)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FLW fa0, 8(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SW s0, 8(t6)
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  LW s0, 12(t6)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FLW fa0, 12(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SW s0, 12(t6)
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  LW s0, 16(t6)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FLW fa0, 16(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SW s0, 16(t6)
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  LW s0, 20(t6)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FLW fa0, 20(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SW s0, 20(t6)
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  LW s0, 24(t6)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FLW fa0, 24(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SW s0, 24(t6)
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  LW s0, 28(t6)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FLW fa0, 28(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SW s0, 28(t6)
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  LW s0, 32(t6)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FLW fa0, 32(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SW s0, 32(t6)
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  LW s0, 36(t6)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FLW fa0, 36(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SW s0, 36(t6)
  LA s0, k
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  ADD s0, t6, s0
  LW s0, 0(s0)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FLW fa0, 32(t6)
  FCVT.S.W fs0, s0
  FMUL.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  FLW fa0, 1636(sp)
  FLW fs0, 1636(sp)
  FSGNJ.S fa0, fa0, fs0
  CALL putfloat
  ADDI a0, zero, 10
  CALL putch
  FLW fa0, 436(sp)
  FLW fs0, 436(sp)
  FSGNJ.S fa0, fa0, fs0
  CALL putfloat
  ADDI a0, zero, 10
  CALL putch
  FLW fa0, 2032(sp)
  FLW fs0, 2032(sp)
  FSGNJ.S fa0, fa0, fs0
  CALL putfloat
  ADDI a0, zero, 10
  CALL putch
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LUI t6, 1
  ADDIW t6, t6, 632
  ADD t6, t6, sp
  FLD fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 640
  ADD t6, t6, sp
  FLD fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 648
  ADD t6, t6, sp
  FLD fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 656
  ADD t6, t6, sp
  FLD fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 664
  ADD t6, t6, sp
  FLD fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 672
  ADD t6, t6, sp
  FLD fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 680
  ADD t6, t6, sp
  FLD fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 688
  ADD t6, t6, sp
  FLD fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 696
  ADD t6, t6, sp
  FLD fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 704
  ADD t6, t6, sp
  FLD fs9, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 712
  ADD t6, t6, sp
  FLD fs10, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 720
  ADD t6, t6, sp
  FLD fs11, 0(t6)
  LUI ra, 2
  ADDIW ra, ra, 320
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 2
  ADDIW t6, t6, 328
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 336
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 344
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  LD s9, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 360
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1984
  ADD t6, t6, sp
  LD s11, 0(t6)
  LUI t0, 3
  ADDIW t0, t0, -2032
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb21:
  LW s0, 652(sp)
  LUI t6, 1
  ADDIW t6, t6, -1508
  ADD t6, t6, sp
  SW s0, 0(t6)
  LW s0, 656(sp)
  LUI t6, 1
  ADDIW t6, t6, -1504
  ADD t6, t6, sp
  SW s0, 0(t6)
  LW s0, 660(sp)
  LUI t6, 1
  ADDIW t6, t6, -1500
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -940
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -940
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -940
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -940
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1232(sp)
  LW s0, 664(sp)
  LUI t6, 1
  ADDIW t6, t6, -1496
  ADD t6, t6, sp
  SW s0, 0(t6)
  LW s0, 708(sp)
  LUI t6, 1
  ADDIW t6, t6, -1492
  ADD t6, t6, sp
  SW s0, 0(t6)
  LW s0, 824(sp)
  LUI t6, 1
  ADDIW t6, t6, -1488
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -916
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -916
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -916
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -916
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1196(sp)
  FSW fs7, 1200(sp)
  FSW fs8, 1204(sp)
  LW s0, 828(sp)
  LUI t6, 1
  ADDIW t6, t6, -1484
  ADD t6, t6, sp
  SW s0, 0(t6)
  FSW fs0, 1208(sp)
  FSW fs9, 1212(sp)
  LW s0, 832(sp)
  LUI a0, 1
  ADDIW a0, a0, -1152
  ADD a0, a0, sp
  SW s0, 0(a0)
  FSW fs10, 1216(sp)
  LW a0, 1876(sp)
  SW a0, 1876(sp)
  LW a0, 1876(sp)
  LUI t6, 1
  ADDIW t6, t6, -744
  ADD t6, t6, sp
  SW a0, 0(t6)
  FSW fs3, 1220(sp)
  FSW fs4, 1224(sp)
  FSW fs2, 1228(sp)
  FSW fs1, 1192(sp)
  LUI t6, 1
  ADDIW t6, t6, 144
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 144
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1236(sp)
  FLW fs0, 1640(sp)
  FLW fs1, 1640(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1240(sp)
  LUI t6, 1
  ADDIW t6, t6, -740
  ADD t6, t6, sp
  SW a1, 0(t6)
  FLW fs0, 1532(sp)
  FLW fs1, 1532(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1244(sp)
  LUI a0, 1
  ADDIW a0, a0, -1700
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -736
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1696
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -732
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1496(sp)
  FLW fs1, 1496(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1248(sp)
  FLW fs0, 1500(sp)
  FLW fs1, 1500(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1252(sp)
  FLW fs0, 1504(sp)
  FLW fs1, 1504(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1256(sp)
  FLW fs0, 1508(sp)
  FLW fs1, 1508(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1260(sp)
  FLW fs0, 1512(sp)
  FLW fs1, 1512(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1264(sp)
  LUI a0, 1
  ADDIW a0, a0, -1692
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -272
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1516(sp)
  FLW fs1, 1516(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1308(sp)
  LUI a0, 1
  ADDIW a0, a0, -1688
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -268
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1520(sp)
  FLW fs1, 1520(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1424(sp)
  FLW fs0, 1524(sp)
  FLW fs1, 1524(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1428(sp)
  FLW fs0, 1528(sp)
  FLW fs1, 1528(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1432(sp)
  FLW fs0, 1492(sp)
  FLW fs1, 1492(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1436(sp)
  LUI a0, 1
  ADDIW a0, a0, -1684
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -264
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1680
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -260
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1536(sp)
  FLW fs1, 1536(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1440(sp)
  FLW fs0, 1540(sp)
  FLW fs1, 1540(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1444(sp)
  FLW fs0, 1544(sp)
  FLW fs1, 1544(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1448(sp)
  LUI a0, 1
  ADDIW a0, a0, -1676
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -256
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1548(sp)
  FLW fs1, 1548(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1452(sp)
  LUI a0, 1
  ADDIW a0, a0, -1672
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -252
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1668
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -248
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1552(sp)
  FLW fs1, 1552(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1420(sp)
  FLW fs0, 1556(sp)
  FLW fs1, 1556(sp)
  FSGNJ.S fs0, fs0, fs1
  FLW fs1, 1560(sp)
  FLW fs2, 1560(sp)
  FSGNJ.S fs1, fs1, fs2
  FLW fs2, 1564(sp)
  FLW fs3, 1564(sp)
  FSGNJ.S fs2, fs2, fs3
  LUI a0, 1
  ADDIW a0, a0, -148
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -244
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1704
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -348
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1660
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -380
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs3, 1608(sp)
  FLW fs4, 1608(sp)
  FSGNJ.S fs3, fs3, fs4
  FLW fs4, 1724(sp)
  FLW fs5, 1724(sp)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 764(sp)
  FLW fs4, 1728(sp)
  FLW fs5, 1728(sp)
  FSGNJ.S fs4, fs4, fs5
  FLW fs5, 1732(sp)
  FLW fs6, 1732(sp)
  FSGNJ.S fs5, fs5, fs6
  FLW fs6, 1736(sp)
  FLW fs7, 1736(sp)
  FSGNJ.S fs6, fs6, fs7
  FSW fs6, 760(sp)
  FLW fs6, 1740(sp)
  FLW fs7, 1740(sp)
  FSGNJ.S fs6, fs6, fs7
  FSW fs6, 756(sp)
  LUI a0, 1
  ADDIW a0, a0, -100
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -376
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs6, 1744(sp)
  FLW fs7, 1744(sp)
  FSGNJ.S fs6, fs6, fs7
  FSW fs6, 752(sp)
  LUI a0, 1
  ADDIW a0, a0, -236
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -372
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs6, 1748(sp)
  FLW fs7, 1748(sp)
  FSGNJ.S fs6, fs6, fs7
  JAL zero, bb11
bb22:
  LUI t6, 1
  ADDIW t6, t6, -936
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -936
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs1, fs1, fs5
  LUI t6, 1
  ADDIW t6, t6, -936
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -936
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1924
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -968
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -968
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs1, fs1, fs5
  LUI t6, 1
  ADDIW t6, t6, -968
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -968
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1916
  ADD t6, t6, sp
  FSW fs10, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1912
  ADD t6, t6, sp
  FSW fs9, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1908
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1904
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1900
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1896
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1892
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -712
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -712
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1928
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -752
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -752
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1884
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 980(sp)
  FLW fs1, 980(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1880
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1156(sp)
  FLW fs1, 1156(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1876
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 204(sp)
  FLW fs1, 204(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1872
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 188(sp)
  FLW fs1, 188(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1868
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 140(sp)
  FLW fs1, 140(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1864
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 492(sp)
  FLW fs1, 492(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1860
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 488(sp)
  FLW fs1, 488(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1856
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 484(sp)
  FLW fs1, 484(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1964
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 440(sp)
  FLW fs1, 440(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -2000
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 476(sp)
  FLW fs1, 476(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1996
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 472(sp)
  FLW fs1, 472(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1992
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 468(sp)
  FLW fs1, 468(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1988
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 464(sp)
  FLW fs1, 464(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1984
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 460(sp)
  FLW fs1, 460(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1980
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 456(sp)
  FLW fs1, 456(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1976
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 452(sp)
  FLW fs1, 452(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1972
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 448(sp)
  FLW fs1, 448(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1068(sp)
  FLW fs0, 444(sp)
  FLW fs1, 444(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1064(sp)
  FLW fs0, 480(sp)
  FLW fs1, 480(sp)
  FSGNJ.S fs1, fs0, fs1
  FLW fs0, 588(sp)
  FLW fs2, 588(sp)
  FSGNJ.S fs0, fs0, fs2
  LUI t6, 1
  ADDIW t6, t6, -1064
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 584(sp)
  FLW fs2, 584(sp)
  FSGNJ.S fs2, fs0, fs2
  FLW fs0, 580(sp)
  FLW fs3, 580(sp)
  FSGNJ.S fs0, fs0, fs3
  LUI t6, 1
  ADDIW t6, t6, -908
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 576(sp)
  FLW fs3, 576(sp)
  FSGNJ.S fs0, fs0, fs3
  FLW fs3, 572(sp)
  FLW fs4, 572(sp)
  FSGNJ.S fs3, fs3, fs4
  FLW fs4, 568(sp)
  FLW fs5, 568(sp)
  FSGNJ.S fs4, fs4, fs5
  LUI t6, 1
  ADDIW t6, t6, -1060
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  FLW fs4, 564(sp)
  FLW fs5, 564(sp)
  FSGNJ.S fs4, fs4, fs5
  LUI t6, 1
  ADDIW t6, t6, -1056
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  FLW fs4, 560(sp)
  FLW fs5, 560(sp)
  FSGNJ.S fs5, fs4, fs5
  FLW fs4, 516(sp)
  FLW fs8, 516(sp)
  FSGNJ.S fs4, fs4, fs8
  JAL zero, bb5
