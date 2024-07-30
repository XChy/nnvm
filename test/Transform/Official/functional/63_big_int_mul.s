.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -672
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  SD s7, 104(sp)
  SD s8, 112(sp)
  SD s9, 120(sp)
  SD s10, 128(sp)
  SD s11, 136(sp)
  ADDI s0, zero, 1
  SW s0, 144(sp)
  ADDI s0, zero, 2
  SW s0, 148(sp)
  ADDI s0, zero, 3
  SW s0, 152(sp)
  ADDI s0, zero, 4
  SW s0, 156(sp)
  ADDI s0, zero, 5
  SW s0, 160(sp)
  ADDI s0, zero, 6
  SW s0, 164(sp)
  ADDI s0, zero, 7
  SW s0, 168(sp)
  ADDI s0, zero, 8
  SW s0, 172(sp)
  ADDI s0, zero, 9
  SW s0, 176(sp)
  ADDI s0, zero, 0
  SW s0, 180(sp)
  ADDI s0, zero, 1
  SW s0, 184(sp)
  ADDI s0, zero, 2
  SW s0, 188(sp)
  ADDI s0, zero, 3
  SW s0, 192(sp)
  ADDI s0, zero, 4
  SW s0, 196(sp)
  ADDI s0, zero, 5
  SW s0, 200(sp)
  ADDI s0, zero, 6
  SW s0, 204(sp)
  ADDI s0, zero, 7
  SW s0, 208(sp)
  ADDI s0, zero, 8
  SW s0, 212(sp)
  ADDI s0, zero, 9
  SW s0, 216(sp)
  ADDI s0, zero, 0
  SW s0, 220(sp)
  ADDI s0, zero, 2
  SW s0, 224(sp)
  ADDI s0, zero, 3
  SW s0, 228(sp)
  ADDI s0, zero, 4
  SW s0, 232(sp)
  ADDI s0, zero, 2
  SW s0, 236(sp)
  ADDI s0, zero, 5
  SW s0, 240(sp)
  ADDI s0, zero, 7
  SW s0, 244(sp)
  ADDI s0, zero, 9
  SW s0, 248(sp)
  ADDI s0, zero, 9
  SW s0, 252(sp)
  ADDI s0, zero, 0
  SW s0, 256(sp)
  ADDI s0, zero, 1
  SW s0, 260(sp)
  ADDI s0, zero, 9
  SW s0, 264(sp)
  ADDI s0, zero, 8
  SW s0, 268(sp)
  ADDI s0, zero, 7
  SW s0, 272(sp)
  ADDI s0, zero, 6
  SW s0, 276(sp)
  ADDI s0, zero, 4
  SW s0, 280(sp)
  ADDI s0, zero, 3
  SW s0, 284(sp)
  ADDI s0, zero, 2
  SW s0, 288(sp)
  ADDI s0, zero, 1
  SW s0, 292(sp)
  ADDI s0, zero, 2
  SW s0, 296(sp)
  ADDI s0, zero, 2
  SW s0, 300(sp)
  ADDI t4, zero, 40
  SW t4, 28(sp)
  # implict jump to bb1
bb1:
  LW t4, 28(sp)
  ADD s1, t4, zero
  ADDI s2, zero, 1
  SUBW t4, s1, s2
  SW t4, 32(sp)
  LW t4, 32(sp)
  SLLIW s2, t4, 2
  ADDI t5, sp, 512
  ADD s2, t5, s2
  ADDI s3, zero, 0
  SW s3, 0(s2)
  LW t4, 32(sp)
  BNE t4, zero, bb29
  # implict jump to bb2
bb2:
  ADD t4, zero, zero
  SW t4, 0(sp)
  # implict jump to bb3
bb3:
  LW t4, 0(sp)
  ADD s3, t4, zero
  SLLIW s4, s3, 2
  ADDI t5, sp, 304
  ADD s5, t5, s4
  ADDI t5, sp, 144
  ADD s4, t5, s4
  LW s4, 0(s4)
  SW s4, 0(s5)
  ADDIW s3, s3, 1
  SLTI s4, s3, 20
  BNE s4, zero, bb28
  # implict jump to bb4
bb4:
  ADD s4, zero, zero
  # implict jump to bb5
bb5:
  ADD s5, s4, zero
  SLLIW s6, s5, 2
  ADDI t5, sp, 408
  ADD s7, t5, s6
  ADDI t5, sp, 224
  ADD s6, t5, s6
  LW s6, 0(s6)
  SW s6, 0(s7)
  ADDIW s5, s5, 1
  SLTI s6, s5, 20
  BNE s6, zero, bb27
  # implict jump to bb6
