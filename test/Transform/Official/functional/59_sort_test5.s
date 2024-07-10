.global heap_sort
.global heap_ajust
.global main
.global swap
.section .bss

.section .data
n:
.word 0x00000000
.section .text
heap_sort:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s9, 16(sp)
  SD s8, 24(sp)
  SD s0, 32(sp)
  SD s5, 40(sp)
  SD s7, 48(sp)
  SD s1, 56(sp)
  SD s6, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD ra, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDI s2, zero, 2
  DIVW s3, s1, s2
  ADDI s2, zero, 1
  SUBW s4, s3, s2
  ADD s2, s4, zero
  # implict jump to bb1
bb1:
  ADD s3, s2, zero
  ADDI s4, zero, -1
  SLT s5, s4, s3
  BNE s5, zero, bb16
  # implict jump to bb2
bb2:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADD s1, s3, zero
  # implict jump to bb3
bb3:
  ADD s2, s1, zero
  ADDI s3, zero, 0
  SLT s4, s3, s2
  BNE s4, zero, bb5
  # implict jump to bb4
bb4:
  ADD a0, zero, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s8, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s7, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb5:
  LW s3, 0(s0)
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s4, s0, s5
  LW s5, 0(s4)
  SW s5, 0(s0)
  SW s3, 0(s4)
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  ADDI s3, zero, 1
  ADD s5, zero, zero
  # implict jump to bb6
bb6:
  ADD s6, s5, zero
  ADD s7, s3, zero
  SLT s8, s7, s2
  BNE s8, zero, bb8
  # implict jump to bb7
bb7:
  ADD s1, s4, zero
  JAL zero, bb3
bb8:
  SLT s8, s7, s4
  BNE s8, zero, bb15
  # implict jump to bb9
bb9:
  ADD s9, zero, zero
  # implict jump to bb10
bb10:
  ADD s8, s9, zero
  BNE s8, zero, bb14
  # implict jump to bb11
bb11:
  ADD s10, s7, zero
  # implict jump to bb12
bb12:
  ADD s8, s10, zero
  ADDI s11, zero, 4
  MULW t0, s6, s11
  ADD s11, s0, t0
  LW t0, 0(s11)
  ADDI t1, zero, 4
  MULW t2, s8, t1
  ADD t1, s0, t2
  LW t2, 0(t1)
  SLT a1, t2, t0
  BNE a1, zero, bb7
  # implict jump to bb13
bb13:
  LW s1, 0(s11)
  LW t0, 0(t1)
  SW t0, 0(s11)
  SW s1, 0(t1)
  ADDI s1, zero, 2
  MULW s11, s8, s1
  ADDIW s1, s11, 1
  ADD s3, s1, zero
  ADD s5, s8, zero
  JAL zero, bb6
bb14:
  ADDIW s8, s7, 1
  ADD s10, s8, zero
  JAL zero, bb12
bb15:
  ADDI s8, zero, 4
  MULW s9, s7, s8
  ADD s8, s0, s9
  LW s9, 0(s8)
  ADDIW s8, s7, 1
  ADDI s10, zero, 4
  MULW s11, s8, s10
  ADD s8, s0, s11
  LW s10, 0(s8)
  SLT s8, s9, s10
  ADD s9, s8, zero
  JAL zero, bb10
bb16:
  ADDI s4, zero, 1
  SUBW s5, s1, s4
  ADDI s4, zero, 2
  MULW s6, s3, s4
  ADDIW s4, s6, 1
  ADD s6, s4, zero
  ADD s4, s3, zero
  # implict jump to bb17
bb17:
  ADD s7, s4, zero
  ADD s8, s6, zero
  SLT s9, s8, s1
  BNE s9, zero, bb19
  # implict jump to bb18
bb18:
  ADDI t1, zero, 1
  SUBW a1, s3, t1
  ADD s2, a1, zero
  JAL zero, bb1
bb19:
  SLT s9, s8, s5
  BNE s9, zero, bb26
  # implict jump to bb20
bb20:
  ADD s10, zero, zero
  # implict jump to bb21
bb21:
  ADD s9, s10, zero
  BNE s9, zero, bb25
  # implict jump to bb22
bb22:
  ADD s11, s8, zero
  # implict jump to bb23
bb23:
  ADD s9, s11, zero
  ADDI t0, zero, 4
  MULW t1, s7, t0
  ADD t0, s0, t1
  LW t1, 0(t0)
  ADDI t2, zero, 4
  MULW a1, s9, t2
  ADD t2, s0, a1
  LW a1, 0(t2)
  SLT a2, a1, t1
  BNE a2, zero, bb18
  # implict jump to bb24
bb24:
  LW s2, 0(t0)
  LW t1, 0(t2)
  SW t1, 0(t0)
  SW s2, 0(t2)
  ADDI s2, zero, 2
  MULW t0, s9, s2
  ADDIW s2, t0, 1
  ADD s6, s2, zero
  ADD s4, s9, zero
  JAL zero, bb17
