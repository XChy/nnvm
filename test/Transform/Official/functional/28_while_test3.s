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
  ADD a2, a0, zero
  ADD a1, t2, zero
  ADDIW t2, t0, 3
  SLTI t0, t1, 10
  BNE t0, zero, bb7
  # implict jump to bb2
bb2:
  ADD t0, t1, zero
  ADD a0, a1, zero
  ADD t1, a2, zero
  # implict jump to bb3
bb3:
  ADD a1, t1, zero
  ADD t1, t0, zero
  ADDI t0, zero, 2
  SUBW t1, t1, t0
  SLTI t0, t2, 20
  BNE t0, zero, bb6
  # implict jump to bb4
bb4:
  # implict jump to bb5
bb5:
  ADDW t0, t1, a1
  ADDW t0, t2, t0
  ADDW t2, t0, a0
  LA t0, e
  LW t0, 0(t0)
  ADDW t1, t0, a1
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
bb6:
  ADD t0, t2, zero
  ADD t2, a0, zero
  ADD a0, a1, zero
  JAL zero, bb1
bb7:
  ADD a0, t1, zero
  ADD t1, a1, zero
  ADD t0, a2, zero
  # implict jump to bb8
bb8:
  ADD a1, t0, zero
  ADD t0, a0, zero
  ADDIW a0, t0, 1
  XORI t0, t1, 7
  SLTIU t0, t0, 1
  BNE t0, zero, bb13
  # implict jump to bb9
bb9:
  ADD t0, t1, zero
  ADD t1, a1, zero
  # implict jump to bb10
bb10:
  ADD a1, t1, zero
  ADDIW t1, t0, 1
  SLTI t0, a0, 10
  BNE t0, zero, bb12
  # implict jump to bb11
bb11:
  ADD t0, a0, zero
  ADD a0, t1, zero
  ADD t1, a1, zero
  JAL zero, bb3
bb12:
  ADD t0, a1, zero
  JAL zero, bb8
bb13:
  ADD t0, t1, zero
  ADD t1, a1, zero
  # implict jump to bb14
bb14:
  ADD a1, t0, zero
  ADDI t0, zero, 1
  SUBW a1, a1, t0
  SLTI t0, t1, 20
  BNE t0, zero, bb19
  # implict jump to bb15
bb15:
  ADD t0, t1, zero
  # implict jump to bb16
bb16:
  ADD t1, t0, zero
  ADDI t0, zero, 1
  SUBW t1, t1, t0
  XORI t0, a1, 7
  SLTIU t0, t0, 1
  BNE t0, zero, bb18
  # implict jump to bb17
bb17:
  ADD t0, a1, zero
  JAL zero, bb10
bb18:
  ADD t0, a1, zero
  JAL zero, bb14
bb19:
  ADD t0, t1, zero
  # implict jump to bb20
bb20:
  ADDIW t1, t0, 3
  LA t0, e
  LW a2, 0(t0)
  ADDI t0, zero, 1
  BLT t0, a2, bb24
  # implict jump to bb21
bb21:
  LA t0, e
  LW t0, 0(t0)
  ADDIW a2, t0, 1
  LA t0, e
  SW a2, 0(t0)
  SLTI t0, t1, 20
  BNE t0, zero, bb23
  # implict jump to bb22
bb22:
  ADD t0, t1, zero
  JAL zero, bb16
bb23:
  ADD t0, t1, zero
  JAL zero, bb20
bb24:
  LA t0, e
  LW a2, 0(t0)
  ADDI t0, zero, 1
  SUBW a2, a2, t0
  LA t0, e
  SW a2, 0(t0)
  LA t0, f
  LW a2, 0(t0)
  ADDI t0, zero, 2
  BLT t0, a2, bb26
  # implict jump to bb25
bb25:
  LA t0, f
  LW t0, 0(t0)
  ADDIW a2, t0, 1
  LA t0, f
  SW a2, 0(t0)
  LA t0, e
  LW a2, 0(t0)
  ADDI t0, zero, 1
  BLT t0, a2, bb24
  JAL zero, bb21
bb26:
  LA t0, f
  LW a2, 0(t0)
  ADDI t0, zero, 2
  SUBW a2, a2, t0
  LA t0, f
  SW a2, 0(t0)
  LA t0, g
  LW t0, 0(t0)
  SLTI t0, t0, 3
  BNE t0, zero, bb28
  # implict jump to bb27
bb27:
  LA t0, g
  LW a2, 0(t0)
  ADDI t0, zero, 8
  SUBW a2, a2, t0
  LA t0, g
  SW a2, 0(t0)
  LA t0, f
  LW a2, 0(t0)
  ADDI t0, zero, 2
  BLT t0, a2, bb26
  JAL zero, bb25
bb28:
  LA t0, g
  LW t0, 0(t0)
  ADDIW a2, t0, 10
  LA t0, g
  SW a2, 0(t0)
  LA t0, h
  LW t0, 0(t0)
  SLTI t0, t0, 10
  BNE t0, zero, bb30
  # implict jump to bb29
bb29:
  LA t0, h
  LW a2, 0(t0)
  ADDI t0, zero, 1
  SUBW a2, a2, t0
  LA t0, h
  SW a2, 0(t0)
  LA t0, g
  LW t0, 0(t0)
  SLTI t0, t0, 3
  BNE t0, zero, bb28
  JAL zero, bb27
bb30:
  LA t0, h
  LW t0, 0(t0)
  ADDIW a2, t0, 8
  LA t0, h
  SW a2, 0(t0)
  LA t0, h
  LW t0, 0(t0)
  SLTI t0, t0, 10
  BNE t0, zero, bb30
  JAL zero, bb29
