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
  ADDI sp, sp, -320
  SD ra, 216(sp)
  SD s2, 224(sp)
  SD s3, 232(sp)
  SD s4, 240(sp)
  SD s5, 248(sp)
  SD s0, 256(sp)
  SD s7, 264(sp)
  SD s10, 272(sp)
  SD s1, 280(sp)
  SD s6, 288(sp)
  SD s8, 296(sp)
  SD s9, 304(sp)
  SD s11, 312(sp)
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
  LW t4, 24(sp)
  ADDIW s6, t4, 1
  LA s7, a1
  LW s8, 0(s7)
  ADDW t4, s6, s8
  SW t4, 56(sp)
  LW t4, 16(sp)
  ADDIW s6, t4, 2
  LA s8, a2
  LW s9, 0(s8)
  ADDW t4, s6, s9
  SW t4, 48(sp)
  LW t4, 8(sp)
  ADDIW s6, t4, 3
  LA s9, a3
  LW s10, 0(s9)
  ADDW t4, s6, s10
  SW t4, 40(sp)
  LW t4, 0(sp)
  ADDIW s6, t4, 4
  LA s10, a4
  LW s11, 0(s10)
  ADDW t4, s6, s11
  SW t4, 32(sp)
  LW t4, 56(sp)
  ADDIW s6, t4, 1
  LA s11, a5
  LW t0, 0(s11)
  ADDW t4, s6, t0
  SW t4, 88(sp)
  LW t4, 48(sp)
  ADDIW s6, t4, 2
  LA t0, a6
  LW t1, 0(t0)
  ADDW t4, s6, t1
  SW t4, 80(sp)
  LW t4, 40(sp)
  ADDIW s6, t4, 3
  LA t1, a7
  LW t2, 0(t1)
  ADDW t4, s6, t2
  SW t4, 72(sp)
  LW t4, 32(sp)
  ADDIW s6, t4, 4
  LA t2, a8
  LW a1, 0(t2)
  ADDW t4, s6, a1
  SW t4, 64(sp)
  LW t4, 88(sp)
  ADDIW s6, t4, 1
  LA a1, a9
  LW a2, 0(a1)
  ADDW a1, s6, a2
  LW t4, 80(sp)
  ADDIW s6, t4, 2
  LA a2, a10
  LW a3, 0(a2)
  ADDW a2, s6, a3
  LW t4, 72(sp)
  ADDIW s6, t4, 3
  LA a3, a11
  LW a4, 0(a3)
  ADDW t4, s6, a4
  SW t4, 104(sp)
  LW t4, 64(sp)
  ADDIW s6, t4, 4
  LA a4, a12
  LW a5, 0(a4)
  ADDW t4, s6, a5
  SW t4, 96(sp)
  ADDIW s6, a1, 1
  LA a5, a13
  LW a6, 0(a5)
  ADDW a5, s6, a6
  ADDIW s6, a2, 2
  LA a6, a14
  LW a7, 0(a6)
  ADDW a6, s6, a7
  LW t4, 104(sp)
  ADDIW s6, t4, 3
  LA a7, a15
  LW s5, 0(a7)
  ADDW a7, s6, s5
  LW t4, 96(sp)
  ADDIW s5, t4, 4
  LA s6, a16
  LW s4, 0(s6)
  ADDW s6, s5, s4
  ADDIW s4, a5, 1
  LA s5, a17
  LW s3, 0(s5)
  ADDW s5, s4, s3
  ADDIW s3, a6, 2
  LA s4, a18
  LW s2, 0(s4)
  ADDW s4, s3, s2
  ADDIW s2, a7, 3
  LA s3, a19
  LW s10, 0(s3)
  ADDW s3, s2, s10
  ADDIW s2, s6, 4
  LA s10, a20
  LW s9, 0(s10)
  ADDW s10, s2, s9
  ADDIW s2, s5, 1
  LA s9, a21
  LW s8, 0(s9)
  ADDW s9, s2, s8
  ADDIW s2, s4, 2
  LA s8, a22
  LW s7, 0(s8)
  ADDW s8, s2, s7
  ADDIW s2, s3, 3
  LA s7, a23
  LW t2, 0(s7)
  ADDW s7, s2, t2
  ADDIW s2, s10, 4
  LA t2, a24
  LW t1, 0(t2)
  ADDW t2, s2, t1
  ADDIW s2, s9, 1
  LA t1, a25
  LW t0, 0(t1)
  ADDW t1, s2, t0
  ADDIW s2, s8, 2
  LA t0, a26
  LW s11, 0(t0)
  ADDW t0, s2, s11
  ADDIW s2, s7, 3
  LA s11, a27
  LW a4, 0(s11)
  ADDW s11, s2, a4
  ADDIW s2, t2, 4
  LA a4, a28
  LW a3, 0(a4)
  ADDW a4, s2, a3
  SUBW s2, s0, s1
  ADDIW s0, s2, 10
  ADDIW s1, t1, 1
  LA s2, a29
  LW t1, 0(s2)
  ADDW t4, s1, t1
  SW t4, 136(sp)
  ADDIW s1, t0, 2
  LA t0, a30
  LW t1, 0(t0)
  ADDW t4, s1, t1
  SW t4, 128(sp)
  ADDIW s1, s11, 3
  LA s11, a31
  LW t1, 0(s11)
  ADDW t4, s1, t1
  SW t4, 120(sp)
  ADDIW s1, a4, 4
  LA t1, a32
  LW a3, 0(t1)
  ADDW t4, s1, a3
  SW t4, 112(sp)
  ADDIW s1, s9, 1
  LA s9, a25
  LW a3, 0(s9)
  ADDW t4, s1, a3
  SW t4, 168(sp)
  ADDIW s1, s8, 2
  LA s8, a26
  LW a3, 0(s8)
  ADDW t4, s1, a3
  SW t4, 160(sp)
  ADDIW s1, s7, 3
  LA s7, a27
  LW a3, 0(s7)
  ADDW t4, s1, a3
  SW t4, 152(sp)
  ADDIW s1, t2, 4
  LA t2, a28
  LW a3, 0(t2)
  ADDW t4, s1, a3
  SW t4, 144(sp)
  ADDIW s1, s5, 1
  LA s5, a21
  LW a3, 0(s5)
  ADDW t4, s1, a3
  SW t4, 200(sp)
  ADDIW s1, s4, 2
  LA s4, a22
  LW a3, 0(s4)
  ADDW t4, s1, a3
  SW t4, 192(sp)
  ADDIW s1, s3, 3
  LA s3, a23
  LW a3, 0(s3)
  ADDW t4, s1, a3
  SW t4, 184(sp)
  ADDIW s1, s10, 4
  LA s10, a24
  LW a3, 0(s10)
  ADDW t4, s1, a3
  SW t4, 176(sp)
  ADDIW s1, a5, 1
  LA a3, a17
  LW a4, 0(a3)
  ADDW a3, s1, a4
  ADDIW s1, a6, 2
  LA a4, a18
  LW a5, 0(a4)
  ADDW a4, s1, a5
  ADDIW s1, a7, 3
  LA a5, a19
  LW a6, 0(a5)
  ADDW a5, s1, a6
  ADDIW s1, s6, 4
  LA s6, a20
  LW a6, 0(s6)
  ADDW t4, s1, a6
  SW t4, 208(sp)
  ADDIW s1, a1, 1
  LA a1, a13
  LW a6, 0(a1)
  ADDW a1, s1, a6
  ADDIW s1, a2, 2
  LA a2, a14
  LW a6, 0(a2)
  ADDW a2, s1, a6
  LW t4, 104(sp)
  ADDIW s1, t4, 3
  LA a6, a15
  LW a7, 0(a6)
  ADDW a6, s1, a7
  LW t4, 96(sp)
  ADDIW s1, t4, 4
  LA a7, a16
  LW t1, 0(a7)
  ADDW a7, s1, t1
  LW t4, 88(sp)
  ADDIW s1, t4, 1
  LA t1, a9
  LW s11, 0(t1)
  ADDW t1, s1, s11
  LW t4, 80(sp)
  ADDIW s1, t4, 2
  LA s11, a10
  LW t0, 0(s11)
  ADDW s11, s1, t0
  LW t4, 72(sp)
  ADDIW s1, t4, 3
  LA t0, a11
  LW s2, 0(t0)
  ADDW t0, s1, s2
  LW t4, 64(sp)
  ADDIW s1, t4, 4
  LA s2, a12
  LW t2, 0(s2)
  ADDW s2, s1, t2
  LW t4, 56(sp)
  ADDIW s1, t4, 1
  LA t2, a5
  LW s7, 0(t2)
  ADDW t2, s1, s7
  LW t4, 48(sp)
  ADDIW s1, t4, 2
  LA s7, a6
  LW s8, 0(s7)
  ADDW s7, s1, s8
  LW t4, 40(sp)
  ADDIW s1, t4, 3
  LA s8, a7
  LW s9, 0(s8)
  ADDW s8, s1, s9
  LW t4, 32(sp)
  ADDIW s1, t4, 4
  LA s9, a8
  LW s10, 0(s9)
  ADDW s9, s1, s10
  LW t4, 24(sp)
  ADDIW s1, t4, 1
  LA s10, a1
  LW s3, 0(s10)
  ADDW s10, s1, s3
  LW t4, 16(sp)
  ADDIW s1, t4, 2
  LA s3, a2
  LW s4, 0(s3)
  ADDW s3, s1, s4
  LW t4, 8(sp)
  ADDIW s1, t4, 3
  LA s4, a3
  LW s5, 0(s4)
  ADDW s4, s1, s5
  LW t4, 0(sp)
  ADDIW s1, t4, 4
  LA s5, a4
  LW s6, 0(s5)
  ADDW s5, s1, s6
  LW t4, 24(sp)
  ADDW s1, s0, t4
  LW t4, 16(sp)
  ADDW s0, s1, t4
  LW t4, 8(sp)
  ADDW s1, s0, t4
  LW t4, 0(sp)
  ADDW s0, s1, t4
  SUBW s1, s0, s10
  SUBW s0, s1, s3
  SUBW s1, s0, s4
  SUBW s0, s1, s5
  ADDW s1, s0, t2
  ADDW s0, s1, s7
  ADDW s1, s0, s8
  ADDW s0, s1, s9
  SUBW s1, s0, t1
  SUBW s0, s1, s11
  SUBW s1, s0, t0
  SUBW s0, s1, s2
  ADDW s1, s0, a1
  ADDW s0, s1, a2
  ADDW s1, s0, a6
  ADDW s0, s1, a7
  SUBW s1, s0, a3
  SUBW s0, s1, a4
  SUBW s1, s0, a5
  LW t4, 208(sp)
  SUBW s0, s1, t4
  LW t4, 200(sp)
  ADDW s1, s0, t4
  LW t4, 192(sp)
  ADDW s0, s1, t4
  LW t4, 184(sp)
  ADDW s1, s0, t4
  LW t4, 176(sp)
  ADDW s0, s1, t4
  LW t4, 168(sp)
  SUBW s1, s0, t4
  LW t4, 160(sp)
  SUBW s0, s1, t4
  LW t4, 152(sp)
  SUBW s1, s0, t4
  LW t4, 144(sp)
  SUBW s0, s1, t4
  LW t4, 136(sp)
  ADDW s1, s0, t4
  LW t4, 128(sp)
  ADDW s0, s1, t4
  LW t4, 120(sp)
  ADDW s1, s0, t4
  LW t4, 112(sp)
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
  LD ra, 216(sp)
  LD s2, 224(sp)
  LD s3, 232(sp)
  LD s4, 240(sp)
  LD s5, 248(sp)
  LD s0, 256(sp)
  LD s7, 264(sp)
  LD s10, 272(sp)
  LD s1, 280(sp)
  LD s6, 288(sp)
  LD s8, 296(sp)
  LD s9, 304(sp)
  LD s11, 312(sp)
  ADDI sp, sp, 320
  JALR zero, 0(ra)
