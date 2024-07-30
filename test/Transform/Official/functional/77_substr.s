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
  SD s0, 32(sp)
  SD s9, 1248(sp)
  SD s10, 1256(sp)
  SD s11, 1264(sp)
  SD s1, 1272(sp)
  SD s2, 1280(sp)
  SD s3, 1288(sp)
  SD s4, 1296(sp)
  SD s5, 1304(sp)
  SD s6, 1312(sp)
  SD s7, 1320(sp)
  SD s8, 1328(sp)
  ADDI s0, zero, 8
  SW s0, 1184(sp)
  ADDI s0, zero, 7
  SW s0, 1188(sp)
  ADDI s0, zero, 4
  SW s0, 1192(sp)
  ADDI s0, zero, 1
  SW s0, 1196(sp)
  ADDI s0, zero, 2
  SW s0, 1200(sp)
  ADDI s0, zero, 7
  SW s0, 1204(sp)
  ADDI s0, zero, 0
  SW s0, 1208(sp)
  ADDI s0, zero, 1
  SW s0, 1212(sp)
  ADDI s0, zero, 9
  SW s0, 1216(sp)
  ADDI s0, zero, 3
  SW s0, 1220(sp)
  ADDI s0, zero, 4
  SW s0, 1224(sp)
  ADDI s0, zero, 8
  SW s0, 1228(sp)
  ADDI s0, zero, 3
  SW s0, 1232(sp)
  ADDI s0, zero, 7
  SW s0, 1236(sp)
  ADDI s0, zero, 0
  SW s0, 1240(sp)
  ADDI s0, zero, 3
  SW s0, 1128(sp)
  ADDI s0, zero, 9
  SW s0, 1132(sp)
  ADDI s0, zero, 7
  SW s0, 1136(sp)
  ADDI s0, zero, 1
  SW s0, 1140(sp)
  ADDI s0, zero, 4
  SW s0, 1144(sp)
  ADDI s0, zero, 2
  SW s0, 1148(sp)
  ADDI s0, zero, 4
  SW s0, 1152(sp)
  ADDI s0, zero, 3
  SW s0, 1156(sp)
  ADDI s0, zero, 6
  SW s0, 1160(sp)
  ADDI s0, zero, 8
  SW s0, 1164(sp)
  ADDI s0, zero, 0
  SW s0, 1168(sp)
  ADDI s0, zero, 1
  SW s0, 1172(sp)
  ADDI s0, zero, 5
  SW s0, 1176(sp)
  ADDI t4, zero, 16
  SW t4, 20(sp)
  # implict jump to bb6
bb6:
  LW t4, 20(sp)
  ADD s1, t4, zero
  ADDI s2, zero, 1
  SUBW t4, s1, s2
  SW t4, 16(sp)
  LW t4, 16(sp)
  SLLIW s2, t4, 2
  ADDI t5, sp, 1064
  ADD s2, t5, s2
  ADDI s3, zero, 0
  SW s3, 0(s2)
  LW t4, 16(sp)
  BNE t4, zero, bb36
  # implict jump to bb7
bb7:
  ADDI s2, zero, 8
  SW s2, 1064(sp)
  ADDI s2, zero, 8
  # implict jump to bb8
bb8:
  SW s2, 1068(sp)
  ADDI t4, zero, 2
  SW t4, 12(sp)
  # implict jump to bb9
bb9:
  LW t4, 12(sp)
  ADD s3, t4, zero
  SLLIW s4, s3, 2
  ADDI t5, sp, 1064
  ADD s5, t5, s4
  ADDI s6, zero, 2
  SUBW s6, s3, s6
  SLLIW s6, s6, 2
  ADDI t5, sp, 1064
  ADD s6, t5, s6
  LW s6, 0(s6)
  ADDI t5, sp, 1184
  ADD s4, t5, s4
  LW s4, 0(s4)
  ADDW s4, s6, s4
  ADDI s6, zero, 1
  SUBW s6, s3, s6
  SLLIW s6, s6, 2
  ADDI t5, sp, 1064
  ADD s6, t5, s6
  LW s6, 0(s6)
  XOR s7, s4, s6
  SLTIU s7, s7, 1
  BNE s7, zero, bb35
  # implict jump to bb10
bb10:
  BLT s6, s4, bb34
  # implict jump to bb11
bb11:
  # implict jump to bb12
bb12:
  SW s6, 0(s5)
  ADDIW t4, s3, 1
  SW t4, 8(sp)
  LW t4, 8(sp)
  SLTI s4, t4, 15
  BNE s4, zero, bb33
  # implict jump to bb13
bb13:
  LW s4, 1120(sp)
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI t4, zero, 256
  SW t4, 4(sp)
  # implict jump to bb14
