.global main
.section .bss
array:
.space 80

.section .data

sum:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -96
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
  ADD s0, zero, zero
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  LA s2, sum
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s3, sum
  SW s2, 0(s3)
  SLT s2, zero, s1
  XORI s2, s2, 1
  BNE s2, zero, bb489
  # implict jump to bb2
bb2:
  SLTI s2, zero, 20
  XORI s2, s2, 1
  # implict jump to bb3
bb3:
  BNE s2, zero, bb488
  # implict jump to bb4
bb4:
  LA s2, array
  ADDI s3, zero, 1
  SW s3, 0(s2)
  ADDI s2, zero, 1
  # implict jump to bb5
bb5:
  BNE s2, zero, bb481
  # implict jump to bb6
bb6:
  ADD s2, zero, zero
  # implict jump to bb7
bb7:
  BNE s2, zero, bb474
  # implict jump to bb8
bb8:
  ADD s2, zero, zero
  # implict jump to bb9
bb9:
  BNE s2, zero, bb467
  # implict jump to bb10
bb10:
  ADD s2, zero, zero
  # implict jump to bb11
bb11:
  BNE s2, zero, bb460
  # implict jump to bb12
bb12:
  ADD s2, zero, zero
  # implict jump to bb13
bb13:
  BNE s2, zero, bb453
  # implict jump to bb14
bb14:
  ADD s2, zero, zero
  # implict jump to bb15
bb15:
  BNE s2, zero, bb446
  # implict jump to bb16
bb16:
  ADD s2, zero, zero
  # implict jump to bb17
bb17:
  BNE s2, zero, bb439
  # implict jump to bb18
bb18:
  ADD s2, zero, zero
  # implict jump to bb19
bb19:
  BNE s2, zero, bb432
  # implict jump to bb20
bb20:
  ADD s2, zero, zero
  # implict jump to bb21
bb21:
  BNE s2, zero, bb425
  # implict jump to bb22
bb22:
  ADD s2, zero, zero
  # implict jump to bb23
bb23:
  BNE s2, zero, bb418
  # implict jump to bb24
bb24:
  ADD s2, zero, zero
  # implict jump to bb25
bb25:
  BNE s2, zero, bb411
  # implict jump to bb26
bb26:
  ADD s2, zero, zero
  # implict jump to bb27
bb27:
  BNE s2, zero, bb404
  # implict jump to bb28
bb28:
  ADD s2, zero, zero
  # implict jump to bb29
bb29:
  BNE s2, zero, bb397
  # implict jump to bb30
bb30:
  ADD s2, zero, zero
  # implict jump to bb31
bb31:
  BNE s2, zero, bb390
  # implict jump to bb32
bb32:
  ADD s2, zero, zero
  # implict jump to bb33
bb33:
  BNE s2, zero, bb383
  # implict jump to bb34
bb34:
  ADD s2, zero, zero
  # implict jump to bb35
bb35:
  BNE s2, zero, bb376
  # implict jump to bb36
bb36:
  ADD s2, zero, zero
  # implict jump to bb37
bb37:
  BNE s2, zero, bb369
  # implict jump to bb38
bb38:
  ADD s2, zero, zero
  # implict jump to bb39
bb39:
  BNE s2, zero, bb362
  # implict jump to bb40
bb40:
  ADD s2, zero, zero
  # implict jump to bb41
bb41:
  BNE s2, zero, bb357
  # implict jump to bb42
bb42:
  ADDIW s1, s1, 1
  SLTI s2, s1, 20
  BNE s2, zero, bb356
  # implict jump to bb43
bb43:
  ADD s2, zero, zero
  # implict jump to bb44
bb44:
  ADD s3, s2, zero
  LA s4, sum
  LW s4, 0(s4)
  ADDIW s4, s4, 2
  LA s5, sum
  SW s4, 0(s5)
  SLT s4, zero, s3
  XORI s4, s4, 1
  BNE s4, zero, bb355
  # implict jump to bb45
bb45:
  SLTI s4, zero, 20
  XORI s4, s4, 1
  # implict jump to bb46
bb46:
  BNE s4, zero, bb354
  # implict jump to bb47
bb47:
  LA s4, array
  SW zero, 0(s4)
  ADD s4, zero, zero
  # implict jump to bb48
bb48:
  BNE s4, zero, bb353
  # implict jump to bb49
bb49:
  LA s4, sum
  LW s4, 0(s4)
  ADDIW s4, s4, 2
  LA s5, sum
  SW s4, 0(s5)
  ADDI s4, zero, 1
  SLT s4, s4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb352
  # implict jump to bb50
bb50:
  ADDI s4, zero, 1
  SLTI s4, s4, 20
  XORI s4, s4, 1
  # implict jump to bb51
bb51:
  BNE s4, zero, bb351
  # implict jump to bb52
bb52:
  LA s4, array
  SW zero, 4(s4)
  LA s4, array
  LW s4, 0(s4)
  # implict jump to bb53
bb53:
  SLTU s4, zero, s4
  # implict jump to bb54
bb54:
  BNE s4, zero, bb350
  # implict jump to bb55
bb55:
  LA s4, sum
  LW s4, 0(s4)
  ADDIW s4, s4, 2
  LA s5, sum
  SW s4, 0(s5)
  ADDI s4, zero, 2
  SLT s4, s4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb349
  # implict jump to bb56
bb56:
  ADDI s4, zero, 2
  SLTI s4, s4, 20
  XORI s4, s4, 1
  # implict jump to bb57
bb57:
  BNE s4, zero, bb348
  # implict jump to bb58
bb58:
  LA s4, array
  SW zero, 8(s4)
  LA s4, array
  LW s4, 4(s4)
  # implict jump to bb59
bb59:
  SLTU s4, zero, s4
  # implict jump to bb60
bb60:
  BNE s4, zero, bb347
  # implict jump to bb61
bb61:
  LA s4, sum
  LW s4, 0(s4)
  ADDIW s4, s4, 2
  LA s5, sum
  SW s4, 0(s5)
  ADDI s4, zero, 3
  SLT s4, s4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb346
  # implict jump to bb62
bb62:
  ADDI s4, zero, 3
  SLTI s4, s4, 20
  XORI s4, s4, 1
  # implict jump to bb63
bb63:
  BNE s4, zero, bb345
  # implict jump to bb64
bb64:
  LA s4, array
  SW zero, 12(s4)
  LA s4, array
  LW s4, 8(s4)
  # implict jump to bb65
bb65:
  SLTU s4, zero, s4
  # implict jump to bb66
bb66:
  BNE s4, zero, bb344
  # implict jump to bb67
bb67:
  LA s4, sum
  LW s4, 0(s4)
  ADDIW s4, s4, 2
  LA s5, sum
  SW s4, 0(s5)
  ADDI s4, zero, 4
  SLT s4, s4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb343
  # implict jump to bb68
bb68:
  ADDI s4, zero, 4
  SLTI s4, s4, 20
  XORI s4, s4, 1
  # implict jump to bb69
