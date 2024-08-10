.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global dfs
.global main
.section .bss
cns:
.space 80
list:
.space 800
dp:
.space 52907904
.section .data



.section .text
dfs:   # loop depth 0
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s5, 8(sp)
  SD s6, 16(sp)
  SD s7, 24(sp)
  SD s8, 32(sp)
  SD s9, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  LUI s0, 718
  LUI s1, 40
  ADDIW s0, s0, -1600
  ADD s2, a0, zero
  LUI s5, 2
  ADDIW s1, s1, -544
  MULW a0, s2, s0
  ADD s3, a1, zero
  ADDIW s5, s5, 880
  MULW a1, s3, s1
  LA s0, dp
  ADD s4, a2, zero
  ADDI s1, zero, 504
  MULW a2, s4, s5
  ADD s5, a3, zero
  ADDI s7, zero, 28
  MULW a3, s5, s1
  ADD a0, s0, a0
  ADD s6, a4, zero
  ADD a0, a0, a1
  MULW a1, s6, s7
  ADD a0, a0, a2
  ADD a0, a0, a3
  ADD s7, a5, zero
  ADD a0, a0, a1
  SH2ADD s1, s7, a0
  LW a0, 0(s1)
  XORI a1, a0, -1
  BNE a1, zero, bb31
  # implict jump to bb1
bb1:   # loop depth 0
  ADDW a0, s2, s3
  ADDW a0, a0, s4
  ADDW a0, a0, s5
  ADDW a0, a0, s6
  SLTIU a0, a0, 1
  BNE a0, zero, bb30
  # implict jump to bb2
bb2:   # loop depth 0
  BNE s2, zero, bb26
  # implict jump to bb3
bb3:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 0
  BNE s3, zero, bb22
  # implict jump to bb5
bb5:   # loop depth 0
  # implict jump to bb6
bb6:   # loop depth 0
  BNE s4, zero, bb18
  # implict jump to bb7
bb7:   # loop depth 0
  # implict jump to bb8
bb8:   # loop depth 0
  BNE s5, zero, bb14
  # implict jump to bb9
bb9:   # loop depth 0
  # implict jump to bb10
bb10:   # loop depth 0
  BNE s6, zero, bb13
  # implict jump to bb11
bb11:   # loop depth 0
  # implict jump to bb12
bb12:   # loop depth 0
  LUI t0, 244141
  ADDIW t0, t0, -1529
  REMW t0, s0, t0
  ADD a0, t0, zero
  SW t0, 0(s1)
  LD ra, 0(sp)
  LD s5, 8(sp)
  LD s6, 16(sp)
  LD s7, 24(sp)
  LD s8, 32(sp)
  LD s9, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb13:   # loop depth 0
  ADDIW a4, s6, -1
  ADDIW a3, s5, 1
  ADDI a5, zero, 5
  ADD a2, s4, zero
  ADD a1, s3, zero
  ADD a0, s2, zero
  LUI s2, 244141
  CALL dfs
  ADDIW s2, s2, -1529
  MULW t0, s6, a0
  ADDW t0, s0, t0
  REMW s0, t0, s2
  JAL zero, bb12
bb14:   # loop depth 0
  XORI a0, s7, 5
  SLTIU a0, a0, 1
  BNE a0, zero, bb17
  # implict jump to bb15
bb15:   # loop depth 0
  ADD s7, zero, zero
  # implict jump to bb16
bb16:   # loop depth 0
  ADDIW a3, s5, -1
  ADDIW a2, s4, 1
  ADDI a5, zero, 4
  ADD a4, s6, zero
  ADD a1, s3, zero
  ADD a0, s2, zero
  LUI s8, 244141
  CALL dfs
  SUBW a1, s5, s7
  ADDIW s8, s8, -1529
  MULW a0, a1, a0
  ADDW a0, s0, a0
  REMW s0, a0, s8
  JAL zero, bb10
bb17:   # loop depth 0
  ADDI s7, zero, 1
  JAL zero, bb16
bb18:   # loop depth 0
  XORI a0, s7, 4
  SLTIU a0, a0, 1
  BNE a0, zero, bb21
  # implict jump to bb19
bb19:   # loop depth 0
  ADD s9, zero, zero
  # implict jump to bb20
bb20:   # loop depth 0
  ADDIW a2, s4, -1
  ADDIW a1, s3, 1
  ADDI a5, zero, 3
  ADD a4, s6, zero
  ADD a3, s5, zero
  ADD a0, s2, zero
  LUI s8, 244141
  CALL dfs
  SUBW a1, s4, s9
  ADDIW s8, s8, -1529
  MULW a0, a1, a0
  ADDW a0, s0, a0
  REMW s0, a0, s8
  JAL zero, bb8
bb21:   # loop depth 0
  ADDI s9, zero, 1
  JAL zero, bb20
bb22:   # loop depth 0
  XORI a0, s7, 3
  SLTIU a0, a0, 1
  BNE a0, zero, bb25
  # implict jump to bb23
bb23:   # loop depth 0
  ADD s9, zero, zero
  # implict jump to bb24
bb24:   # loop depth 0
  ADDIW a1, s3, -1
  ADDIW a0, s2, 1
  ADDI a5, zero, 2
  ADD a4, s6, zero
  ADD a3, s5, zero
  ADD a2, s4, zero
  LUI s8, 244141
  CALL dfs
  SUBW a1, s3, s9
  ADDIW s8, s8, -1529
  MULW a0, a1, a0
  ADDW a0, s0, a0
  REMW s0, a0, s8
  JAL zero, bb6
