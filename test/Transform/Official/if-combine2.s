.global main
.global func
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -1312
  SD ra, 256(sp)
  SD s0, 264(sp)
  SD s1, 272(sp)
  SD s2, 280(sp)
  SD s3, 288(sp)
  SD s4, 296(sp)
  SD s5, 304(sp)
  SD s6, 312(sp)
  SD s7, 320(sp)
  SD s8, 328(sp)
  SD s9, 336(sp)
  SD s10, 344(sp)
  SD s11, 352(sp)
  ADDI a0, zero, 324
  CALL _sysy_starttime
  CALL getint
  ADD t4, a0, zero
  SW t4, 24(sp)
  ADDI s7, zero, 0
  SLTI s7, s7, 100
  BNE s7, zero, bb18
  # implict jump to bb1
bb1:
  ADDI s7, zero, 0
  LW t4, 24(sp)
  BLT s7, t4, bb4
  # implict jump to bb2
bb2:
  ADD s7, zero, zero
  # implict jump to bb3
bb3:
  ADD a0, s7, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 328
  CALL _sysy_stoptime
  ADD a0, zero, zero
  LD ra, 256(sp)
  LD s0, 264(sp)
  LD s1, 272(sp)
  LD s2, 280(sp)
  LD s3, 288(sp)
  LD s4, 296(sp)
  LD s5, 304(sp)
  LD s6, 312(sp)
  LD s7, 320(sp)
  LD s8, 328(sp)
  LD s9, 336(sp)
  LD s10, 344(sp)
  LD s11, 352(sp)
  ADDI sp, sp, 1312
  JALR zero, 0(ra)
bb4:
  # implict jump to bb5
