.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -1488
  SD ra, 1040(sp)
  SD s0, 1048(sp)
  SD s1, 1056(sp)
  SD s2, 1064(sp)
  SD s3, 1072(sp)
  SD s4, 1080(sp)
  SD s5, 1088(sp)
  SD s6, 1096(sp)
  SD s7, 1104(sp)
  SD s8, 1112(sp)
  SD s9, 1120(sp)
  SD s10, 1128(sp)
  SD s11, 1136(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 372(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 340(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 380(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 384(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 908(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 904(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 900(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 896(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 892(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 888(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 884(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 880(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 876(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 872(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 868(sp)
  CALL getint
  SW a0, 864(sp)
  LW a0, 372(sp)
  SW a0, 1144(sp)
  LW a0, 340(sp)
  SW a0, 1148(sp)
  LW a0, 380(sp)
  SW a0, 1152(sp)
  LW a0, 384(sp)
  SW a0, 1156(sp)
  LW a0, 908(sp)
  SW a0, 1160(sp)
  LW a0, 904(sp)
  SW a0, 1164(sp)
  LW a0, 900(sp)
  SW a0, 1168(sp)
  LW a0, 896(sp)
  SW a0, 1172(sp)
  LW a0, 892(sp)
  SW a0, 1176(sp)
  LW a0, 888(sp)
  SW a0, 1180(sp)
  LW a0, 884(sp)
  SW a0, 1184(sp)
  LW a0, 880(sp)
  SW a0, 1188(sp)
  LW a0, 876(sp)
  SW a0, 1192(sp)
  LW a0, 872(sp)
  SW a0, 1196(sp)
  LW a0, 868(sp)
  SW a0, 1200(sp)
  LW a0, 864(sp)
  SW a0, 1204(sp)
  ADD s10, zero, zero
  ADD s9, zero, zero
  # implict jump to bb1
bb1:   # loop depth 1
  ADDIW a0, s10, 1
  SW a0, 104(sp)
  LW a0, 104(sp)
  SLTI a0, a0, 16
  SB a0, 4(sp)
  LB a0, 4(sp)
  BNE a0, zero, bb15
  # implict jump to bb2
bb2:   # loop depth 0
  # implict jump to bb3
bb3:   # loop depth 1
  LW a0, 104(sp)
  SLTI s10, a0, 15
  BNE s10, zero, bb14
  # implict jump to bb4
bb4:   # loop depth 0
  LW a0, 1144(sp)
  SW a0, 12(sp)
  LW a0, 1148(sp)
  SW a0, 16(sp)
  LW a0, 1152(sp)
  SW a0, 20(sp)
  LW a0, 1156(sp)
  SW a0, 24(sp)
  LW a0, 1160(sp)
  SW a0, 28(sp)
  LW a0, 1164(sp)
  SW a0, 32(sp)
  LW a0, 1168(sp)
  SW a0, 8(sp)
  LW a0, 1172(sp)
  SW a0, 40(sp)
  LW a0, 1176(sp)
  SW a0, 572(sp)
  LW a0, 1180(sp)
  SW a0, 568(sp)
  LW a0, 1184(sp)
  SW a0, 564(sp)
  LW a0, 1188(sp)
  SW a0, 560(sp)
  LW a0, 1192(sp)
  SW a0, 556(sp)
  LW a0, 1196(sp)
  SW a0, 552(sp)
  LW a0, 1200(sp)
  SW a0, 548(sp)
  LW a0, 1204(sp)
  SW a0, 608(sp)
  LW a0, 12(sp)
  SLTIU a0, a0, 1
  SB a0, 1(sp)
  LB a0, 1(sp)
  BNE a0, zero, bb13
  # implict jump to bb5
bb5:   # loop depth 0
  LW a0, 12(sp)
  SW a0, 788(sp)
  LW a0, 16(sp)
  SW a0, 784(sp)
  LW a0, 20(sp)
  SW a0, 780(sp)
  LW a0, 24(sp)
  SW a0, 776(sp)
  LW a0, 28(sp)
  SW a0, 772(sp)
  LW a0, 32(sp)
  SW a0, 768(sp)
  LW a0, 8(sp)
  SW a0, 764(sp)
  LW a0, 40(sp)
  SW a0, 760(sp)
  LW a0, 572(sp)
  SW a0, 756(sp)
  LW a0, 568(sp)
  SW a0, 752(sp)
  LW a0, 564(sp)
  SW a0, 748(sp)
  LW a0, 560(sp)
  SW a0, 744(sp)
  LW a0, 556(sp)
  SW a0, 264(sp)
  LW a0, 552(sp)
  SW a0, 268(sp)
  LW a0, 548(sp)
  SW a0, 172(sp)
  LW a0, 608(sp)
  SW a0, 364(sp)
  LW a0, 372(sp)
  SW a0, 368(sp)
  LW a0, 340(sp)
  SW a0, 140(sp)
  LW a0, 380(sp)
  SW a0, 144(sp)
  LW a0, 384(sp)
  SW a0, 148(sp)
  LW a0, 908(sp)
  SW a0, 152(sp)
  LW a0, 904(sp)
  SW a0, 156(sp)
  LW a0, 900(sp)
  SW a0, 160(sp)
  LW a0, 896(sp)
  SW a0, 164(sp)
  LW s0, 892(sp)
  LW a0, 888(sp)
  SW a0, 740(sp)
  LW a0, 884(sp)
  SW a0, 736(sp)
  LW a0, 880(sp)
  SW a0, 668(sp)
  LW a0, 876(sp)
  SW a0, 728(sp)
  LW a0, 872(sp)
  SW a0, 724(sp)
  LW a0, 868(sp)
  SW a0, 720(sp)
  LW a0, 864(sp)
  SW a0, 716(sp)
  # implict jump to bb6
bb6:   # loop depth 1
  LW a0, 716(sp)
  SW a0, 576(sp)
  LW a0, 720(sp)
  SW a0, 580(sp)
  LW a0, 724(sp)
  SW a0, 584(sp)
  LW a0, 728(sp)
  SW a0, 588(sp)
  LW a0, 668(sp)
  SW a0, 592(sp)
  LW a0, 736(sp)
  SW a0, 596(sp)
  LW a0, 740(sp)
  SW a0, 600(sp)
  SW s0, 604(sp)
  LW a0, 164(sp)
  SW a0, 544(sp)
  LW a0, 160(sp)
  SW a0, 612(sp)
  LW a0, 156(sp)
  SW a0, 616(sp)
  LW a0, 152(sp)
  SW a0, 620(sp)
  LW a0, 148(sp)
  SW a0, 624(sp)
  LW a0, 144(sp)
  SW a0, 628(sp)
  LW a0, 140(sp)
  SW a0, 632(sp)
  LW a0, 368(sp)
  SW a0, 636(sp)
  LW a0, 364(sp)
  SW a0, 640(sp)
  LW a0, 172(sp)
  SW a0, 644(sp)
  LW a0, 268(sp)
  SW a0, 648(sp)
  LW a0, 264(sp)
  SW a0, 652(sp)
  LW s11, 744(sp)
  LW s0, 748(sp)
  SW s0, 92(sp)
  LW s0, 752(sp)
  SW s0, 88(sp)
  LW s0, 756(sp)
  SW s0, 84(sp)
  LW s0, 760(sp)
  SW s0, 80(sp)
  LW s0, 764(sp)
  SW s0, 76(sp)
  LW s0, 768(sp)
  SW s0, 72(sp)
  LW s0, 772(sp)
  SW s0, 512(sp)
  LW s0, 776(sp)
  SW s0, 212(sp)
  LW a0, 780(sp)
  SW a0, 676(sp)
  LW a0, 676(sp)
  SW a0, 676(sp)
  LW s0, 784(sp)
  SW s0, 468(sp)
  LW s0, 788(sp)
  SW s0, 464(sp)
  ADDI s0, zero, 1
  SW s0, 732(sp)
  LW s0, 732(sp)
  LW s1, 464(sp)
  SUBW s0, s1, s0
  SW s0, 36(sp)
  LW s0, 468(sp)
  LW a0, 676(sp)
  ADDW s10, s0, a0
  LUI s0, 243712
  SW s0, 472(sp)
  LW s0, 472(sp)
  ADDIW s0, s0, 1
  SW s0, 472(sp)
  LW s0, 472(sp)
  REMW s10, s10, s0
  LW s0, 36(sp)
  SLTIU s0, s0, 1
  SB s0, 0(sp)
  LB s0, 0(sp)
  BNE s0, zero, bb8
  # implict jump to bb7
bb7:   # loop depth 0
  LW s0, 36(sp)
  SW s0, 788(sp)
  SW s10, 784(sp)
  LW s0, 212(sp)
  SW s0, 780(sp)
  LW s0, 512(sp)
  SW s0, 776(sp)
  LW s0, 72(sp)
  SW s0, 772(sp)
  LW s0, 76(sp)
  SW s0, 768(sp)
  LW s0, 80(sp)
  SW s0, 764(sp)
  LW s0, 84(sp)
  SW s0, 760(sp)
  LW s0, 88(sp)
  SW s0, 756(sp)
  LW s0, 92(sp)
  SW s0, 752(sp)
  SW s11, 748(sp)
  LW a0, 652(sp)
  SW a0, 744(sp)
  LW a0, 648(sp)
  SW a0, 264(sp)
  LW a0, 644(sp)
  SW a0, 268(sp)
  LW a0, 640(sp)
  SW a0, 172(sp)
  LW a0, 636(sp)
  SW a0, 364(sp)
  LW a0, 632(sp)
  SW a0, 368(sp)
  LW a0, 628(sp)
  SW a0, 140(sp)
  LW a0, 624(sp)
  SW a0, 144(sp)
  LW a0, 620(sp)
  SW a0, 148(sp)
  LW a0, 616(sp)
  SW a0, 152(sp)
  LW a0, 612(sp)
  SW a0, 156(sp)
  LW a0, 544(sp)
  SW a0, 160(sp)
  LW a0, 604(sp)
  SW a0, 164(sp)
  LW s0, 600(sp)
  LW a0, 596(sp)
  SW a0, 740(sp)
  LW a0, 592(sp)
  SW a0, 736(sp)
  LW a0, 588(sp)
  SW a0, 668(sp)
  LW a0, 584(sp)
  SW a0, 728(sp)
  LW a0, 580(sp)
  SW a0, 724(sp)
  LW a0, 576(sp)
  SW a0, 720(sp)
  ADD a0, zero, zero
  SW a0, 716(sp)
  JAL zero, bb6
bb8:   # loop depth 0
  # implict jump to bb9
bb9:   # loop depth 0
  SW s10, 1208(sp)
  LUI a0, 2
  ADDIW a0, a0, 656
  SW a0, 1212(sp)
  ADDI a0, zero, 62
  # implict jump to bb10
bb10:   # loop depth 1
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  ADDIW s0, s0, 8
  ADDI t6, sp, 1208
  ADD s0, t6, s0
  SW zero, 0(s0)
  BNE a0, zero, bb12
  # implict jump to bb11
bb11:   # loop depth 0
  LW a0, 1212(sp)
  ADDI s0, zero, 1
  SUBW s0, a0, s0
  SW s0, 1216(sp)
  LW s1, 1208(sp)
  ADDI s2, zero, 2
  SUBW s2, s1, s2
  SW s2, 1220(sp)
  ADDI s3, zero, 3
  SUBW s3, s1, s3
  SW s3, 1224(sp)
  ADDI s4, zero, 3
  SUBW s4, a0, s4
  SW s4, 1228(sp)
  ADDI s5, zero, 4
  SUBW s5, a0, s5
  SW s5, 1232(sp)
  ADDI s6, zero, 5
  SUBW s6, s1, s6
  SW s6, 1236(sp)
  ADDI s7, zero, 6
  SUBW s7, s1, s7
  SW s7, 1240(sp)
  ADDI s8, zero, 6
  SUBW s8, a0, s8
  SW s8, 1244(sp)
  ADDI s9, zero, 7
  SUBW s9, a0, s9
  SW s9, 860(sp)
  LW s9, 860(sp)
  SW s9, 1248(sp)
  ADDI s9, zero, 8
  SUBW s9, s1, s9
  SW s9, 792(sp)
  LW s9, 792(sp)
  SW s9, 1252(sp)
  ADDI s9, zero, 9
  SUBW s9, s1, s9
  SW s9, 852(sp)
  LW s9, 852(sp)
  SW s9, 1256(sp)
  ADDI s9, zero, 9
  SUBW s9, a0, s9
  SW s9, 848(sp)
  LW s9, 848(sp)
  SW s9, 1260(sp)
  ADDI s9, zero, 10
  SUBW s9, a0, s9
  SW s9, 844(sp)
  LW s9, 844(sp)
  SW s9, 1264(sp)
  ADDI s9, zero, 11
  SUBW s9, s1, s9
  SW s9, 840(sp)
  LW s9, 840(sp)
  SW s9, 1268(sp)
  ADDI s9, zero, 12
  SUBW s9, s1, s9
  SW s9, 836(sp)
  LW s9, 836(sp)
  SW s9, 1272(sp)
  ADDI s9, zero, 12
  SUBW s9, a0, s9
  SW s9, 832(sp)
  LW s9, 832(sp)
  SW s9, 1276(sp)
  ADDI s9, zero, 13
  SUBW s9, a0, s9
  SW s9, 828(sp)
  LW s9, 828(sp)
  SW s9, 1280(sp)
  ADDI s9, zero, 14
  SUBW s9, s1, s9
  SW s9, 824(sp)
  LW s9, 824(sp)
  SW s9, 1284(sp)
  ADDI s9, zero, 15
  SUBW s9, s1, s9
  SW s9, 820(sp)
  LW s9, 820(sp)
  SW s9, 1288(sp)
  ADDI s9, zero, 15
  SUBW s9, a0, s9
  SW s9, 816(sp)
  LW s9, 816(sp)
  SW s9, 1292(sp)
  ADDI s9, zero, 16
  SUBW s9, a0, s9
  SW s9, 812(sp)
  LW s9, 812(sp)
  SW s9, 1296(sp)
  ADDI s9, zero, 17
  SUBW s9, s1, s9
  SW s9, 808(sp)
  LW s9, 808(sp)
  SW s9, 1300(sp)
  ADDI s9, zero, 18
  SUBW s9, s1, s9
  SW s9, 804(sp)
  LW s9, 804(sp)
  SW s9, 1304(sp)
  ADDI s9, zero, 18
  SUBW s9, a0, s9
  SW s9, 800(sp)
  LW s9, 800(sp)
  SW s9, 1308(sp)
  ADDI s9, zero, 19
  SUBW s9, a0, s9
  SW s9, 796(sp)
  LW s9, 796(sp)
  SW s9, 1312(sp)
  ADDI s9, zero, 20
  SUBW s9, s1, s9
  SW s9, 980(sp)
  LW s9, 980(sp)
  SW s9, 1316(sp)
  ADDI s9, zero, 21
  SUBW s9, s1, s9
  SW s9, 916(sp)
  LW s9, 916(sp)
  SW s9, 1320(sp)
  ADDI s9, zero, 21
  SUBW s9, a0, s9
  SW s9, 988(sp)
  LW s9, 988(sp)
  SW s9, 1324(sp)
  ADDI s9, zero, 22
  SUBW s9, a0, s9
  SW s9, 992(sp)
  LW s9, 992(sp)
  SW s9, 1328(sp)
  ADDI s9, zero, 23
  SUBW s9, s1, s9
  SW s9, 996(sp)
  LW s9, 996(sp)
  SW s9, 1332(sp)
  ADDI s9, zero, 24
  SUBW s9, s1, s9
  SW s9, 1000(sp)
  LW s9, 1000(sp)
  SW s9, 1336(sp)
  ADDI s9, zero, 24
  SUBW s9, a0, s9
  SW s9, 1004(sp)
  LW s9, 1004(sp)
  SW s9, 1340(sp)
  ADDI s9, zero, 25
  SUBW s9, a0, s9
  SW s9, 1008(sp)
  LW s9, 1008(sp)
  SW s9, 1344(sp)
  ADDI s9, zero, 26
  SUBW s9, s1, s9
  SW s9, 1012(sp)
  LW s9, 1012(sp)
  SW s9, 1348(sp)
  ADDI s9, zero, 27
  SUBW s9, s1, s9
  SW s9, 1016(sp)
  LW s9, 1016(sp)
  SW s9, 1352(sp)
  ADDI s9, zero, 27
  SUBW s9, a0, s9
  SW s9, 1020(sp)
  LW s9, 1020(sp)
  SW s9, 1356(sp)
  ADDI s9, zero, 28
  SUBW s9, a0, s9
  SW s9, 1024(sp)
  LW s9, 1024(sp)
  SW s9, 1360(sp)
  ADDI s9, zero, 29
  SUBW s9, s1, s9
  SW s9, 1028(sp)
  LW s9, 1028(sp)
  SW s9, 1364(sp)
  ADDI s9, zero, 30
  SUBW s9, s1, s9
  SW s9, 1032(sp)
  LW s9, 1032(sp)
  SW s9, 1368(sp)
  ADDI s9, zero, 30
  SUBW s9, a0, s9
  SW s9, 976(sp)
  LW s9, 976(sp)
  SW s9, 1372(sp)
  ADDI s9, zero, 31
  SUBW s9, a0, s9
  SW s9, 984(sp)
  LW s9, 984(sp)
  SW s9, 1376(sp)
  ADDI s9, zero, 32
  SUBW s9, s1, s9
  SW s9, 972(sp)
  LW s9, 972(sp)
  SW s9, 1380(sp)
  ADDI s9, zero, 33
  SUBW s9, s1, s9
  SW s9, 968(sp)
  LW s9, 968(sp)
  SW s9, 1384(sp)
  ADDI s9, zero, 33
  SUBW s9, a0, s9
  SW s9, 964(sp)
  LW s9, 964(sp)
  SW s9, 1388(sp)
  ADDI s9, zero, 34
  SUBW s9, a0, s9
  SW s9, 960(sp)
  LW s9, 960(sp)
  SW s9, 1392(sp)
  ADDI s9, zero, 35
  SUBW s9, s1, s9
  SW s9, 956(sp)
  LW s9, 956(sp)
  SW s9, 1396(sp)
  ADDI s9, zero, 36
  SUBW s9, s1, s9
  SW s9, 952(sp)
  LW s9, 952(sp)
  SW s9, 1400(sp)
  ADDI s9, zero, 36
  SUBW s9, a0, s9
  SW s9, 948(sp)
  LW s9, 948(sp)
  SW s9, 1404(sp)
  ADDI s9, zero, 37
  SUBW s9, a0, s9
  SW s9, 944(sp)
  LW s9, 944(sp)
  SW s9, 1408(sp)
  ADDI s9, zero, 38
  SUBW s9, s1, s9
  SW s9, 940(sp)
  LW s9, 940(sp)
  SW s9, 1412(sp)
  ADDI s10, zero, 39
  SUBW s9, s1, s10
  SW s9, 936(sp)
  LW s9, 936(sp)
  SW s9, 1416(sp)
  ADDI s11, zero, 39
  SUBW s9, a0, s11
  SW s9, 932(sp)
  LW s9, 932(sp)
  SW s9, 1420(sp)
  ADDI s9, zero, 40
  SW s9, 168(sp)
  LW s9, 168(sp)
  SUBW s9, a0, s9
  SW s9, 424(sp)
  LW s9, 424(sp)
  SW s9, 1424(sp)
  ADDI s9, zero, 41
  SW s9, 136(sp)
  LW s9, 136(sp)
  SUBW s9, s1, s9
  SW s9, 428(sp)
  LW s9, 428(sp)
  SW s9, 1428(sp)
  ADDI s9, zero, 42
  SW s9, 176(sp)
  LW s9, 176(sp)
  SUBW s9, s1, s9
  SW s9, 432(sp)
  LW s9, 432(sp)
  SW s9, 1432(sp)
  ADDI s9, zero, 42
  SW s9, 712(sp)
  LW s9, 712(sp)
  SUBW s9, a0, s9
  SW s9, 928(sp)
  LW s9, 928(sp)
  SW s9, 1436(sp)
  ADDI s9, zero, 43
  SW s9, 708(sp)
  LW s9, 708(sp)
  SUBW s9, a0, s9
  SW s9, 924(sp)
  LW s9, 924(sp)
  SW s9, 1440(sp)
  ADDI s9, zero, 44
  SW s9, 704(sp)
  LW s9, 704(sp)
  SUBW s9, s1, s9
  SW s9, 856(sp)
  LW s9, 856(sp)
  SW s9, 1444(sp)
  ADDI s9, zero, 45
  SW s9, 700(sp)
  LW s9, 700(sp)
  SUBW s9, s1, s9
  SW s9, 920(sp)
  LW s9, 920(sp)
  SW s9, 1448(sp)
  ADDI s9, zero, 45
  SW s9, 696(sp)
  LW s9, 696(sp)
  SUBW s9, a0, s9
  SW s9, 664(sp)
  LW s9, 664(sp)
  SW s9, 1452(sp)
  ADDI s9, zero, 46
  SW s9, 692(sp)
  LW s9, 692(sp)
  SUBW s9, a0, s9
  SW s9, 660(sp)
  LW s9, 660(sp)
  SW s9, 1456(sp)
  ADDI s9, zero, 47
  SW s9, 688(sp)
  LW s9, 688(sp)
  SUBW s9, s1, s9
  SW s9, 656(sp)
  LW s9, 656(sp)
  SW s9, 1460(sp)
  ADDW a0, s1, a0
  ADDW a0, a0, s0
  ADDW a0, a0, s2
  ADDW a0, a0, s3
  ADDW a0, a0, s4
  ADDW a0, a0, s5
  ADDW a0, a0, s6
  ADDW a0, a0, s7
  ADDW a0, a0, s8
  LW s0, 860(sp)
  ADDW a0, a0, s0
  LW s0, 792(sp)
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
  LW s0, 828(sp)
  ADDW a0, a0, s0
  LW s0, 824(sp)
  ADDW a0, a0, s0
  LW s0, 820(sp)
  ADDW a0, a0, s0
  LW s0, 816(sp)
  ADDW a0, a0, s0
  LW s0, 812(sp)
  ADDW a0, a0, s0
  LW s0, 808(sp)
  ADDW a0, a0, s0
  LW s0, 804(sp)
  ADDW a0, a0, s0
  LW s0, 800(sp)
  ADDW a0, a0, s0
  LW s0, 796(sp)
  ADDW a0, a0, s0
  LW s0, 980(sp)
  ADDW a0, a0, s0
  LW s0, 916(sp)
  ADDW a0, a0, s0
  LW s0, 988(sp)
  ADDW a0, a0, s0
  LW s0, 992(sp)
  ADDW a0, a0, s0
  LW s0, 996(sp)
  ADDW a0, a0, s0
  LW s0, 1000(sp)
  ADDW a0, a0, s0
  LW s0, 1004(sp)
  ADDW a0, a0, s0
  LW s0, 1008(sp)
  ADDW a0, a0, s0
  LW s0, 1012(sp)
  ADDW a0, a0, s0
  LW s0, 1016(sp)
  ADDW a0, a0, s0
  LW s0, 1020(sp)
  ADDW a0, a0, s0
  LW s0, 1024(sp)
  ADDW a0, a0, s0
  LW s0, 1028(sp)
  ADDW a0, a0, s0
  LW s0, 1032(sp)
  ADDW a0, a0, s0
  LW s0, 976(sp)
  ADDW a0, a0, s0
  LW s0, 984(sp)
  ADDW a0, a0, s0
  LW s0, 972(sp)
  ADDW a0, a0, s0
  LW s0, 968(sp)
  ADDW a0, a0, s0
  LW s0, 964(sp)
  ADDW a0, a0, s0
  LW s0, 960(sp)
  ADDW a0, a0, s0
  LW s0, 956(sp)
  ADDW a0, a0, s0
  LW s0, 952(sp)
  ADDW a0, a0, s0
  LW s0, 948(sp)
  ADDW a0, a0, s0
  LW s0, 944(sp)
  ADDW a0, a0, s0
  LW s0, 940(sp)
  ADDW a0, a0, s0
  LW s0, 936(sp)
  ADDW a0, a0, s0
  LW s0, 932(sp)
  ADDW a0, a0, s0
  LW s0, 424(sp)
  ADDW a0, a0, s0
  LW s0, 428(sp)
  ADDW a0, a0, s0
  LW s0, 432(sp)
  ADDW a0, a0, s0
  LW s0, 928(sp)
  ADDW a0, a0, s0
  LW s0, 924(sp)
  ADDW a0, a0, s0
  LW s0, 856(sp)
  ADDW a0, a0, s0
  LW s0, 920(sp)
  ADDW a0, a0, s0
  LW s0, 664(sp)
  ADDW a0, a0, s0
  LW s0, 660(sp)
  ADDW a0, a0, s0
  LW s0, 656(sp)
  ADDW a0, a0, s0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 1040(sp)
  LD s0, 1048(sp)
  LD s1, 1056(sp)
  LD s2, 1064(sp)
  LD s3, 1072(sp)
  LD s4, 1080(sp)
  LD s5, 1088(sp)
  LD s6, 1096(sp)
  LD s7, 1104(sp)
  LD s8, 1112(sp)
  LD s9, 1120(sp)
  LD s10, 1128(sp)
  LD s11, 1136(sp)
  ADDI sp, sp, 1488
  JALR zero, 0(ra)
bb12:   # loop depth 0
  JAL zero, bb10
bb13:   # loop depth 0
  LW s10, 16(sp)
  JAL zero, bb9
bb14:   # loop depth 1434348288
  LW s10, 104(sp)
  JAL zero, bb1
bb15:   # loop depth 1
  SLLIW s10, s10, 2
  ADDI a0, sp, 1144
  ADD a0, a0, s10
  SD a0, 1464(sp)
  LW s10, 104(sp)
  # implict jump to bb16
bb16:   # loop depth 2
  LD a0, 1464(sp)
  LW s11, 0(a0)
  SLLIW a0, s10, 2
  SW a0, 240(sp)
  LW a0, 240(sp)
  ADDI t6, sp, 1144
  ADD a0, t6, a0
  SD a0, 1472(sp)
  LD a0, 1472(sp)
  LW a0, 0(a0)
  SW a0, 132(sp)
  LW a0, 132(sp)
  BLT s11, a0, bb21
  # implict jump to bb17
bb17:   # loop depth 1434356688
  # implict jump to bb18
bb18:   # loop depth 2
  ADDIW s10, s10, 1
  SLTI a0, s10, 16
  SB a0, 2(sp)
  LB a0, 2(sp)
  BNE a0, zero, bb20
  # implict jump to bb19
bb19:   # loop depth 1434355168
  JAL zero, bb3
bb20:   # loop depth 1434349952
  JAL zero, bb16
bb21:   # loop depth 2
  LD a0, 1464(sp)
  LW s9, 0(a0)
  LD a0, 1472(sp)
  LW s11, 0(a0)
  LD a0, 1464(sp)
  SW s11, 0(a0)
  LD a0, 1472(sp)
  SW s9, 0(a0)
  JAL zero, bb18
