.global MAX
.global main
.global max_sum_nonadjacent
.global longest_common_subseq
.section .bss
.section .data
.section .text
MAX:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  XOR s2, s0, s1
  SLTIU s3, s2, 1
  BNE s3, zero, bb1
  JAL zero, bb2
bb1:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb2:
  SLT s2, s1, s0
  BNE s2, zero, bb3
  JAL zero, bb4
bb3:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb4:
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -1328
  SD s11, 1224(sp)
  SD ra, 1232(sp)
  SD s0, 1240(sp)
  SD s5, 1248(sp)
  SD s10, 1256(sp)
  SD s1, 1264(sp)
  SD s6, 1272(sp)
  SD s2, 1280(sp)
  SD s3, 1288(sp)
  SD s4, 1296(sp)
  SD s7, 1304(sp)
  SD s8, 1312(sp)
  SD s9, 1320(sp)
  ADDI s0, zero, 8
  SW s0, 1144(sp)
  ADDI s0, sp, 1148
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s1, sp, 1152
  ADDI s2, zero, 4
  SW s2, 0(s1)
  ADDI s1, sp, 1156
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, sp, 1160
  ADDI s2, zero, 2
  SW s2, 0(s1)
  ADDI s1, sp, 1164
  ADDI s2, zero, 7
  SW s2, 0(s1)
  ADDI s1, sp, 1168
  ADDI s2, zero, 0
  SW s2, 0(s1)
  ADDI s1, sp, 1172
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, sp, 1176
  ADDI s2, zero, 9
  SW s2, 0(s1)
  ADDI s1, sp, 1180
  ADDI s2, zero, 3
  SW s2, 0(s1)
  ADDI s1, sp, 1184
  ADDI s2, zero, 4
  SW s2, 0(s1)
  ADDI s1, sp, 1188
  ADDI s2, zero, 8
  SW s2, 0(s1)
  ADDI s1, sp, 1192
  ADDI s2, zero, 3
  SW s2, 0(s1)
  ADDI s1, sp, 1196
  ADDI s2, zero, 7
  SW s2, 0(s1)
  ADDI s1, sp, 1200
  ADDI s2, zero, 0
  SW s2, 0(s1)
  ADDI s1, zero, 3
  SW s1, 1088(sp)
  ADDI s1, sp, 1092
  ADDI s2, zero, 9
  SW s2, 0(s1)
  ADDI s1, sp, 1096
  ADDI s2, zero, 7
  SW s2, 0(s1)
  ADDI s1, sp, 1100
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, sp, 1104
  ADDI s2, zero, 4
  SW s2, 0(s1)
  ADDI s1, sp, 1108
  ADDI s2, zero, 2
  SW s2, 0(s1)
  ADDI s1, sp, 1112
  ADDI s2, zero, 4
  SW s2, 0(s1)
  ADDI s1, sp, 1116
  ADDI s2, zero, 3
  SW s2, 0(s1)
  ADDI s1, sp, 1120
  ADDI s2, zero, 6
  SW s2, 0(s1)
  ADDI s1, sp, 1124
  ADDI s2, zero, 8
  SW s2, 0(s1)
  ADDI s1, sp, 1128
  ADDI s2, zero, 0
  SW s2, 0(s1)
  ADDI s1, sp, 1132
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, sp, 1136
  ADDI s2, zero, 5
  SW s2, 0(s1)
  JAL zero, bb6
bb6:
  ADDI s1, zero, 16
  JAL zero, bb7
bb7:
  ADD s2, s1, zero
  XOR s3, s2, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  ADDI s2, zero, 4
  MULW s3, s4, s2
  ADDI t5, sp, 1024
  ADD s2, t5, s3
  SW zero, 0(s2)
  ADD s1, s4, zero
  JAL zero, bb7
bb9:
  LW s1, 1144(sp)
  SW s1, 1024(sp)
  ADDI t4, sp, 1028
  SD t4, 1208(sp)
  LW s2, 1144(sp)
  LW s3, 0(s0)
  XOR s0, s2, s3
  SLTIU s4, s0, 1
  BNE s4, zero, bb15
  JAL zero, bb16
bb10:
  LW t4, 1216(sp)
  ADD s4, t4, zero
  LD t4, 1208(sp)
  SW s4, 0(t4)
  ADDI s4, zero, 2
  JAL zero, bb11
bb11:
  ADD s5, s4, zero
  SLTI s6, s5, 15
  BNE s6, zero, bb12
  JAL zero, bb14
