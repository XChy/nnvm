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
  SD s5, 8(sp)
  SD s11, 16(sp)
  SD s10, 24(sp)
  SD ra, 32(sp)
  SD s9, 40(sp)
  SD s8, 48(sp)
  SD s7, 56(sp)
  SD s6, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD t4, a5, zero
  SW t4, 0(sp)
  LUI s6, 718
  ADDI s6, s6, -1600
  MULW s7, s0, s6
  LA s6, dp
  ADD s8, s6, s7
  LUI s6, 40
  ADDI s6, s6, -544
  MULW s7, s1, s6
  ADD s6, s8, s7
  LUI s7, 2
  ADDI s7, s7, 880
  MULW s8, s2, s7
  ADD s7, s6, s8
  ADDI s6, zero, 504
  MULW s8, s3, s6
  ADD s6, s7, s8
  ADDI s7, zero, 28
  MULW s8, s4, s7
  ADD s7, s6, s8
  ADDI s6, zero, 4
  LW t4, 0(sp)
  MULW s8, t4, s6
  ADD s6, s7, s8
  LW s7, 0(s6)
  ADDI s6, zero, 0
  ADDI s8, zero, 1
  SUBW s9, s6, s8
  XOR s6, s7, s9
  SLTU s7, zero, s6
  BNE s7, zero, bb1
  JAL zero, bb2
bb1:
  LUI s6, 718
  ADDI s6, s6, -1600
  MULW s7, s0, s6
  LA s6, dp
  ADD s8, s6, s7
  LUI s6, 40
  ADDI s6, s6, -544
  MULW s7, s1, s6
  ADD s6, s8, s7
  LUI s7, 2
  ADDI s7, s7, 880
  MULW s8, s2, s7
  ADD s7, s6, s8
  ADDI s6, zero, 504
  MULW s8, s3, s6
  ADD s6, s7, s8
  ADDI s7, zero, 28
  MULW s8, s4, s7
  ADD s7, s6, s8
  ADDI s6, zero, 4
  LW t4, 0(sp)
  MULW s8, t4, s6
  ADD s6, s7, s8
  LW s7, 0(s6)
  ADD a0, s7, zero
  LD s5, 8(sp)
  LD s11, 16(sp)
  LD s10, 24(sp)
  LD ra, 32(sp)
  LD s9, 40(sp)
  LD s8, 48(sp)
  LD s7, 56(sp)
  LD s6, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb2:
  ADDW s6, s0, s1
  ADDW s7, s6, s2
  ADDW s6, s7, s3
  ADDW s7, s6, s4
  XOR s6, s7, zero
  SLTIU s7, s6, 1
  BNE s7, zero, bb3
  JAL zero, bb4
bb3:
  ADDI a0, zero, 1
  LD s5, 8(sp)
  LD s11, 16(sp)
  LD s10, 24(sp)
  LD ra, 32(sp)
  LD s9, 40(sp)
  LD s8, 48(sp)
  LD s7, 56(sp)
  LD s6, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb4:
  XOR s6, s0, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb5
  JAL zero, bb15
bb5:
  LW t4, 0(sp)
  ADD a0, t4, zero
  ADDI a1, zero, 2
  CALL equal
  ADD s6, a0, zero
  SUBW s7, s0, s6
  ADDI s6, zero, 1
  SUBW s8, s0, s6
  ADD a0, s8, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  ADD a4, s4, zero
  ADDI a5, zero, 1
  CALL dfs
  ADD s6, a0, zero
  MULW s8, s7, s6
  ADDW s6, zero, s8
  LA s7, mod
  LW s8, 0(s7)
  REMW s7, s6, s8
  ADD s6, s7, zero
  JAL zero, bb6
bb6:
  XOR s7, s1, zero
  SLTU s8, zero, s7
  BNE s8, zero, bb7
  JAL zero, bb16
bb7:
  LW t4, 0(sp)
  ADD a0, t4, zero
  ADDI a1, zero, 3
  CALL equal
  ADD s7, a0, zero
  SUBW s8, s1, s7
  ADDIW s7, s0, 1
  ADDI s9, zero, 1
  SUBW s10, s1, s9
  ADD a0, s7, zero
  ADD a1, s10, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  ADD a4, s4, zero
  ADDI a5, zero, 2
  CALL dfs
  ADD s7, a0, zero
  MULW s9, s8, s7
  ADDW s7, s6, s9
  LA s8, mod
  LW s9, 0(s8)
  REMW s8, s7, s9
  ADD s7, s8, zero
  JAL zero, bb8
bb8:
  XOR s8, s2, zero
  SLTU s9, zero, s8
  BNE s9, zero, bb9
  JAL zero, bb17
bb9:
  LW t4, 0(sp)
  ADD a0, t4, zero
  ADDI a1, zero, 4
  CALL equal
  ADD s8, a0, zero
  SUBW s9, s2, s8
  ADDIW s8, s1, 1
  ADDI s10, zero, 1
  SUBW s11, s2, s10
  ADD a0, s0, zero
  ADD a1, s8, zero
  ADD a2, s11, zero
  ADD a3, s3, zero
  ADD a4, s4, zero
  ADDI a5, zero, 3
  CALL dfs
  ADD s8, a0, zero
  MULW s10, s9, s8
  ADDW s8, s7, s10
  LA s9, mod
  LW s10, 0(s9)
  REMW s9, s8, s10
  ADD s8, s9, zero
  JAL zero, bb10
