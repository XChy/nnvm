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
  SD ra, 24(sp)
  SD s2, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s10, 56(sp)
  SD s3, 1152(sp)
  SD s4, 1160(sp)
  SD s5, 1168(sp)
  SD s7, 1176(sp)
  SD s8, 1184(sp)
  SD s9, 1192(sp)
  SD s6, 1256(sp)
  SD s11, 1336(sp)
  ADDI s5, zero, 8
  SW s5, 1272(sp)
  ADDI t4, sp, 1276
  SD t4, 1264(sp)
  ADDI s6, zero, 7
  LD t4, 1264(sp)
  SW s6, 0(t4)
  ADDI s6, sp, 1280
  ADDI s7, zero, 4
  SW s7, 0(s6)
  ADDI s6, sp, 1284
  ADDI s7, zero, 1
  SW s7, 0(s6)
  ADDI s6, sp, 1288
  ADDI s7, zero, 2
  SW s7, 0(s6)
  ADDI s6, sp, 1292
  ADDI s7, zero, 7
  SW s7, 0(s6)
  ADDI s6, sp, 1296
  ADDI s7, zero, 0
  SW s7, 0(s6)
  ADDI s6, sp, 1300
  ADDI s7, zero, 1
  SW s7, 0(s6)
  ADDI s6, sp, 1304
  ADDI s7, zero, 9
  SW s7, 0(s6)
  ADDI s6, sp, 1308
  ADDI s7, zero, 3
  SW s7, 0(s6)
  ADDI s6, sp, 1312
  ADDI s7, zero, 4
  SW s7, 0(s6)
  ADDI s6, sp, 1316
  ADDI s7, zero, 8
  SW s7, 0(s6)
  ADDI s6, sp, 1320
  ADDI s7, zero, 3
  SW s7, 0(s6)
  ADDI s6, sp, 1324
  ADDI s7, zero, 7
  SW s7, 0(s6)
  ADDI s6, sp, 1328
  ADDI s7, zero, 0
  SW s7, 0(s6)
  ADDI s6, zero, 3
  SW s6, 1200(sp)
  ADDI s6, sp, 1204
  ADDI s7, zero, 9
  SW s7, 0(s6)
  ADDI s6, sp, 1208
  ADDI s7, zero, 7
  SW s7, 0(s6)
  ADDI s6, sp, 1212
  ADDI s7, zero, 1
  SW s7, 0(s6)
  ADDI s6, sp, 1216
  ADDI s7, zero, 4
  SW s7, 0(s6)
  ADDI s6, sp, 1220
  ADDI s7, zero, 2
  SW s7, 0(s6)
  ADDI s6, sp, 1224
  ADDI s7, zero, 4
  SW s7, 0(s6)
  ADDI s6, sp, 1228
  ADDI s7, zero, 3
  SW s7, 0(s6)
  ADDI s6, sp, 1232
  ADDI s7, zero, 6
  SW s7, 0(s6)
  ADDI s6, sp, 1236
  ADDI s7, zero, 8
  SW s7, 0(s6)
  ADDI s6, sp, 1240
  ADDI s7, zero, 0
  SW s7, 0(s6)
  ADDI s6, sp, 1244
  ADDI s7, zero, 1
  SW s7, 0(s6)
  ADDI s6, sp, 1248
  ADDI s7, zero, 5
  SW s7, 0(s6)
  ADDI s6, zero, 0
  XORI s6, s6, 16
  BNE s6, zero, bb45
  # implict jump to bb6
bb6:
  LW s7, 1272(sp)
  SW s7, 1088(sp)
  ADDI s8, sp, 1092
  LD t4, 1264(sp)
  LW s9, 0(t4)
  XOR s10, s7, s9
  SLTIU s10, s10, 1
  BNE s10, zero, bb44
  # implict jump to bb7
bb7:
  BLT s9, s7, bb43
  # implict jump to bb8
bb8:
  # implict jump to bb9
bb9:
  SW s9, 0(s8)
  ADDI s7, zero, 2
  SLTI s7, s7, 15
  BNE s7, zero, bb34
  # implict jump to bb10
