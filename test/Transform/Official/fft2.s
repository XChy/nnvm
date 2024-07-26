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
  SD ra, 32(sp)
  SD s3, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  SD s7, 104(sp)
  SD s8, 112(sp)
  SD s9, 120(sp)
  SD s10, 128(sp)
  SD s11, 136(sp)
  ADD t4, a0, zero
  SD t4, 72(sp)
  ADD t4, a1, zero
  SW t4, 8(sp)
  ADD t4, a2, zero
  SW t4, 4(sp)
  ADD t4, a3, zero
  SW t4, 0(sp)
  LW t4, 4(sp)
  XORI s9, t4, 1
  SLTIU s9, s9, 1
  BNE s9, zero, bb20
  # implict jump to bb1
bb1:
  ADDI s9, zero, 0
  LW t4, 4(sp)
  BLT s9, t4, bb13
  # implict jump to bb2
bb2:
  LW t4, 4(sp)
  BLT zero, t4, bb9
  # implict jump to bb3
bb3:
  ADDI s11, zero, 2
  LW t3, 4(sp)
  DIVW t4, t3, s11
  SW t4, 12(sp)
  LW t4, 0(sp)
  ADD a0, t4, zero
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL multiply
  ADD s11, a0, zero
  LD t4, 72(sp)
  ADD a0, t4, zero
  LW t4, 8(sp)
  ADD a1, t4, zero
  LW t4, 12(sp)
  ADD a2, t4, zero
  ADD a3, s11, zero
  CALL fft
  LW t4, 8(sp)
  LW t3, 12(sp)
  ADDW s8, t4, t3
  LD t4, 72(sp)
  ADD a0, t4, zero
  ADD a1, s8, zero
  LW t4, 12(sp)
  ADD a2, t4, zero
  ADD a3, s11, zero
  CALL fft
  LW t4, 12(sp)
  BLT zero, t4, bb5
  # implict jump to bb4
bb4:
  ADD a0, zero, zero
  LD ra, 32(sp)
  LD s3, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  LD s9, 120(sp)
  LD s10, 128(sp)
  LD s11, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb5:
  ADD s8, zero, zero
  ADDI s11, zero, 1
  # implict jump to bb6
bb6:
  ADD s7, s11, zero
  ADD s6, s8, zero
  LW t4, 8(sp)
  ADDW s5, t4, s6
  SLLIW s9, s5, 2
  LD t4, 72(sp)
  ADD s9, t4, s9
  LW s0, 0(s9)
  LW t4, 12(sp)
  ADDW s5, s5, t4
  SLLIW s5, s5, 2
  LD t4, 72(sp)
  ADD s5, t4, s5
  LW s10, 0(s5)
  ADD a0, s7, zero
  ADD a1, s10, zero
  CALL multiply
  ADD s10, a0, zero
  ADDW s4, s0, s10
  LUI s2, 243712
  ADDIW s2, s2, 1
  REMW s2, s4, s2
  SW s2, 0(s9)
  SUBW s0, s0, s10
  LUI s2, 243712
  ADDIW s2, s2, 1
  ADDW s0, s0, s2
  LUI s2, 243712
  ADDIW s2, s2, 1
  REMW s0, s0, s2
  SW s0, 0(s5)
  ADD a0, s7, zero
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL multiply
  ADD s1, a0, zero
  ADDIW s3, s6, 1
  # implict jump to bb7
bb7:
  LW t4, 12(sp)
  BLT s3, t4, bb8
  JAL zero, bb4
bb8:
  ADD s8, s3, zero
  ADD s11, s1, zero
  JAL zero, bb6
bb9:
  ADD t4, zero, zero
  SW t4, 24(sp)
  # implict jump to bb10
bb10:
  LW t4, 24(sp)
  ADD s11, t4, zero
  LW t4, 8(sp)
  ADDW t0, t4, s11
  SLLIW t0, t0, 2
  LD t4, 72(sp)
  ADD t0, t4, t0
  SLLIW t1, s11, 2
  LA t2, temp
  ADD t1, t2, t1
  LW t1, 0(t1)
  SW t1, 0(t0)
  ADDIW t4, s11, 1
  SW t4, 28(sp)
  # implict jump to bb11
bb11:
  LW t4, 28(sp)
  LW t3, 4(sp)
  BLT t4, t3, bb12
  JAL zero, bb3
bb12:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  JAL zero, bb10
bb13:
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb14
bb14:
  LW t4, 16(sp)
  ADD s10, t4, zero
  ADDI s11, zero, 2
  REMW s11, s10, s11
  SLTIU s11, s11, 1
  BNE s11, zero, bb19
  # implict jump to bb15
bb15:
  ADDI s11, zero, 2
  LW t4, 4(sp)
  DIVW s11, t4, s11
  ADDI t0, zero, 2
  DIVW t0, s10, t0
  ADDW s11, s11, t0
  SLLIW s11, s11, 2
  LA t0, temp
  ADD s11, t0, s11
  LW t4, 8(sp)
  ADDW t0, s10, t4
  SLLIW t0, t0, 2
  LD t4, 72(sp)
  ADD t0, t4, t0
  LW t0, 0(t0)
  SW t0, 0(s11)
  # implict jump to bb16
bb16:
  ADDIW t4, s10, 1
  SW t4, 20(sp)
  # implict jump to bb17
bb17:
  LW t4, 20(sp)
  LW t3, 4(sp)
  BLT t4, t3, bb18
  JAL zero, bb2
