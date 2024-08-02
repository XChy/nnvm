.global main
.section .bss




.section .data
e:
.word 0x00000000
f:
.word 0x00000000
h:
.word 0x00000000
g:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  LA t0, g
  ADDI t1, zero, 1
  SW t1, 0(t0)
  LA t0, h
  ADDI t1, zero, 2
  SW t1, 0(t0)
  LA t0, e
  ADDI t1, zero, 4
  SW t1, 0(t0)
  LA t0, f
  ADDI t1, zero, 6
  SW t1, 0(t0)
  ADDI t0, zero, 5
  ADDI t1, zero, 6
  ADDI t2, zero, 7
  ADDI a0, zero, 10
  # implict jump to bb1
bb1:
  ADDIW t0, t0, 3
  SLTI a1, t1, 10
  BNE a1, zero, bb6
  # implict jump to bb2
bb2:
  # implict jump to bb3
bb3:
  ADDI a1, zero, 2
  SUBW t1, t1, a1
  SLTI a1, t0, 20
  BNE a1, zero, bb5
  # implict jump to bb4
bb4:
  ADDW t1, t1, a0
  ADDW t0, t0, t1
  ADDW t0, t0, t2
  LA t1, e
  LW t1, 0(t1)
  ADDW t1, t1, a0
  LA t2, g
  LW t2, 0(t2)
  SUBW t1, t1, t2
  LA t2, h
  LW t2, 0(t2)
  ADDW t1, t1, t2
  SUBW t0, t0, t1
  ADD a0, t0, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb5:
  JAL zero, bb1
bb6:
  # implict jump to bb7
bb7:
  ADDIW t1, t1, 1
  XORI a1, t2, 7
  SLTIU a1, a1, 1
  BNE a1, zero, bb12
  # implict jump to bb8
bb8:
  # implict jump to bb9
bb9:
  ADDIW t2, t2, 1
  SLTI a1, t1, 10
  BNE a1, zero, bb11
  # implict jump to bb10
bb10:
  JAL zero, bb3
bb11:
  JAL zero, bb7
bb12:
  # implict jump to bb13
bb13:
  ADDI a1, zero, 1
  SUBW t2, t2, a1
  SLTI a1, a0, 20
  BNE a1, zero, bb18
  # implict jump to bb14
bb14:
  # implict jump to bb15
bb15:
  ADDI a1, zero, 1
  SUBW a0, a0, a1
  XORI a1, t2, 7
  SLTIU a1, a1, 1
  BNE a1, zero, bb17
  # implict jump to bb16
bb16:
  JAL zero, bb9
bb17:
  JAL zero, bb13
bb18:
  # implict jump to bb19
bb19:
  ADDIW a0, a0, 3
  LA a1, e
  LW a1, 0(a1)
  ADDI a2, zero, 1
  BLT a2, a1, bb23
  # implict jump to bb20
bb20:
  LA a1, e
  LW a1, 0(a1)
  ADDIW a1, a1, 1
  LA a2, e
  SW a1, 0(a2)
  SLTI a1, a0, 20
  BNE a1, zero, bb22
  # implict jump to bb21
bb21:
  JAL zero, bb15
bb22:
  JAL zero, bb19
bb23:
  LA a1, e
  LW a1, 0(a1)
  ADDI a2, zero, 1
  SUBW a1, a1, a2
  LA a2, e
  SW a1, 0(a2)
  LA a1, f
  LW a1, 0(a1)
  ADDI a2, zero, 2
  BLT a2, a1, bb25
  # implict jump to bb24
bb24:
  LA a1, f
  LW a1, 0(a1)
  ADDIW a1, a1, 1
  LA a2, f
  SW a1, 0(a2)
  LA a1, e
  LW a1, 0(a1)
  ADDI a2, zero, 1
  BLT a2, a1, bb23
  JAL zero, bb20
bb25:
  LA a1, f
  LW a1, 0(a1)
  ADDI a2, zero, 2
  SUBW a1, a1, a2
  LA a2, f
  SW a1, 0(a2)
  LA a1, g
  LW a1, 0(a1)
  SLTI a1, a1, 3
  BNE a1, zero, bb27
  # implict jump to bb26
bb26:
  LA a1, g
  LW a1, 0(a1)
  ADDI a2, zero, 8
  SUBW a1, a1, a2
  LA a2, g
  SW a1, 0(a2)
  LA a1, f
  LW a1, 0(a1)
  ADDI a2, zero, 2
  BLT a2, a1, bb25
  JAL zero, bb24
bb27:
  LA a1, g
  LW a1, 0(a1)
  ADDIW a1, a1, 10
  LA a2, g
  SW a1, 0(a2)
  LA a1, h
  LW a1, 0(a1)
  SLTI a1, a1, 10
  BNE a1, zero, bb29
  # implict jump to bb28
bb28:
  LA a1, h
  LW a1, 0(a1)
  ADDI a2, zero, 1
  SUBW a1, a1, a2
  LA a2, h
  SW a1, 0(a2)
  LA a1, g
  LW a1, 0(a1)
  SLTI a1, a1, 3
  BNE a1, zero, bb27
  JAL zero, bb26
bb29:
  LA a1, h
  LW a1, 0(a1)
  ADDIW a1, a1, 8
  LA a2, h
  SW a1, 0(a2)
  LA a1, h
  LW a1, 0(a1)
  SLTI a1, a1, 10
  BNE a1, zero, bb29
  JAL zero, bb28
