.global main
.global func
.section .bss
.section .data
.section .text
main:
  LUI t0, 1048569
  ADDIW t0, t0, -336
  ADD sp, sp, t0
  SD s0, 32(sp)
  SD ra, 48(sp)
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
  LUI s0, 1
  ADDIW s0, s0, -9
  ADD t4, zero, s0
  SW t4, 20(sp)
  # implict jump to bb1
bb1:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t4, 16(sp)
  BNE t4, zero, bb15
  # implict jump to bb2
bb2:
  LUI s2, 1
  ADDIW s2, s2, -969
  ADD t4, zero, s2
  SW t4, 12(sp)
  # implict jump to bb3
bb3:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 8(sp)
  BNE t4, zero, bb14
  # implict jump to bb4
bb4:
  LUI s4, 1
  ADDIW s4, s4, 464
  ADDI t5, sp, 144
  ADD s4, t5, s4
  ADDI s5, zero, 6
  SW s5, 0(s4)
  LUI s5, 1
  ADDIW s5, s5, 472
  ADDI t5, sp, 144
  ADD s5, t5, s5
  ADDI s6, zero, 7
  SW s6, 0(s5)
  LUI s6, 1
  ADDIW s6, s6, 476
  ADDI t5, sp, 144
  ADD s6, t5, s6
  ADDI s7, zero, 4
  SW s7, 0(s6)
  LUI s6, 1
  ADDIW s6, s6, 488
  ADDI t5, sp, 144
  ADD s6, t5, s6
  ADDI s7, zero, 9
  SW s7, 0(s6)
  LUI s6, 1
  ADDIW s6, s6, 504
  ADDI t5, sp, 144
  ADD s6, t5, s6
  ADDI s7, zero, 11
  SW s7, 0(s6)
  LUI t5, 4
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  ADDI s6, t5, 1420
  ADDI s7, zero, 1
  SW s7, 0(s6)
  LUI t5, 4
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  ADDI s6, t5, 1424
  ADDI s7, zero, 2
  SW s7, 0(s6)
  LUI t5, 4
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  ADDI s6, t5, 1428
  ADDI s7, zero, 3
  SW s7, 0(s6)
  LUI t5, 4
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  ADDI s7, t5, 1452
  ADDI s8, zero, 9
  SW s8, 0(s7)
  LW s4, 0(s4)
  LW s5, 0(s5)
  LUI s7, 1
  ADDIW s7, s7, 460
  ADDI t5, sp, 144
  ADD s7, t5, s7
  LW s6, 0(s6)
  LUI t5, 4
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  ADDI s8, t5, 1416
  LW s9, 0(s8)
  LUI s10, 2
  ADDIW s10, s10, -152
  LUI t4, 4
  ADDIW t4, t4, 112
  ADD t4, t4, sp
  ADD s10, t4, s10
  LW t4, 0(s10)
  SW t4, 0(sp)
  LUI s11, 3
  ADDIW s11, s11, -180
  LUI t4, 4
  ADDIW t4, t4, 112
  ADD t4, t4, sp
  ADD s11, t4, s11
  LW t4, 0(s11)
  SW t4, 4(sp)
  ADDI ra, zero, 236
  MULW s4, s4, ra
  LUI t4, 4
  ADDIW t4, t4, 112
  ADD t4, t4, sp
  ADD t4, t4, s4
  SD t4, 40(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  # implict jump to bb5
bb5:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t4, 28(sp)
  SLTI t1, t4, 10
  BNE t1, zero, bb13
  # implict jump to bb6
bb6:
  ADDI a0, zero, 10
  CALL putch
  SLLIW s0, s5, 2
  ADD s0, s7, s0
  LW s0, 0(s0)
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t4, 4(sp)
  ADD s0, t4, zero
  LW t4, 0(sp)
  ADD s1, t4, zero
  # implict jump to bb7
bb7:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s3, 10
  BNE s4, zero, bb12
  # implict jump to bb8
bb8:
  ADDW s4, s6, s9
  ADDI s11, zero, 3
  MULW s4, s4, s11
  # implict jump to bb9
bb9:
  ADD s11, s4, zero
  SLT s10, s11, zero
  XORI s10, s10, 1
  BNE s10, zero, bb11
  # implict jump to bb10
bb10:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD s0, 32(sp)
  LD ra, 48(sp)
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
  LUI t0, 7
  ADDIW t0, t0, 336
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb11:
  SLLIW s10, s11, 2
  ADD s10, s8, s10
  LW s10, 0(s10)
  ADD a0, s10, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI s10, zero, 1
  SUBW s10, s11, s10
  ADD s4, s10, zero
  JAL zero, bb9
bb12:
  SLLIW s4, s3, 2
  ADD s4, s8, s4
  LUI s10, 31
  ADDIW s10, s10, 1899
  MULW s10, s2, s10
  LUI s11, 1
  ADDIW s11, s11, -372
  REMW s10, s10, s11
  SW s10, 0(s4)
  ADDIW s3, s3, 1
  ADDIW s2, s2, 7
  ADD s0, s3, zero
  ADD s1, s2, zero
  JAL zero, bb7
bb13:
  LW t4, 28(sp)
  SLLIW s0, t4, 2
  LD t4, 40(sp)
  ADD s0, t4, s0
  LW s0, 0(s0)
  ADD a0, s0, zero
  CALL putint
  LW t4, 28(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 24(sp)
  JAL zero, bb5
bb14:
  ADDI s0, zero, 1
  LW t4, 8(sp)
  SUBW s0, t4, s0
  SLLIW s1, s0, 2
  LUI t4, 4
  ADDIW t4, t4, 112
  ADD t4, t4, sp
  ADD s1, t4, s1
  SW zero, 0(s1)
  ADD t4, s0, zero
  SW t4, 12(sp)
  JAL zero, bb3
bb15:
  ADDI s0, zero, 1
  LW t4, 16(sp)
  SUBW s0, t4, s0
  SLLIW s1, s0, 2
  ADDI t4, sp, 144
  ADD s1, t4, s1
  SW zero, 0(s1)
  ADD t4, s0, zero
  SW t4, 20(sp)
  JAL zero, bb1
func:
  ADDI sp, sp, -128
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s11, 88(sp)
  SD s8, 104(sp)
  SD s9, 112(sp)
  SD s10, 120(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD t4, a4, zero
  SW t4, 12(sp)
  ADD t4, a5, zero
  SW t4, 8(sp)
  ADD t4, a6, zero
  SD t4, 96(sp)
  ADD t4, a7, zero
  SW t4, 4(sp)
  ADDI t5, sp, 128
  ADD s8, t5, zero
  LW t4, 0(s8)
  SW t4, 0(sp)
  ADDI s9, zero, 236
  MULW s0, s0, s9
  ADD s0, s1, s0
  ADD s1, zero, zero
  # implict jump to bb17
bb17:
  ADD s9, s1, zero
  SLTI s10, s9, 10
  BNE s10, zero, bb22
  # implict jump to bb18
bb18:
  ADDI a0, zero, 10
  CALL putch
  SLLIW s10, s2, 2
  ADD s10, s3, s10
  LW s10, 0(s10)
  ADD a0, s10, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t4, 0(sp)
  ADD s10, t4, zero
  LW t4, 4(sp)
  ADD s11, t4, zero
  # implict jump to bb19
bb19:
  ADD s8, s11, zero
  ADD s7, s10, zero
  SLTI s6, s7, 10
  BNE s6, zero, bb21
  # implict jump to bb20
bb20:
  LW t4, 12(sp)
  LW t3, 8(sp)
  ADDW s6, t4, t3
  ADD a0, s6, zero
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s11, 88(sp)
  LD s8, 104(sp)
  LD s9, 112(sp)
  LD s10, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb21:
  SLLIW s6, s7, 2
  LD t4, 96(sp)
  ADD s6, t4, s6
  LUI s5, 31
  ADDIW s5, s5, 1899
  MULW s5, s8, s5
  LUI s4, 1
  ADDIW s4, s4, -372
  REMW s4, s5, s4
  SW s4, 0(s6)
  ADDIW s4, s7, 1
  ADDIW s5, s8, 7
  ADD s10, s4, zero
  ADD s11, s5, zero
  JAL zero, bb19
bb22:
  SLLIW s4, s9, 2
  ADD s4, s0, s4
  LW s4, 0(s4)
  ADD a0, s4, zero
  CALL putint
  ADDIW s4, s9, 1
  ADD s1, s4, zero
  JAL zero, bb17
