.global main
.section .bss
array:
.space 80

.section .data

sum:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s0, zero, zero
  # implict jump to bb1
bb1:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s1, sum
  SW a0, 0(s1)
  SLT a0, zero, s0
  XORI a0, a0, 1
  BNE a0, zero, bb489
  # implict jump to bb2
bb2:
  SLTI a0, zero, 20
  XORI a0, a0, 1
  # implict jump to bb3
bb3:
  BNE a0, zero, bb488
  # implict jump to bb4
bb4:
  LA a0, array
  ADDI s1, zero, 1
  SW s1, 0(a0)
  ADDI a0, zero, 1
  # implict jump to bb5
bb5:
  BNE a0, zero, bb481
  # implict jump to bb6
bb6:
  ADD a0, zero, zero
  # implict jump to bb7
bb7:
  BNE a0, zero, bb474
  # implict jump to bb8
bb8:
  ADD a0, zero, zero
  # implict jump to bb9
bb9:
  BNE a0, zero, bb467
  # implict jump to bb10
bb10:
  ADD a0, zero, zero
  # implict jump to bb11
bb11:
  BNE a0, zero, bb460
  # implict jump to bb12
bb12:
  ADD a0, zero, zero
  # implict jump to bb13
bb13:
  BNE a0, zero, bb453
  # implict jump to bb14
bb14:
  ADD a0, zero, zero
  # implict jump to bb15
bb15:
  BNE a0, zero, bb446
  # implict jump to bb16
bb16:
  ADD a0, zero, zero
  # implict jump to bb17
bb17:
  BNE a0, zero, bb439
  # implict jump to bb18
bb18:
  ADD a0, zero, zero
  # implict jump to bb19
bb19:
  BNE a0, zero, bb432
  # implict jump to bb20
bb20:
  ADD a0, zero, zero
  # implict jump to bb21
bb21:
  BNE a0, zero, bb425
  # implict jump to bb22
bb22:
  ADD a0, zero, zero
  # implict jump to bb23
bb23:
  BNE a0, zero, bb418
  # implict jump to bb24
bb24:
  ADD a0, zero, zero
  # implict jump to bb25
bb25:
  BNE a0, zero, bb411
  # implict jump to bb26
bb26:
  ADD a0, zero, zero
  # implict jump to bb27
bb27:
  BNE a0, zero, bb404
  # implict jump to bb28
bb28:
  ADD a0, zero, zero
  # implict jump to bb29
bb29:
  BNE a0, zero, bb397
  # implict jump to bb30
bb30:
  ADD a0, zero, zero
  # implict jump to bb31
bb31:
  BNE a0, zero, bb390
  # implict jump to bb32
bb32:
  ADD a0, zero, zero
  # implict jump to bb33
bb33:
  BNE a0, zero, bb383
  # implict jump to bb34
bb34:
  ADD a0, zero, zero
  # implict jump to bb35
bb35:
  BNE a0, zero, bb376
  # implict jump to bb36
bb36:
  ADD a0, zero, zero
  # implict jump to bb37
bb37:
  BNE a0, zero, bb369
  # implict jump to bb38
bb38:
  ADD a0, zero, zero
  # implict jump to bb39
bb39:
  BNE a0, zero, bb362
  # implict jump to bb40
bb40:
  ADD a0, zero, zero
  # implict jump to bb41
bb41:
  BNE a0, zero, bb357
  # implict jump to bb42
bb42:
  ADDIW s0, s0, 1
  SLTI a0, s0, 20
  BNE a0, zero, bb356
  # implict jump to bb43
bb43:
  ADD s0, zero, zero
  # implict jump to bb44
bb44:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 2
  LA s1, sum
  SW a0, 0(s1)
  SLT a0, zero, s0
  XORI a0, a0, 1
  BNE a0, zero, bb355
  # implict jump to bb45
bb45:
  SLTI a0, zero, 20
  XORI a0, a0, 1
  # implict jump to bb46
bb46:
  BNE a0, zero, bb354
  # implict jump to bb47
bb47:
  LA a0, array
  SW zero, 0(a0)
  ADD a0, zero, zero
  # implict jump to bb48
bb48:
  BNE a0, zero, bb353
  # implict jump to bb49
bb49:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 2
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 1
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb352
  # implict jump to bb50
bb50:
  ADDI a0, zero, 1
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb51
bb51:
  BNE a0, zero, bb351
  # implict jump to bb52
bb52:
  LA a0, array
  SW zero, 4(a0)
  LA a0, array
  LW a0, 0(a0)
  # implict jump to bb53
bb53:
  SLTU a0, zero, a0
  # implict jump to bb54
bb54:
  BNE a0, zero, bb350
  # implict jump to bb55
bb55:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 2
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 2
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb349
  # implict jump to bb56
bb56:
  ADDI a0, zero, 2
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb57
bb57:
  BNE a0, zero, bb348
  # implict jump to bb58
bb58:
  LA a0, array
  SW zero, 8(a0)
  LA a0, array
  LW a0, 4(a0)
  # implict jump to bb59
bb59:
  SLTU a0, zero, a0
  # implict jump to bb60
bb60:
  BNE a0, zero, bb347
  # implict jump to bb61
bb61:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 2
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 3
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb346
  # implict jump to bb62
bb62:
  ADDI a0, zero, 3
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb63
bb63:
  BNE a0, zero, bb345
  # implict jump to bb64
bb64:
  LA a0, array
  SW zero, 12(a0)
  LA a0, array
  LW a0, 8(a0)
  # implict jump to bb65