bb10:
  ADDI s8, sp, 1144
  LW s8, 0(s8)
  ADD a0, s8, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  XORI s8, zero, 256
  BNE s8, zero, bb30
  # implict jump to bb11
bb11:
  ADDI s9, zero, 15
  SLTI s9, s9, 1
  XORI s9, s9, 1
  BNE s9, zero, bb13
  # implict jump to bb12
bb12:
  ADDI s2, sp, 1076
  LW s2, 0(s2)
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 24(sp)
  LD s2, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s10, 56(sp)
  LD s3, 1152(sp)
  LD s4, 1160(sp)
  LD s5, 1168(sp)
  LD s7, 1176(sp)
  LD s8, 1184(sp)
  LD s9, 1192(sp)
  LD s6, 1256(sp)
  LD s11, 1336(sp)
  ADDI sp, sp, 1344
  JALR zero, 0(ra)
bb13:
  ADDI s9, zero, 1
  # implict jump to bb14
bb14:
  ADD s10, s9, zero
  ADDI s11, zero, 13
  SLTI s11, s11, 1
  XORI s11, s11, 1
  BNE s11, zero, bb18
  # implict jump to bb15
bb15:
  ADDIW s1, s10, 1
  # implict jump to bb16
bb16:
  ADDI s2, zero, 15
  SLT s2, s2, s1
  XORI s2, s2, 1
  BNE s2, zero, bb17
  JAL zero, bb12
bb17:
  ADD s9, s1, zero
  JAL zero, bb14
bb18:
  ADDI s11, zero, 1
  # implict jump to bb19
bb19:
  ADD s5, s11, zero
  ADDI s6, zero, 1
  SUBW s6, s10, s6
  SLLIW s3, s6, 2
  ADDI t5, sp, 1272
  ADD s3, t5, s3
  LW s3, 0(s3)
  ADDI s7, zero, 1
  SUBW s7, s5, s7
  SLLIW s7, s7, 2
  ADDI t5, sp, 1200
  ADD s4, t5, s7
  LW s4, 0(s4)
  XOR s3, s3, s4
  SLTIU s3, s3, 1
  BNE s3, zero, bb29
  # implict jump to bb20
bb20:
  SLLIW s3, s10, 6
  ADDI t5, sp, 64
  ADD s3, t5, s3
  SLLIW s4, s5, 2
  ADD s8, s3, s4
  SLLIW s2, s6, 6
  ADDI t5, sp, 64
  ADD s2, t5, s2
  ADD s2, s2, s4
  LW s2, 0(s2)
  ADD s3, s3, s7
  LW s3, 0(s3)
  XOR s4, s2, s3
  SLTIU s4, s4, 1
  BNE s4, zero, bb28
  # implict jump to bb21
bb21:
  BLT s3, s2, bb27
  # implict jump to bb22
bb22:
  # implict jump to bb23
bb23:
  SW s3, 0(s8)
  # implict jump to bb24
bb24:
  ADDIW s0, s5, 1
  # implict jump to bb25
bb25:
  ADDI s2, zero, 13
  SLT s2, s2, s0
  XORI s2, s2, 1
  BNE s2, zero, bb26
  JAL zero, bb15
bb26:
  ADD s11, s0, zero
  JAL zero, bb19
bb27:
  ADD s3, s2, zero
  JAL zero, bb23
bb28:
  ADD s3, s2, zero
  JAL zero, bb23
bb29:
  SLLIW s2, s10, 6
  ADDI t5, sp, 64
  ADD s2, t5, s2
  SLLIW s3, s5, 2
  ADD s2, s2, s3
  SLLIW s3, s6, 6
  ADDI t5, sp, 64
  ADD s3, t5, s3
  ADD s3, s3, s7
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  SW s3, 0(s2)
  JAL zero, bb24
bb30:
  ADDI t4, zero, 256
  SW t4, 4(sp)
  # implict jump to bb31
bb31:
  LW t4, 4(sp)
  ADD s9, t4, zero
  ADDI s10, zero, 1
  SUBW t4, s9, s10
  SW t4, 0(sp)
  LW t4, 0(sp)
  SLLIW s9, t4, 2
  ADDI t5, sp, 64
  ADD s9, t5, s9
  SW zero, 0(s9)
  # implict jump to bb32
