.global main
.global func
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -528
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  SD s2, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s10, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  SD s11, 104(sp)
  SD s5, 112(sp)
  ADDI a0, zero, 324
  CALL _sysy_starttime
  CALL getint
  ADD t4, a0, zero
  SW t4, 0(sp)
  ADDI s6, zero, 0
  SLTI s6, s6, 100
  BNE s6, zero, bb18
  # implict jump to bb1
bb1:
  ADDI s7, zero, 0
  LW t4, 0(sp)
  BLT s7, t4, bb4
  # implict jump to bb2
bb2:
  ADD s7, zero, zero
  # implict jump to bb3
bb3:
  ADD a0, s7, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 328
  CALL _sysy_stoptime
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s2, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s10, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s11, 104(sp)
  LD s5, 112(sp)
  ADDI sp, sp, 528
  JALR zero, 0(ra)
bb4:
  # implict jump to bb5
bb5:
  ADD s8, zero, zero
  ADD s9, zero, zero
  # implict jump to bb6
bb6:
  ADD s10, s9, zero
  ADD s11, s8, zero
  ADDI s5, sp, 124
  ADDI s6, zero, 1
  SW s6, 0(s5)
  ADDI s5, sp, 128
  ADDI s6, zero, 2
  SW s6, 0(s5)
  ADDI s5, sp, 132
  ADDI s6, zero, 3
  SW s6, 0(s5)
  ADDI s5, sp, 136
  ADDI s6, zero, 4
  SW s6, 0(s5)
  ADDI s5, sp, 140
  ADDI s6, zero, 5
  SW s6, 0(s5)
  ADDI s5, sp, 144
  ADDI s6, zero, 6
  SW s6, 0(s5)
  ADDI s5, sp, 148
  ADDI s6, zero, 7
  SW s6, 0(s5)
  ADDI s5, sp, 152
  ADDI s6, zero, 8
  SW s6, 0(s5)
  ADDI s5, sp, 156
  ADDI s6, zero, 9
  SW s6, 0(s5)
  ADDI s5, sp, 160
  ADDI s6, zero, 10
  SW s6, 0(s5)
  ADDI s5, sp, 164
  ADDI s6, zero, 11
  SW s6, 0(s5)
  ADDI s5, sp, 168
  ADDI s6, zero, 12
  SW s6, 0(s5)
  ADDI s5, sp, 172
  ADDI s6, zero, 13
  SW s6, 0(s5)
  ADDI s5, sp, 176
  ADDI s6, zero, 14
  SW s6, 0(s5)
  ADDI s5, sp, 180
  ADDI s6, zero, 15
  SW s6, 0(s5)
  ADDI s5, sp, 184
  ADDI s6, zero, 16
  SW s6, 0(s5)
  ADDI s5, sp, 188
  ADDI s6, zero, 17
  SW s6, 0(s5)
  ADDI s5, sp, 192
  ADDI s6, zero, 18
  SW s6, 0(s5)
  ADDI s5, sp, 196
  ADDI s6, zero, 19
  SW s6, 0(s5)
  ADDI s5, sp, 200
  ADDI s6, zero, 20
  SW s6, 0(s5)
  ADDI s5, sp, 204
  ADDI s6, zero, 21
  SW s6, 0(s5)
  ADDI s5, sp, 208
  ADDI s6, zero, 22
  SW s6, 0(s5)
  ADDI s5, sp, 212
  ADDI s6, zero, 23
  SW s6, 0(s5)
  ADDI s5, sp, 216
  ADDI s6, zero, 24
  SW s6, 0(s5)
  ADDI s5, sp, 220
  ADDI s6, zero, 25
  SW s6, 0(s5)
  ADDI s5, sp, 224
  ADDI s6, zero, 26
  SW s6, 0(s5)
  ADDI s5, sp, 228
  ADDI s6, zero, 27
  SW s6, 0(s5)
  ADDI s5, sp, 232
  ADDI s6, zero, 28
  SW s6, 0(s5)
  ADDI s5, sp, 236
  ADDI s6, zero, 29
  SW s6, 0(s5)
  ADDI s5, sp, 240
  ADDI s6, zero, 30
  SW s6, 0(s5)
  ADDI s5, sp, 244
  ADDI s6, zero, 31
  SW s6, 0(s5)
  ADDI s5, sp, 248
  ADDI s6, zero, 32
  SW s6, 0(s5)
  ADDI s5, sp, 252
  ADDI s6, zero, 33
  SW s6, 0(s5)
  ADDI s5, sp, 256
  ADDI s6, zero, 34
  SW s6, 0(s5)
  ADDI s5, sp, 260
  ADDI s6, zero, 35
  SW s6, 0(s5)
  ADDI s5, sp, 264
  ADDI s6, zero, 36
  SW s6, 0(s5)
  ADDI s5, sp, 268
  ADDI s6, zero, 37
  SW s6, 0(s5)
  ADDI s5, sp, 272
  ADDI s6, zero, 38
  SW s6, 0(s5)
  ADDI s5, sp, 276
  ADDI s6, zero, 39
  SW s6, 0(s5)
  ADDI s5, sp, 280
  ADDI s6, zero, 40
  SW s6, 0(s5)
  ADDI s5, sp, 284
  ADDI s6, zero, 41
  SW s6, 0(s5)
  ADDI s5, sp, 288
  ADDI s6, zero, 42
  SW s6, 0(s5)
  ADDI s5, sp, 292
  ADDI s6, zero, 43
  SW s6, 0(s5)
  ADDI s5, sp, 296
  ADDI s6, zero, 44
  SW s6, 0(s5)
  ADDI s5, sp, 300
  ADDI s6, zero, 45
  SW s6, 0(s5)
  ADDI s5, sp, 304
  ADDI s6, zero, 46
  SW s6, 0(s5)
  ADDI s5, sp, 308
  ADDI s6, zero, 47
  SW s6, 0(s5)
  ADDI s5, sp, 312
  ADDI s6, zero, 48
  SW s6, 0(s5)
  ADDI s5, sp, 316
  ADDI s6, zero, 49
  SW s6, 0(s5)
  ADDI s5, sp, 320
  ADDI s6, zero, 50
  SW s6, 0(s5)
  ADDI s5, sp, 324
  ADDI s6, zero, 51
  SW s6, 0(s5)
  ADDI s5, sp, 328
  ADDI s6, zero, 52
  SW s6, 0(s5)
  ADDI s5, sp, 332
  ADDI s6, zero, 53
  SW s6, 0(s5)
  ADDI s5, sp, 336
  ADDI s6, zero, 54
  SW s6, 0(s5)
  ADDI s5, sp, 340
  ADDI s6, zero, 55
  SW s6, 0(s5)
  ADDI s5, sp, 344
  ADDI s6, zero, 56
  SW s6, 0(s5)
  ADDI s5, sp, 348
  ADDI s6, zero, 57
  SW s6, 0(s5)
  ADDI s5, sp, 352
  ADDI s6, zero, 58
  SW s6, 0(s5)
  ADDI s5, sp, 356
  ADDI s6, zero, 59
  SW s6, 0(s5)
  ADDI s5, sp, 360
  ADDI s6, zero, 60
  SW s6, 0(s5)
  ADDI s5, sp, 364
  ADDI s6, zero, 61
  SW s6, 0(s5)
  ADDI s5, sp, 368
  ADDI s6, zero, 62
  SW s6, 0(s5)
  ADDI s5, sp, 372
  ADDI s6, zero, 63
  SW s6, 0(s5)
  ADDI s5, sp, 376
  ADDI s6, zero, 64
  SW s6, 0(s5)
  ADDI s5, sp, 380
  ADDI s6, zero, 65
  SW s6, 0(s5)
  ADDI s5, sp, 384
  ADDI s6, zero, 66
  SW s6, 0(s5)
  ADDI s5, sp, 388
  ADDI s6, zero, 67
  SW s6, 0(s5)
  ADDI s5, sp, 392
  ADDI s6, zero, 68
  SW s6, 0(s5)
  ADDI s5, sp, 396
  ADDI s6, zero, 69
  SW s6, 0(s5)
  ADDI s5, sp, 400
  ADDI s6, zero, 70
  SW s6, 0(s5)
  ADDI s5, sp, 404
  ADDI s6, zero, 71
  SW s6, 0(s5)
  ADDI s5, sp, 408
  ADDI s6, zero, 72
  SW s6, 0(s5)
  ADDI s5, sp, 412
  ADDI s6, zero, 73
  SW s6, 0(s5)
  ADDI s5, sp, 416
  ADDI s6, zero, 74
  SW s6, 0(s5)
  ADDI s5, sp, 420
  ADDI s6, zero, 75
  SW s6, 0(s5)
  ADDI s5, sp, 424
  ADDI s6, zero, 76
  SW s6, 0(s5)
  ADDI s5, sp, 428
  ADDI s6, zero, 77
  SW s6, 0(s5)
  ADDI s5, sp, 432
  ADDI s6, zero, 78
  SW s6, 0(s5)
  ADDI s5, sp, 436
  ADDI s6, zero, 79
  SW s6, 0(s5)
  ADDI s5, sp, 440
  ADDI s6, zero, 80
  SW s6, 0(s5)
  ADDI s5, sp, 444
  ADDI s6, zero, 81
  SW s6, 0(s5)
  ADDI s5, sp, 448
  ADDI s6, zero, 82
  SW s6, 0(s5)
  ADDI s5, sp, 452
  ADDI s6, zero, 83
  SW s6, 0(s5)
  ADDI s5, sp, 456
  ADDI s6, zero, 84
  SW s6, 0(s5)
  ADDI s5, sp, 460
  ADDI s6, zero, 85
  SW s6, 0(s5)
  ADDI s5, sp, 464
  ADDI s6, zero, 86
  SW s6, 0(s5)
  ADDI s5, sp, 468
  ADDI s6, zero, 87
  SW s6, 0(s5)
  ADDI s5, sp, 472
  ADDI s6, zero, 88
  SW s6, 0(s5)
  ADDI s5, sp, 476
  ADDI s6, zero, 89
  SW s6, 0(s5)
  ADDI s5, sp, 480
  ADDI s6, zero, 90
  SW s6, 0(s5)
  ADDI s5, sp, 484
  ADDI s6, zero, 91
  SW s6, 0(s5)
  ADDI s5, sp, 488
  ADDI s6, zero, 92
  SW s6, 0(s5)
  ADDI s5, sp, 492
  ADDI s6, zero, 93
  SW s6, 0(s5)
  ADDI s5, sp, 496
  ADDI s6, zero, 94
  SW s6, 0(s5)
  ADDI s5, sp, 500
  ADDI s6, zero, 95
  SW s6, 0(s5)
  ADDI s5, sp, 504
  ADDI s6, zero, 96
  SW s6, 0(s5)
  ADDI s5, sp, 508
  ADDI s6, zero, 97
  SW s6, 0(s5)
  ADDI s5, sp, 512
  ADDI s6, zero, 98
  SW s6, 0(s5)
  ADDI s5, sp, 516
  ADDI s6, zero, 99
  SW s6, 0(s5)
  ADDIW t4, s10, 1
  SW t4, 12(sp)
  ADDI s5, zero, 0
  SLTI s5, s5, 100
  BNE s5, zero, bb12
  # implict jump to bb7
