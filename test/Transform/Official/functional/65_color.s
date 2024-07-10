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
  ADDI sp, sp, -160
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s11, 96(sp)
  SD s10, 104(sp)
  SD s7, 112(sp)
  SD s8, 120(sp)
  SD s9, 128(sp)
  SD ra, 136(sp)
  SD s6, 144(sp)
  ADD t4, a0, zero
  SW t4, 28(sp)
  ADD t4, a1, zero
  SW t4, 24(sp)
  ADD t4, a2, zero
  SW t4, 20(sp)
  ADD t4, a3, zero
  SW t4, 16(sp)
  ADD t4, a4, zero
  SW t4, 12(sp)
  ADD t4, a5, zero
  SW t4, 8(sp)
  LUI s6, 718
  ADDIW s6, s6, -1600
  LW t4, 28(sp)
  MULW s7, t4, s6
  LA s6, dp
  ADD s8, s6, s7
  LUI s6, 40
  ADDIW s6, s6, -544
  LW t4, 24(sp)
  MULW s7, t4, s6
  ADD s6, s8, s7
  LUI s7, 2
  ADDIW s7, s7, 880
  LW t4, 20(sp)
  MULW s8, t4, s7
  ADD s7, s6, s8
  ADDI s6, zero, 504
  LW t4, 16(sp)
  MULW s8, t4, s6
  ADD s6, s7, s8
  ADDI s7, zero, 28
  LW t4, 12(sp)
  MULW s8, t4, s7
  ADD s7, s6, s8
  LW t4, 8(sp)
  SLLIW s6, t4, 2
  ADD t4, s7, s6
  SD t4, 0(sp)
  LD t4, 0(sp)
  LW s6, 0(t4)
  XORI s7, s6, -1
  SLTU s6, zero, s7
  BNE s6, zero, bb31
  # implict jump to bb1
bb1:
  LW t4, 28(sp)
  LW t3, 24(sp)
  ADDW s6, t4, t3
  LW t4, 20(sp)
  ADDW s7, s6, t4
  LW t4, 16(sp)
  ADDW s6, s7, t4
  LW t4, 12(sp)
  ADDW s7, s6, t4
  XOR s6, s7, zero
  SLTIU s7, s6, 1
  BNE s7, zero, bb30
  # implict jump to bb2
bb2:
  LW t4, 28(sp)
  XOR s6, t4, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb26
  # implict jump to bb3
bb3:
  ADD t4, zero, zero
  SW t4, 32(sp)
  # implict jump to bb4
bb4:
  LW t4, 32(sp)
  ADD s9, t4, zero
  LW t4, 24(sp)
  XOR s10, t4, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb22
  # implict jump to bb5
bb5:
  ADD t4, s9, zero
  SW t4, 40(sp)
  # implict jump to bb6
bb6:
  LW t4, 40(sp)
  ADD s5, t4, zero
  LW t4, 20(sp)
  XOR s8, t4, zero
  SLTU s11, zero, s8
  BNE s11, zero, bb18
  # implict jump to bb7
bb7:
  ADD s1, s5, zero
  # implict jump to bb8
bb8:
  ADD s2, s1, zero
  LW t4, 16(sp)
  XOR s3, t4, zero
  SLTU s11, zero, s3
  BNE s11, zero, bb14
  # implict jump to bb9
bb9:
  ADD s0, s2, zero
  # implict jump to bb10
bb10:
  ADD s6, s0, zero
  LW t4, 12(sp)
  XOR s7, t4, zero
  SLTU s11, zero, s7
  BNE s11, zero, bb13
  # implict jump to bb11
bb11:
  ADD s4, s6, zero
  # implict jump to bb12
