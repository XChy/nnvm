.global main
.global model
.global relu_reg
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -352
  SD ra, 128(sp)
  SD s0, 136(sp)
  SD s1, 144(sp)
  SD s2, 152(sp)
  SD s3, 160(sp)
  SD s4, 168(sp)
  SD s5, 176(sp)
  SD s6, 184(sp)
  SD s7, 192(sp)
  SD s8, 312(sp)
  SD s9, 320(sp)
  SD s10, 328(sp)
  SD s11, 336(sp)
  CALL getint
  ADD s8, a0, zero
  ADDI s9, zero, 0
  BLT s9, s8, bb2
  # implict jump to bb1
bb1:
  ADD a0, zero, zero
  LD ra, 128(sp)
  LD s0, 136(sp)
  LD s1, 144(sp)
  LD s2, 152(sp)
  LD s3, 160(sp)
  LD s4, 168(sp)
  LD s5, 176(sp)
  LD s6, 184(sp)
  LD s7, 192(sp)
  LD s8, 312(sp)
  LD s9, 320(sp)
  LD s10, 328(sp)
  LD s11, 336(sp)
  ADDI sp, sp, 352
  JALR zero, 0(ra)
bb2:
  # implict jump to bb3
bb3:
  ADDI s9, zero, 0
  SLTI t4, s9, 5
  SB t4, 0(sp)
  ADD t4, s8, zero
  SW t4, 8(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  # implict jump to bb4
bb4:
  LW t4, 40(sp)
  ADD s10, t4, zero
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LB t4, 0(sp)
  BNE t4, zero, bb65
  # implict jump to bb5
bb5:
  # implict jump to bb6
bb6:
  ADD t4, s10, zero
  SW t4, 84(sp)
  LW s0, 200(sp)
  ADDI s4, zero, 85
  MULW s4, s0, s4
  LW s6, 204(sp)
  ADDI s7, zero, 23
  MULW s7, s6, s7
  ADDW s4, s4, s7
  LW s7, 208(sp)
  ADDI s10, zero, -82
  MULW s10, s7, s10
  ADDW s4, s4, s10
  LW t4, 212(sp)
  SW t4, 124(sp)
  ADDI s11, zero, -103
  LW t4, 124(sp)
  MULW s11, t4, s11
  ADDW s4, s4, s11
  LW t4, 216(sp)
  SW t4, 120(sp)
  ADDI s5, zero, -123
  LW t4, 120(sp)
  MULW s5, t4, s5
  ADDW s4, s4, s5
  LW t4, 220(sp)
  SW t4, 116(sp)
  LW t4, 116(sp)
  SLLIW s1, t4, 6
  ADDW s1, s4, s1
  LW t4, 224(sp)
  SW t4, 112(sp)
  ADDI s9, zero, -120
  LW t4, 112(sp)
  MULW s9, t4, s9
  ADDW s1, s1, s9
  LW t4, 228(sp)
  SW t4, 80(sp)
  ADDI s3, zero, 50
  LW t4, 80(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  LW t4, 232(sp)
  SW t4, 28(sp)
  ADDI s8, zero, -59
  LW t4, 28(sp)
  MULW s8, t4, s8
  ADDW s1, s1, s8
  LW t4, 236(sp)
  SW t4, 24(sp)
  ADDI s2, zero, 47
  LW t4, 24(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  LW t4, 240(sp)
  SW t4, 16(sp)
  ADDI s2, zero, -111
  LW t4, 16(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  LW t4, 244(sp)
  SW t4, 20(sp)
  ADDI s2, zero, -67
  LW t4, 20(sp)
  MULW s2, t4, s2
  ADDW s1, s1, s2
  LW s8, 248(sp)
  ADDI s3, zero, -106
  MULW s3, s8, s3
  ADDW s1, s1, s3
  LW t4, 252(sp)
  SW t4, 32(sp)
  ADDI s3, zero, -75
  LW t4, 32(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  LW t4, 256(sp)
  SW t4, 36(sp)
  ADDI s3, zero, -102
  LW t4, 36(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  LW t4, 260(sp)
  SW t4, 4(sp)
  ADDI s3, zero, 34
  LW t4, 4(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  LW t4, 264(sp)
  SW t4, 44(sp)
  ADDI s3, zero, -39
  LW t4, 44(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  LW t4, 268(sp)
  SW t4, 48(sp)
  ADDI s3, zero, 65
  LW t4, 48(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  LW t4, 272(sp)
  SW t4, 52(sp)
  ADDI s3, zero, 47
  LW t4, 52(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  LW t4, 276(sp)
  SW t4, 56(sp)
  ADDI s3, zero, 113
  LW t4, 56(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  LW t4, 280(sp)
  SW t4, 60(sp)
  ADDI s3, zero, 110
  LW t4, 60(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  LW t4, 284(sp)
  SW t4, 64(sp)
  ADDI s3, zero, 47
  LW t4, 64(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  LW t4, 288(sp)
  SW t4, 68(sp)
  ADDI s3, zero, -4
  LW t4, 68(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  LW t4, 292(sp)
  SW t4, 72(sp)
  ADDI s3, zero, 80
  LW t4, 72(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  LW t4, 296(sp)
  SW t4, 76(sp)
  ADDI s3, zero, 46
  LW t4, 76(sp)
  MULW s3, t4, s3
  ADDW s1, s1, s3
  ADDI s3, zero, 127
  BLT s3, s1, bb64
  # implict jump to bb7
bb7:
  BLT s1, zero, bb63
  # implict jump to bb8
bb8:
  # implict jump to bb9
bb9:
  ADDI s3, zero, 39
  MULW s1, s1, s3
  ADDI s3, zero, -106
  MULW s3, s0, s3
  ADDI s9, zero, 126
  MULW s9, s6, s9
  ADDW s3, s3, s9
  ADDI s9, zero, -18
  MULW s9, s7, s9
  ADDW s3, s3, s9
  ADDI s9, zero, -31
  LW t4, 124(sp)
  MULW s9, t4, s9
  ADDW s3, s3, s9
  ADDI s9, zero, -8
  LW t4, 120(sp)
  MULW s9, t4, s9
  ADDW s3, s3, s9
  ADDI s9, zero, 47
  LW t4, 116(sp)
  MULW s9, t4, s9
  ADDW s3, s3, s9
  ADDI s9, zero, -4
  LW t4, 112(sp)
  MULW s9, t4, s9
  ADDW s3, s3, s9
  ADDI s9, zero, 67
  LW t4, 80(sp)
  MULW s9, t4, s9
  ADDW s3, s3, s9
  ADDI s9, zero, -94
  LW t4, 28(sp)
  MULW s9, t4, s9
  ADDW s3, s3, s9
  ADDI s9, zero, -121
  LW t4, 24(sp)
  MULW s9, t4, s9
  ADDW s3, s3, s9
  ADDI s9, zero, 7
  LW t4, 16(sp)
  MULW s9, t4, s9
  ADDW s3, s3, s9
  ADDI s9, zero, -21
  LW t4, 20(sp)
  MULW s9, t4, s9
  ADDW s3, s3, s9
  ADDI s9, zero, -60
  MULW s9, s8, s9
  ADDW s3, s3, s9
  ADDI s9, zero, -43
  LW t4, 32(sp)
  MULW s9, t4, s9
  ADDW s3, s3, s9
  ADDI s9, zero, 105
  LW t4, 36(sp)
  MULW s9, t4, s9
  ADDW s3, s3, s9
  ADDI s9, zero, -42
  LW t4, 4(sp)
  MULW s9, t4, s9
  ADDW s3, s3, s9
  ADDI s9, zero, 87
  LW t4, 44(sp)
  MULW s9, t4, s9
  ADDW s3, s3, s9
  ADDI s9, zero, 29
  LW t4, 48(sp)
  MULW s9, t4, s9
  ADDW s3, s3, s9
  ADDI s9, zero, -106
  LW t4, 52(sp)
  MULW s9, t4, s9
  ADDW s3, s3, s9
  ADDI s9, zero, -31
  LW t4, 56(sp)
  MULW s9, t4, s9
  ADDW s3, s3, s9
  ADDI s9, zero, -110
  LW t4, 60(sp)
  MULW s9, t4, s9
  ADDW s3, s3, s9
  ADDI s9, zero, -100
  LW t4, 64(sp)
  MULW s9, t4, s9
  ADDW s3, s3, s9
  ADDI s9, zero, -22
  LW t4, 68(sp)
  MULW s9, t4, s9
  ADDW s3, s3, s9
  ADDI s9, zero, -75
  LW t4, 72(sp)
  MULW s9, t4, s9
  ADDW s3, s3, s9
  ADDI s9, zero, -125
  LW t4, 76(sp)
  MULW s9, t4, s9
  ADDW s3, s3, s9
  ADDI s9, zero, 127
  BLT s9, s3, bb62
  # implict jump to bb10
bb10:
  BLT s3, zero, bb61
  # implict jump to bb11
bb11:
  # implict jump to bb12
bb12:
  ADDI s9, zero, 77
  MULW s3, s3, s9
  ADDW s1, s1, s3
  ADDI s3, zero, 26
  MULW s3, s0, s3
  ADDI s9, zero, 76
  MULW s9, s6, s9
  ADDW s3, s3, s9
  ADDI s9, zero, -70
  MULW s9, s7, s9
  ADDW s3, s3, s9
  ADDI s4, zero, 29
  LW t4, 124(sp)
  MULW s4, t4, s4
  ADDW s3, s3, s4
  ADDI s4, zero, -95
  LW t4, 120(sp)
  MULW s4, t4, s4
  ADDW s3, s3, s4
  ADDI s4, zero, 96
  LW t4, 116(sp)
  MULW s4, t4, s4
  ADDW s3, s3, s4
  ADDI s4, zero, 52
  LW t4, 112(sp)
  MULW s4, t4, s4
  ADDW s3, s3, s4
  ADDI s4, zero, -68
  LW t4, 80(sp)
  MULW s4, t4, s4
  ADDW s3, s3, s4
  ADDI s4, zero, -5
  LW t4, 28(sp)
  MULW s4, t4, s4
  ADDW s3, s3, s4
  ADDI s4, zero, 34
  LW t4, 24(sp)
  MULW s4, t4, s4
  ADDW s3, s3, s4
  ADDI s4, zero, -34
  LW t4, 16(sp)
  MULW s4, t4, s4
  ADDW s3, s3, s4
  ADDI s4, zero, 102
  LW t4, 20(sp)
  MULW s4, t4, s4
  ADDW s3, s3, s4
  ADDI s4, zero, 6
  MULW s4, s8, s4
  ADDW s3, s3, s4
  ADDI s4, zero, -38
  LW t4, 32(sp)
  MULW s4, t4, s4
  ADDW s3, s3, s4
  ADDI s4, zero, 27
  LW t4, 36(sp)
  MULW s4, t4, s4
  ADDW s3, s3, s4
  ADDI s4, zero, 110
  LW t4, 4(sp)
  MULW s4, t4, s4
  ADDW s3, s3, s4
  ADDI s4, zero, 116
  LW t4, 44(sp)
  MULW s4, t4, s4
  ADDW s3, s3, s4
  ADDI s4, zero, 39
  LW t4, 48(sp)
  MULW s4, t4, s4
  ADDW s3, s3, s4
  ADDI s4, zero, -63
  LW t4, 52(sp)
  MULW s4, t4, s4
  ADDW s3, s3, s4
  ADDI s4, zero, -99
  LW t4, 56(sp)
  MULW s4, t4, s4
  ADDW s3, s3, s4
  ADDI s4, zero, 65
  LW t4, 60(sp)
  MULW s4, t4, s4
  ADDW s3, s3, s4
  ADDI s5, zero, 120
  LW t4, 64(sp)
  MULW s5, t4, s5
  ADDW s3, s3, s5
  ADDI s5, zero, -39
  LW t4, 68(sp)
  MULW s5, t4, s5
  ADDW s3, s3, s5
  ADDI s5, zero, -6
  LW t4, 72(sp)
  MULW s5, t4, s5
  ADDW s3, s3, s5
  ADDI s5, zero, 94
  LW t4, 76(sp)
  MULW s5, t4, s5
  ADDW s3, s3, s5
  ADDI s5, zero, 127
  BLT s5, s3, bb60
  # implict jump to bb13
bb13:
  BLT s3, zero, bb59
  # implict jump to bb14
bb14:
  # implict jump to bb15
bb15:
  ADDI s5, zero, 127
  MULW s3, s3, s5
  ADDW s1, s1, s3
  ADDI s3, zero, -23
  MULW s3, s0, s3
  ADDI s5, zero, -63
  MULW s5, s6, s5
  ADDW s3, s3, s5
  ADDI s5, zero, 49
  MULW s5, s7, s5
  ADDW s3, s3, s5
  ADDI s5, zero, 50
  LW t4, 124(sp)
  MULW s5, t4, s5
  ADDW s3, s3, s5
  ADDI s5, zero, 72
  LW t4, 120(sp)
  MULW s5, t4, s5
  ADDW s3, s3, s5
  ADDI s5, zero, 85
  LW t4, 116(sp)
  MULW s5, t4, s5
  ADDW s3, s3, s5
  ADDI s5, zero, -30
  LW t4, 112(sp)
  MULW s5, t4, s5
  ADDW s3, s3, s5
  ADDI s5, zero, 12
  LW t4, 80(sp)
  MULW s5, t4, s5
  ADDW s3, s3, s5
  ADDI s5, zero, 125
  LW t4, 28(sp)
  MULW s5, t4, s5
  ADDW s3, s3, s5
  ADDI s11, zero, -117
  LW t4, 24(sp)
  MULW s11, t4, s11
  ADDW s3, s3, s11
  ADDI s11, zero, -65
  LW t4, 16(sp)
  MULW s11, t4, s11
  ADDW s3, s3, s11
  ADDW s2, s3, s2
  ADDI s3, zero, 125
  MULW s3, s8, s3
  ADDW s2, s2, s3
  ADDI s3, zero, 110
  LW t4, 32(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, -31
  LW t4, 36(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, -123
  LW t4, 4(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, 83
  LW t4, 44(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, 122
  LW t4, 48(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, 11
  LW t4, 52(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, -23
  LW t4, 56(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, -47
  LW t4, 60(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, -32
  LW t4, 64(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, -117
  LW t4, 68(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, 95
  LW t4, 72(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, 118
  LW t4, 76(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, 127
  BLT s3, s2, bb58
  # implict jump to bb16
bb16:
  BLT s2, zero, bb57
  # implict jump to bb17
bb17:
  # implict jump to bb18
bb18:
  ADDI s3, zero, -106
  MULW s2, s2, s3
  ADDW s1, s1, s2
  SLLIW s2, s0, 3
  ADDI s3, zero, 82
  MULW s3, s6, s3
  ADDW s2, s2, s3
  ADDI s11, zero, -104
  MULW s11, s7, s11
  ADDW s2, s2, s11
  ADDI s11, zero, 101
  LW t4, 124(sp)
  MULW s11, t4, s11
  ADDW s2, s2, s11
  ADDI s11, zero, -116
  LW t4, 120(sp)
  MULW s11, t4, s11
  ADDW s2, s2, s11
  ADDI s11, zero, -63
  LW t4, 116(sp)
  MULW s11, t4, s11
  ADDW s2, s2, s11
  ADDI s11, zero, -16
  LW t4, 112(sp)
  MULW s11, t4, s11
  ADDW s2, s2, s11
  ADDI s11, zero, -70
  LW t4, 80(sp)
  MULW s11, t4, s11
  ADDW s2, s2, s11
  ADDW s2, s2, s5
  ADDI s5, zero, 75
  LW t4, 24(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, 66
  LW t4, 16(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, -96
  LW t4, 20(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, -101
  MULW s5, s8, s5
  ADDW s2, s2, s5
  ADDI s5, zero, -114
  LW t4, 32(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, 59
  LW t4, 36(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, 12
  LW t4, 4(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, 5
  LW t4, 44(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, -95
  LW t4, 48(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, 116
  LW t4, 52(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, -93
  LW t4, 56(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, 15
  LW t4, 60(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, 79
  LW t4, 64(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, 3
  LW t4, 68(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, 49
  LW t4, 72(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, -124
  LW t4, 76(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, 127
  BLT s5, s2, bb56
  # implict jump to bb19
bb19:
  BLT s2, zero, bb55
  # implict jump to bb20
bb20:
  # implict jump to bb21
bb21:
  ADDI s5, zero, -3
  MULW s2, s2, s5
  ADDW s1, s1, s2
  ADDI s2, zero, 81
  MULW s2, s0, s2
  ADDI s5, zero, 68
  MULW s5, s6, s5
  ADDW s2, s2, s5
  ADDI s5, zero, -102
  MULW s5, s7, s5
  ADDW s2, s2, s5
  ADDI s5, zero, -74
  LW t4, 124(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, 121
  LW t4, 120(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s5, zero, -15
  LW t4, 116(sp)
  MULW s5, t4, s5
  ADDW s2, s2, s5
  ADDI s11, zero, 55
  LW t4, 112(sp)
  MULW s11, t4, s11
  ADDW s2, s2, s11
  ADDI s11, zero, 101
  LW t4, 80(sp)
  MULW s11, t4, s11
  ADDW s2, s2, s11
  ADDI s11, zero, -13
  LW t4, 28(sp)
  MULW s11, t4, s11
  ADDW s2, s2, s11
  ADDI s11, zero, -62
  LW t4, 24(sp)
  MULW s11, t4, s11
  ADDW s2, s2, s11
  LW t4, 16(sp)
  SLLIW s10, t4, 6
  ADDW s2, s2, s10
  ADDI s10, zero, 114
  LW t4, 20(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, 38
  MULW s10, s8, s10
  ADDW s2, s2, s10
  ADDI s10, zero, -21
  LW t4, 32(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, 112
  LW t4, 36(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, 114
  LW t4, 4(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, 112
  LW t4, 44(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, -10
  LW t4, 48(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, -16
  LW t4, 52(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, -50
  LW t4, 56(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, -112
  LW t4, 60(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, -116
  LW t4, 64(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, -54
  LW t4, 68(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, 82
  LW t4, 72(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, -72
  LW t4, 76(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, 127
  BLT s10, s2, bb54
  # implict jump to bb22
bb22:
  BLT s2, zero, bb53
  # implict jump to bb23
bb23:
  # implict jump to bb24
bb24:
  SLLIW s2, s2, 5
  ADDW s1, s1, s2
  ADDI s2, zero, 15
  MULW s2, s0, s2
  ADDI s10, zero, -77
  MULW s10, s6, s10
  ADDW s2, s2, s10
  ADDI s10, zero, 66
  MULW s10, s7, s10
  ADDW s2, s2, s10
  ADDI s10, zero, -90
  LW t4, 124(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, -6
  LW t4, 120(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, -30
  LW t4, 116(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, -8
  LW t4, 112(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, 81
  LW t4, 80(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  LW t4, 28(sp)
  SLLIW s10, t4, 1
  ADDW s2, s2, s10
  ADDI s10, zero, -110
  LW t4, 24(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, -95
  LW t4, 16(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, 59
  LW t4, 20(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, 52
  MULW s10, s8, s10
  ADDW s2, s2, s10
  ADDI s10, zero, 15
  LW t4, 32(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, 55
  LW t4, 36(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, -33
  LW t4, 4(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, 14
  LW t4, 44(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, 58
  LW t4, 48(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, 67
  LW t4, 52(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, 86
  LW t4, 56(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, -79
  LW t4, 60(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, 48
  LW t4, 64(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, -13
  LW t4, 68(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, -15
  LW t4, 72(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, 66
  LW t4, 76(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, 127
  BLT s10, s2, bb52
  # implict jump to bb25
bb25:
  BLT s2, zero, bb51
  # implict jump to bb26
bb26:
  # implict jump to bb27
bb27:
  ADDI s10, zero, -95
  MULW s2, s2, s10
  ADDW s1, s1, s2
  ADDI s2, zero, 33
  MULW s2, s0, s2
  ADDW s2, s2, s3
  ADDI s3, zero, 67
  MULW s3, s7, s3
  ADDW s2, s2, s3
  ADDI s3, zero, 30
  LW t4, 124(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, -2
  LW t4, 120(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, 65
  LW t4, 116(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, 120
  LW t4, 112(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, -13
  LW t4, 80(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, 18
  LW t4, 28(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, 5
  LW t4, 24(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, 104
  LW t4, 16(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, -119
  LW t4, 20(sp)
  MULW s3, t4, s3
  ADDW s2, s2, s3
  ADDI s3, zero, -7
  MULW s3, s8, s3
  ADDW s2, s2, s3
  ADDI s10, zero, 71
  LW t4, 32(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, 107
  LW t4, 36(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, 24
  LW t4, 4(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, 82
  LW t4, 44(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, -96
  LW t4, 48(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, -104
  LW t4, 52(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDI s10, zero, -121
  LW t4, 56(sp)
  MULW s10, t4, s10
  ADDW s2, s2, s10
  ADDW s2, s2, s4
  ADDI s4, zero, 97
  LW t4, 64(sp)
  MULW s4, t4, s4
  ADDW s2, s2, s4
  ADDI s4, zero, 83
  LW t4, 68(sp)
  MULW s4, t4, s4
  ADDW s2, s2, s4
  ADDI s4, zero, 46
  LW t4, 72(sp)
  MULW s4, t4, s4
  ADDW s2, s2, s4
  ADDI s4, zero, -84
  LW t4, 76(sp)
  MULW s4, t4, s4
  ADDW s2, s2, s4
  ADDI s4, zero, 127
  BLT s4, s2, bb50
  # implict jump to bb28
bb28:
  BLT s2, zero, bb49
  # implict jump to bb29
bb29:
  # implict jump to bb30
bb30:
  ADDI s4, zero, -50
  MULW s2, s2, s4
  ADDW s1, s1, s2
  ADDI s2, zero, -29
  MULW s2, s0, s2
  ADDI s4, zero, 7
  MULW s4, s6, s4
  ADDW s2, s2, s4
  ADDW s2, s2, s9
  ADDI s4, zero, 38
  LW t4, 124(sp)
  MULW s4, t4, s4
  ADDW s2, s2, s4
  ADDI s4, zero, -90
  LW t4, 120(sp)
  MULW s4, t4, s4
  ADDW s2, s2, s4
  ADDW s2, s2, s5
  ADDI s4, zero, -32
  LW t4, 112(sp)
  MULW s4, t4, s4
  ADDW s2, s2, s4
  ADDI s4, zero, 37
  LW t4, 80(sp)
  MULW s4, t4, s4
  ADDW s2, s2, s4
  ADDI s4, zero, 36
  LW t4, 28(sp)
  MULW s4, t4, s4
  ADDW s2, s2, s4
  ADDW s2, s2, s11
  ADDI s4, zero, -125
  LW t4, 16(sp)
  MULW s4, t4, s4
  ADDW s2, s2, s4
  ADDI s4, zero, -46
  LW t4, 20(sp)
  MULW s4, t4, s4
  ADDW s2, s2, s4
  ADDI s4, zero, -70
  MULW s4, s8, s4
  ADDW s2, s2, s4
  ADDI s4, zero, 37
  LW t4, 32(sp)
  MULW s4, t4, s4
  ADDW s2, s2, s4
  ADDI s4, zero, -73
  LW t4, 36(sp)
  MULW s4, t4, s4
  ADDW s2, s2, s4
  ADDI s4, zero, -34
  LW t4, 4(sp)
  MULW s4, t4, s4
  ADDW s2, s2, s4
  ADDI s4, zero, -87
  LW t4, 44(sp)
  MULW s4, t4, s4
  ADDW s2, s2, s4
  ADDI s4, zero, -75
  LW t4, 48(sp)
  MULW s4, t4, s4
  ADDW s2, s2, s4
  ADDI s4, zero, 71
  LW t4, 52(sp)
  MULW s4, t4, s4
  ADDW s2, s2, s4
  ADDI s4, zero, -77
  LW t4, 56(sp)
  MULW s4, t4, s4
  ADDW s2, s2, s4
  ADDI s4, zero, 53
  LW t4, 60(sp)
  MULW s4, t4, s4
  ADDW s2, s2, s4
  ADDI s4, zero, 37
  LW t4, 64(sp)
  MULW s4, t4, s4
  ADDW s2, s2, s4
  ADDI s4, zero, -103
  LW t4, 68(sp)
  MULW s4, t4, s4
  ADDW s2, s2, s4
  ADDI s4, zero, -13
  LW t4, 72(sp)
  MULW s4, t4, s4
  ADDW s2, s2, s4
  ADDI s4, zero, -114
  LW t4, 76(sp)
  MULW s4, t4, s4
  ADDW s2, s2, s4
  ADDI s4, zero, 127
  BLT s4, s2, bb48
  # implict jump to bb31
bb31:
  BLT s2, zero, bb47
  # implict jump to bb32
bb32:
  # implict jump to bb33
bb33:
  ADDI s4, zero, -23
  MULW s2, s2, s4
  ADDW s1, s1, s2
  ADDI s2, zero, 67
  MULW s0, s0, s2
  ADDI s2, zero, 42
  MULW s2, s6, s2
  ADDW s0, s0, s2
  ADDI s2, zero, 41
  MULW s2, s7, s2
  ADDW s0, s0, s2
  ADDI s2, zero, -123
  LW t4, 124(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  ADDI s2, zero, -92
  LW t4, 120(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  ADDI s2, zero, 10
  LW t4, 116(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  ADDI s2, zero, -77
  LW t4, 112(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  ADDI s2, zero, 75
  LW t4, 80(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  ADDI s2, zero, 96
  LW t4, 28(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  ADDI s2, zero, -51
  LW t4, 24(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  ADDI s2, zero, 109
  LW t4, 16(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  ADDI s2, zero, -74
  LW t4, 20(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  ADDW s0, s0, s3
  ADDI s2, zero, -122
  LW t4, 32(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  ADDI s2, zero, 67
  LW t4, 36(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  ADDI s2, zero, 47
  LW t4, 4(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  ADDI s2, zero, 22
  LW t4, 44(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  ADDI s2, zero, -68
  LW t4, 48(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  ADDI s2, zero, 38
  LW t4, 52(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  ADDI s2, zero, 29
  LW t4, 56(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  ADDI s2, zero, 115
  LW t4, 60(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  ADDI s2, zero, -121
  LW t4, 64(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  ADDI s2, zero, 36
  LW t4, 68(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  ADDI s2, zero, -49
  LW t4, 72(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  ADDI s2, zero, 85
  LW t4, 76(sp)
  MULW s2, t4, s2
  ADDW s0, s0, s2
  ADDI s2, zero, 127
  BLT s2, s0, bb46
  # implict jump to bb34
bb34:
  BLT s0, zero, bb45
  # implict jump to bb35
bb35:
  # implict jump to bb36
bb36:
  ADDI s2, zero, 46
  MULW s0, s0, s2
  ADDW s0, s1, s0
  BLT zero, s0, bb44
  # implict jump to bb37
bb37:
  ADD s0, zero, zero
  # implict jump to bb38
bb38:
  BNE s0, zero, bb43
  # implict jump to bb39
bb39:
  ADDI a0, zero, 100
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 103
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb40
bb40:
  ADDI s0, zero, 1
  LW t3, 104(sp)
  SUBW t4, t3, s0
  SW t4, 12(sp)
  # implict jump to bb41
bb41:
  ADDI s0, zero, 0
  LW t4, 12(sp)
  BLT s0, t4, bb42
  JAL zero, bb1
bb42:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb4
bb43:
  ADDI a0, zero, 99
  CALL putch
  ADDI a0, zero, 97
  CALL putch
  ADDI a0, zero, 116
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb40
bb44:
  ADDI s0, zero, 1
  JAL zero, bb38
bb45:
  ADD s0, zero, zero
  JAL zero, bb36
bb46:
  ADDI s0, zero, 127
  JAL zero, bb36
bb47:
  ADD s2, zero, zero
  JAL zero, bb33
bb48:
  ADDI s2, zero, 127
  JAL zero, bb33
bb49:
  ADD s2, zero, zero
  JAL zero, bb30
bb50:
  ADDI s2, zero, 127
  JAL zero, bb30
bb51:
  ADD s2, zero, zero
  JAL zero, bb27
bb52:
  ADDI s2, zero, 127
  JAL zero, bb27
bb53:
  ADD s2, zero, zero
  JAL zero, bb24
bb54:
  ADDI s2, zero, 127
  JAL zero, bb24
bb55:
  ADD s2, zero, zero
  JAL zero, bb21
bb56:
  ADDI s2, zero, 127
  JAL zero, bb21
bb57:
  ADD s2, zero, zero
  JAL zero, bb18
bb58:
  ADDI s2, zero, 127
  JAL zero, bb18
bb59:
  ADD s3, zero, zero
  JAL zero, bb15
bb60:
  ADDI s3, zero, 127
  JAL zero, bb15
bb61:
  ADD s3, zero, zero
  JAL zero, bb12
bb62:
  ADDI s3, zero, 127
  JAL zero, bb12
bb63:
  ADD s1, zero, zero
  JAL zero, bb9
bb64:
  ADDI s1, zero, 127
  JAL zero, bb9
bb65:
  # implict jump to bb66
bb66:
  SLTI t4, zero, 5
  SB t4, 1(sp)
  ADD t4, zero, zero
  SW t4, 92(sp)
  # implict jump to bb67
bb67:
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  LB t4, 1(sp)
  BNE t4, zero, bb73
  # implict jump to bb68
bb68:
  ADD s4, zero, zero
  # implict jump to bb69
bb69:
  ADD s7, s4, zero
  LW t3, 108(sp)
  ADDIW t4, t3, 1
  SW t4, 88(sp)
  # implict jump to bb70
bb70:
  LW t4, 88(sp)
  SLTI s0, t4, 5
  BNE s0, zero, bb72
  # implict jump to bb71
bb71:
  ADD s10, s7, zero
  JAL zero, bb6
bb72:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  JAL zero, bb67
bb73:
  # implict jump to bb74
bb74:
  ADDI s11, zero, 20
  LW t4, 108(sp)
  MULW s11, t4, s11
  ADDI t4, sp, 200
  ADD t4, t4, s11
  SD t4, 304(sp)
  ADD t4, zero, zero
  SW t4, 100(sp)
  # implict jump to bb75
bb75:
  LW t4, 100(sp)
  ADD s6, t4, zero
  SLLIW s11, s6, 2
  LD t4, 304(sp)
  ADD s11, t4, s11
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(s11)
  ADDIW t4, s6, 1
  SW t4, 96(sp)
  # implict jump to bb76
bb76:
  LW t4, 96(sp)
  SLTI s0, t4, 5
  BNE s0, zero, bb78
  # implict jump to bb77
bb77:
  LW t4, 96(sp)
  ADD s4, t4, zero
  JAL zero, bb69
bb78:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  JAL zero, bb75
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
  BLT t6, s2, bb131
  # implict jump to bb80
bb80:
  BLT s2, zero, bb130
  # implict jump to bb81
bb81:
  # implict jump to bb82
bb82:
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
  BLT t6, s0, bb129
  # implict jump to bb83
bb83:
  BLT s0, zero, bb128
  # implict jump to bb84
bb84:
  # implict jump to bb85
bb85:
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
  BLT a6, s2, bb127
  # implict jump to bb86
bb86:
  BLT s2, zero, bb126
  # implict jump to bb87
bb87:
  # implict jump to bb88
bb88:
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
  BLT t2, s2, bb125
  # implict jump to bb89
bb89:
  BLT s2, zero, bb124
  # implict jump to bb90
bb90:
  # implict jump to bb91
bb91:
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
  BLT a5, s2, bb123
  # implict jump to bb92
bb92:
  BLT s2, zero, bb122
  # implict jump to bb93
bb93:
  # implict jump to bb94
bb94:
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
  BLT a4, s2, bb121
  # implict jump to bb95
bb95:
  BLT s2, zero, bb120
  # implict jump to bb96
bb96:
  # implict jump to bb97
bb97:
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
  BLT a4, s2, bb119
  # implict jump to bb98
bb98:
  BLT s2, zero, bb118
  # implict jump to bb99
bb99:
  # implict jump to bb100
bb100:
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
  BLT a4, s2, bb117
  # implict jump to bb101
bb101:
  BLT s2, zero, bb116
  # implict jump to bb102
bb102:
  # implict jump to bb103
bb103:
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
  BLT a1, s2, bb115
  # implict jump to bb104
bb104:
  BLT s2, zero, bb114
  # implict jump to bb105
bb105:
  # implict jump to bb106
bb106:
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
  BLT s2, s1, bb113
  # implict jump to bb107
bb107:
  BLT s1, zero, bb112
  # implict jump to bb108
bb108:
  # implict jump to bb109
bb109:
  ADDI s2, zero, 46
  MULW s1, s1, s2
  ADDW s0, s0, s1
  BLT zero, s0, bb111
  # implict jump to bb110
bb110:
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
bb111:
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
bb112:
  ADD s1, zero, zero
  JAL zero, bb109
bb113:
  ADDI s1, zero, 127
  JAL zero, bb109
bb114:
  ADD s2, zero, zero
  JAL zero, bb106
bb115:
  ADDI s2, zero, 127
  JAL zero, bb106
bb116:
  ADD s2, zero, zero
  JAL zero, bb103
bb117:
  ADDI s2, zero, 127
  JAL zero, bb103
bb118:
  ADD s2, zero, zero
  JAL zero, bb100
bb119:
  ADDI s2, zero, 127
  JAL zero, bb100
bb120:
  ADD s2, zero, zero
  JAL zero, bb97
bb121:
  ADDI s2, zero, 127
  JAL zero, bb97
bb122:
  ADD s2, zero, zero
  JAL zero, bb94
bb123:
  ADDI s2, zero, 127
  JAL zero, bb94
bb124:
  ADD s2, zero, zero
  JAL zero, bb91
bb125:
  ADDI s2, zero, 127
  JAL zero, bb91
bb126:
  ADD s2, zero, zero
  JAL zero, bb88
bb127:
  ADDI s2, zero, 127
  JAL zero, bb88
bb128:
  ADD s0, zero, zero
  JAL zero, bb85
bb129:
  ADDI s0, zero, 127
  JAL zero, bb85
bb130:
  ADD s2, zero, zero
  JAL zero, bb82
bb131:
  ADDI s2, zero, 127
  JAL zero, bb82
relu_reg:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 127
  BLT s1, s0, bb136
  # implict jump to bb133
bb133:
  BLT s0, zero, bb135
  # implict jump to bb134
bb134:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb135:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb136:
  ADDI a0, zero, 127
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