bb69:
  BNE s4, zero, bb342
  # implict jump to bb70
bb70:
  LA s4, array
  SW zero, 16(s4)
  LA s4, array
  LW s4, 12(s4)
  # implict jump to bb71
bb71:
  SLTU s4, zero, s4
  # implict jump to bb72
bb72:
  BNE s4, zero, bb341
  # implict jump to bb73
bb73:
  LA s4, sum
  LW s4, 0(s4)
  ADDIW s4, s4, 2
  LA s5, sum
  SW s4, 0(s5)
  ADDI s4, zero, 5
  SLT s4, s4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb340
  # implict jump to bb74
bb74:
  ADDI s4, zero, 5
  SLTI s4, s4, 20
  XORI s4, s4, 1
  # implict jump to bb75
bb75:
  BNE s4, zero, bb339
  # implict jump to bb76
bb76:
  LA s4, array
  SW zero, 20(s4)
  LA s4, array
  LW s4, 16(s4)
  # implict jump to bb77
bb77:
  SLTU s4, zero, s4
  # implict jump to bb78
bb78:
  BNE s4, zero, bb338
  # implict jump to bb79
bb79:
  LA s4, sum
  LW s4, 0(s4)
  ADDIW s4, s4, 2
  LA s5, sum
  SW s4, 0(s5)
  ADDI s4, zero, 6
  SLT s4, s4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb337
  # implict jump to bb80
bb80:
  ADDI s4, zero, 6
  SLTI s4, s4, 20
  XORI s4, s4, 1
  # implict jump to bb81
bb81:
  BNE s4, zero, bb336
  # implict jump to bb82
bb82:
  LA s4, array
  SW zero, 24(s4)
  LA s4, array
  LW s4, 20(s4)
  # implict jump to bb83
bb83:
  SLTU s4, zero, s4
  # implict jump to bb84
bb84:
  BNE s4, zero, bb335
  # implict jump to bb85
bb85:
  LA s4, sum
  LW s4, 0(s4)
  ADDIW s4, s4, 2
  LA s5, sum
  SW s4, 0(s5)
  ADDI s4, zero, 7
  SLT s4, s4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb334
  # implict jump to bb86
bb86:
  ADDI s4, zero, 7
  SLTI s4, s4, 20
  XORI s4, s4, 1
  # implict jump to bb87
bb87:
  BNE s4, zero, bb333
  # implict jump to bb88
bb88:
  LA s4, array
  SW zero, 28(s4)
  LA s4, array
  LW s4, 24(s4)
  # implict jump to bb89
bb89:
  SLTU s4, zero, s4
  # implict jump to bb90
bb90:
  BNE s4, zero, bb332
  # implict jump to bb91
bb91:
  LA s4, sum
  LW s4, 0(s4)
  ADDIW s4, s4, 2
  LA s5, sum
  SW s4, 0(s5)
  ADDI s4, zero, 8
  SLT s4, s4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb331
  # implict jump to bb92
bb92:
  ADDI s4, zero, 8
  SLTI s4, s4, 20
  XORI s4, s4, 1
  # implict jump to bb93
bb93:
  BNE s4, zero, bb330
  # implict jump to bb94
bb94:
  LA s4, array
  SW zero, 32(s4)
  LA s4, array
  LW s4, 28(s4)
  # implict jump to bb95
bb95:
  SLTU s4, zero, s4
  # implict jump to bb96
bb96:
  BNE s4, zero, bb329
  # implict jump to bb97
bb97:
  LA s4, sum
  LW s4, 0(s4)
  ADDIW s4, s4, 2
  LA s5, sum
  SW s4, 0(s5)
  ADDI s4, zero, 9
  SLT s4, s4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb328
  # implict jump to bb98
bb98:
  ADDI s4, zero, 9
  SLTI s4, s4, 20
  XORI s4, s4, 1
  # implict jump to bb99
bb99:
  BNE s4, zero, bb327
  # implict jump to bb100
bb100:
  LA s4, array
  SW zero, 36(s4)
  LA s4, array
  LW s4, 32(s4)
  # implict jump to bb101
bb101:
  SLTU s4, zero, s4
  # implict jump to bb102
bb102:
  BNE s4, zero, bb326
  # implict jump to bb103
bb103:
  LA s4, sum
  LW s4, 0(s4)
  ADDIW s4, s4, 2
  LA s5, sum
  SW s4, 0(s5)
  ADDI s4, zero, 10
  SLT s4, s4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb325
  # implict jump to bb104
bb104:
  ADDI s4, zero, 10
  SLTI s4, s4, 20
  XORI s4, s4, 1
  # implict jump to bb105
bb105:
  BNE s4, zero, bb324
  # implict jump to bb106
bb106:
  LA s4, array
  SW zero, 40(s4)
  LA s4, array
  LW s4, 36(s4)
  # implict jump to bb107
bb107:
  SLTU s4, zero, s4
  # implict jump to bb108
bb108:
  BNE s4, zero, bb323
  # implict jump to bb109
bb109:
  LA s4, sum
  LW s4, 0(s4)
  ADDIW s4, s4, 2
  LA s5, sum
  SW s4, 0(s5)
  ADDI s4, zero, 11
  SLT s4, s4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb322
  # implict jump to bb110
bb110:
  ADDI s4, zero, 11
  SLTI s4, s4, 20
  XORI s4, s4, 1
  # implict jump to bb111
bb111:
  BNE s4, zero, bb321
  # implict jump to bb112
bb112:
  LA s4, array
  SW zero, 44(s4)
  LA s4, array
  LW s4, 40(s4)
  # implict jump to bb113
bb113:
  SLTU s4, zero, s4
  # implict jump to bb114
bb114:
  BNE s4, zero, bb320
  # implict jump to bb115
bb115:
  LA s4, sum
  LW s4, 0(s4)
  ADDIW s4, s4, 2
  LA s5, sum
  SW s4, 0(s5)
  ADDI s4, zero, 12
  SLT s4, s4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb319
  # implict jump to bb116
bb116:
  ADDI s4, zero, 12
  SLTI s4, s4, 20
  XORI s4, s4, 1
  # implict jump to bb117
bb117:
  BNE s4, zero, bb318
  # implict jump to bb118
bb118:
  LA s4, array
  SW zero, 48(s4)
  LA s4, array
  LW s4, 44(s4)
  # implict jump to bb119
bb119:
  SLTU s4, zero, s4
  # implict jump to bb120
bb120:
  BNE s4, zero, bb317
  # implict jump to bb121
bb121:
  LA s4, sum
  LW s4, 0(s4)
  ADDIW s4, s4, 2
  LA s5, sum
  SW s4, 0(s5)
  ADDI s4, zero, 13
  SLT s4, s4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb316
  # implict jump to bb122
bb122:
  ADDI s4, zero, 13
  SLTI s4, s4, 20
  XORI s4, s4, 1
  # implict jump to bb123
bb123:
  BNE s4, zero, bb315
  # implict jump to bb124
