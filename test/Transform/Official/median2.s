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
  ADDI sp, sp, -272
  SD ra, 168(sp)
  SD s9, 176(sp)
  SD s3, 184(sp)
  SD s1, 192(sp)
  SD s2, 200(sp)
  SD s0, 208(sp)
  SD s7, 216(sp)
  SD s10, 224(sp)
  SD s8, 232(sp)
  SD s4, 240(sp)
  SD s5, 248(sp)
  SD s6, 256(sp)
  SD s11, 264(sp)
  ADD t4, a0, zero
  SD t4, 56(sp)
  ADD t4, a1, zero
  SW t4, 48(sp)
  ADD t4, a2, zero
  SW t4, 40(sp)
  ADD t4, a3, zero
  SW t4, 32(sp)
  ADDI s4, zero, 4
  LW t4, 48(sp)
  MULW s5, t4, s4
  LD t3, 56(sp)
  ADD t4, t3, s5
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
  SW t4, 96(sp)
  ADD t4, s10, zero
  SW t4, 88(sp)
  JAL zero, bb4
bb3:
  ADD s0, s2, zero
  ADD s2, s1, zero
  LW t4, 16(sp)
  LD t3, 24(sp)
  SW t4, 0(t3)
  LD t4, 24(sp)
  LW s1, 0(t4)
  ADDI t2, zero, 4
  MULW s10, s0, t2
  LD t4, 56(sp)
  ADD t2, t4, s10
  LW s10, 0(t2)
  LD t4, 24(sp)
  SW s10, 0(t4)
  SW s1, 0(t2)
  JAL zero, bb28
bb4:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 8(sp)
  LW t3, 72(sp)
  SLT t2, t4, t3
  BNE t2, zero, bb5
  JAL zero, bb35
bb5:
  ADDI t2, zero, 1
  LW t3, 72(sp)
  SUBW t4, t3, t2
  SW t4, 80(sp)
  ADDI t2, zero, 4
  LW t4, 80(sp)
  MULW a5, t4, t2
  LD t4, 56(sp)
  ADD t2, t4, a5
  LW a5, 0(t2)
  LW t4, 16(sp)
  SLT t2, a5, t4
  BNE t2, zero, bb7
  JAL zero, bb8
