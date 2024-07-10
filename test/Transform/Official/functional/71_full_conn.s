.global main
.global model
.global relu_reg
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -336
  SD ra, 120(sp)
  SD s0, 128(sp)
  SD s1, 136(sp)
  SD s2, 144(sp)
  SD s3, 152(sp)
  SD s4, 160(sp)
  SD s5, 168(sp)
  SD s6, 176(sp)
  SD s7, 184(sp)
  SD s8, 192(sp)
  SD s9, 200(sp)
  SD s10, 208(sp)
  SD s11, 216(sp)
  CALL getint
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 92(sp)
  ADD t4, s0, zero
  SW t4, 96(sp)
  # implict jump to bb1
bb1:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  LW t4, 92(sp)
  ADD s3, t4, zero
  ADDI s4, zero, 0
  LW t4, 108(sp)
  SLT s5, s4, t4
  BNE s5, zero, bb3
  # implict jump to bb2
bb2:
  ADD a0, zero, zero
  LD ra, 120(sp)
  LD s0, 128(sp)
  LD s1, 136(sp)
  LD s2, 144(sp)
  LD s3, 152(sp)
  LD s4, 160(sp)
  LD s5, 168(sp)
  LD s6, 176(sp)
  LD s7, 184(sp)
  LD s8, 192(sp)
  LD s9, 200(sp)
  LD s10, 208(sp)
  LD s11, 216(sp)
  ADDI sp, sp, 336
  JALR zero, 0(ra)
bb3:
  ADD t4, s3, zero
  SW t4, 100(sp)
  ADD t4, zero, zero
  SW t4, 104(sp)
  # implict jump to bb4
bb4:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t4, 112(sp)
  SLTI s7, t4, 5
  BNE s7, zero, bb62
  # implict jump to bb5
bb5:
  LW s7, 224(sp)
  ADDI s8, zero, 85
  MULW s9, s7, s8
  ADDI s8, sp, 228
  LW s10, 0(s8)
  ADDI s8, zero, 23
  MULW s11, s10, s8
  ADDW s8, s9, s11
  ADDI s9, sp, 232
  LW t4, 0(s9)
  SW t4, 80(sp)
  ADDI s9, zero, -82
  LW t4, 80(sp)
  MULW s5, t4, s9
  ADDW s9, s8, s5
  ADDI s5, sp, 236
  LW t4, 0(s5)
  SW t4, 76(sp)
  ADDI s5, zero, -103
  LW t4, 76(sp)
  MULW s0, t4, s5
  ADDW s5, s9, s0
  ADDI s0, sp, 240
  LW t4, 0(s0)
  SW t4, 72(sp)
  ADDI s0, zero, -123
  LW t4, 72(sp)
  MULW s3, t4, s0
  ADDW s0, s5, s3
  ADDI s3, sp, 244
  LW t4, 0(s3)
  SW t4, 68(sp)
  LW t4, 68(sp)
  SLLIW s3, t4, 6
  ADDW s4, s0, s3
  ADDI s0, sp, 248
  LW t4, 0(s0)
  SW t4, 64(sp)
  ADDI s0, zero, -120
  LW t4, 64(sp)
  MULW s2, t4, s0
  ADDW s0, s4, s2
  ADDI s2, sp, 252
  LW t4, 0(s2)
  SW t4, 12(sp)
  ADDI s2, zero, 50
  LW t4, 12(sp)
  MULW s1, t4, s2
  ADDW s2, s0, s1
  ADDI s0, sp, 256
  LW t4, 0(s0)
  SW t4, 8(sp)
  ADDI s0, zero, -59
  LW t4, 8(sp)
  MULW s6, t4, s0
  ADDW s0, s2, s6
  ADDI s2, sp, 260
  LW t4, 0(s2)
  SW t4, 84(sp)
  ADDI s2, zero, 47
  LW t4, 84(sp)
  MULW s6, t4, s2
  ADDW s2, s0, s6
  ADDI s0, sp, 264
  LW t4, 0(s0)
  SW t4, 44(sp)
  ADDI s0, zero, -111
  LW t4, 44(sp)
  MULW s6, t4, s0
  ADDW s0, s2, s6
  ADDI s2, sp, 268
  LW t4, 0(s2)
  SW t4, 4(sp)
  ADDI s2, zero, -67
  LW t4, 4(sp)
  MULW s6, t4, s2
  ADDW s2, s0, s6
  ADDI s0, sp, 272
  LW s1, 0(s0)
  ADDI s0, zero, -106
  MULW s4, s1, s0
  ADDW s0, s2, s4
  ADDI s2, sp, 276
  LW t4, 0(s2)
  SW t4, 16(sp)
  ADDI s2, zero, -75
  LW t4, 16(sp)
  MULW s4, t4, s2
  ADDW s2, s0, s4
  ADDI s0, sp, 280
  LW t4, 0(s0)
  SW t4, 20(sp)
  ADDI s0, zero, -102
  LW t4, 20(sp)
  MULW s4, t4, s0
  ADDW s0, s2, s4
  ADDI s2, sp, 284
  LW t4, 0(s2)
  SW t4, 24(sp)
  ADDI s2, zero, 34
  LW t4, 24(sp)
  MULW s4, t4, s2
  ADDW s2, s0, s4
  ADDI s0, sp, 288
  LW t4, 0(s0)
  SW t4, 28(sp)
  ADDI s0, zero, -39
  LW t4, 28(sp)
  MULW s4, t4, s0
  ADDW s0, s2, s4
  ADDI s2, sp, 292
  LW t4, 0(s2)
  SW t4, 32(sp)
  ADDI s2, zero, 65
  LW t4, 32(sp)
  MULW s4, t4, s2
  ADDW s2, s0, s4
  ADDI s0, sp, 296
  LW t4, 0(s0)
  SW t4, 36(sp)
  ADDI s0, zero, 47
  LW t4, 36(sp)
  MULW s4, t4, s0
  ADDW s0, s2, s4
  ADDI s2, sp, 300
  LW t4, 0(s2)
  SW t4, 40(sp)
  ADDI s2, zero, 113
  LW t4, 40(sp)
  MULW s4, t4, s2
  ADDW s2, s0, s4
  ADDI s0, sp, 304
  LW t4, 0(s0)
  SW t4, 0(sp)
  ADDI s0, zero, 110
  LW t4, 0(sp)
  MULW s4, t4, s0
  ADDW s0, s2, s4
  ADDI s2, sp, 308
  LW t4, 0(s2)
  SW t4, 48(sp)
  ADDI s2, zero, 47
  LW t4, 48(sp)
  MULW s4, t4, s2
  ADDW s2, s0, s4
  ADDI s0, sp, 312
  LW t4, 0(s0)
  SW t4, 52(sp)
  ADDI s0, zero, -4
  LW t4, 52(sp)
  MULW s4, t4, s0
  ADDW s0, s2, s4
  ADDI s2, sp, 316
  LW t4, 0(s2)
  SW t4, 56(sp)
  ADDI s2, zero, 80
  LW t4, 56(sp)
  MULW s4, t4, s2
  ADDW s2, s0, s4
  ADDI s0, sp, 320
  LW t4, 0(s0)
  SW t4, 60(sp)
  ADDI s0, zero, 46
  LW t4, 60(sp)
  MULW s4, t4, s0
  ADDW s0, s2, s4
  ADDI s2, zero, 127
  SLT s4, s2, s0
  BNE s4, zero, bb61
  # implict jump to bb6
bb6:
  SLT s2, s0, zero
  BNE s2, zero, bb60
  # implict jump to bb7
bb7:
  ADD s2, s0, zero
  # implict jump to bb8
bb8:
  ADD s0, s2, zero
  ADDI s2, zero, 39
  MULW s4, s0, s2
  ADDI s0, zero, -106
  MULW s2, s7, s0
  ADDI s0, zero, 126
  MULW s3, s10, s0
  ADDW s0, s2, s3
  ADDI s2, zero, -18
  LW t4, 80(sp)
  MULW s3, t4, s2
  ADDW s2, s0, s3
  ADDI s0, zero, -31
  LW t4, 76(sp)
  MULW s3, t4, s0
  ADDW s0, s2, s3
  ADDI s2, zero, -8
  LW t4, 72(sp)
  MULW s3, t4, s2
  ADDW s2, s0, s3
  ADDI s0, zero, 47
  LW t4, 68(sp)
  MULW s3, t4, s0
  ADDW s0, s2, s3
  ADDI s2, zero, -4
  LW t4, 64(sp)
  MULW s3, t4, s2
  ADDW s2, s0, s3
  ADDI s0, zero, 67
  LW t4, 12(sp)
  MULW s3, t4, s0
  ADDW s0, s2, s3
  ADDI s2, zero, -94
  LW t4, 8(sp)
  MULW s3, t4, s2
  ADDW s2, s0, s3
  ADDI s0, zero, -121
  LW t4, 84(sp)
  MULW s3, t4, s0
  ADDW s0, s2, s3
  ADDI s2, zero, 7
  LW t4, 44(sp)
  MULW s3, t4, s2
  ADDW s2, s0, s3
  ADDI s0, zero, -21
  LW t4, 4(sp)
  MULW s3, t4, s0
  ADDW s0, s2, s3
  ADDI s2, zero, -60
  MULW s3, s1, s2
  ADDW s2, s0, s3
  ADDI s0, zero, -43
  LW t4, 16(sp)
  MULW s3, t4, s0
  ADDW s0, s2, s3
  ADDI s2, zero, 105
  LW t4, 20(sp)
  MULW s3, t4, s2
  ADDW s2, s0, s3
  ADDI s0, zero, -42
  LW t4, 24(sp)
  MULW s3, t4, s0
  ADDW s0, s2, s3
  ADDI s2, zero, 87
  LW t4, 28(sp)
  MULW s3, t4, s2
  ADDW s2, s0, s3
  ADDI s0, zero, 29
  LW t4, 32(sp)
  MULW s3, t4, s0
  ADDW s0, s2, s3
  ADDI s2, zero, -106
  LW t4, 36(sp)
  MULW s3, t4, s2
  ADDW s2, s0, s3
  ADDI s0, zero, -31
  LW t4, 40(sp)
  MULW s3, t4, s0
  ADDW s0, s2, s3
  ADDI s2, zero, -110
  LW t4, 0(sp)
  MULW s3, t4, s2
  ADDW s2, s0, s3
  ADDI s0, zero, -100
  LW t4, 48(sp)
  MULW s3, t4, s0
  ADDW s0, s2, s3
  ADDI s2, zero, -22
  LW t4, 52(sp)
  MULW s3, t4, s2
  ADDW s2, s0, s3
  ADDI s0, zero, -75
  LW t4, 56(sp)
  MULW s3, t4, s0
  ADDW s0, s2, s3
  ADDI s2, zero, -125
  LW t4, 60(sp)
  MULW s3, t4, s2
  ADDW s2, s0, s3
  ADDI s0, zero, 127
  SLT s3, s0, s2
  BNE s3, zero, bb59
  # implict jump to bb9
