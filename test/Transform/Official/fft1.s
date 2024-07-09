.global fft
.global power
.global main
.global memmove
.global multiply
.section .bss
c:
.space 8388608
b:
.space 8388608
temp:
.space 8388608

a:
.space 8388608


.section .data



maxlen:
.word 0x00200000

d:
.word 0x00000000
mod:
.word 0x3b800001
.section .text
fft:
  ADDI sp, sp, -128
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s4, 40(sp)
  SD s11, 48(sp)
  SD s0, 56(sp)
  SD s10, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s3, 88(sp)
  SD s9, 96(sp)
  SD s5, 104(sp)
  SD s6, 112(sp)
  SD ra, 120(sp)
  ADD t4, a0, zero
  SD t4, 16(sp)
  ADD t4, a1, zero
  SW t4, 8(sp)
  ADD s3, a2, zero
  ADD t4, a3, zero
  SW t4, 0(sp)
  XORI s5, s3, 1
  SLTIU s6, s5, 1
  BNE s6, zero, bb1
  JAL zero, bb2
bb1:
  ADDI a0, zero, 1
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s4, 40(sp)
  LD s11, 48(sp)
  LD s0, 56(sp)
  LD s10, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s3, 88(sp)
  LD s9, 96(sp)
  LD s5, 104(sp)
  LD s6, 112(sp)
  LD ra, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb2:
  ADD s5, zero, zero
  JAL zero, bb3
bb3:
  ADD s6, s5, zero
  SLT s7, s6, s3
  BNE s7, zero, bb4
  JAL zero, bb5
bb4:
  ADDI s7, zero, 2
  REMW s8, s6, s7
  XOR s7, s8, zero
  SLTIU s8, s7, 1
  BNE s8, zero, bb6
  JAL zero, bb8
bb5:
  ADD s5, zero, zero
  JAL zero, bb12
bb6:
  ADDI s7, zero, 2
  DIVW s8, s6, s7
  ADDI s7, zero, 4
  MULW s9, s8, s7
  LA s7, temp
  ADD s8, s7, s9
  LW t4, 8(sp)
  ADDW s7, s6, t4
  ADDI s9, zero, 4
  MULW s10, s7, s9
  LD t4, 16(sp)
  ADD s7, t4, s10
  LW s9, 0(s7)
  SW s9, 0(s8)
  JAL zero, bb7
bb7:
  ADDIW s7, s6, 1
  ADD s5, s7, zero
  JAL zero, bb3
bb8:
  ADDI s5, zero, 2
  DIVW s7, s3, s5
  ADDI s5, zero, 2
  DIVW s8, s6, s5
  ADDW s5, s7, s8
  ADDI s7, zero, 4
  MULW s8, s5, s7
  LA s5, temp
  ADD s7, s5, s8
  LW t4, 8(sp)
  ADDW s5, s6, t4
  ADDI s8, zero, 4
  MULW s9, s5, s8
  LD t4, 16(sp)
  ADD s5, t4, s9
  LW s8, 0(s5)
  SW s8, 0(s7)
  JAL zero, bb7
bb9:
  ADD s6, s5, zero
  ADD s7, s3, zero
  SLT s8, s6, s0
  BNE s8, zero, bb10
  JAL zero, bb11
bb10:
  LW t4, 8(sp)
  ADDW s8, t4, s6
  ADDI s9, zero, 4
  MULW s10, s8, s9
  LD t4, 16(sp)
  ADD s9, t4, s10
  LW s10, 0(s9)
  ADDW s11, s8, s0
  ADDI s8, zero, 4
  MULW s4, s11, s8
  LD t4, 16(sp)
  ADD s8, t4, s4
  LW s4, 0(s8)
  ADD a0, s7, zero
  ADD a1, s4, zero
  CALL multiply
  ADD s4, a0, zero
  ADDW s11, s10, s4
  LUI s2, 243712
  ADDIW s2, s2, 1
  REMW s1, s11, s2
  SW s1, 0(s9)
  SUBW s1, s10, s4
  LUI s2, 243712
  ADDIW s2, s2, 1
  ADDW s4, s1, s2
  LUI s1, 243712
  ADDIW s1, s1, 1
  REMW s2, s4, s1
  SW s2, 0(s8)
  ADD a0, s7, zero
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL multiply
  ADD s1, a0, zero
  ADDIW s2, s6, 1
  ADD s3, s1, zero
  ADD s5, s2, zero
  JAL zero, bb9
