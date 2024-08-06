.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -448
  SD ra, 368(sp)
  SD s0, 376(sp)
  SD s1, 384(sp)
  SD s2, 392(sp)
  SD s3, 400(sp)
  SD s4, 408(sp)
  SD s5, 416(sp)
  SD s6, 424(sp)
  SD s7, 432(sp)
  ADDI a0, zero, 40
  # implict jump to bb1
bb1:   # loop depth 1
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  ADDI t6, sp, 0
  ADD s0, t6, s0
  ADDI s1, zero, 0
  SW s1, 0(s0)
  BNE a0, zero, bb22
  # implict jump to bb2
bb2:   # loop depth 0
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
bb3:   # loop depth 0
  ADDI s0, zero, 39
  ADDI s1, zero, 19
  # implict jump to bb4
bb4:   # loop depth 1
  SLLIW a0, s1, 2
  ADDI t6, sp, 160
  ADD a0, t6, a0
  LW s3, 0(a0)
  ADDI s2, zero, 19
  # implict jump to bb5
bb5:   # loop depth 2
  ADD a0, s0, zero
  SLLIW s0, a0, 2
  ADDI t6, sp, 0
  ADD s4, t6, s0
  LW s0, 0(s4)
  SLLIW s5, s2, 2
  ADDI t6, sp, 264
  ADD s5, t6, s5
  LW s5, 0(s5)
  MULW s5, s3, s5
  ADDW s5, s0, s5
  SLTI s0, s5, 10
  XORI s6, s0, 1
  ADDI s0, zero, 1
  SUBW s0, a0, s0
  BNE s6, zero, bb18
  # implict jump to bb6
bb6:   # loop depth 2
  SW s5, 0(s4)
  # implict jump to bb7
bb7:   # loop depth 2
  ADDI s4, zero, 1
  SUBW s2, s2, s4
  ADDI s4, zero, -1
  BLT s4, s2, bb17
  # implict jump to bb8
bb8:   # loop depth 1
  ADDIW s0, a0, 18
  ADDI a0, zero, 1
  SUBW s1, s1, a0
  ADDI a0, zero, -1
  BLT a0, s1, bb16
  # implict jump to bb9
bb9:   # loop depth 0
  LW a0, 0(sp)
  BNE a0, zero, bb15
  # implict jump to bb10
bb10:   # loop depth 0
  ADDI a0, zero, 39
  SLTI a0, a0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb12
  # implict jump to bb11
bb11:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 368(sp)
  LD s0, 376(sp)
  LD s1, 384(sp)
  LD s2, 392(sp)
  LD s3, 400(sp)
  LD s4, 408(sp)
  LD s5, 416(sp)
  LD s6, 424(sp)
  LD s7, 432(sp)
  ADDI sp, sp, 448
  JALR zero, 0(ra)
bb12:   # loop depth 0
  ADDI s0, zero, 1
  # implict jump to bb13
bb13:   # loop depth 1
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
bb14:   # loop depth 1
  JAL zero, bb13
bb15:   # loop depth 0
  CALL putint
  JAL zero, bb10
bb16:   # loop depth 1
  JAL zero, bb4
bb17:   # loop depth 2
  JAL zero, bb5
bb18:   # loop depth 2
  SW s5, 0(s4)
  SLLIW s4, s0, 2
  ADDI t6, sp, 0
  ADD s4, t6, s4
  LW s6, 0(s4)
  ADDI s7, zero, 10
  DIVW s5, s5, s7
  ADDW s5, s6, s5
  SW s5, 0(s4)
  JAL zero, bb7
bb19:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb20
bb20:   # loop depth 1
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
bb21:   # loop depth 1
  JAL zero, bb20
bb22:   # loop depth 1
  JAL zero, bb1
