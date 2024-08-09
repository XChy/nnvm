.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -1440
  SD ra, 1000(sp)
  SD s0, 1008(sp)
  SD s1, 1016(sp)
  SD s2, 1024(sp)
  SD s3, 1032(sp)
  SD s4, 1040(sp)
  SD s5, 1048(sp)
  SD s6, 1056(sp)
  SD s7, 1064(sp)
  SD s8, 1072(sp)
  SD s9, 1080(sp)
  SD s10, 1088(sp)
  SD s11, 1096(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 648(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 268(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 328(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 324(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 864(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 860(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 856(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 852(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 848(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 844(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 840(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 836(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 832(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 828(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 764(sp)
  CALL getint
  SW a0, 820(sp)
  LW a0, 648(sp)
  SW a0, 1104(sp)
  LW a0, 268(sp)
  SW a0, 1108(sp)
  LW a0, 328(sp)
  SW a0, 1112(sp)
  LW a0, 324(sp)
  SW a0, 1116(sp)
  LW a0, 864(sp)
  SW a0, 1120(sp)
  LW a0, 860(sp)
  SW a0, 1124(sp)
  LW a0, 856(sp)
  SW a0, 1128(sp)
  LW a0, 852(sp)
  SW a0, 1132(sp)
  LW a0, 848(sp)
  SW a0, 1136(sp)
  LW a0, 844(sp)
  SW a0, 1140(sp)
  LW a0, 840(sp)
  SW a0, 1144(sp)
  LW a0, 836(sp)
  SW a0, 1148(sp)
  LW a0, 832(sp)
  SW a0, 1152(sp)
  LW a0, 828(sp)
  SW a0, 1156(sp)
  LW a0, 764(sp)
  SW a0, 1160(sp)
  LW a0, 820(sp)
  SW a0, 1164(sp)
  ADD a0, zero, zero
  SW a0, 656(sp)
  ADD s10, zero, zero
  # implict jump to bb1
bb1:   # loop depth 1
  LW a0, 656(sp)
  SW a0, 656(sp)
  LW a0, 656(sp)
  ADDIW a0, a0, 1
  SW a0, 488(sp)
  LW a0, 488(sp)
  SLTI a0, a0, 16
  SB a0, 2(sp)
  LB a0, 2(sp)
  BNE a0, zero, bb15
  # implict jump to bb2
bb2:   # loop depth 1
  # implict jump to bb3
bb3:   # loop depth 1
  LW a0, 488(sp)
  SLTI s11, a0, 15
  BNE s11, zero, bb14
  # implict jump to bb4
bb4:   # loop depth 0
  LW a0, 1104(sp)
  SW a0, 464(sp)
  LW a0, 1108(sp)
  SW a0, 396(sp)
  LW a0, 1112(sp)
  SW a0, 456(sp)
  LW a0, 1116(sp)
  SW a0, 452(sp)
  LW a0, 1120(sp)
  SW a0, 448(sp)
  LW a0, 1124(sp)
  SW a0, 444(sp)
  LW a0, 1128(sp)
  SW a0, 440(sp)
  LW a0, 1132(sp)
  SW a0, 436(sp)
  LW a0, 1136(sp)
  SW a0, 968(sp)
  LW a0, 1140(sp)
  SW a0, 972(sp)
  LW a0, 1144(sp)
  SW a0, 976(sp)
  LW a0, 1148(sp)
  SW a0, 980(sp)
  LW a0, 1152(sp)
  SW a0, 984(sp)
  LW a0, 1156(sp)
  SW a0, 988(sp)
  LW a0, 1160(sp)
  SW a0, 992(sp)
  LW a0, 1164(sp)
  SW a0, 944(sp)
  LW a0, 464(sp)
  SLTIU a0, a0, 1
  SB a0, 6(sp)
  LB a0, 6(sp)
  BNE a0, zero, bb13
  # implict jump to bb5
bb5:   # loop depth 0
  LW a0, 464(sp)
  SW a0, 740(sp)
  LW a0, 396(sp)
  SW a0, 736(sp)
  LW a0, 456(sp)
  SW a0, 732(sp)
  LW a0, 452(sp)
  SW a0, 728(sp)
  LW a0, 448(sp)
  SW a0, 724(sp)
  LW a0, 444(sp)
  SW a0, 720(sp)
  LW a0, 440(sp)
  SW a0, 716(sp)
  LW a0, 436(sp)
  SW a0, 712(sp)
  LW a0, 968(sp)
  SW a0, 708(sp)
  LW a0, 972(sp)
  SW a0, 644(sp)
  LW a0, 976(sp)
  SW a0, 700(sp)
  LW a0, 980(sp)
  SW a0, 696(sp)
  LW a0, 984(sp)
  SW a0, 692(sp)
  LW a0, 988(sp)
  SW a0, 184(sp)
  LW a0, 992(sp)
  SW a0, 188(sp)
  LW a0, 944(sp)
  SW a0, 192(sp)
  LW a0, 648(sp)
  SW a0, 648(sp)
  LW a0, 268(sp)
  SW a0, 36(sp)
  LW a0, 328(sp)
  SW a0, 704(sp)
  LW a0, 324(sp)
  SW a0, 196(sp)
  LW a0, 864(sp)
  SW a0, 880(sp)
  LW a0, 860(sp)
  SW a0, 876(sp)
  LW s0, 856(sp)
  LW s1, 852(sp)
  LW s2, 848(sp)
  LW s3, 844(sp)
  LW a0, 840(sp)
  SW a0, 688(sp)
  LW a0, 836(sp)
  SW a0, 684(sp)
  LW a0, 832(sp)
  SW a0, 680(sp)
  LW a0, 828(sp)
  SW a0, 676(sp)
  LW a0, 764(sp)
  SW a0, 672(sp)
  LW a0, 820(sp)
  SW a0, 668(sp)
  # implict jump to bb6
bb6:   # loop depth 1
  LW a0, 668(sp)
  SW a0, 964(sp)
  LW a0, 672(sp)
  SW a0, 960(sp)
  LW a0, 676(sp)
  SW a0, 956(sp)
  LW a0, 680(sp)
  SW a0, 952(sp)
  LW a0, 684(sp)
  SW a0, 884(sp)
  LW a0, 688(sp)
  SW a0, 948(sp)
  SW s3, 768(sp)
  SW s2, 772(sp)
  SW s1, 776(sp)
  SW s0, 780(sp)
  LW a0, 876(sp)
  SW a0, 784(sp)
  LW a0, 880(sp)
  SW a0, 788(sp)
  LW a0, 196(sp)
  SW a0, 792(sp)
  LW a0, 704(sp)
  SW a0, 796(sp)
  LW a0, 36(sp)
  SW a0, 800(sp)
  LW a0, 648(sp)
  SW a0, 648(sp)
  LW a0, 648(sp)
  SW a0, 804(sp)
  LW a0, 192(sp)
  SW a0, 808(sp)
  LW a0, 188(sp)
  SW a0, 812(sp)
  LW a0, 184(sp)
  SW a0, 816(sp)
  LW a0, 692(sp)
  SW a0, 332(sp)
  LW a0, 696(sp)
  SW a0, 272(sp)
  LW a0, 700(sp)
  SW a0, 276(sp)
  LW a0, 644(sp)
  SW a0, 280(sp)
  LW a0, 708(sp)
  SW a0, 284(sp)
  LW a0, 712(sp)
  SW a0, 288(sp)
  LW a0, 716(sp)
  SW a0, 292(sp)
  LW a0, 720(sp)
  SW a0, 296(sp)
  LW a0, 724(sp)
  SW a0, 300(sp)
  LW a0, 728(sp)
  SW a0, 304(sp)
  LW a0, 732(sp)
  SW a0, 308(sp)
  LW a0, 736(sp)
  SW a0, 312(sp)
  LW s6, 740(sp)
  ADDIW a0, s6, -1
  SW a0, 492(sp)
  LW a0, 308(sp)
  LW s0, 312(sp)
  ADDW s6, s0, a0
  LUI a0, 243712
  SW a0, 868(sp)
  LW a0, 868(sp)
  ADDIW a0, a0, 1
  SW a0, 868(sp)
  LW a0, 868(sp)
  REMW s6, s6, a0
  LW a0, 492(sp)
  SLTIU a0, a0, 1
  SB a0, 1(sp)
  LB a0, 1(sp)
  BNE a0, zero, bb8
  # implict jump to bb7
bb7:   # loop depth 1
  LW a0, 492(sp)
  SW a0, 740(sp)
  SW s6, 736(sp)
  LW a0, 304(sp)
  SW a0, 732(sp)
  LW a0, 300(sp)
  SW a0, 728(sp)
  LW a0, 296(sp)
  SW a0, 724(sp)
  LW a0, 292(sp)
  SW a0, 720(sp)
  LW a0, 288(sp)
  SW a0, 716(sp)
  LW a0, 284(sp)
  SW a0, 712(sp)
  LW a0, 280(sp)
  SW a0, 708(sp)
  LW a0, 276(sp)
  SW a0, 644(sp)
  LW a0, 272(sp)
  SW a0, 700(sp)
  LW a0, 332(sp)
  SW a0, 696(sp)
  LW a0, 816(sp)
  SW a0, 692(sp)
  LW a0, 812(sp)
  SW a0, 184(sp)
  LW a0, 808(sp)
  SW a0, 188(sp)
  LW a0, 804(sp)
  SW a0, 192(sp)
  LW a0, 800(sp)
  SW a0, 648(sp)
  LW a0, 648(sp)
  SW a0, 648(sp)
  LW a0, 796(sp)
  SW a0, 36(sp)
  LW a0, 792(sp)
  SW a0, 704(sp)
  LW a0, 788(sp)
  SW a0, 196(sp)
  LW a0, 784(sp)
  SW a0, 880(sp)
  LW a0, 780(sp)
  SW a0, 876(sp)
  LW s0, 776(sp)
  LW s1, 772(sp)
  LW s2, 768(sp)
  LW s3, 948(sp)
  LW a0, 884(sp)
  SW a0, 688(sp)
  LW a0, 952(sp)
  SW a0, 684(sp)
  LW a0, 956(sp)
  SW a0, 680(sp)
  LW a0, 960(sp)
  SW a0, 676(sp)
  LW a0, 964(sp)
  SW a0, 672(sp)
  ADD a0, zero, zero
  SW a0, 668(sp)
  JAL zero, bb6
bb8:   # loop depth 0
  # implict jump to bb9
bb9:   # loop depth 0
  SW s6, 1168(sp)
  LUI a0, 2
  ADDIW a0, a0, 656
  SW a0, 1172(sp)
  ADDI a0, zero, 62
  # implict jump to bb10
bb10:   # loop depth 1
  ADDIW a0, a0, -1
  SLLIW s0, a0, 2
  ADDIW s0, s0, 8
  ADDI t6, sp, 1168
  ADD s0, t6, s0
  SW zero, 0(s0)
  BNE a0, zero, bb12
  # implict jump to bb11
bb11:   # loop depth 0
  LW a0, 1172(sp)
  ADDIW s0, a0, -1
  LW s1, 1168(sp)
  ADDIW s2, s1, -2
  ADDIW s3, s1, -3
  ADDIW s4, a0, -3
  ADDIW s5, a0, -4
  ADDIW s6, s1, -5
  ADDIW s7, s1, -6
  ADDIW s8, a0, -6
  ADDIW s9, a0, -7
  ADDIW s10, s1, -8
  ADDIW s11, s1, -9
  SW s11, 408(sp)
  ADDIW s11, a0, -9
  SW s11, 996(sp)
  ADDIW s11, a0, -10
  SW s11, 940(sp)
  ADDIW s11, s1, -11
  SW s11, 936(sp)
  ADDIW s11, s1, -12
  SW s11, 932(sp)
  ADDIW s11, a0, -12
  SW s11, 928(sp)
  ADDIW s11, a0, -13
  SW s11, 924(sp)
  ADDIW s11, s1, -14
  SW s11, 920(sp)
  ADDIW s11, s1, -15
  SW s11, 916(sp)
  ADDIW s11, a0, -15
  SW s11, 912(sp)
  ADDIW s11, a0, -16
  SW s11, 908(sp)
  ADDIW s11, s1, -17
  SW s11, 904(sp)
  ADDIW s11, s1, -18
  SW s11, 900(sp)
  ADDIW s11, a0, -18
  SW s11, 896(sp)
  ADDIW s11, a0, -19
  SW s11, 892(sp)
  ADDIW s11, s1, -20
  SW s11, 824(sp)
  ADDIW s11, s1, -21
  SW s11, 888(sp)
  ADDIW s11, a0, -21
  SW s11, 640(sp)
  ADDIW s11, a0, -22
  SW s11, 636(sp)
  ADDIW s11, s1, -23
  SW s11, 632(sp)
  ADDIW s11, s1, -24
  SW s11, 628(sp)
  ADDIW s11, a0, -24
  SW s11, 624(sp)
  ADDIW s11, a0, -25
  SW s11, 620(sp)
  ADDIW s11, s1, -26
  SW s11, 616(sp)
  ADDIW s11, s1, -27
  SW s11, 612(sp)
  ADDIW s11, a0, -27
  SW s11, 608(sp)
  ADDIW s11, a0, -28
  SW s11, 604(sp)
  ADDIW s11, s1, -29
  SW s11, 600(sp)
  ADDIW s11, s1, -30
  SW s11, 596(sp)
  ADDIW s11, a0, -30
  SW s11, 592(sp)
  ADDIW s11, a0, -31
  SW s11, 588(sp)
  ADDIW s11, s1, -32
  SW s11, 524(sp)
  ADDIW s11, s1, -33
  SW s11, 580(sp)
  ADDIW s11, a0, -33
  SW s11, 576(sp)
  ADDIW s11, a0, -34
  SW s11, 572(sp)
  ADDIW s11, s1, -35
  SW s11, 568(sp)
  ADDIW s11, s1, -36
  SW s11, 564(sp)
  ADDIW s11, a0, -36
  SW s11, 560(sp)
  ADDIW s11, a0, -37
  SW s11, 556(sp)
  ADDIW s11, s1, -38
  SW s11, 552(sp)
  ADDIW s11, s1, -39
  SW s11, 548(sp)
  ADDIW s11, a0, -39
  SW s11, 544(sp)
  ADDIW s11, a0, -40
  SW s11, 540(sp)
  ADDIW s11, s1, -41
  SW s11, 536(sp)
  ADDIW s11, s1, -42
  SW s11, 532(sp)
  ADDIW s11, a0, -42
  SW s11, 528(sp)
  ADDIW s11, a0, -43
  SW s11, 584(sp)
  ADDIW s11, s1, -44
  SW s11, 760(sp)
  ADDIW s11, s1, -45
  SW s11, 756(sp)
  ADDIW s11, a0, -45
  SW s11, 752(sp)
  ADDIW s11, a0, -46
  SW s11, 748(sp)
  ADDIW s11, s1, -47
  SW s11, 744(sp)
  ADDW a0, s1, a0
  ADDW a0, a0, s0
  ADDW a0, a0, s2
  ADDW a0, a0, s3
  ADDW a0, a0, s4
  ADDW a0, a0, s5
  ADDW a0, a0, s6
  ADDW a0, a0, s7
  ADDW a0, a0, s8
  ADDW a0, a0, s9
  ADDW a0, a0, s10
  LW s0, 408(sp)
  ADDW a0, a0, s0
  LW s0, 996(sp)
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
  LW s0, 904(sp)
  ADDW a0, a0, s0
  LW s0, 900(sp)
  ADDW a0, a0, s0
  LW s0, 896(sp)
  ADDW a0, a0, s0
  LW s0, 892(sp)
  ADDW a0, a0, s0
  LW s0, 824(sp)
  ADDW a0, a0, s0
  LW s0, 888(sp)
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
  LW s0, 620(sp)
  ADDW a0, a0, s0
  LW s0, 616(sp)
  ADDW a0, a0, s0
  LW s0, 612(sp)
  ADDW a0, a0, s0
  LW s0, 608(sp)
  ADDW a0, a0, s0
  LW s0, 604(sp)
  ADDW a0, a0, s0
  LW s0, 600(sp)
  ADDW a0, a0, s0
  LW s0, 596(sp)
  ADDW a0, a0, s0
  LW s0, 592(sp)
  ADDW a0, a0, s0
  LW s0, 588(sp)
  ADDW a0, a0, s0
  LW s0, 524(sp)
  ADDW a0, a0, s0
  LW s0, 580(sp)
  ADDW a0, a0, s0
  LW s0, 576(sp)
  ADDW a0, a0, s0
  LW s0, 572(sp)
  ADDW a0, a0, s0
  LW s0, 568(sp)
  ADDW a0, a0, s0
  LW s0, 564(sp)
  ADDW a0, a0, s0
  LW s0, 560(sp)
  ADDW a0, a0, s0
  LW s0, 556(sp)
  ADDW a0, a0, s0
  LW s0, 552(sp)
  ADDW a0, a0, s0
  LW s0, 548(sp)
  ADDW a0, a0, s0
  LW s0, 544(sp)
  ADDW a0, a0, s0
  LW s0, 540(sp)
  ADDW a0, a0, s0
  LW s0, 536(sp)
  ADDW a0, a0, s0
  LW s0, 532(sp)
  ADDW a0, a0, s0
  LW s0, 528(sp)
  ADDW a0, a0, s0
  LW s0, 584(sp)
  ADDW a0, a0, s0
  LW s0, 760(sp)
  ADDW a0, a0, s0
  LW s0, 756(sp)
  ADDW a0, a0, s0
  LW s0, 752(sp)
  ADDW a0, a0, s0
  LW s0, 748(sp)
  ADDW a0, a0, s0
  LW s0, 744(sp)
  ADDW a0, a0, s0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 1000(sp)
  LD s0, 1008(sp)
  LD s1, 1016(sp)
  LD s2, 1024(sp)
  LD s3, 1032(sp)
  LD s4, 1040(sp)
  LD s5, 1048(sp)
  LD s6, 1056(sp)
  LD s7, 1064(sp)
  LD s8, 1072(sp)
  LD s9, 1080(sp)
  LD s10, 1088(sp)
  LD s11, 1096(sp)
  ADDI sp, sp, 1440
  JALR zero, 0(ra)
bb12:   # loop depth 1
  JAL zero, bb10
bb13:   # loop depth 0
  LW s6, 396(sp)
  JAL zero, bb9
bb14:   # loop depth 1
  LW a0, 488(sp)
  SW a0, 656(sp)
  LW a0, 656(sp)
  SW a0, 656(sp)
  JAL zero, bb1
bb15:   # loop depth 1
  LW a0, 656(sp)
  SLLIW a0, a0, 2
  SW a0, 660(sp)
  LW a0, 660(sp)
  ADDI t6, sp, 1104
  ADD a0, t6, a0
  SD a0, 1424(sp)
  LW a0, 488(sp)
  SW a0, 872(sp)
  # implict jump to bb16
bb16:   # loop depth 2
  LW a0, 872(sp)
  SW a0, 480(sp)
  LD a0, 1424(sp)
  LW s11, 0(a0)
  LW a0, 480(sp)
  SLLIW a0, a0, 2
  SW a0, 476(sp)
  LW a0, 476(sp)
  ADDI t6, sp, 1104
  ADD a0, t6, a0
  SD a0, 1432(sp)
  LD a0, 1432(sp)
  LW a0, 0(a0)
  SW a0, 468(sp)
  LW a0, 468(sp)
  BLT s11, a0, bb21
  # implict jump to bb17
bb17:   # loop depth 2
  # implict jump to bb18
bb18:   # loop depth 2
  LW a0, 480(sp)
  ADDIW a0, a0, 1
  SW a0, 872(sp)
  LW a0, 872(sp)
  SLTI a0, a0, 16
  SB a0, 3(sp)
  LB a0, 3(sp)
  BNE a0, zero, bb20
  # implict jump to bb19
bb19:   # loop depth 1
  JAL zero, bb3
bb20:   # loop depth 2
  LW a0, 872(sp)
  SW a0, 872(sp)
  JAL zero, bb16
bb21:   # loop depth 2
  LD a0, 1424(sp)
  LW s10, 0(a0)
  LD a0, 1432(sp)
  LW s11, 0(a0)
  LD a0, 1424(sp)
  SW s11, 0(a0)
  LD a0, 1432(sp)
  SW s10, 0(a0)
  JAL zero, bb18
