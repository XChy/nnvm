.global fft
.global power
.global main
.global multiply
.section .bss
b:
.space 8388608
temp:
.space 8388608
a:
.space 8388608

.section .data



d:
.word 0x00000000
.section .text
fft:
  ADDI sp, sp, -144
  SD ra, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s5, 80(sp)
  SD s6, 88(sp)
  SD s7, 96(sp)
  SD s8, 104(sp)
  SD s9, 112(sp)
  SD s10, 120(sp)
  SD s11, 128(sp)
  ADD t4, a0, zero
  SD t4, 136(sp)
  ADD t4, a1, zero
  SW t4, 16(sp)
  ADD t4, a2, zero
  SW t4, 12(sp)
  ADD t4, a3, zero
  SW t4, 8(sp)
  LW t4, 12(sp)
  XORI s5, t4, 1
  SLTIU s5, s5, 1
  BNE s5, zero, bb17
  # implict jump to bb1
bb1:
  ADDI t4, zero, 0
  SW t4, 4(sp)
  LW t4, 4(sp)
  LW t3, 12(sp)
  BLT t4, t3, bb11
  # implict jump to bb2
bb2:
  LW t4, 4(sp)
  LW t3, 12(sp)
  BLT t4, t3, bb8
  # implict jump to bb3
bb3:
  ADDI s10, zero, 2
  LW t4, 12(sp)
  DIVW s0, t4, s10
  LW t4, 8(sp)
  ADD a0, t4, zero
  LW t4, 8(sp)
  ADD a1, t4, zero
  CALL multiply
  ADD s10, a0, zero
  LD t4, 136(sp)
  ADD a0, t4, zero
  LW t4, 16(sp)
  ADD a1, t4, zero
  ADD a2, s0, zero
  ADD a3, s10, zero
  CALL fft
  LW t4, 16(sp)
  ADDW s11, t4, s0
  LD t4, 136(sp)
  ADD a0, t4, zero
  ADD a1, s11, zero
  ADD a2, s0, zero
  ADD a3, s10, zero
  CALL fft
  BLT zero, s0, bb5
  # implict jump to bb4
bb4:
  ADD a0, zero, zero
  LD ra, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  LD s7, 96(sp)
  LD s8, 104(sp)
  LD s9, 112(sp)
  LD s10, 120(sp)
  LD s11, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb5:
  ADD s10, zero, zero
  ADDI s11, zero, 1
  # implict jump to bb6
bb6:
  ADD s5, s11, zero
  ADD s4, s10, zero
  LW t4, 16(sp)
  ADDW s3, t4, s4
  SLLIW s2, s3, 2
  LD t4, 136(sp)
  ADD s2, t4, s2
  LW s1, 0(s2)
  ADDW s3, s3, s0
  SLLIW s3, s3, 2
  LD t4, 136(sp)
  ADD s3, t4, s3
  LW s6, 0(s3)
  ADD a0, s5, zero
  ADD a1, s6, zero
  CALL multiply
  ADD s6, a0, zero
  ADDW s7, s1, s6
  LUI s8, 243712
  ADDIW s8, s8, 1
  REMW s7, s7, s8
  SW s7, 0(s2)
  SUBW s1, s1, s6
  LUI s2, 243712
  ADDIW s2, s2, 1
  ADDW s1, s1, s2
  LUI s2, 243712
  ADDIW s2, s2, 1
  REMW s1, s1, s2
  SW s1, 0(s3)
  ADD a0, s5, zero
  LW t4, 8(sp)
  ADD a1, t4, zero
  CALL multiply
  ADD s1, a0, zero
  ADDIW s2, s4, 1
  BLT s2, s0, bb7
  JAL zero, bb4
bb7:
  ADD s10, s2, zero
  ADD s11, s1, zero
  JAL zero, bb6
bb8:
  ADD t4, zero, zero
  SW t4, 0(sp)
  # implict jump to bb9
bb9:
  LW t4, 0(sp)
  ADD s9, t4, zero
  LW t4, 16(sp)
  ADDW s10, t4, s9
  SLLIW s10, s10, 2
  LD t4, 136(sp)
  ADD s10, t4, s10
  SLLIW s11, s9, 2
  LA t0, temp
  ADD s11, t0, s11
  LW s11, 0(s11)
  SW s11, 0(s10)
  ADDIW s9, s9, 1
  LW t4, 12(sp)
  BLT s9, t4, bb10
  JAL zero, bb3
bb10:
  ADD t4, s9, zero
  SW t4, 0(sp)
  JAL zero, bb9
bb11:
  ADD t4, zero, zero
  SW t4, 24(sp)
  # implict jump to bb12
bb12:
  LW t4, 24(sp)
  ADD s7, t4, zero
  ADDI s8, zero, 2
  REMW s8, s7, s8
  SLTIU s8, s8, 1
  BNE s8, zero, bb16
  # implict jump to bb13
bb13:
  ADDI s8, zero, 2
  LW t4, 12(sp)
  DIVW s8, t4, s8
  ADDI s9, zero, 2
  DIVW s9, s7, s9
  ADDW s8, s8, s9
  SLLIW s8, s8, 2
  LA s9, temp
  ADD s8, s9, s8
  LW t4, 16(sp)
  ADDW s9, s7, t4
  SLLIW s9, s9, 2
  LD t4, 136(sp)
  ADD s9, t4, s9
  LW s9, 0(s9)
  SW s9, 0(s8)
  # implict jump to bb14