bb9:
  SLT s0, s2, zero
  BNE s0, zero, bb58
  # implict jump to bb10
bb10:
  ADD s0, s2, zero
  # implict jump to bb11
bb11:
  ADD s2, s0, zero
  ADDI s0, zero, 77
  MULW s3, s2, s0
  ADDW s0, s4, s3
  ADDI s2, zero, 26
  MULW s3, s7, s2
  ADDI s2, zero, 76
  MULW s4, s10, s2
  ADDW s2, s3, s4
  ADDI s3, zero, -70
  LW t4, 80(sp)
  MULW s4, t4, s3
  ADDW s3, s2, s4
  ADDI s2, zero, 29
  LW t4, 76(sp)
  MULW s5, t4, s2
  ADDW s2, s3, s5
  ADDI s3, zero, -95
  LW t4, 72(sp)
  MULW s5, t4, s3
  ADDW s3, s2, s5
  ADDI s2, zero, 96
  LW t4, 68(sp)
  MULW s5, t4, s2
  ADDW s2, s3, s5
  ADDI s3, zero, 52
  LW t4, 64(sp)
  MULW s5, t4, s3
  ADDW s3, s2, s5
  ADDI s2, zero, -68
  LW t4, 12(sp)
  MULW s5, t4, s2
  ADDW s2, s3, s5
  ADDI s3, zero, -5
  LW t4, 8(sp)
  MULW s5, t4, s3
  ADDW s3, s2, s5
  ADDI s2, zero, 34
  LW t4, 84(sp)
  MULW s5, t4, s2
  ADDW s2, s3, s5
  ADDI s3, zero, -34
  LW t4, 44(sp)
  MULW s5, t4, s3
  ADDW s3, s2, s5
  ADDI s2, zero, 102
  LW t4, 4(sp)
  MULW s5, t4, s2
  ADDW s2, s3, s5
  ADDI s3, zero, 6
  MULW s5, s1, s3
  ADDW s3, s2, s5
  ADDI s2, zero, -38
  LW t4, 16(sp)
  MULW s5, t4, s2
  ADDW s2, s3, s5
  ADDI s3, zero, 27
  LW t4, 20(sp)
  MULW s5, t4, s3
  ADDW s3, s2, s5
  ADDI s2, zero, 110
  LW t4, 24(sp)
  MULW s5, t4, s2
  ADDW s2, s3, s5
  ADDI s3, zero, 116
  LW t4, 28(sp)
  MULW s5, t4, s3
  ADDW s3, s2, s5
  ADDI s2, zero, 39
  LW t4, 32(sp)
  MULW s5, t4, s2
  ADDW s2, s3, s5
  ADDI s3, zero, -63
  LW t4, 36(sp)
  MULW s5, t4, s3
  ADDW s3, s2, s5
  ADDI s2, zero, -99
  LW t4, 40(sp)
  MULW s5, t4, s2
  ADDW s2, s3, s5
  ADDI s3, zero, 65
  LW t4, 0(sp)
  MULW s5, t4, s3
  ADDW s3, s2, s5
  ADDI s2, zero, 120
  LW t4, 48(sp)
  MULW s9, t4, s2
  ADDW s2, s3, s9
  ADDI s3, zero, -39
  LW t4, 52(sp)
  MULW s9, t4, s3
  ADDW s3, s2, s9
  ADDI s2, zero, -6
  LW t4, 56(sp)
  MULW s9, t4, s2
  ADDW s2, s3, s9
  ADDI s3, zero, 94
  LW t4, 60(sp)
  MULW s9, t4, s3
  ADDW s3, s2, s9
  ADDI s2, zero, 127
  SLT s9, s2, s3
  BNE s9, zero, bb57
  # implict jump to bb12
bb12:
  SLT s2, s3, zero
  BNE s2, zero, bb56
  # implict jump to bb13
bb13:
  ADD s2, s3, zero
  # implict jump to bb14
bb14:
  ADD s3, s2, zero
  ADDI s2, zero, 127
  MULW s9, s3, s2
  ADDW s2, s0, s9
  ADDI s0, zero, -23
  MULW s3, s7, s0
  ADDI s0, zero, -63
  MULW s9, s10, s0
  ADDW s0, s3, s9
  ADDI s3, zero, 49
  LW t4, 80(sp)
  MULW s9, t4, s3
  ADDW s3, s0, s9
  ADDI s0, zero, 50
  LW t4, 76(sp)
  MULW s9, t4, s0
  ADDW s0, s3, s9
  ADDI s3, zero, 72
  LW t4, 72(sp)
  MULW s9, t4, s3
  ADDW s3, s0, s9
  ADDI s0, zero, 85
  LW t4, 68(sp)
  MULW s9, t4, s0
  ADDW s0, s3, s9
  ADDI s3, zero, -30
  LW t4, 64(sp)
  MULW s9, t4, s3
  ADDW s3, s0, s9
  ADDI s0, zero, 12
  LW t4, 12(sp)
  MULW s9, t4, s0
  ADDW s0, s3, s9
  ADDI s3, zero, 125
  LW t4, 8(sp)
  MULW s9, t4, s3
  ADDW s3, s0, s9
  ADDI s0, zero, -117
  LW t4, 84(sp)
  MULW s8, t4, s0
  ADDW s0, s3, s8
  ADDI s3, zero, -65
  LW t4, 44(sp)
  MULW s8, t4, s3
  ADDW s3, s0, s8
  ADDW s0, s3, s6
  ADDI s3, zero, 125
  MULW s6, s1, s3
  ADDW s3, s0, s6
  ADDI s0, zero, 110
  LW t4, 16(sp)
  MULW s6, t4, s0
  ADDW s0, s3, s6
  ADDI s3, zero, -31
  LW t4, 20(sp)
  MULW s6, t4, s3
  ADDW s3, s0, s6
  ADDI s0, zero, -123
  LW t4, 24(sp)
  MULW s6, t4, s0
  ADDW s0, s3, s6
  ADDI s3, zero, 83
  LW t4, 28(sp)
  MULW s6, t4, s3
  ADDW s3, s0, s6
  ADDI s0, zero, 122
  LW t4, 32(sp)
  MULW s6, t4, s0
  ADDW s0, s3, s6
  ADDI s3, zero, 11
  LW t4, 36(sp)
  MULW s6, t4, s3
  ADDW s3, s0, s6
  ADDI s0, zero, -23
  LW t4, 40(sp)
  MULW s6, t4, s0
  ADDW s0, s3, s6
  ADDI s3, zero, -47
  LW t4, 0(sp)
  MULW s6, t4, s3
  ADDW s3, s0, s6
  ADDI s0, zero, -32
  LW t4, 48(sp)
  MULW s6, t4, s0
  ADDW s0, s3, s6
  ADDI s3, zero, -117
  LW t4, 52(sp)
  MULW s6, t4, s3
  ADDW s3, s0, s6
  ADDI s0, zero, 95
  LW t4, 56(sp)
  MULW s6, t4, s0
  ADDW s0, s3, s6
  ADDI s3, zero, 118
  LW t4, 60(sp)
  MULW s6, t4, s3
  ADDW s3, s0, s6
  ADDI s0, zero, 127
  SLT s6, s0, s3
  BNE s6, zero, bb55
  # implict jump to bb15
bb15:
  SLT s0, s3, zero
  BNE s0, zero, bb54
  # implict jump to bb16
bb16:
  ADD s0, s3, zero
  # implict jump to bb17