bb124:
  LA s4, array
  SW zero, 52(s4)
  LA s4, array
  LW s4, 48(s4)
  # implict jump to bb125
bb125:
  SLTU s4, zero, s4
  # implict jump to bb126
bb126:
  BNE s4, zero, bb314
  # implict jump to bb127
bb127:
  LA s4, sum
  LW s4, 0(s4)
  ADDIW s4, s4, 2
  LA s5, sum
  SW s4, 0(s5)
  ADDI s4, zero, 14
  SLT s4, s4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb313
  # implict jump to bb128
bb128:
  ADDI s4, zero, 14
  SLTI s4, s4, 20
  XORI s4, s4, 1
  # implict jump to bb129
bb129:
  BNE s4, zero, bb312
  # implict jump to bb130
bb130:
  LA s4, array
  SW zero, 56(s4)
  LA s4, array
  LW s4, 52(s4)
  # implict jump to bb131
bb131:
  SLTU s4, zero, s4
  # implict jump to bb132
bb132:
  BNE s4, zero, bb311
  # implict jump to bb133
bb133:
  LA s4, sum
  LW s4, 0(s4)
  ADDIW s4, s4, 2
  LA s5, sum
  SW s4, 0(s5)
  ADDI s4, zero, 15
  SLT s4, s4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb310
  # implict jump to bb134
bb134:
  ADDI s4, zero, 15
  SLTI s4, s4, 20
  XORI s4, s4, 1
  # implict jump to bb135
bb135:
  BNE s4, zero, bb309
  # implict jump to bb136
bb136:
  LA s4, array
  SW zero, 60(s4)
  LA s4, array
  LW s4, 56(s4)
  # implict jump to bb137
bb137:
  SLTU s4, zero, s4
  # implict jump to bb138
bb138:
  BNE s4, zero, bb308
  # implict jump to bb139
bb139:
  LA s4, sum
  LW s4, 0(s4)
  ADDIW s4, s4, 2
  LA s5, sum
  SW s4, 0(s5)
  ADDI s4, zero, 16
  SLT s4, s4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb307
  # implict jump to bb140
bb140:
  ADDI s4, zero, 16
  SLTI s4, s4, 20
  XORI s4, s4, 1
  # implict jump to bb141
bb141:
  BNE s4, zero, bb306
  # implict jump to bb142
bb142:
  LA s4, array
  SW zero, 64(s4)
  LA s4, array
  LW s4, 60(s4)
  # implict jump to bb143
bb143:
  SLTU s4, zero, s4
  # implict jump to bb144
bb144:
  BNE s4, zero, bb305
  # implict jump to bb145
bb145:
  LA s4, sum
  LW s4, 0(s4)
  ADDIW s4, s4, 2
  LA s5, sum
  SW s4, 0(s5)
  ADDI s4, zero, 17
  SLT s4, s4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb304
  # implict jump to bb146
bb146:
  ADDI s4, zero, 17
  SLTI s4, s4, 20
  XORI s4, s4, 1
  # implict jump to bb147
bb147:
  BNE s4, zero, bb303
  # implict jump to bb148
bb148:
  LA s4, array
  SW zero, 68(s4)
  LA s4, array
  LW s4, 64(s4)
  # implict jump to bb149
bb149:
  SLTU s4, zero, s4
  # implict jump to bb150
bb150:
  BNE s4, zero, bb302
  # implict jump to bb151
bb151:
  LA s4, sum
  LW s4, 0(s4)
  ADDIW s4, s4, 2
  LA s5, sum
  SW s4, 0(s5)
  ADDI s4, zero, 18
  SLT s4, s4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb301
  # implict jump to bb152
bb152:
  ADDI s4, zero, 18
  SLTI s4, s4, 20
  XORI s4, s4, 1
  # implict jump to bb153
bb153:
  BNE s4, zero, bb300
  # implict jump to bb154
bb154:
  LA s4, array
  SW zero, 72(s4)
  LA s4, array
  LW s4, 68(s4)
  # implict jump to bb155
bb155:
  SLTU s4, zero, s4
  # implict jump to bb156
bb156:
  BNE s4, zero, bb161
  # implict jump to bb157
bb157:
  LA s4, sum
  LW s4, 0(s4)
  ADDIW s4, s4, 2
  LA s5, sum
  SW s4, 0(s5)
  ADDI s4, zero, 19
  SLT s4, s4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb299
  # implict jump to bb158
bb158:
  ADDI s4, zero, 19
  SLTI s4, s4, 20
  XORI s4, s4, 1
  # implict jump to bb159
bb159:
  BNE s4, zero, bb161
  # implict jump to bb160
bb160:
  LA s4, array
  SW zero, 76(s4)
  # implict jump to bb161
bb161:
  ADDIW s3, s3, 1
  SLTI s4, s3, 20
  BNE s4, zero, bb298
  # implict jump to bb162
bb162:
  ADDI s4, zero, 1
  # implict jump to bb163
bb163:
  ADD s5, s4, zero
  SLTI s6, s5, 20
  BNE s6, zero, bb289
  # implict jump to bb164
bb164:
  ADD s6, zero, zero
  # implict jump to bb165
bb165:
  BNE s6, zero, bb288
  # implict jump to bb166
bb166:
  LA s6, sum
  LW s6, 0(s6)
  ADDIW s6, s6, 3
  LA s7, sum
  SW s6, 0(s7)
  SLTI s6, zero, 20
  XORI s6, s6, 1
  BNE s6, zero, bb287
  # implict jump to bb167
bb167:
  LA s7, array
  LW s7, 0(s7)
  # implict jump to bb168
bb168:
  BNE s7, zero, bb283
  # implict jump to bb169
bb169:
  ADD s7, zero, zero
  # implict jump to bb170
bb170:
  BNE s7, zero, bb282
  # implict jump to bb171
bb171:
  LA s7, sum
  LW s7, 0(s7)
  ADDIW s7, s7, 3
  LA s8, sum
  SW s7, 0(s8)
  ADDI s7, zero, 2
  SLTI s7, s7, 20
  XORI s7, s7, 1
  BNE s7, zero, bb281
  # implict jump to bb172
bb172:
  LA s7, array
  LW s7, 8(s7)
  # implict jump to bb173
bb173:
  SLTU s7, zero, s7
  XORI s7, s7, 1
  SLTU s7, zero, s7
  # implict jump to bb174
bb174:
  BNE s7, zero, bb176
  # implict jump to bb175
bb175:
  LA s7, sum
  LW s7, 0(s7)
  ADDIW s7, s7, 3
  LA s8, sum
  SW s7, 0(s8)
  # implict jump to bb176
bb176:
  LA s7, sum
  LW s7, 0(s7)
  ADDIW s7, s7, 3
  LA s8, sum
  SW s7, 0(s8)
  ADDI s7, zero, 4
  SLTI s7, s7, 20
  XORI s7, s7, 1
  BNE s7, zero, bb280
  # implict jump to bb177
bb177:
  LA s8, array
  LW s8, 16(s8)
  # implict jump to bb178
