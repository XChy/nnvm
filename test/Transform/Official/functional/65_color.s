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
  ADDI sp, sp, -176
  SD ra, 56(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  SD s5, 104(sp)
  SD s6, 112(sp)
  SD s7, 120(sp)
  SD s8, 128(sp)
  SD s9, 136(sp)
  SD s10, 144(sp)
  SD s11, 160(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 32(sp)
  ADD s1, zero, zero
  # implict jump to bb36
bb36:
  ADD t4, s1, zero
  SW t4, 28(sp)
  ADD s3, zero, zero
  # implict jump to bb37
bb37:
  ADD t4, s3, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 0(sp)
  # implict jump to bb38
bb38:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb39
bb39:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 44(sp)
  # implict jump to bb40
bb40:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LUI s11, 718
  ADDIW s11, s11, -1600
  LW t4, 28(sp)
  MULW s11, t4, s11
  LA s10, dp
  ADD s10, s10, s11
  LUI s11, 40
  ADDIW s11, s11, -544
  LW t4, 24(sp)
  MULW s11, t4, s11
  ADD s10, s10, s11
  LUI s11, 2
  ADDIW s11, s11, 880
  LW t4, 20(sp)
  MULW s11, t4, s11
  ADD s10, s10, s11
  ADDI s11, zero, 504
  LW t4, 16(sp)
  MULW s11, t4, s11
  ADD s10, s10, s11
  ADDI s11, zero, 28
  LW t4, 12(sp)
  MULW s11, t4, s11
  ADD t4, s10, s11
  SD t4, 152(sp)
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb41
bb41:
  LW t4, 36(sp)
  ADD s10, t4, zero
  SLLIW s8, s10, 2
  LD t4, 152(sp)
  ADD s8, t4, s8
  ADDI s6, zero, -1
  SW s6, 0(s8)
  ADDIW t4, s10, 1
  SW t4, 40(sp)
  LW t4, 40(sp)
  SLTI s8, t4, 7
  BNE s8, zero, bb62
  # implict jump to bb42
bb42:
  # implict jump to bb43
bb43:
  LW t3, 12(sp)
  ADDIW t4, t3, 1
  SW t4, 48(sp)
  LW t4, 48(sp)
  SLTI s10, t4, 18
  BNE s10, zero, bb61
  # implict jump to bb44
bb44:
  # implict jump to bb45
bb45:
  LW t3, 16(sp)
  ADDIW t4, t3, 1
  SW t4, 4(sp)
  LW t4, 4(sp)
  SLTI s4, t4, 18
  BNE s4, zero, bb60
  # implict jump to bb46
bb46:
  # implict jump to bb47
bb47:
  LW t4, 20(sp)
  ADDIW s4, t4, 1
  SLTI s2, s4, 18
  BNE s2, zero, bb59
  # implict jump to bb48
bb48:
  # implict jump to bb49
bb49:
  LW t4, 24(sp)
  ADDIW s2, t4, 1
  SLTI s0, s2, 18
  BNE s0, zero, bb58
  # implict jump to bb50
bb50:
  # implict jump to bb51
bb51:
  LW t4, 28(sp)
  ADDIW s0, t4, 1
  SLTI s11, s0, 18
  BNE s11, zero, bb57
  # implict jump to bb52
bb52:
  LW t4, 32(sp)
  BLT zero, t4, bb54
  # implict jump to bb53
bb53:
  LA s8, cns
  LW s8, 4(s8)
  LA s9, cns
  LW s9, 8(s9)
  LA s7, cns
  LW s7, 12(s7)
  LA s10, cns
  LW s10, 16(s10)
  LA s5, cns
  LW s5, 20(s5)
  ADD a0, s8, zero
  ADD a1, s9, zero
  ADD a2, s7, zero
  ADD a3, s10, zero
  ADD a4, s5, zero
  ADD a5, zero, zero
  CALL dfs
  ADD s5, a0, zero
  ADD a0, s5, zero
  CALL putint
  ADD a0, s5, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  LD s5, 104(sp)
  LD s6, 112(sp)
  LD s7, 120(sp)
  LD s8, 128(sp)
  LD s9, 136(sp)
  LD s10, 144(sp)
  LD s11, 160(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb54:
  ADD s11, zero, zero
  # implict jump to bb55
bb55:
  ADD s6, s11, zero
  SLLIW s9, s6, 2
  LA s8, list
  ADD s8, s8, s9
  CALL getint
  ADD s9, a0, zero
  SW s9, 0(s8)
  SLLIW s8, s9, 2
  LA s9, cns
  ADD s8, s9, s8
  LW s9, 0(s8)
  ADDIW s9, s9, 1
  SW s9, 0(s8)
  ADDIW s6, s6, 1
  LW t4, 32(sp)
  BLT s6, t4, bb56
  JAL zero, bb53
bb56:
  ADD s11, s6, zero
  JAL zero, bb55
bb57:
  ADD s1, s0, zero
  JAL zero, bb36
bb58:
  ADD s3, s2, zero
  JAL zero, bb37
bb59:
  ADD t4, s4, zero
  SW t4, 0(sp)
  JAL zero, bb38
bb60:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb39
bb61:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  JAL zero, bb40
bb62:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  JAL zero, bb41
