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
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s4, 32(sp)
  SD s11, 40(sp)
  SD s10, 48(sp)
  SD s9, 56(sp)
  SD s0, 64(sp)
  SD s5, 72(sp)
  SD s7, 80(sp)
  SD s8, 88(sp)
  SD s3, 96(sp)
  SD s6, 104(sp)
  SD ra, 112(sp)
  ADD s0, a0, zero
  ADD t4, a1, zero
  SW t4, 4(sp)
  ADD s3, a2, zero
  ADD t4, a3, zero
  SW t4, 0(sp)
  XORI s5, s3, 1
  SLTIU s6, s5, 1
  BNE s6, zero, bb14
  # implict jump to bb1
bb1:
  ADD s5, zero, zero
  # implict jump to bb2
bb2:
  ADD s6, s5, zero
  SLT s7, s6, s3
  BNE s7, zero, bb10
  # implict jump to bb3
bb3:
  ADD s5, zero, zero
  # implict jump to bb4
bb4:
  ADD s6, s5, zero
  SLT s7, s6, s3
  BNE s7, zero, bb9
  # implict jump to bb5
bb5:
  ADDI s5, zero, 2
  DIVW t4, s3, s5
  SW t4, 8(sp)
  LW t4, 0(sp)
  ADD a0, t4, zero
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL multiply
  ADD s3, a0, zero
  ADD a0, s0, zero
  LW t4, 4(sp)
  ADD a1, t4, zero
  LW t4, 8(sp)
  ADD a2, t4, zero
  ADD a3, s3, zero
  CALL fft
  ADD s5, a0, zero
  LW t4, 4(sp)
  LW t3, 8(sp)
  ADDW s5, t4, t3
  ADD a0, s0, zero
  ADD a1, s5, zero
  LW t4, 8(sp)
  ADD a2, t4, zero
  ADD a3, s3, zero
  CALL fft
  ADD s3, a0, zero
  ADDI s3, zero, 1
  ADD s5, zero, zero
  # implict jump to bb6
bb6:
  ADD s6, s5, zero
  ADD s7, s3, zero
  LW t4, 8(sp)
  SLT s8, s6, t4
  BNE s8, zero, bb8
  # implict jump to bb7
bb7:
  ADD a0, zero, zero
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s4, 32(sp)
  LD s11, 40(sp)
  LD s10, 48(sp)
  LD s9, 56(sp)
  LD s0, 64(sp)
  LD s5, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s3, 96(sp)
  LD s6, 104(sp)
  LD ra, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb8:
  LW t4, 4(sp)
  ADDW s8, t4, s6
  SLLIW s9, s8, 2
  ADD s10, s0, s9
  LW s9, 0(s10)
  LW t4, 8(sp)
  ADDW s11, s8, t4
  SLLIW s8, s11, 2
  ADD s11, s0, s8
  LW s8, 0(s11)
  ADD a0, s7, zero
  ADD a1, s8, zero
  CALL multiply
  ADD s8, a0, zero
  ADDW s4, s9, s8
  LUI s2, 243712
  ADDIW s2, s2, 1
  REMW s1, s4, s2
  SW s1, 0(s10)
  SUBW s1, s9, s8
  LUI s2, 243712
  ADDIW s2, s2, 1
  ADDW s4, s1, s2
  LUI s1, 243712
  ADDIW s1, s1, 1
  REMW s2, s4, s1
  SW s2, 0(s11)
  ADD a0, s7, zero
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL multiply
  ADD s1, a0, zero
  ADDIW s2, s6, 1
  ADD s3, s1, zero
  ADD s5, s2, zero
  JAL zero, bb6
bb9:
  LW t4, 4(sp)
  ADDW s7, t4, s6
  SLLIW s8, s7, 2
  ADD s7, s0, s8
  SLLIW s8, s6, 2
  LA s9, temp
  ADD s10, s9, s8
  LW s8, 0(s10)
  SW s8, 0(s7)
  ADDIW s7, s6, 1
  ADD s5, s7, zero
  JAL zero, bb4
bb10:
  ADDI s7, zero, 2
  REMW s8, s6, s7
  XOR s7, s8, zero
  SLTIU s8, s7, 1
  BNE s8, zero, bb13
  # implict jump to bb11
bb11:
  ADDI s5, zero, 2
  DIVW s7, s3, s5
  ADDI s5, zero, 2
  DIVW s8, s6, s5
  ADDW s5, s7, s8
  SLLIW s7, s5, 2
  LA s5, temp
  ADD s8, s5, s7
  LW t4, 4(sp)
  ADDW s5, s6, t4
  SLLIW s7, s5, 2
  ADD s5, s0, s7
  LW s7, 0(s5)
  SW s7, 0(s8)
  # implict jump to bb12
