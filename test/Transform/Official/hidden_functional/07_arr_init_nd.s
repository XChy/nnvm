.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -480
  SD ra, 416(sp)
  SD s0, 424(sp)
  SD s1, 432(sp)
  SD s2, 440(sp)
  SD s3, 448(sp)
  SD s4, 456(sp)
  SD s5, 464(sp)
  ADDI s2, zero, 0
  XORI s2, s2, 15
  BNE s2, zero, bb8
  # implict jump to bb1
bb1:
  ADDI s3, zero, 1
  SW s3, 288(sp)
  ADDI s3, sp, 292
  ADDI s4, zero, 2
  SW s4, 0(s3)
  ADDI s3, sp, 296
  ADDI s4, zero, 3
  SW s4, 0(s3)
  ADDI s3, sp, 300
  ADDI s4, zero, 4
  SW s4, 0(s3)
  ADDI s3, sp, 304
  ADDI s4, zero, 5
  SW s4, 0(s3)
  ADDI s3, sp, 308
  ADDI s4, zero, 6
  SW s4, 0(s3)
  ADDI s3, sp, 312
  ADDI s4, zero, 7
  SW s4, 0(s3)
  ADDI s3, sp, 316
  ADDI s4, zero, 8
  SW s4, 0(s3)
  ADDI s3, sp, 320
  ADDI s4, zero, 9
  SW s4, 0(s3)
  ADDI s3, sp, 324
  ADDI s4, zero, 10
  SW s4, 0(s3)
  ADDI s3, sp, 328
  ADDI s4, zero, 11
  SW s4, 0(s3)
  ADDI s3, sp, 332
  ADDI s4, zero, 12
  SW s4, 0(s3)
  ADDI s3, sp, 336
  ADDI s4, zero, 13
  SW s4, 0(s3)
  ADDI s3, sp, 340
  ADDI s4, zero, 14
  SW s4, 0(s3)
  ADDI s3, sp, 344
  ADDI s4, zero, 15
  SW s4, 0(s3)
  ADDI s3, zero, 1
  SW s3, 224(sp)
  ADDI s3, sp, 228
  ADDI s4, zero, 2
  SW s4, 0(s3)
  ADDI s3, sp, 232
  ADDI s4, zero, 3
  SW s4, 0(s3)
  ADDI s3, sp, 236
  ADDI s4, zero, 4
  SW s4, 0(s3)
  ADDI s3, sp, 240
  ADDI s4, zero, 5
  SW s4, 0(s3)
  ADDI s3, sp, 244
  ADDI s4, zero, 6
  SW s4, 0(s3)
  ADDI s3, sp, 248
  ADDI s4, zero, 7
  SW s4, 0(s3)
  ADDI s3, sp, 252
  ADDI s4, zero, 8
  SW s4, 0(s3)
  ADDI s3, sp, 256
  ADDI s4, zero, 9
  SW s4, 0(s3)
  ADDI s3, sp, 260
  ADDI s4, zero, 10
  SW s4, 0(s3)
  ADDI s3, sp, 264
  ADDI s4, zero, 11
  SW s4, 0(s3)
  ADDI s3, sp, 268
  ADDI s4, zero, 12
  SW s4, 0(s3)
  ADDI s3, sp, 272
  ADDI s4, zero, 13
  SW s4, 0(s3)
  ADDI s3, sp, 276
  ADDI s4, zero, 14
  SW s4, 0(s3)
  ADDI s3, sp, 280
  ADDI s4, zero, 15
  SW s4, 0(s3)
  ADDI s3, zero, 1
  SW s3, 160(sp)
  ADDI s3, sp, 164
  ADDI s4, zero, 2
  SW s4, 0(s3)
  ADDI s3, sp, 168
  ADDI s4, zero, 3
  SW s4, 0(s3)
  ADDI s3, sp, 172
  ADDI s4, zero, 4
  SW s4, 0(s3)
  ADDI s3, sp, 176
  ADDI s4, zero, 5
  SW s4, 0(s3)
  ADDI s3, sp, 180
  ADDI s4, zero, 6
  SW s4, 0(s3)
  ADDI s3, sp, 184
  ADDI s4, zero, 7
  SW s4, 0(s3)
  ADDI s3, sp, 188
  ADDI s4, zero, 8
  SW s4, 0(s3)
  ADDI s3, sp, 192
  ADDI s4, zero, 9
  SW s4, 0(s3)
  ADDI s3, sp, 196
  ADDI s4, zero, 10
  SW s4, 0(s3)
  ADDI s3, sp, 200
  ADDI s4, zero, 11
  SW s4, 0(s3)
  ADDI s3, sp, 204
  ADDI s4, zero, 12
  SW s4, 0(s3)
  ADDI s3, sp, 208
  ADDI s4, zero, 13
  SW s4, 0(s3)
  ADDI s3, sp, 212
  ADDI s4, zero, 14
  SW s4, 0(s3)
  ADDI s3, sp, 216
  ADDI s4, zero, 15
  SW s4, 0(s3)
  ADDI s3, zero, 1
  SW s3, 96(sp)
  ADDI s3, sp, 100
  ADDI s4, zero, 2
  SW s4, 0(s3)
  ADDI s3, sp, 104
  ADDI s4, zero, 3
  SW s4, 0(s3)
  ADDI s3, sp, 108
  ADDI s4, zero, 4
  SW s4, 0(s3)
  ADDI s3, sp, 112
  SW zero, 0(s3)
  ADDI s3, sp, 116
  SW zero, 0(s3)
  ADDI s3, sp, 120
  ADDI s4, zero, 7
  SW s4, 0(s3)
  ADDI s3, sp, 124
  SW zero, 0(s3)
  ADDI s3, sp, 128
  SW zero, 0(s3)
  ADDI s3, sp, 132
  ADDI s4, zero, 10
  SW s4, 0(s3)
  ADDI s3, sp, 136
  ADDI s4, zero, 11
  SW s4, 0(s3)
  ADDI s3, sp, 140
  ADDI s4, zero, 12
  SW s4, 0(s3)
  ADDI s3, sp, 144
  SW zero, 0(s3)
  ADDI s3, sp, 148
  SW zero, 0(s3)
  ADDI s3, sp, 152
  SW zero, 0(s3)
  ADDI s3, zero, 1
  SW s3, 0(sp)
  ADDI s3, sp, 4
  ADDI s4, zero, 2
  SW s4, 0(s3)
  ADDI s3, sp, 8
  ADDI s4, zero, 3
  SW s4, 0(s3)
  ADDI s3, sp, 12
  ADDI s4, zero, 4
  SW s4, 0(s3)
  ADDI s3, sp, 16
  ADDI s4, zero, 5
  SW s4, 0(s3)
  XORI s3, zero, 19
  BNE s3, zero, bb3
  # implict jump to bb2
