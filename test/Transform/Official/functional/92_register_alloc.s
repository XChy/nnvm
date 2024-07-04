.global main
.global func
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
  ADDI sp, sp, -64
  SD ra, 16(sp)
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD s1, 40(sp)
  SD s0, 48(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 8(sp)
  ADDI s1, zero, 9
  ADDI s2, zero, 2
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 0(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL func
  ADD s0, a0, zero
  SW s0, 8(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 8(sp)
  ADD a0, s0, zero
  LD ra, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
func:
  ADDI sp, sp, -608
  SD ra, 496(sp)
  SD s11, 504(sp)
  SD s10, 512(sp)
  SD s9, 520(sp)
  SD s0, 528(sp)
  SD s5, 536(sp)
  SD s7, 544(sp)
  SD s1, 552(sp)
  SD s6, 560(sp)
  SD s8, 568(sp)
  SD s2, 576(sp)
  SD s3, 584(sp)
  SD s4, 592(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 304(sp)
  SW s1, 296(sp)
  ADDW s2, s0, s1
  SW s2, 288(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 280(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 272(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 264(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 312(sp)
  LW t4, 312(sp)
  SW t4, 256(sp)
  LW s1, 280(sp)
  ADDIW s2, s1, 1
  LA s1, a1
  LW s3, 0(s1)
  ADDW t4, s2, s3
  SW t4, 344(sp)
  LW t4, 344(sp)
  SW t4, 248(sp)
  LW s2, 272(sp)
  ADDIW s3, s2, 2
  LA s2, a2
  LW s4, 0(s2)
  ADDW t4, s3, s4
  SW t4, 336(sp)
  LW t4, 336(sp)
  SW t4, 240(sp)
  LW s3, 264(sp)
  ADDIW s4, s3, 3
  LA s3, a3
  LW s5, 0(s3)
  ADDW t4, s4, s5
  SW t4, 328(sp)
  LW t4, 328(sp)
  SW t4, 232(sp)
  LW t4, 312(sp)
  ADDIW s4, t4, 4
  LA s5, a4
  LW s6, 0(s5)
  ADDW t4, s4, s6
  SW t4, 320(sp)
  LW t4, 320(sp)
  SW t4, 224(sp)
  LW t4, 344(sp)
  ADDIW s4, t4, 1
  LA s6, a5
  LW s7, 0(s6)
  ADDW t4, s4, s7
  SW t4, 376(sp)
  LW t4, 376(sp)
  SW t4, 216(sp)
  LW t4, 336(sp)
  ADDIW s4, t4, 2
  LA s7, a6
  LW s8, 0(s7)
  ADDW t4, s4, s8
  SW t4, 368(sp)
  LW t4, 368(sp)
  SW t4, 208(sp)
  LW t4, 328(sp)
  ADDIW s4, t4, 3
  LA s8, a7
  LW s9, 0(s8)
  ADDW t4, s4, s9
  SW t4, 360(sp)
  LW t4, 360(sp)
  SW t4, 200(sp)
  LW t4, 320(sp)
  ADDIW s4, t4, 4
  LA s9, a8
  LW s10, 0(s9)
  ADDW t4, s4, s10
  SW t4, 352(sp)
  LW t4, 352(sp)
  SW t4, 192(sp)
  LW t4, 376(sp)
  ADDIW s4, t4, 1
  LA s10, a9
  LW s11, 0(s10)
  ADDW s10, s4, s11
  SW s10, 184(sp)
  LW t4, 368(sp)
  ADDIW s4, t4, 2
  LA s11, a10
  LW t0, 0(s11)
  ADDW s11, s4, t0
  SW s11, 176(sp)
  LW t4, 360(sp)
  ADDIW s4, t4, 3
  LA t0, a11
  LW t1, 0(t0)
  ADDW t0, s4, t1
  SW t0, 168(sp)
  LW t4, 352(sp)
  ADDIW s4, t4, 4
  LA t1, a12
  LW t2, 0(t1)
  ADDW t4, s4, t2
  SW t4, 384(sp)
  LW t4, 384(sp)
  SW t4, 160(sp)
  ADDIW s4, s10, 1
  LA t2, a13
  LW a1, 0(t2)
  ADDW t2, s4, a1
  SW t2, 152(sp)
  ADDIW s4, s11, 2
  LA a1, a14
  LW a2, 0(a1)
  ADDW a1, s4, a2
  SW a1, 144(sp)
  ADDIW s4, t0, 3
  LA a2, a15
  LW a3, 0(a2)
  ADDW a2, s4, a3
  SW a2, 136(sp)
  LW t4, 384(sp)
  ADDIW s4, t4, 4
  LA a3, a16
  LW a4, 0(a3)
  ADDW a3, s4, a4
  SW a3, 128(sp)
  ADDIW s4, t2, 1
  LA a4, a17
  LW a5, 0(a4)
  ADDW a4, s4, a5
  SW a4, 120(sp)
  ADDIW s4, a1, 2
  LA a5, a18
  LW a6, 0(a5)
  ADDW a5, s4, a6
  SW a5, 112(sp)
  ADDIW s4, a2, 3
  LA a6, a19
  LW a7, 0(a6)
  ADDW a6, s4, a7
  SW a6, 104(sp)
  ADDIW s4, a3, 4
  LA a7, a20
  LW s0, 0(a7)
  ADDW a7, s4, s0
  SW a7, 96(sp)
  ADDIW s0, a4, 1
  LA s4, a21
  LW s5, 0(s4)
  ADDW s4, s0, s5
  SW s4, 88(sp)
  ADDIW s0, a5, 2
  LA s5, a22
  LW s3, 0(s5)
  ADDW s5, s0, s3
  SW s5, 80(sp)
  ADDIW s0, a6, 3
  LA s3, a23
  LW s2, 0(s3)
  ADDW s3, s0, s2
  SW s3, 72(sp)
  ADDIW s0, a7, 4
  LA s2, a24
  LW s1, 0(s2)
  ADDW s2, s0, s1
  SW s2, 64(sp)
  ADDIW s0, s4, 1
  LA s1, a25
  LW s9, 0(s1)
  ADDW s1, s0, s9
  SW s1, 56(sp)
  ADDIW s0, s5, 2
  LA s9, a26
  LW s8, 0(s9)
  ADDW s9, s0, s8
  SW s9, 48(sp)
  ADDIW s0, s3, 3
  LA s8, a27
  LW s7, 0(s8)
  ADDW s8, s0, s7
  SW s8, 40(sp)
  ADDIW s0, s2, 4
  LA s7, a28
  LW s6, 0(s7)
  ADDW s7, s0, s6
  SW s7, 32(sp)
  ADDIW s0, s1, 1
  LA s6, a29
  LW t1, 0(s6)
  ADDW s6, s0, t1
  SW s6, 24(sp)
  ADDIW s0, s9, 2
  LA s6, a30
  LW t1, 0(s6)
  ADDW s6, s0, t1
  SW s6, 16(sp)
  ADDIW s0, s8, 3
  LA s6, a31
  LW t1, 0(s6)
  ADDW s6, s0, t1
  SW s6, 8(sp)
  ADDIW s0, s7, 4
  LA s6, a32
  LW t1, 0(s6)
  ADDW s6, s0, t1
  SW s6, 0(sp)
  LW s0, 304(sp)
  LW s6, 296(sp)
  SUBW t1, s0, s6
  ADDIW s0, t1, 10
  SW s0, 288(sp)
  ADDIW s6, s1, 1
  LA s1, a29
  LW t1, 0(s1)
  ADDW t4, s6, t1
  SW t4, 416(sp)
  LW t4, 416(sp)
  SW t4, 24(sp)
  ADDIW s6, s9, 2
  LA s9, a30
  LW t1, 0(s9)
  ADDW t4, s6, t1
  SW t4, 408(sp)
  LW t4, 408(sp)
  SW t4, 16(sp)
  ADDIW s6, s8, 3
  LA s8, a31
  LW t1, 0(s8)
  ADDW t4, s6, t1
  SW t4, 400(sp)
  LW t4, 400(sp)
  SW t4, 8(sp)
  ADDIW s6, s7, 4
  LA s7, a32
  LW t1, 0(s7)
  ADDW t4, s6, t1
  SW t4, 392(sp)
  LW t4, 392(sp)
  SW t4, 0(sp)
  ADDIW s6, s4, 1
  LA s4, a25
  LW t1, 0(s4)
  ADDW t4, s6, t1
  SW t4, 448(sp)
  LW t4, 448(sp)
  SW t4, 56(sp)
  ADDIW s6, s5, 2
  LA s5, a26
  LW t1, 0(s5)
  ADDW t4, s6, t1
  SW t4, 440(sp)
  LW t4, 440(sp)
  SW t4, 48(sp)
  ADDIW s6, s3, 3
  LA s3, a27
  LW t1, 0(s3)
  ADDW t4, s6, t1
  SW t4, 432(sp)
  LW t4, 432(sp)
  SW t4, 40(sp)
  ADDIW s6, s2, 4
  LA s2, a28
  LW t1, 0(s2)
  ADDW t4, s6, t1
  SW t4, 424(sp)
  LW t4, 424(sp)
  SW t4, 32(sp)
  ADDIW s6, a4, 1
  LA t1, a21
  LW a4, 0(t1)
  ADDW t4, s6, a4
  SW t4, 480(sp)
  LW t4, 480(sp)
  SW t4, 88(sp)
  ADDIW s6, a5, 2
  LA a4, a22
  LW a5, 0(a4)
  ADDW t4, s6, a5
  SW t4, 472(sp)
  LW t4, 472(sp)
  SW t4, 80(sp)
  ADDIW s6, a6, 3
  LA a5, a23
  LW a6, 0(a5)
  ADDW t4, s6, a6
  SW t4, 464(sp)
  LW t4, 464(sp)
  SW t4, 72(sp)
  ADDIW s6, a7, 4
  LA a6, a24
  LW a7, 0(a6)
  ADDW t4, s6, a7
  SW t4, 456(sp)
  LW t4, 456(sp)
  SW t4, 64(sp)
  ADDIW s6, t2, 1
  LA t2, a17
  LW a7, 0(t2)
  ADDW t2, s6, a7
  SW t2, 120(sp)
  ADDIW s6, a1, 2
  LA a1, a18
  LW a7, 0(a1)
  ADDW a1, s6, a7
  SW a1, 112(sp)
  ADDIW s6, a2, 3
  LA a2, a19
  LW a7, 0(a2)
  ADDW a2, s6, a7
  SW a2, 104(sp)
  ADDIW s6, a3, 4
  LA a3, a20
  LW a7, 0(a3)
  ADDW t4, s6, a7
  SW t4, 488(sp)
  LW t4, 488(sp)
  SW t4, 96(sp)
  ADDIW s6, s10, 1
  LA s10, a13
  LW a7, 0(s10)
  ADDW s10, s6, a7
  SW s10, 152(sp)
  ADDIW s6, s11, 2
  LA s11, a14
  LW a7, 0(s11)
  ADDW s11, s6, a7
  SW s11, 144(sp)
  ADDIW s6, t0, 3
  LA t0, a15
  LW a7, 0(t0)
  ADDW t0, s6, a7
  SW t0, 136(sp)
  LW t4, 384(sp)
  ADDIW s6, t4, 4
  LA a7, a16
  LW s7, 0(a7)
  ADDW a7, s6, s7
  SW a7, 128(sp)
  LW t4, 376(sp)
  ADDIW s6, t4, 1
  LA s7, a9
  LW s8, 0(s7)
  ADDW s7, s6, s8
  SW s7, 184(sp)
  LW t4, 368(sp)
  ADDIW s6, t4, 2
  LA s8, a10
  LW s9, 0(s8)
  ADDW s8, s6, s9
  SW s8, 176(sp)
  LW t4, 360(sp)
  ADDIW s6, t4, 3
  LA s9, a11
  LW s1, 0(s9)
  ADDW s9, s6, s1
  SW s9, 168(sp)
  LW t4, 352(sp)
  ADDIW s1, t4, 4
  LA s6, a12
  LW s2, 0(s6)
  ADDW s6, s1, s2
  SW s6, 160(sp)
  LW t4, 344(sp)
  ADDIW s1, t4, 1
  LA s2, a5
  LW s3, 0(s2)
  ADDW s2, s1, s3
  SW s2, 216(sp)
  LW t4, 336(sp)
  ADDIW s1, t4, 2
  LA s3, a6
  LW s5, 0(s3)
  ADDW s3, s1, s5
  SW s3, 208(sp)
  LW t4, 328(sp)
  ADDIW s1, t4, 3
  LA s5, a7
  LW s4, 0(s5)
  ADDW s5, s1, s4
  SW s5, 200(sp)
  LW t4, 320(sp)
  ADDIW s1, t4, 4
  LA s4, a8
  LW a6, 0(s4)
  ADDW s4, s1, a6
  SW s4, 192(sp)
  LW s1, 280(sp)
  ADDIW a6, s1, 1
  LA s1, a1
  LW a5, 0(s1)
  ADDW s1, a6, a5
  SW s1, 248(sp)
  LW s1, 272(sp)
  ADDIW a5, s1, 2
  LA s1, a2
  LW a6, 0(s1)
  ADDW s1, a5, a6
  SW s1, 240(sp)
  LW s1, 264(sp)
  ADDIW a5, s1, 3
  LA s1, a3
  LW a6, 0(s1)
  ADDW s1, a5, a6
  SW s1, 232(sp)
  LW t4, 312(sp)
  ADDIW s1, t4, 4
  LA a5, a4
  LW a6, 0(a5)
  ADDW a5, s1, a6
  SW a5, 224(sp)
  LW s1, 280(sp)
  ADDIW a5, s1, 1
  LA s1, a1
  LW a6, 0(s1)
  ADDW s1, a5, a6
  SW s1, 248(sp)
  LW a5, 272(sp)
  ADDIW a6, a5, 2
  LA a5, a2
  LW a4, 0(a5)
  ADDW a5, a6, a4
  SW a5, 240(sp)
  LW a4, 264(sp)
  ADDIW a6, a4, 3
  LA a4, a3
  LW t1, 0(a4)
  ADDW a4, a6, t1
  SW a4, 232(sp)
  LW t4, 312(sp)
  ADDIW t1, t4, 4
  LA a6, a4
  LW a3, 0(a6)
  ADDW a6, t1, a3
  SW a6, 224(sp)
  LW t1, 280(sp)
  ADDW a3, s0, t1
  LW s0, 272(sp)
  ADDW t1, a3, s0
  LW s0, 264(sp)
  ADDW a3, t1, s0
  LW t4, 312(sp)
  ADDW s0, a3, t4
  SUBW t1, s0, s1
  SUBW s0, t1, a5
  SUBW s1, s0, a4
  SUBW s0, s1, a6
  ADDW s1, s0, s2
  ADDW s0, s1, s3
  ADDW s1, s0, s5
  ADDW s0, s1, s4
  SUBW s1, s0, s7
  SUBW s0, s1, s8
  SUBW s1, s0, s9
  SUBW s0, s1, s6
  ADDW s1, s0, s10
  ADDW s0, s1, s11
  ADDW s1, s0, t0
  ADDW s0, s1, a7
  SUBW s1, s0, t2
  SUBW s0, s1, a1
  SUBW s1, s0, a2
  LW t4, 488(sp)
  SUBW s0, s1, t4
  LW t4, 480(sp)
  ADDW s1, s0, t4
  LW t4, 472(sp)
  ADDW s0, s1, t4
  LW t4, 464(sp)
  ADDW s1, s0, t4
  LW t4, 456(sp)
  ADDW s0, s1, t4
  LW t4, 448(sp)
  SUBW s1, s0, t4
  LW t4, 440(sp)
  SUBW s0, s1, t4
  LW t4, 432(sp)
  SUBW s1, s0, t4
  LW t4, 424(sp)
  SUBW s0, s1, t4
  LW t4, 416(sp)
  ADDW s1, s0, t4
  LW t4, 408(sp)
  ADDW s0, s1, t4
  LW t4, 400(sp)
  ADDW s1, s0, t4
  LW t4, 392(sp)
  ADDW s0, s1, t4
  LA s1, a1
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LA s0, a2
  LW s2, 0(s0)
  SUBW s0, s1, s2
  LA s1, a3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LA s0, a4
  LW s2, 0(s0)
  SUBW s0, s1, s2
  LA s1, a5
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LA s0, a6
  LW s2, 0(s0)
  SUBW s0, s1, s2
  LA s1, a7
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LA s0, a8
  LW s2, 0(s0)
  SUBW s0, s1, s2
  LA s1, a9
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LA s0, a10
  LW s2, 0(s0)
  SUBW s0, s1, s2
  LA s1, a11
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LA s0, a12
  LW s2, 0(s0)
  SUBW s0, s1, s2
  LA s1, a13
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LA s0, a14
  LW s2, 0(s0)
  SUBW s0, s1, s2
  LA s1, a15
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LA s0, a16
  LW s2, 0(s0)
  SUBW s0, s1, s2
  LA s1, a17
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LA s0, a18
  LW s2, 0(s0)
  SUBW s0, s1, s2
  LA s1, a19
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LA s0, a20
  LW s2, 0(s0)
  SUBW s0, s1, s2
  LA s1, a21
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LA s0, a22
  LW s2, 0(s0)
  SUBW s0, s1, s2
  LA s1, a23
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LA s0, a24
  LW s2, 0(s0)
  SUBW s0, s1, s2
  LA s1, a25
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LA s0, a26
  LW s2, 0(s0)
  SUBW s0, s1, s2
  LA s1, a27
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LA s0, a28
  LW s2, 0(s0)
  SUBW s0, s1, s2
  LA s1, a29
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LA s0, a30
  LW s2, 0(s0)
  SUBW s0, s1, s2
  LA s1, a31
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LA s0, a32
  LW s2, 0(s0)
  SUBW s0, s1, s2
  ADD a0, s0, zero
  LD ra, 496(sp)
  LD s11, 504(sp)
  LD s10, 512(sp)
  LD s9, 520(sp)
  LD s0, 528(sp)
  LD s5, 536(sp)
  LD s7, 544(sp)
  LD s1, 552(sp)
  LD s6, 560(sp)
  LD s8, 568(sp)
  LD s2, 576(sp)
  LD s3, 584(sp)
  LD s4, 592(sp)
  ADDI sp, sp, 608
  JALR zero, 0(ra)