bb14:
  LW t4, 4(sp)
  ADD s5, t4, zero
  ADDI s6, zero, 1
  SUBW t4, s5, s6
  SW t4, 0(sp)
  LW t4, 0(sp)
  SLLIW s6, t4, 2
  ADDI t4, sp, 40
  ADD s6, t4, s6
  SW zero, 0(s6)
  LW t4, 0(sp)
  BNE t4, zero, bb32
  # implict jump to bb15
bb15:
  ADDI s6, zero, 15
  SLTI s6, s6, 1
  XORI s6, s6, 1
  BNE s6, zero, bb17
  # implict jump to bb16
bb16:
  LW s2, 1052(sp)
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s9, 1248(sp)
  LD s10, 1256(sp)
  LD s11, 1264(sp)
  LD s1, 1272(sp)
  LD s2, 1280(sp)
  LD s3, 1288(sp)
  LD s4, 1296(sp)
  LD s5, 1304(sp)
  LD s6, 1312(sp)
  LD s7, 1320(sp)
  LD s8, 1328(sp)
  ADDI sp, sp, 1344
  JALR zero, 0(ra)
bb17:
  ADDI s6, zero, 13
  SLTI s6, s6, 1
  XORI s6, s6, 1
  ADDI s7, zero, 1
  # implict jump to bb18
bb18:
  ADD s8, s7, zero
  BNE s6, zero, bb21
  # implict jump to bb19
bb19:
  ADDIW s1, s8, 1
  ADDI s2, zero, 15
  SLT s2, s2, s1
  XORI s2, s2, 1
  BNE s2, zero, bb20
  JAL zero, bb16
bb20:
  ADD s7, s1, zero
  JAL zero, bb18
bb21:
  ADDI s9, zero, 1
  SUBW s9, s8, s9
  SLLIW s10, s9, 2
  ADDI t5, sp, 1184
  ADD s10, t5, s10
  LW s10, 0(s10)
  ADDI s11, zero, 1
  # implict jump to bb22
bb22:
  ADD s0, s11, zero
  ADDI s1, zero, 1
  SUBW s1, s0, s1
  SLLIW s1, s1, 2
  ADDI t5, sp, 1128
  ADD s2, t5, s1
  LW s2, 0(s2)
  XOR s2, s10, s2
  SLTIU s2, s2, 1
  BNE s2, zero, bb31
  # implict jump to bb23
bb23:
  SLLIW s2, s8, 6
  ADDI t5, sp, 40
  ADD s2, t5, s2
  SLLIW s3, s0, 2
  ADD s4, s2, s3
  SLLIW s5, s9, 6
  ADDI t5, sp, 40
  ADD s5, t5, s5
  ADD s3, s5, s3
  LW s3, 0(s3)
  ADD s2, s2, s1
  LW s2, 0(s2)
  XOR s5, s3, s2
  SLTIU s5, s5, 1
  BNE s5, zero, bb30
  # implict jump to bb24
bb24:
  BLT s2, s3, bb29
  # implict jump to bb25
bb25:
  # implict jump to bb26
bb26:
  SW s2, 0(s4)
  # implict jump to bb27
bb27:
  ADDIW s0, s0, 1
  ADDI s1, zero, 13
  SLT s1, s1, s0
  XORI s1, s1, 1
  BNE s1, zero, bb28
  JAL zero, bb19
bb28:
  ADD s11, s0, zero
  JAL zero, bb22
bb29:
  ADD s2, s3, zero
  JAL zero, bb26
bb30:
  ADD s2, s3, zero
  JAL zero, bb26
bb31:
  SLLIW s2, s8, 6
  ADDI t5, sp, 40
  ADD s2, t5, s2
  SLLIW s3, s0, 2
  ADD s2, s2, s3
  SLLIW s3, s9, 6
  ADDI t5, sp, 40
  ADD s3, t5, s3
  ADD s1, s3, s1
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  SW s1, 0(s2)
  JAL zero, bb27
bb32:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb14
bb33:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  JAL zero, bb9
bb34:
  ADD s6, s4, zero
  JAL zero, bb12
bb35:
  ADD s6, s4, zero
  JAL zero, bb12
bb36:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb6
max_sum_nonadjacent:
  ADDI sp, sp, -144
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
  ADD s0, a0, zero
  ADDI s1, zero, 16
  # implict jump to bb38
bb38:
  ADD s2, s1, zero
  ADDI s3, zero, 1
  SUBW s2, s2, s3
  SLLIW s3, s2, 2
  ADDI t5, sp, 0
  ADD s3, t5, s3
  SW zero, 0(s3)
  BNE s2, zero, bb54
  # implict jump to bb39
bb39:
  LW s3, 0(s0)
  SW s3, 0(sp)
  LW s4, 4(s0)
  XOR s5, s3, s4
  SLTIU s5, s5, 1
  BNE s5, zero, bb53
  # implict jump to bb40
bb40:
  BLT s4, s3, bb52
  # implict jump to bb41
bb41:
  # implict jump to bb42
bb42:
  SW s4, 4(sp)
  ADDI s3, zero, 2
  BLT s3, a1, bb44
  # implict jump to bb43