bb7:
  ADD s5, s11, zero
  # implict jump to bb8
bb8:
  LUI s1, 16
  ADDIW s1, s1, -1
  REMW s2, s5, s1
  # implict jump to bb9
bb9:
  LW t4, 12(sp)
  LW t3, 0(sp)
  BLT t4, t3, bb11
  # implict jump to bb10
bb10:
  ADD s7, s2, zero
  JAL zero, bb3
bb11:
  ADD s8, s2, zero
  LW t4, 12(sp)
  ADD s9, t4, zero
  JAL zero, bb6
bb12:
  # implict jump to bb13
bb13:
  ADD s6, s11, zero
  ADD s10, zero, zero
  # implict jump to bb14
bb14:
  ADD s11, s10, zero
  ADD s3, s6, zero
  SLLIW s1, s11, 2
  ADDI t5, sp, 120
  ADD s1, t5, s1
  LW s1, 0(s1)
  ADDW s4, s3, s1
  ADDIW s0, s11, 1
  # implict jump to bb15
bb15:
  SLTI s1, s0, 100
  BNE s1, zero, bb17
  # implict jump to bb16
bb16:
  ADD s5, s4, zero
  JAL zero, bb8
bb17:
  ADD s6, s4, zero
  ADD s10, s0, zero
  JAL zero, bb14
