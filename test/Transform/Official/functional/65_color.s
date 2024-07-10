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
  SD s9, 48(sp)
  SD s10, 56(sp)
  SD s11, 64(sp)
  SD s6, 80(sp)
  SD s7, 88(sp)
  SD s8, 96(sp)
  SD s5, 104(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  LUI s6, 718
  ADDIW s6, s6, -1600
  MULW s7, s0, s6
  LA s6, dp
  ADD s8, s6, s7
  LUI s6, 40
  ADDIW s6, s6, -544
  MULW s7, s1, s6
  ADD s6, s8, s7
  LUI s7, 2
  ADDIW s7, s7, 880
  MULW s8, s2, s7
  ADD s7, s6, s8
  ADDI s6, zero, 504
  MULW s8, s3, s6
  ADD s6, s7, s8
  ADDI s7, zero, 28
  MULW s8, s4, s7
  ADD s7, s6, s8
  SLLIW s6, s5, 2
  ADD t4, s7, s6
  SD t4, 72(sp)
  LD t4, 72(sp)
  LW s6, 0(t4)
  XORI s7, s6, -1
  SLTU s6, zero, s7
  BNE s6, zero, bb31
  # implict jump to bb1
bb1:
  ADDW s6, s0, s1
  ADDW s7, s6, s2
  ADDW s6, s7, s3
  ADDW s7, s6, s4
  XOR s6, s7, zero
  SLTIU s7, s6, 1
  BNE s7, zero, bb30
  # implict jump to bb2
bb2:
  XOR s6, s0, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb26
  # implict jump to bb3
bb3:
  ADD s6, zero, zero
  # implict jump to bb4
bb4:
  ADD s7, s6, zero
  XOR s6, s1, zero
  SLTU s9, zero, s6
  BNE s9, zero, bb22
  # implict jump to bb5
bb5:
  ADD s6, s7, zero
  # implict jump to bb6
bb6:
  ADD s7, s6, zero
  XOR s6, s2, zero
  SLTU s8, zero, s6
  BNE s8, zero, bb18
  # implict jump to bb7
bb7:
  ADD s6, s7, zero
  # implict jump to bb8
bb8:
  ADD s7, s6, zero
  XOR s6, s3, zero
  SLTU s8, zero, s6
  BNE s8, zero, bb14
  # implict jump to bb9
bb9:
  ADD s6, s7, zero
  # implict jump to bb10
bb10:
  ADD s5, s6, zero
  XOR s6, s4, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb13
  # implict jump to bb11
bb11:
  ADD s6, s5, zero
  # implict jump to bb12
bb12:
  ADD s0, s6, zero
  LUI s1, 244141
  ADDIW s1, s1, -1529
  REMW s2, s0, s1
  LD t4, 72(sp)
  SW s2, 0(t4)
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s9, 48(sp)
  LD s10, 56(sp)
  LD s11, 64(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s5, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb13:
  ADDIW s7, s3, 1
  ADDI s3, zero, 1
  SUBW s8, s4, s3
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  ADD a3, s7, zero
  ADD a4, s8, zero
  ADDI a5, zero, 5
  CALL dfs
  ADD s0, a0, zero
  MULW s1, s4, s0
  ADDW s0, s5, s1
  LUI s1, 244141
  ADDIW s1, s1, -1529
  REMW s2, s0, s1
  ADD s6, s2, zero
  JAL zero, bb12
bb14:
  XORI s8, s5, 5
  SLTIU s5, s8, 1
  BNE s5, zero, bb17
  # implict jump to bb15
bb15:
  ADD s5, zero, zero
  # implict jump to bb16
bb16:
  ADD s8, s5, zero
  SUBW s5, s3, s8
  ADDIW s8, s2, 1
  ADDI s9, zero, 1
  SUBW s10, s3, s9
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s8, zero
  ADD a3, s10, zero
  ADD a4, s4, zero
  ADDI a5, zero, 4
  CALL dfs
  ADD s8, a0, zero
  MULW s9, s5, s8
  ADDW s5, s7, s9
  LUI s7, 244141
  ADDIW s7, s7, -1529
  REMW s8, s5, s7
  ADD s6, s8, zero
  JAL zero, bb10
bb17:
  ADDI s5, zero, 1
  JAL zero, bb16
bb18:
  XORI s8, s5, 4
  SLTIU s9, s8, 1
  BNE s9, zero, bb21
  # implict jump to bb19
bb19:
  ADD s8, zero, zero
  # implict jump to bb20
bb20:
  ADD s9, s8, zero
  SUBW s8, s2, s9
  ADDIW s9, s1, 1
  ADDI s10, zero, 1
  SUBW s11, s2, s10
  ADD a0, s0, zero
  ADD a1, s9, zero
  ADD a2, s11, zero
  ADD a3, s3, zero
  ADD a4, s4, zero
  ADDI a5, zero, 3
  CALL dfs
  ADD s9, a0, zero
  MULW s10, s8, s9
  ADDW s8, s7, s10
  LUI s7, 244141
  ADDIW s7, s7, -1529
  REMW s9, s8, s7
  ADD s6, s9, zero
  JAL zero, bb8
bb21:
  ADDI s8, zero, 1
  JAL zero, bb20
bb22:
  XORI s9, s5, 3
  SLTIU s10, s9, 1
  BNE s10, zero, bb25
  # implict jump to bb23
bb23:
  ADD s9, zero, zero
  # implict jump to bb24
bb24:
  ADD s10, s9, zero
  SUBW s9, s1, s10
  ADDIW s10, s0, 1
  ADDI s11, zero, 1
  SUBW s8, s1, s11
  ADD a0, s10, zero
  ADD a1, s8, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  ADD a4, s4, zero
  ADDI a5, zero, 2
  CALL dfs
  ADD s8, a0, zero
  MULW s10, s9, s8
  ADDW s8, s7, s10
  LUI s7, 244141
  ADDIW s7, s7, -1529
  REMW s9, s8, s7
  ADD s6, s9, zero
  JAL zero, bb6
bb25:
  ADDI s9, zero, 1
  JAL zero, bb24
bb26:
  XORI s7, s5, 2
  SLTIU s9, s7, 1
  BNE s9, zero, bb29
  # implict jump to bb27
bb27:
  ADD s7, zero, zero
  # implict jump to bb28
bb28:
  ADD s9, s7, zero
  SUBW s7, s0, s9
  ADDI s9, zero, 1
  SUBW s10, s0, s9
  ADD a0, s10, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  ADD a4, s4, zero
  ADDI a5, zero, 1
  CALL dfs
  ADD s9, a0, zero
  MULW s10, s7, s9
  LUI s7, 244141
  ADDIW s7, s7, -1529
  REMW s9, s10, s7
  ADD s6, s9, zero
  JAL zero, bb4
bb29:
  ADDI s7, zero, 1
  JAL zero, bb28
bb30:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s9, 48(sp)
  LD s10, 56(sp)
  LD s11, 64(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s5, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb31:
  LD t4, 72(sp)
  LW s0, 0(t4)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s9, 48(sp)
  LD s10, 56(sp)
  LD s11, 64(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s5, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
equal:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  XOR s2, s0, s1
  SLTIU s0, s2, 1
  BNE s0, zero, bb34
  # implict jump to bb33
bb33:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb34:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -144
  SD s0, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD ra, 64(sp)
  SD s1, 72(sp)
  SD s5, 80(sp)
  SD s6, 88(sp)
  SD s7, 96(sp)
  SD s8, 104(sp)
  SD s9, 112(sp)
  SD s10, 120(sp)
  SD s11, 128(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 4(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
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
  LW t4, 8(sp)
  ADD s6, t4, zero
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 16(sp)
  ADD s8, t4, zero
  LW t4, 20(sp)
  ADD s9, t4, zero
  LW t4, 24(sp)
  ADD s10, t4, zero
  LW t4, 0(sp)
  SLTI s11, t4, 18
  BNE s11, zero, bb41
  # implict jump to bb37
bb37:
  ADD s11, zero, zero
  # implict jump to bb38
bb38:
  ADD s7, s11, zero
  LW t4, 4(sp)
  SLT s0, s7, t4
  BNE s0, zero, bb40
  # implict jump to bb39
bb39:
  LA s0, cns
  ADDI s5, s0, 4
  LW s0, 0(s5)
  LA s5, cns
  ADDI s4, s5, 8
  LW s5, 0(s4)
  LA s4, cns
  ADDI s3, s4, 12
  LW s4, 0(s3)
  LA s3, cns
  ADDI s2, s3, 16
  LW s3, 0(s2)
  LA s2, cns
  ADDI s1, s2, 20
  LW s2, 0(s1)
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
  LD s0, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD ra, 64(sp)
  LD s1, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  LD s7, 96(sp)
  LD s8, 104(sp)
  LD s9, 112(sp)
  LD s10, 120(sp)
  LD s11, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb40:
  SLLIW s0, s7, 2
  LA s1, list
  ADD s2, s1, s0
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(s2)
  SLLIW s1, s0, 2
  LA s0, cns
  ADD s2, s0, s1
  LW s0, 0(s2)
  ADDIW s1, s0, 1
  SW s1, 0(s2)
  ADDIW s0, s7, 1
  ADD s11, s0, zero
  JAL zero, bb38
bb41:
  ADD s0, s10, zero
  ADD s1, s9, zero
  ADD s2, s8, zero
  ADD s3, s6, zero
  ADD s4, zero, zero
  # implict jump to bb42
bb42:
  ADD s5, s4, zero
  ADD s6, s3, zero
  ADD s7, s2, zero
  ADD s8, s1, zero
  ADD s9, s0, zero
  SLTI s10, s5, 18
  BNE s10, zero, bb44
  # implict jump to bb43
bb43:
  LW t4, 0(sp)
  ADDIW s10, t4, 1
  ADD t4, s9, zero
  SW t4, 24(sp)
  ADD t4, s8, zero
  SW t4, 20(sp)
  ADD t4, s7, zero
  SW t4, 16(sp)
  ADD t4, s10, zero
  SW t4, 12(sp)
  ADD t4, s6, zero
  SW t4, 8(sp)
  JAL zero, bb36
bb44:
  ADD s6, s9, zero
  ADD s9, s8, zero
  ADD s8, s7, zero
  ADD s7, zero, zero
  # implict jump to bb45
bb45:
  ADD s10, s7, zero
  ADD s11, s8, zero
  ADD ra, s9, zero
  ADD t0, s6, zero
  SLTI t1, s10, 18
  BNE t1, zero, bb47
  # implict jump to bb46
bb46:
  ADDIW t1, s5, 1
  ADD s0, t0, zero
  ADD s1, ra, zero
  ADD s2, s11, zero
  ADD s3, s10, zero
  ADD s4, t1, zero
  JAL zero, bb42
bb47:
  ADD s0, t0, zero
  ADD s1, ra, zero
  ADD s2, zero, zero
  # implict jump to bb48
bb48:
  ADD s3, s2, zero
  ADD s4, s1, zero
  ADD s11, s0, zero
  SLTI ra, s3, 18
  BNE ra, zero, bb50
  # implict jump to bb49
bb49:
  ADDIW ra, s10, 1
  ADD s6, s11, zero
  ADD s9, s4, zero
  ADD s8, s3, zero
  ADD s7, ra, zero
  JAL zero, bb45
bb50:
  ADD s4, s11, zero
  ADD s6, zero, zero
  # implict jump to bb51
bb51:
  ADD s7, s6, zero
  ADD s8, s4, zero
  SLTI s9, s7, 18
  BNE s9, zero, bb53
  # implict jump to bb52
bb52:
  ADDIW s9, s3, 1
  ADD s0, s8, zero
  ADD s1, s7, zero
  ADD s2, s9, zero
  JAL zero, bb48
bb53:
  ADD s0, zero, zero
  # implict jump to bb54
bb54:
  ADD s1, s0, zero
  SLTI s2, s1, 7
  BNE s2, zero, bb56
  # implict jump to bb55
bb55:
  ADDIW s2, s7, 1
  ADD s4, s1, zero
  ADD s6, s2, zero
  JAL zero, bb51
bb56:
  LUI s2, 718
  ADDIW s2, s2, -1600
  LW t4, 0(sp)
  MULW s4, t4, s2
  LA s2, dp
  ADD s6, s2, s4
  LUI s2, 40
  ADDIW s2, s2, -544
  MULW s4, s5, s2
  ADD s2, s6, s4
  LUI s4, 2
  ADDIW s4, s4, 880
  MULW s6, s10, s4
  ADD s4, s2, s6
  ADDI s2, zero, 504
  MULW s6, s3, s2
  ADD s2, s4, s6
  ADDI s4, zero, 28
  MULW s6, s7, s4
  ADD s4, s2, s6
  SLLIW s2, s1, 2
  ADD s6, s4, s2
  ADDI s2, zero, -1
  SW s2, 0(s6)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb54