bb65:
  SLTU a0, zero, a0
  # implict jump to bb66
bb66:
  BNE a0, zero, bb344
  # implict jump to bb67
bb67:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 2
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 4
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb343
  # implict jump to bb68
bb68:
  ADDI a0, zero, 4
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb69
bb69:
  BNE a0, zero, bb342
  # implict jump to bb70
bb70:
  LA a0, array
  SW zero, 16(a0)
  LA a0, array
  LW a0, 12(a0)
  # implict jump to bb71
bb71:
  SLTU a0, zero, a0
  # implict jump to bb72
bb72:
  BNE a0, zero, bb341
  # implict jump to bb73
bb73:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 2
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 5
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb340
  # implict jump to bb74
bb74:
  ADDI a0, zero, 5
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb75
bb75:
  BNE a0, zero, bb339
  # implict jump to bb76
bb76:
  LA a0, array
  SW zero, 20(a0)
  LA a0, array
  LW a0, 16(a0)
  # implict jump to bb77
bb77:
  SLTU a0, zero, a0
  # implict jump to bb78
bb78:
  BNE a0, zero, bb338
  # implict jump to bb79
bb79:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 2
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 6
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb337
  # implict jump to bb80
bb80:
  ADDI a0, zero, 6
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb81
bb81:
  BNE a0, zero, bb336
  # implict jump to bb82
bb82:
  LA a0, array
  SW zero, 24(a0)
  LA a0, array
  LW a0, 20(a0)
  # implict jump to bb83
bb83:
  SLTU a0, zero, a0
  # implict jump to bb84
bb84:
  BNE a0, zero, bb335
  # implict jump to bb85
bb85:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 2
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 7
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb334
  # implict jump to bb86
bb86:
  ADDI a0, zero, 7
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb87
bb87:
  BNE a0, zero, bb333
  # implict jump to bb88
bb88:
  LA a0, array
  SW zero, 28(a0)
  LA a0, array
  LW a0, 24(a0)
  # implict jump to bb89
bb89:
  SLTU a0, zero, a0
  # implict jump to bb90
bb90:
  BNE a0, zero, bb332
  # implict jump to bb91
bb91:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 2
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 8
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb331
  # implict jump to bb92
bb92:
  ADDI a0, zero, 8
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb93
bb93:
  BNE a0, zero, bb330
  # implict jump to bb94
bb94:
  LA a0, array
  SW zero, 32(a0)
  LA a0, array
  LW a0, 28(a0)
  # implict jump to bb95
bb95:
  SLTU a0, zero, a0
  # implict jump to bb96
bb96:
  BNE a0, zero, bb329
  # implict jump to bb97
bb97:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 2
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 9
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb328
  # implict jump to bb98
bb98:
  ADDI a0, zero, 9
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb99
bb99:
  BNE a0, zero, bb327
  # implict jump to bb100
bb100:
  LA a0, array
  SW zero, 36(a0)
  LA a0, array
  LW a0, 32(a0)
  # implict jump to bb101
bb101:
  SLTU a0, zero, a0
  # implict jump to bb102
bb102:
  BNE a0, zero, bb326
  # implict jump to bb103
bb103:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 2
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 10
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb325
  # implict jump to bb104
bb104:
  ADDI a0, zero, 10
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb105
bb105:
  BNE a0, zero, bb324
  # implict jump to bb106
bb106:
  LA a0, array
  SW zero, 40(a0)
  LA a0, array
  LW a0, 36(a0)
  # implict jump to bb107
bb107:
  SLTU a0, zero, a0
  # implict jump to bb108
bb108:
  BNE a0, zero, bb323
  # implict jump to bb109
bb109:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 2
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 11
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb322
  # implict jump to bb110
bb110:
  ADDI a0, zero, 11
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb111
bb111:
  BNE a0, zero, bb321
  # implict jump to bb112
bb112:
  LA a0, array
  SW zero, 44(a0)
  LA a0, array
  LW a0, 40(a0)
  # implict jump to bb113
bb113:
  SLTU a0, zero, a0
  # implict jump to bb114
bb114:
  BNE a0, zero, bb320
  # implict jump to bb115
bb115:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 2
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 12
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb319
  # implict jump to bb116
bb116:
  ADDI a0, zero, 12
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb117
bb117:
  BNE a0, zero, bb318
  # implict jump to bb118
bb118:
  LA a0, array
  SW zero, 48(a0)
  LA a0, array
  LW a0, 44(a0)
  # implict jump to bb119
bb119:
  SLTU a0, zero, a0
  # implict jump to bb120
bb120:
  BNE a0, zero, bb317
  # implict jump to bb121
bb121:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 2
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 13
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb316
  # implict jump to bb122
bb122:
  ADDI a0, zero, 13
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb123
bb123:
  BNE a0, zero, bb315
  # implict jump to bb124
bb124:
  LA a0, array
  SW zero, 52(a0)
  LA a0, array
  LW a0, 48(a0)
  # implict jump to bb125
bb125:
  SLTU a0, zero, a0
  # implict jump to bb126
bb126:
  BNE a0, zero, bb314
  # implict jump to bb127
bb127:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 2
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 14
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb313
  # implict jump to bb128
bb128:
  ADDI a0, zero, 14
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb129
bb129:
  BNE a0, zero, bb312
  # implict jump to bb130
bb130:
  LA a0, array
  SW zero, 56(a0)
  LA a0, array
  LW a0, 52(a0)
  # implict jump to bb131
