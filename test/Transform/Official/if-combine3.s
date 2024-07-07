.global main
.global func
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  ADDI a0, zero, 324
  CALL _sysy_starttime
  CALL getint
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL func
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 328
  CALL _sysy_stoptime
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
func:
  ADDI sp, sp, -496
  SD s10, 400(sp)
  SD s0, 408(sp)
  SD s5, 416(sp)
  SD s7, 424(sp)
  SD s1, 432(sp)
  SD s6, 440(sp)
  SD s2, 448(sp)
  SD s3, 456(sp)
  SD s4, 464(sp)
  SD ra, 472(sp)
  SD s8, 480(sp)
  SD s9, 488(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  JAL zero, bb2
bb2:
  ADD s2, s1, zero
  SLTI s3, s2, 100
  BNE s3, zero, bb3
  JAL zero, bb4
bb3:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADDI t5, sp, 0
  ADD s3, t5, s4
  SW zero, 0(s3)
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb2
bb4:
  ADD s1, zero, zero
  ADD s2, zero, zero
  JAL zero, bb5
bb5:
  ADD s3, s2, zero
  ADD s4, s1, zero
  SLT s5, s4, s0
  BNE s5, zero, bb6
  JAL zero, bb7
bb6:
  JAL zero, bb8
bb7:
  ADD a0, s3, zero
  LD s10, 400(sp)
  LD s0, 408(sp)
  LD s5, 416(sp)
  LD s7, 424(sp)
  LD s1, 432(sp)
  LD s6, 440(sp)
  LD s2, 448(sp)
  LD s3, 456(sp)
  LD s4, 464(sp)
  LD ra, 472(sp)
  LD s8, 480(sp)
  LD s9, 488(sp)
  ADDI sp, sp, 496
  JALR zero, 0(ra)
bb8:
  ADDI s5, sp, 4
  ADDI s6, zero, 1
  SW s6, 0(s5)
  JAL zero, bb10
bb9:
  ADDIW s5, s4, 1
  ADD s4, zero, zero
  ADD s6, s3, zero
  JAL zero, bb108
bb10:
  ADDI s5, sp, 8
  ADDI s6, zero, 2
  SW s6, 0(s5)
  JAL zero, bb11
bb11:
  ADDI s5, sp, 12
  ADDI s6, zero, 3
  SW s6, 0(s5)
  JAL zero, bb12
bb12:
  ADDI s5, sp, 16
  ADDI s6, zero, 4
  SW s6, 0(s5)
  JAL zero, bb13
bb13:
  ADDI s5, sp, 20
  ADDI s6, zero, 5
  SW s6, 0(s5)
  JAL zero, bb14
bb14:
  ADDI s5, sp, 24
  ADDI s6, zero, 6
  SW s6, 0(s5)
  JAL zero, bb15
bb15:
  ADDI s5, sp, 28
  ADDI s6, zero, 7
  SW s6, 0(s5)
  JAL zero, bb16
bb16:
  ADDI s5, sp, 32
  ADDI s6, zero, 8
  SW s6, 0(s5)
  JAL zero, bb17
bb17:
  ADDI s5, sp, 36
  ADDI s6, zero, 9
  SW s6, 0(s5)
  JAL zero, bb18
bb18:
  ADDI s5, sp, 40
  ADDI s6, zero, 10
  SW s6, 0(s5)
  JAL zero, bb19
bb19:
  ADDI s5, sp, 44
  ADDI s6, zero, 11
  SW s6, 0(s5)
  JAL zero, bb20
bb20:
  ADDI s5, sp, 48
  ADDI s6, zero, 12
  SW s6, 0(s5)
  JAL zero, bb21
bb21:
  ADDI s5, sp, 52
  ADDI s6, zero, 13
  SW s6, 0(s5)
  JAL zero, bb22
bb22:
  ADDI s5, sp, 56
  ADDI s6, zero, 14
  SW s6, 0(s5)
  JAL zero, bb23
bb23:
  ADDI s5, sp, 60
  ADDI s6, zero, 15
  SW s6, 0(s5)
  JAL zero, bb24
bb24:
  ADDI s5, sp, 64
  ADDI s6, zero, 16
  SW s6, 0(s5)
  JAL zero, bb25
bb25:
  ADDI s5, sp, 68
  ADDI s6, zero, 17
  SW s6, 0(s5)
  JAL zero, bb26
bb26:
  ADDI s5, sp, 72
  ADDI s6, zero, 18
  SW s6, 0(s5)
  JAL zero, bb27
bb27:
  ADDI s5, sp, 76
  ADDI s6, zero, 19
  SW s6, 0(s5)
  JAL zero, bb28
bb28:
  ADDI s5, sp, 80
  ADDI s6, zero, 20
  SW s6, 0(s5)
  JAL zero, bb29
bb29:
  ADDI s5, sp, 84
  ADDI s6, zero, 21
  SW s6, 0(s5)
  JAL zero, bb30
bb30:
  ADDI s5, sp, 88
  ADDI s6, zero, 22
  SW s6, 0(s5)
  JAL zero, bb31
bb31:
  ADDI s5, sp, 92
  ADDI s6, zero, 23
  SW s6, 0(s5)
  JAL zero, bb32
bb32:
  ADDI s5, sp, 96
  ADDI s6, zero, 24
  SW s6, 0(s5)
  JAL zero, bb33
bb33:
  ADDI s5, sp, 100
  ADDI s6, zero, 25
  SW s6, 0(s5)
  JAL zero, bb34
bb34:
  ADDI s5, sp, 104
  ADDI s6, zero, 26
  SW s6, 0(s5)
  JAL zero, bb35
bb35:
  ADDI s5, sp, 108
  ADDI s6, zero, 27
  SW s6, 0(s5)
  JAL zero, bb36
bb36:
  ADDI s5, sp, 112
  ADDI s6, zero, 28
  SW s6, 0(s5)
  JAL zero, bb37
bb37:
  ADDI s5, sp, 116
  ADDI s6, zero, 29
  SW s6, 0(s5)
  JAL zero, bb38
bb38:
  ADDI s5, sp, 120
  ADDI s6, zero, 30
  SW s6, 0(s5)
  JAL zero, bb39
bb39:
  ADDI s5, sp, 124
  ADDI s6, zero, 31
  SW s6, 0(s5)
  JAL zero, bb40
bb40:
  ADDI s5, sp, 128
  ADDI s6, zero, 32
  SW s6, 0(s5)
  JAL zero, bb41
bb41:
  ADDI s5, sp, 132
  ADDI s6, zero, 33
  SW s6, 0(s5)
  JAL zero, bb42
bb42:
  ADDI s5, sp, 136
  ADDI s6, zero, 34
  SW s6, 0(s5)
  JAL zero, bb43
bb43:
  ADDI s5, sp, 140
  ADDI s6, zero, 35
  SW s6, 0(s5)
  JAL zero, bb44
bb44:
  ADDI s5, sp, 144
  ADDI s6, zero, 36
  SW s6, 0(s5)
  JAL zero, bb45
bb45:
  ADDI s5, sp, 148
  ADDI s6, zero, 37
  SW s6, 0(s5)
  JAL zero, bb46
bb46:
  ADDI s5, sp, 152
  ADDI s6, zero, 38
  SW s6, 0(s5)
  JAL zero, bb47
bb47:
  ADDI s5, sp, 156
  ADDI s6, zero, 39
  SW s6, 0(s5)
  JAL zero, bb48
bb48:
  ADDI s5, sp, 160
  ADDI s6, zero, 40
  SW s6, 0(s5)
  JAL zero, bb49
bb49:
  ADDI s5, sp, 164
  ADDI s6, zero, 41
  SW s6, 0(s5)
  JAL zero, bb50
bb50:
  ADDI s5, sp, 168
  ADDI s6, zero, 42
  SW s6, 0(s5)
  JAL zero, bb51
bb51:
  ADDI s5, sp, 172
  ADDI s6, zero, 43
  SW s6, 0(s5)
  JAL zero, bb52
bb52:
  ADDI s5, sp, 176
  ADDI s6, zero, 44
  SW s6, 0(s5)
  JAL zero, bb53
bb53:
  ADDI s5, sp, 180
  ADDI s6, zero, 45
  SW s6, 0(s5)
  JAL zero, bb54
bb54:
  ADDI s5, sp, 184
  ADDI s6, zero, 46
  SW s6, 0(s5)
  JAL zero, bb55
bb55:
  ADDI s5, sp, 188
  ADDI s6, zero, 47
  SW s6, 0(s5)
  JAL zero, bb56
bb56:
  ADDI s5, sp, 192
  ADDI s6, zero, 48
  SW s6, 0(s5)
  JAL zero, bb57
bb57:
  ADDI s5, sp, 196
  ADDI s6, zero, 49
  SW s6, 0(s5)
  JAL zero, bb58
bb58:
  ADDI s5, sp, 200
  ADDI s6, zero, 50
  SW s6, 0(s5)
  JAL zero, bb59
bb59:
  ADDI s5, sp, 204
  ADDI s6, zero, 51
  SW s6, 0(s5)
  JAL zero, bb60
bb60:
  ADDI s5, sp, 208
  ADDI s6, zero, 52
  SW s6, 0(s5)
  JAL zero, bb61
bb61:
  ADDI s5, sp, 212
  ADDI s6, zero, 53
  SW s6, 0(s5)
  JAL zero, bb62
bb62:
  ADDI s5, sp, 216
  ADDI s6, zero, 54
  SW s6, 0(s5)
  JAL zero, bb63
bb63:
  ADDI s5, sp, 220
  ADDI s6, zero, 55
  SW s6, 0(s5)
  JAL zero, bb64
bb64:
  ADDI s5, sp, 224
  ADDI s6, zero, 56
  SW s6, 0(s5)
  JAL zero, bb65
bb65:
  ADDI s5, sp, 228
  ADDI s6, zero, 57
  SW s6, 0(s5)
  JAL zero, bb66
bb66:
  ADDI s5, sp, 232
  ADDI s6, zero, 58
  SW s6, 0(s5)
  JAL zero, bb67
bb67:
  ADDI s5, sp, 236
  ADDI s6, zero, 59
  SW s6, 0(s5)
  JAL zero, bb68
bb68:
  ADDI s5, sp, 240
  ADDI s6, zero, 60
  SW s6, 0(s5)
  JAL zero, bb69
bb69:
  ADDI s5, sp, 244
  ADDI s6, zero, 61
  SW s6, 0(s5)
  JAL zero, bb70
bb70:
  ADDI s5, sp, 248
  ADDI s6, zero, 62
  SW s6, 0(s5)
  JAL zero, bb71
bb71:
  ADDI s5, sp, 252
  ADDI s6, zero, 63
  SW s6, 0(s5)
  JAL zero, bb72
bb72:
  ADDI s5, sp, 256
  ADDI s6, zero, 64
  SW s6, 0(s5)
  JAL zero, bb73
bb73:
  ADDI s5, sp, 260
  ADDI s6, zero, 65
  SW s6, 0(s5)
  JAL zero, bb74
bb74:
  ADDI s5, sp, 264
  ADDI s6, zero, 66
  SW s6, 0(s5)
  JAL zero, bb75
bb75:
  ADDI s5, sp, 268
  ADDI s6, zero, 67
  SW s6, 0(s5)
  JAL zero, bb76
bb76:
  ADDI s5, sp, 272
  ADDI s6, zero, 68
  SW s6, 0(s5)
  JAL zero, bb77
bb77:
  ADDI s5, sp, 276
  ADDI s6, zero, 69
  SW s6, 0(s5)
  JAL zero, bb78
bb78:
  ADDI s5, sp, 280
  ADDI s6, zero, 70
  SW s6, 0(s5)
  JAL zero, bb79
bb79:
  ADDI s5, sp, 284
  ADDI s6, zero, 71
  SW s6, 0(s5)
  JAL zero, bb80
bb80:
  ADDI s5, sp, 288
  ADDI s6, zero, 72
  SW s6, 0(s5)
  JAL zero, bb81
bb81:
  ADDI s5, sp, 292
  ADDI s6, zero, 73
  SW s6, 0(s5)
  JAL zero, bb82
bb82:
  ADDI s5, sp, 296
  ADDI s6, zero, 74
  SW s6, 0(s5)
  JAL zero, bb83
bb83:
  ADDI s5, sp, 300
  ADDI s6, zero, 75
  SW s6, 0(s5)
  JAL zero, bb84
bb84:
  ADDI s5, sp, 304
  ADDI s6, zero, 76
  SW s6, 0(s5)
  JAL zero, bb85
bb85:
  ADDI s5, sp, 308
  ADDI s6, zero, 77
  SW s6, 0(s5)
  JAL zero, bb86
bb86:
  ADDI s5, sp, 312
  ADDI s6, zero, 78
  SW s6, 0(s5)
  JAL zero, bb87
bb87:
  ADDI s5, sp, 316
  ADDI s6, zero, 79
  SW s6, 0(s5)
  JAL zero, bb88
bb88:
  ADDI s5, sp, 320
  ADDI s6, zero, 80
  SW s6, 0(s5)
  JAL zero, bb89
bb89:
  ADDI s5, sp, 324
  ADDI s6, zero, 81
  SW s6, 0(s5)
  JAL zero, bb90
bb90:
  ADDI s5, sp, 328
  ADDI s6, zero, 82
  SW s6, 0(s5)
  JAL zero, bb91
bb91:
  ADDI s5, sp, 332
  ADDI s6, zero, 83
  SW s6, 0(s5)
  JAL zero, bb92
bb92:
  ADDI s5, sp, 336
  ADDI s6, zero, 84
  SW s6, 0(s5)
  JAL zero, bb93
bb93:
  ADDI s5, sp, 340
  ADDI s6, zero, 85
  SW s6, 0(s5)
  JAL zero, bb94
bb94:
  ADDI s5, sp, 344
  ADDI s6, zero, 86
  SW s6, 0(s5)
  JAL zero, bb95
bb95:
  ADDI s5, sp, 348
  ADDI s6, zero, 87
  SW s6, 0(s5)
  JAL zero, bb96
bb96:
  ADDI s5, sp, 352
  ADDI s6, zero, 88
  SW s6, 0(s5)
  JAL zero, bb97
bb97:
  ADDI s5, sp, 356
  ADDI s6, zero, 89
  SW s6, 0(s5)
  JAL zero, bb98
bb98:
  ADDI s5, sp, 360
  ADDI s6, zero, 90
  SW s6, 0(s5)
  JAL zero, bb99
bb99:
  ADDI s5, sp, 364
  ADDI s6, zero, 91
  SW s6, 0(s5)
  JAL zero, bb100
bb100:
  ADDI s5, sp, 368
  ADDI s6, zero, 92
  SW s6, 0(s5)
  JAL zero, bb101
bb101:
  ADDI s5, sp, 372
  ADDI s6, zero, 93
  SW s6, 0(s5)
  JAL zero, bb102
bb102:
  ADDI s5, sp, 376
  ADDI s6, zero, 94
  SW s6, 0(s5)
  JAL zero, bb103
bb103:
  ADDI s5, sp, 380
  ADDI s6, zero, 95
  SW s6, 0(s5)
  JAL zero, bb104
bb104:
  ADDI s5, sp, 384
  ADDI s6, zero, 96
  SW s6, 0(s5)
  JAL zero, bb105
bb105:
  ADDI s5, sp, 388
  ADDI s6, zero, 97
  SW s6, 0(s5)
  JAL zero, bb106
bb106:
  ADDI s5, sp, 392
  ADDI s6, zero, 98
  SW s6, 0(s5)
  JAL zero, bb107
bb107:
  ADDI s5, sp, 396
  ADDI s6, zero, 99
  SW s6, 0(s5)
  JAL zero, bb9
bb108:
  ADD s7, s6, zero
  ADD s8, s4, zero
  SLTI s9, s8, 100
  BNE s9, zero, bb109
  JAL zero, bb110
bb109:
  ADDI s9, zero, 4
  MULW s10, s8, s9
  ADDI t6, sp, 0
  ADD s9, t6, s10
  LW s10, 0(s9)
  ADDW s9, s7, s10
  ADDIW s10, s8, 1
  ADD s4, s10, zero
  ADD s6, s9, zero
  JAL zero, bb108
bb110:
  LUI s4, 16
  ADDI s4, s4, -1
  REMW s6, s7, s4
  ADD s1, s5, zero
  ADD s2, s6, zero
  JAL zero, bb5
