.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -864
  SD ra, 664(sp)
  SD s0, 672(sp)
  SD s1, 680(sp)
  SD s2, 688(sp)
  SD s3, 696(sp)
  SD s4, 704(sp)
  SD s5, 712(sp)
  SD s6, 720(sp)
  SD s7, 728(sp)
  SD s8, 736(sp)
  SD s9, 744(sp)
  SD s10, 752(sp)
  CALL getint
  ADD s0, a0, zero
  ADDI s1, zero, 0
  BLT s1, s0, bb2
  # implict jump to bb1
bb1:
  ADD a0, zero, zero
  LD ra, 664(sp)
  LD s0, 672(sp)
  LD s1, 680(sp)
  LD s2, 688(sp)
  LD s3, 696(sp)
  LD s4, 704(sp)
  LD s5, 712(sp)
  LD s6, 720(sp)
  LD s7, 728(sp)
  LD s8, 736(sp)
  LD s9, 744(sp)
  LD s10, 752(sp)
  ADDI sp, sp, 864
  JALR zero, 0(ra)
bb2:
  # implict jump to bb3
bb3:
  SW s0, 388(sp)
  ADD s1, zero, zero
  # implict jump to bb4
bb4:
  ADDI s2, zero, 20
  MULW s2, s1, s2
  ADDI t6, sp, 760
  ADD s3, t6, s2
  CALL getint
  ADD s2, a0, zero
  SW s2, 0(s3)
  CALL getint
  ADD s2, a0, zero
  SW s2, 4(s3)
  CALL getint
  ADD s2, a0, zero
  SW s2, 8(s3)
  CALL getint
  ADD s2, a0, zero
  SW s2, 12(s3)
  CALL getint
  ADD s2, a0, zero
  SW s2, 16(s3)
  ADDIW s1, s1, 1
  SLTI s2, s1, 5
  BNE s2, zero, bb63
  # implict jump to bb5
