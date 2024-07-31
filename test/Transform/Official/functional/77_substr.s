.global main
.section .bss
.section .data
.section .text
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
  # implict jump to bb1
bb1:
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
  BNE t4, zero, bb31
  # implict jump to bb2
bb2:
  ADDI s2, zero, 8
  SW s2, 1064(sp)
  ADDI s2, zero, 8
  # implict jump to bb3
bb3:
  SW s2, 1068(sp)
  ADDI t4, zero, 2
  SW t4, 12(sp)
  # implict jump to bb4
bb4:
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
  BNE s7, zero, bb30
  # implict jump to bb5
bb5:
  BLT s6, s4, bb29
  # implict jump to bb6
bb6:
  # implict jump to bb7
bb7:
  SW s6, 0(s5)
  ADDIW t4, s3, 1
  SW t4, 8(sp)
  LW t4, 8(sp)
  SLTI s4, t4, 15
  BNE s4, zero, bb28
  # implict jump to bb8
bb8:
  LW s4, 1120(sp)
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI t4, zero, 256
  SW t4, 4(sp)
  # implict jump to bb9
bb9:
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
  BNE t4, zero, bb27
  # implict jump to bb10
bb10:
  ADDI s6, zero, 15
  SLTI s6, s6, 1
  XORI s6, s6, 1
  BNE s6, zero, bb12
  # implict jump to bb11
bb11:
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
bb12:
  ADDI s6, zero, 13
  SLTI s6, s6, 1
  XORI s6, s6, 1
  ADDI s7, zero, 1
  # implict jump to bb13
bb13:
  ADD s8, s7, zero
  BNE s6, zero, bb16
  # implict jump to bb14
bb14:
  ADDIW s1, s8, 1
  ADDI s2, zero, 15
  SLT s2, s2, s1
  XORI s2, s2, 1
  BNE s2, zero, bb15
  JAL zero, bb11
bb15:
  ADD s7, s1, zero
  JAL zero, bb13
bb16:
  ADDI s9, zero, 1
  SUBW s9, s8, s9
  SLLIW s10, s9, 2
  ADDI t5, sp, 1184
  ADD s10, t5, s10
  LW s10, 0(s10)
  ADDI s11, zero, 1
  # implict jump to bb17
bb17:
  ADD s0, s11, zero
  ADDI s1, zero, 1
  SUBW s1, s0, s1
  SLLIW s1, s1, 2
  ADDI t5, sp, 1128
  ADD s2, t5, s1
  LW s2, 0(s2)
  XOR s2, s10, s2
  SLTIU s2, s2, 1
  BNE s2, zero, bb26
  # implict jump to bb18
bb18:
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
  BNE s5, zero, bb25
  # implict jump to bb19
bb19:
  BLT s2, s3, bb24
  # implict jump to bb20
bb20:
  # implict jump to bb21
bb21:
  SW s2, 0(s4)
  # implict jump to bb22
bb22:
  ADDIW s0, s0, 1
  ADDI s1, zero, 13
  SLT s1, s1, s0
  XORI s1, s1, 1
  BNE s1, zero, bb23
  JAL zero, bb14
bb23:
  ADD s11, s0, zero
  JAL zero, bb17
bb24:
  ADD s2, s3, zero
  JAL zero, bb21
bb25:
  ADD s2, s3, zero
  JAL zero, bb21
bb26:
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
  JAL zero, bb22
bb27:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb9
bb28:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  JAL zero, bb4
bb29:
  ADD s6, s4, zero
  JAL zero, bb7
bb30:
  ADD s6, s4, zero
  JAL zero, bb7
bb31:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb1
