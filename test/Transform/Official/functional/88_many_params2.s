.global main
.global func
.section .bss
.section .data
.section .text
main:
  LUI t0, 1048569
  ADDIW t0, t0, -336
  ADD sp, sp, t0
  LUI t5, 7
  ADDIW t5, t5, 232
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 240
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 264
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 272
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 280
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 288
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 296
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 304
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 320
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 328
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI s0, 1
  ADDIW s0, s0, -9
  ADD t4, zero, s0
  LUI t5, 7
  ADDIW t5, t5, 196
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb1
bb1:
  LUI t3, 7
  ADDIW t3, t3, 196
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 7
  ADDIW t5, t5, 200
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 7
  ADDIW t4, t4, 200
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s2, t4, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb15
  # implict jump to bb2
bb2:
  LUI s2, 1
  ADDIW s2, s2, -969
  ADD t4, zero, s2
  LUI t5, 7
  ADDIW t5, t5, 204
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb3
bb3:
  LUI t3, 7
  ADDIW t3, t3, 204
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 7
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 7
  ADDIW t4, t4, 208
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s4, t4, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb14
  # implict jump to bb4
bb4:
  LUI s4, 1
  ADDIW s4, s4, 464
  LUI t5, 3
  ADDIW t5, t5, 224
  ADD t5, t5, sp
  ADD s5, t5, s4
  ADDI s4, zero, 6
  SW s4, 0(s5)
  LUI s4, 1
  ADDIW s4, s4, 472
  LUI t5, 3
  ADDIW t5, t5, 224
  ADD t5, t5, sp
  ADD s6, t5, s4
  ADDI s4, zero, 7
  SW s4, 0(s6)
  LUI s4, 1
  ADDIW s4, s4, 476
  LUI t5, 3
  ADDIW t5, t5, 224
  ADD t5, t5, sp
  ADD s7, t5, s4
  ADDI s4, zero, 4
  SW s4, 0(s7)
  LUI s4, 1
  ADDIW s4, s4, 488
  LUI t5, 3
  ADDIW t5, t5, 224
  ADD t5, t5, sp
  ADD s7, t5, s4
  ADDI s4, zero, 9
  SW s4, 0(s7)
  LUI s4, 1
  ADDIW s4, s4, 504
  LUI t5, 3
  ADDIW t5, t5, 224
  ADD t5, t5, sp
  ADD s7, t5, s4
  ADDI s4, zero, 11
  SW s4, 0(s7)
  ADDI s4, sp, 1420
  ADDI s7, zero, 1
  SW s7, 0(s4)
  ADDI s4, sp, 1424
  ADDI s7, zero, 2
  SW s7, 0(s4)
  ADDI s4, sp, 1428
  ADDI s7, zero, 3
  SW s7, 0(s4)
  ADDI s7, sp, 1452
  ADDI s8, zero, 9
  SW s8, 0(s7)
  LW s7, 0(s5)
  LW s5, 0(s6)
  LUI s6, 1
  ADDIW s6, s6, 460
  LUI t5, 3
  ADDIW t5, t5, 224
  ADD t5, t5, sp
  ADD s8, t5, s6
  LW s6, 0(s4)
  ADDI t4, sp, 1416
  LUI t3, 7
  ADDIW t3, t3, 224
  ADD t3, t3, sp
  SD t4, 0(t3)
  LUI t3, 7
  ADDIW t3, t3, 224
  ADD t3, t3, sp
  LD t3, 0(t3)
  LW t4, 0(t3)
  LUI t5, 7
  ADDIW t5, t5, 220
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI s10, 2
  ADDIW s10, s10, -152
  ADDI t5, sp, 0
  ADD s11, t5, s10
  LW t4, 0(s11)
  LUI t5, 7
  ADDIW t5, t5, 216
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI s11, 3
  ADDIW s11, s11, -180
  ADDI ra, sp, 0
  ADD ra, ra, s11
  LW t4, 0(ra)
  LUI t5, 7
  ADDIW t5, t5, 212
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t5, 7
  ADDIW t5, t5, 192
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb5
bb5:
  LUI t3, 7
  ADDIW t3, t3, 192
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t1, 7
  ADDIW t1, t1, 188
  ADD t1, t1, sp
  SW t4, 0(t1)
  LUI t4, 7
  ADDIW t4, t4, 188
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI t1, t4, 10
  BNE t1, zero, bb13
  # implict jump to bb6
bb6:
  ADDI a0, zero, 10
  CALL putch
  SLLIW s1, s5, 2
  ADD s0, s8, s1
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LUI t4, 7
  ADDIW t4, t4, 212
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  LUI t4, 7
  ADDIW t4, t4, 216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  # implict jump to bb7
bb7:
  ADD s3, s1, zero
  ADD s2, s0, zero
  SLTI s11, s2, 10
  BNE s11, zero, bb12
  # implict jump to bb8
bb8:
  LUI t4, 7
  ADDIW t4, t4, 220
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s11, s6, t4
  ADDI s10, zero, 3
  MULW s9, s11, s10
  ADD s10, s9, zero
  # implict jump to bb9
bb9:
  ADD s9, s10, zero
  SLT s11, s9, zero
  XORI s4, s11, 1
  BNE s4, zero, bb11
  # implict jump to bb10
