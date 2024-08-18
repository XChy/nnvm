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
  LUI t0, 718
  LUI t1, 40
  ADDIW t0, t0, -1600
  ADD s0, a0, zero
  LUI t2, 2
  ADDIW t1, t1, -544
  MULW t0, s0, t0
  ADD s1, a1, zero
  ADDIW t2, t2, 880
  MULW t1, s1, t1
  LA a1, dp
  ADD s2, a2, zero
  ADDI a0, zero, 504
  MULW t2, s2, t2
  ADD s3, a3, zero
  ADDI a2, zero, 28
  MULW a0, s3, a0
  ADD t0, a1, t0
  ADD s4, a4, zero
  ADD t0, t0, t1
  MULW t1, s4, a2
  ADD t0, t0, t2
  ADD t0, t0, a0
  ADD s6, a5, zero
  ADD t0, t0, t1
  SH2ADD s8, s6, t0
  LW a0, 0(s8)
  XORI t0, a0, -1
  BNE t0, zero, bb19
  # implict jump to bb1
bb1:   # loop depth 0
  ADDW t0, s0, s1
  ADDW t0, t0, s2
  ADDW t0, t0, s3
  ADDW t0, t0, s4
  BEQ t0, zero, bb18
  # implict jump to bb2
bb2:   # loop depth 0
  LUI t0, 244141
  ADDIW t0, t0, -1529
  ADD s5, zero, t0
  BNE s0, zero, bb17
  # implict jump to bb3
bb3:   # loop depth 0
  ADD s7, zero, zero
  # implict jump to bb4
bb4:   # loop depth 0
  BNE s1, zero, bb16
  # implict jump to bb5
bb5:   # loop depth 0
  # implict jump to bb6
bb6:   # loop depth 0
  BNE s2, zero, bb15
  # implict jump to bb7
bb7:   # loop depth 0
  # implict jump to bb8
bb8:   # loop depth 0
  BNE s3, zero, bb14
  # implict jump to bb9
bb9:   # loop depth 0
  # implict jump to bb10
bb10:   # loop depth 0
  BNE s4, zero, bb13
  # implict jump to bb11
bb11:   # loop depth 0
  # implict jump to bb12
bb12:   # loop depth 0
  REMW t0, s7, s5
  ADD a0, t0, zero
  SW t0, 0(s8)
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
  ADDIW a4, s4, -1
  ADDIW a3, s3, 1
  ADDI a5, zero, 5
  ADD a2, s2, zero
  ADD a1, s1, zero
  ADD a0, s0, zero
  CALL dfs
  MULW t0, s4, a0
  ADDW t0, s7, t0
  REMW s7, t0, s5
  JAL zero, bb12
bb14:   # loop depth 0
  ADDIW a3, s3, -1
  ADDIW a2, s2, 1
  ADDI a5, zero, 4
  ADD a4, s4, zero
  ADD a1, s1, zero
  ADD a0, s0, zero
  XORI s6, s6, 5
  CALL dfs
  SLTIU t0, s6, 1
  SUBW t0, s3, t0
  MULW t0, t0, a0
  ADDW t0, s7, t0
  REMW s7, t0, s5
  JAL zero, bb10
bb15:   # loop depth 0
  ADDIW a2, s2, -1
  ADDIW a1, s1, 1
  ADDI a5, zero, 3
  ADD a4, s4, zero
  ADD a3, s3, zero
  ADD a0, s0, zero
  XORI s9, s6, 4
  CALL dfs
  SLTIU t0, s9, 1
  SUBW t0, s2, t0
  MULW t0, t0, a0
  ADDW t0, s7, t0
  REMW s7, t0, s5
  JAL zero, bb8
