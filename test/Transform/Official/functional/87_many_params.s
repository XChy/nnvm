.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -1520
  SD ra, 1080(sp)
  SD s0, 1088(sp)
  SD s1, 1096(sp)
  SD s2, 1104(sp)
  SD s3, 1112(sp)
  SD s4, 1120(sp)
  SD s5, 1128(sp)
  SD s6, 1136(sp)
  SD s7, 1144(sp)
  SD s8, 1152(sp)
  SD s9, 1160(sp)
  SD s10, 1168(sp)
  SD s11, 1176(sp)
  CALL getint
  ADD s8, a0, zero
  CALL getint
  ADD s7, a0, zero
  CALL getint
  ADD s6, a0, zero
  CALL getint
  ADD s5, a0, zero
  CALL getint
  ADD s0, a0, zero
  SW s0, 420(sp)
  CALL getint
  ADD s2, a0, zero
  CALL getint
  ADD s0, a0, zero
  SW s0, 708(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 712(sp)
  CALL getint
  ADD s9, a0, zero
  CALL getint
  ADD s0, a0, zero
  SW s0, 424(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 428(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 212(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 764(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 496(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 952(sp)
  CALL getint
  SW a0, 948(sp)
  SW s8, 1184(sp)
  SW s7, 1188(sp)
  SW s6, 1192(sp)
  SW s5, 1196(sp)
  LW a0, 420(sp)
  SW a0, 1200(sp)
  SW s2, 1204(sp)
  LW a0, 708(sp)
  SW a0, 1208(sp)
  LW a0, 712(sp)
  SW a0, 1212(sp)
  SW s9, 1216(sp)
  LW a0, 424(sp)
  SW a0, 1220(sp)
  LW a0, 428(sp)
  SW a0, 1224(sp)
  LW a0, 212(sp)
  SW a0, 1228(sp)
  LW a0, 764(sp)
  SW a0, 1232(sp)
  LW a0, 496(sp)
  SW a0, 1236(sp)
  LW a0, 952(sp)
  SW a0, 1240(sp)
  LW a0, 948(sp)
  SW a0, 1244(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb1
bb1:
  SW s1, 652(sp)
  ADDIW a0, s0, 1
  SW a0, 648(sp)
  LW a0, 648(sp)
  SLTI a0, a0, 16
  BNE a0, zero, bb15
  # implict jump to bb2
bb2:
  LW s1, 652(sp)
  # implict jump to bb3
bb3:
  LW a0, 648(sp)
  SLTI a0, a0, 15
  BNE a0, zero, bb14
  # implict jump to bb4
bb4:
  LW a0, 1184(sp)
  SW a0, 24(sp)
  LW s0, 1188(sp)
  LW a0, 1192(sp)
  SW a0, 644(sp)
  LW a0, 1196(sp)
  SW a0, 640(sp)
  LW a0, 1200(sp)
  SW a0, 572(sp)
  LW a0, 1204(sp)
  SW a0, 632(sp)
  LW a0, 1208(sp)
  SW a0, 628(sp)
  LW a0, 1212(sp)
  SW a0, 624(sp)
  LW a0, 1216(sp)
  SW a0, 620(sp)
  LW a0, 1220(sp)
  SW a0, 616(sp)
  LW a0, 1224(sp)
  SW a0, 612(sp)
  LW a0, 1228(sp)
  SW a0, 608(sp)
  LW a0, 1232(sp)
  SW a0, 604(sp)
  LW a0, 1236(sp)
  SW a0, 600(sp)
  LW a0, 1240(sp)
  SW a0, 596(sp)
  LW a0, 1244(sp)
  SW a0, 592(sp)
  LW a0, 24(sp)
  SLTIU a0, a0, 1
  SB a0, 0(sp)
  LB a0, 0(sp)
  BNE a0, zero, bb13
  # implict jump to bb5
bb5:
  LW a0, 24(sp)
  SW a0, 816(sp)
  SW s0, 812(sp)
  LW a0, 644(sp)
  SW a0, 808(sp)
  LW a0, 640(sp)
  SW a0, 804(sp)
  LW a0, 572(sp)
  SW a0, 800(sp)
  LW a0, 632(sp)
  SW a0, 796(sp)
  LW a0, 628(sp)
  SW a0, 792(sp)
  LW a0, 624(sp)
  SW a0, 788(sp)
  LW a0, 620(sp)
  SW a0, 784(sp)
  LW a0, 616(sp)
  SW a0, 780(sp)
  LW a0, 612(sp)
  SW a0, 776(sp)
  LW a0, 608(sp)
  SW a0, 772(sp)
  LW a0, 604(sp)
  SW a0, 768(sp)
  LW a0, 600(sp)
  SW a0, 700(sp)
  LW a0, 596(sp)
  SW a0, 760(sp)
  LW a0, 592(sp)
  SW a0, 756(sp)
  SW s8, 752(sp)
  SW s7, 748(sp)
  SW s6, 744(sp)
  SW s5, 740(sp)
  LW s10, 420(sp)
  SW s2, 180(sp)
  LW s11, 708(sp)
  LW a0, 712(sp)
  SW a0, 144(sp)
  ADD s8, s9, zero
  LW s9, 424(sp)
  LW a0, 428(sp)
  SW a0, 148(sp)
  LW s7, 212(sp)
  LW s6, 764(sp)
  LW s5, 496(sp)
  LW s2, 952(sp)
  LW a0, 948(sp)
  SW a0, 152(sp)
  # implict jump to bb6
bb6:
  LW a0, 152(sp)
  SW a0, 660(sp)
  SW s2, 664(sp)
  SW s5, 668(sp)
  SW s6, 672(sp)
  SW s7, 676(sp)
  LW a0, 148(sp)
  SW a0, 680(sp)
  SW s9, 684(sp)
  SW s8, 688(sp)
  LW a0, 144(sp)
  SW a0, 692(sp)
  SW s11, 696(sp)
  LW a0, 180(sp)
  SW a0, 960(sp)
  SW s10, 892(sp)
  LW a0, 740(sp)
  SW a0, 964(sp)
  LW a0, 744(sp)
  SW a0, 968(sp)
  LW a0, 748(sp)
  SW a0, 972(sp)
  LW a0, 752(sp)
  SW a0, 976(sp)
  LW a0, 756(sp)
  SW a0, 980(sp)
  LW a0, 760(sp)
  SW a0, 984(sp)
  LW a0, 700(sp)
  SW a0, 124(sp)
  LW a0, 768(sp)
  SW a0, 120(sp)
  LW a0, 772(sp)
  SW a0, 116(sp)
  LW a0, 776(sp)
  SW a0, 112(sp)
  LW a0, 780(sp)
  SW a0, 108(sp)
  LW a0, 784(sp)
  SW a0, 68(sp)
  LW a0, 788(sp)
  SW a0, 100(sp)
  LW a0, 792(sp)
  SW a0, 96(sp)
  LW a0, 796(sp)
  SW a0, 92(sp)
  LW a0, 800(sp)
  SW a0, 88(sp)
  LW a0, 804(sp)
  SW a0, 84(sp)
  LW a0, 808(sp)
  SW a0, 988(sp)
  LW a0, 812(sp)
  SW a0, 992(sp)
  LW a0, 816(sp)
  SW a0, 80(sp)
  ADDI a0, zero, 1
  SW a0, 208(sp)
  LW a0, 208(sp)
  LW s0, 80(sp)
  SUBW a0, s0, a0
  SW a0, 20(sp)
  LW s0, 988(sp)
  LW a0, 992(sp)
  ADDW a0, a0, s0
  SW a0, 656(sp)
  LUI s0, 243712
  ADDIW s0, s0, 1
  LW a0, 656(sp)
  REMW s0, a0, s0
  LW a0, 20(sp)
  SLTIU a0, a0, 1
  SB a0, 1(sp)
  LB a0, 1(sp)
  BNE a0, zero, bb8
  # implict jump to bb7
bb7:
  LW a0, 20(sp)
  SW a0, 816(sp)
  SW s0, 812(sp)
  LW a0, 84(sp)
  SW a0, 808(sp)
  LW a0, 88(sp)
  SW a0, 804(sp)
  LW a0, 92(sp)
  SW a0, 800(sp)
  LW a0, 96(sp)
  SW a0, 796(sp)
  LW a0, 100(sp)
  SW a0, 792(sp)
  LW a0, 68(sp)
  SW a0, 788(sp)
  LW a0, 108(sp)
  SW a0, 784(sp)
  LW a0, 112(sp)
  SW a0, 780(sp)
  LW a0, 116(sp)
  SW a0, 776(sp)
  LW a0, 120(sp)
  SW a0, 772(sp)
  LW a0, 124(sp)
  SW a0, 768(sp)
  LW a0, 984(sp)
  SW a0, 700(sp)
  LW a0, 980(sp)
  SW a0, 760(sp)
  LW a0, 976(sp)
  SW a0, 756(sp)
  LW a0, 972(sp)
  SW a0, 752(sp)
  LW a0, 968(sp)
  SW a0, 748(sp)
  LW a0, 964(sp)
  SW a0, 744(sp)
  LW a0, 892(sp)
  SW a0, 740(sp)
  LW s10, 960(sp)
  LW a0, 696(sp)
  SW a0, 180(sp)
  LW s11, 692(sp)
  LW a0, 688(sp)
  SW a0, 144(sp)
  LW s8, 684(sp)
  LW s9, 680(sp)
  LW a0, 676(sp)
  SW a0, 148(sp)
  LW s7, 672(sp)
  LW s6, 668(sp)
  LW s5, 664(sp)
  LW s2, 660(sp)
  ADD a0, zero, zero
  SW a0, 152(sp)
  JAL zero, bb6
bb8:
  # implict jump to bb9
bb9:
  SW s0, 1248(sp)
  LUI a0, 2
  ADDIW a0, a0, 656
  SW a0, 1252(sp)
  ADDI a0, zero, 62
  # implict jump to bb10
bb10:
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  ADDIW s0, s0, 8
  ADDI t6, sp, 1248
  ADD s0, t6, s0
  SW zero, 0(s0)
  BNE a0, zero, bb12
  # implict jump to bb11
bb11:
  LW a0, 1252(sp)
  ADDI s0, zero, 1
  SUBW s0, a0, s0
  SW s0, 1256(sp)
  LW s1, 1248(sp)
  ADDI s2, zero, 2
  SUBW s2, s1, s2
  SW s2, 1260(sp)
  ADDI s3, zero, 3
  SUBW s3, s1, s3
  SW s3, 944(sp)
  LW s3, 944(sp)
  SW s3, 1264(sp)
  ADDI s4, zero, 3
  SUBW s3, a0, s4
  SW s3, 940(sp)
  LW s3, 940(sp)
  SW s3, 1268(sp)
  ADDI s5, zero, 4
  SUBW s3, a0, s5
  SW s3, 936(sp)
  LW s3, 936(sp)
  SW s3, 1272(sp)
  ADDI s6, zero, 5
  SUBW s6, s1, s6
  SW s6, 1276(sp)
  ADDI s7, zero, 6
  SUBW s7, s1, s7
  SW s7, 1280(sp)
  ADDI s8, zero, 6
  SUBW s3, a0, s8
  SW s3, 932(sp)
  LW s3, 932(sp)
  SW s3, 1284(sp)
  ADDI s9, zero, 7
  SUBW s3, a0, s9
  SW s3, 928(sp)
  LW s3, 928(sp)
  SW s3, 1288(sp)
  ADDI s9, zero, 8
  SUBW s3, s1, s9
  SW s3, 924(sp)
  LW s3, 924(sp)
  SW s3, 1292(sp)
  ADDI s9, zero, 9
  SUBW s3, s1, s9
  SW s3, 920(sp)
  LW s3, 920(sp)
  SW s3, 1296(sp)
  ADDI s9, zero, 9
  SUBW s3, a0, s9
  SW s3, 916(sp)
  LW s3, 916(sp)
  SW s3, 1300(sp)
  ADDI s9, zero, 10
  SUBW s3, a0, s9
  SW s3, 912(sp)
  LW s3, 912(sp)
  SW s3, 1304(sp)
  ADDI s9, zero, 11
  SUBW s3, s1, s9
  SW s3, 908(sp)
  LW s3, 908(sp)
  SW s3, 1308(sp)
  ADDI s9, zero, 12
  SUBW s3, s1, s9
  SW s3, 904(sp)
  LW s3, 904(sp)
  SW s3, 1312(sp)
  ADDI s9, zero, 12
  SUBW s3, a0, s9
  SW s3, 900(sp)
  LW s3, 900(sp)
  SW s3, 1316(sp)
  ADDI s9, zero, 13
  SUBW s3, a0, s9
  SW s3, 896(sp)
  LW s3, 896(sp)
  SW s3, 1320(sp)
  ADDI s9, zero, 14
  SUBW s3, s1, s9
  SW s3, 828(sp)
  LW s3, 828(sp)
  SW s3, 1324(sp)
  ADDI s9, zero, 15
  SUBW s3, s1, s9
  SW s3, 888(sp)
  LW s3, 888(sp)
  SW s3, 1328(sp)
  ADDI s9, zero, 15
  SUBW s3, a0, s9
  SW s3, 884(sp)
  LW s3, 884(sp)
  SW s3, 1332(sp)
  ADDI s9, zero, 16
  SUBW s3, a0, s9
  SW s3, 880(sp)
  LW s3, 880(sp)
  SW s3, 1336(sp)
  ADDI s9, zero, 17
  SUBW s3, s1, s9
  SW s3, 876(sp)
  LW s3, 876(sp)
  SW s3, 1340(sp)
  ADDI s9, zero, 18
  SUBW s3, s1, s9
  SW s3, 872(sp)
  LW s3, 872(sp)
  SW s3, 1344(sp)
  ADDI s9, zero, 18
  SUBW s3, a0, s9
  SW s3, 868(sp)
  LW s3, 868(sp)
  SW s3, 1348(sp)
  ADDI s9, zero, 19
  SUBW s3, a0, s9
  SW s3, 864(sp)
  LW s3, 864(sp)
  SW s3, 1352(sp)
  ADDI s10, zero, 20
  SUBW s3, s1, s10
  SW s3, 860(sp)
  LW s3, 860(sp)
  SW s3, 1356(sp)
  ADDI s10, zero, 21
  SUBW s3, s1, s10
  SW s3, 856(sp)
  LW s3, 856(sp)
  SW s3, 1360(sp)
  ADDI s10, zero, 21
  SUBW s3, a0, s10
  SW s3, 852(sp)
  LW s3, 852(sp)
  SW s3, 1364(sp)
  ADDI s10, zero, 22
  SUBW s3, a0, s10
  SW s3, 848(sp)
  LW s3, 848(sp)
  SW s3, 1368(sp)
  ADDI s10, zero, 23
  SUBW s3, s1, s10
  SW s3, 844(sp)
  LW s3, 844(sp)
  SW s3, 1372(sp)
  ADDI s10, zero, 24
  SUBW s3, s1, s10
  SW s3, 840(sp)
  LW s3, 840(sp)
  SW s3, 1376(sp)
  ADDI s10, zero, 24
  SUBW s3, a0, s10
  SW s3, 836(sp)
  LW s3, 836(sp)
  SW s3, 1380(sp)
  ADDI s10, zero, 25
  SUBW s3, a0, s10
  SW s3, 832(sp)
  LW s3, 832(sp)
  SW s3, 1384(sp)
  ADDI s10, zero, 26
  SUBW s3, s1, s10
  SW s3, 1024(sp)
  LW s3, 1024(sp)
  SW s3, 1388(sp)
  ADDI s10, zero, 27
  SUBW s3, s1, s10
  SW s3, 956(sp)
  LW s3, 956(sp)
  SW s3, 1392(sp)
  ADDI s10, zero, 27
  SUBW s3, a0, s10
  SW s3, 1028(sp)
  LW s3, 1028(sp)
  SW s3, 1396(sp)
  ADDI s10, zero, 28
  SUBW s3, a0, s10
  SW s3, 1032(sp)
  LW s3, 1032(sp)
  SW s3, 1400(sp)
  ADDI s10, zero, 29
  SUBW s3, s1, s10
  SW s3, 1036(sp)
  LW s3, 1036(sp)
  SW s3, 1404(sp)
  ADDI s10, zero, 30
  SUBW s3, s1, s10
  SW s3, 1040(sp)
  LW s3, 1040(sp)
  SW s3, 1408(sp)
  ADDI s10, zero, 30
  SUBW s3, a0, s10
  SW s3, 1044(sp)
  LW s3, 1044(sp)
  SW s3, 1412(sp)
  ADDI s10, zero, 31
  SUBW s3, a0, s10
  SW s3, 1048(sp)
  LW s3, 1048(sp)
  SW s3, 1416(sp)
  ADDI s10, zero, 32
  SUBW s3, s1, s10
  SW s3, 1052(sp)
  LW s3, 1052(sp)
  SW s3, 1420(sp)
  ADDI s10, zero, 33
  SUBW s3, s1, s10
  SW s3, 1056(sp)
  LW s3, 1056(sp)
  SW s3, 1424(sp)
  ADDI s10, zero, 33
  SUBW s3, a0, s10
  SW s3, 1060(sp)
  LW s3, 1060(sp)
  SW s3, 1428(sp)
  ADDI s10, zero, 34
  SUBW s3, a0, s10
  SW s3, 1064(sp)
  LW s3, 1064(sp)
  SW s3, 1432(sp)
  ADDI s10, zero, 35
  SUBW s3, s1, s10
  SW s3, 1068(sp)
  LW s3, 1068(sp)
  SW s3, 1436(sp)
  ADDI s10, zero, 36
  SUBW s3, s1, s10
  SW s3, 1072(sp)
  LW s3, 1072(sp)
  SW s3, 1440(sp)
  ADDI s10, zero, 36
  SUBW s3, a0, s10
  SW s3, 1020(sp)
  LW s3, 1020(sp)
  SW s3, 1444(sp)
  ADDI s11, zero, 37
  SUBW s3, a0, s11
  SW s3, 1076(sp)
  LW s3, 1076(sp)
  SW s3, 1448(sp)
  ADDI s3, zero, 38
  SW s3, 156(sp)
  LW s3, 156(sp)
  SUBW s3, s1, s3
  SW s3, 1016(sp)
  LW s3, 1016(sp)
  SW s3, 1452(sp)
  ADDI s3, zero, 39
  SW s3, 160(sp)
  LW s3, 160(sp)
  SUBW s3, s1, s3
  SW s3, 1012(sp)
  LW s3, 1012(sp)
  SW s3, 1456(sp)
  ADDI s3, zero, 39
  SW s3, 164(sp)
  LW s3, 164(sp)
  SUBW s3, a0, s3
  SW s3, 1008(sp)
  LW s3, 1008(sp)
  SW s3, 1460(sp)
  ADDI s3, zero, 40
  SW s3, 168(sp)
  LW s3, 168(sp)
  SUBW s3, a0, s3
  SW s3, 476(sp)
  LW s3, 476(sp)
  SW s3, 1464(sp)
  ADDI s3, zero, 41
  SW s3, 172(sp)
  LW s3, 172(sp)
  SUBW s3, s1, s3
  SW s3, 480(sp)
  LW s3, 480(sp)
  SW s3, 1468(sp)
  ADDI s3, zero, 42
  SW s3, 176(sp)
  LW s3, 176(sp)
  SUBW s3, s1, s3
  SW s3, 1004(sp)
  LW s3, 1004(sp)
  SW s3, 1472(sp)
  ADDI s3, zero, 42
  SW s3, 140(sp)
  LW s3, 140(sp)
  SUBW s3, a0, s3
  SW s3, 488(sp)
  LW s3, 488(sp)
  SW s3, 1476(sp)
  ADDI s3, zero, 43
  SW s3, 184(sp)
  LW s3, 184(sp)
  SUBW s3, a0, s3
  SW s3, 1000(sp)
  LW s3, 1000(sp)
  SW s3, 1480(sp)
  ADDI s3, zero, 44
  SW s3, 188(sp)
  LW s3, 188(sp)
  SUBW s3, s1, s3
  SW s3, 252(sp)
  LW s3, 252(sp)
  SW s3, 1484(sp)
  ADDI s3, zero, 45
  SW s3, 192(sp)
  LW s3, 192(sp)
  SUBW s3, s1, s3
  SW s3, 500(sp)
  LW s3, 500(sp)
  SW s3, 1488(sp)
  ADDI s3, zero, 45
  SW s3, 196(sp)
  LW s3, 196(sp)
  SUBW s3, a0, s3
  SW s3, 540(sp)
  LW s3, 540(sp)
  SW s3, 1492(sp)
  ADDI s3, zero, 46
  SW s3, 200(sp)
  LW s3, 200(sp)
  SUBW s3, a0, s3
  SW s3, 72(sp)
  LW s3, 72(sp)
  SW s3, 1496(sp)
  ADDI s3, zero, 47
  SW s3, 732(sp)
  LW s3, 732(sp)
  SUBW s3, s1, s3
  SW s3, 996(sp)
  LW s3, 996(sp)
  SW s3, 1500(sp)
  ADDW a0, s1, a0
  ADDW a0, a0, s0
  ADDW a0, a0, s2
  LW s0, 944(sp)
  ADDW a0, a0, s0
  LW s0, 940(sp)
  ADDW a0, a0, s0
  LW s0, 936(sp)
  ADDW a0, a0, s0
  ADDW a0, a0, s6
  ADDW a0, a0, s7
  LW s0, 932(sp)
  ADDW a0, a0, s0
  LW s0, 928(sp)
  ADDW a0, a0, s0
  LW s0, 924(sp)
  ADDW a0, a0, s0
  LW s0, 920(sp)
  ADDW a0, a0, s0
  LW s0, 916(sp)
  ADDW a0, a0, s0
  LW s0, 912(sp)
  ADDW a0, a0, s0
  LW s0, 908(sp)
  ADDW a0, a0, s0
  LW s0, 904(sp)
  ADDW a0, a0, s0
  LW s0, 900(sp)
  ADDW a0, a0, s0
  LW s0, 896(sp)
  ADDW a0, a0, s0
  LW s0, 828(sp)
  ADDW a0, a0, s0
  LW s0, 888(sp)
  ADDW a0, a0, s0
  LW s0, 884(sp)
  ADDW a0, a0, s0
  LW s0, 880(sp)
  ADDW a0, a0, s0
  LW s0, 876(sp)
  ADDW a0, a0, s0
  LW s0, 872(sp)
  ADDW a0, a0, s0
  LW s0, 868(sp)
  ADDW a0, a0, s0
  LW s0, 864(sp)
  ADDW a0, a0, s0
  LW s0, 860(sp)
  ADDW a0, a0, s0
  LW s0, 856(sp)
  ADDW a0, a0, s0
  LW s0, 852(sp)
  ADDW a0, a0, s0
  LW s0, 848(sp)
  ADDW a0, a0, s0
  LW s0, 844(sp)
  ADDW a0, a0, s0
  LW s0, 840(sp)
  ADDW a0, a0, s0
  LW s0, 836(sp)
  ADDW a0, a0, s0
  LW s0, 832(sp)
  ADDW a0, a0, s0
  LW s0, 1024(sp)
  ADDW a0, a0, s0
  LW s0, 956(sp)
  ADDW a0, a0, s0
  LW s0, 1028(sp)
  ADDW a0, a0, s0
  LW s0, 1032(sp)
  ADDW a0, a0, s0
  LW s0, 1036(sp)
  ADDW a0, a0, s0
  LW s0, 1040(sp)
  ADDW a0, a0, s0
  LW s0, 1044(sp)
  ADDW a0, a0, s0
  LW s0, 1048(sp)
  ADDW a0, a0, s0
  LW s0, 1052(sp)
  ADDW a0, a0, s0
  LW s0, 1056(sp)
  ADDW a0, a0, s0
  LW s0, 1060(sp)
  ADDW a0, a0, s0
  LW s0, 1064(sp)
  ADDW a0, a0, s0
  LW s0, 1068(sp)
  ADDW a0, a0, s0
  LW s0, 1072(sp)
  ADDW a0, a0, s0
  LW s0, 1020(sp)
  ADDW a0, a0, s0
  LW s0, 1076(sp)
  ADDW a0, a0, s0
  LW s0, 1016(sp)
  ADDW a0, a0, s0
  LW s0, 1012(sp)
  ADDW a0, a0, s0
  LW s0, 1008(sp)
  ADDW a0, a0, s0
  LW s0, 476(sp)
  ADDW a0, a0, s0
  LW s0, 480(sp)
  ADDW a0, a0, s0
  LW s0, 1004(sp)
  ADDW a0, a0, s0
  LW s0, 488(sp)
  ADDW a0, a0, s0
  LW s0, 1000(sp)
  ADDW a0, a0, s0
  LW s0, 252(sp)
  ADDW a0, a0, s0
  LW s0, 500(sp)
  ADDW a0, a0, s0
  LW s0, 540(sp)
  ADDW a0, a0, s0
  LW s0, 72(sp)
  ADDW a0, a0, s0
  LW s0, 996(sp)
  ADDW a0, a0, s0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 1080(sp)
  LD s0, 1088(sp)
  LD s1, 1096(sp)
  LD s2, 1104(sp)
  LD s3, 1112(sp)
  LD s4, 1120(sp)
  LD s5, 1128(sp)
  LD s6, 1136(sp)
  LD s7, 1144(sp)
  LD s8, 1152(sp)
  LD s9, 1160(sp)
  LD s10, 1168(sp)
  LD s11, 1176(sp)
  ADDI sp, sp, 1520
  JALR zero, 0(ra)
bb12:
  JAL zero, bb10
bb13:
  JAL zero, bb9
bb14:
  LW s0, 648(sp)
  JAL zero, bb1
bb15:
  SLLIW a0, s0, 2
  ADDI t6, sp, 1184
  ADD s4, t6, a0
  LW a0, 648(sp)
  SW a0, 736(sp)
  LW s1, 652(sp)
  # implict jump to bb16
bb16:
  SW s1, 220(sp)
  LW a0, 736(sp)
  SW a0, 588(sp)
  LW a0, 0(s4)
  SW a0, 584(sp)
  LW a0, 588(sp)
  SLLIW a0, a0, 2
  SW a0, 580(sp)
  LW a0, 580(sp)
  ADDI t6, sp, 1184
  ADD a0, t6, a0
  SD a0, 1512(sp)
  LD a0, 1512(sp)
  LW a0, 0(a0)
  SW a0, 636(sp)
  LW a0, 636(sp)
  LW s0, 584(sp)
  BLT s0, a0, bb21
  # implict jump to bb17
bb17:
  LW s1, 220(sp)
  # implict jump to bb18
bb18:
  LW s0, 588(sp)
  ADDIW s0, s0, 1
  SW s0, 820(sp)
  LW s0, 820(sp)
  SLTI s0, s0, 16
  SB s0, 2(sp)
  LB s0, 2(sp)
  BNE s0, zero, bb20
  # implict jump to bb19
bb19:
  JAL zero, bb3
bb20:
  LW s0, 820(sp)
  SW s0, 736(sp)
  JAL zero, bb16
bb21:
  LW s1, 0(s4)
  LD s0, 1512(sp)
  LW s0, 0(s0)
  SW s0, 824(sp)
  LW s0, 824(sp)
  SW s0, 0(s4)
  LD s0, 1512(sp)
  SW s1, 0(s0)
  JAL zero, bb18