bb178:
  SLTU s8, zero, s8
  XORI s8, s8, 1
  BNE s8, zero, bb279
  # implict jump to bb179
bb179:
  LA s8, sum
  LW s8, 0(s8)
  ADDIW s8, s8, 3
  LA s9, sum
  SW s8, 0(s9)
  ADDI s8, zero, 5
  SLTI s8, s8, 20
  XORI s8, s8, 1
  BNE s8, zero, bb278
  # implict jump to bb180
bb180:
  LA s8, array
  LW s8, 20(s8)
  # implict jump to bb181
bb181:
  BNE s8, zero, bb274
  # implict jump to bb182
bb182:
  ADD s8, zero, zero
  # implict jump to bb183
bb183:
  BNE s8, zero, bb270
  # implict jump to bb184
bb184:
  ADD s8, zero, zero
  # implict jump to bb185
bb185:
  # implict jump to bb186
bb186:
  BNE s8, zero, bb188
  # implict jump to bb187
bb187:
  LA s8, sum
  LW s8, 0(s8)
  ADDIW s8, s8, 3
  LA s9, sum
  SW s8, 0(s9)
  # implict jump to bb188
bb188:
  LA s8, sum
  LW s8, 0(s8)
  ADDIW s8, s8, 3
  LA s9, sum
  SW s8, 0(s9)
  ADDI s8, zero, 9
  SLTI s8, s8, 20
  XORI s8, s8, 1
  BNE s8, zero, bb269
  # implict jump to bb189
bb189:
  LA s8, array
  LW s8, 36(s8)
  # implict jump to bb190
bb190:
  BNE s8, zero, bb265
  # implict jump to bb191
bb191:
  ADD s8, zero, zero
  # implict jump to bb192
bb192:
  BNE s8, zero, bb264
  # implict jump to bb193
bb193:
  LA s8, sum
  LW s8, 0(s8)
  ADDIW s8, s8, 3
  LA s9, sum
  SW s8, 0(s9)
  ADDI s8, zero, 11
  SLTI s8, s8, 20
  XORI s8, s8, 1
  BNE s8, zero, bb263
  # implict jump to bb194
bb194:
  LA s8, array
  LW s8, 44(s8)
  # implict jump to bb195
bb195:
  SLTU s8, zero, s8
  XORI s8, s8, 1
  SLTU s8, zero, s8
  # implict jump to bb196
bb196:
  BNE s8, zero, bb262
  # implict jump to bb197
bb197:
  LA s8, sum
  LW s8, 0(s8)
  ADDIW s8, s8, 3
  LA s9, sum
  SW s8, 0(s9)
  ADDI s8, zero, 12
  SLTI s8, s8, 20
  XORI s8, s8, 1
  BNE s8, zero, bb261
  # implict jump to bb198
bb198:
  LA s8, array
  LW s8, 48(s8)
  # implict jump to bb199
bb199:
  SLTU s8, zero, s8
  XORI s8, s8, 1
  SLTU s8, zero, s8
  # implict jump to bb200
bb200:
  BNE s8, zero, bb260
  # implict jump to bb201
bb201:
  LA s8, sum
  LW s8, 0(s8)
  ADDIW s8, s8, 3
  LA s9, sum
  SW s8, 0(s9)
  ADDI s8, zero, 13
  SLTI s8, s8, 20
  XORI s8, s8, 1
  BNE s8, zero, bb259
  # implict jump to bb202
bb202:
  LA s8, array
  LW s8, 52(s8)
  # implict jump to bb203
bb203:
  SLTU s8, zero, s8
  XORI s8, s8, 1
  SLTU s8, zero, s8
  # implict jump to bb204
bb204:
  BNE s8, zero, bb208
  # implict jump to bb205
bb205:
  LA s8, sum
  LW s8, 0(s8)
  ADDIW s8, s8, 3
  LA s9, sum
  SW s8, 0(s9)
  ADDI s8, zero, 14
  SLTI s8, s8, 20
  XORI s8, s8, 1
  BNE s8, zero, bb258
  # implict jump to bb206
bb206:
  LA s8, array
  LW s8, 56(s8)
  # implict jump to bb207
bb207:
  BNE s8, zero, bb257
  # implict jump to bb208
bb208:
  LA s8, sum
  LW s8, 0(s8)
  ADDIW s8, s8, 3
  LA s9, sum
  SW s8, 0(s9)
  BNE s6, zero, bb256
  # implict jump to bb209
bb209:
  LA s6, array
  LW s6, 0(s6)
  # implict jump to bb210
bb210:
  BNE s6, zero, bb252
  # implict jump to bb211
bb211:
  ADD s6, zero, zero
  # implict jump to bb212
bb212:
  BNE s6, zero, bb248
  # implict jump to bb213
bb213:
  ADD s6, zero, zero
  # implict jump to bb214
bb214:
  BNE s6, zero, bb244
  # implict jump to bb215
bb215:
  ADD s6, zero, zero
  # implict jump to bb216
bb216:
  BNE s6, zero, bb243
  # implict jump to bb217
bb217:
  LA s6, sum
  LW s6, 0(s6)
  ADDIW s6, s6, 3
  LA s7, sum
  SW s6, 0(s7)
  ADDI s6, zero, 5
  SLTI s6, s6, 20
  XORI s6, s6, 1
  BNE s6, zero, bb242
  # implict jump to bb218
bb218:
  LA s6, array
  LW s6, 20(s6)
  # implict jump to bb219
bb219:
  SLTU s6, zero, s6
  # implict jump to bb220
bb220:
  BNE s6, zero, bb241
  # implict jump to bb221
bb221:
  LA s6, sum
  LW s6, 0(s6)
  ADDIW s6, s6, 3
  LA s7, sum
  SW s6, 0(s7)
  ADDI s6, zero, 6
  SLTI s6, s6, 20
  XORI s6, s6, 1
  BNE s6, zero, bb240
  # implict jump to bb222
bb222:
  LA s6, array
  LW s6, 24(s6)
  # implict jump to bb223
bb223:
  BNE s6, zero, bb236
  # implict jump to bb224
bb224:
  ADD s6, zero, zero
  # implict jump to bb225
bb225:
  # implict jump to bb226
bb226:
  BNE s6, zero, bb235
  # implict jump to bb227
bb227:
  LA s6, sum
  LW s6, 0(s6)
  ADDIW s6, s6, 3
  LA s7, sum
  SW s6, 0(s7)
  ADDI s6, zero, 8
  SLTI s6, s6, 20
  XORI s6, s6, 1
  BNE s6, zero, bb234
  # implict jump to bb228
bb228:
  LA s6, array
  LW s6, 32(s6)
  # implict jump to bb229
bb229:
  SLTU s6, zero, s6
  # implict jump to bb230
bb230:
  BNE s6, zero, bb233
  # implict jump to bb231
bb231:
  ADD s6, zero, zero
  # implict jump to bb232
