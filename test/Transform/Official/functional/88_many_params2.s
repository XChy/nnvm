.global main
.global func
.section .bss
.section .data
.section .text
main:
  LUI t0, 1048569
  ADDIW t0, t0, -368
  ADD sp, sp, t0
  SD ra, 48(sp)
  SD s0, 56(sp)
  SD s3, 72(sp)
  LUI t5, 7
  ADDIW t5, t5, 272
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 288
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 296
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 304
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 320
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 328
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 344
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 352
  ADD t5, t5, sp
  SD s11, 0(t5)
  ADDI s6, zero, 0
  LUI s7, 1
  ADDIW s7, s7, -9
  XOR s6, s6, s7
  BNE s6, zero, bb26
  # implict jump to bb1
bb1:
  LUI s7, 1
  ADDIW s7, s7, -969
  XOR s7, zero, s7
  BNE s7, zero, bb21
  # implict jump to bb2
bb2:
  LUI s8, 1
  ADDIW s8, s8, 464
  LUI t5, 3
  ADDIW t5, t5, 304
  ADD t5, t5, sp
  ADD s8, t5, s8
  ADDI s9, zero, 6
  SW s9, 0(s8)
  LUI s9, 1
  ADDIW s9, s9, 472
  LUI t5, 3
  ADDIW t5, t5, 304
  ADD t5, t5, sp
  ADD s9, t5, s9
  ADDI s10, zero, 7
  SW s10, 0(s9)
  LUI s10, 1
  ADDIW s10, s10, 476
  LUI t5, 3
  ADDIW t5, t5, 304
  ADD t5, t5, sp
  ADD s10, t5, s10
  ADDI s11, zero, 4
  SW s11, 0(s10)
  LUI s10, 1
  ADDIW s10, s10, 488
  LUI t5, 3
  ADDIW t5, t5, 304
  ADD t5, t5, sp
  ADD s10, t5, s10
  ADDI s11, zero, 9
  SW s11, 0(s10)
  LUI s10, 1
  ADDIW s10, s10, 504
  LUI t5, 3
  ADDIW t5, t5, 304
  ADD t5, t5, sp
  ADD s10, t5, s10
  ADDI s11, zero, 11
  SW s11, 0(s10)
  ADDI s10, sp, 1500
  ADDI s11, zero, 1
  SW s11, 0(s10)
  ADDI s10, sp, 1504
  ADDI s11, zero, 2
  SW s11, 0(s10)
  ADDI s10, sp, 1508
  ADDI s11, zero, 3
  SW s11, 0(s10)
  ADDI s11, sp, 1532
  ADDI ra, zero, 9
  SW ra, 0(s11)
  LW s8, 0(s8)
  LW t4, 0(s9)
  SW t4, 0(sp)
  LUI s11, 1
  ADDIW s11, s11, 460
  LUI t4, 3
  ADDIW t4, t4, 304
  ADD t4, t4, sp
  ADD t4, t4, s11
  SD t4, 64(sp)
  LW t4, 0(s10)
  SW t4, 4(sp)
  ADDI t4, sp, 1496
  LUI t3, 7
  ADDIW t3, t3, 280
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 7
  ADDIW t3, t3, 280
  ADD t3, t3, sp
  LD t3, 0(t3)
  LW t4, 0(t3)
  SW t4, 40(sp)
  LUI t1, 2
  ADDIW t1, t1, -152
  ADDI t4, sp, 80
  ADD t1, t4, t1
  LW t4, 0(t1)
  SW t4, 32(sp)
  LUI t2, 3
  ADDIW t2, t2, -180
  ADDI t4, sp, 80
  ADD t2, t4, t2
  LW t4, 0(t2)
  SW t4, 36(sp)
  SLTI a0, zero, 10
  BNE a0, zero, bb16
  # implict jump to bb3
