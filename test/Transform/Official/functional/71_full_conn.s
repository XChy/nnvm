.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -416
  SD ra, 272(sp)
  SD s0, 280(sp)
  SD s1, 288(sp)
  SD s2, 296(sp)
  SD s11, 304(sp)
  CALL getint
  ADD s1, a0, zero
  ADDI s0, zero, 0
  BLT s0, s1, bb2
  # implict jump to bb1
bb1:
  ADD a0, zero, zero
  LD ra, 272(sp)
  LD s0, 280(sp)
  LD s1, 288(sp)
  LD s2, 296(sp)
  LD s11, 304(sp)
  ADDI sp, sp, 416
  JALR zero, 0(ra)
bb2:
  ADD s0, s1, zero
  # implict jump to bb3
bb3:
  SW s0, 160(sp)
  ADD s0, zero, zero
  # implict jump to bb4
bb4:
  ADD s1, s0, zero
  ADDI s0, zero, 20
  MULW s0, s1, s0
  ADDI t5, sp, 312
  ADD s0, t5, s0
  CALL getint
  ADD s2, a0, zero
  SW s2, 0(s0)
  CALL getint
  ADD s2, a0, zero
  SW s2, 4(s0)
  CALL getint
  ADD s2, a0, zero
  SW s2, 8(s0)
  CALL getint
  ADD s2, a0, zero
  SW s2, 12(s0)
  CALL getint
  ADD s2, a0, zero
  SW s2, 16(s0)
  ADDIW s0, s1, 1
  SLTI s1, s0, 5
  BNE s1, zero, bb63
  # implict jump to bb5