bb12:
  ADD s7, s4, zero
  LUI s11, 244141
  ADDIW s11, s11, -1529
  REMW t0, s7, s11
  LD t4, 0(sp)
  SW t0, 0(t4)
  ADD a0, t0, zero
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s11, 96(sp)
  LD s10, 104(sp)
  LD s7, 112(sp)
  LD s8, 120(sp)
  LD s9, 128(sp)
  LD ra, 136(sp)
  LD s6, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb13:
  LW t4, 16(sp)
  ADDIW s7, t4, 1
  ADDI s11, zero, 1
  LW t4, 12(sp)
  SUBW s4, t4, s11
  LW t4, 28(sp)
  ADD a0, t4, zero
  LW t4, 24(sp)
  ADD a1, t4, zero
  LW t4, 20(sp)
  ADD a2, t4, zero
  ADD a3, s7, zero
  ADD a4, s4, zero
  ADDI a5, zero, 5
  CALL dfs
  ADD s4, a0, zero
  LW t4, 12(sp)
  MULW s7, t4, s4
  ADDW s4, s6, s7
  LUI s7, 244141
  ADDIW s7, s7, -1529
  REMW s11, s4, s7
  ADD s4, s11, zero
  JAL zero, bb12
bb14:
  LW t4, 8(sp)
  XORI s3, t4, 5
  SLTIU s11, s3, 1
  BNE s11, zero, bb17
  # implict jump to bb15
bb15:
  ADD s3, zero, zero
  # implict jump to bb16
bb16:
  ADD s11, s3, zero
  LW t4, 16(sp)
  SUBW s0, t4, s11
  LW t4, 20(sp)
  ADDIW s11, t4, 1
  ADDI s7, zero, 1
  LW t4, 16(sp)
  SUBW s6, t4, s7
  LW t4, 28(sp)
  ADD a0, t4, zero
  LW t4, 24(sp)
  ADD a1, t4, zero
  ADD a2, s11, zero
  ADD a3, s6, zero
  LW t4, 12(sp)
  ADD a4, t4, zero
  ADDI a5, zero, 4
  CALL dfs
  ADD s6, a0, zero
  MULW s7, s0, s6
  ADDW s0, s2, s7
  LUI s6, 244141
  ADDIW s6, s6, -1529
  REMW s7, s0, s6
  ADD s0, s7, zero
  JAL zero, bb10
bb17:
  ADDI s3, zero, 1
  JAL zero, bb16
bb18:
  LW t4, 8(sp)
  XORI s8, t4, 4
  SLTIU s11, s8, 1
  BNE s11, zero, bb21
  # implict jump to bb19
bb19:
  ADD s8, zero, zero
  # implict jump to bb20
bb20:
  ADD s11, s8, zero
  LW t4, 20(sp)
  SUBW s3, t4, s11
  LW t4, 24(sp)
  ADDIW s11, t4, 1
  ADDI s2, zero, 1
  LW t4, 20(sp)
  SUBW s1, t4, s2
  LW t4, 28(sp)
  ADD a0, t4, zero
  ADD a1, s11, zero
  ADD a2, s1, zero
  LW t4, 16(sp)
  ADD a3, t4, zero
  LW t4, 12(sp)
  ADD a4, t4, zero
  ADDI a5, zero, 3
  CALL dfs
  ADD s1, a0, zero
  MULW s2, s3, s1
  ADDW s1, s5, s2
  LUI s2, 244141
  ADDIW s2, s2, -1529
  REMW s3, s1, s2
  ADD s1, s3, zero
  JAL zero, bb8
bb21:
  ADDI s8, zero, 1
  JAL zero, bb20
bb22:
  LW t4, 8(sp)
  XORI s10, t4, 3
  SLTIU s11, s10, 1
  BNE s11, zero, bb25
  # implict jump to bb23
bb23:
  ADD s10, zero, zero
  # implict jump to bb24
bb24:
  ADD s11, s10, zero
  LW t4, 24(sp)
  SUBW s8, t4, s11
  LW t4, 28(sp)
  ADDIW s11, t4, 1
  ADDI s5, zero, 1
  LW t4, 24(sp)
  SUBW s4, t4, s5
  ADD a0, s11, zero
  ADD a1, s4, zero
  LW t4, 20(sp)
  ADD a2, t4, zero
  LW t4, 16(sp)
  ADD a3, t4, zero
  LW t4, 12(sp)
  ADD a4, t4, zero
  ADDI a5, zero, 2
  CALL dfs
  ADD s4, a0, zero
  MULW s5, s8, s4
  ADDW s4, s9, s5
  LUI s5, 244141
  ADDIW s5, s5, -1529
  REMW s8, s4, s5
  ADD t4, s8, zero
  SW t4, 40(sp)
  JAL zero, bb6
