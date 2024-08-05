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
  ADDIW t0, t0, 1216
  ADD sp, sp, t0
  LUI t6, 2
  ADDIW t6, t6, -1808
  ADD t6, t6, sp
  FSD fs0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1800
  ADD t6, t6, sp
  FSD fs1, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1792
  ADD t6, t6, sp
  FSD fs2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1784
  ADD t6, t6, sp
  FSD fs3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1776
  ADD t6, t6, sp
  FSD fs4, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1768
  ADD t6, t6, sp
  FSD fs5, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  FSD fs6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1752
  ADD t6, t6, sp
  FSD fs7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1744
  ADD t6, t6, sp
  FSD fs8, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1736
  ADD t6, t6, sp
  FSD fs9, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1728
  ADD t6, t6, sp
  SD ra, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1720
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1712
  ADD t6, t6, sp
  SD s1, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1704
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1696
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1688
  ADD t6, t6, sp
  SD s4, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1680
  ADD t6, t6, sp
  SD s5, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1672
  ADD t6, t6, sp
  SD s6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1664
  ADD t6, t6, sp
  SD s7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1656
  ADD t6, t6, sp
  SD s8, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1648
  ADD t6, t6, sp
  SD s9, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1640
  ADD t6, t6, sp
  SD s10, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1632
  ADD t6, t6, sp
  SD s11, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1624
  ADD t6, t6, sp
  FSD fs10, 0(t6)
  CALL getint
  LA s0, k
  SW a0, 0(s0)
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADD a0, a0, zero
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 12
  LUI t6, 2
  ADDIW t6, t6, 1904
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1904
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 24
  LUI t6, 2
  ADDIW t6, t6, 1840
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1840
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 36
  LUI t6, 2
  ADDIW t6, t6, 1848
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1848
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 48
  LUI t6, 2
  ADDIW t6, t6, 1856
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1856
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 60
  LUI t6, 2
  ADDIW t6, t6, 1864
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1864
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 72
  LUI t6, 2
  ADDIW t6, t6, 1872
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1872
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 84
  LUI t6, 2
  ADDIW t6, t6, 1880
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1880
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 96
  LUI t6, 2
  ADDIW t6, t6, 1888
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1888
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 108
  LUI t6, 2
  ADDIW t6, t6, 1896
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1896
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 120
  LUI t6, 2
  ADDIW t6, t6, 1832
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1832
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 132
  LUI t6, 2
  ADDIW t6, t6, 1912
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1912
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 144
  LUI t6, 2
  ADDIW t6, t6, 1920
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1920
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 156
  LUI t6, 2
  ADDIW t6, t6, 1928
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1928
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 168
  LUI t6, 2
  ADDIW t6, t6, 1936
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1936
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 180
  LUI t6, 2
  ADDIW t6, t6, 1944
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1944
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 192
  LUI t6, 2
  ADDIW t6, t6, 1952
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1952
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 204
  LUI t6, 2
  ADDIW t6, t6, 1960
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1960
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 216
  LUI t6, 2
  ADDIW t6, t6, 1968
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1968
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 228
  LUI t6, 3
  ADDIW t6, t6, -1744
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1744
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 240
  LUI t6, 3
  ADDIW t6, t6, -1752
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1752
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 252
  LUI t6, 3
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1760
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 264
  LUI t6, 3
  ADDIW t6, t6, -1768
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1768
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 276
  LUI t6, 3
  ADDIW t6, t6, -1776
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1776
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 288
  LUI t6, 3
  ADDIW t6, t6, -1784
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1784
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 300
  LUI t6, 3
  ADDIW t6, t6, -1792
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1792
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 312
  LUI t6, 3
  ADDIW t6, t6, -1800
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1800
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 324
  LUI t6, 3
  ADDIW t6, t6, -1808
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1808
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 336
  LUI t6, 3
  ADDIW t6, t6, -1816
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1816
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 348
  LUI t6, 3
  ADDIW t6, t6, -1824
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1824
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 360
  LUI t6, 3
  ADDIW t6, t6, -1832
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1832
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 372
  LUI t6, 3
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1840
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 384
  LUI t6, 3
  ADDIW t6, t6, -1848
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1848
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 396
  LUI t6, 3
  ADDIW t6, t6, -1856
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1856
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 408
  LUI t6, 3
  ADDIW t6, t6, -1928
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1928
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 420
  LUI t6, 3
  ADDIW t6, t6, -1992
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1992
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 432
  LUI t6, 3
  ADDIW t6, t6, -1984
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1984
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 444
  LUI t6, 3
  ADDIW t6, t6, -1976
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1976
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 456
  LUI t6, 3
  ADDIW t6, t6, -1968
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1968
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  ADDI a0, a0, 468
  LUI t6, 3
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1960
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -88
  ADD a0, a0, sp
  ADD a0, a0, zero
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -88
  ADD a0, a0, sp
  ADDI a0, a0, 12
  LUI t6, 3
  ADDIW t6, t6, -1952
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1952
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -88
  ADD a0, a0, sp
  ADDI a0, a0, 24
  LUI t6, 3
  ADDIW t6, t6, -1944
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1944
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -88
  ADD a0, a0, sp
  ADDI a0, a0, 36
  LUI t6, 3
  ADDIW t6, t6, -1936
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1936
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -88
  ADD a0, a0, sp
  ADDI a0, a0, 48
  LUI t6, 3
  ADDIW t6, t6, -2000
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -2000
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -88
  ADD a0, a0, sp
  ADDI a0, a0, 60
  LUI t6, 3
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1920
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -88
  ADD a0, a0, sp
  ADDI a0, a0, 72
  LUI t6, 3
  ADDIW t6, t6, -1912
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1912
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -88
  ADD a0, a0, sp
  ADDI a0, a0, 84
  LUI t6, 3
  ADDIW t6, t6, -1904
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1904
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -88
  ADD a0, a0, sp
  ADDI a0, a0, 96
  LUI t6, 3
  ADDIW t6, t6, -1896
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1896
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -88
  ADD a0, a0, sp
  ADDI a0, a0, 108
  LUI t6, 3
  ADDIW t6, t6, -1888
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1888
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -88
  ADD a0, a0, sp
  ADDI a0, a0, 120
  LUI t6, 3
  ADDIW t6, t6, -1880
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1880
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -88
  ADD a0, a0, sp
  ADDI a0, a0, 132
  LUI t6, 3
  ADDIW t6, t6, -1872
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1872
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -88
  ADD a0, a0, sp
  ADDI a0, a0, 144
  LUI t6, 2
  ADDIW t6, t6, 696
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 696
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -88
  ADD a0, a0, sp
  ADDI a0, a0, 156
  LUI t6, 2
  ADDIW t6, t6, -832
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -832
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -88
  ADD a0, a0, sp
  ADDI a0, a0, 168
  LUI t6, 2
  ADDIW t6, t6, -840
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -840
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -88
  ADD a0, a0, sp
  ADDI a0, a0, 180
  LUI t6, 2
  ADDIW t6, t6, -848
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -848
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -88
  ADD a0, a0, sp
  ADDI a0, a0, 192
  LUI t6, 2
  ADDIW t6, t6, -856
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -856
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -88
  ADD a0, a0, sp
  ADDI a0, a0, 204
  LUI t6, 2
  ADDIW t6, t6, -864
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -864
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -88
  ADD a0, a0, sp
  ADDI a0, a0, 216
  LUI t6, 2
  ADDIW t6, t6, -872
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -872
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -88
  ADD a0, a0, sp
  ADDI a0, a0, 228
  LUI t6, 2
  ADDIW t6, t6, -880
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -880
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -88
  ADD a0, a0, sp
  ADDI a0, a0, 240
  LUI t6, 2
  ADDIW t6, t6, -888
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -888
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -88
  ADD a0, a0, sp
  ADDI a0, a0, 252
  LUI t6, 2
  ADDIW t6, t6, -896
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -896
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -88
  ADD a0, a0, sp
  ADDI a0, a0, 264
  LUI t6, 2
  ADDIW t6, t6, -904
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -904
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -88
  ADD a0, a0, sp
  ADDI a0, a0, 276
  LUI t6, 2
  ADDIW t6, t6, -912
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -912
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LA a0, k
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LUI a1, 2
  ADDIW a1, a1, -568
  ADD a1, a1, sp
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 1100
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 1904
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1360
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 1840
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1356
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 1848
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1352
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 1856
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1348
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 1864
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1344
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 1872
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 1084
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 1880
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1340
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 1888
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1336
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 1896
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1332
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 1832
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1380
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 1912
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1324
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 1920
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1320
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 1928
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 1396
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 1936
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 1392
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 1944
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1316
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 1952
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1312
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 1960
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1308
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 1968
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1304
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 3
  ADDIW a1, a1, -1744
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1300
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 3
  ADDIW a1, a1, -1752
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1296
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 3
  ADDIW a1, a1, -1760
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1292
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 3
  ADDIW a1, a1, -1768
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1288
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 3
  ADDIW a1, a1, -1776
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 3
  ADDIW a1, a1, -1784
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1284
  ADD a1, a1, sp
  FSW fs1, 0(a1)
  LUI a1, 3
  ADDIW a1, a1, -1792
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1428
  ADD a1, a1, sp
  FSW fs1, 0(a1)
  LUI a1, 3
  ADDIW a1, a1, -1800
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1476
  ADD a1, a1, sp
  FSW fs1, 0(a1)
  LUI a1, 3
  ADDIW a1, a1, -1808
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 1344
  ADD a1, a1, sp
  FSW fs1, 0(a1)
  LUI a1, 3
  ADDIW a1, a1, -1816
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 1340
  ADD a1, a1, sp
  FSW fs1, 0(a1)
  LUI a1, 3
  ADDIW a1, a1, -1824
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1472
  ADD a1, a1, sp
  FSW fs1, 0(a1)
  LUI a1, 3
  ADDIW a1, a1, -1832
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1468
  ADD a1, a1, sp
  FSW fs1, 0(a1)
  LUI a1, 3
  ADDIW a1, a1, -1840
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1464
  ADD a1, a1, sp
  FSW fs1, 0(a1)
  LUI a1, 3
  ADDIW a1, a1, -1848
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1460
  ADD a1, a1, sp
  FSW fs1, 0(a1)
  LUI a1, 3
  ADDIW a1, a1, -1856
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1456
  ADD a1, a1, sp
  FSW fs1, 0(a1)
  LUI a1, 3
  ADDIW a1, a1, -1928
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs8, 0(a1)
  LUI a1, 3
  ADDIW a1, a1, -1992
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs7, 0(a1)
  LUI a1, 3
  ADDIW a1, a1, -1984
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs2, 0(a1)
  LUI a1, 3
  ADDIW a1, a1, -1976
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs3, 0(a1)
  LUI a1, 3
  ADDIW a1, a1, -1968
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs5, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1452
  ADD a1, a1, sp
  FSW fs5, 0(a1)
  LUI a1, 3
  ADDIW a1, a1, -1960
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs5, 0(a0)
  ADDI a0, zero, 0
  FCVT.S.W fs6, a0
  LUI a0, 1
  ADDIW a0, a0, -1448
  ADD a0, a0, sp
  FSW fs6, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1448
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FEQ.S a0, fs5, fs6
  XORI a0, a0, 1
  BNE a0, zero, bb22
  # implict jump to bb1
bb1:
  LUI t6, 1
  ADDIW t6, t6, 1100
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1100
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 972(sp)
  LUI t6, 1
  ADDIW t6, t6, -1360
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1360
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 976(sp)
  LUI t6, 1
  ADDIW t6, t6, -1356
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1356
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 980(sp)
  LUI t6, 1
  ADDIW t6, t6, -1352
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1352
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 984(sp)
  LUI t6, 1
  ADDIW t6, t6, -1348
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1348
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 988(sp)
  LUI t6, 1
  ADDIW t6, t6, -1344
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1344
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 992(sp)
  LUI t6, 1
  ADDIW t6, t6, 1084
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1084
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 996(sp)
  LUI t6, 1
  ADDIW t6, t6, -1340
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1340
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 1000(sp)
  LUI t6, 1
  ADDIW t6, t6, -1336
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1336
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 1004(sp)
  LUI t6, 1
  ADDIW t6, t6, -1332
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1332
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 1008(sp)
  LUI t6, 1
  ADDIW t6, t6, -1380
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1380
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 860(sp)
  LUI t6, 1
  ADDIW t6, t6, -1324
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1324
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 812(sp)
  LUI t6, 1
  ADDIW t6, t6, -1320
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1320
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 816(sp)
  LUI t6, 1
  ADDIW t6, t6, 1396
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1396
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 820(sp)
  LUI t6, 1
  ADDIW t6, t6, 1392
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1392
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 824(sp)
  LUI t6, 1
  ADDIW t6, t6, -1316
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1316
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 828(sp)
  LUI t6, 1
  ADDIW t6, t6, -1312
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1312
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 832(sp)
  LUI t6, 1
  ADDIW t6, t6, -1308
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1308
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 836(sp)
  LUI t6, 1
  ADDIW t6, t6, -1304
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1304
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 840(sp)
  LUI t6, 1
  ADDIW t6, t6, -1300
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1300
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 844(sp)
  LUI t6, 1
  ADDIW t6, t6, -1296
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1296
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 848(sp)
  LUI t6, 1
  ADDIW t6, t6, -1292
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1292
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 852(sp)
  LUI t6, 1
  ADDIW t6, t6, -1288
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1288
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 856(sp)
  FSW fs0, 808(sp)
  LUI t6, 1
  ADDIW t6, t6, -1284
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1284
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs0, fs0, fs6
  FSW fs0, 864(sp)
  LUI t6, 1
  ADDIW t6, t6, -1428
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1428
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs0, fs0, fs6
  FSW fs0, 868(sp)
  LUI t6, 1
  ADDIW t6, t6, -1476
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1476
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs0, fs0, fs6
  FSW fs0, 872(sp)
  LUI t6, 1
  ADDIW t6, t6, 1344
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1344
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs0, fs0, fs6
  FSW fs0, 876(sp)
  LUI t6, 1
  ADDIW t6, t6, 1340
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1340
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs0, fs0, fs6
  FSW fs0, 880(sp)
  LUI t6, 1
  ADDIW t6, t6, -1472
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1472
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs0, fs0, fs6
  FSW fs0, 884(sp)
  LUI t6, 1
  ADDIW t6, t6, -1468
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1468
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs0, fs0, fs6
  FSW fs0, 888(sp)
  LUI t6, 1
  ADDIW t6, t6, -1464
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1464
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs0, fs0, fs6
  LUI t6, 1
  ADDIW t6, t6, -1540
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1460
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1460
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs0, fs0, fs6
  LUI t6, 1
  ADDIW t6, t6, -1536
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1456
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1456
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs0, fs0, fs6
  LUI t6, 1
  ADDIW t6, t6, -1532
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1452
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1452
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs4, fs4, fs6
  # implict jump to bb2
