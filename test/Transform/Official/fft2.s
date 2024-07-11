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
  ADDI sp, sp, -144
  SD ra, 24(sp)
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s5, 72(sp)
  SD s6, 80(sp)
  SD s7, 88(sp)
  SD s8, 96(sp)
  SD s9, 104(sp)
  SD s10, 120(sp)
  SD s11, 128(sp)
  ADD t4, a0, zero
  SD t4, 112(sp)
  ADD t4, a1, zero
  SW t4, 8(sp)
  ADD t4, a2, zero
  SW t4, 4(sp)
  ADD t4, a3, zero
  SW t4, 0(sp)
  LW t4, 4(sp)
  XORI s5, t4, 1
  SLTIU s5, s5, 1
  BNE s5, zero, bb14
  # implict jump to bb1
bb1:
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb2
bb2:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t4, 16(sp)
  LW t3, 4(sp)
  SLT s7, t4, t3
  BNE s7, zero, bb10
  # implict jump to bb3
bb3:
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb4
bb4:
  LW t4, 20(sp)
  ADD s8, t4, zero
  LW t4, 4(sp)
  SLT s9, s8, t4
  BNE s9, zero, bb9
  # implict jump to bb5
bb5:
  ADDI s9, zero, 2
  LW t4, 4(sp)
  DIVW s0, t4, s9
  LW t4, 0(sp)
  ADD a0, t4, zero
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL multiply
  ADD s9, a0, zero
  LD t4, 112(sp)
  ADD a0, t4, zero
  LW t4, 8(sp)
  ADD a1, t4, zero
  ADD a2, s0, zero
  ADD a3, s9, zero
  CALL fft
  LW t4, 8(sp)
  ADDW s10, t4, s0
  LD t4, 112(sp)
  ADD a0, t4, zero
  ADD a1, s10, zero
  ADD a2, s0, zero
  ADD a3, s9, zero
  CALL fft
  ADDI s9, zero, 1
  ADD s10, zero, zero
  # implict jump to bb6
bb6:
  ADD s11, s10, zero
  ADD s4, s9, zero
  SLT s3, s11, s0
  BNE s3, zero, bb8
  # implict jump to bb7
bb7:
  ADD a0, zero, zero
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD s10, 120(sp)
  LD s11, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb8:
  LW t4, 8(sp)
  ADDW s3, t4, s11
  SLLIW s2, s3, 2
  LD t4, 112(sp)
  ADD s2, t4, s2
  LW s1, 0(s2)
  ADDW s3, s3, s0
  SLLIW s3, s3, 2
  LD t4, 112(sp)
  ADD s3, t4, s3
  LW s5, 0(s3)
  ADD a0, s4, zero
  ADD a1, s5, zero
  CALL multiply
  ADD s5, a0, zero
  ADDW s6, s1, s5
  LUI s7, 243712
  ADDIW s7, s7, 1
  REMW s6, s6, s7
  SW s6, 0(s2)
  SUBW s1, s1, s5
  LUI s2, 243712
  ADDIW s2, s2, 1
  ADDW s1, s1, s2
  LUI s2, 243712
  ADDIW s2, s2, 1
  REMW s1, s1, s2
  SW s1, 0(s3)
  ADD a0, s4, zero
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL multiply
  ADD s1, a0, zero
  ADDIW s2, s11, 1
  ADD s9, s1, zero
  ADD s10, s2, zero
  JAL zero, bb6
bb9:
  LW t4, 8(sp)
  ADDW s0, t4, s8
  SLLIW s0, s0, 2
  LD t4, 112(sp)
  ADD s0, t4, s0
  SLLIW s1, s8, 2
  LA s2, temp
  ADD s1, s2, s1
  LW s1, 0(s1)
  SW s1, 0(s0)
  ADDIW s0, s8, 1
  ADD t4, s0, zero
  SW t4, 20(sp)
  JAL zero, bb4
bb10:
  ADDI s0, zero, 2
  LW t4, 16(sp)
  REMW s0, t4, s0
  XOR s0, s0, zero
  SLTIU s0, s0, 1
  BNE s0, zero, bb13
  # implict jump to bb11
bb11:
  ADDI s0, zero, 2
  LW t4, 4(sp)
  DIVW s0, t4, s0
  ADDI s1, zero, 2
  LW t4, 16(sp)
  DIVW s1, t4, s1
  ADDW s0, s0, s1
  SLLIW s0, s0, 2
  LA s1, temp
  ADD s0, s1, s0
  LW t4, 16(sp)
  LW t3, 8(sp)
  ADDW s1, t4, t3
  SLLIW s1, s1, 2
  LD t4, 112(sp)
  ADD s1, t4, s1
  LW s1, 0(s1)
  SW s1, 0(s0)
  # implict jump to bb12
