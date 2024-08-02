.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -1296
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s2, 16(sp)
  SD s3, 24(sp)
  SD s4, 32(sp)
  SD s5, 40(sp)
  SD s6, 48(sp)
  SD s7, 56(sp)
  SD s8, 64(sp)
  SD s0, 72(sp)
  ADDI a0, zero, 8
  SW a0, 80(sp)
  ADDI a0, zero, 7
  SW a0, 84(sp)
  ADDI a0, zero, 4
  SW a0, 88(sp)
  ADDI a0, zero, 1
  SW a0, 92(sp)
  ADDI a0, zero, 2
  SW a0, 96(sp)
  ADDI a0, zero, 7
  SW a0, 100(sp)
  ADDI a0, zero, 0
  SW a0, 104(sp)
  ADDI a0, zero, 1
  SW a0, 108(sp)
  ADDI a0, zero, 9
  SW a0, 112(sp)
  ADDI a0, zero, 3
  SW a0, 116(sp)
  ADDI a0, zero, 4
  SW a0, 120(sp)
  ADDI a0, zero, 8
  SW a0, 124(sp)
  ADDI a0, zero, 3
  SW a0, 128(sp)
  ADDI a0, zero, 7
  SW a0, 132(sp)
  ADDI a0, zero, 0
  SW a0, 136(sp)
  ADDI a0, zero, 3
  SW a0, 144(sp)
  ADDI a0, zero, 9
  SW a0, 148(sp)
  ADDI a0, zero, 7
  SW a0, 152(sp)
  ADDI a0, zero, 1
  SW a0, 156(sp)
  ADDI a0, zero, 4
  SW a0, 160(sp)
  ADDI a0, zero, 2
  SW a0, 164(sp)
  ADDI a0, zero, 4
  SW a0, 168(sp)
  ADDI a0, zero, 3
  SW a0, 172(sp)
  ADDI a0, zero, 6
  SW a0, 176(sp)
  ADDI a0, zero, 8
  SW a0, 180(sp)
  ADDI a0, zero, 0
  SW a0, 184(sp)
  ADDI a0, zero, 1
  SW a0, 188(sp)
  ADDI a0, zero, 5
  SW a0, 192(sp)
  ADDI a0, zero, 16
  # implict jump to bb1
bb1:
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  ADDI t5, sp, 200
  ADD s0, t5, s0
  ADDI s1, zero, 0
  SW s1, 0(s0)
  BNE a0, zero, bb30
  # implict jump to bb2
bb2:
  ADDI a0, zero, 8
  SW a0, 200(sp)
  ADDI a0, zero, 8
  SW a0, 204(sp)
  ADDI a0, zero, 2
  # implict jump to bb3
bb3:
  SLLIW s0, a0, 2
  ADDI t5, sp, 200
  ADD s1, t5, s0
  ADDI s2, zero, 2
  SUBW s2, a0, s2
  SLLIW s2, s2, 2
  ADDI t5, sp, 200
  ADD s2, t5, s2
  LW s2, 0(s2)
  ADDI t5, sp, 80
  ADD s0, t5, s0
  LW s0, 0(s0)
  ADDW s0, s2, s0
  ADDI s2, zero, 1
  SUBW s2, a0, s2
  SLLIW s2, s2, 2
  ADDI t5, sp, 200
  ADD s2, t5, s2
  LW s2, 0(s2)
  XOR s3, s0, s2
  SLTIU s3, s3, 1
  BNE s3, zero, bb29
  # implict jump to bb4
bb4:
  BLT s2, s0, bb28
  # implict jump to bb5
bb5:
  ADD s0, s2, zero
  # implict jump to bb6
bb6:
  SW s0, 0(s1)
  ADDIW a0, a0, 1
  SLTI s0, a0, 15
  BNE s0, zero, bb27
  # implict jump to bb7
bb7:
  LW a0, 256(sp)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 256
  # implict jump to bb8
bb8:
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  ADDI t5, sp, 264
  ADD s0, t5, s0
  SW zero, 0(s0)
  BNE a0, zero, bb26
  # implict jump to bb9
bb9:
  ADDI a0, zero, 15
  SLTI a0, a0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb11
  # implict jump to bb10
bb10:
  LW a0, 1276(sp)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s2, 16(sp)
  LD s3, 24(sp)
  LD s4, 32(sp)
  LD s5, 40(sp)
  LD s6, 48(sp)
  LD s7, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 1296
  JALR zero, 0(ra)
bb11:
  ADDI a0, zero, 13
  SLTI a0, a0, 1
  XORI a0, a0, 1
  ADDI s0, zero, 1
  # implict jump to bb12
bb12:
  BNE a0, zero, bb15
  # implict jump to bb13
bb13:
  ADDIW s0, s0, 1
  ADDI s1, zero, 15
  SLT s1, s1, s0
  XORI s1, s1, 1
  BNE s1, zero, bb14
  JAL zero, bb10
bb14:
  JAL zero, bb12
bb15:
  ADDI s1, zero, 1
  SUBW s1, s0, s1
  SLLIW s2, s1, 2
  ADDI t5, sp, 80
  ADD s2, t5, s2
  LW s2, 0(s2)
  ADDI s3, zero, 1
  # implict jump to bb16
bb16:
  ADDI s4, zero, 1
  SUBW s4, s3, s4
  SLLIW s4, s4, 2
  ADDI t5, sp, 144
  ADD s5, t5, s4
  LW s5, 0(s5)
  XOR s5, s2, s5
  SLTIU s5, s5, 1
  BNE s5, zero, bb25
  # implict jump to bb17
bb17:
  SLLIW s5, s0, 6
  ADDI t5, sp, 264
  ADD s5, t5, s5
  SLLIW s6, s3, 2
  ADD s7, s5, s6
  SLLIW s8, s1, 6
  ADDI t5, sp, 264
  ADD s8, t5, s8
  ADD s6, s8, s6
  LW s6, 0(s6)
  ADD s4, s5, s4
  LW s4, 0(s4)
  XOR s5, s6, s4
  SLTIU s5, s5, 1
  BNE s5, zero, bb24
  # implict jump to bb18
bb18:
  BLT s4, s6, bb23
  # implict jump to bb19
bb19:
  # implict jump to bb20
bb20:
  SW s4, 0(s7)
  # implict jump to bb21
bb21:
  ADDIW s3, s3, 1
  ADDI s4, zero, 13
  SLT s4, s4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb22
  JAL zero, bb13
bb22:
  JAL zero, bb16
bb23:
  ADD s4, s6, zero
  JAL zero, bb20
bb24:
  ADD s4, s6, zero
  JAL zero, bb20
bb25:
  SLLIW s5, s0, 6
  ADDI t5, sp, 264
  ADD s5, t5, s5
  SLLIW s6, s3, 2
  ADD s5, s5, s6
  SLLIW s6, s1, 6
  ADDI t5, sp, 264
  ADD s6, t5, s6
  ADD s4, s6, s4
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  SW s4, 0(s5)
  JAL zero, bb21
bb26:
  JAL zero, bb8
bb27:
  JAL zero, bb3
bb28:
  JAL zero, bb6
bb29:
  JAL zero, bb6
bb30:
  JAL zero, bb1
