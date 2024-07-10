.global main
.global sub
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
  ADDI sp, sp, -288
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
  SD s11, 96(sp)
  FSD fs0, 104(sp)
  FSD fs1, 112(sp)
  FSD fs2, 216(sp)
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
  SLTI s2, s1, 3
  BNE s2, zero, bb15
  # implict jump to bb2
bb2:
  ADD s2, zero, zero
  # implict jump to bb3
bb3:
  ADD s3, s2, zero
  SLTI s4, s3, 3
  BNE s4, zero, bb14
  # implict jump to bb4
bb4:
  ADD s4, zero, zero
  # implict jump to bb5
bb5:
  ADD s5, s4, zero
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
  LD s11, 96(sp)
  FLD fs0, 104(sp)
  FLD fs1, 112(sp)
  FLD fs2, 216(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb11:
  SLLIW s10, s9, 2
  ADDI t5, sp, 264
  ADD s11, t5, s10
  FLW fs0, 0(s11)
  FCVT.W.S s10, fs0, rtz
  ADD a0, s10, zero
  CALL putint
  ADDIW s10, s9, 1
  ADD s8, s10, zero
  JAL zero, bb9
bb12:
  SLLIW s8, s7, 2
  ADDI t5, sp, 248
  ADD s9, t5, s8
  FLW fs0, 0(s9)
  FCVT.W.S s8, fs0, rtz
  ADD a0, s8, zero
  CALL putint
  ADDIW s8, s7, 1
  ADD s6, s8, zero
  JAL zero, bb7
bb13:
  SLLIW s6, s5, 2
  ADDI t5, sp, 224
  ADD s7, t5, s6
  FLW fs0, 0(s7)
  FCVT.W.S s6, fs0, rtz
  ADD a0, s6, zero
  CALL putint
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb5
bb14:
  SLLIW s4, s3, 2
  ADDI t5, sp, 224
  ADD s5, t5, s4
  ADDI t5, sp, 120
  ADD s6, t5, s4
  FLW fs0, 0(s6)
  ADDI t5, sp, 168
  ADD s6, t5, s4
  FLW fs1, 0(s6)
  FSUB.S fs2, fs0, fs1
  FSW fs2, 0(s5)
  ADDI t5, sp, 248
  ADD s5, t5, s4
  ADDI t5, sp, 136
  ADD s6, t5, s4
  FLW fs0, 0(s6)
  ADDI t5, sp, 184
  ADD s6, t5, s4
  FLW fs1, 0(s6)
  FSUB.S fs2, fs0, fs1
  FSW fs2, 0(s5)
  ADDI t5, sp, 264
  ADD s5, t5, s4
  ADDI t5, sp, 152
  ADD s6, t5, s4
  FLW fs0, 0(s6)
  ADDI t5, sp, 200
  ADD s6, t5, s4
  FLW fs1, 0(s6)
  FSUB.S fs2, fs0, fs1
  FSW fs2, 0(s5)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb3
bb15:
  SLLIW s2, s1, 2
  ADDI t5, sp, 120
  ADD s3, t5, s2
  FCVT.S.W fs0, s1
  FSW fs0, 0(s3)
  ADDI t5, sp, 136
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDI t5, sp, 152
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDI t5, sp, 168
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDI t5, sp, 184
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDI t5, sp, 200
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb1
sub:
  ADDI sp, sp, -128
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
  SD s11, 96(sp)
  FSD fs0, 104(sp)
  FSD fs1, 112(sp)
  FSD fs2, 120(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  ADD s6, a6, zero
  ADD s7, a7, zero
  ADDI t5, sp, 128
  ADD s8, t5, zero
  LD s9, 0(s8)
  ADD s8, zero, zero
  # implict jump to bb17
bb17:
  ADD s10, s8, zero
  SLTI s11, s10, 3
  BNE s11, zero, bb19
  # implict jump to bb18
bb18:
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
  LD s11, 96(sp)
  FLD fs0, 104(sp)
  FLD fs1, 112(sp)
  FLD fs2, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb19:
  SLLIW s11, s10, 2
  ADD t0, s6, s11
  ADD t1, s0, s11
  FLW fs0, 0(t1)
  ADD t1, s3, s11
  FLW fs1, 0(t1)
  FSUB.S fs2, fs0, fs1
  FSW fs2, 0(t0)
  ADD t0, s7, s11
  ADD t1, s1, s11
  FLW fs0, 0(t1)
  ADD t1, s4, s11
  FLW fs1, 0(t1)
  FSUB.S fs2, fs0, fs1
  FSW fs2, 0(t0)
  ADD t0, s9, s11
  ADD t1, s2, s11
  FLW fs0, 0(t1)
  ADD t1, s5, s11
  FLW fs1, 0(t1)
  FSUB.S fs2, fs0, fs1
  FSW fs2, 0(t0)
  ADDIW s11, s10, 1
  ADD s8, s11, zero
  JAL zero, bb17
