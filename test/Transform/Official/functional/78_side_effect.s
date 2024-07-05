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
  ADDI sp, sp, -80
  SD s8, 0(sp)
  SD s4, 8(sp)
  SD ra, 16(sp)
  SD s7, 24(sp)
  SD s3, 32(sp)
  SD s2, 40(sp)
  SD s6, 48(sp)
  SD s1, 56(sp)
  SD s5, 64(sp)
  SD s0, 72(sp)
  ADD s0, zero, zero
  ADDI s1, zero, 5
  JAL zero, bb1
bb1:
  SLT s2, s1, zero
  XORI s3, s2, 1
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb2
  JAL zero, bb3
bb2:
  CALL inc_a
  ADD s2, a0, zero
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb4
  JAL zero, bb5
bb3:
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
  LD s8, 0(sp)
  LD s4, 8(sp)
  LD ra, 16(sp)
  LD s7, 24(sp)
  LD s3, 32(sp)
  LD s2, 40(sp)
  LD s6, 48(sp)
  LD s1, 56(sp)
  LD s5, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb4:
  CALL inc_a
  ADD s2, a0, zero
  XOR s3, s2, zero
  SLTU s2, zero, s3
  ADD s3, s2, zero
  JAL zero, bb6
bb5:
  ADD s3, zero, zero
  JAL zero, bb6
bb6:
  BNE s3, zero, bb7
  JAL zero, bb8
bb7:
  CALL inc_a
  ADD s2, a0, zero
  XOR s4, s2, zero
  SLTU s2, zero, s4
  ADD s4, s2, zero
  JAL zero, bb9
bb8:
  ADD s4, zero, zero
  JAL zero, bb9
bb9:
  BNE s4, zero, bb10
  JAL zero, bb11
bb10:
  LA s2, a
  LW s5, 0(s2)
  ADD a0, s5, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LA s2, b
  LW s5, 0(s2)
  ADD a0, s5, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb11
bb11:
  CALL inc_a
  ADD s2, a0, zero
  SLTI s5, s2, 14
  BNE s5, zero, bb12
  JAL zero, bb13
bb12:
  ADD s2, s0, zero
  ADDI s5, zero, 1
  JAL zero, bb14
bb13:
  CALL inc_a
  ADD s6, a0, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb15
  JAL zero, bb16
bb14:
  BNE s5, zero, bb18
  JAL zero, bb20
bb15:
  CALL inc_a
  ADD s6, a0, zero
  CALL inc_a
  ADD s7, a0, zero
  SUBW s8, s6, s7
  ADDIW s6, s8, 1
  XOR s7, s6, zero
  SLTU s6, zero, s7
  ADD s7, s6, zero
  JAL zero, bb17
bb16:
  ADD s7, zero, zero
  JAL zero, bb17
bb17:
  XOR s6, s7, zero
  SLTU s8, zero, s6
  ADD s2, s7, zero
  ADD s5, s8, zero
  JAL zero, bb14
bb18:
  LA s6, a
  LW s7, 0(s6)
  ADD a0, s7, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s6, b
  LW s7, 0(s6)
  ADDI s6, zero, 2
  MULW s8, s7, s6
  LA s6, b
  SW s8, 0(s6)
  JAL zero, bb19
bb19:
  ADDI s6, zero, 1
  SUBW s7, s1, s6
  ADD s0, s2, zero
  ADD s1, s7, zero
  JAL zero, bb1
bb20:
  CALL inc_a
  ADD s6, a0, zero
  JAL zero, bb19
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
