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
  SD s7, 1216(sp)
  SD s8, 1224(sp)
  SD s9, 1232(sp)
  SD s10, 1240(sp)
  SD s11, 1248(sp)
  SD s6, 1256(sp)
  ADD t4, a1, zero
  SW t4, 260(sp)
  ADD t4, a3, zero
  SW t4, 828(sp)
  ADD t4, a4, zero
  SW t4, 776(sp)
  ADD t4, a7, zero
  SW t4, 796(sp)
  LW t4, 1268(sp)
  SW t4, 780(sp)
  LW t4, 1272(sp)
  SW t4, 280(sp)
  LW t4, 1276(sp)
  SW t4, 548(sp)
  LW t4, 1280(sp)
  SW t4, 792(sp)
  LW t4, 1288(sp)
  SW t4, 856(sp)
  LW t4, 1292(sp)
  SW t4, 788(sp)
  LW t4, 1312(sp)
  SW t4, 760(sp)
  LW t4, 1320(sp)
  SW t4, 732(sp)
  LW t4, 1324(sp)
  SW t4, 996(sp)
  LW t4, 1328(sp)
  SW t4, 868(sp)
  LW s10, 1332(sp)
  LW t4, 1340(sp)
  SW t4, 1016(sp)
  LW t4, 1348(sp)
  SW t4, 748(sp)
  LW t4, 1352(sp)
  SW t4, 772(sp)
  LW t4, 1356(sp)
  SW t4, 844(sp)
  LW t2, 1384(sp)
  LW t4, 1388(sp)
  SW t4, 612(sp)
  LW t4, 1396(sp)
  SW t4, 764(sp)
  LW t4, 1404(sp)
  SW t4, 740(sp)
  LW t4, 1412(sp)
  SW t4, 784(sp)
  LW t4, 1420(sp)
  SW t4, 768(sp)
  LW s2, 1428(sp)
  LW t4, 1436(sp)
  SW t4, 756(sp)
  LW t4, 1440(sp)
  SW t4, 1128(sp)
  LW t4, 1464(sp)
  SW t4, 728(sp)
  LW a6, 1472(sp)
  LW t4, 1476(sp)
  SW t4, 752(sp)
  LW t4, 1484(sp)
  SW t4, 1040(sp)
  LW t4, 1488(sp)
  SW t4, 884(sp)
  LW t4, 1500(sp)
  SW t4, 852(sp)
  LW t4, 1504(sp)
  SW t4, 716(sp)
  LW t4, 1508(sp)
  SW t4, 840(sp)
  LW t4, 1512(sp)
  SW t4, 268(sp)
  LW t4, 1516(sp)
  SW t4, 832(sp)
  LW t4, 1536(sp)
  SW t4, 1068(sp)
  LW t4, 1544(sp)
  SW t4, 744(sp)
  LW t4, 1560(sp)
  SW t4, 724(sp)
  LW t4, 1564(sp)
  SW t4, 736(sp)
  LW t4, 1576(sp)
  SW t4, 816(sp)
  LW t4, 1584(sp)
  SW t4, 608(sp)
  LW t4, 1588(sp)
  SW t4, 1100(sp)
  LW t4, 1592(sp)
  SW t4, 864(sp)
  LW t4, 1596(sp)
  SW t4, 860(sp)
  LW t4, 1600(sp)
  SW t4, 628(sp)
  LW t4, 1604(sp)
  SW t4, 704(sp)
  LW t4, 1620(sp)
  SW t4, 848(sp)
  LW t4, 1628(sp)
  SW t4, 824(sp)
  LW t4, 1632(sp)
  SW t4, 708(sp)
  LW t4, 1656(sp)
  SW t4, 800(sp)
  LW t4, 1660(sp)
  SW t4, 88(sp)
  LW a3, 1664(sp)
  LW t4, 1676(sp)
  SW t4, 1092(sp)
  LW t4, 1680(sp)
  SW t4, 820(sp)
  LW t4, 1692(sp)
  SW t4, 928(sp)
  LW t4, 1696(sp)
  SW t4, 812(sp)
  LW t4, 1700(sp)
  SW t4, 808(sp)
  LW t4, 1724(sp)
  SW t4, 804(sp)
  LW t4, 1728(sp)
  SW t4, 692(sp)
  LW t4, 1740(sp)
  SW t4, 652(sp)
  LW t4, 1752(sp)
  SW t4, 648(sp)
  LW t4, 1760(sp)
  SW t4, 644(sp)
  LW t4, 1772(sp)
  SW t4, 640(sp)
  LW t4, 1776(sp)
  SW t4, 636(sp)
  LW t4, 1788(sp)
  SW t4, 632(sp)
  LW t4, 1796(sp)
  SW t4, 916(sp)
  LW t4, 1804(sp)
  SW t4, 624(sp)
  LW t4, 1808(sp)
  SW t4, 584(sp)
  LW t4, 1812(sp)
  SW t4, 616(sp)
  LW a0, 1836(sp)
  LW t4, 1844(sp)
  SW t4, 552(sp)
  LW t4, 1852(sp)
  SW t4, 604(sp)
  LW t4, 1864(sp)
  SW t4, 600(sp)
  LW t4, 1868(sp)
  SW t4, 596(sp)
  LW t4, 1876(sp)
  SW t4, 592(sp)
  LW t4, 1880(sp)
  SW t4, 588(sp)
  LW t4, 1884(sp)
  SW t4, 620(sp)
  LW t4, 1896(sp)
  SW t4, 712(sp)
  LW t4, 1912(sp)
  SW t4, 720(sp)
  LW t4, 1916(sp)
  SW t4, 248(sp)
  LW t4, 1920(sp)
  SW t4, 1124(sp)
  LW s6, 1940(sp)
  LW t6, 1960(sp)
  LW t4, 1964(sp)
  SW t4, 700(sp)
  LW t4, 1968(sp)
  SW t4, 696(sp)
  LW t4, 1972(sp)
  SW t4, 656(sp)
  LW t4, 1980(sp)
  SW t4, 688(sp)
  LW t4, 1984(sp)
  SW t4, 684(sp)
  LW t4, 1988(sp)
  SW t4, 680(sp)
  LW t4, 2012(sp)
  SW t4, 676(sp)
  LW t4, 2024(sp)
  SW t4, 672(sp)
  LW t4, 2032(sp)
  SW t4, 668(sp)
  LW t4, 2036(sp)
  SW t4, 664(sp)
  ADDI t4, sp, 1264
  LW t4, 784(t4)
  SW t4, 660(sp)
  ADDI t4, sp, 1264
  LW t4, 788(t4)
  SW t4, 1084(sp)
  ADDI t4, sp, 1264
  LW t4, 792(t4)
  SW t4, 980(sp)
  ADDI t4, sp, 1264
  LW t4, 800(t4)
  SW t4, 1080(sp)
  ADDI t4, sp, 1264
  LW t4, 804(t4)
  SW t4, 1076(sp)
  ADDI t4, sp, 1264
  LW t4, 808(t4)
  SW t4, 1072(sp)
  ADDI ra, sp, 1264
  LW ra, 816(ra)
  ADDI t4, sp, 1264
  LW t4, 820(t4)
  SW t4, 1064(sp)
  ADDI t4, sp, 1264
  LW t4, 824(t4)
  SW t4, 1060(sp)
  ADDI t4, sp, 1264
  LW t4, 828(t4)
  SW t4, 1056(sp)
  ADDI t5, sp, 1264
  LW s11, 832(t5)
  ADDI t4, sp, 1264
  LW t4, 836(t4)
  SW t4, 1048(sp)
  ADDI t4, sp, 1264
  LW t4, 840(t4)
  SW t4, 1044(sp)
  ADDI t4, sp, 1264
  LW t4, 844(t4)
  SW t4, 1120(sp)
  ADDI t4, sp, 1264
  LW t4, 848(t4)
  SW t4, 1036(sp)
  ADDI t4, sp, 1264
  LW t4, 852(t4)
  SW t4, 1032(sp)
  ADDI t4, sp, 1264
  LW t4, 860(t4)
  SW t4, 1028(sp)
  ADDI t4, sp, 1264
  LW t4, 864(t4)
  SW t4, 1024(sp)
  ADDI t4, sp, 1264
  LW t4, 876(t4)
  SW t4, 1020(sp)
  ADDI t4, sp, 1264
  LW t4, 880(t4)
  SW t4, 1152(sp)
  ADDI t4, sp, 1264
  LW t4, 896(t4)
  SW t4, 1088(sp)
  ADDI t4, sp, 1264
  LW t4, 908(t4)
  SW t4, 1148(sp)
  ADDI t4, sp, 1264
  LW t4, 940(t4)
  SW t4, 1144(sp)
  ADDI t4, sp, 1264
  LW t4, 948(t4)
  SW t4, 1140(sp)
  ADDI t4, sp, 1264
  LW t4, 956(t4)
  SW t4, 1136(sp)
  ADDI t4, sp, 1264
  LW t4, 964(t4)
  SW t4, 1132(sp)
  ADDI t4, sp, 1264
  LW t4, 976(t4)
  SW t4, 540(sp)
  ADDI a5, sp, 1264
  LW a5, 980(a5)
  ADDI t4, sp, 1264
  LW t4, 984(t4)
  SW t4, 1156(sp)
  ADDI a4, sp, 1264
  LW a4, 988(a4)
  ADDI t4, sp, 1264
  LW t4, 1000(t4)
  SW t4, 1116(sp)
  ADDI t4, sp, 1264
  LW t4, 1008(t4)
  SW t4, 1112(sp)
  ADDI t4, sp, 1264
  LW t4, 1012(t4)
  SW t4, 1108(sp)
  ADDI t4, sp, 1264
  LW t4, 1020(t4)
  SW t4, 1104(sp)
  ADDI t4, sp, 1264
  LW t4, 1024(t4)
  SW t4, 28(sp)
  ADDI t4, sp, 1264
  LW t4, 1032(t4)
  SW t4, 1096(sp)
  ADDI t4, sp, 1264
  LW t4, 1040(t4)
  SW t4, 1052(sp)
  ADDI t1, sp, 1264
  LW t1, 1048(t1)
  ADDI t4, sp, 1264
  LW t4, 1052(t4)
  SW t4, 940(sp)
  ADDI t4, sp, 1264
  LW t4, 1056(t4)
  SW t4, 936(sp)
  ADDI t4, sp, 1264
  LW t4, 1060(t4)
  SW t4, 932(sp)
  ADDI t4, sp, 1264
  LW t4, 1064(t4)
  SW t4, 836(sp)
  ADDI t4, sp, 1264
  LW t4, 1080(t4)
  SW t4, 924(sp)
  ADDI t4, sp, 1264
  LW t4, 1084(t4)
  SW t4, 920(sp)
  ADDI t5, sp, 1264
  LW s4, 1088(t5)
  ADDI t4, sp, 1264
  LW t4, 1096(t4)
  SW t4, 912(sp)
  ADDI t4, sp, 1264
  LW t4, 1100(t4)
  SW t4, 872(sp)
  ADDI t4, sp, 1264
  LW t4, 1108(t4)
  SW t4, 904(sp)
  ADDI t4, sp, 1264
  LW t4, 1120(t4)
  SW t4, 900(sp)
  ADDI t4, sp, 1264
  LW t4, 1128(t4)
  SW t4, 896(sp)
  ADDI t4, sp, 1264
  LW t4, 1140(t4)
  SW t4, 892(sp)
  ADDI t4, sp, 1264
  LW t4, 1144(t4)
  SW t4, 888(sp)
  ADDI t0, sp, 1264
  LW t0, 1148(t0)
  ADDI t4, sp, 1264
  LW t4, 1160(t4)
  SW t4, 880(sp)
  ADDI t4, sp, 1264
  LW t4, 1184(t4)
  SW t4, 876(sp)
  ADDI t4, sp, 1264
  LW t4, 1200(t4)
  SW t4, 908(sp)
  ADDI t4, sp, 1264
  LW t4, 1204(t4)
  SW t4, 1012(sp)
  ADDI t4, sp, 1264
  LW t4, 1236(t4)
  SW t4, 1008(sp)
  ADDI t4, sp, 1264
  LW t4, 1240(t4)
  SW t4, 1004(sp)
  ADDI t4, sp, 1264
  LW t4, 1280(t4)
  SW t4, 1000(sp)
  ADDI t5, sp, 1264
  LW s8, 1284(t5)
  ADDI t4, sp, 1264
  LW t4, 1296(t4)
  SW t4, 992(sp)
  ADDI t4, sp, 1264
  LW t4, 1300(t4)
  SW t4, 988(sp)
  ADDI t4, sp, 1264
  LW t4, 1312(t4)
  SW t4, 984(sp)
  ADDI t4, sp, 1264
  LW t4, 1316(t4)
  SW t4, 944(sp)
  ADDI t4, sp, 1264
  LW t4, 1328(t4)
  SW t4, 976(sp)
  ADDI t4, sp, 1264
  LW t4, 1332(t4)
  SW t4, 972(sp)
  ADDI t4, sp, 1264
  LW t4, 1336(t4)
  SW t4, 968(sp)
  ADDI t4, sp, 1264
  LW t4, 1364(t4)
  SW t4, 964(sp)
  ADDI t4, sp, 1264
  LW t4, 1368(t4)
  SW t4, 960(sp)
  ADDI t4, sp, 1264
  LW t4, 1388(t4)
  SW t4, 956(sp)
  ADDI t4, sp, 1264
  LW t4, 1396(t4)
  SW t4, 952(sp)
  ADDI t5, sp, 1264
  LW s7, 1424(t5)
  ADDI t4, sp, 1264
  LW t4, 1428(t4)
  SW t4, 948(sp)
  ADDI t4, sp, 1264
  LW t4, 1432(t4)
  SW t4, 216(sp)
  ADDI t4, sp, 1264
  LW t4, 1452(t4)
  SW t4, 212(sp)
  ADDI t4, sp, 1264
  LW t4, 1456(t4)
  SW t4, 208(sp)
  ADDI t4, sp, 1264
  LW t4, 1476(t4)
  SW t4, 204(sp)
  ADDI t4, sp, 1264
  LW t4, 1480(t4)
  SW t4, 200(sp)
  ADDI t4, sp, 1264
  LW t4, 1484(t4)
  SW t4, 196(sp)
  ADDI t4, sp, 1264
  LW t4, 1508(t4)
  SW t4, 192(sp)
  ADDI t4, sp, 1264
  LW t4, 1516(t4)
  SW t4, 188(sp)
  ADDI t4, sp, 1264
  LW t4, 1524(t4)
  SW t4, 148(sp)
  ADDI t4, sp, 1264
  LW t4, 1528(t4)
  SW t4, 180(sp)
  ADDI t4, sp, 1264
  LW t4, 1532(t4)
  SW t4, 176(sp)
  ADDI t4, sp, 1264
  LW t4, 1536(t4)
  SW t4, 172(sp)
  ADDI t4, sp, 1264
  LW t4, 1544(t4)
  SW t4, 168(sp)
  ADDI t4, sp, 1264
  LW t4, 1552(t4)
  SW t4, 164(sp)
  ADDI t4, sp, 1264
  LW t4, 1572(t4)
  SW t4, 160(sp)
  ADDI t4, sp, 1264
  LW t4, 1576(t4)
  SW t4, 156(sp)
  ADDI t4, sp, 1264
  LW t4, 1580(t4)
  SW t4, 152(sp)
  ADDI t4, sp, 1264
  LW t4, 1588(t4)
  SW t4, 184(sp)
  ADDI t4, sp, 1264
  LW t4, 1596(t4)
  SW t4, 288(sp)
  ADDI t4, sp, 1264
  LW t4, 1612(t4)
  SW t4, 284(sp)
  ADDI t4, sp, 1264
  LW t4, 1628(t4)
  SW t4, 328(sp)
  ADDI t4, sp, 1264
  LW t4, 1632(t4)
  SW t4, 276(sp)
  ADDI t4, sp, 1264
  LW t4, 1636(t4)
  SW t4, 272(sp)
  ADDI a7, sp, 1264
  LW a7, 1660(a7)
  ADDI t4, sp, 1264
  LW t4, 1668(t4)
  SW t4, 264(sp)
  ADDI a1, sp, 1264
  LW a1, 1672(a1)
  ADDI t4, sp, 1264
  LW t4, 1692(t4)
  SW t4, 220(sp)
  ADDI t4, sp, 1264
  LW t4, 1696(t4)
  SW t4, 252(sp)
  ADDI t5, sp, 1264
  LW s5, 1700(t5)
  ADDI t4, sp, 1264
  LW t4, 1704(t4)
  SW t4, 244(sp)
  ADDI t4, sp, 1264
  LW t4, 1712(t4)
  SW t4, 240(sp)
  ADDI t4, sp, 1264
  LW t4, 1728(t4)
  SW t4, 236(sp)
  ADDI t4, sp, 1264
  LW t4, 1736(t4)
  SW t4, 232(sp)
  ADDI t4, sp, 1264
  LW t4, 1748(t4)
  SW t4, 228(sp)
  ADDI t4, sp, 1264
  LW t4, 1752(t4)
  SW t4, 224(sp)
  ADDI t4, sp, 1264
  LW t4, 1768(t4)
  SW t4, 112(sp)
  ADDI t4, sp, 1264
  LW t4, 1772(t4)
  SW t4, 72(sp)
  ADDI t4, sp, 1264
  LW t4, 1788(t4)
  SW t4, 68(sp)
  ADDI t4, sp, 1264
  LW t4, 1800(t4)
  SW t4, 64(sp)
  ADDI t4, sp, 1264
  LW t4, 1804(t4)
  SW t4, 60(sp)
  ADDI t4, sp, 1264
  LW t4, 1816(t4)
  SW t4, 56(sp)
  ADDI t4, sp, 1264
  LW t4, 1820(t4)
  SW t4, 52(sp)
  ADDI t4, sp, 1264
  LW t4, 1828(t4)
  SW t4, 48(sp)
  ADDI t4, sp, 1264
  LW t4, 1836(t4)
  SW t4, 44(sp)
  ADDI t4, sp, 1264
  LW t4, 1840(t4)
  SW t4, 0(sp)
  ADDI t4, sp, 1264
  LW t4, 1844(t4)
  SW t4, 36(sp)
  ADDI t4, sp, 1264
  LW t4, 1848(t4)
  SW t4, 32(sp)
  ADDI t5, sp, 1264
  LW s9, 1852(t5)
  ADDI t4, sp, 1264
  LW t4, 1864(t4)
  SW t4, 24(sp)
  ADDI t4, sp, 1264
  LW t4, 1868(t4)
  SW t4, 20(sp)
  ADDI t4, sp, 1264
  LW t4, 1876(t4)
  SW t4, 16(sp)
  ADDI t4, sp, 1264
  LW t4, 1884(t4)
  SW t4, 12(sp)
  ADDI t4, sp, 1264
  LW t4, 1896(t4)
  SW t4, 8(sp)
  ADDI t4, sp, 1264
  LW t4, 1904(t4)
  SW t4, 4(sp)
  ADDI t4, sp, 1264
  LW t4, 1912(t4)
  SW t4, 40(sp)
  ADDI t4, sp, 1264
  LW t4, 1916(t4)
  SW t4, 144(sp)
  ADDI t4, sp, 1264
  LW t4, 1924(t4)
  SW t4, 140(sp)
  ADDI t4, sp, 1264
  LW t4, 1944(t4)
  SW t4, 136(sp)
  ADDI t4, sp, 1264
  LW t4, 1952(t4)
  SW t4, 132(sp)
  ADDI t4, sp, 1264
  LW t4, 1956(t4)
  SW t4, 128(sp)
  ADDI t4, sp, 1264
  LW t4, 1960(t4)
  SW t4, 124(sp)
  ADDI t4, sp, 1264
  LW t4, 1972(t4)
  SW t4, 120(sp)
  ADDI t4, sp, 1264
  LW t4, 1988(t4)
  SW t4, 116(sp)
  ADDI t4, sp, 1264
  LW t4, 1992(t4)
  SW t4, 76(sp)
  ADDI t4, sp, 1264
  LW t4, 2008(t4)
  SW t4, 108(sp)
  ADDI t4, sp, 1264
  LW t4, 2016(t4)
  SW t4, 104(sp)
  ADDI t4, sp, 1264
  LW t4, 2020(t4)
  SW t4, 100(sp)
  ADDI t4, sp, 1264
  LW t4, 2028(t4)
  SW t4, 96(sp)
  ADDI t4, sp, 1264
  LW t4, 2040(t4)
  SW t4, 92(sp)
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
  LW t4, 1108(sp)
  ADDW s0, s0, t4
  LW t4, 444(sp)
  MULW s1, s11, t4
  MULW s1, s1, s7
  ADDW s0, s0, s1
  LW t4, 176(sp)
  MULW s1, t4, s4
  ADDW s0, s0, s1
  MULW s1, a3, a0
  ADDW s0, s0, s1
  ADDW s0, s0, t6
  MULW s1, t2, a4
  LW t4, 1112(sp)
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
  LW t4, 1120(sp)
  MULW s1, s1, t4
  LW t4, 552(sp)
  MULW s1, s1, t4
  LW t4, 576(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 88(sp)
  ADDW s0, s0, t4
  LW t4, 124(sp)
  ADDW s0, s0, t4
  LW t4, 28(sp)
  ADDW s0, s0, t4
  LW t4, 4(sp)
  LW t3, 672(sp)
  MULW s1, t4, t3
  LW t4, 744(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 464(sp)
  LW t3, 248(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 260(sp)
  LW t3, 872(sp)
  MULW s1, t4, t3
  LW t4, 900(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 152(sp)
  LW t3, 776(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 268(sp)
  LW t3, 204(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 356(sp)
  ADDW s0, s0, t4
  LW t4, 400(sp)
  ADDW s0, s0, t4
  LW t4, 1008(sp)
  ADDW s0, s0, t4
  LW t4, 32(sp)
  LW t3, 280(sp)
  MULW s1, t4, t3
  LW t4, 836(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 1084(sp)
  LW t3, 996(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 600(sp)
  LW t3, 884(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 740(sp)
  LW t3, 916(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 496(sp)
  ADDW s0, s0, t4
  LW t4, 928(sp)
  ADDW s0, s0, t4
  LW t4, 952(sp)
  ADDW s0, s0, t4
  LW t4, 100(sp)
  LW t3, 1092(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 1124(sp)
  ADDW s0, s0, t4
  LW t4, 488(sp)
  LW t3, 500(sp)
  MULW s1, t4, t3
  LW t4, 904(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 312(sp)
  ADDW s0, s0, t4
  LW t4, 796(sp)
  LW t3, 1100(sp)
  MULW s1, t4, t3
  LW t4, 324(sp)
  MULW s1, s1, t4
  LW t4, 1120(sp)
  MULW s1, s1, t4
  LW t4, 936(sp)
  MULW s1, s1, t4
  LW t4, 220(sp)
  MULW s1, s1, t4
  LW t4, 428(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 900(sp)
  ADDW s0, s0, t4
  LW t4, 224(sp)
  LW t3, 272(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 964(sp)
  ADDW s0, s0, t4
  LW t4, 204(sp)
  ADDW s0, s0, t4
  LW t4, 1124(sp)
  ADDW s0, s0, t4
  LW t4, 388(sp)
  ADDW s0, s0, t4
  LW t4, 1128(sp)
  LW t3, 892(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 232(sp)
  ADDW s0, s0, t4
  LW t4, 628(sp)
  LW t3, 196(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 1040(sp)
  LW t3, 804(sp)
  MULW s1, t4, t3
  LW t4, 828(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 1108(sp)
  ADDW s0, s0, t4
  LW t4, 132(sp)
  ADDW s0, s0, t4
  LW t4, 1016(sp)
  LW t3, 200(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 1004(sp)
  ADDW s0, s0, t4
  LW t4, 520(sp)
  LW t3, 344(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 112(sp)
  LW t3, 92(sp)
  MULW s1, t4, t3
  LW t4, 992(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 1068(sp)
  ADDW s0, s0, t4
  LW t4, 704(sp)
  LW t3, 536(sp)
  MULW s1, t4, t3
  LW t4, 516(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 708(sp)
  ADDW s0, s0, t4
  LW t4, 284(sp)
  ADDW s0, s0, t4
  LW t4, 1020(sp)
  ADDW s0, s0, t4
  LW t4, 1088(sp)
  ADDW s0, s0, t4
  LW t4, 1020(sp)
  ADDW s0, s0, t4
  LW t4, 420(sp)
  LW t3, 660(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 872(sp)
  LW t3, 172(sp)
  MULW s1, t4, t3
  LW t4, 388(sp)
  MULW s1, s1, t4
  LW t4, 664(sp)
  MULW s1, s1, t4
  LW t4, 140(sp)
  MULW s1, s1, t4
  LW t4, 1116(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 712(sp)
  ADDW s0, s0, t4
  LW t4, 716(sp)
  LW t3, 304(sp)
  MULW s1, t4, t3
  LW t4, 560(sp)
  MULW s1, s1, t4
  LW t4, 724(sp)
  MULW s1, s1, t4
  LW t4, 588(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 644(sp)
  LW t3, 608(sp)
  MULW s1, t4, t3
  LW t4, 320(sp)
  MULW s1, s1, t4
  LW t4, 536(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 380(sp)
  ADDW s0, s0, t4
  LW t4, 120(sp)
  LW t3, 612(sp)
  MULW s1, t4, t3
  LW t4, 1088(sp)
  MULW s1, s1, t4
  LW t4, 628(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 548(sp)
  ADDW s0, s0, t4
  LW t4, 444(sp)
  LW t3, 652(sp)
  MULW s1, t4, t3
  LW t4, 816(sp)
  MULW s1, s1, t4
  LW t4, 1148(sp)
  MULW s1, s1, t4
  LW t4, 40(sp)
  MULW s1, s1, t4
  LW t4, 748(sp)
  MULW s1, s1, t4
  LW t4, 932(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 424(sp)
  ADDW s0, s0, t4
  LW t4, 912(sp)
  ADDW s0, s0, t4
  LW t4, 96(sp)
  LW t3, 508(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 1064(sp)
  LW t3, 364(sp)
  MULW s1, t4, t3
  LW t4, 624(sp)
  MULW s1, s1, t4
  LW t4, 496(sp)
  MULW s1, s1, t4
  LW t4, 100(sp)
  MULW s1, s1, t4
  LW t4, 616(sp)
  MULW s1, s1, t4
  LW t4, 676(sp)
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
  LW t4, 648(sp)
  LW t3, 568(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 876(sp)
  ADDW s0, s0, t4
  LW t4, 1080(sp)
  LW t3, 1028(sp)
  MULW s1, t4, t3
  LW t4, 440(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 888(sp)
  ADDW s0, s0, t4
  LW t4, 388(sp)
  ADDW s0, s0, t4
  LW t4, 812(sp)
  ADDW s0, s0, t4
  LW t4, 180(sp)
  LW t3, 408(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 416(sp)
  ADDW s0, s0, t4
  LW t4, 784(sp)
  ADDW s0, s0, t4
  LW t4, 828(sp)
  ADDW s0, s0, t4
  LW t4, 1132(sp)
  ADDW s0, s0, t4
  LW t4, 484(sp)
  ADDW s0, s0, t4
  LW t4, 76(sp)
  ADDW s0, s0, t4
  LW t4, 804(sp)
  ADDW s0, s0, t4
  LW t4, 832(sp)
  ADDW s0, s0, t4
  LW t4, 696(sp)
  ADDW s0, s0, t4
  LW t4, 808(sp)
  LW t3, 656(sp)
  MULW s1, t4, t3
  LW t4, 688(sp)
  MULW s1, s1, t4
  LW t4, 840(sp)
  MULW s1, s1, t4
  LW t4, 880(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 184(sp)
  LW t3, 544(sp)
  MULW s1, t4, t3
  LW t4, 972(sp)
  MULW s1, s1, t4
  LW t4, 1112(sp)
  MULW s1, s1, t4
  LW t4, 136(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 56(sp)
  LW t3, 1136(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 808(sp)
  ADDW s0, s0, t4
  LW t4, 600(sp)
  LW t3, 1148(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 1096(sp)
  LW t3, 844(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 12(sp)
  ADDW s0, s0, t4
  LW t4, 288(sp)
  ADDW s0, s0, t4
  LW t4, 80(sp)
  ADDW s0, s0, t4
  LW t4, 432(sp)
  ADDW s0, s0, t4
  LW t4, 460(sp)
  LW t3, 128(sp)
  MULW s1, t4, t3
  LW t4, 348(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 852(sp)
  LW t3, 72(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 240(sp)
  ADDW s0, s0, t4
  LW t4, 564(sp)
  LW t3, 856(sp)
  MULW s1, t4, t3
  LW t4, 148(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 408(sp)
  ADDW s0, s0, t4
  LW t4, 264(sp)
  ADDW s0, s0, t4
  LW t4, 940(sp)
  LW t3, 144(sp)
  MULW s1, t4, t3
  LW t4, 204(sp)
  MULW s1, s1, t4
  LW t4, 252(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 988(sp)
  LW t3, 692(sp)
  MULW s1, t4, t3
  LW t4, 868(sp)
  MULW s1, s1, t4
  LW t4, 1056(sp)
  MULW s1, s1, t4
  LW t4, 136(sp)
  MULW s1, s1, t4
  LW t4, 76(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 448(sp)
  ADDW s0, s0, t4
  LW t4, 44(sp)
  ADDW s0, s0, t4
  LW t4, 300(sp)
  LW t3, 764(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 288(sp)
  ADDW s0, s0, t4
  LW t4, 292(sp)
  LW t3, 908(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 492(sp)
  LW t3, 392(sp)
  MULW s1, t4, t3
  LW t4, 52(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 604(sp)
  LW t3, 44(sp)
  MULW s1, t4, t3
  LW t4, 604(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 1008(sp)
  LW t3, 16(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 324(sp)
  LW t3, 332(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 264(sp)
  ADDW s0, s0, t4
  LW t4, 1052(sp)
  LW t3, 592(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 968(sp)
  ADDW s0, s0, t4
  LW t4, 596(sp)
  ADDW s0, s0, t4
  LW t4, 560(sp)
  ADDW s0, s0, t4
  LW t4, 212(sp)
  ADDW s0, s0, t4
  LW t4, 680(sp)
  ADDW s0, s0, t4
  LW t4, 640(sp)
  ADDW s0, s0, t4
  LW t4, 800(sp)
  LW t3, 340(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 700(sp)
  ADDW s0, s0, t4
  LW t4, 168(sp)
  ADDW s0, s0, t4
  LW t4, 944(sp)
  LW t3, 428(sp)
  MULW s1, t4, t3
  LW t4, 732(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 1048(sp)
  ADDW s0, s0, t4
  LW t4, 860(sp)
  ADDW s0, s0, t4
  LW t4, 396(sp)
  LW t3, 960(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 1144(sp)
  LW t3, 904(sp)
  MULW s1, t4, t3
  LW t4, 1072(sp)
  MULW s1, s1, t4
  LW t4, 24(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 256(sp)
  LW t3, 296(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 896(sp)
  ADDW s0, s0, t4
  LW t4, 636(sp)
  LW t3, 920(sp)
  MULW s1, t4, t3
  LW t4, 740(sp)
  MULW s1, s1, t4
  LW t4, 428(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 8(sp)
  LW t3, 236(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 748(sp)
  ADDW s0, s0, t4
  LW t4, 744(sp)
  ADDW s0, s0, t4
  LW t4, 1024(sp)
  ADDW s0, s0, t4
  LW t4, 720(sp)
  ADDW s0, s0, t4
  LW t4, 480(sp)
  ADDW s0, s0, t4
  LW t4, 1144(sp)
  LW t3, 896(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 360(sp)
  ADDW s0, s0, t4
  LW t4, 576(sp)
  LW t3, 244(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 1000(sp)
  ADDW s0, s0, t4
  LW t4, 580(sp)
  ADDW s0, s0, t4
  LW t4, 84(sp)
  ADDW s0, s0, t4
  LW t4, 1084(sp)
  LW t3, 148(sp)
  MULW s1, t4, t3
  LW t4, 12(sp)
  MULW s1, s1, t4
  LW t4, 752(sp)
  MULW s1, s1, t4
  LW t4, 684(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 228(sp)
  LW t3, 756(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 476(sp)
  LW t3, 1072(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 1076(sp)
  ADDW s0, s0, t4
  LW t4, 632(sp)
  LW t3, 760(sp)
  MULW s1, t4, t3
  LW t4, 864(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 456(sp)
  LW t3, 924(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 160(sp)
  LW t3, 208(sp)
  MULW s1, t4, t3
  LW t4, 1104(sp)
  MULW s1, s1, t4
  LW t4, 1152(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 772(sp)
  LW t3, 60(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 468(sp)
  LW t3, 696(sp)
  MULW s1, t4, t3
  LW t4, 116(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 536(sp)
  ADDW s0, s0, t4
  LW t4, 64(sp)
  ADDW s0, s0, t4
  LW t4, 948(sp)
  ADDW s0, s0, t4
  LW t4, 164(sp)
  LW t3, 672(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 168(sp)
  LW t3, 404(sp)
  MULW s1, t4, t3
  LW t4, 820(sp)
  MULW s1, s1, t4
  LW t4, 68(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 308(sp)
  ADDW s0, s0, t4
  LW t4, 216(sp)
  LW t3, 20(sp)
  MULW s1, t4, t3
  LW t4, 1060(sp)
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
  LW t4, 956(sp)
  ADDW s0, s0, t4
  LW t4, 452(sp)
  LW t3, 0(sp)
  MULW s1, t4, t3
  LW t4, 316(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 500(sp)
  ADDW s0, s0, t4
  LW t4, 36(sp)
  ADDW s0, s0, t4
  LW t4, 848(sp)
  ADDW s0, s0, t4
  LW t4, 152(sp)
  ADDW s0, s0, t4
  LW t4, 504(sp)
  ADDW s0, s0, t4
  LW t4, 976(sp)
  LW t3, 768(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 276(sp)
  LW t3, 412(sp)
  MULW s1, t4, t3
  LW t4, 932(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 384(sp)
  LW t3, 744(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 912(sp)
  LW t3, 336(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 980(sp)
  LW t3, 668(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 176(sp)
  ADDW s0, s0, t4
  LW t4, 188(sp)
  LW t3, 472(sp)
  MULW s1, t4, t3
  LW t4, 168(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 772(sp)
  LW t3, 1036(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 24(sp)
  ADDW s0, s0, t4
  LW t4, 76(sp)
  LW t3, 1036(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 620(sp)
  LW t3, 1156(sp)
  MULW s1, t4, t3
  LW t4, 372(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 644(sp)
  ADDW s0, s0, t4
  LW t4, 152(sp)
  LW t3, 820(sp)
  MULW s1, t4, t3
  LW t4, 556(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 776(sp)
  LW t3, 224(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 528(sp)
  LW t3, 780(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 172(sp)
  LW t3, 936(sp)
  MULW s1, t4, t3
  LW t4, 156(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 696(sp)
  LW t3, 784(sp)
  MULW s1, t4, t3
  LW t4, 788(sp)
  MULW s1, s1, t4
  LW t4, 1044(sp)
  MULW s1, s1, t4
  LW t4, 792(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 436(sp)
  ADDW s0, s0, t4
  LW t4, 984(sp)
  ADDW s0, s0, t4
  LW t4, 512(sp)
  LW t3, 796(sp)
  MULW s1, t4, t3
  LW t4, 100(sp)
  MULW s1, s1, t4
  LW t4, 584(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 48(sp)
  LW t3, 124(sp)
  MULW s1, t4, t3
  LW t4, 548(sp)
  MULW s1, s1, t4
  ADDW s0, s0, s1
  LW t4, 108(sp)
  ADDW s0, s0, t4
  LW t4, 632(sp)
  ADDW s0, s0, t4
  LW t4, 736(sp)
  LW t3, 104(sp)
  MULW s1, t4, t3
  ADDW s0, s0, s1
  LW t4, 1140(sp)
  ADDW s0, s0, t4
  LW t4, 1012(sp)
  ADDW s0, s0, t4
  LW t4, 192(sp)
  ADDW s0, s0, t4
  LW t4, 1032(sp)
  ADDW s0, s0, t4
  ADD a0, s0, zero
  LD ra, 1160(sp)
  LD s0, 1168(sp)
  LD s1, 1176(sp)
  LD s2, 1184(sp)
  LD s3, 1192(sp)
  LD s4, 1200(sp)
  LD s5, 1208(sp)
  LD s7, 1216(sp)
  LD s8, 1224(sp)
  LD s9, 1232(sp)
  LD s10, 1240(sp)
  LD s11, 1248(sp)
  LD s6, 1256(sp)
  ADDI sp, sp, 1264
  JALR zero, 0(ra)
