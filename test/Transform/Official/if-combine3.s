.global main
.global func
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -1248
  SD ra, 248(sp)
  SD s0, 256(sp)
  SD s1, 264(sp)
  SD s2, 272(sp)
  SD s3, 280(sp)
  SD s4, 288(sp)
  SD s5, 296(sp)
  SD s6, 304(sp)
  SD s7, 312(sp)
  SD s8, 320(sp)
  SD s9, 328(sp)
  SD s10, 336(sp)
  SD s11, 344(sp)
  ADDI a0, zero, 324
  CALL _sysy_starttime
  CALL getint
  ADD t4, a0, zero
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb1
bb1:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 8(sp)
  SLTI s3, t4, 100
  BNE s3, zero, bb9
  # implict jump to bb2
bb2:
  ADDI s3, sp, 644
  ADDI s4, sp, 648
  ADDI s5, sp, 652
  ADDI s6, sp, 656
  ADDI s7, sp, 660
  ADDI s8, sp, 664
  ADDI s9, sp, 668
  ADDI s10, sp, 672
  ADDI t4, sp, 676
  SD t4, 240(sp)
  ADDI t4, sp, 680
  SD t4, 360(sp)
  ADDI t4, sp, 684
  SD t4, 368(sp)
  ADDI t4, sp, 688
  SD t4, 376(sp)
  ADDI t4, sp, 692
  SD t4, 632(sp)
  ADDI t4, sp, 696
  SD t4, 624(sp)
  ADDI t4, sp, 700
  SD t4, 616(sp)
  ADDI t4, sp, 704
  SD t4, 608(sp)
  ADDI t4, sp, 708
  SD t4, 600(sp)
  ADDI t4, sp, 712
  SD t4, 592(sp)
  ADDI t4, sp, 716
  SD t4, 584(sp)
  ADDI t4, sp, 720
  SD t4, 464(sp)
  ADDI t4, sp, 724
  SD t4, 568(sp)
  ADDI t4, sp, 728
  SD t4, 560(sp)
  ADDI t4, sp, 732
  SD t4, 552(sp)
  ADDI t4, sp, 736
  SD t4, 544(sp)
  ADDI t4, sp, 740
  SD t4, 536(sp)
  ADDI t4, sp, 744
  SD t4, 528(sp)
  ADDI t4, sp, 748
  SD t4, 520(sp)
  ADDI t4, sp, 752
  SD t4, 512(sp)
  ADDI t4, sp, 756
  SD t4, 504(sp)
  ADDI t4, sp, 760
  SD t4, 496(sp)
  ADDI t4, sp, 764
  SD t4, 488(sp)
  ADDI t4, sp, 768
  SD t4, 480(sp)
  ADDI t4, sp, 772
  SD t4, 472(sp)
  ADDI t4, sp, 776
  SD t4, 576(sp)
  ADDI t4, sp, 780
  SD t4, 1240(sp)
  ADDI t4, sp, 784
  SD t4, 1232(sp)
  ADDI t4, sp, 788
  SD t4, 1224(sp)
  ADDI t4, sp, 792
  SD t4, 1216(sp)
  ADDI t4, sp, 796
  SD t4, 1208(sp)
  ADDI t4, sp, 800
  SD t4, 1200(sp)
  ADDI t4, sp, 804
  SD t4, 1192(sp)
  ADDI t4, sp, 808
  SD t4, 1184(sp)
  ADDI t4, sp, 812
  SD t4, 1176(sp)
  ADDI t4, sp, 816
  SD t4, 1168(sp)
  ADDI t4, sp, 820
  SD t4, 1160(sp)
  ADDI t4, sp, 824
  SD t4, 1152(sp)
  ADDI t4, sp, 828
  SD t4, 1040(sp)
  ADDI t4, sp, 832
  SD t4, 1136(sp)
  ADDI t4, sp, 836
  SD t4, 1128(sp)
  ADDI t4, sp, 840
  SD t4, 1120(sp)
  ADDI t4, sp, 844
  SD t4, 1112(sp)
  ADDI t4, sp, 848
  SD t4, 1104(sp)
  ADDI t4, sp, 852
  SD t4, 1096(sp)
  ADDI t4, sp, 856
  SD t4, 1088(sp)
  ADDI t4, sp, 860
  SD t4, 1080(sp)
  ADDI t4, sp, 864
  SD t4, 1072(sp)
  ADDI t4, sp, 868
  SD t4, 1064(sp)
  ADDI t4, sp, 872
  SD t4, 1056(sp)
  ADDI t4, sp, 876
  SD t4, 1048(sp)
  ADDI t4, sp, 880
  SD t4, 448(sp)
  ADDI t4, sp, 884
  SD t4, 1144(sp)
  ADDI t4, sp, 888
  SD t4, 232(sp)
  ADDI t4, sp, 892
  SD t4, 224(sp)
  ADDI t4, sp, 896
  SD t4, 216(sp)
  ADDI t4, sp, 900
  SD t4, 208(sp)
  ADDI t4, sp, 904
  SD t4, 200(sp)
  ADDI t4, sp, 908
  SD t4, 192(sp)
  ADDI t4, sp, 912
  SD t4, 184(sp)
  ADDI t4, sp, 916
  SD t4, 176(sp)
  ADDI t4, sp, 920
  SD t4, 168(sp)
  ADDI t4, sp, 924
  SD t4, 160(sp)
  ADDI t4, sp, 928
  SD t4, 152(sp)
  ADDI t4, sp, 932
  SD t4, 24(sp)
  ADDI t4, sp, 936
  SD t4, 136(sp)
  ADDI t4, sp, 940
  SD t4, 128(sp)
  ADDI t4, sp, 944
  SD t4, 16(sp)
  ADDI t4, sp, 948
  SD t4, 32(sp)
  ADDI t4, sp, 952
  SD t4, 40(sp)
  ADDI t4, sp, 956
  SD t4, 48(sp)
  ADDI t4, sp, 960
  SD t4, 56(sp)
  ADDI t4, sp, 964
  SD t4, 64(sp)
  ADDI t4, sp, 968
  SD t4, 72(sp)
  ADDI t4, sp, 972
  SD t4, 80(sp)
  ADDI t4, sp, 976
  SD t4, 88(sp)
  ADDI t4, sp, 980
  SD t4, 96(sp)
  ADDI t4, sp, 984
  SD t4, 104(sp)
  ADDI t4, sp, 988
  SD t4, 112(sp)
  ADDI t4, sp, 992
  SD t4, 120(sp)
  ADDI t4, sp, 996
  SD t4, 352(sp)
  ADDI t4, sp, 1000
  SD t4, 456(sp)
  ADDI t4, sp, 1004
  SD t4, 144(sp)
  ADDI t4, sp, 1008
  SD t4, 440(sp)
  ADDI t4, sp, 1012
  SD t4, 432(sp)
  ADDI t4, sp, 1016
  SD t4, 424(sp)
  ADDI t4, sp, 1020
  SD t4, 416(sp)
  ADDI t4, sp, 1024
  SD t4, 408(sp)
  ADDI t4, sp, 1028
  SD t4, 400(sp)
  ADDI t4, sp, 1032
  SD t4, 392(sp)
  ADDI t4, sp, 1036
  SD t4, 384(sp)
  ADD s2, zero, zero
  ADD s1, zero, zero
  # implict jump to bb3
