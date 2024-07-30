.global sub_impl
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
sub_impl:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  SLTIU s3, s2, 1
  BNE s3, zero, bb3
  # implict jump to bb1
bb1:
  LW s3, 0(s0)
  SLLIW s3, s3, 1
  SW s3, 0(s0)
  ADDI s3, zero, 1
  SUBW s2, s2, s3
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL sub_impl
  # implict jump to bb2
bb2:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb3:
  LW s2, 0(s0)
  LW s1, 0(s1)
  SUBW s1, s2, s1
  SW s1, 0(s0)
  JAL zero, bb2
add_impl:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  SLTIU s3, s2, 1
  BNE s3, zero, bb7
  # implict jump to bb5
bb5:
  LW s3, 0(s0)
  SLLIW s3, s3, 1
  SW s3, 0(s0)
  ADDI s3, zero, 1
  SUBW s2, s2, s3
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL add_impl
  # implict jump to bb6
bb6:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb7:
  LW s2, 0(s0)
  LW s1, 0(s1)
  ADDW s1, s2, s1
  SW s1, 0(s0)
  JAL zero, bb6
main:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  ADDI s0, zero, -1
  SW s0, 32(sp)
  SW zero, 36(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, k
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(sp)
  ADDI a0, sp, 32
  ADD a0, a0, zero
  CALL getarray
  # implict jump to bb9
bb9:
  LW s0, 0(sp)
  BNE s0, zero, bb11
  # implict jump to bb10
bb10:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb11:
  LW s0, 32(sp)
  SW s0, 4(sp)
  LW s0, 4(sp)
  SLTI s0, s0, 5
  BNE s0, zero, bb13
  # implict jump to bb12
bb12:
  LA s0, k
  LW s0, 0(s0)
  LA s1, i
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL inc_impl
  LA s0, k
  LW s0, 0(s0)
  LA s1, i
  ADD a0, s1, zero
  ADDI a1, sp, 32
  ADD a1, a1, zero
  ADD a2, s0, zero
  CALL add_impl
  LA s0, i
  LW s0, 0(s0)
  LW s1, 36(sp)
  XOR s0, s0, s1
  SLTIU s0, s0, 1
  BNE s0, zero, bb10
  JAL zero, bb9
bb13:
  LA s0, i
  LW s0, 0(s0)
  ADD a0, s0, zero
  CALL putint
  LW s0, 4(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 0(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 32(sp)
  ADD a0, s0, zero
  CALL putint
  LA s0, k
  LW s0, 0(s0)
  ADDI a0, sp, 32
  ADD a0, a0, zero
  ADDI a1, sp, 0
  ADD a1, a1, zero
  ADD a2, s0, zero
  CALL add_impl
  LA s0, k
  LW s0, 0(s0)
  ADDI a0, sp, 4
  ADD a0, a0, zero
  ADDI a1, sp, 0
  ADD a1, a1, zero
  ADD a2, s0, zero
  CALL add_impl
  LA s0, k
  LW s0, 0(s0)
  ADDI a0, sp, 32
  ADD a0, a0, zero
  ADDI a1, sp, 0
  ADD a1, a1, zero
  ADD a2, s0, zero
  CALL sub_impl
  LW s0, 4(sp)
  SLTI s0, s0, 5
  BNE s0, zero, bb13
  JAL zero, bb12
inc_impl:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SLTIU s2, s1, 1
  BNE s2, zero, bb17
  # implict jump to bb15
bb15:
  LW s2, 0(s0)
  SLLIW s2, s2, 1
  SW s2, 0(s0)
  ADDI s2, zero, 1
  SUBW s1, s1, s2
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL inc_impl
  # implict jump to bb16
bb16:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb17:
  LW s1, 0(s0)
  ADDIW s1, s1, 1
  SW s1, 0(s0)
  JAL zero, bb16