bb14:
  ADDIW t4, s7, 1
  SW t4, 20(sp)
  LW t4, 20(sp)
  LW t3, 12(sp)
  BLT t4, t3, bb15
  JAL zero, bb2
bb15:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  JAL zero, bb12
bb16:
  ADDI s8, zero, 2
  DIVW s8, s7, s8
  SLLIW s8, s8, 2
  LA s9, temp
  ADD s8, s9, s8
  LW t4, 16(sp)
  ADDW s9, s7, t4
  SLLIW s9, s9, 2
  LD t4, 136(sp)
  ADD s9, t4, s9
  LW s9, 0(s9)
  SW s9, 0(s8)
  JAL zero, bb14
bb17:
  ADDI a0, zero, 1
  LD ra, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  LD s7, 96(sp)
  LD s8, 104(sp)
  LD s9, 112(sp)
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
  SLTIU s2, s1, 1
  BNE s2, zero, bb22
  # implict jump to bb19
bb19:
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
  BNE s1, zero, bb21
  # implict jump to bb20
bb20:
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb21:
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
bb22:
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
  LA s2, d
  LW s2, 0(s2)
  ADDW s0, s0, s1
  ADDI s1, zero, 1
  SUBW s0, s0, s1
  BLT s2, s0, bb34
  # implict jump to bb24
bb24:
  ADD s1, s0, zero
  # implict jump to bb25
bb25:
  LA s0, d
  LW s0, 0(s0)
  LUI s2, 243712
  ADDIW s2, s2, 0
  DIVW s2, s2, s0
  ADDI a0, zero, 3
  ADD a1, s2, zero
  CALL power
  ADD s2, a0, zero
  LA s3, a
  ADD a0, s3, zero
  ADD a1, zero, zero
  ADD a2, s0, zero
  ADD a3, s2, zero
  CALL fft
  LA s0, d
  LW s0, 0(s0)
  LUI s2, 243712
  ADDIW s2, s2, 0
  DIVW s2, s2, s0
  ADDI a0, zero, 3
  ADD a1, s2, zero
  CALL power
  ADD s2, a0, zero
  LA s3, b
  ADD a0, s3, zero
  ADD a1, zero, zero
  ADD a2, s0, zero
  ADD a3, s2, zero
  CALL fft
  LA s0, d
  LW s0, 0(s0)
  BLT zero, s0, bb31
  # implict jump to bb26
bb26:
  LA s3, d
  LW s3, 0(s3)
  LUI s4, 243712
  ADDIW s4, s4, 0
  DIVW s4, s4, s3
  LUI s5, 243712
  ADDIW s5, s5, 0
  SUBW s4, s5, s4
  ADDI a0, zero, 3
  ADD a1, s4, zero
  CALL power
  ADD s4, a0, zero
  LA s5, a
  ADD a0, s5, zero
  ADD a1, zero, zero
  ADD a2, s3, zero
  ADD a3, s4, zero
  CALL fft
  LA s3, d
  LW s3, 0(s3)
  BLT zero, s3, bb28
  # implict jump to bb27
bb27:
  ADDI a0, zero, 79
  CALL _sysy_stoptime
  ADD a0, s1, zero
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb28:
  ADD s3, zero, zero
  # implict jump to bb29
bb29:
  ADD s4, s3, zero
  SLLIW s5, s4, 2
  LA s6, a
  ADD s5, s6, s5
  LW s6, 0(s5)
  LA s7, d
  LW s7, 0(s7)
  ADD a0, s7, zero
  LUI s7, 243712
  ADDIW s7, s7, -1
  ADD a1, zero, s7
  CALL power
  ADD s7, a0, zero
  ADD a0, s6, zero
  ADD a1, s7, zero
  CALL multiply
  ADD s6, a0, zero
  SW s6, 0(s5)
  ADDIW s4, s4, 1
  LA s5, d
  LW s5, 0(s5)
  BLT s4, s5, bb30
  JAL zero, bb27
bb30:
  ADD s3, s4, zero
  JAL zero, bb29
bb31:
  ADD s0, zero, zero
  # implict jump to bb32
bb32:
  ADD s2, s0, zero
  SLLIW s3, s2, 2
  LA s4, a
  ADD s4, s4, s3
  LW s5, 0(s4)
  LA s6, b
  ADD s3, s6, s3
  LW s3, 0(s3)
  ADD a0, s5, zero
  ADD a1, s3, zero
  CALL multiply
  ADD s3, a0, zero
  SW s3, 0(s4)
  ADDIW s2, s2, 1
  LA s3, d
  LW s3, 0(s3)
  BLT s2, s3, bb33
  JAL zero, bb26
bb33:
  ADD s0, s2, zero
  JAL zero, bb32
bb34:
  LA s2, d
  LW s2, 0(s2)
  SLLIW s2, s2, 1
  LA s3, d
  SW s2, 0(s3)
  LA s2, d
  LW s2, 0(s2)
  BLT s2, s0, bb34
  # implict jump to bb35
bb35:
  ADD s1, s0, zero
  JAL zero, bb25
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
  BNE s2, zero, bb42
  # implict jump to bb37
bb37:
  XORI s2, s1, 1
  SLTIU s2, s2, 1
  BNE s2, zero, bb41
  # implict jump to bb38
bb38:
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
  BNE s1, zero, bb40
  # implict jump to bb39
bb39:
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb40:
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
bb41:
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
bb42:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