bb18:
  # implict jump to bb19
bb19:
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb20
bb20:
  LW t4, 4(sp)
  ADD s7, t4, zero
  SLLIW s8, s7, 2
  ADDI t5, sp, 120
  ADD s8, t5, s8
  ADDI s9, zero, 0
  SW s9, 0(s8)
  ADDIW t4, s7, 1
  SW t4, 8(sp)
  # implict jump to bb21
bb21:
  LW t4, 8(sp)
  SLTI s7, t4, 100
  BNE s7, zero, bb22
  JAL zero, bb1
bb22:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb20
func:
  ADDI sp, sp, -512
  SD ra, 400(sp)
  SD s0, 408(sp)
  SD s1, 416(sp)
  SD s2, 424(sp)
  SD s3, 432(sp)
  SD s4, 440(sp)
  SD s5, 448(sp)
  SD s6, 456(sp)
  SD s7, 464(sp)
  SD s8, 472(sp)
  SD s9, 480(sp)
  SD s10, 488(sp)
  SD s11, 496(sp)
  ADD s5, a0, zero
  SLTI s6, zero, 100
  BNE s6, zero, bb41
  # implict jump to bb24
bb24:
  BLT zero, s5, bb27
  # implict jump to bb25
bb25:
  ADD s7, zero, zero
  # implict jump to bb26
