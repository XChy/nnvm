.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -432
  SD ra, 368(sp)
  SD s0, 376(sp)
  SD s1, 384(sp)
  SD s2, 392(sp)
  SD s3, 400(sp)
  SD s4, 408(sp)
  SD s5, 416(sp)
  ADDI a0, zero, 40
  # implict jump to bb1
bb1:   # loop depth 1
  ADDI s1, zero, 0
  SLLIW s0, a0, 2
  ADDIW a0, a0, -1
  ADDI t6, sp, 0
  ADD s0, t6, s0
  SW s1, -4(s0)
  BNE a0, zero, bb22
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI a0, zero, 1
  ADDI s0, zero, 2
  SW a0, 264(sp)
  ADDI a0, zero, 3
  SW s0, 268(sp)
  ADDI s0, zero, 4
  SW a0, 272(sp)
  ADDI a0, zero, 5
  SW s0, 276(sp)
  ADDI s0, zero, 6
  SW a0, 280(sp)
  ADDI a0, zero, 7
  SW s0, 284(sp)
  ADDI s0, zero, 8
  SW a0, 288(sp)
  ADDI a0, zero, 9
  SW s0, 292(sp)
  ADDI s0, zero, 1
  SW a0, 296(sp)
  ADDI a0, zero, 2
  SW zero, 300(sp)
  ADDI s1, zero, 3
  SW s0, 304(sp)
  ADDI s0, zero, 4
  SW a0, 308(sp)
  ADDI a0, zero, 5
  SW s1, 312(sp)
  ADDI s1, zero, 6
  SW s0, 316(sp)
  ADDI s0, zero, 7
  SW a0, 320(sp)
  ADDI a0, zero, 8
  SW s1, 324(sp)
  ADDI s1, zero, 9
  SW s0, 328(sp)
  ADDI s0, zero, 2
  SW a0, 332(sp)
  ADDI a0, zero, 3
  SW s1, 336(sp)
  ADDI s1, zero, 4
  SW zero, 340(sp)
  ADDI s2, zero, 2
  SW s0, 160(sp)
  ADDI s0, zero, 5
  SW a0, 164(sp)
  ADDI a0, zero, 7
  SW s1, 168(sp)
  ADDI s1, zero, 9
  SW s2, 172(sp)
  ADDI s2, zero, 9
  SW s0, 176(sp)
  ADDI s0, zero, 1
  SW a0, 180(sp)
  ADDI a0, zero, 9
  SW s1, 184(sp)
  ADDI s1, zero, 8
  SW s2, 188(sp)
  ADDI s2, zero, 7
  SW zero, 192(sp)
  ADDI s3, zero, 6
  SW s0, 196(sp)
  ADDI s0, zero, 4
  SW a0, 200(sp)
  ADDI a0, zero, 3
  SW s1, 204(sp)
  ADDI s1, zero, 2
  SW s2, 208(sp)
  ADDI s2, zero, 1
  SW s3, 212(sp)
  ADDI s3, zero, 39
  SW s0, 216(sp)
  ADDI s0, zero, 2
  SW a0, 220(sp)
  SLT a0, s3, zero
  SW s1, 224(sp)
  ADDI s1, zero, 2
  SW s2, 228(sp)
  XORI a0, a0, 1
  SW s0, 232(sp)
  SW s1, 236(sp)
  BNE a0, zero, bb19
  # implict jump to bb3
bb3:   # loop depth 0
  ADDI s0, zero, 39
  ADDI a0, zero, 19
  # implict jump to bb4
bb4:   # loop depth 1
  SLLIW s1, a0, 2
  ADDI t6, sp, 160
  ADD s2, t6, s1
  ADDI s1, zero, 19
  LW s3, 0(s2)
  # implict jump to bb5
bb5:   # loop depth 2
  SLLIW s2, s0, 2
  SLLIW s4, s1, 2
  ADDI t6, sp, 0
  ADD s2, t6, s2
  ADDI t6, sp, 264
  ADD s5, t6, s4
  LW s4, 0(s2)
  LW s5, 0(s5)
  MULW s5, s3, s5
  ADDW s4, s4, s5
  SLTI s5, s4, 10
  XORI s5, s5, 1
  BNE s5, zero, bb18
  # implict jump to bb6
bb6:   # loop depth 2
  SW s4, 0(s2)
  # implict jump to bb7
bb7:   # loop depth 2
  ADDI s4, zero, -1
  ADDIW s2, s0, -1
  ADDIW s1, s1, -1
  BLT s4, s1, bb17
  # implict jump to bb8
bb8:   # loop depth 1
  ADDI s1, zero, -1
  ADDIW a0, a0, -1
  ADDIW s0, s0, 18
  BLT s1, a0, bb16
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
  ADDI sp, sp, 432
  JALR zero, 0(ra)
bb12:   # loop depth 0
  ADDI s0, zero, 1
  # implict jump to bb13
bb13:   # loop depth 1
  ADDI s1, zero, 39
  SLLIW a0, s0, 2
  ADDIW s0, s0, 1
  ADDI t6, sp, 0
  ADD a0, t6, a0
  SLT s1, s1, s0
  LW a0, 0(a0)
  XORI s1, s1, 1
  CALL putint
  BNE s1, zero, bb14
  JAL zero, bb11
bb14:   # loop depth 1
  JAL zero, bb13
bb15:   # loop depth 0
  CALL putint
  JAL zero, bb10
bb16:   # loop depth 1
  JAL zero, bb4
bb17:   # loop depth 2
  ADD s0, s2, zero
  JAL zero, bb5
bb18:   # loop depth 2
  ADDI s5, zero, 10
  SW s4, 0(s2)
  DIVW s5, s4, s5
  LW s4, -4(s2)
  ADDW s4, s4, s5
  SW s4, -4(s2)
  JAL zero, bb7
bb19:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb20
bb20:   # loop depth 1
  ADD a0, s0, zero
  ADDI s1, zero, 39
  ADDIW s0, a0, 1
  SLLIW a0, a0, 2
  SLT s1, s1, s0
  ADDI t6, sp, 0
  ADD a0, t6, a0
  XORI s1, s1, 1
  SW zero, 0(a0)
  BNE s1, zero, bb21
  JAL zero, bb3
bb21:   # loop depth 1
  JAL zero, bb20
bb22:   # loop depth 1
  JAL zero, bb1
