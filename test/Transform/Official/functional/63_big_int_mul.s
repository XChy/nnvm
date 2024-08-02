.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -592
  SD ra, 528(sp)
  SD s0, 536(sp)
  SD s1, 544(sp)
  SD s2, 552(sp)
  SD s3, 560(sp)
  SD s4, 568(sp)
  SD s5, 576(sp)
  SD s6, 584(sp)
  ADDI a0, zero, 1
  SW a0, 448(sp)
  ADDI a0, zero, 2
  SW a0, 452(sp)
  ADDI a0, zero, 3
  SW a0, 456(sp)
  ADDI a0, zero, 4
  SW a0, 460(sp)
  ADDI a0, zero, 5
  SW a0, 464(sp)
  ADDI a0, zero, 6
  SW a0, 468(sp)
  ADDI a0, zero, 7
  SW a0, 472(sp)
  ADDI a0, zero, 8
  SW a0, 476(sp)
  ADDI a0, zero, 9
  SW a0, 480(sp)
  ADDI a0, zero, 0
  SW a0, 484(sp)
  ADDI a0, zero, 1
  SW a0, 488(sp)
  ADDI a0, zero, 2
  SW a0, 492(sp)
  ADDI a0, zero, 3
  SW a0, 496(sp)
  ADDI a0, zero, 4
  SW a0, 500(sp)
  ADDI a0, zero, 5
  SW a0, 504(sp)
  ADDI a0, zero, 6
  SW a0, 508(sp)
  ADDI a0, zero, 7
  SW a0, 512(sp)
  ADDI a0, zero, 8
  SW a0, 516(sp)
  ADDI a0, zero, 9
  SW a0, 520(sp)
  ADDI a0, zero, 0
  SW a0, 524(sp)
  ADDI a0, zero, 2
  SW a0, 368(sp)
  ADDI a0, zero, 3
  SW a0, 372(sp)
  ADDI a0, zero, 4
  SW a0, 376(sp)
  ADDI a0, zero, 2
  SW a0, 380(sp)
  ADDI a0, zero, 5
  SW a0, 384(sp)
  ADDI a0, zero, 7
  SW a0, 388(sp)
  ADDI a0, zero, 9
  SW a0, 392(sp)
  ADDI a0, zero, 9
  SW a0, 396(sp)
  ADDI a0, zero, 0
  SW a0, 400(sp)
  ADDI a0, zero, 1
  SW a0, 404(sp)
  ADDI a0, zero, 9
  SW a0, 408(sp)
  ADDI a0, zero, 8
  SW a0, 412(sp)
  ADDI a0, zero, 7
  SW a0, 416(sp)
  ADDI a0, zero, 6
  SW a0, 420(sp)
  ADDI a0, zero, 4
  SW a0, 424(sp)
  ADDI a0, zero, 3
  SW a0, 428(sp)
  ADDI a0, zero, 2
  SW a0, 432(sp)
  ADDI a0, zero, 1
  SW a0, 436(sp)
  ADDI a0, zero, 2
  SW a0, 440(sp)
  ADDI a0, zero, 2
  SW a0, 444(sp)
  ADDI a0, zero, 40
  # implict jump to bb1
bb1:
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  ADDI t5, sp, 0
  ADD s0, t5, s0
  ADDI s1, zero, 0
  SW s1, 0(s0)
  BNE a0, zero, bb28
  # implict jump to bb2
bb2:
  ADD a0, zero, zero
  # implict jump to bb3
bb3:
  SLLIW s0, a0, 2
  ADDI t5, sp, 264
  ADD s1, t5, s0
  ADDI t5, sp, 448
  ADD s0, t5, s0
  LW s0, 0(s0)
  SW s0, 0(s1)
  ADDIW a0, a0, 1
  SLTI s0, a0, 20
  BNE s0, zero, bb27
  # implict jump to bb4
bb4:
  ADD a0, zero, zero
  # implict jump to bb5
