.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -464
  SD ra, 416(sp)
  SD s3, 424(sp)
  SD s2, 432(sp)
  SD s1, 440(sp)
  SD s0, 448(sp)
  ADDI s0, zero, 15
  JAL zero, bb1
bb1:
  XOR s1, s0, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADDW s1, zero, s3
  ADDI t5, sp, 352
  ADD s3, t5, s1
  SW zero, 0(s3)
  ADD s0, s2, zero
  JAL zero, bb1
bb3:
  ADDI t6, sp, 288
  ADD s0, t6, zero
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 292
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 296
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 300
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 304
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 308
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 312
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 316
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 320
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 324
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI s0, sp, 328
  ADDI s1, zero, 11
  SW s1, 0(s0)
  ADDI s0, sp, 332
  ADDI s1, zero, 12
  SW s1, 0(s0)
  ADDI s0, sp, 336
  ADDI s1, zero, 13
  SW s1, 0(s0)
  ADDI s0, sp, 340
  ADDI s1, zero, 14
  SW s1, 0(s0)
  ADDI s0, sp, 344
  ADDI s1, zero, 15
  SW s1, 0(s0)
  ADDI t5, sp, 224
  ADD s0, t5, zero
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 228
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 232
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 236
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 240
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 244
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 248
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 252
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 256
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 260
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI s0, sp, 264
  ADDI s1, zero, 11
  SW s1, 0(s0)
  ADDI s0, sp, 268
  ADDI s1, zero, 12
  SW s1, 0(s0)
  ADDI s0, sp, 272
  ADDI s1, zero, 13
  SW s1, 0(s0)
  ADDI s0, sp, 276
  ADDI s1, zero, 14
  SW s1, 0(s0)
  ADDI s0, sp, 280
  ADDI s1, zero, 15
  SW s1, 0(s0)
  ADDI t6, sp, 160
  ADD s0, t6, zero
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 164
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 168
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 172
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 176
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 180
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 184
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 188
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 192
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 196
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI s0, sp, 200
  ADDI s1, zero, 11
  SW s1, 0(s0)
  ADDI s0, sp, 204
  ADDI s1, zero, 12
  SW s1, 0(s0)
  ADDI s0, sp, 208
  ADDI s1, zero, 13
  SW s1, 0(s0)
  ADDI s0, sp, 212
  ADDI s1, zero, 14
  SW s1, 0(s0)
  ADDI s0, sp, 216
  ADDI s1, zero, 15
  SW s1, 0(s0)
  ADDI t5, sp, 96
  ADD s0, t5, zero
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 100
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 104
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 108
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 112
  SW zero, 0(s0)
  ADDI s0, sp, 116
  SW zero, 0(s0)
  ADDI s0, sp, 120
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 124
  SW zero, 0(s0)
  ADDI s0, sp, 128
  SW zero, 0(s0)
  ADDI s0, sp, 132
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI s0, sp, 136
  ADDI s1, zero, 11
  SW s1, 0(s0)
  ADDI s0, sp, 140
  ADDI s1, zero, 12
  SW s1, 0(s0)
  ADDI s0, sp, 144
  SW zero, 0(s0)
  ADDI s0, sp, 148
  SW zero, 0(s0)
  ADDI s0, sp, 152
  SW zero, 0(s0)
  ADDI t6, sp, 0
  ADD s0, t6, zero
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 4
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 8
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 12
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 16
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, zero, 19
  JAL zero, bb4
bb4:
  XOR s1, s0, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADDIW s1, s3, 20
  ADDI t5, sp, 0
  ADD s3, t5, s1
  SW zero, 0(s3)
  ADD s0, s2, zero
  JAL zero, bb4
bb6:
  ADDI a0, zero, 4
  LD ra, 416(sp)
  LD s3, 424(sp)
  LD s2, 432(sp)
  LD s1, 440(sp)
  LD s0, 448(sp)
  ADDI sp, sp, 464
  JALR zero, 0(ra)