bb131:
  SLTU a0, zero, a0
  # implict jump to bb132
bb132:
  BNE a0, zero, bb311
  # implict jump to bb133
bb133:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 2
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 15
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb310
  # implict jump to bb134
bb134:
  ADDI a0, zero, 15
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb135
bb135:
  BNE a0, zero, bb309
  # implict jump to bb136
bb136:
  LA a0, array
  SW zero, 60(a0)
  LA a0, array
  LW a0, 56(a0)
  # implict jump to bb137
bb137:
  SLTU a0, zero, a0
  # implict jump to bb138
bb138:
  BNE a0, zero, bb308
  # implict jump to bb139
bb139:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 2
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 16
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb307
  # implict jump to bb140
bb140:
  ADDI a0, zero, 16
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb141
bb141:
  BNE a0, zero, bb306
  # implict jump to bb142
bb142:
  LA a0, array
  SW zero, 64(a0)
  LA a0, array
  LW a0, 60(a0)
  # implict jump to bb143
bb143:
  SLTU a0, zero, a0
  # implict jump to bb144
bb144:
  BNE a0, zero, bb305
  # implict jump to bb145
bb145:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 2
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 17
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb304
  # implict jump to bb146
bb146:
  ADDI a0, zero, 17
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb147
bb147:
  BNE a0, zero, bb303
  # implict jump to bb148
bb148:
  LA a0, array
  SW zero, 68(a0)
  LA a0, array
  LW a0, 64(a0)
  # implict jump to bb149
bb149:
  SLTU a0, zero, a0
  # implict jump to bb150
bb150:
  BNE a0, zero, bb302
  # implict jump to bb151
bb151:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 2
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 18
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb301
  # implict jump to bb152
bb152:
  ADDI a0, zero, 18
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb153
bb153:
  BNE a0, zero, bb300
  # implict jump to bb154
bb154:
  LA a0, array
  SW zero, 72(a0)
  LA a0, array
  LW a0, 68(a0)
  # implict jump to bb155
bb155:
  SLTU a0, zero, a0
  # implict jump to bb156
bb156:
  BNE a0, zero, bb161
  # implict jump to bb157
bb157:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 2
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 19
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb299
  # implict jump to bb158
bb158:
  ADDI a0, zero, 19
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb159
bb159:
  BNE a0, zero, bb161
  # implict jump to bb160
bb160:
  LA a0, array
  SW zero, 76(a0)
  # implict jump to bb161
bb161:
  ADDIW s0, s0, 1
  SLTI a0, s0, 20
  BNE a0, zero, bb298
  # implict jump to bb162
bb162:
  ADDI s0, zero, 1
  # implict jump to bb163
bb163:
  SLTI a0, s0, 20
  BNE a0, zero, bb289
  # implict jump to bb164
bb164:
  ADD a0, zero, zero
  # implict jump to bb165
bb165:
  BNE a0, zero, bb288
  # implict jump to bb166
bb166:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  LA s0, sum
  SW a0, 0(s0)
  SLTI a0, zero, 20
  XORI s1, a0, 1
  BNE s1, zero, bb287
  # implict jump to bb167
bb167:
  LA a0, array
  LW a0, 0(a0)
  # implict jump to bb168
bb168:
  BNE a0, zero, bb283
  # implict jump to bb169
bb169:
  ADD a0, zero, zero
  # implict jump to bb170
bb170:
  BNE a0, zero, bb282
  # implict jump to bb171
bb171:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  LA s0, sum
  SW a0, 0(s0)
  ADDI a0, zero, 2
  SLTI a0, a0, 20
  XORI a0, a0, 1
  BNE a0, zero, bb281
  # implict jump to bb172
bb172:
  LA a0, array
  LW a0, 8(a0)
  # implict jump to bb173
bb173:
  SLTU a0, zero, a0
  XORI a0, a0, 1
  SLTU a0, zero, a0
  # implict jump to bb174
bb174:
  BNE a0, zero, bb176
  # implict jump to bb175
bb175:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  LA s0, sum
  SW a0, 0(s0)
  # implict jump to bb176
bb176:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  LA s0, sum
  SW a0, 0(s0)
  ADDI a0, zero, 4
  SLTI a0, a0, 20
  XORI s0, a0, 1
  BNE s0, zero, bb280
  # implict jump to bb177
bb177:
  LA a0, array
  LW a0, 16(a0)
  # implict jump to bb178
bb178:
  SLTU a0, zero, a0
  XORI a0, a0, 1
  BNE a0, zero, bb279
  # implict jump to bb179
bb179:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  LA s2, sum
  SW a0, 0(s2)
  ADDI a0, zero, 5
  SLTI a0, a0, 20
  XORI a0, a0, 1
  BNE a0, zero, bb278
  # implict jump to bb180
bb180:
  LA a0, array
  LW a0, 20(a0)
  # implict jump to bb181
bb181:
  BNE a0, zero, bb274
  # implict jump to bb182
bb182:
  ADD a0, zero, zero
  # implict jump to bb183
bb183:
  BNE a0, zero, bb270
  # implict jump to bb184
bb184:
  ADD a0, zero, zero
  # implict jump to bb185
bb185:
  # implict jump to bb186
bb186:
  BNE a0, zero, bb188
  # implict jump to bb187
bb187:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  LA s2, sum
  SW a0, 0(s2)
  # implict jump to bb188
bb188:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  LA s2, sum
  SW a0, 0(s2)
  ADDI a0, zero, 9
  SLTI a0, a0, 20
  XORI a0, a0, 1
  BNE a0, zero, bb269
  # implict jump to bb189
