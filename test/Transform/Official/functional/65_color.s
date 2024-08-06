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
  ADD s3, a1, zero
  ADD s4, a2, zero
  ADD s5, a3, zero
  ADD s6, a4, zero
  ADD s7, a5, zero
  LUI a0, 718
  ADDIW a0, a0, -1600
  MULW a0, s2, a0
  LA a1, dp
  ADD a0, a1, a0
  LUI a1, 40
  ADDIW a1, a1, -544
  MULW a1, s3, a1
  ADD a0, a0, a1
  LUI a1, 2
  ADDIW a1, a1, 880
  MULW a1, s4, a1
  ADD a0, a0, a1
  ADDI a1, zero, 504
  MULW a1, s5, a1
  ADD a0, a0, a1
  ADDI a1, zero, 28
  MULW a1, s6, a1
  ADD a0, a0, a1
  SLLIW a1, s7, 2
  ADD s1, a0, a1
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
  REMW a0, s0, t0
  SW a0, 0(s1)
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
bb13:   # loop depth 0
  ADDIW a3, s5, 1
  ADDI a0, zero, 1
  SUBW a4, s6, a0
  ADD a0, s2, zero
  ADD a1, s3, zero
  ADD a2, s4, zero
  ADDI a5, zero, 5
  CALL dfs
  MULW t0, s6, a0
  ADDW t0, s0, t0
  LUI t1, 244141
  ADDIW t1, t1, -1529
  REMW s0, t0, t1
  JAL zero, bb12
bb14:   # loop depth 0
  XORI a0, s7, 5
  SLTIU a0, a0, 1
  BNE a0, zero, bb17
  # implict jump to bb15
bb15:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb16
bb16:   # loop depth 0
  SUBW s7, s5, a0
  ADDIW a2, s4, 1
  ADDI a0, zero, 1
  SUBW a3, s5, a0
  ADD a0, s2, zero
  ADD a1, s3, zero
  ADD a4, s6, zero
  ADDI a5, zero, 4
  CALL dfs
  MULW a0, s7, a0
  ADDW a0, s0, a0
  LUI a1, 244141
  ADDIW a1, a1, -1529
  REMW s0, a0, a1
  JAL zero, bb10
bb17:   # loop depth 0
  ADDI a0, zero, 1
  JAL zero, bb16
bb18:   # loop depth 0
  XORI a0, s7, 4
  SLTIU a0, a0, 1
  BNE a0, zero, bb21
  # implict jump to bb19
bb19:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb20
bb20:   # loop depth 0
  SUBW s8, s4, a0
  ADDIW a1, s3, 1
  ADDI a0, zero, 1
  SUBW a2, s4, a0
  ADD a0, s2, zero
  ADD a3, s5, zero
  ADD a4, s6, zero
  ADDI a5, zero, 3
  CALL dfs
  MULW a0, s8, a0
  ADDW a0, s0, a0
  LUI a1, 244141
  ADDIW a1, a1, -1529
  REMW s0, a0, a1
  JAL zero, bb8
bb21:   # loop depth 0
  ADDI a0, zero, 1
  JAL zero, bb20
bb22:   # loop depth 0
  XORI a0, s7, 3
  SLTIU a0, a0, 1
  BNE a0, zero, bb25
  # implict jump to bb23
bb23:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb24
bb24:   # loop depth 0
  SUBW s8, s3, a0
  ADDIW a0, s2, 1
  ADDI a1, zero, 1
  SUBW a1, s3, a1
  ADD a2, s4, zero
  ADD a3, s5, zero
  ADD a4, s6, zero
  ADDI a5, zero, 2
  CALL dfs
  MULW a0, s8, a0
  ADDW a0, s0, a0
  LUI a1, 244141
  ADDIW a1, a1, -1529
  REMW s0, a0, a1
  JAL zero, bb6
bb25:   # loop depth 0
  ADDI a0, zero, 1
  JAL zero, bb24
