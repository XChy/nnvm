.global main
.section .bss
.section .data
.section .text
main:
  LUI t0, 1048564
  ADDIW t0, t0, -48
  ADD sp, sp, t0
  LUI t5, 12
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 8
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 16
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  SD s3, 0(t5)
  CALL getch
  ADD s0, a0, zero
  LUI t5, 8
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  SW s0, 0(t5)
  XORI s0, s0, 10
  SLTIU s0, s0, 1
  BNE s0, zero, bb34
  # implict jump to bb1
bb1:
  ADD s0, zero, zero
  # implict jump to bb2
bb2:
  ADDIW s2, s0, 1
  SLLIW s0, s2, 2
  LUI t5, 8
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD s1, t5, s0
  CALL getch
  ADD s0, a0, zero
  SW s0, 0(s1)
  XORI s0, s0, 10
  SLTIU s0, s0, 1
  BNE s0, zero, bb4
  # implict jump to bb3
bb3:
  ADD s0, s2, zero
  JAL zero, bb2
bb4:
  ADD s0, s1, zero
  # implict jump to bb5
bb5:
  SW zero, 0(s0)
  CALL getch
  ADD s0, a0, zero
  LUI t5, 4
  ADDIW t5, t5, 0
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
  ADDIW s1, s0, 1
  SLLIW s0, s1, 2
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD s2, t5, s0
  CALL getch
  ADD s0, a0, zero
  SW s0, 0(s2)
  XORI s0, s0, 10
  SLTIU s0, s0, 1
  BNE s0, zero, bb9
  # implict jump to bb8
bb8:
  ADD s0, s1, zero
  JAL zero, bb7
bb9:
  ADD a0, s2, zero
  # implict jump to bb10
bb10:
  SW zero, 0(a0)
  ADDI a0, zero, -1
  SW a0, 0(sp)
  LUI a0, 8
  ADDIW a0, a0, 0
  ADD a0, a0, sp
  LW a0, 0(a0)
  BNE a0, zero, bb24
  # implict jump to bb11
bb11:
  ADD s0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb12
bb12:
  ADD s3, a0, zero
  ADD s2, s0, zero
  SLLIW a0, s2, 2
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD a0, t5, a0
  LW a0, 0(a0)
  BNE a0, zero, bb15
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
  LUI t5, 12
  ADDIW t5, t5, 8
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 16
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t0, 12
  ADDIW t0, t0, 48
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb15:
  SLLIW s1, s3, 2
  LUI t5, 8
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD s0, t5, s1
  LW s0, 0(s0)
  XOR a0, s0, a0
  SLTIU a0, a0, 1
  BNE a0, zero, bb21
  # implict jump to bb16
bb16:
  ADDI a0, sp, 0
  ADD a0, a0, s1
  LW s1, 0(a0)
  XORI a0, s1, -1
  SLTIU a0, a0, 1
  BNE a0, zero, bb20
  # implict jump to bb17
bb17:
  ADD s0, s2, zero
  ADD a0, s1, zero
  # implict jump to bb18
bb18:
  ADD s1, a0, zero
  ADD a0, s0, zero
  ADD s0, a0, zero
  ADD a0, s1, zero
  # implict jump to bb19
bb19:
  ADD s1, a0, zero
  ADD a0, s0, zero
  ADD s0, a0, zero
  ADD a0, s1, zero
  JAL zero, bb12
bb20:
  ADDIW s1, s1, 1
  ADDIW a0, s2, 1
  ADD s0, a0, zero
  ADD a0, s1, zero
  JAL zero, bb18
bb21:
  ADDIW s1, s3, 1
  ADDIW s0, s2, 1
  SLLIW a0, s1, 2
  LUI t5, 8
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD a0, t5, a0
  LW a0, 0(a0)
  SLTU a0, zero, a0
  XORI a0, a0, 1
  BNE a0, zero, bb23
  # implict jump to bb22
bb22:
  ADD a0, s1, zero
  JAL zero, bb19
bb23:
  ADD a0, s0, zero
  JAL zero, bb14
bb24:
  ADD s1, zero, zero
  ADDI s0, zero, -1
  # implict jump to bb25
bb25:
  ADD s2, a0, zero
  XORI a0, s0, -1
  SLTIU a0, a0, 1
  BNE a0, zero, bb32
  # implict jump to bb26
bb26:
  SLLIW a0, s0, 2
  LUI t5, 8
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD a0, t5, a0
  LW a0, 0(a0)
  XOR a0, s2, a0
  SLTIU a0, a0, 1
  # implict jump to bb27
bb27:
  BNE a0, zero, bb31
  # implict jump to bb28
bb28:
  SLLIW a0, s0, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW a0, 0(a0)
  ADD s0, a0, zero
  ADD a0, s1, zero
  # implict jump to bb29
bb29:
  ADD s1, a0, zero
  SLLIW a0, s1, 2
  LUI t5, 8
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD a0, t5, a0
  LW a0, 0(a0)
  BNE a0, zero, bb30
  JAL zero, bb11
bb30:
  JAL zero, bb25
bb31:
  ADDIW a0, s0, 1
  ADDIW s1, s1, 1
  SLLIW s0, s1, 2
  ADDI t5, sp, 0
  ADD s0, t5, s0
  SW a0, 0(s0)
  ADD s0, a0, zero
  ADD a0, s1, zero
  JAL zero, bb29
bb32:
  ADDI a0, zero, 1
  JAL zero, bb27
bb33:
  LUI a0, 4
  ADDIW a0, a0, 0
  ADD a0, a0, sp
  ADD a0, a0, zero
  JAL zero, bb10
bb34:
  LUI t5, 8
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD s0, t5, zero
  JAL zero, bb5