bb6:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  JAL zero, bb9
bb7:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  JAL zero, bb6
bb8:
  LW t4, 0(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 96(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  JAL zero, bb4
bb9:
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t4, 144(sp)
  LW t3, 112(sp)
  SLT s5, t4, t3
  BNE s5, zero, bb10
  JAL zero, bb36
bb10:
  LW t4, 144(sp)
  ADDIW s5, t4, 1
  ADDI s4, zero, 4
  MULW s3, s5, s4
  LD t4, 56(sp)
  ADD s4, t4, s3
  LW s3, 0(s4)
  LW t4, 16(sp)
  SLT s4, s3, t4
  XORI s3, s4, 1
  BNE s3, zero, bb12
  JAL zero, bb13
bb11:
  ADD s4, s3, zero
  LW t4, 112(sp)
  XOR s2, s4, t4
  SLTIU s1, s2, 1
  BNE s1, zero, bb14
  JAL zero, bb16
bb12:
  ADD s3, s5, zero
  JAL zero, bb11
bb13:
  ADDI s0, zero, 1
  LW t4, 104(sp)
  SUBW s1, t4, s0
  ADD t4, s1, zero
  SW t4, 152(sp)
  ADD t4, s5, zero
  SW t4, 160(sp)
  JAL zero, bb9
bb14:
  LW t4, 104(sp)
  ADD s1, t4, zero
  ADD s2, s4, zero
  JAL zero, bb3
bb15:
  LW t4, 104(sp)
  ADD s7, t4, zero
  LW t4, 112(sp)
  ADD s8, t4, zero
  ADD s6, s4, zero
  JAL zero, bb1
bb16:
  ADDI s0, zero, 4
  MULW s1, s4, s0
  LD t4, 56(sp)
  ADD s0, t4, s1
  LW s1, 0(s0)
  ADDI s2, zero, 4
  LW t4, 112(sp)
  MULW s9, t4, s2
  LD t4, 56(sp)
  ADD s2, t4, s9
  LW s9, 0(s2)
  SW s9, 0(s0)
  SW s1, 0(s2)
  JAL zero, bb21
bb17:
  LD t4, 56(sp)
  ADD a0, t4, zero
  LW t4, 48(sp)
  ADD a1, t4, zero
  ADD a2, s0, zero
  LW t4, 32(sp)
  ADD a3, t4, zero
  CALL median
  ADD s1, a0, zero
  ADD a0, s1, zero
  LD ra, 168(sp)
  LD s9, 176(sp)
  LD s3, 184(sp)
  LD s1, 192(sp)
  LD s2, 200(sp)
  LD s0, 208(sp)
  LD s7, 216(sp)
  LD s10, 224(sp)
  LD s8, 232(sp)
  LD s4, 240(sp)
  LD s5, 248(sp)
  LD s6, 256(sp)
  LD s11, 264(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb18:
  LW t4, 32(sp)
  SLT s1, s0, t4
  BNE s1, zero, bb19
  JAL zero, bb20
bb19:
  ADDIW s1, s0, 1
  LD t4, 56(sp)
  ADD a0, t4, zero
  ADD a1, s1, zero
  LW t4, 40(sp)
  ADD a2, t4, zero
  LW t4, 32(sp)
  ADD a3, t4, zero
  CALL median
  ADD s1, a0, zero
  ADD a0, s1, zero
  LD ra, 168(sp)
  LD s9, 176(sp)
  LD s3, 184(sp)
  LD s1, 192(sp)
  LD s2, 200(sp)
  LD s0, 208(sp)
  LD s7, 216(sp)
  LD s10, 224(sp)
  LD s8, 232(sp)
  LD s4, 240(sp)
  LD s5, 248(sp)
  LD s6, 256(sp)
  LD s11, 264(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb20:
  ADD a0, s2, zero
  LD ra, 168(sp)
  LD s9, 176(sp)
  LD s3, 184(sp)
  LD s1, 192(sp)
  LD s2, 200(sp)
  LD s0, 208(sp)
  LD s7, 216(sp)
  LD s10, 224(sp)
  LD s8, 232(sp)
  LD s4, 240(sp)
  LD s5, 248(sp)
  LD s6, 256(sp)
  LD s11, 264(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb21:
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb22
bb22:
  ADD s2, s1, zero
  ADD s9, s0, zero
  SLT s10, s2, s4
  BNE s10, zero, bb25
  JAL zero, bb26
bb23:
  ADDIW s10, s2, 1
  ADDW t0, s9, s4
  ADDW t1, t0, s10
  ADD s0, t1, zero
  ADD s1, s10, zero
  JAL zero, bb22
bb24:
  JAL zero, bb15
bb25:
  LW t4, 112(sp)
  SLT s10, s2, t4
  ADD s11, s10, zero
  JAL zero, bb27
bb26:
  ADD s11, zero, zero
  JAL zero, bb27
bb27:
  ADD s10, s11, zero
  BNE s10, zero, bb23
  JAL zero, bb24
bb28:
  ADD s1, zero, zero
  ADD s10, zero, zero
  JAL zero, bb29
bb29:
  ADD t4, s10, zero
  SW t4, 120(sp)
  ADD t4, s1, zero
  SW t4, 128(sp)
  LW t4, 120(sp)
  LW t3, 48(sp)
  SLT s11, t4, t3
  BNE s11, zero, bb32
  JAL zero, bb33
bb30:
  LW t4, 120(sp)
  ADDIW s11, t4, 1
  LW t4, 128(sp)
  LW t3, 48(sp)
  ADDW s9, t4, t3
  ADDW a5, s9, s11
  ADD s1, a5, zero
  ADD s10, s11, zero
  JAL zero, bb29
bb31:
  LW t4, 32(sp)
  SLT s1, t4, s0
  BNE s1, zero, bb17
  JAL zero, bb18
bb32:
  LW t4, 120(sp)
  SLT s11, t4, s0
  ADD t4, s11, zero
  SB t4, 136(sp)
  JAL zero, bb34
bb33:
  ADD t4, zero, zero
  SB t4, 136(sp)
  JAL zero, bb34
bb34:
  LB t4, 136(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb30
  JAL zero, bb31
bb35:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  JAL zero, bb6
bb36:
  LW t4, 144(sp)
  ADD s3, t4, zero
  JAL zero, bb11
swap:
  ADDI sp, sp, -96
  SD s7, 0(sp)
  SD s9, 8(sp)
  SD s0, 16(sp)
  SD s5, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s8, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD ra, 80(sp)
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
  JAL zero, bb39
bb38:
  ADD s3, s0, zero
  ADD a0, s3, zero
  LD s7, 0(sp)
  LD s9, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s8, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD ra, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb39:
  ADD s0, zero, zero
  ADD s3, zero, zero
  JAL zero, bb40
bb40:
  ADD s4, s3, zero
  ADD s5, s0, zero
  SLT s6, s4, s1
  BNE s6, zero, bb43
  JAL zero, bb44
bb41:
  ADDIW s6, s4, 1
  ADDW s8, s5, s1
  ADDW s9, s8, s6
  ADD s0, s9, zero
  ADD s3, s6, zero
  JAL zero, bb40
bb42:
  ADD s0, s5, zero
  JAL zero, bb38
bb43:
  SLT s6, s4, s2
  ADD s7, s6, zero
  JAL zero, bb45
bb44:
  ADD s7, zero, zero
  JAL zero, bb45
bb45:
  ADD s6, s7, zero
  BNE s6, zero, bb41
  JAL zero, bb42
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
  JAL zero, bb48
bb48:
  ADD s4, s3, zero
  ADD s5, s2, zero
  SLT s6, s4, s0
  BNE s6, zero, bb51
  JAL zero, bb52
bb49:
  ADDIW s6, s4, 1
  ADDW s8, s5, s0
  ADDW s9, s8, s6
  ADD s2, s9, zero
  ADD s3, s6, zero
  JAL zero, bb48
bb50:
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
bb51:
  SLT s6, s4, s1
  ADD s7, s6, zero
  JAL zero, bb53
bb52:
  ADD s7, zero, zero
  JAL zero, bb53
bb53:
  ADD s6, s7, zero
  BNE s6, zero, bb49
  JAL zero, bb50