bb26:
  ADD a0, s7, zero
  LD ra, 400(sp)
  LD s0, 408(sp)
  LD s1, 416(sp)
  LD s2, 424(sp)
  LD s3, 432(sp)
  LD s4, 440(sp)
  LD s5, 448(sp)
  LD s6, 456(sp)
  LD s7, 464(sp)
  LD s8, 472(sp)
  LD s9, 480(sp)
  LD s10, 488(sp)
  LD s11, 496(sp)
  ADDI sp, sp, 512
  JALR zero, 0(ra)
bb27:
  # implict jump to bb28
bb28:
  ADD s8, zero, zero
  ADD s9, zero, zero
  # implict jump to bb29
bb29:
  ADD s10, s9, zero
  ADD s11, s8, zero
  ADDI t0, sp, 4
  ADDI t1, zero, 1
  SW t1, 0(t0)
  ADDI t0, sp, 8
  ADDI t1, zero, 2
  SW t1, 0(t0)
  ADDI t0, sp, 12
  ADDI t1, zero, 3
  SW t1, 0(t0)
  ADDI t0, sp, 16
  ADDI t1, zero, 4
  SW t1, 0(t0)
  ADDI t0, sp, 20
  ADDI t1, zero, 5
  SW t1, 0(t0)
  ADDI t0, sp, 24
  ADDI t1, zero, 6
  SW t1, 0(t0)
  ADDI t0, sp, 28
  ADDI t1, zero, 7
  SW t1, 0(t0)
  ADDI t0, sp, 32
  ADDI t1, zero, 8
  SW t1, 0(t0)
  ADDI t0, sp, 36
  ADDI t1, zero, 9
  SW t1, 0(t0)
  ADDI t0, sp, 40
  ADDI t1, zero, 10
  SW t1, 0(t0)
  ADDI t0, sp, 44
  ADDI t1, zero, 11
  SW t1, 0(t0)
  ADDI t0, sp, 48
  ADDI t1, zero, 12
  SW t1, 0(t0)
  ADDI t0, sp, 52
  ADDI t1, zero, 13
  SW t1, 0(t0)
  ADDI t0, sp, 56
  ADDI t1, zero, 14
  SW t1, 0(t0)
  ADDI t0, sp, 60
  ADDI t1, zero, 15
  SW t1, 0(t0)
  ADDI t0, sp, 64
  ADDI t1, zero, 16
  SW t1, 0(t0)
  ADDI t0, sp, 68
  ADDI t1, zero, 17
  SW t1, 0(t0)
  ADDI t0, sp, 72
  ADDI t1, zero, 18
  SW t1, 0(t0)
  ADDI t0, sp, 76
  ADDI t1, zero, 19
  SW t1, 0(t0)
  ADDI t0, sp, 80
  ADDI t1, zero, 20
  SW t1, 0(t0)
  ADDI t0, sp, 84
  ADDI t1, zero, 21
  SW t1, 0(t0)
  ADDI t0, sp, 88
  ADDI t1, zero, 22
  SW t1, 0(t0)
  ADDI t0, sp, 92
  ADDI t1, zero, 23
  SW t1, 0(t0)
  ADDI t0, sp, 96
  ADDI t1, zero, 24
  SW t1, 0(t0)
  ADDI t0, sp, 100
  ADDI t1, zero, 25
  SW t1, 0(t0)
  ADDI t0, sp, 104
  ADDI t1, zero, 26
  SW t1, 0(t0)
  ADDI t0, sp, 108
  ADDI t1, zero, 27
  SW t1, 0(t0)
  ADDI t0, sp, 112
  ADDI t1, zero, 28
  SW t1, 0(t0)
  ADDI t0, sp, 116
  ADDI t1, zero, 29
  SW t1, 0(t0)
  ADDI t0, sp, 120
  ADDI t1, zero, 30
  SW t1, 0(t0)
  ADDI t0, sp, 124
  ADDI t1, zero, 31
  SW t1, 0(t0)
  ADDI t0, sp, 128
  ADDI t1, zero, 32
  SW t1, 0(t0)
  ADDI t0, sp, 132
  ADDI t1, zero, 33
  SW t1, 0(t0)
  ADDI t0, sp, 136
  ADDI t1, zero, 34
  SW t1, 0(t0)
  ADDI t0, sp, 140
  ADDI t1, zero, 35
  SW t1, 0(t0)
  ADDI t0, sp, 144
  ADDI t1, zero, 36
  SW t1, 0(t0)
  ADDI t0, sp, 148
  ADDI t1, zero, 37
  SW t1, 0(t0)
  ADDI t0, sp, 152
  ADDI t1, zero, 38
  SW t1, 0(t0)
  ADDI t0, sp, 156
  ADDI t1, zero, 39
  SW t1, 0(t0)
  ADDI t0, sp, 160
  ADDI t1, zero, 40
  SW t1, 0(t0)
  ADDI t0, sp, 164
  ADDI t1, zero, 41
  SW t1, 0(t0)
  ADDI t0, sp, 168
  ADDI t1, zero, 42
  SW t1, 0(t0)
  ADDI t0, sp, 172
  ADDI t1, zero, 43
  SW t1, 0(t0)
  ADDI t0, sp, 176
  ADDI t1, zero, 44
  SW t1, 0(t0)
  ADDI t0, sp, 180
  ADDI t1, zero, 45
  SW t1, 0(t0)
  ADDI t0, sp, 184
  ADDI t1, zero, 46
  SW t1, 0(t0)
  ADDI t0, sp, 188
  ADDI t1, zero, 47
  SW t1, 0(t0)
  ADDI t0, sp, 192
  ADDI t1, zero, 48
  SW t1, 0(t0)
  ADDI t0, sp, 196
  ADDI t1, zero, 49
  SW t1, 0(t0)
  ADDI t0, sp, 200
  ADDI t1, zero, 50
  SW t1, 0(t0)
  ADDI t0, sp, 204
  ADDI t1, zero, 51
  SW t1, 0(t0)
  ADDI t0, sp, 208
  ADDI t1, zero, 52
  SW t1, 0(t0)
  ADDI t0, sp, 212
  ADDI t1, zero, 53
  SW t1, 0(t0)
  ADDI t0, sp, 216
  ADDI t1, zero, 54
  SW t1, 0(t0)
  ADDI t0, sp, 220
  ADDI t1, zero, 55
  SW t1, 0(t0)
  ADDI t0, sp, 224
  ADDI t1, zero, 56
  SW t1, 0(t0)
  ADDI t0, sp, 228
  ADDI t1, zero, 57
  SW t1, 0(t0)
  ADDI t0, sp, 232
  ADDI t1, zero, 58
  SW t1, 0(t0)
  ADDI t0, sp, 236
  ADDI t1, zero, 59
  SW t1, 0(t0)
  ADDI t0, sp, 240
  ADDI t1, zero, 60
  SW t1, 0(t0)
  ADDI t0, sp, 244
  ADDI t1, zero, 61
  SW t1, 0(t0)
  ADDI t0, sp, 248
  ADDI t1, zero, 62
  SW t1, 0(t0)
  ADDI t0, sp, 252
  ADDI t1, zero, 63
  SW t1, 0(t0)
  ADDI t0, sp, 256
  ADDI t1, zero, 64
  SW t1, 0(t0)
  ADDI t0, sp, 260
  ADDI t1, zero, 65
  SW t1, 0(t0)
  ADDI t0, sp, 264
  ADDI t1, zero, 66
  SW t1, 0(t0)
  ADDI t0, sp, 268
  ADDI t1, zero, 67
  SW t1, 0(t0)
  ADDI t0, sp, 272
  ADDI t1, zero, 68
  SW t1, 0(t0)
  ADDI t0, sp, 276
  ADDI t1, zero, 69
  SW t1, 0(t0)
  ADDI t0, sp, 280
  ADDI t1, zero, 70
  SW t1, 0(t0)
  ADDI t0, sp, 284
  ADDI t1, zero, 71
  SW t1, 0(t0)
  ADDI t0, sp, 288
  ADDI t1, zero, 72
  SW t1, 0(t0)
  ADDI t0, sp, 292
  ADDI t1, zero, 73
  SW t1, 0(t0)
  ADDI t0, sp, 296
  ADDI t1, zero, 74
  SW t1, 0(t0)
  ADDI t0, sp, 300
  ADDI t1, zero, 75
  SW t1, 0(t0)
  ADDI t0, sp, 304
  ADDI t1, zero, 76
  SW t1, 0(t0)
  ADDI t0, sp, 308
  ADDI t1, zero, 77
  SW t1, 0(t0)
  ADDI t0, sp, 312
  ADDI t1, zero, 78
  SW t1, 0(t0)
  ADDI t0, sp, 316
  ADDI t1, zero, 79
  SW t1, 0(t0)
  ADDI t0, sp, 320
  ADDI t1, zero, 80
  SW t1, 0(t0)
  ADDI t0, sp, 324
  ADDI t1, zero, 81
  SW t1, 0(t0)
  ADDI t0, sp, 328
  ADDI t1, zero, 82
  SW t1, 0(t0)
  ADDI t0, sp, 332
  ADDI t1, zero, 83
  SW t1, 0(t0)
  ADDI t0, sp, 336
  ADDI t1, zero, 84
  SW t1, 0(t0)
  ADDI t0, sp, 340
  ADDI t1, zero, 85
  SW t1, 0(t0)
  ADDI t0, sp, 344
  ADDI t1, zero, 86
  SW t1, 0(t0)
  ADDI t0, sp, 348
  ADDI t1, zero, 87
  SW t1, 0(t0)
  ADDI t0, sp, 352
  ADDI t1, zero, 88
  SW t1, 0(t0)
  ADDI t0, sp, 356
  ADDI t1, zero, 89
  SW t1, 0(t0)
  ADDI t0, sp, 360
  ADDI t1, zero, 90
  SW t1, 0(t0)
  ADDI t0, sp, 364
  ADDI t1, zero, 91
  SW t1, 0(t0)
  ADDI t0, sp, 368
  ADDI t1, zero, 92
  SW t1, 0(t0)
  ADDI t0, sp, 372
  ADDI t1, zero, 93
  SW t1, 0(t0)
  ADDI t0, sp, 376
  ADDI t1, zero, 94
  SW t1, 0(t0)
  ADDI t0, sp, 380
  ADDI t1, zero, 95
  SW t1, 0(t0)
  ADDI t0, sp, 384
  ADDI t1, zero, 96
  SW t1, 0(t0)
  ADDI t0, sp, 388
  ADDI t1, zero, 97
  SW t1, 0(t0)
  ADDI t0, sp, 392
  ADDI t1, zero, 98
  SW t1, 0(t0)
  ADDI t0, sp, 396
  ADDI t1, zero, 99
  SW t1, 0(t0)
  ADDIW s1, s10, 1
  SLTI s10, zero, 100
  BNE s10, zero, bb35
  # implict jump to bb30
