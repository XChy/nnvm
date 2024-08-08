.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -1424
  SD ra, 984(sp)
  SD s0, 992(sp)
  SD s1, 1000(sp)
  SD s2, 1008(sp)
  SD s3, 1016(sp)
  SD s4, 1024(sp)
  SD s5, 1032(sp)
  SD s6, 1040(sp)
  SD s7, 1048(sp)
  SD s8, 1056(sp)
  SD s9, 1064(sp)
  SD s10, 1072(sp)
  SD s11, 1080(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 344(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 340(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 336(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 332(sp)
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
  SW s1, 824(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 820(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 816(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 752(sp)
  CALL getint
  SW a0, 808(sp)
  LW a0, 344(sp)
  SW a0, 1088(sp)
  LW a0, 340(sp)
  SW a0, 1092(sp)
  LW a0, 336(sp)
  SW a0, 1096(sp)
  LW a0, 332(sp)
  SW a0, 1100(sp)
  LW a0, 852(sp)
  SW a0, 1104(sp)
  LW a0, 848(sp)
  SW a0, 1108(sp)
  LW a0, 844(sp)
  SW a0, 1112(sp)
  LW a0, 840(sp)
  SW a0, 1116(sp)
  LW a0, 836(sp)
  SW a0, 1120(sp)
  LW a0, 832(sp)
  SW a0, 1124(sp)
  LW a0, 828(sp)
  SW a0, 1128(sp)
  LW a0, 824(sp)
  SW a0, 1132(sp)
  LW a0, 820(sp)
  SW a0, 1136(sp)
  LW a0, 816(sp)
  SW a0, 1140(sp)
  LW a0, 752(sp)
  SW a0, 1144(sp)
  LW a0, 808(sp)
  SW a0, 1148(sp)
  ADD s11, zero, zero
  ADD a0, zero, zero
  SW a0, 640(sp)
  # implict jump to bb1
bb1:   # loop depth 1
  LW a0, 640(sp)
  SW a0, 640(sp)
  ADDIW a0, s11, 1
  SW a0, 492(sp)
  LW a0, 492(sp)
  SLTI a0, a0, 16
  SB a0, 1(sp)
  LB a0, 1(sp)
  BNE a0, zero, bb15
  # implict jump to bb2
bb2:   # loop depth 1
  LW a0, 640(sp)
  SW a0, 640(sp)
  # implict jump to bb3
bb3:   # loop depth 1
  LW a0, 640(sp)
  SW a0, 640(sp)
  LW a0, 492(sp)
  SLTI s11, a0, 15
  BNE s11, zero, bb14
  # implict jump to bb4
bb4:   # loop depth 0
  LW a0, 1088(sp)
  SW a0, 468(sp)
  LW a0, 1092(sp)
  SW a0, 464(sp)
  LW a0, 1096(sp)
  SW a0, 460(sp)
  LW a0, 1100(sp)
  SW a0, 392(sp)
  LW a0, 1104(sp)
  SW a0, 452(sp)
  LW a0, 1108(sp)
  SW a0, 448(sp)
  LW a0, 1112(sp)
  SW a0, 444(sp)
  LW a0, 1116(sp)
  SW a0, 440(sp)
  LW a0, 1120(sp)
  SW a0, 952(sp)
  LW a0, 1124(sp)
  SW a0, 976(sp)
  LW a0, 1128(sp)
  SW a0, 956(sp)
  LW a0, 1132(sp)
  SW a0, 960(sp)
  LW a0, 1136(sp)
  SW a0, 964(sp)
  LW a0, 1140(sp)
  SW a0, 968(sp)
  LW a0, 1144(sp)
  SW a0, 972(sp)
  LW a0, 1148(sp)
  SW a0, 928(sp)
  LW a0, 468(sp)
  SLTIU a0, a0, 1
  SB a0, 2(sp)
  LB a0, 2(sp)
  BNE a0, zero, bb13
  # implict jump to bb5
bb5:   # loop depth 0
  LW a0, 468(sp)
  SW a0, 728(sp)
  LW a0, 464(sp)
  SW a0, 724(sp)
  LW a0, 460(sp)
  SW a0, 720(sp)
  LW a0, 392(sp)
  SW a0, 716(sp)
  LW a0, 452(sp)
  SW a0, 712(sp)
  LW a0, 448(sp)
  SW a0, 708(sp)
  LW a0, 444(sp)
  SW a0, 704(sp)
  LW a0, 440(sp)
  SW a0, 700(sp)
  LW a0, 952(sp)
  SW a0, 636(sp)
  LW a0, 976(sp)
  SW a0, 692(sp)
  LW a0, 956(sp)
  SW a0, 688(sp)
  LW a0, 960(sp)
  SW a0, 684(sp)
  LW a0, 964(sp)
  SW a0, 680(sp)
  LW a0, 968(sp)
  SW a0, 176(sp)
  LW a0, 972(sp)
  SW a0, 180(sp)
  LW a0, 928(sp)
  SW a0, 184(sp)
  LW a0, 344(sp)
  SW a0, 344(sp)
  LW a0, 340(sp)
  SW a0, 188(sp)
  LW a0, 336(sp)
  SW a0, 192(sp)
  LW a0, 332(sp)
  SW a0, 864(sp)
  LW a0, 852(sp)
  SW a0, 696(sp)
  LW a0, 848(sp)
  SW a0, 404(sp)
  LW s0, 844(sp)
  LW s1, 840(sp)
  LW s2, 836(sp)
  LW s3, 832(sp)
  LW a0, 828(sp)
  SW a0, 676(sp)
  LW a0, 824(sp)
  SW a0, 672(sp)
  LW a0, 820(sp)
  SW a0, 668(sp)
  LW a0, 816(sp)
  SW a0, 664(sp)
  LW a0, 752(sp)
  SW a0, 660(sp)
  LW a0, 808(sp)
  SW a0, 656(sp)
  # implict jump to bb6
bb6:   # loop depth 1
  LW a0, 656(sp)
  SW a0, 948(sp)
  LW a0, 660(sp)
  SW a0, 944(sp)
  LW a0, 664(sp)
  SW a0, 940(sp)
  LW a0, 668(sp)
  SW a0, 936(sp)
  LW a0, 672(sp)
  SW a0, 868(sp)
  LW a0, 676(sp)
  SW a0, 932(sp)
  SW s3, 756(sp)
  SW s2, 760(sp)
  SW s1, 764(sp)
  SW s0, 768(sp)
  LW a0, 404(sp)
  SW a0, 772(sp)
  LW a0, 696(sp)
  SW a0, 776(sp)
  LW a0, 864(sp)
  SW a0, 780(sp)
  LW a0, 192(sp)
  SW a0, 784(sp)
  LW a0, 188(sp)
  SW a0, 788(sp)
  LW a0, 344(sp)
  SW a0, 792(sp)
  LW a0, 184(sp)
  SW a0, 796(sp)
  LW a0, 180(sp)
  SW a0, 800(sp)
  LW a0, 176(sp)
  SW a0, 804(sp)
  LW a0, 680(sp)
  SW a0, 276(sp)
  LW a0, 684(sp)
  SW a0, 280(sp)
  LW a0, 688(sp)
  SW a0, 284(sp)
  LW a0, 692(sp)
  SW a0, 288(sp)
  LW a0, 636(sp)
  SW a0, 292(sp)
  LW a0, 700(sp)
  SW a0, 296(sp)
  LW a0, 704(sp)
  SW a0, 300(sp)
  LW a0, 708(sp)
  SW a0, 304(sp)
  LW a0, 712(sp)
  SW a0, 308(sp)
  LW a0, 716(sp)
  SW a0, 312(sp)
  LW a0, 720(sp)
  SW a0, 316(sp)
  LW a0, 724(sp)
  SW a0, 320(sp)
  LW s6, 728(sp)
  ADDIW a0, s6, -1
  SW a0, 496(sp)
  LW a0, 316(sp)
  LW s0, 320(sp)
  ADDW s6, s0, a0
  LUI a0, 243712
  SW a0, 856(sp)
  LW a0, 856(sp)
  ADDIW a0, a0, 1
  SW a0, 856(sp)
  LW a0, 856(sp)
  REMW s6, s6, a0
  LW a0, 496(sp)
  SLTIU a0, a0, 1
  SB a0, 0(sp)
  LB a0, 0(sp)
  BNE a0, zero, bb8
  # implict jump to bb7
bb7:   # loop depth 1
  LW a0, 496(sp)
  SW a0, 728(sp)
  SW s6, 724(sp)
  LW a0, 312(sp)
  SW a0, 720(sp)
  LW a0, 308(sp)
  SW a0, 716(sp)
  LW a0, 304(sp)
  SW a0, 712(sp)
  LW a0, 300(sp)
  SW a0, 708(sp)
  LW a0, 296(sp)
  SW a0, 704(sp)
  LW a0, 292(sp)
  SW a0, 700(sp)
  LW a0, 288(sp)
  SW a0, 636(sp)
  LW a0, 284(sp)
  SW a0, 692(sp)
  LW a0, 280(sp)
  SW a0, 688(sp)
  LW a0, 276(sp)
  SW a0, 684(sp)
  LW a0, 804(sp)
  SW a0, 680(sp)
  LW a0, 800(sp)
  SW a0, 176(sp)
  LW a0, 796(sp)
  SW a0, 180(sp)
  LW a0, 792(sp)
  SW a0, 184(sp)
  LW a0, 788(sp)
  SW a0, 344(sp)
  LW a0, 784(sp)
  SW a0, 188(sp)
  LW a0, 780(sp)
  SW a0, 192(sp)
  LW a0, 776(sp)
  SW a0, 864(sp)
  LW a0, 772(sp)
  SW a0, 696(sp)
  LW a0, 768(sp)
  SW a0, 404(sp)
  LW s0, 764(sp)
  LW s1, 760(sp)
  LW s2, 756(sp)
  LW s3, 932(sp)
  LW a0, 868(sp)
  SW a0, 676(sp)
  LW a0, 936(sp)
  SW a0, 672(sp)
  LW a0, 940(sp)
  SW a0, 668(sp)
  LW a0, 944(sp)
  SW a0, 664(sp)
  LW a0, 948(sp)
  SW a0, 660(sp)
  ADD a0, zero, zero
  SW a0, 656(sp)
  JAL zero, bb6
bb8:   # loop depth 0
  # implict jump to bb9
bb9:   # loop depth 0
  SW s6, 1152(sp)
  LUI a0, 2
  ADDIW a0, a0, 656
  SW a0, 1156(sp)
  ADDI a0, zero, 62
  # implict jump to bb10
bb10:   # loop depth 1
  ADDIW a0, a0, -1
  SLLIW s0, a0, 2
  ADDIW s0, s0, 8
  ADDI t6, sp, 1152
  ADD s0, t6, s0
  SW zero, 0(s0)
  BNE a0, zero, bb12
  # implict jump to bb11
bb11:   # loop depth 0
  LW a0, 1156(sp)
  ADDIW s0, a0, -1
  LW s1, 1152(sp)
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
  SW s11, 412(sp)
  ADDIW s11, a0, -9
  SW s11, 980(sp)
  ADDIW s11, a0, -10
  SW s11, 924(sp)
  ADDIW s11, s1, -11
  SW s11, 920(sp)
  ADDIW s11, s1, -12
  SW s11, 916(sp)
  ADDIW s11, a0, -12
  SW s11, 912(sp)
  ADDIW s11, a0, -13
  SW s11, 908(sp)
  ADDIW s11, s1, -14
  SW s11, 904(sp)
  ADDIW s11, s1, -15
  SW s11, 900(sp)
  ADDIW s11, a0, -15
  SW s11, 896(sp)
  ADDIW s11, a0, -16
  SW s11, 892(sp)
  ADDIW s11, s1, -17
  SW s11, 888(sp)
  ADDIW s11, s1, -18
  SW s11, 884(sp)
  ADDIW s11, a0, -18
  SW s11, 880(sp)
  ADDIW s11, a0, -19
  SW s11, 876(sp)
  ADDIW s11, s1, -20
  SW s11, 812(sp)
  ADDIW s11, s1, -21
  SW s11, 872(sp)
  ADDIW s11, a0, -21
  SW s11, 632(sp)
  ADDIW s11, a0, -22
  SW s11, 628(sp)
  ADDIW s11, s1, -23
  SW s11, 624(sp)
  ADDIW s11, s1, -24
  SW s11, 620(sp)
  ADDIW s11, a0, -24
  SW s11, 616(sp)
  ADDIW s11, a0, -25
  SW s11, 612(sp)
  ADDIW s11, s1, -26
  SW s11, 608(sp)
  ADDIW s11, s1, -27
  SW s11, 604(sp)
  ADDIW s11, a0, -27
  SW s11, 600(sp)
  ADDIW s11, a0, -28
  SW s11, 596(sp)
  ADDIW s11, s1, -29
  SW s11, 592(sp)
  ADDIW s11, s1, -30
  SW s11, 588(sp)
  ADDIW s11, a0, -30
  SW s11, 584(sp)
  ADDIW s11, a0, -31
  SW s11, 580(sp)
  ADDIW s11, s1, -32
  SW s11, 516(sp)
  ADDIW s11, s1, -33
  SW s11, 572(sp)
  ADDIW s11, a0, -33
  SW s11, 568(sp)
  ADDIW s11, a0, -34
  SW s11, 564(sp)
  ADDIW s11, s1, -35
  SW s11, 560(sp)
  ADDIW s11, s1, -36
  SW s11, 556(sp)
  ADDIW s11, a0, -36
  SW s11, 552(sp)
  ADDIW s11, a0, -37
  SW s11, 548(sp)
  ADDIW s11, s1, -38
  SW s11, 544(sp)
  ADDIW s11, s1, -39
  SW s11, 540(sp)
  ADDIW s11, a0, -39
  SW s11, 536(sp)
  ADDIW s11, a0, -40
  SW s11, 532(sp)
  ADDIW s11, s1, -41
  SW s11, 528(sp)
  ADDIW s11, s1, -42
  SW s11, 524(sp)
  ADDIW s11, a0, -42
  SW s11, 520(sp)
  ADDIW s11, a0, -43
  SW s11, 576(sp)
  ADDIW s11, s1, -44
  SW s11, 748(sp)
  ADDIW s11, s1, -45
  SW s11, 744(sp)
  ADDIW s11, a0, -45
  SW s11, 740(sp)
  ADDIW s11, a0, -46
  SW s11, 736(sp)
  ADDIW s11, s1, -47
  SW s11, 732(sp)
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
  LW s0, 412(sp)
  ADDW a0, a0, s0
  LW s0, 980(sp)
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
  LW s0, 888(sp)
  ADDW a0, a0, s0
  LW s0, 884(sp)
  ADDW a0, a0, s0
  LW s0, 880(sp)
  ADDW a0, a0, s0
  LW s0, 876(sp)
  ADDW a0, a0, s0
  LW s0, 812(sp)
  ADDW a0, a0, s0
  LW s0, 872(sp)
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
  LW s0, 584(sp)
  ADDW a0, a0, s0
  LW s0, 580(sp)
  ADDW a0, a0, s0
  LW s0, 516(sp)
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
  LW s0, 524(sp)
  ADDW a0, a0, s0
  LW s0, 520(sp)
  ADDW a0, a0, s0
  LW s0, 576(sp)
  ADDW a0, a0, s0
  LW s0, 748(sp)
  ADDW a0, a0, s0
  LW s0, 744(sp)
  ADDW a0, a0, s0
  LW s0, 740(sp)
  ADDW a0, a0, s0
  LW s0, 736(sp)
  ADDW a0, a0, s0
  LW s0, 732(sp)
  ADDW a0, a0, s0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 984(sp)
  LD s0, 992(sp)
  LD s1, 1000(sp)
  LD s2, 1008(sp)
  LD s3, 1016(sp)
  LD s4, 1024(sp)
  LD s5, 1032(sp)
  LD s6, 1040(sp)
  LD s7, 1048(sp)
  LD s8, 1056(sp)
  LD s9, 1064(sp)
  LD s10, 1072(sp)
  LD s11, 1080(sp)
  ADDI sp, sp, 1424
  JALR zero, 0(ra)
bb12:   # loop depth 1
  JAL zero, bb10
bb13:   # loop depth 0
  LW s6, 464(sp)
  JAL zero, bb9
bb14:   # loop depth 1
  LW s11, 492(sp)
  LW a0, 640(sp)
  SW a0, 640(sp)
  JAL zero, bb1
bb15:   # loop depth 1
  SLLIW s11, s11, 2
  ADDI a0, sp, 1088
  ADD a0, a0, s11
  SD a0, 1408(sp)
  LW a0, 492(sp)
  SW a0, 860(sp)
  LW a0, 640(sp)
  SW a0, 640(sp)
  # implict jump to bb16
bb16:   # loop depth 2
  LW a0, 640(sp)
  SW a0, 640(sp)
  LW a0, 860(sp)
  SW a0, 484(sp)
  LD a0, 1408(sp)
  LW s10, 0(a0)
  LW a0, 484(sp)
  SLLIW a0, a0, 2
  SW a0, 480(sp)
  LW a0, 480(sp)
  ADDI t6, sp, 1088
  ADD a0, t6, a0
  SD a0, 1416(sp)
  LD a0, 1416(sp)
  LW a0, 0(a0)
  SW a0, 472(sp)
  LW a0, 472(sp)
  BLT s10, a0, bb21
  # implict jump to bb17
bb17:   # loop depth 2
  LW a0, 640(sp)
  SW a0, 640(sp)
  # implict jump to bb18
bb18:   # loop depth 2
  LW a0, 640(sp)
  SW a0, 640(sp)
  LW a0, 484(sp)
  ADDIW a0, a0, 1
  SW a0, 860(sp)
  LW a0, 860(sp)
  SLTI a0, a0, 16
  SB a0, 6(sp)
  LB a0, 6(sp)
  BNE a0, zero, bb20
  # implict jump to bb19
bb19:   # loop depth 1
  LW a0, 640(sp)
  SW a0, 640(sp)
  JAL zero, bb3
bb20:   # loop depth 2
  LW a0, 860(sp)
  SW a0, 860(sp)
  LW a0, 640(sp)
  SW a0, 640(sp)
  JAL zero, bb16
bb21:   # loop depth 2
  LD a0, 1408(sp)
  LW a0, 0(a0)
  SW a0, 640(sp)
  LD a0, 1416(sp)
  LW s11, 0(a0)
  LD a0, 1408(sp)
  SW s11, 0(a0)
  LD a0, 1416(sp)
  LW s0, 640(sp)
  SW s0, 0(a0)
  LW a0, 640(sp)
  SW a0, 640(sp)
  JAL zero, bb18
