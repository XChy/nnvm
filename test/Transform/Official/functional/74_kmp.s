.global KMP
.global read_str
.global main
.global get_next
.section .bss
.section .data
.section .text
KMP:
  LUI t0, 1048572
  ADDI t0, t0, -96
  ADD sp, sp, t0
  LUI t5, 4
  ADDI t5, t5, 0
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t6, 4
  ADDI t6, t6, 8
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t5, 4
  ADDI t5, t5, 16
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t6, 4
  ADDI t6, t6, 24
  ADD t6, t6, sp
  SD s7, 0(t6)
  LUI t5, 4
  ADDI t5, t5, 32
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t6, 4
  ADDI t6, t6, 40
  ADD t6, t6, sp
  SD s6, 0(t6)
  LUI t5, 4
  ADDI t5, t5, 48
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t6, 4
  ADDI t6, t6, 56
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t5, 4
  ADDI t5, t5, 64
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t6, 4
  ADDI t6, t6, 72
  ADD t6, t6, sp
  SD s4, 0(t6)
  LUI t5, 4
  ADDI t5, t5, 80
  ADD t5, t5, sp
  SD s9, 0(t5)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD a0, s0, zero
  ADDI a1, sp, 0
  ADD a1, a1, zero
  CALL get_next
  ADD s2, zero, zero
  ADD s3, zero, zero
  JAL zero, bb1
bb1:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADD s6, s1, s7
  LW s7, 0(s6)
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s7, zero, 4
  MULW s8, s4, s7
  ADD s7, s0, s8
  LW s9, 0(s7)
  LW s7, 0(s6)
  XOR s6, s9, s7
  SLTIU s7, s6, 1
  BNE s7, zero, bb4
  JAL zero, bb6
bb3:
  ADDI a0, zero, -1
  LUI ra, 4
  ADDI ra, ra, 0
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 4
  ADDI t6, t6, 8
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t5, 4
  ADDI t5, t5, 16
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t6, 4
  ADDI t6, t6, 24
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t5, 4
  ADDI t5, t5, 32
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 4
  ADDI t6, t6, 40
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t5, 4
  ADDI t5, t5, 48
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t6, 4
  ADDI t6, t6, 56
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t5, 4
  ADDI t5, t5, 64
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t6, 4
  ADDI t6, t6, 72
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t5, 4
  ADDI t5, t5, 80
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t0, 4
  ADDI t0, t0, 96
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb4:
  ADDIW s6, s4, 1
  ADDIW s4, s5, 1
  ADDI s7, zero, 4
  MULW s9, s6, s7
  ADD s7, s0, s9
  LW s9, 0(s7)
  XOR s7, s9, zero
  SLTU s9, zero, s7
  XORI s7, s9, 1
  ADD s9, s7, zero
  XOR s7, s9, zero
  SLTU s9, zero, s7
  BNE s9, zero, bb7
  JAL zero, bb8
bb5:
  ADD s6, s4, zero
  ADD s9, s7, zero
  ADD s2, s9, zero
  ADD s3, s6, zero
  JAL zero, bb1
bb6:
  ADDI t6, sp, 0
  ADD s2, t6, s8
  LW s3, 0(s2)
  XORI s2, s3, -1
  SLTIU s6, s2, 1
  BNE s6, zero, bb9
  JAL zero, bb11
bb7:
  ADD a0, s4, zero
  LUI ra, 4
  ADDI ra, ra, 0
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 4
  ADDI t5, t5, 8
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t6, 4
  ADDI t6, t6, 16
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t5, 4
  ADDI t5, t5, 24
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t6, 4
  ADDI t6, t6, 32
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t5, 4
  ADDI t5, t5, 40
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t6, 4
  ADDI t6, t6, 48
  ADD t6, t6, sp
  LD s8, 0(t6)
  LUI t5, 4
  ADDI t5, t5, 56
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t6, 4
  ADDI t6, t6, 64
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t5, 4
  ADDI t5, t5, 72
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t6, 4
  ADDI t6, t6, 80
  ADD t6, t6, sp
  LD s9, 0(t6)
  LUI t0, 4
  ADDI t0, t0, 96
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb8:
  ADD s7, s4, zero
  ADD s4, s6, zero
  JAL zero, bb5
