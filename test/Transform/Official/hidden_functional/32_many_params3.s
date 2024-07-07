.global main
.global func
.section .bss
.section .data
.section .text
main:
  LUI t0, 1048574
  ADDI t0, t0, 704
  ADD sp, sp, t0
  LUI t5, 2
  ADDI t5, t5, -816
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t6, 2
  ADDI t6, t6, -808
  ADD t6, t6, sp
  SD s11, 0(t6)
  LUI t5, 2
  ADDI t5, t5, -800
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t6, 2
  ADDI t6, t6, -792
  ADD t6, t6, sp
  SD s9, 0(t6)
  LUI t5, 2
  ADDI t5, t5, -784
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t6, 2
  ADDI t6, t6, -776
  ADD t6, t6, sp
  SD s7, 0(t6)
  LUI t5, 2
  ADDI t5, t5, -768
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t6, 2
  ADDI t6, t6, -760
  ADD t6, t6, sp
  SD s5, 0(t6)
  LUI t5, 2
  ADDI t5, t5, -752
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t6, 2
  ADDI t6, t6, -744
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t5, 2
  ADDI t5, t5, -736
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI a0, 2
  ADDI a0, a0, -728
  ADD a0, a0, sp
  SD s2, 0(a0)
  LUI a0, 2
  ADDI a0, a0, -720
  ADD a0, a0, sp
  SD s3, 0(a0)
  ADD a0, zero, zero
  ADDI a1, zero, 1
  ADDI a2, zero, 1
  ADDI a3, zero, 8
  ADDI a4, zero, 9
  ADDI a5, zero, 5
  ADDI a6, zero, 2
  ADD a7, zero, zero
  ADDI t6, sp, 0
  ADD s0, t6, zero
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 4
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 8
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 12
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 16
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 20
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 24
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 28
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 32
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 36
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 40
  SW zero, 0(s0)
  ADDI s0, sp, 44
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 48
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 52
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 56
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 60
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 64
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 68
  SW zero, 0(s0)
  ADDI s0, sp, 72
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 76
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 80
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 84
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 88
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 92
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 96
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 100
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 104
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 108
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 112
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 116
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 120
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 124
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 128
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 132
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 136
  SW zero, 0(s0)
  ADDI s0, sp, 140
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 144
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 148
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 152
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 156
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 160
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 164
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 168
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 172
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 176
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 180
  SW zero, 0(s0)
  ADDI s0, sp, 184
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 188
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 192
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 196
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 200
  SW zero, 0(s0)
  ADDI s0, sp, 204
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 208
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 212
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 216
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 220
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 224
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 228
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 232
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 236
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 240
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 244
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 248
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 252
  SW zero, 0(s0)
  ADDI s0, sp, 256
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 260
  SW zero, 0(s0)
  ADDI s0, sp, 264
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 268
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 272
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 276
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 280
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 284
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 288
  SW zero, 0(s0)
  ADDI s0, sp, 292
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 296
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 300
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 304
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 308
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 312
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 316
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 320
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 324
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 328
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 332
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 336
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 340
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 344
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 348
  SW zero, 0(s0)
  ADDI s0, sp, 352
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 356
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 360
  SW zero, 0(s0)
  ADDI s0, sp, 364
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 368
  SW zero, 0(s0)
  ADDI s0, sp, 372
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 376
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 380
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 384
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 388
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 392
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 396
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 400
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 404
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 408
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 412
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 416
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 420
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 424
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 428
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 432
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 436
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 440
  SW zero, 0(s0)
  ADDI s0, sp, 444
  SW zero, 0(s0)
  ADDI s0, sp, 448
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 452
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 456
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 460
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 464
  SW zero, 0(s0)
  ADDI s0, sp, 468
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 472
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 476
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 480
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 484
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 488
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 492
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 496
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 500
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 504
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 508
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 512
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 516
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 520
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 524
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 528
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 532
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 536
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 540
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 544
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 548
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 552
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 556
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 560
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 564
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 568
  SW zero, 0(s0)
  ADDI s0, sp, 572
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 576
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 580
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 584
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 588
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 592
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 596
  SW zero, 0(s0)
  ADDI s0, sp, 600
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 604
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 608
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 612
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 616
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 620
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 624
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 628
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 632
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 636
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 640
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 644
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 648
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 652
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 656
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 660
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 664
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 668
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 672
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 676
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 680
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 684
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 688
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 692
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 696
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 700
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 704
  SW zero, 0(s0)
  ADDI s0, sp, 708
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 712
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 716
  SW zero, 0(s0)
  ADDI s0, sp, 720
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 724
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 728
  SW zero, 0(s0)
  ADDI s0, sp, 732
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 736
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 740
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 744
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 748
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 752
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 756
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 760
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 764
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 768
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 772
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 776
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 780
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 784
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 788
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 792
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 796
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 800
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 804
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 808
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 812
  SW zero, 0(s0)
  ADDI s0, sp, 816
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 820
  SW zero, 0(s0)
  ADDI s0, sp, 824
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 828
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 832
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 836
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 840
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 844
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 848
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 852
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 856
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 860
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 864
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 868
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 872
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 876
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 880
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 884
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 888
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 892
  SW zero, 0(s0)
  ADDI s0, sp, 896
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 900
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 904
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 908
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 912
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 916
  SW zero, 0(s0)
  ADDI s0, sp, 920
  SW zero, 0(s0)
  ADDI s0, sp, 924
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 928
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 932
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 936
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 940
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 944
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 948
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 952
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 956
  SW zero, 0(s0)
  ADDI s0, sp, 960
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 964
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 968
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 972
  SW zero, 0(s0)
  ADDI s0, sp, 976
  SW zero, 0(s0)
  ADDI s0, sp, 980
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 984
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 988
  SW zero, 0(s0)
  ADDI s0, sp, 992
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 996
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1000
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 1004
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1008
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 1012
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 1016
  SW zero, 0(s0)
  ADDI s0, sp, 1020
  SW zero, 0(s0)
  ADDI s0, sp, 1024
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 1028
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 1032
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 1036
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1040
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 1044
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 1048
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 1052
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 1056
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 1060
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 1064
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 1068
  SW zero, 0(s0)
  ADDI s0, sp, 1072
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 1076
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 1080
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 1084
  SW zero, 0(s0)
  ADDI s0, sp, 1088
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 1092
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 1096
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 1100
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 1104
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1108
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1112
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 1116
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1120
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 1124
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 1128
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 1132
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 1136
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 1140
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 1144
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 1148
  SW zero, 0(s0)
  ADDI s0, sp, 1152
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 1156
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 1160
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 1164
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1168
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 1172
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 1176
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 1180
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 1184
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1188
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 1192
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 1196
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 1200
  SW zero, 0(s0)
  ADDI s0, sp, 1204
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 1208
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 1212
  SW zero, 0(s0)
  ADDI s0, sp, 1216
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1220
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 1224
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 1228
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 1232
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 1236
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 1240
  SW zero, 0(s0)
  ADDI s0, sp, 1244
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1248
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 1252
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 1256
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 1260
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 1264
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1268
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 1272
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 1276
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 1280
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 1284
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 1288
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1292
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 1296
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 1300
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 1304
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1308
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 1312
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 1316
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 1320
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 1324
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 1328
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 1332
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 1336
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 1340
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 1344
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 1348
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 1352
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 1356
  SW zero, 0(s0)
  ADDI s0, sp, 1360
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 1364
  SW zero, 0(s0)
  ADDI s0, sp, 1368
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 1372
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 1376
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 1380
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1384
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 1388
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 1392
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 1396
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 1400
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 1404
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 1408
  SW zero, 0(s0)
  ADDI s0, sp, 1412
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 1416
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 1420
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 1424
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 1428
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 1432
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 1436
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 1440
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 1444
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 1448
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 1452
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 1456
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 1460
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1464
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 1468
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 1472
  SW zero, 0(s0)
  ADDI s0, sp, 1476
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1480
  SW zero, 0(s0)
  ADDI s0, sp, 1484
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 1488
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 1492
  SW zero, 0(s0)
  ADDI s0, sp, 1496
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 1500
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 1504
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 1508
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 1512
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 1516
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 1520
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 1524
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 1528
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 1532
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 1536
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 1540
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1544
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 1548
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 1552
  SW zero, 0(s0)
  ADDI s0, sp, 1556
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 1560
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 1564
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 1568
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 1572
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 1576
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 1580
  SW zero, 0(s0)
  ADDI s0, sp, 1584
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 1588
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1592
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 1596
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 1600
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 1604
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1608
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 1612
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 1616
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 1620
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 1624
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 1628
  SW zero, 0(s0)
  ADDI s0, sp, 1632
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 1636
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 1640
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 1644
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 1648
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 1652
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 1656
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 1660
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 1664
  SW zero, 0(s0)
  ADDI s0, sp, 1668
  SW zero, 0(s0)
  ADDI s0, sp, 1672
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 1676
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 1680
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 1684
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1688
  SW zero, 0(s0)
  ADDI s0, sp, 1692
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 1696
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 1700
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 1704
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 1708
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 1712
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1716
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 1720
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 1724
  SW zero, 0(s0)
  ADDI s0, sp, 1728
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 1732
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 1736
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 1740
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 1744
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 1748
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1752
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 1756
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 1760
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 1764
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1768
  SW zero, 0(s0)
  ADDI s0, sp, 1772
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 1776
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 1780
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 1784
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 1788
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1792
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 1796
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 1800
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 1804
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 1808
  SW zero, 0(s0)
  ADDI s0, sp, 1812
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 1816
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 1820
  SW zero, 0(s0)
  ADDI s0, sp, 1824
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 1828
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 1832
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1836
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 1840
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 1844
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 1848
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 1852
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 1856
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 1860
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 1864
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 1868
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 1872
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1876
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 1880
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 1884
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 1888
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1892
  SW zero, 0(s0)
  ADDI s0, sp, 1896
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 1900
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 1904
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 1908
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 1912
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 1916
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 1920
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 1924
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 1928
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 1932
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 1936
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 1940
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 1944
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 1948
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 1952
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 1956
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 1960
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1964
  SW zero, 0(s0)
  ADDI s0, sp, 1968
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 1972
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 1976
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1980
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 1984
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 1988
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 1992
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 1996
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 2000
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 2004
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 2008
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 2012
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 2016
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 2020
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 2024
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 2028
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 2032
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 2036
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 2040
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 2044
  SW zero, 0(s0)
  LUI s0, 1
  ADDI s0, s0, -2048
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 3
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -2044
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 8
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -2040
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 2
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -2036
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 9
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -2032
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -2028
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 3
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -2024
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 9
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -2020
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 6
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -2016
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 2
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -2012
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 3
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -2008
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 2
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -2004
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 9
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -2000
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 9
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1996
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 3
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1992
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 8
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1988
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 8
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1984
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1980
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 9
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1976
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 8
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1972
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 5
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1968
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1964
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1960
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 2
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1956
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 7
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1952
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 9
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1948
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 3
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1944
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 7
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1940
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 4
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1936
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 3
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1932
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 4
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1928
  ADDI t5, sp, 0
  ADD s1, t5, s0
  SW zero, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1924
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 7
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1920
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 4
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1916
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 9
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1912
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1908
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 4
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1904
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 6
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1900
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 4
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1896
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 3
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1892
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 8
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1888
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 3
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1884
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 8
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1880
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 7
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1876
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 6
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1872
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 3
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1868
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 2
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1864
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1860
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 8
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1856
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 5
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1852
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 2
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1848
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 3
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1844
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1840
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 3
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1836
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 7
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1832
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 6
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1828
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 2
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1824
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 4
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1820
  ADDI t6, sp, 0
  ADD s1, t6, s0
  SW zero, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1816
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 9
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1812
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 9
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1808
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 7
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1804
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 8
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1800
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 3
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1796
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 7
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1792
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 5
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1788
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 8
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1784
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 8
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1780
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 5
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1776
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 6
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1772
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 7
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1768
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 3
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1764
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 2
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1760
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 9
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1756
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 5
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1752
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 5
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1748
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1744
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 5
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1740
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 7
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1736
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 9
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1732
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 7
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1728
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 9
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1724
  ADDI t6, sp, 0
  ADD s1, t6, s0
  SW zero, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1720
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 5
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1716
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 4
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1712
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 3
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1708
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 3
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1704
  ADDI t5, sp, 0
  ADD s1, t5, s0
  SW zero, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1700
  ADDI t6, sp, 0
  ADD s1, t6, s0
  SW zero, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1696
  ADDI t5, sp, 0
  ADD s1, t5, s0
  SW zero, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1692
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 3
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1688
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 5
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1684
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1680
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 6
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1676
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 2
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1672
  ADDI t5, sp, 0
  ADD s1, t5, s0
  SW zero, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1668
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 4
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1664
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 7
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1660
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 4
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1656
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 9
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1652
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 7
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1648
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 3
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1644
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 4
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1640
  ADDI t5, sp, 0
  ADD s1, t5, s0
  SW zero, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1636
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 6
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1632
  ADDI t5, sp, 0
  ADD s1, t5, s0
  SW zero, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1628
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 3
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1624
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1620
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 3
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1616
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 5
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1612
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 7
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1608
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 3
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1604
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 8
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1600
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 3
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1596
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1592
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 9
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1588
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 6
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1584
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 8
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1580
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 6
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1576
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 7
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1572
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 7
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1568
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 3
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1564
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 2
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1560
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 9
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1556
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 8
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1552
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1548
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 9
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1544
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 5
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1540
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 8
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1536
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 4
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1532
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 7
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1528
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 8
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1524
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 9
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1520
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 9
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1516
  ADDI t6, sp, 0
  ADD s1, t6, s0
  SW zero, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1512
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 9
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1508
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 2
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1504
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 9
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1500
  ADDI t6, sp, 0
  ADD s1, t6, s0
  SW zero, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1496
  ADDI t5, sp, 0
  ADD s1, t5, s0
  SW zero, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1492
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 7
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1488
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 4
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1484
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 3
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1480
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 9
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1476
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 2
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1472
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 2
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1468
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 7
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1464
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 8
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1460
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 7
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1456
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1452
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 3
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1448
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 5
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1444
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 8
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1440
  ADDI t5, sp, 0
  ADD s1, t5, s0
  ADDI s0, zero, 4
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1436
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 4
  SW s0, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1432
  ADDI t5, sp, 0
  ADD s1, t5, s0
  SW zero, 0(s1)
  LUI s0, 1
  ADDI s0, s0, -1428
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDI s0, zero, 9
  SW s0, 0(s1)
  ADDI s0, zero, 6
  ADDI s1, zero, 2
  ADDI s2, zero, 4
  ADDI s3, zero, 7
  ADDI s4, zero, 1
  ADDI s5, zero, 6
  ADDI s6, zero, 9
  ADDI s7, zero, 3
  ADDI s8, zero, 3
  ADDI s9, zero, 5
  ADDI s10, zero, 8
  ADDI s11, zero, 9
  ADDI t4, zero, 3
  LUI t5, 2
  ADDI t5, t5, -824
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 4
  LUI t6, 2
  ADDI t6, t6, -848
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 2
  ADDI t5, t5, -840
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 2
  ADDI t6, t6, -832
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 8
  LUI t5, 1
  ADDI t5, t5, -1424
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, -1416
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, -1408
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 5
  LUI t6, 1
  ADDI t6, t6, -1400
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 1
  ADDI t5, t5, -1392
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 1
  LUI t6, 1
  ADDI t6, t6, -1384
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 1
  ADDI t5, t5, -1376
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 1
  ADDI t6, t6, -1368
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, -1360
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, -1352
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 1
  ADDI t5, t5, -1344
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 1
  ADDI t6, t6, -1336
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 1
  LUI t5, 1
  ADDI t5, t5, -1328
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 1
  ADDI t6, t6, -1320
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, -1312
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 4
  LUI t6, 1
  ADDI t6, t6, -1304
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 1
  ADDI t5, t5, -1296
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 5
  LUI t6, 1
  ADDI t6, t6, -1288
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, -1280
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 1
  ADDI t6, t6, -1272
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 1
  ADDI t5, t5, -1264
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, -1256
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 1
  ADDI t5, t5, -1248
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 1
  ADDI t6, t6, -1240
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 1
  ADDI t5, t5, -1232
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 1
  ADDI t6, t6, -1224
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 1
  ADDI t5, t5, -1216
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, -1208
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 1
  ADDI t5, t5, -1200
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 1
  ADDI t6, t6, -1192
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, -1184
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 4
  LUI t6, 1
  ADDI t6, t6, -1176
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 1
  ADDI t5, t5, -1168
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, -1160
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, -1152
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, -1144
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 1
  ADDI t5, t5, -1136
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 1
  ADDI t6, t6, -1128
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 1
  ADDI t5, t5, -1120
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 4
  LUI t6, 1
  ADDI t6, t6, -1112
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 1
  ADDI t5, t5, -1104
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 1
  ADDI t6, t6, -1096
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, -1088
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, -1080
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, -1072
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 1
  ADDI t6, t6, -1064
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 1
  ADDI t5, t5, -1056
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, -1048
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 1
  ADDI t5, t5, -1040
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 1
  ADDI t6, t6, -1032
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 1
  ADDI t5, t5, -1024
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, -1016
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 1
  LUI t5, 1
  ADDI t5, t5, -1008
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 1
  LUI t6, 1
  ADDI t6, t6, -1000
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 1
  ADDI t5, t5, -992
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 1
  ADDI t6, t6, -984
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 1
  ADDI t5, t5, -976
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 1
  ADDI t6, t6, -968
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, -960
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, -952
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, -944
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 4
  LUI t6, 1
  ADDI t6, t6, -936
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, -928
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 1
  ADDI t6, t6, -920
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, -912
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 1
  ADDI t6, t6, -904
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 1
  ADDI t5, t5, -896
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 5
  LUI t6, 1
  ADDI t6, t6, -888
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 1
  ADDI t5, t5, -880
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 1
  ADDI t6, t6, -872
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 1
  ADDI t5, t5, -864
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 1
  ADDI t6, t6, -856
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 2
  LUI t5, 1
  ADDI t5, t5, -848
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 1
  ADDI t6, t6, -840
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 8
  LUI t5, 1
  ADDI t5, t5, -832
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, -824
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 1
  ADDI t5, t5, -816
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 1
  ADDI t6, t6, -808
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 1
  ADDI t5, t5, -800
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, -792
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 1
  ADDI t5, t5, -784
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 1
  ADDI t6, t6, -776
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 8
  LUI t5, 1
  ADDI t5, t5, -768
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 1
  ADDI t6, t6, -760
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 1
  ADDI t5, t5, -752
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 1
  ADDI t6, t6, -744
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 1
  ADDI t5, t5, -736
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 5
  LUI t6, 1
  ADDI t6, t6, -728
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 1
  ADDI t5, t5, -720
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 1
  ADDI t6, t6, -712
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, -704
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 1
  LUI t6, 1
  ADDI t6, t6, -696
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 2
  LUI t5, 1
  ADDI t5, t5, -688
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 1
  ADDI t6, t6, -680
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 1
  ADDI t5, t5, -672
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, -664
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, -656
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 4
  LUI t6, 1
  ADDI t6, t6, -648
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 1
  ADDI t5, t5, -640
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, -632
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 1
  ADDI t5, t5, -624
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, -616
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 2
  LUI t5, 1
  ADDI t5, t5, -608
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 5
  LUI t6, 1
  ADDI t6, t6, -600
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, -592
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 1
  ADDI t6, t6, -584
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 8
  LUI t5, 1
  ADDI t5, t5, -576
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 1
  ADDI t6, t6, -568
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 8
  LUI t5, 1
  ADDI t5, t5, -560
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, -552
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 1
  ADDI t5, t5, -544
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, -536
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, -528
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, -520
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 8
  LUI t5, 1
  ADDI t5, t5, -512
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 4
  LUI t6, 1
  ADDI t6, t6, -504
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 2
  LUI t5, 1
  ADDI t5, t5, -496
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 5
  LUI t6, 1
  ADDI t6, t6, -488
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 1
  ADDI t5, t5, -480
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 1
  ADDI t6, t6, -472
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 8
  LUI t5, 1
  ADDI t5, t5, -464
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 4
  LUI t6, 1
  ADDI t6, t6, -456
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 1
  ADDI t5, t5, -448
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 1
  ADDI t6, t6, -440
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 1
  ADDI t5, t5, -432
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 1
  ADDI t6, t6, -424
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 2
  LUI t5, 1
  ADDI t5, t5, -416
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 4
  LUI t6, 1
  ADDI t6, t6, -408
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 1
  ADDI t5, t5, -400
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, -392
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 1
  ADDI t5, t5, -384
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, -376
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 8
  LUI t5, 1
  ADDI t5, t5, -368
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 1
  LUI t6, 1
  ADDI t6, t6, -360
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 2
  LUI t5, 1
  ADDI t5, t5, -352
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 1
  ADDI t6, t6, -344
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 1
  ADDI t5, t5, -336
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, -328
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 2
  LUI t5, 1
  ADDI t5, t5, -320
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 1
  LUI t6, 1
  ADDI t6, t6, -312
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 1
  ADDI t5, t5, -304
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 1
  LUI t6, 1
  ADDI t6, t6, -296
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 2
  LUI t5, 1
  ADDI t5, t5, -288
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 4
  LUI t6, 1
  ADDI t6, t6, -280
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 1
  ADDI t5, t5, -272
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 1
  ADDI t6, t6, -264
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 1
  ADDI t5, t5, -256
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, -248
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 1
  ADDI t5, t5, -240
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 1
  ADDI t6, t6, -232
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 1
  ADDI t5, t5, -224
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 1
  ADDI t6, t6, -216
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, -208
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 1
  LUI t6, 1
  ADDI t6, t6, -200
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 8
  LUI t5, 1
  ADDI t5, t5, -192
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, -184
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 2
  LUI t5, 1
  ADDI t5, t5, -176
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 4
  LUI t6, 1
  ADDI t6, t6, -168
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 1
  ADDI t5, t5, -160
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 1
  ADDI t6, t6, -152
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 1
  ADDI t5, t5, -144
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 1
  ADDI t6, t6, -136
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 1
  ADDI t5, t5, -128
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, -120
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 1
  ADDI t5, t5, -112
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 1
  ADDI t6, t6, -104
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 1
  LUI t5, 1
  ADDI t5, t5, -96
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, -88
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 1
  ADDI t5, t5, -80
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 1
  ADDI t6, t6, -72
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 1
  ADDI t5, t5, -64
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 1
  ADDI t6, t6, -56
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 1
  ADDI t5, t5, -48
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 1
  ADDI t6, t6, -40
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 1
  ADDI t5, t5, -32
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, -24
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 1
  ADDI t5, t5, -16
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 1
  ADDI t6, t6, -8
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, 0
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 1
  ADDI t6, t6, 8
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 1
  ADDI t5, t5, 16
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 1
  ADDI t6, t6, 24
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 1
  ADDI t5, t5, 32
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 5
  LUI t6, 1
  ADDI t6, t6, 40
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 8
  LUI t5, 1
  ADDI t5, t5, 48
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 4
  LUI t6, 1
  ADDI t6, t6, 56
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, 64
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, 72
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 1
  ADDI t5, t5, 80
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, 88
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 1
  ADDI t5, t5, 96
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, 104
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, 112
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 1
  ADDI t6, t6, 120
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 1
  ADDI t5, t5, 128
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, 136
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, 144
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, 152
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, 160
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, 168
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 1
  ADDI t5, t5, 176
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, 184
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 1
  LUI t5, 1
  ADDI t5, t5, 192
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 5
  LUI t6, 1
  ADDI t6, t6, 200
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 1
  ADDI t5, t5, 208
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, 216
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 1
  ADDI t5, t5, 224
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, 232
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 1
  ADDI t5, t5, 240
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 1
  ADDI t6, t6, 248
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 1
  ADDI t5, t5, 256
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, 264
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 1
  ADDI t5, t5, 272
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, 280
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 1
  ADDI t5, t5, 288
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 1
  ADDI t6, t6, 296
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 8
  LUI t5, 1
  ADDI t5, t5, 304
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 5
  LUI t6, 1
  ADDI t6, t6, 312
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, 320
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 1
  ADDI t6, t6, 328
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 1
  LUI t5, 1
  ADDI t5, t5, 336
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 5
  LUI t6, 1
  ADDI t6, t6, 344
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 1
  ADDI t5, t5, 352
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 1
  ADDI t6, t6, 360
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 1
  ADDI t5, t5, 368
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 1
  ADDI t6, t6, 376
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 1
  ADDI t5, t5, 384
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, 392
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 1
  ADDI t5, t5, 400
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, 408
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 1
  LUI t5, 1
  ADDI t5, t5, 416
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, 424
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 1
  ADDI t5, t5, 432
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, 440
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 1
  ADDI t5, t5, 448
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 1
  LUI t6, 1
  ADDI t6, t6, 456
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, 464
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 1
  LUI t6, 1
  ADDI t6, t6, 472
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, 480
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 1
  ADDI t6, t6, 488
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, 496
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 1
  ADDI t6, t6, 504
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 1
  ADDI t5, t5, 512
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 4
  LUI t6, 1
  ADDI t6, t6, 520
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 1
  ADDI t5, t5, 528
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 1
  LUI t6, 1
  ADDI t6, t6, 536
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 1
  ADDI t5, t5, 544
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, 552
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 1
  ADDI t5, t5, 560
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, 568
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 1
  ADDI t5, t5, 576
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 1
  ADDI t6, t6, 584
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 1
  ADDI t5, t5, 592
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, 600
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 1
  ADDI t5, t5, 608
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 1
  ADDI t6, t6, 616
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 1
  LUI t5, 1
  ADDI t5, t5, 624
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 1
  ADDI t6, t6, 632
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 1
  ADDI t5, t5, 640
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, 648
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 2
  LUI t5, 1
  ADDI t5, t5, 656
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 1
  ADDI t6, t6, 664
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 1
  LUI t5, 1
  ADDI t5, t5, 672
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, 680
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 1
  ADDI t5, t5, 688
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 1
  ADDI t6, t6, 696
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 8
  LUI t5, 1
  ADDI t5, t5, 704
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 5
  LUI t6, 1
  ADDI t6, t6, 712
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 1
  ADDI t5, t5, 720
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 1
  ADDI t6, t6, 728
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 1
  ADDI t5, t5, 736
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 1
  ADDI t6, t6, 744
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 1
  ADDI t5, t5, 752
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 1
  LUI t6, 1
  ADDI t6, t6, 760
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 1
  ADDI t5, t5, 768
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 1
  ADDI t6, t6, 776
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 1
  ADDI t5, t5, 784
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 1
  ADDI t6, t6, 792
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 1
  LUI t5, 1
  ADDI t5, t5, 800
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 1
  ADDI t6, t6, 808
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 8
  LUI t5, 1
  ADDI t5, t5, 816
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, 824
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 8
  LUI t5, 1
  ADDI t5, t5, 832
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 1
  ADDI t6, t6, 840
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, 848
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 4
  LUI t6, 1
  ADDI t6, t6, 856
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 2
  LUI t5, 1
  ADDI t5, t5, 864
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 4
  LUI t6, 1
  ADDI t6, t6, 872
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 1
  ADDI t5, t5, 880
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 1
  ADDI t6, t6, 888
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 8
  LUI t5, 1
  ADDI t5, t5, 896
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, 904
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 1
  ADDI t5, t5, 912
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 1
  ADDI t6, t6, 920
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 1
  ADDI t5, t5, 928
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 1
  ADDI t6, t6, 936
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 1
  LUI t5, 1
  ADDI t5, t5, 944
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 1
  ADDI t6, t6, 952
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, 960
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 1
  ADDI t6, t6, 968
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 1
  ADDI t5, t5, 976
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, 984
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 1
  ADDI t5, t5, 992
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 1
  ADDI t6, t6, 1000
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 1
  ADDI t5, t5, 1008
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 1
  ADDI t6, t6, 1016
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 1
  ADDI t5, t5, 1024
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 1
  LUI t6, 1
  ADDI t6, t6, 1032
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 1
  ADDI t5, t5, 1040
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 1
  ADDI t6, t6, 1048
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 1
  ADDI t5, t5, 1056
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 4
  LUI t6, 1
  ADDI t6, t6, 1064
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 1
  ADDI t5, t5, 1072
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, 1080
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 2
  LUI t5, 1
  ADDI t5, t5, 1088
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, 1096
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 8
  LUI t5, 1
  ADDI t5, t5, 1104
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 1
  ADDI t6, t6, 1112
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 1
  ADDI t5, t5, 1120
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 5
  LUI t6, 1
  ADDI t6, t6, 1128
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 8
  LUI t5, 1
  ADDI t5, t5, 1136
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, 1144
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 1
  ADDI t5, t5, 1152
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 1
  ADDI t6, t6, 1160
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 1
  ADDI t5, t5, 1168
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, 1176
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, 1184
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, 1192
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 1
  ADDI t5, t5, 1200
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 1
  ADDI t6, t6, 1208
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 1
  LUI t5, 1
  ADDI t5, t5, 1216
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 1
  ADDI t6, t6, 1224
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, 1232
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 1
  ADDI t6, t6, 1240
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 8
  LUI t5, 1
  ADDI t5, t5, 1248
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 1
  ADDI t6, t6, 1256
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 2
  LUI t5, 1
  ADDI t5, t5, 1264
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, 1272
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 1
  LUI t5, 1
  ADDI t5, t5, 1280
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 5
  LUI t6, 1
  ADDI t6, t6, 1288
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 1
  ADDI t5, t5, 1296
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, 1304
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 1
  ADDI t5, t5, 1312
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 5
  LUI t6, 1
  ADDI t6, t6, 1320
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 1
  ADDI t5, t5, 1328
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 1
  ADDI t6, t6, 1336
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 1
  ADDI t5, t5, 1344
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, 1352
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 1
  ADDI t5, t5, 1360
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 1
  LUI t6, 1
  ADDI t6, t6, 1368
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 1
  ADDI t5, t5, 1376
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, 1384
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 1
  ADDI t5, t5, 1392
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 1
  LUI t6, 1
  ADDI t6, t6, 1400
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 1
  ADDI t5, t5, 1408
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 1
  ADDI t6, t6, 1416
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 1
  ADDI t5, t5, 1424
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 1
  ADDI t6, t6, 1432
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 1
  ADDI t5, t5, 1440
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, 1448
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, 1456
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 4
  LUI t6, 1
  ADDI t6, t6, 1464
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 1
  ADDI t5, t5, 1472
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, 1480
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 1
  ADDI t5, t5, 1488
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, 1496
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 1
  LUI t5, 1
  ADDI t5, t5, 1504
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, 1512
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 2
  LUI t5, 1
  ADDI t5, t5, 1520
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 1
  ADDI t6, t6, 1528
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 1
  ADDI t5, t5, 1536
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 1
  ADDI t6, t6, 1544
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 1
  ADDI t5, t5, 1552
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 1
  ADDI t6, t6, 1560
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 1
  ADDI t5, t5, 1568
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 1
  ADDI t6, t6, 1576
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 1
  ADDI t5, t5, 1584
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 1
  ADDI t6, t6, 1592
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 1
  LUI t5, 1
  ADDI t5, t5, 1600
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, 1608
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 2
  LUI t5, 1
  ADDI t5, t5, 1616
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, 1624
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, 1632
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 1
  ADDI t6, t6, 1640
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 2
  LUI t5, 1
  ADDI t5, t5, 1648
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 5
  LUI t6, 1
  ADDI t6, t6, 1656
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 1
  ADDI t5, t5, 1664
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 1
  ADDI t6, t6, 1672
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 8
  LUI t5, 1
  ADDI t5, t5, 1680
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, 1688
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 1
  ADDI t5, t5, 1696
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 1
  ADDI t6, t6, 1704
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 1
  ADDI t5, t5, 1712
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 1
  ADDI t6, t6, 1720
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, 1728
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, 1736
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 1
  ADDI t5, t5, 1744
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 1
  ADDI t6, t6, 1752
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 8
  LUI t5, 1
  ADDI t5, t5, 1760
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 1
  ADDI t6, t6, 1768
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 1
  ADDI t5, t5, 1776
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 1
  ADDI t6, t6, 1784
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 1
  ADDI t5, t5, 1792
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 4
  LUI t6, 1
  ADDI t6, t6, 1800
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 1
  ADDI t5, t5, 1808
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 1
  ADDI t6, t6, 1816
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 1
  ADDI t5, t5, 1824
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 1
  ADDI t6, t6, 1832
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 8
  LUI t5, 1
  ADDI t5, t5, 1840
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 1
  ADDI t6, t6, 1848
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 1
  LUI t5, 1
  ADDI t5, t5, 1856
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 1
  ADDI t6, t6, 1864
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 1
  ADDI t5, t5, 1872
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 4
  LUI t6, 1
  ADDI t6, t6, 1880
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 1
  ADDI t5, t5, 1888
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 5
  LUI t6, 1
  ADDI t6, t6, 1896
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 1
  ADDI t5, t5, 1904
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 1
  ADDI t6, t6, 1912
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 8
  LUI t5, 1
  ADDI t5, t5, 1920
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 1
  ADDI t6, t6, 1928
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 1
  ADDI t5, t5, 1936
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, 1944
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 1
  ADDI t5, t5, 1952
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 1
  LUI t6, 1
  ADDI t6, t6, 1960
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 1
  ADDI t5, t5, 1968
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 1
  LUI t6, 1
  ADDI t6, t6, 1976
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 1
  ADDI t5, t5, 1984
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 1
  ADDI t6, t6, 1992
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 1
  ADDI t5, t5, 2000
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 4
  LUI t6, 1
  ADDI t6, t6, 2008
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 1
  ADDI t5, t5, 2016
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 1
  ADDI t6, t6, 2024
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 1
  ADDI t5, t5, 2032
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 1
  ADDI t6, t6, 2040
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 2
  ADDI t5, t5, -2048
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 2
  ADDI t6, t6, -2040
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 2
  ADDI t5, t5, -2032
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 1
  LUI t6, 2
  ADDI t6, t6, -2024
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 2
  LUI t5, 2
  ADDI t5, t5, -2016
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 5
  LUI t6, 2
  ADDI t6, t6, -2008
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 2
  LUI t5, 2
  ADDI t5, t5, -2000
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 2
  ADDI t6, t6, -1992
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 8
  LUI t5, 2
  ADDI t5, t5, -1984
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 2
  ADDI t6, t6, -1976
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 2
  ADDI t5, t5, -1968
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 1
  LUI t6, 2
  ADDI t6, t6, -1960
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 2
  ADDI t5, t5, -1952
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 2
  ADDI t6, t6, -1944
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 2
  ADDI t5, t5, -1936
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 2
  ADDI t6, t6, -1928
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 2
  ADDI t5, t5, -1920
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 2
  ADDI t6, t6, -1912
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 2
  ADDI t5, t5, -1904
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 2
  ADDI t6, t6, -1896
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 2
  ADDI t5, t5, -1888
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 2
  ADDI t6, t6, -1880
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 8
  LUI t5, 2
  ADDI t5, t5, -1872
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 1
  LUI t6, 2
  ADDI t6, t6, -1864
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 2
  ADDI t5, t5, -1856
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 2
  ADDI t6, t6, -1848
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 2
  ADDI t5, t5, -1840
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 1
  LUI t6, 2
  ADDI t6, t6, -1832
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 1
  LUI t5, 2
  ADDI t5, t5, -1824
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 2
  ADDI t6, t6, -1816
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 2
  ADDI t5, t5, -1808
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 2
  ADDI t6, t6, -1800
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 2
  ADDI t5, t5, -1792
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 2
  ADDI t6, t6, -1784
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 2
  ADDI t5, t5, -1776
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 2
  ADDI t6, t6, -1768
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 2
  ADDI t5, t5, -1760
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 2
  ADDI t6, t6, -1752
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 2
  ADDI t5, t5, -1744
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 2
  ADDI t6, t6, -1736
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 1
  LUI t5, 2
  ADDI t5, t5, -1728
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 4
  LUI t6, 2
  ADDI t6, t6, -1720
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 2
  ADDI t5, t5, -1712
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 4
  LUI t6, 2
  ADDI t6, t6, -1704
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 2
  ADDI t5, t5, -1696
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 2
  ADDI t6, t6, -1688
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 2
  ADDI t5, t5, -1680
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 2
  ADDI t6, t6, -1672
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 2
  ADDI t5, t5, -1664
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 2
  ADDI t6, t6, -1656
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 2
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 2
  ADDI t6, t6, -1640
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 1
  LUI t5, 2
  ADDI t5, t5, -1632
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 2
  ADDI t6, t6, -1624
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 2
  ADDI t5, t5, -1616
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 2
  ADDI t6, t6, -1608
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 2
  ADDI t5, t5, -1600
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 1
  LUI t6, 2
  ADDI t6, t6, -1592
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 2
  ADDI t5, t5, -1584
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 2
  ADDI t6, t6, -1576
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 2
  ADDI t5, t5, -1568
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 2
  ADDI t6, t6, -1560
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 2
  ADDI t5, t5, -1552
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 2
  ADDI t6, t6, -1544
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 2
  ADDI t5, t5, -1536
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 2
  ADDI t6, t6, -1528
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 8
  LUI t5, 2
  ADDI t5, t5, -1520
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 2
  ADDI t6, t6, -1512
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 2
  ADDI t5, t5, -1504
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 5
  LUI t6, 2
  ADDI t6, t6, -1496
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 8
  LUI t5, 2
  ADDI t5, t5, -1488
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 2
  ADDI t6, t6, -1480
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 2
  ADDI t5, t5, -1472
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 2
  ADDI t6, t6, -1464
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 2
  ADDI t5, t5, -1456
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 2
  ADDI t6, t6, -1448
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 2
  LUI t5, 2
  ADDI t5, t5, -1440
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 2
  ADDI t6, t6, -1432
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 2
  ADDI t5, t5, -1424
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 5
  LUI t6, 2
  ADDI t6, t6, -1416
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 1
  LUI t5, 2
  ADDI t5, t5, -1408
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 5
  LUI t6, 2
  ADDI t6, t6, -1400
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 2
  ADDI t5, t5, -1392
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 2
  ADDI t6, t6, -1384
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 2
  ADDI t5, t5, -1376
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 2
  ADDI t6, t6, -1368
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 2
  ADDI t5, t5, -1360
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 4
  LUI t6, 2
  ADDI t6, t6, -1352
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 2
  ADDI t5, t5, -1344
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 2
  ADDI t6, t6, -1336
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 2
  ADDI t5, t5, -1328
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 5
  LUI t6, 2
  ADDI t6, t6, -1320
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 1
  LUI t5, 2
  ADDI t5, t5, -1312
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 2
  ADDI t6, t6, -1304
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 2
  LUI t5, 2
  ADDI t5, t5, -1296
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 4
  LUI t6, 2
  ADDI t6, t6, -1288
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 2
  ADDI t5, t5, -1280
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 4
  LUI t6, 2
  ADDI t6, t6, -1272
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 2
  ADDI t5, t5, -1264
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 2
  ADDI t6, t6, -1256
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 2
  ADDI t5, t5, -1248
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 4
  LUI t6, 2
  ADDI t6, t6, -1240
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 6
  LUI t5, 2
  ADDI t5, t5, -1232
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 2
  ADDI t6, t6, -1224
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 1
  LUI t5, 2
  ADDI t5, t5, -1216
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 3
  LUI t6, 2
  ADDI t6, t6, -1208
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 2
  ADDI t5, t5, -1200
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 2
  ADDI t6, t6, -1192
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 2
  ADDI t5, t5, -1184
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 2
  ADDI t6, t6, -1176
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 2
  ADDI t5, t5, -1168
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 1
  LUI t6, 2
  ADDI t6, t6, -1160
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 2
  ADDI t5, t5, -1152
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 2
  ADDI t6, t6, -1144
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 8
  LUI t5, 2
  ADDI t5, t5, -1136
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 6
  LUI t6, 2
  ADDI t6, t6, -1128
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 2
  ADDI t5, t5, -1120
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 2
  ADDI t6, t6, -1112
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 2
  ADDI t5, t5, -1104
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 2
  ADDI t6, t6, -1096
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 2
  ADDI t5, t5, -1088
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 2
  ADDI t6, t6, -1080
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 1
  LUI t5, 2
  ADDI t5, t5, -1072
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 2
  ADDI t6, t6, -1064
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 5
  LUI t5, 2
  ADDI t5, t5, -1056
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 2
  ADDI t6, t6, -1048
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 2
  ADDI t5, t5, -1040
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 7
  LUI t6, 2
  ADDI t6, t6, -1032
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 8
  LUI t5, 2
  ADDI t5, t5, -1024
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 2
  ADDI t6, t6, -1016
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 9
  LUI t5, 2
  ADDI t5, t5, -1008
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 2
  ADDI t6, t6, -1000
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 2
  LUI t5, 2
  ADDI t5, t5, -992
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 2
  ADDI t6, t6, -984
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 2
  ADDI t5, t5, -976
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 4
  LUI t6, 2
  ADDI t6, t6, -968
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 2
  ADDI t5, t5, -960
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 2
  ADDI t6, t6, -952
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 2
  LUI t5, 2
  ADDI t5, t5, -944
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t6, 2
  ADDI t6, t6, -936
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 2
  ADDI t5, t5, -928
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 8
  LUI t6, 2
  ADDI t6, t6, -920
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 7
  LUI t5, 2
  ADDI t5, t5, -912
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 1
  LUI t6, 2
  ADDI t6, t6, -904
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 3
  LUI t5, 2
  ADDI t5, t5, -896
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 5
  LUI t6, 2
  ADDI t6, t6, -888
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 8
  LUI t5, 2
  ADDI t5, t5, -880
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 4
  LUI t6, 2
  ADDI t6, t6, -872
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 4
  LUI t5, 2
  ADDI t5, t5, -864
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 9
  LUI t6, 2
  ADDI t6, t6, -856
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 2
  ADDI t4, t4, -824
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -848
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -840
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -832
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1424
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1416
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1408
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1400
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1392
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1384
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1376
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1368
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1360
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1352
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1344
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1336
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1328
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1320
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1312
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1304
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1296
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1288
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1280
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1272
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1264
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1256
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1248
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1240
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1232
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1224
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1208
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1200
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1192
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1184
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1176
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1168
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1160
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1152
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1144
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1136
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1128
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1120
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1112
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1104
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1096
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1088
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1080
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1072
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1064
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1056
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1048
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1040
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1032
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1024
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1016
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1008
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1000
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -992
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -984
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -976
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -968
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -960
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -952
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -944
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -936
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -928
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -920
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -912
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -904
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -896
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -888
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -880
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -872
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -864
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -856
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -848
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -840
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -832
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -824
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -816
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -808
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -800
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -792
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -784
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -776
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -768
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -760
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -752
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -744
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -736
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -728
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -720
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -712
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -704
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -696
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -688
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -680
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -672
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -664
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -656
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -648
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -640
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -632
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -624
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -616
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -608
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -600
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -592
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -584
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -576
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -568
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -560
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -552
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -544
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -536
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -528
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -520
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -512
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -504
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -496
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -488
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -480
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -472
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -464
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -456
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -448
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -440
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -432
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -424
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -416
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -408
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -400
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -392
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -384
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -376
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -368
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -360
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -352
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -344
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -336
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -328
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -320
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -312
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -304
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -296
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -288
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -280
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -272
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -264
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -256
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -248
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -240
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -232
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -224
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -216
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -208
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -200
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -192
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -184
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -176
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -168
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -160
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -152
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -144
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -136
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -128
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -120
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -112
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -104
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -96
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -88
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -80
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -72
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -64
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -56
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -48
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -40
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -32
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -24
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -16
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -8
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 0
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 8
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 16
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 24
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 32
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 40
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 48
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 56
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 64
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 72
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 80
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 88
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 96
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 104
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 112
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 120
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 128
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 136
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 144
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 152
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 160
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 168
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 176
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 184
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 192
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 200
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 208
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 216
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 224
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 232
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 240
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 248
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 256
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 264
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 272
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 280
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 288
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 296
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 304
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 312
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 320
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 328
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 336
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 344
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 352
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 360
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 368
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 376
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 384
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 392
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 400
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 408
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 416
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 424
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 432
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 440
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 448
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 456
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 464
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 472
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 480
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 488
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 496
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 504
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 512
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 520
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 528
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 536
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 544
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 552
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 560
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 568
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 576
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 584
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 592
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 600
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 608
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 616
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 624
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 632
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 640
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 648
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 656
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 664
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 672
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 680
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 688
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 696
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 704
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 712
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 720
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 728
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 736
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 744
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 752
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 760
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 768
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 776
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 784
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 792
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 800
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 808
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 816
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 824
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 832
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 840
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 848
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 856
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 864
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 872
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 880
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 888
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 896
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 904
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 912
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 920
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 928
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 936
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 944
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 952
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 960
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 968
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 976
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 984
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 992
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1000
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1008
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1016
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1024
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1032
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1040
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1048
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1056
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1064
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1072
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1080
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1088
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1096
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1104
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1112
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1120
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1128
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1136
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1144
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1152
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1160
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1168
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1176
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1184
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1192
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1200
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1208
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1224
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1232
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1240
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1248
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1256
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1264
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1272
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1280
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1288
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1296
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1304
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1312
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1320
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1328
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1336
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1344
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1352
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1360
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1368
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1376
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1384
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1392
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1400
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1408
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1416
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1424
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1432
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1440
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1448
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1456
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1464
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1472
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1480
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1488
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1496
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1504
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1512
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1520
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1528
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1536
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1544
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1552
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1560
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1568
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1576
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1584
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1592
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1600
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1608
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1616
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1624
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1632
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1640
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1648
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1656
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1664
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1672
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1680
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1688
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1696
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1704
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1712
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1720
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1728
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1736
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1744
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1752
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1760
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1768
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1776
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1784
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1792
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1800
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1808
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1816
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1824
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1832
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1840
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1848
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1856
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1864
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1872
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1880
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1888
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1896
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1904
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1912
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1920
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1928
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1936
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1944
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1952
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1960
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1968
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1976
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 1992
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 2000
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 2008
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 2016
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 2024
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, 2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, 2040
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -2040
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -2024
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -2016
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -2008
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -2000
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1992
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1976
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1968
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1960
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1952
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1944
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1936
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1928
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1920
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1912
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1904
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1896
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1888
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1880
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1872
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1864
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1856
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1848
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1840
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1832
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1824
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1816
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1808
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1800
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1792
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1784
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1776
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1768
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1760
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1752
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1744
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1736
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1728
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1720
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1712
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1704
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1696
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1688
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1680
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1672
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1664
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1656
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1648
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1640
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1632
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1624
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1616
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1608
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1600
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1592
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1584
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1576
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1568
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1560
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1552
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1544
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1536
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1528
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1520
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1512
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1504
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1496
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1488
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1480
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1472
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1464
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1456
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1448
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1440
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1432
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1424
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1416
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1408
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1400
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1392
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1384
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1376
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1368
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1360
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1352
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1344
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1336
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1328
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1320
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1312
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1304
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1296
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1288
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1280
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1272
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1264
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1256
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1248
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1240
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1232
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1224
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1208
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1200
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1192
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1184
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1176
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1168
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1160
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1152
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1144
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1136
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1128
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1120
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1112
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1104
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1096
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1088
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1080
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1072
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1064
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1056
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1048
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1040
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1032
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1024
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1016
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -1008
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -1000
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -992
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -984
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -976
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -968
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -960
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -952
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -944
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -936
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -928
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -920
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -912
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -904
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -896
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -888
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -880
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -872
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 2
  ADDI t4, t4, -864
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 2
  ADDI t3, t3, -856
  ADD t3, t3, sp
  LW t3, 0(t3)
  CALL func
  ADD s0, a0, zero
  ADD a0, s0, zero
  LUI ra, 2
  ADDI ra, ra, -816
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 2
  ADDI t5, t5, -808
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t6, 2
  ADDI t6, t6, -800
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI t5, 2
  ADDI t5, t5, -792
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t6, 2
  ADDI t6, t6, -784
  ADD t6, t6, sp
  LD s8, 0(t6)
  LUI t5, 2
  ADDI t5, t5, -776
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t6, 2
  ADDI t6, t6, -768
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t5, 2
  ADDI t5, t5, -760
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t6, 2
  ADDI t6, t6, -752
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t5, 2
  ADDI t5, t5, -744
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t6, 2
  ADDI t6, t6, -736
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t5, 2
  ADDI t5, t5, -728
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t6, 2
  ADDI t6, t6, -720
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t0, 2
  ADDI t0, t0, -704
  ADD sp, sp, t0
  JALR zero, 0(ra)
