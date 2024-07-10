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
  ADDI sp, sp, -336
  SD ra, 232(sp)
  SD s0, 240(sp)
  SD s1, 248(sp)
  SD s2, 256(sp)
  SD s3, 264(sp)
  SD s4, 272(sp)
  SD s6, 280(sp)
  SD s8, 288(sp)
  SD s9, 296(sp)
  SD s10, 304(sp)
  SD s5, 312(sp)
  SD s7, 320(sp)
  SD s11, 328(sp)
  CALL getint
  ADD s0, a0, zero
  ADDIW s1, s0, 18
  CALL getint
  ADD s2, a0, zero
  CALL getint
  ADD s3, a0, zero
  CALL getint
  ADD s4, a0, zero
  CALL getint
  ADD s5, a0, zero
  ADDIW s6, s2, 1
  LA s7, a1
  LW t4, 0(s7)
  SW t4, 156(sp)
  LW t4, 156(sp)
  ADDW s7, s6, t4
  ADDIW s6, s3, 2
  LA s9, a2
  LW t4, 0(s9)
  SW t4, 148(sp)
  LW t4, 148(sp)
  ADDW s9, s6, t4
  ADDIW s6, s4, 3
  LA s11, a3
  LW t4, 0(s11)
  SW t4, 144(sp)
  LW t4, 144(sp)
  ADDW s11, s6, t4
  ADDIW s6, s5, 4
  LA s10, a4
  LW t4, 0(s10)
  SW t4, 152(sp)
  LW t4, 152(sp)
  ADDW s10, s6, t4
  ADDIW s6, s7, 1
  LA s8, a5
  LW t4, 0(s8)
  SW t4, 160(sp)
  LW t3, 160(sp)
  ADDW t4, s6, t3
  SW t4, 164(sp)
  ADDIW s6, s9, 2
  LA s8, a6
  LW t4, 0(s8)
  SW t4, 168(sp)
  LW t3, 168(sp)
  ADDW t4, s6, t3
  SW t4, 172(sp)
  ADDIW s6, s11, 3
  LA s8, a7
  LW t4, 0(s8)
  SW t4, 176(sp)
  LW t3, 176(sp)
  ADDW t4, s6, t3
  SW t4, 180(sp)
  ADDIW s6, s10, 4
  LA s8, a8
  LW t4, 0(s8)
  SW t4, 184(sp)
  LW t3, 184(sp)
  ADDW t4, s6, t3
  SW t4, 188(sp)
  LW t4, 164(sp)
  ADDIW s6, t4, 1
  LA s8, a9
  LW t4, 0(s8)
  SW t4, 192(sp)
  LW t3, 192(sp)
  ADDW t4, s6, t3
  SW t4, 196(sp)
  LW t4, 172(sp)
  ADDIW s6, t4, 2
  LA s8, a10
  LW t4, 0(s8)
  SW t4, 200(sp)
  LW t3, 200(sp)
  ADDW t4, s6, t3
  SW t4, 204(sp)
  LW t4, 180(sp)
  ADDIW s6, t4, 3
  LA s8, a11
  LW t4, 0(s8)
  SW t4, 208(sp)
  LW t3, 208(sp)
  ADDW t4, s6, t3
  SW t4, 212(sp)
  LW t4, 188(sp)
  ADDIW s6, t4, 4
  LA s8, a12
  LW t4, 0(s8)
  SW t4, 216(sp)
  LW t3, 216(sp)
  ADDW t4, s6, t3
  SW t4, 220(sp)
  LW t4, 196(sp)
  ADDIW s6, t4, 1
  LA s8, a13
  LW t4, 0(s8)
  SW t4, 224(sp)
  LW t3, 224(sp)
  ADDW t4, s6, t3
  SW t4, 228(sp)
  LW t4, 204(sp)
  ADDIW s6, t4, 2
  LA s8, a14
  LW t4, 0(s8)
  SW t4, 124(sp)
  LW t3, 124(sp)
  ADDW t4, s6, t3
  SW t4, 64(sp)
  LW t4, 212(sp)
  ADDIW s6, t4, 3
  LA s8, a15
  LW t4, 0(s8)
  SW t4, 4(sp)
  LW t3, 4(sp)
  ADDW t4, s6, t3
  SW t4, 8(sp)
  LW t4, 220(sp)
  ADDIW s6, t4, 4
  LA s8, a16
  LW t4, 0(s8)
  SW t4, 12(sp)
  LW t3, 12(sp)
  ADDW t4, s6, t3
  SW t4, 16(sp)
  LW t4, 228(sp)
  ADDIW s6, t4, 1
  LA s8, a17
  LW t4, 0(s8)
  SW t4, 20(sp)
  LW t3, 20(sp)
  ADDW t4, s6, t3
  SW t4, 24(sp)
  LW t4, 64(sp)
  ADDIW s6, t4, 2
  LA s8, a18
  LW t4, 0(s8)
  SW t4, 28(sp)
  LW t3, 28(sp)
  ADDW t4, s6, t3
  SW t4, 32(sp)
  LW t4, 8(sp)
  ADDIW s6, t4, 3
  LA s8, a19
  LW t4, 0(s8)
  SW t4, 36(sp)
  LW t3, 36(sp)
  ADDW t4, s6, t3
  SW t4, 40(sp)
  LW t4, 16(sp)
  ADDIW s6, t4, 4
  LA s8, a20
  LW t4, 0(s8)
  SW t4, 44(sp)
  LW t3, 44(sp)
  ADDW t4, s6, t3
  SW t4, 48(sp)
  LW t4, 24(sp)
  ADDIW s6, t4, 1
  LA s8, a21
  LW t4, 0(s8)
  SW t4, 52(sp)
  LW t3, 52(sp)
  ADDW t4, s6, t3
  SW t4, 56(sp)
  LW t4, 32(sp)
  ADDIW s6, t4, 2
  LA s8, a22
  LW t4, 0(s8)
  SW t4, 60(sp)
  LW t3, 60(sp)
  ADDW t4, s6, t3
  SW t4, 0(sp)
  LW t4, 40(sp)
  ADDIW s6, t4, 3
  LA s8, a23
  LW t4, 0(s8)
  SW t4, 68(sp)
  LW t3, 68(sp)
  ADDW t4, s6, t3
  SW t4, 72(sp)
  LW t4, 48(sp)
  ADDIW s6, t4, 4
  LA s8, a24
  LW t4, 0(s8)
  SW t4, 76(sp)
  LW t3, 76(sp)
  ADDW t4, s6, t3
  SW t4, 80(sp)
  LW t4, 56(sp)
  ADDIW s6, t4, 1
  LA s8, a25
  LW t4, 0(s8)
  SW t4, 84(sp)
  LW t3, 84(sp)
  ADDW t4, s6, t3
  SW t4, 88(sp)
  LW t4, 0(sp)
  ADDIW s6, t4, 2
  LA s8, a26
  LW t4, 0(s8)
  SW t4, 92(sp)
  LW t3, 92(sp)
  ADDW t4, s6, t3
  SW t4, 96(sp)
  LW t4, 72(sp)
  ADDIW s6, t4, 3
  LA s8, a27
  LW t4, 0(s8)
  SW t4, 100(sp)
  LW t3, 100(sp)
  ADDW t4, s6, t3
  SW t4, 104(sp)
  LW t4, 80(sp)
  ADDIW s6, t4, 4
  LA s8, a28
  LW t4, 0(s8)
  SW t4, 108(sp)
  LW t4, 108(sp)
  ADDW s8, s6, t4
  LA s6, a29
  LW t4, 0(s6)
  SW t4, 112(sp)
  LA s6, a30
  LW t4, 0(s6)
  SW t4, 116(sp)
  LA s6, a31
  LW t4, 0(s6)
  SW t4, 120(sp)
  LA s6, a32
  LW t4, 0(s6)
  SW t4, 140(sp)
  SUBW s6, s0, s1
  ADDIW s0, s6, 10
  LW t4, 88(sp)
  ADDIW s1, t4, 1
  LW t4, 112(sp)
  ADDW s6, s1, t4
  LW t4, 96(sp)
  ADDIW s1, t4, 2
  LW t3, 116(sp)
  ADDW t4, s1, t3
  SW t4, 136(sp)
  LW t4, 104(sp)
  ADDIW s1, t4, 3
  LW t3, 120(sp)
  ADDW t4, s1, t3
  SW t4, 132(sp)
  ADDIW s1, s8, 4
  LW t3, 140(sp)
  ADDW t4, s1, t3
  SW t4, 128(sp)
  ADDW s1, s0, s2
  ADDW s0, s1, s3
  ADDW s1, s0, s4
  ADDW s0, s1, s5
  SUBW s1, s0, s7
  SUBW s0, s1, s9
  SUBW s1, s0, s11
  SUBW s0, s1, s10
  LW t4, 164(sp)
  ADDW s1, s0, t4
  LW t4, 172(sp)
  ADDW s0, s1, t4
  LW t4, 180(sp)
  ADDW s1, s0, t4
  LW t4, 188(sp)
  ADDW s0, s1, t4
  LW t4, 196(sp)
  SUBW s1, s0, t4
  LW t4, 204(sp)
  SUBW s0, s1, t4
  LW t4, 212(sp)
  SUBW s1, s0, t4
  LW t4, 220(sp)
  SUBW s0, s1, t4
  LW t4, 228(sp)
  ADDW s1, s0, t4
  LW t4, 64(sp)
  ADDW s0, s1, t4
  LW t4, 8(sp)
  ADDW s1, s0, t4
  LW t4, 16(sp)
  ADDW s0, s1, t4
  LW t4, 24(sp)
  SUBW s1, s0, t4
  LW t4, 32(sp)
  SUBW s0, s1, t4
  LW t4, 40(sp)
  SUBW s1, s0, t4
  LW t4, 48(sp)
  SUBW s0, s1, t4
  LW t4, 56(sp)
  ADDW s1, s0, t4
  LW t4, 0(sp)
  ADDW s0, s1, t4
  LW t4, 72(sp)
  ADDW s1, s0, t4
  LW t4, 80(sp)
  ADDW s0, s1, t4
  LW t4, 88(sp)
  SUBW s1, s0, t4
  LW t4, 96(sp)
  SUBW s0, s1, t4
  LW t4, 104(sp)
  SUBW s1, s0, t4
  SUBW s0, s1, s8
  ADDW s1, s0, s6
  LW t4, 136(sp)
  ADDW s0, s1, t4
  LW t4, 132(sp)
  ADDW s1, s0, t4
  LW t4, 128(sp)
  ADDW s0, s1, t4
  LW t4, 156(sp)
  ADDW s1, s0, t4
  LW t4, 148(sp)
  SUBW s0, s1, t4
  LW t4, 144(sp)
  ADDW s1, s0, t4
  LW t4, 152(sp)
  SUBW s0, s1, t4
  LW t4, 160(sp)
  ADDW s1, s0, t4
  LW t4, 168(sp)
  SUBW s0, s1, t4
  LW t4, 176(sp)
  ADDW s1, s0, t4
  LW t4, 184(sp)
  SUBW s0, s1, t4
  LW t4, 192(sp)
  ADDW s1, s0, t4
  LW t4, 200(sp)
  SUBW s0, s1, t4
  LW t4, 208(sp)
  ADDW s1, s0, t4
  LW t4, 216(sp)
  SUBW s0, s1, t4
  LW t4, 224(sp)
  ADDW s1, s0, t4
  LW t4, 124(sp)
  SUBW s0, s1, t4
  LW t4, 4(sp)
  ADDW s1, s0, t4
  LW t4, 12(sp)
  SUBW s0, s1, t4
  LW t4, 20(sp)
  ADDW s1, s0, t4
  LW t4, 28(sp)
  SUBW s0, s1, t4
  LW t4, 36(sp)
  ADDW s1, s0, t4
  LW t4, 44(sp)
  SUBW s0, s1, t4
  LW t4, 52(sp)
  ADDW s1, s0, t4
  LW t4, 60(sp)
  SUBW s0, s1, t4
  LW t4, 68(sp)
  ADDW s1, s0, t4
  LW t4, 76(sp)
  SUBW s0, s1, t4
  LW t4, 84(sp)
  ADDW s1, s0, t4
  LW t4, 92(sp)
  SUBW s0, s1, t4
  LW t4, 100(sp)
  ADDW s1, s0, t4
  LW t4, 108(sp)
  SUBW s0, s1, t4
  LW t4, 112(sp)
  ADDW s1, s0, t4
  LW t4, 116(sp)
  SUBW s0, s1, t4
  LW t4, 120(sp)
  ADDW s1, s0, t4
  LW t4, 140(sp)
  SUBW s0, s1, t4
  ADD a0, s0, zero
  CALL putint
  ADD a0, s0, zero
  LD ra, 232(sp)
  LD s0, 240(sp)
  LD s1, 248(sp)
  LD s2, 256(sp)
  LD s3, 264(sp)
  LD s4, 272(sp)
  LD s6, 280(sp)
  LD s8, 288(sp)
  LD s9, 296(sp)
  LD s10, 304(sp)
  LD s5, 312(sp)
  LD s7, 320(sp)
  LD s11, 328(sp)
  ADDI sp, sp, 336
  JALR zero, 0(ra)
