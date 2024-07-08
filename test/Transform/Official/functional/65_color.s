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
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s5, 80(sp)
  SD s11, 88(sp)
  SD s10, 96(sp)
  SD s9, 104(sp)
  SD s0, 112(sp)
  SD s7, 120(sp)
  SD s8, 128(sp)
  SD ra, 136(sp)
  SD s6, 144(sp)
  ADD s0, a0, zero
  ADD t4, a1, zero
  SW t4, 40(sp)
  ADD t4, a2, zero
  SW t4, 32(sp)
  ADD t4, a3, zero
  SW t4, 24(sp)
  ADD t4, a4, zero
  SW t4, 16(sp)
  ADD t4, a5, zero
  SW t4, 8(sp)
  LUI s6, 718
  ADDIW s6, s6, -1600
  MULW s7, s0, s6
  LA s6, dp
  ADD s8, s6, s7
  LUI s6, 40
  ADDIW s6, s6, -544
  LW t4, 40(sp)
  MULW s7, t4, s6
  ADD s6, s8, s7
  LUI s7, 2
  ADDIW s7, s7, 880
  LW t4, 32(sp)
  MULW s8, t4, s7
  ADD s7, s6, s8
  ADDI s6, zero, 504
  LW t4, 24(sp)
  MULW s8, t4, s6
  ADD s6, s7, s8
  ADDI s7, zero, 28
  LW t4, 16(sp)
  MULW s8, t4, s7
  ADD s7, s6, s8
  ADDI s6, zero, 4
  LW t4, 8(sp)
  MULW s8, t4, s6
  ADD t4, s7, s8
  SD t4, 0(sp)
  LD t4, 0(sp)
  LW s7, 0(t4)
  XORI s8, s7, -1
  SLTU s7, zero, s8
  BNE s7, zero, bb1
  JAL zero, bb2
bb1:
  LD t4, 0(sp)
  LW s7, 0(t4)
  ADD a0, s7, zero
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s11, 88(sp)
  LD s10, 96(sp)
  LD s9, 104(sp)
  LD s0, 112(sp)
  LD s7, 120(sp)
  LD s8, 128(sp)
  LD ra, 136(sp)
  LD s6, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb2:
  LW t4, 40(sp)
  ADDW s7, s0, t4
  LW t4, 32(sp)
  ADDW s8, s7, t4
  LW t4, 24(sp)
  ADDW s7, s8, t4
  LW t4, 16(sp)
  ADDW s8, s7, t4
  XOR s7, s8, zero
  SLTIU s8, s7, 1
  BNE s8, zero, bb3
  JAL zero, bb4
bb3:
  ADDI a0, zero, 1
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s11, 88(sp)
  LD s10, 96(sp)
  LD s9, 104(sp)
  LD s0, 112(sp)
  LD s7, 120(sp)
  LD s8, 128(sp)
  LD ra, 136(sp)
  LD s6, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb4:
  XOR s7, s0, zero
  SLTU s8, zero, s7
  BNE s8, zero, bb5
  JAL zero, bb15
bb5:
  LW t4, 8(sp)
  ADD a0, t4, zero
  ADDI a1, zero, 2
  CALL equal
  ADD s7, a0, zero
  SUBW s8, s0, s7
  ADDI s7, zero, 1
  SUBW s9, s0, s7
  ADD a0, s9, zero
  LW t4, 40(sp)
  ADD a1, t4, zero
  LW t4, 32(sp)
  ADD a2, t4, zero
  LW t4, 24(sp)
  ADD a3, t4, zero
  LW t4, 16(sp)
  ADD a4, t4, zero
  ADDI a5, zero, 1
  CALL dfs
  ADD s7, a0, zero
  MULW s9, s8, s7
  LUI s7, 244141
  ADDIW s7, s7, -1529
  REMW s8, s9, s7
  ADD s7, s8, zero
  JAL zero, bb6
bb6:
  ADD s8, s7, zero
  LW t4, 40(sp)
  XOR s9, t4, zero
  SLTU s10, zero, s9
  BNE s10, zero, bb7
  JAL zero, bb16
bb7:
  LW t4, 8(sp)
  ADD a0, t4, zero
  ADDI a1, zero, 3
  CALL equal
  ADD s9, a0, zero
  LW t4, 40(sp)
  SUBW s10, t4, s9
  ADDIW s9, s0, 1
  ADDI s11, zero, 1
  LW t4, 40(sp)
  SUBW s6, t4, s11
  ADD a0, s9, zero
  ADD a1, s6, zero
  LW t4, 32(sp)
  ADD a2, t4, zero
  LW t4, 24(sp)
  ADD a3, t4, zero
  LW t4, 16(sp)
  ADD a4, t4, zero
  ADDI a5, zero, 2
  CALL dfs
  ADD s6, a0, zero
  MULW s9, s10, s6
  ADDW s6, s8, s9
  LUI s9, 244141
  ADDIW s9, s9, -1529
  REMW s10, s6, s9
  ADD s6, s10, zero
  JAL zero, bb8
