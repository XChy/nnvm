.global main
.global tran
.section .bss



.section .data
N:
.word 0x00000000
L:
.word 0x00000000
M:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -208
  SD ra, 152(sp)
  FSD fs0, 160(sp)
  SD s3, 168(sp)
  SD s2, 176(sp)
  SD s1, 184(sp)
  SD s0, 192(sp)
  LA s0, N
  ADDI s1, zero, 3
  SW s1, 0(s0)
  LA s0, M
  ADDI s1, zero, 3
  SW s1, 0(s0)
  LA s0, L
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADD s0, zero, zero
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  LA s2, M
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb12
  # implict jump to bb2
bb2:
  ADDI s0, sp, 24
  ADDI s1, sp, 108
  FLW fs0, 0(s1)
  FSW fs0, 0(s0)
  ADDI s0, sp, 4
  ADDI s1, sp, 128
  FLW fs0, 0(s1)
  FSW fs0, 0(s0)
  ADDI s0, sp, 36
  FLW fs0, 120(sp)
  FSW fs0, 0(s0)
  ADDI s0, sp, 40
  FLW fs0, 104(sp)
  FSW fs0, 0(s0)
  ADDI s0, sp, 140
  FLW fs0, 0(s0)
  FSW fs0, 16(sp)
  ADDI s0, sp, 144
  FLW fs0, 0(s0)
  FSW fs0, 0(sp)
  ADDI s0, sp, 20
  ADDI s1, sp, 124
  FLW fs0, 0(s1)
  FSW fs0, 0(s0)
  ADDI s0, sp, 8
  ADDI s1, sp, 112
  FLW fs0, 0(s1)
  FSW fs0, 0(s0)
  FLW fs0, 136(sp)
  FSW fs0, 32(sp)
  ADD s0, zero, zero
  # implict jump to bb3
bb3:
  ADD s1, s0, zero
  LA s2, N
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb11
  # implict jump to bb4
bb4:
  ADDI a0, zero, 10
  CALL putch
  ADD s0, zero, zero
  # implict jump to bb5
bb5:
  ADD s1, s0, zero
  LA s2, N
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb10
  # implict jump to bb6
bb6:
  ADDI a0, zero, 10
  CALL putch
  ADD s0, zero, zero
  # implict jump to bb7
bb7:
  ADD s1, s0, zero
  LA s2, N
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb9
  # implict jump to bb8
bb8:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 152(sp)
  FLD fs0, 160(sp)
  LD s3, 168(sp)
  LD s2, 176(sp)
  LD s1, 184(sp)
  LD s0, 192(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb9:
  SLLIW s2, s1, 2
  ADDI t5, sp, 0
  ADD s3, t5, s2
  FLW fs0, 0(s3)
  FCVT.W.S s2, fs0, rtz
  ADD a0, s2, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb7
bb10:
  SLLIW s2, s1, 2
  ADDI t5, sp, 16
  ADD s3, t5, s2
  FLW fs0, 0(s3)
  FCVT.W.S s2, fs0, rtz
  ADD a0, s2, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb5
bb11:
  SLLIW s2, s1, 2
  ADDI t5, sp, 32
  ADD s3, t5, s2
  FLW fs0, 0(s3)
  FCVT.W.S s2, fs0, rtz
  ADD a0, s2, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb3
bb12:
  SLLIW s2, s1, 2
  ADDI t5, sp, 136
  ADD s3, t5, s2
  FCVT.S.W fs0, s1
  FSW fs0, 0(s3)
  ADDI t5, sp, 120
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDI t5, sp, 104
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDI t5, sp, 88
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDI t5, sp, 72
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDI t5, sp, 56
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb1
tran:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s7, 8(sp)
  SD s6, 16(sp)
  SD s5, 24(sp)
  SD s0, 32(sp)
  FSD fs0, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s3, a4, zero
  ADD s3, a5, zero
  ADD s3, a6, zero
  ADD s4, a7, zero
  ADDI t5, sp, 80
  ADD s5, t5, zero
  LD s6, 0(s5)
  ADDI s5, s4, 8
  ADDI s7, s2, 4
  FLW fs0, 0(s7)
  FSW fs0, 0(s5)
  ADDI s5, s6, 4
  ADDI s7, s1, 8
  FLW fs0, 0(s7)
  FSW fs0, 0(s5)
  ADDI s5, s3, 4
  FLW fs0, 0(s1)
  FSW fs0, 0(s5)
  ADDI s5, s3, 8
  FLW fs0, 0(s2)
  FSW fs0, 0(s5)
  ADDI s5, s0, 4
  FLW fs0, 0(s5)
  FSW fs0, 0(s4)
  ADDI s5, s0, 8
  FLW fs0, 0(s5)
  FSW fs0, 0(s6)
  ADDI s5, s4, 4
  ADDI s4, s1, 4
  FLW fs0, 0(s4)
  FSW fs0, 0(s5)
  ADDI s1, s6, 8
  ADDI s4, s2, 8
  FLW fs0, 0(s4)
  FSW fs0, 0(s1)
  FLW fs0, 0(s0)
  FSW fs0, 0(s3)
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s7, 8(sp)
  LD s6, 16(sp)
  LD s5, 24(sp)
  LD s0, 32(sp)
  FLD fs0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
