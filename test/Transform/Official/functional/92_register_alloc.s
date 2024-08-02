.global main
.section .bss
































.section .data
a32:
.word 0x00000010
a31:
.word 0x0000000f
a30:
.word 0x0000000e
a5:
.word 0x00000005
a4:
.word 0x00000004
a6:
.word 0x00000006
a3:
.word 0x00000003
a2:
.word 0x00000002
a12:
.word 0x0000000c
a13:
.word 0x0000000d
a24:
.word 0x00000008
a11:
.word 0x0000000b
a26:
.word 0x0000000a
a10:
.word 0x0000000a
a1:
.word 0x00000001
a8:
.word 0x00000008
a17:
.word 0x00000001
a9:
.word 0x00000009
a14:
.word 0x0000000e
a16:
.word 0x00000010
a7:
.word 0x00000007
a15:
.word 0x0000000f
a25:
.word 0x00000009
a21:
.word 0x00000005
a18:
.word 0x00000002
a19:
.word 0x00000003
a27:
.word 0x0000000b
a20:
.word 0x00000004
a22:
.word 0x00000006
a29:
.word 0x0000000d
a23:
.word 0x00000007
a28:
.word 0x0000000c
.section .text
main:
  ADDI sp, sp, -944
  SD ra, 632(sp)
  SD s0, 648(sp)
  SD s5, 656(sp)
  SD s6, 664(sp)
  SD s7, 672(sp)
  SD s8, 680(sp)
  SD s9, 688(sp)
  SD s10, 696(sp)
  SD s11, 704(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 580(sp)
  LW s0, 580(sp)
  ADDIW s0, s0, 18
  SW s0, 568(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 404(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 408(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 392(sp)
  CALL getint
  SW a0, 380(sp)
  LW a0, 404(sp)
  ADDIW a0, a0, 1
  LA s5, a1
  LW s0, 0(s5)
  SW s0, 360(sp)
  LW s0, 360(sp)
  ADDW a0, a0, s0
  SW a0, 344(sp)
  LW a0, 408(sp)
  ADDIW s6, a0, 2
  LA s7, a2
  LW a0, 0(s7)
  SW a0, 464(sp)
  LW a0, 464(sp)
  ADDW a0, s6, a0
  SW a0, 460(sp)
  LW a0, 392(sp)
  ADDIW s8, a0, 3
  LA s9, a3
  LW a0, 0(s9)
  SW a0, 456(sp)
  LW a0, 456(sp)
  ADDW a0, s8, a0
  SW a0, 444(sp)
  LW a0, 380(sp)
  ADDIW s10, a0, 4
  LA s11, a4
  LW a0, 0(s11)
  SW a0, 432(sp)
  LW a0, 432(sp)
  ADDW a0, s10, a0
  SW a0, 612(sp)
  LW a0, 344(sp)
  ADDIW s10, a0, 1
  LA a0, a5
  SD a0, 840(sp)
  LD a0, 840(sp)
  LW a0, 0(a0)
  SW a0, 608(sp)
  LW a0, 608(sp)
  ADDW a0, s10, a0
  SW a0, 584(sp)
  LW a0, 460(sp)
  ADDIW s10, a0, 2
  LA a0, a6
  SD a0, 832(sp)
  LD a0, 832(sp)
  LW a0, 0(a0)
  SW a0, 448(sp)
  LW a0, 448(sp)
  ADDW a0, s10, a0
  SW a0, 412(sp)
  LW a0, 444(sp)
  ADDIW s10, a0, 3
  LA a0, a7
  SD a0, 816(sp)
  LD a0, 816(sp)
  LW a0, 0(a0)
  SW a0, 440(sp)
  LW a0, 440(sp)
  ADDW a0, s10, a0
  SW a0, 436(sp)
  LW a0, 612(sp)
  ADDIW a0, a0, 4
  SW a0, 120(sp)
  LA s10, a8
  LW a0, 0(s10)
  SW a0, 424(sp)
  LW a0, 424(sp)
  LW s0, 120(sp)
  ADDW a0, s0, a0
  SW a0, 428(sp)
  LW a0, 584(sp)
  ADDIW a0, a0, 1
  SW a0, 328(sp)
  LA a0, a9
  SD a0, 824(sp)
  LD a0, 824(sp)
  LW a0, 0(a0)
  SW a0, 504(sp)
  LW a0, 504(sp)
  LW s0, 328(sp)
  ADDW a0, s0, a0
  SW a0, 140(sp)
  LW a0, 412(sp)
  ADDIW a0, a0, 2
  SW a0, 136(sp)
  LA a0, a10
  SD a0, 880(sp)
  LD a0, 880(sp)
  LW a0, 0(a0)
  SW a0, 88(sp)
  LW a0, 88(sp)
  LW s0, 136(sp)
  ADDW a0, s0, a0
  SW a0, 92(sp)
  LW a0, 436(sp)
  ADDIW a0, a0, 3
  SW a0, 216(sp)
  LA a0, a11
  SD a0, 936(sp)
  LD a0, 936(sp)
  LW a0, 0(a0)
  SW a0, 544(sp)
  LW a0, 544(sp)
  LW s0, 216(sp)
  ADDW a0, s0, a0
  SW a0, 452(sp)
  LW a0, 428(sp)
  ADDIW a0, a0, 4
  SW a0, 244(sp)
  LA a0, a12
  SD a0, 744(sp)
  LD a0, 744(sp)
  LW a0, 0(a0)
  SW a0, 528(sp)
  LW a0, 528(sp)
  LW s0, 244(sp)
  ADDW a0, s0, a0
  SW a0, 532(sp)
  LW a0, 140(sp)
  ADDIW a0, a0, 1
  SW a0, 156(sp)
  LA a0, a13
  SD a0, 848(sp)
  LD a0, 848(sp)
  LW a0, 0(a0)
  SW a0, 152(sp)
  LW a0, 156(sp)
  LW s0, 152(sp)
  ADDW a0, a0, s0
  SW a0, 488(sp)
  LW a0, 92(sp)
  ADDIW a0, a0, 2
  SW a0, 188(sp)
  LA a0, a14
  SD a0, 896(sp)
  LD a0, 896(sp)
  LW a0, 0(a0)
  SW a0, 620(sp)
  LW a0, 620(sp)
  LW s0, 188(sp)
  ADDW a0, s0, a0
  SW a0, 560(sp)
  LW a0, 452(sp)
  ADDIW a0, a0, 3
  SW a0, 232(sp)
  LA a0, a15
  SD a0, 856(sp)
  LD a0, 856(sp)
  LW a0, 0(a0)
  SW a0, 556(sp)
  LW a0, 556(sp)
  LW s0, 232(sp)
  ADDW a0, s0, a0
  SW a0, 4(sp)
  LW a0, 532(sp)
  ADDIW a0, a0, 4
  SW a0, 44(sp)
  LA a0, a16
  SD a0, 888(sp)
  LD a0, 888(sp)
  LW a0, 0(a0)
  SW a0, 100(sp)
  LW a0, 100(sp)
  LW s0, 44(sp)
  ADDW a0, s0, a0
  SW a0, 104(sp)
  LW a0, 488(sp)
  ADDIW a0, a0, 1
  SW a0, 28(sp)
  LA a0, a17
  SD a0, 808(sp)
  LD a0, 808(sp)
  LW a0, 0(a0)
  SW a0, 108(sp)
  LW a0, 108(sp)
  LW s0, 28(sp)
  ADDW a0, s0, a0
  SW a0, 148(sp)
  LW a0, 560(sp)
  ADDIW a0, a0, 2
  SW a0, 144(sp)
  LA a0, a18
  SD a0, 872(sp)
  LD a0, 872(sp)
  LW a0, 0(a0)
  SW a0, 376(sp)
  LW a0, 144(sp)
  LW s0, 376(sp)
  ADDW a0, a0, s0
  SW a0, 484(sp)
  LW a0, 4(sp)
  ADDIW a0, a0, 3
  SW a0, 320(sp)
  LA a0, a19
  SD a0, 864(sp)
  LD a0, 864(sp)
  LW a0, 0(a0)
  SW a0, 500(sp)
  LW a0, 500(sp)
  LW s0, 320(sp)
  ADDW a0, s0, a0
  SW a0, 624(sp)
  LW a0, 104(sp)
  ADDIW a0, a0, 4
  SW a0, 308(sp)
  LA a0, a20
  SD a0, 928(sp)
  LD a0, 928(sp)
  LW a0, 0(a0)
  SW a0, 516(sp)
  LW a0, 516(sp)
  LW s0, 308(sp)
  ADDW a0, s0, a0
  SW a0, 520(sp)
  LW a0, 148(sp)
  ADDIW a0, a0, 1
  SW a0, 272(sp)
  LA a0, a21
  SD a0, 920(sp)
  LD a0, 920(sp)
  LW a0, 0(a0)
  SW a0, 96(sp)
  LW a0, 96(sp)
  LW s0, 272(sp)
  ADDW a0, s0, a0
  SW a0, 540(sp)
  LW a0, 484(sp)
  ADDIW a0, a0, 2
  SW a0, 168(sp)
  LA a0, a22
  SD a0, 912(sp)
  LD a0, 912(sp)
  LW a0, 0(a0)
  SW a0, 20(sp)
  LW a0, 168(sp)
  LW s0, 20(sp)
  ADDW a0, a0, s0
  SW a0, 16(sp)
  LW a0, 624(sp)
  ADDIW a0, a0, 3
  SW a0, 164(sp)
  LA a0, a23
  SD a0, 904(sp)
  LD a0, 904(sp)
  LW a0, 0(a0)
  SW a0, 160(sp)
  LW a0, 164(sp)
  LW s0, 160(sp)
  ADDW a0, a0, s0
  SW a0, 536(sp)
  LW a0, 520(sp)
  ADDIW a0, a0, 4
  SW a0, 204(sp)
  LA a0, a24
  SD a0, 720(sp)
  LD a0, 720(sp)
  LW a0, 0(a0)
  SW a0, 12(sp)
  LW a0, 204(sp)
  LW s0, 12(sp)
  ADDW a0, a0, s0
  SW a0, 8(sp)
  LW a0, 540(sp)
  ADDIW a0, a0, 1
  SW a0, 288(sp)
  LA a0, a25
  SD a0, 784(sp)
  LD a0, 784(sp)
  LW a0, 0(a0)
  SW a0, 616(sp)
  LW a0, 616(sp)
  LW s0, 288(sp)
  ADDW a0, s0, a0
  SW a0, 356(sp)
  LW a0, 16(sp)
  ADDIW a0, a0, 2
  SW a0, 340(sp)
  LA a0, a26
  SD a0, 752(sp)
  LD a0, 752(sp)
  LW a0, 0(a0)
  SW a0, 296(sp)
  LW a0, 296(sp)
  LW s0, 340(sp)
  ADDW a0, s0, a0
  SW a0, 284(sp)
  LW a0, 536(sp)
  ADDIW a0, a0, 3
  SW a0, 508(sp)
  LA a0, a27
  SD a0, 712(sp)
  LD a0, 712(sp)
  LW a0, 0(a0)
  SW a0, 512(sp)
  LW a0, 508(sp)
  LW s0, 512(sp)
  ADDW a0, a0, s0
  SW a0, 492(sp)
  LW a0, 8(sp)
  ADDIW a0, a0, 4
  SW a0, 496(sp)
  LA a0, a28
  SD a0, 776(sp)
  LD a0, 776(sp)
  LW a0, 0(a0)
  SW a0, 548(sp)
  LW a0, 496(sp)
  LW s0, 548(sp)
  ADDW a0, a0, s0
  SW a0, 552(sp)
  LW a0, 580(sp)
  LW s0, 568(sp)
  SUBW a0, a0, s0
  SW a0, 596(sp)
  LW a0, 596(sp)
  ADDIW a0, a0, 10
  SW a0, 600(sp)
  LW a0, 356(sp)
  ADDIW a0, a0, 1
  SW a0, 416(sp)
  LA a0, a29
  SD a0, 768(sp)
  LD a0, 768(sp)
  LW a0, 0(a0)
  SW a0, 420(sp)
  LW a0, 416(sp)
  LW s0, 420(sp)
  ADDW a0, a0, s0
  SW a0, 588(sp)
  LW a0, 284(sp)
  ADDIW a0, a0, 2
  SW a0, 592(sp)
  LA a0, a30
  SD a0, 760(sp)
  LD a0, 760(sp)
  LW a0, 0(a0)
  SW a0, 628(sp)
  LW a0, 592(sp)
  LW s0, 628(sp)
  ADDW a0, a0, s0
  SW a0, 604(sp)
  LW a0, 492(sp)
  ADDIW a0, a0, 3
  SW a0, 572(sp)
  LA a0, a31
  SD a0, 800(sp)
  LD a0, 800(sp)
  LW a0, 0(a0)
  SW a0, 576(sp)
  LW a0, 572(sp)
  LW s0, 576(sp)
  ADDW a0, a0, s0
  SW a0, 564(sp)
  LW a0, 552(sp)
  ADDIW a0, a0, 4
  SW a0, 524(sp)
  LA a0, a32
  SD a0, 792(sp)
  LD a0, 792(sp)
  LW a0, 0(a0)
  SW a0, 396(sp)
  LW a0, 524(sp)
  LW s0, 396(sp)
  ADDW a0, a0, s0
  SW a0, 400(sp)
  LW a0, 600(sp)
  LW s0, 404(sp)
  ADDW a0, a0, s0
  SW a0, 384(sp)
  LW a0, 384(sp)
  LW s0, 408(sp)
  ADDW a0, a0, s0
  SW a0, 388(sp)
  LW a0, 388(sp)
  LW s0, 392(sp)
  ADDW a0, a0, s0
  SW a0, 372(sp)
  LW a0, 372(sp)
  LW s0, 380(sp)
  ADDW a0, a0, s0
  SW a0, 336(sp)
  LW a0, 336(sp)
  LW s0, 344(sp)
  SUBW a0, a0, s0
  SW a0, 364(sp)
  LW a0, 364(sp)
  LW s0, 460(sp)
  SUBW a0, a0, s0
  SW a0, 368(sp)
  LW a0, 368(sp)
  LW s0, 444(sp)
  SUBW a0, a0, s0
  SW a0, 348(sp)
  LW a0, 348(sp)
  LW s0, 612(sp)
  SUBW a0, a0, s0
  SW a0, 352(sp)
  LW a0, 352(sp)
  LW s0, 584(sp)
  ADDW a0, a0, s0
  SW a0, 476(sp)
  LW a0, 476(sp)
  LW s0, 412(sp)
  ADDW a0, a0, s0
  SW a0, 480(sp)
  LW a0, 480(sp)
  LW s0, 436(sp)
  ADDW a0, a0, s0
  SW a0, 468(sp)
  LW a0, 468(sp)
  LW s0, 428(sp)
  ADDW a0, a0, s0
  SW a0, 472(sp)
  LW a0, 472(sp)
  LW s0, 140(sp)
  SUBW a0, a0, s0
  LW s0, 92(sp)
  SUBW a0, a0, s0
  LW s0, 452(sp)
  SUBW a0, a0, s0
  LW s0, 532(sp)
  SUBW a0, a0, s0
  LW s0, 488(sp)
  ADDW a0, a0, s0
  LW s0, 560(sp)
  ADDW a0, a0, s0
  LW s0, 4(sp)
  ADDW a0, a0, s0
  LW s0, 104(sp)
  ADDW a0, a0, s0
  LW s0, 148(sp)
  SUBW a0, a0, s0
  LW s0, 484(sp)
  SUBW a0, a0, s0
  LW s0, 624(sp)
  SUBW a0, a0, s0
  LW s0, 520(sp)
  SUBW a0, a0, s0
  LW s0, 540(sp)
  ADDW a0, a0, s0
  LW s0, 16(sp)
  ADDW a0, a0, s0
  LW s0, 536(sp)
  ADDW a0, a0, s0
  LW s0, 8(sp)
  ADDW a0, a0, s0
  LW s0, 356(sp)
  SUBW a0, a0, s0
  LW s0, 284(sp)
  SUBW a0, a0, s0
  LW s0, 492(sp)
  SUBW a0, a0, s0
  LW s0, 552(sp)
  SUBW a0, a0, s0
  LW s0, 588(sp)
  ADDW a0, a0, s0
  LW s0, 604(sp)
  ADDW a0, a0, s0
  LW s0, 564(sp)
  ADDW a0, a0, s0
  LW s0, 400(sp)
  ADDW a0, a0, s0
  LW s0, 360(sp)
  ADDW a0, a0, s0
  LW s0, 464(sp)
  SUBW a0, a0, s0
  LW s0, 456(sp)
  ADDW a0, a0, s0
  LW s0, 432(sp)
  SUBW a0, a0, s0
  LW s0, 608(sp)
  ADDW a0, a0, s0
  LW s0, 448(sp)
  SUBW a0, a0, s0
  LW s0, 440(sp)
  ADDW a0, a0, s0
  LW s0, 424(sp)
  SUBW a0, a0, s0
  LW s0, 504(sp)
  ADDW a0, a0, s0
  LW s0, 88(sp)
  SUBW a0, a0, s0
  LW s0, 544(sp)
  ADDW a0, a0, s0
  LW s0, 528(sp)
  SUBW a0, a0, s0
  LW s0, 152(sp)
  ADDW a0, a0, s0
  LW s0, 620(sp)
  SUBW a0, a0, s0
  LW s0, 556(sp)
  ADDW a0, a0, s0
  LW s0, 100(sp)
  SUBW a0, a0, s0
  LW s0, 108(sp)
  ADDW a0, a0, s0
  LW s0, 376(sp)
  SUBW a0, a0, s0
  LW s0, 500(sp)
  ADDW a0, a0, s0
  LW s0, 516(sp)
  SUBW a0, a0, s0
  LW s0, 96(sp)
  ADDW a0, a0, s0
  LW s0, 20(sp)
  SUBW a0, a0, s0
  LW s0, 160(sp)
  ADDW a0, a0, s0
  LW s0, 12(sp)
  SUBW a0, a0, s0
  LW s0, 616(sp)
  ADDW a0, a0, s0
  LW s0, 296(sp)
  SUBW a0, a0, s0
  LW s0, 512(sp)
  ADDW a0, a0, s0
  LW s0, 548(sp)
  SUBW a0, a0, s0
  LW s0, 420(sp)
  ADDW a0, a0, s0
  LW s0, 628(sp)
  SUBW a0, a0, s0
  LW s0, 576(sp)
  ADDW a0, a0, s0
  LW s0, 396(sp)
  SUBW s0, a0, s0
  ADD a0, s0, zero
  CALL putint
  ADD a0, s0, zero
  LD ra, 632(sp)
  LD s0, 648(sp)
  LD s5, 656(sp)
  LD s6, 664(sp)
  LD s7, 672(sp)
  LD s8, 680(sp)
  LD s9, 688(sp)
  LD s10, 696(sp)
  LD s11, 704(sp)
  ADDI sp, sp, 944
  JALR zero, 0(ra)
