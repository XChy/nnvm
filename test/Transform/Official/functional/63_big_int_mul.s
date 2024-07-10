.global main
.section .bss

.section .data
len:
.word 0x00000014
.section .text
main:
  ADDI sp, sp, -656
  SD ra, 552(sp)
  SD s11, 560(sp)
  SD s0, 568(sp)
  SD s5, 576(sp)
  SD s10, 584(sp)
  SD s1, 592(sp)
  SD s6, 600(sp)
  SD s2, 608(sp)
  SD s3, 616(sp)
  SD s4, 624(sp)
  SD s7, 632(sp)
  SD s8, 640(sp)
  SD s9, 648(sp)
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
  ADDI t4, zero, 40
  SW t4, 536(sp)
  # implict jump to bb1
bb1:
  LW t3, 536(sp)
  ADD t4, t3, zero
  SW t4, 540(sp)
  LW t4, 540(sp)
  XOR s2, t4, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb26
  # implict jump to bb2
bb2:
  ADD t4, zero, zero
  SW t4, 544(sp)
  # implict jump to bb3
bb3:
  LW t3, 544(sp)
  ADD t4, t3, zero
  SW t4, 548(sp)
  LW t4, 548(sp)
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
  SW t4, 532(sp)
  ADD t4, s8, zero
  SW t4, 528(sp)
  ADDI t2, zero, -1
  SLT a0, t2, s11
  BNE a0, zero, bb16
  # implict jump to bb10
bb10:
  LW t2, 0(sp)
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
  LD ra, 552(sp)
  LD s11, 560(sp)
  LD s0, 568(sp)
  LD s5, 576(sp)
  LD s10, 584(sp)
  LD s1, 592(sp)
  LD s6, 600(sp)
  LD s2, 608(sp)
  LD s3, 616(sp)
  LD s4, 624(sp)
  LD s7, 632(sp)
  LD s8, 640(sp)
  LD s9, 648(sp)
  ADDI sp, sp, 656
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
  LW t2, 0(sp)
  ADD a0, t2, zero
  CALL putint
  JAL zero, bb11
bb16:
  SLLIW s0, s11, 2
  ADDI t5, sp, 160
  ADD s1, t5, s0
  LW s0, 0(s1)
  LW t4, 528(sp)
  ADD s1, t4, zero
  LW t4, 532(sp)
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
  ADDI t5, sp, 0
  ADD s9, t5, s8
  LW s8, 0(s9)
  SLLIW s10, t0, 2
  ADDI t1, sp, 264
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
  ADDI t5, sp, 0
  ADD s9, t5, s8
  LW s8, 0(s9)
  ADDI t1, zero, 10
  DIVW a0, s10, t1
  ADDW t1, s8, a0
  SW t1, 0(s9)
  JAL zero, bb21
bb23:
  SLLIW s0, s7, 2
  ADDI t5, sp, 0
  ADD s1, t5, s0
  SW zero, 0(s1)
  ADDIW s0, s7, 1
  ADD s6, s0, zero
  JAL zero, bb7
bb24:
  SLLIW s0, s5, 2
  ADDI t5, sp, 160
  ADD s1, t5, s0
  ADDI t5, sp, 368
  ADD s2, t5, s0
  LW s0, 0(s2)
  SW s0, 0(s1)
  ADDIW s0, s5, 1
  ADD s4, s0, zero
  JAL zero, bb5
bb25:
  LW t4, 548(sp)
  SLLIW s0, t4, 2
  ADDI t5, sp, 264
  ADD s1, t5, s0
  ADDI t5, sp, 448
  ADD s2, t5, s0
  LW s0, 0(s2)
  SW s0, 0(s1)
  LW t4, 548(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 544(sp)
  JAL zero, bb3
bb26:
  ADDI s0, zero, 1
  LW t4, 540(sp)
  SUBW s1, t4, s0
  SLLIW s0, s1, 2
  ADDI t5, sp, 0
  ADD s2, t5, s0
  SW zero, 0(s2)
  ADD t4, s1, zero
  SW t4, 536(sp)
  JAL zero, bb1
