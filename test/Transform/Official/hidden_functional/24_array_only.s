.global sub
.global sub_impl
.global inc
.global add
.global add_impl
.global main
.global inc_impl
.section .bss
k:
.space 4
i:
.space 4
.section .data


.section .text
sub:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  LA s2, k
  ADD s3, s2, zero
  LW s2, 0(s3)
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL sub_impl
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
sub_impl:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  XOR s3, s2, zero
  SLTIU s4, s3, 1
  BNE s4, zero, bb2
  JAL zero, bb4
bb2:
  ADD s3, s0, zero
  LW s4, 0(s3)
  ADD s5, s1, zero
  LW s6, 0(s5)
  SUBW s5, s4, s6
  SW s5, 0(s3)
  JAL zero, bb3
bb3:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb4:
  ADD s3, s0, zero
  LW s4, 0(s3)
  ADDI s5, zero, 2
  MULW s6, s4, s5
  SW s6, 0(s3)
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s4, zero
  CALL sub_impl
  JAL zero, bb3
inc:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  LA s1, k
  ADD s2, s1, zero
  LW s1, 0(s2)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL inc_impl
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
add:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  LA s2, k
  ADD s3, s2, zero
  LW s2, 0(s3)
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL add_impl
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
add_impl:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  XOR s3, s2, zero
  SLTIU s4, s3, 1
  BNE s4, zero, bb8
  JAL zero, bb10
bb8:
  ADD s3, s0, zero
  LW s4, 0(s3)
  ADD s5, s1, zero
  LW s6, 0(s5)
  ADDW s5, s4, s6
  SW s5, 0(s3)
  JAL zero, bb9
bb9:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb10:
  ADD s3, s0, zero
  LW s4, 0(s3)
  ADDI s5, zero, 2
  MULW s6, s4, s5
  SW s6, 0(s3)
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s4, zero
  CALL add_impl
  JAL zero, bb9
main:
  ADDI sp, sp, -80
  SD ra, 24(sp)
  SD s4, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s5, 64(sp)
  SD s0, 72(sp)
  ADDI t5, sp, 0
  ADD s0, t5, zero
  ADDI s1, zero, -1
  SW s1, 0(s0)
  ADDI s1, sp, 4
  SW zero, 0(s1)
  LA s1, k
  ADD s2, s1, zero
  CALL getint
  ADD s1, a0, zero
  SW s1, 0(s2)
  ADDI t6, sp, 8
  ADD s1, t6, zero
  CALL getint
  ADD s2, a0, zero
  SW s2, 0(s1)
  ADD a0, s0, zero
  CALL getarray
  ADD s2, a0, zero
  JAL zero, bb12
bb12:
  LW s2, 0(s1)
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb13
  JAL zero, bb14
bb13:
  ADDI t5, sp, 16
  ADD s2, t5, zero
  ADD s3, s0, zero
  LW s4, 0(s3)
  SW s4, 0(s2)
  JAL zero, bb15
bb14:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 24(sp)
  LD s4, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s5, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb15:
  LW s4, 0(s2)
  SLTI s5, s4, 5
  XOR s4, s5, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb16
  JAL zero, bb17
bb16:
  LA s4, i
  ADD s5, s4, zero
  LW s4, 0(s5)
  ADD a0, s4, zero
  CALL putint
  LW s4, 0(s2)
  ADD a0, s4, zero
  CALL putint
  LW s4, 0(s1)
  ADD a0, s4, zero
  CALL putint
  LW s4, 0(s3)
  ADD a0, s4, zero
  CALL putint
  ADD a0, s0, zero
  ADDI a1, sp, 8
  ADD a1, a1, zero
  CALL add
  ADDI a0, sp, 16
  ADD a0, a0, zero
  ADDI a1, sp, 8
  ADD a1, a1, zero
  CALL add
  ADD a0, s0, zero
  ADDI a1, sp, 8
  ADD a1, a1, zero
  CALL sub
  JAL zero, bb15
bb17:
  LA s2, i
  ADD a0, s2, zero
  CALL inc
  LA s2, i
  ADD a0, s2, zero
  ADD a1, s0, zero
  CALL add
  LA s2, i
  ADD s3, s2, zero
  LW s2, 0(s3)
  ADDI s3, s0, 4
  LW s4, 0(s3)
  XOR s3, s2, s4
  SLTIU s2, s3, 1
  BNE s2, zero, bb18
  JAL zero, bb19
bb18:
  JAL zero, bb14
bb19:
  JAL zero, bb12
inc_impl:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  XOR s2, s1, zero
  SLTIU s3, s2, 1
  BNE s3, zero, bb21
  JAL zero, bb23
bb21:
  ADD s2, s0, zero
  LW s3, 0(s2)
  ADDIW s4, s3, 1
  SW s4, 0(s2)
  JAL zero, bb22
bb22:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb23:
  ADD s2, s0, zero
  LW s3, 0(s2)
  ADDI s4, zero, 2
  MULW s5, s3, s4
  SW s5, 0(s2)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADD a0, s0, zero
  ADD a1, s3, zero
  CALL inc_impl
  JAL zero, bb22
