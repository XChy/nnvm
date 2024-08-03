.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -944
  SD ra, 528(sp)
  SD s0, 536(sp)
  SD s1, 544(sp)
  SD s2, 552(sp)
  SD s3, 560(sp)
  SD s4, 568(sp)
  SD s5, 576(sp)
  SD s6, 584(sp)
  SD s7, 592(sp)
  SD s8, 600(sp)
  SD s9, 608(sp)
  SD s10, 616(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 376(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 472(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 520(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 308(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 356(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 516(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 464(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 448(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 512(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 444(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 456(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 452(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 440(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 460(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 468(sp)
  CALL getint
  SW a0, 324(sp)
  LW a0, 376(sp)
  SW a0, 624(sp)
  LW a0, 472(sp)
  SW a0, 628(sp)
  LW a0, 520(sp)
  SW a0, 632(sp)
  LW a0, 308(sp)
  SW a0, 636(sp)
  LW a0, 356(sp)
  SW a0, 640(sp)
  LW a0, 516(sp)
  SW a0, 644(sp)
  LW a0, 464(sp)
  SW a0, 648(sp)
  LW a0, 448(sp)
  SW a0, 652(sp)
  LW a0, 512(sp)
  SW a0, 656(sp)
  LW a0, 444(sp)
  SW a0, 660(sp)
  LW a0, 456(sp)
  SW a0, 664(sp)
  LW a0, 452(sp)
  SW a0, 668(sp)
  LW a0, 440(sp)
  SW a0, 672(sp)
  LW a0, 460(sp)
  SW a0, 676(sp)
  LW a0, 468(sp)
  SW a0, 680(sp)
  LW a0, 324(sp)
  SW a0, 684(sp)
  ADD s0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb1
bb1:
  ADD s2, s0, zero
  ADDIW s1, s2, 1
  SLTI s0, s1, 16
  BNE s0, zero, bb18
  # implict jump to bb2
bb2:
  # implict jump to bb3
bb3:
  ADD s2, a0, zero
  SLTI a0, s1, 15
  BNE a0, zero, bb17
  # implict jump to bb4
bb4:
  LW s2, 624(sp)
  LW s1, 628(sp)
  LW s0, 632(sp)
  LW a0, 636(sp)
  SW a0, 336(sp)
  LW a0, 640(sp)
  SW a0, 332(sp)
  LW a0, 644(sp)
  SW a0, 328(sp)
  LW a0, 648(sp)
  SW a0, 280(sp)
  LW a0, 652(sp)
  SW a0, 284(sp)
  LW a0, 656(sp)
  SW a0, 288(sp)
  LW a0, 660(sp)
  SW a0, 312(sp)
  LW a0, 664(sp)
  SW a0, 40(sp)
  LW s10, 668(sp)
  LW s9, 672(sp)
  LW s8, 676(sp)
  LW a0, 680(sp)
  SW a0, 500(sp)
  LW a0, 684(sp)
  SW a0, 296(sp)
  SLTIU a0, s2, 1
  BNE a0, zero, bb16
  # implict jump to bb5
bb5:
  ADD s6, s2, zero
  ADD s5, s1, zero
  ADD s4, s0, zero
  LW a0, 336(sp)
  ADD s3, a0, zero
  LW a0, 332(sp)
  ADD s2, a0, zero
  LW a0, 328(sp)
  ADD s1, a0, zero
  LW a0, 280(sp)
  ADD s0, a0, zero
  LW a0, 284(sp)
  ADD s7, a0, zero
  LW a0, 288(sp)
  SW a0, 116(sp)
  LW a0, 312(sp)
  SW a0, 120(sp)
  LW a0, 40(sp)
  SW a0, 216(sp)
  ADD a0, s10, zero
  SW a0, 380(sp)
  ADD a0, s9, zero
  SW a0, 404(sp)
  ADD s9, s8, zero
  LW a0, 500(sp)
  ADD s8, a0, zero
  LW a0, 296(sp)
  SW a0, 76(sp)
  LW a0, 376(sp)
  SW a0, 84(sp)
  LW a0, 472(sp)
  SW a0, 88(sp)
  LW a0, 520(sp)
  SW a0, 92(sp)
  LW a0, 308(sp)
  SW a0, 96(sp)
  LW a0, 356(sp)
  SW a0, 100(sp)
  LW a0, 516(sp)
  SW a0, 104(sp)
  LW a0, 464(sp)
  SW a0, 108(sp)
  LW a0, 448(sp)
  SW a0, 80(sp)
  LW a0, 512(sp)
  SW a0, 432(sp)
  LW a0, 444(sp)
  SW a0, 428(sp)
  LW a0, 456(sp)
  SW a0, 424(sp)
  LW a0, 452(sp)
  SW a0, 420(sp)
  LW a0, 440(sp)
  SW a0, 416(sp)
  LW a0, 460(sp)
  SW a0, 352(sp)
  LW a0, 468(sp)
  SW a0, 256(sp)
  LW a0, 324(sp)
  SW a0, 436(sp)
  # implict jump to bb6
bb6:
  LW a0, 436(sp)
  SW a0, 316(sp)
  LW a0, 256(sp)
  SW a0, 320(sp)
  LW a0, 352(sp)
  SW a0, 412(sp)
  LW a0, 416(sp)
  SW a0, 476(sp)
  LW a0, 420(sp)
  SW a0, 508(sp)
  LW a0, 424(sp)
  SW a0, 504(sp)
  LW a0, 428(sp)
  SW a0, 524(sp)
  LW a0, 432(sp)
  SW a0, 496(sp)
  LW a0, 80(sp)
  SW a0, 484(sp)
  LW a0, 108(sp)
  SW a0, 480(sp)
  LW a0, 104(sp)
  SW a0, 492(sp)
  LW a0, 100(sp)
  SW a0, 488(sp)
  LW a0, 96(sp)
  SW a0, 300(sp)
  LW a0, 92(sp)
  SW a0, 304(sp)
  LW a0, 88(sp)
  SW a0, 348(sp)
  LW a0, 84(sp)
  SW a0, 292(sp)
  LW a0, 76(sp)
  SW a0, 340(sp)
  ADD a0, s8, zero
  SW a0, 344(sp)
  ADD a0, s9, zero
  SW a0, 368(sp)
  LW a0, 404(sp)
  SW a0, 372(sp)
  LW a0, 380(sp)
  SW a0, 228(sp)
  LW a0, 216(sp)
  SW a0, 224(sp)
  LW a0, 120(sp)
  SW a0, 64(sp)
  LW a0, 116(sp)
  SW a0, 60(sp)
  ADD a0, s7, zero
  SW a0, 360(sp)
  ADD a0, s0, zero
  SW a0, 364(sp)
  ADD a0, s1, zero
  SW a0, 48(sp)
  ADD a0, s2, zero
  SW a0, 44(sp)
  ADD s2, s3, zero
  ADD s3, s4, zero
  ADD s0, s5, zero
  ADD s1, s6, zero
  ADDI a0, zero, 1
  SUBW s1, s1, a0
  ADDW s0, s0, s3
  LUI a0, 243712
  ADDIW a0, a0, 1
  REMW s0, s0, a0
  SLTIU a0, s1, 1
  BNE a0, zero, bb8
  # implict jump to bb7
bb7:
  ADD s6, s1, zero
  ADD s5, s0, zero
  ADD s4, s2, zero
  LW a0, 44(sp)
  ADD s3, a0, zero
  LW a0, 48(sp)
  ADD s2, a0, zero
  LW a0, 364(sp)
  ADD s1, a0, zero
  LW a0, 360(sp)
  ADD s0, a0, zero
  LW a0, 60(sp)
  ADD s7, a0, zero
  LW a0, 64(sp)
  SW a0, 116(sp)
  LW a0, 224(sp)
  SW a0, 120(sp)
  LW a0, 228(sp)
  SW a0, 216(sp)
  LW a0, 372(sp)
  SW a0, 380(sp)
  LW a0, 368(sp)
  SW a0, 404(sp)
  LW a0, 344(sp)
  ADD s9, a0, zero
  LW a0, 340(sp)
  ADD s8, a0, zero
  LW a0, 292(sp)
  SW a0, 76(sp)
  LW a0, 348(sp)
  SW a0, 84(sp)
  LW a0, 304(sp)
  SW a0, 88(sp)
  LW a0, 300(sp)
  SW a0, 92(sp)
  LW a0, 488(sp)
  SW a0, 96(sp)
  LW a0, 492(sp)
  SW a0, 100(sp)
  LW a0, 480(sp)
  SW a0, 104(sp)
  LW a0, 484(sp)
  SW a0, 108(sp)
  LW a0, 496(sp)
  SW a0, 80(sp)
  LW a0, 524(sp)
  SW a0, 432(sp)
  LW a0, 504(sp)
  SW a0, 428(sp)
  LW a0, 508(sp)
  SW a0, 424(sp)
  LW a0, 476(sp)
  SW a0, 420(sp)
  LW a0, 412(sp)
  SW a0, 416(sp)
  LW a0, 320(sp)
  SW a0, 352(sp)
  LW a0, 316(sp)
  SW a0, 256(sp)
  ADD a0, zero, zero
  SW a0, 436(sp)
  JAL zero, bb6
bb8:
  ADD a0, s0, zero
  # implict jump to bb9
bb9:
  SW a0, 688(sp)
  LUI a0, 2
  ADDIW a0, a0, 656
  SW a0, 692(sp)
  ADDI a0, zero, 62
  # implict jump to bb10
bb10:
  ADD s0, a0, zero
  ADDI a0, zero, 1
  SUBW s0, s0, a0
  SLLIW a0, s0, 2
  ADDIW a0, a0, 8
  ADDI t5, sp, 688
  ADD a0, t5, a0
  SW zero, 0(a0)
  BNE s0, zero, bb15
  # implict jump to bb11
bb11:
  ADDI a0, zero, 1
  # implict jump to bb12
bb12:
  ADD s3, a0, zero
  SLLIW a0, s3, 3
  ADDI t5, sp, 688
  ADD s2, t5, a0
  ADDI a0, zero, 1
  SUBW a0, s3, a0
  SLLIW a0, a0, 3
  ADDI t5, sp, 688
  ADD s1, t5, a0
  LW s0, 4(s1)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 0(s2)
  LW s0, 0(s1)
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SW a0, 4(s2)
  ADDIW s0, s3, 1
  SLTI a0, s0, 32
  BNE a0, zero, bb14
  # implict jump to bb13
bb13:
  LW a0, 688(sp)
  LW s0, 692(sp)
  ADDW s0, a0, s0
  LW a0, 696(sp)
  ADDW a0, s0, a0
  LW s0, 700(sp)
  ADDW a0, a0, s0
  LW s0, 704(sp)
  ADDW a0, a0, s0
  LW s0, 708(sp)
  ADDW s0, a0, s0
  LW a0, 712(sp)
  ADDW s0, s0, a0
  LW a0, 716(sp)
  ADDW a0, s0, a0
  LW s0, 720(sp)
  ADDW a0, a0, s0
  LW s0, 724(sp)
  ADDW s0, a0, s0
  LW a0, 728(sp)
  ADDW a0, s0, a0
  LW s0, 732(sp)
  ADDW a0, a0, s0
  LW s0, 736(sp)
  ADDW a0, a0, s0
  LW s0, 740(sp)
  ADDW a0, a0, s0
  LW s0, 744(sp)
  ADDW a0, a0, s0
  LW s0, 748(sp)
  ADDW a0, a0, s0
  LW s0, 752(sp)
  ADDW a0, a0, s0
  LW s0, 756(sp)
  ADDW a0, a0, s0
  LW s0, 760(sp)
  ADDW a0, a0, s0
  LW s0, 764(sp)
  ADDW s0, a0, s0
  LW a0, 768(sp)
  ADDW a0, s0, a0
  LW s0, 772(sp)
  ADDW s0, a0, s0
  LW a0, 776(sp)
  ADDW a0, s0, a0
  LW s0, 780(sp)
  ADDW a0, a0, s0
  LW s0, 784(sp)
  ADDW s0, a0, s0
  LW a0, 788(sp)
  ADDW s0, s0, a0
  LW a0, 792(sp)
  ADDW a0, s0, a0
  LW s0, 796(sp)
  ADDW a0, a0, s0
  LW s0, 800(sp)
  ADDW a0, a0, s0
  LW s0, 804(sp)
  ADDW s0, a0, s0
  LW a0, 808(sp)
  ADDW s0, s0, a0
  LW a0, 812(sp)
  ADDW s0, s0, a0
  LW a0, 816(sp)
  ADDW a0, s0, a0
  LW s0, 820(sp)
  ADDW s0, a0, s0
  LW a0, 824(sp)
  ADDW a0, s0, a0
  LW s0, 828(sp)
  ADDW a0, a0, s0
  LW s0, 832(sp)
  ADDW a0, a0, s0
  LW s0, 836(sp)
  ADDW s0, a0, s0
  LW a0, 840(sp)
  ADDW a0, s0, a0
  LW s0, 844(sp)
  ADDW s0, a0, s0
  LW a0, 848(sp)
  ADDW a0, s0, a0
  LW s0, 852(sp)
  ADDW s0, a0, s0
  LW a0, 856(sp)
  ADDW a0, s0, a0
  LW s0, 860(sp)
  ADDW a0, a0, s0
  LW s0, 864(sp)
  ADDW a0, a0, s0
  LW s0, 868(sp)
  ADDW s0, a0, s0
  LW a0, 872(sp)
  ADDW s0, s0, a0
  LW a0, 876(sp)
  ADDW s0, s0, a0
  LW a0, 880(sp)
  ADDW s0, s0, a0
  LW a0, 884(sp)
  ADDW s0, s0, a0
  LW a0, 888(sp)
  ADDW a0, s0, a0
  LW s0, 892(sp)
  ADDW s0, a0, s0
  LW a0, 896(sp)
  ADDW a0, s0, a0
  LW s0, 900(sp)
  ADDW s0, a0, s0
  LW a0, 904(sp)
  ADDW a0, s0, a0
  LW s0, 908(sp)
  ADDW a0, a0, s0
  LW s0, 912(sp)
  ADDW a0, a0, s0
  LW s0, 916(sp)
  ADDW s0, a0, s0
  LW a0, 920(sp)
  ADDW s0, s0, a0
  LW a0, 924(sp)
  ADDW a0, s0, a0
  LW s0, 928(sp)
  ADDW a0, a0, s0
  LW s0, 932(sp)
  ADDW s0, a0, s0
  LW a0, 936(sp)
  ADDW a0, s0, a0
  LW s0, 940(sp)
  ADDW a0, a0, s0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 528(sp)
  LD s0, 536(sp)
  LD s1, 544(sp)
  LD s2, 552(sp)
  LD s3, 560(sp)
  LD s4, 568(sp)
  LD s5, 576(sp)
  LD s6, 584(sp)
  LD s7, 592(sp)
  LD s8, 600(sp)
  LD s9, 608(sp)
  LD s10, 616(sp)
  ADDI sp, sp, 944
  JALR zero, 0(ra)
bb14:
  ADD a0, s0, zero
  JAL zero, bb12
bb15:
  ADD a0, s0, zero
  JAL zero, bb10
bb16:
  ADD a0, s1, zero
  JAL zero, bb9
bb17:
  ADD s0, s1, zero
  ADD a0, s2, zero
  JAL zero, bb1
bb18:
  SLLIW s0, s2, 2
  ADDI t5, sp, 624
  ADD s2, t5, s0
  ADD s0, s1, zero
  # implict jump to bb19
bb19:
  ADD s4, a0, zero
  ADD s5, s0, zero
  LW s3, 0(s2)
  SLLIW a0, s5, 2
  ADDI t5, sp, 624
  ADD s0, t5, a0
  LW a0, 0(s0)
  BLT s3, a0, bb24
  # implict jump to bb20
bb20:
  ADD a0, s4, zero
  # implict jump to bb21
bb21:
  ADD s3, a0, zero
  ADDIW s0, s5, 1
  SLTI a0, s0, 16
  BNE a0, zero, bb23
  # implict jump to bb22
bb22:
  ADD a0, s3, zero
  JAL zero, bb3
bb23:
  ADD a0, s3, zero
  JAL zero, bb19
bb24:
  LW s3, 0(s2)
  LW a0, 0(s0)
  SW a0, 0(s2)
  SW s3, 0(s0)
  ADD a0, s3, zero
  JAL zero, bb21
