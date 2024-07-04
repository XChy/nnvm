.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -464
  SD ra, 432(sp)
  SD s2, 440(sp)
  SD s1, 448(sp)
  SD s0, 456(sp)
  ADDI s0, zero, 15
  SW s0, 360(sp)
  JAL zero, bb1
bb1:
  LW s0, 360(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb2
  JAL zero, bb3
bb2:
  LW s0, 360(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 360(sp)
  ADDI s0, zero, 4
  MULW s1, s2, s0
  ADDW s0, zero, s1
  ADDI t5, sp, 368
  ADD s1, t5, s0
  SW zero, 0(s1)
  JAL zero, bb1
bb3:
  ADDI t6, sp, 296
  ADD s0, t6, zero
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 300
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 304
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 308
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 312
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 316
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 320
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 324
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 328
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 332
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI s0, sp, 336
  ADDI s1, zero, 11
  SW s1, 0(s0)
  ADDI s0, sp, 340
  ADDI s1, zero, 12
  SW s1, 0(s0)
  ADDI s0, sp, 344
  ADDI s1, zero, 13
  SW s1, 0(s0)
  ADDI s0, sp, 348
  ADDI s1, zero, 14
  SW s1, 0(s0)
  ADDI s0, sp, 352
  ADDI s1, zero, 15
  SW s1, 0(s0)
  ADDI t5, sp, 232
  ADD s0, t5, zero
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 236
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 240
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 244
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 248
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 252
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 256
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 260
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 264
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 268
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI s0, sp, 272
  ADDI s1, zero, 11
  SW s1, 0(s0)
  ADDI s0, sp, 276
  ADDI s1, zero, 12
  SW s1, 0(s0)
  ADDI s0, sp, 280
  ADDI s1, zero, 13
  SW s1, 0(s0)
  ADDI s0, sp, 284
  ADDI s1, zero, 14
  SW s1, 0(s0)
  ADDI s0, sp, 288
  ADDI s1, zero, 15
  SW s1, 0(s0)
  ADDI t6, sp, 168
  ADD s0, t6, zero
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 172
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 176
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 180
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 184
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 188
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 192
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 196
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 200
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 204
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI s0, sp, 208
  ADDI s1, zero, 11
  SW s1, 0(s0)
  ADDI s0, sp, 212
  ADDI s1, zero, 12
  SW s1, 0(s0)
  ADDI s0, sp, 216
  ADDI s1, zero, 13
  SW s1, 0(s0)
  ADDI s0, sp, 220
  ADDI s1, zero, 14
  SW s1, 0(s0)
  ADDI s0, sp, 224
  ADDI s1, zero, 15
  SW s1, 0(s0)
  ADDI t5, sp, 104
  ADD s0, t5, zero
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 108
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 112
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 116
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 120
  SW zero, 0(s0)
  ADDI s0, sp, 124
  SW zero, 0(s0)
  ADDI s0, sp, 128
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 132
  SW zero, 0(s0)
  ADDI s0, sp, 136
  SW zero, 0(s0)
  ADDI s0, sp, 140
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI s0, sp, 144
  ADDI s1, zero, 11
  SW s1, 0(s0)
  ADDI s0, sp, 148
  ADDI s1, zero, 12
  SW s1, 0(s0)
  ADDI s0, sp, 152
  SW zero, 0(s0)
  ADDI s0, sp, 156
  SW zero, 0(s0)
  ADDI s0, sp, 160
  SW zero, 0(s0)
  ADDI t6, sp, 8
  ADD s0, t6, zero
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 12
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 16
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 20
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 24
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, zero, 19
  SW s0, 0(sp)
  JAL zero, bb4
bb4:
  LW s0, 0(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb5
  JAL zero, bb6
bb5:
  LW s0, 0(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 0(sp)
  ADDI s0, zero, 4
  MULW s1, s2, s0
  ADDIW s0, s1, 20
  ADDI t5, sp, 8
  ADD s1, t5, s0
  SW zero, 0(s1)
  JAL zero, bb4
bb6:
  ADDI a0, zero, 4
  LD ra, 432(sp)
  LD s2, 440(sp)
  LD s1, 448(sp)
  LD s0, 456(sp)
  ADDI sp, sp, 464
  JALR zero, 0(ra)