bb11:
  ADD a0, zero, zero
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s4, 40(sp)
  LD s11, 48(sp)
  LD s0, 56(sp)
  LD s10, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s3, 88(sp)
  LD s9, 96(sp)
  LD s5, 104(sp)
  LD s6, 112(sp)
  LD ra, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb12:
  ADD s6, s5, zero
  SLT s7, s6, s3
  BNE s7, zero, bb13
  JAL zero, bb14
bb13:
  LW t4, 8(sp)
  ADDW s7, t4, s6
  ADDI s8, zero, 4
  MULW s9, s7, s8
  LD t4, 16(sp)
  ADD s7, t4, s9
  ADDI s8, zero, 4
  MULW s9, s6, s8
  LA s8, temp
  ADD s10, s8, s9
  LW s8, 0(s10)
  SW s8, 0(s7)
  ADDIW s7, s6, 1
  ADD s5, s7, zero
  JAL zero, bb12
bb14:
  ADDI s5, zero, 2
  DIVW s0, s3, s5
  LW t4, 0(sp)
  ADD a0, t4, zero
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL multiply
  ADD s3, a0, zero
  LD t4, 16(sp)
  ADD a0, t4, zero
  LW t4, 8(sp)
  ADD a1, t4, zero
  ADD a2, s0, zero
  ADD a3, s3, zero
  CALL fft
  ADD s5, a0, zero
  LW t4, 8(sp)
  ADDW s5, t4, s0
  LD t4, 16(sp)
  ADD a0, t4, zero
  ADD a1, s5, zero
  ADD a2, s0, zero
  ADD a3, s3, zero
  CALL fft
  ADD s3, a0, zero
  ADDI s3, zero, 1
  ADD s5, zero, zero
  JAL zero, bb9
power:
  ADDI sp, sp, -48
  SD s4, 0(sp)
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  XOR s2, s1, zero
  SLTIU s3, s2, 1
  BNE s3, zero, bb16
  JAL zero, bb17
bb16:
  ADDI a0, zero, 1
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb17:
  ADDI s2, zero, 2
  DIVW s3, s1, s2
  ADD a0, s0, zero
  ADD a1, s3, zero
  CALL power
  ADD s2, a0, zero
  ADD a0, s2, zero
  ADD a1, s2, zero
  CALL multiply
  ADD s2, a0, zero
  ADDI s3, zero, 2
  REMW s4, s1, s3
  XORI s1, s4, 1
  SLTIU s3, s1, 1
  BNE s3, zero, bb18
  JAL zero, bb19
bb18:
  ADD a0, s2, zero
  ADD a1, s0, zero
  CALL multiply
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb19:
  ADD a0, s2, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s7, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  LA s0, a
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  LA s1, b
  ADD a0, s1, zero
  CALL getarray
  ADD s1, a0, zero
  ADDI a0, zero, 60
  CALL _sysy_starttime
  LA s2, d
  ADDI s3, zero, 1
  SW s3, 0(s2)
  ADDW s2, s0, s1
  JAL zero, bb21
bb21:
  LA s0, d
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s3, s2, s0
  SLT s0, s1, s3
  BNE s0, zero, bb22
  JAL zero, bb23
bb22:
  LA s0, d
  LW s1, 0(s0)
  ADDI s0, zero, 2
  MULW s4, s1, s0
  LA s0, d
  SW s4, 0(s0)
  JAL zero, bb21
bb23:
  LA s0, d
  LW s1, 0(s0)
  LA s0, d
  LW s2, 0(s0)
  LUI s0, 243712
  ADDIW s0, s0, 0
  DIVW s4, s0, s2
  ADDI a0, zero, 3
  ADD a1, s4, zero
  CALL power
  ADD s0, a0, zero
  LA s2, a
  ADD a0, s2, zero
  ADD a1, zero, zero
  ADD a2, s1, zero
  ADD a3, s0, zero
  CALL fft
  ADD s0, a0, zero
  LA s0, d
  LW s1, 0(s0)
  LA s0, d
  LW s2, 0(s0)
  LUI s0, 243712
  ADDIW s0, s0, 0
  DIVW s4, s0, s2
  ADDI a0, zero, 3
  ADD a1, s4, zero
  CALL power
  ADD s0, a0, zero
  LA s2, b
  ADD a0, s2, zero
  ADD a1, zero, zero
  ADD a2, s1, zero
  ADD a3, s0, zero
  CALL fft
  ADD s0, a0, zero
  ADD s0, zero, zero
  JAL zero, bb24