bb10:
  XOR s9, s3, zero
  SLTU s10, zero, s9
  BNE s10, zero, bb11
  JAL zero, bb18
bb11:
  LW t4, 0(sp)
  ADD a0, t4, zero
  ADDI a1, zero, 5
  CALL equal
  ADD s9, a0, zero
  SUBW s10, s3, s9
  ADDIW s9, s2, 1
  ADDI s11, zero, 1
  SUBW s5, s3, s11
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s9, zero
  ADD a3, s5, zero
  ADD a4, s4, zero
  ADDI a5, zero, 4
  CALL dfs
  ADD s5, a0, zero
  MULW s9, s10, s5
  ADDW s5, s8, s9
  LA s9, mod
  LW s10, 0(s9)
  REMW s9, s5, s10
  ADD s5, s9, zero
  JAL zero, bb12
bb12:
  XOR s9, s4, zero
  SLTU s10, zero, s9
  BNE s10, zero, bb13
  JAL zero, bb19
bb13:
  ADDIW s9, s3, 1
  ADDI s10, zero, 1
  SUBW s11, s4, s10
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  ADD a3, s9, zero
  ADD a4, s11, zero
  ADDI a5, zero, 5
  CALL dfs
  ADD s9, a0, zero
  MULW s10, s4, s9
  ADDW s9, s5, s10
  LA s10, mod
  LW s11, 0(s10)
  REMW s10, s9, s11
  ADD s9, s10, zero
  JAL zero, bb14
bb14:
  LUI s10, 718
  ADDI s10, s10, -1600
  MULW s11, s0, s10
  LA s10, dp
  ADD t0, s10, s11
  LUI s10, 40
  ADDI s10, s10, -544
  MULW s11, s1, s10
  ADD s10, t0, s11
  LUI s11, 2
  ADDI s11, s11, 880
  MULW t0, s2, s11
  ADD s11, s10, t0
  ADDI s10, zero, 504
  MULW t0, s3, s10
  ADD s10, s11, t0
  ADDI s11, zero, 28
  MULW t0, s4, s11
  ADD s11, s10, t0
  ADDI s10, zero, 4
  LW t4, 0(sp)
  MULW t0, t4, s10
  ADD s10, s11, t0
  LA s11, mod
  LW t0, 0(s11)
  REMW s11, s9, t0
  SW s11, 0(s10)
  LUI s10, 718
  ADDI s10, s10, -1600
  MULW s11, s0, s10
  LA s10, dp
  ADD t0, s10, s11
  LUI s10, 40
  ADDI s10, s10, -544
  MULW s11, s1, s10
  ADD s10, t0, s11
  LUI s11, 2
  ADDI s11, s11, 880
  MULW t0, s2, s11
  ADD s11, s10, t0
  ADDI s10, zero, 504
  MULW t0, s3, s10
  ADD s10, s11, t0
  ADDI s11, zero, 28
  MULW t0, s4, s11
  ADD s11, s10, t0
  ADDI s10, zero, 4
  LW t4, 0(sp)
  MULW t0, t4, s10
  ADD s10, s11, t0
  LW s11, 0(s10)
  ADD a0, s11, zero
  LD s5, 8(sp)
  LD s11, 16(sp)
  LD s10, 24(sp)
  LD ra, 32(sp)
  LD s9, 40(sp)
  LD s8, 48(sp)
  LD s7, 56(sp)
  LD s6, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb15:
  ADD s6, zero, zero
  JAL zero, bb6
bb16:
  ADD s7, s6, zero
  JAL zero, bb8
bb17:
  ADD s8, s7, zero
  JAL zero, bb10
bb18:
  ADD s5, s8, zero
  JAL zero, bb12
bb19:
  ADD s9, s5, zero
  JAL zero, bb14
equal:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  XOR s2, s0, s1
  SLTIU s0, s2, 1
  BNE s0, zero, bb21
  JAL zero, bb22