bb232:
  LA s7, sum
  LW s7, 0(s7)
  ADDW s6, s7, s6
  ADD a0, s6, zero
  CALL putint
  ADD a0, zero, zero
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
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb233:
  ADDI s6, zero, 1
  JAL zero, bb232
bb234:
  ADD s6, zero, zero
  JAL zero, bb229
bb235:
  ADDI s6, zero, 1
  JAL zero, bb230
bb236:
  LA s7, sum
  LW s7, 0(s7)
  ADDIW s7, s7, 3
  LA s8, sum
  SW s7, 0(s8)
  ADDI s7, zero, 7
  SLTI s7, s7, 20
  XORI s7, s7, 1
  BNE s7, zero, bb239
  # implict jump to bb237
bb237:
  LA s7, array
  LW s7, 28(s7)
  # implict jump to bb238
bb238:
  SLTU s7, zero, s7
  XORI s7, s7, 1
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb225
bb239:
  ADD s7, zero, zero
  JAL zero, bb238
bb240:
  ADD s6, zero, zero
  JAL zero, bb223
bb241:
  ADDI s6, zero, 1
  JAL zero, bb226
bb242:
  ADD s6, zero, zero
  JAL zero, bb219
bb243:
  ADDI s6, zero, 1
  JAL zero, bb220
bb244:
  LA s8, sum
  LW s8, 0(s8)
  ADDIW s8, s8, 3
  LA s9, sum
  SW s8, 0(s9)
  BNE s7, zero, bb247
  # implict jump to bb245
bb245:
  LA s7, array
  LW s7, 16(s7)
  # implict jump to bb246
bb246:
  SLTU s7, zero, s7
  XORI s7, s7, 1
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb216
bb247:
  ADD s7, zero, zero
  JAL zero, bb246
bb248:
  LA s8, sum
  LW s8, 0(s8)
  ADDIW s8, s8, 3
  LA s9, sum
  SW s8, 0(s9)
  ADDI s8, zero, 3
  SLTI s8, s8, 20
  XORI s8, s8, 1
  BNE s8, zero, bb251
  # implict jump to bb249
bb249:
  LA s8, array
  LW s8, 12(s8)
  # implict jump to bb250
bb250:
  SLTU s8, zero, s8
  XORI s8, s8, 1
  SLTU s8, zero, s8
  ADD s6, s8, zero
  JAL zero, bb214
bb251:
  ADD s8, zero, zero
  JAL zero, bb250
bb252:
  LA s8, sum
  LW s8, 0(s8)
  ADDIW s8, s8, 3
  LA s9, sum
  SW s8, 0(s9)
  ADDI s8, zero, 2
  SLTI s8, s8, 20
  XORI s8, s8, 1
  BNE s8, zero, bb255
  # implict jump to bb253
bb253:
  LA s8, array
  LW s8, 8(s8)
  # implict jump to bb254
bb254:
  SLTU s8, zero, s8
  ADD s6, s8, zero
  JAL zero, bb212
bb255:
  ADD s8, zero, zero
  JAL zero, bb254
bb256:
  ADD s6, zero, zero
  JAL zero, bb210
bb257:
  LA s8, sum
  LW s8, 0(s8)
  ADDIW s8, s8, 3
  LA s9, sum
  SW s8, 0(s9)
  JAL zero, bb208
bb258:
  ADD s8, zero, zero
  JAL zero, bb207
bb259:
  ADD s8, zero, zero
  JAL zero, bb203
bb260:
  ADDI s8, zero, 1
  JAL zero, bb204
bb261:
  ADD s8, zero, zero
  JAL zero, bb199
bb262:
  ADDI s8, zero, 1
  JAL zero, bb200
bb263:
  ADD s8, zero, zero
  JAL zero, bb195
bb264:
  ADDI s8, zero, 1
  JAL zero, bb196
bb265:
  LA s9, sum
  LW s9, 0(s9)
  ADDIW s9, s9, 3
  LA s10, sum
  SW s9, 0(s10)
  ADDI s9, zero, 10
  SLTI s9, s9, 20
  XORI s9, s9, 1
  BNE s9, zero, bb268
  # implict jump to bb266
bb266:
  LA s9, array
  LW s9, 40(s9)
  # implict jump to bb267
bb267:
  SLTU s9, zero, s9
  XORI s9, s9, 1
  SLTU s9, zero, s9
  ADD s8, s9, zero
  JAL zero, bb192
bb268:
  ADD s9, zero, zero
  JAL zero, bb267
bb269:
  ADD s8, zero, zero
  JAL zero, bb190
bb270:
  LA s9, sum
  LW s9, 0(s9)
  ADDIW s9, s9, 3
  LA s10, sum
  SW s9, 0(s10)
  ADDI s9, zero, 7
  SLTI s9, s9, 20
  XORI s9, s9, 1
  BNE s9, zero, bb273
  # implict jump to bb271
bb271:
  LA s9, array
  LW s9, 28(s9)
  # implict jump to bb272
bb272:
  SLTU s9, zero, s9
  ADD s8, s9, zero
  JAL zero, bb185
bb273:
  ADD s9, zero, zero
  JAL zero, bb272
bb274:
  LA s9, sum
  LW s9, 0(s9)
  ADDIW s9, s9, 3
  LA s10, sum
  SW s9, 0(s10)
  ADDI s9, zero, 6
  SLTI s9, s9, 20
  XORI s9, s9, 1
  BNE s9, zero, bb277
  # implict jump to bb275
bb275:
  LA s9, array
  LW s9, 24(s9)
  # implict jump to bb276
bb276:
  SLTU s9, zero, s9
  XORI s9, s9, 1
  SLTU s9, zero, s9
  ADD s8, s9, zero
  JAL zero, bb183
bb277:
  ADD s9, zero, zero
  JAL zero, bb276
bb278:
  ADD s8, zero, zero
  JAL zero, bb181
bb279:
  ADDI s8, zero, 1
  JAL zero, bb186
bb280:
  ADD s8, zero, zero
  JAL zero, bb178
bb281:
  ADD s7, zero, zero
  JAL zero, bb173
bb282:
  ADDI s7, zero, 1
  JAL zero, bb174
bb283:
  LA s8, sum
  LW s8, 0(s8)
  ADDIW s8, s8, 3
  LA s9, sum
  SW s8, 0(s9)
  ADDI s8, zero, 1
  SLTI s8, s8, 20
  XORI s8, s8, 1
  BNE s8, zero, bb286
  # implict jump to bb284
bb284:
  LA s8, array
  LW s8, 4(s8)
  # implict jump to bb285
bb285:
  SLTU s8, zero, s8
  ADD s7, s8, zero
  JAL zero, bb170
bb286:
  ADD s8, zero, zero
  JAL zero, bb285
bb287:
  ADD s7, zero, zero
  JAL zero, bb168
bb288:
  ADDIW s5, s5, 1
  ADD s4, s5, zero
  JAL zero, bb163
