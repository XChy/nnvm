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
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDI s2, zero, 4
  MULW s3, s2, zero
  LA s2, k
  ADD s4, s2, s3
  LW s2, 0(s4)
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL sub_impl
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
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
  ADDI s3, zero, 4
  MUL s4, zero, s3
  ADD s3, s0, s4
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s0, s5
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MUL s6, zero, s4
  ADD s4, s1, s6
  LW s6, 0(s4)
  SUBW s4, s5, s6
  SW s4, 0(s3)
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
  ADDI s3, zero, 4
  MUL s4, zero, s3
  ADD s3, s0, s4
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s0, s5
  LW s5, 0(s4)
  ADDI s4, zero, 2
  MULW s6, s5, s4
  SW s6, 0(s3)
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s4, zero
  CALL sub_impl
  JAL zero, bb3
inc:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 4
  MUL s2, zero, s1
  LA s1, k
  ADD s3, s1, s2
  LW s1, 0(s3)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL inc_impl
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
add:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDI s2, zero, 4
  MUL s3, zero, s2
  LA s2, k
  ADD s4, s2, s3
  LW s2, 0(s4)
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL add_impl
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
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
  ADDI s3, zero, 4
  MUL s4, zero, s3
  ADD s3, s0, s4
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s0, s5
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MUL s6, zero, s4
  ADD s4, s1, s6
  LW s6, 0(s4)
  ADDW s4, s5, s6
  SW s4, 0(s3)
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
  ADDI s3, zero, 4
  MUL s4, zero, s3
  ADD s3, s0, s4
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s0, s5
  LW s5, 0(s4)
  ADDI s4, zero, 2
  MULW s6, s5, s4
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
  SD s4, 24(sp)
  SD ra, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s0, 64(sp)
  ADDI s0, zero, 1
  SUB s1, zero, s0
  ADDI t5, sp, 0
  ADD s0, t5, zero
  SW s1, 0(s0)
  ADDI s0, sp, 4
  SW zero, 0(s0)
  ADDI s0, zero, 4
  MUL s1, zero, s0
  LA s0, k
  ADD s2, s0, s1
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(s2)
  ADDI s0, zero, 4
  MUL s1, zero, s0
  ADDI t6, sp, 8
  ADD s0, t6, s1
  CALL getint
  ADD s1, a0, zero
  SW s1, 0(s0)
  ADDI s0, zero, 8
  MUL s1, zero, s0
  ADDI t5, sp, 0
  ADD s0, t5, s1
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  JAL zero, bb12
bb12:
  ADDI s0, zero, 4
  MUL s1, zero, s0
  ADDI t6, sp, 8
  ADD s0, t6, s1
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb13
  JAL zero, bb14
bb13:
  ADDI s0, zero, 4
  MUL s1, zero, s0
  ADDI t5, sp, 16
  ADD s0, t5, s1
  ADDI s1, zero, 8
  MUL s2, zero, s1
  ADDI t6, sp, 0
  ADD s1, t6, s2
  ADDI s2, zero, 4
  MUL s3, zero, s2
  ADD s2, s1, s3
  LW s1, 0(s2)
  SW s1, 0(s0)
  JAL zero, bb15
bb14:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD s4, 24(sp)
  LD ra, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb15:
  ADDI s0, zero, 4
  MUL s1, zero, s0
  ADDI t5, sp, 16
  ADD s0, t5, s1
  LW s1, 0(s0)
  SLTI s0, s1, 5
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb16
  JAL zero, bb17
bb16:
  ADDI s0, zero, 4
  MUL s1, zero, s0
  LA s0, i
  ADD s2, s0, s1
  LW s0, 0(s2)
  ADD a0, s0, zero
  CALL putint
  ADDI s0, zero, 4
  MUL s1, zero, s0
  ADDI t6, sp, 16
  ADD s0, t6, s1
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADDI s0, zero, 4
  MUL s1, zero, s0
  ADDI t5, sp, 8
  ADD s0, t5, s1
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADDI s0, zero, 8
  MUL s1, zero, s0
  ADDI t6, sp, 0
  ADD s0, t6, s1
  ADDI s1, zero, 4
  MUL s2, zero, s1
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  ADDI s0, zero, 8
  MUL s1, zero, s0
  ADDI t5, sp, 0
  ADD s0, t5, s1
  ADD a0, s0, zero
  ADDI a1, sp, 8
  ADD a1, a1, zero
  CALL add
  ADDI a0, sp, 16
  ADD a0, a0, zero
  ADDI a1, sp, 8
  ADD a1, a1, zero
  CALL add
  ADDI s0, zero, 8
  MUL s1, zero, s0
  ADDI t6, sp, 0
  ADD s0, t6, s1
  ADD a0, s0, zero
  ADDI a1, sp, 8
  ADD a1, a1, zero
  CALL sub
  JAL zero, bb15
bb17:
  LA s0, i
  ADD a0, s0, zero
  CALL inc
  ADDI s0, zero, 8
  MUL s1, zero, s0
  ADDI t5, sp, 0
  ADD s0, t5, s1
  LA s1, i
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL add
  ADDI s0, zero, 4
  MUL s1, zero, s0
  LA s0, i
  ADD s2, s0, s1
  LW s0, 0(s2)
  ADDI s1, zero, 8
  MUL s2, zero, s1
  ADDI t6, sp, 0
  ADD s1, t6, s2
  ADDI s2, zero, 4
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADD s2, s1, s4
  LW s1, 0(s2)
  XOR s2, s0, s1
  SLTIU s0, s2, 1
  BNE s0, zero, bb18
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
  ADDI s2, zero, 4
  MUL s3, zero, s2
  ADD s2, s0, s3
  ADDI s3, zero, 4
  MUL s4, zero, s3
  ADD s3, s0, s4
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  SW s3, 0(s2)
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
  ADDI s2, zero, 4
  MUL s3, zero, s2
  ADD s2, s0, s3
  ADDI s3, zero, 4
  MUL s4, zero, s3
  ADD s3, s0, s4
  LW s4, 0(s3)
  ADDI s3, zero, 2
  MULW s5, s4, s3
  SW s5, 0(s2)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADD a0, s0, zero
  ADD a1, s3, zero
  CALL inc_impl
  JAL zero, bb22
