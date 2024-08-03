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
  LA t1, g
  ADDI t0, zero, 1
  SW t0, 0(t1)
  LA t1, h
  ADDI t0, zero, 2
  SW t0, 0(t1)
  LA t1, e
  ADDI t0, zero, 4
  SW t0, 0(t1)
  LA t1, f
  ADDI t0, zero, 6
  SW t0, 0(t1)
  ADDI t0, zero, 5
  ADDI t1, zero, 6
  ADDI t2, zero, 7
  ADDI a0, zero, 10
  # implict jump to bb1
bb1:
  ADD a2, t2, zero
  ADDIW a1, t0, 3
  SLTI t0, t1, 10
  BNE t0, zero, bb6
  # implict jump to bb2
bb2:
  ADD t2, t1, zero
  ADD t1, a2, zero
  ADD t0, a0, zero
  # implict jump to bb3
bb3:
  ADD a0, t0, zero
  ADD a2, t1, zero
  ADD t1, t2, zero
  ADDI t0, zero, 2
  SUBW t1, t1, t0
  SLTI t0, a1, 20
  BNE t0, zero, bb5
  # implict jump to bb4
bb4:
  ADDW t0, t1, a0
  ADDW t0, a1, t0
  ADDW t2, t0, a2
  LA t0, e
  LW t0, 0(t0)
  ADDW t1, t0, a0
  LA t0, g
  LW t0, 0(t0)
  SUBW t1, t1, t0
  LA t0, h
  LW t0, 0(t0)
  ADDW t0, t1, t0
  SUBW t0, t2, t0
  ADD a0, t0, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb5:
  ADD t0, a1, zero
  ADD t2, a2, zero
  JAL zero, bb1
bb6:
  ADD t2, t1, zero
  ADD t0, a2, zero
  ADD t1, a0, zero
  # implict jump to bb7
bb7:
  ADD a2, t1, zero
  ADD a0, t0, zero
  ADD t0, t2, zero
  ADDIW t1, t0, 1
  XORI t0, a0, 7
  SLTIU t0, t0, 1
  BNE t0, zero, bb12
  # implict jump to bb8
bb8:
  ADD t0, a0, zero
  ADD t2, a2, zero
  # implict jump to bb9
bb9:
  ADD a0, t2, zero
  ADDIW t0, t0, 1
  SLTI t2, t1, 10
  BNE t2, zero, bb11
  # implict jump to bb10
bb10:
  ADD t2, t1, zero
  ADD t1, t0, zero
  ADD t0, a0, zero
  JAL zero, bb3
bb11:
  ADD t2, t1, zero
  ADD t1, a0, zero
  JAL zero, bb7
bb12:
  ADD t0, a0, zero
  ADD t2, a2, zero
  # implict jump to bb13
bb13:
  ADD a0, t0, zero
  ADDI t0, zero, 1
  SUBW a0, a0, t0
  SLTI t0, t2, 20
  BNE t0, zero, bb18
  # implict jump to bb14
bb14:
  ADD t0, t2, zero
  # implict jump to bb15
bb15:
  ADD t2, t0, zero
  ADDI t0, zero, 1
  SUBW t2, t2, t0
  XORI t0, a0, 7
  SLTIU t0, t0, 1
  BNE t0, zero, bb17
  # implict jump to bb16
bb16:
  ADD t0, a0, zero
  JAL zero, bb9
bb17:
  ADD t0, a0, zero
  JAL zero, bb13
bb18:
  ADD t0, t2, zero
  # implict jump to bb19
bb19:
  ADDIW t2, t0, 3
  LA t0, e
  LW a2, 0(t0)
  ADDI t0, zero, 1
  BLT t0, a2, bb23
  # implict jump to bb20
bb20:
  LA t0, e
  LW t0, 0(t0)
  ADDIW a2, t0, 1
  LA t0, e
  SW a2, 0(t0)
  SLTI t0, t2, 20
  BNE t0, zero, bb22
  # implict jump to bb21
bb21:
  ADD t0, t2, zero
  JAL zero, bb15
bb22:
  ADD t0, t2, zero
  JAL zero, bb19
bb23:
  LA t0, e
  LW a2, 0(t0)
  ADDI t0, zero, 1
  SUBW a2, a2, t0
  LA t0, e
  SW a2, 0(t0)
  LA t0, f
  LW a2, 0(t0)
  ADDI t0, zero, 2
  BLT t0, a2, bb25
  # implict jump to bb24
bb24:
  LA t0, f
  LW t0, 0(t0)
  ADDIW a2, t0, 1
  LA t0, f
  SW a2, 0(t0)
  LA t0, e
  LW a2, 0(t0)
  ADDI t0, zero, 1
  BLT t0, a2, bb23
  JAL zero, bb20
bb25:
  LA t0, f
  LW a2, 0(t0)
  ADDI t0, zero, 2
  SUBW a2, a2, t0
  LA t0, f
  SW a2, 0(t0)
  LA t0, g
  LW t0, 0(t0)
  SLTI t0, t0, 3
  BNE t0, zero, bb27
  # implict jump to bb26
bb26:
  LA t0, g
  LW a2, 0(t0)
  ADDI t0, zero, 8
  SUBW a2, a2, t0
  LA t0, g
  SW a2, 0(t0)
  LA t0, f
  LW a2, 0(t0)
  ADDI t0, zero, 2
  BLT t0, a2, bb25
  JAL zero, bb24
bb27:
  LA t0, g
  LW t0, 0(t0)
  ADDIW a2, t0, 10
  LA t0, g
  SW a2, 0(t0)
  LA t0, h
  LW t0, 0(t0)
  SLTI t0, t0, 10
  BNE t0, zero, bb29
  # implict jump to bb28
bb28:
  LA t0, h
  LW a2, 0(t0)
  ADDI t0, zero, 1
  SUBW a2, a2, t0
  LA t0, h
  SW a2, 0(t0)
  LA t0, g
  LW t0, 0(t0)
  SLTI t0, t0, 3
  BNE t0, zero, bb27
  JAL zero, bb26
bb29:
  LA t0, h
  LW t0, 0(t0)
  ADDIW a2, t0, 8
  LA t0, h
  SW a2, 0(t0)
  LA t0, h
  LW t0, 0(t0)
  SLTI t0, t0, 10
  BNE t0, zero, bb29
  JAL zero, bb28