bb5:
  LW a0, 760(sp)
  SW a0, 448(sp)
  ADDI a0, zero, 85
  LW s0, 448(sp)
  MULW a0, s0, a0
  LW s0, 764(sp)
  SW s0, 384(sp)
  ADDI s1, zero, 23
  LW s0, 384(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  LW s0, 768(sp)
  SW s0, 380(sp)
  ADDI s1, zero, -82
  LW s0, 380(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  LW s0, 772(sp)
  SW s0, 264(sp)
  ADDI s1, zero, -103
  LW s0, 264(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  LW s0, 776(sp)
  SW s0, 376(sp)
  ADDI s1, zero, -123
  LW s0, 376(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  LW s0, 780(sp)
  SW s0, 372(sp)
  LW s0, 372(sp)
  SLLIW s1, s0, 6
  ADDW a0, a0, s1
  LW s0, 784(sp)
  SW s0, 368(sp)
  ADDI s1, zero, -120
  LW s0, 368(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  LW s0, 788(sp)
  SW s0, 248(sp)
  ADDI s1, zero, 50
  LW s0, 248(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  LW s0, 792(sp)
  SW s0, 364(sp)
  ADDI s2, zero, -59
  LW s0, 364(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  LW s0, 796(sp)
  SW s0, 400(sp)
  ADDI s3, zero, 47
  LW s0, 400(sp)
  MULW s3, s0, s3
  ADDW a0, a0, s3
  LW s0, 800(sp)
  SW s0, 512(sp)
  ADDI s3, zero, -111
  LW s0, 512(sp)
  MULW s3, s0, s3
  ADDW a0, a0, s3
  LW s0, 804(sp)
  SW s0, 508(sp)
  ADDI s4, zero, -67
  LW s0, 508(sp)
  MULW s0, s0, s4
  SW s0, 504(sp)
  LW s0, 504(sp)
  ADDW a0, a0, s0
  LW s0, 808(sp)
  SW s0, 500(sp)
  ADDI s5, zero, -106
  LW s0, 500(sp)
  MULW s5, s0, s5
  ADDW a0, a0, s5
  LW s0, 812(sp)
  SW s0, 236(sp)
  ADDI s5, zero, -75
  LW s0, 236(sp)
  MULW s5, s0, s5
  ADDW a0, a0, s5
  LW s0, 816(sp)
  SW s0, 496(sp)
  ADDI s6, zero, -102
  LW s0, 496(sp)
  MULW s6, s0, s6
  ADDW a0, a0, s6
  LW s0, 820(sp)
  SW s0, 492(sp)
  ADDI s7, zero, 34
  LW s0, 492(sp)
  MULW s7, s0, s7
  ADDW a0, a0, s7
  LW s0, 824(sp)
  SW s0, 488(sp)
  ADDI s7, zero, -39
  LW s0, 488(sp)
  MULW s7, s0, s7
  ADDW a0, a0, s7
  LW s0, 828(sp)
  SW s0, 180(sp)
  ADDI s7, zero, 65
  LW s0, 180(sp)
  MULW s7, s0, s7
  ADDW a0, a0, s7
  LW s0, 832(sp)
  SW s0, 484(sp)
  ADDI s7, zero, 47
  LW s0, 484(sp)
  MULW s7, s0, s7
  ADDW a0, a0, s7
  LW s0, 836(sp)
  SW s0, 440(sp)
  ADDI s7, zero, 113
  LW s0, 440(sp)
  MULW s7, s0, s7
  ADDW a0, a0, s7
  LW s0, 840(sp)
  SW s0, 476(sp)
  ADDI s8, zero, 110
  LW s0, 476(sp)
  MULW s8, s0, s8
  ADDW a0, a0, s8
  LW s0, 844(sp)
  SW s0, 216(sp)
  ADDI s8, zero, 47
  LW s0, 216(sp)
  MULW s8, s0, s8
  ADDW a0, a0, s8
  LW s0, 848(sp)
  SW s0, 212(sp)
  ADDI s8, zero, -4
  LW s0, 212(sp)
  MULW s8, s0, s8
  ADDW a0, a0, s8
  LW s0, 852(sp)
  SW s0, 208(sp)
  ADDI s8, zero, 80
  LW s0, 208(sp)
  MULW s8, s0, s8
  ADDW a0, a0, s8
  LW s0, 856(sp)
  SW s0, 204(sp)
  ADDI s8, zero, 46
  LW s0, 204(sp)
  MULW s8, s0, s8
  ADDW a0, a0, s8
  ADDI s8, zero, 127
  BLT s8, a0, bb62
  # implict jump to bb6
bb6:
  BLT a0, zero, bb61
  # implict jump to bb7
bb7:
  # implict jump to bb8
bb8:
  ADDI s8, zero, 39
  MULW s8, a0, s8
  ADDI a0, zero, -106
  LW s0, 448(sp)
  MULW a0, s0, a0
  ADDI s9, zero, 126
  LW s0, 384(sp)
  MULW s9, s0, s9
  ADDW a0, a0, s9
  ADDI s9, zero, -18
  LW s0, 380(sp)
  MULW s9, s0, s9
  ADDW a0, a0, s9
  ADDI s9, zero, -31
  LW s0, 264(sp)
  MULW s9, s0, s9
  ADDW a0, a0, s9
  ADDI s9, zero, -8
  LW s0, 376(sp)
  MULW s9, s0, s9
  ADDW a0, a0, s9
  ADDI s9, zero, 47
  LW s0, 372(sp)
  MULW s9, s0, s9
  ADDW a0, a0, s9
  ADDI s9, zero, -4
  LW s0, 368(sp)
  MULW s9, s0, s9
  ADDW a0, a0, s9
  ADDI s9, zero, 67
  LW s0, 248(sp)
  MULW s9, s0, s9
  ADDW a0, a0, s9
  ADDI s9, zero, -94
  LW s0, 364(sp)
  MULW s9, s0, s9
  ADDW a0, a0, s9
  ADDI s9, zero, -121
  LW s0, 400(sp)
  MULW s9, s0, s9
  ADDW a0, a0, s9
  ADDI s9, zero, 7
  LW s0, 512(sp)
  MULW s9, s0, s9
  ADDW a0, a0, s9
  ADDI s9, zero, -21
  LW s0, 508(sp)
  MULW s9, s0, s9
  ADDW a0, a0, s9
  ADDI s9, zero, -60
  LW s0, 500(sp)
  MULW s9, s0, s9
  ADDW a0, a0, s9
  ADDI s9, zero, -43
  LW s0, 236(sp)
  MULW s9, s0, s9
  ADDW a0, a0, s9
  ADDI s9, zero, 105
  LW s0, 496(sp)
  MULW s9, s0, s9
  ADDW a0, a0, s9
  ADDI s9, zero, -42
  LW s0, 492(sp)
  MULW s9, s0, s9
  ADDW a0, a0, s9
  ADDI s9, zero, 87
  LW s0, 488(sp)
  MULW s9, s0, s9
  ADDW a0, a0, s9
  ADDI s9, zero, 29
  LW s0, 180(sp)
  MULW s9, s0, s9
  ADDW a0, a0, s9
  ADDI s9, zero, -106
  LW s0, 484(sp)
  MULW s9, s0, s9
  ADDW a0, a0, s9
  ADDI s9, zero, -31
  LW s0, 440(sp)
  MULW s9, s0, s9
  ADDW a0, a0, s9
  ADDI s9, zero, -110
  LW s0, 476(sp)
  MULW s9, s0, s9
  ADDW a0, a0, s9
  ADDI s9, zero, -100
  LW s0, 216(sp)
  MULW s9, s0, s9
  ADDW a0, a0, s9
  ADDI s9, zero, -22
  LW s0, 212(sp)
  MULW s9, s0, s9
  ADDW a0, a0, s9
  ADDI s9, zero, -75
  LW s0, 208(sp)
  MULW s9, s0, s9
  ADDW a0, a0, s9
  ADDI s9, zero, -125
  LW s0, 204(sp)
  MULW s9, s0, s9
  ADDW a0, a0, s9
  ADDI s9, zero, 127
  BLT s9, a0, bb60
  # implict jump to bb9
bb9:
  BLT a0, zero, bb59
  # implict jump to bb10
bb10:
  # implict jump to bb11
bb11:
  ADDI s9, zero, 77
  MULW a0, a0, s9
  ADDW s8, s8, a0
  ADDI a0, zero, 26
  LW s0, 448(sp)
  MULW a0, s0, a0
  ADDI s9, zero, 76
  LW s0, 384(sp)
  MULW s9, s0, s9
  ADDW a0, a0, s9
  ADDI s9, zero, -70
  LW s0, 380(sp)
  MULW s0, s0, s9
  SW s0, 472(sp)
  LW s0, 472(sp)
  ADDW a0, a0, s0
  ADDI s10, zero, 29
  LW s0, 264(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  ADDI s10, zero, -95
  LW s0, 376(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  ADDI s10, zero, 96
  LW s0, 372(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  ADDI s10, zero, 52
  LW s0, 368(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  ADDI s10, zero, -68
  LW s0, 248(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  ADDI s10, zero, -5
  LW s0, 364(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  ADDI s10, zero, 34
  LW s0, 400(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  ADDI s10, zero, -34
  LW s0, 512(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  ADDI s10, zero, 102
  LW s0, 508(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  ADDI s10, zero, 6
  LW s0, 500(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  ADDI s10, zero, -38
  LW s0, 236(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  ADDI s10, zero, 27
  LW s0, 496(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  ADDI s10, zero, 110
  LW s0, 492(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  ADDI s10, zero, 116
  LW s0, 488(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  ADDI s10, zero, 39
  LW s0, 180(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  ADDI s10, zero, -63
  LW s0, 484(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  ADDI s10, zero, -99
  LW s0, 440(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  ADDI s10, zero, 65
  LW s0, 476(sp)
  MULW s0, s0, s10
  SW s0, 468(sp)
  LW s0, 468(sp)
  ADDW a0, a0, s0
  ADDI s10, zero, 120
  LW s0, 216(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  ADDI s10, zero, -39
  LW s0, 212(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  ADDI s10, zero, -6
  LW s0, 208(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  ADDI s10, zero, 94
  LW s0, 204(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  ADDI s10, zero, 127
  BLT s10, a0, bb58
  # implict jump to bb12
bb12:
  BLT a0, zero, bb57
  # implict jump to bb13
bb13:
  # implict jump to bb14
bb14:
  ADDI s10, zero, 127
  MULW a0, a0, s10
  ADDW s8, s8, a0
  ADDI a0, zero, -23
  LW s0, 448(sp)
  MULW a0, s0, a0
  SW a0, 200(sp)
  ADDI a0, zero, -63
  LW s0, 384(sp)
  MULW a0, s0, a0
  LW s0, 200(sp)
  ADDW a0, s0, a0
  SW a0, 196(sp)
  ADDI a0, zero, 49
  LW s0, 380(sp)
  MULW a0, s0, a0
  LW s0, 196(sp)
  ADDW a0, s0, a0
  ADDI s10, zero, 50
  LW s0, 264(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  SW a0, 192(sp)
  ADDI a0, zero, 72
  LW s0, 376(sp)
  MULW a0, s0, a0
  LW s0, 192(sp)
  ADDW a0, s0, a0
  SW a0, 188(sp)
  ADDI a0, zero, 85
  LW s0, 372(sp)
  MULW a0, s0, a0
  LW s0, 188(sp)
  ADDW a0, s0, a0
  SW a0, 184(sp)
  ADDI a0, zero, -30
  LW s0, 368(sp)
  MULW a0, s0, a0
  LW s0, 184(sp)
  ADDW a0, s0, a0
  ADDI s10, zero, 12
  LW s0, 248(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  SW a0, 228(sp)
  ADDI a0, zero, 125
  LW s0, 364(sp)
  MULW a0, s0, a0
  SW a0, 356(sp)
  LW a0, 356(sp)
  LW s0, 228(sp)
  ADDW a0, s0, a0
  SW a0, 352(sp)
  ADDI a0, zero, -117
  LW s0, 400(sp)
  MULW a0, s0, a0
  LW s0, 352(sp)
  ADDW a0, s0, a0
  SW a0, 348(sp)
  ADDI a0, zero, -65
  LW s0, 512(sp)
  MULW a0, s0, a0
  LW s0, 348(sp)
  ADDW a0, s0, a0
  LW s0, 504(sp)
  ADDW a0, a0, s0
  ADDI s4, zero, 125
  LW s0, 500(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 110
  LW s0, 236(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -31
  LW s0, 496(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -123
  LW s0, 492(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 83
  LW s0, 488(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 122
  LW s0, 180(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 11
  LW s0, 484(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -23
  LW s0, 440(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -47
  LW s0, 476(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -32
  LW s0, 216(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -117
  LW s0, 212(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 95
  LW s0, 208(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 118
  LW s0, 204(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 127
  BLT s4, a0, bb56
  # implict jump to bb15
bb15:
  BLT a0, zero, bb55
  # implict jump to bb16
bb16:
  # implict jump to bb17
bb17:
  ADDI s4, zero, -106
  MULW a0, a0, s4
  ADDW s4, s8, a0
  LW a0, 448(sp)
  SLLIW a0, a0, 3
  ADDI s8, zero, 82
  LW s0, 384(sp)
  MULW s0, s0, s8
  SW s0, 464(sp)
  LW s0, 464(sp)
  ADDW a0, a0, s0
  SW a0, 344(sp)
  ADDI a0, zero, -104
  LW s0, 380(sp)
  MULW a0, s0, a0
  LW s0, 344(sp)
  ADDW a0, s0, a0
  ADDI s10, zero, 101
  LW s0, 264(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  SW a0, 340(sp)
  ADDI a0, zero, -116
  LW s0, 376(sp)
  MULW a0, s0, a0
  LW s0, 340(sp)
  ADDW a0, s0, a0
  SW a0, 336(sp)
  ADDI a0, zero, -63
  LW s0, 372(sp)
  MULW a0, s0, a0
  LW s0, 336(sp)
  ADDW a0, s0, a0
  SW a0, 332(sp)
  ADDI a0, zero, -16
  LW s0, 368(sp)
  MULW a0, s0, a0
  LW s0, 332(sp)
  ADDW a0, s0, a0
  ADDI s10, zero, -70
  LW s0, 248(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  LW s0, 356(sp)
  ADDW a0, a0, s0
  SW a0, 328(sp)
  ADDI a0, zero, 75
  LW s0, 400(sp)
  MULW a0, s0, a0
  LW s0, 328(sp)
  ADDW a0, s0, a0
  SW a0, 324(sp)
  ADDI a0, zero, 66
  LW s0, 512(sp)
  MULW a0, s0, a0
  LW s0, 324(sp)
  ADDW a0, s0, a0
  SW a0, 320(sp)
  ADDI a0, zero, -96
  LW s0, 508(sp)
  MULW a0, s0, a0
  LW s0, 320(sp)
  ADDW a0, s0, a0
  SW a0, 272(sp)
  ADDI a0, zero, -101
  LW s0, 500(sp)
  MULW a0, s0, a0
  LW s0, 272(sp)
  ADDW a0, s0, a0
  ADDI s10, zero, -114
  LW s0, 236(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  SW a0, 312(sp)
  ADDI a0, zero, 59
  LW s0, 496(sp)
  MULW a0, s0, a0
  LW s0, 312(sp)
  ADDW a0, s0, a0
  SW a0, 308(sp)
  ADDI a0, zero, 12
  LW s0, 492(sp)
  MULW a0, s0, a0
  LW s0, 308(sp)
  ADDW a0, s0, a0
  SW a0, 304(sp)
  ADDI a0, zero, 5
  LW s0, 488(sp)
  MULW a0, s0, a0
  LW s0, 304(sp)
  ADDW a0, s0, a0
  ADDI s10, zero, -95
  LW s0, 180(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  SW a0, 300(sp)
  ADDI a0, zero, 116
  LW s0, 484(sp)
  MULW a0, s0, a0
  LW s0, 300(sp)
  ADDW a0, s0, a0
  SW a0, 296(sp)
  ADDI a0, zero, -93
  LW s0, 440(sp)
  MULW a0, s0, a0
  LW s0, 296(sp)
  ADDW a0, s0, a0
  SW a0, 292(sp)
  ADDI a0, zero, 15
  LW s0, 476(sp)
  MULW a0, s0, a0
  LW s0, 292(sp)
  ADDW a0, s0, a0
  ADDI s10, zero, 79
  LW s0, 216(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  ADDI s10, zero, 3
  LW s0, 212(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  ADDI s10, zero, 49
  LW s0, 208(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  ADDI s10, zero, -124
  LW s0, 204(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  ADDI s10, zero, 127
  BLT s10, a0, bb54
  # implict jump to bb18
bb18:
  BLT a0, zero, bb53
  # implict jump to bb19
bb19:
  # implict jump to bb20
bb20:
  ADDI s10, zero, -3
  MULW a0, a0, s10
  ADDW a0, s4, a0
  SW a0, 288(sp)
  ADDI a0, zero, 81
  LW s0, 448(sp)
  MULW a0, s0, a0
  ADDI s4, zero, 68
  LW s0, 384(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -102
  LW s0, 380(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -74
  LW s0, 264(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 121
  LW s0, 376(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -15
  LW s0, 372(sp)
  MULW s0, s0, s4
  SW s0, 460(sp)
  LW s0, 460(sp)
  ADDW a0, a0, s0
  SW a0, 284(sp)
  ADDI a0, zero, 55
  LW s0, 368(sp)
  MULW a0, s0, a0
  LW s0, 284(sp)
  ADDW a0, s0, a0
  ADDI s10, zero, 101
  LW s0, 248(sp)
  MULW s10, s0, s10
  ADDW a0, a0, s10
  SW a0, 280(sp)
  ADDI a0, zero, -13
  LW s0, 364(sp)
  MULW a0, s0, a0
  LW s0, 280(sp)
  ADDW a0, s0, a0
  ADDI s10, zero, -62
  LW s0, 400(sp)
  MULW s0, s0, s10
  SW s0, 456(sp)
  LW s0, 456(sp)
  ADDW a0, a0, s0
  SW a0, 276(sp)
  LW a0, 512(sp)
  SLLIW a0, a0, 6
  LW s0, 276(sp)
  ADDW a0, s0, a0
  SW a0, 136(sp)
  ADDI a0, zero, 114
  SW a0, 552(sp)
  LW a0, 508(sp)
  LW s0, 552(sp)
  MULW a0, a0, s0
  LW s0, 136(sp)
  ADDW a0, s0, a0
  SW a0, 88(sp)
  ADDI a0, zero, 38
  SW a0, 548(sp)
  LW a0, 500(sp)
  LW s0, 548(sp)
  MULW a0, a0, s0
  LW s0, 88(sp)
  ADDW a0, s0, a0
  ADDI s0, zero, -21
  SW s0, 544(sp)
  LW s0, 544(sp)
  LW s1, 236(sp)
  MULW s0, s1, s0
  SW s0, 84(sp)
  LW s0, 84(sp)
  ADDW a0, a0, s0
  SW a0, 80(sp)
  ADDI a0, zero, 112
  SW a0, 540(sp)
  LW a0, 496(sp)
  LW s0, 540(sp)
  MULW a0, a0, s0
  LW s0, 80(sp)
  ADDW a0, s0, a0
  SW a0, 76(sp)
  ADDI a0, zero, 114
  SW a0, 536(sp)
  LW a0, 492(sp)
  LW s0, 536(sp)
  MULW a0, a0, s0
  LW s0, 76(sp)
  ADDW a0, s0, a0
  SW a0, 72(sp)
  ADDI a0, zero, 112
  SW a0, 532(sp)
  LW a0, 488(sp)
  LW s0, 532(sp)
  MULW a0, a0, s0
  LW s0, 72(sp)
  ADDW a0, s0, a0
  ADDI s0, zero, -10
  SW s0, 528(sp)
  LW s0, 528(sp)
  LW s1, 180(sp)
  MULW s0, s1, s0
  SW s0, 68(sp)
  LW s0, 68(sp)
  ADDW a0, a0, s0
  SW a0, 64(sp)
  ADDI a0, zero, -16
  SW a0, 524(sp)
  LW a0, 484(sp)
  LW s0, 524(sp)
  MULW a0, a0, s0
  LW s0, 64(sp)
  ADDW a0, s0, a0
  SW a0, 60(sp)
  ADDI a0, zero, -50
  SW a0, 520(sp)
  LW a0, 440(sp)
  LW s0, 520(sp)
  MULW a0, a0, s0
  LW s0, 60(sp)
  ADDW a0, s0, a0
  SW a0, 56(sp)
  ADDI a0, zero, -112
  SW a0, 656(sp)
  LW a0, 476(sp)
  LW s0, 656(sp)
  MULW a0, a0, s0
  LW s0, 56(sp)
  ADDW a0, s0, a0
  ADDI s0, zero, -116
  SW s0, 592(sp)
  LW s0, 592(sp)
  LW s1, 216(sp)
  MULW s0, s1, s0
  SW s0, 52(sp)
  LW s0, 52(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -54
  SW s0, 652(sp)
  LW s0, 652(sp)
  LW s1, 212(sp)
  MULW s0, s1, s0
  SW s0, 0(sp)
  LW s0, 0(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, 82
  SW s0, 648(sp)
  LW s0, 648(sp)
  LW s1, 208(sp)
  MULW s0, s1, s0
  SW s0, 44(sp)
  LW s0, 44(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -72
  SW s0, 644(sp)
  LW s0, 644(sp)
  LW s1, 204(sp)
  MULW s0, s1, s0
  SW s0, 40(sp)
  LW s0, 40(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, 127
  SW s0, 640(sp)
  LW s0, 640(sp)
  BLT s0, a0, bb52
  # implict jump to bb21
bb21:
  BLT a0, zero, bb51
  # implict jump to bb22
bb22:
  # implict jump to bb23
bb23:
  SLLIW a0, a0, 5
  LW s0, 288(sp)
  ADDW a0, s0, a0
  SW a0, 36(sp)
  ADDI a0, zero, 15
  LW s0, 448(sp)
  MULW a0, s0, a0
  SW a0, 32(sp)
  ADDI a0, zero, -77
  SW a0, 636(sp)
  LW a0, 384(sp)
  LW s0, 636(sp)
  MULW a0, a0, s0
  LW s0, 32(sp)
  ADDW a0, s0, a0
  SW a0, 28(sp)
  ADDI a0, zero, 66
  SW a0, 632(sp)
  LW a0, 380(sp)
  LW s0, 632(sp)
  MULW a0, a0, s0
  LW s0, 28(sp)
  ADDW a0, s0, a0
  ADDI s0, zero, -90
  SW s0, 628(sp)
  LW s0, 628(sp)
  LW s1, 264(sp)
  MULW s0, s1, s0
  SW s0, 24(sp)
  LW s0, 24(sp)
  ADDW a0, a0, s0
  SW a0, 20(sp)
  ADDI a0, zero, -6
  SW a0, 660(sp)
  LW a0, 376(sp)
  LW s0, 660(sp)
  MULW a0, a0, s0
  LW s0, 20(sp)
  ADDW a0, s0, a0
  SW a0, 16(sp)
  ADDI a0, zero, -30
  SW a0, 624(sp)
  LW a0, 372(sp)
  LW s0, 624(sp)
  MULW a0, a0, s0
  LW s0, 16(sp)
  ADDW a0, s0, a0
  SW a0, 12(sp)
  ADDI a0, zero, -8
  SW a0, 620(sp)
  LW a0, 368(sp)
  LW s0, 620(sp)
  MULW a0, a0, s0
  LW s0, 12(sp)
  ADDW a0, s0, a0
  ADDI s0, zero, 81
  SW s0, 616(sp)
  LW s0, 616(sp)
  LW s1, 248(sp)
  MULW s0, s1, s0
  SW s0, 8(sp)
  LW s0, 8(sp)
  ADDW a0, a0, s0
  SW a0, 4(sp)
  LW a0, 364(sp)
  SLLIW a0, a0, 1
  LW s0, 4(sp)
  ADDW a0, s0, a0
  SW a0, 48(sp)
  ADDI a0, zero, -110
  SW a0, 612(sp)
  LW a0, 400(sp)
  LW s0, 612(sp)
  MULW a0, a0, s0
  LW s0, 48(sp)
  ADDW a0, s0, a0
  SW a0, 176(sp)
  ADDI a0, zero, -95
  SW a0, 608(sp)
  LW a0, 512(sp)
  LW s0, 608(sp)
  MULW a0, a0, s0
  LW s0, 176(sp)
  ADDW a0, s0, a0
  SW a0, 172(sp)
  ADDI a0, zero, 59
  SW a0, 604(sp)
  LW a0, 508(sp)
  LW s0, 604(sp)
  MULW a0, a0, s0
  LW s0, 172(sp)
  ADDW a0, s0, a0
  SW a0, 168(sp)
  ADDI a0, zero, 52
  SW a0, 600(sp)
  LW a0, 500(sp)
  LW s0, 600(sp)
  MULW a0, a0, s0
  LW s0, 168(sp)
  ADDW a0, s0, a0
  ADDI s0, zero, 15
  SW s0, 556(sp)
  LW s0, 556(sp)
  LW s1, 236(sp)
  MULW s0, s1, s0
  SW s0, 164(sp)
  LW s0, 164(sp)
  ADDW a0, a0, s0
  SW a0, 160(sp)
  ADDI a0, zero, 55
  SW a0, 596(sp)
  LW a0, 496(sp)
  LW s0, 596(sp)
  MULW a0, a0, s0
  LW s0, 160(sp)
  ADDW a0, s0, a0
  SW a0, 156(sp)
  ADDI a0, zero, -33
  SW a0, 436(sp)
  LW a0, 492(sp)
  LW s0, 436(sp)
  MULW a0, a0, s0
  LW s0, 156(sp)
  ADDW a0, s0, a0
  SW a0, 152(sp)
  ADDI a0, zero, 14
  SW a0, 432(sp)
  LW a0, 488(sp)
  LW s0, 432(sp)
  MULW a0, a0, s0
  LW s0, 152(sp)
  ADDW a0, s0, a0
  ADDI s0, zero, 58
  SW s0, 428(sp)
  LW s0, 428(sp)
  LW s1, 180(sp)
  MULW s0, s1, s0
  SW s0, 148(sp)
  LW s0, 148(sp)
  ADDW a0, a0, s0
  SW a0, 144(sp)
  ADDI a0, zero, 67
  SW a0, 424(sp)
  LW a0, 484(sp)
  LW s0, 424(sp)
  MULW a0, a0, s0
  LW s0, 144(sp)
  ADDW a0, s0, a0
  SW a0, 140(sp)
  ADDI a0, zero, 86
  SW a0, 420(sp)
  LW a0, 440(sp)
  LW s0, 420(sp)
  MULW a0, a0, s0
  LW s0, 140(sp)
  ADDW a0, s0, a0
  SW a0, 92(sp)
  ADDI a0, zero, -79
  SW a0, 416(sp)
  LW a0, 476(sp)
  LW s0, 416(sp)
  MULW a0, a0, s0
  LW s0, 92(sp)
  ADDW a0, s0, a0
  ADDI s0, zero, 48
  SW s0, 412(sp)
  LW s0, 412(sp)
  LW s1, 216(sp)
  MULW s0, s1, s0
  SW s0, 132(sp)
  LW s0, 132(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -13
  SW s0, 408(sp)
  LW s0, 408(sp)
  LW s1, 212(sp)
  MULW s0, s1, s0
  SW s0, 128(sp)
  LW s0, 128(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -15
  SW s0, 404(sp)
  LW s0, 404(sp)
  LW s1, 208(sp)
  MULW s0, s1, s0
  SW s0, 124(sp)
  LW s0, 124(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, 66
  SW s0, 360(sp)
  LW s0, 360(sp)
  LW s1, 204(sp)
  MULW s0, s1, s0
  SW s0, 120(sp)
  LW s0, 120(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, 127
  SW s0, 396(sp)
  LW s0, 396(sp)
  BLT s0, a0, bb50
  # implict jump to bb24
bb24:
  BLT a0, zero, bb49
  # implict jump to bb25
bb25:
  # implict jump to bb26
bb26:
  ADDI s0, zero, -95
  SW s0, 392(sp)
  LW s0, 392(sp)
  MULW a0, a0, s0
  LW s0, 36(sp)
  ADDW a0, s0, a0
  SW a0, 116(sp)
  ADDI a0, zero, 33
  LW s0, 448(sp)
  MULW a0, s0, a0
  LW s0, 464(sp)
  ADDW a0, a0, s0
  SW a0, 112(sp)
  ADDI a0, zero, 67
  LW s0, 380(sp)
  MULW a0, s0, a0
  LW s0, 112(sp)
  ADDW a0, s0, a0
  ADDI s8, zero, 30
  LW s0, 264(sp)
  MULW s8, s0, s8
  ADDW a0, a0, s8
  SW a0, 108(sp)
  ADDI a0, zero, -2
  LW s0, 376(sp)
  MULW a0, s0, a0
  LW s0, 108(sp)
  ADDW a0, s0, a0
  SW a0, 104(sp)
  ADDI a0, zero, 65
  LW s0, 372(sp)
  MULW a0, s0, a0
  LW s0, 104(sp)
  ADDW a0, s0, a0
  SW a0, 100(sp)
  ADDI a0, zero, 120
  LW s0, 368(sp)
  MULW a0, s0, a0
  LW s0, 100(sp)
  ADDW a0, s0, a0
  ADDI s8, zero, -13
  LW s0, 248(sp)
  MULW s8, s0, s8
  ADDW a0, a0, s8
  SW a0, 96(sp)
  ADDI a0, zero, 18
  LW s0, 364(sp)
  MULW a0, s0, a0
  LW s0, 96(sp)
  ADDW a0, s0, a0
  SW a0, 316(sp)
  ADDI a0, zero, 5
  LW s0, 400(sp)
  MULW a0, s0, a0
  LW s0, 316(sp)
  ADDW a0, s0, a0
  SW a0, 480(sp)
  ADDI a0, zero, 104
  LW s0, 512(sp)
  MULW a0, s0, a0
  LW s0, 480(sp)
  ADDW a0, s0, a0
  SW a0, 588(sp)
  ADDI a0, zero, -119
  LW s0, 508(sp)
  MULW a0, s0, a0
  LW s0, 588(sp)
  ADDW a0, s0, a0
  SW a0, 584(sp)
  ADDI a0, zero, -7
  LW s0, 500(sp)
  MULW a0, s0, a0
  SW a0, 580(sp)
  LW a0, 580(sp)
  LW s0, 584(sp)
  ADDW a0, s0, a0
  ADDI s8, zero, 71
  LW s0, 236(sp)
  MULW s8, s0, s8
  ADDW a0, a0, s8
  SW a0, 576(sp)
  ADDI a0, zero, 107
  LW s0, 496(sp)
  MULW a0, s0, a0
  LW s0, 576(sp)
  ADDW a0, s0, a0
  SW a0, 572(sp)
  ADDI a0, zero, 24
  LW s0, 492(sp)
  MULW a0, s0, a0
  LW s0, 572(sp)
  ADDW a0, s0, a0
  SW a0, 568(sp)
  ADDI a0, zero, 82
  LW s0, 488(sp)
  MULW a0, s0, a0
  LW s0, 568(sp)
  ADDW a0, s0, a0
  ADDI s8, zero, -96
  LW s0, 180(sp)
  MULW s8, s0, s8
  ADDW a0, a0, s8
  SW a0, 564(sp)
  ADDI a0, zero, -104
  LW s0, 484(sp)
  MULW a0, s0, a0
  LW s0, 564(sp)
  ADDW a0, s0, a0
  SW a0, 560(sp)
  ADDI a0, zero, -121
  LW s0, 440(sp)
  MULW a0, s0, a0
  LW s0, 560(sp)
  ADDW a0, s0, a0
  LW s0, 468(sp)
  ADDW a0, a0, s0
  ADDI s8, zero, 97
  LW s0, 216(sp)
  MULW s8, s0, s8
  ADDW a0, a0, s8
  ADDI s8, zero, 83
  LW s0, 212(sp)
  MULW s8, s0, s8
  ADDW a0, a0, s8
  ADDI s8, zero, 46
  LW s0, 208(sp)
  MULW s8, s0, s8
  ADDW a0, a0, s8
  ADDI s8, zero, -84
  LW s0, 204(sp)
  MULW s8, s0, s8
  ADDW a0, a0, s8
  ADDI s8, zero, 127
  BLT s8, a0, bb48
  # implict jump to bb27
bb27:
  BLT a0, zero, bb47
  # implict jump to bb28
bb28:
  # implict jump to bb29
bb29:
  ADDI s8, zero, -50
  MULW a0, a0, s8
  LW s0, 116(sp)
  ADDW s8, s0, a0
  ADDI a0, zero, -29
  LW s0, 448(sp)
  MULW a0, s0, a0
  SW a0, 516(sp)
  ADDI a0, zero, 7
  LW s0, 384(sp)
  MULW a0, s0, a0
  LW s0, 516(sp)
  ADDW a0, s0, a0
  LW s0, 472(sp)
  ADDW a0, a0, s0
  ADDI s9, zero, 38
  LW s0, 264(sp)
  MULW s9, s0, s9
  ADDW a0, a0, s9
  ADDI s9, zero, -90
  LW s0, 376(sp)
  MULW s9, s0, s9
  ADDW a0, a0, s9
  LW s0, 460(sp)
  ADDW a0, a0, s0
  ADDI s4, zero, -32
  LW s0, 368(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 37
  LW s0, 248(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 36
  LW s0, 364(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  LW s0, 456(sp)
  ADDW a0, a0, s0
  ADDI s4, zero, -125
  LW s0, 512(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -46
  LW s0, 508(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -70
  LW s0, 500(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 37
  LW s0, 236(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -73
  LW s0, 496(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -34
  LW s0, 492(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -87
  LW s0, 488(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -75
  LW s0, 180(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 71
  LW s0, 484(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -77
  LW s0, 440(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 53
  LW s0, 476(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 37
  LW s0, 216(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -103
  LW s0, 212(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -13
  LW s0, 208(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -114
  LW s0, 204(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 127
  BLT s4, a0, bb46
  # implict jump to bb30
bb30:
  BLT a0, zero, bb45
  # implict jump to bb31
bb31:
  # implict jump to bb32
bb32:
  ADDI s4, zero, -23
  MULW a0, a0, s4
  ADDW s4, s8, a0
  ADDI a0, zero, 67
  LW s0, 448(sp)
  MULW a0, s0, a0
  ADDI s8, zero, 42
  LW s0, 384(sp)
  MULW s8, s0, s8
  ADDW a0, a0, s8
  ADDI s8, zero, 41
  LW s0, 380(sp)
  MULW s8, s0, s8
  ADDW a0, a0, s8
  ADDI s8, zero, -123
  LW s0, 264(sp)
  MULW s8, s0, s8
  ADDW a0, a0, s8
  ADDI s8, zero, -92
  LW s0, 376(sp)
  MULW s8, s0, s8
  ADDW a0, a0, s8
  ADDI s8, zero, 10
  LW s0, 372(sp)
  MULW s8, s0, s8
  ADDW a0, a0, s8
  ADDI s8, zero, -77
  LW s0, 368(sp)
  MULW s8, s0, s8
  ADDW a0, a0, s8
  ADDI s8, zero, 75
  LW s0, 248(sp)
  MULW s8, s0, s8
  ADDW a0, a0, s8
  ADDI s8, zero, 96
  LW s0, 364(sp)
  MULW s1, s0, s8
  ADDW a0, a0, s1
  ADDI s1, zero, -51
  LW s0, 400(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, 109
  LW s0, 512(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, -74
  LW s0, 508(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  LW s0, 580(sp)
  ADDW a0, a0, s0
  ADDI s1, zero, -122
  LW s0, 236(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, 67
  LW s0, 496(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, 47
  LW s0, 492(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, 22
  LW s0, 488(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, -68
  LW s0, 180(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, 38
  LW s0, 484(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, 29
  LW s0, 440(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, 115
  LW s0, 476(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, -121
  LW s0, 216(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, 36
  LW s0, 212(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, -49
  LW s0, 208(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, 85
  LW s0, 204(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, 127
  BLT s1, a0, bb44
  # implict jump to bb33
bb33:
  BLT a0, zero, bb43
  # implict jump to bb34
bb34:
  # implict jump to bb35
bb35:
  ADDI s1, zero, 46
  MULW a0, a0, s1
  ADDW a0, s4, a0
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
  LW s0, 388(sp)
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