bb17:
  ADD s3, s0, zero
  ADDI s0, zero, -106
  MULW s6, s3, s0
  ADDW s0, s2, s6
  SLLIW s2, s7, 3
  ADDI s3, zero, 82
  MULW s6, s10, s3
  ADDW s3, s2, s6
  ADDI s2, zero, -104
  LW t4, 80(sp)
  MULW s8, t4, s2
  ADDW s2, s3, s8
  ADDI s3, zero, 101
  LW t4, 76(sp)
  MULW s8, t4, s3
  ADDW s3, s2, s8
  ADDI s2, zero, -116
  LW t4, 72(sp)
  MULW s8, t4, s2
  ADDW s2, s3, s8
  ADDI s3, zero, -63
  LW t4, 68(sp)
  MULW s8, t4, s3
  ADDW s3, s2, s8
  ADDI s2, zero, -16
  LW t4, 64(sp)
  MULW s8, t4, s2
  ADDW s2, s3, s8
  ADDI s3, zero, -70
  LW t4, 12(sp)
  MULW s8, t4, s3
  ADDW s3, s2, s8
  ADDW s2, s3, s9
  ADDI s3, zero, 75
  LW t4, 84(sp)
  MULW s8, t4, s3
  ADDW s3, s2, s8
  ADDI s2, zero, 66
  LW t4, 44(sp)
  MULW s8, t4, s2
  ADDW s2, s3, s8
  ADDI s3, zero, -96
  LW t4, 4(sp)
  MULW s8, t4, s3
  ADDW s3, s2, s8
  ADDI s2, zero, -101
  MULW s8, s1, s2
  ADDW s2, s3, s8
  ADDI s3, zero, -114
  LW t4, 16(sp)
  MULW s8, t4, s3
  ADDW s3, s2, s8
  ADDI s2, zero, 59
  LW t4, 20(sp)
  MULW s8, t4, s2
  ADDW s2, s3, s8
  ADDI s3, zero, 12
  LW t4, 24(sp)
  MULW s8, t4, s3
  ADDW s3, s2, s8
  ADDI s2, zero, 5
  LW t4, 28(sp)
  MULW s8, t4, s2
  ADDW s2, s3, s8
  ADDI s3, zero, -95
  LW t4, 32(sp)
  MULW s8, t4, s3
  ADDW s3, s2, s8
  ADDI s2, zero, 116
  LW t4, 36(sp)
  MULW s8, t4, s2
  ADDW s2, s3, s8
  ADDI s3, zero, -93
  LW t4, 40(sp)
  MULW s8, t4, s3
  ADDW s3, s2, s8
  ADDI s2, zero, 15
  LW t4, 0(sp)
  MULW s8, t4, s2
  ADDW s2, s3, s8
  ADDI s3, zero, 79
  LW t4, 48(sp)
  MULW s8, t4, s3
  ADDW s3, s2, s8
  ADDI s2, zero, 3
  LW t4, 52(sp)
  MULW s8, t4, s2
  ADDW s2, s3, s8
  ADDI s3, zero, 49
  LW t4, 56(sp)
  MULW s8, t4, s3
  ADDW s3, s2, s8
  ADDI s2, zero, -124
  LW t4, 60(sp)
  MULW s8, t4, s2
  ADDW s2, s3, s8
  ADDI s3, zero, 127
  SLT s8, s3, s2
  BNE s8, zero, bb53
  # implict jump to bb18
bb18:
  SLT s3, s2, zero
  BNE s3, zero, bb52
  # implict jump to bb19
bb19:
  ADD s3, s2, zero
  # implict jump to bb20
bb20:
  ADD s2, s3, zero
  ADDI s3, zero, -3
  MULW s8, s2, s3
  ADDW s2, s0, s8
  ADDI s0, zero, 81
  MULW s3, s7, s0
  ADDI s0, zero, 68
  MULW s8, s10, s0
  ADDW s0, s3, s8
  ADDI s3, zero, -102
  LW t4, 80(sp)
  MULW s8, t4, s3
  ADDW s3, s0, s8
  ADDI s0, zero, -74
  LW t4, 76(sp)
  MULW s8, t4, s0
  ADDW s0, s3, s8
  ADDI s3, zero, 121
  LW t4, 72(sp)
  MULW s8, t4, s3
  ADDW s3, s0, s8
  ADDI s0, zero, -15
  LW t4, 68(sp)
  MULW s8, t4, s0
  ADDW s0, s3, s8
  ADDI s3, zero, 55
  LW t4, 64(sp)
  MULW s9, t4, s3
  ADDW s3, s0, s9
  ADDI s0, zero, 101
  LW t4, 12(sp)
  MULW s9, t4, s0
  ADDW s0, s3, s9
  ADDI s3, zero, -13
  LW t4, 8(sp)
  MULW s9, t4, s3
  ADDW s3, s0, s9
  ADDI s0, zero, -62
  LW t4, 84(sp)
  MULW s9, t4, s0
  ADDW s0, s3, s9
  LW t4, 44(sp)
  SLLIW s3, t4, 6
  ADDW s11, s0, s3
  ADDI s0, zero, 114
  LW t4, 4(sp)
  MULW s3, t4, s0
  ADDW s0, s11, s3
  ADDI s3, zero, 38
  MULW s11, s1, s3
  ADDW s3, s0, s11
  ADDI s0, zero, -21
  LW t4, 16(sp)
  MULW s11, t4, s0
  ADDW s0, s3, s11
  ADDI s3, zero, 112
  LW t4, 20(sp)
  MULW s11, t4, s3
  ADDW s3, s0, s11
  ADDI s0, zero, 114
  LW t4, 24(sp)
  MULW s11, t4, s0
  ADDW s0, s3, s11
  ADDI s3, zero, 112
  LW t4, 28(sp)
  MULW s11, t4, s3
  ADDW s3, s0, s11
  ADDI s0, zero, -10
  LW t4, 32(sp)
  MULW s11, t4, s0
  ADDW s0, s3, s11
  ADDI s3, zero, -16
  LW t4, 36(sp)
  MULW s11, t4, s3
  ADDW s3, s0, s11
  ADDI s0, zero, -50
  LW t4, 40(sp)
  MULW s11, t4, s0
  ADDW s0, s3, s11
  ADDI s3, zero, -112
  LW t4, 0(sp)
  MULW s11, t4, s3
  ADDW s3, s0, s11
  ADDI s0, zero, -116
  LW t4, 48(sp)
  MULW s11, t4, s0
  ADDW s0, s3, s11
  ADDI s3, zero, -54
  LW t4, 52(sp)
  MULW s11, t4, s3
  ADDW s3, s0, s11
  ADDI s0, zero, 82
  LW t4, 56(sp)
  MULW s11, t4, s0
  ADDW s0, s3, s11
  ADDI s3, zero, -72
  LW t4, 60(sp)
  MULW s11, t4, s3
  ADDW s3, s0, s11
  ADDI s0, zero, 127
  SLT s11, s0, s3
  BNE s11, zero, bb51
  # implict jump to bb21
bb21:
  SLT s0, s3, zero
  BNE s0, zero, bb50
  # implict jump to bb22
bb22:
  ADD s0, s3, zero
  # implict jump to bb23
bb23:
  ADD s3, s0, zero
  SLLIW s0, s3, 5
  ADDW s3, s2, s0
  ADDI s0, zero, 15
  MULW s2, s7, s0
  ADDI s0, zero, -77
  MULW s11, s10, s0
  ADDW s0, s2, s11
  ADDI s2, zero, 66
  LW t4, 80(sp)
  MULW s11, t4, s2
  ADDW s2, s0, s11
  ADDI s0, zero, -90
  LW t4, 76(sp)
  MULW s11, t4, s0
  ADDW s0, s2, s11
  ADDI s2, zero, -6
  LW t4, 72(sp)
  MULW s11, t4, s2
  ADDW s2, s0, s11
  ADDI s0, zero, -30
  LW t4, 68(sp)
  MULW s11, t4, s0
  ADDW s0, s2, s11
  ADDI s2, zero, -8
  LW t4, 64(sp)
  MULW s11, t4, s2
  ADDW s2, s0, s11
  ADDI s0, zero, 81
  LW t4, 12(sp)
  MULW s11, t4, s0
  ADDW s0, s2, s11
  LW t4, 8(sp)
  SLLIW s2, t4, 1
  ADDW s11, s0, s2
  ADDI s0, zero, -110
  LW t4, 84(sp)
  MULW s2, t4, s0
  ADDW s0, s11, s2
  ADDI s2, zero, -95
  LW t4, 44(sp)
  MULW s11, t4, s2
  ADDW s2, s0, s11
  ADDI s0, zero, 59
  LW t4, 4(sp)
  MULW s11, t4, s0
  ADDW s0, s2, s11
  ADDI s2, zero, 52
  MULW s11, s1, s2
  ADDW s2, s0, s11
  ADDI s0, zero, 15
  LW t4, 16(sp)
  MULW s11, t4, s0
  ADDW s0, s2, s11
  ADDI s2, zero, 55
  LW t4, 20(sp)
  MULW s11, t4, s2
  ADDW s2, s0, s11
  ADDI s0, zero, -33
  LW t4, 24(sp)
  MULW s11, t4, s0
  ADDW s0, s2, s11
  ADDI s2, zero, 14
  LW t4, 28(sp)
  MULW s11, t4, s2
  ADDW s2, s0, s11
  ADDI s0, zero, 58
  LW t4, 32(sp)
  MULW s11, t4, s0
  ADDW s0, s2, s11
  ADDI s2, zero, 67
  LW t4, 36(sp)
  MULW s11, t4, s2
  ADDW s2, s0, s11
  ADDI s0, zero, 86
  LW t4, 40(sp)
  MULW s11, t4, s0
  ADDW s0, s2, s11
  ADDI s2, zero, -79
  LW t4, 0(sp)
  MULW s11, t4, s2
  ADDW s2, s0, s11
  ADDI s0, zero, 48
  LW t4, 48(sp)
  MULW s11, t4, s0
  ADDW s0, s2, s11
  ADDI s2, zero, -13
  LW t4, 52(sp)
  MULW s11, t4, s2
  ADDW s2, s0, s11
  ADDI s0, zero, -15
  LW t4, 56(sp)
  MULW s11, t4, s0
  ADDW s0, s2, s11
  ADDI s2, zero, 66
  LW t4, 60(sp)
  MULW s11, t4, s2
  ADDW s2, s0, s11
  ADDI s0, zero, 127
  SLT s11, s0, s2
  BNE s11, zero, bb49
  # implict jump to bb24
bb24:
  SLT s0, s2, zero
  BNE s0, zero, bb48
  # implict jump to bb25
bb25:
  ADD s0, s2, zero
  # implict jump to bb26
