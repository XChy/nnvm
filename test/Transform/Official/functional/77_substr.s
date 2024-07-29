.global MAX
.global main
.global max_sum_nonadjacent
.global longest_common_subseq
.section .bss
.section .data
.section .text
MAX:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  XOR s1, s0, a1
  SLTIU s1, s1, 1
  BNE s1, zero, bb4
  # implict jump to bb1
bb1:
  BLT a1, s0, bb3
  # implict jump to bb2
bb2:
  ADD a0, a1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb3:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb4:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -1344
  SD ra, 32(sp)
  SD s0, 40(sp)
  SD s5, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s6, 152(sp)
  SD s8, 160(sp)
  SD s9, 168(sp)
  SD s10, 176(sp)
  SD s11, 184(sp)
  SD s7, 248(sp)
  ADDI s8, zero, 8
  SW s8, 88(sp)
  ADDI s8, zero, 7
  SW s8, 92(sp)
  ADDI s8, zero, 4
  SW s8, 96(sp)
  ADDI s8, zero, 1
  SW s8, 100(sp)
  ADDI s8, zero, 2
  SW s8, 104(sp)
  ADDI s8, zero, 7
  SW s8, 108(sp)
  ADDI s8, zero, 0
  SW s8, 112(sp)
  ADDI s8, zero, 1
  SW s8, 116(sp)
  ADDI s8, zero, 9
  SW s8, 120(sp)
  ADDI s8, zero, 3
  SW s8, 124(sp)
  ADDI s8, zero, 4
  SW s8, 128(sp)
  ADDI s8, zero, 8
  SW s8, 132(sp)
  ADDI s8, zero, 3
  SW s8, 136(sp)
  ADDI s8, zero, 7
  SW s8, 140(sp)
  ADDI s8, zero, 0
  SW s8, 144(sp)
  ADDI s8, zero, 3
  SW s8, 192(sp)
  ADDI s8, zero, 9
  SW s8, 196(sp)
  ADDI s8, zero, 7
  SW s8, 200(sp)
  ADDI s8, zero, 1
  SW s8, 204(sp)
  ADDI s8, zero, 4
  SW s8, 208(sp)
  ADDI s8, zero, 2
  SW s8, 212(sp)
  ADDI s8, zero, 4
  SW s8, 216(sp)
  ADDI s8, zero, 3
  SW s8, 220(sp)
  ADDI s8, zero, 6
  SW s8, 224(sp)
  ADDI s8, zero, 8
  SW s8, 228(sp)
  ADDI s8, zero, 0
  SW s8, 232(sp)
  ADDI s8, zero, 1
  SW s8, 236(sp)
  ADDI s8, zero, 5
  SW s8, 240(sp)
  ADDI s8, zero, 0
  XORI s8, s8, 16
  BNE s8, zero, bb49
  # implict jump to bb6
bb6:
  ADDI s9, zero, 8
  SW s9, 256(sp)
  ADDI s9, zero, 7
  XORI s9, s9, 8
  SLTIU s9, s9, 1
  BNE s9, zero, bb48
  # implict jump to bb7
bb7:
  ADDI s9, zero, 7
  SLTI s9, s9, 8
  BNE s9, zero, bb47
  # implict jump to bb8
bb8:
  ADDI s9, zero, 7
  # implict jump to bb9
bb9:
  SW s9, 260(sp)
  ADDI s9, zero, 2
  SLTI s9, s9, 15
  BNE s9, zero, bb37
  # implict jump to bb10
bb10:
  LW s10, 312(sp)
  ADD a0, s10, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  XORI s10, zero, 256
  BNE s10, zero, bb32
  # implict jump to bb11
bb11:
  ADDI s8, zero, 15
  SLTI s8, s8, 1
  XORI s8, s8, 1
  BNE s8, zero, bb13
  # implict jump to bb12
bb12:
  LW s0, 1332(sp)
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 32(sp)
  LD s0, 40(sp)
  LD s5, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s6, 152(sp)
  LD s8, 160(sp)
  LD s9, 168(sp)
  LD s10, 176(sp)
  LD s11, 184(sp)
  LD s7, 248(sp)
  ADDI sp, sp, 1344
  JALR zero, 0(ra)
bb13:
  ADDI s8, zero, 1
  # implict jump to bb14
bb14:
  ADDI s11, zero, 13
  SLTI s11, s11, 1
  XORI s5, s11, 1
  # implict jump to bb15
bb15:
  ADD s11, s8, zero
  BNE s5, zero, bb19
  # implict jump to bb16
bb16:
  ADDIW s7, s11, 1
  # implict jump to bb17
bb17:
  ADDI s0, zero, 15
  SLT s0, s0, s7
  XORI s0, s0, 1
  BNE s0, zero, bb18
  JAL zero, bb12
