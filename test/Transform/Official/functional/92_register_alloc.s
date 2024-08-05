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
  ADDI sp, sp, -880
  SD s6, 576(sp)
  SD s7, 584(sp)
  SD s8, 592(sp)
  SD s9, 600(sp)
  SD ra, 608(sp)
  SD s0, 616(sp)
  SD s1, 624(sp)
  SD s3, 632(sp)
  SD s4, 640(sp)
  SD s5, 648(sp)
  SD s10, 656(sp)
  CALL getint
  ADD s3, a0, zero
  ADDIW s4, s3, 18
  CALL getint
  ADD s0, a0, zero
  SW s0, 476(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 480(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 484(sp)
  CALL getint
  LW s0, 476(sp)
  ADDIW s5, s0, 1
  LA s6, a1
  LW s0, 0(s6)
  SW s0, 488(sp)
  LW s0, 488(sp)
  ADDW s5, s5, s0
  LW s0, 480(sp)
  ADDIW s7, s0, 2
  LA s8, a2
  LW s0, 0(s8)
  SW s0, 492(sp)
  LW s0, 492(sp)
  ADDW s7, s7, s0
  LW s0, 484(sp)
  ADDIW s10, s0, 3
  LA s9, a3
  LW s0, 0(s9)
  SW s0, 496(sp)
  LW s0, 496(sp)
  ADDW s0, s10, s0
  SW s0, 500(sp)
  ADDIW s0, a0, 4
  SW s0, 472(sp)
  LA s10, a4
  LW s0, 0(s10)
  SW s0, 504(sp)
  LW s0, 504(sp)
  LW s1, 472(sp)
  ADDW s0, s1, s0
  SW s0, 508(sp)
  ADDIW s0, s5, 1
  SW s0, 464(sp)
  LA s0, a5
  SD s0, 752(sp)
  LD s0, 752(sp)
  LW s0, 0(s0)
  SW s0, 512(sp)
  LW s0, 512(sp)
  LW s1, 464(sp)
  ADDW s0, s1, s0
  SW s0, 536(sp)
  ADDIW s0, s7, 2
  SW s0, 276(sp)
  LA s0, a6
  SD s0, 872(sp)
  LD s0, 872(sp)
  LW s0, 0(s0)
  SW s0, 516(sp)
  LW s0, 516(sp)
  LW s1, 276(sp)
  ADDW s0, s1, s0
  SW s0, 568(sp)
  LW s0, 500(sp)
  ADDIW s0, s0, 3
  SW s0, 92(sp)
  LA s0, a7
  SD s0, 864(sp)
  LD s0, 864(sp)
  LW s0, 0(s0)
  SW s0, 564(sp)
  LW s0, 564(sp)
  LW s1, 92(sp)
  ADDW s0, s1, s0
  SW s0, 560(sp)
  LW s0, 508(sp)
  ADDIW s0, s0, 4
  SW s0, 104(sp)
  LA s0, a8
  SD s0, 856(sp)
  LD s0, 856(sp)
  LW s0, 0(s0)
  SW s0, 556(sp)
  LW s0, 556(sp)
  LW s1, 104(sp)
  ADDW s0, s1, s0
  SW s0, 552(sp)
  LW s0, 536(sp)
  ADDIW s0, s0, 1
  SW s0, 116(sp)
  LA s0, a9
  SD s0, 848(sp)
  LD s0, 848(sp)
  LW s0, 0(s0)
  SW s0, 548(sp)
  LW s0, 548(sp)
  LW s1, 116(sp)
  ADDW s0, s1, s0
  SW s0, 544(sp)
  LW s0, 568(sp)
  ADDIW s0, s0, 2
  SW s0, 128(sp)
  LA s0, a10
  SD s0, 840(sp)
  LD s0, 840(sp)
  LW s0, 0(s0)
  SW s0, 540(sp)
  LW s0, 540(sp)
  LW s1, 128(sp)
  ADDW s0, s1, s0
  SW s0, 532(sp)
  LW s0, 560(sp)
  ADDIW s0, s0, 3
  SW s0, 140(sp)
  LA s0, a11
  SD s0, 832(sp)
  LD s0, 832(sp)
  LW s0, 0(s0)
  SW s0, 528(sp)
  LW s0, 528(sp)
  LW s1, 140(sp)
  ADDW s0, s1, s0
  SW s0, 524(sp)
  LW s0, 552(sp)
  ADDIW s0, s0, 4
  SW s0, 228(sp)
  LA s0, a12
  SD s0, 824(sp)
  LD s0, 824(sp)
  LW s0, 0(s0)
  SW s0, 456(sp)
  LW s0, 456(sp)
  LW s1, 228(sp)
  ADDW s0, s1, s0
  SW s0, 520(sp)
  LW s0, 544(sp)
  ADDIW s0, s0, 1
  SW s0, 216(sp)
  LA s0, a13
  SD s0, 816(sp)
  LD s0, 816(sp)
  LW s0, 0(s0)
  SW s0, 380(sp)
  LW s0, 380(sp)
  LW s1, 216(sp)
  ADDW s0, s1, s0
  SW s0, 376(sp)
  LW s0, 532(sp)
  ADDIW s0, s0, 2
  SW s0, 204(sp)
  LA s0, a14
  SD s0, 808(sp)
  LD s0, 808(sp)
  LW s0, 0(s0)
  SW s0, 372(sp)
  LW s0, 372(sp)
  LW s1, 204(sp)
  ADDW s0, s1, s0
  SW s0, 368(sp)
  LW s0, 524(sp)
  ADDIW s0, s0, 3
  SW s0, 192(sp)
  LA s0, a15
  SD s0, 800(sp)
  LD s0, 800(sp)
  LW s0, 0(s0)
  SW s0, 364(sp)
  LW s0, 364(sp)
  LW s1, 192(sp)
  ADDW s0, s1, s0
  SW s0, 360(sp)
  LW s0, 520(sp)
  ADDIW s0, s0, 4
  SW s0, 180(sp)
  LA s0, a16
  SD s0, 792(sp)
  LD s0, 792(sp)
  LW s0, 0(s0)
  SW s0, 356(sp)
  LW s0, 356(sp)
  LW s1, 180(sp)
  ADDW s0, s1, s0
  SW s0, 352(sp)
  LW s0, 376(sp)
  ADDIW s0, s0, 1
  SW s0, 168(sp)
  LA s0, a17
  SD s0, 784(sp)
  LD s0, 784(sp)
  LW s0, 0(s0)
  SW s0, 312(sp)
  LW s0, 312(sp)
  LW s1, 168(sp)
  ADDW s0, s1, s0
  SW s0, 344(sp)
  LW s0, 368(sp)
  ADDIW s0, s0, 2
  SW s0, 196(sp)
  LA s0, a18
  SD s0, 776(sp)
  LD s0, 776(sp)
  LW s0, 0(s0)
  SW s0, 340(sp)
  LW s0, 340(sp)
  LW s1, 196(sp)
  ADDW s0, s1, s0
  SW s0, 336(sp)
  LW s0, 360(sp)
  ADDIW s0, s0, 3
  SW s0, 300(sp)
  LA s0, a19
  SD s0, 768(sp)
  LD s0, 768(sp)
  LW s0, 0(s0)
  SW s0, 332(sp)
  LW s0, 332(sp)
  LW s1, 300(sp)
  ADDW s0, s1, s0
  SW s0, 328(sp)
  LW s0, 352(sp)
  ADDIW s0, s0, 4
  SW s0, 288(sp)
  LA s0, a20
  SD s0, 760(sp)
  LD s0, 760(sp)
  LW s0, 0(s0)
  SW s0, 324(sp)
  LW s0, 324(sp)
  LW s1, 288(sp)
  ADDW s0, s1, s0
  SW s0, 320(sp)
  LW s0, 344(sp)
  ADDIW s0, s0, 1
  SW s0, 236(sp)
  LA s0, a21
  SD s0, 736(sp)
  LD s0, 736(sp)
  LW s0, 0(s0)
  SW s0, 316(sp)
  LW s0, 316(sp)
  LW s1, 236(sp)
  ADDW s0, s1, s0
  SW s0, 348(sp)
  LW s0, 336(sp)
  ADDIW s0, s0, 2
  SW s0, 264(sp)
  LA s0, a22
  SD s0, 672(sp)
  LD s0, 672(sp)
  LW s0, 0(s0)
  SW s0, 452(sp)
  LW s0, 452(sp)
  LW s1, 264(sp)
  ADDW s0, s1, s0
  SW s0, 448(sp)
  LW s0, 328(sp)
  ADDIW s0, s0, 3
  SW s0, 252(sp)
  LA s0, a23
  SD s0, 680(sp)
  LD s0, 680(sp)
  LW s0, 0(s0)
  SW s0, 444(sp)
  LW s0, 444(sp)
  LW s1, 252(sp)
  ADDW s0, s1, s0
  SW s0, 440(sp)
  LW s0, 320(sp)
  ADDIW s0, s0, 4
  SW s0, 240(sp)
  LA s0, a24
  SD s0, 688(sp)
  LD s0, 688(sp)
  LW s0, 0(s0)
  SW s0, 436(sp)
  LW s0, 436(sp)
  LW s1, 240(sp)
  ADDW s0, s1, s0
  SW s0, 432(sp)
  LW s0, 348(sp)
  ADDIW s0, s0, 1
  SW s0, 72(sp)
  LA s0, a25
  SD s0, 696(sp)
  LD s0, 696(sp)
  LW s0, 0(s0)
  SW s0, 428(sp)
  LW s0, 428(sp)
  LW s1, 72(sp)
  ADDW s0, s1, s0
  SW s0, 424(sp)
  LW s0, 448(sp)
  ADDIW s0, s0, 2
  SW s0, 60(sp)
  LA s0, a26
  SD s0, 704(sp)
  LD s0, 704(sp)
  LW s0, 0(s0)
  SW s0, 56(sp)
  LW s0, 56(sp)
  LW s1, 60(sp)
  ADDW s0, s1, s0
  SW s0, 52(sp)
  LW s0, 440(sp)
  ADDIW s0, s0, 3
  SW s0, 48(sp)
  LA s0, a27
  SD s0, 712(sp)
  LD s0, 712(sp)
  LW s0, 0(s0)
  SW s0, 44(sp)
  LW s0, 44(sp)
  LW s1, 48(sp)
  ADDW s0, s1, s0
  SW s0, 0(sp)
  LW s0, 432(sp)
  ADDIW s0, s0, 4
  SW s0, 36(sp)
  LA s0, a28
  SD s0, 720(sp)
  LD s0, 720(sp)
  LW s0, 0(s0)
  SW s0, 32(sp)
  LW s0, 32(sp)
  LW s1, 36(sp)
  ADDW s0, s1, s0
  SW s0, 28(sp)
  SUBW s3, s3, s4
  ADDIW s0, s3, 10
  SW s0, 384(sp)
  LW s0, 424(sp)
  ADDIW s3, s0, 1
  LA s4, a29
  LW s0, 0(s4)
  SW s0, 20(sp)
  LW s0, 20(sp)
  ADDW s0, s3, s0
  SW s0, 416(sp)
  LW s0, 52(sp)
  ADDIW s3, s0, 2
  LA s0, a30
  SD s0, 728(sp)
  LD s0, 728(sp)
  LW s0, 0(s0)
  SW s0, 16(sp)
  LW s0, 16(sp)
  ADDW s0, s3, s0
  SW s0, 412(sp)
  LW s0, 0(sp)
  ADDIW s0, s0, 3
  SW s0, 12(sp)
  LA s0, a31
  SD s0, 664(sp)
  LD s0, 664(sp)
  LW s0, 0(s0)
  SW s0, 8(sp)
  LW s0, 8(sp)
  LW s1, 12(sp)
  ADDW s0, s1, s0
  SW s0, 408(sp)
  LW s0, 28(sp)
  ADDIW s0, s0, 4
  SW s0, 404(sp)
  LA s0, a32
  SD s0, 744(sp)
  LD s0, 744(sp)
  LW s0, 0(s0)
  SW s0, 152(sp)
  LW s0, 404(sp)
  LW s1, 152(sp)
  ADDW s0, s0, s1
  SW s0, 400(sp)
  LW s1, 384(sp)
  LW s0, 476(sp)
  ADDW s0, s1, s0
  SW s0, 396(sp)
  LW s1, 396(sp)
  LW s0, 480(sp)
  ADDW s0, s1, s0
  SW s0, 392(sp)
  LW s1, 392(sp)
  LW s0, 484(sp)
  ADDW s0, s1, s0
  SW s0, 388(sp)
  LW s0, 388(sp)
  ADDW a0, s0, a0
  SUBW a0, a0, s5
  SUBW a0, a0, s7
  LW s0, 500(sp)
  SUBW a0, a0, s0
  LW s0, 508(sp)
  SUBW a0, a0, s0
  LW s0, 536(sp)
  ADDW a0, a0, s0
  LW s0, 568(sp)
  ADDW a0, a0, s0
  LW s0, 560(sp)
  ADDW a0, a0, s0
  LW s0, 552(sp)
  ADDW a0, a0, s0
  LW s0, 544(sp)
  SUBW a0, a0, s0
  LW s0, 532(sp)
  SUBW a0, a0, s0
  LW s0, 524(sp)
  SUBW a0, a0, s0
  LW s0, 520(sp)
  SUBW a0, a0, s0
  LW s0, 376(sp)
  ADDW a0, a0, s0
  LW s0, 368(sp)
  ADDW a0, a0, s0
  LW s0, 360(sp)
  ADDW a0, a0, s0
  LW s0, 352(sp)
  ADDW a0, a0, s0
  LW s0, 344(sp)
  SUBW a0, a0, s0
  LW s0, 336(sp)
  SUBW a0, a0, s0
  LW s0, 328(sp)
  SUBW a0, a0, s0
  LW s0, 320(sp)
  SUBW a0, a0, s0
  LW s0, 348(sp)
  ADDW a0, a0, s0
  LW s0, 448(sp)
  ADDW a0, a0, s0
  LW s0, 440(sp)
  ADDW a0, a0, s0
  LW s0, 432(sp)
  ADDW a0, a0, s0
  LW s0, 424(sp)
  SUBW a0, a0, s0
  LW s0, 52(sp)
  SUBW a0, a0, s0
  LW s0, 0(sp)
  SUBW a0, a0, s0
  LW s0, 28(sp)
  SUBW a0, a0, s0
  LW s0, 416(sp)
  ADDW a0, a0, s0
  LW s0, 412(sp)
  ADDW a0, a0, s0
  LW s0, 408(sp)
  ADDW a0, a0, s0
  LW s0, 400(sp)
  ADDW a0, a0, s0
  LW s0, 488(sp)
  ADDW a0, a0, s0
  LW s0, 492(sp)
  SUBW a0, a0, s0
  LW s0, 496(sp)
  ADDW a0, a0, s0
  LW s0, 504(sp)
  SUBW a0, a0, s0
  LW s0, 512(sp)
  ADDW a0, a0, s0
  LW s0, 516(sp)
  SUBW a0, a0, s0
  LW s0, 564(sp)
  ADDW a0, a0, s0
  LW s0, 556(sp)
  SUBW a0, a0, s0
  LW s0, 548(sp)
  ADDW a0, a0, s0
  LW s0, 540(sp)
  SUBW a0, a0, s0
  LW s0, 528(sp)
  ADDW a0, a0, s0
  LW s0, 456(sp)
  SUBW a0, a0, s0
  LW s0, 380(sp)
  ADDW a0, a0, s0
  LW s0, 372(sp)
  SUBW a0, a0, s0
  LW s0, 364(sp)
  ADDW a0, a0, s0
  LW s0, 356(sp)
  SUBW a0, a0, s0
  LW s0, 312(sp)
  ADDW a0, a0, s0
  LW s0, 340(sp)
  SUBW a0, a0, s0
  LW s0, 332(sp)
  ADDW a0, a0, s0
  LW s0, 324(sp)
  SUBW a0, a0, s0
  LW s0, 316(sp)
  ADDW a0, a0, s0
  LW s0, 452(sp)
  SUBW a0, a0, s0
  LW s0, 444(sp)
  ADDW a0, a0, s0
  LW s0, 436(sp)
  SUBW a0, a0, s0
  LW s0, 428(sp)
  ADDW a0, a0, s0
  LW s0, 56(sp)
  SUBW a0, a0, s0
  LW s0, 44(sp)
  ADDW a0, a0, s0
  LW s0, 32(sp)
  SUBW a0, a0, s0
  LW s0, 20(sp)
  ADDW a0, a0, s0
  LW s0, 16(sp)
  SUBW a0, a0, s0
  LW s0, 8(sp)
  ADDW a0, a0, s0
  LW s0, 152(sp)
  SUBW s0, a0, s0
  ADD a0, s0, zero
  CALL putint
  ADD a0, s0, zero
  LD s6, 576(sp)
  LD s7, 584(sp)
  LD s8, 592(sp)
  LD s9, 600(sp)
  LD ra, 608(sp)
  LD s0, 616(sp)
  LD s1, 624(sp)
  LD s3, 632(sp)
  LD s4, 640(sp)
  LD s5, 648(sp)
  LD s10, 656(sp)
  ADDI sp, sp, 880
  JALR zero, 0(ra)
