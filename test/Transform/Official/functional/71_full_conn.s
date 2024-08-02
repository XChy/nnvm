.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -880
  SD ra, 672(sp)
  SD s0, 680(sp)
  SD s1, 688(sp)
  SD s2, 696(sp)
  SD s3, 704(sp)
  SD s4, 712(sp)
  SD s5, 720(sp)
  SD s6, 728(sp)
  SD s7, 736(sp)
  SD s8, 744(sp)
  SD s9, 752(sp)
  SD s10, 760(sp)
  SD s11, 768(sp)
  CALL getint
  ADD s0, a0, zero
  ADDI s1, zero, 0
  BLT s1, s0, bb2
  # implict jump to bb1
bb1:
  ADD a0, zero, zero
  LD ra, 672(sp)
  LD s0, 680(sp)
  LD s1, 688(sp)
  LD s2, 696(sp)
  LD s3, 704(sp)
  LD s4, 712(sp)
  LD s5, 720(sp)
  LD s6, 728(sp)
  LD s7, 736(sp)
  LD s8, 744(sp)
  LD s9, 752(sp)
  LD s10, 760(sp)
  LD s11, 768(sp)
  ADDI sp, sp, 880
  JALR zero, 0(ra)
bb2:
  # implict jump to bb3
bb3:
  ADD s1, zero, zero
  # implict jump to bb4
bb4:
  ADDI s2, zero, 20
  MULW s2, s1, s2
  ADDI t5, sp, 776
  ADD s2, t5, s2
  ADD s3, zero, zero
  # implict jump to bb5
bb5:
  SLLIW s4, s3, 2
  ADD s4, s2, s4
  CALL getint
  ADD s5, a0, zero
  SW s5, 0(s4)
  ADDIW s3, s3, 1
  SLTI s4, s3, 5
  BNE s4, zero, bb66
  # implict jump to bb6
bb6:
  ADDIW s1, s1, 1
  SLTI s2, s1, 5
  BNE s2, zero, bb65
  # implict jump to bb7
