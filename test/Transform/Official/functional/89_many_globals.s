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
  ADDI sp, sp, -192
  SD ra, 80(sp)
  SD s11, 88(sp)
  SD s10, 96(sp)
  SD s9, 104(sp)
  SD s8, 112(sp)
  SD s7, 120(sp)
  SD s6, 128(sp)
  SD s0, 136(sp)
  SD s5, 144(sp)
  SD s1, 152(sp)
  SD s2, 160(sp)
  SD s3, 168(sp)
  SD s4, 176(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  ADD s6, a6, zero
  ADD s7, a7, zero
  ADDI t5, sp, 192
  ADD s8, t5, zero
  LW s9, 0(s8)
  ADDI s8, sp, 196
  LW s10, 0(s8)
  ADDI s8, sp, 200
  LW s11, 0(s8)
  ADDI s8, sp, 204
  LW ra, 0(s8)
  ADDI s8, sp, 208
  LW t0, 0(s8)
  ADDI s8, sp, 212
  LW t1, 0(s8)
  ADDI s8, sp, 216
  LW t2, 0(s8)
  ADDI s8, sp, 220
  LW a1, 0(s8)
  ADDI s8, sp, 224
  LW a2, 0(s8)
  ADDI s8, sp, 228
  LW a3, 0(s8)
  ADDI s8, sp, 232
  LW a4, 0(s8)
  ADDI s8, sp, 236
  LW a5, 0(s8)
  ADDI s8, sp, 240
  LW a6, 0(s8)
  ADDI s8, sp, 244
  LW a7, 0(s8)
  ADDI s8, sp, 248
  LW t4, 0(s8)
  SW t4, 0(sp)
  ADDI s8, sp, 252
  LW t4, 0(s8)
  SW t4, 8(sp)
  ADDI s8, sp, 256
  LW t4, 0(s8)
  SW t4, 16(sp)
  ADDI s8, sp, 260
  LW t4, 0(s8)
  SW t4, 24(sp)
  ADDI s8, sp, 264
  LW t4, 0(s8)
  SW t4, 32(sp)
  ADDI s8, sp, 268
  LW t4, 0(s8)
  SW t4, 40(sp)
  ADDI s8, sp, 272
  LW t4, 0(s8)
  SW t4, 48(sp)
  ADDI s8, sp, 276
  LW t4, 0(s8)
  SW t4, 56(sp)
  ADDI s8, sp, 280
  LW t4, 0(s8)
  SW t4, 64(sp)
  ADDI s8, sp, 284
  LW t4, 0(s8)
  SW t4, 72(sp)
  ADDW s8, s0, s1
  ADDW s0, s8, s2
  ADDW s1, s0, s3
  ADDW s0, s1, s4
  ADDW s1, s0, s5
  ADDW s0, s1, s6
  ADDW s1, s0, s7
  ADDW s0, s1, s9
  ADDW s1, s0, s10
  ADDW s0, s1, s11
  ADDW s1, s0, ra
  ADDW s0, s1, t0
  ADDW s1, s0, t1
  ADDW s0, s1, t2
  ADDW s1, s0, a1
  ADDW s0, s1, a2
  ADDW s1, s0, a3
  SUBW s0, s1, a4
  SUBW s1, s0, a5
  SUBW s0, s1, a6
  SUBW s1, s0, a7
  LW t4, 0(sp)
  SUBW s0, s1, t4
  LW t4, 8(sp)
  ADDW s1, s0, t4
  LW t4, 16(sp)
  ADDW s0, s1, t4
  LW t4, 24(sp)
  ADDW s1, s0, t4
  LW t4, 32(sp)
  ADDW s0, s1, t4
  LW t4, 40(sp)
  ADDW s1, s0, t4
  LW t4, 48(sp)
  ADDW s0, s1, t4
  LW t4, 56(sp)
  ADDW s1, s0, t4
  LW t4, 64(sp)
  ADDW s0, s1, t4
  LW t4, 72(sp)
  ADDW s1, s0, t4
  ADD a0, s1, zero
  LD ra, 80(sp)
  LD s11, 88(sp)
  LD s10, 96(sp)
  LD s9, 104(sp)
  LD s8, 112(sp)
  LD s7, 120(sp)
  LD s6, 128(sp)
  LD s0, 136(sp)
  LD s5, 144(sp)
  LD s1, 152(sp)
  LD s2, 160(sp)
  LD s3, 168(sp)
  LD s4, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -416
  SD ra, 304(sp)
  SD s11, 312(sp)
  SD s10, 320(sp)
  SD s9, 328(sp)
  SD s0, 336(sp)
  SD s5, 344(sp)
  SD s1, 352(sp)
  SD s6, 360(sp)
  SD s2, 368(sp)
  SD s3, 376(sp)
  SD s4, 384(sp)
  SD s7, 392(sp)
  SD s8, 400(sp)
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
  LA s0, a0
  LW s1, 0(s0)
  LA s0, a1
  LW s2, 0(s0)
  LA s0, a2
  LW s3, 0(s0)
  LA s0, a3
  LW s4, 0(s0)
  LA s0, a4
  LW s5, 0(s0)
  LA s0, a5
  LW s6, 0(s0)
  LA s0, a6
  LW s7, 0(s0)
  LA s0, a7
  LW s8, 0(s0)
  ADD a0, s1, zero
  ADD a1, s2, zero
  ADD a2, s3, zero
  ADD a3, s4, zero
  ADD a4, s5, zero
  ADD a5, s6, zero
  ADD a6, s7, zero
  ADD a7, s8, zero
  CALL testParam8
  ADD s0, a0, zero
  LA s1, a0
  SW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  LA s0, a32
  LW s1, 0(s0)
  LA s0, a33
  LW s2, 0(s0)
  LA s0, a34
  LW s3, 0(s0)
  LA s0, a35
  LW s4, 0(s0)
  LA s0, a36
  LW s5, 0(s0)
  LA s0, a37
  LW s6, 0(s0)
  LA s0, a38
  LW s7, 0(s0)
  LA s0, a39
  LW s8, 0(s0)
  LA s0, a8
  LW s9, 0(s0)
  LA s0, a9
  LW s10, 0(s0)
  LA s0, a10
  LW s11, 0(s0)
  LA s0, a11
  LW t4, 0(s0)
  SW t4, 96(sp)
  LA s0, a12
  LW t4, 0(s0)
  SW t4, 104(sp)
  LA s0, a13
  LW t4, 0(s0)
  SW t4, 112(sp)
  LA s0, a14
  LW t4, 0(s0)
  SW t4, 120(sp)
  LA s0, a15
  LW t4, 0(s0)
  SW t4, 128(sp)
  ADD a0, s1, zero
  ADD a1, s2, zero
  ADD a2, s3, zero
  ADD a3, s4, zero
  ADD a4, s5, zero
  ADD a5, s6, zero
  ADD a6, s7, zero
  ADD a7, s8, zero
  ADDI t5, sp, 0
  ADD s0, t5, zero
  SW s9, 0(s0)
  ADDI s0, sp, 4
  SW s10, 0(s0)
  ADDI s0, sp, 8
  SW s11, 0(s0)
  ADDI s0, sp, 12
  LW t4, 96(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 16
  LW t4, 104(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 20
  LW t4, 112(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 24
  LW t4, 120(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 28
  LW t4, 128(sp)
  SW t4, 0(s0)
  LW t4, 96(sp)
  LW t3, 104(sp)
  LW t4, 112(sp)
  LW t3, 120(sp)
  LW t4, 128(sp)
  CALL testParam16
  ADD s0, a0, zero
  LA s1, a0
  SW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  LA s0, a0
  LW s1, 0(s0)
  LA s0, a1
  LW s2, 0(s0)
  LA s0, a2
  LW s3, 0(s0)
  LA s0, a3
  LW s4, 0(s0)
  LA s0, a4
  LW s5, 0(s0)
  LA s0, a5
  LW s6, 0(s0)
  LA s0, a6
  LW s7, 0(s0)
  LA s0, a7
  LW s8, 0(s0)
  LA s0, a8
  LW s9, 0(s0)
  LA s0, a9
  LW s10, 0(s0)
  LA s0, a10
  LW s11, 0(s0)
  LA s0, a11
  LW t4, 0(s0)
  SW t4, 136(sp)
  LA s0, a12
  LW t4, 0(s0)
  SW t4, 144(sp)
  LA s0, a13
  LW t4, 0(s0)
  SW t4, 152(sp)
  LA s0, a14
  LW t4, 0(s0)
  SW t4, 160(sp)
  LA s0, a15
  LW t4, 0(s0)
  SW t4, 168(sp)
  LA s0, a16
  LW t4, 0(s0)
  SW t4, 176(sp)
  LA s0, a17
  LW t4, 0(s0)
  SW t4, 184(sp)
  LA s0, a18
  LW t4, 0(s0)
  SW t4, 192(sp)
  LA s0, a19
  LW t4, 0(s0)
  SW t4, 200(sp)
  LA s0, a20
  LW t4, 0(s0)
  SW t4, 208(sp)
  LA s0, a21
  LW t4, 0(s0)
  SW t4, 216(sp)
  LA s0, a22
  LW t4, 0(s0)
  SW t4, 224(sp)
  LA s0, a23
  LW t4, 0(s0)
  SW t4, 232(sp)
  LA s0, a24
  LW t4, 0(s0)
  SW t4, 240(sp)
  LA s0, a25
  LW t4, 0(s0)
  SW t4, 248(sp)
  LA s0, a26
  LW t4, 0(s0)
  SW t4, 256(sp)
  LA s0, a27
  LW t4, 0(s0)
  SW t4, 264(sp)
  LA s0, a28
  LW t4, 0(s0)
  SW t4, 272(sp)
  LA s0, a29
  LW t4, 0(s0)
  SW t4, 280(sp)
  LA s0, a30
  LW t4, 0(s0)
  SW t4, 288(sp)
  LA s0, a31
  LW t4, 0(s0)
  SW t4, 296(sp)
  ADD a0, s1, zero
  ADD a1, s2, zero
  ADD a2, s3, zero
  ADD a3, s4, zero
  ADD a4, s5, zero
  ADD a5, s6, zero
  ADD a6, s7, zero
  ADD a7, s8, zero
  ADDI t6, sp, 0
  ADD s0, t6, zero
  SW s9, 0(s0)
  ADDI s0, sp, 4
  SW s10, 0(s0)
  ADDI s0, sp, 8
  SW s11, 0(s0)
  ADDI s0, sp, 12
  LW t4, 136(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 16
  LW t4, 144(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 20
  LW t4, 152(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 24
  LW t4, 160(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 28
  LW t4, 168(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 32
  LW t4, 176(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 36
  LW t4, 184(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 40
  LW t4, 192(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 44
  LW t4, 200(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 48
  LW t4, 208(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 52
  LW t4, 216(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 56
  LW t4, 224(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 60
  LW t4, 232(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 64
  LW t4, 240(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 68
  LW t4, 248(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 72
  LW t4, 256(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 76
  LW t4, 264(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 80
  LW t4, 272(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 84
  LW t4, 280(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 88
  LW t4, 288(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 92
  LW t4, 296(sp)
  SW t4, 0(s0)
  LW t4, 136(sp)
  LW t3, 144(sp)
  LW t4, 152(sp)
  LW t3, 160(sp)
  LW t4, 168(sp)
  LW t3, 176(sp)
  LW t4, 184(sp)
  LW t3, 192(sp)
  LW t4, 200(sp)
  LW t3, 208(sp)
  LW t4, 216(sp)
  LW t3, 224(sp)
  LW t4, 232(sp)
  LW t3, 240(sp)
  LW t4, 248(sp)
  LW t3, 256(sp)
  LW t4, 264(sp)
  LW t3, 272(sp)
  LW t4, 280(sp)
  LW t3, 288(sp)
  LW t4, 296(sp)
  CALL testParam32
  ADD s0, a0, zero
  LA s1, a0
  SW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 304(sp)
  LD s11, 312(sp)
  LD s10, 320(sp)
  LD s9, 328(sp)
  LD s0, 336(sp)
  LD s5, 344(sp)
  LD s1, 352(sp)
  LD s6, 360(sp)
  LD s2, 368(sp)
  LD s3, 376(sp)
  LD s4, 384(sp)
  LD s7, 392(sp)
  LD s8, 400(sp)
  ADDI sp, sp, 416
  JALR zero, 0(ra)
testParam16:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s11, 8(sp)
  SD s10, 16(sp)
  SD s9, 24(sp)
  SD s8, 32(sp)
  SD s7, 40(sp)
  SD s6, 48(sp)
  SD s0, 56(sp)
  SD s5, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  ADD s6, a6, zero
  ADD s7, a7, zero
  ADDI t5, sp, 112
  ADD s8, t5, zero
  LW s9, 0(s8)
  ADDI s8, sp, 116
  LW s10, 0(s8)
  ADDI s8, sp, 120
  LW s11, 0(s8)
  ADDI s8, sp, 124
  LW ra, 0(s8)
  ADDI s8, sp, 128
  LW t0, 0(s8)
  ADDI s8, sp, 132
  LW t1, 0(s8)
  ADDI s8, sp, 136
  LW t2, 0(s8)
  ADDI s8, sp, 140
  LW a1, 0(s8)
  ADDW s8, s0, s1
  ADDW s0, s8, s2
  SUBW s1, s0, s3
  SUBW s0, s1, s4
  SUBW s1, s0, s5
  SUBW s0, s1, s6
  SUBW s1, s0, s7
  ADDW s0, s1, s9
  ADDW s1, s0, s10
  ADDW s0, s1, s11
  ADDW s1, s0, ra
  ADDW s0, s1, t0
  ADDW s1, s0, t1
  ADDW s0, s1, t2
  ADDW s1, s0, a1
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s11, 8(sp)
  LD s10, 16(sp)
  LD s9, 24(sp)
  LD s8, 32(sp)
  LD s7, 40(sp)
  LD s6, 48(sp)
  LD s0, 56(sp)
  LD s5, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
testParam8:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s8, 8(sp)
  SD s7, 16(sp)
  SD s6, 24(sp)
  SD s0, 32(sp)
  SD s5, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  ADD s6, a6, zero
  ADD s7, a7, zero
  ADDW s8, s0, s1
  ADDW s0, s8, s2
  ADDW s1, s0, s3
  ADDW s0, s1, s4
  ADDW s1, s0, s5
  ADDW s0, s1, s6
  ADDW s1, s0, s7
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s8, 8(sp)
  LD s7, 16(sp)
  LD s6, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