bb8:
  ADD s9, s6, zero
  LW t4, 32(sp)
  XOR s10, t4, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb9
  JAL zero, bb17
bb9:
  LW t4, 8(sp)
  ADD a0, t4, zero
  ADDI a1, zero, 4
  CALL equal
  ADD s10, a0, zero
  LW t4, 32(sp)
  SUBW s11, t4, s10
  LW t4, 40(sp)
  ADDIW s10, t4, 1
  ADDI s5, zero, 1
  LW t4, 32(sp)
  SUBW s4, t4, s5
  ADD a0, s0, zero
  ADD a1, s10, zero
  ADD a2, s4, zero
  LW t4, 24(sp)
  ADD a3, t4, zero
  LW t4, 16(sp)
  ADD a4, t4, zero
  ADDI a5, zero, 3
  CALL dfs
  ADD s4, a0, zero
  MULW s5, s11, s4
  ADDW s4, s9, s5
  LUI s5, 244141
  ADDIW s5, s5, -1529
  REMW s10, s4, s5
  ADD s4, s10, zero
  JAL zero, bb10
bb10:
  ADD s5, s4, zero
  LW t4, 24(sp)
  XOR s10, t4, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb11
  JAL zero, bb18
bb11:
  LW t4, 8(sp)
  ADD a0, t4, zero
  ADDI a1, zero, 5
  CALL equal
  ADD s10, a0, zero
  LW t4, 24(sp)
  SUBW s11, t4, s10
  LW t4, 32(sp)
  ADDIW s10, t4, 1
  ADDI s3, zero, 1
  LW t4, 24(sp)
  SUBW s2, t4, s3
  ADD a0, s0, zero
  LW t4, 40(sp)
  ADD a1, t4, zero
  ADD a2, s10, zero
  ADD a3, s2, zero
  LW t4, 16(sp)
  ADD a4, t4, zero
  ADDI a5, zero, 4
  CALL dfs
  ADD s2, a0, zero
  MULW s3, s11, s2
  ADDW s2, s5, s3
  LUI s3, 244141
  ADDIW s3, s3, -1529
  REMW s10, s2, s3
  ADD s2, s10, zero
  JAL zero, bb12
bb12:
  ADD s3, s2, zero
  LW t4, 16(sp)
  XOR s10, t4, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb13
  JAL zero, bb19
bb13:
  LW t4, 24(sp)
  ADDIW s10, t4, 1
  ADDI s11, zero, 1
  LW t4, 16(sp)
  SUBW s1, t4, s11
  ADD a0, s0, zero
  LW t4, 40(sp)
  ADD a1, t4, zero
  LW t4, 32(sp)
  ADD a2, t4, zero
  ADD a3, s10, zero
  ADD a4, s1, zero
  ADDI a5, zero, 5
  CALL dfs
  ADD s1, a0, zero
  LW t4, 16(sp)
  MULW s10, t4, s1
  ADDW s1, s3, s10
  LUI s10, 244141
  ADDIW s10, s10, -1529
  REMW s11, s1, s10
  ADD s1, s11, zero
  JAL zero, bb14
bb14:
  ADD s10, s1, zero
  LUI s11, 244141
  ADDIW s11, s11, -1529
  REMW t0, s10, s11
  LD t4, 0(sp)
  SW t0, 0(t4)
  ADD a0, t0, zero
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s11, 88(sp)
  LD s10, 96(sp)
  LD s9, 104(sp)
  LD s0, 112(sp)
  LD s7, 120(sp)
  LD s8, 128(sp)
  LD ra, 136(sp)
  LD s6, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb15:
  ADD s7, zero, zero
  JAL zero, bb6
bb16:
  ADD s6, s8, zero
  JAL zero, bb8
bb17:
  ADD s4, s9, zero
  JAL zero, bb10
bb18:
  ADD s2, s5, zero
  JAL zero, bb12
bb19:
  ADD s1, s3, zero
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
  ADDI sp, sp, -336
  SD ra, 224(sp)
  SD s1, 232(sp)
  SD s4, 240(sp)
  SD s7, 248(sp)
  SD s10, 256(sp)
  SD s6, 264(sp)
  SD s8, 272(sp)
  SD s9, 280(sp)
  SD s11, 288(sp)
  SD s0, 296(sp)
  SD s5, 304(sp)
  SD s3, 312(sp)
  SD s2, 320(sp)
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
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  JAL zero, bb24
bb24:
  LW t4, 16(sp)
  ADD s6, t4, zero
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t4, 40(sp)
  ADD s8, t4, zero
  LW t4, 56(sp)
  ADD s9, t4, zero
  LW t4, 72(sp)
  ADD s10, t4, zero
  LW t4, 80(sp)
  SLTI s11, t4, 18
  BNE s11, zero, bb25
  JAL zero, bb26
