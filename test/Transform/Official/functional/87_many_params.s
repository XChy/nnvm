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
  SD s11, 336(sp)
  SD s10, 344(sp)
  SD s9, 352(sp)
  SD s7, 360(sp)
  SD s6, 368(sp)
  SD s5, 376(sp)
  SD s4, 384(sp)
  SD s3, 392(sp)
  SD s2, 400(sp)
  SD s0, 408(sp)
  SD s1, 416(sp)
  SD s8, 424(sp)
  ADD t4, a0, zero
  SW t4, 220(sp)
  ADD t4, a1, zero
  SW t4, 216(sp)
  ADD t4, a2, zero
  SW t4, 212(sp)
  ADD t4, a3, zero
  SW t4, 208(sp)
  ADD t4, a4, zero
  SW t4, 204(sp)
  ADD t4, a5, zero
  SW t4, 200(sp)
  ADD t4, a6, zero
  SW t4, 196(sp)
  ADD t4, a7, zero
  SW t4, 192(sp)
  ADDI t5, sp, 432
  ADD s8, t5, zero
  LW t4, 0(s8)
  SW t4, 188(sp)
  ADDI s8, sp, 436
  LW t4, 0(s8)
  SW t4, 184(sp)
  ADDI s8, sp, 440
  LW t4, 0(s8)
  SW t4, 180(sp)
  ADDI s8, sp, 444
  LW t4, 0(s8)
  SW t4, 176(sp)
  ADDI s8, sp, 448
  LW t4, 0(s8)
  SW t4, 172(sp)
  ADDI s8, sp, 452
  LW t4, 0(s8)
  SW t4, 168(sp)
  ADDI s8, sp, 456
  LW t4, 0(s8)
  SW t4, 164(sp)
  ADDI s8, sp, 460
  LW t4, 0(s8)
  SW t4, 160(sp)
  LW t4, 220(sp)
  SW t4, 96(sp)
  ADDI s8, sp, 100
  LW t4, 216(sp)
  SW t4, 0(s8)
  ADDI t6, sp, 104
  LW t4, 212(sp)
  SW t4, 0(t6)
  ADDI t2, sp, 108
  LW t4, 208(sp)
  SW t4, 0(t2)
  ADDI t1, sp, 112
  LW t4, 204(sp)
  SW t4, 0(t1)
  ADDI t4, sp, 116
  SD t4, 304(sp)
  LW t4, 200(sp)
  LD t3, 304(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 120
  SD t4, 296(sp)
  LW t4, 196(sp)
  LD t3, 296(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 124
  SD t4, 288(sp)
  LW t4, 192(sp)
  LD t3, 288(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 128
  SD t4, 280(sp)
  LW t4, 188(sp)
  LD t3, 280(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 132
  SD t4, 272(sp)
  LW t4, 184(sp)
  LD t3, 272(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 136
  SD t4, 264(sp)
  LW t4, 180(sp)
  LD t3, 264(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 140
  SD t4, 256(sp)
  LW t4, 176(sp)
  LD t3, 256(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 144
  SD t4, 248(sp)
  LW t4, 172(sp)
  LD t3, 248(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 148
  SD t4, 240(sp)
  LW t4, 168(sp)
  LD t3, 240(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 152
  SD t4, 232(sp)
  LW t4, 164(sp)
  LD t3, 232(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 156
  SD t4, 224(sp)
  LW t4, 160(sp)
  LD t3, 224(sp)
  SW t4, 0(t3)
  ADD s1, zero, zero
  ADD s0, zero, zero
  # implict jump to bb1
bb1:
  ADD s2, s0, zero
  ADD s3, s1, zero
  SLTI s4, s2, 15
  BNE s4, zero, bb3
  # implict jump to bb2
bb2:
  LW s0, 96(sp)
  LW s1, 0(s8)
  LW s2, 0(t6)
  LW s3, 0(t2)
  LW s4, 0(t1)
  LD t4, 304(sp)
  LW s5, 0(t4)
  LD t4, 296(sp)
  LW s6, 0(t4)
  LD t4, 288(sp)
  LW s7, 0(t4)
  LD t4, 280(sp)
  LW s8, 0(t4)
  LD t4, 272(sp)
  LW s9, 0(t4)
  LD t4, 264(sp)
  LW s10, 0(t4)
  LD t4, 256(sp)
  LW s11, 0(t4)
  LD t3, 248(sp)
  LW t4, 0(t3)
  SW t4, 320(sp)
  LD t3, 240(sp)
  LW t4, 0(t3)
  SW t4, 312(sp)
  LD t3, 232(sp)
  LW t4, 0(t3)
  SW t4, 316(sp)
  LD t3, 224(sp)
  LW t4, 0(t3)
  SW t4, 324(sp)
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
  LW t4, 320(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 20
  LW t4, 312(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 24
  LW t4, 316(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 28
  LW t4, 324(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 32
  LW t4, 220(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 36
  LW t4, 216(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 40
  LW t4, 212(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 44
  LW t4, 208(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 48
  LW t4, 204(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 52
  LW t4, 200(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 56
  LW t4, 196(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 60
  LW t4, 192(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 64
  LW t4, 188(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 68
  LW t4, 184(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 72
  LW t4, 180(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 76
  LW t4, 176(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 80
  LW t4, 172(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 84
  LW t4, 168(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 88
  LW t4, 164(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 92
  LW t4, 160(sp)
  SW t4, 0(s0)
  LW t4, 320(sp)
  LW t3, 312(sp)
  LW t4, 316(sp)
  LW t3, 324(sp)
  LW t4, 220(sp)
  LW t3, 216(sp)
  LW t4, 212(sp)
  LW t3, 208(sp)
  LW t4, 204(sp)
  LW t3, 200(sp)
  LW t4, 196(sp)
  LW t3, 192(sp)
  LW t4, 188(sp)
  LW t3, 184(sp)
  LW t4, 180(sp)
  LW t3, 176(sp)
  LW t4, 172(sp)
  LW t3, 168(sp)
  LW t4, 164(sp)
  LW t3, 160(sp)
  CALL param32_rec
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 328(sp)
  LD s11, 336(sp)
  LD s10, 344(sp)
  LD s9, 352(sp)
  LD s7, 360(sp)
  LD s6, 368(sp)
  LD s5, 376(sp)
  LD s4, 384(sp)
  LD s3, 392(sp)
  LD s2, 400(sp)
  LD s0, 408(sp)
  LD s1, 416(sp)
  LD s8, 424(sp)
  ADDI sp, sp, 432
  JALR zero, 0(ra)
bb3:
  ADDIW s4, s2, 1
  ADD s5, s3, zero
  ADD s3, s4, zero
  # implict jump to bb4
bb4:
  ADD s6, s3, zero
  ADD s7, s5, zero
  SLTI s9, s6, 16
  BNE s9, zero, bb6
  # implict jump to bb5
bb5:
  ADD s1, s7, zero
  ADD s0, s4, zero
  JAL zero, bb1
bb6:
  SLLIW s9, s2, 2
  ADDI t5, sp, 96
  ADD s10, t5, s9
  LW s9, 0(s10)
  SLLIW s11, s6, 2
  ADDI ra, sp, 96
  ADD ra, ra, s11
  LW s11, 0(ra)
  SLT t0, s9, s11
  BNE t0, zero, bb9
  # implict jump to bb7
bb7:
  ADD s10, s7, zero
  # implict jump to bb8
bb8:
  ADD s9, s10, zero
  ADDIW s11, s6, 1
  ADD s5, s9, zero
  ADD s3, s11, zero
  JAL zero, bb4
bb9:
  LW s9, 0(s10)
  LW s11, 0(ra)
  SW s11, 0(s10)
  SW s9, 0(ra)
  ADD s10, s9, zero
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
  SD s11, 192(sp)
  SD s10, 200(sp)
  SD s9, 208(sp)
  SD s8, 216(sp)
  SD s7, 224(sp)
  SD s6, 232(sp)
  SD s0, 240(sp)
  SD s5, 248(sp)
  SD s1, 256(sp)
  SD s2, 264(sp)
  SD s3, 272(sp)
  SD s4, 280(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
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
  SW t4, 172(sp)
  ADDI s8, sp, 304
  LW t4, 0(s8)
  SW t4, 168(sp)
  ADDI s8, sp, 308
  LW t4, 0(s8)
  SW t4, 176(sp)
  ADDI s8, sp, 312
  LW t4, 0(s8)
  SW t4, 164(sp)
  ADDI s8, sp, 316
  LW t4, 0(s8)
  SW t4, 96(sp)
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
  SLTIU t6, s8, 1
  BNE t6, zero, bb13
  # implict jump to bb12
bb12:
  ADDI s8, zero, 1
  SUBW t6, s0, s8
  ADDW s0, s1, s2
  LUI s1, 243712
  ADDIW s1, s1, 1
  REMW s2, s0, s1
  ADD a0, t6, zero
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
  LW t4, 172(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 12
  LW t4, 168(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 16
  LW t4, 176(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 20
  LW t4, 164(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 24
  LW t4, 96(sp)
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
  LW t4, 172(sp)
  LW t3, 168(sp)
  LW t4, 176(sp)
  LW t3, 164(sp)
  LW t4, 96(sp)
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
  LD s11, 192(sp)
  LD s10, 200(sp)
  LD s9, 208(sp)
  LD s8, 216(sp)
  LD s7, 224(sp)
  LD s6, 232(sp)
  LD s0, 240(sp)
  LD s5, 248(sp)
  LD s1, 256(sp)
  LD s2, 264(sp)
  LD s3, 272(sp)
  LD s4, 280(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb13:
  ADD a0, s1, zero
  LD ra, 184(sp)
  LD s11, 192(sp)
  LD s10, 200(sp)
  LD s9, 208(sp)
  LD s8, 216(sp)
  LD s7, 224(sp)
  LD s6, 232(sp)
  LD s0, 240(sp)
  LD s5, 248(sp)
  LD s1, 256(sp)
  LD s2, 264(sp)
  LD s3, 272(sp)
  LD s4, 280(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -912
  SD ra, 808(sp)
  SD s9, 816(sp)
  SD s10, 824(sp)
  SD s7, 832(sp)
  SD s1, 840(sp)
  SD s6, 848(sp)
  SD s2, 856(sp)
  SD s0, 864(sp)
  SD s5, 872(sp)
  SD s3, 880(sp)
  SD s4, 888(sp)
  SD s8, 896(sp)
  SD s11, 904(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 484(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 480(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 476(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 472(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 468(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 464(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 460(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 456(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 452(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 448(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 444(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 440(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 424(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 428(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 432(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 436(sp)
  LW t4, 484(sp)
  SW t4, 96(sp)
  ADDI t4, sp, 100
  SD t4, 600(sp)
  LW t4, 480(sp)
  LD t3, 600(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 104
  SD t4, 592(sp)
  LW t4, 476(sp)
  LD t3, 592(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 108
  SD t4, 584(sp)
  LW t4, 472(sp)
  LD t3, 584(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 112
  SD t4, 576(sp)
  LW t4, 468(sp)
  LD t3, 576(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 116
  SD t4, 568(sp)
  LW t4, 464(sp)
  LD t3, 568(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 120
  SD t4, 560(sp)
  LW t4, 460(sp)
  LD t3, 560(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 124
  SD t4, 552(sp)
  LW t4, 456(sp)
  LD t3, 552(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 128
  SD t4, 544(sp)
  LW t4, 452(sp)
  LD t3, 544(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 132
  SD t4, 536(sp)
  LW t4, 448(sp)
  LD t3, 536(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 136
  SD t4, 528(sp)
  LW t4, 444(sp)
  LD t3, 528(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 140
  SD t4, 520(sp)
  LW t4, 440(sp)
  LD t3, 520(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 144
  SD t4, 512(sp)
  LW t4, 424(sp)
  LD t3, 512(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 148
  SD t4, 488(sp)
  LW t4, 428(sp)
  LD t3, 488(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 152
  SD t4, 496(sp)
  LW t4, 432(sp)
  LD t3, 496(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 156
  SD t4, 504(sp)
  LW t4, 436(sp)
  LD t3, 504(sp)
  SW t4, 0(t3)
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb15
bb15:
  ADD s3, s2, zero
  ADD s4, s1, zero
  SLTI s5, s3, 15
  BNE s5, zero, bb23
  # implict jump to bb16
bb16:
  LW s0, 96(sp)
  LD t4, 600(sp)
  LW s1, 0(t4)
  LD t4, 592(sp)
  LW s2, 0(t4)
  LD t4, 584(sp)
  LW s3, 0(t4)
  LD t4, 576(sp)
  LW s4, 0(t4)
  LD t4, 568(sp)
  LW s5, 0(t4)
  LD t4, 560(sp)
  LW s6, 0(t4)
  LD t4, 552(sp)
  LW s7, 0(t4)
  LD t4, 544(sp)
  LW s8, 0(t4)
  LD t4, 536(sp)
  LW s9, 0(t4)
  LD t4, 528(sp)
  LW s10, 0(t4)
  LD t4, 520(sp)
  LW s11, 0(t4)
  LD t3, 512(sp)
  LW t4, 0(t3)
  SW t4, 612(sp)
  LD t3, 488(sp)
  LW t4, 0(t3)
  SW t4, 616(sp)
  LD t3, 496(sp)
  LW t4, 0(t3)
  SW t4, 620(sp)
  LD t3, 504(sp)
  LW t4, 0(t3)
  SW t4, 624(sp)
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
  LW t4, 612(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 20
  LW t4, 616(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 24
  LW t4, 620(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 28
  LW t4, 624(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 32
  LW t4, 484(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 36
  LW t4, 480(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 40
  LW t4, 476(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 44
  LW t4, 472(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 48
  LW t4, 468(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 52
  LW t4, 464(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 56
  LW t4, 460(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 60
  LW t4, 456(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 64
  LW t4, 452(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 68
  LW t4, 448(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 72
  LW t4, 444(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 76
  LW t4, 440(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 80
  LW t4, 424(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 84
  LW t4, 428(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 88
  LW t4, 432(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 92
  LW t4, 436(sp)
  SW t4, 0(s0)
  LW t4, 612(sp)
  LW t3, 616(sp)
  LW t4, 620(sp)
  LW t3, 624(sp)
  LW t4, 484(sp)
  LW t3, 480(sp)
  LW t4, 476(sp)
  LW t3, 472(sp)
  LW t4, 468(sp)
  LW t3, 464(sp)
  LW t4, 460(sp)
  LW t3, 456(sp)
  LW t4, 452(sp)
  LW t3, 448(sp)
  LW t4, 444(sp)
  LW t3, 440(sp)
  LW t4, 424(sp)
  LW t3, 428(sp)
  LW t4, 432(sp)
  LW t3, 436(sp)
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
  # implict jump to bb17
bb17:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb22
  # implict jump to bb18
bb18:
  ADDI s0, zero, 1
  # implict jump to bb19
bb19:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  BNE s2, zero, bb21
  # implict jump to bb20
bb20:
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
  SD t4, 800(sp)
  ADDI t4, sp, 248
  SD t4, 792(sp)
  ADDI t4, sp, 256
  SD t4, 784(sp)
  ADDI t4, sp, 264
  SD t4, 632(sp)
  ADDI t4, sp, 272
  SD t4, 640(sp)
  ADDI t4, sp, 280
  SD t4, 648(sp)
  ADDI t4, sp, 288
  SD t4, 656(sp)
  ADDI t4, sp, 296
  SD t4, 664(sp)
  ADDI t4, sp, 304
  SD t4, 672(sp)
  ADDI t4, sp, 312
  SD t4, 680(sp)
  ADDI t4, sp, 320
  SD t4, 688(sp)
  ADDI t4, sp, 328
  SD t4, 696(sp)
  ADDI t4, sp, 336
  SD t4, 704(sp)
  ADDI t4, sp, 344
  SD t4, 712(sp)
  ADDI t4, sp, 352
  SD t4, 720(sp)
  ADDI t4, sp, 360
  SD t4, 728(sp)
  ADDI t4, sp, 368
  SD t4, 736(sp)
  ADDI t4, sp, 376
  SD t4, 744(sp)
  ADDI t4, sp, 384
  SD t4, 752(sp)
  ADDI t4, sp, 392
  SD t4, 760(sp)
  ADDI t4, sp, 400
  SD t4, 768(sp)
  ADDI t4, sp, 408
  SD t4, 776(sp)
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
  LD t4, 800(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 244
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 792(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 252
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 784(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 260
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 632(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 268
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 640(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 276
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 648(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 284
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 656(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 292
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 664(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 300
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 672(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 308
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 680(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 316
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 688(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 324
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 696(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 332
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 704(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 340
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 712(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 348
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 720(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 356
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 728(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 364
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 736(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 372
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 744(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 380
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 752(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 388
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 760(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 396
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 768(sp)
  LW s1, 0(t4)
  ADDW s2, s0, s1
  ADDI s0, sp, 404
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LD t4, 776(sp)
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
  LD ra, 808(sp)
  LD s9, 816(sp)
  LD s10, 824(sp)
  LD s7, 832(sp)
  LD s1, 840(sp)
  LD s6, 848(sp)
  LD s2, 856(sp)
  LD s0, 864(sp)
  LD s5, 872(sp)
  LD s3, 880(sp)
  LD s4, 888(sp)
  LD s8, 896(sp)
  LD s11, 904(sp)
  ADDI sp, sp, 912
  JALR zero, 0(ra)
bb21:
  SLLIW s2, s1, 3
  ADDI t5, sp, 160
  ADD s3, t5, s2
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  SLLIW s2, s4, 3
  ADDI t5, sp, 160
  ADD s4, t5, s2
  ADDI s2, s4, 4
  LW s5, 0(s2)
  ADDI s2, zero, 1
  SUBW s6, s5, s2
  SW s6, 0(s3)
  ADDI s2, s3, 4
  LW s3, 0(s4)
  ADDI s4, zero, 2
  SUBW s5, s3, s4
  SW s5, 0(s2)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb19
bb22:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SLLIW s1, s3, 2
  ADDIW s2, s1, 8
  ADDI t5, sp, 160
  ADD s1, t5, s2
  SW zero, 0(s1)
  ADD s0, s3, zero
  JAL zero, bb17
bb23:
  ADDIW t4, s3, 1
  SW t4, 608(sp)
  ADD s6, s4, zero
  LW t4, 608(sp)
  ADD s4, t4, zero
  # implict jump to bb24
bb24:
  ADD s7, s4, zero
  ADD s8, s6, zero
  SLTI s9, s7, 16
  BNE s9, zero, bb26
  # implict jump to bb25
bb25:
  ADD s1, s8, zero
  LW t4, 608(sp)
  ADD s2, t4, zero
  JAL zero, bb15
bb26:
  SLLIW s9, s3, 2
  ADDI t5, sp, 96
  ADD s10, t5, s9
  LW s9, 0(s10)
  SLLIW s11, s7, 2
  ADDI t5, sp, 96
  ADD s0, t5, s11
  LW s11, 0(s0)
  SLT s5, s9, s11
  BNE s5, zero, bb29
  # implict jump to bb27
bb27:
  ADD s0, s8, zero
  # implict jump to bb28
bb28:
  ADD s5, s0, zero
  ADDIW s9, s7, 1
  ADD s6, s5, zero
  ADD s4, s9, zero
  JAL zero, bb24
bb29:
  LW s5, 0(s10)
  LW s9, 0(s0)
  SW s9, 0(s10)
  SW s5, 0(s0)
  ADD s0, s5, zero
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
  SLLIW s11, s5, 2
  ADD t0, s0, s11
  LW s11, 0(t0)
  SLLIW t1, s9, 2
  ADD t2, s0, t1
  LW t1, 0(t2)
  SLT a0, s11, t1
  BNE a0, zero, bb39
  # implict jump to bb37
bb37:
  ADD t0, s10, zero
  # implict jump to bb38
bb38:
  ADD s11, t0, zero
  ADDIW t1, s9, 1
  ADD s8, s11, zero
  ADD s6, t1, zero
  JAL zero, bb34
bb39:
  LW s11, 0(t0)
  LW t1, 0(t2)
  SW t1, 0(t0)
  SW s11, 0(t2)
  ADD t0, s11, zero
  JAL zero, bb38
