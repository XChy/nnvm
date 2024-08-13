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
  BNE a1, zero, bb19
  # implict jump to bb1
bb1:   # loop depth 0
  ADDW a0, s2, s3
  ADDW a0, a0, s4
  ADDW a0, a0, s5
  ADDW a0, a0, s6
  SLTIU a0, a0, 1
  BNE a0, zero, bb18
  # implict jump to bb2
bb2:   # loop depth 0
  BNE s2, zero, bb17
  # implict jump to bb3
bb3:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 0
  BNE s3, zero, bb16
  # implict jump to bb5
bb5:   # loop depth 0
  # implict jump to bb6
bb6:   # loop depth 0
  BNE s4, zero, bb15
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
  ADDIW a3, s5, -1
  ADDIW a2, s4, 1
  ADDI a5, zero, 4
  ADD a4, s6, zero
  ADD a1, s3, zero
  ADD a0, s2, zero
  XORI s8, s7, 5
  LUI s7, 244141
  CALL dfs
  SLTIU a1, s8, 1
  SUBW a1, s5, a1
  MULW a0, a1, a0
  ADDIW s7, s7, -1529
  ADDW a0, s0, a0
  REMW s0, a0, s7
  JAL zero, bb10
bb15:   # loop depth 0
  ADDIW a2, s4, -1
  ADDIW a1, s3, 1
  ADDI a5, zero, 3
  ADD a4, s6, zero
  ADD a3, s5, zero
  ADD a0, s2, zero
  XORI s9, s7, 4
  LUI s8, 244141
  CALL dfs
  SLTIU a1, s9, 1
  SUBW a1, s4, a1
  MULW a0, a1, a0
  ADDIW s8, s8, -1529
  ADDW a0, s0, a0
  REMW s0, a0, s8
  JAL zero, bb8
bb16:   # loop depth 0
  ADDIW a1, s3, -1
  ADDIW a0, s2, 1
  ADDI a5, zero, 2
  ADD a4, s6, zero
  ADD a3, s5, zero
  ADD a2, s4, zero
  XORI s9, s7, 3
  LUI s8, 244141
  CALL dfs
  SLTIU a1, s9, 1
  SUBW a1, s3, a1
  MULW a0, a1, a0
  ADDIW s8, s8, -1529
  ADDW a0, s0, a0
  REMW s0, a0, s8
  JAL zero, bb6
bb17:   # loop depth 0
  ADDIW a0, s2, -1
  ADDI a5, zero, 1
  ADD a4, s6, zero
  ADD a3, s5, zero
  ADD a2, s4, zero
  ADD a1, s3, zero
  XORI s0, s7, 2
  SLTIU s0, s0, 1
  LUI s8, 244141
  CALL dfs
  SUBW a1, s2, s0
  ADDIW s8, s8, -1529
  MULW a0, a1, a0
  REMW s0, a0, s8
  JAL zero, bb4
bb18:   # loop depth 0
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
bb19:   # loop depth 0
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
  ADDI sp, sp, -144
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s8, 96(sp)
  SD s9, 104(sp)
  SD s10, 112(sp)
  SD s11, 120(sp)
  CALL getint
  ADD s1, zero, zero
  ADD s0, a0, zero
  SW s0, 16(sp)
  # implict jump to bb21
bb21:   # loop depth 1
  LUI s2, 718
  SW s1, 12(sp)
  ADDIW s2, s2, -1600
  LA s4, dp
  LW s0, 12(sp)
  MULW s3, s0, s2
  ADD s2, zero, zero
  ADD s0, s4, s3
  SD s0, 128(sp)
  # implict jump to bb22
bb22:   # loop depth 2
  LUI s4, 40
  SW s2, 4(sp)
  ADDIW s4, s4, -544
  ADD s5, zero, zero
  LW s0, 4(sp)
  MULW s4, s0, s4
  LD s0, 128(sp)
  ADD s0, s0, s4
  SD s0, 136(sp)
  # implict jump to bb23
bb23:   # loop depth 3
  LUI s8, 2
  ADDIW s8, s8, 880
  ADD s4, zero, zero
  MULW s8, s5, s8
  LD s0, 136(sp)
  ADD s9, s0, s8
  # implict jump to bb24
bb24:   # loop depth 4
  ADDI s8, zero, 504
  MULW s8, s4, s8
  ADD s3, zero, zero
  ADD s8, s9, s8
  # implict jump to bb25
bb25:   # loop depth 5
  ADDI s10, zero, 28
  MULW s10, s3, s10
  ADDI s11, zero, -1
  ADDI s0, zero, -1
  SW s0, 0(sp)
  ADDI s0, zero, -1
  SW s0, 8(sp)
  ADDI s0, zero, -1
  SW s0, 32(sp)
  ADDI s0, zero, -1
  SW s0, 28(sp)
  ADD s10, s8, s10
  ADDI s0, zero, -1
  SW s0, 24(sp)
  SW s11, 0(s10)
  ADDIW s3, s3, 1
  LW s0, 0(sp)
  SW s0, 4(s10)
  ADDI s0, zero, -1
  SW s0, 20(sp)
  LW s0, 8(sp)
  SW s0, 8(s10)
  SLTI s11, s3, 18
  LW s0, 32(sp)
  SW s0, 12(s10)
  LW s0, 28(sp)
  SW s0, 16(s10)
  LW s0, 24(sp)
  SW s0, 20(s10)
  LW s0, 20(sp)
  SW s0, 24(s10)
  BNE s11, zero, bb39
  # implict jump to bb26
bb26:   # loop depth 4
  ADDIW s4, s4, 1
  SLTI s8, s4, 18
  BNE s8, zero, bb38
  # implict jump to bb27
bb27:   # loop depth 3
  ADDIW s5, s5, 1
  SLTI s4, s5, 18
  BNE s4, zero, bb37
  # implict jump to bb28
bb28:   # loop depth 2
  LW s0, 4(sp)
  ADDIW s2, s0, 1
  SLTI s3, s2, 18
  BNE s3, zero, bb36
  # implict jump to bb29
bb29:   # loop depth 1
  LW s0, 12(sp)
  ADDIW s1, s0, 1
  SLTI s2, s1, 18
  BNE s2, zero, bb35
  # implict jump to bb30
bb30:   # loop depth 0
  LW s0, 16(sp)
  BLT zero, s0, bb32
  # implict jump to bb31
bb31:   # loop depth 0
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
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD s10, 112(sp)
  LD s11, 120(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb32:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb33
bb33:   # loop depth 1
  LA s3, cns
  CALL getint
  ADDIW s1, s1, 1
  ADD s2, a0, zero
  SH2ADD s2, s2, s3
  LW s3, 0(s2)
  ADDIW s3, s3, 1
  SW s3, 0(s2)
  LW s0, 16(sp)
  BLT s1, s0, bb34
  JAL zero, bb31
bb34:   # loop depth 1
  JAL zero, bb33
bb35:   # loop depth 1
  JAL zero, bb21
bb36:   # loop depth 2
  JAL zero, bb22
bb37:   # loop depth 3
  JAL zero, bb23
bb38:   # loop depth 4
  JAL zero, bb24
bb39:   # loop depth 5
  JAL zero, bb25