bb18:
  ADD s8, s7, zero
  JAL zero, bb15
bb19:
  ADDI s3, zero, 1
  # implict jump to bb20
bb20:
  ADDI s9, zero, 1
  SUBW t4, s11, s9
  SW t4, 0(sp)
  LW t4, 0(sp)
  SLLIW s9, t4, 2
  ADDI t4, sp, 88
  ADD s9, t4, s9
  LW t4, 0(s9)
  SW t4, 28(sp)
  # implict jump to bb21
bb21:
  ADD s9, s3, zero
  ADDI s2, zero, 1
  SUBW s2, s9, s2
  SLLIW s2, s2, 2
  ADDI t5, sp, 192
  ADD s10, t5, s2
  LW s10, 0(s10)
  LW t4, 28(sp)
  XOR s10, t4, s10
  SLTIU s10, s10, 1
  BNE s10, zero, bb31
  # implict jump to bb22
bb22:
  SLLIW s10, s11, 6
  ADDI t5, sp, 320
  ADD s10, t5, s10
  SLLIW s1, s9, 2
  ADD s4, s10, s1
  LW t4, 0(sp)
  SLLIW s0, t4, 6
  ADDI t5, sp, 320
  ADD s0, t5, s0
  ADD s0, s0, s1
  LW s0, 0(s0)
  ADD s1, s10, s2
  LW s1, 0(s1)
  XOR s10, s0, s1
  SLTIU s10, s10, 1
  BNE s10, zero, bb30
  # implict jump to bb23
bb23:
  BLT s1, s0, bb29
  # implict jump to bb24
bb24:
  # implict jump to bb25
bb25:
  SW s1, 0(s4)
  # implict jump to bb26
bb26:
  ADDIW s6, s9, 1
  # implict jump to bb27
bb27:
  ADDI s0, zero, 13
  SLT s0, s0, s6
  XORI s0, s0, 1
  BNE s0, zero, bb28
  JAL zero, bb16
bb28:
  ADD s3, s6, zero
  JAL zero, bb21
bb29:
  ADD s1, s0, zero
  JAL zero, bb25
bb30:
  ADD s1, s0, zero
  JAL zero, bb25
bb31:
  SLLIW s0, s11, 6
  ADDI t5, sp, 320
  ADD s0, t5, s0
  SLLIW s1, s9, 2
  ADD s0, s0, s1
  LW t4, 0(sp)
  SLLIW s1, t4, 6
  ADDI t5, sp, 320
  ADD s1, t5, s1
  ADD s1, s1, s2
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  SW s1, 0(s0)
  JAL zero, bb26
bb32:
  ADDI s10, zero, 256
  # implict jump to bb33
bb33:
  ADD t4, s10, zero
  SW t4, 20(sp)
  # implict jump to bb34
bb34:
  LW t4, 20(sp)
  ADD s11, t4, zero
  ADDI s8, zero, 1
  SUBW t4, s11, s8
  SW t4, 24(sp)
  LW t4, 24(sp)
  SLLIW s8, t4, 2
  ADDI t5, sp, 320
  ADD s8, t5, s8
  SW zero, 0(s8)
  # implict jump to bb35
bb35:
  LW t4, 24(sp)
  BNE t4, zero, bb36
  JAL zero, bb11
bb36:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb34
bb37:
  ADDI s9, zero, 2
  # implict jump to bb38
bb38:
  ADD t4, s9, zero
  SW t4, 12(sp)
  # implict jump to bb39
bb39:
  LW t4, 12(sp)
  ADD s10, t4, zero
  SLLIW s11, s10, 2
  ADDI ra, sp, 256
  ADD ra, ra, s11
  ADDI t0, zero, 2
  SUBW t0, s10, t0
  SLLIW t0, t0, 2
  ADDI t5, sp, 256
  ADD t0, t5, t0
  LW t0, 0(t0)
  ADDI t5, sp, 88
  ADD s11, t5, s11
  LW s11, 0(s11)
  ADDW s11, t0, s11
  ADDI t0, zero, 1
  SUBW t0, s10, t0
  SLLIW t0, t0, 2
  ADDI t1, sp, 256
  ADD t0, t1, t0
  LW t0, 0(t0)
  XOR t1, s11, t0
  SLTIU t1, t1, 1
  BNE t1, zero, bb46
  # implict jump to bb40
bb40:
  BLT t0, s11, bb45
  # implict jump to bb41
bb41:
  # implict jump to bb42
bb42:
  SW t0, 0(ra)
  ADDIW t4, s10, 1
  SW t4, 16(sp)
  # implict jump to bb43