bb189:
  LA a0, array
  LW a0, 36(a0)
  # implict jump to bb190
bb190:
  BNE a0, zero, bb265
  # implict jump to bb191
bb191:
  ADD a0, zero, zero
  # implict jump to bb192
bb192:
  BNE a0, zero, bb264
  # implict jump to bb193
bb193:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  LA s2, sum
  SW a0, 0(s2)
  ADDI a0, zero, 11
  SLTI a0, a0, 20
  XORI a0, a0, 1
  BNE a0, zero, bb263
  # implict jump to bb194
bb194:
  LA a0, array
  LW a0, 44(a0)
  # implict jump to bb195
bb195:
  SLTU a0, zero, a0
  XORI a0, a0, 1
  SLTU a0, zero, a0
  # implict jump to bb196
bb196:
  BNE a0, zero, bb262
  # implict jump to bb197
bb197:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  LA s2, sum
  SW a0, 0(s2)
  ADDI a0, zero, 12
  SLTI a0, a0, 20
  XORI a0, a0, 1
  BNE a0, zero, bb261
  # implict jump to bb198
bb198:
  LA a0, array
  LW a0, 48(a0)
  # implict jump to bb199
bb199:
  SLTU a0, zero, a0
  XORI a0, a0, 1
  SLTU a0, zero, a0
  # implict jump to bb200
bb200:
  BNE a0, zero, bb260
  # implict jump to bb201
bb201:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  LA s2, sum
  SW a0, 0(s2)
  ADDI a0, zero, 13
  SLTI a0, a0, 20
  XORI a0, a0, 1
  BNE a0, zero, bb259
  # implict jump to bb202
bb202:
  LA a0, array
  LW a0, 52(a0)
  # implict jump to bb203
bb203:
  SLTU a0, zero, a0
  XORI a0, a0, 1
  SLTU a0, zero, a0
  # implict jump to bb204
bb204:
  BNE a0, zero, bb208
  # implict jump to bb205
bb205:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  LA s2, sum
  SW a0, 0(s2)
  ADDI a0, zero, 14
  SLTI a0, a0, 20
  XORI a0, a0, 1
  BNE a0, zero, bb258
  # implict jump to bb206
bb206:
  LA a0, array
  LW a0, 56(a0)
  # implict jump to bb207
bb207:
  BNE a0, zero, bb257
  # implict jump to bb208
bb208:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  LA s2, sum
  SW a0, 0(s2)
  BNE s1, zero, bb256
  # implict jump to bb209
bb209:
  LA a0, array
  LW a0, 0(a0)
  # implict jump to bb210
bb210:
  BNE a0, zero, bb252
  # implict jump to bb211
bb211:
  ADD a0, zero, zero
  # implict jump to bb212
bb212:
  BNE a0, zero, bb248
  # implict jump to bb213
bb213:
  ADD a0, zero, zero
  # implict jump to bb214
bb214:
  BNE a0, zero, bb244
  # implict jump to bb215
bb215:
  ADD a0, zero, zero
  # implict jump to bb216
bb216:
  BNE a0, zero, bb243
  # implict jump to bb217
bb217:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  LA s0, sum
  SW a0, 0(s0)
  ADDI a0, zero, 5
  SLTI a0, a0, 20
  XORI a0, a0, 1
  BNE a0, zero, bb242
  # implict jump to bb218
bb218:
  LA a0, array
  LW a0, 20(a0)
  # implict jump to bb219
bb219:
  SLTU a0, zero, a0
  # implict jump to bb220
bb220:
  BNE a0, zero, bb241
  # implict jump to bb221
bb221:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  LA s0, sum
  SW a0, 0(s0)
  ADDI a0, zero, 6
  SLTI a0, a0, 20
  XORI a0, a0, 1
  BNE a0, zero, bb240
  # implict jump to bb222
bb222:
  LA a0, array
  LW a0, 24(a0)
  # implict jump to bb223
bb223:
  BNE a0, zero, bb236
  # implict jump to bb224
bb224:
  ADD a0, zero, zero
  # implict jump to bb225
bb225:
  # implict jump to bb226
bb226:
  BNE a0, zero, bb235
  # implict jump to bb227
bb227:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  LA s0, sum
  SW a0, 0(s0)
  ADDI a0, zero, 8
  SLTI a0, a0, 20
  XORI a0, a0, 1
  BNE a0, zero, bb234
  # implict jump to bb228
bb228:
  LA a0, array
  LW a0, 32(a0)
  # implict jump to bb229
bb229:
  SLTU a0, zero, a0
  # implict jump to bb230
bb230:
  BNE a0, zero, bb233
  # implict jump to bb231
bb231:
  ADD a0, zero, zero
  # implict jump to bb232
bb232:
  LA s0, sum
  LW s0, 0(s0)
  ADDW a0, s0, a0
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb233:
  ADDI a0, zero, 1
  JAL zero, bb232
bb234:
  ADD a0, zero, zero
  JAL zero, bb229
bb235:
  ADDI a0, zero, 1
  JAL zero, bb230
bb236:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  LA s0, sum
  SW a0, 0(s0)
  ADDI a0, zero, 7
  SLTI a0, a0, 20
  XORI a0, a0, 1
  BNE a0, zero, bb239
  # implict jump to bb237
bb237:
  LA a0, array
  LW a0, 28(a0)
  # implict jump to bb238
