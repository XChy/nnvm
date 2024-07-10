.global param16
.global param32_arr
.global param32_rec
.global main
.global sort
.section .bss
.section .data
.section .text
param16:
  ADDI sp, sp, -480
  SD s0, 184(sp)
  SD ra, 200(sp)
  SD s1, 280(sp)
  SD s2, 288(sp)
  SD s8, 296(sp)
  SD s3, 304(sp)
  SD s4, 312(sp)
  SD s5, 320(sp)
  SD s6, 328(sp)
  SD s7, 336(sp)
  SD s9, 344(sp)
  SD s10, 352(sp)
  SD s11, 360(sp)
  ADD t4, a0, zero
  SW t4, 160(sp)
  ADD t4, a1, zero
  SW t4, 156(sp)
  ADD t4, a2, zero
  SW t4, 152(sp)
  ADD t4, a3, zero
  SW t4, 148(sp)
  ADD t4, a4, zero
  SW t4, 96(sp)
  ADD t4, a5, zero
  SW t4, 144(sp)
  ADD t4, a6, zero
  SW t4, 140(sp)
  ADD t4, a7, zero
  SW t4, 136(sp)
  ADDI t5, sp, 480
  ADD s8, t5, zero
  LW t4, 0(s8)
  SW t4, 100(sp)
  ADDI s8, sp, 484
  LW t4, 0(s8)
  SW t4, 104(sp)
  ADDI s8, sp, 488
  LW t4, 0(s8)
  SW t4, 108(sp)
  ADDI s8, sp, 492
  LW t4, 0(s8)
  SW t4, 112(sp)
  ADDI s8, sp, 496
  LW t4, 0(s8)
  SW t4, 116(sp)
  ADDI s8, sp, 500
  LW t4, 0(s8)
  SW t4, 120(sp)
  ADDI s8, sp, 504
  LW t4, 0(s8)
  SW t4, 128(sp)
  ADDI s8, sp, 508
  LW t4, 0(s8)
  SW t4, 132(sp)
  LW t4, 160(sp)
  SW t4, 216(sp)
  ADDI t4, sp, 220
  SD t4, 192(sp)
  LW t4, 156(sp)
  LD t3, 192(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 224
  SD t4, 208(sp)
  LW t4, 152(sp)
  LD t3, 208(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 228
  SD t4, 376(sp)
  LW t4, 148(sp)
  LD t3, 376(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 232
  SD t4, 384(sp)
  LW t4, 96(sp)
  LD t3, 384(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 236
  SD t4, 392(sp)
  LW t4, 144(sp)
  LD t3, 392(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 240
  SD t4, 400(sp)
  LW t4, 140(sp)
  LD t3, 400(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 244
  SD t4, 408(sp)
  LW t4, 136(sp)
  LD t3, 408(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 248
  SD t4, 416(sp)
  LW t4, 100(sp)
  LD t3, 416(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 252
  SD t4, 424(sp)
  LW t4, 104(sp)
  LD t3, 424(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 256
  SD t4, 432(sp)
  LW t4, 108(sp)
  LD t3, 432(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 260
  SD t4, 440(sp)
  LW t4, 112(sp)
  LD t3, 440(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 264
  SD t4, 448(sp)
  LW t4, 116(sp)
  LD t3, 448(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 268
  SD t4, 456(sp)
  LW t4, 120(sp)
  LD t3, 456(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 272
  SD t4, 464(sp)
  LW t4, 128(sp)
  LD t3, 464(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 276
  SD t4, 368(sp)
  LW t4, 132(sp)
  LD t3, 368(sp)
  SW t4, 0(t3)
  ADD t4, zero, zero
  SW t4, 168(sp)
  ADD t4, zero, zero
  SW t4, 164(sp)
  # implict jump to bb1
bb1:
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LW t4, 124(sp)
  SLTI t0, t4, 15
  BNE t0, zero, bb3
  # implict jump to bb2
bb2:
  LW t0, 216(sp)
  LD t4, 192(sp)
  LW ra, 0(t4)
  LD t4, 208(sp)
  LW s11, 0(t4)
  LD t4, 376(sp)
  LW s10, 0(t4)
  LD t4, 384(sp)
  LW s9, 0(t4)
  LD t4, 392(sp)
  LW s7, 0(t4)
  LD t4, 400(sp)
  LW s6, 0(t4)
  LD t4, 408(sp)
  LW s5, 0(t4)
  LD t4, 416(sp)
  LW s4, 0(t4)
  LD t4, 424(sp)
  LW s3, 0(t4)
  LD t4, 432(sp)
  LW s2, 0(t4)
  LD t4, 440(sp)
  LW s1, 0(t4)
  LD t4, 448(sp)
  LW s0, 0(t4)
  LD t4, 456(sp)
  LW s8, 0(t4)
  LD t3, 464(sp)
  LW t4, 0(t3)
  SW t4, 180(sp)
  LD t3, 368(sp)
  LW t4, 0(t3)
  SW t4, 172(sp)
  ADD a0, t0, zero
  ADD a1, ra, zero
  ADD a2, s11, zero
  ADD a3, s10, zero
  ADD a4, s9, zero
  ADD a5, s7, zero
  ADD a6, s6, zero
  ADD a7, s5, zero
  ADDI t5, sp, 0
  ADD s5, t5, zero
  SW s4, 0(s5)
  ADDI s5, sp, 4
  SW s3, 0(s5)
  ADDI s5, sp, 8
  SW s2, 0(s5)
  ADDI s5, sp, 12
  SW s1, 0(s5)
  ADDI s5, sp, 16
  SW s0, 0(s5)
  ADDI s5, sp, 20
  SW s8, 0(s5)
  ADDI s5, sp, 24
  LW t4, 180(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 28
  LW t4, 172(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 32
  LW t4, 160(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 36
  LW t4, 156(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 40
  LW t4, 152(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 44
  LW t4, 148(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 48
  LW t4, 96(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 52
  LW t4, 144(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 56
  LW t4, 140(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 60
  LW t4, 136(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 64
  LW t4, 100(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 68
  LW t4, 104(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 72
  LW t4, 108(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 76
  LW t4, 112(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 80
  LW t4, 116(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 84
  LW t4, 120(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 88
  LW t4, 128(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 92
  LW t4, 132(sp)
  SW t4, 0(s5)
  LW t4, 180(sp)
  LW t3, 172(sp)
  LW t4, 160(sp)
  LW t3, 156(sp)
  LW t4, 152(sp)
  LW t3, 148(sp)
  LW t4, 96(sp)
  LW t3, 144(sp)
  LW t4, 140(sp)
  LW t3, 136(sp)
  LW t4, 100(sp)
  LW t3, 104(sp)
  LW t4, 108(sp)
  LW t3, 112(sp)
  LW t4, 116(sp)
  LW t3, 120(sp)
  LW t4, 128(sp)
  LW t3, 132(sp)
  CALL param32_rec
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD s0, 184(sp)
  LD ra, 200(sp)
  LD s1, 280(sp)
  LD s2, 288(sp)
  LD s8, 296(sp)
  LD s3, 304(sp)
  LD s4, 312(sp)
  LD s5, 320(sp)
  LD s6, 328(sp)
  LD s7, 336(sp)
  LD s9, 344(sp)
  LD s10, 352(sp)
  LD s11, 360(sp)
  ADDI sp, sp, 480
  JALR zero, 0(ra)
bb3:
  LW t4, 124(sp)
  ADDIW s0, t4, 1
  LW t4, 176(sp)
  ADD s1, t4, zero
  ADD s2, s0, zero
  # implict jump to bb4
bb4:
  ADD s3, s2, zero
  ADD s4, s1, zero
  SLTI s5, s3, 16
  BNE s5, zero, bb6
  # implict jump to bb5
bb5:
  ADD t4, s4, zero
  SW t4, 168(sp)
  ADD t4, s0, zero
  SW t4, 164(sp)
  JAL zero, bb1
bb6:
  LW t4, 124(sp)
  SLLIW s5, t4, 2
  ADDI t5, sp, 216
  ADD s6, t5, s5
  LW s5, 0(s6)
  SLLIW s7, s3, 2
  ADDI t5, sp, 216
  ADD s8, t5, s7
  LW s7, 0(s8)
  SLT s9, s5, s7
  BNE s9, zero, bb9
  # implict jump to bb7
bb7:
  ADD s5, s4, zero
  # implict jump to bb8
bb8:
  ADD s4, s5, zero
  ADDIW s5, s3, 1
  ADD s1, s4, zero
  ADD s2, s5, zero
  JAL zero, bb4
bb9:
  LW s4, 0(s6)
  LW s7, 0(s8)
  SW s7, 0(s6)
  SW s4, 0(s8)
  ADD s5, s4, zero
  JAL zero, bb8
param32_arr:
  ADDI sp, sp, -192
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
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
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
  LD s9, 0(s8)
  ADDI s8, sp, 200
  LD s10, 0(s8)
  ADDI s8, sp, 208
  LD s11, 0(s8)
  ADDI s8, sp, 216
  LD ra, 0(s8)
  ADDI s8, sp, 224
  LD t0, 0(s8)
  ADDI s8, sp, 232
  LD t1, 0(s8)
  ADDI s8, sp, 240
  LD t2, 0(s8)
  ADDI s8, sp, 248
  LD a1, 0(s8)
  ADDI s8, sp, 256
  LD a2, 0(s8)
  ADDI s8, sp, 264
  LD a3, 0(s8)
  ADDI s8, sp, 272
  LD a4, 0(s8)
  ADDI s8, sp, 280
  LD a5, 0(s8)
  ADDI s8, sp, 288
  LD a6, 0(s8)
  ADDI s8, sp, 296
  LD a7, 0(s8)
  ADDI s8, sp, 304
  LD t4, 0(s8)
  SD t4, 104(sp)
  ADDI s8, sp, 312
  LD t4, 0(s8)
  SD t4, 176(sp)
  ADDI s8, sp, 320
  LD t4, 0(s8)
  SD t4, 168(sp)
  ADDI s8, sp, 328
  LD t4, 0(s8)
  SD t4, 160(sp)
  ADDI s8, sp, 336
  LD t4, 0(s8)
  SD t4, 152(sp)
  ADDI s8, sp, 344
  LD t4, 0(s8)
  SD t4, 144(sp)
  ADDI s8, sp, 352
  LD t4, 0(s8)
  SD t4, 136(sp)
  ADDI s8, sp, 360
  LD t4, 0(s8)
  SD t4, 128(sp)
  ADDI s8, sp, 368
  LD t4, 0(s8)
  SD t4, 120(sp)
  ADDI s8, sp, 376
  LD t4, 0(s8)
  SD t4, 112(sp)
  LW s8, 0(s0)
  ADDI t6, s0, 4
  LW s0, 0(t6)
  ADDW t6, s8, s0
  LW s0, 0(s1)
  ADDW s8, t6, s0
  ADDI s0, s1, 4
  LW s1, 0(s0)
  ADDW s0, s8, s1
  LW s1, 0(s2)
  ADDW s8, s0, s1
  ADDI s0, s2, 4
  LW s1, 0(s0)
  ADDW s0, s8, s1
  LW s1, 0(s3)
  ADDW s2, s0, s1
  ADDI s0, s3, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LW s1, 0(s4)
  ADDW s2, s0, s1
  ADDI s0, s4, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LW s1, 0(s5)
  ADDW s2, s0, s1
  ADDI s0, s5, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LW s1, 0(s6)
  ADDW s2, s0, s1
  ADDI s0, s6, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LW s1, 0(s7)
  ADDW s2, s0, s1
  ADDI s0, s7, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LW s1, 0(s9)
  ADDW s2, s0, s1
  ADDI s0, s9, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LW s1, 0(s10)
  ADDW s2, s0, s1
  ADDI s0, s10, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LW s1, 0(s11)
  ADDW s2, s0, s1
  ADDI s0, s11, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LW s1, 0(ra)
  ADDW s2, s0, s1
  ADDI s0, ra, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LW s1, 0(t0)
  ADDW s2, s0, s1
  ADDI s0, t0, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LW s1, 0(t1)
  ADDW s2, s0, s1
  ADDI s0, t1, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LW s1, 0(t2)
  ADDW s2, s0, s1
  ADDI s0, t2, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LW s1, 0(a1)
  ADDW s2, s0, s1
  ADDI s0, a1, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LW s1, 0(a2)
  ADDW s2, s0, s1
  ADDI s0, a2, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LW s1, 0(a3)
  ADDW s2, s0, s1
  ADDI s0, a3, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LW s1, 0(a4)
  ADDW s2, s0, s1
  ADDI s0, a4, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LW s1, 0(a5)
  ADDW s2, s0, s1
  ADDI s0, a5, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LW s1, 0(a6)
  ADDW s2, s0, s1
  ADDI s0, a6, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LW s1, 0(a7)
  ADDW s2, s0, s1
  ADDI s0, a7, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 104(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  LD t4, 104(sp)
  ADDI s0, t4, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 176(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  LD t4, 176(sp)
  ADDI s0, t4, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 168(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  LD t4, 168(sp)
  ADDI s0, t4, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 160(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  LD t4, 160(sp)
  ADDI s0, t4, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 152(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  LD t4, 152(sp)
  ADDI s0, t4, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 144(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  LD t4, 144(sp)
  ADDI s0, t4, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 136(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  LD t4, 136(sp)
  ADDI s0, t4, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 128(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  LD t4, 128(sp)
  ADDI s0, t4, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 120(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  LD t4, 120(sp)
  ADDI s0, t4, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 112(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  LD t4, 112(sp)
  ADDI s0, t4, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
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
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
param32_rec:
  ADDI sp, sp, -288
  SD ra, 184(sp)
  SD s0, 192(sp)
  SD s1, 200(sp)
  SD s2, 208(sp)
  SD s3, 216(sp)
  SD s4, 224(sp)
  SD s5, 232(sp)
  SD s6, 240(sp)
  SD s7, 248(sp)
  SD s8, 256(sp)
  SD s9, 264(sp)
  SD s10, 272(sp)
  SD s11, 280(sp)
  ADD s0, a0, zero
  ADD t4, a1, zero
  SW t4, 180(sp)
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  ADD s6, a6, zero
  ADD s7, a7, zero
  ADDI t5, sp, 288
  ADD s8, t5, zero
  LW s9, 0(s8)
  ADDI s8, sp, 292
  LW s10, 0(s8)
  ADDI s8, sp, 296
  LW s11, 0(s8)
  ADDI s8, sp, 300
  LW t4, 0(s8)
  SW t4, 104(sp)
  ADDI s8, sp, 304
  LW t4, 0(s8)
  SW t4, 100(sp)
  ADDI s8, sp, 308
  LW t4, 0(s8)
  SW t4, 108(sp)
  ADDI s8, sp, 312
  LW t4, 0(s8)
  SW t4, 112(sp)
  ADDI s8, sp, 316
  LW t4, 0(s8)
  SW t4, 116(sp)
  ADDI s8, sp, 320
  LW t4, 0(s8)
  SW t4, 176(sp)
  ADDI s8, sp, 324
  LW t4, 0(s8)
  SW t4, 172(sp)
  ADDI s8, sp, 328
  LW t4, 0(s8)
  SW t4, 168(sp)
  ADDI s8, sp, 332
  LW t4, 0(s8)
  SW t4, 164(sp)
  ADDI s8, sp, 336
  LW t4, 0(s8)
  SW t4, 160(sp)
  ADDI s8, sp, 340
  LW t4, 0(s8)
  SW t4, 156(sp)
  ADDI s8, sp, 344
  LW t4, 0(s8)
  SW t4, 152(sp)
  ADDI s8, sp, 348
  LW t4, 0(s8)
  SW t4, 148(sp)
  ADDI s8, sp, 352
  LW t4, 0(s8)
  SW t4, 144(sp)
  ADDI s8, sp, 356
  LW t4, 0(s8)
  SW t4, 96(sp)
  ADDI s8, sp, 360
  LW t4, 0(s8)
  SW t4, 140(sp)
  ADDI s8, sp, 364
  LW t4, 0(s8)
  SW t4, 136(sp)
  ADDI s8, sp, 368
  LW t4, 0(s8)
  SW t4, 132(sp)
  ADDI s8, sp, 372
  LW t4, 0(s8)
  SW t4, 128(sp)
  ADDI s8, sp, 376
  LW t4, 0(s8)
  SW t4, 124(sp)
  ADDI s8, sp, 380
  LW t4, 0(s8)
  SW t4, 120(sp)
  XOR s8, s0, zero
  SLTIU s1, s8, 1
  BNE s1, zero, bb13
  # implict jump to bb12
bb12:
  ADDI s1, zero, 1
  SUBW s8, s0, s1
  LW t4, 180(sp)
  ADDW s0, t4, s2
  LUI s1, 243712
  ADDIW s1, s1, 1
  REMW s2, s0, s1
  ADD a0, s8, zero
  ADD a1, s2, zero
  ADD a2, s3, zero
  ADD a3, s4, zero
  ADD a4, s5, zero
  ADD a5, s6, zero
  ADD a6, s7, zero
  ADD a7, s9, zero
  ADDI t5, sp, 0
  ADD s0, t5, zero
  SW s10, 0(s0)
  ADDI s0, sp, 4
  SW s11, 0(s0)
  ADDI s0, sp, 8
  LW t4, 104(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 12
  LW t4, 100(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 16
  LW t4, 108(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 20
  LW t4, 112(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 24
  LW t4, 116(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 28
  LW t4, 176(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 32
  LW t4, 172(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 36
  LW t4, 168(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 40
  LW t4, 164(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 44
  LW t4, 160(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 48
  LW t4, 156(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 52
  LW t4, 152(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 56
  LW t4, 148(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 60
  LW t4, 144(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 64
  LW t4, 96(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 68
  LW t4, 140(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 72
  LW t4, 136(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 76
  LW t4, 132(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 80
  LW t4, 128(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 84
  LW t4, 124(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 88
  LW t4, 120(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 92
  SW zero, 0(s0)
  LW t4, 104(sp)
  LW t3, 100(sp)
  LW t4, 108(sp)
  LW t3, 112(sp)
  LW t4, 116(sp)
  LW t3, 176(sp)
  LW t4, 172(sp)
  LW t3, 168(sp)
  LW t4, 164(sp)
  LW t3, 160(sp)
  LW t4, 156(sp)
  LW t3, 152(sp)
  LW t4, 148(sp)
  LW t3, 144(sp)
  LW t4, 96(sp)
  LW t3, 140(sp)
  LW t4, 136(sp)
  LW t3, 132(sp)
  LW t4, 128(sp)
  LW t3, 124(sp)
  LW t4, 120(sp)
  CALL param32_rec
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 184(sp)
  LD s0, 192(sp)
  LD s1, 200(sp)
  LD s2, 208(sp)
  LD s3, 216(sp)
  LD s4, 224(sp)
  LD s5, 232(sp)
  LD s6, 240(sp)
  LD s7, 248(sp)
  LD s8, 256(sp)
  LD s9, 264(sp)
  LD s10, 272(sp)
  LD s11, 280(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb13:
  LW t4, 180(sp)
  ADD a0, t4, zero
  LD ra, 184(sp)
  LD s0, 192(sp)
  LD s1, 200(sp)
  LD s2, 208(sp)
  LD s3, 216(sp)
  LD s4, 224(sp)
  LD s5, 232(sp)
  LD s6, 240(sp)
  LD s7, 248(sp)
  LD s8, 256(sp)
  LD s9, 264(sp)
  LD s10, 272(sp)
  LD s11, 280(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -944
  SD ra, 264(sp)
  SD s0, 272(sp)
  SD s1, 280(sp)
  SD s2, 288(sp)
  SD s3, 296(sp)
  SD s4, 304(sp)
  SD s5, 312(sp)
  SD s6, 320(sp)
  SD s7, 328(sp)
  SD s8, 336(sp)
  SD s9, 456(sp)
  SD s10, 472(sp)
  SD s11, 480(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 188(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 192(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 196(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 200(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 156(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 204(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 152(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 148(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 144(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 136(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 132(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 124(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 120(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 116(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 112(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 108(sp)
  LW t4, 188(sp)
  SW t4, 744(sp)
  ADDI t4, sp, 748
  SD t4, 928(sp)
  LW t4, 192(sp)
  LD t3, 928(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 752
  SD t4, 920(sp)
  LW t4, 196(sp)
  LD t3, 920(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 756
  SD t4, 912(sp)
  LW t4, 200(sp)
  LD t3, 912(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 760
  SD t4, 904(sp)
  LW t4, 156(sp)
  LD t3, 904(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 764
  SD t4, 896(sp)
  LW t4, 204(sp)
  LD t3, 896(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 768
  SD t4, 808(sp)
  LW t4, 152(sp)
  LD t3, 808(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 772
  SD t4, 880(sp)
  LW t4, 148(sp)
  LD t3, 880(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 776
  SD t4, 872(sp)
  LW t4, 144(sp)
  LD t3, 872(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 780
  SD t4, 864(sp)
  LW t4, 136(sp)
  LD t3, 864(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 784
  SD t4, 856(sp)
  LW t4, 132(sp)
  LD t3, 856(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 788
  SD t4, 848(sp)
  LW t4, 124(sp)
  LD t3, 848(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 792
  SD t4, 840(sp)
  LW t4, 120(sp)
  LD t3, 840(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 796
  SD t4, 832(sp)
  LW t4, 116(sp)
  LD t3, 832(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 800
  SD t4, 824(sp)
  LW t4, 112(sp)
  LD t3, 824(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 804
  SD t4, 816(sp)
  LW t4, 108(sp)
  LD t3, 816(sp)
  SW t4, 0(t3)
  ADD t4, zero, zero
  SW t4, 180(sp)
  ADD t4, zero, zero
  SW t4, 184(sp)
  # implict jump to bb15
bb15:
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LW t4, 140(sp)
  SLTI s8, t4, 15
  BNE s8, zero, bb23
  # implict jump to bb16
bb16:
  LW s8, 744(sp)
  LD t4, 928(sp)
  LW s7, 0(t4)
  LD t4, 920(sp)
  LW s6, 0(t4)
  LD t4, 912(sp)
  LW s5, 0(t4)
  LD t4, 904(sp)
  LW s4, 0(t4)
  LD t4, 896(sp)
  LW s3, 0(t4)
  LD t4, 808(sp)
  LW s2, 0(t4)
  LD t4, 880(sp)
  LW s1, 0(t4)
  LD t4, 872(sp)
  LW s10, 0(t4)
  LD t4, 864(sp)
  LW s11, 0(t4)
  LD t4, 856(sp)
  LW s9, 0(t4)
  LD t4, 848(sp)
  LW s0, 0(t4)
  LD t3, 840(sp)
  LW t4, 0(t3)
  SW t4, 168(sp)
  LD t3, 832(sp)
  LW t4, 0(t3)
  SW t4, 164(sp)
  LD t3, 824(sp)
  LW t4, 0(t3)
  SW t4, 160(sp)
  LD t3, 816(sp)
  LW t4, 0(t3)
  SW t4, 96(sp)
  ADD a0, s8, zero
  ADD a1, s7, zero
  ADD a2, s6, zero
  ADD a3, s5, zero
  ADD a4, s4, zero
  ADD a5, s3, zero
  ADD a6, s2, zero
  ADD a7, s1, zero
  ADDI t5, sp, 0
  ADD s1, t5, zero
  SW s10, 0(s1)
  ADDI s1, sp, 4
  SW s11, 0(s1)
  ADDI s1, sp, 8
  SW s9, 0(s1)
  ADDI s1, sp, 12
  SW s0, 0(s1)
  ADDI s1, sp, 16
  LW t4, 168(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 20
  LW t4, 164(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 24
  LW t4, 160(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 28
  LW t4, 96(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 32
  LW t4, 188(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 36
  LW t4, 192(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 40
  LW t4, 196(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 44
  LW t4, 200(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 48
  LW t4, 156(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 52
  LW t4, 204(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 56
  LW t4, 152(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 60
  LW t4, 148(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 64
  LW t4, 144(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 68
  LW t4, 136(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 72
  LW t4, 132(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 76
  LW t4, 124(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 80
  LW t4, 120(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 84
  LW t4, 116(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 88
  LW t4, 112(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 92
  LW t4, 108(sp)
  SW t4, 0(s1)
  LW t4, 168(sp)
  LW t3, 164(sp)
  LW t4, 160(sp)
  LW t3, 96(sp)
  LW t4, 188(sp)
  LW t3, 192(sp)
  LW t4, 196(sp)
  LW t3, 200(sp)
  LW t4, 156(sp)
  LW t3, 204(sp)
  LW t4, 152(sp)
  LW t3, 148(sp)
  LW t4, 144(sp)
  LW t3, 136(sp)
  LW t4, 132(sp)
  LW t3, 124(sp)
  LW t4, 120(sp)
  LW t3, 116(sp)
  LW t4, 112(sp)
  LW t3, 108(sp)
  CALL param32_rec
  ADD s0, a0, zero
  SW s0, 488(sp)
  ADDI t4, sp, 492
  SD t4, 888(sp)
  LUI s0, 2
  ADDIW s0, s0, 656
  LD t4, 888(sp)
  SW s0, 0(t4)
  ADDI t4, zero, 62
  SW t4, 172(sp)
  # implict jump to bb17
bb17:
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t4, 128(sp)
  XOR s2, t4, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb22
  # implict jump to bb18
bb18:
  ADDI t4, zero, 1
  SW t4, 104(sp)
  # implict jump to bb19
bb19:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  LW t4, 100(sp)
  SLTI s4, t4, 32
  BNE s4, zero, bb21
  # implict jump to bb20
bb20:
  ADDI s4, sp, 496
  ADDI s5, sp, 504
  ADDI s6, sp, 512
  ADDI s7, sp, 520
  ADDI s8, sp, 528
  ADDI s9, sp, 536
  ADDI s10, sp, 544
  ADDI s11, sp, 552
  ADDI s0, sp, 560
  ADDI t4, sp, 568
  SD t4, 344(sp)
  ADDI t4, sp, 576
  SD t4, 352(sp)
  ADDI t4, sp, 584
  SD t4, 256(sp)
  ADDI t4, sp, 592
  SD t4, 216(sp)
  ADDI t4, sp, 600
  SD t4, 224(sp)
  ADDI t4, sp, 608
  SD t4, 232(sp)
  ADDI t4, sp, 616
  SD t4, 240(sp)
  ADDI t4, sp, 624
  SD t4, 248(sp)
  ADDI t4, sp, 632
  SD t4, 360(sp)
  ADDI t4, sp, 640
  SD t4, 464(sp)
  ADDI t4, sp, 648
  SD t4, 208(sp)
  ADDI t4, sp, 656
  SD t4, 448(sp)
  ADDI t4, sp, 664
  SD t4, 440(sp)
  ADDI t4, sp, 672
  SD t4, 432(sp)
  ADDI t4, sp, 680
  SD t4, 424(sp)
  ADDI t4, sp, 688
  SD t4, 416(sp)
  ADDI t4, sp, 696
  SD t4, 408(sp)
  ADDI t4, sp, 704
  SD t4, 400(sp)
  ADDI t4, sp, 712
  SD t4, 392(sp)
  ADDI t4, sp, 720
  SD t4, 384(sp)
  ADDI t4, sp, 728
  SD t4, 376(sp)
  ADDI t4, sp, 736
  SD t4, 368(sp)
  LW s3, 488(sp)
  LD t4, 888(sp)
  LW s2, 0(t4)
  ADDW s1, s3, s2
  LW s2, 0(s4)
  ADDW s3, s1, s2
  ADDI s1, sp, 500
  LW s2, 0(s1)
  ADDW s1, s3, s2
  LW s2, 0(s5)
  ADDW s3, s1, s2
  ADDI s1, sp, 508
  LW s2, 0(s1)
  ADDW s1, s3, s2
  LW s2, 0(s6)
  ADDW s3, s1, s2
  ADDI s1, sp, 516
  LW s2, 0(s1)
  ADDW s1, s3, s2
  LW s2, 0(s7)
  ADDW s3, s1, s2
  ADDI s1, sp, 524
  LW s2, 0(s1)
  ADDW s1, s3, s2
  LW s2, 0(s8)
  ADDW s3, s1, s2
  ADDI s1, sp, 532
  LW s2, 0(s1)
  ADDW s1, s3, s2
  LW s2, 0(s9)
  ADDW s3, s1, s2
  ADDI s1, sp, 540
  LW s2, 0(s1)
  ADDW s1, s3, s2
  LW s2, 0(s10)
  ADDW s3, s1, s2
  ADDI s1, sp, 548
  LW s2, 0(s1)
  ADDW s1, s3, s2
  LW s2, 0(s11)
  ADDW s3, s1, s2
  ADDI s1, sp, 556
  LW s2, 0(s1)
  ADDW s1, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, sp, 564
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LD t4, 344(sp)
  LW s0, 0(t4)
  ADDW s2, s1, s0
  ADDI s0, sp, 572
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 352(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 580
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 256(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 588
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 216(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 596
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 224(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 604
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 232(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 612
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 240(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 620
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 248(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 628
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 360(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 636
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 464(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 644
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 208(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 652
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 448(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 660
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 440(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 668
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 432(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 676
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 424(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 684
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 416(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 692
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 408(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 700
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 400(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 708
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 392(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 716
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 384(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 724
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 376(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 732
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 368(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 740
  LW s1, 0(s0)
  ADDW s0, s2, s1
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 264(sp)
  LD s0, 272(sp)
  LD s1, 280(sp)
  LD s2, 288(sp)
  LD s3, 296(sp)
  LD s4, 304(sp)
  LD s5, 312(sp)
  LD s6, 320(sp)
  LD s7, 328(sp)
  LD s8, 336(sp)
  LD s9, 456(sp)
  LD s10, 472(sp)
  LD s11, 480(sp)
  ADDI sp, sp, 944
  JALR zero, 0(ra)
bb21:
  LW t4, 100(sp)
  SLLIW s0, t4, 3
  ADDI t5, sp, 488
  ADD s1, t5, s0
  ADDI s0, zero, 1
  LW t4, 100(sp)
  SUBW s2, t4, s0
  SLLIW s0, s2, 3
  ADDI t5, sp, 488
  ADD s2, t5, s0
  ADDI s0, s2, 4
  LW s3, 0(s0)
  ADDI s0, zero, 1
  SUBW s4, s3, s0
  SW s4, 0(s1)
  ADDI s0, s1, 4
  LW s1, 0(s2)
  ADDI s2, zero, 2
  SUBW s3, s1, s2
  SW s3, 0(s0)
  LW t4, 100(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 104(sp)
  JAL zero, bb19
bb22:
  ADDI s0, zero, 1
  LW t4, 128(sp)
  SUBW s1, t4, s0
  SLLIW s0, s1, 2
  ADDIW s2, s0, 8
  ADDI t5, sp, 488
  ADD s0, t5, s2
  SW zero, 0(s0)
  ADD t4, s1, zero
  SW t4, 172(sp)
  JAL zero, bb17
bb23:
  LW t4, 140(sp)
  ADDIW s0, t4, 1
  LW t4, 176(sp)
  ADD s1, t4, zero
  ADD s2, s0, zero
  # implict jump to bb24
bb24:
  ADD s3, s2, zero
  ADD s4, s1, zero
  SLTI s5, s3, 16
  BNE s5, zero, bb26
  # implict jump to bb25
bb25:
  ADD t4, s4, zero
  SW t4, 180(sp)
  ADD t4, s0, zero
  SW t4, 184(sp)
  JAL zero, bb15
bb26:
  LW t4, 140(sp)
  SLLIW s5, t4, 2
  ADDI t5, sp, 744
  ADD s6, t5, s5
  LW s5, 0(s6)
  SLLIW s7, s3, 2
  ADDI t5, sp, 744
  ADD s8, t5, s7
  LW s7, 0(s8)
  SLT s9, s5, s7
  BNE s9, zero, bb29
  # implict jump to bb27
bb27:
  ADD s5, s4, zero
  # implict jump to bb28
bb28:
  ADD s4, s5, zero
  ADDIW s5, s3, 1
  ADD s1, s4, zero
  ADD s2, s5, zero
  JAL zero, bb24
bb29:
  LW s4, 0(s6)
  LW s7, 0(s8)
  SW s7, 0(s6)
  SW s4, 0(s8)
  ADD s5, s4, zero
  JAL zero, bb28
sort:
  ADDI sp, sp, -112
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
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADD s2, zero, zero
  ADD s4, zero, zero
  # implict jump to bb31
bb31:
  ADD s5, s4, zero
  ADD s6, s2, zero
  SLT s7, s5, s3
  BNE s7, zero, bb33
  # implict jump to bb32
bb32:
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
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb33:
  ADDIW s7, s5, 1
  ADD s8, s6, zero
  ADD s6, s7, zero
  # implict jump to bb34
bb34:
  ADD s9, s6, zero
  ADD s10, s8, zero
  SLT s11, s9, s1
  BNE s11, zero, bb36
  # implict jump to bb35
bb35:
  ADD s2, s10, zero
  ADD s4, s7, zero
  JAL zero, bb31
bb36:
  SLLIW s2, s5, 2
  ADD s4, s0, s2
  LW s2, 0(s4)
  SLLIW s11, s9, 2
  ADD t0, s0, s11
  LW s11, 0(t0)
  SLT t1, s2, s11
  BNE t1, zero, bb39
  # implict jump to bb37
bb37:
  ADD s2, s10, zero
  # implict jump to bb38
bb38:
  ADD s4, s2, zero
  ADDIW s2, s9, 1
  ADD s8, s4, zero
  ADD s6, s2, zero
  JAL zero, bb34
bb39:
  LW s10, 0(s4)
  LW s11, 0(t0)
  SW s11, 0(s4)
  SW s10, 0(t0)
  ADD s2, s10, zero
  JAL zero, bb38
