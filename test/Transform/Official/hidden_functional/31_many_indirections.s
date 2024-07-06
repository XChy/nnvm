.global main
.section .bss
array:
.space 8000


.section .data

M:
.word 0x00000014
N:
.word 0x00000064
.section .text
main:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s10, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s11, 96(sp)
  ADD s0, zero, zero
  JAL zero, bb1
bb1:
  ADD s1, s0, zero
  LA s2, M
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  ADD s2, zero, zero
  JAL zero, bb4
bb3:
  ADDI s0, zero, 400
  MULW s1, zero, s0
  LA s0, array
  ADD s2, s0, s1
  ADDI s0, zero, 400
  ADDI s1, zero, 1
  MULW s3, s0, s1
  LA s0, array
  ADD s1, s0, s3
  ADDI s0, zero, 400
  ADDI s3, zero, 2
  MULW s4, s0, s3
  LA s0, array
  ADD s3, s0, s4
  ADDI s0, zero, 400
  ADDI s4, zero, 3
  MULW s5, s0, s4
  LA s0, array
  ADD s4, s0, s5
  ADDI s0, zero, 400
  ADDI s5, zero, 4
  MULW s6, s0, s5
  LA s0, array
  ADD s5, s0, s6
  ADDI s0, zero, 400
  ADDI s6, zero, 5
  MULW s7, s0, s6
  LA s0, array
  ADD s6, s0, s7
  ADDI s0, zero, 400
  ADDI s7, zero, 6
  MULW s8, s0, s7
  LA s0, array
  ADD s7, s0, s8
  ADDI s0, zero, 400
  ADDI s8, zero, 7
  MULW s9, s0, s8
  LA s0, array
  ADD s8, s0, s9
  ADDI s0, zero, 400
  ADDI s9, zero, 8
  MULW s10, s0, s9
  LA s0, array
  ADD s9, s0, s10
  ADDI s0, zero, 400
  ADDI s10, zero, 9
  MULW s11, s0, s10
  LA s0, array
  ADD s10, s0, s11
  ADDI s0, zero, 400
  ADDI s11, zero, 10
  MULW ra, s0, s11
  LA s0, array
  ADD s11, s0, ra
  ADDI s0, zero, 400
  ADDI ra, zero, 11
  MULW t0, s0, ra
  LA s0, array
  ADD ra, s0, t0
  ADDI s0, zero, 400
  ADDI t0, zero, 12
  MULW t1, s0, t0
  LA s0, array
  ADD t0, s0, t1
  ADDI s0, zero, 400
  ADDI t1, zero, 13
  MULW t2, s0, t1
  LA s0, array
  ADD t1, s0, t2
  ADDI s0, zero, 400
  ADDI t2, zero, 14
  MULW a0, s0, t2
  LA s0, array
  ADD t2, s0, a0
  ADDI s0, zero, 400
  ADDI a0, zero, 15
  MULW a1, s0, a0
  LA s0, array
  ADD a0, s0, a1
  ADDI s0, zero, 400
  ADDI a1, zero, 16
  MULW a2, s0, a1
  LA s0, array
  ADD a1, s0, a2
  ADDI s0, zero, 400
  ADDI a2, zero, 17
  MULW a3, s0, a2
  LA s0, array
  ADD a2, s0, a3
  ADDI s0, zero, 400
  ADDI a3, zero, 18
  MULW a4, s0, a3
  LA s0, array
  ADD a3, s0, a4
  ADDI s0, zero, 400
  ADDI a4, zero, 19
  MULW a5, s0, a4
  LA s0, array
  ADD a4, s0, a5
  ADDI s0, zero, 4
  ADDI a5, zero, 23
  MULW a6, s0, a5
  ADD s0, a4, a6
  LW a4, 0(s0)
  ADDI s0, zero, 4
  MULW a5, a4, s0
  ADD s0, a3, a5
  LW a3, 0(s0)
  ADDI s0, zero, 4
  MULW a4, a3, s0
  ADD s0, a2, a4
  LW a2, 0(s0)
  ADDI s0, zero, 4
  MULW a3, a2, s0
  ADD s0, a1, a3
  LW a1, 0(s0)
  ADDI s0, zero, 4
  MULW a2, a1, s0
  ADD s0, a0, a2
  LW a0, 0(s0)
  ADDI s0, zero, 4
  MULW a1, a0, s0
  ADD s0, t2, a1
  LW t2, 0(s0)
  ADDI s0, zero, 4
  MULW a0, t2, s0
  ADD s0, t1, a0
  LW t1, 0(s0)
  ADDI s0, zero, 4
  MULW t2, t1, s0
  ADD s0, t0, t2
  LW t0, 0(s0)
  ADDI s0, zero, 4
  MULW t1, t0, s0
  ADD s0, ra, t1
  LW ra, 0(s0)
  ADDI s0, zero, 4
  MULW t0, ra, s0
  ADD s0, s11, t0
  LW s11, 0(s0)
  ADDI s0, zero, 4
  MULW ra, s11, s0
  ADD s0, s10, ra
  LW s10, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s10, s0
  ADD s0, s9, s11
  LW s9, 0(s0)
  ADDI s0, zero, 4
  MULW s10, s9, s0
  ADD s0, s8, s10
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW s9, s8, s0
  ADD s0, s7, s9
  LW s7, 0(s0)
  ADDI s0, zero, 4
  MULW s8, s7, s0
  ADD s0, s6, s8
  LW s6, 0(s0)
  ADDI s0, zero, 4
  MULW s7, s6, s0
  ADD s0, s5, s7
  LW s5, 0(s0)
  ADDI s0, zero, 4
  MULW s6, s5, s0
  ADD s0, s4, s6
  LW s4, 0(s0)
  ADDI s0, zero, 4
  MULW s5, s4, s0
  ADD s0, s3, s5
  LW s3, 0(s0)
  ADDI s0, zero, 4
  MULW s4, s3, s0
  ADD s0, s1, s4
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s1, s0
  ADD s0, s2, s3
  LW s1, 0(s0)
  ADDI s0, zero, 400
  ADDI s2, zero, 19
  MULW s3, s0, s2
  LA s0, array
  ADD s2, s0, s3
  ADDI s0, zero, 4
  ADDI s3, zero, 18
  MULW s4, s0, s3
  ADD s0, s2, s4
  LW s2, 0(s0)
  ADDI s0, zero, 400
  MULW s3, s2, s0
  LA s0, array
  ADD s2, s0, s3
  ADDI s0, zero, 4
  ADDI s3, zero, 17
  MULW s4, s0, s3
  ADD s0, s2, s4
  LW s2, 0(s0)
  ADDI s0, zero, 400
  MULW s3, s2, s0
  LA s0, array
  ADD s2, s0, s3
  ADDI s0, zero, 4
  ADDI s3, zero, 16
  MULW s4, s0, s3
  ADD s0, s2, s4
  LW s2, 0(s0)
  ADDI s0, zero, 400
  MULW s3, s2, s0
  LA s0, array
  ADD s2, s0, s3
  ADDI s0, zero, 4
  ADDI s3, zero, 15
  MULW s4, s0, s3
  ADD s0, s2, s4
  LW s2, 0(s0)
  ADDI s0, zero, 400
  MULW s3, s2, s0
  LA s0, array
  ADD s2, s0, s3
  ADDI s0, zero, 4
  ADDI s3, zero, 14
  MULW s4, s0, s3
  ADD s0, s2, s4
  LW s2, 0(s0)
  ADDI s0, zero, 400
  MULW s3, s2, s0
  LA s0, array
  ADD s2, s0, s3
  ADDI s0, zero, 4
  ADDI s3, zero, 13
  MULW s4, s0, s3
  ADD s0, s2, s4
  LW s2, 0(s0)
  ADDI s0, zero, 400
  MULW s3, s2, s0
  LA s0, array
  ADD s2, s0, s3
  ADDI s0, zero, 4
  ADDI s3, zero, 12
  MULW s4, s0, s3
  ADD s0, s2, s4
  LW s2, 0(s0)
  ADDI s0, zero, 400
  MULW s3, s2, s0
  LA s0, array
  ADD s2, s0, s3
  ADDI s0, zero, 4
  ADDI s3, zero, 11
  MULW s4, s0, s3
  ADD s0, s2, s4
  LW s2, 0(s0)
  ADDI s0, zero, 400
  MULW s3, s2, s0
  LA s0, array
  ADD s2, s0, s3
  ADDI s0, zero, 4
  ADDI s3, zero, 10
  MULW s4, s0, s3
  ADD s0, s2, s4
  LW s2, 0(s0)
  ADDI s0, zero, 400
  MULW s3, s2, s0
  LA s0, array
  ADD s2, s0, s3
  ADDI s0, zero, 4
  ADDI s3, zero, 9
  MULW s4, s0, s3
  ADD s0, s2, s4
  LW s2, 0(s0)
  ADDI s0, zero, 400
  MULW s3, s2, s0
  LA s0, array
  ADD s2, s0, s3
  ADDI s0, zero, 4
  ADDI s3, zero, 8
  MULW s4, s0, s3
  ADD s0, s2, s4
  LW s2, 0(s0)
  ADDI s0, zero, 400
  MULW s3, s2, s0
  LA s0, array
  ADD s2, s0, s3
  ADDI s0, zero, 4
  ADDI s3, zero, 7
  MULW s4, s0, s3
  ADD s0, s2, s4
  LW s2, 0(s0)
  ADDI s0, zero, 400
  MULW s3, s2, s0
  LA s0, array
  ADD s2, s0, s3
  ADDI s0, zero, 4
  ADDI s3, zero, 6
  MULW s4, s0, s3
  ADD s0, s2, s4
  LW s2, 0(s0)
  ADDI s0, zero, 400
  MULW s3, s2, s0
  LA s0, array
  ADD s2, s0, s3
  ADDI s0, zero, 4
  ADDI s3, zero, 5
  MULW s4, s0, s3
  ADD s0, s2, s4
  LW s2, 0(s0)
  ADDI s0, zero, 400
  MULW s3, s2, s0
  LA s0, array
  ADD s2, s0, s3
  ADDI s0, zero, 4
  ADDI s3, zero, 4
  MULW s4, s0, s3
  ADD s0, s2, s4
  LW s2, 0(s0)
  ADDI s0, zero, 400
  MULW s3, s2, s0
  LA s0, array
  ADD s2, s0, s3
  ADDI s0, zero, 4
  ADDI s3, zero, 3
  MULW s4, s0, s3
  ADD s0, s2, s4
  LW s2, 0(s0)
  ADDI s0, zero, 400
  MULW s3, s2, s0
  LA s0, array
  ADD s2, s0, s3
  ADDI s0, zero, 4
  ADDI s3, zero, 2
  MULW s4, s0, s3
  ADD s0, s2, s4
  LW s2, 0(s0)
  ADDI s0, zero, 400
  MULW s3, s2, s0
  LA s0, array
  ADD s2, s0, s3
  ADDI s0, zero, 4
  ADDI s3, zero, 1
  MULW s4, s0, s3
  ADD s0, s2, s4
  LW s2, 0(s0)
  ADDI s0, zero, 400
  MULW s3, s2, s0
  LA s0, array
  ADD s2, s0, s3
  ADDI s0, zero, 4
  MULW s3, zero, s0
  ADD s0, s2, s3
  LW s2, 0(s0)
  ADDI s0, zero, 400
  MULW s3, s2, s0
  LA s0, array
  ADD s2, s0, s3
  ADDI s0, zero, 4
  ADDI s3, zero, 56
  MULW s4, s0, s3
  ADD s0, s2, s4
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADD a0, s0, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s10, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb4:
  ADD s3, s2, zero
  LA s4, N
  LW s5, 0(s4)
  SLT s4, s3, s5
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s4, zero, 400
  MULW s5, s1, s4
  LA s4, array
  ADD s6, s4, s5
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s4, s6, s5
  SW s3, 0(s4)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb4
bb6:
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb1
