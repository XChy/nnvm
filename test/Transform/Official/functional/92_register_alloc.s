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
  ADDI sp, sp, -736
  SD ra, 288(sp)
  SD s0, 312(sp)
  SD s1, 320(sp)
  SD s2, 328(sp)
  SD s3, 336(sp)
  SD s4, 344(sp)
  SD s5, 352(sp)
  SD s6, 360(sp)
  SD s7, 368(sp)
  CALL getint
  LA t0, a1
  SD t0, 632(sp)
  LA t0, a2
  SD t0, 544(sp)
  LA t0, a3
  SD t0, 552(sp)
  LA t0, a4
  SD t0, 560(sp)
  LA t0, a5
  SD t0, 568(sp)
  LA t0, a6
  SD t0, 576(sp)
  LA t0, a7
  SD t0, 304(sp)
  LA t0, a8
  SD t0, 584(sp)
  LA t0, a9
  SD t0, 704(sp)
  LA t0, a10
  SD t0, 712(sp)
  LA t0, a11
  SD t0, 720(sp)
  LA t0, a12
  SD t0, 728(sp)
  LA t0, a13
  SD t0, 480(sp)
  LA t0, a14
  SD t0, 384(sp)
  LA t0, a15
  SD t0, 392(sp)
  LA t0, a16
  SD t0, 400(sp)
  LA t0, a17
  SD t0, 408(sp)
  LA t0, a18
  SD t0, 416(sp)
  LA t0, a19
  SD t0, 424(sp)
  LA t0, a20
  SD t0, 432(sp)
  LA t0, a21
  SD t0, 440(sp)
  ADDIW t1, a0, 18
  SUBW t0, a0, t1
  LA t1, a22
  SD t1, 448(sp)
  ADDIW s1, t0, 10
  LA t0, a23
  SD t0, 456(sp)
  LA t0, a24
  SD t0, 464(sp)
  LA t0, a25
  SD t0, 472(sp)
  LA t0, a26
  SD t0, 376(sp)
  LA t0, a27
  SD t0, 488(sp)
  LA t0, a28
  SD t0, 496(sp)
  LA t0, a29
  SD t0, 504(sp)
  LA t0, a30
  SD t0, 512(sp)
  LA t0, a31
  SD t0, 520(sp)
  LA t0, a32
  SD t0, 528(sp)
  CALL getint
  ADD s0, a0, zero
  ADDW t0, s1, s0
  SW t0, 8(sp)
  CALL getint
  ADD s1, a0, zero
  ADDIW t0, s0, 1
  SW t0, 172(sp)
  LW t0, 8(sp)
  ADDW t0, t0, s1
  SW t0, 4(sp)
  CALL getint
  ADD s0, a0, zero
  ADDIW s1, s1, 2
  LW t0, 4(sp)
  ADDW t0, t0, s0
  SW t0, 44(sp)
  CALL getint
  LD t0, 632(sp)
  LW t0, 0(t0)
  SW t0, 0(sp)
  LW t0, 44(sp)
  ADDW a3, t0, a0
  ADDIW a1, s0, 3
  ADDIW a2, a0, 4
  LD t0, 544(sp)
  LW t0, 0(t0)
  SW t0, 48(sp)
  LW t0, 0(sp)
  LW t1, 172(sp)
  ADDW t0, t1, t0
  SUBW a3, a3, t0
  ADDIW a4, t0, 1
  LD t0, 552(sp)
  LW t0, 0(t0)
  SW t0, 52(sp)
  LW t0, 48(sp)
  ADDW t0, s1, t0
  SUBW a6, a3, t0
  ADDIW a5, t0, 2
  LD t0, 560(sp)
  LW a3, 0(t0)
  LW t0, 52(sp)
  ADDW t0, a1, t0
  SUBW a7, a6, t0
  ADDIW a6, t0, 3
  LD t0, 568(sp)
  LW a1, 0(t0)
  ADDW t0, a2, a3
  SUBW t3, a7, t0
  ADDIW a7, t0, 4
  LD t0, 576(sp)
  LW t0, 0(t0)
  SW t0, 56(sp)
  ADDW t0, a4, a1
  ADDW t4, t3, t0
  ADDIW t3, t0, 1
  LD t0, 304(sp)
  LW t0, 0(t0)
  SW t0, 60(sp)
  LW t0, 56(sp)
  ADDW t0, a5, t0
  ADDW t5, t4, t0
  ADDIW t4, t0, 2
  LD t0, 584(sp)
  LW a5, 0(t0)
  LW t0, 60(sp)
  ADDW t0, a6, t0
  ADDW s0, t5, t0
  ADDIW t5, t0, 3
  LD t0, 704(sp)
  LW a6, 0(t0)
  ADDW t0, a7, a5
  ADDW s1, s0, t0
  ADDIW s0, t0, 4
  LD t0, 712(sp)
  LW a7, 0(t0)
  ADDW t0, t3, a6
  SUBW t1, s1, t0
  SW t1, 164(sp)
  ADDIW s1, t0, 1
  LD t0, 720(sp)
  LW t3, 0(t0)
  ADDW t0, t4, a7
  LW t1, 164(sp)
  SUBW t1, t1, t0
  SW t1, 160(sp)
  ADDIW t0, t0, 2
  SW t0, 176(sp)
  LD t0, 728(sp)
  LW t4, 0(t0)
  ADDW t0, t5, t3
  LW t1, 160(sp)
  SUBW t1, t1, t0
  SW t1, 156(sp)
  ADDIW t0, t0, 3
  SW t0, 180(sp)
  LD t0, 480(sp)
  LW t5, 0(t0)
  ADDW t0, s0, t4
  LW t1, 156(sp)
  SUBW t1, t1, t0
  SW t1, 152(sp)
  ADDIW t0, t0, 4
  SW t0, 184(sp)
  LD t0, 384(sp)
  LW s0, 0(t0)
  ADDW t0, s1, t5
  LW t1, 152(sp)
  ADDW t1, t1, t0
  SW t1, 148(sp)
  ADDIW t0, t0, 1
  SW t0, 192(sp)
  LD t0, 392(sp)
  LW s1, 0(t0)
  LW t0, 176(sp)
  ADDW t0, t0, s0
  LW t1, 148(sp)
  ADDW t1, t1, t0
  SW t1, 144(sp)
  ADDIW t0, t0, 2
  SW t0, 200(sp)
  LD t0, 400(sp)
  LW t0, 0(t0)
  SW t0, 188(sp)
  LW t0, 180(sp)
  ADDW t0, t0, s1
  LW t1, 144(sp)
  ADDW t1, t1, t0
  SW t1, 140(sp)
  ADDIW t0, t0, 3
  SW t0, 208(sp)
  LD t0, 408(sp)
  LW t0, 0(t0)
  SW t0, 196(sp)
  LW t0, 188(sp)
  LW t1, 184(sp)
  ADDW t0, t1, t0
  LW t1, 140(sp)
  ADDW t1, t1, t0
  SW t1, 136(sp)
  ADDIW t0, t0, 4
  SW t0, 216(sp)
  LD t0, 416(sp)
  LW t0, 0(t0)
  SW t0, 204(sp)
  LW t0, 196(sp)
  LW t1, 192(sp)
  ADDW t0, t1, t0
  LW t1, 136(sp)
  SUBW t1, t1, t0
  SW t1, 132(sp)
  ADDIW t0, t0, 1
  SW t0, 224(sp)
  LD t0, 424(sp)
  LW t0, 0(t0)
  SW t0, 212(sp)
  LW t0, 204(sp)
  LW t1, 200(sp)
  ADDW t0, t1, t0
  LW t1, 132(sp)
  SUBW t1, t1, t0
  SW t1, 84(sp)
  ADDIW t0, t0, 2
  SW t0, 280(sp)
  LD t0, 432(sp)
  LW t0, 0(t0)
  SW t0, 220(sp)
  LW t0, 212(sp)
  LW t1, 208(sp)
  ADDW t0, t1, t0
  LW t1, 84(sp)
  SUBW t1, t1, t0
  SW t1, 124(sp)
  ADDIW t0, t0, 3
  SW t0, 276(sp)
  LD t0, 440(sp)
  LW t0, 0(t0)
  SW t0, 228(sp)
  LW t0, 220(sp)
  LW t1, 216(sp)
  ADDW t0, t1, t0
  LW t1, 124(sp)
  SUBW t1, t1, t0
  SW t1, 88(sp)
  ADDIW t0, t0, 4
  SW t0, 272(sp)
  LD t0, 448(sp)
  LW t0, 0(t0)
  SW t0, 232(sp)
  LW t0, 228(sp)
  LW t1, 224(sp)
  ADDW t0, t1, t0
  LW t1, 88(sp)
  ADDW t1, t1, t0
  SW t1, 92(sp)
  ADDIW t0, t0, 1
  SW t0, 268(sp)
  LD t0, 456(sp)
  LW s2, 0(t0)
  LW t0, 232(sp)
  LW t1, 280(sp)
  ADDW t0, t1, t0
  LW t1, 92(sp)
  ADDW t1, t1, t0
  SW t1, 96(sp)
  ADDIW t0, t0, 2
  SW t0, 40(sp)
  LD t0, 464(sp)
  LW s3, 0(t0)
  LW t0, 276(sp)
  ADDW t0, t0, s2
  LW t1, 96(sp)
  ADDW t1, t1, t0
  SW t1, 100(sp)
  ADDIW t0, t0, 3
  SW t0, 36(sp)
  LD t0, 472(sp)
  LW s4, 0(t0)
  LW t0, 272(sp)
  ADDW t0, t0, s3
  LW t1, 100(sp)
  ADDW t1, t1, t0
  SW t1, 104(sp)
  ADDIW t0, t0, 4
  SW t0, 32(sp)
  LD t0, 376(sp)
  LW s5, 0(t0)
  LW t0, 268(sp)
  ADDW t0, t0, s4
  LW t1, 104(sp)
  SUBW t1, t1, t0
  SW t1, 108(sp)
  ADDIW t0, t0, 1
  SW t0, 64(sp)
  LD t0, 488(sp)
  LW s6, 0(t0)
  LW t0, 40(sp)
  ADDW t0, t0, s5
  LW t1, 108(sp)
  SUBW t1, t1, t0
  SW t1, 112(sp)
  ADDIW t0, t0, 2
  SW t0, 68(sp)
  LD t0, 496(sp)
  LW s7, 0(t0)
  LW t0, 36(sp)
  ADDW t0, t0, s6
  LW t1, 112(sp)
  SUBW t1, t1, t0
  SW t1, 116(sp)
  ADDIW t0, t0, 3
  SW t0, 76(sp)
  LD t0, 504(sp)
  LW t0, 0(t0)
  SW t0, 24(sp)
  LW t0, 32(sp)
  ADDW t0, t0, s7
  LW t1, 116(sp)
  SUBW t1, t1, t0
  SW t1, 240(sp)
  ADDIW t0, t0, 4
  SW t0, 128(sp)
  LD t0, 512(sp)
  LW t0, 0(t0)
  SW t0, 16(sp)
  LW t0, 64(sp)
  LW t1, 24(sp)
  ADDW t0, t0, t1
  LW t1, 240(sp)
  ADDW t0, t1, t0
  SW t0, 244(sp)
  LD t0, 520(sp)
  LW t0, 0(t0)
  SW t0, 12(sp)
  LW t0, 68(sp)
  LW t1, 16(sp)
  ADDW t0, t0, t1
  SW t0, 72(sp)
  LW t0, 244(sp)
  LW t1, 72(sp)
  ADDW t0, t0, t1
  SW t0, 248(sp)
  LD t0, 528(sp)
  LW t0, 0(t0)
  SW t0, 168(sp)
  LW t0, 76(sp)
  LW t1, 12(sp)
  ADDW t0, t0, t1
  SW t0, 80(sp)
  LW t0, 248(sp)
  LW t1, 80(sp)
  ADDW t0, t0, t1
  SW t0, 252(sp)
  LW t0, 168(sp)
  LW t1, 128(sp)
  ADDW t0, t1, t0
  SW t0, 236(sp)
  LW t0, 252(sp)
  LW t1, 236(sp)
  ADDW t0, t0, t1
  SW t0, 256(sp)
  LW t0, 256(sp)
  LW t1, 0(sp)
  ADDW t0, t0, t1
  SW t0, 284(sp)
  LW t0, 284(sp)
  LW t1, 48(sp)
  SUBW t0, t0, t1
  SW t0, 260(sp)
  LW t0, 260(sp)
  LW t1, 52(sp)
  ADDW t0, t0, t1
  SW t0, 264(sp)
  LW t0, 264(sp)
  SUBW t0, t0, a3
  ADDW t0, t0, a1
  LW t1, 56(sp)
  SUBW t0, t0, t1
  LW t1, 60(sp)
  ADDW t0, t0, t1
  SUBW t0, t0, a5
  ADDW t0, t0, a6
  SUBW t0, t0, a7
  ADDW t0, t0, t3
  SUBW t0, t0, t4
  ADDW t0, t0, t5
  SUBW t0, t0, s0
  ADDW t0, t0, s1
  LW t1, 188(sp)
  SUBW t0, t0, t1
  LW t1, 196(sp)
  ADDW t0, t0, t1
  LW t1, 204(sp)
  SUBW t0, t0, t1
  LW t1, 212(sp)
  ADDW t0, t0, t1
  LW t1, 220(sp)
  SUBW t0, t0, t1
  LW t1, 228(sp)
  ADDW t0, t0, t1
  LW t1, 232(sp)
  SUBW t0, t0, t1
  ADDW t0, t0, s2
  SUBW t0, t0, s3
  ADDW t0, t0, s4
  SUBW t0, t0, s5
  ADDW t0, t0, s6
  SUBW t0, t0, s7
  LW t1, 24(sp)
  ADDW t0, t0, t1
  LW t1, 16(sp)
  SUBW t0, t0, t1
  LW t1, 12(sp)
  ADDW t0, t0, t1
  LW t1, 168(sp)
  SUBW s0, t0, t1
  ADD a0, s0, zero
  CALL putint
  ADD a0, s0, zero
  LD ra, 288(sp)
  LD s0, 312(sp)
  LD s1, 320(sp)
  LD s2, 328(sp)
  LD s3, 336(sp)
  LD s4, 344(sp)
  LD s5, 352(sp)
  LD s6, 360(sp)
  LD s7, 368(sp)
  ADDI sp, sp, 736
  JALR zero, 0(ra)
