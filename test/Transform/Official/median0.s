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
  ADDI sp, sp, -224
  SD ra, 120(sp)
  SD s9, 128(sp)
  SD s2, 136(sp)
  SD s3, 144(sp)
  SD s1, 152(sp)
  SD s11, 160(sp)
  SD s0, 168(sp)
  SD s5, 176(sp)
  SD s7, 184(sp)
  SD s10, 192(sp)
  SD s8, 200(sp)
  SD s4, 208(sp)
  SD s6, 216(sp)
  ADD s0, a0, zero
  ADD t4, a1, zero
  SW t4, 48(sp)
  ADD t4, a2, zero
  SW t4, 40(sp)
  ADD t4, a3, zero
  SW t4, 32(sp)
  ADDI s4, zero, 4
  LW t4, 48(sp)
  MULW s5, t4, s4
  ADD t4, s0, s5
  SD t4, 24(sp)
  LD t3, 24(sp)
  LW t4, 0(t3)
  SW t4, 16(sp)
  LW t4, 40(sp)
  ADDIW s6, t4, 1
  ADD s7, zero, zero
  ADD s8, s6, zero
  LW t4, 48(sp)
  ADD s6, t4, zero
  JAL zero, bb1
bb1:
  ADD t4, s6, zero
  SW t4, 8(sp)
  ADD s10, s8, zero
  ADD s11, s7, zero
  JAL zero, bb2
bb2:
  ADD t4, s11, zero
  SW t4, 64(sp)
  ADD s11, s10, zero
  JAL zero, bb4
bb3:
  ADD s1, s3, zero
  ADD s3, s2, zero
  LW t4, 16(sp)
  LD t3, 24(sp)
  SW t4, 0(t3)
  ADD a0, s0, zero
  LW t4, 48(sp)
  ADD a1, t4, zero
  ADD a2, s1, zero
  CALL swap
  ADD s2, a0, zero
  LW t4, 32(sp)
  SLT s2, t4, s1
  BNE s2, zero, bb17
  JAL zero, bb18
bb4:
  ADD s10, s11, zero
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 8(sp)
  SLT t1, t4, s10
  BNE t1, zero, bb5
  JAL zero, bb21
bb5:
  ADDI t1, zero, 1
  SUBW t4, s10, t1
  SW t4, 88(sp)
  ADDI t1, zero, 4
  LW t4, 88(sp)
  MULW a4, t4, t1
  ADD t1, s0, a4
  LW a4, 0(t1)
  LW t4, 16(sp)
  SLT t1, a4, t4
  BNE t1, zero, bb7
  JAL zero, bb8
bb6:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  JAL zero, bb9
bb7:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  JAL zero, bb6
bb8:
  LW t4, 0(sp)
  ADDIW s1, t4, 1
  ADD t4, s1, zero
  SW t4, 64(sp)
  LW t4, 88(sp)
  ADD s11, t4, zero
  JAL zero, bb4
bb9:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t4, 112(sp)
  LW t3, 80(sp)
  SLT s9, t4, t3
  BNE s9, zero, bb10
  JAL zero, bb22
bb10:
  LW t4, 112(sp)
  ADDIW s9, t4, 1
  ADDI s5, zero, 4
  MULW s4, s9, s5
  ADD s5, s0, s4
  LW s4, 0(s5)
  LW t4, 16(sp)
  SLT s5, s4, t4
  XORI s4, s5, 1
  BNE s4, zero, bb12
  JAL zero, bb13
bb11:
  ADD s5, s4, zero
  LW t4, 80(sp)
  XOR s3, s5, t4
  SLTIU s2, s3, 1
  BNE s2, zero, bb14
  JAL zero, bb16
bb12:
  ADD s4, s9, zero
  JAL zero, bb11
bb13:
  ADDI s1, zero, 1
  LW t4, 56(sp)
  SUBW s2, t4, s1
  ADD t4, s2, zero
  SW t4, 96(sp)
  ADD t4, s9, zero
  SW t4, 104(sp)
  JAL zero, bb9