bb3:
  ADDI a0, zero, 10
  CALL putch
  LW t4, 0(sp)
  SLLIW s6, t4, 2
  LD t4, 64(sp)
  ADD s6, t4, s6
  LW s6, 0(s6)
  ADD a0, s6, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t4, 36(sp)
  SLTI s6, t4, 10
  BNE s6, zero, bb11
  # implict jump to bb4
bb4:
  LW t4, 4(sp)
  LW t3, 40(sp)
  ADDW s2, t4, t3
  ADDI s7, zero, 3
  MULW s2, s2, s7
  SLT s7, s2, zero
  XORI s7, s7, 1
  BNE s7, zero, bb6
  # implict jump to bb5
bb5:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 48(sp)
  LD s0, 56(sp)
  LD s3, 72(sp)
  LUI t5, 7
  ADDIW t5, t5, 272
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 288
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 296
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 304
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 320
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 328
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 344
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 352
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t0, 7
  ADDIW t0, t0, 368
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb6:
  # implict jump to bb7
bb7:
  # implict jump to bb8
bb8:
  ADD s7, s2, zero
  SLLIW s9, s7, 2
  LUI t4, 7
  ADDIW t4, t4, 280
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s9, t4, s9
  LW s9, 0(s9)
  ADD a0, s9, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI s9, zero, 1
  SUBW s0, s7, s9
  # implict jump to bb9
bb9:
  SLT s7, s0, zero
  XORI s7, s7, 1
  BNE s7, zero, bb10
  JAL zero, bb5
bb10:
  ADD s2, s0, zero
  JAL zero, bb8
bb11:
  # implict jump to bb12
bb12:
  LW t4, 32(sp)
  ADD s6, t4, zero
  LW t4, 36(sp)
  ADD s1, t4, zero
  # implict jump to bb13
bb13:
  ADD s7, s1, zero
  ADD s2, s6, zero
  SLLIW s10, s7, 2
  LUI t4, 7
  ADDIW t4, t4, 280
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s10, t4, s10
  LUI s11, 31
  ADDIW s11, s11, 1899
  MULW s11, s2, s11
  LUI s9, 1
  ADDIW s9, s9, -372
  REMW s9, s11, s9
  SW s9, 0(s10)
  ADDIW s3, s7, 1
  ADDIW s5, s2, 7
  # implict jump to bb14
bb14:
  SLTI s2, s3, 10
  BNE s2, zero, bb15
  JAL zero, bb4
bb15:
  ADD s6, s5, zero
  ADD s1, s3, zero
  JAL zero, bb13
bb16:
  # implict jump to bb17
bb17:
  ADD t4, zero, zero
  SW t4, 24(sp)
  # implict jump to bb18
bb18:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  ADDI a2, zero, 236
  MULW a2, s8, a2
  ADDI t4, sp, 80
  ADD a2, t4, a2
  LW t4, 28(sp)
  SLLIW a3, t4, 2
  ADD a2, a2, a3
  LW a2, 0(a2)
  ADD a0, a2, zero
  CALL putint
  LW t4, 28(sp)
  ADDIW s4, t4, 1
  # implict jump to bb19
bb19:
  SLTI s6, s4, 10
  BNE s6, zero, bb20
  JAL zero, bb3
bb20:
  ADD t4, s4, zero
  SW t4, 24(sp)
  JAL zero, bb18
bb21:
  LUI s7, 1
  ADDIW s7, s7, -969
  ADD s7, zero, s7
  # implict jump to bb22
bb22:
  ADD t4, s7, zero
  SW t4, 12(sp)
  # implict jump to bb23
bb23:
  LW t4, 12(sp)
  ADD s8, t4, zero
  ADDI s9, zero, 1
  SUBW t4, s8, s9
  SW t4, 8(sp)
  LW t4, 8(sp)
  SLLIW s8, t4, 2
  ADDI t5, sp, 80
  ADD s8, t5, s8
  SW zero, 0(s8)
  # implict jump to bb24
