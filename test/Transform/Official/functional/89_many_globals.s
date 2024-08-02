.global main
.section .bss








































.section .data
a36:
.word 0x00000000
a32:
.word 0x00000000
a31:
.word 0x00000000
a30:
.word 0x00000000
a39:
.word 0x00000000
a29:
.word 0x00000000
a5:
.word 0x00000000
a4:
.word 0x00000000
a38:
.word 0x00000000
a6:
.word 0x00000000
a0:
.word 0x00000000
a3:
.word 0x00000000
a33:
.word 0x00000000
a2:
.word 0x00000000
a12:
.word 0x00000000
a11:
.word 0x00000000
a26:
.word 0x00000000
a10:
.word 0x00000000
a37:
.word 0x00000000
a1:
.word 0x00000000
a8:
.word 0x00000000
a17:
.word 0x00000000
a35:
.word 0x00000000
a24:
.word 0x00000000
a13:
.word 0x00000000
a9:
.word 0x00000000
a14:
.word 0x00000000
a16:
.word 0x00000000
a34:
.word 0x00000000
a7:
.word 0x00000000
a15:
.word 0x00000000
a25:
.word 0x00000000
a21:
.word 0x00000000
a18:
.word 0x00000000
a19:
.word 0x00000000
a27:
.word 0x00000000
a20:
.word 0x00000000
a22:
.word 0x00000000
a23:
.word 0x00000000
a28:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -464
  SD ra, 192(sp)
  SD s0, 200(sp)
  SD s1, 208(sp)
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
  LA a0, a0
  ADDI s0, zero, 0
  SW s0, 0(a0)
  LA a0, a1
  ADDI s0, zero, 1
  SW s0, 0(a0)
  LA a0, a2
  ADDI s0, zero, 2
  SW s0, 0(a0)
  LA a0, a3
  ADDI s0, zero, 3
  SW s0, 0(a0)
  LA a0, a4
  ADDI s0, zero, 4
  SW s0, 0(a0)
  LA a0, a5
  ADDI s0, zero, 5
  SW s0, 0(a0)
  LA a0, a6
  ADDI s0, zero, 6
  SW s0, 0(a0)
  LA a0, a7
  ADDI s0, zero, 7
  SW s0, 0(a0)
  LA a0, a8
  ADDI s0, zero, 8
  SW s0, 0(a0)
  LA a0, a9
  ADDI s0, zero, 9
  SW s0, 0(a0)
  LA a0, a10
  ADDI s0, zero, 0
  SW s0, 0(a0)
  LA a0, a11
  ADDI s0, zero, 1
  SW s0, 0(a0)
  LA a0, a12
  ADDI s0, zero, 2
  SW s0, 0(a0)
  LA a0, a13
  ADDI s0, zero, 3
  SW s0, 0(a0)
  LA a0, a14
  ADDI s0, zero, 4
  SW s0, 0(a0)
  LA a0, a15
  ADDI s0, zero, 5
  SW s0, 0(a0)
  LA a0, a16
  ADDI s0, zero, 6
  SW s0, 0(a0)
  LA a0, a17
  ADDI s0, zero, 7
  SW s0, 0(a0)
  LA a0, a18
  ADDI s0, zero, 8
  SW s0, 0(a0)
  LA a0, a19
  ADDI s0, zero, 9
  SW s0, 0(a0)
  LA a0, a20
  ADDI s0, zero, 0
  SW s0, 0(a0)
  LA a0, a21
  ADDI s0, zero, 1
  SW s0, 0(a0)
  LA a0, a22
  ADDI s0, zero, 2
  SW s0, 0(a0)
  LA a0, a23
  ADDI s0, zero, 3
  SW s0, 0(a0)
  LA a0, a24
  ADDI s0, zero, 4
  SW s0, 0(a0)
  LA a0, a25
  ADDI s0, zero, 5
  SW s0, 0(a0)
  LA a0, a26
  ADDI s0, zero, 6
  SW s0, 0(a0)
  LA a0, a27
  ADDI s0, zero, 7
  SW s0, 0(a0)
  LA a0, a28
  ADDI s0, zero, 8
  SW s0, 0(a0)
  LA a0, a29
  ADDI s0, zero, 9
  SW s0, 0(a0)
  LA a0, a30
  ADDI s0, zero, 0
  SW s0, 0(a0)
  LA a0, a31
  ADDI s0, zero, 1
  SW s0, 0(a0)
  LA a0, a32
  ADDI s0, zero, 4
  SW s0, 0(a0)
  LA a0, a33
  ADDI s0, zero, 5
  SW s0, 0(a0)
  LA a0, a34
  ADDI s0, zero, 6
  SW s0, 0(a0)
  LA a0, a35
  ADDI s0, zero, 7
  SW s0, 0(a0)
  LA a0, a36
  ADDI s0, zero, 8
  SW s0, 0(a0)
  LA a0, a37
  ADDI s0, zero, 9
  SW s0, 0(a0)
  LA a0, a38
  ADDI s0, zero, 0
  SW s0, 0(a0)
  LA a0, a39
  ADDI s0, zero, 1
  SW s0, 0(a0)
  LA a0, a0
  ADDI s0, zero, 28
  SW s0, 0(a0)
  ADDI a0, zero, 28
  CALL putint
  LA a0, a32
  LW a0, 0(a0)
  LA s0, a33
  LW s0, 0(s0)
  LA s1, a34
  LW s1, 0(s1)
  LA s2, a35
  LW s2, 0(s2)
  SW s2, 112(sp)
  LA s3, a36
  LW s3, 0(s3)
  LA s4, a37
  LW s4, 0(s4)
  LA s5, a38
  LW s5, 0(s5)
  LA s6, a39
  LW s6, 0(s6)
  LA s7, a8
  LW s7, 0(s7)
  LA s8, a9
  LW s2, 0(s8)
  SW s2, 116(sp)
  LA s9, a10
  LW s2, 0(s9)
  SW s2, 108(sp)
  LA s10, a11
  LW s10, 0(s10)
  LA s11, a12
  LW s11, 0(s11)
  LA s2, a13
  SD s2, 344(sp)
  LD s2, 344(sp)
  LW s2, 0(s2)
  SW s2, 80(sp)
  LA s2, a14
  SD s2, 352(sp)
  LD s2, 352(sp)
  LW s2, 0(s2)
  SW s2, 60(sp)
  LA s2, a15
  SD s2, 360(sp)
  LD s2, 360(sp)
  LW s2, 0(s2)
  SW s2, 56(sp)
  ADDW a0, a0, s0
  ADDW a0, a0, s1
  LW s0, 112(sp)
  SUBW a0, a0, s0
  SUBW a0, a0, s3
  SUBW a0, a0, s4
  SUBW a0, a0, s5
  SUBW a0, a0, s6
  ADDW a0, a0, s7
  LW s0, 116(sp)
  ADDW a0, a0, s0
  LW s0, 108(sp)
  ADDW a0, a0, s0
  ADDW a0, a0, s10
  ADDW a0, a0, s11
  LW s0, 80(sp)
  ADDW a0, a0, s0
  LW s0, 60(sp)
  ADDW a0, a0, s0
  LW s0, 56(sp)
  ADDW a0, a0, s0
  LA s0, a0
  SW a0, 0(s0)
  CALL putint
  LA a0, a0
  LW a0, 0(a0)
  SW a0, 164(sp)
  LA s0, a1
  LW a0, 0(s0)
  SW a0, 168(sp)
  LA s1, a2
  LW a0, 0(s1)
  SW a0, 172(sp)
  LA s2, a3
  LW a0, 0(s2)
  SW a0, 128(sp)
  LA s3, a4
  LW a0, 0(s3)
  SW a0, 132(sp)
  LA s4, a5
  LW a0, 0(s4)
  SW a0, 136(sp)
  LA s5, a6
  LW a0, 0(s5)
  SW a0, 140(sp)
  LA s6, a7
  LW a0, 0(s6)
  SW a0, 144(sp)
  LA s7, a8
  LW s7, 0(s7)
  LA s8, a9
  LW s8, 0(s8)
  LA s9, a10
  LW a0, 0(s9)
  SW a0, 124(sp)
  LA s10, a11
  LW a0, 0(s10)
  SW a0, 120(sp)
  LA s11, a12
  LW a0, 0(s11)
  SW a0, 160(sp)
  LA a0, a13
  SD a0, 368(sp)
  LD a0, 368(sp)
  LW a0, 0(a0)
  SW a0, 156(sp)
  LA a0, a14
  SD a0, 376(sp)
  LD a0, 376(sp)
  LW a0, 0(a0)
  SW a0, 152(sp)
  LA a0, a15
  SD a0, 384(sp)
  LD a0, 384(sp)
  LW a0, 0(a0)
  SW a0, 148(sp)
  LA a0, a16
  SD a0, 336(sp)
  LD a0, 336(sp)
  LW a0, 0(a0)
  SW a0, 100(sp)
  LA a0, a17
  SD a0, 400(sp)
  LD a0, 400(sp)
  LW a0, 0(a0)
  SW a0, 104(sp)
  LA a0, a18
  SD a0, 408(sp)
  LD a0, 408(sp)
  LW a0, 0(a0)
  SW a0, 92(sp)
  LA a0, a19
  SD a0, 416(sp)
  LD a0, 416(sp)
  LW a0, 0(a0)
  SW a0, 88(sp)
  LA a0, a20
  SD a0, 424(sp)
  LD a0, 424(sp)
  LW a0, 0(a0)
  SW a0, 84(sp)
  LA a0, a21
  SD a0, 432(sp)
  LD a0, 432(sp)
  LW a0, 0(a0)
  SW a0, 76(sp)
  LA a0, a22
  SD a0, 440(sp)
  LD a0, 440(sp)
  LW a0, 0(a0)
  SW a0, 72(sp)
  LA a0, a23
  SD a0, 448(sp)
  LD a0, 448(sp)
  LW a0, 0(a0)
  SW a0, 68(sp)
  LA a0, a24
  SD a0, 456(sp)
  LD a0, 456(sp)
  LW a0, 0(a0)
  SW a0, 64(sp)
  LA a0, a25
  SD a0, 392(sp)
  LD a0, 392(sp)
  LW a0, 0(a0)
  SW a0, 52(sp)
  LA a0, a26
  SD a0, 216(sp)
  LD a0, 216(sp)
  LW a0, 0(a0)
  SW a0, 12(sp)
  LA a0, a27
  SD a0, 248(sp)
  LD a0, 248(sp)
  LW a0, 0(a0)
  SW a0, 8(sp)
  LA a0, a28
  SD a0, 240(sp)
  LD a0, 240(sp)
  LW a0, 0(a0)
  SW a0, 4(sp)
  LA a0, a29
  SD a0, 232(sp)
  LD a0, 232(sp)
  LW a0, 0(a0)
  SW a0, 96(sp)
  LA a0, a30
  SD a0, 224(sp)
  LD a0, 224(sp)
  LW a0, 0(a0)
  SW a0, 48(sp)
  LA a0, a31
  SD a0, 184(sp)
  LD a0, 184(sp)
  LW a0, 0(a0)
  SW a0, 176(sp)
  LW a0, 164(sp)
  LW s0, 168(sp)
  ADDW a0, a0, s0
  LW s0, 172(sp)
  ADDW a0, a0, s0
  LW s0, 128(sp)
  ADDW a0, a0, s0
  LW s0, 132(sp)
  ADDW a0, a0, s0
  LW s0, 136(sp)
  ADDW a0, a0, s0
  LW s0, 140(sp)
  ADDW a0, a0, s0
  LW s0, 144(sp)
  ADDW a0, a0, s0
  ADDW a0, a0, s7
  ADDW a0, a0, s8
  LW s0, 124(sp)
  ADDW a0, a0, s0
  LW s0, 120(sp)
  ADDW a0, a0, s0
  LW s0, 160(sp)
  ADDW a0, a0, s0
  LW s0, 156(sp)
  ADDW a0, a0, s0
  LW s0, 152(sp)
  ADDW a0, a0, s0
  LW s0, 148(sp)
  ADDW a0, a0, s0
  LW s0, 100(sp)
  ADDW a0, a0, s0
  LW s0, 104(sp)
  ADDW a0, a0, s0
  LW s0, 92(sp)
  SUBW a0, a0, s0
  LW s0, 88(sp)
  SUBW a0, a0, s0
  LW s0, 84(sp)
  SUBW a0, a0, s0
  LW s0, 76(sp)
  SUBW a0, a0, s0
  LW s0, 72(sp)
  SUBW a0, a0, s0
  LW s0, 68(sp)
  ADDW a0, a0, s0
  LW s0, 64(sp)
  ADDW a0, a0, s0
  LW s0, 52(sp)
  ADDW a0, a0, s0
  LW s0, 12(sp)
  ADDW a0, a0, s0
  LW s0, 8(sp)
  ADDW a0, a0, s0
  LW s0, 4(sp)
  ADDW a0, a0, s0
  LW s0, 96(sp)
  ADDW a0, a0, s0
  LW s0, 48(sp)
  ADDW a0, a0, s0
  LW s0, 176(sp)
  ADDW a0, a0, s0
  LA s0, a0
  SW a0, 0(s0)
  CALL putint
  ADD a0, zero, zero
  LD ra, 192(sp)
  LD s0, 200(sp)
  LD s1, 208(sp)
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
  ADDI sp, sp, 464
  JALR zero, 0(ra)
