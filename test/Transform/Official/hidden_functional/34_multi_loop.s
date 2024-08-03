.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD t1, zero, zero
  ADD t0, zero, zero
  # implict jump to bb1
bb1:
  ADD a0, t0, zero
  ADD t0, t1, zero
  ADD t1, zero, zero
  # implict jump to bb2
bb2:
  ADD a1, t1, zero
  ADD t1, zero, zero
  # implict jump to bb3
bb3:
  ADD a2, t1, zero
  ADD t1, zero, zero
  # implict jump to bb4
bb4:
  ADD a3, t1, zero
  ADD t1, zero, zero
  # implict jump to bb5
bb5:
  ADD a4, t1, zero
  ADD t1, zero, zero
  # implict jump to bb6
bb6:
  ADD a5, t1, zero
  ADD t1, zero, zero
  # implict jump to bb7
bb7:
  ADD a6, t1, zero
  ADD t1, zero, zero
  # implict jump to bb8
bb8:
  ADD a7, t1, zero
  ADD t1, zero, zero
  # implict jump to bb9
bb9:
  ADD t3, t1, zero
  ADD t1, zero, zero
  # implict jump to bb10
bb10:
  ADD t4, t1, zero
  ADD t1, zero, zero
  # implict jump to bb11
bb11:
  ADD t5, t1, zero
  ADD t1, zero, zero
  # implict jump to bb12
bb12:
  ADD s0, t1, zero
  ADD t1, zero, zero
  # implict jump to bb13
bb13:
  ADD t6, t1, zero
  ADD t1, zero, zero
  # implict jump to bb14
bb14:
  ADD t2, t1, zero
  ADD t1, zero, zero
  # implict jump to bb15
bb15:
  ADD s2, t1, zero
  ADDIW t1, t0, 3
  ADDI t0, zero, 999
  REMW s1, t1, t0
  ADDIW t1, s2, 3
  SLTI t0, t1, 6
  BNE t0, zero, bb60
  # implict jump to bb16
bb16:
  # implict jump to bb17
bb17:
  ADDIW t1, t2, 1
  SLTI t0, t1, 3
  BNE t0, zero, bb59
  # implict jump to bb18
bb18:
  # implict jump to bb19
bb19:
  ADDIW t1, t6, 2
  SLTI t0, t1, 5
  BNE t0, zero, bb58
  # implict jump to bb20
bb20:
  # implict jump to bb21
bb21:
  ADDIW t1, s0, 2
  SLTI t0, t1, 7
  BNE t0, zero, bb57
  # implict jump to bb22
bb22:
  # implict jump to bb23
bb23:
  ADDIW t1, t5, 2
  SLTI t0, t1, 6
  BNE t0, zero, bb56
  # implict jump to bb24
bb24:
  # implict jump to bb25
bb25:
  ADDIW t1, t4, 1
  SLTI t0, t1, 3
  BNE t0, zero, bb55
  # implict jump to bb26
bb26:
  # implict jump to bb27
bb27:
  ADDIW t1, t3, 1
  SLTI t0, t1, 5
  BNE t0, zero, bb54
  # implict jump to bb28
bb28:
  # implict jump to bb29
bb29:
  ADDIW t1, a7, 1
  SLTI t0, t1, 5
  BNE t0, zero, bb53
  # implict jump to bb30
bb30:
  # implict jump to bb31
bb31:
  ADDIW t1, a6, 1
  SLTI t0, t1, 6
  BNE t0, zero, bb52
  # implict jump to bb32
bb32:
  # implict jump to bb33
bb33:
  ADDIW t1, a5, 1
  SLTI t0, t1, 4
  BNE t0, zero, bb51
  # implict jump to bb34
bb34:
  # implict jump to bb35
bb35:
  ADDIW t1, a4, 1
  SLTI t0, t1, 5
  BNE t0, zero, bb50
  # implict jump to bb36
bb36:
  # implict jump to bb37
bb37:
  ADDIW t1, a3, 1
  SLTI t0, t1, 3
  BNE t0, zero, bb49
  # implict jump to bb38
bb38:
  # implict jump to bb39
bb39:
  ADDIW t1, a2, 1
  SLTI t0, t1, 5
  BNE t0, zero, bb48
  # implict jump to bb40
bb40:
  # implict jump to bb41
bb41:
  ADDIW t1, a1, 1
  SLTI t0, t1, 4
  BNE t0, zero, bb47
  # implict jump to bb42
bb42:
  # implict jump to bb43
bb43:
  ADDIW t0, a0, 1
  SLTI t1, t0, 3
  BNE t1, zero, bb46
  # implict jump to bb44
bb44:
  # implict jump to bb45
bb45:
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb46:
  ADD t1, s1, zero
  JAL zero, bb1
bb47:
  ADD t0, s1, zero
  JAL zero, bb2
bb48:
  ADD t0, s1, zero
  JAL zero, bb3
bb49:
  ADD t0, s1, zero
  JAL zero, bb4
bb50:
  ADD t0, s1, zero
  JAL zero, bb5
bb51:
  ADD t0, s1, zero
  JAL zero, bb6
bb52:
  ADD t0, s1, zero
  JAL zero, bb7
bb53:
  ADD t0, s1, zero
  JAL zero, bb8
bb54:
  ADD t0, s1, zero
  JAL zero, bb9
bb55:
  ADD t0, s1, zero
  JAL zero, bb10
bb56:
  ADD t0, s1, zero
  JAL zero, bb11
bb57:
  ADD t0, s1, zero
  JAL zero, bb12
bb58:
  ADD t0, s1, zero
  JAL zero, bb13
bb59:
  ADD t0, s1, zero
  JAL zero, bb14
bb60:
  ADD t0, s1, zero
  JAL zero, bb15
