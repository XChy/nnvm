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
  ADD s0, a0, zero
  ADDI a0, zero, 1
  SUBW s0, s0, a0
  SLLIW a0, s0, 2
  ADDI t5, sp, 200
  ADD s1, t5, a0
  ADDI a0, zero, 0
  SW a0, 0(s1)
  BNE s0, zero, bb31
  # implict jump to bb2
bb2:
  ADDI a0, zero, 8
  SW a0, 200(sp)
  ADDI a0, zero, 8
  # implict jump to bb3
bb3:
  SW a0, 204(sp)
  ADDI a0, zero, 2
  # implict jump to bb4
bb4:
  ADD s2, a0, zero
  SLLIW s0, s2, 2
  ADDI t5, sp, 200
  ADD s3, t5, s0
  ADDI a0, zero, 2
  SUBW a0, s2, a0
  SLLIW a0, a0, 2
  ADDI t5, sp, 200
  ADD a0, t5, a0
  LW a0, 0(a0)
  ADDI t5, sp, 80
  ADD s0, t5, s0
  LW s0, 0(s0)
  ADDW s1, a0, s0
  ADDI a0, zero, 1
  SUBW a0, s2, a0
  SLLIW a0, a0, 2
  ADDI t5, sp, 200
  ADD a0, t5, a0
  LW s0, 0(a0)
  XOR a0, s1, s0
  SLTIU a0, a0, 1
  BNE a0, zero, bb30
  # implict jump to bb5
bb5:
  BLT s0, s1, bb29
  # implict jump to bb6
bb6:
  ADD a0, s0, zero
  # implict jump to bb7
bb7:
  SW a0, 0(s3)
  ADDIW s0, s2, 1
  SLTI a0, s0, 15
  BNE a0, zero, bb28
  # implict jump to bb8
bb8:
  LW a0, 256(sp)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 256
  # implict jump to bb9
bb9:
  ADD s0, a0, zero
  ADDI a0, zero, 1
  SUBW s0, s0, a0
  SLLIW a0, s0, 2
  ADDI t5, sp, 264
  ADD a0, t5, a0
  SW zero, 0(a0)
  BNE s0, zero, bb27
  # implict jump to bb10
bb10:
  ADDI a0, zero, 15
  SLTI a0, a0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb12
  # implict jump to bb11
bb11:
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
bb12:
  ADDI a0, zero, 13
  SLTI a0, a0, 1
  XORI s0, a0, 1
  ADDI a0, zero, 1
  # implict jump to bb13
bb13:
  ADD s2, a0, zero
  BNE s0, zero, bb16
  # implict jump to bb14
bb14:
  ADDIW s1, s2, 1
  ADDI a0, zero, 15
  SLT a0, a0, s1
  XORI a0, a0, 1
  BNE a0, zero, bb15
  JAL zero, bb11
bb15:
  ADD a0, s1, zero
  JAL zero, bb13
bb16:
  ADDI a0, zero, 1
  SUBW s1, s2, a0
  SLLIW a0, s1, 2
  ADDI t5, sp, 80
  ADD a0, t5, a0
  LW s4, 0(a0)
  ADDI a0, zero, 1
  # implict jump to bb17
bb17:
  ADD s5, a0, zero
  ADDI a0, zero, 1
  SUBW a0, s5, a0
  SLLIW s3, a0, 2
  ADDI a0, sp, 144
  ADD a0, a0, s3
  LW a0, 0(a0)
  XOR a0, s4, a0
  SLTIU a0, a0, 1
  BNE a0, zero, bb26
  # implict jump to bb18
bb18:
  SLLIW a0, s2, 6
  ADDI t5, sp, 264
  ADD a0, t5, a0
  SLLIW s7, s5, 2
  ADD s6, a0, s7
  SLLIW s8, s1, 6
  ADDI t5, sp, 264
  ADD s8, t5, s8
  ADD s7, s8, s7
  LW s7, 0(s7)
  ADD a0, a0, s3
  LW s3, 0(a0)
  XOR a0, s7, s3
  SLTIU a0, a0, 1
  BNE a0, zero, bb25
  # implict jump to bb19
bb19:
  BLT s3, s7, bb24
  # implict jump to bb20
bb20:
  ADD a0, s3, zero
  # implict jump to bb21
bb21:
  SW a0, 0(s6)
  # implict jump to bb22
bb22:
  ADDIW s3, s5, 1
  ADDI a0, zero, 13
  SLT a0, a0, s3
  XORI a0, a0, 1
  BNE a0, zero, bb23
  JAL zero, bb14
bb23:
  ADD a0, s3, zero
  JAL zero, bb17
bb24:
  ADD a0, s7, zero
  JAL zero, bb21
bb25:
  ADD a0, s7, zero
  JAL zero, bb21
bb26:
  SLLIW a0, s2, 6
  ADDI t5, sp, 264
  ADD a0, t5, a0
  SLLIW s6, s5, 2
  ADD s6, a0, s6
  SLLIW a0, s1, 6
  ADDI t5, sp, 264
  ADD a0, t5, a0
  ADD a0, a0, s3
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(s6)
  JAL zero, bb22
bb27:
  ADD a0, s0, zero
  JAL zero, bb9
bb28:
  ADD a0, s0, zero
  JAL zero, bb4
bb29:
  ADD a0, s1, zero
  JAL zero, bb7
bb30:
  ADD a0, s1, zero
  JAL zero, bb7
bb31:
  ADD a0, s0, zero
  JAL zero, bb1
