.global param16
.global param32_arr
.global param32_rec
.global main
.global sort
.section .bss
.section .data
.section .text
param16:
  ADDI sp, sp, -560
  SD ra, 456(sp)
  SD s11, 464(sp)
  SD s10, 472(sp)
  SD s9, 480(sp)
  SD s8, 488(sp)
  SD s7, 496(sp)
  SD s6, 504(sp)
  SD s0, 512(sp)
  SD s5, 520(sp)
  SD s1, 528(sp)
  SD s2, 536(sp)
  SD s3, 544(sp)
  SD s4, 552(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  ADD s6, a6, zero
  ADD s7, a7, zero
  ADDI t5, sp, 560
  ADD s8, t5, zero
  LW s9, 0(s8)
  ADDI s8, sp, 564
  LW s10, 0(s8)
  ADDI s8, sp, 568
  LW s11, 0(s8)
  ADDI s8, sp, 572
  LW ra, 0(s8)
  ADDI s8, sp, 576
  LW t0, 0(s8)
  ADDI s8, sp, 580
  LW t1, 0(s8)
  ADDI s8, sp, 584
  LW t2, 0(s8)
  ADDI s8, sp, 588
  LW t4, 0(s8)
  SW t4, 288(sp)
  SW s0, 280(sp)
  SW s1, 272(sp)
  SW s2, 264(sp)
  SW s3, 256(sp)
  SW s4, 248(sp)
  SW s5, 240(sp)
  SW s6, 232(sp)
  SW s7, 224(sp)
  SW s9, 216(sp)
  SW s10, 208(sp)
  SW s11, 200(sp)
  SW ra, 192(sp)
  SW t0, 184(sp)
  SW t1, 176(sp)
  SW t2, 168(sp)
  LW t4, 288(sp)
  SW t4, 160(sp)
  ADDI t6, sp, 96
  ADD s8, t6, zero
  SW s0, 0(s8)
  ADDI s0, sp, 100
  SW s1, 0(s0)
  ADDI s0, sp, 104
  SW s2, 0(s0)
  ADDI s0, sp, 108
  SW s3, 0(s0)
  ADDI s0, sp, 112
  SW s4, 0(s0)
  ADDI s0, sp, 116
  SW s5, 0(s0)
  ADDI s0, sp, 120
  SW s6, 0(s0)
  ADDI s0, sp, 124
  SW s7, 0(s0)
  ADDI s0, sp, 128
  SW s9, 0(s0)
  ADDI s0, sp, 132
  SW s10, 0(s0)
  ADDI s0, sp, 136
  SW s11, 0(s0)
  ADDI s0, sp, 140
  SW ra, 0(s0)
  ADDI s0, sp, 144
  SW t0, 0(s0)
  ADDI s0, sp, 148
  SW t1, 0(s0)
  ADDI s0, sp, 152
  SW t2, 0(s0)
  ADDI s0, sp, 156
  LW t4, 288(sp)
  SW t4, 0(s0)
  ADDI a0, sp, 96
  ADD a0, a0, zero
  ADDI a1, zero, 16
  CALL sort
  ADDI s0, zero, 4
  MULW s1, zero, s0
  ADDI t5, sp, 96
  ADD s0, t5, s1
  LW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s2, zero, 1
  MULW s3, s0, s2
  ADDI t6, sp, 96
  ADD s0, t6, s3
  LW s2, 0(s0)
  ADDI s0, zero, 4
  ADDI s3, zero, 2
  MULW s4, s0, s3
  ADDI t5, sp, 96
  ADD s0, t5, s4
  LW s3, 0(s0)
  ADDI s0, zero, 4
  ADDI s4, zero, 3
  MULW s5, s0, s4
  ADDI t6, sp, 96
  ADD s0, t6, s5
  LW s4, 0(s0)
  ADDI s0, zero, 4
  ADDI s5, zero, 4
  MULW s6, s0, s5
  ADDI t5, sp, 96
  ADD s0, t5, s6
  LW s5, 0(s0)
  ADDI s0, zero, 4
  ADDI s6, zero, 5
  MULW s7, s0, s6
  ADDI t6, sp, 96
  ADD s0, t6, s7
  LW s6, 0(s0)
  ADDI s0, zero, 4
  ADDI s7, zero, 6
  MULW s8, s0, s7
  ADDI t5, sp, 96
  ADD s0, t5, s8
  LW s7, 0(s0)
  ADDI s0, zero, 4
  ADDI s8, zero, 7
  MULW s9, s0, s8
  ADDI t6, sp, 96
  ADD s0, t6, s9
  LW s8, 0(s0)
  ADDI s0, zero, 4
  ADDI s9, zero, 8
  MULW s10, s0, s9
  ADDI t5, sp, 96
  ADD s0, t5, s10
  LW s9, 0(s0)
  ADDI s0, zero, 4
  ADDI s10, zero, 9
  MULW s11, s0, s10
  ADDI t6, sp, 96
  ADD s0, t6, s11
  LW t4, 0(s0)
  SW t4, 296(sp)
  ADDI s0, zero, 4
  ADDI s11, zero, 10
  MULW s10, s0, s11
  ADDI t5, sp, 96
  ADD s0, t5, s10
  LW t4, 0(s0)
  SW t4, 304(sp)
  ADDI s0, zero, 4
  ADDI s11, zero, 11
  MULW s10, s0, s11
  ADDI t6, sp, 96
  ADD s0, t6, s10
  LW t4, 0(s0)
  SW t4, 312(sp)
  ADDI s0, zero, 4
  ADDI s11, zero, 12
  MULW s10, s0, s11
  ADDI t5, sp, 96
  ADD s0, t5, s10
  LW t4, 0(s0)
  SW t4, 320(sp)
  ADDI s0, zero, 4
  ADDI s11, zero, 13
  MULW s10, s0, s11
  ADDI t6, sp, 96
  ADD s0, t6, s10
  LW t4, 0(s0)
  SW t4, 328(sp)
  ADDI s0, zero, 4
  ADDI s11, zero, 14
  MULW s10, s0, s11
  ADDI t5, sp, 96
  ADD s0, t5, s10
  LW t4, 0(s0)
  SW t4, 336(sp)
  ADDI s0, zero, 4
  ADDI s11, zero, 15
  MULW s10, s0, s11
  ADDI t6, sp, 96
  ADD s0, t6, s10
  LW s10, 0(s0)
  LW s0, 280(sp)
  LW s11, 272(sp)
  LW t4, 264(sp)
  SW t4, 344(sp)
  LW t4, 256(sp)
  SW t4, 352(sp)
  LW t4, 248(sp)
  SW t4, 360(sp)
  LW t4, 240(sp)
  SW t4, 368(sp)
  LW t4, 232(sp)
  SW t4, 376(sp)
  LW t4, 224(sp)
  SW t4, 384(sp)
  LW t4, 216(sp)
  SW t4, 392(sp)
  LW t4, 208(sp)
  SW t4, 400(sp)
  LW t4, 200(sp)
  SW t4, 408(sp)
  LW t4, 192(sp)
  SW t4, 416(sp)
  LW t4, 184(sp)
  SW t4, 424(sp)
  LW t4, 176(sp)
  SW t4, 432(sp)
  LW t4, 168(sp)
  SW t4, 440(sp)
  LW t4, 160(sp)
  SW t4, 448(sp)
  ADD a0, s1, zero
  ADD a1, s2, zero
  ADD a2, s3, zero
  ADD a3, s4, zero
  ADD a4, s5, zero
  ADD a5, s6, zero
  ADD a6, s7, zero
  ADD a7, s8, zero
  ADDI t5, sp, 0
  ADD s1, t5, zero
  SW s9, 0(s1)
  ADDI s1, sp, 4
  LW t4, 296(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 8
  LW t4, 304(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 12
  LW t4, 312(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 16
  LW t4, 320(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 20
  LW t4, 328(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 24
  LW t4, 336(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 28
  SW s10, 0(s1)
  ADDI s1, sp, 32
  SW s0, 0(s1)
  ADDI s1, sp, 36
  SW s11, 0(s1)
  ADDI s1, sp, 40
  LW t4, 344(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 44
  LW t4, 352(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 48
  LW t4, 360(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 52
  LW t4, 368(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 56
  LW t4, 376(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 60
  LW t4, 384(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 64
  LW t4, 392(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 68
  LW t4, 400(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 72
  LW t4, 408(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 76
  LW t4, 416(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 80
  LW t4, 424(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 84
  LW t4, 432(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 88
  LW t4, 440(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 92
  LW t4, 448(sp)
  SW t4, 0(s1)
  LW t4, 296(sp)
  LW t3, 304(sp)
  LW t4, 312(sp)
  LW t3, 320(sp)
  LW t4, 328(sp)
  LW t3, 336(sp)
  LW t4, 344(sp)
  LW t3, 352(sp)
  LW t4, 360(sp)
  LW t3, 368(sp)
  LW t4, 376(sp)
  LW t3, 384(sp)
  LW t4, 392(sp)
  LW t3, 400(sp)
  LW t4, 408(sp)
  LW t3, 416(sp)
  LW t4, 424(sp)
  LW t3, 432(sp)
  LW t4, 440(sp)
  LW t3, 448(sp)
  CALL param32_rec
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 456(sp)
  LD s11, 464(sp)
  LD s10, 472(sp)
  LD s9, 480(sp)
  LD s8, 488(sp)
  LD s7, 496(sp)
  LD s6, 504(sp)
  LD s0, 512(sp)
  LD s5, 520(sp)
  LD s1, 528(sp)
  LD s2, 536(sp)
  LD s3, 544(sp)
  LD s4, 552(sp)
  ADDI sp, sp, 560
  JALR zero, 0(ra)
param32_arr:
  ADDI sp, sp, -224
  SD ra, 112(sp)
  SD s11, 120(sp)
  SD s10, 128(sp)
  SD s9, 136(sp)
  SD s8, 144(sp)
  SD s7, 152(sp)
  SD s6, 160(sp)
  SD s0, 168(sp)
  SD s5, 176(sp)
  SD s1, 184(sp)
  SD s2, 192(sp)
  SD s3, 200(sp)
  SD s4, 208(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  ADD s6, a6, zero
  ADD s7, a7, zero
  ADDI t5, sp, 224
  ADD s8, t5, zero
  LD s9, 0(s8)
  ADDI s8, sp, 232
  LD s10, 0(s8)
  ADDI s8, sp, 240
  LD s11, 0(s8)
  ADDI s8, sp, 248
  LD ra, 0(s8)
  ADDI s8, sp, 256
  LD t0, 0(s8)
  ADDI s8, sp, 264
  LD t1, 0(s8)
  ADDI s8, sp, 272
  LD t2, 0(s8)
  ADDI s8, sp, 280
  LD a1, 0(s8)
  ADDI s8, sp, 288
  LD a2, 0(s8)
  ADDI s8, sp, 296
  LD a3, 0(s8)
  ADDI s8, sp, 304
  LD a4, 0(s8)
  ADDI s8, sp, 312
  LD t4, 0(s8)
  SD t4, 104(sp)
  ADDI s8, sp, 320
  LD t4, 0(s8)
  SD t4, 96(sp)
  ADDI s8, sp, 328
  LD t4, 0(s8)
  SD t4, 88(sp)
  ADDI s8, sp, 336
  LD t4, 0(s8)
  SD t4, 8(sp)
  ADDI s8, sp, 344
  LD t4, 0(s8)
  SD t4, 16(sp)
  ADDI s8, sp, 352
  LD t4, 0(s8)
  SD t4, 24(sp)
  ADDI s8, sp, 360
  LD t4, 0(s8)
  SD t4, 32(sp)
  ADDI s8, sp, 368
  LD t4, 0(s8)
  SD t4, 40(sp)
  ADDI s8, sp, 376
  LD t4, 0(s8)
  SD t4, 48(sp)
  ADDI s8, sp, 384
  LD t4, 0(s8)
  SD t4, 56(sp)
  ADDI s8, sp, 392
  LD t4, 0(s8)
  SD t4, 64(sp)
  ADDI s8, sp, 400
  LD t4, 0(s8)
  SD t4, 72(sp)
  ADDI s8, sp, 408
  LD t4, 0(s8)
  SD t4, 80(sp)
  ADDI s8, zero, 4
  MUL a7, zero, s8
  ADD s8, s0, a7
  LW a7, 0(s8)
  ADDI s8, zero, 4
  ADDI a6, zero, 1
  MULW a5, s8, a6
  ADD s8, s0, a5
  LW s0, 0(s8)
  ADDW s8, a7, s0
  SW s8, 0(sp)
  ADDI s0, zero, 4
  MUL a5, zero, s0
  ADD s0, s1, a5
  LW a5, 0(s0)
  ADDW s0, s8, a5
  ADDI s8, zero, 4
  ADDI a5, zero, 1
  MULW a6, s8, a5
  ADD s8, s1, a6
  LW s1, 0(s8)
  ADDW s8, s0, s1
  SW s8, 0(sp)
  ADDI s0, zero, 4
  MUL s1, zero, s0
  ADD s0, s2, s1
  LW s1, 0(s0)
  ADDW s0, s8, s1
  ADDI s1, zero, 4
  ADDI s8, zero, 1
  MULW a5, s1, s8
  ADD s1, s2, a5
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s8, s1, s2
  ADD s1, s3, s8
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  ADD s0, s4, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADD s1, s4, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  ADD s0, s5, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADD s1, s5, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  ADD s0, s6, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADD s1, s6, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  ADD s0, s7, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADD s1, s7, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  ADD s0, s9, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADD s1, s9, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  ADD s0, s10, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADD s1, s10, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  ADD s0, s11, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADD s1, s11, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  ADD s0, ra, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADD s1, ra, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  ADD s0, t0, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADD s1, t0, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  ADD s0, t1, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADD s1, t1, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  ADD s0, t2, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADD s1, t2, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  ADD s0, a1, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADD s1, a1, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  ADD s0, a2, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADD s1, a2, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  ADD s0, a3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADD s1, a3, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  ADD s0, a4, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADD s1, a4, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  LD t4, 104(sp)
  ADD s0, t4, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LD t4, 104(sp)
  ADD s1, t4, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  LD t4, 96(sp)
  ADD s0, t4, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LD t4, 96(sp)
  ADD s1, t4, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  LD t4, 88(sp)
  ADD s0, t4, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LD t4, 88(sp)
  ADD s1, t4, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  LD t4, 8(sp)
  ADD s0, t4, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LD t4, 8(sp)
  ADD s1, t4, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  LD t4, 16(sp)
  ADD s0, t4, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LD t4, 16(sp)
  ADD s1, t4, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  LD t4, 24(sp)
  ADD s0, t4, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LD t4, 24(sp)
  ADD s1, t4, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  LD t4, 32(sp)
  ADD s0, t4, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LD t4, 32(sp)
  ADD s1, t4, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  LD t4, 40(sp)
  ADD s0, t4, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LD t4, 40(sp)
  ADD s1, t4, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  LD t4, 48(sp)
  ADD s0, t4, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LD t4, 48(sp)
  ADD s1, t4, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  LD t4, 56(sp)
  ADD s0, t4, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LD t4, 56(sp)
  ADD s1, t4, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  LD t4, 64(sp)
  ADD s0, t4, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LD t4, 64(sp)
  ADD s1, t4, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  LD t4, 72(sp)
  ADD s0, t4, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LD t4, 72(sp)
  ADD s1, t4, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  LD t4, 80(sp)
  ADD s0, t4, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LD t4, 80(sp)
  ADD s1, t4, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  ADD a0, s1, zero
  LD ra, 112(sp)
  LD s11, 120(sp)
  LD s10, 128(sp)
  LD s9, 136(sp)
  LD s8, 144(sp)
  LD s7, 152(sp)
  LD s6, 160(sp)
  LD s0, 168(sp)
  LD s5, 176(sp)
  LD s1, 184(sp)
  LD s2, 192(sp)
  LD s3, 200(sp)
  LD s4, 208(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
param32_rec:
  ADDI sp, sp, -752
  SD ra, 648(sp)
  SD s0, 656(sp)
  SD s11, 664(sp)
  SD s10, 672(sp)
  SD s9, 680(sp)
  SD s8, 688(sp)
  SD s7, 696(sp)
  SD s6, 704(sp)
  SD s1, 712(sp)
  SD s2, 720(sp)
  SD s3, 728(sp)
  SD s4, 736(sp)
  SD s5, 744(sp)
  ADD t4, a0, zero
  SW t4, 352(sp)
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  ADD s6, a6, zero
  ADD s7, a7, zero
  ADDI t5, sp, 752
  ADD s8, t5, zero
  LW s9, 0(s8)
  ADDI s8, sp, 756
  LW s10, 0(s8)
  ADDI s8, sp, 760
  LW s11, 0(s8)
  ADDI s8, sp, 764
  LW t0, 0(s8)
  ADDI s8, sp, 768
  LW t1, 0(s8)
  ADDI s8, sp, 772
  LW t2, 0(s8)
  ADDI s8, sp, 776
  LW s0, 0(s8)
  ADDI s8, sp, 780
  LW t4, 0(s8)
  SW t4, 360(sp)
  ADDI s8, sp, 784
  LW t4, 0(s8)
  SW t4, 368(sp)
  ADDI s8, sp, 788
  LW t4, 0(s8)
  SW t4, 376(sp)
  ADDI s8, sp, 792
  LW t4, 0(s8)
  SW t4, 384(sp)
  ADDI s8, sp, 796
  LW t4, 0(s8)
  SW t4, 392(sp)
  ADDI s8, sp, 800
  LW t4, 0(s8)
  SW t4, 400(sp)
  ADDI s8, sp, 804
  LW t4, 0(s8)
  SW t4, 408(sp)
  ADDI s8, sp, 808
  LW t4, 0(s8)
  SW t4, 416(sp)
  ADDI s8, sp, 812
  LW t4, 0(s8)
  SW t4, 424(sp)
  ADDI s8, sp, 816
  LW t4, 0(s8)
  SW t4, 432(sp)
  ADDI s8, sp, 820
  LW t4, 0(s8)
  SW t4, 440(sp)
  ADDI s8, sp, 824
  LW t4, 0(s8)
  SW t4, 448(sp)
  ADDI s8, sp, 828
  LW t4, 0(s8)
  SW t4, 456(sp)
  ADDI s8, sp, 832
  LW t4, 0(s8)
  SW t4, 464(sp)
  ADDI s8, sp, 836
  LW t4, 0(s8)
  SW t4, 472(sp)
  ADDI s8, sp, 840
  LW t4, 0(s8)
  SW t4, 480(sp)
  ADDI s8, sp, 844
  LW t4, 0(s8)
  SW t4, 488(sp)
  LW t4, 352(sp)
  SW t4, 344(sp)
  SW s1, 336(sp)
  SW s2, 328(sp)
  SW s3, 320(sp)
  SW s4, 312(sp)
  SW s5, 304(sp)
  SW s6, 296(sp)
  SW s7, 288(sp)
  SW s9, 280(sp)
  SW s10, 272(sp)
  SW s11, 264(sp)
  SW t0, 256(sp)
  SW t1, 248(sp)
  SW t2, 240(sp)
  SW s0, 232(sp)
  LW t4, 360(sp)
  SW t4, 224(sp)
  LW t4, 368(sp)
  SW t4, 216(sp)
  LW t4, 376(sp)
  SW t4, 208(sp)
  LW t4, 384(sp)
  SW t4, 200(sp)
  LW t4, 392(sp)
  SW t4, 192(sp)
  LW t4, 400(sp)
  SW t4, 184(sp)
  LW t4, 408(sp)
  SW t4, 176(sp)
  LW t4, 416(sp)
  SW t4, 168(sp)
  LW t4, 424(sp)
  SW t4, 160(sp)
  LW t4, 432(sp)
  SW t4, 152(sp)
  LW t4, 440(sp)
  SW t4, 144(sp)
  LW t4, 448(sp)
  SW t4, 136(sp)
  LW t4, 456(sp)
  SW t4, 128(sp)
  LW t4, 464(sp)
  SW t4, 120(sp)
  LW t4, 472(sp)
  SW t4, 112(sp)
  LW t4, 480(sp)
  SW t4, 104(sp)
  LW t4, 488(sp)
  SW t4, 96(sp)
  LW t4, 352(sp)
  XOR s0, t4, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb3
  JAL zero, bb5
bb3:
  LW s0, 336(sp)
  ADD a0, s0, zero
  LD ra, 648(sp)
  LD s0, 656(sp)
  LD s11, 664(sp)
  LD s10, 672(sp)
  LD s9, 680(sp)
  LD s8, 688(sp)
  LD s7, 696(sp)
  LD s6, 704(sp)
  LD s1, 712(sp)
  LD s2, 720(sp)
  LD s3, 728(sp)
  LD s4, 736(sp)
  LD s5, 744(sp)
  ADDI sp, sp, 752
  JALR zero, 0(ra)
bb4:
bb5:
  LW s0, 344(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  LW s0, 336(sp)
  LW s1, 328(sp)
  ADDW s3, s0, s1
  LUI s0, 243712
  ADDI s0, s0, 1
  REMW s1, s3, s0
  LW s0, 320(sp)
  LW s3, 312(sp)
  LW s4, 304(sp)
  LW s5, 296(sp)
  LW s6, 288(sp)
  LW s7, 280(sp)
  LW s8, 272(sp)
  LW s9, 264(sp)
  LW s10, 256(sp)
  LW s11, 248(sp)
  LW t4, 240(sp)
  SW t4, 640(sp)
  LW t4, 232(sp)
  SW t4, 632(sp)
  LW t4, 224(sp)
  SW t4, 624(sp)
  LW t4, 216(sp)
  SW t4, 496(sp)
  LW t4, 208(sp)
  SW t4, 504(sp)
  LW t4, 200(sp)
  SW t4, 512(sp)
  LW t4, 192(sp)
  SW t4, 520(sp)
  LW t4, 184(sp)
  SW t4, 528(sp)
  LW t4, 176(sp)
  SW t4, 536(sp)
  LW t4, 168(sp)
  SW t4, 544(sp)
  LW t4, 160(sp)
  SW t4, 552(sp)
  LW t4, 152(sp)
  SW t4, 560(sp)
  LW t4, 144(sp)
  SW t4, 568(sp)
  LW t4, 136(sp)
  SW t4, 576(sp)
  LW t4, 128(sp)
  SW t4, 584(sp)
  LW t4, 120(sp)
  SW t4, 592(sp)
  LW t4, 112(sp)
  SW t4, 600(sp)
  LW t4, 104(sp)
  SW t4, 608(sp)
  LW t4, 96(sp)
  SW t4, 616(sp)
  ADD a0, s2, zero
  ADD a1, s1, zero
  ADD a2, s0, zero
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
  LW t4, 640(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 20
  LW t4, 632(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 24
  LW t4, 624(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 28
  LW t4, 496(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 32
  LW t4, 504(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 36
  LW t4, 512(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 40
  LW t4, 520(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 44
  LW t4, 528(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 48
  LW t4, 536(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 52
  LW t4, 544(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 56
  LW t4, 552(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 60
  LW t4, 560(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 64
  LW t4, 568(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 68
  LW t4, 576(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 72
  LW t4, 584(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 76
  LW t4, 592(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 80
  LW t4, 600(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 84
  LW t4, 608(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 88
  LW t4, 616(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 92
  SW zero, 0(s0)
  LW t4, 640(sp)
  LW t3, 632(sp)
  LW t4, 624(sp)
  LW t3, 496(sp)
  LW t4, 504(sp)
  LW t3, 512(sp)
  LW t4, 520(sp)
  LW t3, 528(sp)
  LW t4, 536(sp)
  LW t3, 544(sp)
  LW t4, 552(sp)
  LW t3, 560(sp)
  LW t4, 568(sp)
  LW t3, 576(sp)
  LW t4, 584(sp)
  LW t3, 592(sp)
  LW t4, 600(sp)
  LW t3, 608(sp)
  LW t4, 616(sp)
  CALL param32_rec
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 648(sp)
  LD s0, 656(sp)
  LD s11, 664(sp)
  LD s10, 672(sp)
  LD s9, 680(sp)
  LD s8, 688(sp)
  LD s7, 696(sp)
  LD s6, 704(sp)
  LD s1, 712(sp)
  LD s2, 720(sp)
  LD s3, 728(sp)
  LD s4, 736(sp)
  LD s5, 744(sp)
  ADDI sp, sp, 752
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -784
  SD ra, 672(sp)
  SD s11, 680(sp)
  SD s0, 688(sp)
  SD s5, 696(sp)
  SD s7, 704(sp)
  SD s10, 712(sp)
  SD s1, 720(sp)
  SD s6, 728(sp)
  SD s2, 736(sp)
  SD s3, 744(sp)
  SD s4, 752(sp)
  SD s8, 760(sp)
  SD s9, 768(sp)
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
  SW t4, 464(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 472(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 480(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 488(sp)
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
  LW t4, 464(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 20
  LW t4, 472(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 24
  LW t4, 480(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 28
  LW t4, 488(sp)
  SW t4, 0(s0)
  LW t4, 464(sp)
  LW t3, 472(sp)
  LW t4, 480(sp)
  LW t3, 488(sp)
  CALL param16
  ADD s0, a0, zero
  ADDI t6, sp, 208
  ADD s1, t6, zero
  SW s0, 0(s1)
  ADDI s0, sp, 212
  LUI s1, 2
  ADDI s1, s1, 656
  SW s1, 0(s0)
  ADDI s0, zero, 62
  SW s0, 200(sp)
  JAL zero, bb7
bb7:
  LW s0, 200(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb8
  JAL zero, bb9
bb8:
  LW s0, 200(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 200(sp)
  ADDI s0, zero, 4
  MULW s1, s2, s0
  ADDIW s0, s1, 8
  ADDI t5, sp, 208
  ADD s1, t5, s0
  SW zero, 0(s1)
  JAL zero, bb7
bb9:
  ADDI s0, zero, 1
  SW s0, 192(sp)
  JAL zero, bb10
bb10:
  LW s0, 192(sp)
  SLTI s1, s0, 32
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb11
  JAL zero, bb12
bb11:
  LW s0, 192(sp)
  ADDI s1, zero, 8
  MULW s2, s0, s1
  ADDI t6, sp, 208
  ADD s0, t6, s2
  ADDI s1, zero, 4
  MUL s2, zero, s1
  ADD s1, s0, s2
  LW s0, 192(sp)
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  ADDI s0, zero, 8
  MULW s2, s3, s0
  ADDI t5, sp, 208
  ADD s0, t5, s2
  ADDI s2, zero, 4
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s0, 0(s2)
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  SW s3, 0(s1)
  LW s0, 192(sp)
  ADDI s1, zero, 8
  MULW s2, s0, s1
  ADDI t6, sp, 208
  ADD s0, t6, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 192(sp)
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  ADDI s0, zero, 8
  MULW s2, s3, s0
  ADDI t5, sp, 208
  ADD s0, t5, s2
  ADDI s2, zero, 4
  MUL s3, zero, s2
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADDI s2, zero, 2
  SUBW s3, s0, s2
  SW s3, 0(s1)
  LW s0, 192(sp)
  ADDIW s1, s0, 1
  SW s1, 192(sp)
  JAL zero, bb10
bb12:
  ADDI s0, zero, 8
  MUL s1, zero, s0
  ADDI t6, sp, 208
  ADD s0, t6, s1
  ADDI s1, zero, 8
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDI t5, sp, 208
  ADD s1, t5, s3
  ADDI s2, zero, 8
  ADDI s3, zero, 2
  MULW s4, s2, s3
  ADDI t6, sp, 208
  ADD s2, t6, s4
  ADDI s3, zero, 8
  ADDI s4, zero, 3
  MULW s5, s3, s4
  ADDI t5, sp, 208
  ADD s3, t5, s5
  ADDI s4, zero, 8
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADDI t6, sp, 208
  ADD s4, t6, s6
  ADDI s5, zero, 8
  ADDI s6, zero, 5
  MULW s7, s5, s6
  ADDI t5, sp, 208
  ADD s5, t5, s7
  ADDI s6, zero, 8
  ADDI s7, zero, 6
  MULW s8, s6, s7
  ADDI t6, sp, 208
  ADD s6, t6, s8
  ADDI s7, zero, 8
  ADDI s8, zero, 7
  MULW s9, s7, s8
  ADDI t5, sp, 208
  ADD s7, t5, s9
  ADDI s8, zero, 8
  ADDI s9, zero, 8
  MULW s10, s8, s9
  ADDI t6, sp, 208
  ADD s8, t6, s10
  ADDI s9, zero, 8
  ADDI s10, zero, 9
  MULW s11, s9, s10
  ADDI t4, sp, 208
  ADD t4, t4, s11
  SD t4, 496(sp)
  ADDI s10, zero, 8
  ADDI s11, zero, 10
  MULW s9, s10, s11
  ADDI t4, sp, 208
  ADD t4, t4, s9
  SD t4, 504(sp)
  ADDI s9, zero, 8
  ADDI s11, zero, 11
  MULW s10, s9, s11
  ADDI t4, sp, 208
  ADD t4, t4, s10
  SD t4, 512(sp)
  ADDI s10, zero, 8
  ADDI s11, zero, 12
  MULW s9, s10, s11
  ADDI t4, sp, 208
  ADD t4, t4, s9
  SD t4, 520(sp)
  ADDI s9, zero, 8
  ADDI s11, zero, 13
  MULW s10, s9, s11
  ADDI t4, sp, 208
  ADD t4, t4, s10
  SD t4, 528(sp)
  ADDI s10, zero, 8
  ADDI s11, zero, 14
  MULW s9, s10, s11
  ADDI t4, sp, 208
  ADD t4, t4, s9
  SD t4, 536(sp)
  ADDI s9, zero, 8
  ADDI s11, zero, 15
  MULW s10, s9, s11
  ADDI t4, sp, 208
  ADD t4, t4, s10
  SD t4, 544(sp)
  ADDI s10, zero, 8
  ADDI s11, zero, 16
  MULW s9, s10, s11
  ADDI t4, sp, 208
  ADD t4, t4, s9
  SD t4, 552(sp)
  ADDI s9, zero, 8
  ADDI s11, zero, 17
  MULW s10, s9, s11
  ADDI t4, sp, 208
  ADD t4, t4, s10
  SD t4, 560(sp)
  ADDI s10, zero, 8
  ADDI s11, zero, 18
  MULW s9, s10, s11
  ADDI t4, sp, 208
  ADD t4, t4, s9
  SD t4, 568(sp)
  ADDI s9, zero, 8
  ADDI s11, zero, 19
  MULW s10, s9, s11
  ADDI t4, sp, 208
  ADD t4, t4, s10
  SD t4, 576(sp)
  ADDI s10, zero, 8
  ADDI s11, zero, 20
  MULW s9, s10, s11
  ADDI t4, sp, 208
  ADD t4, t4, s9
  SD t4, 584(sp)
  ADDI s9, zero, 8
  ADDI s11, zero, 21
  MULW s10, s9, s11
  ADDI t4, sp, 208
  ADD t4, t4, s10
  SD t4, 592(sp)
  ADDI s10, zero, 8
  ADDI s11, zero, 22
  MULW s9, s10, s11
  ADDI t4, sp, 208
  ADD t4, t4, s9
  SD t4, 600(sp)
  ADDI s9, zero, 8
  ADDI s11, zero, 23
  MULW s10, s9, s11
  ADDI t4, sp, 208
  ADD t4, t4, s10
  SD t4, 608(sp)
  ADDI s10, zero, 8
  ADDI s11, zero, 24
  MULW s9, s10, s11
  ADDI t4, sp, 208
  ADD t4, t4, s9
  SD t4, 616(sp)
  ADDI s9, zero, 8
  ADDI s11, zero, 25
  MULW s10, s9, s11
  ADDI t4, sp, 208
  ADD t4, t4, s10
  SD t4, 624(sp)
  ADDI s10, zero, 8
  ADDI s11, zero, 26
  MULW s9, s10, s11
  ADDI t4, sp, 208
  ADD t4, t4, s9
  SD t4, 632(sp)
  ADDI s9, zero, 8
  ADDI s11, zero, 27
  MULW s10, s9, s11
  ADDI t4, sp, 208
  ADD t4, t4, s10
  SD t4, 640(sp)
  ADDI s10, zero, 8
  ADDI s11, zero, 28
  MULW s9, s10, s11
  ADDI t4, sp, 208
  ADD t4, t4, s9
  SD t4, 648(sp)
  ADDI s9, zero, 8
  ADDI s11, zero, 29
  MULW s10, s9, s11
  ADDI t4, sp, 208
  ADD t4, t4, s10
  SD t4, 656(sp)
  ADDI s10, zero, 8
  ADDI s11, zero, 30
  MULW s9, s10, s11
  ADDI t4, sp, 208
  ADD t4, t4, s9
  SD t4, 664(sp)
  ADDI s9, zero, 8
  ADDI s11, zero, 31
  MULW s10, s9, s11
  ADDI t5, sp, 208
  ADD s9, t5, s10
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
  SD s8, 0(s0)
  ADDI s0, sp, 8
  LD t4, 496(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 16
  LD t4, 504(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 24
  LD t4, 512(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 32
  LD t4, 520(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 40
  LD t4, 528(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 48
  LD t4, 536(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 56
  LD t4, 544(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 64
  LD t4, 552(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 72
  LD t4, 560(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 80
  LD t4, 568(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 88
  LD t4, 576(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 96
  LD t4, 584(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 104
  LD t4, 592(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 112
  LD t4, 600(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 120
  LD t4, 608(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 128
  LD t4, 616(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 136
  LD t4, 624(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 144
  LD t4, 632(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 152
  LD t4, 640(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 160
  LD t4, 648(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 168
  LD t4, 656(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 176
  LD t4, 664(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 184
  SD s9, 0(s0)
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
  LD t4, 640(sp)
  LD t3, 648(sp)
  LD t4, 656(sp)
  LD t3, 664(sp)
  CALL param32_arr
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 672(sp)
  LD s11, 680(sp)
  LD s0, 688(sp)
  LD s5, 696(sp)
  LD s7, 704(sp)
  LD s10, 712(sp)
  LD s1, 720(sp)
  LD s6, 728(sp)
  LD s2, 736(sp)
  LD s3, 744(sp)
  LD s4, 752(sp)
  LD s8, 760(sp)
  LD s9, 768(sp)
  ADDI sp, sp, 784
  JALR zero, 0(ra)
sort:
  ADDI sp, sp, -96
  SD ra, 32(sp)
  SD s4, 40(sp)
  SD s3, 48(sp)
  SD s2, 56(sp)
  SD s1, 64(sp)
  SD s5, 72(sp)
  SD s0, 80(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s1, 24(sp)
  SW zero, 16(sp)
  JAL zero, bb14
bb14:
  LW s1, 16(sp)
  LW s2, 24(sp)
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  SLT s2, s1, s4
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb15
  JAL zero, bb16
bb15:
  LW s1, 16(sp)
  ADDIW s2, s1, 1
  SW s2, 8(sp)
  JAL zero, bb17
bb16:
  LD ra, 32(sp)
  LD s4, 40(sp)
  LD s3, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s5, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb17:
  LW s1, 8(sp)
  LW s2, 24(sp)
  SLT s3, s1, s2
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb18
  JAL zero, bb19
bb18:
  LW s1, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(s1)
  LW s1, 8(sp)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s1, s0, s4
  LW s3, 0(s1)
  SLT s1, s2, s3
  BNE s1, zero, bb20
  JAL zero, bb21
bb19:
  LW s1, 16(sp)
  ADDIW s2, s1, 1
  SW s2, 16(sp)
  JAL zero, bb14
bb20:
  LW s1, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(s1)
  SW s2, 0(sp)
  LW s1, 16(sp)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s1, s0, s4
  LW s3, 8(sp)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  LW s4, 0(s3)
  SW s4, 0(s1)
  LW s1, 8(sp)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s1, s0, s4
  SW s2, 0(s1)
  JAL zero, bb21
bb21:
  LW s1, 8(sp)
  ADDIW s2, s1, 1
  SW s2, 8(sp)
  JAL zero, bb17
