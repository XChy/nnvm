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
  SD s5, 280(sp)
  SD s6, 288(sp)
  SD s7, 296(sp)
  SD s8, 304(sp)
  SD s9, 312(sp)
  SD s10, 320(sp)
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
  SW t4, 144(sp)
  LW t4, 144(sp)
  ADDW s6, s6, t4
  ADDIW s8, s3, 2
  LA s9, a2
  LW t4, 0(s9)
  SW t4, 136(sp)
  LW t4, 136(sp)
  ADDW s8, s8, t4
  ADDIW s10, s4, 3
  LA s11, a3
  LW t4, 0(s11)
  SW t4, 132(sp)
  LW t4, 132(sp)
  ADDW s10, s10, t4
  ADDIW s11, s5, 4
  LA s9, a4
  LW t4, 0(s9)
  SW t4, 140(sp)
  LW t4, 140(sp)
  ADDW s11, s11, t4
  ADDIW s9, s6, 1
  LA s7, a5
  LW t4, 0(s7)
  SW t4, 148(sp)
  LW t3, 148(sp)
  ADDW t4, s9, t3
  SW t4, 152(sp)
  ADDIW s7, s8, 2
  LA s9, a6
  LW t4, 0(s9)
  SW t4, 156(sp)
  LW t3, 156(sp)
  ADDW t4, s7, t3
  SW t4, 160(sp)
  ADDIW s9, s10, 3
  LA s7, a7
  LW t4, 0(s7)
  SW t4, 164(sp)
  LW t3, 164(sp)
  ADDW t4, s9, t3
  SW t4, 168(sp)
  ADDIW s7, s11, 4
  LA s9, a8
  LW t4, 0(s9)
  SW t4, 172(sp)
  LW t3, 172(sp)
  ADDW t4, s7, t3
  SW t4, 176(sp)
  LW t4, 152(sp)
  ADDIW s9, t4, 1
  LA s7, a9
  LW t4, 0(s7)
  SW t4, 224(sp)
  LW t3, 224(sp)
  ADDW t4, s9, t3
  SW t4, 180(sp)
  LW t4, 160(sp)
  ADDIW s7, t4, 2
  LA s9, a10
  LW t4, 0(s9)
  SW t4, 220(sp)
  LW t3, 220(sp)
  ADDW t4, s7, t3
  SW t4, 216(sp)
  LW t4, 168(sp)
  ADDIW s9, t4, 3
  LA s7, a11
  LW t4, 0(s7)
  SW t4, 212(sp)
  LW t3, 212(sp)
  ADDW t4, s9, t3
  SW t4, 208(sp)
  LW t4, 176(sp)
  ADDIW s7, t4, 4
  LA s9, a12
  LW t4, 0(s9)
  SW t4, 204(sp)
  LW t3, 204(sp)
  ADDW t4, s7, t3
  SW t4, 200(sp)
  LW t4, 180(sp)
  ADDIW s9, t4, 1
  LA s7, a13
  LW t4, 0(s7)
  SW t4, 196(sp)
  LW t3, 196(sp)
  ADDW t4, s9, t3
  SW t4, 192(sp)
  LW t4, 216(sp)
  ADDIW s7, t4, 2
  LA s9, a14
  LW t4, 0(s9)
  SW t4, 188(sp)
  LW t3, 188(sp)
  ADDW t4, s7, t3
  SW t4, 184(sp)
  LW t4, 208(sp)
  ADDIW s9, t4, 3
  LA s7, a15
  LW t4, 0(s7)
  SW t4, 128(sp)
  LW t3, 128(sp)
  ADDW t4, s9, t3
  SW t4, 64(sp)
  LW t4, 200(sp)
  ADDIW s7, t4, 4
  LA s9, a16
  LW t4, 0(s9)
  SW t4, 4(sp)
  LW t3, 4(sp)
  ADDW t4, s7, t3
  SW t4, 8(sp)
  LW t4, 192(sp)
  ADDIW s9, t4, 1
  LA s7, a17
  LW t4, 0(s7)
  SW t4, 12(sp)
  LW t3, 12(sp)
  ADDW t4, s9, t3
  SW t4, 16(sp)
  LW t4, 184(sp)
  ADDIW s7, t4, 2
  LA s9, a18
  LW t4, 0(s9)
  SW t4, 20(sp)
  LW t3, 20(sp)
  ADDW t4, s7, t3
  SW t4, 24(sp)
  LW t4, 64(sp)
  ADDIW s9, t4, 3
  LA s7, a19
  LW t4, 0(s7)
  SW t4, 28(sp)
  LW t3, 28(sp)
  ADDW t4, s9, t3
  SW t4, 32(sp)
  LW t4, 8(sp)
  ADDIW s7, t4, 4
  LA s9, a20
  LW t4, 0(s9)
  SW t4, 36(sp)
  LW t3, 36(sp)
  ADDW t4, s7, t3
  SW t4, 40(sp)
  LW t4, 16(sp)
  ADDIW s9, t4, 1
  LA s7, a21
  LW t4, 0(s7)
  SW t4, 44(sp)
  LW t3, 44(sp)
  ADDW t4, s9, t3
  SW t4, 48(sp)
  LW t4, 24(sp)
  ADDIW s7, t4, 2
  LA s9, a22
  LW t4, 0(s9)
  SW t4, 52(sp)
  LW t3, 52(sp)
  ADDW t4, s7, t3
  SW t4, 56(sp)
  LW t4, 32(sp)
  ADDIW s9, t4, 3
  LA s7, a23
  LW t4, 0(s7)
  SW t4, 60(sp)
  LW t3, 60(sp)
  ADDW t4, s9, t3
  SW t4, 0(sp)
  LW t4, 40(sp)
  ADDIW s7, t4, 4
  LA s9, a24
  LW t4, 0(s9)
  SW t4, 68(sp)
  LW t3, 68(sp)
  ADDW t4, s7, t3
  SW t4, 72(sp)
  LW t4, 48(sp)
  ADDIW s9, t4, 1
  LA s7, a25
  LW t4, 0(s7)
  SW t4, 76(sp)
  LW t3, 76(sp)
  ADDW t4, s9, t3
  SW t4, 80(sp)
  LW t4, 56(sp)
  ADDIW s7, t4, 2
  LA s9, a26
  LW t4, 0(s9)
  SW t4, 84(sp)
  LW t3, 84(sp)
  ADDW t4, s7, t3
  SW t4, 88(sp)
  LW t4, 0(sp)
  ADDIW s9, t4, 3
  LA s7, a27
  LW t4, 0(s7)
  SW t4, 92(sp)
  LW t3, 92(sp)
  ADDW t4, s9, t3
  SW t4, 96(sp)
  LW t4, 72(sp)
  ADDIW s7, t4, 4
  LA s9, a28
  LW t4, 0(s9)
  SW t4, 100(sp)
  LW t4, 100(sp)
  ADDW s7, s7, t4
  SUBW s0, s0, s1
  ADDIW s0, s0, 10
  LW t4, 80(sp)
  ADDIW s1, t4, 1
  LA s9, a29
  LW t4, 0(s9)
  SW t4, 104(sp)
  LW t3, 104(sp)
  ADDW t4, s1, t3
  SW t4, 108(sp)
  LW t4, 88(sp)
  ADDIW s9, t4, 2
  LA s1, a30
  LW t4, 0(s1)
  SW t4, 112(sp)
  LW t3, 112(sp)
  ADDW t4, s9, t3
  SW t4, 116(sp)
  LW t4, 96(sp)
  ADDIW s1, t4, 3
  LA s9, a31
  LW t4, 0(s9)
  SW t4, 120(sp)
  LW t3, 120(sp)
  ADDW t4, s1, t3
  SW t4, 124(sp)
  ADDIW s9, s7, 4
  LA s1, a32
  LW s1, 0(s1)
  ADDW s9, s9, s1
  ADDW s0, s0, s2
  ADDW s0, s0, s3
  ADDW s0, s0, s4
  ADDW s0, s0, s5
  SUBW s0, s0, s6
  SUBW s0, s0, s8
  SUBW s0, s0, s10
  SUBW s0, s0, s11
  LW t4, 152(sp)
  ADDW s0, s0, t4
  LW t4, 160(sp)
  ADDW s0, s0, t4
  LW t4, 168(sp)
  ADDW s0, s0, t4
  LW t4, 176(sp)
  ADDW s0, s0, t4
  LW t4, 180(sp)
  SUBW s0, s0, t4
  LW t4, 216(sp)
  SUBW s0, s0, t4
  LW t4, 208(sp)
  SUBW s0, s0, t4
  LW t4, 200(sp)
  SUBW s0, s0, t4
  LW t4, 192(sp)
  ADDW s0, s0, t4
  LW t4, 184(sp)
  ADDW s0, s0, t4
  LW t4, 64(sp)
  ADDW s0, s0, t4
  LW t4, 8(sp)
  ADDW s0, s0, t4
  LW t4, 16(sp)
  SUBW s0, s0, t4
  LW t4, 24(sp)
  SUBW s0, s0, t4
  LW t4, 32(sp)
  SUBW s0, s0, t4
  LW t4, 40(sp)
  SUBW s0, s0, t4
  LW t4, 48(sp)
  ADDW s0, s0, t4
  LW t4, 56(sp)
  ADDW s0, s0, t4
  LW t4, 0(sp)
  ADDW s0, s0, t4
  LW t4, 72(sp)
  ADDW s0, s0, t4
  LW t4, 80(sp)
  SUBW s0, s0, t4
  LW t4, 88(sp)
  SUBW s0, s0, t4
  LW t4, 96(sp)
  SUBW s0, s0, t4
  SUBW s0, s0, s7
  LW t4, 108(sp)
  ADDW s0, s0, t4
  LW t4, 116(sp)
  ADDW s0, s0, t4
  LW t4, 124(sp)
  ADDW s0, s0, t4
  ADDW s0, s0, s9
  LW t4, 144(sp)
  ADDW s0, s0, t4
  LW t4, 136(sp)
  SUBW s0, s0, t4
  LW t4, 132(sp)
  ADDW s0, s0, t4
  LW t4, 140(sp)
  SUBW s0, s0, t4
  LW t4, 148(sp)
  ADDW s0, s0, t4
  LW t4, 156(sp)
  SUBW s0, s0, t4
  LW t4, 164(sp)
  ADDW s0, s0, t4
  LW t4, 172(sp)
  SUBW s0, s0, t4
  LW t4, 224(sp)
  ADDW s0, s0, t4
  LW t4, 220(sp)
  SUBW s0, s0, t4
  LW t4, 212(sp)
  ADDW s0, s0, t4
  LW t4, 204(sp)
  SUBW s0, s0, t4
  LW t4, 196(sp)
  ADDW s0, s0, t4
  LW t4, 188(sp)
  SUBW s0, s0, t4
  LW t4, 128(sp)
  ADDW s0, s0, t4
  LW t4, 4(sp)
  SUBW s0, s0, t4
  LW t4, 12(sp)
  ADDW s0, s0, t4
  LW t4, 20(sp)
  SUBW s0, s0, t4
  LW t4, 28(sp)
  ADDW s0, s0, t4
  LW t4, 36(sp)
  SUBW s0, s0, t4
  LW t4, 44(sp)
  ADDW s0, s0, t4
  LW t4, 52(sp)
  SUBW s0, s0, t4
  LW t4, 60(sp)
  ADDW s0, s0, t4
  LW t4, 68(sp)
  SUBW s0, s0, t4
  LW t4, 76(sp)
  ADDW s0, s0, t4
  LW t4, 84(sp)
  SUBW s0, s0, t4
  LW t4, 92(sp)
  ADDW s0, s0, t4
  LW t4, 100(sp)
  SUBW s0, s0, t4
  LW t4, 104(sp)
  ADDW s0, s0, t4
  LW t4, 112(sp)
  SUBW s0, s0, t4
  LW t4, 120(sp)
  ADDW s0, s0, t4
  SUBW s0, s0, s1
  ADD a0, s0, zero
  CALL putint
  ADD a0, s0, zero
  LD ra, 232(sp)
  LD s0, 240(sp)
  LD s1, 248(sp)
  LD s2, 256(sp)
  LD s3, 264(sp)
  LD s4, 272(sp)
  LD s5, 280(sp)
  LD s6, 288(sp)
  LD s7, 296(sp)
  LD s8, 304(sp)
  LD s9, 312(sp)
  LD s10, 320(sp)
  LD s11, 328(sp)
  ADDI sp, sp, 336
  JALR zero, 0(ra)
