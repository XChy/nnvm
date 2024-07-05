.global median
.global swap
.global main
.global meanless_calculation
.section .bss
a:
.space 40000000

.section .data

n:
.word 0x00000000
.section .text
median:
  ADDI sp, sp, -160
  SD s4, 56(sp)
  SD s0, 64(sp)
  SD s3, 72(sp)
  SD s1, 80(sp)
  SD ra, 88(sp)
  SD s11, 96(sp)
  SD s2, 104(sp)
  SD s7, 112(sp)
  SD s10, 120(sp)
  SD s5, 128(sp)
  SD s8, 136(sp)
  SD s6, 144(sp)
  SD s9, 152(sp)
  ADD s2, a0, zero
  ADD s5, a1, zero
  ADD s6, a2, zero
  ADD s7, a3, zero
  ADDI s8, zero, 4
  MULW s9, s5, s8
  ADD s8, s2, s9
  LW t4, 0(s8)
  SW t4, 48(sp)
  ADDIW s8, s6, 1
  ADD s10, zero, zero
  ADD s11, s8, zero
  ADD s8, s5, zero
  JAL zero, bb1
bb1:
  ADDI ra, zero, 1
  XORI t0, ra, 1
  SLTIU ra, t0, 1
  XOR t0, ra, zero
  SLTU ra, zero, t0
  BNE ra, zero, bb2
  JAL zero, bb21
bb2:
  ADD t4, s10, zero
  SW t4, 0(sp)
  ADD t4, s11, zero
  SW t4, 32(sp)
  JAL zero, bb4
bb3:
  ADDI a6, zero, 4
  MULW a7, s5, a6
  ADD a6, s2, a7
  LW t4, 48(sp)
  SW t4, 0(a6)
  ADD a0, s2, zero
  ADD a1, s5, zero
  ADD a2, s1, zero
  CALL swap
  ADD s9, a0, zero
  SLT s9, s7, s1
  BNE s9, zero, bb17
  JAL zero, bb18
bb4:
  LW t4, 32(sp)
  SLT t1, s8, t4
  XOR t2, t1, zero
  SLTU t1, zero, t2
  BNE t1, zero, bb5
  JAL zero, bb22
bb5:
  ADDI t1, zero, 1
  LW t3, 32(sp)
  SUBW t4, t3, t1
  SW t4, 40(sp)
  ADDI t1, zero, 4
  LW t4, 40(sp)
  MULW a4, t4, t1
  ADD t1, s2, a4
  LW a4, 0(t1)
  LW t4, 48(sp)
  SLT t1, a4, t4
  BNE t1, zero, bb7
  JAL zero, bb8
bb6:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  ADD t4, s8, zero
  SW t4, 24(sp)
  JAL zero, bb9
bb7:
  LW t4, 40(sp)
  ADD s3, t4, zero
  JAL zero, bb6
