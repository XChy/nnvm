.global main
.global func
.section .bss
.section .data
.section .text
main:
  LUI t0, 1048569
  ADDIW t0, t0, -352
  ADD sp, sp, t0
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 72(sp)
  LUI t5, 7
  ADDIW t5, t5, 272
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 280
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 288
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 296
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 304
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 320
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 328
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 344
  ADD t5, t5, sp
  SD s6, 0(t5)
  ADDI s7, zero, 0
  LUI s8, 1
  ADDIW s8, s8, -9
  XOR s7, s7, s8
  BNE s7, zero, bb26
  # implict jump to bb1
bb1:
  LUI s8, 1
  ADDIW s8, s8, -969
  XOR s8, zero, s8
  BNE s8, zero, bb21
  # implict jump to bb2
bb2:
  LUI s9, 1
  ADDIW s9, s9, 464
  LUI t5, 3
  ADDIW t5, t5, 304
  ADD t5, t5, sp
  ADD s9, t5, s9
  ADDI s10, zero, 6
  SW s10, 0(s9)
  LUI s9, 1
  ADDIW s9, s9, 472
  LUI t5, 3
  ADDIW t5, t5, 304
  ADD t5, t5, sp
  ADD s9, t5, s9
  ADDI s10, zero, 7
  SW s10, 0(s9)
  LUI s9, 1
  ADDIW s9, s9, 476
  LUI t5, 3
  ADDIW t5, t5, 304
  ADD t5, t5, sp
  ADD s9, t5, s9
  ADDI s10, zero, 4
  SW s10, 0(s9)
  LUI s9, 1
  ADDIW s9, s9, 488
  LUI t5, 3
  ADDIW t5, t5, 304
  ADD t5, t5, sp
  ADD s9, t5, s9
  ADDI s10, zero, 9
  SW s10, 0(s9)
  LUI s9, 1
  ADDIW s9, s9, 504
  LUI t5, 3
  ADDIW t5, t5, 304
  ADD t5, t5, sp
  ADD s9, t5, s9
  ADDI s10, zero, 11
  SW s10, 0(s9)
  ADDI s9, zero, 1
  SW s9, 1500(sp)
  ADDI s9, zero, 2
  SW s9, 1504(sp)
  ADDI s9, zero, 3
  SW s9, 1508(sp)
  ADDI s9, zero, 9
  SW s9, 1532(sp)
  LUI s9, 1
  ADDIW s9, s9, 460
  LUI t4, 3
  ADDIW t4, t4, 304
  ADD t4, t4, sp
  ADD s9, t4, s9
  ADDI t4, sp, 1496
  SD t4, 56(sp)
  LW t4, 1496(sp)
  SW t4, 0(sp)
  LUI ra, 2
  ADDIW ra, ra, -152
  ADDI t4, sp, 80
  ADD ra, t4, ra
  LW t4, 0(ra)
  SW t4, 20(sp)
  LUI t0, 3
  ADDIW t0, t0, -180
  ADDI t4, sp, 80
  ADD t0, t4, t0
  LW t4, 0(t0)
  SW t4, 24(sp)
  SLTI t1, zero, 10
  BNE t1, zero, bb16
  # implict jump to bb3
bb3:
  ADDI a0, zero, 10
  CALL putch
  ADDI s7, zero, 7
  SLLIW s7, s7, 2
  ADD s7, s9, s7
  LW s7, 0(s7)
  ADD a0, s7, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t4, 24(sp)
  SLTI s7, t4, 10
  BNE s7, zero, bb11
  # implict jump to bb4
bb4:
  LW t4, 0(sp)
  ADDIW s3, t4, 3
  ADDI s6, zero, 3
  MULW s3, s3, s6
  SLT s6, s3, zero
  XORI s6, s6, 1
  BNE s6, zero, bb6
  # implict jump to bb5
bb5:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 72(sp)
  LUI t5, 7
  ADDIW t5, t5, 272
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 280
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 288
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 296
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 304
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 320
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 328
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 344
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t0, 7
  ADDIW t0, t0, 352
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb6:
  # implict jump to bb7
bb7:
  # implict jump to bb8
bb8:
  ADD s6, s3, zero
  SLLIW s8, s6, 2
  LD t4, 56(sp)
  ADD s8, t4, s8
  LW s8, 0(s8)
  ADD a0, s8, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI s8, zero, 1
  SUBW s0, s6, s8
  # implict jump to bb9
bb9:
  SLT s6, s0, zero
  XORI s6, s6, 1
  BNE s6, zero, bb10
  JAL zero, bb5
bb10:
  ADD s3, s0, zero
  JAL zero, bb8
bb11:
  # implict jump to bb12
bb12:
  LW t4, 20(sp)
  ADD s7, t4, zero
  LW t4, 24(sp)
  ADD s2, t4, zero
  # implict jump to bb13
bb13:
  ADD s8, s2, zero
  ADD s3, s7, zero
  SLLIW s6, s8, 2
  LD t4, 56(sp)
  ADD s6, t4, s6
  LUI s11, 31
  ADDIW s11, s11, 1899
  MULW s11, s3, s11
  LUI s10, 1
  ADDIW s10, s10, -372
  REMW s10, s11, s10
  SW s10, 0(s6)
  ADDIW s1, s8, 1
  ADDIW s4, s3, 7
  # implict jump to bb14
