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
sub_impl:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  SLTIU s0, a2, 1
  BNE s0, zero, bb3
  # implict jump to bb1
bb1:   # loop depth 0
  LW s0, 0(a0)
  SLLIW s0, s0, 1
  SW s0, 0(a0)
  ADDIW a2, a2, -1
  CALL sub_impl
  # implict jump to bb2
bb2:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb3:   # loop depth 0
  LW t0, 0(a0)
  LW t1, 0(a1)
  SUBW t0, t0, t1
  SW t0, 0(a0)
  JAL zero, bb2
add_impl:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  SLTIU s0, a2, 1
  BNE s0, zero, bb7
  # implict jump to bb5
bb5:   # loop depth 0
  LW s0, 0(a0)
  SLLIW s0, s0, 1
  SW s0, 0(a0)
  ADDIW a2, a2, -1
  CALL add_impl
  # implict jump to bb6
bb6:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb7:   # loop depth 0
  LW t0, 0(a0)
  LW t1, 0(a1)
  ADDW t0, t0, t1
  SW t0, 0(a0)
  JAL zero, bb6
main:   # loop depth 0
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
  SW a0, 0(sp)
  ADDI a0, sp, 32
  ADD a0, a0, zero
  CALL getarray
  # implict jump to bb9
bb9:   # loop depth 1
  LW a0, 0(sp)
  BNE a0, zero, bb11
  # implict jump to bb10
bb10:   # loop depth 0
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb11:   # loop depth 1
  LW a0, 32(sp)
  SW a0, 4(sp)
  SLTI a0, a0, 5
  BNE a0, zero, bb13
  # implict jump to bb12
bb12:   # loop depth 1
  LA a0, k
  LW a1, 0(a0)
  LA a0, i
  CALL inc_impl
  LA a0, k
  LW a2, 0(a0)
  LA a0, i
  ADDI a1, sp, 32
  ADD a1, a1, zero
  CALL add_impl
  LA a0, i
  LW a0, 0(a0)
  LW s0, 36(sp)
  XOR a0, a0, s0
  SLTIU a0, a0, 1
  BNE a0, zero, bb10
  JAL zero, bb9
bb13:   # loop depth 2
  LA a0, i
  LW a0, 0(a0)
  CALL putint
  LW a0, 4(sp)
  CALL putint
  LW a0, 0(sp)
  CALL putint
  LW a0, 32(sp)
  CALL putint
  LA a0, k
  LW a2, 0(a0)
  ADDI a0, sp, 32
  ADD a0, a0, zero
  ADDI a1, sp, 0
  ADD a1, a1, zero
  CALL add_impl
  LA a0, k
  LW a2, 0(a0)
  ADDI a0, sp, 4
  ADD a0, a0, zero
  ADDI a1, sp, 0
  ADD a1, a1, zero
  CALL add_impl
  LA a0, k
  LW a2, 0(a0)
  ADDI a0, sp, 32
  ADD a0, a0, zero
  ADDI a1, sp, 0
  ADD a1, a1, zero
  CALL sub_impl
  LW a0, 4(sp)
  SLTI a0, a0, 5
  BNE a0, zero, bb13
  JAL zero, bb12
inc_impl:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  SLTIU s0, a1, 1
  BNE s0, zero, bb17
  # implict jump to bb15
bb15:   # loop depth 0
  LW s0, 0(a0)
  SLLIW s0, s0, 1
  SW s0, 0(a0)
  ADDIW a1, a1, -1
  CALL inc_impl
  # implict jump to bb16
bb16:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb17:   # loop depth 0
  LW t0, 0(a0)
  ADDIW t0, t0, 1
  SW t0, 0(a0)
  JAL zero, bb16
