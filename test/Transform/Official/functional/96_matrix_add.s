.global main
.global add
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
  ADDI sp, sp, -224
  FSD fs1, 152(sp)
  SD s4, 160(sp)
  SD ra, 168(sp)
  FSD fs0, 176(sp)
  SD s3, 184(sp)
  SD s2, 192(sp)
  FSD fs2, 200(sp)
  SD s1, 208(sp)
  SD s0, 216(sp)
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
  BNE s2, zero, bb15
  # implict jump to bb2
bb2:
  ADD s0, zero, zero
  # implict jump to bb3
bb3:
  ADD s1, s0, zero
  LA s2, M
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb14
  # implict jump to bb4
bb4:
  ADD s0, zero, zero
  # implict jump to bb5
bb5:
  ADD s1, s0, zero
  LA s2, N
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb13
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
  BNE s2, zero, bb12
  # implict jump to bb8
bb8:
  ADDI a0, zero, 10
  CALL putch
  ADD s0, zero, zero
  # implict jump to bb9
bb9:
  ADD s1, s0, zero
  LA s2, N
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb11
  # implict jump to bb10
bb10:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  FLD fs1, 152(sp)
  LD s4, 160(sp)
  LD ra, 168(sp)
  FLD fs0, 176(sp)
  LD s3, 184(sp)
  LD s2, 192(sp)
  FLD fs2, 200(sp)
  LD s1, 208(sp)
  LD s0, 216(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb11:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 0
  ADD s2, t5, s3
  FLW fs0, 0(s2)
  FCVT.W.S s2, fs0, rtz
  ADD a0, s2, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb9
bb12:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 16
  ADD s2, t5, s3
  FLW fs0, 0(s2)
  FCVT.W.S s2, fs0, rtz
  ADD a0, s2, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb7
bb13:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 32
  ADD s2, t5, s3
  FLW fs0, 0(s2)
  FCVT.W.S s2, fs0, rtz
  ADD a0, s2, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb5
bb14:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 32
  ADD s2, t5, s3
  ADDI t5, sp, 136
  ADD s4, t5, s3
  FLW fs0, 0(s4)
  ADDI t5, sp, 88
  ADD s4, t5, s3
  FLW fs1, 0(s4)
  FADD.S fs2, fs0, fs1
  FSW fs2, 0(s2)
  ADDI t5, sp, 16
  ADD s2, t5, s3
  ADDI t5, sp, 120
  ADD s4, t5, s3
  FLW fs0, 0(s4)
  ADDI t5, sp, 72
  ADD s4, t5, s3
  FLW fs1, 0(s4)
  FADD.S fs2, fs0, fs1
  FSW fs2, 0(s2)
  ADDI t5, sp, 0
  ADD s2, t5, s3
  ADDI t5, sp, 104
  ADD s4, t5, s3
  FLW fs0, 0(s4)
  ADDI t5, sp, 56
  ADD s4, t5, s3
  FLW fs1, 0(s4)
  FADD.S fs2, fs0, fs1
  FSW fs2, 0(s2)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb3
bb15:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 136
  ADD s2, t5, s3
  FCVT.S.W fs0, s1
  FSW fs0, 0(s2)
  ADDI t5, sp, 120
  ADD s2, t5, s3
  FSW fs0, 0(s2)
  ADDI t5, sp, 104
  ADD s2, t5, s3
  FSW fs0, 0(s2)
  ADDI t5, sp, 88
  ADD s2, t5, s3
  FSW fs0, 0(s2)
  ADDI t5, sp, 72
  ADD s2, t5, s3
  FSW fs0, 0(s2)
  ADDI t5, sp, 56
  ADD s2, t5, s3
  FSW fs0, 0(s2)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb1
add:
  ADDI sp, sp, -128
  SD ra, 0(sp)
  SD s11, 8(sp)
  SD s10, 16(sp)
  SD s9, 24(sp)
  SD s8, 32(sp)
  FSD fs2, 40(sp)
  SD s7, 48(sp)
  SD s6, 56(sp)
  SD s0, 64(sp)
  SD s5, 72(sp)
  FSD fs0, 80(sp)
  SD s1, 88(sp)
  SD s2, 96(sp)
  SD s3, 104(sp)
  SD s4, 112(sp)
  FSD fs1, 120(sp)
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
  LA s11, M
  LW t0, 0(s11)
  SLT s11, s10, t0
  BNE s11, zero, bb19
  # implict jump to bb18
bb18:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s11, 8(sp)
  LD s10, 16(sp)
  LD s9, 24(sp)
  LD s8, 32(sp)
  FLD fs2, 40(sp)
  LD s7, 48(sp)
  LD s6, 56(sp)
  LD s0, 64(sp)
  LD s5, 72(sp)
  FLD fs0, 80(sp)
  LD s1, 88(sp)
  LD s2, 96(sp)
  LD s3, 104(sp)
  LD s4, 112(sp)
  FLD fs1, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb19:
  ADDI s11, zero, 4
  MULW t0, s10, s11
  ADD s11, s6, t0
  ADD t1, s0, t0
  FLW fs0, 0(t1)
  ADD t1, s3, t0
  FLW fs1, 0(t1)
  FADD.S fs2, fs0, fs1
  FSW fs2, 0(s11)
  ADD s11, s7, t0
  ADD t1, s1, t0
  FLW fs0, 0(t1)
  ADD t1, s4, t0
  FLW fs1, 0(t1)
  FADD.S fs2, fs0, fs1
  FSW fs2, 0(s11)
  ADD s11, s9, t0
  ADD t1, s2, t0
  FLW fs0, 0(t1)
  ADD t1, s5, t0
  FLW fs1, 0(t1)
  FADD.S fs2, fs0, fs1
  FSW fs2, 0(s11)
  ADDIW s11, s10, 1
  ADD s8, s11, zero
  JAL zero, bb17
