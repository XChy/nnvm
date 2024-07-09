.global param16
.global param32_arr
.global param32_rec
.global main
.global sort
.section .bss
.section .data
.section .text
param16:
  ADDI sp, sp, -528
  SD ra, 416(sp)
  SD s11, 424(sp)
  SD s10, 432(sp)
  SD s9, 440(sp)
  SD s7, 448(sp)
  SD s6, 456(sp)
  SD s5, 464(sp)
  SD s4, 472(sp)
  SD s3, 480(sp)
  SD s2, 488(sp)
  SD s1, 496(sp)
  SD s0, 504(sp)
  SD s8, 512(sp)
  ADD t4, a0, zero
  SW t4, 280(sp)
  ADD t4, a1, zero
  SW t4, 272(sp)
  ADD t4, a2, zero
  SW t4, 264(sp)
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
  ADDI t5, sp, 528
  ADD s8, t5, zero
  LW t4, 0(s8)
  SW t4, 216(sp)
  ADDI s8, sp, 532
  LW t4, 0(s8)
  SW t4, 208(sp)
  ADDI s8, sp, 536
  LW t4, 0(s8)
  SW t4, 200(sp)
  ADDI s8, sp, 540
  LW t4, 0(s8)
  SW t4, 192(sp)
  ADDI s8, sp, 544
  LW t4, 0(s8)
  SW t4, 184(sp)
  ADDI s8, sp, 548
  LW t4, 0(s8)
  SW t4, 176(sp)
  ADDI s8, sp, 552
  LW t4, 0(s8)
  SW t4, 168(sp)
  ADDI s8, sp, 556
  LW t4, 0(s8)
  SW t4, 160(sp)
  LW t4, 280(sp)
  SW t4, 96(sp)
  ADDI s8, sp, 100
  LW t4, 272(sp)
  SW t4, 0(s8)
  ADDI t2, sp, 104
  LW t4, 264(sp)
  SW t4, 0(t2)
  ADDI t1, sp, 108
  LW t4, 256(sp)
  SW t4, 0(t1)
  ADDI t4, sp, 112
  SD t4, 376(sp)
  LW t4, 248(sp)
  LD t3, 376(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 116
  SD t4, 368(sp)
  LW t4, 240(sp)
  LD t3, 368(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 120
  SD t4, 360(sp)
  LW t4, 232(sp)
  LD t3, 360(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 124
  SD t4, 352(sp)
  LW t4, 224(sp)
  LD t3, 352(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 128
  SD t4, 344(sp)
  LW t4, 216(sp)
  LD t3, 344(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 132
  SD t4, 336(sp)
  LW t4, 208(sp)
  LD t3, 336(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 136
  SD t4, 328(sp)
  LW t4, 200(sp)
  LD t3, 328(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 140
  SD t4, 320(sp)
  LW t4, 192(sp)
  LD t3, 320(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 144
  SD t4, 312(sp)
  LW t4, 184(sp)
  LD t3, 312(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 148
  SD t4, 304(sp)
  LW t4, 176(sp)
  LD t3, 304(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 152
  SD t4, 296(sp)
  LW t4, 168(sp)
  LD t3, 296(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 156
  SD t4, 288(sp)
  LW t4, 160(sp)
  LD t3, 288(sp)
  SW t4, 0(t3)
  JAL zero, bb1
bb1:
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb2
bb2:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s2, 15
  BNE s4, zero, bb3
  JAL zero, bb4
bb3:
  ADDIW s4, s2, 1
  ADD s5, s3, zero
  ADD s3, s4, zero
  JAL zero, bb5
bb4:
  LW s0, 96(sp)
  LW s1, 0(s8)
  LW s2, 0(t2)
  LW s3, 0(t1)
  LD t4, 376(sp)
  LW s4, 0(t4)
  LD t4, 368(sp)
  LW s5, 0(t4)
  LD t4, 360(sp)
  LW s6, 0(t4)
  LD t4, 352(sp)
  LW s7, 0(t4)
  LD t4, 344(sp)
  LW s8, 0(t4)
  LD t4, 336(sp)
  LW s9, 0(t4)
  LD t4, 328(sp)
  LW s10, 0(t4)
  LD t4, 320(sp)
  LW s11, 0(t4)
  LD t3, 312(sp)
  LW t4, 0(t3)
  SW t4, 400(sp)
  LD t3, 304(sp)
  LW t4, 0(t3)
  SW t4, 408(sp)
  LD t3, 296(sp)
  LW t4, 0(t3)
  SW t4, 384(sp)
  LD t3, 288(sp)
  LW t4, 0(t3)
  SW t4, 392(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  ADD a4, s4, zero
  ADD a5, s5, zero
  ADD a6, s6, zero
  ADD a7, s7, zero
  ADDI t6, sp, 0
  ADD s0, t6, zero
  SW s8, 0(s0)
  ADDI s0, sp, 4
  SW s9, 0(s0)
  ADDI s0, sp, 8
  SW s10, 0(s0)
  ADDI s0, sp, 12
  SW s11, 0(s0)
  ADDI s0, sp, 16
  LW t4, 400(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 20
  LW t4, 408(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 24
  LW t4, 384(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 28
  LW t4, 392(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 32
  LW t4, 280(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 36
  LW t4, 272(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 40
  LW t4, 264(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 44
  LW t4, 256(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 48
  LW t4, 248(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 52
  LW t4, 240(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 56
  LW t4, 232(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 60
  LW t4, 224(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 64
  LW t4, 216(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 68
  LW t4, 208(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 72
  LW t4, 200(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 76
  LW t4, 192(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 80
  LW t4, 184(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 84
  LW t4, 176(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 88
  LW t4, 168(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 92
  LW t4, 160(sp)
  SW t4, 0(s0)
  LW t4, 400(sp)
  LW t3, 408(sp)
  LW t4, 384(sp)
  LW t3, 392(sp)
  LW t4, 280(sp)
  LW t3, 272(sp)
  LW t4, 264(sp)
  LW t3, 256(sp)
  LW t4, 248(sp)
  LW t3, 240(sp)
  LW t4, 232(sp)
  LW t3, 224(sp)
  LW t4, 216(sp)
  LW t3, 208(sp)
  LW t4, 200(sp)
  LW t3, 192(sp)
  LW t4, 184(sp)
  LW t3, 176(sp)
  LW t4, 168(sp)
  LW t3, 160(sp)
  CALL param32_rec
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 416(sp)
  LD s11, 424(sp)
  LD s10, 432(sp)
  LD s9, 440(sp)
  LD s7, 448(sp)
  LD s6, 456(sp)
  LD s5, 464(sp)
  LD s4, 472(sp)
  LD s3, 480(sp)
  LD s2, 488(sp)
  LD s1, 496(sp)
  LD s0, 504(sp)
  LD s8, 512(sp)
  ADDI sp, sp, 528
  JALR zero, 0(ra)
bb5:
  ADD s6, s3, zero
  ADD s7, s5, zero
  SLTI s9, s6, 16
  BNE s9, zero, bb6
  JAL zero, bb7
bb6:
  ADDI s9, zero, 4
  MULW s10, s2, s9
  ADDI t5, sp, 96
  ADD s9, t5, s10
  LW s10, 0(s9)
  ADDI s11, zero, 4
  MULW ra, s6, s11
  ADDI t6, sp, 96
  ADD s11, t6, ra
  LW ra, 0(s11)
  SLT t0, s10, ra
  BNE t0, zero, bb8
  JAL zero, bb10
bb7:
  ADD s0, s7, zero
  ADD s1, s4, zero
  JAL zero, bb2
bb8:
  LW s10, 0(s9)
  LW ra, 0(s11)
  SW ra, 0(s9)
  SW s10, 0(s11)
  ADD s9, s10, zero
  JAL zero, bb9
bb9:
  ADD s10, s9, zero
  ADDIW s11, s6, 1
  ADD s5, s10, zero
  ADD s3, s11, zero
  JAL zero, bb5
bb10:
  ADD s9, s7, zero
  JAL zero, bb9
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
  LW s8, 0(s0)
  ADDI a7, s0, 4
  LW s0, 0(a7)
  ADDW a7, s8, s0
  LW s0, 0(s1)
  ADDW s8, a7, s0
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
  LD t4, 80(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  LD t4, 80(sp)
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
  LD t4, 72(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  LD t4, 72(sp)
  ADDI s0, t4, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  ADD a0, s0, zero
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
  BNE t2, zero, bb13
  JAL zero, bb14
bb13:
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
bb14:
  ADDI s8, zero, 1
  SUBW t2, s0, s8
  ADDW s0, s1, s2
  LUI s1, 243712
  ADDIW s1, s1, 1
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
  ADDI sp, sp, -992
  SD ra, 888(sp)
  SD s9, 896(sp)
  SD s10, 904(sp)
  SD s7, 912(sp)
  SD s1, 920(sp)
  SD s6, 928(sp)
  SD s0, 936(sp)
  SD s5, 944(sp)
  SD s2, 952(sp)
  SD s3, 960(sp)
  SD s4, 968(sp)
  SD s8, 976(sp)
  SD s11, 984(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 544(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 536(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 528(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 520(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 512(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 504(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 496(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 488(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 480(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 472(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 464(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 456(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 424(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 432(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 440(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 448(sp)
  LW t4, 544(sp)
  SW t4, 96(sp)
  ADDI t4, sp, 100
  SD t4, 664(sp)
  LW t4, 536(sp)
  LD t3, 664(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 104
  SD t4, 656(sp)
  LW t4, 528(sp)
  LD t3, 656(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 108
  SD t4, 648(sp)
  LW t4, 520(sp)
  LD t3, 648(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 112
  SD t4, 640(sp)
  LW t4, 512(sp)
  LD t3, 640(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 116
  SD t4, 632(sp)
  LW t4, 504(sp)
  LD t3, 632(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 120
  SD t4, 624(sp)
  LW t4, 496(sp)
  LD t3, 624(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 124
  SD t4, 616(sp)
  LW t4, 488(sp)
  LD t3, 616(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 128
  SD t4, 608(sp)
  LW t4, 480(sp)
  LD t3, 608(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 132
  SD t4, 600(sp)
  LW t4, 472(sp)
  LD t3, 600(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 136
  SD t4, 592(sp)
  LW t4, 464(sp)
  LD t3, 592(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 140
  SD t4, 584(sp)
  LW t4, 456(sp)
  LD t3, 584(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 144
  SD t4, 576(sp)
  LW t4, 424(sp)
  LD t3, 576(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 148
  SD t4, 552(sp)
  LW t4, 432(sp)
  LD t3, 552(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 152
  SD t4, 560(sp)
  LW t4, 440(sp)
  LD t3, 560(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 156
  SD t4, 568(sp)
  LW t4, 448(sp)
  LD t3, 568(sp)
  SW t4, 0(t3)
  JAL zero, bb22
bb16:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb17
  JAL zero, bb18
bb17:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADDIW s1, s2, 8
  ADDI t5, sp, 160
  ADD s2, t5, s1
  SW zero, 0(s2)
  ADD s0, s3, zero
  JAL zero, bb16
bb18:
  ADDI s0, zero, 1
  JAL zero, bb19
bb19:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  BNE s2, zero, bb20
  JAL zero, bb21
bb20:
  ADDI s2, zero, 8
  MULW s3, s1, s2
  ADDI t6, sp, 160
  ADD s2, t6, s3
  ADDI s3, zero, 1
  SUBW s4, s1, s3
  ADDI s3, zero, 8
  MULW s5, s4, s3
  ADDI t5, sp, 160
  ADD s3, t5, s5
  ADDI s4, s3, 4
  LW s5, 0(s4)
  ADDI s4, zero, 1
  SUBW s6, s5, s4
  SW s6, 0(s2)
  ADDI s4, s2, 4
  LW s2, 0(s3)
  ADDI s3, zero, 2
  SUBW s5, s2, s3
  SW s5, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb19
bb21:
  ADDI s0, sp, 168
  ADDI s1, sp, 176
  ADDI s2, sp, 184
  ADDI s3, sp, 192
  ADDI s4, sp, 200
  ADDI s5, sp, 208
  ADDI s6, sp, 216
  ADDI s7, sp, 224
  ADDI s8, sp, 232
  ADDI t4, sp, 240
  SD t4, 880(sp)
  ADDI t4, sp, 248
  SD t4, 872(sp)
  ADDI t4, sp, 256
  SD t4, 864(sp)
  ADDI t4, sp, 264
  SD t4, 712(sp)
  ADDI t4, sp, 272
  SD t4, 720(sp)
  ADDI t4, sp, 280
  SD t4, 728(sp)
  ADDI t4, sp, 288
  SD t4, 736(sp)
  ADDI t4, sp, 296
  SD t4, 744(sp)
  ADDI t4, sp, 304
  SD t4, 752(sp)
  ADDI t4, sp, 312
  SD t4, 760(sp)
  ADDI t4, sp, 320
  SD t4, 768(sp)
  ADDI t4, sp, 328
  SD t4, 776(sp)
  ADDI t4, sp, 336
  SD t4, 784(sp)
  ADDI t4, sp, 344
  SD t4, 792(sp)
  ADDI t4, sp, 352
  SD t4, 800(sp)
  ADDI t4, sp, 360
  SD t4, 808(sp)
  ADDI t4, sp, 368
  SD t4, 816(sp)
  ADDI t4, sp, 376
  SD t4, 824(sp)
  ADDI t4, sp, 384
  SD t4, 832(sp)
  ADDI t4, sp, 392
  SD t4, 840(sp)
  ADDI t4, sp, 400
  SD t4, 848(sp)
  ADDI t4, sp, 408
  SD t4, 856(sp)
  LW s11, 160(sp)
  LD t4, 416(sp)
  LW s10, 0(t4)
  ADDW s9, s11, s10
  LW s10, 0(s0)
  ADDW s0, s9, s10
  ADDI s9, sp, 172
  LW s10, 0(s9)
  ADDW s9, s0, s10
  LW s0, 0(s1)
  ADDW s1, s9, s0
  ADDI s0, sp, 180
  LW s9, 0(s0)
  ADDW s0, s1, s9
  LW s1, 0(s2)
  ADDW s2, s0, s1
  ADDI s0, sp, 188
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LW s1, 0(s3)
  ADDW s2, s0, s1
  ADDI s0, sp, 196
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LW s1, 0(s4)
  ADDW s2, s0, s1
  ADDI s0, sp, 204
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LW s1, 0(s5)
  ADDW s2, s0, s1
  ADDI s0, sp, 212
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LW s1, 0(s6)
  ADDW s2, s0, s1
  ADDI s0, sp, 220
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LW s1, 0(s7)
  ADDW s2, s0, s1
  ADDI s0, sp, 228
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LW s1, 0(s8)
  ADDW s2, s0, s1
  ADDI s0, sp, 236
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 880(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 244
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 872(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 252
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 864(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 260
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 712(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 268
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 720(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 276
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 728(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 284
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 736(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 292
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 744(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 300
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 752(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 308
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 760(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 316
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 768(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 324
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 776(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 332
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 784(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 340
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 792(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 348
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 800(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 356
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 808(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 364
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 816(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 372
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 824(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 380
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 832(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 388
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 840(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 396
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 848(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 404
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 856(sp)
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
  LD ra, 888(sp)
  LD s9, 896(sp)
  LD s10, 904(sp)
  LD s7, 912(sp)
  LD s1, 920(sp)
  LD s6, 928(sp)
  LD s0, 936(sp)
  LD s5, 944(sp)
  LD s2, 952(sp)
  LD s3, 960(sp)
  LD s4, 968(sp)
  LD s8, 976(sp)
  LD s11, 984(sp)
  ADDI sp, sp, 992
  JALR zero, 0(ra)
bb22:
  ADD s1, zero, zero
  ADD s2, zero, zero
  JAL zero, bb23
bb23:
  ADD s3, s2, zero
  ADD s4, s1, zero
  SLTI s5, s3, 15
  BNE s5, zero, bb24
  JAL zero, bb25
bb24:
  ADDIW t4, s3, 1
  SW t4, 672(sp)
  ADD s6, s4, zero
  LW t4, 672(sp)
  ADD s4, t4, zero
  JAL zero, bb26
bb25:
  LW s0, 96(sp)
  LD t4, 664(sp)
  LW s1, 0(t4)
  LD t4, 656(sp)
  LW s2, 0(t4)
  LD t4, 648(sp)
  LW s3, 0(t4)
  LD t4, 640(sp)
  LW s4, 0(t4)
  LD t4, 632(sp)
  LW s5, 0(t4)
  LD t4, 624(sp)
  LW s6, 0(t4)
  LD t4, 616(sp)
  LW s7, 0(t4)
  LD t4, 608(sp)
  LW s8, 0(t4)
  LD t4, 600(sp)
  LW s9, 0(t4)
  LD t4, 592(sp)
  LW s10, 0(t4)
  LD t4, 584(sp)
  LW s11, 0(t4)
  LD t3, 576(sp)
  LW t4, 0(t3)
  SW t4, 680(sp)
  LD t3, 552(sp)
  LW t4, 0(t3)
  SW t4, 688(sp)
  LD t3, 560(sp)
  LW t4, 0(t3)
  SW t4, 696(sp)
  LD t3, 568(sp)
  LW t4, 0(t3)
  SW t4, 704(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  ADD a4, s4, zero
  ADD a5, s5, zero
  ADD a6, s6, zero
  ADD a7, s7, zero
  ADDI t6, sp, 0
  ADD s0, t6, zero
  SW s8, 0(s0)
  ADDI s0, sp, 4
  SW s9, 0(s0)
  ADDI s0, sp, 8
  SW s10, 0(s0)
  ADDI s0, sp, 12
  SW s11, 0(s0)
  ADDI s0, sp, 16
  LW t4, 680(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 20
  LW t4, 688(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 24
  LW t4, 696(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 28
  LW t4, 704(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 32
  LW t4, 544(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 36
  LW t4, 536(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 40
  LW t4, 528(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 44
  LW t4, 520(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 48
  LW t4, 512(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 52
  LW t4, 504(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 56
  LW t4, 496(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 60
  LW t4, 488(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 64
  LW t4, 480(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 68
  LW t4, 472(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 72
  LW t4, 464(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 76
  LW t4, 456(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 80
  LW t4, 424(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 84
  LW t4, 432(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 88
  LW t4, 440(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 92
  LW t4, 448(sp)
  SW t4, 0(s0)
  LW t4, 680(sp)
  LW t3, 688(sp)
  LW t4, 696(sp)
  LW t3, 704(sp)
  LW t4, 544(sp)
  LW t3, 536(sp)
  LW t4, 528(sp)
  LW t3, 520(sp)
  LW t4, 512(sp)
  LW t3, 504(sp)
  LW t4, 496(sp)
  LW t3, 488(sp)
  LW t4, 480(sp)
  LW t3, 472(sp)
  LW t4, 464(sp)
  LW t3, 456(sp)
  LW t4, 424(sp)
  LW t3, 432(sp)
  LW t4, 440(sp)
  LW t3, 448(sp)
  CALL param32_rec
  ADD s0, a0, zero
  SW s0, 160(sp)
  ADDI t4, sp, 164
  SD t4, 416(sp)
  LUI s0, 2
  ADDIW s0, s0, 656
  LD t4, 416(sp)
  SW s0, 0(t4)
  ADDI s0, zero, 62
  JAL zero, bb16
bb26:
  ADD s7, s4, zero
  ADD s8, s6, zero
  SLTI s9, s7, 16
  BNE s9, zero, bb27
  JAL zero, bb28
bb27:
  ADDI s9, zero, 4
  MULW s10, s3, s9
  ADDI t5, sp, 96
  ADD s9, t5, s10
  LW s10, 0(s9)
  ADDI s11, zero, 4
  MULW s0, s7, s11
  ADDI t6, sp, 96
  ADD s11, t6, s0
  LW s0, 0(s11)
  SLT s5, s10, s0
  BNE s5, zero, bb29
  JAL zero, bb31
bb28:
  ADD s1, s8, zero
  LW t4, 672(sp)
  ADD s2, t4, zero
  JAL zero, bb23
bb29:
  LW s0, 0(s9)
  LW s5, 0(s11)
  SW s5, 0(s9)
  SW s0, 0(s11)
  ADD s5, s0, zero
  JAL zero, bb30
bb30:
  ADD s0, s5, zero
  ADDIW s9, s7, 1
  ADD s6, s0, zero
  ADD s4, s9, zero
  JAL zero, bb26
bb31:
  ADD s5, s8, zero
  JAL zero, bb30
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
  JAL zero, bb33
bb33:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADDI s6, zero, 1
  SUBW s7, s1, s6
  SLT s6, s4, s7
  BNE s6, zero, bb34
  JAL zero, bb35
bb34:
  ADDIW s6, s4, 1
  ADD s7, s5, zero
  ADD s5, s6, zero
  JAL zero, bb36
bb35:
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
bb36:
  ADD s8, s5, zero
  ADD s9, s7, zero
  SLT s10, s8, s1
  BNE s10, zero, bb37
  JAL zero, bb38
bb37:
  ADDI s10, zero, 4
  MULW s11, s4, s10
  ADD s10, s0, s11
  LW s11, 0(s10)
  ADDI t0, zero, 4
  MULW t1, s8, t0
  ADD t0, s0, t1
  LW t1, 0(t0)
  SLT t2, s11, t1
  BNE t2, zero, bb39
  JAL zero, bb41
bb38:
  ADD s2, s9, zero
  ADD s3, s6, zero
  JAL zero, bb33
bb39:
  LW s11, 0(s10)
  LW t1, 0(t0)
  SW t1, 0(s10)
  SW s11, 0(t0)
  ADD s10, s11, zero
  JAL zero, bb40
bb40:
  ADD s11, s10, zero
  ADDIW t0, s8, 1
  ADD s7, s11, zero
  ADD s5, t0, zero
  JAL zero, bb36
bb41:
  ADD s10, s9, zero
  JAL zero, bb40