bb25:
  ADD t4, s10, zero
  SW t4, 152(sp)
  ADD t4, s9, zero
  SW t4, 136(sp)
  ADD t4, s8, zero
  SW t4, 120(sp)
  ADD t4, s6, zero
  SW t4, 104(sp)
  ADD t4, zero, zero
  SW t4, 88(sp)
  JAL zero, bb27
bb26:
  ADD s0, zero, zero
  JAL zero, bb42
bb27:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t4, 160(sp)
  SLTI s3, t4, 18
  BNE s3, zero, bb28
  JAL zero, bb29
bb28:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  ADD t4, zero, zero
  SW t4, 168(sp)
  JAL zero, bb30
bb29:
  LW t4, 80(sp)
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
  SW t4, 24(sp)
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb24
bb30:
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t4, 96(sp)
  SLTI s8, t4, 18
  BNE s8, zero, bb31
  JAL zero, bb32
bb31:
  LW t4, 144(sp)
  ADD s8, t4, zero
  LW t4, 128(sp)
  ADD s7, t4, zero
  ADD s9, zero, zero
  JAL zero, bb33
bb32:
  LW t4, 160(sp)
  ADDIW s0, t4, 1
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  ADD t4, s0, zero
  SW t4, 88(sp)
  JAL zero, bb27
bb33:
  ADD t4, s9, zero
  SW t4, 176(sp)
  ADD t4, s7, zero
  SW t4, 192(sp)
  ADD t4, s8, zero
  SW t4, 208(sp)
  LW t4, 176(sp)
  SLTI s11, t4, 18
  BNE s11, zero, bb34
  JAL zero, bb35
bb34:
  LW t4, 208(sp)
  ADD s11, t4, zero
  ADD s0, zero, zero
  JAL zero, bb36
bb35:
  LW t4, 96(sp)
  ADDIW s0, t4, 1
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  ADD t4, s0, zero
  SW t4, 168(sp)
  JAL zero, bb30
bb36:
  ADD s5, s0, zero
  ADD s6, s11, zero
  SLTI s2, s5, 18
  BNE s2, zero, bb37
  JAL zero, bb38
bb37:
  ADD s2, zero, zero
  JAL zero, bb39
bb38:
  LW t4, 176(sp)
  ADDIW s0, t4, 1
  ADD s8, s6, zero
  ADD s7, s5, zero
  ADD s9, s0, zero
  JAL zero, bb33
bb39:
  ADD s10, s2, zero
  SLTI s4, s10, 7
  BNE s4, zero, bb40
  JAL zero, bb41
bb40:
  LUI s4, 718
  ADDIW s4, s4, -1600
  LW t4, 80(sp)
  MULW s1, t4, s4
  LA s4, dp
  ADD s3, s4, s1
  LUI s1, 40
  ADDIW s1, s1, -544
  LW t4, 160(sp)
  MULW s4, t4, s1
  ADD s1, s3, s4
  LUI s3, 2
  ADDIW s3, s3, 880
  LW t4, 96(sp)
  MULW s4, t4, s3
  ADD s3, s1, s4
  ADDI s1, zero, 504
  LW t4, 176(sp)
  MULW s4, t4, s1
  ADD s1, s3, s4
  ADDI s3, zero, 28
  MULW s4, s5, s3
  ADD s3, s1, s4
  ADDI s1, zero, 4
  MULW s4, s10, s1
  ADD s1, s3, s4
  ADDI s3, zero, -1
  SW s3, 0(s1)
  ADDIW s1, s10, 1
  ADD s2, s1, zero
  JAL zero, bb39
bb41:
  ADDIW s1, s5, 1
  ADD s11, s10, zero
  ADD s0, s1, zero
  JAL zero, bb36
bb42:
  ADD s1, s0, zero
  LW t4, 0(sp)
  SLT s2, s1, t4
  BNE s2, zero, bb43
  JAL zero, bb44
bb43:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, list
  ADD s4, s2, s3
  CALL getint
  ADD s2, a0, zero
  SW s2, 0(s4)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s3, cns
  ADD s5, s3, s4
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s2, cns
  ADD s3, s2, s4
  LW s2, 0(s3)
  ADDIW s3, s2, 1
  SW s3, 0(s5)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb42
bb44:
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
  LD ra, 224(sp)
  LD s1, 232(sp)
  LD s4, 240(sp)
  LD s7, 248(sp)
  LD s10, 256(sp)
  LD s6, 264(sp)
  LD s8, 272(sp)
  LD s9, 280(sp)
  LD s11, 288(sp)
  LD s0, 296(sp)
  LD s5, 304(sp)
  LD s3, 312(sp)
  LD s2, 320(sp)
  ADDI sp, sp, 336
  JALR zero, 0(ra)
