.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -368
  SD ra, 200(sp)
  SD s0, 208(sp)
  SD s1, 216(sp)
  SD s2, 224(sp)
  SD s3, 232(sp)
  SD s4, 240(sp)
  SD s11, 248(sp)
  CALL getint
  ADD s1, a0, zero
  ADDI s0, zero, 0
  BLT s0, s1, bb2
  # implict jump to bb1
bb1:
  ADD a0, zero, zero
  LD ra, 200(sp)
  LD s0, 208(sp)
  LD s1, 216(sp)
  LD s2, 224(sp)
  LD s3, 232(sp)
  LD s4, 240(sp)
  LD s11, 248(sp)
  ADDI sp, sp, 368
  JALR zero, 0(ra)
bb2:
  ADD s0, s1, zero
  # implict jump to bb3
bb3:
  SW s0, 84(sp)
  ADD s0, zero, zero
  # implict jump to bb4
bb4:
  ADD s1, s0, zero
  ADDI s0, zero, 20
  MULW s0, s1, s0
  ADDI t5, sp, 256
  ADD s2, t5, s0
  ADD s0, zero, zero
  # implict jump to bb5
bb5:
  SLLIW s3, s0, 2
  ADD s3, s2, s3
  CALL getint
  ADD s4, a0, zero
  SW s4, 0(s3)
  ADDIW s0, s0, 1
  SLTI s3, s0, 5
  BNE s3, zero, bb68
  # implict jump to bb6
bb6:
  # implict jump to bb7
bb7:
  ADDIW s1, s1, 1
  SLTI s0, s1, 5
  BNE s0, zero, bb67
  # implict jump to bb8
bb8:
  # implict jump to bb9
