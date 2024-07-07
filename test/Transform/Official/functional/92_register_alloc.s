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
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  CALL getint
  ADD s0, a0, zero
  ADDIW s1, s0, 18
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL func
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
func:
  ADDI sp, sp, -336
  SD ra, 232(sp)
  SD s6, 240(sp)
  SD s2, 248(sp)
  SD s3, 256(sp)
  SD s4, 264(sp)
  SD s5, 272(sp)
  SD s0, 280(sp)
  SD s7, 288(sp)
  SD s10, 296(sp)
  SD s1, 304(sp)
  SD s8, 312(sp)
  SD s9, 320(sp)
  SD s11, 328(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  CALL getint
  ADD t4, a0, zero
  SW t4, 24(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 16(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 8(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 0(sp)
  LW t3, 24(sp)
  ADDIW t4, t3, 1
  SW t4, 56(sp)
  LA s7, a1
  LW s8, 0(s7)
  LW t4, 56(sp)
  ADDW s7, t4, s8
  LW t3, 16(sp)
  ADDIW t4, t3, 2
  SW t4, 48(sp)
  LA s9, a2
  LW s10, 0(s9)
  LW t4, 48(sp)
  ADDW s9, t4, s10
  LW t3, 8(sp)
  ADDIW t4, t3, 3
  SW t4, 40(sp)
  LA s11, a3
  LW t0, 0(s11)
  LW t4, 40(sp)
  ADDW s11, t4, t0
  LW t3, 0(sp)
  ADDIW t4, t3, 4
  SW t4, 32(sp)
  LA t1, a4
  LW t2, 0(t1)
  LW t4, 32(sp)
  ADDW t1, t4, t2
  ADDIW t4, s7, 1
  SW t4, 88(sp)
  LA s7, a5
  LW a1, 0(s7)
  LW t4, 88(sp)
  ADDW s7, t4, a1
  ADDIW t4, s9, 2
  SW t4, 80(sp)
  LA s9, a6
  LW a2, 0(s9)
  LW t4, 80(sp)
  ADDW s9, t4, a2
  ADDIW t4, s11, 3
  SW t4, 72(sp)
  LA s11, a7
  LW a3, 0(s11)
  LW t4, 72(sp)
  ADDW s11, t4, a3
  ADDIW t4, t1, 4
  SW t4, 64(sp)
  LA t1, a8
  LW a4, 0(t1)
  LW t4, 64(sp)
  ADDW t1, t4, a4
  ADDIW t4, s7, 1
  SW t4, 120(sp)
  LA s7, a9
  LW a5, 0(s7)
  LW t4, 120(sp)
  ADDW s7, t4, a5
  ADDIW t4, s9, 2
  SW t4, 112(sp)
  LA s9, a10
  LW a6, 0(s9)
  LW t4, 112(sp)
  ADDW s9, t4, a6
  ADDIW t4, s11, 3
  SW t4, 104(sp)
  LA s11, a11
  LW a7, 0(s11)
  LW t4, 104(sp)
  ADDW s11, t4, a7
  ADDIW t4, t1, 4
  SW t4, 96(sp)
  LA t1, a12
  LW s5, 0(t1)
  LW t4, 96(sp)
  ADDW t1, t4, s5
  ADDIW s5, s7, 1
  LA s7, a13
  LW s4, 0(s7)
  ADDW s7, s5, s4
  ADDIW s4, s9, 2
  LA s9, a14
  LW s3, 0(s9)
  ADDW s9, s4, s3
  ADDIW s3, s11, 3
  LA s11, a15
  LW s2, 0(s11)
  ADDW s11, s3, s2
  ADDIW t4, t1, 4
  SW t4, 128(sp)
  LA t1, a16
  LW t0, 0(t1)
  LW t4, 128(sp)
  ADDW t1, t4, t0
  ADDIW t0, s7, 1
  LA s7, a17
  LW s10, 0(s7)
  ADDW s7, t0, s10
  ADDIW s10, s9, 2
  LA s9, a18
  LW s8, 0(s9)
  ADDW s9, s10, s8
  ADDIW s8, s11, 3
  LA s11, a19
  LW s6, 0(s11)
  ADDW s11, s8, s6
  ADDIW s6, t1, 4
  LA t1, a20
  LW a3, 0(t1)
  ADDW t1, s6, a3
  ADDIW a3, s7, 1
  LA s7, a21
  LW a2, 0(s7)
  ADDW s7, a3, a2
  ADDIW a2, s9, 2
  LA s9, a22
  LW a1, 0(s9)
  ADDW s9, a2, a1
  ADDIW a1, s11, 3
  LA s11, a23
  LW t2, 0(s11)
  ADDW s11, a1, t2
  ADDIW t2, t1, 4
  LA t1, a24
  LW a7, 0(t1)
  ADDW t1, t2, a7
  ADDIW a7, s7, 1
  LA s7, a25
  LW a6, 0(s7)
  ADDW s7, a7, a6
  ADDIW a6, s9, 2
  LA s9, a26
  LW a5, 0(s9)
  ADDW s9, a6, a5
  ADDIW a5, s11, 3
  LA s11, a27
  LW a4, 0(s11)
  ADDW s11, a5, a4
  ADDIW a4, t1, 4
  LA t1, a28
  LW s2, 0(t1)
  ADDW t1, a4, s2
  SUBW s2, s0, s1
  ADDIW s0, s2, 10
  ADDIW s1, s7, 1
  LA s2, a29
  LW s7, 0(s2)
  ADDW t4, s1, s7
  SW t4, 160(sp)
  ADDIW s1, s9, 2
  LA s7, a30
  LW s9, 0(s7)
  ADDW t4, s1, s9
  SW t4, 152(sp)
  ADDIW s1, s11, 3
  LA s9, a31
  LW s11, 0(s9)
  ADDW t4, s1, s11
  SW t4, 144(sp)
  ADDIW s1, t1, 4
  LA s11, a32
  LW t1, 0(s11)
  ADDW t4, s1, t1
  SW t4, 136(sp)
  LA s1, a25
  LW t1, 0(s1)
  ADDW t4, a7, t1
  SW t4, 192(sp)
  LA t1, a26
  LW a7, 0(t1)
  ADDW t4, a6, a7
  SW t4, 184(sp)
  LA a6, a27
  LW a7, 0(a6)
  ADDW t4, a5, a7
  SW t4, 176(sp)
  LA a5, a28
  LW a7, 0(a5)
  ADDW t4, a4, a7
  SW t4, 168(sp)
  LA a4, a21
  LW a7, 0(a4)
  ADDW t4, a3, a7
  SW t4, 224(sp)
  LA a3, a22
  LW a7, 0(a3)
  ADDW t4, a2, a7
  SW t4, 216(sp)
  LA a2, a23
  LW a7, 0(a2)
  ADDW t4, a1, a7
  SW t4, 208(sp)
  LA a1, a24
  LW a7, 0(a1)
  ADDW t4, t2, a7
  SW t4, 200(sp)
  LA t2, a17
  LW a7, 0(t2)
  ADDW t2, t0, a7
  LA t0, a18
  LW a7, 0(t0)
  ADDW t0, s10, a7
  LA s10, a19
  LW a7, 0(s10)
  ADDW s10, s8, a7
  LA s8, a20
  LW a7, 0(s8)
  ADDW s8, s6, a7
  LA s6, a13
  LW a7, 0(s6)
  ADDW s6, s5, a7
  LA s5, a14
  LW a7, 0(s5)
  ADDW s5, s4, a7
  LA s4, a15
  LW a7, 0(s4)
  ADDW s4, s3, a7
  LA s3, a16
  LW a7, 0(s3)
  LW t4, 128(sp)
  ADDW s3, t4, a7
  LA a7, a9
  LW s11, 0(a7)
  LW t4, 120(sp)
  ADDW a7, t4, s11
  LA s11, a10
  LW s9, 0(s11)
  LW t4, 112(sp)
  ADDW s11, t4, s9
  LA s9, a11
  LW s7, 0(s9)
  LW t4, 104(sp)
  ADDW s9, t4, s7
  LA s7, a12
  LW s2, 0(s7)
  LW t4, 96(sp)
  ADDW s7, t4, s2
  LA s2, a5
  LW a5, 0(s2)
  LW t4, 88(sp)
  ADDW s2, t4, a5
  LA a5, a6
  LW a6, 0(a5)
  LW t4, 80(sp)
  ADDW a5, t4, a6
  LA a6, a7
  LW t1, 0(a6)
  LW t4, 72(sp)
  ADDW a6, t4, t1
  LA t1, a8
  LW s1, 0(t1)
  LW t4, 64(sp)
  ADDW t1, t4, s1
  LA s1, a1
  LW a1, 0(s1)
  LW t4, 56(sp)
  ADDW s1, t4, a1
  LA a1, a2
  LW a2, 0(a1)
  LW t4, 48(sp)
  ADDW a1, t4, a2
  LA a2, a3
  LW a3, 0(a2)
  LW t4, 40(sp)
  ADDW a2, t4, a3
  LA a3, a4
  LW a4, 0(a3)
  LW t4, 32(sp)
  ADDW a3, t4, a4
  LW t4, 24(sp)
  ADDW a4, s0, t4
  LW t4, 16(sp)
  ADDW s0, a4, t4
  LW t4, 8(sp)
  ADDW a4, s0, t4
  LW t4, 0(sp)
  ADDW s0, a4, t4
  SUBW a4, s0, s1
  SUBW s0, a4, a1
  SUBW s1, s0, a2
  SUBW s0, s1, a3
  ADDW s1, s0, s2
  ADDW s0, s1, a5
  ADDW s1, s0, a6
  ADDW s0, s1, t1
  SUBW s1, s0, a7
  SUBW s0, s1, s11
  SUBW s1, s0, s9
  SUBW s0, s1, s7
  ADDW s1, s0, s6
  ADDW s0, s1, s5
  ADDW s1, s0, s4
  ADDW s0, s1, s3
  SUBW s1, s0, t2
  SUBW s0, s1, t0
  SUBW s1, s0, s10
  SUBW s0, s1, s8
  LW t4, 224(sp)
  ADDW s1, s0, t4
  LW t4, 216(sp)
  ADDW s0, s1, t4
  LW t4, 208(sp)
  ADDW s1, s0, t4
  LW t4, 200(sp)
  ADDW s0, s1, t4
  LW t4, 192(sp)
  SUBW s1, s0, t4
  LW t4, 184(sp)
  SUBW s0, s1, t4
  LW t4, 176(sp)
  SUBW s1, s0, t4
  LW t4, 168(sp)
  SUBW s0, s1, t4
  LW t4, 160(sp)
  ADDW s1, s0, t4
  LW t4, 152(sp)
  ADDW s0, s1, t4
  LW t4, 144(sp)
  ADDW s1, s0, t4
  LW t4, 136(sp)
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
  LD ra, 232(sp)
  LD s6, 240(sp)
  LD s2, 248(sp)
  LD s3, 256(sp)
  LD s4, 264(sp)
  LD s5, 272(sp)
  LD s0, 280(sp)
  LD s7, 288(sp)
  LD s10, 296(sp)
  LD s1, 304(sp)
  LD s8, 312(sp)
  LD s9, 320(sp)
  LD s11, 328(sp)
  ADDI sp, sp, 336
  JALR zero, 0(ra)