bb26:
  ADD s2, s0, zero
  ADDI s0, zero, -95
  MULW s11, s2, s0
  ADDW s0, s3, s11
  ADDI s2, zero, 33
  MULW s3, s7, s2
  ADDW s2, s3, s6
  ADDI s3, zero, 67
  LW t4, 80(sp)
  MULW s6, t4, s3
  ADDW s3, s2, s6
  ADDI s2, zero, 30
  LW t4, 76(sp)
  MULW s6, t4, s2
  ADDW s2, s3, s6
  ADDI s3, zero, -2
  LW t4, 72(sp)
  MULW s6, t4, s3
  ADDW s3, s2, s6
  ADDI s2, zero, 65
  LW t4, 68(sp)
  MULW s6, t4, s2
  ADDW s2, s3, s6
  ADDI s3, zero, 120
  LW t4, 64(sp)
  MULW s6, t4, s3
  ADDW s3, s2, s6
  ADDI s2, zero, -13
  LW t4, 12(sp)
  MULW s6, t4, s2
  ADDW s2, s3, s6
  ADDI s3, zero, 18
  LW t4, 8(sp)
  MULW s6, t4, s3
  ADDW s3, s2, s6
  ADDI s2, zero, 5
  LW t4, 84(sp)
  MULW s6, t4, s2
  ADDW s2, s3, s6
  ADDI s3, zero, 104
  LW t4, 44(sp)
  MULW s6, t4, s3
  ADDW s3, s2, s6
  ADDI s2, zero, -119
  LW t4, 4(sp)
  MULW s6, t4, s2
  ADDW s2, s3, s6
  ADDI s3, zero, -7
  MULW s6, s1, s3
  ADDW s3, s2, s6
  ADDI s2, zero, 71
  LW t4, 16(sp)
  MULW s11, t4, s2
  ADDW s2, s3, s11
  ADDI s3, zero, 107
  LW t4, 20(sp)
  MULW s11, t4, s3
  ADDW s3, s2, s11
  ADDI s2, zero, 24
  LW t4, 24(sp)
  MULW s11, t4, s2
  ADDW s2, s3, s11
  ADDI s3, zero, 82
  LW t4, 28(sp)
  MULW s11, t4, s3
  ADDW s3, s2, s11
  ADDI s2, zero, -96
  LW t4, 32(sp)
  MULW s11, t4, s2
  ADDW s2, s3, s11
  ADDI s3, zero, -104
  LW t4, 36(sp)
  MULW s11, t4, s3
  ADDW s3, s2, s11
  ADDI s2, zero, -121
  LW t4, 40(sp)
  MULW s11, t4, s2
  ADDW s2, s3, s11
  ADDW s3, s2, s5
  ADDI s2, zero, 97
  LW t4, 48(sp)
  MULW s5, t4, s2
  ADDW s2, s3, s5
  ADDI s3, zero, 83
  LW t4, 52(sp)
  MULW s5, t4, s3
  ADDW s3, s2, s5
  ADDI s2, zero, 46
  LW t4, 56(sp)
  MULW s5, t4, s2
  ADDW s2, s3, s5
  ADDI s3, zero, -84
  LW t4, 60(sp)
  MULW s5, t4, s3
  ADDW s3, s2, s5
  ADDI s2, zero, 127
  SLT s5, s2, s3
  BNE s5, zero, bb47
  # implict jump to bb27
bb27:
  SLT s2, s3, zero
  BNE s2, zero, bb46
  # implict jump to bb28
bb28:
  ADD s2, s3, zero
  # implict jump to bb29
bb29:
  ADD s3, s2, zero
  ADDI s2, zero, -50
  MULW s5, s3, s2
  ADDW s2, s0, s5
  ADDI s0, zero, -29
  MULW s3, s7, s0
  ADDI s0, zero, 7
  MULW s5, s10, s0
  ADDW s0, s3, s5
  ADDW s3, s0, s4
  ADDI s0, zero, 38
  LW t4, 76(sp)
  MULW s4, t4, s0
  ADDW s0, s3, s4
  ADDI s3, zero, -90
  LW t4, 72(sp)
  MULW s4, t4, s3
  ADDW s3, s0, s4
  ADDW s0, s3, s8
  ADDI s3, zero, -32
  LW t4, 64(sp)
  MULW s4, t4, s3
  ADDW s3, s0, s4
  ADDI s0, zero, 37
  LW t4, 12(sp)
  MULW s4, t4, s0
  ADDW s0, s3, s4
  ADDI s3, zero, 36
  LW t4, 8(sp)
  MULW s4, t4, s3
  ADDW s3, s0, s4
  ADDW s0, s3, s9
  ADDI s3, zero, -125
  LW t4, 44(sp)
  MULW s4, t4, s3
  ADDW s3, s0, s4
  ADDI s0, zero, -46
  LW t4, 4(sp)
  MULW s4, t4, s0
  ADDW s0, s3, s4
  ADDI s3, zero, -70
  MULW s4, s1, s3
  ADDW s1, s0, s4
  ADDI s0, zero, 37
  LW t4, 16(sp)
  MULW s3, t4, s0
  ADDW s0, s1, s3
  ADDI s1, zero, -73
  LW t4, 20(sp)
  MULW s3, t4, s1
  ADDW s1, s0, s3
  ADDI s0, zero, -34
  LW t4, 24(sp)
  MULW s3, t4, s0
  ADDW s0, s1, s3
  ADDI s1, zero, -87
  LW t4, 28(sp)
  MULW s3, t4, s1
  ADDW s1, s0, s3
  ADDI s0, zero, -75
  LW t4, 32(sp)
  MULW s3, t4, s0
  ADDW s0, s1, s3
  ADDI s1, zero, 71
  LW t4, 36(sp)
  MULW s3, t4, s1
  ADDW s1, s0, s3
  ADDI s0, zero, -77
  LW t4, 40(sp)
  MULW s3, t4, s0
  ADDW s0, s1, s3
  ADDI s1, zero, 53
  LW t4, 0(sp)
  MULW s3, t4, s1
  ADDW s1, s0, s3
  ADDI s0, zero, 37
  LW t4, 48(sp)
  MULW s3, t4, s0
  ADDW s0, s1, s3
  ADDI s1, zero, -103
  LW t4, 52(sp)
  MULW s3, t4, s1
  ADDW s1, s0, s3
  ADDI s0, zero, -13
  LW t4, 56(sp)
  MULW s3, t4, s0
  ADDW s0, s1, s3
  ADDI s1, zero, -114
  LW t4, 60(sp)
  MULW s3, t4, s1
  ADDW s1, s0, s3
  ADDI s0, zero, 127
  SLT s3, s0, s1
  BNE s3, zero, bb45
  # implict jump to bb30
bb30:
  SLT s0, s1, zero
  BNE s0, zero, bb44
  # implict jump to bb31
bb31:
  ADD s0, s1, zero
  # implict jump to bb32
bb32:
  ADD s1, s0, zero
  ADDI s0, zero, -23
  MULW s3, s1, s0
  ADDW s0, s2, s3
  ADDI s1, zero, 67
  MULW s2, s7, s1
  ADDI s1, zero, 42
  MULW s3, s10, s1
  ADDW s1, s2, s3
  ADDI s2, zero, 41
  LW t4, 80(sp)
  MULW s3, t4, s2
  ADDW s2, s1, s3
  ADDI s1, zero, -123
  LW t4, 76(sp)
  MULW s3, t4, s1
  ADDW s1, s2, s3
  ADDI s2, zero, -92
  LW t4, 72(sp)
  MULW s3, t4, s2
  ADDW s2, s1, s3
  ADDI s1, zero, 10
  LW t4, 68(sp)
  MULW s3, t4, s1
  ADDW s1, s2, s3
  ADDI s2, zero, -77
  LW t4, 64(sp)
  MULW s3, t4, s2
  ADDW s2, s1, s3
  ADDI s1, zero, 75
  LW t4, 12(sp)
  MULW s3, t4, s1
  ADDW s1, s2, s3
  ADDI s2, zero, 96
  LW t4, 8(sp)
  MULW s3, t4, s2
  ADDW s2, s1, s3
  ADDI s1, zero, -51
  LW t4, 84(sp)
  MULW s3, t4, s1
  ADDW s1, s2, s3
  ADDI s2, zero, 109
  LW t4, 44(sp)
  MULW s3, t4, s2
  ADDW s2, s1, s3
  ADDI s1, zero, -74
  LW t4, 4(sp)
  MULW s3, t4, s1
  ADDW s1, s2, s3
  ADDW s2, s1, s6
  ADDI s1, zero, -122
  LW t4, 16(sp)
  MULW s3, t4, s1
  ADDW s1, s2, s3
  ADDI s2, zero, 67
  LW t4, 20(sp)
  MULW s3, t4, s2
  ADDW s2, s1, s3
  ADDI s1, zero, 47
  LW t4, 24(sp)
  MULW s3, t4, s1
  ADDW s1, s2, s3
  ADDI s2, zero, 22
  LW t4, 28(sp)
  MULW s3, t4, s2
  ADDW s2, s1, s3
  ADDI s1, zero, -68
  LW t4, 32(sp)
  MULW s3, t4, s1
  ADDW s1, s2, s3
  ADDI s2, zero, 38
  LW t4, 36(sp)
  MULW s3, t4, s2
  ADDW s2, s1, s3
  ADDI s1, zero, 29
  LW t4, 40(sp)
  MULW s3, t4, s1
  ADDW s1, s2, s3
  ADDI s2, zero, 115
  LW t4, 0(sp)
  MULW s3, t4, s2
  ADDW s2, s1, s3
  ADDI s1, zero, -121
  LW t4, 48(sp)
  MULW s3, t4, s1
  ADDW s1, s2, s3
  ADDI s2, zero, 36
  LW t4, 52(sp)
  MULW s3, t4, s2
  ADDW s2, s1, s3
  ADDI s1, zero, -49
  LW t4, 56(sp)
  MULW s3, t4, s1
  ADDW s1, s2, s3
  ADDI s2, zero, 85
  LW t4, 60(sp)
  MULW s3, t4, s2
  ADDW s2, s1, s3
  ADDI s1, zero, 127
  SLT s3, s1, s2
  BNE s3, zero, bb43
  # implict jump to bb33
bb33:
  SLT s1, s2, zero
  BNE s1, zero, bb42
  # implict jump to bb34
bb34:
  ADD s1, s2, zero
  # implict jump to bb35
