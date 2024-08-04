.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD a0, zero, zero
  ADD a5, zero, zero
  # implict jump to bb1
bb1:
  ADD a4, zero, zero
  # implict jump to bb2
bb2:
  ADD a6, zero, zero
  # implict jump to bb3
bb3:
  ADD a7, zero, zero
  # implict jump to bb4
bb4:
  ADD t1, zero, zero
  # implict jump to bb5
bb5:
  ADD t0, zero, zero
  # implict jump to bb6
bb6:
  ADD t3, zero, zero
  # implict jump to bb7
bb7:
  ADD t4, zero, zero
  # implict jump to bb8
bb8:
  ADD a1, zero, zero
  # implict jump to bb9
bb9:
  ADD t5, zero, zero
  # implict jump to bb10
bb10:
  ADD a3, zero, zero
  # implict jump to bb11
bb11:
  ADD a2, zero, zero
  # implict jump to bb12
bb12:
  ADD s0, zero, zero
  # implict jump to bb13
bb13:
  ADD t2, zero, zero
  # implict jump to bb14
bb14:
  ADDIW a0, a0, 3
  ADDI s1, zero, 999
  REMW a0, a0, s1
  ADDIW a0, a0, 3
  ADDI s1, zero, 999
  REMW a0, a0, s1
  ADDIW t2, t2, 1
  SLTI s1, t2, 3
  BNE s1, zero, bb42
  # implict jump to bb15
bb15:
  ADDIW s0, s0, 2
  SLTI t2, s0, 5
  BNE t2, zero, bb41
  # implict jump to bb16
bb16:
  ADDIW a2, a2, 2
  SLTI t2, a2, 7
  BNE t2, zero, bb40
  # implict jump to bb17
bb17:
  ADDIW a3, a3, 2
  SLTI t2, a3, 6
  BNE t2, zero, bb39
  # implict jump to bb18
bb18:
  ADDIW t5, t5, 1
  SLTI t2, t5, 3
  BNE t2, zero, bb38
  # implict jump to bb19
bb19:
  ADDIW a1, a1, 1
  SLTI t2, a1, 5
  BNE t2, zero, bb37
  # implict jump to bb20
bb20:
  ADDIW t4, t4, 1
  SLTI t2, t4, 5
  BNE t2, zero, bb36
  # implict jump to bb21
bb21:
  ADDIW t3, t3, 1
  SLTI t2, t3, 6
  BNE t2, zero, bb35
  # implict jump to bb22
bb22:
  ADDIW t0, t0, 1
  SLTI t2, t0, 4
  BNE t2, zero, bb34
  # implict jump to bb23
bb23:
  ADDIW t1, t1, 1
  SLTI t0, t1, 5
  BNE t0, zero, bb33
  # implict jump to bb24
bb24:
  ADDIW a7, a7, 1
  SLTI t0, a7, 3
  BNE t0, zero, bb32
  # implict jump to bb25
bb25:
  ADDIW a6, a6, 1
  SLTI t0, a6, 5
  BNE t0, zero, bb31
  # implict jump to bb26
bb26:
  ADDIW a4, a4, 1
  SLTI t0, a4, 4
  BNE t0, zero, bb30
  # implict jump to bb27
bb27:
  ADDIW a5, a5, 1
  SLTI t0, a5, 3
  BNE t0, zero, bb29
  # implict jump to bb28
bb28:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb29:
  JAL zero, bb1
bb30:
  JAL zero, bb2
bb31:
  JAL zero, bb3
bb32:
  JAL zero, bb4
bb33:
  JAL zero, bb5
bb34:
  JAL zero, bb6
bb35:
  JAL zero, bb7
bb36:
  JAL zero, bb8
bb37:
  JAL zero, bb9
bb38:
  JAL zero, bb10
bb39:
  JAL zero, bb11
bb40:
  JAL zero, bb12
bb41:
  JAL zero, bb13
bb42:
  JAL zero, bb14
