.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
main:   # loop depth 0
  ADDI sp, sp, -880
  SD s11, 432(sp)
  SD ra, 448(sp)
  SD s0, 456(sp)
  SD s1, 464(sp)
  SD s2, 472(sp)
  SD s8, 480(sp)
  SD s9, 488(sp)
  SD s10, 496(sp)
  CALL getint
  LA s0, a1
  SD s0, 776(sp)
  ADD s0, a0, zero
  LA s1, a2
  SD s1, 680(sp)
  LA s1, a3
  SD s1, 688(sp)
  LA s1, a4
  SD s1, 696(sp)
  LA s1, a5
  SD s1, 704(sp)
  LA s1, a6
  SD s1, 712(sp)
  LA s1, a7
  SD s1, 720(sp)
  LA s1, a8
  SD s1, 728(sp)
  LA s1, a9
  SD s1, 856(sp)
  LA s1, a10
  SD s1, 864(sp)
  LA s1, a11
  SD s1, 872(sp)
  LA s1, a12
  SD s1, 616(sp)
  LA s1, a13
  SD s1, 512(sp)
  LA s1, a14
  SD s1, 520(sp)
  LA s1, a15
  SD s1, 528(sp)
  LA s1, a16
  SD s1, 536(sp)
  LA s1, a17
  SD s1, 544(sp)
  LA s1, a18
  SD s1, 552(sp)
  LA s1, a19
  SD s1, 560(sp)
  LA s1, a20
  SD s1, 568(sp)
  LA s1, a21
  SD s1, 576(sp)
  ADDIW s1, s0, 18
  SUBW s0, s0, s1
  LA s1, a22
  SD s1, 584(sp)
  ADDIW s1, s0, 10
  LA s0, a23
  SD s0, 592(sp)
  LA s0, a24
  SD s0, 600(sp)
  LA s0, a25
  SD s0, 608(sp)
  LA s0, a26
  SD s0, 504(sp)
  LA s0, a27
  SD s0, 624(sp)
  LA s0, a28
  SD s0, 632(sp)
  LA s0, a29
  SD s0, 640(sp)
  LA s0, a30
  SD s0, 648(sp)
  LA s0, a31
  SD s0, 656(sp)
  LA s0, a32
  SD s0, 664(sp)
  CALL getint
  ADD s0, a0, zero
  ADDW s1, s1, s0
  ADDIW s2, s0, 1
  CALL getint
  ADD s0, a0, zero
  ADDW s1, s1, s0
  SW s1, 156(sp)
  CALL getint
  ADD s1, a0, zero
  ADDIW s0, s0, 2
  SW s0, 332(sp)
  LW s0, 156(sp)
  ADDW s0, s0, s1
  SW s0, 160(sp)
  CALL getint
  LD s0, 776(sp)
  LW s0, 0(s0)
  SW s0, 352(sp)
  LW s0, 160(sp)
  ADDW s0, s0, a0
  SW s0, 164(sp)
  ADDIW s0, s1, 3
  SW s0, 328(sp)
  ADDIW a0, a0, 4
  SW a0, 324(sp)
  LD a0, 680(sp)
  LW a0, 0(a0)
  SW a0, 356(sp)
  LW a0, 352(sp)
  ADDW a0, s2, a0
  LW s0, 164(sp)
  SUBW s0, s0, a0
  SW s0, 168(sp)
  ADDIW a0, a0, 1
  SW a0, 316(sp)
  LD a0, 688(sp)
  LW a0, 0(a0)
  SW a0, 360(sp)
  LW a0, 356(sp)
  LW s0, 332(sp)
  ADDW a0, s0, a0
  LW s0, 168(sp)
  SUBW s0, s0, a0
  SW s0, 172(sp)
  ADDIW a0, a0, 2
  SW a0, 308(sp)
  LD a0, 696(sp)
  LW a0, 0(a0)
  SW a0, 364(sp)
  LW a0, 360(sp)
  LW s0, 328(sp)
  ADDW a0, s0, a0
  LW s0, 172(sp)
  SUBW s0, s0, a0
  SW s0, 176(sp)
  ADDIW a0, a0, 3
  SW a0, 300(sp)
  LD a0, 704(sp)
  LW a0, 0(a0)
  SW a0, 368(sp)
  LW a0, 364(sp)
  LW s0, 324(sp)
  ADDW a0, s0, a0
  LW s0, 176(sp)
  SUBW s0, s0, a0
  SW s0, 120(sp)
  ADDIW a0, a0, 4
  SW a0, 292(sp)
  LD a0, 712(sp)
  LW a0, 0(a0)
  SW a0, 372(sp)
  LW a0, 368(sp)
  LW s0, 316(sp)
  ADDW a0, s0, a0
  LW s0, 120(sp)
  ADDW s0, s0, a0
  SW s0, 184(sp)
  ADDIW a0, a0, 1
  SW a0, 284(sp)
  LD a0, 720(sp)
  LW a0, 0(a0)
  SW a0, 376(sp)
  LW a0, 372(sp)
  LW s0, 308(sp)
  ADDW a0, s0, a0
  LW s0, 184(sp)
  ADDW s0, s0, a0
  SW s0, 188(sp)
  ADDIW a0, a0, 2
  SW a0, 276(sp)
  LD a0, 728(sp)
  LW a0, 0(a0)
  SW a0, 380(sp)
  LW a0, 376(sp)
  LW s0, 300(sp)
  ADDW a0, s0, a0
  LW s0, 188(sp)
  ADDW s0, s0, a0
  SW s0, 192(sp)
  ADDIW a0, a0, 3
  SW a0, 268(sp)
  LD a0, 856(sp)
  LW a0, 0(a0)
  SW a0, 424(sp)
  LW a0, 380(sp)
  LW s0, 292(sp)
  ADDW a0, s0, a0
  LW s0, 192(sp)
  ADDW s0, s0, a0
  SW s0, 196(sp)
  ADDIW a0, a0, 4
  SW a0, 260(sp)
  LD a0, 864(sp)
  LW a0, 0(a0)
  SW a0, 384(sp)
  LW a0, 424(sp)
  LW s0, 284(sp)
  ADDW a0, s0, a0
  LW s0, 196(sp)
  SUBW s0, s0, a0
  SW s0, 200(sp)
  ADDIW a0, a0, 1
  SW a0, 252(sp)
  LD a0, 872(sp)
  LW a0, 0(a0)
  SW a0, 420(sp)
  LW a0, 384(sp)
  LW s0, 276(sp)
  ADDW a0, s0, a0
  LW s0, 200(sp)
  SUBW s0, s0, a0
  SW s0, 204(sp)
  ADDIW a0, a0, 2
  SW a0, 344(sp)
  LD a0, 616(sp)
  LW a0, 0(a0)
  SW a0, 416(sp)
  LW a0, 420(sp)
  LW s0, 268(sp)
  ADDW a0, s0, a0
  LW s0, 204(sp)
  SUBW s0, s0, a0
  SW s0, 208(sp)
  ADDIW a0, a0, 3
  SW a0, 288(sp)
  LD a0, 512(sp)
  LW a0, 0(a0)
  SW a0, 348(sp)
  LW a0, 416(sp)
  LW s0, 260(sp)
  ADDW a0, s0, a0
  LW s0, 208(sp)
  SUBW s0, s0, a0
  SW s0, 212(sp)
  ADDIW a0, a0, 4
  SW a0, 116(sp)
  LD a0, 520(sp)
  LW a0, 0(a0)
  SW a0, 340(sp)
  LW a0, 348(sp)
  LW s0, 252(sp)
  ADDW a0, s0, a0
  LW s0, 212(sp)
  ADDW s0, s0, a0
  SW s0, 216(sp)
  ADDIW a0, a0, 1
  SW a0, 108(sp)
  LD a0, 528(sp)
  LW a0, 0(a0)
  SW a0, 180(sp)
  LW a0, 340(sp)
  LW s0, 344(sp)
  ADDW a0, s0, a0
  LW s0, 216(sp)
  ADDW s0, s0, a0
  SW s0, 220(sp)
  ADDIW a0, a0, 2
  SW a0, 100(sp)
  LD a0, 536(sp)
  LW a0, 0(a0)
  SW a0, 112(sp)
  LW a0, 180(sp)
  LW s0, 288(sp)
  ADDW a0, s0, a0
  LW s0, 220(sp)
  ADDW s0, s0, a0
  SW s0, 224(sp)
  ADDIW a0, a0, 3
  SW a0, 92(sp)
  LD a0, 544(sp)
  LW a0, 0(a0)
  SW a0, 104(sp)
  LW a0, 112(sp)
  LW s0, 116(sp)
  ADDW a0, s0, a0
  LW s0, 224(sp)
  ADDW s0, s0, a0
  SW s0, 228(sp)
  ADDIW a0, a0, 4
  SW a0, 84(sp)
  LD a0, 552(sp)
  LW a0, 0(a0)
  SW a0, 96(sp)
  LW a0, 104(sp)
  LW s0, 108(sp)
  ADDW a0, s0, a0
  LW s0, 228(sp)
  SUBW s0, s0, a0
  SW s0, 232(sp)
  ADDIW a0, a0, 1
  SW a0, 80(sp)
  LD a0, 560(sp)
  LW a0, 0(a0)
  SW a0, 412(sp)
  LW a0, 96(sp)
  LW s0, 100(sp)
  ADDW a0, s0, a0
  LW s0, 232(sp)
  SUBW s0, s0, a0
  SW s0, 60(sp)
  ADDIW a0, a0, 2
  SW a0, 76(sp)
  LD a0, 568(sp)
  LW a0, 0(a0)
  SW a0, 408(sp)
  LW a0, 412(sp)
  LW s0, 92(sp)
  ADDW a0, s0, a0
  LW s0, 60(sp)
  SUBW s0, s0, a0
  SW s0, 4(sp)
  ADDIW a0, a0, 3
  SW a0, 68(sp)
  LD a0, 576(sp)
  LW a0, 0(a0)
  SW a0, 404(sp)
  LW a0, 408(sp)
  LW s0, 84(sp)
  ADDW a0, s0, a0
  LW s0, 4(sp)
  SUBW s0, s0, a0
  SW s0, 8(sp)
  ADDIW a0, a0, 4
  SW a0, 0(sp)
  LD a0, 584(sp)
  LW a0, 0(a0)
  SW a0, 400(sp)
  LW a0, 404(sp)
  LW s0, 80(sp)
  ADDW a0, s0, a0
  LW s0, 8(sp)
  ADDW s0, s0, a0
  SW s0, 12(sp)
  ADDIW a0, a0, 1
  SW a0, 52(sp)
  LD a0, 592(sp)
  LW a0, 0(a0)
  SW a0, 396(sp)
  LW a0, 400(sp)
  LW s0, 76(sp)
  ADDW a0, s0, a0
  LW s0, 12(sp)
  ADDW s0, s0, a0
  SW s0, 16(sp)
  ADDIW a0, a0, 2
  SW a0, 124(sp)
  LD a0, 600(sp)
  LW a0, 0(a0)
  SW a0, 392(sp)
  LW a0, 396(sp)
  LW s0, 68(sp)
  ADDW a0, s0, a0
  LW s0, 16(sp)
  ADDW s0, s0, a0
  SW s0, 20(sp)
  ADDIW a0, a0, 3
  SW a0, 128(sp)
  LD a0, 608(sp)
  LW a0, 0(a0)
  SW a0, 336(sp)
  LW a0, 392(sp)
  LW s0, 0(sp)
  ADDW a0, s0, a0
  LW s0, 20(sp)
  ADDW s0, s0, a0
  SW s0, 24(sp)
  ADDIW a0, a0, 4
  SW a0, 132(sp)
  LD a0, 504(sp)
  LW a0, 0(a0)
  SW a0, 388(sp)
  LW a0, 336(sp)
  LW s0, 52(sp)
  ADDW a0, s0, a0
  LW s0, 24(sp)
  SUBW s0, s0, a0
  SW s0, 28(sp)
  ADDIW a0, a0, 1
  SW a0, 136(sp)
  LD a0, 624(sp)
  LW a0, 0(a0)
  SW a0, 240(sp)
  LW a0, 388(sp)
  LW s0, 124(sp)
  ADDW a0, s0, a0
  LW s0, 28(sp)
  SUBW s0, s0, a0
  SW s0, 32(sp)
  ADDIW a0, a0, 2
  SW a0, 140(sp)
  LD a0, 632(sp)
  LW a0, 0(a0)
  SW a0, 244(sp)
  LW a0, 240(sp)
  LW s0, 128(sp)
  ADDW a0, s0, a0
  LW s0, 32(sp)
  SUBW s0, s0, a0
  SW s0, 36(sp)
  ADDIW a0, a0, 3
  SW a0, 248(sp)
  LD a0, 640(sp)
  LW s8, 0(a0)
  LW a0, 244(sp)
  LW s0, 132(sp)
  ADDW a0, s0, a0
  LW s0, 36(sp)
  SUBW s0, s0, a0
  SW s0, 40(sp)
  ADDIW a0, a0, 4
  SW a0, 148(sp)
  LD a0, 648(sp)
  LW s9, 0(a0)
  LW a0, 136(sp)
  ADDW a0, a0, s8
  LW s0, 40(sp)
  ADDW a0, s0, a0
  SW a0, 44(sp)
  LD a0, 656(sp)
  LW s10, 0(a0)
  LW a0, 140(sp)
  ADDW a0, a0, s9
  LW s0, 44(sp)
  ADDW s11, s0, a0
  LD a0, 664(sp)
  LW a0, 0(a0)
  SW a0, 152(sp)
  LW a0, 248(sp)
  ADDW a0, a0, s10
  ADDW s11, s11, a0
  LW a0, 152(sp)
  LW s0, 148(sp)
  ADDW a0, s0, a0
  ADDW a0, s11, a0
  LW s0, 352(sp)
  ADDW a0, a0, s0
  LW s0, 356(sp)
  SUBW a0, a0, s0
  LW s0, 360(sp)
  ADDW a0, a0, s0
  LW s0, 364(sp)
  SUBW a0, a0, s0
  LW s0, 368(sp)
  ADDW a0, a0, s0
  LW s0, 372(sp)
  SUBW a0, a0, s0
  LW s0, 376(sp)
  ADDW a0, a0, s0
  LW s0, 380(sp)
  SUBW a0, a0, s0
  LW s0, 424(sp)
  ADDW a0, a0, s0
  LW s0, 384(sp)
  SUBW a0, a0, s0
  LW s0, 420(sp)
  ADDW a0, a0, s0
  LW s0, 416(sp)
  SUBW a0, a0, s0
  LW s0, 348(sp)
  ADDW a0, a0, s0
  LW s0, 340(sp)
  SUBW a0, a0, s0
  LW s0, 180(sp)
  ADDW a0, a0, s0
  LW s0, 112(sp)
  SUBW a0, a0, s0
  LW s0, 104(sp)
  ADDW a0, a0, s0
  LW s0, 96(sp)
  SUBW a0, a0, s0
  LW s0, 412(sp)
  ADDW a0, a0, s0
  LW s0, 408(sp)
  SUBW a0, a0, s0
  LW s0, 404(sp)
  ADDW a0, a0, s0
  LW s0, 400(sp)
  SUBW a0, a0, s0
  LW s0, 396(sp)
  ADDW a0, a0, s0
  LW s0, 392(sp)
  SUBW a0, a0, s0
  LW s0, 336(sp)
  ADDW a0, a0, s0
  LW s0, 388(sp)
  SUBW a0, a0, s0
  LW s0, 240(sp)
  ADDW a0, a0, s0
  LW s0, 244(sp)
  SUBW a0, a0, s0
  ADDW a0, a0, s8
  SUBW a0, a0, s9
  ADDW a0, a0, s10
  LW s0, 152(sp)
  SUBW s0, a0, s0
  ADD a0, s0, zero
  CALL putint
  ADD a0, s0, zero
  LD s11, 432(sp)
  LD ra, 448(sp)
  LD s0, 456(sp)
  LD s1, 464(sp)
  LD s2, 472(sp)
  LD s8, 480(sp)
  LD s9, 488(sp)
  LD s10, 496(sp)
  ADDI sp, sp, 880
  JALR zero, 0(ra)
