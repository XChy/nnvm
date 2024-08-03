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
dfs:
  ADDI sp, sp, -80
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
  ADD s2, a0, zero
  ADD s4, a1, zero
  ADD s3, a2, zero
  ADD s5, a3, zero
  ADD s1, a4, zero
  ADD s6, a5, zero
  LUI a0, 718
  ADDIW a0, a0, -1600
  MULW a1, s2, a0
  LA a0, dp
  ADD a1, a0, a1
  LUI a0, 40
  ADDIW a0, a0, -544
  MULW a0, s4, a0
  ADD a1, a1, a0
  LUI a0, 2
  ADDIW a0, a0, 880
  MULW a0, s3, a0
  ADD a1, a1, a0
  ADDI a0, zero, 504
  MULW a0, s5, a0
  ADD a1, a1, a0
  ADDI a0, zero, 28
  MULW a0, s1, a0
  ADD a0, a1, a0
  SLLIW a1, s6, 2
  ADD s0, a0, a1
  LW a0, 0(s0)
  XORI a1, a0, -1
  BNE a1, zero, bb31
  # implict jump to bb1
bb1:
  ADDW a0, s2, s4
  ADDW a0, a0, s3
  ADDW a0, a0, s5
  ADDW a0, a0, s1
  SLTIU a0, a0, 1
  BNE a0, zero, bb30
  # implict jump to bb2
bb2:
  BNE s2, zero, bb26
  # implict jump to bb3
bb3:
  ADD a0, zero, zero
  # implict jump to bb4
bb4:
  ADD s7, a0, zero
  BNE s4, zero, bb22
  # implict jump to bb5
bb5:
  ADD a0, s7, zero
  # implict jump to bb6
bb6:
  ADD s7, a0, zero
  BNE s3, zero, bb18
  # implict jump to bb7
bb7:
  ADD a0, s7, zero
  # implict jump to bb8
bb8:
  ADD s7, a0, zero
  BNE s5, zero, bb14
  # implict jump to bb9
bb9:
  ADD a0, s7, zero
  # implict jump to bb10
bb10:
  ADD s6, a0, zero
  BNE s1, zero, bb13
  # implict jump to bb11
bb11:
  ADD t0, s6, zero
  # implict jump to bb12
bb12:
  ADD t1, t0, zero
  LUI t0, 244141
  ADDIW t0, t0, -1529
  REMW t0, t1, t0
  SW t0, 0(s0)
  ADD a0, t0, zero
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb13:
  ADDIW a3, s5, 1
  ADDI a0, zero, 1
  SUBW a4, s1, a0
  ADD a0, s2, zero
  ADD a1, s4, zero
  ADD a2, s3, zero
  ADDI a5, zero, 5
  CALL dfs
  ADD t0, a0, zero
  MULW t0, s1, t0
  ADDW t1, s6, t0
  LUI t0, 244141
  ADDIW t0, t0, -1529
  REMW t0, t1, t0
  JAL zero, bb12
bb14:
  XORI a0, s6, 5
  SLTIU a0, a0, 1
  BNE a0, zero, bb17
  # implict jump to bb15
bb15:
  ADD a0, zero, zero
  # implict jump to bb16
bb16:
  SUBW s6, s5, a0
  ADDIW a2, s3, 1
  ADDI a0, zero, 1
  SUBW a3, s5, a0
  ADD a0, s2, zero
  ADD a1, s4, zero
  ADD a4, s1, zero
  ADDI a5, zero, 4
  CALL dfs
  MULW a0, s6, a0
  ADDW a1, s7, a0
  LUI a0, 244141
  ADDIW a0, a0, -1529
  REMW a0, a1, a0
  JAL zero, bb10
bb17:
  ADDI a0, zero, 1
  JAL zero, bb16
bb18:
  XORI a0, s6, 4
  SLTIU a0, a0, 1
  BNE a0, zero, bb21
  # implict jump to bb19
bb19:
  ADD a0, zero, zero
  # implict jump to bb20
bb20:
  SUBW s8, s3, a0
  ADDIW a1, s4, 1
  ADDI a0, zero, 1
  SUBW a2, s3, a0
  ADD a0, s2, zero
  ADD a3, s5, zero
  ADD a4, s1, zero
  ADDI a5, zero, 3
  CALL dfs
  MULW a0, s8, a0
  ADDW a1, s7, a0
  LUI a0, 244141
  ADDIW a0, a0, -1529
  REMW a0, a1, a0
  JAL zero, bb8
bb21:
  ADDI a0, zero, 1
  JAL zero, bb20
bb22:
  XORI a0, s6, 3
  SLTIU a0, a0, 1
  BNE a0, zero, bb25
  # implict jump to bb23
bb23:
  ADD a0, zero, zero
  # implict jump to bb24