func:
  ADDI sp, sp, -304
  SD ra, 192(sp)
  SD s0, 200(sp)
  SD s1, 208(sp)
  SD s2, 216(sp)
  SD s3, 224(sp)
  SD s4, 232(sp)
  SD s5, 240(sp)
  SD s6, 248(sp)
  SD s7, 256(sp)
  SD s8, 264(sp)
  SD s9, 272(sp)
  SD s10, 280(sp)
  SD s11, 288(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  CALL getint
  ADD s2, a0, zero
  CALL getint
  ADD s3, a0, zero
  CALL getint
  ADD s4, a0, zero
  CALL getint
  ADD s5, a0, zero
  ADDIW s6, s2, 1
  LA s7, a1
  LW t4, 0(s7)
  SW t4, 168(sp)
  LW t4, 168(sp)
  ADDW s7, s6, t4
  ADDIW s6, s3, 2
  LA s9, a2
  LW t4, 0(s9)
  SW t4, 160(sp)
  LW t4, 160(sp)
  ADDW s9, s6, t4
  ADDIW s6, s4, 3
  LA s11, a3
  LW t4, 0(s11)
  SW t4, 152(sp)
  LW t4, 152(sp)
  ADDW s11, s6, t4
  ADDIW s6, s5, 4
  LA t1, a4
  LW t4, 0(t1)
  SW t4, 144(sp)
  LW t4, 144(sp)
  ADDW t1, s6, t4
  ADDIW s6, s7, 1
  LA a1, a5
  LW t4, 0(a1)
  SW t4, 136(sp)
  LW t4, 136(sp)
  ADDW a1, s6, t4
  ADDIW s6, s9, 2
  LA a3, a6
  LW t4, 0(a3)
  SW t4, 128(sp)
  LW t4, 128(sp)
  ADDW a3, s6, t4
  ADDIW s6, s11, 3
  LA a5, a7
  LW t4, 0(a5)
  SW t4, 120(sp)
  LW t4, 120(sp)
  ADDW a5, s6, t4
  ADDIW s6, t1, 4
  LA a7, a8
  LW t4, 0(a7)
  SW t4, 112(sp)
  LW t4, 112(sp)
  ADDW a7, s6, t4
  ADDIW s6, a1, 1
  LA t6, a9
  LW t4, 0(t6)
  SW t4, 116(sp)
  LW t4, 116(sp)
  ADDW t6, s6, t4
  ADDIW s6, a3, 2
  LA a6, a10
  LW t4, 0(a6)
  SW t4, 124(sp)
  LW t4, 124(sp)
  ADDW a6, s6, t4
  ADDIW s6, a5, 3
  LA a4, a11
  LW t4, 0(a4)
  SW t4, 132(sp)
  LW t4, 132(sp)
  ADDW a4, s6, t4
  ADDIW s6, a7, 4
  LA a2, a12
  LW t4, 0(a2)
  SW t4, 140(sp)
  LW t4, 140(sp)
  ADDW a2, s6, t4
  ADDIW s6, t6, 1
  LA t2, a13
  LW t4, 0(t2)
  SW t4, 148(sp)
  LW t4, 148(sp)
  ADDW t2, s6, t4
  ADDIW s6, a6, 2
  LA t0, a14
  LW t4, 0(t0)
  SW t4, 156(sp)
  LW t4, 156(sp)
  ADDW t0, s6, t4
  ADDIW s6, a4, 3
  LA s10, a15
  LW t4, 0(s10)
  SW t4, 164(sp)
  LW t4, 164(sp)
  ADDW s10, s6, t4
  ADDIW s6, a2, 4
  LA s8, a16
  LW t4, 0(s8)
  SW t4, 172(sp)
  LW t3, 172(sp)
  ADDW t4, s6, t3
  SW t4, 176(sp)
  ADDIW s6, t2, 1
  LA s8, a17
  LW t4, 0(s8)
  SW t4, 180(sp)
  LW t3, 180(sp)
  ADDW t4, s6, t3
  SW t4, 184(sp)
  ADDIW s6, t0, 2
  LA s8, a18
  LW t4, 0(s8)
  SW t4, 100(sp)
  LW t3, 100(sp)
  ADDW t4, s6, t3
  SW t4, 52(sp)
  ADDIW s6, s10, 3
  LA s8, a19
  LW t4, 0(s8)
  SW t4, 4(sp)
  LW t3, 4(sp)
  ADDW t4, s6, t3
  SW t4, 8(sp)
  LW t4, 176(sp)
  ADDIW s6, t4, 4
  LA s8, a20
  LW t4, 0(s8)
  SW t4, 12(sp)
  LW t3, 12(sp)
  ADDW t4, s6, t3
  SW t4, 16(sp)
  LW t4, 184(sp)
  ADDIW s6, t4, 1
  LA s8, a21
  LW t4, 0(s8)
  SW t4, 20(sp)
  LW t3, 20(sp)
  ADDW t4, s6, t3
  SW t4, 24(sp)
  LW t4, 52(sp)
  ADDIW s6, t4, 2
  LA s8, a22
  LW t4, 0(s8)
  SW t4, 28(sp)
  LW t3, 28(sp)
  ADDW t4, s6, t3
  SW t4, 32(sp)
  LW t4, 8(sp)
  ADDIW s6, t4, 3
  LA s8, a23
  LW t4, 0(s8)
  SW t4, 36(sp)
  LW t3, 36(sp)
  ADDW t4, s6, t3
  SW t4, 40(sp)
  LW t4, 16(sp)
  ADDIW s6, t4, 4
  LA s8, a24
  LW t4, 0(s8)
  SW t4, 44(sp)
  LW t3, 44(sp)
  ADDW t4, s6, t3
  SW t4, 48(sp)
  LW t4, 24(sp)
  ADDIW s6, t4, 1
  LA s8, a25
  LW t4, 0(s8)
  SW t4, 0(sp)
  LW t3, 0(sp)
  ADDW t4, s6, t3
  SW t4, 56(sp)
  LW t4, 32(sp)
  ADDIW s6, t4, 2
  LA s8, a26
  LW t4, 0(s8)
  SW t4, 60(sp)
  LW t3, 60(sp)
  ADDW t4, s6, t3
  SW t4, 64(sp)
  LW t4, 40(sp)
  ADDIW s6, t4, 3
  LA s8, a27
  LW t4, 0(s8)
  SW t4, 68(sp)
  LW t3, 68(sp)
  ADDW t4, s6, t3
  SW t4, 72(sp)
  LW t4, 48(sp)
  ADDIW s6, t4, 4
  LA s8, a28
  LW t4, 0(s8)
  SW t4, 76(sp)
  LW t4, 76(sp)
  ADDW s8, s6, t4
  LA s6, a29
  LW t4, 0(s6)
  SW t4, 80(sp)
  LA s6, a30
  LW t4, 0(s6)
  SW t4, 84(sp)
  LA s6, a31
  LW t4, 0(s6)
  SW t4, 88(sp)
  LA s6, a32
  LW t4, 0(s6)
  SW t4, 92(sp)
  SUBW s6, s0, s1
  ADDIW s0, s6, 10
  LW t4, 56(sp)
  ADDIW s1, t4, 1
  LW t4, 80(sp)
  ADDW s6, s1, t4
  LW t4, 64(sp)
  ADDIW s1, t4, 2
  LW t3, 84(sp)
  ADDW t4, s1, t3
  SW t4, 96(sp)
  LW t4, 72(sp)
  ADDIW s1, t4, 3
  LW t3, 88(sp)
  ADDW t4, s1, t3
  SW t4, 108(sp)
  ADDIW s1, s8, 4
  LW t3, 92(sp)
  ADDW t4, s1, t3
  SW t4, 104(sp)
  ADDW s1, s0, s2
  ADDW s0, s1, s3
  ADDW s1, s0, s4
  ADDW s0, s1, s5
  SUBW s1, s0, s7
  SUBW s0, s1, s9
  SUBW s1, s0, s11
  SUBW s0, s1, t1
  ADDW s1, s0, a1
  ADDW s0, s1, a3
  ADDW s1, s0, a5
  ADDW s0, s1, a7
  SUBW s1, s0, t6
  SUBW s0, s1, a6
  SUBW s1, s0, a4
  SUBW s0, s1, a2
  ADDW s1, s0, t2
  ADDW s0, s1, t0
  ADDW s1, s0, s10
  LW t4, 176(sp)
  ADDW s0, s1, t4
  LW t4, 184(sp)
  SUBW s1, s0, t4
  LW t4, 52(sp)
  SUBW s0, s1, t4
  LW t4, 8(sp)
  SUBW s1, s0, t4
  LW t4, 16(sp)
  SUBW s0, s1, t4
  LW t4, 24(sp)
  ADDW s1, s0, t4
  LW t4, 32(sp)
  ADDW s0, s1, t4
  LW t4, 40(sp)
  ADDW s1, s0, t4
  LW t4, 48(sp)
  ADDW s0, s1, t4
  LW t4, 56(sp)
  SUBW s1, s0, t4
  LW t4, 64(sp)
  SUBW s0, s1, t4
  LW t4, 72(sp)
  SUBW s1, s0, t4
  SUBW s0, s1, s8
  ADDW s1, s0, s6
  LW t4, 96(sp)
  ADDW s0, s1, t4
  LW t4, 108(sp)
  ADDW s1, s0, t4
  LW t4, 104(sp)
  ADDW s0, s1, t4
  LW t4, 168(sp)
  ADDW s1, s0, t4
  LW t4, 160(sp)
  SUBW s0, s1, t4
  LW t4, 152(sp)
  ADDW s1, s0, t4
  LW t4, 144(sp)
  SUBW s0, s1, t4
  LW t4, 136(sp)
  ADDW s1, s0, t4
  LW t4, 128(sp)
  SUBW s0, s1, t4
  LW t4, 120(sp)
  ADDW s1, s0, t4
  LW t4, 112(sp)
  SUBW s0, s1, t4
  LW t4, 116(sp)
  ADDW s1, s0, t4
  LW t4, 124(sp)
  SUBW s0, s1, t4
  LW t4, 132(sp)
  ADDW s1, s0, t4
  LW t4, 140(sp)
  SUBW s0, s1, t4
  LW t4, 148(sp)
  ADDW s1, s0, t4
  LW t4, 156(sp)
  SUBW s0, s1, t4
  LW t4, 164(sp)
  ADDW s1, s0, t4
  LW t4, 172(sp)
  SUBW s0, s1, t4
  LW t4, 180(sp)
  ADDW s1, s0, t4
  LW t4, 100(sp)
  SUBW s0, s1, t4
  LW t4, 4(sp)
  ADDW s1, s0, t4
  LW t4, 12(sp)
  SUBW s0, s1, t4
  LW t4, 20(sp)
  ADDW s1, s0, t4
  LW t4, 28(sp)
  SUBW s0, s1, t4
  LW t4, 36(sp)
  ADDW s1, s0, t4
  LW t4, 44(sp)
  SUBW s0, s1, t4
  LW t4, 0(sp)
  ADDW s1, s0, t4
  LW t4, 60(sp)
  SUBW s0, s1, t4
  LW t4, 68(sp)
  ADDW s1, s0, t4
  LW t4, 76(sp)
  SUBW s0, s1, t4
  LW t4, 80(sp)
  ADDW s1, s0, t4
  LW t4, 84(sp)
  SUBW s0, s1, t4
  LW t4, 88(sp)
  ADDW s1, s0, t4
  LW t4, 92(sp)
  SUBW s0, s1, t4
  ADD a0, s0, zero
  LD ra, 192(sp)
  LD s0, 200(sp)
  LD s1, 208(sp)
  LD s2, 216(sp)
  LD s3, 224(sp)
  LD s4, 232(sp)
  LD s5, 240(sp)
  LD s6, 248(sp)
  LD s7, 256(sp)
  LD s8, 264(sp)
  LD s9, 272(sp)
  LD s10, 280(sp)
  LD s11, 288(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