bb30:
  ADD s10, s11, zero
  # implict jump to bb31
bb31:
  LUI t1, 16
  ADDIW t1, t1, -1
  REMW s0, s10, t1
  # implict jump to bb32
bb32:
  BLT s1, s5, bb34
  # implict jump to bb33
bb33:
  ADD s7, s0, zero
  JAL zero, bb26
bb34:
  ADD s8, s0, zero
  ADD s9, s1, zero
  JAL zero, bb29
bb35:
  # implict jump to bb36
bb36:
  ADD t0, zero, zero
  # implict jump to bb37
bb37:
  ADD t1, t0, zero
  ADD t2, s11, zero
  SLLIW a1, t1, 2
  ADDI t5, sp, 0
  ADD a1, t5, a1
  LW a1, 0(a1)
  ADDW s3, t2, a1
  ADDIW s4, t1, 1
  # implict jump to bb38
bb38:
  SLTI t1, s4, 100
  BNE t1, zero, bb40
  # implict jump to bb39
bb39:
  ADD s10, s3, zero
  JAL zero, bb31
bb40:
  ADD s11, s3, zero
  ADD t0, s4, zero
  JAL zero, bb37
bb41:
  # implict jump to bb42
bb42:
  ADD s6, zero, zero
  # implict jump to bb43
bb43:
  ADD s7, s6, zero
  SLLIW s8, s7, 2
  ADDI t5, sp, 0
  ADD s8, t5, s8
  SW zero, 0(s8)
  ADDIW s2, s7, 1
  # implict jump to bb44
bb44:
  SLTI s7, s2, 100
  BNE s7, zero, bb45
  JAL zero, bb24
bb45:
  ADD s6, s2, zero
  JAL zero, bb43
