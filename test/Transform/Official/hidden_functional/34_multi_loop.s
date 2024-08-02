.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD t2, zero, zero
  ADD t0, zero, zero
  # implict jump to bb1
bb1:
  ADD t1, t0, zero
  ADD t0, t2, zero
  ADD a0, t0, zero
  ADD t0, zero, zero
  # implict jump to bb2
bb2:
  ADD t2, t0, zero
  ADD t0, a0, zero
  ADD a1, t0, zero
  ADD t0, zero, zero
  # implict jump to bb3
bb3:
  ADD a0, t0, zero
  ADD t0, a1, zero
  ADD a2, t0, zero
  ADD t0, zero, zero
  # implict jump to bb4
bb4:
  ADD a1, t0, zero
  ADD t0, a2, zero
  ADD a3, t0, zero
  ADD t0, zero, zero
  # implict jump to bb5
bb5:
  ADD a2, t0, zero
  ADD t0, a3, zero
  ADD a4, t0, zero
  ADD t0, zero, zero
  # implict jump to bb6
bb6:
  ADD a3, t0, zero
  ADD t0, a4, zero
  ADD a5, t0, zero
  ADD t0, zero, zero
  # implict jump to bb7
bb7:
  ADD a4, t0, zero
  ADD t0, a5, zero
  ADD a6, t0, zero
  ADD t0, zero, zero
  # implict jump to bb8
bb8:
  ADD a5, t0, zero
  ADD t0, a6, zero
  ADD a7, t0, zero
  ADD t0, zero, zero
  # implict jump to bb9
bb9:
  ADD a6, t0, zero
  ADD t0, a7, zero
  ADD a7, t0, zero
  ADD t0, zero, zero
  # implict jump to bb10
bb10:
  ADD t3, t0, zero
  ADD t0, a7, zero
  ADD a7, t0, zero
  ADD t0, zero, zero
  # implict jump to bb11
bb11:
  ADD t4, t0, zero
  ADD t0, a7, zero
  ADD a7, t0, zero
  ADD t0, zero, zero
  # implict jump to bb12
bb12:
  ADD t5, t0, zero
  ADD t0, a7, zero
  ADD a7, t0, zero
  ADD t0, zero, zero
  # implict jump to bb13
bb13:
  ADD t6, t0, zero
  ADD t0, a7, zero
  ADD a7, t0, zero
  ADD t0, zero, zero
  # implict jump to bb14
bb14:
  ADD s0, t0, zero
  ADD t0, a7, zero
  ADD a7, t0, zero
  ADD t0, zero, zero
  # implict jump to bb15
bb15:
  ADD s1, t0, zero
  ADD t0, a7, zero
  ADDIW t0, t0, 3
  ADDI a7, zero, 999
  REMW a7, t0, a7
  ADDIW t0, s1, 3
  SLTI s1, t0, 6
  BNE s1, zero, bb45
  # implict jump to bb16
bb16:
  ADDIW t0, s0, 1
  SLTI s0, t0, 3
  BNE s0, zero, bb44
  # implict jump to bb17
bb17:
  ADDIW t0, t6, 2
  SLTI t6, t0, 5
  BNE t6, zero, bb43
  # implict jump to bb18
bb18:
  ADDIW t0, t5, 2
  SLTI t5, t0, 7
  BNE t5, zero, bb42
  # implict jump to bb19
bb19:
  ADDIW t0, t4, 2
  SLTI t4, t0, 6
  BNE t4, zero, bb41
  # implict jump to bb20
bb20:
  ADDIW t0, t3, 1
  SLTI t3, t0, 3
  BNE t3, zero, bb40
  # implict jump to bb21
bb21:
  ADDIW t0, a6, 1
  SLTI a6, t0, 5
  BNE a6, zero, bb39
  # implict jump to bb22
bb22:
  ADDIW t0, a5, 1
  SLTI a5, t0, 5
  BNE a5, zero, bb38
  # implict jump to bb23
bb23:
  ADDIW t0, a4, 1
  SLTI a4, t0, 6
  BNE a4, zero, bb37
  # implict jump to bb24
bb24:
  ADDIW t0, a3, 1
  SLTI a3, t0, 4
  BNE a3, zero, bb36
  # implict jump to bb25
bb25:
  ADDIW t0, a2, 1
  SLTI a2, t0, 5
  BNE a2, zero, bb35
  # implict jump to bb26
bb26:
  ADDIW t0, a1, 1
  SLTI a1, t0, 3
  BNE a1, zero, bb34
  # implict jump to bb27
bb27:
  ADDIW t0, a0, 1
  SLTI a0, t0, 5
  BNE a0, zero, bb33
  # implict jump to bb28
bb28:
  ADDIW t0, t2, 1
  SLTI t2, t0, 4
  BNE t2, zero, bb32
  # implict jump to bb29
bb29:
  ADDIW t0, t1, 1
  SLTI t1, t0, 3
  BNE t1, zero, bb31
  # implict jump to bb30
bb30:
  ADD a0, a7, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb31:
  ADD t2, a7, zero
  JAL zero, bb1
bb32:
  ADD a0, a7, zero
  JAL zero, bb2
bb33:
  ADD a1, a7, zero
  JAL zero, bb3
bb34:
  ADD a2, a7, zero
  JAL zero, bb4
bb35:
  ADD a3, a7, zero
  JAL zero, bb5
bb36:
  ADD a4, a7, zero
  JAL zero, bb6
bb37:
  ADD a5, a7, zero
  JAL zero, bb7
bb38:
  ADD a6, a7, zero
  JAL zero, bb8
bb39:
  JAL zero, bb9
bb40:
  JAL zero, bb10
bb41:
  JAL zero, bb11
bb42:
  JAL zero, bb12
bb43:
  JAL zero, bb13
bb44:
  JAL zero, bb14
bb45:
  JAL zero, bb15
