.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -480
  SD ra, 416(sp)
  SD s4, 424(sp)
  SD s3, 432(sp)
  SD s2, 440(sp)
  SD s1, 448(sp)
  SD s5, 456(sp)
  SD s0, 464(sp)
  ADDI s0, zero, 15
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb6
  # implict jump to bb2
bb2:
  ADDI s2, zero, 1
  SW s2, 288(sp)
  ADDI s2, sp, 292
  ADDI s3, zero, 2
  SW s3, 0(s2)
  ADDI s2, sp, 296
  ADDI s3, zero, 3
  SW s3, 0(s2)
  ADDI s2, sp, 300
  ADDI s3, zero, 4
  SW s3, 0(s2)
  ADDI s2, sp, 304
  ADDI s3, zero, 5
  SW s3, 0(s2)
  ADDI s2, sp, 308
  ADDI s3, zero, 6
  SW s3, 0(s2)
  ADDI s2, sp, 312
  ADDI s3, zero, 7
  SW s3, 0(s2)
  ADDI s2, sp, 316
  ADDI s3, zero, 8
  SW s3, 0(s2)
  ADDI s2, sp, 320
  ADDI s3, zero, 9
  SW s3, 0(s2)
  ADDI s2, sp, 324
  ADDI s3, zero, 10
  SW s3, 0(s2)
  ADDI s2, sp, 328
  ADDI s3, zero, 11
  SW s3, 0(s2)
  ADDI s2, sp, 332
  ADDI s3, zero, 12
  SW s3, 0(s2)
  ADDI s2, sp, 336
  ADDI s3, zero, 13
  SW s3, 0(s2)
  ADDI s2, sp, 340
  ADDI s3, zero, 14
  SW s3, 0(s2)
  ADDI s2, sp, 344
  ADDI s3, zero, 15
  SW s3, 0(s2)
  ADDI s2, zero, 1
  SW s2, 224(sp)
  ADDI s2, sp, 228
  ADDI s3, zero, 2
  SW s3, 0(s2)
  ADDI s2, sp, 232
  ADDI s3, zero, 3
  SW s3, 0(s2)
  ADDI s2, sp, 236
  ADDI s3, zero, 4
  SW s3, 0(s2)
  ADDI s2, sp, 240
  ADDI s3, zero, 5
  SW s3, 0(s2)
  ADDI s2, sp, 244
  ADDI s3, zero, 6
  SW s3, 0(s2)
  ADDI s2, sp, 248
  ADDI s3, zero, 7
  SW s3, 0(s2)
  ADDI s2, sp, 252
  ADDI s3, zero, 8
  SW s3, 0(s2)
  ADDI s2, sp, 256
  ADDI s3, zero, 9
  SW s3, 0(s2)
  ADDI s2, sp, 260
  ADDI s3, zero, 10
  SW s3, 0(s2)
  ADDI s2, sp, 264
  ADDI s3, zero, 11
  SW s3, 0(s2)
  ADDI s2, sp, 268
  ADDI s3, zero, 12
  SW s3, 0(s2)
  ADDI s2, sp, 272
  ADDI s3, zero, 13
  SW s3, 0(s2)
  ADDI s2, sp, 276
  ADDI s3, zero, 14
  SW s3, 0(s2)
  ADDI s2, sp, 280
  ADDI s3, zero, 15
  SW s3, 0(s2)
  ADDI s2, zero, 1
  SW s2, 160(sp)
  ADDI s2, sp, 164
  ADDI s3, zero, 2
  SW s3, 0(s2)
  ADDI s2, sp, 168
  ADDI s3, zero, 3
  SW s3, 0(s2)
  ADDI s2, sp, 172
  ADDI s3, zero, 4
  SW s3, 0(s2)
  ADDI s2, sp, 176
  ADDI s3, zero, 5
  SW s3, 0(s2)
  ADDI s2, sp, 180
  ADDI s3, zero, 6
  SW s3, 0(s2)
  ADDI s2, sp, 184
  ADDI s3, zero, 7
  SW s3, 0(s2)
  ADDI s2, sp, 188
  ADDI s3, zero, 8
  SW s3, 0(s2)
  ADDI s2, sp, 192
  ADDI s3, zero, 9
  SW s3, 0(s2)
  ADDI s2, sp, 196
  ADDI s3, zero, 10
  SW s3, 0(s2)
  ADDI s2, sp, 200
  ADDI s3, zero, 11
  SW s3, 0(s2)
  ADDI s2, sp, 204
  ADDI s3, zero, 12
  SW s3, 0(s2)
  ADDI s2, sp, 208
  ADDI s3, zero, 13
  SW s3, 0(s2)
  ADDI s2, sp, 212
  ADDI s3, zero, 14
  SW s3, 0(s2)
  ADDI s2, sp, 216
  ADDI s3, zero, 15
  SW s3, 0(s2)
  ADDI s2, zero, 1
  SW s2, 96(sp)
  ADDI s2, sp, 100
  ADDI s3, zero, 2
  SW s3, 0(s2)
  ADDI s2, sp, 104
  ADDI s3, zero, 3
  SW s3, 0(s2)
  ADDI s2, sp, 108
  ADDI s3, zero, 4
  SW s3, 0(s2)
  ADDI s2, sp, 112
  SW zero, 0(s2)
  ADDI s2, sp, 116
  SW zero, 0(s2)
  ADDI s2, sp, 120
  ADDI s3, zero, 7
  SW s3, 0(s2)
  ADDI s2, sp, 124
  SW zero, 0(s2)
  ADDI s2, sp, 128
  SW zero, 0(s2)
  ADDI s2, sp, 132
  ADDI s3, zero, 10
  SW s3, 0(s2)
  ADDI s2, sp, 136
  ADDI s3, zero, 11
  SW s3, 0(s2)
  ADDI s2, sp, 140
  ADDI s3, zero, 12
  SW s3, 0(s2)
  ADDI s2, sp, 144
  SW zero, 0(s2)
  ADDI s2, sp, 148
  SW zero, 0(s2)
  ADDI s2, sp, 152
  SW zero, 0(s2)
  ADDI s2, zero, 1
  SW s2, 0(sp)
  ADDI s2, sp, 4
  ADDI s3, zero, 2
  SW s3, 0(s2)
  ADDI s2, sp, 8
  ADDI s3, zero, 3
  SW s3, 0(s2)
  ADDI s2, sp, 12
  ADDI s3, zero, 4
  SW s3, 0(s2)
  ADDI s2, sp, 16
  ADDI s3, zero, 5
  SW s3, 0(s2)
  ADDI s2, zero, 19
  # implict jump to bb3
bb3:
  ADD s3, s2, zero
  XOR s4, s3, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb5
  # implict jump to bb4
bb4:
  ADDI a0, zero, 4
  LD ra, 416(sp)
  LD s4, 424(sp)
  LD s3, 432(sp)
  LD s2, 440(sp)
  LD s1, 448(sp)
  LD s5, 456(sp)
  LD s0, 464(sp)
  ADDI sp, sp, 480
  JALR zero, 0(ra)
bb5:
  ADDI s4, zero, 1
  SUBW s5, s3, s4
  SLLIW s3, s5, 2
  ADDIW s4, s3, 20
  ADDI t5, sp, 0
  ADD s3, t5, s4
  SW zero, 0(s3)
  ADD s2, s5, zero
  JAL zero, bb3
bb6:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SLLIW s1, s3, 2
  ADDI t5, sp, 352
  ADD s2, t5, s1
  SW zero, 0(s2)
  ADD s0, s3, zero
  JAL zero, bb1