bb238:
  SLTU a0, zero, a0
  XORI a0, a0, 1
  SLTU a0, zero, a0
  JAL zero, bb225
bb239:
  ADD a0, zero, zero
  JAL zero, bb238
bb240:
  ADD a0, zero, zero
  JAL zero, bb223
bb241:
  ADDI a0, zero, 1
  JAL zero, bb226
bb242:
  ADD a0, zero, zero
  JAL zero, bb219
bb243:
  ADDI a0, zero, 1
  JAL zero, bb220
bb244:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  LA s1, sum
  SW a0, 0(s1)
  BNE s0, zero, bb247
  # implict jump to bb245
bb245:
  LA a0, array
  LW a0, 16(a0)
  # implict jump to bb246
bb246:
  SLTU a0, zero, a0
  XORI a0, a0, 1
  SLTU a0, zero, a0
  JAL zero, bb216
bb247:
  ADD a0, zero, zero
  JAL zero, bb246
bb248:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 3
  SLTI a0, a0, 20
  XORI a0, a0, 1
  BNE a0, zero, bb251
  # implict jump to bb249
bb249:
  LA a0, array
  LW a0, 12(a0)
  # implict jump to bb250
bb250:
  SLTU a0, zero, a0
  XORI a0, a0, 1
  SLTU a0, zero, a0
  JAL zero, bb214
bb251:
  ADD a0, zero, zero
  JAL zero, bb250
bb252:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 2
  SLTI a0, a0, 20
  XORI a0, a0, 1
  BNE a0, zero, bb255
  # implict jump to bb253
bb253:
  LA a0, array
  LW a0, 8(a0)
  # implict jump to bb254
bb254:
  SLTU a0, zero, a0
  JAL zero, bb212
bb255:
  ADD a0, zero, zero
  JAL zero, bb254
bb256:
  ADD a0, zero, zero
  JAL zero, bb210
bb257:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  LA s2, sum
  SW a0, 0(s2)
  JAL zero, bb208
bb258:
  ADD a0, zero, zero
  JAL zero, bb207
bb259:
  ADD a0, zero, zero
  JAL zero, bb203
bb260:
  ADDI a0, zero, 1
  JAL zero, bb204
bb261:
  ADD a0, zero, zero
  JAL zero, bb199
bb262:
  ADDI a0, zero, 1
  JAL zero, bb200
bb263:
  ADD a0, zero, zero
  JAL zero, bb195
bb264:
  ADDI a0, zero, 1
  JAL zero, bb196
bb265:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  LA s2, sum
  SW a0, 0(s2)
  ADDI a0, zero, 10
  SLTI a0, a0, 20
  XORI a0, a0, 1
  BNE a0, zero, bb268
  # implict jump to bb266
bb266:
  LA a0, array
  LW a0, 40(a0)
  # implict jump to bb267
bb267:
  SLTU a0, zero, a0
  XORI a0, a0, 1
  SLTU a0, zero, a0
  JAL zero, bb192
bb268:
  ADD a0, zero, zero
  JAL zero, bb267
bb269:
  ADD a0, zero, zero
  JAL zero, bb190
bb270:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  LA s2, sum
  SW a0, 0(s2)
  ADDI a0, zero, 7
  SLTI a0, a0, 20
  XORI a0, a0, 1
  BNE a0, zero, bb273
  # implict jump to bb271
bb271:
  LA a0, array
  LW a0, 28(a0)
  # implict jump to bb272
bb272:
  SLTU a0, zero, a0
  JAL zero, bb185
bb273:
  ADD a0, zero, zero
  JAL zero, bb272
bb274:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  LA s2, sum
  SW a0, 0(s2)
  ADDI a0, zero, 6
  SLTI a0, a0, 20
  XORI a0, a0, 1
  BNE a0, zero, bb277
  # implict jump to bb275
bb275:
  LA a0, array
  LW a0, 24(a0)
  # implict jump to bb276
bb276:
  SLTU a0, zero, a0
  XORI a0, a0, 1
  SLTU a0, zero, a0
  JAL zero, bb183
bb277:
  ADD a0, zero, zero
  JAL zero, bb276
bb278:
  ADD a0, zero, zero
  JAL zero, bb181
bb279:
  ADDI a0, zero, 1
  JAL zero, bb186
bb280:
  ADD a0, zero, zero
  JAL zero, bb178
bb281:
  ADD a0, zero, zero
  JAL zero, bb173
bb282:
  ADDI a0, zero, 1
  JAL zero, bb174
bb283:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  LA s0, sum
  SW a0, 0(s0)
  ADDI a0, zero, 1
  SLTI a0, a0, 20
  XORI a0, a0, 1
  BNE a0, zero, bb286
  # implict jump to bb284
bb284:
  LA a0, array
  LW a0, 4(a0)
  # implict jump to bb285
bb285:
  SLTU a0, zero, a0
  JAL zero, bb170
bb286:
  ADD a0, zero, zero
  JAL zero, bb285
bb287:
  ADD a0, zero, zero
  JAL zero, bb168
bb288:
  ADDIW s0, s0, 1
  JAL zero, bb163
bb289:
  ADDI a0, zero, 1
  SUBW s1, s0, a0
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s2, sum
  SW a0, 0(s2)
  SLT a0, s1, s0
  XORI a0, a0, 1
  BNE a0, zero, bb297
  # implict jump to bb290
bb290:
  SLTI a0, s1, 20
  XORI a0, a0, 1
  # implict jump to bb291
bb291:
  BNE a0, zero, bb296
  # implict jump to bb292
