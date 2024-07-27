.global main
.section .bss

.section .data
len:
.word 0x00000014
.section .text
main:
  ADDI sp, sp, -688
  SD ra, 56(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  SD s5, 104(sp)
  SD s6, 112(sp)
  SD s7, 120(sp)
  SD s8, 128(sp)
  SD s9, 136(sp)
  SD s10, 304(sp)
  SD s11, 312(sp)
  ADDI s11, zero, 1
  SW s11, 144(sp)
  ADDI s11, sp, 148
  ADDI t0, zero, 2
  SW t0, 0(s11)
  ADDI s11, sp, 152
  ADDI t0, zero, 3
  SW t0, 0(s11)
  ADDI s11, sp, 156
  ADDI t0, zero, 4
  SW t0, 0(s11)
  ADDI s11, sp, 160
  ADDI t0, zero, 5
  SW t0, 0(s11)
  ADDI s11, sp, 164
  ADDI t0, zero, 6
  SW t0, 0(s11)
  ADDI s11, sp, 168
  ADDI t0, zero, 7
  SW t0, 0(s11)
  ADDI s11, sp, 172
  ADDI t0, zero, 8
  SW t0, 0(s11)
  ADDI s11, sp, 176
  ADDI t0, zero, 9
  SW t0, 0(s11)
  ADDI s11, sp, 180
  ADDI t0, zero, 0
  SW t0, 0(s11)
  ADDI s11, sp, 184
  ADDI t0, zero, 1
  SW t0, 0(s11)
  ADDI s11, sp, 188
  ADDI t0, zero, 2
  SW t0, 0(s11)
  ADDI s11, sp, 192
  ADDI t0, zero, 3
  SW t0, 0(s11)
  ADDI s11, sp, 196
  ADDI t0, zero, 4
  SW t0, 0(s11)
  ADDI s11, sp, 200
  ADDI t0, zero, 5
  SW t0, 0(s11)
  ADDI s11, sp, 204
  ADDI t0, zero, 6
  SW t0, 0(s11)
  ADDI s11, sp, 208
  ADDI t0, zero, 7
  SW t0, 0(s11)
  ADDI s11, sp, 212
  ADDI t0, zero, 8
  SW t0, 0(s11)
  ADDI s11, sp, 216
  ADDI t0, zero, 9
  SW t0, 0(s11)
  ADDI s11, sp, 220
  ADDI t0, zero, 0
  SW t0, 0(s11)
  ADDI s11, zero, 2
  SW s11, 224(sp)
  ADDI s11, sp, 228
  ADDI t0, zero, 3
  SW t0, 0(s11)
  ADDI s11, sp, 232
  ADDI t0, zero, 4
  SW t0, 0(s11)
  ADDI s11, sp, 236
  ADDI t0, zero, 2
  SW t0, 0(s11)
  ADDI s11, sp, 240
  ADDI t0, zero, 5
  SW t0, 0(s11)
  ADDI s11, sp, 244
  ADDI t0, zero, 7
  SW t0, 0(s11)
  ADDI s11, sp, 248
  ADDI t0, zero, 9
  SW t0, 0(s11)
  ADDI s11, sp, 252
  ADDI t0, zero, 9
  SW t0, 0(s11)
  ADDI s11, sp, 256
  ADDI t0, zero, 0
  SW t0, 0(s11)
  ADDI s11, sp, 260
  ADDI t0, zero, 1
  SW t0, 0(s11)
  ADDI s11, sp, 264
  ADDI t0, zero, 9
  SW t0, 0(s11)
  ADDI s11, sp, 268
  ADDI t0, zero, 8
  SW t0, 0(s11)
  ADDI s11, sp, 272
  ADDI t0, zero, 7
  SW t0, 0(s11)
  ADDI s11, sp, 276
  ADDI t0, zero, 6
  SW t0, 0(s11)
  ADDI s11, sp, 280
  ADDI t0, zero, 4
  SW t0, 0(s11)
  ADDI s11, sp, 284
  ADDI t0, zero, 3
  SW t0, 0(s11)
  ADDI s11, sp, 288
  ADDI t0, zero, 2
  SW t0, 0(s11)
  ADDI s11, sp, 292
  ADDI t0, zero, 1
  SW t0, 0(s11)
  ADDI s11, sp, 296
  ADDI t0, zero, 2
  SW t0, 0(s11)
  ADDI s11, sp, 300
  ADDI t0, zero, 2
  SW t0, 0(s11)
  ADDI s11, zero, 0
  XORI s11, s11, 40
  BNE s11, zero, bb45
  # implict jump to bb1
bb1:
  SLTI t0, zero, 20
  BNE t0, zero, bb40
  # implict jump to bb2
bb2:
  SLTI t1, zero, 20
  BNE t1, zero, bb35
  # implict jump to bb3
bb3:
  ADDI t2, zero, 39
  SLT t2, t2, zero
  XORI t2, t2, 1
  BNE t2, zero, bb30
  # implict jump to bb4
bb4:
  ADDI a0, zero, -1
  SLTI a0, a0, 19
  BNE a0, zero, bb14
  # implict jump to bb5
bb5:
  LW s2, 528(sp)
  BNE s2, zero, bb13
  # implict jump to bb6
bb6:
  ADDI s2, zero, 39
  SLTI s2, s2, 1
  XORI s2, s2, 1
  BNE s2, zero, bb8
  # implict jump to bb7
bb7:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  LD s5, 104(sp)
  LD s6, 112(sp)
  LD s7, 120(sp)
  LD s8, 128(sp)
  LD s9, 136(sp)
  LD s10, 304(sp)
  LD s11, 312(sp)
  ADDI sp, sp, 688
  JALR zero, 0(ra)
bb8:
  ADDI s2, zero, 1
  # implict jump to bb9
bb9:
  # implict jump to bb10
bb10:
  ADD s7, s2, zero
  SLLIW s9, s7, 2
  ADDI a0, sp, 528
  ADD s9, a0, s9
  LW s9, 0(s9)
  ADD a0, s9, zero
  CALL putint
  ADDIW s0, s7, 1
  # implict jump to bb11
bb11:
  ADDI s7, zero, 39
  SLT s7, s7, s0
  XORI s7, s7, 1
  BNE s7, zero, bb12
  JAL zero, bb7
bb12:
  ADD s2, s0, zero
  JAL zero, bb10
bb13:
  LW s2, 528(sp)
  ADD a0, s2, zero
  CALL putint
  JAL zero, bb6
bb14:
  ADDI a0, zero, 39
  ADDI a1, zero, 19
  # implict jump to bb15
bb15:
  ADD t4, a1, zero
  SW t4, 16(sp)
  ADD t4, a0, zero
  SW t4, 40(sp)
  ADD t4, zero, zero
  SW t4, 0(sp)
  # implict jump to bb16
bb16:
  LW t4, 0(sp)
  ADD a3, t4, zero
  LW t4, 40(sp)
  ADD a4, t4, zero
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t4, 4(sp)
  SLLIW a6, t4, 2
  ADDI t4, sp, 424
  ADD a6, t4, a6
  LW t4, 0(a6)
  SW t4, 44(sp)
  ADDI a7, zero, -1
  SLTI a7, a7, 19
  BNE a7, zero, bb21
  # implict jump to bb17
bb17:
  ADD a7, a4, zero
  # implict jump to bb18
bb18:
  ADD s4, a3, zero
  ADDIW s6, a7, 19
  ADDI s2, zero, 1
  LW t4, 4(sp)
  SUBW s8, t4, s2
  # implict jump to bb19
bb19:
  ADDI s2, zero, -1
  BLT s2, s8, bb20
  JAL zero, bb5
bb20:
  ADD t4, s8, zero
  SW t4, 16(sp)
  ADD t4, s6, zero
  SW t4, 40(sp)
  ADD t4, s4, zero
  SW t4, 0(sp)
  JAL zero, bb16
bb21:
  ADDI t6, zero, 19
  # implict jump to bb22
bb22:
  ADD t4, t6, zero
  SW t4, 8(sp)
  ADD t4, a4, zero
  SW t4, 48(sp)
  # implict jump to bb23
bb23:
  LW t4, 48(sp)
  ADD s11, t4, zero
  LW t4, 8(sp)
  ADD s7, t4, zero
  SLLIW t0, s11, 2
  ADDI t5, sp, 528
  ADD t0, t5, t0
  LW s9, 0(t0)
  SLLIW t1, s7, 2
  ADDI t4, sp, 320
  ADD t1, t4, t1
  LW t1, 0(t1)
  LW t4, 44(sp)
  MULW t1, t4, t1
  ADDW s2, s9, t1
  SLTI s9, s2, 10
  XORI s9, s9, 1
  BNE s9, zero, bb29
  # implict jump to bb24
bb24:
  SW s2, 0(t0)
  # implict jump to bb25
bb25:
  ADDI s9, zero, 1
  SUBW s3, s7, s9
  ADDI s7, zero, 1
  SUBW s1, s11, s7
  # implict jump to bb26
bb26:
  ADDI s7, zero, -1
  BLT s7, s3, bb28
  # implict jump to bb27
bb27:
  ADD a7, s1, zero
  ADD a3, s2, zero
  JAL zero, bb18
bb28:
  ADD t4, s3, zero
  SW t4, 8(sp)
  ADD t4, s1, zero
  SW t4, 48(sp)
  JAL zero, bb23
bb29:
  SW s2, 0(t0)
  ADDI s9, zero, 1
  SUBW s9, s11, s9
  SLLIW s9, s9, 2
  ADDI t0, sp, 528
  ADD s9, t0, s9
  LW t0, 0(s9)
  ADDI t1, zero, 10
  DIVW t1, s2, t1
  ADDW t0, t0, t1
  SW t0, 0(s9)
  JAL zero, bb25
bb30:
  # implict jump to bb31
bb31:
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb32
bb32:
  LW t4, 12(sp)
  ADD a0, t4, zero
  SLLIW a1, a0, 2
  ADDI t5, sp, 528
  ADD a1, t5, a1
  SW zero, 0(a1)
  ADDIW s10, a0, 1
  # implict jump to bb33
bb33:
  ADDI a0, zero, 39
  SLT a0, a0, s10
  XORI a0, a0, 1
  BNE a0, zero, bb34
  JAL zero, bb4
bb34:
  ADD t4, s10, zero
  SW t4, 12(sp)
  JAL zero, bb32
bb35:
  # implict jump to bb36
bb36:
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb37
bb37:
  LW t4, 36(sp)
  ADD t2, t4, zero
  SLLIW a0, t2, 2
  ADDI a1, sp, 424
  ADD a1, a1, a0
  ADDI t5, sp, 224
  ADD a0, t5, a0
  LW a0, 0(a0)
  SW a0, 0(a1)
  ADDIW s5, t2, 1
  # implict jump to bb38
bb38:
  SLTI t2, s5, 20
  BNE t2, zero, bb39
  JAL zero, bb3
bb39:
  ADD t4, s5, zero
  SW t4, 36(sp)
  JAL zero, bb37
bb40:
  # implict jump to bb41
bb41:
  ADD t4, zero, zero
  SW t4, 28(sp)
  # implict jump to bb42
bb42:
  LW t4, 28(sp)
  ADD t1, t4, zero
  SLLIW t2, t1, 2
  ADDI a0, sp, 320
  ADD a0, a0, t2
  ADDI t4, sp, 144
  ADD t2, t4, t2
  LW t2, 0(t2)
  SW t2, 0(a0)
  ADDIW t4, t1, 1
  SW t4, 32(sp)
  # implict jump to bb43
bb43:
  LW t4, 32(sp)
  SLTI t1, t4, 20
  BNE t1, zero, bb44
  JAL zero, bb2
bb44:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  JAL zero, bb42
bb45:
  ADDI s11, zero, 40
  # implict jump to bb46
bb46:
  ADD t4, s11, zero
  SW t4, 20(sp)
  # implict jump to bb47
bb47:
  LW t4, 20(sp)
  ADD t0, t4, zero
  ADDI t1, zero, 1
  SUBW t4, t0, t1
  SW t4, 24(sp)
  LW t4, 24(sp)
  SLLIW t0, t4, 2
  ADDI t5, sp, 528
  ADD t0, t5, t0
  SW zero, 0(t0)
  # implict jump to bb48
bb48:
  LW t4, 24(sp)
  BNE t4, zero, bb49
  JAL zero, bb1
bb49:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb47