bb43:
  LW t4, 16(sp)
  SLTI s10, t4, 15
  BNE s10, zero, bb44
  JAL zero, bb10
bb44:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  JAL zero, bb39
bb45:
  ADD t0, s11, zero
  JAL zero, bb42
bb46:
  ADD t0, s11, zero
  JAL zero, bb42
bb47:
  ADDI s9, zero, 8
  JAL zero, bb9
bb48:
  ADDI s9, zero, 8
  JAL zero, bb9
bb49:
  ADDI s8, zero, 16
  # implict jump to bb50
bb50:
  ADD t4, s8, zero
  SW t4, 4(sp)
  # implict jump to bb51
bb51:
  LW t4, 4(sp)
  ADD s9, t4, zero
  ADDI s10, zero, 1
  SUBW t4, s9, s10
  SW t4, 8(sp)
  LW t4, 8(sp)
  SLLIW s9, t4, 2
  ADDI t5, sp, 256
  ADD s9, t5, s9
  SW zero, 0(s9)
  # implict jump to bb52
bb52:
  LW t4, 8(sp)
  BNE t4, zero, bb53
  JAL zero, bb6
bb53:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb51
max_sum_nonadjacent:
  ADDI sp, sp, -160
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  SD s5, 112(sp)
  SD s6, 120(sp)
  SD s7, 128(sp)
  SD s8, 136(sp)
  SD s9, 144(sp)
  ADD s2, a0, zero
  XORI s3, zero, 16
  BNE s3, zero, bb72
  # implict jump to bb55
bb55:
  LW s4, 0(s2)
  SW s4, 0(sp)
  LW s5, 4(s2)
  XOR s6, s4, s5
  SLTIU s6, s6, 1
  BNE s6, zero, bb71
  # implict jump to bb56
bb56:
  BLT s5, s4, bb70
  # implict jump to bb57
bb57:
  # implict jump to bb58
bb58:
  SW s5, 4(sp)
  ADDI s4, zero, 2
  BLT s4, a1, bb60
  # implict jump to bb59
bb59:
  ADDI s5, zero, 1
  SUBW s5, a1, s5
  SLLIW s5, s5, 2
  ADDI a0, sp, 0
  ADD s5, a0, s5
  LW s5, 0(s5)
  ADD a0, s5, zero
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD s5, 112(sp)
  LD s6, 120(sp)
  LD s7, 128(sp)
  LD s8, 136(sp)
  LD s9, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb60:
  ADDI s4, zero, 2
  # implict jump to bb61
bb61:
  # implict jump to bb62
bb62:
  ADD s5, s4, zero
  SLLIW s6, s5, 2
  ADDI t5, sp, 0
  ADD s7, t5, s6
  ADDI s8, zero, 2
  SUBW s8, s5, s8
  SLLIW s8, s8, 2
  ADDI t5, sp, 0
  ADD s8, t5, s8
  LW s8, 0(s8)
  ADD s6, s2, s6
  LW s6, 0(s6)
  ADDW s6, s8, s6
  ADDI s8, zero, 1
  SUBW s8, s5, s8
  SLLIW s8, s8, 2
  ADDI t5, sp, 0
  ADD s8, t5, s8
  LW s8, 0(s8)
  XOR s9, s6, s8
  SLTIU s9, s9, 1
  BNE s9, zero, bb69
  # implict jump to bb63
bb63:
  BLT s8, s6, bb68
  # implict jump to bb64
bb64:
  # implict jump to bb65
bb65:
  SW s8, 0(s7)
  ADDIW s1, s5, 1
  # implict jump to bb66
bb66:
  BLT s1, a1, bb67
  JAL zero, bb59
bb67:
  ADD s4, s1, zero
  JAL zero, bb62
bb68:
  ADD s8, s6, zero
  JAL zero, bb65
bb69:
  ADD s8, s6, zero
  JAL zero, bb65
bb70:
  ADD s5, s4, zero
  JAL zero, bb58
bb71:
  ADD s5, s4, zero
  JAL zero, bb58
bb72:
  ADDI s3, zero, 16
  # implict jump to bb73
bb73:
  # implict jump to bb74
bb74:
  ADD s4, s3, zero
  ADDI s5, zero, 1
  SUBW s0, s4, s5
  SLLIW s4, s0, 2
  ADDI t5, sp, 0
  ADD s4, t5, s4
  SW zero, 0(s4)
  # implict jump to bb75
bb75:
  BNE s0, zero, bb76
  JAL zero, bb55
bb76:
  ADD s3, s0, zero
  JAL zero, bb74
