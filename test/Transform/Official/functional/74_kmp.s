.global main
.section .bss
.section .data
.section .text
main:
  LUI t0, 1048564
  ADDIW t0, t0, -128
  ADD sp, sp, t0
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s7, 72(sp)
  SD s10, 80(sp)
  SD s11, 88(sp)
  SD s8, 96(sp)
  SD s9, 104(sp)
  LUI t5, 8
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SD s6, 0(t5)
  CALL getch
  ADD s0, a0, zero
  SW s0, 112(sp)
  XORI s0, s0, 10
  SLTIU s0, s0, 1
  BNE s0, zero, bb34
  # implict jump to bb1
bb1:
  ADD s0, zero, zero
  # implict jump to bb2
bb2:
  ADD s1, s0, zero
  ADDIW s1, s1, 1
  SLLIW s2, s1, 2
  ADDI t5, sp, 112
  ADD s2, t5, s2
  CALL getch
  ADD s3, a0, zero
  SW s3, 0(s2)
  XORI s3, s3, 10
  SLTIU s3, s3, 1
  BNE s3, zero, bb4
  # implict jump to bb3
bb3:
  ADD s0, s1, zero
  JAL zero, bb2
bb4:
  ADD s0, s2, zero
  # implict jump to bb5
bb5:
  SW zero, 0(s0)
  CALL getch
  ADD s0, a0, zero
  LUI t5, 4
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW s0, 0(t5)
  XORI s0, s0, 10
  SLTIU s0, s0, 1
  BNE s0, zero, bb33
  # implict jump to bb6
bb6:
  ADD s0, zero, zero
  # implict jump to bb7
bb7:
  ADD s1, s0, zero
  ADDIW s1, s1, 1
  SLLIW s2, s1, 2
  LUI t5, 4
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  ADD s2, t5, s2
  CALL getch
  ADD s3, a0, zero
  SW s3, 0(s2)
  XORI s3, s3, 10
  SLTIU s3, s3, 1
  BNE s3, zero, bb9
  # implict jump to bb8
bb8:
  ADD s0, s1, zero
  JAL zero, bb7
bb9:
  ADD s0, s2, zero
  # implict jump to bb10
bb10:
  SW zero, 0(s0)
  ADDI s0, zero, -1
  LUI t5, 8
  ADDIW t5, t5, 120
  ADD t5, t5, sp
  SW s0, 0(t5)
  LW s0, 112(sp)
  BNE s0, zero, bb24
  # implict jump to bb11
bb11:
  ADD s4, zero, zero
  ADD s7, zero, zero
  # implict jump to bb12
bb12:
  ADD s8, s7, zero
  ADD s9, s4, zero
  SLLIW s10, s9, 2
  LUI t5, 4
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  ADD s10, t5, s10
  LW s10, 0(s10)
  BNE s10, zero, bb15
  # implict jump to bb13
bb13:
  ADDI s11, zero, -1
  # implict jump to bb14
bb14:
  ADD a0, s11, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s7, 72(sp)
  LD s10, 80(sp)
  LD s11, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LUI t5, 8
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t0, 12
  ADDIW t0, t0, 128
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb15:
  SLLIW s2, s8, 2
  ADDI t5, sp, 112
  ADD s6, t5, s2
  LW s6, 0(s6)
  XOR s6, s6, s10
  SLTIU s6, s6, 1
  BNE s6, zero, bb21
  # implict jump to bb16
bb16:
  LUI t5, 8
  ADDIW t5, t5, 120
  ADD t5, t5, sp
  ADD s2, t5, s2
  LW s2, 0(s2)
  XORI s6, s2, -1
  SLTIU s6, s6, 1
  BNE s6, zero, bb20
  # implict jump to bb17
bb17:
  ADD s6, s9, zero
  ADD s10, s2, zero
  # implict jump to bb18
bb18:
  ADD s1, s6, zero
  ADD s2, s10, zero
  # implict jump to bb19
bb19:
  ADD s4, s1, zero
  ADD s7, s2, zero
  JAL zero, bb12
bb20:
  ADDIW s2, s2, 1
  ADDIW s1, s9, 1
  ADD s6, s1, zero
  ADD s10, s2, zero
  JAL zero, bb18
bb21:
  ADDIW s6, s8, 1
  ADDIW s8, s9, 1
  SLLIW s9, s6, 2
  ADDI t5, sp, 112
  ADD s9, t5, s9
  LW s9, 0(s9)
  SLTU s9, zero, s9
  XORI s9, s9, 1
  BNE s9, zero, bb23
  # implict jump to bb22
bb22:
  ADD s1, s8, zero
  ADD s2, s6, zero
  JAL zero, bb19
bb23:
  ADD s11, s8, zero
  JAL zero, bb14
bb24:
  ADDI t4, zero, -1
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb25
bb25:
  LW t4, 8(sp)
  ADD s3, t4, zero
  LW t4, 0(sp)
  ADD s4, t4, zero
  ADD s5, s0, zero
  XORI s6, s4, -1
  SLTIU s6, s6, 1
  BNE s6, zero, bb32
  # implict jump to bb26
bb26:
  SLLIW s6, s4, 2
  ADDI t5, sp, 112
  ADD s6, t5, s6
  LW s6, 0(s6)
  XOR s5, s5, s6
  SLTIU s5, s5, 1
  # implict jump to bb27
bb27:
  BNE s5, zero, bb31
  # implict jump to bb28
bb28:
  SLLIW s5, s4, 2
  LUI t5, 8
  ADDIW t5, t5, 120
  ADD t5, t5, sp
  ADD s5, t5, s5
  LW s5, 0(s5)
  ADD s6, s3, zero
  # implict jump to bb29
bb29:
  ADD t4, s6, zero
  SW t4, 4(sp)
  LW t4, 4(sp)
  SLLIW s3, t4, 2
  ADDI t5, sp, 112
  ADD s3, t5, s3
  LW s3, 0(s3)
  BNE s3, zero, bb30
  JAL zero, bb11
bb30:
  ADD s0, s3, zero
  ADD t4, s5, zero
  SW t4, 0(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb25
bb31:
  ADDIW s4, s4, 1
  ADDIW s3, s3, 1
  SLLIW s7, s3, 2
  LUI t5, 8
  ADDIW t5, t5, 120
  ADD t5, t5, sp
  ADD s7, t5, s7
  SW s4, 0(s7)
  ADD s6, s3, zero
  ADD s5, s4, zero
  JAL zero, bb29
bb32:
  ADDI s5, zero, 1
  JAL zero, bb27
bb33:
  LUI t5, 4
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  ADD s0, t5, zero
  JAL zero, bb10
bb34:
  ADDI t5, sp, 112
  ADD s0, t5, zero
  JAL zero, bb5
