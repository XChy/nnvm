.global main
.global func
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -496
  SD ra, 0(sp)
  SD s9, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s10, 88(sp)
  ADDI a0, zero, 324
  CALL _sysy_starttime
  CALL getint
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  SLTI s3, s2, 100
  BNE s3, zero, bb9
  # implict jump to bb2
bb2:
  ADD s3, zero, zero
  ADD s4, zero, zero
  # implict jump to bb3
bb3:
  ADD s5, s4, zero
  ADD s6, s3, zero
  SLT s7, s6, s0
  BNE s7, zero, bb5
  # implict jump to bb4
bb4:
  ADD a0, s5, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 328
  CALL _sysy_stoptime
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s9, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s10, 88(sp)
  ADDI sp, sp, 496
  JALR zero, 0(ra)
bb5:
  ADDI s7, sp, 100
  ADDI s8, zero, 1
  SW s8, 0(s7)
  ADDI s7, sp, 104
  ADDI s8, zero, 2
  SW s8, 0(s7)
  ADDI s7, sp, 108
  ADDI s8, zero, 3
  SW s8, 0(s7)
  ADDI s7, sp, 112
  ADDI s8, zero, 4
  SW s8, 0(s7)
  ADDI s7, sp, 116
  ADDI s8, zero, 5
  SW s8, 0(s7)
  ADDI s7, sp, 120
  ADDI s8, zero, 6
  SW s8, 0(s7)
  ADDI s7, sp, 124
  ADDI s8, zero, 7
  SW s8, 0(s7)
  ADDI s7, sp, 128
  ADDI s8, zero, 8
  SW s8, 0(s7)
  ADDI s7, sp, 132
  ADDI s8, zero, 9
  SW s8, 0(s7)
  ADDI s7, sp, 136
  ADDI s8, zero, 10
  SW s8, 0(s7)
  ADDI s7, sp, 140
  ADDI s8, zero, 11
  SW s8, 0(s7)
  ADDI s7, sp, 144
  ADDI s8, zero, 12
  SW s8, 0(s7)
  ADDI s7, sp, 148
  ADDI s8, zero, 13
  SW s8, 0(s7)
  ADDI s7, sp, 152
  ADDI s8, zero, 14
  SW s8, 0(s7)
  ADDI s7, sp, 156
  ADDI s8, zero, 15
  SW s8, 0(s7)
  ADDI s7, sp, 160
  ADDI s8, zero, 16
  SW s8, 0(s7)
  ADDI s7, sp, 164
  ADDI s8, zero, 17
  SW s8, 0(s7)
  ADDI s7, sp, 168
  ADDI s8, zero, 18
  SW s8, 0(s7)
  ADDI s7, sp, 172
  ADDI s8, zero, 19
  SW s8, 0(s7)
  ADDI s7, sp, 176
  ADDI s8, zero, 20
  SW s8, 0(s7)
  ADDI s7, sp, 180
  ADDI s8, zero, 21
  SW s8, 0(s7)
  ADDI s7, sp, 184
  ADDI s8, zero, 22
  SW s8, 0(s7)
  ADDI s7, sp, 188
  ADDI s8, zero, 23
  SW s8, 0(s7)
  ADDI s7, sp, 192
  ADDI s8, zero, 24
  SW s8, 0(s7)
  ADDI s7, sp, 196
  ADDI s8, zero, 25
  SW s8, 0(s7)
  ADDI s7, sp, 200
  ADDI s8, zero, 26
  SW s8, 0(s7)
  ADDI s7, sp, 204
  ADDI s8, zero, 27
  SW s8, 0(s7)
  ADDI s7, sp, 208
  ADDI s8, zero, 28
  SW s8, 0(s7)
  ADDI s7, sp, 212
  ADDI s8, zero, 29
  SW s8, 0(s7)
  ADDI s7, sp, 216
  ADDI s8, zero, 30
  SW s8, 0(s7)
  ADDI s7, sp, 220
  ADDI s8, zero, 31
  SW s8, 0(s7)
  ADDI s7, sp, 224
  ADDI s8, zero, 32
  SW s8, 0(s7)
  ADDI s7, sp, 228
  ADDI s8, zero, 33
  SW s8, 0(s7)
  ADDI s7, sp, 232
  ADDI s8, zero, 34
  SW s8, 0(s7)
  ADDI s7, sp, 236
  ADDI s8, zero, 35
  SW s8, 0(s7)
  ADDI s7, sp, 240
  ADDI s8, zero, 36
  SW s8, 0(s7)
  ADDI s7, sp, 244
  ADDI s8, zero, 37
  SW s8, 0(s7)
  ADDI s7, sp, 248
  ADDI s8, zero, 38
  SW s8, 0(s7)
  ADDI s7, sp, 252
  ADDI s8, zero, 39
  SW s8, 0(s7)
  ADDI s7, sp, 256
  ADDI s8, zero, 40
  SW s8, 0(s7)
  ADDI s7, sp, 260
  ADDI s8, zero, 41
  SW s8, 0(s7)
  ADDI s7, sp, 264
  ADDI s8, zero, 42
  SW s8, 0(s7)
  ADDI s7, sp, 268
  ADDI s8, zero, 43
  SW s8, 0(s7)
  ADDI s7, sp, 272
  ADDI s8, zero, 44
  SW s8, 0(s7)
  ADDI s7, sp, 276
  ADDI s8, zero, 45
  SW s8, 0(s7)
  ADDI s7, sp, 280
  ADDI s8, zero, 46
  SW s8, 0(s7)
  ADDI s7, sp, 284
  ADDI s8, zero, 47
  SW s8, 0(s7)
  ADDI s7, sp, 288
  ADDI s8, zero, 48
  SW s8, 0(s7)
  ADDI s7, sp, 292
  ADDI s8, zero, 49
  SW s8, 0(s7)
  ADDI s7, sp, 296
  ADDI s8, zero, 50
  SW s8, 0(s7)
  ADDI s7, sp, 300
  ADDI s8, zero, 51
  SW s8, 0(s7)
  ADDI s7, sp, 304
  ADDI s8, zero, 52
  SW s8, 0(s7)
  ADDI s7, sp, 308
  ADDI s8, zero, 53
  SW s8, 0(s7)
  ADDI s7, sp, 312
  ADDI s8, zero, 54
  SW s8, 0(s7)
  ADDI s7, sp, 316
  ADDI s8, zero, 55
  SW s8, 0(s7)
  ADDI s7, sp, 320
  ADDI s8, zero, 56
  SW s8, 0(s7)
  ADDI s7, sp, 324
  ADDI s8, zero, 57
  SW s8, 0(s7)
  ADDI s7, sp, 328
  ADDI s8, zero, 58
  SW s8, 0(s7)
  ADDI s7, sp, 332
  ADDI s8, zero, 59
  SW s8, 0(s7)
  ADDI s7, sp, 336
  ADDI s8, zero, 60
  SW s8, 0(s7)
  ADDI s7, sp, 340
  ADDI s8, zero, 61
  SW s8, 0(s7)
  ADDI s7, sp, 344
  ADDI s8, zero, 62
  SW s8, 0(s7)
  ADDI s7, sp, 348
  ADDI s8, zero, 63
  SW s8, 0(s7)
  ADDI s7, sp, 352
  ADDI s8, zero, 64
  SW s8, 0(s7)
  ADDI s7, sp, 356
  ADDI s8, zero, 65
  SW s8, 0(s7)
  ADDI s7, sp, 360
  ADDI s8, zero, 66
  SW s8, 0(s7)
  ADDI s7, sp, 364
  ADDI s8, zero, 67
  SW s8, 0(s7)
  ADDI s7, sp, 368
  ADDI s8, zero, 68
  SW s8, 0(s7)
  ADDI s7, sp, 372
  ADDI s8, zero, 69
  SW s8, 0(s7)
  ADDI s7, sp, 376
  ADDI s8, zero, 70
  SW s8, 0(s7)
  ADDI s7, sp, 380
  ADDI s8, zero, 71
  SW s8, 0(s7)
  ADDI s7, sp, 384
  ADDI s8, zero, 72
  SW s8, 0(s7)
  ADDI s7, sp, 388
  ADDI s8, zero, 73
  SW s8, 0(s7)
  ADDI s7, sp, 392
  ADDI s8, zero, 74
  SW s8, 0(s7)
  ADDI s7, sp, 396
  ADDI s8, zero, 75
  SW s8, 0(s7)
  ADDI s7, sp, 400
  ADDI s8, zero, 76
  SW s8, 0(s7)
  ADDI s7, sp, 404
  ADDI s8, zero, 77
  SW s8, 0(s7)
  ADDI s7, sp, 408
  ADDI s8, zero, 78
  SW s8, 0(s7)
  ADDI s7, sp, 412
  ADDI s8, zero, 79
  SW s8, 0(s7)
  ADDI s7, sp, 416
  ADDI s8, zero, 80
  SW s8, 0(s7)
  ADDI s7, sp, 420
  ADDI s8, zero, 81
  SW s8, 0(s7)
  ADDI s7, sp, 424
  ADDI s8, zero, 82
  SW s8, 0(s7)
  ADDI s7, sp, 428
  ADDI s8, zero, 83
  SW s8, 0(s7)
  ADDI s7, sp, 432
  ADDI s8, zero, 84
  SW s8, 0(s7)
  ADDI s7, sp, 436
  ADDI s8, zero, 85
  SW s8, 0(s7)
  ADDI s7, sp, 440
  ADDI s8, zero, 86
  SW s8, 0(s7)
  ADDI s7, sp, 444
  ADDI s8, zero, 87
  SW s8, 0(s7)
  ADDI s7, sp, 448
  ADDI s8, zero, 88
  SW s8, 0(s7)
  ADDI s7, sp, 452
  ADDI s8, zero, 89
  SW s8, 0(s7)
  ADDI s7, sp, 456
  ADDI s8, zero, 90
  SW s8, 0(s7)
  ADDI s7, sp, 460
  ADDI s8, zero, 91
  SW s8, 0(s7)
  ADDI s7, sp, 464
  ADDI s8, zero, 92
  SW s8, 0(s7)
  ADDI s7, sp, 468
  ADDI s8, zero, 93
  SW s8, 0(s7)
  ADDI s7, sp, 472
  ADDI s8, zero, 94
  SW s8, 0(s7)
  ADDI s7, sp, 476
  ADDI s8, zero, 95
  SW s8, 0(s7)
  ADDI s7, sp, 480
  ADDI s8, zero, 96
  SW s8, 0(s7)
  ADDI s7, sp, 484
  ADDI s8, zero, 97
  SW s8, 0(s7)
  ADDI s7, sp, 488
  ADDI s8, zero, 98
  SW s8, 0(s7)
  ADDI s7, sp, 492
  ADDI s8, zero, 99
  SW s8, 0(s7)
  ADDIW s6, s6, 1
  ADD s7, zero, zero
  ADD s5, s5, zero
  # implict jump to bb6