bb8:
  LW t4, 0(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 0(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  JAL zero, bb4
bb9:
  LW t4, 24(sp)
  SLT a5, t4, s3
  XOR a6, a5, zero
  SLTU a5, zero, a6
  BNE a5, zero, bb10
  JAL zero, bb23
bb10:
  LW t3, 24(sp)
  ADDIW t4, t3, 1
  SW t4, 16(sp)
  ADDI a6, zero, 4
  LW t4, 16(sp)
  MULW a7, t4, a6
  ADD a6, s2, a7
  LW a7, 0(a6)
  LW t4, 48(sp)
  SLT a6, a7, t4
  XORI a7, a6, 1
  BNE a7, zero, bb12
  JAL zero, bb13
bb11:
  XOR a6, s0, s3
  SLTIU a7, a6, 1
  BNE a7, zero, bb14
  JAL zero, bb16
bb12:
  LW t4, 16(sp)
  ADD s0, t4, zero
  JAL zero, bb11
bb13:
  ADDI s9, zero, 1
  LW t4, 8(sp)
  SUBW s11, t4, s9
  ADD t4, s11, zero
  SW t4, 8(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  JAL zero, bb9
bb14:
  LW t4, 8(sp)
  ADD s4, t4, zero
  ADD s1, s0, zero
  JAL zero, bb3
bb15:
  LW t4, 8(sp)
  ADD s10, t4, zero
  ADD s11, s3, zero
  ADD s8, s0, zero
  JAL zero, bb1
bb16:
  ADD a0, s2, zero
  ADD a1, s0, zero
  ADD a2, s3, zero
  CALL swap
  ADD s9, a0, zero
  JAL zero, bb15
bb17:
  ADD a0, s2, zero
  ADD a1, s5, zero
  ADD a2, s1, zero
  ADD a3, s7, zero
  CALL median
  ADD s9, a0, zero
  ADD a0, s9, zero
  LD s4, 56(sp)
  LD s0, 64(sp)
  LD s3, 72(sp)
  LD s1, 80(sp)
  LD ra, 88(sp)
  LD s11, 96(sp)
  LD s2, 104(sp)
  LD s7, 112(sp)
  LD s10, 120(sp)
  LD s5, 128(sp)
  LD s8, 136(sp)
  LD s6, 144(sp)
  LD s9, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb18:
  SLT s9, s1, s7
  BNE s9, zero, bb19
  JAL zero, bb20
bb19:
  ADDIW s9, s1, 1
  ADD a0, s2, zero
  ADD a1, s9, zero
  ADD a2, s6, zero
  ADD a3, s7, zero
  CALL median
  ADD s9, a0, zero
  ADD a0, s9, zero
  LD s4, 56(sp)
  LD s0, 64(sp)
  LD s3, 72(sp)
  LD s1, 80(sp)
  LD ra, 88(sp)
  LD s11, 96(sp)
  LD s2, 104(sp)
  LD s7, 112(sp)
  LD s10, 120(sp)
  LD s5, 128(sp)
  LD s8, 136(sp)
  LD s6, 144(sp)
  LD s9, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb20:
  ADD a0, s4, zero
  LD s4, 56(sp)
  LD s0, 64(sp)
  LD s3, 72(sp)
  LD s1, 80(sp)
  LD ra, 88(sp)
  LD s11, 96(sp)
  LD s2, 104(sp)
  LD s7, 112(sp)
  LD s10, 120(sp)
  LD s5, 128(sp)
  LD s8, 136(sp)
  LD s6, 144(sp)
  LD s9, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb21:
  ADD s4, s10, zero
  ADD s1, s8, zero
  JAL zero, bb3
bb22:
  LW t4, 32(sp)
  ADD s3, t4, zero
  JAL zero, bb6
bb23:
  LW t4, 24(sp)
  ADD s0, t4, zero
  JAL zero, bb11
swap:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s3, s0, s4
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s1, s3
  ADD s3, s0, s5
  ADDI s5, zero, 4
  MULW s6, s2, s5
  ADD s5, s0, s6
  LW s6, 0(s5)
  SW s6, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s2, s3
  ADD s3, s0, s5
  SW s4, 0(s3)
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL meanless_calculation
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  LA s0, a
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  LA s1, n
  SW s0, 0(s1)
  ADDI a0, zero, 59
  CALL _sysy_starttime
  LA s0, n
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  LA s0, n
  LW s1, 0(s0)
  ADDI s0, zero, 2
  DIVW s3, s1, s0
  LA s0, a
  ADD a0, s0, zero
  ADD a1, zero, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  CALL median
  ADD s0, a0, zero
  ADDI a0, zero, 61
  CALL _sysy_stoptime
  LA s0, n
  LW s1, 0(s0)
  ADD a0, s1, zero
  LA s0, a
  ADD a1, s0, zero
  CALL putarray
  LA s0, n
  LW s1, 0(s0)
  ADDI s0, zero, 2
  DIVW s2, s1, s0
  ADDI s0, zero, 4
  MULW s1, s2, s0
  LA s0, a
  ADD s2, s0, s1
  LW s0, 0(s2)
  ADDI s1, zero, 256
  REMW s2, s0, s1
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
meanless_calculation:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s7, 48(sp)
  SD s5, 56(sp)
  SD s0, 64(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  JAL zero, bb27
bb27:
  SLT s4, s3, s0
  BNE s4, zero, bb30
  JAL zero, bb31
bb28:
  ADDIW s4, s3, 1
  ADDW s6, s2, s0
  ADDW s7, s6, s4
  ADD s2, s7, zero
  ADD s3, s4, zero
  JAL zero, bb27
bb29:
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s7, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb30:
  SLT s4, s3, s1
  ADD s5, s4, zero
  JAL zero, bb32
bb31:
  ADD s5, zero, zero
  JAL zero, bb32
bb32:
  XOR s4, s5, zero
  SLTU s6, zero, s4
  BNE s6, zero, bb28
  JAL zero, bb29
