.global main
.section .bss

.section .data
len:
.word 0x00000014
.section .text
main:
  ADDI sp, sp, -656
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
  SD s10, 112(sp)
  SD s11, 120(sp)
  ADDI s0, zero, 1
  SW s0, 128(sp)
  ADDI s0, sp, 132
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 136
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 140
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 144
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 148
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 152
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 156
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 160
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 164
  ADDI s1, zero, 0
  SW s1, 0(s0)
  ADDI s0, sp, 168
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 172
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 176
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 180
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 184
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 188
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 192
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 196
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 200
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 204
  ADDI s1, zero, 0
  SW s1, 0(s0)
  ADDI s0, zero, 2
  SW s0, 208(sp)
  ADDI s0, sp, 212
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 216
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 220
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 224
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 228
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 232
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 236
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 240
  ADDI s1, zero, 0
  SW s1, 0(s0)
  ADDI s0, sp, 244
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 248
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 252
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 256
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 260
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 264
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 268
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 272
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 276
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 280
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 284
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI t4, zero, 40
  SW t4, 12(sp)
  # implict jump to bb1
bb1:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t4, 16(sp)
  XOR s2, t4, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb26
  # implict jump to bb2
bb2:
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb3
bb3:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  SLTI s4, t4, 20
  BNE s4, zero, bb25
  # implict jump to bb4
bb4:
  ADD s4, zero, zero
  # implict jump to bb5
bb5:
  ADD s5, s4, zero
  SLTI s6, s5, 20
  BNE s6, zero, bb24
  # implict jump to bb6
bb6:
  ADD s6, zero, zero
  # implict jump to bb7
bb7:
  ADD s7, s6, zero
  ADDI s8, zero, 39
  SLT s9, s8, s7
  XORI s8, s9, 1
  BNE s8, zero, bb23
  # implict jump to bb8
bb8:
  ADDI s8, zero, 39
  ADD s9, zero, zero
  ADDI s10, zero, 19
  # implict jump to bb9
bb9:
  ADD s11, s10, zero
  ADD t4, s9, zero
  SW t4, 4(sp)
  ADD t4, s8, zero
  SW t4, 8(sp)
  ADDI t2, zero, -1
  SLT a0, t2, s11
  BNE a0, zero, bb16
  # implict jump to bb10
bb10:
  LW t2, 496(sp)
  XOR a0, t2, zero
  SLTU t2, zero, a0
  BNE t2, zero, bb15
  # implict jump to bb11
bb11:
  ADDI s0, zero, 1
  # implict jump to bb12
bb12:
  ADD s1, s0, zero
  ADDI s2, zero, 39
  SLT s3, s2, s1
  XORI s2, s3, 1
  BNE s2, zero, bb14
  # implict jump to bb13
bb13:
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
  LD s10, 112(sp)
  LD s11, 120(sp)
  ADDI sp, sp, 656
  JALR zero, 0(ra)
bb14:
  SLLIW s2, s1, 2
  ADDI t5, sp, 496
  ADD s3, t5, s2
  LW s2, 0(s3)
  ADD a0, s2, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb12
bb15:
  LW t2, 496(sp)
  ADD a0, t2, zero
  CALL putint
  JAL zero, bb11
bb16:
  SLLIW s0, s11, 2
  ADDI t5, sp, 392
  ADD s1, t5, s0
  LW s0, 0(s1)
  LW t4, 8(sp)
  ADD s1, t4, zero
  LW t4, 4(sp)
  ADD s2, t4, zero
  ADDI s3, zero, 19
  # implict jump to bb17
bb17:
  ADD t0, s3, zero
  ADD t1, s2, zero
  ADD t2, s1, zero
  ADDI a0, zero, -1
  SLT a1, a0, t0
  BNE a1, zero, bb19
  # implict jump to bb18
bb18:
  ADDIW a0, t2, 19
  ADDI a1, zero, 1
  SUBW a2, s11, a1
  ADD s8, a0, zero
  ADD s9, t1, zero
  ADD s10, a2, zero
  JAL zero, bb9
bb19:
  SLLIW s8, t2, 2
  ADDI t5, sp, 496
  ADD s9, t5, s8
  LW s8, 0(s9)
  SLLIW s10, t0, 2
  ADDI t1, sp, 288
  ADD t1, t1, s10
  LW s10, 0(t1)
  MULW t1, s0, s10
  ADDW s10, s8, t1
  SLTI s8, s10, 10
  XORI t1, s8, 1
  BNE t1, zero, bb22
  # implict jump to bb20
bb20:
  SW s10, 0(s9)
  # implict jump to bb21
bb21:
  ADDI s8, zero, 1
  SUBW s9, t0, s8
  ADDI s8, zero, 1
  SUBW t0, t2, s8
  ADD s1, t0, zero
  ADD s2, s10, zero
  ADD s3, s9, zero
  JAL zero, bb17
bb22:
  SW s10, 0(s9)
  ADDI s8, zero, 1
  SUBW s9, t2, s8
  SLLIW s8, s9, 2
  ADDI t5, sp, 496
  ADD s9, t5, s8
  LW s8, 0(s9)
  ADDI t1, zero, 10
  DIVW a0, s10, t1
  ADDW t1, s8, a0
  SW t1, 0(s9)
  JAL zero, bb21
bb23:
  SLLIW s0, s7, 2
  ADDI t5, sp, 496
  ADD s1, t5, s0
  SW zero, 0(s1)
  ADDIW s0, s7, 1
  ADD s6, s0, zero
  JAL zero, bb7
bb24:
  SLLIW s0, s5, 2
  ADDI t5, sp, 392
  ADD s1, t5, s0
  ADDI t5, sp, 208
  ADD s2, t5, s0
  LW s0, 0(s2)
  SW s0, 0(s1)
  ADDIW s0, s5, 1
  ADD s4, s0, zero
  JAL zero, bb5
bb25:
  LW t4, 0(sp)
  SLLIW s0, t4, 2
  ADDI t5, sp, 288
  ADD s1, t5, s0
  ADDI t5, sp, 128
  ADD s2, t5, s0
  LW s0, 0(s2)
  SW s0, 0(s1)
  LW t4, 0(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 20(sp)
  JAL zero, bb3
bb26:
  ADDI s0, zero, 1
  LW t4, 16(sp)
  SUBW s1, t4, s0
  SLLIW s0, s1, 2
  ADDI t5, sp, 496
  ADD s2, t5, s0
  SW zero, 0(s2)
  ADD t4, s1, zero
  SW t4, 12(sp)
  JAL zero, bb1
