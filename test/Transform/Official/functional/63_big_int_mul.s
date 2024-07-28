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
  SD s11, 144(sp)
  SD s10, 312(sp)
  ADDI t0, zero, 1
  SW t0, 152(sp)
  ADDI t0, sp, 156
  ADDI t1, zero, 2
  SW t1, 0(t0)
  ADDI t0, sp, 160
  ADDI t1, zero, 3
  SW t1, 0(t0)
  ADDI t0, sp, 164
  ADDI t1, zero, 4
  SW t1, 0(t0)
  ADDI t0, sp, 168
  ADDI t1, zero, 5
  SW t1, 0(t0)
  ADDI t0, sp, 172
  ADDI t1, zero, 6
  SW t1, 0(t0)
  ADDI t0, sp, 176
  ADDI t1, zero, 7
  SW t1, 0(t0)
  ADDI t0, sp, 180
  ADDI t1, zero, 8
  SW t1, 0(t0)
  ADDI t0, sp, 184
  ADDI t1, zero, 9
  SW t1, 0(t0)
  ADDI t0, sp, 188
  ADDI t1, zero, 0
  SW t1, 0(t0)
  ADDI t0, sp, 192
  ADDI t1, zero, 1
  SW t1, 0(t0)
  ADDI t0, sp, 196
  ADDI t1, zero, 2
  SW t1, 0(t0)
  ADDI t0, sp, 200
  ADDI t1, zero, 3
  SW t1, 0(t0)
  ADDI t0, sp, 204
  ADDI t1, zero, 4
  SW t1, 0(t0)
  ADDI t0, sp, 208
  ADDI t1, zero, 5
  SW t1, 0(t0)
  ADDI t0, sp, 212
  ADDI t1, zero, 6
  SW t1, 0(t0)
  ADDI t0, sp, 216
  ADDI t1, zero, 7
  SW t1, 0(t0)
  ADDI t0, sp, 220
  ADDI t1, zero, 8
  SW t1, 0(t0)
  ADDI t0, sp, 224
  ADDI t1, zero, 9
  SW t1, 0(t0)
  ADDI t0, sp, 228
  ADDI t1, zero, 0
  SW t1, 0(t0)
  ADDI t0, zero, 2
  SW t0, 232(sp)
  ADDI t0, sp, 236
  ADDI t1, zero, 3
  SW t1, 0(t0)
  ADDI t0, sp, 240
  ADDI t1, zero, 4
  SW t1, 0(t0)
  ADDI t0, sp, 244
  ADDI t1, zero, 2
  SW t1, 0(t0)
  ADDI t0, sp, 248
  ADDI t1, zero, 5
  SW t1, 0(t0)
  ADDI t0, sp, 252
  ADDI t1, zero, 7
  SW t1, 0(t0)
  ADDI t0, sp, 256
  ADDI t1, zero, 9
  SW t1, 0(t0)
  ADDI t0, sp, 260
  ADDI t1, zero, 9
  SW t1, 0(t0)
  ADDI t0, sp, 264
  ADDI t1, zero, 0
  SW t1, 0(t0)
  ADDI t0, sp, 268
  ADDI t1, zero, 1
  SW t1, 0(t0)
  ADDI t0, sp, 272
  ADDI t1, zero, 9
  SW t1, 0(t0)
  ADDI t0, sp, 276
  ADDI t1, zero, 8
  SW t1, 0(t0)
  ADDI t0, sp, 280
  ADDI t1, zero, 7
  SW t1, 0(t0)
  ADDI t0, sp, 284
  ADDI t1, zero, 6
  SW t1, 0(t0)
  ADDI t0, sp, 288
  ADDI t1, zero, 4
  SW t1, 0(t0)
  ADDI t0, sp, 292
  ADDI t1, zero, 3
  SW t1, 0(t0)
  ADDI t0, sp, 296
  ADDI t1, zero, 2
  SW t1, 0(t0)
  ADDI t0, sp, 300
  ADDI t1, zero, 1
  SW t1, 0(t0)
  ADDI t0, sp, 304
  ADDI t1, zero, 2
  SW t1, 0(t0)
  ADDI t0, sp, 308
  ADDI t1, zero, 2
  SW t1, 0(t0)
  ADDI t0, zero, 0
  XORI t0, t0, 40
  BNE t0, zero, bb45
  # implict jump to bb1
