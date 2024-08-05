.global main
.section .bss


.section .data
k:
.word 0x00000000
.CONSTANT.7.0:
.word 0x00000000
.section .text
main:
  LUI t0, 1048574
  ADDIW t0, t0, -1376
  ADD sp, sp, t0
  LUI t6, 1
  ADDIW t6, t6, 936
  ADD t6, t6, sp
  SD ra, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 944
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 952
  ADD t6, t6, sp
  SD s1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 960
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 968
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 976
  ADD t6, t6, sp
  SD s4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 984
  ADD t6, t6, sp
  SD s5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 992
  ADD t6, t6, sp
  SD s6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1000
  ADD t6, t6, sp
  SD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1008
  ADD t6, t6, sp
  SD s8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1016
  ADD t6, t6, sp
  SD s9, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1024
  ADD t6, t6, sp
  SD s10, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  SD s11, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1040
  ADD t6, t6, sp
  FSD fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1048
  ADD t6, t6, sp
  FSD fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1056
  ADD t6, t6, sp
  FSD fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1064
  ADD t6, t6, sp
  FSD fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1072
  ADD t6, t6, sp
  FSD fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1080
  ADD t6, t6, sp
  FSD fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1088
  ADD t6, t6, sp
  FSD fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1096
  ADD t6, t6, sp
  FSD fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1104
  ADD t6, t6, sp
  FSD fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1112
  ADD t6, t6, sp
  FSD fs9, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1120
  ADD t6, t6, sp
  FSD fs10, 0(t6)
  CALL getint
  LA s0, k
  SW a0, 0(s0)
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADD a0, a0, zero
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 12
  LUI t6, 2
  ADDIW t6, t6, 584
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 584
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 24
  LUI t6, 2
  ADDIW t6, t6, 576
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 576
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 36
  LUI t6, 2
  ADDIW t6, t6, 568
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 568
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 48
  LUI t6, 2
  ADDIW t6, t6, 560
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 560
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 60
  LUI t6, 2
  ADDIW t6, t6, 552
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 552
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 72
  LUI t6, 2
  ADDIW t6, t6, 544
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 544
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 84
  LUI t6, 2
  ADDIW t6, t6, 536
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 536
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 96
  LUI t6, 2
  ADDIW t6, t6, 528
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 528
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 108
  LUI t6, 2
  ADDIW t6, t6, 520
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 520
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 120
  LUI t6, 2
  ADDIW t6, t6, 512
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 512
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 132
  LUI t6, 2
  ADDIW t6, t6, 504
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 504
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 144
  LUI t6, 2
  ADDIW t6, t6, 496
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 496
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 156
  LUI t6, 2
  ADDIW t6, t6, 360
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 360
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 168
  LUI t6, 2
  ADDIW t6, t6, 480
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 480
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 180
  LUI t6, 2
  ADDIW t6, t6, 472
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 472
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 192
  LUI t6, 2
  ADDIW t6, t6, 464
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 464
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 204
  LUI t6, 2
  ADDIW t6, t6, 456
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 456
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 216
  LUI t6, 2
  ADDIW t6, t6, 448
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 448
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 228
  LUI t6, 2
  ADDIW t6, t6, 440
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 440
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 240
  LUI t6, 2
  ADDIW t6, t6, 432
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 432
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 252
  LUI t6, 2
  ADDIW t6, t6, 424
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 424
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 264
  LUI t6, 2
  ADDIW t6, t6, 416
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 416
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 276
  LUI t6, 2
  ADDIW t6, t6, 408
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 408
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 288
  LUI t6, 2
  ADDIW t6, t6, 400
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 400
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 300
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 392
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 312
  LUI t6, 2
  ADDIW t6, t6, 384
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 384
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 324
  LUI t6, 2
  ADDIW t6, t6, 376
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 376
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 336
  LUI t6, 2
  ADDIW t6, t6, 368
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 368
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 348
  LUI t6, 2
  ADDIW t6, t6, 488
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 488
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 360
  LUI t6, 2
  ADDIW t6, t6, 856
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 856
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 372
  LUI t6, 2
  ADDIW t6, t6, 848
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 848
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 384
  LUI t6, 2
  ADDIW t6, t6, 840
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 840
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 396
  LUI t6, 2
  ADDIW t6, t6, 832
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 832
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 408
  LUI t6, 2
  ADDIW t6, t6, 824
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 824
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 420
  LUI t6, 2
  ADDIW t6, t6, 816
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 816
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 432
  LUI t6, 2
  ADDIW t6, t6, 808
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 808
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 444
  LUI t6, 2
  ADDIW t6, t6, 800
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 800
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 456
  LUI t6, 2
  ADDIW t6, t6, 792
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 792
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADDI a0, a0, 468
  LUI t6, 2
  ADDIW t6, t6, 784
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 784
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getfarray
  LUI a0, 2
  ADDIW a0, a0, -1728
  ADD a0, a0, sp
  ADD a0, a0, zero
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1728
  ADD a0, a0, sp
  ADDI a0, a0, 12
  LUI t6, 2
  ADDIW t6, t6, 776
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 776
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1728
  ADD a0, a0, sp
  ADDI a0, a0, 24
  LUI t6, 2
  ADDIW t6, t6, 768
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 768
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1728
  ADD a0, a0, sp
  ADDI a0, a0, 36
  LUI t6, 2
  ADDIW t6, t6, 760
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 760
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1728
  ADD a0, a0, sp
  ADDI a0, a0, 48
  LUI t6, 2
  ADDIW t6, t6, 752
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 752
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1728
  ADD a0, a0, sp
  ADDI a0, a0, 60
  LUI t6, 2
  ADDIW t6, t6, 616
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 616
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1728
  ADD a0, a0, sp
  ADDI a0, a0, 72
  LUI t6, 2
  ADDIW t6, t6, 736
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 736
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1728
  ADD a0, a0, sp
  ADDI a0, a0, 84
  LUI t6, 2
  ADDIW t6, t6, 728
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 728
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1728
  ADD a0, a0, sp
  ADDI a0, a0, 96
  LUI t6, 2
  ADDIW t6, t6, 720
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 720
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1728
  ADD a0, a0, sp
  ADDI a0, a0, 108
  LUI t6, 2
  ADDIW t6, t6, 712
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 712
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1728
  ADD a0, a0, sp
  ADDI a0, a0, 120
  LUI t6, 2
  ADDIW t6, t6, 704
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 704
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1728
  ADD a0, a0, sp
  ADDI a0, a0, 132
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
  ADDIW a0, a0, -1728
  ADD a0, a0, sp
  ADDI a0, a0, 144
  LUI t6, 2
  ADDIW t6, t6, 688
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 688
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1728
  ADD a0, a0, sp
  ADDI a0, a0, 156
  LUI t6, 2
  ADDIW t6, t6, 680
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 680
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1728
  ADD a0, a0, sp
  ADDI a0, a0, 168
  LUI t6, 2
  ADDIW t6, t6, 672
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 672
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1728
  ADD a0, a0, sp
  ADDI a0, a0, 180
  LUI t6, 2
  ADDIW t6, t6, 664
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 664
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1728
  ADD a0, a0, sp
  ADDI a0, a0, 192
  LUI t6, 2
  ADDIW t6, t6, 656
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 656
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1728
  ADD a0, a0, sp
  ADDI a0, a0, 204
  LUI t6, 2
  ADDIW t6, t6, 648
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 648
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1728
  ADD a0, a0, sp
  ADDI a0, a0, 216
  LUI t6, 2
  ADDIW t6, t6, 640
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 640
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1728
  ADD a0, a0, sp
  ADDI a0, a0, 228
  LUI t6, 2
  ADDIW t6, t6, 632
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 632
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1728
  ADD a0, a0, sp
  ADDI a0, a0, 240
  LUI t6, 2
  ADDIW t6, t6, 624
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 624
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1728
  ADD a0, a0, sp
  ADDI a0, a0, 252
  LUI t6, 2
  ADDIW t6, t6, -704
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -704
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1728
  ADD a0, a0, sp
  ADDI a0, a0, 264
  LUI t6, 1
  ADDIW t6, t6, 1880
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1880
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LUI a0, 2
  ADDIW a0, a0, -1728
  ADD a0, a0, sp
  ADDI a0, a0, 276
  LUI t6, 1
  ADDIW t6, t6, 1872
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1872
  ADD a0, a0, sp
  LD a0, 0(a0)
  CALL getarray
  LA a0, k
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LUI a1, 2
  ADDIW a1, a1, -1440
  ADD a1, a1, sp
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1476
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 584
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  FSW fs0, 1892(sp)
  LUI a1, 2
  ADDIW a1, a1, 576
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  FSW fs0, 1896(sp)
  LUI a1, 2
  ADDIW a1, a1, 568
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  FSW fs0, 1900(sp)
  LUI a1, 2
  ADDIW a1, a1, 560
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  FSW fs0, 1904(sp)
  LUI a1, 2
  ADDIW a1, a1, 552
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  FSW fs0, 1792(sp)
  LUI a1, 2
  ADDIW a1, a1, 544
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  FSW fs0, 1756(sp)
  LUI a1, 2
  ADDIW a1, a1, 536
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  FSW fs0, 1760(sp)
  LUI a1, 2
  ADDIW a1, a1, 528
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  FSW fs0, 1764(sp)
  LUI a1, 2
  ADDIW a1, a1, 520
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  FSW fs0, 1768(sp)
  LUI a1, 2
  ADDIW a1, a1, 512
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  FSW fs0, 1772(sp)
  LUI a1, 2
  ADDIW a1, a1, 504
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -652
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 496
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  FSW fs0, 1776(sp)
  LUI a1, 2
  ADDIW a1, a1, 360
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  FSW fs0, 1780(sp)
  LUI a1, 2
  ADDIW a1, a1, 480
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  FSW fs0, 1784(sp)
  LUI a1, 2
  ADDIW a1, a1, 472
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -688
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 464
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  FSW fs0, 1788(sp)
  LUI a1, 2
  ADDIW a1, a1, 456
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  FSW fs0, 1752(sp)
  LUI a1, 2
  ADDIW a1, a1, 448
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  FSW fs0, 1796(sp)
  LUI a1, 2
  ADDIW a1, a1, 440
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  FSW fs0, 1800(sp)
  LUI a1, 2
  ADDIW a1, a1, 432
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  FSW fs0, 1804(sp)
  LUI a1, 2
  ADDIW a1, a1, 424
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  FSW fs0, 1808(sp)
  LUI a1, 2
  ADDIW a1, a1, 416
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  FSW fs0, 1812(sp)
  LUI a1, 2
  ADDIW a1, a1, 408
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  FSW fs0, 1816(sp)
  LUI a1, 2
  ADDIW a1, a1, 400
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  FSW fs0, 1820(sp)
  LUI a1, 2
  ADDIW a1, a1, 392
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -684
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 384
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  FSW fs0, 1824(sp)
  LUI a1, 2
  ADDIW a1, a1, 376
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs1, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 368
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs0, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 488
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs2, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 856
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs5, 0(a1)
  FSW fs5, 1828(sp)
  LUI a1, 2
  ADDIW a1, a1, 848
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs5, 0(a1)
  FSW fs5, 1552(sp)
  LUI a1, 2
  ADDIW a1, a1, 840
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs5, 0(a1)
  FSW fs5, 1356(sp)
  LUI a1, 2
  ADDIW a1, a1, 832
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs3, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 824
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs4, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 816
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs5, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1512
  ADD a1, a1, sp
  FSW fs5, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 808
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs5, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, -1524
  ADD a1, a1, sp
  FSW fs5, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 800
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs5, 0(a1)
  FSW fs5, 1360(sp)
  LUI a1, 2
  ADDIW a1, a1, 792
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a1, a1, a0
  FLW fs5, 0(a1)
  FSW fs5, 1364(sp)
  LUI a1, 2
  ADDIW a1, a1, 784
  ADD a1, a1, sp
  LD a1, 0(a1)
  ADD a0, a1, a0
  FLW fs5, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1168
  ADD a0, a0, sp
  FSW fs5, 0(a0)
  ADDI a0, zero, 0
  FCVT.S.W fs5, a0
  FSW fs5, 1368(sp)
  FLW fs5, 1368(sp)
  LUI t6, 1
  ADDIW t6, t6, -1168
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1504
  ADD a0, a0, sp
  FSW fs6, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1504
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FEQ.S a0, fs6, fs5
  XORI a0, a0, 1
  FLW fs5, 1892(sp)
  LUI t6, 1
  ADDIW t6, t6, -1476
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FADD.S fs9, fs6, fs5
  BNE a0, zero, bb22
  # implict jump to bb1
