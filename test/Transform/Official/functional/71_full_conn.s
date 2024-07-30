.global main
.global model
.global relu_reg
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -336
  SD ra, 112(sp)
  SD s0, 120(sp)
  SD s1, 128(sp)
  SD s2, 136(sp)
  SD s3, 144(sp)
  SD s4, 256(sp)
  SD s8, 264(sp)
  SD s9, 272(sp)
  SD s11, 280(sp)
  SD s5, 288(sp)
  SD s10, 296(sp)
  SD s6, 312(sp)
  SD s7, 320(sp)
  CALL getint
  ADD s0, a0, zero
  ADDI s1, zero, 0
  BLT s1, s0, bb2
  # implict jump to bb1
bb1:
  ADD a0, zero, zero
  LD ra, 112(sp)
  LD s0, 120(sp)
  LD s1, 128(sp)
  LD s2, 136(sp)
  LD s3, 144(sp)
  LD s4, 256(sp)
  LD s8, 264(sp)
  LD s9, 272(sp)
  LD s11, 280(sp)
  LD s5, 288(sp)
  LD s10, 296(sp)
  LD s6, 312(sp)
  LD s7, 320(sp)
  ADDI sp, sp, 336
  JALR zero, 0(ra)
bb2:
  ADD t4, s0, zero
  SW t4, 8(sp)
  # implict jump to bb3
bb3:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb4
bb4:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  ADDI s4, zero, 20
  LW t4, 100(sp)
  MULW s4, t4, s4
  ADDI t4, sp, 152
  ADD t4, t4, s4
  SD t4, 304(sp)
  ADD t4, zero, zero
  SW t4, 108(sp)
  # implict jump to bb5
bb5:
  LW t4, 108(sp)
  ADD s6, t4, zero
  SLLIW s7, s6, 2
  LD t4, 304(sp)
  ADD s7, t4, s7
  CALL getint
  ADD s8, a0, zero
  SW s8, 0(s7)
  ADDIW t4, s6, 1
  SW t4, 68(sp)
  LW t4, 68(sp)
  SLTI s7, t4, 5
  BNE s7, zero, bb68
  # implict jump to bb6
bb6:
  # implict jump to bb7
bb7:
  LW t3, 100(sp)
  ADDIW t4, t3, 1
  SW t4, 4(sp)
  LW t4, 4(sp)
  SLTI s8, t4, 5
  BNE s8, zero, bb67
  # implict jump to bb8
bb8:
  # implict jump to bb9