bb6:
  ADDI s6, zero, 39
  SLT s6, s6, zero
  XORI s6, s6, 1
  BNE s6, zero, bb24
  # implict jump to bb7
bb7:
  ADDI s8, zero, 19
  ADDI s9, zero, 39
  # implict jump to bb8
bb8:
  ADD s10, s9, zero
  ADD s11, s8, zero
  SLLIW t0, s11, 2
  ADDI t4, sp, 408
  ADD t0, t4, t0
  LW t4, 0(t0)
  SW t4, 16(sp)
  ADDI t4, zero, 19
  SW t4, 20(sp)
  # implict jump to bb9
bb9:
  ADD t2, s10, zero
  LW t4, 20(sp)
  ADD a0, t4, zero
  SLLIW a1, t2, 2
  ADDI a2, sp, 512
  ADD a1, a2, a1
  LW a2, 0(a1)
  SLLIW a3, a0, 2
  ADDI t4, sp, 304
  ADD a3, t4, a3
  LW a3, 0(a3)
  LW t4, 16(sp)
  MULW a3, t4, a3
  ADDW a2, a2, a3
  SLTI a3, a2, 10
  XORI a3, a3, 1
  BNE a3, zero, bb23
  # implict jump to bb10
bb10:
  SW a2, 0(a1)
  # implict jump to bb11
bb11:
  ADDI a1, zero, 1
  SUBW t4, a0, a1
  SW t4, 4(sp)
  ADDI a1, zero, 1
  SUBW t4, t2, a1
  SW t4, 12(sp)
  ADDI a1, zero, -1
  LW t4, 4(sp)
  BLT a1, t4, bb22
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  LW t3, 12(sp)
  ADDIW t4, t3, 19
  SW t4, 8(sp)
  ADDI a2, zero, 1
  SUBW t4, s11, a2
  SW t4, 24(sp)
  ADDI a3, zero, -1
  LW t4, 24(sp)
  BLT a3, t4, bb21
  # implict jump to bb14
bb14:
  LW a3, 512(sp)
  BNE a3, zero, bb20
  # implict jump to bb15
bb15:
  ADDI s0, zero, 39
  SLTI s0, s0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb17
  # implict jump to bb16
bb16:
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  LD s9, 120(sp)
  LD s10, 128(sp)
  LD s11, 136(sp)
  ADDI sp, sp, 672
  JALR zero, 0(ra)
bb17:
  ADDI s0, zero, 1
  # implict jump to bb18
bb18:
  ADD s1, s0, zero
  SLLIW s2, s1, 2
  ADDI a0, sp, 512
  ADD s2, a0, s2
  LW s2, 0(s2)
  ADD a0, s2, zero
  CALL putint
  ADDIW s1, s1, 1
  ADDI s2, zero, 39
  SLT s2, s2, s1
  XORI s2, s2, 1
  BNE s2, zero, bb19
  JAL zero, bb16
bb19:
  ADD s0, s1, zero
  JAL zero, bb18
bb20:
  LW a3, 512(sp)
  ADD a0, a3, zero
  CALL putint
  JAL zero, bb15
bb21:
  LW t4, 24(sp)
  ADD s8, t4, zero
  LW t4, 8(sp)
  ADD s9, t4, zero
  JAL zero, bb8
bb22:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t4, 12(sp)
  ADD s10, t4, zero
  JAL zero, bb9
bb23:
  SW a2, 0(a1)
  ADDI a1, zero, 1
  SUBW a1, t2, a1
  SLLIW a1, a1, 2
  ADDI a3, sp, 512
  ADD a1, a3, a1
  LW a3, 0(a1)
  ADDI a4, zero, 10
  DIVW a2, a2, a4
  ADDW a2, a3, a2
  SW a2, 0(a1)
  JAL zero, bb11
bb24:
  ADD s6, zero, zero
  # implict jump to bb25
bb25:
  ADD s7, s6, zero
  SLLIW s8, s7, 2
  ADDI t5, sp, 512
  ADD s8, t5, s8
  SW zero, 0(s8)
  ADDIW s7, s7, 1
  ADDI s8, zero, 39
  SLT s8, s8, s7
  XORI s8, s8, 1
  BNE s8, zero, bb26
  JAL zero, bb7
bb26:
  ADD s6, s7, zero
  JAL zero, bb25
bb27:
  ADD s4, s5, zero
  JAL zero, bb5
bb28:
  ADD t4, s3, zero
  SW t4, 0(sp)
  JAL zero, bb3
bb29:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  JAL zero, bb1
