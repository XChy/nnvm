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
  SD s3, 368(sp)
  SD s4, 376(sp)
  SD s5, 384(sp)
  SD s6, 392(sp)
  SD s7, 400(sp)
  SD s9, 408(sp)
  SD s10, 416(sp)
  SD s11, 424(sp)
  SD ra, 432(sp)
  SD s2, 440(sp)
  SD s1, 448(sp)
  SD s8, 456(sp)
  SD s0, 464(sp)
  ADD t4, a0, zero
  SW t4, 344(sp)
  ADD t4, a1, zero
  SW t4, 340(sp)
  ADD t4, a2, zero
  SW t4, 336(sp)
  ADD t4, a3, zero
  SW t4, 332(sp)
  ADD t4, a4, zero
  SW t4, 328(sp)
  ADD t4, a5, zero
  SW t4, 324(sp)
  ADD t4, a6, zero
  SW t4, 320(sp)
  ADD t4, a7, zero
  SW t4, 316(sp)
  ADDI t5, sp, 480
  ADD s8, t5, zero
  LW t4, 0(s8)
  SW t4, 312(sp)
  ADDI s8, sp, 484
  LW t4, 0(s8)
  SW t4, 308(sp)
  ADDI s8, sp, 488
  LW t4, 0(s8)
  SW t4, 304(sp)
  ADDI s8, sp, 492
  LW t4, 0(s8)
  SW t4, 300(sp)
  ADDI s8, sp, 496
  LW t4, 0(s8)
  SW t4, 296(sp)
  ADDI s8, sp, 500
  LW t4, 0(s8)
  SW t4, 292(sp)
  ADDI s8, sp, 504
  LW t4, 0(s8)
  SW t4, 288(sp)
  ADDI s8, sp, 508
  LW t4, 0(s8)
  SW t4, 280(sp)
  LW t4, 344(sp)
  SW t4, 96(sp)
  ADDI t4, sp, 100
  SD t4, 272(sp)
  LW t4, 340(sp)
  LD t3, 272(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 104
  SD t4, 160(sp)
  LW t4, 336(sp)
  LD t3, 160(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 108
  SD t4, 168(sp)
  LW t4, 332(sp)
  LD t3, 168(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 112
  SD t4, 176(sp)
  LW t4, 328(sp)
  LD t3, 176(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 116
  SD t4, 184(sp)
  LW t4, 324(sp)
  LD t3, 184(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 120
  SD t4, 192(sp)
  LW t4, 320(sp)
  LD t3, 192(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 124
  SD t4, 200(sp)
  LW t4, 316(sp)
  LD t3, 200(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 128
  SD t4, 208(sp)
  LW t4, 312(sp)
  LD t3, 208(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 132
  SD t4, 216(sp)
  LW t4, 308(sp)
  LD t3, 216(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 136
  SD t4, 224(sp)
  LW t4, 304(sp)
  LD t3, 224(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 140
  SD t4, 232(sp)
  LW t4, 300(sp)
  LD t3, 232(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 144
  SD t4, 240(sp)
  LW t4, 296(sp)
  LD t3, 240(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 148
  SD t4, 248(sp)
  LW t4, 292(sp)
  LD t3, 248(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 152
  SD t4, 256(sp)
  LW t4, 288(sp)
  LD t3, 256(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 156
  SD t4, 264(sp)
  LW t4, 280(sp)
  LD t3, 264(sp)
  SW t4, 0(t3)
  ADD t4, zero, zero
  SW t4, 352(sp)
  ADD t4, zero, zero
  SW t4, 348(sp)
  # implict jump to bb1
bb1:
  LW t3, 348(sp)
  ADD t4, t3, zero
  SW t4, 284(sp)
  LW t3, 352(sp)
  ADD t4, t3, zero
  SW t4, 356(sp)
  LW t4, 284(sp)
  SLTI t1, t4, 15
  BNE t1, zero, bb3
  # implict jump to bb2
bb2:
  LW t1, 96(sp)
  LD t4, 272(sp)
  LW t0, 0(t4)
  LD t4, 160(sp)
  LW ra, 0(t4)
  LD t4, 168(sp)
  LW s11, 0(t4)
  LD t4, 176(sp)
  LW s10, 0(t4)
  LD t4, 184(sp)
  LW s9, 0(t4)
  LD t4, 192(sp)
  LW s7, 0(t4)
  LD t4, 200(sp)
  LW s6, 0(t4)
  LD t4, 208(sp)
  LW s5, 0(t4)
  LD t4, 216(sp)
  LW s4, 0(t4)
  LD t4, 224(sp)
  LW s3, 0(t4)
  LD t4, 232(sp)
  LW s2, 0(t4)
  LD t4, 240(sp)
  LW s1, 0(t4)
  LD t4, 248(sp)
  LW s0, 0(t4)
  LD t3, 256(sp)
  LW t4, 0(t3)
  SW t4, 360(sp)
  LD t4, 264(sp)
  LW s8, 0(t4)
  ADD a0, t1, zero
  ADD a1, t0, zero
  ADD a2, ra, zero
  ADD a3, s11, zero
  ADD a4, s10, zero
  ADD a5, s9, zero
  ADD a6, s7, zero
  ADD a7, s6, zero
  ADDI t5, sp, 0
  ADD s6, t5, zero
  SW s5, 0(s6)
  ADDI s6, sp, 4
  SW s4, 0(s6)
  ADDI s6, sp, 8
  SW s3, 0(s6)
  ADDI s6, sp, 12
  SW s2, 0(s6)
  ADDI s6, sp, 16
  SW s1, 0(s6)
  ADDI s6, sp, 20
  SW s0, 0(s6)
  ADDI s6, sp, 24
  LW t4, 360(sp)
  SW t4, 0(s6)
  ADDI s6, sp, 28
  SW s8, 0(s6)
  ADDI s6, sp, 32
  LW t4, 344(sp)
  SW t4, 0(s6)
  ADDI s6, sp, 36
  LW t4, 340(sp)
  SW t4, 0(s6)
  ADDI s6, sp, 40
  LW t4, 336(sp)
  SW t4, 0(s6)
  ADDI s6, sp, 44
  LW t4, 332(sp)
  SW t4, 0(s6)
  ADDI s6, sp, 48
  LW t4, 328(sp)
  SW t4, 0(s6)
  ADDI s6, sp, 52
  LW t4, 324(sp)
  SW t4, 0(s6)
  ADDI s6, sp, 56
  LW t4, 320(sp)
  SW t4, 0(s6)
  ADDI s6, sp, 60
  LW t4, 316(sp)
  SW t4, 0(s6)
  ADDI s6, sp, 64
  LW t4, 312(sp)
  SW t4, 0(s6)
  ADDI s6, sp, 68
  LW t4, 308(sp)
  SW t4, 0(s6)
  ADDI s6, sp, 72
  LW t4, 304(sp)
  SW t4, 0(s6)
  ADDI s6, sp, 76
  LW t4, 300(sp)
  SW t4, 0(s6)
  ADDI s6, sp, 80
  LW t4, 296(sp)
  SW t4, 0(s6)
  ADDI s6, sp, 84
  LW t4, 292(sp)
  SW t4, 0(s6)
  ADDI s6, sp, 88
  LW t4, 288(sp)
  SW t4, 0(s6)
  ADDI s6, sp, 92
  LW t4, 280(sp)
  SW t4, 0(s6)
  LW t4, 360(sp)
  LW t3, 344(sp)
  LW t4, 340(sp)
  LW t3, 336(sp)
  LW t4, 332(sp)
  LW t3, 328(sp)
  LW t4, 324(sp)
  LW t3, 320(sp)
  LW t4, 316(sp)
  LW t3, 312(sp)
  LW t4, 308(sp)
  LW t3, 304(sp)
  LW t4, 300(sp)
  LW t3, 296(sp)
  LW t4, 292(sp)
  LW t3, 288(sp)
  LW t4, 280(sp)
  CALL param32_rec
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD s3, 368(sp)
  LD s4, 376(sp)
  LD s5, 384(sp)
  LD s6, 392(sp)
  LD s7, 400(sp)
  LD s9, 408(sp)
  LD s10, 416(sp)
  LD s11, 424(sp)
  LD ra, 432(sp)
  LD s2, 440(sp)
  LD s1, 448(sp)
  LD s8, 456(sp)
  LD s0, 464(sp)
  ADDI sp, sp, 480
  JALR zero, 0(ra)
bb3:
  LW t4, 284(sp)
  ADDIW s0, t4, 1
  LW t4, 356(sp)
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
  SW t4, 352(sp)
  ADD t4, s0, zero
  SW t4, 348(sp)
  JAL zero, bb1
bb6:
  LW t4, 284(sp)
  SLLIW s5, t4, 2
  ADDI t5, sp, 96
  ADD s6, t5, s5
  LW s5, 0(s6)
  SLLIW s7, s3, 2
  ADDI t5, sp, 96
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
  SD t4, 72(sp)
  ADDI s8, sp, 312
  LD t4, 0(s8)
  SD t4, 0(sp)
  ADDI s8, sp, 320
  LD t4, 0(s8)
  SD t4, 8(sp)
  ADDI s8, sp, 328
  LD t4, 0(s8)
  SD t4, 16(sp)
  ADDI s8, sp, 336
  LD t4, 0(s8)
  SD t4, 24(sp)
  ADDI s8, sp, 344
  LD t4, 0(s8)
  SD t4, 32(sp)
  ADDI s8, sp, 352
  LD t4, 0(s8)
  SD t4, 40(sp)
  ADDI s8, sp, 360
  LD t4, 0(s8)
  SD t4, 48(sp)
  ADDI s8, sp, 368
  LD t4, 0(s8)
  SD t4, 56(sp)
  ADDI s8, sp, 376
  LD t4, 0(s8)
  SD t4, 64(sp)
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
  LD t4, 72(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  LD t4, 72(sp)
  ADDI s0, t4, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 0(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  LD t4, 0(sp)
  ADDI s0, t4, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 8(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  LD t4, 8(sp)
  ADDI s0, t4, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 16(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  LD t4, 16(sp)
  ADDI s0, t4, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 24(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  LD t4, 24(sp)
  ADDI s0, t4, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 32(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  LD t4, 32(sp)
  ADDI s0, t4, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 40(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  LD t4, 40(sp)
  ADDI s0, t4, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 48(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  LD t4, 48(sp)
  ADDI s0, t4, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 56(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  LD t4, 56(sp)
  ADDI s0, t4, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 64(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  LD t4, 64(sp)
  ADDI s0, t4, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  ADD a0, s0, zero
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
param32_rec:
  ADDI sp, sp, -288
  SD ra, 184(sp)
  SD s1, 192(sp)
  SD s11, 200(sp)
  SD s10, 208(sp)
  SD s9, 216(sp)
  SD s8, 224(sp)
  SD s7, 232(sp)
  SD s6, 240(sp)
  SD s0, 248(sp)
  SD s5, 256(sp)
  SD s2, 264(sp)
  SD s3, 272(sp)
  SD s4, 280(sp)
  ADD s0, a0, zero
  ADD t4, a1, zero
  SW t4, 96(sp)
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
  SW t4, 176(sp)
  ADDI s8, sp, 304
  LW t4, 0(s8)
  SW t4, 172(sp)
  ADDI s8, sp, 308
  LW t4, 0(s8)
  SW t4, 168(sp)
  ADDI s8, sp, 312
  LW t4, 0(s8)
  SW t4, 180(sp)
  ADDI s8, sp, 316
  LW t4, 0(s8)
  SW t4, 164(sp)
  ADDI s8, sp, 320
  LW t4, 0(s8)
  SW t4, 100(sp)
  ADDI s8, sp, 324
  LW t4, 0(s8)
  SW t4, 104(sp)
  ADDI s8, sp, 328
  LW t4, 0(s8)
  SW t4, 108(sp)
  ADDI s8, sp, 332
  LW t4, 0(s8)
  SW t4, 112(sp)
  ADDI s8, sp, 336
  LW t4, 0(s8)
  SW t4, 116(sp)
  ADDI s8, sp, 340
  LW t4, 0(s8)
  SW t4, 120(sp)
  ADDI s8, sp, 344
  LW t4, 0(s8)
  SW t4, 124(sp)
  ADDI s8, sp, 348
  LW t4, 0(s8)
  SW t4, 128(sp)
  ADDI s8, sp, 352
  LW t4, 0(s8)
  SW t4, 132(sp)
  ADDI s8, sp, 356
  LW t4, 0(s8)
  SW t4, 136(sp)
  ADDI s8, sp, 360
  LW t4, 0(s8)
  SW t4, 140(sp)
  ADDI s8, sp, 364
  LW t4, 0(s8)
  SW t4, 144(sp)
  ADDI s8, sp, 368
  LW t4, 0(s8)
  SW t4, 148(sp)
  ADDI s8, sp, 372
  LW t4, 0(s8)
  SW t4, 152(sp)
  ADDI s8, sp, 376
  LW t4, 0(s8)
  SW t4, 156(sp)
  ADDI s8, sp, 380
  LW t4, 0(s8)
  SW t4, 160(sp)
  XOR s8, s0, zero
  SLTIU s1, s8, 1
  BNE s1, zero, bb13
  # implict jump to bb12
bb12:
  ADDI s1, zero, 1
  SUBW s8, s0, s1
  LW t4, 96(sp)
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
  LW t4, 176(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 12
  LW t4, 172(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 16
  LW t4, 168(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 20
  LW t4, 180(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 24
  LW t4, 164(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 28
  LW t4, 100(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 32
  LW t4, 104(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 36
  LW t4, 108(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 40
  LW t4, 112(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 44
  LW t4, 116(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 48
  LW t4, 120(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 52
  LW t4, 124(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 56
  LW t4, 128(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 60
  LW t4, 132(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 64
  LW t4, 136(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 68
  LW t4, 140(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 72
  LW t4, 144(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 76
  LW t4, 148(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 80
  LW t4, 152(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 84
  LW t4, 156(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 88
  LW t4, 160(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 92
  SW zero, 0(s0)
  LW t4, 176(sp)
  LW t3, 172(sp)
  LW t4, 168(sp)
  LW t3, 180(sp)
  LW t4, 164(sp)
  LW t3, 100(sp)
  LW t4, 104(sp)
  LW t3, 108(sp)
  LW t4, 112(sp)
  LW t3, 116(sp)
  LW t4, 120(sp)
  LW t3, 124(sp)
  LW t4, 128(sp)
  LW t3, 132(sp)
  LW t4, 136(sp)
  LW t3, 140(sp)
  LW t4, 144(sp)
  LW t3, 148(sp)
  LW t4, 152(sp)
  LW t3, 156(sp)
  LW t4, 160(sp)
  CALL param32_rec
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 184(sp)
  LD s1, 192(sp)
  LD s11, 200(sp)
  LD s10, 208(sp)
  LD s9, 216(sp)
  LD s8, 224(sp)
  LD s7, 232(sp)
  LD s6, 240(sp)
  LD s0, 248(sp)
  LD s5, 256(sp)
  LD s2, 264(sp)
  LD s3, 272(sp)
  LD s4, 280(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb13:
  LW t4, 96(sp)
  ADD a0, t4, zero
  LD ra, 184(sp)
  LD s1, 192(sp)
  LD s11, 200(sp)
  LD s10, 208(sp)
  LD s9, 216(sp)
  LD s8, 224(sp)
  LD s7, 232(sp)
  LD s6, 240(sp)
  LD s0, 248(sp)
  LD s5, 256(sp)
  LD s2, 264(sp)
  LD s3, 272(sp)
  LD s4, 280(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -944
  SD ra, 840(sp)
  SD s11, 848(sp)
  SD s10, 856(sp)
  SD s7, 864(sp)
  SD s2, 872(sp)
  SD s3, 880(sp)
  SD s0, 888(sp)
  SD s5, 896(sp)
  SD s1, 904(sp)
  SD s6, 912(sp)
  SD s4, 920(sp)
  SD s8, 928(sp)
  SD s9, 936(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 604(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 600(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 596(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 592(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 588(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 584(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 580(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 576(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 572(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 564(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 560(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 416(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 420(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 424(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 428(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 432(sp)
  LW t4, 604(sp)
  SW t4, 96(sp)
  ADDI t4, sp, 100
  SD t4, 440(sp)
  LW t4, 600(sp)
  LD t3, 440(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 104
  SD t4, 448(sp)
  LW t4, 596(sp)
  LD t3, 448(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 108
  SD t4, 456(sp)
  LW t4, 592(sp)
  LD t3, 456(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 112
  SD t4, 464(sp)
  LW t4, 588(sp)
  LD t3, 464(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 116
  SD t4, 472(sp)
  LW t4, 584(sp)
  LD t3, 472(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 120
  SD t4, 480(sp)
  LW t4, 580(sp)
  LD t3, 480(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 124
  SD t4, 488(sp)
  LW t4, 576(sp)
  LD t3, 488(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 128
  SD t4, 496(sp)
  LW t4, 572(sp)
  LD t3, 496(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 132
  SD t4, 504(sp)
  LW t4, 564(sp)
  LD t3, 504(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 136
  SD t4, 512(sp)
  LW t4, 560(sp)
  LD t3, 512(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 140
  SD t4, 520(sp)
  LW t4, 416(sp)
  LD t3, 520(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 144
  SD t4, 528(sp)
  LW t4, 420(sp)
  LD t3, 528(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 148
  SD t4, 536(sp)
  LW t4, 424(sp)
  LD t3, 536(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 152
  SD t4, 544(sp)
  LW t4, 428(sp)
  LD t3, 544(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 156
  SD t4, 552(sp)
  LW t4, 432(sp)
  LD t3, 552(sp)
  SW t4, 0(t3)
  ADD t4, zero, zero
  SW t4, 612(sp)
  ADD t4, zero, zero
  SW t4, 608(sp)
  # implict jump to bb15
bb15:
  LW t3, 608(sp)
  ADD t4, t3, zero
  SW t4, 568(sp)
  LW t3, 612(sp)
  ADD t4, t3, zero
  SW t4, 616(sp)
  LW t4, 568(sp)
  SLTI s8, t4, 15
  BNE s8, zero, bb23
  # implict jump to bb16
bb16:
  LW s8, 96(sp)
  LD t4, 440(sp)
  LW s7, 0(t4)
  LD t4, 448(sp)
  LW s6, 0(t4)
  LD t4, 456(sp)
  LW s5, 0(t4)
  LD t4, 464(sp)
  LW s4, 0(t4)
  LD t4, 472(sp)
  LW s3, 0(t4)
  LD t4, 480(sp)
  LW s2, 0(t4)
  LD t4, 488(sp)
  LW s1, 0(t4)
  LD t4, 496(sp)
  LW s10, 0(t4)
  LD t4, 504(sp)
  LW s11, 0(t4)
  LD t4, 512(sp)
  LW s9, 0(t4)
  LD t4, 520(sp)
  LW s0, 0(t4)
  LD t3, 528(sp)
  LW t4, 0(t3)
  SW t4, 632(sp)
  LD t3, 536(sp)
  LW t4, 0(t3)
  SW t4, 636(sp)
  LD t3, 544(sp)
  LW t4, 0(t3)
  SW t4, 640(sp)
  LD t3, 552(sp)
  LW t4, 0(t3)
  SW t4, 644(sp)
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
  LW t4, 632(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 20
  LW t4, 636(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 24
  LW t4, 640(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 28
  LW t4, 644(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 32
  LW t4, 604(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 36
  LW t4, 600(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 40
  LW t4, 596(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 44
  LW t4, 592(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 48
  LW t4, 588(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 52
  LW t4, 584(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 56
  LW t4, 580(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 60
  LW t4, 576(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 64
  LW t4, 572(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 68
  LW t4, 564(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 72
  LW t4, 560(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 76
  LW t4, 416(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 80
  LW t4, 420(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 84
  LW t4, 424(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 88
  LW t4, 428(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 92
  LW t4, 432(sp)
  SW t4, 0(s1)
  LW t4, 632(sp)
  LW t3, 636(sp)
  LW t4, 640(sp)
  LW t3, 644(sp)
  LW t4, 604(sp)
  LW t3, 600(sp)
  LW t4, 596(sp)
  LW t3, 592(sp)
  LW t4, 588(sp)
  LW t3, 584(sp)
  LW t4, 580(sp)
  LW t3, 576(sp)
  LW t4, 572(sp)
  LW t3, 564(sp)
  LW t4, 560(sp)
  LW t3, 416(sp)
  LW t4, 420(sp)
  LW t3, 424(sp)
  LW t4, 428(sp)
  LW t3, 432(sp)
  CALL param32_rec
  ADD s0, a0, zero
  SW s0, 160(sp)
  ADDI t4, sp, 164
  SD t4, 624(sp)
  LUI s0, 2
  ADDIW s0, s0, 656
  LD t4, 624(sp)
  SW s0, 0(t4)
  ADDI t4, zero, 62
  SW t4, 648(sp)
  # implict jump to bb17
bb17:
  LW t3, 648(sp)
  ADD t4, t3, zero
  SW t4, 652(sp)
  LW t4, 652(sp)
  XOR s2, t4, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb22
  # implict jump to bb18
bb18:
  ADDI t4, zero, 1
  SW t4, 656(sp)
  # implict jump to bb19
bb19:
  LW t3, 656(sp)
  ADD t4, t3, zero
  SW t4, 660(sp)
  LW t4, 660(sp)
  SLTI s4, t4, 32
  BNE s4, zero, bb21
  # implict jump to bb20
bb20:
  ADDI s4, sp, 168
  ADDI s5, sp, 176
  ADDI s6, sp, 184
  ADDI s7, sp, 192
  ADDI s8, sp, 200
  ADDI s9, sp, 208
  ADDI s10, sp, 216
  ADDI s11, sp, 224
  ADDI s0, sp, 232
  ADDI t4, sp, 240
  SD t4, 832(sp)
  ADDI t4, sp, 248
  SD t4, 824(sp)
  ADDI t4, sp, 256
  SD t4, 816(sp)
  ADDI t4, sp, 264
  SD t4, 664(sp)
  ADDI t4, sp, 272
  SD t4, 672(sp)
  ADDI t4, sp, 280
  SD t4, 680(sp)
  ADDI t4, sp, 288
  SD t4, 688(sp)
  ADDI t4, sp, 296
  SD t4, 696(sp)
  ADDI t4, sp, 304
  SD t4, 704(sp)
  ADDI t4, sp, 312
  SD t4, 712(sp)
  ADDI t4, sp, 320
  SD t4, 720(sp)
  ADDI t4, sp, 328
  SD t4, 728(sp)
  ADDI t4, sp, 336
  SD t4, 736(sp)
  ADDI t4, sp, 344
  SD t4, 744(sp)
  ADDI t4, sp, 352
  SD t4, 752(sp)
  ADDI t4, sp, 360
  SD t4, 760(sp)
  ADDI t4, sp, 368
  SD t4, 768(sp)
  ADDI t4, sp, 376
  SD t4, 776(sp)
  ADDI t4, sp, 384
  SD t4, 784(sp)
  ADDI t4, sp, 392
  SD t4, 792(sp)
  ADDI t4, sp, 400
  SD t4, 800(sp)
  ADDI t4, sp, 408
  SD t4, 808(sp)
  LW s3, 160(sp)
  LD t4, 624(sp)
  LW s2, 0(t4)
  ADDW s1, s3, s2
  LW s2, 0(s4)
  ADDW s3, s1, s2
  ADDI s1, sp, 172
  LW s2, 0(s1)
  ADDW s1, s3, s2
  LW s2, 0(s5)
  ADDW s3, s1, s2
  ADDI s1, sp, 180
  LW s2, 0(s1)
  ADDW s1, s3, s2
  LW s2, 0(s6)
  ADDW s3, s1, s2
  ADDI s1, sp, 188
  LW s2, 0(s1)
  ADDW s1, s3, s2
  LW s2, 0(s7)
  ADDW s3, s1, s2
  ADDI s1, sp, 196
  LW s2, 0(s1)
  ADDW s1, s3, s2
  LW s2, 0(s8)
  ADDW s3, s1, s2
  ADDI s1, sp, 204
  LW s2, 0(s1)
  ADDW s1, s3, s2
  LW s2, 0(s9)
  ADDW s3, s1, s2
  ADDI s1, sp, 212
  LW s2, 0(s1)
  ADDW s1, s3, s2
  LW s2, 0(s10)
  ADDW s3, s1, s2
  ADDI s1, sp, 220
  LW s2, 0(s1)
  ADDW s1, s3, s2
  LW s2, 0(s11)
  ADDW s3, s1, s2
  ADDI s1, sp, 228
  LW s2, 0(s1)
  ADDW s1, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, sp, 236
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LD t4, 832(sp)
  LW s0, 0(t4)
  ADDW s2, s1, s0
  ADDI s0, sp, 244
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 824(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 252
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 816(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 260
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 664(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 268
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 672(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 276
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 680(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 284
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 688(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 292
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 696(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 300
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 704(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 308
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 712(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 316
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 720(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 324
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 728(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 332
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 736(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 340
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 744(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 348
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 752(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 356
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 760(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 364
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 768(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 372
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 776(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 380
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 784(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 388
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 792(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 396
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 800(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 404
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 808(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 412
  LW s1, 0(s0)
  ADDW s0, s2, s1
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 840(sp)
  LD s11, 848(sp)
  LD s10, 856(sp)
  LD s7, 864(sp)
  LD s2, 872(sp)
  LD s3, 880(sp)
  LD s0, 888(sp)
  LD s5, 896(sp)
  LD s1, 904(sp)
  LD s6, 912(sp)
  LD s4, 920(sp)
  LD s8, 928(sp)
  LD s9, 936(sp)
  ADDI sp, sp, 944
  JALR zero, 0(ra)
bb21:
  LW t4, 660(sp)
  SLLIW s0, t4, 3
  ADDI t5, sp, 160
  ADD s1, t5, s0
  ADDI s0, zero, 1
  LW t4, 660(sp)
  SUBW s2, t4, s0
  SLLIW s0, s2, 3
  ADDI t5, sp, 160
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
  LW t4, 660(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 656(sp)
  JAL zero, bb19
bb22:
  ADDI s0, zero, 1
  LW t4, 652(sp)
  SUBW s1, t4, s0
  SLLIW s0, s1, 2
  ADDIW s2, s0, 8
  ADDI t5, sp, 160
  ADD s0, t5, s2
  SW zero, 0(s0)
  ADD t4, s1, zero
  SW t4, 648(sp)
  JAL zero, bb17
bb23:
  LW t4, 568(sp)
  ADDIW s0, t4, 1
  LW t4, 616(sp)
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
  SW t4, 612(sp)
  ADD t4, s0, zero
  SW t4, 608(sp)
  JAL zero, bb15
bb26:
  LW t4, 568(sp)
  SLLIW s5, t4, 2
  ADDI t5, sp, 96
  ADD s6, t5, s5
  LW s5, 0(s6)
  SLLIW s7, s3, 2
  ADDI t5, sp, 96
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
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s9, 16(sp)
  SD s0, 24(sp)
  SD s5, 32(sp)
  SD s7, 40(sp)
  SD s1, 48(sp)
  SD s6, 56(sp)
  SD s8, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD ra, 96(sp)
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
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s7, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s8, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD ra, 96(sp)
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