bb7:
  LW a0, 776(sp)
  ADDI s1, zero, 85
  MULW s1, a0, s1
  LW s2, 780(sp)
  ADDI s3, zero, 23
  MULW s3, s2, s3
  ADDW s1, s1, s3
  LW s3, 784(sp)
  ADDI s4, zero, -82
  MULW s4, s3, s4
  ADDW s1, s1, s4
  LW s4, 788(sp)
  ADDI s5, zero, -103
  MULW s5, s4, s5
  ADDW s1, s1, s5
  LW s5, 792(sp)
  SW s5, 380(sp)
  ADDI s6, zero, -123
  LW s5, 380(sp)
  MULW s6, s5, s6
  ADDW s1, s1, s6
  LW s5, 796(sp)
  SW s5, 376(sp)
  LW s5, 376(sp)
  SLLIW s7, s5, 6
  ADDW s1, s1, s7
  LW s5, 800(sp)
  SW s5, 372(sp)
  ADDI s8, zero, -120
  LW s5, 372(sp)
  MULW s8, s5, s8
  ADDW s1, s1, s8
  LW s5, 804(sp)
  SW s5, 368(sp)
  ADDI s9, zero, 50
  LW s5, 368(sp)
  MULW s9, s5, s9
  ADDW s1, s1, s9
  LW s5, 808(sp)
  SW s5, 364(sp)
  ADDI s10, zero, -59
  LW s5, 364(sp)
  MULW s10, s5, s10
  ADDW s1, s1, s10
  LW s5, 812(sp)
  SW s5, 360(sp)
  ADDI s11, zero, 47
  LW s5, 360(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  LW s5, 816(sp)
  SW s5, 356(sp)
  ADDI s11, zero, -111
  LW s5, 356(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  LW s5, 820(sp)
  SW s5, 352(sp)
  ADDI s11, zero, -67
  LW s5, 352(sp)
  MULW s5, s5, s11
  SW s5, 608(sp)
  LW s5, 608(sp)
  ADDW s1, s1, s5
  LW s5, 824(sp)
  SW s5, 348(sp)
  ADDI s11, zero, -106
  LW s5, 348(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  LW s5, 828(sp)
  SW s5, 344(sp)
  ADDI s11, zero, -75
  LW s5, 344(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  LW s5, 832(sp)
  SW s5, 384(sp)
  ADDI s11, zero, -102
  LW s5, 384(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  LW s5, 836(sp)
  SW s5, 504(sp)
  ADDI s11, zero, 34
  LW s5, 504(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  LW s5, 840(sp)
  SW s5, 500(sp)
  ADDI s11, zero, -39
  LW s5, 500(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  LW s5, 844(sp)
  SW s5, 496(sp)
  ADDI s11, zero, 65
  LW s5, 496(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  LW s5, 848(sp)
  SW s5, 492(sp)
  ADDI s11, zero, 47
  LW s5, 492(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  LW s5, 852(sp)
  SW s5, 488(sp)
  ADDI s11, zero, 113
  LW s5, 488(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  LW s5, 856(sp)
  SW s5, 484(sp)
  ADDI s11, zero, 110
  LW s5, 484(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  LW s5, 860(sp)
  SW s5, 480(sp)
  ADDI s11, zero, 47
  LW s5, 480(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  LW s5, 864(sp)
  SW s5, 476(sp)
  ADDI s11, zero, -4
  LW s5, 476(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  LW s5, 868(sp)
  SW s5, 472(sp)
  ADDI s11, zero, 80
  LW s5, 472(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  LW s5, 872(sp)
  SW s5, 424(sp)
  ADDI s11, zero, 46
  LW s5, 424(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 127
  BLT s11, s1, bb64
  # implict jump to bb8
bb8:
  BLT s1, zero, bb63
  # implict jump to bb9
bb9:
  # implict jump to bb10
bb10:
  ADDI s11, zero, 39
  MULW s1, s1, s11
  SW s1, 392(sp)
  ADDI s1, zero, -106
  MULW s1, a0, s1
  ADDI s11, zero, 126
  MULW s11, s2, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -18
  MULW s11, s3, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -31
  MULW s11, s4, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -8
  LW s5, 380(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 47
  LW s5, 376(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -4
  LW s5, 372(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 67
  LW s5, 368(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -94
  LW s5, 364(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -121
  LW s5, 360(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 7
  LW s5, 356(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -21
  LW s5, 352(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -60
  LW s5, 348(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -43
  LW s5, 344(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 105
  LW s5, 384(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -42
  LW s5, 504(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 87
  LW s5, 500(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 29
  LW s5, 496(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -106
  LW s5, 492(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -31
  LW s5, 488(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -110
  LW s5, 484(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -100
  LW s5, 480(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -22
  LW s5, 476(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -75
  LW s5, 472(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -125
  LW s5, 424(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 127
  BLT s11, s1, bb62
  # implict jump to bb11
bb11:
  BLT s1, zero, bb61
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  ADDI s11, zero, 77
  MULW s1, s1, s11
  LW s5, 392(sp)
  ADDW s1, s5, s1
  SW s1, 304(sp)
  ADDI s1, zero, 26
  MULW s1, a0, s1
  ADDI s11, zero, 76
  MULW s11, s2, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -70
  MULW s5, s3, s11
  SW s5, 256(sp)
  LW s5, 256(sp)
  ADDW s1, s1, s5
  ADDI s11, zero, 29
  MULW s11, s4, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -95
  LW s5, 380(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 96
  LW s5, 376(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 52
  LW s5, 372(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -68
  LW s5, 368(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -5
  LW s5, 364(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 34
  LW s5, 360(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -34
  LW s5, 356(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 102
  LW s5, 352(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 6
  LW s5, 348(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -38
  LW s5, 344(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 27
  LW s5, 384(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 110
  LW s5, 504(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 116
  LW s5, 500(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 39
  LW s5, 496(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -63
  LW s5, 492(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -99
  LW s5, 488(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 65
  LW s5, 484(sp)
  MULW s5, s5, s11
  SW s5, 156(sp)
  LW s5, 156(sp)
  ADDW s1, s1, s5
  ADDI s11, zero, 120
  LW s5, 480(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -39
  LW s5, 476(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -6
  LW s5, 472(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 94
  LW s5, 424(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 127
  BLT s11, s1, bb60
  # implict jump to bb14
bb14:
  BLT s1, zero, bb59
  # implict jump to bb15
bb15:
  # implict jump to bb16
bb16:
  ADDI s11, zero, 127
  MULW s1, s1, s11
  LW s5, 304(sp)
  ADDW s1, s5, s1
  SW s1, 340(sp)
  ADDI s1, zero, -23
  MULW s1, a0, s1
  ADDI s11, zero, -63
  MULW s11, s2, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 49
  MULW s11, s3, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 50
  MULW s11, s4, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 72
  LW s5, 380(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 85
  LW s5, 376(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -30
  LW s5, 372(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 12
  LW s5, 368(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 125
  LW s5, 364(sp)
  MULW s5, s5, s11
  SW s5, 552(sp)
  LW s5, 552(sp)
  ADDW s1, s1, s5
  ADDI s11, zero, -117
  LW s5, 360(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -65
  LW s5, 356(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  LW s5, 608(sp)
  ADDW s1, s1, s5
  ADDI s11, zero, 125
  LW s5, 348(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 110
  LW s5, 344(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -31
  LW s5, 384(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -123
  LW s5, 504(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 83
  LW s5, 500(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 122
  LW s5, 496(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 11
  LW s5, 492(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -23
  LW s5, 488(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -47
  LW s5, 484(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -32
  LW s5, 480(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -117
  LW s5, 476(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 95
  LW s5, 472(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 118
  LW s5, 424(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 127
  BLT s11, s1, bb58
  # implict jump to bb17
bb17:
  BLT s1, zero, bb57
  # implict jump to bb18
bb18:
  # implict jump to bb19
bb19:
  ADDI s11, zero, -106
  MULW s1, s1, s11
  LW s5, 340(sp)
  ADDW s1, s5, s1
  SLLIW s11, a0, 3
  ADDI s5, zero, 82
  SW s5, 308(sp)
  LW s5, 308(sp)
  MULW s5, s2, s5
  SW s5, 296(sp)
  LW s5, 296(sp)
  ADDW s11, s11, s5
  ADDI s5, zero, -104
  SW s5, 312(sp)
  LW s5, 312(sp)
  MULW s5, s3, s5
  SW s5, 292(sp)
  LW s5, 292(sp)
  ADDW s11, s11, s5
  ADDI s5, zero, 101
  SW s5, 316(sp)
  LW s5, 316(sp)
  MULW s5, s4, s5
  SW s5, 284(sp)
  LW s5, 284(sp)
  ADDW s5, s11, s5
  SW s5, 288(sp)
  ADDI s11, zero, -116
  LW s5, 380(sp)
  MULW s11, s5, s11
  LW s5, 288(sp)
  ADDW s5, s5, s11
  SW s5, 280(sp)
  ADDI s11, zero, -63
  LW s5, 376(sp)
  MULW s11, s5, s11
  LW s5, 280(sp)
  ADDW s5, s5, s11
  SW s5, 276(sp)
  ADDI s11, zero, -16
  LW s5, 372(sp)
  MULW s11, s5, s11
  LW s5, 276(sp)
  ADDW s5, s5, s11
  SW s5, 272(sp)
  ADDI s11, zero, -70
  LW s5, 368(sp)
  MULW s11, s5, s11
  LW s5, 272(sp)
  ADDW s11, s5, s11
  LW s5, 552(sp)
  ADDW s11, s11, s5
  ADDI s5, zero, 75
  SW s5, 320(sp)
  LW s5, 360(sp)
  LW s6, 320(sp)
  MULW s5, s5, s6
  SW s5, 268(sp)
  LW s5, 268(sp)
  ADDW s11, s11, s5
  ADDI s5, zero, 66
  SW s5, 324(sp)
  LW s5, 356(sp)
  LW s6, 324(sp)
  MULW s5, s5, s6
  SW s5, 264(sp)
  LW s5, 264(sp)
  ADDW s11, s11, s5
  ADDI s5, zero, -96
  SW s5, 328(sp)
  LW s5, 352(sp)
  LW s6, 328(sp)
  MULW s5, s5, s6
  SW s5, 260(sp)
  LW s5, 260(sp)
  ADDW s11, s11, s5
  ADDI s5, zero, -101
  SW s5, 332(sp)
  LW s5, 348(sp)
  LW s6, 332(sp)
  MULW s5, s5, s6
  SW s5, 132(sp)
  LW s5, 132(sp)
  ADDW s11, s11, s5
  ADDI s5, zero, -114
  SW s5, 336(sp)
  LW s5, 344(sp)
  LW s6, 336(sp)
  MULW s5, s5, s6
  SW s5, 84(sp)
  LW s5, 84(sp)
  ADDW s11, s11, s5
  ADDI s5, zero, 59
  SW s5, 216(sp)
  LW s5, 384(sp)
  LW s6, 216(sp)
  MULW s5, s5, s6
  SW s5, 80(sp)
  LW s5, 80(sp)
  ADDW s11, s11, s5
  ADDI s5, zero, 12
  SW s5, 176(sp)
  LW s5, 504(sp)
  LW s6, 176(sp)
  MULW s5, s5, s6
  SW s5, 76(sp)
  LW s5, 76(sp)
  ADDW s11, s11, s5
  ADDI s5, zero, 5
  SW s5, 180(sp)
  LW s5, 500(sp)
  LW s6, 180(sp)
  MULW s5, s5, s6
  SW s5, 72(sp)
  LW s5, 72(sp)
  ADDW s11, s11, s5
  ADDI s5, zero, -95
  SW s5, 184(sp)
  LW s5, 496(sp)
  LW s6, 184(sp)
  MULW s5, s5, s6
  SW s5, 68(sp)
  LW s5, 68(sp)
  ADDW s11, s11, s5
  ADDI s5, zero, 116
  SW s5, 188(sp)
  LW s5, 492(sp)
  LW s6, 188(sp)
  MULW s5, s5, s6
  SW s5, 64(sp)
  LW s5, 64(sp)
  ADDW s11, s11, s5
  ADDI s5, zero, -93
  SW s5, 192(sp)
  LW s5, 488(sp)
  LW s6, 192(sp)
  MULW s5, s5, s6
  SW s5, 60(sp)
  LW s5, 60(sp)
  ADDW s11, s11, s5
  ADDI s5, zero, 15
  SW s5, 196(sp)
  LW s5, 484(sp)
  LW s6, 196(sp)
  MULW s5, s5, s6
  SW s5, 56(sp)
  LW s5, 56(sp)
  ADDW s11, s11, s5
  ADDI s5, zero, 79
  SW s5, 200(sp)
  LW s5, 480(sp)
  LW s6, 200(sp)
  MULW s5, s5, s6
  SW s5, 52(sp)
  LW s5, 52(sp)
  ADDW s11, s11, s5
  ADDI s5, zero, 3
  SW s5, 204(sp)
  LW s5, 476(sp)
  LW s6, 204(sp)
  MULW s5, s5, s6
  SW s5, 48(sp)
  LW s5, 48(sp)
  ADDW s11, s11, s5
  ADDI s5, zero, 49
  SW s5, 208(sp)
  LW s5, 472(sp)
  LW s6, 208(sp)
  MULW s5, s5, s6
  SW s5, 0(sp)
  LW s5, 0(sp)
  ADDW s11, s11, s5
  ADDI s5, zero, -124
  SW s5, 212(sp)
  LW s5, 424(sp)
  LW s6, 212(sp)
  MULW s5, s5, s6
  SW s5, 40(sp)
  LW s5, 40(sp)
  ADDW s11, s11, s5
  ADDI s5, zero, 127
  SW s5, 172(sp)
  LW s5, 172(sp)
  BLT s5, s11, bb56
  # implict jump to bb20
bb20:
  BLT s11, zero, bb55
  # implict jump to bb21
bb21:
  # implict jump to bb22
bb22:
  ADDI s5, zero, -3
  SW s5, 220(sp)
  LW s5, 220(sp)
  MULW s11, s11, s5
  ADDW s1, s1, s11
  SW s1, 36(sp)
  ADDI s1, zero, 81
  MULW s1, a0, s1
  ADDI s11, zero, 68
  MULW s11, s2, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -102
  MULW s11, s3, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -74
  MULW s11, s4, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 121
  LW s5, 380(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -15
  LW s5, 376(sp)
  MULW s5, s5, s11
  SW s5, 32(sp)
  LW s5, 32(sp)
  ADDW s1, s1, s5
  ADDI s11, zero, 55
  LW s5, 372(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 101
  LW s5, 368(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -13
  LW s5, 364(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -62
  LW s5, 360(sp)
  MULW s5, s5, s11
  SW s5, 28(sp)
  LW s5, 28(sp)
  ADDW s1, s1, s5
  LW s5, 356(sp)
  SLLIW s11, s5, 6
  ADDW s1, s1, s11
  SW s1, 24(sp)
  ADDI s1, zero, 114
  LW s5, 352(sp)
  MULW s1, s5, s1
  LW s5, 24(sp)
  ADDW s1, s5, s1
  SW s1, 20(sp)
  ADDI s1, zero, 38
  LW s5, 348(sp)
  MULW s1, s5, s1
  LW s5, 20(sp)
  ADDW s1, s5, s1
  SW s1, 16(sp)
  ADDI s1, zero, -21
  LW s5, 344(sp)
  MULW s1, s5, s1
  LW s5, 16(sp)
  ADDW s1, s5, s1
  SW s1, 12(sp)
  ADDI s1, zero, 112
  LW s5, 384(sp)
  MULW s1, s5, s1
  LW s5, 12(sp)
  ADDW s1, s5, s1
  SW s1, 8(sp)
  ADDI s1, zero, 114
  LW s5, 504(sp)
  MULW s1, s5, s1
  LW s5, 8(sp)
  ADDW s1, s5, s1
  SW s1, 4(sp)
  ADDI s1, zero, 112
  LW s5, 500(sp)
  MULW s1, s5, s1
  LW s5, 4(sp)
  ADDW s1, s5, s1
  SW s1, 44(sp)
  ADDI s1, zero, -10
  LW s5, 496(sp)
  MULW s1, s5, s1
  LW s5, 44(sp)
  ADDW s1, s5, s1
  SW s1, 168(sp)
  ADDI s1, zero, -16
  LW s5, 492(sp)
  MULW s1, s5, s1
  LW s5, 168(sp)
  ADDW s1, s5, s1
  SW s1, 164(sp)
  ADDI s1, zero, -50
  LW s5, 488(sp)
  MULW s1, s5, s1
  LW s5, 164(sp)
  ADDW s1, s5, s1
  SW s1, 160(sp)
  ADDI s1, zero, -112
  LW s5, 484(sp)
  MULW s1, s5, s1
  LW s5, 160(sp)
  ADDW s1, s5, s1
  SW s1, 152(sp)
  ADDI s1, zero, -116
  LW s5, 480(sp)
  MULW s1, s5, s1
  LW s5, 152(sp)
  ADDW s1, s5, s1
  ADDI s5, zero, -54
  SW s5, 224(sp)
  LW s5, 476(sp)
  LW s6, 224(sp)
  MULW s11, s5, s6
  ADDW s1, s1, s11
  ADDI s5, zero, 82
  SW s5, 228(sp)
  LW s5, 472(sp)
  LW s6, 228(sp)
  MULW s11, s5, s6
  ADDW s1, s1, s11
  ADDI s11, zero, -72
  LW s5, 424(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 127
  BLT s11, s1, bb54
  # implict jump to bb23
bb23:
  BLT s1, zero, bb53
  # implict jump to bb24
bb24:
  # implict jump to bb25
bb25:
  SLLIW s1, s1, 5
  LW s5, 36(sp)
  ADDW s1, s5, s1
  ADDI s11, zero, 15
  MULW s11, a0, s11
  ADDI s5, zero, -77
  SW s5, 232(sp)
  LW s5, 232(sp)
  MULW s5, s2, s5
  SW s5, 148(sp)
  LW s5, 148(sp)
  ADDW s11, s11, s5
  ADDI s5, zero, 66
  SW s5, 236(sp)
  LW s5, 236(sp)
  MULW s5, s3, s5
  SW s5, 144(sp)
  LW s5, 144(sp)
  ADDW s11, s11, s5
  ADDI s5, zero, -90
  SW s5, 240(sp)
  LW s5, 240(sp)
  MULW s5, s4, s5
  SW s5, 136(sp)
  LW s5, 136(sp)
  ADDW s5, s11, s5
  SW s5, 140(sp)
  ADDI s11, zero, -6
  LW s5, 380(sp)
  MULW s11, s5, s11
  LW s5, 140(sp)
  ADDW s5, s5, s11
  SW s5, 88(sp)
  ADDI s11, zero, -30
  LW s5, 376(sp)
  MULW s11, s5, s11
  LW s5, 88(sp)
  ADDW s5, s5, s11
  SW s5, 128(sp)
  ADDI s11, zero, -8
  LW s5, 372(sp)
  MULW s11, s5, s11
  LW s5, 128(sp)
  ADDW s5, s5, s11
  SW s5, 124(sp)
  ADDI s11, zero, 81
  LW s5, 368(sp)
  MULW s11, s5, s11
  LW s5, 124(sp)
  ADDW s11, s5, s11
  LW s5, 364(sp)
  SLLIW s5, s5, 1
  SW s5, 116(sp)
  LW s5, 116(sp)
  ADDW s5, s11, s5
  SW s5, 120(sp)
  ADDI s11, zero, -110
  LW s5, 360(sp)
  MULW s11, s5, s11
  LW s5, 120(sp)
  ADDW s5, s5, s11
  SW s5, 112(sp)
  ADDI s11, zero, -95
  LW s5, 356(sp)
  MULW s11, s5, s11
  LW s5, 112(sp)
  ADDW s5, s5, s11
  SW s5, 108(sp)
  ADDI s11, zero, 59
  LW s5, 352(sp)
  MULW s11, s5, s11
  LW s5, 108(sp)
  ADDW s5, s5, s11
  SW s5, 104(sp)
  ADDI s11, zero, 52
  LW s5, 348(sp)
  MULW s11, s5, s11
  LW s5, 104(sp)
  ADDW s5, s5, s11
  SW s5, 100(sp)
  ADDI s11, zero, 15
  LW s5, 344(sp)
  MULW s11, s5, s11
  LW s5, 100(sp)
  ADDW s5, s5, s11
  SW s5, 96(sp)
  ADDI s11, zero, 55
  LW s5, 384(sp)
  MULW s11, s5, s11
  LW s5, 96(sp)
  ADDW s5, s5, s11
  SW s5, 92(sp)
  ADDI s11, zero, -33
  LW s5, 504(sp)
  MULW s11, s5, s11
  LW s5, 92(sp)
  ADDW s5, s5, s11
  SW s5, 300(sp)
  ADDI s11, zero, 14
  LW s5, 500(sp)
  MULW s11, s5, s11
  LW s5, 300(sp)
  ADDW s5, s5, s11
  SW s5, 468(sp)
  ADDI s11, zero, 58
  LW s5, 496(sp)
  MULW s11, s5, s11
  LW s5, 468(sp)
  ADDW s5, s5, s11
  SW s5, 584(sp)
  ADDI s11, zero, 67
  LW s5, 492(sp)
  MULW s11, s5, s11
  LW s5, 584(sp)
  ADDW s5, s5, s11
  SW s5, 580(sp)
  ADDI s11, zero, 86
  LW s5, 488(sp)
  MULW s11, s5, s11
  LW s5, 580(sp)
  ADDW s5, s5, s11
  SW s5, 576(sp)
  ADDI s11, zero, -79
  LW s5, 484(sp)
  MULW s11, s5, s11
  LW s5, 576(sp)
  ADDW s5, s5, s11
  SW s5, 572(sp)
  ADDI s11, zero, 48
  LW s5, 480(sp)
  MULW s11, s5, s11
  LW s5, 572(sp)
  ADDW s5, s5, s11
  SW s5, 568(sp)
  ADDI s11, zero, -13
  LW s5, 476(sp)
  MULW s11, s5, s11
  LW s5, 568(sp)
  ADDW s5, s5, s11
  SW s5, 564(sp)
  ADDI s11, zero, -15
  LW s5, 472(sp)
  MULW s11, s5, s11
  LW s5, 564(sp)
  ADDW s5, s5, s11
  SW s5, 560(sp)
  ADDI s11, zero, 66
  LW s5, 424(sp)
  MULW s11, s5, s11
  LW s5, 560(sp)
  ADDW s11, s5, s11
  ADDI s5, zero, 127
  SW s5, 244(sp)
  LW s5, 244(sp)
  BLT s5, s11, bb52
  # implict jump to bb26
bb26:
  BLT s11, zero, bb51
  # implict jump to bb27
bb27:
  # implict jump to bb28
bb28:
  ADDI s5, zero, -95
  SW s5, 248(sp)
  LW s5, 248(sp)
  MULW s11, s11, s5
  ADDW s1, s1, s11
  ADDI s11, zero, 33
  MULW s11, a0, s11
  LW s5, 296(sp)
  ADDW s11, s11, s5
  ADDI s5, zero, 67
  SW s5, 252(sp)
  LW s5, 252(sp)
  MULW s5, s3, s5
  SW s5, 556(sp)
  LW s5, 556(sp)
  ADDW s11, s11, s5
  ADDI s5, zero, 30
  SW s5, 464(sp)
  LW s5, 464(sp)
  MULW s5, s4, s5
  SW s5, 508(sp)
  LW s5, 508(sp)
  ADDW s5, s11, s5
  SW s5, 544(sp)
  ADDI s11, zero, -2
  LW s5, 380(sp)
  MULW s11, s5, s11
  LW s5, 544(sp)
  ADDW s5, s5, s11
  SW s5, 540(sp)
  ADDI s11, zero, 65
  LW s5, 376(sp)
  MULW s11, s5, s11
  LW s5, 540(sp)
  ADDW s5, s5, s11
  SW s5, 536(sp)
  ADDI s11, zero, 120
  LW s5, 372(sp)
  MULW s11, s5, s11
  LW s5, 536(sp)
  ADDW s5, s5, s11
  SW s5, 532(sp)
  ADDI s11, zero, -13
  LW s5, 368(sp)
  MULW s11, s5, s11
  LW s5, 532(sp)
  ADDW s5, s5, s11
  SW s5, 528(sp)
  ADDI s11, zero, 18
  LW s5, 364(sp)
  MULW s11, s5, s11
  LW s5, 528(sp)
  ADDW s5, s5, s11
  SW s5, 524(sp)
  ADDI s11, zero, 5
  LW s5, 360(sp)
  MULW s11, s5, s11
  LW s5, 524(sp)
  ADDW s5, s5, s11
  SW s5, 520(sp)
  ADDI s11, zero, 104
  LW s5, 356(sp)
  MULW s11, s5, s11
  LW s5, 520(sp)
  ADDW s5, s5, s11
  SW s5, 516(sp)
  ADDI s11, zero, -119
  LW s5, 352(sp)
  MULW s11, s5, s11
  LW s5, 516(sp)
  ADDW s5, s5, s11
  SW s5, 664(sp)
  ADDI s11, zero, -7
  LW s5, 348(sp)
  MULW s5, s5, s11
  SW s5, 512(sp)
  LW s5, 664(sp)
  LW s6, 512(sp)
  ADDW s5, s5, s6
  SW s5, 588(sp)
  ADDI s5, zero, 71
  SW s5, 460(sp)
  LW s5, 344(sp)
  LW s6, 460(sp)
  MULW s11, s5, s6
  LW s5, 588(sp)
  ADDW s5, s5, s11
  SW s5, 660(sp)
  ADDI s5, zero, 107
  SW s5, 456(sp)
  LW s5, 384(sp)
  LW s6, 456(sp)
  MULW s11, s5, s6
  LW s5, 660(sp)
  ADDW s5, s5, s11
  SW s5, 656(sp)
  ADDI s5, zero, 24
  SW s5, 452(sp)
  LW s5, 504(sp)
  LW s6, 452(sp)
  MULW s11, s5, s6
  LW s5, 656(sp)
  ADDW s5, s5, s11
  SW s5, 652(sp)
  ADDI s5, zero, 82
  SW s5, 448(sp)
  LW s5, 500(sp)
  LW s6, 448(sp)
  MULW s11, s5, s6
  LW s5, 652(sp)
  ADDW s5, s5, s11
  SW s5, 648(sp)
  ADDI s5, zero, -96
  SW s5, 444(sp)
  LW s5, 496(sp)
  LW s6, 444(sp)
  MULW s11, s5, s6
  LW s5, 648(sp)
  ADDW s5, s5, s11
  SW s5, 644(sp)
  ADDI s5, zero, -104
  SW s5, 440(sp)
  LW s5, 492(sp)
  LW s6, 440(sp)
  MULW s11, s5, s6
  LW s5, 644(sp)
  ADDW s5, s5, s11
  SW s5, 640(sp)
  ADDI s5, zero, -121
  SW s5, 436(sp)
  LW s5, 488(sp)
  LW s6, 436(sp)
  MULW s11, s5, s6
  LW s5, 640(sp)
  ADDW s11, s5, s11
  LW s5, 156(sp)
  ADDW s5, s11, s5
  SW s5, 636(sp)
  ADDI s11, zero, 97
  LW s5, 480(sp)
  MULW s11, s5, s11
  LW s5, 636(sp)
  ADDW s5, s5, s11
  SW s5, 632(sp)
  ADDI s11, zero, 83
  LW s5, 476(sp)
  MULW s11, s5, s11
  LW s5, 632(sp)
  ADDW s5, s5, s11
  SW s5, 628(sp)
  ADDI s11, zero, 46
  LW s5, 472(sp)
  MULW s11, s5, s11
  LW s5, 628(sp)
  ADDW s5, s5, s11
  SW s5, 624(sp)
  ADDI s11, zero, -84
  LW s5, 424(sp)
  MULW s11, s5, s11
  LW s5, 624(sp)
  ADDW s11, s5, s11
  ADDI s5, zero, 127
  SW s5, 432(sp)
  LW s5, 432(sp)
  BLT s5, s11, bb50
  # implict jump to bb29
bb29:
  BLT s11, zero, bb49
  # implict jump to bb30
bb30:
  # implict jump to bb31
bb31:
  ADDI s5, zero, -50
  SW s5, 428(sp)
  LW s5, 428(sp)
  MULW s11, s11, s5
  ADDW s1, s1, s11
  SW s1, 620(sp)
  ADDI s1, zero, -29
  MULW s1, a0, s1
  ADDI s11, zero, 7
  MULW s11, s2, s11
  ADDW s1, s1, s11
  LW s5, 256(sp)
  ADDW s1, s1, s5
  ADDI s11, zero, 38
  MULW s11, s4, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -90
  LW s5, 380(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  LW s5, 32(sp)
  ADDW s1, s1, s5
  ADDI s11, zero, -32
  LW s5, 372(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 37
  LW s5, 368(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 36
  LW s5, 364(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  LW s5, 28(sp)
  ADDW s1, s1, s5
  ADDI s11, zero, -125
  LW s5, 356(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -46
  LW s5, 352(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -70
  LW s5, 348(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 37
  LW s5, 344(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -73
  LW s5, 384(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -34
  LW s5, 504(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -87
  LW s5, 500(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -75
  LW s5, 496(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 71
  LW s5, 492(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -77
  LW s5, 488(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 53
  LW s5, 484(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 37
  LW s5, 480(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -103
  LW s5, 476(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -13
  LW s5, 472(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, -114
  LW s5, 424(sp)
  MULW s11, s5, s11
  ADDW s1, s1, s11
  ADDI s11, zero, 127
  BLT s11, s1, bb48
  # implict jump to bb32
bb32:
  BLT s1, zero, bb47
  # implict jump to bb33
bb33:
  # implict jump to bb34
bb34:
  ADDI s11, zero, -23
  MULW s1, s1, s11
  LW s5, 620(sp)
  ADDW s1, s5, s1
  ADDI s11, zero, 67
  MULW a0, a0, s11
  ADDI s11, zero, 42
  MULW s2, s2, s11
  ADDW a0, a0, s2
  ADDI s2, zero, 41
  MULW s2, s3, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -123
  MULW s2, s4, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -92
  LW s3, 380(sp)
  MULW s2, s3, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 10
  LW s3, 376(sp)
  MULW s2, s3, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -77
  LW s3, 372(sp)
  MULW s2, s3, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 75
  LW s3, 368(sp)
  MULW s2, s3, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 96
  LW s3, 364(sp)
  MULW s2, s3, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -51
  LW s3, 360(sp)
  MULW s2, s3, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 109
  LW s3, 356(sp)
  MULW s2, s3, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -74
  LW s3, 352(sp)
  MULW s2, s3, s2
  ADDW a0, a0, s2
  LW s2, 512(sp)
  ADDW a0, a0, s2
  ADDI s2, zero, -122
  LW s3, 344(sp)
  MULW s2, s3, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 67
  LW s3, 384(sp)
  MULW s2, s3, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 47
  LW s3, 504(sp)
  MULW s2, s3, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 22
  LW s3, 500(sp)
  MULW s2, s3, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -68
  LW s3, 496(sp)
  MULW s2, s3, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 38
  LW s3, 492(sp)
  MULW s2, s3, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 29
  LW s3, 488(sp)
  MULW s2, s3, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 115
  LW s3, 484(sp)
  MULW s2, s3, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -121
  LW s3, 480(sp)
  MULW s2, s3, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 36
  LW s3, 476(sp)
  MULW s2, s3, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -49
  LW s3, 472(sp)
  MULW s2, s3, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 85
  LW s3, 424(sp)
  MULW s2, s3, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 127
  BLT s2, a0, bb46
  # implict jump to bb35
bb35:
  BLT a0, zero, bb45
  # implict jump to bb36
bb36:
  # implict jump to bb37
bb37:
  ADDI s2, zero, 46
  MULW a0, a0, s2
  ADDW a0, s1, a0
  BLT zero, a0, bb44
  # implict jump to bb38
bb38:
  ADD a0, zero, zero
  # implict jump to bb39
bb39:
  BNE a0, zero, bb43
  # implict jump to bb40
bb40:
  ADDI a0, zero, 100
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 103
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb41
bb41:
  ADDI s1, zero, 1
  SUBW s0, s0, s1
  BLT zero, s0, bb42
  JAL zero, bb1
bb42:
  JAL zero, bb3
bb43:
  ADDI a0, zero, 99
  CALL putch
  ADDI a0, zero, 97
  CALL putch
  ADDI a0, zero, 116
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb41
bb44:
  ADDI a0, zero, 1
  JAL zero, bb39
bb45:
  ADD a0, zero, zero
  JAL zero, bb37
bb46:
  ADDI a0, zero, 127
  JAL zero, bb37
bb47:
  ADD s1, zero, zero
  JAL zero, bb34
bb48:
  ADDI s1, zero, 127
  JAL zero, bb34
bb49:
  ADD s11, zero, zero
  JAL zero, bb31
bb50:
  ADDI s11, zero, 127
  JAL zero, bb31
bb51:
  ADD s11, zero, zero
  JAL zero, bb28
bb52:
  ADDI s11, zero, 127
  JAL zero, bb28
bb53:
  ADD s1, zero, zero
  JAL zero, bb25
bb54:
  ADDI s1, zero, 127
  JAL zero, bb25
bb55:
  ADD s11, zero, zero
  JAL zero, bb22
bb56:
  ADDI s11, zero, 127
  JAL zero, bb22
bb57:
  ADD s1, zero, zero
  JAL zero, bb19
bb58:
  ADDI s1, zero, 127
  JAL zero, bb19
bb59:
  ADD s1, zero, zero
  JAL zero, bb16
bb60:
  ADDI s1, zero, 127
  JAL zero, bb16
bb61:
  ADD s1, zero, zero
  JAL zero, bb13
bb62:
  ADDI s1, zero, 127
  JAL zero, bb13
bb63:
  ADD s1, zero, zero
  JAL zero, bb10
bb64:
  ADDI s1, zero, 127
  JAL zero, bb10
bb65:
  JAL zero, bb4
bb66:
  JAL zero, bb5