bb24:
  ADD s1, s0, zero
  LA s2, d
  LW s4, 0(s2)
  SLT s2, s1, s4
  BNE s2, zero, bb25
  JAL zero, bb26
bb25:
  ADDI s2, zero, 4
  MULW s4, s1, s2
  LA s2, a
  ADD s5, s2, s4
  LW s2, 0(s5)
  LA s6, b
  ADD s7, s6, s4
  LW s4, 0(s7)
  ADD a0, s2, zero
  ADD a1, s4, zero
  CALL multiply
  ADD s2, a0, zero
  SW s2, 0(s5)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb24
bb26:
  LA s0, d
  LW s1, 0(s0)
  LA s0, d
  LW s2, 0(s0)
  LUI s0, 243712
  ADDIW s0, s0, 0
  DIVW s4, s0, s2
  LUI s0, 243712
  ADDIW s0, s0, 0
  SUBW s2, s0, s4
  ADDI a0, zero, 3
  ADD a1, s2, zero
  CALL power
  ADD s0, a0, zero
  LA s2, a
  ADD a0, s2, zero
  ADD a1, zero, zero
  ADD a2, s1, zero
  ADD a3, s0, zero
  CALL fft
  ADD s0, a0, zero
  ADD s0, zero, zero
  JAL zero, bb27
bb27:
  ADD s1, s0, zero
  LA s2, d
  LW s4, 0(s2)
  SLT s2, s1, s4
  BNE s2, zero, bb28
  JAL zero, bb29
bb28:
  ADDI s2, zero, 4
  MULW s4, s1, s2
  LA s2, a
  ADD s5, s2, s4
  LW s2, 0(s5)
  LA s4, d
  LW s6, 0(s4)
  ADD a0, s6, zero
  LUI s4, 243712
  ADDIW s4, s4, -1
  ADD a1, zero, s4
  CALL power
  ADD s4, a0, zero
  ADD a0, s2, zero
  ADD a1, s4, zero
  CALL multiply
  ADD s2, a0, zero
  SW s2, 0(s5)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb27
bb29:
  ADDI a0, zero, 79
  CALL _sysy_stoptime
  ADD a0, s3, zero
  LA s0, a
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
memmove:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s8, 8(sp)
  SD s0, 16(sp)
  SD s5, 24(sp)
  SD s7, 32(sp)
  SD s1, 40(sp)
  SD s6, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, zero, zero
  JAL zero, bb31
bb31:
  ADD s5, s4, zero
  SLT s6, s5, s3
  BNE s6, zero, bb32
  JAL zero, bb33
bb32:
  ADDW s6, s1, s5
  ADDI s7, zero, 4
  MULW s8, s6, s7
  ADD s6, s0, s8
  ADDI s7, zero, 4
  MULW s8, s5, s7
  ADD s7, s2, s8
  LW s8, 0(s7)
  SW s8, 0(s6)
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb31
bb33:
  ADD a0, s5, zero
  LD ra, 0(sp)
  LD s8, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s7, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
multiply:
  ADDI sp, sp, -48
  SD s4, 0(sp)
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  XOR s2, s1, zero
  SLTIU s3, s2, 1
  BNE s3, zero, bb35
  JAL zero, bb36
bb35:
  ADD a0, zero, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb36:
  XORI s2, s1, 1
  SLTIU s3, s2, 1
  BNE s3, zero, bb37
  JAL zero, bb38
bb37:
  LUI s2, 243712
  ADDIW s2, s2, 1
  REMW s3, s0, s2
  ADD a0, s3, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb38:
  ADDI s2, zero, 2
  DIVW s3, s1, s2
  ADD a0, s0, zero
  ADD a1, s3, zero
  CALL multiply
  ADD s2, a0, zero
  ADDW s3, s2, s2
  LUI s2, 243712
  ADDIW s2, s2, 1
  REMW s4, s3, s2
  ADDI s2, zero, 2
  REMW s3, s1, s2
  XORI s1, s3, 1
  SLTIU s2, s1, 1
  BNE s2, zero, bb39
  JAL zero, bb40
bb39:
  ADDW s1, s4, s0
  LUI s0, 243712
  ADDIW s0, s0, 1
  REMW s2, s1, s0
  ADD a0, s2, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb40:
  ADD a0, s4, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
