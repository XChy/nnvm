.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -1664
  SD s10, 1216(sp)
  SD ra, 1224(sp)
  SD s0, 1232(sp)
  SD s1, 1240(sp)
  SD s2, 1248(sp)
  SD s3, 1256(sp)
  SD s4, 1264(sp)
  SD s5, 1272(sp)
  SD s6, 1280(sp)
  SD s7, 1288(sp)
  SD s8, 1296(sp)
  SD s9, 1304(sp)
  SD s11, 1312(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 464(sp)
  CALL getint
  ADD s11, a0, zero
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  SW s1, 840(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 856(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 844(sp)
  CALL getint
  ADD s2, a0, zero
  CALL getint
  ADD s3, a0, zero
  CALL getint
  ADD s6, a0, zero
  SW s6, 468(sp)
  CALL getint
  ADD s6, a0, zero
  SW s6, 472(sp)
  CALL getint
  ADD s6, a0, zero
  SW s6, 476(sp)
  CALL getint
  ADD s6, a0, zero
  SW s6, 936(sp)
  CALL getint
  ADD s6, a0, zero
  SW s6, 940(sp)
  CALL getint
  ADD s6, a0, zero
  SW s6, 944(sp)
  CALL getint
  ADD s6, a0, zero
  SW s6, 948(sp)
  CALL getint
  SW a0, 952(sp)
  LW a0, 464(sp)
  SW a0, 1328(sp)
  SW s11, 1332(sp)
  SW s0, 1336(sp)
  LW a0, 840(sp)
  SW a0, 1340(sp)
  LW a0, 856(sp)
  SW a0, 1344(sp)
  LW a0, 844(sp)
  SW a0, 1348(sp)
  SW s2, 1352(sp)
  SW s3, 1356(sp)
  LW a0, 468(sp)
  SW a0, 1360(sp)
  LW a0, 472(sp)
  SW a0, 1364(sp)
  LW a0, 476(sp)
  SW a0, 1368(sp)
  LW a0, 936(sp)
  SW a0, 1372(sp)
  LW a0, 940(sp)
  SW a0, 1376(sp)
  LW a0, 944(sp)
  SW a0, 1380(sp)
  LW a0, 948(sp)
  SW a0, 1384(sp)
  LW a0, 952(sp)
  SW a0, 1388(sp)
  ADD s9, zero, zero
  ADD s8, zero, zero
  # implict jump to bb1
bb1:
  ADDIW s6, s9, 1
  SW s6, 668(sp)
  LW s6, 668(sp)
  SLTI s6, s6, 16
  SB s6, 2(sp)
  LB s6, 2(sp)
  BNE s6, zero, bb15
  # implict jump to bb2
bb2:
  # implict jump to bb3
bb3:
  LW s6, 668(sp)
  SLTI s9, s6, 15
  BNE s9, zero, bb14
  # implict jump to bb4
bb4:
  LW a0, 1328(sp)
  SW a0, 140(sp)
  LW a0, 1332(sp)
  LW s6, 1336(sp)
  SW s6, 672(sp)
  LW s6, 1340(sp)
  SW s6, 676(sp)
  LW s6, 1344(sp)
  SW s6, 640(sp)
  LW s6, 1348(sp)
  SW s6, 684(sp)
  LW s6, 1352(sp)
  SW s6, 688(sp)
  LW s6, 1356(sp)
  SW s6, 692(sp)
  LW s6, 1360(sp)
  SW s6, 696(sp)
  LW s6, 1364(sp)
  SW s6, 700(sp)
  LW s6, 1368(sp)
  SW s6, 704(sp)
  LW s6, 1372(sp)
  SW s6, 708(sp)
  LW s6, 1376(sp)
  SW s6, 712(sp)
  LW s6, 1380(sp)
  SW s6, 752(sp)
  LW s6, 1384(sp)
  SW s6, 864(sp)
  LW s6, 1388(sp)
  SW s6, 868(sp)
  LW s6, 140(sp)
  SLTIU s6, s6, 1
  SB s6, 4(sp)
  LB s6, 4(sp)
  BNE s6, zero, bb13
  # implict jump to bb5
bb5:
  LW s6, 140(sp)
  SW s6, 860(sp)
  SW a0, 900(sp)
  LW a0, 672(sp)
  SW a0, 904(sp)
  LW a0, 676(sp)
  SW a0, 908(sp)
  LW a0, 640(sp)
  SW a0, 912(sp)
  LW a0, 684(sp)
  SW a0, 916(sp)
  LW a0, 688(sp)
  SW a0, 920(sp)
  LW a0, 692(sp)
  SW a0, 924(sp)
  LW a0, 696(sp)
  SW a0, 928(sp)
  LW a0, 700(sp)
  SW a0, 824(sp)
  LW a0, 704(sp)
  SW a0, 792(sp)
  LW a0, 708(sp)
  SW a0, 796(sp)
  LW a0, 712(sp)
  SW a0, 800(sp)
  LW a0, 752(sp)
  SW a0, 804(sp)
  LW a0, 864(sp)
  SW a0, 808(sp)
  LW a0, 868(sp)
  SW a0, 812(sp)
  LW a0, 464(sp)
  SW a0, 816(sp)
  SW s11, 820(sp)
  SW s0, 788(sp)
  LW a0, 840(sp)
  SW a0, 840(sp)
  LW s0, 856(sp)
  LW a0, 844(sp)
  SW a0, 844(sp)
  LW s4, 468(sp)
  LW s5, 472(sp)
  SW s5, 260(sp)
  LW s5, 476(sp)
  LW s6, 936(sp)
  SW s6, 264(sp)
  LW s6, 940(sp)
  SW s6, 268(sp)
  LW s8, 944(sp)
  SW s8, 272(sp)
  LW s8, 948(sp)
  LW s9, 952(sp)
  SW s9, 276(sp)
  # implict jump to bb6
bb6:
  LW s9, 276(sp)
  SW s9, 660(sp)
  SW s8, 656(sp)
  LW s8, 272(sp)
  SW s8, 652(sp)
  LW s6, 268(sp)
  SW s6, 648(sp)
  LW s6, 264(sp)
  SW s6, 644(sp)
  SW s5, 680(sp)
  LW s5, 260(sp)
  SW s5, 784(sp)
  SW s4, 780(sp)
  SW s3, 776(sp)
  SW s2, 772(sp)
  LW a0, 844(sp)
  SW a0, 844(sp)
  LW a0, 844(sp)
  SW a0, 768(sp)
  SW s0, 764(sp)
  LW a0, 840(sp)
  SW a0, 840(sp)
  LW a0, 840(sp)
  SW a0, 760(sp)
  LW a0, 788(sp)
  SW a0, 756(sp)
  LW a0, 820(sp)
  SW a0, 716(sp)
  LW a0, 816(sp)
  SW a0, 748(sp)
  LW a0, 812(sp)
  SW a0, 744(sp)
  LW a0, 808(sp)
  SW a0, 740(sp)
  LW a0, 804(sp)
  SW a0, 100(sp)
  LW a0, 800(sp)
  SW a0, 96(sp)
  LW a0, 796(sp)
  SW a0, 92(sp)
  LW a0, 792(sp)
  SW a0, 88(sp)
  LW a0, 824(sp)
  SW a0, 156(sp)
  LW a0, 928(sp)
  SW a0, 604(sp)
  LW a0, 924(sp)
  SW a0, 560(sp)
  LW a0, 920(sp)
  SW a0, 556(sp)
  LW a0, 916(sp)
  SW a0, 84(sp)
  LW a0, 912(sp)
  SW a0, 548(sp)
  LW a0, 908(sp)
  SW a0, 544(sp)
  LW a0, 904(sp)
  SW a0, 736(sp)
  LW a0, 900(sp)
  SW a0, 732(sp)
  LW s10, 860(sp)
  ADDI a0, zero, 1
  SW a0, 968(sp)
  LW a0, 968(sp)
  SUBW a0, s10, a0
  SW a0, 136(sp)
  LW a0, 736(sp)
  LW s0, 732(sp)
  ADDW a0, s0, a0
  SW a0, 664(sp)
  LUI s0, 243712
  ADDIW s0, s0, 1
  LW a0, 664(sp)
  REMW a0, a0, s0
  LW s0, 136(sp)
  SLTIU s0, s0, 1
  SB s0, 3(sp)
  LB s0, 3(sp)
  BNE s0, zero, bb8
  # implict jump to bb7
bb7:
  LW s0, 136(sp)
  SW s0, 860(sp)
  SW a0, 900(sp)
  LW a0, 544(sp)
  SW a0, 904(sp)
  LW a0, 548(sp)
  SW a0, 908(sp)
  LW a0, 84(sp)
  SW a0, 912(sp)
  LW a0, 556(sp)
  SW a0, 916(sp)
  LW a0, 560(sp)
  SW a0, 920(sp)
  LW a0, 604(sp)
  SW a0, 924(sp)
  LW a0, 156(sp)
  SW a0, 928(sp)
  LW a0, 88(sp)
  SW a0, 824(sp)
  LW a0, 92(sp)
  SW a0, 792(sp)
  LW a0, 96(sp)
  SW a0, 796(sp)
  LW a0, 100(sp)
  SW a0, 800(sp)
  LW a0, 740(sp)
  SW a0, 804(sp)
  LW a0, 744(sp)
  SW a0, 808(sp)
  LW a0, 748(sp)
  SW a0, 812(sp)
  LW a0, 716(sp)
  SW a0, 816(sp)
  LW a0, 756(sp)
  SW a0, 820(sp)
  LW a0, 760(sp)
  SW a0, 788(sp)
  LW a0, 764(sp)
  SW a0, 840(sp)
  LW a0, 840(sp)
  SW a0, 840(sp)
  LW s0, 768(sp)
  LW a0, 772(sp)
  SW a0, 844(sp)
  LW a0, 844(sp)
  SW a0, 844(sp)
  LW s2, 776(sp)
  LW s3, 780(sp)
  LW s4, 784(sp)
  LW s5, 680(sp)
  SW s5, 260(sp)
  LW s5, 644(sp)
  LW s6, 648(sp)
  SW s6, 264(sp)
  LW s6, 652(sp)
  SW s6, 268(sp)
  LW s8, 656(sp)
  SW s8, 272(sp)
  LW s8, 660(sp)
  ADD s6, zero, zero
  SW s6, 276(sp)
  JAL zero, bb6
bb8:
  # implict jump to bb9
bb9:
  SW a0, 1392(sp)
  LUI a0, 2
  ADDIW a0, a0, 656
  SW a0, 1396(sp)
  ADDI a0, zero, 62
  # implict jump to bb10
bb10:
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  ADDIW s0, s0, 8
  ADDI t6, sp, 1392
  ADD s0, t6, s0
  SW zero, 0(s0)
  BNE a0, zero, bb12
  # implict jump to bb11
bb11:
  LW a0, 1396(sp)
  ADDI s0, zero, 1
  SUBW s0, a0, s0
  SW s0, 956(sp)
  LW s0, 956(sp)
  SW s0, 1400(sp)
  LW s1, 1392(sp)
  ADDI s2, zero, 2
  SUBW s2, s1, s2
  SW s2, 1404(sp)
  ADDI s3, zero, 3
  SUBW s0, s1, s3
  SW s0, 960(sp)
  LW s0, 960(sp)
  SW s0, 1408(sp)
  ADDI s4, zero, 3
  SUBW s0, a0, s4
  SW s0, 964(sp)
  LW s0, 964(sp)
  SW s0, 1412(sp)
  ADDI s5, zero, 4
  SUBW s0, a0, s5
  SW s0, 932(sp)
  LW s0, 932(sp)
  SW s0, 1416(sp)
  ADDI s6, zero, 5
  SUBW s6, s1, s6
  SW s6, 1420(sp)
  ADDI s7, zero, 6
  SUBW s7, s1, s7
  SW s7, 1424(sp)
  ADDI s8, zero, 6
  SUBW s8, a0, s8
  SW s8, 1428(sp)
  ADDI s9, zero, 7
  SUBW s0, a0, s9
  SW s0, 972(sp)
  LW s0, 972(sp)
  SW s0, 1432(sp)
  ADDI s10, zero, 8
  SUBW s0, s1, s10
  SW s0, 976(sp)
  LW s0, 976(sp)
  SW s0, 1436(sp)
  ADDI s11, zero, 9
  SUBW s0, s1, s11
  SW s0, 980(sp)
  LW s0, 980(sp)
  SW s0, 1440(sp)
  ADDI s0, zero, 9
  SW s0, 280(sp)
  LW s0, 280(sp)
  SUBW s0, a0, s0
  SW s0, 984(sp)
  LW s0, 984(sp)
  SW s0, 1444(sp)
  ADDI s0, zero, 10
  SW s0, 244(sp)
  LW s0, 244(sp)
  SUBW s0, a0, s0
  SW s0, 988(sp)
  LW s0, 988(sp)
  SW s0, 1448(sp)
  ADDI s0, zero, 11
  SW s0, 288(sp)
  LW s0, 288(sp)
  SUBW s0, s1, s0
  SW s0, 992(sp)
  LW s0, 992(sp)
  SW s0, 1452(sp)
  ADDI s0, zero, 12
  SW s0, 292(sp)
  LW s0, 292(sp)
  SUBW s0, s1, s0
  SW s0, 996(sp)
  LW s0, 996(sp)
  SW s0, 1456(sp)
  ADDI s0, zero, 12
  SW s0, 296(sp)
  LW s0, 296(sp)
  SUBW s0, a0, s0
  SW s0, 1000(sp)
  LW s0, 1000(sp)
  SW s0, 1460(sp)
  ADDI s0, zero, 13
  SW s0, 300(sp)
  LW s0, 300(sp)
  SUBW s0, a0, s0
  SW s0, 1152(sp)
  LW s0, 1152(sp)
  SW s0, 1464(sp)
  ADDI s0, zero, 14
  SW s0, 304(sp)
  LW s0, 304(sp)
  SUBW s0, s1, s0
  SW s0, 1112(sp)
  LW s0, 1112(sp)
  SW s0, 1468(sp)
  ADDI s0, zero, 15
  SW s0, 308(sp)
  LW s0, 308(sp)
  SUBW s0, s1, s0
  SW s0, 1156(sp)
  LW s0, 1156(sp)
  SW s0, 1472(sp)
  ADDI s0, zero, 15
  SW s0, 312(sp)
  LW s0, 312(sp)
  SUBW s0, a0, s0
  SW s0, 1160(sp)
  LW s0, 1160(sp)
  SW s0, 1476(sp)
  ADDI s0, zero, 16
  SW s0, 316(sp)
  LW s0, 316(sp)
  SUBW s0, a0, s0
  SW s0, 1164(sp)
  LW s0, 1164(sp)
  SW s0, 1480(sp)
  ADDI s0, zero, 17
  SW s0, 320(sp)
  LW s0, 320(sp)
  SUBW s0, s1, s0
  SW s0, 1168(sp)
  LW s0, 1168(sp)
  SW s0, 1484(sp)
  ADDI s0, zero, 18
  SW s0, 204(sp)
  LW s0, 204(sp)
  SUBW s0, s1, s0
  SW s0, 1172(sp)
  LW s0, 1172(sp)
  SW s0, 1488(sp)
  ADDI s0, zero, 18
  SW s0, 164(sp)
  LW s0, 164(sp)
  SUBW s0, a0, s0
  SW s0, 1176(sp)
  LW s0, 1176(sp)
  SW s0, 1492(sp)
  ADDI s0, zero, 19
  SW s0, 168(sp)
  LW s0, 168(sp)
  SUBW s0, a0, s0
  SW s0, 1180(sp)
  LW s0, 1180(sp)
  SW s0, 1496(sp)
  ADDI s0, zero, 20
  SW s0, 172(sp)
  LW s0, 172(sp)
  SUBW s0, s1, s0
  SW s0, 1184(sp)
  LW s0, 1184(sp)
  SW s0, 1500(sp)
  ADDI s0, zero, 21
  SW s0, 176(sp)
  LW s0, 176(sp)
  SUBW s0, s1, s0
  SW s0, 1188(sp)
  LW s0, 1188(sp)
  SW s0, 1504(sp)
  ADDI s0, zero, 21
  SW s0, 180(sp)
  LW s0, 180(sp)
  SUBW s0, a0, s0
  SW s0, 1192(sp)
  LW s0, 1192(sp)
  SW s0, 1508(sp)
  ADDI s0, zero, 22
  SW s0, 184(sp)
  LW s0, 184(sp)
  SUBW s0, a0, s0
  SW s0, 1196(sp)
  LW s0, 1196(sp)
  SW s0, 1512(sp)
  ADDI s0, zero, 23
  SW s0, 188(sp)
  LW s0, 188(sp)
  SUBW s0, s1, s0
  SW s0, 1200(sp)
  LW s0, 1200(sp)
  SW s0, 1516(sp)
  ADDI s0, zero, 24
  SW s0, 192(sp)
  LW s0, 192(sp)
  SUBW s0, s1, s0
  SW s0, 1204(sp)
  LW s0, 1204(sp)
  SW s0, 1520(sp)
  ADDI s0, zero, 24
  SW s0, 196(sp)
  LW s0, 196(sp)
  SUBW s0, a0, s0
  SW s0, 1212(sp)
  LW s0, 1212(sp)
  SW s0, 1524(sp)
  ADDI s0, zero, 25
  SW s0, 200(sp)
  LW s0, 200(sp)
  SUBW s0, a0, s0
  SW s0, 1148(sp)
  LW s0, 1148(sp)
  SW s0, 1528(sp)
  ADDI s0, zero, 26
  SW s0, 160(sp)
  LW s0, 160(sp)
  SUBW s0, s1, s0
  SW s0, 1208(sp)
  LW s0, 1208(sp)
  SW s0, 1532(sp)
  ADDI s0, zero, 27
  SW s0, 208(sp)
  LW s0, 208(sp)
  SUBW s0, s1, s0
  SW s0, 1080(sp)
  LW s0, 1080(sp)
  SW s0, 1536(sp)
  ADDI s0, zero, 27
  SW s0, 212(sp)
  LW s0, 212(sp)
  SUBW s0, a0, s0
  SW s0, 1084(sp)
  LW s0, 1084(sp)
  SW s0, 1540(sp)
  ADDI s0, zero, 28
  SW s0, 216(sp)
  LW s0, 216(sp)
  SUBW s0, a0, s0
  SW s0, 1088(sp)
  LW s0, 1088(sp)
  SW s0, 1544(sp)
  ADDI s0, zero, 29
  SW s0, 220(sp)
  LW s0, 220(sp)
  SUBW s0, s1, s0
  SW s0, 1092(sp)
  LW s0, 1092(sp)
  SW s0, 1548(sp)
  ADDI s0, zero, 30
  SW s0, 224(sp)
  LW s0, 224(sp)
  SUBW s0, s1, s0
  SW s0, 1096(sp)
  LW s0, 1096(sp)
  SW s0, 1552(sp)
  ADDI s0, zero, 30
  SW s0, 228(sp)
  LW s0, 228(sp)
  SUBW s0, a0, s0
  SW s0, 1100(sp)
  LW s0, 1100(sp)
  SW s0, 1556(sp)
  ADDI s0, zero, 31
  SW s0, 232(sp)
  LW s0, 232(sp)
  SUBW s0, a0, s0
  SW s0, 1104(sp)
  LW s0, 1104(sp)
  SW s0, 1560(sp)
  ADDI s0, zero, 32
  SW s0, 236(sp)
  LW s0, 236(sp)
  SUBW s0, s1, s0
  SW s0, 1108(sp)
  LW s0, 1108(sp)
  SW s0, 1564(sp)
  ADDI s0, zero, 33
  SW s0, 240(sp)
  LW s0, 240(sp)
  SUBW s0, s1, s0
  SW s0, 1076(sp)
  LW s0, 1076(sp)
  SW s0, 1568(sp)
  ADDI s0, zero, 33
  SW s0, 1008(sp)
  LW s0, 1008(sp)
  SUBW s0, a0, s0
  SW s0, 1116(sp)
  LW s0, 1116(sp)
  SW s0, 1572(sp)
  ADDI s0, zero, 34
  SW s0, 896(sp)
  LW s0, 896(sp)
  SUBW s0, a0, s0
  SW s0, 1120(sp)
  LW s0, 1120(sp)
  SW s0, 1576(sp)
  ADDI s0, zero, 35
  SW s0, 1012(sp)
  LW s0, 1012(sp)
  SUBW s0, s1, s0
  SW s0, 1124(sp)
  LW s0, 1124(sp)
  SW s0, 1580(sp)
  ADDI s0, zero, 36
  SW s0, 552(sp)
  LW s0, 552(sp)
  SUBW s0, s1, s0
  SW s0, 1128(sp)
  LW s0, 1128(sp)
  SW s0, 1584(sp)
  ADDI s0, zero, 36
  SW s0, 1016(sp)
  LW s0, 1016(sp)
  SUBW s0, a0, s0
  SW s0, 1132(sp)
  LW s0, 1132(sp)
  SW s0, 1588(sp)
  ADDI s0, zero, 37
  SW s0, 1020(sp)
  LW s0, 1020(sp)
  SUBW s0, a0, s0
  SW s0, 1136(sp)
  LW s0, 1136(sp)
  SW s0, 1592(sp)
  ADDI s0, zero, 38
  SW s0, 1024(sp)
  LW s0, 1024(sp)
  SUBW s0, s1, s0
  SW s0, 1140(sp)
  LW s0, 1140(sp)
  SW s0, 1596(sp)
  ADDI s0, zero, 39
  SW s0, 1028(sp)
  LW s0, 1028(sp)
  SUBW s0, s1, s0
  SW s0, 1040(sp)
  LW s0, 1040(sp)
  SW s0, 1600(sp)
  ADDI s0, zero, 39
  SW s0, 1032(sp)
  LW s0, 1032(sp)
  SUBW s0, a0, s0
  SW s0, 1144(sp)
  LW s0, 1144(sp)
  SW s0, 1604(sp)
  ADDI s0, zero, 40
  SW s0, 1036(sp)
  LW s0, 1036(sp)
  SUBW s0, a0, s0
  SW s0, 504(sp)
  LW s0, 504(sp)
  SW s0, 1608(sp)
  ADDI s0, zero, 41
  SW s0, 1004(sp)
  LW s0, 1004(sp)
  SUBW s0, s1, s0
  SW s0, 508(sp)
  LW s0, 508(sp)
  SW s0, 1612(sp)
  ADDI s0, zero, 42
  SW s0, 1044(sp)
  LW s0, 1044(sp)
  SUBW s0, s1, s0
  SW s0, 720(sp)
  LW s0, 720(sp)
  SW s0, 1616(sp)
  ADDI s0, zero, 42
  SW s0, 1048(sp)
  LW s0, 1048(sp)
  SUBW s0, a0, s0
  SW s0, 516(sp)
  LW s0, 516(sp)
  SW s0, 1620(sp)
  ADDI s0, zero, 43
  SW s0, 1052(sp)
  LW s0, 1052(sp)
  SUBW s0, a0, s0
  SW s0, 520(sp)
  LW s0, 520(sp)
  SW s0, 1624(sp)
  ADDI s0, zero, 44
  SW s0, 1056(sp)
  LW s0, 1056(sp)
  SUBW s0, s1, s0
  SW s0, 484(sp)
  LW s0, 484(sp)
  SW s0, 1628(sp)
  ADDI s0, zero, 45
  SW s0, 1060(sp)
  LW s0, 1060(sp)
  SUBW s0, s1, s0
  SW s0, 724(sp)
  LW s0, 724(sp)
  SW s0, 1632(sp)
  ADDI s0, zero, 45
  SW s0, 1064(sp)
  LW s0, 1064(sp)
  SUBW s0, a0, s0
  SW s0, 532(sp)
  LW s0, 532(sp)
  SW s0, 1636(sp)
  ADDI s0, zero, 46
  SW s0, 1068(sp)
  LW s0, 1068(sp)
  SUBW s0, a0, s0
  SW s0, 536(sp)
  LW s0, 536(sp)
  SW s0, 1640(sp)
  ADDI s0, zero, 47
  SW s0, 832(sp)
  LW s0, 832(sp)
  SUBW s0, s1, s0
  SW s0, 728(sp)
  LW s0, 728(sp)
  SW s0, 1644(sp)
  ADDW a0, s1, a0
  LW s0, 956(sp)
  ADDW a0, a0, s0
  ADDW a0, a0, s2
  LW s0, 960(sp)
  ADDW a0, a0, s0
  LW s0, 964(sp)
  ADDW a0, a0, s0
  LW s0, 932(sp)
  ADDW a0, a0, s0
  ADDW a0, a0, s6
  ADDW a0, a0, s7
  ADDW a0, a0, s8
  LW s0, 972(sp)
  ADDW a0, a0, s0
  LW s0, 976(sp)
  ADDW a0, a0, s0
  LW s0, 980(sp)
  ADDW a0, a0, s0
  LW s0, 984(sp)
  ADDW a0, a0, s0
  LW s0, 988(sp)
  ADDW a0, a0, s0
  LW s0, 992(sp)
  ADDW a0, a0, s0
  LW s0, 996(sp)
  ADDW a0, a0, s0
  LW s0, 1000(sp)
  ADDW a0, a0, s0
  LW s0, 1152(sp)
  ADDW a0, a0, s0
  LW s0, 1112(sp)
  ADDW a0, a0, s0
  LW s0, 1156(sp)
  ADDW a0, a0, s0
  LW s0, 1160(sp)
  ADDW a0, a0, s0
  LW s0, 1164(sp)
  ADDW a0, a0, s0
  LW s0, 1168(sp)
  ADDW a0, a0, s0
  LW s0, 1172(sp)
  ADDW a0, a0, s0
  LW s0, 1176(sp)
  ADDW a0, a0, s0
  LW s0, 1180(sp)
  ADDW a0, a0, s0
  LW s0, 1184(sp)
  ADDW a0, a0, s0
  LW s0, 1188(sp)
  ADDW a0, a0, s0
  LW s0, 1192(sp)
  ADDW a0, a0, s0
  LW s0, 1196(sp)
  ADDW a0, a0, s0
  LW s0, 1200(sp)
  ADDW a0, a0, s0
  LW s0, 1204(sp)
  ADDW a0, a0, s0
  LW s0, 1212(sp)
  ADDW a0, a0, s0
  LW s0, 1148(sp)
  ADDW a0, a0, s0
  LW s0, 1208(sp)
  ADDW a0, a0, s0
  LW s0, 1080(sp)
  ADDW a0, a0, s0
  LW s0, 1084(sp)
  ADDW a0, a0, s0
  LW s0, 1088(sp)
  ADDW a0, a0, s0
  LW s0, 1092(sp)
  ADDW a0, a0, s0
  LW s0, 1096(sp)
  ADDW a0, a0, s0
  LW s0, 1100(sp)
  ADDW a0, a0, s0
  LW s0, 1104(sp)
  ADDW a0, a0, s0
  LW s0, 1108(sp)
  ADDW a0, a0, s0
  LW s0, 1076(sp)
  ADDW a0, a0, s0
  LW s0, 1116(sp)
  ADDW a0, a0, s0
  LW s0, 1120(sp)
  ADDW a0, a0, s0
  LW s0, 1124(sp)
  ADDW a0, a0, s0
  LW s0, 1128(sp)
  ADDW a0, a0, s0
  LW s0, 1132(sp)
  ADDW a0, a0, s0
  LW s0, 1136(sp)
  ADDW a0, a0, s0
  LW s0, 1140(sp)
  ADDW a0, a0, s0
  LW s0, 1040(sp)
  ADDW a0, a0, s0
  LW s0, 1144(sp)
  ADDW a0, a0, s0
  LW s0, 504(sp)
  ADDW a0, a0, s0
  LW s0, 508(sp)
  ADDW a0, a0, s0
  LW s0, 720(sp)
  ADDW a0, a0, s0
  LW s0, 516(sp)
  ADDW a0, a0, s0
  LW s0, 520(sp)
  ADDW a0, a0, s0
  LW s0, 484(sp)
  ADDW a0, a0, s0
  LW s0, 724(sp)
  ADDW a0, a0, s0
  LW s0, 532(sp)
  ADDW a0, a0, s0
  LW s0, 536(sp)
  ADDW a0, a0, s0
  LW s0, 728(sp)
  ADDW a0, a0, s0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD s10, 1216(sp)
  LD ra, 1224(sp)
  LD s0, 1232(sp)
  LD s1, 1240(sp)
  LD s2, 1248(sp)
  LD s3, 1256(sp)
  LD s4, 1264(sp)
  LD s5, 1272(sp)
  LD s6, 1280(sp)
  LD s7, 1288(sp)
  LD s8, 1296(sp)
  LD s9, 1304(sp)
  LD s11, 1312(sp)
  ADDI sp, sp, 1664
  JALR zero, 0(ra)
bb12:
  JAL zero, bb10
bb13:
  JAL zero, bb9
bb14:
  LW s9, 668(sp)
  JAL zero, bb1
bb15:
  SLLIW s9, s9, 2
  ADDI a0, sp, 1328
  ADD a0, a0, s9
  SD a0, 1320(sp)
  LW s6, 668(sp)
  SW s6, 828(sp)
  # implict jump to bb16
bb16:
  SW s8, 36(sp)
  LW a0, 828(sp)
  SW a0, 872(sp)
  LD a0, 1320(sp)
  LW a0, 0(a0)
  SW a0, 876(sp)
  LW a0, 872(sp)
  SLLIW a0, a0, 2
  SW a0, 880(sp)
  LW a0, 880(sp)
  ADDI t6, sp, 1328
  ADD a0, t6, a0
  SD a0, 1656(sp)
  LD a0, 1656(sp)
  LW a0, 0(a0)
  SW a0, 884(sp)
  LW a0, 884(sp)
  LW s6, 876(sp)
  BLT s6, a0, bb21
  # implict jump to bb17
bb17:
  LW s8, 36(sp)
  # implict jump to bb18
bb18:
  LW a0, 872(sp)
  ADDIW a0, a0, 1
  SW a0, 892(sp)
  LW a0, 892(sp)
  SLTI a0, a0, 16
  SB a0, 0(sp)
  LB a0, 0(sp)
  BNE a0, zero, bb20
  # implict jump to bb19
bb19:
  JAL zero, bb3
bb20:
  LW a0, 892(sp)
  SW a0, 828(sp)
  JAL zero, bb16
bb21:
  LD a0, 1320(sp)
  LW s8, 0(a0)
  LD a0, 1656(sp)
  LW a0, 0(a0)
  SW a0, 888(sp)
  LW a0, 888(sp)
  LD s6, 1320(sp)
  SW a0, 0(s6)
  LD a0, 1656(sp)
  SW s8, 0(a0)
  JAL zero, bb18
