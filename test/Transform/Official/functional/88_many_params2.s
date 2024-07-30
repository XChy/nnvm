.global main
.global func
.section .bss
.section .data
.section .text
main:
  LUI t0, 1048569
  ADDIW t0, t0, -320
  ADD sp, sp, t0
  SD ra, 24(sp)
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s5, 72(sp)
  SD s6, 80(sp)
  SD s7, 88(sp)
  SD s8, 96(sp)
  SD s9, 104(sp)
  SD s10, 112(sp)
  SD s11, 120(sp)
  LUI s0, 1
  ADDIW s0, s0, -9
  ADD t4, zero, s0
  SW t4, 12(sp)
  # implict jump to bb1
bb1:
  LW t4, 12(sp)
  ADD s1, t4, zero
  ADDI s2, zero, 1
  SUBW t4, s1, s2
  SW t4, 16(sp)
  LW t4, 16(sp)
  SLLIW s2, t4, 2
  ADDI t5, sp, 128
  ADD s2, t5, s2
  ADDI s3, zero, 0
  SW s3, 0(s2)
  LW t4, 16(sp)
  BNE t4, zero, bb17
  # implict jump to bb2
bb2:
  LUI s2, 1
  ADDIW s2, s2, -969
  ADD t4, zero, s2
  SW t4, 20(sp)
  # implict jump to bb3
bb3:
  LW t4, 20(sp)
  ADD s3, t4, zero
  ADDI s4, zero, 1
  SUBW t4, s3, s4
  SW t4, 8(sp)
  LW t4, 8(sp)
  SLLIW s4, t4, 2
  LUI t4, 4
  ADDIW t4, t4, 96
  ADD t4, t4, sp
  ADD s4, t4, s4
  SW zero, 0(s4)
  LW t4, 8(sp)
  BNE t4, zero, bb16
  # implict jump to bb4
bb4:
  LUI s4, 1
  ADDIW s4, s4, 464
  ADDI t5, sp, 128
  ADD s4, t5, s4
  ADDI s5, zero, 6
  SW s5, 0(s4)
  LUI s4, 1
  ADDIW s4, s4, 472
  ADDI t5, sp, 128
  ADD s4, t5, s4
  ADDI s5, zero, 7
  SW s5, 0(s4)
  LUI s4, 1
  ADDIW s4, s4, 476
  ADDI t5, sp, 128
  ADD s4, t5, s4
  ADDI s5, zero, 4
  SW s5, 0(s4)
  LUI s4, 1
  ADDIW s4, s4, 488
  ADDI t5, sp, 128
  ADD s4, t5, s4
  ADDI s5, zero, 9
  SW s5, 0(s4)
  LUI s5, 1
  ADDIW s5, s5, 504
  ADDI t5, sp, 128
  ADD s5, t5, s5
  ADDI s6, zero, 11
  SW s6, 0(s5)
  ADDI s5, zero, 1
  LUI t5, 4
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  SW s5, 1420(t5)
  ADDI s5, zero, 2
  LUI t5, 4
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  SW s5, 1424(t5)
  ADDI s5, zero, 3
  LUI t5, 4
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  SW s5, 1428(t5)
  ADDI s5, zero, 9
  LUI t5, 4
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  SW s5, 1452(t5)
  LUI t5, 4
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  ADDI s5, t5, 1416
  LUI t5, 4
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  LW s6, 1416(t5)
  LUI s7, 2
  ADDIW s7, s7, -152
  LUI t4, 4
  ADDIW t4, t4, 96
  ADD t4, t4, sp
  ADD s7, t4, s7
  LW t4, 0(s7)
  SW t4, 0(sp)
  LUI s8, 3
  ADDIW s8, s8, -180
  LUI t4, 4
  ADDIW t4, t4, 96
  ADD t4, t4, sp
  ADD s8, t4, s8
  LW t4, 0(s8)
  SW t4, 4(sp)
  ADD s9, zero, zero
  # implict jump to bb5
bb5:
  ADD s10, s9, zero
  SLLIW s11, s10, 2
  ADD s11, s5, s11
  LW s11, 0(s11)
  ADD a0, s11, zero
  CALL putint
  ADDIW s10, s10, 1
  SLTI s11, s10, 10
  BNE s11, zero, bb15
  # implict jump to bb6