bb5:
  ADDI t4, sp, 684
  SD t4, 1168(sp)
  ADDI t4, sp, 688
  SD t4, 432(sp)
  ADDI t4, sp, 692
  SD t4, 520(sp)
  ADDI t4, sp, 696
  SD t4, 88(sp)
  ADDI t4, sp, 700
  SD t4, 128(sp)
  ADDI t4, sp, 704
  SD t4, 472(sp)
  ADDI t4, sp, 708
  SD t4, 480(sp)
  ADDI s10, sp, 712
  ADDI t4, sp, 716
  SD t4, 64(sp)
  ADDI t4, sp, 720
  SD t4, 32(sp)
  ADDI s8, sp, 724
  ADDI t4, sp, 728
  SD t4, 1160(sp)
  ADDI t4, sp, 732
  SD t4, 632(sp)
  ADDI t4, sp, 736
  SD t4, 360(sp)
  ADDI t4, sp, 740
  SD t4, 648(sp)
  ADDI t4, sp, 744
  SD t4, 656(sp)
  ADDI t4, sp, 748
  SD t4, 1240(sp)
  ADDI t4, sp, 752
  SD t4, 120(sp)
  ADDI t4, sp, 756
  SD t4, 72(sp)
  ADDI t4, sp, 760
  SD t4, 448(sp)
  ADDI t4, sp, 764
  SD t4, 1280(sp)
  ADDI t4, sp, 768
  SD t4, 1296(sp)
  ADDI t4, sp, 772
  SD t4, 1184(sp)
  ADDI t4, sp, 776
  SD t4, 496(sp)
  ADDI t4, sp, 780
  SD t4, 1208(sp)
  ADDI t4, sp, 784
  SD t4, 1232(sp)
  ADDI t4, sp, 788
  SD t4, 560(sp)
  ADDI t4, sp, 792
  SD t4, 248(sp)
  ADDI t4, sp, 796
  SD t4, 376(sp)
  ADDI t4, sp, 800
  SD t4, 608(sp)
  ADDI t4, sp, 804
  SD t4, 544(sp)
  ADDI t4, sp, 808
  SD t4, 1264(sp)
  ADDI t4, sp, 812
  SD t4, 384(sp)
  ADDI t4, sp, 816
  SD t4, 392(sp)
  ADDI t4, sp, 820
  SD t4, 1144(sp)
  ADDI t4, sp, 824
  SD t4, 1136(sp)
  ADDI t4, sp, 828
  SD t4, 568(sp)
  ADDI t4, sp, 832
  SD t4, 576(sp)
  ADDI t4, sp, 836
  SD t4, 1176(sp)
  ADDI t4, sp, 840
  SD t4, 40(sp)
  ADDI t4, sp, 844
  SD t4, 584(sp)
  ADDI t4, sp, 848
  SD t4, 224(sp)
  ADDI t4, sp, 852
  SD t4, 136(sp)
  ADDI t4, sp, 856
  SD t4, 592(sp)
  ADDI t4, sp, 860
  SD t4, 1200(sp)
  ADDI t4, sp, 864
  SD t4, 600(sp)
  ADDI t4, sp, 868
  SD t4, 1304(sp)
  ADDI t4, sp, 872
  SD t4, 104(sp)
  ADDI t4, sp, 876
  SD t4, 112(sp)
  ADDI t4, sp, 880
  SD t4, 512(sp)
  ADDI t4, sp, 884
  SD t4, 456(sp)
  ADDI t4, sp, 888
  SD t4, 96(sp)
  ADDI t4, sp, 892
  SD t4, 440(sp)
  ADDI t4, sp, 896
  SD t4, 1288(sp)
  ADDI t4, sp, 900
  SD t4, 1272(sp)
  ADDI t4, sp, 904
  SD t4, 488(sp)
  ADDI t4, sp, 908
  SD t4, 1216(sp)
  ADDI t4, sp, 912
  SD t4, 1224(sp)
  ADDI t4, sp, 916
  SD t4, 552(sp)
  ADDI t4, sp, 920
  SD t4, 152(sp)
  ADDI t4, sp, 924
  SD t4, 400(sp)
  ADDI t4, sp, 928
  SD t4, 48(sp)
  ADDI t4, sp, 932
  SD t4, 536(sp)
  ADDI t4, sp, 936
  SD t4, 1256(sp)
  ADDI t4, sp, 940
  SD t4, 1152(sp)
  ADDI t4, sp, 944
  SD t4, 80(sp)
  ADDI t4, sp, 948
  SD t4, 1128(sp)
  ADDI t4, sp, 952
  SD t4, 1192(sp)
  ADDI t4, sp, 956
  SD t4, 1120(sp)
  ADDI t4, sp, 960
  SD t4, 1112(sp)
  ADDI t4, sp, 964
  SD t4, 1104(sp)
  ADDI t4, sp, 968
  SD t4, 1096(sp)
  ADDI t4, sp, 972
  SD t4, 1088(sp)
  ADDI t4, sp, 976
  SD t4, 464(sp)
  ADDI t4, sp, 980
  SD t4, 1080(sp)
  ADDI t4, sp, 984
  SD t4, 240(sp)
  ADDI t4, sp, 988
  SD t4, 232(sp)
  ADDI t4, sp, 992
  SD t4, 216(sp)
  ADDI t4, sp, 996
  SD t4, 160(sp)
  ADDI t4, sp, 1000
  SD t4, 208(sp)
  ADDI t4, sp, 1004
  SD t4, 200(sp)
  ADDI t4, sp, 1008
  SD t4, 192(sp)
  ADDI t4, sp, 1012
  SD t4, 504(sp)
  ADDI t4, sp, 1016
  SD t4, 184(sp)
  ADDI t4, sp, 1020
  SD t4, 176(sp)
  ADDI t4, sp, 1024
  SD t4, 168(sp)
  ADDI t4, sp, 1028
  SD t4, 616(sp)
  ADDI t4, sp, 1032
  SD t4, 408(sp)
  ADDI t4, sp, 1036
  SD t4, 624(sp)
  ADDI t4, sp, 1040
  SD t4, 416(sp)
  ADDI t4, sp, 1044
  SD t4, 528(sp)
  ADDI t4, sp, 1048
  SD t4, 424(sp)
  ADDI t4, sp, 1052
  SD t4, 640(sp)
  ADDI t4, sp, 1056
  SD t4, 144(sp)
  ADDI t4, sp, 1060
  SD t4, 56(sp)
  ADDI t4, sp, 1064
  SD t4, 664(sp)
  ADDI t4, sp, 1068
  SD t4, 1248(sp)
  ADDI t4, sp, 1072
  SD t4, 672(sp)
  ADDI t4, sp, 1076
  SD t4, 368(sp)
  ADDI s9, zero, 0
  SLTI t4, s9, 100
  SB t4, 0(sp)
  ADD s9, zero, zero
  ADD s11, zero, zero
  # implict jump to bb6
