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
  JAL zero, bb1
bb1:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADDI t5, sp, 0
  ADD s1, t5, s2
  SW zero, 0(s1)
  ADD s0, s3, zero
  JAL zero, bb1
bb3:
  ADD s0, zero, zero
  JAL zero, bb4
bb4:
  ADD s1, s0, zero
  SLTI s2, s1, 20
  BNE s2, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t6, sp, 264
  ADD s2, t6, s3
  ADDI t5, sp, 448
  ADD s4, t5, s3
  LW s3, 0(s4)
  SW s3, 0(s2)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb4
bb6:
  ADD s0, zero, zero
  JAL zero, bb7
bb7:
  ADD s1, s0, zero
  SLTI s2, s1, 20
  BNE s2, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t6, sp, 160
  ADD s2, t6, s3
  ADDI t5, sp, 368
  ADD s4, t5, s3
  LW s3, 0(s4)
  SW s3, 0(s2)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb7
bb9:
  ADD s0, zero, zero
  JAL zero, bb10
bb10:
  ADD s1, s0, zero
  ADDI s2, zero, 39
  SLT s3, s2, s1
  XORI s2, s3, 1
  BNE s2, zero, bb11
  JAL zero, bb12
bb11:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t6, sp, 0
  ADD s2, t6, s3
  SW zero, 0(s2)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb10
bb12:
  ADDI s0, zero, 39
  ADD s1, zero, zero
  ADDI s2, zero, 19
  JAL zero, bb13
bb13:
  ADD s3, s2, zero
  ADD s4, s1, zero
  ADD s5, s0, zero
  ADDI s6, zero, -1
  SLT s7, s6, s3
  BNE s7, zero, bb14
  JAL zero, bb15
bb14:
  ADDI s6, zero, 4
  MULW s7, s3, s6
  ADDI t5, sp, 160
  ADD s6, t5, s7
  LW s7, 0(s6)
  ADD s6, s5, zero
  ADD s5, s4, zero
  ADDI s4, zero, 19
  JAL zero, bb16
bb15:
  LW s0, 0(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb22
  JAL zero, bb23
bb16:
  ADD s8, s4, zero
  ADD s9, s5, zero
  ADD s10, s6, zero
  ADDI s11, zero, -1
  SLT t0, s11, s8
  BNE t0, zero, bb17
  JAL zero, bb18
bb17:
  ADDI s11, zero, 4
  MULW t0, s10, s11
  ADDI t6, sp, 0
  ADD s11, t6, t0
  LW t0, 0(s11)
  ADDI t1, zero, 4
  MULW t2, s8, t1
  ADDI t1, sp, 264
  ADD t1, t1, t2
  LW t2, 0(t1)
  MULW t1, s7, t2
  ADDW t2, t0, t1
  SLTI t0, t2, 10
  XORI t1, t0, 1
  BNE t1, zero, bb19
  JAL zero, bb21
bb18:
  ADDIW s4, s10, 20
  ADDI s5, zero, 1
  SUBW s6, s4, s5
  ADDI s4, zero, 1
  SUBW s5, s3, s4
  ADD s0, s6, zero
  ADD s1, s9, zero
  ADD s2, s5, zero
  JAL zero, bb13
bb19:
  SW t2, 0(s11)
  ADDI t0, zero, 1
  SUBW t1, s10, t0
  ADDI t0, zero, 4
  MULW a0, t1, t0
  ADDI t0, sp, 0
  ADD t0, t0, a0
  LW t1, 0(t0)
  ADDI a0, zero, 10
  DIVW a1, t2, a0
  ADDW a0, t1, a1
  SW a0, 0(t0)
  JAL zero, bb20
bb20:
  ADDI t0, zero, 1
  SUBW t1, s8, t0
  ADDI t0, zero, 1
  SUBW a0, s10, t0
  ADD s6, a0, zero
  ADD s5, t2, zero
  ADD s4, t1, zero
  JAL zero, bb16
bb21:
  SW t2, 0(s11)
  JAL zero, bb20
bb22:
  LW s0, 0(sp)
  ADD a0, s0, zero
  CALL putint
  JAL zero, bb23
bb23:
  ADDI s0, zero, 1
  JAL zero, bb24
bb24:
  ADD s1, s0, zero
  ADDI s2, zero, 39
  SLT s3, s2, s1
  XORI s2, s3, 1
  BNE s2, zero, bb25
  JAL zero, bb26
bb25:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 0
  ADD s2, t5, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb24
bb26:
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
