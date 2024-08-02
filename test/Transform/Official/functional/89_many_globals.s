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
  ADDI sp, sp, -272
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
  LA s0, a0
  ADDI a0, zero, 0
  SW a0, 0(s0)
  LA a0, a1
  ADDI s0, zero, 1
  SW s0, 0(a0)
  LA s0, a2
  ADDI a0, zero, 2
  SW a0, 0(s0)
  LA a0, a3
  ADDI s0, zero, 3
  SW s0, 0(a0)
  LA s0, a4
  ADDI a0, zero, 4
  SW a0, 0(s0)
  LA a0, a5
  ADDI s0, zero, 5
  SW s0, 0(a0)
  LA a0, a6
  ADDI s0, zero, 6
  SW s0, 0(a0)
  LA a0, a7
  ADDI s0, zero, 7
  SW s0, 0(a0)
  LA s0, a8
  ADDI a0, zero, 8
  SW a0, 0(s0)
  LA s0, a9
  ADDI a0, zero, 9
  SW a0, 0(s0)
  LA s0, a10
  ADDI a0, zero, 0
  SW a0, 0(s0)
  LA s0, a11
  ADDI a0, zero, 1
  SW a0, 0(s0)
  LA s0, a12
  ADDI a0, zero, 2
  SW a0, 0(s0)
  LA s0, a13
  ADDI a0, zero, 3
  SW a0, 0(s0)
  LA s0, a14
  ADDI a0, zero, 4
  SW a0, 0(s0)
  LA s0, a15
  ADDI a0, zero, 5
  SW a0, 0(s0)
  LA s0, a16
  ADDI a0, zero, 6
  SW a0, 0(s0)
  LA a0, a17
  ADDI s0, zero, 7
  SW s0, 0(a0)
  LA s0, a18
  ADDI a0, zero, 8
  SW a0, 0(s0)
  LA s0, a19
  ADDI a0, zero, 9
  SW a0, 0(s0)
  LA s0, a20
  ADDI a0, zero, 0
  SW a0, 0(s0)
  LA s0, a21
  ADDI a0, zero, 1
  SW a0, 0(s0)
  LA s0, a22
  ADDI a0, zero, 2
  SW a0, 0(s0)
  LA s0, a23
  ADDI a0, zero, 3
  SW a0, 0(s0)
  LA s0, a24
  ADDI a0, zero, 4
  SW a0, 0(s0)
  LA s0, a25
  ADDI a0, zero, 5
  SW a0, 0(s0)
  LA s0, a26
  ADDI a0, zero, 6
  SW a0, 0(s0)
  LA s0, a27
  ADDI a0, zero, 7
  SW a0, 0(s0)
  LA s0, a28
  ADDI a0, zero, 8
  SW a0, 0(s0)
  LA s0, a29
  ADDI a0, zero, 9
  SW a0, 0(s0)
  LA s0, a30
  ADDI a0, zero, 0
  SW a0, 0(s0)
  LA s0, a31
  ADDI a0, zero, 1
  SW a0, 0(s0)
  LA s0, a32
  ADDI a0, zero, 4
  SW a0, 0(s0)
  LA s0, a33
  ADDI a0, zero, 5
  SW a0, 0(s0)
  LA s0, a34
  ADDI a0, zero, 6
  SW a0, 0(s0)
  LA s0, a35
  ADDI a0, zero, 7
  SW a0, 0(s0)
  LA s0, a36
  ADDI a0, zero, 8
  SW a0, 0(s0)
  LA s0, a37
  ADDI a0, zero, 9
  SW a0, 0(s0)
  LA s0, a38
  ADDI a0, zero, 0
  SW a0, 0(s0)
  LA s0, a39
  ADDI a0, zero, 1
  SW a0, 0(s0)
  LA s0, a0
  ADDI a0, zero, 28
  SW a0, 0(s0)
  ADDI a0, zero, 28
  CALL putint
  LA a0, a32
  LW s5, 0(a0)
  LA a0, a33
  LW s4, 0(a0)
  LA a0, a34
  LW s0, 0(a0)
  LA a0, a35
  LW a0, 0(a0)
  SW a0, 108(sp)
  LA a0, a36
  LW a0, 0(a0)
  SW a0, 20(sp)
  LA a0, a37
  LW a0, 0(a0)
  SW a0, 16(sp)
  LA a0, a38
  LW a0, 0(a0)
  SW a0, 12(sp)
  LA a0, a39
  LW a0, 0(a0)
  SW a0, 8(sp)
  LA a0, a8
  LW a0, 0(a0)
  SW a0, 116(sp)
  LA a0, a9
  LW s8, 0(a0)
  LA a0, a10
  LW a0, 0(a0)
  SW a0, 112(sp)
  LA a0, a11
  LW s7, 0(a0)
  LA a0, a12
  LW s6, 0(a0)
  LA a0, a13
  LW s1, 0(a0)
  LA a0, a14
  LW s2, 0(a0)
  LA a0, a15
  LW s3, 0(a0)
  ADDW a0, s5, s4
  ADDW s0, a0, s0
  LW a0, 108(sp)
  SUBW s0, s0, a0
  LW a0, 20(sp)
  SUBW s0, s0, a0
  LW a0, 16(sp)
  SUBW s0, s0, a0
  LW a0, 12(sp)
  SUBW s0, s0, a0
  LW a0, 8(sp)
  SUBW s0, s0, a0
  LW a0, 116(sp)
  ADDW a0, s0, a0
  ADDW s0, a0, s8
  LW a0, 112(sp)
  ADDW a0, s0, a0
  ADDW a0, a0, s7
  ADDW a0, a0, s6
  ADDW a0, a0, s1
  ADDW a0, a0, s2
  ADDW s0, a0, s3
  LA a0, a0
  SW s0, 0(a0)
  ADD a0, s0, zero
  CALL putint
  LA a0, a0
  LW a0, 0(a0)
  SW a0, 128(sp)
  LA a0, a1
  LW a0, 0(a0)
  SW a0, 132(sp)
  LA a0, a2
  LW a0, 0(a0)
  SW a0, 136(sp)
  LA a0, a3
  LW a0, 0(a0)
  SW a0, 140(sp)
  LA a0, a4
  LW a0, 0(a0)
  SW a0, 144(sp)
  LA a0, a5
  LW s2, 0(a0)
  LA a0, a6
  LW s1, 0(a0)
  LA a0, a7
  LW a0, 0(a0)
  SW a0, 124(sp)
  LA a0, a8
  LW a0, 0(a0)
  SW a0, 120(sp)
  LA a0, a9
  LW a0, 0(a0)
  SW a0, 164(sp)
  LA a0, a10
  LW a0, 0(a0)
  SW a0, 160(sp)
  LA a0, a11
  LW a0, 0(a0)
  SW a0, 156(sp)
  LA a0, a12
  LW a0, 0(a0)
  SW a0, 152(sp)
  LA a0, a13
  LW s3, 0(a0)
  LA a0, a14
  LW a0, 0(a0)
  SW a0, 104(sp)
  LA a0, a15
  LW a0, 0(a0)
  SW a0, 96(sp)
  LA a0, a16
  LW a0, 0(a0)
  SW a0, 92(sp)
  LA a0, a17
  LW a0, 0(a0)
  SW a0, 88(sp)
  LA a0, a18
  LW a0, 0(a0)
  SW a0, 84(sp)
  LA a0, a19
  LW a0, 0(a0)
  SW a0, 80(sp)
  LA a0, a20
  LW a0, 0(a0)
  SW a0, 76(sp)
  LA a0, a21
  LW a0, 0(a0)
  SW a0, 72(sp)
  LA a0, a22
  LW a0, 0(a0)
  SW a0, 68(sp)
  LA a0, a23
  LW a0, 0(a0)
  SW a0, 4(sp)
  LA a0, a24
  LW a0, 0(a0)
  SW a0, 52(sp)
  LA a0, a25
  LW a0, 0(a0)
  SW a0, 100(sp)
  LA a0, a26
  LW a0, 0(a0)
  SW a0, 180(sp)
  LA a0, a27
  LW a0, 0(a0)
  SW a0, 184(sp)
  LA a0, a28
  LW a0, 0(a0)
  SW a0, 172(sp)
  LA a0, a29
  LW a0, 0(a0)
  SW a0, 168(sp)
  LA a0, a30
  LW a0, 0(a0)
  SW a0, 176(sp)
  LA a0, a31
  LW a0, 0(a0)
  SW a0, 148(sp)
  LW s0, 128(sp)
  LW a0, 132(sp)
  ADDW s0, s0, a0
  LW a0, 136(sp)
  ADDW s0, s0, a0
  LW a0, 140(sp)
  ADDW s0, s0, a0
  LW a0, 144(sp)
  ADDW a0, s0, a0
  ADDW a0, a0, s2
  ADDW s0, a0, s1
  LW a0, 124(sp)
  ADDW s0, s0, a0
  LW a0, 120(sp)
  ADDW s0, s0, a0
  LW a0, 164(sp)
  ADDW s0, s0, a0
  LW a0, 160(sp)
  ADDW s0, s0, a0
  LW a0, 156(sp)
  ADDW s0, s0, a0
  LW a0, 152(sp)
  ADDW a0, s0, a0
  ADDW a0, a0, s3
  LW s0, 104(sp)
  ADDW a0, a0, s0
  LW s0, 96(sp)
  ADDW a0, a0, s0
  LW s0, 92(sp)
  ADDW a0, a0, s0
  LW s0, 88(sp)
  ADDW a0, a0, s0
  LW s0, 84(sp)
  SUBW a0, a0, s0
  LW s0, 80(sp)
  SUBW a0, a0, s0
  LW s0, 76(sp)
  SUBW a0, a0, s0
  LW s0, 72(sp)
  SUBW s0, a0, s0
  LW a0, 68(sp)
  SUBW s0, s0, a0
  LW a0, 4(sp)
  ADDW s0, s0, a0
  LW a0, 52(sp)
  ADDW s0, s0, a0
  LW a0, 100(sp)
  ADDW s0, s0, a0
  LW a0, 180(sp)
  ADDW s0, s0, a0
  LW a0, 184(sp)
  ADDW s0, s0, a0
  LW a0, 172(sp)
  ADDW s0, s0, a0
  LW a0, 168(sp)
  ADDW s0, s0, a0
  LW a0, 176(sp)
  ADDW s0, s0, a0
  LW a0, 148(sp)
  ADDW s0, s0, a0
  LA a0, a0
  SW s0, 0(a0)
  ADD a0, s0, zero
  CALL putint
  ADD a0, zero, zero
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
  ADDI sp, sp, 272
  JALR zero, 0(ra)