func:
  LUI t0, 1048575
  ADDI t0, t0, 1648
  ADD sp, sp, t0
  LUI t5, 1
  ADDI t5, t5, -1752
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1744
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1736
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1728
  ADD t6, t6, sp
  SD s8, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1720
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1712
  ADD t6, t6, sp
  SD ra, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1704
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1696
  ADD t6, t6, sp
  SD s9, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1688
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1680
  ADD t6, t6, sp
  SD s4, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1672
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1664
  ADD t6, t6, sp
  SD s1, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1656
  ADD t5, t5, sp
  SD s3, 0(t5)
  ADD s0, a0, zero
  ADD t4, a1, zero
  SW t4, 1080(sp)
  ADD s1, a2, zero
  ADD t4, a3, zero
  SW t4, 216(sp)
  ADD t4, a4, zero
  SW t4, 48(sp)
  ADD s3, a5, zero
  ADD s3, a6, zero
  ADD t4, a7, zero
  SW t4, 8(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADD s4, t6, zero
  LW s5, 0(s4)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s4, t5, 4
  LW t4, 0(s4)
  SW t4, 40(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s4, t6, 8
  LW t4, 0(s4)
  SW t4, 952(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s4, t5, 12
  LW t4, 0(s4)
  SW t4, 0(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s4, t6, 16
  LW t4, 0(s4)
  SW t4, 16(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s4, t5, 20
  LW s9, 0(s4)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s4, t6, 24
  LW t4, 0(s4)
  SW t4, 160(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s4, t5, 28
  LW t4, 0(s4)
  SW t4, 24(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s4, t6, 32
  LW s11, 0(s4)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s4, t5, 36
  LW s11, 0(s4)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s4, t6, 40
  LW s11, 0(s4)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s4, t5, 44
  LW s11, 0(s4)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s4, t6, 48
  LW t4, 0(s4)
  SW t4, 80(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s4, t5, 52
  LW ra, 0(s4)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s4, t6, 56
  LW t4, 0(s4)
  SW t4, 120(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s4, t5, 60
  LW t4, 0(s4)
  SW t4, 920(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s4, t6, 64
  LW t4, 0(s4)
  SW t4, 136(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s4, t5, 68
  LW t4, 0(s4)
  LUI t6, 1
  ADDI t6, t6, -1968
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s4, t5, 72
  LW a1, 0(s4)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s4, t6, 76
  LW t4, 0(s4)
  SW t4, 496(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s4, t5, 80
  LW a2, 0(s4)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s4, t6, 84
  LW t4, 0(s4)
  SW t4, 104(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s4, t5, 88
  LW t4, 0(s4)
  SW t4, 56(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s4, t6, 92
  LW t4, 0(s4)
  SW t4, 176(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s4, t5, 96
  LW a5, 0(s4)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s4, t6, 100
  LW a5, 0(s4)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s4, t5, 104
  LW a5, 0(s4)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s4, t6, 108
  LW a5, 0(s4)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s4, t5, 112
  LW a5, 0(s4)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s4, t6, 116
  LW a5, 0(s4)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s4, t5, 120
  LW a5, 0(s4)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s4, t6, 124
  LW t4, 0(s4)
  SW t4, 264(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s4, t5, 128
  LW a7, 0(s4)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s4, t6, 132
  LW t4, 0(s4)
  SW t4, 128(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s4, t5, 136
  LW s7, 0(s4)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s4, t6, 140
  LW t4, 0(s4)
  SW t4, 112(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s4, t5, 144
  LW s3, 0(s4)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s3, t6, 148
  LW t4, 0(s3)
  SW t4, 32(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s3, t5, 152
  LW s8, 0(s3)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s3, t6, 156
  LW t4, 0(s3)
  SW t4, 64(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s3, t5, 160
  LW s10, 0(s3)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s3, t6, 164
  LW s10, 0(s3)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s3, t5, 168
  LW s4, 0(s3)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s3, t6, 172
  LW t4, 0(s3)
  SW t4, 88(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s3, t5, 176
  LW t4, 0(s3)
  SW t4, 536(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s3, t6, 180
  LW s2, 0(s3)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s2, t5, 184
  LW s3, 0(s2)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s2, t6, 188
  LW s3, 0(s2)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s2, t5, 192
  LW s3, 0(s2)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s2, t6, 196
  LW s3, 0(s2)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s2, t5, 200
  LW t4, 0(s2)
  SW t4, 72(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s2, t6, 204
  LW a3, 0(s2)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s2, t5, 208
  LW a3, 0(s2)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s2, t6, 212
  LW t4, 0(s2)
  SW t4, 96(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s2, t5, 216
  LW s3, 0(s2)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s2, t6, 220
  LW t4, 0(s2)
  SW t4, 504(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s2, t5, 224
  LW t4, 0(s2)
  SW t4, 872(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s2, t6, 228
  LW s4, 0(s2)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s2, t5, 232
  LW s4, 0(s2)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s2, t6, 236
  LW t4, 0(s2)
  SW t4, 168(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s2, t5, 240
  LW t4, 0(s2)
  SW t4, 376(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s2, t6, 244
  LW t4, 0(s2)
  SW t4, 200(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s2, t5, 248
  LW t4, 0(s2)
  SW t4, 1016(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s2, t6, 252
  LW t4, 0(s2)
  SW t4, 208(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s2, t5, 256
  LW a7, 0(s2)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s2, t6, 260
  LW a7, 0(s2)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s2, t5, 264
  LW a7, 0(s2)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s2, t6, 268
  LW a7, 0(s2)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s2, t5, 272
  LW t4, 0(s2)
  SW t4, 488(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s2, t6, 276
  LW t1, 0(s2)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s2, t5, 280
  LW t4, 0(s2)
  SW t4, 144(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s2, t6, 284
  LW t1, 0(s2)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s2, t5, 288
  LW t1, 0(s2)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s2, t6, 292
  LW t1, 0(s2)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s2, t5, 296
  LW t4, 0(s2)
  SW t4, 304(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s2, t6, 300
  LW t4, 0(s2)
  SW t4, 152(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s2, t5, 304
  LW s9, 0(s2)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s2, t6, 308
  LW s9, 0(s2)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s2, t5, 312
  LW t4, 0(s2)
  SW t4, 240(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s2, t6, 316
  LW s4, 0(s2)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s2, t5, 320
  LW t4, 0(s2)
  SW t4, 280(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s2, t6, 324
  LW t4, 0(s2)
  SW t4, 720(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s2, t5, 328
  LW t4, 0(s2)
  SW t4, 184(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s2, t6, 332
  LW t4, 0(s2)
  SW t4, 192(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s2, t5, 336
  LW t4, 0(s2)
  SW t4, 256(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s2, t6, 340
  LW t4, 0(s2)
  SW t4, 416(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s2, t5, 344
  LW s1, 0(s2)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 348
  LW s2, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 352
  LW s2, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 356
  LW t4, 0(s1)
  SW t4, 224(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 360
  LW s2, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 364
  LW t4, 0(s1)
  SW t4, 232(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 368
  LW t4, 0(s1)
  SW t4, 408(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 372
  LW s9, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 376
  LW s9, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 380
  LW s9, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 384
  LW s9, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 388
  LW s9, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 392
  LW t4, 0(s1)
  SW t4, 248(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 396
  LW t4, 0(s1)
  SW t4, 1376(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 400
  LW a2, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 404
  LW a6, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 408
  LW a6, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 412
  LW t4, 0(s1)
  SW t4, 808(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 416
  LW t4, 0(s1)
  SW t4, 272(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 420
  LW s4, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 424
  LW s4, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 428
  LW t4, 0(s1)
  SW t4, 824(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 432
  LW t4, 0(s1)
  SW t4, 288(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 436
  LW t4, 0(s1)
  SW t4, 296(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 440
  LW t1, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 444
  LW t1, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 448
  LW t1, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 452
  LW t1, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 456
  LW t1, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 460
  LW t4, 0(s1)
  SW t4, 320(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 464
  LW t4, 0(s1)
  SW t4, 312(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 468
  LW t1, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 472
  LW t1, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 476
  LW t4, 0(s1)
  SW t4, 328(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 480
  LW t1, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 484
  LW t1, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 488
  LW t4, 0(s1)
  SW t4, 336(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 492
  LW t1, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 496
  LW t4, 0(s1)
  SW t4, 344(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 500
  LW t1, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 504
  LW t1, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 508
  LW t4, 0(s1)
  SW t4, 360(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 512
  LW t4, 0(s1)
  SW t4, 352(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 516
  LW t1, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 520
  LW t1, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 524
  LW t4, 0(s1)
  SW t4, 368(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 528
  LW t1, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 532
  LW t4, 0(s1)
  SW t4, 832(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 536
  LW s8, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 540
  LW t4, 0(s1)
  SW t4, 400(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 544
  LW t4, 0(s1)
  SW t4, 384(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 548
  LW t4, 0(s1)
  SW t4, 392(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 552
  LW s8, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 556
  LW s8, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 560
  LW s8, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 564
  LW s8, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 568
  LW s8, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 572
  LW s8, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 576
  LW s2, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 580
  LW t4, 0(s1)
  SW t4, 1392(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 584
  LW ra, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 588
  LW t4, 0(s1)
  SW t4, 424(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 592
  LW ra, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 596
  LW ra, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 600
  LW t4, 0(s1)
  SW t4, 440(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 604
  LW t4, 0(s1)
  SW t4, 432(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 608
  LW ra, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 612
  LW t4, 0(s1)
  SW t4, 448(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 616
  LW t4, 0(s1)
  SW t4, 464(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 620
  LW t4, 0(s1)
  SW t4, 456(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 624
  LW ra, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 628
  LW ra, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 632
  LW t4, 0(s1)
  SW t4, 472(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 636
  LW ra, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 640
  LW ra, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 644
  LW ra, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 648
  LW t4, 0(s1)
  SW t4, 480(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 652
  LW t4, 0(s1)
  SW t4, 1192(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 656
  LW t4, 0(s1)
  SW t4, 672(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 660
  LW a1, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 664
  LW a1, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 668
  LW a1, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 672
  LW a1, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 676
  LW a1, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 680
  LW s3, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 684
  LW s3, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 688
  LW s3, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 692
  LW s3, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 696
  LW s3, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 700
  LW t4, 0(s1)
  SW t4, 512(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 704
  LW t4, 0(s1)
  SW t4, 520(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 708
  LW t4, 0(s1)
  SW t4, 528(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 712
  LW s5, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 716
  LW t4, 0(s1)
  SW t4, 560(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 720
  LW t4, 0(s1)
  SW t4, 544(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 724
  LW t4, 0(s1)
  SW t4, 552(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 728
  LW s5, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 732
  LW s5, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 736
  LW s5, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 740
  LW s5, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 744
  LW s5, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 748
  LW t4, 0(s1)
  SW t4, 568(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 752
  LW s5, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 756
  LW s5, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 760
  LW t4, 0(s1)
  SW t4, 576(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 764
  LW s5, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 768
  LW t4, 0(s1)
  SW t4, 584(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 772
  LW t4, 0(s1)
  SW t4, 592(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 776
  LW s5, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 780
  LW s5, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 784
  LW t4, 0(s1)
  SW t4, 616(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 788
  LW t4, 0(s1)
  SW t4, 600(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 792
  LW t4, 0(s1)
  SW t4, 608(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 796
  LW s5, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 800
  LW t4, 0(s1)
  SW t4, 640(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 804
  LW t4, 0(s1)
  SW t4, 624(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 808
  LW t4, 0(s1)
  SW t4, 632(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 812
  LW s5, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 816
  LW t4, 0(s1)
  SW t4, 1968(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 820
  LW t4, 0(s1)
  SW t4, 648(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 824
  LW t4, 0(s1)
  SW t4, 656(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 828
  LW t4, 0(s1)
  SW t4, 664(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 832
  LW a7, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 836
  LW t4, 0(s1)
  SW t4, 680(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 840
  LW t4, 0(s1)
  SW t4, 688(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 844
  LW t4, 0(s1)
  SW t4, 696(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 848
  LW t4, 0(s1)
  SW t4, 704(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 852
  LW t4, 0(s1)
  SW t4, 712(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 856
  LW a4, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 860
  LW t4, 0(s1)
  SW t4, 736(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 864
  LW t4, 0(s1)
  SW t4, 728(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 868
  LW a4, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 872
  LW a4, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 876
  LW t4, 0(s1)
  SW t4, 752(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 880
  LW t4, 0(s1)
  SW t4, 744(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 884
  LW a4, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 888
  LW a4, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 892
  LW a4, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 896
  LW t4, 0(s1)
  SW t4, 760(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 900
  LW a4, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 904
  LW a4, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 908
  LW t4, 0(s1)
  SW t4, 768(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 912
  LW a4, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 916
  LW a4, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 920
  LW a4, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 924
  LW a4, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 928
  LW a4, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 932
  LW a4, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 936
  LW a4, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 940
  LW t4, 0(s1)
  SW t4, 776(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 944
  LW a4, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 948
  LW t4, 0(s1)
  SW t4, 784(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 952
  LW a4, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 956
  LW t4, 0(s1)
  SW t4, 792(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 960
  LW a4, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 964
  LW t4, 0(s1)
  SW t4, 800(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 968
  LW a4, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 972
  LW a4, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 976
  LW t4, 0(s1)
  SW t4, 1424(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 980
  LW a6, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 984
  LW t4, 0(s1)
  SW t4, 816(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 988
  LW s4, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 992
  LW t1, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 996
  LW t1, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1000
  LW t4, 0(s1)
  SW t4, 840(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1004
  LW t1, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1008
  LW t4, 0(s1)
  SW t4, 848(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1012
  LW t4, 0(s1)
  SW t4, 856(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1016
  LW t1, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1020
  LW t4, 0(s1)
  SW t4, 864(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1024
  LW t4, 0(s1)
  SW t4, 1368(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1028
  LW s11, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1032
  LW t4, 0(s1)
  SW t4, 880(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1036
  LW s11, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1040
  LW t4, 0(s1)
  SW t4, 888(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1044
  LW s11, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1048
  LW s11, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1052
  LW t4, 0(s1)
  SW t4, 896(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1056
  LW t4, 0(s1)
  SW t4, 904(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1060
  LW t4, 0(s1)
  SW t4, 912(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1064
  LW t4, 0(s1)
  SW t4, 928(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1068
  LW t0, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1072
  LW t0, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1076
  LW t0, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1080
  LW t4, 0(s1)
  SW t4, 936(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1084
  LW t4, 0(s1)
  SW t4, 944(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1088
  LW t0, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1092
  LW s6, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1096
  LW t4, 0(s1)
  SW t4, 960(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1100
  LW t4, 0(s1)
  SW t4, 968(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1104
  LW s6, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1108
  LW t4, 0(s1)
  SW t4, 976(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1112
  LW s6, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1116
  LW s6, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1120
  LW t4, 0(s1)
  SW t4, 984(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1124
  LW s6, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1128
  LW t4, 0(s1)
  SW t4, 992(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1132
  LW s6, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1136
  LW s6, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1140
  LW t4, 0(s1)
  SW t4, 1008(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1144
  LW t4, 0(s1)
  SW t4, 1000(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1148
  LW t4, 0(s1)
  SW t4, 1992(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1152
  LW s7, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1156
  LW s7, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1160
  LW t4, 0(s1)
  SW t4, 1024(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1164
  LW s7, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1168
  LW s7, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1172
  LW s7, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1176
  LW s7, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1180
  LW s7, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1184
  LW t4, 0(s1)
  SW t4, 1032(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1188
  LW s7, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1192
  LW s7, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1196
  LW s7, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1200
  LW t4, 0(s1)
  SW t4, 1048(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1204
  LW t4, 0(s1)
  SW t4, 1040(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1208
  LW s7, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1212
  LW s7, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1216
  LW s7, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1220
  LW s7, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1224
  LW s7, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1228
  LW s7, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1232
  LW s7, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1236
  LW t4, 0(s1)
  SW t4, 1056(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1240
  LW t4, 0(s1)
  SW t4, 1064(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1244
  LW s7, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1248
  LW s7, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1252
  LW s7, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1256
  LW s7, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1260
  LW s7, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1264
  LW s7, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1268
  LW s7, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1272
  LW s7, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1276
  LW s7, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1280
  LW t4, 0(s1)
  SW t4, 1072(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s1, t6, 1284
  LW s7, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s1, t5, 1288
  LW s0, 0(s1)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1292
  LW s1, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1296
  LW t4, 0(s0)
  SW t4, 1096(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1300
  LW t4, 0(s0)
  SW t4, 1088(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1304
  LW s1, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1308
  LW s1, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1312
  LW t4, 0(s0)
  SW t4, 1104(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1316
  LW t4, 0(s0)
  SW t4, 1112(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1320
  LW s1, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1324
  LW s1, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1328
  LW t4, 0(s0)
  SW t4, 1120(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1332
  LW t4, 0(s0)
  SW t4, 1136(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1336
  LW t4, 0(s0)
  SW t4, 1128(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1340
  LW s1, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1344
  LW s1, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1348
  LW s1, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1352
  LW s1, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1356
  LW s1, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1360
  LW s1, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1364
  LW t4, 0(s0)
  SW t4, 1152(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1368
  LW t4, 0(s0)
  SW t4, 1144(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1372
  LW s1, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1376
  LW s1, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1380
  LW s1, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1384
  LW s1, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1388
  LW t4, 0(s0)
  SW t4, 1160(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1392
  LW s1, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1396
  LW t4, 0(s0)
  SW t4, 1168(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1400
  LW s1, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1404
  LW s1, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1408
  LW s1, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1412
  LW s1, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1416
  LW s1, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1420
  LW s1, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1424
  LW s1, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1428
  LW t4, 0(s0)
  SW t4, 1176(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1432
  LW t4, 0(s0)
  SW t4, 1184(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1436
  LW ra, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1440
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1444
  LW ra, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1448
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1452
  LW t4, 0(s0)
  SW t4, 1208(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1456
  LW t4, 0(s0)
  SW t4, 1200(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1460
  LW ra, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1464
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1468
  LW ra, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1472
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1476
  LW t4, 0(s0)
  SW t4, 1216(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1480
  LW t4, 0(s0)
  SW t4, 1224(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1484
  LW t4, 0(s0)
  SW t4, 1232(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1488
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1492
  LW ra, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1496
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1500
  LW ra, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1504
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1508
  LW t4, 0(s0)
  SW t4, 1240(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1512
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1516
  LW t4, 0(s0)
  SW t4, 1248(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1520
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1524
  LW t4, 0(s0)
  SW t4, 1256(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1528
  LW t4, 0(s0)
  SW t4, 1280(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1532
  LW t4, 0(s0)
  SW t4, 1264(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1536
  LW t4, 0(s0)
  SW t4, 1272(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1540
  LW ra, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1544
  LW t4, 0(s0)
  SW t4, 1288(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1548
  LW ra, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1552
  LW t4, 0(s0)
  SW t4, 1296(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1556
  LW ra, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1560
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1564
  LW ra, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1568
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1572
  LW t4, 0(s0)
  SW t4, 1320(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1576
  LW t4, 0(s0)
  SW t4, 1304(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1580
  LW t4, 0(s0)
  SW t4, 1312(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1584
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1588
  LW t4, 0(s0)
  SW t4, 1328(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1592
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1596
  LW t4, 0(s0)
  SW t4, 1336(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1600
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1604
  LW ra, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1608
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1612
  LW t4, 0(s0)
  SW t4, 1344(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1616
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1620
  LW ra, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1624
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1628
  LW t4, 0(s0)
  SW t4, 1568(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1632
  LW t4, 0(s0)
  SW t4, 1352(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1636
  LW t4, 0(s0)
  SW t4, 1360(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1640
  LW t1, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1644
  LW t1, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1648
  LW t1, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1652
  LW t1, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1656
  LW t1, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1660
  LW t1, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1664
  LW s9, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1668
  LW t4, 0(s0)
  SW t4, 1384(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1672
  LW s9, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1676
  LW s2, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1680
  LW s2, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1684
  LW s2, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1688
  LW s2, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1692
  LW t4, 0(s0)
  SW t4, 1408(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1696
  LW t4, 0(s0)
  SW t4, 1400(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1700
  LW s2, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1704
  LW t4, 0(s0)
  SW t4, 1416(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1708
  LW a4, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1712
  LW t4, 0(s0)
  SW t4, 1432(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1716
  LW a4, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1720
  LW a4, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1724
  LW a4, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1728
  LW t4, 0(s0)
  SW t4, 1440(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1732
  LW a4, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1736
  LW t4, 0(s0)
  SW t4, 1448(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1740
  LW a4, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1744
  LW a4, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1748
  LW t4, 0(s0)
  SW t4, 1464(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1752
  LW t4, 0(s0)
  SW t4, 1456(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1756
  LW a4, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1760
  LW a4, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1764
  LW a4, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1768
  LW t4, 0(s0)
  SW t4, 1480(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1772
  LW t4, 0(s0)
  SW t4, 1472(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1776
  LW a4, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1780
  LW a4, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1784
  LW a4, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1788
  LW t4, 0(s0)
  SW t4, 1488(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1792
  LW a4, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1796
  LW a4, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1800
  LW t4, 0(s0)
  SW t4, 1496(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1804
  LW t4, 0(s0)
  SW t4, 1504(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1808
  LW a4, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1812
  LW a4, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1816
  LW t4, 0(s0)
  SW t4, 1520(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1820
  LW t4, 0(s0)
  SW t4, 1512(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1824
  LW a4, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1828
  LW t4, 0(s0)
  SW t4, 1528(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1832
  LW a4, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1836
  LW t4, 0(s0)
  SW t4, 1552(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1840
  LW t4, 0(s0)
  SW t4, 1536(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1844
  LW t4, 0(s0)
  SW t4, 1544(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1848
  LW t4, 0(s0)
  SW t4, 1560(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1852
  LW a4, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1856
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1860
  LW ra, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1864
  LW t4, 0(s0)
  SW t4, 1576(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1868
  LW t4, 0(s0)
  SW t4, 1584(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1872
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1876
  LW t4, 0(s0)
  SW t4, 1592(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1880
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1884
  LW t4, 0(s0)
  SW t4, 1600(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1888
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1892
  LW ra, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1896
  LW t4, 0(s0)
  SW t4, 1608(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1900
  LW ra, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1904
  LW t4, 0(s0)
  SW t4, 1616(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1908
  LW ra, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1912
  LW t4, 0(s0)
  SW t4, 1632(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1916
  LW t4, 0(s0)
  SW t4, 1624(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1920
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1924
  LW t4, 0(s0)
  SW t4, 1640(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1928
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1932
  LW ra, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1936
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1940
  LW ra, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1944
  LW t4, 0(s0)
  SW t4, 1648(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1948
  LW ra, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1952
  LW t4, 0(s0)
  SW t4, 1672(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1956
  LW t4, 0(s0)
  SW t4, 1656(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1960
  LW t4, 0(s0)
  SW t4, 1664(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1964
  LW ra, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1968
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1972
  LW t4, 0(s0)
  SW t4, 1680(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1976
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1980
  LW ra, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1984
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1988
  LW t4, 0(s0)
  SW t4, 1696(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 1992
  LW t4, 0(s0)
  SW t4, 1688(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 1996
  LW ra, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 2000
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 2004
  LW ra, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 2008
  LW t4, 0(s0)
  SW t4, 1704(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 2012
  LW ra, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 2016
  LW t4, 0(s0)
  SW t4, 1712(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 2020
  LW t4, 0(s0)
  SW t4, 1720(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 2024
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 2028
  LW t4, 0(s0)
  SW t4, 1728(sp)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 2032
  LW ra, 0(s0)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 2036
  LW ra, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADDI s0, t5, 2040
  LW t4, 0(s0)
  SW t4, 1736(sp)
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADDI s0, t6, 2044
  LW ra, 0(s0)
  LUI s0, 1
  ADDI s0, s0, -2048
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW t4, 0(ra)
  SW t4, 1744(sp)
  LUI ra, 1
  ADDI ra, ra, -2044
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADD s0, t5, ra
  LW ra, 0(s0)
  LUI s0, 1
  ADDI s0, s0, -2040
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW t4, 0(ra)
  SW t4, 1752(sp)
  LUI ra, 1
  ADDI ra, ra, -2036
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADD s0, t6, ra
  LW ra, 0(s0)
  LUI s0, 1
  ADDI s0, s0, -2032
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW t4, 0(ra)
  SW t4, 1760(sp)
  LUI ra, 1
  ADDI ra, ra, -2028
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADD s0, t5, ra
  LW ra, 0(s0)
  LUI s0, 1
  ADDI s0, s0, -2024
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW t4, 0(ra)
  SW t4, 1768(sp)
  LUI ra, 1
  ADDI ra, ra, -2020
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADD s0, t6, ra
  LW ra, 0(s0)
  LUI s0, 1
  ADDI s0, s0, -2016
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW t4, 0(ra)
  SW t4, 1776(sp)
  LUI ra, 1
  ADDI ra, ra, -2012
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADD s0, t5, ra
  LW t4, 0(s0)
  SW t4, 1784(sp)
  LUI s0, 1
  ADDI s0, s0, -2008
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW s0, 0(ra)
  LUI s0, 1
  ADDI s0, s0, -2004
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW t4, 0(ra)
  SW t4, 1792(sp)
  LUI ra, 1
  ADDI ra, ra, -2000
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADD s0, t6, ra
  LW ra, 0(s0)
  LUI s0, 1
  ADDI s0, s0, -1996
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW s0, 0(ra)
  LUI s0, 1
  ADDI s0, s0, -1992
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW t4, 0(ra)
  SW t4, 1800(sp)
  LUI ra, 1
  ADDI ra, ra, -1988
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADD s0, t5, ra
  LW t4, 0(s0)
  SW t4, 1808(sp)
  LUI s0, 1
  ADDI s0, s0, -1984
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW s0, 0(ra)
  LUI s0, 1
  ADDI s0, s0, -1980
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW s0, 0(ra)
  LUI s0, 1
  ADDI s0, s0, -1976
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW s0, 0(ra)
  LUI s0, 1
  ADDI s0, s0, -1972
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW t4, 0(ra)
  SW t4, 1816(sp)
  LUI ra, 1
  ADDI ra, ra, -1968
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADD s0, t6, ra
  LW t4, 0(s0)
  SW t4, 1824(sp)
  LUI s0, 1
  ADDI s0, s0, -1964
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW t4, 0(ra)
  SW t4, 1832(sp)
  LUI ra, 1
  ADDI ra, ra, -1960
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADD s0, t5, ra
  LW ra, 0(s0)
  LUI s0, 1
  ADDI s0, s0, -1956
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW s0, 0(ra)
  LUI s0, 1
  ADDI s0, s0, -1952
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW s0, 0(ra)
  LUI s0, 1
  ADDI s0, s0, -1948
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW t4, 0(ra)
  SW t4, 1840(sp)
  LUI ra, 1
  ADDI ra, ra, -1944
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADD s0, t6, ra
  LW t4, 0(s0)
  SW t4, 1848(sp)
  LUI s0, 1
  ADDI s0, s0, -1940
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW t4, 0(ra)
  SW t4, 1856(sp)
  LUI ra, 1
  ADDI ra, ra, -1936
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADD s0, t5, ra
  LW ra, 0(s0)
  LUI s0, 1
  ADDI s0, s0, -1932
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW t4, 0(ra)
  SW t4, 1864(sp)
  LUI ra, 1
  ADDI ra, ra, -1928
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADD s0, t6, ra
  LW t4, 0(s0)
  SW t4, 1872(sp)
  LUI s0, 1
  ADDI s0, s0, -1924
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW t4, 0(ra)
  SW t4, 1880(sp)
  LUI ra, 1
  ADDI ra, ra, -1920
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADD s0, t5, ra
  LW ra, 0(s0)
  LUI s0, 1
  ADDI s0, s0, -1916
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW t4, 0(ra)
  SW t4, 1888(sp)
  LUI ra, 1
  ADDI ra, ra, -1912
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADD s0, t6, ra
  LW ra, 0(s0)
  LUI s0, 1
  ADDI s0, s0, -1908
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW t4, 0(ra)
  SW t4, 1896(sp)
  LUI ra, 1
  ADDI ra, ra, -1904
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADD s0, t5, ra
  LW t4, 0(s0)
  SW t4, 1904(sp)
  LUI s0, 1
  ADDI s0, s0, -1900
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW s0, 0(ra)
  LUI s0, 1
  ADDI s0, s0, -1896
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW s0, 0(ra)
  LUI s0, 1
  ADDI s0, s0, -1892
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW s0, 0(ra)
  LUI s0, 1
  ADDI s0, s0, -1888
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW s0, 0(ra)
  LUI s0, 1
  ADDI s0, s0, -1884
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW s0, 0(ra)
  LUI s0, 1
  ADDI s0, s0, -1880
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW s0, 0(ra)
  LUI s0, 1
  ADDI s0, s0, -1876
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW t4, 0(ra)
  SW t4, 1912(sp)
  LUI ra, 1
  ADDI ra, ra, -1872
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADD s0, t6, ra
  LW t4, 0(s0)
  SW t4, 1920(sp)
  LUI s0, 1
  ADDI s0, s0, -1868
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW s0, 0(ra)
  LUI s0, 1
  ADDI s0, s0, -1864
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW t4, 0(ra)
  SW t4, 1928(sp)
  LUI ra, 1
  ADDI ra, ra, -1860
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADD s0, t5, ra
  LW t4, 0(s0)
  SW t4, 1936(sp)
  LUI s0, 1
  ADDI s0, s0, -1856
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW t4, 0(ra)
  SW t4, 1944(sp)
  LUI ra, 1
  ADDI ra, ra, -1852
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADD s0, t6, ra
  LW ra, 0(s0)
  LUI s0, 1
  ADDI s0, s0, -1848
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW s0, 0(ra)
  LUI s0, 1
  ADDI s0, s0, -1844
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW t4, 0(ra)
  SW t4, 1952(sp)
  LUI ra, 1
  ADDI ra, ra, -1840
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADD s0, t5, ra
  LW ra, 0(s0)
  LUI s0, 1
  ADDI s0, s0, -1836
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW s0, 0(ra)
  LUI s0, 1
  ADDI s0, s0, -1832
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW s0, 0(ra)
  LUI s0, 1
  ADDI s0, s0, -1828
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW s0, 0(ra)
  LUI s0, 1
  ADDI s0, s0, -1824
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW t4, 0(ra)
  SW t4, 1960(sp)
  LUI ra, 1
  ADDI ra, ra, -1820
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADD s0, t6, ra
  LW ra, 0(s0)
  LUI s0, 1
  ADDI s0, s0, -1816
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s0
  LW s0, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1812
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADD s5, t5, ra
  LW t4, 0(s5)
  SW t4, 1976(sp)
  LUI s5, 1
  ADDI s5, s5, -1808
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s5
  LW s5, 0(ra)
  LUI s5, 1
  ADDI s5, s5, -1804
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s5
  LW t4, 0(ra)
  SW t4, 1984(sp)
  LUI ra, 1
  ADDI ra, ra, -1800
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADD s5, t6, ra
  LW ra, 0(s5)
  LUI s5, 1
  ADDI s5, s5, -1796
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s5
  LW s5, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1792
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADD s6, t5, ra
  LW t4, 0(s6)
  SW t4, 2000(sp)
  LUI s6, 1
  ADDI s6, s6, -1788
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s6
  LW s6, 0(ra)
  LUI s6, 1
  ADDI s6, s6, -1784
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s6
  LW t4, 0(ra)
  SW t4, 2008(sp)
  LUI ra, 1
  ADDI ra, ra, -1780
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADD s6, t6, ra
  LW t4, 0(s6)
  SW t4, 2016(sp)
  LUI s6, 1
  ADDI s6, s6, -1776
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s6
  LW s6, 0(ra)
  LUI s6, 1
  ADDI s6, s6, -1772
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s6
  LW t4, 0(ra)
  SW t4, 2024(sp)
  LUI ra, 1
  ADDI ra, ra, -1768
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADD s6, t5, ra
  LW t4, 0(s6)
  SW t4, 2032(sp)
  LUI s6, 1
  ADDI s6, s6, -1764
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s6
  LW t4, 0(ra)
  SW t4, 2040(sp)
  LUI ra, 1
  ADDI ra, ra, -1760
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADD s6, t6, ra
  LW ra, 0(s6)
  LUI s6, 1
  ADDI s6, s6, -1756
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s6
  LW s6, 0(ra)
  LUI s6, 1
  ADDI s6, s6, -1752
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s6
  LW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -2048
  ADD ra, ra, sp
  SW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1748
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADD s6, t5, ra
  LW t4, 0(s6)
  LUI t6, 1
  ADDI t6, t6, -2040
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI s6, 1
  ADDI s6, s6, -1744
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s6
  LW s6, 0(ra)
  LUI s6, 1
  ADDI s6, s6, -1740
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s6
  LW s6, 0(ra)
  LUI s6, 1
  ADDI s6, s6, -1736
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s6
  LW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -2032
  ADD ra, ra, sp
  SW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1732
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADD s6, t5, ra
  LW ra, 0(s6)
  LUI s6, 1
  ADDI s6, s6, -1728
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s6
  LW s6, 0(ra)
  LUI s6, 1
  ADDI s6, s6, -1724
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s6
  LW s6, 0(ra)
  LUI s6, 1
  ADDI s6, s6, -1720
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s6
  LW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -2024
  ADD ra, ra, sp
  SW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1716
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADD s6, t6, ra
  LW t4, 0(s6)
  LUI t5, 1
  ADDI t5, t5, -2016
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI s6, 1
  ADDI s6, s6, -1712
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s6
  LW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -2008
  ADD ra, ra, sp
  SW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1708
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADD s6, t6, ra
  LW ra, 0(s6)
  LUI s6, 1
  ADDI s6, s6, -1704
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s6
  LW s6, 0(ra)
  LUI s6, 1
  ADDI s6, s6, -1700
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s6
  LW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -2000
  ADD ra, ra, sp
  SW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1696
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADD s6, t5, ra
  LW t4, 0(s6)
  LUI t6, 1
  ADDI t6, t6, -1992
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI s6, 1
  ADDI s6, s6, -1692
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s6
  LW s6, 0(ra)
  LUI s6, 1
  ADDI s6, s6, -1688
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s6
  LW s6, 0(ra)
  LUI s6, 1
  ADDI s6, s6, -1684
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s6
  LW s6, 0(ra)
  LUI s6, 1
  ADDI s6, s6, -1680
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s6
  LW s6, 0(ra)
  LUI s6, 1
  ADDI s6, s6, -1676
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s6
  LW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1984
  ADD ra, ra, sp
  SW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1672
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  ADD s6, t5, ra
  LW ra, 0(s6)
  LUI s6, 1
  ADDI s6, s6, -1668
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s6
  LW s6, 0(ra)
  LUI s6, 1
  ADDI s6, s6, -1664
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s6
  LW s6, 0(ra)
  LUI s6, 1
  ADDI s6, s6, -1660
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s6
  LW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1976
  ADD ra, ra, sp
  SW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1656
  LUI t6, 1
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  ADD s6, t6, ra
  LW ra, 0(s6)
  LUI s6, 1
  ADDI s6, s6, -1652
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s6
  LW s6, 0(ra)
  LUI s6, 1
  ADDI s6, s6, -1648
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s6
  LW s6, 0(ra)
  LUI s6, 1
  ADDI s6, s6, -1644
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s6
  LW s6, 0(ra)
  LUI s6, 1
  ADDI s6, s6, -1640
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, s6
  LW s6, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1636
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1960
  ADD t2, t2, sp
  SW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1632
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, t2
  LW t2, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1628
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1952
  ADD t2, t2, sp
  SW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1624
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, t2
  LW t2, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1620
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW ra, 0(t2)
  LUI ra, 1
  ADDI ra, ra, -1616
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW ra, 0(t2)
  LUI ra, 1
  ADDI ra, ra, -1612
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW ra, 0(t2)
  LUI ra, 1
  ADDI ra, ra, -1608
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1944
  ADD t2, t2, sp
  SW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1604
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, t2
  LW t2, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1600
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW ra, 0(t2)
  LUI ra, 1
  ADDI ra, ra, -1596
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1936
  ADD t2, t2, sp
  SW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1592
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, t2
  LW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1928
  ADD ra, ra, sp
  SW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1588
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW ra, 0(t2)
  LUI ra, 1
  ADDI ra, ra, -1584
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1920
  ADD t2, t2, sp
  SW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1580
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, t2
  LW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1912
  ADD ra, ra, sp
  SW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1576
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1904
  ADD t2, t2, sp
  SW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1572
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, t2
  LW t2, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1568
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW ra, 0(t2)
  LUI ra, 1
  ADDI ra, ra, -1564
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW ra, 0(t2)
  LUI ra, 1
  ADDI ra, ra, -1560
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW ra, 0(t2)
  LUI ra, 1
  ADDI ra, ra, -1556
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1896
  ADD t2, t2, sp
  SW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1552
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, t2
  LW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1888
  ADD ra, ra, sp
  SW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1548
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1880
  ADD t2, t2, sp
  SW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1544
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, t2
  LW t2, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1540
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1872
  ADD t2, t2, sp
  SW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1536
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, t2
  LW t2, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1532
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1864
  ADD t2, t2, sp
  SW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1528
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, t2
  LW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1856
  ADD ra, ra, sp
  SW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1524
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1848
  ADD t2, t2, sp
  SW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1520
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, t2
  LW t2, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1516
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW ra, 0(t2)
  LUI ra, 1
  ADDI ra, ra, -1512
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1840
  ADD t2, t2, sp
  SW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1508
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, t2
  LW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1832
  ADD ra, ra, sp
  SW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1504
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1824
  ADD t2, t2, sp
  SW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1500
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, t2
  LW t2, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1496
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1816
  ADD t2, t2, sp
  SW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1492
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, t2
  LW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1808
  ADD ra, ra, sp
  SW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1488
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW ra, 0(t2)
  LUI ra, 1
  ADDI ra, ra, -1484
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1800
  ADD t2, t2, sp
  SW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1480
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, t2
  LW t2, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1476
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW ra, 0(t2)
  LUI ra, 1
  ADDI ra, ra, -1472
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW ra, 0(t2)
  LUI ra, 1
  ADDI ra, ra, -1468
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW ra, 0(t2)
  LUI ra, 1
  ADDI ra, ra, -1464
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW ra, 0(t2)
  LUI ra, 1
  ADDI ra, ra, -1460
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW ra, 0(t2)
  LUI ra, 1
  ADDI ra, ra, -1456
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1792
  ADD t2, t2, sp
  SW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1452
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, t2
  LW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1784
  ADD ra, ra, sp
  SW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1448
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1776
  ADD t2, t2, sp
  SW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1444
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, t2
  LW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1768
  ADD ra, ra, sp
  SW t4, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1440
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW ra, 0(t2)
  LUI ra, 1
  ADDI ra, ra, -1436
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1760
  ADD t2, t2, sp
  SW t4, 0(t2)
  LUI t2, 1
  ADDI t2, t2, -1432
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  ADD ra, ra, t2
  LW t2, 0(ra)
  LUI ra, 1
  ADDI ra, ra, -1428
  LUI t2, 1
  ADDI t2, t2, -1648
  ADD t2, t2, sp
  ADD t2, t2, ra
  LW ra, 0(t2)
  LUI t4, 1
  ADDI t4, t4, -1816
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW ra, t4, s6
  LW t4, 1872(sp)
  MULW s6, ra, t4
  LUI t4, 1
  ADDI t4, t4, -1800
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW ra, s6, t4
  LW t4, 280(sp)
  MULW s6, ra, t4
  LW t4, 1776(sp)
  ADDW ra, s6, t4
  MULW s6, a4, s10
  MULW s10, s6, s2
  MULW s2, s10, s11
  MULW s6, s2, s9
  MULW s2, s6, a6
  LUI t4, 1
  ADDI t4, t4, -2000
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s6, s2, t4
  ADDW s2, ra, s6
  MULW s6, s5, s0
  ADDW s0, s2, s6
  LW t4, 856(sp)
  ADDW s2, s0, t4
  LW t4, 1896(sp)
  MULW s0, a7, t4
  MULW s5, s0, s1
  ADDW s0, s2, s5
  LW t4, 1264(sp)
  MULW s1, t4, t0
  ADDW s2, s0, s1
  MULW s0, a2, s8
  ADDW s1, s2, s0
  ADDW s0, s1, s3
  MULW s1, a5, s4
  LW t4, 848(sp)
  MULW s2, s1, t4
  MULW s1, s2, s7
  ADDW s2, s0, s1
  ADDW s0, s2, a1
  ADDW s1, s0, t1
  ADDW s0, s1, a3
  LUI t4, 1
  ADDI t4, t4, -1968
  ADD t4, t4, sp
  LW t4, 0(t4)
  LW t3, 1992(sp)
  MULW s1, t4, t3
  LW t4, 1968(sp)
  MULW s2, s1, t4
  ADDW s1, s0, s2
  LW t4, 1568(sp)
  LUI t3, 1
  ADDI t3, t3, -1824
  ADD t3, t3, sp
  LW t3, 0(t3)
  MULW s0, t4, t3
  ADDW s2, s1, s0
  LW t4, 1424(sp)
  LW t3, 1984(sp)
  MULW s0, t4, t3
  LW t4, 696(sp)
  MULW s1, s0, t4
  LW t4, 1392(sp)
  MULW s0, s1, t4
  LW t4, 1920(sp)
  MULW s1, s0, t4
  ADDW s0, s2, s1
  LW t4, 1376(sp)
  ADDW s1, s0, t4
  LW t4, 1664(sp)
  ADDW s0, s1, t4
  LW t4, 1368(sp)
  ADDW s1, s0, t4
  LW t4, 1616(sp)
  LW t3, 576(sp)
  MULW s0, t4, t3
  LW t4, 144(sp)
  MULW s2, s0, t4
  ADDW s0, s1, s2
  LW t4, 1856(sp)
  LW t3, 1192(sp)
  MULW s1, t4, t3
  ADDW s2, s0, s1
  LW t4, 1080(sp)
  LW t3, 968(sp)
  MULW s0, t4, t3
  LW t4, 984(sp)
  MULW s1, s0, t4
  ADDW s0, s2, s1
  LW t4, 1312(sp)
  LW t3, 48(sp)
  MULW s1, t4, t3
  ADDW s2, s0, s1
  LW t4, 1016(sp)
  LW t3, 1216(sp)
  MULW s0, t4, t3
  ADDW s1, s2, s0
  LUI t4, 1
  ADDI t4, t4, -2024
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s0, s1, t4
  LUI t4, 1
  ADDI t4, t4, -1816
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s1, s0, t4
  LW t4, 1056(sp)
  ADDW s0, s1, t4
  LW t4, 1560(sp)
  LW t3, 952(sp)
  MULW s1, t4, t3
  LW t4, 928(sp)
  MULW s2, s1, t4
  ADDW s1, s0, s2
  LW t4, 600(sp)
  LW t3, 920(sp)
  MULW s0, t4, t3
  ADDW s2, s1, s0
  LW t4, 440(sp)
  LW t3, 872(sp)
  MULW s0, t4, t3
  ADDW s1, s2, s0
  LW t4, 112(sp)
  LW t3, 832(sp)
  MULW s0, t4, t3
  ADDW s2, s1, s0
  LW t4, 1792(sp)
  ADDW s0, s2, t4
  LW t4, 824(sp)
  ADDW s1, s0, t4
  LW t4, 1168(sp)
  ADDW s0, s1, t4
  LW t4, 1720(sp)
  LW t3, 808(sp)
  MULW s1, t4, t3
  ADDW s2, s0, s1
  LW t4, 672(sp)
  ADDW s0, s2, t4
  LW t4, 1808(sp)
  LW t3, 1784(sp)
  MULW s1, t4, t3
  LW t4, 976(sp)
  MULW s2, s1, t4
  ADDW s1, s0, s2
  LUI t4, 1
  ADDI t4, t4, -1936
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s0, s1, t4
  LW t4, 8(sp)
  LW t3, 720(sp)
  MULW s1, t4, t3
  LUI t4, 1
  ADDI t4, t4, -1960
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s2, s1, t4
  LW t4, 696(sp)
  MULW s1, s2, t4
  LW t4, 904(sp)
  MULW s2, s1, t4
  LW t4, 1408(sp)
  MULW s1, s2, t4
  LUI t4, 1
  ADDI t4, t4, -1872
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s2, s1, t4
  ADDW s1, s0, s2
  LW t4, 984(sp)
  ADDW s0, s1, t4
  LW t4, 1456(sp)
  LW t3, 1360(sp)
  MULW s1, t4, t3
  ADDW s2, s0, s1
  LW t4, 1152(sp)
  ADDW s0, s2, t4
  LW t4, 1216(sp)
  ADDW s1, s0, t4
  LW t4, 672(sp)
  ADDW s0, s1, t4
  LUI t4, 1
  ADDI t4, t4, -1792
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s1, s0, t4
  LW t4, 536(sp)
  LW t3, 1008(sp)
  MULW s0, t4, t3
  ADDW s2, s1, s0
  LW t4, 1448(sp)
  ADDW s0, s2, t4
  LW t4, 256(sp)
  LW t3, 1232(sp)
  MULW s1, t4, t3
  ADDW s2, s0, s1
  LW t4, 504(sp)
  LW t3, 320(sp)
  MULW s0, t4, t3
  LW t4, 216(sp)
  MULW s1, s0, t4
  ADDW s0, s2, s1
  LW t4, 856(sp)
  ADDW s1, s0, t4
  LW t4, 1672(sp)
  ADDW s0, s1, t4
  LW t4, 496(sp)
  LW t3, 1224(sp)
  MULW s1, t4, t3
  ADDW s2, s0, s1
  LW t4, 1064(sp)
  ADDW s0, s2, t4
  LW t4, 2032(sp)
  LUI t3, 1
  ADDI t3, t3, -2000
  ADD t3, t3, sp
  LW t3, 0(t3)
  MULW s1, t4, t3
  ADDW s2, s0, s1
  LW t4, 1480(sp)
  LW t3, 1736(sp)
  MULW s0, t4, t3
  LW t4, 1096(sp)
  MULW s1, s0, t4
  ADDW s0, s2, s1
  LW t4, 488(sp)
  ADDW s1, s0, t4
  LW t4, 416(sp)
  LW t3, 2000(sp)
  MULW s0, t4, t3
  LW t4, 2040(sp)
  MULW s2, s0, t4
  ADDW s0, s1, s2
  LW t4, 408(sp)
  ADDW s1, s0, t4
  LW t4, 1344(sp)
  ADDW s0, s1, t4
  LW t4, 752(sp)
  ADDW s1, s0, t4
  LW t4, 760(sp)
  ADDW s0, s1, t4
  LW t4, 752(sp)
  ADDW s1, s0, t4
  LUI t4, 1
  ADDI t4, t4, -1856
  ADD t4, t4, sp
  LW t4, 0(t4)
  LW t3, 616(sp)
  MULW s0, t4, t3
  ADDW s2, s1, s0
  LW t4, 968(sp)
  LW t3, 1272(sp)
  MULW s0, t4, t3
  LUI t4, 1
  ADDI t4, t4, -1792
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s1, s0, t4
  LW t4, 592(sp)
  MULW s0, s1, t4
  LW t4, 1640(sp)
  MULW s1, s0, t4
  LW t4, 840(sp)
  MULW s0, s1, t4
  ADDW s1, s2, s0
  LW t4, 472(sp)
  ADDW s0, s1, t4
  LW t4, 376(sp)
  LUI t3, 1
  ADDI t3, t3, -1920
  ADD t3, t3, sp
  LW t3, 0(t3)
  MULW s1, t4, t3
  LW t4, 1952(sp)
  MULW s2, s1, t4
  LW t4, 304(sp)
  MULW s1, s2, t4
  LW t4, 464(sp)
  MULW s2, s1, t4
  ADDW s1, s0, s2
  LW t4, 344(sp)
  LW t3, 280(sp)
  MULW s0, t4, t3
  LUI t4, 1
  ADDI t4, t4, -1952
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s2, s0, t4
  LW t4, 2000(sp)
  MULW s0, s2, t4
  ADDW s2, s1, s0
  LUI t4, 1
  ADDI t4, t4, -1776
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s0, s2, t4
  LW t4, 1680(sp)
  LW t3, 264(sp)
  MULW s1, t4, t3
  LW t4, 760(sp)
  MULW s2, s1, t4
  LW t4, 256(sp)
  MULW s1, s2, t4
  ADDW s2, s0, s1
  LW t4, 0(sp)
  ADDW s0, s2, t4
  LW t4, 1896(sp)
  LW t3, 328(sp)
  MULW s1, t4, t3
  LW t4, 240(sp)
  MULW s2, s1, t4
  LW t4, 768(sp)
  MULW s1, s2, t4
  LW t4, 1632(sp)
  MULW s2, s1, t4
  LW t4, 104(sp)
  MULW s1, s2, t4
  LW t4, 912(sp)
  MULW s2, s1, t4
  ADDW s1, s0, s2
  LUI t4, 1
  ADDI t4, t4, -1864
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s0, s1, t4
  LW t4, 960(sp)
  ADDW s1, s0, t4
  LW t4, 1728(sp)
  LW t3, 1768(sp)
  MULW s0, t4, t3
  ADDW s2, s1, s0
  LW t4, 648(sp)
  LUI t3, 1
  ADDI t3, t3, -2040
  ADD t3, t3, sp
  LW t3, 0(t3)
  MULW s0, t4, t3
  LW t4, 400(sp)
  MULW s1, s0, t4
  LW t4, 1792(sp)
  MULW s0, s1, t4
  LW t4, 1720(sp)
  MULW s1, s0, t4
  LW t4, 392(sp)
  MULW s0, s1, t4
  LW t4, 568(sp)
  MULW s1, s0, t4
  LW t4, 232(sp)
  MULW s0, s1, t4
  LUI t4, 1
  ADDI t4, t4, -1768
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s1, s0, t4
  LW t4, 0(sp)
  MULW s0, s1, t4
  LW t4, 2024(sp)
  MULW s1, s0, t4
  ADDW s0, s2, s1
  LW t4, 336(sp)
  LW t3, 1936(sp)
  MULW s1, t4, t3
  ADDW s2, s0, s1
  LW t4, 1032(sp)
  ADDW s0, s2, t4
  LW t4, 640(sp)
  LW t3, 736(sp)
  MULW s1, t4, t3
  LW t4, 1832(sp)
  MULW s2, s1, t4
  ADDW s1, s0, s2
  LW t4, 1000(sp)
  ADDW s0, s1, t4
  LUI t4, 1
  ADDI t4, t4, -1792
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s1, s0, t4
  LW t4, 288(sp)
  ADDW s0, s1, t4
  LW t4, 1280(sp)
  LUI t3, 1
  ADDI t3, t3, -1832
  ADD t3, t3, sp
  LW t3, 0(t3)
  MULW s1, t4, t3
  ADDW s2, s0, s1
  LUI t4, 1
  ADDI t4, t4, -1848
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s0, s2, t4
  LW t4, 32(sp)
  ADDW s1, s0, t4
  LW t4, 216(sp)
  ADDW s0, s1, t4
  LW t4, 800(sp)
  ADDW s1, s0, t4
  LW t4, 1816(sp)
  ADDW s0, s1, t4
  LW t4, 1688(sp)
  ADDW s1, s0, t4
  LW t4, 320(sp)
  ADDW s0, s1, t4
  LW t4, 208(sp)
  ADDW s1, s0, t4
  LW t4, 520(sp)
  ADDW s0, s1, t4
  LW t4, 296(sp)
  LW t3, 528(sp)
  MULW s1, t4, t3
  LW t4, 560(sp)
  MULW s2, s1, t4
  LW t4, 200(sp)
  MULW s1, s2, t4
  LW t4, 1024(sp)
  MULW s2, s1, t4
  ADDW s1, s0, s2
  LW t4, 1328(sp)
  LW t3, 1984(sp)
  MULW s0, t4, t3
  LW t4, 1136(sp)
  MULW s2, s0, t4
  LW t4, 848(sp)
  MULW s0, s2, t4
  LW t4, 1648(sp)
  MULW s2, s0, t4
  ADDW s0, s1, s2
  LW t4, 1520(sp)
  LW t3, 792(sp)
  MULW s1, t4, t3
  ADDW s2, s0, s1
  LW t4, 296(sp)
  ADDW s0, s2, t4
  LW t4, 440(sp)
  LW t3, 768(sp)
  MULW s1, t4, t3
  ADDW s2, s0, s1
  LW t4, 880(sp)
  LW t3, 176(sp)
  MULW s0, t4, t3
  ADDW s1, s2, s0
  LW t4, 1600(sp)
  ADDW s0, s1, t4
  LW t4, 1336(sp)
  ADDW s1, s0, t4
  LW t4, 1752(sp)
  ADDW s0, s1, t4
  LUI t4, 1
  ADDI t4, t4, -1880
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s1, s0, t4
  LW t4, 1864(sp)
  LW t3, 1656(sp)
  MULW s0, t4, t3
  LUI t4, 1
  ADDI t4, t4, -2008
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s2, s0, t4
  ADDW s0, s1, s2
  LW t4, 168(sp)
  LW t3, 1472(sp)
  MULW s1, t4, t3
  ADDW s2, s0, s1
  LW t4, 1432(sp)
  ADDW s0, s2, t4
  LW t4, 1944(sp)
  LW t3, 160(sp)
  MULW s1, t4, t3
  LW t4, 1256(sp)
  MULW s2, s1, t4
  ADDW s1, s0, s2
  LUI t4, 1
  ADDI t4, t4, -1832
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s0, s1, t4
  LW t4, 1384(sp)
  ADDW s1, s0, t4
  LW t4, 896(sp)
  LW t3, 1624(sp)
  MULW s0, t4, t3
  LW t4, 1216(sp)
  MULW s2, s0, t4
  LW t4, 1400(sp)
  MULW s0, s2, t4
  ADDW s2, s1, s0
  LW t4, 1088(sp)
  LW t3, 312(sp)
  MULW s0, t4, t3
  LW t4, 136(sp)
  MULW s1, s0, t4
  LW t4, 664(sp)
  MULW s0, s1, t4
  LW t4, 1648(sp)
  MULW s1, s0, t4
  LW t4, 1688(sp)
  MULW s0, s1, t4
  ADDW s1, s2, s0
  LW t4, 1888(sp)
  ADDW s0, s1, t4
  LW t4, 1552(sp)
  ADDW s1, s0, t4
  LUI t4, 1
  ADDI t4, t4, -1912
  ADD t4, t4, sp
  LW t4, 0(t4)
  LW t3, 128(sp)
  MULW s0, t4, t3
  ADDW s2, s1, s0
  LW t4, 1336(sp)
  ADDW s0, s2, t4
  LUI t4, 1
  ADDI t4, t4, -1976
  ADD t4, t4, sp
  LW t4, 0(t4)
  LW t3, 1048(sp)
  MULW s1, t4, t3
  ADDW s2, s0, s1
  LW t4, 1800(sp)
  LUI t3, 1
  ADDI t3, t3, -1800
  ADD t3, t3, sp
  LW t3, 0(t3)
  MULW s0, t4, t3
  LW t4, 1512(sp)
  MULW s1, s0, t4
  ADDW s0, s2, s1
  LW t4, 424(sp)
  LW t3, 1552(sp)
  MULW s1, t4, t3
  LW t4, 424(sp)
  MULW s2, s1, t4
  ADDW s1, s0, s2
  LW t4, 1056(sp)
  LW t3, 1592(sp)
  MULW s0, t4, t3
  ADDW s2, s1, s0
  LUI t4, 1
  ADDI t4, t4, -1960
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1896
  ADD t3, t3, sp
  LW t3, 0(t3)
  MULW s0, t4, t3
  ADDW s1, s2, s0
  LW t4, 1384(sp)
  ADDW s0, s1, t4
  LW t4, 888(sp)
  LW t3, 448(sp)
  MULW s1, t4, t3
  ADDW s2, s0, s1
  LW t4, 1128(sp)
  ADDW s0, s2, t4
  LW t4, 432(sp)
  ADDW s1, s0, t4
  LW t4, 1952(sp)
  ADDW s0, s1, t4
  LW t4, 1208(sp)
  ADDW s1, s0, t4
  LW t4, 552(sp)
  ADDW s0, s1, t4
  LW t4, 360(sp)
  ADDW s1, s0, t4
  LW t4, 248(sp)
  LUI t3, 1
  ADDI t3, t3, -1992
  ADD t3, t3, sp
  LW t3, 0(t3)
  MULW s0, t4, t3
  ADDW s2, s1, s0
  LW t4, 512(sp)
  ADDW s0, s2, t4
  LW t4, 1288(sp)
  ADDW s1, s0, t4
  LW t4, 1112(sp)
  LUI t3, 1
  ADDI t3, t3, -1872
  ADD t3, t3, sp
  LW t3, 0(t3)
  MULW s0, t4, t3
  LW t4, 120(sp)
  MULW s2, s0, t4
  ADDW s0, s1, s2
  LW t4, 680(sp)
  ADDW s1, s0, t4
  LW t4, 192(sp)
  ADDW s0, s1, t4
  LUI t4, 1
  ADDI t4, t4, -1808
  ADD t4, t4, sp
  LW t4, 0(t4)
  LW t3, 1144(sp)
  MULW s1, t4, t3
  ADDW s2, s0, s1
  LW t4, 776(sp)
  LW t3, 976(sp)
  MULW s0, t4, t3
  LW t4, 632(sp)
  MULW s1, s0, t4
  LW t4, 1576(sp)
  MULW s0, s1, t4
  ADDW s1, s2, s0
  LW t4, 1760(sp)
  LUI t3, 1
  ADDI t3, t3, -1904
  ADD t3, t3, sp
  LW t3, 0(t3)
  MULW s0, t4, t3
  ADDW s2, s1, s0
  LW t4, 992(sp)
  ADDW s0, s2, t4
  LW t4, 352(sp)
  LW t3, 944(sp)
  MULW s1, t4, t3
  LW t4, 112(sp)
  MULW s2, s1, t4
  LUI t4, 1
  ADDI t4, t4, -1872
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s1, s2, t4
  ADDW s2, s0, s1
  LW t4, 1608(sp)
  LW t3, 1440(sp)
  MULW s0, t4, t3
  ADDW s1, s2, s0
  LW t4, 104(sp)
  ADDW s0, s1, t4
  LW t4, 144(sp)
  ADDW s1, s0, t4
  LW t4, 728(sp)
  ADDW s0, s1, t4
  LW t4, 480(sp)
  ADDW s1, s0, t4
  LW t4, 1824(sp)
  ADDW s0, s1, t4
  LW t4, 776(sp)
  LW t3, 992(sp)
  MULW s1, t4, t3
  ADDW s2, s0, s1
  LUI t4, 1
  ADDI t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s0, s2, t4
  LW t4, 1920(sp)
  LW t3, 1416(sp)
  MULW s1, t4, t3
  ADDW s2, s0, s1
  LW t4, 1072(sp)
  ADDW s0, s2, t4
  LW t4, 1912(sp)
  ADDW s1, s0, t4
  LW t4, 1744(sp)
  ADDW s0, s1, t4
  LW t4, 600(sp)
  LW t3, 1256(sp)
  MULW s1, t4, t3
  LW t4, 1600(sp)
  MULW s2, s1, t4
  LW t4, 96(sp)
  MULW s1, s2, t4
  LW t4, 544(sp)
  MULW s2, s1, t4
  ADDW s1, s0, s2
  LW t4, 1464(sp)
  LW t3, 88(sp)
  MULW s0, t4, t3
  ADDW s2, s1, s0
  LW t4, 1904(sp)
  LW t3, 632(sp)
  MULW s0, t4, t3
  ADDW s1, s2, s0
  LW t4, 624(sp)
  ADDW s0, s1, t4
  LW t4, 368(sp)
  LW t3, 80(sp)
  MULW s1, t4, t3
  LW t4, 184(sp)
  MULW s2, s1, t4
  ADDW s1, s0, s2
  LW t4, 1872(sp)
  LW t3, 936(sp)
  MULW s0, t4, t3
  ADDW s2, s1, s0
  LW t4, 1320(sp)
  LW t3, 1200(sp)
  MULW s0, t4, t3
  LW t4, 864(sp)
  MULW s1, s0, t4
  LW t4, 744(sp)
  MULW s0, s1, t4
  ADDW s1, s2, s0
  LW t4, 56(sp)
  LW t3, 1504(sp)
  MULW s0, t4, t3
  ADDW s2, s1, s0
  LW t4, 1848(sp)
  LW t3, 520(sp)
  MULW s0, t4, t3
  LW t4, 1696(sp)
  MULW s1, s0, t4
  ADDW s0, s2, s1
  LW t4, 2000(sp)
  ADDW s1, s0, t4
  LW t4, 1496(sp)
  ADDW s0, s1, t4
  LW t4, 1176(sp)
  ADDW s1, s0, t4
  LW t4, 1296(sp)
  LW t3, 576(sp)
  MULW s0, t4, t3
  ADDW s2, s1, s0
  LW t4, 1288(sp)
  LUI t3, 1
  ADDI t3, t3, -2048
  ADD t3, t3, sp
  LW t3, 0(t3)
  MULW s0, t4, t3
  LW t4, 272(sp)
  MULW s1, s0, t4
  LW t4, 1488(sp)
  MULW s0, s1, t4
  ADDW s1, s2, s0
  LUI t4, 1
  ADDI t4, t4, -1928
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s0, s1, t4
  LW t4, 1184(sp)
  LW t3, 1584(sp)
  MULW s1, t4, t3
  LW t4, 656(sp)
  MULW s2, s1, t4
  LW t4, 1824(sp)
  MULW s1, s2, t4
  ADDW s2, s0, s1
  LW t4, 72(sp)
  LW t3, 1928(sp)
  MULW s0, t4, t3
  LUI t4, 1
  ADDI t4, t4, -1912
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s1, s0, t4
  ADDW s0, s2, s1
  LUI t4, 1
  ADDI t4, t4, -2000
  ADD t4, t4, sp
  LW t4, 0(t4)
  LW t3, 1976(sp)
  MULW s1, t4, t3
  ADDW s2, s0, s1
  LUI t4, 1
  ADDI t4, t4, -2016
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s0, s2, t4
  LW t4, 2008(sp)
  ADDW s1, s0, t4
  LW t4, 1160(sp)
  ADDW s0, s1, t4
  LW t4, 1880(sp)
  LW t3, 1536(sp)
  MULW s1, t4, t3
  LUI t4, 1
  ADDI t4, t4, -1944
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s2, s1, t4
  ADDW s1, s0, s2
  LW t4, 1784(sp)
  ADDW s0, s1, t4
  LW t4, 1544(sp)
  ADDW s1, s0, t4
  LW t4, 224(sp)
  ADDW s0, s1, t4
  LW t4, 1312(sp)
  ADDW s1, s0, t4
  LW t4, 1776(sp)
  ADDW s0, s1, t4
  LW t4, 1120(sp)
  LW t3, 64(sp)
  MULW s1, t4, t3
  ADDW s2, s0, s1
  LW t4, 1352(sp)
  LUI t3, 1
  ADDI t3, t3, -1840
  ADD t3, t3, sp
  LW t3, 0(t3)
  MULW s0, t4, t3
  LW t4, 912(sp)
  MULW s1, s0, t4
  ADDW s0, s2, s1
  LUI t4, 1
  ADDI t4, t4, -1784
  ADD t4, t4, sp
  LW t4, 0(t4)
  LW t3, 144(sp)
  MULW s1, t4, t3
  ADDW s2, s0, s1
  LW t4, 960(sp)
  LUI t3, 1
  ADDI t3, t3, -1984
  ADD t3, t3, sp
  LW t3, 0(t3)
  MULW s0, t4, t3
  ADDW s1, s2, s0
  LW t4, 608(sp)
  LW t3, 584(sp)
  MULW s0, t4, t3
  ADDW s2, s1, s0
  LW t4, 1264(sp)
  ADDW s0, s2, t4
  LW t4, 1248(sp)
  LW t3, 1840(sp)
  MULW s1, t4, t3
  LW t4, 1288(sp)
  MULW s2, s1, t4
  ADDW s1, s0, s2
  LW t4, 56(sp)
  LW t3, 704(sp)
  MULW s0, t4, t3
  ADDW s2, s1, s0
  LW t4, 1576(sp)
  ADDW s0, s2, t4
  LW t4, 1688(sp)
  LW t3, 704(sp)
  MULW s1, t4, t3
  ADDW s2, s0, s1
  LW t4, 456(sp)
  LW t3, 816(sp)
  MULW s0, t4, t3
  LUI t4, 1
  ADDI t4, t4, -1760
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s1, s0, t4
  ADDW s0, s2, s1
  LW t4, 344(sp)
  ADDW s1, s0, t4
  LW t4, 1312(sp)
  LW t3, 272(sp)
  MULW s0, t4, t3
  LW t4, 1960(sp)
  MULW s2, s0, t4
  ADDW s0, s1, s2
  LW t4, 48(sp)
  LW t3, 1456(sp)
  MULW s1, t4, t3
  ADDW s2, s0, s1
  LW t4, 2016(sp)
  LW t3, 40(sp)
  MULW s0, t4, t3
  ADDW s1, s2, s0
  LW t4, 1272(sp)
  LW t3, 904(sp)
  MULW s0, t4, t3
  LW t4, 1304(sp)
  MULW s2, s0, t4
  ADDW s0, s1, s2
  LW t4, 520(sp)
  LW t3, 32(sp)
  MULW s1, t4, t3
  LW t4, 24(sp)
  MULW s2, s1, t4
  LW t4, 688(sp)
  MULW s1, s2, t4
  LW t4, 16(sp)
  MULW s2, s1, t4
  ADDW s1, s0, s2
  LUI t4, 1
  ADDI t4, t4, -1888
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s0, s1, t4
  LW t4, 1104(sp)
  ADDW s1, s0, t4
  LW t4, 1976(sp)
  LW t3, 8(sp)
  MULW s0, t4, t3
  LW t4, 1720(sp)
  MULW s2, s0, t4
  LW t4, 384(sp)
  MULW s0, s2, t4
  ADDW s2, s1, s0
  LW t4, 1528(sp)
  LW t3, 1664(sp)
  MULW s0, t4, t3
  LW t4, 0(sp)
  MULW s1, s0, t4
  ADDW s0, s2, s1
  LW t4, 1704(sp)
  ADDW s1, s0, t4
  LW t4, 368(sp)
  ADDW s0, s1, t4
  LW t4, 152(sp)
  LW t3, 1712(sp)
  MULW s1, t4, t3
  ADDW s2, s0, s1
  LW t4, 784(sp)
  ADDW s0, s2, t4
  LW t4, 1040(sp)
  ADDW s1, s0, t4
  LW t4, 1240(sp)
  ADDW s0, s1, t4
  LW t4, 712(sp)
  ADDW s1, s0, t4
  ADD a0, s1, zero
  LUI t5, 1
  ADDI t5, t5, -1752
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1744
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1736
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1728
  ADD t6, t6, sp
  LD s8, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1720
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI ra, 1
  ADDI ra, ra, -1712
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 1
  ADDI t6, t6, -1704
  ADD t6, t6, sp
  LD s11, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1696
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1688
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1680
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1672
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1664
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1656
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t0, 1
  ADDI t0, t0, -1648
  ADD sp, sp, t0
  JALR zero, 0(ra)