bb1:
  SLTI t1, zero, 20
  BNE t1, zero, bb40
  # implict jump to bb2
bb2:
  SLTI t2, zero, 20
  BNE t2, zero, bb35
  # implict jump to bb3
bb3:
  ADDI a0, zero, 39
  SLT a0, a0, zero
  XORI a0, a0, 1
  BNE a0, zero, bb30
  # implict jump to bb4
bb4:
  ADDI a1, zero, -1
  SLTI a1, a1, 19
  BNE a1, zero, bb14
  # implict jump to bb5
bb5:
  LW s3, 528(sp)
  BNE s3, zero, bb13
  # implict jump to bb6
bb6:
  ADDI s3, zero, 39
  SLTI s3, s3, 1
  XORI s3, s3, 1
  BNE s3, zero, bb8
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
  LD s11, 144(sp)
  LD s10, 312(sp)
  ADDI sp, sp, 688
  JALR zero, 0(ra)
bb8:
  ADDI s3, zero, 1
  # implict jump to bb9
bb9:
  # implict jump to bb10
bb10:
  ADD s6, s3, zero
  SLLIW s7, s6, 2
  ADDI a0, sp, 528
  ADD s7, a0, s7
  LW s7, 0(s7)
  ADD a0, s7, zero
  CALL putint
  ADDIW s11, s6, 1
  # implict jump to bb11
bb11:
  ADDI s6, zero, 39
  SLT s6, s6, s11
  XORI s6, s6, 1
  BNE s6, zero, bb12
  JAL zero, bb7
bb12:
  ADD s3, s11, zero
  JAL zero, bb10
bb13:
  LW s3, 528(sp)
  ADD a0, s3, zero
  CALL putint
  JAL zero, bb6
bb14:
  ADDI a1, zero, 39
  ADDI a2, zero, 19
  # implict jump to bb15
bb15:
  ADDI a3, zero, -1
  SLTI s4, a3, 19
  ADD t4, a2, zero
  SW t4, 48(sp)
  ADD t4, a1, zero
  SW t4, 40(sp)
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb16
bb16:
  LW t4, 36(sp)
  ADD a4, t4, zero
  LW t4, 40(sp)
  ADD a5, t4, zero
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 8(sp)
  SLLIW a7, t4, 2
  ADDI t4, sp, 424
  ADD a7, t4, a7
  LW t4, 0(a7)
  SW t4, 44(sp)
  BNE s4, zero, bb21
  # implict jump to bb17
bb17:
  ADD t6, a5, zero
  # implict jump to bb18
bb18:
  ADD s5, a4, zero
  ADDIW s1, t6, 19
  ADDI s3, zero, 1
  LW t4, 8(sp)
  SUBW s10, t4, s3
  # implict jump to bb19
bb19:
  ADDI s3, zero, -1
  BLT s3, s10, bb20
  JAL zero, bb5
bb20:
  ADD t4, s10, zero
  SW t4, 48(sp)
  ADD t4, s1, zero
  SW t4, 40(sp)
  ADD t4, s5, zero
  SW t4, 36(sp)
  JAL zero, bb16
bb21:
  ADDI t0, zero, 19
  # implict jump to bb22
bb22:
  ADD t4, t0, zero
  SW t4, 52(sp)
  ADD t4, a5, zero
  SW t4, 4(sp)
  # implict jump to bb23
bb23:
  LW t4, 4(sp)
  ADD s6, t4, zero
  LW t4, 52(sp)
  ADD t1, t4, zero
  SLLIW s3, s6, 2
  ADDI t2, sp, 528
  ADD s3, t2, s3
  LW t2, 0(s3)
  SLLIW s8, t1, 2
  ADDI t4, sp, 320
  ADD s8, t4, s8
  LW s8, 0(s8)
  LW t4, 44(sp)
  MULW s8, t4, s8
  ADDW s7, t2, s8
  SLTI s8, s7, 10
  XORI s8, s8, 1
  BNE s8, zero, bb29
  # implict jump to bb24