bb14:
  SLTI s3, s1, 10
  BNE s3, zero, bb15
  JAL zero, bb4
bb15:
  ADD s7, s4, zero
  ADD s2, s1, zero
  JAL zero, bb13
bb16:
  # implict jump to bb17
bb17:
  ADDI t1, zero, 236
  ADDI t2, zero, 6
  MULW t1, t1, t2
  ADDI t4, sp, 80
  ADD t4, t4, t1
  SD t4, 64(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  # implict jump to bb18
bb18:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t4, 28(sp)
  SLLIW a0, t4, 2
  LD t4, 64(sp)
  ADD a0, t4, a0
  LW a0, 0(a0)
  CALL putint
  LW t4, 28(sp)
  ADDIW s5, t4, 1
  # implict jump to bb19
bb19:
  SLTI s7, s5, 10
  BNE s7, zero, bb20
  JAL zero, bb3
bb20:
  ADD t4, s5, zero
  SW t4, 32(sp)
  JAL zero, bb18
bb21:
  LUI s8, 1
  ADDIW s8, s8, -969
  ADD s8, zero, s8
  # implict jump to bb22
bb22:
  ADD t4, s8, zero
  SW t4, 8(sp)
  # implict jump to bb23
bb23:
  LW t4, 8(sp)
  ADD s9, t4, zero
  ADDI s10, zero, 1
  SUBW t4, s9, s10
  SW t4, 4(sp)
  LW t4, 4(sp)
  SLLIW s9, t4, 2
  ADDI t5, sp, 80
  ADD s9, t5, s9
  SW zero, 0(s9)
  # implict jump to bb24
bb24:
  LW t4, 4(sp)
  BNE t4, zero, bb25
  JAL zero, bb2
bb25:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb23
bb26:
  LUI s7, 1
  ADDIW s7, s7, -9
  ADD s7, zero, s7
  # implict jump to bb27
bb27:
  ADD t4, s7, zero
  SW t4, 16(sp)
  # implict jump to bb28
bb28:
  LW t4, 16(sp)
  ADD s8, t4, zero
  ADDI s9, zero, 1
  SUBW t4, s8, s9
  SW t4, 12(sp)
  LW t4, 12(sp)
  SLLIW s8, t4, 2
  LUI t5, 3
  ADDIW t5, t5, 304
  ADD t5, t5, sp
  ADD s8, t5, s8
  SW zero, 0(s8)
  # implict jump to bb29
bb29:
  LW t4, 12(sp)
  BNE t4, zero, bb30
  JAL zero, bb1
bb30:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb28
func:
  ADDI sp, sp, -112
  SD s5, 8(sp)
  SD s6, 16(sp)
  SD s9, 24(sp)
  SD ra, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s7, 80(sp)
  SD s8, 88(sp)
  SD s10, 96(sp)
  SD s11, 104(sp)
  ADD s4, a0, zero
  ADD s5, a1, zero
  ADD s6, a2, zero
  ADD s7, a3, zero
  ADD s8, a4, zero
  ADD s9, a5, zero
  ADD s10, a6, zero
  ADD s11, a7, zero
  ADDI ra, sp, 112
  ADD ra, ra, zero
  LW t4, 0(ra)
  SW t4, 0(sp)
  SLTI t0, zero, 10
  BNE t0, zero, bb39
  # implict jump to bb32
bb32:
  ADDI a0, zero, 10
  CALL putch
  SLLIW s5, s6, 2
  ADD s5, s7, s5
  LW s5, 0(s5)
  ADD a0, s5, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t4, 0(sp)
  SLTI s5, t4, 10
  BNE s5, zero, bb34
  # implict jump to bb33
bb33:
  ADDW t1, s8, s9
  ADD a0, t1, zero
  LD s5, 8(sp)
  LD s6, 16(sp)
  LD s9, 24(sp)
  LD ra, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb34:
  # implict jump to bb35
bb35:
  ADD s5, s11, zero
  LW t4, 0(sp)
  ADD t0, t4, zero
  # implict jump to bb36
bb36:
  ADD t1, t0, zero
  ADD t2, s5, zero
  SLLIW a1, t1, 2
  ADD a1, s10, a1
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
  ADD s5, s0, zero
  ADD t0, s1, zero
  JAL zero, bb36
bb39:
  # implict jump to bb40
bb40:
  ADDI t0, zero, 236
  MULW s4, s4, t0
  ADD s3, s5, s4
  ADD s4, zero, zero
  # implict jump to bb41
bb41:
  ADD s5, s4, zero
  SLLIW t0, s5, 2
  ADD t0, s3, t0
  LW t0, 0(t0)
  ADD a0, t0, zero
  CALL putint
  ADDIW s2, s5, 1
  # implict jump to bb42
bb42:
  SLTI s5, s2, 10
  BNE s5, zero, bb43
  JAL zero, bb32
bb43:
  ADD s4, s2, zero
  JAL zero, bb41