bb2:
  FSW fs5, 204(sp)
  FSW fs3, 252(sp)
  FSW fs2, 396(sp)
  FSW fs7, 392(sp)
  FSW fs8, 388(sp)
  LUI t6, 1
  ADDIW t6, t6, -1532
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1532
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 384(sp)
  LUI t6, 1
  ADDIW t6, t6, -1536
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1536
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 380(sp)
  LUI t6, 1
  ADDIW t6, t6, -1540
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1540
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 376(sp)
  FLW fs0, 888(sp)
  FLW fs1, 888(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 372(sp)
  FLW fs0, 884(sp)
  FLW fs1, 884(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 368(sp)
  FLW fs0, 880(sp)
  FLW fs1, 880(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 364(sp)
  FLW fs0, 876(sp)
  FLW fs1, 876(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 360(sp)
  FLW fs0, 872(sp)
  FLW fs1, 872(sp)
  FSGNJ.S fs0, fs0, fs1
  FLW fs1, 868(sp)
  FLW fs2, 868(sp)
  FSGNJ.S fs1, fs1, fs2
  FLW fs3, 864(sp)
  FLW fs6, 864(sp)
  FSGNJ.S fs6, fs3, fs6
  FLW fs3, 808(sp)
  FLW fs7, 808(sp)
  FSGNJ.S fs8, fs3, fs7
  FLW fs3, 856(sp)
  FLW fs7, 856(sp)
  FSGNJ.S fs3, fs3, fs7
  FSW fs3, 356(sp)
  FLW fs3, 852(sp)
  FLW fs7, 852(sp)
  FSGNJ.S fs3, fs3, fs7
  FSW fs3, 300(sp)
  FLW fs3, 848(sp)
  FLW fs7, 848(sp)
  FSGNJ.S fs3, fs3, fs7
  FSW fs3, 348(sp)
  FLW fs3, 844(sp)
  FLW fs7, 844(sp)
  FSGNJ.S fs3, fs3, fs7
  FSW fs3, 344(sp)
  FLW fs3, 840(sp)
  FLW fs7, 840(sp)
  FSGNJ.S fs3, fs3, fs7
  FSW fs3, 1636(sp)
  FLW fs3, 836(sp)
  FLW fs7, 836(sp)
  FSGNJ.S fs3, fs3, fs7
  FSW fs3, 340(sp)
  FLW fs3, 832(sp)
  FLW fs7, 832(sp)
  FSGNJ.S fs3, fs3, fs7
  FSW fs3, 1628(sp)
  FLW fs3, 828(sp)
  FLW fs7, 828(sp)
  FSGNJ.S fs3, fs3, fs7
  FSW fs3, 336(sp)
  FLW fs3, 824(sp)
  FLW fs7, 824(sp)
  FSGNJ.S fs3, fs3, fs7
  FSW fs3, 1620(sp)
  FLW fs3, 820(sp)
  FLW fs7, 820(sp)
  FSGNJ.S fs3, fs3, fs7
  FSW fs3, 332(sp)
  FLW fs3, 816(sp)
  FLW fs7, 816(sp)
  FSGNJ.S fs3, fs3, fs7
  FSW fs3, 328(sp)
  FLW fs3, 812(sp)
  FLW fs7, 812(sp)
  FSGNJ.S fs3, fs3, fs7
  FSW fs3, 324(sp)
  FLW fs3, 860(sp)
  FLW fs7, 860(sp)
  FSGNJ.S fs3, fs3, fs7
  FSW fs3, 320(sp)
  FLW fs3, 1008(sp)
  FLW fs7, 1008(sp)
  FSGNJ.S fs3, fs3, fs7
  FSW fs3, 1804(sp)
  FLW fs3, 1004(sp)
  FLW fs7, 1004(sp)
  FSGNJ.S fs3, fs3, fs7
  FSW fs3, 316(sp)
  FLW fs3, 1000(sp)
  FLW fs7, 1000(sp)
  FSGNJ.S fs3, fs3, fs7
  FSW fs3, 312(sp)
  FLW fs3, 996(sp)
  FLW fs7, 996(sp)
  FSGNJ.S fs3, fs3, fs7
  FSW fs3, 148(sp)
  FLW fs3, 992(sp)
  FLW fs7, 992(sp)
  FSGNJ.S fs3, fs3, fs7
  FSW fs3, 304(sp)
  FLW fs3, 988(sp)
  FLW fs7, 988(sp)
  FSGNJ.S fs3, fs3, fs7
  FSW fs3, 352(sp)
  FLW fs3, 984(sp)
  FLW fs7, 984(sp)
  FSGNJ.S fs3, fs3, fs7
  FSW fs3, 92(sp)
  FLW fs3, 980(sp)
  FLW fs7, 980(sp)
  FSGNJ.S fs2, fs3, fs7
  LUI t6, 1
  ADDIW t6, t6, 244
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs3, 976(sp)
  FLW fs7, 976(sp)
  FSGNJ.S fs3, fs3, fs7
  FLW fs7, 972(sp)
  FLW fs9, 972(sp)
  FSGNJ.S fs7, fs7, fs9
  FADD.S fs7, fs7, fs3
  LUI t6, 1
  ADDIW t6, t6, 244
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FADD.S fs5, fs7, fs2
  LUI t6, 1
  ADDIW t6, t6, -1448
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FEQ.S a0, fs5, fs9
  XORI a0, a0, 1
  BNE a0, zero, bb4
  # implict jump to bb3
bb3:
  FSW fs3, 972(sp)
  LUI t6, 1
  ADDIW t6, t6, 244
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 244
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSGNJ.S fs2, fs2, fs3
  LUI t6, 1
  ADDIW t6, t6, 244
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 244
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 976(sp)
  FLW fs3, 92(sp)
  FLW fs9, 92(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 980(sp)
  FLW fs3, 352(sp)
  FLW fs9, 352(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 984(sp)
  FLW fs3, 304(sp)
  FLW fs9, 304(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 988(sp)
  FLW fs3, 148(sp)
  FLW fs9, 148(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 992(sp)
  FLW fs3, 312(sp)
  FLW fs9, 312(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 996(sp)
  FLW fs3, 316(sp)
  FLW fs9, 316(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 1000(sp)
  FLW fs3, 1804(sp)
  FLW fs9, 1804(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 1004(sp)
  FLW fs3, 320(sp)
  FLW fs9, 320(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 1008(sp)
  FLW fs3, 324(sp)
  FLW fs9, 324(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 860(sp)
  FLW fs3, 328(sp)
  FLW fs9, 328(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 812(sp)
  FLW fs3, 332(sp)
  FLW fs9, 332(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 816(sp)
  FLW fs3, 1620(sp)
  FLW fs9, 1620(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 820(sp)
  FLW fs3, 336(sp)
  FLW fs9, 336(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 824(sp)
  FLW fs3, 1628(sp)
  FLW fs9, 1628(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 828(sp)
  FLW fs3, 340(sp)
  FLW fs9, 340(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 832(sp)
  FLW fs3, 1636(sp)
  FLW fs9, 1636(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 836(sp)
  FLW fs3, 344(sp)
  FLW fs9, 344(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 840(sp)
  FLW fs3, 348(sp)
  FLW fs9, 348(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 844(sp)
  FLW fs3, 300(sp)
  FLW fs9, 300(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 848(sp)
  FLW fs3, 356(sp)
  FLW fs9, 356(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 852(sp)
  FSW fs8, 856(sp)
  FSW fs6, 808(sp)
  FSW fs1, 864(sp)
  FSW fs0, 868(sp)
  FLW fs0, 360(sp)
  FLW fs1, 360(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 872(sp)
  FLW fs0, 364(sp)
  FLW fs1, 364(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 876(sp)
  FLW fs0, 368(sp)
  FLW fs1, 368(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 880(sp)
  FLW fs0, 372(sp)
  FLW fs1, 372(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 884(sp)
  FLW fs0, 376(sp)
  FLW fs1, 376(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 888(sp)
  FLW fs0, 380(sp)
  FLW fs1, 380(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1540
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 384(sp)
  FLW fs1, 384(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1536
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 388(sp)
  FLW fs1, 388(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1532
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 392(sp)
  FLW fs1, 392(sp)
  FSGNJ.S fs8, fs0, fs1
  FLW fs1, 396(sp)
  FLW fs2, 396(sp)
  FSGNJ.S fs7, fs1, fs2
  FLW fs2, 252(sp)
  FLW fs3, 252(sp)
  FSGNJ.S fs2, fs2, fs3
  FSGNJ.S fs3, fs4, fs4
  FLW fs4, 204(sp)
  FLW fs6, 204(sp)
  FSGNJ.S fs4, fs4, fs6
  JAL zero, bb2
bb4:
  FSW fs3, 1452(sp)
  LUI t6, 1
  ADDIW t6, t6, 244
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 244
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSGNJ.S fs2, fs2, fs3
  LUI t6, 1
  ADDIW t6, t6, 244
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 244
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 1456(sp)
  FLW fs3, 92(sp)
  FLW fs9, 92(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 1460(sp)
  FLW fs3, 352(sp)
  FLW fs9, 352(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 1412(sp)
  FLW fs3, 304(sp)
  FLW fs9, 304(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 1468(sp)
  FLW fs3, 148(sp)
  FLW fs9, 148(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 1472(sp)
  FLW fs3, 312(sp)
  FLW fs9, 312(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 1476(sp)
  FLW fs3, 316(sp)
  FLW fs9, 316(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 1480(sp)
  FLW fs3, 1804(sp)
  FLW fs9, 1804(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 1484(sp)
  FLW fs3, 320(sp)
  FLW fs9, 320(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 1488(sp)
  FLW fs3, 324(sp)
  FLW fs9, 324(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 1492(sp)
  FLW fs3, 328(sp)
  FLW fs9, 328(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 1496(sp)
  FLW fs3, 332(sp)
  FLW fs9, 332(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 1500(sp)
  FLW fs3, 1620(sp)
  FLW fs9, 1620(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 1504(sp)
  FLW fs3, 336(sp)
  FLW fs9, 336(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 1508(sp)
  FLW fs3, 1628(sp)
  FLW fs9, 1628(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 1164(sp)
  FLW fs3, 340(sp)
  FLW fs9, 340(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 916(sp)
  FLW fs3, 1636(sp)
  FLW fs9, 1636(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 920(sp)
  FLW fs3, 344(sp)
  FLW fs9, 344(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 924(sp)
  FLW fs3, 348(sp)
  FLW fs9, 348(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 928(sp)
  FLW fs3, 300(sp)
  FLW fs9, 300(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 932(sp)
  FLW fs3, 356(sp)
  FLW fs9, 356(sp)
  FSGNJ.S fs3, fs3, fs9
  FSW fs3, 936(sp)
  FSW fs8, 940(sp)
  FSW fs6, 944(sp)
  FSW fs1, 948(sp)
  FSW fs0, 952(sp)
  FLW fs0, 360(sp)
  FLW fs1, 360(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 956(sp)
  FLW fs0, 364(sp)
  FLW fs1, 364(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 960(sp)
  FLW fs0, 368(sp)
  FLW fs1, 368(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 912(sp)
  FLW fs0, 372(sp)
  FLW fs1, 372(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 968(sp)
  FLW fs0, 376(sp)
  FLW fs1, 376(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1056
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 380(sp)
  FLW fs1, 380(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1052
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 384(sp)
  FLW fs1, 384(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1048
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 388(sp)
  FLW fs1, 388(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1044
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 392(sp)
  FLW fs1, 392(sp)
  FSGNJ.S fs8, fs0, fs1
  FLW fs0, 396(sp)
  FLW fs1, 396(sp)
  FSGNJ.S fs7, fs0, fs1
  FLW fs0, 252(sp)
  FLW fs1, 252(sp)
  FSGNJ.S fs2, fs0, fs1
  FLW fs0, 204(sp)
  FLW fs1, 204(sp)
  FSGNJ.S fs0, fs0, fs1
  # implict jump to bb5
bb5:
  FSW fs5, 168(sp)
  FSW fs0, 164(sp)
  FSW fs4, 160(sp)
  FSW fs2, 156(sp)
  FSW fs7, 152(sp)
  FSW fs8, 96(sp)
  LUI t6, 1
  ADDIW t6, t6, -1044
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1044
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 144(sp)
  LUI t6, 1
  ADDIW t6, t6, -1048
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1048
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 140(sp)
  LUI t6, 1
  ADDIW t6, t6, -1052
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1052
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 136(sp)
  LUI t6, 1
  ADDIW t6, t6, -1056
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1056
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 132(sp)
  FLW fs0, 968(sp)
  FLW fs1, 968(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 128(sp)
  FLW fs0, 912(sp)
  FLW fs1, 912(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 124(sp)
  FLW fs0, 960(sp)
  FLW fs1, 960(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 120(sp)
  FLW fs0, 956(sp)
  FLW fs1, 956(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 116(sp)
  FLW fs0, 952(sp)
  FLW fs1, 952(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 112(sp)
  FLW fs0, 948(sp)
  FLW fs1, 948(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 108(sp)
  FLW fs0, 944(sp)
  FLW fs1, 944(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 104(sp)
  FLW fs0, 940(sp)
  FLW fs1, 940(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 100(sp)
  FLW fs0, 936(sp)
  FLW fs1, 936(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 308(sp)
  FLW fs0, 932(sp)
  FLW fs1, 932(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 704(sp)
  FLW fs0, 928(sp)
  FLW fs1, 928(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 700(sp)
  FLW fs0, 924(sp)
  FLW fs1, 924(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 696(sp)
  FLW fs0, 920(sp)
  FLW fs1, 920(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 692(sp)
  FLW fs0, 916(sp)
  FLW fs1, 916(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 688(sp)
  FLW fs0, 1164(sp)
  FLW fs1, 1164(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 684(sp)
  FLW fs0, 1508(sp)
  FLW fs1, 1508(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 680(sp)
  FLW fs0, 1504(sp)
  FLW fs1, 1504(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 676(sp)
  FLW fs0, 1500(sp)
  FLW fs1, 1500(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 672(sp)
  FLW fs0, 1496(sp)
  FLW fs1, 1496(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1744
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1492(sp)
  FLW fs1, 1492(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1748
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1488(sp)
  FLW fs1, 1488(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1752
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1484(sp)
  FLW fs1, 1484(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1756
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1480(sp)
  FLW fs1, 1480(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1476(sp)
  FLW fs1, 1476(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1764
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1472(sp)
  FLW fs1, 1472(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1768
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1468(sp)
  FLW fs1, 1468(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1772
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1412(sp)
  FLW fs1, 1412(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1776
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1460(sp)
  FLW fs1, 1460(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1928
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1456(sp)
  FLW fs1, 1456(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1984
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1452(sp)
  FLW fs1, 1452(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1988
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1984
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1988
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1876
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1876
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1928
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1872
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1872
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1776
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1868
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1768
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1772
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1864
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1864
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1764
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1860
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1860
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1856
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1752
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1756
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1852
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1852
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1748
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1848
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1848
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1744
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1844
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 676(sp)
  FLW fs1, 672(sp)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 680(sp)
  LUI t6, 1
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1836
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 684(sp)
  LUI t6, 1
  ADDIW t6, t6, -1836
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1832
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 692(sp)
  FLW fs1, 688(sp)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1880
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 696(sp)
  LUI t6, 1
  ADDIW t6, t6, -1880
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1824
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 700(sp)
  LUI t6, 1
  ADDIW t6, t6, -1824
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs2, fs1, fs0
  FLW fs0, 308(sp)
  FLW fs1, 704(sp)
  FADD.S fs3, fs1, fs0
  FLW fs0, 100(sp)
  FADD.S fs3, fs3, fs0
  FLW fs0, 104(sp)
  FADD.S fs3, fs3, fs0
  FLW fs0, 112(sp)
  FLW fs1, 108(sp)
  FADD.S fs4, fs1, fs0
  FLW fs0, 116(sp)
  FADD.S fs4, fs4, fs0
  FLW fs0, 120(sp)
  FADD.S fs4, fs4, fs0
  FLW fs0, 128(sp)
  FLW fs1, 124(sp)
  FADD.S fs5, fs1, fs0
  FLW fs0, 132(sp)
  FADD.S fs5, fs5, fs0
  FLW fs0, 136(sp)
  FADD.S fs5, fs5, fs0
  FLW fs0, 144(sp)
  FLW fs1, 140(sp)
  FADD.S fs6, fs1, fs0
  FLW fs0, 96(sp)
  FADD.S fs6, fs6, fs0
  FLW fs0, 152(sp)
  FADD.S fs6, fs6, fs0
  FLW fs0, 160(sp)
  FLW fs1, 156(sp)
  FADD.S fs7, fs1, fs0
  FLW fs0, 164(sp)
  FADD.S fs0, fs7, fs0
  FLW fs1, 168(sp)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1868
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 312
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1856
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 312
  ADD t6, t6, sp
  FSW fs1, 4(t6)
  LUI t6, 1
  ADDIW t6, t6, -1844
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 312
  ADD t6, t6, sp
  FSW fs1, 8(t6)
  LUI t6, 1
  ADDIW t6, t6, -1832
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 312
  ADD t6, t6, sp
  FSW fs1, 12(t6)
  LUI t6, 2
  ADDIW t6, t6, 312
  ADD t6, t6, sp
  FSW fs2, 16(t6)
  LUI t6, 2
  ADDIW t6, t6, 312
  ADD t6, t6, sp
  FSW fs3, 20(t6)
  LUI t6, 2
  ADDIW t6, t6, 312
  ADD t6, t6, sp
  FSW fs4, 24(t6)
  LUI t6, 2
  ADDIW t6, t6, 312
  ADD t6, t6, sp
  FSW fs5, 28(t6)
  LUI a0, 2
  ADDIW a0, a0, 312
  ADD a0, a0, sp
  FSW fs6, 32(a0)
  LUI a0, 2
  ADDIW a0, a0, 312
  ADD a0, a0, sp
  FSW fs0, 36(a0)
  ADDI a0, zero, 10
  LUI a1, 2
  ADDIW a1, a1, 312
  ADD a1, a1, sp
  ADD a1, a1, zero
  CALL putfarray
  LA a0, k
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  SW a0, 1052(sp)
  LW a0, 1052(sp)
  LUI t6, 2
  ADDIW t6, t6, 312
  ADD t6, t6, sp
  ADD a0, t6, a0
  FLW fs0, 0(a0)
  FSW fs0, 172(sp)
  LUI a0, 2
  ADDIW a0, a0, -912
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 1052(sp)
  ADD a0, a0, a1
  LW s11, 0(a0)
  LUI a0, 3
  ADDIW a0, a0, -1944
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 1052(sp)
  ADD a0, a0, a1
  LW a1, 0(a0)
  LUI a0, 3
  ADDIW a0, a0, -1912
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -2048
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1856
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs0, 0(a0)
  FSW fs0, 176(sp)
  LUI a0, 3
  ADDIW a0, a0, -1952
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -2044
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -2000
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -2040
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1920
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -2036
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1888
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs0, 0(a0)
  FSW fs0, 180(sp)
  LUI a0, 2
  ADDIW a0, a0, 1944
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs0, 0(a0)
  FSW fs0, 184(sp)
  LUI a0, 2
  ADDIW a0, a0, 1880
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs0, 0(a0)
  FSW fs0, 188(sp)
  LUI a0, 2
  ADDIW a0, a0, -904
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -2032
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1848
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs0, 0(a0)
  FSW fs0, 192(sp)
  LUI a0, 3
  ADDIW a0, a0, -1816
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs0, 0(a0)
  FSW fs0, 196(sp)
  LW a0, 1052(sp)
  LUI t6, 2
  ADDIW t6, t6, -88
  ADD t6, t6, sp
  ADD a0, t6, a0
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -2028
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1976
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs0, 0(a0)
  FSW fs0, 8(sp)
  LUI a0, 2
  ADDIW a0, a0, -880
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -2024
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1832
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs0, 0(a0)
  FSW fs0, 4(sp)
  LUI a0, 2
  ADDIW a0, a0, 1920
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs0, 0(a0)
  FSW fs0, 12(sp)
  LUI a0, 2
  ADDIW a0, a0, 1904
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 180
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 1912
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs10, 0(a0)
  LUI a0, 3
  ADDIW a0, a0, -1968
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs1, 0(a0)
  FSW fs1, 16(sp)
  LUI a0, 2
  ADDIW a0, a0, 1872
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs0, 0(a0)
  LUI a0, 3
  ADDIW a0, a0, -1904
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -2020
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1848
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs9, 0(a0)
  LUI a0, 3
  ADDIW a0, a0, -1880
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -2016
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -832
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -2012
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1752
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs1, 0(a0)
  LUI a0, 3
  ADDIW a0, a0, -1856
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs4, 0(a0)
  FSW fs4, 20(sp)
  LUI a0, 3
  ADDIW a0, a0, -1776
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs8, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 1896
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs2, 0(a0)
  LUI a0, 3
  ADDIW a0, a0, -1792
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs3, 0(a0)
  LUI a0, 3
  ADDIW a0, a0, -1896
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -792
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1960
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs4, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -864
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -788
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1760
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs5, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1696
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1696
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1784
  ADD a0, a0, sp
  FSW fs5, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 1952
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs5, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1700
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1700
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1968(sp)
  LUI a0, 2
  ADDIW a0, a0, 1864
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs5, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1560
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1560
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1720(sp)
  LUI a0, 3
  ADDIW a0, a0, -1928
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs5, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -500
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -500
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 24(sp)
  LUI a0, 2
  ADDIW a0, a0, -872
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -784
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1888
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -780
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1936
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs5, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -496
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -496
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 28(sp)
  LUI a0, 2
  ADDIW a0, a0, 1832
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs5, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -492
  ADD a0, a0, sp
  FSW fs5, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -492
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 32(sp)
  LW a0, 1052(sp)
  LUI t6, 2
  ADDIW t6, t6, -568
  ADD t6, t6, sp
  ADD a0, t6, a0
  FLW fs5, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -488
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -488
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 36(sp)
  LUI a0, 2
  ADDIW a0, a0, 696
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -724
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1840
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs5, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -484
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -484
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 40(sp)
  LUI a0, 3
  ADDIW a0, a0, -1872
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -572
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -856
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -568
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1808
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs5, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -668
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -668
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 44(sp)
  LUI a0, 3
  ADDIW a0, a0, -1784
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs5, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -652
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -652
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 48(sp)
  LUI a0, 2
  ADDIW a0, a0, 1928
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs5, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -644
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -644
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 52(sp)
  LUI a0, 3
  ADDIW a0, a0, -1824
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs5, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -628
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -628
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 56(sp)
  LUI a0, 3
  ADDIW a0, a0, -1936
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -564
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -896
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -560
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -888
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -556
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1968
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs5, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -616
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -616
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 60(sp)
  LUI a0, 3
  ADDIW a0, a0, -1744
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs5, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -604
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -604
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 64(sp)
  LUI a0, 3
  ADDIW a0, a0, -1768
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs5, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -596
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -596
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 68(sp)
  LUI a0, 3
  ADDIW a0, a0, -1800
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs5, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -580
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -580
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 72(sp)
  LUI a0, 3
  ADDIW a0, a0, -1984
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs5, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 436
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 436
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 76(sp)
  LUI a0, 2
  ADDIW a0, a0, 1960
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs5, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 452
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 452
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 80(sp)
  LUI a0, 2
  ADDIW a0, a0, -848
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -552
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1840
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs5, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 468
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 468
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 84(sp)
  LUI a0, 2
  ADDIW a0, a0, -840
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -548
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1992
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 1052(sp)
  ADD a0, a0, s0
  FLW fs5, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 480
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 480
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 88(sp)
  BNE s11, zero, bb21
  # implict jump to bb6
bb6:
  ADD a0, a1, zero
  LUI t6, 1
  ADDIW t6, t6, 668
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -2048
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 672
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs5, 176(sp)
  LUI t6, 1
  ADDIW t6, t6, -696
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 176(sp)
  LUI t6, 1
  ADDIW t6, t6, -700
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -700
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -696
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs6, fs5
  LUI t6, 1
  ADDIW t6, t6, 8
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 8
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1540(sp)
  LUI a0, 2
  ADDIW a0, a0, -2044
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 676
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -2040
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 680
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -2036
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 632
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs5, 180(sp)
  LUI t6, 1
  ADDIW t6, t6, -680
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 180(sp)
  LUI t6, 1
  ADDIW t6, t6, -684
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -684
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -680
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs6, fs5
  LUI t6, 1
  ADDIW t6, t6, 12
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 12
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1544(sp)
  FLW fs5, 184(sp)
  LUI t6, 1
  ADDIW t6, t6, -868
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 184(sp)
  LUI t6, 1
  ADDIW t6, t6, -872
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -872
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -868
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs6, fs5
  LUI t6, 1
  ADDIW t6, t6, 16
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 16
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1548(sp)
  FLW fs5, 188(sp)
  LUI t6, 1
  ADDIW t6, t6, -852
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 188(sp)
  LUI t6, 1
  ADDIW t6, t6, -856
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -856
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -852
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs6, fs5
  LUI t6, 1
  ADDIW t6, t6, 20
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 20
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1552(sp)
  LUI a0, 2
  ADDIW a0, a0, -2032
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 688
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs5, 192(sp)
  LUI t6, 1
  ADDIW t6, t6, -836
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 192(sp)
  LUI t6, 1
  ADDIW t6, t6, -840
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -840
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -836
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs6, fs5
  LUI t6, 1
  ADDIW t6, t6, 24
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 24
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1556(sp)
  FLW fs5, 196(sp)
  LUI t6, 1
  ADDIW t6, t6, -820
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 196(sp)
  LUI t6, 1
  ADDIW t6, t6, -824
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -824
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -820
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs6, fs5
  LUI t6, 1
  ADDIW t6, t6, 28
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 28
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1560(sp)
  LUI a0, 2
  ADDIW a0, a0, -2028
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 692
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs5, 8(sp)
  LUI t6, 1
  ADDIW t6, t6, -544
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 8(sp)
  LUI t6, 1
  ADDIW t6, t6, -808
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -808
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -544
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs6, fs5
  LUI t6, 1
  ADDIW t6, t6, 84
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 84
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1512(sp)
  LUI a0, 2
  ADDIW a0, a0, -2024
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 696
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs5, 4(sp)
  LUI t6, 1
  ADDIW t6, t6, -528
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 4(sp)
  LUI t6, 1
  ADDIW t6, t6, -532
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -532
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -528
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs6, fs5
  LUI t6, 1
  ADDIW t6, t6, 236
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 236
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1568(sp)
  FLW fs5, 12(sp)
  LUI t6, 1
  ADDIW t6, t6, -512
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 12(sp)
  LUI t6, 1
  ADDIW t6, t6, -516
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -516
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -512
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs6, fs5
  LUI t6, 1
  ADDIW t6, t6, 240
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 240
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1572(sp)
  LUI t6, 1
  ADDIW t6, t6, 180
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 180
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, 180
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 180
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1576(sp)
  FSW fs10, 1580(sp)
  FLW fs10, 16(sp)
  FLW fs5, 16(sp)
  LUI t6, 1
  ADDIW t6, t6, 184
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 184
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs10, fs10, fs5
  FSW fs10, 1584(sp)
  FSW fs0, 1588(sp)
  LUI a0, 2
  ADDIW a0, a0, -2020
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 700
  ADD t6, t6, sp
  SW a0, 0(t6)
  FSW fs9, 1592(sp)
  LUI a0, 2
  ADDIW a0, a0, -2016
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1628
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -2012
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 1204(sp)
  LW a0, 1204(sp)
  SW a0, 1204(sp)
  FSW fs1, 1596(sp)
  FLW fs0, 20(sp)
  FLW fs1, 20(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1600(sp)
  FSW fs8, 1604(sp)
  FSW fs2, 1608(sp)
  FSW fs3, 1464(sp)
  LUI a1, 1
  ADDIW a1, a1, -792
  ADD a1, a1, sp
  LW a1, 0(a1)
  FSW fs4, 1416(sp)
  LUI a0, 1
  ADDIW a0, a0, -788
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1632
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1784
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1784
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1420(sp)
  FLW fs0, 1968(sp)
  FLW fs1, 1968(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1424(sp)
  FLW fs0, 1720(sp)
  FLW fs1, 1720(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1428(sp)
  FLW fs0, 24(sp)
  FLW fs1, 24(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1432(sp)
  LUI a0, 1
  ADDIW a0, a0, -784
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1636
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -780
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1640
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 28(sp)
  FLW fs1, 28(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1220
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 32(sp)
  FLW fs1, 32(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1436(sp)
  FLW fs0, 36(sp)
  FLW fs1, 36(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -1212
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -724
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1644
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 40(sp)
  FLW fs1, 40(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -1208
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -572
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1648
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1652
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 44(sp)
  FLW fs1, 44(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1204
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 48(sp)
  FLW fs1, 48(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1200
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 52(sp)
  FLW fs1, 52(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1196
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 56(sp)
  FLW fs1, 56(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1440(sp)
  LUI a0, 1
  ADDIW a0, a0, -564
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1608
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -560
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1660
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -556
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1664
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 60(sp)
  FLW fs1, 60(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1188
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 64(sp)
  FLW fs1, 64(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1184
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 68(sp)
  FLW fs1, 68(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1444(sp)
  FLW fs0, 72(sp)
  FLW fs1, 72(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -976
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 76(sp)
  FLW fs1, 76(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1448(sp)
  FLW fs0, 80(sp)
  FLW fs1, 80(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -968
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -552
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1668
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 84(sp)
  FLW fs1, 84(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -964
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -548
  ADD a0, a0, sp
  LW a0, 0(a0)
  FLW fs0, 88(sp)
  FLW fs1, 88(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -960
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  # implict jump to bb7
bb7:
  LUI t6, 1
  ADDIW t6, t6, -960
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -960
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 460(sp)
  LUI t6, 1
  ADDIW t6, t6, -172
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -964
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -964
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 456(sp)
  LUI a0, 1
  ADDIW a0, a0, 1668
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -124
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -968
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -968
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 400(sp)
  FLW fs0, 1448(sp)
  FLW fs1, 1448(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 448(sp)
  LUI t6, 1
  ADDIW t6, t6, -976
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -976
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 444(sp)
  FLW fs0, 1444(sp)
  FLW fs1, 1444(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 440(sp)
  LUI t6, 1
  ADDIW t6, t6, -1184
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1184
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 436(sp)
  LUI t6, 1
  ADDIW t6, t6, -1188
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1188
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 432(sp)
  LUI a0, 1
  ADDIW a0, a0, 1664
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -128
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1660
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -132
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1608
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -136
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1440(sp)
  FLW fs1, 1440(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 428(sp)
  LUI t6, 1
  ADDIW t6, t6, -1196
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1196
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 424(sp)
  LUI t6, 1
  ADDIW t6, t6, -1200
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1200
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 420(sp)
  LUI t6, 1
  ADDIW t6, t6, -1204
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1204
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 416(sp)
  LUI a0, 1
  ADDIW a0, a0, 1652
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -140
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1648
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -144
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1208
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1208
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 412(sp)
  LUI a0, 1
  ADDIW a0, a0, 1644
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -148
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1212
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1212
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 408(sp)
  FLW fs0, 1436(sp)
  FLW fs1, 1436(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 404(sp)
  LUI t6, 1
  ADDIW t6, t6, -1220
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1220
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 452(sp)
  LUI a0, 1
  ADDIW a0, a0, 1640
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -152
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1636
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -156
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1432(sp)
  FLW fs1, 1432(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 1136
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1428(sp)
  FLW fs1, 1428(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 1140
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1424(sp)
  FLW fs1, 1424(sp)
  FSGNJ.S fs6, fs0, fs1
  FLW fs0, 1420(sp)
  FLW fs1, 1420(sp)
  FSGNJ.S fs5, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, 1632
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 796
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1416(sp)
  FLW fs1, 1416(sp)
  FSGNJ.S fs4, fs0, fs1
  FLW fs0, 1464(sp)
  FLW fs1, 1464(sp)
  FSGNJ.S fs3, fs0, fs1
  FLW fs0, 1608(sp)
  FLW fs1, 1608(sp)
  FSGNJ.S fs2, fs0, fs1
  FLW fs0, 1604(sp)
  FLW fs1, 1604(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 1144
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1600(sp)
  FLW fs1, 1600(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 600(sp)
  FLW fs0, 1596(sp)
  FLW fs1, 1596(sp)
  FSGNJ.S fs1, fs0, fs1
  LW a0, 1204(sp)
  SW a0, 1204(sp)
  LUI a0, 1
  ADDIW a0, a0, 1628
  ADD a0, a0, sp
  LW a0, 0(a0)
  FLW fs0, 1592(sp)
  FLW fs7, 1592(sp)
  FSGNJ.S fs0, fs0, fs7
  LUI t6, 2
  ADDIW t6, t6, -1820
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 700
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 792
  ADD t6, t6, sp
  SW s0, 0(t6)
  FLW fs0, 1588(sp)
  FLW fs7, 1588(sp)
  FSGNJ.S fs0, fs0, fs7
  FLW fs7, 1584(sp)
  FLW fs8, 1584(sp)
  LUI t6, 2
  ADDIW t6, t6, -1816
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1816
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 596(sp)
  FLW fs7, 1580(sp)
  FLW fs8, 1580(sp)
  LUI t6, 2
  ADDIW t6, t6, -1860
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1860
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 592(sp)
  FLW fs7, 1576(sp)
  FLW fs8, 1576(sp)
  LUI t6, 2
  ADDIW t6, t6, -1864
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1864
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 588(sp)
  FLW fs7, 1572(sp)
  FLW fs8, 1572(sp)
  LUI t6, 2
  ADDIW t6, t6, -1872
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1872
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  LUI t6, 2
  ADDIW t6, t6, -1868
  ADD t6, t6, sp
  FSW fs7, 0(t6)
  FLW fs7, 1568(sp)
  FLW fs8, 1568(sp)
  LUI t6, 2
  ADDIW t6, t6, -1880
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1880
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 584(sp)
  LUI t6, 1
  ADDIW t6, t6, 696
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 788
  ADD t6, t6, sp
  SW s0, 0(t6)
  FLW fs7, 1512(sp)
  FLW fs8, 1512(sp)
  LUI t6, 2
  ADDIW t6, t6, -1844
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1844
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 580(sp)
  LUI t6, 1
  ADDIW t6, t6, 692
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 732
  ADD t6, t6, sp
  SW s0, 0(t6)
  FLW fs7, 1560(sp)
  FLW fs8, 1560(sp)
  LUI t6, 1
  ADDIW t6, t6, 1992
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1992
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 576(sp)
  FLW fs7, 1556(sp)
  FLW fs8, 1556(sp)
  LUI t6, 1
  ADDIW t6, t6, 1988
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1988
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 572(sp)
  LUI t6, 1
  ADDIW t6, t6, 688
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 780
  ADD t6, t6, sp
  SW s0, 0(t6)
  FLW fs7, 1552(sp)
  FLW fs8, 1552(sp)
  LUI t6, 1
  ADDIW t6, t6, 1984
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1984
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 568(sp)
  FLW fs7, 1548(sp)
  FLW fs8, 1548(sp)
  LUI t6, 1
  ADDIW t6, t6, 1980
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1980
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 564(sp)
  FLW fs7, 1544(sp)
  FLW fs8, 1544(sp)
  LUI t6, 1
  ADDIW t6, t6, 1964
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1964
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 560(sp)
  LUI t6, 1
  ADDIW t6, t6, 632
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 776
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 680
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 772
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 676
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 768
  ADD t6, t6, sp
  SW s0, 0(t6)
  FLW fs7, 1540(sp)
  FLW fs8, 1540(sp)
  LUI t6, 1
  ADDIW t6, t6, 1960
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1960
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 504(sp)
  LUI t6, 1
  ADDIW t6, t6, 672
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 764
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 668
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 760
  ADD t6, t6, sp
  SW s0, 0(t6)
  # implict jump to bb8
bb8:
  LUI t6, 1
  ADDIW t6, t6, 768
  ADD t6, t6, sp
  LW s0, 0(t6)
  BNE s0, zero, bb10
  # implict jump to bb9
bb9:
  LUI t6, 1
  ADDIW t6, t6, 760
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 668
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 764
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 672
  ADD t6, t6, sp
  SW s0, 0(t6)
  FLW fs7, 504(sp)
  FLW fs8, 504(sp)
  LUI t6, 1
  ADDIW t6, t6, 1008
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1008
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 1540(sp)
  LUI t6, 1
  ADDIW t6, t6, 768
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 676
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 772
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 680
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 776
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 632
  ADD t6, t6, sp
  SW s0, 0(t6)
  FLW fs7, 560(sp)
  FLW fs8, 560(sp)
  LUI t6, 1
  ADDIW t6, t6, 1016
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1016
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 1544(sp)
  FLW fs7, 564(sp)
  FLW fs8, 564(sp)
  LUI t6, 1
  ADDIW t6, t6, 1972
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1972
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 1548(sp)
  FLW fs7, 568(sp)
  FLW fs8, 568(sp)
  LUI t6, 1
  ADDIW t6, t6, 1968
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1968
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 1552(sp)
  LUI t6, 1
  ADDIW t6, t6, 780
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 688
  ADD t6, t6, sp
  SW s0, 0(t6)
  FLW fs7, 572(sp)
  FLW fs8, 572(sp)
  LUI t6, 1
  ADDIW t6, t6, 2004
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 2004
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 1556(sp)
  FLW fs7, 576(sp)
  FLW fs8, 576(sp)
  LUI t6, 1
  ADDIW t6, t6, 2012
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 2012
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 1560(sp)
  LUI t6, 1
  ADDIW t6, t6, 732
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 692
  ADD t6, t6, sp
  SW s0, 0(t6)
  FLW fs7, 580(sp)
  FLW fs8, 580(sp)
  LUI t6, 1
  ADDIW t6, t6, 2020
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 2020
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 1512(sp)
  LUI t6, 1
  ADDIW t6, t6, 788
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 696
  ADD t6, t6, sp
  SW s0, 0(t6)
  FLW fs7, 584(sp)
  FLW fs8, 584(sp)
  LUI t6, 1
  ADDIW t6, t6, 2028
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 2028
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 1568(sp)
  LUI t6, 2
  ADDIW t6, t6, -1868
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1868
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  LUI t6, 2
  ADDIW t6, t6, -1868
  ADD t6, t6, sp
  FSW fs7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1868
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  FSW fs7, 1572(sp)
  FLW fs7, 588(sp)
  FLW fs8, 588(sp)
  LUI t6, 1
  ADDIW t6, t6, 2036
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 2036
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 1576(sp)
  FLW fs7, 592(sp)
  FLW fs8, 592(sp)
  LUI t6, 1
  ADDIW t6, t6, 1996
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1996
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 1580(sp)
  FLW fs7, 596(sp)
  FLW fs8, 596(sp)
  LUI t6, 1
  ADDIW t6, t6, 1896
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1896
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 1584(sp)
  FSW fs0, 1588(sp)
  LUI t6, 1
  ADDIW t6, t6, 792
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 700
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1820
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1820
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  FSGNJ.S fs0, fs0, fs7
  LUI t6, 2
  ADDIW t6, t6, -1820
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1820
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FSW fs0, 1592(sp)
  LUI t6, 1
  ADDIW t6, t6, 1628
  ADD t6, t6, sp
  SW a0, 0(t6)
  LW a0, 1204(sp)
  SW a0, 1204(sp)
  FSW fs1, 1596(sp)
  FLW fs0, 600(sp)
  FLW fs1, 600(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1600(sp)
  LUI t6, 1
  ADDIW t6, t6, 1144
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1144
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1604(sp)
  FSW fs2, 1608(sp)
  FSW fs3, 1464(sp)
  FSW fs4, 1416(sp)
  LUI a0, 1
  ADDIW a0, a0, 796
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1632
  ADD t6, t6, sp
  SW a0, 0(t6)
  FSW fs5, 1420(sp)
  FSW fs6, 1424(sp)
  LUI t6, 1
  ADDIW t6, t6, 1140
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1140
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1428(sp)
  LUI t6, 1
  ADDIW t6, t6, 1136
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1136
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1432(sp)
  LUI a0, 1
  ADDIW a0, a0, -156
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1636
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -152
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1640
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 452(sp)
  FLW fs1, 452(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1220
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 404(sp)
  FLW fs1, 404(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1436(sp)
  FLW fs0, 408(sp)
  FLW fs1, 408(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -1212
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -148
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1644
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 412(sp)
  FLW fs1, 412(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -1208
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -144
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1648
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -140
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1652
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 416(sp)
  FLW fs1, 416(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1204
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 420(sp)
  FLW fs1, 420(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1200
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 424(sp)
  FLW fs1, 424(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1196
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 428(sp)
  FLW fs1, 428(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1440(sp)
  LUI a0, 1
  ADDIW a0, a0, -136
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1608
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -132
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1660
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -128
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1664
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 432(sp)
  FLW fs1, 432(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1188
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 436(sp)
  FLW fs1, 436(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1184
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 440(sp)
  FLW fs1, 440(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1444(sp)
  FLW fs0, 444(sp)
  FLW fs1, 444(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -976
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 448(sp)
  FLW fs1, 448(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1448(sp)
  FLW fs0, 400(sp)
  FLW fs1, 400(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -968
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -124
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1668
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 456(sp)
  FLW fs1, 456(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -964
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -172
  ADD a0, a0, sp
  LW a0, 0(a0)
  FLW fs0, 460(sp)
  FLW fs1, 460(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -960
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  JAL zero, bb7
bb10:
  LUI t6, 1
  ADDIW t6, t6, 768
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 428
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 760
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 484
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 764
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 636
  ADD t6, t6, sp
  SW s0, 0(t6)
  FLW fs7, 504(sp)
  FLW fs8, 504(sp)
  LUI t6, 1
  ADDIW t6, t6, 1012
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1012
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 1228(sp)
  LUI t6, 1
  ADDIW t6, t6, 768
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 640
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 772
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 644
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 776
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 648
  ADD t6, t6, sp
  SW s0, 0(t6)
  FLW fs7, 560(sp)
  FLW fs8, 560(sp)
  LUI t6, 1
  ADDIW t6, t6, 1020
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1020
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 1232(sp)
  FLW fs7, 564(sp)
  FLW fs8, 564(sp)
  LUI t6, 1
  ADDIW t6, t6, 1848
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1848
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 1236(sp)
  FLW fs7, 568(sp)
  FLW fs8, 568(sp)
  LUI t6, 1
  ADDIW t6, t6, 2000
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 2000
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 1240(sp)
  LUI t6, 1
  ADDIW t6, t6, 780
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 652
  ADD t6, t6, sp
  SW s0, 0(t6)
  FLW fs7, 572(sp)
  FLW fs8, 572(sp)
  LUI t6, 1
  ADDIW t6, t6, 2008
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 2008
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 1244(sp)
  FLW fs7, 576(sp)
  FLW fs8, 576(sp)
  LUI t6, 1
  ADDIW t6, t6, 2016
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 2016
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 1248(sp)
  LUI t6, 1
  ADDIW t6, t6, 732
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 656
  ADD t6, t6, sp
  SW s0, 0(t6)
  FLW fs7, 580(sp)
  FLW fs8, 580(sp)
  LUI t6, 1
  ADDIW t6, t6, 2024
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 2024
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 1252(sp)
  LUI t6, 1
  ADDIW t6, t6, 788
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 660
  ADD t6, t6, sp
  SW s0, 0(t6)
  FLW fs7, 584(sp)
  FLW fs8, 584(sp)
  LUI t6, 1
  ADDIW t6, t6, 2032
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 2032
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 1256(sp)
  LUI t6, 2
  ADDIW t6, t6, -1868
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1868
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  LUI t6, 2
  ADDIW t6, t6, -1868
  ADD t6, t6, sp
  FSW fs7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1868
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  FSW fs7, 1260(sp)
  FLW fs7, 588(sp)
  FLW fs8, 588(sp)
  LUI t6, 1
  ADDIW t6, t6, 2040
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 2040
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 1212(sp)
  FLW fs7, 592(sp)
  FLW fs8, 592(sp)
  LUI t6, 1
  ADDIW t6, t6, 1944
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1944
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 1268(sp)
  FLW fs7, 596(sp)
  FLW fs8, 596(sp)
  LUI t6, 1
  ADDIW t6, t6, 1956
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1956
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 1272(sp)
  FSW fs0, 1276(sp)
  LUI t6, 1
  ADDIW t6, t6, 792
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 664
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1820
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1820
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  FSGNJ.S fs0, fs0, fs7
  LUI t6, 2
  ADDIW t6, t6, -1820
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1820
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FSW fs0, 1280(sp)
  LUI t6, 2
  ADDIW t6, t6, -2004
  ADD t6, t6, sp
  SW a0, 0(t6)
  LW a0, 1204(sp)
  SW a0, 1204(sp)
  LW a0, 1204(sp)
  LUI t6, 2
  ADDIW t6, t6, -1940
  ADD t6, t6, sp
  SW a0, 0(t6)
  FSW fs1, 1284(sp)
  FLW fs0, 600(sp)
  FLW fs1, 600(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1288(sp)
  LUI t6, 1
  ADDIW t6, t6, 1144
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1144
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1292(sp)
  FSW fs2, 1296(sp)
  FSW fs3, 1300(sp)
  LUI a0, 2
  ADDIW a0, a0, -1936
  ADD a0, a0, sp
  SW a1, 0(a0)
  FSW fs4, 1304(sp)
  LUI a0, 1
  ADDIW a0, a0, 796
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1932
  ADD t6, t6, sp
  SW a0, 0(t6)
  FSW fs5, 1308(sp)
  FSW fs6, 1364(sp)
  LUI t6, 1
  ADDIW t6, t6, 1140
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1140
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1516(sp)
  LUI t6, 1
  ADDIW t6, t6, 1136
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1136
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1520(sp)
  LUI a0, 1
  ADDIW a0, a0, -156
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1928
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -152
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1924
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 452(sp)
  FLW fs1, 452(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1524(sp)
  FLW fs0, 404(sp)
  FLW fs1, 404(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1528(sp)
  FLW fs0, 408(sp)
  FLW fs1, 408(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1532(sp)
  LUI a0, 1
  ADDIW a0, a0, -148
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 412(sp)
  FLW fs1, 412(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1536(sp)
  LUI a0, 1
  ADDIW a0, a0, -144
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1916
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -140
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1912
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 416(sp)
  FLW fs1, 416(sp)
  FSGNJ.S fs0, fs0, fs1
  FLW fs1, 420(sp)
  FLW fs2, 420(sp)
  FSGNJ.S fs1, fs1, fs2
  LUI t6, 1
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  FLW fs1, 424(sp)
  FLW fs2, 424(sp)
  FSGNJ.S fs1, fs1, fs2
  LUI t6, 1
  ADDIW t6, t6, -1108
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  FLW fs1, 428(sp)
  FLW fs2, 428(sp)
  FSGNJ.S fs1, fs1, fs2
  LUI a0, 1
  ADDIW a0, a0, -1104
  ADD a0, a0, sp
  FSW fs1, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -136
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1908
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -132
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1904
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -128
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1900
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs1, 432(sp)
  FLW fs2, 432(sp)
  FSGNJ.S fs1, fs1, fs2
  LUI t6, 1
  ADDIW t6, t6, -1100
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  FLW fs1, 436(sp)
  FLW fs2, 436(sp)
  FSGNJ.S fs1, fs1, fs2
  LUI t6, 1
  ADDIW t6, t6, -1096
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  FLW fs1, 440(sp)
  FLW fs2, 440(sp)
  FSGNJ.S fs1, fs1, fs2
  LUI t6, 1
  ADDIW t6, t6, -1092
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  FLW fs1, 444(sp)
  FLW fs2, 444(sp)
  FSGNJ.S fs1, fs1, fs2
  LUI t6, 1
  ADDIW t6, t6, -1088
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  FLW fs1, 448(sp)
  FLW fs2, 448(sp)
  FSGNJ.S fs1, fs1, fs2
  LUI t6, 1
  ADDIW t6, t6, -1084
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  FLW fs1, 400(sp)
  FLW fs2, 400(sp)
  FSGNJ.S fs1, fs1, fs2
  LUI a1, 1
  ADDIW a1, a1, -1228
  ADD a1, a1, sp
  FSW fs1, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -124
  ADD a1, a1, sp
  LW a1, 0(a1)
  FLW fs1, 456(sp)
  FLW fs2, 456(sp)
  FSGNJ.S fs1, fs1, fs2
  LUI a0, 1
  ADDIW a0, a0, -1276
  ADD a0, a0, sp
  FSW fs1, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -172
  ADD a0, a0, sp
  LW a0, 0(a0)
  FLW fs1, 460(sp)
  FLW fs2, 460(sp)
  FSGNJ.S fs1, fs1, fs2
  LUI t6, 1
  ADDIW t6, t6, -1272
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  # implict jump to bb11
bb11:
  LUI t6, 1
  ADDIW t6, t6, -1272
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1272
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSGNJ.S fs1, fs1, fs2
  FSW fs1, 548(sp)
  LUI t6, 1
  ADDIW t6, t6, -160
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1276
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1276
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSGNJ.S fs1, fs1, fs2
  FSW fs1, 544(sp)
  LUI t6, 1
  ADDIW t6, t6, -164
  ADD t6, t6, sp
  SW a1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1228
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1228
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSGNJ.S fs1, fs1, fs2
  FSW fs1, 540(sp)
  LUI t6, 1
  ADDIW t6, t6, -1084
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1084
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSGNJ.S fs1, fs1, fs2
  FSW fs1, 536(sp)
  LUI t6, 1
  ADDIW t6, t6, -1088
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1088
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSGNJ.S fs1, fs1, fs2
  FSW fs1, 532(sp)
  LUI t6, 1
  ADDIW t6, t6, -1092
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1092
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSGNJ.S fs1, fs1, fs2
  FSW fs1, 528(sp)
  LUI t6, 1
  ADDIW t6, t6, -1096
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1096
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSGNJ.S fs1, fs1, fs2
  FSW fs1, 524(sp)
  LUI t6, 1
  ADDIW t6, t6, -1100
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1100
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSGNJ.S fs1, fs1, fs2
  FSW fs1, 520(sp)
  LUI a0, 2
  ADDIW a0, a0, -1900
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -168
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1904
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -320
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1908
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -376
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1104
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1104
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSGNJ.S fs1, fs1, fs2
  FSW fs1, 516(sp)
  LUI t6, 1
  ADDIW t6, t6, -1108
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1108
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSGNJ.S fs1, fs1, fs2
  FSW fs1, 512(sp)
  LUI t6, 1
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSGNJ.S fs1, fs1, fs2
  FSW fs1, 508(sp)
  LUI a0, 1
  ADDIW a0, a0, -928
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -1912
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -380
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1916
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -384
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1536(sp)
  FLW fs1, 1536(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -1384
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -1920
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -388
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1532(sp)
  FLW fs1, 1532(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1316(sp)
  FLW fs0, 1528(sp)
  FLW fs1, 1528(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1392
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1524(sp)
  FLW fs1, 1524(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -1396
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -1924
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -392
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1928
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -396
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1520(sp)
  FLW fs1, 1520(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1400
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1516(sp)
  FLW fs1, 1516(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1404
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1364(sp)
  FLW fs1, 1364(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1408
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1308(sp)
  FLW fs1, 1308(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -1412
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -1932
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -400
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1304(sp)
  FLW fs1, 1304(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -1416
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -1936
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 832
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1300(sp)
  FLW fs1, 1300(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1420
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1296(sp)
  FLW fs1, 1296(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1424
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1292(sp)
  FLW fs1, 1292(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1480
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1288(sp)
  FLW fs1, 1288(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1432
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1284(sp)
  FLW fs1, 1284(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -1436
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -1940
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 876
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -2004
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 872
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1280(sp)
  FLW fs1, 1280(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 664
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 868
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1276(sp)
  FLW fs1, 1276(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1444
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1272(sp)
  FLW fs1, 1272(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 1456
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1268(sp)
  FLW fs1, 1268(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 1412
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1212(sp)
  FLW fs1, 1212(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 1464
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1260(sp)
  FLW fs1, 1260(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 1468
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1256(sp)
  FLW fs1, 1256(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, 1472
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 660
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 864
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1252(sp)
  FLW fs1, 1252(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, 1476
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 656
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 860
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1248(sp)
  FLW fs1, 1248(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 1480
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1244(sp)
  FLW fs1, 1244(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, 1484
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 652
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -404
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1240(sp)
  FLW fs1, 1240(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 1488
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1236(sp)
  FLW fs1, 1236(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 1492
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1232(sp)
  FLW fs1, 1232(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, 1496
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 648
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 852
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 644
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 848
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 640
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 844
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1228(sp)
  FLW fs1, 1228(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, 1500
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 636
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 840
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 484
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 836
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 428
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1072
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1316(sp)
  LUI t6, 1
  ADDIW t6, t6, 1464
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs10, fs0, fs1
  FLW fs0, 544(sp)
  FADD.S fs10, fs10, fs0
  LUI t6, 1
  ADDIW t6, t6, 1484
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FADD.S fs10, fs10, fs0
  LUI t6, 1
  ADDIW t6, t6, -1404
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1500
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs6, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1444
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FADD.S fs6, fs6, fs0
  LUI t6, 1
  ADDIW t6, t6, 1488
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FADD.S fs6, fs6, fs0
  LUI t6, 1
  ADDIW t6, t6, -1424
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1496
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, 1196
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1392
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1196
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs9, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, 1412
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FADD.S fs9, fs9, fs0
  FLW fs0, 512(sp)
  LUI t6, 1
  ADDIW t6, t6, 1468
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, 1192
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1396
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1192
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs8, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, 1492
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FADD.S fs8, fs8, fs0
  FLW fs0, 540(sp)
  LUI t6, 1
  ADDIW t6, t6, -1408
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs5, fs1, fs0
  FLW fs0, 520(sp)
  FADD.S fs5, fs5, fs0
  FLW fs0, 524(sp)
  FADD.S fs5, fs5, fs0
  LUI t6, 1
  ADDIW t6, t6, -1412
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1436
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs4, fs1, fs0
  FLW fs0, 528(sp)
  FADD.S fs4, fs4, fs0
  LUI t6, 1
  ADDIW t6, t6, -1480
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FADD.S fs4, fs4, fs0
  FLW fs0, 508(sp)
  LUI t6, 1
  ADDIW t6, t6, -1420
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs2, fs0, fs1
  FLW fs0, 532(sp)
  FADD.S fs2, fs2, fs0
  LUI t6, 1
  ADDIW t6, t6, -928
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FADD.S fs0, fs2, fs0
  FLW fs1, 516(sp)
  LUI t6, 1
  ADDIW t6, t6, 1480
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FADD.S fs2, fs2, fs1
  LUI t6, 1
  ADDIW t6, t6, 1472
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs2, fs2, fs1
  LUI t6, 1
  ADDIW t6, t6, -1384
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs2, fs2, fs1
  LUI t6, 1
  ADDIW t6, t6, -1432
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1440
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs1, fs3, fs1
  LUI t6, 1
  ADDIW t6, t6, -1400
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs1, fs1, fs3
  FLW fs3, 548(sp)
  FADD.S fs1, fs1, fs3
  FLW fs3, 536(sp)
  LUI t6, 1
  ADDIW t6, t6, 1476
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  FADD.S fs7, fs3, fs7
  LUI t6, 1
  ADDIW t6, t6, 1456
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs7, fs7, fs3
  LUI t6, 1
  ADDIW t6, t6, -1416
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs3, fs7, fs3
  LUI t6, 2
  ADDIW t6, t6, 232
  ADD t6, t6, sp
  FSW fs10, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 232
  ADD t6, t6, sp
  FSW fs6, 4(t6)
  LUI t6, 2
  ADDIW t6, t6, 232
  ADD t6, t6, sp
  FSW fs9, 8(t6)
  LUI t6, 2
  ADDIW t6, t6, 232
  ADD t6, t6, sp
  FSW fs8, 12(t6)
  LUI t6, 2
  ADDIW t6, t6, 232
  ADD t6, t6, sp
  FSW fs5, 16(t6)
  LUI t6, 2
  ADDIW t6, t6, 232
  ADD t6, t6, sp
  FSW fs4, 20(t6)
  LUI t6, 2
  ADDIW t6, t6, 232
  ADD t6, t6, sp
  FSW fs0, 24(t6)
  LUI t6, 2
  ADDIW t6, t6, 232
  ADD t6, t6, sp
  FSW fs2, 28(t6)
  LUI t6, 2
  ADDIW t6, t6, 232
  ADD t6, t6, sp
  FSW fs1, 32(t6)
  LUI a0, 2
  ADDIW a0, a0, 232
  ADD a0, a0, sp
  FSW fs3, 36(a0)
  LUI a0, 1
  ADDIW a0, a0, 860
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 844
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADDW a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 912
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 912
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 836
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADDW a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 916
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -376
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 848
  ADD a0, a0, sp
  LW a0, 0(a0)
  ADDW a0, s0, a0
  LUI t6, 1
  ADDIW t6, t6, 920
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 920
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 852
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADDW a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 924
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 868
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 840
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADDW a0, a1, a0
  LUI t6, 1
  ADDIW t6, t6, 784
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 784
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 832
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADDW a0, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 736
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -392
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 872
  ADD a0, a0, sp
  LW a0, 0(a0)
  ADDW a0, s0, a0
  LUI t6, 1
  ADDIW t6, t6, 740
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -384
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 740
  ADD a0, a0, sp
  LW a0, 0(a0)
  ADDW a0, a0, s0
  LUI t6, 1
  ADDIW t6, t6, 744
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -388
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 876
  ADD a0, a0, sp
  LW a0, 0(a0)
  ADDW a0, s0, a0
  LUI t6, 1
  ADDIW t6, t6, 748
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -160
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 748
  ADD a0, a0, sp
  LW a0, 0(a0)
  ADDW a0, a0, s0
  SW a0, 1016(sp)
  LUI t6, 1
  ADDIW t6, t6, -164
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -380
  ADD t6, t6, sp
  LW s1, 0(t6)
  ADDW a0, s0, s1
  SW a0, 1020(sp)
  LUI t6, 1
  ADDIW t6, t6, -400
  ADD t6, t6, sp
  LW s0, 0(t6)
  LW a0, 1020(sp)
  ADDW a0, a0, s0
  SW a0, 1024(sp)
  LUI t6, 1
  ADDIW t6, t6, -396
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 864
  ADD a0, a0, sp
  LW a0, 0(a0)
  ADDW a0, s0, a0
  LUI t6, 1
  ADDIW t6, t6, 752
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -168
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 752
  ADD a0, a0, sp
  LW a0, 0(a0)
  ADDW a0, a0, s0
  SW a0, 1176(sp)
  LUI t6, 1
  ADDIW t6, t6, -320
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -404
  ADD t6, t6, sp
  LW s1, 0(t6)
  ADDW a0, s0, s1
  SW a0, 1180(sp)
  LUI a0, 1
  ADDIW a0, a0, 1072
  ADD a0, a0, sp
  LW a0, 0(a0)
  LW a1, 1180(sp)
  ADDW a0, a1, a0
  LUI a1, 1
  ADDIW a1, a1, 916
  ADD a1, a1, sp
  LW a1, 0(a1)
  LUI t6, 2
  ADDIW t6, t6, 200
  ADD t6, t6, sp
  SW a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 924
  ADD a1, a1, sp
  LW a1, 0(a1)
  LUI t6, 2
  ADDIW t6, t6, 200
  ADD t6, t6, sp
  SW a1, 4(t6)
  LUI a1, 1
  ADDIW a1, a1, 736
  ADD a1, a1, sp
  LW a1, 0(a1)
  LUI t6, 2
  ADDIW t6, t6, 200
  ADD t6, t6, sp
  SW a1, 8(t6)
  LUI a1, 1
  ADDIW a1, a1, 744
  ADD a1, a1, sp
  LW a1, 0(a1)
  LUI t6, 2
  ADDIW t6, t6, 200
  ADD t6, t6, sp
  SW a1, 12(t6)
  LW a1, 1016(sp)
  LUI t6, 2
  ADDIW t6, t6, 200
  ADD t6, t6, sp
  SW a1, 16(t6)
  LW a1, 1024(sp)
  LUI t6, 2
  ADDIW t6, t6, 200
  ADD t6, t6, sp
  SW a1, 20(t6)
  LW a1, 1176(sp)
  LUI t6, 2
  ADDIW t6, t6, 200
  ADD t6, t6, sp
  SW a1, 24(t6)
  LUI a1, 2
  ADDIW a1, a1, 200
  ADD a1, a1, sp
  SW a0, 28(a1)
  ADDI a0, zero, 10
  LUI a1, 2
  ADDIW a1, a1, 232
  ADD a1, a1, sp
  ADD a1, a1, zero
  CALL putfarray
  ADDI a0, zero, 8
  LUI a1, 2
  ADDIW a1, a1, 200
  ADD a1, a1, sp
  ADD a1, a1, zero
  CALL putarray
  LUI a0, 2
  ADDIW a0, a0, 200
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 232
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FCVT.S.W fs1, a0
  FSUB.S fs0, fs1, fs0
  FCVT.W.S a0, fs0, rtz
  LUI t6, 2
  ADDIW t6, t6, 200
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 200
  ADD a0, a0, sp
  LW a0, 4(a0)
  LUI t6, 2
  ADDIW t6, t6, 232
  ADD t6, t6, sp
  FLW fs0, 4(t6)
  FCVT.S.W fs1, a0
  FSUB.S fs0, fs1, fs0
  FCVT.W.S a0, fs0, rtz
  LUI t6, 2
  ADDIW t6, t6, 200
  ADD t6, t6, sp
  SW a0, 4(t6)
  LUI a0, 2
  ADDIW a0, a0, 200
  ADD a0, a0, sp
  LW a0, 8(a0)
  LUI t6, 2
  ADDIW t6, t6, 232
  ADD t6, t6, sp
  FLW fs0, 8(t6)
  FCVT.S.W fs1, a0
  FSUB.S fs0, fs1, fs0
  FCVT.W.S a0, fs0, rtz
  LUI t6, 2
  ADDIW t6, t6, 200
  ADD t6, t6, sp
  SW a0, 8(t6)
  LUI a0, 2
  ADDIW a0, a0, 200
  ADD a0, a0, sp
  LW a0, 12(a0)
  LUI t6, 2
  ADDIW t6, t6, 232
  ADD t6, t6, sp
  FLW fs0, 12(t6)
  FCVT.S.W fs1, a0
  FSUB.S fs0, fs1, fs0
  FCVT.W.S a0, fs0, rtz
  LUI t6, 2
  ADDIW t6, t6, 200
  ADD t6, t6, sp
  SW a0, 12(t6)
  LUI a0, 2
  ADDIW a0, a0, 200
  ADD a0, a0, sp
  LW a0, 16(a0)
  LUI t6, 2
  ADDIW t6, t6, 232
  ADD t6, t6, sp
  FLW fs0, 16(t6)
  FCVT.S.W fs1, a0
  FSUB.S fs0, fs1, fs0
  FCVT.W.S a0, fs0, rtz
  LUI t6, 2
  ADDIW t6, t6, 200
  ADD t6, t6, sp
  SW a0, 16(t6)
  LUI a0, 2
  ADDIW a0, a0, 200
  ADD a0, a0, sp
  LW a0, 20(a0)
  LUI t6, 2
  ADDIW t6, t6, 232
  ADD t6, t6, sp
  FLW fs0, 20(t6)
  FCVT.S.W fs1, a0
  FSUB.S fs0, fs1, fs0
  FCVT.W.S a0, fs0, rtz
  LUI t6, 2
  ADDIW t6, t6, 200
  ADD t6, t6, sp
  SW a0, 20(t6)
  LUI a0, 2
  ADDIW a0, a0, 200
  ADD a0, a0, sp
  LW a0, 24(a0)
  LUI t6, 2
  ADDIW t6, t6, 232
  ADD t6, t6, sp
  FLW fs0, 24(t6)
  FCVT.S.W fs1, a0
  FSUB.S fs0, fs1, fs0
  FCVT.W.S a0, fs0, rtz
  LUI t6, 2
  ADDIW t6, t6, 200
  ADD t6, t6, sp
  SW a0, 24(t6)
  LUI a0, 2
  ADDIW a0, a0, 200
  ADD a0, a0, sp
  LW a0, 28(a0)
  LUI t6, 2
  ADDIW t6, t6, 232
  ADD t6, t6, sp
  FLW fs0, 28(t6)
  FCVT.S.W fs1, a0
  FSUB.S fs0, fs1, fs0
  FCVT.W.S a0, fs0, rtz
  LUI t6, 2
  ADDIW t6, t6, 200
  ADD t6, t6, sp
  SW a0, 28(t6)
  LA a0, k
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 756
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 200
  ADD t6, t6, sp
  ADD a0, t6, a0
  LW a0, 0(a0)
  FCVT.S.W fs0, a0
  FSW fs0, 552(sp)
  LUI a0, 1
  ADDIW a0, a0, 756
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -568
  ADD t6, t6, sp
  ADD a0, t6, a0
  FLW fs0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 1904
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs1, 0(a0)
  FADD.S fs0, fs0, fs1
  LUI a0, 2
  ADDIW a0, a0, 1840
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs1, 0(a0)
  FADD.S fs0, fs0, fs1
  LUI a0, 2
  ADDIW a0, a0, 1848
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs1, 0(a0)
  FADD.S fs0, fs0, fs1
  LUI a0, 2
  ADDIW a0, a0, 1856
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs1, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 1864
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs2, 0(a0)
  FADD.S fs1, fs1, fs2
  LUI a0, 2
  ADDIW a0, a0, 1872
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs2, 0(a0)
  FADD.S fs1, fs1, fs2
  LUI a0, 2
  ADDIW a0, a0, 1880
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs2, 0(a0)
  FADD.S fs1, fs1, fs2
  LUI a0, 2
  ADDIW a0, a0, 1888
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs2, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 1896
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs3, 0(a0)
  FADD.S fs2, fs2, fs3
  LUI a0, 2
  ADDIW a0, a0, 1832
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs3, 0(a0)
  FADD.S fs2, fs2, fs3
  LUI a0, 2
  ADDIW a0, a0, 1912
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs3, 0(a0)
  FADD.S fs2, fs2, fs3
  LUI a0, 2
  ADDIW a0, a0, 1920
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs3, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 1928
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs4, 0(a0)
  FADD.S fs3, fs3, fs4
  LUI a0, 2
  ADDIW a0, a0, 1936
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs4, 0(a0)
  FADD.S fs3, fs3, fs4
  LUI a0, 2
  ADDIW a0, a0, 1944
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs4, 0(a0)
  FADD.S fs3, fs3, fs4
  LUI a0, 2
  ADDIW a0, a0, 1952
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs4, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 1960
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs5, 0(a0)
  FADD.S fs4, fs4, fs5
  LUI a0, 2
  ADDIW a0, a0, 1968
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs5, 0(a0)
  FADD.S fs4, fs4, fs5
  LUI a0, 3
  ADDIW a0, a0, -1744
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs5, 0(a0)
  FADD.S fs4, fs4, fs5
  LUI a0, 3
  ADDIW a0, a0, -1752
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs5, 0(a0)
  LUI a0, 3
  ADDIW a0, a0, -1760
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs6, 0(a0)
  FADD.S fs5, fs5, fs6
  LUI a0, 3
  ADDIW a0, a0, -1768
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs6, 0(a0)
  FADD.S fs5, fs5, fs6
  LUI a0, 3
  ADDIW a0, a0, -1776
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs6, 0(a0)
  FADD.S fs5, fs5, fs6
  LUI a0, 3
  ADDIW a0, a0, -1784
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs6, 0(a0)
  LUI a0, 3
  ADDIW a0, a0, -1792
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs7, 0(a0)
  FADD.S fs6, fs6, fs7
  LUI a0, 3
  ADDIW a0, a0, -1800
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs7, 0(a0)
  FADD.S fs6, fs6, fs7
  LUI a0, 3
  ADDIW a0, a0, -1808
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs7, 0(a0)
  FADD.S fs6, fs6, fs7
  LUI a0, 3
  ADDIW a0, a0, -1816
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs7, 0(a0)
  LUI a0, 3
  ADDIW a0, a0, -1824
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs8, 0(a0)
  FADD.S fs7, fs7, fs8
  LUI a0, 3
  ADDIW a0, a0, -1832
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs8, 0(a0)
  FADD.S fs7, fs7, fs8
  LUI a0, 3
  ADDIW a0, a0, -1840
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs8, 0(a0)
  FADD.S fs7, fs7, fs8
  LUI a0, 3
  ADDIW a0, a0, -1848
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs8, 0(a0)
  LUI a0, 3
  ADDIW a0, a0, -1856
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs9, 0(a0)
  FADD.S fs8, fs8, fs9
  LUI a0, 3
  ADDIW a0, a0, -1928
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs9, 0(a0)
  FADD.S fs8, fs8, fs9
  LUI a0, 3
  ADDIW a0, a0, -1992
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs9, 0(a0)
  FADD.S fs8, fs8, fs9
  LUI a0, 3
  ADDIW a0, a0, -1984
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs9, 0(a0)
  LUI a0, 3
  ADDIW a0, a0, -1976
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs10, 0(a0)
  FADD.S fs9, fs9, fs10
  LUI a0, 3
  ADDIW a0, a0, -1968
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs10, 0(a0)
  FADD.S fs9, fs9, fs10
  LUI a0, 3
  ADDIW a0, a0, -1960
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 756
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs10, 0(a0)
  FADD.S fs9, fs9, fs10
  LUI t6, 2
  ADDIW t6, t6, 272
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 272
  ADD t6, t6, sp
  FSW fs1, 4(t6)
  LUI t6, 2
  ADDIW t6, t6, 272
  ADD t6, t6, sp
  FSW fs2, 8(t6)
  LUI t6, 2
  ADDIW t6, t6, 272
  ADD t6, t6, sp
  FSW fs3, 12(t6)
  LUI t6, 2
  ADDIW t6, t6, 272
  ADD t6, t6, sp
  FSW fs4, 16(t6)
  LUI t6, 2
  ADDIW t6, t6, 272
  ADD t6, t6, sp
  FSW fs5, 20(t6)
  LUI t6, 2
  ADDIW t6, t6, 272
  ADD t6, t6, sp
  FSW fs6, 24(t6)
  LUI t6, 2
  ADDIW t6, t6, 272
  ADD t6, t6, sp
  FSW fs7, 28(t6)
  LUI t6, 2
  ADDIW t6, t6, 272
  ADD t6, t6, sp
  FSW fs8, 32(t6)
  LUI t6, 2
  ADDIW t6, t6, 272
  ADD t6, t6, sp
  FSW fs9, 36(t6)
  LUI t6, 1
  ADDIW t6, t6, -1448
  ADD t6, t6, sp
  FLW fs0, 0(t6)
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
  LUI a0, 2
  ADDIW a0, a0, 1904
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1256
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1840
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1248
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1848
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1240
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1856
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1232
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1864
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1224
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1872
  ADD t6, t6, sp
  LD s11, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1880
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -696
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1888
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 688
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1896
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 680
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1832
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 672
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1912
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 664
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1920
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 656
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1928
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 648
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1936
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 640
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1944
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 3
  ADDIW t6, t6, -1600
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1952
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 3
  ADDIW t6, t6, -1224
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1960
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 3
  ADDIW t6, t6, -1232
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1968
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 632
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1744
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 3
  ADDIW t6, t6, -1248
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1752
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 624
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1760
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 616
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1768
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 3
  ADDIW t6, t6, -1272
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1776
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 608
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1784
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 3
  ADDIW t6, t6, -1288
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1792
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 3
  ADDIW t6, t6, -1296
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1800
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 600
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1808
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 3
  ADDIW t6, t6, -1312
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1816
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 592
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1824
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 584
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1832
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 576
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1840
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 3
  ADDIW t6, t6, -1472
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1848
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 504
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1856
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 3
  ADDIW t6, t6, -1360
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1928
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 440
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1992
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 448
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1984
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 3
  ADDIW t6, t6, -1384
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1976
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 3
  ADDIW t6, t6, -1392
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1968
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 456
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1960
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 464
  ADD t6, t6, sp
  SD a0, 0(t6)
  # implict jump to bb13
bb13:
  LUI a0, 2
  ADDIW a0, a0, 464
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -600
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 456
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -592
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1392
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -584
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1384
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -576
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 448
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -952
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 440
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -960
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1360
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -968
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 504
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -976
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1472
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -984
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 576
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -992
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 584
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1000
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 592
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1008
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1088
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 600
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1024
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1296
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1032
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1288
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1040
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 608
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1048
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1272
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1056
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 616
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1064
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 624
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1072
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1248
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1080
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 632
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1016
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1232
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -944
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1224
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -936
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1600
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -928
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 640
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1264
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 648
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1272
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 656
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1280
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 664
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1288
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 672
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1296
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 680
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1304
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 688
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 920
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -696
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 912
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 904
  ADD a0, a0, sp
  SD s11, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -1224
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 896
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1232
  ADD t6, t6, sp
  LD s11, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1240
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI a1, 2
  ADDIW a1, a1, -1248
  ADD a1, a1, sp
  LD a1, 0(a1)
  LUI a0, 2
  ADDIW a0, a0, -1256
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -920
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -920
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -608
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -608
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 756
  ADD a0, a0, sp
  LW a0, 0(a0)
  ADD a0, a1, a0
  LUI t6, 2
  ADDIW t6, t6, -616
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -616
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs1, 0(a0)
  FADD.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, 756
  ADD a0, a0, sp
  LW a0, 0(a0)
  ADD a0, s10, a0
  LUI t6, 2
  ADDIW t6, t6, -624
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -624
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs1, 0(a0)
  FADD.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, 756
  ADD a0, a0, sp
  LW a0, 0(a0)
  ADD a0, s11, a0
  LUI t6, 2
  ADDIW t6, t6, -632
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -632
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs1, 0(a0)
  FADD.S fs0, fs0, fs1
  LUI a0, 2
  ADDIW a0, a0, 896
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -640
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -640
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs1, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 904
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -648
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -648
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs2, 0(a0)
  FADD.S fs1, fs1, fs2
  LUI a0, 2
  ADDIW a0, a0, 912
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -656
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -656
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs2, 0(a0)
  FADD.S fs1, fs1, fs2
  LUI a0, 2
  ADDIW a0, a0, 920
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -664
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -664
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs2, 0(a0)
  FADD.S fs1, fs1, fs2
  LUI a0, 2
  ADDIW a0, a0, 1304
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -672
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -672
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs2, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 1296
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -680
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -680
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs3, 0(a0)
  FADD.S fs2, fs2, fs3
  LUI a0, 2
  ADDIW a0, a0, 1288
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -688
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -688
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs3, 0(a0)
  FADD.S fs2, fs2, fs3
  LUI a0, 2
  ADDIW a0, a0, 1280
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -824
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -824
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs3, 0(a0)
  FADD.S fs2, fs2, fs3
  LUI a0, 2
  ADDIW a0, a0, 1272
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -704
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -704
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs3, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 1264
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -712
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -712
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs4, 0(a0)
  FADD.S fs3, fs3, fs4
  LUI a0, 2
  ADDIW a0, a0, -928
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -720
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -720
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs4, 0(a0)
  FADD.S fs3, fs3, fs4
  LUI a0, 2
  ADDIW a0, a0, -936
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -728
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -728
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs4, 0(a0)
  FADD.S fs3, fs3, fs4
  LUI a0, 2
  ADDIW a0, a0, -944
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -736
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -736
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs4, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -1016
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -744
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -744
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs5, 0(a0)
  FADD.S fs4, fs4, fs5
  LUI a0, 2
  ADDIW a0, a0, -1080
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -752
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -752
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs5, 0(a0)
  FADD.S fs4, fs4, fs5
  LUI a0, 2
  ADDIW a0, a0, -1072
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -760
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -760
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs5, 0(a0)
  FADD.S fs4, fs4, fs5
  LUI a0, 2
  ADDIW a0, a0, -1064
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -768
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -768
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs5, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -1056
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -776
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -776
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs6, 0(a0)
  FADD.S fs5, fs5, fs6
  LUI a0, 2
  ADDIW a0, a0, -1048
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -784
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -784
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs6, 0(a0)
  FADD.S fs5, fs5, fs6
  LUI a0, 2
  ADDIW a0, a0, -1040
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -792
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -792
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs6, 0(a0)
  FADD.S fs5, fs5, fs6
  LUI a0, 2
  ADDIW a0, a0, -1032
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -800
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -800
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs6, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -1024
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -808
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -808
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs7, 0(a0)
  FADD.S fs6, fs6, fs7
  LUI a0, 2
  ADDIW a0, a0, -1088
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -816
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -816
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs7, 0(a0)
  FADD.S fs6, fs6, fs7
  LUI a0, 2
  ADDIW a0, a0, -1008
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -1216
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1216
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs7, 0(a0)
  FADD.S fs6, fs6, fs7
  LUI a0, 2
  ADDIW a0, a0, -1000
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -1360
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1360
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs7, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -992
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -1368
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1368
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs8, 0(a0)
  FADD.S fs7, fs7, fs8
  LUI a0, 2
  ADDIW a0, a0, -984
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -1376
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1376
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs8, 0(a0)
  FADD.S fs7, fs7, fs8
  LUI a0, 2
  ADDIW a0, a0, -976
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -1384
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1384
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs8, 0(a0)
  FADD.S fs7, fs7, fs8
  LUI a0, 2
  ADDIW a0, a0, -968
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -1392
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1392
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs8, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -960
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -1400
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1400
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs9, 0(a0)
  FADD.S fs8, fs8, fs9
  LUI a0, 2
  ADDIW a0, a0, -952
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -1408
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1408
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs9, 0(a0)
  FADD.S fs8, fs8, fs9
  LUI a0, 2
  ADDIW a0, a0, -576
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -1416
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1416
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs9, 0(a0)
  FADD.S fs8, fs8, fs9
  LUI a0, 2
  ADDIW a0, a0, -584
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -1424
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1424
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs9, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -592
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -1432
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1432
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs10, 0(a0)
  FADD.S fs9, fs9, fs10
  LUI a0, 2
  ADDIW a0, a0, -600
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 756
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a0, a0, s0
  LUI t6, 2
  ADDIW t6, t6, -1440
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs10, 0(a0)
  FADD.S fs9, fs9, fs10
  LUI a0, 1
  ADDIW a0, a0, 756
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 272
  ADD t6, t6, sp
  ADD a0, t6, a0
  LUI t6, 2
  ADDIW t6, t6, -1448
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1448
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs10, 0(a0)
  FADD.S fs9, fs9, fs10
  LUI t6, 2
  ADDIW t6, t6, 272
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 272
  ADD t6, t6, sp
  FSW fs1, 4(t6)
  LUI t6, 2
  ADDIW t6, t6, 272
  ADD t6, t6, sp
  FSW fs2, 8(t6)
  LUI t6, 2
  ADDIW t6, t6, 272
  ADD t6, t6, sp
  FSW fs3, 12(t6)
  LUI t6, 2
  ADDIW t6, t6, 272
  ADD t6, t6, sp
  FSW fs4, 16(t6)
  LUI t6, 2
  ADDIW t6, t6, 272
  ADD t6, t6, sp
  FSW fs5, 20(t6)
  LUI t6, 2
  ADDIW t6, t6, 272
  ADD t6, t6, sp
  FSW fs6, 24(t6)
  LUI t6, 2
  ADDIW t6, t6, 272
  ADD t6, t6, sp
  FSW fs7, 28(t6)
  LUI t6, 2
  ADDIW t6, t6, 272
  ADD t6, t6, sp
  FSW fs8, 32(t6)
  LUI a0, 2
  ADDIW a0, a0, 272
  ADD a0, a0, sp
  FSW fs9, 36(a0)
  LUI a0, 2
  ADDIW a0, a0, -1448
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1448
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FEQ.S a0, fs0, fs1
  SB a0, 3(sp)
  LB a0, 3(sp)
  XORI a0, a0, 1
  LUI t6, 1
  ADDIW t6, t6, -804
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -804
  ADD a0, a0, sp
  LW a0, 0(a0)
  SLTU a0, zero, a0
  LUI t6, 1
  ADDIW t6, t6, -800
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -800
  ADD a0, a0, sp
  LW a0, 0(a0)
  FCVT.S.W fs0, a0
  LA a0, .CONSTANT.7.0
  LUI t6, 2
  ADDIW t6, t6, 720
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 720
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs1, 0(a0)
  FEQ.S a0, fs0, fs1
  SB a0, 2(sp)
  LB a0, 2(sp)
  XORI a0, a0, 1
  LUI t6, 1
  ADDIW t6, t6, -796
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -796
  ADD a0, a0, sp
  LW a0, 0(a0)
  FCVT.S.W fs0, a0
  LA a0, .CONSTANT.7.0
  LUI t6, 2
  ADDIW t6, t6, 712
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 712
  ADD a0, a0, sp
  LD a0, 0(a0)
  FLW fs1, 0(a0)
  FEQ.S a0, fs0, fs1
  SB a0, 1(sp)
  LB a0, 1(sp)
  XORI a0, a0, 1
  SB a0, 0(sp)
  LB a0, 0(sp)
  BNE a0, zero, bb15
  # implict jump to bb14
bb14:
  LUI t6, 2
  ADDIW t6, t6, -1256
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1248
  ADD t6, t6, sp
  SD s10, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1240
  ADD a0, a0, sp
  SD s11, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 896
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1232
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 904
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1224
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 912
  ADD t6, t6, sp
  LD s11, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 920
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -696
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1304
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 688
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1296
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 680
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1288
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 672
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1280
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 664
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1272
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 656
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1264
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 648
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -928
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 640
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -936
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 3
  ADDIW t6, t6, -1600
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -944
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 3
  ADDIW t6, t6, -1224
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1016
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 3
  ADDIW t6, t6, -1232
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1080
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 632
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1072
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 3
  ADDIW t6, t6, -1248
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1064
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 624
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1056
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 616
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1048
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 3
  ADDIW t6, t6, -1272
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1040
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 608
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1032
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 3
  ADDIW t6, t6, -1288
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1024
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 3
  ADDIW t6, t6, -1296
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1088
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 600
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1008
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 3
  ADDIW t6, t6, -1312
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1000
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 592
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -992
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 584
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -984
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 576
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -976
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 3
  ADDIW t6, t6, -1472
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -968
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 504
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -960
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 3
  ADDIW t6, t6, -1360
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -952
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 440
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -576
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 448
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -584
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 3
  ADDIW t6, t6, -1384
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -592
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 3
  ADDIW t6, t6, -1392
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -600
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 456
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 272
  ADD a0, a0, sp
  ADD a0, a0, zero
  LUI t6, 2
  ADDIW t6, t6, 464
  ADD t6, t6, sp
  SD a0, 0(t6)
  JAL zero, bb13
bb15:
  ADDI a0, zero, 10
  LUI a1, 2
  ADDIW a1, a1, 272
  ADD a1, a1, sp
  ADD a1, a1, zero
  CALL putfarray
  LA a0, k
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1032
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 272
  ADD t6, t6, sp
  ADD a0, t6, a0
  FLW fs0, 0(a0)
  FSW fs0, 464(sp)
  LUI a0, 1
  ADDIW a0, a0, 1032
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -568
  ADD t6, t6, sp
  ADD a0, t6, a0
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 972
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 3
  ADDIW a0, a0, -1952
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1032
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1036
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1840
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1032
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 256
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 3
  ADDIW a0, a0, -1944
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1032
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1040
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1848
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1032
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 132
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 1856
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1032
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 188
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 3
  ADDIW a0, a0, -2000
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1032
  ADD a1, a1, sp
  LW a1, 0(a1)
  ADD a0, a0, a1
  LW s10, 0(a0)
  LUI a1, 3
  ADDIW a1, a1, -1920
  ADD a1, a1, sp
  LD a1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADD a1, a1, s0
  LW a0, 0(a1)
  LUI t6, 3
  ADDIW t6, t6, -1896
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s1, 0(t6)
  ADD s0, s0, s1
  LW s0, 0(s0)
  LUI t6, 2
  ADDIW t6, t6, 1896
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s2, 0(t6)
  ADD s1, s1, s2
  FLW fs6, 0(s1)
  LUI t6, 2
  ADDIW t6, t6, 1832
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s2, 0(t6)
  ADD s1, s1, s2
  FLW fs1, 0(s1)
  LUI t6, 2
  ADDIW t6, t6, 1912
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s2, 0(t6)
  ADD s1, s1, s2
  FLW fs0, 0(s1)
  LUI t6, 1
  ADDIW t6, t6, 224
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 3
  ADDIW t6, t6, -1888
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s2, 0(t6)
  ADD s1, s1, s2
  LW s1, 0(s1)
  LUI t6, 2
  ADDIW t6, t6, 1928
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s3, 0(t6)
  ADD s2, s2, s3
  FLW fs0, 0(s2)
  LUI t6, 2
  ADDIW t6, t6, 1936
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s3, 0(t6)
  ADD s2, s2, s3
  FLW fs10, 0(s2)
  LUI t6, 2
  ADDIW t6, t6, 1944
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s3, 0(t6)
  ADD s2, s2, s3
  FLW fs9, 0(s2)
  LUI t6, 2
  ADDIW t6, t6, 1968
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s3, 0(t6)
  ADD s2, s2, s3
  FLW fs8, 0(s2)
  LUI t6, 3
  ADDIW t6, t6, -1744
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s3, 0(t6)
  ADD s2, s2, s3
  FLW fs2, 0(s2)
  LUI t6, 1
  ADDIW t6, t6, 1692
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1692
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1264
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -840
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s3, 0(t6)
  ADD s2, s2, s3
  LW s2, 0(s2)
  LUI t6, 3
  ADDIW t6, t6, -1768
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s4, 0(t6)
  ADD s3, s3, s4
  FLW fs2, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, 1792
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1792
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 468(sp)
  LUI t6, 3
  ADDIW t6, t6, -1776
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s4, 0(t6)
  ADD s3, s3, s4
  FLW fs2, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, 1796
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1796
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 472(sp)
  LUI t6, 2
  ADDIW t6, t6, -864
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s4, 0(t6)
  ADD s3, s3, s4
  LW s3, 0(s3)
  LUI t6, 2
  ADDIW t6, t6, -872
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s5, 0(t6)
  ADD s4, s4, s5
  LW s4, 0(s4)
  LUI t6, 3
  ADDIW t6, t6, -1784
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADD s5, s5, s6
  FLW fs2, 0(s5)
  LUI t6, 1
  ADDIW t6, t6, -368
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -368
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 476(sp)
  LUI t6, 3
  ADDIW t6, t6, -1792
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADD s5, s5, s6
  FLW fs2, 0(s5)
  LUI t6, 1
  ADDIW t6, t6, -360
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -360
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 480(sp)
  LUI t6, 2
  ADDIW t6, t6, -888
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADD s5, s5, s6
  LW s5, 0(s5)
  LUI t6, 2
  ADDIW t6, t6, -896
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s7, 0(t6)
  ADD s6, s6, s7
  LW s6, 0(s6)
  LUI t6, 3
  ADDIW t6, t6, -1808
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s7, s7, s8
  FLW fs2, 0(s7)
  LUI t6, 1
  ADDIW t6, t6, -352
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -352
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 484(sp)
  LUI t6, 3
  ADDIW t6, t6, -1816
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s7, s7, s8
  FLW fs2, 0(s7)
  LUI t6, 1
  ADDIW t6, t6, -344
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -344
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 488(sp)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -88
  ADD t6, t6, sp
  ADD s7, t6, s7
  LW s7, 0(s7)
  LUI t6, 1
  ADDIW t6, t6, 1044
  ADD t6, t6, sp
  SW s7, 0(t6)
  LUI t6, 3
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s7, s7, s8
  FLW fs2, 0(s7)
  LUI t6, 1
  ADDIW t6, t6, -340
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -340
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 492(sp)
  LUI t6, 3
  ADDIW t6, t6, -1848
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s7, s7, s8
  FLW fs2, 0(s7)
  LUI t6, 1
  ADDIW t6, t6, -336
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -336
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 496(sp)
  LUI t6, 3
  ADDIW t6, t6, -1992
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s7, s7, s8
  FLW fs2, 0(s7)
  LUI t6, 1
  ADDIW t6, t6, -332
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -332
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 500(sp)
  LUI t6, 3
  ADDIW t6, t6, -1936
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s7, s7, s8
  LW s7, 0(s7)
  LUI t6, 1
  ADDIW t6, t6, -116
  ADD t6, t6, sp
  SW s7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1904
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s7, s7, s8
  FLW fs2, 0(s7)
  LUI t6, 1
  ADDIW t6, t6, -324
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -324
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 556(sp)
  FLW fs2, 556(sp)
  LUI t6, 1
  ADDIW t6, t6, -328
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 972
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1992
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1992
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -328
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs2, fs3
  LUI t6, 1
  ADDIW t6, t6, -316
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -316
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 712(sp)
  FLW fs2, 712(sp)
  LUI t6, 1
  ADDIW t6, t6, -372
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -372
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 256
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs2, fs3
  LUI t6, 1
  ADDIW t6, t6, -308
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -308
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 716(sp)
  FLW fs2, 716(sp)
  LUI t6, 1
  ADDIW t6, t6, -312
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -312
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 132
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs2, fs3
  LUI t6, 1
  ADDIW t6, t6, -300
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -300
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 720(sp)
  LUI t6, 2
  ADDIW t6, t6, 1864
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s7, s7, s8
  FLW fs2, 0(s7)
  LUI t6, 1
  ADDIW t6, t6, -292
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -292
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 724(sp)
  FLW fs2, 724(sp)
  LUI t6, 1
  ADDIW t6, t6, -296
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -296
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 188
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs3, fs2
  LUI t6, 1
  ADDIW t6, t6, -284
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -284
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 728(sp)
  LUI t6, 2
  ADDIW t6, t6, 1872
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s7, s7, s8
  FLW fs2, 0(s7)
  LUI t6, 1
  ADDIW t6, t6, -280
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -280
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 732(sp)
  FLW fs2, 732(sp)
  LUI t6, 1
  ADDIW t6, t6, 1704
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1704
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1528
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 728(sp)
  LUI t6, 1
  ADDIW t6, t6, -288
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1528
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1748
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1748
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -288
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs3, fs2
  LUI t6, 1
  ADDIW t6, t6, -276
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -276
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 736(sp)
  LUI t6, 2
  ADDIW t6, t6, 1880
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s7, s7, s8
  FLW fs2, 0(s7)
  LUI t6, 1
  ADDIW t6, t6, -472
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -472
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 740(sp)
  FLW fs2, 740(sp)
  LUI t6, 1
  ADDIW t6, t6, -424
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 736(sp)
  LUI t6, 1
  ADDIW t6, t6, 1744
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1744
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1584
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1584
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1740
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1740
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -424
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs2, fs3
  LUI t6, 1
  ADDIW t6, t6, -464
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -464
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 744(sp)
  LUI t6, 2
  ADDIW t6, t6, 1888
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s7, s7, s8
  FLW fs2, 0(s7)
  LUI t6, 1
  ADDIW t6, t6, -456
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -456
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 748(sp)
  FLW fs2, 748(sp)
  LUI t6, 1
  ADDIW t6, t6, -460
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -460
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FADD.S fs2, fs2, fs6
  LUI t6, 1
  ADDIW t6, t6, -448
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -448
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 752(sp)
  FLW fs2, 752(sp)
  LUI t6, 1
  ADDIW t6, t6, -452
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -452
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FADD.S fs2, fs2, fs1
  LUI t6, 1
  ADDIW t6, t6, -440
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -440
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 756(sp)
  FLW fs2, 756(sp)
  LUI t6, 1
  ADDIW t6, t6, -444
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -444
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 224
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs2, fs3
  LUI t6, 1
  ADDIW t6, t6, -432
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -432
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 708(sp)
  LUI t6, 2
  ADDIW t6, t6, 1920
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s7, s7, s8
  FLW fs2, 0(s7)
  LUI t6, 1
  ADDIW t6, t6, -476
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -476
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 764(sp)
  FLW fs2, 764(sp)
  LUI t6, 1
  ADDIW t6, t6, -428
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -428
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FADD.S fs2, fs2, fs0
  LUI t6, 1
  ADDIW t6, t6, -416
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -416
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 768(sp)
  FLW fs2, 768(sp)
  LUI t6, 1
  ADDIW t6, t6, -420
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -420
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FADD.S fs2, fs2, fs10
  LUI t6, 1
  ADDIW t6, t6, -408
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -408
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 772(sp)
  FLW fs2, 772(sp)
  LUI t6, 1
  ADDIW t6, t6, -412
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -412
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FADD.S fs2, fs2, fs9
  LUI t6, 1
  ADDIW t6, t6, -256
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -256
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 776(sp)
  LUI t6, 2
  ADDIW t6, t6, 1952
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s7, s7, s8
  FLW fs2, 0(s7)
  LUI t6, 1
  ADDIW t6, t6, -248
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -248
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 780(sp)
  LUI t6, 2
  ADDIW t6, t6, 1960
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s7, s7, s8
  FLW fs2, 0(s7)
  LUI t6, 1
  ADDIW t6, t6, -244
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -244
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 784(sp)
  FLW fs2, 784(sp)
  LUI t6, 1
  ADDIW t6, t6, 1736
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1736
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1588
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 780(sp)
  LUI t6, 1
  ADDIW t6, t6, -252
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1588
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1732
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1732
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -252
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs3, fs2
  LUI t6, 1
  ADDIW t6, t6, -236
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -236
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 788(sp)
  FLW fs2, 788(sp)
  LUI t6, 1
  ADDIW t6, t6, -240
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -240
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FADD.S fs2, fs2, fs8
  LUI t6, 1
  ADDIW t6, t6, -228
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -228
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 792(sp)
  FLW fs2, 792(sp)
  LUI t6, 1
  ADDIW t6, t6, -232
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1264
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1688
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1688
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -232
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs3, fs2
  LUI t6, 1
  ADDIW t6, t6, -272
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -272
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 796(sp)
  LUI t6, 3
  ADDIW t6, t6, -1752
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s7, s7, s8
  FLW fs2, 0(s7)
  LUI t6, 1
  ADDIW t6, t6, -212
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -212
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 800(sp)
  LUI t6, 3
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s7, s7, s8
  FLW fs2, 0(s7)
  LUI t6, 1
  ADDIW t6, t6, -208
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -208
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 804(sp)
  FLW fs2, 804(sp)
  LUI t6, 1
  ADDIW t6, t6, 1728
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1728
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1592
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 800(sp)
  LUI t6, 1
  ADDIW t6, t6, -216
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1592
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1724
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1724
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -216
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs3, fs2
  LUI t6, 1
  ADDIW t6, t6, -204
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -204
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 656(sp)
  FLW fs2, 656(sp)
  LUI t6, 1
  ADDIW t6, t6, 1720
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1720
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1596
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 468(sp)
  LUI t6, 1
  ADDIW t6, t6, 1788
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1596
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1716
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1716
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1788
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs2, fs3
  LUI t6, 1
  ADDIW t6, t6, -200
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -200
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 608(sp)
  FLW fs2, 608(sp)
  LUI t6, 1
  ADDIW t6, t6, 1708
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1708
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1600
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 472(sp)
  LUI t6, 1
  ADDIW t6, t6, 1460
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1600
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1752
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1752
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1460
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs2, fs3
  LUI t6, 1
  ADDIW t6, t6, -192
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -192
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 612(sp)
  FLW fs2, 480(sp)
  LUI t6, 1
  ADDIW t6, t6, -364
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 476(sp)
  LUI t6, 1
  ADDIW t6, t6, 1784
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1784
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1364
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1364
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1780
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1780
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -364
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs2, fs3
  LUI t6, 1
  ADDIW t6, t6, -188
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -188
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 616(sp)
  LUI t6, 3
  ADDIW t6, t6, -1800
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s7, s7, s8
  FLW fs2, 0(s7)
  LUI t6, 1
  ADDIW t6, t6, -180
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -180
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 620(sp)
  FLW fs2, 620(sp)
  LUI t6, 1
  ADDIW t6, t6, -184
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 616(sp)
  LUI t6, 1
  ADDIW t6, t6, 1888
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1888
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1604
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1604
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1884
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1884
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -184
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs2, fs3
  LUI t6, 1
  ADDIW t6, t6, -176
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -176
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 624(sp)
  FLW fs2, 624(sp)
  LUI t6, 1
  ADDIW t6, t6, 1880
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1880
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1608
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 484(sp)
  LUI t6, 1
  ADDIW t6, t6, -356
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1608
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1876
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1876
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -356
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs2, fs3
  LUI t6, 1
  ADDIW t6, t6, -772
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -772
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 628(sp)
  LUI t6, 3
  ADDIW t6, t6, -1824
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s7, s7, s8
  FLW fs2, 0(s7)
  LUI t6, 1
  ADDIW t6, t6, -768
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -768
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 632(sp)
  FLW fs2, 632(sp)
  LUI t6, 1
  ADDIW t6, t6, 1872
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1872
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1612
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 488(sp)
  LUI t6, 1
  ADDIW t6, t6, -348
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1612
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1868
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1868
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -348
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs3, fs2
  LUI t6, 1
  ADDIW t6, t6, -764
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -764
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 636(sp)
  LUI t6, 3
  ADDIW t6, t6, -1832
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s7, s7, s8
  FLW fs2, 0(s7)
  LUI t6, 1
  ADDIW t6, t6, -756
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -756
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 640(sp)
  FLW fs2, 640(sp)
  LUI t6, 1
  ADDIW t6, t6, -760
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 636(sp)
  LUI t6, 1
  ADDIW t6, t6, 1864
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1864
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1616
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1616
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1860
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1860
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -760
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs2, fs3
  LUI t6, 1
  ADDIW t6, t6, -748
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -748
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 644(sp)
  FLW fs2, 644(sp)
  LUI t6, 1
  ADDIW t6, t6, -752
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 492(sp)
  LUI t6, 1
  ADDIW t6, t6, 1776
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1776
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1368
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1368
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1772
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1772
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -752
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs3, fs2
  LUI t6, 1
  ADDIW t6, t6, -740
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -740
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 648(sp)
  LUI t6, 3
  ADDIW t6, t6, -1856
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s7, s7, s8
  FLW fs2, 0(s7)
  LUI t6, 1
  ADDIW t6, t6, -732
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -732
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 652(sp)
  FLW fs2, 652(sp)
  LUI t6, 1
  ADDIW t6, t6, -736
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 496(sp)
  LUI t6, 1
  ADDIW t6, t6, 1768
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1768
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1372
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1372
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1764
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1764
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -736
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs2, fs3
  LUI t6, 1
  ADDIW t6, t6, -728
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -728
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 604(sp)
  LUI t6, 3
  ADDIW t6, t6, -1928
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s7, s7, s8
  FLW fs2, 0(s7)
  LUI t6, 1
  ADDIW t6, t6, -720
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -720
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 660(sp)
  FLW fs2, 660(sp)
  LUI t6, 1
  ADDIW t6, t6, -776
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 604(sp)
  LUI t6, 1
  ADDIW t6, t6, 1856
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1856
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1620
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1620
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1852
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1852
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -776
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs2, fs3
  LUI t6, 1
  ADDIW t6, t6, -712
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -712
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 664(sp)
  FLW fs2, 664(sp)
  LUI t6, 1
  ADDIW t6, t6, -716
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 500(sp)
  LUI t6, 1
  ADDIW t6, t6, 1760
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1760
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1376
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1376
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1756
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1756
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -716
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs2, fs3, fs2
  LUI t6, 1
  ADDIW t6, t6, -704
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -704
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 668(sp)
  FLW fs2, 720(sp)
  LUI t6, 1
  ADDIW t6, t6, -304
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -304
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 744(sp)
  LUI t6, 1
  ADDIW t6, t6, -468
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -468
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FSW fs2, 4(t6)
  FLW fs2, 708(sp)
  LUI t6, 1
  ADDIW t6, t6, -436
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -436
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FSW fs2, 8(t6)
  FLW fs2, 776(sp)
  LUI t6, 1
  ADDIW t6, t6, -260
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -260
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FSW fs2, 12(t6)
  FLW fs2, 796(sp)
  LUI t6, 1
  ADDIW t6, t6, -224
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -224
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FSW fs2, 16(t6)
  FLW fs2, 612(sp)
  LUI t6, 1
  ADDIW t6, t6, -196
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -196
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FSW fs2, 20(t6)
  FLW fs2, 628(sp)
  LUI t6, 1
  ADDIW t6, t6, -524
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -524
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FSW fs2, 24(t6)
  FLW fs2, 648(sp)
  LUI t6, 1
  ADDIW t6, t6, -744
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -744
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FSW fs2, 28(t6)
  FLW fs2, 668(sp)
  LUI t6, 1
  ADDIW t6, t6, -708
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -708
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FSW fs2, 32(t6)
  LA s7, .CONSTANT.7.0
  FLW fs2, 0(s7)
  LUI t6, 1
  ADDIW t6, t6, 272
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 272
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 1128(sp)
  FLW fs2, 1128(sp)
  LUI t6, 1
  ADDIW t6, t6, 268
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 268
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FSW fs2, 36(t6)
  LUI t6, 1
  ADDIW t6, t6, 1044
  ADD t6, t6, sp
  LW s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1036
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADDW s7, s7, s8
  LUI t6, 1
  ADDIW t6, t6, 1040
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADDW s7, s7, s8
  LUI t6, 1
  ADDIW t6, t6, -112
  ADD t6, t6, sp
  SW s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -116
  ADD t6, t6, sp
  LW s7, 0(t6)
  ADDW s8, s7, s10
  ADDW s7, s8, a0
  LUI t6, 1
  ADDIW t6, t6, -108
  ADD t6, t6, sp
  SW s7, 0(t6)
  LUI t6, 3
  ADDIW t6, t6, -1912
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s9, s7, s8
  LW s7, 0(s9)
  LUI t6, 1
  ADDIW t6, t6, -104
  ADD t6, t6, sp
  SW s7, 0(t6)
  LUI t6, 3
  ADDIW t6, t6, -1904
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s11, s7, s8
  LW s11, 0(s11)
  LUI t6, 1
  ADDIW t6, t6, -104
  ADD t6, t6, sp
  LW s7, 0(t6)
  ADDW s9, s7, s11
  ADDW s7, s9, s0
  LUI t6, 1
  ADDIW t6, t6, -100
  ADD t6, t6, sp
  SW s7, 0(t6)
  LUI t6, 3
  ADDIW t6, t6, -1880
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s11, s7, s8
  LW s11, 0(s11)
  ADDW s7, s1, s11
  LUI t6, 1
  ADDIW t6, t6, -96
  ADD t6, t6, sp
  SW s7, 0(t6)
  LUI t6, 3
  ADDIW t6, t6, -1872
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s11, s7, s8
  LW s11, 0(s11)
  LUI t6, 1
  ADDIW t6, t6, -96
  ADD t6, t6, sp
  LW s7, 0(t6)
  ADDW s7, s7, s11
  LUI t6, 1
  ADDIW t6, t6, -92
  ADD t6, t6, sp
  SW s7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 696
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD a1, s7, s8
  LUI t6, 3
  ADDIW t6, t6, -1344
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 3
  ADDIW a1, a1, -1344
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s7, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -88
  ADD t6, t6, sp
  SW s7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -832
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s7, s7, s8
  LUI t6, 2
  ADDIW t6, t6, 848
  ADD t6, t6, sp
  SD s7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 848
  ADD t6, t6, sp
  LD s7, 0(t6)
  LW s7, 0(s7)
  LUI t6, 1
  ADDIW t6, t6, 1056
  ADD t6, t6, sp
  SW s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -88
  ADD t6, t6, sp
  LW s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1056
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADDW a1, s7, s8
  SW a1, 1140(sp)
  LW a1, 1140(sp)
  ADDW s7, a1, s2
  LUI t6, 1
  ADDIW t6, t6, -84
  ADD t6, t6, sp
  SW s7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -848
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s7, s7, s8
  LUI t6, 2
  ADDIW t6, t6, 784
  ADD t6, t6, sp
  SD s7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 784
  ADD t6, t6, sp
  LD s7, 0(t6)
  LW s7, 0(s7)
  LUI t6, 1
  ADDIW t6, t6, -80
  ADD t6, t6, sp
  SW s7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -856
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s7, s7, s8
  LUI t6, 2
  ADDIW t6, t6, 864
  ADD t6, t6, sp
  SD s7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 864
  ADD t6, t6, sp
  LD s7, 0(t6)
  LW s7, 0(s7)
  LUI t6, 1
  ADDIW t6, t6, 1024
  ADD t6, t6, sp
  SW s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -80
  ADD t6, t6, sp
  LW s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1024
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADDW s7, s7, s8
  LUI t6, 1
  ADDIW t6, t6, 1076
  ADD t6, t6, sp
  SW s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1076
  ADD t6, t6, sp
  LW s7, 0(t6)
  ADDW s7, s7, s3
  LUI t6, 1
  ADDIW t6, t6, -76
  ADD t6, t6, sp
  SW s7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -880
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s7, s7, s8
  LUI t6, 2
  ADDIW t6, t6, 872
  ADD t6, t6, sp
  SD s7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 872
  ADD t6, t6, sp
  LD s7, 0(t6)
  LW s7, 0(s7)
  LUI t6, 1
  ADDIW t6, t6, 1088
  ADD t6, t6, sp
  SW s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1088
  ADD t6, t6, sp
  LW s7, 0(t6)
  ADDW s7, s4, s7
  LUI t6, 1
  ADDIW t6, t6, 1092
  ADD t6, t6, sp
  SW s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1092
  ADD t6, t6, sp
  LW s7, 0(t6)
  ADDW s7, s7, s5
  LUI t6, 1
  ADDIW t6, t6, -220
  ADD t6, t6, sp
  SW s7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -904
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s7, s7, s8
  LUI t6, 2
  ADDIW t6, t6, 880
  ADD t6, t6, sp
  SD s7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 880
  ADD t6, t6, sp
  LD s7, 0(t6)
  LW s7, 0(s7)
  LUI t6, 1
  ADDIW t6, t6, 1104
  ADD t6, t6, sp
  SW s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1104
  ADD t6, t6, sp
  LW s7, 0(t6)
  ADDW s7, s6, s7
  LUI t6, 1
  ADDIW t6, t6, -268
  ADD t6, t6, sp
  SW s7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -912
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADD s7, s7, s8
  LUI t6, 2
  ADDIW t6, t6, 888
  ADD t6, t6, sp
  SD s7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 888
  ADD t6, t6, sp
  LD s7, 0(t6)
  LW s7, 0(s7)
  LUI t6, 1
  ADDIW t6, t6, 1116
  ADD t6, t6, sp
  SW s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -268
  ADD t6, t6, sp
  LW s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1116
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADDW s7, s7, s8
  LUI t6, 1
  ADDIW t6, t6, -264
  ADD t6, t6, sp
  SW s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1044
  ADD t6, t6, sp
  LW s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1036
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADDW s7, s7, s8
  LUI t6, 1
  ADDIW t6, t6, 932
  ADD t6, t6, sp
  SW s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 932
  ADD t6, t6, sp
  LW s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1040
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADDW s7, s7, s8
  LUI t6, 1
  ADDIW t6, t6, 936
  ADD t6, t6, sp
  SW s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -116
  ADD t6, t6, sp
  LW s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 936
  ADD t6, t6, sp
  LW s8, 0(t6)
  ADDW s7, s8, s7
  LUI t6, 1
  ADDIW t6, t6, 940
  ADD t6, t6, sp
  SW s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -112
  ADD t6, t6, sp
  LW s7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -108
  ADD t6, t6, sp
  LW s7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW s7, 4(t6)
  LUI t6, 1
  ADDIW t6, t6, -100
  ADD t6, t6, sp
  LW s7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW s7, 8(t6)
  LUI t6, 1
  ADDIW t6, t6, -92
  ADD t6, t6, sp
  LW s7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW s7, 12(t6)
  LUI t6, 1
  ADDIW t6, t6, -84
  ADD t6, t6, sp
  LW s7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW s7, 16(t6)
  LUI t6, 1
  ADDIW t6, t6, -76
  ADD t6, t6, sp
  LW s7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW s7, 20(t6)
  LUI t6, 1
  ADDIW t6, t6, -220
  ADD t6, t6, sp
  LW s7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW s7, 24(t6)
  LUI t6, 1
  ADDIW t6, t6, -264
  ADD t6, t6, sp
  LW s7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW s7, 28(t6)
  LUI t6, 1
  ADDIW t6, t6, 940
  ADD t6, t6, sp
  LW s7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW s7, 32(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW zero, 36(t6)
  LUI t6, 1
  ADDIW t6, t6, -116
  ADD t6, t6, sp
  LW s7, 0(t6)
  BNE s7, zero, bb20
  # implict jump to bb16
bb16:
  LUI t6, 1
  ADDIW t6, t6, 972
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1996
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 972
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1944
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1944
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1996
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSGNJ.S fs2, fs3, fs2
  LUI t6, 1
  ADDIW t6, t6, 1524
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1524
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1580
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1036
  ADD t6, t6, sp
  LW s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 608
  ADD t6, t6, sp
  SW s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 256
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 256
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSGNJ.S fs2, fs2, fs3
  LUI t6, 1
  ADDIW t6, t6, 256
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 256
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 892(sp)
  LUI t6, 1
  ADDIW t6, t6, 1040
  ADD t6, t6, sp
  LW s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 612
  ADD t6, t6, sp
  SW s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 132
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 132
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSGNJ.S fs2, fs2, fs3
  LUI t6, 1
  ADDIW t6, t6, 132
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 132
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 896(sp)
  LUI t6, 1
  ADDIW t6, t6, 188
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 188
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSGNJ.S fs2, fs2, fs3
  LUI t6, 1
  ADDIW t6, t6, 188
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 188
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSW fs2, 900(sp)
  LUI t6, 2
  ADDIW t6, t6, 1864
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 472
  ADD t6, t6, sp
  SD s7, 0(t6)
  LUI t6, 3
  ADDIW t6, t6, -1936
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 480
  ADD t6, t6, sp
  SD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 624
  ADD t6, t6, sp
  SW s10, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 628
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1872
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 488
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1912
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 496
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1904
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 432
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 44
  ADD a0, a0, sp
  SW s0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 1880
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 512
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1888
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 520
  ADD t6, t6, sp
  SD a0, 0(t6)
  FSW fs6, 904(sp)
  FSW fs1, 908(sp)
  LUI t6, 1
  ADDIW t6, t6, 224
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 224
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSGNJ.S fs1, fs1, fs2
  LUI a0, 1
  ADDIW a0, a0, 224
  ADD a0, a0, sp
  FSW fs1, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 1920
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 528
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 60
  ADD a0, a0, sp
  SW s1, 0(a0)
  FSW fs0, 964(sp)
  LUI a0, 3
  ADDIW a0, a0, -1880
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 536
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1952
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 3
  ADDIW t6, t6, -1456
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1872
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 544
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 696
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 552
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1960
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 560
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1264
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1264
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FSGNJ.S fs3, fs3, fs4
  LUI a0, 2
  ADDIW a0, a0, -832
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 568
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1752
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 776
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1760
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 768
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs4, 468(sp)
  FLW fs5, 468(sp)
  FSGNJ.S fs4, fs4, fs5
  LUI t6, 1
  ADDIW t6, t6, -1500
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  FLW fs4, 472(sp)
  FLW fs5, 472(sp)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1116(sp)
  LUI a0, 2
  ADDIW a0, a0, -848
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 760
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -856
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 752
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 100
  ADD t6, t6, sp
  SW s3, 0(t6)
  FLW fs4, 476(sp)
  FLW fs5, 476(sp)
  FSGNJ.S fs4, fs4, fs5
  FLW fs5, 480(sp)
  FLW fs6, 480(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI a0, 2
  ADDIW a0, a0, -880
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 2040
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1800
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 2032
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -904
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 744
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -912
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 2016
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs6, 484(sp)
  FLW fs7, 484(sp)
  FSGNJ.S fs6, fs6, fs7
  FLW fs0, 488(sp)
  LUI t6, 1
  ADDIW t6, t6, 304
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs7, 488(sp)
  LUI t6, 1
  ADDIW t6, t6, 304
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FSGNJ.S fs7, fs0, fs7
  LUI a0, 3
  ADDIW a0, a0, -1824
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 736
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1044
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 112
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1952
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 2000
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1832
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 728
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs0, 492(sp)
  LUI t6, 1
  ADDIW t6, t6, 312
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 492(sp)
  LUI t6, 1
  ADDIW t6, t6, 308
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 308
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 312
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, 200
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 200
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FSW fs0, 1120(sp)
  LUI a0, 1
  ADDIW a0, a0, 1040
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1712
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 496(sp)
  LUI t6, 1
  ADDIW t6, t6, 320
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 496(sp)
  LUI t6, 1
  ADDIW t6, t6, 316
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 316
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 320
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, 296
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 296
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1492
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 3
  ADDIW a0, a0, -1856
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1984
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1928
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1976
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs0, 500(sp)
  LUI t6, 1
  ADDIW t6, t6, 328
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 500(sp)
  LUI t6, 1
  ADDIW t6, t6, 324
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 324
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 328
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, 216
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 216
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FSW fs0, 1124(sp)
  LUI t6, 1
  ADDIW t6, t6, -116
  ADD t6, t6, sp
  LW s3, 0(t6)
  # implict jump to bb17
bb17:
  LUI t6, 1
  ADDIW t6, t6, 420
  ADD t6, t6, sp
  SW s3, 0(t6)
  FLW fs0, 1124(sp)
  LUI t6, 1
  ADDIW t6, t6, 212
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1124(sp)
  LUI t6, 1
  ADDIW t6, t6, 208
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 208
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 212
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, 168
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 168
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FSW fs0, 1220(sp)
  LUI a0, 2
  ADDIW a0, a0, 1976
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1264
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1984
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1272
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1492
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 292
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1492
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 288
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
  FSGNJ.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, 164
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 164
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FSW fs0, 1216(sp)
  LUI a0, 1
  ADDIW a0, a0, 1712
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 408
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1120(sp)
  LUI t6, 1
  ADDIW t6, t6, 196
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1120(sp)
  LUI t6, 1
  ADDIW t6, t6, 192
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 192
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 196
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, 152
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 152
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FSW fs0, 1264(sp)
  LUI a0, 2
  ADDIW a0, a0, 728
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1352
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 2000
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1288
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 396
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 736
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1296
  ADD t6, t6, sp
  SD a0, 0(t6)
  FSW fs7, 1408(sp)
  FSW fs6, 1404(sp)
  LUI a0, 2
  ADDIW a0, a0, 2016
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1304
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 744
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1312
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 380
  ADD a0, a0, sp
  SW s6, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 2032
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1320
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 372
  ADD a0, a0, sp
  SW s5, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 2040
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1328
  ADD t6, t6, sp
  SD a0, 0(t6)
  FSW fs5, 1400(sp)
  FSW fs4, 1396(sp)
  LUI a0, 1
  ADDIW a0, a0, 364
  ADD a0, a0, sp
  SW s4, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 100
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 360
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 752
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1336
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 760
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1344
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs4, 1116(sp)
  FLW fs5, 1116(sp)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1392(sp)
  LUI t6, 1
  ADDIW t6, t6, -1500
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1500
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1388(sp)
  LUI a0, 2
  ADDIW a0, a0, 768
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1280
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 776
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1208
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 340
  ADD a0, a0, sp
  SW s2, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 568
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1200
  ADD t6, t6, sp
  SD a0, 0(t6)
  FSW fs3, 1872(sp)
  LUI a0, 2
  ADDIW a0, a0, 560
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1192
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 552
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1184
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 544
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1176
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1456
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1168
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 536
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1160
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs0, 964(sp)
  FLW fs1, 964(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, 60
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1976
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 528
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 3
  ADDIW t6, t6, -1496
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 224
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 224
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSGNJ.S fs1, fs1, fs2
  LUI t6, 1
  ADDIW t6, t6, 224
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  FLW fs1, 908(sp)
  FLW fs2, 908(sp)
  FSGNJ.S fs1, fs1, fs2
  FLW fs2, 904(sp)
  FLW fs5, 904(sp)
  FSGNJ.S fs2, fs2, fs5
  LUI a0, 2
  ADDIW a0, a0, 520
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 3
  ADDIW t6, t6, -1488
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 512
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 3
  ADDIW t6, t6, -1480
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 44
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1952
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 432
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1704
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 496
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 2
  ADDIW a1, a1, 1176
  ADD a1, a1, sp
  SD a0, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 488
  ADD a1, a1, sp
  LD a1, 0(a1)
  LUI a0, 1
  ADDIW a0, a0, 628
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 624
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 480
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 472
  ADD t6, t6, sp
  LD s5, 0(t6)
  FLW fs5, 900(sp)
  FLW fs6, 900(sp)
  FSGNJ.S fs5, fs5, fs6
  FLW fs6, 896(sp)
  FLW fs3, 896(sp)
  LUI t6, 1
  ADDIW t6, t6, 264
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 264
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSGNJ.S fs6, fs6, fs3
  LUI t6, 1
  ADDIW t6, t6, 612
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 512
  ADD t6, t6, sp
  SW s3, 0(t6)
  FLW fs3, 892(sp)
  LUI t6, 1
  ADDIW t6, t6, 252
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  FLW fs3, 892(sp)
  LUI t6, 1
  ADDIW t6, t6, 248
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 248
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 252
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FSGNJ.S fs3, fs4, fs3
  LUI t6, 1
  ADDIW t6, t6, 260
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 608
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1936
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1580
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1520
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1580
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1516
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1516
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1520
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FSGNJ.S fs3, fs4, fs3
  LUI t6, 1
  ADDIW t6, t6, 1684
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1684
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 960
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 420
  ADD t6, t6, sp
  LW s3, 0(t6)
  FCVT.S.W fs3, s3
  LUI t6, 1
  ADDIW t6, t6, -32
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -32
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 1224(sp)
  FLW fs3, 1220(sp)
  LUI t6, 1
  ADDIW t6, t6, -36
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -36
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FCVT.W.S s3, fs3, rtz
  LUI t6, 1
  ADDIW t6, t6, 424
  ADD t6, t6, sp
  SW s3, 0(t6)
  # implict jump to bb18
bb18:
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  ADD s3, t6, s3
  LUI t6, 2
  ADDIW t6, t6, -1456
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1456
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, 516
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 516
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 208(sp)
  FLW fs3, 208(sp)
  LUI t6, 1
  ADDIW t6, t6, 492
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 960
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1680
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1680
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 492
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FADD.S fs3, fs3, fs4
  LUI t6, 1
  ADDIW t6, t6, 524
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 524
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 212(sp)
  FLW fs3, 212(sp)
  LUI t6, 1
  ADDIW t6, t6, 520
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 520
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 260
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FADD.S fs3, fs3, fs4
  LUI t6, 1
  ADDIW t6, t6, 384
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 384
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 216(sp)
  FLW fs3, 216(sp)
  LUI t6, 1
  ADDIW t6, t6, 528
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 528
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs3, fs3, fs6
  LUI t6, 1
  ADDIW t6, t6, 344
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 344
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 220(sp)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s3, 0(t6)
  ADD s3, s5, s3
  LUI t6, 2
  ADDIW t6, t6, -1464
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1464
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 224(sp)
  FLW fs3, 224(sp)
  LUI t6, 1
  ADDIW t6, t6, 348
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 348
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs3, fs5, fs3
  LUI t6, 1
  ADDIW t6, t6, 368
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 368
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 228(sp)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s3, 0(t6)
  ADD s3, a1, s3
  LUI t6, 2
  ADDIW t6, t6, -1472
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1472
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, 376
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 376
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 232(sp)
  FLW fs3, 232(sp)
  LUI t6, 1
  ADDIW t6, t6, 1800
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1800
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1624
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  FLW fs3, 228(sp)
  LUI t6, 1
  ADDIW t6, t6, 356
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1624
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1844
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1844
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 356
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FADD.S fs3, fs4, fs3
  LUI t6, 1
  ADDIW t6, t6, 388
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 388
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 236(sp)
  LUI t6, 3
  ADDIW t6, t6, -1480
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADD s3, s3, s6
  LUI t6, 2
  ADDIW t6, t6, -1544
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1544
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 240(sp)
  FLW fs3, 240(sp)
  LUI t6, 1
  ADDIW t6, t6, 1840
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1840
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1680
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  FLW fs3, 236(sp)
  LUI t6, 1
  ADDIW t6, t6, 332
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1680
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1836
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1836
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 332
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FADD.S fs3, fs4, fs3
  LUI t6, 1
  ADDIW t6, t6, 404
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 404
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 244(sp)
  LUI t6, 3
  ADDIW t6, t6, -1488
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADD s3, s3, s6
  LUI t6, 2
  ADDIW t6, t6, -1608
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1608
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, 416
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 416
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 248(sp)
  FLW fs3, 248(sp)
  LUI t6, 1
  ADDIW t6, t6, 412
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 412
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs3, fs3, fs2
  LUI t6, 1
  ADDIW t6, t6, 708
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 708
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 200(sp)
  FLW fs3, 200(sp)
  LUI t6, 1
  ADDIW t6, t6, 704
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 704
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs3, fs3, fs1
  LUI t6, 1
  ADDIW t6, t6, 716
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 716
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 256(sp)
  FLW fs3, 256(sp)
  LUI t6, 1
  ADDIW t6, t6, 712
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 712
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 224
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FADD.S fs3, fs3, fs4
  LUI t6, 1
  ADDIW t6, t6, 724
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 724
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 260(sp)
  LUI t6, 3
  ADDIW t6, t6, -1496
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADD s3, s3, s6
  LUI t6, 2
  ADDIW t6, t6, -1600
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1600
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, 584
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 584
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 264(sp)
  FLW fs3, 264(sp)
  LUI t6, 1
  ADDIW t6, t6, 728
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 728
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs3, fs3, fs0
  LUI t6, 1
  ADDIW t6, t6, 540
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 540
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 268(sp)
  FLW fs3, 268(sp)
  LUI t6, 1
  ADDIW t6, t6, 536
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 536
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs3, fs3, fs10
  LUI t6, 1
  ADDIW t6, t6, 548
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 548
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 272(sp)
  FLW fs3, 272(sp)
  LUI t6, 1
  ADDIW t6, t6, 544
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 544
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs3, fs3, fs9
  LUI t6, 1
  ADDIW t6, t6, 556
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 556
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 276(sp)
  LUI t6, 2
  ADDIW t6, t6, -1168
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADD s3, s3, s6
  LUI t6, 2
  ADDIW t6, t6, -1592
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1592
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, 560
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 560
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 280(sp)
  LUI t6, 2
  ADDIW t6, t6, -1192
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADD s3, s3, s6
  LUI t6, 2
  ADDIW t6, t6, -1584
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1584
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, 568
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 568
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 284(sp)
  FLW fs3, 284(sp)
  LUI t6, 1
  ADDIW t6, t6, 564
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  FLW fs3, 280(sp)
  LUI t6, 1
  ADDIW t6, t6, 1832
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1832
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1632
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1632
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1828
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1828
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 564
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FADD.S fs3, fs3, fs4
  LUI t6, 1
  ADDIW t6, t6, 576
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 576
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 288(sp)
  FLW fs3, 288(sp)
  LUI t6, 1
  ADDIW t6, t6, 572
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 572
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs3, fs3, fs8
  LUI t6, 1
  ADDIW t6, t6, 532
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 532
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 292(sp)
  FLW fs3, 292(sp)
  LUI t6, 1
  ADDIW t6, t6, 580
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  FLW fs3, 1872(sp)
  LUI t6, 1
  ADDIW t6, t6, 1512
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1512
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 580
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FADD.S fs3, fs4, fs3
  LUI t6, 1
  ADDIW t6, t6, 592
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 592
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 296(sp)
  LUI t6, 2
  ADDIW t6, t6, -1208
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADD s3, s3, s6
  LUI t6, 2
  ADDIW t6, t6, -1576
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1576
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, 600
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 600
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 1564(sp)
  LUI t6, 2
  ADDIW t6, t6, -1280
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADD s3, s3, s6
  LUI t6, 2
  ADDIW t6, t6, -1568
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1568
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, 604
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 604
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 760(sp)
  FLW fs3, 760(sp)
  LUI t6, 1
  ADDIW t6, t6, 1824
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1824
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1636
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  FLW fs3, 1564(sp)
  LUI t6, 1
  ADDIW t6, t6, 596
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1636
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1816
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1816
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 596
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FADD.S fs3, fs4, fs3
  LUI t6, 1
  ADDIW t6, t6, 616
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 616
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 1320(sp)
  FLW fs3, 1388(sp)
  LUI t6, 1
  ADDIW t6, t6, -48
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  FLW fs3, 1320(sp)
  LUI t6, 1
  ADDIW t6, t6, 1812
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1812
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1640
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1640
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1804
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1804
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -48
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FADD.S fs3, fs3, fs4
  LUI t6, 1
  ADDIW t6, t6, 284
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 284
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 1324(sp)
  FLW fs3, 1392(sp)
  LUI t6, 1
  ADDIW t6, t6, 1576
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1576
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1660
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  FLW fs3, 1324(sp)
  LUI t6, 1
  ADDIW t6, t6, 620
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1660
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1572
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1572
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 620
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FADD.S fs3, fs4, fs3
  LUI t6, 1
  ADDIW t6, t6, 40
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 40
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 1328(sp)
  FLW fs3, 1400(sp)
  LUI t6, 1
  ADDIW t6, t6, 1568
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1568
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1664
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  FLW fs3, 1396(sp)
  LUI t6, 1
  ADDIW t6, t6, -44
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1664
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1564
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1564
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -44
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FADD.S fs3, fs4, fs3
  LUI t6, 1
  ADDIW t6, t6, 52
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 52
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 1332(sp)
  LUI t6, 2
  ADDIW t6, t6, -1320
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADD s3, s3, s6
  LUI t6, 2
  ADDIW t6, t6, -1560
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1560
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, 56
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 56
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 1336(sp)
  FLW fs3, 1336(sp)
  LUI t6, 1
  ADDIW t6, t6, 1656
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1656
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1644
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  FLW fs3, 1332(sp)
  LUI t6, 1
  ADDIW t6, t6, 48
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1644
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1604
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1604
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 48
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FADD.S fs3, fs4, fs3
  LUI t6, 1
  ADDIW t6, t6, 64
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 64
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 1340(sp)
  FLW fs3, 1404(sp)
  LUI t6, 1
  ADDIW t6, t6, -40
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  FLW fs3, 1340(sp)
  LUI t6, 1
  ADDIW t6, t6, 1600
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1600
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1648
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1648
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1596
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1596
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -40
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FADD.S fs3, fs3, fs4
  LUI t6, 1
  ADDIW t6, t6, 72
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 72
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 1344(sp)
  LUI t6, 2
  ADDIW t6, t6, -1296
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADD s3, s3, s6
  LUI t6, 2
  ADDIW t6, t6, -1552
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1552
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, 80
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 80
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 1348(sp)
  FLW fs3, 1408(sp)
  LUI t6, 1
  ADDIW t6, t6, 1508
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1508
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1668
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  FLW fs3, 1348(sp)
  LUI t6, 1
  ADDIW t6, t6, 76
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1668
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1556
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1556
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 76
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FADD.S fs3, fs3, fs4
  LUI t6, 1
  ADDIW t6, t6, 88
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 88
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 1352(sp)
  LUI t6, 2
  ADDIW t6, t6, -1352
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADD s3, s3, s6
  LUI t6, 2
  ADDIW t6, t6, -1616
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1616
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, 92
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 92
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 1356(sp)
  FLW fs3, 1356(sp)
  LUI t6, 1
  ADDIW t6, t6, 1592
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1592
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1652
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  FLW fs3, 1352(sp)
  LUI t6, 1
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1652
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1588
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1588
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FADD.S fs3, fs4, fs3
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 1360(sp)
  FLW fs3, 1264(sp)
  LUI t6, 1
  ADDIW t6, t6, 1552
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1552
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1672
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  FLW fs3, 1360(sp)
  LUI t6, 1
  ADDIW t6, t6, 96
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1672
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1548
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1548
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 96
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FADD.S fs3, fs4, fs3
  LUI t6, 1
  ADDIW t6, t6, 116
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 116
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 1312(sp)
  LUI t6, 2
  ADDIW t6, t6, -1272
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADD s3, s3, s6
  LUI t6, 2
  ADDIW t6, t6, -1536
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1536
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, 124
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 124
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 1368(sp)
  FLW fs3, 1216(sp)
  LUI t6, 1
  ADDIW t6, t6, 1544
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1544
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1676
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  FLW fs3, 1368(sp)
  LUI t6, 1
  ADDIW t6, t6, 120
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1676
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1540
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1540
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 120
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FADD.S fs3, fs3, fs4
  LUI t6, 1
  ADDIW t6, t6, 128
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 128
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 1372(sp)
  LUI t6, 2
  ADDIW t6, t6, -1264
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADD s3, s3, s6
  LUI t6, 2
  ADDIW t6, t6, -1528
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1528
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -68
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -68
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 1376(sp)
  FLW fs3, 1376(sp)
  LUI t6, 1
  ADDIW t6, t6, -20
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  FLW fs3, 1372(sp)
  LUI t6, 1
  ADDIW t6, t6, 1584
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1584
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1656
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1656
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1580
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1580
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -20
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FADD.S fs3, fs3, fs4
  LUI t6, 1
  ADDIW t6, t6, -60
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -60
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 1380(sp)
  FLW fs3, 1224(sp)
  LUI t6, 1
  ADDIW t6, t6, 1536
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1536
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1628
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  FLW fs3, 1380(sp)
  LUI t6, 1
  ADDIW t6, t6, -64
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1628
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1532
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1532
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -64
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FADD.S fs3, fs4, fs3
  LUI t6, 1
  ADDIW t6, t6, -52
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -52
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 1384(sp)
  FLW fs3, 220(sp)
  LUI t6, 1
  ADDIW t6, t6, 336
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 336
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  FLW fs3, 244(sp)
  LUI t6, 1
  ADDIW t6, t6, 400
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 400
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FSW fs3, 4(t6)
  FLW fs3, 260(sp)
  LUI t6, 1
  ADDIW t6, t6, 720
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 720
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FSW fs3, 8(t6)
  FLW fs3, 276(sp)
  LUI t6, 1
  ADDIW t6, t6, 552
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 552
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FSW fs3, 12(t6)
  FLW fs3, 296(sp)
  LUI t6, 1
  ADDIW t6, t6, 588
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 588
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FSW fs3, 16(t6)
  FLW fs3, 1328(sp)
  LUI t6, 1
  ADDIW t6, t6, 36
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 36
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FSW fs3, 20(t6)
  FLW fs3, 1344(sp)
  LUI t6, 1
  ADDIW t6, t6, 68
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 68
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FSW fs3, 24(t6)
  FLW fs3, 1312(sp)
  LUI t6, 1
  ADDIW t6, t6, 108
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 108
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FSW fs3, 28(t6)
  FLW fs3, 1384(sp)
  LUI t6, 1
  ADDIW t6, t6, -56
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -56
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FSW fs3, 32(t6)
  LA s3, .CONSTANT.7.0
  LUI t6, 2
  ADDIW t6, t6, 704
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 704
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, 280
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 280
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 1132(sp)
  FLW fs3, 1132(sp)
  LUI t6, 1
  ADDIW t6, t6, 276
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 276
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FSW fs3, 36(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  ADD s3, t6, s3
  LUI t6, 2
  ADDIW t6, t6, -1520
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1520
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -480
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -480
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1936
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADDW s3, s3, s6
  LUI t6, 1
  ADDIW t6, t6, -624
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 512
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -624
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADDW s3, s6, s3
  LUI t6, 1
  ADDIW t6, t6, -672
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s3, 0(t6)
  ADD s3, s4, s3
  LUI t6, 2
  ADDIW t6, t6, -1512
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1512
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -664
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -664
  ADD t6, t6, sp
  LW s3, 0(t6)
  ADDW s3, s3, s0
  LUI t6, 1
  ADDIW t6, t6, -660
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -660
  ADD t6, t6, sp
  LW s3, 0(t6)
  ADDW s3, s3, a0
  LUI t6, 1
  ADDIW t6, t6, -656
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1176
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADD s3, s3, s6
  LUI t6, 2
  ADDIW t6, t6, -1504
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1504
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -648
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 1704
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADD s3, s3, s6
  LUI t6, 2
  ADDIW t6, t6, -1496
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1496
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -640
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -640
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -648
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADDW s3, s6, s3
  LUI t6, 1
  ADDIW t6, t6, -636
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -636
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1952
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADDW s3, s3, s6
  LUI t6, 1
  ADDIW t6, t6, -632
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1160
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADD s3, s3, s6
  LUI t6, 2
  ADDIW t6, t6, -1488
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1488
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -676
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -676
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1976
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADDW s3, s6, s3
  LUI t6, 1
  ADDIW t6, t6, -620
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1176
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADD s3, s3, s6
  LUI t6, 2
  ADDIW t6, t6, -1480
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1480
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -612
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -612
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -620
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADDW s3, s6, s3
  LUI t6, 1
  ADDIW t6, t6, -608
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1184
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADD s3, s3, s6
  LUI t6, 2
  ADDIW t6, t6, -1096
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1096
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -600
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1200
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADD s3, s3, s6
  LUI t6, 2
  ADDIW t6, t6, -1104
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1104
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -592
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -592
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -600
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADDW s3, s6, s3
  LUI t6, 1
  ADDIW t6, t6, -588
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 340
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -588
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADDW s3, s6, s3
  LUI t6, 1
  ADDIW t6, t6, -584
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1344
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADD s3, s3, s6
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -120
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1336
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADD s3, s3, s6
  LUI t6, 2
  ADDIW t6, t6, -1120
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1120
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, 440
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 440
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -120
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADDW s3, s6, s3
  LUI t6, 1
  ADDIW t6, t6, 444
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 360
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 444
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADDW s3, s6, s3
  LUI t6, 1
  ADDIW t6, t6, 448
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1328
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADD s3, s3, s6
  LUI t6, 2
  ADDIW t6, t6, -1128
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1128
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, 456
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 364
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 456
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADDW s3, s3, s6
  LUI t6, 1
  ADDIW t6, t6, 460
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 372
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 460
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADDW s3, s6, s3
  LUI t6, 1
  ADDIW t6, t6, 464
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1312
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADD s3, s3, s6
  LUI t6, 2
  ADDIW t6, t6, -1136
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1136
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, 472
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 380
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 472
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADDW s3, s3, s6
  LUI t6, 1
  ADDIW t6, t6, 476
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1304
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADD s3, s3, s6
  LUI t6, 2
  ADDIW t6, t6, -1144
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1144
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, 432
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 432
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 476
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADDW s3, s6, s3
  LUI t6, 1
  ADDIW t6, t6, 488
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1288
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADD s3, s3, s6
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1152
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, 496
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 396
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 496
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADDW s3, s3, s6
  LUI t6, 1
  ADDIW t6, t6, 500
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 408
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 500
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADDW s3, s6, s3
  LUI t6, 1
  ADDIW t6, t6, 504
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 424
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 504
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADDW s3, s6, s3
  LUI t6, 1
  ADDIW t6, t6, 508
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -672
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -656
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW s3, 4(t6)
  LUI t6, 1
  ADDIW t6, t6, -632
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW s3, 8(t6)
  LUI t6, 1
  ADDIW t6, t6, -608
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW s3, 12(t6)
  LUI t6, 1
  ADDIW t6, t6, -584
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW s3, 16(t6)
  LUI t6, 1
  ADDIW t6, t6, 448
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW s3, 20(t6)
  LUI t6, 1
  ADDIW t6, t6, 464
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW s3, 24(t6)
  LUI t6, 1
  ADDIW t6, t6, 488
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW s3, 28(t6)
  LUI t6, 1
  ADDIW t6, t6, 508
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW s3, 32(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW zero, 36(t6)
  LUI t6, 1
  ADDIW t6, t6, 424
  ADD t6, t6, sp
  LW s3, 0(t6)
  BNE s3, zero, bb20
  # implict jump to bb19
bb19:
  LUI t6, 1
  ADDIW t6, t6, 960
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1676
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 960
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1672
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1672
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1676
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FSGNJ.S fs3, fs4, fs3
  LUI t6, 1
  ADDIW t6, t6, 1528
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1528
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1580
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1936
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 608
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 260
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 260
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FSGNJ.S fs3, fs3, fs4
  LUI t6, 1
  ADDIW t6, t6, 260
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 260
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSW fs3, 892(sp)
  LUI t6, 1
  ADDIW t6, t6, 512
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 612
  ADD t6, t6, sp
  SW s3, 0(t6)
  FSW fs6, 896(sp)
  FSW fs5, 900(sp)
  LUI t6, 2
  ADDIW t6, t6, 472
  ADD t6, t6, sp
  SD s5, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 480
  ADD t6, t6, sp
  SD s4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 624
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 628
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 488
  ADD a0, a0, sp
  SD a1, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 1176
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 496
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1704
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 432
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1952
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 44
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1480
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 512
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 3
  ADDIW a0, a0, -1488
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 520
  ADD t6, t6, sp
  SD a0, 0(t6)
  FSW fs2, 904(sp)
  FSW fs1, 908(sp)
  LUI t6, 1
  ADDIW t6, t6, 224
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 224
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSGNJ.S fs1, fs1, fs2
  LUI a0, 1
  ADDIW a0, a0, 224
  ADD a0, a0, sp
  FSW fs1, 0(a0)
  LUI a0, 3
  ADDIW a0, a0, -1496
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 528
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1976
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 60
  ADD t6, t6, sp
  SW a0, 0(t6)
  FSW fs0, 964(sp)
  LUI a0, 2
  ADDIW a0, a0, -1160
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 536
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1168
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 3
  ADDIW t6, t6, -1456
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1176
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 544
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1184
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 552
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1192
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 560
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs3, 1872(sp)
  FLW fs4, 1872(sp)
  FSGNJ.S fs3, fs3, fs4
  LUI a0, 2
  ADDIW a0, a0, -1200
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 568
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 340
  ADD t6, t6, sp
  LW s2, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1208
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 776
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1280
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 768
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs4, 1388(sp)
  FLW fs5, 1388(sp)
  FSGNJ.S fs4, fs4, fs5
  LUI t6, 1
  ADDIW t6, t6, -1500
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  FLW fs4, 1392(sp)
  FLW fs5, 1392(sp)
  FSGNJ.S fs4, fs4, fs5
  FSW fs4, 1116(sp)
  LUI a0, 2
  ADDIW a0, a0, -1344
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 760
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1336
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 752
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 360
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 100
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 364
  ADD t6, t6, sp
  LW s4, 0(t6)
  FLW fs4, 1396(sp)
  FLW fs5, 1396(sp)
  FSGNJ.S fs4, fs4, fs5
  FLW fs5, 1400(sp)
  FLW fs6, 1400(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI a0, 2
  ADDIW a0, a0, -1328
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 2040
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 372
  ADD t6, t6, sp
  LW s5, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1320
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 2032
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 380
  ADD t6, t6, sp
  LW s6, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1312
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 744
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1304
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 2016
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs6, 1404(sp)
  FLW fs7, 1404(sp)
  FSGNJ.S fs6, fs6, fs7
  FLW fs0, 1408(sp)
  LUI t6, 1
  ADDIW t6, t6, 140
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs7, 1408(sp)
  LUI t6, 1
  ADDIW t6, t6, 140
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FSGNJ.S fs7, fs0, fs7
  LUI a0, 2
  ADDIW a0, a0, -1296
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 736
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 396
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 112
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1288
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 2000
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1352
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 728
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs0, 1264(sp)
  LUI t6, 1
  ADDIW t6, t6, 148
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1264(sp)
  LUI t6, 1
  ADDIW t6, t6, 144
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 144
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 148
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, 204
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 204
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FSW fs0, 1120(sp)
  LUI a0, 1
  ADDIW a0, a0, 408
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1712
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1216(sp)
  LUI t6, 1
  ADDIW t6, t6, 160
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1216(sp)
  LUI t6, 1
  ADDIW t6, t6, 156
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 156
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 160
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, 300
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 300
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1492
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -1272
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1984
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1264
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1976
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs0, 1224(sp)
  LUI t6, 1
  ADDIW t6, t6, 176
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1224(sp)
  LUI t6, 1
  ADDIW t6, t6, 172
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 172
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 176
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, 220
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 220
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FSW fs0, 1124(sp)
  LUI t6, 1
  ADDIW t6, t6, 424
  ADD t6, t6, sp
  LW s3, 0(t6)
  JAL zero, bb17
bb20:
  ADDI a0, zero, 10
  LUI a1, 2
  ADDIW a1, a1, 392
  ADD a1, a1, sp
  ADD a1, a1, zero
  CALL putfarray
  ADDI a0, zero, 10
  LUI a1, 2
  ADDIW a1, a1, 352
  ADD a1, a1, sp
  ADD a1, a1, zero
  CALL putarray
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FLW fa0, 0(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  LW s0, 4(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FLW fa0, 4(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW s0, 4(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  LW s0, 8(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FLW fa0, 8(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW s0, 8(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  LW s0, 12(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FLW fa0, 12(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW s0, 12(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  LW s0, 16(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FLW fa0, 16(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW s0, 16(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  LW s0, 20(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FLW fa0, 20(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW s0, 20(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  LW s0, 24(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FLW fa0, 24(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW s0, 24(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  LW s0, 28(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FLW fa0, 28(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW s0, 28(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  LW s0, 32(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FLW fa0, 32(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW s0, 32(t6)
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  LW s0, 36(t6)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FLW fa0, 36(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SW s0, 36(t6)
  LA s0, k
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LUI t6, 2
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  ADD s0, t6, s0
  LW s0, 0(s0)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  FLW fa0, 32(t6)
  FCVT.S.W fs0, s0
  FMUL.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  FLW fa0, 172(sp)
  FLW fs0, 172(sp)
  FSGNJ.S fa0, fa0, fs0
  CALL putfloat
  ADDI a0, zero, 10
  CALL putch
  FLW fa0, 552(sp)
  FLW fs0, 552(sp)
  FSGNJ.S fa0, fa0, fs0
  CALL putfloat
  ADDI a0, zero, 10
  CALL putch
  FLW fa0, 464(sp)
  FLW fs0, 464(sp)
  FSGNJ.S fa0, fa0, fs0
  CALL putfloat
  ADDI a0, zero, 10
  CALL putch
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LUI t6, 2
  ADDIW t6, t6, -1808
  ADD t6, t6, sp
  FLD fs0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1800
  ADD t6, t6, sp
  FLD fs1, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1792
  ADD t6, t6, sp
  FLD fs2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1784
  ADD t6, t6, sp
  FLD fs3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1776
  ADD t6, t6, sp
  FLD fs4, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1768
  ADD t6, t6, sp
  FLD fs5, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  FLD fs6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1752
  ADD t6, t6, sp
  FLD fs7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1744
  ADD t6, t6, sp
  FLD fs8, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1736
  ADD t6, t6, sp
  FLD fs9, 0(t6)
  LUI ra, 2
  ADDIW ra, ra, -1728
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 2
  ADDIW t6, t6, -1720
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1712
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1704
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1696
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1688
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1680
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1672
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1664
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1656
  ADD t6, t6, sp
  LD s8, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1648
  ADD t6, t6, sp
  LD s9, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1640
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1632
  ADD t6, t6, sp
  LD s11, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1624
  ADD t6, t6, sp
  FLD fs10, 0(t6)
  LUI t0, 3
  ADDIW t0, t0, -1216
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb21:
  ADD a0, s11, zero
  LUI t6, 1
  ADDIW t6, t6, 428
  ADD t6, t6, sp
  SW a0, 0(t6)
  ADD a0, a1, zero
  LUI t6, 1
  ADDIW t6, t6, 484
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -2048
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 636
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs5, 176(sp)
  LUI t6, 1
  ADDIW t6, t6, -688
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 176(sp)
  LUI t6, 1
  ADDIW t6, t6, -692
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -692
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -688
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs6, fs5
  LUI t6, 1
  ADDIW t6, t6, -28
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -28
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1228(sp)
  LUI a0, 2
  ADDIW a0, a0, -2044
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 640
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -2040
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 644
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -2036
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 648
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs5, 180(sp)
  LUI t6, 1
  ADDIW t6, t6, -876
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 180(sp)
  LUI t6, 1
  ADDIW t6, t6, -828
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -828
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -876
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs6, fs5
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1232(sp)
  FLW fs5, 184(sp)
  LUI t6, 1
  ADDIW t6, t6, -860
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 184(sp)
  LUI t6, 1
  ADDIW t6, t6, -864
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -864
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -860
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs6, fs5
  LUI t6, 1
  ADDIW t6, t6, -72
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -72
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1236(sp)
  FLW fs5, 188(sp)
  LUI t6, 1
  ADDIW t6, t6, -844
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 188(sp)
  LUI t6, 1
  ADDIW t6, t6, -848
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -848
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -844
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs6, fs5
  LUI t6, 1
  ADDIW t6, t6, -16
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -16
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1240(sp)
  LUI a0, 2
  ADDIW a0, a0, -2032
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 652
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs5, 192(sp)
  LUI t6, 1
  ADDIW t6, t6, -880
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 192(sp)
  LUI t6, 1
  ADDIW t6, t6, -832
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -832
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -880
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs6, fs5
  LUI t6, 1
  ADDIW t6, t6, -12
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -12
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1244(sp)
  FLW fs5, 196(sp)
  LUI t6, 1
  ADDIW t6, t6, -812
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 196(sp)
  LUI t6, 1
  ADDIW t6, t6, -816
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -816
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -812
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs6, fs5
  LUI t6, 1
  ADDIW t6, t6, -8
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -8
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1248(sp)
  LUI a0, 2
  ADDIW a0, a0, -2028
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 656
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs5, 8(sp)
  LUI t6, 1
  ADDIW t6, t6, -536
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 8(sp)
  LUI t6, 1
  ADDIW t6, t6, -540
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -540
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -536
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs6, fs5
  LUI t6, 1
  ADDIW t6, t6, -4
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -4
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1252(sp)
  LUI a0, 2
  ADDIW a0, a0, -2024
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 660
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs5, 4(sp)
  LUI t6, 1
  ADDIW t6, t6, -520
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 4(sp)
  LUI t6, 1
  ADDIW t6, t6, -576
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -576
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -520
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs6, fs5
  LUI t6, 1
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1256(sp)
  FLW fs5, 12(sp)
  LUI t6, 1
  ADDIW t6, t6, -504
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  FLW fs5, 12(sp)
  LUI t6, 1
  ADDIW t6, t6, -508
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -508
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -504
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs6, fs5
  LUI t6, 1
  ADDIW t6, t6, 4
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 4
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1260(sp)
  LUI t6, 1
  ADDIW t6, t6, 180
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 180
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, 180
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 180
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 1212(sp)
  FSW fs10, 1268(sp)
  FLW fs10, 16(sp)
  FLW fs5, 16(sp)
  LUI t6, 1
  ADDIW t6, t6, 136
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 136
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs10, fs10, fs5
  FSW fs10, 1272(sp)
  FSW fs0, 1276(sp)
  LUI a0, 2
  ADDIW a0, a0, -2020
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 664
  ADD t6, t6, sp
  SW a0, 0(t6)
  FSW fs9, 1280(sp)
  LUI a0, 2
  ADDIW a0, a0, -2016
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -2004
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -2012
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1940
  ADD t6, t6, sp
  SW a0, 0(t6)
  FSW fs1, 1284(sp)
  FLW fs0, 20(sp)
  FLW fs1, 20(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1288(sp)
  FSW fs8, 1292(sp)
  FSW fs2, 1296(sp)
  FSW fs3, 1300(sp)
  LUI a0, 1
  ADDIW a0, a0, -792
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1936
  ADD t6, t6, sp
  SW a0, 0(t6)
  FSW fs4, 1304(sp)
  LUI a0, 1
  ADDIW a0, a0, -788
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1932
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1784
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1784
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1308(sp)
  FLW fs0, 1968(sp)
  FLW fs1, 1968(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1364(sp)
  FLW fs0, 1720(sp)
  FLW fs1, 1720(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1516(sp)
  FLW fs0, 24(sp)
  FLW fs1, 24(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1520(sp)
  LUI a0, 1
  ADDIW a0, a0, -784
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1928
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -780
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1924
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 28(sp)
  FLW fs1, 28(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1524(sp)
  FLW fs0, 32(sp)
  FLW fs1, 32(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1528(sp)
  FLW fs0, 36(sp)
  FLW fs1, 36(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1532(sp)
  LUI a0, 1
  ADDIW a0, a0, -724
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 40(sp)
  FLW fs1, 40(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1536(sp)
  LUI a0, 1
  ADDIW a0, a0, -572
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1916
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -568
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1912
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 44(sp)
  FLW fs1, 44(sp)
  FSGNJ.S fs0, fs0, fs1
  FLW fs1, 48(sp)
  FLW fs2, 48(sp)
  FSGNJ.S fs1, fs1, fs2
  LUI t6, 1
  ADDIW t6, t6, -1112
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  FLW fs1, 52(sp)
  FLW fs2, 52(sp)
  FSGNJ.S fs1, fs1, fs2
  LUI t6, 1
  ADDIW t6, t6, -1108
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  FLW fs1, 56(sp)
  FLW fs2, 56(sp)
  FSGNJ.S fs1, fs1, fs2
  LUI a0, 1
  ADDIW a0, a0, -1104
  ADD a0, a0, sp
  FSW fs1, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -564
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1908
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -560
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1904
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -556
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1900
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs1, 60(sp)
  FLW fs2, 60(sp)
  FSGNJ.S fs1, fs1, fs2
  LUI t6, 1
  ADDIW t6, t6, -1100
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  FLW fs1, 64(sp)
  FLW fs2, 64(sp)
  FSGNJ.S fs1, fs1, fs2
  LUI t6, 1
  ADDIW t6, t6, -1096
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  FLW fs1, 68(sp)
  FLW fs2, 68(sp)
  FSGNJ.S fs1, fs1, fs2
  LUI t6, 1
  ADDIW t6, t6, -1092
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  FLW fs1, 72(sp)
  FLW fs2, 72(sp)
  FSGNJ.S fs1, fs1, fs2
  LUI t6, 1
  ADDIW t6, t6, -1088
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  FLW fs1, 76(sp)
  FLW fs2, 76(sp)
  FSGNJ.S fs1, fs1, fs2
  LUI t6, 1
  ADDIW t6, t6, -1084
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  FLW fs1, 80(sp)
  FLW fs2, 80(sp)
  FSGNJ.S fs1, fs1, fs2
  LUI a1, 1
  ADDIW a1, a1, -1228
  ADD a1, a1, sp
  FSW fs1, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -552
  ADD a1, a1, sp
  LW a1, 0(a1)
  FLW fs1, 84(sp)
  FLW fs2, 84(sp)
  FSGNJ.S fs1, fs1, fs2
  LUI a0, 1
  ADDIW a0, a0, -1276
  ADD a0, a0, sp
  FSW fs1, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -548
  ADD a0, a0, sp
  LW a0, 0(a0)
  FLW fs1, 88(sp)
  FLW fs2, 88(sp)
  FSGNJ.S fs1, fs1, fs2
  LUI t6, 1
  ADDIW t6, t6, -1272
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  JAL zero, bb11
bb22:
  LUI t6, 1
  ADDIW t6, t6, 1100
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1100
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 1452(sp)
  LUI t6, 1
  ADDIW t6, t6, -1360
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1360
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 1456(sp)
  LUI t6, 1
  ADDIW t6, t6, -1356
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1356
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 1460(sp)
  LUI t6, 1
  ADDIW t6, t6, -1352
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1352
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 1412(sp)
  LUI t6, 1
  ADDIW t6, t6, -1348
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1348
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 1468(sp)
  LUI t6, 1
  ADDIW t6, t6, -1344
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1344
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 1472(sp)
  LUI t6, 1
  ADDIW t6, t6, 1084
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1084
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 1476(sp)
  LUI t6, 1
  ADDIW t6, t6, -1340
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1340
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 1480(sp)
  LUI t6, 1
  ADDIW t6, t6, -1336
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1336
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 1484(sp)
  LUI t6, 1
  ADDIW t6, t6, -1332
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1332
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 1488(sp)
  LUI t6, 1
  ADDIW t6, t6, -1380
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1380
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 1492(sp)
  LUI t6, 1
  ADDIW t6, t6, -1324
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1324
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 1496(sp)
  LUI t6, 1
  ADDIW t6, t6, -1320
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1320
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 1500(sp)
  LUI t6, 1
  ADDIW t6, t6, 1396
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1396
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 1504(sp)
  LUI t6, 1
  ADDIW t6, t6, 1392
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1392
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 1508(sp)
  LUI t6, 1
  ADDIW t6, t6, -1316
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1316
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 1164(sp)
  LUI t6, 1
  ADDIW t6, t6, -1312
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1312
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 916(sp)
  LUI t6, 1
  ADDIW t6, t6, -1308
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1308
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 920(sp)
  LUI t6, 1
  ADDIW t6, t6, -1304
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1304
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 924(sp)
  LUI t6, 1
  ADDIW t6, t6, -1300
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1300
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 928(sp)
  LUI t6, 1
  ADDIW t6, t6, -1296
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1296
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 932(sp)
  LUI t6, 1
  ADDIW t6, t6, -1292
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1292
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 936(sp)
  LUI t6, 1
  ADDIW t6, t6, -1288
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1288
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs6, fs6, fs9
  FSW fs6, 940(sp)
  FSW fs0, 944(sp)
  LUI t6, 1
  ADDIW t6, t6, -1284
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1284
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs0, fs0, fs6
  FSW fs0, 948(sp)
  LUI t6, 1
  ADDIW t6, t6, -1428
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1428
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs0, fs0, fs6
  FSW fs0, 952(sp)
  LUI t6, 1
  ADDIW t6, t6, -1476
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1476
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs0, fs0, fs6
  FSW fs0, 956(sp)
  LUI t6, 1
  ADDIW t6, t6, 1344
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1344
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs0, fs0, fs6
  FSW fs0, 960(sp)
  LUI t6, 1
  ADDIW t6, t6, 1340
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1340
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs0, fs0, fs6
  FSW fs0, 912(sp)
  LUI t6, 1
  ADDIW t6, t6, -1472
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1472
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs0, fs0, fs6
  FSW fs0, 968(sp)
  LUI t6, 1
  ADDIW t6, t6, -1468
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1468
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs0, fs0, fs6
  LUI t6, 1
  ADDIW t6, t6, -1056
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1464
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1464
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs0, fs0, fs6
  LUI t6, 1
  ADDIW t6, t6, -1052
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1460
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1460
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs0, fs0, fs6
  LUI t6, 1
  ADDIW t6, t6, -1048
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1456
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1456
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs0, fs0, fs6
  LUI t6, 1
  ADDIW t6, t6, -1044
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FSGNJ.S fs4, fs3, fs3
  LUI t6, 1
  ADDIW t6, t6, -1452
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1452
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  JAL zero, bb5
