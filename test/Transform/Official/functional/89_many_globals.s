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
  ADDI sp, sp, -448
  SD ra, 176(sp)
  SD s0, 184(sp)
  SD s1, 192(sp)
  SD s2, 200(sp)
  SD s3, 208(sp)
  SD s4, 216(sp)
  SD s5, 224(sp)
  SD s6, 240(sp)
  SD s7, 248(sp)
  SD s8, 256(sp)
  SD s9, 264(sp)
  SD s10, 272(sp)
  SD s11, 280(sp)
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
  SW s7, 44(sp)
  LA s8, a9
  LW s7, 0(s8)
  SW s7, 8(sp)
  LA s9, a10
  LW s7, 0(s9)
  SW s7, 4(sp)
  LA s10, a11
  LW s10, 0(s10)
  LA s11, a12
  LW s11, 0(s11)
  LA s7, a13
  SD s7, 360(sp)
  LD s7, 360(sp)
  LW s7, 0(s7)
  SW s7, 28(sp)
  LA s7, a14
  SD s7, 432(sp)
  LD s7, 432(sp)
  LW s7, 0(s7)
  SW s7, 32(sp)
  LA s7, a15
  SD s7, 424(sp)
  LD s7, 424(sp)
  LW s7, 0(s7)
  SW s7, 36(sp)
  ADDW a0, a0, s0
  ADDW a0, a0, s1
  SUBW a0, a0, s2
  SUBW a0, a0, s3
  SUBW a0, a0, s4
  SUBW a0, a0, s5
  SUBW a0, a0, s6
  LW s0, 44(sp)
  ADDW a0, a0, s0
  LW s0, 8(sp)
  ADDW a0, a0, s0
  LW s0, 4(sp)
  ADDW a0, a0, s0
  ADDW a0, a0, s10
  ADDW a0, a0, s11
  LW s0, 28(sp)
  ADDW a0, a0, s0
  LW s0, 32(sp)
  ADDW a0, a0, s0
  LW s0, 36(sp)
  ADDW a0, a0, s0
  LA s0, a0
  SW a0, 0(s0)
  CALL putint
  LA a0, a0
  LW a0, 0(a0)
  LA s0, a1
  LW s0, 0(s0)
  LA s1, a2
  LW s1, 0(s1)
  LA s2, a3
  LW s2, 0(s2)
  LA s3, a4
  LW s3, 0(s3)
  LA s4, a5
  LW s4, 0(s4)
  LA s5, a6
  LW s5, 0(s5)
  LA s6, a7
  LW s6, 0(s6)
  LA s7, a8
  LW s7, 0(s7)
  SW s7, 148(sp)
  LA s8, a9
  LW s7, 0(s8)
  SW s7, 172(sp)
  LA s9, a10
  LW s7, 0(s9)
  SW s7, 168(sp)
  LA s10, a11
  LW s7, 0(s10)
  SW s7, 164(sp)
  LA s10, a12
  LW s7, 0(s10)
  SW s7, 160(sp)
  LA s11, a13
  LW s7, 0(s11)
  SW s7, 156(sp)
  LA s11, a14
  LW s7, 0(s11)
  SW s7, 152(sp)
  LA s7, a15
  SD s7, 416(sp)
  LD s7, 416(sp)
  LW s7, 0(s7)
  SW s7, 88(sp)
  LA s7, a16
  SD s7, 408(sp)
  LD s7, 408(sp)
  LW s7, 0(s7)
  SW s7, 144(sp)
  LA s7, a17
  SD s7, 232(sp)
  LD s7, 232(sp)
  LW s7, 0(s7)
  SW s7, 140(sp)
  LA s7, a18
  SD s7, 400(sp)
  LD s7, 400(sp)
  LW s7, 0(s7)
  SW s7, 136(sp)
  LA s7, a19
  SD s7, 392(sp)
  LD s7, 392(sp)
  LW s7, 0(s7)
  SW s7, 132(sp)
  LA s7, a20
  SD s7, 384(sp)
  LD s7, 384(sp)
  LW s7, 0(s7)
  SW s7, 128(sp)
  LA s7, a21
  SD s7, 376(sp)
  LD s7, 376(sp)
  LW s7, 0(s7)
  SW s7, 124(sp)
  LA s7, a22
  SD s7, 368(sp)
  LD s7, 368(sp)
  LW s7, 0(s7)
  SW s7, 120(sp)
  LA s7, a23
  SD s7, 288(sp)
  LD s7, 288(sp)
  LW s7, 0(s7)
  SW s7, 116(sp)
  LA s7, a24
  SD s7, 352(sp)
  LD s7, 352(sp)
  LW s7, 0(s7)
  SW s7, 112(sp)
  LA s7, a25
  SD s7, 344(sp)
  LD s7, 344(sp)
  LW s7, 0(s7)
  SW s7, 20(sp)
  LA s7, a26
  SD s7, 336(sp)
  LD s7, 336(sp)
  LW s7, 0(s7)
  SW s7, 24(sp)
  LA s7, a27
  SD s7, 328(sp)
  LD s7, 328(sp)
  LW s7, 0(s7)
  SW s7, 108(sp)
  LA s7, a28
  SD s7, 320(sp)
  LD s7, 320(sp)
  LW s7, 0(s7)
  SW s7, 104(sp)
  LA s7, a29
  SD s7, 312(sp)
  LD s7, 312(sp)
  LW s7, 0(s7)
  SW s7, 76(sp)
  LA s7, a30
  SD s7, 304(sp)
  LD s7, 304(sp)
  LW s7, 0(s7)
  SW s7, 72(sp)
  LA s7, a31
  SD s7, 296(sp)
  LD s7, 296(sp)
  LW s7, 0(s7)
  SW s7, 68(sp)
  ADDW a0, a0, s0
  ADDW a0, a0, s1
  ADDW a0, a0, s2
  ADDW a0, a0, s3
  ADDW a0, a0, s4
  ADDW a0, a0, s5
  ADDW a0, a0, s6
  LW s0, 148(sp)
  ADDW a0, a0, s0
  LW s0, 172(sp)
  ADDW a0, a0, s0
  LW s0, 168(sp)
  ADDW a0, a0, s0
  LW s0, 164(sp)
  ADDW a0, a0, s0
  LW s0, 160(sp)
  ADDW a0, a0, s0
  LW s0, 156(sp)
  ADDW a0, a0, s0
  LW s0, 152(sp)
  ADDW a0, a0, s0
  LW s0, 88(sp)
  ADDW a0, a0, s0
  LW s0, 144(sp)
  ADDW a0, a0, s0
  LW s0, 140(sp)
  ADDW a0, a0, s0
  LW s0, 136(sp)
  SUBW a0, a0, s0
  LW s0, 132(sp)
  SUBW a0, a0, s0
  LW s0, 128(sp)
  SUBW a0, a0, s0
  LW s0, 124(sp)
  SUBW a0, a0, s0
  LW s0, 120(sp)
  SUBW a0, a0, s0
  LW s0, 116(sp)
  ADDW a0, a0, s0
  LW s0, 112(sp)
  ADDW a0, a0, s0
  LW s0, 20(sp)
  ADDW a0, a0, s0
  LW s0, 24(sp)
  ADDW a0, a0, s0
  LW s0, 108(sp)
  ADDW a0, a0, s0
  LW s0, 104(sp)
  ADDW a0, a0, s0
  LW s0, 76(sp)
  ADDW a0, a0, s0
  LW s0, 72(sp)
  ADDW a0, a0, s0
  LW s0, 68(sp)
  ADDW a0, a0, s0
  LA s0, a0
  SW a0, 0(s0)
  CALL putint
  ADD a0, zero, zero
  LD ra, 176(sp)
  LD s0, 184(sp)
  LD s1, 192(sp)
  LD s2, 200(sp)
  LD s3, 208(sp)
  LD s4, 216(sp)
  LD s5, 224(sp)
  LD s6, 240(sp)
  LD s7, 248(sp)
  LD s8, 256(sp)
  LD s9, 264(sp)
  LD s10, 272(sp)
  LD s11, 280(sp)
  ADDI sp, sp, 448
  JALR zero, 0(ra)
