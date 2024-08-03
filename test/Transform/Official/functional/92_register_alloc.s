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
  ADDI sp, sp, -768
  SD ra, 568(sp)
  SD s0, 576(sp)
  SD s1, 584(sp)
  SD s2, 592(sp)
  SD s3, 600(sp)
  SD s4, 608(sp)
  SD s5, 616(sp)
  SD s6, 624(sp)
  SD s7, 632(sp)
  SD s8, 640(sp)
  SD s9, 648(sp)
  SD s10, 656(sp)
  SD s11, 664(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 364(sp)
  LW s0, 364(sp)
  ADDIW s0, s0, 18
  SW s0, 352(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 332(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 336(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 320(sp)
  CALL getint
  SW a0, 344(sp)
  LW a0, 332(sp)
  ADDIW s0, a0, 1
  LA a0, a1
  LW a0, 0(a0)
  SW a0, 432(sp)
  LW a0, 432(sp)
  ADDW a0, s0, a0
  SW a0, 420(sp)
  LW a0, 336(sp)
  ADDIW s0, a0, 2
  LA a0, a2
  LW a0, 0(a0)
  SW a0, 388(sp)
  LW a0, 388(sp)
  ADDW a0, s0, a0
  SW a0, 384(sp)
  LW a0, 320(sp)
  ADDIW s0, a0, 3
  LA a0, a3
  LW a0, 0(a0)
  SW a0, 524(sp)
  LW a0, 524(sp)
  ADDW a0, s0, a0
  SW a0, 348(sp)
  LW a0, 344(sp)
  ADDIW s0, a0, 4
  LA a0, a4
  LW a0, 0(a0)
  SW a0, 412(sp)
  LW a0, 412(sp)
  ADDW a0, s0, a0
  SW a0, 380(sp)
  LW a0, 420(sp)
  ADDIW s0, a0, 1
  LA a0, a5
  LW a0, 0(a0)
  SW a0, 400(sp)
  LW a0, 400(sp)
  ADDW s9, s0, a0
  LW a0, 384(sp)
  ADDIW s0, a0, 2
  LA a0, a6
  LW a0, 0(a0)
  SW a0, 84(sp)
  LW a0, 84(sp)
  ADDW a0, s0, a0
  SW a0, 88(sp)
  LW a0, 348(sp)
  ADDIW a0, a0, 3
  LA s0, a7
  LW s2, 0(s0)
  ADDW s4, a0, s2
  LW a0, 380(sp)
  ADDIW s0, a0, 4
  LA a0, a8
  LW a0, 0(a0)
  SW a0, 472(sp)
  LW a0, 472(sp)
  ADDW a0, s0, a0
  SW a0, 476(sp)
  ADDIW s0, s9, 1
  LA a0, a9
  LW a0, 0(a0)
  SW a0, 272(sp)
  LW a0, 272(sp)
  ADDW a0, s0, a0
  SW a0, 108(sp)
  LW a0, 88(sp)
  ADDIW a0, a0, 2
  LA s0, a10
  LW s8, 0(s0)
  ADDW s7, a0, s8
  ADDIW s0, s4, 3
  LA a0, a11
  LW a0, 0(a0)
  SW a0, 92(sp)
  LW a0, 92(sp)
  ADDW a0, s0, a0
  SW a0, 248(sp)
  LW a0, 476(sp)
  ADDIW s0, a0, 4
  LA a0, a12
  LW a0, 0(a0)
  SW a0, 512(sp)
  LW a0, 512(sp)
  ADDW a0, s0, a0
  SW a0, 516(sp)
  LW a0, 108(sp)
  ADDIW s0, a0, 1
  LA a0, a13
  LW a0, 0(a0)
  SW a0, 496(sp)
  LW a0, 496(sp)
  ADDW a0, s0, a0
  SW a0, 520(sp)
  ADDIW s0, s7, 2
  LA a0, a14
  LW a0, 0(a0)
  SW a0, 376(sp)
  LW a0, 376(sp)
  ADDW a0, s0, a0
  SW a0, 528(sp)
  LW a0, 248(sp)
  ADDIW a0, a0, 3
  LA s0, a15
  LW s5, 0(s0)
  ADDW a0, a0, s5
  SW a0, 104(sp)
  LW a0, 516(sp)
  ADDIW s0, a0, 4
  LA a0, a16
  LW a0, 0(a0)
  SW a0, 464(sp)
  LW a0, 464(sp)
  ADDW a0, s0, a0
  SW a0, 468(sp)
  LW a0, 520(sp)
  ADDIW s0, a0, 1
  LA a0, a17
  LW a0, 0(a0)
  SW a0, 96(sp)
  LW a0, 96(sp)
  ADDW a0, s0, a0
  SW a0, 100(sp)
  LW a0, 528(sp)
  ADDIW s0, a0, 2
  LA a0, a18
  LW a0, 0(a0)
  SW a0, 504(sp)
  LW a0, 504(sp)
  ADDW a0, s0, a0
  SW a0, 508(sp)
  LW a0, 104(sp)
  ADDIW s0, a0, 3
  LA a0, a19
  LW a0, 0(a0)
  SW a0, 112(sp)
  LW a0, 112(sp)
  ADDW a0, s0, a0
  SW a0, 416(sp)
  LW a0, 468(sp)
  ADDIW s0, a0, 4
  LA a0, a20
  LW a0, 0(a0)
  SW a0, 456(sp)
  LW a0, 456(sp)
  ADDW a0, s0, a0
  SW a0, 460(sp)
  LW a0, 100(sp)
  ADDIW s0, a0, 1
  LA a0, a21
  LW a0, 0(a0)
  SW a0, 480(sp)
  LW a0, 480(sp)
  ADDW s1, s0, a0
  LW a0, 508(sp)
  ADDIW a0, a0, 2
  LA s0, a22
  LW s11, 0(s0)
  ADDW s10, a0, s11
  LW a0, 416(sp)
  ADDIW a0, a0, 3
  LA s0, a23
  LW s3, 0(s0)
  ADDW a0, a0, s3
  SW a0, 500(sp)
  LW a0, 460(sp)
  ADDIW s0, a0, 4
  LA a0, a24
  LW a0, 0(a0)
  SW a0, 452(sp)
  LW a0, 452(sp)
  ADDW a0, s0, a0
  SW a0, 492(sp)
  ADDIW a0, s1, 1
  SW a0, 244(sp)
  LA a0, a25
  LW s6, 0(a0)
  LW a0, 244(sp)
  ADDW a0, a0, s6
  SW a0, 484(sp)
  ADDIW a0, s10, 2
  SW a0, 196(sp)
  LA a0, a26
  SD a0, 720(sp)
  LD a0, 720(sp)
  LW a0, 0(a0)
  SW a0, 488(sp)
  LW a0, 488(sp)
  LW s0, 196(sp)
  ADDW a0, s0, a0
  SW a0, 532(sp)
  LW a0, 500(sp)
  ADDIW a0, a0, 3
  SW a0, 536(sp)
  LA a0, a27
  SD a0, 696(sp)
  LD a0, 696(sp)
  LW a0, 0(a0)
  SW a0, 232(sp)
  LW s0, 536(sp)
  LW a0, 232(sp)
  ADDW a0, s0, a0
  SW a0, 356(sp)
  LW a0, 492(sp)
  ADDIW a0, a0, 4
  SW a0, 360(sp)
  LA a0, a28
  SD a0, 672(sp)
  LD a0, 672(sp)
  LW a0, 0(a0)
  SW a0, 340(sp)
  LW s0, 360(sp)
  LW a0, 340(sp)
  ADDW a0, s0, a0
  SW a0, 308(sp)
  LW s0, 364(sp)
  LW a0, 352(sp)
  SUBW a0, s0, a0
  SW a0, 324(sp)
  LW a0, 324(sp)
  ADDIW a0, a0, 10
  SW a0, 328(sp)
  LW a0, 484(sp)
  ADDIW a0, a0, 1
  SW a0, 312(sp)
  LA a0, a29
  SD a0, 704(sp)
  LD a0, 704(sp)
  LW a0, 0(a0)
  SW a0, 316(sp)
  LW s0, 312(sp)
  LW a0, 316(sp)
  ADDW a0, s0, a0
  SW a0, 444(sp)
  LW a0, 532(sp)
  ADDIW a0, a0, 2
  SW a0, 448(sp)
  LA a0, a30
  SD a0, 712(sp)
  LD a0, 712(sp)
  LW a0, 0(a0)
  SW a0, 436(sp)
  LW s0, 448(sp)
  LW a0, 436(sp)
  ADDW a0, s0, a0
  SW a0, 440(sp)
  LW a0, 356(sp)
  ADDIW a0, a0, 3
  SW a0, 424(sp)
  LA a0, a31
  SD a0, 680(sp)
  LD a0, 680(sp)
  LW a0, 0(a0)
  SW a0, 428(sp)
  LW s0, 424(sp)
  LW a0, 428(sp)
  ADDW a0, s0, a0
  SW a0, 404(sp)
  LW a0, 308(sp)
  ADDIW a0, a0, 4
  SW a0, 408(sp)
  LA a0, a32
  SD a0, 688(sp)
  LD a0, 688(sp)
  LW a0, 0(a0)
  SW a0, 392(sp)
  LW s0, 408(sp)
  LW a0, 392(sp)
  ADDW a0, s0, a0
  SW a0, 396(sp)
  LW s0, 328(sp)
  LW a0, 332(sp)
  ADDW a0, s0, a0
  SW a0, 368(sp)
  LW s0, 368(sp)
  LW a0, 336(sp)
  ADDW a0, s0, a0
  SW a0, 372(sp)
  LW s0, 372(sp)
  LW a0, 320(sp)
  ADDW a0, s0, a0
  SW a0, 548(sp)
  LW s0, 548(sp)
  LW a0, 344(sp)
  ADDW a0, s0, a0
  SW a0, 552(sp)
  LW s0, 552(sp)
  LW a0, 420(sp)
  SUBW a0, s0, a0
  SW a0, 556(sp)
  LW s0, 556(sp)
  LW a0, 384(sp)
  SUBW a0, s0, a0
  SW a0, 560(sp)
  LW s0, 560(sp)
  LW a0, 348(sp)
  SUBW a0, s0, a0
  SW a0, 540(sp)
  LW s0, 540(sp)
  LW a0, 380(sp)
  SUBW a0, s0, a0
  SW a0, 544(sp)
  LW a0, 544(sp)
  ADDW s0, a0, s9
  LW a0, 88(sp)
  ADDW a0, s0, a0
  ADDW a0, a0, s4
  LW s0, 476(sp)
  ADDW s0, a0, s0
  LW a0, 108(sp)
  SUBW a0, s0, a0
  SUBW s0, a0, s7
  LW a0, 248(sp)
  SUBW s0, s0, a0
  LW a0, 516(sp)
  SUBW s0, s0, a0
  LW a0, 520(sp)
  ADDW s0, s0, a0
  LW a0, 528(sp)
  ADDW s0, s0, a0
  LW a0, 104(sp)
  ADDW s0, s0, a0
  LW a0, 468(sp)
  ADDW s0, s0, a0
  LW a0, 100(sp)
  SUBW s0, s0, a0
  LW a0, 508(sp)
  SUBW s0, s0, a0
  LW a0, 416(sp)
  SUBW s0, s0, a0
  LW a0, 460(sp)
  SUBW a0, s0, a0
  ADDW a0, a0, s1
  ADDW s0, a0, s10
  LW a0, 500(sp)
  ADDW s0, s0, a0
  LW a0, 492(sp)
  ADDW s0, s0, a0
  LW a0, 484(sp)
  SUBW s0, s0, a0
  LW a0, 532(sp)
  SUBW s0, s0, a0
  LW a0, 356(sp)
  SUBW s0, s0, a0
  LW a0, 308(sp)
  SUBW s0, s0, a0
  LW a0, 444(sp)
  ADDW s0, s0, a0
  LW a0, 440(sp)
  ADDW s0, s0, a0
  LW a0, 404(sp)
  ADDW s0, s0, a0
  LW a0, 396(sp)
  ADDW s0, s0, a0
  LW a0, 432(sp)
  ADDW s0, s0, a0
  LW a0, 388(sp)
  SUBW s0, s0, a0
  LW a0, 524(sp)
  ADDW s0, s0, a0
  LW a0, 412(sp)
  SUBW s0, s0, a0
  LW a0, 400(sp)
  ADDW s0, s0, a0
  LW a0, 84(sp)
  SUBW a0, s0, a0
  ADDW s0, a0, s2
  LW a0, 472(sp)
  SUBW s0, s0, a0
  LW a0, 272(sp)
  ADDW a0, s0, a0
  SUBW s0, a0, s8
  LW a0, 92(sp)
  ADDW s0, s0, a0
  LW a0, 512(sp)
  SUBW s0, s0, a0
  LW a0, 496(sp)
  ADDW s0, s0, a0
  LW a0, 376(sp)
  SUBW a0, s0, a0
  ADDW s0, a0, s5
  LW a0, 464(sp)
  SUBW s0, s0, a0
  LW a0, 96(sp)
  ADDW s0, s0, a0
  LW a0, 504(sp)
  SUBW s0, s0, a0
  LW a0, 112(sp)
  ADDW s0, s0, a0
  LW a0, 456(sp)
  SUBW s0, s0, a0
  LW a0, 480(sp)
  ADDW a0, s0, a0
  SUBW a0, a0, s11
  ADDW s0, a0, s3
  LW a0, 452(sp)
  SUBW a0, s0, a0
  ADDW s0, a0, s6
  LW a0, 488(sp)
  SUBW s0, s0, a0
  LW a0, 232(sp)
  ADDW s0, s0, a0
  LW a0, 340(sp)
  SUBW s0, s0, a0
  LW a0, 316(sp)
  ADDW s0, s0, a0
  LW a0, 436(sp)
  SUBW s0, s0, a0
  LW a0, 428(sp)
  ADDW s0, s0, a0
  LW a0, 392(sp)
  SUBW s0, s0, a0
  ADD a0, s0, zero
  CALL putint
  ADD a0, s0, zero
  LD ra, 568(sp)
  LD s0, 576(sp)
  LD s1, 584(sp)
  LD s2, 592(sp)
  LD s3, 600(sp)
  LD s4, 608(sp)
  LD s5, 616(sp)
  LD s6, 624(sp)
  LD s7, 632(sp)
  LD s8, 640(sp)
  LD s9, 648(sp)
  LD s10, 656(sp)
  LD s11, 664(sp)
  ADDI sp, sp, 768
  JALR zero, 0(ra)
