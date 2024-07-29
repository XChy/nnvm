.global testParam32
.global main
.global testParam16
.global testParam8
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
testParam32:
  ADDI sp, sp, -144
  SD ra, 32(sp)
  SD s3, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s4, 72(sp)
  SD s5, 80(sp)
  SD s6, 88(sp)
  SD s7, 96(sp)
  SD s8, 104(sp)
  SD s9, 112(sp)
  SD s10, 120(sp)
  SD s11, 128(sp)
  ADD s0, a0, zero
  ADDI t5, sp, 144
  ADD s1, t5, zero
  LW s1, 0(s1)
  LW s2, 148(sp)
  LW s3, 152(sp)
  LW s4, 156(sp)
  LW s5, 160(sp)
  LW s6, 164(sp)
  LW s7, 168(sp)
  LW s8, 172(sp)
  LW s9, 176(sp)
  LW s10, 180(sp)
  LW s11, 184(sp)
  LW ra, 188(sp)
  LW t0, 192(sp)
  LW t1, 196(sp)
  LW t2, 200(sp)
  LW t6, 204(sp)
  LW t4, 208(sp)
  SW t4, 0(sp)
  LW t4, 212(sp)
  SW t4, 4(sp)
  LW t4, 216(sp)
  SW t4, 8(sp)
  LW t4, 220(sp)
  SW t4, 12(sp)
  LW t4, 224(sp)
  SW t4, 16(sp)
  LW t4, 228(sp)
  SW t4, 20(sp)
  LW t4, 232(sp)
  SW t4, 24(sp)
  LW t4, 236(sp)
  SW t4, 28(sp)
  ADDW s0, s0, a1
  ADDW s0, s0, a2
  ADDW s0, s0, a3
  ADDW s0, s0, a4
  ADDW s0, s0, a5
  ADDW s0, s0, a6
  ADDW s0, s0, a7
  ADDW s0, s0, s1
  ADDW s0, s0, s2
  ADDW s0, s0, s3
  ADDW s0, s0, s4
  ADDW s0, s0, s5
  ADDW s0, s0, s6
  ADDW s0, s0, s7
  ADDW s0, s0, s8
  ADDW s0, s0, s9
  ADDW s0, s0, s10
  SUBW s0, s0, s11
  SUBW s0, s0, ra
  SUBW s0, s0, t0
  SUBW s0, s0, t1
  SUBW s0, s0, t2
  ADDW s0, s0, t6
  LW t4, 0(sp)
  ADDW s0, s0, t4
  LW t4, 4(sp)
  ADDW s0, s0, t4
  LW t4, 8(sp)
  ADDW s0, s0, t4
  LW t4, 12(sp)
  ADDW s0, s0, t4
  LW t4, 16(sp)
  ADDW s0, s0, t4
  LW t4, 20(sp)
  ADDW s0, s0, t4
  LW t4, 24(sp)
  ADDW s0, s0, t4
  LW t4, 28(sp)
  ADDW s0, s0, t4
  ADD a0, s0, zero
  LD ra, 32(sp)
  LD s3, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  LD s7, 96(sp)
  LD s8, 104(sp)
  LD s9, 112(sp)
  LD s10, 120(sp)
  LD s11, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -208
  SD ra, 96(sp)
  SD s0, 104(sp)
  SD s1, 112(sp)
  SD s2, 120(sp)
  SD s3, 128(sp)
  SD s4, 136(sp)
  SD s5, 144(sp)
  SD s6, 152(sp)
  SD s7, 160(sp)
  SD s8, 168(sp)
  SD s9, 176(sp)
  SD s10, 184(sp)
  SD s11, 192(sp)
  LA s0, a0
  ADDI s1, zero, 0
  SW s1, 0(s0)
  LA s0, a1
  ADDI s1, zero, 1
  SW s1, 0(s0)
  LA s0, a2
  ADDI s1, zero, 2
  SW s1, 0(s0)
  LA s0, a3
  ADDI s1, zero, 3
  SW s1, 0(s0)
  LA s0, a4
  ADDI s1, zero, 4
  SW s1, 0(s0)
  LA s0, a5
  ADDI s1, zero, 5
  SW s1, 0(s0)
  LA s0, a6
  ADDI s1, zero, 6
  SW s1, 0(s0)
  LA s0, a7
  ADDI s1, zero, 7
  SW s1, 0(s0)
  LA s0, a8
  ADDI s1, zero, 8
  SW s1, 0(s0)
  LA s0, a9
  ADDI s1, zero, 9
  SW s1, 0(s0)
  LA s0, a10
  ADDI s1, zero, 0
  SW s1, 0(s0)
  LA s0, a11
  ADDI s1, zero, 1
  SW s1, 0(s0)
  LA s0, a12
  ADDI s1, zero, 2
  SW s1, 0(s0)
  LA s0, a13
  ADDI s1, zero, 3
  SW s1, 0(s0)
  LA s0, a14
  ADDI s1, zero, 4
  SW s1, 0(s0)
  LA s0, a15
  ADDI s1, zero, 5
  SW s1, 0(s0)
  LA s0, a16
  ADDI s1, zero, 6
  SW s1, 0(s0)
  LA s0, a17
  ADDI s1, zero, 7
  SW s1, 0(s0)
  LA s0, a18
  ADDI s1, zero, 8
  SW s1, 0(s0)
  LA s0, a19
  ADDI s1, zero, 9
  SW s1, 0(s0)
  LA s0, a20
  ADDI s1, zero, 0
  SW s1, 0(s0)
  LA s0, a21
  ADDI s1, zero, 1
  SW s1, 0(s0)
  LA s0, a22
  ADDI s1, zero, 2
  SW s1, 0(s0)
  LA s0, a23
  ADDI s1, zero, 3
  SW s1, 0(s0)
  LA s0, a24
  ADDI s1, zero, 4
  SW s1, 0(s0)
  LA s0, a25
  ADDI s1, zero, 5
  SW s1, 0(s0)
  LA s0, a26
  ADDI s1, zero, 6
  SW s1, 0(s0)
  LA s0, a27
  ADDI s1, zero, 7
  SW s1, 0(s0)
  LA s0, a28
  ADDI s1, zero, 8
  SW s1, 0(s0)
  LA s0, a29
  ADDI s1, zero, 9
  SW s1, 0(s0)
  LA s0, a30
  ADDI s1, zero, 0
  SW s1, 0(s0)
  LA s0, a31
  ADDI s1, zero, 1
  SW s1, 0(s0)
  LA s0, a32
  ADDI s1, zero, 4
  SW s1, 0(s0)
  LA s0, a33
  ADDI s1, zero, 5
  SW s1, 0(s0)
  LA s0, a34
  ADDI s1, zero, 6
  SW s1, 0(s0)
  LA s0, a35
  ADDI s1, zero, 7
  SW s1, 0(s0)
  LA s0, a36
  ADDI s1, zero, 8
  SW s1, 0(s0)
  LA s0, a37
  ADDI s1, zero, 9
  SW s1, 0(s0)
  LA s0, a38
  ADDI s1, zero, 0
  SW s1, 0(s0)
  LA s0, a39
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, zero, 1
  ADDW s0, s0, zero
  ADDIW s0, s0, 2
  ADDIW s0, s0, 3
  ADDIW s0, s0, 4
  ADDIW s0, s0, 5
  ADDIW s0, s0, 6
  ADDIW s0, s0, 7
  LA s1, a0
  SW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  LA s0, a32
  LW s0, 0(s0)
  LA s1, a33
  LW s1, 0(s1)
  LA s2, a34
  LW s2, 0(s2)
  LA s3, a35
  LW s3, 0(s3)
  LA s4, a36
  LW s4, 0(s4)
  LA s5, a37
  LW s5, 0(s5)
  LA s6, a38
  LW s6, 0(s6)
  LA s7, a39
  LW s7, 0(s7)
  LA s8, a8
  LW s8, 0(s8)
  LA s9, a9
  LW s9, 0(s9)
  LA s10, a10
  LW s10, 0(s10)
  LA s11, a11
  LW t4, 0(s11)
  SW t4, 88(sp)
  LA s11, a12
  LW t4, 0(s11)
  SW t4, 84(sp)
  LA s11, a13
  LW t4, 0(s11)
  SW t4, 80(sp)
  LA s11, a14
  LW t4, 0(s11)
  SW t4, 76(sp)
  LA s11, a15
  LW s11, 0(s11)
  ADDW s0, s0, s1
  ADDW s0, s0, s2
  SUBW s0, s0, s3
  SUBW s0, s0, s4
  SUBW s0, s0, s5
  SUBW s0, s0, s6
  SUBW s0, s0, s7
  ADDW s0, s0, s8
  ADDW s0, s0, s9
  ADDW s0, s0, s10
  LW t4, 88(sp)
  ADDW s0, s0, t4
  LW t4, 84(sp)
  ADDW s0, s0, t4
  LW t4, 80(sp)
  ADDW s0, s0, t4
  LW t4, 76(sp)
  ADDW s0, s0, t4
  ADDW s0, s0, s11
  LA s1, a0
  SW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  LA s0, a0
  LW s0, 0(s0)
  LA s1, a1
  LW s1, 0(s1)
  LA s2, a2
  LW s2, 0(s2)
  LA s3, a3
  LW s3, 0(s3)
  LA s4, a4
  LW s4, 0(s4)
  LA s5, a5
  LW s5, 0(s5)
  LA s6, a6
  LW s6, 0(s6)
  LA s7, a7
  LW s7, 0(s7)
  LA s8, a8
  LW s8, 0(s8)
  LA s9, a9
  LW s9, 0(s9)
  LA s10, a10
  LW s10, 0(s10)
  LA s11, a11
  LW t4, 0(s11)
  SW t4, 72(sp)
  LA s11, a12
  LW t4, 0(s11)
  SW t4, 68(sp)
  LA s11, a13
  LW t4, 0(s11)
  SW t4, 64(sp)
  LA s11, a14
  LW t4, 0(s11)
  SW t4, 60(sp)
  LA s11, a15
  LW t4, 0(s11)
  SW t4, 56(sp)
  LA s11, a16
  LW t4, 0(s11)
  SW t4, 0(sp)
  LA s11, a17
  LW t4, 0(s11)
  SW t4, 52(sp)
  LA s11, a18
  LW t4, 0(s11)
  SW t4, 48(sp)
  LA s11, a19
  LW t4, 0(s11)
  SW t4, 44(sp)
  LA s11, a20
  LW t4, 0(s11)
  SW t4, 40(sp)
  LA s11, a21
  LW t4, 0(s11)
  SW t4, 36(sp)
  LA s11, a22
  LW t4, 0(s11)
  SW t4, 32(sp)
  LA s11, a23
  LW t4, 0(s11)
  SW t4, 28(sp)
  LA s11, a24
  LW t4, 0(s11)
  SW t4, 24(sp)
  LA s11, a25
  LW t4, 0(s11)
  SW t4, 20(sp)
  LA s11, a26
  LW t4, 0(s11)
  SW t4, 16(sp)
  LA s11, a27
  LW t4, 0(s11)
  SW t4, 12(sp)
  LA s11, a28
  LW t4, 0(s11)
  SW t4, 8(sp)
  LA s11, a29
  LW t4, 0(s11)
  SW t4, 4(sp)
  LA s11, a30
  LW t4, 0(s11)
  SW t4, 92(sp)
  LA s11, a31
  LW s11, 0(s11)
  ADDW s0, s0, s1
  ADDW s0, s0, s2
  ADDW s0, s0, s3
  ADDW s0, s0, s4
  ADDW s0, s0, s5
  ADDW s0, s0, s6
  ADDW s0, s0, s7
  ADDW s0, s0, s8
  ADDW s0, s0, s9
  ADDW s0, s0, s10
  LW t4, 72(sp)
  ADDW s0, s0, t4
  LW t4, 68(sp)
  ADDW s0, s0, t4
  LW t4, 64(sp)
  ADDW s0, s0, t4
  LW t4, 60(sp)
  ADDW s0, s0, t4
  LW t4, 56(sp)
  ADDW s0, s0, t4
  LW t4, 0(sp)
  ADDW s0, s0, t4
  LW t4, 52(sp)
  ADDW s0, s0, t4
  LW t4, 48(sp)
  SUBW s0, s0, t4
  LW t4, 44(sp)
  SUBW s0, s0, t4
  LW t4, 40(sp)
  SUBW s0, s0, t4
  LW t4, 36(sp)
  SUBW s0, s0, t4
  LW t4, 32(sp)
  SUBW s0, s0, t4
  LW t4, 28(sp)
  ADDW s0, s0, t4
  LW t4, 24(sp)
  ADDW s0, s0, t4
  LW t4, 20(sp)
  ADDW s0, s0, t4
  LW t4, 16(sp)
  ADDW s0, s0, t4
  LW t4, 12(sp)
  ADDW s0, s0, t4
  LW t4, 8(sp)
  ADDW s0, s0, t4
  LW t4, 4(sp)
  ADDW s0, s0, t4
  LW t4, 92(sp)
  ADDW s0, s0, t4
  ADDW s0, s0, s11
  LA s1, a0
  SW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 96(sp)
  LD s0, 104(sp)
  LD s1, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD s5, 144(sp)
  LD s6, 152(sp)
  LD s7, 160(sp)
  LD s8, 168(sp)
  LD s9, 176(sp)
  LD s10, 184(sp)
  LD s11, 192(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
testParam16:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  ADD s0, a0, zero
  ADDI t5, sp, 80
  ADD s1, t5, zero
  LW s1, 0(s1)
  LW s2, 84(sp)
  LW s3, 88(sp)
  LW s4, 92(sp)
  LW s5, 96(sp)
  LW s6, 100(sp)
  LW s7, 104(sp)
  LW s8, 108(sp)
  ADDW s0, s0, a1
  ADDW s0, s0, a2
  SUBW s0, s0, a3
  SUBW s0, s0, a4
  SUBW s0, s0, a5
  SUBW s0, s0, a6
  SUBW s0, s0, a7
  ADDW s0, s0, s1
  ADDW s0, s0, s2
  ADDW s0, s0, s3
  ADDW s0, s0, s4
  ADDW s0, s0, s5
  ADDW s0, s0, s6
  ADDW s0, s0, s7
  ADDW s0, s0, s8
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
testParam8:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  ADD s0, a0, zero
  ADDW s0, s0, a1
  ADDW s0, s0, a2
  ADDW s0, s0, a3
  ADDW s0, s0, a4
  ADDW s0, s0, a5
  ADDW s0, s0, a6
  ADDW s0, s0, a7
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