longest_common_subseq:
  ADDI sp, sp, -1136
  SD ra, 1024(sp)
  SD s0, 1032(sp)
  SD s1, 1040(sp)
  SD s2, 1048(sp)
  SD s3, 1056(sp)
  SD s4, 1064(sp)
  SD s5, 1072(sp)
  SD s6, 1080(sp)
  SD s7, 1088(sp)
  SD s8, 1096(sp)
  SD s9, 1104(sp)
  SD s10, 1112(sp)
  SD s11, 1120(sp)
  ADD s6, a0, zero
  XORI s7, zero, 256
  BNE s7, zero, bb99
  # implict jump to bb78
bb78:
  SLTI s8, a1, 1
  XORI s8, s8, 1
  BNE s8, zero, bb80
  # implict jump to bb79
bb79:
  SLLIW s11, a1, 6
  ADDI t0, sp, 0
  ADD s11, t0, s11
  SLLIW t0, a3, 2
  ADD s11, s11, t0
  LW s11, 0(s11)
  ADD a0, s11, zero
  LD ra, 1024(sp)
  LD s0, 1032(sp)
  LD s1, 1040(sp)
  LD s2, 1048(sp)
  LD s3, 1056(sp)
  LD s4, 1064(sp)
  LD s5, 1072(sp)
  LD s6, 1080(sp)
  LD s7, 1088(sp)
  LD s8, 1096(sp)
  LD s9, 1104(sp)
  LD s10, 1112(sp)
  LD s11, 1120(sp)
  ADDI sp, sp, 1136
  JALR zero, 0(ra)
bb80:
  ADDI s8, zero, 1
  # implict jump to bb81
bb81:
  SLTI s9, a3, 1
  XORI s0, s9, 1
  # implict jump to bb82
bb82:
  ADD s9, s8, zero
  BNE s0, zero, bb86
  # implict jump to bb83
bb83:
  ADDIW s3, s9, 1
  # implict jump to bb84
bb84:
  SLT s11, a1, s3
  XORI s11, s11, 1
  BNE s11, zero, bb85
  JAL zero, bb79
bb85:
  ADD s8, s3, zero
  JAL zero, bb82
bb86:
  ADDI s10, zero, 1
  # implict jump to bb87
bb87:
  ADDI s11, zero, 1
  SUBW s5, s9, s11
  SLLIW s11, s5, 2
  ADD s11, s6, s11
  LW s4, 0(s11)
  # implict jump to bb88
bb88:
  ADD s11, s10, zero
  ADDI t0, zero, 1
  SUBW t0, s11, t0
  SLLIW t0, t0, 2
  ADD t1, a2, t0
  LW t1, 0(t1)
  XOR t1, s4, t1
  SLTIU t1, t1, 1
  BNE t1, zero, bb98
  # implict jump to bb89
bb89:
  SLLIW t1, s9, 6
  ADDI t2, sp, 0
  ADD t1, t2, t1
  SLLIW t2, s11, 2
  ADD a4, t1, t2
  SLLIW a5, s5, 6
  ADDI t5, sp, 0
  ADD a5, t5, a5
  ADD t2, a5, t2
  LW t2, 0(t2)
  ADD t1, t1, t0
  LW t1, 0(t1)
  XOR a5, t2, t1
  SLTIU a5, a5, 1
  BNE a5, zero, bb97
  # implict jump to bb90
bb90:
  BLT t1, t2, bb96
  # implict jump to bb91
bb91:
  # implict jump to bb92
bb92:
  SW t1, 0(a4)
  # implict jump to bb93
bb93:
  ADDIW s2, s11, 1
  # implict jump to bb94
bb94:
  SLT s11, a3, s2
  XORI s11, s11, 1
  BNE s11, zero, bb95
  JAL zero, bb83
bb95:
  ADD s10, s2, zero
  JAL zero, bb88
bb96:
  ADD t1, t2, zero
  JAL zero, bb92
bb97:
  ADD t1, t2, zero
  JAL zero, bb92
bb98:
  SLLIW t1, s9, 6
  ADDI t2, sp, 0
  ADD t1, t2, t1
  SLLIW t2, s11, 2
  ADD t1, t1, t2
  SLLIW t2, s5, 6
  ADDI t5, sp, 0
  ADD t2, t5, t2
  ADD t0, t2, t0
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SW t0, 0(t1)
  JAL zero, bb93
bb99:
  ADDI s7, zero, 256
  # implict jump to bb100
bb100:
  # implict jump to bb101
bb101:
  ADD s8, s7, zero
  ADDI s9, zero, 1
  SUBW s1, s8, s9
  SLLIW s8, s1, 2
  ADDI t5, sp, 0
  ADD s8, t5, s8
  SW zero, 0(s8)
  # implict jump to bb102
bb102:
  BNE s1, zero, bb103
  JAL zero, bb78
bb103:
  ADD s7, s1, zero
  JAL zero, bb101
