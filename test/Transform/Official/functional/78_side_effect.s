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
  ADDI s2, zero, 5
  SLT s2, s2, zero
  XORI s2, s2, 1
  BNE s2, zero, bb2
  # implict jump to bb1
bb1:
  LA s4, a
  LW s4, 0(s4)
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LA s4, b
  LW s4, 0(s4)
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s4, a
  LW s4, 0(s4)
  ADD a0, s4, zero
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
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb2:
  ADDI s2, zero, 5
  ADD s3, zero, zero
  # implict jump to bb3
bb3:
  ADD s4, s3, zero
  ADD s5, s2, zero
  LA s6, a
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, a
  SW s6, 0(s7)
  BNE s6, zero, bb22
  # implict jump to bb4
bb4:
  ADD s6, zero, zero
  # implict jump to bb5
bb5:
  BNE s6, zero, bb21
  # implict jump to bb6
bb6:
  ADD s6, zero, zero
  # implict jump to bb7
bb7:
  BNE s6, zero, bb20
  # implict jump to bb8
bb8:
  LA s6, a
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, a
  SW s6, 0(s7)
  SLTI s6, s6, 14
  BNE s6, zero, bb19
  # implict jump to bb9
bb9:
  LA s6, a
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, a
  SW s6, 0(s7)
  BNE s6, zero, bb18
  # implict jump to bb10
bb10:
  ADD s6, zero, zero
  # implict jump to bb11
bb11:
  ADD s7, s6, zero
  # implict jump to bb12
bb12:
  ADD s1, s7, zero
  BNE s6, zero, bb17
  # implict jump to bb13
bb13:
  LA s4, a
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s6, a
  SW s4, 0(s6)
  # implict jump to bb14
bb14:
  ADDI s4, zero, 1
  SUBW s0, s5, s4
  # implict jump to bb15
bb15:
  SLT s4, s0, zero
  XORI s4, s4, 1
  BNE s4, zero, bb16
  JAL zero, bb1
bb16:
  ADD s2, s0, zero
  ADD s3, s1, zero
  JAL zero, bb3
bb17:
  LA s4, a
  LW s4, 0(s4)
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s4, b
  LW s4, 0(s4)
  SLLIW s4, s4, 1
  LA s6, b
  SW s4, 0(s6)
  JAL zero, bb14
bb18:
  LA s7, a
  LW s7, 0(s7)
  ADDIW s7, s7, 1
  LA s8, a
  SW s7, 0(s8)
  ADDIW s8, s7, 1
  LA s9, a
  SW s8, 0(s9)
  SUBW s7, s7, s8
  ADDIW s7, s7, 1
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb11
bb19:
  ADD s7, s4, zero
  ADDI s6, zero, 1
  JAL zero, bb12
bb20:
  LA s6, a
  LW s6, 0(s6)
  ADD a0, s6, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LA s6, b
  LW s6, 0(s6)
  ADD a0, s6, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb8
bb21:
  LA s7, a
  LW s7, 0(s7)
  ADDIW s7, s7, 1
  LA s8, a
  SW s7, 0(s8)
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb7
bb22:
  LA s7, a
  LW s7, 0(s7)
  ADDIW s7, s7, 1
  LA s8, a
  SW s7, 0(s8)
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb5
inc_a:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  LA s0, a
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s1, a
  SW s0, 0(s1)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