bb9:
  LW s8, 152(sp)
  ADDI s9, zero, 85
  MULW s9, s8, s9
  LW s10, 156(sp)
  ADDI s11, zero, 23
  MULW s11, s10, s11
  ADDW s9, s9, s11
  LW s11, 160(sp)
  ADDI s4, zero, -82
  MULW s4, s11, s4
  ADDW s4, s9, s4
  LW t4, 164(sp)
  SW t4, 72(sp)
  ADDI s3, zero, -103
  LW t4, 72(sp)
  MULW s3, t4, s3
  ADDW s3, s4, s3
  LW t4, 168(sp)
  SW t4, 76(sp)
  ADDI s1, zero, -123
  LW t4, 76(sp)
  MULW s1, t4, s1
  ADDW s1, s3, s1
  LW t4, 172(sp)
  SW t4, 80(sp)
  LW t4, 80(sp)
  SLLIW s5, t4, 6
  ADDW s1, s1, s5
  LW t4, 176(sp)
  SW t4, 84(sp)
  ADDI s6, zero, -120
  LW t4, 84(sp)
  MULW s6, t4, s6
  ADDW s1, s1, s6
  LW t4, 180(sp)
  SW t4, 88(sp)
  ADDI s2, zero, 50
  LW t4, 88(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  LW t4, 184(sp)
  SW t4, 24(sp)
  ADDI s7, zero, -59
  LW t4, 24(sp)
  MULW s7, t4, s7
  ADDW s1, s1, s7
  LW t4, 188(sp)
  SW t4, 20(sp)
  ADDI s0, zero, 47
  LW t4, 20(sp)
  MULW s0, t4, s0
  ADDW s0, s1, s0
  LW t4, 192(sp)
  SW t4, 12(sp)
  ADDI s1, zero, -111
  LW t4, 12(sp)
  MULW s1, t4, s1
  ADDW s0, s0, s1
  LW t4, 196(sp)
  SW t4, 16(sp)
  ADDI s1, zero, -67
  LW t4, 16(sp)
  MULW s1, t4, s1
  ADDW s0, s0, s1
  LW s7, 200(sp)
  ADDI s2, zero, -106
  MULW s2, s7, s2
  ADDW s0, s0, s2
  LW t4, 204(sp)
  SW t4, 28(sp)
  ADDI s2, zero, -75
  LW t4, 28(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  LW t4, 208(sp)
  SW t4, 32(sp)
  ADDI s2, zero, -102
  LW t4, 32(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  LW t4, 212(sp)
  SW t4, 0(sp)
  ADDI s2, zero, 34
  LW t4, 0(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  LW t4, 216(sp)
  SW t4, 40(sp)
  ADDI s2, zero, -39
  LW t4, 40(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  LW t4, 220(sp)
  SW t4, 44(sp)
  ADDI s2, zero, 65
  LW t4, 44(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  LW t4, 224(sp)
  SW t4, 48(sp)
  ADDI s2, zero, 47
  LW t4, 48(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  LW t4, 228(sp)
  SW t4, 52(sp)
  ADDI s2, zero, 113
  LW t4, 52(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  LW t4, 232(sp)
  SW t4, 56(sp)
  ADDI s2, zero, 110
  LW t4, 56(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  LW t4, 236(sp)
  SW t4, 60(sp)
  ADDI s2, zero, 47
  LW t4, 60(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  LW t4, 240(sp)
  SW t4, 64(sp)
  ADDI s2, zero, -4
  LW t4, 64(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  LW t4, 244(sp)
  SW t4, 96(sp)
  ADDI s2, zero, 80
  LW t4, 96(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  LW t4, 248(sp)
  SW t4, 92(sp)
  ADDI s2, zero, 46
  LW t4, 92(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  ADDI s2, zero, 127
  BLT s2, s0, bb66
  # implict jump to bb10
bb10:
  BLT s0, zero, bb65
  # implict jump to bb11
bb11:
  # implict jump to bb12
bb12:
  ADDI s2, zero, 39
  MULW s0, s0, s2
  ADDI s2, zero, -106
  MULW s2, s8, s2
  ADDI s6, zero, 126
  MULW s6, s10, s6
  ADDW s2, s2, s6
  ADDI s6, zero, -18
  MULW s6, s11, s6
  ADDW s2, s2, s6
  ADDI s6, zero, -31
  LW t4, 72(sp)
  MULW s6, t4, s6
  ADDW s2, s2, s6
  ADDI s6, zero, -8
  LW t4, 76(sp)
  MULW s6, t4, s6
  ADDW s2, s2, s6
  ADDI s6, zero, 47
  LW t4, 80(sp)
  MULW s6, t4, s6
  ADDW s2, s2, s6
  ADDI s6, zero, -4
  LW t4, 84(sp)
  MULW s6, t4, s6
  ADDW s2, s2, s6
  ADDI s6, zero, 67
  LW t4, 88(sp)
  MULW s6, t4, s6
  ADDW s2, s2, s6
  ADDI s6, zero, -94
  LW t4, 24(sp)
  MULW s6, t4, s6
  ADDW s2, s2, s6
  ADDI s6, zero, -121
  LW t4, 20(sp)
  MULW s6, t4, s6
  ADDW s2, s2, s6
  ADDI s6, zero, 7
  LW t4, 12(sp)
  MULW s6, t4, s6
  ADDW s2, s2, s6
  ADDI s6, zero, -21
  LW t4, 16(sp)
  MULW s6, t4, s6
  ADDW s2, s2, s6
  ADDI s6, zero, -60
  MULW s6, s7, s6
  ADDW s2, s2, s6
  ADDI s6, zero, -43
  LW t4, 28(sp)
  MULW s6, t4, s6
  ADDW s2, s2, s6
  ADDI s6, zero, 105
  LW t4, 32(sp)
  MULW s6, t4, s6
  ADDW s2, s2, s6
  ADDI s6, zero, -42
  LW t4, 0(sp)
  MULW s6, t4, s6
  ADDW s2, s2, s6
  ADDI s6, zero, 87
  LW t4, 40(sp)
  MULW s6, t4, s6
  ADDW s2, s2, s6
  ADDI s6, zero, 29
  LW t4, 44(sp)
  MULW s6, t4, s6
  ADDW s2, s2, s6
  ADDI s6, zero, -106
  LW t4, 48(sp)
  MULW s6, t4, s6
  ADDW s2, s2, s6
  ADDI s6, zero, -31
  LW t4, 52(sp)
  MULW s6, t4, s6
  ADDW s2, s2, s6
  ADDI s6, zero, -110
  LW t4, 56(sp)
  MULW s6, t4, s6
  ADDW s2, s2, s6
  ADDI s6, zero, -100
  LW t4, 60(sp)
  MULW s6, t4, s6
  ADDW s2, s2, s6
  ADDI s6, zero, -22
  LW t4, 64(sp)
  MULW s6, t4, s6
  ADDW s2, s2, s6
  ADDI s6, zero, -75
  LW t4, 96(sp)
  MULW s6, t4, s6
  ADDW s2, s2, s6
  ADDI s6, zero, -125
  LW t4, 92(sp)
  MULW s6, t4, s6
  ADDW s2, s2, s6
  ADDI s6, zero, 127
  BLT s6, s2, bb64
  # implict jump to bb13
bb13:
  BLT s2, zero, bb63
  # implict jump to bb14
bb14:
  # implict jump to bb15
bb15:
  ADDI s6, zero, 77
  MULW s2, s2, s6
  ADDW s0, s0, s2
  ADDI s2, zero, 26
  MULW s2, s8, s2
  ADDI s6, zero, 76
  MULW s6, s10, s6
  ADDW s2, s2, s6
  ADDI s6, zero, -70
  MULW s6, s11, s6
  ADDW s2, s2, s6
  ADDI s5, zero, 29
  LW t4, 72(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, -95
  LW t4, 76(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, 96
  LW t4, 80(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, 52
  LW t4, 84(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, -68
  LW t4, 88(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, -5
  LW t4, 24(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, 34
  LW t4, 20(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, -34
  LW t4, 12(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, 102
  LW t4, 16(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, 6
  MULW s5, s7, s5
  ADDW s2, s2, s5
  ADDI s5, zero, -38
  LW t4, 28(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, 27
  LW t4, 32(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, 110
  LW t4, 0(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, 116
  LW t4, 40(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, 39
  LW t4, 44(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, -63
  LW t4, 48(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, -99
  LW t4, 52(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, 65
  LW t4, 56(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s3, zero, 120
  LW t4, 60(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, -39
  LW t4, 64(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, -6
  LW t4, 96(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, 94
  LW t4, 92(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, 127
  BLT s3, s2, bb62
  # implict jump to bb16
bb16:
  BLT s2, zero, bb61
  # implict jump to bb17
bb17:
  # implict jump to bb18
bb18:
  ADDI s3, zero, 127
  MULW s2, s2, s3
  ADDW s0, s0, s2
  ADDI s2, zero, -23
  MULW s2, s8, s2
  ADDI s3, zero, -63
  MULW s3, s10, s3
  ADDW s2, s2, s3
  ADDI s3, zero, 49
  MULW s3, s11, s3
  ADDW s2, s2, s3
  ADDI s3, zero, 50
  LW t4, 72(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, 72
  LW t4, 76(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, 85
  LW t4, 80(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, -30
  LW t4, 84(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, 12
  LW t4, 88(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, 125
  LW t4, 24(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s4, zero, -117
  LW t4, 20(sp)
  MULW s4, t4, s4
  ADDW s2, s2, s4
  ADDI s4, zero, -65
  LW t4, 12(sp)
  MULW s4, t4, s4
  ADDW s2, s2, s4
  ADDW s1, s2, s1
  ADDI s2, zero, 125
  MULW s2, s7, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 110
  LW t4, 28(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -31
  LW t4, 32(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -123
  LW t4, 0(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 83
  LW t4, 40(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 122
  LW t4, 44(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 11
  LW t4, 48(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -23
  LW t4, 52(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -47
  LW t4, 56(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -32
  LW t4, 60(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -117
  LW t4, 64(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 95
  LW t4, 96(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 118
  LW t4, 92(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 127
  BLT s2, s1, bb60
  # implict jump to bb19
bb19:
  BLT s1, zero, bb59
  # implict jump to bb20
bb20:
  # implict jump to bb21
bb21:
  ADDI s2, zero, -106
  MULW s1, s1, s2
  ADDW s0, s0, s1
  SLLIW s1, s8, 3
  ADDI s2, zero, 82
  MULW s2, s10, s2
  ADDW s1, s1, s2
  ADDI s4, zero, -104
  MULW s4, s11, s4
  ADDW s1, s1, s4
  ADDI s4, zero, 101
  LW t4, 72(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, -116
  LW t4, 76(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, -63
  LW t4, 80(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, -16
  LW t4, 84(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, -70
  LW t4, 88(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDW s1, s1, s3
  ADDI s3, zero, 75
  LW t4, 20(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 66
  LW t4, 12(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -96
  LW t4, 16(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -101
  MULW s3, s7, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -114
  LW t4, 28(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 59
  LW t4, 32(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 12
  LW t4, 0(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 5
  LW t4, 40(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -95
  LW t4, 44(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 116
  LW t4, 48(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -93
  LW t4, 52(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 15
  LW t4, 56(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 79
  LW t4, 60(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 3
  LW t4, 64(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 49
  LW t4, 96(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -124
  LW t4, 92(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 127
  BLT s3, s1, bb58
  # implict jump to bb22
bb22:
  BLT s1, zero, bb57
  # implict jump to bb23
bb23:
  # implict jump to bb24
bb24:
  ADDI s3, zero, -3
  MULW s1, s1, s3
  ADDW s0, s0, s1
  ADDI s1, zero, 81
  MULW s1, s8, s1
  ADDI s3, zero, 68
  MULW s3, s10, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -102
  MULW s3, s11, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -74
  LW t4, 72(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 121
  LW t4, 76(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -15
  LW t4, 80(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s4, zero, 55
  LW t4, 84(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, 101
  LW t4, 88(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, -13
  LW t4, 24(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  ADDI s4, zero, -62
  LW t4, 20(sp)
  MULW s4, t4, s4
  ADDW s1, s1, s4
  LW t4, 12(sp)
  SLLIW s9, t4, 6
  ADDW s1, s1, s9
  ADDI s9, zero, 114
  LW t4, 16(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, 38
  MULW s9, s7, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -21
  LW t4, 28(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, 112
  LW t4, 32(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, 114
  LW t4, 0(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, 112
  LW t4, 40(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -10
  LW t4, 44(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -16
  LW t4, 48(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -50
  LW t4, 52(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -112
  LW t4, 56(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -116
  LW t4, 60(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -54
  LW t4, 64(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, 82
  LW t4, 96(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -72
  LW t4, 92(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, 127
  BLT s9, s1, bb56
  # implict jump to bb25
bb25:
  BLT s1, zero, bb55
  # implict jump to bb26
bb26:
  # implict jump to bb27
bb27:
  SLLIW s1, s1, 5
  ADDW s0, s0, s1
  ADDI s1, zero, 15
  MULW s1, s8, s1
  ADDI s9, zero, -77
  MULW s9, s10, s9
  ADDW s1, s1, s9
  ADDI s9, zero, 66
  MULW s9, s11, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -90
  LW t4, 72(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -6
  LW t4, 76(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -30
  LW t4, 80(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -8
  LW t4, 84(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, 81
  LW t4, 88(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  LW t4, 24(sp)
  SLLIW s9, t4, 1
  ADDW s1, s1, s9
  ADDI s9, zero, -110
  LW t4, 20(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -95
  LW t4, 12(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, 59
  LW t4, 16(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, 52
  MULW s9, s7, s9
  ADDW s1, s1, s9
  ADDI s9, zero, 15
  LW t4, 28(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, 55
  LW t4, 32(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -33
  LW t4, 0(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, 14
  LW t4, 40(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, 58
  LW t4, 44(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, 67
  LW t4, 48(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, 86
  LW t4, 52(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -79
  LW t4, 56(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, 48
  LW t4, 60(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -13
  LW t4, 64(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -15
  LW t4, 96(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, 66
  LW t4, 92(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, 127
  BLT s9, s1, bb54
  # implict jump to bb28
bb28:
  BLT s1, zero, bb53
  # implict jump to bb29
bb29:
  # implict jump to bb30
bb30:
  ADDI s9, zero, -95
  MULW s1, s1, s9
  ADDW s0, s0, s1
  ADDI s1, zero, 33
  MULW s1, s8, s1
  ADDW s1, s1, s2
  ADDI s2, zero, 67
  MULW s2, s11, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 30
  LW t4, 72(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -2
  LW t4, 76(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 65
  LW t4, 80(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 120
  LW t4, 84(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -13
  LW t4, 88(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 18
  LW t4, 24(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 5
  LW t4, 20(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 104
  LW t4, 12(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -119
  LW t4, 16(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -7
  MULW s2, s7, s2
  ADDW s1, s1, s2
  ADDI s9, zero, 71
  LW t4, 28(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, 107
  LW t4, 32(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, 24
  LW t4, 0(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, 82
  LW t4, 40(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -96
  LW t4, 44(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -104
  LW t4, 48(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDI s9, zero, -121
  LW t4, 52(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  ADDW s1, s1, s5
  ADDI s5, zero, 97
  LW t4, 60(sp)
  MULW s5, t4, s5
  ADDW s1, s1, s5
  ADDI s5, zero, 83
  LW t4, 64(sp)
  MULW s5, t4, s5
  ADDW s1, s1, s5
  ADDI s5, zero, 46
  LW t4, 96(sp)
  MULW s5, t4, s5
  ADDW s1, s1, s5
  ADDI s5, zero, -84
  LW t4, 92(sp)
  MULW s5, t4, s5
  ADDW s1, s1, s5
  ADDI s5, zero, 127
  BLT s5, s1, bb52
  # implict jump to bb31
bb31:
  BLT s1, zero, bb51
  # implict jump to bb32
bb32:
  # implict jump to bb33
bb33:
  ADDI s5, zero, -50
  MULW s1, s1, s5
  ADDW s0, s0, s1
  ADDI s1, zero, -29
  MULW s1, s8, s1
  ADDI s5, zero, 7
  MULW s5, s10, s5
  ADDW s1, s1, s5
  ADDW s1, s1, s6
  ADDI s5, zero, 38
  LW t4, 72(sp)
  MULW s5, t4, s5
  ADDW s1, s1, s5
  ADDI s5, zero, -90
  LW t4, 76(sp)
  MULW s5, t4, s5
  ADDW s1, s1, s5
  ADDW s1, s1, s3
  ADDI s3, zero, -32
  LW t4, 84(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 37
  LW t4, 88(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 36
  LW t4, 24(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDW s1, s1, s4
  ADDI s3, zero, -125
  LW t4, 12(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -46
  LW t4, 16(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -70
  MULW s3, s7, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 37
  LW t4, 28(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -73
  LW t4, 32(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -34
  LW t4, 0(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -87
  LW t4, 40(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -75
  LW t4, 44(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 71
  LW t4, 48(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -77
  LW t4, 52(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 53
  LW t4, 56(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 37
  LW t4, 60(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -103
  LW t4, 64(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -13
  LW t4, 96(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -114
  LW t4, 92(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 127
  BLT s3, s1, bb50
  # implict jump to bb34
bb34:
  BLT s1, zero, bb49
  # implict jump to bb35
bb35:
  # implict jump to bb36
bb36:
  ADDI s3, zero, -23
  MULW s1, s1, s3
  ADDW s0, s0, s1
  ADDI s1, zero, 67
  MULW s1, s8, s1
  ADDI s3, zero, 42
  MULW s3, s10, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 41
  MULW s3, s11, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -123
  LW t4, 72(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -92
  LW t4, 76(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 10
  LW t4, 80(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -77
  LW t4, 84(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 75
  LW t4, 88(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 96
  LW t4, 24(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -51
  LW t4, 20(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 109
  LW t4, 12(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, -74
  LW t4, 16(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDW s1, s1, s2
  ADDI s2, zero, -122
  LW t4, 28(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 67
  LW t4, 32(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 47
  LW t4, 0(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 22
  LW t4, 40(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -68
  LW t4, 44(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 38
  LW t4, 48(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 29
  LW t4, 52(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 115
  LW t4, 56(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -121
  LW t4, 60(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 36
  LW t4, 64(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -49
  LW t4, 96(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 85
  LW t4, 92(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 127
  BLT s2, s1, bb48
  # implict jump to bb37
bb37:
  BLT s1, zero, bb47
  # implict jump to bb38
bb38:
  # implict jump to bb39
bb39:
  ADDI s2, zero, 46
  MULW s1, s1, s2
  ADDW s0, s0, s1
  BLT zero, s0, bb46
  # implict jump to bb40
bb40:
  ADD s0, zero, zero
  # implict jump to bb41
bb41:
  BNE s0, zero, bb45
  # implict jump to bb42
bb42:
  ADDI a0, zero, 100
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 103
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb43
bb43:
  ADDI s0, zero, 1
  LW t4, 104(sp)
  SUBW s0, t4, s0
  BLT zero, s0, bb44
  JAL zero, bb1
bb44:
  ADD t4, s0, zero
  SW t4, 8(sp)
  JAL zero, bb3
bb45:
  ADDI a0, zero, 99
  CALL putch
  ADDI a0, zero, 97
  CALL putch
  ADDI a0, zero, 116
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb43
bb46:
  ADDI s0, zero, 1
  JAL zero, bb41
bb47:
  ADD s1, zero, zero
  JAL zero, bb39
bb48:
  ADDI s1, zero, 127
  JAL zero, bb39
bb49:
  ADD s1, zero, zero
  JAL zero, bb36
bb50:
  ADDI s1, zero, 127
  JAL zero, bb36
bb51:
  ADD s1, zero, zero
  JAL zero, bb33
bb52:
  ADDI s1, zero, 127
  JAL zero, bb33
bb53:
  ADD s1, zero, zero
  JAL zero, bb30
bb54:
  ADDI s1, zero, 127
  JAL zero, bb30
bb55:
  ADD s1, zero, zero
  JAL zero, bb27
bb56:
  ADDI s1, zero, 127
  JAL zero, bb27
bb57:
  ADD s1, zero, zero
  JAL zero, bb24
bb58:
  ADDI s1, zero, 127
  JAL zero, bb24
bb59:
  ADD s1, zero, zero
  JAL zero, bb21
bb60:
  ADDI s1, zero, 127
  JAL zero, bb21
bb61:
  ADD s2, zero, zero
  JAL zero, bb18
bb62:
  ADDI s2, zero, 127
  JAL zero, bb18
bb63:
  ADD s2, zero, zero
  JAL zero, bb15
bb64:
  ADDI s2, zero, 127
  JAL zero, bb15
bb65:
  ADD s0, zero, zero
  JAL zero, bb12
bb66:
  ADDI s0, zero, 127
  JAL zero, bb12
bb67:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  JAL zero, bb4
bb68:
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  JAL zero, bb5
model:
  ADDI sp, sp, -144
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  SD s7, 104(sp)
  SD s8, 112(sp)
  SD s9, 120(sp)
  SD s10, 128(sp)
  SD s11, 136(sp)
  ADD s0, a0, zero
  LW s1, 0(s0)
  ADDI s2, zero, 85
  MULW s2, s1, s2
  LW s3, 4(s0)
  ADDI s4, zero, 23
  MULW s4, s3, s4
  ADDW s2, s2, s4
  LW s4, 8(s0)
  ADDI s5, zero, -82
  MULW s5, s4, s5
  ADDW s2, s2, s5
  LW s5, 12(s0)
  ADDI s6, zero, -103
  MULW s6, s5, s6
  ADDW s2, s2, s6
  LW s6, 16(s0)
  ADDI s7, zero, -123
  MULW s7, s6, s7
  ADDW s2, s2, s7
  LW s7, 20(s0)
  SLLIW s8, s7, 6
  ADDW s2, s2, s8
  LW s8, 24(s0)
  ADDI s9, zero, -120
  MULW s9, s8, s9
  ADDW s2, s2, s9
  LW s9, 28(s0)
  ADDI s10, zero, 50
  MULW s10, s9, s10
  ADDW s2, s2, s10
  LW s10, 32(s0)
  ADDI s11, zero, -59
  MULW s11, s10, s11
  ADDW s2, s2, s11
  LW s11, 36(s0)
  ADDI t0, zero, 47
  MULW t0, s11, t0
  ADDW s2, s2, t0
  LW t0, 40(s0)
  ADDI t1, zero, -111
  MULW t1, t0, t1
  ADDW s2, s2, t1
  LW t1, 44(s0)
  ADDI t2, zero, -67
  MULW t2, t1, t2
  ADDW s2, s2, t2
  LW a1, 48(s0)
  ADDI a2, zero, -106
  MULW a2, a1, a2
  ADDW s2, s2, a2
  LW a2, 52(s0)
  ADDI a3, zero, -75
  MULW a3, a2, a3
  ADDW s2, s2, a3
  LW a3, 56(s0)
  ADDI a4, zero, -102
  MULW a4, a3, a4
  ADDW s2, s2, a4
  LW t4, 60(s0)
  SW t4, 36(sp)
  ADDI a5, zero, 34
  LW t4, 36(sp)
  MULW a5, t4, a5
  ADDW s2, s2, a5
  LW t4, 64(s0)
  SW t4, 32(sp)
  ADDI a6, zero, -39
  LW t4, 32(sp)
  MULW a6, t4, a6
  ADDW s2, s2, a6
  LW t4, 68(s0)
  SW t4, 28(sp)
  ADDI a7, zero, 65
  LW t4, 28(sp)
  MULW a7, t4, a7
  ADDW s2, s2, a7
  LW t4, 72(s0)
  SW t4, 24(sp)
  ADDI t6, zero, 47
  LW t4, 24(sp)
  MULW t6, t4, t6
  ADDW s2, s2, t6
  LW t4, 76(s0)
  SW t4, 0(sp)
  ADDI t6, zero, 113
  LW t4, 0(sp)
  MULW t6, t4, t6
  ADDW s2, s2, t6
  LW t4, 80(s0)
  SW t4, 4(sp)
  ADDI t6, zero, 110
  LW t4, 4(sp)
  MULW t6, t4, t6
  ADDW s2, s2, t6
  LW t4, 84(s0)
  SW t4, 8(sp)
  ADDI t6, zero, 47
  LW t4, 8(sp)
  MULW t6, t4, t6
  ADDW s2, s2, t6
  LW t4, 88(s0)
  SW t4, 12(sp)
  ADDI t6, zero, -4
  LW t4, 12(sp)
  MULW t6, t4, t6
  ADDW s2, s2, t6
  LW t4, 92(s0)
  SW t4, 16(sp)
  ADDI t6, zero, 80
  LW t4, 16(sp)
  MULW t6, t4, t6
  ADDW s2, s2, t6
  LW t4, 96(s0)
  SW t4, 20(sp)
  ADDI t6, zero, 46
  LW t4, 20(sp)
  MULW t6, t4, t6
  ADDW s2, s2, t6
  ADDI t6, zero, 127
  BLT t6, s2, bb121
  # implict jump to bb70
bb70:
  BLT s2, zero, bb120
  # implict jump to bb71
bb71:
  # implict jump to bb72
bb72:
  ADDI t6, zero, 39
  MULW s2, s2, t6
  ADDI t6, zero, -106
  MULW t6, s1, t6
  ADDI s0, zero, 126
  MULW s0, s3, s0
  ADDW s0, t6, s0
  ADDI t6, zero, -18
  MULW t6, s4, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -31
  MULW t6, s5, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -8
  MULW t6, s6, t6
  ADDW s0, s0, t6
  ADDI t6, zero, 47
  MULW t6, s7, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -4
  MULW t6, s8, t6
  ADDW s0, s0, t6
  ADDI t6, zero, 67
  MULW t6, s9, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -94
  MULW t6, s10, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -121
  MULW t6, s11, t6
  ADDW s0, s0, t6
  ADDI t6, zero, 7
  MULW t6, t0, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -21
  MULW t6, t1, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -60
  MULW t6, a1, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -43
  MULW t6, a2, t6
  ADDW s0, s0, t6
  ADDI t6, zero, 105
  MULW t6, a3, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -42
  LW t4, 36(sp)
  MULW t6, t4, t6
  ADDW s0, s0, t6
  ADDI t6, zero, 87
  LW t4, 32(sp)
  MULW t6, t4, t6
  ADDW s0, s0, t6
  ADDI t6, zero, 29
  LW t4, 28(sp)
  MULW t6, t4, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -106
  LW t4, 24(sp)
  MULW t6, t4, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -31
  LW t4, 0(sp)
  MULW t6, t4, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -110
  LW t4, 4(sp)
  MULW t6, t4, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -100
  LW t4, 8(sp)
  MULW t6, t4, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -22
  LW t4, 12(sp)
  MULW t6, t4, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -75
  LW t4, 16(sp)
  MULW t6, t4, t6
  ADDW s0, s0, t6
  ADDI t6, zero, -125
  LW t4, 20(sp)
  MULW t6, t4, t6
  ADDW s0, s0, t6
  ADDI t6, zero, 127
  BLT t6, s0, bb119
  # implict jump to bb73
bb73:
  BLT s0, zero, bb118
  # implict jump to bb74
bb74:
  # implict jump to bb75
bb75:
  ADDI t6, zero, 77
  MULW s0, s0, t6
  ADDW s0, s2, s0
  ADDI s2, zero, 26
  MULW s2, s1, s2
  ADDI t6, zero, 76
  MULW t6, s3, t6
  ADDW s2, s2, t6
  ADDI t6, zero, -70
  MULW t6, s4, t6
  ADDW s2, s2, t6
  ADDI a7, zero, 29
  MULW a7, s5, a7
  ADDW s2, s2, a7
  ADDI a7, zero, -95
  MULW a7, s6, a7
  ADDW s2, s2, a7
  ADDI a7, zero, 96
  MULW a7, s7, a7
  ADDW s2, s2, a7
  ADDI a7, zero, 52
  MULW a7, s8, a7
  ADDW s2, s2, a7
  ADDI a7, zero, -68
  MULW a7, s9, a7
  ADDW s2, s2, a7
  ADDI a7, zero, -5
  MULW a7, s10, a7
  ADDW s2, s2, a7
  ADDI a7, zero, 34
  MULW a7, s11, a7
  ADDW s2, s2, a7
  ADDI a7, zero, -34
  MULW a7, t0, a7
  ADDW s2, s2, a7
  ADDI a7, zero, 102
  MULW a7, t1, a7
  ADDW s2, s2, a7
  ADDI a7, zero, 6
  MULW a7, a1, a7
  ADDW s2, s2, a7
  ADDI a7, zero, -38
  MULW a7, a2, a7
  ADDW s2, s2, a7
  ADDI a7, zero, 27
  MULW a7, a3, a7
  ADDW s2, s2, a7
  ADDI a7, zero, 110
  LW t4, 36(sp)
  MULW a7, t4, a7
  ADDW s2, s2, a7
  ADDI a7, zero, 116
  LW t4, 32(sp)
  MULW a7, t4, a7
  ADDW s2, s2, a7
  ADDI a7, zero, 39
  LW t4, 28(sp)
  MULW a7, t4, a7
  ADDW s2, s2, a7
  ADDI a7, zero, -63
  LW t4, 24(sp)
  MULW a7, t4, a7
  ADDW s2, s2, a7
  ADDI a7, zero, -99
  LW t4, 0(sp)
  MULW a7, t4, a7
  ADDW s2, s2, a7
  ADDI a7, zero, 65
  LW t4, 4(sp)
  MULW a7, t4, a7
  ADDW s2, s2, a7
  ADDI a6, zero, 120
  LW t4, 8(sp)
  MULW a6, t4, a6
  ADDW s2, s2, a6
  ADDI a6, zero, -39
  LW t4, 12(sp)
  MULW a6, t4, a6
  ADDW s2, s2, a6
  ADDI a6, zero, -6
  LW t4, 16(sp)
  MULW a6, t4, a6
  ADDW s2, s2, a6
  ADDI a6, zero, 94
  LW t4, 20(sp)
  MULW a6, t4, a6
  ADDW s2, s2, a6
  ADDI a6, zero, 127
  BLT a6, s2, bb117
  # implict jump to bb76
bb76:
  BLT s2, zero, bb116
  # implict jump to bb77
bb77:
  # implict jump to bb78
bb78:
  ADDI a6, zero, 127
  MULW s2, s2, a6
  ADDW s0, s0, s2
  ADDI s2, zero, -23
  MULW s2, s1, s2
  ADDI a6, zero, -63
  MULW a6, s3, a6
  ADDW s2, s2, a6
  ADDI a6, zero, 49
  MULW a6, s4, a6
  ADDW s2, s2, a6
  ADDI a6, zero, 50
  MULW a6, s5, a6
  ADDW s2, s2, a6
  ADDI a6, zero, 72
  MULW a6, s6, a6
  ADDW s2, s2, a6
  ADDI a6, zero, 85
  MULW a6, s7, a6
  ADDW s2, s2, a6
  ADDI a6, zero, -30
  MULW a6, s8, a6
  ADDW s2, s2, a6
  ADDI a6, zero, 12
  MULW a6, s9, a6
  ADDW s2, s2, a6
  ADDI a6, zero, 125
  MULW a6, s10, a6
  ADDW s2, s2, a6
  ADDI a5, zero, -117
  MULW a5, s11, a5
  ADDW s2, s2, a5
  ADDI a5, zero, -65
  MULW a5, t0, a5
  ADDW s2, s2, a5
  ADDW s2, s2, t2
  ADDI t2, zero, 125
  MULW t2, a1, t2
  ADDW s2, s2, t2
  ADDI t2, zero, 110
  MULW t2, a2, t2
  ADDW s2, s2, t2
  ADDI t2, zero, -31
  MULW t2, a3, t2
  ADDW s2, s2, t2
  ADDI t2, zero, -123
  LW t4, 36(sp)
  MULW t2, t4, t2
  ADDW s2, s2, t2
  ADDI t2, zero, 83
  LW t4, 32(sp)
  MULW t2, t4, t2
  ADDW s2, s2, t2
  ADDI t2, zero, 122
  LW t4, 28(sp)
  MULW t2, t4, t2
  ADDW s2, s2, t2
  ADDI t2, zero, 11
  LW t4, 24(sp)
  MULW t2, t4, t2
  ADDW s2, s2, t2
  ADDI t2, zero, -23
  LW t4, 0(sp)
  MULW t2, t4, t2
  ADDW s2, s2, t2
  ADDI t2, zero, -47
  LW t4, 4(sp)
  MULW t2, t4, t2
  ADDW s2, s2, t2
  ADDI t2, zero, -32
  LW t4, 8(sp)
  MULW t2, t4, t2
  ADDW s2, s2, t2
  ADDI t2, zero, -117
  LW t4, 12(sp)
  MULW t2, t4, t2
  ADDW s2, s2, t2
  ADDI t2, zero, 95
  LW t4, 16(sp)
  MULW t2, t4, t2
  ADDW s2, s2, t2
  ADDI t2, zero, 118
  LW t4, 20(sp)
  MULW t2, t4, t2
  ADDW s2, s2, t2
  ADDI t2, zero, 127
  BLT t2, s2, bb115
  # implict jump to bb79
bb79:
  BLT s2, zero, bb114
  # implict jump to bb80
bb80:
  # implict jump to bb81
bb81:
  ADDI t2, zero, -106
  MULW s2, s2, t2
  ADDW s0, s0, s2
  SLLIW s2, s1, 3
  ADDI t2, zero, 82
  MULW t2, s3, t2
  ADDW s2, s2, t2
  ADDI a5, zero, -104
  MULW a5, s4, a5
  ADDW s2, s2, a5
  ADDI a5, zero, 101
  MULW a5, s5, a5
  ADDW s2, s2, a5
  ADDI a5, zero, -116
  MULW a5, s6, a5
  ADDW s2, s2, a5
  ADDI a5, zero, -63
  MULW a5, s7, a5
  ADDW s2, s2, a5
  ADDI a5, zero, -16
  MULW a5, s8, a5
  ADDW s2, s2, a5
  ADDI a5, zero, -70
  MULW a5, s9, a5
  ADDW s2, s2, a5
  ADDW s2, s2, a6
  ADDI a5, zero, 75
  MULW a5, s11, a5
  ADDW s2, s2, a5
  ADDI a5, zero, 66
  MULW a5, t0, a5
  ADDW s2, s2, a5
  ADDI a5, zero, -96
  MULW a5, t1, a5
  ADDW s2, s2, a5
  ADDI a5, zero, -101
  MULW a5, a1, a5
  ADDW s2, s2, a5
  ADDI a5, zero, -114
  MULW a5, a2, a5
  ADDW s2, s2, a5
  ADDI a5, zero, 59
  MULW a5, a3, a5
  ADDW s2, s2, a5
  ADDI a5, zero, 12
  LW t4, 36(sp)
  MULW a5, t4, a5
  ADDW s2, s2, a5
  ADDI a5, zero, 5
  LW t4, 32(sp)
  MULW a5, t4, a5
  ADDW s2, s2, a5
  ADDI a5, zero, -95
  LW t4, 28(sp)
  MULW a5, t4, a5
  ADDW s2, s2, a5
  ADDI a5, zero, 116
  LW t4, 24(sp)
  MULW a5, t4, a5
  ADDW s2, s2, a5
  ADDI a5, zero, -93
  LW t4, 0(sp)
  MULW a5, t4, a5
  ADDW s2, s2, a5
  ADDI a5, zero, 15
  LW t4, 4(sp)
  MULW a5, t4, a5
  ADDW s2, s2, a5
  ADDI a5, zero, 79
  LW t4, 8(sp)
  MULW a5, t4, a5
  ADDW s2, s2, a5
  ADDI a5, zero, 3
  LW t4, 12(sp)
  MULW a5, t4, a5
  ADDW s2, s2, a5
  ADDI a5, zero, 49
  LW t4, 16(sp)
  MULW a5, t4, a5
  ADDW s2, s2, a5
  ADDI a5, zero, -124
  LW t4, 20(sp)
  MULW a5, t4, a5
  ADDW s2, s2, a5
  ADDI a5, zero, 127
  BLT a5, s2, bb113
  # implict jump to bb82
bb82:
  BLT s2, zero, bb112
  # implict jump to bb83
bb83:
  # implict jump to bb84
bb84:
  ADDI a5, zero, -3
  MULW s2, s2, a5
  ADDW s0, s0, s2
  ADDI s2, zero, 81
  MULW s2, s1, s2
  ADDI a5, zero, 68
  MULW a5, s3, a5
  ADDW s2, s2, a5
  ADDI a5, zero, -102
  MULW a5, s4, a5
  ADDW s2, s2, a5
  ADDI a5, zero, -74
  MULW a5, s5, a5
  ADDW s2, s2, a5
  ADDI a5, zero, 121
  MULW a5, s6, a5
  ADDW s2, s2, a5
  ADDI a5, zero, -15
  MULW a5, s7, a5
  ADDW s2, s2, a5
  ADDI a6, zero, 55
  MULW a6, s8, a6
  ADDW s2, s2, a6
  ADDI a6, zero, 101
  MULW a6, s9, a6
  ADDW s2, s2, a6
  ADDI a6, zero, -13
  MULW a6, s10, a6
  ADDW s2, s2, a6
  ADDI a6, zero, -62
  MULW a6, s11, a6
  ADDW s2, s2, a6
  SLLIW a4, t0, 6
  ADDW s2, s2, a4
  ADDI a4, zero, 114
  MULW a4, t1, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 38
  MULW a4, a1, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -21
  MULW a4, a2, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 112
  MULW a4, a3, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 114
  LW t4, 36(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 112
  LW t4, 32(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -10
  LW t4, 28(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -16
  LW t4, 24(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -50
  LW t4, 0(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -112
  LW t4, 4(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -116
  LW t4, 8(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -54
  LW t4, 12(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 82
  LW t4, 16(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -72
  LW t4, 20(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 127
  BLT a4, s2, bb111
  # implict jump to bb85
bb85:
  BLT s2, zero, bb110
  # implict jump to bb86
bb86:
  # implict jump to bb87
bb87:
  SLLIW s2, s2, 5
  ADDW s0, s0, s2
  ADDI s2, zero, 15
  MULW s2, s1, s2
  ADDI a4, zero, -77
  MULW a4, s3, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 66
  MULW a4, s4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -90
  MULW a4, s5, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -6
  MULW a4, s6, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -30
  MULW a4, s7, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -8
  MULW a4, s8, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 81
  MULW a4, s9, a4
  ADDW s2, s2, a4
  SLLIW a4, s10, 1
  ADDW s2, s2, a4
  ADDI a4, zero, -110
  MULW a4, s11, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -95
  MULW a4, t0, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 59
  MULW a4, t1, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 52
  MULW a4, a1, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 15
  MULW a4, a2, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 55
  MULW a4, a3, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -33
  LW t4, 36(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 14
  LW t4, 32(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 58
  LW t4, 28(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 67
  LW t4, 24(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 86
  LW t4, 0(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -79
  LW t4, 4(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 48
  LW t4, 8(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -13
  LW t4, 12(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -15
  LW t4, 16(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 66
  LW t4, 20(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 127
  BLT a4, s2, bb109
  # implict jump to bb88
bb88:
  BLT s2, zero, bb108
  # implict jump to bb89
bb89:
  # implict jump to bb90
bb90:
  ADDI a4, zero, -95
  MULW s2, s2, a4
  ADDW s0, s0, s2
  ADDI s2, zero, 33
  MULW s2, s1, s2
  ADDW s2, s2, t2
  ADDI t2, zero, 67
  MULW t2, s4, t2
  ADDW s2, s2, t2
  ADDI t2, zero, 30
  MULW t2, s5, t2
  ADDW s2, s2, t2
  ADDI t2, zero, -2
  MULW t2, s6, t2
  ADDW s2, s2, t2
  ADDI t2, zero, 65
  MULW t2, s7, t2
  ADDW s2, s2, t2
  ADDI t2, zero, 120
  MULW t2, s8, t2
  ADDW s2, s2, t2
  ADDI t2, zero, -13
  MULW t2, s9, t2
  ADDW s2, s2, t2
  ADDI t2, zero, 18
  MULW t2, s10, t2
  ADDW s2, s2, t2
  ADDI t2, zero, 5
  MULW t2, s11, t2
  ADDW s2, s2, t2
  ADDI t2, zero, 104
  MULW t2, t0, t2
  ADDW s2, s2, t2
  ADDI t2, zero, -119
  MULW t2, t1, t2
  ADDW s2, s2, t2
  ADDI t2, zero, -7
  MULW t2, a1, t2
  ADDW s2, s2, t2
  ADDI a4, zero, 71
  MULW a4, a2, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 107
  MULW a4, a3, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 24
  LW t4, 36(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 82
  LW t4, 32(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -96
  LW t4, 28(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -104
  LW t4, 24(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -121
  LW t4, 0(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDW s2, s2, a7
  ADDI a4, zero, 97
  LW t4, 8(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 83
  LW t4, 12(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 46
  LW t4, 16(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -84
  LW t4, 20(sp)
  MULW a4, t4, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 127
  BLT a4, s2, bb107
  # implict jump to bb91
bb91:
  BLT s2, zero, bb106
  # implict jump to bb92
bb92:
  # implict jump to bb93
bb93:
  ADDI a4, zero, -50
  MULW s2, s2, a4
  ADDW s0, s0, s2
  ADDI s2, zero, -29
  MULW s2, s1, s2
  ADDI a4, zero, 7
  MULW a4, s3, a4
  ADDW s2, s2, a4
  ADDW s2, s2, t6
  ADDI a4, zero, 38
  MULW a4, s5, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -90
  MULW a4, s6, a4
  ADDW s2, s2, a4
  ADDW s2, s2, a5
  ADDI a4, zero, -32
  MULW a4, s8, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 37
  MULW a4, s9, a4
  ADDW s2, s2, a4
  ADDI a4, zero, 36
  MULW a4, s10, a4
  ADDW s2, s2, a4
  ADDW s2, s2, a6
  ADDI a4, zero, -125
  MULW a4, t0, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -46
  MULW a4, t1, a4
  ADDW s2, s2, a4
  ADDI a4, zero, -70
  MULW a1, a1, a4
  ADDW s2, s2, a1
  ADDI a1, zero, 37
  MULW a1, a2, a1
  ADDW s2, s2, a1
  ADDI a1, zero, -73
  MULW a1, a3, a1
  ADDW s2, s2, a1
  ADDI a1, zero, -34
  LW t4, 36(sp)
  MULW a1, t4, a1
  ADDW s2, s2, a1
  ADDI a1, zero, -87
  LW t4, 32(sp)
  MULW a1, t4, a1
  ADDW s2, s2, a1
  ADDI a1, zero, -75
  LW t4, 28(sp)
  MULW a1, t4, a1
  ADDW s2, s2, a1
  ADDI a1, zero, 71
  LW t4, 24(sp)
  MULW a1, t4, a1
  ADDW s2, s2, a1
  ADDI a1, zero, -77
  LW t4, 0(sp)
  MULW a1, t4, a1
  ADDW s2, s2, a1
  ADDI a1, zero, 53
  LW t4, 4(sp)
  MULW a1, t4, a1
  ADDW s2, s2, a1
  ADDI a1, zero, 37
  LW t4, 8(sp)
  MULW a1, t4, a1
  ADDW s2, s2, a1
  ADDI a1, zero, -103
  LW t4, 12(sp)
  MULW a1, t4, a1
  ADDW s2, s2, a1
  ADDI a1, zero, -13
  LW t4, 16(sp)
  MULW a1, t4, a1
  ADDW s2, s2, a1
  ADDI a1, zero, -114
  LW t4, 20(sp)
  MULW a1, t4, a1
  ADDW s2, s2, a1
  ADDI a1, zero, 127
  BLT a1, s2, bb105
  # implict jump to bb94
bb94:
  BLT s2, zero, bb104
  # implict jump to bb95
bb95:
  # implict jump to bb96
bb96:
  ADDI a1, zero, -23
  MULW s2, s2, a1
  ADDW s0, s0, s2
  ADDI s2, zero, 67
  MULW s1, s1, s2
  ADDI s2, zero, 42
  MULW s2, s3, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 41
  MULW s2, s4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -123
  MULW s2, s5, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -92
  MULW s2, s6, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 10
  MULW s2, s7, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -77
  MULW s2, s8, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 75
  MULW s2, s9, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 96
  MULW s2, s10, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -51
  MULW s2, s11, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 109
  MULW s2, t0, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -74
  MULW s2, t1, s2
  ADDW s1, s1, s2
  ADDW s1, s1, t2
  ADDI s2, zero, -122
  MULW s2, a2, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 67
  MULW s2, a3, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 47
  LW t4, 36(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 22
  LW t4, 32(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -68
  LW t4, 28(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 38
  LW t4, 24(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 29
  LW t4, 0(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 115
  LW t4, 4(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -121
  LW t4, 8(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 36
  LW t4, 12(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, -49
  LW t4, 16(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 85
  LW t4, 20(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  ADDI s2, zero, 127
  BLT s2, s1, bb103
  # implict jump to bb97
bb97:
  BLT s1, zero, bb102
  # implict jump to bb98
bb98:
  # implict jump to bb99
bb99:
  ADDI s2, zero, 46
  MULW s1, s1, s2
  ADDW s0, s0, s1
  BLT zero, s0, bb101
  # implict jump to bb100
bb100:
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  LD s9, 120(sp)
  LD s10, 128(sp)
  LD s11, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb101:
  ADDI a0, zero, 1
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  LD s9, 120(sp)
  LD s10, 128(sp)
  LD s11, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb102:
  ADD s1, zero, zero
  JAL zero, bb99
bb103:
  ADDI s1, zero, 127
  JAL zero, bb99
bb104:
  ADD s2, zero, zero
  JAL zero, bb96
bb105:
  ADDI s2, zero, 127
  JAL zero, bb96
bb106:
  ADD s2, zero, zero
  JAL zero, bb93
bb107:
  ADDI s2, zero, 127
  JAL zero, bb93
bb108:
  ADD s2, zero, zero
  JAL zero, bb90
bb109:
  ADDI s2, zero, 127
  JAL zero, bb90
bb110:
  ADD s2, zero, zero
  JAL zero, bb87
bb111:
  ADDI s2, zero, 127
  JAL zero, bb87
bb112:
  ADD s2, zero, zero
  JAL zero, bb84
bb113:
  ADDI s2, zero, 127
  JAL zero, bb84
bb114:
  ADD s2, zero, zero
  JAL zero, bb81
bb115:
  ADDI s2, zero, 127
  JAL zero, bb81
bb116:
  ADD s2, zero, zero
  JAL zero, bb78
bb117:
  ADDI s2, zero, 127
  JAL zero, bb78
bb118:
  ADD s0, zero, zero
  JAL zero, bb75
bb119:
  ADDI s0, zero, 127
  JAL zero, bb75
bb120:
  ADD s2, zero, zero
  JAL zero, bb72
bb121:
  ADDI s2, zero, 127
  JAL zero, bb72
relu_reg:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 127
  BLT s1, s0, bb126
  # implict jump to bb123
bb123:
  BLT s0, zero, bb125
  # implict jump to bb124
bb124:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb125:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb126:
  ADDI a0, zero, 127
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
