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
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
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
  LW s7, 0(s6)
  XORI s7, s7, -1
  BNE s7, zero, bb31
  # implict jump to bb1
bb1:
  ADDW s7, s0, s1
  ADDW s7, s7, s2
  ADDW s7, s7, s3
  ADDW s7, s7, s4
  SLTIU s7, s7, 1
  BNE s7, zero, bb30
  # implict jump to bb2
bb2:
  BNE s0, zero, bb26
  # implict jump to bb3
bb3:
  ADD s7, zero, zero
  # implict jump to bb4
bb4:
  BNE s1, zero, bb22
  # implict jump to bb5
bb5:
  ADD s8, s7, zero
  # implict jump to bb6
bb6:
  BNE s2, zero, bb18
  # implict jump to bb7
bb7:
  ADD s7, s8, zero
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
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
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
  XORI s9, s5, 4
  SLTIU s9, s9, 1
  BNE s9, zero, bb21
  # implict jump to bb19
bb19:
  ADD s9, zero, zero
  # implict jump to bb20
bb20:
  SUBW s9, s2, s9
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
  MULW s9, s9, s10
  ADDW s8, s8, s9
  LUI s9, 244141
  ADDIW s9, s9, -1529
  REMW s8, s8, s9
  ADD s7, s8, zero
  JAL zero, bb8
bb21:
  ADDI s9, zero, 1
  JAL zero, bb20
bb22:
  XORI s9, s5, 3
  SLTIU s9, s9, 1
  BNE s9, zero, bb25
  # implict jump to bb23
bb23:
  ADD s9, zero, zero
  # implict jump to bb24
bb24:
  SUBW s9, s1, s9
  ADDIW s10, s0, 1
  ADDI s11, zero, 1
  SUBW s11, s1, s11
  ADD a0, s10, zero
  ADD a1, s11, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  ADD a4, s4, zero
  ADDI a5, zero, 2
  CALL dfs
  ADD s10, a0, zero
  MULW s9, s9, s10
  ADDW s7, s7, s9
  LUI s9, 244141
  ADDIW s9, s9, -1529
  REMW s7, s7, s9
  ADD s8, s7, zero
  JAL zero, bb6
bb25:
  ADDI s9, zero, 1
  JAL zero, bb24
bb26:
  XORI s8, s5, 2
  SLTIU s8, s8, 1
  BNE s8, zero, bb29
  # implict jump to bb27
bb27:
  ADD s8, zero, zero
  # implict jump to bb28
bb28:
  SUBW s8, s0, s8
  ADDI s9, zero, 1
  SUBW s9, s0, s9
  ADD a0, s9, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  ADD a4, s4, zero
  ADDI a5, zero, 1
  CALL dfs
  ADD s9, a0, zero
  MULW s8, s8, s9
  LUI s9, 244141
  ADDIW s9, s9, -1529
  REMW s8, s8, s9
  ADD s7, s8, zero
  JAL zero, bb4
bb29:
  ADDI s8, zero, 1
  JAL zero, bb28
