.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -784
  SD ra, 624(sp)
  SD s0, 632(sp)
  SD s1, 640(sp)
  SD s2, 648(sp)
  SD s3, 656(sp)
  SD s4, 664(sp)
  SD s5, 672(sp)
  CALL getint
  ADD s0, a0, zero
  ADDI s1, zero, 0
  BLT s1, s0, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 624(sp)
  LD s0, 632(sp)
  LD s1, 640(sp)
  LD s2, 648(sp)
  LD s3, 656(sp)
  LD s4, 664(sp)
  LD s5, 672(sp)
  ADDI sp, sp, 784
  JALR zero, 0(ra)
bb2:   # loop depth 0
  # implict jump to bb3
bb3:   # loop depth 1
  SW s0, 376(sp)
  ADD s1, zero, zero
  # implict jump to bb4
bb4:   # loop depth 2
  ADDI s2, zero, 20
  MULW s2, s1, s2
  ADDI t6, sp, 680
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
bb5:   # loop depth 1
  LW a0, 680(sp)
  SW a0, 0(sp)
  ADDI a0, zero, 85
  LW s0, 0(sp)
  MULW a0, s0, a0
  LW s0, 684(sp)
  SW s0, 352(sp)
  ADDI s1, zero, 23
  LW s0, 352(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  LW s0, 688(sp)
  SW s0, 348(sp)
  ADDI s1, zero, -82
  LW s0, 348(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  LW s0, 692(sp)
  SW s0, 32(sp)
  ADDI s1, zero, -103
  LW s0, 32(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  LW s0, 696(sp)
  SW s0, 28(sp)
  ADDI s1, zero, -123
  LW s0, 28(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  LW s0, 700(sp)
  SW s0, 344(sp)
  LW s0, 344(sp)
  SLLIW s1, s0, 6
  ADDW a0, a0, s1
  LW s0, 704(sp)
  SW s0, 20(sp)
  ADDI s1, zero, -120
  LW s0, 20(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  LW s0, 708(sp)
  SW s0, 16(sp)
  ADDI s1, zero, 50
  LW s0, 16(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  LW s0, 712(sp)
  SW s0, 340(sp)
  ADDI s1, zero, -59
  LW s0, 340(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  LW s0, 716(sp)
  SW s0, 336(sp)
  ADDI s1, zero, 47
  LW s0, 336(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  LW s0, 720(sp)
  SW s0, 12(sp)
  ADDI s1, zero, -111
  LW s0, 12(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  LW s0, 724(sp)
  SW s0, 332(sp)
  ADDI s1, zero, -67
  LW s0, 332(sp)
  MULW s0, s0, s1
  SW s0, 368(sp)
  LW s0, 368(sp)
  ADDW a0, a0, s0
  LW s0, 728(sp)
  SW s0, 476(sp)
  ADDI s1, zero, -106
  LW s0, 476(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  LW s0, 732(sp)
  SW s0, 4(sp)
  ADDI s1, zero, -75
  LW s0, 4(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  LW s0, 736(sp)
  SW s0, 44(sp)
  ADDI s1, zero, -102
  LW s0, 44(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  LW s0, 740(sp)
  SW s0, 472(sp)
  ADDI s1, zero, 34
  LW s0, 472(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  LW s0, 744(sp)
  SW s0, 468(sp)
  ADDI s1, zero, -39
  LW s0, 468(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  LW s0, 748(sp)
  SW s0, 464(sp)
  ADDI s1, zero, 65
  LW s0, 464(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  LW s0, 752(sp)
  SW s0, 460(sp)
  ADDI s1, zero, 47
  LW s0, 460(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  LW s0, 756(sp)
  SW s0, 456(sp)
  ADDI s1, zero, 113
  LW s0, 456(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  LW s0, 760(sp)
  SW s0, 452(sp)
  ADDI s1, zero, 110
  LW s0, 452(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  LW s0, 764(sp)
  SW s0, 448(sp)
  ADDI s1, zero, 47
  LW s0, 448(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  LW s0, 768(sp)
  SW s0, 404(sp)
  ADDI s1, zero, -4
  LW s0, 404(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  LW s0, 772(sp)
  SW s0, 140(sp)
  ADDI s1, zero, 80
  LW s0, 140(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  LW s0, 776(sp)
  SW s0, 440(sp)
  ADDI s1, zero, 46
  LW s0, 440(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, 127
  BLT s1, a0, bb62
  # implict jump to bb6
bb6:   # loop depth 1
  BLT a0, zero, bb61
  # implict jump to bb7
bb7:   # loop depth 1
  # implict jump to bb8
bb8:   # loop depth 1
  ADDI s1, zero, 39
  MULW s1, a0, s1
  ADDI a0, zero, -106
  LW s0, 0(sp)
  MULW a0, s0, a0
  ADDI s2, zero, 126
  LW s0, 352(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -18
  LW s0, 348(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -31
  LW s0, 32(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -8
  LW s0, 28(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 47
  LW s0, 344(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -4
  LW s0, 20(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 67
  LW s0, 16(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -94
  LW s0, 340(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -121
  LW s0, 336(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 7
  LW s0, 12(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -21
  LW s0, 332(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -60
  LW s0, 476(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -43
  LW s0, 4(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 105
  LW s0, 44(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -42
  LW s0, 472(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 87
  LW s0, 468(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 29
  LW s0, 464(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -106
  LW s0, 460(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -31
  LW s0, 456(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -110
  LW s0, 452(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -100
  LW s0, 448(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -22
  LW s0, 404(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -75
  LW s0, 140(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -125
  LW s0, 440(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 127
  BLT s2, a0, bb60
  # implict jump to bb9
bb9:   # loop depth 1
  BLT a0, zero, bb59
  # implict jump to bb10
bb10:   # loop depth 1
  # implict jump to bb11
bb11:   # loop depth 1
  ADDI s2, zero, 77
  MULW a0, a0, s2
  ADDW s1, s1, a0
  ADDI a0, zero, 26
  LW s0, 0(sp)
  MULW a0, s0, a0
  ADDI s2, zero, 76
  LW s0, 352(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -70
  LW s0, 348(sp)
  MULW s0, s0, s2
  SW s0, 372(sp)
  LW s0, 372(sp)
  ADDW a0, a0, s0
  ADDI s3, zero, 29
  LW s0, 32(sp)
  MULW s3, s0, s3
  ADDW a0, a0, s3
  ADDI s3, zero, -95
  LW s0, 28(sp)
  MULW s3, s0, s3
  ADDW a0, a0, s3
  ADDI s3, zero, 96
  LW s0, 344(sp)
  MULW s3, s0, s3
  ADDW a0, a0, s3
  ADDI s3, zero, 52
  LW s0, 20(sp)
  MULW s3, s0, s3
  ADDW a0, a0, s3
  ADDI s3, zero, -68
  LW s0, 16(sp)
  MULW s3, s0, s3
  ADDW a0, a0, s3
  ADDI s3, zero, -5
  LW s0, 340(sp)
  MULW s3, s0, s3
  ADDW a0, a0, s3
  ADDI s3, zero, 34
  LW s0, 336(sp)
  MULW s3, s0, s3
  ADDW a0, a0, s3
  ADDI s3, zero, -34
  LW s0, 12(sp)
  MULW s3, s0, s3
  ADDW a0, a0, s3
  ADDI s3, zero, 102
  LW s0, 332(sp)
  MULW s3, s0, s3
  ADDW a0, a0, s3
  ADDI s3, zero, 6
  LW s0, 476(sp)
  MULW s3, s0, s3
  ADDW a0, a0, s3
  ADDI s3, zero, -38
  LW s0, 4(sp)
  MULW s3, s0, s3
  ADDW a0, a0, s3
  ADDI s3, zero, 27
  LW s0, 44(sp)
  MULW s3, s0, s3
  ADDW a0, a0, s3
  ADDI s3, zero, 110
  LW s0, 472(sp)
  MULW s3, s0, s3
  ADDW a0, a0, s3
  ADDI s3, zero, 116
  LW s0, 468(sp)
  MULW s3, s0, s3
  ADDW a0, a0, s3
  ADDI s3, zero, 39
  LW s0, 464(sp)
  MULW s3, s0, s3
  ADDW a0, a0, s3
  ADDI s3, zero, -63
  LW s0, 460(sp)
  MULW s3, s0, s3
  ADDW a0, a0, s3
  ADDI s3, zero, -99
  LW s0, 456(sp)
  MULW s3, s0, s3
  ADDW a0, a0, s3
  ADDI s3, zero, 65
  LW s0, 452(sp)
  MULW s0, s0, s3
  SW s0, 328(sp)
  LW s0, 328(sp)
  ADDW a0, a0, s0
  ADDI s4, zero, 120
  LW s0, 448(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -39
  LW s0, 404(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -6
  LW s0, 140(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 94
  LW s0, 440(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 127
  BLT s4, a0, bb58
  # implict jump to bb12
bb12:   # loop depth 1
  BLT a0, zero, bb57
  # implict jump to bb13
bb13:   # loop depth 1
  # implict jump to bb14
bb14:   # loop depth 1
  ADDI s4, zero, 127
  MULW a0, a0, s4
  ADDW s1, s1, a0
  ADDI a0, zero, -23
  LW s0, 0(sp)
  MULW a0, s0, a0
  ADDI s4, zero, -63
  LW s0, 352(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 49
  LW s0, 348(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 50
  LW s0, 32(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 72
  LW s0, 28(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 85
  LW s0, 344(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -30
  LW s0, 20(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 12
  LW s0, 16(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 125
  LW s0, 340(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s0, zero, -117
  SW s0, 132(sp)
  LW s0, 336(sp)
  LW s2, 132(sp)
  MULW s0, s0, s2
  SW s0, 408(sp)
  LW s0, 408(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -65
  SW s0, 128(sp)
  LW s0, 128(sp)
  LW s2, 12(sp)
  MULW s0, s2, s0
  SW s0, 412(sp)
  LW s0, 412(sp)
  ADDW a0, a0, s0
  LW s0, 368(sp)
  ADDW a0, a0, s0
  ADDI s5, zero, 125
  LW s0, 476(sp)
  MULW s5, s0, s5
  ADDW a0, a0, s5
  ADDI s5, zero, 110
  LW s0, 4(sp)
  MULW s5, s0, s5
  ADDW a0, a0, s5
  ADDI s5, zero, -31
  LW s0, 44(sp)
  MULW s5, s0, s5
  ADDW a0, a0, s5
  ADDI s5, zero, -123
  LW s0, 472(sp)
  MULW s5, s0, s5
  ADDW a0, a0, s5
  ADDI s5, zero, 83
  LW s0, 468(sp)
  MULW s5, s0, s5
  ADDW a0, a0, s5
  ADDI s5, zero, 122
  LW s0, 464(sp)
  MULW s5, s0, s5
  ADDW a0, a0, s5
  ADDI s5, zero, 11
  LW s0, 460(sp)
  MULW s5, s0, s5
  ADDW a0, a0, s5
  ADDI s5, zero, -23
  LW s0, 456(sp)
  MULW s5, s0, s5
  ADDW a0, a0, s5
  ADDI s5, zero, -47
  LW s0, 452(sp)
  MULW s5, s0, s5
  ADDW a0, a0, s5
  ADDI s5, zero, -32
  LW s0, 448(sp)
  MULW s5, s0, s5
  ADDW a0, a0, s5
  ADDI s5, zero, -117
  LW s0, 404(sp)
  MULW s5, s0, s5
  ADDW a0, a0, s5
  ADDI s5, zero, 95
  LW s0, 140(sp)
  MULW s5, s0, s5
  ADDW a0, a0, s5
  ADDI s5, zero, 118
  LW s0, 440(sp)
  MULW s5, s0, s5
  ADDW a0, a0, s5
  ADDI s5, zero, 127
  BLT s5, a0, bb56
  # implict jump to bb15
bb15:   # loop depth 1
  BLT a0, zero, bb55
  # implict jump to bb16
bb16:   # loop depth 1
  # implict jump to bb17
bb17:   # loop depth 1
  ADDI s5, zero, -106
  MULW a0, a0, s5
  ADDW s1, s1, a0
  LW a0, 0(sp)
  SLLIW a0, a0, 3
  ADDI s5, zero, 82
  LW s0, 352(sp)
  MULW s0, s0, s5
  SW s0, 364(sp)
  LW s0, 364(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -104
  SW s0, 84(sp)
  LW s0, 348(sp)
  LW s2, 84(sp)
  MULW s0, s0, s2
  SW s0, 416(sp)
  LW s0, 416(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, 101
  SW s0, 120(sp)
  LW s0, 120(sp)
  LW s2, 32(sp)
  MULW s0, s2, s0
  SW s0, 420(sp)
  LW s0, 420(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -116
  SW s0, 116(sp)
  LW s0, 116(sp)
  LW s2, 28(sp)
  MULW s0, s2, s0
  SW s0, 424(sp)
  LW s0, 424(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -63
  SW s0, 112(sp)
  LW s0, 344(sp)
  LW s2, 112(sp)
  MULW s0, s0, s2
  SW s0, 428(sp)
  LW s0, 428(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -16
  SW s0, 108(sp)
  LW s0, 108(sp)
  LW s2, 20(sp)
  MULW s0, s2, s0
  SW s0, 432(sp)
  LW s0, 432(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -70
  SW s0, 104(sp)
  LW s0, 104(sp)
  LW s2, 16(sp)
  MULW s0, s2, s0
  SW s0, 436(sp)
  LW s0, 436(sp)
  ADDW a0, a0, s0
  ADDW a0, a0, s4
  ADDI s4, zero, 75
  LW s0, 336(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 66
  LW s0, 12(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -96
  LW s0, 332(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -101
  LW s0, 476(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -114
  LW s0, 4(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 59
  LW s0, 44(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 12
  LW s0, 472(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 5
  LW s0, 468(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -95
  LW s0, 464(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 116
  LW s0, 460(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -93
  LW s0, 456(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 15
  LW s0, 452(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 79
  LW s0, 448(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 3
  LW s0, 404(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 49
  LW s0, 140(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -124
  LW s0, 440(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 127
  BLT s4, a0, bb54
  # implict jump to bb18
bb18:   # loop depth 1
  BLT a0, zero, bb53
  # implict jump to bb19
bb19:   # loop depth 1
  # implict jump to bb20
bb20:   # loop depth 1
  ADDI s4, zero, -3
  MULW a0, a0, s4
  ADDW a0, s1, a0
  SW a0, 244(sp)
  ADDI a0, zero, 81
  LW s0, 0(sp)
  MULW a0, s0, a0
  ADDI s1, zero, 68
  LW s0, 352(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, -102
  LW s0, 348(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, -74
  LW s0, 32(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, 121
  LW s0, 28(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, -15
  LW s0, 344(sp)
  MULW s0, s0, s1
  SW s0, 360(sp)
  LW s0, 360(sp)
  ADDW a0, a0, s0
  ADDI s4, zero, 55
  LW s0, 20(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, 101
  LW s0, 16(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -13
  LW s0, 340(sp)
  MULW s4, s0, s4
  ADDW a0, a0, s4
  ADDI s4, zero, -62
  LW s0, 336(sp)
  MULW s0, s0, s4
  SW s0, 356(sp)
  LW s0, 356(sp)
  ADDW a0, a0, s0
  LW s0, 12(sp)
  SLLIW s0, s0, 6
  SW s0, 240(sp)
  LW s0, 240(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, 114
  SW s0, 100(sp)
  LW s0, 332(sp)
  LW s1, 100(sp)
  MULW s0, s0, s1
  SW s0, 236(sp)
  LW s0, 236(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, 38
  SW s0, 96(sp)
  LW s0, 476(sp)
  LW s1, 96(sp)
  MULW s0, s0, s1
  SW s0, 232(sp)
  LW s0, 232(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -21
  SW s0, 92(sp)
  LW s0, 92(sp)
  LW s1, 4(sp)
  MULW s0, s1, s0
  SW s0, 228(sp)
  LW s0, 228(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, 112
  SW s0, 88(sp)
  LW s0, 88(sp)
  LW s1, 44(sp)
  MULW s0, s1, s0
  SW s0, 224(sp)
  LW s0, 224(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, 114
  SW s0, 288(sp)
  LW s0, 472(sp)
  LW s1, 288(sp)
  MULW s0, s0, s1
  SW s0, 220(sp)
  LW s0, 220(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, 112
  SW s0, 444(sp)
  LW s0, 468(sp)
  LW s1, 444(sp)
  MULW s0, s0, s1
  SW s0, 216(sp)
  LW s0, 216(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -10
  SW s0, 548(sp)
  LW s0, 464(sp)
  LW s1, 548(sp)
  MULW s0, s0, s1
  SW s0, 212(sp)
  LW s0, 212(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -16
  SW s0, 544(sp)
  LW s0, 460(sp)
  LW s1, 544(sp)
  MULW s0, s0, s1
  SW s0, 164(sp)
  LW s0, 164(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -50
  SW s0, 540(sp)
  LW s0, 456(sp)
  LW s1, 540(sp)
  MULW s0, s0, s1
  SW s0, 204(sp)
  LW s0, 204(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -112
  SW s0, 536(sp)
  LW s0, 452(sp)
  LW s1, 536(sp)
  MULW s0, s0, s1
  SW s0, 200(sp)
  LW s0, 200(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -116
  SW s0, 532(sp)
  LW s0, 448(sp)
  LW s1, 532(sp)
  MULW s0, s0, s1
  SW s0, 196(sp)
  LW s0, 196(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -54
  SW s0, 528(sp)
  LW s0, 404(sp)
  LW s1, 528(sp)
  MULW s0, s0, s1
  SW s0, 192(sp)
  LW s0, 192(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, 82
  SW s0, 524(sp)
  LW s0, 524(sp)
  LW s1, 140(sp)
  MULW s0, s1, s0
  SW s0, 188(sp)
  LW s0, 188(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -72
  SW s0, 520(sp)
  LW s0, 440(sp)
  LW s1, 520(sp)
  MULW s0, s0, s1
  SW s0, 184(sp)
  LW s0, 184(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, 127
  SW s0, 480(sp)
  LW s0, 480(sp)
  BLT s0, a0, bb52
  # implict jump to bb21
bb21:   # loop depth 1
  BLT a0, zero, bb51
  # implict jump to bb22
bb22:   # loop depth 1
  # implict jump to bb23
bb23:   # loop depth 1
  SLLIW a0, a0, 5
  LW s0, 244(sp)
  ADDW a0, s0, a0
  SW a0, 180(sp)
  ADDI a0, zero, 15
  LW s0, 0(sp)
  MULW a0, s0, a0
  ADDI s0, zero, -77
  SW s0, 512(sp)
  LW s0, 352(sp)
  LW s1, 512(sp)
  MULW s0, s0, s1
  SW s0, 176(sp)
  LW s0, 176(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, 66
  SW s0, 508(sp)
  LW s0, 348(sp)
  LW s1, 508(sp)
  MULW s0, s0, s1
  SW s0, 172(sp)
  LW s0, 172(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -90
  SW s0, 504(sp)
  LW s0, 504(sp)
  LW s1, 32(sp)
  MULW s0, s1, s0
  SW s0, 168(sp)
  LW s0, 168(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -6
  SW s0, 500(sp)
  LW s0, 500(sp)
  LW s1, 28(sp)
  MULW s0, s1, s0
  SW s0, 208(sp)
  LW s0, 208(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -30
  SW s0, 496(sp)
  LW s0, 344(sp)
  LW s1, 496(sp)
  MULW s0, s0, s1
  SW s0, 324(sp)
  LW s0, 324(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -8
  SW s0, 492(sp)
  LW s0, 492(sp)
  LW s1, 20(sp)
  MULW s0, s1, s0
  SW s0, 320(sp)
  LW s0, 320(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, 81
  SW s0, 488(sp)
  LW s0, 488(sp)
  LW s1, 16(sp)
  MULW s0, s1, s0
  SW s0, 316(sp)
  LW s0, 316(sp)
  ADDW a0, a0, s0
  LW s0, 340(sp)
  SLLIW s0, s0, 1
  SW s0, 312(sp)
  LW s0, 312(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -110
  SW s0, 484(sp)
  LW s0, 336(sp)
  LW s1, 484(sp)
  MULW s0, s0, s1
  SW s0, 308(sp)
  LW s0, 308(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -95
  SW s0, 592(sp)
  LW s0, 592(sp)
  LW s1, 12(sp)
  MULW s0, s1, s0
  SW s0, 304(sp)
  LW s0, 304(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, 59
  SW s0, 552(sp)
  LW s0, 332(sp)
  LW s1, 552(sp)
  MULW s0, s0, s1
  SW s0, 300(sp)
  LW s0, 300(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, 52
  SW s0, 596(sp)
  LW s0, 476(sp)
  LW s1, 596(sp)
  MULW s0, s0, s1
  SW s0, 296(sp)
  LW s0, 296(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, 15
  SW s0, 600(sp)
  LW s0, 600(sp)
  LW s1, 4(sp)
  MULW s0, s1, s0
  SW s0, 292(sp)
  LW s0, 292(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, 55
  SW s0, 604(sp)
  LW s0, 604(sp)
  LW s1, 44(sp)
  MULW s0, s1, s0
  SW s0, 248(sp)
  LW s0, 248(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -33
  SW s0, 608(sp)
  LW s0, 472(sp)
  LW s1, 608(sp)
  MULW s0, s0, s1
  SW s0, 284(sp)
  LW s0, 284(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, 14
  SW s0, 612(sp)
  LW s0, 468(sp)
  LW s1, 612(sp)
  MULW s0, s0, s1
  SW s0, 280(sp)
  LW s0, 280(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, 58
  SW s0, 616(sp)
  LW s0, 464(sp)
  LW s1, 616(sp)
  MULW s0, s0, s1
  SW s0, 276(sp)
  LW s0, 276(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, 67
  SW s0, 588(sp)
  LW s0, 460(sp)
  LW s1, 588(sp)
  MULW s0, s0, s1
  SW s0, 272(sp)
  LW s0, 272(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, 86
  SW s0, 620(sp)
  LW s0, 456(sp)
  LW s1, 620(sp)
  MULW s0, s0, s1
  SW s0, 268(sp)
  LW s0, 268(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -79
  SW s0, 584(sp)
  LW s0, 452(sp)
  LW s1, 584(sp)
  MULW s0, s0, s1
  SW s0, 264(sp)
  LW s0, 264(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, 48
  SW s0, 580(sp)
  LW s0, 448(sp)
  LW s1, 580(sp)
  MULW s0, s0, s1
  SW s0, 260(sp)
  LW s0, 260(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -13
  SW s0, 576(sp)
  LW s0, 404(sp)
  LW s1, 576(sp)
  MULW s0, s0, s1
  SW s0, 256(sp)
  LW s0, 256(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -15
  SW s0, 572(sp)
  LW s0, 572(sp)
  LW s1, 140(sp)
  MULW s0, s1, s0
  SW s0, 252(sp)
  LW s0, 252(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, 66
  SW s0, 568(sp)
  LW s0, 440(sp)
  LW s1, 568(sp)
  MULW s0, s0, s1
  SW s0, 124(sp)
  LW s0, 124(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, 127
  SW s0, 564(sp)
  LW s0, 564(sp)
  BLT s0, a0, bb50
  # implict jump to bb24
bb24:   # loop depth 1
  BLT a0, zero, bb49
  # implict jump to bb25
bb25:   # loop depth 1
  # implict jump to bb26
bb26:   # loop depth 1
  ADDI s0, zero, -95
  SW s0, 560(sp)
  LW s0, 560(sp)
  MULW a0, a0, s0
  LW s0, 180(sp)
  ADDW a0, s0, a0
  SW a0, 80(sp)
  ADDI a0, zero, 33
  LW s0, 0(sp)
  MULW a0, s0, a0
  LW s0, 364(sp)
  ADDW a0, a0, s0
  ADDI s5, zero, 67
  LW s0, 348(sp)
  MULW s5, s0, s5
  ADDW a0, a0, s5
  ADDI s5, zero, 30
  LW s0, 32(sp)
  MULW s5, s0, s5
  ADDW a0, a0, s5
  ADDI s5, zero, -2
  LW s0, 28(sp)
  MULW s5, s0, s5
  ADDW a0, a0, s5
  ADDI s5, zero, 65
  LW s0, 344(sp)
  MULW s5, s0, s5
  ADDW a0, a0, s5
  ADDI s5, zero, 120
  LW s0, 20(sp)
  MULW s5, s0, s5
  ADDW a0, a0, s5
  ADDI s5, zero, -13
  LW s0, 16(sp)
  MULW s5, s0, s5
  ADDW a0, a0, s5
  ADDI s5, zero, 18
  LW s0, 340(sp)
  MULW s5, s0, s5
  ADDW a0, a0, s5
  ADDI s5, zero, 5
  LW s0, 336(sp)
  MULW s5, s0, s5
  ADDW a0, a0, s5
  ADDI s5, zero, 104
  LW s0, 12(sp)
  MULW s5, s0, s5
  ADDW a0, a0, s5
  ADDI s5, zero, -119
  LW s0, 332(sp)
  MULW s5, s0, s5
  ADDW a0, a0, s5
  ADDI s5, zero, -7
  LW s0, 476(sp)
  MULW s5, s0, s5
  ADDW a0, a0, s5
  ADDI s0, zero, 71
  SW s0, 516(sp)
  LW s0, 516(sp)
  LW s1, 4(sp)
  MULW s0, s1, s0
  SW s0, 76(sp)
  LW s0, 76(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, 107
  SW s0, 556(sp)
  LW s0, 556(sp)
  LW s1, 44(sp)
  MULW s0, s1, s0
  SW s0, 72(sp)
  LW s0, 72(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, 24
  SW s0, 400(sp)
  LW s0, 472(sp)
  LW s1, 400(sp)
  MULW s0, s0, s1
  SW s0, 68(sp)
  LW s0, 68(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, 82
  SW s0, 396(sp)
  LW s0, 468(sp)
  LW s1, 396(sp)
  MULW s0, s0, s1
  SW s0, 64(sp)
  LW s0, 64(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -96
  SW s0, 392(sp)
  LW s0, 464(sp)
  LW s1, 392(sp)
  MULW s0, s0, s1
  SW s0, 60(sp)
  LW s0, 60(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -104
  SW s0, 388(sp)
  LW s0, 460(sp)
  LW s1, 388(sp)
  MULW s0, s0, s1
  SW s0, 56(sp)
  LW s0, 56(sp)
  ADDW a0, a0, s0
  ADDI s0, zero, -121
  SW s0, 384(sp)
  LW s0, 456(sp)
  LW s1, 384(sp)
  MULW s0, s0, s1
  SW s0, 52(sp)
  LW s0, 52(sp)
  ADDW a0, a0, s0
  LW s0, 328(sp)
  ADDW a0, a0, s0
  ADDI s3, zero, 97
  LW s0, 448(sp)
  MULW s3, s0, s3
  ADDW a0, a0, s3
  ADDI s3, zero, 83
  LW s0, 404(sp)
  MULW s3, s0, s3
  ADDW a0, a0, s3
  ADDI s3, zero, 46
  LW s0, 140(sp)
  MULW s3, s0, s3
  ADDW a0, a0, s3
  ADDI s3, zero, -84
  LW s0, 440(sp)
  MULW s3, s0, s3
  ADDW a0, a0, s3
  ADDI s3, zero, 127
  BLT s3, a0, bb48
  # implict jump to bb27
bb27:   # loop depth 1
  BLT a0, zero, bb47
  # implict jump to bb28
bb28:   # loop depth 1
  # implict jump to bb29
bb29:   # loop depth 1
  ADDI s3, zero, -50
  MULW a0, a0, s3
  LW s0, 80(sp)
  ADDW s3, s0, a0
  ADDI a0, zero, -29
  LW s0, 0(sp)
  MULW a0, s0, a0
  ADDI s0, zero, 7
  SW s0, 380(sp)
  LW s0, 352(sp)
  LW s1, 380(sp)
  MULW s0, s0, s1
  SW s0, 48(sp)
  LW s0, 48(sp)
  ADDW a0, a0, s0
  LW s0, 372(sp)
  ADDW a0, a0, s0
  ADDI s2, zero, 38
  LW s0, 32(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -90
  LW s0, 28(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  LW s0, 360(sp)
  ADDW a0, a0, s0
  ADDI s1, zero, -32
  LW s0, 20(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, 37
  LW s0, 16(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, 36
  LW s0, 340(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  LW s0, 356(sp)
  ADDW a0, a0, s0
  ADDI s1, zero, -125
  LW s0, 12(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, -46
  LW s0, 332(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, -70
  LW s0, 476(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, 37
  LW s0, 4(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, -73
  LW s0, 44(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, -34
  LW s0, 472(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, -87
  LW s0, 468(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, -75
  LW s0, 464(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, 71
  LW s0, 460(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, -77
  LW s0, 456(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, 53
  LW s0, 452(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, 37
  LW s0, 448(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, -103
  LW s0, 404(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, -13
  LW s0, 140(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, -114
  LW s0, 440(sp)
  MULW s1, s0, s1
  ADDW a0, a0, s1
  ADDI s1, zero, 127
  BLT s1, a0, bb46
  # implict jump to bb30
bb30:   # loop depth 1
  BLT a0, zero, bb45
  # implict jump to bb31
bb31:   # loop depth 1
  # implict jump to bb32
bb32:   # loop depth 1
  ADDI s1, zero, -23
  MULW a0, a0, s1
  ADDW s1, s3, a0
  ADDI a0, zero, 67
  LW s0, 0(sp)
  MULW a0, s0, a0
  ADDI s2, zero, 42
  LW s0, 352(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 41
  LW s0, 348(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -123
  LW s0, 32(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -92
  LW s0, 28(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 10
  LW s0, 344(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -77
  LW s0, 20(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 75
  LW s0, 16(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 96
  LW s0, 340(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -51
  LW s0, 336(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 109
  LW s0, 12(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -74
  LW s0, 332(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDW a0, a0, s5
  ADDI s2, zero, -122
  LW s0, 4(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 67
  LW s0, 44(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 47
  LW s0, 472(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 22
  LW s0, 468(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -68
  LW s0, 464(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 38
  LW s0, 460(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 29
  LW s0, 456(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 115
  LW s0, 452(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -121
  LW s0, 448(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 36
  LW s0, 404(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, -49
  LW s0, 140(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 85
  LW s0, 440(sp)
  MULW s2, s0, s2
  ADDW a0, a0, s2
  ADDI s2, zero, 127
  BLT s2, a0, bb44
  # implict jump to bb33
bb33:   # loop depth 1
  BLT a0, zero, bb43
  # implict jump to bb34
bb34:   # loop depth 1
  # implict jump to bb35
bb35:   # loop depth 1
  ADDI s2, zero, 46
  MULW a0, a0, s2
  ADDW a0, s1, a0
  BLT zero, a0, bb42
  # implict jump to bb36
bb36:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb37
bb37:   # loop depth 1
  BNE a0, zero, bb41
  # implict jump to bb38
bb38:   # loop depth 1
  ADDI a0, zero, 100
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 103
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb39
bb39:   # loop depth 1
  LW s0, 376(sp)
  ADDIW s0, s0, -1
  BLT zero, s0, bb40
  JAL zero, bb1
bb40:   # loop depth 1
  JAL zero, bb3
bb41:   # loop depth 1
  ADDI a0, zero, 99
  CALL putch
  ADDI a0, zero, 97
  CALL putch
  ADDI a0, zero, 116
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb39
bb42:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb37
bb43:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb35
bb44:   # loop depth 1
  ADDI a0, zero, 127
  JAL zero, bb35
bb45:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb32
bb46:   # loop depth 1
  ADDI a0, zero, 127
  JAL zero, bb32
bb47:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb29
bb48:   # loop depth 1
  ADDI a0, zero, 127
  JAL zero, bb29
bb49:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb26
bb50:   # loop depth 1
  ADDI a0, zero, 127
  JAL zero, bb26
bb51:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb23
bb52:   # loop depth 1
  ADDI a0, zero, 127
  JAL zero, bb23
bb53:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb20
bb54:   # loop depth 1
  ADDI a0, zero, 127
  JAL zero, bb20
bb55:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb17
bb56:   # loop depth 1
  ADDI a0, zero, 127
  JAL zero, bb17
bb57:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb14
bb58:   # loop depth 1
  ADDI a0, zero, 127
  JAL zero, bb14
bb59:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb11
bb60:   # loop depth 1
  ADDI a0, zero, 127
  JAL zero, bb11
bb61:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb8
bb62:   # loop depth 1
  ADDI a0, zero, 127
  JAL zero, bb8
bb63:   # loop depth 2
  JAL zero, bb4