bb9:
  LW a0, 256(sp)
  SW a0, 80(sp)
  ADDI s0, zero, 85
  LW a0, 80(sp)
  MULW s1, a0, s0
  LW a0, 260(sp)
  SW a0, 76(sp)
  ADDI s0, zero, 23
  LW a0, 76(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 264(sp)
  SW a0, 72(sp)
  ADDI s0, zero, -82
  LW a0, 72(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 268(sp)
  SW a0, 68(sp)
  ADDI s0, zero, -103
  LW a0, 68(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 272(sp)
  SW a0, 12(sp)
  ADDI s0, zero, -123
  LW a0, 12(sp)
  MULW a0, a0, s0
  ADDW s0, s1, a0
  LW a0, 276(sp)
  SW a0, 8(sp)
  LW a0, 8(sp)
  SLLIW a0, a0, 6
  ADDW s1, s0, a0
  LW a0, 280(sp)
  SW a0, 4(sp)
  ADDI s0, zero, -120
  LW a0, 4(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 284(sp)
  SW a0, 60(sp)
  ADDI s0, zero, 50
  LW a0, 60(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 288(sp)
  SW a0, 116(sp)
  ADDI s0, zero, -59
  LW a0, 116(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 292(sp)
  SW a0, 164(sp)
  ADDI s0, zero, 47
  LW a0, 164(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 296(sp)
  SW a0, 168(sp)
  ADDI s0, zero, -111
  LW a0, 168(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 300(sp)
  SW a0, 172(sp)
  ADDI s0, zero, -67
  LW a0, 172(sp)
  MULW s3, a0, s0
  ADDW s1, s1, s3
  LW a0, 304(sp)
  SW a0, 176(sp)
  ADDI s0, zero, -106
  LW a0, 176(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 308(sp)
  SW a0, 180(sp)
  ADDI s0, zero, -75
  LW a0, 180(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 312(sp)
  SW a0, 184(sp)
  ADDI s0, zero, -102
  LW a0, 184(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 316(sp)
  SW a0, 188(sp)
  ADDI s0, zero, 34
  LW a0, 188(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 320(sp)
  SW a0, 192(sp)
  ADDI s0, zero, -39
  LW a0, 192(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 324(sp)
  SW a0, 160(sp)
  ADDI s0, zero, 65
  LW a0, 160(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 328(sp)
  SW a0, 196(sp)
  ADDI s0, zero, 47
  LW a0, 196(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 332(sp)
  SW a0, 156(sp)
  ADDI s0, zero, 113
  LW a0, 156(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 336(sp)
  SW a0, 152(sp)
  ADDI s0, zero, 110
  LW a0, 152(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 340(sp)
  SW a0, 148(sp)
  ADDI s0, zero, 47
  LW a0, 148(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 344(sp)
  SW a0, 144(sp)
  ADDI s0, zero, -4
  LW a0, 144(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 348(sp)
  SW a0, 140(sp)
  ADDI s0, zero, 80
  LW a0, 140(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 352(sp)
  SW a0, 136(sp)
  ADDI s0, zero, 46
  LW a0, 136(sp)
  MULW a0, a0, s0
  ADDW s0, s1, a0
  ADDI a0, zero, 127
  BLT a0, s0, bb66
  # implict jump to bb10
bb10:
  BLT s0, zero, bb65
  # implict jump to bb11
bb11:
  ADD a0, s0, zero
  # implict jump to bb12
bb12:
  ADD s0, a0, zero
  ADDI a0, zero, 39
  MULW s2, s0, a0
  ADDI s0, zero, -106
  LW a0, 80(sp)
  MULW s1, a0, s0
  ADDI s0, zero, 126
  LW a0, 76(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -18
  LW a0, 72(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -31
  LW a0, 68(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -8
  LW a0, 12(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 47
  LW a0, 8(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -4
  LW a0, 4(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 67
  LW a0, 60(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -94
  LW a0, 116(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -121
  LW a0, 164(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 7
  LW a0, 168(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -21
  LW a0, 172(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -60
  LW a0, 176(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -43
  LW a0, 180(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 105
  LW a0, 184(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -42
  LW a0, 188(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 87
  LW a0, 192(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 29
  LW a0, 160(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -106
  LW a0, 196(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -31
  LW a0, 156(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -110
  LW a0, 152(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -100
  LW a0, 148(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -22
  LW a0, 144(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -75
  LW a0, 140(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -125
  LW a0, 136(sp)
  MULW a0, a0, s0
  ADDW s0, s1, a0
  ADDI a0, zero, 127
  BLT a0, s0, bb64
  # implict jump to bb13
bb13:
  BLT s0, zero, bb63
  # implict jump to bb14
bb14:
  ADD a0, s0, zero
  # implict jump to bb15
bb15:
  ADD s0, a0, zero
  ADDI a0, zero, 77
  MULW a0, s0, a0
  ADDW s2, s2, a0
  ADDI s0, zero, 26
  LW a0, 80(sp)
  MULW s1, a0, s0
  ADDI s0, zero, 76
  LW a0, 76(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -70
  LW a0, 72(sp)
  MULW a0, a0, s0
  SW a0, 112(sp)
  LW a0, 112(sp)
  ADDW s1, s1, a0
  ADDI s0, zero, 29
  LW a0, 68(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -95
  LW a0, 12(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 96
  LW a0, 8(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 52
  LW a0, 4(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -68
  LW a0, 60(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -5
  LW a0, 116(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 34
  LW a0, 164(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -34
  LW a0, 168(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 102
  LW a0, 172(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 6
  LW a0, 176(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -38
  LW a0, 180(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 27
  LW a0, 184(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 110
  LW a0, 188(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 116
  LW a0, 192(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 39
  LW a0, 160(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -63
  LW a0, 196(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -99
  LW a0, 156(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 65
  LW a0, 152(sp)
  MULW a0, a0, s0
  SW a0, 132(sp)
  LW a0, 132(sp)
  ADDW s1, s1, a0
  ADDI s0, zero, 120
  LW a0, 148(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -39
  LW a0, 144(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -6
  LW a0, 140(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 94
  LW a0, 136(sp)
  MULW a0, a0, s0
  ADDW s0, s1, a0
  ADDI a0, zero, 127
  BLT a0, s0, bb62
  # implict jump to bb16
bb16:
  BLT s0, zero, bb61
  # implict jump to bb17
bb17:
  ADD a0, s0, zero
  # implict jump to bb18
bb18:
  ADD s0, a0, zero
  ADDI a0, zero, 127
  MULW a0, s0, a0
  ADDW s2, s2, a0
  ADDI s0, zero, -23
  LW a0, 80(sp)
  MULW s1, a0, s0
  ADDI s0, zero, -63
  LW a0, 76(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 49
  LW a0, 72(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 50
  LW a0, 68(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 72
  LW a0, 12(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 85
  LW a0, 8(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -30
  LW a0, 4(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 12
  LW a0, 60(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 125
  LW a0, 116(sp)
  MULW s11, a0, s0
  ADDW s1, s1, s11
  ADDI a0, zero, -117
  SW a0, 128(sp)
  LW s0, 164(sp)
  LW a0, 128(sp)
  MULW a0, s0, a0
  ADDW s1, s1, a0
  ADDI a0, zero, -65
  SW a0, 124(sp)
  LW s0, 168(sp)
  LW a0, 124(sp)
  MULW a0, s0, a0
  ADDW a0, s1, a0
  ADDW s1, a0, s3
  ADDI s0, zero, 125
  LW a0, 176(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 110
  LW a0, 180(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -31
  LW a0, 184(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -123
  LW a0, 188(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 83
  LW a0, 192(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 122
  LW a0, 160(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 11
  LW a0, 196(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -23
  LW a0, 156(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -47
  LW a0, 152(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -32
  LW a0, 148(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -117
  LW a0, 144(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 95
  LW a0, 140(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 118
  LW a0, 136(sp)
  MULW a0, a0, s0
  ADDW s0, s1, a0
  ADDI a0, zero, 127
  BLT a0, s0, bb60
  # implict jump to bb19
bb19:
  BLT s0, zero, bb59
  # implict jump to bb20
bb20:
  ADD a0, s0, zero
  # implict jump to bb21
bb21:
  ADD s0, a0, zero
  ADDI a0, zero, -106
  MULW a0, s0, a0
  ADDW s2, s2, a0
  LW a0, 80(sp)
  SLLIW s1, a0, 3
  ADDI s0, zero, 82
  LW a0, 76(sp)
  MULW s3, a0, s0
  ADDW s1, s1, s3
  ADDI s0, zero, -104
  LW a0, 72(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 101
  LW a0, 68(sp)
  MULW a0, a0, s0
  ADDW a0, s1, a0
  SW a0, 108(sp)
  ADDI s0, zero, -116
  LW a0, 12(sp)
  MULW s0, a0, s0
  LW a0, 108(sp)
  ADDW a0, a0, s0
  SW a0, 104(sp)
  ADDI s0, zero, -63
  LW a0, 8(sp)
  MULW s0, a0, s0
  LW a0, 104(sp)
  ADDW a0, a0, s0
  SW a0, 100(sp)
  ADDI s0, zero, -16
  LW a0, 4(sp)
  MULW s0, a0, s0
  LW a0, 100(sp)
  ADDW a0, a0, s0
  SW a0, 96(sp)
  ADDI s0, zero, -70
  LW a0, 60(sp)
  MULW s0, a0, s0
  LW a0, 96(sp)
  ADDW a0, a0, s0
  ADDW s1, a0, s11
  ADDI s0, zero, 75
  LW a0, 164(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 66
  LW a0, 168(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -96
  LW a0, 172(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -101
  LW a0, 176(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -114
  LW a0, 180(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 59
  LW a0, 184(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 12
  LW a0, 188(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 5
  LW a0, 192(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -95
  LW a0, 160(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 116
  LW a0, 196(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -93
  LW a0, 156(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 15
  LW a0, 152(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 79
  LW a0, 148(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 3
  LW a0, 144(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 49
  LW a0, 140(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -124
  LW a0, 136(sp)
  MULW a0, a0, s0
  ADDW s0, s1, a0
  ADDI a0, zero, 127
  BLT a0, s0, bb58
  # implict jump to bb22
bb22:
  BLT s0, zero, bb57
  # implict jump to bb23
bb23:
  ADD a0, s0, zero
  # implict jump to bb24
bb24:
  ADD s0, a0, zero
  ADDI a0, zero, -3
  MULW a0, s0, a0
  ADDW s2, s2, a0
  ADDI s0, zero, 81
  LW a0, 80(sp)
  MULW s1, a0, s0
  ADDI s0, zero, 68
  LW a0, 76(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -102
  LW a0, 72(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -74
  LW a0, 68(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 121
  LW a0, 12(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -15
  LW a0, 8(sp)
  MULW a0, a0, s0
  SW a0, 92(sp)
  LW a0, 92(sp)
  ADDW s1, s1, a0
  ADDI s0, zero, 55
  LW a0, 4(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 101
  LW a0, 60(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -13
  LW a0, 116(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -62
  LW a0, 164(sp)
  MULW a0, a0, s0
  SW a0, 88(sp)
  LW a0, 88(sp)
  ADDW s0, s1, a0
  LW a0, 168(sp)
  SLLIW a0, a0, 6
  ADDW s1, s0, a0
  ADDI s0, zero, 114
  LW a0, 172(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 38
  LW a0, 176(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -21
  LW a0, 180(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 112
  LW a0, 184(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 114
  LW a0, 188(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 112
  LW a0, 192(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -10
  LW a0, 160(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -16
  LW a0, 196(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -50
  LW a0, 156(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -112
  LW a0, 152(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -116
  LW a0, 148(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -54
  LW a0, 144(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 82
  LW a0, 140(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -72
  LW a0, 136(sp)
  MULW a0, a0, s0
  ADDW s0, s1, a0
  ADDI a0, zero, 127
  BLT a0, s0, bb56
  # implict jump to bb25
bb25:
  BLT s0, zero, bb55
  # implict jump to bb26
bb26:
  ADD a0, s0, zero
  # implict jump to bb27
bb27:
  SLLIW a0, a0, 5
  ADDW s2, s2, a0
  ADDI s0, zero, 15
  LW a0, 80(sp)
  MULW s1, a0, s0
  ADDI s0, zero, -77
  LW a0, 76(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 66
  LW a0, 72(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -90
  LW a0, 68(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -6
  LW a0, 12(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -30
  LW a0, 8(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -8
  LW a0, 4(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 81
  LW a0, 60(sp)
  MULW a0, a0, s0
  ADDW s0, s1, a0
  LW a0, 116(sp)
  SLLIW a0, a0, 1
  ADDW s1, s0, a0
  ADDI s0, zero, -110
  LW a0, 164(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -95
  LW a0, 168(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 59
  LW a0, 172(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 52
  LW a0, 176(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 15
  LW a0, 180(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 55
  LW a0, 184(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -33
  LW a0, 188(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 14
  LW a0, 192(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 58
  LW a0, 160(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 67
  LW a0, 196(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 86
  LW a0, 156(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -79
  LW a0, 152(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 48
  LW a0, 148(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -13
  LW a0, 144(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -15
  LW a0, 140(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 66
  LW a0, 136(sp)
  MULW a0, a0, s0
  ADDW s0, s1, a0
  ADDI a0, zero, 127
  BLT a0, s0, bb54
  # implict jump to bb28
bb28:
  BLT s0, zero, bb53
  # implict jump to bb29
bb29:
  ADD a0, s0, zero
  # implict jump to bb30
bb30:
  ADD s0, a0, zero
  ADDI a0, zero, -95
  MULW a0, s0, a0
  ADDW s1, s2, a0
  ADDI s0, zero, 33
  LW a0, 80(sp)
  MULW a0, a0, s0
  ADDW s2, a0, s3
  ADDI s0, zero, 67
  LW a0, 72(sp)
  MULW a0, a0, s0
  ADDW s2, s2, a0
  ADDI s0, zero, 30
  LW a0, 68(sp)
  MULW a0, a0, s0
  ADDW s2, s2, a0
  ADDI s0, zero, -2
  LW a0, 12(sp)
  MULW a0, a0, s0
  ADDW s2, s2, a0
  ADDI s0, zero, 65
  LW a0, 8(sp)
  MULW a0, a0, s0
  ADDW s2, s2, a0
  ADDI s0, zero, 120
  LW a0, 4(sp)
  MULW a0, a0, s0
  ADDW s2, s2, a0
  ADDI s0, zero, -13
  LW a0, 60(sp)
  MULW a0, a0, s0
  ADDW s2, s2, a0
  ADDI s0, zero, 18
  LW a0, 116(sp)
  MULW a0, a0, s0
  ADDW s2, s2, a0
  ADDI s0, zero, 5
  LW a0, 164(sp)
  MULW a0, a0, s0
  ADDW s2, s2, a0
  ADDI s0, zero, 104
  LW a0, 168(sp)
  MULW a0, a0, s0
  ADDW s2, s2, a0
  ADDI s0, zero, -119
  LW a0, 172(sp)
  MULW a0, a0, s0
  ADDW s3, s2, a0
  ADDI s0, zero, -7
  LW a0, 176(sp)
  MULW s2, a0, s0
  ADDW s3, s3, s2
  ADDI s0, zero, 71
  LW a0, 180(sp)
  MULW a0, a0, s0
  ADDW s3, s3, a0
  ADDI a0, zero, 107
  LW s0, 184(sp)
  MULW a0, s0, a0
  ADDW s3, s3, a0
  ADDI a0, zero, 24
  LW s0, 188(sp)
  MULW a0, s0, a0
  ADDW s3, s3, a0
  ADDI a0, zero, 82
  LW s0, 192(sp)
  MULW a0, s0, a0
  ADDW s3, s3, a0
  ADDI a0, zero, -96
  LW s0, 160(sp)
  MULW a0, s0, a0
  ADDW s3, s3, a0
  ADDI a0, zero, -104
  LW s0, 196(sp)
  MULW a0, s0, a0
  ADDW s3, s3, a0
  ADDI a0, zero, -121
  LW s0, 156(sp)
  MULW a0, s0, a0
  ADDW s0, s3, a0
  LW a0, 132(sp)
  ADDW s3, s0, a0
  ADDI a0, zero, 97
  LW s0, 148(sp)
  MULW a0, s0, a0
  ADDW s3, s3, a0
  ADDI a0, zero, 83
  LW s0, 144(sp)
  MULW a0, s0, a0
  ADDW s3, s3, a0
  ADDI a0, zero, 46
  LW s0, 140(sp)
  MULW a0, s0, a0
  ADDW s3, s3, a0
  ADDI a0, zero, -84
  LW s0, 136(sp)
  MULW a0, s0, a0
  ADDW s0, s3, a0
  ADDI a0, zero, 127
  BLT a0, s0, bb52
  # implict jump to bb31
bb31:
  BLT s0, zero, bb51
  # implict jump to bb32
bb32:
  ADD a0, s0, zero
  # implict jump to bb33
bb33:
  ADD s0, a0, zero
  ADDI a0, zero, -50
  MULW a0, s0, a0
  ADDW s3, s1, a0
  ADDI s0, zero, -29
  LW a0, 80(sp)
  MULW s1, a0, s0
  ADDI s0, zero, 7
  LW a0, 76(sp)
  MULW a0, a0, s0
  ADDW s0, s1, a0
  LW a0, 112(sp)
  ADDW s1, s0, a0
  ADDI s0, zero, 38
  LW a0, 68(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI a0, zero, -90
  LW s0, 12(sp)
  MULW a0, s0, a0
  ADDW s0, s1, a0
  LW a0, 92(sp)
  ADDW s1, s0, a0
  ADDI a0, zero, -32
  LW s0, 4(sp)
  MULW a0, s0, a0
  ADDW s1, s1, a0
  ADDI a0, zero, 37
  LW s0, 60(sp)
  MULW a0, s0, a0
  ADDW s1, s1, a0
  ADDI a0, zero, 36
  LW s0, 116(sp)
  MULW a0, s0, a0
  ADDW s0, s1, a0
  LW a0, 88(sp)
  ADDW s1, s0, a0
  ADDI a0, zero, -125
  LW s0, 168(sp)
  MULW a0, s0, a0
  ADDW s1, s1, a0
  ADDI a0, zero, -46
  LW s0, 172(sp)
  MULW a0, s0, a0
  ADDW s1, s1, a0
  ADDI a0, zero, -70
  LW s0, 176(sp)
  MULW a0, s0, a0
  ADDW s1, s1, a0
  ADDI a0, zero, 37
  LW s0, 180(sp)
  MULW a0, s0, a0
  ADDW s1, s1, a0
  ADDI a0, zero, -73
  LW s0, 184(sp)
  MULW a0, s0, a0
  ADDW s1, s1, a0
  ADDI a0, zero, -34
  LW s0, 188(sp)
  MULW a0, s0, a0
  ADDW s1, s1, a0
  ADDI a0, zero, -87
  LW s0, 192(sp)
  MULW a0, s0, a0
  ADDW s1, s1, a0
  ADDI a0, zero, -75
  LW s0, 160(sp)
  MULW a0, s0, a0
  ADDW s1, s1, a0
  ADDI a0, zero, 71
  LW s0, 196(sp)
  MULW a0, s0, a0
  ADDW s1, s1, a0
  ADDI a0, zero, -77
  LW s0, 156(sp)
  MULW a0, s0, a0
  ADDW s1, s1, a0
  ADDI a0, zero, 53
  LW s0, 152(sp)
  MULW a0, s0, a0
  ADDW s1, s1, a0
  ADDI a0, zero, 37
  LW s0, 148(sp)
  MULW a0, s0, a0
  ADDW s1, s1, a0
  ADDI a0, zero, -103
  LW s0, 144(sp)
  MULW a0, s0, a0
  ADDW s1, s1, a0
  ADDI s0, zero, -13
  LW a0, 140(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -114
  LW a0, 136(sp)
  MULW a0, a0, s0
  ADDW s0, s1, a0
  ADDI a0, zero, 127
  BLT a0, s0, bb50
  # implict jump to bb34
bb34:
  BLT s0, zero, bb49
  # implict jump to bb35
bb35:
  ADD a0, s0, zero
  # implict jump to bb36
bb36:
  ADD s0, a0, zero
  ADDI a0, zero, -23
  MULW a0, s0, a0
  ADDW s3, s3, a0
  ADDI s0, zero, 67
  LW a0, 80(sp)
  MULW s1, a0, s0
  ADDI s0, zero, 42
  LW a0, 76(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 41
  LW a0, 72(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -123
  LW a0, 68(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -92
  LW a0, 12(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 10
  LW a0, 8(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -77
  LW a0, 4(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 75
  LW a0, 60(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 96
  LW a0, 116(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -51
  LW a0, 164(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 109
  LW a0, 168(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -74
  LW a0, 172(sp)
  MULW a0, a0, s0
  ADDW a0, s1, a0
  ADDW s1, a0, s2
  ADDI s0, zero, -122
  LW a0, 180(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 67
  LW a0, 184(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 47
  LW a0, 188(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 22
  LW a0, 192(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -68
  LW a0, 160(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 38
  LW a0, 196(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 29
  LW a0, 156(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 115
  LW a0, 152(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -121
  LW a0, 148(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 36
  LW a0, 144(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -49
  LW a0, 140(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 85
  LW a0, 136(sp)
  MULW a0, a0, s0
  ADDW s0, s1, a0
  ADDI a0, zero, 127
  BLT a0, s0, bb48
  # implict jump to bb37
bb37:
  BLT s0, zero, bb47
  # implict jump to bb38
bb38:
  ADD a0, s0, zero
  # implict jump to bb39
bb39:
  ADD s0, a0, zero
  ADDI a0, zero, 46
  MULW a0, s0, a0
  ADDW a0, s3, a0
  BLT zero, a0, bb46
  # implict jump to bb40
bb40:
  ADD a0, zero, zero
  # implict jump to bb41
bb41:
  BNE a0, zero, bb45
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
  ADDI s1, zero, 1
  LW s0, 84(sp)
  SUBW s0, s0, s1
  BLT zero, s0, bb44
  JAL zero, bb1
bb44:
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
  ADDI a0, zero, 1
  JAL zero, bb41
bb47:
  ADD a0, zero, zero
  JAL zero, bb39
bb48:
  ADDI a0, zero, 127
  JAL zero, bb39
bb49:
  ADD a0, zero, zero
  JAL zero, bb36
bb50:
  ADDI a0, zero, 127
  JAL zero, bb36
bb51:
  ADD a0, zero, zero
  JAL zero, bb33
bb52:
  ADDI a0, zero, 127
  JAL zero, bb33
bb53:
  ADD a0, zero, zero
  JAL zero, bb30
bb54:
  ADDI a0, zero, 127
  JAL zero, bb30
bb55:
  ADD a0, zero, zero
  JAL zero, bb27
bb56:
  ADDI a0, zero, 127
  JAL zero, bb27
bb57:
  ADD a0, zero, zero
  JAL zero, bb24
bb58:
  ADDI a0, zero, 127
  JAL zero, bb24
bb59:
  ADD a0, zero, zero
  JAL zero, bb21
bb60:
  ADDI a0, zero, 127
  JAL zero, bb21
bb61:
  ADD a0, zero, zero
  JAL zero, bb18
bb62:
  ADDI a0, zero, 127
  JAL zero, bb18
bb63:
  ADD a0, zero, zero
  JAL zero, bb15
bb64:
  ADDI a0, zero, 127
  JAL zero, bb15
bb65:
  ADD a0, zero, zero
  JAL zero, bb12
bb66:
  ADDI a0, zero, 127
  JAL zero, bb12
bb67:
  ADD s0, s1, zero
  JAL zero, bb4
bb68:
  JAL zero, bb5