bb30:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb31:
  LW s0, 0(s6)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
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
  ADDI sp, sp, -128
  SD ra, 24(sp)
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s5, 72(sp)
  SD s6, 80(sp)
  SD s7, 88(sp)
  SD s10, 96(sp)
  SD s8, 104(sp)
  SD s9, 112(sp)
  SD s11, 120(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 4(sp)
  ADD s1, zero, zero
  ADD t4, zero, zero
  SW t4, 20(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb36
bb36:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 12(sp)
  ADD s7, t4, zero
  LW t4, 16(sp)
  ADD s8, t4, zero
  LW t4, 20(sp)
  ADD s9, t4, zero
  ADD s10, s1, zero
  LW t4, 0(sp)
  SLTI s11, t4, 18
  BNE s11, zero, bb41
  # implict jump to bb37
bb37:
  ADD s11, zero, zero
  # implict jump to bb38
bb38:
  ADD s6, s11, zero
  LW t4, 4(sp)
  BLT s6, t4, bb40
  # implict jump to bb39
bb39:
  LA s0, cns
  ADDI s0, s0, 4
  LW s0, 0(s0)
  LA s5, cns
  ADDI s5, s5, 8
  LW s5, 0(s5)
  LA s4, cns
  ADDI s4, s4, 12
  LW s4, 0(s4)
  LA s3, cns
  ADDI s3, s3, 16
  LW s3, 0(s3)
  LA s2, cns
  ADDI s2, s2, 20
  LW s2, 0(s2)
  ADD a0, s0, zero
  ADD a1, s5, zero
  ADD a2, s4, zero
  ADD a3, s3, zero
  ADD a4, s2, zero
  ADD a5, zero, zero
  CALL dfs
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADD a0, s0, zero
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s10, 96(sp)
  LD s8, 104(sp)
  LD s9, 112(sp)
  LD s11, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb40:
  SLLIW s0, s6, 2
  LA s2, list
  ADD s0, s2, s0
  CALL getint
  SW a0, 0(s0)
  SLLIW s0, a0, 2
  LA s2, cns
  ADD s0, s2, s0
  LW s2, 0(s0)
  ADDIW s2, s2, 1
  SW s2, 0(s0)
  ADDIW s0, s6, 1
  ADD s11, s0, zero
  JAL zero, bb38
bb41:
  ADD s0, s10, zero
  ADD s2, s9, zero
  ADD s3, s8, zero
  ADD s4, s7, zero
  ADD s5, zero, zero
  # implict jump to bb42
bb42:
  ADD s6, s5, zero
  ADD s7, s4, zero
  ADD s8, s3, zero
  ADD s9, s2, zero
  ADD s10, s0, zero
  SLTI s11, s6, 18
  BNE s11, zero, bb44
  # implict jump to bb43
bb43:
  LW t4, 0(sp)
  ADDIW s11, t4, 1
  ADD s1, s10, zero
  ADD t4, s9, zero
  SW t4, 20(sp)
  ADD t4, s8, zero
  SW t4, 16(sp)
  ADD t4, s7, zero
  SW t4, 12(sp)
  ADD t4, s11, zero
  SW t4, 8(sp)
  JAL zero, bb36
bb44:
  ADD s1, s10, zero
  ADD s9, zero, zero
  # implict jump to bb45
bb45:
  ADD s10, s7, zero
  ADD s11, s8, zero
  ADD ra, s9, zero
  ADD t0, s1, zero
  SLTI t1, ra, 18
  BNE t1, zero, bb47
  # implict jump to bb46
bb46:
  ADDIW t1, s6, 1
  ADD s0, t0, zero
  ADD s2, ra, zero
  ADD s3, s11, zero
  ADD s4, s10, zero
  ADD s5, t1, zero
  JAL zero, bb42
bb47:
  ADD s0, t0, zero
  ADD s2, s11, zero
  ADD s3, zero, zero
  # implict jump to bb48
bb48:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s10, s0, zero
  SLTI s11, s4, 18
  BNE s11, zero, bb50
  # implict jump to bb49
bb49:
  ADDIW s11, ra, 1
  ADD s1, s10, zero
  ADD s9, s11, zero
  ADD s8, s5, zero
  ADD s7, s4, zero
  JAL zero, bb45
bb50:
  ADD s1, s10, zero
  ADD s5, zero, zero
  # implict jump to bb51
bb51:
  ADD s7, s5, zero
  ADD s8, s1, zero
  SLTI s9, s7, 18
  BNE s9, zero, bb53
  # implict jump to bb52
bb52:
  ADDIW s9, s4, 1
  ADD s0, s8, zero
  ADD s2, s7, zero
  ADD s3, s9, zero
  JAL zero, bb48
bb53:
  ADD s0, zero, zero
  # implict jump to bb54
bb54:
  ADD s2, s0, zero
  SLTI s3, s2, 7
  BNE s3, zero, bb56
  # implict jump to bb55
bb55:
  ADDIW s3, s7, 1
  ADD s1, s2, zero
  ADD s5, s3, zero
  JAL zero, bb51
bb56:
  LUI s1, 718
  ADDIW s1, s1, -1600
  LW t4, 0(sp)
  MULW s1, t4, s1
  LA s3, dp
  ADD s1, s3, s1
  LUI s3, 40
  ADDIW s3, s3, -544
  MULW s3, s6, s3
  ADD s1, s1, s3
  LUI s3, 2
  ADDIW s3, s3, 880
  MULW s3, ra, s3
  ADD s1, s1, s3
  ADDI s3, zero, 504
  MULW s3, s4, s3
  ADD s1, s1, s3
  ADDI s3, zero, 28
  MULW s3, s7, s3
  ADD s1, s1, s3
  SLLIW s3, s2, 2
  ADD s1, s1, s3
  ADDI s3, zero, -1
  SW s3, 0(s1)
  ADDIW s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb54
