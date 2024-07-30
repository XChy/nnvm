.global main
.section .bss



.section .data
L:
.word 0x00000000
M:
.word 0x00000000
N:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -272
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
  SD s9, 80(sp)
  SD s10, 88(sp)
  FSD fs0, 96(sp)
  FSD fs1, 104(sp)
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
  SLLIW s2, s1, 2
  ADDI t5, sp, 112
  ADD s3, t5, s2
  FCVT.S.W fs0, s1
  FSW fs0, 0(s3)
  ADDI t5, sp, 128
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDI t5, sp, 144
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDI t5, sp, 160
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDI t5, sp, 176
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDI t5, sp, 192
  ADD s2, t5, s2
  FSW fs0, 0(s2)
  ADDIW s1, s1, 1
  SLTI s2, s1, 3
  BNE s2, zero, bb15
  # implict jump to bb2
bb2:
  ADD s2, zero, zero
  # implict jump to bb3
bb3:
  ADD s3, s2, zero
  SLLIW s4, s3, 2
  ADDI t5, sp, 208
  ADD s5, t5, s4
  ADDI t5, sp, 112
  ADD s6, t5, s4
  FLW fs0, 0(s6)
  ADDI t5, sp, 160
  ADD s6, t5, s4
  FLW fs1, 0(s6)
  FSUB.S fs0, fs0, fs1
  FSW fs0, 0(s5)
  ADDI t5, sp, 232
  ADD s5, t5, s4
  ADDI t5, sp, 128
  ADD s6, t5, s4
  FLW fs0, 0(s6)
  ADDI t5, sp, 176
  ADD s6, t5, s4
  FLW fs1, 0(s6)
  FSUB.S fs0, fs0, fs1
  FSW fs0, 0(s5)
  ADDI t5, sp, 248
  ADD s5, t5, s4
  ADDI t5, sp, 144
  ADD s6, t5, s4
  FLW fs0, 0(s6)
  ADDI t5, sp, 192
  ADD s4, t5, s4
  FLW fs1, 0(s4)
  FSUB.S fs0, fs0, fs1
  FSW fs0, 0(s5)
  ADDIW s3, s3, 1
  SLTI s4, s3, 3
  BNE s4, zero, bb14
  # implict jump to bb4
bb4:
  ADD s4, zero, zero
  # implict jump to bb5
bb5:
  ADD s5, s4, zero
  SLLIW s6, s5, 2
  ADDI t5, sp, 208
  ADD s6, t5, s6
  FLW fs0, 0(s6)
  FCVT.W.S s6, fs0, rtz
  ADD a0, s6, zero
  CALL putint
  ADDIW s5, s5, 1
  SLTI s6, s5, 3
  BNE s6, zero, bb13
  # implict jump to bb6
bb6:
  ADDI a0, zero, 10
  CALL putch
  ADD s6, zero, zero
  # implict jump to bb7
bb7:
  ADD s7, s6, zero
  SLLIW s8, s7, 2
  ADDI t5, sp, 232
  ADD s8, t5, s8
  FLW fs0, 0(s8)
  FCVT.W.S s8, fs0, rtz
  ADD a0, s8, zero
  CALL putint
  ADDIW s7, s7, 1
  SLTI s8, s7, 3
  BNE s8, zero, bb12
  # implict jump to bb8
bb8:
  ADDI a0, zero, 10
  CALL putch
  ADD s8, zero, zero
  # implict jump to bb9
bb9:
  ADD s9, s8, zero
  SLLIW s10, s9, 2
  ADDI t5, sp, 248
  ADD s10, t5, s10
  FLW fs0, 0(s10)
  FCVT.W.S s10, fs0, rtz
  ADD a0, s10, zero
  CALL putint
  ADDIW s9, s9, 1
  SLTI s10, s9, 3
  BNE s10, zero, bb11
  # implict jump to bb10
bb10:
  ADDI a0, zero, 10
  CALL putch
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
  LD s9, 80(sp)
  LD s10, 88(sp)
  FLD fs0, 96(sp)
  FLD fs1, 104(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb11:
  ADD s8, s9, zero
  JAL zero, bb9
bb12:
  ADD s6, s7, zero
  JAL zero, bb7
bb13:
  ADD s4, s5, zero
  JAL zero, bb5
bb14:
  ADD s2, s3, zero
  JAL zero, bb3
bb15:
  ADD s0, s1, zero
  JAL zero, bb1