bb12:
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADDI t6, sp, 1024
  ADD s6, t6, s7
  ADDI s8, zero, 2
  SUBW s9, s5, s8
  ADDI s8, zero, 4
  MULW s10, s9, s8
  ADDI t5, sp, 1024
  ADD s8, t5, s10
  LW s9, 0(s8)
  ADDI t6, sp, 1144
  ADD s8, t6, s7
  LW s7, 0(s8)
  ADDW s8, s9, s7
  ADDI s7, zero, 1
  SUBW s9, s5, s7
  ADDI s7, zero, 4
  MULW s10, s9, s7
  ADDI t5, sp, 1024
  ADD s7, t5, s10
  LW s9, 0(s7)
  XOR s7, s8, s9
  SLTIU s10, s7, 1
  BNE s10, zero, bb19
  JAL zero, bb20
bb13:
  ADD s10, s7, zero
  SW s10, 0(s6)
  ADDIW s10, s5, 1
  ADD s4, s10, zero
  JAL zero, bb11
bb14:
  ADDI s4, sp, 1080
  LW s5, 0(s4)
  ADD a0, s5, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb23
bb15:
  ADD t4, s2, zero
  SW t4, 1216(sp)
  JAL zero, bb10
bb16:
  SLT s0, s3, s2
  BNE s0, zero, bb17
  JAL zero, bb18
bb17:
  ADD t4, s2, zero
  SW t4, 1216(sp)
  JAL zero, bb10
bb18:
  ADD t4, s3, zero
  SW t4, 1216(sp)
  JAL zero, bb10
bb19:
  ADD s7, s8, zero
  JAL zero, bb13
bb20:
  SLT s4, s9, s8
  BNE s4, zero, bb21
  JAL zero, bb22
bb21:
  ADD s7, s8, zero
  JAL zero, bb13
bb22:
  ADD s7, s9, zero
  JAL zero, bb13
bb23:
  ADDI s4, zero, 256
  JAL zero, bb24
bb24:
  ADD s5, s4, zero
  XOR s6, s5, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb25
  JAL zero, bb26
bb25:
  ADDI s6, zero, 1
  SUBW s7, s5, s6
  ADDI s5, zero, 4
  MULW s6, s7, s5
  ADDI t6, sp, 0
  ADD s5, t6, s6
  SW zero, 0(s5)
  ADD s4, s7, zero
  JAL zero, bb24
bb26:
  ADDI s4, zero, 1
  JAL zero, bb27
bb27:
  ADD s5, s4, zero
  ADDI s6, zero, 15
  SLT s7, s6, s5
  XORI s6, s7, 1
  BNE s6, zero, bb28
  JAL zero, bb29
bb28:
  ADDI s6, zero, 1
  JAL zero, bb30
bb29:
  ADDI s0, sp, 1012
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD s11, 1224(sp)
  LD ra, 1232(sp)
  LD s0, 1240(sp)
  LD s5, 1248(sp)
  LD s10, 1256(sp)
  LD s1, 1264(sp)
  LD s6, 1272(sp)
  LD s2, 1280(sp)
  LD s3, 1288(sp)
  LD s4, 1296(sp)
  LD s7, 1304(sp)
  LD s8, 1312(sp)
  LD s9, 1320(sp)
  ADDI sp, sp, 1328
  JALR zero, 0(ra)
bb30:
  ADD s7, s6, zero
  ADDI s8, zero, 13
  SLT s9, s8, s7
  XORI s8, s9, 1
  BNE s8, zero, bb31
  JAL zero, bb32
bb31:
  ADDI s8, zero, 1
  SUBW s9, s5, s8
  ADDI s8, zero, 4
  MULW s10, s9, s8
  ADDI t5, sp, 1144
  ADD s8, t5, s10
  LW s10, 0(s8)
  ADDI s8, zero, 1
  SUBW s11, s7, s8
  ADDI s8, zero, 4
  MULW s1, s11, s8
  ADDI t6, sp, 1088
  ADD s8, t6, s1
  LW s11, 0(s8)
  XOR s8, s10, s11
  SLTIU s10, s8, 1
  BNE s10, zero, bb33
  JAL zero, bb35
bb32:
  ADDIW s0, s5, 1
  ADD s4, s0, zero
  JAL zero, bb27
bb33:
  ADDI s8, zero, 64
  MULW s10, s5, s8
  ADDI t5, sp, 0
  ADD s8, t5, s10
  ADDI s10, zero, 4
  MULW s11, s7, s10
  ADD s10, s8, s11
  ADDI s8, zero, 64
  MULW s11, s9, s8
  ADDI t6, sp, 0
  ADD s8, t6, s11
  ADD s11, s8, s1
  LW s8, 0(s11)
  ADDIW s11, s8, 1
  SW s11, 0(s10)
  JAL zero, bb34
bb34:
  ADDIW s8, s7, 1
  ADD s6, s8, zero
  JAL zero, bb30
