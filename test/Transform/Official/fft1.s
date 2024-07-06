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
  SD s2, 16(sp)
  SD s3, 24(sp)
  SD s11, 32(sp)
  SD s10, 40(sp)
  SD s9, 48(sp)
  SD s8, 56(sp)
  SD s0, 64(sp)
  SD s5, 72(sp)
  SD s7, 80(sp)
  SD s1, 88(sp)
  SD s6, 96(sp)
  SD s4, 104(sp)
  SD ra, 112(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD t4, a2, zero
  SW t4, 8(sp)
  ADD t4, a3, zero
  SW t4, 0(sp)
  LW t4, 8(sp)
  XORI s4, t4, 1
  SLTIU s5, s4, 1
  BNE s5, zero, bb1
  JAL zero, bb2
bb1:
  ADDI a0, zero, 1
  LD s2, 16(sp)
  LD s3, 24(sp)
  LD s11, 32(sp)
  LD s10, 40(sp)
  LD s9, 48(sp)
  LD s8, 56(sp)
  LD s0, 64(sp)
  LD s5, 72(sp)
  LD s7, 80(sp)
  LD s1, 88(sp)
  LD s6, 96(sp)
  LD s4, 104(sp)
  LD ra, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb2:
  ADD s4, zero, zero
  JAL zero, bb3
bb3:
  ADD s5, s4, zero
  LW t4, 8(sp)
  SLT s6, s5, t4
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb4
  JAL zero, bb5
bb4:
  ADDI s6, zero, 2
  REMW s7, s5, s6
  XOR s6, s7, zero
  SLTIU s7, s6, 1
  BNE s7, zero, bb6
  JAL zero, bb8
bb5:
  ADD a0, s0, zero
  ADD a1, s1, zero
  LA s4, temp
  ADD a2, s4, zero
  LW t4, 8(sp)
  ADD a3, t4, zero
  CALL memmove
  ADD s4, a0, zero
  ADDI s4, zero, 2
  LW t4, 8(sp)
  DIVW s5, t4, s4
  LW t4, 0(sp)
  ADD a0, t4, zero
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL multiply
  ADD s4, a0, zero
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s5, zero
  ADD a3, s4, zero
  CALL fft
  ADD s4, a0, zero
  ADDI s4, zero, 2
  LW t4, 8(sp)
  DIVW s5, t4, s4
  ADDW s4, s1, s5
  ADDI s5, zero, 2
  LW t4, 8(sp)
  DIVW s6, t4, s5
  LW t4, 0(sp)
  ADD a0, t4, zero
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL multiply
  ADD s5, a0, zero
  ADD a0, s0, zero
  ADD a1, s4, zero
  ADD a2, s6, zero
  ADD a3, s5, zero
  CALL fft
  ADD s4, a0, zero
  ADDI s4, zero, 1
  ADD s5, zero, zero
  JAL zero, bb9
bb6:
  ADDI s6, zero, 2
  DIVW s7, s5, s6
  ADDI s6, zero, 4
  MULW s8, s7, s6
  LA s6, temp
  ADD s7, s6, s8
  ADDW s6, s5, s1
  ADDI s8, zero, 4
  MULW s9, s6, s8
  ADD s6, s0, s9
  LW s8, 0(s6)
  SW s8, 0(s7)
  JAL zero, bb7
bb7:
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb3
bb8:
  ADDI s4, zero, 2
  LW t4, 8(sp)
  DIVW s6, t4, s4
  ADDI s4, zero, 2
  DIVW s7, s5, s4
  ADDW s4, s6, s7
  ADDI s6, zero, 4
  MULW s7, s4, s6
  LA s4, temp
  ADD s6, s4, s7
  ADDW s4, s5, s1
  ADDI s7, zero, 4
  MULW s8, s4, s7
  ADD s4, s0, s8
  LW s7, 0(s4)
  SW s7, 0(s6)
  JAL zero, bb7
bb9:
  ADD s6, s5, zero
  ADD s7, s4, zero
  ADDI s8, zero, 2
  LW t4, 8(sp)
  DIVW s9, t4, s8
  SLT s8, s6, s9
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb10
  JAL zero, bb11
bb10:
  ADDW s8, s1, s6
  ADDI s9, zero, 4
  MULW s10, s8, s9
  ADD s8, s0, s10
  LW s9, 0(s8)
  ADDW s8, s1, s6
  ADDI s10, zero, 2
  LW t4, 8(sp)
  DIVW s11, t4, s10
  ADDW s10, s8, s11
  ADDI s8, zero, 4
  MULW s11, s10, s8
  ADD s8, s0, s11
  LW s10, 0(s8)
  ADDW s8, s1, s6
  ADDI s11, zero, 4
  MULW s3, s8, s11
  ADD s8, s0, s3
  ADD a0, s7, zero
  ADD a1, s10, zero
  CALL multiply
  ADD s3, a0, zero
  ADDW s11, s9, s3
  LA s3, mod
  LW s2, 0(s3)
  REMW s3, s11, s2
  SW s3, 0(s8)
  ADDW s2, s1, s6
  ADDI s3, zero, 2
  LW t4, 8(sp)
  DIVW s8, t4, s3
  ADDW s3, s2, s8
  ADDI s2, zero, 4
  MULW s8, s3, s2
  ADD s2, s0, s8
  ADD a0, s7, zero
  ADD a1, s10, zero
  CALL multiply
  ADD s3, a0, zero
  SUBW s8, s9, s3
  LA s3, mod
  LW s9, 0(s3)
  ADDW s3, s8, s9
  LA s8, mod
  LW s9, 0(s8)
  REMW s8, s3, s9
  SW s8, 0(s2)
  ADD a0, s7, zero
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL multiply
  ADD s2, a0, zero
  ADDIW s3, s6, 1
  ADD s4, s2, zero
  ADD s5, s3, zero
  JAL zero, bb9
bb11:
  ADD a0, zero, zero
  LD s2, 16(sp)
  LD s3, 24(sp)
  LD s11, 32(sp)
  LD s10, 40(sp)
  LD s9, 48(sp)
  LD s8, 56(sp)
  LD s0, 64(sp)
  LD s5, 72(sp)
  LD s7, 80(sp)
  LD s1, 88(sp)
  LD s6, 96(sp)
  LD s4, 104(sp)
  LD ra, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
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
  BNE s3, zero, bb13
  JAL zero, bb14
bb13:
  ADDI a0, zero, 1
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb14:
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
  BNE s3, zero, bb15
  JAL zero, bb17
bb15:
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
bb16:
bb17:
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
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s9, 8(sp)
  SD s8, 16(sp)
  SD s0, 24(sp)
  SD s5, 32(sp)
  SD s7, 40(sp)
  SD s1, 48(sp)
  SD s6, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
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
  JAL zero, bb19
bb19:
  LA s2, d
  LW s3, 0(s2)
  ADDW s2, s0, s1
  ADDI s4, zero, 1
  SUBW s5, s2, s4
  SLT s2, s3, s5
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb20
  JAL zero, bb21
bb20:
  LA s2, d
  LW s3, 0(s2)
  ADDI s2, zero, 2
  MULW s4, s3, s2
  LA s2, d
  SW s4, 0(s2)
  JAL zero, bb19
bb21:
  LA s2, d
  LW s3, 0(s2)
  LA s2, mod
  LW s4, 0(s2)
  ADDI s2, zero, 1
  SUBW s5, s4, s2
  LA s2, d
  LW s4, 0(s2)
  DIVW s2, s5, s4
  ADDI a0, zero, 3
  ADD a1, s2, zero
  CALL power
  ADD s2, a0, zero
  LA s4, a
  ADD a0, s4, zero
  ADD a1, zero, zero
  ADD a2, s3, zero
  ADD a3, s2, zero
  CALL fft
  ADD s2, a0, zero
  LA s2, d
  LW s3, 0(s2)
  LA s2, mod
  LW s4, 0(s2)
  ADDI s2, zero, 1
  SUBW s5, s4, s2
  LA s2, d
  LW s4, 0(s2)
  DIVW s2, s5, s4
  ADDI a0, zero, 3
  ADD a1, s2, zero
  CALL power
  ADD s2, a0, zero
  LA s4, b
  ADD a0, s4, zero
  ADD a1, zero, zero
  ADD a2, s3, zero
  ADD a3, s2, zero
  CALL fft
  ADD s2, a0, zero
  ADD s2, zero, zero
  JAL zero, bb22
bb22:
  ADD s3, s2, zero
  LA s4, d
  LW s5, 0(s4)
  SLT s4, s3, s5
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb23
  JAL zero, bb24
bb23:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LA s4, a
  ADD s6, s4, s5
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LA s4, a
  ADD s7, s4, s5
  LW s4, 0(s7)
  ADDI s5, zero, 4
  MULW s7, s3, s5
  LA s5, b
  ADD s8, s5, s7
  LW s5, 0(s8)
  ADD a0, s4, zero
  ADD a1, s5, zero
  CALL multiply
  ADD s4, a0, zero
  SW s4, 0(s6)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb22
bb24:
  LA s2, d
  LW s3, 0(s2)
  LA s2, mod
  LW s4, 0(s2)
  ADDI s2, zero, 1
  SUBW s5, s4, s2
  LA s2, mod
  LW s4, 0(s2)
  ADDI s2, zero, 1
  SUBW s6, s4, s2
  LA s2, d
  LW s4, 0(s2)
  DIVW s2, s6, s4
  SUBW s4, s5, s2
  ADDI a0, zero, 3
  ADD a1, s4, zero
  CALL power
  ADD s2, a0, zero
  LA s4, a
  ADD a0, s4, zero
  ADD a1, zero, zero
  ADD a2, s3, zero
  ADD a3, s2, zero
  CALL fft
  ADD s2, a0, zero
  ADD s2, zero, zero
  JAL zero, bb25
bb25:
  ADD s3, s2, zero
  LA s4, d
  LW s5, 0(s4)
  SLT s4, s3, s5
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb26
  JAL zero, bb27
bb26:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LA s4, a
  ADD s6, s4, s5
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LA s4, a
  ADD s7, s4, s5
  LW s4, 0(s7)
  LA s5, d
  LW s7, 0(s5)
  LA s5, mod
  LW s8, 0(s5)
  ADDI s5, zero, 2
  SUBW s9, s8, s5
  ADD a0, s7, zero
  ADD a1, s9, zero
  CALL power
  ADD s5, a0, zero
  ADD a0, s4, zero
  ADD a1, s5, zero
  CALL multiply
  ADD s4, a0, zero
  SW s4, 0(s6)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb25
bb27:
  ADDI a0, zero, 79
  CALL _sysy_stoptime
  ADDW s2, s0, s1
  ADDI s0, zero, 1
  SUBW s1, s2, s0
  ADD a0, s1, zero
  LA s0, a
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s9, 8(sp)
  LD s8, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s7, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  ADDI sp, sp, 96
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
  JAL zero, bb29
bb29:
  ADD s5, s4, zero
  SLT s6, s5, s3
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb30
  JAL zero, bb31
bb30:
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
  JAL zero, bb29
bb31:
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
  BNE s3, zero, bb33
  JAL zero, bb34
bb33:
  ADD a0, zero, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb34:
  XORI s2, s1, 1
  SLTIU s3, s2, 1
  BNE s3, zero, bb35
  JAL zero, bb36
bb35:
  LA s2, mod
  LW s3, 0(s2)
  REMW s2, s0, s3
  ADD a0, s2, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb36:
  ADDI s2, zero, 2
  DIVW s3, s1, s2
  ADD a0, s0, zero
  ADD a1, s3, zero
  CALL multiply
  ADD s2, a0, zero
  ADDW s3, s2, s2
  LA s2, mod
  LW s4, 0(s2)
  REMW s2, s3, s4
  ADDI s3, zero, 2
  REMW s4, s1, s3
  XORI s1, s4, 1
  SLTIU s3, s1, 1
  BNE s3, zero, bb37
  JAL zero, bb39
bb37:
  ADDW s1, s2, s0
  LA s0, mod
  LW s3, 0(s0)
  REMW s0, s1, s3
  ADD a0, s0, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb38:
bb39:
  ADD a0, s2, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