bb12:
  LW t4, 16(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 12(sp)
  JAL zero, bb2
bb13:
  ADDI s0, zero, 2
  LW t4, 16(sp)
  DIVW s0, t4, s0
  SLLIW s0, s0, 2
  LA s1, temp
  ADD s0, s1, s0
  LW t4, 16(sp)
  LW t3, 8(sp)
  ADDW s1, t4, t3
  SLLIW s1, s1, 2
  LD t4, 112(sp)
  ADD s1, t4, s1
  LW s1, 0(s1)
  SW s1, 0(s0)
  JAL zero, bb12
bb14:
  ADDI a0, zero, 1
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD s10, 120(sp)
  LD s11, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
power:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  XOR s2, s1, zero
  SLTIU s2, s2, 1
  BNE s2, zero, bb19
  # implict jump to bb16
bb16:
  ADDI s2, zero, 2
  DIVW s2, s1, s2
  ADD a0, s0, zero
  ADD a1, s2, zero
  CALL power
  ADD s2, a0, zero
  ADD a0, s2, zero
  ADD a1, s2, zero
  CALL multiply
  ADD s2, a0, zero
  ADDI s3, zero, 2
  REMW s1, s1, s3
  XORI s1, s1, 1
  SLTIU s1, s1, 1
  BNE s1, zero, bb18
  # implict jump to bb17
bb17:
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb18:
  ADD a0, s2, zero
  ADD a1, s0, zero
  CALL multiply
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb19:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -80
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
  ADDW s0, s0, s1
  # implict jump to bb21
bb21:
  LA s1, d
  LW s1, 0(s1)
  ADDI s2, zero, 1
  SUBW s2, s0, s2
  SLT s1, s1, s2
  BNE s1, zero, bb29
  # implict jump to bb22
bb22:
  LA s1, d
  LW s1, 0(s1)
  LUI s3, 243712
  ADDIW s3, s3, 0
  DIVW s3, s3, s1
  ADDI a0, zero, 3
  ADD a1, s3, zero
  CALL power
  ADD s3, a0, zero
  LA s4, a
  ADD a0, s4, zero
  ADD a1, zero, zero
  ADD a2, s1, zero
  ADD a3, s3, zero
  CALL fft
  LA s1, d
  LW s1, 0(s1)
  LUI s3, 243712
  ADDIW s3, s3, 0
  DIVW s3, s3, s1
  ADDI a0, zero, 3
  ADD a1, s3, zero
  CALL power
  ADD s3, a0, zero
  LA s4, b
  ADD a0, s4, zero
  ADD a1, zero, zero
  ADD a2, s1, zero
  ADD a3, s3, zero
  CALL fft
  ADD s1, zero, zero
  # implict jump to bb23
bb23:
  ADD s3, s1, zero
  LA s4, d
  LW s4, 0(s4)
  SLT s4, s3, s4
  BNE s4, zero, bb28
  # implict jump to bb24
bb24:
  LA s4, d
  LW s4, 0(s4)
  LUI s5, 243712
  ADDIW s5, s5, 0
  DIVW s5, s5, s4
  LUI s6, 243712
  ADDIW s6, s6, 0
  SUBW s5, s6, s5
  ADDI a0, zero, 3
  ADD a1, s5, zero
  CALL power
  ADD s5, a0, zero
  LA s6, a
  ADD a0, s6, zero
  ADD a1, zero, zero
  ADD a2, s4, zero
  ADD a3, s5, zero
  CALL fft
  ADD s4, zero, zero
  # implict jump to bb25
bb25:
  ADD s5, s4, zero
  LA s6, d
  LW s6, 0(s6)
  SLT s6, s5, s6
  BNE s6, zero, bb27
  # implict jump to bb26
bb26:
  ADDI a0, zero, 79
  CALL _sysy_stoptime
  ADD a0, s2, zero
  LA s6, a
  ADD a1, s6, zero
  CALL putarray
  ADD a0, zero, zero
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb27:
  SLLIW s6, s5, 2
  LA s7, a
  ADD s6, s7, s6
  LW s7, 0(s6)
  LA s8, d
  LW s8, 0(s8)
  ADD a0, s8, zero
  LUI s8, 243712
  ADDIW s8, s8, -1
  ADD a1, zero, s8
  CALL power
  ADD s8, a0, zero
  ADD a0, s7, zero
  ADD a1, s8, zero
  CALL multiply
  ADD s7, a0, zero
  SW s7, 0(s6)
  ADDIW s5, s5, 1
  ADD s4, s5, zero
  JAL zero, bb25
bb28:
  SLLIW s4, s3, 2
  LA s5, a
  ADD s5, s5, s4
  LW s6, 0(s5)
  LA s7, b
  ADD s4, s7, s4
  LW s4, 0(s4)
  ADD a0, s6, zero
  ADD a1, s4, zero
  CALL multiply
  SW a0, 0(s5)
  ADDIW s3, s3, 1
  ADD s1, s3, zero
  JAL zero, bb23
bb29:
  LA s1, d
  LW s1, 0(s1)
  SLLIW s1, s1, 1
  LA s2, d
  SW s1, 0(s2)
  JAL zero, bb21
memmove:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb31
bb31:
  ADD s2, s1, zero
  SLT s3, s2, a3
  BNE s3, zero, bb33
  # implict jump to bb32
bb32:
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb33:
  ADDW s3, a1, s2
  SLLIW s3, s3, 2
  ADD s3, s0, s3
  SLLIW s4, s2, 2
  ADD s4, a2, s4
  LW s4, 0(s4)
  SW s4, 0(s3)
  ADDIW s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb31
multiply:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  XOR s2, s1, zero
  SLTIU s2, s2, 1
  BNE s2, zero, bb40
  # implict jump to bb35
bb35:
  XORI s2, s1, 1
  SLTIU s2, s2, 1
  BNE s2, zero, bb39
  # implict jump to bb36
bb36:
  ADDI s2, zero, 2
  DIVW s2, s1, s2
  ADD a0, s0, zero
  ADD a1, s2, zero
  CALL multiply
  ADD s2, a0, zero
  SLLIW s2, s2, 1
  LUI s3, 243712
  ADDIW s3, s3, 1
  REMW s2, s2, s3
  ADDI s3, zero, 2
  REMW s1, s1, s3
  XORI s1, s1, 1
  SLTIU s1, s1, 1
  BNE s1, zero, bb38
  # implict jump to bb37
bb37:
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb38:
  ADDW s1, s2, s0
  LUI s2, 243712
  ADDIW s2, s2, 1
  REMW s1, s1, s2
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb39:
  LUI s1, 243712
  ADDIW s1, s1, 1
  REMW s0, s0, s1
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb40:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