bb35:
  ADD s2, s1, zero
  ADDI s1, zero, 46
  MULW s3, s2, s1
  ADDW s1, s0, s3
  SLT s0, zero, s1
  BNE s0, zero, bb41
  # implict jump to bb36
bb36:
  ADD s0, zero, zero
  # implict jump to bb37
bb37:
  ADD s1, s0, zero
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb40
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
  LW t4, 108(sp)
  SUBW s1, t4, s0
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  ADD t4, s1, zero
  SW t4, 96(sp)
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
  ADD s0, zero, zero
  JAL zero, bb32
bb45:
  ADDI s0, zero, 127
  JAL zero, bb32
bb46:
  ADD s2, zero, zero
  JAL zero, bb29
bb47:
  ADDI s2, zero, 127
  JAL zero, bb29
bb48:
  ADD s0, zero, zero
  JAL zero, bb26
bb49:
  ADDI s0, zero, 127
  JAL zero, bb26
bb50:
  ADD s0, zero, zero
  JAL zero, bb23
bb51:
  ADDI s0, zero, 127
  JAL zero, bb23
bb52:
  ADD s3, zero, zero
  JAL zero, bb20
bb53:
  ADDI s3, zero, 127
  JAL zero, bb20
bb54:
  ADD s0, zero, zero
  JAL zero, bb17
bb55:
  ADDI s0, zero, 127
  JAL zero, bb17
bb56:
  ADD s2, zero, zero
  JAL zero, bb14
bb57:
  ADDI s2, zero, 127
  JAL zero, bb14
bb58:
  ADD s0, zero, zero
  JAL zero, bb11
bb59:
  ADDI s0, zero, 127
  JAL zero, bb11
bb60:
  ADD s2, zero, zero
  JAL zero, bb8
bb61:
  ADDI s2, zero, 127
  JAL zero, bb8
bb62:
  ADD s0, zero, zero
  # implict jump to bb63
bb63:
  ADD s1, s0, zero
  SLTI s2, s1, 5
  BNE s2, zero, bb65
  # implict jump to bb64
bb64:
  LW t4, 112(sp)
  ADDIW s2, t4, 1
  ADD t4, s1, zero
  SW t4, 100(sp)
  ADD t4, s2, zero
  SW t4, 104(sp)
  JAL zero, bb4
bb65:
  ADDI s2, zero, 20
  LW t4, 112(sp)
  MULW s3, t4, s2
  ADDI t5, sp, 224
  ADD s2, t5, s3
  SLLIW s3, s1, 2
  ADD s4, s2, s3
  CALL getint
  ADD s2, a0, zero
  SW s2, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb63
model:
  ADDI sp, sp, -160
  SD ra, 48(sp)
  SD s0, 56(sp)
  SD s1, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD s5, 96(sp)
  SD s6, 104(sp)
  SD s7, 112(sp)
  SD s8, 120(sp)
  SD s9, 128(sp)
  SD s10, 136(sp)
  SD s11, 144(sp)
  ADD s0, a0, zero
  LW s1, 0(s0)
  ADDI s2, zero, 85
  MULW s3, s1, s2
  ADDI s2, s0, 4
  LW s4, 0(s2)
  ADDI s2, zero, 23
  MULW s5, s4, s2
  ADDW s2, s3, s5
  ADDI s3, s0, 8
  LW s5, 0(s3)
  ADDI s3, zero, -82
  MULW s6, s5, s3
  ADDW s3, s2, s6
  ADDI s2, s0, 12
  LW s6, 0(s2)
  ADDI s2, zero, -103
  MULW s7, s6, s2
  ADDW s2, s3, s7
  ADDI s3, s0, 16
  LW s7, 0(s3)
  ADDI s3, zero, -123
  MULW s8, s7, s3
  ADDW s3, s2, s8
  ADDI s2, s0, 20
  LW s8, 0(s2)
  SLLIW s2, s8, 6
  ADDW s9, s3, s2
  ADDI s2, s0, 24
  LW s3, 0(s2)
  ADDI s2, zero, -120
  MULW s10, s3, s2
  ADDW s2, s9, s10
  ADDI s9, s0, 28
  LW s10, 0(s9)
  ADDI s9, zero, 50
  MULW s11, s10, s9
  ADDW s9, s2, s11
  ADDI s2, s0, 32
  LW s11, 0(s2)
  ADDI s2, zero, -59
  MULW t0, s11, s2
  ADDW s2, s9, t0
  ADDI s9, s0, 36
  LW t0, 0(s9)
  ADDI s9, zero, 47
  MULW t1, t0, s9
  ADDW s9, s2, t1
  ADDI s2, s0, 40
  LW t1, 0(s2)
  ADDI s2, zero, -111
  MULW t2, t1, s2
  ADDW s2, s9, t2
  ADDI s9, s0, 44
  LW t2, 0(s9)
  ADDI s9, zero, -67
  MULW a1, t2, s9
  ADDW s9, s2, a1
  ADDI s2, s0, 48
  LW a2, 0(s2)
  ADDI s2, zero, -106
  MULW a3, a2, s2
  ADDW s2, s9, a3
  ADDI s9, s0, 52
  LW a3, 0(s9)
  ADDI s9, zero, -75
  MULW a4, a3, s9
  ADDW s9, s2, a4
  ADDI s2, s0, 56
  LW t4, 0(s2)
  SW t4, 40(sp)
  ADDI s2, zero, -102
  LW t4, 40(sp)
  MULW a5, t4, s2
  ADDW s2, s9, a5
  ADDI s9, s0, 60
  LW t4, 0(s9)
  SW t4, 36(sp)
  ADDI s9, zero, 34
  LW t4, 36(sp)
  MULW a6, t4, s9
  ADDW s9, s2, a6
  ADDI s2, s0, 64
  LW t4, 0(s2)
  SW t4, 32(sp)
  ADDI s2, zero, -39
  LW t4, 32(sp)
  MULW a7, t4, s2
  ADDW s2, s9, a7
  ADDI s9, s0, 68
  LW t4, 0(s9)
  SW t4, 28(sp)
  ADDI s9, zero, 65
  LW t4, 28(sp)
  MULW t6, t4, s9
  ADDW s9, s2, t6
  ADDI s2, s0, 72
  LW t4, 0(s2)
  SW t4, 0(sp)
  ADDI s2, zero, 47
  LW t4, 0(sp)
  MULW t6, t4, s2
  ADDW s2, s9, t6
  ADDI s9, s0, 76
  LW t4, 0(s9)
  SW t4, 4(sp)
  ADDI s9, zero, 113
  LW t4, 4(sp)
  MULW t6, t4, s9
  ADDW s9, s2, t6
  ADDI s2, s0, 80
  LW t4, 0(s2)
  SW t4, 8(sp)
  ADDI s2, zero, 110
  LW t4, 8(sp)
  MULW t6, t4, s2
  ADDW s2, s9, t6
  ADDI s9, s0, 84
  LW t4, 0(s9)
  SW t4, 12(sp)
  ADDI s9, zero, 47
  LW t4, 12(sp)
  MULW t6, t4, s9
  ADDW s9, s2, t6
  ADDI s2, s0, 88
  LW t4, 0(s2)
  SW t4, 16(sp)
  ADDI s2, zero, -4
  LW t4, 16(sp)
  MULW t6, t4, s2
  ADDW s2, s9, t6
  ADDI s9, s0, 92
  LW t4, 0(s9)
  SW t4, 20(sp)
  ADDI s9, zero, 80
  LW t4, 20(sp)
  MULW t6, t4, s9
  ADDW s9, s2, t6
  ADDI s2, s0, 96
  LW t4, 0(s2)
  SW t4, 24(sp)
  ADDI s2, zero, 46
  LW t4, 24(sp)
  MULW t6, t4, s2
  ADDW s2, s9, t6
  ADDI s9, zero, 127
  SLT t6, s9, s2
  BNE t6, zero, bb118
  # implict jump to bb67
bb67:
  SLT s9, s2, zero
  BNE s9, zero, bb117
  # implict jump to bb68
bb68:
  ADD s9, s2, zero
  # implict jump to bb69
bb69:
  ADD s2, s9, zero
  ADDI s9, zero, 39
  MULW t6, s2, s9
  ADDI s2, zero, -106
  MULW s9, s1, s2
  ADDI s2, zero, 126
  MULW s0, s4, s2
  ADDW s2, s9, s0
  ADDI s0, zero, -18
  MULW s9, s5, s0
  ADDW s0, s2, s9
  ADDI s2, zero, -31
  MULW s9, s6, s2
  ADDW s2, s0, s9
  ADDI s0, zero, -8
  MULW s9, s7, s0
  ADDW s0, s2, s9
  ADDI s2, zero, 47
  MULW s9, s8, s2
  ADDW s2, s0, s9
  ADDI s0, zero, -4
  MULW s9, s3, s0
  ADDW s0, s2, s9
  ADDI s2, zero, 67
  MULW s9, s10, s2
  ADDW s2, s0, s9
  ADDI s0, zero, -94
  MULW s9, s11, s0
  ADDW s0, s2, s9
  ADDI s2, zero, -121
  MULW s9, t0, s2
  ADDW s2, s0, s9
  ADDI s0, zero, 7
  MULW s9, t1, s0
  ADDW s0, s2, s9
  ADDI s2, zero, -21
  MULW s9, t2, s2
  ADDW s2, s0, s9
  ADDI s0, zero, -60
  MULW s9, a2, s0
  ADDW s0, s2, s9
  ADDI s2, zero, -43
  MULW s9, a3, s2
  ADDW s2, s0, s9
  ADDI s0, zero, 105
  LW t4, 40(sp)
  MULW s9, t4, s0
  ADDW s0, s2, s9
  ADDI s2, zero, -42
  LW t4, 36(sp)
  MULW s9, t4, s2
  ADDW s2, s0, s9
  ADDI s0, zero, 87
  LW t4, 32(sp)
  MULW s9, t4, s0
  ADDW s0, s2, s9
  ADDI s2, zero, 29
  LW t4, 28(sp)
  MULW s9, t4, s2
  ADDW s2, s0, s9
  ADDI s0, zero, -106
  LW t4, 0(sp)
  MULW s9, t4, s0
  ADDW s0, s2, s9
  ADDI s2, zero, -31
  LW t4, 4(sp)
  MULW s9, t4, s2
  ADDW s2, s0, s9
  ADDI s0, zero, -110
  LW t4, 8(sp)
  MULW s9, t4, s0
  ADDW s0, s2, s9
  ADDI s2, zero, -100
  LW t4, 12(sp)
  MULW s9, t4, s2
  ADDW s2, s0, s9
  ADDI s0, zero, -22
  LW t4, 16(sp)
  MULW s9, t4, s0
  ADDW s0, s2, s9
  ADDI s2, zero, -75
  LW t4, 20(sp)
  MULW s9, t4, s2
  ADDW s2, s0, s9
  ADDI s0, zero, -125
  LW t4, 24(sp)
  MULW s9, t4, s0
  ADDW s0, s2, s9
  ADDI s2, zero, 127
  SLT s9, s2, s0
  BNE s9, zero, bb116
  # implict jump to bb70
