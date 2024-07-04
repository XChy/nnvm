.global main
.section .bss

.section .data
len:
.word 0x00000014
.section .text
main:
  ADDI sp, sp, -640
  SD ra, 592(sp)
  SD s4, 600(sp)
  SD s3, 608(sp)
  SD s2, 616(sp)
  SD s1, 624(sp)
  SD s0, 632(sp)
  ADDI t5, sp, 472
  ADD s0, t5, zero
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 476
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 480
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 484
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 488
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 492
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 496
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 500
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 504
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 508
  SW zero, 0(s0)
  ADDI s0, sp, 512
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 516
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 520
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 524
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 528
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 532
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 536
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 540
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 544
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 548
  SW zero, 0(s0)
  ADDI t6, sp, 392
  ADD s0, t6, zero
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 396
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 400
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 404
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 408
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 412
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 416
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 420
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 424
  SW zero, 0(s0)
  ADDI s0, sp, 428
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 432
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 436
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 440
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 444
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 448
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 452
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 456
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 460
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 464
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 468
  ADDI s1, zero, 2
  SW s1, 0(s0)
  LA s0, len
  LW s1, 0(s0)
  SW s1, 384(sp)
  LA s0, len
  LW s1, 0(s0)
  SW s1, 376(sp)
  ADDI s0, zero, 40
  SW s0, 0(sp)
  JAL zero, bb1
bb1:
  LW s0, 0(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb2
  JAL zero, bb3
bb2:
  LW s0, 0(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 0(sp)
  ADDI s0, zero, 4
  MULW s1, s2, s0
  ADDW s0, zero, s1
  ADDI t5, sp, 8
  ADD s1, t5, s0
  SW zero, 0(s1)
  JAL zero, bb1
bb3:
  SW zero, 584(sp)
  JAL zero, bb4
bb4:
  LW s0, 584(sp)
  LW s1, 384(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb5
  JAL zero, bb6
bb5:
  LW s0, 584(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t6, sp, 272
  ADD s0, t6, s2
  LW s1, 584(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 472
  ADD s1, t5, s3
  LW s2, 0(s1)
  SW s2, 0(s0)
  LW s0, 584(sp)
  ADDIW s1, s0, 1
  SW s1, 584(sp)
  JAL zero, bb4
bb6:
  SW zero, 584(sp)
  JAL zero, bb7
bb7:
  LW s0, 584(sp)
  LW s1, 376(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb8
  JAL zero, bb9
bb8:
  LW s0, 584(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t6, sp, 168
  ADD s0, t6, s2
  LW s1, 584(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 392
  ADD s1, t5, s3
  LW s2, 0(s1)
  SW s2, 0(s0)
  LW s0, 584(sp)
  ADDIW s1, s0, 1
  SW s1, 584(sp)
  JAL zero, bb7
bb9:
  LW s0, 384(sp)
  LW s1, 376(sp)
  ADDW s2, s0, s1
  ADDI s0, zero, 1
  SUBW s1, s2, s0
  SW s1, 560(sp)
  SW zero, 584(sp)
  JAL zero, bb10
bb10:
  LW s0, 584(sp)
  LW s1, 560(sp)
  SLT s2, s1, s0
  XORI s0, s2, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb11
  JAL zero, bb12
bb11:
  LW s0, 584(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t6, sp, 8
  ADD s0, t6, s2
  SW zero, 0(s0)
  LW s0, 584(sp)
  ADDIW s1, s0, 1
  SW s1, 584(sp)
  JAL zero, bb10
bb12:
  SW zero, 552(sp)
  LW s0, 376(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 584(sp)
  JAL zero, bb13
bb13:
  LW s0, 584(sp)
  ADDI s1, zero, 1
  SUBW s2, zero, s1
  SLT s1, s2, s0
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb14
  JAL zero, bb15
bb14:
  LW s0, 584(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 168
  ADD s0, t5, s2
  LW s1, 0(s0)
  SW s1, 568(sp)
  LW s0, 384(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 576(sp)
  JAL zero, bb16
bb15:
  ADDI s0, zero, 4
  MULW s1, zero, s0
  ADDI t6, sp, 8
  ADD s0, t6, s1
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb22
  JAL zero, bb23
bb16:
  LW s0, 576(sp)
  ADDI s1, zero, 1
  SUBW s2, zero, s1
  SLT s1, s2, s0
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb17
  JAL zero, bb18
bb17:
  LW s0, 560(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 8
  ADD s0, t5, s2
  LW s1, 0(s0)
  LW s0, 568(sp)
  LW s2, 576(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADDI t6, sp, 272
  ADD s2, t6, s4
  LW s3, 0(s2)
  MULW s2, s0, s3
  ADDW s0, s1, s2
  SW s0, 552(sp)
  SLTI s1, s0, 10
  XORI s0, s1, 1
  BNE s0, zero, bb19
  JAL zero, bb21
bb18:
  LW s0, 560(sp)
  LW s1, 384(sp)
  ADDW s2, s0, s1
  ADDI s0, zero, 1
  SUBW s1, s2, s0
  SW s1, 560(sp)
  LW s0, 584(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 584(sp)
  JAL zero, bb13
bb19:
  LW s0, 560(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 8
  ADD s0, t5, s2
  LW s1, 552(sp)
  SW s1, 0(s0)
  LW s0, 560(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  ADDI s0, zero, 4
  MULW s1, s2, s0
  ADDI t6, sp, 8
  ADD s0, t6, s1
  LW s1, 560(sp)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADDI t5, sp, 8
  ADD s1, t5, s2
  LW s2, 0(s1)
  LW s1, 552(sp)
  ADDI s3, zero, 10
  DIVW s4, s1, s3
  ADDW s1, s2, s4
  SW s1, 0(s0)
  JAL zero, bb20
bb20:
  LW s0, 576(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 576(sp)
  LW s0, 560(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 560(sp)
  JAL zero, bb16
bb21:
  LW s0, 560(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t6, sp, 8
  ADD s0, t6, s2
  LW s1, 552(sp)
  SW s1, 0(s0)
  JAL zero, bb20
bb22:
  ADDI s0, zero, 4
  MULW s1, zero, s0
  ADDI t5, sp, 8
  ADD s0, t5, s1
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  JAL zero, bb23
bb23:
  ADDI s0, zero, 1
  SW s0, 584(sp)
  JAL zero, bb24
bb24:
  LW s0, 584(sp)
  LW s1, 384(sp)
  LW s2, 376(sp)
  ADDW s3, s1, s2
  ADDI s1, zero, 1
  SUBW s2, s3, s1
  SLT s1, s2, s0
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb25
  JAL zero, bb26
bb25:
  LW s0, 584(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t6, sp, 8
  ADD s0, t6, s2
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  LW s0, 584(sp)
  ADDIW s1, s0, 1
  SW s1, 584(sp)
  JAL zero, bb24
bb26:
  ADD a0, zero, zero
  LD ra, 592(sp)
  LD s4, 600(sp)
  LD s3, 608(sp)
  LD s2, 616(sp)
  LD s1, 624(sp)
  LD s0, 632(sp)
  ADDI sp, sp, 640
  JALR zero, 0(ra)
