.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -928
  SD ra, 512(sp)
  SD s0, 520(sp)
  SD s1, 528(sp)
  SD s2, 536(sp)
  SD s3, 544(sp)
  SD s4, 552(sp)
  SD s5, 560(sp)
  SD s6, 568(sp)
  SD s7, 576(sp)
  SD s8, 584(sp)
  SD s10, 592(sp)
  SD s11, 600(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 72(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 104(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 100(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 96(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 92(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 88(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 84(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 80(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 76(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 248(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 340(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 400(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 404(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 408(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 412(sp)
  CALL getint
  SW a0, 416(sp)
  LW a0, 72(sp)
  SW a0, 608(sp)
  LW a0, 104(sp)
  SW a0, 612(sp)
  LW a0, 100(sp)
  SW a0, 616(sp)
  LW a0, 96(sp)
  SW a0, 620(sp)
  LW a0, 92(sp)
  SW a0, 624(sp)
  LW a0, 88(sp)
  SW a0, 628(sp)
  LW a0, 84(sp)
  SW a0, 632(sp)
  LW a0, 80(sp)
  SW a0, 636(sp)
  LW a0, 76(sp)
  SW a0, 640(sp)
  LW a0, 248(sp)
  SW a0, 644(sp)
  LW a0, 340(sp)
  SW a0, 648(sp)
  LW a0, 400(sp)
  SW a0, 652(sp)
  LW a0, 404(sp)
  SW a0, 656(sp)
  LW a0, 408(sp)
  SW a0, 660(sp)
  LW a0, 412(sp)
  SW a0, 664(sp)
  LW a0, 416(sp)
  SW a0, 668(sp)
  ADD a0, zero, zero
  ADD s0, zero, zero
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  ADD s0, a0, zero
  ADDIW s5, s0, 1
  SLTI a0, s5, 16
  BNE a0, zero, bb15
  # implict jump to bb2
bb2:
  ADD a0, s1, zero
  # implict jump to bb3
bb3:
  ADD s0, a0, zero
  SLTI a0, s5, 15
  BNE a0, zero, bb14
  # implict jump to bb4
bb4:
  LW a0, 608(sp)
  SW a0, 460(sp)
  LW a0, 612(sp)
  SW a0, 396(sp)
  LW s8, 616(sp)
  LW s7, 620(sp)
  LW s3, 624(sp)
  LW a0, 628(sp)
  SW a0, 68(sp)
  LW s2, 632(sp)
  LW s1, 636(sp)
  LW s0, 640(sp)
  LW s4, 644(sp)
  LW a0, 648(sp)
  SW a0, 456(sp)
  LW a0, 652(sp)
  SW a0, 284(sp)
  LW a0, 656(sp)
  SW a0, 60(sp)
  LW a0, 660(sp)
  SW a0, 56(sp)
  LW s6, 664(sp)
  LW s5, 668(sp)
  LW a0, 460(sp)
  SLTIU a0, a0, 1
  SB a0, 0(sp)
  LB a0, 0(sp)
  BNE a0, zero, bb13
  # implict jump to bb5
bb5:
  LW a0, 460(sp)
  SW a0, 288(sp)
  LW a0, 396(sp)
  SW a0, 48(sp)
  ADD a0, s8, zero
  SW a0, 372(sp)
  ADD a0, s7, zero
  SW a0, 368(sp)
  ADD a0, s3, zero
  SW a0, 364(sp)
  LW a0, 68(sp)
  ADD s3, a0, zero
  LW a0, 456(sp)
  SW a0, 292(sp)
  LW a0, 284(sp)
  SW a0, 296(sp)
  LW a0, 60(sp)
  SW a0, 300(sp)
  LW a0, 56(sp)
  SW a0, 36(sp)
  ADD a0, s6, zero
  SW a0, 32(sp)
  ADD s6, s5, zero
  LW a0, 72(sp)
  ADD s5, a0, zero
  LW a0, 104(sp)
  SW a0, 304(sp)
  LW a0, 100(sp)
  SW a0, 308(sp)
  LW a0, 96(sp)
  SW a0, 312(sp)
  LW a0, 92(sp)
  SW a0, 316(sp)
  LW a0, 88(sp)
  SW a0, 320(sp)
  LW a0, 84(sp)
  SW a0, 324(sp)
  LW a0, 80(sp)
  SW a0, 328(sp)
  LW a0, 76(sp)
  SW a0, 332(sp)
  LW a0, 248(sp)
  SW a0, 336(sp)
  LW a0, 340(sp)
  SW a0, 280(sp)
  LW a0, 400(sp)
  SW a0, 344(sp)
  LW a0, 404(sp)
  SW a0, 348(sp)
  LW a0, 408(sp)
  SW a0, 352(sp)
  LW a0, 412(sp)
  SW a0, 356(sp)
  LW a0, 416(sp)
  SW a0, 360(sp)
  # implict jump to bb6
bb6:
  LW a0, 360(sp)
  SW a0, 464(sp)
  LW a0, 356(sp)
  SW a0, 468(sp)
  LW a0, 352(sp)
  SW a0, 472(sp)
  LW a0, 348(sp)
  SW a0, 476(sp)
  LW a0, 344(sp)
  SW a0, 504(sp)
  LW a0, 280(sp)
  SW a0, 480(sp)
  LW a0, 336(sp)
  SW a0, 484(sp)
  LW a0, 332(sp)
  SW a0, 488(sp)
  LW a0, 328(sp)
  SW a0, 492(sp)
  LW a0, 324(sp)
  SW a0, 496(sp)
  LW a0, 320(sp)
  SW a0, 452(sp)
  LW a0, 316(sp)
  SW a0, 500(sp)
  LW a0, 312(sp)
  SW a0, 448(sp)
  LW a0, 308(sp)
  SW a0, 444(sp)
  LW a0, 304(sp)
  SW a0, 440(sp)
  LW a0, 32(sp)
  ADD s7, a0, zero
  LW a0, 36(sp)
  SW a0, 276(sp)
  LW a0, 300(sp)
  SW a0, 436(sp)
  LW a0, 296(sp)
  SW a0, 432(sp)
  LW a0, 292(sp)
  SW a0, 428(sp)
  ADD a0, s4, zero
  SW a0, 148(sp)
  ADD a0, s0, zero
  SW a0, 424(sp)
  ADD a0, s1, zero
  SW a0, 420(sp)
  ADD s1, s2, zero
  ADD s2, s3, zero
  LW a0, 364(sp)
  ADD s3, a0, zero
  LW a0, 368(sp)
  ADD s4, a0, zero
  LW a0, 372(sp)
  ADD s10, a0, zero
  LW a0, 48(sp)
  ADD s11, a0, zero
  LW a0, 288(sp)
  SW a0, 152(sp)
  ADDI a0, zero, 1
  SW a0, 112(sp)
  LW s0, 112(sp)
  LW a0, 152(sp)
  SUBW a0, a0, s0
  SW a0, 216(sp)
  ADDW s0, s11, s10
  LUI a0, 243712
  ADDIW a0, a0, 1
  REMW s0, s0, a0
  LW a0, 216(sp)
  SLTIU a0, a0, 1
  BNE a0, zero, bb8
  # implict jump to bb7
bb7:
  LW a0, 216(sp)
  SW a0, 288(sp)
  ADD a0, s0, zero
  SW a0, 48(sp)
  ADD a0, s4, zero
  SW a0, 372(sp)
  ADD a0, s3, zero
  SW a0, 368(sp)
  ADD a0, s2, zero
  SW a0, 364(sp)
  ADD s3, s1, zero
  LW a0, 420(sp)
  ADD s2, a0, zero
  LW a0, 424(sp)
  ADD s1, a0, zero
  LW a0, 148(sp)
  ADD s0, a0, zero
  LW a0, 428(sp)
  ADD s4, a0, zero
  LW a0, 432(sp)
  SW a0, 292(sp)
  LW a0, 436(sp)
  SW a0, 296(sp)
  LW a0, 276(sp)
  SW a0, 300(sp)
  ADD a0, s7, zero
  SW a0, 36(sp)
  ADD a0, s6, zero
  SW a0, 32(sp)
  ADD s6, s5, zero
  LW a0, 440(sp)
  ADD s5, a0, zero
  LW a0, 444(sp)
  SW a0, 304(sp)
  LW a0, 448(sp)
  SW a0, 308(sp)
  LW a0, 500(sp)
  SW a0, 312(sp)
  LW a0, 452(sp)
  SW a0, 316(sp)
  LW a0, 496(sp)
  SW a0, 320(sp)
  LW a0, 492(sp)
  SW a0, 324(sp)
  LW a0, 488(sp)
  SW a0, 328(sp)
  LW a0, 484(sp)
  SW a0, 332(sp)
  LW a0, 480(sp)
  SW a0, 336(sp)
  LW a0, 504(sp)
  SW a0, 280(sp)
  LW a0, 476(sp)
  SW a0, 344(sp)
  LW a0, 472(sp)
  SW a0, 348(sp)
  LW a0, 468(sp)
  SW a0, 352(sp)
  LW a0, 464(sp)
  SW a0, 356(sp)
  ADD a0, zero, zero
  SW a0, 360(sp)
  JAL zero, bb6
bb8:
  ADD a0, s0, zero
  # implict jump to bb9
bb9:
  SW a0, 672(sp)
  LUI a0, 2
  ADDIW a0, a0, 656
  SW a0, 676(sp)
  ADDI a0, zero, 62
  # implict jump to bb10
bb10:
  ADD s0, a0, zero
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SLLIW s0, a0, 2
  ADDIW s0, s0, 8
  ADDI t5, sp, 672
  ADD s0, t5, s0
  SW zero, 0(s0)
  BNE a0, zero, bb12
  # implict jump to bb11
bb11:
  LW s0, 676(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 680(sp)
  LW s0, 672(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 684(sp)
  LW s0, 684(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 688(sp)
  LW s0, 680(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 692(sp)
  LW s0, 692(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 696(sp)
  LW s0, 688(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 700(sp)
  LW s0, 700(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 704(sp)
  LW s0, 696(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 708(sp)
  LW s0, 708(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 712(sp)
  LW s0, 704(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 716(sp)
  LW s0, 716(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 720(sp)
  LW s0, 712(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 724(sp)
  LW s0, 724(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 728(sp)
  LW s0, 720(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 732(sp)
  LW s0, 732(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 736(sp)
  LW s0, 728(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 740(sp)
  LW s0, 740(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 744(sp)
  LW s0, 736(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 748(sp)
  LW s0, 748(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 752(sp)
  LW s0, 744(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 756(sp)
  LW s0, 756(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 760(sp)
  LW s0, 752(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 764(sp)
  LW s0, 764(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 768(sp)
  LW s0, 760(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 772(sp)
  LW s0, 772(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 776(sp)
  LW s0, 768(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 780(sp)
  LW s0, 780(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 784(sp)
  LW s0, 776(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 788(sp)
  LW s0, 788(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 792(sp)
  LW s0, 784(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 796(sp)
  LW s0, 796(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 800(sp)
  LW s0, 792(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 804(sp)
  LW s0, 804(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 808(sp)
  LW s0, 800(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 812(sp)
  LW s0, 812(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 816(sp)
  LW s0, 808(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 820(sp)
  LW s0, 820(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 824(sp)
  LW s0, 816(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 828(sp)
  LW s0, 828(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 832(sp)
  LW s0, 824(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 836(sp)
  LW s0, 836(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 840(sp)
  LW s0, 832(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 844(sp)
  LW s0, 844(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 848(sp)
  LW s0, 840(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 852(sp)
  LW s0, 852(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 856(sp)
  LW s0, 848(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 860(sp)
  LW s0, 860(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 864(sp)
  LW s0, 856(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 868(sp)
  LW s0, 868(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 872(sp)
  LW s0, 864(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 876(sp)
  LW s0, 876(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 880(sp)
  LW s0, 872(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 884(sp)
  LW s0, 884(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 888(sp)
  LW s0, 880(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 892(sp)
  LW s0, 892(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 896(sp)
  LW s0, 888(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 900(sp)
  LW s0, 900(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 904(sp)
  LW s0, 896(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 908(sp)
  LW s0, 908(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 912(sp)
  LW s0, 904(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 916(sp)
  LW s0, 916(sp)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 920(sp)
  LW s0, 912(sp)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 924(sp)
  LW s0, 672(sp)
  LW a0, 676(sp)
  ADDW s0, s0, a0
  LW a0, 680(sp)
  ADDW s0, s0, a0
  LW a0, 684(sp)
  ADDW s0, s0, a0
  LW a0, 688(sp)
  ADDW s0, s0, a0
  LW a0, 692(sp)
  ADDW s0, s0, a0
  LW a0, 696(sp)
  ADDW s0, s0, a0
  LW a0, 700(sp)
  ADDW s0, s0, a0
  LW a0, 704(sp)
  ADDW s0, s0, a0
  LW a0, 708(sp)
  ADDW s0, s0, a0
  LW a0, 712(sp)
  ADDW s0, s0, a0
  LW a0, 716(sp)
  ADDW s0, s0, a0
  LW a0, 720(sp)
  ADDW s0, s0, a0
  LW a0, 724(sp)
  ADDW s0, s0, a0
  LW a0, 728(sp)
  ADDW s0, s0, a0
  LW a0, 732(sp)
  ADDW s0, s0, a0
  LW a0, 736(sp)
  ADDW s0, s0, a0
  LW a0, 740(sp)
  ADDW s0, s0, a0
  LW a0, 744(sp)
  ADDW s0, s0, a0
  LW a0, 748(sp)
  ADDW s0, s0, a0
  LW a0, 752(sp)
  ADDW s0, s0, a0
  LW a0, 756(sp)
  ADDW s0, s0, a0
  LW a0, 760(sp)
  ADDW s0, s0, a0
  LW a0, 764(sp)
  ADDW s0, s0, a0
  LW a0, 768(sp)
  ADDW s0, s0, a0
  LW a0, 772(sp)
  ADDW s0, s0, a0
  LW a0, 776(sp)
  ADDW s0, s0, a0
  LW a0, 780(sp)
  ADDW a0, s0, a0
  LW s0, 784(sp)
  ADDW s0, a0, s0
  LW a0, 788(sp)
  ADDW s0, s0, a0
  LW a0, 792(sp)
  ADDW a0, s0, a0
  LW s0, 796(sp)
  ADDW s0, a0, s0
  LW a0, 800(sp)
  ADDW s0, s0, a0
  LW a0, 804(sp)
  ADDW s0, s0, a0
  LW a0, 808(sp)
  ADDW s0, s0, a0
  LW a0, 812(sp)
  ADDW s0, s0, a0
  LW a0, 816(sp)
  ADDW s0, s0, a0
  LW a0, 820(sp)
  ADDW s0, s0, a0
  LW a0, 824(sp)
  ADDW s0, s0, a0
  LW a0, 828(sp)
  ADDW s0, s0, a0
  LW a0, 832(sp)
  ADDW s0, s0, a0
  LW a0, 836(sp)
  ADDW s0, s0, a0
  LW a0, 840(sp)
  ADDW s0, s0, a0
  LW a0, 844(sp)
  ADDW a0, s0, a0
  LW s0, 848(sp)
  ADDW s0, a0, s0
  LW a0, 852(sp)
  ADDW s0, s0, a0
  LW a0, 856(sp)
  ADDW s0, s0, a0
  LW a0, 860(sp)
  ADDW s0, s0, a0
  LW a0, 864(sp)
  ADDW s0, s0, a0
  LW a0, 868(sp)
  ADDW s0, s0, a0
  LW a0, 872(sp)
  ADDW s0, s0, a0
  LW a0, 876(sp)
  ADDW s0, s0, a0
  LW a0, 880(sp)
  ADDW s0, s0, a0
  LW a0, 884(sp)
  ADDW s0, s0, a0
  LW a0, 888(sp)
  ADDW s0, s0, a0
  LW a0, 892(sp)
  ADDW s0, s0, a0
  LW a0, 896(sp)
  ADDW s0, s0, a0
  LW a0, 900(sp)
  ADDW s0, s0, a0
  LW a0, 904(sp)
  ADDW s0, s0, a0
  LW a0, 908(sp)
  ADDW s0, s0, a0
  LW a0, 912(sp)
  ADDW s0, s0, a0
  LW a0, 916(sp)
  ADDW s0, s0, a0
  LW a0, 920(sp)
  ADDW s0, s0, a0
  LW a0, 924(sp)
  ADDW a0, s0, a0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 512(sp)
  LD s0, 520(sp)
  LD s1, 528(sp)
  LD s2, 536(sp)
  LD s3, 544(sp)
  LD s4, 552(sp)
  LD s5, 560(sp)
  LD s6, 568(sp)
  LD s7, 576(sp)
  LD s8, 584(sp)
  LD s10, 592(sp)
  LD s11, 600(sp)
  ADDI sp, sp, 928
  JALR zero, 0(ra)
bb12:
  JAL zero, bb10
bb13:
  LW a0, 396(sp)
  JAL zero, bb9
bb14:
  ADD a0, s5, zero
  JAL zero, bb1
bb15:
  SLLIW a0, s0, 2
  ADDI t5, sp, 608
  ADD s4, t5, a0
  ADD s0, s5, zero
  ADD a0, s1, zero
  # implict jump to bb16
bb16:
  ADD s2, a0, zero
  ADD s3, s0, zero
  LW s0, 0(s4)
  SLLIW a0, s3, 2
  ADDI t5, sp, 608
  ADD s1, t5, a0
  LW a0, 0(s1)
  BLT s0, a0, bb21
  # implict jump to bb17
bb17:
  ADD a0, s2, zero
  # implict jump to bb18
bb18:
  ADD s1, a0, zero
  ADDIW s0, s3, 1
  SLTI a0, s0, 16
  BNE a0, zero, bb20
  # implict jump to bb19
bb19:
  ADD a0, s1, zero
  JAL zero, bb3
bb20:
  ADD a0, s1, zero
  JAL zero, bb16
bb21:
  LW s0, 0(s4)
  LW a0, 0(s1)
  SW a0, 0(s4)
  SW s0, 0(s1)
  ADD a0, s0, zero
  JAL zero, bb18
