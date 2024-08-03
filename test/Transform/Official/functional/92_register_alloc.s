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
  ADDI sp, sp, -752
  SD s5, 568(sp)
  SD ra, 576(sp)
  SD s0, 584(sp)
  SD s1, 592(sp)
  SD s2, 600(sp)
  SD s3, 608(sp)
  SD s4, 616(sp)
  SD s6, 624(sp)
  SD s7, 632(sp)
  SD s8, 640(sp)
  SD s9, 648(sp)
  SD s10, 656(sp)
  SD s11, 664(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 132(sp)
  LW s0, 132(sp)
  ADDIW s0, s0, 18
  SW s0, 128(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 124(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 80(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 116(sp)
  CALL getint
  SW a0, 112(sp)
  LW a0, 124(sp)
  ADDIW s0, a0, 1
  LA a0, a1
  LW a0, 0(a0)
  SW a0, 108(sp)
  LW a0, 108(sp)
  ADDW a0, s0, a0
  SW a0, 104(sp)
  LW a0, 80(sp)
  ADDIW s0, a0, 2
  LA a0, a2
  LW a0, 0(a0)
  SW a0, 100(sp)
  LW a0, 100(sp)
  ADDW a0, s0, a0
  SW a0, 96(sp)
  LW a0, 116(sp)
  ADDIW s0, a0, 3
  LA a0, a3
  LW a0, 0(a0)
  SW a0, 92(sp)
  LW a0, 92(sp)
  ADDW a0, s0, a0
  SW a0, 88(sp)
  LW a0, 112(sp)
  ADDIW s0, a0, 4
  LA a0, a4
  LW a0, 0(a0)
  SW a0, 272(sp)
  LW a0, 272(sp)
  ADDW a0, s0, a0
  SW a0, 84(sp)
  LW a0, 104(sp)
  ADDIW s0, a0, 1
  LA a0, a5
  LW a0, 0(a0)
  SW a0, 412(sp)
  LW a0, 412(sp)
  ADDW a0, s0, a0
  SW a0, 448(sp)
  LW a0, 96(sp)
  ADDIW s0, a0, 2
  LA a0, a6
  LW a0, 0(a0)
  SW a0, 452(sp)
  LW a0, 452(sp)
  ADDW a0, s0, a0
  SW a0, 456(sp)
  LW a0, 88(sp)
  ADDIW s0, a0, 3
  LA a0, a7
  LW a0, 0(a0)
  SW a0, 460(sp)
  LW a0, 460(sp)
  ADDW a0, s0, a0
  SW a0, 464(sp)
  LW a0, 84(sp)
  ADDIW s0, a0, 4
  LA a0, a8
  LW a0, 0(a0)
  SW a0, 468(sp)
  LW a0, 468(sp)
  ADDW a0, s0, a0
  SW a0, 472(sp)
  LW a0, 448(sp)
  ADDIW s0, a0, 1
  LA a0, a9
  LW a0, 0(a0)
  SW a0, 476(sp)
  LW a0, 476(sp)
  ADDW a0, s0, a0
  SW a0, 480(sp)
  LW a0, 456(sp)
  ADDIW s0, a0, 2
  LA a0, a10
  LW a0, 0(a0)
  SW a0, 484(sp)
  LW a0, 484(sp)
  ADDW a0, s0, a0
  SW a0, 488(sp)
  LW a0, 464(sp)
  ADDIW s0, a0, 3
  LA a0, a11
  LW a0, 0(a0)
  SW a0, 492(sp)
  LW a0, 492(sp)
  ADDW a0, s0, a0
  SW a0, 500(sp)
  LW a0, 472(sp)
  ADDIW s0, a0, 4
  LA a0, a12
  LW a0, 0(a0)
  SW a0, 504(sp)
  LW a0, 504(sp)
  ADDW a0, s0, a0
  SW a0, 444(sp)
  LW a0, 480(sp)
  ADDIW s0, a0, 1
  LA a0, a13
  LW a0, 0(a0)
  SW a0, 564(sp)
  LW a0, 564(sp)
  ADDW s2, s0, a0
  LW a0, 488(sp)
  ADDIW s0, a0, 2
  LA a0, a14
  LW a0, 0(a0)
  SW a0, 560(sp)
  LW a0, 560(sp)
  ADDW a0, s0, a0
  SW a0, 556(sp)
  LW a0, 500(sp)
  ADDIW s0, a0, 3
  LA a0, a15
  LW a0, 0(a0)
  SW a0, 552(sp)
  LW a0, 552(sp)
  ADDW a0, s0, a0
  SW a0, 548(sp)
  LW a0, 444(sp)
  ADDIW a0, a0, 4
  LA s0, a16
  LW s6, 0(s0)
  ADDW s5, a0, s6
  ADDIW a0, s2, 1
  LA s0, a17
  LW s4, 0(s0)
  ADDW a0, a0, s4
  SW a0, 544(sp)
  LW a0, 556(sp)
  ADDIW s0, a0, 2
  LA a0, a18
  LW a0, 0(a0)
  SW a0, 508(sp)
  LW a0, 508(sp)
  ADDW s10, s0, a0
  LW a0, 548(sp)
  ADDIW s0, a0, 3
  LA a0, a19
  LW a0, 0(a0)
  SW a0, 540(sp)
  LW a0, 540(sp)
  ADDW a0, s0, a0
  SW a0, 536(sp)
  ADDIW s0, s5, 4
  LA a0, a20
  LW a0, 0(a0)
  SW a0, 532(sp)
  LW a0, 532(sp)
  ADDW a0, s0, a0
  SW a0, 528(sp)
  LW a0, 544(sp)
  ADDIW s0, a0, 1
  LA a0, a21
  LW a0, 0(a0)
  SW a0, 72(sp)
  LW a0, 72(sp)
  ADDW a0, s0, a0
  SW a0, 524(sp)
  ADDIW s0, s10, 2
  LA a0, a22
  LW a0, 0(a0)
  SW a0, 520(sp)
  LW a0, 520(sp)
  ADDW a0, s0, a0
  SW a0, 516(sp)
  LW a0, 536(sp)
  ADDIW s0, a0, 3
  LA a0, a23
  LW a0, 0(a0)
  SW a0, 56(sp)
  LW a0, 56(sp)
  ADDW s3, s0, a0
  LW a0, 528(sp)
  ADDIW s0, a0, 4
  LA a0, a24
  LW a0, 0(a0)
  SW a0, 512(sp)
  LW a0, 512(sp)
  ADDW a0, s0, a0
  SW a0, 496(sp)
  LW a0, 524(sp)
  ADDIW s0, a0, 1
  LA a0, a25
  LW a0, 0(a0)
  SW a0, 372(sp)
  LW a0, 372(sp)
  ADDW s9, s0, a0
  LW a0, 516(sp)
  ADDIW a0, a0, 2
  LA s0, a26
  LW s8, 0(s0)
  ADDW s7, a0, s8
  ADDIW s0, s3, 3
  LA a0, a27
  LW a0, 0(a0)
  SW a0, 368(sp)
  LW a0, 368(sp)
  ADDW s1, s0, a0
  LW a0, 496(sp)
  ADDIW s0, a0, 4
  LA a0, a28
  SD a0, 704(sp)
  LD a0, 704(sp)
  LW a0, 0(a0)
  SW a0, 364(sp)
  LW a0, 364(sp)
  ADDW s11, s0, a0
  LW s0, 128(sp)
  LW a0, 132(sp)
  SUBW a0, a0, s0
  SW a0, 360(sp)
  LW a0, 360(sp)
  ADDIW a0, a0, 10
  SW a0, 356(sp)
  ADDIW a0, s9, 1
  SW a0, 352(sp)
  LA a0, a29
  SD a0, 712(sp)
  LD a0, 712(sp)
  LW a0, 0(a0)
  SW a0, 348(sp)
  LW s0, 348(sp)
  LW a0, 352(sp)
  ADDW a0, a0, s0
  SW a0, 308(sp)
  ADDIW a0, s7, 2
  SW a0, 340(sp)
  LA a0, a30
  SD a0, 720(sp)
  LD a0, 720(sp)
  LW a0, 0(a0)
  SW a0, 336(sp)
  LW s0, 336(sp)
  LW a0, 340(sp)
  ADDW a0, a0, s0
  SW a0, 332(sp)
  ADDIW a0, s1, 3
  SW a0, 328(sp)
  LA a0, a31
  SD a0, 728(sp)
  LD a0, 728(sp)
  LW a0, 0(a0)
  SW a0, 324(sp)
  LW a0, 324(sp)
  LW s0, 328(sp)
  ADDW a0, s0, a0
  SW a0, 320(sp)
  ADDIW a0, s11, 4
  SW a0, 316(sp)
  LA a0, a32
  SD a0, 736(sp)
  LD a0, 736(sp)
  LW a0, 0(a0)
  SW a0, 312(sp)
  LW s0, 312(sp)
  LW a0, 316(sp)
  ADDW a0, a0, s0
  SW a0, 344(sp)
  LW s0, 356(sp)
  LW a0, 124(sp)
  ADDW a0, s0, a0
  SW a0, 440(sp)
  LW s0, 440(sp)
  LW a0, 80(sp)
  ADDW a0, s0, a0
  SW a0, 436(sp)
  LW s0, 436(sp)
  LW a0, 116(sp)
  ADDW a0, s0, a0
  SW a0, 432(sp)
  LW s0, 432(sp)
  LW a0, 112(sp)
  ADDW a0, s0, a0
  SW a0, 428(sp)
  LW s0, 428(sp)
  LW a0, 104(sp)
  SUBW a0, s0, a0
  SW a0, 424(sp)
  LW s0, 424(sp)
  LW a0, 96(sp)
  SUBW a0, s0, a0
  SW a0, 420(sp)
  LW s0, 420(sp)
  LW a0, 88(sp)
  SUBW a0, s0, a0
  SW a0, 416(sp)
  LW s0, 416(sp)
  LW a0, 84(sp)
  SUBW a0, s0, a0
  SW a0, 376(sp)
  LW s0, 376(sp)
  LW a0, 448(sp)
  ADDW a0, s0, a0
  SW a0, 408(sp)
  LW s0, 408(sp)
  LW a0, 456(sp)
  ADDW a0, s0, a0
  SW a0, 404(sp)
  LW s0, 404(sp)
  LW a0, 464(sp)
  ADDW a0, s0, a0
  SW a0, 400(sp)
  LW s0, 400(sp)
  LW a0, 472(sp)
  ADDW a0, s0, a0
  SW a0, 396(sp)
  LW s0, 396(sp)
  LW a0, 480(sp)
  SUBW a0, s0, a0
  SW a0, 392(sp)
  LW s0, 392(sp)
  LW a0, 488(sp)
  SUBW a0, s0, a0
  SW a0, 388(sp)
  LW s0, 388(sp)
  LW a0, 500(sp)
  SUBW a0, s0, a0
  SW a0, 384(sp)
  LW s0, 384(sp)
  LW a0, 444(sp)
  SUBW a0, s0, a0
  SW a0, 380(sp)
  LW a0, 380(sp)
  ADDW s0, a0, s2
  LW a0, 556(sp)
  ADDW s0, s0, a0
  LW a0, 548(sp)
  ADDW a0, s0, a0
  ADDW s0, a0, s5
  LW a0, 544(sp)
  SUBW a0, s0, a0
  SUBW s0, a0, s10
  LW a0, 536(sp)
  SUBW s0, s0, a0
  LW a0, 528(sp)
  SUBW s0, s0, a0
  LW a0, 524(sp)
  ADDW s0, s0, a0
  LW a0, 516(sp)
  ADDW a0, s0, a0
  ADDW s0, a0, s3
  LW a0, 496(sp)
  ADDW a0, s0, a0
  SUBW a0, a0, s9
  SUBW a0, a0, s7
  SUBW a0, a0, s1
  SUBW s0, a0, s11
  LW a0, 308(sp)
  ADDW s0, s0, a0
  LW a0, 332(sp)
  ADDW s0, s0, a0
  LW a0, 320(sp)
  ADDW s0, s0, a0
  LW a0, 344(sp)
  ADDW s0, s0, a0
  LW a0, 108(sp)
  ADDW s0, s0, a0
  LW a0, 100(sp)
  SUBW s0, s0, a0
  LW a0, 92(sp)
  ADDW s0, s0, a0
  LW a0, 272(sp)
  SUBW s0, s0, a0
  LW a0, 412(sp)
  ADDW s0, s0, a0
  LW a0, 452(sp)
  SUBW s0, s0, a0
  LW a0, 460(sp)
  ADDW s0, s0, a0
  LW a0, 468(sp)
  SUBW s0, s0, a0
  LW a0, 476(sp)
  ADDW s0, s0, a0
  LW a0, 484(sp)
  SUBW s0, s0, a0
  LW a0, 492(sp)
  ADDW s0, s0, a0
  LW a0, 504(sp)
  SUBW s0, s0, a0
  LW a0, 564(sp)
  ADDW s0, s0, a0
  LW a0, 560(sp)
  SUBW s0, s0, a0
  LW a0, 552(sp)
  ADDW a0, s0, a0
  SUBW a0, a0, s6
  ADDW s0, a0, s4
  LW a0, 508(sp)
  SUBW s0, s0, a0
  LW a0, 540(sp)
  ADDW s0, s0, a0
  LW a0, 532(sp)
  SUBW s0, s0, a0
  LW a0, 72(sp)
  ADDW s0, s0, a0
  LW a0, 520(sp)
  SUBW s0, s0, a0
  LW a0, 56(sp)
  ADDW s0, s0, a0
  LW a0, 512(sp)
  SUBW s0, s0, a0
  LW a0, 372(sp)
  ADDW a0, s0, a0
  SUBW s0, a0, s8
  LW a0, 368(sp)
  ADDW s0, s0, a0
  LW a0, 364(sp)
  SUBW s0, s0, a0
  LW a0, 348(sp)
  ADDW s0, s0, a0
  LW a0, 336(sp)
  SUBW s0, s0, a0
  LW a0, 324(sp)
  ADDW s0, s0, a0
  LW a0, 312(sp)
  SUBW s0, s0, a0
  ADD a0, s0, zero
  CALL putint
  ADD a0, s0, zero
  LD s5, 568(sp)
  LD ra, 576(sp)
  LD s0, 584(sp)
  LD s1, 592(sp)
  LD s2, 600(sp)
  LD s3, 608(sp)
  LD s4, 616(sp)
  LD s6, 624(sp)
  LD s7, 632(sp)
  LD s8, 640(sp)
  LD s9, 648(sp)
  LD s10, 656(sp)
  LD s11, 664(sp)
  ADDI sp, sp, 752
  JALR zero, 0(ra)
