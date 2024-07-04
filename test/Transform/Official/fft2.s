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
  ADDI sp, sp, -112
  SD s4, 56(sp)
  SD ra, 64(sp)
  SD s3, 72(sp)
  SD s2, 80(sp)
  SD s1, 88(sp)
  SD s0, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  SW s1, 48(sp)
  SW s2, 40(sp)
  SW s3, 32(sp)
  LW s1, 40(sp)
  XORI s2, s1, 1
  SLTIU s1, s2, 1
  BNE s1, zero, bb1
  JAL zero, bb2
bb1:
  ADDI a0, zero, 1
  LD s4, 56(sp)
  LD ra, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s1, 88(sp)
  LD s0, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb2:
  ADDI s1, zero, 0
  SW s1, 24(sp)
  JAL zero, bb3
bb3:
  LW s1, 24(sp)
  LW s2, 40(sp)
  SLT s3, s1, s2
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb4
  JAL zero, bb5
bb4:
  LW s1, 24(sp)
  ADDI s2, zero, 2
  REMW s3, s1, s2
  XOR s1, s3, zero
  SLTIU s2, s1, 1
  BNE s2, zero, bb6
  JAL zero, bb8
bb5:
  LW s1, 48(sp)
  LW s2, 40(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  LA s1, temp
  ADD a2, s1, zero
  ADD a3, s2, zero
  CALL memmove
  ADD s1, a0, zero
  LW s1, 48(sp)
  LW s2, 40(sp)
  ADDI s3, zero, 2
  DIVW s4, s2, s3
  LW s2, 32(sp)
  LW s3, 32(sp)
  ADD a0, s2, zero
  ADD a1, s3, zero
  CALL multiply
  ADD s2, a0, zero
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s4, zero
  ADD a3, s2, zero
  CALL fft
  ADD s1, a0, zero
  LW s1, 48(sp)
  LW s2, 40(sp)
  ADDI s3, zero, 2
  DIVW s4, s2, s3
  ADDW s2, s1, s4
  LW s1, 40(sp)
  ADDI s3, zero, 2
  DIVW s4, s1, s3
  LW s1, 32(sp)
  LW s3, 32(sp)
  ADD a0, s1, zero
  ADD a1, s3, zero
  CALL multiply
  ADD s1, a0, zero
  ADD a0, s0, zero
  ADD a1, s2, zero
  ADD a2, s4, zero
  ADD a3, s1, zero
  CALL fft
  ADD s1, a0, zero
  SW zero, 24(sp)
  ADDI s1, zero, 1
  SW s1, 16(sp)
  JAL zero, bb9
bb6:
  LW s1, 24(sp)
  ADDI s2, zero, 2
  DIVW s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s3, s1
  LA s1, temp
  ADD s3, s1, s2
  LW s1, 24(sp)
  LW s2, 48(sp)
  ADDW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s0, s2
  LW s2, 0(s1)
  SW s2, 0(s3)
  JAL zero, bb7
bb7:
  LW s1, 24(sp)
  ADDIW s2, s1, 1
  SW s2, 24(sp)
  JAL zero, bb3
bb8:
  LW s1, 40(sp)
  ADDI s2, zero, 2
  DIVW s3, s1, s2
  LW s1, 24(sp)
  ADDI s2, zero, 2
  DIVW s4, s1, s2
  ADDW s1, s3, s4
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, temp
  ADD s2, s1, s3
  LW s1, 24(sp)
  LW s3, 48(sp)
  ADDW s4, s1, s3
  ADDI s1, zero, 4
  MULW s3, s4, s1
  ADD s1, s0, s3
  LW s3, 0(s1)
  SW s3, 0(s2)
  JAL zero, bb7
bb9:
  LW s1, 24(sp)
  LW s2, 40(sp)
  ADDI s3, zero, 2
  DIVW s4, s2, s3
  SLT s2, s1, s4
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb10
  JAL zero, bb11
bb10:
  LW s1, 48(sp)
  LW s2, 24(sp)
  ADDW s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADD s1, s0, s2
  LW s2, 0(s1)
  SW s2, 8(sp)
  LW s1, 48(sp)
  LW s2, 24(sp)
  ADDW s3, s1, s2
  LW s1, 40(sp)
  ADDI s2, zero, 2
  DIVW s4, s1, s2
  ADDW s1, s3, s4
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(s1)
  SW s2, 0(sp)
  LW s1, 48(sp)
  LW s2, 24(sp)
  ADDW s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADD s1, s0, s2
  LW s2, 8(sp)
  LW s3, 16(sp)
  LW s4, 0(sp)
  ADD a0, s3, zero
  ADD a1, s4, zero
  CALL multiply
  ADD s3, a0, zero
  ADDW s4, s2, s3
  LA s2, mod
  LW s3, 0(s2)
  REMW s2, s4, s3
  SW s2, 0(s1)
  LW s1, 48(sp)
  LW s2, 24(sp)
  ADDW s3, s1, s2
  LW s1, 40(sp)
  ADDI s2, zero, 2
  DIVW s4, s1, s2
  ADDW s1, s3, s4
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 8(sp)
  LW s3, 16(sp)
  LW s4, 0(sp)
  ADD a0, s3, zero
  ADD a1, s4, zero
  CALL multiply
  ADD s3, a0, zero
  SUBW s4, s2, s3
  LA s2, mod
  LW s3, 0(s2)
  ADDW s2, s4, s3
  LA s3, mod
  LW s4, 0(s3)
  REMW s3, s2, s4
  SW s3, 0(s1)
  LW s1, 16(sp)
  LW s2, 32(sp)
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL multiply
  ADD s1, a0, zero
  SW s1, 16(sp)
  LW s1, 24(sp)
  ADDIW s2, s1, 1
  SW s2, 24(sp)
  JAL zero, bb9
bb11:
  ADD a0, zero, zero
  LD s4, 56(sp)
  LD ra, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s1, 88(sp)
  LD s0, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
power:
  ADDI sp, sp, -64
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD ra, 40(sp)
  SD s1, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 16(sp)
  SW s1, 8(sp)
  LW s0, 8(sp)
  XOR s1, s0, zero
  SLTIU s0, s1, 1
  BNE s0, zero, bb13
  JAL zero, bb14
bb13:
  ADDI a0, zero, 1
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD ra, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb14:
  LW s0, 16(sp)
  LW s1, 8(sp)
  ADDI s2, zero, 2
  DIVW s3, s1, s2
  ADD a0, s0, zero
  ADD a1, s3, zero
  CALL power
  ADD s0, a0, zero
  SW s0, 0(sp)
  LW s0, 0(sp)
  LW s1, 0(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL multiply
  ADD s0, a0, zero
  SW s0, 0(sp)
  LW s0, 8(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XORI s0, s2, 1
  SLTIU s1, s0, 1
  BNE s1, zero, bb15
  JAL zero, bb17
bb15:
  LW s0, 0(sp)
  LW s1, 16(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL multiply
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD ra, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb16:
bb17:
  LW s0, 0(sp)
  ADD a0, s0, zero
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD ra, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -80
  SD ra, 24(sp)
  SD s4, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s5, 64(sp)
  SD s0, 72(sp)
  LA s0, a
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  SW s0, 16(sp)
  LA s0, b
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  SW s0, 8(sp)
  ADDI a0, zero, 60
  CALL _sysy_starttime
  LA s0, d
  ADDI s1, zero, 1
  SW s1, 0(s0)
  JAL zero, bb19
bb19:
  LA s0, d
  LW s1, 0(s0)
  LW s0, 16(sp)
  LW s2, 8(sp)
  ADDW s3, s0, s2
  ADDI s0, zero, 1
  SUBW s2, s3, s0
  SLT s0, s1, s2
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb20
  JAL zero, bb21
bb20:
  LA s0, d
  LW s1, 0(s0)
  ADDI s0, zero, 2
  MULW s2, s1, s0
  LA s0, d
  SW s2, 0(s0)
  JAL zero, bb19
bb21:
  LA s0, d
  LW s1, 0(s0)
  LA s0, mod
  LW s2, 0(s0)
  ADDI s0, zero, 1
  SUBW s3, s2, s0
  LA s0, d
  LW s2, 0(s0)
  DIVW s0, s3, s2
  ADDI a0, zero, 3
  ADD a1, s0, zero
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
  LA s0, mod
  LW s2, 0(s0)
  ADDI s0, zero, 1
  SUBW s3, s2, s0
  LA s0, d
  LW s2, 0(s0)
  DIVW s0, s3, s2
  ADDI a0, zero, 3
  ADD a1, s0, zero
  CALL power
  ADD s0, a0, zero
  LA s2, b
  ADD a0, s2, zero
  ADD a1, zero, zero
  ADD a2, s1, zero
  ADD a3, s0, zero
  CALL fft
  ADD s0, a0, zero
  SW zero, 0(sp)
  JAL zero, bb22
bb22:
  LW s0, 0(sp)
  LA s1, d
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb23
  JAL zero, bb24
bb23:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, a
  ADD s1, s0, s2
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, a
  ADD s2, s0, s3
  LW s0, 0(s2)
  LW s2, 0(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s2, b
  ADD s3, s2, s4
  LW s2, 0(s3)
  ADD a0, s0, zero
  ADD a1, s2, zero
  CALL multiply
  ADD s0, a0, zero
  SW s0, 0(s1)
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb22
bb24:
  LA s0, d
  LW s1, 0(s0)
  LA s0, mod
  LW s2, 0(s0)
  ADDI s0, zero, 1
  SUBW s3, s2, s0
  LA s0, mod
  LW s2, 0(s0)
  ADDI s0, zero, 1
  SUBW s4, s2, s0
  LA s0, d
  LW s2, 0(s0)
  DIVW s0, s4, s2
  SUBW s2, s3, s0
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
  SW zero, 0(sp)
  JAL zero, bb25
bb25:
  LW s0, 0(sp)
  LA s1, d
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb26
  JAL zero, bb27
bb26:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, a
  ADD s1, s0, s2
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, a
  ADD s2, s0, s3
  LW s0, 0(s2)
  LA s2, d
  LW s3, 0(s2)
  LA s2, mod
  LW s4, 0(s2)
  ADDI s2, zero, 2
  SUBW s5, s4, s2
  ADD a0, s3, zero
  ADD a1, s5, zero
  CALL power
  ADD s2, a0, zero
  ADD a0, s0, zero
  ADD a1, s2, zero
  CALL multiply
  ADD s0, a0, zero
  SW s0, 0(s1)
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb25
bb27:
  ADDI a0, zero, 79
  CALL _sysy_starttime
  LW s0, 16(sp)
  LW s1, 8(sp)
  ADDW s2, s0, s1
  ADDI s0, zero, 1
  SUBW s1, s2, s0
  ADD a0, s1, zero
  LA s0, a
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 24(sp)
  LD s4, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s5, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
memmove:
  ADDI sp, sp, -80
  SD ra, 24(sp)
  SD s4, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s5, 64(sp)
  SD s0, 72(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  SW s1, 16(sp)
  SW s3, 8(sp)
  SW zero, 0(sp)
  JAL zero, bb29
bb29:
  LW s1, 0(sp)
  LW s3, 8(sp)
  SLT s4, s1, s3
  XOR s1, s4, zero
  SLTU s3, zero, s1
  BNE s3, zero, bb30
  JAL zero, bb31
bb30:
  LW s1, 16(sp)
  LW s3, 0(sp)
  ADDW s4, s1, s3
  ADDI s1, zero, 4
  MULW s3, s4, s1
  ADD s1, s0, s3
  LW s3, 0(sp)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s2, s5
  LW s4, 0(s3)
  SW s4, 0(s1)
  LW s1, 0(sp)
  ADDIW s3, s1, 1
  SW s3, 0(sp)
  JAL zero, bb29
bb31:
  LW s0, 0(sp)
  ADD a0, s0, zero
  LD ra, 24(sp)
  LD s4, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s5, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
multiply:
  ADDI sp, sp, -64
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD ra, 40(sp)
  SD s1, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 16(sp)
  SW s1, 8(sp)
  LW s0, 8(sp)
  XOR s1, s0, zero
  SLTIU s0, s1, 1
  BNE s0, zero, bb33
  JAL zero, bb34
bb33:
  ADD a0, zero, zero
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD ra, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb34:
  LW s0, 8(sp)
  XORI s1, s0, 1
  SLTIU s0, s1, 1
  BNE s0, zero, bb35
  JAL zero, bb36
bb35:
  LW s0, 16(sp)
  LA s1, mod
  LW s2, 0(s1)
  REMW s1, s0, s2
  ADD a0, s1, zero
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD ra, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb36:
  LW s0, 16(sp)
  LW s1, 8(sp)
  ADDI s2, zero, 2
  DIVW s3, s1, s2
  ADD a0, s0, zero
  ADD a1, s3, zero
  CALL multiply
  ADD s0, a0, zero
  SW s0, 0(sp)
  LW s0, 0(sp)
  LW s1, 0(sp)
  ADDW s2, s0, s1
  LA s0, mod
  LW s1, 0(s0)
  REMW s0, s2, s1
  SW s0, 0(sp)
  LW s0, 8(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XORI s0, s2, 1
  SLTIU s1, s0, 1
  BNE s1, zero, bb37
  JAL zero, bb39
bb37:
  LW s0, 0(sp)
  LW s1, 16(sp)
  ADDW s2, s0, s1
  LA s0, mod
  LW s1, 0(s0)
  REMW s0, s2, s1
  ADD a0, s0, zero
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD ra, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb38:
bb39:
  LW s0, 0(sp)
  ADD a0, s0, zero
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD ra, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