bb70:
  SLT s2, s0, zero
  BNE s2, zero, bb115
  # implict jump to bb71
bb71:
  ADD s2, s0, zero
  # implict jump to bb72
bb72:
  ADD s0, s2, zero
  ADDI s2, zero, 77
  MULW s9, s0, s2
  ADDW s0, t6, s9
  ADDI s2, zero, 26
  MULW s9, s1, s2
  ADDI s2, zero, 76
  MULW t6, s4, s2
  ADDW s2, s9, t6
  ADDI s9, zero, -70
  MULW t6, s5, s9
  ADDW s9, s2, t6
  ADDI s2, zero, 29
  MULW a7, s6, s2
  ADDW s2, s9, a7
  ADDI s9, zero, -95
  MULW a7, s7, s9
  ADDW s9, s2, a7
  ADDI s2, zero, 96
  MULW a7, s8, s2
  ADDW s2, s9, a7
  ADDI s9, zero, 52
  MULW a7, s3, s9
  ADDW s9, s2, a7
  ADDI s2, zero, -68
  MULW a7, s10, s2
  ADDW s2, s9, a7
  ADDI s9, zero, -5
  MULW a7, s11, s9
  ADDW s9, s2, a7
  ADDI s2, zero, 34
  MULW a7, t0, s2
  ADDW s2, s9, a7
  ADDI s9, zero, -34
  MULW a7, t1, s9
  ADDW s9, s2, a7
  ADDI s2, zero, 102
  MULW a7, t2, s2
  ADDW s2, s9, a7
  ADDI s9, zero, 6
  MULW a7, a2, s9
  ADDW s9, s2, a7
  ADDI s2, zero, -38
  MULW a7, a3, s2
  ADDW s2, s9, a7
  ADDI s9, zero, 27
  LW t4, 40(sp)
  MULW a7, t4, s9
  ADDW s9, s2, a7
  ADDI s2, zero, 110
  LW t4, 36(sp)
  MULW a7, t4, s2
  ADDW s2, s9, a7
  ADDI s9, zero, 116
  LW t4, 32(sp)
  MULW a7, t4, s9
  ADDW s9, s2, a7
  ADDI s2, zero, 39
  LW t4, 28(sp)
  MULW a7, t4, s2
  ADDW s2, s9, a7
  ADDI s9, zero, -63
  LW t4, 0(sp)
  MULW a7, t4, s9
  ADDW s9, s2, a7
  ADDI s2, zero, -99
  LW t4, 4(sp)
  MULW a7, t4, s2
  ADDW s2, s9, a7
  ADDI s9, zero, 65
  LW t4, 8(sp)
  MULW a7, t4, s9
  ADDW s9, s2, a7
  ADDI s2, zero, 120
  LW t4, 12(sp)
  MULW a6, t4, s2
  ADDW s2, s9, a6
  ADDI s9, zero, -39
  LW t4, 16(sp)
  MULW a6, t4, s9
  ADDW s9, s2, a6
  ADDI s2, zero, -6
  LW t4, 20(sp)
  MULW a6, t4, s2
  ADDW s2, s9, a6
  ADDI s9, zero, 94
  LW t4, 24(sp)
  MULW a6, t4, s9
  ADDW s9, s2, a6
  ADDI s2, zero, 127
  SLT a6, s2, s9
  BNE a6, zero, bb114
  # implict jump to bb73
bb73:
  SLT s2, s9, zero
  BNE s2, zero, bb113
  # implict jump to bb74
bb74:
  ADD s2, s9, zero
  # implict jump to bb75
bb75:
  ADD s9, s2, zero
  ADDI s2, zero, 127
  MULW a6, s9, s2
  ADDW s2, s0, a6
  ADDI s0, zero, -23
  MULW s9, s1, s0
  ADDI s0, zero, -63
  MULW a6, s4, s0
  ADDW s0, s9, a6
  ADDI s9, zero, 49
  MULW a6, s5, s9
  ADDW s9, s0, a6
  ADDI s0, zero, 50
  MULW a6, s6, s0
  ADDW s0, s9, a6
  ADDI s9, zero, 72
  MULW a6, s7, s9
  ADDW s9, s0, a6
  ADDI s0, zero, 85
  MULW a6, s8, s0
  ADDW s0, s9, a6
  ADDI s9, zero, -30
  MULW a6, s3, s9
  ADDW s9, s0, a6
  ADDI s0, zero, 12
  MULW a6, s10, s0
  ADDW s0, s9, a6
  ADDI s9, zero, 125
  MULW a6, s11, s9
  ADDW s9, s0, a6
  ADDI s0, zero, -117
  MULW a5, t0, s0
  ADDW s0, s9, a5
  ADDI s9, zero, -65
  MULW a5, t1, s9
  ADDW s9, s0, a5
  ADDW s0, s9, a1
  ADDI s9, zero, 125
  MULW a1, a2, s9
  ADDW s9, s0, a1
  ADDI s0, zero, 110
  MULW a1, a3, s0
  ADDW s0, s9, a1
  ADDI s9, zero, -31
  LW t4, 40(sp)
  MULW a1, t4, s9
  ADDW s9, s0, a1
  ADDI s0, zero, -123
  LW t4, 36(sp)
  MULW a1, t4, s0
  ADDW s0, s9, a1
  ADDI s9, zero, 83
  LW t4, 32(sp)
  MULW a1, t4, s9
  ADDW s9, s0, a1
  ADDI s0, zero, 122
  LW t4, 28(sp)
  MULW a1, t4, s0
  ADDW s0, s9, a1
  ADDI s9, zero, 11
  LW t4, 0(sp)
  MULW a1, t4, s9
  ADDW s9, s0, a1
  ADDI s0, zero, -23
  LW t4, 4(sp)
  MULW a1, t4, s0
  ADDW s0, s9, a1
  ADDI s9, zero, -47
  LW t4, 8(sp)
  MULW a1, t4, s9
  ADDW s9, s0, a1
  ADDI s0, zero, -32
  LW t4, 12(sp)
  MULW a1, t4, s0
  ADDW s0, s9, a1
  ADDI s9, zero, -117
  LW t4, 16(sp)
  MULW a1, t4, s9
  ADDW s9, s0, a1
  ADDI s0, zero, 95
  LW t4, 20(sp)
  MULW a1, t4, s0
  ADDW s0, s9, a1
  ADDI s9, zero, 118
  LW t4, 24(sp)
  MULW a1, t4, s9
  ADDW s9, s0, a1
  ADDI s0, zero, 127
  SLT a1, s0, s9
  BNE a1, zero, bb112
  # implict jump to bb76
bb76:
  SLT s0, s9, zero
  BNE s0, zero, bb111
  # implict jump to bb77
bb77:
  ADD s0, s9, zero
  # implict jump to bb78
bb78:
  ADD s9, s0, zero
  ADDI s0, zero, -106
  MULW a1, s9, s0
  ADDW s0, s2, a1
  SLLIW s2, s1, 3
  ADDI s9, zero, 82
  MULW a1, s4, s9
  ADDW s9, s2, a1
  ADDI s2, zero, -104
  MULW a5, s5, s2
  ADDW s2, s9, a5
  ADDI s9, zero, 101
  MULW a5, s6, s9
  ADDW s9, s2, a5
  ADDI s2, zero, -116
  MULW a5, s7, s2
  ADDW s2, s9, a5
  ADDI s9, zero, -63
  MULW a5, s8, s9
  ADDW s9, s2, a5
  ADDI s2, zero, -16
  MULW a5, s3, s2
  ADDW s2, s9, a5
  ADDI s9, zero, -70
  MULW a5, s10, s9
  ADDW s9, s2, a5
  ADDW s2, s9, a6
  ADDI s9, zero, 75
  MULW a5, t0, s9
  ADDW s9, s2, a5
  ADDI s2, zero, 66
  MULW a5, t1, s2
  ADDW s2, s9, a5
  ADDI s9, zero, -96
  MULW a5, t2, s9
  ADDW s9, s2, a5
  ADDI s2, zero, -101
  MULW a5, a2, s2
  ADDW s2, s9, a5
  ADDI s9, zero, -114
  MULW a5, a3, s9
  ADDW s9, s2, a5
  ADDI s2, zero, 59
  LW t4, 40(sp)
  MULW a5, t4, s2
  ADDW s2, s9, a5
  ADDI s9, zero, 12
  LW t4, 36(sp)
  MULW a5, t4, s9
  ADDW s9, s2, a5
  ADDI s2, zero, 5
  LW t4, 32(sp)
  MULW a5, t4, s2
  ADDW s2, s9, a5
  ADDI s9, zero, -95
  LW t4, 28(sp)
  MULW a5, t4, s9
  ADDW s9, s2, a5
  ADDI s2, zero, 116
  LW t4, 0(sp)
  MULW a5, t4, s2
  ADDW s2, s9, a5
  ADDI s9, zero, -93
  LW t4, 4(sp)
  MULW a5, t4, s9
  ADDW s9, s2, a5
  ADDI s2, zero, 15
  LW t4, 8(sp)
  MULW a5, t4, s2
  ADDW s2, s9, a5
  ADDI s9, zero, 79
  LW t4, 12(sp)
  MULW a5, t4, s9
  ADDW s9, s2, a5
  ADDI s2, zero, 3
  LW t4, 16(sp)
  MULW a5, t4, s2
  ADDW s2, s9, a5
  ADDI s9, zero, 49
  LW t4, 20(sp)
  MULW a5, t4, s9
  ADDW s9, s2, a5
  ADDI s2, zero, -124
  LW t4, 24(sp)
  MULW a5, t4, s2
  ADDW s2, s9, a5
  ADDI s9, zero, 127
  SLT a5, s9, s2
  BNE a5, zero, bb110
  # implict jump to bb79