bb26:   # loop depth 0
  XORI a0, s7, 2
  SLTIU a0, a0, 1
  BNE a0, zero, bb29
  # implict jump to bb27
bb27:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb28
bb28:   # loop depth 0
  SUBW s0, s2, a0
  ADDI a0, zero, 1
  SUBW a0, s2, a0
  ADD a1, s3, zero
  ADD a2, s4, zero
  ADD a3, s5, zero
  ADD a4, s6, zero
  ADDI a5, zero, 1
  CALL dfs
  MULW a0, s0, a0
  LUI a1, 244141
  ADDIW a1, a1, -1529
  REMW s0, a0, a1
  JAL zero, bb4
bb29:   # loop depth 0
  ADDI a0, zero, 1
  JAL zero, bb28
bb30:   # loop depth 0
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
bb31:   # loop depth 0
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
main:   # loop depth 0
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
  ADD s2, a0, zero
  ADD s3, zero, zero
  # implict jump to bb33
bb33:   # loop depth 1
  ADD s4, zero, zero
  # implict jump to bb34
bb34:   # loop depth 2
  ADD s5, zero, zero
  # implict jump to bb35
bb35:   # loop depth 3
  ADD s1, zero, zero
  # implict jump to bb36
bb36:   # loop depth 4
  ADD s0, zero, zero
  # implict jump to bb37
bb37:   # loop depth 5
  LUI s6, 718
  ADDIW s6, s6, -1600
  MULW s6, s3, s6
  LA s7, dp
  ADD s6, s7, s6
  LUI s7, 40
  ADDIW s7, s7, -544
  MULW s7, s4, s7
  ADD s6, s6, s7
  LUI s7, 2
  ADDIW s7, s7, 880
  MULW s7, s5, s7
  ADD s6, s6, s7
  ADDI s7, zero, 504
  MULW s7, s1, s7
  ADD s6, s6, s7
  ADDI s7, zero, 28
  MULW s7, s0, s7
  ADD s6, s6, s7
  ADDI s7, zero, -1
  SW s7, 0(s6)
  ADDI s7, zero, -1
  SW s7, 4(s6)
  ADDI s7, zero, -1
  SW s7, 8(s6)
  ADDI s7, zero, -1
  SW s7, 12(s6)
  ADDI s7, zero, -1
  SW s7, 16(s6)
  ADDI s7, zero, -1
  SW s7, 20(s6)
  ADDI s7, zero, -1
  SW s7, 24(s6)
  ADDIW s0, s0, 1
  SLTI s6, s0, 18
  BNE s6, zero, bb51
  # implict jump to bb38
bb38:   # loop depth 4
  ADDIW s1, s1, 1
  SLTI s0, s1, 18
  BNE s0, zero, bb50
  # implict jump to bb39
bb39:   # loop depth 3
  ADDIW s5, s5, 1
  SLTI s0, s5, 18
  BNE s0, zero, bb49
  # implict jump to bb40
bb40:   # loop depth 2
  ADDIW s4, s4, 1
  SLTI s0, s4, 18
  BNE s0, zero, bb48
  # implict jump to bb41
bb41:   # loop depth 1
  ADDIW s3, s3, 1
  SLTI s0, s3, 18
  BNE s0, zero, bb47
  # implict jump to bb42
bb42:   # loop depth 0
  BLT zero, s2, bb44
  # implict jump to bb43
bb43:   # loop depth 0
  LA a0, cns
  LW a0, 4(a0)
  LA a1, cns
  LW a1, 8(a1)
  LA a2, cns
  LW a2, 12(a2)
  LA a3, cns
  LW a3, 16(a3)
  LA a4, cns
  LW a4, 20(a4)
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
bb44:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb45
bb45:   # loop depth 1
  CALL getint
  ADD s1, a0, zero
  SLLIW s1, s1, 2
  LA s3, cns
  ADD s1, s3, s1
  LW s3, 0(s1)
  ADDIW s3, s3, 1
  SW s3, 0(s1)
  ADDIW s0, s0, 1
  BLT s0, s2, bb46
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