bb24:
  SUBW s8, s4, a0
  ADDIW a2, s2, 1
  ADDI a0, zero, 1
  SUBW a1, s4, a0
  ADD a0, a2, zero
  ADD a2, s3, zero
  ADD a3, s5, zero
  ADD a4, s1, zero
  ADDI a5, zero, 2
  CALL dfs
  MULW a0, s8, a0
  ADDW a1, s7, a0
  LUI a0, 244141
  ADDIW a0, a0, -1529
  REMW a0, a1, a0
  JAL zero, bb6
bb25:
  ADDI a0, zero, 1
  JAL zero, bb24
bb26:
  XORI a0, s6, 2
  SLTIU a0, a0, 1
  BNE a0, zero, bb29
  # implict jump to bb27
bb27:
  ADD a0, zero, zero
  # implict jump to bb28
bb28:
  SUBW s7, s2, a0
  ADDI a0, zero, 1
  SUBW a0, s2, a0
  ADD a1, s4, zero
  ADD a2, s3, zero
  ADD a3, s5, zero
  ADD a4, s1, zero
  ADDI a5, zero, 1
  CALL dfs
  MULW a1, s7, a0
  LUI a0, 244141
  ADDIW a0, a0, -1529
  REMW a0, a1, a0
  JAL zero, bb4
bb29:
  ADDI a0, zero, 1
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb31:
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  CALL getint
  ADD s3, a0, zero
  ADD s0, zero, zero
  # implict jump to bb33
bb33:
  ADD s4, s0, zero
  ADD s0, zero, zero
  # implict jump to bb34
bb34:
  ADD s5, s0, zero
  ADD s0, zero, zero
  # implict jump to bb35
bb35:
  ADD s2, s0, zero
  ADD s0, zero, zero
  # implict jump to bb36
bb36:
  ADD s1, s0, zero
  ADD s0, zero, zero
  # implict jump to bb37
bb37:
  ADD s7, s0, zero
  LUI s0, 718
  ADDIW s0, s0, -1600
  MULW s6, s4, s0
  LA s0, dp
  ADD s6, s0, s6
  LUI s0, 40
  ADDIW s0, s0, -544
  MULW s0, s5, s0
  ADD s6, s6, s0
  LUI s0, 2
  ADDIW s0, s0, 880
  MULW s0, s2, s0
  ADD s6, s6, s0
  ADDI s0, zero, 504
  MULW s0, s1, s0
  ADD s6, s6, s0
  ADDI s0, zero, 28
  MULW s0, s7, s0
  ADD s6, s6, s0
  ADDI s0, zero, -1
  SW s0, 0(s6)
  ADDI s0, zero, -1
  SW s0, 4(s6)
  ADDI s0, zero, -1
  SW s0, 8(s6)
  ADDI s0, zero, -1
  SW s0, 12(s6)
  ADDI s0, zero, -1
  SW s0, 16(s6)
  ADDI s0, zero, -1
  SW s0, 20(s6)
  ADDI s0, zero, -1
  SW s0, 24(s6)
  ADDIW s6, s7, 1
  SLTI s0, s6, 18
  BNE s0, zero, bb51
  # implict jump to bb38
bb38:
  ADDIW s1, s1, 1
  SLTI s0, s1, 18
  BNE s0, zero, bb50
  # implict jump to bb39
bb39:
  ADDIW s1, s2, 1
  SLTI s0, s1, 18
  BNE s0, zero, bb49
  # implict jump to bb40
bb40:
  ADDIW s1, s5, 1
  SLTI s0, s1, 18
  BNE s0, zero, bb48
  # implict jump to bb41
bb41:
  ADDIW s1, s4, 1
  SLTI s0, s1, 18
  BNE s0, zero, bb47
  # implict jump to bb42
bb42:
  BLT zero, s3, bb44
  # implict jump to bb43
bb43:
  LA a0, cns
  LW a5, 4(a0)
  LA a0, cns
  LW a1, 8(a0)
  LA a0, cns
  LW a2, 12(a0)
  LA a0, cns
  LW a3, 16(a0)
  LA a0, cns
  LW a4, 20(a0)
  ADD a0, a5, zero
  ADD a5, zero, zero
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
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb44:
  ADD s0, zero, zero
  # implict jump to bb45
bb45:
  ADD s1, s0, zero
  CALL getint
  ADD s0, a0, zero
  SLLIW s2, s0, 2
  LA s0, cns
  ADD s2, s0, s2
  LW s0, 0(s2)
  ADDIW s0, s0, 1
  SW s0, 0(s2)
  ADDIW s0, s1, 1
  BLT s0, s3, bb46
  JAL zero, bb43
bb46:
  JAL zero, bb45
bb47:
  ADD s0, s1, zero
  JAL zero, bb33
bb48:
  ADD s0, s1, zero
  JAL zero, bb34
bb49:
  ADD s0, s1, zero
  JAL zero, bb35
bb50:
  ADD s0, s1, zero
  JAL zero, bb36
bb51:
  ADD s0, s6, zero
  JAL zero, bb37
