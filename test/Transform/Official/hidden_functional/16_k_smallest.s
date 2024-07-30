.global findSmallest
.global findPivot
.global main
.global swap
.section .bss
array:
.space 4000
.section .data

.section .text
findSmallest:
  ADDI sp, sp, -128
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s8, 88(sp)
  SD s11, 96(sp)
  SD s9, 104(sp)
  SD s10, 112(sp)
  ADD s1, a0, zero
  ADD s2, a1, zero
  ADD t4, a2, zero
  SW t4, 8(sp)
  ADD t4, a3, zero
  SW t4, 4(sp)
  XOR s5, s1, s2
  SLTIU s5, s5, 1
  BNE s5, zero, bb19
  # implict jump to bb1
bb1:
  SLLIW s5, s2, 2
  LA s6, array
  ADD s5, s6, s5
  LW s6, 0(s5)
  BLT s1, s2, bb12
  # implict jump to bb2
bb2:
  ADD s7, s1, zero
  # implict jump to bb3
bb3:
  ADD s0, s7, zero
  SLLIW s7, s0, 2
  LA s11, array
  ADD s7, s11, s7
  LW s11, 0(s7)
  LW t0, 0(s5)
  SW t0, 0(s7)
  SW s11, 0(s5)
  LW t4, 8(sp)
  XOR s7, t4, s0
  SLTIU s7, s7, 1
  BNE s7, zero, bb8
  # implict jump to bb4
bb4:
  LW t4, 8(sp)
  BLT t4, s0, bb7
  # implict jump to bb5
bb5:
  ADDIW s7, s0, 1
  ADD a0, s7, zero
  ADD a1, s2, zero
  LW t4, 8(sp)
  ADD a2, t4, zero
  LW t4, 4(sp)
  ADD a3, t4, zero
  CALL findSmallest
  # implict jump to bb6
bb6:
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s11, 96(sp)
  LD s9, 104(sp)
  LD s10, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb7:
  ADDI s7, zero, 1
  SUBW s7, s0, s7
  ADD a0, s1, zero
  ADD a1, s7, zero
  LW t4, 8(sp)
  ADD a2, t4, zero
  LW t4, 4(sp)
  ADD a3, t4, zero
  CALL findSmallest
  JAL zero, bb6
bb8:
  ADDI s7, zero, 0
  BLT s7, s0, bb9
  JAL zero, bb6
bb9:
  ADD s7, zero, zero
  # implict jump to bb10
bb10:
  ADD s11, s7, zero
  SLLIW s4, s11, 2
  LA s3, array
  ADD s3, s3, s4
  LW s3, 0(s3)
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s3, s11, 1
  BLT s3, s0, bb11
  JAL zero, bb6
bb11:
  ADD s7, s3, zero
  JAL zero, bb10
bb12:
  ADD s8, s1, zero
  ADD s9, s1, zero
  # implict jump to bb13
bb13:
  ADD s10, s9, zero
  ADD s11, s8, zero
  SLLIW t0, s10, 2
  LA t1, array
  ADD t0, t1, t0
  LW t1, 0(t0)
  SLT t1, s6, t1
  XORI t1, t1, 1
  BNE t1, zero, bb18
  # implict jump to bb14
bb14:
  ADD t1, s11, zero
  # implict jump to bb15
bb15:
  ADD t4, t1, zero
  SW t4, 0(sp)
  ADDIW s10, s10, 1
  BLT s10, s2, bb17
  # implict jump to bb16
bb16:
  LW t4, 0(sp)
  ADD s7, t4, zero
  JAL zero, bb3
bb17:
  LW t4, 0(sp)
  ADD s8, t4, zero
  ADD s9, s10, zero
  JAL zero, bb13
bb18:
  LW t2, 0(t0)
  SLLIW a4, s11, 2
  LA a5, array
  ADD a4, a5, a4
  LW a5, 0(a4)
  SW a5, 0(t0)
  SW t2, 0(a4)
  ADDIW s11, s11, 1
  ADD t1, s11, zero
  JAL zero, bb15
bb19:
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s11, 96(sp)
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
  ADD s0, a0, zero
  SLLIW s1, a1, 2
  LA s2, array
  ADD s1, s2, s1
  LW s2, 0(s1)
  BLT s0, a1, bb23
  # implict jump to bb21
bb21:
  ADD s3, s0, zero
  # implict jump to bb22
bb22:
  SLLIW s6, s3, 2
  LA s7, array
  ADD s6, s7, s6
  LW s7, 0(s6)
  LW s9, 0(s1)
  SW s9, 0(s6)
  SW s7, 0(s1)
  ADD a0, s3, zero
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
bb23:
  ADD s4, s0, zero
  # implict jump to bb24
bb24:
  ADD s5, s0, zero
  ADD s6, s4, zero
  SLLIW s7, s5, 2
  LA s8, array
  ADD s7, s8, s7
  LW s8, 0(s7)
  SLT s8, s2, s8
  XORI s8, s8, 1
  BNE s8, zero, bb29
  # implict jump to bb25
bb25:
  ADD s8, s6, zero
  # implict jump to bb26
bb26:
  ADDIW s5, s5, 1
  BLT s5, a1, bb28
  # implict jump to bb27
bb27:
  ADD s3, s8, zero
  JAL zero, bb22
bb28:
  ADD s4, s8, zero
  ADD s0, s5, zero
  JAL zero, bb24
bb29:
  LW s9, 0(s7)
  SLLIW s10, s6, 2
  LA s11, array
  ADD s10, s11, s10
  LW s11, 0(s10)
  SW s11, 0(s7)
  SW s9, 0(s10)
  ADDIW s6, s6, 1
  ADD s8, s6, zero
  JAL zero, bb26
main:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  BLT zero, s0, bb32
  # implict jump to bb31
bb31:
  ADDI s4, zero, 1
  SUBW s4, s0, s4
  ADD a0, zero, zero
  ADD a1, s4, zero
  ADD a2, s1, zero
  ADD a3, s0, zero
  CALL findSmallest
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb32:
  ADD s2, zero, zero
  # implict jump to bb33
bb33:
  ADD s3, s2, zero
  SLLIW s4, s3, 2
  LA s5, array
  ADD s4, s5, s4
  CALL getint
  ADD s5, a0, zero
  SW s5, 0(s4)
  ADDIW s3, s3, 1
  BLT s3, s0, bb34
  JAL zero, bb31
bb34:
  ADD s2, s3, zero
  JAL zero, bb33
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