bb1:
  FSW fs9, 120(sp)
  FLW fs5, 1892(sp)
  FLW fs6, 1892(sp)
  LUI t6, 1
  ADDIW t6, t6, -1480
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1480
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 8(sp)
  FLW fs5, 1896(sp)
  FLW fs6, 1896(sp)
  LUI t6, 1
  ADDIW t6, t6, -1304
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1304
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 12(sp)
  FLW fs5, 1900(sp)
  FLW fs6, 1900(sp)
  LUI t6, 1
  ADDIW t6, t6, -1316
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1316
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 16(sp)
  FLW fs5, 1904(sp)
  FLW fs6, 1904(sp)
  LUI t6, 1
  ADDIW t6, t6, -1240
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1240
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 20(sp)
  FLW fs5, 1792(sp)
  FLW fs6, 1792(sp)
  LUI t6, 1
  ADDIW t6, t6, -1392
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1392
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 24(sp)
  FLW fs5, 1756(sp)
  FLW fs6, 1756(sp)
  LUI t6, 1
  ADDIW t6, t6, -1384
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1384
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 28(sp)
  FLW fs5, 1760(sp)
  FLW fs6, 1760(sp)
  LUI t6, 1
  ADDIW t6, t6, -1372
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1372
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 32(sp)
  FLW fs5, 1764(sp)
  FLW fs6, 1764(sp)
  LUI t6, 1
  ADDIW t6, t6, -1364
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1364
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 36(sp)
  FLW fs5, 1768(sp)
  FLW fs6, 1768(sp)
  LUI t6, 1
  ADDIW t6, t6, -1348
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1348
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 40(sp)
  FLW fs5, 1772(sp)
  FLW fs6, 1772(sp)
  LUI t6, 1
  ADDIW t6, t6, -1332
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1332
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 44(sp)
  LUI t6, 1
  ADDIW t6, t6, -652
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -652
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -652
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -652
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 4(sp)
  FLW fs5, 1776(sp)
  FLW fs6, 1776(sp)
  LUI t6, 1
  ADDIW t6, t6, -1324
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1324
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 52(sp)
  FLW fs5, 1780(sp)
  FLW fs6, 1780(sp)
  LUI t6, 1
  ADDIW t6, t6, -512
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -512
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 56(sp)
  FLW fs5, 1784(sp)
  FLW fs6, 1784(sp)
  LUI t6, 1
  ADDIW t6, t6, -500
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -500
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 60(sp)
  LUI t6, 1
  ADDIW t6, t6, -688
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -688
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -688
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -688
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 64(sp)
  FLW fs5, 1788(sp)
  FLW fs9, 1788(sp)
  FSGNJ.S fs5, fs5, fs9
  FSW fs5, 68(sp)
  FLW fs5, 1752(sp)
  FLW fs9, 1752(sp)
  FSGNJ.S fs5, fs5, fs9
  FSW fs5, 72(sp)
  FLW fs5, 1796(sp)
  FLW fs9, 1796(sp)
  FSGNJ.S fs5, fs5, fs9
  FSW fs5, 76(sp)
  FLW fs5, 1800(sp)
  FLW fs9, 1800(sp)
  FSGNJ.S fs5, fs5, fs9
  FSW fs5, 276(sp)
  FLW fs5, 1804(sp)
  FLW fs9, 1804(sp)
  FSGNJ.S fs5, fs5, fs9
  FSW fs5, 240(sp)
  FLW fs5, 1808(sp)
  FLW fs9, 1808(sp)
  FSGNJ.S fs5, fs5, fs9
  FSW fs5, 152(sp)
  FLW fs5, 1812(sp)
  FLW fs9, 1812(sp)
  FSGNJ.S fs5, fs5, fs9
  FSW fs5, 248(sp)
  FLW fs5, 1816(sp)
  FLW fs9, 1816(sp)
  FSGNJ.S fs5, fs5, fs9
  FSW fs5, 252(sp)
  FLW fs5, 1820(sp)
  FLW fs9, 1820(sp)
  FSGNJ.S fs5, fs5, fs9
  FSW fs5, 256(sp)
  LUI t6, 1
  ADDIW t6, t6, -684
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -684
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -684
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -684
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 260(sp)
  FLW fs5, 1824(sp)
  FLW fs9, 1824(sp)
  FSGNJ.S fs5, fs5, fs9
  FSW fs5, 264(sp)
  FSW fs1, 268(sp)
  FSW fs0, 272(sp)
  FSW fs2, 236(sp)
  FLW fs0, 1828(sp)
  FLW fs1, 1828(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 280(sp)
  FLW fs0, 1552(sp)
  FLW fs1, 1552(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1712(sp)
  FLW fs0, 1356(sp)
  FLW fs1, 1356(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1836(sp)
  LUI t6, 1
  ADDIW t6, t6, -1512
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1512
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs5, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1524
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1524
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs6, fs0, fs1
  FLW fs0, 1360(sp)
  FLW fs1, 1360(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1840(sp)
  FLW fs0, 1364(sp)
  FLW fs1, 1364(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1844(sp)
  LUI t6, 1
  ADDIW t6, t6, -1168
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1168
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1848(sp)
  # implict jump to bb2
bb2:
  FLW fs0, 1848(sp)
  FLW fs1, 1848(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1980(sp)
  FLW fs0, 1844(sp)
  FLW fs1, 1844(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1976(sp)
  FLW fs0, 1840(sp)
  FLW fs1, 1840(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1972(sp)
  FSW fs6, 1968(sp)
  FSW fs5, 1964(sp)
  FSW fs4, 1960(sp)
  FSW fs3, 1956(sp)
  FLW fs0, 1836(sp)
  FLW fs1, 1836(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1952(sp)
  FLW fs0, 1712(sp)
  FLW fs1, 1712(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1908(sp)
  FLW fs0, 280(sp)
  FLW fs1, 280(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1944(sp)
  FLW fs0, 236(sp)
  FLW fs1, 236(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1940(sp)
  FLW fs0, 272(sp)
  FLW fs1, 272(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1936(sp)
  FLW fs0, 268(sp)
  FLW fs1, 268(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1932(sp)
  FLW fs0, 264(sp)
  FLW fs1, 264(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 92
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 260(sp)
  FLW fs1, 260(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1928(sp)
  FLW fs0, 256(sp)
  FLW fs1, 256(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 100
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 252(sp)
  FLW fs1, 252(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 248(sp)
  FLW fs1, 248(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1924(sp)
  FLW fs0, 152(sp)
  FLW fs1, 152(sp)
  FSGNJ.S fs0, fs0, fs1
  FLW fs1, 240(sp)
  FLW fs2, 240(sp)
  FSGNJ.S fs1, fs1, fs2
  FSW fs1, 1920(sp)
  FLW fs1, 276(sp)
  FLW fs2, 276(sp)
  FSGNJ.S fs1, fs1, fs2
  LUI t6, 1
  ADDIW t6, t6, 116
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  FLW fs1, 76(sp)
  FLW fs2, 76(sp)
  FSGNJ.S fs1, fs1, fs2
  FSW fs1, 1916(sp)
  FLW fs1, 72(sp)
  FLW fs2, 72(sp)
  FSGNJ.S fs1, fs1, fs2
  FLW fs2, 68(sp)
  FLW fs3, 68(sp)
  FSGNJ.S fs2, fs2, fs3
  FSW fs2, 1912(sp)
  FLW fs2, 64(sp)
  FLW fs3, 64(sp)
  FSGNJ.S fs2, fs2, fs3
  FSW fs2, 1948(sp)
  FLW fs2, 60(sp)
  FLW fs3, 60(sp)
  FSGNJ.S fs2, fs2, fs3
  FLW fs3, 56(sp)
  FLW fs6, 56(sp)
  FSGNJ.S fs3, fs3, fs6
  LUI t6, 1
  ADDIW t6, t6, -2032
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  FLW fs3, 52(sp)
  FLW fs6, 52(sp)
  FSGNJ.S fs3, fs3, fs6
  FLW fs6, 4(sp)
  FLW fs8, 4(sp)
  FSGNJ.S fs6, fs6, fs8
  LUI t6, 1
  ADDIW t6, t6, -2036
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  FLW fs6, 44(sp)
  FLW fs8, 44(sp)
  FSGNJ.S fs6, fs6, fs8
  FLW fs8, 40(sp)
  FLW fs9, 40(sp)
  FSGNJ.S fs8, fs8, fs9
  LUI t6, 1
  ADDIW t6, t6, -2040
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  FLW fs8, 36(sp)
  FLW fs9, 36(sp)
  FSGNJ.S fs8, fs8, fs9
  LUI t6, 1
  ADDIW t6, t6, -2044
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  FLW fs8, 32(sp)
  FLW fs9, 32(sp)
  FSGNJ.S fs8, fs8, fs9
  FLW fs9, 28(sp)
  FLW fs4, 28(sp)
  LUI t6, 1
  ADDIW t6, t6, -656
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -656
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FSGNJ.S fs4, fs9, fs4
  LUI t6, 1
  ADDIW t6, t6, -660
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  FLW fs9, 24(sp)
  FLW fs4, 24(sp)
  LUI t6, 1
  ADDIW t6, t6, -664
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -664
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FSGNJ.S fs9, fs9, fs4
  LUI t6, 1
  ADDIW t6, t6, -2048
  ADD t6, t6, sp
  FSW fs9, 0(t6)
  FLW fs9, 20(sp)
  FLW fs4, 20(sp)
  LUI t6, 1
  ADDIW t6, t6, -668
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -668
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FSGNJ.S fs9, fs9, fs4
  FSW fs9, 2044(sp)
  FLW fs9, 16(sp)
  FLW fs4, 16(sp)
  LUI t6, 1
  ADDIW t6, t6, -672
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -672
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FSGNJ.S fs9, fs9, fs4
  FSW fs9, 2040(sp)
  FLW fs9, 12(sp)
  FLW fs4, 12(sp)
  LUI t6, 1
  ADDIW t6, t6, -796
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -796
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FSGNJ.S fs9, fs9, fs4
  FSW fs9, 2036(sp)
  FLW fs9, 8(sp)
  FLW fs4, 8(sp)
  LUI t6, 1
  ADDIW t6, t6, -840
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -840
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FSGNJ.S fs9, fs9, fs4
  FSW fs9, 2032(sp)
  FLW fs9, 120(sp)
  FLW fs4, 120(sp)
  LUI t6, 1
  ADDIW t6, t6, -844
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -844
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FSGNJ.S fs9, fs9, fs4
  FLW fs4, 2036(sp)
  LUI t6, 1
  ADDIW t6, t6, -384
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -384
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FADD.S fs9, fs9, fs4
  LUI t6, 1
  ADDIW t6, t6, 196
  ADD t6, t6, sp
  FSW fs9, 0(t6)
  FLW fs9, 1368(sp)
  LUI t6, 1
  ADDIW t6, t6, 196
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1488
  ADD a0, a0, sp
  FSW fs4, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1488
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FEQ.S a0, fs4, fs9
  XORI a0, a0, 1
  FLW fs9, 2036(sp)
  FLW fs4, 2032(sp)
  LUI t6, 1
  ADDIW t6, t6, -392
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -392
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FADD.S fs9, fs4, fs9
  FSW fs9, 1984(sp)
  BNE a0, zero, bb4
  # implict jump to bb3
bb3:
  FLW fs9, 1984(sp)
  FLW fs4, 1984(sp)
  LUI t6, 1
  ADDIW t6, t6, -824
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -824
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FSGNJ.S fs9, fs9, fs4
  FSW fs9, 120(sp)
  FLW fs9, 2036(sp)
  FLW fs4, 2036(sp)
  LUI t6, 1
  ADDIW t6, t6, -388
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -388
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FSGNJ.S fs9, fs9, fs4
  FSW fs9, 8(sp)
  FLW fs9, 2040(sp)
  FLW fs4, 2040(sp)
  LUI t6, 1
  ADDIW t6, t6, -380
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -380
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FSGNJ.S fs9, fs9, fs4
  FSW fs9, 12(sp)
  FLW fs9, 2044(sp)
  FLW fs4, 2044(sp)
  LUI t6, 1
  ADDIW t6, t6, -360
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -360
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FSGNJ.S fs9, fs9, fs4
  FSW fs9, 16(sp)
  LUI t6, 1
  ADDIW t6, t6, -2048
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2048
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -832
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -832
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FSGNJ.S fs9, fs9, fs4
  FSW fs9, 20(sp)
  LUI t6, 1
  ADDIW t6, t6, -660
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -660
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  LUI t6, 1
  ADDIW t6, t6, -660
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -660
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FSW fs4, 24(sp)
  FSW fs8, 28(sp)
  LUI t6, 1
  ADDIW t6, t6, -2044
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2044
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs8, fs8, fs9
  FSW fs8, 32(sp)
  LUI t6, 1
  ADDIW t6, t6, -2040
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2040
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs8, fs8, fs9
  FSW fs8, 36(sp)
  FSW fs6, 40(sp)
  LUI t6, 1
  ADDIW t6, t6, -2036
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2036
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs6, fs6, fs8
  FSW fs6, 44(sp)
  FSW fs3, 4(sp)
  LUI t6, 1
  ADDIW t6, t6, -2032
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2032
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs3, fs3, fs6
  FSW fs3, 52(sp)
  FSW fs2, 56(sp)
  FLW fs2, 1948(sp)
  FLW fs3, 1948(sp)
  FSGNJ.S fs2, fs2, fs3
  FSW fs2, 60(sp)
  FLW fs2, 1912(sp)
  FLW fs3, 1912(sp)
  FSGNJ.S fs2, fs2, fs3
  FSW fs2, 64(sp)
  FSW fs1, 68(sp)
  FLW fs1, 1916(sp)
  FLW fs2, 1916(sp)
  FSGNJ.S fs1, fs1, fs2
  FSW fs1, 72(sp)
  LUI t6, 1
  ADDIW t6, t6, 116
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 116
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSGNJ.S fs1, fs1, fs2
  FSW fs1, 76(sp)
  FLW fs1, 1920(sp)
  FLW fs2, 1920(sp)
  FSGNJ.S fs1, fs1, fs2
  FSW fs1, 276(sp)
  FSW fs0, 240(sp)
  FLW fs0, 1924(sp)
  FLW fs1, 1924(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 152(sp)
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 248(sp)
  LUI t6, 1
  ADDIW t6, t6, 100
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 100
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 252(sp)
  FLW fs0, 1928(sp)
  FLW fs1, 1928(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 256(sp)
  LUI t6, 1
  ADDIW t6, t6, 92
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 92
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 260(sp)
  FLW fs0, 1932(sp)
  FLW fs1, 1932(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 264(sp)
  FLW fs0, 1936(sp)
  FLW fs1, 1936(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 268(sp)
  FLW fs0, 1940(sp)
  FLW fs1, 1940(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 272(sp)
  FLW fs0, 1944(sp)
  FLW fs1, 1944(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 236(sp)
  FLW fs0, 1908(sp)
  FLW fs1, 1908(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 280(sp)
  FLW fs0, 1952(sp)
  FLW fs1, 1952(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1712(sp)
  FLW fs0, 1956(sp)
  FLW fs1, 1956(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1836(sp)
  FLW fs0, 1960(sp)
  FLW fs1, 1960(sp)
  FSGNJ.S fs3, fs0, fs1
  FLW fs0, 1964(sp)
  FLW fs1, 1964(sp)
  FSGNJ.S fs4, fs0, fs1
  FLW fs0, 1968(sp)
  FLW fs1, 1968(sp)
  FSGNJ.S fs5, fs0, fs1
  FLW fs0, 1972(sp)
  FLW fs1, 1972(sp)
  FSGNJ.S fs6, fs0, fs1
  FLW fs0, 1976(sp)
  FLW fs1, 1976(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1840(sp)
  FLW fs0, 1980(sp)
  FLW fs1, 1980(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1844(sp)
  LUI t6, 1
  ADDIW t6, t6, 196
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 196
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1848(sp)
  JAL zero, bb2
bb4:
  FLW fs9, 1984(sp)
  FLW fs4, 1984(sp)
  LUI t6, 1
  ADDIW t6, t6, -820
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -820
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FSGNJ.S fs9, fs9, fs4
  FSW fs9, 508(sp)
  FLW fs9, 2040(sp)
  FLW fs4, 2040(sp)
  LUI t6, 1
  ADDIW t6, t6, -364
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -364
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FSGNJ.S fs9, fs9, fs4
  FSW fs9, 472(sp)
  FLW fs9, 2044(sp)
  FLW fs4, 2044(sp)
  LUI t6, 1
  ADDIW t6, t6, -636
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -636
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FSGNJ.S fs9, fs9, fs4
  FSW fs9, 516(sp)
  LUI t6, 1
  ADDIW t6, t6, -2048
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2048
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -828
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -828
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FSGNJ.S fs9, fs9, fs4
  FSW fs9, 520(sp)
  LUI t6, 1
  ADDIW t6, t6, -660
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -660
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  LUI t6, 1
  ADDIW t6, t6, -660
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -660
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FSW fs4, 524(sp)
  FSW fs8, 528(sp)
  LUI t6, 1
  ADDIW t6, t6, -2044
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2044
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs8, fs8, fs9
  FSW fs8, 532(sp)
  LUI t6, 1
  ADDIW t6, t6, -2040
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2040
  ADD t6, t6, sp
  FLW fs9, 0(t6)
  FSGNJ.S fs8, fs8, fs9
  FSW fs8, 536(sp)
  FSW fs6, 540(sp)
  LUI t6, 1
  ADDIW t6, t6, -2036
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2036
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs6, fs6, fs8
  FSW fs6, 544(sp)
  FSW fs3, 244(sp)
  LUI t6, 1
  ADDIW t6, t6, -2032
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2032
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs3, fs3, fs6
  FSW fs3, 592(sp)
  FSW fs2, 84(sp)
  FLW fs2, 1948(sp)
  FLW fs3, 1948(sp)
  FSGNJ.S fs2, fs2, fs3
  FSW fs2, 88(sp)
  FLW fs2, 1912(sp)
  FLW fs3, 1912(sp)
  FSGNJ.S fs2, fs2, fs3
  FSW fs2, 92(sp)
  FSW fs1, 96(sp)
  FLW fs1, 1916(sp)
  FLW fs2, 1916(sp)
  FSGNJ.S fs1, fs1, fs2
  FSW fs1, 100(sp)
  LUI t6, 1
  ADDIW t6, t6, 116
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 116
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSGNJ.S fs1, fs1, fs2
  FSW fs1, 104(sp)
  FLW fs1, 1920(sp)
  FLW fs2, 1920(sp)
  FSGNJ.S fs1, fs1, fs2
  FSW fs1, 108(sp)
  FSW fs0, 112(sp)
  FLW fs0, 1924(sp)
  FLW fs1, 1924(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 116(sp)
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 80(sp)
  LUI t6, 1
  ADDIW t6, t6, 100
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 100
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 124(sp)
  FLW fs0, 1928(sp)
  FLW fs1, 1928(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 128(sp)
  LUI t6, 1
  ADDIW t6, t6, 92
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 92
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 132(sp)
  FLW fs0, 1932(sp)
  FLW fs1, 1932(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 136(sp)
  FLW fs0, 1936(sp)
  FLW fs1, 1936(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 140(sp)
  FLW fs0, 1940(sp)
  FLW fs1, 1940(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 144(sp)
  FLW fs0, 1944(sp)
  FLW fs1, 1944(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 148(sp)
  FLW fs0, 1908(sp)
  FLW fs1, 1908(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 48(sp)
  FLW fs0, 1952(sp)
  FLW fs1, 1952(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1732(sp)
  FLW fs0, 1956(sp)
  FLW fs1, 1956(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1736(sp)
  FLW fs0, 1960(sp)
  FLW fs1, 1960(sp)
  FSGNJ.S fs3, fs0, fs1
  FLW fs0, 1964(sp)
  FLW fs1, 1964(sp)
  FSGNJ.S fs4, fs0, fs1
  FLW fs0, 1968(sp)
  FLW fs1, 1968(sp)
  FSGNJ.S fs5, fs0, fs1
  FLW fs0, 1972(sp)
  FLW fs1, 1972(sp)
  FSGNJ.S fs6, fs0, fs1
  FLW fs0, 1976(sp)
  FLW fs1, 1976(sp)
  FSGNJ.S fs0, fs0, fs1
  FLW fs1, 1980(sp)
  FLW fs2, 1980(sp)
  FSGNJ.S fs1, fs1, fs2
  LUI t6, 1
  ADDIW t6, t6, 196
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 196
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  FSGNJ.S fs2, fs2, fs7
  # implict jump to bb5
bb5:
  LUI t6, 1
  ADDIW t6, t6, -1708
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1672
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1560
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1564
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1568
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1572
  ADD t6, t6, sp
  FSW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1576
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  FLW fs0, 1736(sp)
  FLW fs1, 1736(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1580
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 1732(sp)
  FLW fs1, 1732(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1584
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 48(sp)
  FLW fs1, 48(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1588
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 148(sp)
  FLW fs1, 148(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1632
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 144(sp)
  FLW fs1, 144(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1596
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 140(sp)
  FLW fs1, 140(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1600
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 136(sp)
  FLW fs1, 136(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1604
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 132(sp)
  FLW fs1, 132(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1608
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 128(sp)
  FLW fs1, 128(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1612
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 124(sp)
  FLW fs1, 124(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1616
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 80(sp)
  FLW fs1, 80(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1620
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 116(sp)
  FLW fs1, 116(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1624
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 112(sp)
  FLW fs1, 112(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1628
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 108(sp)
  FLW fs1, 108(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1752
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 104(sp)
  FLW fs1, 104(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1796
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 100(sp)
  FLW fs1, 100(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1800
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 96(sp)
  FLW fs1, 96(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1804
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 92(sp)
  FLW fs1, 92(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1808
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 88(sp)
  FLW fs1, 88(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1812
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 84(sp)
  FLW fs1, 84(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1816
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 592(sp)
  FLW fs1, 592(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 672
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 244(sp)
  FLW fs1, 244(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 712
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 544(sp)
  FLW fs1, 544(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 716
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 540(sp)
  FLW fs1, 540(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 720
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 536(sp)
  FLW fs1, 536(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 724
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 532(sp)
  FLW fs1, 532(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 728
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 528(sp)
  FLW fs1, 528(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 732
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 524(sp)
  FLW fs1, 524(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 736
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 520(sp)
  FLW fs1, 520(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 932
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 516(sp)
  FLW fs1, 516(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 840
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 472(sp)
  FLW fs1, 472(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 888
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 508(sp)
  FLW fs1, 508(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 884
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 888
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 884
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, 772
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 772
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 840
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 776
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 736
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 932
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, 780
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 780
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 732
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 784
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 784
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 728
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 788
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 720
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 724
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, 792
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 792
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 716
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 796
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 796
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 712
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 636
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1816
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 672
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, 800
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1812
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 800
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -44
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1808
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -44
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -48
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1800
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1804
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -52
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1796
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -52
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -56
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1752
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -56
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -60
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1624
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1628
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs3, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1620
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FADD.S fs3, fs3, fs0
  LUI t6, 1
  ADDIW t6, t6, -1616
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FADD.S fs3, fs3, fs0
  LUI t6, 1
  ADDIW t6, t6, -1608
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1612
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs4, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1604
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FADD.S fs4, fs4, fs0
  LUI t6, 1
  ADDIW t6, t6, -1600
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FADD.S fs4, fs4, fs0
  LUI t6, 1
  ADDIW t6, t6, -1632
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1596
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs5, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1588
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FADD.S fs5, fs5, fs0
  LUI t6, 1
  ADDIW t6, t6, -1584
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FADD.S fs5, fs5, fs0
  LUI t6, 1
  ADDIW t6, t6, -1576
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1580
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs6, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1572
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FADD.S fs6, fs6, fs0
  LUI t6, 1
  ADDIW t6, t6, -1568
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FADD.S fs6, fs6, fs0
  LUI t6, 1
  ADDIW t6, t6, -1560
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1564
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1672
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1708
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 776
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1880
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 788
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1880
  ADD t6, t6, sp
  FSW fs1, 4(t6)
  LUI t6, 1
  ADDIW t6, t6, 636
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1880
  ADD t6, t6, sp
  FSW fs1, 8(t6)
  LUI t6, 1
  ADDIW t6, t6, -48
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1880
  ADD t6, t6, sp
  FSW fs1, 12(t6)
  LUI t6, 1
  ADDIW t6, t6, -60
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1880
  ADD t6, t6, sp
  FSW fs1, 16(t6)
  LUI t6, 2
  ADDIW t6, t6, -1880
  ADD t6, t6, sp
  FSW fs3, 20(t6)
  LUI t6, 2
  ADDIW t6, t6, -1880
  ADD t6, t6, sp
  FSW fs4, 24(t6)
  LUI t6, 2
  ADDIW t6, t6, -1880
  ADD t6, t6, sp
  FSW fs5, 28(t6)
  LUI a0, 2
  ADDIW a0, a0, -1880
  ADD a0, a0, sp
  FSW fs6, 32(a0)
  LUI a0, 2
  ADDIW a0, a0, -1880
  ADD a0, a0, sp
  FSW fs0, 36(a0)
  ADDI a0, zero, 10
  LUI a1, 2
  ADDIW a1, a1, -1880
  ADD a1, a1, sp
  ADD a1, a1, zero
  CALL putfarray
  LA a0, k
  LW a0, 0(a0)
  SLLIW s10, a0, 2
  LUI a0, 2
  ADDIW a0, a0, -1880
  ADD a0, a0, sp
  ADD a0, a0, s10
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1704
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 1872
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  LW s9, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 768
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  LW a1, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 736
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 160
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 560
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -68
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 776
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 284
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 752
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 288
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 616
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 292
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 528
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1700
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 472
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1696
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 536
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1692
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 1880
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 296
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 568
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1688
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 368
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1684
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -1728
  ADD a0, a0, sp
  ADD a0, a0, s10
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 300
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 800
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1680
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 632
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 304
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 856
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1676
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 496
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -856
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 584
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1712
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 504
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1668
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 792
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -852
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 544
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -848
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 728
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 308
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 840
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs1, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 704
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 312
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 680
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 316
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 432
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1664
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 832
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs2, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 408
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs6, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 520
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs3, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 392
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs4, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 720
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1060
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 784
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1660
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 648
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1056
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 424
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 464
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs7, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1656
  ADD a0, a0, sp
  FSW fs7, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 552
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs7, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1652
  ADD a0, a0, sp
  FSW fs7, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 824
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs7, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -116
  ADD a0, a0, sp
  FSW fs7, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 640
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1052
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 712
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1048
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 480
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs7, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -80
  ADD a0, a0, sp
  FSW fs7, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 512
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs7, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1648
  ADD a0, a0, sp
  FSW fs7, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -1440
  ADD a0, a0, sp
  ADD a0, a0, s10
  FLW fs7, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1644
  ADD a0, a0, sp
  FSW fs7, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 688
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1044
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 848
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs7, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1640
  ADD a0, a0, sp
  FSW fs7, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 696
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1040
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 656
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1076
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 376
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs7, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1636
  ADD a0, a0, sp
  FSW fs7, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 400
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs7, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1908
  ADD a0, a0, sp
  FSW fs7, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 360
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs7, 0(a0)
  FSW fs7, 1992(sp)
  LUI a0, 2
  ADDIW a0, a0, 488
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs7, 0(a0)
  FSW fs7, 1996(sp)
  LUI a0, 2
  ADDIW a0, a0, 760
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1032
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -704
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1028
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 624
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1024
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 448
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs7, 0(a0)
  FSW fs7, 2000(sp)
  LUI a0, 2
  ADDIW a0, a0, 440
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs7, 0(a0)
  FSW fs7, 2004(sp)
  LUI a0, 2
  ADDIW a0, a0, 416
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs7, 0(a0)
  FSW fs7, 2008(sp)
  LUI a0, 2
  ADDIW a0, a0, 384
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs7, 0(a0)
  FSW fs7, 2012(sp)
  LUI a0, 2
  ADDIW a0, a0, 808
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs7, 0(a0)
  FSW fs7, 2016(sp)
  LUI a0, 2
  ADDIW a0, a0, 456
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs7, 0(a0)
  FSW fs7, 2020(sp)
  LUI a0, 2
  ADDIW a0, a0, 664
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1020
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 576
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs7, 0(a0)
  FSW fs7, 2024(sp)
  LUI a0, 2
  ADDIW a0, a0, 672
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1016
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 816
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s10
  FLW fs7, 0(a0)
  FSW fs7, 1988(sp)
  BNE s9, zero, bb21
  # implict jump to bb6
bb6:
  ADD a0, a1, zero
  LUI t6, 1
  ADDIW t6, t6, -448
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 160
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -444
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -68
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -676
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -68
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -676
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs7, fs5, fs7
  FSW fs7, 556(sp)
  LUI a0, 1
  ADDIW a0, a0, 284
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -440
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 288
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -556
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 292
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -592
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1700
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -604
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1700
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -604
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs7, fs5, fs7
  FSW fs7, 560(sp)
  LUI t6, 1
  ADDIW t6, t6, -1696
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -716
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1696
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -716
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs7, fs5, fs7
  FSW fs7, 564(sp)
  LUI t6, 1
  ADDIW t6, t6, -1692
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -748
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1692
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -748
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs7, fs5, fs7
  FSW fs7, 568(sp)
  LUI a0, 1
  ADDIW a0, a0, 296
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -588
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1688
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -740
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1688
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -740
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs7, fs5, fs7
  FSW fs7, 572(sp)
  LUI t6, 1
  ADDIW t6, t6, -1684
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -732
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1684
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -732
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs7, fs5, fs7
  FSW fs7, 576(sp)
  LUI a0, 1
  ADDIW a0, a0, 300
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -584
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1680
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -724
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1680
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -724
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs7, fs5, fs7
  FSW fs7, 580(sp)
  LUI a0, 1
  ADDIW a0, a0, 304
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -580
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1676
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -756
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1676
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -756
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs7, fs5, fs7
  FSW fs7, 584(sp)
  LUI t6, 1
  ADDIW t6, t6, -856
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -856
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  FSGNJ.S fs5, fs5, fs7
  LUI t6, 1
  ADDIW t6, t6, -856
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -856
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 588(sp)
  LUI t6, 1
  ADDIW t6, t6, -1712
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1712
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 552(sp)
  LUI t6, 1
  ADDIW t6, t6, -1668
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1668
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 596(sp)
  LUI t6, 1
  ADDIW t6, t6, -852
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -852
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  FSGNJ.S fs5, fs5, fs7
  LUI t6, 1
  ADDIW t6, t6, -852
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -852
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 600(sp)
  LUI t6, 1
  ADDIW t6, t6, -848
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -848
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  FSGNJ.S fs5, fs5, fs7
  LUI t6, 1
  ADDIW t6, t6, -848
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -848
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 604(sp)
  LUI a0, 1
  ADDIW a0, a0, 308
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -576
  ADD t6, t6, sp
  SW a0, 0(t6)
  FSW fs1, 608(sp)
  LUI a0, 1
  ADDIW a0, a0, 312
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 216(sp)
  LW a0, 216(sp)
  SW a0, 216(sp)
  LUI a1, 1
  ADDIW a1, a1, 316
  ADD a1, a1, sp
  LW a1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, -1664
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1664
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  FSGNJ.S fs1, fs1, fs7
  FSW fs1, 612(sp)
  FSW fs2, 616(sp)
  FSW fs6, 620(sp)
  FSW fs3, 624(sp)
  FSW fs4, 628(sp)
  LUI t6, 1
  ADDIW t6, t6, -1060
  ADD t6, t6, sp
  LW s9, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1660
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1660
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSGNJ.S fs1, fs1, fs2
  FSW fs1, 512(sp)
  LUI a0, 1
  ADDIW a0, a0, -1056
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -4
  ADD t6, t6, sp
  SW a0, 0(t6)
  FSW fs0, 476(sp)
  LUI t6, 1
  ADDIW t6, t6, -1656
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1656
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 480(sp)
  LUI t6, 1
  ADDIW t6, t6, -1652
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1652
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 484(sp)
  LUI t6, 1
  ADDIW t6, t6, -116
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -116
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 488(sp)
  LUI a0, 1
  ADDIW a0, a0, -1052
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -40
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1048
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 4
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -80
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -80
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 492(sp)
  LUI t6, 1
  ADDIW t6, t6, -1648
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1648
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 496(sp)
  LUI t6, 1
  ADDIW t6, t6, -1644
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1644
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1192(sp)
  LUI a0, 1
  ADDIW a0, a0, -1044
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 8
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1640
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1640
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 500(sp)
  LUI a0, 1
  ADDIW a0, a0, -1040
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 12
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1076
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 16
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1636
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1636
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1224(sp)
  LUI t6, 1
  ADDIW t6, t6, -1908
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1908
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1220(sp)
  FLW fs0, 1992(sp)
  FLW fs1, 1992(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1216(sp)
  FLW fs0, 1996(sp)
  FLW fs1, 1996(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1212(sp)
  LUI a0, 1
  ADDIW a0, a0, -1032
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 20
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1028
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 24
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1024
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 28
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 2000(sp)
  FLW fs1, 2000(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 504(sp)
  FLW fs0, 2004(sp)
  FLW fs1, 2004(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1204(sp)
  FLW fs0, 2008(sp)
  FLW fs1, 2008(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1200(sp)
  FLW fs0, 2012(sp)
  FLW fs1, 2012(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1196(sp)
  FLW fs0, 2016(sp)
  FLW fs1, 2016(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1072(sp)
  FLW fs0, 2020(sp)
  FLW fs1, 2020(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1028(sp)
  LUI a0, 1
  ADDIW a0, a0, -1020
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 2024(sp)
  FLW fs1, 2024(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1024(sp)
  LUI a0, 1
  ADDIW a0, a0, -1016
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 36
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1988(sp)
  FLW fs1, 1988(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1020(sp)
  # implict jump to bb7
bb7:
  FLW fs0, 1020(sp)
  FLW fs1, 1020(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1436(sp)
  LUI a0, 1
  ADDIW a0, a0, 36
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 556
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1024(sp)
  FLW fs1, 1024(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1472(sp)
  LUI a0, 1
  ADDIW a0, a0, 32
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 668
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1028(sp)
  FLW fs1, 1028(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1588(sp)
  FLW fs0, 1072(sp)
  FLW fs1, 1072(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1584(sp)
  FLW fs0, 1196(sp)
  FLW fs1, 1196(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1580(sp)
  FLW fs0, 1200(sp)
  FLW fs1, 1200(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1576(sp)
  FLW fs0, 1204(sp)
  FLW fs1, 1204(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1572(sp)
  FLW fs0, 504(sp)
  FLW fs1, 504(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1568(sp)
  LUI a0, 1
  ADDIW a0, a0, 28
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 664
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 24
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 660
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 20
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 656
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1212(sp)
  FLW fs1, 1212(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1564(sp)
  FLW fs0, 1216(sp)
  FLW fs1, 1216(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1560(sp)
  FLW fs0, 1220(sp)
  FLW fs1, 1220(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1556(sp)
  FLW fs0, 1224(sp)
  FLW fs1, 1224(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1512(sp)
  LUI a0, 1
  ADDIW a0, a0, 16
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 652
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 12
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 648
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 500(sp)
  FLW fs1, 500(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1548(sp)
  LUI a0, 1
  ADDIW a0, a0, 8
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 644
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1192(sp)
  FLW fs1, 1192(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1544(sp)
  FLW fs0, 496(sp)
  FLW fs1, 496(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1540(sp)
  FLW fs0, 492(sp)
  FLW fs1, 492(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1536(sp)
  LUI a0, 1
  ADDIW a0, a0, 4
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 640
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -40
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 596
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 488(sp)
  FLW fs1, 488(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 576
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 484(sp)
  FLW fs1, 484(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 580
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 480(sp)
  FLW fs1, 480(sp)
  FSGNJ.S fs5, fs0, fs1
  FLW fs0, 476(sp)
  FLW fs1, 476(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -4
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 928(sp)
  FLW fs1, 512(sp)
  FLW fs2, 512(sp)
  FSGNJ.S fs6, fs1, fs2
  FLW fs1, 628(sp)
  FLW fs2, 628(sp)
  FSGNJ.S fs4, fs1, fs2
  FLW fs1, 624(sp)
  FLW fs2, 624(sp)
  FSGNJ.S fs3, fs1, fs2
  FLW fs1, 620(sp)
  FLW fs2, 620(sp)
  FSGNJ.S fs9, fs1, fs2
  FLW fs1, 616(sp)
  FLW fs2, 616(sp)
  FSGNJ.S fs2, fs1, fs2
  FLW fs1, 612(sp)
  FLW fs7, 612(sp)
  FSGNJ.S fs1, fs1, fs7
  FSW fs1, 1532(sp)
  LW a0, 216(sp)
  SW a0, 216(sp)
  FLW fs1, 608(sp)
  FLW fs7, 608(sp)
  FSGNJ.S fs1, fs1, fs7
  LUI a0, 1
  ADDIW a0, a0, -576
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 924(sp)
  FLW fs7, 604(sp)
  FLW fs8, 604(sp)
  LUI t6, 1
  ADDIW t6, t6, -692
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -692
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 1528(sp)
  FLW fs7, 600(sp)
  FLW fs8, 600(sp)
  LUI t6, 1
  ADDIW t6, t6, -696
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -696
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 1524(sp)
  FLW fs7, 596(sp)
  FLW fs8, 596(sp)
  LUI t6, 1
  ADDIW t6, t6, -700
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -700
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 1520(sp)
  FLW fs7, 552(sp)
  FLW fs8, 552(sp)
  LUI t6, 1
  ADDIW t6, t6, -708
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -708
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  LUI t6, 1
  ADDIW t6, t6, -704
  ADD t6, t6, sp
  FSW fs7, 0(t6)
  FLW fs7, 588(sp)
  FLW fs8, 588(sp)
  LUI t6, 1
  ADDIW t6, t6, -860
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -860
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 1516(sp)
  FLW fs7, 584(sp)
  FLW fs8, 584(sp)
  LUI t6, 1
  ADDIW t6, t6, -864
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -864
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  LUI a0, 1
  ADDIW a0, a0, -580
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 920(sp)
  FLW fs8, 580(sp)
  LUI t6, 1
  ADDIW t6, t6, -872
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  FLW fs8, 580(sp)
  LUI t6, 1
  ADDIW t6, t6, -916
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -916
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -872
  ADD t6, t6, sp
  FLW fs10, 0(t6)
  FSGNJ.S fs8, fs10, fs8
  LUI t6, 1
  ADDIW t6, t6, -404
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -404
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSW fs8, 1392(sp)
  LUI a0, 1
  ADDIW a0, a0, -584
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 916(sp)
  FLW fs8, 576(sp)
  LUI t6, 1
  ADDIW t6, t6, -884
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  FLW fs8, 576(sp)
  LUI t6, 1
  ADDIW t6, t6, -888
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -888
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -884
  ADD t6, t6, sp
  FLW fs10, 0(t6)
  FSGNJ.S fs8, fs10, fs8
  LUI t6, 1
  ADDIW t6, t6, -432
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -432
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSW fs8, 1348(sp)
  FLW fs8, 572(sp)
  LUI t6, 1
  ADDIW t6, t6, -896
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  FLW fs8, 572(sp)
  LUI t6, 1
  ADDIW t6, t6, -900
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -900
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -896
  ADD t6, t6, sp
  FLW fs10, 0(t6)
  FSGNJ.S fs8, fs10, fs8
  LUI t6, 1
  ADDIW t6, t6, -312
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -312
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSW fs8, 1344(sp)
  LUI a0, 1
  ADDIW a0, a0, -588
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 872(sp)
  FLW fs8, 568(sp)
  LUI t6, 1
  ADDIW t6, t6, -908
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  FLW fs8, 568(sp)
  LUI t6, 1
  ADDIW t6, t6, -912
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -912
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -908
  ADD t6, t6, sp
  FLW fs10, 0(t6)
  FSGNJ.S fs8, fs10, fs8
  LUI t6, 1
  ADDIW t6, t6, -332
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -332
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSW fs8, 1340(sp)
  FLW fs8, 564(sp)
  LUI t6, 1
  ADDIW t6, t6, -760
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  FLW fs8, 564(sp)
  LUI t6, 1
  ADDIW t6, t6, -764
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -764
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -760
  ADD t6, t6, sp
  FLW fs10, 0(t6)
  FSGNJ.S fs8, fs10, fs8
  LUI t6, 1
  ADDIW t6, t6, -352
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -352
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSW fs8, 1336(sp)
  FLW fs8, 560(sp)
  LUI t6, 1
  ADDIW t6, t6, -772
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  FLW fs8, 560(sp)
  LUI t6, 1
  ADDIW t6, t6, -776
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -776
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -772
  ADD t6, t6, sp
  FLW fs10, 0(t6)
  FSGNJ.S fs8, fs10, fs8
  LUI t6, 1
  ADDIW t6, t6, -532
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -532
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSW fs8, 1332(sp)
  LUI a0, 1
  ADDIW a0, a0, -592
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 908(sp)
  LUI a0, 1
  ADDIW a0, a0, -556
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 904(sp)
  LUI a0, 1
  ADDIW a0, a0, -440
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 900(sp)
  FLW fs8, 556(sp)
  LUI t6, 1
  ADDIW t6, t6, -784
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  FLW fs8, 556(sp)
  LUI t6, 1
  ADDIW t6, t6, -788
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -788
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -784
  ADD t6, t6, sp
  FLW fs10, 0(t6)
  FSGNJ.S fs8, fs10, fs8
  LUI t6, 1
  ADDIW t6, t6, -552
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -552
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSW fs8, 1328(sp)
  LUI a0, 1
  ADDIW a0, a0, -444
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 896(sp)
  LUI a0, 1
  ADDIW a0, a0, -448
  ADD a0, a0, sp
  LW a0, 0(a0)
  # implict jump to bb8
bb8:
  LW s0, 900(sp)
  BNE s0, zero, bb10
  # implict jump to bb9
bb9:
  LUI t6, 1
  ADDIW t6, t6, -448
  ADD t6, t6, sp
  SW a0, 0(t6)
  LW a0, 896(sp)
  LUI t6, 1
  ADDIW t6, t6, -444
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs8, 1328(sp)
  LUI t6, 1
  ADDIW t6, t6, -564
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  FLW fs8, 1328(sp)
  LUI t6, 1
  ADDIW t6, t6, -568
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -568
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -564
  ADD t6, t6, sp
  FLW fs10, 0(t6)
  FSGNJ.S fs8, fs10, fs8
  LUI a0, 1
  ADDIW a0, a0, -780
  ADD a0, a0, sp
  FSW fs8, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -780
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSW fs8, 556(sp)
  LW a0, 900(sp)
  LUI t6, 1
  ADDIW t6, t6, -440
  ADD t6, t6, sp
  SW a0, 0(t6)
  LW a0, 904(sp)
  LUI t6, 1
  ADDIW t6, t6, -556
  ADD t6, t6, sp
  SW a0, 0(t6)
  LW a0, 908(sp)
  LUI t6, 1
  ADDIW t6, t6, -592
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs8, 1332(sp)
  LUI t6, 1
  ADDIW t6, t6, -544
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  FLW fs8, 1332(sp)
  LUI t6, 1
  ADDIW t6, t6, -548
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -548
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -544
  ADD t6, t6, sp
  FLW fs10, 0(t6)
  FSGNJ.S fs8, fs10, fs8
  LUI t6, 1
  ADDIW t6, t6, -768
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -768
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSW fs8, 560(sp)
  FLW fs8, 1336(sp)
  LUI t6, 1
  ADDIW t6, t6, -524
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  FLW fs8, 1336(sp)
  LUI t6, 1
  ADDIW t6, t6, -528
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -528
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -524
  ADD t6, t6, sp
  FLW fs10, 0(t6)
  FSGNJ.S fs8, fs10, fs8
  LUI t6, 1
  ADDIW t6, t6, -876
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -876
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSW fs8, 564(sp)
  FLW fs8, 1340(sp)
  LUI t6, 1
  ADDIW t6, t6, -344
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  FLW fs8, 1340(sp)
  LUI t6, 1
  ADDIW t6, t6, -348
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -348
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -344
  ADD t6, t6, sp
  FLW fs10, 0(t6)
  FSGNJ.S fs8, fs10, fs8
  LUI a0, 1
  ADDIW a0, a0, -904
  ADD a0, a0, sp
  FSW fs8, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -904
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSW fs8, 568(sp)
  LW a0, 872(sp)
  LUI t6, 1
  ADDIW t6, t6, -588
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs8, 1344(sp)
  LUI t6, 1
  ADDIW t6, t6, -324
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  FLW fs8, 1344(sp)
  LUI t6, 1
  ADDIW t6, t6, -328
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -328
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -324
  ADD t6, t6, sp
  FLW fs10, 0(t6)
  FSGNJ.S fs8, fs10, fs8
  LUI t6, 1
  ADDIW t6, t6, -892
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -892
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSW fs8, 572(sp)
  FLW fs8, 1348(sp)
  LUI t6, 1
  ADDIW t6, t6, -296
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  FLW fs8, 1348(sp)
  LUI t6, 1
  ADDIW t6, t6, -300
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -300
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -296
  ADD t6, t6, sp
  FLW fs10, 0(t6)
  FSGNJ.S fs8, fs10, fs8
  LUI a0, 1
  ADDIW a0, a0, -880
  ADD a0, a0, sp
  FSW fs8, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -880
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSW fs8, 576(sp)
  LW a0, 916(sp)
  LUI t6, 1
  ADDIW t6, t6, -584
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs8, 1392(sp)
  LUI t6, 1
  ADDIW t6, t6, -420
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  FLW fs8, 1392(sp)
  LUI t6, 1
  ADDIW t6, t6, -424
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -424
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -420
  ADD t6, t6, sp
  FLW fs10, 0(t6)
  FSGNJ.S fs8, fs10, fs8
  LUI a0, 1
  ADDIW a0, a0, -868
  ADD a0, a0, sp
  FSW fs8, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -868
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSW fs8, 580(sp)
  LW a0, 920(sp)
  LUI t6, 1
  ADDIW t6, t6, -580
  ADD t6, t6, sp
  SW a0, 0(t6)
  FSW fs7, 584(sp)
  FLW fs7, 1516(sp)
  FLW fs8, 1516(sp)
  LUI t6, 1
  ADDIW t6, t6, -400
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -400
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 588(sp)
  LUI t6, 1
  ADDIW t6, t6, -704
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -704
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  LUI t6, 1
  ADDIW t6, t6, -704
  ADD t6, t6, sp
  FSW fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -704
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  FSW fs7, 552(sp)
  FLW fs7, 1520(sp)
  FLW fs8, 1520(sp)
  LUI t6, 1
  ADDIW t6, t6, -628
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -628
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 596(sp)
  FLW fs7, 1524(sp)
  FLW fs8, 1524(sp)
  LUI t6, 1
  ADDIW t6, t6, -620
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -620
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 600(sp)
  FLW fs7, 1528(sp)
  FLW fs8, 1528(sp)
  LUI t6, 1
  ADDIW t6, t6, -612
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -612
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 604(sp)
  LW a0, 924(sp)
  LUI t6, 1
  ADDIW t6, t6, -576
  ADD t6, t6, sp
  SW a0, 0(t6)
  FSW fs1, 608(sp)
  LW a0, 216(sp)
  SW a0, 216(sp)
  FLW fs1, 1532(sp)
  FLW fs7, 1532(sp)
  FSGNJ.S fs1, fs1, fs7
  FSW fs1, 612(sp)
  FSW fs2, 616(sp)
  FSW fs9, 620(sp)
  FSW fs3, 624(sp)
  FSW fs4, 628(sp)
  FSW fs6, 512(sp)
  LW a0, 928(sp)
  LUI t6, 1
  ADDIW t6, t6, -4
  ADD t6, t6, sp
  SW a0, 0(t6)
  FSW fs0, 476(sp)
  FSW fs5, 480(sp)
  LUI t6, 1
  ADDIW t6, t6, 580
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 580
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 484(sp)
  LUI t6, 1
  ADDIW t6, t6, 576
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 576
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 488(sp)
  LUI a0, 1
  ADDIW a0, a0, 596
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -40
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 640
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 4
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1536(sp)
  FLW fs1, 1536(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 492(sp)
  FLW fs0, 1540(sp)
  FLW fs1, 1540(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 496(sp)
  FLW fs0, 1544(sp)
  FLW fs1, 1544(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1192(sp)
  LUI a0, 1
  ADDIW a0, a0, 644
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 8
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1548(sp)
  FLW fs1, 1548(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 500(sp)
  LUI a0, 1
  ADDIW a0, a0, 648
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 12
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 652
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 16
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1512(sp)
  FLW fs1, 1512(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1224(sp)
  FLW fs0, 1556(sp)
  FLW fs1, 1556(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1220(sp)
  FLW fs0, 1560(sp)
  FLW fs1, 1560(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1216(sp)
  FLW fs0, 1564(sp)
  FLW fs1, 1564(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1212(sp)
  LUI a0, 1
  ADDIW a0, a0, 656
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 20
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 660
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 24
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 664
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 28
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1568(sp)
  FLW fs1, 1568(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 504(sp)
  FLW fs0, 1572(sp)
  FLW fs1, 1572(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1204(sp)
  FLW fs0, 1576(sp)
  FLW fs1, 1576(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1200(sp)
  FLW fs0, 1580(sp)
  FLW fs1, 1580(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1196(sp)
  FLW fs0, 1584(sp)
  FLW fs1, 1584(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1072(sp)
  FLW fs0, 1588(sp)
  FLW fs1, 1588(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1028(sp)
  LUI a0, 1
  ADDIW a0, a0, 668
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1472(sp)
  FLW fs1, 1472(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1024(sp)
  LUI a0, 1
  ADDIW a0, a0, 556
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 36
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1436(sp)
  FLW fs1, 1436(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1020(sp)
  JAL zero, bb7
bb10:
  LW s0, 900(sp)
  LUI t6, 1
  ADDIW t6, t6, -488
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -484
  ADD t6, t6, sp
  SW a0, 0(t6)
  LW a0, 896(sp)
  LUI t6, 1
  ADDIW t6, t6, -480
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs8, 1328(sp)
  LUI t6, 1
  ADDIW t6, t6, -596
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  FLW fs8, 1328(sp)
  LUI t6, 1
  ADDIW t6, t6, -560
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -560
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -596
  ADD t6, t6, sp
  FLW fs10, 0(t6)
  FSGNJ.S fs8, fs10, fs8
  LUI a0, 1
  ADDIW a0, a0, -816
  ADD a0, a0, sp
  FSW fs8, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -816
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSW fs8, 444(sp)
  LW a0, 900(sp)
  LUI t6, 1
  ADDIW t6, t6, -516
  ADD t6, t6, sp
  SW a0, 0(t6)
  LW a0, 904(sp)
  LUI t6, 1
  ADDIW t6, t6, -472
  ADD t6, t6, sp
  SW a0, 0(t6)
  LW a0, 908(sp)
  LUI t6, 1
  ADDIW t6, t6, -468
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs8, 1332(sp)
  LUI t6, 1
  ADDIW t6, t6, -536
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  FLW fs8, 1332(sp)
  LUI t6, 1
  ADDIW t6, t6, -540
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -540
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -536
  ADD t6, t6, sp
  FLW fs10, 0(t6)
  FSGNJ.S fs8, fs10, fs8
  LUI t6, 1
  ADDIW t6, t6, -812
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -812
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSW fs8, 448(sp)
  FLW fs8, 1336(sp)
  LUI t6, 1
  ADDIW t6, t6, -476
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  FLW fs8, 1336(sp)
  LUI t6, 1
  ADDIW t6, t6, -520
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -520
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -476
  ADD t6, t6, sp
  FLW fs10, 0(t6)
  FSGNJ.S fs8, fs10, fs8
  LUI t6, 1
  ADDIW t6, t6, -808
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -808
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSW fs8, 452(sp)
  FLW fs8, 1340(sp)
  LUI t6, 1
  ADDIW t6, t6, -336
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  FLW fs8, 1340(sp)
  LUI t6, 1
  ADDIW t6, t6, -340
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -340
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -336
  ADD t6, t6, sp
  FLW fs10, 0(t6)
  FSGNJ.S fs8, fs10, fs8
  LUI a0, 1
  ADDIW a0, a0, -804
  ADD a0, a0, sp
  FSW fs8, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -804
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSW fs8, 456(sp)
  LW a0, 872(sp)
  LUI t6, 1
  ADDIW t6, t6, -464
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs8, 1344(sp)
  LUI t6, 1
  ADDIW t6, t6, -356
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  FLW fs8, 1344(sp)
  LUI t6, 1
  ADDIW t6, t6, -320
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -320
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -356
  ADD t6, t6, sp
  FLW fs10, 0(t6)
  FSGNJ.S fs8, fs10, fs8
  LUI t6, 1
  ADDIW t6, t6, -800
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -800
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSW fs8, 460(sp)
  FLW fs8, 1348(sp)
  LUI t6, 1
  ADDIW t6, t6, -396
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  FLW fs8, 1348(sp)
  LUI t6, 1
  ADDIW t6, t6, -284
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -284
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -396
  ADD t6, t6, sp
  FLW fs10, 0(t6)
  FSGNJ.S fs8, fs10, fs8
  LUI a0, 1
  ADDIW a0, a0, -836
  ADD a0, a0, sp
  FSW fs8, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -836
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSW fs8, 464(sp)
  LW a0, 916(sp)
  LUI t6, 1
  ADDIW t6, t6, -460
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs8, 1392(sp)
  LUI t6, 1
  ADDIW t6, t6, -408
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  FLW fs8, 1392(sp)
  LUI t6, 1
  ADDIW t6, t6, -416
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -416
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -408
  ADD t6, t6, sp
  FLW fs10, 0(t6)
  FSGNJ.S fs8, fs10, fs8
  LUI a0, 1
  ADDIW a0, a0, -792
  ADD a0, a0, sp
  FSW fs8, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -792
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSW fs8, 468(sp)
  LW a0, 920(sp)
  LUI t6, 1
  ADDIW t6, t6, -456
  ADD t6, t6, sp
  SW a0, 0(t6)
  FSW fs7, 352(sp)
  FLW fs7, 1516(sp)
  FLW fs8, 1516(sp)
  LUI t6, 1
  ADDIW t6, t6, -436
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -436
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 316(sp)
  LUI t6, 1
  ADDIW t6, t6, -704
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -704
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  LUI t6, 1
  ADDIW t6, t6, -704
  ADD t6, t6, sp
  FSW fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -704
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  FSW fs7, 320(sp)
  FLW fs7, 1520(sp)
  FLW fs8, 1520(sp)
  LUI t6, 1
  ADDIW t6, t6, -624
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -624
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 324(sp)
  FLW fs7, 1524(sp)
  FLW fs8, 1524(sp)
  LUI t6, 1
  ADDIW t6, t6, -616
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -616
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 328(sp)
  FLW fs7, 1528(sp)
  FLW fs8, 1528(sp)
  LUI t6, 1
  ADDIW t6, t6, -608
  ADD t6, t6, sp
  FSW fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -608
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 332(sp)
  LW a0, 924(sp)
  LUI t6, 1
  ADDIW t6, t6, -452
  ADD t6, t6, sp
  SW a0, 0(t6)
  FSW fs1, 336(sp)
  LW a0, 216(sp)
  SW a0, 216(sp)
  LW a0, 216(sp)
  LUI t6, 1
  ADDIW t6, t6, -244
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -280
  ADD t6, t6, sp
  SW a1, 0(t6)
  FLW fs1, 1532(sp)
  FLW fs7, 1532(sp)
  FSGNJ.S fs1, fs1, fs7
  FSW fs1, 340(sp)
  FSW fs2, 344(sp)
  FSW fs9, 348(sp)
  FSW fs3, 312(sp)
  FSW fs4, 356(sp)
  LUI a0, 1
  ADDIW a0, a0, -236
  ADD a0, a0, sp
  SW s9, 0(a0)
  FSW fs6, 360(sp)
  LW a0, 928(sp)
  LUI t6, 1
  ADDIW t6, t6, -232
  ADD t6, t6, sp
  SW a0, 0(t6)
  FSW fs0, 364(sp)
  FSW fs5, 368(sp)
  LUI t6, 1
  ADDIW t6, t6, 580
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 580
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 372(sp)
  LUI t6, 1
  ADDIW t6, t6, 576
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 576
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 376(sp)
  LUI a0, 1
  ADDIW a0, a0, 596
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -228
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 640
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -224
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1536(sp)
  FLW fs1, 1536(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 380(sp)
  FLW fs0, 1540(sp)
  FLW fs1, 1540(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 384(sp)
  FLW fs0, 1544(sp)
  FLW fs1, 1544(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 388(sp)
  LUI a0, 1
  ADDIW a0, a0, 644
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -220
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1548(sp)
  FLW fs1, 1548(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 432(sp)
  LUI a0, 1
  ADDIW a0, a0, 648
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -216
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 652
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -212
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1512(sp)
  FLW fs1, 1512(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1176(sp)
  FLW fs0, 1556(sp)
  FLW fs1, 1556(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1172(sp)
  FLW fs0, 1560(sp)
  FLW fs1, 1560(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1168(sp)
  FLW fs0, 1564(sp)
  FLW fs1, 1564(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1164(sp)
  LUI a0, 1
  ADDIW a0, a0, 656
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -208
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 660
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -204
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 664
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -160
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1568(sp)
  FLW fs1, 1568(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1160(sp)
  FLW fs0, 1572(sp)
  FLW fs1, 1572(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1156(sp)
  FLW fs0, 1576(sp)
  FLW fs1, 1576(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1112(sp)
  FLW fs0, 1580(sp)
  FLW fs1, 1580(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1148(sp)
  FLW fs0, 1584(sp)
  FLW fs1, 1584(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1144(sp)
  FLW fs0, 1588(sp)
  FLW fs1, 1588(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1140(sp)
  LUI a0, 1
  ADDIW a0, a0, 668
  ADD a0, a0, sp
  LW a0, 0(a0)
  FLW fs0, 1472(sp)
  FLW fs1, 1472(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1136(sp)
  LUI a1, 1
  ADDIW a1, a1, 556
  ADD a1, a1, sp
  LW a1, 0(a1)
  FLW fs0, 1436(sp)
  FLW fs1, 1436(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1132(sp)
  # implict jump to bb11
bb11:
  FLW fs0, 1132(sp)
  FLW fs1, 1132(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1320(sp)
  LUI t6, 1
  ADDIW t6, t6, 632
  ADD t6, t6, sp
  SW a1, 0(t6)
  FLW fs0, 1136(sp)
  FLW fs1, 1136(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1316(sp)
  LUI t6, 1
  ADDIW t6, t6, 628
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1140(sp)
  FLW fs1, 1140(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1272(sp)
  FLW fs0, 1144(sp)
  FLW fs1, 1144(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1308(sp)
  FLW fs0, 1148(sp)
  FLW fs1, 1148(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1304(sp)
  FLW fs0, 1112(sp)
  FLW fs1, 1112(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1300(sp)
  FLW fs0, 1156(sp)
  FLW fs1, 1156(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1296(sp)
  FLW fs0, 1160(sp)
  FLW fs1, 1160(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1292(sp)
  LUI a0, 1
  ADDIW a0, a0, -160
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 624
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -204
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 620
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -208
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 616
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 1164(sp)
  FLW fs1, 1164(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1288(sp)
  FLW fs0, 1168(sp)
  FLW fs1, 1168(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1284(sp)
  FLW fs0, 1172(sp)
  FLW fs1, 1172(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1280(sp)
  FLW fs0, 1176(sp)
  FLW fs1, 1176(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1276(sp)
  LUI a0, 1
  ADDIW a0, a0, -212
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 612
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -216
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 608
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 432(sp)
  FLW fs1, 432(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1312(sp)
  LUI a0, 1
  ADDIW a0, a0, -220
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 604
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 388(sp)
  FLW fs1, 388(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1428(sp)
  FLW fs0, 384(sp)
  FLW fs1, 384(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1424(sp)
  FLW fs0, 380(sp)
  FLW fs1, 380(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1420(sp)
  LUI a0, 1
  ADDIW a0, a0, -224
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 600
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -228
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 476
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 376(sp)
  FLW fs1, 376(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1416(sp)
  FLW fs0, 372(sp)
  FLW fs1, 372(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1412(sp)
  FLW fs0, 368(sp)
  FLW fs1, 368(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1408(sp)
  FLW fs0, 364(sp)
  FLW fs1, 364(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1404(sp)
  LUI a0, 1
  ADDIW a0, a0, -232
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 432
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 360(sp)
  FLW fs1, 360(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1400(sp)
  LUI a0, 1
  ADDIW a0, a0, -236
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 660(sp)
  FLW fs0, 356(sp)
  FLW fs1, 356(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1396(sp)
  FLW fs0, 312(sp)
  FLW fs1, 312(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1352(sp)
  FLW fs0, 348(sp)
  FLW fs1, 348(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1388(sp)
  FLW fs0, 344(sp)
  FLW fs1, 344(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1384(sp)
  FLW fs0, 340(sp)
  FLW fs1, 340(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1380(sp)
  LUI a0, 1
  ADDIW a0, a0, -280
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 656(sp)
  LUI a0, 1
  ADDIW a0, a0, -244
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 652(sp)
  FLW fs0, 336(sp)
  FLW fs1, 336(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1376(sp)
  LUI a0, 1
  ADDIW a0, a0, -452
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 648(sp)
  FLW fs0, 332(sp)
  FLW fs1, 332(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1372(sp)
  FLW fs0, 328(sp)
  FLW fs1, 328(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1220
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 324(sp)
  FLW fs1, 324(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1216
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 320(sp)
  FLW fs1, 320(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1212
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 316(sp)
  FLW fs1, 316(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1208
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 352(sp)
  FLW fs1, 352(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -1204
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -456
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 428
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 468(sp)
  FLW fs1, 468(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -1200
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -460
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 640(sp)
  FLW fs0, 464(sp)
  FLW fs1, 464(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1236
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 460(sp)
  FLW fs1, 460(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -1192
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -464
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 636(sp)
  FLW fs0, 456(sp)
  FLW fs1, 456(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1188
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 452(sp)
  FLW fs1, 452(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1184
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 448(sp)
  FLW fs1, 448(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -1180
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -468
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 672(sp)
  LUI a0, 1
  ADDIW a0, a0, -472
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 788(sp)
  LUI a0, 1
  ADDIW a0, a0, -516
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 784(sp)
  FLW fs0, 444(sp)
  FLW fs1, 444(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, -1176
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -480
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 780(sp)
  LUI a0, 1
  ADDIW a0, a0, -484
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 776(sp)
  LUI a0, 1
  ADDIW a0, a0, -488
  ADD a0, a0, sp
  LW a0, 0(a0)
  SW a0, 772(sp)
  FLW fs0, 1428(sp)
  LUI t6, 1
  ADDIW t6, t6, -1212
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs1, fs0, fs1
  FLW fs0, 1316(sp)
  FADD.S fs1, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1192
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FADD.S fs1, fs1, fs0
  FLW fs0, 1412(sp)
  LUI t6, 1
  ADDIW t6, t6, -1176
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FADD.S fs7, fs2, fs0
  FLW fs0, 1372(sp)
  FADD.S fs7, fs7, fs0
  LUI t6, 1
  ADDIW t6, t6, -1188
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FADD.S fs7, fs7, fs0
  FLW fs0, 1352(sp)
  LUI t6, 1
  ADDIW t6, t6, -1180
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FADD.S fs2, fs2, fs0
  FLW fs0, 1424(sp)
  FADD.S fs2, fs2, fs0
  LUI t6, 1
  ADDIW t6, t6, -1216
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FADD.S fs2, fs2, fs0
  FLW fs0, 1284(sp)
  LUI t6, 1
  ADDIW t6, t6, -1208
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FADD.S fs10, fs3, fs0
  FLW fs0, 1420(sp)
  FADD.S fs9, fs10, fs0
  LUI t6, 1
  ADDIW t6, t6, -1184
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FADD.S fs9, fs9, fs0
  FLW fs0, 1272(sp)
  FLW fs3, 1408(sp)
  FADD.S fs6, fs3, fs0
  FLW fs0, 1292(sp)
  FADD.S fs6, fs6, fs0
  FLW fs0, 1296(sp)
  FADD.S fs6, fs6, fs0
  FLW fs0, 1404(sp)
  FLW fs3, 1380(sp)
  FADD.S fs5, fs3, fs0
  FLW fs0, 1300(sp)
  FADD.S fs5, fs5, fs0
  FLW fs0, 1388(sp)
  FADD.S fs5, fs5, fs0
  FLW fs0, 1280(sp)
  FLW fs3, 1396(sp)
  FADD.S fs3, fs0, fs3
  FLW fs0, 1304(sp)
  FADD.S fs3, fs3, fs0
  FLW fs0, 1276(sp)
  FADD.S fs3, fs3, fs0
  FLW fs0, 1288(sp)
  LUI t6, 1
  ADDIW t6, t6, -1236
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FADD.S fs10, fs4, fs0
  LUI t6, 1
  ADDIW t6, t6, -1204
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FADD.S fs10, fs10, fs0
  FLW fs0, 1312(sp)
  FADD.S fs10, fs10, fs0
  FLW fs0, 1384(sp)
  FLW fs4, 1376(sp)
  FADD.S fs0, fs4, fs0
  FLW fs4, 1416(sp)
  FADD.S fs0, fs0, fs4
  FLW fs4, 1320(sp)
  FADD.S fs0, fs0, fs4
  FLW fs4, 1308(sp)
  LUI t6, 1
  ADDIW t6, t6, -1200
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FADD.S fs8, fs4, fs8
  LUI t6, 1
  ADDIW t6, t6, -1220
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FADD.S fs8, fs8, fs4
  FLW fs4, 1400(sp)
  FADD.S fs4, fs8, fs4
  LUI t6, 2
  ADDIW t6, t6, -1800
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1800
  ADD t6, t6, sp
  FSW fs7, 4(t6)
  LUI t6, 2
  ADDIW t6, t6, -1800
  ADD t6, t6, sp
  FSW fs2, 8(t6)
  LUI t6, 2
  ADDIW t6, t6, -1800
  ADD t6, t6, sp
  FSW fs9, 12(t6)
  LUI t6, 2
  ADDIW t6, t6, -1800
  ADD t6, t6, sp
  FSW fs6, 16(t6)
  LUI t6, 2
  ADDIW t6, t6, -1800
  ADD t6, t6, sp
  FSW fs5, 20(t6)
  LUI t6, 2
  ADDIW t6, t6, -1800
  ADD t6, t6, sp
  FSW fs3, 24(t6)
  LUI t6, 2
  ADDIW t6, t6, -1800
  ADD t6, t6, sp
  FSW fs10, 28(t6)
  LUI a0, 2
  ADDIW a0, a0, -1800
  ADD a0, a0, sp
  FSW fs0, 32(a0)
  LUI a0, 2
  ADDIW a0, a0, -1800
  ADD a0, a0, sp
  FSW fs4, 36(a0)
  LW a0, 640(sp)
  LW a1, 784(sp)
  ADDW a0, a0, a1
  SW a0, 692(sp)
  LW a0, 692(sp)
  LW a1, 776(sp)
  ADDW a0, a0, a1
  SW a0, 696(sp)
  LUI t6, 1
  ADDIW t6, t6, 616
  ADD t6, t6, sp
  LW s0, 0(t6)
  LW a0, 788(sp)
  ADDW a0, s0, a0
  SW a0, 700(sp)
  LW a0, 700(sp)
  LW a1, 672(sp)
  ADDW a0, a0, a1
  SW a0, 704(sp)
  LW a0, 648(sp)
  LW a1, 780(sp)
  ADDW a0, a1, a0
  SW a0, 708(sp)
  LW a0, 708(sp)
  LW a1, 660(sp)
  ADDW a0, a0, a1
  SW a0, 752(sp)
  LUI t6, 1
  ADDIW t6, t6, 600
  ADD t6, t6, sp
  LW s0, 0(t6)
  LW a0, 652(sp)
  ADDW a0, s0, a0
  SW a0, 876(sp)
  LUI t6, 1
  ADDIW t6, t6, 608
  ADD t6, t6, sp
  LW s0, 0(t6)
  LW a0, 876(sp)
  ADDW a0, a0, s0
  SW a0, 880(sp)
  LUI t6, 1
  ADDIW t6, t6, 604
  ADD t6, t6, sp
  LW s0, 0(t6)
  LW a0, 656(sp)
  ADDW a0, s0, a0
  SW a0, 884(sp)
  LUI t6, 1
  ADDIW t6, t6, 632
  ADD t6, t6, sp
  LW s0, 0(t6)
  LW a0, 884(sp)
  ADDW s10, a0, s0
  LUI t6, 1
  ADDIW t6, t6, 628
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 612
  ADD t6, t6, sp
  LW s1, 0(t6)
  ADDW s11, s0, s1
  LUI t6, 1
  ADDIW t6, t6, 432
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADDW s11, s11, s0
  LUI t6, 1
  ADDIW t6, t6, 476
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 428
  ADD t6, t6, sp
  LW s1, 0(t6)
  ADDW a0, s0, s1
  SW a0, 888(sp)
  LUI t6, 1
  ADDIW t6, t6, 624
  ADD t6, t6, sp
  LW s0, 0(t6)
  LW a0, 888(sp)
  ADDW a0, a0, s0
  SW a0, 156(sp)
  LUI t6, 1
  ADDIW t6, t6, 620
  ADD t6, t6, sp
  LW s0, 0(t6)
  LW a0, 636(sp)
  ADDW a0, s0, a0
  SW a0, 200(sp)
  LW a0, 772(sp)
  LW a1, 200(sp)
  ADDW a0, a1, a0
  LW a1, 696(sp)
  LUI t6, 2
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  SW a1, 0(t6)
  LW a1, 704(sp)
  LUI t6, 2
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  SW a1, 4(t6)
  LW a1, 752(sp)
  LUI t6, 2
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  SW a1, 8(t6)
  LW a1, 880(sp)
  LUI t6, 2
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  SW a1, 12(t6)
  LUI a1, 2
  ADDIW a1, a1, -1760
  ADD a1, a1, sp
  SW s10, 16(a1)
  LUI a1, 2
  ADDIW a1, a1, -1760
  ADD a1, a1, sp
  SW s11, 20(a1)
  LW a1, 156(sp)
  LUI t6, 2
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  SW a1, 24(t6)
  LUI a1, 2
  ADDIW a1, a1, -1760
  ADD a1, a1, sp
  SW a0, 28(a1)
  ADDI a0, zero, 10
  LUI a1, 2
  ADDIW a1, a1, -1800
  ADD a1, a1, sp
  ADD a1, a1, zero
  CALL putfarray
  ADDI a0, zero, 8
  LUI a1, 2
  ADDIW a1, a1, -1760
  ADD a1, a1, sp
  ADD a1, a1, zero
  CALL putarray
  LUI a0, 2
  ADDIW a0, a0, -1760
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -1800
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FCVT.S.W fs1, a0
  FSUB.S fs0, fs1, fs0
  FCVT.W.S a0, fs0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1760
  ADD a0, a0, sp
  LW a0, 4(a0)
  LUI t6, 2
  ADDIW t6, t6, -1800
  ADD t6, t6, sp
  FLW fs0, 4(t6)
  FCVT.S.W fs1, a0
  FSUB.S fs0, fs1, fs0
  FCVT.W.S a0, fs0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  SW a0, 4(t6)
  LUI a0, 2
  ADDIW a0, a0, -1760
  ADD a0, a0, sp
  LW a0, 8(a0)
  LUI t6, 2
  ADDIW t6, t6, -1800
  ADD t6, t6, sp
  FLW fs0, 8(t6)
  FCVT.S.W fs1, a0
  FSUB.S fs0, fs1, fs0
  FCVT.W.S a0, fs0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  SW a0, 8(t6)
  LUI a0, 2
  ADDIW a0, a0, -1760
  ADD a0, a0, sp
  LW a0, 12(a0)
  LUI t6, 2
  ADDIW t6, t6, -1800
  ADD t6, t6, sp
  FLW fs0, 12(t6)
  FCVT.S.W fs1, a0
  FSUB.S fs0, fs1, fs0
  FCVT.W.S a0, fs0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  SW a0, 12(t6)
  LUI a0, 2
  ADDIW a0, a0, -1760
  ADD a0, a0, sp
  LW a0, 16(a0)
  LUI t6, 2
  ADDIW t6, t6, -1800
  ADD t6, t6, sp
  FLW fs0, 16(t6)
  FCVT.S.W fs1, a0
  FSUB.S fs0, fs1, fs0
  FCVT.W.S a0, fs0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  SW a0, 16(t6)
  LUI a0, 2
  ADDIW a0, a0, -1760
  ADD a0, a0, sp
  LW a0, 20(a0)
  LUI t6, 2
  ADDIW t6, t6, -1800
  ADD t6, t6, sp
  FLW fs0, 20(t6)
  FCVT.S.W fs1, a0
  FSUB.S fs0, fs1, fs0
  FCVT.W.S a0, fs0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  SW a0, 20(t6)
  LUI a0, 2
  ADDIW a0, a0, -1760
  ADD a0, a0, sp
  LW a0, 24(a0)
  LUI t6, 2
  ADDIW t6, t6, -1800
  ADD t6, t6, sp
  FLW fs0, 24(t6)
  FCVT.S.W fs1, a0
  FSUB.S fs0, fs1, fs0
  FCVT.W.S a0, fs0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  SW a0, 24(t6)
  LUI a0, 2
  ADDIW a0, a0, -1760
  ADD a0, a0, sp
  LW a0, 28(a0)
  LUI t6, 2
  ADDIW t6, t6, -1800
  ADD t6, t6, sp
  FLW fs0, 28(t6)
  FCVT.S.W fs1, a0
  FSUB.S fs0, fs1, fs0
  FCVT.W.S a0, fs0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  SW a0, 28(t6)
  LA a0, k
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  SW a0, 892(sp)
  LW a0, 892(sp)
  LUI t6, 2
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  ADD a0, t6, a0
  LW a0, 0(a0)
  FCVT.S.W fs0, a0
  FSW fs0, 1324(sp)
  LW a0, 892(sp)
  LUI t6, 2
  ADDIW t6, t6, -1440
  ADD t6, t6, sp
  ADD a0, t6, a0
  FLW fs0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 584
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs1, 0(a0)
  FADD.S fs0, fs0, fs1
  LUI a0, 2
  ADDIW a0, a0, 576
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs1, 0(a0)
  FADD.S fs0, fs0, fs1
  LUI a0, 2
  ADDIW a0, a0, 568
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs1, 0(a0)
  FADD.S fs0, fs0, fs1
  LUI a0, 2
  ADDIW a0, a0, 560
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs1, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 552
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs2, 0(a0)
  FADD.S fs1, fs1, fs2
  LUI a0, 2
  ADDIW a0, a0, 544
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs2, 0(a0)
  FADD.S fs1, fs1, fs2
  LUI a0, 2
  ADDIW a0, a0, 536
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs2, 0(a0)
  FADD.S fs1, fs1, fs2
  LUI a0, 2
  ADDIW a0, a0, 528
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs2, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 520
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs3, 0(a0)
  FADD.S fs2, fs2, fs3
  LUI a0, 2
  ADDIW a0, a0, 512
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs3, 0(a0)
  FADD.S fs2, fs2, fs3
  LUI a0, 2
  ADDIW a0, a0, 504
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs3, 0(a0)
  FADD.S fs2, fs2, fs3
  LUI a0, 2
  ADDIW a0, a0, 496
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs3, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 360
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs4, 0(a0)
  FADD.S fs3, fs3, fs4
  LUI a0, 2
  ADDIW a0, a0, 480
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs4, 0(a0)
  FADD.S fs3, fs3, fs4
  LUI a0, 2
  ADDIW a0, a0, 472
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs4, 0(a0)
  FADD.S fs3, fs3, fs4
  LUI a0, 2
  ADDIW a0, a0, 464
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs4, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 456
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs5, 0(a0)
  FADD.S fs4, fs4, fs5
  LUI a0, 2
  ADDIW a0, a0, 448
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs5, 0(a0)
  FADD.S fs4, fs4, fs5
  LUI a0, 2
  ADDIW a0, a0, 440
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs5, 0(a0)
  FADD.S fs4, fs4, fs5
  LUI a0, 2
  ADDIW a0, a0, 432
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs5, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 424
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs6, 0(a0)
  FADD.S fs5, fs5, fs6
  LUI a0, 2
  ADDIW a0, a0, 416
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs6, 0(a0)
  FADD.S fs5, fs5, fs6
  LUI a0, 2
  ADDIW a0, a0, 408
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs6, 0(a0)
  FADD.S fs5, fs5, fs6
  LUI a0, 2
  ADDIW a0, a0, 400
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs6, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 392
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs7, 0(a0)
  FADD.S fs6, fs6, fs7
  LUI a0, 2
  ADDIW a0, a0, 384
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs7, 0(a0)
  FADD.S fs6, fs6, fs7
  LUI a0, 2
  ADDIW a0, a0, 376
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs7, 0(a0)
  FADD.S fs6, fs6, fs7
  LUI a0, 2
  ADDIW a0, a0, 368
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs7, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 488
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs8, 0(a0)
  FADD.S fs7, fs7, fs8
  LUI a0, 2
  ADDIW a0, a0, 856
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs8, 0(a0)
  FADD.S fs7, fs7, fs8
  LUI a0, 2
  ADDIW a0, a0, 848
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs8, 0(a0)
  FADD.S fs7, fs7, fs8
  LUI a0, 2
  ADDIW a0, a0, 840
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs8, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 832
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs9, 0(a0)
  FADD.S fs8, fs8, fs9
  LUI a0, 2
  ADDIW a0, a0, 824
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs9, 0(a0)
  FADD.S fs8, fs8, fs9
  LUI a0, 2
  ADDIW a0, a0, 816
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs9, 0(a0)
  FADD.S fs8, fs8, fs9
  LUI a0, 2
  ADDIW a0, a0, 808
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs9, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 800
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs10, 0(a0)
  FADD.S fs9, fs9, fs10
  LUI a0, 2
  ADDIW a0, a0, 792
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs10, 0(a0)
  FADD.S fs9, fs9, fs10
  LUI a0, 2
  ADDIW a0, a0, 784
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 892(sp)
  ADD a0, a0, a1
  FLW fs10, 0(a0)
  FADD.S fs9, fs9, fs10
  LUI t6, 2
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  FSW fs1, 4(t6)
  LUI t6, 2
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  FSW fs2, 8(t6)
  LUI t6, 2
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  FSW fs3, 12(t6)
  LUI t6, 2
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  FSW fs4, 16(t6)
  LUI t6, 2
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  FSW fs5, 20(t6)
  LUI t6, 2
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  FSW fs6, 24(t6)
  LUI t6, 2
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  FSW fs7, 28(t6)
  LUI t6, 2
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  FSW fs8, 32(t6)
  LUI t6, 2
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  FSW fs9, 36(t6)
  FLW fs0, 1368(sp)
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
  ADDIW a0, a0, 584
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1456
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 576
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1448
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 568
  ADD t6, t6, sp
  LD s9, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 560
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1440
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 552
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1432
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 544
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1424
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 536
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1040
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 528
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1416
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 520
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1408
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 512
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1400
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 504
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1392
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 496
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 2016
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 360
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 864
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 480
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -712
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 472
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -720
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 464
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -728
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 456
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 960
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 448
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -736
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 440
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -744
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 432
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 936
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 424
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -752
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 416
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -760
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 408
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 912
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 400
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -768
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 392
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -776
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 384
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -784
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 376
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 880
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 368
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -792
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 488
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 992
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 856
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -800
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 848
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1352
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 840
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -808
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 832
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1336
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 824
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -816
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 816
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -824
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 808
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1312
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 800
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1304
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 792
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1296
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 784
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -960
  ADD t6, t6, sp
  SD a0, 0(t6)
  # implict jump to bb13
bb13:
  LUI a0, 2
  ADDIW a0, a0, -960
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1664
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1296
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1672
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1304
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1680
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1312
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1688
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -824
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1696
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -816
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1704
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1336
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1712
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -808
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1720
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1352
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1728
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -800
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1736
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 992
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1744
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -792
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1752
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 880
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1632
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -784
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1768
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -776
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1776
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -768
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1784
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 912
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1792
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -760
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1800
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -752
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1808
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 936
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1816
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -744
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1824
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -736
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1832
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 960
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1840
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -728
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1848
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -720
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1856
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -712
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -552
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 864
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -544
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 2016
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -536
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1392
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -528
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1400
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -648
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1408
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -512
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1416
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -504
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1040
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -496
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1424
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -488
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1432
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -480
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1440
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1448
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI a1, 1
  ADDIW a1, a1, 1456
  ADD a1, a1, sp
  LD a1, 0(a1)
  LUI t6, 1
  ADDIW t6, t6, 1864
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 1864
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 1
  ADDIW t6, t6, 1656
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 1656
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs0, 0(a1)
  LW a1, 892(sp)
  ADD a1, a0, a1
  LUI t6, 1
  ADDIW t6, t6, 1648
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 1648
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs1, 0(a1)
  FADD.S fs0, fs0, fs1
  LW a1, 892(sp)
  ADD a1, s9, a1
  LUI t6, 1
  ADDIW t6, t6, 1640
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 1640
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs1, 0(a1)
  FADD.S fs0, fs0, fs1
  LW a1, 892(sp)
  ADD a1, s10, a1
  LUI t6, 1
  ADDIW t6, t6, 1760
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 1760
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs1, 0(a1)
  FADD.S fs0, fs0, fs1
  LUI a1, 2
  ADDIW a1, a1, -480
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 2
  ADDIW t6, t6, -1968
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 2
  ADDIW a1, a1, -1968
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs1, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, -488
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 2
  ADDIW t6, t6, -1976
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 2
  ADDIW a1, a1, -1976
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs2, 0(a1)
  FADD.S fs1, fs1, fs2
  LUI a1, 2
  ADDIW a1, a1, -496
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 2
  ADDIW t6, t6, -1984
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 2
  ADDIW a1, a1, -1984
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs2, 0(a1)
  FADD.S fs1, fs1, fs2
  LUI a1, 2
  ADDIW a1, a1, -504
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 2
  ADDIW t6, t6, -1992
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 2
  ADDIW a1, a1, -1992
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs2, 0(a1)
  FADD.S fs1, fs1, fs2
  LUI a1, 2
  ADDIW a1, a1, -512
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 2
  ADDIW t6, t6, -2000
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 2
  ADDIW a1, a1, -2000
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs2, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, -648
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 2
  ADDIW t6, t6, -2008
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 2
  ADDIW a1, a1, -2008
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs3, 0(a1)
  FADD.S fs2, fs2, fs3
  LUI a1, 2
  ADDIW a1, a1, -528
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 2
  ADDIW t6, t6, -2016
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 2
  ADDIW a1, a1, -2016
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs3, 0(a1)
  FADD.S fs2, fs2, fs3
  LUI a1, 2
  ADDIW a1, a1, -536
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 2
  ADDIW t6, t6, -2024
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 2
  ADDIW a1, a1, -2024
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs3, 0(a1)
  FADD.S fs2, fs2, fs3
  LUI a1, 2
  ADDIW a1, a1, -544
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 2
  ADDIW t6, t6, -2032
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 2
  ADDIW a1, a1, -2032
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs3, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, -552
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 2
  ADDIW t6, t6, -2040
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 2
  ADDIW a1, a1, -2040
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs4, 0(a1)
  FADD.S fs3, fs3, fs4
  LUI a1, 1
  ADDIW a1, a1, 1856
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 2
  ADDIW t6, t6, -2048
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 2
  ADDIW a1, a1, -2048
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs4, 0(a1)
  FADD.S fs3, fs3, fs4
  LUI a1, 1
  ADDIW a1, a1, 1848
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 1
  ADDIW t6, t6, 2040
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 2040
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs4, 0(a1)
  FADD.S fs3, fs3, fs4
  LUI a1, 1
  ADDIW a1, a1, 1840
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 1
  ADDIW t6, t6, 2032
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 2032
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs4, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 1832
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 1
  ADDIW t6, t6, 2024
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 2024
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs5, 0(a1)
  FADD.S fs4, fs4, fs5
  LUI a1, 1
  ADDIW a1, a1, 1824
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 1
  ADDIW t6, t6, 1888
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 1888
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs5, 0(a1)
  FADD.S fs4, fs4, fs5
  LUI a1, 1
  ADDIW a1, a1, 1816
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 1
  ADDIW t6, t6, 2008
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 2008
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs5, 0(a1)
  FADD.S fs4, fs4, fs5
  LUI a1, 1
  ADDIW a1, a1, 1808
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 1
  ADDIW t6, t6, 2000
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 2000
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs5, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 1800
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 1
  ADDIW t6, t6, 1992
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 1992
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs6, 0(a1)
  FADD.S fs5, fs5, fs6
  LUI a1, 1
  ADDIW a1, a1, 1792
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 1
  ADDIW t6, t6, 1984
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 1984
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs6, 0(a1)
  FADD.S fs5, fs5, fs6
  LUI a1, 1
  ADDIW a1, a1, 1784
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 1
  ADDIW t6, t6, 1976
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 1976
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs6, 0(a1)
  FADD.S fs5, fs5, fs6
  LUI a1, 1
  ADDIW a1, a1, 1776
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 1
  ADDIW t6, t6, 1968
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 1968
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs6, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 1768
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 1
  ADDIW t6, t6, 1960
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 1960
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs7, 0(a1)
  FADD.S fs6, fs6, fs7
  LUI a1, 1
  ADDIW a1, a1, 1632
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 1
  ADDIW t6, t6, 1952
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 1952
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs7, 0(a1)
  FADD.S fs6, fs6, fs7
  LUI a1, 1
  ADDIW a1, a1, 1752
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 1
  ADDIW t6, t6, 1944
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 1944
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs7, 0(a1)
  FADD.S fs6, fs6, fs7
  LUI a1, 1
  ADDIW a1, a1, 1744
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 1
  ADDIW t6, t6, 1936
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 1936
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs7, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 1736
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 1
  ADDIW t6, t6, 1928
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 1928
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs8, 0(a1)
  FADD.S fs7, fs7, fs8
  LUI a1, 1
  ADDIW a1, a1, 1728
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 1
  ADDIW t6, t6, 1920
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 1920
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs8, 0(a1)
  FADD.S fs7, fs7, fs8
  LUI a1, 1
  ADDIW a1, a1, 1720
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 1
  ADDIW t6, t6, 1912
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 1912
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs8, 0(a1)
  FADD.S fs7, fs7, fs8
  LUI a1, 1
  ADDIW a1, a1, 1712
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 1
  ADDIW t6, t6, 1904
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 1904
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs8, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 1704
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 1
  ADDIW t6, t6, 1896
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 1896
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs9, 0(a1)
  FADD.S fs8, fs8, fs9
  LUI a1, 1
  ADDIW a1, a1, 1696
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 1
  ADDIW t6, t6, 1512
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 1512
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs9, 0(a1)
  FADD.S fs8, fs8, fs9
  LUI a1, 1
  ADDIW a1, a1, 1688
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 1
  ADDIW t6, t6, 1376
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 1376
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs9, 0(a1)
  FADD.S fs8, fs8, fs9
  LUI a1, 1
  ADDIW a1, a1, 1680
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 1
  ADDIW t6, t6, 1368
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 1368
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs9, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 1672
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 1
  ADDIW t6, t6, 1360
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 1360
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs10, 0(a1)
  FADD.S fs9, fs9, fs10
  LUI a1, 1
  ADDIW a1, a1, 1664
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 892(sp)
  ADD a1, a1, s0
  LUI t6, 1
  ADDIW t6, t6, 1352
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 1352
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs10, 0(a1)
  FADD.S fs9, fs9, fs10
  LW a1, 892(sp)
  LUI t6, 2
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  ADD a1, t6, a1
  LUI t6, 1
  ADDIW t6, t6, 1344
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, 1344
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs10, 0(a1)
  FADD.S fs9, fs9, fs10
  LUI t6, 2
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  FSW fs1, 4(t6)
  LUI t6, 2
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  FSW fs2, 8(t6)
  LUI t6, 2
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  FSW fs3, 12(t6)
  LUI t6, 2
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  FSW fs4, 16(t6)
  LUI t6, 2
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  FSW fs5, 20(t6)
  LUI t6, 2
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  FSW fs6, 24(t6)
  LUI t6, 2
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  FSW fs7, 28(t6)
  LUI t6, 2
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  FSW fs8, 32(t6)
  LUI a1, 2
  ADDIW a1, a1, -1840
  ADD a1, a1, sp
  FSW fs9, 36(a1)
  LUI a1, 1
  ADDIW a1, a1, 1344
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs0, 0(a1)
  FLW fs1, 1368(sp)
  FEQ.S a1, fs0, fs1
  SB a1, 2(sp)
  LB a1, 2(sp)
  XORI a1, a1, 1
  LUI t6, 1
  ADDIW t6, t6, -1072
  ADD t6, t6, sp
  SW a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, -1072
  ADD a1, a1, sp
  LW a1, 0(a1)
  SLTU a1, zero, a1
  LUI t6, 1
  ADDIW t6, t6, -1068
  ADD t6, t6, sp
  SW a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, -1068
  ADD a1, a1, sp
  LW a1, 0(a1)
  FCVT.S.W fs0, a1
  LA a1, .CONSTANT.7.0
  LUI t6, 2
  ADDIW t6, t6, -680
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 2
  ADDIW a1, a1, -680
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs1, 0(a1)
  FEQ.S a1, fs0, fs1
  SB a1, 1(sp)
  LB a1, 1(sp)
  XORI a1, a1, 1
  LUI t6, 1
  ADDIW t6, t6, -1064
  ADD t6, t6, sp
  SW a1, 0(t6)
  LUI a1, 1
  ADDIW a1, a1, -1064
  ADD a1, a1, sp
  LW a1, 0(a1)
  FCVT.S.W fs0, a1
  LA a1, .CONSTANT.7.0
  LUI t6, 2
  ADDIW t6, t6, -688
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI a1, 2
  ADDIW a1, a1, -688
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs1, 0(a1)
  FEQ.S a1, fs0, fs1
  SB a1, 0(sp)
  LB a1, 0(sp)
  XORI a1, a1, 1
  SB a1, 3(sp)
  LB a1, 3(sp)
  BNE a1, zero, bb15
  # implict jump to bb14
bb14:
  LUI t6, 1
  ADDIW t6, t6, 1456
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1448
  ADD a0, a0, sp
  SD s9, 0(a0)
  ADD s9, s10, zero
  LUI a0, 2
  ADDIW a0, a0, -480
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1440
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -488
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1432
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -496
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1424
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -504
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1040
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -512
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1416
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -648
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1408
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -528
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1400
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -536
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1392
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -544
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 2016
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -552
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 864
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1856
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -712
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1848
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -720
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1840
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -728
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1832
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 960
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1824
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -736
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1816
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -744
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1808
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 936
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1800
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -752
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1792
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -760
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1784
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 912
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1776
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -768
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1768
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -776
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1632
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -784
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1752
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 880
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1744
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -792
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1736
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 992
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1728
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -800
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1720
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1352
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1712
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -808
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1704
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1336
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1696
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -816
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1688
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -824
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1680
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1312
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1672
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1304
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1664
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1296
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -1840
  ADD a0, a0, sp
  ADD a0, a0, zero
  LUI t6, 2
  ADDIW t6, t6, -960
  ADD t6, t6, sp
  SD a0, 0(t6)
  JAL zero, bb13
bb15:
  ADDI a0, zero, 10
  LUI a1, 2
  ADDIW a1, a1, -1840
  ADD a1, a1, sp
  ADD a1, a1, zero
  CALL putfarray
  LA a0, k
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  SW a0, 812(sp)
  LW a0, 812(sp)
  LUI t6, 2
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  ADD a0, t6, a0
  FLW fs0, 0(a0)
  FSW fs0, 1440(sp)
  LW a0, 812(sp)
  LUI t6, 2
  ADDIW t6, t6, -1440
  ADD t6, t6, sp
  ADD a0, t6, a0
  FLW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -1400
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 776
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW a1, 812(sp)
  ADD a0, a0, a1
  LW a0, 0(a0)
  LUI a1, 2
  ADDIW a1, a1, 576
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 812(sp)
  ADD a1, a1, s0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 360
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 768
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 812(sp)
  ADD a1, a1, s0
  LW a1, 0(a1)
  SW a1, 816(sp)
  LUI a1, 2
  ADDIW a1, a1, 568
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 812(sp)
  ADD a1, a1, s0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 396
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 560
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 812(sp)
  ADD a1, a1, s0
  FLW fs0, 0(a1)
  LUI a1, 1
  ADDIW a1, a1, 512
  ADD a1, a1, sp
  FSW fs0, 0(a1)
  LUI a1, 2
  ADDIW a1, a1, 752
  ADD a1, a1, sp
  LD a1, 0(a1)
  LW s0, 812(sp)
  ADD a1, a1, s0
  LW a1, 0(a1)
  LUI t6, 2
  ADDIW t6, t6, 616
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 812(sp)
  ADD s0, s0, s1
  LW s0, 0(s0)
  SW s0, 820(sp)
  LUI t6, 2
  ADDIW t6, t6, 720
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 812(sp)
  ADD s0, s0, s1
  LW s0, 0(s0)
  SW s0, 824(sp)
  LUI t6, 2
  ADDIW t6, t6, 520
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 812(sp)
  ADD s0, s0, s1
  FLW fs0, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, 508
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 512
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 812(sp)
  ADD s0, s0, s1
  FLW fs0, 0(s0)
  LUI t6, 2
  ADDIW t6, t6, 504
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 812(sp)
  ADD s0, s0, s1
  FLW fs1, 0(s0)
  LUI t6, 2
  ADDIW t6, t6, 712
  ADD t6, t6, sp
  LD s0, 0(t6)
  LW s1, 812(sp)
  ADD s0, s0, s1
  LW s0, 0(s0)
  LUI t6, 2
  ADDIW t6, t6, 360
  ADD t6, t6, sp
  LD s1, 0(t6)
  LW s2, 812(sp)
  ADD s1, s1, s2
  FLW fs2, 0(s1)
  LUI t6, 1
  ADDIW t6, t6, 504
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 480
  ADD t6, t6, sp
  LD s1, 0(t6)
  LW s2, 812(sp)
  ADD s1, s1, s2
  FLW fs2, 0(s1)
  LUI t6, 2
  ADDIW t6, t6, 472
  ADD t6, t6, sp
  LD s1, 0(t6)
  LW s2, 812(sp)
  ADD s1, s1, s2
  FLW fs3, 0(s1)
  LUI t6, 2
  ADDIW t6, t6, 448
  ADD t6, t6, sp
  LD s1, 0(t6)
  LW s2, 812(sp)
  ADD s1, s1, s2
  FLW fs4, 0(s1)
  LUI t6, 2
  ADDIW t6, t6, 440
  ADD t6, t6, sp
  LD s1, 0(t6)
  LW s2, 812(sp)
  ADD s1, s1, s2
  FLW fs5, 0(s1)
  LUI t6, 1
  ADDIW t6, t6, 500
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 672
  ADD t6, t6, sp
  LD s1, 0(t6)
  LW s2, 812(sp)
  ADD s1, s1, s2
  LW s1, 0(s1)
  LUI t6, 2
  ADDIW t6, t6, 416
  ADD t6, t6, sp
  LD s2, 0(t6)
  LW s3, 812(sp)
  ADD s2, s2, s3
  FLW fs6, 0(s2)
  FSW fs6, 1444(sp)
  LUI t6, 2
  ADDIW t6, t6, 408
  ADD t6, t6, sp
  LD s2, 0(t6)
  LW s3, 812(sp)
  ADD s2, s2, s3
  FLW fs6, 0(s2)
  FSW fs6, 1448(sp)
  LUI t6, 2
  ADDIW t6, t6, 648
  ADD t6, t6, sp
  LD s2, 0(t6)
  LW s3, 812(sp)
  ADD s2, s2, s3
  LW s2, 0(s2)
  LUI t6, 2
  ADDIW t6, t6, 640
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s4, 812(sp)
  ADD s3, s3, s4
  LW s9, 0(s3)
  LUI t6, 2
  ADDIW t6, t6, 400
  ADD t6, t6, sp
  LD s4, 0(t6)
  LW s5, 812(sp)
  ADD s4, s4, s5
  FLW fs6, 0(s4)
  FSW fs6, 1452(sp)
  LUI t6, 2
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  LD s4, 0(t6)
  LW s5, 812(sp)
  ADD s4, s4, s5
  FLW fs6, 0(s4)
  FSW fs6, 1456(sp)
  LUI t6, 2
  ADDIW t6, t6, 624
  ADD t6, t6, sp
  LD s4, 0(t6)
  LW s5, 812(sp)
  ADD s4, s4, s5
  LW s3, 0(s4)
  LUI t6, 2
  ADDIW t6, t6, -704
  ADD t6, t6, sp
  LD s5, 0(t6)
  LW s6, 812(sp)
  ADD s5, s5, s6
  LW s4, 0(s5)
  LUI t6, 2
  ADDIW t6, t6, 376
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s6, s6, s7
  FLW fs6, 0(s6)
  FSW fs6, 1460(sp)
  LUI t6, 2
  ADDIW t6, t6, 368
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s6, s6, s7
  FLW fs6, 0(s6)
  FSW fs6, 1464(sp)
  LW s6, 812(sp)
  LUI t6, 2
  ADDIW t6, t6, -1728
  ADD t6, t6, sp
  ADD s6, t6, s6
  LW s6, 0(s6)
  SW s6, 828(sp)
  LUI t6, 2
  ADDIW t6, t6, 848
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s6, s6, s7
  FLW fs6, 0(s6)
  FSW fs6, 1468(sp)
  LUI t6, 2
  ADDIW t6, t6, 840
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s6, s6, s7
  FLW fs6, 0(s6)
  FSW fs6, 1432(sp)
  LUI t6, 2
  ADDIW t6, t6, 816
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s6, s6, s7
  FLW fs6, 0(s6)
  FSW fs6, 1476(sp)
  LUI t6, 2
  ADDIW t6, t6, 760
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s6, s6, s7
  LW s6, 0(s6)
  LUI t6, 1
  ADDIW t6, t6, 520
  ADD t6, t6, sp
  SW s6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 584
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s6, s6, s7
  FLW fs6, 0(s6)
  FSW fs6, 1480(sp)
  FLW fs6, 1480(sp)
  LUI t6, 1
  ADDIW t6, t6, -1400
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FADD.S fs6, fs5, fs6
  FSW fs6, 1484(sp)
  FLW fs6, 1484(sp)
  LUI t6, 1
  ADDIW t6, t6, 360
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FADD.S fs6, fs6, fs5
  FSW fs6, 1488(sp)
  FLW fs6, 1488(sp)
  LUI t6, 1
  ADDIW t6, t6, 396
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FADD.S fs6, fs6, fs5
  FSW fs6, 1492(sp)
  LUI t6, 2
  ADDIW t6, t6, 552
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s6, s6, s7
  FLW fs6, 0(s6)
  FSW fs6, 1496(sp)
  FLW fs6, 1496(sp)
  LUI t6, 1
  ADDIW t6, t6, 512
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FADD.S fs6, fs5, fs6
  FSW fs6, 1500(sp)
  LUI t6, 2
  ADDIW t6, t6, 544
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s6, s6, s7
  FLW fs6, 0(s6)
  FSW fs6, 1504(sp)
  FLW fs6, 1504(sp)
  FLW fs7, 1500(sp)
  FADD.S fs6, fs7, fs6
  FSW fs6, 1508(sp)
  LUI t6, 2
  ADDIW t6, t6, 536
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s6, s6, s7
  FLW fs6, 0(s6)
  FSW fs6, 1872(sp)
  FLW fs6, 1872(sp)
  FLW fs7, 1508(sp)
  FADD.S fs6, fs7, fs6
  LUI t6, 1
  ADDIW t6, t6, -1788
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 528
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s6, s6, s7
  FLW fs6, 0(s6)
  LUI t6, 1
  ADDIW t6, t6, -1784
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1784
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 508
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FADD.S fs6, fs6, fs5
  LUI t6, 1
  ADDIW t6, t6, -1780
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1780
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FADD.S fs6, fs6, fs0
  LUI t6, 1
  ADDIW t6, t6, -1776
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1776
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FADD.S fs6, fs6, fs1
  LUI t6, 1
  ADDIW t6, t6, -1772
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 496
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s6, s6, s7
  FLW fs6, 0(s6)
  LUI t6, 1
  ADDIW t6, t6, -1768
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1768
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 504
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FADD.S fs6, fs6, fs5
  LUI t6, 1
  ADDIW t6, t6, -1764
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1764
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FADD.S fs6, fs6, fs2
  LUI t6, 1
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FADD.S fs6, fs6, fs3
  LUI t6, 1
  ADDIW t6, t6, -1756
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 464
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s6, s6, s7
  FLW fs6, 0(s6)
  LUI t6, 1
  ADDIW t6, t6, -1792
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 456
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s6, s6, s7
  FLW fs6, 0(s6)
  LUI t6, 1
  ADDIW t6, t6, -1748
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1748
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1792
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  FADD.S fs6, fs7, fs6
  LUI t6, 1
  ADDIW t6, t6, -1744
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1744
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FADD.S fs6, fs6, fs4
  LUI t6, 1
  ADDIW t6, t6, -1740
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1740
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 500
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FADD.S fs6, fs6, fs5
  LUI t6, 1
  ADDIW t6, t6, -1736
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 432
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s6, s6, s7
  FLW fs6, 0(s6)
  LUI t6, 1
  ADDIW t6, t6, -1732
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 424
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s6, s6, s7
  FLW fs6, 0(s6)
  LUI t6, 1
  ADDIW t6, t6, -1728
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1728
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1732
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  FADD.S fs6, fs7, fs6
  LUI t6, 1
  ADDIW t6, t6, -1724
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1724
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FLW fs7, 1444(sp)
  FADD.S fs6, fs6, fs7
  LUI t6, 1
  ADDIW t6, t6, -1720
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1720
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FLW fs7, 1448(sp)
  FADD.S fs6, fs6, fs7
  LUI t6, 1
  ADDIW t6, t6, -1716
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  FLW fs6, 1456(sp)
  FLW fs7, 1452(sp)
  FADD.S fs6, fs7, fs6
  LUI t6, 1
  ADDIW t6, t6, -1832
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 384
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s6, s6, s7
  FLW fs6, 0(s6)
  LUI t6, 1
  ADDIW t6, t6, -1868
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1868
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1832
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  FADD.S fs6, fs7, fs6
  LUI t6, 1
  ADDIW t6, t6, -1864
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1864
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FLW fs7, 1460(sp)
  FADD.S fs6, fs6, fs7
  LUI t6, 1
  ADDIW t6, t6, -1860
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 488
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s6, s6, s7
  FLW fs6, 0(s6)
  LUI t6, 1
  ADDIW t6, t6, -1856
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1856
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FLW fs7, 1464(sp)
  FADD.S fs6, fs7, fs6
  LUI t6, 1
  ADDIW t6, t6, -1852
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 856
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s6, s6, s7
  FLW fs6, 0(s6)
  LUI t6, 1
  ADDIW t6, t6, -1848
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1848
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1852
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  FADD.S fs6, fs7, fs6
  LUI t6, 1
  ADDIW t6, t6, -1844
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1844
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FLW fs7, 1468(sp)
  FADD.S fs6, fs6, fs7
  LUI t6, 1
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 832
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s6, s6, s7
  FLW fs6, 0(s6)
  LUI t6, 1
  ADDIW t6, t6, -1836
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1836
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FLW fs7, 1432(sp)
  FADD.S fs6, fs7, fs6
  LUI t6, 1
  ADDIW t6, t6, -1872
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 824
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s6, s6, s7
  FLW fs6, 0(s6)
  LUI t6, 1
  ADDIW t6, t6, -1828
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1828
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1872
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  FADD.S fs6, fs7, fs6
  LUI t6, 1
  ADDIW t6, t6, -1824
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1824
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FLW fs7, 1476(sp)
  FADD.S fs6, fs6, fs7
  LUI t6, 1
  ADDIW t6, t6, -1820
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  FLW fs6, 1492(sp)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1788
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FSW fs6, 4(t6)
  LUI t6, 1
  ADDIW t6, t6, -1772
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FSW fs6, 8(t6)
  LUI t6, 1
  ADDIW t6, t6, -1756
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FSW fs6, 12(t6)
  LUI t6, 1
  ADDIW t6, t6, -1736
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FSW fs6, 16(t6)
  LUI t6, 1
  ADDIW t6, t6, -1716
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FSW fs6, 20(t6)
  LUI t6, 1
  ADDIW t6, t6, -1860
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FSW fs6, 24(t6)
  LUI t6, 1
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FSW fs6, 28(t6)
  LUI t6, 1
  ADDIW t6, t6, -1820
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FSW fs6, 32(t6)
  LA s6, .CONSTANT.7.0
  FLW fs6, 0(s6)
  FSW fs6, 164(sp)
  FLW fs6, 164(sp)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FSW fs6, 36(t6)
  LW s6, 828(sp)
  ADDW s6, s6, a0
  LW s7, 816(sp)
  ADDW s6, s6, s7
  LUI t6, 1
  ADDIW t6, t6, 524
  ADD t6, t6, sp
  SW s6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 520
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADDW s7, s6, a1
  LW s6, 820(sp)
  ADDW s6, s7, s6
  LUI t6, 1
  ADDIW t6, t6, 528
  ADD t6, t6, sp
  SW s6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 736
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s8, s6, s7
  LW s6, 0(s8)
  LUI t6, 1
  ADDIW t6, t6, 532
  ADD t6, t6, sp
  SW s6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 728
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s10, s6, s7
  LW s10, 0(s10)
  LUI t6, 1
  ADDIW t6, t6, 532
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADDW s8, s6, s10
  LW s6, 824(sp)
  ADDW s6, s8, s6
  LUI t6, 1
  ADDIW t6, t6, 536
  ADD t6, t6, sp
  SW s6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 704
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s10, s6, s7
  LW s10, 0(s10)
  ADDW s6, s0, s10
  LUI t6, 1
  ADDIW t6, t6, 540
  ADD t6, t6, sp
  SW s6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 696
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s10, s6, s7
  LW s10, 0(s10)
  LUI t6, 1
  ADDIW t6, t6, 540
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADDW s6, s6, s10
  LUI t6, 1
  ADDIW t6, t6, 544
  ADD t6, t6, sp
  SW s6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 688
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s10, s6, s7
  LW s6, 0(s10)
  LUI t6, 1
  ADDIW t6, t6, 548
  ADD t6, t6, sp
  SW s6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 680
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s10, s6, s7
  LW s10, 0(s10)
  LUI t6, 1
  ADDIW t6, t6, 548
  ADD t6, t6, sp
  LW s6, 0(t6)
  ADDW s10, s6, s10
  ADDW s6, s10, s1
  LUI t6, 1
  ADDIW t6, t6, 552
  ADD t6, t6, sp
  SW s6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 664
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s11, s6, s7
  LW s6, 0(s11)
  LUI t6, 1
  ADDIW t6, t6, 516
  ADD t6, t6, sp
  SW s6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 656
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s6, s6, s7
  LUI t6, 2
  ADDIW t6, t6, -448
  ADD t6, t6, sp
  SD s6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -448
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s6, 0(s6)
  SW s6, 840(sp)
  LUI t6, 1
  ADDIW t6, t6, 516
  ADD t6, t6, sp
  LW s6, 0(t6)
  LW s7, 840(sp)
  ADDW s11, s6, s7
  ADDW s6, s11, s2
  LUI t6, 1
  ADDIW t6, t6, 560
  ADD t6, t6, sp
  SW s6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, 632
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s6, s6, s7
  LUI t6, 2
  ADDIW t6, t6, -456
  ADD t6, t6, sp
  SD s6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -456
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s6, 0(s6)
  SW s6, 848(sp)
  LW s6, 848(sp)
  ADDW s6, s9, s6
  SW s6, 852(sp)
  LW s6, 852(sp)
  ADDW s6, s6, s3
  LUI t6, 1
  ADDIW t6, t6, 564
  ADD t6, t6, sp
  SW s6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1880
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s6, s6, s7
  LUI t6, 2
  ADDIW t6, t6, -464
  ADD t6, t6, sp
  SD s6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -464
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s6, 0(s6)
  SW s6, 860(sp)
  LW s6, 860(sp)
  ADDW s6, s4, s6
  LUI t6, 1
  ADDIW t6, t6, 568
  ADD t6, t6, sp
  SW s6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1872
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s7, 812(sp)
  ADD s6, s6, s7
  LUI t6, 2
  ADDIW t6, t6, -472
  ADD t6, t6, sp
  SD s6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -472
  ADD t6, t6, sp
  LD s6, 0(t6)
  LW s6, 0(s6)
  LUI t6, 1
  ADDIW t6, t6, 124
  ADD t6, t6, sp
  SW s6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 568
  ADD t6, t6, sp
  LW s6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 124
  ADD t6, t6, sp
  LW s7, 0(t6)
  ADDW s6, s6, s7
  LUI t6, 1
  ADDIW t6, t6, 572
  ADD t6, t6, sp
  SW s6, 0(t6)
  LW s6, 828(sp)
  ADDW s6, s6, a0
  LUI t6, 1
  ADDIW t6, t6, 128
  ADD t6, t6, sp
  SW s6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 128
  ADD t6, t6, sp
  LW s6, 0(t6)
  LW s7, 816(sp)
  ADDW s6, s6, s7
  LUI t6, 1
  ADDIW t6, t6, 132
  ADD t6, t6, sp
  SW s6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 520
  ADD t6, t6, sp
  LW s6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 132
  ADD t6, t6, sp
  LW s7, 0(t6)
  ADDW s6, s7, s6
  LUI t6, 1
  ADDIW t6, t6, 136
  ADD t6, t6, sp
  SW s6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 524
  ADD t6, t6, sp
  LW s6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW s6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 528
  ADD t6, t6, sp
  LW s6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW s6, 4(t6)
  LUI t6, 1
  ADDIW t6, t6, 536
  ADD t6, t6, sp
  LW s6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW s6, 8(t6)
  LUI t6, 1
  ADDIW t6, t6, 544
  ADD t6, t6, sp
  LW s6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW s6, 12(t6)
  LUI t6, 1
  ADDIW t6, t6, 552
  ADD t6, t6, sp
  LW s6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW s6, 16(t6)
  LUI t6, 1
  ADDIW t6, t6, 560
  ADD t6, t6, sp
  LW s6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW s6, 20(t6)
  LUI t6, 1
  ADDIW t6, t6, 564
  ADD t6, t6, sp
  LW s6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW s6, 24(t6)
  LUI t6, 1
  ADDIW t6, t6, 572
  ADD t6, t6, sp
  LW s6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW s6, 28(t6)
  LUI t6, 1
  ADDIW t6, t6, 136
  ADD t6, t6, sp
  LW s6, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW s6, 32(t6)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW zero, 36(t6)
  LUI t6, 1
  ADDIW t6, t6, 520
  ADD t6, t6, sp
  LW s6, 0(t6)
  BNE s6, zero, bb20
  # implict jump to bb16
bb16:
  LUI t6, 1
  ADDIW t6, t6, -1400
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1400
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -1400
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -308
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 360
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 360
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 284(sp)
  LW a0, 816(sp)
  LUI t6, 1
  ADDIW t6, t6, -304
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 396
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 396
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 288(sp)
  LUI t6, 1
  ADDIW t6, t6, 512
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 512
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 292(sp)
  LUI a0, 2
  ADDIW a0, a0, 552
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -840
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 760
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -848
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -292
  ADD a0, a0, sp
  SW a1, 0(a0)
  LW a0, 820(sp)
  LUI t6, 1
  ADDIW t6, t6, -288
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 544
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -856
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 736
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -864
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 728
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -872
  ADD t6, t6, sp
  SD a0, 0(t6)
  LW a0, 824(sp)
  LUI t6, 1
  ADDIW t6, t6, -428
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 536
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -880
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 528
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -888
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 508
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 508
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 296(sp)
  LUI a0, 2
  ADDIW a0, a0, 496
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -896
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -412
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 504
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 504
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 300(sp)
  LUI a0, 2
  ADDIW a0, a0, 704
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1240
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 464
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -904
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 696
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -912
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 688
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -920
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 456
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1208
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 500
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 500
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 304(sp)
  LUI a0, 2
  ADDIW a0, a0, 680
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -928
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 432
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -936
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 424
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -944
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs5, 1444(sp)
  FLW fs6, 1444(sp)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 1876(sp)
  FLW fs5, 1448(sp)
  FLW fs6, 1448(sp)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 308(sp)
  LUI a0, 2
  ADDIW a0, a0, 664
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -952
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 656
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -832
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -376
  ADD t6, t6, sp
  SW s2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -372
  ADD t6, t6, sp
  SW s9, 0(t6)
  FLW fs5, 1452(sp)
  FLW fs6, 1452(sp)
  FSGNJ.S fs5, fs5, fs6
  FLW fs6, 1456(sp)
  FLW fs7, 1456(sp)
  FSGNJ.S fs6, fs6, fs7
  LUI a0, 2
  ADDIW a0, a0, 632
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1160
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -368
  ADD a0, a0, sp
  SW s3, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 384
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1152
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1880
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -656
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1872
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1136
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs7, 1460(sp)
  FLW fs8, 1460(sp)
  FSGNJ.S fs7, fs7, fs8
  FLW fs8, 1464(sp)
  FLW fs9, 1464(sp)
  FSGNJ.S fs8, fs8, fs9
  LUI a0, 2
  ADDIW a0, a0, 488
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -664
  ADD t6, t6, sp
  SD a0, 0(t6)
  LW a0, 828(sp)
  LUI t6, 1
  ADDIW t6, t6, 880
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 776
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -672
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 856
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 608
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs9, 1468(sp)
  FLW fs10, 1468(sp)
  FSGNJ.S fs9, fs9, fs10
  FSW fs9, 1884(sp)
  LW a0, 816(sp)
  LUI t6, 1
  ADDIW t6, t6, 896
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs9, 1432(sp)
  FLW fs10, 1432(sp)
  FSGNJ.S fs9, fs9, fs10
  FSW fs9, 196(sp)
  LUI a0, 2
  ADDIW a0, a0, 832
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 600
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 824
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 592
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs9, 1476(sp)
  FLW fs10, 1476(sp)
  FSGNJ.S fs9, fs9, fs10
  FSW fs9, 160(sp)
  LUI t6, 1
  ADDIW t6, t6, 520
  ADD t6, t6, sp
  LW s3, 0(t6)
  # implict jump to bb17
bb17:
  LUI t6, 1
  ADDIW t6, t6, -496
  ADD t6, t6, sp
  SW s3, 0(t6)
  FLW fs9, 160(sp)
  FLW fs10, 160(sp)
  FSGNJ.S fs9, fs9, fs10
  FSW fs9, 436(sp)
  LUI a0, 2
  ADDIW a0, a0, 592
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1464
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 600
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1472
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs9, 196(sp)
  FLW fs10, 196(sp)
  FSGNJ.S fs9, fs9, fs10
  FSW fs9, 392(sp)
  LUI a0, 1
  ADDIW a0, a0, 896
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -508
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs9, 1884(sp)
  FLW fs10, 1884(sp)
  FSGNJ.S fs9, fs9, fs10
  FSW fs9, 428(sp)
  LUI a0, 2
  ADDIW a0, a0, 608
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1480
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -672
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1488
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 880
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1320
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -664
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1496
  ADD t6, t6, sp
  SD a0, 0(t6)
  FSW fs8, 424(sp)
  FSW fs7, 420(sp)
  LUI a0, 2
  ADDIW a0, a0, 1136
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1504
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -656
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1384
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1336
  ADD a0, a0, sp
  SW s4, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 1152
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1520
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -368
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1344
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1160
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1528
  ADD t6, t6, sp
  SD a0, 0(t6)
  FSW fs6, 416(sp)
  FSW fs5, 412(sp)
  LUI a0, 1
  ADDIW a0, a0, -372
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1352
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -376
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -1396
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -832
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1536
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -952
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1544
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs5, 308(sp)
  FLW fs6, 308(sp)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 408(sp)
  FLW fs5, 1876(sp)
  FLW fs6, 1876(sp)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 404(sp)
  LUI a0, 2
  ADDIW a0, a0, -944
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1552
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -936
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1560
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1376
  ADD a0, a0, sp
  SW s1, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -928
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1568
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs5, 304(sp)
  FLW fs6, 304(sp)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, 152
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 156
  ADD a0, a0, sp
  FSW fs4, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 1208
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1576
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -920
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1584
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -912
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1592
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -904
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1600
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, 1240
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 1608
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 120
  ADD t6, t6, sp
  FSW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 164
  ADD t6, t6, sp
  FSW fs2, 0(t6)
  FLW fs2, 300(sp)
  FLW fs3, 300(sp)
  FSGNJ.S fs2, fs2, fs3
  LUI a0, 1
  ADDIW a0, a0, 168
  ADD a0, a0, sp
  FSW fs2, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -412
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 244
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -896
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -296
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 172
  ADD t6, t6, sp
  FSW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 176
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 296(sp)
  FLW fs1, 296(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, 180
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -888
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -288
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -880
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -280
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -428
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 228
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -872
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -272
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -864
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -392
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -856
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -256
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -288
  ADD t6, t6, sp
  LW s1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -292
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -848
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI a1, 2
  ADDIW a1, a1, -840
  ADD a1, a1, sp
  LD a1, 0(a1)
  FLW fs0, 292(sp)
  FLW fs1, 292(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 184
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 288(sp)
  FLW fs1, 288(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI a0, 1
  ADDIW a0, a0, 188
  ADD a0, a0, sp
  FSW fs0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, -304
  ADD a0, a0, sp
  LW a0, 0(a0)
  FLW fs0, 284(sp)
  FLW fs1, 284(sp)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 192
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -308
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1244
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1400
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1400
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1400
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -496
  ADD t6, t6, sp
  LW s3, 0(t6)
  FCVT.S.W fs0, s3
  FSW fs0, 440(sp)
  FLW fs0, 436(sp)
  FCVT.W.S s3, fs0, rtz
  LUI t6, 1
  ADDIW t6, t6, -492
  ADD t6, t6, sp
  SW s3, 0(t6)
  # implict jump to bb18
bb18:
  LW s3, 812(sp)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  ADD s3, t6, s3
  LUI t6, 1
  ADDIW t6, t6, 1336
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1336
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs0, 0(s3)
  FSW fs0, 2028(sp)
  FLW fs0, 2028(sp)
  LUI t6, 1
  ADDIW t6, t6, -1400
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1944
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1944
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 192
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1940
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1940
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 188
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1936
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LW s3, 812(sp)
  ADD s3, a1, s3
  LUI t6, 1
  ADDIW t6, t6, 1328
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1328
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs0, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -1932
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1932
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 184
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1928
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -256
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s4, 812(sp)
  ADD s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, 1320
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1320
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs0, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -1924
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1924
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1928
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -280
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s4, 812(sp)
  ADD s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, 1312
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1312
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs0, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -1916
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1916
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1912
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -288
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s4, 812(sp)
  ADD s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, 1304
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1304
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs0, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -1948
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1948
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 180
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1904
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1904
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 176
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1900
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1900
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 172
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1896
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -296
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s4, 812(sp)
  ADD s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, 1296
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1296
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs0, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -1892
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1892
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 168
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1888
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1888
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 164
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1884
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1884
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 120
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1880
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1600
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s4, 812(sp)
  ADD s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, 1288
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1288
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs0, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -1876
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1576
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s4, 812(sp)
  ADD s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, 1280
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1280
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs0, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -1988
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1988
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1876
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -2024
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2024
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 156
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -2020
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2020
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 152
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -2016
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1560
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s4, 812(sp)
  ADD s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, 1272
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1272
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs0, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -2012
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1552
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s4, 812(sp)
  ADD s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, 1264
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1264
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs0, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -2008
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2008
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2012
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -2004
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 404(sp)
  LUI t6, 1
  ADDIW t6, t6, -2004
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -2000
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 408(sp)
  LUI t6, 1
  ADDIW t6, t6, -2000
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1996
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 416(sp)
  FLW fs1, 412(sp)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1992
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1520
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s4, 812(sp)
  ADD s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, 1128
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1128
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs0, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -2028
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -2028
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1992
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1984
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 420(sp)
  LUI t6, 1
  ADDIW t6, t6, -1984
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1980
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1496
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s4, 812(sp)
  ADD s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, 1248
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1248
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs0, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -1976
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 424(sp)
  LUI t6, 1
  ADDIW t6, t6, -1976
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1972
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1480
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s4, 812(sp)
  ADD s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, 1240
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1240
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs0, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -1968
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1968
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1972
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1964
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  FLW fs0, 428(sp)
  LUI t6, 1
  ADDIW t6, t6, -1964
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  LUI t6, 1
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1472
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s4, 812(sp)
  ADD s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, 1232
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1232
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs0, 0(s3)
  FSW fs0, 1232(sp)
  FLW fs0, 392(sp)
  FLW fs1, 1232(sp)
  FADD.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1952
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1464
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s4, 812(sp)
  ADD s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, 1224
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1224
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs0, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -1592
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1592
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1952
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FADD.S fs0, fs1, fs0
  FSW fs0, 396(sp)
  FLW fs0, 440(sp)
  FLW fs1, 396(sp)
  FADD.S fs0, fs1, fs0
  FSW fs0, 400(sp)
  LUI t6, 1
  ADDIW t6, t6, -1936
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1912
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FSW fs0, 4(t6)
  LUI t6, 1
  ADDIW t6, t6, -1896
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FSW fs0, 8(t6)
  LUI t6, 1
  ADDIW t6, t6, -1880
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FSW fs0, 12(t6)
  LUI t6, 1
  ADDIW t6, t6, -2016
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FSW fs0, 16(t6)
  LUI t6, 1
  ADDIW t6, t6, -1996
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FSW fs0, 20(t6)
  LUI t6, 1
  ADDIW t6, t6, -1980
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FSW fs0, 24(t6)
  LUI t6, 1
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FSW fs0, 28(t6)
  FLW fs0, 400(sp)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FSW fs0, 32(t6)
  LA s3, .CONSTANT.7.0
  LUI t6, 2
  ADDIW t6, t6, -696
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -696
  ADD t6, t6, sp
  LD s3, 0(t6)
  FLW fs0, 0(s3)
  FSW fs0, 168(sp)
  FLW fs0, 168(sp)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FSW fs0, 36(t6)
  LW s3, 812(sp)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  ADD s3, t6, s3
  LUI t6, 1
  ADDIW t6, t6, 1216
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1216
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -1428
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1244
  ADD t6, t6, sp
  LW s4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1428
  ADD t6, t6, sp
  LW s3, 0(t6)
  ADDW s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, -1424
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1424
  ADD t6, t6, sp
  LW s3, 0(t6)
  ADDW s3, s3, a0
  LUI t6, 1
  ADDIW t6, t6, -1420
  ADD t6, t6, sp
  SW s3, 0(t6)
  LW s3, 812(sp)
  ADD s3, s2, s3
  LUI t6, 1
  ADDIW t6, t6, 1208
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1208
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -1412
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1412
  ADD t6, t6, sp
  LW s3, 0(t6)
  ADDW s3, s3, s0
  LUI t6, 1
  ADDIW t6, t6, -1408
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1408
  ADD t6, t6, sp
  LW s3, 0(t6)
  ADDW s3, s3, s1
  LUI t6, 1
  ADDIW t6, t6, -1404
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -392
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s4, 812(sp)
  ADD s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, 1200
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1200
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -1516
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -272
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s4, 812(sp)
  ADD s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, 1192
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1192
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -1548
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1548
  ADD t6, t6, sp
  LW s4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1516
  ADD t6, t6, sp
  LW s3, 0(t6)
  ADDW s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, -1544
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1544
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 228
  ADD t6, t6, sp
  LW s4, 0(t6)
  ADDW s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, -1540
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1608
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s4, 812(sp)
  ADD s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, 1184
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1184
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -1532
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1532
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 244
  ADD t6, t6, sp
  LW s4, 0(t6)
  ADDW s3, s4, s3
  LUI t6, 1
  ADDIW t6, t6, -1528
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1592
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s4, 812(sp)
  ADD s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, 1176
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1176
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -1520
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1520
  ADD t6, t6, sp
  LW s4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1528
  ADD t6, t6, sp
  LW s3, 0(t6)
  ADDW s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, -1556
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1584
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s4, 812(sp)
  ADD s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, 1168
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1168
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -1508
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1568
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s4, 812(sp)
  ADD s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, 1160
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1160
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -1500
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1500
  ADD t6, t6, sp
  LW s4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1508
  ADD t6, t6, sp
  LW s3, 0(t6)
  ADDW s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, -1496
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1376
  ADD t6, t6, sp
  LW s4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1496
  ADD t6, t6, sp
  LW s3, 0(t6)
  ADDW s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, -1492
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1544
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s4, 812(sp)
  ADD s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, 1152
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1152
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -1484
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1536
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s4, 812(sp)
  ADD s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, 1144
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1144
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -1436
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1436
  ADD t6, t6, sp
  LW s4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1484
  ADD t6, t6, sp
  LW s3, 0(t6)
  ADDW s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, -1312
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1396
  ADD t6, t6, sp
  LW s4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1312
  ADD t6, t6, sp
  LW s3, 0(t6)
  ADDW s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, -1308
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1528
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s4, 812(sp)
  ADD s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, 1136
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1136
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -1300
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1352
  ADD t6, t6, sp
  LW s4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1300
  ADD t6, t6, sp
  LW s3, 0(t6)
  ADDW s3, s4, s3
  LUI t6, 1
  ADDIW t6, t6, -1296
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1344
  ADD t6, t6, sp
  LW s4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1296
  ADD t6, t6, sp
  LW s3, 0(t6)
  ADDW s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, -1292
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1384
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s4, 812(sp)
  ADD s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, 1256
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1256
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -1284
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1336
  ADD t6, t6, sp
  LW s4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1284
  ADD t6, t6, sp
  LW s3, 0(t6)
  ADDW s3, s4, s3
  LUI t6, 1
  ADDIW t6, t6, -1280
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1504
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s4, 812(sp)
  ADD s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, 1624
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1624
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -1272
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1272
  ADD t6, t6, sp
  LW s4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1280
  ADD t6, t6, sp
  LW s3, 0(t6)
  ADDW s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, -1268
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1488
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s4, 812(sp)
  ADD s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, 1616
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1616
  ADD t6, t6, sp
  LD s3, 0(t6)
  LW s3, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -1260
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1320
  ADD t6, t6, sp
  LW s4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1260
  ADD t6, t6, sp
  LW s3, 0(t6)
  ADDW s3, s4, s3
  LUI t6, 1
  ADDIW t6, t6, -1256
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -508
  ADD t6, t6, sp
  LW s4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1256
  ADD t6, t6, sp
  LW s3, 0(t6)
  ADDW s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, -1252
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -492
  ADD t6, t6, sp
  LW s4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1252
  ADD t6, t6, sp
  LW s3, 0(t6)
  ADDW s3, s3, s4
  LUI t6, 1
  ADDIW t6, t6, -1248
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1420
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1404
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW s3, 4(t6)
  LUI t6, 1
  ADDIW t6, t6, -1540
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW s3, 8(t6)
  LUI t6, 1
  ADDIW t6, t6, -1556
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW s3, 12(t6)
  LUI t6, 1
  ADDIW t6, t6, -1492
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW s3, 16(t6)
  LUI t6, 1
  ADDIW t6, t6, -1308
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW s3, 20(t6)
  LUI t6, 1
  ADDIW t6, t6, -1292
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW s3, 24(t6)
  LUI t6, 1
  ADDIW t6, t6, -1268
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW s3, 28(t6)
  LUI t6, 1
  ADDIW t6, t6, -1248
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW s3, 32(t6)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW zero, 36(t6)
  LUI t6, 1
  ADDIW t6, t6, -492
  ADD t6, t6, sp
  LW s3, 0(t6)
  BNE s3, zero, bb20
  # implict jump to bb19
bb19:
  LUI t6, 1
  ADDIW t6, t6, -1400
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1400
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1400
  ADD t6, t6, sp
  FSW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1244
  ADD t6, t6, sp
  LW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -308
  ADD t6, t6, sp
  SW s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 192
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 192
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 284(sp)
  LUI t6, 1
  ADDIW t6, t6, -304
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 188
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 188
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 288(sp)
  LUI t6, 1
  ADDIW t6, t6, 184
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 184
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 292(sp)
  LUI t6, 2
  ADDIW t6, t6, -840
  ADD t6, t6, sp
  SD a1, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -848
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -292
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -288
  ADD a0, a0, sp
  SW s1, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, -256
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -856
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -392
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -864
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -272
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -872
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 228
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -428
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -280
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -880
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 2
  ADDIW a0, a0, -288
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -888
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 180
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 180
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 296(sp)
  LUI t6, 1
  ADDIW t6, t6, 176
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 176
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, 172
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 172
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSGNJ.S fs1, fs1, fs2
  LUI a0, 2
  ADDIW a0, a0, -296
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -896
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 244
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -412
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 168
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 168
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSGNJ.S fs2, fs2, fs3
  FSW fs2, 300(sp)
  LUI t6, 1
  ADDIW t6, t6, 164
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 164
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  FSGNJ.S fs2, fs2, fs3
  LUI t6, 1
  ADDIW t6, t6, 120
  ADD t6, t6, sp
  FLW fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 120
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  FSGNJ.S fs3, fs3, fs4
  LUI a0, 1
  ADDIW a0, a0, 1608
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1240
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1600
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -904
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1592
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -912
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1584
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -920
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1576
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1208
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 156
  ADD t6, t6, sp
  FLW fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 156
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs4, fs4, fs5
  LUI t6, 1
  ADDIW t6, t6, 152
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 152
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 304(sp)
  LUI a0, 1
  ADDIW a0, a0, 1568
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -928
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1376
  ADD t6, t6, sp
  LW s1, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1560
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -936
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1552
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -944
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs5, 404(sp)
  FLW fs6, 404(sp)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 1876(sp)
  FLW fs5, 408(sp)
  FLW fs6, 408(sp)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 308(sp)
  LUI a0, 1
  ADDIW a0, a0, 1544
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -952
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1536
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -832
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1396
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -376
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1352
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -372
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs5, 412(sp)
  FLW fs6, 412(sp)
  FSGNJ.S fs5, fs5, fs6
  FLW fs6, 416(sp)
  FLW fs7, 416(sp)
  FSGNJ.S fs6, fs6, fs7
  LUI a0, 1
  ADDIW a0, a0, 1528
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1160
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1344
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -368
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1520
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1152
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1336
  ADD t6, t6, sp
  LW s4, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1384
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -656
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1504
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 1136
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs7, 420(sp)
  FLW fs8, 420(sp)
  FSGNJ.S fs7, fs7, fs8
  FLW fs8, 424(sp)
  FLW fs9, 424(sp)
  FSGNJ.S fs8, fs8, fs9
  LUI a0, 1
  ADDIW a0, a0, 1496
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -664
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1320
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 880
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1488
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, -672
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1480
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 608
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs9, 428(sp)
  FLW fs10, 428(sp)
  FSGNJ.S fs9, fs9, fs10
  FSW fs9, 1884(sp)
  LUI a0, 1
  ADDIW a0, a0, -508
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, 896
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs9, 392(sp)
  FLW fs10, 392(sp)
  FSGNJ.S fs9, fs9, fs10
  FSW fs9, 196(sp)
  LUI a0, 1
  ADDIW a0, a0, 1472
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 600
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 1464
  ADD a0, a0, sp
  LD a0, 0(a0)
  LUI t6, 2
  ADDIW t6, t6, 592
  ADD t6, t6, sp
  SD a0, 0(t6)
  FLW fs9, 440(sp)
  FLW fs10, 440(sp)
  FSGNJ.S fs9, fs9, fs10
  FSW fs9, 160(sp)
  LUI t6, 1
  ADDIW t6, t6, -492
  ADD t6, t6, sp
  LW s3, 0(t6)
  JAL zero, bb17
bb20:
  ADDI a0, zero, 10
  LUI a1, 2
  ADDIW a1, a1, -1960
  ADD a1, a1, sp
  ADD a1, a1, zero
  CALL putfarray
  ADDI a0, zero, 10
  LUI a1, 2
  ADDIW a1, a1, -1920
  ADD a1, a1, sp
  ADD a1, a1, zero
  CALL putarray
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  LW s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FLW fa0, 0(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  LW s0, 4(t6)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FLW fa0, 4(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW s0, 4(t6)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  LW s0, 8(t6)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FLW fa0, 8(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW s0, 8(t6)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  LW s0, 12(t6)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FLW fa0, 12(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW s0, 12(t6)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  LW s0, 16(t6)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FLW fa0, 16(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW s0, 16(t6)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  LW s0, 20(t6)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FLW fa0, 20(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW s0, 20(t6)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  LW s0, 24(t6)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FLW fa0, 24(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW s0, 24(t6)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  LW s0, 28(t6)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FLW fa0, 28(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW s0, 28(t6)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  LW s0, 32(t6)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FLW fa0, 32(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW s0, 32(t6)
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  LW s0, 36(t6)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FLW fa0, 36(t6)
  FCVT.S.W fs0, s0
  FSUB.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW s0, 36(t6)
  LA s0, k
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LUI t6, 2
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  ADD s0, t6, s0
  LW s0, 0(s0)
  LUI t6, 2
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  FLW fa0, 32(t6)
  FCVT.S.W fs0, s0
  FMUL.S fa0, fs0, fa0
  FCVT.W.S s0, fa0, rtz
  LUI t6, 1
  ADDIW t6, t6, -1704
  ADD t6, t6, sp
  FLW fa0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1704
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  FSGNJ.S fa0, fa0, fs0
  CALL putfloat
  ADDI a0, zero, 10
  CALL putch
  FLW fa0, 1324(sp)
  FLW fs0, 1324(sp)
  FSGNJ.S fa0, fa0, fs0
  CALL putfloat
  ADDI a0, zero, 10
  CALL putch
  FLW fa0, 1440(sp)
  FLW fs0, 1440(sp)
  FSGNJ.S fa0, fa0, fs0
  CALL putfloat
  ADDI a0, zero, 10
  CALL putch
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LUI ra, 1
  ADDIW ra, ra, 936
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 1
  ADDIW t6, t6, 944
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 952
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 960
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 968
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 976
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 984
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 992
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1000
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1008
  ADD t6, t6, sp
  LD s8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1016
  ADD t6, t6, sp
  LD s9, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1024
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1032
  ADD t6, t6, sp
  LD s11, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1040
  ADD t6, t6, sp
  FLD fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1048
  ADD t6, t6, sp
  FLD fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1056
  ADD t6, t6, sp
  FLD fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1064
  ADD t6, t6, sp
  FLD fs3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1072
  ADD t6, t6, sp
  FLD fs4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1080
  ADD t6, t6, sp
  FLD fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1088
  ADD t6, t6, sp
  FLD fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1096
  ADD t6, t6, sp
  FLD fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1104
  ADD t6, t6, sp
  FLD fs8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1112
  ADD t6, t6, sp
  FLD fs9, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 1120
  ADD t6, t6, sp
  FLD fs10, 0(t6)
  LUI t0, 2
  ADDIW t0, t0, 1376
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb21:
  ADD a0, s9, zero
  LUI t6, 1
  ADDIW t6, t6, -488
  ADD t6, t6, sp
  SW a0, 0(t6)
  ADD a0, a1, zero
  LUI t6, 1
  ADDIW t6, t6, -484
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 160
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -480
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -68
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -632
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -68
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -632
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs7, fs5, fs7
  FSW fs7, 444(sp)
  LUI a0, 1
  ADDIW a0, a0, 284
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -516
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 288
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -472
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 292
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -468
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1700
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -600
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1700
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -600
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs7, fs5, fs7
  FSW fs7, 448(sp)
  LUI t6, 1
  ADDIW t6, t6, -1696
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -752
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1696
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -752
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs7, fs5, fs7
  FSW fs7, 452(sp)
  LUI t6, 1
  ADDIW t6, t6, -1692
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -744
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1692
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -744
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs7, fs5, fs7
  FSW fs7, 456(sp)
  LUI a0, 1
  ADDIW a0, a0, 296
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -464
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1688
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -736
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1688
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -736
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs7, fs5, fs7
  FSW fs7, 460(sp)
  LUI t6, 1
  ADDIW t6, t6, -1684
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -728
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1684
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -728
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs7, fs5, fs7
  FSW fs7, 464(sp)
  LUI a0, 1
  ADDIW a0, a0, 300
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -460
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1680
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -720
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1680
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -720
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs7, fs5, fs7
  FSW fs7, 468(sp)
  LUI a0, 1
  ADDIW a0, a0, 304
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -456
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1676
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -712
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1676
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -712
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSGNJ.S fs7, fs5, fs7
  FSW fs7, 352(sp)
  LUI t6, 1
  ADDIW t6, t6, -856
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -856
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  FSGNJ.S fs5, fs5, fs7
  LUI t6, 1
  ADDIW t6, t6, -856
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -856
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 316(sp)
  LUI t6, 1
  ADDIW t6, t6, -1712
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1712
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 320(sp)
  LUI t6, 1
  ADDIW t6, t6, -1668
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1668
  ADD t6, t6, sp
  FLW fs8, 0(t6)
  FSGNJ.S fs7, fs7, fs8
  FSW fs7, 324(sp)
  LUI t6, 1
  ADDIW t6, t6, -852
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -852
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  FSGNJ.S fs5, fs5, fs7
  LUI t6, 1
  ADDIW t6, t6, -852
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -852
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 328(sp)
  LUI t6, 1
  ADDIW t6, t6, -848
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -848
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  FSGNJ.S fs5, fs5, fs7
  LUI t6, 1
  ADDIW t6, t6, -848
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -848
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 332(sp)
  LUI a0, 1
  ADDIW a0, a0, 308
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -452
  ADD t6, t6, sp
  SW a0, 0(t6)
  FSW fs1, 336(sp)
  LUI a0, 1
  ADDIW a0, a0, 312
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -244
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, 316
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -280
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1664
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1664
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  FSGNJ.S fs1, fs1, fs7
  FSW fs1, 340(sp)
  FSW fs2, 344(sp)
  FSW fs6, 348(sp)
  FSW fs3, 312(sp)
  FSW fs4, 356(sp)
  LUI a0, 1
  ADDIW a0, a0, -1060
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -236
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1660
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1660
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  FSGNJ.S fs1, fs1, fs2
  FSW fs1, 360(sp)
  LUI a0, 1
  ADDIW a0, a0, -1056
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -232
  ADD t6, t6, sp
  SW a0, 0(t6)
  FSW fs0, 364(sp)
  LUI t6, 1
  ADDIW t6, t6, -1656
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1656
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 368(sp)
  LUI t6, 1
  ADDIW t6, t6, -1652
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1652
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 372(sp)
  LUI t6, 1
  ADDIW t6, t6, -116
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -116
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 376(sp)
  LUI a0, 1
  ADDIW a0, a0, -1052
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -228
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1048
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -224
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -80
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -80
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 380(sp)
  LUI t6, 1
  ADDIW t6, t6, -1648
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1648
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 384(sp)
  LUI t6, 1
  ADDIW t6, t6, -1644
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1644
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 388(sp)
  LUI a0, 1
  ADDIW a0, a0, -1044
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -220
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1640
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1640
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 432(sp)
  LUI a0, 1
  ADDIW a0, a0, -1040
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -216
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1076
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -212
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1636
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1636
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1176(sp)
  LUI t6, 1
  ADDIW t6, t6, -1908
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1908
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1172(sp)
  FLW fs0, 1992(sp)
  FLW fs1, 1992(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1168(sp)
  FLW fs0, 1996(sp)
  FLW fs1, 1996(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1164(sp)
  LUI a0, 1
  ADDIW a0, a0, -1032
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -208
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1028
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -204
  ADD t6, t6, sp
  SW a0, 0(t6)
  LUI a0, 1
  ADDIW a0, a0, -1024
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t6, 1
  ADDIW t6, t6, -160
  ADD t6, t6, sp
  SW a0, 0(t6)
  FLW fs0, 2000(sp)
  FLW fs1, 2000(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1160(sp)
  FLW fs0, 2004(sp)
  FLW fs1, 2004(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1156(sp)
  FLW fs0, 2008(sp)
  FLW fs1, 2008(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1112(sp)
  FLW fs0, 2012(sp)
  FLW fs1, 2012(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1148(sp)
  FLW fs0, 2016(sp)
  FLW fs1, 2016(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1144(sp)
  FLW fs0, 2020(sp)
  FLW fs1, 2020(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1140(sp)
  LUI a0, 1
  ADDIW a0, a0, -1020
  ADD a0, a0, sp
  LW a0, 0(a0)
  FLW fs0, 2024(sp)
  FLW fs1, 2024(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1136(sp)
  LUI a1, 1
  ADDIW a1, a1, -1016
  ADD a1, a1, sp
  LW a1, 0(a1)
  FLW fs0, 1988(sp)
  FLW fs1, 1988(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1132(sp)
  JAL zero, bb11
bb22:
  FSW fs9, 508(sp)
  FLW fs5, 1896(sp)
  FLW fs6, 1896(sp)
  LUI t6, 1
  ADDIW t6, t6, -1288
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1288
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 472(sp)
  FLW fs5, 1900(sp)
  FLW fs6, 1900(sp)
  LUI t6, 1
  ADDIW t6, t6, -1264
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1264
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 516(sp)
  FLW fs5, 1904(sp)
  FLW fs6, 1904(sp)
  LUI t6, 1
  ADDIW t6, t6, -1356
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1356
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 520(sp)
  FLW fs5, 1792(sp)
  FLW fs6, 1792(sp)
  LUI t6, 1
  ADDIW t6, t6, -1388
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1388
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 524(sp)
  FLW fs5, 1756(sp)
  FLW fs6, 1756(sp)
  LUI t6, 1
  ADDIW t6, t6, -1380
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1380
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 528(sp)
  FLW fs5, 1760(sp)
  FLW fs6, 1760(sp)
  LUI t6, 1
  ADDIW t6, t6, -1368
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1368
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 532(sp)
  FLW fs5, 1764(sp)
  FLW fs6, 1764(sp)
  LUI t6, 1
  ADDIW t6, t6, -1360
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1360
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 536(sp)
  FLW fs5, 1768(sp)
  FLW fs6, 1768(sp)
  LUI t6, 1
  ADDIW t6, t6, -1340
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1340
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 540(sp)
  FLW fs5, 1772(sp)
  FLW fs6, 1772(sp)
  LUI t6, 1
  ADDIW t6, t6, -1328
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1328
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 544(sp)
  LUI t6, 1
  ADDIW t6, t6, -652
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -652
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -652
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -652
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 244(sp)
  FLW fs5, 1776(sp)
  FLW fs6, 1776(sp)
  LUI t6, 1
  ADDIW t6, t6, -956
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -956
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 592(sp)
  FLW fs5, 1780(sp)
  FLW fs6, 1780(sp)
  LUI t6, 1
  ADDIW t6, t6, -504
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -504
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 84(sp)
  FLW fs5, 1784(sp)
  FLW fs6, 1784(sp)
  LUI t6, 1
  ADDIW t6, t6, -572
  ADD t6, t6, sp
  FSW fs6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -572
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  FSW fs5, 88(sp)
  LUI t6, 1
  ADDIW t6, t6, -688
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -688
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -688
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -688
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 92(sp)
  FLW fs5, 1788(sp)
  FLW fs9, 1788(sp)
  FSGNJ.S fs5, fs5, fs9
  FSW fs5, 96(sp)
  FLW fs5, 1752(sp)
  FLW fs9, 1752(sp)
  FSGNJ.S fs5, fs5, fs9
  FSW fs5, 100(sp)
  FLW fs5, 1796(sp)
  FLW fs9, 1796(sp)
  FSGNJ.S fs5, fs5, fs9
  FSW fs5, 104(sp)
  FLW fs5, 1800(sp)
  FLW fs9, 1800(sp)
  FSGNJ.S fs5, fs5, fs9
  FSW fs5, 108(sp)
  FLW fs5, 1804(sp)
  FLW fs9, 1804(sp)
  FSGNJ.S fs5, fs5, fs9
  FSW fs5, 112(sp)
  FLW fs5, 1808(sp)
  FLW fs9, 1808(sp)
  FSGNJ.S fs5, fs5, fs9
  FSW fs5, 116(sp)
  FLW fs5, 1812(sp)
  FLW fs9, 1812(sp)
  FSGNJ.S fs5, fs5, fs9
  FSW fs5, 80(sp)
  FLW fs5, 1816(sp)
  FLW fs9, 1816(sp)
  FSGNJ.S fs5, fs5, fs9
  FSW fs5, 124(sp)
  FLW fs5, 1820(sp)
  FLW fs9, 1820(sp)
  FSGNJ.S fs5, fs5, fs9
  FSW fs5, 128(sp)
  LUI t6, 1
  ADDIW t6, t6, -684
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -684
  ADD t6, t6, sp
  FLW fs6, 0(t6)
  FSGNJ.S fs5, fs5, fs6
  LUI t6, 1
  ADDIW t6, t6, -684
  ADD t6, t6, sp
  FSW fs5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -684
  ADD t6, t6, sp
  FLW fs5, 0(t6)
  FSW fs5, 132(sp)
  FLW fs5, 1824(sp)
  FLW fs9, 1824(sp)
  FSGNJ.S fs5, fs5, fs9
  FSW fs5, 136(sp)
  FSW fs1, 140(sp)
  FSW fs0, 144(sp)
  FSW fs2, 148(sp)
  FLW fs0, 1828(sp)
  FLW fs1, 1828(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 48(sp)
  FLW fs0, 1552(sp)
  FLW fs1, 1552(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1732(sp)
  FLW fs0, 1356(sp)
  FLW fs1, 1356(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 1736(sp)
  LUI t6, 1
  ADDIW t6, t6, -1512
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1512
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs5, fs0, fs1
  LUI t6, 1
  ADDIW t6, t6, -1524
  ADD t6, t6, sp
  FLW fs0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1524
  ADD t6, t6, sp
  FLW fs1, 0(t6)
  FSGNJ.S fs6, fs0, fs1
  FLW fs0, 1360(sp)
  FLW fs1, 1360(sp)
  FSGNJ.S fs0, fs0, fs1
  FLW fs1, 1364(sp)
  FLW fs2, 1364(sp)
  FSGNJ.S fs1, fs1, fs2
  LUI t6, 1
  ADDIW t6, t6, -1168
  ADD t6, t6, sp
  FLW fs2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1168
  ADD t6, t6, sp
  FLW fs7, 0(t6)
  FSGNJ.S fs2, fs2, fs7
  JAL zero, bb5
