.global main
.section .bss

.section .data
len:
.word 0x00000014
.section .text
main:
  ADDI sp, sp, -640
  SD ra, 528(sp)
  SD s0, 536(sp)
  SD s5, 544(sp)
  SD s10, 552(sp)
  SD s1, 560(sp)
  SD s6, 568(sp)
  SD s2, 576(sp)
  SD s3, 584(sp)
  SD s4, 592(sp)
  SD s7, 600(sp)
  SD s8, 608(sp)
  SD s9, 616(sp)
  SD s11, 624(sp)
  ADDI s0, zero, 1
  SW s0, 448(sp)
  ADDI s0, sp, 452
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 456
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 460
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 464
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 468
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 472
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 476
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 480
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 484
  ADDI s1, zero, 0
  SW s1, 0(s0)
  ADDI s0, sp, 488
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 492
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 496
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 500
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 504
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 508
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 512
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 516
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 520
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 524
  ADDI s1, zero, 0
  SW s1, 0(s0)
  ADDI s0, zero, 2
  SW s0, 368(sp)
  ADDI s0, sp, 372
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 376
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 380
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 384
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 388
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 392
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 396
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 400
  ADDI s1, zero, 0
  SW s1, 0(s0)
  ADDI s0, sp, 404
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 408
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 412
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 416
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 420
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 424
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 428
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 432
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 436
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 440
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 444
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, zero, 40
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb26
  # implict jump to bb2
bb2:
  ADD s0, zero, zero
  # implict jump to bb3
bb3:
  ADD s1, s0, zero
  SLTI s2, s1, 20
  BNE s2, zero, bb25
  # implict jump to bb4
bb4:
  ADD s0, zero, zero
  # implict jump to bb5
bb5:
  ADD s1, s0, zero
  SLTI s2, s1, 20
  BNE s2, zero, bb24
  # implict jump to bb6
bb6:
  ADD s0, zero, zero
  # implict jump to bb7
bb7:
  ADD s1, s0, zero
  ADDI s2, zero, 39
  SLT s3, s2, s1
  XORI s2, s3, 1
  BNE s2, zero, bb23
  # implict jump to bb8
bb8:
  ADDI s0, zero, 39
  ADD s1, zero, zero
  ADDI s2, zero, 19
  # implict jump to bb9
bb9:
  ADD s3, s2, zero
  ADD s4, s1, zero
  ADD s5, s0, zero
  ADDI s6, zero, -1
  SLT s7, s6, s3
  BNE s7, zero, bb16
  # implict jump to bb10
bb10:
  LW s0, 0(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb15
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
  LD ra, 528(sp)
  LD s0, 536(sp)
  LD s5, 544(sp)
  LD s10, 552(sp)
  LD s1, 560(sp)
  LD s6, 568(sp)
  LD s2, 576(sp)
  LD s3, 584(sp)
  LD s4, 592(sp)
  LD s7, 600(sp)
  LD s8, 608(sp)
  LD s9, 616(sp)
  LD s11, 624(sp)
  ADDI sp, sp, 640
  JALR zero, 0(ra)
bb14:
  SLLIW s2, s1, 2
  ADDI t5, sp, 0
  ADD s3, t5, s2
  LW s2, 0(s3)
  ADD a0, s2, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb12
bb15:
  LW s0, 0(sp)
  ADD a0, s0, zero
  CALL putint
  JAL zero, bb11
bb16:
  SLLIW s6, s3, 2
  ADDI t5, sp, 160
  ADD s7, t5, s6
  LW s6, 0(s7)
  ADD s7, s5, zero
  ADD s5, s4, zero
  ADDI s4, zero, 19
  # implict jump to bb17
bb17:
  ADD s8, s4, zero
  ADD s9, s5, zero
  ADD s10, s7, zero
  ADDI s11, zero, -1
  SLT t0, s11, s8
  BNE t0, zero, bb19
  # implict jump to bb18
bb18:
  ADDIW s4, s10, 19
  ADDI s5, zero, 1
  SUBW s6, s3, s5
  ADD s0, s4, zero
  ADD s1, s9, zero
  ADD s2, s6, zero
  JAL zero, bb9
bb19:
  SLLIW s11, s10, 2
  ADDI t0, sp, 0
  ADD t0, t0, s11
  LW s11, 0(t0)
  SLLIW t1, s8, 2
  ADDI t2, sp, 264
  ADD t2, t2, t1
  LW t1, 0(t2)
  MULW t2, s6, t1
  ADDW t1, s11, t2
  SLTI s11, t1, 10
  XORI t2, s11, 1
  BNE t2, zero, bb22
  # implict jump to bb20
bb20:
  SW t1, 0(t0)
  # implict jump to bb21
bb21:
  ADDI s11, zero, 1
  SUBW t2, s8, s11
  ADDI s11, zero, 1
  SUBW a0, s10, s11
  ADD s7, a0, zero
  ADD s5, t1, zero
  ADD s4, t2, zero
  JAL zero, bb17
bb22:
  SW t1, 0(t0)
  ADDI s11, zero, 1
  SUBW t2, s10, s11
  SLLIW s11, t2, 2
  ADDI t2, sp, 0
  ADD t2, t2, s11
  LW s11, 0(t2)
  ADDI a0, zero, 10
  DIVW a1, t1, a0
  ADDW a0, s11, a1
  SW a0, 0(t2)
  JAL zero, bb21
bb23:
  SLLIW s2, s1, 2
  ADDI t5, sp, 0
  ADD s3, t5, s2
  SW zero, 0(s3)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb7
bb24:
  SLLIW s2, s1, 2
  ADDI t5, sp, 160
  ADD s3, t5, s2
  ADDI t5, sp, 368
  ADD s4, t5, s2
  LW s2, 0(s4)
  SW s2, 0(s3)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb5
bb25:
  SLLIW s2, s1, 2
  ADDI t5, sp, 264
  ADD s3, t5, s2
  ADDI t5, sp, 448
  ADD s4, t5, s2
  LW s2, 0(s4)
  SW s2, 0(s3)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb3
bb26:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SLLIW s1, s3, 2
  ADDI t5, sp, 0
  ADD s2, t5, s1
  SW zero, 0(s2)
  ADD s0, s3, zero
  JAL zero, bb1