bb5:
  LW a0, 312(sp)
  SW a0, 164(sp)
  ADDI s0, zero, 85
  LW a0, 164(sp)
  MULW s1, a0, s0
  LW a0, 316(sp)
  SW a0, 168(sp)
  ADDI s0, zero, 23
  LW a0, 168(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 320(sp)
  SW a0, 172(sp)
  ADDI s0, zero, -82
  LW a0, 172(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 324(sp)
  SW a0, 176(sp)
  ADDI s0, zero, -103
  LW a0, 176(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 328(sp)
  SW a0, 180(sp)
  ADDI s0, zero, -123
  LW a0, 180(sp)
  MULW a0, a0, s0
  ADDW s0, s1, a0
  LW a0, 332(sp)
  SW a0, 148(sp)
  LW a0, 148(sp)
  SLLIW a0, a0, 6
  ADDW s1, s0, a0
  LW a0, 336(sp)
  SW a0, 216(sp)
  ADDI s0, zero, -120
  LW a0, 216(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 340(sp)
  SW a0, 220(sp)
  ADDI s0, zero, 50
  LW a0, 220(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 344(sp)
  SW a0, 224(sp)
  ADDI s0, zero, -59
  LW a0, 224(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 348(sp)
  SW a0, 228(sp)
  ADDI s0, zero, 47
  LW a0, 228(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 352(sp)
  SW a0, 232(sp)
  ADDI s0, zero, -111
  LW a0, 232(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 356(sp)
  SW a0, 236(sp)
  ADDI s0, zero, -67
  LW a0, 236(sp)
  MULW s2, a0, s0
  ADDW s1, s1, s2
  LW a0, 360(sp)
  SW a0, 240(sp)
  ADDI s0, zero, -106
  LW a0, 240(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 364(sp)
  SW a0, 244(sp)
  ADDI s0, zero, -75
  LW a0, 244(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 368(sp)
  SW a0, 248(sp)
  ADDI s0, zero, -102
  LW a0, 248(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 372(sp)
  SW a0, 252(sp)
  ADDI s0, zero, 34
  LW a0, 252(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 376(sp)
  SW a0, 256(sp)
  ADDI s0, zero, -39
  LW a0, 256(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 380(sp)
  SW a0, 260(sp)
  ADDI s0, zero, 65
  LW a0, 260(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 384(sp)
  SW a0, 264(sp)
  ADDI s0, zero, 47
  LW a0, 264(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 388(sp)
  SW a0, 212(sp)
  ADDI s0, zero, 113
  LW a0, 212(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 392(sp)
  SW a0, 268(sp)
  ADDI s0, zero, 110
  LW a0, 268(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 396(sp)
  SW a0, 208(sp)
  ADDI s0, zero, 47
  LW a0, 208(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 400(sp)
  SW a0, 204(sp)
  ADDI s0, zero, -4
  LW a0, 204(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 404(sp)
  SW a0, 200(sp)
  ADDI s0, zero, 80
  LW a0, 200(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  LW a0, 408(sp)
  SW a0, 196(sp)
  ADDI s0, zero, 46
  LW a0, 196(sp)
  MULW a0, a0, s0
  ADDW s0, s1, a0
  ADDI a0, zero, 127
  BLT a0, s0, bb62
  # implict jump to bb6
bb6:
  BLT s0, zero, bb61
  # implict jump to bb7
bb7:
  ADD a0, s0, zero
  # implict jump to bb8
bb8:
  ADD s0, a0, zero
  ADDI a0, zero, 39
  MULW s11, s0, a0
  ADDI s0, zero, -106
  LW a0, 164(sp)
  MULW s1, a0, s0
  ADDI s0, zero, 126
  LW a0, 168(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -18
  LW a0, 172(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -31
  LW a0, 176(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -8
  LW a0, 180(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI a0, zero, 47
  SW a0, 112(sp)
  LW a0, 148(sp)
  LW s0, 112(sp)
  MULW a0, a0, s0
  ADDW a0, s1, a0
  SW a0, 116(sp)
  ADDI s0, zero, -4
  LW a0, 216(sp)
  MULW s0, a0, s0
  LW a0, 116(sp)
  ADDW a0, a0, s0
  SW a0, 120(sp)
  ADDI s0, zero, 67
  LW a0, 220(sp)
  MULW s0, a0, s0
  LW a0, 120(sp)
  ADDW a0, a0, s0
  SW a0, 124(sp)
  ADDI s0, zero, -94
  LW a0, 224(sp)
  MULW s0, a0, s0
  LW a0, 124(sp)
  ADDW a0, a0, s0
  SW a0, 128(sp)
  ADDI s0, zero, -121
  LW a0, 228(sp)
  MULW s0, a0, s0
  LW a0, 128(sp)
  ADDW a0, a0, s0
  SW a0, 132(sp)
  ADDI s0, zero, 7
  LW a0, 232(sp)
  MULW s0, a0, s0
  LW a0, 132(sp)
  ADDW a0, a0, s0
  SW a0, 136(sp)
  ADDI s0, zero, -21
  LW a0, 236(sp)
  MULW s0, a0, s0
  LW a0, 136(sp)
  ADDW a0, a0, s0
  SW a0, 140(sp)
  ADDI s0, zero, -60
  LW a0, 240(sp)
  MULW s0, a0, s0
  LW a0, 140(sp)
  ADDW a0, a0, s0
  SW a0, 144(sp)
  ADDI s0, zero, -43
  LW a0, 244(sp)
  MULW s0, a0, s0
  LW a0, 144(sp)
  ADDW a0, a0, s0
  SW a0, 40(sp)
  ADDI s0, zero, 105
  LW a0, 248(sp)
  MULW s0, a0, s0
  LW a0, 40(sp)
  ADDW a0, a0, s0
  SW a0, 4(sp)
  ADDI s0, zero, -42
  LW a0, 252(sp)
  MULW s0, a0, s0
  LW a0, 4(sp)
  ADDW a0, a0, s0
  SW a0, 8(sp)
  ADDI s0, zero, 87
  LW a0, 256(sp)
  MULW s0, a0, s0
  LW a0, 8(sp)
  ADDW a0, a0, s0
  SW a0, 12(sp)
  ADDI s0, zero, 29
  LW a0, 260(sp)
  MULW s0, a0, s0
  LW a0, 12(sp)
  ADDW a0, a0, s0
  SW a0, 16(sp)
  ADDI s0, zero, -106
  LW a0, 264(sp)
  MULW s0, a0, s0
  LW a0, 16(sp)
  ADDW a0, a0, s0
  SW a0, 20(sp)
  ADDI s0, zero, -31
  LW a0, 212(sp)
  MULW s0, a0, s0
  LW a0, 20(sp)
  ADDW a0, a0, s0
  SW a0, 24(sp)
  ADDI s0, zero, -110
  LW a0, 268(sp)
  MULW s0, a0, s0
  LW a0, 24(sp)
  ADDW a0, a0, s0
  SW a0, 28(sp)
  ADDI s0, zero, -100
  LW a0, 208(sp)
  MULW s0, a0, s0
  LW a0, 28(sp)
  ADDW a0, a0, s0
  SW a0, 32(sp)
  ADDI s0, zero, -22
  LW a0, 204(sp)
  MULW s0, a0, s0
  LW a0, 32(sp)
  ADDW a0, a0, s0
  SW a0, 36(sp)
  ADDI s0, zero, -75
  LW a0, 200(sp)
  MULW s0, a0, s0
  LW a0, 36(sp)
  ADDW a0, a0, s0
  SW a0, 0(sp)
  ADDI s0, zero, -125
  LW a0, 196(sp)
  MULW s0, a0, s0
  LW a0, 0(sp)
  ADDW s0, a0, s0
  ADDI a0, zero, 127
  BLT a0, s0, bb60
  # implict jump to bb9
bb9:
  BLT s0, zero, bb59
  # implict jump to bb10
bb10:
  ADD a0, s0, zero
  # implict jump to bb11
bb11:
  ADD s0, a0, zero
  ADDI a0, zero, 77
  MULW a0, s0, a0
  ADDW a0, s11, a0
  SW a0, 44(sp)
  ADDI s0, zero, 26
  LW a0, 164(sp)
  MULW s1, a0, s0
  ADDI s0, zero, 76
  LW a0, 168(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -70
  LW a0, 172(sp)
  MULW a0, a0, s0
  SW a0, 48(sp)
  LW a0, 48(sp)
  ADDW s1, s1, a0
  ADDI s0, zero, 29
  LW a0, 176(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -95
  LW a0, 180(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 96
  LW a0, 148(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 52
  LW a0, 216(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -68
  LW a0, 220(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -5
  LW a0, 224(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 34
  LW a0, 228(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -34
  LW a0, 232(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 102
  LW a0, 236(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 6
  LW a0, 240(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -38
  LW a0, 244(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 27
  LW a0, 248(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 110
  LW a0, 252(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 116
  LW a0, 256(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 39
  LW a0, 260(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -63
  LW a0, 264(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -99
  LW a0, 212(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 65
  LW a0, 268(sp)
  MULW a0, a0, s0
  SW a0, 192(sp)
  LW a0, 192(sp)
  ADDW s1, s1, a0
  ADDI s0, zero, 120
  LW a0, 208(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -39
  LW a0, 204(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -6
  LW a0, 200(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 94
  LW a0, 196(sp)
  MULW a0, a0, s0
  ADDW s0, s1, a0
  ADDI a0, zero, 127
  BLT a0, s0, bb58
  # implict jump to bb12
bb12:
  BLT s0, zero, bb57
  # implict jump to bb13
bb13:
  ADD a0, s0, zero
  # implict jump to bb14
bb14:
  ADD s0, a0, zero
  ADDI a0, zero, 127
  MULW s0, s0, a0
  LW a0, 44(sp)
  ADDW a0, a0, s0
  SW a0, 52(sp)
  ADDI s0, zero, -23
  LW a0, 164(sp)
  MULW s1, a0, s0
  ADDI s0, zero, -63
  LW a0, 168(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 49
  LW a0, 172(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 50
  LW a0, 176(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 72
  LW a0, 180(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 85
  LW a0, 148(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -30
  LW a0, 216(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 12
  LW a0, 220(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 125
  LW a0, 224(sp)
  MULW a0, a0, s0
  SW a0, 56(sp)
  LW a0, 56(sp)
  ADDW s1, s1, a0
  ADDI s0, zero, -117
  LW a0, 228(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -65
  LW a0, 232(sp)
  MULW a0, a0, s0
  ADDW a0, s1, a0
  ADDW s1, a0, s2
  ADDI s0, zero, 125
  LW a0, 240(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 110
  LW a0, 244(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -31
  LW a0, 248(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -123
  LW a0, 252(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 83
  LW a0, 256(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 122
  LW a0, 260(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 11
  LW a0, 264(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -23
  LW a0, 212(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -47
  LW a0, 268(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -32
  LW a0, 208(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -117
  LW a0, 204(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 95
  LW a0, 200(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 118
  LW a0, 196(sp)
  MULW a0, a0, s0
  ADDW s0, s1, a0
  ADDI a0, zero, 127
  BLT a0, s0, bb56
  # implict jump to bb15
bb15:
  BLT s0, zero, bb55
  # implict jump to bb16
bb16:
  ADD a0, s0, zero
  # implict jump to bb17
bb17:
  ADD s0, a0, zero
  ADDI a0, zero, -106
  MULW s0, s0, a0
  LW a0, 52(sp)
  ADDW s2, a0, s0
  LW a0, 164(sp)
  SLLIW s1, a0, 3
  ADDI s0, zero, 82
  LW a0, 168(sp)
  MULW a0, a0, s0
  SW a0, 60(sp)
  LW a0, 60(sp)
  ADDW s1, s1, a0
  ADDI s0, zero, -104
  LW a0, 172(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 101
  LW a0, 176(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -116
  LW a0, 180(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -63
  LW a0, 148(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -16
  LW a0, 216(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -70
  LW a0, 220(sp)
  MULW a0, a0, s0
  ADDW s0, s1, a0
  LW a0, 56(sp)
  ADDW s1, s0, a0
  ADDI s0, zero, 75
  LW a0, 228(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 66
  LW a0, 232(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -96
  LW a0, 236(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -101
  LW a0, 240(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -114
  LW a0, 244(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 59
  LW a0, 248(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 12
  LW a0, 252(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 5
  LW a0, 256(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -95
  LW a0, 260(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 116
  LW a0, 264(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -93
  LW a0, 212(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 15
  LW a0, 268(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 79
  LW a0, 208(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 3
  LW a0, 204(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 49
  LW a0, 200(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -124
  LW a0, 196(sp)
  MULW a0, a0, s0
  ADDW s0, s1, a0
  ADDI a0, zero, 127
  BLT a0, s0, bb54
  # implict jump to bb18
bb18:
  BLT s0, zero, bb53
  # implict jump to bb19
bb19:
  ADD a0, s0, zero
  # implict jump to bb20
bb20:
  ADD s0, a0, zero
  ADDI a0, zero, -3
  MULW a0, s0, a0
  ADDW s2, s2, a0
  ADDI s0, zero, 81
  LW a0, 164(sp)
  MULW s1, a0, s0
  ADDI s0, zero, 68
  LW a0, 168(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -102
  LW a0, 172(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -74
  LW a0, 176(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 121
  LW a0, 180(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -15
  LW a0, 148(sp)
  MULW a0, a0, s0
  SW a0, 64(sp)
  LW a0, 64(sp)
  ADDW s1, s1, a0
  ADDI s0, zero, 55
  LW a0, 216(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 101
  LW a0, 220(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -13
  LW a0, 224(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -62
  LW a0, 228(sp)
  MULW a0, a0, s0
  SW a0, 68(sp)
  LW a0, 68(sp)
  ADDW s0, s1, a0
  LW a0, 232(sp)
  SLLIW a0, a0, 6
  ADDW s1, s0, a0
  ADDI s0, zero, 114
  LW a0, 236(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 38
  LW a0, 240(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -21
  LW a0, 244(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 112
  LW a0, 248(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 114
  LW a0, 252(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 112
  LW a0, 256(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -10
  LW a0, 260(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -16
  LW a0, 264(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -50
  LW a0, 212(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -112
  LW a0, 268(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -116
  LW a0, 208(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -54
  LW a0, 204(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 82
  LW a0, 200(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -72
  LW a0, 196(sp)
  MULW a0, a0, s0
  ADDW s0, s1, a0
  ADDI a0, zero, 127
  BLT a0, s0, bb52
  # implict jump to bb21
bb21:
  BLT s0, zero, bb51
  # implict jump to bb22
bb22:
  ADD a0, s0, zero
  # implict jump to bb23
bb23:
  SLLIW a0, a0, 5
  ADDW s2, s2, a0
  ADDI s0, zero, 15
  LW a0, 164(sp)
  MULW s1, a0, s0
  ADDI s0, zero, -77
  LW a0, 168(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 66
  LW a0, 172(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -90
  LW a0, 176(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -6
  LW a0, 180(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -30
  LW a0, 148(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -8
  LW a0, 216(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 81
  LW a0, 220(sp)
  MULW a0, a0, s0
  ADDW s0, s1, a0
  LW a0, 224(sp)
  SLLIW a0, a0, 1
  ADDW s1, s0, a0
  ADDI s0, zero, -110
  LW a0, 228(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -95
  LW a0, 232(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 59
  LW a0, 236(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 52
  LW a0, 240(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 15
  LW a0, 244(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 55
  LW a0, 248(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -33
  LW a0, 252(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 14
  LW a0, 256(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 58
  LW a0, 260(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 67
  LW a0, 264(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 86
  LW a0, 212(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -79
  LW a0, 268(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 48
  LW a0, 208(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -13
  LW a0, 204(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -15
  LW a0, 200(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 66
  LW a0, 196(sp)
  MULW a0, a0, s0
  ADDW s0, s1, a0
  ADDI a0, zero, 127
  BLT a0, s0, bb50
  # implict jump to bb24
bb24:
  BLT s0, zero, bb49
  # implict jump to bb25
bb25:
  ADD a0, s0, zero
  # implict jump to bb26
bb26:
  ADD s0, a0, zero
  ADDI a0, zero, -95
  MULW a0, s0, a0
  ADDW s1, s2, a0
  ADDI s0, zero, 33
  LW a0, 164(sp)
  MULW s0, a0, s0
  LW a0, 60(sp)
  ADDW s2, s0, a0
  ADDI s0, zero, 67
  LW a0, 172(sp)
  MULW a0, a0, s0
  ADDW s2, s2, a0
  ADDI s0, zero, 30
  LW a0, 176(sp)
  MULW a0, a0, s0
  ADDW s2, s2, a0
  ADDI s0, zero, -2
  LW a0, 180(sp)
  MULW a0, a0, s0
  ADDW s2, s2, a0
  ADDI s0, zero, 65
  LW a0, 148(sp)
  MULW a0, a0, s0
  ADDW s2, s2, a0
  ADDI s0, zero, 120
  LW a0, 216(sp)
  MULW a0, a0, s0
  ADDW s2, s2, a0
  ADDI s0, zero, -13
  LW a0, 220(sp)
  MULW a0, a0, s0
  ADDW s2, s2, a0
  ADDI s0, zero, 18
  LW a0, 224(sp)
  MULW a0, a0, s0
  ADDW s2, s2, a0
  ADDI s0, zero, 5
  LW a0, 228(sp)
  MULW a0, a0, s0
  ADDW s2, s2, a0
  ADDI s0, zero, 104
  LW a0, 232(sp)
  MULW a0, a0, s0
  ADDW s2, s2, a0
  ADDI s0, zero, -119
  LW a0, 236(sp)
  MULW a0, a0, s0
  ADDW s2, s2, a0
  ADDI s0, zero, -7
  LW a0, 240(sp)
  MULW a0, a0, s0
  SW a0, 72(sp)
  LW a0, 72(sp)
  ADDW s2, s2, a0
  ADDI s0, zero, 71
  LW a0, 244(sp)
  MULW a0, a0, s0
  ADDW s2, s2, a0
  ADDI s0, zero, 107
  LW a0, 248(sp)
  MULW a0, a0, s0
  ADDW s2, s2, a0
  ADDI s0, zero, 24
  LW a0, 252(sp)
  MULW a0, a0, s0
  ADDW s2, s2, a0
  ADDI s0, zero, 82
  LW a0, 256(sp)
  MULW a0, a0, s0
  ADDW s2, s2, a0
  ADDI s0, zero, -96
  LW a0, 260(sp)
  MULW a0, a0, s0
  ADDW s2, s2, a0
  ADDI s0, zero, -104
  LW a0, 264(sp)
  MULW a0, a0, s0
  ADDW s2, s2, a0
  ADDI s0, zero, -121
  LW a0, 212(sp)
  MULW a0, a0, s0
  ADDW s0, s2, a0
  LW a0, 192(sp)
  ADDW s2, s0, a0
  ADDI s0, zero, 97
  LW a0, 208(sp)
  MULW a0, a0, s0
  ADDW s2, s2, a0
  ADDI s0, zero, 83
  LW a0, 204(sp)
  MULW a0, a0, s0
  ADDW s2, s2, a0
  ADDI s0, zero, 46
  LW a0, 200(sp)
  MULW a0, a0, s0
  ADDW s2, s2, a0
  ADDI s0, zero, -84
  LW a0, 196(sp)
  MULW a0, a0, s0
  ADDW s0, s2, a0
  ADDI a0, zero, 127
  BLT a0, s0, bb48
  # implict jump to bb27
bb27:
  BLT s0, zero, bb47
  # implict jump to bb28
bb28:
  ADD a0, s0, zero
  # implict jump to bb29
bb29:
  ADD s0, a0, zero
  ADDI a0, zero, -50
  MULW a0, s0, a0
  ADDW s2, s1, a0
  ADDI s0, zero, -29
  LW a0, 164(sp)
  MULW s1, a0, s0
  ADDI s0, zero, 7
  LW a0, 168(sp)
  MULW a0, a0, s0
  ADDW s0, s1, a0
  LW a0, 48(sp)
  ADDW s1, s0, a0
  ADDI s0, zero, 38
  LW a0, 176(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -90
  LW a0, 180(sp)
  MULW a0, a0, s0
  ADDW s0, s1, a0
  LW a0, 64(sp)
  ADDW s1, s0, a0
  ADDI s0, zero, -32
  LW a0, 216(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 37
  LW a0, 220(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 36
  LW a0, 224(sp)
  MULW a0, a0, s0
  ADDW s0, s1, a0
  LW a0, 68(sp)
  ADDW s1, s0, a0
  ADDI s0, zero, -125
  LW a0, 232(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -46
  LW a0, 236(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -70
  LW a0, 240(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 37
  LW a0, 244(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -73
  LW a0, 248(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -34
  LW a0, 252(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -87
  LW a0, 256(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -75
  LW a0, 260(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 71
  LW a0, 264(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -77
  LW a0, 212(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 53
  LW a0, 268(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 37
  LW a0, 208(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -103
  LW a0, 204(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -13
  LW a0, 200(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -114
  LW a0, 196(sp)
  MULW a0, a0, s0
  ADDW s0, s1, a0
  ADDI a0, zero, 127
  BLT a0, s0, bb46
  # implict jump to bb30
bb30:
  BLT s0, zero, bb45
  # implict jump to bb31
bb31:
  ADD a0, s0, zero
  # implict jump to bb32
bb32:
  ADD s0, a0, zero
  ADDI a0, zero, -23
  MULW a0, s0, a0
  ADDW s2, s2, a0
  ADDI s0, zero, 67
  LW a0, 164(sp)
  MULW s1, a0, s0
  ADDI s0, zero, 42
  LW a0, 168(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 41
  LW a0, 172(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -123
  LW a0, 176(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -92
  LW a0, 180(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 10
  LW a0, 148(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -77
  LW a0, 216(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 75
  LW a0, 220(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 96
  LW a0, 224(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -51
  LW a0, 228(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 109
  LW a0, 232(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -74
  LW a0, 236(sp)
  MULW a0, a0, s0
  ADDW s0, s1, a0
  LW a0, 72(sp)
  ADDW s1, s0, a0
  ADDI s0, zero, -122
  LW a0, 244(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 67
  LW a0, 248(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 47
  LW a0, 252(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 22
  LW a0, 256(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -68
  LW a0, 260(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 38
  LW a0, 264(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 29
  LW a0, 212(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 115
  LW a0, 268(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -121
  LW a0, 208(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 36
  LW a0, 204(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, -49
  LW a0, 200(sp)
  MULW a0, a0, s0
  ADDW s1, s1, a0
  ADDI s0, zero, 85
  LW a0, 196(sp)
  MULW a0, a0, s0
  ADDW s0, s1, a0
  ADDI a0, zero, 127
  BLT a0, s0, bb44
  # implict jump to bb33
bb33:
  BLT s0, zero, bb43
  # implict jump to bb34
bb34:
  ADD a0, s0, zero
  # implict jump to bb35
bb35:
  ADD s0, a0, zero
  ADDI a0, zero, 46
  MULW a0, s0, a0
  ADDW a0, s2, a0
  BLT zero, a0, bb42
  # implict jump to bb36
bb36:
  ADD a0, zero, zero
  # implict jump to bb37
bb37:
  BNE a0, zero, bb41
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
  ADDI s1, zero, 1
  LW s0, 160(sp)
  SUBW s0, s0, s1
  BLT zero, s0, bb40
  JAL zero, bb1
bb40:
  JAL zero, bb3
bb41:
  ADDI a0, zero, 99
  CALL putch
  ADDI a0, zero, 97
  CALL putch
  ADDI a0, zero, 116
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb39
bb42:
  ADDI a0, zero, 1
  JAL zero, bb37
bb43:
  ADD a0, zero, zero
  JAL zero, bb35
bb44:
  ADDI a0, zero, 127
  JAL zero, bb35
bb45:
  ADD a0, zero, zero
  JAL zero, bb32
bb46:
  ADDI a0, zero, 127
  JAL zero, bb32
bb47:
  ADD a0, zero, zero
  JAL zero, bb29
bb48:
  ADDI a0, zero, 127
  JAL zero, bb29
bb49:
  ADD a0, zero, zero
  JAL zero, bb26
bb50:
  ADDI a0, zero, 127
  JAL zero, bb26
bb51:
  ADD a0, zero, zero
  JAL zero, bb23
bb52:
  ADDI a0, zero, 127
  JAL zero, bb23
bb53:
  ADD a0, zero, zero
  JAL zero, bb20
bb54:
  ADDI a0, zero, 127
  JAL zero, bb20
bb55:
  ADD a0, zero, zero
  JAL zero, bb17
bb56:
  ADDI a0, zero, 127
  JAL zero, bb17
bb57:
  ADD a0, zero, zero
  JAL zero, bb14
bb58:
  ADDI a0, zero, 127
  JAL zero, bb14
bb59:
  ADD a0, zero, zero
  JAL zero, bb11
bb60:
  ADDI a0, zero, 127
  JAL zero, bb11
bb61:
  ADD a0, zero, zero
  JAL zero, bb8
bb62:
  ADDI a0, zero, 127
  JAL zero, bb8
bb63:
  JAL zero, bb4
