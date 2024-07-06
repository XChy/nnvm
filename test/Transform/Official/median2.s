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
  ADDI sp, sp, -240
  SD s1, 136(sp)
  SD s2, 144(sp)
  SD s3, 152(sp)
  SD s10, 160(sp)
  SD s0, 168(sp)
  SD s8, 176(sp)
  SD s7, 184(sp)
  SD s9, 192(sp)
  SD s4, 200(sp)
  SD s5, 208(sp)
  SD s6, 216(sp)
  SD s11, 224(sp)
  SD ra, 232(sp)
  ADD t4, a0, zero
  SD t4, 32(sp)
  ADD t4, a1, zero
  SW t4, 24(sp)
  ADD t4, a2, zero
  SW t4, 16(sp)
  ADD t4, a3, zero
  SW t4, 8(sp)
  ADDI s4, zero, 4
  LW t4, 24(sp)
  MULW s5, t4, s4
  LD t4, 32(sp)
  ADD s4, t4, s5
  LW t4, 0(s4)
  SW t4, 0(sp)
  LW t4, 16(sp)
  ADDIW s4, t4, 1
  ADD s6, zero, zero
  ADD s7, s4, zero
  LW t4, 24(sp)
  ADD s4, t4, zero
  JAL zero, bb1
bb1:
  ADD t4, s4, zero
  SW t4, 40(sp)
  ADD s9, s7, zero
  ADD t4, s6, zero
  SW t4, 64(sp)
  ADDI s11, zero, 1
  XORI ra, s11, 1
  SLTIU s11, ra, 1
  XOR ra, s11, zero
  SLTU s11, zero, ra
  BNE s11, zero, bb2
  JAL zero, bb21
bb2:
  LW t4, 64(sp)
  ADD s11, t4, zero
  ADD t4, s9, zero
  SW t4, 96(sp)
  JAL zero, bb4
bb3:
  LW t4, 48(sp)
  ADD s8, t4, zero
  LW t4, 56(sp)
  ADD s0, t4, zero
  ADDI s10, zero, 4
  LW t4, 24(sp)
  MULW t0, t4, s10
  LD t4, 32(sp)
  ADD s10, t4, t0
  LW t4, 0(sp)
  SW t4, 0(s10)
  LD t4, 32(sp)
  ADD a0, t4, zero
  LW t4, 24(sp)
  ADD a1, t4, zero
  ADD a2, s8, zero
  CALL swap
  ADD s10, a0, zero
  LW t4, 8(sp)
  SLT s10, t4, s8
  BNE s10, zero, bb17
  JAL zero, bb18
bb4:
  LW t4, 96(sp)
  ADD s9, t4, zero
  ADD t4, s11, zero
  SW t4, 72(sp)
  LW t4, 40(sp)
  SLT t1, t4, s9
  XOR t2, t1, zero
  SLTU t1, zero, t2
  BNE t1, zero, bb5
  JAL zero, bb22
bb5:
  ADDI t1, zero, 1
  SUBW t4, s9, t1
  SW t4, 88(sp)
  ADDI t1, zero, 4
  LW t4, 88(sp)
  MULW a4, t4, t1
  LD t4, 32(sp)
  ADD t1, t4, a4
  LW a4, 0(t1)
  LW t4, 0(sp)
  SLT t1, a4, t4
  BNE t1, zero, bb7
  JAL zero, bb8
bb6:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  JAL zero, bb9
bb7:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  JAL zero, bb6
bb8:
  LW t4, 72(sp)
  ADDIW s0, t4, 1
  ADD s11, s0, zero
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  JAL zero, bb4
bb9:
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t4, 112(sp)
  ADD s5, t4, zero
  LW t4, 128(sp)
  LW t3, 80(sp)
  SLT s3, t4, t3
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb10
  JAL zero, bb23
bb10:
  LW t4, 128(sp)
  ADDIW s2, t4, 1
  ADDI s3, zero, 4
  MULW s1, s2, s3
  LD t4, 32(sp)
  ADD s3, t4, s1
  LW s1, 0(s3)
  LW t4, 0(sp)
  SLT s3, s1, t4
  XORI s1, s3, 1
  BNE s1, zero, bb12
  JAL zero, bb13
bb11:
  ADD s3, s1, zero
  LW t4, 80(sp)
  XOR s0, s3, t4
  SLTIU s8, s0, 1
  BNE s8, zero, bb14
  JAL zero, bb16