bb289:
  ADDI s7, zero, 1
  SUBW s7, s5, s7
  LA s8, sum
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s9, sum
  SW s8, 0(s9)
  SLT s8, s7, s5
  XORI s8, s8, 1
  BNE s8, zero, bb297
  # implict jump to bb290
bb290:
  SLTI s8, s7, 20
  XORI s8, s8, 1
  # implict jump to bb291
bb291:
  BNE s8, zero, bb296
  # implict jump to bb292
bb292:
  SLLIW s8, s7, 2
  LA s9, array
  ADD s8, s9, s8
  ADDI s9, zero, 1
  SW s9, 0(s8)
  SLTIU s7, s7, 1
  BNE s7, zero, bb295
  # implict jump to bb293
bb293:
  ADDI s7, zero, 2
  SUBW s7, s5, s7
  SLLIW s7, s7, 2
  LA s8, array
  ADD s7, s8, s7
  LW s7, 0(s7)
  # implict jump to bb294
bb294:
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb165
bb295:
  LA s8, array
  LW s8, 0(s8)
  ADD s7, s8, zero
  JAL zero, bb294
bb296:
  ADD s7, zero, zero
  JAL zero, bb294
bb297:
  ADDI s8, zero, 1
  JAL zero, bb291
bb298:
  ADD s2, s3, zero
  JAL zero, bb44
bb299:
  ADDI s4, zero, 1
  JAL zero, bb159
bb300:
  ADDI s4, zero, 1
  JAL zero, bb155
bb301:
  ADDI s4, zero, 1
  JAL zero, bb153
bb302:
  ADDI s4, zero, 1
  JAL zero, bb156
bb303:
  ADDI s4, zero, 1
  JAL zero, bb149
bb304:
  ADDI s4, zero, 1
  JAL zero, bb147
bb305:
  ADDI s4, zero, 1
  JAL zero, bb150
bb306:
  ADDI s4, zero, 1
  JAL zero, bb143
bb307:
  ADDI s4, zero, 1
  JAL zero, bb141
bb308:
  ADDI s4, zero, 1
  JAL zero, bb144
bb309:
  ADDI s4, zero, 1
  JAL zero, bb137
bb310:
  ADDI s4, zero, 1
  JAL zero, bb135
bb311:
  ADDI s4, zero, 1
  JAL zero, bb138
bb312:
  ADDI s4, zero, 1
  JAL zero, bb131
bb313:
  ADDI s4, zero, 1
  JAL zero, bb129
bb314:
  ADDI s4, zero, 1
  JAL zero, bb132
bb315:
  ADDI s4, zero, 1
  JAL zero, bb125
bb316:
  ADDI s4, zero, 1
  JAL zero, bb123
bb317:
  ADDI s4, zero, 1
  JAL zero, bb126
bb318:
  ADDI s4, zero, 1
  JAL zero, bb119
bb319:
  ADDI s4, zero, 1
  JAL zero, bb117
bb320:
  ADDI s4, zero, 1
  JAL zero, bb120
bb321:
  ADDI s4, zero, 1
  JAL zero, bb113
bb322:
  ADDI s4, zero, 1
  JAL zero, bb111
bb323:
  ADDI s4, zero, 1
  JAL zero, bb114
bb324:
  ADDI s4, zero, 1
  JAL zero, bb107
bb325:
  ADDI s4, zero, 1
  JAL zero, bb105
bb326:
  ADDI s4, zero, 1
  JAL zero, bb108
bb327:
  ADDI s4, zero, 1
  JAL zero, bb101
bb328:
  ADDI s4, zero, 1
  JAL zero, bb99
bb329:
  ADDI s4, zero, 1
  JAL zero, bb102
bb330:
  ADDI s4, zero, 1
  JAL zero, bb95
bb331:
  ADDI s4, zero, 1
  JAL zero, bb93
bb332:
  ADDI s4, zero, 1
  JAL zero, bb96
bb333:
  ADDI s4, zero, 1
  JAL zero, bb89
bb334:
  ADDI s4, zero, 1
  JAL zero, bb87
bb335:
  ADDI s4, zero, 1
  JAL zero, bb90
bb336:
  ADDI s4, zero, 1
  JAL zero, bb83
bb337:
  ADDI s4, zero, 1
  JAL zero, bb81
bb338:
  ADDI s4, zero, 1
  JAL zero, bb84
bb339:
  ADDI s4, zero, 1
  JAL zero, bb77
bb340:
  ADDI s4, zero, 1
  JAL zero, bb75
bb341:
  ADDI s4, zero, 1
  JAL zero, bb78
bb342:
  ADDI s4, zero, 1
  JAL zero, bb71
bb343:
  ADDI s4, zero, 1
  JAL zero, bb69
bb344:
  ADDI s4, zero, 1
  JAL zero, bb72
bb345:
  ADDI s4, zero, 1
  JAL zero, bb65
bb346:
  ADDI s4, zero, 1
  JAL zero, bb63
bb347:
  ADDI s4, zero, 1
  JAL zero, bb66
bb348:
  ADDI s4, zero, 1
  JAL zero, bb59
bb349:
  ADDI s4, zero, 1
  JAL zero, bb57
bb350:
  ADDI s4, zero, 1
  JAL zero, bb60
bb351:
  ADDI s4, zero, 1
  JAL zero, bb53
bb352:
  ADDI s4, zero, 1
  JAL zero, bb51
bb353:
  ADDI s4, zero, 1
  JAL zero, bb54
bb354:
  ADDI s4, zero, 1
  JAL zero, bb48
bb355:
  ADDI s4, zero, 1
  JAL zero, bb46
bb356:
  ADD s0, s1, zero
  JAL zero, bb1
bb357:
  LA s2, sum
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s3, sum
  SW s2, 0(s3)
  ADDI s2, zero, 19
  SLT s2, s2, s1
  XORI s2, s2, 1
  BNE s2, zero, bb361
  # implict jump to bb358
bb358:
  ADDI s2, zero, 19
  SLTI s2, s2, 20
  XORI s2, s2, 1
  # implict jump to bb359
bb359:
  BNE s2, zero, bb42
  # implict jump to bb360
bb360:
  LA s2, array
  ADDI s3, zero, 1
  SW s3, 76(s2)
  JAL zero, bb42
bb361:
  ADDI s2, zero, 1
  JAL zero, bb359
bb362:
  LA s3, sum
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s4, sum
  SW s3, 0(s4)
  ADDI s3, zero, 18
  SLT s3, s3, s1
  XORI s3, s3, 1
  BNE s3, zero, bb368
  # implict jump to bb363
bb363:
  ADDI s3, zero, 18
  SLTI s3, s3, 20
  XORI s3, s3, 1
  # implict jump to bb364
bb364:
  BNE s3, zero, bb367
  # implict jump to bb365
bb365:
  LA s3, array
  ADDI s4, zero, 1
  SW s4, 72(s3)
  LA s3, array
  LW s3, 68(s3)
  # implict jump to bb366
bb366:
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb41
bb367:
  ADD s3, zero, zero
  JAL zero, bb366
bb368:
  ADDI s3, zero, 1
  JAL zero, bb364