bb24:
  SW s7, 0(s3)
  # implict jump to bb25
bb25:
  ADDI s3, zero, 1
  SUBW s2, t1, s3
  ADDI s3, zero, 1
  SUBW s0, s6, s3
  # implict jump to bb26
bb26:
  ADDI s3, zero, -1
  BLT s3, s2, bb28
  # implict jump to bb27
bb27:
  ADD t6, s0, zero
  ADD a4, s7, zero
  JAL zero, bb18
bb28:
  ADD t4, s2, zero
  SW t4, 52(sp)
  ADD t4, s0, zero
  SW t4, 4(sp)
  JAL zero, bb23
bb29:
  SW s7, 0(s3)
  ADDI s3, zero, 1
  SUBW s3, s6, s3
  SLLIW s3, s3, 2
  ADDI t5, sp, 528
  ADD s3, t5, s3
  LW s8, 0(s3)
  ADDI t2, zero, 10
  DIVW t2, s7, t2
  ADDW s8, s8, t2
  SW s8, 0(s3)
  JAL zero, bb25
bb30:
  # implict jump to bb31
bb31:
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb32
bb32:
  LW t4, 12(sp)
  ADD a1, t4, zero
  SLLIW a2, a1, 2
  ADDI t5, sp, 528
  ADD a2, t5, a2
  SW zero, 0(a2)
  ADDIW s9, a1, 1
  # implict jump to bb33
bb33:
  ADDI a1, zero, 39
  SLT a1, a1, s9
  XORI a1, a1, 1
  BNE a1, zero, bb34
  JAL zero, bb4
bb34:
  ADD t4, s9, zero
  SW t4, 12(sp)
  JAL zero, bb32
bb35:
  # implict jump to bb36
bb36:
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb37
bb37:
  LW t4, 20(sp)
  ADD a0, t4, zero
  SLLIW a1, a0, 2
  ADDI a2, sp, 424
  ADD a2, a2, a1
  ADDI t4, sp, 232
  ADD a1, t4, a1
  LW a1, 0(a1)
  SW a1, 0(a2)
  ADDIW t4, a0, 1
  SW t4, 16(sp)
  # implict jump to bb38
bb38:
  LW t4, 16(sp)
  SLTI a0, t4, 20
  BNE a0, zero, bb39
  JAL zero, bb3
bb39:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb37
bb40:
  # implict jump to bb41
bb41:
  ADD t4, zero, zero
  SW t4, 28(sp)
  # implict jump to bb42
bb42:
  LW t4, 28(sp)
  ADD t2, t4, zero
  SLLIW a0, t2, 2
  ADDI a1, sp, 320
  ADD a1, a1, a0
  ADDI t4, sp, 152
  ADD a0, t4, a0
  LW a0, 0(a0)
  SW a0, 0(a1)
  ADDIW t4, t2, 1
  SW t4, 24(sp)
  # implict jump to bb43
bb43:
  LW t4, 24(sp)
  SLTI t2, t4, 20
  BNE t2, zero, bb44
  JAL zero, bb2
bb44:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  JAL zero, bb42
bb45:
  ADDI t0, zero, 40
  # implict jump to bb46
bb46:
  ADD t4, t0, zero
  SW t4, 0(sp)
  # implict jump to bb47
bb47:
  LW t4, 0(sp)
  ADD t1, t4, zero
  ADDI t2, zero, 1
  SUBW t4, t1, t2
  SW t4, 32(sp)
  LW t4, 32(sp)
  SLLIW t1, t4, 2
  ADDI t5, sp, 528
  ADD t1, t5, t1
  SW zero, 0(t1)
  # implict jump to bb48
bb48:
  LW t4, 32(sp)
  BNE t4, zero, bb49
  JAL zero, bb1
bb49:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  JAL zero, bb47