bb12:
  ADD s1, s2, zero
  JAL zero, bb11
bb13:
  ADDI s0, zero, 1
  SUBW s3, s5, s0
  ADD t4, s3, zero
  SW t4, 112(sp)
  ADD t4, s2, zero
  SW t4, 120(sp)
  JAL zero, bb9
bb14:
  ADD t4, s5, zero
  SW t4, 56(sp)
  ADD t4, s3, zero
  SW t4, 48(sp)
  JAL zero, bb3
bb15:
  ADD s6, s5, zero
  LW t4, 80(sp)
  ADD s7, t4, zero
  ADD s4, s3, zero
  JAL zero, bb1
bb16:
  LD t4, 32(sp)
  ADD a0, t4, zero
  ADD a1, s3, zero
  LW t4, 80(sp)
  ADD a2, t4, zero
  CALL swap
  ADD s0, a0, zero
  JAL zero, bb15
bb17:
  LD t4, 32(sp)
  ADD a0, t4, zero
  LW t4, 24(sp)
  ADD a1, t4, zero
  ADD a2, s8, zero
  LW t4, 8(sp)
  ADD a3, t4, zero
  CALL median
  ADD s10, a0, zero
  ADD a0, s10, zero
  LD s1, 136(sp)
  LD s2, 144(sp)
  LD s3, 152(sp)
  LD s10, 160(sp)
  LD s0, 168(sp)
  LD s8, 176(sp)
  LD s7, 184(sp)
  LD s9, 192(sp)
  LD s4, 200(sp)
  LD s5, 208(sp)
  LD s6, 216(sp)
  LD s11, 224(sp)
  LD ra, 232(sp)
  ADDI sp, sp, 240
  JALR zero, 0(ra)
bb18:
  LW t4, 8(sp)
  SLT s10, s8, t4
  BNE s10, zero, bb19
  JAL zero, bb20
bb19:
  ADDIW s10, s8, 1
  LD t4, 32(sp)
  ADD a0, t4, zero
  ADD a1, s10, zero
  LW t4, 16(sp)
  ADD a2, t4, zero
  LW t4, 8(sp)
  ADD a3, t4, zero
  CALL median
  ADD s8, a0, zero
  ADD a0, s8, zero
  LD s1, 136(sp)
  LD s2, 144(sp)
  LD s3, 152(sp)
  LD s10, 160(sp)
  LD s0, 168(sp)
  LD s8, 176(sp)
  LD s7, 184(sp)
  LD s9, 192(sp)
  LD s4, 200(sp)
  LD s5, 208(sp)
  LD s6, 216(sp)
  LD s11, 224(sp)
  LD ra, 232(sp)
  ADDI sp, sp, 240
  JALR zero, 0(ra)
bb20:
  ADD a0, s0, zero
  LD s1, 136(sp)
  LD s2, 144(sp)
  LD s3, 152(sp)
  LD s10, 160(sp)
  LD s0, 168(sp)
  LD s8, 176(sp)
  LD s7, 184(sp)
  LD s9, 192(sp)
  LD s4, 200(sp)
  LD s5, 208(sp)
  LD s6, 216(sp)
  LD s11, 224(sp)
  LD ra, 232(sp)
  ADDI sp, sp, 240
  JALR zero, 0(ra)
bb21:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb3
bb22:
  ADD t4, s9, zero
  SW t4, 104(sp)
  JAL zero, bb6
bb23:
  LW t4, 128(sp)
  ADD s1, t4, zero
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
  JAL zero, bb27
bb27:
  ADD s4, s3, zero
  ADD s5, s2, zero
  SLT s6, s4, s0
  BNE s6, zero, bb30
  JAL zero, bb31
bb28:
  ADDIW s6, s4, 1
  ADDW s8, s5, s0
  ADDW s9, s8, s6
  ADD s2, s9, zero
  ADD s3, s6, zero
  JAL zero, bb27
bb29:
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
bb30:
  SLT s6, s4, s1
  ADD s7, s6, zero
  JAL zero, bb32
bb31:
  ADD s7, zero, zero
  JAL zero, bb32
bb32:
  ADD s6, s7, zero
  XOR s8, s6, zero
  SLTU s6, zero, s8
  BNE s6, zero, bb28
  JAL zero, bb29
