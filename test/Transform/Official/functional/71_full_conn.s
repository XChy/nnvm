.global main
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
