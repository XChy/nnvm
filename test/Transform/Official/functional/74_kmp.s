.global main
.section .bss
.section .data
.section .text
main:
  LUI t0, 1048564
  ADDIW t0, t0, -48
  ADD sp, sp, t0
  LUI t6, 12
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  SD ra, 0(t6)
  LUI t6, 12
  ADDIW t6, t6, 8
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 12
  ADDIW t6, t6, 16
  ADD t6, t6, sp
  SD s1, 0(t6)
  LUI t6, 12
  ADDIW t6, t6, 24
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t6, 12
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  SD s3, 0(t6)
  CALL getch
  ADD s0, a0, zero
  LUI t6, 8
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  SW s0, 0(t6)
  XORI s0, s0, 10
  SLTIU s0, s0, 1
  BNE s0, zero, bb34
  # implict jump to bb1
bb1:
  ADD s0, zero, zero
  # implict jump to bb2
bb2:
  ADDIW s0, s0, 1
  SLLIW s1, s0, 2
  LUI t6, 8
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  ADD s1, t6, s1
  CALL getch
  ADD s2, a0, zero
  SW s2, 0(s1)
  XORI s2, s2, 10
  SLTIU s2, s2, 1
  BNE s2, zero, bb4
  # implict jump to bb3
bb3:
  JAL zero, bb2
bb4:
  # implict jump to bb5
bb5:
  SW zero, 0(s1)
  CALL getch
  ADD s0, a0, zero
  LUI t6, 4
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  SW s0, 0(t6)
  XORI s0, s0, 10
  SLTIU s0, s0, 1
  BNE s0, zero, bb33
  # implict jump to bb6
bb6:
  ADD s0, zero, zero
  # implict jump to bb7
bb7:
  ADDIW s0, s0, 1
  SLLIW s1, s0, 2
  LUI t6, 4
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  ADD s1, t6, s1
  CALL getch
  ADD s2, a0, zero
  SW s2, 0(s1)
  XORI s2, s2, 10
  SLTIU s2, s2, 1
  BNE s2, zero, bb9
  # implict jump to bb8
bb8:
  JAL zero, bb7
bb9:
  # implict jump to bb10
bb10:
  SW zero, 0(s1)
  ADDI a0, zero, -1
  SW a0, 0(sp)
  LUI t6, 8
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  LW s1, 0(t6)
  BNE s1, zero, bb24
  # implict jump to bb11
bb11:
  ADD a0, zero, zero
  ADD s0, zero, zero
  # implict jump to bb12
bb12:
  SLLIW s1, a0, 2
  LUI t6, 4
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  ADD s1, t6, s1
  LW s1, 0(s1)
  BNE s1, zero, bb15
  # implict jump to bb13
bb13:
  ADDI a0, zero, -1
  # implict jump to bb14
bb14:
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LUI ra, 12
  ADDIW ra, ra, 0
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 12
  ADDIW t6, t6, 8
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t6, 12
  ADDIW t6, t6, 16
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t6, 12
  ADDIW t6, t6, 24
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t6, 12
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t0, 12
  ADDIW t0, t0, 48
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb15:
  SLLIW s2, s0, 2
  LUI t6, 8
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  ADD s3, t6, s2
  LW s3, 0(s3)
  XOR s1, s3, s1
  SLTIU s1, s1, 1
  BNE s1, zero, bb21
  # implict jump to bb16
bb16:
  ADDI t6, sp, 0
  ADD s0, t6, s2
  LW s0, 0(s0)
  XORI s1, s0, -1
  SLTIU s1, s1, 1
  BNE s1, zero, bb20
  # implict jump to bb17
bb17:
  # implict jump to bb18
bb18:
  # implict jump to bb19
bb19:
  JAL zero, bb12
bb20:
  ADDIW s0, s0, 1
  ADDIW a0, a0, 1
  JAL zero, bb18
bb21:
  ADDIW s0, s0, 1
  ADDIW a0, a0, 1
  SLLIW s1, s0, 2
  LUI t6, 8
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  ADD s1, t6, s1
  LW s1, 0(s1)
  SLTU s1, zero, s1
  XORI s1, s1, 1
  BNE s1, zero, bb23
  # implict jump to bb22
bb22:
  JAL zero, bb19
bb23:
  JAL zero, bb14
bb24:
  ADD a0, zero, zero
  ADDI s0, zero, -1
  # implict jump to bb25
bb25:
  XORI s2, s0, -1
  SLTIU s2, s2, 1
  BNE s2, zero, bb32
  # implict jump to bb26
bb26:
  SLLIW s2, s0, 2
  LUI t6, 8
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  ADD s2, t6, s2
  LW s2, 0(s2)
  XOR s1, s1, s2
  SLTIU s1, s1, 1
  # implict jump to bb27
bb27:
  BNE s1, zero, bb31
  # implict jump to bb28
bb28:
  SLLIW s0, s0, 2
  ADDI t6, sp, 0
  ADD s0, t6, s0
  LW s0, 0(s0)
  # implict jump to bb29
bb29:
  SLLIW s1, a0, 2
  LUI t6, 8
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  ADD s1, t6, s1
  LW s1, 0(s1)
  BNE s1, zero, bb30
  JAL zero, bb11
bb30:
  JAL zero, bb25
bb31:
  ADDIW s0, s0, 1
  ADDIW a0, a0, 1
  SLLIW s1, a0, 2
  ADDI t6, sp, 0
  ADD s1, t6, s1
  SW s0, 0(s1)
  JAL zero, bb29
bb32:
  ADDI s1, zero, 1
  JAL zero, bb27
bb33:
  LUI t6, 4
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  ADD s1, t6, zero
  JAL zero, bb10
bb34:
  LUI t6, 8
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  ADD s1, t6, zero
  JAL zero, bb5