bb35:
  ADDI s6, zero, 64
  MULW s8, s5, s6
  ADDI t5, sp, 0
  ADD s6, t5, s8
  ADDI s8, zero, 4
  MULW s10, s7, s8
  ADD s8, s6, s10
  ADDI s11, zero, 64
  MULW s0, s9, s11
  ADDI t6, sp, 0
  ADD s9, t6, s0
  ADD s0, s9, s10
  LW s9, 0(s0)
  ADD s0, s6, s1
  LW s1, 0(s0)
  XOR s0, s9, s1
  SLTIU s6, s0, 1
  BNE s6, zero, bb37
  JAL zero, bb38
bb36:
  ADD s6, s0, zero
  SW s6, 0(s8)
  JAL zero, bb34
bb37:
  ADD s0, s9, zero
  JAL zero, bb36
bb38:
  SLT s6, s1, s9
  BNE s6, zero, bb39
  JAL zero, bb40
bb39:
  ADD s0, s9, zero
  JAL zero, bb36
bb40:
  ADD s0, s1, zero
  JAL zero, bb36
max_sum_nonadjacent:
  ADDI sp, sp, -176
  SD ra, 64(sp)
  SD s11, 72(sp)
  SD s10, 80(sp)
  SD s0, 88(sp)
  SD s5, 96(sp)
  SD s7, 104(sp)
  SD s1, 112(sp)
  SD s6, 120(sp)
  SD s8, 128(sp)
  SD s2, 136(sp)
  SD s3, 144(sp)
  SD s4, 152(sp)
  SD s9, 160(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDI s2, zero, 16
  JAL zero, bb42
bb42:
  ADD s3, s2, zero
  XOR s4, s3, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb43
  JAL zero, bb44
bb43:
  ADDI s4, zero, 1
  SUBW s5, s3, s4
  ADDI s3, zero, 4
  MULW s4, s5, s3
  ADDI t5, sp, 0
  ADD s3, t5, s4
  SW zero, 0(s3)
  ADD s2, s5, zero
  JAL zero, bb42
bb44:
  LW s2, 0(s0)
  SW s2, 0(sp)
  ADDI s2, sp, 4
  LW s3, 0(s0)
  ADDI s4, s0, 4
  LW s5, 0(s4)
  XOR s4, s3, s5
  SLTIU s6, s4, 1
  BNE s6, zero, bb50
  JAL zero, bb51
bb45:
  ADD s6, s4, zero
  SW s6, 0(s2)
  ADDI s6, zero, 2
  JAL zero, bb46
bb46:
  ADD s7, s6, zero
  SLT s8, s7, s1
  BNE s8, zero, bb47
  JAL zero, bb49
bb47:
  ADDI s8, zero, 4
  MULW s9, s7, s8
  ADDI t6, sp, 0
  ADD s8, t6, s9
  ADDI s10, zero, 2
  SUBW s11, s7, s10
  ADDI s10, zero, 4
  MULW t0, s11, s10
  ADDI t5, sp, 0
  ADD s10, t5, t0
  LW s11, 0(s10)
  ADD s10, s0, s9
  LW s9, 0(s10)
  ADDW s10, s11, s9
  ADDI s9, zero, 1
  SUBW s11, s7, s9
  ADDI s9, zero, 4
  MULW t0, s11, s9
  ADDI t6, sp, 0
  ADD s9, t6, t0
  LW s11, 0(s9)
  XOR s9, s10, s11
  SLTIU t0, s9, 1
  BNE t0, zero, bb54
  JAL zero, bb55
bb48:
  ADD t0, s9, zero
  SW t0, 0(s8)
  ADDIW t0, s7, 1
  ADD s6, t0, zero
  JAL zero, bb46
bb49:
  ADDI s6, zero, 1
  SUBW s7, s1, s6
  ADDI s6, zero, 4
  MULW s8, s7, s6
  ADDI t5, sp, 0
  ADD s6, t5, s8
  LW s7, 0(s6)
  ADD a0, s7, zero
  LD ra, 64(sp)
  LD s11, 72(sp)
  LD s10, 80(sp)
  LD s0, 88(sp)
  LD s5, 96(sp)
  LD s7, 104(sp)
  LD s1, 112(sp)
  LD s6, 120(sp)
  LD s8, 128(sp)
  LD s2, 136(sp)
  LD s3, 144(sp)
  LD s4, 152(sp)
  LD s9, 160(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb50:
  ADD s4, s3, zero
  JAL zero, bb45
bb51:
  SLT s6, s5, s3
  BNE s6, zero, bb52
  JAL zero, bb53
bb52:
  ADD s4, s3, zero
  JAL zero, bb45
bb53:
  ADD s4, s5, zero
  JAL zero, bb45
bb54:
  ADD s9, s10, zero
  JAL zero, bb48
bb55:
  SLT s6, s11, s10
  BNE s6, zero, bb56
  JAL zero, bb57
bb56:
  ADD s9, s10, zero
  JAL zero, bb48
bb57:
  ADD s9, s11, zero
  JAL zero, bb48
longest_common_subseq:
  ADDI sp, sp, -1136
  SD s11, 1024(sp)
  SD s10, 1032(sp)
  SD s9, 1040(sp)
  SD s8, 1048(sp)
  SD ra, 1056(sp)
  SD s0, 1064(sp)
  SD s5, 1072(sp)
  SD s7, 1080(sp)
  SD s1, 1088(sp)
  SD s6, 1096(sp)
  SD s2, 1104(sp)
  SD s3, 1112(sp)
  SD s4, 1120(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADDI s4, zero, 256
  JAL zero, bb59
bb59:
  ADD s5, s4, zero
  XOR s6, s5, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb60
  JAL zero, bb61
bb60:
  ADDI s6, zero, 1
  SUBW s7, s5, s6
  ADDI s5, zero, 4
  MULW s6, s7, s5
  ADDI t5, sp, 0
  ADD s5, t5, s6
  SW zero, 0(s5)
  ADD s4, s7, zero
  JAL zero, bb59
bb61:
  ADDI s4, zero, 1
  JAL zero, bb62
bb62:
  ADD s5, s4, zero
  SLT s6, s1, s5
  XORI s7, s6, 1
  BNE s7, zero, bb63
  JAL zero, bb64
bb63:
  ADDI s6, zero, 1
  JAL zero, bb65
bb64:
  ADDI s0, zero, 64
  MULW s2, s1, s0
  ADDI t6, sp, 0
  ADD s0, t6, s2
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  LD s11, 1024(sp)
  LD s10, 1032(sp)
  LD s9, 1040(sp)
  LD s8, 1048(sp)
  LD ra, 1056(sp)
  LD s0, 1064(sp)
  LD s5, 1072(sp)
  LD s7, 1080(sp)
  LD s1, 1088(sp)
  LD s6, 1096(sp)
  LD s2, 1104(sp)
  LD s3, 1112(sp)
  LD s4, 1120(sp)
  ADDI sp, sp, 1136
  JALR zero, 0(ra)
bb65:
  ADD s7, s6, zero
  SLT s8, s3, s7
  XORI s9, s8, 1
  BNE s9, zero, bb66
  JAL zero, bb67
bb66:
  ADDI s8, zero, 1
  SUBW s9, s5, s8
  ADDI s8, zero, 4
  MULW s10, s9, s8
  ADD s8, s0, s10
  LW s10, 0(s8)
  ADDI s8, zero, 1
  SUBW s11, s7, s8
  ADDI s8, zero, 4
  MULW t0, s11, s8
  ADD s8, s2, t0
  LW s11, 0(s8)
  XOR s8, s10, s11
  SLTIU s10, s8, 1
  BNE s10, zero, bb68
  JAL zero, bb70
bb67:
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb62
bb68:
  ADDI s8, zero, 64
  MULW s10, s5, s8
  ADDI t5, sp, 0
  ADD s8, t5, s10
  ADDI s10, zero, 4
  MULW s11, s7, s10
  ADD s10, s8, s11
  ADDI s8, zero, 64
  MULW s11, s9, s8
  ADDI t6, sp, 0
  ADD s8, t6, s11
  ADD s11, s8, t0
  LW s8, 0(s11)
  ADDIW s11, s8, 1
  SW s11, 0(s10)
  JAL zero, bb69
bb69:
  ADDIW s8, s7, 1
  ADD s6, s8, zero
  JAL zero, bb65
bb70:
  ADDI s6, zero, 64
  MULW s8, s5, s6
  ADDI t5, sp, 0
  ADD s6, t5, s8
  ADDI s8, zero, 4
  MULW s10, s7, s8
  ADD s8, s6, s10
  ADDI s11, zero, 64
  MULW t1, s9, s11
  ADDI t6, sp, 0
  ADD s9, t6, t1
  ADD s11, s9, s10
  LW s9, 0(s11)
  ADD s10, s6, t0
  LW s6, 0(s10)
  XOR s10, s9, s6
  SLTIU s11, s10, 1
  BNE s11, zero, bb72
  JAL zero, bb73
bb71:
  ADD s11, s10, zero
  SW s11, 0(s8)
  JAL zero, bb69
bb72:
  ADD s10, s9, zero
  JAL zero, bb71
bb73:
  SLT s11, s6, s9
  BNE s11, zero, bb74
  JAL zero, bb75
bb74:
  ADD s10, s9, zero
  JAL zero, bb71
bb75:
  ADD s10, s6, zero
  JAL zero, bb71