bb5:
  SLLIW s0, a0, 2
  ADDI t5, sp, 160
  ADD s1, t5, s0
  ADDI t5, sp, 368
  ADD s0, t5, s0
  LW s0, 0(s0)
  SW s0, 0(s1)
  ADDIW a0, a0, 1
  SLTI s0, a0, 20
  BNE s0, zero, bb26
  # implict jump to bb6
bb6:
  ADDI a0, zero, 39
  SLT a0, a0, zero
  XORI a0, a0, 1
  BNE a0, zero, bb23
  # implict jump to bb7
bb7:
  ADDI a0, zero, 39
  ADDI s0, zero, 19
  # implict jump to bb8
bb8:
  SLLIW s1, s0, 2
  ADDI t5, sp, 160
  ADD s1, t5, s1
  LW s1, 0(s1)
  ADDI s4, zero, 19
  # implict jump to bb9
bb9:
  ADD s2, a0, zero
  ADD a0, s4, zero
  SLLIW s3, s2, 2
  ADDI t5, sp, 0
  ADD s3, t5, s3
  LW s4, 0(s3)
  SLLIW s5, a0, 2
  ADDI t5, sp, 264
  ADD s5, t5, s5
  LW s5, 0(s5)
  MULW s5, s1, s5
  ADDW s4, s4, s5
  SLTI s5, s4, 10
  XORI s5, s5, 1
  BNE s5, zero, bb22
  # implict jump to bb10
bb10:
  SW s4, 0(s3)
  # implict jump to bb11
bb11:
  ADDI s3, zero, 1
  SUBW a0, a0, s3
  ADDI s3, zero, 1
  SUBW s3, s2, s3
  ADDI s4, zero, -1
  BLT s4, a0, bb21
  # implict jump to bb12
bb12:
  ADDIW a0, s2, 18
  ADDI s1, zero, 1
  SUBW s0, s0, s1
  ADDI s1, zero, -1
  BLT s1, s0, bb20
  # implict jump to bb13
bb13:
  LW a0, 0(sp)
  BNE a0, zero, bb19
  # implict jump to bb14
bb14:
  ADDI a0, zero, 39
  SLTI a0, a0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb16
  # implict jump to bb15
bb15:
  ADD a0, zero, zero
  LD ra, 528(sp)
  LD s0, 536(sp)
  LD s1, 544(sp)
  LD s2, 552(sp)
  LD s3, 560(sp)
  LD s4, 568(sp)
  LD s5, 576(sp)
  LD s6, 584(sp)
  ADDI sp, sp, 592
  JALR zero, 0(ra)
bb16:
  ADDI a0, zero, 1
  # implict jump to bb17
bb17:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW a0, 0(a0)
  CALL putint
  ADDIW a0, s0, 1
  ADDI s0, zero, 39
  SLT s0, s0, a0
  XORI s0, s0, 1
  BNE s0, zero, bb18
  JAL zero, bb15
bb18:
  JAL zero, bb17
bb19:
  LW a0, 0(sp)
  CALL putint
  JAL zero, bb14
bb20:
  JAL zero, bb8
bb21:
  ADD s4, a0, zero
  ADD a0, s3, zero
  JAL zero, bb9
bb22:
  SW s4, 0(s3)
  ADDI s3, zero, 1
  SUBW s3, s2, s3
  SLLIW s3, s3, 2
  ADDI t5, sp, 0
  ADD s3, t5, s3
  LW s5, 0(s3)
  ADDI s6, zero, 10
  DIVW s4, s4, s6
  ADDW s4, s5, s4
  SW s4, 0(s3)
  JAL zero, bb11
bb23:
  ADD a0, zero, zero
  # implict jump to bb24
bb24:
  SLLIW s0, a0, 2
  ADDI t5, sp, 0
  ADD s0, t5, s0
  SW zero, 0(s0)
  ADDIW a0, a0, 1
  ADDI s0, zero, 39
  SLT s0, s0, a0
  XORI s0, s0, 1
  BNE s0, zero, bb25
  JAL zero, bb7
bb25:
  JAL zero, bb24
bb26:
  JAL zero, bb5
bb27:
  JAL zero, bb3
bb28:
  JAL zero, bb1
