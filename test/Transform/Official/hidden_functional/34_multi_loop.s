.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  ADD t1, zero, zero
  ADD t0, zero, zero
  # implict jump to bb1
bb1:
  ADD a3, t0, zero
  ADD t0, t1, zero
  ADD t1, t0, zero
  ADD t0, zero, zero
  # implict jump to bb2
bb2:
  ADD a4, t0, zero
  ADD t0, t1, zero
  ADD t1, t0, zero
  ADD t0, zero, zero
  # implict jump to bb3
bb3:
  ADD a5, t0, zero
  ADD t0, t1, zero
  ADD t1, t0, zero
  ADD t0, zero, zero
  # implict jump to bb4
bb4:
  ADD a6, t0, zero
  ADD t0, t1, zero
  ADD t1, t0, zero
  ADD t0, zero, zero
  # implict jump to bb5
bb5:
  ADD a2, t0, zero
  ADD t0, t1, zero
  ADD t1, zero, zero
  # implict jump to bb6
bb6:
  ADD a1, t1, zero
  ADD t1, zero, zero
  # implict jump to bb7
bb7:
  ADD a0, t1, zero
  ADD t1, t0, zero
  ADD t0, zero, zero
  # implict jump to bb8
bb8:
  ADD t2, t0, zero
  ADD t0, t1, zero
  ADD t1, t0, zero
  ADD t0, zero, zero
  # implict jump to bb9
bb9:
  ADD t4, t0, zero
  ADD t0, t1, zero
  ADD a7, t0, zero
  ADD t0, zero, zero
  # implict jump to bb10
bb10:
  ADD t5, t0, zero
  ADD t0, a7, zero
  ADD t1, zero, zero
  # implict jump to bb11
bb11:
  ADD t6, t1, zero
  ADD t1, zero, zero
  # implict jump to bb12
bb12:
  ADD s0, t1, zero
  ADD t1, t0, zero
  ADD t0, zero, zero
  # implict jump to bb13
bb13:
  ADD a7, t0, zero
  ADD t0, t1, zero
  ADD t1, zero, zero
  # implict jump to bb14
bb14:
  ADDIW t3, t0, 3
  ADDI t0, zero, 999
  REMW t0, t3, t0
  ADDIW t3, t0, 3
  ADDI t0, zero, 999
  REMW t3, t3, t0
  ADDIW t1, t1, 1
  SLTI t0, t1, 3
  BNE t0, zero, bb42
  # implict jump to bb15
bb15:
  ADDIW t0, a7, 2
  SLTI t1, t0, 5
  BNE t1, zero, bb41
  # implict jump to bb16
bb16:
  ADDIW t1, s0, 2
  SLTI t0, t1, 7
  BNE t0, zero, bb40
  # implict jump to bb17
bb17:
  ADDIW t1, t6, 2
  SLTI t0, t1, 6
  BNE t0, zero, bb39
  # implict jump to bb18
bb18:
  ADDIW t1, t5, 1
  SLTI t0, t1, 3
  BNE t0, zero, bb38
  # implict jump to bb19
bb19:
  ADDIW a7, t4, 1
  SLTI t0, a7, 5
  BNE t0, zero, bb37
  # implict jump to bb20
bb20:
  ADDIW t0, t2, 1
  SLTI t1, t0, 5
  BNE t1, zero, bb36
  # implict jump to bb21
bb21:
  ADDIW t1, a0, 1
  SLTI t0, t1, 6
  BNE t0, zero, bb35
  # implict jump to bb22
bb22:
  ADDIW t1, a1, 1
  SLTI t0, t1, 4
  BNE t0, zero, bb34
  # implict jump to bb23
bb23:
  ADDIW t0, a2, 1
  SLTI t1, t0, 5
  BNE t1, zero, bb33
  # implict jump to bb24
bb24:
  ADDIW t0, a6, 1
  SLTI t1, t0, 3
  BNE t1, zero, bb32
  # implict jump to bb25
bb25:
  ADDIW t0, a5, 1
  SLTI t1, t0, 5
  BNE t1, zero, bb31
  # implict jump to bb26
bb26:
  ADDIW t0, a4, 1
  SLTI t1, t0, 4
  BNE t1, zero, bb30
  # implict jump to bb27
bb27:
  ADDIW t0, a3, 1
  SLTI t1, t0, 3
  BNE t1, zero, bb29
  # implict jump to bb28
bb28:
  ADD a0, t3, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb29:
  ADD t1, t3, zero
  JAL zero, bb1
bb30:
  ADD t1, t3, zero
  JAL zero, bb2
bb31:
  ADD t1, t3, zero
  JAL zero, bb3
bb32:
  ADD t1, t3, zero
  JAL zero, bb4
bb33:
  ADD t1, t3, zero
  JAL zero, bb5
bb34:
  ADD t0, t3, zero
  JAL zero, bb6
bb35:
  ADD t0, t3, zero
  JAL zero, bb7
bb36:
  ADD t1, t3, zero
  JAL zero, bb8
bb37:
  ADD t1, t3, zero
  ADD t0, a7, zero
  JAL zero, bb9
bb38:
  ADD a7, t3, zero
  ADD t0, t1, zero
  JAL zero, bb10
bb39:
  ADD t0, t3, zero
  JAL zero, bb11
bb40:
  ADD t0, t3, zero
  JAL zero, bb12
bb41:
  ADD t1, t3, zero
  JAL zero, bb13
bb42:
  ADD t0, t3, zero
  JAL zero, bb14
