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
  ADD s3, s0, zero
  XOR s4, s3, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s4, zero, 1
  SUBW s5, s3, s4
  ADDI s3, zero, 4
  MULW s4, s5, s3
  ADDW s3, zero, s4
  ADDI t5, sp, 0
  ADD s4, t5, s3
  SW zero, 0(s4)
  ADD s0, s5, zero
  JAL zero, bb1
bb3:
  ADD s0, zero, zero
  JAL zero, bb4
bb4:
  ADD s3, s0, zero
  SLT s4, s3, s1
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADDI t6, sp, 264
  ADD s4, t6, s5
  ADDI t5, sp, 448
  ADD s6, t5, s5
  LW s5, 0(s6)
  SW s5, 0(s4)
  ADDIW s4, s3, 1
  ADD s0, s4, zero
  JAL zero, bb4
bb6:
  ADD s0, zero, zero
  JAL zero, bb7
bb7:
  ADD s3, s0, zero
  SLT s4, s3, s2
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADDI t6, sp, 160
  ADD s4, t6, s5
  ADDI t5, sp, 368
  ADD s6, t5, s5
  LW s5, 0(s6)
  SW s5, 0(s4)
  ADDIW s4, s3, 1
  ADD s0, s4, zero
  JAL zero, bb7
bb9:
  ADDW s0, s1, s2
  ADDI s3, zero, 1
  SUBW s4, s0, s3
  ADD s0, zero, zero
  JAL zero, bb10
bb10:
  ADD s3, s0, zero
  SLT s5, s4, s3
  XORI s6, s5, 1
  XOR s5, s6, zero
  SLTU s6, zero, s5
  BNE s6, zero, bb11
  JAL zero, bb12
bb11:
  ADDI s5, zero, 4
  MULW s6, s3, s5
  ADDI t6, sp, 0
  ADD s5, t6, s6
  SW zero, 0(s5)
  ADDIW s5, s3, 1
  ADD s0, s5, zero
  JAL zero, bb10
bb12:
  ADDI s0, zero, 1
  SUBW s3, s2, s0
  ADD s0, s4, zero
  ADD s2, zero, zero
  ADD s5, s3, zero
  JAL zero, bb13
bb13:
  ADD s3, s5, zero
  ADD s6, s2, zero
  ADD s7, s0, zero
  ADDI s8, zero, -1
  SLT s9, s8, s3
  XOR s8, s9, zero
  SLTU s9, zero, s8
  BNE s9, zero, bb14
  JAL zero, bb15
bb14:
  ADDI s8, zero, 4
  MULW s9, s3, s8
  ADDI t5, sp, 160
  ADD s8, t5, s9
  LW s9, 0(s8)
  ADDI s8, zero, 1
  SUBW s10, s1, s8
  ADD s8, s7, zero
  ADD s7, s6, zero
  ADD s6, s10, zero
  JAL zero, bb16
bb15:
  ADDI t6, sp, 0
  ADD s0, t6, zero
  LW s1, 0(s0)
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb22
  JAL zero, bb23
bb16:
  ADD s10, s6, zero
  ADD s11, s7, zero
  ADD t0, s8, zero
  ADDI t1, zero, -1
  SLT t2, t1, s10
  XOR t1, t2, zero
  SLTU t2, zero, t1
  BNE t2, zero, bb17
  JAL zero, bb18
bb17:
  ADDI t1, zero, 4
  MULW t2, t0, t1
  ADDI t1, sp, 0
  ADD t1, t1, t2
  LW t2, 0(t1)
  ADDI a0, zero, 4
  MULW a1, s10, a0
  ADDI a0, sp, 264
  ADD a0, a0, a1
  LW a1, 0(a0)
  MULW a0, s9, a1
  ADDW a1, t2, a0
  SLTI t2, a1, 10
  XORI a0, t2, 1
  BNE a0, zero, bb19
  JAL zero, bb21
bb18:
  ADDW s6, t0, s1
  ADDI s7, zero, 1
  SUBW s8, s6, s7
  ADDI s6, zero, 1
  SUBW s7, s3, s6
  ADD s0, s8, zero
  ADD s2, s11, zero
  ADD s5, s7, zero
  JAL zero, bb13
bb19:
  SW a1, 0(t1)
  ADDI t2, zero, 1
  SUBW a0, t0, t2
  ADDI t2, zero, 4
  MULW a2, a0, t2
  ADDI t2, sp, 0
  ADD t2, t2, a2
  LW a0, 0(t2)
  ADDI a2, zero, 10
  DIVW a3, a1, a2
  ADDW a2, a0, a3
  SW a2, 0(t2)
  JAL zero, bb20
bb20:
  ADDI t2, zero, 1
  SUBW a0, s10, t2
  ADDI t2, zero, 1
  SUBW a2, t0, t2
  ADD s8, a2, zero
  ADD s7, a1, zero
  ADD s6, a0, zero
  JAL zero, bb16
bb21:
  SW a1, 0(t1)
  JAL zero, bb20
bb22:
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  JAL zero, bb23
bb23:
  ADDI s0, zero, 1
  JAL zero, bb24
bb24:
  ADD s1, s0, zero
  SLT s2, s4, s1
  XORI s3, s2, 1
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb25
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
