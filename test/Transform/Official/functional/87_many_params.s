.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -1392
  SD ra, 944(sp)
  SD s0, 952(sp)
  SD s1, 960(sp)
  SD s2, 968(sp)
  SD s3, 976(sp)
  SD s4, 984(sp)
  SD s5, 992(sp)
  SD s6, 1000(sp)
  SD s7, 1008(sp)
  SD s8, 1016(sp)
  SD s9, 1024(sp)
  SD s10, 1032(sp)
  SD s11, 1040(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 620(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 368(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 364(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 360(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 132(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 668(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 392(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 832(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 828(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 824(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 820(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 816(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 812(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 808(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 804(sp)
  CALL getint
  SW a0, 800(sp)
  LW a0, 620(sp)
  SW a0, 1048(sp)
  LW a0, 368(sp)
  SW a0, 1052(sp)
  LW a0, 364(sp)
  SW a0, 1056(sp)
  LW a0, 360(sp)
  SW a0, 1060(sp)
  LW a0, 132(sp)
  SW a0, 1064(sp)
  LW a0, 668(sp)
  SW a0, 1068(sp)
  LW a0, 392(sp)
  SW a0, 1072(sp)
  LW a0, 832(sp)
  SW a0, 1076(sp)
  LW a0, 828(sp)
  SW a0, 1080(sp)
  LW a0, 824(sp)
  SW a0, 1084(sp)
  LW a0, 820(sp)
  SW a0, 1088(sp)
  LW a0, 816(sp)
  SW a0, 1092(sp)
  LW a0, 812(sp)
  SW a0, 1096(sp)
  LW a0, 808(sp)
  SW a0, 1100(sp)
  LW a0, 804(sp)
  SW a0, 1104(sp)
  LW a0, 800(sp)
  SW a0, 1108(sp)
  ADD a0, zero, zero
  SW a0, 628(sp)
  ADD s10, zero, zero
  # implict jump to bb1
bb1:   # loop depth 1
  LW a0, 628(sp)
  SW a0, 628(sp)
  LW a0, 628(sp)
  ADDIW a0, a0, 1
  SW a0, 268(sp)
  LW a0, 268(sp)
  SLTI a0, a0, 16
  SB a0, 4(sp)
  LB a0, 4(sp)
  BNE a0, zero, bb15
  # implict jump to bb2
bb2:   # loop depth 1
  # implict jump to bb3
bb3:   # loop depth 1
  LW a0, 268(sp)
  SLTI s11, a0, 15
  BNE s11, zero, bb14
  # implict jump to bb4
bb4:   # loop depth 0
  LW a0, 1048(sp)
  SW a0, 488(sp)
  LW a0, 1052(sp)
  SW a0, 484(sp)
  LW a0, 1056(sp)
  SW a0, 480(sp)
  LW a0, 1060(sp)
  SW a0, 476(sp)
  LW a0, 1064(sp)
  SW a0, 472(sp)
  LW a0, 1068(sp)
  SW a0, 468(sp)
  LW a0, 1072(sp)
  SW a0, 464(sp)
  LW a0, 1076(sp)
  SW a0, 460(sp)
  LW a0, 1080(sp)
  SW a0, 836(sp)
  LW a0, 1084(sp)
  SW a0, 900(sp)
  LW a0, 1088(sp)
  SW a0, 904(sp)
  LW a0, 1092(sp)
  SW a0, 908(sp)
  LW a0, 1096(sp)
  SW a0, 912(sp)
  LW a0, 1100(sp)
  SW a0, 916(sp)
  LW a0, 1104(sp)
  SW a0, 920(sp)
  LW a0, 1108(sp)
  SW a0, 924(sp)
  LW a0, 488(sp)
  SLTIU a0, a0, 1
  SB a0, 6(sp)
  LB a0, 6(sp)
  BNE a0, zero, bb13
  # implict jump to bb5
bb5:   # loop depth 0
  LW a0, 488(sp)
  SW a0, 708(sp)
  LW a0, 484(sp)
  SW a0, 704(sp)
  LW a0, 480(sp)
  SW a0, 700(sp)
  LW a0, 476(sp)
  SW a0, 696(sp)
  LW a0, 472(sp)
  SW a0, 692(sp)
  LW a0, 468(sp)
  SW a0, 688(sp)
  LW a0, 464(sp)
  SW a0, 684(sp)
  LW a0, 460(sp)
  SW a0, 680(sp)
  LW a0, 836(sp)
  SW a0, 676(sp)
  LW a0, 900(sp)
  SW a0, 672(sp)
  LW a0, 904(sp)
  SW a0, 612(sp)
  LW a0, 908(sp)
  SW a0, 664(sp)
  LW a0, 912(sp)
  SW a0, 660(sp)
  LW a0, 916(sp)
  SW a0, 172(sp)
  LW a0, 920(sp)
  SW a0, 168(sp)
  LW a0, 924(sp)
  SW a0, 164(sp)
  LW a0, 620(sp)
  SW a0, 620(sp)
  LW a0, 368(sp)
  SW a0, 160(sp)
  LW a0, 364(sp)
  SW a0, 156(sp)
  LW a0, 360(sp)
  SW a0, 152(sp)
  LW a0, 132(sp)
  SW a0, 148(sp)
  LW a0, 668(sp)
  SW a0, 144(sp)
  LW s0, 392(sp)
  LW s1, 832(sp)
  LW s2, 828(sp)
  LW s3, 824(sp)
  LW a0, 820(sp)
  SW a0, 656(sp)
  LW a0, 816(sp)
  SW a0, 652(sp)
  LW a0, 812(sp)
  SW a0, 648(sp)
  LW a0, 808(sp)
  SW a0, 644(sp)
  LW a0, 804(sp)
  SW a0, 640(sp)
  LW a0, 800(sp)
  SW a0, 636(sp)
  # implict jump to bb6
bb6:   # loop depth 1
  LW a0, 636(sp)
  SW a0, 896(sp)
  LW a0, 640(sp)
  SW a0, 728(sp)
  LW a0, 644(sp)
  SW a0, 732(sp)
  LW a0, 648(sp)
  SW a0, 736(sp)
  LW a0, 652(sp)
  SW a0, 740(sp)
  LW a0, 656(sp)
  SW a0, 744(sp)
  SW s3, 748(sp)
  SW s2, 752(sp)
  SW s1, 756(sp)
  SW s0, 760(sp)
  LW a0, 144(sp)
  SW a0, 764(sp)
  LW a0, 148(sp)
  SW a0, 768(sp)
  LW a0, 152(sp)
  SW a0, 772(sp)
  LW a0, 156(sp)
  SW a0, 776(sp)
  LW a0, 160(sp)
  SW a0, 724(sp)
  LW a0, 620(sp)
  SW a0, 620(sp)
  LW a0, 620(sp)
  SW a0, 784(sp)
  LW a0, 164(sp)
  SW a0, 788(sp)
  LW a0, 168(sp)
  SW a0, 792(sp)
  LW a0, 172(sp)
  SW a0, 796(sp)
  LW a0, 660(sp)
  SW a0, 304(sp)
  LW a0, 664(sp)
  SW a0, 308(sp)
  LW a0, 612(sp)
  SW a0, 312(sp)
  LW a0, 672(sp)
  SW a0, 252(sp)
  LW a0, 676(sp)
  SW a0, 320(sp)
  LW a0, 680(sp)
  SW a0, 324(sp)
  LW a0, 684(sp)
  SW a0, 328(sp)
  LW a0, 688(sp)
  SW a0, 332(sp)
  LW a0, 692(sp)
  SW a0, 336(sp)
  LW a0, 696(sp)
  SW a0, 340(sp)
  LW a0, 700(sp)
  SW a0, 344(sp)
  LW a0, 704(sp)
  SW a0, 348(sp)
  LW s6, 708(sp)
  ADDIW a0, s6, -1
  SW a0, 272(sp)
  LW a0, 344(sp)
  LW s0, 348(sp)
  ADDW s6, s0, a0
  LUI a0, 243712
  SW a0, 136(sp)
  LW a0, 136(sp)
  ADDIW a0, a0, 1
  SW a0, 136(sp)
  LW a0, 136(sp)
  REMW s6, s6, a0
  LW a0, 272(sp)
  SLTIU a0, a0, 1
  SB a0, 5(sp)
  LB a0, 5(sp)
  BNE a0, zero, bb8
  # implict jump to bb7
bb7:   # loop depth 1
  LW a0, 272(sp)
  SW a0, 708(sp)
  SW s6, 704(sp)
  LW a0, 340(sp)
  SW a0, 700(sp)
  LW a0, 336(sp)
  SW a0, 696(sp)
  LW a0, 332(sp)
  SW a0, 692(sp)
  LW a0, 328(sp)
  SW a0, 688(sp)
  LW a0, 324(sp)
  SW a0, 684(sp)
  LW a0, 320(sp)
  SW a0, 680(sp)
  LW a0, 252(sp)
  SW a0, 676(sp)
  LW a0, 312(sp)
  SW a0, 672(sp)
  LW a0, 308(sp)
  SW a0, 612(sp)
  LW a0, 304(sp)
  SW a0, 664(sp)
  LW a0, 796(sp)
  SW a0, 660(sp)
  LW a0, 792(sp)
  SW a0, 172(sp)
  LW a0, 788(sp)
  SW a0, 168(sp)
  LW a0, 784(sp)
  SW a0, 164(sp)
  LW a0, 724(sp)
  SW a0, 620(sp)
  LW a0, 620(sp)
  SW a0, 620(sp)
  LW a0, 776(sp)
  SW a0, 160(sp)
  LW a0, 772(sp)
  SW a0, 156(sp)
  LW a0, 768(sp)
  SW a0, 152(sp)
  LW a0, 764(sp)
  SW a0, 148(sp)
  LW a0, 760(sp)
  SW a0, 144(sp)
  LW s0, 756(sp)
  LW s1, 752(sp)
  LW s2, 748(sp)
  LW s3, 744(sp)
  LW a0, 740(sp)
  SW a0, 656(sp)
  LW a0, 736(sp)
  SW a0, 652(sp)
  LW a0, 732(sp)
  SW a0, 648(sp)
  LW a0, 728(sp)
  SW a0, 644(sp)
  LW a0, 896(sp)
  SW a0, 640(sp)
  ADD a0, zero, zero
  SW a0, 636(sp)
  JAL zero, bb6
bb8:   # loop depth 0
  # implict jump to bb9
bb9:   # loop depth 0
  SW s6, 1112(sp)
  LUI a0, 2
  ADDIW a0, a0, 656
  SW a0, 1116(sp)
  ADDI a0, zero, 62
  # implict jump to bb10
bb10:   # loop depth 1
  ADDIW a0, a0, -1
  SLLIW s0, a0, 2
  ADDIW s0, s0, 8
  ADDI t6, sp, 1112
  ADD s0, t6, s0
  SW zero, 0(s0)
  BNE a0, zero, bb12
  # implict jump to bb11
bb11:   # loop depth 0
  LW a0, 1116(sp)
  ADDIW s0, a0, -1
  LW s1, 1112(sp)
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
  SW s11, 432(sp)
  ADDIW s11, a0, -9
  SW s11, 928(sp)
  ADDIW s11, a0, -10
  SW s11, 932(sp)
  ADDIW s11, s1, -11
  SW s11, 936(sp)
  ADDIW s11, s1, -12
  SW s11, 892(sp)
  ADDIW s11, a0, -12
  SW s11, 940(sp)
  ADDIW s11, a0, -13
  SW s11, 888(sp)
  ADDIW s11, s1, -14
  SW s11, 884(sp)
  ADDIW s11, s1, -15
  SW s11, 880(sp)
  ADDIW s11, a0, -15
  SW s11, 876(sp)
  ADDIW s11, a0, -16
  SW s11, 872(sp)
  ADDIW s11, s1, -17
  SW s11, 868(sp)
  ADDIW s11, s1, -18
  SW s11, 864(sp)
  ADDIW s11, a0, -18
  SW s11, 860(sp)
  ADDIW s11, a0, -19
  SW s11, 856(sp)
  ADDIW s11, s1, -20
  SW s11, 852(sp)
  ADDIW s11, s1, -21
  SW s11, 848(sp)
  ADDIW s11, a0, -21
  SW s11, 844(sp)
  ADDIW s11, a0, -22
  SW s11, 780(sp)
  ADDIW s11, s1, -23
  SW s11, 840(sp)
  ADDIW s11, s1, -24
  SW s11, 608(sp)
  ADDIW s11, a0, -24
  SW s11, 604(sp)
  ADDIW s11, a0, -25
  SW s11, 600(sp)
  ADDIW s11, s1, -26
  SW s11, 596(sp)
  ADDIW s11, s1, -27
  SW s11, 592(sp)
  ADDIW s11, a0, -27
  SW s11, 588(sp)
  ADDIW s11, a0, -28
  SW s11, 584(sp)
  ADDIW s11, s1, -29
  SW s11, 580(sp)
  ADDIW s11, s1, -30
  SW s11, 576(sp)
  ADDIW s11, a0, -30
  SW s11, 572(sp)
  ADDIW s11, a0, -31
  SW s11, 568(sp)
  ADDIW s11, s1, -32
  SW s11, 564(sp)
  ADDIW s11, s1, -33
  SW s11, 560(sp)
  ADDIW s11, a0, -33
  SW s11, 496(sp)
  ADDIW s11, a0, -34
  SW s11, 552(sp)
  ADDIW s11, s1, -35
  SW s11, 548(sp)
  ADDIW s11, s1, -36
  SW s11, 544(sp)
  ADDIW s11, a0, -36
  SW s11, 540(sp)
  ADDIW s11, a0, -37
  SW s11, 536(sp)
  ADDIW s11, s1, -38
  SW s11, 532(sp)
  ADDIW s11, s1, -39
  SW s11, 528(sp)
  ADDIW s11, a0, -39
  SW s11, 524(sp)
  ADDIW s11, a0, -40
  SW s11, 520(sp)
  ADDIW s11, s1, -41
  SW s11, 516(sp)
  ADDIW s11, s1, -42
  SW s11, 512(sp)
  ADDIW s11, a0, -42
  SW s11, 508(sp)
  ADDIW s11, a0, -43
  SW s11, 504(sp)
  ADDIW s11, s1, -44
  SW s11, 500(sp)
  ADDIW s11, s1, -45
  SW s11, 556(sp)
  ADDIW s11, a0, -45
  SW s11, 720(sp)
  ADDIW s11, a0, -46
  SW s11, 716(sp)
  ADDIW s11, s1, -47
  SW s11, 712(sp)
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
  LW s0, 432(sp)
  ADDW a0, a0, s0
  LW s0, 928(sp)
  ADDW a0, a0, s0
  LW s0, 932(sp)
  ADDW a0, a0, s0
  LW s0, 936(sp)
  ADDW a0, a0, s0
  LW s0, 892(sp)
  ADDW a0, a0, s0
  LW s0, 940(sp)
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
  LW s0, 780(sp)
  ADDW a0, a0, s0
  LW s0, 840(sp)
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
  LW s0, 584(sp)
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
  LW s0, 496(sp)
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
  LW s0, 524(sp)
  ADDW a0, a0, s0
  LW s0, 520(sp)
  ADDW a0, a0, s0
  LW s0, 516(sp)
  ADDW a0, a0, s0
  LW s0, 512(sp)
  ADDW a0, a0, s0
  LW s0, 508(sp)
  ADDW a0, a0, s0
  LW s0, 504(sp)
  ADDW a0, a0, s0
  LW s0, 500(sp)
  ADDW a0, a0, s0
  LW s0, 556(sp)
  ADDW a0, a0, s0
  LW s0, 720(sp)
  ADDW a0, a0, s0
  LW s0, 716(sp)
  ADDW a0, a0, s0
  LW s0, 712(sp)
  ADDW a0, a0, s0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 944(sp)
  LD s0, 952(sp)
  LD s1, 960(sp)
  LD s2, 968(sp)
  LD s3, 976(sp)
  LD s4, 984(sp)
  LD s5, 992(sp)
  LD s6, 1000(sp)
  LD s7, 1008(sp)
  LD s8, 1016(sp)
  LD s9, 1024(sp)
  LD s10, 1032(sp)
  LD s11, 1040(sp)
  ADDI sp, sp, 1392
  JALR zero, 0(ra)
bb12:   # loop depth 1
  JAL zero, bb10
bb13:   # loop depth 0
  LW s6, 484(sp)
  JAL zero, bb9
bb14:   # loop depth 1
  LW a0, 268(sp)
  SW a0, 628(sp)
  LW a0, 628(sp)
  SW a0, 628(sp)
  JAL zero, bb1
bb15:   # loop depth 1
  LW a0, 628(sp)
  SLLIW a0, a0, 2
  SW a0, 632(sp)
  LW a0, 632(sp)
  ADDI t6, sp, 1048
  ADD a0, t6, a0
  SD a0, 1368(sp)
  LW a0, 268(sp)
  SW a0, 140(sp)
  # implict jump to bb16
bb16:   # loop depth 2
  LW a0, 140(sp)
  SW a0, 260(sp)
  LD a0, 1368(sp)
  LW s11, 0(a0)
  LW a0, 260(sp)
  SLLIW a0, a0, 2
  SW a0, 256(sp)
  LW a0, 256(sp)
  ADDI t6, sp, 1048
  ADD a0, t6, a0
  SD a0, 1376(sp)
  LD a0, 1376(sp)
  LW a0, 0(a0)
  SW a0, 492(sp)
  LW a0, 492(sp)
  BLT s11, a0, bb21
  # implict jump to bb17
bb17:   # loop depth 2
  # implict jump to bb18
bb18:   # loop depth 2
  LW a0, 260(sp)
  ADDIW a0, a0, 1
  SW a0, 140(sp)
  LW a0, 140(sp)
  SLTI a0, a0, 16
  SB a0, 2(sp)
  LB a0, 2(sp)
  BNE a0, zero, bb20
  # implict jump to bb19
bb19:   # loop depth 1
  JAL zero, bb3
bb20:   # loop depth 2
  LW a0, 140(sp)
  SW a0, 140(sp)
  JAL zero, bb16
bb21:   # loop depth 2
  LD a0, 1368(sp)
  LW s10, 0(a0)
  LD a0, 1376(sp)
  LW s11, 0(a0)
  LD a0, 1368(sp)
  SW s11, 0(a0)
  LD a0, 1376(sp)
  SW s10, 0(a0)
  JAL zero, bb18