bb79:
  SLT s9, s2, zero
  BNE s9, zero, bb109
  # implict jump to bb80
bb80:
  ADD s9, s2, zero
  # implict jump to bb81
bb81:
  ADD s2, s9, zero
  ADDI s9, zero, -3
  MULW a5, s2, s9
  ADDW s2, s0, a5
  ADDI s0, zero, 81
  MULW s9, s1, s0
  ADDI s0, zero, 68
  MULW a5, s4, s0
  ADDW s0, s9, a5
  ADDI s9, zero, -102
  MULW a5, s5, s9
  ADDW s9, s0, a5
  ADDI s0, zero, -74
  MULW a5, s6, s0
  ADDW s0, s9, a5
  ADDI s9, zero, 121
  MULW a5, s7, s9
  ADDW s9, s0, a5
  ADDI s0, zero, -15
  MULW a5, s8, s0
  ADDW s0, s9, a5
  ADDI s9, zero, 55
  MULW a6, s3, s9
  ADDW s9, s0, a6
  ADDI s0, zero, 101
  MULW a6, s10, s0
  ADDW s0, s9, a6
  ADDI s9, zero, -13
  MULW a6, s11, s9
  ADDW s9, s0, a6
  ADDI s0, zero, -62
  MULW a6, t0, s0
  ADDW s0, s9, a6
  SLLIW s9, t1, 6
  ADDW a4, s0, s9
  ADDI s0, zero, 114
  MULW s9, t2, s0
  ADDW s0, a4, s9
  ADDI s9, zero, 38
  MULW a4, a2, s9
  ADDW s9, s0, a4
  ADDI s0, zero, -21
  MULW a4, a3, s0
  ADDW s0, s9, a4
  ADDI s9, zero, 112
  LW t4, 40(sp)
  MULW a4, t4, s9
  ADDW s9, s0, a4
  ADDI s0, zero, 114
  LW t4, 36(sp)
  MULW a4, t4, s0
  ADDW s0, s9, a4
  ADDI s9, zero, 112
  LW t4, 32(sp)
  MULW a4, t4, s9
  ADDW s9, s0, a4
  ADDI s0, zero, -10
  LW t4, 28(sp)
  MULW a4, t4, s0
  ADDW s0, s9, a4
  ADDI s9, zero, -16
  LW t4, 0(sp)
  MULW a4, t4, s9
  ADDW s9, s0, a4
  ADDI s0, zero, -50
  LW t4, 4(sp)
  MULW a4, t4, s0
  ADDW s0, s9, a4
  ADDI s9, zero, -112
  LW t4, 8(sp)
  MULW a4, t4, s9
  ADDW s9, s0, a4
  ADDI s0, zero, -116
  LW t4, 12(sp)
  MULW a4, t4, s0
  ADDW s0, s9, a4
  ADDI s9, zero, -54
  LW t4, 16(sp)
  MULW a4, t4, s9
  ADDW s9, s0, a4
  ADDI s0, zero, 82
  LW t4, 20(sp)
  MULW a4, t4, s0
  ADDW s0, s9, a4
  ADDI s9, zero, -72
  LW t4, 24(sp)
  MULW a4, t4, s9
  ADDW s9, s0, a4
  ADDI s0, zero, 127
  SLT a4, s0, s9
  BNE a4, zero, bb108
  # implict jump to bb82
bb82:
  SLT s0, s9, zero
  BNE s0, zero, bb107
  # implict jump to bb83
bb83:
  ADD s0, s9, zero
  # implict jump to bb84
bb84:
  ADD s9, s0, zero
  SLLIW s0, s9, 5
  ADDW s9, s2, s0
  ADDI s0, zero, 15
  MULW s2, s1, s0
  ADDI s0, zero, -77
  MULW a4, s4, s0
  ADDW s0, s2, a4
  ADDI s2, zero, 66
  MULW a4, s5, s2
  ADDW s2, s0, a4
  ADDI s0, zero, -90
  MULW a4, s6, s0
  ADDW s0, s2, a4
  ADDI s2, zero, -6
  MULW a4, s7, s2
  ADDW s2, s0, a4
  ADDI s0, zero, -30
  MULW a4, s8, s0
  ADDW s0, s2, a4
  ADDI s2, zero, -8
  MULW a4, s3, s2
  ADDW s2, s0, a4
  ADDI s0, zero, 81
  MULW a4, s10, s0
  ADDW s0, s2, a4
  SLLIW s2, s11, 1
  ADDW a4, s0, s2
  ADDI s0, zero, -110
  MULW s2, t0, s0
  ADDW s0, a4, s2
  ADDI s2, zero, -95
  MULW a4, t1, s2
  ADDW s2, s0, a4
  ADDI s0, zero, 59
  MULW a4, t2, s0
  ADDW s0, s2, a4
  ADDI s2, zero, 52
  MULW a4, a2, s2
  ADDW s2, s0, a4
  ADDI s0, zero, 15
  MULW a4, a3, s0
  ADDW s0, s2, a4
  ADDI s2, zero, 55
  LW t4, 40(sp)
  MULW a4, t4, s2
  ADDW s2, s0, a4
  ADDI s0, zero, -33
  LW t4, 36(sp)
  MULW a4, t4, s0
  ADDW s0, s2, a4
  ADDI s2, zero, 14
  LW t4, 32(sp)
  MULW a4, t4, s2
  ADDW s2, s0, a4
  ADDI s0, zero, 58
  LW t4, 28(sp)
  MULW a4, t4, s0
  ADDW s0, s2, a4
  ADDI s2, zero, 67
  LW t4, 0(sp)
  MULW a4, t4, s2
  ADDW s2, s0, a4
  ADDI s0, zero, 86
  LW t4, 4(sp)
  MULW a4, t4, s0
  ADDW s0, s2, a4
  ADDI s2, zero, -79
  LW t4, 8(sp)
  MULW a4, t4, s2
  ADDW s2, s0, a4
  ADDI s0, zero, 48
  LW t4, 12(sp)
  MULW a4, t4, s0
  ADDW s0, s2, a4
  ADDI s2, zero, -13
  LW t4, 16(sp)
  MULW a4, t4, s2
  ADDW s2, s0, a4
  ADDI s0, zero, -15
  LW t4, 20(sp)
  MULW a4, t4, s0
  ADDW s0, s2, a4
  ADDI s2, zero, 66
  LW t4, 24(sp)
  MULW a4, t4, s2
  ADDW s2, s0, a4
  ADDI s0, zero, 127
  SLT a4, s0, s2
  BNE a4, zero, bb106
  # implict jump to bb85
bb85:
  SLT s0, s2, zero
  BNE s0, zero, bb105
  # implict jump to bb86
bb86:
  ADD s0, s2, zero
  # implict jump to bb87
bb87:
  ADD s2, s0, zero
  ADDI s0, zero, -95
  MULW a4, s2, s0
  ADDW s0, s9, a4
  ADDI s2, zero, 33
  MULW s9, s1, s2
  ADDW s2, s9, a1
  ADDI s9, zero, 67
  MULW a1, s5, s9
  ADDW s9, s2, a1
  ADDI s2, zero, 30
  MULW a1, s6, s2
  ADDW s2, s9, a1
  ADDI s9, zero, -2
  MULW a1, s7, s9
  ADDW s9, s2, a1
  ADDI s2, zero, 65
  MULW a1, s8, s2
  ADDW s2, s9, a1
  ADDI s9, zero, 120
  MULW a1, s3, s9
  ADDW s9, s2, a1
  ADDI s2, zero, -13
  MULW a1, s10, s2
  ADDW s2, s9, a1
  ADDI s9, zero, 18
  MULW a1, s11, s9
  ADDW s9, s2, a1
  ADDI s2, zero, 5
  MULW a1, t0, s2
  ADDW s2, s9, a1
  ADDI s9, zero, 104
  MULW a1, t1, s9
  ADDW s9, s2, a1
  ADDI s2, zero, -119
  MULW a1, t2, s2
  ADDW s2, s9, a1
  ADDI s9, zero, -7
  MULW a1, a2, s9
  ADDW s9, s2, a1
  ADDI s2, zero, 71
  MULW a4, a3, s2
  ADDW s2, s9, a4
  ADDI s9, zero, 107
  LW t4, 40(sp)
  MULW a4, t4, s9
  ADDW s9, s2, a4
  ADDI s2, zero, 24
  LW t4, 36(sp)
  MULW a4, t4, s2
  ADDW s2, s9, a4
  ADDI s9, zero, 82
  LW t4, 32(sp)
  MULW a4, t4, s9
  ADDW s9, s2, a4
  ADDI s2, zero, -96
  LW t4, 28(sp)
  MULW a4, t4, s2
  ADDW s2, s9, a4
  ADDI s9, zero, -104
  LW t4, 0(sp)
  MULW a4, t4, s9
  ADDW s9, s2, a4
  ADDI s2, zero, -121
  LW t4, 4(sp)
  MULW a4, t4, s2
  ADDW s2, s9, a4
  ADDW s9, s2, a7
  ADDI s2, zero, 97
  LW t4, 12(sp)
  MULW a4, t4, s2
  ADDW s2, s9, a4
  ADDI s9, zero, 83
  LW t4, 16(sp)
  MULW a4, t4, s9
  ADDW s9, s2, a4
  ADDI s2, zero, 46
  LW t4, 20(sp)
  MULW a4, t4, s2
  ADDW s2, s9, a4
  ADDI s9, zero, -84
  LW t4, 24(sp)
  MULW a4, t4, s9
  ADDW s9, s2, a4
  ADDI s2, zero, 127
  SLT a4, s2, s9
  BNE a4, zero, bb104
  # implict jump to bb88
