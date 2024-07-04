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
  LW s0, 8(sp)
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
  ADDI sp, sp, -352
  SD ra, 312(sp)
  SD s3, 320(sp)
  SD s2, 328(sp)
  SD s1, 336(sp)
  SD s0, 344(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 304(sp)
  SW s1, 296(sp)
  LW s0, 304(sp)
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
  ADD s0, a0, zero
  SW s0, 256(sp)
  LW s0, 280(sp)
  ADDIW s1, s0, 1
  LA s0, a1
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 248(sp)
  LW s0, 272(sp)
  ADDIW s1, s0, 2
  LA s0, a2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 240(sp)
  LW s0, 264(sp)
  ADDIW s1, s0, 3
  LA s0, a3
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 232(sp)
  LW s0, 256(sp)
  ADDIW s1, s0, 4
  LA s0, a4
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 224(sp)
  LW s0, 248(sp)
  ADDIW s1, s0, 1
  LA s0, a5
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 216(sp)
  LW s0, 240(sp)
  ADDIW s1, s0, 2
  LA s0, a6
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 208(sp)
  LW s0, 232(sp)
  ADDIW s1, s0, 3
  LA s0, a7
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 200(sp)
  LW s0, 224(sp)
  ADDIW s1, s0, 4
  LA s0, a8
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 192(sp)
  LW s0, 216(sp)
  ADDIW s1, s0, 1
  LA s0, a9
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 184(sp)
  LW s0, 208(sp)
  ADDIW s1, s0, 2
  LA s0, a10
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 176(sp)
  LW s0, 200(sp)
  ADDIW s1, s0, 3
  LA s0, a11
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 168(sp)
  LW s0, 192(sp)
  ADDIW s1, s0, 4
  LA s0, a12
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 160(sp)
  LW s0, 184(sp)
  ADDIW s1, s0, 1
  LA s0, a13
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 152(sp)
  LW s0, 176(sp)
  ADDIW s1, s0, 2
  LA s0, a14
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 144(sp)
  LW s0, 168(sp)
  ADDIW s1, s0, 3
  LA s0, a15
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 136(sp)
  LW s0, 160(sp)
  ADDIW s1, s0, 4
  LA s0, a16
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 128(sp)
  LW s0, 152(sp)
  ADDIW s1, s0, 1
  LA s0, a17
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 120(sp)
  LW s0, 144(sp)
  ADDIW s1, s0, 2
  LA s0, a18
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 112(sp)
  LW s0, 136(sp)
  ADDIW s1, s0, 3
  LA s0, a19
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 104(sp)
  LW s0, 128(sp)
  ADDIW s1, s0, 4
  LA s0, a20
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 96(sp)
  LW s0, 120(sp)
  ADDIW s1, s0, 1
  LA s0, a21
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 88(sp)
  LW s0, 112(sp)
  ADDIW s1, s0, 2
  LA s0, a22
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 80(sp)
  LW s0, 104(sp)
  ADDIW s1, s0, 3
  LA s0, a23
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 72(sp)
  LW s0, 96(sp)
  ADDIW s1, s0, 4
  LA s0, a24
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 64(sp)
  LW s0, 88(sp)
  ADDIW s1, s0, 1
  LA s0, a25
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 56(sp)
  LW s0, 80(sp)
  ADDIW s1, s0, 2
  LA s0, a26
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 48(sp)
  LW s0, 72(sp)
  ADDIW s1, s0, 3
  LA s0, a27
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 40(sp)
  LW s0, 64(sp)
  ADDIW s1, s0, 4
  LA s0, a28
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 32(sp)
  LW s0, 56(sp)
  ADDIW s1, s0, 1
  LA s0, a29
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 24(sp)
  LW s0, 48(sp)
  ADDIW s1, s0, 2
  LA s0, a30
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 16(sp)
  LW s0, 40(sp)
  ADDIW s1, s0, 3
  LA s0, a31
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 8(sp)
  LW s0, 32(sp)
  ADDIW s1, s0, 4
  LA s0, a32
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 0(sp)
  LW s0, 304(sp)
  LW s1, 296(sp)
  SUBW s2, s0, s1
  ADDIW s0, s2, 10
  SW s0, 288(sp)
  LW s0, 56(sp)
  ADDIW s1, s0, 1
  LA s0, a29
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 24(sp)
  LW s0, 48(sp)
  ADDIW s1, s0, 2
  LA s0, a30
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 16(sp)
  LW s0, 40(sp)
  ADDIW s1, s0, 3
  LA s0, a31
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 8(sp)
  LW s0, 32(sp)
  ADDIW s1, s0, 4
  LA s0, a32
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 0(sp)
  LW s0, 88(sp)
  ADDIW s1, s0, 1
  LA s0, a25
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 56(sp)
  LW s0, 80(sp)
  ADDIW s1, s0, 2
  LA s0, a26
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 48(sp)
  LW s0, 72(sp)
  ADDIW s1, s0, 3
  LA s0, a27
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 40(sp)
  LW s0, 64(sp)
  ADDIW s1, s0, 4
  LA s0, a28
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 32(sp)
  LW s0, 120(sp)
  ADDIW s1, s0, 1
  LA s0, a21
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 88(sp)
  LW s0, 112(sp)
  ADDIW s1, s0, 2
  LA s0, a22
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 80(sp)
  LW s0, 104(sp)
  ADDIW s1, s0, 3
  LA s0, a23
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 72(sp)
  LW s0, 96(sp)
  ADDIW s1, s0, 4
  LA s0, a24
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 64(sp)
  LW s0, 152(sp)
  ADDIW s1, s0, 1
  LA s0, a17
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 120(sp)
  LW s0, 144(sp)
  ADDIW s1, s0, 2
  LA s0, a18
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 112(sp)
  LW s0, 136(sp)
  ADDIW s1, s0, 3
  LA s0, a19
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 104(sp)
  LW s0, 128(sp)
  ADDIW s1, s0, 4
  LA s0, a20
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 96(sp)
  LW s0, 184(sp)
  ADDIW s1, s0, 1
  LA s0, a13
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 152(sp)
  LW s0, 176(sp)
  ADDIW s1, s0, 2
  LA s0, a14
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 144(sp)
  LW s0, 168(sp)
  ADDIW s1, s0, 3
  LA s0, a15
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 136(sp)
  LW s0, 160(sp)
  ADDIW s1, s0, 4
  LA s0, a16
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 128(sp)
  LW s0, 216(sp)
  ADDIW s1, s0, 1
  LA s0, a9
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 184(sp)
  LW s0, 208(sp)
  ADDIW s1, s0, 2
  LA s0, a10
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 176(sp)
  LW s0, 200(sp)
  ADDIW s1, s0, 3
  LA s0, a11
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 168(sp)
  LW s0, 192(sp)
  ADDIW s1, s0, 4
  LA s0, a12
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 160(sp)
  LW s0, 248(sp)
  ADDIW s1, s0, 1
  LA s0, a5
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 216(sp)
  LW s0, 240(sp)
  ADDIW s1, s0, 2
  LA s0, a6
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 208(sp)
  LW s0, 232(sp)
  ADDIW s1, s0, 3
  LA s0, a7
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 200(sp)
  LW s0, 224(sp)
  ADDIW s1, s0, 4
  LA s0, a8
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 192(sp)
  LW s0, 280(sp)
  ADDIW s1, s0, 1
  LA s0, a1
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 248(sp)
  LW s0, 272(sp)
  ADDIW s1, s0, 2
  LA s0, a2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 240(sp)
  LW s0, 264(sp)
  ADDIW s1, s0, 3
  LA s0, a3
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 232(sp)
  LW s0, 256(sp)
  ADDIW s1, s0, 4
  LA s0, a4
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 224(sp)
  LW s0, 280(sp)
  ADDIW s1, s0, 1
  LA s0, a1
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 248(sp)
  LW s0, 272(sp)
  ADDIW s1, s0, 2
  LA s0, a2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 240(sp)
  LW s0, 264(sp)
  ADDIW s1, s0, 3
  LA s0, a3
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 232(sp)
  LW s0, 256(sp)
  ADDIW s1, s0, 4
  LA s0, a4
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SW s0, 224(sp)
  LW s1, 288(sp)
  LW s2, 280(sp)
  ADDW s3, s1, s2
  LW s1, 272(sp)
  ADDW s2, s3, s1
  LW s1, 264(sp)
  ADDW s3, s2, s1
  LW s1, 256(sp)
  ADDW s2, s3, s1
  LW s1, 248(sp)
  SUBW s3, s2, s1
  LW s1, 240(sp)
  SUBW s2, s3, s1
  LW s1, 232(sp)
  SUBW s3, s2, s1
  SUBW s1, s3, s0
  LW s0, 216(sp)
  ADDW s2, s1, s0
  LW s0, 208(sp)
  ADDW s1, s2, s0
  LW s0, 200(sp)
  ADDW s2, s1, s0
  LW s0, 192(sp)
  ADDW s1, s2, s0
  LW s0, 184(sp)
  SUBW s2, s1, s0
  LW s0, 176(sp)
  SUBW s1, s2, s0
  LW s0, 168(sp)
  SUBW s2, s1, s0
  LW s0, 160(sp)
  SUBW s1, s2, s0
  LW s0, 152(sp)
  ADDW s2, s1, s0
  LW s0, 144(sp)
  ADDW s1, s2, s0
  LW s0, 136(sp)
  ADDW s2, s1, s0
  LW s0, 128(sp)
  ADDW s1, s2, s0
  LW s0, 120(sp)
  SUBW s2, s1, s0
  LW s0, 112(sp)
  SUBW s1, s2, s0
  LW s0, 104(sp)
  SUBW s2, s1, s0
  LW s0, 96(sp)
  SUBW s1, s2, s0
  LW s0, 88(sp)
  ADDW s2, s1, s0
  LW s0, 80(sp)
  ADDW s1, s2, s0
  LW s0, 72(sp)
  ADDW s2, s1, s0
  LW s0, 64(sp)
  ADDW s1, s2, s0
  LW s0, 56(sp)
  SUBW s2, s1, s0
  LW s0, 48(sp)
  SUBW s1, s2, s0
  LW s0, 40(sp)
  SUBW s2, s1, s0
  LW s0, 32(sp)
  SUBW s1, s2, s0
  LW s0, 24(sp)
  ADDW s2, s1, s0
  LW s0, 16(sp)
  ADDW s1, s2, s0
  LW s0, 8(sp)
  ADDW s2, s1, s0
  LW s0, 0(sp)
  ADDW s1, s2, s0
  LA s0, a1
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LA s1, a2
  LW s2, 0(s1)
  SUBW s1, s0, s2
  LA s0, a3
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LA s1, a4
  LW s2, 0(s1)
  SUBW s1, s0, s2
  LA s0, a5
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LA s1, a6
  LW s2, 0(s1)
  SUBW s1, s0, s2
  LA s0, a7
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LA s1, a8
  LW s2, 0(s1)
  SUBW s1, s0, s2
  LA s0, a9
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LA s1, a10
  LW s2, 0(s1)
  SUBW s1, s0, s2
  LA s0, a11
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LA s1, a12
  LW s2, 0(s1)
  SUBW s1, s0, s2
  LA s0, a13
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LA s1, a14
  LW s2, 0(s1)
  SUBW s1, s0, s2
  LA s0, a15
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LA s1, a16
  LW s2, 0(s1)
  SUBW s1, s0, s2
  LA s0, a17
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LA s1, a18
  LW s2, 0(s1)
  SUBW s1, s0, s2
  LA s0, a19
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LA s1, a20
  LW s2, 0(s1)
  SUBW s1, s0, s2
  LA s0, a21
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LA s1, a22
  LW s2, 0(s1)
  SUBW s1, s0, s2
  LA s0, a23
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LA s1, a24
  LW s2, 0(s1)
  SUBW s1, s0, s2
  LA s0, a25
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LA s1, a26
  LW s2, 0(s1)
  SUBW s1, s0, s2
  LA s0, a27
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LA s1, a28
  LW s2, 0(s1)
  SUBW s1, s0, s2
  LA s0, a29
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LA s1, a30
  LW s2, 0(s1)
  SUBW s1, s0, s2
  LA s0, a31
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LA s1, a32
  LW s2, 0(s1)
  SUBW s1, s0, s2
  ADD a0, s1, zero
  LD ra, 312(sp)
  LD s3, 320(sp)
  LD s2, 328(sp)
  LD s1, 336(sp)
  LD s0, 344(sp)
  ADDI sp, sp, 352
  JALR zero, 0(ra)