bb6:
  ADDI a0, zero, 10
  CALL putch
  LW s11, 0(s4)
  ADD a0, s11, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t4, 4(sp)
  SLTI s11, t4, 10
  BNE s11, zero, bb12
  # implict jump to bb7
bb7:
  ADDIW s3, s6, 3
  ADDI s7, zero, 3
  MULW s3, s3, s7
  SLT s7, s3, zero
  XORI s7, s7, 1
  BNE s7, zero, bb9
  # implict jump to bb8
bb8:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD s10, 112(sp)
  LD s11, 120(sp)
  LUI t0, 7
  ADDIW t0, t0, 320
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb9:
  # implict jump to bb10
bb10:
  ADD s7, s3, zero
  SLLIW s8, s7, 2
  ADD s8, s5, s8
  LW s8, 0(s8)
  ADD a0, s8, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI s8, zero, 1
  SUBW s7, s7, s8
  SLT s8, s7, zero
  XORI s8, s8, 1
  BNE s8, zero, bb11
  JAL zero, bb8
bb11:
  ADD s3, s7, zero
  JAL zero, bb10
bb12:
  LW t4, 0(sp)
  ADD s11, t4, zero
  LW t4, 4(sp)
  ADD s0, t4, zero
  # implict jump to bb13
bb13:
  ADD s1, s0, zero
  ADD s2, s11, zero
  SLLIW s3, s1, 2
  ADD s3, s5, s3
  LUI s8, 31
  ADDIW s8, s8, 1899
  MULW s8, s2, s8
  LUI s7, 1
  ADDIW s7, s7, -372
  REMW s7, s8, s7
  SW s7, 0(s3)
  ADDIW s1, s1, 1
  ADDIW s2, s2, 7
  SLTI s3, s1, 10
  BNE s3, zero, bb14
  JAL zero, bb7
bb14:
  ADD s11, s2, zero
  ADD s0, s1, zero
  JAL zero, bb13
bb15:
  ADD s9, s10, zero
  JAL zero, bb5
bb16:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb3
bb17:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  JAL zero, bb1
func:
  ADDI sp, sp, -112
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
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  ADD s6, a6, zero
  ADD s7, a7, zero
  ADDI t5, sp, 112
  ADD s8, t5, zero
  LW s8, 0(s8)
  ADDI s9, zero, 236
  MULW s0, s0, s9
  ADD s0, s1, s0
  ADD s1, zero, zero
  # implict jump to bb19
bb19:
  ADD s9, s1, zero
  SLLIW s10, s9, 2
  ADD s10, s0, s10
  LW s10, 0(s10)
  ADD a0, s10, zero
  CALL putint
  ADDIW s9, s9, 1
  SLTI s10, s9, 10
  BNE s10, zero, bb25
  # implict jump to bb20
bb20:
  ADDI a0, zero, 10
  CALL putch
  SLLIW s10, s2, 2
  ADD s10, s3, s10
  LW s10, 0(s10)
  ADD a0, s10, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  SLTI s10, s8, 10
  BNE s10, zero, bb22
  # implict jump to bb21
bb21:
  ADDW t2, s4, s5
  ADD a0, t2, zero
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
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb22:
  ADD s10, s7, zero
  ADD s11, s8, zero
  # implict jump to bb23
bb23:
  ADD t0, s11, zero
  ADD t1, s10, zero
  SLLIW t2, t0, 2
  ADD t2, s6, t2
  LUI a1, 31
  ADDIW a1, a1, 1899
  MULW a1, t1, a1
  LUI a2, 1
  ADDIW a2, a2, -372
  REMW a1, a1, a2
  SW a1, 0(t2)
  ADDIW t0, t0, 1
  ADDIW t1, t1, 7
  SLTI t2, t0, 10
  BNE t2, zero, bb24
  JAL zero, bb21
bb24:
  ADD s10, t1, zero
  ADD s11, t0, zero
  JAL zero, bb23
bb25:
  ADD s1, s9, zero
  JAL zero, bb19
