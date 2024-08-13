.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
main:   # loop depth 0
  ADDI sp, sp, -720
  SD s11, 192(sp)
  SD ra, 208(sp)
  SD s0, 216(sp)
  SD s1, 224(sp)
  SD s2, 232(sp)
  SD s3, 240(sp)
  SD s4, 248(sp)
  SD s5, 256(sp)
  SD s6, 264(sp)
  SD s7, 272(sp)
  SD s8, 280(sp)
  SD s9, 288(sp)
  SD s10, 296(sp)
  LA a0, a0
  LA s1, a1
  ADDI s0, zero, 0
  LA s3, a2
  ADDI s2, zero, 1
  SW s0, 0(a0)
  LA s0, a3
  ADDI a0, zero, 2
  SW s2, 0(s1)
  LA s2, a4
  ADDI s1, zero, 3
  SW a0, 0(s3)
  LA s3, a5
  ADDI a0, zero, 4
  SW s1, 0(s0)
  LA s1, a6
  ADDI s0, zero, 5
  SW a0, 0(s2)
  LA s2, a7
  ADDI a0, zero, 6
  SW s0, 0(s3)
  LA s3, a8
  ADDI s0, zero, 7
  SW a0, 0(s1)
  LA s1, a9
  ADDI a0, zero, 8
  SW s0, 0(s2)
  LA s2, a10
  ADDI s0, zero, 9
  SW a0, 0(s3)
  LA s3, a11
  ADDI a0, zero, 0
  SW s0, 0(s1)
  LA s1, a12
  ADDI s0, zero, 1
  SW a0, 0(s2)
  LA s2, a13
  ADDI a0, zero, 2
  SW s0, 0(s3)
  LA s3, a14
  ADDI s0, zero, 3
  SW a0, 0(s1)
  LA s1, a15
  ADDI a0, zero, 4
  SW s0, 0(s2)
  LA s2, a16
  ADDI s0, zero, 5
  SW a0, 0(s3)
  LA s3, a17
  ADDI a0, zero, 6
  SW s0, 0(s1)
  LA s1, a18
  ADDI s0, zero, 7
  SW a0, 0(s2)
  LA s2, a19
  ADDI a0, zero, 8
  SW s0, 0(s3)
  LA s3, a20
  ADDI s0, zero, 9
  SW a0, 0(s1)
  LA s1, a21
  ADDI a0, zero, 0
  SW s0, 0(s2)
  LA s2, a22
  ADDI s0, zero, 1
  SW a0, 0(s3)
  LA s3, a23
  ADDI a0, zero, 2
  SW s0, 0(s1)
  LA s1, a24
  ADDI s0, zero, 3
  SW a0, 0(s2)
  LA s2, a25
  ADDI a0, zero, 4
  SW s0, 0(s3)
  LA s3, a26
  ADDI s0, zero, 5
  SW a0, 0(s1)
  LA s1, a27
  ADDI a0, zero, 6
  SW s0, 0(s2)
  LA s2, a28
  ADDI s0, zero, 7
  SW a0, 0(s3)
  LA s3, a29
  ADDI a0, zero, 8
  SW s0, 0(s1)
  LA s1, a30
  ADDI s0, zero, 9
  SW a0, 0(s2)
  LA s2, a31
  ADDI a0, zero, 0
  SW s0, 0(s3)
  LA s3, a32
  ADDI s0, zero, 1
  SW a0, 0(s1)
  LA s1, a33
  ADDI a0, zero, 4
  SW s0, 0(s2)
  LA s2, a34
  ADDI s0, zero, 5
  SW a0, 0(s3)
  LA s3, a35
  ADDI a0, zero, 6
  SW s0, 0(s1)
  LA s1, a36
  ADDI s0, zero, 7
  SW a0, 0(s2)
  LA s2, a37
  ADDI a0, zero, 8
  SW s0, 0(s3)
  LA s3, a38
  ADDI s0, zero, 9
  SW a0, 0(s1)
  LA s1, a39
  ADDI a0, zero, 0
  SW s0, 0(s2)
  LA s2, a0
  ADDI s0, zero, 1
  SW a0, 0(s3)
  ADDI s3, zero, 28
  SW s0, 0(s1)
  LA s0, a32
  ADDI a0, zero, 28
  SW s3, 0(s2)
  LA s1, a33
  LA s2, a34
  LA s3, a35
  LA s4, a36
  LA s5, a37
  LA s6, a38
  LA s7, a39
  LA s8, a8
  LA s10, a9
  LA s11, a10
  LA s9, a11
  SD s9, 304(sp)
  LA s9, a12
  SD s9, 576(sp)
  LA s9, a13
  SD s9, 584(sp)
  LA s9, a14
  SD s9, 592(sp)
  LA s9, a15
  SD s9, 600(sp)
  LA s9, a0
  SD s9, 608(sp)
  LA s9, a0
  SD s9, 616(sp)
  LA s9, a1
  SD s9, 624(sp)
  LA s9, a2
  SD s9, 536(sp)
  LA s9, a3
  SD s9, 632(sp)
  LA s9, a4
  SD s9, 640(sp)
  LA s9, a5
  SD s9, 648(sp)
  LA s9, a6
  SD s9, 656(sp)
  LA s9, a7
  SD s9, 664(sp)
  LA s9, a8
  SD s9, 672(sp)
  LA s9, a9
  SD s9, 680(sp)
  LA s9, a10
  SD s9, 688(sp)
  LA s9, a11
  SD s9, 696(sp)
  LA s9, a12
  SD s9, 704(sp)
  LA s9, a13
  SD s9, 472(sp)
  LA s9, a14
  SD s9, 384(sp)
  LA s9, a15
  SD s9, 392(sp)
  LA s9, a16
  SD s9, 400(sp)
  LA s9, a17
  SD s9, 408(sp)
  LA s9, a18
  SD s9, 416(sp)
  LA s9, a19
  SD s9, 424(sp)
  LA s9, a20
  SD s9, 432(sp)
  LA s9, a21
  SD s9, 440(sp)
  LA s9, a22
  SD s9, 448(sp)
  LA s9, a23
  SD s9, 456(sp)
  LA s9, a24
  SD s9, 464(sp)
  LA s9, a25
  SD s9, 376(sp)
  LA s9, a26
  SD s9, 480(sp)
  LA s9, a27
  SD s9, 488(sp)
  LA s9, a28
  SD s9, 496(sp)
  LA s9, a29
  SD s9, 504(sp)
  LA s9, a30
  SD s9, 512(sp)
  LA s9, a31
  SD s9, 520(sp)
  LA s9, a0
  SD s9, 528(sp)
  CALL putint
  LW a0, 0(s0)
  LW s0, 0(s1)
  LW s1, 0(s2)
  ADDW s0, a0, s0
  LW a0, 0(s3)
  ADDW s1, s0, s1
  LW s0, 0(s4)
  SUBW s1, s1, a0
  LW a0, 0(s5)
  SUBW s1, s1, s0
  LW s0, 0(s6)
  SUBW s1, s1, a0
  LW a0, 0(s7)
  SUBW s1, s1, s0
  LW s0, 0(s8)
  SUBW s1, s1, a0
  LW a0, 0(s10)
  ADDW s1, s1, s0
  LW s0, 0(s11)
  ADDW s1, s1, a0
  LD a0, 304(sp)
  LW a0, 0(a0)
  ADDW s1, s1, s0
  LD s0, 576(sp)
  LW s0, 0(s0)
  ADDW s1, s1, a0
  LD a0, 584(sp)
  LW a0, 0(a0)
  ADDW s1, s1, s0
  LD s0, 592(sp)
  LW s0, 0(s0)
  ADDW s1, s1, a0
  LD a0, 600(sp)
  LW a0, 0(a0)
  ADDW s0, s1, s0
  ADDW s0, s0, a0
  ADD a0, s0, zero
  LD s1, 608(sp)
  SW s0, 0(s1)
  CALL putint
  LD a0, 616(sp)
  LW a0, 0(a0)
  LD s0, 624(sp)
  LW s0, 0(s0)
  LD s1, 536(sp)
  LW s1, 0(s1)
  ADDW s0, a0, s0
  LD a0, 632(sp)
  LW a0, 0(a0)
  ADDW s1, s0, s1
  LD s0, 640(sp)
  LW s0, 0(s0)
  ADDW s1, s1, a0
  LD a0, 648(sp)
  LW a0, 0(a0)
  ADDW s1, s1, s0
  LD s0, 656(sp)
  LW s0, 0(s0)
  ADDW s1, s1, a0
  LD a0, 664(sp)
  LW a0, 0(a0)
  ADDW s1, s1, s0
  LD s0, 672(sp)
  LW s0, 0(s0)
  ADDW s1, s1, a0
  LD a0, 680(sp)
  LW a0, 0(a0)
  ADDW s1, s1, s0
  LD s0, 688(sp)
  LW s0, 0(s0)
  ADDW s1, s1, a0
  LD a0, 696(sp)
  LW a0, 0(a0)
  ADDW s1, s1, s0
  LD s0, 704(sp)
  LW s0, 0(s0)
  ADDW s1, s1, a0
  LD a0, 472(sp)
  LW a0, 0(a0)
  ADDW s1, s1, s0
  LD s0, 384(sp)
  LW s0, 0(s0)
  ADDW s1, s1, a0
  LD a0, 392(sp)
  LW a0, 0(a0)
  ADDW s1, s1, s0
  LD s0, 400(sp)
  LW s0, 0(s0)
  ADDW s1, s1, a0
  LD a0, 408(sp)
  LW a0, 0(a0)
  ADDW s1, s1, s0
  LD s0, 416(sp)
  LW s0, 0(s0)
  ADDW s1, s1, a0
  LD a0, 424(sp)
  LW a0, 0(a0)
  SUBW s1, s1, s0
  LD s0, 432(sp)
  LW s0, 0(s0)
  SUBW s1, s1, a0
  LD a0, 440(sp)
  LW a0, 0(a0)
  SUBW s1, s1, s0
  LD s0, 448(sp)
  LW s0, 0(s0)
  SUBW s1, s1, a0
  LD a0, 456(sp)
  LW a0, 0(a0)
  SUBW s1, s1, s0
  LD s0, 464(sp)
  LW s0, 0(s0)
  ADDW s1, s1, a0
  LD a0, 376(sp)
  LW a0, 0(a0)
  ADDW s1, s1, s0
  LD s0, 480(sp)
  LW s0, 0(s0)
  ADDW s1, s1, a0
  LD a0, 488(sp)
  LW a0, 0(a0)
  ADDW s1, s1, s0
  LD s0, 496(sp)
  LW s0, 0(s0)
  ADDW s1, s1, a0
  LD a0, 504(sp)
  LW a0, 0(a0)
  ADDW s1, s1, s0
  LD s0, 512(sp)
  LW s0, 0(s0)
  ADDW s1, s1, a0
  LD a0, 520(sp)
  LW a0, 0(a0)
  ADDW s0, s1, s0
  ADDW s0, s0, a0
  ADD a0, s0, zero
  LD s1, 528(sp)
  SW s0, 0(s1)
  CALL putint
  ADD a0, zero, zero
  LD s11, 192(sp)
  LD ra, 208(sp)
  LD s0, 216(sp)
  LD s1, 224(sp)
  LD s2, 232(sp)
  LD s3, 240(sp)
  LD s4, 248(sp)
  LD s5, 256(sp)
  LD s6, 264(sp)
  LD s7, 272(sp)
  LD s8, 280(sp)
  LD s9, 288(sp)
  LD s10, 296(sp)
  ADDI sp, sp, 720
  JALR zero, 0(ra)