bb32:
  LW t4, 0(sp)
  BNE t4, zero, bb33
  JAL zero, bb11
bb33:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb31
bb34:
  ADDI t4, zero, 2
  SW t4, 12(sp)
  # implict jump to bb35
bb35:
  LW t4, 12(sp)
  ADD s8, t4, zero
  SLLIW s9, s8, 2
  ADDI t5, sp, 1088
  ADD s10, t5, s9
  ADDI s11, zero, 2
  SUBW s11, s8, s11
  SLLIW s11, s11, 2
  ADDI t5, sp, 1088
  ADD s11, t5, s11
  LW s11, 0(s11)
  ADDI t5, sp, 1272
  ADD s9, t5, s9
  LW s9, 0(s9)
  ADDW s9, s11, s9
  ADDI s11, zero, 1
  SUBW s11, s8, s11
  SLLIW s11, s11, 2
  ADDI ra, sp, 1088
  ADD s11, ra, s11
  LW s11, 0(s11)
  XOR ra, s9, s11
  SLTIU ra, ra, 1
  BNE ra, zero, bb42
  # implict jump to bb36
bb36:
  BLT s11, s9, bb41
  # implict jump to bb37
bb37:
  # implict jump to bb38
bb38:
  SW s11, 0(s10)
  ADDIW t4, s8, 1
  SW t4, 8(sp)
  # implict jump to bb39
bb39:
  LW t4, 8(sp)
  SLTI s8, t4, 15
  BNE s8, zero, bb40
  JAL zero, bb10
bb40:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  JAL zero, bb35
bb41:
  ADD s11, s9, zero
  JAL zero, bb38
bb42:
  ADD s11, s9, zero
  JAL zero, bb38
bb43:
  ADD s9, s7, zero
  JAL zero, bb9
bb44:
  ADD s9, s7, zero
  JAL zero, bb9
bb45:
  ADDI t4, zero, 16
  SW t4, 20(sp)
  # implict jump to bb46
bb46:
  LW t4, 20(sp)
  ADD s7, t4, zero
  ADDI s8, zero, 1
  SUBW t4, s7, s8
  SW t4, 16(sp)
  LW t4, 16(sp)
  SLLIW s7, t4, 2
  ADDI t5, sp, 1088
  ADD s7, t5, s7
  SW zero, 0(s7)
  # implict jump to bb47
bb47:
  LW t4, 16(sp)
  BNE t4, zero, bb48
  JAL zero, bb6
bb48:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb46
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
  BNE s3, zero, bb66
  # implict jump to bb50
bb50:
  LW s4, 0(s2)
  SW s4, 0(sp)
  ADDI s5, sp, 4
  LW s6, 4(s2)
  XOR s7, s4, s6
  SLTIU s7, s7, 1
  BNE s7, zero, bb65
  # implict jump to bb51
bb51:
  BLT s6, s4, bb64
  # implict jump to bb52
bb52:
  # implict jump to bb53
bb53:
  SW s6, 0(s5)
  ADDI s4, zero, 2
  BLT s4, a1, bb55
  # implict jump to bb54
bb54:
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
bb55:
  ADDI s4, zero, 2
  # implict jump to bb56
bb56:
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
  BNE s9, zero, bb63
  # implict jump to bb57
bb57:
  BLT s8, s6, bb62
  # implict jump to bb58
bb58:
  # implict jump to bb59
bb59:
  SW s8, 0(s7)
  ADDIW s1, s5, 1
  # implict jump to bb60
bb60:
  BLT s1, a1, bb61
  JAL zero, bb54
bb61:
  ADD s4, s1, zero
  JAL zero, bb56
bb62:
  ADD s8, s6, zero
  JAL zero, bb59
bb63:
  ADD s8, s6, zero
  JAL zero, bb59
bb64:
  ADD s6, s4, zero
  JAL zero, bb53
bb65:
  ADD s6, s4, zero
  JAL zero, bb53
bb66:
  ADDI s3, zero, 16
  # implict jump to bb67