bb16:   # loop depth 0
  ADDIW a1, s1, -1
  ADDIW a0, s0, 1
  ADDI a5, zero, 2
  ADD a4, s4, zero
  ADD a3, s3, zero
  ADD a2, s2, zero
  XORI s9, s6, 3
  CALL dfs
  SLTIU t0, s9, 1
  SUBW t0, s1, t0
  MULW t0, t0, a0
  ADDW t0, s7, t0
  REMW s7, t0, s5
  JAL zero, bb6
bb17:   # loop depth 0
  ADDIW a0, s0, -1
  ADDI a5, zero, 1
  ADD a4, s4, zero
  ADD a3, s3, zero
  ADD a2, s2, zero
  ADD a1, s1, zero
  XORI t0, s6, 2
  SLTIU s7, t0, 1
  CALL dfs
  SUBW t0, s0, s7
  MULW t0, t0, a0
  REMW s7, t0, s5
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
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  CALL getint
  ADD a1, zero, zero
  ADD a2, zero, zero
  ADD s2, a0, zero
  # implict jump to bb21
bb21:   # loop depth 1
  LA t0, dp
  ADD a3, zero, zero
  ADD a0, zero, zero
  ADD a6, t0, a2
  # implict jump to bb22
bb22:   # loop depth 2
  ADD a5, zero, zero
  ADD t2, zero, zero
  ADD t3, a6, a0
  # implict jump to bb23
bb23:   # loop depth 3
  ADD a7, zero, zero
  ADD t1, zero, zero
  ADD t4, t3, t2
  # implict jump to bb24
bb24:   # loop depth 4
  ADD a4, zero, zero
  ADD t0, zero, zero
  ADD t5, t4, t1
  # implict jump to bb25
bb25:   # loop depth 5
  ADDI s1, zero, -1
  ADD s0, t5, t0
  ADDI s3, zero, -1
  SW s1, 0(s0)
  ADDI s1, zero, -1
  SW s3, 4(s0)
  ADDI s3, zero, -1
  SW s1, 8(s0)
  ADDI s1, zero, -1
  SW s3, 12(s0)
  ADDI s3, zero, -1
  SW s1, 16(s0)
  ADDIW a4, a4, 1
  ADDI s4, zero, -1
  SW s3, 20(s0)
  ADDIW t0, t0, 28
  SLTI s1, a4, 18
  SW s4, 24(s0)
  BNE s1, zero, bb39
  # implict jump to bb26
bb26:   # loop depth 4
  ADDIW a7, a7, 1
  ADDIW t1, t1, 504
  SLTI t0, a7, 18
  BNE t0, zero, bb38
  # implict jump to bb27
bb27:   # loop depth 3
  LUI t1, 2
  ADDIW a5, a5, 1
  ADDIW t1, t1, 880
  SLTI t0, a5, 18
  ADDW t2, t2, t1
  BNE t0, zero, bb37
  # implict jump to bb28
bb28:   # loop depth 2
  LUI t1, 40
  ADDIW a3, a3, 1
  ADDIW t1, t1, -544
  SLTI t0, a3, 18
  ADDW a0, a0, t1
  BNE t0, zero, bb36
  # implict jump to bb29
bb29:   # loop depth 1
  LUI t1, 718
  ADDIW a1, a1, 1
  ADDIW t1, t1, -1600
  SLTI t0, a1, 18
  ADDW a2, a2, t1
  BNE t0, zero, bb35
  # implict jump to bb30
bb30:   # loop depth 0
  LA s1, cns
  BLT zero, s2, bb32
  # implict jump to bb31
bb31:   # loop depth 0
  LW a0, 4(s1)
  ADD a5, zero, zero
  LW a1, 8(s1)
  LW a2, 12(s1)
  LW a3, 16(s1)
  LW a4, 20(s1)
  CALL dfs
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb32:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb33
bb33:   # loop depth 1
  CALL getint
  ADDIW s0, s0, 1
  SH2ADD t0, a0, s1
  LW t1, 0(t0)
  ADDIW t1, t1, 1
  SW t1, 0(t0)
  BLT s0, s2, bb34
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
