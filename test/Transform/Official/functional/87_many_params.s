.global param16
.global param32_arr
.global param32_rec
.global main
.global sort
.section .bss
.section .data
.section .text
param16:
  ADDI sp, sp, -496
  SD ra, 208(sp)
  SD s0, 288(sp)
  SD s1, 296(sp)
  SD s2, 304(sp)
  SD s3, 312(sp)
  SD s4, 320(sp)
  SD s5, 328(sp)
  SD s6, 336(sp)
  SD s7, 344(sp)
  SD s8, 352(sp)
  SD s9, 360(sp)
  SD s10, 368(sp)
  SD s11, 376(sp)
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
  SW t4, 100(sp)
  ADD t4, a6, zero
  SW t4, 104(sp)
  ADD t4, a7, zero
  SW t4, 108(sp)
  ADDI ra, sp, 496
  ADD ra, ra, zero
  LW t4, 0(ra)
  SW t4, 112(sp)
  ADDI t0, sp, 500
  LW t4, 0(t0)
  SW t4, 116(sp)
  ADDI t1, sp, 504
  LW t4, 0(t1)
  SW t4, 124(sp)
  ADDI t2, sp, 508
  LW t4, 0(t2)
  SW t4, 128(sp)
  ADDI t6, sp, 512
  LW t4, 0(t6)
  SW t4, 200(sp)
  ADDI t6, sp, 516
  LW t4, 0(t6)
  SW t4, 196(sp)
  ADDI t6, sp, 520
  LW t4, 0(t6)
  SW t4, 192(sp)
  ADDI t6, sp, 524
  LW t4, 0(t6)
  SW t4, 132(sp)
  LW t4, 152(sp)
  SW t4, 224(sp)
  ADDI t4, sp, 228
  SD t4, 216(sp)
  LW t4, 148(sp)
  LD t3, 216(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 232
  SD t4, 392(sp)
  LW t4, 144(sp)
  LD t3, 392(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 236
  SD t4, 400(sp)
  LW t4, 140(sp)
  LD t3, 400(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 240
  SD t4, 408(sp)
  LW t4, 136(sp)
  LD t3, 408(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 244
  SD t4, 416(sp)
  LW t4, 100(sp)
  LD t3, 416(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 248
  SD t4, 424(sp)
  LW t4, 104(sp)
  LD t3, 424(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 252
  SD t4, 432(sp)
  LW t4, 108(sp)
  LD t3, 432(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 256
  SD t4, 440(sp)
  LW t4, 112(sp)
  LD t3, 440(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 260
  SD t4, 448(sp)
  LW t4, 116(sp)
  LD t3, 448(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 264
  SD t4, 456(sp)
  LW t4, 124(sp)
  LD t3, 456(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 268
  SD t4, 464(sp)
  LW t4, 128(sp)
  LD t3, 464(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 272
  SD t4, 472(sp)
  LW t4, 200(sp)
  LD t3, 472(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 276
  SD t4, 480(sp)
  LW t4, 196(sp)
  LD t3, 480(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 280
  SD t4, 488(sp)
  LW t4, 192(sp)
  LD t3, 488(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 284
  SD t4, 384(sp)
  LW t4, 132(sp)
  LD t3, 384(sp)
  SW t4, 0(t3)
  ADDI t6, zero, 0
  SLTI t6, t6, 15
  BNE t6, zero, bb2
  # implict jump to bb1
bb1:
  LW s6, 224(sp)
  LD t4, 216(sp)
  LW s7, 0(t4)
  LD t4, 392(sp)
  LW s8, 0(t4)
  LD t4, 400(sp)
  LW s9, 0(t4)
  LD t4, 408(sp)
  LW s10, 0(t4)
  LD t4, 416(sp)
  LW s11, 0(t4)
  LD t4, 424(sp)
  LW t0, 0(t4)
  LD t4, 432(sp)
  LW s5, 0(t4)
  LD t4, 440(sp)
  LW s4, 0(t4)
  LD t4, 448(sp)
  LW s3, 0(t4)
  LD t3, 456(sp)
  LW t4, 0(t3)
  SW t4, 188(sp)
  LD t4, 464(sp)
  LW s1, 0(t4)
  LD t3, 472(sp)
  LW t4, 0(t3)
  SW t4, 180(sp)
  LD t4, 480(sp)
  LW s0, 0(t4)
  LD t3, 488(sp)
  LW t4, 0(t3)
  SW t4, 184(sp)
  LD t4, 384(sp)
  LW s2, 0(t4)
  ADD a0, s6, zero
  ADD a1, s7, zero
  ADD a2, s8, zero
  ADD a3, s9, zero
  ADD a4, s10, zero
  ADD a5, s11, zero
  ADD a6, t0, zero
  ADD a7, s5, zero
  ADDI t5, sp, 0
  ADD s5, t5, zero
  SW s4, 0(s5)
  ADDI s5, sp, 4
  SW s3, 0(s5)
  ADDI s5, sp, 8
  LW t4, 188(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 12
  SW s1, 0(s5)
  ADDI s5, sp, 16
  LW t4, 180(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 20
  SW s0, 0(s5)
  ADDI s5, sp, 24
  LW t4, 184(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 28
  SW s2, 0(s5)
  ADDI s5, sp, 32
  LW t4, 152(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 36
  LW t4, 148(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 40
  LW t4, 144(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 44
  LW t4, 140(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 48
  LW t4, 136(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 52
  LW t4, 100(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 56
  LW t4, 104(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 60
  LW t4, 108(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 64
  LW t4, 112(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 68
  LW t4, 116(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 72
  LW t4, 124(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 76
  LW t4, 128(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 80
  LW t4, 200(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 84
  LW t4, 196(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 88
  LW t4, 192(sp)
  SW t4, 0(s5)
  ADDI s5, sp, 92
  LW t4, 132(sp)
  SW t4, 0(s5)
  LW t4, 188(sp)
  LW t3, 180(sp)
  LW t4, 184(sp)
  LW t3, 152(sp)
  LW t4, 148(sp)
  LW t3, 144(sp)
  LW t4, 140(sp)
  LW t3, 136(sp)
  LW t4, 100(sp)
  LW t3, 104(sp)
  LW t4, 108(sp)
  LW t3, 112(sp)
  LW t4, 116(sp)
  LW t3, 124(sp)
  LW t4, 128(sp)
  LW t3, 200(sp)
  LW t4, 196(sp)
  LW t3, 192(sp)
  LW t4, 132(sp)
  CALL param32_rec
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 208(sp)
  LD s0, 288(sp)
  LD s1, 296(sp)
  LD s2, 304(sp)
  LD s3, 312(sp)
  LD s4, 320(sp)
  LD s5, 328(sp)
  LD s6, 336(sp)
  LD s7, 344(sp)
  LD s8, 352(sp)
  LD s9, 360(sp)
  LD s10, 368(sp)
  LD s11, 376(sp)
  ADDI sp, sp, 496
  JALR zero, 0(ra)
bb2:
  # implict jump to bb3
bb3:
  ADD t4, zero, zero
  SW t4, 204(sp)
  ADD t4, zero, zero
  SW t4, 172(sp)
  # implict jump to bb4
bb4:
  LW t4, 172(sp)
  ADD t1, t4, zero
  LW t3, 204(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 120(sp)
  ADDIW t4, t3, 1
  SW t4, 96(sp)
  LW t4, 96(sp)
  SLTI t0, t4, 16
  BNE t0, zero, bb9
  # implict jump to bb5
bb5:
  ADD t0, t1, zero
  # implict jump to bb6
bb6:
  ADD t4, t0, zero
  SW t4, 176(sp)
  # implict jump to bb7
bb7:
  LW t4, 96(sp)
  SLTI s6, t4, 15
  BNE s6, zero, bb8
  JAL zero, bb1
bb8:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 204(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  JAL zero, bb4
bb9:
  # implict jump to bb10
bb10:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  ADD t4, t1, zero
  SW t4, 156(sp)
  # implict jump to bb11
bb11:
  LW t4, 156(sp)
  ADD s11, t4, zero
  LW t4, 164(sp)
  ADD s10, t4, zero
  LW t4, 120(sp)
  SLLIW s9, t4, 2
  ADDI t5, sp, 224
  ADD s9, t5, s9
  LW s8, 0(s9)
  SLLIW s7, s10, 2
  ADDI t5, sp, 224
  ADD s7, t5, s7
  LW s6, 0(s7)
  BLT s8, s6, bb17
  # implict jump to bb12
bb12:
  ADD s6, s11, zero
  # implict jump to bb13
bb13:
  ADD t4, s6, zero
  SW t4, 160(sp)
  ADDIW t4, s10, 1
  SW t4, 168(sp)
  # implict jump to bb14
bb14:
  LW t4, 168(sp)
  SLTI s6, t4, 16
  BNE s6, zero, bb16
  # implict jump to bb15
bb15:
  LW t4, 160(sp)
  ADD t0, t4, zero
  JAL zero, bb6
bb16:
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  JAL zero, bb11
bb17:
  LW s8, 0(s9)
  LW s11, 0(s7)
  SW s11, 0(s9)
  SW s8, 0(s7)
  ADD s6, s8, zero
  JAL zero, bb13
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
  LW s0, 4(s0)
  ADDW s0, t6, s0
  LW t6, 0(a1)
  ADDW s0, s0, t6
  LW a1, 4(a1)
  ADDW s0, s0, a1
  LW a1, 0(a2)
  ADDW s0, s0, a1
  LW a1, 4(a2)
  ADDW s0, s0, a1
  LW a1, 0(a3)
  ADDW s0, s0, a1
  LW a1, 4(a3)
  ADDW s0, s0, a1
  LW a1, 0(a4)
  ADDW s0, s0, a1
  LW a1, 4(a4)
  ADDW s0, s0, a1
  LW a1, 0(a5)
  ADDW s0, s0, a1
  LW a1, 4(a5)
  ADDW s0, s0, a1
  LW a1, 0(a6)
  ADDW s0, s0, a1
  LW a1, 4(a6)
  ADDW s0, s0, a1
  LW a1, 0(a7)
  ADDW s0, s0, a1
  LW a1, 4(a7)
  ADDW s0, s0, a1
  LW a1, 0(s1)
  ADDW s0, s0, a1
  LW s1, 4(s1)
  ADDW s0, s0, s1
  LW s1, 0(s2)
  ADDW s0, s0, s1
  LW s1, 4(s2)
  ADDW s0, s0, s1
  LW s1, 0(s3)
  ADDW s0, s0, s1
  LW s1, 4(s3)
  ADDW s0, s0, s1
  LW s1, 0(s4)
  ADDW s0, s0, s1
  LW s1, 4(s4)
  ADDW s0, s0, s1
  LW s1, 0(s5)
  ADDW s0, s0, s1
  LW s1, 4(s5)
  ADDW s0, s0, s1
  LW s1, 0(s6)
  ADDW s0, s0, s1
  LW s1, 4(s6)
  ADDW s0, s0, s1
  LW s1, 0(s7)
  ADDW s0, s0, s1
  LW s1, 4(s7)
  ADDW s0, s0, s1
  LW s1, 0(s8)
  ADDW s0, s0, s1
  LW s1, 4(s8)
  ADDW s0, s0, s1
  LW s1, 0(s9)
  ADDW s0, s0, s1
  LW s1, 4(s9)
  ADDW s0, s0, s1
  LW s1, 0(s10)
  ADDW s0, s0, s1
  LW s1, 4(s10)
  ADDW s0, s0, s1
  LW s1, 0(s11)
  ADDW s0, s0, s1
  LW s1, 4(s11)
  ADDW s0, s0, s1
  LW s1, 0(ra)
  ADDW s0, s0, s1
  LW s1, 4(ra)
  ADDW s0, s0, s1
  LW s1, 0(t0)
  ADDW s0, s0, s1
  LW s1, 4(t0)
  ADDW s0, s0, s1
  LW s1, 0(t1)
  ADDW s0, s0, s1
  LW s1, 4(t1)
  ADDW s0, s0, s1
  LW s1, 0(t2)
  ADDW s0, s0, s1
  LW s1, 4(t2)
  ADDW s0, s0, s1
  LD t4, 168(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  LD t4, 168(sp)
  LW s1, 4(t4)
  ADDW s0, s0, s1
  LD t4, 160(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  LD t4, 160(sp)
  LW s1, 4(t4)
  ADDW s0, s0, s1
  LD t4, 152(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  LD t4, 152(sp)
  LW s1, 4(t4)
  ADDW s0, s0, s1
  LD t4, 144(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  LD t4, 144(sp)
  LW s1, 4(t4)
  ADDW s0, s0, s1
  LD t4, 136(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  LD t4, 136(sp)
  LW s1, 4(t4)
  ADDW s0, s0, s1
  LD t4, 128(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  LD t4, 128(sp)
  LW s1, 4(t4)
  ADDW s0, s0, s1
  LD t4, 120(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  LD t4, 120(sp)
  LW s1, 4(t4)
  ADDW s0, s0, s1
  LD t4, 112(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  LD t4, 112(sp)
  LW s1, 4(t4)
  ADDW s0, s0, s1
  LD t4, 104(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  LD t4, 104(sp)
  LW s1, 4(t4)
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
  SW t4, 112(sp)
  ADDI t1, sp, 308
  LW t4, 0(t1)
  SW t4, 108(sp)
  ADDI t2, sp, 312
  LW t4, 0(t2)
  SW t4, 104(sp)
  ADDI t6, sp, 316
  LW t4, 0(t6)
  SW t4, 100(sp)
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
  BNE s1, zero, bb21
  # implict jump to bb20
bb20:
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
  LW t4, 112(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 16
  LW t4, 108(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 20
  LW t4, 104(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 24
  LW t4, 100(sp)
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
  LW t4, 112(sp)
  LW t3, 108(sp)
  LW t4, 104(sp)
  LW t3, 100(sp)
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
bb21:
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
  ADDI sp, sp, -960
  SD ra, 288(sp)
  SD s0, 296(sp)
  SD s1, 304(sp)
  SD s2, 312(sp)
  SD s3, 320(sp)
  SD s4, 328(sp)
  SD s5, 336(sp)
  SD s6, 344(sp)
  SD s7, 352(sp)
  SD s8, 360(sp)
  SD s9, 448(sp)
  SD s10, 488(sp)
  SD s11, 496(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 208(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 212(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 216(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 164(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 224(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 116(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 120(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 124(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 128(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 96(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 136(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 140(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 144(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 148(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 152(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 156(sp)
  LW t4, 208(sp)
  SW t4, 760(sp)
  ADDI t4, sp, 764
  SD t4, 944(sp)
  LW t4, 212(sp)
  LD t3, 944(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 768
  SD t4, 936(sp)
  LW t4, 216(sp)
  LD t3, 936(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 772
  SD t4, 928(sp)
  LW t4, 164(sp)
  LD t3, 928(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 776
  SD t4, 920(sp)
  LW t4, 224(sp)
  LD t3, 920(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 780
  SD t4, 912(sp)
  LW t4, 116(sp)
  LD t3, 912(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 784
  SD t4, 824(sp)
  LW t4, 120(sp)
  LD t3, 824(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 788
  SD t4, 896(sp)
  LW t4, 124(sp)
  LD t3, 896(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 792
  SD t4, 888(sp)
  LW t4, 128(sp)
  LD t3, 888(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 796
  SD t4, 880(sp)
  LW t4, 96(sp)
  LD t3, 880(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 800
  SD t4, 872(sp)
  LW t4, 136(sp)
  LD t3, 872(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 804
  SD t4, 864(sp)
  LW t4, 140(sp)
  LD t3, 864(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 808
  SD t4, 856(sp)
  LW t4, 144(sp)
  LD t3, 856(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 812
  SD t4, 848(sp)
  LW t4, 148(sp)
  LD t3, 848(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 816
  SD t4, 840(sp)
  LW t4, 152(sp)
  LD t3, 840(sp)
  SW t4, 0(t3)
  ADDI t4, sp, 820
  SD t4, 832(sp)
  LW t4, 156(sp)
  LD t3, 832(sp)
  SW t4, 0(t3)
  SLTI s5, zero, 15
  BNE s5, zero, bb36
  # implict jump to bb23
bb23:
  LW s0, 760(sp)
  LD t4, 944(sp)
  LW s1, 0(t4)
  LD t4, 936(sp)
  LW s7, 0(t4)
  LD t4, 928(sp)
  LW s8, 0(t4)
  LD t4, 920(sp)
  LW s9, 0(t4)
  LD t4, 912(sp)
  LW s10, 0(t4)
  LD t4, 824(sp)
  LW s11, 0(t4)
  LD t4, 896(sp)
  LW s2, 0(t4)
  LD t4, 888(sp)
  LW s5, 0(t4)
  LD t4, 880(sp)
  LW s6, 0(t4)
  LD t4, 872(sp)
  LW s4, 0(t4)
  LD t4, 864(sp)
  LW s3, 0(t4)
  LD t3, 856(sp)
  LW t4, 0(t3)
  SW t4, 132(sp)
  LD t3, 848(sp)
  LW t4, 0(t3)
  SW t4, 176(sp)
  LD t3, 840(sp)
  LW t4, 0(t3)
  SW t4, 104(sp)
  LD t3, 832(sp)
  LW t4, 0(t3)
  SW t4, 108(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s7, zero
  ADD a3, s8, zero
  ADD a4, s9, zero
  ADD a5, s10, zero
  ADD a6, s11, zero
  ADD a7, s2, zero
  ADDI t5, sp, 0
  ADD s0, t5, zero
  SW s5, 0(s0)
  ADDI s0, sp, 4
  SW s6, 0(s0)
  ADDI s0, sp, 8
  SW s4, 0(s0)
  ADDI s0, sp, 12
  SW s3, 0(s0)
  ADDI s0, sp, 16
  LW t4, 132(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 20
  LW t4, 176(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 24
  LW t4, 104(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 28
  LW t4, 108(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 32
  LW t4, 208(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 36
  LW t4, 212(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 40
  LW t4, 216(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 44
  LW t4, 164(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 48
  LW t4, 224(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 52
  LW t4, 116(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 56
  LW t4, 120(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 60
  LW t4, 124(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 64
  LW t4, 128(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 68
  LW t4, 96(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 72
  LW t4, 136(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 76
  LW t4, 140(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 80
  LW t4, 144(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 84
  LW t4, 148(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 88
  LW t4, 152(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 92
  LW t4, 156(sp)
  SW t4, 0(s0)
  LW t4, 132(sp)
  LW t3, 176(sp)
  LW t4, 104(sp)
  LW t3, 108(sp)
  LW t4, 208(sp)
  LW t3, 212(sp)
  LW t4, 216(sp)
  LW t3, 164(sp)
  LW t4, 224(sp)
  LW t3, 116(sp)
  LW t4, 120(sp)
  LW t3, 124(sp)
  LW t4, 128(sp)
  LW t3, 96(sp)
  LW t4, 136(sp)
  LW t3, 140(sp)
  LW t4, 144(sp)
  LW t3, 148(sp)
  LW t4, 152(sp)
  LW t3, 156(sp)
  CALL param32_rec
  ADD s0, a0, zero
  SW s0, 504(sp)
  ADDI t4, sp, 508
  SD t4, 904(sp)
  LUI s0, 2
  ADDIW s0, s0, 656
  LD t4, 904(sp)
  SW s0, 0(t4)
  XORI s0, zero, 62
  BNE s0, zero, bb31
  # implict jump to bb24
bb24:
  ADDI s1, zero, 1
  SLTI s1, s1, 32
  BNE s1, zero, bb26
  # implict jump to bb25
bb25:
  ADDI s2, sp, 512
  ADDI s3, sp, 520
  ADDI s4, sp, 528
  ADDI s5, sp, 536
  ADDI s6, sp, 544
  ADDI s7, sp, 552
  ADDI s8, sp, 560
  ADDI s9, sp, 568
  ADDI s10, sp, 576
  ADDI s11, sp, 584
  ADDI t4, sp, 592
  SD t4, 368(sp)
  ADDI t4, sp, 600
  SD t4, 376(sp)
  ADDI t4, sp, 608
  SD t4, 240(sp)
  ADDI t4, sp, 616
  SD t4, 248(sp)
  ADDI t4, sp, 624
  SD t4, 256(sp)
  ADDI t4, sp, 632
  SD t4, 264(sp)
  ADDI t4, sp, 640
  SD t4, 272(sp)
  ADDI t4, sp, 648
  SD t4, 384(sp)
  ADDI t4, sp, 656
  SD t4, 480(sp)
  ADDI t4, sp, 664
  SD t4, 472(sp)
  ADDI t4, sp, 672
  SD t4, 464(sp)
  ADDI t4, sp, 680
  SD t4, 456(sp)
  ADDI t4, sp, 688
  SD t4, 232(sp)
  ADDI t4, sp, 696
  SD t4, 440(sp)
  ADDI t4, sp, 704
  SD t4, 432(sp)
  ADDI t4, sp, 712
  SD t4, 424(sp)
  ADDI t4, sp, 720
  SD t4, 416(sp)
  ADDI t4, sp, 728
  SD t4, 408(sp)
  ADDI t4, sp, 736
  SD t4, 400(sp)
  ADDI t4, sp, 744
  SD t4, 392(sp)
  ADDI t4, sp, 752
  SD t4, 280(sp)
  LW s1, 504(sp)
  LD t4, 904(sp)
  LW s0, 0(t4)
  ADDW s0, s1, s0
  LW s1, 0(s2)
  ADDW s0, s0, s1
  ADDI s1, sp, 516
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LW s1, 0(s3)
  ADDW s0, s0, s1
  ADDI s1, sp, 524
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LW s1, 0(s4)
  ADDW s0, s0, s1
  ADDI s1, sp, 532
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LW s1, 0(s5)
  ADDW s0, s0, s1
  ADDI s1, sp, 540
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LW s1, 0(s6)
  ADDW s0, s0, s1
  ADDI s1, sp, 548
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LW s1, 0(s7)
  ADDW s0, s0, s1
  ADDI s1, sp, 556
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LW s1, 0(s8)
  ADDW s0, s0, s1
  ADDI s1, sp, 564
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LW s1, 0(s9)
  ADDW s0, s0, s1
  ADDI s1, sp, 572
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LW s1, 0(s10)
  ADDW s0, s0, s1
  ADDI s1, sp, 580
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LW s1, 0(s11)
  ADDW s0, s0, s1
  ADDI s1, sp, 588
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 368(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 596
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 376(sp)
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
  LD t4, 248(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 620
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 256(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 628
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 264(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 636
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 272(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 644
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 384(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 652
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 480(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 660
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 472(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 668
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 464(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 676
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 456(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 684
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 232(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 692
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 440(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 700
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 432(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 708
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 424(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 716
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 416(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 724
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 408(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 732
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 400(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 740
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 392(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 748
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 280(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  ADDI s1, sp, 756
  LW s1, 0(s1)
  ADDW s0, s0, s1
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 288(sp)
  LD s0, 296(sp)
  LD s1, 304(sp)
  LD s2, 312(sp)
  LD s3, 320(sp)
  LD s4, 328(sp)
  LD s5, 336(sp)
  LD s6, 344(sp)
  LD s7, 352(sp)
  LD s8, 360(sp)
  LD s9, 448(sp)
  LD s10, 488(sp)
  LD s11, 496(sp)
  ADDI sp, sp, 960
  JALR zero, 0(ra)
bb26:
  ADDI s1, zero, 1
  # implict jump to bb27
bb27:
  ADD t4, s1, zero
  SW t4, 160(sp)
  # implict jump to bb28
bb28:
  LW t4, 160(sp)
  ADD s2, t4, zero
  SLLIW s3, s2, 3
  ADDI t5, sp, 504
  ADD s3, t5, s3
  ADDI s4, zero, 1
  SUBW s4, s2, s4
  SLLIW s4, s4, 3
  ADDI t5, sp, 504
  ADD s4, t5, s4
  LW s5, 4(s4)
  ADDI s6, zero, 1
  SUBW s5, s5, s6
  SW s5, 0(s3)
  LW s4, 0(s4)
  ADDI s5, zero, 2
  SUBW s4, s4, s5
  SW s4, 4(s3)
  ADDIW t4, s2, 1
  SW t4, 168(sp)
  # implict jump to bb29
bb29:
  LW t4, 168(sp)
  SLTI s2, t4, 32
  BNE s2, zero, bb30
  JAL zero, bb25
bb30:
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  JAL zero, bb28
bb31:
  ADDI s0, zero, 62
  # implict jump to bb32
bb32:
  ADD t4, s0, zero
  SW t4, 112(sp)
  # implict jump to bb33
bb33:
  LW t4, 112(sp)
  ADD s1, t4, zero
  ADDI s2, zero, 1
  SUBW t4, s1, s2
  SW t4, 172(sp)
  LW t4, 172(sp)
  SLLIW s1, t4, 2
  ADDIW s1, s1, 8
  ADDI t5, sp, 504
  ADD s1, t5, s1
  SW zero, 0(s1)
  # implict jump to bb34
bb34:
  LW t4, 172(sp)
  BNE t4, zero, bb35
  JAL zero, bb24
bb35:
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  JAL zero, bb33
bb36:
  # implict jump to bb37
bb37:
  ADD t4, zero, zero
  SW t4, 180(sp)
  ADD t4, zero, zero
  SW t4, 188(sp)
  # implict jump to bb38
bb38:
  LW t4, 188(sp)
  ADD s10, t4, zero
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 220(sp)
  LW t3, 220(sp)
  ADDIW t4, t3, 1
  SW t4, 100(sp)
  LW t4, 100(sp)
  SLTI s9, t4, 16
  BNE s9, zero, bb43
  # implict jump to bb39
bb39:
  ADD s9, s10, zero
  # implict jump to bb40
bb40:
  ADD t4, s9, zero
  SW t4, 184(sp)
  # implict jump to bb41
bb41:
  LW t4, 100(sp)
  SLTI s0, t4, 15
  BNE s0, zero, bb42
  JAL zero, bb23
bb42:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  JAL zero, bb38
bb43:
  # implict jump to bb44
bb44:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 196(sp)
  ADD t4, s10, zero
  SW t4, 204(sp)
  # implict jump to bb45
bb45:
  LW t4, 204(sp)
  ADD s7, t4, zero
  LW t4, 196(sp)
  ADD s10, t4, zero
  LW t4, 220(sp)
  SLLIW s1, t4, 2
  ADDI t5, sp, 760
  ADD s1, t5, s1
  LW s8, 0(s1)
  SLLIW s0, s10, 2
  ADDI t5, sp, 760
  ADD s0, t5, s0
  LW s11, 0(s0)
  BLT s8, s11, bb51
  # implict jump to bb46
bb46:
  # implict jump to bb47
bb47:
  ADD t4, s7, zero
  SW t4, 200(sp)
  ADDIW t4, s10, 1
  SW t4, 192(sp)
  # implict jump to bb48
bb48:
  LW t4, 192(sp)
  SLTI s0, t4, 16
  BNE s0, zero, bb50
  # implict jump to bb49
bb49:
  LW t4, 200(sp)
  ADD s9, t4, zero
  JAL zero, bb40
bb50:
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 196(sp)
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 204(sp)
  JAL zero, bb45
bb51:
  LW s8, 0(s1)
  LW s11, 0(s0)
  SW s11, 0(s1)
  SW s8, 0(s0)
  ADD s7, s8, zero
  JAL zero, bb47
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
  ADDI s4, zero, 1
  SUBW s4, a1, s4
  BLT zero, s4, bb54
  # implict jump to bb53
bb53:
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
bb54:
  # implict jump to bb55
bb55:
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb56
bb56:
  ADD s6, s5, zero
  ADD s7, s4, zero
  ADDIW s0, s7, 1
  BLT s0, a1, bb61
  # implict jump to bb57
bb57:
  ADD s8, s6, zero
  # implict jump to bb58
bb58:
  ADD s1, s8, zero
  # implict jump to bb59
bb59:
  ADDI s8, zero, 1
  SUBW s8, a1, s8
  BLT s0, s8, bb60
  JAL zero, bb53
bb60:
  ADD s4, s0, zero
  ADD s5, s1, zero
  JAL zero, bb56
bb61:
  # implict jump to bb62
bb62:
  ADD s9, s0, zero
  # implict jump to bb63
bb63:
  ADD s10, s6, zero
  ADD s11, s9, zero
  SLLIW t0, s7, 2
  ADD t0, a0, t0
  LW t1, 0(t0)
  SLLIW t2, s11, 2
  ADD t2, a0, t2
  LW a2, 0(t2)
  BLT t1, a2, bb69
  # implict jump to bb64
bb64:
  # implict jump to bb65
bb65:
  ADD s2, s10, zero
  ADDIW s3, s11, 1
  # implict jump to bb66
bb66:
  BLT s3, a1, bb68
  # implict jump to bb67
bb67:
  ADD s8, s2, zero
  JAL zero, bb58
bb68:
  ADD s9, s3, zero
  ADD s6, s2, zero
  JAL zero, bb63
bb69:
  LW t1, 0(t0)
  LW a2, 0(t2)
  SW a2, 0(t0)
  SW t1, 0(t2)
  ADD s10, t1, zero
  JAL zero, bb65
