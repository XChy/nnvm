.global params_f40_i24
.global main
.global params_fa40
.global params_f40
.global params_mix
.section .bss


.section .data
k:
.word 0x00000000
.CONSTANT.7.0:
.word 0x00000000
.section .text
params_f40_i24:
  ADDI sp, sp, -1536
  SD s0, 1336(sp)
  SD s11, 1344(sp)
  SD s10, 1352(sp)
  FSD fs11, 1360(sp)
  SD ra, 1368(sp)
  FSD fs10, 1376(sp)
  FSD fs8, 1384(sp)
  FSD fs7, 1392(sp)
  SD s9, 1400(sp)
  SD s8, 1408(sp)
  FSD fs6, 1416(sp)
  FSD fs1, 1424(sp)
  SD s4, 1432(sp)
  SD s3, 1440(sp)
  SD s2, 1448(sp)
  SD s1, 1456(sp)
  FSD fs0, 1464(sp)
  FSD fs9, 1472(sp)
  SD s5, 1480(sp)
  FSD fs2, 1488(sp)
  SD s7, 1496(sp)
  FSD fs3, 1504(sp)
  SD s6, 1512(sp)
  FSD fs4, 1520(sp)
  FSD fs5, 1528(sp)
  ADD t4, a0, zero
  SW t4, 816(sp)
  ADD s1, a1, zero
  ADD s2, a2, zero
  FSGNJ.D fs0, fa0, fa0
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  FSGNJ.D fs1, fa1, fa1
  FSGNJ.D fs2, fa2, fa2
  FSGNJ.D fs3, fa3, fa3
  ADD s6, a6, zero
  FSGNJ.D fs4, fa4, fa4
  FSGNJ.D fs5, fa5, fa5
  ADD s7, a7, zero
  FSGNJ.D fs6, fa6, fa6
  ADDI t5, sp, 1536
  ADD s8, t5, zero
  LW s9, 0(s8)
  FSGNJ.D fs7, fa7, fa7
  ADDI s8, sp, 1540
  FLW fs8, 0(s8)
  ADDI s8, sp, 1544
  FLW fs9, 0(s8)
  ADDI s8, sp, 1548
  FLW fs10, 0(s8)
  ADDI s8, sp, 1552
  FLW fs11, 0(s8)
  ADDI s8, sp, 1556
  FLW ft0, 0(s8)
  ADDI s8, sp, 1560
  LW s10, 0(s8)
  ADDI s8, sp, 1564
  FLW ft1, 0(s8)
  ADDI s8, sp, 1568
  LW s11, 0(s8)
  ADDI s8, sp, 1572
  LW ra, 0(s8)
  ADDI s8, sp, 1576
  FLW ft2, 0(s8)
  ADDI s8, sp, 1580
  FLW ft5, 0(s8)
  ADDI s8, sp, 1584
  FLW ft6, 0(s8)
  ADDI s8, sp, 1588
  FLW ft7, 0(s8)
  ADDI s8, sp, 1592
  FLW ft8, 0(s8)
  ADDI s8, sp, 1596
  LW t0, 0(s8)
  ADDI s8, sp, 1600
  FLW ft9, 0(s8)
  ADDI s8, sp, 1604
  LW t1, 0(s8)
  ADDI s8, sp, 1608
  FLW ft4, 0(s8)
  FSW ft4, 784(sp)
  ADDI s8, sp, 1612
  FLW ft4, 0(s8)
  FSW ft4, 792(sp)
  ADDI s8, sp, 1616
  FLW ft4, 0(s8)
  FSW ft4, 800(sp)
  ADDI s8, sp, 1620
  FLW ft4, 0(s8)
  FSW ft4, 808(sp)
  ADDI s8, sp, 1624
  LW t2, 0(s8)
  ADDI s8, sp, 1628
  LW s0, 0(s8)
  ADDI s8, sp, 1632
  FLW ft4, 0(s8)
  FSW ft4, 824(sp)
  ADDI s8, sp, 1636
  FLW ft4, 0(s8)
  FSW ft4, 832(sp)
  ADDI s8, sp, 1640
  FLW ft4, 0(s8)
  FSW ft4, 840(sp)
  ADDI s8, sp, 1644
  LW t4, 0(s8)
  SW t4, 848(sp)
  ADDI s8, sp, 1648
  FLW ft4, 0(s8)
  FSW ft4, 856(sp)
  ADDI s8, sp, 1652
  LW t4, 0(s8)
  SW t4, 864(sp)
  ADDI s8, sp, 1656
  LW t4, 0(s8)
  SW t4, 872(sp)
  ADDI s8, sp, 1660
  FLW ft4, 0(s8)
  FSW ft4, 880(sp)
  ADDI s8, sp, 1664
  FLW ft4, 0(s8)
  FSW ft4, 888(sp)
  ADDI s8, sp, 1668
  FLW ft4, 0(s8)
  FSW ft4, 896(sp)
  ADDI s8, sp, 1672
  FLW ft4, 0(s8)
  FSW ft4, 904(sp)
  ADDI s8, sp, 1676
  LW t4, 0(s8)
  SW t4, 912(sp)
  ADDI s8, sp, 1680
  LW t4, 0(s8)
  SW t4, 920(sp)
  ADDI s8, sp, 1684
  LW t4, 0(s8)
  SW t4, 928(sp)
  ADDI s8, sp, 1688
  FLW ft4, 0(s8)
  FSW ft4, 936(sp)
  ADDI s8, sp, 1692
  FLW ft4, 0(s8)
  FSW ft4, 944(sp)
  ADDI s8, sp, 1696
  FLW ft4, 0(s8)
  FSW ft4, 952(sp)
  ADDI s8, sp, 1700
  FLW ft4, 0(s8)
  FSW ft4, 960(sp)
  ADDI s8, sp, 1704
  FLW ft4, 0(s8)
  FSW ft4, 968(sp)
  ADDI s8, sp, 1708
  FLW ft4, 0(s8)
  FSW ft4, 976(sp)
  ADDI s8, sp, 1712
  LW t4, 0(s8)
  SW t4, 984(sp)
  ADDI s8, sp, 1716
  FLW ft4, 0(s8)
  FSW ft4, 992(sp)
  ADDI s8, sp, 1720
  LW t4, 0(s8)
  SW t4, 1000(sp)
  ADDI s8, sp, 1724
  FLW ft4, 0(s8)
  FSW ft4, 1008(sp)
  LW t4, 816(sp)
  SW t4, 776(sp)
  SW s1, 768(sp)
  SW s2, 760(sp)
  FSW fs0, 752(sp)
  SW s3, 744(sp)
  SW s4, 736(sp)
  SW s5, 728(sp)
  FSW fs1, 720(sp)
  FSW fs2, 712(sp)
  FSW fs3, 704(sp)
  SW s6, 696(sp)
  FSW fs4, 688(sp)
  FSW fs5, 680(sp)
  SW s7, 672(sp)
  FSW fs6, 664(sp)
  SW s9, 656(sp)
  FSW fs7, 648(sp)
  FSW fs8, 640(sp)
  FSW fs9, 632(sp)
  FSW fs10, 624(sp)
  FSW fs11, 616(sp)
  FSW ft0, 608(sp)
  SW s10, 600(sp)
  FSW ft1, 592(sp)
  SW s11, 584(sp)
  SW ra, 576(sp)
  FSW ft2, 568(sp)
  FSW ft5, 560(sp)
  FSW ft6, 552(sp)
  FSW ft7, 544(sp)
  FSW ft8, 536(sp)
  SW t0, 528(sp)
  FSW ft9, 520(sp)
  SW t1, 512(sp)
  FLW ft4, 784(sp)
  FSW ft4, 504(sp)
  FLW ft4, 792(sp)
  FSW ft4, 496(sp)
  FLW ft4, 800(sp)
  FSW ft4, 488(sp)
  FLW ft4, 808(sp)
  FSW ft4, 480(sp)
  SW t2, 472(sp)
  SW s0, 464(sp)
  FLW ft4, 824(sp)
  FSW ft4, 456(sp)
  FLW ft4, 832(sp)
  FSW ft4, 448(sp)
  FLW ft4, 840(sp)
  FSW ft4, 440(sp)
  LW t4, 848(sp)
  SW t4, 432(sp)
  FLW ft4, 856(sp)
  FSW ft4, 424(sp)
  LW t4, 864(sp)
  SW t4, 416(sp)
  LW t4, 872(sp)
  SW t4, 408(sp)
  FLW ft4, 880(sp)
  FSW ft4, 400(sp)
  FLW ft4, 888(sp)
  FSW ft4, 392(sp)
  FLW ft4, 896(sp)
  FSW ft4, 384(sp)
  FLW ft4, 904(sp)
  FSW ft4, 376(sp)
  LW t4, 912(sp)
  SW t4, 368(sp)
  LW t4, 920(sp)
  SW t4, 360(sp)
  LW t4, 928(sp)
  SW t4, 352(sp)
  FLW ft4, 936(sp)
  FSW ft4, 344(sp)
  FLW ft4, 944(sp)
  FSW ft4, 336(sp)
  FLW ft4, 952(sp)
  FSW ft4, 328(sp)
  FLW ft4, 960(sp)
  FSW ft4, 320(sp)
  FLW ft4, 968(sp)
  FSW ft4, 312(sp)
  FLW ft4, 976(sp)
  FSW ft4, 304(sp)
  LW t4, 984(sp)
  SW t4, 296(sp)
  FLW ft4, 992(sp)
  FSW ft4, 288(sp)
  LW t4, 1000(sp)
  SW t4, 280(sp)
  FLW ft4, 1008(sp)
  FSW ft4, 272(sp)
  LW t4, 816(sp)
  XOR s0, t4, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb1
  JAL zero, bb3
bb1:
  FLW fs0, 440(sp)
  FLW fs1, 632(sp)
  FADD.S fs2, fs0, fs1
  FLW fs0, 288(sp)
  FADD.S fs1, fs2, fs0
  FLW fs0, 688(sp)
  FADD.S fs2, fs1, fs0
  FLW fs0, 752(sp)
  FLW fs1, 488(sp)
  FADD.S fs3, fs0, fs1
  FLW fs0, 608(sp)
  FADD.S fs1, fs3, fs0
  FLW fs0, 704(sp)
  FADD.S fs3, fs1, fs0
  FLW fs0, 720(sp)
  FLW fs1, 544(sp)
  FADD.S fs4, fs0, fs1
  FLW fs0, 448(sp)
  FADD.S fs1, fs4, fs0
  FLW fs0, 624(sp)
  FADD.S fs4, fs1, fs0
  FLW fs0, 640(sp)
  FLW fs1, 384(sp)
  FADD.S fs5, fs0, fs1
  FLW fs0, 456(sp)
  FADD.S fs1, fs5, fs0
  FLW fs0, 712(sp)
  FADD.S fs5, fs1, fs0
  FLW fs0, 496(sp)
  FLW fs1, 304(sp)
  FADD.S fs6, fs0, fs1
  FLW fs0, 344(sp)
  FADD.S fs1, fs6, fs0
  FLW fs0, 336(sp)
  FADD.S fs6, fs1, fs0
  FLW fs0, 568(sp)
  FLW fs1, 504(sp)
  FADD.S fs7, fs0, fs1
  FLW fs0, 328(sp)
  FADD.S fs1, fs7, fs0
  FLW fs0, 552(sp)
  FADD.S fs7, fs1, fs0
  FLW fs0, 392(sp)
  FLW fs1, 536(sp)
  FADD.S fs8, fs0, fs1
  FLW fs0, 320(sp)
  FADD.S fs1, fs8, fs0
  FLW fs0, 400(sp)
  FADD.S fs8, fs1, fs0
  FLW fs0, 680(sp)
  FLW fs1, 376(sp)
  FADD.S fs9, fs0, fs1
  FLW fs0, 648(sp)
  FADD.S fs1, fs9, fs0
  FLW fs0, 424(sp)
  FADD.S fs9, fs1, fs0
  FLW fs0, 592(sp)
  FLW fs1, 560(sp)
  FADD.S fs10, fs0, fs1
  FLW fs0, 480(sp)
  FADD.S fs1, fs10, fs0
  FLW fs0, 272(sp)
  FADD.S fs10, fs1, fs0
  FLW fs0, 312(sp)
  FLW fs1, 664(sp)
  FADD.S fs11, fs0, fs1
  FLW fs0, 616(sp)
  FADD.S fs1, fs11, fs0
  FLW fs0, 520(sp)
  FADD.S fs11, fs1, fs0
  ADDI t6, sp, 232
  ADD s0, t6, zero
  FSW fs2, 0(s0)
  ADDI s0, sp, 236
  FSW fs3, 0(s0)
  ADDI s0, sp, 240
  FSW fs4, 0(s0)
  ADDI s0, sp, 244
  FSW fs5, 0(s0)
  ADDI s0, sp, 248
  FSW fs6, 0(s0)
  ADDI s0, sp, 252
  FSW fs7, 0(s0)
  ADDI s0, sp, 256
  FSW fs8, 0(s0)
  ADDI s0, sp, 260
  FSW fs9, 0(s0)
  ADDI s0, sp, 264
  FSW fs10, 0(s0)
  ADDI s0, sp, 268
  FSW fs11, 0(s0)
  LW s0, 672(sp)
  LW s1, 744(sp)
  ADDW s2, s0, s1
  LW s0, 768(sp)
  ADDW s1, s2, s0
  LW s0, 368(sp)
  LW s2, 736(sp)
  ADDW s3, s0, s2
  LW s0, 728(sp)
  ADDW s2, s3, s0
  LW s0, 760(sp)
  LW s3, 600(sp)
  ADDW s4, s0, s3
  LW s0, 528(sp)
  ADDW s3, s4, s0
  LW s0, 464(sp)
  LW s4, 584(sp)
  ADDW s5, s0, s4
  LW s0, 416(sp)
  ADDW s4, s5, s0
  LW s0, 432(sp)
  LW s5, 576(sp)
  ADDW s6, s0, s5
  LW s0, 280(sp)
  ADDW s5, s6, s0
  LW s0, 296(sp)
  LW s6, 408(sp)
  ADDW s7, s0, s6
  LW s0, 512(sp)
  ADDW s6, s7, s0
  LW s0, 472(sp)
  LW s7, 656(sp)
  ADDW s8, s0, s7
  LW s0, 352(sp)
  ADDW s7, s8, s0
  LW s0, 360(sp)
  LW s8, 696(sp)
  ADDW s9, s0, s8
  LW s0, 776(sp)
  ADDW s8, s9, s0
  ADDI t5, sp, 200
  ADD s0, t5, zero
  SW s1, 0(s0)
  ADDI s0, sp, 204
  SW s2, 0(s0)
  ADDI s0, sp, 208
  SW s3, 0(s0)
  ADDI s0, sp, 212
  SW s4, 0(s0)
  ADDI s0, sp, 216
  SW s5, 0(s0)
  ADDI s0, sp, 220
  SW s6, 0(s0)
  ADDI s0, sp, 224
  SW s7, 0(s0)
  ADDI s0, sp, 228
  SW s8, 0(s0)
  ADDI a0, zero, 10
  ADDI a1, sp, 232
  ADD a1, a1, zero
  CALL putfarray
  ADDI a0, zero, 8
  ADDI a1, sp, 200
  ADD a1, a1, zero
  CALL putarray
  SW zero, 192(sp)
  JAL zero, bb4