bb25:
  ADDIW s9, s8, 1
  ADD s11, s9, zero
  JAL zero, bb23
bb26:
  ADDI s9, zero, 4
  MULW s10, s8, s9
  ADD s9, s0, s10
  LW s10, 0(s9)
  ADDIW s9, s8, 1
  ADDI s11, zero, 4
  MULW t0, s9, s11
  ADD s9, s0, t0
  LW s11, 0(s9)
  SLT s9, s10, s11
  ADD s10, s9, zero
  JAL zero, bb21
heap_ajust:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s9, 16(sp)
  SD s8, 24(sp)
  SD s0, 32(sp)
  SD s5, 40(sp)
  SD s7, 48(sp)
  SD s1, 56(sp)
  SD s6, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD ra, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADDI s3, zero, 2
  MULW s4, s1, s3
  ADDIW s3, s4, 1
  ADDIW s4, s2, 1
  ADD s5, s3, zero
  ADD s3, s1, zero
  # implict jump to bb28
bb28:
  ADD s1, s3, zero
  ADD s6, s5, zero
  SLT s7, s6, s4
  BNE s7, zero, bb30
  # implict jump to bb29
bb29:
  ADD a0, zero, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s8, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s7, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb30:
  SLT s7, s6, s2
  BNE s7, zero, bb38
  # implict jump to bb31
bb31:
  ADD s8, zero, zero
  # implict jump to bb32
bb32:
  ADD s7, s8, zero
  BNE s7, zero, bb37
  # implict jump to bb33
bb33:
  ADD s9, s6, zero
  # implict jump to bb34
bb34:
  ADD s7, s9, zero
  ADDI s10, zero, 4
  MULW s11, s1, s10
  ADD s10, s0, s11
  LW s11, 0(s10)
  ADDI t0, zero, 4
  MULW t1, s7, t0
  ADD t0, s0, t1
  LW t1, 0(t0)
  SLT t2, t1, s11
  BNE t2, zero, bb36
  # implict jump to bb35
bb35:
  LW s11, 0(s10)
  LW t1, 0(t0)
  SW t1, 0(s10)
  SW s11, 0(t0)
  ADDI s10, zero, 2
  MULW s11, s7, s10
  ADDIW s10, s11, 1
  ADD s5, s10, zero
  ADD s3, s7, zero
  JAL zero, bb28
bb36:
  ADD a0, zero, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s8, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s7, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb37:
  ADDIW s7, s6, 1
  ADD s9, s7, zero
  JAL zero, bb34
bb38:
  ADDI s7, zero, 4
  MULW s8, s6, s7
  ADD s7, s0, s8
  LW s8, 0(s7)
  ADDIW s7, s6, 1
  ADDI s9, zero, 4
  MULW s10, s7, s9
  ADD s7, s0, s10
  LW s9, 0(s7)
  SLT s7, s8, s9
  ADD s8, s7, zero
  JAL zero, bb32
main:
  ADDI sp, sp, -144
  SD s11, 40(sp)
  SD s10, 48(sp)
  SD s9, 56(sp)
  SD s8, 64(sp)
  SD s0, 72(sp)
  SD s5, 80(sp)
  SD s1, 88(sp)
  SD s6, 96(sp)
  SD s2, 104(sp)
  SD s3, 112(sp)
  SD s7, 120(sp)
  SD ra, 128(sp)
  SD s4, 136(sp)
  LA s0, n
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI s0, zero, 4
  SW s0, 0(sp)
  ADDI s0, sp, 4
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 8
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 12
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 16
  SW zero, 0(s0)
  ADDI s0, sp, 20
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 24
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 28
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 32
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 36
  ADDI s1, zero, 8
  SW s1, 0(s0)
  LA s0, n
  LW s1, 0(s0)
  ADDI s0, zero, 2
  DIVW s2, s1, s0
  ADDI s0, zero, 1
  SUBW s3, s2, s0
  ADD s0, s3, zero
  # implict jump to bb40
bb40:
  ADD s2, s0, zero
  ADDI s3, zero, -1
  SLT s4, s3, s2
  BNE s4, zero, bb58
  # implict jump to bb41
bb41:
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  ADD s0, s2, zero
  # implict jump to bb42
bb42:
  ADD s1, s0, zero
  SLT s2, zero, s1
  BNE s2, zero, bb47
  # implict jump to bb43
bb43:
  ADD s0, zero, zero
  # implict jump to bb44
bb44:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb46
  # implict jump to bb45
bb45:
  ADD a0, zero, zero
  LD s11, 40(sp)
  LD s10, 48(sp)
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s1, 88(sp)
  LD s6, 96(sp)
  LD s2, 104(sp)
  LD s3, 112(sp)
  LD s7, 120(sp)
  LD ra, 128(sp)
  LD s4, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb46:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 0
  ADD s2, t5, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb44