bb6:
  ADD s8, s5, zero
  ADD s9, s7, zero
  SLTI s10, s9, 100
  BNE s10, zero, bb8
  # implict jump to bb7
bb7:
  LUI s10, 16
  ADDIW s10, s10, -1
  REMW s10, s8, s10
  ADD s3, s6, zero
  ADD s4, s10, zero
  JAL zero, bb3
bb8:
  SLLIW s3, s9, 2
  ADDI t5, sp, 96
  ADD s3, t5, s3
  LW s3, 0(s3)
  ADDW s3, s8, s3
  ADDIW s4, s9, 1
  ADD s7, s4, zero
  ADD s5, s3, zero
  JAL zero, bb6
bb9:
  SLLIW s3, s2, 2
  ADDI t5, sp, 96
  ADD s3, t5, s3
  SW zero, 0(s3)
  ADDIW s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb1
func:
  ADDI sp, sp, -496
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
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb11
bb11:
  ADD s2, s1, zero
  SLTI s3, s2, 100
  BNE s3, zero, bb19
  # implict jump to bb12
bb12:
  ADD s3, zero, zero
  ADD s4, zero, zero
  # implict jump to bb13
bb13:
  ADD s5, s4, zero
  ADD s6, s3, zero
  SLT s7, s6, s0
  BNE s7, zero, bb15
  # implict jump to bb14
