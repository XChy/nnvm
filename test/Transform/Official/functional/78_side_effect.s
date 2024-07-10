.global main
.global inc_a
.section .bss


.section .data
b:
.word 0x00000001
a:
.word 0xffffffff
.section .text
main:
  ADDI sp, sp, -96
  SD s10, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s1, 24(sp)
  SD s6, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s7, 64(sp)
  SD ra, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  ADD s0, zero, zero
  ADDI s1, zero, 5
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLT s4, s2, zero
  XORI s5, s4, 1
  BNE s5, zero, bb3
  # implict jump to bb2
bb2:
  LA s0, a
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LA s0, b
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s0, a
  LW s1, 0(s0)
  ADD a0, s1, zero
  LD s10, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s1, 24(sp)
  LD s6, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s7, 64(sp)
  LD ra, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb3:
  LA s4, a
  LW s5, 0(s4)
  ADDIW s4, s5, 1
  LA s5, a
  SW s4, 0(s5)
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb20
  # implict jump to bb4
bb4:
  ADD s5, zero, zero
  # implict jump to bb5
bb5:
  ADD s4, s5, zero
  BNE s4, zero, bb19
  # implict jump to bb6
bb6:
  ADD s6, zero, zero
  # implict jump to bb7
bb7:
  ADD s4, s6, zero
  BNE s4, zero, bb18
  # implict jump to bb8
bb8:
  LA s4, a
  LW s7, 0(s4)
  ADDIW s4, s7, 1
  LA s7, a
  SW s4, 0(s7)
  SLTI s7, s4, 14
  BNE s7, zero, bb17
  # implict jump to bb9
bb9:
  LA s0, a
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, a
  SW s0, 0(s1)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb16
  # implict jump to bb10
bb10:
  ADD s1, zero, zero
  # implict jump to bb11
bb11:
  ADD s0, s1, zero
  ADD s4, s0, zero
  ADD s7, s0, zero
  # implict jump to bb12
bb12:
  ADD s8, s7, zero
  ADD s9, s4, zero
  BNE s8, zero, bb15
  # implict jump to bb13
bb13:
  LA s0, a
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, a
  SW s0, 0(s1)
  # implict jump to bb14
bb14:
  ADDI s8, zero, 1
  SUBW s10, s2, s8
  ADD s0, s9, zero
  ADD s1, s10, zero
  JAL zero, bb1
bb15:
  LA s8, a
  LW s10, 0(s8)
  ADD a0, s10, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s8, b
  LW s10, 0(s8)
  SLLIW s8, s10, 1
  LA s10, b
  SW s8, 0(s10)
  JAL zero, bb14
bb16:
  LA s0, a
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, a
  SW s0, 0(s1)
  LA s1, a
  LW s8, 0(s1)
  ADDIW s1, s8, 1
  LA s8, a
  SW s1, 0(s8)
  SUBW s8, s0, s1
  ADDIW s0, s8, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD s1, s0, zero
  JAL zero, bb11
bb17:
  ADD s4, s3, zero
  ADDI s7, zero, 1
  JAL zero, bb12
bb18:
  LA s4, a
  LW s7, 0(s4)
  ADD a0, s7, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LA s4, b
  LW s7, 0(s4)
  ADD a0, s7, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb8
bb19:
  LA s4, a
  LW s6, 0(s4)
  ADDIW s4, s6, 1
  LA s6, a
  SW s4, 0(s6)
  XOR s6, s4, zero
  SLTU s4, zero, s6
  ADD s6, s4, zero
  JAL zero, bb7
bb20:
  LA s4, a
  LW s5, 0(s4)
  ADDIW s4, s5, 1
  LA s5, a
  SW s4, 0(s5)
  XOR s5, s4, zero
  SLTU s4, zero, s5
  ADD s5, s4, zero
  JAL zero, bb5
inc_a:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  LA s0, a
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, a
  SW s0, 0(s1)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