bb12:
  ADDIW s7, s6, 1
  ADD s5, s7, zero
  JAL zero, bb2
bb13:
  ADDI s7, zero, 2
  DIVW s8, s6, s7
  SLLIW s7, s8, 2
  LA s8, temp
  ADD s9, s8, s7
  LW t4, 4(sp)
  ADDW s7, s6, t4
  SLLIW s8, s7, 2
  ADD s7, s0, s8
  LW s8, 0(s7)
  SW s8, 0(s9)
  JAL zero, bb12
bb14:
  ADDI a0, zero, 1
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s4, 32(sp)
  LD s11, 40(sp)
  LD s10, 48(sp)
  LD s9, 56(sp)
  LD s0, 64(sp)
  LD s5, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s3, 96(sp)
  LD s6, 104(sp)
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
  BNE s3, zero, bb19
  # implict jump to bb16
bb16:
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
  # implict jump to bb17
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
  ADDI a0, zero, 1
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
  # implict jump to bb21
bb21:
  LA s0, d
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s3, s2, s0
  SLT s0, s1, s3
  BNE s0, zero, bb29
  # implict jump to bb22
bb22:
  LA s0, d
  LW s1, 0(s0)
  LUI s0, 243712
  ADDIW s0, s0, 0
  DIVW s2, s0, s1
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
  LA s0, d
  LW s1, 0(s0)
  LUI s0, 243712
  ADDIW s0, s0, 0
  DIVW s2, s0, s1
  ADDI a0, zero, 3
  ADD a1, s2, zero
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
  # implict jump to bb23
bb23:
  ADD s1, s0, zero
  LA s2, d
  LW s4, 0(s2)
  SLT s2, s1, s4
  BNE s2, zero, bb28
  # implict jump to bb24
bb24:
  LA s0, d
  LW s1, 0(s0)
  LUI s0, 243712
  ADDIW s0, s0, 0
  DIVW s2, s0, s1
  LUI s0, 243712
  ADDIW s0, s0, 0
  SUBW s4, s0, s2
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
  ADD s0, zero, zero
  # implict jump to bb25
bb25:
  ADD s1, s0, zero
  LA s2, d
  LW s4, 0(s2)
  SLT s2, s1, s4
  BNE s2, zero, bb27
  # implict jump to bb26
bb26:
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
bb27:
  SLLIW s2, s1, 2
  LA s4, a
  ADD s5, s4, s2
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
  JAL zero, bb25
bb28:
  SLLIW s2, s1, 2
  LA s4, a
  ADD s5, s4, s2
  LW s4, 0(s5)
  LA s6, b
  ADD s7, s6, s2
  LW s2, 0(s7)
  ADD a0, s4, zero
  ADD a1, s2, zero
  CALL multiply
  ADD s2, a0, zero
  SW s2, 0(s5)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb23
bb29:
  LA s0, d
  LW s1, 0(s0)
  SLLIW s0, s1, 1
  LA s1, d
  SW s0, 0(s1)
  JAL zero, bb21
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
  # implict jump to bb31
bb31:
  ADD s5, s4, zero
  SLT s6, s5, s3
  BNE s6, zero, bb33
  # implict jump to bb32
bb32:
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
bb33:
  ADDW s6, s1, s5
  SLLIW s7, s6, 2
  ADD s6, s0, s7
  SLLIW s7, s5, 2
  ADD s8, s2, s7
  LW s7, 0(s8)
  SW s7, 0(s6)
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb31
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
  BNE s3, zero, bb40
  # implict jump to bb35
bb35:
  XORI s2, s1, 1
  SLTIU s3, s2, 1
  BNE s3, zero, bb39
  # implict jump to bb36
bb36:
  ADDI s2, zero, 2
  DIVW s3, s1, s2
  ADD a0, s0, zero
  ADD a1, s3, zero
  CALL multiply
  ADD s2, a0, zero
  SLLIW s3, s2, 1
  LUI s2, 243712
  ADDIW s2, s2, 1
  REMW s4, s3, s2
  ADDI s2, zero, 2
  REMW s3, s1, s2
  XORI s1, s3, 1
  SLTIU s2, s1, 1
  BNE s2, zero, bb38
  # implict jump to bb37
bb37:
  ADD a0, s4, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb38:
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
bb39:
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
bb40:
  ADD a0, zero, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