func:
  ADDI sp, sp, -288
  SD ra, 184(sp)
  SD s0, 192(sp)
  SD s1, 200(sp)
  SD s2, 208(sp)
  SD s3, 216(sp)
  SD s4, 224(sp)
  SD s5, 232(sp)
  SD s7, 240(sp)
  SD s9, 248(sp)
  SD s10, 256(sp)
  SD s11, 264(sp)
  SD s6, 272(sp)
  SD s8, 280(sp)
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
  ADDW s6, s6, t4
  ADDIW s8, s3, 2
  LA s9, a2
  LW t4, 0(s9)
  SW t4, 160(sp)
  LW t4, 160(sp)
  ADDW s8, s8, t4
  ADDIW s10, s4, 3
  LA s11, a3
  LW t4, 0(s11)
  SW t4, 152(sp)
  LW t4, 152(sp)
  ADDW s10, s10, t4
  ADDIW t0, s5, 4
  LA t1, a4
  LW t4, 0(t1)
  SW t4, 144(sp)
  LW t4, 144(sp)
  ADDW t0, t0, t4
  ADDIW t2, s6, 1
  LA a1, a5
  LW t4, 0(a1)
  SW t4, 136(sp)
  LW t4, 136(sp)
  ADDW t2, t2, t4
  ADDIW a2, s8, 2
  LA a3, a6
  LW t4, 0(a3)
  SW t4, 128(sp)
  LW t4, 128(sp)
  ADDW a2, a2, t4
  ADDIW a4, s10, 3
  LA a5, a7
  LW t4, 0(a5)
  SW t4, 120(sp)
  LW t4, 120(sp)
  ADDW a4, a4, t4
  ADDIW a6, t0, 4
  LA a7, a8
  LW t4, 0(a7)
  SW t4, 112(sp)
  LW t4, 112(sp)
  ADDW a6, a6, t4
  ADDIW t6, t2, 1
  LA a7, a9
  LW t4, 0(a7)
  SW t4, 116(sp)
  LW t4, 116(sp)
  ADDW t6, t6, t4
  ADDIW a7, a2, 2
  LA a5, a10
  LW t4, 0(a5)
  SW t4, 124(sp)
  LW t4, 124(sp)
  ADDW a7, a7, t4
  ADDIW a5, a4, 3
  LA a3, a11
  LW t4, 0(a3)
  SW t4, 132(sp)
  LW t4, 132(sp)
  ADDW a5, a5, t4
  ADDIW a3, a6, 4
  LA a1, a12
  LW t4, 0(a1)
  SW t4, 140(sp)
  LW t4, 140(sp)
  ADDW a3, a3, t4
  ADDIW a1, t6, 1
  LA t1, a13
  LW t4, 0(t1)
  SW t4, 148(sp)
  LW t4, 148(sp)
  ADDW a1, a1, t4
  ADDIW t1, a7, 2
  LA s11, a14
  LW t4, 0(s11)
  SW t4, 156(sp)
  LW t4, 156(sp)
  ADDW t1, t1, t4
  ADDIW s11, a5, 3
  LA s9, a15
  LW t4, 0(s9)
  SW t4, 164(sp)
  LW t4, 164(sp)
  ADDW s11, s11, t4
  ADDIW s9, a3, 4
  LA s7, a16
  LW t4, 0(s7)
  SW t4, 172(sp)
  LW t3, 172(sp)
  ADDW t4, s9, t3
  SW t4, 176(sp)
  ADDIW s7, a1, 1
  LA s9, a17
  LW t4, 0(s9)
  SW t4, 180(sp)
  LW t3, 180(sp)
  ADDW t4, s7, t3
  SW t4, 96(sp)
  ADDIW s9, t1, 2
  LA s7, a18
  LW t4, 0(s7)
  SW t4, 48(sp)
  LW t3, 48(sp)
  ADDW t4, s9, t3
  SW t4, 4(sp)
  ADDIW s7, s11, 3
  LA s9, a19
  LW t4, 0(s9)
  SW t4, 8(sp)
  LW t3, 8(sp)
  ADDW t4, s7, t3
  SW t4, 12(sp)
  LW t4, 176(sp)
  ADDIW s9, t4, 4
  LA s7, a20
  LW t4, 0(s7)
  SW t4, 16(sp)
  LW t3, 16(sp)
  ADDW t4, s9, t3
  SW t4, 20(sp)
  LW t4, 96(sp)
  ADDIW s7, t4, 1
  LA s9, a21
  LW t4, 0(s9)
  SW t4, 24(sp)
  LW t3, 24(sp)
  ADDW t4, s7, t3
  SW t4, 28(sp)
  LW t4, 4(sp)
  ADDIW s9, t4, 2
  LA s7, a22
  LW t4, 0(s7)
  SW t4, 32(sp)
  LW t3, 32(sp)
  ADDW t4, s9, t3
  SW t4, 36(sp)
  LW t4, 12(sp)
  ADDIW s7, t4, 3
  LA s9, a23
  LW t4, 0(s9)
  SW t4, 40(sp)
  LW t3, 40(sp)
  ADDW t4, s7, t3
  SW t4, 44(sp)
  LW t4, 20(sp)
  ADDIW s9, t4, 4
  LA s7, a24
  LW t4, 0(s7)
  SW t4, 0(sp)
  LW t3, 0(sp)
  ADDW t4, s9, t3
  SW t4, 52(sp)
  LW t4, 28(sp)
  ADDIW s7, t4, 1
  LA s9, a25
  LW t4, 0(s9)
  SW t4, 56(sp)
  LW t3, 56(sp)
  ADDW t4, s7, t3
  SW t4, 60(sp)
  LW t4, 36(sp)
  ADDIW s9, t4, 2
  LA s7, a26
  LW t4, 0(s7)
  SW t4, 64(sp)
  LW t3, 64(sp)
  ADDW t4, s9, t3
  SW t4, 68(sp)
  LW t4, 44(sp)
  ADDIW s7, t4, 3
  LA s9, a27
  LW t4, 0(s9)
  SW t4, 72(sp)
  LW t3, 72(sp)
  ADDW t4, s7, t3
  SW t4, 76(sp)
  LW t4, 52(sp)
  ADDIW s9, t4, 4
  LA s7, a28
  LW t4, 0(s7)
  SW t4, 80(sp)
  LW t4, 80(sp)
  ADDW s9, s9, t4
  SUBW s0, s0, s1
  ADDIW s0, s0, 10
  LW t4, 60(sp)
  ADDIW s1, t4, 1
  LA s7, a29
  LW t4, 0(s7)
  SW t4, 84(sp)
  LW t3, 84(sp)
  ADDW t4, s1, t3
  SW t4, 88(sp)
  LW t4, 68(sp)
  ADDIW s7, t4, 2
  LA s1, a30
  LW t4, 0(s1)
  SW t4, 92(sp)
  LW t3, 92(sp)
  ADDW t4, s7, t3
  SW t4, 108(sp)
  LW t4, 76(sp)
  ADDIW s1, t4, 3
  LA s7, a31
  LW t4, 0(s7)
  SW t4, 104(sp)
  LW t3, 104(sp)
  ADDW t4, s1, t3
  SW t4, 100(sp)
  ADDIW s7, s9, 4
  LA s1, a32
  LW s1, 0(s1)
  ADDW s7, s7, s1
  ADDW s0, s0, s2
  ADDW s0, s0, s3
  ADDW s0, s0, s4
  ADDW s0, s0, s5
  SUBW s0, s0, s6
  SUBW s0, s0, s8
  SUBW s0, s0, s10
  SUBW s0, s0, t0
  ADDW s0, s0, t2
  ADDW s0, s0, a2
  ADDW s0, s0, a4
  ADDW s0, s0, a6
  SUBW s0, s0, t6
  SUBW s0, s0, a7
  SUBW s0, s0, a5
  SUBW s0, s0, a3
  ADDW s0, s0, a1
  ADDW s0, s0, t1
  ADDW s0, s0, s11
  LW t4, 176(sp)
  ADDW s0, s0, t4
  LW t4, 96(sp)
  SUBW s0, s0, t4
  LW t4, 4(sp)
  SUBW s0, s0, t4
  LW t4, 12(sp)
  SUBW s0, s0, t4
  LW t4, 20(sp)
  SUBW s0, s0, t4
  LW t4, 28(sp)
  ADDW s0, s0, t4
  LW t4, 36(sp)
  ADDW s0, s0, t4
  LW t4, 44(sp)
  ADDW s0, s0, t4
  LW t4, 52(sp)
  ADDW s0, s0, t4
  LW t4, 60(sp)
  SUBW s0, s0, t4
  LW t4, 68(sp)
  SUBW s0, s0, t4
  LW t4, 76(sp)
  SUBW s0, s0, t4
  SUBW s0, s0, s9
  LW t4, 88(sp)
  ADDW s0, s0, t4
  LW t4, 108(sp)
  ADDW s0, s0, t4
  LW t4, 100(sp)
  ADDW s0, s0, t4
  ADDW s0, s0, s7
  LW t4, 168(sp)
  ADDW s0, s0, t4
  LW t4, 160(sp)
  SUBW s0, s0, t4
  LW t4, 152(sp)
  ADDW s0, s0, t4
  LW t4, 144(sp)
  SUBW s0, s0, t4
  LW t4, 136(sp)
  ADDW s0, s0, t4
  LW t4, 128(sp)
  SUBW s0, s0, t4
  LW t4, 120(sp)
  ADDW s0, s0, t4
  LW t4, 112(sp)
  SUBW s0, s0, t4
  LW t4, 116(sp)
  ADDW s0, s0, t4
  LW t4, 124(sp)
  SUBW s0, s0, t4
  LW t4, 132(sp)
  ADDW s0, s0, t4
  LW t4, 140(sp)
  SUBW s0, s0, t4
  LW t4, 148(sp)
  ADDW s0, s0, t4
  LW t4, 156(sp)
  SUBW s0, s0, t4
  LW t4, 164(sp)
  ADDW s0, s0, t4
  LW t4, 172(sp)
  SUBW s0, s0, t4
  LW t4, 180(sp)
  ADDW s0, s0, t4
  LW t4, 48(sp)
  SUBW s0, s0, t4
  LW t4, 8(sp)
  ADDW s0, s0, t4
  LW t4, 16(sp)
  SUBW s0, s0, t4
  LW t4, 24(sp)
  ADDW s0, s0, t4
  LW t4, 32(sp)
  SUBW s0, s0, t4
  LW t4, 40(sp)
  ADDW s0, s0, t4
  LW t4, 0(sp)
  SUBW s0, s0, t4
  LW t4, 56(sp)
  ADDW s0, s0, t4
  LW t4, 64(sp)
  SUBW s0, s0, t4
  LW t4, 72(sp)
  ADDW s0, s0, t4
  LW t4, 80(sp)
  SUBW s0, s0, t4
  LW t4, 84(sp)
  ADDW s0, s0, t4
  LW t4, 92(sp)
  SUBW s0, s0, t4
  LW t4, 104(sp)
  ADDW s0, s0, t4
  SUBW s0, s0, s1
  ADD a0, s0, zero
  LD ra, 184(sp)
  LD s0, 192(sp)
  LD s1, 200(sp)
  LD s2, 208(sp)
  LD s3, 216(sp)
  LD s4, 224(sp)
  LD s5, 232(sp)
  LD s7, 240(sp)
  LD s9, 248(sp)
  LD s10, 256(sp)
  LD s11, 264(sp)
  LD s6, 272(sp)
  LD s8, 280(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