bb67:
  ADD s4, s3, zero
  ADDI s5, zero, 1
  SUBW s0, s4, s5
  SLLIW s4, s0, 2
  ADDI t5, sp, 0
  ADD s4, t5, s4
  SW zero, 0(s4)
  # implict jump to bb68
bb68:
  BNE s0, zero, bb69
  JAL zero, bb50
bb69:
  ADD s3, s0, zero
  JAL zero, bb67
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
  ADD s3, a0, zero
  XORI s4, zero, 256
  BNE s4, zero, bb90
  # implict jump to bb71
bb71:
  SLTI s5, a1, 1
  XORI s5, s5, 1
  BNE s5, zero, bb73
  # implict jump to bb72
bb72:
  SLLIW s8, a1, 6
  ADDI t5, sp, 0
  ADD s8, t5, s8
  SLLIW s9, a3, 2
  ADD s8, s8, s9
  LW s8, 0(s8)
  ADD a0, s8, zero
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
bb73:
  ADDI s5, zero, 1
  # implict jump to bb74
bb74:
  ADD s6, s5, zero
  SLTI s7, a3, 1
  XORI s7, s7, 1
  BNE s7, zero, bb78
  # implict jump to bb75
bb75:
  ADDIW s0, s6, 1
  # implict jump to bb76
bb76:
  SLT s8, a1, s0
  XORI s8, s8, 1
  BNE s8, zero, bb77
  JAL zero, bb72
bb77:
  ADD s5, s0, zero
  JAL zero, bb74
bb78:
  ADDI s7, zero, 1
  # implict jump to bb79
bb79:
  ADD s8, s7, zero
  ADDI s9, zero, 1
  SUBW s9, s6, s9
  SLLIW s10, s9, 2
  ADD s10, s3, s10
  LW s10, 0(s10)
  ADDI s11, zero, 1
  SUBW s11, s8, s11
  SLLIW s11, s11, 2
  ADD t0, a2, s11
  LW t0, 0(t0)
  XOR s10, s10, t0
  SLTIU s10, s10, 1
  BNE s10, zero, bb89
  # implict jump to bb80
bb80:
  SLLIW s10, s6, 6
  ADDI t0, sp, 0
  ADD s10, t0, s10
  SLLIW t0, s8, 2
  ADD t1, s10, t0
  SLLIW t2, s9, 6
  ADDI t5, sp, 0
  ADD t2, t5, t2
  ADD t0, t2, t0
  LW t0, 0(t0)
  ADD s10, s10, s11
  LW s10, 0(s10)
  XOR t2, t0, s10
  SLTIU t2, t2, 1
  BNE t2, zero, bb88
  # implict jump to bb81
bb81:
  BLT s10, t0, bb87
  # implict jump to bb82
bb82:
  # implict jump to bb83
bb83:
  SW s10, 0(t1)
  # implict jump to bb84
bb84:
  ADDIW s2, s8, 1
  # implict jump to bb85
bb85:
  SLT s8, a3, s2
  XORI s8, s8, 1
  BNE s8, zero, bb86
  JAL zero, bb75
bb86:
  ADD s7, s2, zero
  JAL zero, bb79
bb87:
  ADD s10, t0, zero
  JAL zero, bb83
bb88:
  ADD s10, t0, zero
  JAL zero, bb83
bb89:
  SLLIW s10, s6, 6
  ADDI t0, sp, 0
  ADD s10, t0, s10
  SLLIW t0, s8, 2
  ADD s10, s10, t0
  SLLIW s9, s9, 6
  ADDI t5, sp, 0
  ADD s9, t5, s9
  ADD s9, s9, s11
  LW s9, 0(s9)
  ADDIW s9, s9, 1
  SW s9, 0(s10)
  JAL zero, bb84
bb90:
  ADDI s4, zero, 256
  # implict jump to bb91
bb91:
  ADD s5, s4, zero
  ADDI s6, zero, 1
  SUBW s1, s5, s6
  SLLIW s5, s1, 2
  ADDI t5, sp, 0
  ADD s5, t5, s5
  SW zero, 0(s5)
  # implict jump to bb92
bb92:
  BNE s1, zero, bb93
  JAL zero, bb71
bb93:
  ADD s4, s1, zero
  JAL zero, bb91
