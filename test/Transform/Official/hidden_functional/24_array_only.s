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
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  LA s2, k
  LW s3, 0(s2)
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s3, zero
  CALL sub_impl
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
sub_impl:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  XOR s3, s2, zero
  SLTIU s4, s3, 1
  BNE s4, zero, bb4
  # implict jump to bb2
bb2:
  LW s3, 0(s0)
  SLLIW s4, s3, 1
  SW s4, 0(s0)
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s4, zero
  CALL sub_impl
  # implict jump to bb3
bb3:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb4:
  LW s2, 0(s0)
  LW s3, 0(s1)
  SUBW s1, s2, s3
  SW s1, 0(s0)
  JAL zero, bb3
inc:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s0, a0, zero
  LA s1, k
  LW s2, 0(s1)
  ADD a0, s0, zero
  ADD a1, s2, zero
  CALL inc_impl
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
add:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  LA s2, k
  LW s3, 0(s2)
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s3, zero
  CALL add_impl
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
add_impl:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  XOR s3, s2, zero
  SLTIU s4, s3, 1
  BNE s4, zero, bb10
  # implict jump to bb8
bb8:
  LW s3, 0(s0)
  SLLIW s4, s3, 1
  SW s4, 0(s0)
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s4, zero
  CALL add_impl
  # implict jump to bb9
bb9:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb10:
  LW s2, 0(s0)
  LW s3, 0(s1)
  ADDW s1, s2, s3
  SW s1, 0(s0)
  JAL zero, bb9
main:
  ADDI sp, sp, -64
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s3, 40(sp)
  ADDI s0, zero, -1
  SW s0, 48(sp)
  ADDI s0, sp, 52
  SW zero, 0(s0)
  CALL getint
  ADD s1, a0, zero
  LA s2, k
  SW s1, 0(s2)
  CALL getint
  ADD s1, a0, zero
  SW s1, 0(sp)
  ADDI a0, sp, 48
  ADD a0, a0, zero
  CALL getarray
  ADD s1, a0, zero
  # implict jump to bb12
bb12:
  LW s1, 0(sp)
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb14
  # implict jump to bb13
bb13:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb14:
  LW s1, 48(sp)
  SW s1, 4(sp)
  # implict jump to bb15
bb15:
  LW s1, 4(sp)
  SLTI s2, s1, 5
  BNE s2, zero, bb17
  # implict jump to bb16
bb16:
  LA s1, k
  LW s2, 0(s1)
  LA s1, i
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL inc_impl
  LA s1, k
  LW s2, 0(s1)
  LA s1, i
  ADD a0, s1, zero
  ADDI a1, sp, 48
  ADD a1, a1, zero
  ADD a2, s2, zero
  CALL add_impl
  LA s1, i
  LW s2, 0(s1)
  LW s1, 0(s0)
  XOR s3, s2, s1
  SLTIU s1, s3, 1
  BNE s1, zero, bb13
  JAL zero, bb12
bb17:
  LA s1, i
  LW s2, 0(s1)
  ADD a0, s2, zero
  CALL putint
  LW s1, 4(sp)
  ADD a0, s1, zero
  CALL putint
  LW s1, 0(sp)
  ADD a0, s1, zero
  CALL putint
  LW s1, 48(sp)
  ADD a0, s1, zero
  CALL putint
  LA s1, k
  LW s2, 0(s1)
  ADDI a0, sp, 48
  ADD a0, a0, zero
  ADDI a1, sp, 0
  ADD a1, a1, zero
  ADD a2, s2, zero
  CALL add_impl
  LA s1, k
  LW s2, 0(s1)
  ADDI a0, sp, 4
  ADD a0, a0, zero
  ADDI a1, sp, 0
  ADD a1, a1, zero
  ADD a2, s2, zero
  CALL add_impl
  LA s1, k
  LW s2, 0(s1)
  ADDI a0, sp, 48
  ADD a0, a0, zero
  ADDI a1, sp, 0
  ADD a1, a1, zero
  ADD a2, s2, zero
  CALL sub_impl
  JAL zero, bb15
inc_impl:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  XOR s2, s1, zero
  SLTIU s3, s2, 1
  BNE s3, zero, bb21
  # implict jump to bb19
bb19:
  LW s2, 0(s0)
  SLLIW s3, s2, 1
  SW s3, 0(s0)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADD a0, s0, zero
  ADD a1, s3, zero
  CALL inc_impl
  # implict jump to bb20
bb20:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb21:
  LW s1, 0(s0)
  ADDIW s2, s1, 1
  SW s2, 0(s0)
  JAL zero, bb20
