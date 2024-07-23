.global main
.global model
.global relu_reg
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -512
  SD ra, 128(sp)
  SD s0, 136(sp)
  SD s1, 144(sp)
  SD s2, 152(sp)
  SD s3, 160(sp)
  SD s8, 176(sp)
  SD s11, 184(sp)
  SD s5, 200(sp)
  SD s7, 208(sp)
  SD s9, 216(sp)
  SD s10, 224(sp)
  SD s4, 232(sp)
  SD s6, 240(sp)
  CALL getint
  ADD s0, a0, zero
  ADDI t4, sp, 252
  SD t4, 120(sp)
  ADDI t4, sp, 256
  SD t4, 112(sp)
  ADDI t4, sp, 260
  SD t4, 432(sp)
  ADDI t4, sp, 264
  SD t4, 360(sp)
  ADDI t4, sp, 268
  SD t4, 368(sp)
  ADDI t4, sp, 272
  SD t4, 376(sp)
  ADDI t4, sp, 276
  SD t4, 384(sp)
  ADDI t4, sp, 280
  SD t4, 392(sp)
  ADDI t4, sp, 284
  SD t4, 400(sp)
  ADDI t4, sp, 288
  SD t4, 408(sp)
  ADDI t4, sp, 292
  SD t4, 416(sp)
  ADDI t4, sp, 296
  SD t4, 168(sp)
  ADDI t4, sp, 300
  SD t4, 192(sp)
  ADDI t4, sp, 304
  SD t4, 504(sp)
  ADDI t4, sp, 308
  SD t4, 496(sp)
  ADDI t4, sp, 312
  SD t4, 488(sp)
  ADDI t4, sp, 316
  SD t4, 480(sp)
  ADDI t4, sp, 320
  SD t4, 472(sp)
  ADDI t4, sp, 324
  SD t4, 464(sp)
  ADDI t4, sp, 328
  SD t4, 456(sp)
  ADDI t4, sp, 332
  SD t4, 448(sp)
  ADDI t4, sp, 336
  SD t4, 440(sp)
  ADDI t4, sp, 340
  SD t4, 352(sp)
  ADDI t4, sp, 344
  SD t4, 424(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  ADD t4, s0, zero
  SW t4, 100(sp)
  # implict jump to bb1
bb1:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t4, 4(sp)
  ADD s10, t4, zero
  ADDI s9, zero, 0
  LW t4, 20(sp)
  BLT s9, t4, bb3
  # implict jump to bb2
bb2:
  ADD a0, zero, zero
  LD ra, 128(sp)
  LD s0, 136(sp)
  LD s1, 144(sp)
  LD s2, 152(sp)
  LD s3, 160(sp)
  LD s8, 176(sp)
  LD s11, 184(sp)
  LD s5, 200(sp)
  LD s7, 208(sp)
  LD s9, 216(sp)
  LD s10, 224(sp)
  LD s4, 232(sp)
  LD s6, 240(sp)
  ADDI sp, sp, 512
  JALR zero, 0(ra)
bb3:
  ADD t4, s10, zero
  SW t4, 104(sp)
  ADD t4, zero, zero
  SW t4, 108(sp)
  # implict jump to bb4
bb4:
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t4, 8(sp)
  SLTI s7, t4, 5
  BNE s7, zero, bb62
  # implict jump to bb5
bb5:
  LW s7, 248(sp)
  ADDI s6, zero, 85
  MULW s6, s7, s6
  LD t4, 120(sp)
  LW s5, 0(t4)
  ADDI s4, zero, 23
  MULW s4, s5, s4
  ADDW s4, s6, s4
  LD t4, 112(sp)
  LW s6, 0(t4)
  ADDI s3, zero, -82
  MULW s3, s6, s3
  ADDW s3, s4, s3
  LD t3, 432(sp)
  LW t4, 0(t3)
  SW t4, 96(sp)
  ADDI s2, zero, -103
  LW t4, 96(sp)
  MULW s2, t4, s2
  ADDW s2, s3, s2
  LD t3, 360(sp)
  LW t4, 0(t3)
  SW t4, 92(sp)
  ADDI s1, zero, -123
  LW t4, 92(sp)
  MULW s1, t4, s1
  ADDW s1, s2, s1
  LD t3, 368(sp)
  LW t4, 0(t3)
  SW t4, 88(sp)
  LW t4, 88(sp)
  SLLIW s10, t4, 6
  ADDW s1, s1, s10
  LD t3, 376(sp)
  LW t4, 0(t3)
  SW t4, 84(sp)
  ADDI s9, zero, -120
  LW t4, 84(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  LD t3, 384(sp)
  LW t4, 0(t3)
  SW t4, 80(sp)
  ADDI s0, zero, 50
  LW t4, 80(sp)
  MULW s0, t4, s0
  ADDW s0, s1, s0
  LD t3, 392(sp)
  LW t4, 0(t3)
  SW t4, 32(sp)
  ADDI s11, zero, -59
  LW t4, 32(sp)
  MULW s11, t4, s11
  ADDW s0, s0, s11
  LD t3, 400(sp)
  LW t4, 0(t3)
  SW t4, 28(sp)
  ADDI s8, zero, 47
  LW t4, 28(sp)
  MULW s8, t4, s8
  ADDW s0, s0, s8
  LD t3, 408(sp)
  LW t4, 0(t3)
  SW t4, 16(sp)
  ADDI s8, zero, -111
  LW t4, 16(sp)
  MULW s8, t4, s8
  ADDW s0, s0, s8
  LD t3, 416(sp)
  LW t4, 0(t3)
  SW t4, 24(sp)
  ADDI s8, zero, -67
  LW t4, 24(sp)
  MULW s8, t4, s8
  ADDW s0, s0, s8
  LD t4, 168(sp)
  LW s11, 0(t4)
  ADDI s1, zero, -106
  MULW s1, s11, s1
  ADDW s0, s0, s1
  LD t3, 192(sp)
  LW t4, 0(t3)
  SW t4, 36(sp)
  ADDI s1, zero, -75
  LW t4, 36(sp)
  MULW s1, t4, s1
  ADDW s0, s0, s1
  LD t3, 504(sp)
  LW t4, 0(t3)
  SW t4, 40(sp)
  ADDI s1, zero, -102
  LW t4, 40(sp)
  MULW s1, t4, s1
  ADDW s0, s0, s1
  LD t3, 496(sp)
  LW t4, 0(t3)
  SW t4, 44(sp)
  ADDI s1, zero, 34
  LW t4, 44(sp)
  MULW s1, t4, s1
  ADDW s0, s0, s1
  LD t3, 488(sp)
  LW t4, 0(t3)
  SW t4, 48(sp)
  ADDI s1, zero, -39
  LW t4, 48(sp)
  MULW s1, t4, s1
  ADDW s0, s0, s1
  LD t3, 480(sp)
  LW t4, 0(t3)
  SW t4, 52(sp)
  ADDI s1, zero, 65
  LW t4, 52(sp)
  MULW s1, t4, s1
  ADDW s0, s0, s1
  LD t3, 472(sp)
  LW t4, 0(t3)
  SW t4, 56(sp)
  ADDI s1, zero, 47
  LW t4, 56(sp)
  MULW s1, t4, s1
  ADDW s0, s0, s1
  LD t3, 464(sp)
  LW t4, 0(t3)
  SW t4, 60(sp)
  ADDI s1, zero, 113
  LW t4, 60(sp)
  MULW s1, t4, s1
  ADDW s0, s0, s1
  LD t3, 456(sp)
  LW t4, 0(t3)
  SW t4, 0(sp)
  ADDI s1, zero, 110
  LW t4, 0(sp)
  MULW s1, t4, s1
  ADDW s0, s0, s1
  LD t3, 448(sp)
  LW t4, 0(t3)
  SW t4, 64(sp)
  ADDI s1, zero, 47
  LW t4, 64(sp)
  MULW s1, t4, s1
  ADDW s0, s0, s1
  LD t3, 440(sp)
  LW t4, 0(t3)
  SW t4, 68(sp)
  ADDI s1, zero, -4
  LW t4, 68(sp)
  MULW s1, t4, s1
  ADDW s0, s0, s1
  LD t3, 352(sp)
  LW t4, 0(t3)
  SW t4, 72(sp)
  ADDI s1, zero, 80
  LW t4, 72(sp)
  MULW s1, t4, s1
  ADDW s0, s0, s1
  LD t3, 424(sp)
  LW t4, 0(t3)
  SW t4, 76(sp)
  ADDI s1, zero, 46
  LW t4, 76(sp)
  MULW s1, t4, s1
  ADDW s0, s0, s1
  ADDI s1, zero, 127
  BLT s1, s0, bb61
  # implict jump to bb6
bb6:
  BLT s0, zero, bb60
  # implict jump to bb7
bb7:
  # implict jump to bb8
bb8:
  ADDI s1, zero, 39
  MULW s0, s0, s1
  ADDI s1, zero, -106
  MULW s1, s7, s1
  ADDI s9, zero, 126
  MULW s9, s5, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -18
  MULW s9, s6, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -31
  LW t4, 96(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -8
  LW t4, 92(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, 47
  LW t4, 88(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -4
  LW t4, 84(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, 67
  LW t4, 80(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -94
  LW t4, 32(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -121
  LW t4, 28(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, 7
  LW t4, 16(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -21
  LW t4, 24(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -60
  MULW s9, s11, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -43
  LW t4, 36(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, 105
  LW t4, 40(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -42
  LW t4, 44(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, 87
  LW t4, 48(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, 29
  LW t4, 52(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -106
  LW t4, 56(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -31
  LW t4, 60(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -110
  LW t4, 0(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -100
  LW t4, 64(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -22
  LW t4, 68(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -75
  LW t4, 72(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -125
  LW t4, 76(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, 127
  BLT s9, s1, bb59
  # implict jump to bb9
bb9:
  BLT s1, zero, bb58
  # implict jump to bb10
bb10:
  # implict jump to bb11
bb11:
  ADDI s9, zero, 77
  MULW s1, s1, s9
  ADDW s0, s0, s1
  ADDI s1, zero, 26
  MULW s1, s7, s1
  ADDI s9, zero, 76
  MULW s9, s5, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -70
  MULW s9, s6, s9
  ADDW s1, s1, s9
  ADDI s10, zero, 29
  LW t4, 96(sp)
  MULW s10, t4, s10
  ADDW s1, s1, s10
  ADDI s10, zero, -95
  LW t4, 92(sp)
  MULW s10, t4, s10
  ADDW s1, s1, s10
  ADDI s10, zero, 96
  LW t4, 88(sp)
  MULW s10, t4, s10
  ADDW s1, s1, s10
  ADDI s10, zero, 52
  LW t4, 84(sp)
  MULW s10, t4, s10
  ADDW s1, s1, s10
  ADDI s10, zero, -68
  LW t4, 80(sp)
  MULW s10, t4, s10
  ADDW s1, s1, s10
  ADDI s10, zero, -5
  LW t4, 32(sp)
  MULW s10, t4, s10
  ADDW s1, s1, s10
  ADDI s10, zero, 34
  LW t4, 28(sp)
  MULW s10, t4, s10
  ADDW s1, s1, s10
  ADDI s10, zero, -34
  LW t4, 16(sp)
  MULW s10, t4, s10
  ADDW s1, s1, s10
  ADDI s10, zero, 102
  LW t4, 24(sp)
  MULW s10, t4, s10
  ADDW s1, s1, s10
  ADDI s10, zero, 6
  MULW s10, s11, s10
  ADDW s1, s1, s10
  ADDI s10, zero, -38
  LW t4, 36(sp)
  MULW s10, t4, s10
  ADDW s1, s1, s10
  ADDI s10, zero, 27
  LW t4, 40(sp)
  MULW s10, t4, s10
  ADDW s1, s1, s10
  ADDI s10, zero, 110
  LW t4, 44(sp)
  MULW s10, t4, s10
  ADDW s1, s1, s10
  ADDI s10, zero, 116
  LW t4, 48(sp)
  MULW s10, t4, s10
  ADDW s1, s1, s10
  ADDI s10, zero, 39
  LW t4, 52(sp)
  MULW s10, t4, s10
  ADDW s1, s1, s10
  ADDI s10, zero, -63
  LW t4, 56(sp)
  MULW s10, t4, s10
  ADDW s1, s1, s10
  ADDI s10, zero, -99
  LW t4, 60(sp)
  MULW s10, t4, s10
  ADDW s1, s1, s10
  ADDI s10, zero, 65
  LW t4, 0(sp)
  MULW s10, t4, s10
  ADDW s1, s1, s10
  ADDI s2, zero, 120
  LW t4, 64(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -39
  LW t4, 68(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -6
  LW t4, 72(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 94
  LW t4, 76(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 127
  BLT s2, s1, bb57
  # implict jump to bb12
bb12:
  BLT s1, zero, bb56
  # implict jump to bb13
bb13:
  # implict jump to bb14
bb14:
  ADDI s2, zero, 127
  MULW s1, s1, s2
  ADDW s0, s0, s1
  ADDI s1, zero, -23
  MULW s1, s7, s1
  ADDI s2, zero, -63
  MULW s2, s5, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 49
  MULW s2, s6, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 50
  LW t4, 96(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 72
  LW t4, 92(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 85
  LW t4, 88(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -30
  LW t4, 84(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 12
  LW t4, 80(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 125
  LW t4, 32(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s3, zero, -117
  LW t4, 28(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -65
  LW t4, 16(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDW s1, s1, s8
  ADDI s3, zero, 125
  MULW s3, s11, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 110
  LW t4, 36(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -31
  LW t4, 40(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -123
  LW t4, 44(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 83
  LW t4, 48(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 122
  LW t4, 52(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 11
  LW t4, 56(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -23
  LW t4, 60(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -47
  LW t4, 0(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -32
  LW t4, 64(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -117
  LW t4, 68(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 95
  LW t4, 72(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 118
  LW t4, 76(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 127
  BLT s3, s1, bb55
  # implict jump to bb15
bb15:
  BLT s1, zero, bb54
  # implict jump to bb16
bb16:
  # implict jump to bb17
bb17:
  ADDI s3, zero, -106
  MULW s1, s1, s3
  ADDW s0, s0, s1
  SLLIW s1, s7, 3
  ADDI s3, zero, 82
  MULW s3, s5, s3
  ADDW s1, s1, s3
  ADDI s8, zero, -104
  MULW s8, s6, s8
  ADDW s1, s1, s8
  ADDI s8, zero, 101
  LW t4, 96(sp)
  MULW s8, t4, s8
  ADDW s1, s1, s8
  ADDI s8, zero, -116
  LW t4, 92(sp)
  MULW s8, t4, s8
  ADDW s1, s1, s8
  ADDI s8, zero, -63
  LW t4, 88(sp)
  MULW s8, t4, s8
  ADDW s1, s1, s8
  ADDI s8, zero, -16
  LW t4, 84(sp)
  MULW s8, t4, s8
  ADDW s1, s1, s8
  ADDI s8, zero, -70
  LW t4, 80(sp)
  MULW s8, t4, s8
  ADDW s1, s1, s8
  ADDW s1, s1, s2
  ADDI s2, zero, 75
  LW t4, 28(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 66
  LW t4, 16(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -96
  LW t4, 24(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -101
  MULW s2, s11, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -114
  LW t4, 36(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 59
  LW t4, 40(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 12
  LW t4, 44(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 5
  LW t4, 48(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -95
  LW t4, 52(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 116
  LW t4, 56(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -93
  LW t4, 60(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 15
  LW t4, 0(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 79
  LW t4, 64(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 3
  LW t4, 68(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 49
  LW t4, 72(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -124
  LW t4, 76(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 127
  BLT s2, s1, bb53
  # implict jump to bb18
bb18:
  BLT s1, zero, bb52
  # implict jump to bb19
bb19:
  # implict jump to bb20
bb20:
  ADDI s2, zero, -3
  MULW s1, s1, s2
  ADDW s0, s0, s1
  ADDI s1, zero, 81
  MULW s1, s7, s1
  ADDI s2, zero, 68
  MULW s2, s5, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -102
  MULW s2, s6, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -74
  LW t4, 96(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 121
  LW t4, 92(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -15
  LW t4, 88(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s8, zero, 55
  LW t4, 84(sp)
  MULW s8, t4, s8
  ADDW s1, s1, s8
  ADDI s8, zero, 101
  LW t4, 80(sp)
  MULW s8, t4, s8
  ADDW s1, s1, s8
  ADDI s8, zero, -13
  LW t4, 32(sp)
  MULW s8, t4, s8
  ADDW s1, s1, s8
  ADDI s8, zero, -62
  LW t4, 28(sp)
  MULW s8, t4, s8
  ADDW s1, s1, s8
  LW t4, 16(sp)
  SLLIW s4, t4, 6
  ADDW s1, s1, s4
  ADDI s4, zero, 114
  LW t4, 24(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, 38
  MULW s4, s11, s4
  ADDW s1, s1, s4
  ADDI s4, zero, -21
  LW t4, 36(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, 112
  LW t4, 40(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, 114
  LW t4, 44(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, 112
  LW t4, 48(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, -10
  LW t4, 52(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, -16
  LW t4, 56(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, -50
  LW t4, 60(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, -112
  LW t4, 0(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, -116
  LW t4, 64(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, -54
  LW t4, 68(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, 82
  LW t4, 72(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, -72
  LW t4, 76(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, 127
  BLT s4, s1, bb51
  # implict jump to bb21
bb21:
  BLT s1, zero, bb50
  # implict jump to bb22
bb22:
  # implict jump to bb23
bb23:
  SLLIW s1, s1, 5
  ADDW s0, s0, s1
  ADDI s1, zero, 15
  MULW s1, s7, s1
  ADDI s4, zero, -77
  MULW s4, s5, s4
  ADDW s1, s1, s4
  ADDI s4, zero, 66
  MULW s4, s6, s4
  ADDW s1, s1, s4
  ADDI s4, zero, -90
  LW t4, 96(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, -6
  LW t4, 92(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, -30
  LW t4, 88(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, -8
  LW t4, 84(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, 81
  LW t4, 80(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  LW t4, 32(sp)
  SLLIW s4, t4, 1
  ADDW s1, s1, s4
  ADDI s4, zero, -110
  LW t4, 28(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, -95
  LW t4, 16(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, 59
  LW t4, 24(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, 52
  MULW s4, s11, s4
  ADDW s1, s1, s4
  ADDI s4, zero, 15
  LW t4, 36(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, 55
  LW t4, 40(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, -33
  LW t4, 44(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, 14
  LW t4, 48(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, 58
  LW t4, 52(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, 67
  LW t4, 56(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, 86
  LW t4, 60(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, -79
  LW t4, 0(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, 48
  LW t4, 64(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, -13
  LW t4, 68(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, -15
  LW t4, 72(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, 66
  LW t4, 76(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, 127
  BLT s4, s1, bb49
  # implict jump to bb24
bb24:
  BLT s1, zero, bb48
  # implict jump to bb25
bb25:
  # implict jump to bb26
bb26:
  ADDI s4, zero, -95
  MULW s1, s1, s4
  ADDW s0, s0, s1
  ADDI s1, zero, 33
  MULW s1, s7, s1
  ADDW s1, s1, s3
  ADDI s3, zero, 67
  MULW s3, s6, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 30
  LW t4, 96(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -2
  LW t4, 92(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 65
  LW t4, 88(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 120
  LW t4, 84(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -13
  LW t4, 80(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 18
  LW t4, 32(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 5
  LW t4, 28(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 104
  LW t4, 16(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -119
  LW t4, 24(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -7
  MULW s3, s11, s3
  ADDW s1, s1, s3
  ADDI s4, zero, 71
  LW t4, 36(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, 107
  LW t4, 40(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, 24
  LW t4, 44(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, 82
  LW t4, 48(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, -96
  LW t4, 52(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, -104
  LW t4, 56(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, -121
  LW t4, 60(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDW s1, s1, s10
  ADDI s4, zero, 97
  LW t4, 64(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, 83
  LW t4, 68(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, 46
  LW t4, 72(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, -84
  LW t4, 76(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, 127
  BLT s4, s1, bb47
  # implict jump to bb27
bb27:
  BLT s1, zero, bb46
  # implict jump to bb28
bb28:
  # implict jump to bb29
bb29:
  ADDI s4, zero, -50
  MULW s1, s1, s4
  ADDW s0, s0, s1
  ADDI s1, zero, -29
  MULW s1, s7, s1
  ADDI s4, zero, 7
  MULW s4, s5, s4
  ADDW s1, s1, s4
  ADDW s1, s1, s9
  ADDI s4, zero, 38
  LW t4, 96(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, -90
  LW t4, 92(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDW s1, s1, s2
  ADDI s2, zero, -32
  LW t4, 84(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 37
  LW t4, 80(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 36
  LW t4, 32(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDW s1, s1, s8
  ADDI s2, zero, -125
  LW t4, 16(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -46
  LW t4, 24(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -70
  MULW s2, s11, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 37
  LW t4, 36(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -73
  LW t4, 40(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -34
  LW t4, 44(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -87
  LW t4, 48(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -75
  LW t4, 52(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 71
  LW t4, 56(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -77
  LW t4, 60(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 53
  LW t4, 0(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 37
  LW t4, 64(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -103
  LW t4, 68(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -13
  LW t4, 72(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -114
  LW t4, 76(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 127
  BLT s2, s1, bb45
  # implict jump to bb30
bb30:
  BLT s1, zero, bb44
  # implict jump to bb31
bb31:
  # implict jump to bb32
bb32:
  ADDI s2, zero, -23
  MULW s1, s1, s2
  ADDW s0, s0, s1
  ADDI s1, zero, 67
  MULW s1, s7, s1
  ADDI s2, zero, 42
  MULW s2, s5, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 41
  MULW s2, s6, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -123
  LW t4, 96(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -92
  LW t4, 92(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 10
  LW t4, 88(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -77
  LW t4, 84(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 75
  LW t4, 80(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 96
  LW t4, 32(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -51
  LW t4, 28(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 109
  LW t4, 16(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -74
  LW t4, 24(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDW s1, s1, s3
  ADDI s2, zero, -122
  LW t4, 36(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 67
  LW t4, 40(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 47
  LW t4, 44(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 22
  LW t4, 48(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -68
  LW t4, 52(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 38
  LW t4, 56(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 29
  LW t4, 60(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 115
  LW t4, 0(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -121
  LW t4, 64(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 36
  LW t4, 68(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -49
  LW t4, 72(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 85
  LW t4, 76(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 127
  BLT s2, s1, bb43
  # implict jump to bb33
bb33:
  BLT s1, zero, bb42
  # implict jump to bb34
bb34:
  # implict jump to bb35
bb35:
  ADDI s2, zero, 46
  MULW s1, s1, s2
  ADDW s0, s0, s1
  BLT zero, s0, bb41
  # implict jump to bb36
bb36:
  ADD s0, zero, zero
  # implict jump to bb37
bb37:
  BNE s0, zero, bb40
  # implict jump to bb38
bb38:
  ADDI a0, zero, 100
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 103
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb39
bb39:
  ADDI s0, zero, 1
  LW t4, 20(sp)
  SUBW s0, t4, s0
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  ADD t4, s0, zero
  SW t4, 100(sp)
  JAL zero, bb1
bb40:
  ADDI a0, zero, 99
  CALL putch
  ADDI a0, zero, 97
  CALL putch
  ADDI a0, zero, 116
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb39
bb41:
  ADDI s0, zero, 1
  JAL zero, bb37
bb42:
  ADD s1, zero, zero
  JAL zero, bb35
bb43:
  ADDI s1, zero, 127
  JAL zero, bb35
bb44:
  ADD s1, zero, zero
  JAL zero, bb32
bb45:
  ADDI s1, zero, 127
  JAL zero, bb32
bb46:
  ADD s1, zero, zero
  JAL zero, bb29
bb47:
  ADDI s1, zero, 127
  JAL zero, bb29
bb48:
  ADD s1, zero, zero
  JAL zero, bb26
bb49:
  ADDI s1, zero, 127
  JAL zero, bb26
bb50:
  ADD s1, zero, zero
  JAL zero, bb23
bb51:
  ADDI s1, zero, 127
  JAL zero, bb23
bb52:
  ADD s1, zero, zero
  JAL zero, bb20
bb53:
  ADDI s1, zero, 127
  JAL zero, bb20
bb54:
  ADD s1, zero, zero
  JAL zero, bb17
bb55:
  ADDI s1, zero, 127
  JAL zero, bb17
bb56:
  ADD s1, zero, zero
  JAL zero, bb14
bb57:
  ADDI s1, zero, 127
  JAL zero, bb14
bb58:
  ADD s1, zero, zero
  JAL zero, bb11
bb59:
  ADDI s1, zero, 127
  JAL zero, bb11
bb60:
  ADD s0, zero, zero
  JAL zero, bb8
bb61:
  ADDI s0, zero, 127
  JAL zero, bb8
bb62:
  ADDI s0, zero, 20
  LW t4, 8(sp)
  MULW s0, t4, s0
  ADDI t5, sp, 248
  ADD s0, t5, s0
  ADD s1, zero, zero
  # implict jump to bb63
bb63:
  ADD s2, s1, zero
  SLTI s3, s2, 5
  BNE s3, zero, bb65
  # implict jump to bb64
bb64:
  LW t4, 8(sp)
  ADDIW s3, t4, 1
  ADD t4, s2, zero
  SW t4, 104(sp)
  ADD t4, s3, zero
  SW t4, 108(sp)
  JAL zero, bb4
bb65:
  SLLIW s3, s2, 2
  ADD s3, s0, s3
  CALL getint
  SW a0, 0(s3)
  ADDIW s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb63
model:
  ADDI sp, sp, -144
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  SD s7, 104(sp)
  SD s8, 112(sp)
  SD s9, 120(sp)
  SD s10, 128(sp)
  SD s11, 136(sp)
  ADD s0, a0, zero
  LW s1, 0(s0)
  ADDI s2, zero, 85
  MULW s2, s1, s2
  ADDI s3, s0, 4
  LW s3, 0(s3)
  ADDI s4, zero, 23
  MULW s4, s3, s4
  ADDW s2, s2, s4
  ADDI s4, s0, 8
  LW s4, 0(s4)
  ADDI s5, zero, -82
  MULW s5, s4, s5
  ADDW s2, s2, s5
  ADDI s5, s0, 12
  LW s5, 0(s5)
  ADDI s6, zero, -103
  MULW s6, s5, s6
  ADDW s2, s2, s6
  ADDI s6, s0, 16
  LW s6, 0(s6)
  ADDI s7, zero, -123
  MULW s7, s6, s7
  ADDW s2, s2, s7
  ADDI s7, s0, 20
  LW s7, 0(s7)
  SLLIW s8, s7, 6
  ADDW s2, s2, s8
  ADDI s8, s0, 24
  LW s8, 0(s8)
  ADDI s9, zero, -120
  MULW s9, s8, s9
  ADDW s2, s2, s9
  ADDI s9, s0, 28
  LW s9, 0(s9)
  ADDI s10, zero, 50
  MULW s10, s9, s10
  ADDW s2, s2, s10
  ADDI s10, s0, 32
  LW s10, 0(s10)
  ADDI s11, zero, -59
  MULW s11, s10, s11
  ADDW s2, s2, s11
  ADDI s11, s0, 36
  LW s11, 0(s11)
  ADDI t0, zero, 47
  MULW t0, s11, t0
  ADDW s2, s2, t0
  ADDI t0, s0, 40
  LW t0, 0(t0)
  ADDI t1, zero, -111
  MULW t1, t0, t1
  ADDW s2, s2, t1
  ADDI t1, s0, 44
  LW t1, 0(t1)
  ADDI t2, zero, -67
  MULW t2, t1, t2
  ADDW s2, s2, t2
  ADDI a1, s0, 48
  LW a1, 0(a1)
  ADDI a2, zero, -106
  MULW a2, a1, a2
  ADDW s2, s2, a2
  ADDI a2, s0, 52
  LW a2, 0(a2)
  ADDI a3, zero, -75
  MULW a3, a2, a3
  ADDW s2, s2, a3
  ADDI a3, s0, 56
  LW a3, 0(a3)
  ADDI a4, zero, -102
  MULW a4, a3, a4
  ADDW s2, s2, a4
  ADDI a4, s0, 60
  LW t4, 0(a4)
  SW t4, 36(sp)
  ADDI a5, zero, 34
  LW t4, 36(sp)
  MULW a5, t4, a5
  ADDW s2, s2, a5
  ADDI a5, s0, 64
  LW t4, 0(a5)
  SW t4, 32(sp)
  ADDI a6, zero, -39
  LW t4, 32(sp)
  MULW a6, t4, a6
  ADDW s2, s2, a6
  ADDI a6, s0, 68
  LW t4, 0(a6)
  SW t4, 28(sp)
  ADDI a7, zero, 65
  LW t4, 28(sp)
  MULW a7, t4, a7
  ADDW s2, s2, a7
  ADDI a7, s0, 72
  LW t4, 0(a7)
  SW t4, 24(sp)
  ADDI t6, zero, 47
  LW t4, 24(sp)
  MULW t6, t4, t6
  ADDW s2, s2, t6
  ADDI t6, s0, 76
  LW t4, 0(t6)
  SW t4, 0(sp)
  ADDI t6, zero, 113
  LW t4, 0(sp)
  MULW t6, t4, t6
  ADDW s2, s2, t6
  ADDI t6, s0, 80
  LW t4, 0(t6)
  SW t4, 4(sp)
  ADDI t6, zero, 110
  LW t4, 4(sp)
  MULW t6, t4, t6
  ADDW s2, s2, t6
  ADDI t6, s0, 84
  LW t4, 0(t6)
  SW t4, 8(sp)
  ADDI t6, zero, 47
  LW t4, 8(sp)
  MULW t6, t4, t6
  ADDW s2, s2, t6
  ADDI t6, s0, 88
  LW t4, 0(t6)
  SW t4, 12(sp)
  ADDI t6, zero, -4
  LW t4, 12(sp)
  MULW t6, t4, t6
  ADDW s2, s2, t6
  ADDI t6, s0, 92
  LW t4, 0(t6)
  SW t4, 16(sp)
  ADDI t6, zero, 80
  LW t4, 16(sp)
  MULW t6, t4, t6
  ADDW s2, s2, t6
  ADDI s0, s0, 96
  LW t4, 0(s0)
  SW t4, 20(sp)
  ADDI t6, zero, 46
  LW t4, 20(sp)
  MULW t6, t4, t6
  ADDW s2, s2, t6
  ADDI t6, zero, 127
  BLT t6, s2, bb118
  # implict jump to bb67
bb67:
  BLT s2, zero, bb117
  # implict jump to bb68
bb68:
  # implict jump to bb69
bb69:
  ADDI t6, zero, 39
  MULW s2, s2, t6
  ADDI t6, zero, -106
  MULW t6, s1, t6
  ADDI s0, zero, 126
  MULW s0, s3, s0
  ADDW s0, t6, s0
  ADDI t6, zero, -18
  MULW t6, s4, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -31
  MULW t6, s5, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -8
  MULW t6, s6, t6
  ADDW s0, s0, t6
  ADDI t6, zero, 47
  MULW t6, s7, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -4
  MULW t6, s8, t6
  ADDW s0, s0, t6
  ADDI t6, zero, 67
  MULW t6, s9, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -94
  MULW t6, s10, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -121
  MULW t6, s11, t6
  ADDW s0, s0, t6
  ADDI t6, zero, 7
  MULW t6, t0, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -21
  MULW t6, t1, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -60
  MULW t6, a1, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -43
  MULW t6, a2, t6
  ADDW s0, s0, t6
  ADDI t6, zero, 105
  MULW t6, a3, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -42
  LW t4, 36(sp)
  MULW t6, t4, t6
  ADDW s0, s0, t6
  ADDI t6, zero, 87
  LW t4, 32(sp)
  MULW t6, t4, t6
  ADDW s0, s0, t6
  ADDI t6, zero, 29
  LW t4, 28(sp)
  MULW t6, t4, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -106
  LW t4, 24(sp)
  MULW t6, t4, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -31
  LW t4, 0(sp)
  MULW t6, t4, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -110
  LW t4, 4(sp)
  MULW t6, t4, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -100
  LW t4, 8(sp)
  MULW t6, t4, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -22
  LW t4, 12(sp)
  MULW t6, t4, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -75
  LW t4, 16(sp)
  MULW t6, t4, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -125
  LW t4, 20(sp)
  MULW t6, t4, t6
  ADDW s0, s0, t6
  ADDI t6, zero, 127
  BLT t6, s0, bb116
  # implict jump to bb70
bb70:
  BLT s0, zero, bb115
  # implict jump to bb71
bb71:
  # implict jump to bb72
bb72:
  ADDI t6, zero, 77
  MULW s0, s0, t6
  ADDW s0, s2, s0
  ADDI s2, zero, 26
  MULW s2, s1, s2
  ADDI t6, zero, 76
  MULW t6, s3, t6
  ADDW s2, s2, t6
  ADDI t6, zero, -70
  MULW t6, s4, t6
  ADDW s2, s2, t6
  ADDI a7, zero, 29
  MULW a7, s5, a7
  ADDW s2, s2, a7
  ADDI a7, zero, -95
  MULW a7, s6, a7
  ADDW s2, s2, a7
  ADDI a7, zero, 96
  MULW a7, s7, a7
  ADDW s2, s2, a7
  ADDI a7, zero, 52
  MULW a7, s8, a7
  ADDW s2, s2, a7
  ADDI a7, zero, -68
  MULW a7, s9, a7
  ADDW s2, s2, a7
  ADDI a7, zero, -5
  MULW a7, s10, a7
  ADDW s2, s2, a7
  ADDI a7, zero, 34
  MULW a7, s11, a7
  ADDW s2, s2, a7
  ADDI a7, zero, -34
  MULW a7, t0, a7
  ADDW s2, s2, a7
  ADDI a7, zero, 102
  MULW a7, t1, a7
  ADDW s2, s2, a7
  ADDI a7, zero, 6
  MULW a7, a1, a7
  ADDW s2, s2, a7
  ADDI a7, zero, -38
  MULW a7, a2, a7
  ADDW s2, s2, a7
  ADDI a7, zero, 27
  MULW a7, a3, a7
  ADDW s2, s2, a7
  ADDI a7, zero, 110
  LW t4, 36(sp)
  MULW a7, t4, a7
  ADDW s2, s2, a7
  ADDI a7, zero, 116
  LW t4, 32(sp)
  MULW a7, t4, a7
  ADDW s2, s2, a7
  ADDI a7, zero, 39
  LW t4, 28(sp)
  MULW a7, t4, a7
  ADDW s2, s2, a7
  ADDI a7, zero, -63
  LW t4, 24(sp)
  MULW a7, t4, a7
  ADDW s2, s2, a7
  ADDI a7, zero, -99
  LW t4, 0(sp)
  MULW a7, t4, a7
  ADDW s2, s2, a7
  ADDI a7, zero, 65
  LW t4, 4(sp)
  MULW a7, t4, a7
  ADDW s2, s2, a7
  ADDI a6, zero, 120
  LW t4, 8(sp)
  MULW a6, t4, a6
  ADDW s2, s2, a6
  ADDI a6, zero, -39
  LW t4, 12(sp)
  MULW a6, t4, a6
  ADDW s2, s2, a6
  ADDI a6, zero, -6
  LW t4, 16(sp)
  MULW a6, t4, a6
  ADDW s2, s2, a6
  ADDI a6, zero, 94
  LW t4, 20(sp)
  MULW a6, t4, a6
  ADDW s2, s2, a6
  ADDI a6, zero, 127
  BLT a6, s2, bb114
  # implict jump to bb73
bb73:
  BLT s2, zero, bb113
  # implict jump to bb74
bb74:
  # implict jump to bb75
bb75:
  ADDI a6, zero, 127
  MULW s2, s2, a6
  ADDW s0, s0, s2
  ADDI s2, zero, -23
  MULW s2, s1, s2
  ADDI a6, zero, -63
  MULW a6, s3, a6
  ADDW s2, s2, a6
  ADDI a6, zero, 49
  MULW a6, s4, a6
  ADDW s2, s2, a6
  ADDI a6, zero, 50
  MULW a6, s5, a6
  ADDW s2, s2, a6
  ADDI a6, zero, 72
  MULW a6, s6, a6
  ADDW s2, s2, a6
  ADDI a6, zero, 85
  MULW a6, s7, a6
  ADDW s2, s2, a6
  ADDI a6, zero, -30
  MULW a6, s8, a6
  ADDW s2, s2, a6
  ADDI a6, zero, 12
  MULW a6, s9, a6
  ADDW s2, s2, a6
  ADDI a6, zero, 125
  MULW a6, s10, a6
  ADDW s2, s2, a6
  ADDI a5, zero, -117
  MULW a5, s11, a5
  ADDW s2, s2, a5
  ADDI a5, zero, -65
  MULW a5, t0, a5
  ADDW s2, s2, a5
  ADDW s2, s2, t2
  ADDI t2, zero, 125
  MULW t2, a1, t2
  ADDW s2, s2, t2
  ADDI t2, zero, 110
  MULW t2, a2, t2
  ADDW s2, s2, t2
  ADDI t2, zero, -31
  MULW t2, a3, t2
  ADDW s2, s2, t2
  ADDI t2, zero, -123
  LW t4, 36(sp)
  MULW t2, t4, t2
  ADDW s2, s2, t2
  ADDI t2, zero, 83
  LW t4, 32(sp)
  MULW t2, t4, t2
  ADDW s2, s2, t2
  ADDI t2, zero, 122
  LW t4, 28(sp)
  MULW t2, t4, t2
  ADDW s2, s2, t2
  ADDI t2, zero, 11
  LW t4, 24(sp)
  MULW t2, t4, t2
  ADDW s2, s2, t2
  ADDI t2, zero, -23
  LW t4, 0(sp)
  MULW t2, t4, t2
  ADDW s2, s2, t2
  ADDI t2, zero, -47
  LW t4, 4(sp)
  MULW t2, t4, t2
  ADDW s2, s2, t2
  ADDI t2, zero, -32
  LW t4, 8(sp)
  MULW t2, t4, t2
  ADDW s2, s2, t2
  ADDI t2, zero, -117
  LW t4, 12(sp)
  MULW t2, t4, t2
  ADDW s2, s2, t2
  ADDI t2, zero, 95
  LW t4, 16(sp)
  MULW t2, t4, t2
  ADDW s2, s2, t2
  ADDI t2, zero, 118
  LW t4, 20(sp)
  MULW t2, t4, t2
  ADDW s2, s2, t2
  ADDI t2, zero, 127
  BLT t2, s2, bb112
  # implict jump to bb76
bb76:
  BLT s2, zero, bb111
  # implict jump to bb77
bb77:
  # implict jump to bb78
bb78:
  ADDI t2, zero, -106
  MULW s2, s2, t2
  ADDW s0, s0, s2
  SLLIW s2, s1, 3
  ADDI t2, zero, 82
  MULW t2, s3, t2
  ADDW s2, s2, t2
  ADDI a5, zero, -104
  MULW a5, s4, a5
  ADDW s2, s2, a5
  ADDI a5, zero, 101
  MULW a5, s5, a5
  ADDW s2, s2, a5
  ADDI a5, zero, -116
  MULW a5, s6, a5
  ADDW s2, s2, a5
  ADDI a5, zero, -63
  MULW a5, s7, a5
  ADDW s2, s2, a5
  ADDI a5, zero, -16
  MULW a5, s8, a5
  ADDW s2, s2, a5
  ADDI a5, zero, -70
  MULW a5, s9, a5
  ADDW s2, s2, a5
  ADDW s2, s2, a6
  ADDI a5, zero, 75
  MULW a5, s11, a5
  ADDW s2, s2, a5
  ADDI a5, zero, 66
  MULW a5, t0, a5
  ADDW s2, s2, a5
  ADDI a5, zero, -96
  MULW a5, t1, a5
  ADDW s2, s2, a5
  ADDI a5, zero, -101
  MULW a5, a1, a5
  ADDW s2, s2, a5
  ADDI a5, zero, -114
  MULW a5, a2, a5
  ADDW s2, s2, a5
  ADDI a5, zero, 59
  MULW a5, a3, a5
  ADDW s2, s2, a5
  ADDI a5, zero, 12
  LW t4, 36(sp)
  MULW a5, t4, a5
  ADDW s2, s2, a5
  ADDI a5, zero, 5
  LW t4, 32(sp)
  MULW a5, t4, a5
  ADDW s2, s2, a5
  ADDI a5, zero, -95
  LW t4, 28(sp)
  MULW a5, t4, a5
  ADDW s2, s2, a5
  ADDI a5, zero, 116
  LW t4, 24(sp)
  MULW a5, t4, a5
  ADDW s2, s2, a5
  ADDI a5, zero, -93
  LW t4, 0(sp)
  MULW a5, t4, a5
  ADDW s2, s2, a5
  ADDI a5, zero, 15
  LW t4, 4(sp)
  MULW a5, t4, a5
  ADDW s2, s2, a5
  ADDI a5, zero, 79
  LW t4, 8(sp)
  MULW a5, t4, a5
  ADDW s2, s2, a5
  ADDI a5, zero, 3
  LW t4, 12(sp)
  MULW a5, t4, a5
  ADDW s2, s2, a5
  ADDI a5, zero, 49
  LW t4, 16(sp)
  MULW a5, t4, a5
  ADDW s2, s2, a5
  ADDI a5, zero, -124
  LW t4, 20(sp)
  MULW a5, t4, a5
  ADDW s2, s2, a5
  ADDI a5, zero, 127
  BLT a5, s2, bb110
  # implict jump to bb79
bb79:
  BLT s2, zero, bb109
  # implict jump to bb80
bb80:
  # implict jump to bb81
bb81:
  ADDI a5, zero, -3
  MULW s2, s2, a5
  ADDW s0, s0, s2
  ADDI s2, zero, 81
  MULW s2, s1, s2
  ADDI a5, zero, 68
  MULW a5, s3, a5
  ADDW s2, s2, a5
  ADDI a5, zero, -102
  MULW a5, s4, a5
  ADDW s2, s2, a5
  ADDI a5, zero, -74
  MULW a5, s5, a5
  ADDW s2, s2, a5
  ADDI a5, zero, 121
  MULW a5, s6, a5
  ADDW s2, s2, a5
  ADDI a5, zero, -15
  MULW a5, s7, a5
  ADDW s2, s2, a5
  ADDI a6, zero, 55
  MULW a6, s8, a6
  ADDW s2, s2, a6
  ADDI a6, zero, 101
  MULW a6, s9, a6
  ADDW s2, s2, a6
  ADDI a6, zero, -13
  MULW a6, s10, a6
  ADDW s2, s2, a6
  ADDI a6, zero, -62
  MULW a6, s11, a6
  ADDW s2, s2, a6
  SLLIW a4, t0, 6
  ADDW s2, s2, a4
  ADDI a4, zero, 114
  MULW a4, t1, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 38
  MULW a4, a1, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -21
  MULW a4, a2, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 112
  MULW a4, a3, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 114
  LW t4, 36(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 112
  LW t4, 32(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -10
  LW t4, 28(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -16
  LW t4, 24(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -50
  LW t4, 0(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -112
  LW t4, 4(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -116
  LW t4, 8(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -54
  LW t4, 12(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 82
  LW t4, 16(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -72
  LW t4, 20(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 127
  BLT a4, s2, bb108
  # implict jump to bb82
bb82:
  BLT s2, zero, bb107
  # implict jump to bb83
bb83:
  # implict jump to bb84
bb84:
  SLLIW s2, s2, 5
  ADDW s0, s0, s2
  ADDI s2, zero, 15
  MULW s2, s1, s2
  ADDI a4, zero, -77
  MULW a4, s3, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 66
  MULW a4, s4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -90
  MULW a4, s5, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -6
  MULW a4, s6, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -30
  MULW a4, s7, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -8
  MULW a4, s8, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 81
  MULW a4, s9, a4
  ADDW s2, s2, a4
  SLLIW a4, s10, 1
  ADDW s2, s2, a4
  ADDI a4, zero, -110
  MULW a4, s11, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -95
  MULW a4, t0, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 59
  MULW a4, t1, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 52
  MULW a4, a1, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 15
  MULW a4, a2, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 55
  MULW a4, a3, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -33
  LW t4, 36(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 14
  LW t4, 32(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 58
  LW t4, 28(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 67
  LW t4, 24(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 86
  LW t4, 0(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -79
  LW t4, 4(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 48
  LW t4, 8(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -13
  LW t4, 12(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -15
  LW t4, 16(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 66
  LW t4, 20(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 127
  BLT a4, s2, bb106
  # implict jump to bb85
bb85:
  BLT s2, zero, bb105
  # implict jump to bb86
bb86:
  # implict jump to bb87
bb87:
  ADDI a4, zero, -95
  MULW s2, s2, a4
  ADDW s0, s0, s2
  ADDI s2, zero, 33
  MULW s2, s1, s2
  ADDW s2, s2, t2
  ADDI t2, zero, 67
  MULW t2, s4, t2
  ADDW s2, s2, t2
  ADDI t2, zero, 30
  MULW t2, s5, t2
  ADDW s2, s2, t2
  ADDI t2, zero, -2
  MULW t2, s6, t2
  ADDW s2, s2, t2
  ADDI t2, zero, 65
  MULW t2, s7, t2
  ADDW s2, s2, t2
  ADDI t2, zero, 120
  MULW t2, s8, t2
  ADDW s2, s2, t2
  ADDI t2, zero, -13
  MULW t2, s9, t2
  ADDW s2, s2, t2
  ADDI t2, zero, 18
  MULW t2, s10, t2
  ADDW s2, s2, t2
  ADDI t2, zero, 5
  MULW t2, s11, t2
  ADDW s2, s2, t2
  ADDI t2, zero, 104
  MULW t2, t0, t2
  ADDW s2, s2, t2
  ADDI t2, zero, -119
  MULW t2, t1, t2
  ADDW s2, s2, t2
  ADDI t2, zero, -7
  MULW t2, a1, t2
  ADDW s2, s2, t2
  ADDI a4, zero, 71
  MULW a4, a2, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 107
  MULW a4, a3, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 24
  LW t4, 36(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 82
  LW t4, 32(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -96
  LW t4, 28(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -104
  LW t4, 24(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -121
  LW t4, 0(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDW s2, s2, a7
  ADDI a4, zero, 97
  LW t4, 8(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 83
  LW t4, 12(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 46
  LW t4, 16(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -84
  LW t4, 20(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 127
  BLT a4, s2, bb104
  # implict jump to bb88
bb88:
  BLT s2, zero, bb103
  # implict jump to bb89
bb89:
  # implict jump to bb90
bb90:
  ADDI a4, zero, -50
  MULW s2, s2, a4
  ADDW s0, s0, s2
  ADDI s2, zero, -29
  MULW s2, s1, s2
  ADDI a4, zero, 7
  MULW a4, s3, a4
  ADDW s2, s2, a4
  ADDW s2, s2, t6
  ADDI a4, zero, 38
  MULW a4, s5, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -90
  MULW a4, s6, a4
  ADDW s2, s2, a4
  ADDW s2, s2, a5
  ADDI a4, zero, -32
  MULW a4, s8, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 37
  MULW a4, s9, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 36
  MULW a4, s10, a4
  ADDW s2, s2, a4
  ADDW s2, s2, a6
  ADDI a4, zero, -125
  MULW a4, t0, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -46
  MULW a4, t1, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -70
  MULW a1, a1, a4
  ADDW s2, s2, a1
  ADDI a1, zero, 37
  MULW a1, a2, a1
  ADDW s2, s2, a1
  ADDI a1, zero, -73
  MULW a1, a3, a1
  ADDW s2, s2, a1
  ADDI a1, zero, -34
  LW t4, 36(sp)
  MULW a1, t4, a1
  ADDW s2, s2, a1
  ADDI a1, zero, -87
  LW t4, 32(sp)
  MULW a1, t4, a1
  ADDW s2, s2, a1
  ADDI a1, zero, -75
  LW t4, 28(sp)
  MULW a1, t4, a1
  ADDW s2, s2, a1
  ADDI a1, zero, 71
  LW t4, 24(sp)
  MULW a1, t4, a1
  ADDW s2, s2, a1
  ADDI a1, zero, -77
  LW t4, 0(sp)
  MULW a1, t4, a1
  ADDW s2, s2, a1
  ADDI a1, zero, 53
  LW t4, 4(sp)
  MULW a1, t4, a1
  ADDW s2, s2, a1
  ADDI a1, zero, 37
  LW t4, 8(sp)
  MULW a1, t4, a1
  ADDW s2, s2, a1
  ADDI a1, zero, -103
  LW t4, 12(sp)
  MULW a1, t4, a1
  ADDW s2, s2, a1
  ADDI a1, zero, -13
  LW t4, 16(sp)
  MULW a1, t4, a1
  ADDW s2, s2, a1
  ADDI a1, zero, -114
  LW t4, 20(sp)
  MULW a1, t4, a1
  ADDW s2, s2, a1
  ADDI a1, zero, 127
  BLT a1, s2, bb102
  # implict jump to bb91
bb91:
  BLT s2, zero, bb101
  # implict jump to bb92
bb92:
  # implict jump to bb93
bb93:
  ADDI a1, zero, -23
  MULW s2, s2, a1
  ADDW s0, s0, s2
  ADDI s2, zero, 67
  MULW s1, s1, s2
  ADDI s2, zero, 42
  MULW s2, s3, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 41
  MULW s2, s4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -123
  MULW s2, s5, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -92
  MULW s2, s6, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 10
  MULW s2, s7, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -77
  MULW s2, s8, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 75
  MULW s2, s9, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 96
  MULW s2, s10, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -51
  MULW s2, s11, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 109
  MULW s2, t0, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -74
  MULW s2, t1, s2
  ADDW s1, s1, s2
  ADDW s1, s1, t2
  ADDI s2, zero, -122
  MULW s2, a2, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 67
  MULW s2, a3, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 47
  LW t4, 36(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 22
  LW t4, 32(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -68
  LW t4, 28(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 38
  LW t4, 24(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 29
  LW t4, 0(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 115
  LW t4, 4(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -121
  LW t4, 8(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 36
  LW t4, 12(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -49
  LW t4, 16(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 85
  LW t4, 20(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 127
  BLT s2, s1, bb100
  # implict jump to bb94
bb94:
  BLT s1, zero, bb99
  # implict jump to bb95
bb95:
  # implict jump to bb96
bb96:
  ADDI s2, zero, 46
  MULW s1, s1, s2
  ADDW s0, s0, s1
  BLT zero, s0, bb98
  # implict jump to bb97
bb97:
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  LD s9, 120(sp)
  LD s10, 128(sp)
  LD s11, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb98:
  ADDI a0, zero, 1
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  LD s9, 120(sp)
  LD s10, 128(sp)
  LD s11, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb99:
  ADD s1, zero, zero
  JAL zero, bb96
bb100:
  ADDI s1, zero, 127
  JAL zero, bb96
bb101:
  ADD s2, zero, zero
  JAL zero, bb93
bb102:
  ADDI s2, zero, 127
  JAL zero, bb93
bb103:
  ADD s2, zero, zero
  JAL zero, bb90
bb104:
  ADDI s2, zero, 127
  JAL zero, bb90
bb105:
  ADD s2, zero, zero
  JAL zero, bb87
bb106:
  ADDI s2, zero, 127
  JAL zero, bb87
bb107:
  ADD s2, zero, zero
  JAL zero, bb84
bb108:
  ADDI s2, zero, 127
  JAL zero, bb84
bb109:
  ADD s2, zero, zero
  JAL zero, bb81
bb110:
  ADDI s2, zero, 127
  JAL zero, bb81
bb111:
  ADD s2, zero, zero
  JAL zero, bb78
bb112:
  ADDI s2, zero, 127
  JAL zero, bb78
bb113:
  ADD s2, zero, zero
  JAL zero, bb75
bb114:
  ADDI s2, zero, 127
  JAL zero, bb75
bb115:
  ADD s0, zero, zero
  JAL zero, bb72
bb116:
  ADDI s0, zero, 127
  JAL zero, bb72
bb117:
  ADD s2, zero, zero
  JAL zero, bb69
bb118:
  ADDI s2, zero, 127
  JAL zero, bb69
relu_reg:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 127
  BLT s1, s0, bb123
  # implict jump to bb120
bb120:
  BLT s0, zero, bb122
  # implict jump to bb121
bb121:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb122:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb123:
  ADDI a0, zero, 127
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
