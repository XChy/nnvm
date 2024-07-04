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
  ADDI sp, sp, -144
  SD s8, 56(sp)
  SD ra, 64(sp)
  SD s7, 72(sp)
  SD s6, 80(sp)
  SD s0, 88(sp)
  SD s5, 96(sp)
  SD s1, 104(sp)
  SD s2, 112(sp)
  SD s3, 120(sp)
  SD s4, 128(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  SW s0, 48(sp)
  SW s1, 40(sp)
  SW s2, 32(sp)
  SW s3, 24(sp)
  SW s4, 16(sp)
  SW s5, 8(sp)
  LUI s6, 718
  ADDI s6, s6, -1600
  MULW s7, s0, s6
  LA s0, dp
  ADD s6, s0, s7
  LUI s0, 40
  ADDI s0, s0, -544
  MULW s7, s1, s0
  ADD s0, s6, s7
  LUI s1, 2
  ADDI s1, s1, 880
  MULW s6, s2, s1
  ADD s1, s0, s6
  ADDI s0, zero, 504
  MULW s2, s3, s0
  ADD s0, s1, s2
  ADDI s1, zero, 28
  MULW s2, s4, s1
  ADD s1, s0, s2
  ADDI s0, zero, 4
  MULW s2, s5, s0
  ADD s0, s1, s2
  LW s1, 0(s0)
  ADDI s0, zero, 0
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  XOR s0, s1, s3
  SLTU s1, zero, s0
  BNE s1, zero, bb1
  JAL zero, bb2
bb1:
  LW s0, 48(sp)
  LUI s1, 718
  ADDI s1, s1, -1600
  MULW s2, s0, s1
  LA s0, dp
  ADD s1, s0, s2
  LW s0, 40(sp)
  LUI s2, 40
  ADDI s2, s2, -544
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 32(sp)
  LUI s2, 2
  ADDI s2, s2, 880
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 24(sp)
  ADDI s2, zero, 504
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 16(sp)
  ADDI s2, zero, 28
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(s0)
  ADD a0, s1, zero
  LD s8, 56(sp)
  LD ra, 64(sp)
  LD s7, 72(sp)
  LD s6, 80(sp)
  LD s0, 88(sp)
  LD s5, 96(sp)
  LD s1, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb2:
  LW s0, 48(sp)
  LW s1, 40(sp)
  ADDW s2, s0, s1
  LW s0, 32(sp)
  ADDW s1, s2, s0
  LW s0, 24(sp)
  ADDW s2, s1, s0
  LW s0, 16(sp)
  ADDW s1, s2, s0
  XOR s0, s1, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb3
  JAL zero, bb4
bb3:
  ADDI a0, zero, 1
  LD s8, 56(sp)
  LD ra, 64(sp)
  LD s7, 72(sp)
  LD s6, 80(sp)
  LD s0, 88(sp)
  LD s5, 96(sp)
  LD s1, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb4:
  SW zero, 0(sp)
  LW s0, 48(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb5
  JAL zero, bb6
bb5:
  LW s0, 0(sp)
  LW s1, 48(sp)
  LW s2, 8(sp)
  ADD a0, s2, zero
  ADDI a1, zero, 2
  CALL equal
  ADD s2, a0, zero
  SUBW s3, s1, s2
  LW s1, 48(sp)
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  LW s1, 40(sp)
  LW s2, 32(sp)
  LW s5, 24(sp)
  LW s6, 16(sp)
  ADD a0, s4, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  ADD a3, s5, zero
  ADD a4, s6, zero
  ADDI a5, zero, 1
  CALL dfs
  ADD s1, a0, zero
  MULW s2, s3, s1
  ADDW s1, s0, s2
  LA s0, mod
  LW s2, 0(s0)
  REMW s0, s1, s2
  SW s0, 0(sp)
  JAL zero, bb6
bb6:
  LW s0, 40(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb7
  JAL zero, bb8
bb7:
  LW s0, 0(sp)
  LW s1, 40(sp)
  LW s2, 8(sp)
  ADD a0, s2, zero
  ADDI a1, zero, 3
  CALL equal
  ADD s2, a0, zero
  SUBW s3, s1, s2
  LW s1, 48(sp)
  ADDIW s2, s1, 1
  LW s1, 40(sp)
  ADDI s4, zero, 1
  SUBW s5, s1, s4
  LW s1, 32(sp)
  LW s4, 24(sp)
  LW s6, 16(sp)
  ADD a0, s2, zero
  ADD a1, s5, zero
  ADD a2, s1, zero
  ADD a3, s4, zero
  ADD a4, s6, zero
  ADDI a5, zero, 2
  CALL dfs
  ADD s1, a0, zero
  MULW s2, s3, s1
  ADDW s1, s0, s2
  LA s0, mod
  LW s2, 0(s0)
  REMW s0, s1, s2
  SW s0, 0(sp)
  JAL zero, bb8
bb8:
  LW s0, 32(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb9
  JAL zero, bb10
bb9:
  LW s0, 0(sp)
  LW s1, 32(sp)
  LW s2, 8(sp)
  ADD a0, s2, zero
  ADDI a1, zero, 4
  CALL equal
  ADD s2, a0, zero
  SUBW s3, s1, s2
  LW s1, 48(sp)
  LW s2, 40(sp)
  ADDIW s4, s2, 1
  LW s2, 32(sp)
  ADDI s5, zero, 1
  SUBW s6, s2, s5
  LW s2, 24(sp)
  LW s5, 16(sp)
  ADD a0, s1, zero
  ADD a1, s4, zero
  ADD a2, s6, zero
  ADD a3, s2, zero
  ADD a4, s5, zero
  ADDI a5, zero, 3
  CALL dfs
  ADD s1, a0, zero
  MULW s2, s3, s1
  ADDW s1, s0, s2
  LA s0, mod
  LW s2, 0(s0)
  REMW s0, s1, s2
  SW s0, 0(sp)
  JAL zero, bb10
bb10:
  LW s0, 24(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb11
  JAL zero, bb12
bb11:
  LW s0, 0(sp)
  LW s1, 24(sp)
  LW s2, 8(sp)
  ADD a0, s2, zero
  ADDI a1, zero, 5
  CALL equal
  ADD s2, a0, zero
  SUBW s3, s1, s2
  LW s1, 48(sp)
  LW s2, 40(sp)
  LW s4, 32(sp)
  ADDIW s5, s4, 1
  LW s4, 24(sp)
  ADDI s6, zero, 1
  SUBW s7, s4, s6
  LW s4, 16(sp)
  ADD a0, s1, zero
  ADD a1, s2, zero
  ADD a2, s5, zero
  ADD a3, s7, zero
  ADD a4, s4, zero
  ADDI a5, zero, 4
  CALL dfs
  ADD s1, a0, zero
  MULW s2, s3, s1
  ADDW s1, s0, s2
  LA s0, mod
  LW s2, 0(s0)
  REMW s0, s1, s2
  SW s0, 0(sp)
  JAL zero, bb12
bb12:
  LW s0, 16(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb13
  JAL zero, bb14
bb13:
  LW s0, 0(sp)
  LW s1, 16(sp)
  LW s2, 48(sp)
  LW s3, 40(sp)
  LW s4, 32(sp)
  LW s5, 24(sp)
  ADDIW s6, s5, 1
  LW s5, 16(sp)
  ADDI s7, zero, 1
  SUBW s8, s5, s7
  ADD a0, s2, zero
  ADD a1, s3, zero
  ADD a2, s4, zero
  ADD a3, s6, zero
  ADD a4, s8, zero
  ADDI a5, zero, 5
  CALL dfs
  ADD s2, a0, zero
  MULW s3, s1, s2
  ADDW s1, s0, s3
  LA s0, mod
  LW s2, 0(s0)
  REMW s0, s1, s2
  SW s0, 0(sp)
  JAL zero, bb14
bb14:
  LW s0, 48(sp)
  LUI s1, 718
  ADDI s1, s1, -1600
  MULW s2, s0, s1
  LA s0, dp
  ADD s1, s0, s2
  LW s0, 40(sp)
  LUI s2, 40
  ADDI s2, s2, -544
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 32(sp)
  LUI s2, 2
  ADDI s2, s2, 880
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 24(sp)
  ADDI s2, zero, 504
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 16(sp)
  ADDI s2, zero, 28
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(sp)
  LA s2, mod
  LW s3, 0(s2)
  REMW s2, s1, s3
  SW s2, 0(s0)
  LW s0, 48(sp)
  LUI s1, 718
  ADDI s1, s1, -1600
  MULW s2, s0, s1
  LA s0, dp
  ADD s1, s0, s2
  LW s0, 40(sp)
  LUI s2, 40
  ADDI s2, s2, -544
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 32(sp)
  LUI s2, 2
  ADDI s2, s2, 880
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 24(sp)
  ADDI s2, zero, 504
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 16(sp)
  ADDI s2, zero, 28
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(s0)
  ADD a0, s1, zero
  LD s8, 56(sp)
  LD ra, 64(sp)
  LD s7, 72(sp)
  LD s6, 80(sp)
  LD s0, 88(sp)
  LD s5, 96(sp)
  LD s1, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
equal:
  ADDI sp, sp, -48
  SD ra, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 8(sp)
  SW s1, 0(sp)
  XOR s2, s0, s1
  SLTIU s0, s2, 1
  BNE s0, zero, bb16
  JAL zero, bb17
bb16:
  ADDI a0, zero, 1
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb17:
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -128
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s5, 80(sp)
  SD s1, 88(sp)
  SD s6, 96(sp)
  SD s2, 104(sp)
  SD s3, 112(sp)
  SD s4, 120(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 56(sp)
  SW zero, 48(sp)
  JAL zero, bb19
bb19:
  LW s0, 48(sp)
  LA s1, maxn
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb20
  JAL zero, bb21
bb20:
  SW zero, 40(sp)
  JAL zero, bb22
bb21:
  SW zero, 48(sp)
  JAL zero, bb37
bb22:
  LW s0, 40(sp)
  LA s1, maxn
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb23
  JAL zero, bb24
bb23:
  SW zero, 32(sp)
  JAL zero, bb25
bb24:
  LW s0, 48(sp)
  ADDIW s1, s0, 1
  SW s1, 48(sp)
  JAL zero, bb19
bb25:
  LW s0, 32(sp)
  LA s1, maxn
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb26
  JAL zero, bb27
bb26:
  SW zero, 24(sp)
  JAL zero, bb28
bb27:
  LW s0, 40(sp)
  ADDIW s1, s0, 1
  SW s1, 40(sp)
  JAL zero, bb22
bb28:
  LW s0, 24(sp)
  LA s1, maxn
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb29
  JAL zero, bb30
bb29:
  SW zero, 16(sp)
  JAL zero, bb31
bb30:
  LW s0, 32(sp)
  ADDIW s1, s0, 1
  SW s1, 32(sp)
  JAL zero, bb25
bb31:
  LW s0, 16(sp)
  LA s1, maxn
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb32
  JAL zero, bb33
bb32:
  SW zero, 8(sp)
  JAL zero, bb34
bb33:
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  SW s1, 24(sp)
  JAL zero, bb28
bb34:
  LW s0, 8(sp)
  SLTI s1, s0, 7
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb35
  JAL zero, bb36
bb35:
  LW s0, 48(sp)
  LUI s1, 718
  ADDI s1, s1, -1600
  MULW s2, s0, s1
  LA s0, dp
  ADD s1, s0, s2
  LW s0, 40(sp)
  LUI s2, 40
  ADDI s2, s2, -544
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 32(sp)
  LUI s2, 2
  ADDI s2, s2, 880
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 24(sp)
  ADDI s2, zero, 504
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 16(sp)
  ADDI s2, zero, 28
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  ADDI s1, zero, 1
  SUB s2, zero, s1
  SW s2, 0(s0)
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb34
bb36:
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  JAL zero, bb31
bb37:
  LW s0, 48(sp)
  LW s1, 56(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb38
  JAL zero, bb39
bb38:
  LW s0, 48(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, list
  ADD s1, s0, s2
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(s1)
  LW s0, 48(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, list
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, cns
  ADD s1, s0, s2
  LW s0, 48(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, list
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, cns
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADDIW s2, s0, 1
  SW s2, 0(s1)
  LW s0, 48(sp)
  ADDIW s1, s0, 1
  SW s1, 48(sp)
  JAL zero, bb37
bb39:
  ADDI s0, zero, 4
  ADDI s1, zero, 1
  MULW s2, s0, s1
  LA s0, cns
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADDI s1, zero, 4
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LA s1, cns
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 4
  ADDI s3, zero, 3
  MULW s4, s2, s3
  LA s2, cns
  ADD s3, s2, s4
  LW s2, 0(s3)
  ADDI s3, zero, 4
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LA s3, cns
  ADD s4, s3, s5
  LW s3, 0(s4)
  ADDI s4, zero, 4
  ADDI s5, zero, 5
  MULW s6, s4, s5
  LA s4, cns
  ADD s5, s4, s6
  LW s4, 0(s5)
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  ADD a4, s4, zero
  ADD a5, zero, zero
  CALL dfs
  ADD s0, a0, zero
  SW s0, 0(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 0(sp)
  ADD a0, s0, zero
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s1, 88(sp)
  LD s6, 96(sp)
  LD s2, 104(sp)
  LD s3, 112(sp)
  LD s4, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