bb10:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LUI t5, 7
  ADDIW t5, t5, 232
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI ra, 7
  ADDIW ra, ra, 240
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 7
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 264
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 272
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 280
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 288
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 296
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 304
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 320
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 7
  ADDIW t5, t5, 328
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t0, 7
  ADDIW t0, t0, 336
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb11:
  SLLIW s4, s9, 2
  LUI t4, 7
  ADDIW t4, t4, 224
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s11, t4, s4
  LW s4, 0(s11)
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI s4, zero, 1
  SUBW s11, s9, s4
  ADD s10, s11, zero
  JAL zero, bb9
bb12:
  SLLIW s4, s2, 2
  LUI t4, 7
  ADDIW t4, t4, 224
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s9, t4, s4
  LUI s4, 31
  ADDIW s4, s4, 1899
  MULW s10, s3, s4
  LUI s4, 1
  ADDIW s4, s4, -372
  REMW s11, s10, s4
  SW s11, 0(s9)
  ADDIW s4, s2, 1
  ADDIW s2, s3, 7
  ADD s0, s4, zero
  ADD s1, s2, zero
  JAL zero, bb7
bb13:
  ADDI s0, zero, 236
  MULW s1, s7, s0
  ADDI t5, sp, 0
  ADD s0, t5, s1
  LUI t4, 7
  ADDIW t4, t4, 188
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s1, t4, 2
  ADD s2, s0, s1
  LW s0, 0(s2)
  ADD a0, s0, zero
  CALL putint
  LUI t4, 7
  ADDIW t4, t4, 188
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  LUI t5, 7
  ADDIW t5, t5, 192
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb5
bb14:
  ADDI s0, zero, 1
  LUI t4, 7
  ADDIW t4, t4, 208
  ADD t4, t4, sp
  LW t4, 0(t4)
  SUBW s1, t4, s0
  SLLIW s0, s1, 2
  ADDI t5, sp, 0
  ADD s2, t5, s0
  SW zero, 0(s2)
  ADD t4, s1, zero
  LUI t5, 7
  ADDIW t5, t5, 204
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb3
bb15:
  ADDI s0, zero, 1
  LUI t4, 7
  ADDIW t4, t4, 200
  ADD t4, t4, sp
  LW t4, 0(t4)
  SUBW s1, t4, s0
  SLLIW s0, s1, 2
  LUI t5, 3
  ADDIW t5, t5, 224
  ADD t5, t5, sp
  ADD s2, t5, s0
  SW zero, 0(s2)
  ADD t4, s1, zero
  LUI t5, 7
  ADDIW t5, t5, 196
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb1
func:
  ADDI sp, sp, -144
  SD ra, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s9, 72(sp)
  SD s4, 80(sp)
  SD s3, 88(sp)
  SD s2, 96(sp)
  SD s11, 104(sp)
  SD s10, 112(sp)
  SD s0, 120(sp)
  SD s1, 128(sp)
  SD s8, 136(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD t4, a2, zero
  SW t4, 32(sp)
  ADD t4, a3, zero
  SD t4, 24(sp)
  ADD t4, a4, zero
  SW t4, 20(sp)
  ADD t4, a5, zero
  SW t4, 16(sp)
  ADD t4, a6, zero
  SD t4, 8(sp)
  ADD t4, a7, zero
  SW t4, 4(sp)
  ADDI t5, sp, 144
  ADD s8, t5, zero
  LW t4, 0(s8)
  SW t4, 0(sp)
  ADD s8, zero, zero
  # implict jump to bb17
bb17:
  ADD s10, s8, zero
  SLTI s11, s10, 10
  BNE s11, zero, bb22
  # implict jump to bb18
bb18:
  ADDI a0, zero, 10
  CALL putch
  LW t4, 32(sp)
  SLLIW s11, t4, 2
  LD t4, 24(sp)
  ADD s9, t4, s11
  LW s11, 0(s9)
  ADD a0, s11, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t4, 0(sp)
  ADD s9, t4, zero
  LW t4, 4(sp)
  ADD s11, t4, zero
  # implict jump to bb19
bb19:
  ADD s7, s11, zero
  ADD s6, s9, zero
  SLTI s5, s6, 10
  BNE s5, zero, bb21
  # implict jump to bb20
bb20:
  LW t4, 20(sp)
  LW t3, 16(sp)
  ADDW s5, t4, t3
  ADD a0, s5, zero
  LD ra, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s9, 72(sp)
  LD s4, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s11, 104(sp)
  LD s10, 112(sp)
  LD s0, 120(sp)
  LD s1, 128(sp)
  LD s8, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb21:
  SLLIW s5, s6, 2
  LD t4, 8(sp)
  ADD s4, t4, s5
  LUI s5, 31
  ADDIW s5, s5, 1899
  MULW s3, s7, s5
  LUI s5, 1
  ADDIW s5, s5, -372
  REMW s2, s3, s5
  SW s2, 0(s4)
  ADDIW s2, s6, 1
  ADDIW s3, s7, 7
  ADD s9, s2, zero
  ADD s11, s3, zero
  JAL zero, bb19
bb22:
  ADDI s2, zero, 236
  MULW s3, s0, s2
  ADD s2, s1, s3
  SLLIW s3, s10, 2
  ADD s4, s2, s3
  LW s2, 0(s4)
  ADD a0, s2, zero
  CALL putint
  ADDIW s2, s10, 1
  ADD s8, s2, zero
  JAL zero, bb17
