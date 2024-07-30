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
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  ADDI s0, zero, 5
  SLT s0, s0, zero
  XORI s0, s0, 1
  BNE s0, zero, bb2
  # implict jump to bb1
bb1:
  LA s3, a
  LW s3, 0(s3)
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LA s3, b
  LW s3, 0(s3)
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s3, a
  LW s3, 0(s3)
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb2:
  ADDI s0, zero, 5
  ADD s1, zero, zero
  # implict jump to bb3
bb3:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, a
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, a
  SW s4, 0(s5)
  BNE s4, zero, bb21
  # implict jump to bb4
bb4:
  ADD s4, zero, zero
  # implict jump to bb5
bb5:
  BNE s4, zero, bb20
  # implict jump to bb6
bb6:
  ADD s4, zero, zero
  # implict jump to bb7
bb7:
  BNE s4, zero, bb19
  # implict jump to bb8
bb8:
  LA s4, a
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, a
  SW s4, 0(s5)
  SLTI s4, s4, 14
  BNE s4, zero, bb18
  # implict jump to bb9
bb9:
  LA s4, a
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, a
  SW s4, 0(s5)
  BNE s4, zero, bb17
  # implict jump to bb10
bb10:
  ADD s4, zero, zero
  # implict jump to bb11
bb11:
  ADD s5, s4, zero
  # implict jump to bb12
bb12:
  BNE s4, zero, bb16
  # implict jump to bb13
bb13:
  LA s2, a
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s4, a
  SW s2, 0(s4)
  # implict jump to bb14
bb14:
  ADDI s2, zero, 1
  SUBW s2, s3, s2
  SLT s3, s2, zero
  XORI s3, s3, 1
  BNE s3, zero, bb15
  JAL zero, bb1
bb15:
  ADD s0, s2, zero
  ADD s1, s5, zero
  JAL zero, bb3
bb16:
  LA s2, a
  LW s2, 0(s2)
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s2, b
  LW s2, 0(s2)
  SLLIW s2, s2, 1
  LA s4, b
  SW s2, 0(s4)
  JAL zero, bb14
bb17:
  LA s5, a
  LW s5, 0(s5)
  ADDIW s6, s5, 1
  LA s7, a
  SW s6, 0(s7)
  ADDIW s5, s5, 2
  LA s7, a
  SW s5, 0(s7)
  SUBW s5, s6, s5
  ADDIW s5, s5, 1
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb11
bb18:
  ADD s5, s2, zero
  ADDI s4, zero, 1
  JAL zero, bb12
bb19:
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
  JAL zero, bb8
bb20:
  LA s5, a
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, a
  SW s5, 0(s6)
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb7
bb21:
  LA s5, a
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, a
  SW s5, 0(s6)
  SLTU s5, zero, s5
  ADD s4, s5, zero
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