bb292:
  SLLIW a0, s1, 2
  LA s2, array
  ADD a0, s2, a0
  ADDI s2, zero, 1
  SW s2, 0(a0)
  SLTIU a0, s1, 1
  BNE a0, zero, bb295
  # implict jump to bb293
bb293:
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SLLIW a0, a0, 2
  LA s1, array
  ADD a0, s1, a0
  LW a0, 0(a0)
  # implict jump to bb294
bb294:
  SLTU a0, zero, a0
  JAL zero, bb165
bb295:
  LA a0, array
  LW a0, 0(a0)
  JAL zero, bb294
bb296:
  ADD a0, zero, zero
  JAL zero, bb294
bb297:
  ADDI a0, zero, 1
  JAL zero, bb291
bb298:
  JAL zero, bb44
bb299:
  ADDI a0, zero, 1
  JAL zero, bb159
bb300:
  ADDI a0, zero, 1
  JAL zero, bb155
bb301:
  ADDI a0, zero, 1
  JAL zero, bb153
bb302:
  ADDI a0, zero, 1
  JAL zero, bb156
bb303:
  ADDI a0, zero, 1
  JAL zero, bb149
bb304:
  ADDI a0, zero, 1
  JAL zero, bb147
bb305:
  ADDI a0, zero, 1
  JAL zero, bb150
bb306:
  ADDI a0, zero, 1
  JAL zero, bb143
bb307:
  ADDI a0, zero, 1
  JAL zero, bb141
bb308:
  ADDI a0, zero, 1
  JAL zero, bb144
bb309:
  ADDI a0, zero, 1
  JAL zero, bb137
bb310:
  ADDI a0, zero, 1
  JAL zero, bb135
bb311:
  ADDI a0, zero, 1
  JAL zero, bb138
bb312:
  ADDI a0, zero, 1
  JAL zero, bb131
bb313:
  ADDI a0, zero, 1
  JAL zero, bb129
bb314:
  ADDI a0, zero, 1
  JAL zero, bb132
bb315:
  ADDI a0, zero, 1
  JAL zero, bb125
bb316:
  ADDI a0, zero, 1
  JAL zero, bb123
bb317:
  ADDI a0, zero, 1
  JAL zero, bb126
bb318:
  ADDI a0, zero, 1
  JAL zero, bb119
bb319:
  ADDI a0, zero, 1
  JAL zero, bb117
bb320:
  ADDI a0, zero, 1
  JAL zero, bb120
bb321:
  ADDI a0, zero, 1
  JAL zero, bb113
bb322:
  ADDI a0, zero, 1
  JAL zero, bb111
bb323:
  ADDI a0, zero, 1
  JAL zero, bb114
bb324:
  ADDI a0, zero, 1
  JAL zero, bb107
bb325:
  ADDI a0, zero, 1
  JAL zero, bb105
bb326:
  ADDI a0, zero, 1
  JAL zero, bb108
bb327:
  ADDI a0, zero, 1
  JAL zero, bb101
bb328:
  ADDI a0, zero, 1
  JAL zero, bb99
bb329:
  ADDI a0, zero, 1
  JAL zero, bb102
bb330:
  ADDI a0, zero, 1
  JAL zero, bb95
bb331:
  ADDI a0, zero, 1
  JAL zero, bb93
bb332:
  ADDI a0, zero, 1
  JAL zero, bb96
bb333:
  ADDI a0, zero, 1
  JAL zero, bb89
bb334:
  ADDI a0, zero, 1
  JAL zero, bb87
bb335:
  ADDI a0, zero, 1
  JAL zero, bb90
bb336:
  ADDI a0, zero, 1
  JAL zero, bb83
bb337:
  ADDI a0, zero, 1
  JAL zero, bb81
bb338:
  ADDI a0, zero, 1
  JAL zero, bb84
bb339:
  ADDI a0, zero, 1
  JAL zero, bb77
bb340:
  ADDI a0, zero, 1
  JAL zero, bb75
bb341:
  ADDI a0, zero, 1
  JAL zero, bb78
bb342:
  ADDI a0, zero, 1
  JAL zero, bb71
bb343:
  ADDI a0, zero, 1
  JAL zero, bb69
bb344:
  ADDI a0, zero, 1
  JAL zero, bb72
bb345:
  ADDI a0, zero, 1
  JAL zero, bb65
bb346:
  ADDI a0, zero, 1
  JAL zero, bb63
bb347:
  ADDI a0, zero, 1
  JAL zero, bb66
bb348:
  ADDI a0, zero, 1
  JAL zero, bb59
bb349:
  ADDI a0, zero, 1
  JAL zero, bb57
bb350:
  ADDI a0, zero, 1
  JAL zero, bb60
bb351:
  ADDI a0, zero, 1
  JAL zero, bb53
bb352:
  ADDI a0, zero, 1
  JAL zero, bb51
bb353:
  ADDI a0, zero, 1
  JAL zero, bb54
bb354:
  ADDI a0, zero, 1
  JAL zero, bb48
bb355:
  ADDI a0, zero, 1
  JAL zero, bb46
bb356:
  JAL zero, bb1
bb357:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 19
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb361
  # implict jump to bb358
bb358:
  ADDI a0, zero, 19
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb359
bb359:
  BNE a0, zero, bb42
  # implict jump to bb360
bb360:
  LA a0, array
  ADDI s1, zero, 1
  SW s1, 76(a0)
  JAL zero, bb42
bb361:
  ADDI a0, zero, 1
  JAL zero, bb359