bb2:
  ADDI a0, zero, 4
  LD ra, 416(sp)
  LD s0, 424(sp)
  LD s1, 432(sp)
  LD s2, 440(sp)
  LD s3, 448(sp)
  LD s4, 456(sp)
  LD s5, 464(sp)
  ADDI sp, sp, 480
  JALR zero, 0(ra)
bb3:
  ADDI s3, zero, 19
  # implict jump to bb4
bb4:
  # implict jump to bb5
bb5:
  ADD s4, s3, zero
  ADDI s5, zero, 1
  SUBW s0, s4, s5
  SLLIW s4, s0, 2
  ADDIW s4, s4, 20
  ADDI t5, sp, 0
  ADD s4, t5, s4
  SW zero, 0(s4)
  # implict jump to bb6
bb6:
  BNE s0, zero, bb7
  JAL zero, bb2
bb7:
  ADD s3, s0, zero
  JAL zero, bb5
bb8:
  ADDI s2, zero, 15
  # implict jump to bb9
bb9:
  # implict jump to bb10
bb10:
  ADD s3, s2, zero
  ADDI s4, zero, 1
  SUBW s1, s3, s4
  SLLIW s3, s1, 2
  ADDI t5, sp, 352
  ADD s3, t5, s3
  SW zero, 0(s3)
  # implict jump to bb11
bb11:
  BNE s1, zero, bb12
  JAL zero, bb1
bb12:
  ADD s2, s1, zero
  JAL zero, bb10
