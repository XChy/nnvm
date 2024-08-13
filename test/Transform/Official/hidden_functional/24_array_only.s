.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  BEQ a2, zero, bb3
  # implict jump to bb1
bb1:   # loop depth 0
  LW s1, 0(s0)
  ADDIW a2, a2, -1
  ADD a0, s0, zero
  SLLIW s1, s1, 1
  SW s1, 0(s0)
  CALL sub_impl
  # implict jump to bb2
bb2:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb3:   # loop depth 0
  LW t0, 0(s0)
  LW t1, 0(a1)
  SUBW t0, t0, t1
  SW t0, 0(s0)
  JAL zero, bb2
add_impl:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  BEQ a2, zero, bb7
  # implict jump to bb5
bb5:   # loop depth 0
  LW s1, 0(s0)
  ADDIW a2, a2, -1
  ADD a0, s0, zero
  SLLIW s1, s1, 1
  SW s1, 0(s0)
  CALL add_impl
  # implict jump to bb6
bb6:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb7:   # loop depth 0
  LW t0, 0(s0)
  LW t1, 0(a1)
  ADDW t0, t0, t1
  SW t0, 0(s0)
  JAL zero, bb6
main:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  ADDI s0, zero, -1
  LA s1, k
  SW s0, 40(sp)
  SW zero, 44(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  ADDI a0, sp, 40
  ADD a0, a0, zero
  SW s0, 0(sp)
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
  LD s2, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb11:   # loop depth 1
  LW a0, 40(sp)
  SLTI s0, a0, 5
  SW a0, 4(sp)
  BNE s0, zero, bb13
  # implict jump to bb12
bb12:   # loop depth 1
  LA a1, k
  LA a0, i
  LA s1, k
  LA s0, i
  LW a1, 0(a1)
  LA s2, i
  CALL inc_impl
  LW a2, 0(s1)
  ADDI a1, sp, 40
  ADD a1, a1, zero
  ADD a0, s0, zero
  CALL add_impl
  LW a0, 0(s2)
  LW s0, 44(sp)
  BEQ a0, s0, bb10
  JAL zero, bb9
bb13:   # loop depth 2
  LA a0, i
  LA s0, k
  LA s1, k
  LA s2, k
  LW a0, 0(a0)
  CALL putint
  LW a0, 4(sp)
  CALL putint
  LW a0, 0(sp)
  CALL putint
  LW a0, 40(sp)
  CALL putint
  LW a2, 0(s0)
  ADDI a1, sp, 0
  ADD a1, a1, zero
  ADDI a0, sp, 40
  ADD a0, a0, zero
  CALL add_impl
  LW a2, 0(s1)
  ADDI a1, sp, 0
  ADD a1, a1, zero
  ADDI a0, sp, 4
  ADD a0, a0, zero
  CALL add_impl
  LW a2, 0(s2)
  ADDI a1, sp, 0
  ADD a1, a1, zero
  ADDI a0, sp, 40
  ADD a0, a0, zero
  CALL sub_impl
  LW a0, 4(sp)
  SLTI a0, a0, 5
  BNE a0, zero, bb13
  JAL zero, bb12
inc_impl:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  BEQ a1, zero, bb17
  # implict jump to bb15
bb15:   # loop depth 0
  LW s1, 0(s0)
  ADDIW a1, a1, -1
  ADD a0, s0, zero
  SLLIW s1, s1, 1
  SW s1, 0(s0)
  CALL inc_impl
  # implict jump to bb16
bb16:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb17:   # loop depth 0
  LW t0, 0(s0)
  ADDIW t0, t0, 1
  SW t0, 0(s0)
  JAL zero, bb16
