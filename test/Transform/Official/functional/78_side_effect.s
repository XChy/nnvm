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
  SD s2, 40(sp)
  SD ra, 48(sp)
  SD s1, 56(sp)
  SD s0, 64(sp)
  ADDI s0, zero, 5
  SW s0, 32(sp)
  JAL zero, bb1
bb1:
  LW s0, 32(sp)
  SLT s1, s0, zero
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb2
  JAL zero, bb3
bb2:
  CALL inc_a
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb4
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
  LD s2, 40(sp)
  LD ra, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb4:
  CALL inc_a
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 24(sp)
  JAL zero, bb6
bb5:
  SB zero, 24(sp)
  JAL zero, bb6
bb6:
  LB s0, 24(sp)
  BNE s0, zero, bb7
  JAL zero, bb8
bb7:
  CALL inc_a
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 16(sp)
  JAL zero, bb9
bb8:
  SB zero, 16(sp)
  JAL zero, bb9
bb9:
  LB s0, 16(sp)
  BNE s0, zero, bb10
  JAL zero, bb11
bb10:
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
  JAL zero, bb11
bb11:
  CALL inc_a
  ADD s0, a0, zero
  SLTI s1, s0, 14
  BNE s1, zero, bb12
  JAL zero, bb13
bb12:
  ADDI s0, zero, 1
  SB s0, 8(sp)
  JAL zero, bb14
bb13:
  CALL inc_a
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb15
  JAL zero, bb16
bb14:
  LB s0, 8(sp)
  BNE s0, zero, bb18
  JAL zero, bb20
bb15:
  CALL inc_a
  ADD s0, a0, zero
  CALL inc_a
  ADD s1, a0, zero
  SUBW s2, s0, s1
  ADDIW s0, s2, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 0(sp)
  JAL zero, bb17
bb16:
  SB zero, 0(sp)
  JAL zero, bb17
bb17:
  LB s0, 0(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 8(sp)
  JAL zero, bb14
bb18:
  LA s0, a
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s0, b
  LW s1, 0(s0)
  ADDI s0, zero, 2
  MULW s2, s1, s0
  LA s0, b
  SW s2, 0(s0)
  JAL zero, bb19
bb19:
  LW s0, 32(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 32(sp)
  JAL zero, bb1
bb20:
  CALL inc_a
  ADD s0, a0, zero
  JAL zero, bb19
inc_a:
  ADDI sp, sp, -32
  SD ra, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  LA s0, a
  LW s1, 0(s0)
  SW s1, 0(sp)
  ADDIW s0, s1, 1
  SW s0, 0(sp)
  LA s1, a
  SW s0, 0(s1)
  ADD a0, s0, zero
  LD ra, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