bb362:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 18
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb368
  # implict jump to bb363
bb363:
  ADDI a0, zero, 18
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb364
bb364:
  BNE a0, zero, bb367
  # implict jump to bb365
bb365:
  LA a0, array
  ADDI s1, zero, 1
  SW s1, 72(a0)
  LA a0, array
  LW a0, 68(a0)
  # implict jump to bb366
bb366:
  SLTU a0, zero, a0
  JAL zero, bb41
bb367:
  ADD a0, zero, zero
  JAL zero, bb366
bb368:
  ADDI a0, zero, 1
  JAL zero, bb364
bb369:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 17
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb375
  # implict jump to bb370
bb370:
  ADDI a0, zero, 17
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb371
bb371:
  BNE a0, zero, bb374
  # implict jump to bb372
bb372:
  LA a0, array
  ADDI s1, zero, 1
  SW s1, 68(a0)
  LA a0, array
  LW a0, 64(a0)
  # implict jump to bb373
bb373:
  SLTU a0, zero, a0
  JAL zero, bb39
bb374:
  ADD a0, zero, zero
  JAL zero, bb373
bb375:
  ADDI a0, zero, 1
  JAL zero, bb371
bb376:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 16
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb382
  # implict jump to bb377
bb377:
  ADDI a0, zero, 16
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb378
bb378:
  BNE a0, zero, bb381
  # implict jump to bb379
bb379:
  LA a0, array
  ADDI s1, zero, 1
  SW s1, 64(a0)
  LA a0, array
  LW a0, 60(a0)
  # implict jump to bb380
bb380:
  SLTU a0, zero, a0
  JAL zero, bb37
bb381:
  ADD a0, zero, zero
  JAL zero, bb380
bb382:
  ADDI a0, zero, 1
  JAL zero, bb378
bb383:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 15
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb389
  # implict jump to bb384
bb384:
  ADDI a0, zero, 15
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb385
bb385:
  BNE a0, zero, bb388
  # implict jump to bb386
bb386:
  LA a0, array
  ADDI s1, zero, 1
  SW s1, 60(a0)
  LA a0, array
  LW a0, 56(a0)
  # implict jump to bb387
bb387:
  SLTU a0, zero, a0
  JAL zero, bb35
bb388:
  ADD a0, zero, zero
  JAL zero, bb387
bb389:
  ADDI a0, zero, 1
  JAL zero, bb385
bb390:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 14
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb396
  # implict jump to bb391
bb391:
  ADDI a0, zero, 14
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb392
bb392:
  BNE a0, zero, bb395
  # implict jump to bb393
bb393:
  LA a0, array
  ADDI s1, zero, 1
  SW s1, 56(a0)
  LA a0, array
  LW a0, 52(a0)
  # implict jump to bb394
bb394:
  SLTU a0, zero, a0
  JAL zero, bb33
bb395:
  ADD a0, zero, zero
  JAL zero, bb394
bb396:
  ADDI a0, zero, 1
  JAL zero, bb392
bb397:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 13
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb403
  # implict jump to bb398
bb398:
  ADDI a0, zero, 13
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb399
bb399:
  BNE a0, zero, bb402
  # implict jump to bb400
bb400:
  LA a0, array
  ADDI s1, zero, 1
  SW s1, 52(a0)
  LA a0, array
  LW a0, 48(a0)
  # implict jump to bb401
bb401:
  SLTU a0, zero, a0
  JAL zero, bb31
bb402:
  ADD a0, zero, zero
  JAL zero, bb401
bb403:
  ADDI a0, zero, 1
  JAL zero, bb399
bb404:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 12
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb410
  # implict jump to bb405
bb405:
  ADDI a0, zero, 12
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb406
bb406:
  BNE a0, zero, bb409
  # implict jump to bb407
bb407:
  LA a0, array
  ADDI s1, zero, 1
  SW s1, 48(a0)
  LA a0, array
  LW a0, 44(a0)
  # implict jump to bb408
bb408:
  SLTU a0, zero, a0
  JAL zero, bb29
bb409:
  ADD a0, zero, zero
  JAL zero, bb408
bb410:
  ADDI a0, zero, 1
  JAL zero, bb406
bb411:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 11
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb417
  # implict jump to bb412
bb412:
  ADDI a0, zero, 11
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb413
bb413:
  BNE a0, zero, bb416
  # implict jump to bb414
bb414:
  LA a0, array
  ADDI s1, zero, 1
  SW s1, 44(a0)
  LA a0, array
  LW a0, 40(a0)
  # implict jump to bb415
bb415:
  SLTU a0, zero, a0
  JAL zero, bb27
bb416:
  ADD a0, zero, zero
  JAL zero, bb415
bb417:
  ADDI a0, zero, 1
  JAL zero, bb413
bb418:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 10
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb424
  # implict jump to bb419
bb419:
  ADDI a0, zero, 10
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb420
bb420:
  BNE a0, zero, bb423
  # implict jump to bb421
bb421:
  LA a0, array
  ADDI s1, zero, 1
  SW s1, 40(a0)
  LA a0, array
  LW a0, 36(a0)
  # implict jump to bb422
bb422:
  SLTU a0, zero, a0
  JAL zero, bb25
bb423:
  ADD a0, zero, zero
  JAL zero, bb422
bb424:
  ADDI a0, zero, 1
  JAL zero, bb420
bb425:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 9
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb431
  # implict jump to bb426
bb426:
  ADDI a0, zero, 9
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb427
bb427:
  BNE a0, zero, bb430
  # implict jump to bb428