bb3:
  ADD s0, s1, zero
  ADD s11, s2, zero
  LW t4, 0(sp)
  BLT s11, t4, bb5
  # implict jump to bb4
bb4:
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 328
  CALL _sysy_stoptime
  ADD a0, zero, zero
  LD ra, 248(sp)
  LD s0, 256(sp)
  LD s1, 264(sp)
  LD s2, 272(sp)
  LD s3, 280(sp)
  LD s4, 288(sp)
  LD s5, 296(sp)
  LD s6, 304(sp)
  LD s7, 312(sp)
  LD s8, 320(sp)
  LD s9, 328(sp)
  LD s10, 336(sp)
  LD s11, 344(sp)
  ADDI sp, sp, 1248
  JALR zero, 0(ra)
bb5:
  ADDI ra, zero, 1
  SW ra, 0(s3)
  ADDI ra, zero, 2
  SW ra, 0(s4)
  ADDI ra, zero, 3
  SW ra, 0(s5)
  ADDI ra, zero, 4
  SW ra, 0(s6)
  ADDI ra, zero, 5
  SW ra, 0(s7)
  ADDI ra, zero, 6
  SW ra, 0(s8)
  ADDI ra, zero, 7
  SW ra, 0(s9)
  ADDI ra, zero, 8
  SW ra, 0(s10)
  ADDI ra, zero, 9
  LD t4, 240(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 10
  LD t4, 360(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 11
  LD t4, 368(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 12
  LD t4, 376(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 13
  LD t4, 632(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 14
  LD t4, 624(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 15
  LD t4, 616(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 16
  LD t4, 608(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 17
  LD t4, 600(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 18
  LD t4, 592(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 19
  LD t4, 584(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 20
  LD t4, 464(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 21
  LD t4, 568(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 22
  LD t4, 560(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 23
  LD t4, 552(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 24
  LD t4, 544(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 25
  LD t4, 536(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 26
  LD t4, 528(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 27
  LD t4, 520(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 28
  LD t4, 512(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 29
  LD t4, 504(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 30
  LD t4, 496(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 31
  LD t4, 488(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 32
  LD t4, 480(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 33
  LD t4, 472(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 34
  LD t4, 576(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 35
  LD t4, 1240(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 36
  LD t4, 1232(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 37
  LD t4, 1224(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 38
  LD t4, 1216(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 39
  LD t4, 1208(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 40
  LD t4, 1200(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 41
  LD t4, 1192(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 42
  LD t4, 1184(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 43
  LD t4, 1176(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 44
  LD t4, 1168(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 45
  LD t4, 1160(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 46
  LD t4, 1152(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 47
  LD t4, 1040(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 48
  LD t4, 1136(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 49
  LD t4, 1128(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 50
  LD t4, 1120(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 51
  LD t4, 1112(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 52
  LD t4, 1104(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 53
  LD t4, 1096(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 54
  LD t4, 1088(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 55
  LD t4, 1080(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 56
  LD t4, 1072(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 57
  LD t4, 1064(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 58
  LD t4, 1056(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 59
  LD t4, 1048(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 60
  LD t4, 448(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 61
  LD t4, 1144(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 62
  LD t4, 232(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 63
  LD t4, 224(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 64
  LD t4, 216(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 65
  LD t4, 208(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 66
  LD t4, 200(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 67
  LD t4, 192(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 68
  LD t4, 184(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 69
  LD t4, 176(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 70
  LD t4, 168(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 71
  LD t4, 160(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 72
  LD t4, 152(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 73
  LD t4, 24(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 74
  LD t4, 136(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 75
  LD t4, 128(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 76
  LD t4, 16(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 77
  LD t4, 32(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 78
  LD t4, 40(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 79
  LD t4, 48(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 80
  LD t4, 56(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 81
  LD t4, 64(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 82
  LD t4, 72(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 83
  LD t4, 80(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 84
  LD t4, 88(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 85
  LD t4, 96(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 86
  LD t4, 104(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 87
  LD t4, 112(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 88
  LD t4, 120(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 89
  LD t4, 352(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 90
  LD t4, 456(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 91
  LD t4, 144(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 92
  LD t4, 440(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 93
  LD t4, 432(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 94
  LD t4, 424(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 95
  LD t4, 416(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 96
  LD t4, 408(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 97
  LD t4, 400(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 98
  LD t4, 392(sp)
  SW ra, 0(t4)
  ADDI ra, zero, 99
  LD t4, 384(sp)
  SW ra, 0(t4)
  ADDIW s11, s11, 1
  ADD ra, zero, zero
  # implict jump to bb6
bb6:
  ADD t0, s0, zero
  ADD t1, ra, zero
  SLTI t2, t1, 100
  BNE t2, zero, bb8
  # implict jump to bb7
bb7:
  LUI t2, 16
  ADDIW t2, t2, -1
  REMW t2, t0, t2
  ADD s2, s11, zero
  ADD s1, t2, zero
  JAL zero, bb3
bb8:
  SLLIW s1, t1, 2
  ADDI t5, sp, 640
  ADD s1, t5, s1
  LW s1, 0(s1)
  ADDW s1, t0, s1
  ADDIW s2, t1, 1
  ADD ra, s2, zero
  ADD s0, s1, zero
  JAL zero, bb6
bb9:
  LW t4, 8(sp)
  SLLIW s0, t4, 2
  ADDI t4, sp, 640
  ADD s0, t4, s0
  SW zero, 0(s0)
  LW t4, 8(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 4(sp)
  JAL zero, bb1
func:
  ADDI sp, sp, -1184
  SD s11, 208(sp)
  SD ra, 224(sp)
  SD s0, 232(sp)
  SD s1, 240(sp)
  SD s2, 248(sp)
  SD s3, 256(sp)
  SD s4, 264(sp)
  SD s5, 272(sp)
  SD s6, 280(sp)
  SD s7, 288(sp)
  SD s8, 296(sp)
  SD s9, 304(sp)
  SD s10, 312(sp)
  ADD t4, a0, zero
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb11
bb11:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 8(sp)
  SLTI s3, t4, 100
  BNE s3, zero, bb19
  # implict jump to bb12
bb12:
  ADDI s3, sp, 596
  ADDI s4, sp, 600
  ADDI s5, sp, 604
  ADDI s6, sp, 608
  ADDI s7, sp, 612
  ADDI s8, sp, 616
  ADDI s9, sp, 620
  ADDI s10, sp, 624
  ADDI s11, sp, 628
  ADDI t0, sp, 632
  ADDI t1, sp, 636
  ADDI t2, sp, 640
  ADDI a1, sp, 644
  ADDI a2, sp, 648
  ADDI a3, sp, 652
  ADDI a4, sp, 656
  ADDI a5, sp, 660
  ADDI t4, sp, 664
  SD t4, 320(sp)
  ADDI t4, sp, 668
  SD t4, 328(sp)
  ADDI t4, sp, 672
  SD t4, 336(sp)
  ADDI t4, sp, 676
  SD t4, 344(sp)
  ADDI t4, sp, 680
  SD t4, 352(sp)
  ADDI t4, sp, 684
  SD t4, 360(sp)
  ADDI t4, sp, 688
  SD t4, 584(sp)
  ADDI t4, sp, 692
  SD t4, 576(sp)
  ADDI t4, sp, 696
  SD t4, 568(sp)
  ADDI t4, sp, 700
  SD t4, 560(sp)
  ADDI t4, sp, 704
  SD t4, 552(sp)
  ADDI t4, sp, 708
  SD t4, 544(sp)
  ADDI t4, sp, 712
  SD t4, 536(sp)
  ADDI t4, sp, 716
  SD t4, 528(sp)
  ADDI t4, sp, 720
  SD t4, 520(sp)
  ADDI t4, sp, 724
  SD t4, 512(sp)
  ADDI t4, sp, 728
  SD t4, 400(sp)
  ADDI t4, sp, 732
  SD t4, 496(sp)
  ADDI t4, sp, 736
  SD t4, 488(sp)
  ADDI t4, sp, 740
  SD t4, 480(sp)
  ADDI t4, sp, 744
  SD t4, 472(sp)
  ADDI t4, sp, 748
  SD t4, 464(sp)
  ADDI t4, sp, 752
  SD t4, 456(sp)
  ADDI t4, sp, 756
  SD t4, 448(sp)
  ADDI t4, sp, 760
  SD t4, 440(sp)
  ADDI t4, sp, 764
  SD t4, 432(sp)
  ADDI t4, sp, 768
  SD t4, 424(sp)
  ADDI t4, sp, 772
  SD t4, 416(sp)
  ADDI t4, sp, 776
  SD t4, 408(sp)
  ADDI t4, sp, 780
  SD t4, 504(sp)
  ADDI t4, sp, 784
  SD t4, 1168(sp)
  ADDI t4, sp, 788
  SD t4, 1160(sp)
  ADDI t4, sp, 792
  SD t4, 1152(sp)
  ADDI t4, sp, 796
  SD t4, 1144(sp)
  ADDI t4, sp, 800
  SD t4, 1136(sp)
  ADDI t4, sp, 804
  SD t4, 1128(sp)
  ADDI t4, sp, 808
  SD t4, 1120(sp)
  ADDI t4, sp, 812
  SD t4, 1112(sp)
  ADDI t4, sp, 816
  SD t4, 1104(sp)
  ADDI t4, sp, 820
  SD t4, 1096(sp)
  ADDI t4, sp, 824
  SD t4, 1088(sp)
  ADDI t4, sp, 828
  SD t4, 992(sp)
  ADDI t4, sp, 832
  SD t4, 1072(sp)
  ADDI t4, sp, 836
  SD t4, 1064(sp)
  ADDI t4, sp, 840
  SD t4, 1056(sp)
  ADDI t4, sp, 844
  SD t4, 1048(sp)
  ADDI t4, sp, 848
  SD t4, 1040(sp)
  ADDI t4, sp, 852
  SD t4, 1032(sp)
  ADDI t4, sp, 856
  SD t4, 1024(sp)
  ADDI t4, sp, 860
  SD t4, 1016(sp)
  ADDI t4, sp, 864
  SD t4, 1008(sp)
  ADDI t4, sp, 868
  SD t4, 384(sp)
  ADDI t4, sp, 872
  SD t4, 1000(sp)
  ADDI t4, sp, 876
  SD t4, 1080(sp)
  ADDI t4, sp, 880
  SD t4, 200(sp)
  ADDI t4, sp, 884
  SD t4, 192(sp)
  ADDI t4, sp, 888
  SD t4, 184(sp)
  ADDI t4, sp, 892
  SD t4, 176(sp)
  ADDI t4, sp, 896
  SD t4, 168(sp)
  ADDI t4, sp, 900
  SD t4, 160(sp)
  ADDI t4, sp, 904
  SD t4, 152(sp)
  ADDI t4, sp, 908
  SD t4, 144(sp)
  ADDI t4, sp, 912
  SD t4, 136(sp)
  ADDI t4, sp, 916
  SD t4, 128(sp)
  ADDI t4, sp, 920
  SD t4, 16(sp)
  ADDI t4, sp, 924
  SD t4, 112(sp)
  ADDI t4, sp, 928
  SD t4, 104(sp)
  ADDI t4, sp, 932
  SD t4, 96(sp)
  ADDI t4, sp, 936
  SD t4, 88(sp)
  ADDI t4, sp, 940
  SD t4, 80(sp)
  ADDI t4, sp, 944
  SD t4, 72(sp)
  ADDI t4, sp, 948
  SD t4, 64(sp)
  ADDI t4, sp, 952
  SD t4, 56(sp)
  ADDI t4, sp, 956
  SD t4, 48(sp)
  ADDI t4, sp, 960
  SD t4, 40(sp)
  ADDI t4, sp, 964
  SD t4, 32(sp)
  ADDI t4, sp, 968
  SD t4, 24(sp)
  ADDI t4, sp, 972
  SD t4, 216(sp)
  ADDI t4, sp, 976
  SD t4, 392(sp)
  ADDI t4, sp, 980
  SD t4, 120(sp)
  ADDI t4, sp, 984
  SD t4, 376(sp)
  ADDI t4, sp, 988
  SD t4, 368(sp)
  ADD s2, zero, zero
  ADD s1, zero, zero
  # implict jump to bb13
bb13:
  ADD s0, s1, zero
  ADD t6, s2, zero
  LW t4, 0(sp)
  BLT t6, t4, bb15
  # implict jump to bb14
bb14:
  ADD a0, s0, zero
  LD s11, 208(sp)
  LD ra, 224(sp)
  LD s0, 232(sp)
  LD s1, 240(sp)
  LD s2, 248(sp)
  LD s3, 256(sp)
  LD s4, 264(sp)
  LD s5, 272(sp)
  LD s6, 280(sp)
  LD s7, 288(sp)
  LD s8, 296(sp)
  LD s9, 304(sp)
  LD s10, 312(sp)
  ADDI sp, sp, 1184
  JALR zero, 0(ra)
bb15:
  ADDI a0, zero, 1
  SW a0, 0(s3)
  ADDI a0, zero, 2
  SW a0, 0(s4)
  ADDI a0, zero, 3
  SW a0, 0(s5)
  ADDI a0, zero, 4
  SW a0, 0(s6)
  ADDI a0, zero, 5
  SW a0, 0(s7)
  ADDI a0, zero, 6
  SW a0, 0(s8)
  ADDI a0, zero, 7
  SW a0, 0(s9)
  ADDI a0, zero, 8
  SW a0, 0(s10)
  ADDI a0, zero, 9
  SW a0, 0(s11)
  ADDI a0, zero, 10
  SW a0, 0(t0)
  ADDI a0, zero, 11
  SW a0, 0(t1)
  ADDI a0, zero, 12
  SW a0, 0(t2)
  ADDI a0, zero, 13
  SW a0, 0(a1)
  ADDI a0, zero, 14
  SW a0, 0(a2)
  ADDI a0, zero, 15
  SW a0, 0(a3)
  ADDI a0, zero, 16
  SW a0, 0(a4)
  ADDI a0, zero, 17
  SW a0, 0(a5)
  ADDI a0, zero, 18
  LD t4, 320(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 19
  LD t4, 328(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 20
  LD t4, 336(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 21
  LD t4, 344(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 22
  LD t4, 352(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 23
  LD t4, 360(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 24
  LD t4, 584(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 25
  LD t4, 576(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 26
  LD t4, 568(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 27
  LD t4, 560(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 28
  LD t4, 552(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 29
  LD t4, 544(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 30
  LD t4, 536(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 31
  LD t4, 528(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 32
  LD t4, 520(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 33
  LD t4, 512(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 34
  LD t4, 400(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 35
  LD t4, 496(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 36
  LD t4, 488(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 37
  LD t4, 480(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 38
  LD t4, 472(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 39
  LD t4, 464(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 40
  LD t4, 456(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 41
  LD t4, 448(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 42
  LD t4, 440(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 43
  LD t4, 432(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 44
  LD t4, 424(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 45
  LD t4, 416(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 46
  LD t4, 408(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 47
  LD t4, 504(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 48
  LD t4, 1168(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 49
  LD t4, 1160(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 50
  LD t4, 1152(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 51
  LD t4, 1144(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 52
  LD t4, 1136(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 53
  LD t4, 1128(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 54
  LD t4, 1120(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 55
  LD t4, 1112(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 56
  LD t4, 1104(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 57
  LD t4, 1096(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 58
  LD t4, 1088(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 59
  LD t4, 992(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 60
  LD t4, 1072(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 61
  LD t4, 1064(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 62
  LD t4, 1056(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 63
  LD t4, 1048(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 64
  LD t4, 1040(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 65
  LD t4, 1032(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 66
  LD t4, 1024(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 67
  LD t4, 1016(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 68
  LD t4, 1008(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 69
  LD t4, 384(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 70
  LD t4, 1000(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 71
  LD t4, 1080(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 72
  LD t4, 200(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 73
  LD t4, 192(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 74
  LD t4, 184(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 75
  LD t4, 176(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 76
  LD t4, 168(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 77
  LD t4, 160(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 78
  LD t4, 152(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 79
  LD t4, 144(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 80
  LD t4, 136(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 81
  LD t4, 128(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 82
  LD t4, 16(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 83
  LD t4, 112(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 84
  LD t4, 104(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 85
  LD t4, 96(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 86
  LD t4, 88(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 87
  LD t4, 80(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 88
  LD t4, 72(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 89
  LD t4, 64(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 90
  LD t4, 56(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 91
  LD t4, 48(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 92
  LD t4, 40(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 93
  LD t4, 32(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 94
  LD t4, 24(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 95
  LD t4, 216(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 96
  LD t4, 392(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 97
  LD t4, 120(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 98
  LD t4, 376(sp)
  SW a0, 0(t4)
  ADDI a0, zero, 99
  LD t4, 368(sp)
  SW a0, 0(t4)
  ADDIW t4, t6, 1
  SW t4, 12(sp)
  ADD t6, zero, zero
  # implict jump to bb16
bb16:
  ADD a0, s0, zero
  ADD a7, t6, zero
  SLTI a6, a7, 100
  BNE a6, zero, bb18
  # implict jump to bb17
bb17:
  LUI a6, 16
  ADDIW a6, a6, -1
  REMW a6, a0, a6
  LW t4, 12(sp)
  ADD s2, t4, zero
  ADD s1, a6, zero
  JAL zero, bb13
bb18:
  SLLIW s1, a7, 2
  ADDI t5, sp, 592
  ADD s1, t5, s1
  LW s1, 0(s1)
  ADDW s1, a0, s1
  ADDIW s2, a7, 1
  ADD t6, s2, zero
  ADD s0, s1, zero
  JAL zero, bb16
bb19:
  LW t4, 8(sp)
  SLLIW s0, t4, 2
  ADDI t4, sp, 592
  ADD s0, t4, s0
  SW zero, 0(s0)
  LW t4, 8(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 4(sp)
  JAL zero, bb11
