.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -560
  SD ra, 528(sp)
  SD s0, 536(sp)
  SD s1, 544(sp)
  ADDI t0, zero, 1
  ADDI t1, zero, 2
  SW t0, 448(sp)
  ADDI t0, zero, 3
  SW t1, 452(sp)
  ADDI t1, zero, 4
  SW t0, 456(sp)
  ADDI t0, zero, 5
  SW t1, 460(sp)
  ADDI t1, zero, 6
  SW t0, 464(sp)
  ADDI t0, zero, 7
  SW t1, 468(sp)
  ADDI t1, zero, 8
  SW t0, 472(sp)
  ADDI t0, zero, 9
  SW t1, 476(sp)
  ADDI t1, zero, 0
  SW t0, 480(sp)
  ADDI t0, zero, 1
  SW t1, 484(sp)
  ADDI t1, zero, 2
  SW t0, 488(sp)
  ADDI t0, zero, 3
  SW t1, 492(sp)
  ADDI t1, zero, 4
  SW t0, 496(sp)
  ADDI t0, zero, 5
  SW t1, 500(sp)
  ADDI t1, zero, 6
  SW t0, 504(sp)
  ADDI t0, zero, 7
  SW t1, 508(sp)
  ADDI t1, zero, 8
  SW t0, 512(sp)
  ADDI t0, zero, 9
  SW t1, 516(sp)
  ADDI t1, zero, 0
  SW t0, 520(sp)
  ADDI t0, zero, 2
  SW t1, 524(sp)
  ADDI t1, zero, 3
  SW t0, 368(sp)
  ADDI t0, zero, 4
  SW t1, 372(sp)
  ADDI t1, zero, 2
  SW t0, 376(sp)
  ADDI t0, zero, 5
  SW t1, 380(sp)
  ADDI t1, zero, 7
  SW t0, 384(sp)
  ADDI t0, zero, 9
  SW t1, 388(sp)
  ADDI t1, zero, 9
  SW t0, 392(sp)
  ADDI t0, zero, 0
  SW t1, 396(sp)
  ADDI t1, zero, 1
  SW t0, 400(sp)
  ADDI t0, zero, 9
  SW t1, 404(sp)
  ADDI t1, zero, 8
  SW t0, 408(sp)
  ADDI t0, zero, 7
  SW t1, 412(sp)
  ADDI t1, zero, 6
  SW t0, 416(sp)
  ADDI t0, zero, 4
  SW t1, 420(sp)
  ADDI t1, zero, 3
  SW t0, 424(sp)
  ADDI t0, zero, 2
  SW t1, 428(sp)
  ADDI t1, zero, 1
  SW t0, 432(sp)
  ADDI t0, zero, 2
  SW t1, 436(sp)
  ADDI t1, zero, 2
  SW t0, 440(sp)
  ADDI t0, zero, 40
  SW t1, 444(sp)
  # implict jump to bb1
bb1:   # loop depth 1
  ADDI t2, zero, 0
  SLLIW t1, t0, 2
  ADDIW t0, t0, -1
  ADDI t6, sp, 0
  ADD t1, t6, t1
  SW t2, -4(t1)
  BNE t0, zero, bb28
  # implict jump to bb2
bb2:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb3
bb3:   # loop depth 1
  SLLIW t1, t0, 2
  ADDIW t0, t0, 1
  ADDI t2, sp, 448
  ADD t2, t2, t1
  ADDI a0, sp, 264
  ADD t1, a0, t1
  LW t2, 0(t2)
  SLTI a0, t0, 20
  SW t2, 0(t1)
  BNE a0, zero, bb27
  # implict jump to bb4
bb4:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  SLLIW t1, t0, 2
  ADDIW t0, t0, 1
  ADDI t2, sp, 368
  ADD t2, t2, t1
  ADDI a0, sp, 160
  ADD t1, a0, t1
  LW t2, 0(t2)
  SLTI a0, t0, 20
  SW t2, 0(t1)
  BNE a0, zero, bb26
  # implict jump to bb6
bb6:   # loop depth 0
  ADDI t0, zero, 39
  BGE t0, zero, bb23
  # implict jump to bb7
bb7:   # loop depth 0
  ADDI t0, zero, 39
  ADDI a0, zero, 19
  # implict jump to bb8
bb8:   # loop depth 1
  SLLIW t1, a0, 2
  ADDI t2, sp, 160
  ADD t1, t2, t1
  ADDI t2, zero, 19
  LW a1, 0(t1)
  # implict jump to bb9
bb9:   # loop depth 2
  SLLIW t1, t0, 2
  SLLIW a2, t2, 2
  ADDI a3, sp, 0
  ADD t1, a3, t1
  ADDI a3, sp, 264
  ADD a3, a3, a2
  LW a2, 0(t1)
  LW a3, 0(a3)
  MULW a3, a1, a3
  ADDW a2, a2, a3
  SLTI a3, a2, 10
  BEQ a3, zero, bb22
  # implict jump to bb10
bb10:   # loop depth 2
  SW a2, 0(t1)
  # implict jump to bb11
bb11:   # loop depth 2
  ADDI a2, zero, -1
  ADDIW t1, t0, -1
  ADDIW t2, t2, -1
  BLT a2, t2, bb21
  # implict jump to bb12
bb12:   # loop depth 1
  ADDI t1, zero, -1
  ADDIW a0, a0, -1
  ADDIW t0, t0, 18
  BLT t1, a0, bb20
  # implict jump to bb13
bb13:   # loop depth 0
  LW a0, 0(sp)
  BNE a0, zero, bb19
  # implict jump to bb14
bb14:   # loop depth 0
  ADDI t0, zero, 39
  SLTI t0, t0, 1
  BEQ t0, zero, bb16
  # implict jump to bb15
bb15:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 528(sp)
  LD s0, 536(sp)
  LD s1, 544(sp)
  ADDI sp, sp, 560
  JALR zero, 0(ra)
bb16:   # loop depth 0
  ADDI s0, zero, 1
  # implict jump to bb17
bb17:   # loop depth 1
  ADDI s1, zero, 39
  SLLIW t0, s0, 2
  ADDIW s0, s0, 1
  ADDI a0, sp, 0
  ADD t0, a0, t0
  LW a0, 0(t0)
  CALL putint
  BGE s1, s0, bb18
  JAL zero, bb15
bb18:   # loop depth 1
  JAL zero, bb17
bb19:   # loop depth 0
  CALL putint
  JAL zero, bb14
bb20:   # loop depth 1
  JAL zero, bb8
bb21:   # loop depth 2
  ADD t0, t1, zero
  JAL zero, bb9
bb22:   # loop depth 2
  ADDI a3, zero, 10
  SW a2, 0(t1)
  DIVW a3, a2, a3
  LW a2, -4(t1)
  ADDW a2, a2, a3
  SW a2, -4(t1)
  JAL zero, bb11
bb23:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb24
bb24:   # loop depth 1
  ADDI t2, zero, 39
  SLLIW t1, t0, 2
  ADDIW t0, t0, 1
  ADDI t6, sp, 0
  ADD t1, t6, t1
  SW zero, 0(t1)
  BGE t2, t0, bb25
  JAL zero, bb7
bb25:   # loop depth 1
  JAL zero, bb24
bb26:   # loop depth 1
  JAL zero, bb5
bb27:   # loop depth 1
  JAL zero, bb3
bb28:   # loop depth 1
  JAL zero, bb1
