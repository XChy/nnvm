.global main
.section .bss

.section .data
len:
.word 0x00000014
.section .text
main:
  ADDI sp, sp, -688
  SD ra, 56(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  SD s5, 104(sp)
  SD s6, 112(sp)
  SD s7, 120(sp)
  SD s8, 128(sp)
  SD s9, 136(sp)
  SD s10, 144(sp)
  SD s11, 152(sp)
  ADDI t0, zero, 1
  SW t0, 160(sp)
  ADDI t0, zero, 2
  SW t0, 164(sp)
  ADDI t0, zero, 3
  SW t0, 168(sp)
  ADDI t0, zero, 4
  SW t0, 172(sp)
  ADDI t0, zero, 5
  SW t0, 176(sp)
  ADDI t0, zero, 6
  SW t0, 180(sp)
  ADDI t0, zero, 7
  SW t0, 184(sp)
  ADDI t0, zero, 8
  SW t0, 188(sp)
  ADDI t0, zero, 9
  SW t0, 192(sp)
  ADDI t0, zero, 0
  SW t0, 196(sp)
  ADDI t0, zero, 1
  SW t0, 200(sp)
  ADDI t0, zero, 2
  SW t0, 204(sp)
  ADDI t0, zero, 3
  SW t0, 208(sp)
  ADDI t0, zero, 4
  SW t0, 212(sp)
  ADDI t0, zero, 5
  SW t0, 216(sp)
  ADDI t0, zero, 6
  SW t0, 220(sp)
  ADDI t0, zero, 7
  SW t0, 224(sp)
  ADDI t0, zero, 8
  SW t0, 228(sp)
  ADDI t0, zero, 9
  SW t0, 232(sp)
  ADDI t0, zero, 0
  SW t0, 236(sp)
  ADDI t0, zero, 2
  SW t0, 240(sp)
  ADDI t0, zero, 3
  SW t0, 244(sp)
  ADDI t0, zero, 4
  SW t0, 248(sp)
  ADDI t0, zero, 2
  SW t0, 252(sp)
  ADDI t0, zero, 5
  SW t0, 256(sp)
  ADDI t0, zero, 7
  SW t0, 260(sp)
  ADDI t0, zero, 9
  SW t0, 264(sp)
  ADDI t0, zero, 9
  SW t0, 268(sp)
  ADDI t0, zero, 0
  SW t0, 272(sp)
  ADDI t0, zero, 1
  SW t0, 276(sp)
  ADDI t0, zero, 9
  SW t0, 280(sp)
  ADDI t0, zero, 8
  SW t0, 284(sp)
  ADDI t0, zero, 7
  SW t0, 288(sp)
  ADDI t0, zero, 6
  SW t0, 292(sp)
  ADDI t0, zero, 4
  SW t0, 296(sp)
  ADDI t0, zero, 3
  SW t0, 300(sp)
  ADDI t0, zero, 2
  SW t0, 304(sp)
  ADDI t0, zero, 1
  SW t0, 308(sp)
  ADDI t0, zero, 2
  SW t0, 312(sp)
  ADDI t0, zero, 2
  SW t0, 316(sp)
  ADDI t0, zero, 0
  XORI t0, t0, 40
  BNE t0, zero, bb45
  # implict jump to bb1
bb1:
  SLTI t1, zero, 20
  BNE t1, zero, bb40
  # implict jump to bb2
bb2:
  SLTI t2, zero, 20
  BNE t2, zero, bb35
  # implict jump to bb3
bb3:
  ADDI a0, zero, 39
  SLT a0, a0, zero
  XORI a0, a0, 1
  BNE a0, zero, bb30
  # implict jump to bb4
bb4:
  ADDI a1, zero, -1
  SLTI a1, a1, 19
  BNE a1, zero, bb14
  # implict jump to bb5
bb5:
  LW s1, 528(sp)
  BNE s1, zero, bb13
  # implict jump to bb6
bb6:
  ADDI s1, zero, 39
  SLTI s1, s1, 1
  XORI s1, s1, 1
  BNE s1, zero, bb8
  # implict jump to bb7
bb7:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  LD s5, 104(sp)
  LD s6, 112(sp)
  LD s7, 120(sp)
  LD s8, 128(sp)
  LD s9, 136(sp)
  LD s10, 144(sp)
  LD s11, 152(sp)
  ADDI sp, sp, 688
  JALR zero, 0(ra)
bb8:
  ADDI s1, zero, 1
  # implict jump to bb9
bb9:
  # implict jump to bb10
bb10:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  ADDI a0, sp, 528
  ADD s3, a0, s3
  LW s3, 0(s3)
  ADD a0, s3, zero
  CALL putint
  ADDIW s0, s2, 1
  # implict jump to bb11
bb11:
  ADDI s2, zero, 39
  SLT s2, s2, s0
  XORI s2, s2, 1
  BNE s2, zero, bb12
  JAL zero, bb7
bb12:
  ADD s1, s0, zero
  JAL zero, bb10
bb13:
  LW s1, 528(sp)
  ADD a0, s1, zero
  CALL putint
  JAL zero, bb6
bb14:
  ADDI a1, zero, 39
  ADDI a2, zero, 19
  # implict jump to bb15
bb15:
  ADDI a3, zero, -1
  SLTI s11, a3, 19
  ADD t4, a2, zero
  SW t4, 12(sp)
  ADD t4, a1, zero
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb16
bb16:
  LW t4, 16(sp)
  ADD a4, t4, zero
  LW t4, 0(sp)
  ADD a5, t4, zero
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t4, 4(sp)
  SLLIW a7, t4, 2
  ADDI t4, sp, 424
  ADD a7, t4, a7
  LW t4, 0(a7)
  SW t4, 24(sp)
  BNE s11, zero, bb21
  # implict jump to bb17
bb17:
  ADD t6, a5, zero
  # implict jump to bb18
bb18:
  ADD s7, a4, zero
  ADDIW s8, t6, 19
  ADDI s1, zero, 1
  LW t4, 4(sp)
  SUBW s6, t4, s1
  # implict jump to bb19
bb19:
  ADDI s1, zero, -1
  BLT s1, s6, bb20
  JAL zero, bb5
bb20:
  ADD t4, s6, zero
  SW t4, 12(sp)
  ADD t4, s8, zero
  SW t4, 0(sp)
  ADD t4, s7, zero
  SW t4, 16(sp)
  JAL zero, bb16
bb21:
  ADDI t0, zero, 19
  # implict jump to bb22
bb22:
  ADD t4, t0, zero
  SW t4, 8(sp)
  ADD t4, a5, zero
  SW t4, 20(sp)
  # implict jump to bb23
bb23:
  LW t4, 20(sp)
  ADD s3, t4, zero
  LW t4, 8(sp)
  ADD t1, t4, zero
  SLLIW s1, s3, 2
  ADDI t2, sp, 528
  ADD s1, t2, s1
  LW t2, 0(s1)
  SLLIW s2, t1, 2
  ADDI t4, sp, 320
  ADD s2, t4, s2
  LW s2, 0(s2)
  LW t4, 24(sp)
  MULW s2, t4, s2
  ADDW s9, t2, s2
  SLTI s2, s9, 10
  XORI s2, s2, 1
  BNE s2, zero, bb29
  # implict jump to bb24
bb24:
  SW s9, 0(s1)
  # implict jump to bb25
bb25:
  ADDI s1, zero, 1
  SUBW s5, t1, s1
  ADDI s1, zero, 1
  SUBW s10, s3, s1
  # implict jump to bb26
bb26:
  ADDI s1, zero, -1
  BLT s1, s5, bb28
  # implict jump to bb27
bb27:
  ADD t6, s10, zero
  ADD a4, s9, zero
  JAL zero, bb18
bb28:
  ADD t4, s5, zero
  SW t4, 8(sp)
  ADD t4, s10, zero
  SW t4, 20(sp)
  JAL zero, bb23
bb29:
  SW s9, 0(s1)
  ADDI s1, zero, 1
  SUBW s1, s3, s1
  SLLIW s1, s1, 2
  ADDI t5, sp, 528
  ADD s1, t5, s1
  LW s2, 0(s1)
  ADDI t2, zero, 10
  DIVW t2, s9, t2
  ADDW s2, s2, t2
  SW s2, 0(s1)
  JAL zero, bb25
bb30:
  # implict jump to bb31
bb31:
  ADD t4, zero, zero
  SW t4, 52(sp)
  # implict jump to bb32
bb32:
  LW t4, 52(sp)
  ADD a1, t4, zero
  SLLIW a2, a1, 2
  ADDI t5, sp, 528
  ADD a2, t5, a2
  SW zero, 0(a2)
  ADDIW s4, a1, 1
  # implict jump to bb33
bb33:
  ADDI a1, zero, 39
  SLT a1, a1, s4
  XORI a1, a1, 1
  BNE a1, zero, bb34
  JAL zero, bb4
bb34:
  ADD t4, s4, zero
  SW t4, 52(sp)
  JAL zero, bb32
bb35:
  # implict jump to bb36
bb36:
  ADD t4, zero, zero
  SW t4, 44(sp)
  # implict jump to bb37
bb37:
  LW t4, 44(sp)
  ADD a0, t4, zero
  SLLIW a1, a0, 2
  ADDI a2, sp, 424
  ADD a2, a2, a1
  ADDI t4, sp, 240
  ADD a1, t4, a1
  LW a1, 0(a1)
  SW a1, 0(a2)
  ADDIW t4, a0, 1
  SW t4, 48(sp)
  # implict jump to bb38
bb38:
  LW t4, 48(sp)
  SLTI a0, t4, 20
  BNE a0, zero, bb39
  JAL zero, bb3
bb39:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  JAL zero, bb37
bb40:
  # implict jump to bb41
bb41:
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb42
bb42:
  LW t4, 36(sp)
  ADD t2, t4, zero
  SLLIW a0, t2, 2
  ADDI a1, sp, 320
  ADD a1, a1, a0
  ADDI t4, sp, 160
  ADD a0, t4, a0
  LW a0, 0(a0)
  SW a0, 0(a1)
  ADDIW t4, t2, 1
  SW t4, 40(sp)
  # implict jump to bb43
bb43:
  LW t4, 40(sp)
  SLTI t2, t4, 20
  BNE t2, zero, bb44
  JAL zero, bb2
bb44:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  JAL zero, bb42
bb45:
  ADDI t0, zero, 40
  # implict jump to bb46
bb46:
  ADD t4, t0, zero
  SW t4, 28(sp)
  # implict jump to bb47
bb47:
  LW t4, 28(sp)
  ADD t1, t4, zero
  ADDI t2, zero, 1
  SUBW t4, t1, t2
  SW t4, 32(sp)
  LW t4, 32(sp)
  SLLIW t1, t4, 2
  ADDI t5, sp, 528
  ADD t1, t5, t1
  SW zero, 0(t1)
  # implict jump to bb48
bb48:
  LW t4, 32(sp)
  BNE t4, zero, bb49
  JAL zero, bb1
bb49:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  JAL zero, bb47