bb6:
  ADD s4, s11, zero
  ADD s1, s9, zero
  ADDI s2, zero, 1
  LD t4, 1168(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 2
  LD t4, 432(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 3
  LD t4, 520(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 4
  LD t4, 88(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 5
  LD t4, 128(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 6
  LD t4, 472(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 7
  LD t4, 480(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 8
  SW s2, 0(s10)
  ADDI s2, zero, 9
  LD t4, 64(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 10
  LD t4, 32(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 11
  SW s2, 0(s8)
  ADDI s2, zero, 12
  LD t4, 1160(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 13
  LD t4, 632(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 14
  LD t4, 360(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 15
  LD t4, 648(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 16
  LD t4, 656(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 17
  LD t4, 1240(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 18
  LD t4, 120(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 19
  LD t4, 72(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 20
  LD t4, 448(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 21
  LD t4, 1280(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 22
  LD t4, 1296(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 23
  LD t4, 1184(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 24
  LD t4, 496(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 25
  LD t4, 1208(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 26
  LD t4, 1232(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 27
  LD t4, 560(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 28
  LD t4, 248(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 29
  LD t4, 376(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 30
  LD t4, 608(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 31
  LD t4, 544(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 32
  LD t4, 1264(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 33
  LD t4, 384(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 34
  LD t4, 392(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 35
  LD t4, 1144(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 36
  LD t4, 1136(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 37
  LD t4, 568(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 38
  LD t4, 576(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 39
  LD t4, 1176(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 40
  LD t4, 40(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 41
  LD t4, 584(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 42
  LD t4, 224(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 43
  LD t4, 136(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 44
  LD t4, 592(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 45
  LD t4, 1200(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 46
  LD t4, 600(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 47
  LD t4, 1304(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 48
  LD t4, 104(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 49
  LD t4, 112(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 50
  LD t4, 512(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 51
  LD t4, 456(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 52
  LD t4, 96(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 53
  LD t4, 440(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 54
  LD t4, 1288(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 55
  LD t4, 1272(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 56
  LD t4, 488(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 57
  LD t4, 1216(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 58
  LD t4, 1224(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 59
  LD t4, 552(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 60
  LD t4, 152(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 61
  LD t4, 400(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 62
  LD t4, 48(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 63
  LD t4, 536(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 64
  LD t4, 1256(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 65
  LD t4, 1152(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 66
  LD t4, 80(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 67
  LD t4, 1128(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 68
  LD t4, 1192(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 69
  LD t4, 1120(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 70
  LD t4, 1112(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 71
  LD t4, 1104(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 72
  LD t4, 1096(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 73
  LD t4, 1088(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 74
  LD t4, 464(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 75
  LD t4, 1080(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 76
  LD t4, 240(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 77
  LD t4, 232(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 78
  LD t4, 216(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 79
  LD t4, 160(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 80
  LD t4, 208(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 81
  LD t4, 200(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 82
  LD t4, 192(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 83
  LD t4, 504(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 84
  LD t4, 184(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 85
  LD t4, 176(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 86
  LD t4, 168(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 87
  LD t4, 616(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 88
  LD t4, 408(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 89
  LD t4, 624(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 90
  LD t4, 416(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 91
  LD t4, 528(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 92
  LD t4, 424(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 93
  LD t4, 640(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 94
  LD t4, 144(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 95
  LD t4, 56(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 96
  LD t4, 664(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 97
  LD t4, 1248(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 98
  LD t4, 672(sp)
  SW s2, 0(t4)
  ADDI s2, zero, 99
  LD t4, 368(sp)
  SW s2, 0(t4)
  ADDIW t4, s4, 1
  SW t4, 4(sp)
  LB t4, 0(sp)
  BNE t4, zero, bb12
  # implict jump to bb7
bb7:
  ADD s2, s1, zero
  # implict jump to bb8
bb8:
  LUI s3, 16
  ADDIW s3, s3, -1
  REMW t4, s2, s3
  SW t4, 8(sp)
  # implict jump to bb9
bb9:
  LW t4, 4(sp)
  LW t3, 24(sp)
  BLT t4, t3, bb11
  # implict jump to bb10
bb10:
  LW t4, 8(sp)
  ADD s7, t4, zero
  JAL zero, bb3
bb11:
  LW t4, 8(sp)
  ADD s9, t4, zero
  LW t4, 4(sp)
  ADD s11, t4, zero
  JAL zero, bb6
bb12:
  # implict jump to bb13
bb13:
  ADD s4, zero, zero
  # implict jump to bb14
bb14:
  ADD s3, s4, zero
  ADD s5, s1, zero
  SLLIW s6, s3, 2
  ADDI t4, sp, 680
  ADD s6, t4, s6
  LW s6, 0(s6)
  ADDW t4, s5, s6
  SW t4, 12(sp)
  ADDIW s0, s3, 1
  # implict jump to bb15
bb15:
  SLTI s3, s0, 100
  BNE s3, zero, bb17
  # implict jump to bb16
bb16:
  LW t4, 12(sp)
  ADD s2, t4, zero
  JAL zero, bb8
bb17:
  LW t4, 12(sp)
  ADD s1, t4, zero
  ADD s4, s0, zero
  JAL zero, bb14
bb18:
  # implict jump to bb19
bb19:
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb20
bb20:
  LW t4, 20(sp)
  ADD s7, t4, zero
  SLLIW s9, s7, 2
  ADDI t5, sp, 680
  ADD s9, t5, s9
  ADDI s11, zero, 0
  SW s11, 0(s9)
  ADDIW t4, s7, 1
  SW t4, 16(sp)
  # implict jump to bb21
bb21:
  LW t4, 16(sp)
  SLTI s7, t4, 100
  BNE s7, zero, bb22
  JAL zero, bb1
bb22:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb20
func:
  ADDI sp, sp, -1232
  SD s9, 216(sp)
  SD ra, 232(sp)
  SD s0, 240(sp)
  SD s1, 248(sp)
  SD s2, 256(sp)
  SD s3, 264(sp)
  SD s4, 272(sp)
  SD s5, 280(sp)
  SD s6, 288(sp)
  SD s7, 296(sp)
  SD s8, 304(sp)
  SD s11, 352(sp)
  SD s10, 392(sp)
  ADD t4, a0, zero
  SW t4, 12(sp)
  SLTI s5, zero, 100
  BNE s5, zero, bb41
  # implict jump to bb24
bb24:
  LW t4, 12(sp)
  BLT zero, t4, bb27
  # implict jump to bb25
bb25:
  ADD s5, zero, zero
  # implict jump to bb26
bb26:
  ADD a0, s5, zero
  LD s9, 216(sp)
  LD ra, 232(sp)
  LD s0, 240(sp)
  LD s1, 248(sp)
  LD s2, 256(sp)
  LD s3, 264(sp)
  LD s4, 272(sp)
  LD s5, 280(sp)
  LD s6, 288(sp)
  LD s7, 296(sp)
  LD s8, 304(sp)
  LD s11, 352(sp)
  LD s10, 392(sp)
  ADDI sp, sp, 1232
  JALR zero, 0(ra)
bb27:
  # implict jump to bb28
bb28:
  ADDI t4, sp, 636
  SD t4, 464(sp)
  ADDI t4, sp, 640
  SD t4, 536(sp)
  ADDI t4, sp, 644
  SD t4, 1128(sp)
  ADDI t4, sp, 648
  SD t4, 1056(sp)
  ADDI t4, sp, 652
  SD t4, 208(sp)
  ADDI t4, sp, 656
  SD t4, 192(sp)
  ADDI t4, sp, 660
  SD t4, 1072(sp)
  ADDI t4, sp, 664
  SD t4, 1040(sp)
  ADDI t4, sp, 668
  SD t4, 200(sp)
  ADDI t4, sp, 672
  SD t4, 184(sp)
  ADDI t4, sp, 676
  SD t4, 168(sp)
  ADDI t4, sp, 680
  SD t4, 152(sp)
  ADDI t4, sp, 684
  SD t4, 1096(sp)
  ADDI t4, sp, 688
  SD t4, 1192(sp)
  ADDI t4, sp, 692
  SD t4, 136(sp)
  ADDI t4, sp, 696
  SD t4, 120(sp)
  ADDI t4, sp, 700
  SD t4, 104(sp)
  ADDI t4, sp, 704
  SD t4, 480(sp)
  ADDI t4, sp, 708
  SD t4, 496(sp)
  ADDI t4, sp, 712
  SD t4, 520(sp)
  ADDI t4, sp, 716
  SD t4, 424(sp)
  ADDI t4, sp, 720
  SD t4, 552(sp)
  ADDI t4, sp, 724
  SD t4, 1176(sp)
  ADDI t4, sp, 728
  SD t4, 1032(sp)
  ADDI t4, sp, 732
  SD t4, 448(sp)
  ADDI t4, sp, 736
  SD t4, 1216(sp)
  ADDI t4, sp, 740
  SD t4, 568(sp)
  ADDI t4, sp, 744
  SD t4, 584(sp)
  ADDI t4, sp, 748
  SD t4, 600(sp)
  ADDI t4, sp, 752
  SD t4, 616(sp)
  ADDI t6, sp, 756
  ADDI a6, sp, 760
  ADDI a4, sp, 764
  ADDI a2, sp, 768
  ADDI t4, sp, 772
  SD t4, 1160(sp)
  ADDI t4, sp, 776
  SD t4, 1136(sp)
  ADDI t1, sp, 780
  ADDI t4, sp, 784
  SD t4, 1080(sp)
  ADDI s10, sp, 788
  ADDI s9, sp, 792
  ADDI s7, sp, 796
  ADDI t4, sp, 800
  SD t4, 224(sp)
  ADDI s4, sp, 804
  ADDI s2, sp, 808
  ADDI t4, sp, 812
  SD t4, 504(sp)
  ADDI t4, sp, 816
  SD t4, 1144(sp)
  ADDI t4, sp, 820
  SD t4, 88(sp)
  ADDI t4, sp, 824
  SD t4, 80(sp)
  ADDI t4, sp, 828
  SD t4, 456(sp)
  ADDI t4, sp, 832
  SD t4, 1224(sp)
  ADDI t4, sp, 836
  SD t4, 1120(sp)
  ADDI t4, sp, 840
  SD t4, 432(sp)
  ADDI t4, sp, 844
  SD t4, 1200(sp)
  ADDI t4, sp, 848
  SD t4, 1048(sp)
  ADDI t4, sp, 852
  SD t4, 1064(sp)
  ADDI t4, sp, 856
  SD t4, 416(sp)
  ADDI t4, sp, 860
  SD t4, 112(sp)
  ADDI t4, sp, 864
  SD t4, 176(sp)
  ADDI t4, sp, 868
  SD t4, 160(sp)
  ADDI t4, sp, 872
  SD t4, 144(sp)
  ADDI t4, sp, 876
  SD t4, 1112(sp)
  ADDI t4, sp, 880
  SD t4, 1184(sp)
  ADDI t4, sp, 884
  SD t4, 128(sp)
  ADDI t4, sp, 888
  SD t4, 24(sp)
  ADDI t4, sp, 892
  SD t4, 96(sp)
  ADDI t4, sp, 896
  SD t4, 472(sp)
  ADDI t4, sp, 900
  SD t4, 488(sp)
  ADDI t4, sp, 904
  SD t4, 512(sp)
  ADDI t4, sp, 908
  SD t4, 528(sp)
  ADDI t4, sp, 912
  SD t4, 544(sp)
  ADDI t4, sp, 916
  SD t4, 1168(sp)
  ADDI t4, sp, 920
  SD t4, 400(sp)
  ADDI t4, sp, 924
  SD t4, 440(sp)
  ADDI t4, sp, 928
  SD t4, 1208(sp)
  ADDI t4, sp, 932
  SD t4, 560(sp)
  ADDI t4, sp, 936
  SD t4, 576(sp)
  ADDI t4, sp, 940
  SD t4, 592(sp)
  ADDI t4, sp, 944
  SD t4, 608(sp)
  ADDI t4, sp, 948
  SD t4, 624(sp)
  ADDI a7, sp, 952
  ADDI t4, sp, 956
  SD t4, 312(sp)
  ADDI t4, sp, 960
  SD t4, 320(sp)
  ADDI t4, sp, 964
  SD t4, 1152(sp)
  ADDI t4, sp, 968
  SD t4, 328(sp)
  ADDI t4, sp, 972
  SD t4, 336(sp)
  ADDI t4, sp, 976
  SD t4, 344(sp)
  ADDI t4, sp, 980
  SD t4, 360(sp)
  ADDI t4, sp, 984
  SD t4, 1088(sp)
  ADDI t4, sp, 988
  SD t4, 368(sp)
  ADDI t4, sp, 992
  SD t4, 376(sp)
  ADDI t4, sp, 996
  SD t4, 384(sp)
  ADDI t4, sp, 1000
  SD t4, 1104(sp)
  ADDI t4, sp, 1004
  SD t4, 72(sp)
  ADDI t4, sp, 1008
  SD t4, 64(sp)
  ADDI t4, sp, 1012
  SD t4, 56(sp)
  ADDI t4, sp, 1016
  SD t4, 48(sp)
  ADDI t4, sp, 1020
  SD t4, 408(sp)
  ADDI t4, sp, 1024
  SD t4, 40(sp)
  ADDI t4, sp, 1028
  SD t4, 32(sp)
  SLTI t4, zero, 100
  SB t4, 0(sp)
  ADD s6, zero, zero
  ADD s8, zero, zero
  # implict jump to bb29
bb29:
  ADD s11, s8, zero
  ADD t0, s6, zero
  ADDI t2, zero, 1
  LD t4, 464(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 2
  LD t4, 536(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 3
  LD t4, 1128(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 4
  LD t4, 1056(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 5
  LD t4, 208(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 6
  LD t4, 192(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 7
  LD t4, 1072(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 8
  LD t4, 1040(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 9
  LD t4, 200(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 10
  LD t4, 184(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 11
  LD t4, 168(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 12
  LD t4, 152(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 13
  LD t4, 1096(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 14
  LD t4, 1192(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 15
  LD t4, 136(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 16
  LD t4, 120(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 17
  LD t4, 104(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 18
  LD t4, 480(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 19
  LD t4, 496(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 20
  LD t4, 520(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 21
  LD t4, 424(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 22
  LD t4, 552(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 23
  LD t4, 1176(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 24
  LD t4, 1032(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 25
  LD t4, 448(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 26
  LD t4, 1216(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 27
  LD t4, 568(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 28
  LD t4, 584(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 29
  LD t4, 600(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 30
  LD t4, 616(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 31
  SW t2, 0(t6)
  ADDI t2, zero, 32
  SW t2, 0(a6)
  ADDI t2, zero, 33
  SW t2, 0(a4)
  ADDI t2, zero, 34
  SW t2, 0(a2)
  ADDI t2, zero, 35
  LD t4, 1160(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 36
  LD t4, 1136(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 37
  SW t2, 0(t1)
  ADDI t2, zero, 38
  LD t4, 1080(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 39
  SW t2, 0(s10)
  ADDI t2, zero, 40
  SW t2, 0(s9)
  ADDI t2, zero, 41
  SW t2, 0(s7)
  ADDI t2, zero, 42
  LD t4, 224(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 43
  SW t2, 0(s4)
  ADDI t2, zero, 44
  SW t2, 0(s2)
  ADDI t2, zero, 45
  LD t4, 504(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 46
  LD t4, 1144(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 47
  LD t4, 88(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 48
  LD t4, 80(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 49
  LD t4, 456(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 50
  LD t4, 1224(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 51
  LD t4, 1120(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 52
  LD t4, 432(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 53
  LD t4, 1200(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 54
  LD t4, 1048(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 55
  LD t4, 1064(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 56
  LD t4, 416(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 57
  LD t4, 112(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 58
  LD t4, 176(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 59
  LD t4, 160(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 60
  LD t4, 144(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 61
  LD t4, 1112(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 62
  LD t4, 1184(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 63
  LD t4, 128(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 64
  LD t4, 24(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 65
  LD t4, 96(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 66
  LD t4, 472(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 67
  LD t4, 488(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 68
  LD t4, 512(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 69
  LD t4, 528(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 70
  LD t4, 544(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 71
  LD t4, 1168(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 72
  LD t4, 400(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 73
  LD t4, 440(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 74
  LD t4, 1208(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 75
  LD t4, 560(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 76
  LD t4, 576(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 77
  LD t4, 592(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 78
  LD t4, 608(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 79
  LD t4, 624(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 80
  SW t2, 0(a7)
  ADDI t2, zero, 81
  LD t4, 312(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 82
  LD t4, 320(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 83
  LD t4, 1152(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 84
  LD t4, 328(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 85
  LD t4, 336(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 86
  LD t4, 344(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 87
  LD t4, 360(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 88
  LD t4, 1088(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 89
  LD t4, 368(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 90
  LD t4, 376(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 91
  LD t4, 384(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 92
  LD t4, 1104(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 93
  LD t4, 72(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 94
  LD t4, 64(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 95
  LD t4, 56(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 96
  LD t4, 48(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 97
  LD t4, 408(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 98
  LD t4, 40(sp)
  SW t2, 0(t4)
  ADDI t2, zero, 99
  LD t4, 32(sp)
  SW t2, 0(t4)
  ADDIW t4, s11, 1
  SW t4, 8(sp)
  LB t4, 0(sp)
  BNE t4, zero, bb35
  # implict jump to bb30
bb30:
  ADD s11, t0, zero
  # implict jump to bb31
bb31:
  LUI a1, 16
  ADDIW a1, a1, -1
  REMW s3, s11, a1
  # implict jump to bb32
bb32:
  LW t4, 8(sp)
  LW t3, 12(sp)
  BLT t4, t3, bb34
  # implict jump to bb33
bb33:
  ADD s5, s3, zero
  JAL zero, bb26
bb34:
  ADD s6, s3, zero
  LW t4, 8(sp)
  ADD s8, t4, zero
  JAL zero, bb29
bb35:
  # implict jump to bb36
bb36:
  ADD t2, zero, zero
  # implict jump to bb37
bb37:
  ADD a1, t2, zero
  ADD a3, t0, zero
  SLLIW a5, a1, 2
  ADDI t5, sp, 632
  ADD a5, t5, a5
  LW a5, 0(a5)
  ADDW s1, a3, a5
  ADDIW s0, a1, 1
  # implict jump to bb38
bb38:
  SLTI a1, s0, 100
  BNE a1, zero, bb40
  # implict jump to bb39
bb39:
  ADD s11, s1, zero
  JAL zero, bb31
bb40:
  ADD t0, s1, zero
  ADD t2, s0, zero
  JAL zero, bb37
bb41:
  # implict jump to bb42
bb42:
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb43
bb43:
  LW t4, 16(sp)
  ADD s5, t4, zero
  SLLIW s6, s5, 2
  ADDI t4, sp, 632
  ADD s6, t4, s6
  SW zero, 0(s6)
  ADDIW t4, s5, 1
  SW t4, 4(sp)
  # implict jump to bb44
bb44:
  LW t4, 4(sp)
  SLTI s5, t4, 100
  BNE s5, zero, bb45
  JAL zero, bb24
bb45:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb43
