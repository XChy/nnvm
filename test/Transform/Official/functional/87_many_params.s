.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -1600
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
  CALL getint
  ADD s0, a0, zero
  SW s0, 428(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 808(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 432(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 436(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 908(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 912(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 916(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 920(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 888(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 928(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 932(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 936(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 940(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 944(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 948(sp)
  CALL getint
  SW a0, 952(sp)
  LW a0, 428(sp)
  SW a0, 1264(sp)
  LW a0, 808(sp)
  SW a0, 1268(sp)
  LW a0, 432(sp)
  SW a0, 1272(sp)
  LW a0, 436(sp)
  SW a0, 1276(sp)
  LW a0, 908(sp)
  SW a0, 1280(sp)
  LW a0, 912(sp)
  SW a0, 1284(sp)
  LW a0, 916(sp)
  SW a0, 1288(sp)
  LW a0, 920(sp)
  SW a0, 1292(sp)
  LW a0, 888(sp)
  SW a0, 1296(sp)
  LW a0, 928(sp)
  SW a0, 1300(sp)
  LW a0, 932(sp)
  SW a0, 1304(sp)
  LW a0, 936(sp)
  SW a0, 1308(sp)
  LW a0, 940(sp)
  SW a0, 1312(sp)
  LW a0, 944(sp)
  SW a0, 1316(sp)
  LW a0, 948(sp)
  SW a0, 1320(sp)
  LW a0, 952(sp)
  SW a0, 1324(sp)
  ADD s8, zero, zero
  ADD a0, zero, zero
  # implict jump to bb1
bb1:
  ADDIW s9, s8, 1
  SLTI s10, s9, 16
  BNE s10, zero, bb15
  # implict jump to bb2
bb2:
  # implict jump to bb3
bb3:
  SLTI s8, s9, 15
  BNE s8, zero, bb14
  # implict jump to bb4
bb4:
  LW a0, 1264(sp)
  SW a0, 136(sp)
  LW a0, 1268(sp)
  LW s1, 1272(sp)
  SW s1, 804(sp)
  LW s1, 1276(sp)
  SW s1, 140(sp)
  LW s1, 1280(sp)
  SW s1, 144(sp)
  LW s1, 1284(sp)
  SW s1, 40(sp)
  LW s1, 1288(sp)
  SW s1, 116(sp)
  LW s1, 1292(sp)
  SW s1, 8(sp)
  LW s1, 1296(sp)
  SW s1, 828(sp)
  LW s1, 1300(sp)
  SW s1, 832(sp)
  LW s1, 1304(sp)
  SW s1, 836(sp)
  LW s1, 1308(sp)
  SW s1, 840(sp)
  LW s1, 1312(sp)
  SW s1, 844(sp)
  LW s1, 1316(sp)
  SW s1, 848(sp)
  LW s1, 1320(sp)
  SW s1, 852(sp)
  LW s1, 1324(sp)
  SW s1, 820(sp)
  LW s1, 136(sp)
  SLTIU s10, s1, 1
  BNE s10, zero, bb13
  # implict jump to bb5
bb5:
  LW s1, 136(sp)
  SW s1, 860(sp)
  SW a0, 864(sp)
  LW a0, 804(sp)
  SW a0, 868(sp)
  LW a0, 140(sp)
  SW a0, 872(sp)
  LW a0, 144(sp)
  SW a0, 876(sp)
  LW a0, 40(sp)
  SW a0, 880(sp)
  LW a0, 116(sp)
  SW a0, 884(sp)
  LW a0, 8(sp)
  SW a0, 784(sp)
  LW a0, 828(sp)
  SW a0, 752(sp)
  LW a0, 832(sp)
  SW a0, 756(sp)
  LW a0, 836(sp)
  SW a0, 760(sp)
  LW a0, 840(sp)
  SW a0, 764(sp)
  LW a0, 844(sp)
  SW a0, 812(sp)
  LW a0, 812(sp)
  SW a0, 812(sp)
  LW a0, 848(sp)
  SW a0, 268(sp)
  LW a0, 852(sp)
  SW a0, 768(sp)
  LW a0, 820(sp)
  SW a0, 772(sp)
  LW a0, 428(sp)
  SW a0, 776(sp)
  LW a0, 808(sp)
  SW a0, 808(sp)
  LW a0, 432(sp)
  SW a0, 240(sp)
  LW a0, 436(sp)
  SW a0, 780(sp)
  LW a0, 908(sp)
  SW a0, 748(sp)
  LW a0, 912(sp)
  SW a0, 788(sp)
  LW a0, 916(sp)
  SW a0, 256(sp)
  LW a0, 920(sp)
  SW a0, 260(sp)
  LW a0, 888(sp)
  SW a0, 264(sp)
  LW a0, 928(sp)
  SW a0, 228(sp)
  LW s0, 932(sp)
  LW s1, 936(sp)
  LW s2, 940(sp)
  LW a0, 944(sp)
  SW a0, 792(sp)
  LW s4, 948(sp)
  LW s5, 952(sp)
  # implict jump to bb6
bb6:
  SW s5, 824(sp)
  SW s4, 716(sp)
  LW a0, 792(sp)
  SW a0, 676(sp)
  SW s2, 672(sp)
  SW s1, 668(sp)
  SW s0, 664(sp)
  LW a0, 228(sp)
  SW a0, 660(sp)
  LW a0, 264(sp)
  SW a0, 656(sp)
  LW a0, 260(sp)
  SW a0, 652(sp)
  LW a0, 256(sp)
  SW a0, 648(sp)
  LW a0, 788(sp)
  SW a0, 608(sp)
  LW a0, 748(sp)
  SW a0, 640(sp)
  LW a0, 780(sp)
  SW a0, 636(sp)
  LW a0, 240(sp)
  SW a0, 632(sp)
  LW a0, 808(sp)
  SW a0, 808(sp)
  LW a0, 808(sp)
  SW a0, 628(sp)
  LW a0, 776(sp)
  SW a0, 624(sp)
  LW a0, 772(sp)
  SW a0, 620(sp)
  LW a0, 768(sp)
  SW a0, 616(sp)
  LW a0, 268(sp)
  SW a0, 612(sp)
  LW a0, 812(sp)
  SW a0, 812(sp)
  LW s0, 764(sp)
  LW a0, 760(sp)
  SW a0, 92(sp)
  LW a0, 756(sp)
  SW a0, 88(sp)
  LW a0, 752(sp)
  SW a0, 84(sp)
  LW a0, 784(sp)
  SW a0, 572(sp)
  LW a0, 884(sp)
  SW a0, 232(sp)
  LW a0, 880(sp)
  SW a0, 524(sp)
  LW a0, 876(sp)
  SW a0, 520(sp)
  LW a0, 872(sp)
  SW a0, 644(sp)
  LW s11, 868(sp)
  LW a0, 864(sp)
  SW a0, 512(sp)
  LW s10, 860(sp)
  ADDI a0, zero, 1
  SW a0, 900(sp)
  LW a0, 900(sp)
  SUBW s10, s10, a0
  LW a0, 512(sp)
  ADDW s11, a0, s11
  LUI a0, 243712
  SW a0, 904(sp)
  LW a0, 904(sp)
  ADDIW a0, a0, 1
  SW a0, 904(sp)
  LW a0, 904(sp)
  REMW a0, s11, a0
  SLTIU s2, s10, 1
  SB s2, 1(sp)
  LB s2, 1(sp)
  BNE s2, zero, bb8
  # implict jump to bb7
bb7:
  SW s10, 860(sp)
  SW a0, 864(sp)
  LW a0, 644(sp)
  SW a0, 868(sp)
  LW a0, 520(sp)
  SW a0, 872(sp)
  LW a0, 524(sp)
  SW a0, 876(sp)
  LW a0, 232(sp)
  SW a0, 880(sp)
  LW a0, 572(sp)
  SW a0, 884(sp)
  LW a0, 84(sp)
  SW a0, 784(sp)
  LW a0, 88(sp)
  SW a0, 752(sp)
  LW a0, 92(sp)
  SW a0, 756(sp)
  SW s0, 760(sp)
  LW a0, 812(sp)
  SW a0, 812(sp)
  LW a0, 812(sp)
  SW a0, 764(sp)
  LW a0, 612(sp)
  SW a0, 812(sp)
  LW a0, 812(sp)
  SW a0, 812(sp)
  LW a0, 616(sp)
  SW a0, 268(sp)
  LW a0, 620(sp)
  SW a0, 768(sp)
  LW a0, 624(sp)
  SW a0, 772(sp)
  LW a0, 628(sp)
  SW a0, 776(sp)
  LW a0, 632(sp)
  SW a0, 808(sp)
  LW a0, 808(sp)
  SW a0, 808(sp)
  LW a0, 636(sp)
  SW a0, 240(sp)
  LW a0, 640(sp)
  SW a0, 780(sp)
  LW a0, 608(sp)
  SW a0, 748(sp)
  LW a0, 648(sp)
  SW a0, 788(sp)
  LW a0, 652(sp)
  SW a0, 256(sp)
  LW a0, 656(sp)
  SW a0, 260(sp)
  LW a0, 660(sp)
  SW a0, 264(sp)
  LW a0, 664(sp)
  SW a0, 228(sp)
  LW s0, 668(sp)
  LW s1, 672(sp)
  LW s2, 676(sp)
  LW a0, 716(sp)
  SW a0, 792(sp)
  LW s4, 824(sp)
  ADD s5, zero, zero
  JAL zero, bb6
bb8:
  # implict jump to bb9
bb9:
  SW a0, 1328(sp)
  LUI a0, 2
  ADDIW a0, a0, 656
  SW a0, 1332(sp)
  ADDI a0, zero, 62
  # implict jump to bb10
bb10:
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  ADDIW s0, s0, 8
  ADDI t6, sp, 1328
  ADD s0, t6, s0
  SW zero, 0(s0)
  BNE a0, zero, bb12
  # implict jump to bb11
bb11:
  LW a0, 1332(sp)
  ADDI s0, zero, 1
  SUBW s0, a0, s0
  SW s0, 1336(sp)
  LW s1, 1328(sp)
  ADDI s2, zero, 2
  SUBW s2, s1, s2
  SW s2, 1340(sp)
  ADDI s3, zero, 3
  SUBW s3, s1, s3
  SW s3, 1096(sp)
  LW s3, 1096(sp)
  SW s3, 1344(sp)
  ADDI s4, zero, 3
  SUBW s3, a0, s4
  SW s3, 1060(sp)
  LW s3, 1060(sp)
  SW s3, 1348(sp)
  ADDI s5, zero, 4
  SUBW s5, a0, s5
  SW s5, 1352(sp)
  ADDI s6, zero, 5
  SUBW s6, s1, s6
  SW s6, 1356(sp)
  ADDI s7, zero, 6
  SUBW s7, s1, s7
  SW s7, 1360(sp)
  ADDI s8, zero, 6
  SUBW s3, a0, s8
  SW s3, 1100(sp)
  LW s3, 1100(sp)
  SW s3, 1364(sp)
  ADDI s9, zero, 7
  SUBW s3, a0, s9
  SW s3, 1104(sp)
  LW s3, 1104(sp)
  SW s3, 1368(sp)
  ADDI s9, zero, 8
  SUBW s3, s1, s9
  SW s3, 1108(sp)
  LW s3, 1108(sp)
  SW s3, 1372(sp)
  ADDI s9, zero, 9
  SUBW s3, s1, s9
  SW s3, 1112(sp)
  LW s3, 1112(sp)
  SW s3, 1376(sp)
  ADDI s10, zero, 9
  SUBW s3, a0, s10
  SW s3, 1116(sp)
  LW s3, 1116(sp)
  SW s3, 1380(sp)
  ADDI s10, zero, 10
  SUBW s3, a0, s10
  SW s3, 1120(sp)
  LW s3, 1120(sp)
  SW s3, 1384(sp)
  ADDI s11, zero, 11
  SUBW s3, s1, s11
  SW s3, 1124(sp)
  LW s3, 1124(sp)
  SW s3, 1388(sp)
  ADDI s3, zero, 12
  SW s3, 272(sp)
  LW s3, 272(sp)
  SUBW s3, s1, s3
  SW s3, 1128(sp)
  LW s3, 1128(sp)
  SW s3, 1392(sp)
  ADDI s3, zero, 12
  SW s3, 276(sp)
  LW s3, 276(sp)
  SUBW s3, a0, s3
  SW s3, 1132(sp)
  LW s3, 1132(sp)
  SW s3, 1396(sp)
  ADDI s3, zero, 13
  SW s3, 280(sp)
  LW s3, 280(sp)
  SUBW s3, a0, s3
  SW s3, 1136(sp)
  LW s3, 1136(sp)
  SW s3, 1400(sp)
  ADDI s3, zero, 14
  SW s3, 284(sp)
  LW s3, 284(sp)
  SUBW s3, s1, s3
  SW s3, 1140(sp)
  LW s3, 1140(sp)
  SW s3, 1404(sp)
  ADDI s3, zero, 15
  SW s3, 288(sp)
  LW s3, 288(sp)
  SUBW s3, s1, s3
  SW s3, 1144(sp)
  LW s3, 1144(sp)
  SW s3, 1408(sp)
  ADDI s3, zero, 15
  SW s3, 292(sp)
  LW s3, 292(sp)
  SUBW s3, a0, s3
  SW s3, 1148(sp)
  LW s3, 1148(sp)
  SW s3, 1412(sp)
  ADDI s3, zero, 16
  SW s3, 296(sp)
  LW s3, 296(sp)
  SUBW s3, a0, s3
  SW s3, 1152(sp)
  LW s3, 1152(sp)
  SW s3, 1416(sp)
  ADDI s3, zero, 17
  SW s3, 300(sp)
  LW s3, 300(sp)
  SUBW s3, s1, s3
  SW s3, 1092(sp)
  LW s3, 1092(sp)
  SW s3, 1420(sp)
  ADDI s3, zero, 18
  SW s3, 192(sp)
  LW s3, 192(sp)
  SUBW s3, s1, s3
  SW s3, 1156(sp)
  LW s3, 1156(sp)
  SW s3, 1424(sp)
  ADDI s3, zero, 18
  SW s3, 156(sp)
  LW s3, 156(sp)
  SUBW s3, a0, s3
  SW s3, 1028(sp)
  LW s3, 1028(sp)
  SW s3, 1428(sp)
  ADDI s3, zero, 19
  SW s3, 160(sp)
  LW s3, 160(sp)
  SUBW s3, a0, s3
  SW s3, 1032(sp)
  LW s3, 1032(sp)
  SW s3, 1432(sp)
  ADDI s3, zero, 20
  SW s3, 164(sp)
  LW s3, 164(sp)
  SUBW s3, s1, s3
  SW s3, 1036(sp)
  LW s3, 1036(sp)
  SW s3, 1436(sp)
  ADDI s3, zero, 21
  SW s3, 168(sp)
  LW s3, 168(sp)
  SUBW s3, s1, s3
  SW s3, 1040(sp)
  LW s3, 1040(sp)
  SW s3, 1440(sp)
  ADDI s3, zero, 21
  SW s3, 172(sp)
  LW s3, 172(sp)
  SUBW s3, a0, s3
  SW s3, 1044(sp)
  LW s3, 1044(sp)
  SW s3, 1444(sp)
  ADDI s3, zero, 22
  SW s3, 176(sp)
  LW s3, 176(sp)
  SUBW s3, a0, s3
  SW s3, 1048(sp)
  LW s3, 1048(sp)
  SW s3, 1448(sp)
  ADDI s3, zero, 23
  SW s3, 180(sp)
  LW s3, 180(sp)
  SUBW s3, s1, s3
  SW s3, 1052(sp)
  LW s3, 1052(sp)
  SW s3, 1452(sp)
  ADDI s3, zero, 24
  SW s3, 184(sp)
  LW s3, 184(sp)
  SUBW s3, s1, s3
  SW s3, 1056(sp)
  LW s3, 1056(sp)
  SW s3, 1456(sp)
  ADDI s3, zero, 24
  SW s3, 188(sp)
  LW s3, 188(sp)
  SUBW s3, a0, s3
  SW s3, 1024(sp)
  LW s3, 1024(sp)
  SW s3, 1460(sp)
  ADDI s3, zero, 25
  SW s3, 152(sp)
  LW s3, 152(sp)
  SUBW s3, a0, s3
  SW s3, 1064(sp)
  LW s3, 1064(sp)
  SW s3, 1464(sp)
  ADDI s3, zero, 26
  SW s3, 196(sp)
  LW s3, 196(sp)
  SUBW s3, s1, s3
  SW s3, 1068(sp)
  LW s3, 1068(sp)
  SW s3, 1468(sp)
  ADDI s3, zero, 27
  SW s3, 200(sp)
  LW s3, 200(sp)
  SUBW s3, s1, s3
  SW s3, 1072(sp)
  LW s3, 1072(sp)
  SW s3, 1472(sp)
  ADDI s3, zero, 27
  SW s3, 204(sp)
  LW s3, 204(sp)
  SUBW s3, a0, s3
  SW s3, 1076(sp)
  LW s3, 1076(sp)
  SW s3, 1476(sp)
  ADDI s3, zero, 28
  SW s3, 208(sp)
  LW s3, 208(sp)
  SUBW s3, a0, s3
  SW s3, 1080(sp)
  LW s3, 1080(sp)
  SW s3, 1480(sp)
  ADDI s3, zero, 29
  SW s3, 212(sp)
  LW s3, 212(sp)
  SUBW s3, s1, s3
  SW s3, 1084(sp)
  LW s3, 1084(sp)
  SW s3, 1484(sp)
  ADDI s3, zero, 30
  SW s3, 216(sp)
  LW s3, 216(sp)
  SUBW s3, s1, s3
  SW s3, 992(sp)
  LW s3, 992(sp)
  SW s3, 1488(sp)
  ADDI s3, zero, 30
  SW s3, 220(sp)
  LW s3, 220(sp)
  SUBW s3, a0, s3
  SW s3, 1088(sp)
  LW s3, 1088(sp)
  SW s3, 1492(sp)
  ADDI s3, zero, 31
  SW s3, 224(sp)
  LW s3, 224(sp)
  SUBW s3, a0, s3
  SW s3, 684(sp)
  LW s3, 684(sp)
  SW s3, 1496(sp)
  ADDI s3, zero, 32
  SW s3, 856(sp)
  LW s3, 856(sp)
  SUBW s3, s1, s3
  SW s3, 688(sp)
  LW s3, 688(sp)
  SW s3, 1500(sp)
  ADDI s3, zero, 33
  SW s3, 528(sp)
  LW s3, 528(sp)
  SUBW s3, s1, s3
  SW s3, 692(sp)
  LW s3, 692(sp)
  SW s3, 1504(sp)
  ADDI s3, zero, 33
  SW s3, 960(sp)
  LW s3, 960(sp)
  SUBW s3, a0, s3
  SW s3, 696(sp)
  LW s3, 696(sp)
  SW s3, 1508(sp)
  ADDI s3, zero, 34
  SW s3, 964(sp)
  LW s3, 964(sp)
  SUBW s3, a0, s3
  SW s3, 700(sp)
  LW s3, 700(sp)
  SW s3, 1512(sp)
  ADDI s3, zero, 35
  SW s3, 968(sp)
  LW s3, 968(sp)
  SUBW s3, s1, s3
  SW s3, 704(sp)
  LW s3, 704(sp)
  SW s3, 1516(sp)
  ADDI s3, zero, 36
  SW s3, 972(sp)
  LW s3, 972(sp)
  SUBW s3, s1, s3
  SW s3, 708(sp)
  LW s3, 708(sp)
  SW s3, 1520(sp)
  ADDI s3, zero, 36
  SW s3, 976(sp)
  LW s3, 976(sp)
  SUBW s3, a0, s3
  SW s3, 712(sp)
  LW s3, 712(sp)
  SW s3, 1524(sp)
  ADDI s3, zero, 37
  SW s3, 980(sp)
  LW s3, 980(sp)
  SUBW s3, a0, s3
  SW s3, 680(sp)
  LW s3, 680(sp)
  SW s3, 1528(sp)
  ADDI s3, zero, 38
  SW s3, 984(sp)
  LW s3, 984(sp)
  SUBW s3, s1, s3
  SW s3, 720(sp)
  LW s3, 720(sp)
  SW s3, 1532(sp)
  ADDI s3, zero, 39
  SW s3, 988(sp)
  LW s3, 988(sp)
  SUBW s3, s1, s3
  SW s3, 724(sp)
  LW s3, 724(sp)
  SW s3, 1536(sp)
  ADDI s3, zero, 39
  SW s3, 956(sp)
  LW s3, 956(sp)
  SUBW s3, a0, s3
  SW s3, 728(sp)
  LW s3, 728(sp)
  SW s3, 1540(sp)
  ADDI s3, zero, 40
  SW s3, 996(sp)
  LW s3, 996(sp)
  SUBW s3, a0, s3
  SW s3, 732(sp)
  LW s3, 732(sp)
  SW s3, 1544(sp)
  ADDI s3, zero, 41
  SW s3, 1000(sp)
  LW s3, 1000(sp)
  SUBW s3, s1, s3
  SW s3, 736(sp)
  LW s3, 736(sp)
  SW s3, 1548(sp)
  ADDI s3, zero, 42
  SW s3, 1004(sp)
  LW s3, 1004(sp)
  SUBW s3, s1, s3
  SW s3, 740(sp)
  LW s3, 740(sp)
  SW s3, 1552(sp)
  ADDI s3, zero, 42
  SW s3, 1008(sp)
  LW s3, 1008(sp)
  SUBW s3, a0, s3
  SW s3, 744(sp)
  LW s3, 744(sp)
  SW s3, 1556(sp)
  ADDI s3, zero, 43
  SW s3, 1012(sp)
  LW s3, 1012(sp)
  SUBW s3, a0, s3
  SW s3, 488(sp)
  LW s3, 488(sp)
  SW s3, 1560(sp)
  ADDI s3, zero, 44
  SW s3, 1016(sp)
  LW s3, 1016(sp)
  SUBW s3, s1, s3
  SW s3, 492(sp)
  LW s3, 492(sp)
  SW s3, 1564(sp)
  ADDI s3, zero, 45
  SW s3, 1020(sp)
  LW s3, 1020(sp)
  SUBW s3, s1, s3
  SW s3, 456(sp)
  LW s3, 456(sp)
  SW s3, 1568(sp)
  ADDI s3, zero, 45
  SW s3, 924(sp)
  LW s3, 924(sp)
  SUBW s3, a0, s3
  SW s3, 500(sp)
  LW s3, 500(sp)
  SW s3, 1572(sp)
  ADDI s3, zero, 46
  SW s3, 892(sp)
  LW s3, 892(sp)
  SUBW s3, a0, s3
  SW s3, 504(sp)
  LW s3, 504(sp)
  SW s3, 1576(sp)
  ADDI s3, zero, 47
  SW s3, 896(sp)
  LW s3, 896(sp)
  SUBW s3, s1, s3
  SW s3, 508(sp)
  LW s3, 508(sp)
  SW s3, 1580(sp)
  ADDW a0, s1, a0
  ADDW a0, a0, s0
  ADDW a0, a0, s2
  LW s0, 1096(sp)
  ADDW a0, a0, s0
  LW s0, 1060(sp)
  ADDW a0, a0, s0
  ADDW a0, a0, s5
  ADDW a0, a0, s6
  ADDW a0, a0, s7
  LW s0, 1100(sp)
  ADDW a0, a0, s0
  LW s0, 1104(sp)
  ADDW a0, a0, s0
  LW s0, 1108(sp)
  ADDW a0, a0, s0
  LW s0, 1112(sp)
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
  LW s0, 1144(sp)
  ADDW a0, a0, s0
  LW s0, 1148(sp)
  ADDW a0, a0, s0
  LW s0, 1152(sp)
  ADDW a0, a0, s0
  LW s0, 1092(sp)
  ADDW a0, a0, s0
  LW s0, 1156(sp)
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
  LW s0, 1024(sp)
  ADDW a0, a0, s0
  LW s0, 1064(sp)
  ADDW a0, a0, s0
  LW s0, 1068(sp)
  ADDW a0, a0, s0
  LW s0, 1072(sp)
  ADDW a0, a0, s0
  LW s0, 1076(sp)
  ADDW a0, a0, s0
  LW s0, 1080(sp)
  ADDW a0, a0, s0
  LW s0, 1084(sp)
  ADDW a0, a0, s0
  LW s0, 992(sp)
  ADDW a0, a0, s0
  LW s0, 1088(sp)
  ADDW a0, a0, s0
  LW s0, 684(sp)
  ADDW a0, a0, s0
  LW s0, 688(sp)
  ADDW a0, a0, s0
  LW s0, 692(sp)
  ADDW a0, a0, s0
  LW s0, 696(sp)
  ADDW a0, a0, s0
  LW s0, 700(sp)
  ADDW a0, a0, s0
  LW s0, 704(sp)
  ADDW a0, a0, s0
  LW s0, 708(sp)
  ADDW a0, a0, s0
  LW s0, 712(sp)
  ADDW a0, a0, s0
  LW s0, 680(sp)
  ADDW a0, a0, s0
  LW s0, 720(sp)
  ADDW a0, a0, s0
  LW s0, 724(sp)
  ADDW a0, a0, s0
  LW s0, 728(sp)
  ADDW a0, a0, s0
  LW s0, 732(sp)
  ADDW a0, a0, s0
  LW s0, 736(sp)
  ADDW a0, a0, s0
  LW s0, 740(sp)
  ADDW a0, a0, s0
  LW s0, 744(sp)
  ADDW a0, a0, s0
  LW s0, 488(sp)
  ADDW a0, a0, s0
  LW s0, 492(sp)
  ADDW a0, a0, s0
  LW s0, 456(sp)
  ADDW a0, a0, s0
  LW s0, 500(sp)
  ADDW a0, a0, s0
  LW s0, 504(sp)
  ADDW a0, a0, s0
  LW s0, 508(sp)
  ADDW a0, a0, s0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
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
  ADDI sp, sp, 1600
  JALR zero, 0(ra)
bb12:
  JAL zero, bb10
bb13:
  JAL zero, bb9
bb14:
  ADD s8, s9, zero
  JAL zero, bb1
bb15:
  SLLIW s8, s8, 2
  ADDI t6, sp, 1264
  ADD s1, t6, s8
  SD s1, 1584(sp)
  ADD s8, s9, zero
  # implict jump to bb16
bb16:
  LD s1, 1584(sp)
  LW s10, 0(s1)
  SLLIW s11, s8, 2
  ADDI t6, sp, 1264
  ADD s11, t6, s11
  LW s1, 0(s11)
  SW s1, 4(sp)
  LW s1, 4(sp)
  BLT s10, s1, bb21
  # implict jump to bb17
bb17:
  # implict jump to bb18
bb18:
  ADDIW s8, s8, 1
  SLTI s10, s8, 16
  BNE s10, zero, bb20
  # implict jump to bb19
bb19:
  JAL zero, bb3
bb20:
  JAL zero, bb16
bb21:
  LD a0, 1584(sp)
  LW a0, 0(a0)
  LW s10, 0(s11)
  LD s1, 1584(sp)
  SW s10, 0(s1)
  SW a0, 0(s11)
  JAL zero, bb18