bb47:
  LW s2, 0(sp)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADDI t5, sp, 0
  ADD s3, t5, s4
  LW s4, 0(s3)
  SW s4, 0(sp)
  SW s2, 0(s3)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADDI s2, zero, 1
  ADD s4, zero, zero
  # implict jump to bb48
bb48:
  ADD s5, s4, zero
  ADD s6, s2, zero
  SLT s7, s6, s1
  BNE s7, zero, bb50
  # implict jump to bb49
bb49:
  ADD s0, s3, zero
  JAL zero, bb42
bb50:
  SLT s7, s6, s3
  BNE s7, zero, bb57
  # implict jump to bb51
bb51:
  ADD s8, zero, zero
  # implict jump to bb52
bb52:
  ADD s7, s8, zero
  BNE s7, zero, bb56
  # implict jump to bb53
bb53:
  ADD s9, s6, zero
  # implict jump to bb54
bb54:
  ADD s7, s9, zero
  ADDI s10, zero, 4
  MULW s11, s5, s10
  ADDI t5, sp, 0
  ADD s10, t5, s11
  LW s11, 0(s10)
  ADDI t0, zero, 4
  MULW t1, s7, t0
  ADDI t0, sp, 0
  ADD t0, t0, t1
  LW t1, 0(t0)
  SLT t2, t1, s11
  BNE t2, zero, bb49
  # implict jump to bb55
bb55:
  LW s0, 0(s10)
  LW s11, 0(t0)
  SW s11, 0(s10)
  SW s0, 0(t0)
  ADDI s0, zero, 2
  MULW s10, s7, s0
  ADDIW s0, s10, 1
  ADD s2, s0, zero
  ADD s4, s7, zero
  JAL zero, bb48
bb56:
  ADDIW s7, s6, 1
  ADD s9, s7, zero
  JAL zero, bb54
bb57:
  ADDI s7, zero, 4
  MULW s8, s6, s7
  ADDI t5, sp, 0
  ADD s7, t5, s8
  LW s8, 0(s7)
  ADDIW s7, s6, 1
  ADDI s9, zero, 4
  MULW s10, s7, s9
  ADDI t5, sp, 0
  ADD s7, t5, s10
  LW s9, 0(s7)
  SLT s7, s8, s9
  ADD s8, s7, zero
  JAL zero, bb52
bb58:
  ADDI s3, zero, 1
  SUBW s4, s1, s3
  ADDI s3, zero, 2
  MULW s5, s2, s3
  ADDIW s3, s5, 1
  ADD s5, s3, zero
  ADD s3, s2, zero
  # implict jump to bb59
bb59:
  ADD s6, s3, zero
  ADD s7, s5, zero
  SLT s8, s7, s1
  BNE s8, zero, bb61
  # implict jump to bb60
bb60:
  ADDI t0, zero, 1
  SUBW t2, s2, t0
  ADD s0, t2, zero
  JAL zero, bb40
bb61:
  SLT s8, s7, s4
  BNE s8, zero, bb68
  # implict jump to bb62
bb62:
  ADD s9, zero, zero
  # implict jump to bb63
bb63:
  ADD s8, s9, zero
  BNE s8, zero, bb67
  # implict jump to bb64
bb64:
  ADD s10, s7, zero
  # implict jump to bb65
bb65:
  ADD s8, s10, zero
  ADDI s11, zero, 4
  MULW t0, s6, s11
  ADDI t5, sp, 0
  ADD s11, t5, t0
  LW t0, 0(s11)
  ADDI t1, zero, 4
  MULW t2, s8, t1
  ADDI t1, sp, 0
  ADD t1, t1, t2
  LW t2, 0(t1)
  SLT a0, t2, t0
  BNE a0, zero, bb60
  # implict jump to bb66
bb66:
  LW s0, 0(s11)
  LW t0, 0(t1)
  SW t0, 0(s11)
  SW s0, 0(t1)
  ADDI s0, zero, 2
  MULW s11, s8, s0
  ADDIW s0, s11, 1
  ADD s5, s0, zero
  ADD s3, s8, zero
  JAL zero, bb59
bb67:
  ADDIW s8, s7, 1
  ADD s10, s8, zero
  JAL zero, bb65
bb68:
  ADDI s8, zero, 4
  MULW s9, s7, s8
  ADDI t5, sp, 0
  ADD s8, t5, s9
  LW s9, 0(s8)
  ADDIW s8, s7, 1
  ADDI s10, zero, 4
  MULW s11, s8, s10
  ADDI t5, sp, 0
  ADD s8, t5, s11
  LW s10, 0(s8)
  SLT s8, s9, s10
  ADD s9, s8, zero
  JAL zero, bb63
swap:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s1, s0, s4
  LW s3, 0(s1)
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s2, s0, s5
  LW s0, 0(s2)
  SW s0, 0(s1)
  SW s3, 0(s2)
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
