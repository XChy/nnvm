.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -1456
  SD ra, 1016(sp)
  SD s0, 1024(sp)
  SD s1, 1032(sp)
  SD s2, 1040(sp)
  SD s3, 1048(sp)
  SD s4, 1056(sp)
  SD s5, 1064(sp)
  SD s6, 1072(sp)
  SD s7, 1080(sp)
  SD s8, 1088(sp)
  SD s9, 1096(sp)
  SD s10, 1104(sp)
  SD s11, 1112(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 376(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 380(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 384(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 388(sp)
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
  ADD s0, a0, zero
  SW s0, 864(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 860(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 856(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 852(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 848(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 844(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 780(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 836(sp)
  CALL getint
  SW a0, 832(sp)
  LW a0, 376(sp)
  SW a0, 1120(sp)
  LW a0, 380(sp)
  SW a0, 1124(sp)
  LW a0, 384(sp)
  SW a0, 1128(sp)
  LW a0, 388(sp)
  SW a0, 1132(sp)
  LW a0, 876(sp)
  SW a0, 1136(sp)
  LW a0, 872(sp)
  SW a0, 1140(sp)
  LW a0, 868(sp)
  SW a0, 1144(sp)
  LW a0, 864(sp)
  SW a0, 1148(sp)
  LW a0, 860(sp)
  SW a0, 1152(sp)
  LW a0, 856(sp)
  SW a0, 1156(sp)
  LW a0, 852(sp)
  SW a0, 1160(sp)
  LW a0, 848(sp)
  SW a0, 1164(sp)
  LW a0, 844(sp)
  SW a0, 1168(sp)
  LW a0, 780(sp)
  SW a0, 1172(sp)
  LW a0, 836(sp)
  SW a0, 1176(sp)
  LW a0, 832(sp)
  SW a0, 1180(sp)
  ADD s10, zero, zero
  ADD s9, zero, zero
  # implict jump to bb1
bb1:   # loop depth 1
  ADDIW a0, s10, 1
  SW a0, 20(sp)
  LW a0, 20(sp)
  SLTI a0, a0, 16
  SB a0, 2(sp)
  LB a0, 2(sp)
  BNE a0, zero, bb15
  # implict jump to bb2
bb2:   # loop depth 1
  # implict jump to bb3
bb3:   # loop depth 1
  LW a0, 20(sp)
  SLTI s10, a0, 15
  BNE s10, zero, bb14
  # implict jump to bb4
bb4:   # loop depth 0
  LW a0, 1120(sp)
  SW a0, 24(sp)
  LW a0, 1124(sp)
  SW a0, 28(sp)
  LW a0, 1128(sp)
  SW a0, 32(sp)
  LW a0, 1132(sp)
  SW a0, 8(sp)
  LW a0, 1136(sp)
  SW a0, 40(sp)
  LW a0, 1140(sp)
  SW a0, 44(sp)
  LW a0, 1144(sp)
  SW a0, 48(sp)
  LW a0, 1148(sp)
  SW a0, 52(sp)
  LW a0, 1152(sp)
  SW a0, 540(sp)
  LW a0, 1156(sp)
  SW a0, 600(sp)
  LW a0, 1160(sp)
  SW a0, 776(sp)
  LW a0, 1164(sp)
  SW a0, 772(sp)
  LW a0, 1168(sp)
  SW a0, 768(sp)
  LW a0, 1172(sp)
  SW a0, 764(sp)
  LW a0, 1176(sp)
  SW a0, 760(sp)
  LW a0, 1180(sp)
  SW a0, 756(sp)
  LW a0, 24(sp)
  SLTIU a0, a0, 1
  SB a0, 0(sp)
  LB a0, 0(sp)
  BNE a0, zero, bb13
  # implict jump to bb5
bb5:   # loop depth 0
  LW a0, 24(sp)
  SW a0, 752(sp)
  LW a0, 28(sp)
  SW a0, 748(sp)
  LW a0, 32(sp)
  SW a0, 744(sp)
  LW a0, 8(sp)
  SW a0, 740(sp)
  LW a0, 40(sp)
  SW a0, 736(sp)
  LW a0, 44(sp)
  SW a0, 732(sp)
  LW a0, 48(sp)
  SW a0, 728(sp)
  LW a0, 52(sp)
  SW a0, 724(sp)
  LW a0, 540(sp)
  SW a0, 660(sp)
  LW a0, 600(sp)
  SW a0, 716(sp)
  LW a0, 776(sp)
  SW a0, 712(sp)
  LW a0, 772(sp)
  SW a0, 708(sp)
  LW a0, 768(sp)
  SW a0, 144(sp)
  LW a0, 764(sp)
  SW a0, 148(sp)
  LW a0, 760(sp)
  SW a0, 152(sp)
  LW a0, 756(sp)
  SW a0, 368(sp)
  LW a0, 376(sp)
  SW a0, 336(sp)
  LW a0, 380(sp)
  SW a0, 156(sp)
  LW a0, 384(sp)
  SW a0, 160(sp)
  LW a0, 388(sp)
  SW a0, 164(sp)
  LW a0, 876(sp)
  SW a0, 168(sp)
  LW a0, 872(sp)
  SW a0, 136(sp)
  LW a0, 868(sp)
  SW a0, 176(sp)
  LW a0, 864(sp)
  SW a0, 180(sp)
  LW s0, 860(sp)
  LW a0, 856(sp)
  SW a0, 704(sp)
  LW a0, 852(sp)
  SW a0, 700(sp)
  LW a0, 848(sp)
  SW a0, 696(sp)
  LW a0, 844(sp)
  SW a0, 692(sp)
  LW a0, 780(sp)
  SW a0, 688(sp)
  LW a0, 836(sp)
  SW a0, 684(sp)
  LW a0, 832(sp)
  SW a0, 680(sp)
  # implict jump to bb6
bb6:   # loop depth 1
  LW a0, 680(sp)
  SW a0, 544(sp)
  LW a0, 684(sp)
  SW a0, 548(sp)
  LW a0, 688(sp)
  SW a0, 552(sp)
  LW a0, 692(sp)
  SW a0, 556(sp)
  LW a0, 696(sp)
  SW a0, 560(sp)
  LW a0, 700(sp)
  SW a0, 564(sp)
  LW a0, 704(sp)
  SW a0, 568(sp)
  SW s0, 572(sp)
  LW a0, 180(sp)
  SW a0, 576(sp)
  LW a0, 176(sp)
  SW a0, 580(sp)
  LW a0, 136(sp)
  SW a0, 584(sp)
  LW a0, 168(sp)
  SW a0, 588(sp)
  LW a0, 164(sp)
  SW a0, 592(sp)
  LW a0, 160(sp)
  SW a0, 596(sp)
  LW a0, 156(sp)
  SW a0, 536(sp)
  LW a0, 336(sp)
  SW a0, 604(sp)
  LW a0, 368(sp)
  SW a0, 608(sp)
  LW a0, 152(sp)
  SW a0, 612(sp)
  LW a0, 148(sp)
  SW a0, 616(sp)
  LW a0, 144(sp)
  SW a0, 620(sp)
  LW a0, 708(sp)
  SW a0, 664(sp)
  LW a0, 664(sp)
  SW a0, 664(sp)
  LW s0, 712(sp)
  SW s0, 68(sp)
  LW s0, 716(sp)
  SW s0, 100(sp)
  LW s0, 660(sp)
  SW s0, 96(sp)
  LW s0, 724(sp)
  SW s0, 92(sp)
  LW s0, 728(sp)
  SW s0, 88(sp)
  LW s0, 732(sp)
  SW s0, 84(sp)
  LW s0, 736(sp)
  SW s0, 80(sp)
  LW s0, 740(sp)
  SW s0, 76(sp)
  LW a0, 744(sp)
  SW a0, 668(sp)
  LW a0, 668(sp)
  SW a0, 668(sp)
  LW s0, 748(sp)
  SW s0, 72(sp)
  LW s0, 752(sp)
  SW s0, 472(sp)
  ADDI s0, zero, 1
  SW s0, 884(sp)
  LW s0, 884(sp)
  LW s1, 472(sp)
  SUBW s0, s1, s0
  SW s0, 16(sp)
  LW s0, 72(sp)
  LW a0, 668(sp)
  ADDW s11, s0, a0
  LUI s0, 243712
  SW s0, 880(sp)
  LW s0, 880(sp)
  ADDIW s0, s0, 1
  SW s0, 880(sp)
  LW s0, 880(sp)
  REMW s11, s11, s0
  LW s0, 16(sp)
  SLTIU s0, s0, 1
  SB s0, 5(sp)
  LB s0, 5(sp)
  BNE s0, zero, bb8
  # implict jump to bb7
bb7:   # loop depth 1
  LW s0, 16(sp)
  SW s0, 752(sp)
  SW s11, 748(sp)
  LW s0, 76(sp)
  SW s0, 744(sp)
  LW s0, 80(sp)
  SW s0, 740(sp)
  LW s0, 84(sp)
  SW s0, 736(sp)
  LW s0, 88(sp)
  SW s0, 732(sp)
  LW s0, 92(sp)
  SW s0, 728(sp)
  LW s0, 96(sp)
  SW s0, 724(sp)
  LW s0, 100(sp)
  SW s0, 660(sp)
  LW s0, 68(sp)
  SW s0, 716(sp)
  LW a0, 664(sp)
  SW a0, 664(sp)
  LW a0, 664(sp)
  SW a0, 712(sp)
  LW a0, 620(sp)
  SW a0, 708(sp)
  LW a0, 616(sp)
  SW a0, 144(sp)
  LW a0, 612(sp)
  SW a0, 148(sp)
  LW a0, 608(sp)
  SW a0, 152(sp)
  LW a0, 604(sp)
  SW a0, 368(sp)
  LW a0, 536(sp)
  SW a0, 336(sp)
  LW a0, 596(sp)
  SW a0, 156(sp)
  LW a0, 592(sp)
  SW a0, 160(sp)
  LW a0, 588(sp)
  SW a0, 164(sp)
  LW a0, 584(sp)
  SW a0, 168(sp)
  LW a0, 580(sp)
  SW a0, 136(sp)
  LW a0, 576(sp)
  SW a0, 176(sp)
  LW a0, 572(sp)
  SW a0, 180(sp)
  LW s0, 568(sp)
  LW a0, 564(sp)
  SW a0, 704(sp)
  LW a0, 560(sp)
  SW a0, 700(sp)
  LW a0, 556(sp)
  SW a0, 696(sp)
  LW a0, 552(sp)
  SW a0, 692(sp)
  LW a0, 548(sp)
  SW a0, 688(sp)
  LW a0, 544(sp)
  SW a0, 684(sp)
  ADD a0, zero, zero
  SW a0, 680(sp)
  JAL zero, bb6
bb8:   # loop depth 1
  # implict jump to bb9
bb9:   # loop depth 0
  SW s11, 1184(sp)
  LUI a0, 2
  ADDIW a0, a0, 656
  SW a0, 1188(sp)
  ADDI a0, zero, 62
  # implict jump to bb10
bb10:   # loop depth 1
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  ADDIW s0, s0, 8
  ADDI t6, sp, 1184
  ADD s0, t6, s0
  SW zero, 0(s0)
  BNE a0, zero, bb12
  # implict jump to bb11
bb11:   # loop depth 0
  LW a0, 1188(sp)
  ADDI s0, zero, 1
  SUBW s0, a0, s0
  LW s1, 1184(sp)
  ADDI s2, zero, 2
  SUBW s2, s1, s2
  ADDI s3, zero, 3
  SUBW s3, s1, s3
  ADDI s4, zero, 3
  SUBW s4, a0, s4
  ADDI s5, zero, 4
  SUBW s5, a0, s5
  ADDI s6, zero, 5
  SUBW s6, s1, s6
  ADDI s7, zero, 6
  SUBW s7, s1, s7
  ADDI s8, zero, 6
  SUBW s8, a0, s8
  ADDI s9, zero, 7
  SUBW s9, a0, s9
  SW s9, 828(sp)
  ADDI s9, zero, 8
  SUBW s9, s1, s9
  SW s9, 824(sp)
  ADDI s9, zero, 9
  SUBW s9, s1, s9
  SW s9, 820(sp)
  ADDI s9, zero, 9
  SUBW s9, a0, s9
  SW s9, 816(sp)
  ADDI s9, zero, 10
  SUBW s9, a0, s9
  SW s9, 812(sp)
  ADDI s9, zero, 11
  SUBW s9, s1, s9
  SW s9, 808(sp)
  ADDI s9, zero, 12
  SUBW s9, s1, s9
  SW s9, 804(sp)
  ADDI s9, zero, 12
  SUBW s9, a0, s9
  SW s9, 800(sp)
  ADDI s9, zero, 13
  SUBW s9, a0, s9
  SW s9, 796(sp)
  ADDI s9, zero, 14
  SUBW s9, s1, s9
  SW s9, 792(sp)
  ADDI s9, zero, 15
  SUBW s9, s1, s9
  SW s9, 788(sp)
  ADDI s9, zero, 15
  SUBW s9, a0, s9
  SW s9, 784(sp)
  ADDI s9, zero, 16
  SUBW s9, a0, s9
  SW s9, 964(sp)
  ADDI s9, zero, 17
  SUBW s9, s1, s9
  SW s9, 900(sp)
  ADDI s9, zero, 18
  SUBW s9, s1, s9
  SW s9, 968(sp)
  ADDI s9, zero, 18
  SUBW s9, a0, s9
  SW s9, 972(sp)
  ADDI s9, zero, 19
  SUBW s9, a0, s9
  SW s9, 976(sp)
  ADDI s9, zero, 20
  SUBW s9, s1, s9
  SW s9, 980(sp)
  ADDI s9, zero, 21
  SUBW s9, s1, s9
  SW s9, 984(sp)
  ADDI s9, zero, 21
  SUBW s9, a0, s9
  SW s9, 988(sp)
  ADDI s9, zero, 22
  SUBW s9, a0, s9
  SW s9, 992(sp)
  ADDI s9, zero, 23
  SUBW s9, s1, s9
  SW s9, 996(sp)
  ADDI s9, zero, 24
  SUBW s9, s1, s9
  SW s9, 1000(sp)
  ADDI s9, zero, 24
  SUBW s9, a0, s9
  SW s9, 1004(sp)
  ADDI s9, zero, 25
  SUBW s9, a0, s9
  SW s9, 1008(sp)
  ADDI s9, zero, 26
  SUBW s9, s1, s9
  SW s9, 960(sp)
  ADDI s9, zero, 27
  SUBW s9, s1, s9
  SW s9, 1012(sp)
  ADDI s9, zero, 27
  SUBW s9, a0, s9
  SW s9, 956(sp)
  ADDI s9, zero, 28
  SUBW s9, a0, s9
  SW s9, 952(sp)
  ADDI s9, zero, 29
  SUBW s9, s1, s9
  SW s9, 948(sp)
  ADDI s9, zero, 30
  SUBW s9, s1, s9
  SW s9, 944(sp)
  ADDI s9, zero, 30
  SUBW s9, a0, s9
  SW s9, 940(sp)
  ADDI s9, zero, 31
  SUBW s9, a0, s9
  SW s9, 936(sp)
  ADDI s9, zero, 32
  SUBW s9, s1, s9
  SW s9, 932(sp)
  ADDI s9, zero, 33
  SUBW s9, s1, s9
  SW s9, 928(sp)
  ADDI s9, zero, 33
  SUBW s9, a0, s9
  SW s9, 924(sp)
  ADDI s9, zero, 34
  SUBW s9, a0, s9
  SW s9, 920(sp)
  ADDI s9, zero, 35
  SUBW s9, s1, s9
  SW s9, 916(sp)
  ADDI s9, zero, 36
  SUBW s9, s1, s9
  SW s9, 912(sp)
  ADDI s9, zero, 36
  SUBW s9, a0, s9
  SW s9, 908(sp)
  ADDI s9, zero, 37
  SUBW s9, a0, s9
  SW s9, 840(sp)
  ADDI s9, zero, 38
  SUBW s9, s1, s9
  SW s9, 904(sp)
  ADDI s10, zero, 39
  SUBW s9, s1, s10
  SW s9, 656(sp)
  ADDI s11, zero, 39
  SUBW s9, a0, s11
  SW s9, 652(sp)
  ADDI s9, zero, 40
  SW s9, 184(sp)
  LW s9, 184(sp)
  SUBW s9, a0, s9
  SW s9, 648(sp)
  ADDI s9, zero, 41
  SW s9, 188(sp)
  LW s9, 188(sp)
  SUBW s9, s1, s9
  SW s9, 644(sp)
  ADDI s9, zero, 42
  SW s9, 192(sp)
  LW s9, 192(sp)
  SUBW s9, s1, s9
  SW s9, 640(sp)
  ADDI s9, zero, 42
  SW s9, 196(sp)
  LW s9, 196(sp)
  SUBW s9, a0, s9
  SW s9, 636(sp)
  ADDI s9, zero, 43
  SW s9, 200(sp)
  LW s9, 200(sp)
  SUBW s9, a0, s9
  SW s9, 632(sp)
  ADDI s9, zero, 44
  SW s9, 720(sp)
  LW s9, 720(sp)
  SUBW s9, s1, s9
  SW s9, 628(sp)
  ADDI s9, zero, 45
  SW s9, 468(sp)
  LW s9, 468(sp)
  SUBW s9, s1, s9
  SW s9, 624(sp)
  ADDI s9, zero, 45
  SW s9, 896(sp)
  LW s9, 896(sp)
  SUBW s9, a0, s9
  SW s9, 460(sp)
  ADDI s9, zero, 46
  SW s9, 892(sp)
  LW s9, 892(sp)
  SUBW s9, a0, s9
  SW s9, 464(sp)
  ADDI s9, zero, 47
  SW s9, 888(sp)
  LW s9, 888(sp)
  SUBW s9, s1, s9
  SW s9, 260(sp)
  ADDW a0, s1, a0
  ADDW a0, a0, s0
  ADDW a0, a0, s2
  ADDW a0, a0, s3
  ADDW a0, a0, s4
  ADDW a0, a0, s5
  ADDW a0, a0, s6
  ADDW a0, a0, s7
  ADDW a0, a0, s8
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
  LW s0, 792(sp)
  ADDW a0, a0, s0
  LW s0, 788(sp)
  ADDW a0, a0, s0
  LW s0, 784(sp)
  ADDW a0, a0, s0
  LW s0, 964(sp)
  ADDW a0, a0, s0
  LW s0, 900(sp)
  ADDW a0, a0, s0
  LW s0, 968(sp)
  ADDW a0, a0, s0
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
  LW s0, 1004(sp)
  ADDW a0, a0, s0
  LW s0, 1008(sp)
  ADDW a0, a0, s0
  LW s0, 960(sp)
  ADDW a0, a0, s0
  LW s0, 1012(sp)
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
  LW s0, 840(sp)
  ADDW a0, a0, s0
  LW s0, 904(sp)
  ADDW a0, a0, s0
  LW s0, 656(sp)
  ADDW a0, a0, s0
  LW s0, 652(sp)
  ADDW a0, a0, s0
  LW s0, 648(sp)
  ADDW a0, a0, s0
  LW s0, 644(sp)
  ADDW a0, a0, s0
  LW s0, 640(sp)
  ADDW a0, a0, s0
  LW s0, 636(sp)
  ADDW a0, a0, s0
  LW s0, 632(sp)
  ADDW a0, a0, s0
  LW s0, 628(sp)
  ADDW a0, a0, s0
  LW s0, 624(sp)
  ADDW a0, a0, s0
  LW s0, 460(sp)
  ADDW a0, a0, s0
  LW s0, 464(sp)
  ADDW a0, a0, s0
  LW s0, 260(sp)
  ADDW a0, a0, s0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 1016(sp)
  LD s0, 1024(sp)
  LD s1, 1032(sp)
  LD s2, 1040(sp)
  LD s3, 1048(sp)
  LD s4, 1056(sp)
  LD s5, 1064(sp)
  LD s6, 1072(sp)
  LD s7, 1080(sp)
  LD s8, 1088(sp)
  LD s9, 1096(sp)
  LD s10, 1104(sp)
  LD s11, 1112(sp)
  ADDI sp, sp, 1456
  JALR zero, 0(ra)
bb12:   # loop depth 1
  JAL zero, bb10
bb13:   # loop depth 0
  LW s11, 28(sp)
  JAL zero, bb9
bb14:   # loop depth 1
  LW s10, 20(sp)
  JAL zero, bb1
bb15:   # loop depth 1
  SLLIW s10, s10, 2
  ADDI a0, sp, 1120
  ADD a0, a0, s10
  SD a0, 1440(sp)
  LW s10, 20(sp)
  # implict jump to bb16
bb16:   # loop depth 2
  LD a0, 1440(sp)
  LW s11, 0(a0)
  SLLIW a0, s10, 2
  SW a0, 256(sp)
  LW a0, 256(sp)
  ADDI t6, sp, 1120
  ADD a0, t6, a0
  SD a0, 1448(sp)
  LD a0, 1448(sp)
  LW a0, 0(a0)
  SW a0, 248(sp)
  LW a0, 248(sp)
  BLT s11, a0, bb21
  # implict jump to bb17
bb17:   # loop depth 2
  # implict jump to bb18
bb18:   # loop depth 2
  ADDIW s10, s10, 1
  SLTI a0, s10, 16
  SB a0, 4(sp)
  LB a0, 4(sp)
  BNE a0, zero, bb20
  # implict jump to bb19
bb19:   # loop depth 2
  JAL zero, bb3
bb20:   # loop depth 2
  JAL zero, bb16
bb21:   # loop depth 2
  LD a0, 1440(sp)
  LW s9, 0(a0)
  LD a0, 1448(sp)
  LW s11, 0(a0)
  LD a0, 1440(sp)
  SW s11, 0(a0)
  LD a0, 1448(sp)
  SW s9, 0(a0)
  JAL zero, bb18
