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
  ADDI t5, sp, 448
  ADD s0, t5, zero
  ADDI s1, zero, 1
  SW s1, 0(s0)
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
  SW zero, 0(s0)
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
  SW zero, 0(s0)
  ADDI t6, sp, 368
  ADD s0, t6, zero
  ADDI s1, zero, 2
  SW s1, 0(s0)
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
  SW zero, 0(s0)
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
  LA s0, len
  LW s1, 0(s0)
  LA s0, len
  LW s2, 0(s0)
  ADDI s0, zero, 40
  JAL zero, bb1
bb1:
  XOR s3, s0, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s3, zero, 1
  SUBW s4, s0, s3
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADDW s3, zero, s5
  ADDI t5, sp, 0
  ADD s5, t5, s3
  SW zero, 0(s5)
  ADD s0, s4, zero
  JAL zero, bb1
bb3:
  ADD s0, zero, zero
  JAL zero, bb4
bb4:
  SLT s3, s0, s1
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s3, zero, 4
  MULW s4, s0, s3
  ADDI t6, sp, 264
  ADD s3, t6, s4
  ADDI s4, zero, 4
  MULW s5, s0, s4
  ADDI t5, sp, 448
  ADD s4, t5, s5
  LW s5, 0(s4)
  SW s5, 0(s3)
  ADDIW s3, s0, 1
  ADD s0, s3, zero
  JAL zero, bb4
bb6:
  ADD s0, zero, zero
  JAL zero, bb7
bb7:
  SLT s3, s0, s2
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s3, zero, 4
  MULW s4, s0, s3
  ADDI t6, sp, 160
  ADD s3, t6, s4
  ADDI s4, zero, 4
  MULW s5, s0, s4
  ADDI t5, sp, 368
  ADD s4, t5, s5
  LW s5, 0(s4)
  SW s5, 0(s3)
  ADDIW s3, s0, 1
  ADD s0, s3, zero
  JAL zero, bb7
bb9:
  ADDW s0, s1, s2
  ADDI s3, zero, 1
  SUBW s4, s0, s3
  ADD s0, zero, zero
  JAL zero, bb10
bb10:
  SLT s3, s4, s0
  XORI s5, s3, 1
  XOR s3, s5, zero
  SLTU s5, zero, s3
  BNE s5, zero, bb11
  JAL zero, bb12
bb11:
  ADDI s3, zero, 4
  MULW s5, s0, s3
  ADDI t6, sp, 0
  ADD s3, t6, s5
  SW zero, 0(s3)
  ADDIW s3, s0, 1
  ADD s0, s3, zero
  JAL zero, bb10
bb12:
  ADDI s0, zero, 1
  SUBW s3, s2, s0
  ADD s0, s4, zero
  ADD s4, zero, zero
  ADD s5, s3, zero
  JAL zero, bb13
bb13:
  ADDI s3, zero, 1
  SUBW s6, zero, s3
  SLT s3, s6, s5
  XOR s6, s3, zero
  SLTU s3, zero, s6
  BNE s3, zero, bb14
  JAL zero, bb15
bb14:
  ADDI s3, zero, 4
  MULW s6, s5, s3
  ADDI t5, sp, 160
  ADD s3, t5, s6
  LW s6, 0(s3)
  ADDI s3, zero, 1
  SUBW s7, s1, s3
  ADD s3, s0, zero
  ADD s8, s4, zero
  ADD s9, s7, zero
  JAL zero, bb16
bb15:
  ADDI s0, zero, 4
  MULW s3, zero, s0
  ADDI t6, sp, 0
  ADD s0, t6, s3
  LW s3, 0(s0)
  XOR s0, s3, zero
  SLTU s3, zero, s0
  BNE s3, zero, bb22
  JAL zero, bb23
bb16:
  ADDI s7, zero, 1
  SUBW s10, zero, s7
  SLT s7, s10, s9
  XOR s10, s7, zero
  SLTU s7, zero, s10
  BNE s7, zero, bb17
  JAL zero, bb18
bb17:
  ADDI s7, zero, 4
  MULW s10, s3, s7
  ADDI t5, sp, 0
  ADD s7, t5, s10
  LW s10, 0(s7)
  ADDI s7, zero, 4
  MULW s11, s9, s7
  ADDI t6, sp, 264
  ADD s7, t6, s11
  LW s11, 0(s7)
  MULW s7, s6, s11
  ADDW s11, s10, s7
  SLTI s7, s11, 10
  XORI s10, s7, 1
  BNE s10, zero, bb19
  JAL zero, bb21
bb18:
  ADDW s6, s3, s1
  ADDI s3, zero, 1
  SUBW s7, s6, s3
  ADDI s3, zero, 1
  SUBW s6, s5, s3
  ADD s0, s7, zero
  ADD s4, s8, zero
  ADD s5, s6, zero
  JAL zero, bb13
bb19:
  ADDI s7, zero, 4
  MULW s10, s3, s7
  ADDI t5, sp, 0
  ADD s7, t5, s10
  SW s11, 0(s7)
  ADDI s7, zero, 1
  SUBW s10, s3, s7
  ADDI s7, zero, 4
  MULW t0, s10, s7
  ADDI t6, sp, 0
  ADD s7, t6, t0
  ADDI s10, zero, 1
  SUBW t0, s3, s10
  ADDI s10, zero, 4
  MULW t1, t0, s10
  ADDI t5, sp, 0
  ADD s10, t5, t1
  LW t0, 0(s10)
  ADDI s10, zero, 10
  DIVW t1, s11, s10
  ADDW s10, t0, t1
  SW s10, 0(s7)
  JAL zero, bb20
bb20:
  ADDI s7, zero, 1
  SUBW s10, s9, s7
  ADDI s7, zero, 1
  SUBW t0, s3, s7
  ADD s3, t0, zero
  ADD s8, s11, zero
  ADD s9, s10, zero
  JAL zero, bb16
bb21:
  ADDI s7, zero, 4
  MULW s10, s3, s7
  ADDI t6, sp, 0
  ADD s7, t6, s10
  SW s11, 0(s7)
  JAL zero, bb20
bb22:
  ADDI s0, zero, 4
  MULW s3, zero, s0
  ADDI t5, sp, 0
  ADD s0, t5, s3
  LW s3, 0(s0)
  ADD a0, s3, zero
  CALL putint
  JAL zero, bb23
bb23:
  ADDI s0, zero, 1
  JAL zero, bb24
bb24:
  ADDW s3, s1, s2
  ADDI s4, zero, 1
  SUBW s5, s3, s4
  SLT s3, s5, s0
  XORI s4, s3, 1
  XOR s3, s4, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb25
  JAL zero, bb26
bb25:
  ADDI s3, zero, 4
  MULW s4, s0, s3
  ADDI t6, sp, 0
  ADD s3, t6, s4
  LW s4, 0(s3)
  ADD a0, s4, zero
  CALL putint
  ADDIW s3, s0, 1
  ADD s0, s3, zero
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