bb9:
  ADDIW s2, s3, 1
  ADDIW s6, s5, 1
  ADD s8, s6, zero
  ADD s6, s2, zero
  JAL zero, bb10
bb10:
  ADD s2, s6, zero
  ADD s9, s8, zero
  ADD s7, s9, zero
  ADD s4, s2, zero
  JAL zero, bb5
bb11:
  ADD s8, s5, zero
  ADD s6, s3, zero
  JAL zero, bb10
read_str:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  JAL zero, bb13
bb13:
  ADD s2, s1, zero
  JAL zero, bb14
bb14:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s3, s0, s4
  CALL getch
  ADD s4, a0, zero
  SW s4, 0(s3)
  LW s4, 0(s3)
  XORI s5, s4, 10
  SLTIU s4, s5, 1
  BNE s4, zero, bb16
  JAL zero, bb17
bb15:
  SW zero, 0(s3)
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb16:
  JAL zero, bb15
bb17:
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb13
main:
  LUI t0, 1048568
  ADDI t0, t0, -16
  ADD sp, sp, t0
  LUI t5, 8
  ADDI t5, t5, 0
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI a0, 8
  ADDI a0, a0, 8
  ADD a0, a0, sp
  SD s0, 0(a0)
  LUI a0, 4
  ADDI a0, a0, 0
  ADD a0, a0, sp
  ADD a0, a0, zero
  CALL read_str
  ADD s0, a0, zero
  ADDI a0, sp, 0
  ADD a0, a0, zero
  CALL read_str
  ADD s0, a0, zero
  LUI a0, 4
  ADDI a0, a0, 0
  ADD a0, a0, sp
  ADD a0, a0, zero
  ADDI a1, sp, 0
  ADD a1, a1, zero
  CALL KMP
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LUI ra, 8
  ADDI ra, ra, 0
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 8
  ADDI t6, t6, 8
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t0, 8
  ADDI t0, t0, 16
  ADD sp, sp, t0
  JALR zero, 0(ra)
get_next:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s9, 16(sp)
  SD s0, 24(sp)
  SD s5, 32(sp)
  SD s7, 40(sp)
  SD s1, 48(sp)
  SD s6, 56(sp)
  SD s8, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD ra, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, s1, zero
  ADDI s3, zero, -1
  SW s3, 0(s2)
  ADD s2, zero, zero
  ADDI s3, zero, -1
  JAL zero, bb20
bb20:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADD s6, s0, s7
  LW s7, 0(s6)
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb21
  JAL zero, bb22
bb21:
  XORI s7, s4, -1
  SLTIU s8, s7, 1
  BNE s8, zero, bb23
  JAL zero, bb24
bb22:
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s7, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s8, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb23:
  ADDI s7, zero, 1
  JAL zero, bb25
bb24:
  LW s2, 0(s6)
  ADDI s3, zero, 4
  MULW s6, s4, s3
  ADD s3, s0, s6
  LW s6, 0(s3)
  XOR s3, s2, s6
  SLTIU s2, s3, 1
  ADD s7, s2, zero
  JAL zero, bb25
bb25:
  ADD s8, s7, zero
  BNE s8, zero, bb26
  JAL zero, bb28
bb26:
  ADDIW s8, s4, 1
  ADDIW s9, s5, 1
  ADDI s10, zero, 4
  MULW s11, s9, s10
  ADD s10, s1, s11
  SW s8, 0(s10)
  ADD s10, s9, zero
  ADD s9, s8, zero
  JAL zero, bb27
bb27:
  ADD s8, s9, zero
  ADD s11, s10, zero
  ADD s2, s11, zero
  ADD s3, s8, zero
  JAL zero, bb20
bb28:
  ADDI s2, zero, 4
  MULW s3, s4, s2
  ADD s2, s1, s3
  LW s3, 0(s2)
  ADD s10, s5, zero
  ADD s9, s3, zero
  JAL zero, bb27