bb88:
  SLT s2, s9, zero
  BNE s2, zero, bb103
  # implict jump to bb89
bb89:
  ADD s2, s9, zero
  # implict jump to bb90
bb90:
  ADD s9, s2, zero
  ADDI s2, zero, -50
  MULW a4, s9, s2
  ADDW s2, s0, a4
  ADDI s0, zero, -29
  MULW s9, s1, s0
  ADDI s0, zero, 7
  MULW a4, s4, s0
  ADDW s0, s9, a4
  ADDW s9, s0, t6
  ADDI s0, zero, 38
  MULW a4, s6, s0
  ADDW s0, s9, a4
  ADDI s9, zero, -90
  MULW a4, s7, s9
  ADDW s9, s0, a4
  ADDW s0, s9, a5
  ADDI s9, zero, -32
  MULW a4, s3, s9
  ADDW s9, s0, a4
  ADDI s0, zero, 37
  MULW a4, s10, s0
  ADDW s0, s9, a4
  ADDI s9, zero, 36
  MULW a4, s11, s9
  ADDW s9, s0, a4
  ADDW s0, s9, a6
  ADDI s9, zero, -125
  MULW a4, t1, s9
  ADDW s9, s0, a4
  ADDI s0, zero, -46
  MULW a4, t2, s0
  ADDW s0, s9, a4
  ADDI s9, zero, -70
  MULW a4, a2, s9
  ADDW s9, s0, a4
  ADDI s0, zero, 37
  MULW a2, a3, s0
  ADDW s0, s9, a2
  ADDI s9, zero, -73
  LW t4, 40(sp)
  MULW a2, t4, s9
  ADDW s9, s0, a2
  ADDI s0, zero, -34
  LW t4, 36(sp)
  MULW a2, t4, s0
  ADDW s0, s9, a2
  ADDI s9, zero, -87
  LW t4, 32(sp)
  MULW a2, t4, s9
  ADDW s9, s0, a2
  ADDI s0, zero, -75
  LW t4, 28(sp)
  MULW a2, t4, s0
  ADDW s0, s9, a2
  ADDI s9, zero, 71
  LW t4, 0(sp)
  MULW a2, t4, s9
  ADDW s9, s0, a2
  ADDI s0, zero, -77
  LW t4, 4(sp)
  MULW a2, t4, s0
  ADDW s0, s9, a2
  ADDI s9, zero, 53
  LW t4, 8(sp)
  MULW a2, t4, s9
  ADDW s9, s0, a2
  ADDI s0, zero, 37
  LW t4, 12(sp)
  MULW a2, t4, s0
  ADDW s0, s9, a2
  ADDI s9, zero, -103
  LW t4, 16(sp)
  MULW a2, t4, s9
  ADDW s9, s0, a2
  ADDI s0, zero, -13
  LW t4, 20(sp)
  MULW a2, t4, s0
  ADDW s0, s9, a2
  ADDI s9, zero, -114
  LW t4, 24(sp)
  MULW a2, t4, s9
  ADDW s9, s0, a2
  ADDI s0, zero, 127
  SLT a2, s0, s9
  BNE a2, zero, bb102
  # implict jump to bb91
bb91:
  SLT s0, s9, zero
  BNE s0, zero, bb101
  # implict jump to bb92
bb92:
  ADD s0, s9, zero
  # implict jump to bb93
bb93:
  ADD s9, s0, zero
  ADDI s0, zero, -23
  MULW a2, s9, s0
  ADDW s0, s2, a2
  ADDI s2, zero, 67
  MULW s9, s1, s2
  ADDI s1, zero, 42
  MULW s2, s4, s1
  ADDW s1, s9, s2
  ADDI s2, zero, 41
  MULW s4, s5, s2
  ADDW s2, s1, s4
  ADDI s1, zero, -123
  MULW s4, s6, s1
  ADDW s1, s2, s4
  ADDI s2, zero, -92
  MULW s4, s7, s2
  ADDW s2, s1, s4
  ADDI s1, zero, 10
  MULW s4, s8, s1
  ADDW s1, s2, s4
  ADDI s2, zero, -77
  MULW s4, s3, s2
  ADDW s2, s1, s4
  ADDI s1, zero, 75
  MULW s3, s10, s1
  ADDW s1, s2, s3
  ADDI s2, zero, 96
  MULW s3, s11, s2
  ADDW s2, s1, s3
  ADDI s1, zero, -51
  MULW s3, t0, s1
  ADDW s1, s2, s3
  ADDI s2, zero, 109
  MULW s3, t1, s2
  ADDW s2, s1, s3
  ADDI s1, zero, -74
  MULW s3, t2, s1
  ADDW s1, s2, s3
  ADDW s2, s1, a1
  ADDI s1, zero, -122
  MULW s3, a3, s1
  ADDW s1, s2, s3
  ADDI s2, zero, 67
  LW t4, 40(sp)
  MULW s3, t4, s2
  ADDW s2, s1, s3
  ADDI s1, zero, 47
  LW t4, 36(sp)
  MULW s3, t4, s1
  ADDW s1, s2, s3
  ADDI s2, zero, 22
  LW t4, 32(sp)
  MULW s3, t4, s2
  ADDW s2, s1, s3
  ADDI s1, zero, -68
  LW t4, 28(sp)
  MULW s3, t4, s1
  ADDW s1, s2, s3
  ADDI s2, zero, 38
  LW t4, 0(sp)
  MULW s3, t4, s2
  ADDW s2, s1, s3
  ADDI s1, zero, 29
  LW t4, 4(sp)
  MULW s3, t4, s1
  ADDW s1, s2, s3
  ADDI s2, zero, 115
  LW t4, 8(sp)
  MULW s3, t4, s2
  ADDW s2, s1, s3
  ADDI s1, zero, -121
  LW t4, 12(sp)
  MULW s3, t4, s1
  ADDW s1, s2, s3
  ADDI s2, zero, 36
  LW t4, 16(sp)
  MULW s3, t4, s2
  ADDW s2, s1, s3
  ADDI s1, zero, -49
  LW t4, 20(sp)
  MULW s3, t4, s1
  ADDW s1, s2, s3
  ADDI s2, zero, 85
  LW t4, 24(sp)
  MULW s3, t4, s2
  ADDW s2, s1, s3
  ADDI s1, zero, 127
  SLT s3, s1, s2
  BNE s3, zero, bb100
  # implict jump to bb94
bb94:
  SLT s1, s2, zero
  BNE s1, zero, bb99
  # implict jump to bb95
bb95:
  ADD s1, s2, zero
  # implict jump to bb96
bb96:
  ADD s2, s1, zero
  ADDI s1, zero, 46
  MULW s3, s2, s1
  ADDW s1, s0, s3
  SLT s0, zero, s1
  BNE s0, zero, bb98
  # implict jump to bb97
bb97:
  ADD a0, zero, zero
  LD ra, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s5, 96(sp)
  LD s6, 104(sp)
  LD s7, 112(sp)
  LD s8, 120(sp)
  LD s9, 128(sp)
  LD s10, 136(sp)
  LD s11, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb98:
  ADDI a0, zero, 1
  LD ra, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s5, 96(sp)
  LD s6, 104(sp)
  LD s7, 112(sp)
  LD s8, 120(sp)
  LD s9, 128(sp)
  LD s10, 136(sp)
  LD s11, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb99:
  ADD s1, zero, zero
  JAL zero, bb96
bb100:
  ADDI s1, zero, 127
  JAL zero, bb96
bb101:
  ADD s0, zero, zero
  JAL zero, bb93
bb102:
  ADDI s0, zero, 127
  JAL zero, bb93
bb103:
  ADD s2, zero, zero
  JAL zero, bb90
bb104:
  ADDI s2, zero, 127
  JAL zero, bb90
bb105:
  ADD s0, zero, zero
  JAL zero, bb87
bb106:
  ADDI s0, zero, 127
  JAL zero, bb87
bb107:
  ADD s0, zero, zero
  JAL zero, bb84
bb108:
  ADDI s0, zero, 127
  JAL zero, bb84
bb109:
  ADD s9, zero, zero
  JAL zero, bb81
bb110:
  ADDI s9, zero, 127
  JAL zero, bb81
bb111:
  ADD s0, zero, zero
  JAL zero, bb78
bb112:
  ADDI s0, zero, 127
  JAL zero, bb78
bb113:
  ADD s2, zero, zero
  JAL zero, bb75
bb114:
  ADDI s2, zero, 127
  JAL zero, bb75
bb115:
  ADD s2, zero, zero
  JAL zero, bb72
bb116:
  ADDI s2, zero, 127
  JAL zero, bb72
bb117:
  ADD s9, zero, zero
  JAL zero, bb69
bb118:
  ADDI s9, zero, 127
  JAL zero, bb69
relu_reg:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 127
  SLT s2, s1, s0
  BNE s2, zero, bb123
  # implict jump to bb120
bb120:
  SLT s1, s0, zero
  BNE s1, zero, bb122
  # implict jump to bb121
bb121:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb122:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb123:
  ADDI a0, zero, 127
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