bb18:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb14
bb19:
  ADDI s11, zero, 2
  DIVW s11, s10, s11
  SLLIW s11, s11, 2
  LA t0, temp
  ADD s11, t0, s11
  LW t4, 8(sp)
  ADDW t0, s10, t4
  SLLIW t0, t0, 2
  LD t4, 72(sp)
  ADD t0, t4, t0
  LW t0, 0(t0)
  SW t0, 0(s11)
  JAL zero, bb16
bb20:
  ADDI a0, zero, 1
  LD ra, 32(sp)
  LD s3, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  LD s9, 120(sp)
  LD s10, 128(sp)
  LD s11, 136(sp)
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
  SLTIU s2, s1, 1
  BNE s2, zero, bb25
  # implict jump to bb22
bb22:
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
  BNE s1, zero, bb24
  # implict jump to bb23
bb23:
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb24:
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
bb25:
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
  LA s2, a
  ADD a0, s2, zero
  CALL getarray
  ADD s2, a0, zero
  LA s3, b
  ADD a0, s3, zero
  CALL getarray
  ADD s3, a0, zero
  ADDI a0, zero, 60
  CALL _sysy_starttime
  LA s4, d
  ADDI s5, zero, 1
  SW s5, 0(s4)
  LA s4, d
  LW s4, 0(s4)
  ADDW s5, s2, s3
  ADDI s6, zero, 1
  SUBW s5, s5, s6
  BLT s4, s5, bb39
  # implict jump to bb27
bb27:
  ADD s4, s5, zero
  # implict jump to bb28
bb28:
  LA s2, d
  LW s2, 0(s2)
  LUI s3, 243712
  ADDIW s3, s3, 0
  DIVW s3, s3, s2
  ADDI a0, zero, 3
  ADD a1, s3, zero
  CALL power
  ADD s3, a0, zero
  LA s5, a
  ADD a0, s5, zero
  ADD a1, zero, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  CALL fft
  LA s2, d
  LW s2, 0(s2)
  LUI s3, 243712
  ADDIW s3, s3, 0
  DIVW s3, s3, s2
  ADDI a0, zero, 3
  ADD a1, s3, zero
  CALL power
  ADD s3, a0, zero
  LA s5, b
  ADD a0, s5, zero
  ADD a1, zero, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  CALL fft
  LA s2, d
  LW s2, 0(s2)
  BLT zero, s2, bb35
  # implict jump to bb29
bb29:
  LA s3, d
  LW s3, 0(s3)
  LUI s5, 243712
  ADDIW s5, s5, 0
  DIVW s5, s5, s3
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
  ADD a2, s3, zero
  ADD a3, s5, zero
  CALL fft
  LA s3, d
  LW s3, 0(s3)
  BLT zero, s3, bb31
  # implict jump to bb30
bb30:
  ADDI a0, zero, 79
  CALL _sysy_stoptime
  ADD a0, s4, zero
  LA s5, a
  ADD a1, s5, zero
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
bb31:
  ADD s3, zero, zero
  # implict jump to bb32
bb32:
  ADD s5, s3, zero
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
  ADDIW s0, s5, 1
  # implict jump to bb33
bb33:
  LA s5, d
  LW s5, 0(s5)
  BLT s0, s5, bb34
  JAL zero, bb30
bb34:
  ADD s3, s0, zero
  JAL zero, bb32
bb35:
  ADD s2, zero, zero
  # implict jump to bb36
bb36:
  ADD s3, s2, zero
  SLLIW s5, s3, 2
  LA s6, a
  ADD s6, s6, s5
  LW s7, 0(s6)
  LA s8, b
  ADD s5, s8, s5
  LW s5, 0(s5)
  ADD a0, s7, zero
  ADD a1, s5, zero
  CALL multiply
  ADD s5, a0, zero
  SW s5, 0(s6)
  ADDIW s1, s3, 1
  # implict jump to bb37
bb37:
  LA s3, d
  LW s3, 0(s3)
  BLT s1, s3, bb38
  JAL zero, bb29
bb38:
  ADD s2, s1, zero
  JAL zero, bb36
bb39:
  LA s5, d
  LW s5, 0(s5)
  SLLIW s5, s5, 1
  LA s6, d
  SW s5, 0(s6)
  # implict jump to bb40
bb40:
  LA s5, d
  LW s5, 0(s5)
  ADDW s6, s2, s3
  ADDI s7, zero, 1
  SUBW s6, s6, s7
  BLT s5, s6, bb39
  # implict jump to bb41
bb41:
  ADD s4, s6, zero
  JAL zero, bb28
memmove:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  ADD s1, a0, zero
  BLT zero, a3, bb45
  # implict jump to bb43
bb43:
  ADD s2, zero, zero
  # implict jump to bb44
bb44:
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb45:
  ADD s3, zero, zero
  # implict jump to bb46
bb46:
  ADD s4, s3, zero
  ADDW s5, a1, s4
  SLLIW s5, s5, 2
  ADD s5, s1, s5
  SLLIW s6, s4, 2
  ADD s6, a2, s6
  LW s6, 0(s6)
  SW s6, 0(s5)
  ADDIW s0, s4, 1
  # implict jump to bb47
bb47:
  BLT s0, a3, bb49
  # implict jump to bb48
bb48:
  ADD s2, s0, zero
  JAL zero, bb44
bb49:
  ADD s3, s0, zero
  JAL zero, bb46
multiply:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SLTIU s2, s1, 1
  BNE s2, zero, bb56
  # implict jump to bb51
bb51:
  XORI s2, s1, 1
  SLTIU s2, s2, 1
  BNE s2, zero, bb55
  # implict jump to bb52
bb52:
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
  BNE s1, zero, bb54
  # implict jump to bb53
bb53:
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb54:
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
bb55:
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
bb56:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
