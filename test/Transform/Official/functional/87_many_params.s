.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -912
  SD ra, 488(sp)
  SD s0, 496(sp)
  SD s1, 504(sp)
  SD s2, 512(sp)
  SD s3, 520(sp)
  SD s4, 528(sp)
  SD s5, 536(sp)
  SD s6, 544(sp)
  SD s7, 552(sp)
  SD s8, 560(sp)
  SD s9, 568(sp)
  SD s10, 576(sp)
  SD s11, 584(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 420(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 436(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 416(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 428(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 424(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 412(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 432(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 440(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 472(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 308(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 320(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 324(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 336(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 476(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 288(sp)
  CALL getint
  SW a0, 284(sp)
  LW a0, 420(sp)
  SW a0, 592(sp)
  LW a0, 436(sp)
  SW a0, 596(sp)
  LW a0, 416(sp)
  SW a0, 600(sp)
  LW a0, 428(sp)
  SW a0, 604(sp)
  LW a0, 424(sp)
  SW a0, 608(sp)
  LW a0, 412(sp)
  SW a0, 612(sp)
  LW a0, 432(sp)
  SW a0, 616(sp)
  LW a0, 440(sp)
  SW a0, 620(sp)
  LW a0, 472(sp)
  SW a0, 624(sp)
  LW a0, 308(sp)
  SW a0, 628(sp)
  LW a0, 320(sp)
  SW a0, 632(sp)
  LW a0, 324(sp)
  SW a0, 636(sp)
  LW a0, 336(sp)
  SW a0, 640(sp)
  LW a0, 476(sp)
  SW a0, 644(sp)
  LW a0, 288(sp)
  SW a0, 648(sp)
  LW a0, 284(sp)
  SW a0, 652(sp)
  ADD s2, zero, zero
  ADD a0, zero, zero
  # implict jump to bb1
bb1:
  ADD s1, a0, zero
  ADD a0, s2, zero
  ADDIW s2, a0, 1
  SLTI s3, s2, 16
  BNE s3, zero, bb18
  # implict jump to bb2
bb2:
  ADD a0, s1, zero
  # implict jump to bb3
bb3:
  SLTI s1, s2, 15
  BNE s1, zero, bb17
  # implict jump to bb4
bb4:
  LW a0, 592(sp)
  LW s1, 596(sp)
  LW s0, 600(sp)
  SW s0, 252(sp)
  LW s0, 604(sp)
  SW s0, 256(sp)
  LW s2, 608(sp)
  LW s3, 612(sp)
  LW s4, 616(sp)
  LW s0, 620(sp)
  SW s0, 316(sp)
  LW s0, 624(sp)
  SW s0, 312(sp)
  LW s7, 628(sp)
  LW s0, 632(sp)
  SW s0, 172(sp)
  LW s0, 636(sp)
  SW s0, 140(sp)
  LW s0, 640(sp)
  SW s0, 144(sp)
  LW s0, 644(sp)
  SW s0, 304(sp)
  LW s9, 648(sp)
  LW s0, 652(sp)
  SW s0, 300(sp)
  SLTIU s10, a0, 1
  BNE s10, zero, bb16
  # implict jump to bb5
bb5:
  ADD s10, s1, zero
  LW s0, 252(sp)
  ADD s11, s0, zero
  LW s0, 256(sp)
  SW s0, 380(sp)
  ADD s1, s2, zero
  ADD s2, s3, zero
  ADD s3, s4, zero
  LW s0, 316(sp)
  ADD s4, s0, zero
  LW s0, 312(sp)
  SW s0, 108(sp)
  ADD s0, s7, zero
  SW s0, 112(sp)
  LW s0, 172(sp)
  SW s0, 372(sp)
  LW s0, 140(sp)
  ADD s6, s0, zero
  LW s0, 144(sp)
  ADD s7, s0, zero
  LW s0, 304(sp)
  SW s0, 376(sp)
  ADD s8, s9, zero
  LW s0, 300(sp)
  SW s0, 68(sp)
  LW s0, 420(sp)
  SW s0, 76(sp)
  LW s0, 436(sp)
  SW s0, 80(sp)
  LW s0, 416(sp)
  SW s0, 84(sp)
  LW s0, 428(sp)
  SW s0, 88(sp)
  LW s0, 424(sp)
  SW s0, 92(sp)
  LW s0, 412(sp)
  SW s0, 96(sp)
  LW s0, 432(sp)
  SW s0, 100(sp)
  LW s0, 440(sp)
  SW s0, 72(sp)
  LW s0, 472(sp)
  SW s0, 404(sp)
  LW s0, 308(sp)
  SW s0, 400(sp)
  LW s0, 320(sp)
  SW s0, 396(sp)
  LW s0, 324(sp)
  SW s0, 392(sp)
  LW s0, 336(sp)
  SW s0, 388(sp)
  LW s0, 476(sp)
  SW s0, 328(sp)
  LW s0, 288(sp)
  SW s0, 240(sp)
  LW s0, 284(sp)
  SW s0, 408(sp)
  # implict jump to bb6
bb6:
  LW s0, 408(sp)
  SW s0, 452(sp)
  LW s0, 240(sp)
  SW s0, 448(sp)
  LW s0, 328(sp)
  SW s0, 484(sp)
  LW s0, 388(sp)
  SW s0, 480(sp)
  LW s0, 392(sp)
  SW s0, 460(sp)
  LW s0, 396(sp)
  SW s0, 456(sp)
  LW s0, 400(sp)
  SW s0, 276(sp)
  LW s0, 404(sp)
  SW s0, 280(sp)
  LW s0, 72(sp)
  SW s0, 384(sp)
  LW s0, 100(sp)
  SW s0, 444(sp)
  LW s0, 96(sp)
  SW s0, 292(sp)
  LW s0, 92(sp)
  SW s0, 296(sp)
  LW s0, 88(sp)
  SW s0, 340(sp)
  LW s0, 84(sp)
  SW s0, 344(sp)
  LW s0, 80(sp)
  SW s0, 272(sp)
  LW s0, 76(sp)
  SW s0, 332(sp)
  LW s0, 68(sp)
  SW s0, 468(sp)
  ADD s0, s8, zero
  SW s0, 464(sp)
  LW s0, 376(sp)
  SW s0, 60(sp)
  ADD s0, s6, zero
  SW s0, 348(sp)
  LW s0, 372(sp)
  SW s0, 352(sp)
  LW s0, 112(sp)
  SW s0, 228(sp)
  LW s0, 108(sp)
  SW s0, 224(sp)
  LW s0, 380(sp)
  SW s0, 208(sp)
  ADD s0, s11, zero
  SW s0, 104(sp)
  ADD s0, s10, zero
  ADDI s10, zero, 1
  SUBW a0, a0, s10
  LW s5, 104(sp)
  ADDW s0, s0, s5
  LUI s10, 243712
  ADDIW s10, s10, 1
  REMW s0, s0, s10
  SLTIU s10, a0, 1
  BNE s10, zero, bb8
  # implict jump to bb7
bb7:
  ADD s10, s0, zero
  LW s0, 208(sp)
  ADD s11, s0, zero
  ADD s0, s1, zero
  SW s0, 380(sp)
  ADD s1, s2, zero
  ADD s2, s3, zero
  ADD s3, s4, zero
  LW s0, 224(sp)
  ADD s4, s0, zero
  LW s0, 228(sp)
  SW s0, 108(sp)
  LW s0, 352(sp)
  SW s0, 112(sp)
  LW s0, 348(sp)
  SW s0, 372(sp)
  ADD s6, s7, zero
  LW s0, 60(sp)
  ADD s7, s0, zero
  LW s0, 464(sp)
  SW s0, 376(sp)
  LW s0, 468(sp)
  ADD s8, s0, zero
  LW s0, 332(sp)
  SW s0, 68(sp)
  LW s0, 272(sp)
  SW s0, 76(sp)
  LW s0, 344(sp)
  SW s0, 80(sp)
  LW s0, 340(sp)
  SW s0, 84(sp)
  LW s0, 296(sp)
  SW s0, 88(sp)
  LW s0, 292(sp)
  SW s0, 92(sp)
  LW s0, 444(sp)
  SW s0, 96(sp)
  LW s0, 384(sp)
  SW s0, 100(sp)
  LW s0, 280(sp)
  SW s0, 72(sp)
  LW s0, 276(sp)
  SW s0, 404(sp)
  LW s0, 456(sp)
  SW s0, 400(sp)
  LW s0, 460(sp)
  SW s0, 396(sp)
  LW s0, 480(sp)
  SW s0, 392(sp)
  LW s0, 484(sp)
  SW s0, 388(sp)
  LW s0, 448(sp)
  SW s0, 328(sp)
  LW s0, 452(sp)
  SW s0, 240(sp)
  ADD s0, zero, zero
  SW s0, 408(sp)
  JAL zero, bb6
bb8:
  ADD a0, s0, zero
  # implict jump to bb9
bb9:
  SW a0, 656(sp)
  LUI a0, 2
  ADDIW a0, a0, 656
  SW a0, 660(sp)
  ADDI a0, zero, 62
  # implict jump to bb10
bb10:
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  ADDIW s0, s0, 8
  ADDI t5, sp, 656
  ADD s0, t5, s0
  SW zero, 0(s0)
  BNE a0, zero, bb15
  # implict jump to bb11
bb11:
  ADDI a0, zero, 1
  # implict jump to bb12
bb12:
  SLLIW s0, a0, 3
  ADDI t5, sp, 656
  ADD s0, t5, s0
  ADDI s1, zero, 1
  SUBW s1, a0, s1
  SLLIW s1, s1, 3
  ADDI t5, sp, 656
  ADD s1, t5, s1
  LW s2, 4(s1)
  ADDI s3, zero, 1
  SUBW s2, s2, s3
  SW s2, 0(s0)
  LW s1, 0(s1)
  ADDI s2, zero, 2
  SUBW s1, s1, s2
  SW s1, 4(s0)
  ADDIW a0, a0, 1
  SLTI s0, a0, 32
  BNE s0, zero, bb14
  # implict jump to bb13
bb13:
  LW a0, 656(sp)
  LW s0, 660(sp)
  ADDW a0, a0, s0
  LW s0, 664(sp)
  ADDW a0, a0, s0
  LW s0, 668(sp)
  ADDW a0, a0, s0
  LW s0, 672(sp)
  ADDW a0, a0, s0
  LW s0, 676(sp)
  ADDW a0, a0, s0
  LW s0, 680(sp)
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
  LW s0, 716(sp)
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
  LW s0, 748(sp)
  ADDW a0, a0, s0
  LW s0, 752(sp)
  ADDW a0, a0, s0
  LW s0, 756(sp)
  ADDW a0, a0, s0
  LW s0, 760(sp)
  ADDW a0, a0, s0
  LW s0, 764(sp)
  ADDW a0, a0, s0
  LW s0, 768(sp)
  ADDW a0, a0, s0
  LW s0, 772(sp)
  ADDW a0, a0, s0
  LW s0, 776(sp)
  ADDW a0, a0, s0
  LW s0, 780(sp)
  ADDW a0, a0, s0
  LW s0, 784(sp)
  ADDW a0, a0, s0
  LW s0, 788(sp)
  ADDW a0, a0, s0
  LW s0, 792(sp)
  ADDW a0, a0, s0
  LW s0, 796(sp)
  ADDW a0, a0, s0
  LW s0, 800(sp)
  ADDW a0, a0, s0
  LW s0, 804(sp)
  ADDW a0, a0, s0
  LW s0, 808(sp)
  ADDW a0, a0, s0
  LW s0, 812(sp)
  ADDW a0, a0, s0
  LW s0, 816(sp)
  ADDW a0, a0, s0
  LW s0, 820(sp)
  ADDW a0, a0, s0
  LW s0, 824(sp)
  ADDW a0, a0, s0
  LW s0, 828(sp)
  ADDW a0, a0, s0
  LW s0, 832(sp)
  ADDW a0, a0, s0
  LW s0, 836(sp)
  ADDW a0, a0, s0
  LW s0, 840(sp)
  ADDW a0, a0, s0
  LW s0, 844(sp)
  ADDW a0, a0, s0
  LW s0, 848(sp)
  ADDW a0, a0, s0
  LW s0, 852(sp)
  ADDW a0, a0, s0
  LW s0, 856(sp)
  ADDW a0, a0, s0
  LW s0, 860(sp)
  ADDW a0, a0, s0
  LW s0, 864(sp)
  ADDW a0, a0, s0
  LW s0, 868(sp)
  ADDW a0, a0, s0
  LW s0, 872(sp)
  ADDW a0, a0, s0
  LW s0, 876(sp)
  ADDW a0, a0, s0
  LW s0, 880(sp)
  ADDW a0, a0, s0
  LW s0, 884(sp)
  ADDW a0, a0, s0
  LW s0, 888(sp)
  ADDW a0, a0, s0
  LW s0, 892(sp)
  ADDW a0, a0, s0
  LW s0, 896(sp)
  ADDW a0, a0, s0
  LW s0, 900(sp)
  ADDW a0, a0, s0
  LW s0, 904(sp)
  ADDW a0, a0, s0
  LW s0, 908(sp)
  ADDW a0, a0, s0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 488(sp)
  LD s0, 496(sp)
  LD s1, 504(sp)
  LD s2, 512(sp)
  LD s3, 520(sp)
  LD s4, 528(sp)
  LD s5, 536(sp)
  LD s6, 544(sp)
  LD s7, 552(sp)
  LD s8, 560(sp)
  LD s9, 568(sp)
  LD s10, 576(sp)
  LD s11, 584(sp)
  ADDI sp, sp, 912
  JALR zero, 0(ra)
bb14:
  JAL zero, bb12
bb15:
  JAL zero, bb10
bb16:
  ADD a0, s1, zero
  JAL zero, bb9
bb17:
  JAL zero, bb1
bb18:
  SLLIW a0, a0, 2
  ADDI t5, sp, 592
  ADD a0, t5, a0
  ADD s4, s2, zero
  # implict jump to bb19
bb19:
  ADD s3, s1, zero
  ADD s1, s4, zero
  LW s4, 0(a0)
  SLLIW s5, s1, 2
  ADDI t5, sp, 592
  ADD s5, t5, s5
  LW s6, 0(s5)
  BLT s4, s6, bb24
  # implict jump to bb20
bb20:
  # implict jump to bb21
bb21:
  ADDIW s1, s1, 1
  SLTI s4, s1, 16
  BNE s4, zero, bb23
  # implict jump to bb22
bb22:
  ADD a0, s3, zero
  JAL zero, bb3
bb23:
  ADD s4, s1, zero
  ADD s1, s3, zero
  JAL zero, bb19
bb24:
  LW s3, 0(a0)
  LW s4, 0(s5)
  SW s4, 0(a0)
  SW s3, 0(s5)
  JAL zero, bb21