bb25:   # loop depth 0
  ADDI s9, zero, 1
  JAL zero, bb24
bb26:   # loop depth 0
  XORI a0, s7, 2
  SLTIU a0, a0, 1
  BNE a0, zero, bb29
  # implict jump to bb27
bb27:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb28
bb28:   # loop depth 0
  ADDIW a0, s2, -1
  ADDI a5, zero, 1
  ADD a4, s6, zero
  ADD a3, s5, zero
  ADD a2, s4, zero
  ADD a1, s3, zero
  SUBW s0, s2, s0
  LUI s8, 244141
  CALL dfs
  ADDIW s8, s8, -1529
  MULW a0, s0, a0
  REMW s0, a0, s8
  JAL zero, bb4
bb29:   # loop depth 0
  ADDI s0, zero, 1
  JAL zero, bb28
bb30:   # loop depth 0
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s5, 8(sp)
  LD s6, 16(sp)
  LD s7, 24(sp)
  LD s8, 32(sp)
  LD s9, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb31:   # loop depth 0
  LD ra, 0(sp)
  LD s5, 8(sp)
  LD s6, 16(sp)
  LD s7, 24(sp)
  LD s8, 32(sp)
  LD s9, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
main:   # loop depth 0
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s8, 8(sp)
  SD s9, 16(sp)
  SD s10, 24(sp)
  SD s11, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s5, 80(sp)
  SD s6, 88(sp)
  SD s7, 96(sp)
  CALL getint
  ADD s0, zero, zero
  ADD s11, a0, zero
  # implict jump to bb33
bb33:   # loop depth 1
  ADD s1, zero, zero
  ADD s10, s0, zero
  # implict jump to bb34
bb34:   # loop depth 2
  ADD s2, zero, zero
  ADD s0, s1, zero
  # implict jump to bb35
bb35:   # loop depth 3
  ADD s3, zero, zero
  ADD s1, s2, zero
  # implict jump to bb36
bb36:   # loop depth 4
  ADD s7, zero, zero
  ADD s2, s3, zero
  # implict jump to bb37
bb37:   # loop depth 5
  LUI s3, 718
  LUI s4, 40
  ADDIW s3, s3, -1600
  LUI s5, 2
  ADDIW s4, s4, -544
  MULW s3, s10, s3
  ADDIW s5, s5, 880
  MULW s4, s0, s4
  LA s8, dp
  ADDI s6, zero, 504
  MULW s5, s1, s5
  ADDI s9, zero, 28
  MULW s6, s2, s6
  ADD s3, s8, s3
  ADD s3, s3, s4
  MULW s4, s7, s9
  ADD s3, s3, s5
  ADD s3, s3, s6
  ADDI s5, zero, -1
  ADDI s6, zero, -1
  ADDI s8, zero, -1
  ADD s3, s3, s4
  ADDI s4, zero, -1
  SW s5, 0(s3)
  ADDI s5, zero, -1
  SW s6, 4(s3)
  ADDI s6, zero, -1
  SW s8, 8(s3)
  ADDIW s7, s7, 1
  SW s4, 12(s3)
  ADDI s4, zero, -1
  SW s5, 16(s3)
  SLTI s5, s7, 18
  SW s6, 20(s3)
  SW s4, 24(s3)
  BNE s5, zero, bb51
  # implict jump to bb38
bb38:   # loop depth 4
  ADDIW s3, s2, 1
  SLTI s2, s3, 18
  BNE s2, zero, bb50
  # implict jump to bb39
bb39:   # loop depth 3
  ADDIW s2, s1, 1
  SLTI s1, s2, 18
  BNE s1, zero, bb49
  # implict jump to bb40
bb40:   # loop depth 2
  ADDIW s1, s0, 1
  SLTI s0, s1, 18
  BNE s0, zero, bb48
  # implict jump to bb41
bb41:   # loop depth 1
  ADDIW s0, s10, 1
  SLTI s1, s0, 18
  BNE s1, zero, bb47
  # implict jump to bb42
bb42:   # loop depth 0
  BLT zero, s11, bb44
  # implict jump to bb43
bb43:   # loop depth 0
  LA a0, cns
  LA a1, cns
  LA a2, cns
  LA a3, cns
  LW a0, 4(a0)
  LA a4, cns
  ADD a5, zero, zero
  LW a1, 8(a1)
  LW a2, 12(a2)
  LW a3, 16(a3)
  LW a4, 20(a4)
  CALL dfs
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s8, 8(sp)
  LD s9, 16(sp)
  LD s10, 24(sp)
  LD s11, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  LD s7, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb44:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb45
bb45:   # loop depth 1
  LA s2, cns
  CALL getint
  ADDIW s0, s0, 1
  ADD s1, a0, zero
  SH2ADD s1, s1, s2
  LW s2, 0(s1)
  ADDIW s2, s2, 1
  SW s2, 0(s1)
  BLT s0, s11, bb46
  JAL zero, bb43
bb46:   # loop depth 1
  JAL zero, bb45
bb47:   # loop depth 1
  JAL zero, bb33
bb48:   # loop depth 2
  JAL zero, bb34
bb49:   # loop depth 3
  JAL zero, bb35
bb50:   # loop depth 4
  JAL zero, bb36
bb51:   # loop depth 5
  JAL zero, bb37