bb25:
  ADDI s10, zero, 1
  JAL zero, bb24
bb26:
  LW t4, 8(sp)
  XORI s6, t4, 2
  SLTIU s7, s6, 1
  BNE s7, zero, bb29
  # implict jump to bb27
bb27:
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb28
bb28:
  LW t4, 36(sp)
  ADD s7, t4, zero
  LW t4, 28(sp)
  SUBW s9, t4, s7
  ADDI s7, zero, 1
  LW t4, 28(sp)
  SUBW s10, t4, s7
  ADD a0, s10, zero
  LW t4, 24(sp)
  ADD a1, t4, zero
  LW t4, 20(sp)
  ADD a2, t4, zero
  LW t4, 16(sp)
  ADD a3, t4, zero
  LW t4, 12(sp)
  ADD a4, t4, zero
  ADDI a5, zero, 1
  CALL dfs
  ADD s7, a0, zero
  MULW s10, s9, s7
  LUI s7, 244141
  ADDIW s7, s7, -1529
  REMW s9, s10, s7
  ADD t4, s9, zero
  SW t4, 32(sp)
  JAL zero, bb4
bb29:
  ADDI t4, zero, 1
  SW t4, 36(sp)
  JAL zero, bb28
bb30:
  ADDI a0, zero, 1
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s11, 96(sp)
  LD s10, 104(sp)
  LD s7, 112(sp)
  LD s8, 120(sp)
  LD s9, 128(sp)
  LD ra, 136(sp)
  LD s6, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb31:
  LD t4, 0(sp)
  LW s6, 0(t4)
  ADD a0, s6, zero
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s11, 96(sp)
  LD s10, 104(sp)
  LD s7, 112(sp)
  LD s8, 120(sp)
  LD s9, 128(sp)
  LD ra, 136(sp)
  LD s6, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
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
  BNE s0, zero, bb34
  # implict jump to bb33