bb21:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb22:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -208
  SD ra, 96(sp)
  SD s9, 104(sp)
  SD s10, 112(sp)
  SD s7, 120(sp)
  SD s6, 128(sp)
  SD s1, 136(sp)
  SD s0, 144(sp)
  SD s5, 152(sp)
  SD s11, 160(sp)
  SD s4, 168(sp)
  SD s8, 176(sp)
  SD s3, 184(sp)
  SD s2, 192(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 72(sp)
  ADD t4, zero, zero
  SW t4, 56(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  JAL zero, bb24
bb24:
  LA s6, maxn
  LW s7, 0(s6)
  LW t4, 8(sp)
  SLT s6, t4, s7
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb25
  JAL zero, bb26
bb25:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 80(sp)
  JAL zero, bb27
bb26:
  ADD s0, zero, zero
  JAL zero, bb42
bb27:
  LA s11, maxn
  LW s0, 0(s11)
  LW t4, 80(sp)
  SLT s11, t4, s0
  XOR s0, s11, zero
  SLTU s11, zero, s0
  BNE s11, zero, bb28
  JAL zero, bb29
bb28:
  LW t4, 64(sp)
  ADD s0, t4, zero
  LW t4, 48(sp)
  ADD s11, t4, zero
  LW t4, 32(sp)
  ADD s4, t4, zero
  ADD t4, zero, zero
  SW t4, 88(sp)
  JAL zero, bb30
bb29:
  LW t4, 8(sp)
  ADDIW s0, t4, 1
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  ADD t4, s0, zero
  SW t4, 8(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  JAL zero, bb24
bb30:
  LA s5, maxn
  LW s8, 0(s5)
  LW t4, 88(sp)
  SLT s5, t4, s8
  XOR s8, s5, zero
  SLTU s5, zero, s8
  BNE s5, zero, bb31
  JAL zero, bb32
bb31:
  ADD s5, s0, zero
  ADD s8, s11, zero
  ADD s3, zero, zero
  JAL zero, bb33
bb32:
  LW t4, 80(sp)
  ADDIW s1, t4, 1
  ADD t4, s0, zero
  SW t4, 64(sp)
  ADD t4, s11, zero
  SW t4, 48(sp)
  ADD t4, s4, zero
  SW t4, 32(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  ADD t4, s1, zero
  SW t4, 80(sp)
  JAL zero, bb27
bb33:
  LA s7, maxn
  LW s2, 0(s7)
  SLT s7, s3, s2
  XOR s2, s7, zero
  SLTU s7, zero, s2
  BNE s7, zero, bb34
  JAL zero, bb35
bb34:
  ADD s2, s5, zero
  ADD s7, zero, zero
  JAL zero, bb36
bb35:
  LW t4, 88(sp)
  ADDIW s1, t4, 1
  ADD s0, s5, zero
  ADD s11, s8, zero
  ADD s4, s3, zero
  ADD t4, s1, zero
  SW t4, 88(sp)
  JAL zero, bb30
bb36:
  LA s6, maxn
  LW s1, 0(s6)
  SLT s6, s7, s1
  XOR s1, s6, zero
  SLTU s6, zero, s1
  BNE s6, zero, bb37
  JAL zero, bb38
bb37:
  ADD s1, zero, zero
  JAL zero, bb39
bb38:
  ADDIW s1, s3, 1
  ADD s5, s2, zero
  ADD s8, s7, zero
  ADD s3, s1, zero
  JAL zero, bb33
bb39:
  SLTI s6, s1, 7
  XOR s10, s6, zero
  SLTU s6, zero, s10
  BNE s6, zero, bb40
  JAL zero, bb41
bb40:
  LUI s6, 718
  ADDI s6, s6, -1600
  LW t4, 8(sp)
  MULW s10, t4, s6
  LA s6, dp
  ADD s9, s6, s10
  LUI s6, 40
  ADDI s6, s6, -544
  LW t4, 80(sp)
  MULW s10, t4, s6
  ADD s6, s9, s10
  LUI s9, 2
  ADDI s9, s9, 880
  LW t4, 88(sp)
  MULW s10, t4, s9
  ADD s9, s6, s10
  ADDI s6, zero, 504
  MULW s10, s3, s6
  ADD s6, s9, s10
  ADDI s9, zero, 28
  MULW s10, s7, s9
  ADD s9, s6, s10
  ADDI s6, zero, 4
  MULW s10, s1, s6
  ADD s6, s9, s10
  ADDI s9, zero, 1
  SUB s10, zero, s9
  SW s10, 0(s6)
  ADDIW s6, s1, 1
  ADD s1, s6, zero
  JAL zero, bb39
bb41:
  ADDIW s6, s7, 1
  ADD s2, s1, zero
  ADD s7, s6, zero
  JAL zero, bb36
bb42:
  LW t4, 0(sp)
  SLT s1, s0, t4
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb43
  JAL zero, bb44
bb43:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, list
  ADD s3, s1, s2
  CALL getint
  ADD s1, a0, zero
  SW s1, 0(s3)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, list
  ADD s3, s1, s2
  LW s1, 0(s3)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, cns
  ADD s2, s1, s3
  ADDI s1, zero, 4
  MULW s3, s0, s1
  LA s1, list
  ADD s4, s1, s3
  LW s1, 0(s4)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  LA s1, cns
  ADD s3, s1, s4
  LW s1, 0(s3)
  ADDIW s3, s1, 1
  SW s3, 0(s2)
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb42
bb44:
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
  ADD a0, s0, zero
  CALL putint
  ADD a0, s0, zero
  LD ra, 96(sp)
  LD s9, 104(sp)
  LD s10, 112(sp)
  LD s7, 120(sp)
  LD s6, 128(sp)
  LD s1, 136(sp)
  LD s0, 144(sp)
  LD s5, 152(sp)
  LD s11, 160(sp)
  LD s4, 168(sp)
  LD s8, 176(sp)
  LD s3, 184(sp)
  LD s2, 192(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