bb24:
  LW t4, 8(sp)
  BNE t4, zero, bb25
  JAL zero, bb2
bb25:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  JAL zero, bb23
bb26:
  LUI s6, 1
  ADDIW s6, s6, -9
  ADD s6, zero, s6
  # implict jump to bb27
bb27:
  ADD t4, s6, zero
  SW t4, 20(sp)
  # implict jump to bb28
bb28:
  LW t4, 20(sp)
  ADD s7, t4, zero
  ADDI s8, zero, 1
  SUBW t4, s7, s8
  SW t4, 16(sp)
  LW t4, 16(sp)
  SLLIW s7, t4, 2
  LUI t5, 3
  ADDIW t5, t5, 304
  ADD t5, t5, sp
  ADD s7, t5, s7
  SW zero, 0(s7)
  # implict jump to bb29
bb29:
  LW t4, 16(sp)
  BNE t4, zero, bb30
  JAL zero, bb1
bb30:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb28
func:
  ADDI sp, sp, -128
  SD s3, 16(sp)
  SD s4, 24(sp)
  SD s5, 32(sp)
  SD s6, 40(sp)
  SD ra, 48(sp)
  SD s0, 56(sp)
  SD s1, 64(sp)
  SD s2, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  SD s7, 104(sp)
  SD s8, 112(sp)
  ADD s3, a0, zero
  ADD s4, a1, zero
  ADD s5, a2, zero
  ADD s6, a3, zero
  ADD s7, a4, zero
  ADD s8, a5, zero
  ADD s9, a6, zero
  ADD s10, a7, zero
  ADDI t5, sp, 128
  ADD s11, t5, zero
  LW t4, 0(s11)
  SW t4, 8(sp)
  SLTI ra, zero, 10
  BNE ra, zero, bb39
  # implict jump to bb32
bb32:
  ADDI a0, zero, 10
  CALL putch
  SLLIW s11, s5, 2
  ADD s11, s6, s11
  LW s11, 0(s11)
  ADD a0, s11, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t4, 8(sp)
  SLTI s11, t4, 10
  BNE s11, zero, bb34
  # implict jump to bb33
bb33:
  ADDW t1, s7, s8
  ADD a0, t1, zero
  LD s3, 16(sp)
  LD s4, 24(sp)
  LD s5, 32(sp)
  LD s6, 40(sp)
  LD ra, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb34:
  # implict jump to bb35
bb35:
  ADD s11, s10, zero
  LW t4, 8(sp)
  ADD t0, t4, zero
  # implict jump to bb36
bb36:
  ADD t1, t0, zero
  ADD t2, s11, zero
  SLLIW a1, t1, 2
  ADD a1, s9, a1
  LUI a2, 31
  ADDIW a2, a2, 1899
  MULW a2, t2, a2
  LUI a3, 1
  ADDIW a3, a3, -372
  REMW a2, a2, a3
  SW a2, 0(a1)
  ADDIW s1, t1, 1
  ADDIW s0, t2, 7
  # implict jump to bb37
bb37:
  SLTI t1, s1, 10
  BNE t1, zero, bb38
  JAL zero, bb33
bb38:
  ADD s11, s0, zero
  ADD t0, s1, zero
  JAL zero, bb36
bb39:
  # implict jump to bb40
bb40:
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb41
bb41:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  ADDI t1, zero, 236
  MULW t1, s3, t1
  ADD t1, s4, t1
  LW t4, 0(sp)
  SLLIW t2, t4, 2
  ADD t1, t1, t2
  LW t1, 0(t1)
  ADD a0, t1, zero
  CALL putint
  LW t4, 0(sp)
  ADDIW s2, t4, 1
  # implict jump to bb42
bb42:
  SLTI s11, s2, 10
  BNE s11, zero, bb43
  JAL zero, bb32
bb43:
  ADD t4, s2, zero
  SW t4, 4(sp)
  JAL zero, bb41