bb14:
  ADD a0, s5, zero
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
  ADDI sp, sp, 496
  JALR zero, 0(ra)
bb15:
  ADDI s7, sp, 4
  ADDI s8, zero, 1
  SW s8, 0(s7)
  ADDI s7, sp, 8
  ADDI s8, zero, 2
  SW s8, 0(s7)
  ADDI s7, sp, 12
  ADDI s8, zero, 3
  SW s8, 0(s7)
  ADDI s7, sp, 16
  ADDI s8, zero, 4
  SW s8, 0(s7)
  ADDI s7, sp, 20
  ADDI s8, zero, 5
  SW s8, 0(s7)
  ADDI s7, sp, 24
  ADDI s8, zero, 6
  SW s8, 0(s7)
  ADDI s7, sp, 28
  ADDI s8, zero, 7
  SW s8, 0(s7)
  ADDI s7, sp, 32
  ADDI s8, zero, 8
  SW s8, 0(s7)
  ADDI s7, sp, 36
  ADDI s8, zero, 9
  SW s8, 0(s7)
  ADDI s7, sp, 40
  ADDI s8, zero, 10
  SW s8, 0(s7)
  ADDI s7, sp, 44
  ADDI s8, zero, 11
  SW s8, 0(s7)
  ADDI s7, sp, 48
  ADDI s8, zero, 12
  SW s8, 0(s7)
  ADDI s7, sp, 52
  ADDI s8, zero, 13
  SW s8, 0(s7)
  ADDI s7, sp, 56
  ADDI s8, zero, 14
  SW s8, 0(s7)
  ADDI s7, sp, 60
  ADDI s8, zero, 15
  SW s8, 0(s7)
  ADDI s7, sp, 64
  ADDI s8, zero, 16
  SW s8, 0(s7)
  ADDI s7, sp, 68
  ADDI s8, zero, 17
  SW s8, 0(s7)
  ADDI s7, sp, 72
  ADDI s8, zero, 18
  SW s8, 0(s7)
  ADDI s7, sp, 76
  ADDI s8, zero, 19
  SW s8, 0(s7)
  ADDI s7, sp, 80
  ADDI s8, zero, 20
  SW s8, 0(s7)
  ADDI s7, sp, 84
  ADDI s8, zero, 21
  SW s8, 0(s7)
  ADDI s7, sp, 88
  ADDI s8, zero, 22
  SW s8, 0(s7)
  ADDI s7, sp, 92
  ADDI s8, zero, 23
  SW s8, 0(s7)
  ADDI s7, sp, 96
  ADDI s8, zero, 24
  SW s8, 0(s7)
  ADDI s7, sp, 100
  ADDI s8, zero, 25
  SW s8, 0(s7)
  ADDI s7, sp, 104
  ADDI s8, zero, 26
  SW s8, 0(s7)
  ADDI s7, sp, 108
  ADDI s8, zero, 27
  SW s8, 0(s7)
  ADDI s7, sp, 112
  ADDI s8, zero, 28
  SW s8, 0(s7)
  ADDI s7, sp, 116
  ADDI s8, zero, 29
  SW s8, 0(s7)
  ADDI s7, sp, 120
  ADDI s8, zero, 30
  SW s8, 0(s7)
  ADDI s7, sp, 124
  ADDI s8, zero, 31
  SW s8, 0(s7)
  ADDI s7, sp, 128
  ADDI s8, zero, 32
  SW s8, 0(s7)
  ADDI s7, sp, 132
  ADDI s8, zero, 33
  SW s8, 0(s7)
  ADDI s7, sp, 136
  ADDI s8, zero, 34
  SW s8, 0(s7)
  ADDI s7, sp, 140
  ADDI s8, zero, 35
  SW s8, 0(s7)
  ADDI s7, sp, 144
  ADDI s8, zero, 36
  SW s8, 0(s7)
  ADDI s7, sp, 148
  ADDI s8, zero, 37
  SW s8, 0(s7)
  ADDI s7, sp, 152
  ADDI s8, zero, 38
  SW s8, 0(s7)
  ADDI s7, sp, 156
  ADDI s8, zero, 39
  SW s8, 0(s7)
  ADDI s7, sp, 160
  ADDI s8, zero, 40
  SW s8, 0(s7)
  ADDI s7, sp, 164
  ADDI s8, zero, 41
  SW s8, 0(s7)
  ADDI s7, sp, 168
  ADDI s8, zero, 42
  SW s8, 0(s7)
  ADDI s7, sp, 172
  ADDI s8, zero, 43
  SW s8, 0(s7)
  ADDI s7, sp, 176
  ADDI s8, zero, 44
  SW s8, 0(s7)
  ADDI s7, sp, 180
  ADDI s8, zero, 45
  SW s8, 0(s7)
  ADDI s7, sp, 184
  ADDI s8, zero, 46
  SW s8, 0(s7)
  ADDI s7, sp, 188
  ADDI s8, zero, 47
  SW s8, 0(s7)
  ADDI s7, sp, 192
  ADDI s8, zero, 48
  SW s8, 0(s7)
  ADDI s7, sp, 196
  ADDI s8, zero, 49
  SW s8, 0(s7)
  ADDI s7, sp, 200
  ADDI s8, zero, 50
  SW s8, 0(s7)
  ADDI s7, sp, 204
  ADDI s8, zero, 51
  SW s8, 0(s7)
  ADDI s7, sp, 208
  ADDI s8, zero, 52
  SW s8, 0(s7)
  ADDI s7, sp, 212
  ADDI s8, zero, 53
  SW s8, 0(s7)
  ADDI s7, sp, 216
  ADDI s8, zero, 54
  SW s8, 0(s7)
  ADDI s7, sp, 220
  ADDI s8, zero, 55
  SW s8, 0(s7)
  ADDI s7, sp, 224
  ADDI s8, zero, 56
  SW s8, 0(s7)
  ADDI s7, sp, 228
  ADDI s8, zero, 57
  SW s8, 0(s7)
  ADDI s7, sp, 232
  ADDI s8, zero, 58
  SW s8, 0(s7)
  ADDI s7, sp, 236
  ADDI s8, zero, 59
  SW s8, 0(s7)
  ADDI s7, sp, 240
  ADDI s8, zero, 60
  SW s8, 0(s7)
  ADDI s7, sp, 244
  ADDI s8, zero, 61
  SW s8, 0(s7)
  ADDI s7, sp, 248
  ADDI s8, zero, 62
  SW s8, 0(s7)
  ADDI s7, sp, 252
  ADDI s8, zero, 63
  SW s8, 0(s7)
  ADDI s7, sp, 256
  ADDI s8, zero, 64
  SW s8, 0(s7)
  ADDI s7, sp, 260
  ADDI s8, zero, 65
  SW s8, 0(s7)
  ADDI s7, sp, 264
  ADDI s8, zero, 66
  SW s8, 0(s7)
  ADDI s7, sp, 268
  ADDI s8, zero, 67
  SW s8, 0(s7)
  ADDI s7, sp, 272
  ADDI s8, zero, 68
  SW s8, 0(s7)
  ADDI s7, sp, 276
  ADDI s8, zero, 69
  SW s8, 0(s7)
  ADDI s7, sp, 280
  ADDI s8, zero, 70
  SW s8, 0(s7)
  ADDI s7, sp, 284
  ADDI s8, zero, 71
  SW s8, 0(s7)
  ADDI s7, sp, 288
  ADDI s8, zero, 72
  SW s8, 0(s7)
  ADDI s7, sp, 292
  ADDI s8, zero, 73
  SW s8, 0(s7)
  ADDI s7, sp, 296
  ADDI s8, zero, 74
  SW s8, 0(s7)
  ADDI s7, sp, 300
  ADDI s8, zero, 75
  SW s8, 0(s7)
  ADDI s7, sp, 304
  ADDI s8, zero, 76
  SW s8, 0(s7)
  ADDI s7, sp, 308
  ADDI s8, zero, 77
  SW s8, 0(s7)
  ADDI s7, sp, 312
  ADDI s8, zero, 78
  SW s8, 0(s7)
  ADDI s7, sp, 316
  ADDI s8, zero, 79
  SW s8, 0(s7)
  ADDI s7, sp, 320
  ADDI s8, zero, 80
  SW s8, 0(s7)
  ADDI s7, sp, 324
  ADDI s8, zero, 81
  SW s8, 0(s7)
  ADDI s7, sp, 328
  ADDI s8, zero, 82
  SW s8, 0(s7)
  ADDI s7, sp, 332
  ADDI s8, zero, 83
  SW s8, 0(s7)
  ADDI s7, sp, 336
  ADDI s8, zero, 84
  SW s8, 0(s7)
  ADDI s7, sp, 340
  ADDI s8, zero, 85
  SW s8, 0(s7)
  ADDI s7, sp, 344
  ADDI s8, zero, 86
  SW s8, 0(s7)
  ADDI s7, sp, 348
  ADDI s8, zero, 87
  SW s8, 0(s7)
  ADDI s7, sp, 352
  ADDI s8, zero, 88
  SW s8, 0(s7)
  ADDI s7, sp, 356
  ADDI s8, zero, 89
  SW s8, 0(s7)
  ADDI s7, sp, 360
  ADDI s8, zero, 90
  SW s8, 0(s7)
  ADDI s7, sp, 364
  ADDI s8, zero, 91
  SW s8, 0(s7)
  ADDI s7, sp, 368
  ADDI s8, zero, 92
  SW s8, 0(s7)
  ADDI s7, sp, 372
  ADDI s8, zero, 93
  SW s8, 0(s7)
  ADDI s7, sp, 376
  ADDI s8, zero, 94
  SW s8, 0(s7)
  ADDI s7, sp, 380
  ADDI s8, zero, 95
  SW s8, 0(s7)
  ADDI s7, sp, 384
  ADDI s8, zero, 96
  SW s8, 0(s7)
  ADDI s7, sp, 388
  ADDI s8, zero, 97
  SW s8, 0(s7)
  ADDI s7, sp, 392
  ADDI s8, zero, 98
  SW s8, 0(s7)
  ADDI s7, sp, 396
  ADDI s8, zero, 99
  SW s8, 0(s7)
  ADDIW s6, s6, 1
  ADD s7, zero, zero
  ADD s5, s5, zero
  # implict jump to bb16
bb16:
  ADD s8, s5, zero
  ADD s9, s7, zero
  SLTI s10, s9, 100
  BNE s10, zero, bb18
  # implict jump to bb17
bb17:
  LUI s10, 16
  ADDIW s10, s10, -1
  REMW s10, s8, s10
  ADD s3, s6, zero
  ADD s4, s10, zero
  JAL zero, bb13
bb18:
  SLLIW s3, s9, 2
  ADDI t5, sp, 0
  ADD s3, t5, s3
  LW s3, 0(s3)
  ADDW s3, s8, s3
  ADDIW s4, s9, 1
  ADD s7, s4, zero
  ADD s5, s3, zero
  JAL zero, bb16
bb19:
  SLLIW s3, s2, 2
  ADDI t5, sp, 0
  ADD s3, t5, s3
  SW zero, 0(s3)
  ADDIW s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb11
