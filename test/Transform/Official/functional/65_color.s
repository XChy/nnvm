.global dfs
.global equal
.global main
.section .bss
cns:
.space 80
list:
.space 800
dp:
.space 52907904


.section .data



mod:
.word 0x3b9aca07
maxn:
.word 0x00000012
.section .text
dfs:
  ADDI sp, sp, -112
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD ra, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  SD s5, 104(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  LUI s6, 718
  ADDIW s6, s6, -1600
  MULW s6, s0, s6
  LA s7, dp
  ADD s6, s7, s6
  LUI s7, 40
  ADDIW s7, s7, -544
  MULW s7, s1, s7
  ADD s6, s6, s7
  LUI s7, 2
  ADDIW s7, s7, 880
  MULW s7, s2, s7
  ADD s6, s6, s7
  ADDI s7, zero, 504
  MULW s7, s3, s7
  ADD s6, s6, s7
  ADDI s7, zero, 28
  MULW s7, s4, s7
  ADD s6, s6, s7
  SLLIW s7, s5, 2
  ADD s6, s6, s7
  LW t4, 0(s6)
  SW t4, 0(sp)
  LW t4, 0(sp)
  XORI s8, t4, -1
  BNE s8, zero, bb31
  # implict jump to bb1
bb1:
  ADDW s8, s0, s1
  ADDW s8, s8, s2
  ADDW s8, s8, s3
  ADDW s8, s8, s4
  SLTIU s8, s8, 1
  BNE s8, zero, bb30
  # implict jump to bb2
bb2:
  BNE s0, zero, bb26
  # implict jump to bb3
bb3:
  ADD s8, zero, zero
  # implict jump to bb4
bb4:
  BNE s1, zero, bb22
  # implict jump to bb5
bb5:
  ADD s9, s8, zero
  # implict jump to bb6
bb6:
  BNE s2, zero, bb18
  # implict jump to bb7
bb7:
  ADD s7, s9, zero
  # implict jump to bb8
bb8:
  BNE s3, zero, bb14
  # implict jump to bb9
bb9:
  ADD s8, s7, zero
  # implict jump to bb10
bb10:
  BNE s4, zero, bb13
  # implict jump to bb11
bb11:
  ADD s5, s8, zero
  # implict jump to bb12
bb12:
  LUI s0, 244141
  ADDIW s0, s0, -1529
  REMW s0, s5, s0
  SW s0, 0(s6)
  ADD a0, s0, zero
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD ra, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  LD s5, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb13:
  ADDIW s3, s3, 1
  ADDI s7, zero, 1
  SUBW s7, s4, s7
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  ADD a4, s7, zero
  ADDI a5, zero, 5
  CALL dfs
  ADD s0, a0, zero
  MULW s0, s4, s0
  ADDW s0, s8, s0
  LUI s1, 244141
  ADDIW s1, s1, -1529
  REMW s0, s0, s1
  ADD s5, s0, zero
  JAL zero, bb12
bb14:
  XORI s5, s5, 5
  SLTIU s5, s5, 1
  BNE s5, zero, bb17
  # implict jump to bb15
bb15:
  ADD s5, zero, zero
  # implict jump to bb16
bb16:
  SUBW s5, s3, s5
  ADDIW s9, s2, 1
  ADDI s10, zero, 1
  SUBW s10, s3, s10
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s9, zero
  ADD a3, s10, zero
  ADD a4, s4, zero
  ADDI a5, zero, 4
  CALL dfs
  ADD s9, a0, zero
  MULW s5, s5, s9
  ADDW s5, s7, s5
  LUI s7, 244141
  ADDIW s7, s7, -1529
  REMW s5, s5, s7
  ADD s8, s5, zero
  JAL zero, bb10
bb17:
  ADDI s5, zero, 1
  JAL zero, bb16
bb18:
  XORI s8, s5, 4
  SLTIU s8, s8, 1
  BNE s8, zero, bb21
  # implict jump to bb19
bb19:
  ADD s8, zero, zero
  # implict jump to bb20
bb20:
  SUBW s8, s2, s8
  ADDIW s10, s1, 1
  ADDI s11, zero, 1
  SUBW s11, s2, s11
  ADD a0, s0, zero
  ADD a1, s10, zero
  ADD a2, s11, zero
  ADD a3, s3, zero
  ADD a4, s4, zero
  ADDI a5, zero, 3
  CALL dfs
  ADD s10, a0, zero
  MULW s8, s8, s10
  ADDW s8, s9, s8
  LUI s9, 244141
  ADDIW s9, s9, -1529
  REMW s8, s8, s9
  ADD s7, s8, zero
  JAL zero, bb8
bb21:
  ADDI s8, zero, 1
  JAL zero, bb20
bb22:
  XORI s10, s5, 3
  SLTIU s10, s10, 1
  BNE s10, zero, bb25
  # implict jump to bb23
bb23:
  ADD s10, zero, zero
  # implict jump to bb24
bb24:
  SUBW s10, s1, s10
  ADDIW s11, s0, 1
  ADDI s7, zero, 1
  SUBW s7, s1, s7
  ADD a0, s11, zero
  ADD a1, s7, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  ADD a4, s4, zero
  ADDI a5, zero, 2
  CALL dfs
  ADD s7, a0, zero
  MULW s7, s10, s7
  ADDW s7, s8, s7
  LUI s8, 244141
  ADDIW s8, s8, -1529
  REMW s7, s7, s8
  ADD s9, s7, zero
  JAL zero, bb6
bb25:
  ADDI s10, zero, 1
  JAL zero, bb24
bb26:
  XORI s9, s5, 2
  SLTIU s9, s9, 1
  BNE s9, zero, bb29
  # implict jump to bb27
bb27:
  ADD s9, zero, zero
  # implict jump to bb28
bb28:
  SUBW s9, s0, s9
  ADDI s10, zero, 1
  SUBW s10, s0, s10
  ADD a0, s10, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  ADD a4, s4, zero
  ADDI a5, zero, 1
  CALL dfs
  ADD s10, a0, zero
  MULW s9, s9, s10
  LUI s10, 244141
  ADDIW s10, s10, -1529
  REMW s9, s9, s10
  ADD s8, s9, zero
  JAL zero, bb4
bb29:
  ADDI s9, zero, 1
  JAL zero, bb28
bb30:
  ADDI a0, zero, 1
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD ra, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  LD s5, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb31:
  LW t4, 0(sp)
  ADD a0, t4, zero
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD ra, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  LD s5, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
equal:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  ADD s0, a0, zero
  XOR s0, s0, a1
  SLTIU s0, s0, 1
  BNE s0, zero, bb34
  # implict jump to bb33
bb33:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb34:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -320
  SD ra, 200(sp)
  SD s0, 208(sp)
  SD s2, 216(sp)
  SD s3, 224(sp)
  SD s4, 232(sp)
  SD s5, 240(sp)
  SD s1, 248(sp)
  SD s6, 256(sp)
  SD s7, 264(sp)
  SD s10, 272(sp)
  SD s8, 288(sp)
  SD s9, 296(sp)
  SD s11, 304(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 164(sp)
  SLTI s0, zero, 18
  BNE s0, zero, bb43
  # implict jump to bb36
bb36:
  LW t4, 164(sp)
  BLT zero, t4, bb38
  # implict jump to bb37
bb37:
  LA s1, cns
  LW s1, 4(s1)
  LA s2, cns
  LW s2, 8(s2)
  LA s3, cns
  LW s3, 12(s3)
  LA s4, cns
  LW s4, 16(s4)
  LA s5, cns
  LW s5, 20(s5)
  ADD a0, s1, zero
  ADD a1, s2, zero
  ADD a2, s3, zero
  ADD a3, s4, zero
  ADD a4, s5, zero
  ADD a5, zero, zero
  CALL dfs
  ADD s1, a0, zero
  ADD a0, s1, zero
  CALL putint
  ADD a0, s1, zero
  LD ra, 200(sp)
  LD s0, 208(sp)
  LD s2, 216(sp)
  LD s3, 224(sp)
  LD s4, 232(sp)
  LD s5, 240(sp)
  LD s1, 248(sp)
  LD s6, 256(sp)
  LD s7, 264(sp)
  LD s10, 272(sp)
  LD s8, 288(sp)
  LD s9, 296(sp)
  LD s11, 304(sp)
  ADDI sp, sp, 320
  JALR zero, 0(ra)
bb38:
  # implict jump to bb39
bb39:
  ADD s0, zero, zero
  # implict jump to bb40
bb40:
  ADD s1, s0, zero
  SLLIW s2, s1, 2
  LA s3, list
  ADD s2, s3, s2
  CALL getint
  ADD s3, a0, zero
  SW s3, 0(s2)
  SLLIW s2, s3, 2
  LA s3, cns
  ADD s2, s3, s2
  LW s3, 0(s2)
  ADDIW s3, s3, 1
  SW s3, 0(s2)
  ADDIW t4, s1, 1
  SW t4, 20(sp)
  # implict jump to bb41
bb41:
  LW t4, 20(sp)
  LW t3, 164(sp)
  BLT t4, t3, bb42
  JAL zero, bb37
bb42:
  LW t4, 20(sp)
  ADD s0, t4, zero
  JAL zero, bb40
bb43:
  # implict jump to bb44
bb44:
  SLTI t4, zero, 18
  SB t4, 2(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  ADD t4, zero, zero
  SW t4, 56(sp)
  ADD t4, zero, zero
  SW t4, 192(sp)
  ADD t4, zero, zero
  SW t4, 188(sp)
  ADD t4, zero, zero
  SW t4, 184(sp)
  # implict jump to bb45
bb45:
  LW t4, 184(sp)
  ADD s5, t4, zero
  LW t4, 188(sp)
  ADD s3, t4, zero
  LW t4, 192(sp)
  ADD s8, t4, zero
  LW t4, 56(sp)
  ADD s4, t4, zero
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 196(sp)
  LB t4, 2(sp)
  BNE t4, zero, bb50
  # implict jump to bb46
bb46:
  ADD t4, s4, zero
  SW t4, 16(sp)
  ADD t4, s8, zero
  SW t4, 72(sp)
  ADD t4, s3, zero
  SW t4, 76(sp)
  ADD t4, s5, zero
  SW t4, 92(sp)
  # implict jump to bb47
bb47:
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t3, 196(sp)
  ADDIW t4, t3, 1
  SW t4, 24(sp)
  # implict jump to bb48
bb48:
  LW t4, 24(sp)
  SLTI s0, t4, 18
  BNE s0, zero, bb49
  JAL zero, bb36
bb49:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  JAL zero, bb45
bb50:
  # implict jump to bb51
bb51:
  SLTI t4, zero, 18
  SB t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 44(sp)
  ADD t4, s4, zero
  SW t4, 32(sp)
  ADD t4, s8, zero
  SW t4, 36(sp)
  ADD t4, s5, zero
  SW t4, 40(sp)
  # implict jump to bb52
bb52:
  LW t4, 40(sp)
  ADD s5, t4, zero
  LW t4, 36(sp)
  ADD s8, t4, zero
  LW t4, 32(sp)
  ADD s4, t4, zero
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LB t4, 0(sp)
  BNE t4, zero, bb58
  # implict jump to bb53
bb53:
  ADD t4, s4, zero
  SW t4, 104(sp)
  ADD t4, s8, zero
  SW t4, 152(sp)
  ADD t4, zero, zero
  SW t4, 120(sp)
  ADD t4, s5, zero
  SW t4, 112(sp)
  # implict jump to bb54
bb54:
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  LW t3, 28(sp)
  ADDIW t4, t3, 1
  SW t4, 176(sp)
  # implict jump to bb55
bb55:
  LW t4, 176(sp)
  SLTI s0, t4, 18
  BNE s0, zero, bb57
  # implict jump to bb56
bb56:
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  JAL zero, bb47
bb57:
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb52
bb58:
  # implict jump to bb59
bb59:
  SLTI t4, zero, 18
  SB t4, 3(sp)
  ADD t4, s8, zero
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  ADD t4, s5, zero
  SW t4, 60(sp)
  # implict jump to bb60
bb60:
  LW t4, 60(sp)
  ADD s5, t4, zero
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t4, 12(sp)
  ADD s8, t4, zero
  LB t4, 3(sp)
  BNE t4, zero, bb66
  # implict jump to bb61
bb61:
  ADD s11, zero, zero
  ADD s3, s5, zero
  # implict jump to bb62
bb62:
  ADD t4, s3, zero
  SW t4, 132(sp)
  ADD t4, s8, zero
  SW t4, 128(sp)
  ADD s9, s11, zero
  LW t3, 64(sp)
  ADDIW t4, t3, 1
  SW t4, 124(sp)
  # implict jump to bb63
bb63:
  LW t4, 124(sp)
  SLTI s0, t4, 18
  BNE s0, zero, bb65
  # implict jump to bb64
bb64:
  ADD t4, s9, zero
  SW t4, 104(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  JAL zero, bb54
bb65:
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  JAL zero, bb60
bb66:
  # implict jump to bb67
bb67:
  SLTI t4, zero, 18
  SB t4, 4(sp)
  ADD t4, zero, zero
  SW t4, 80(sp)
  ADD t4, s5, zero
  SW t4, 84(sp)
  # implict jump to bb68
bb68:
  LW t4, 84(sp)
  ADD s5, t4, zero
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LB t4, 4(sp)
  BNE t4, zero, bb74
  # implict jump to bb69
bb69:
  ADD s0, zero, zero
  # implict jump to bb70
bb70:
  ADD t4, s5, zero
  SW t4, 136(sp)
  ADD s7, s0, zero
  LW t3, 88(sp)
  ADDIW t4, t3, 1
  SW t4, 140(sp)
  # implict jump to bb71
bb71:
  LW t4, 140(sp)
  SLTI s0, t4, 18
  BNE s0, zero, bb73
  # implict jump to bb72
bb72:
  LW t4, 140(sp)
  ADD s11, t4, zero
  ADD s8, s7, zero
  LW t4, 136(sp)
  ADD s3, t4, zero
  JAL zero, bb62
bb73:
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  JAL zero, bb68
bb74:
  # implict jump to bb75
bb75:
  SLTI t4, zero, 7
  SB t4, 1(sp)
  ADD t4, zero, zero
  SW t4, 96(sp)
  # implict jump to bb76
bb76:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  LB t4, 1(sp)
  BNE t4, zero, bb82
  # implict jump to bb77
bb77:
  ADD s4, zero, zero
  # implict jump to bb78
bb78:
  ADD s1, s4, zero
  LW t3, 100(sp)
  ADDIW t4, t3, 1
  SW t4, 148(sp)
  # implict jump to bb79
bb79:
  LW t4, 148(sp)
  SLTI s2, t4, 18
  BNE s2, zero, bb81
  # implict jump to bb80
bb80:
  LW t4, 148(sp)
  ADD s0, t4, zero
  ADD s5, s1, zero
  JAL zero, bb70
bb81:
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  JAL zero, bb76
bb82:
  # implict jump to bb83
bb83:
  LUI s2, 718
  ADDIW s2, s2, -1600
  LW t4, 196(sp)
  MULW s2, t4, s2
  LA s6, dp
  ADD s2, s6, s2
  LUI s6, 40
  ADDIW s6, s6, -544
  LW t4, 28(sp)
  MULW s6, t4, s6
  ADD s2, s2, s6
  LUI s6, 2
  ADDIW s6, s6, 880
  LW t4, 64(sp)
  MULW s6, t4, s6
  ADD s2, s2, s6
  ADDI s6, zero, 504
  LW t4, 88(sp)
  MULW s6, t4, s6
  ADD s2, s2, s6
  ADDI s6, zero, 28
  LW t4, 100(sp)
  MULW s6, t4, s6
  ADD t4, s2, s6
  SD t4, 280(sp)
  ADD t4, zero, zero
  SW t4, 116(sp)
  # implict jump to bb84
bb84:
  LW t4, 116(sp)
  ADD s6, t4, zero
  SLLIW s2, s6, 2
  LD t4, 280(sp)
  ADD s2, t4, s2
  ADDI s10, zero, -1
  SW s10, 0(s2)
  ADDIW t4, s6, 1
  SW t4, 156(sp)
  # implict jump to bb85
bb85:
  LW t4, 156(sp)
  SLTI s2, t4, 7
  BNE s2, zero, bb87
  # implict jump to bb86
bb86:
  LW t4, 156(sp)
  ADD s4, t4, zero
  JAL zero, bb78
bb87:
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  JAL zero, bb84