bb369:
  LA s3, sum
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s4, sum
  SW s3, 0(s4)
  ADDI s3, zero, 17
  SLT s3, s3, s1
  XORI s3, s3, 1
  BNE s3, zero, bb375
  # implict jump to bb370
bb370:
  ADDI s3, zero, 17
  SLTI s3, s3, 20
  XORI s3, s3, 1
  # implict jump to bb371
bb371:
  BNE s3, zero, bb374
  # implict jump to bb372
bb372:
  LA s3, array
  ADDI s4, zero, 1
  SW s4, 68(s3)
  LA s3, array
  LW s3, 64(s3)
  # implict jump to bb373
bb373:
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb39
bb374:
  ADD s3, zero, zero
  JAL zero, bb373
bb375:
  ADDI s3, zero, 1
  JAL zero, bb371
bb376:
  LA s3, sum
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s4, sum
  SW s3, 0(s4)
  ADDI s3, zero, 16
  SLT s3, s3, s1
  XORI s3, s3, 1
  BNE s3, zero, bb382
  # implict jump to bb377
bb377:
  ADDI s3, zero, 16
  SLTI s3, s3, 20
  XORI s3, s3, 1
  # implict jump to bb378
bb378:
  BNE s3, zero, bb381
  # implict jump to bb379
bb379:
  LA s3, array
  ADDI s4, zero, 1
  SW s4, 64(s3)
  LA s3, array
  LW s3, 60(s3)
  # implict jump to bb380
bb380:
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb37
bb381:
  ADD s3, zero, zero
  JAL zero, bb380
bb382:
  ADDI s3, zero, 1
  JAL zero, bb378
bb383:
  LA s3, sum
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s4, sum
  SW s3, 0(s4)
  ADDI s3, zero, 15
  SLT s3, s3, s1
  XORI s3, s3, 1
  BNE s3, zero, bb389
  # implict jump to bb384
bb384:
  ADDI s3, zero, 15
  SLTI s3, s3, 20
  XORI s3, s3, 1
  # implict jump to bb385
bb385:
  BNE s3, zero, bb388
  # implict jump to bb386
bb386:
  LA s3, array
  ADDI s4, zero, 1
  SW s4, 60(s3)
  LA s3, array
  LW s3, 56(s3)
  # implict jump to bb387
bb387:
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb35
bb388:
  ADD s3, zero, zero
  JAL zero, bb387
bb389:
  ADDI s3, zero, 1
  JAL zero, bb385
bb390:
  LA s3, sum
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s4, sum
  SW s3, 0(s4)
  ADDI s3, zero, 14
  SLT s3, s3, s1
  XORI s3, s3, 1
  BNE s3, zero, bb396
  # implict jump to bb391
bb391:
  ADDI s3, zero, 14
  SLTI s3, s3, 20
  XORI s3, s3, 1
  # implict jump to bb392
bb392:
  BNE s3, zero, bb395
  # implict jump to bb393
bb393:
  LA s3, array
  ADDI s4, zero, 1
  SW s4, 56(s3)
  LA s3, array
  LW s3, 52(s3)
  # implict jump to bb394
bb394:
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb33
bb395:
  ADD s3, zero, zero
  JAL zero, bb394
bb396:
  ADDI s3, zero, 1
  JAL zero, bb392
bb397:
  LA s3, sum
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s4, sum
  SW s3, 0(s4)
  ADDI s3, zero, 13
  SLT s3, s3, s1
  XORI s3, s3, 1
  BNE s3, zero, bb403
  # implict jump to bb398
bb398:
  ADDI s3, zero, 13
  SLTI s3, s3, 20
  XORI s3, s3, 1
  # implict jump to bb399
bb399:
  BNE s3, zero, bb402
  # implict jump to bb400
bb400:
  LA s3, array
  ADDI s4, zero, 1
  SW s4, 52(s3)
  LA s3, array
  LW s3, 48(s3)
  # implict jump to bb401
bb401:
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb31
bb402:
  ADD s3, zero, zero
  JAL zero, bb401
bb403:
  ADDI s3, zero, 1
  JAL zero, bb399
bb404:
  LA s3, sum
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s4, sum
  SW s3, 0(s4)
  ADDI s3, zero, 12
  SLT s3, s3, s1
  XORI s3, s3, 1
  BNE s3, zero, bb410
  # implict jump to bb405
bb405:
  ADDI s3, zero, 12
  SLTI s3, s3, 20
  XORI s3, s3, 1
  # implict jump to bb406
bb406:
  BNE s3, zero, bb409
  # implict jump to bb407
bb407:
  LA s3, array
  ADDI s4, zero, 1
  SW s4, 48(s3)
  LA s3, array
  LW s3, 44(s3)
  # implict jump to bb408
bb408:
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb29
bb409:
  ADD s3, zero, zero
  JAL zero, bb408
bb410:
  ADDI s3, zero, 1
  JAL zero, bb406
bb411:
  LA s3, sum
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s4, sum
  SW s3, 0(s4)
  ADDI s3, zero, 11
  SLT s3, s3, s1
  XORI s3, s3, 1
  BNE s3, zero, bb417
  # implict jump to bb412
bb412:
  ADDI s3, zero, 11
  SLTI s3, s3, 20
  XORI s3, s3, 1
  # implict jump to bb413
bb413:
  BNE s3, zero, bb416
  # implict jump to bb414
bb414:
  LA s3, array
  ADDI s4, zero, 1
  SW s4, 44(s3)
  LA s3, array
  LW s3, 40(s3)
  # implict jump to bb415
bb415:
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb27
bb416:
  ADD s3, zero, zero
  JAL zero, bb415
bb417:
  ADDI s3, zero, 1
  JAL zero, bb413
bb418:
  LA s3, sum
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s4, sum
  SW s3, 0(s4)
  ADDI s3, zero, 10
  SLT s3, s3, s1
  XORI s3, s3, 1
  BNE s3, zero, bb424
  # implict jump to bb419
bb419:
  ADDI s3, zero, 10
  SLTI s3, s3, 20
  XORI s3, s3, 1
  # implict jump to bb420
bb420:
  BNE s3, zero, bb423
  # implict jump to bb421
bb421:
  LA s3, array
  ADDI s4, zero, 1
  SW s4, 40(s3)
  LA s3, array
  LW s3, 36(s3)
  # implict jump to bb422
bb422:
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb25
bb423:
  ADD s3, zero, zero
  JAL zero, bb422
bb424:
  ADDI s3, zero, 1
  JAL zero, bb420
bb425:
  LA s3, sum
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s4, sum
  SW s3, 0(s4)
  ADDI s3, zero, 9
  SLT s3, s3, s1
  XORI s3, s3, 1
  BNE s3, zero, bb431
  # implict jump to bb426
bb426:
  ADDI s3, zero, 9
  SLTI s3, s3, 20
  XORI s3, s3, 1
  # implict jump to bb427
bb427:
  BNE s3, zero, bb430
  # implict jump to bb428
