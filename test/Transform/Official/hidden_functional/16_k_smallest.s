.global findSmallest
.global findPivot
.global main
.global swap
.section .bss
array:
.space 4000


.section .data

space:
.word 0x00000020
maxN:
.word 0x000003e8
.section .text
findSmallest:
  ADDI sp, sp, -128
  SD ra, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s0, 40(sp)
  SD s3, 48(sp)
  SD s11, 56(sp)
  SD s4, 64(sp)
  SD s5, 72(sp)
  SD s6, 80(sp)
  SD s7, 88(sp)
  SD s8, 96(sp)
  SD s9, 104(sp)
  SD s10, 112(sp)
  ADD s4, a0, zero
  ADD t4, a1, zero
  SW t4, 12(sp)
  ADD t4, a2, zero
  SW t4, 8(sp)
  ADD t4, a3, zero
  SW t4, 4(sp)
  LW t4, 12(sp)
  XOR s8, s4, t4
  SLTIU s8, s8, 1
  BNE s8, zero, bb21
  # implict jump to bb1
bb1:
  LW t4, 12(sp)
  SLLIW s8, t4, 2
  LA s9, array
  ADD s8, s9, s8
  LW s9, 0(s8)
  LW t4, 12(sp)
  BLT s4, t4, bb13
  # implict jump to bb2
bb2:
  ADD s10, s4, zero
  # implict jump to bb3
bb3:
  ADD s1, s10, zero
  SLLIW s10, s1, 2
  LA t1, array
  ADD s10, t1, s10
  LW t1, 0(s10)
  LW t2, 0(s8)
  SW t2, 0(s10)
  SW t1, 0(s8)
  LW t4, 8(sp)
  XOR s10, t4, s1
  SLTIU s10, s10, 1
  BNE s10, zero, bb8
  # implict jump to bb4
bb4:
  LW t4, 8(sp)
  BLT t4, s1, bb7
  # implict jump to bb5
bb5:
  ADDIW s10, s1, 1
  ADD a0, s10, zero
  LW t4, 12(sp)
  ADD a1, t4, zero
  LW t4, 8(sp)
  ADD a2, t4, zero
  LW t4, 4(sp)
  ADD a3, t4, zero
  CALL findSmallest
  # implict jump to bb6
bb6:
  LD ra, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s0, 40(sp)
  LD s3, 48(sp)
  LD s11, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD s10, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb7:
  ADDI s10, zero, 1
  SUBW s10, s1, s10
  ADD a0, s4, zero
  ADD a1, s10, zero
  LW t4, 8(sp)
  ADD a2, t4, zero
  LW t4, 4(sp)
  ADD a3, t4, zero
  CALL findSmallest
  JAL zero, bb6
bb8:
  ADDI s10, zero, 0
  BLT s10, s1, bb9
  JAL zero, bb6
bb9:
  ADD s10, zero, zero
  # implict jump to bb10
bb10:
  ADD s7, s10, zero
  SLLIW s6, s7, 2
  LA s5, array
  ADD s5, s5, s6
  LW s5, 0(s5)
  ADD a0, s5, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s2, s7, 1
  # implict jump to bb11
bb11:
  BLT s2, s1, bb12
  JAL zero, bb6
bb12:
  ADD s10, s2, zero
  JAL zero, bb10
bb13:
  ADD s11, s4, zero
  ADD t4, s4, zero
  SW t4, 0(sp)
  # implict jump to bb14
bb14:
  LW t4, 0(sp)
  ADD t1, t4, zero
  ADD t2, s11, zero
  SLLIW a4, t1, 2
  LA a5, array
  ADD a4, a5, a4
  LW a5, 0(a4)
  SLT a5, s9, a5
  XORI a5, a5, 1
  BNE a5, zero, bb20
  # implict jump to bb15
bb15:
  ADD a5, t2, zero
  # implict jump to bb16
bb16:
  ADD s3, a5, zero
  ADDIW s0, t1, 1
  # implict jump to bb17
bb17:
  LW t4, 12(sp)
  BLT s0, t4, bb19
  # implict jump to bb18
bb18:
  ADD s10, s3, zero
  JAL zero, bb3
bb19:
  ADD s11, s3, zero
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb14
bb20:
  LW a6, 0(a4)
  SLLIW a7, t2, 2
  LA t6, array
  ADD a7, t6, a7
  LW t6, 0(a7)
  SW t6, 0(a4)
  SW a6, 0(a7)
  ADDIW t2, t2, 1
  ADD a5, t2, zero
  JAL zero, bb16
bb21:
  LD ra, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s0, 40(sp)
  LD s3, 48(sp)
  LD s11, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD s10, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
findPivot:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  ADD s2, a0, zero
  SLLIW s3, a1, 2
  LA s4, array
  ADD s3, s4, s3
  LW s4, 0(s3)
  BLT s2, a1, bb25
  # implict jump to bb23
bb23:
  ADD s5, s2, zero
  # implict jump to bb24
bb24:
  SLLIW s7, s5, 2
  LA s8, array
  ADD s7, s8, s7
  LW s8, 0(s7)
  LW s9, 0(s3)
  SW s9, 0(s7)
  SW s8, 0(s3)
  ADD a0, s5, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb25:
  ADD s6, s2, zero
  # implict jump to bb26
bb26:
  ADD s7, s2, zero
  ADD s8, s6, zero
  SLLIW s9, s7, 2
  LA s10, array
  ADD s9, s10, s9
  LW s10, 0(s9)
  SLT s10, s4, s10
  XORI s10, s10, 1
  BNE s10, zero, bb32
  # implict jump to bb27
bb27:
  ADD s10, s8, zero
  # implict jump to bb28
bb28:
  ADD s1, s10, zero
  ADDIW s0, s7, 1
  # implict jump to bb29
bb29:
  BLT s0, a1, bb31
  # implict jump to bb30
bb30:
  ADD s5, s1, zero
  JAL zero, bb24
bb31:
  ADD s6, s1, zero
  ADD s2, s0, zero
  JAL zero, bb26
bb32:
  LW s11, 0(s9)
  SLLIW t0, s8, 2
  LA t1, array
  ADD t0, t1, t0
  LW t1, 0(t0)
  SW t1, 0(s9)
  SW s11, 0(t0)
  ADDIW s8, s8, 1
  ADD s10, s8, zero
  JAL zero, bb28
main:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  CALL getint
  ADD s1, a0, zero
  CALL getint
  ADD s2, a0, zero
  BLT zero, s1, bb35
  # implict jump to bb34
bb34:
  ADDI s4, zero, 1
  SUBW s4, s1, s4
  ADD a0, zero, zero
  ADD a1, s4, zero
  ADD a2, s2, zero
  ADD a3, s1, zero
  CALL findSmallest
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb35:
  ADD s3, zero, zero
  # implict jump to bb36
bb36:
  ADD s4, s3, zero
  SLLIW s5, s4, 2
  LA s6, array
  ADD s5, s6, s5
  CALL getint
  ADD s6, a0, zero
  SW s6, 0(s5)
  ADDIW s0, s4, 1
  # implict jump to bb37
bb37:
  BLT s0, s1, bb38
  JAL zero, bb34
bb38:
  ADD s3, s0, zero
  JAL zero, bb36
swap:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SLLIW s0, a0, 2
  LA s1, array
  ADD s0, s1, s0
  LW s1, 0(s0)
  SLLIW s2, a1, 2
  LA s3, array
  ADD s2, s3, s2
  LW s3, 0(s2)
  SW s3, 0(s0)
  SW s1, 0(s2)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
