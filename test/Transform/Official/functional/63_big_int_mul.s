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
  ADD s0, a0, zero
  ADDI a0, zero, 1
  SUBW s1, s0, a0
  SLLIW a0, s1, 2
  ADDI t5, sp, 0
  ADD s0, t5, a0
  ADDI a0, zero, 0
  SW a0, 0(s0)
  BNE s1, zero, bb29
  # implict jump to bb2
bb2:
  ADD a0, zero, zero
  # implict jump to bb3
bb3:
  ADD s1, a0, zero
  SLLIW a0, s1, 2
  ADDI t5, sp, 264
  ADD s0, t5, a0
  ADDI t5, sp, 448
  ADD a0, t5, a0
  LW a0, 0(a0)
  SW a0, 0(s0)
  ADDIW s0, s1, 1
  SLTI a0, s0, 20
  BNE a0, zero, bb28
  # implict jump to bb4
bb4:
  ADD a0, zero, zero
  # implict jump to bb5
bb5:
  ADD s1, a0, zero
  SLLIW a0, s1, 2
  ADDI t5, sp, 160
  ADD s0, t5, a0
  ADDI t5, sp, 368
  ADD a0, t5, a0
  LW a0, 0(a0)
  SW a0, 0(s0)
  ADDIW s0, s1, 1
  SLTI a0, s0, 20
  BNE a0, zero, bb27
  # implict jump to bb6
bb6:
  ADDI a0, zero, 39
  SLT a0, a0, zero
  XORI a0, a0, 1
  BNE a0, zero, bb24
  # implict jump to bb7
bb7:
  ADDI s0, zero, 39
  ADDI a0, zero, 19
  # implict jump to bb8
bb8:
  ADD s1, a0, zero
  SLLIW a0, s1, 2
  ADDI t5, sp, 160
  ADD a0, t5, a0
  LW s3, 0(a0)
  ADDI a0, zero, 19
  # implict jump to bb9
bb9:
  ADD s5, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 0
  ADD s2, t5, a0
  LW s4, 0(s2)
  SLLIW a0, s5, 2
  ADDI t5, sp, 264
  ADD a0, t5, a0
  LW a0, 0(a0)
  MULW a0, s3, a0
  ADDW s6, s4, a0
  SLTI a0, s6, 10
  XORI a0, a0, 1
  BNE a0, zero, bb23
  # implict jump to bb10
bb10:
  SW s6, 0(s2)
  # implict jump to bb11
bb11:
  ADDI a0, zero, 1
  SUBW s2, s5, a0
  ADDI a0, zero, 1
  SUBW s0, s0, a0
  ADDI a0, zero, -1
  BLT a0, s2, bb22
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  ADDIW s0, s0, 19
  ADDI a0, zero, 1
  SUBW s1, s1, a0
  ADDI a0, zero, -1
  BLT a0, s1, bb21
  # implict jump to bb14
bb14:
  LW a0, 0(sp)
  BNE a0, zero, bb20
  # implict jump to bb15
bb15:
  ADDI a0, zero, 39
  SLTI a0, a0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb17
  # implict jump to bb16
bb16:
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
bb17:
  ADDI a0, zero, 1
  # implict jump to bb18
bb18:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW a0, 0(a0)
  CALL putint
  ADDIW s0, s0, 1
  ADDI a0, zero, 39
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb19
  JAL zero, bb16
bb19:
  ADD a0, s0, zero
  JAL zero, bb18
bb20:
  LW a0, 0(sp)
  CALL putint
  JAL zero, bb15
bb21:
  ADD a0, s1, zero
  JAL zero, bb8
bb22:
  ADD a0, s2, zero
  JAL zero, bb9
bb23:
  SW s6, 0(s2)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SLLIW a0, a0, 2
  ADDI t5, sp, 0
  ADD s4, t5, a0
  LW s2, 0(s4)
  ADDI a0, zero, 10
  DIVW a0, s6, a0
  ADDW a0, s2, a0
  SW a0, 0(s4)
  JAL zero, bb11
bb24:
  ADD a0, zero, zero
  # implict jump to bb25
bb25:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  SW zero, 0(a0)
  ADDIW s0, s0, 1
  ADDI a0, zero, 39
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb26
  JAL zero, bb7
bb26:
  ADD a0, s0, zero
  JAL zero, bb25
bb27:
  ADD a0, s0, zero
  JAL zero, bb5
bb28:
  ADD a0, s0, zero
  JAL zero, bb3
bb29:
  ADD a0, s1, zero
  JAL zero, bb1
