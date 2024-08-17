.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD t1, zero, zero
  ADD a0, zero, zero
  # implict jump to bb1
bb1:   # loop depth 1
  ADD a7, zero, zero
  # implict jump to bb2
bb2:   # loop depth 2
  ADD a6, zero, zero
  # implict jump to bb3
bb3:   # loop depth 3
  ADD a5, zero, zero
  # implict jump to bb4
bb4:   # loop depth 4
  ADD t3, zero, zero
  # implict jump to bb5
bb5:   # loop depth 5
  ADD t0, zero, zero
  # implict jump to bb6
bb6:   # loop depth 6
  ADD t5, zero, zero
  # implict jump to bb7
bb7:   # loop depth 7
  ADD a4, zero, zero
  # implict jump to bb8
bb8:   # loop depth 8
  ADD t4, zero, zero
  # implict jump to bb9
bb9:   # loop depth 9
  ADD a3, zero, zero
  # implict jump to bb10
bb10:   # loop depth 10
  ADD a2, zero, zero
  # implict jump to bb11
bb11:   # loop depth 11
  ADD a1, zero, zero
  # implict jump to bb12
bb12:   # loop depth 12
  ADD t2, zero, zero
  # implict jump to bb13
bb13:   # loop depth 13
  ADD s0, zero, zero
  # implict jump to bb14
bb14:   # loop depth 14
  ADDI s1, zero, 999
  ADDIW a0, a0, 3
  ADDI s2, zero, 999
  REMW a0, a0, s1
  ADDIW s0, s0, 1
  SLTI s1, s0, 3
  ADDIW a0, a0, 3
  REMW a0, a0, s2
  BNE s1, zero, bb42
  # implict jump to bb15
bb15:   # loop depth 13
  ADDIW t2, t2, 2
  SLTI s0, t2, 5
  BNE s0, zero, bb41
  # implict jump to bb16
bb16:   # loop depth 12
  ADDIW a1, a1, 2
  SLTI t2, a1, 7
  BNE t2, zero, bb40
  # implict jump to bb17
bb17:   # loop depth 11
  ADDIW a2, a2, 2
  SLTI t2, a2, 6
  BNE t2, zero, bb39
  # implict jump to bb18
bb18:   # loop depth 10
  ADDIW a3, a3, 1
  SLTI t2, a3, 3
  BNE t2, zero, bb38
  # implict jump to bb19
bb19:   # loop depth 9
  ADDIW t4, t4, 1
  SLTI t2, t4, 5
  BNE t2, zero, bb37
  # implict jump to bb20
bb20:   # loop depth 8
  ADDIW a4, a4, 1
  SLTI t2, a4, 5
  BNE t2, zero, bb36
  # implict jump to bb21
bb21:   # loop depth 7
  ADDIW t5, t5, 1
  SLTI t2, t5, 6
  BNE t2, zero, bb35
  # implict jump to bb22
bb22:   # loop depth 6
  ADDIW t0, t0, 1
  SLTI t2, t0, 4
  BNE t2, zero, bb34
  # implict jump to bb23
bb23:   # loop depth 5
  ADDIW t3, t3, 1
  SLTI t0, t3, 5
  BNE t0, zero, bb33
  # implict jump to bb24
bb24:   # loop depth 4
  ADDIW a5, a5, 1
  SLTI t0, a5, 3
  BNE t0, zero, bb32
  # implict jump to bb25
bb25:   # loop depth 3
  ADDIW a6, a6, 1
  SLTI t0, a6, 5
  BNE t0, zero, bb31
  # implict jump to bb26
bb26:   # loop depth 2
  ADDIW a7, a7, 1
  SLTI t0, a7, 4
  BNE t0, zero, bb30
  # implict jump to bb27
bb27:   # loop depth 1
  ADDIW t1, t1, 1
  SLTI t0, t1, 3
  BNE t0, zero, bb29
  # implict jump to bb28
bb28:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb29:   # loop depth 1
  JAL zero, bb1
bb30:   # loop depth 2
  JAL zero, bb2
bb31:   # loop depth 3
  JAL zero, bb3
bb32:   # loop depth 4
  JAL zero, bb4
bb33:   # loop depth 5
  JAL zero, bb5
bb34:   # loop depth 6
  JAL zero, bb6
bb35:   # loop depth 7
  JAL zero, bb7
bb36:   # loop depth 8
  JAL zero, bb8
bb37:   # loop depth 9
  JAL zero, bb9
bb38:   # loop depth 10
  JAL zero, bb10
bb39:   # loop depth 11
  JAL zero, bb11
bb40:   # loop depth 12
  JAL zero, bb12
bb41:   # loop depth 13
  JAL zero, bb13
bb42:   # loop depth 14
  JAL zero, bb14