bb14:
  LW t4, 56(sp)
  ADD s2, t4, zero
  ADD s3, s5, zero
  JAL zero, bb3
bb15:
  LW t4, 56(sp)
  ADD s7, t4, zero
  LW t4, 80(sp)
  ADD s8, t4, zero
  ADD s6, s5, zero
  JAL zero, bb1
bb16:
  ADD a0, s0, zero
  ADD a1, s5, zero
  LW t4, 80(sp)
  ADD a2, t4, zero
  CALL swap
  ADD s1, a0, zero
  JAL zero, bb15
bb17:
  ADD a0, s0, zero
  LW t4, 48(sp)
  ADD a1, t4, zero
  ADD a2, s1, zero
  LW t4, 32(sp)
  ADD a3, t4, zero
  CALL median
  ADD s2, a0, zero
  ADD a0, s2, zero
  LD ra, 120(sp)
  LD s9, 128(sp)
  LD s2, 136(sp)
  LD s3, 144(sp)
  LD s1, 152(sp)
  LD s11, 160(sp)
  LD s0, 168(sp)
  LD s5, 176(sp)
  LD s7, 184(sp)
  LD s10, 192(sp)
  LD s8, 200(sp)
  LD s4, 208(sp)
  LD s6, 216(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb18:
  LW t4, 32(sp)
  SLT s2, s1, t4
  BNE s2, zero, bb19
  JAL zero, bb20
bb19:
  ADDIW s2, s1, 1
  ADD a0, s0, zero
  ADD a1, s2, zero
  LW t4, 40(sp)
  ADD a2, t4, zero
  LW t4, 32(sp)
  ADD a3, t4, zero
  CALL median
  ADD s1, a0, zero
  ADD a0, s1, zero
  LD ra, 120(sp)
  LD s9, 128(sp)
  LD s2, 136(sp)
  LD s3, 144(sp)
  LD s1, 152(sp)
  LD s11, 160(sp)
  LD s0, 168(sp)
  LD s5, 176(sp)
  LD s7, 184(sp)
  LD s10, 192(sp)
  LD s8, 200(sp)
  LD s4, 208(sp)
  LD s6, 216(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb20:
  ADD a0, s3, zero
  LD ra, 120(sp)
  LD s9, 128(sp)
  LD s2, 136(sp)
  LD s3, 144(sp)
  LD s1, 152(sp)
  LD s11, 160(sp)
  LD s0, 168(sp)
  LD s5, 176(sp)
  LD s7, 184(sp)
  LD s10, 192(sp)
  LD s8, 200(sp)
  LD s4, 208(sp)
  LD s6, 216(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb21:
  ADD t4, s10, zero
  SW t4, 72(sp)
  JAL zero, bb6
bb22:
  LW t4, 112(sp)
  ADD s4, t4, zero
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
  ADDI s5, zero, 4
  MULW s6, s2, s5
  ADD s5, s0, s6
  LW s0, 0(s5)
  SW s0, 0(s3)
  SW s4, 0(s5)
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
  ADDI sp, sp, -96
  SD s7, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s1, 24(sp)
  SD s6, 32(sp)
  SD s8, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s9, 72(sp)
  SD ra, 80(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  JAL zero, bb26
bb26:
  ADD s4, s3, zero
  ADD s5, s2, zero
  SLT s6, s4, s0
  BNE s6, zero, bb29
  JAL zero, bb30
bb27:
  ADDIW s6, s4, 1
  ADDW s8, s5, s0
  ADDW s9, s8, s6
  ADD s2, s9, zero
  ADD s3, s6, zero
  JAL zero, bb26
bb28:
  ADD a0, s5, zero
  LD s7, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s1, 24(sp)
  LD s6, 32(sp)
  LD s8, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s9, 72(sp)
  LD ra, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb29:
  SLT s6, s4, s1
  ADD s7, s6, zero
  JAL zero, bb31
bb30:
  ADD s7, zero, zero
  JAL zero, bb31
bb31:
  ADD s6, s7, zero
  BNE s6, zero, bb27
  JAL zero, bb28