bb2:
bb3:
  LW s0, 744(sp)
  LW s1, 768(sp)
  LW s2, 760(sp)
  FLW fs0, 752(sp)
  LW s3, 744(sp)
  LW s4, 736(sp)
  LW s5, 728(sp)
  FLW fs1, 720(sp)
  FLW fs2, 712(sp)
  FLW fs3, 704(sp)
  LW s6, 696(sp)
  FLW fs4, 688(sp)
  FLW fs5, 680(sp)
  LW s7, 672(sp)
  FLW fs6, 664(sp)
  LW s8, 656(sp)
  FLW fs7, 648(sp)
  FLW fs8, 640(sp)
  FLW fs9, 632(sp)
  FLW fs10, 624(sp)
  FLW fs11, 616(sp)
  FLW ft4, 608(sp)
  FSW ft4, 1016(sp)
  LW s9, 600(sp)
  FLW ft4, 592(sp)
  FSW ft4, 1024(sp)
  LW s10, 584(sp)
  LW s11, 576(sp)
  FLW ft4, 568(sp)
  FSW ft4, 1032(sp)
  FLW ft4, 560(sp)
  FSW ft4, 1040(sp)
  FLW ft4, 552(sp)
  FSW ft4, 1048(sp)
  FLW ft4, 544(sp)
  FSW ft4, 1056(sp)
  FLW ft4, 536(sp)
  FSW ft4, 1064(sp)
  LW t4, 528(sp)
  SW t4, 1072(sp)
  FLW ft4, 520(sp)
  FSW ft4, 1080(sp)
  LW t4, 512(sp)
  SW t4, 1088(sp)
  FLW ft4, 504(sp)
  FSW ft4, 1096(sp)
  FLW ft4, 496(sp)
  FSW ft4, 1104(sp)
  FLW ft4, 488(sp)
  FSW ft4, 1112(sp)
  FLW ft4, 480(sp)
  FSW ft4, 1120(sp)
  LW t4, 472(sp)
  SW t4, 1128(sp)
  LW t4, 464(sp)
  SW t4, 1136(sp)
  FLW ft4, 456(sp)
  FSW ft4, 1144(sp)
  FLW ft4, 448(sp)
  FSW ft4, 1152(sp)
  FLW ft4, 440(sp)
  FSW ft4, 1160(sp)
  LW t4, 432(sp)
  SW t4, 1168(sp)
  FLW ft4, 424(sp)
  FSW ft4, 1176(sp)
  LW t4, 416(sp)
  SW t4, 1184(sp)
  LW t4, 408(sp)
  SW t4, 1192(sp)
  FLW ft4, 400(sp)
  FSW ft4, 1200(sp)
  FLW ft4, 392(sp)
  FSW ft4, 1208(sp)
  FLW ft4, 384(sp)
  FSW ft4, 1216(sp)
  FLW ft4, 376(sp)
  FSW ft4, 1224(sp)
  LW t4, 368(sp)
  SW t4, 1232(sp)
  LW t4, 360(sp)
  SW t4, 1240(sp)
  LW t4, 352(sp)
  SW t4, 1248(sp)
  FLW ft4, 344(sp)
  FSW ft4, 1256(sp)
  FLW ft4, 336(sp)
  FSW ft4, 1264(sp)
  FLW ft4, 328(sp)
  FSW ft4, 1272(sp)
  FLW ft4, 320(sp)
  FSW ft4, 1280(sp)
  FLW ft4, 312(sp)
  FSW ft4, 1288(sp)
  FLW ft4, 304(sp)
  FSW ft4, 1296(sp)
  LW t4, 296(sp)
  SW t4, 1304(sp)
  FLW ft4, 288(sp)
  FSW ft4, 1312(sp)
  LW t4, 280(sp)
  SW t4, 1320(sp)
  FLW ft4, 272(sp)
  FSW ft4, 1328(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  FSGNJ.S fa0, fs0, fs0
  ADD a3, s3, zero
  ADD a4, s4, zero
  ADD a5, s5, zero
  FSGNJ.S fa1, fs1, fs1
  FSGNJ.S fa2, fs2, fs2
  FSGNJ.S fa3, fs3, fs3
  ADD a6, s6, zero
  FSGNJ.S fa4, fs4, fs4
  FSGNJ.S fa5, fs5, fs5
  ADD a7, s7, zero
  FSGNJ.S fa6, fs6, fs6
  ADDI t6, sp, 0
  ADD s0, t6, zero
  SW s8, 0(s0)
  FSGNJ.S fa7, fs7, fs7
  ADDI s0, sp, 4
  FSW fs8, 0(s0)
  ADDI s0, sp, 8
  FSW fs9, 0(s0)
  ADDI s0, sp, 12
  FSW fs10, 0(s0)
  ADDI s0, sp, 16
  FSW fs11, 0(s0)
  ADDI s0, sp, 20
  FLW ft4, 1016(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 24
  SW s9, 0(s0)
  ADDI s0, sp, 28
  FLW ft4, 1024(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 32
  SW s10, 0(s0)
  ADDI s0, sp, 36
  SW s11, 0(s0)
  ADDI s0, sp, 40
  FLW ft4, 1032(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 44
  FLW ft4, 1040(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 48
  FLW ft4, 1048(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 52
  FLW ft4, 1056(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 56
  FLW ft4, 1064(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 60
  LW t4, 1072(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 64
  FLW ft4, 1080(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 68
  LW t4, 1088(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 72
  FLW ft4, 1096(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 76
  FLW ft4, 1104(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 80
  FLW ft4, 1112(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 84
  FLW ft4, 1120(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 88
  LW t4, 1128(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 92
  LW t4, 1136(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 96
  FLW ft4, 1144(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 100
  FLW ft4, 1152(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 104
  FLW ft4, 1160(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 108
  LW t4, 1168(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 112
  FLW ft4, 1176(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 116
  LW t4, 1184(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 120
  LW t4, 1192(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 124
  FLW ft4, 1200(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 128
  FLW ft4, 1208(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 132
  FLW ft4, 1216(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 136
  FLW ft4, 1224(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 140
  LW t4, 1232(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 144
  LW t4, 1240(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 148
  LW t4, 1248(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 152
  FLW ft4, 1256(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 156
  FLW ft4, 1264(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 160
  FLW ft4, 1272(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 164
  FLW ft4, 1280(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 168
  FLW ft4, 1288(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 172
  FLW ft4, 1296(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 176
  LW t4, 1304(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 180
  FLW ft4, 1312(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 184
  LW t4, 1320(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 188
  FLW ft4, 1328(sp)
  FSW ft4, 0(s0)
  FLW ft4, 1016(sp)
  FLW ft3, 1024(sp)
  FLW ft4, 1032(sp)
  FLW ft3, 1040(sp)
  FLW ft4, 1048(sp)
  FLW ft3, 1056(sp)
  FLW ft4, 1064(sp)
  LW t4, 1072(sp)
  FLW ft3, 1080(sp)
  LW t3, 1088(sp)
  FLW ft4, 1096(sp)
  FLW ft3, 1104(sp)
  FLW ft4, 1112(sp)
  FLW ft3, 1120(sp)
  LW t4, 1128(sp)
  LW t3, 1136(sp)
  FLW ft4, 1144(sp)
  FLW ft3, 1152(sp)
  FLW ft4, 1160(sp)
  LW t4, 1168(sp)
  FLW ft3, 1176(sp)
  LW t3, 1184(sp)
  LW t4, 1192(sp)
  FLW ft4, 1200(sp)
  FLW ft3, 1208(sp)
  FLW ft4, 1216(sp)
  FLW ft3, 1224(sp)
  LW t3, 1232(sp)
  LW t4, 1240(sp)
  LW t3, 1248(sp)
  FLW ft4, 1256(sp)
  FLW ft3, 1264(sp)
  FLW ft4, 1272(sp)
  FLW ft3, 1280(sp)
  FLW ft4, 1288(sp)
  FLW ft3, 1296(sp)
  LW t4, 1304(sp)
  FLW ft4, 1312(sp)
  LW t3, 1320(sp)
  FLW ft3, 1328(sp)
  CALL params_f40_i24
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  LD s0, 1336(sp)
  LD s11, 1344(sp)
  LD s10, 1352(sp)
  FLD fs11, 1360(sp)
  LD ra, 1368(sp)
  FLD fs10, 1376(sp)
  FLD fs8, 1384(sp)
  FLD fs7, 1392(sp)
  LD s9, 1400(sp)
  LD s8, 1408(sp)
  FLD fs6, 1416(sp)
  FLD fs1, 1424(sp)
  LD s4, 1432(sp)
  LD s3, 1440(sp)
  LD s2, 1448(sp)
  LD s1, 1456(sp)
  FLD fs0, 1464(sp)
  FLD fs9, 1472(sp)
  LD s5, 1480(sp)
  FLD fs2, 1488(sp)
  LD s7, 1496(sp)
  FLD fs3, 1504(sp)
  LD s6, 1512(sp)
  FLD fs4, 1520(sp)
  FLD fs5, 1528(sp)
  ADDI sp, sp, 1536
  JALR zero, 0(ra)
bb4:
  LW s0, 192(sp)
  SLTI s1, s0, 8
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb5
  JAL zero, bb6
bb5:
  LW s0, 192(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 200
  ADD s0, t5, s2
  LW s1, 192(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t6, sp, 200
  ADD s1, t6, s3
  LW s2, 0(s1)
  LW s1, 192(sp)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADDI t5, sp, 232
  ADD s1, t5, s4
  FLW fs0, 0(s1)
  FCVT.S.W fs1, s2
  FSUB.S fs2, fs1, fs0
  FCVT.W.S s1, fs2, rtz
  SW s1, 0(s0)
  LW s0, 192(sp)
  ADDIW s1, s0, 1
  SW s1, 192(sp)
  JAL zero, bb4
bb6:
  LA s0, k
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  ADDI t6, sp, 200
  ADD s0, t6, s2
  LW s1, 0(s0)
  FCVT.S.W fs0, s1
  FSGNJ.S fa0, fs0, fs0
  LD s0, 1336(sp)
  LD s11, 1344(sp)
  LD s10, 1352(sp)
  FLD fs11, 1360(sp)
  LD ra, 1368(sp)
  FLD fs10, 1376(sp)
  FLD fs8, 1384(sp)
  FLD fs7, 1392(sp)
  LD s9, 1400(sp)
  LD s8, 1408(sp)
  FLD fs6, 1416(sp)
  FLD fs1, 1424(sp)
  LD s4, 1432(sp)
  LD s3, 1440(sp)
  LD s2, 1448(sp)
  LD s1, 1456(sp)
  FLD fs0, 1464(sp)
  FLD fs9, 1472(sp)
  LD s5, 1480(sp)
  FLD fs2, 1488(sp)
  LD s7, 1496(sp)
  FLD fs3, 1504(sp)
  LD s6, 1512(sp)
  FLD fs4, 1520(sp)
  FLD fs5, 1528(sp)
  ADDI sp, sp, 1536
  JALR zero, 0(ra)
main:
  LUI t0, 1048575
  ADDI t0, t0, 1600
  ADD sp, sp, t0
  LUI t5, 1
  ADDI t5, t5, -1808
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1800
  ADD t6, t6, sp
  SD s10, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1792
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1784
  ADD t6, t6, sp
  SD s8, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1776
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1768
  ADD t6, t6, sp
  SD s6, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1760
  ADD t5, t5, sp
  FSD fs4, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1752
  ADD t6, t6, sp
  FSD fs3, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1744
  ADD t5, t5, sp
  FSD fs6, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1736
  ADD t6, t6, sp
  FSD fs1, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1728
  ADD t5, t5, sp
  FSD fs5, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1720
  ADD t6, t6, sp
  FSD fs0, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1712
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1704
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1696
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1688
  ADD t6, t6, sp
  FSD fs2, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1680
  ADD t5, t5, sp
  FSD fs8, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1672
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1664
  ADD t5, t5, sp
  FSD fs7, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1656
  ADD t6, t6, sp
  FSD fs9, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1648
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1640
  ADD t6, t6, sp
  FSD fs10, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1632
  ADD t5, t5, sp
  FSD fs11, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1624
  ADD t6, t6, sp
  SD s4, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1616
  ADD t5, t5, sp
  SD s5, 0(t5)
  CALL getint
  ADD s0, a0, zero
  LA s1, k
  SW s0, 0(s1)
  SW zero, 352(sp)
  JAL zero, bb8
bb8:
  LW s0, 352(sp)
  SLTI s1, s0, 40
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb9
  JAL zero, bb10
bb9:
  LW s0, 352(sp)
  ADDI s1, zero, 12
  MULW s2, s0, s1
  ADDI t6, sp, 648
  ADD s0, t6, s2
  ADD a0, s0, zero
  CALL getfarray
  ADD s0, a0, zero
  LW s0, 352(sp)
  ADDIW s1, s0, 1
  SW s1, 352(sp)
  JAL zero, bb8
bb10:
  SW zero, 352(sp)
  JAL zero, bb11
bb11:
  LW s0, 352(sp)
  SLTI s1, s0, 24
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb12
  JAL zero, bb13
bb12:
  LW s0, 352(sp)
  ADDI s1, zero, 12
  MULW s2, s0, s1
  ADDI t5, sp, 360
  ADD s0, t5, s2
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  LW s0, 352(sp)
  ADDIW s1, s0, 1
  SW s1, 352(sp)
  JAL zero, bb11
bb13:
  ADDI s0, zero, 12
  MUL s1, zero, s0
  ADDI t6, sp, 648
  ADD s0, t6, s1
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW fs0, 0(s1)
  ADDI s0, zero, 12
  ADDI s1, zero, 1
  MULW s2, s0, s1
  ADDI t5, sp, 648
  ADD s0, t5, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW fs1, 0(s1)
  ADDI s0, zero, 12
  ADDI s1, zero, 2
  MULW s2, s0, s1
  ADDI t6, sp, 648
  ADD s0, t6, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW fs2, 0(s1)
  ADDI s0, zero, 12
  ADDI s1, zero, 3
  MULW s2, s0, s1
  ADDI t5, sp, 648
  ADD s0, t5, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW fs3, 0(s1)
  ADDI s0, zero, 12
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t6, sp, 648
  ADD s0, t6, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW fs4, 0(s1)
  ADDI s0, zero, 12
  ADDI s1, zero, 5
  MULW s2, s0, s1
  ADDI t5, sp, 648
  ADD s0, t5, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW fs5, 0(s1)
  ADDI s0, zero, 12
  ADDI s1, zero, 6
  MULW s2, s0, s1
  ADDI t6, sp, 648
  ADD s0, t6, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW fs6, 0(s1)
  ADDI s0, zero, 12
  ADDI s1, zero, 7
  MULW s2, s0, s1
  ADDI t5, sp, 648
  ADD s0, t5, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW fs7, 0(s1)
  ADDI s0, zero, 12
  ADDI s1, zero, 8
  MULW s2, s0, s1
  ADDI t6, sp, 648
  ADD s0, t6, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW fs8, 0(s1)
  ADDI s0, zero, 12
  ADDI s1, zero, 9
  MULW s2, s0, s1
  ADDI t5, sp, 648
  ADD s0, t5, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW fs9, 0(s1)
  ADDI s0, zero, 12
  ADDI s1, zero, 10
  MULW s2, s0, s1
  ADDI t6, sp, 648
  ADD s0, t6, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW fs10, 0(s1)
  ADDI s0, zero, 12
  ADDI s1, zero, 11
  MULW s2, s0, s1
  ADDI t5, sp, 648
  ADD s0, t5, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW fs11, 0(s1)
  ADDI s0, zero, 12
  ADDI s1, zero, 12
  MULW s2, s0, s1
  ADDI t6, sp, 648
  ADD s0, t6, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW ft4, 0(s1)
  FSW ft4, 1128(sp)
  ADDI s0, zero, 12
  ADDI s1, zero, 13
  MULW s2, s0, s1
  ADDI t5, sp, 648
  ADD s0, t5, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW ft4, 0(s1)
  FSW ft4, 1136(sp)
  ADDI s0, zero, 12
  ADDI s1, zero, 14
  MULW s2, s0, s1
  ADDI t6, sp, 648
  ADD s0, t6, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW ft4, 0(s1)
  FSW ft4, 1144(sp)
  ADDI s0, zero, 12
  ADDI s1, zero, 15
  MULW s2, s0, s1
  ADDI t5, sp, 648
  ADD s0, t5, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW ft4, 0(s1)
  FSW ft4, 1152(sp)
  ADDI s0, zero, 12
  ADDI s1, zero, 16
  MULW s2, s0, s1
  ADDI t6, sp, 648
  ADD s0, t6, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW ft4, 0(s1)
  FSW ft4, 1160(sp)
  ADDI s0, zero, 12
  ADDI s1, zero, 17
  MULW s2, s0, s1
  ADDI t5, sp, 648
  ADD s0, t5, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW ft4, 0(s1)
  FSW ft4, 1168(sp)
  ADDI s0, zero, 12
  ADDI s1, zero, 18
  MULW s2, s0, s1
  ADDI t6, sp, 648
  ADD s0, t6, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW ft4, 0(s1)
  FSW ft4, 1176(sp)
  ADDI s0, zero, 12
  ADDI s1, zero, 19
  MULW s2, s0, s1
  ADDI t5, sp, 648
  ADD s0, t5, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW ft4, 0(s1)
  FSW ft4, 1184(sp)
  ADDI s0, zero, 12
  ADDI s1, zero, 20
  MULW s2, s0, s1
  ADDI t6, sp, 648
  ADD s0, t6, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW ft4, 0(s1)
  FSW ft4, 1192(sp)
  ADDI s0, zero, 12
  ADDI s1, zero, 21
  MULW s2, s0, s1
  ADDI t5, sp, 648
  ADD s0, t5, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW ft4, 0(s1)
  FSW ft4, 1200(sp)
  ADDI s0, zero, 12
  ADDI s1, zero, 22
  MULW s2, s0, s1
  ADDI t6, sp, 648
  ADD s0, t6, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW ft4, 0(s1)
  FSW ft4, 1208(sp)
  ADDI s0, zero, 12
  ADDI s1, zero, 23
  MULW s2, s0, s1
  ADDI t5, sp, 648
  ADD s0, t5, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW ft4, 0(s1)
  FSW ft4, 1216(sp)
  ADDI s0, zero, 12
  ADDI s1, zero, 24
  MULW s2, s0, s1
  ADDI t6, sp, 648
  ADD s0, t6, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW ft4, 0(s1)
  FSW ft4, 1224(sp)
  ADDI s0, zero, 12
  ADDI s1, zero, 25
  MULW s2, s0, s1
  ADDI t5, sp, 648
  ADD s0, t5, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW ft4, 0(s1)
  FSW ft4, 1232(sp)
  ADDI s0, zero, 12
  ADDI s1, zero, 26
  MULW s2, s0, s1
  ADDI t6, sp, 648
  ADD s0, t6, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW ft4, 0(s1)
  FSW ft4, 1240(sp)
  ADDI s0, zero, 12
  ADDI s1, zero, 27
  MULW s2, s0, s1
  ADDI t5, sp, 648
  ADD s0, t5, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW ft4, 0(s1)
  FSW ft4, 1248(sp)
  ADDI s0, zero, 12
  ADDI s1, zero, 28
  MULW s2, s0, s1
  ADDI t6, sp, 648
  ADD s0, t6, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW ft4, 0(s1)
  FSW ft4, 1256(sp)
  ADDI s0, zero, 12
  ADDI s1, zero, 29
  MULW s2, s0, s1
  ADDI t5, sp, 648
  ADD s0, t5, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW ft4, 0(s1)
  FSW ft4, 1264(sp)
  ADDI s0, zero, 12
  ADDI s1, zero, 30
  MULW s2, s0, s1
  ADDI t6, sp, 648
  ADD s0, t6, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW ft4, 0(s1)
  FSW ft4, 1272(sp)
  ADDI s0, zero, 12
  ADDI s1, zero, 31
  MULW s2, s0, s1
  ADDI t5, sp, 648
  ADD s0, t5, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW ft4, 0(s1)
  FSW ft4, 1280(sp)
  ADDI s0, zero, 12
  ADDI s1, zero, 32
  MULW s2, s0, s1
  ADDI t6, sp, 648
  ADD s0, t6, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW ft4, 0(s1)
  FSW ft4, 1288(sp)
  ADDI s0, zero, 12
  ADDI s1, zero, 33
  MULW s2, s0, s1
  ADDI t5, sp, 648
  ADD s0, t5, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW ft4, 0(s1)
  FSW ft4, 1296(sp)
  ADDI s0, zero, 12
  ADDI s1, zero, 34
  MULW s2, s0, s1
  ADDI t6, sp, 648
  ADD s0, t6, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW ft4, 0(s1)
  FSW ft4, 1304(sp)
  ADDI s0, zero, 12
  ADDI s1, zero, 35
  MULW s2, s0, s1
  ADDI t5, sp, 648
  ADD s0, t5, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW ft4, 0(s1)
  FSW ft4, 1312(sp)
  ADDI s0, zero, 12
  ADDI s1, zero, 36
  MULW s2, s0, s1
  ADDI t6, sp, 648
  ADD s0, t6, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW ft4, 0(s1)
  FSW ft4, 1320(sp)
  ADDI s0, zero, 12
  ADDI s1, zero, 37
  MULW s2, s0, s1
  ADDI t5, sp, 648
  ADD s0, t5, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW ft4, 0(s1)
  FSW ft4, 1328(sp)
  ADDI s0, zero, 12
  ADDI s1, zero, 38
  MULW s2, s0, s1
  ADDI t6, sp, 648
  ADD s0, t6, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW ft4, 0(s1)
  FSW ft4, 1336(sp)
  ADDI s0, zero, 12
  ADDI s1, zero, 39
  MULW s2, s0, s1
  ADDI t5, sp, 648
  ADD s0, t5, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW ft4, 0(s1)
  FSW ft4, 1344(sp)
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  FSGNJ.S fa2, fs2, fs2
  FSGNJ.S fa3, fs3, fs3
  FSGNJ.S fa4, fs4, fs4
  FSGNJ.S fa5, fs5, fs5
  FSGNJ.S fa6, fs6, fs6
  FSGNJ.S fa7, fs7, fs7
  ADDI t6, sp, 0
  ADD s0, t6, zero
  FSW fs8, 0(s0)
  ADDI s0, sp, 4
  FSW fs9, 0(s0)
  ADDI s0, sp, 8
  FSW fs10, 0(s0)
  ADDI s0, sp, 12
  FSW fs11, 0(s0)
  ADDI s0, sp, 16
  FLW ft4, 1128(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 20
  FLW ft4, 1136(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 24
  FLW ft4, 1144(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 28
  FLW ft4, 1152(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 32
  FLW ft4, 1160(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 36
  FLW ft4, 1168(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 40
  FLW ft4, 1176(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 44
  FLW ft4, 1184(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 48
  FLW ft4, 1192(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 52
  FLW ft4, 1200(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 56
  FLW ft4, 1208(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 60
  FLW ft4, 1216(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 64
  FLW ft4, 1224(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 68
  FLW ft4, 1232(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 72
  FLW ft4, 1240(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 76
  FLW ft4, 1248(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 80
  FLW ft4, 1256(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 84
  FLW ft4, 1264(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 88
  FLW ft4, 1272(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 92
  FLW ft4, 1280(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 96
  FLW ft4, 1288(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 100
  FLW ft4, 1296(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 104
  FLW ft4, 1304(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 108
  FLW ft4, 1312(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 112
  FLW ft4, 1320(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 116
  FLW ft4, 1328(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 120
  FLW ft4, 1336(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 124
  FLW ft4, 1344(sp)
  FSW ft4, 0(s0)
  FLW ft4, 1128(sp)
  FLW ft3, 1136(sp)
  FLW ft4, 1144(sp)
  FLW ft3, 1152(sp)
  FLW ft4, 1160(sp)
  FLW ft3, 1168(sp)
  FLW ft4, 1176(sp)
  FLW ft3, 1184(sp)
  FLW ft4, 1192(sp)
  FLW ft3, 1200(sp)
  FLW ft4, 1208(sp)
  FLW ft3, 1216(sp)
  FLW ft4, 1224(sp)
  FLW ft3, 1232(sp)
  FLW ft4, 1240(sp)
  FLW ft3, 1248(sp)
  FLW ft4, 1256(sp)
  FLW ft3, 1264(sp)
  FLW ft4, 1272(sp)
  FLW ft3, 1280(sp)
  FLW ft4, 1288(sp)
  FLW ft3, 1296(sp)
  FLW ft4, 1304(sp)
  FLW ft3, 1312(sp)
  FLW ft4, 1320(sp)
  FLW ft3, 1328(sp)
  FLW ft4, 1336(sp)
  FLW ft3, 1344(sp)
  CALL params_f40
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 344(sp)
  ADDI s0, zero, 12
  ADDI s1, zero, 23
  MULW s2, s0, s1
  ADDI t5, sp, 360
  ADD s0, t5, s2
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  LW s0, 0(s1)
  ADDI s1, zero, 12
  ADDI s2, zero, 2
  MULW s3, s1, s2
  ADDI t6, sp, 360
  ADD s1, t6, s3
  LA s2, k
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  ADD s2, s1, s4
  LW s1, 0(s2)
  ADDI s2, zero, 12
  ADDI s3, zero, 6
  MULW s4, s2, s3
  ADDI t5, sp, 360
  ADD s2, t5, s4
  LA s3, k
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s2, s5
  LW s2, 0(s3)
  ADDI s3, zero, 12
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADDI t6, sp, 648
  ADD s3, t6, s5
  LA s4, k
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MULW s6, s5, s4
  ADD s4, s3, s6
  FLW fs0, 0(s4)
  ADDI s3, zero, 12
  ADDI s4, zero, 1
  MULW s5, s3, s4
  ADDI t5, sp, 360
  ADD s3, t5, s5
  LA s4, k
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MULW s6, s5, s4
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 12
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADDI t6, sp, 360
  ADD s4, t6, s6
  LA s5, k
  LW s6, 0(s5)
  ADDI s5, zero, 4
  MULW s7, s6, s5
  ADD s5, s4, s7
  LW s4, 0(s5)
  ADDI s5, zero, 12
  ADDI s6, zero, 5
  MULW s7, s5, s6
  ADDI t5, sp, 360
  ADD s5, t5, s7
  LA s6, k
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s8, s7, s6
  ADD s6, s5, s8
  LW s5, 0(s6)
  ADDI s6, zero, 12
  ADDI s7, zero, 8
  MULW s8, s6, s7
  ADDI t6, sp, 648
  ADD s6, t6, s8
  LA s7, k
  LW s8, 0(s7)
  ADDI s7, zero, 4
  MULW s9, s8, s7
  ADD s7, s6, s9
  FLW fs1, 0(s7)
  ADDI s6, zero, 12
  ADDI s7, zero, 15
  MULW s8, s6, s7
  ADDI t5, sp, 648
  ADD s6, t5, s8
  LA s7, k
  LW s8, 0(s7)
  ADDI s7, zero, 4
  MULW s9, s8, s7
  ADD s7, s6, s9
  FLW fs2, 0(s7)
  ADDI s6, zero, 12
  ADDI s7, zero, 7
  MULW s8, s6, s7
  ADDI t6, sp, 648
  ADD s6, t6, s8
  LA s7, k
  LW s8, 0(s7)
  ADDI s7, zero, 4
  MULW s9, s8, s7
  ADD s7, s6, s9
  FLW fs3, 0(s7)
  ADDI s6, zero, 12
  ADDI s7, zero, 22
  MULW s8, s6, s7
  ADDI t5, sp, 360
  ADD s6, t5, s8
  LA s7, k
  LW s8, 0(s7)
  ADDI s7, zero, 4
  MULW s9, s8, s7
  ADD s7, s6, s9
  LW s6, 0(s7)
  ADDI s7, zero, 12
  ADDI s8, zero, 3
  MULW s9, s7, s8
  ADDI t6, sp, 648
  ADD s7, t6, s9
  LA s8, k
  LW s9, 0(s8)
  ADDI s8, zero, 4
  MULW s10, s9, s8
  ADD s8, s7, s10
  FLW fs4, 0(s8)
  ADDI s7, zero, 12
  ADDI s8, zero, 28
  MULW s9, s7, s8
  ADDI t5, sp, 648
  ADD s7, t5, s9
  LA s8, k
  LW s9, 0(s8)
  ADDI s8, zero, 4
  MULW s10, s9, s8
  ADD s8, s7, s10
  FLW fs5, 0(s8)
  ADDI s7, zero, 12
  MUL s8, zero, s7
  ADDI t6, sp, 360
  ADD s7, t6, s8
  LA s8, k
  LW s9, 0(s8)
  ADDI s8, zero, 4
  MULW s10, s9, s8
  ADD s8, s7, s10
  LW s7, 0(s8)
  ADDI s8, zero, 12
  ADDI s9, zero, 37
  MULW s10, s8, s9
  ADDI t5, sp, 648
  ADD s8, t5, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW fs6, 0(s9)
  ADDI s8, zero, 12
  ADDI s9, zero, 19
  MULW s10, s8, s9
  ADDI t6, sp, 360
  ADD s8, t6, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  LW t4, 0(s9)
  SW t4, 1352(sp)
  ADDI s9, zero, 12
  ADDI s10, zero, 30
  MULW s11, s9, s10
  ADDI t5, sp, 648
  ADD s9, t5, s11
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  FLW fs7, 0(s10)
  ADDI s8, zero, 12
  ADDI s9, zero, 12
  MULW s10, s8, s9
  ADDI t6, sp, 648
  ADD s8, t6, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW fs8, 0(s9)
  ADDI s8, zero, 12
  ADDI s9, zero, 1
  MULW s10, s8, s9
  ADDI t5, sp, 648
  ADD s8, t5, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW fs9, 0(s9)
  ADDI s8, zero, 12
  ADDI s9, zero, 11
  MULW s10, s8, s9
  ADDI t6, sp, 648
  ADD s8, t6, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW fs10, 0(s9)
  ADDI s8, zero, 12
  ADDI s9, zero, 38
  MULW s10, s8, s9
  ADDI t5, sp, 648
  ADD s8, t5, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW fs11, 0(s9)
  ADDI s8, zero, 12
  ADDI s9, zero, 6
  MULW s10, s8, s9
  ADDI t6, sp, 648
  ADD s8, t6, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW ft4, 0(s9)
  FSW ft4, 1360(sp)
  ADDI s8, zero, 12
  ADDI s9, zero, 7
  MULW s10, s8, s9
  ADDI t5, sp, 360
  ADD s8, t5, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  LW t4, 0(s9)
  SW t4, 1368(sp)
  ADDI s9, zero, 12
  ADDI s10, zero, 32
  MULW s11, s9, s10
  ADDI t6, sp, 648
  ADD s9, t6, s11
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  FLW ft4, 0(s10)
  FSW ft4, 1376(sp)
  ADDI s8, zero, 12
  ADDI s9, zero, 10
  MULW s10, s8, s9
  ADDI t5, sp, 360
  ADD s8, t5, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  LW t4, 0(s9)
  SW t4, 1384(sp)
  ADDI s9, zero, 12
  ADDI s10, zero, 13
  MULW s11, s9, s10
  ADDI t6, sp, 360
  ADD s9, t6, s11
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  LW t4, 0(s10)
  SW t4, 1392(sp)
  ADDI s9, zero, 12
  ADDI s10, zero, 20
  MULW s11, s9, s10
  ADDI t5, sp, 648
  ADD s9, t5, s11
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  FLW ft4, 0(s10)
  FSW ft4, 1400(sp)
  ADDI s8, zero, 12
  ADDI s9, zero, 33
  MULW s10, s8, s9
  ADDI t6, sp, 648
  ADD s8, t6, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW ft4, 0(s9)
  FSW ft4, 1408(sp)
  ADDI s8, zero, 12
  ADDI s9, zero, 23
  MULW s10, s8, s9
  ADDI t5, sp, 648
  ADD s8, t5, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW ft4, 0(s9)
  FSW ft4, 1416(sp)
  ADDI s8, zero, 12
  ADDI s9, zero, 9
  MULW s10, s8, s9
  ADDI t6, sp, 648
  ADD s8, t6, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW ft4, 0(s9)
  FSW ft4, 1424(sp)
  ADDI s8, zero, 12
  ADDI s9, zero, 25
  MULW s10, s8, s9
  ADDI t5, sp, 648
  ADD s8, t5, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW ft4, 0(s9)
  FSW ft4, 1432(sp)
  ADDI s8, zero, 12
  ADDI s9, zero, 8
  MULW s10, s8, s9
  ADDI t6, sp, 360
  ADD s8, t6, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  LW t4, 0(s9)
  SW t4, 1440(sp)
  ADDI s9, zero, 12
  ADDI s10, zero, 39
  MULW s11, s9, s10
  ADDI t5, sp, 648
  ADD s9, t5, s11
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  FLW ft4, 0(s10)
  FSW ft4, 1448(sp)
  ADDI s8, zero, 12
  ADDI s9, zero, 17
  MULW s10, s8, s9
  ADDI t6, sp, 360
  ADD s8, t6, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  LW t4, 0(s9)
  SW t4, 1456(sp)
  ADDI s9, zero, 12
  ADDI s10, zero, 21
  MULW s11, s9, s10
  ADDI t5, sp, 648
  ADD s9, t5, s11
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  FLW ft4, 0(s10)
  FSW ft4, 1464(sp)
  ADDI s8, zero, 12
  ADDI s9, zero, 16
  MULW s10, s8, s9
  ADDI t6, sp, 648
  ADD s8, t6, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW ft4, 0(s9)
  FSW ft4, 1472(sp)
  ADDI s8, zero, 12
  ADDI s9, zero, 5
  MULW s10, s8, s9
  ADDI t5, sp, 648
  ADD s8, t5, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW ft4, 0(s9)
  FSW ft4, 1480(sp)
  ADDI s8, zero, 12
  ADDI s9, zero, 34
  MULW s10, s8, s9
  ADDI t6, sp, 648
  ADD s8, t6, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW ft4, 0(s9)
  FSW ft4, 1488(sp)
  ADDI s8, zero, 12
  ADDI s9, zero, 18
  MULW s10, s8, s9
  ADDI t5, sp, 360
  ADD s8, t5, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  LW t4, 0(s9)
  SW t4, 1496(sp)
  ADDI s9, zero, 12
  ADDI s10, zero, 9
  MULW s11, s9, s10
  ADDI t6, sp, 360
  ADD s9, t6, s11
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  LW t4, 0(s10)
  SW t4, 1504(sp)
  ADDI s9, zero, 12
  ADDI s10, zero, 14
  MULW s11, s9, s10
  ADDI t5, sp, 648
  ADD s9, t5, s11
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  FLW ft4, 0(s10)
  FSW ft4, 1512(sp)
  ADDI s8, zero, 12
  ADDI s9, zero, 10
  MULW s10, s8, s9
  ADDI t6, sp, 648
  ADD s8, t6, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW ft4, 0(s9)
  FSW ft4, 1520(sp)
  ADDI s8, zero, 12
  MUL s9, zero, s8
  ADDI t5, sp, 648
  ADD s8, t5, s9
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW ft4, 0(s9)
  FSW ft4, 1528(sp)
  ADDI s8, zero, 12
  ADDI s9, zero, 12
  MULW s10, s8, s9
  ADDI t6, sp, 360
  ADD s8, t6, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  LW t4, 0(s9)
  SW t4, 1536(sp)
  ADDI s9, zero, 12
  ADDI s10, zero, 31
  MULW s11, s9, s10
  ADDI t5, sp, 648
  ADD s9, t5, s11
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  FLW ft4, 0(s10)
  FSW ft4, 1544(sp)
  ADDI s8, zero, 12
  ADDI s9, zero, 11
  MULW s10, s8, s9
  ADDI t6, sp, 360
  ADD s8, t6, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  LW t4, 0(s9)
  SW t4, 1552(sp)
  ADDI s9, zero, 12
  ADDI s10, zero, 16
  MULW s11, s9, s10
  ADDI t5, sp, 360
  ADD s9, t5, s11
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  LW t4, 0(s10)
  SW t4, 1560(sp)
  ADDI s9, zero, 12
  ADDI s10, zero, 27
  MULW s11, s9, s10
  ADDI t6, sp, 648
  ADD s9, t6, s11
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  FLW ft4, 0(s10)
  FSW ft4, 1568(sp)
  ADDI s8, zero, 12
  ADDI s9, zero, 24
  MULW s10, s8, s9
  ADDI t5, sp, 648
  ADD s8, t5, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW ft4, 0(s9)
  FSW ft4, 1576(sp)
  ADDI s8, zero, 12
  ADDI s9, zero, 13
  MULW s10, s8, s9
  ADDI t6, sp, 648
  ADD s8, t6, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW ft4, 0(s9)
  FSW ft4, 1584(sp)
  ADDI s8, zero, 12
  ADDI s9, zero, 29
  MULW s10, s8, s9
  ADDI t5, sp, 648
  ADD s8, t5, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW ft4, 0(s9)
  FSW ft4, 1592(sp)
  ADDI s8, zero, 12
  ADDI s9, zero, 3
  MULW s10, s8, s9
  ADDI t6, sp, 360
  ADD s8, t6, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  LW t4, 0(s9)
  SW t4, 1600(sp)
  ADDI s9, zero, 12
  ADDI s10, zero, 21
  MULW s11, s9, s10
  ADDI t5, sp, 360
  ADD s9, t5, s11
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  LW t4, 0(s10)
  SW t4, 1608(sp)
  ADDI s9, zero, 12
  ADDI s10, zero, 20
  MULW s11, s9, s10
  ADDI t6, sp, 360
  ADD s9, t6, s11
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  LW t4, 0(s10)
  SW t4, 1616(sp)
  ADDI s9, zero, 12
  ADDI s10, zero, 18
  MULW s11, s9, s10
  ADDI t5, sp, 648
  ADD s9, t5, s11
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  FLW ft4, 0(s10)
  FSW ft4, 1624(sp)
  ADDI s8, zero, 12
  ADDI s9, zero, 19
  MULW s10, s8, s9
  ADDI t6, sp, 648
  ADD s8, t6, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW ft4, 0(s9)
  FSW ft4, 1632(sp)
  ADDI s8, zero, 12
  ADDI s9, zero, 22
  MULW s10, s8, s9
  ADDI t5, sp, 648
  ADD s8, t5, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW ft4, 0(s9)
  FSW ft4, 1640(sp)
  ADDI s8, zero, 12
  ADDI s9, zero, 26
  MULW s10, s8, s9
  ADDI t6, sp, 648
  ADD s8, t6, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW ft4, 0(s9)
  FSW ft4, 1648(sp)
  ADDI s8, zero, 12
  ADDI s9, zero, 36
  MULW s10, s8, s9
  ADDI t5, sp, 648
  ADD s8, t5, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW ft4, 0(s9)
  FSW ft4, 1656(sp)
  ADDI s8, zero, 12
  ADDI s9, zero, 17
  MULW s10, s8, s9
  ADDI t6, sp, 648
  ADD s8, t6, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW ft4, 0(s9)
  FSW ft4, 1664(sp)
  ADDI s8, zero, 12
  ADDI s9, zero, 15
  MULW s10, s8, s9
  ADDI t5, sp, 360
  ADD s8, t5, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  LW t4, 0(s9)
  SW t4, 1672(sp)
  ADDI s9, zero, 12
  ADDI s10, zero, 2
  MULW s11, s9, s10
  ADDI t6, sp, 648
  ADD s9, t6, s11
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  FLW ft4, 0(s10)
  FSW ft4, 1680(sp)
  ADDI s8, zero, 12
  ADDI s9, zero, 14
  MULW s10, s8, s9
  ADDI t5, sp, 360
  ADD s8, t5, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  LW t4, 0(s9)
  SW t4, 1688(sp)
  ADDI s9, zero, 12
  ADDI s10, zero, 35
  MULW s11, s9, s10
  ADDI t6, sp, 648
  ADD s9, t6, s11
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  FLW ft4, 0(s10)
  FSW ft4, 1696(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  FSGNJ.S fa0, fs0, fs0
  ADD a3, s3, zero
  ADD a4, s4, zero
  ADD a5, s5, zero
  FSGNJ.S fa1, fs1, fs1
  FSGNJ.S fa2, fs2, fs2
  FSGNJ.S fa3, fs3, fs3
  ADD a6, s6, zero
  FSGNJ.S fa4, fs4, fs4
  FSGNJ.S fa5, fs5, fs5
  ADD a7, s7, zero
  FSGNJ.S fa6, fs6, fs6
  ADDI t5, sp, 0
  ADD s0, t5, zero
  LW t4, 1352(sp)
  SW t4, 0(s0)
  FSGNJ.S fa7, fs7, fs7
  ADDI s0, sp, 4
  FSW fs8, 0(s0)
  ADDI s0, sp, 8
  FSW fs9, 0(s0)
  ADDI s0, sp, 12
  FSW fs10, 0(s0)
  ADDI s0, sp, 16
  FSW fs11, 0(s0)
  ADDI s0, sp, 20
  FLW ft4, 1360(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 24
  LW t4, 1368(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 28
  FLW ft4, 1376(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 32
  LW t4, 1384(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 36
  LW t4, 1392(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 40
  FLW ft4, 1400(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 44
  FLW ft4, 1408(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 48
  FLW ft4, 1416(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 52
  FLW ft4, 1424(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 56
  FLW ft4, 1432(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 60
  LW t4, 1440(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 64
  FLW ft4, 1448(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 68
  LW t4, 1456(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 72
  FLW ft4, 1464(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 76
  FLW ft4, 1472(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 80
  FLW ft4, 1480(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 84
  FLW ft4, 1488(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 88
  LW t4, 1496(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 92
  LW t4, 1504(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 96
  FLW ft4, 1512(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 100
  FLW ft4, 1520(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 104
  FLW ft4, 1528(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 108
  LW t4, 1536(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 112
  FLW ft4, 1544(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 116
  LW t4, 1552(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 120
  LW t4, 1560(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 124
  FLW ft4, 1568(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 128
  FLW ft4, 1576(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 132
  FLW ft4, 1584(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 136
  FLW ft4, 1592(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 140
  LW t4, 1600(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 144
  LW t4, 1608(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 148
  LW t4, 1616(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 152
  FLW ft4, 1624(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 156
  FLW ft4, 1632(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 160
  FLW ft4, 1640(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 164
  FLW ft4, 1648(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 168
  FLW ft4, 1656(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 172
  FLW ft4, 1664(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 176
  LW t4, 1672(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 180
  FLW ft4, 1680(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 184
  LW t4, 1688(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 188
  FLW ft4, 1696(sp)
  FSW ft4, 0(s0)
  LW t4, 1352(sp)
  FLW ft4, 1360(sp)
  LW t3, 1368(sp)
  FLW ft3, 1376(sp)
  LW t4, 1384(sp)
  LW t3, 1392(sp)
  FLW ft4, 1400(sp)
  FLW ft3, 1408(sp)
  FLW ft4, 1416(sp)
  FLW ft3, 1424(sp)
  FLW ft4, 1432(sp)
  LW t4, 1440(sp)
  FLW ft3, 1448(sp)
  LW t3, 1456(sp)
  FLW ft4, 1464(sp)
  FLW ft3, 1472(sp)
  FLW ft4, 1480(sp)
  FLW ft3, 1488(sp)
  LW t4, 1496(sp)
  LW t3, 1504(sp)
  FLW ft4, 1512(sp)
  FLW ft3, 1520(sp)
  FLW ft4, 1528(sp)
  LW t4, 1536(sp)
  FLW ft3, 1544(sp)
  LW t3, 1552(sp)
  LW t4, 1560(sp)
  FLW ft4, 1568(sp)
  FLW ft3, 1576(sp)
  FLW ft4, 1584(sp)
  FLW ft3, 1592(sp)
  LW t3, 1600(sp)
  LW t4, 1608(sp)
  LW t3, 1616(sp)
  FLW ft4, 1624(sp)
  FLW ft3, 1632(sp)
  FLW ft4, 1640(sp)
  FLW ft3, 1648(sp)
  FLW ft4, 1656(sp)
  FLW ft3, 1664(sp)
  LW t4, 1672(sp)
  FLW ft4, 1680(sp)
  LW t3, 1688(sp)
  FLW ft3, 1696(sp)
  CALL params_f40_i24
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 336(sp)
  ADDI s0, zero, 12
  MUL s1, zero, s0
  ADDI t6, sp, 648
  ADD s0, t6, s1
  ADDI s1, zero, 12
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDI t5, sp, 648
  ADD s1, t5, s3
  ADDI s2, zero, 12
  ADDI s3, zero, 2
  MULW s4, s2, s3
  ADDI t6, sp, 648
  ADD s2, t6, s4
  ADDI s3, zero, 12
  ADDI s4, zero, 3
  MULW s5, s3, s4
  ADDI t5, sp, 648
  ADD s3, t5, s5
  ADDI s4, zero, 12
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADDI t6, sp, 648
  ADD s4, t6, s6
  ADDI s5, zero, 12
  ADDI s6, zero, 5
  MULW s7, s5, s6
  ADDI t5, sp, 648
  ADD s5, t5, s7
  ADDI s6, zero, 12
  ADDI s7, zero, 6
  MULW s8, s6, s7
  ADDI t6, sp, 648
  ADD s6, t6, s8
  ADDI s7, zero, 12
  ADDI s8, zero, 7
  MULW s9, s7, s8
  ADDI t5, sp, 648
  ADD s7, t5, s9
  ADDI s8, zero, 12
  ADDI s9, zero, 8
  MULW s10, s8, s9
  ADDI t6, sp, 648
  ADD s8, t6, s10
  ADDI s9, zero, 12
  ADDI s10, zero, 9
  MULW s11, s9, s10
  ADDI t4, sp, 648
  ADD t4, t4, s11
  SD t4, 1704(sp)
  ADDI s10, zero, 12
  ADDI s11, zero, 10
  MULW s9, s10, s11
  ADDI t4, sp, 648
  ADD t4, t4, s9
  SD t4, 1712(sp)
  ADDI s9, zero, 12
  ADDI s11, zero, 11
  MULW s10, s9, s11
  ADDI t4, sp, 648
  ADD t4, t4, s10
  SD t4, 1720(sp)
  ADDI s10, zero, 12
  ADDI s11, zero, 12
  MULW s9, s10, s11
  ADDI t4, sp, 648
  ADD t4, t4, s9
  SD t4, 1728(sp)
  ADDI s9, zero, 12
  ADDI s11, zero, 13
  MULW s10, s9, s11
  ADDI t4, sp, 648
  ADD t4, t4, s10
  SD t4, 1736(sp)
  ADDI s10, zero, 12
  ADDI s11, zero, 14
  MULW s9, s10, s11
  ADDI t4, sp, 648
  ADD t4, t4, s9
  SD t4, 1744(sp)
  ADDI s9, zero, 12
  ADDI s11, zero, 15
  MULW s10, s9, s11
  ADDI t4, sp, 648
  ADD t4, t4, s10
  SD t4, 1752(sp)
  ADDI s10, zero, 12
  ADDI s11, zero, 16
  MULW s9, s10, s11
  ADDI t4, sp, 648
  ADD t4, t4, s9
  SD t4, 1760(sp)
  ADDI s9, zero, 12
  ADDI s11, zero, 17
  MULW s10, s9, s11
  ADDI t4, sp, 648
  ADD t4, t4, s10
  SD t4, 1768(sp)
  ADDI s10, zero, 12
  ADDI s11, zero, 18
  MULW s9, s10, s11
  ADDI t4, sp, 648
  ADD t4, t4, s9
  SD t4, 1776(sp)
  ADDI s9, zero, 12
  ADDI s11, zero, 19
  MULW s10, s9, s11
  ADDI t4, sp, 648
  ADD t4, t4, s10
  SD t4, 1784(sp)
  ADDI s10, zero, 12
  ADDI s11, zero, 20
  MULW s9, s10, s11
  ADDI t4, sp, 648
  ADD t4, t4, s9
  SD t4, 1792(sp)
  ADDI s9, zero, 12
  ADDI s11, zero, 21
  MULW s10, s9, s11
  ADDI t4, sp, 648
  ADD t4, t4, s10
  SD t4, 1800(sp)
  ADDI s10, zero, 12
  ADDI s11, zero, 22
  MULW s9, s10, s11
  ADDI t4, sp, 648
  ADD t4, t4, s9
  SD t4, 1808(sp)
  ADDI s9, zero, 12
  ADDI s11, zero, 23
  MULW s10, s9, s11
  ADDI t4, sp, 648
  ADD t4, t4, s10
  SD t4, 1816(sp)
  ADDI s10, zero, 12
  ADDI s11, zero, 24
  MULW s9, s10, s11
  ADDI t4, sp, 648
  ADD t4, t4, s9
  SD t4, 1824(sp)
  ADDI s9, zero, 12
  ADDI s11, zero, 25
  MULW s10, s9, s11
  ADDI t4, sp, 648
  ADD t4, t4, s10
  SD t4, 1832(sp)
  ADDI s10, zero, 12
  ADDI s11, zero, 26
  MULW s9, s10, s11
  ADDI t4, sp, 648
  ADD t4, t4, s9
  SD t4, 1840(sp)
  ADDI s9, zero, 12
  ADDI s11, zero, 27
  MULW s10, s9, s11
  ADDI t4, sp, 648
  ADD t4, t4, s10
  SD t4, 1848(sp)
  ADDI s10, zero, 12
  ADDI s11, zero, 28
  MULW s9, s10, s11
  ADDI t4, sp, 648
  ADD t4, t4, s9
  SD t4, 1856(sp)
  ADDI s9, zero, 12
  ADDI s11, zero, 29
  MULW s10, s9, s11
  ADDI t4, sp, 648
  ADD t4, t4, s10
  SD t4, 1864(sp)
  ADDI s10, zero, 12
  ADDI s11, zero, 30
  MULW s9, s10, s11
  ADDI t4, sp, 648
  ADD t4, t4, s9
  SD t4, 1872(sp)
  ADDI s9, zero, 12
  ADDI s11, zero, 31
  MULW s10, s9, s11
  ADDI t4, sp, 648
  ADD t4, t4, s10
  SD t4, 1880(sp)
  ADDI s10, zero, 12
  ADDI s11, zero, 32
  MULW s9, s10, s11
  ADDI t4, sp, 648
  ADD t4, t4, s9
  SD t4, 1888(sp)
  ADDI s9, zero, 12
  ADDI s11, zero, 33
  MULW s10, s9, s11
  ADDI t4, sp, 648
  ADD t4, t4, s10
  SD t4, 1896(sp)
  ADDI s10, zero, 12
  ADDI s11, zero, 34
  MULW s9, s10, s11
  ADDI t4, sp, 648
  ADD t4, t4, s9
  SD t4, 1904(sp)
  ADDI s9, zero, 12
  ADDI s11, zero, 35
  MULW s10, s9, s11
  ADDI t4, sp, 648
  ADD t4, t4, s10
  SD t4, 1912(sp)
  ADDI s10, zero, 12
  ADDI s11, zero, 36
  MULW s9, s10, s11
  ADDI t4, sp, 648
  ADD t4, t4, s9
  SD t4, 1920(sp)
  ADDI s9, zero, 12
  ADDI s11, zero, 37
  MULW s10, s9, s11
  ADDI t4, sp, 648
  ADD t4, t4, s10
  SD t4, 1928(sp)
  ADDI s10, zero, 12
  ADDI s11, zero, 38
  MULW s9, s10, s11
  ADDI t4, sp, 648
  ADD t4, t4, s9
  SD t4, 1936(sp)
  ADDI s9, zero, 12
  ADDI s11, zero, 39
  MULW s10, s9, s11
  ADDI t5, sp, 648
  ADD s9, t5, s10
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  ADD a4, s4, zero
  ADD a5, s5, zero
  ADD a6, s6, zero
  ADD a7, s7, zero
  ADDI t6, sp, 0
  ADD s0, t6, zero
  SD s8, 0(s0)
  ADDI s0, sp, 8
  LD t4, 1704(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 16
  LD t4, 1712(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 24
  LD t4, 1720(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 32
  LD t4, 1728(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 40
  LD t4, 1736(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 48
  LD t4, 1744(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 56
  LD t4, 1752(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 64
  LD t4, 1760(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 72
  LD t4, 1768(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 80
  LD t4, 1776(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 88
  LD t4, 1784(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 96
  LD t4, 1792(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 104
  LD t4, 1800(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 112
  LD t4, 1808(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 120
  LD t4, 1816(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 128
  LD t4, 1824(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 136
  LD t4, 1832(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 144
  LD t4, 1840(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 152
  LD t4, 1848(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 160
  LD t4, 1856(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 168
  LD t4, 1864(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 176
  LD t4, 1872(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 184
  LD t4, 1880(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 192
  LD t4, 1888(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 200
  LD t4, 1896(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 208
  LD t4, 1904(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 216
  LD t4, 1912(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 224
  LD t4, 1920(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 232
  LD t4, 1928(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 240
  LD t4, 1936(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 248
  SD s9, 0(s0)
  LD t4, 1704(sp)
  LD t3, 1712(sp)
  LD t4, 1720(sp)
  LD t3, 1728(sp)
  LD t4, 1736(sp)
  LD t3, 1744(sp)
  LD t4, 1752(sp)
  LD t3, 1760(sp)
  LD t4, 1768(sp)
  LD t3, 1776(sp)
  LD t4, 1784(sp)
  LD t3, 1792(sp)
  LD t4, 1800(sp)
  LD t3, 1808(sp)
  LD t4, 1816(sp)
  LD t3, 1824(sp)
  LD t4, 1832(sp)
  LD t3, 1840(sp)
  LD t4, 1848(sp)
  LD t3, 1856(sp)
  LD t4, 1864(sp)
  LD t3, 1872(sp)
  LD t4, 1880(sp)
  LD t3, 1888(sp)
  LD t4, 1896(sp)
  LD t3, 1904(sp)
  LD t4, 1912(sp)
  LD t3, 1920(sp)
  LD t4, 1928(sp)
  LD t3, 1936(sp)
  CALL params_fa40
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 328(sp)
  ADDI s0, zero, 12
  MUL s1, zero, s0
  ADDI t5, sp, 648
  ADD s0, t5, s1
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  FLW fs0, 0(s1)
  ADDI s0, zero, 12
  MUL s1, zero, s0
  ADDI t6, sp, 360
  ADD s0, t6, s1
  ADDI s1, zero, 12
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDI t5, sp, 360
  ADD s1, t5, s3
  LA s2, k
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  ADD s2, s1, s4
  LW s1, 0(s2)
  ADDI s2, zero, 12
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADDI t6, sp, 648
  ADD s2, t6, s4
  ADDI s3, zero, 12
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADDI t5, sp, 648
  ADD s3, t5, s5
  LA s4, k
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MULW s6, s5, s4
  ADD s4, s3, s6
  FLW fs1, 0(s4)
  ADDI s3, zero, 12
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADDI t6, sp, 360
  ADD s3, t6, s5
  LA s4, k
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MULW s6, s5, s4
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 12
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADDI t5, sp, 648
  ADD s4, t5, s6
  LA s5, k
  LW s6, 0(s5)
  ADDI s5, zero, 4
  MULW s7, s6, s5
  ADD s5, s4, s7
  FLW fs2, 0(s5)
  ADDI s4, zero, 12
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADDI t6, sp, 648
  ADD s4, t6, s6
  LA s5, k
  LW s6, 0(s5)
  ADDI s5, zero, 4
  MULW s7, s6, s5
  ADD s5, s4, s7
  FLW fs3, 0(s5)
  ADDI s4, zero, 12
  ADDI s5, zero, 5
  MULW s6, s4, s5
  ADDI t5, sp, 648
  ADD s4, t5, s6
  ADDI s5, zero, 12
  ADDI s6, zero, 3
  MULW s7, s5, s6
  ADDI t6, sp, 360
  ADD s5, t6, s7
  ADDI s6, zero, 12
  ADDI s7, zero, 4
  MULW s8, s6, s7
  ADDI t5, sp, 360
  ADD s6, t5, s8
  LA s7, k
  LW s8, 0(s7)
  ADDI s7, zero, 4
  MULW s9, s8, s7
  ADD s7, s6, s9
  LW s6, 0(s7)
  ADDI s7, zero, 12
  ADDI s8, zero, 5
  MULW s9, s7, s8
  ADDI t6, sp, 360
  ADD s7, t6, s9
  LA s8, k
  LW s9, 0(s8)
  ADDI s8, zero, 4
  MULW s10, s9, s8
  ADD s8, s7, s10
  LW s7, 0(s8)
  ADDI s8, zero, 12
  ADDI s9, zero, 6
  MULW s10, s8, s9
  ADDI t4, sp, 648
  ADD t4, t4, s10
  SD t4, 1960(sp)
  ADDI s9, zero, 12
  ADDI s10, zero, 6
  MULW s11, s9, s10
  ADDI t4, sp, 360
  ADD t4, t4, s11
  SD t4, 1944(sp)
  ADDI s10, zero, 12
  ADDI s11, zero, 7
  MULW s9, s10, s11
  ADDI t4, sp, 360
  ADD t4, t4, s9
  SD t4, 1952(sp)
  ADDI s9, zero, 12
  ADDI s11, zero, 8
  MULW s10, s9, s11
  ADDI t5, sp, 360
  ADD s9, t5, s10
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  LW t4, 0(s10)
  SW t4, 1984(sp)
  ADDI s9, zero, 12
  ADDI s10, zero, 7
  MULW s11, s9, s10
  ADDI t4, sp, 648
  ADD t4, t4, s11
  SD t4, 1968(sp)
  ADDI s10, zero, 12
  ADDI s11, zero, 8
  MULW s9, s10, s11
  ADDI t4, sp, 648
  ADD t4, t4, s9
  SD t4, 1976(sp)
  ADDI s9, zero, 12
  ADDI s11, zero, 9
  MULW s10, s9, s11
  ADDI t6, sp, 648
  ADD s9, t6, s10
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  FLW fs4, 0(s10)
  ADDI s8, zero, 12
  ADDI s9, zero, 10
  MULW s10, s8, s9
  ADDI t5, sp, 648
  ADD s8, t5, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW fs5, 0(s9)
  ADDI s8, zero, 12
  ADDI s9, zero, 11
  MULW s10, s8, s9
  ADDI t6, sp, 648
  ADD s8, t6, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW fs6, 0(s9)
  ADDI s8, zero, 12
  ADDI s9, zero, 12
  MULW s10, s8, s9
  ADDI t4, sp, 648
  ADD t4, t4, s10
  SD t4, 1992(sp)
  ADDI s9, zero, 12
  ADDI s10, zero, 9
  MULW s11, s9, s10
  ADDI t5, sp, 360
  ADD s9, t5, s11
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  LW t4, 0(s10)
  SW t4, 2000(sp)
  ADDI s9, zero, 12
  ADDI s10, zero, 13
  MULW s11, s9, s10
  ADDI t6, sp, 648
  ADD s9, t6, s11
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  FLW fs7, 0(s10)
  ADDI s8, zero, 12
  ADDI s9, zero, 14
  MULW s10, s8, s9
  ADDI t5, sp, 648
  ADD s8, t5, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW fs8, 0(s9)
  ADDI s8, zero, 12
  ADDI s9, zero, 15
  MULW s10, s8, s9
  ADDI t6, sp, 648
  ADD s8, t6, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW fs9, 0(s9)
  ADDI s8, zero, 12
  ADDI s9, zero, 10
  MULW s10, s8, s9
  ADDI t4, sp, 360
  ADD t4, t4, s10
  SD t4, 2040(sp)
  ADDI s9, zero, 12
  ADDI s10, zero, 16
  MULW s11, s9, s10
  ADDI t4, sp, 648
  ADD t4, t4, s11
  SD t4, 2008(sp)
  ADDI s10, zero, 12
  ADDI s11, zero, 11
  MULW s9, s10, s11
  ADDI t4, sp, 360
  ADD t4, t4, s9
  SD t4, 2016(sp)
  ADDI s9, zero, 12
  ADDI s11, zero, 12
  MULW s10, s9, s11
  ADDI t4, sp, 360
  ADD t4, t4, s10
  SD t4, 2024(sp)
  ADDI s10, zero, 12
  ADDI s11, zero, 17
  MULW s9, s10, s11
  ADDI t4, sp, 648
  ADD t4, t4, s9
  SD t4, 2032(sp)
  ADDI s9, zero, 12
  ADDI s11, zero, 18
  MULW s10, s9, s11
  ADDI t5, sp, 648
  ADD s9, t5, s10
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  FLW fs10, 0(s10)
  ADDI s8, zero, 12
  ADDI s9, zero, 19
  MULW s10, s8, s9
  ADDI t6, sp, 648
  ADD s8, t6, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW fs11, 0(s9)
  ADDI s8, zero, 12
  ADDI s9, zero, 13
  MULW s10, s8, s9
  ADDI t4, sp, 360
  ADD t4, t4, s10
  LUI t5, 1
  ADDI t5, t5, -2048
  ADD t5, t5, sp
  SD t4, 0(t5)
  ADDI s9, zero, 12
  ADDI s10, zero, 14
  MULW s11, s9, s10
  ADDI t6, sp, 360
  ADD s9, t6, s11
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  LW t4, 0(s10)
  LUI t5, 1
  ADDI t5, t5, -2024
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI s9, zero, 12
  ADDI s10, zero, 20
  MULW s11, s9, s10
  ADDI t4, sp, 648
  ADD t4, t4, s11
  LUI t6, 1
  ADDI t6, t6, -2040
  ADD t6, t6, sp
  SD t4, 0(t6)
  ADDI s10, zero, 12
  ADDI s11, zero, 21
  MULW s9, s10, s11
  ADDI t4, sp, 648
  ADD t4, t4, s9
  LUI t5, 1
  ADDI t5, t5, -2032
  ADD t5, t5, sp
  SD t4, 0(t5)
  ADDI s9, zero, 12
  ADDI s11, zero, 22
  MULW s10, s9, s11
  ADDI t6, sp, 648
  ADD s9, t6, s10
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  FLW ft4, 0(s10)
  LUI t5, 1
  ADDI t5, t5, -2016
  ADD t5, t5, sp
  FSW ft4, 0(t5)
  ADDI s8, zero, 12
  ADDI s9, zero, 23
  MULW s10, s8, s9
  ADDI t6, sp, 648
  ADD s8, t6, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW ft4, 0(s9)
  LUI t5, 1
  ADDI t5, t5, -2008
  ADD t5, t5, sp
  FSW ft4, 0(t5)
  ADDI s8, zero, 12
  ADDI s9, zero, 15
  MULW s10, s8, s9
  ADDI t4, sp, 360
  ADD t4, t4, s10
  LUI t6, 1
  ADDI t6, t6, -1992
  ADD t6, t6, sp
  SD t4, 0(t6)
  ADDI s9, zero, 12
  ADDI s10, zero, 16
  MULW s11, s9, s10
  ADDI t4, sp, 360
  ADD t4, t4, s11
  LUI t5, 1
  ADDI t5, t5, -2000
  ADD t5, t5, sp
  SD t4, 0(t5)
  ADDI s10, zero, 12
  ADDI s11, zero, 17
  MULW s9, s10, s11
  ADDI t6, sp, 360
  ADD s10, t6, s9
  LA s9, k
  LW s11, 0(s9)
  ADDI s9, zero, 4
  MULW s8, s11, s9
  ADD s9, s10, s8
  LW t4, 0(s9)
  LUI t5, 1
  ADDI t5, t5, -1984
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI s9, zero, 12
  ADDI s10, zero, 18
  MULW s11, s9, s10
  ADDI t6, sp, 360
  ADD s9, t6, s11
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  LW t4, 0(s10)
  LUI t5, 1
  ADDI t5, t5, -1976
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI s9, zero, 12
  ADDI s10, zero, 24
  MULW s11, s9, s10
  ADDI t6, sp, 648
  ADD s9, t6, s11
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  FLW ft4, 0(s10)
  LUI t5, 1
  ADDI t5, t5, -1968
  ADD t5, t5, sp
  FSW ft4, 0(t5)
  ADDI s8, zero, 12
  ADDI s9, zero, 25
  MULW s10, s8, s9
  ADDI t6, sp, 648
  ADD s8, t6, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW ft4, 0(s9)
  LUI t5, 1
  ADDI t5, t5, -1960
  ADD t5, t5, sp
  FSW ft4, 0(t5)
  ADDI s8, zero, 12
  ADDI s9, zero, 19
  MULW s10, s8, s9
  ADDI t4, sp, 360
  ADD t4, t4, s10
  LUI t6, 1
  ADDI t6, t6, -1952
  ADD t6, t6, sp
  SD t4, 0(t6)
  ADDI s9, zero, 12
  ADDI s10, zero, 20
  MULW s11, s9, s10
  ADDI t5, sp, 360
  ADD s9, t5, s11
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  LW t4, 0(s10)
  LUI t6, 1
  ADDI t6, t6, -1936
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI s9, zero, 12
  ADDI s10, zero, 26
  MULW s11, s9, s10
  ADDI t4, sp, 648
  ADD t4, t4, s11
  LUI t5, 1
  ADDI t5, t5, -1944
  ADD t5, t5, sp
  SD t4, 0(t5)
  ADDI s10, zero, 12
  ADDI s11, zero, 21
  MULW s9, s10, s11
  ADDI t6, sp, 360
  ADD s10, t6, s9
  LA s9, k
  LW s11, 0(s9)
  ADDI s9, zero, 4
  MULW s8, s11, s9
  ADD s9, s10, s8
  LW t4, 0(s9)
  LUI t5, 1
  ADDI t5, t5, -1912
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI s9, zero, 12
  ADDI s10, zero, 22
  MULW s11, s9, s10
  ADDI t4, sp, 360
  ADD t4, t4, s11
  LUI t6, 1
  ADDI t6, t6, -1928
  ADD t6, t6, sp
  SD t4, 0(t6)
  ADDI s10, zero, 12
  ADDI s11, zero, 23
  MULW s9, s10, s11
  ADDI t4, sp, 360
  ADD t4, t4, s9
  LUI t5, 1
  ADDI t5, t5, -1920
  ADD t5, t5, sp
  SD t4, 0(t5)
  ADDI s9, zero, 12
  ADDI s11, zero, 27
  MULW s10, s9, s11
  ADDI t6, sp, 648
  ADD s9, t6, s10
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  FLW ft4, 0(s10)
  LUI t5, 1
  ADDI t5, t5, -1904
  ADD t5, t5, sp
  FSW ft4, 0(t5)
  ADDI s8, zero, 12
  ADDI s9, zero, 28
  MULW s10, s8, s9
  ADDI t6, sp, 648
  ADD s8, t6, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  FLW ft4, 0(s9)
  LUI t5, 1
  ADDI t5, t5, -1896
  ADD t5, t5, sp
  FSW ft4, 0(t5)
  ADDI s8, zero, 12
  ADDI s9, zero, 29
  MULW s10, s8, s9
  ADDI t4, sp, 648
  ADD t4, t4, s10
  LUI t6, 1
  ADDI t6, t6, -1888
  ADD t6, t6, sp
  SD t4, 0(t6)
  ADDI s9, zero, 12
  MUL s10, zero, s9
  ADDI t5, sp, 360
  ADD s9, t5, s10
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  LW t4, 0(s10)
  LUI t6, 1
  ADDI t6, t6, -1864
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI s9, zero, 12
  ADDI s10, zero, 1
  MULW s11, s9, s10
  ADDI t4, sp, 360
  ADD t4, t4, s11
  LUI t5, 1
  ADDI t5, t5, -1880
  ADD t5, t5, sp
  SD t4, 0(t5)
  ADDI s10, zero, 12
  ADDI s11, zero, 30
  MULW s9, s10, s11
  ADDI t4, sp, 648
  ADD t4, t4, s9
  LUI t6, 1
  ADDI t6, t6, -1872
  ADD t6, t6, sp
  SD t4, 0(t6)
  ADDI s9, zero, 12
  ADDI s11, zero, 31
  MULW s10, s9, s11
  ADDI t5, sp, 648
  ADD s9, t5, s10
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  FLW ft4, 0(s10)
  LUI t6, 1
  ADDI t6, t6, -1856
  ADD t6, t6, sp
  FSW ft4, 0(t6)
  ADDI s8, zero, 12
  ADDI s9, zero, 2
  MULW s10, s8, s9
  ADDI t5, sp, 360
  ADD s8, t5, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  LW t4, 0(s9)
  LUI t6, 1
  ADDI t6, t6, -1848
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI s9, zero, 12
  ADDI s10, zero, 32
  MULW s11, s9, s10
  ADDI t5, sp, 648
  ADD s9, t5, s11
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s8, s11, s10
  ADD s10, s9, s8
  FLW ft4, 0(s10)
  LUI t6, 1
  ADDI t6, t6, -1840
  ADD t6, t6, sp
  FSW ft4, 0(t6)
  ADDI s8, zero, 12
  ADDI s9, zero, 33
  MULW s10, s8, s9
  ADDI t4, sp, 648
  ADD t4, t4, s10
  LUI t5, 1
  ADDI t5, t5, -1824
  ADD t5, t5, sp
  SD t4, 0(t5)
  ADDI s9, zero, 12
  ADDI s10, zero, 34
  MULW s11, s9, s10
  ADDI t4, sp, 648
  ADD t4, t4, s11
  LUI t6, 1
  ADDI t6, t6, -1832
  ADD t6, t6, sp
  SD t4, 0(t6)
  ADDI s10, zero, 12
  ADDI s11, zero, 35
  MULW s9, s10, s11
  ADDI t5, sp, 648
  ADD s10, t5, s9
  LA s9, k
  LW s11, 0(s9)
  ADDI s9, zero, 4
  MULW s8, s11, s9
  ADD s9, s10, s8
  FLW ft4, 0(s9)
  LUI t6, 1
  ADDI t6, t6, -1816
  ADD t6, t6, sp
  FSW ft4, 0(t6)
  ADDI s8, zero, 12
  ADDI s9, zero, 3
  MULW s10, s8, s9
  ADDI t5, sp, 360
  ADD s8, t5, s10
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  LW s8, 0(s9)
  FSGNJ.S fa0, fs0, fs0
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  FSGNJ.S fa1, fs1, fs1
  ADD a3, s3, zero
  FSGNJ.S fa2, fs2, fs2
  FSGNJ.S fa3, fs3, fs3
  ADD a4, s4, zero
  ADD a5, s5, zero
  ADD a6, s6, zero
  ADD a7, s7, zero
  ADDI t6, sp, 0
  ADD s0, t6, zero
  LD t4, 1960(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 8
  LD t4, 1944(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 16
  LD t4, 1952(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 24
  LW t4, 1984(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 32
  LD t4, 1968(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 40
  LD t4, 1976(sp)
  SD t4, 0(s0)
  FSGNJ.S fa4, fs4, fs4
  FSGNJ.S fa5, fs5, fs5
  FSGNJ.S fa6, fs6, fs6
  ADDI s0, sp, 48
  LD t4, 1992(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 56
  LW t4, 2000(sp)
  SW t4, 0(s0)
  FSGNJ.S fa7, fs7, fs7
  ADDI s0, sp, 60
  FSW fs8, 0(s0)
  ADDI s0, sp, 64
  FSW fs9, 0(s0)
  ADDI s0, sp, 72
  LD t4, 2040(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 80
  LD t4, 2008(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 88
  LD t4, 2016(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 96
  LD t4, 2024(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 104
  LD t4, 2032(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 112
  FSW fs10, 0(s0)
  ADDI s0, sp, 116
  FSW fs11, 0(s0)
  ADDI s0, sp, 120
  LUI t4, 1
  ADDI t4, t4, -2048
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 128
  LUI t4, 1
  ADDI t4, t4, -2024
  ADD t4, t4, sp
  LW t4, 0(t4)
  SW t4, 0(s0)
  ADDI s0, sp, 136
  LUI t4, 1
  ADDI t4, t4, -2040
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 144
  LUI t4, 1
  ADDI t4, t4, -2032
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 152
  LUI t5, 1
  ADDI t5, t5, -2016
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSW ft4, 0(s0)
  ADDI s0, sp, 156
  LUI t6, 1
  ADDI t6, t6, -2008
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  FSW ft4, 0(s0)
  ADDI s0, sp, 160
  LUI t4, 1
  ADDI t4, t4, -1992
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 168
  LUI t4, 1
  ADDI t4, t4, -2000
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 176
  LUI t4, 1
  ADDI t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  SW t4, 0(s0)
  ADDI s0, sp, 180
  LUI t4, 1
  ADDI t4, t4, -1976
  ADD t4, t4, sp
  LW t4, 0(t4)
  SW t4, 0(s0)
  ADDI s0, sp, 184
  LUI t5, 1
  ADDI t5, t5, -1968
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSW ft4, 0(s0)
  ADDI s0, sp, 188
  LUI t6, 1
  ADDI t6, t6, -1960
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  FSW ft4, 0(s0)
  ADDI s0, sp, 192
  LUI t4, 1
  ADDI t4, t4, -1952
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 200
  LUI t4, 1
  ADDI t4, t4, -1936
  ADD t4, t4, sp
  LW t4, 0(t4)
  SW t4, 0(s0)
  ADDI s0, sp, 208
  LUI t4, 1
  ADDI t4, t4, -1944
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 216
  LUI t4, 1
  ADDI t4, t4, -1912
  ADD t4, t4, sp
  LW t4, 0(t4)
  SW t4, 0(s0)
  ADDI s0, sp, 224
  LUI t4, 1
  ADDI t4, t4, -1928
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 232
  LUI t4, 1
  ADDI t4, t4, -1920
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 240
  LUI t5, 1
  ADDI t5, t5, -1904
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSW ft4, 0(s0)
  ADDI s0, sp, 244
  LUI t6, 1
  ADDI t6, t6, -1896
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  FSW ft4, 0(s0)
  ADDI s0, sp, 248
  LUI t4, 1
  ADDI t4, t4, -1888
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 256
  LUI t4, 1
  ADDI t4, t4, -1864
  ADD t4, t4, sp
  LW t4, 0(t4)
  SW t4, 0(s0)
  ADDI s0, sp, 264
  LUI t4, 1
  ADDI t4, t4, -1880
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 272
  LUI t4, 1
  ADDI t4, t4, -1872
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 280
  LUI t5, 1
  ADDI t5, t5, -1856
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSW ft4, 0(s0)
  ADDI s0, sp, 284
  LUI t4, 1
  ADDI t4, t4, -1848
  ADD t4, t4, sp
  LW t4, 0(t4)
  SW t4, 0(s0)
  ADDI s0, sp, 288
  LUI t6, 1
  ADDI t6, t6, -1840
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  FSW ft4, 0(s0)
  ADDI s0, sp, 296
  LUI t4, 1
  ADDI t4, t4, -1824
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 304
  LUI t4, 1
  ADDI t4, t4, -1832
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 312
  LUI t5, 1
  ADDI t5, t5, -1816
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSW ft4, 0(s0)
  ADDI s0, sp, 316
  SW s8, 0(s0)
  LD t4, 1960(sp)
  LD t3, 1944(sp)
  LD t4, 1952(sp)
  LW t3, 1984(sp)
  LD t4, 1968(sp)
  LD t3, 1976(sp)
  LD t4, 1992(sp)
  LW t3, 2000(sp)
  LD t4, 2040(sp)
  LD t3, 2008(sp)
  LD t4, 2016(sp)
  LD t3, 2024(sp)
  LD t4, 2032(sp)
  LUI t3, 1
  ADDI t3, t3, -2048
  ADD t3, t3, sp
  LD t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -2024
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -2040
  ADD t3, t3, sp
  LD t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -2032
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t6, 1
  ADDI t6, t6, -2016
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -2008
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  LUI t3, 1
  ADDI t3, t3, -1992
  ADD t3, t3, sp
  LD t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -2000
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1984
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1976
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t6, 1
  ADDI t6, t6, -1968
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1960
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  LUI t3, 1
  ADDI t3, t3, -1952
  ADD t3, t3, sp
  LD t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1936
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1944
  ADD t3, t3, sp
  LD t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1912
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1928
  ADD t3, t3, sp
  LD t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1920
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t6, 1
  ADDI t6, t6, -1904
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1896
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  LUI t3, 1
  ADDI t3, t3, -1888
  ADD t3, t3, sp
  LD t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1864
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1880
  ADD t3, t3, sp
  LD t3, 0(t3)
  LUI t4, 1
  ADDI t4, t4, -1872
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t6, 1
  ADDI t6, t6, -1856
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  LUI t3, 1
  ADDI t3, t3, -1848
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t5, 1
  ADDI t5, t5, -1840
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  LUI t4, 1
  ADDI t4, t4, -1824
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDI t3, t3, -1832
  ADD t3, t3, sp
  LD t3, 0(t3)
  LUI t6, 1
  ADDI t6, t6, -1816
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  CALL params_mix
  ADD s0, a0, zero
  SW s0, 320(sp)
  FLW fs0, 344(sp)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI a0, zero, 10
  CALL putch
  FLW fs0, 336(sp)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI a0, zero, 10
  CALL putch
  FLW fs0, 328(sp)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI a0, zero, 10
  CALL putch
  LW s0, 320(sp)
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LUI t5, 1
  ADDI t5, t5, -1808
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1800
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1792
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1784
  ADD t6, t6, sp
  LD s8, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1776
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1768
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1760
  ADD t5, t5, sp
  FLD fs4, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1752
  ADD t6, t6, sp
  FLD fs3, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1744
  ADD t5, t5, sp
  FLD fs6, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1736
  ADD t6, t6, sp
  FLD fs1, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1728
  ADD t5, t5, sp
  FLD fs5, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1720
  ADD t6, t6, sp
  FLD fs0, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1712
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1704
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1696
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1688
  ADD t6, t6, sp
  FLD fs2, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1680
  ADD t5, t5, sp
  FLD fs8, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1672
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1664
  ADD t5, t5, sp
  FLD fs7, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1656
  ADD t6, t6, sp
  FLD fs9, 0(t6)
  LUI ra, 1
  ADDI ra, ra, -1648
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDI t5, t5, -1640
  ADD t5, t5, sp
  FLD fs10, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1632
  ADD t6, t6, sp
  FLD fs11, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1624
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1616
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t0, 1
  ADDI t0, t0, -1600
  ADD sp, sp, t0
  JALR zero, 0(ra)
params_fa40:
  ADDI sp, sp, -736
  SD s11, 536(sp)
  FSD fs11, 544(sp)
  SD ra, 552(sp)
  FSD fs10, 560(sp)
  FSD fs8, 568(sp)
  FSD fs7, 576(sp)
  FSD fs6, 584(sp)
  FSD fs1, 592(sp)
  SD s4, 600(sp)
  SD s3, 608(sp)
  SD s2, 616(sp)
  SD s1, 624(sp)
  FSD fs0, 632(sp)
  FSD fs9, 640(sp)
  SD s5, 648(sp)
  SD s0, 656(sp)
  SD s6, 664(sp)
  SD s7, 672(sp)
  FSD fs2, 680(sp)
  SD s8, 688(sp)
  FSD fs3, 696(sp)
  SD s9, 704(sp)
  FSD fs4, 712(sp)
  SD s10, 720(sp)
  FSD fs5, 728(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  ADD s6, a6, zero
  ADD s7, a7, zero
  ADDI t5, sp, 736
  ADD s8, t5, zero
  LD s9, 0(s8)
  ADDI s8, sp, 744
  LD s10, 0(s8)
  ADDI s8, sp, 752
  LD t4, 0(s8)
  SD t4, 528(sp)
  ADDI s8, sp, 760
  LD t4, 0(s8)
  SD t4, 512(sp)
  ADDI s8, sp, 768
  LD t4, 0(s8)
  SD t4, 520(sp)
  ADDI s8, sp, 776
  LD t4, 0(s8)
  SD t4, 504(sp)
  ADDI s8, sp, 784
  LD t4, 0(s8)
  SD t4, 496(sp)
  ADDI s8, sp, 792
  LD t4, 0(s8)
  SD t4, 296(sp)
  ADDI s8, sp, 800
  LD t4, 0(s8)
  SD t4, 304(sp)
  ADDI s8, sp, 808
  LD t4, 0(s8)
  SD t4, 312(sp)
  ADDI s8, sp, 816
  LD t4, 0(s8)
  SD t4, 320(sp)
  ADDI s8, sp, 824
  LD t4, 0(s8)
  SD t4, 328(sp)
  ADDI s8, sp, 832
  LD t4, 0(s8)
  SD t4, 336(sp)
  ADDI s8, sp, 840
  LD t4, 0(s8)
  SD t4, 344(sp)
  ADDI s8, sp, 848
  LD t4, 0(s8)
  SD t4, 352(sp)
  ADDI s8, sp, 856
  LD t4, 0(s8)
  SD t4, 360(sp)
  ADDI s8, sp, 864
  LD t4, 0(s8)
  SD t4, 368(sp)
  ADDI s8, sp, 872
  LD t4, 0(s8)
  SD t4, 376(sp)
  ADDI s8, sp, 880
  LD t4, 0(s8)
  SD t4, 384(sp)
  ADDI s8, sp, 888
  LD t4, 0(s8)
  SD t4, 392(sp)
  ADDI s8, sp, 896
  LD t4, 0(s8)
  SD t4, 400(sp)
  ADDI s8, sp, 904
  LD t4, 0(s8)
  SD t4, 408(sp)
  ADDI s8, sp, 912
  LD t4, 0(s8)
  SD t4, 416(sp)
  ADDI s8, sp, 920
  LD t4, 0(s8)
  SD t4, 424(sp)
  ADDI s8, sp, 928
  LD t4, 0(s8)
  SD t4, 432(sp)
  ADDI s8, sp, 936
  LD t4, 0(s8)
  SD t4, 440(sp)
  ADDI s8, sp, 944
  LD t4, 0(s8)
  SD t4, 448(sp)
  ADDI s8, sp, 952
  LD t4, 0(s8)
  SD t4, 456(sp)
  ADDI s8, sp, 960
  LD t4, 0(s8)
  SD t4, 464(sp)
  ADDI s8, sp, 968
  LD t4, 0(s8)
  SD t4, 472(sp)
  ADDI s8, sp, 976
  LD t4, 0(s8)
  SD t4, 480(sp)
  ADDI s8, sp, 984
  LD t4, 0(s8)
  SD t4, 488(sp)
  LA s8, k
  LW t2, 0(s8)
  ADDI s8, zero, 4
  MULW t1, t2, s8
  ADD s8, s0, t1
  FLW fs0, 0(s8)
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  ADD s0, s1, t1
  FLW fs1, 0(s0)
  FADD.S fs2, fs0, fs1
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  ADD s0, s2, t1
  FLW fs0, 0(s0)
  FADD.S fs1, fs2, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  ADD s0, s3, t1
  FLW fs0, 0(s0)
  FADD.S fs2, fs1, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  ADD s0, s4, t1
  FLW fs0, 0(s0)
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  ADD s0, s5, t1
  FLW fs1, 0(s0)
  FADD.S fs3, fs0, fs1
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  ADD s0, s6, t1
  FLW fs0, 0(s0)
  FADD.S fs1, fs3, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  ADD s0, s7, t1
  FLW fs0, 0(s0)
  FADD.S fs3, fs1, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  ADD s0, s9, t1
  FLW fs0, 0(s0)
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  ADD s0, s10, t1
  FLW fs1, 0(s0)
  FADD.S fs4, fs0, fs1
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 528(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs1, fs4, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 512(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs4, fs1, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 520(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 504(sp)
  ADD s0, t4, t1
  FLW fs1, 0(s0)
  FADD.S fs5, fs0, fs1
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 496(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs1, fs5, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 296(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs5, fs1, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 304(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 312(sp)
  ADD s0, t4, t1
  FLW fs1, 0(s0)
  FADD.S fs6, fs0, fs1
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 320(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs1, fs6, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 328(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs6, fs1, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 336(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 344(sp)
  ADD s0, t4, t1
  FLW fs1, 0(s0)
  FADD.S fs7, fs0, fs1
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 352(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs1, fs7, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 360(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs7, fs1, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 368(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 376(sp)
  ADD s0, t4, t1
  FLW fs1, 0(s0)
  FADD.S fs8, fs0, fs1
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 384(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs1, fs8, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 392(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs8, fs1, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 400(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 408(sp)
  ADD s0, t4, t1
  FLW fs1, 0(s0)
  FADD.S fs9, fs0, fs1
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 416(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs1, fs9, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 424(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs9, fs1, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 432(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 440(sp)
  ADD s0, t4, t1
  FLW fs1, 0(s0)
  FADD.S fs10, fs0, fs1
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 448(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs1, fs10, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 456(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs10, fs1, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 464(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 472(sp)
  ADD s0, t4, t1
  FLW fs1, 0(s0)
  FADD.S fs11, fs0, fs1
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 480(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs1, fs11, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 488(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs11, fs1, fs0
  ADDI t6, sp, 256
  ADD s0, t6, zero
  FSW fs2, 0(s0)
  ADDI s0, sp, 260
  FSW fs3, 0(s0)
  ADDI s0, sp, 264
  FSW fs4, 0(s0)
  ADDI s0, sp, 268
  FSW fs5, 0(s0)
  ADDI s0, sp, 272
  FSW fs6, 0(s0)
  ADDI s0, sp, 276
  FSW fs7, 0(s0)
  ADDI s0, sp, 280
  FSW fs8, 0(s0)
  ADDI s0, sp, 284
  FSW fs9, 0(s0)
  ADDI s0, sp, 288
  FSW fs10, 0(s0)
  ADDI s0, sp, 292
  FSW fs11, 0(s0)
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 488(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FCVT.S.L fs1, zero
  FEQ.S s0, fs0, fs1
  XORI s8, s0, 1
  ADD s0, s8, zero
  XOR s8, s0, zero
  SLTU s0, zero, s8
  ADD s8, s0, zero
  FCVT.S.W fs0, s8
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FEQ.S s0, fs0, fs1
  XORI s8, s0, 1
  ADD s0, s8, zero
  FCVT.S.W fs0, s0
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FEQ.S s0, fs0, fs1
  XORI s8, s0, 1
  BNE s8, zero, bb15
  JAL zero, bb17
bb15:
  ADDI a0, zero, 10
  ADDI a1, sp, 256
  ADD a1, a1, zero
  CALL putfarray
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s8, s0
  ADDI t5, sp, 256
  ADD s0, t5, s11
  FLW fs0, 0(s0)
  FSGNJ.S fa0, fs0, fs0
  LD s11, 536(sp)
  FLD fs11, 544(sp)
  LD ra, 552(sp)
  FLD fs10, 560(sp)
  FLD fs8, 568(sp)
  FLD fs7, 576(sp)
  FLD fs6, 584(sp)
  FLD fs1, 592(sp)
  LD s4, 600(sp)
  LD s3, 608(sp)
  LD s2, 616(sp)
  LD s1, 624(sp)
  FLD fs0, 632(sp)
  FLD fs9, 640(sp)
  LD s5, 648(sp)
  LD s0, 656(sp)
  LD s6, 664(sp)
  LD s7, 672(sp)
  FLD fs2, 680(sp)
  LD s8, 688(sp)
  FLD fs3, 696(sp)
  LD s9, 704(sp)
  FLD fs4, 712(sp)
  LD s10, 720(sp)
  FLD fs5, 728(sp)
  ADDI sp, sp, 736
  JALR zero, 0(ra)
bb16:
bb17:
  ADD a0, s1, zero
  ADD a1, s2, zero
  ADD a2, s3, zero
  ADD a3, s4, zero
  ADD a4, s5, zero
  ADD a5, s6, zero
  ADD a6, s7, zero
  ADD a7, s9, zero
  ADDI t6, sp, 0
  ADD s0, t6, zero
  SD s10, 0(s0)
  ADDI s0, sp, 8
  LD t4, 528(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 16
  LD t4, 512(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 24
  LD t4, 520(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 32
  LD t4, 504(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 40
  LD t4, 496(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 48
  LD t4, 296(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 56
  LD t4, 304(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 64
  LD t4, 312(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 72
  LD t4, 320(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 80
  LD t4, 328(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 88
  LD t4, 336(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 96
  LD t4, 344(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 104
  LD t4, 352(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 112
  LD t4, 360(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 120
  LD t4, 368(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 128
  LD t4, 376(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 136
  LD t4, 384(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 144
  LD t4, 392(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 152
  LD t4, 400(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 160
  LD t4, 408(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 168
  LD t4, 416(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 176
  LD t4, 424(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 184
  LD t4, 432(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 192
  LD t4, 440(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 200
  LD t4, 448(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 208
  LD t4, 456(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 216
  LD t4, 464(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 224
  LD t4, 472(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 232
  LD t4, 480(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 240
  LD t4, 488(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 248
  ADDI t4, sp, 256
  SD t4, 0(s0)
  LD t4, 528(sp)
  LD t3, 512(sp)
  LD t4, 520(sp)
  LD t3, 504(sp)
  LD t4, 496(sp)
  LD t3, 296(sp)
  LD t4, 304(sp)
  LD t3, 312(sp)
  LD t4, 320(sp)
  LD t3, 328(sp)
  LD t4, 336(sp)
  LD t3, 344(sp)
  LD t4, 352(sp)
  LD t3, 360(sp)
  LD t4, 368(sp)
  LD t3, 376(sp)
  LD t4, 384(sp)
  LD t3, 392(sp)
  LD t4, 400(sp)
  LD t3, 408(sp)
  LD t4, 416(sp)
  LD t3, 424(sp)
  LD t4, 432(sp)
  LD t3, 440(sp)
  LD t4, 448(sp)
  LD t3, 456(sp)
  LD t4, 464(sp)
  LD t3, 472(sp)
  LD t4, 480(sp)
  LD t3, 488(sp)
  ADDI t5, sp, 256
  CALL params_fa40
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  LD s11, 536(sp)
  FLD fs11, 544(sp)
  LD ra, 552(sp)
  FLD fs10, 560(sp)
  FLD fs8, 568(sp)
  FLD fs7, 576(sp)
  FLD fs6, 584(sp)
  FLD fs1, 592(sp)
  LD s4, 600(sp)
  LD s3, 608(sp)
  LD s2, 616(sp)
  LD s1, 624(sp)
  FLD fs0, 632(sp)
  FLD fs9, 640(sp)
  LD s5, 648(sp)
  LD s0, 656(sp)
  LD s6, 664(sp)
  LD s7, 672(sp)
  FLD fs2, 680(sp)
  LD s8, 688(sp)
  FLD fs3, 696(sp)
  LD s9, 704(sp)
  FLD fs4, 712(sp)
  LD s10, 720(sp)
  FLD fs5, 728(sp)
  ADDI sp, sp, 736
  JALR zero, 0(ra)
params_f40:
  ADDI sp, sp, -1024
  SD s2, 888(sp)
  SD s1, 896(sp)
  FSD fs4, 904(sp)
  FSD fs3, 912(sp)
  FSD fs2, 920(sp)
  FSD fs6, 928(sp)
  FSD fs1, 936(sp)
  FSD fs5, 944(sp)
  FSD fs0, 952(sp)
  FSD fs7, 960(sp)
  SD s0, 968(sp)
  FSD fs8, 976(sp)
  FSD fs9, 984(sp)
  SD ra, 992(sp)
  FSD fs10, 1000(sp)
  FSD fs11, 1008(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  FSGNJ.D fs2, fa2, fa2
  FSGNJ.D fs3, fa3, fa3
  FSGNJ.D fs4, fa4, fa4
  FSGNJ.D fs5, fa5, fa5
  FSGNJ.D fs6, fa6, fa6
  FSGNJ.D fs7, fa7, fa7
  ADDI t5, sp, 1024
  ADD s0, t5, zero
  FLW fs8, 0(s0)
  ADDI s0, sp, 1028
  FLW fs9, 0(s0)
  ADDI s0, sp, 1032
  FLW fs10, 0(s0)
  ADDI s0, sp, 1036
  FLW fs11, 0(s0)
  ADDI s0, sp, 1040
  FLW ft0, 0(s0)
  ADDI s0, sp, 1044
  FLW ft1, 0(s0)
  ADDI s0, sp, 1048
  FLW ft2, 0(s0)
  ADDI s0, sp, 1052
  FLW ft5, 0(s0)
  ADDI s0, sp, 1056
  FLW ft6, 0(s0)
  ADDI s0, sp, 1060
  FLW ft7, 0(s0)
  ADDI s0, sp, 1064
  FLW ft8, 0(s0)
  ADDI s0, sp, 1068
  FLW ft9, 0(s0)
  ADDI s0, sp, 1072
  FLW ft4, 0(s0)
  FSW ft4, 488(sp)
  ADDI s0, sp, 1076
  FLW ft4, 0(s0)
  FSW ft4, 496(sp)
  ADDI s0, sp, 1080
  FLW ft4, 0(s0)
  FSW ft4, 504(sp)
  ADDI s0, sp, 1084
  FLW ft4, 0(s0)
  FSW ft4, 512(sp)
  ADDI s0, sp, 1088
  FLW ft4, 0(s0)
  FSW ft4, 520(sp)
  ADDI s0, sp, 1092
  FLW ft4, 0(s0)
  FSW ft4, 528(sp)
  ADDI s0, sp, 1096
  FLW ft4, 0(s0)
  FSW ft4, 536(sp)
  ADDI s0, sp, 1100
  FLW ft4, 0(s0)
  FSW ft4, 544(sp)
  ADDI s0, sp, 1104
  FLW ft4, 0(s0)
  FSW ft4, 552(sp)
  ADDI s0, sp, 1108
  FLW ft4, 0(s0)
  FSW ft4, 560(sp)
  ADDI s0, sp, 1112
  FLW ft4, 0(s0)
  FSW ft4, 568(sp)
  ADDI s0, sp, 1116
  FLW ft4, 0(s0)
  FSW ft4, 576(sp)
  ADDI s0, sp, 1120
  FLW ft4, 0(s0)
  FSW ft4, 584(sp)
  ADDI s0, sp, 1124
  FLW ft4, 0(s0)
  FSW ft4, 592(sp)
  ADDI s0, sp, 1128
  FLW ft4, 0(s0)
  FSW ft4, 600(sp)
  ADDI s0, sp, 1132
  FLW ft4, 0(s0)
  FSW ft4, 608(sp)
  ADDI s0, sp, 1136
  FLW ft4, 0(s0)
  FSW ft4, 616(sp)
  ADDI s0, sp, 1140
  FLW ft4, 0(s0)
  FSW ft4, 624(sp)
  ADDI s0, sp, 1144
  FLW ft4, 0(s0)
  FSW ft4, 632(sp)
  ADDI s0, sp, 1148
  FLW ft4, 0(s0)
  FSW ft4, 640(sp)
  FSW fs0, 480(sp)
  FSW fs1, 472(sp)
  FSW fs2, 464(sp)
  FSW fs3, 456(sp)
  FSW fs4, 448(sp)
  FSW fs5, 440(sp)
  FSW fs6, 432(sp)
  FSW fs7, 424(sp)
  FSW fs8, 416(sp)
  FSW fs9, 408(sp)
  FSW fs10, 400(sp)
  FSW fs11, 392(sp)
  FSW ft0, 384(sp)
  FSW ft1, 376(sp)
  FSW ft2, 368(sp)
  FSW ft5, 360(sp)
  FSW ft6, 352(sp)
  FSW ft7, 344(sp)
  FSW ft8, 336(sp)
  FSW ft9, 328(sp)
  FLW ft4, 488(sp)
  FSW ft4, 320(sp)
  FLW ft4, 496(sp)
  FSW ft4, 312(sp)
  FLW ft4, 504(sp)
  FSW ft4, 304(sp)
  FLW ft4, 512(sp)
  FSW ft4, 296(sp)
  FLW ft4, 520(sp)
  FSW ft4, 288(sp)
  FLW ft4, 528(sp)
  FSW ft4, 280(sp)
  FLW ft4, 536(sp)
  FSW ft4, 272(sp)
  FLW ft4, 544(sp)
  FSW ft4, 264(sp)
  FLW ft4, 552(sp)
  FSW ft4, 256(sp)
  FLW ft4, 560(sp)
  FSW ft4, 248(sp)
  FLW ft4, 568(sp)
  FSW ft4, 240(sp)
  FLW ft4, 576(sp)
  FSW ft4, 232(sp)
  FLW ft4, 584(sp)
  FSW ft4, 224(sp)
  FLW ft4, 592(sp)
  FSW ft4, 216(sp)
  FLW ft4, 600(sp)
  FSW ft4, 208(sp)
  FLW ft4, 608(sp)
  FSW ft4, 200(sp)
  FLW ft4, 616(sp)
  FSW ft4, 192(sp)
  FLW ft4, 624(sp)
  FSW ft4, 184(sp)
  FLW ft4, 632(sp)
  FSW ft4, 176(sp)
  FLW ft4, 640(sp)
  FSW ft4, 168(sp)
  FCVT.S.L fs0, zero
  FLW ft4, 640(sp)
  FEQ.S s0, ft4, fs0
  XORI s1, s0, 1
  BNE s1, zero, bb19
  JAL zero, bb21
bb19:
  FLW fs0, 480(sp)
  FLW fs1, 472(sp)
  FADD.S fs2, fs0, fs1
  FLW fs0, 464(sp)
  FADD.S fs1, fs2, fs0
  FLW fs0, 456(sp)
  FADD.S fs2, fs1, fs0
  FLW fs0, 448(sp)
  FLW fs1, 440(sp)
  FADD.S fs3, fs0, fs1
  FLW fs0, 432(sp)
  FADD.S fs1, fs3, fs0
  FLW fs0, 424(sp)
  FADD.S fs3, fs1, fs0
  FLW fs0, 416(sp)
  FLW fs1, 408(sp)
  FADD.S fs4, fs0, fs1
  FLW fs0, 400(sp)
  FADD.S fs1, fs4, fs0
  FLW fs0, 392(sp)
  FADD.S fs4, fs1, fs0
  FLW fs0, 384(sp)
  FLW fs1, 376(sp)
  FADD.S fs5, fs0, fs1
  FLW fs0, 368(sp)
  FADD.S fs1, fs5, fs0
  FLW fs0, 360(sp)
  FADD.S fs5, fs1, fs0
  FLW fs0, 352(sp)
  FLW fs1, 344(sp)
  FADD.S fs6, fs0, fs1
  FLW fs0, 336(sp)
  FADD.S fs1, fs6, fs0
  FLW fs0, 328(sp)
  FADD.S fs6, fs1, fs0
  FLW fs0, 320(sp)
  FLW fs1, 312(sp)
  FADD.S fs7, fs0, fs1
  FLW fs0, 304(sp)
  FADD.S fs1, fs7, fs0
  FLW fs0, 296(sp)
  FADD.S fs7, fs1, fs0
  FLW fs0, 288(sp)
  FLW fs1, 280(sp)
  FADD.S fs8, fs0, fs1
  FLW fs0, 272(sp)
  FADD.S fs1, fs8, fs0
  FLW fs0, 264(sp)
  FADD.S fs8, fs1, fs0
  FLW fs0, 256(sp)
  FLW fs1, 248(sp)
  FADD.S fs9, fs0, fs1
  FLW fs0, 240(sp)
  FADD.S fs1, fs9, fs0
  FLW fs0, 232(sp)
  FADD.S fs9, fs1, fs0
  FLW fs0, 224(sp)
  FLW fs1, 216(sp)
  FADD.S fs10, fs0, fs1
  FLW fs0, 208(sp)
  FADD.S fs1, fs10, fs0
  FLW fs0, 200(sp)
  FADD.S fs10, fs1, fs0
  FLW fs0, 192(sp)
  FLW fs1, 184(sp)
  FADD.S fs11, fs0, fs1
  FLW fs0, 176(sp)
  FADD.S fs1, fs11, fs0
  FLW fs0, 168(sp)
  FADD.S fs11, fs1, fs0
  ADDI t6, sp, 128
  ADD s0, t6, zero
  FSW fs2, 0(s0)
  ADDI s0, sp, 132
  FSW fs3, 0(s0)
  ADDI s0, sp, 136
  FSW fs4, 0(s0)
  ADDI s0, sp, 140
  FSW fs5, 0(s0)
  ADDI s0, sp, 144
  FSW fs6, 0(s0)
  ADDI s0, sp, 148
  FSW fs7, 0(s0)
  ADDI s0, sp, 152
  FSW fs8, 0(s0)
  ADDI s0, sp, 156
  FSW fs9, 0(s0)
  ADDI s0, sp, 160
  FSW fs10, 0(s0)
  ADDI s0, sp, 164
  FSW fs11, 0(s0)
  ADDI a0, zero, 10
  ADDI a1, sp, 128
  ADD a1, a1, zero
  CALL putfarray
  LA s0, k
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  ADDI t5, sp, 128
  ADD s0, t5, s2
  FLW fs0, 0(s0)
  FSGNJ.S fa0, fs0, fs0
  LD s2, 888(sp)
  LD s1, 896(sp)
  FLD fs4, 904(sp)
  FLD fs3, 912(sp)
  FLD fs2, 920(sp)
  FLD fs6, 928(sp)
  FLD fs1, 936(sp)
  FLD fs5, 944(sp)
  FLD fs0, 952(sp)
  FLD fs7, 960(sp)
  LD s0, 968(sp)
  FLD fs8, 976(sp)
  FLD fs9, 984(sp)
  LD ra, 992(sp)
  FLD fs10, 1000(sp)
  FLD fs11, 1008(sp)
  ADDI sp, sp, 1024
  JALR zero, 0(ra)
bb20:
bb21:
  FLW fs0, 472(sp)
  FLW fs1, 464(sp)
  FLW fs2, 456(sp)
  FLW fs3, 448(sp)
  FLW fs4, 440(sp)
  FLW fs5, 432(sp)
  FLW fs6, 424(sp)
  FLW fs7, 416(sp)
  FLW fs8, 408(sp)
  FLW ft4, 400(sp)
  FSW ft4, 880(sp)
  FLW ft4, 392(sp)
  FSW ft4, 872(sp)
  FLW ft4, 384(sp)
  FSW ft4, 864(sp)
  FLW ft4, 376(sp)
  FSW ft4, 648(sp)
  FLW ft4, 368(sp)
  FSW ft4, 656(sp)
  FLW ft4, 360(sp)
  FSW ft4, 664(sp)
  FLW ft4, 352(sp)
  FSW ft4, 672(sp)
  FLW ft4, 344(sp)
  FSW ft4, 680(sp)
  FLW ft4, 336(sp)
  FSW ft4, 688(sp)
  FLW ft4, 328(sp)
  FSW ft4, 696(sp)
  FLW ft4, 320(sp)
  FSW ft4, 704(sp)
  FLW ft4, 312(sp)
  FSW ft4, 712(sp)
  FLW ft4, 304(sp)
  FSW ft4, 720(sp)
  FLW ft4, 296(sp)
  FSW ft4, 728(sp)
  FLW ft4, 288(sp)
  FSW ft4, 736(sp)
  FLW ft4, 280(sp)
  FSW ft4, 744(sp)
  FLW ft4, 272(sp)
  FSW ft4, 752(sp)
  FLW ft4, 264(sp)
  FSW ft4, 760(sp)
  FLW ft4, 256(sp)
  FSW ft4, 768(sp)
  FLW ft4, 248(sp)
  FSW ft4, 776(sp)
  FLW ft4, 240(sp)
  FSW ft4, 784(sp)
  FLW ft4, 232(sp)
  FSW ft4, 792(sp)
  FLW ft4, 224(sp)
  FSW ft4, 800(sp)
  FLW ft4, 216(sp)
  FSW ft4, 808(sp)
  FLW ft4, 208(sp)
  FSW ft4, 816(sp)
  FLW ft4, 200(sp)
  FSW ft4, 824(sp)
  FLW ft4, 192(sp)
  FSW ft4, 832(sp)
  FLW ft4, 184(sp)
  FSW ft4, 840(sp)
  FLW ft4, 176(sp)
  FSW ft4, 848(sp)
  FLW ft4, 168(sp)
  FSW ft4, 856(sp)
  FLW fs11, 480(sp)
  FLW fs10, 472(sp)
  FADD.S fs9, fs11, fs10
  FLW fs10, 464(sp)
  FADD.S fs11, fs9, fs10
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  FSGNJ.S fa2, fs2, fs2
  FSGNJ.S fa3, fs3, fs3
  FSGNJ.S fa4, fs4, fs4
  FSGNJ.S fa5, fs5, fs5
  FSGNJ.S fa6, fs6, fs6
  FSGNJ.S fa7, fs7, fs7
  ADDI t6, sp, 0
  ADD s0, t6, zero
  FSW fs8, 0(s0)
  ADDI s0, sp, 4
  FLW ft4, 880(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 8
  FLW ft4, 872(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 12
  FLW ft4, 864(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 16
  FLW ft4, 648(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 20
  FLW ft4, 656(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 24
  FLW ft4, 664(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 28
  FLW ft4, 672(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 32
  FLW ft4, 680(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 36
  FLW ft4, 688(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 40
  FLW ft4, 696(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 44
  FLW ft4, 704(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 48
  FLW ft4, 712(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 52
  FLW ft4, 720(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 56
  FLW ft4, 728(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 60
  FLW ft4, 736(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 64
  FLW ft4, 744(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 68
  FLW ft4, 752(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 72
  FLW ft4, 760(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 76
  FLW ft4, 768(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 80
  FLW ft4, 776(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 84
  FLW ft4, 784(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 88
  FLW ft4, 792(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 92
  FLW ft4, 800(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 96
  FLW ft4, 808(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 100
  FLW ft4, 816(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 104
  FLW ft4, 824(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 108
  FLW ft4, 832(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 112
  FLW ft4, 840(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 116
  FLW ft4, 848(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 120
  FLW ft4, 856(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 124
  FSW fs11, 0(s0)
  FLW ft4, 880(sp)
  FLW ft3, 872(sp)
  FLW ft4, 864(sp)
  FLW ft3, 648(sp)
  FLW ft4, 656(sp)
  FLW ft3, 664(sp)
  FLW ft4, 672(sp)
  FLW ft3, 680(sp)
  FLW ft4, 688(sp)
  FLW ft3, 696(sp)
  FLW ft4, 704(sp)
  FLW ft3, 712(sp)
  FLW ft4, 720(sp)
  FLW ft3, 728(sp)
  FLW ft4, 736(sp)
  FLW ft3, 744(sp)
  FLW ft4, 752(sp)
  FLW ft3, 760(sp)
  FLW ft4, 768(sp)
  FLW ft3, 776(sp)
  FLW ft4, 784(sp)
  FLW ft3, 792(sp)
  FLW ft4, 800(sp)
  FLW ft3, 808(sp)
  FLW ft4, 816(sp)
  FLW ft3, 824(sp)
  FLW ft4, 832(sp)
  FLW ft3, 840(sp)
  FLW ft4, 848(sp)
  FLW ft3, 856(sp)
  CALL params_f40
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  LD s2, 888(sp)
  LD s1, 896(sp)
  FLD fs4, 904(sp)
  FLD fs3, 912(sp)
  FLD fs2, 920(sp)
  FLD fs6, 928(sp)
  FLD fs1, 936(sp)
  FLD fs5, 944(sp)
  FLD fs0, 952(sp)
  FLD fs7, 960(sp)
  LD s0, 968(sp)
  FLD fs8, 976(sp)
  FLD fs9, 984(sp)
  LD ra, 992(sp)
  FLD fs10, 1000(sp)
  FLD fs11, 1008(sp)
  ADDI sp, sp, 1024
  JALR zero, 0(ra)
params_mix:
  ADDI sp, sp, -1248
  SD s5, 1048(sp)
  SD s4, 1056(sp)
  SD s9, 1064(sp)
  SD s10, 1072(sp)
  SD s11, 1080(sp)
  FSD fs11, 1088(sp)
  FSD fs8, 1096(sp)
  FSD fs7, 1104(sp)
  FSD fs6, 1112(sp)
  SD s3, 1120(sp)
  FSD fs1, 1128(sp)
  SD s1, 1136(sp)
  FSD fs0, 1144(sp)
  FSD fs9, 1152(sp)
  SD s0, 1160(sp)
  SD s2, 1168(sp)
  FSD fs2, 1176(sp)
  SD s7, 1184(sp)
  FSD fs3, 1192(sp)
  SD s8, 1200(sp)
  SD s6, 1208(sp)
  FSD fs10, 1216(sp)
  SD ra, 1224(sp)
  FSD fs4, 1232(sp)
  FSD fs5, 1240(sp)
  FSGNJ.D fs0, fa0, fa0
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  FSGNJ.D fs1, fa1, fa1
  ADD s3, a3, zero
  FSGNJ.D fs2, fa2, fa2
  FSGNJ.D fs3, fa3, fa3
  ADD t4, a4, zero
  SD t4, 880(sp)
  ADD t4, a5, zero
  SD t4, 856(sp)
  ADD s6, a6, zero
  ADD s7, a7, zero
  ADDI t5, sp, 1248
  ADD s8, t5, zero
  LD t4, 0(s8)
  SD t4, 824(sp)
  ADDI s8, sp, 1256
  LD t4, 0(s8)
  SD t4, 808(sp)
  ADDI s8, sp, 1264
  LD t4, 0(s8)
  SD t4, 792(sp)
  ADDI s8, sp, 1272
  LW ra, 0(s8)
  ADDI s8, sp, 1280
  LD t4, 0(s8)
  SD t4, 784(sp)
  ADDI s8, sp, 1288
  LD t4, 0(s8)
  SD t4, 744(sp)
  FSGNJ.D fs4, fa4, fa4
  FSGNJ.D fs5, fa5, fa5
  FSGNJ.D fs6, fa6, fa6
  ADDI s8, sp, 1296
  LD t4, 0(s8)
  SD t4, 688(sp)
  ADDI s8, sp, 1304
  LW t2, 0(s8)
  FSGNJ.D fs7, fa7, fa7
  ADDI s8, sp, 1308
  FLW fs8, 0(s8)
  ADDI s8, sp, 1312
  FLW fs9, 0(s8)
  ADDI s8, sp, 1320
  LD t4, 0(s8)
  SD t4, 696(sp)
  ADDI s8, sp, 1328
  LD t4, 0(s8)
  SD t4, 704(sp)
  ADDI s8, sp, 1336
  LD t4, 0(s8)
  SD t4, 712(sp)
  ADDI s8, sp, 1344
  LD t4, 0(s8)
  SD t4, 720(sp)
  ADDI s8, sp, 1352
  LD t4, 0(s8)
  SD t4, 728(sp)
  ADDI s8, sp, 1360
  FLW fs10, 0(s8)
  ADDI s8, sp, 1364
  FLW fs11, 0(s8)
  ADDI s8, sp, 1368
  LD t4, 0(s8)
  SD t4, 736(sp)
  ADDI s8, sp, 1376
  LW t1, 0(s8)
  ADDI s8, sp, 1384
  LD t4, 0(s8)
  SD t4, 752(sp)
  ADDI s8, sp, 1392
  LD t4, 0(s8)
  SD t4, 760(sp)
  ADDI s8, sp, 1400
  FLW ft0, 0(s8)
  ADDI s8, sp, 1404
  FLW ft1, 0(s8)
  ADDI s8, sp, 1408
  LD t4, 0(s8)
  SD t4, 768(sp)
  ADDI s8, sp, 1416
  LD t4, 0(s8)
  SD t4, 776(sp)
  ADDI s8, sp, 1424
  LW t0, 0(s8)
  ADDI s8, sp, 1428
  LW s11, 0(s8)
  ADDI s8, sp, 1432
  FLW ft2, 0(s8)
  ADDI s8, sp, 1436
  FLW ft5, 0(s8)
  ADDI s8, sp, 1440
  LD t4, 0(s8)
  SD t4, 800(sp)
  ADDI s8, sp, 1448
  LW s10, 0(s8)
  ADDI s8, sp, 1456
  LD t4, 0(s8)
  SD t4, 816(sp)
  ADDI s8, sp, 1464
  LW s9, 0(s8)
  ADDI s8, sp, 1472
  LD t4, 0(s8)
  SD t4, 832(sp)
  ADDI s8, sp, 1480
  LD t4, 0(s8)
  SD t4, 840(sp)
  ADDI s8, sp, 1488
  FLW ft6, 0(s8)
  ADDI s8, sp, 1492
  FLW ft7, 0(s8)
  ADDI s8, sp, 1496
  LD t4, 0(s8)
  SD t4, 848(sp)
  ADDI s8, sp, 1504
  LW t4, 0(s8)
  SW t4, 928(sp)
  ADDI s8, sp, 1512
  LD t4, 0(s8)
  SD t4, 864(sp)
  ADDI s8, sp, 1520
  LD t4, 0(s8)
  SD t4, 872(sp)
  ADDI s8, sp, 1528
  FLW ft4, 0(s8)
  FSW ft4, 944(sp)
  ADDI s8, sp, 1532
  LW t4, 0(s8)
  SW t4, 920(sp)
  ADDI s8, sp, 1536
  FLW ft4, 0(s8)
  FSW ft4, 936(sp)
  ADDI s8, sp, 1544
  LD t4, 0(s8)
  SD t4, 888(sp)
  ADDI s8, sp, 1552
  LD t4, 0(s8)
  SD t4, 896(sp)
  ADDI s8, sp, 1560
  FLW ft4, 0(s8)
  FSW ft4, 904(sp)
  ADDI s8, sp, 1564
  LW t4, 0(s8)
  SW t4, 912(sp)
  FSW fs0, 680(sp)
  SW s1, 672(sp)
  FSW fs1, 664(sp)
  SW s3, 656(sp)
  FSW fs2, 648(sp)
  FSW fs3, 640(sp)
  SW s6, 632(sp)
  SW s7, 624(sp)
  SW ra, 616(sp)
  FSW fs4, 608(sp)
  FSW fs5, 600(sp)
  FSW fs6, 592(sp)
  SW t2, 584(sp)
  FSW fs7, 576(sp)
  FSW fs8, 568(sp)
  FSW fs9, 560(sp)
  FSW fs10, 552(sp)
  FSW fs11, 544(sp)
  SW t1, 536(sp)
  FSW ft0, 528(sp)
  FSW ft1, 520(sp)
  SW t0, 512(sp)
  SW s11, 504(sp)
  FSW ft2, 496(sp)
  FSW ft5, 488(sp)
  SW s10, 480(sp)
  SW s9, 472(sp)
  FSW ft6, 464(sp)
  FSW ft7, 456(sp)
  LW t4, 928(sp)
  SW t4, 448(sp)
  FLW ft4, 944(sp)
  FSW ft4, 440(sp)
  LW t4, 920(sp)
  SW t4, 432(sp)
  FLW ft4, 936(sp)
  FSW ft4, 424(sp)
  FLW ft4, 904(sp)
  FSW ft4, 416(sp)
  LW t4, 912(sp)
  SW t4, 408(sp)
  LA s8, k
  LW s4, 0(s8)
  ADDI s8, zero, 4
  MULW s5, s4, s8
  ADD s4, s2, s5
  FLW ft9, 0(s4)
  FADD.S ft8, fs0, ft9
  FADD.S fs0, ft8, fs1
  FADD.S fs1, fs0, fs2
  LA s2, k
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s5, s4, s2
  LD t4, 880(sp)
  ADD s2, t4, s5
  FLW fs0, 0(s2)
  FADD.S fs2, fs3, fs0
  LA s2, k
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s5, s4, s2
  LD t4, 824(sp)
  ADD s2, t4, s5
  FLW fs0, 0(s2)
  FADD.S fs3, fs2, fs0
  LA s2, k
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s5, s4, s2
  LD t4, 784(sp)
  ADD s2, t4, s5
  FLW fs0, 0(s2)
  FADD.S fs2, fs3, fs0
  LA s2, k
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s5, s4, s2
  LD t4, 744(sp)
  ADD s2, t4, s5
  FLW fs0, 0(s2)
  FADD.S fs3, fs0, fs4
  FADD.S fs0, fs3, fs5
  FADD.S fs3, fs0, fs6
  LA s2, k
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s5, s4, s2
  LD t4, 688(sp)
  ADD s2, t4, s5
  FLW fs0, 0(s2)
  FADD.S fs4, fs0, fs7
  FADD.S fs0, fs4, fs8
  FADD.S fs4, fs0, fs9
  LA s2, k
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s5, s4, s2
  LD t4, 704(sp)
  ADD s2, t4, s5
  FLW fs0, 0(s2)
  LA s2, k
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s5, s4, s2
  LD t4, 728(sp)
  ADD s2, t4, s5
  FLW fs5, 0(s2)
  FADD.S fs6, fs0, fs5
  FADD.S fs0, fs6, fs10
  FADD.S fs5, fs0, fs11
  LA s2, k
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s5, s4, s2
  LD t4, 752(sp)
  ADD s2, t4, s5
  FLW fs0, 0(s2)
  LA s2, k
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s5, s4, s2
  LD t4, 760(sp)
  ADD s2, t4, s5
  FLW fs6, 0(s2)
  FADD.S fs7, fs0, fs6
  FADD.S fs0, fs7, ft0
  FADD.S fs6, fs0, ft1
  FADD.S fs0, ft2, ft5
  LA s2, k
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s5, s4, s2
  LD t4, 816(sp)
  ADD s2, t4, s5
  FLW fs7, 0(s2)
  FADD.S fs8, fs0, fs7
  FADD.S fs0, fs8, ft6
  LA s2, k
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s5, s4, s2
  LD t4, 848(sp)
  ADD s2, t4, s5
  FLW fs7, 0(s2)
  FADD.S fs8, ft7, fs7
  LA s2, k
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s5, s4, s2
  LD t4, 872(sp)
  ADD s2, t4, s5
  FLW fs7, 0(s2)
  FADD.S fs9, fs8, fs7
  FLW ft4, 944(sp)
  FADD.S fs7, fs9, ft4
  LA s2, k
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s5, s4, s2
  LD t4, 888(sp)
  ADD s2, t4, s5
  FLW fs8, 0(s2)
  FLW ft4, 936(sp)
  FADD.S fs9, ft4, fs8
  LA s2, k
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s5, s4, s2
  LD t4, 896(sp)
  ADD s2, t4, s5
  FLW fs8, 0(s2)
  FADD.S fs10, fs9, fs8
  FLW ft4, 904(sp)
  FADD.S fs8, fs10, ft4
  ADDI t6, sp, 368
  ADD s2, t6, zero
  FSW fs1, 0(s2)
  ADDI s2, sp, 372
  FSW fs2, 0(s2)
  ADDI s2, sp, 376
  FSW fs3, 0(s2)
  ADDI s2, sp, 380
  FSW fs4, 0(s2)
  ADDI s2, sp, 384
  FSW fs5, 0(s2)
  ADDI s2, sp, 388
  FSW fs6, 0(s2)
  ADDI s2, sp, 392
  FSW fs0, 0(s2)
  ADDI s2, sp, 396
  FSW fs7, 0(s2)
  ADDI s2, sp, 400
  FSW fs8, 0(s2)
  ADDI s2, sp, 404
  LA s4, .CONSTANT.7.0
  FLW fs0, 0(s4)
  FSW fs0, 0(s2)
  LA s2, k
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s5, s4, s2
  ADD s2, s0, s5
  LW s0, 0(s2)
  ADDW s2, s0, s1
  ADDW s0, s2, s3
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  LD t4, 856(sp)
  ADD s1, t4, s3
  LW s2, 0(s1)
  ADDW s1, s2, s6
  ADDW s2, s1, s7
  LA s1, k
  LW s3, 0(s1)
  ADDI s1, zero, 4
  MULW s4, s3, s1
  LD t4, 808(sp)
  ADD s1, t4, s4
  LW s3, 0(s1)
  LA s1, k
  LW s4, 0(s1)
  ADDI s1, zero, 4
  MULW s5, s4, s1
  LD t4, 792(sp)
  ADD s1, t4, s5
  LW s4, 0(s1)
  ADDW s1, s3, s4
  ADDW s3, s1, ra
  LA s1, k
  LW s4, 0(s1)
  ADDI s1, zero, 4
  MULW s5, s4, s1
  LD t4, 696(sp)
  ADD s1, t4, s5
  LW s4, 0(s1)
  ADDW s1, t2, s4
  LA s4, k
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MULW s6, s5, s4
  LD t4, 712(sp)
  ADD s4, t4, s6
  LW s5, 0(s4)
  ADDW s4, s1, s5
  LA s1, k
  LW s5, 0(s1)
  ADDI s1, zero, 4
  MULW s6, s5, s1
  LD t4, 720(sp)
  ADD s1, t4, s6
  LW s5, 0(s1)
  LA s1, k
  LW s6, 0(s1)
  ADDI s1, zero, 4
  MULW s7, s6, s1
  LD t4, 736(sp)
  ADD s1, t4, s7
  LW s6, 0(s1)
  ADDW s1, s5, s6
  ADDW s5, s1, t1
  LA s1, k
  LW s6, 0(s1)
  ADDI s1, zero, 4
  MULW s7, s6, s1
  LD t4, 768(sp)
  ADD s1, t4, s7
  LW s6, 0(s1)
  LA s1, k
  LW s7, 0(s1)
  ADDI s1, zero, 4
  MULW s8, s7, s1
  LD t4, 776(sp)
  ADD s1, t4, s8
  LW s7, 0(s1)
  ADDW s1, s6, s7
  ADDW s6, s1, t0
  LA s1, k
  LW s7, 0(s1)
  ADDI s1, zero, 4
  MULW s8, s7, s1
  LD t4, 800(sp)
  ADD s1, t4, s8
  LW s7, 0(s1)
  ADDW s1, s11, s7
  ADDW s7, s1, s10
  LA s1, k
  LW s8, 0(s1)
  ADDI s1, zero, 4
  MULW s10, s8, s1
  LD t4, 832(sp)
  ADD s1, t4, s10
  LW s8, 0(s1)
  ADDW s1, s9, s8
  LA s8, k
  LW s9, 0(s8)
  ADDI s8, zero, 4
  MULW s10, s9, s8
  LD t4, 840(sp)
  ADD s8, t4, s10
  LW s9, 0(s8)
  ADDW s8, s1, s9
  LA s1, k
  LW s9, 0(s1)
  ADDI s1, zero, 4
  MULW s10, s9, s1
  LD t4, 864(sp)
  ADD s1, t4, s10
  LW s9, 0(s1)
  LW t4, 928(sp)
  ADDW s1, t4, s9
  LW t4, 920(sp)
  ADDW s9, s1, t4
  LW t4, 912(sp)
  ADDW s1, s9, t4
  ADDI t5, sp, 328
  ADD s9, t5, zero
  SW s0, 0(s9)
  ADDI s0, sp, 332
  SW s2, 0(s0)
  ADDI s0, sp, 336
  SW s3, 0(s0)
  ADDI s0, sp, 340
  SW s4, 0(s0)
  ADDI s0, sp, 344
  SW s5, 0(s0)
  ADDI s0, sp, 348
  SW s6, 0(s0)
  ADDI s0, sp, 352
  SW s7, 0(s0)
  ADDI s0, sp, 356
  SW s8, 0(s0)
  ADDI s0, sp, 360
  SW s1, 0(s0)
  ADDI s0, sp, 364
  SW zero, 0(s0)
  LW t4, 912(sp)
  XOR s0, t4, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb23
  JAL zero, bb25
bb23:
  ADDI a0, zero, 10
  ADDI a1, sp, 368
  ADD a1, a1, zero
  CALL putfarray
  ADDI a0, zero, 10
  ADDI a1, sp, 328
  ADD a1, a1, zero
  CALL putarray
  SW zero, 320(sp)
  JAL zero, bb26
bb24:
bb25:
  FLW fs0, 680(sp)
  LW s0, 672(sp)
  FLW fs1, 664(sp)
  LW s1, 656(sp)
  FLW fs2, 648(sp)
  FLW fs3, 640(sp)
  LW s2, 632(sp)
  LW s3, 624(sp)
  LW s4, 616(sp)
  FLW fs4, 608(sp)
  FLW fs5, 600(sp)
  FLW fs6, 592(sp)
  LW s5, 584(sp)
  FLW fs7, 576(sp)
  FLW fs8, 568(sp)
  FLW fs9, 560(sp)
  FLW fs10, 552(sp)
  FLW ft4, 544(sp)
  FSW ft4, 1040(sp)
  LW s6, 536(sp)
  FLW ft4, 528(sp)
  FSW ft4, 952(sp)
  FLW ft4, 520(sp)
  FSW ft4, 960(sp)
  LW s7, 512(sp)
  LW s8, 504(sp)
  FLW ft4, 496(sp)
  FSW ft4, 968(sp)
  FLW ft4, 488(sp)
  FSW ft4, 976(sp)
  LW s9, 480(sp)
  LW s10, 472(sp)
  FLW ft4, 464(sp)
  FSW ft4, 984(sp)
  FLW ft4, 456(sp)
  FSW ft4, 992(sp)
  LW t4, 448(sp)
  SW t4, 1024(sp)
  FLW ft4, 440(sp)
  FSW ft4, 1000(sp)
  LW t4, 432(sp)
  SW t4, 1008(sp)
  FLW ft4, 424(sp)
  FSW ft4, 1016(sp)
  LW s11, 408(sp)
  FCVT.S.W ft4, s11
  FSW ft4, 1032(sp)
  FLW fs11, 416(sp)
  FCVT.W.S s11, fs11, rtz
  FSGNJ.S fa0, fs0, fs0
  ADDI a0, sp, 328
  ADD a0, a0, zero
  ADD a1, s0, zero
  ADDI a2, sp, 368
  ADD a2, a2, zero
  FSGNJ.S fa1, fs1, fs1
  ADD a3, s1, zero
  FSGNJ.S fa2, fs2, fs2
  FSGNJ.S fa3, fs3, fs3
  LD t4, 880(sp)
  ADD a4, t4, zero
  LD t4, 856(sp)
  ADD a5, t4, zero
  ADD a6, s2, zero
  ADD a7, s3, zero
  ADDI t6, sp, 0
  ADD s0, t6, zero
  LD t4, 824(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 8
  LD t4, 808(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 16
  LD t4, 792(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 24
  SW s4, 0(s0)
  ADDI s0, sp, 32
  LD t4, 784(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 40
  LD t4, 744(sp)
  SD t4, 0(s0)
  FSGNJ.S fa4, fs4, fs4
  FSGNJ.S fa5, fs5, fs5
  FSGNJ.S fa6, fs6, fs6
  ADDI s0, sp, 48
  LD t4, 688(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 56
  SW s5, 0(s0)
  FSGNJ.S fa7, fs7, fs7
  ADDI s0, sp, 60
  FSW fs8, 0(s0)
  ADDI s0, sp, 64
  FSW fs9, 0(s0)
  ADDI s0, sp, 72
  LD t4, 696(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 80
  LD t4, 704(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 88
  LD t4, 712(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 96
  LD t4, 720(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 104
  LD t4, 728(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 112
  FSW fs10, 0(s0)
  ADDI s0, sp, 116
  FLW ft4, 1040(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 120
  LD t4, 736(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 128
  SW s6, 0(s0)
  ADDI s0, sp, 136
  LD t4, 752(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 144
  LD t4, 760(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 152
  FLW ft4, 952(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 156
  FLW ft4, 960(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 160
  LD t4, 768(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 168
  LD t4, 776(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 176
  SW s7, 0(s0)
  ADDI s0, sp, 180
  SW s8, 0(s0)
  ADDI s0, sp, 184
  FLW ft4, 968(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 188
  FLW ft4, 976(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 192
  LD t4, 800(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 200
  SW s9, 0(s0)
  ADDI s0, sp, 208
  LD t4, 816(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 216
  SW s10, 0(s0)
  ADDI s0, sp, 224
  LD t4, 832(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 232
  LD t4, 840(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 240
  FLW ft4, 984(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 244
  FLW ft4, 992(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 248
  LD t4, 848(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 256
  LW t4, 1024(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 264
  LD t4, 864(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 272
  LD t4, 872(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 280
  FLW ft4, 1000(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 284
  LW t4, 1008(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 288
  FLW ft4, 1016(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 296
  LD t4, 888(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 304
  LD t4, 896(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 312
  FLW ft4, 1032(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 316
  SW s11, 0(s0)
  LD t4, 824(sp)
  LD t3, 808(sp)
  LD t4, 792(sp)
  LD t3, 784(sp)
  LD t4, 744(sp)
  LD t3, 688(sp)
  LD t4, 696(sp)
  LD t3, 704(sp)
  LD t4, 712(sp)
  LD t3, 720(sp)
  LD t4, 728(sp)
  FLW ft4, 1040(sp)
  LD t3, 736(sp)
  LD t4, 752(sp)
  LD t3, 760(sp)
  FLW ft3, 952(sp)
  FLW ft4, 960(sp)
  LD t4, 768(sp)
  LD t3, 776(sp)
  FLW ft3, 968(sp)
  FLW ft4, 976(sp)
  LD t4, 800(sp)
  LD t3, 816(sp)
  LD t4, 832(sp)
  LD t3, 840(sp)
  FLW ft3, 984(sp)
  FLW ft4, 992(sp)
  LD t4, 848(sp)
  LW t3, 1024(sp)
  LD t4, 864(sp)
  LD t3, 872(sp)
  FLW ft3, 1000(sp)
  LW t4, 1008(sp)
  FLW ft4, 1016(sp)
  LD t3, 888(sp)
  LD t4, 896(sp)
  FLW ft3, 1032(sp)
  CALL params_mix
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD s5, 1048(sp)
  LD s4, 1056(sp)
  LD s9, 1064(sp)
  LD s10, 1072(sp)
  LD s11, 1080(sp)
  FLD fs11, 1088(sp)
  FLD fs8, 1096(sp)
  FLD fs7, 1104(sp)
  FLD fs6, 1112(sp)
  LD s3, 1120(sp)
  FLD fs1, 1128(sp)
  LD s1, 1136(sp)
  FLD fs0, 1144(sp)
  FLD fs9, 1152(sp)
  LD s0, 1160(sp)
  LD s2, 1168(sp)
  FLD fs2, 1176(sp)
  LD s7, 1184(sp)
  FLD fs3, 1192(sp)
  LD s8, 1200(sp)
  LD s6, 1208(sp)
  FLD fs10, 1216(sp)
  LD ra, 1224(sp)
  FLD fs4, 1232(sp)
  FLD fs5, 1240(sp)
  ADDI sp, sp, 1248
  JALR zero, 0(ra)
bb26:
  LW s0, 320(sp)
  SLTI s1, s0, 10
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb27
  JAL zero, bb28
bb27:
  LW s0, 320(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 328
  ADD s0, t5, s2
  LW s1, 320(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t6, sp, 328
  ADD s1, t6, s3
  LW s2, 0(s1)
  LW s1, 320(sp)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADDI t5, sp, 368
  ADD s1, t5, s4
  FLW fs0, 0(s1)
  FCVT.S.W fs1, s2
  FSUB.S fs2, fs1, fs0
  FCVT.W.S s1, fs2, rtz
  SW s1, 0(s0)
  LW s0, 320(sp)
  ADDIW s1, s0, 1
  SW s1, 320(sp)
  JAL zero, bb26
bb28:
  LA s0, k
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  ADDI t6, sp, 328
  ADD s0, t6, s2
  LW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s2, zero, 8
  MULW s3, s0, s2
  ADDI t5, sp, 368
  ADD s0, t5, s3
  FLW fs0, 0(s0)
  FCVT.S.W fs1, s1
  FMUL.S fs2, fs1, fs0
  FCVT.W.S s0, fs2, rtz
  ADD a0, s0, zero
  LD s5, 1048(sp)
  LD s4, 1056(sp)
  LD s9, 1064(sp)
  LD s10, 1072(sp)
  LD s11, 1080(sp)
  FLD fs11, 1088(sp)
  FLD fs8, 1096(sp)
  FLD fs7, 1104(sp)
  FLD fs6, 1112(sp)
  LD s3, 1120(sp)
  FLD fs1, 1128(sp)
  LD s1, 1136(sp)
  FLD fs0, 1144(sp)
  FLD fs9, 1152(sp)
  LD s0, 1160(sp)
  LD s2, 1168(sp)
  FLD fs2, 1176(sp)
  LD s7, 1184(sp)
  FLD fs3, 1192(sp)
  LD s8, 1200(sp)
  LD s6, 1208(sp)
  FLD fs10, 1216(sp)
  LD ra, 1224(sp)
  FLD fs4, 1232(sp)
  FLD fs5, 1240(sp)
  ADDI sp, sp, 1248
  JALR zero, 0(ra)
