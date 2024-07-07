.global param16
.global param32_arr
.global param32_rec
.global main
.global sort
.section .bss
.section .data
.section .text
param16:
  ADDI sp, sp, -432
  SD ra, 328(sp)
  SD s3, 336(sp)
  SD s4, 344(sp)
  SD s5, 352(sp)
  SD s6, 360(sp)
  SD s7, 368(sp)
  SD s9, 376(sp)
  SD s10, 384(sp)
  SD s11, 392(sp)
  SD s8, 400(sp)
  SD s0, 408(sp)
  SD s1, 416(sp)
  SD s2, 424(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD t4, a3, zero
  SW t4, 256(sp)
  ADD t4, a4, zero
  SW t4, 248(sp)
  ADD t4, a5, zero
  SW t4, 240(sp)
  ADD t4, a6, zero
  SW t4, 232(sp)
  ADD t4, a7, zero
  SW t4, 224(sp)
  ADDI t5, sp, 432
  ADD s8, t5, zero
  LW t4, 0(s8)
  SW t4, 216(sp)
  ADDI s8, sp, 436
  LW t4, 0(s8)
  SW t4, 208(sp)
  ADDI s8, sp, 440
  LW t4, 0(s8)
  SW t4, 200(sp)
  ADDI s8, sp, 444
  LW t4, 0(s8)
  SW t4, 184(sp)
  ADDI s8, sp, 448
  LW t4, 0(s8)
  SW t4, 176(sp)
  ADDI s8, sp, 452
  LW t4, 0(s8)
  SW t4, 168(sp)
  ADDI s8, sp, 456
  LW t4, 0(s8)
  SW t4, 192(sp)
  ADDI s8, sp, 460
  LW t4, 0(s8)
  SW t4, 160(sp)
  ADDI t6, sp, 96
  ADD s8, t6, zero
  SW s0, 0(s8)
  ADDI s8, sp, 100
  SW s1, 0(s8)
  ADDI s8, sp, 104
  SW s2, 0(s8)
  ADDI s8, sp, 108
  LW t4, 256(sp)
  SW t4, 0(s8)
  ADDI s8, sp, 112
  LW t4, 248(sp)
  SW t4, 0(s8)
  ADDI s8, sp, 116
  LW t4, 240(sp)
  SW t4, 0(s8)
  ADDI s8, sp, 120
  LW t4, 232(sp)
  SW t4, 0(s8)
  ADDI s8, sp, 124
  LW t4, 224(sp)
  SW t4, 0(s8)
  ADDI s8, sp, 128
  LW t4, 216(sp)
  SW t4, 0(s8)
  ADDI s8, sp, 132
  LW t4, 208(sp)
  SW t4, 0(s8)
  ADDI s8, sp, 136
  LW t4, 200(sp)
  SW t4, 0(s8)
  ADDI s8, sp, 140
  LW t4, 184(sp)
  SW t4, 0(s8)
  ADDI s8, sp, 144
  LW t4, 176(sp)
  SW t4, 0(s8)
  ADDI s8, sp, 148
  LW t4, 168(sp)
  SW t4, 0(s8)
  ADDI s8, sp, 152
  LW t4, 192(sp)
  SW t4, 0(s8)
  ADDI s8, sp, 156
  LW t4, 160(sp)
  SW t4, 0(s8)
  ADDI a0, sp, 96
  ADD a0, a0, zero
  ADDI a1, zero, 16
  CALL sort
  ADDI t5, sp, 96
  ADD s8, t5, zero
  LW s11, 0(s8)
  ADDI s8, sp, 100
  LW s10, 0(s8)
  ADDI s8, sp, 104
  LW s9, 0(s8)
  ADDI s8, sp, 108
  LW s7, 0(s8)
  ADDI s8, sp, 112
  LW s6, 0(s8)
  ADDI s8, sp, 116
  LW s5, 0(s8)
  ADDI s8, sp, 120
  LW s4, 0(s8)
  ADDI s8, sp, 124
  LW s3, 0(s8)
  ADDI s8, sp, 128
  LW t4, 0(s8)
  SW t4, 264(sp)
  ADDI s8, sp, 132
  LW t4, 0(s8)
  SW t4, 272(sp)
  ADDI s8, sp, 136
  LW t4, 0(s8)
  SW t4, 280(sp)
  ADDI s8, sp, 140
  LW t4, 0(s8)
  SW t4, 288(sp)
  ADDI s8, sp, 144
  LW t4, 0(s8)
  SW t4, 296(sp)
  ADDI s8, sp, 148
  LW t4, 0(s8)
  SW t4, 304(sp)
  ADDI s8, sp, 152
  LW t4, 0(s8)
  SW t4, 312(sp)
  ADDI s8, sp, 156
  LW t4, 0(s8)
  SW t4, 320(sp)
  ADD a0, s11, zero
  ADD a1, s10, zero
  ADD a2, s9, zero
  ADD a3, s7, zero
  ADD a4, s6, zero
  ADD a5, s5, zero
  ADD a6, s4, zero
  ADD a7, s3, zero
  ADDI t6, sp, 0
  ADD s3, t6, zero
  LW t4, 264(sp)
  SW t4, 0(s3)
  ADDI s3, sp, 4
  LW t4, 272(sp)
  SW t4, 0(s3)
  ADDI s3, sp, 8
  LW t4, 280(sp)
  SW t4, 0(s3)
  ADDI s3, sp, 12
  LW t4, 288(sp)
  SW t4, 0(s3)
  ADDI s3, sp, 16
  LW t4, 296(sp)
  SW t4, 0(s3)
  ADDI s3, sp, 20
  LW t4, 304(sp)
  SW t4, 0(s3)
  ADDI s3, sp, 24
  LW t4, 312(sp)
  SW t4, 0(s3)
  ADDI s3, sp, 28
  LW t4, 320(sp)
  SW t4, 0(s3)
  ADDI s3, sp, 32
  SW s0, 0(s3)
  ADDI s3, sp, 36
  SW s1, 0(s3)
  ADDI s3, sp, 40
  SW s2, 0(s3)
  ADDI s3, sp, 44
  LW t4, 256(sp)
  SW t4, 0(s3)
  ADDI s3, sp, 48
  LW t4, 248(sp)
  SW t4, 0(s3)
  ADDI s3, sp, 52
  LW t4, 240(sp)
  SW t4, 0(s3)
  ADDI s3, sp, 56
  LW t4, 232(sp)
  SW t4, 0(s3)
  ADDI s3, sp, 60
  LW t4, 224(sp)
  SW t4, 0(s3)
  ADDI s3, sp, 64
  LW t4, 216(sp)
  SW t4, 0(s3)
  ADDI s3, sp, 68
  LW t4, 208(sp)
  SW t4, 0(s3)
  ADDI s3, sp, 72
  LW t4, 200(sp)
  SW t4, 0(s3)
  ADDI s3, sp, 76
  LW t4, 184(sp)
  SW t4, 0(s3)
  ADDI s3, sp, 80
  LW t4, 176(sp)
  SW t4, 0(s3)
  ADDI s3, sp, 84
  LW t4, 168(sp)
  SW t4, 0(s3)
  ADDI s3, sp, 88
  LW t4, 192(sp)
  SW t4, 0(s3)
  ADDI s3, sp, 92
  LW t4, 160(sp)
  SW t4, 0(s3)
  LW t4, 264(sp)
  LW t3, 272(sp)
  LW t4, 280(sp)
  LW t3, 288(sp)
  LW t4, 296(sp)
  LW t3, 304(sp)
  LW t4, 312(sp)
  LW t3, 320(sp)
  LW t4, 256(sp)
  LW t3, 248(sp)
  LW t4, 240(sp)
  LW t3, 232(sp)
  LW t4, 224(sp)
  LW t3, 216(sp)
  LW t4, 208(sp)
  LW t3, 200(sp)
  LW t4, 184(sp)
  LW t3, 176(sp)
  LW t4, 168(sp)
  LW t3, 192(sp)
  LW t4, 160(sp)
  CALL param32_rec
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 328(sp)
  LD s3, 336(sp)
  LD s4, 344(sp)
  LD s5, 352(sp)
  LD s6, 360(sp)
  LD s7, 368(sp)
  LD s9, 376(sp)
  LD s10, 384(sp)
  LD s11, 392(sp)
  LD s8, 400(sp)
  LD s0, 408(sp)
  LD s1, 416(sp)
  LD s2, 424(sp)
  ADDI sp, sp, 432
  JALR zero, 0(ra)
param32_arr:
  ADDI sp, sp, -192
  SD ra, 88(sp)
  SD s11, 96(sp)
  SD s10, 104(sp)
  SD s9, 112(sp)
  SD s8, 120(sp)
  SD s7, 128(sp)
  SD s6, 136(sp)
  SD s0, 144(sp)
  SD s5, 152(sp)
  SD s1, 160(sp)
  SD s2, 168(sp)
  SD s3, 176(sp)
  SD s4, 184(sp)
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
  LD t4, 0(s8)
  SD t4, 80(sp)
  ADDI s8, sp, 304
  LD t4, 0(s8)
  SD t4, 0(sp)
  ADDI s8, sp, 312
  LD t4, 0(s8)
  SD t4, 8(sp)
  ADDI s8, sp, 320
  LD t4, 0(s8)
  SD t4, 16(sp)
  ADDI s8, sp, 328
  LD t4, 0(s8)
  SD t4, 24(sp)
  ADDI s8, sp, 336
  LD t4, 0(s8)
  SD t4, 32(sp)
  ADDI s8, sp, 344
  LD t4, 0(s8)
  SD t4, 40(sp)
  ADDI s8, sp, 352
  LD t4, 0(s8)
  SD t4, 48(sp)
  ADDI s8, sp, 360
  LD t4, 0(s8)
  SD t4, 56(sp)
  ADDI s8, sp, 368
  LD t4, 0(s8)
  SD t4, 64(sp)
  ADDI s8, sp, 376
  LD t4, 0(s8)
  SD t4, 72(sp)
  ADD s8, s0, zero
  LW a7, 0(s8)
  ADDI s8, s0, 4
  LW s0, 0(s8)
  ADDW s8, a7, s0
  ADD s0, s1, zero
  LW a7, 0(s0)
  ADDW s0, s8, a7
  ADDI s8, s1, 4
  LW s1, 0(s8)
  ADDW s8, s0, s1
  ADD s0, s2, zero
  LW s1, 0(s0)
  ADDW s0, s8, s1
  ADDI s1, s2, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADD s0, s3, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, s3, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADD s0, s4, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, s4, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADD s0, s5, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, s5, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADD s0, s6, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, s6, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADD s0, s7, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, s7, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADD s0, s9, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, s9, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADD s0, s10, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, s10, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADD s0, s11, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, s11, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADD s0, ra, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, ra, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADD s0, t0, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, t0, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADD s0, t1, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, t1, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADD s0, t2, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, t2, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADD s0, a1, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, a1, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADD s0, a2, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, a2, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADD s0, a3, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, a3, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADD s0, a4, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, a4, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADD s0, a5, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, a5, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADD s0, a6, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, a6, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LD t4, 80(sp)
  ADD s0, t4, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LD t4, 80(sp)
  ADDI s1, t4, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LD t4, 0(sp)
  ADD s0, t4, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LD t4, 0(sp)
  ADDI s1, t4, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LD t4, 8(sp)
  ADD s0, t4, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LD t4, 8(sp)
  ADDI s1, t4, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LD t4, 16(sp)
  ADD s0, t4, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LD t4, 16(sp)
  ADDI s1, t4, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LD t4, 24(sp)
  ADD s0, t4, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LD t4, 24(sp)
  ADDI s1, t4, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LD t4, 32(sp)
  ADD s0, t4, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LD t4, 32(sp)
  ADDI s1, t4, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LD t4, 40(sp)
  ADD s0, t4, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LD t4, 40(sp)
  ADDI s1, t4, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LD t4, 48(sp)
  ADD s0, t4, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LD t4, 48(sp)
  ADDI s1, t4, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LD t4, 56(sp)
  ADD s0, t4, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LD t4, 56(sp)
  ADDI s1, t4, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LD t4, 64(sp)
  ADD s0, t4, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LD t4, 64(sp)
  ADDI s1, t4, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LD t4, 72(sp)
  ADD s0, t4, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LD t4, 72(sp)
  ADDI s1, t4, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADD a0, s1, zero
  LD ra, 88(sp)
  LD s11, 96(sp)
  LD s10, 104(sp)
  LD s9, 112(sp)
  LD s8, 120(sp)
  LD s7, 128(sp)
  LD s6, 136(sp)
  LD s0, 144(sp)
  LD s5, 152(sp)
  LD s1, 160(sp)
  LD s2, 168(sp)
  LD s3, 176(sp)
  LD s4, 184(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
param32_rec:
  ADDI sp, sp, -368
  SD ra, 264(sp)
  SD s11, 272(sp)
  SD s10, 280(sp)
  SD s9, 288(sp)
  SD s8, 296(sp)
  SD s7, 304(sp)
  SD s6, 312(sp)
  SD s0, 320(sp)
  SD s5, 328(sp)
  SD s1, 336(sp)
  SD s2, 344(sp)
  SD s3, 352(sp)
  SD s4, 360(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  ADD s6, a6, zero
  ADD s7, a7, zero
  ADDI t5, sp, 368
  ADD s8, t5, zero
  LW s9, 0(s8)
  ADDI s8, sp, 372
  LW s10, 0(s8)
  ADDI s8, sp, 376
  LW s11, 0(s8)
  ADDI s8, sp, 380
  LW t4, 0(s8)
  SW t4, 248(sp)
  ADDI s8, sp, 384
  LW t4, 0(s8)
  SW t4, 256(sp)
  ADDI s8, sp, 388
  LW t4, 0(s8)
  SW t4, 240(sp)
  ADDI s8, sp, 392
  LW t4, 0(s8)
  SW t4, 96(sp)
  ADDI s8, sp, 396
  LW t4, 0(s8)
  SW t4, 104(sp)
  ADDI s8, sp, 400
  LW t4, 0(s8)
  SW t4, 112(sp)
  ADDI s8, sp, 404
  LW t4, 0(s8)
  SW t4, 120(sp)
  ADDI s8, sp, 408
  LW t4, 0(s8)
  SW t4, 128(sp)
  ADDI s8, sp, 412
  LW t4, 0(s8)
  SW t4, 136(sp)
  ADDI s8, sp, 416
  LW t4, 0(s8)
  SW t4, 144(sp)
  ADDI s8, sp, 420
  LW t4, 0(s8)
  SW t4, 152(sp)
  ADDI s8, sp, 424
  LW t4, 0(s8)
  SW t4, 160(sp)
  ADDI s8, sp, 428
  LW t4, 0(s8)
  SW t4, 168(sp)
  ADDI s8, sp, 432
  LW t4, 0(s8)
  SW t4, 176(sp)
  ADDI s8, sp, 436
  LW t4, 0(s8)
  SW t4, 184(sp)
  ADDI s8, sp, 440
  LW t4, 0(s8)
  SW t4, 192(sp)
  ADDI s8, sp, 444
  LW t4, 0(s8)
  SW t4, 200(sp)
  ADDI s8, sp, 448
  LW t4, 0(s8)
  SW t4, 208(sp)
  ADDI s8, sp, 452
  LW t4, 0(s8)
  SW t4, 216(sp)
  ADDI s8, sp, 456
  LW t4, 0(s8)
  SW t4, 224(sp)
  ADDI s8, sp, 460
  LW t4, 0(s8)
  SW t4, 232(sp)
  XOR s8, s0, zero
  SLTIU t2, s8, 1
  BNE t2, zero, bb3
  JAL zero, bb4
bb3:
  ADD a0, s1, zero
  LD ra, 264(sp)
  LD s11, 272(sp)
  LD s10, 280(sp)
  LD s9, 288(sp)
  LD s8, 296(sp)
  LD s7, 304(sp)
  LD s6, 312(sp)
  LD s0, 320(sp)
  LD s5, 328(sp)
  LD s1, 336(sp)
  LD s2, 344(sp)
  LD s3, 352(sp)
  LD s4, 360(sp)
  ADDI sp, sp, 368
  JALR zero, 0(ra)
bb4:
  ADDI s8, zero, 1
  SUBW t2, s0, s8
  ADDW s0, s1, s2
  LUI s1, 243712
  ADDI s1, s1, 1
  REMW s2, s0, s1
  ADD a0, t2, zero
  ADD a1, s2, zero
  ADD a2, s3, zero
  ADD a3, s4, zero
  ADD a4, s5, zero
  ADD a5, s6, zero
  ADD a6, s7, zero
  ADD a7, s9, zero
  ADDI t6, sp, 0
  ADD s0, t6, zero
  SW s10, 0(s0)
  ADDI s0, sp, 4
  SW s11, 0(s0)
  ADDI s0, sp, 8
  LW t4, 248(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 12
  LW t4, 256(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 16
  LW t4, 240(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 20
  LW t4, 96(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 24
  LW t4, 104(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 28
  LW t4, 112(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 32
  LW t4, 120(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 36
  LW t4, 128(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 40
  LW t4, 136(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 44
  LW t4, 144(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 48
  LW t4, 152(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 52
  LW t4, 160(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 56
  LW t4, 168(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 60
  LW t4, 176(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 64
  LW t4, 184(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 68
  LW t4, 192(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 72
  LW t4, 200(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 76
  LW t4, 208(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 80
  LW t4, 216(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 84
  LW t4, 224(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 88
  LW t4, 232(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 92
  SW zero, 0(s0)
  LW t4, 248(sp)
  LW t3, 256(sp)
  LW t4, 240(sp)
  LW t3, 96(sp)
  LW t4, 104(sp)
  LW t3, 112(sp)
  LW t4, 120(sp)
  LW t3, 128(sp)
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
  CALL param32_rec
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 264(sp)
  LD s11, 272(sp)
  LD s10, 280(sp)
  LD s9, 288(sp)
  LD s8, 296(sp)
  LD s7, 304(sp)
  LD s6, 312(sp)
  LD s0, 320(sp)
  LD s5, 328(sp)
  LD s1, 336(sp)
  LD s2, 344(sp)
  LD s3, 352(sp)
  LD s4, 360(sp)
  ADDI sp, sp, 368
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -752
  SD ra, 640(sp)
  SD s11, 648(sp)
  SD s0, 656(sp)
  SD s5, 664(sp)
  SD s7, 672(sp)
  SD s10, 680(sp)
  SD s1, 688(sp)
  SD s6, 696(sp)
  SD s2, 704(sp)
  SD s3, 712(sp)
  SD s4, 720(sp)
  SD s8, 728(sp)
  SD s9, 736(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  CALL getint
  ADD s2, a0, zero
  CALL getint
  ADD s3, a0, zero
  CALL getint
  ADD s4, a0, zero
  CALL getint
  ADD s5, a0, zero
  CALL getint
  ADD s6, a0, zero
  CALL getint
  ADD s7, a0, zero
  CALL getint
  ADD s8, a0, zero
  CALL getint
  ADD s9, a0, zero
  CALL getint
  ADD s10, a0, zero
  CALL getint
  ADD s11, a0, zero
  CALL getint
  ADD t4, a0, zero
  SW t4, 448(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 456(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 464(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 472(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  ADD a4, s4, zero
  ADD a5, s5, zero
  ADD a6, s6, zero
  ADD a7, s7, zero
  ADDI t5, sp, 0
  ADD s0, t5, zero
  SW s8, 0(s0)
  ADDI s0, sp, 4
  SW s9, 0(s0)
  ADDI s0, sp, 8
  SW s10, 0(s0)
  ADDI s0, sp, 12
  SW s11, 0(s0)
  ADDI s0, sp, 16
  LW t4, 448(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 20
  LW t4, 456(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 24
  LW t4, 464(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 28
  LW t4, 472(sp)
  SW t4, 0(s0)
  LW t4, 448(sp)
  LW t3, 456(sp)
  LW t4, 464(sp)
  LW t3, 472(sp)
  CALL param16
  ADD s0, a0, zero
  ADDI t6, sp, 192
  ADD s1, t6, zero
  SW s0, 0(s1)
  ADDI s0, sp, 196
  LUI s1, 2
  ADDI s1, s1, 656
  SW s1, 0(s0)
  ADDI s0, zero, 62
  JAL zero, bb6
bb6:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb7
  JAL zero, bb8
bb7:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADDIW s1, s2, 8
  ADDI t5, sp, 192
  ADD s2, t5, s1
  SW zero, 0(s2)
  ADD s0, s3, zero
  JAL zero, bb6
bb8:
  ADDI s0, zero, 1
  JAL zero, bb9
bb9:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb10
  JAL zero, bb11
bb10:
  ADDI s2, zero, 8
  MULW s3, s1, s2
  ADDI t6, sp, 192
  ADD s2, t6, s3
  ADD s3, s2, zero
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s2, zero, 8
  MULW s5, s4, s2
  ADDI t5, sp, 192
  ADD s2, t5, s5
  ADDI s4, s2, 4
  LW s2, 0(s4)
  ADDI s4, zero, 1
  SUBW s5, s2, s4
  SW s5, 0(s3)
  ADDI s2, zero, 8
  MULW s3, s1, s2
  ADDI t6, sp, 192
  ADD s2, t6, s3
  ADDI s3, s2, 4
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s2, zero, 8
  MULW s5, s4, s2
  ADDI t5, sp, 192
  ADD s2, t5, s5
  ADD s4, s2, zero
  LW s2, 0(s4)
  ADDI s4, zero, 2
  SUBW s5, s2, s4
  SW s5, 0(s3)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb9
bb11:
  ADDI t6, sp, 192
  ADD s0, t6, zero
  ADDI s1, sp, 200
  ADDI s2, sp, 208
  ADDI s3, sp, 216
  ADDI s4, sp, 224
  ADDI s5, sp, 232
  ADDI s6, sp, 240
  ADDI s7, sp, 248
  ADDI s8, sp, 256
  ADDI s9, sp, 264
  ADDI s10, sp, 272
  ADDI s11, sp, 280
  ADDI t4, sp, 288
  SD t4, 480(sp)
  ADDI t4, sp, 296
  SD t4, 488(sp)
  ADDI t4, sp, 304
  SD t4, 496(sp)
  ADDI t4, sp, 312
  SD t4, 504(sp)
  ADDI t4, sp, 320
  SD t4, 512(sp)
  ADDI t4, sp, 328
  SD t4, 520(sp)
  ADDI t4, sp, 336
  SD t4, 528(sp)
  ADDI t4, sp, 344
  SD t4, 536(sp)
  ADDI t4, sp, 352
  SD t4, 544(sp)
  ADDI t4, sp, 360
  SD t4, 552(sp)
  ADDI t4, sp, 368
  SD t4, 560(sp)
  ADDI t4, sp, 376
  SD t4, 568(sp)
  ADDI t4, sp, 384
  SD t4, 576(sp)
  ADDI t4, sp, 392
  SD t4, 584(sp)
  ADDI t4, sp, 400
  SD t4, 592(sp)
  ADDI t4, sp, 408
  SD t4, 600(sp)
  ADDI t4, sp, 416
  SD t4, 608(sp)
  ADDI t4, sp, 424
  SD t4, 616(sp)
  ADDI t4, sp, 432
  SD t4, 624(sp)
  ADDI t4, sp, 440
  SD t4, 632(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  ADD a4, s4, zero
  ADD a5, s5, zero
  ADD a6, s6, zero
  ADD a7, s7, zero
  ADDI t5, sp, 0
  ADD s0, t5, zero
  SD s8, 0(s0)
  ADDI s0, sp, 8
  SD s9, 0(s0)
  ADDI s0, sp, 16
  SD s10, 0(s0)
  ADDI s0, sp, 24
  SD s11, 0(s0)
  ADDI s0, sp, 32
  LD t4, 480(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 40
  LD t4, 488(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 48
  LD t4, 496(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 56
  LD t4, 504(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 64
  LD t4, 512(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 72
  LD t4, 520(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 80
  LD t4, 528(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 88
  LD t4, 536(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 96
  LD t4, 544(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 104
  LD t4, 552(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 112
  LD t4, 560(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 120
  LD t4, 568(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 128
  LD t4, 576(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 136
  LD t4, 584(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 144
  LD t4, 592(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 152
  LD t4, 600(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 160
  LD t4, 608(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 168
  LD t4, 616(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 176
  LD t4, 624(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 184
  LD t4, 632(sp)
  SD t4, 0(s0)
  LD t4, 480(sp)
  LD t3, 488(sp)
  LD t4, 496(sp)
  LD t3, 504(sp)
  LD t4, 512(sp)
  LD t3, 520(sp)
  LD t4, 528(sp)
  LD t3, 536(sp)
  LD t4, 544(sp)
  LD t3, 552(sp)
  LD t4, 560(sp)
  LD t3, 568(sp)
  LD t4, 576(sp)
  LD t3, 584(sp)
  LD t4, 592(sp)
  LD t3, 600(sp)
  LD t4, 608(sp)
  LD t3, 616(sp)
  LD t4, 624(sp)
  LD t3, 632(sp)
  CALL param32_arr
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 640(sp)
  LD s11, 648(sp)
  LD s0, 656(sp)
  LD s5, 664(sp)
  LD s7, 672(sp)
  LD s10, 680(sp)
  LD s1, 688(sp)
  LD s6, 696(sp)
  LD s2, 704(sp)
  LD s3, 712(sp)
  LD s4, 720(sp)
  LD s8, 728(sp)
  LD s9, 736(sp)
  ADDI sp, sp, 752
  JALR zero, 0(ra)
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
  ADD s2, zero, zero
  ADD s3, zero, zero
  JAL zero, bb13
bb13:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADDI s6, zero, 1
  SUBW s7, s1, s6
  SLT s6, s4, s7
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb14
  JAL zero, bb15
bb14:
  ADDIW s6, s4, 1
  ADD s7, s5, zero
  ADD s5, s6, zero
  JAL zero, bb16
bb15:
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
bb16:
  ADD s6, s5, zero
  ADD s8, s7, zero
  SLT s9, s6, s1
  XOR s10, s9, zero
  SLTU s9, zero, s10
  BNE s9, zero, bb17
  JAL zero, bb18
bb17:
  ADDI s9, zero, 4
  MULW s10, s4, s9
  ADD s9, s0, s10
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s6, s9
  ADD s9, s0, s11
  LW s11, 0(s9)
  SLT s9, s10, s11
  BNE s9, zero, bb19
  JAL zero, bb21
bb18:
  ADDIW s5, s4, 1
  ADD s2, s8, zero
  ADD s3, s5, zero
  JAL zero, bb13
bb19:
  ADDI s9, zero, 4
  MULW s10, s4, s9
  ADD s9, s0, s10
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s4, s9
  ADD s9, s0, s11
  ADDI s11, zero, 4
  MULW t0, s6, s11
  ADD s11, s0, t0
  LW t0, 0(s11)
  SW t0, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s6, s9
  ADD s9, s0, s11
  SW s10, 0(s9)
  ADD s9, s10, zero
  JAL zero, bb20
bb20:
  ADD s10, s9, zero
  ADDIW s11, s6, 1
  ADD s7, s10, zero
  ADD s5, s11, zero
  JAL zero, bb16
bb21:
  ADD s9, s8, zero
  JAL zero, bb20
