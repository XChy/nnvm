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
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  SD s5, 104(sp)
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
  SW t4, 8(sp)
  # implict jump to bb1
bb1:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t4, 4(sp)
  BNE t4, zero, bb26
  # implict jump to bb2
bb2:
  ADD t4, zero, zero
  SW t4, 0(sp)
  # implict jump to bb3
bb3:
  LW t4, 0(sp)
  ADD s3, t4, zero
  SLTI s4, s3, 20
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
  SLT s8, s8, s7
  XORI s8, s8, 1
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
  SW t4, 12(sp)
  ADD t4, s8, zero
  SW t4, 16(sp)
  ADDI t2, zero, -1
  BLT t2, s11, bb16
  # implict jump to bb10
bb10:
  LW t2, 496(sp)
  BNE t2, zero, bb15
  # implict jump to bb11
bb11:
  ADDI s0, zero, 1
  # implict jump to bb12
bb12:
  ADD s1, s0, zero
  ADDI s2, zero, 39
  SLT s2, s2, s1
  XORI s2, s2, 1
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
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s5, 104(sp)
  LD s10, 112(sp)
  LD s11, 120(sp)
  ADDI sp, sp, 656
  JALR zero, 0(ra)
bb14:
  SLLIW s2, s1, 2
  ADDI a0, sp, 496
  ADD s2, a0, s2
  LW s2, 0(s2)
  ADD a0, s2, zero
  CALL putint
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb12
bb15:
  LW t2, 496(sp)
  ADD a0, t2, zero
  CALL putint
  JAL zero, bb11
bb16:
  SLLIW s0, s11, 2
  ADDI t4, sp, 392
  ADD s0, t4, s0
  LW s0, 0(s0)
  LW t4, 16(sp)
  ADD s1, t4, zero
  LW t4, 12(sp)
  ADD s2, t4, zero
  ADDI t0, zero, 19
  # implict jump to bb17
bb17:
  ADD t1, t0, zero
  ADD t2, s2, zero
  ADD a0, s1, zero
  ADDI a1, zero, -1
  BLT a1, t1, bb19
  # implict jump to bb18
bb18:
  ADDIW a1, a0, 19
  ADDI a2, zero, 1
  SUBW a2, s11, a2
  ADD s8, a1, zero
  ADD s9, t2, zero
  ADD s10, a2, zero
  JAL zero, bb9
bb19:
  SLLIW s8, a0, 2
  ADDI t5, sp, 496
  ADD s8, t5, s8
  LW s9, 0(s8)
  SLLIW s10, t1, 2
  ADDI t5, sp, 288
  ADD s10, t5, s10
  LW s10, 0(s10)
  MULW s10, s0, s10
  ADDW s9, s9, s10
  SLTI s10, s9, 10
  XORI s10, s10, 1
  BNE s10, zero, bb22
  # implict jump to bb20
bb20:
  SW s9, 0(s8)
  # implict jump to bb21
bb21:
  ADDI s8, zero, 1
  SUBW s8, t1, s8
  ADDI s10, zero, 1
  SUBW s10, a0, s10
  ADD s1, s10, zero
  ADD s2, s9, zero
  ADD t0, s8, zero
  JAL zero, bb17
bb22:
  SW s9, 0(s8)
  ADDI s8, zero, 1
  SUBW s8, a0, s8
  SLLIW s8, s8, 2
  ADDI t5, sp, 496
  ADD s8, t5, s8
  LW s10, 0(s8)
  ADDI t2, zero, 10
  DIVW t2, s9, t2
  ADDW s10, s10, t2
  SW s10, 0(s8)
  JAL zero, bb21
bb23:
  SLLIW s0, s7, 2
  ADDI t5, sp, 496
  ADD s0, t5, s0
  SW zero, 0(s0)
  ADDIW s0, s7, 1
  ADD s6, s0, zero
  JAL zero, bb7
bb24:
  SLLIW s0, s5, 2
  ADDI t5, sp, 392
  ADD s1, t5, s0
  ADDI t5, sp, 208
  ADD s0, t5, s0
  LW s0, 0(s0)
  SW s0, 0(s1)
  ADDIW s0, s5, 1
  ADD s4, s0, zero
  JAL zero, bb5
bb25:
  SLLIW s0, s3, 2
  ADDI t5, sp, 288
  ADD s1, t5, s0
  ADDI t4, sp, 128
  ADD s0, t4, s0
  LW s0, 0(s0)
  SW s0, 0(s1)
  ADDIW s0, s3, 1
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb3
bb26:
  ADDI s0, zero, 1
  LW t4, 4(sp)
  SUBW s0, t4, s0
  SLLIW s1, s0, 2
  ADDI t4, sp, 496
  ADD s1, t4, s1
  SW zero, 0(s1)
  ADD t4, s0, zero
  SW t4, 8(sp)
  JAL zero, bb1