bb428:
  LA s3, array
  ADDI s4, zero, 1
  SW s4, 36(s3)
  LA s3, array
  LW s3, 32(s3)
  # implict jump to bb429
bb429:
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb23
bb430:
  ADD s3, zero, zero
  JAL zero, bb429
bb431:
  ADDI s3, zero, 1
  JAL zero, bb427
bb432:
  LA s3, sum
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s4, sum
  SW s3, 0(s4)
  ADDI s3, zero, 8
  SLT s3, s3, s1
  XORI s3, s3, 1
  BNE s3, zero, bb438
  # implict jump to bb433
bb433:
  ADDI s3, zero, 8
  SLTI s3, s3, 20
  XORI s3, s3, 1
  # implict jump to bb434
bb434:
  BNE s3, zero, bb437
  # implict jump to bb435
bb435:
  LA s3, array
  ADDI s4, zero, 1
  SW s4, 32(s3)
  LA s3, array
  LW s3, 28(s3)
  # implict jump to bb436
bb436:
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb21
bb437:
  ADD s3, zero, zero
  JAL zero, bb436
bb438:
  ADDI s3, zero, 1
  JAL zero, bb434
bb439:
  LA s3, sum
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s4, sum
  SW s3, 0(s4)
  ADDI s3, zero, 7
  SLT s3, s3, s1
  XORI s3, s3, 1
  BNE s3, zero, bb445
  # implict jump to bb440
bb440:
  ADDI s3, zero, 7
  SLTI s3, s3, 20
  XORI s3, s3, 1
  # implict jump to bb441
bb441:
  BNE s3, zero, bb444
  # implict jump to bb442
bb442:
  LA s3, array
  ADDI s4, zero, 1
  SW s4, 28(s3)
  LA s3, array
  LW s3, 24(s3)
  # implict jump to bb443
bb443:
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb19
bb444:
  ADD s3, zero, zero
  JAL zero, bb443
bb445:
  ADDI s3, zero, 1
  JAL zero, bb441
bb446:
  LA s3, sum
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s4, sum
  SW s3, 0(s4)
  ADDI s3, zero, 6
  SLT s3, s3, s1
  XORI s3, s3, 1
  BNE s3, zero, bb452
  # implict jump to bb447
bb447:
  ADDI s3, zero, 6
  SLTI s3, s3, 20
  XORI s3, s3, 1
  # implict jump to bb448
bb448:
  BNE s3, zero, bb451
  # implict jump to bb449
bb449:
  LA s3, array
  ADDI s4, zero, 1
  SW s4, 24(s3)
  LA s3, array
  LW s3, 20(s3)
  # implict jump to bb450
bb450:
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb17
bb451:
  ADD s3, zero, zero
  JAL zero, bb450
bb452:
  ADDI s3, zero, 1
  JAL zero, bb448
bb453:
  LA s3, sum
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s4, sum
  SW s3, 0(s4)
  ADDI s3, zero, 5
  SLT s3, s3, s1
  XORI s3, s3, 1
  BNE s3, zero, bb459
  # implict jump to bb454
bb454:
  ADDI s3, zero, 5
  SLTI s3, s3, 20
  XORI s3, s3, 1
  # implict jump to bb455
bb455:
  BNE s3, zero, bb458
  # implict jump to bb456
bb456:
  LA s3, array
  ADDI s4, zero, 1
  SW s4, 20(s3)
  LA s3, array
  LW s3, 16(s3)
  # implict jump to bb457
bb457:
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb15
bb458:
  ADD s3, zero, zero
  JAL zero, bb457
bb459:
  ADDI s3, zero, 1
  JAL zero, bb455
bb460:
  LA s3, sum
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s4, sum
  SW s3, 0(s4)
  ADDI s3, zero, 4
  SLT s3, s3, s1
  XORI s3, s3, 1
  BNE s3, zero, bb466
  # implict jump to bb461
bb461:
  ADDI s3, zero, 4
  SLTI s3, s3, 20
  XORI s3, s3, 1
  # implict jump to bb462
bb462:
  BNE s3, zero, bb465
  # implict jump to bb463
bb463:
  LA s3, array
  ADDI s4, zero, 1
  SW s4, 16(s3)
  LA s3, array
  LW s3, 12(s3)
  # implict jump to bb464
bb464:
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb13
bb465:
  ADD s3, zero, zero
  JAL zero, bb464
bb466:
  ADDI s3, zero, 1
  JAL zero, bb462
bb467:
  LA s3, sum
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s4, sum
  SW s3, 0(s4)
  ADDI s3, zero, 3
  SLT s3, s3, s1
  XORI s3, s3, 1
  BNE s3, zero, bb473
  # implict jump to bb468
bb468:
  ADDI s3, zero, 3
  SLTI s3, s3, 20
  XORI s3, s3, 1
  # implict jump to bb469
bb469:
  BNE s3, zero, bb472
  # implict jump to bb470
bb470:
  LA s3, array
  ADDI s4, zero, 1
  SW s4, 12(s3)
  LA s3, array
  LW s3, 8(s3)
  # implict jump to bb471
bb471:
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb11
bb472:
  ADD s3, zero, zero
  JAL zero, bb471
bb473:
  ADDI s3, zero, 1
  JAL zero, bb469
bb474:
  LA s3, sum
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s4, sum
  SW s3, 0(s4)
  ADDI s3, zero, 2
  SLT s3, s3, s1
  XORI s3, s3, 1
  BNE s3, zero, bb480
  # implict jump to bb475
bb475:
  ADDI s3, zero, 2
  SLTI s3, s3, 20
  XORI s3, s3, 1
  # implict jump to bb476
bb476:
  BNE s3, zero, bb479
  # implict jump to bb477
bb477:
  LA s3, array
  ADDI s4, zero, 1
  SW s4, 8(s3)
  LA s3, array
  LW s3, 4(s3)
  # implict jump to bb478
bb478:
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb9
bb479:
  ADD s3, zero, zero
  JAL zero, bb478
bb480:
  ADDI s3, zero, 1
  JAL zero, bb476
bb481:
  LA s3, sum
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s4, sum
  SW s3, 0(s4)
  ADDI s3, zero, 1
  SLT s3, s3, s1
  XORI s3, s3, 1
  BNE s3, zero, bb487
  # implict jump to bb482
bb482:
  ADDI s3, zero, 1
  SLTI s3, s3, 20
  XORI s3, s3, 1
  # implict jump to bb483
bb483:
  BNE s3, zero, bb486
  # implict jump to bb484
bb484:
  LA s3, array
  ADDI s4, zero, 1
  SW s4, 4(s3)
  LA s3, array
  LW s3, 0(s3)
  # implict jump to bb485
bb485:
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb7
bb486:
  ADD s3, zero, zero
  JAL zero, bb485
bb487:
  ADDI s3, zero, 1
  JAL zero, bb483
bb488:
  ADD s2, zero, zero
  JAL zero, bb5
bb489:
  ADDI s2, zero, 1
  JAL zero, bb3
