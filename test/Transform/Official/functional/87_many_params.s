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
  SD s10, 352(sp)
  SD s11, 360(sp)
  ADD t4, a0, zero
  SW t4, 152(sp)
  ADD t4, a1, zero
  SW t4, 148(sp)
  ADD t4, a2, zero
  SW t4, 144(sp)
  ADD t4, a3, zero
  SW t4, 140(sp)
  ADD t4, a4, zero
  SW t4, 136(sp)
  ADD t4, a5, zero
  SW t4, 96(sp)
  ADD t4, a6, zero
  SW t4, 128(sp)
  ADD t4, a7, zero
  SW t4, 124(sp)
  ADDI t5, sp, 480
  ADD s8, t5, zero
  LW t4, 0(s8)
  SW t4, 120(sp)
  ADDI s9, sp, 484
  LW t4, 0(s9)
  SW t4, 116(sp)
  ADDI s10, sp, 488
  LW t4, 0(s10)
  SW t4, 112(sp)
  ADDI s11, sp, 492
  LW t4, 0(s11)
  SW t4, 108(sp)
  ADDI ra, sp, 496
  LW t4, 0(ra)
  SW t4, 104(sp)
  ADDI t0, sp, 500
  LW t4, 0(t0)
  SW t4, 100(sp)
  ADDI t1, sp, 504
  LW t4, 0(t1)
  SW t4, 132(sp)
  ADDI t2, sp, 508
  LW t4, 0(t2)
  SW t4, 168(sp)
  LW t4, 152(sp)
  SW t4, 288(sp)
  ADDI t4, sp, 292
  SD t4, 408(sp)
  LW t4, 148(sp)
  LD t3, 408(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 296
  SD t4, 368(sp)
  LW t4, 144(sp)
  LD t3, 368(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 300
  SD t4, 376(sp)
  LW t4, 140(sp)
  LD t3, 376(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 304
  SD t4, 384(sp)
  LW t4, 136(sp)
  LD t3, 384(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 308
  SD t4, 392(sp)
  LW t4, 96(sp)
  LD t3, 392(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 312
  SD t4, 400(sp)
  LW t4, 128(sp)
  LD t3, 400(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 316
  SD t4, 280(sp)
  LW t4, 124(sp)
  LD t3, 280(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 320
  SD t4, 416(sp)
  LW t4, 120(sp)
  LD t3, 416(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 324
  SD t4, 424(sp)
  LW t4, 116(sp)
  LD t3, 424(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 328
  SD t4, 432(sp)
  LW t4, 112(sp)
  LD t3, 432(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 332
  SD t4, 440(sp)
  LW t4, 108(sp)
  LD t3, 440(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 336
  SD t4, 448(sp)
  LW t4, 104(sp)
  LD t3, 448(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 340
  SD t4, 456(sp)
  LW t4, 100(sp)
  LD t3, 456(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 344
  SD t4, 464(sp)
  LW t4, 132(sp)
  LD t3, 464(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 348
  SD t4, 472(sp)
  LW t4, 168(sp)
  LD t3, 472(sp)
  SW t4, 0(t3)
  ADD t4, zero, zero
  SW t4, 164(sp)
  ADD t4, zero, zero
  SW t4, 160(sp)
  # implict jump to bb1
bb1:
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LW t4, 188(sp)
  SLTI s11, t4, 15
  BNE s11, zero, bb3
  # implict jump to bb2
bb2:
  LW s11, 288(sp)
  LD t4, 408(sp)
  LW s10, 0(t4)
  LD t4, 368(sp)
  LW s9, 0(t4)
  LD t4, 376(sp)
  LW s8, 0(t4)
  LD t4, 384(sp)
  LW s7, 0(t4)
  LD t4, 392(sp)
  LW s6, 0(t4)
  LD t4, 400(sp)
  LW s5, 0(t4)
  LD t4, 280(sp)
  LW s4, 0(t4)
  LD t4, 416(sp)
  LW s3, 0(t4)
  LD t4, 424(sp)
  LW s2, 0(t4)
  LD t4, 432(sp)
  LW s1, 0(t4)
  LD t4, 440(sp)
  LW s0, 0(t4)
  LD t3, 448(sp)
  LW t4, 0(t3)
  SW t4, 184(sp)
  LD t3, 456(sp)
  LW t4, 0(t3)
  SW t4, 172(sp)
  LD t3, 464(sp)
  LW t4, 0(t3)
  SW t4, 176(sp)
  LD t3, 472(sp)
  LW t4, 0(t3)
  SW t4, 180(sp)
  ADD a0, s11, zero
  ADD a1, s10, zero
  ADD a2, s9, zero
  ADD a3, s8, zero
  ADD a4, s7, zero
  ADD a5, s6, zero
  ADD a6, s5, zero
  ADD a7, s4, zero
  ADDI t5, sp, 0
  ADD s4, t5, zero
  SW s3, 0(s4)
  ADDI s4, sp, 4
  SW s2, 0(s4)
  ADDI s4, sp, 8
  SW s1, 0(s4)
  ADDI s4, sp, 12
  SW s0, 0(s4)
  ADDI s4, sp, 16
  LW t4, 184(sp)
  SW t4, 0(s4)
  ADDI s4, sp, 20
  LW t4, 172(sp)
  SW t4, 0(s4)
  ADDI s4, sp, 24
  LW t4, 176(sp)
  SW t4, 0(s4)
  ADDI s4, sp, 28
  LW t4, 180(sp)
  SW t4, 0(s4)
  ADDI s4, sp, 32
  LW t4, 152(sp)
  SW t4, 0(s4)
  ADDI s4, sp, 36
  LW t4, 148(sp)
  SW t4, 0(s4)
  ADDI s4, sp, 40
  LW t4, 144(sp)
  SW t4, 0(s4)
  ADDI s4, sp, 44
  LW t4, 140(sp)
  SW t4, 0(s4)
  ADDI s4, sp, 48
  LW t4, 136(sp)
  SW t4, 0(s4)
  ADDI s4, sp, 52
  LW t4, 96(sp)
  SW t4, 0(s4)
  ADDI s4, sp, 56
  LW t4, 128(sp)
  SW t4, 0(s4)
  ADDI s4, sp, 60
  LW t4, 124(sp)
  SW t4, 0(s4)
  ADDI s4, sp, 64
  LW t4, 120(sp)
  SW t4, 0(s4)
  ADDI s4, sp, 68
  LW t4, 116(sp)
  SW t4, 0(s4)
  ADDI s4, sp, 72
  LW t4, 112(sp)
  SW t4, 0(s4)
  ADDI s4, sp, 76
  LW t4, 108(sp)
  SW t4, 0(s4)
  ADDI s4, sp, 80
  LW t4, 104(sp)
  SW t4, 0(s4)
  ADDI s4, sp, 84
  LW t4, 100(sp)
  SW t4, 0(s4)
  ADDI s4, sp, 88
  LW t4, 132(sp)
  SW t4, 0(s4)
  ADDI s4, sp, 92
  LW t4, 168(sp)
  SW t4, 0(s4)
  LW t4, 184(sp)
  LW t3, 172(sp)
  LW t4, 176(sp)
  LW t3, 180(sp)
  LW t4, 152(sp)
  LW t3, 148(sp)
  LW t4, 144(sp)
  LW t3, 140(sp)
  LW t4, 136(sp)
  LW t3, 96(sp)
  LW t4, 128(sp)
  LW t3, 124(sp)
  LW t4, 120(sp)
  LW t3, 116(sp)
  LW t4, 112(sp)
  LW t3, 108(sp)
  LW t4, 104(sp)
  LW t3, 100(sp)
  LW t4, 132(sp)
  LW t3, 168(sp)
  CALL param32_rec
  ADD s0, a0, zero
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
  LD s10, 352(sp)
  LD s11, 360(sp)
  ADDI sp, sp, 480
  JALR zero, 0(ra)
bb3:
  LW t4, 188(sp)
  ADDIW s0, t4, 1
  LW t4, 188(sp)
  SLLIW s1, t4, 2
  ADDI t4, sp, 288
  ADD s1, t4, s1
  LW t4, 156(sp)
  ADD s2, t4, zero
  ADD s3, s0, zero
  # implict jump to bb4
bb4:
  ADD s4, s3, zero
  ADD s5, s2, zero
  SLTI s6, s4, 16
  BNE s6, zero, bb6
  # implict jump to bb5
bb5:
  ADD t4, s5, zero
  SW t4, 164(sp)
  ADD t4, s0, zero
  SW t4, 160(sp)
  JAL zero, bb1
bb6:
  LW s6, 0(s1)
  SLLIW s7, s4, 2
  ADDI t5, sp, 288
  ADD s7, t5, s7
  LW s8, 0(s7)
  BLT s6, s8, bb9
  # implict jump to bb7
bb7:
  # implict jump to bb8
bb8:
  ADDIW s4, s4, 1
  ADD s2, s5, zero
  ADD s3, s4, zero
  JAL zero, bb4
bb9:
  LW s6, 0(s1)
  LW s8, 0(s7)
  SW s8, 0(s1)
  SW s6, 0(s7)
  ADD s5, s6, zero
  JAL zero, bb8
param32_arr:
  ADDI sp, sp, -176
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
  ADDI t5, sp, 176
  ADD s1, t5, zero
  LD s1, 0(s1)
  ADDI s2, sp, 184
  LD s2, 0(s2)
  ADDI s3, sp, 192
  LD s3, 0(s3)
  ADDI s4, sp, 200
  LD s4, 0(s4)
  ADDI s5, sp, 208
  LD s5, 0(s5)
  ADDI s6, sp, 216
  LD s6, 0(s6)
  ADDI s7, sp, 224
  LD s7, 0(s7)
  ADDI s8, sp, 232
  LD s8, 0(s8)
  ADDI s9, sp, 240
  LD s9, 0(s9)
  ADDI s10, sp, 248
  LD s10, 0(s10)
  ADDI s11, sp, 256
  LD s11, 0(s11)
  ADDI ra, sp, 264
  LD ra, 0(ra)
  ADDI t0, sp, 272
  LD t0, 0(t0)
  ADDI t1, sp, 280
  LD t1, 0(t1)
  ADDI t2, sp, 288
  LD t2, 0(t2)
  ADDI t6, sp, 296
  LD t4, 0(t6)
  SD t4, 168(sp)
  ADDI t6, sp, 304
  LD t4, 0(t6)
  SD t4, 160(sp)
  ADDI t6, sp, 312
  LD t4, 0(t6)
  SD t4, 152(sp)
  ADDI t6, sp, 320
  LD t4, 0(t6)
  SD t4, 144(sp)
  ADDI t6, sp, 328
  LD t4, 0(t6)
  SD t4, 136(sp)
  ADDI t6, sp, 336
  LD t4, 0(t6)
  SD t4, 128(sp)
  ADDI t6, sp, 344
  LD t4, 0(t6)
  SD t4, 120(sp)
  ADDI t6, sp, 352
  LD t4, 0(t6)
  SD t4, 112(sp)
  ADDI t6, sp, 360
  LD t4, 0(t6)
  SD t4, 104(sp)
  LW t6, 0(s0)
  ADDI s0, s0, 4
  LW s0, 0(s0)
  ADDW s0, t6, s0
  LW t6, 0(a1)
  ADDW s0, s0, t6
  ADDI a1, a1, 4
  LW a1, 0(a1)
  ADDW s0, s0, a1
  LW a1, 0(a2)
  ADDW s0, s0, a1
  ADDI a1, a2, 4
  LW a1, 0(a1)
  ADDW s0, s0, a1
  LW a1, 0(a3)
  ADDW s0, s0, a1
  ADDI a1, a3, 4
  LW a1, 0(a1)
  ADDW s0, s0, a1
  LW a1, 0(a4)
  ADDW s0, s0, a1
  ADDI a1, a4, 4
  LW a1, 0(a1)
  ADDW s0, s0, a1
  LW a1, 0(a5)
  ADDW s0, s0, a1
  ADDI a1, a5, 4
  LW a1, 0(a1)
  ADDW s0, s0, a1
  LW a1, 0(a6)
  ADDW s0, s0, a1
  ADDI a1, a6, 4
  LW a1, 0(a1)
  ADDW s0, s0, a1
  LW a1, 0(a7)
  ADDW s0, s0, a1
  ADDI a1, a7, 4
  LW a1, 0(a1)
  ADDW s0, s0, a1
  LW a1, 0(s1)
  ADDW s0, s0, a1
  ADDI s1, s1, 4
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LW s1, 0(s2)
  ADDW s0, s0, s1
  ADDI s1, s2, 4
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LW s1, 0(s3)
  ADDW s0, s0, s1
  ADDI s1, s3, 4
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LW s1, 0(s4)
  ADDW s0, s0, s1
  ADDI s1, s4, 4
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LW s1, 0(s5)
  ADDW s0, s0, s1
  ADDI s1, s5, 4
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LW s1, 0(s6)
  ADDW s0, s0, s1
  ADDI s1, s6, 4
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LW s1, 0(s7)
  ADDW s0, s0, s1
  ADDI s1, s7, 4
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LW s1, 0(s8)
  ADDW s0, s0, s1
  ADDI s1, s8, 4
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LW s1, 0(s9)
  ADDW s0, s0, s1
  ADDI s1, s9, 4
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LW s1, 0(s10)
  ADDW s0, s0, s1
  ADDI s1, s10, 4
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LW s1, 0(s11)
  ADDW s0, s0, s1
  ADDI s1, s11, 4
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LW s1, 0(ra)
  ADDW s0, s0, s1
  ADDI s1, ra, 4
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LW s1, 0(t0)
  ADDW s0, s0, s1
  ADDI s1, t0, 4
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LW s1, 0(t1)
  ADDW s0, s0, s1
  ADDI s1, t1, 4
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LW s1, 0(t2)
  ADDW s0, s0, s1
  ADDI s1, t2, 4
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 168(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  LD t4, 168(sp)
  ADDI s1, t4, 4
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 160(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  LD t4, 160(sp)
  ADDI s1, t4, 4
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 152(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  LD t4, 152(sp)
  ADDI s1, t4, 4
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 144(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  LD t4, 144(sp)
  ADDI s1, t4, 4
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 136(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  LD t4, 136(sp)
  ADDI s1, t4, 4
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 128(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  LD t4, 128(sp)
  ADDI s1, t4, 4
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 120(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  LD t4, 120(sp)
  ADDI s1, t4, 4
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 112(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  LD t4, 112(sp)
  ADDI s1, t4, 4
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 104(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  LD t4, 104(sp)
  ADDI s1, t4, 4
  LW s1, 0(s1)
  ADDW s0, s0, s1
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
  ADDI sp, sp, 176
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
  SW t4, 176(sp)
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  ADD s6, a6, zero
  ADD s7, a7, zero
  ADDI t5, sp, 288
  ADD s8, t5, zero
  LW s8, 0(s8)
  ADDI s9, sp, 292
  LW s9, 0(s9)
  ADDI s10, sp, 296
  LW s10, 0(s10)
  ADDI s11, sp, 300
  LW s11, 0(s11)
  ADDI t0, sp, 304
  LW t4, 0(t0)
  SW t4, 100(sp)
  ADDI t1, sp, 308
  LW t4, 0(t1)
  SW t4, 112(sp)
  ADDI t2, sp, 312
  LW t4, 0(t2)
  SW t4, 108(sp)
  ADDI t6, sp, 316
  LW t4, 0(t6)
  SW t4, 104(sp)
  ADDI s1, sp, 320
  LW t4, 0(s1)
  SW t4, 172(sp)
  ADDI s1, sp, 324
  LW t4, 0(s1)
  SW t4, 168(sp)
  ADDI s1, sp, 328
  LW t4, 0(s1)
  SW t4, 164(sp)
  ADDI s1, sp, 332
  LW t4, 0(s1)
  SW t4, 160(sp)
  ADDI s1, sp, 336
  LW t4, 0(s1)
  SW t4, 156(sp)
  ADDI s1, sp, 340
  LW t4, 0(s1)
  SW t4, 152(sp)
  ADDI s1, sp, 344
  LW t4, 0(s1)
  SW t4, 148(sp)
  ADDI s1, sp, 348
  LW t4, 0(s1)
  SW t4, 144(sp)
  ADDI s1, sp, 352
  LW t4, 0(s1)
  SW t4, 96(sp)
  ADDI s1, sp, 356
  LW t4, 0(s1)
  SW t4, 140(sp)
  ADDI s1, sp, 360
  LW t4, 0(s1)
  SW t4, 136(sp)
  ADDI s1, sp, 364
  LW t4, 0(s1)
  SW t4, 132(sp)
  ADDI s1, sp, 368
  LW t4, 0(s1)
  SW t4, 128(sp)
  ADDI s1, sp, 372
  LW t4, 0(s1)
  SW t4, 124(sp)
  ADDI s1, sp, 376
  LW t4, 0(s1)
  SW t4, 120(sp)
  ADDI s1, sp, 380
  LW t4, 0(s1)
  SW t4, 116(sp)
  SLTIU s1, s0, 1
  BNE s1, zero, bb13
  # implict jump to bb12
bb12:
  ADDI s1, zero, 1
  SUBW s0, s0, s1
  LW t4, 176(sp)
  ADDW s1, t4, s2
  LUI s2, 243712
  ADDIW s2, s2, 1
  REMW s1, s1, s2
  ADD a0, s0, zero
  ADD a1, s1, zero
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
  LW t4, 100(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 16
  LW t4, 112(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 20
  LW t4, 108(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 24
  LW t4, 104(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 28
  LW t4, 172(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 32
  LW t4, 168(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 36
  LW t4, 164(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 40
  LW t4, 160(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 44
  LW t4, 156(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 48
  LW t4, 152(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 52
  LW t4, 148(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 56
  LW t4, 144(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 60
  LW t4, 96(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 64
  LW t4, 140(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 68
  LW t4, 136(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 72
  LW t4, 132(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 76
  LW t4, 128(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 80
  LW t4, 124(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 84
  LW t4, 120(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 88
  LW t4, 116(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 92
  SW zero, 0(s0)
  LW t4, 100(sp)
  LW t3, 112(sp)
  LW t4, 108(sp)
  LW t3, 104(sp)
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
  LW t3, 116(sp)
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
  LW t4, 176(sp)
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
  ADDI sp, sp, -928
  SD ra, 256(sp)
  SD s0, 264(sp)
  SD s1, 272(sp)
  SD s2, 280(sp)
  SD s3, 288(sp)
  SD s4, 296(sp)
  SD s5, 304(sp)
  SD s6, 312(sp)
  SD s7, 320(sp)
  SD s8, 328(sp)
  SD s9, 440(sp)
  SD s10, 464(sp)
  SD s11, 472(sp)
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
  SW t4, 140(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 136(sp)
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
  SW t4, 736(sp)
  ADDI t4, sp, 740
  SD t4, 920(sp)
  LW t4, 192(sp)
  LD t3, 920(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 744
  SD t4, 912(sp)
  LW t4, 196(sp)
  LD t3, 912(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 748
  SD t4, 904(sp)
  LW t4, 200(sp)
  LD t3, 904(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 752
  SD t4, 896(sp)
  LW t4, 156(sp)
  LD t3, 896(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 756
  SD t4, 888(sp)
  LW t4, 204(sp)
  LD t3, 888(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 760
  SD t4, 800(sp)
  LW t4, 152(sp)
  LD t3, 800(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 764
  SD t4, 872(sp)
  LW t4, 148(sp)
  LD t3, 872(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 768
  SD t4, 864(sp)
  LW t4, 144(sp)
  LD t3, 864(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 772
  SD t4, 856(sp)
  LW t4, 140(sp)
  LD t3, 856(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 776
  SD t4, 848(sp)
  LW t4, 136(sp)
  LD t3, 848(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 780
  SD t4, 840(sp)
  LW t4, 124(sp)
  LD t3, 840(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 784
  SD t4, 832(sp)
  LW t4, 120(sp)
  LD t3, 832(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 788
  SD t4, 824(sp)
  LW t4, 116(sp)
  LD t3, 824(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 792
  SD t4, 816(sp)
  LW t4, 112(sp)
  LD t3, 816(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 796
  SD t4, 808(sp)
  LW t4, 108(sp)
  LD t3, 808(sp)
  SW t4, 0(t3)
  ADD t4, zero, zero
  SW t4, 180(sp)
  ADD t4, zero, zero
  SW t4, 184(sp)
  # implict jump to bb15
bb15:
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LW t4, 172(sp)
  SLTI s7, t4, 15
  BNE s7, zero, bb23
  # implict jump to bb16
bb16:
  LW s7, 736(sp)
  LD t4, 920(sp)
  LW s6, 0(t4)
  LD t4, 912(sp)
  LW s5, 0(t4)
  LD t4, 904(sp)
  LW s4, 0(t4)
  LD t4, 896(sp)
  LW s3, 0(t4)
  LD t4, 888(sp)
  LW s2, 0(t4)
  LD t4, 800(sp)
  LW s1, 0(t4)
  LD t4, 872(sp)
  LW s10, 0(t4)
  LD t4, 864(sp)
  LW s11, 0(t4)
  LD t4, 856(sp)
  LW s8, 0(t4)
  LD t4, 848(sp)
  LW s9, 0(t4)
  LD t4, 840(sp)
  LW s0, 0(t4)
  LD t3, 832(sp)
  LW t4, 0(t3)
  SW t4, 164(sp)
  LD t3, 824(sp)
  LW t4, 0(t3)
  SW t4, 160(sp)
  LD t3, 816(sp)
  LW t4, 0(t3)
  SW t4, 96(sp)
  LD t3, 808(sp)
  LW t4, 0(t3)
  SW t4, 168(sp)
  ADD a0, s7, zero
  ADD a1, s6, zero
  ADD a2, s5, zero
  ADD a3, s4, zero
  ADD a4, s3, zero
  ADD a5, s2, zero
  ADD a6, s1, zero
  ADD a7, s10, zero
  ADDI t5, sp, 0
  ADD s1, t5, zero
  SW s11, 0(s1)
  ADDI s1, sp, 4
  SW s8, 0(s1)
  ADDI s1, sp, 8
  SW s9, 0(s1)
  ADDI s1, sp, 12
  SW s0, 0(s1)
  ADDI s1, sp, 16
  LW t4, 164(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 20
  LW t4, 160(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 24
  LW t4, 96(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 28
  LW t4, 168(sp)
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
  LW t4, 140(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 72
  LW t4, 136(sp)
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
  LW t4, 164(sp)
  LW t3, 160(sp)
  LW t4, 96(sp)
  LW t3, 168(sp)
  LW t4, 188(sp)
  LW t3, 192(sp)
  LW t4, 196(sp)
  LW t3, 200(sp)
  LW t4, 156(sp)
  LW t3, 204(sp)
  LW t4, 152(sp)
  LW t3, 148(sp)
  LW t4, 144(sp)
  LW t3, 140(sp)
  LW t4, 136(sp)
  LW t3, 124(sp)
  LW t4, 120(sp)
  LW t3, 116(sp)
  LW t4, 112(sp)
  LW t3, 108(sp)
  CALL param32_rec
  ADD s0, a0, zero
  SW s0, 480(sp)
  ADDI t4, sp, 484
  SD t4, 880(sp)
  LUI s0, 2
  ADDIW s0, s0, 656
  LD t4, 880(sp)
  SW s0, 0(t4)
  ADDI t4, zero, 62
  SW t4, 132(sp)
  # implict jump to bb17
bb17:
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t4, 128(sp)
  BNE t4, zero, bb22
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
  ADDI s4, sp, 488
  ADDI s5, sp, 496
  ADDI s6, sp, 504
  ADDI s7, sp, 512
  ADDI s8, sp, 520
  ADDI s9, sp, 528
  ADDI s10, sp, 536
  ADDI s11, sp, 544
  ADDI s0, sp, 552
  ADDI s1, sp, 560
  ADDI t4, sp, 568
  SD t4, 336(sp)
  ADDI t4, sp, 576
  SD t4, 344(sp)
  ADDI t4, sp, 584
  SD t4, 216(sp)
  ADDI t4, sp, 592
  SD t4, 224(sp)
  ADDI t4, sp, 600
  SD t4, 232(sp)
  ADDI t4, sp, 608
  SD t4, 240(sp)
  ADDI t4, sp, 616
  SD t4, 352(sp)
  ADDI t4, sp, 624
  SD t4, 456(sp)
  ADDI t4, sp, 632
  SD t4, 448(sp)
  ADDI t4, sp, 640
  SD t4, 208(sp)
  ADDI t4, sp, 648
  SD t4, 432(sp)
  ADDI t4, sp, 656
  SD t4, 424(sp)
  ADDI t4, sp, 664
  SD t4, 416(sp)
  ADDI t4, sp, 672
  SD t4, 408(sp)
  ADDI t4, sp, 680
  SD t4, 400(sp)
  ADDI t4, sp, 688
  SD t4, 392(sp)
  ADDI t4, sp, 696
  SD t4, 384(sp)
  ADDI t4, sp, 704
  SD t4, 376(sp)
  ADDI t4, sp, 712
  SD t4, 368(sp)
  ADDI t4, sp, 720
  SD t4, 360(sp)
  ADDI t4, sp, 728
  SD t4, 248(sp)
  LW s3, 480(sp)
  LD t4, 880(sp)
  LW s2, 0(t4)
  ADDW s2, s3, s2
  LW s3, 0(s4)
  ADDW s2, s2, s3
  ADDI s3, sp, 492
  LW s3, 0(s3)
  ADDW s2, s2, s3
  LW s3, 0(s5)
  ADDW s2, s2, s3
  ADDI s3, sp, 500
  LW s3, 0(s3)
  ADDW s2, s2, s3
  LW s3, 0(s6)
  ADDW s2, s2, s3
  ADDI s3, sp, 508
  LW s3, 0(s3)
  ADDW s2, s2, s3
  LW s3, 0(s7)
  ADDW s2, s2, s3
  ADDI s3, sp, 516
  LW s3, 0(s3)
  ADDW s2, s2, s3
  LW s3, 0(s8)
  ADDW s2, s2, s3
  ADDI s3, sp, 524
  LW s3, 0(s3)
  ADDW s2, s2, s3
  LW s3, 0(s9)
  ADDW s2, s2, s3
  ADDI s3, sp, 532
  LW s3, 0(s3)
  ADDW s2, s2, s3
  LW s3, 0(s10)
  ADDW s2, s2, s3
  ADDI s3, sp, 540
  LW s3, 0(s3)
  ADDW s2, s2, s3
  LW s3, 0(s11)
  ADDW s2, s2, s3
  ADDI s3, sp, 548
  LW s3, 0(s3)
  ADDW s2, s2, s3
  LW s0, 0(s0)
  ADDW s0, s2, s0
  ADDI s2, sp, 556
  LW s2, 0(s2)
  ADDW s0, s0, s2
  LW s1, 0(s1)
  ADDW s0, s0, s1
  ADDI s1, sp, 564
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 336(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 572
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 344(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 580
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 216(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 588
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 224(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 596
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 232(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 604
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 240(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 612
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 352(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 620
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 456(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 628
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 448(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 636
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 208(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 644
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 432(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 652
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 424(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 660
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 416(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 668
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 408(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 676
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 400(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 684
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 392(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 692
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 384(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 700
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 376(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 708
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 368(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 716
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 360(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 724
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 248(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 732
  LW s1, 0(s1)
  ADDW s0, s0, s1
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 256(sp)
  LD s0, 264(sp)
  LD s1, 272(sp)
  LD s2, 280(sp)
  LD s3, 288(sp)
  LD s4, 296(sp)
  LD s5, 304(sp)
  LD s6, 312(sp)
  LD s7, 320(sp)
  LD s8, 328(sp)
  LD s9, 440(sp)
  LD s10, 464(sp)
  LD s11, 472(sp)
  ADDI sp, sp, 928
  JALR zero, 0(ra)
bb21:
  LW t4, 100(sp)
  SLLIW s0, t4, 3
  ADDI t5, sp, 480
  ADD s0, t5, s0
  ADDI s1, zero, 1
  LW t4, 100(sp)
  SUBW s1, t4, s1
  SLLIW s1, s1, 3
  ADDI t5, sp, 480
  ADD s1, t5, s1
  ADDI s2, s1, 4
  LW s2, 0(s2)
  ADDI s3, zero, 1
  SUBW s2, s2, s3
  SW s2, 0(s0)
  ADDI s0, s0, 4
  LW s1, 0(s1)
  ADDI s2, zero, 2
  SUBW s1, s1, s2
  SW s1, 0(s0)
  LW t4, 100(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 104(sp)
  JAL zero, bb19
bb22:
  ADDI s0, zero, 1
  LW t4, 128(sp)
  SUBW s0, t4, s0
  SLLIW s1, s0, 2
  ADDIW s1, s1, 8
  ADDI t4, sp, 480
  ADD s1, t4, s1
  SW zero, 0(s1)
  ADD t4, s0, zero
  SW t4, 132(sp)
  JAL zero, bb17
bb23:
  LW t4, 172(sp)
  ADDIW s0, t4, 1
  LW t4, 172(sp)
  SLLIW s1, t4, 2
  ADDI t4, sp, 736
  ADD s1, t4, s1
  LW t4, 176(sp)
  ADD s2, t4, zero
  ADD s3, s0, zero
  # implict jump to bb24
bb24:
  ADD s4, s3, zero
  ADD s5, s2, zero
  SLTI s6, s4, 16
  BNE s6, zero, bb26
  # implict jump to bb25
bb25:
  ADD t4, s5, zero
  SW t4, 180(sp)
  ADD t4, s0, zero
  SW t4, 184(sp)
  JAL zero, bb15
bb26:
  LW s6, 0(s1)
  SLLIW s7, s4, 2
  ADDI t5, sp, 736
  ADD s7, t5, s7
  LW s8, 0(s7)
  BLT s6, s8, bb29
  # implict jump to bb27
bb27:
  # implict jump to bb28
bb28:
  ADDIW s4, s4, 1
  ADD s2, s5, zero
  ADD s3, s4, zero
  JAL zero, bb24
bb29:
  LW s6, 0(s1)
  LW s8, 0(s7)
  SW s8, 0(s1)
  SW s6, 0(s7)
  ADD s5, s6, zero
  JAL zero, bb28
sort:
  ADDI sp, sp, -96
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
  ADDI s0, zero, 1
  SUBW s0, a1, s0
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb31
bb31:
  ADD s3, s2, zero
  ADD s4, s1, zero
  BLT s3, s0, bb33
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
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb33:
  ADDIW s5, s3, 1
  SLLIW s3, s3, 2
  ADD s3, a0, s3
  ADD s6, s5, zero
  # implict jump to bb34
bb34:
  ADD s7, s6, zero
  ADD s8, s4, zero
  BLT s7, a1, bb36
  # implict jump to bb35
bb35:
  ADD s1, s8, zero
  ADD s2, s5, zero
  JAL zero, bb31
bb36:
  LW s1, 0(s3)
  SLLIW s2, s7, 2
  ADD s2, a0, s2
  LW s9, 0(s2)
  BLT s1, s9, bb39
  # implict jump to bb37
bb37:
  ADD s1, s8, zero
  # implict jump to bb38
bb38:
  ADDIW s2, s7, 1
  ADD s4, s1, zero
  ADD s6, s2, zero
  JAL zero, bb34
bb39:
  LW s8, 0(s3)
  LW s9, 0(s2)
  SW s9, 0(s3)
  SW s8, 0(s2)
  ADD s1, s8, zero
  JAL zero, bb38
