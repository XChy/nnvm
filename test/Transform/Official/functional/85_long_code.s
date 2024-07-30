.global QuickSort
.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
QuickSort:
  ADDI sp, sp, -112
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s4, 24(sp)
  SD s9, 32(sp)
  SD s10, 40(sp)
  SD s11, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s5, 80(sp)
  SD s6, 88(sp)
  SD s7, 96(sp)
  SD s8, 104(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  BLT s1, s2, bb2
  # implict jump to bb1
bb1:
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s4, 24(sp)
  LD s9, 32(sp)
  LD s10, 40(sp)
  LD s11, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  LD s7, 96(sp)
  LD s8, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb2:
  SLLIW s3, s1, 2
  ADD s3, s0, s3
  LW s3, 0(s3)
  BLT s1, s2, bb5
  # implict jump to bb3
bb3:
  ADD s4, s1, zero
  # implict jump to bb4
bb4:
  SLLIW t1, s4, 2
  ADD t1, s0, t1
  SW s3, 0(t1)
  ADDI t1, zero, 1
  SUBW t1, s4, t1
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, t1, zero
  CALL QuickSort
  ADDIW s4, s4, 1
  ADD a0, s0, zero
  ADD a1, s4, zero
  ADD a2, s2, zero
  CALL QuickSort
  JAL zero, bb1
bb5:
  ADD s5, s1, zero
  ADD s6, s2, zero
  # implict jump to bb6
bb6:
  ADD s7, s6, zero
  ADD s8, s5, zero
  # implict jump to bb7
bb7:
  ADD s9, s7, zero
  BLT s8, s9, bb26
  # implict jump to bb8
bb8:
  ADD s10, zero, zero
  # implict jump to bb9
bb9:
  BNE s10, zero, bb25
  # implict jump to bb10
bb10:
  BLT s8, s9, bb24
  # implict jump to bb11
bb11:
  ADD s10, s8, zero
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  ADD s11, s10, zero
  BLT s11, s9, bb23
  # implict jump to bb14
bb14:
  ADD t0, zero, zero
  # implict jump to bb15
bb15:
  BNE t0, zero, bb22
  # implict jump to bb16
bb16:
  BLT s11, s9, bb21
  # implict jump to bb17
bb17:
  ADD t0, s9, zero
  # implict jump to bb18
bb18:
  ADD t4, t0, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  BLT s11, t4, bb20
  # implict jump to bb19
bb19:
  ADD s4, s11, zero
  JAL zero, bb4
bb20:
  ADD s5, s11, zero
  LW t4, 0(sp)
  ADD s6, t4, zero
  JAL zero, bb6
bb21:
  SLLIW t1, s9, 2
  ADD t1, s0, t1
  SLLIW t2, s11, 2
  ADD t2, s0, t2
  LW t2, 0(t2)
  SW t2, 0(t1)
  ADDI t1, zero, 1
  SUBW t1, s9, t1
  ADD t0, t1, zero
  JAL zero, bb18
bb22:
  ADDIW s4, s11, 1
  ADD s10, s4, zero
  JAL zero, bb13
bb23:
  SLLIW t1, s11, 2
  ADD t1, s0, t1
  LW t1, 0(t1)
  SLT t1, t1, s3
  ADD t0, t1, zero
  JAL zero, bb15
bb24:
  SLLIW s11, s8, 2
  ADD s11, s0, s11
  SLLIW t0, s9, 2
  ADD t0, s0, t0
  LW t0, 0(t0)
  SW t0, 0(s11)
  ADDIW s11, s8, 1
  ADD s10, s11, zero
  JAL zero, bb12
bb25:
  ADDI s4, zero, 1
  SUBW s4, s9, s4
  ADD s7, s4, zero
  JAL zero, bb7
bb26:
  SLLIW s11, s9, 2
  ADD s11, s0, s11
  LW s11, 0(s11)
  ADDI t0, zero, 1
  SUBW t0, s3, t0
  SLT s11, t0, s11
  ADD s10, s11, zero
  JAL zero, bb9
main:
  LUI t0, 1048575
  ADDIW t0, t0, -528
  ADD sp, sp, t0
  SD ra, 264(sp)
  SD s0, 272(sp)
  SD s1, 280(sp)
  SD s2, 288(sp)
  SD s3, 296(sp)
  SD s4, 304(sp)
  SD s5, 312(sp)
  SD s6, 320(sp)
  SD s7, 328(sp)
  SD s8, 336(sp)
  SD s11, 344(sp)
  SD s10, 352(sp)
  SD s9, 616(sp)
  LA s4, n
  ADDI s5, zero, 32
  SW s5, 0(s4)
  ADDI s6, zero, 7
  SW s6, 360(sp)
  ADDI s7, zero, 23
  SW s7, 364(sp)
  ADDI s3, zero, 89
  SW s3, 368(sp)
  ADDI s4, zero, 26
  SW s4, 372(sp)
  ADDI s3, zero, 282
  SW s3, 376(sp)
  ADDI s0, zero, 254
  SW s0, 380(sp)
  ADDI s0, zero, 27
  SW s0, 384(sp)
  ADDI s0, zero, 5
  SW s0, 388(sp)
  ADDI s0, zero, 83
  SW s0, 392(sp)
  ADDI s0, zero, 273
  SW s0, 396(sp)
  ADDI s0, zero, 574
  SW s0, 400(sp)
  ADDI s0, zero, 905
  SW s0, 404(sp)
  ADDI s0, zero, 354
  SW s0, 408(sp)
  ADDI s0, zero, 657
  SW s0, 412(sp)
  ADDI s0, zero, 935
  SW s0, 416(sp)
  ADDI s0, zero, 264
  SW s0, 420(sp)
  ADDI s0, zero, 639
  SW s0, 424(sp)
  ADDI s0, zero, 459
  SW s0, 428(sp)
  ADDI s0, zero, 29
  SW s0, 432(sp)
  ADDI s0, zero, 68
  SW s0, 436(sp)
  ADDI s0, zero, 929
  SW s0, 440(sp)
  ADDI s0, zero, 756
  SW s0, 444(sp)
  ADDI s0, zero, 452
  SW s0, 448(sp)
  ADDI s0, zero, 279
  SW s0, 452(sp)
  ADDI s0, zero, 58
  SW s0, 456(sp)
  ADDI s0, zero, 87
  SW s0, 460(sp)
  ADDI s0, zero, 96
  SW s0, 464(sp)
  ADDI s0, zero, 36
  SW s0, 468(sp)
  ADDI s0, zero, 39
  SW s0, 472(sp)
  ADDI s0, zero, 28
  SW s0, 476(sp)
  ADDI s0, zero, 1
  SW s0, 480(sp)
  ADDI s0, zero, 290
  SW s0, 484(sp)
  ADD t4, zero, zero
  SW t4, 172(sp)
  # implict jump to bb28
bb28:
  LW t4, 172(sp)
  ADD s1, t4, zero
  SLLIW s3, s1, 2
  ADDI t5, sp, 488
  ADD s4, t5, s3
  ADDI t4, sp, 360
  ADD s3, t4, s3
  LW s3, 0(s3)
  SW s3, 0(s4)
  ADDIW t4, s1, 1
  SW t4, 176(sp)
  LW t4, 176(sp)
  SLTI s3, t4, 32
  BNE s3, zero, bb151
  # implict jump to bb29
bb29:
  ADD t4, zero, zero
  SW t4, 180(sp)
  # implict jump to bb30
bb30:
  LW t4, 180(sp)
  ADD s4, t4, zero
  SLLIW s5, s4, 2
  ADDI a0, sp, 488
  ADD s5, a0, s5
  LW s5, 0(s5)
  ADD a0, s5, zero
  CALL putint
  ADDIW t4, s4, 1
  SW t4, 184(sp)
  LW t4, 184(sp)
  SLTI s5, t4, 32
  BNE s5, zero, bb150
  # implict jump to bb31
bb31:
  LA s5, n
  LW s5, 0(s5)
  ADDI s6, zero, 1
  SUBW s5, s5, s6
  BLT zero, s5, bb138
  # implict jump to bb32
bb32:
  ADD t4, zero, zero
  SW t4, 244(sp)
  # implict jump to bb33
bb33:
  LW t4, 244(sp)
  ADD s5, t4, zero
  SLLIW s9, s5, 2
  ADDI a0, sp, 488
  ADD s9, a0, s9
  LW s9, 0(s9)
  ADD a0, s9, zero
  CALL putint
  ADDIW t4, s5, 1
  SW t4, 240(sp)
  LW t4, 240(sp)
  SLTI s9, t4, 32
  BNE s9, zero, bb137
  # implict jump to bb34
bb34:
  LA s9, n
  LW s9, 0(s9)
  ADDI s8, zero, 2
  REMW s8, s9, s8
  SLTIU s8, s8, 1
  BNE s8, zero, bb136
  # implict jump to bb35
bb35:
  LA s8, n
  LW s8, 0(s8)
  ADDI s9, zero, 2
  DIVW s8, s8, s9
  SLLIW s8, s8, 2
  ADDI t5, sp, 488
  ADD s8, t5, s8
  LW s8, 0(s8)
  # implict jump to bb36
bb36:
  ADD a0, s8, zero
  CALL putint
  ADD t4, zero, zero
  SW t4, 260(sp)
  # implict jump to bb37
bb37:
  LW t4, 260(sp)
  ADD s8, t4, zero
  SLLIW s9, s8, 2
  ADDI t4, sp, 624
  ADD s9, t4, s9
  SW zero, 0(s9)
  ADDIW t4, s8, 1
  SW t4, 236(sp)
  LW t4, 236(sp)
  SLTI s9, t4, 1000
  BNE s9, zero, bb135
  # implict jump to bb38
bb38:
  LA s9, n
  LW s9, 0(s9)
  BLT zero, s9, bb128
  # implict jump to bb39
bb39:
  ADD s9, zero, zero
  # implict jump to bb40
bb40:
  ADD a0, s9, zero
  CALL putint
  LA s3, n
  LW s3, 0(s3)
  BLT zero, s3, bb124
  # implict jump to bb41
bb41:
  # implict jump to bb42
bb42:
  ADD t4, s3, zero
  SW t4, 60(sp)
  ADDI s9, zero, 1
  LW t3, 60(sp)
  SUBW t4, t3, s9
  SW t4, 64(sp)
  LW t4, 64(sp)
  BLT zero, t4, bb112
  # implict jump to bb43
bb43:
  ADD t4, zero, zero
  SW t4, 24(sp)
  # implict jump to bb44
bb44:
  LW t4, 24(sp)
  ADD s6, t4, zero
  SLLIW s9, s6, 2
  ADDI a0, sp, 488
  ADD s9, a0, s9
  LW s9, 0(s9)
  ADD a0, s9, zero
  CALL putint
  ADDIW t4, s6, 1
  SW t4, 20(sp)
  LW t4, 20(sp)
  SLTI s9, t4, 32
  BNE s9, zero, bb111
  # implict jump to bb45
bb45:
  LA s9, n
  LW s9, 0(s9)
  BLT zero, s9, bb107
  # implict jump to bb46
bb46:
  # implict jump to bb47
bb47:
  ADD t4, s9, zero
  SW t4, 40(sp)
  ADDI s1, zero, 1
  LW t4, 40(sp)
  BLT s1, t4, bb98
  # implict jump to bb48
bb48:
  ADD t4, zero, zero
  SW t4, 136(sp)
  # implict jump to bb49
bb49:
  LW t4, 136(sp)
  ADD s6, t4, zero
  SLLIW s5, s6, 2
  ADDI a0, sp, 488
  ADD s5, a0, s5
  LW s5, 0(s5)
  ADD a0, s5, zero
  CALL putint
  ADDIW t4, s6, 1
  SW t4, 132(sp)
  LW t4, 132(sp)
  SLTI s6, t4, 32
  BNE s6, zero, bb97
  # implict jump to bb50
bb50:
  LA s6, n
  LW s6, 0(s6)
  BLT zero, s6, bb94
  # implict jump to bb51
bb51:
  ADDI a0, sp, 488
  ADD a0, a0, zero
  ADD a1, zero, zero
  ADDI a2, zero, 31
  CALL QuickSort
  ADD t4, zero, zero
  SW t4, 80(sp)
  # implict jump to bb52
bb52:
  LW t4, 80(sp)
  ADD s8, t4, zero
  SLLIW s9, s8, 2
  ADDI a0, sp, 488
  ADD s9, a0, s9
  LW s9, 0(s9)
  ADD a0, s9, zero
  CALL putint
  ADDIW t4, s8, 1
  SW t4, 116(sp)
  LW t4, 116(sp)
  SLTI s9, t4, 32
  BNE s9, zero, bb93
  # implict jump to bb53
bb53:
  LA s9, n
  LW s9, 0(s9)
  BLT zero, s9, bb89
  # implict jump to bb54
bb54:
  # implict jump to bb55
bb55:
  ADD t4, s9, zero
  SW t4, 104(sp)
  LW t4, 104(sp)
  BLT zero, t4, bb83
  # implict jump to bb56
bb56:
  ADD t4, zero, zero
  SW t4, 84(sp)
  # implict jump to bb57
bb57:
  LW t4, 84(sp)
  ADD s6, t4, zero
  SLLIW s7, s6, 2
  ADDI a0, sp, 488
  ADD s7, a0, s7
  LW s7, 0(s7)
  ADD a0, s7, zero
  CALL putint
  ADDIW t4, s6, 1
  SW t4, 168(sp)
  LW t4, 168(sp)
  SLTI s7, t4, 32
  BNE s7, zero, bb82
  # implict jump to bb58
bb58:
  LA s7, n
  LW s7, 0(s7)
  BLT zero, s7, bb78
  # implict jump to bb59
bb59:
  # implict jump to bb60
bb60:
  ADD s2, s7, zero
  BLT zero, s2, bb69
  # implict jump to bb61
bb61:
  ADDIW s3, s2, -2
  BLT s3, s2, bb66
  # implict jump to bb62
bb62:
  ADD s8, zero, zero
  # implict jump to bb63
bb63:
  ADD s10, s8, zero
  SLLIW s1, s10, 2
  ADDI a0, sp, 488
  ADD s1, a0, s1
  LW s1, 0(s1)
  ADD a0, s1, zero
  CALL putint
  ADDIW s1, s10, 1
  SLTI s10, s1, 32
  BNE s10, zero, bb65
  # implict jump to bb64
bb64:
  ADD a0, zero, zero
  LD ra, 264(sp)
  LD s0, 272(sp)
  LD s1, 280(sp)
  LD s2, 288(sp)
  LD s3, 296(sp)
  LD s4, 304(sp)
  LD s5, 312(sp)
  LD s6, 320(sp)
  LD s7, 328(sp)
  LD s8, 336(sp)
  LD s11, 344(sp)
  LD s10, 352(sp)
  LD s9, 616(sp)
  LUI t0, 1
  ADDIW t0, t0, 528
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb65:
  ADD s8, s1, zero
  JAL zero, bb63
bb66:
  # implict jump to bb67
bb67:
  ADD s6, s3, zero
  SLLIW s8, s6, 2
  ADDI t5, sp, 488
  ADD s8, t5, s8
  SW zero, 0(s8)
  ADDIW s6, s6, 1
  BLT s6, s2, bb68
  JAL zero, bb62
bb68:
  ADD s3, s6, zero
  JAL zero, bb67
bb69:
  ADD s7, zero, zero
  ADD s9, zero, zero
  ADD s11, zero, zero
  # implict jump to bb70
bb70:
  ADD s10, s11, zero
  ADD s0, s9, zero
  ADD s3, s7, zero
  SLTI s5, s0, 2
  BNE s5, zero, bb77
  # implict jump to bb71
bb71:
  XORI s5, s0, 2
  SLTIU s5, s5, 1
  BNE s5, zero, bb76
  # implict jump to bb72
bb72:
  SLLIW s5, s0, 2
  ADDI t5, sp, 488
  ADD s5, t5, s5
  LW s5, 0(s5)
  ADDW s5, s3, s5
  SUBW s5, s5, s10
  ADDIW s4, s0, -2
  SLLIW s4, s4, 2
  ADDI t5, sp, 488
  ADD s4, t5, s4
  LW s6, 0(s4)
  ADDI s8, zero, 3
  DIVW s8, s5, s8
  SW s8, 0(s4)
  ADD s4, s6, zero
  # implict jump to bb73
bb73:
  # implict jump to bb74
bb74:
  ADDIW s0, s0, 1
  BLT s0, s2, bb75
  JAL zero, bb61
bb75:
  ADD s7, s5, zero
  ADD s9, s0, zero
  ADD s11, s4, zero
  JAL zero, bb70
bb76:
  LW s6, 488(sp)
  ADDI s8, zero, 3
  DIVW s8, s3, s8
  SW s8, 488(sp)
  ADD s4, s6, zero
  ADD s5, s3, zero
  JAL zero, bb73
bb77:
  SLLIW s6, s0, 2
  ADDI t5, sp, 488
  ADD s6, t5, s6
  LW s6, 0(s6)
  ADDW s3, s3, s6
  ADD s4, s10, zero
  ADD s5, s3, zero
  JAL zero, bb74
bb78:
  ADD t4, zero, zero
  SW t4, 164(sp)
  # implict jump to bb79
bb79:
  LW t4, 164(sp)
  ADD s11, t4, zero
  SLLIW s1, s11, 2
  ADDI t5, sp, 488
  ADD s9, t5, s1
  ADDI t4, sp, 360
  ADD s1, t4, s1
  LW s1, 0(s1)
  SW s1, 0(s9)
  ADDIW t4, s11, 1
  SW t4, 160(sp)
  LA s9, n
  LW s9, 0(s9)
  LW t4, 160(sp)
  BLT t4, s9, bb81
  # implict jump to bb80
bb80:
  ADD s7, s9, zero
  JAL zero, bb60
bb81:
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  JAL zero, bb79
bb82:
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  JAL zero, bb57
bb83:
  ADD t4, zero, zero
  SW t4, 92(sp)
  ADD t4, zero, zero
  SW t4, 100(sp)
  # implict jump to bb84
bb84:
  LW t4, 100(sp)
  ADD s4, t4, zero
  LW t4, 92(sp)
  ADD s5, t4, zero
  SLLIW s6, s4, 2
  ADDI t5, sp, 488
  ADD s6, t5, s6
  LW s0, 0(s6)
  ADDW s0, s5, s0
  ADDI s5, zero, 4
  REMW s5, s4, s5
  XORI s5, s5, 3
  BNE s5, zero, bb88
  # implict jump to bb85
bb85:
  SW s0, 0(s6)
  ADD s5, zero, zero
  # implict jump to bb86
bb86:
  ADD t4, s5, zero
  SW t4, 88(sp)
  ADDIW t4, s4, 1
  SW t4, 96(sp)
  LW t4, 96(sp)
  LW t3, 104(sp)
  BLT t4, t3, bb87
  JAL zero, bb56
bb87:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  JAL zero, bb84
bb88:
  SW zero, 0(s6)
  ADD s5, s0, zero
  JAL zero, bb86
bb89:
  ADD t4, zero, zero
  SW t4, 112(sp)
  # implict jump to bb90
bb90:
  LW t4, 112(sp)
  ADD s10, t4, zero
  SLLIW s1, s10, 2
  ADDI t5, sp, 488
  ADD s3, t5, s1
  ADDI t4, sp, 360
  ADD s1, t4, s1
  LW s1, 0(s1)
  SW s1, 0(s3)
  ADDIW t4, s10, 1
  SW t4, 108(sp)
  LA s3, n
  LW s3, 0(s3)
  LW t4, 108(sp)
  BLT t4, s3, bb92
  # implict jump to bb91
bb91:
  ADD s9, s3, zero
  JAL zero, bb55
bb92:
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  JAL zero, bb90
bb93:
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  JAL zero, bb52
bb94:
  ADD t4, zero, zero
  SW t4, 128(sp)
  # implict jump to bb95
bb95:
  LW t4, 128(sp)
  ADD s0, t4, zero
  SLLIW s7, s0, 2
  ADDI t5, sp, 488
  ADD s8, t5, s7
  ADDI t4, sp, 360
  ADD s7, t4, s7
  LW s7, 0(s7)
  SW s7, 0(s8)
  ADDIW t4, s0, 1
  SW t4, 124(sp)
  LA s7, n
  LW s7, 0(s7)
  LW t4, 124(sp)
  BLT t4, s7, bb96
  JAL zero, bb51
bb96:
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  JAL zero, bb95
bb97:
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  JAL zero, bb49
bb98:
  ADDI t4, zero, 1
  SW t4, 144(sp)
  # implict jump to bb99
bb99:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t4, 4(sp)
  SLLIW s7, t4, 2
  ADDI t4, sp, 488
  ADD s7, t4, s7
  LW t4, 0(s7)
  SW t4, 8(sp)
  ADDI s11, zero, 1
  LW t4, 4(sp)
  SUBW s11, t4, s11
  ADD t4, s11, zero
  SW t4, 152(sp)
  # implict jump to bb100
bb100:
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  ADDI s3, zero, -1
  LW t4, 148(sp)
  BLT s3, t4, bb106
  # implict jump to bb101
bb101:
  ADD s3, zero, zero
  # implict jump to bb102
bb102:
  BNE s3, zero, bb105
  # implict jump to bb103
bb103:
  LW t4, 148(sp)
  ADDIW s3, t4, 1
  SLLIW s3, s3, 2
  ADDI t4, sp, 488
  ADD s3, t4, s3
  LW t4, 8(sp)
  SW t4, 0(s3)
  LW t3, 4(sp)
  ADDIW t4, t3, 1
  SW t4, 140(sp)
  LW t4, 140(sp)
  LW t3, 40(sp)
  BLT t4, t3, bb104
  JAL zero, bb48
bb104:
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  JAL zero, bb99
bb105:
  LW t4, 148(sp)
  ADDIW s0, t4, 1
  SLLIW s0, s0, 2
  ADDI t4, sp, 488
  ADD s0, t4, s0
  LW t4, 148(sp)
  SLLIW s1, t4, 2
  ADDI t4, sp, 488
  ADD s1, t4, s1
  LW s1, 0(s1)
  SW s1, 0(s0)
  ADDI s0, zero, 1
  LW t4, 148(sp)
  SUBW s0, t4, s0
  ADD t4, s0, zero
  SW t4, 152(sp)
  JAL zero, bb100
bb106:
  LW t4, 148(sp)
  SLLIW s4, t4, 2
  ADDI t4, sp, 488
  ADD s4, t4, s4
  LW s4, 0(s4)
  LW t4, 8(sp)
  SLT s4, t4, s4
  ADD s3, s4, zero
  JAL zero, bb102
bb107:
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb108
bb108:
  LW t4, 16(sp)
  ADD s1, t4, zero
  SLLIW s0, s1, 2
  ADDI t5, sp, 488
  ADD s8, t5, s0
  ADDI t4, sp, 360
  ADD s0, t4, s0
  LW s0, 0(s0)
  SW s0, 0(s8)
  ADDIW t4, s1, 1
  SW t4, 12(sp)
  LA s1, n
  LW s1, 0(s1)
  LW t4, 12(sp)
  BLT t4, s1, bb110
  # implict jump to bb109
bb109:
  ADD s9, s1, zero
  JAL zero, bb47
bb110:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb108
bb111:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  JAL zero, bb44
bb112:
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, zero, zero
  SW t4, 0(sp)
  # implict jump to bb113
bb113:
  LW t4, 0(sp)
  ADD s5, t4, zero
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t4, 60(sp)
  LW t3, 68(sp)
  SUBW s6, t4, t3
  ADDI s11, zero, 1
  SUBW t4, s6, s11
  SW t4, 72(sp)
  LW t4, 72(sp)
  BLT zero, t4, bb117
  # implict jump to bb114
bb114:
  ADD s11, s5, zero
  # implict jump to bb115
bb115:
  ADD t4, s11, zero
  SW t4, 36(sp)
  LW t3, 68(sp)
  ADDIW t4, t3, 1
  SW t4, 28(sp)
  LW t4, 28(sp)
  LW t3, 64(sp)
  BLT t4, t3, bb116
  JAL zero, bb43
bb116:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  JAL zero, bb113
bb117:
  ADD t4, zero, zero
  SW t4, 48(sp)
  ADD t4, s5, zero
  SW t4, 56(sp)
  # implict jump to bb118
bb118:
  LW t4, 56(sp)
  ADD s4, t4, zero
  LW t4, 48(sp)
  ADD s8, t4, zero
  SLLIW s6, s8, 2
  ADDI t5, sp, 488
  ADD s6, t5, s6
  LW s1, 0(s6)
  ADDIW t4, s8, 1
  SW t4, 44(sp)
  LW t4, 44(sp)
  SLLIW s9, t4, 2
  ADDI t5, sp, 488
  ADD s9, t5, s9
  LW s3, 0(s9)
  BLT s3, s1, bb123
  # implict jump to bb119
bb119:
  ADD s1, s4, zero
  # implict jump to bb120
bb120:
  ADD t4, s1, zero
  SW t4, 52(sp)
  LW t4, 44(sp)
  LW t3, 72(sp)
  BLT t4, t3, bb122
  # implict jump to bb121
bb121:
  LW t4, 52(sp)
  ADD s11, t4, zero
  JAL zero, bb115
bb122:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  JAL zero, bb118
bb123:
  LW s3, 0(s9)
  LW s4, 0(s6)
  SW s4, 0(s9)
  SW s3, 0(s6)
  ADD s1, s3, zero
  JAL zero, bb120
bb124:
  ADD t4, zero, zero
  SW t4, 120(sp)
  # implict jump to bb125
bb125:
  LW t4, 120(sp)
  ADD s9, t4, zero
  SLLIW s10, s9, 2
  ADDI t5, sp, 488
  ADD s8, t5, s10
  ADDI t4, sp, 360
  ADD s10, t4, s10
  LW s10, 0(s10)
  SW s10, 0(s8)
  ADDIW t4, s9, 1
  SW t4, 76(sp)
  LA s9, n
  LW s9, 0(s9)
  LW t4, 76(sp)
  BLT t4, s9, bb127
  # implict jump to bb126
bb126:
  ADD s3, s9, zero
  JAL zero, bb42
bb127:
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  JAL zero, bb125
bb128:
  ADD t4, zero, zero
  SW t4, 216(sp)
  ADD t4, zero, zero
  SW t4, 224(sp)
  ADD t4, zero, zero
  SW t4, 232(sp)
  # implict jump to bb129
bb129:
  LW t4, 232(sp)
  ADD s10, t4, zero
  LW t4, 224(sp)
  ADD s6, t4, zero
  LW t4, 216(sp)
  ADD s3, t4, zero
  SLLIW s4, s3, 2
  ADDI t5, sp, 488
  ADD s4, t5, s4
  LW s4, 0(s4)
  SLLIW s5, s4, 2
  ADDI t5, sp, 624
  ADD s5, t5, s5
  LW s0, 0(s5)
  ADDIW s0, s0, 1
  SW s0, 0(s5)
  BLT s6, s0, bb134
  # implict jump to bb130
bb130:
  ADD s5, s10, zero
  # implict jump to bb131
bb131:
  ADD t4, s6, zero
  SW t4, 220(sp)
  ADD t4, s5, zero
  SW t4, 228(sp)
  ADDIW t4, s3, 1
  SW t4, 156(sp)
  LA s3, n
  LW s3, 0(s3)
  LW t4, 156(sp)
  BLT t4, s3, bb133
  # implict jump to bb132
bb132:
  LW t4, 228(sp)
  ADD s9, t4, zero
  JAL zero, bb40
bb133:
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  LW t3, 220(sp)
  ADD t4, t3, zero
  SW t4, 224(sp)
  LW t3, 228(sp)
  ADD t4, t3, zero
  SW t4, 232(sp)
  JAL zero, bb129
bb134:
  ADD s5, s4, zero
  ADD s6, s0, zero
  JAL zero, bb131
bb135:
  LW t3, 236(sp)
  ADD t4, t3, zero
  SW t4, 260(sp)
  JAL zero, bb37
bb136:
  LA s9, n
  LW s9, 0(s9)
  ADDI s0, zero, 2
  DIVW s0, s9, s0
  SLLIW s9, s0, 2
  ADDI t5, sp, 488
  ADD s9, t5, s9
  LW s9, 0(s9)
  ADDI s11, zero, 1
  SUBW s0, s0, s11
  SLLIW s0, s0, 2
  ADDI t5, sp, 488
  ADD s0, t5, s0
  LW s0, 0(s0)
  ADDW s0, s9, s0
  ADDI s9, zero, 2
  DIVW s0, s0, s9
  ADD s8, s0, zero
  JAL zero, bb36
bb137:
  LW t3, 240(sp)
  ADD t4, t3, zero
  SW t4, 244(sp)
  JAL zero, bb33
bb138:
  LA s5, n
  LW t4, 0(s5)
  SW t4, 192(sp)
  ADD t4, zero, zero
  SW t4, 252(sp)
  ADD t4, zero, zero
  SW t4, 256(sp)
  # implict jump to bb139
bb139:
  LW t4, 256(sp)
  ADD s8, t4, zero
  LW t3, 252(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  LW t4, 192(sp)
  LW t3, 188(sp)
  SUBW s10, t4, t3
  ADDI s11, zero, 1
  SUBW s10, s10, s11
  BLT zero, s10, bb143
  # implict jump to bb140
bb140:
  ADD s10, s8, zero
  # implict jump to bb141
bb141:
  ADD t4, s10, zero
  SW t4, 212(sp)
  LW t3, 188(sp)
  ADDIW t4, t3, 1
  SW t4, 248(sp)
  LA s4, n
  LW s4, 0(s4)
  ADDI s5, zero, 1
  SUBW s4, s4, s5
  LW t4, 248(sp)
  BLT t4, s4, bb142
  JAL zero, bb32
bb142:
  LW t3, 248(sp)
  ADD t4, t3, zero
  SW t4, 252(sp)
  LW t3, 212(sp)
  ADD t4, t3, zero
  SW t4, 256(sp)
  JAL zero, bb139
bb143:
  ADD t4, zero, zero
  SW t4, 204(sp)
  ADD t4, s8, zero
  SW t4, 196(sp)
  # implict jump to bb144
bb144:
  LW t4, 196(sp)
  ADD s0, t4, zero
  LW t4, 204(sp)
  ADD s1, t4, zero
  SLLIW s3, s1, 2
  ADDI t5, sp, 488
  ADD s3, t5, s3
  LW s4, 0(s3)
  ADDIW t4, s1, 1
  SW t4, 208(sp)
  LW t4, 208(sp)
  SLLIW s9, t4, 2
  ADDI t5, sp, 488
  ADD s9, t5, s9
  LW s5, 0(s9)
  BLT s5, s4, bb149
  # implict jump to bb145
bb145:
  # implict jump to bb146
bb146:
  ADD t4, s0, zero
  SW t4, 200(sp)
  LA s3, n
  LW s3, 0(s3)
  LW t4, 188(sp)
  SUBW s3, s3, t4
  ADDI s4, zero, 1
  SUBW s3, s3, s4
  LW t4, 208(sp)
  BLT t4, s3, bb148
  # implict jump to bb147
bb147:
  LW t4, 200(sp)
  ADD s10, t4, zero
  JAL zero, bb141
bb148:
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 204(sp)
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 196(sp)
  JAL zero, bb144
bb149:
  LW s4, 0(s9)
  LW s5, 0(s3)
  SW s5, 0(s9)
  SW s4, 0(s3)
  ADD s0, s4, zero
  JAL zero, bb146
bb150:
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  JAL zero, bb30
bb151:
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  JAL zero, bb28