bb33:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb34:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -224
  SD ra, 112(sp)
  SD s1, 120(sp)
  SD s4, 128(sp)
  SD s7, 136(sp)
  SD s10, 144(sp)
  SD s6, 152(sp)
  SD s8, 160(sp)
  SD s9, 168(sp)
  SD s11, 176(sp)
  SD s0, 184(sp)
  SD s5, 192(sp)
  SD s3, 200(sp)
  SD s2, 208(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 36(sp)
  ADD t4, zero, zero
  SW t4, 28(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
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
  SW t4, 40(sp)
  LW t4, 20(sp)
  ADD s8, t4, zero
  LW t4, 28(sp)
  ADD s9, t4, zero
  LW t4, 36(sp)
  ADD s10, t4, zero
  LW t4, 40(sp)
  SLTI s11, t4, 18
  BNE s11, zero, bb41
  # implict jump to bb37
bb37:
  ADD s0, zero, zero
  # implict jump to bb38
bb38:
  ADD s1, s0, zero
  LW t4, 0(sp)
  SLT s2, s1, t4
  BNE s2, zero, bb40
  # implict jump to bb39
bb39:
  LA s0, cns
  ADDI s1, s0, 4
  LW s0, 0(s1)
  LA s1, cns
  ADDI s2, s1, 8
  LW s1, 0(s2)
  LA s2, cns
  ADDI s3, s2, 12
  LW s2, 0(s3)
  LA s3, cns
  ADDI s4, s3, 16
  LW s3, 0(s4)
  LA s4, cns
  ADDI s5, s4, 20
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
  LD ra, 112(sp)
  LD s1, 120(sp)
  LD s4, 128(sp)
  LD s7, 136(sp)
  LD s10, 144(sp)
  LD s6, 152(sp)
  LD s8, 160(sp)
  LD s9, 168(sp)
  LD s11, 176(sp)
  LD s0, 184(sp)
  LD s5, 192(sp)
  LD s3, 200(sp)
  LD s2, 208(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb40:
  SLLIW s2, s1, 2
  LA s3, list
  ADD s4, s3, s2
  CALL getint
  ADD s2, a0, zero
  SW s2, 0(s4)
  SLLIW s3, s2, 2
  LA s2, cns
  ADD s4, s2, s3
  LW s2, 0(s4)
  ADDIW s3, s2, 1
  SW s3, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb38
bb41:
  ADD t4, s10, zero
  SW t4, 76(sp)
  ADD t4, s9, zero
  SW t4, 68(sp)
  ADD t4, s8, zero
  SW t4, 60(sp)
  ADD t4, s6, zero
  SW t4, 52(sp)
  ADD t4, zero, zero
  SW t4, 44(sp)
  # implict jump to bb42
bb42:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t4, 80(sp)
  SLTI s3, t4, 18
  BNE s3, zero, bb44
  # implict jump to bb43
bb43:
  LW t4, 40(sp)
  ADDIW s0, t4, 1
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  ADD t4, s0, zero
  SW t4, 12(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb36
bb44:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  ADD t4, zero, zero
  SW t4, 84(sp)
  # implict jump to bb45
bb45:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t4, 48(sp)
  SLTI s8, t4, 18
  BNE s8, zero, bb47
  # implict jump to bb46
bb46:
  LW t4, 80(sp)
  ADDIW s0, t4, 1
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  ADD t4, s0, zero
  SW t4, 44(sp)
  JAL zero, bb42
bb47:
  LW t4, 72(sp)
  ADD s8, t4, zero
  LW t4, 64(sp)
  ADD s7, t4, zero
  ADD s9, zero, zero
  # implict jump to bb48
bb48:
  ADD t4, s9, zero
  SW t4, 88(sp)
  ADD t4, s7, zero
  SW t4, 96(sp)
  ADD t4, s8, zero
  SW t4, 104(sp)
  LW t4, 88(sp)
  SLTI s11, t4, 18
  BNE s11, zero, bb50
  # implict jump to bb49
bb49:
  LW t4, 48(sp)
  ADDIW s0, t4, 1
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  ADD t4, s0, zero
  SW t4, 84(sp)
  JAL zero, bb45
bb50:
  LW t4, 104(sp)
  ADD s11, t4, zero
  ADD s0, zero, zero
  # implict jump to bb51
bb51:
  ADD s5, s0, zero
  ADD s6, s11, zero
  SLTI s2, s5, 18
  BNE s2, zero, bb53
  # implict jump to bb52
bb52:
  LW t4, 88(sp)
  ADDIW s0, t4, 1
  ADD s8, s6, zero
  ADD s7, s5, zero
  ADD s9, s0, zero
  JAL zero, bb48
bb53:
  ADD s2, zero, zero
  # implict jump to bb54
bb54:
  ADD s10, s2, zero
  SLTI s4, s10, 7
  BNE s4, zero, bb56
  # implict jump to bb55
bb55:
  ADDIW s1, s5, 1
  ADD s11, s10, zero
  ADD s0, s1, zero
  JAL zero, bb51
bb56:
  LUI s4, 718
  ADDIW s4, s4, -1600
  LW t4, 40(sp)
  MULW s1, t4, s4
  LA s4, dp
  ADD s3, s4, s1
  LUI s1, 40
  ADDIW s1, s1, -544
  LW t4, 80(sp)
  MULW s4, t4, s1
  ADD s1, s3, s4
  LUI s3, 2
  ADDIW s3, s3, 880
  LW t4, 48(sp)
  MULW s4, t4, s3
  ADD s3, s1, s4
  ADDI s1, zero, 504
  LW t4, 88(sp)
  MULW s4, t4, s1
  ADD s1, s3, s4
  ADDI s3, zero, 28
  MULW s4, s5, s3
  ADD s3, s1, s4
  SLLIW s1, s10, 2
  ADD s4, s3, s1
  ADDI s1, zero, -1
  SW s1, 0(s4)
  ADDIW s1, s10, 1
  ADD s2, s1, zero
  JAL zero, bb54
