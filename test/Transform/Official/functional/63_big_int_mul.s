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
  ADDI t6, sp, 0
  ADD s0, t6, s0
  ADDI s1, zero, 0
  SW s1, 0(s0)
  BNE a0, zero, bb22
  # implict jump to bb2
bb2:
  ADDI a0, zero, 1
  SW a0, 264(sp)
  ADDI a0, zero, 2
  SW a0, 268(sp)
  ADDI a0, zero, 3
  SW a0, 272(sp)
  ADDI a0, zero, 4
  SW a0, 276(sp)
  ADDI a0, zero, 5
  SW a0, 280(sp)
  ADDI a0, zero, 6
  SW a0, 284(sp)
  ADDI a0, zero, 7
  SW a0, 288(sp)
  ADDI a0, zero, 8
  SW a0, 292(sp)
  ADDI a0, zero, 9
  SW a0, 296(sp)
  SW zero, 300(sp)
  ADDI a0, zero, 1
  SW a0, 304(sp)
  ADDI a0, zero, 2
  SW a0, 308(sp)
  ADDI a0, zero, 3
  SW a0, 312(sp)
  ADDI a0, zero, 4
  SW a0, 316(sp)
  ADDI a0, zero, 5
  SW a0, 320(sp)
  ADDI a0, zero, 6
  SW a0, 324(sp)
  ADDI a0, zero, 7
  SW a0, 328(sp)
  ADDI a0, zero, 8
  SW a0, 332(sp)
  ADDI a0, zero, 9
  SW a0, 336(sp)
  SW zero, 340(sp)
  ADDI a0, zero, 2
  SW a0, 160(sp)
  ADDI a0, zero, 3
  SW a0, 164(sp)
  ADDI a0, zero, 4
  SW a0, 168(sp)
  ADDI a0, zero, 2
  SW a0, 172(sp)
  ADDI a0, zero, 5
  SW a0, 176(sp)
  ADDI a0, zero, 7
  SW a0, 180(sp)
  ADDI a0, zero, 9
  SW a0, 184(sp)
  ADDI a0, zero, 9
  SW a0, 188(sp)
  SW zero, 192(sp)
  ADDI a0, zero, 1
  SW a0, 196(sp)
  ADDI a0, zero, 9
  SW a0, 200(sp)
  ADDI a0, zero, 8
  SW a0, 204(sp)
  ADDI a0, zero, 7
  SW a0, 208(sp)
  ADDI a0, zero, 6
  SW a0, 212(sp)
  ADDI a0, zero, 4
  SW a0, 216(sp)
  ADDI a0, zero, 3
  SW a0, 220(sp)
  ADDI a0, zero, 2
  SW a0, 224(sp)
  ADDI a0, zero, 1
  SW a0, 228(sp)
  ADDI a0, zero, 2
  SW a0, 232(sp)
  ADDI a0, zero, 2
  SW a0, 236(sp)
  ADDI a0, zero, 39
  SLT a0, a0, zero
  XORI a0, a0, 1
  BNE a0, zero, bb19
  # implict jump to bb3
bb3:
  ADDI a0, zero, 39
  ADDI s2, zero, 19
  # implict jump to bb4
bb4:
  SLLIW s0, s2, 2
  ADDI t6, sp, 160
  ADD s0, t6, s0
  LW s3, 0(s0)
  ADDI s1, zero, 19
  # implict jump to bb5
bb5:
  SLLIW s0, a0, 2
  ADDI t6, sp, 0
  ADD s0, t6, s0
  LW s4, 0(s0)
  SLLIW s5, s1, 2
  ADDI t6, sp, 264
  ADD s5, t6, s5
  LW s5, 0(s5)
  MULW s5, s3, s5
  ADDW s4, s4, s5
  SLTI s5, s4, 10
  XORI s5, s5, 1
  BNE s5, zero, bb18
  # implict jump to bb6
bb6:
  SW s4, 0(s0)
  # implict jump to bb7
bb7:
  ADDI s0, zero, 1
  SUBW s1, s1, s0
  ADDI s0, zero, 1
  SUBW s0, a0, s0
  ADDI s4, zero, -1
  BLT s4, s1, bb17
  # implict jump to bb8
bb8:
  ADDIW a0, a0, 18
  ADDI s0, zero, 1
  SUBW s2, s2, s0
  ADDI s0, zero, -1
  BLT s0, s2, bb16
  # implict jump to bb9
bb9:
  LW a0, 0(sp)
  BNE a0, zero, bb15
  # implict jump to bb10
bb10:
  ADDI a0, zero, 39
  SLTI a0, a0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb12
  # implict jump to bb11
bb11:
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
bb12:
  ADDI s0, zero, 1
  # implict jump to bb13
bb13:
  SLLIW a0, s0, 2
  ADDI t6, sp, 0
  ADD a0, t6, a0
  LW a0, 0(a0)
  CALL putint
  ADDIW s0, s0, 1
  ADDI a0, zero, 39
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb14
  JAL zero, bb11
bb14:
  JAL zero, bb13
bb15:
  LW a0, 0(sp)
  CALL putint
  JAL zero, bb10
bb16:
  JAL zero, bb4
bb17:
  ADD a0, s0, zero
  JAL zero, bb5
bb18:
  SW s4, 0(s0)
  ADDI s0, zero, 1
  SUBW s0, a0, s0
  SLLIW s0, s0, 2
  ADDI t6, sp, 0
  ADD s0, t6, s0
  LW s5, 0(s0)
  ADDI s6, zero, 10
  DIVW s4, s4, s6
  ADDW s4, s5, s4
  SW s4, 0(s0)
  JAL zero, bb7
bb19:
  ADD a0, zero, zero
  # implict jump to bb20
bb20:
  SLLIW s0, a0, 2
  ADDI t6, sp, 0
  ADD s0, t6, s0
  SW zero, 0(s0)
  ADDIW a0, a0, 1
  ADDI s0, zero, 39
  SLT s0, s0, a0
  XORI s0, s0, 1
  BNE s0, zero, bb21
  JAL zero, bb3
bb21:
  JAL zero, bb20
bb22:
  JAL zero, bb1
