.global KMP
.global read_str
.global main
.global get_next
.section .bss
.section .data
.section .text
KMP:
  LUI t0, 1048572
  ADDI t0, t0, -80
  ADD sp, sp, t0
  LUI t5, 4
  ADDI t5, t5, 16
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t6, 4
  ADDI t6, t6, 24
  ADD t6, t6, sp
  SD s4, 0(t6)
  LUI t5, 4
  ADDI t5, t5, 32
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t6, 4
  ADDI t6, t6, 40
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t5, 4
  ADDI t5, t5, 48
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t6, 4
  ADDI t6, t6, 56
  ADD t6, t6, sp
  SD s5, 0(t6)
  LUI t5, 4
  ADDI t5, t5, 64
  ADD t5, t5, sp
  SD s0, 0(t5)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD a0, s0, zero
  ADDI a1, sp, 16
  ADD a1, a1, zero
  CALL get_next
  ADDI s2, zero, 0
  SW s2, 8(sp)
  ADDI s2, zero, 0
  SW s2, 0(sp)
  JAL zero, bb1
bb1:
  LW s2, 0(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s1, s4
  LW s3, 0(s2)
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb2
  JAL zero, bb3
bb2:
  LW s2, 8(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s3, 0(s2)
  LW s2, 0(sp)
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s2, s1, s5
  LW s4, 0(s2)
  XOR s2, s3, s4
  SLTIU s3, s2, 1
  BNE s3, zero, bb4
  JAL zero, bb6
bb3:
  ADDI s0, zero, 1
  SUBW s1, zero, s0
  ADD a0, s1, zero
  LUI ra, 4
  ADDI ra, ra, 16
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 4
  ADDI t6, t6, 24
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t5, 4
  ADDI t5, t5, 32
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t6, 4
  ADDI t6, t6, 40
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t5, 4
  ADDI t5, t5, 48
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 4
  ADDI t6, t6, 56
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t5, 4
  ADDI t5, t5, 64
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t0, 4
  ADDI t0, t0, 80
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb4:
  LW s2, 8(sp)
  ADDIW s3, s2, 1
  SW s3, 8(sp)
  LW s2, 0(sp)
  ADDIW s3, s2, 1
  SW s3, 0(sp)
  LW s2, 8(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s3, 0(s2)
  XOR s2, s3, zero
  SLTU s3, zero, s2
  XORI s2, s3, 1
  ADD s3, s2, zero
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb7
  JAL zero, bb8
bb5:
  JAL zero, bb1
bb6:
  LW s2, 8(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADDI t6, sp, 16
  ADD s2, t6, s4
  LW s3, 0(s2)
  SW s3, 8(sp)
  ADDI s2, zero, 1
  SUBW s4, zero, s2
  XOR s2, s3, s4
  SLTIU s3, s2, 1
  BNE s3, zero, bb9
  JAL zero, bb10
bb7:
  LW s2, 0(sp)
  ADD a0, s2, zero
  LUI ra, 4
  ADDI ra, ra, 16
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 4
  ADDI t5, t5, 24
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t6, 4
  ADDI t6, t6, 32
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t5, 4
  ADDI t5, t5, 40
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t6, 4
  ADDI t6, t6, 48
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t5, 4
  ADDI t5, t5, 56
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t6, 4
  ADDI t6, t6, 64
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t0, 4
  ADDI t0, t0, 80
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb8:
  JAL zero, bb5
bb9:
  LW s2, 8(sp)
  ADDIW s3, s2, 1
  SW s3, 8(sp)
  LW s2, 0(sp)
  ADDIW s3, s2, 1
  SW s3, 0(sp)
  JAL zero, bb10
bb10:
  JAL zero, bb5
read_str:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  SW zero, 0(sp)
  JAL zero, bb12
bb12:
  XORI s1, zero, 1
  SLTU s2, zero, s1
  BNE s2, zero, bb13
  JAL zero, bb14
bb13:
  LW s1, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  CALL getch
  ADD s2, a0, zero
  SW s2, 0(s1)
  LW s1, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(s1)
  XORI s1, s2, 10
  SLTIU s2, s1, 1
  BNE s2, zero, bb15
  JAL zero, bb16
bb14:
  LW s1, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  SW zero, 0(s1)
  LW s1, 0(sp)
  ADD a0, s1, zero
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb15:
  JAL zero, bb14
bb16:
  LW s1, 0(sp)
  ADDIW s2, s1, 1
  SW s2, 0(sp)
  JAL zero, bb12
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
  ADDI sp, sp, -80
  SD ra, 24(sp)
  SD s4, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s5, 64(sp)
  SD s0, 72(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDI s2, zero, 4
  MUL s3, zero, s2
  ADD s2, s1, s3
  ADDI s3, zero, 1
  SUB s4, zero, s3
  SW s4, 0(s2)
  SW zero, 16(sp)
  ADDI s2, zero, 1
  SUB s3, zero, s2
  SW s3, 8(sp)
  JAL zero, bb19
bb19:
  LW s2, 16(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s3, 0(s2)
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb20
  JAL zero, bb21
bb20:
  LW s2, 8(sp)
  ADDI s3, zero, 1
  SUB s4, zero, s3
  XOR s3, s2, s4
  SLTIU s2, s3, 1
  BNE s2, zero, bb22
  JAL zero, bb23
bb21:
  LD ra, 24(sp)
  LD s4, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s5, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb22:
  ADDI s2, zero, 1
  SB s2, 0(sp)
  JAL zero, bb24
bb23:
  LW s2, 16(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s3, 0(s2)
  LW s2, 8(sp)
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s2, s0, s5
  LW s4, 0(s2)
  XOR s2, s3, s4
  SLTIU s3, s2, 1
  XOR s2, s3, zero
  SLTU s3, zero, s2
  SB s3, 0(sp)
  JAL zero, bb24
bb24:
  LB s2, 0(sp)
  BNE s2, zero, bb25
  JAL zero, bb27
bb25:
  LW s2, 8(sp)
  ADDIW s3, s2, 1
  SW s3, 8(sp)
  LW s2, 16(sp)
  ADDIW s3, s2, 1
  SW s3, 16(sp)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  ADD s2, s1, s4
  LW s3, 8(sp)
  SW s3, 0(s2)
  JAL zero, bb26
bb26:
  JAL zero, bb19
bb27:
  LW s2, 8(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s1, s4
  LW s3, 0(s2)
  SW s3, 8(sp)
  JAL zero, bb26
