.global main
.global func
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  LUI s0, 19
  ADDIW s0, s0, -1915
  ADD a0, zero, s0
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
func:
  ADDI sp, sp, -1264
  SD ra, 1160(sp)
  SD s0, 1168(sp)
  SD s1, 1176(sp)
  SD s2, 1184(sp)
  SD s3, 1192(sp)
  SD s4, 1200(sp)
  SD s5, 1208(sp)
  SD s6, 1216(sp)
  SD s7, 1224(sp)
  SD s8, 1232(sp)
  SD s9, 1240(sp)
  SD s10, 1248(sp)
  SD s11, 1256(sp)
  ADD t4, a1, zero
  SW t4, 264(sp)
  ADD t4, a3, zero
  SW t4, 828(sp)
  ADD t4, a4, zero
  SW t4, 776(sp)
  ADD t4, a7, zero
  SW t4, 796(sp)
  ADDI s0, sp, 1268
  LW t4, 0(s0)
  SW t4, 780(sp)
  ADDI s1, sp, 1272
  LW t4, 0(s1)
  SW t4, 948(sp)
  ADDI s2, sp, 1276
  LW t4, 0(s2)
  SW t4, 548(sp)
  ADDI s3, sp, 1280
  LW t4, 0(s3)
  SW t4, 792(sp)
  ADDI s4, sp, 1288
  LW t4, 0(s4)
  SW t4, 864(sp)
  ADDI s5, sp, 1292
  LW t4, 0(s5)
  SW t4, 788(sp)
  ADDI s6, sp, 1312
  LW t4, 0(s6)
  SW t4, 760(sp)
  ADDI s7, sp, 1320
  LW t4, 0(s7)
  SW t4, 736(sp)
  ADDI s8, sp, 1324
  LW t4, 0(s8)
  SW t4, 880(sp)
  ADDI s9, sp, 1328
  LW t4, 0(s9)
  SW t4, 868(sp)
  ADDI s10, sp, 1332
  LW s10, 0(s10)
  ADDI s11, sp, 1340
  LW t4, 0(s11)
  SW t4, 1064(sp)
  ADDI ra, sp, 1348
  LW t4, 0(ra)
  SW t4, 748(sp)
  ADDI t0, sp, 1352
  LW t4, 0(t0)
  SW t4, 772(sp)
  ADDI t1, sp, 1356
  LW t4, 0(t1)
  SW t4, 848(sp)
  ADDI t2, sp, 1384
  LW t2, 0(t2)
  ADDI a0, sp, 1388
  LW t4, 0(a0)
  SW t4, 624(sp)
  ADDI a2, sp, 1396
  LW t4, 0(a2)
  SW t4, 764(sp)
  ADDI a5, sp, 1404
  LW t4, 0(a5)
  SW t4, 744(sp)
  ADDI a6, sp, 1412
  LW t4, 0(a6)
  SW t4, 784(sp)
  ADDI t6, sp, 1420
  LW t4, 0(t6)
  SW t4, 768(sp)
  ADDI s2, sp, 1428
  LW s2, 0(s2)
  ADDI a7, sp, 1436
  LW t4, 0(a7)
  SW t4, 756(sp)
  ADDI s3, sp, 1440
  LW t4, 0(s3)
  SW t4, 1036(sp)
  ADDI s5, sp, 1464
  LW t4, 0(s5)
  SW t4, 728(sp)
  ADDI a6, sp, 1472
  LW a6, 0(a6)
  ADDI s0, sp, 1476
  LW t4, 0(s0)
  SW t4, 752(sp)
  ADDI a4, sp, 1484
  LW t4, 0(a4)
  SW t4, 1048(sp)
  ADDI t0, sp, 1488
  LW t4, 0(t0)
  SW t4, 912(sp)
  ADDI t6, sp, 1500
  LW t4, 0(t6)
  SW t4, 852(sp)
  ADDI s5, sp, 1504
  LW t4, 0(s5)
  SW t4, 720(sp)
  ADDI s6, sp, 1508
  LW t4, 0(s6)
  SW t4, 840(sp)
  ADDI a7, sp, 1512
  LW t4, 0(a7)
  SW t4, 276(sp)
  ADDI s0, sp, 1516
  LW t4, 0(s0)
  SW t4, 800(sp)
  ADDI ra, sp, 1536
  LW t4, 0(ra)
  SW t4, 700(sp)
  ADDI a5, sp, 1544
  LW t4, 0(a5)
  SW t4, 740(sp)
  ADDI a5, sp, 1560
  LW t4, 0(a5)
  SW t4, 604(sp)
  ADDI s7, sp, 1564
  LW t4, 0(s7)
  SW t4, 732(sp)
  ADDI s7, sp, 1576
  LW t4, 0(s7)
  SW t4, 820(sp)
  ADDI a2, sp, 1584
  LW t4, 0(a2)
  SW t4, 608(sp)
  ADDI s9, sp, 1588
  LW t4, 0(s9)
  SW t4, 1116(sp)
  ADDI s4, sp, 1592
  LW t4, 0(s4)
  SW t4, 860(sp)
  ADDI s4, sp, 1596
  LW t4, 0(s4)
  SW t4, 856(sp)
  ADDI s4, sp, 1600
  LW t4, 0(s4)
  SW t4, 812(sp)
  ADDI t6, sp, 1604
  LW t4, 0(t6)
  SW t4, 704(sp)
  ADDI t1, sp, 1620
  LW t4, 0(t1)
  SW t4, 844(sp)
  ADDI t1, sp, 1628
  LW t4, 0(t1)
  SW t4, 824(sp)
  ADDI s6, sp, 1632
  LW t4, 0(s6)
  SW t4, 708(sp)
  ADDI s0, sp, 1656
  LW t4, 0(s0)
  SW t4, 832(sp)
  ADDI s0, sp, 1660
  LW t4, 0(s0)
  SW t4, 24(sp)
  ADDI a3, sp, 1664
  LW a3, 0(a3)
  ADDI t1, sp, 1676
  LW t4, 0(t1)
  SW t4, 1096(sp)
  ADDI s7, sp, 1680
  LW t4, 0(s7)
  SW t4, 816(sp)
  ADDI s7, sp, 1692
  LW t4, 0(s7)
  SW t4, 940(sp)
  ADDI s4, sp, 1696
  LW t4, 0(s4)
  SW t4, 808(sp)
  ADDI s4, sp, 1700
  LW t4, 0(s4)
  SW t4, 804(sp)
  ADDI s4, sp, 1724
  LW t4, 0(s4)
  SW t4, 692(sp)
  ADDI s4, sp, 1728
  LW t4, 0(s4)
  SW t4, 652(sp)
  ADDI s4, sp, 1740
  LW t4, 0(s4)
  SW t4, 648(sp)
  ADDI s4, sp, 1752
  LW t4, 0(s4)
  SW t4, 644(sp)
  ADDI s4, sp, 1760
  LW t4, 0(s4)
  SW t4, 640(sp)
  ADDI s4, sp, 1772
  LW t4, 0(s4)
  SW t4, 636(sp)
  ADDI s4, sp, 1776
  LW t4, 0(s4)
  SW t4, 632(sp)
  ADDI s4, sp, 1788
  LW t4, 0(s4)
  SW t4, 628(sp)
  ADDI s4, sp, 1796
  LW t4, 0(s4)
  SW t4, 924(sp)
  ADDI a0, sp, 1804
  LW t4, 0(a0)
  SW t4, 584(sp)
  ADDI a0, sp, 1808
  LW t4, 0(a0)
  SW t4, 616(sp)
  ADDI a0, sp, 1812
  LW t4, 0(a0)
  SW t4, 612(sp)
  ADDI a0, sp, 1836
  LW a0, 0(a0)
  ADDI a2, sp, 1844
  LW t4, 0(a2)
  SW t4, 552(sp)
  ADDI a5, sp, 1852
  LW t4, 0(a5)
  SW t4, 600(sp)
  ADDI a5, sp, 1864
  LW t4, 0(a5)
  SW t4, 596(sp)
  ADDI a5, sp, 1868
  LW t4, 0(a5)
  SW t4, 592(sp)
  ADDI a5, sp, 1876
  LW t4, 0(a5)
  SW t4, 588(sp)
  ADDI a5, sp, 1880
  LW t4, 0(a5)
  SW t4, 620(sp)
  ADDI a5, sp, 1884
  LW t4, 0(a5)
  SW t4, 724(sp)
  ADDI a5, sp, 1896
  LW t4, 0(a5)
  SW t4, 712(sp)
  ADDI s5, sp, 1912
  LW t4, 0(s5)
  SW t4, 716(sp)
  ADDI s5, sp, 1916
  LW t4, 0(s5)
  SW t4, 220(sp)
  ADDI a5, sp, 1920
  LW t4, 0(a5)
  SW t4, 1124(sp)
  ADDI s6, sp, 1940
  LW s6, 0(s6)
  ADDI t6, sp, 1960
  LW t6, 0(t6)
  ADDI ra, sp, 1964
  LW t4, 0(ra)
  SW t4, 696(sp)
  ADDI ra, sp, 1968
  LW t4, 0(ra)
  SW t4, 656(sp)
  ADDI ra, sp, 1972
  LW t4, 0(ra)
  SW t4, 688(sp)
  ADDI ra, sp, 1980
  LW t4, 0(ra)
  SW t4, 684(sp)
  ADDI ra, sp, 1984
  LW t4, 0(ra)
  SW t4, 680(sp)
  ADDI ra, sp, 1988
  LW t4, 0(ra)
  SW t4, 676(sp)
  ADDI ra, sp, 2012
  LW t4, 0(ra)
  SW t4, 672(sp)
  ADDI ra, sp, 2024
  LW t4, 0(ra)
  SW t4, 668(sp)
  ADDI ra, sp, 2032
  LW t4, 0(ra)
  SW t4, 664(sp)
  ADDI ra, sp, 2036
  LW t4, 0(ra)
  SW t4, 660(sp)
  ADDI ra, sp, 1264
  ADDI ra, ra, 784
  LW t4, 0(ra)
  SW t4, 1084(sp)
  ADDI ra, sp, 1264
  ADDI ra, ra, 788
  LW t4, 0(ra)
  SW t4, 980(sp)
  ADDI ra, sp, 1264
  ADDI ra, ra, 792
  LW t4, 0(ra)
  SW t4, 1080(sp)
  ADDI ra, sp, 1264
  ADDI ra, ra, 800
  LW t4, 0(ra)
  SW t4, 1076(sp)
  ADDI ra, sp, 1264
  ADDI ra, ra, 804
  LW t4, 0(ra)
  SW t4, 1072(sp)
  ADDI ra, sp, 1264
  ADDI ra, ra, 808
  LW t4, 0(ra)
  SW t4, 1068(sp)
  ADDI ra, sp, 1264
  ADDI ra, ra, 816
  LW ra, 0(ra)
  ADDI t5, sp, 1264
  ADDI s11, t5, 820
  LW t4, 0(s11)
  SW t4, 1060(sp)
  ADDI t5, sp, 1264
  ADDI s11, t5, 824
  LW t4, 0(s11)
  SW t4, 1056(sp)
  ADDI t5, sp, 1264
  ADDI s11, t5, 828
  LW t4, 0(s11)
  SW t4, 1016(sp)
  ADDI t5, sp, 1264
  ADDI s11, t5, 832
  LW s11, 0(s11)
  ADDI a4, sp, 1264
  ADDI a4, a4, 836
  LW t4, 0(a4)
  SW t4, 1044(sp)
  ADDI a4, sp, 1264
  ADDI a4, a4, 840
  LW t4, 0(a4)
  SW t4, 1040(sp)
  ADDI a4, sp, 1264
  ADDI a4, a4, 844
  LW t4, 0(a4)
  SW t4, 1156(sp)
  ADDI t5, sp, 1264
  ADDI s3, t5, 848
  LW t4, 0(s3)
  SW t4, 1032(sp)
  ADDI t5, sp, 1264
  ADDI s3, t5, 852
  LW t4, 0(s3)
  SW t4, 1028(sp)
  ADDI t5, sp, 1264
  ADDI s3, t5, 860
  LW t4, 0(s3)
  SW t4, 1024(sp)
  ADDI t5, sp, 1264
  ADDI s3, t5, 864
  LW t4, 0(s3)
  SW t4, 1020(sp)
  ADDI t5, sp, 1264
  ADDI s3, t5, 876
  LW t4, 0(s3)
  SW t4, 1152(sp)
  ADDI t5, sp, 1264
  ADDI s3, t5, 880
  LW t4, 0(s3)
  SW t4, 1088(sp)
  ADDI t5, sp, 1264
  ADDI s3, t5, 896
  LW t4, 0(s3)
  SW t4, 1148(sp)
  ADDI t5, sp, 1264
  ADDI s3, t5, 908
  LW t4, 0(s3)
  SW t4, 1144(sp)
  ADDI t5, sp, 1264
  ADDI s3, t5, 940
  LW t4, 0(s3)
  SW t4, 1140(sp)
  ADDI t5, sp, 1264
  ADDI s3, t5, 948
  LW t4, 0(s3)
  SW t4, 1136(sp)
  ADDI t5, sp, 1264
  ADDI s3, t5, 956
  LW t4, 0(s3)
  SW t4, 1132(sp)
  ADDI t5, sp, 1264
  ADDI s3, t5, 964
  LW t4, 0(s3)
  SW t4, 1128(sp)
  ADDI t5, sp, 1264
  ADDI s3, t5, 976
  LW t4, 0(s3)
  SW t4, 540(sp)
  ADDI a5, sp, 1264
  ADDI a5, a5, 980
  LW a5, 0(a5)
  ADDI a4, sp, 1264
  ADDI a4, a4, 984
  LW t4, 0(a4)
  SW t4, 1120(sp)
  ADDI a4, sp, 1264
  ADDI a4, a4, 988
  LW a4, 0(a4)
  ADDI t5, sp, 1264
  ADDI s9, t5, 1000
  LW t4, 0(s9)
  SW t4, 1112(sp)
  ADDI t5, sp, 1264
  ADDI s9, t5, 1008
  LW t4, 0(s9)
  SW t4, 1108(sp)
  ADDI t5, sp, 1264
  ADDI s9, t5, 1012
  LW t4, 0(s9)
  SW t4, 1104(sp)
  ADDI t5, sp, 1264
  ADDI s9, t5, 1020
  LW t4, 0(s9)
  SW t4, 1100(sp)
  ADDI t5, sp, 1264
  ADDI s9, t5, 1024
  LW t4, 0(s9)
  SW t4, 244(sp)
  ADDI t1, sp, 1264
  ADDI t1, t1, 1032
  LW t4, 0(t1)
  SW t4, 1052(sp)
  ADDI t1, sp, 1264
  ADDI t1, t1, 1040
  LW t4, 0(t1)
  SW t4, 1092(sp)
  ADDI t1, sp, 1264
  ADDI t1, t1, 1048
  LW t1, 0(t1)
  ADDI t5, sp, 1264
  ADDI s7, t5, 1052
  LW t4, 0(s7)
  SW t4, 936(sp)
  ADDI t5, sp, 1264
  ADDI s7, t5, 1056
  LW t4, 0(s7)
  SW t4, 932(sp)
  ADDI t5, sp, 1264
  ADDI s7, t5, 1060
  LW t4, 0(s7)
  SW t4, 928(sp)
  ADDI t5, sp, 1264
  ADDI s7, t5, 1064
  LW t4, 0(s7)
  SW t4, 992(sp)
  ADDI t5, sp, 1264
  ADDI s4, t5, 1080
  LW t4, 0(s4)
  SW t4, 920(sp)
  ADDI t5, sp, 1264
  ADDI s4, t5, 1084
  LW t4, 0(s4)
  SW t4, 916(sp)
  ADDI t5, sp, 1264
  ADDI s4, t5, 1088
  LW s4, 0(s4)
  ADDI t0, sp, 1264
  ADDI t0, t0, 1096
  LW t4, 0(t0)
  SW t4, 872(sp)
  ADDI t0, sp, 1264
  ADDI t0, t0, 1100
  LW t4, 0(t0)
  SW t4, 904(sp)
  ADDI t0, sp, 1264
  ADDI t0, t0, 1108
  LW t4, 0(t0)
  SW t4, 900(sp)
  ADDI t0, sp, 1264
  ADDI t0, t0, 1120
  LW t4, 0(t0)
  SW t4, 896(sp)
  ADDI t0, sp, 1264
  ADDI t0, t0, 1128
  LW t4, 0(t0)
  SW t4, 892(sp)
  ADDI t0, sp, 1264
  ADDI t0, t0, 1140
  LW t4, 0(t0)
  SW t4, 888(sp)
  ADDI t0, sp, 1264
  ADDI t0, t0, 1144
  LW t4, 0(t0)
  SW t4, 884(sp)
  ADDI t0, sp, 1264
  ADDI t0, t0, 1148
  LW t0, 0(t0)
  ADDI t5, sp, 1264
  ADDI s8, t5, 1160
  LW t4, 0(s8)
  SW t4, 876(sp)
  ADDI t5, sp, 1264
  ADDI s8, t5, 1184
  LW t4, 0(s8)
  SW t4, 908(sp)
  ADDI t5, sp, 1264
  ADDI s8, t5, 1200
  LW t4, 0(s8)
  SW t4, 1012(sp)
  ADDI t5, sp, 1264
  ADDI s8, t5, 1204
  LW t4, 0(s8)
  SW t4, 1008(sp)
  ADDI t5, sp, 1264
  ADDI s8, t5, 1236
  LW t4, 0(s8)
  SW t4, 1004(sp)
  ADDI t5, sp, 1264
  ADDI s8, t5, 1240
  LW t4, 0(s8)
  SW t4, 1000(sp)
  ADDI t5, sp, 1264
  ADDI s8, t5, 1280
  LW t4, 0(s8)
  SW t4, 996(sp)
  ADDI t5, sp, 1264
  ADDI s8, t5, 1284
  LW s8, 0(s8)
  ADDI t5, sp, 1264
  ADDI s7, t5, 1296
  LW t4, 0(s7)
  SW t4, 988(sp)
  ADDI t5, sp, 1264
  ADDI s7, t5, 1300
  LW t4, 0(s7)
  SW t4, 984(sp)
  ADDI t5, sp, 1264
  ADDI s7, t5, 1312
  LW t4, 0(s7)
  SW t4, 944(sp)
  ADDI t5, sp, 1264
  ADDI s7, t5, 1316
  LW t4, 0(s7)
  SW t4, 976(sp)
  ADDI t5, sp, 1264
  ADDI s7, t5, 1328
  LW t4, 0(s7)
  SW t4, 972(sp)
  ADDI t5, sp, 1264
  ADDI s7, t5, 1332
  LW t4, 0(s7)
  SW t4, 968(sp)
  ADDI t5, sp, 1264
  ADDI s7, t5, 1336
  LW t4, 0(s7)
  SW t4, 964(sp)
  ADDI t5, sp, 1264
  ADDI s7, t5, 1364
  LW t4, 0(s7)
  SW t4, 960(sp)
  ADDI t5, sp, 1264
  ADDI s7, t5, 1368
  LW t4, 0(s7)
  SW t4, 956(sp)
  ADDI t5, sp, 1264
  ADDI s7, t5, 1388
  LW t4, 0(s7)
  SW t4, 952(sp)
  ADDI t5, sp, 1264
  ADDI s7, t5, 1396
  LW t4, 0(s7)
  SW t4, 836(sp)
  ADDI t5, sp, 1264
  ADDI s7, t5, 1424
  LW s7, 0(s7)
  ADDI t5, sp, 1264
  ADDI s1, t5, 1428
  LW t4, 0(s1)
  SW t4, 216(sp)
  ADDI t5, sp, 1264
  ADDI s1, t5, 1432
  LW t4, 0(s1)
  SW t4, 212(sp)
  ADDI t5, sp, 1264
  ADDI s1, t5, 1452
  LW t4, 0(s1)
  SW t4, 208(sp)
  ADDI t5, sp, 1264
  ADDI s1, t5, 1456
  LW t4, 0(s1)
  SW t4, 204(sp)
  ADDI t5, sp, 1264
  ADDI s1, t5, 1476
  LW t4, 0(s1)
  SW t4, 200(sp)
  ADDI t5, sp, 1264
  ADDI s1, t5, 1480
  LW t4, 0(s1)
  SW t4, 196(sp)
  ADDI t5, sp, 1264
  ADDI s1, t5, 1484
  LW t4, 0(s1)
  SW t4, 192(sp)
  ADDI t5, sp, 1264
  ADDI s1, t5, 1508
  LW t4, 0(s1)
  SW t4, 188(sp)
  ADDI t5, sp, 1264
  ADDI s1, t5, 1516
  LW t4, 0(s1)
  SW t4, 148(sp)
  ADDI t5, sp, 1264
  ADDI s1, t5, 1524
  LW t4, 0(s1)
  SW t4, 180(sp)
  ADDI t5, sp, 1264
  ADDI s1, t5, 1528
  LW t4, 0(s1)
  SW t4, 176(sp)
  ADDI t5, sp, 1264
  ADDI s1, t5, 1532
  LW t4, 0(s1)
  SW t4, 172(sp)
  ADDI t5, sp, 1264
  ADDI s1, t5, 1536
  LW t4, 0(s1)
  SW t4, 168(sp)
  ADDI t5, sp, 1264
  ADDI s1, t5, 1544
  LW t4, 0(s1)
  SW t4, 164(sp)
  ADDI t5, sp, 1264
  ADDI s1, t5, 1552
  LW t4, 0(s1)
  SW t4, 160(sp)
  ADDI t5, sp, 1264
  ADDI s1, t5, 1572
  LW t4, 0(s1)
  SW t4, 156(sp)
  ADDI t5, sp, 1264
  ADDI s1, t5, 1576
  LW t4, 0(s1)
  SW t4, 152(sp)
  ADDI t5, sp, 1264
  ADDI s1, t5, 1580
  LW t4, 0(s1)
  SW t4, 184(sp)
  ADDI t5, sp, 1264
  ADDI s1, t5, 1588
  LW t4, 0(s1)
  SW t4, 288(sp)
  ADDI t5, sp, 1264
  ADDI s1, t5, 1596
  LW t4, 0(s1)
  SW t4, 284(sp)
  ADDI t5, sp, 1264
  ADDI s1, t5, 1612
  LW t4, 0(s1)
  SW t4, 280(sp)
  ADDI t5, sp, 1264
  ADDI s1, t5, 1628
  LW t4, 0(s1)
  SW t4, 328(sp)
  ADDI a7, sp, 1264
  ADDI a7, a7, 1632
  LW t4, 0(a7)
  SW t4, 272(sp)
  ADDI a7, sp, 1264
  ADDI a7, a7, 1636
  LW t4, 0(a7)
  SW t4, 268(sp)
  ADDI a7, sp, 1264
  ADDI a7, a7, 1660
  LW a7, 0(a7)
  ADDI a1, sp, 1264
  ADDI a1, a1, 1668
  LW t4, 0(a1)
  SW t4, 260(sp)
  ADDI a1, sp, 1264
  ADDI a1, a1, 1672
  LW a1, 0(a1)
  ADDI t5, sp, 1264
  ADDI s5, t5, 1692
  LW t4, 0(s5)
  SW t4, 252(sp)
  ADDI t5, sp, 1264
  ADDI s5, t5, 1696
  LW t4, 0(s5)
  SW t4, 248(sp)
  ADDI t5, sp, 1264
  ADDI s5, t5, 1700
  LW s5, 0(s5)
  ADDI t5, sp, 1264
  ADDI s9, t5, 1704
  LW t4, 0(s9)
  SW t4, 240(sp)
  ADDI t5, sp, 1264
  ADDI s9, t5, 1712
  LW t4, 0(s9)
  SW t4, 236(sp)
  ADDI t5, sp, 1264
  ADDI s9, t5, 1728
  LW t4, 0(s9)
  SW t4, 232(sp)
  ADDI t5, sp, 1264
  ADDI s9, t5, 1736
  LW t4, 0(s9)
  SW t4, 228(sp)
  ADDI t5, sp, 1264
  ADDI s9, t5, 1748
  LW t4, 0(s9)
  SW t4, 224(sp)
  ADDI t5, sp, 1264
  ADDI s9, t5, 1752
  LW t4, 0(s9)
  SW t4, 112(sp)
  ADDI t5, sp, 1264
  ADDI s9, t5, 1768
  LW t4, 0(s9)
  SW t4, 72(sp)
  ADDI t5, sp, 1264
  ADDI s9, t5, 1772
  LW t4, 0(s9)
  SW t4, 68(sp)
  ADDI t5, sp, 1264
  ADDI s9, t5, 1788
  LW t4, 0(s9)
  SW t4, 64(sp)
  ADDI t5, sp, 1264
  ADDI s9, t5, 1800
  LW t4, 0(s9)
  SW t4, 60(sp)
  ADDI t5, sp, 1264
  ADDI s9, t5, 1804
  LW t4, 0(s9)
  SW t4, 56(sp)
  ADDI t5, sp, 1264
  ADDI s9, t5, 1816
  LW t4, 0(s9)
  SW t4, 52(sp)
  ADDI t5, sp, 1264
  ADDI s9, t5, 1820
  LW t4, 0(s9)
  SW t4, 48(sp)
  ADDI t5, sp, 1264
  ADDI s9, t5, 1828
  LW t4, 0(s9)
  SW t4, 44(sp)
  ADDI t5, sp, 1264
  ADDI s9, t5, 1836
  LW t4, 0(s9)
  SW t4, 0(sp)
  ADDI t5, sp, 1264
  ADDI s9, t5, 1840
  LW t4, 0(s9)
  SW t4, 36(sp)
  ADDI t5, sp, 1264
  ADDI s9, t5, 1844
  LW t4, 0(s9)
  SW t4, 32(sp)
  ADDI t5, sp, 1264
  ADDI s9, t5, 1848
  LW t4, 0(s9)
  SW t4, 28(sp)
  ADDI t5, sp, 1264
  ADDI s9, t5, 1852
  LW s9, 0(s9)
  ADDI t5, sp, 1264
  ADDI s0, t5, 1864
  LW t4, 0(s0)
  SW t4, 20(sp)
  ADDI t5, sp, 1264
  ADDI s0, t5, 1868
  LW t4, 0(s0)
  SW t4, 16(sp)
  ADDI t5, sp, 1264
  ADDI s0, t5, 1876
  LW t4, 0(s0)
  SW t4, 12(sp)
  ADDI t5, sp, 1264
  ADDI s0, t5, 1884
  LW t4, 0(s0)
  SW t4, 8(sp)
  ADDI t5, sp, 1264
  ADDI s0, t5, 1896
  LW t4, 0(s0)
  SW t4, 4(sp)
  ADDI t5, sp, 1264
  ADDI s0, t5, 1904
  LW t4, 0(s0)
  SW t4, 40(sp)
  ADDI t5, sp, 1264
  ADDI s0, t5, 1912
  LW t4, 0(s0)
  SW t4, 144(sp)
  ADDI t5, sp, 1264
  ADDI s0, t5, 1916
  LW t4, 0(s0)
  SW t4, 140(sp)
  ADDI t5, sp, 1264
  ADDI s0, t5, 1924
  LW t4, 0(s0)
  SW t4, 136(sp)
  ADDI t5, sp, 1264
  ADDI s0, t5, 1944
  LW t4, 0(s0)
  SW t4, 132(sp)
  ADDI t5, sp, 1264
  ADDI s0, t5, 1952
  LW t4, 0(s0)
  SW t4, 128(sp)
  ADDI t5, sp, 1264
  ADDI s0, t5, 1956
  LW t4, 0(s0)
  SW t4, 124(sp)
  ADDI t5, sp, 1264
  ADDI s0, t5, 1960
  LW t4, 0(s0)
  SW t4, 120(sp)
  ADDI t5, sp, 1264
  ADDI s0, t5, 1972
  LW t4, 0(s0)
  SW t4, 116(sp)
  ADDI t5, sp, 1264
  ADDI s0, t5, 1988
  LW t4, 0(s0)
  SW t4, 76(sp)
  ADDI t5, sp, 1264
  ADDI s0, t5, 1992
  LW t4, 0(s0)
  SW t4, 108(sp)
  ADDI t5, sp, 1264
  ADDI s0, t5, 2008
  LW t4, 0(s0)
  SW t4, 104(sp)
  ADDI t5, sp, 1264
  ADDI s0, t5, 2016
  LW t4, 0(s0)
  SW t4, 100(sp)
  ADDI t5, sp, 1264
  ADDI s0, t5, 2020
  LW t4, 0(s0)
  SW t4, 96(sp)
  ADDI t5, sp, 1264
  ADDI s0, t5, 2028
  LW t4, 0(s0)
  SW t4, 92(sp)
  ADDI t5, sp, 1264
  ADDI s0, t5, 2040
  LW t4, 0(s0)
  SW t4, 88(sp)
  LUI s0, 1
  ADDIW s0, s0, -2048
  ADDI t4, sp, 1264
  ADD s0, t4, s0
  LW t4, 0(s0)
  SW t4, 84(sp)
  LUI s0, 1
  ADDIW s0, s0, -2044
  LUI s0, 1
  ADDIW s0, s0, -2040
  ADDI t4, sp, 1264
  ADD s0, t4, s0
  LW t4, 0(s0)
  SW t4, 80(sp)
  LUI s0, 1
  ADDIW s0, s0, -2036
  LUI s0, 1
  ADDIW s0, s0, -2032
  ADDI t4, sp, 1264
  ADD s0, t4, s0
  LW t4, 0(s0)
  SW t4, 256(sp)
  LUI s0, 1
  ADDIW s0, s0, -2028
  LUI s0, 1
  ADDIW s0, s0, -2024
  ADDI t4, sp, 1264
  ADD s0, t4, s0
  LW t4, 0(s0)
  SW t4, 508(sp)
  LUI s0, 1
  ADDIW s0, s0, -2020
  LUI s0, 1
  ADDIW s0, s0, -2016
  ADDI t4, sp, 1264
  ADD s0, t4, s0
  LW t4, 0(s0)
  SW t4, 504(sp)
  LUI s0, 1
  ADDIW s0, s0, -2012
  ADDI t4, sp, 1264
  ADD s0, t4, s0
  LW t4, 0(s0)
  SW t4, 500(sp)
  LUI s0, 1
  ADDIW s0, s0, -2008
  LUI s0, 1
  ADDIW s0, s0, -2004
  ADDI t4, sp, 1264
  ADD s0, t4, s0
  LW t4, 0(s0)
  SW t4, 496(sp)
  LUI s0, 1
  ADDIW s0, s0, -2000
  LUI s0, 1
  ADDIW s0, s0, -1996
  LUI s0, 1
  ADDIW s0, s0, -1992
  ADDI t4, sp, 1264
  ADD s0, t4, s0
  LW t4, 0(s0)
  SW t4, 492(sp)
  LUI s0, 1
  ADDIW s0, s0, -1988
  ADDI t4, sp, 1264
  ADD s0, t4, s0
  LW t4, 0(s0)
  SW t4, 488(sp)
  LUI s0, 1
  ADDIW s0, s0, -1984
  LUI s0, 1
  ADDIW s0, s0, -1980
  LUI s0, 1
  ADDIW s0, s0, -1976
  LUI s0, 1
  ADDIW s0, s0, -1972
  ADDI t4, sp, 1264
  ADD s0, t4, s0
  LW t4, 0(s0)
  SW t4, 484(sp)
  LUI s0, 1
  ADDIW s0, s0, -1968
  ADDI t4, sp, 1264
  ADD s0, t4, s0
  LW t4, 0(s0)
  SW t4, 480(sp)
  LUI s0, 1
  ADDIW s0, s0, -1964
  ADDI t4, sp, 1264
  ADD s0, t4, s0
  LW t4, 0(s0)
  SW t4, 440(sp)
  LUI s0, 1
  ADDIW s0, s0, -1960
  LUI s0, 1
  ADDIW s0, s0, -1956
  LUI s0, 1
  ADDIW s0, s0, -1952
  LUI s0, 1
  ADDIW s0, s0, -1948
  ADDI t4, sp, 1264
  ADD s0, t4, s0
  LW t4, 0(s0)
  SW t4, 472(sp)
  LUI s0, 1
  ADDIW s0, s0, -1944
  ADDI t4, sp, 1264
  ADD s0, t4, s0
  LW t4, 0(s0)
  SW t4, 468(sp)
  LUI s0, 1
  ADDIW s0, s0, -1940
  ADDI t4, sp, 1264
  ADD s0, t4, s0
  LW t4, 0(s0)
  SW t4, 464(sp)
  LUI s0, 1
  ADDIW s0, s0, -1936
  LUI s0, 1
  ADDIW s0, s0, -1932
  ADDI t4, sp, 1264
  ADD s0, t4, s0
  LW t4, 0(s0)
  SW t4, 460(sp)
  LUI s0, 1
  ADDIW s0, s0, -1928
  ADDI t4, sp, 1264
  ADD s0, t4, s0
  LW t4, 0(s0)
  SW t4, 456(sp)
  LUI s0, 1
  ADDIW s0, s0, -1924
  ADDI t4, sp, 1264
  ADD s0, t4, s0
  LW t4, 0(s0)
  SW t4, 452(sp)
  LUI s0, 1
  ADDIW s0, s0, -1920
  LUI s0, 1
  ADDIW s0, s0, -1916
  ADDI t4, sp, 1264
  ADD s0, t4, s0
  LW t4, 0(s0)
  SW t4, 448(sp)
  LUI s0, 1
  ADDIW s0, s0, -1912
  LUI s0, 1
  ADDIW s0, s0, -1908
  ADDI t4, sp, 1264
  ADD s0, t4, s0
  LW t4, 0(s0)
  SW t4, 444(sp)
  LUI s0, 1
  ADDIW s0, s0, -1904
  ADDI t4, sp, 1264
  ADD s0, t4, s0
  LW t4, 0(s0)
  SW t4, 476(sp)
  LUI s0, 1
  ADDIW s0, s0, -1900
  LUI s0, 1
  ADDIW s0, s0, -1896
  LUI s0, 1
  ADDIW s0, s0, -1892
  LUI s0, 1
  ADDIW s0, s0, -1888
  LUI s0, 1
  ADDIW s0, s0, -1884
  LUI s0, 1
  ADDIW s0, s0, -1880
  LUI s0, 1
  ADDIW s0, s0, -1876
  ADDI t4, sp, 1264
  ADD s0, t4, s0
  LW t4, 0(s0)
  SW t4, 580(sp)
  LUI s0, 1
  ADDIW s0, s0, -1872
  ADDI t4, sp, 1264
  ADD s0, t4, s0
  LW t4, 0(s0)
  SW t4, 576(sp)
  LUI s0, 1
  ADDIW s0, s0, -1868
  LUI s0, 1
  ADDIW s0, s0, -1864
  ADDI t4, sp, 1264
  ADD s0, t4, s0
  LW t4, 0(s0)
  SW t4, 572(sp)
  LUI s0, 1
  ADDIW s0, s0, -1860
  ADDI t4, sp, 1264
  ADD s0, t4, s0
  LW t4, 0(s0)
  SW t4, 568(sp)
  LUI s0, 1
  ADDIW s0, s0, -1856
  ADDI t4, sp, 1264
  ADD s0, t4, s0
  LW t4, 0(s0)
  SW t4, 564(sp)
  LUI s0, 1
  ADDIW s0, s0, -1852
  LUI s0, 1
  ADDIW s0, s0, -1848
  LUI s0, 1
  ADDIW s0, s0, -1844
  ADDI t4, sp, 1264
  ADD s0, t4, s0
  LW t4, 0(s0)
  SW t4, 560(sp)
  LUI s0, 1
  ADDIW s0, s0, -1840
  LUI s0, 1
  ADDIW s0, s0, -1836
  LUI s0, 1
  ADDIW s0, s0, -1832
  LUI s0, 1
  ADDIW s0, s0, -1828
  LUI s0, 1
  ADDIW s0, s0, -1824
  ADDI t4, sp, 1264
  ADD s0, t4, s0
  LW t4, 0(s0)
  SW t4, 556(sp)
  LUI s0, 1
  ADDIW s0, s0, -1820
  LUI s0, 1
  ADDIW s0, s0, -1816
  ADDI a2, sp, 1264
  ADD s0, a2, s0
  LW s0, 0(s0)
  LUI a2, 1
  ADDIW a2, a2, -1812
  ADDI t4, sp, 1264
  ADD a2, t4, a2
  LW t4, 0(a2)
  SW t4, 512(sp)
  LUI a2, 1
  ADDIW a2, a2, -1808
  LUI a2, 1
  ADDIW a2, a2, -1804
  ADDI t4, sp, 1264
  ADD a2, t4, a2
  LW t4, 0(a2)
  SW t4, 544(sp)
  LUI a2, 1
  ADDIW a2, a2, -1800
  LUI a2, 1
  ADDIW a2, a2, -1796
  ADDI t5, sp, 1264
  ADD a2, t5, a2
  LW a2, 0(a2)
  LUI s3, 1
  ADDIW s3, s3, -1792
  ADDI t4, sp, 1264
  ADD s3, t4, s3
  LW t4, 0(s3)
  SW t4, 536(sp)
  LUI s3, 1
  ADDIW s3, s3, -1788
  LUI s3, 1
  ADDIW s3, s3, -1784
  ADDI t4, sp, 1264
  ADD s3, t4, s3
  LW t4, 0(s3)
  SW t4, 532(sp)
  LUI s3, 1
  ADDIW s3, s3, -1780
  ADDI t4, sp, 1264
  ADD s3, t4, s3
  LW t4, 0(s3)
  SW t4, 528(sp)
  LUI s3, 1
  ADDIW s3, s3, -1776
  LUI s3, 1
  ADDIW s3, s3, -1772
  ADDI t4, sp, 1264
  ADD s3, t4, s3
  LW t4, 0(s3)
  SW t4, 524(sp)
  LUI s3, 1
  ADDIW s3, s3, -1768
  ADDI t4, sp, 1264
  ADD s3, t4, s3
  LW t4, 0(s3)
  SW t4, 520(sp)
  LUI s3, 1
  ADDIW s3, s3, -1764
  ADDI t4, sp, 1264
  ADD s3, t4, s3
  LW t4, 0(s3)
  SW t4, 516(sp)
  LUI s3, 1
  ADDIW s3, s3, -1760
  LUI s3, 1
  ADDIW s3, s3, -1756
  LUI s3, 1
  ADDIW s3, s3, -1752
  ADDI t4, sp, 1264
  ADD s3, t4, s3
  LW t4, 0(s3)
  SW t4, 404(sp)
  LUI s3, 1
  ADDIW s3, s3, -1748
  ADDI t4, sp, 1264
  ADD s3, t4, s3
  LW t4, 0(s3)
  SW t4, 364(sp)
  LUI s3, 1
  ADDIW s3, s3, -1744
  LUI s3, 1
  ADDIW s3, s3, -1740
  LUI s3, 1
  ADDIW s3, s3, -1736
  ADDI t4, sp, 1264
  ADD s3, t4, s3
  LW t4, 0(s3)
  SW t4, 360(sp)
  LUI s3, 1
  ADDIW s3, s3, -1732
  LUI s3, 1
  ADDIW s3, s3, -1728
  LUI s3, 1
  ADDIW s3, s3, -1724
  LUI s3, 1
  ADDIW s3, s3, -1720
  ADDI t4, sp, 1264
  ADD s3, t4, s3
  LW t4, 0(s3)
  SW t4, 356(sp)
  LUI s3, 1
  ADDIW s3, s3, -1716
  ADDI t4, sp, 1264
  ADD s3, t4, s3
  LW t4, 0(s3)
  SW t4, 352(sp)
  LUI s3, 1
  ADDIW s3, s3, -1712
  ADDI t4, sp, 1264
  ADD s3, t4, s3
  LW t4, 0(s3)
  SW t4, 348(sp)
  LUI s3, 1
  ADDIW s3, s3, -1708
  LUI s3, 1
  ADDIW s3, s3, -1704
  LUI s3, 1
  ADDIW s3, s3, -1700
  ADDI t4, sp, 1264
  ADD s3, t4, s3
  LW t4, 0(s3)
  SW t4, 344(sp)
  LUI s3, 1
  ADDIW s3, s3, -1696
  ADDI t4, sp, 1264
  ADD s3, t4, s3
  LW t4, 0(s3)
  SW t4, 340(sp)
  LUI s3, 1
  ADDIW s3, s3, -1692
  LUI s3, 1
  ADDIW s3, s3, -1688
  LUI s3, 1
  ADDIW s3, s3, -1684
  LUI s3, 1
  ADDIW s3, s3, -1680
  LUI s3, 1
  ADDIW s3, s3, -1676
  ADDI t4, sp, 1264
  ADD s3, t4, s3
  LW t4, 0(s3)
  SW t4, 336(sp)
  LUI s3, 1
  ADDIW s3, s3, -1672
  LUI s3, 1
  ADDIW s3, s3, -1668
  LUI s3, 1
  ADDIW s3, s3, -1664
  LUI s3, 1
  ADDIW s3, s3, -1660
  ADDI t4, sp, 1264
  ADD s3, t4, s3
  LW t4, 0(s3)
  SW t4, 292(sp)
  LUI s3, 1
  ADDIW s3, s3, -1656
  LUI s3, 1
  ADDIW s3, s3, -1652
  LUI s3, 1
  ADDIW s3, s3, -1648
  LUI s3, 1
  ADDIW s3, s3, -1644
  LUI s3, 1
  ADDIW s3, s3, -1640
  ADDI t5, sp, 1264
  ADD s3, t5, s3
  LW s3, 0(s3)
  LUI s1, 1
  ADDIW s1, s1, -1636
  ADDI t4, sp, 1264
  ADD s1, t4, s1
  LW t4, 0(s1)
  SW t4, 324(sp)
  LUI s1, 1
  ADDIW s1, s1, -1632
  LUI s1, 1
  ADDIW s1, s1, -1628
  ADDI t4, sp, 1264
  ADD s1, t4, s1
  LW t4, 0(s1)
  SW t4, 320(sp)
  LUI s1, 1
  ADDIW s1, s1, -1624
  LUI s1, 1
  ADDIW s1, s1, -1620
  LUI s1, 1
  ADDIW s1, s1, -1616
  LUI s1, 1
  ADDIW s1, s1, -1612
  LUI s1, 1
  ADDIW s1, s1, -1608
  ADDI t4, sp, 1264
  ADD s1, t4, s1
  LW t4, 0(s1)
  SW t4, 316(sp)
  LUI s1, 1
  ADDIW s1, s1, -1604
  LUI s1, 1
  ADDIW s1, s1, -1600
  LUI s1, 1
  ADDIW s1, s1, -1596
  ADDI t4, sp, 1264
  ADD s1, t4, s1
  LW t4, 0(s1)
  SW t4, 312(sp)
  LUI s1, 1
  ADDIW s1, s1, -1592
  ADDI t4, sp, 1264
  ADD s1, t4, s1
  LW t4, 0(s1)
  SW t4, 308(sp)
  LUI s1, 1
  ADDIW s1, s1, -1588
  LUI s1, 1
  ADDIW s1, s1, -1584
  ADDI t4, sp, 1264
  ADD s1, t4, s1
  LW t4, 0(s1)
  SW t4, 304(sp)
  LUI s1, 1
  ADDIW s1, s1, -1580
  ADDI t4, sp, 1264
  ADD s1, t4, s1
  LW t4, 0(s1)
  SW t4, 300(sp)
  LUI s1, 1
  ADDIW s1, s1, -1576
  ADDI t4, sp, 1264
  ADD s1, t4, s1
  LW t4, 0(s1)
  SW t4, 296(sp)
  LUI s1, 1
  ADDIW s1, s1, -1572
  LUI s1, 1
  ADDIW s1, s1, -1568
  LUI s1, 1
  ADDIW s1, s1, -1564
  LUI s1, 1
  ADDIW s1, s1, -1560
  LUI s1, 1
  ADDIW s1, s1, -1556
  ADDI t4, sp, 1264
  ADD s1, t4, s1
  LW t4, 0(s1)
  SW t4, 332(sp)
  LUI s1, 1
  ADDIW s1, s1, -1552
  ADDI t4, sp, 1264
  ADD s1, t4, s1
  LW t4, 0(s1)
  SW t4, 436(sp)
  LUI s1, 1
  ADDIW s1, s1, -1548
  ADDI t4, sp, 1264
  ADD s1, t4, s1
  LW t4, 0(s1)
  SW t4, 432(sp)
  LUI s1, 1
  ADDIW s1, s1, -1544
  LUI s1, 1
  ADDIW s1, s1, -1540
  ADDI t4, sp, 1264
  ADD s1, t4, s1
  LW t4, 0(s1)
  SW t4, 428(sp)
  LUI s1, 1
  ADDIW s1, s1, -1536
  LUI s1, 1
  ADDIW s1, s1, -1532
  ADDI t4, sp, 1264
  ADD s1, t4, s1
  LW t4, 0(s1)
  SW t4, 424(sp)
  LUI s1, 1
  ADDIW s1, s1, -1528
  ADDI t4, sp, 1264
  ADD s1, t4, s1
  LW t4, 0(s1)
  SW t4, 420(sp)
  LUI s1, 1
  ADDIW s1, s1, -1524
  ADDI t4, sp, 1264
  ADD s1, t4, s1
  LW t4, 0(s1)
  SW t4, 416(sp)
  LUI s1, 1
  ADDIW s1, s1, -1520
  LUI s1, 1
  ADDIW s1, s1, -1516
  LUI s1, 1
  ADDIW s1, s1, -1512
  ADDI t4, sp, 1264
  ADD s1, t4, s1
  LW t4, 0(s1)
  SW t4, 412(sp)
  LUI s1, 1
  ADDIW s1, s1, -1508
  ADDI t4, sp, 1264
  ADD s1, t4, s1
  LW t4, 0(s1)
  SW t4, 408(sp)
  LUI s1, 1
  ADDIW s1, s1, -1504
  ADDI t4, sp, 1264
  ADD s1, t4, s1
  LW t4, 0(s1)
  SW t4, 368(sp)
  LUI s1, 1
  ADDIW s1, s1, -1500
  LUI s1, 1
  ADDIW s1, s1, -1496
  ADDI t4, sp, 1264
  ADD s1, t4, s1
  LW t4, 0(s1)
  SW t4, 400(sp)
  LUI s1, 1
  ADDIW s1, s1, -1492
  ADDI t4, sp, 1264
  ADD s1, t4, s1
  LW t4, 0(s1)
  SW t4, 396(sp)
  LUI s1, 1
  ADDIW s1, s1, -1488
  LUI s1, 1
  ADDIW s1, s1, -1484
  ADDI t4, sp, 1264
  ADD s1, t4, s1
  LW t4, 0(s1)
  SW t4, 392(sp)
  LUI s1, 1
  ADDIW s1, s1, -1480
  LUI s1, 1
  ADDIW s1, s1, -1476
  LUI s1, 1
  ADDIW s1, s1, -1472
  LUI s1, 1
  ADDIW s1, s1, -1468
  LUI s1, 1
  ADDIW s1, s1, -1464
  LUI s1, 1
  ADDIW s1, s1, -1460
  LUI s1, 1
  ADDIW s1, s1, -1456
  ADDI t4, sp, 1264
  ADD s1, t4, s1
  LW t4, 0(s1)
  SW t4, 388(sp)
  LUI s1, 1
  ADDIW s1, s1, -1452
  ADDI t4, sp, 1264
  ADD s1, t4, s1
  LW t4, 0(s1)
  SW t4, 384(sp)
  LUI s1, 1
  ADDIW s1, s1, -1448
  ADDI t4, sp, 1264
  ADD s1, t4, s1
  LW t4, 0(s1)
  SW t4, 380(sp)
  LUI s1, 1
  ADDIW s1, s1, -1444
  ADDI t4, sp, 1264
  ADD s1, t4, s1
  LW t4, 0(s1)
  SW t4, 376(sp)
  LUI s1, 1
  ADDIW s1, s1, -1440
  LUI s1, 1
  ADDIW s1, s1, -1436
  ADDI t4, sp, 1264
  ADD s1, t4, s1
  LW t4, 0(s1)
  SW t4, 372(sp)
  LUI s1, 1
  ADDIW s1, s1, -1432
  LUI s1, 1
  ADDIW s1, s1, -1428
  LW t4, 400(sp)
  MULW s1, t4, s3
  LW t4, 456(sp)
  MULW s1, s1, t4
  LW t4, 392(sp)
  MULW s1, s1, t4
  LW t4, 608(sp)
  MULW s1, s1, t4
  LW t4, 504(sp)
  ADDW s1, s1, t4
  MULW s2, s9, s2
  MULW s2, s2, s5
  MULW s2, s2, t1
  MULW s2, s2, a1
  MULW s2, s2, a5
  LW t4, 344(sp)
  MULW s2, s2, t4
  ADDW s1, s1, s2
  MULW s0, a2, s0
  ADDW s0, s1, s0
  LW t4, 1104(sp)
  ADDW s0, s0, t4
  LW t4, 444(sp)
  MULW s1, s11, t4
  MULW s1, s1, s7
  ADDW s0, s0, s1
  LW t4, 172(sp)
  MULW s1, t4, s4
  ADDW s0, s0, s1
  MULW s1, a3, a0
  ADDW s0, s0, s1
  ADDW s0, s0, t6
  MULW s1, t2, a4
  LW t4, 1108(sp)
  MULW s1, s1, t4
  MULW s1, s1, s8
  ADDW s0, s0, s1
  ADDW s0, s0, s6
  ADDW s0, s0, a7
  ADDW s0, s0, a6
  MULW s1, s10, t0
  MULW s1, s1, ra
  ADDW s0, s0, s1
  LW t4, 328(sp)
  LW t3, 368(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 540(sp)
  LW t3, 544(sp)
  MULW s1, t4, t3
  LW t4, 1156(sp)
  MULW s1, s1, t4
  LW t4, 552(sp)
  MULW s1, s1, t4
  LW t4, 576(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 24(sp)
  ADDW s0, s0, t4
  LW t4, 120(sp)
  ADDW s0, s0, t4
  LW t4, 244(sp)
  ADDW s0, s0, t4
  LW t4, 40(sp)
  LW t3, 668(sp)
  MULW s1, t4, t3
  LW t4, 740(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 464(sp)
  LW t3, 220(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 264(sp)
  LW t3, 904(sp)
  MULW s1, t4, t3
  LW t4, 896(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 184(sp)
  LW t3, 776(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 276(sp)
  LW t3, 200(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 356(sp)
  ADDW s0, s0, t4
  LW t4, 400(sp)
  ADDW s0, s0, t4
  LW t4, 1004(sp)
  ADDW s0, s0, t4
  LW t4, 28(sp)
  LW t3, 948(sp)
  MULW s1, t4, t3
  LW t4, 992(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 980(sp)
  LW t3, 880(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 596(sp)
  LW t3, 912(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 744(sp)
  LW t3, 924(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 496(sp)
  ADDW s0, s0, t4
  LW t4, 940(sp)
  ADDW s0, s0, t4
  LW t4, 836(sp)
  ADDW s0, s0, t4
  LW t4, 96(sp)
  LW t3, 1096(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 1124(sp)
  ADDW s0, s0, t4
  LW t4, 488(sp)
  LW t3, 500(sp)
  MULW s1, t4, t3
  LW t4, 900(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 312(sp)
  ADDW s0, s0, t4
  LW t4, 796(sp)
  LW t3, 1116(sp)
  MULW s1, t4, t3
  LW t4, 324(sp)
  MULW s1, s1, t4
  LW t4, 1156(sp)
  MULW s1, s1, t4
  LW t4, 932(sp)
  MULW s1, s1, t4
  LW t4, 252(sp)
  MULW s1, s1, t4
  LW t4, 428(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 896(sp)
  ADDW s0, s0, t4
  LW t4, 112(sp)
  LW t3, 268(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 960(sp)
  ADDW s0, s0, t4
  LW t4, 200(sp)
  ADDW s0, s0, t4
  LW t4, 1124(sp)
  ADDW s0, s0, t4
  LW t4, 388(sp)
  ADDW s0, s0, t4
  LW t4, 1036(sp)
  LW t3, 888(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 228(sp)
  ADDW s0, s0, t4
  LW t4, 812(sp)
  LW t3, 192(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 1048(sp)
  LW t3, 692(sp)
  MULW s1, t4, t3
  LW t4, 828(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 1104(sp)
  ADDW s0, s0, t4
  LW t4, 128(sp)
  ADDW s0, s0, t4
  LW t4, 1064(sp)
  LW t3, 196(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 1000(sp)
  ADDW s0, s0, t4
  LW t4, 520(sp)
  LW t3, 344(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 72(sp)
  LW t3, 88(sp)
  MULW s1, t4, t3
  LW t4, 988(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 700(sp)
  ADDW s0, s0, t4
  LW t4, 704(sp)
  LW t3, 536(sp)
  MULW s1, t4, t3
  LW t4, 516(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 708(sp)
  ADDW s0, s0, t4
  LW t4, 280(sp)
  ADDW s0, s0, t4
  LW t4, 1152(sp)
  ADDW s0, s0, t4
  LW t4, 1148(sp)
  ADDW s0, s0, t4
  LW t4, 1152(sp)
  ADDW s0, s0, t4
  LW t4, 420(sp)
  LW t3, 1084(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 904(sp)
  LW t3, 168(sp)
  MULW s1, t4, t3
  LW t4, 388(sp)
  MULW s1, s1, t4
  LW t4, 660(sp)
  MULW s1, s1, t4
  LW t4, 136(sp)
  MULW s1, s1, t4
  LW t4, 1112(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 712(sp)
  ADDW s0, s0, t4
  LW t4, 720(sp)
  LW t3, 304(sp)
  MULW s1, t4, t3
  LW t4, 560(sp)
  MULW s1, s1, t4
  LW t4, 604(sp)
  MULW s1, s1, t4
  LW t4, 620(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 640(sp)
  LW t3, 608(sp)
  MULW s1, t4, t3
  LW t4, 320(sp)
  MULW s1, s1, t4
  LW t4, 536(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 380(sp)
  ADDW s0, s0, t4
  LW t4, 116(sp)
  LW t3, 624(sp)
  MULW s1, t4, t3
  LW t4, 1148(sp)
  MULW s1, s1, t4
  LW t4, 812(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 548(sp)
  ADDW s0, s0, t4
  LW t4, 444(sp)
  LW t3, 648(sp)
  MULW s1, t4, t3
  LW t4, 820(sp)
  MULW s1, s1, t4
  LW t4, 1144(sp)
  MULW s1, s1, t4
  LW t4, 144(sp)
  MULW s1, s1, t4
  LW t4, 748(sp)
  MULW s1, s1, t4
  LW t4, 928(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 424(sp)
  ADDW s0, s0, t4
  LW t4, 872(sp)
  ADDW s0, s0, t4
  LW t4, 92(sp)
  LW t3, 508(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 1060(sp)
  LW t3, 364(sp)
  MULW s1, t4, t3
  LW t4, 584(sp)
  MULW s1, s1, t4
  LW t4, 496(sp)
  MULW s1, s1, t4
  LW t4, 96(sp)
  MULW s1, s1, t4
  LW t4, 612(sp)
  MULW s1, s1, t4
  LW t4, 672(sp)
  MULW s1, s1, t4
  LW t4, 824(sp)
  MULW s1, s1, t4
  LW t4, 376(sp)
  MULW s1, s1, t4
  LW t4, 548(sp)
  MULW s1, s1, t4
  LW t4, 524(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 644(sp)
  LW t3, 568(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 908(sp)
  ADDW s0, s0, t4
  LW t4, 1076(sp)
  LW t3, 1024(sp)
  MULW s1, t4, t3
  LW t4, 440(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 884(sp)
  ADDW s0, s0, t4
  LW t4, 388(sp)
  ADDW s0, s0, t4
  LW t4, 808(sp)
  ADDW s0, s0, t4
  LW t4, 176(sp)
  LW t3, 408(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 416(sp)
  ADDW s0, s0, t4
  LW t4, 784(sp)
  ADDW s0, s0, t4
  LW t4, 828(sp)
  ADDW s0, s0, t4
  LW t4, 1128(sp)
  ADDW s0, s0, t4
  LW t4, 484(sp)
  ADDW s0, s0, t4
  LW t4, 108(sp)
  ADDW s0, s0, t4
  LW t4, 692(sp)
  ADDW s0, s0, t4
  LW t4, 800(sp)
  ADDW s0, s0, t4
  LW t4, 656(sp)
  ADDW s0, s0, t4
  LW t4, 804(sp)
  LW t3, 688(sp)
  MULW s1, t4, t3
  LW t4, 684(sp)
  MULW s1, s1, t4
  LW t4, 840(sp)
  MULW s1, s1, t4
  LW t4, 876(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 288(sp)
  LW t3, 544(sp)
  MULW s1, t4, t3
  LW t4, 968(sp)
  MULW s1, s1, t4
  LW t4, 1108(sp)
  MULW s1, s1, t4
  LW t4, 132(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 52(sp)
  LW t3, 1132(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 804(sp)
  ADDW s0, s0, t4
  LW t4, 596(sp)
  LW t3, 1144(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 1052(sp)
  LW t3, 848(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 8(sp)
  ADDW s0, s0, t4
  LW t4, 284(sp)
  ADDW s0, s0, t4
  LW t4, 80(sp)
  ADDW s0, s0, t4
  LW t4, 432(sp)
  ADDW s0, s0, t4
  LW t4, 460(sp)
  LW t3, 124(sp)
  MULW s1, t4, t3
  LW t4, 348(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 852(sp)
  LW t3, 68(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 236(sp)
  ADDW s0, s0, t4
  LW t4, 564(sp)
  LW t3, 864(sp)
  MULW s1, t4, t3
  LW t4, 180(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 408(sp)
  ADDW s0, s0, t4
  LW t4, 260(sp)
  ADDW s0, s0, t4
  LW t4, 936(sp)
  LW t3, 140(sp)
  MULW s1, t4, t3
  LW t4, 200(sp)
  MULW s1, s1, t4
  LW t4, 248(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 984(sp)
  LW t3, 652(sp)
  MULW s1, t4, t3
  LW t4, 868(sp)
  MULW s1, s1, t4
  LW t4, 1016(sp)
  MULW s1, s1, t4
  LW t4, 132(sp)
  MULW s1, s1, t4
  LW t4, 108(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 448(sp)
  ADDW s0, s0, t4
  LW t4, 0(sp)
  ADDW s0, s0, t4
  LW t4, 300(sp)
  LW t3, 764(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 284(sp)
  ADDW s0, s0, t4
  LW t4, 292(sp)
  LW t3, 1012(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 492(sp)
  LW t3, 392(sp)
  MULW s1, t4, t3
  LW t4, 48(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 600(sp)
  LW t3, 0(sp)
  MULW s1, t4, t3
  LW t4, 600(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 1004(sp)
  LW t3, 12(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 324(sp)
  LW t3, 332(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 260(sp)
  ADDW s0, s0, t4
  LW t4, 1092(sp)
  LW t3, 588(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 964(sp)
  ADDW s0, s0, t4
  LW t4, 592(sp)
  ADDW s0, s0, t4
  LW t4, 560(sp)
  ADDW s0, s0, t4
  LW t4, 208(sp)
  ADDW s0, s0, t4
  LW t4, 676(sp)
  ADDW s0, s0, t4
  LW t4, 636(sp)
  ADDW s0, s0, t4
  LW t4, 832(sp)
  LW t3, 340(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 696(sp)
  ADDW s0, s0, t4
  LW t4, 164(sp)
  ADDW s0, s0, t4
  LW t4, 976(sp)
  LW t3, 428(sp)
  MULW s1, t4, t3
  LW t4, 736(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 1044(sp)
  ADDW s0, s0, t4
  LW t4, 856(sp)
  ADDW s0, s0, t4
  LW t4, 396(sp)
  LW t3, 956(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 1140(sp)
  LW t3, 900(sp)
  MULW s1, t4, t3
  LW t4, 1068(sp)
  MULW s1, s1, t4
  LW t4, 20(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 256(sp)
  LW t3, 296(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 892(sp)
  ADDW s0, s0, t4
  LW t4, 632(sp)
  LW t3, 916(sp)
  MULW s1, t4, t3
  LW t4, 744(sp)
  MULW s1, s1, t4
  LW t4, 428(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 4(sp)
  LW t3, 232(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 748(sp)
  ADDW s0, s0, t4
  LW t4, 740(sp)
  ADDW s0, s0, t4
  LW t4, 1020(sp)
  ADDW s0, s0, t4
  LW t4, 716(sp)
  ADDW s0, s0, t4
  LW t4, 480(sp)
  ADDW s0, s0, t4
  LW t4, 1140(sp)
  LW t3, 892(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 360(sp)
  ADDW s0, s0, t4
  LW t4, 576(sp)
  LW t3, 240(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 996(sp)
  ADDW s0, s0, t4
  LW t4, 580(sp)
  ADDW s0, s0, t4
  LW t4, 84(sp)
  ADDW s0, s0, t4
  LW t4, 980(sp)
  LW t3, 180(sp)
  MULW s1, t4, t3
  LW t4, 8(sp)
  MULW s1, s1, t4
  LW t4, 752(sp)
  MULW s1, s1, t4
  LW t4, 680(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 224(sp)
  LW t3, 756(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 476(sp)
  LW t3, 1068(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 1072(sp)
  ADDW s0, s0, t4
  LW t4, 628(sp)
  LW t3, 760(sp)
  MULW s1, t4, t3
  LW t4, 860(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 456(sp)
  LW t3, 920(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 156(sp)
  LW t3, 204(sp)
  MULW s1, t4, t3
  LW t4, 1100(sp)
  MULW s1, s1, t4
  LW t4, 1088(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 772(sp)
  LW t3, 56(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 468(sp)
  LW t3, 656(sp)
  MULW s1, t4, t3
  LW t4, 76(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 536(sp)
  ADDW s0, s0, t4
  LW t4, 60(sp)
  ADDW s0, s0, t4
  LW t4, 216(sp)
  ADDW s0, s0, t4
  LW t4, 160(sp)
  LW t3, 668(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 164(sp)
  LW t3, 404(sp)
  MULW s1, t4, t3
  LW t4, 816(sp)
  MULW s1, s1, t4
  LW t4, 64(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 308(sp)
  ADDW s0, s0, t4
  LW t4, 212(sp)
  LW t3, 16(sp)
  MULW s1, t4, t3
  LW t4, 1056(sp)
  MULW s1, s1, t4
  LW t4, 480(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 728(sp)
  LW t3, 572(sp)
  MULW s1, t4, t3
  LW t4, 300(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 344(sp)
  LW t3, 512(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 352(sp)
  ADDW s0, s0, t4
  LW t4, 532(sp)
  ADDW s0, s0, t4
  LW t4, 952(sp)
  ADDW s0, s0, t4
  LW t4, 452(sp)
  LW t3, 36(sp)
  MULW s1, t4, t3
  LW t4, 316(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 500(sp)
  ADDW s0, s0, t4
  LW t4, 32(sp)
  ADDW s0, s0, t4
  LW t4, 844(sp)
  ADDW s0, s0, t4
  LW t4, 184(sp)
  ADDW s0, s0, t4
  LW t4, 504(sp)
  ADDW s0, s0, t4
  LW t4, 972(sp)
  LW t3, 768(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 272(sp)
  LW t3, 412(sp)
  MULW s1, t4, t3
  LW t4, 928(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 384(sp)
  LW t3, 740(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 872(sp)
  LW t3, 336(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 1080(sp)
  LW t3, 664(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 172(sp)
  ADDW s0, s0, t4
  LW t4, 148(sp)
  LW t3, 472(sp)
  MULW s1, t4, t3
  LW t4, 164(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 772(sp)
  LW t3, 1032(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 20(sp)
  ADDW s0, s0, t4
  LW t4, 108(sp)
  LW t3, 1032(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 724(sp)
  LW t3, 1120(sp)
  MULW s1, t4, t3
  LW t4, 372(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 640(sp)
  ADDW s0, s0, t4
  LW t4, 184(sp)
  LW t3, 816(sp)
  MULW s1, t4, t3
  LW t4, 556(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 776(sp)
  LW t3, 112(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 528(sp)
  LW t3, 780(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 168(sp)
  LW t3, 932(sp)
  MULW s1, t4, t3
  LW t4, 152(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 656(sp)
  LW t3, 784(sp)
  MULW s1, t4, t3
  LW t4, 788(sp)
  MULW s1, s1, t4
  LW t4, 1040(sp)
  MULW s1, s1, t4
  LW t4, 792(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 436(sp)
  ADDW s0, s0, t4
  LW t4, 944(sp)
  ADDW s0, s0, t4
  LW t4, 512(sp)
  LW t3, 796(sp)
  MULW s1, t4, t3
  LW t4, 96(sp)
  MULW s1, s1, t4
  LW t4, 616(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 44(sp)
  LW t3, 120(sp)
  MULW s1, t4, t3
  LW t4, 548(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 104(sp)
  ADDW s0, s0, t4
  LW t4, 628(sp)
  ADDW s0, s0, t4
  LW t4, 732(sp)
  LW t3, 100(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 1136(sp)
  ADDW s0, s0, t4
  LW t4, 1008(sp)
  ADDW s0, s0, t4
  LW t4, 188(sp)
  ADDW s0, s0, t4
  LW t4, 1028(sp)
  ADDW s0, s0, t4
  ADD a0, s0, zero
  LD ra, 1160(sp)
  LD s0, 1168(sp)
  LD s1, 1176(sp)
  LD s2, 1184(sp)
  LD s3, 1192(sp)
  LD s4, 1200(sp)
  LD s5, 1208(sp)
  LD s6, 1216(sp)
  LD s7, 1224(sp)
  LD s8, 1232(sp)
  LD s9, 1240(sp)
  LD s10, 1248(sp)
  LD s11, 1256(sp)
  ADDI sp, sp, 1264
  JALR zero, 0(ra)