bb428:
  LA a0, array
  ADDI s1, zero, 1
  SW s1, 36(a0)
  LA a0, array
  LW a0, 32(a0)
  # implict jump to bb429
bb429:
  SLTU a0, zero, a0
  JAL zero, bb23
bb430:
  ADD a0, zero, zero
  JAL zero, bb429
bb431:
  ADDI a0, zero, 1
  JAL zero, bb427
bb432:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 8
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb438
  # implict jump to bb433
bb433:
  ADDI a0, zero, 8
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb434
bb434:
  BNE a0, zero, bb437
  # implict jump to bb435
bb435:
  LA a0, array
  ADDI s1, zero, 1
  SW s1, 32(a0)
  LA a0, array
  LW a0, 28(a0)
  # implict jump to bb436
bb436:
  SLTU a0, zero, a0
  JAL zero, bb21
bb437:
  ADD a0, zero, zero
  JAL zero, bb436
bb438:
  ADDI a0, zero, 1
  JAL zero, bb434
bb439:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 7
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb445
  # implict jump to bb440
bb440:
  ADDI a0, zero, 7
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb441
bb441:
  BNE a0, zero, bb444
  # implict jump to bb442
bb442:
  LA a0, array
  ADDI s1, zero, 1
  SW s1, 28(a0)
  LA a0, array
  LW a0, 24(a0)
  # implict jump to bb443
bb443:
  SLTU a0, zero, a0
  JAL zero, bb19
bb444:
  ADD a0, zero, zero
  JAL zero, bb443
bb445:
  ADDI a0, zero, 1
  JAL zero, bb441
bb446:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 6
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb452
  # implict jump to bb447
bb447:
  ADDI a0, zero, 6
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb448
bb448:
  BNE a0, zero, bb451
  # implict jump to bb449
bb449:
  LA a0, array
  ADDI s1, zero, 1
  SW s1, 24(a0)
  LA a0, array
  LW a0, 20(a0)
  # implict jump to bb450
bb450:
  SLTU a0, zero, a0
  JAL zero, bb17
bb451:
  ADD a0, zero, zero
  JAL zero, bb450
bb452:
  ADDI a0, zero, 1
  JAL zero, bb448
bb453:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 5
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb459
  # implict jump to bb454
bb454:
  ADDI a0, zero, 5
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb455
bb455:
  BNE a0, zero, bb458
  # implict jump to bb456
bb456:
  LA a0, array
  ADDI s1, zero, 1
  SW s1, 20(a0)
  LA a0, array
  LW a0, 16(a0)
  # implict jump to bb457
bb457:
  SLTU a0, zero, a0
  JAL zero, bb15
bb458:
  ADD a0, zero, zero
  JAL zero, bb457
bb459:
  ADDI a0, zero, 1
  JAL zero, bb455
bb460:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 4
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb466
  # implict jump to bb461
bb461:
  ADDI a0, zero, 4
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb462
bb462:
  BNE a0, zero, bb465
  # implict jump to bb463
bb463:
  LA a0, array
  ADDI s1, zero, 1
  SW s1, 16(a0)
  LA a0, array
  LW a0, 12(a0)
  # implict jump to bb464
bb464:
  SLTU a0, zero, a0
  JAL zero, bb13
bb465:
  ADD a0, zero, zero
  JAL zero, bb464
bb466:
  ADDI a0, zero, 1
  JAL zero, bb462
bb467:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 3
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb473
  # implict jump to bb468
bb468:
  ADDI a0, zero, 3
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb469
bb469:
  BNE a0, zero, bb472
  # implict jump to bb470
bb470:
  LA a0, array
  ADDI s1, zero, 1
  SW s1, 12(a0)
  LA a0, array
  LW a0, 8(a0)
  # implict jump to bb471
bb471:
  SLTU a0, zero, a0
  JAL zero, bb11
bb472:
  ADD a0, zero, zero
  JAL zero, bb471
bb473:
  ADDI a0, zero, 1
  JAL zero, bb469
bb474:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 2
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb480
  # implict jump to bb475
bb475:
  ADDI a0, zero, 2
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb476
bb476:
  BNE a0, zero, bb479
  # implict jump to bb477
bb477:
  LA a0, array
  ADDI s1, zero, 1
  SW s1, 8(a0)
  LA a0, array
  LW a0, 4(a0)
  # implict jump to bb478
bb478:
  SLTU a0, zero, a0
  JAL zero, bb9
bb479:
  ADD a0, zero, zero
  JAL zero, bb478
bb480:
  ADDI a0, zero, 1
  JAL zero, bb476
bb481:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s1, sum
  SW a0, 0(s1)
  ADDI a0, zero, 1
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb487
  # implict jump to bb482
bb482:
  ADDI a0, zero, 1
  SLTI a0, a0, 20
  XORI a0, a0, 1
  # implict jump to bb483
bb483:
  BNE a0, zero, bb486
  # implict jump to bb484
bb484:
  LA a0, array
  ADDI s1, zero, 1
  SW s1, 4(a0)
  LA a0, array
  LW a0, 0(a0)
  # implict jump to bb485
bb485:
  SLTU a0, zero, a0
  JAL zero, bb7
bb486:
  ADD a0, zero, zero
  JAL zero, bb485
bb487:
  ADDI a0, zero, 1
  JAL zero, bb483
bb488:
  ADD a0, zero, zero
  JAL zero, bb5
bb489:
  ADDI a0, zero, 1
  JAL zero, bb3