bb43:
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
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb44:
  ADDI s3, zero, 2
  # implict jump to bb45
bb45:
  ADD s4, s3, zero
  SLLIW s5, s4, 2
  ADDI t5, sp, 0
  ADD s6, t5, s5
  ADDI s7, zero, 2
  SUBW s7, s4, s7
  SLLIW s7, s7, 2
  ADDI t5, sp, 0
  ADD s7, t5, s7
  LW s7, 0(s7)
  ADD s5, s0, s5
  LW s5, 0(s5)
  ADDW s5, s7, s5
  ADDI s7, zero, 1
  SUBW s7, s4, s7
  SLLIW s7, s7, 2
  ADDI t5, sp, 0
  ADD s7, t5, s7
  LW s7, 0(s7)
  XOR s8, s5, s7
  SLTIU s8, s8, 1
  BNE s8, zero, bb51
  # implict jump to bb46
bb46:
  BLT s7, s5, bb50
  # implict jump to bb47
bb47:
  # implict jump to bb48
bb48:
  SW s7, 0(s6)
  ADDIW s4, s4, 1
  BLT s4, a1, bb49
  JAL zero, bb43
bb49:
  ADD s3, s4, zero
  JAL zero, bb45
bb50:
  ADD s7, s5, zero
  JAL zero, bb48
bb51:
  ADD s7, s5, zero
  JAL zero, bb48
bb52:
  ADD s4, s3, zero
  JAL zero, bb42
bb53:
  ADD s4, s3, zero
  JAL zero, bb42
bb54:
  ADD s1, s2, zero
  JAL zero, bb38
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
  ADD s0, a0, zero
  ADDI s1, zero, 256
  # implict jump to bb56
bb56:
  ADD s2, s1, zero
  ADDI s3, zero, 1
  SUBW s2, s2, s3
  SLLIW s3, s2, 2
  ADDI t5, sp, 0
  ADD s3, t5, s3
  SW zero, 0(s3)
  BNE s2, zero, bb74
  # implict jump to bb57
bb57:
  SLTI s3, a1, 1
  XORI s3, s3, 1
  BNE s3, zero, bb59
  # implict jump to bb58
bb58:
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
bb59:
  SLTI s3, a3, 1
  XORI s3, s3, 1
  ADDI s4, zero, 1
  # implict jump to bb60
bb60:
  ADD s5, s4, zero
  BNE s3, zero, bb63
  # implict jump to bb61
bb61:
  ADDIW s10, s5, 1
  SLT s11, a1, s10
  XORI s11, s11, 1
  BNE s11, zero, bb62
  JAL zero, bb58
bb62:
  ADD s4, s10, zero
  JAL zero, bb60
bb63:
  ADDI s6, zero, 1
  SUBW s6, s5, s6
  SLLIW s7, s6, 2
  ADD s7, s0, s7
  LW s7, 0(s7)
  ADDI s8, zero, 1
  # implict jump to bb64
bb64:
  ADD s9, s8, zero
  ADDI s10, zero, 1
  SUBW s10, s9, s10
  SLLIW s10, s10, 2
  ADD s11, a2, s10
  LW s11, 0(s11)
  XOR s11, s7, s11
  SLTIU s11, s11, 1
  BNE s11, zero, bb73
  # implict jump to bb65
bb65:
  SLLIW s11, s5, 6
  ADDI t0, sp, 0
  ADD s11, t0, s11
  SLLIW t0, s9, 2
  ADD t1, s11, t0
  SLLIW t2, s6, 6
  ADDI t5, sp, 0
  ADD t2, t5, t2
  ADD t0, t2, t0
  LW t0, 0(t0)
  ADD s11, s11, s10
  LW s11, 0(s11)
  XOR t2, t0, s11
  SLTIU t2, t2, 1
  BNE t2, zero, bb72
  # implict jump to bb66
bb66:
  BLT s11, t0, bb71
  # implict jump to bb67
bb67:
  # implict jump to bb68
bb68:
  SW s11, 0(t1)
  # implict jump to bb69
bb69:
  ADDIW s9, s9, 1
  SLT s10, a3, s9
  XORI s10, s10, 1
  BNE s10, zero, bb70
  JAL zero, bb61
bb70:
  ADD s8, s9, zero
  JAL zero, bb64
bb71:
  ADD s11, t0, zero
  JAL zero, bb68
bb72:
  ADD s11, t0, zero
  JAL zero, bb68
bb73:
  SLLIW s11, s5, 6
  ADDI t0, sp, 0
  ADD s11, t0, s11
  SLLIW t0, s9, 2
  ADD s11, s11, t0
  SLLIW t0, s6, 6
  ADDI t5, sp, 0
  ADD t0, t5, t0
  ADD s10, t0, s10
  LW s10, 0(s10)
  ADDIW s10, s10, 1
  SW s10, 0(s11)
  JAL zero, bb69
bb74:
  ADD s1, s2, zero
  JAL zero, bb56
