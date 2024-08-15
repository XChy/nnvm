.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -400
  SD ra, 368(sp)
  SD s0, 376(sp)
  SD s1, 384(sp)
  ADDI t0, zero, 40
  # implict jump to bb1
bb1:   # loop depth 1
  ADDI t2, zero, 0
  SLLIW t1, t0, 2
  ADDIW t0, t0, -1
  ADDI t6, sp, 0
  ADD t1, t6, t1
  SW t2, -4(t1)
  BNE t0, zero, bb22
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI t0, zero, 1
  ADDI t1, zero, 2
  SW t0, 264(sp)
  ADDI t0, zero, 3
  SW t1, 268(sp)
  ADDI t1, zero, 4
  SW t0, 272(sp)
  ADDI t0, zero, 5
  SW t1, 276(sp)
  ADDI t1, zero, 6
  SW t0, 280(sp)
  ADDI t0, zero, 7
  SW t1, 284(sp)
  ADDI t1, zero, 8
  SW t0, 288(sp)
  ADDI t0, zero, 9
  SW t1, 292(sp)
  ADDI t1, zero, 1
  SW t0, 296(sp)
  ADDI t0, zero, 2
  SW zero, 300(sp)
  ADDI t2, zero, 3
  SW t1, 304(sp)
  ADDI t1, zero, 4
  SW t0, 308(sp)
  ADDI t0, zero, 5
  SW t2, 312(sp)
  ADDI t2, zero, 6
  SW t1, 316(sp)
  ADDI t1, zero, 7
  SW t0, 320(sp)
  ADDI t0, zero, 8
  SW t2, 324(sp)
  ADDI t2, zero, 9
  SW t1, 328(sp)
  ADDI t1, zero, 2
  SW t0, 332(sp)
  ADDI t0, zero, 3
  SW t2, 336(sp)
  ADDI t2, zero, 4
  SW zero, 340(sp)
  ADDI a0, zero, 2
  SW t1, 160(sp)
  ADDI t1, zero, 5
  SW t0, 164(sp)
  ADDI t0, zero, 7
  SW t2, 168(sp)
  ADDI t2, zero, 9
  SW a0, 172(sp)
  ADDI a0, zero, 9
  SW t1, 176(sp)
  ADDI t1, zero, 1
  SW t0, 180(sp)
  ADDI t0, zero, 9
  SW t2, 184(sp)
  ADDI t2, zero, 8
  SW a0, 188(sp)
  ADDI a0, zero, 7
  SW zero, 192(sp)
  ADDI a1, zero, 6
  SW t1, 196(sp)
  ADDI t1, zero, 4
  SW t0, 200(sp)
  ADDI t0, zero, 3
  SW t2, 204(sp)
  ADDI t2, zero, 2
  SW a0, 208(sp)
  ADDI a0, zero, 1
  SW a1, 212(sp)
  ADDI a1, zero, 2
  SW t1, 216(sp)
  ADDI t1, zero, 2
  SW t0, 220(sp)
  ADDI t0, zero, 39
  SW t2, 224(sp)
  SW a0, 228(sp)
  SW a1, 232(sp)
  SW t1, 236(sp)
  BGE t0, zero, bb19
  # implict jump to bb3
bb3:   # loop depth 0
  ADDI t1, zero, 39
  ADDI t0, zero, 19
  # implict jump to bb4
bb4:   # loop depth 1
  SLLIW t2, t0, 2
  ADDI a0, sp, 160
  ADD a0, a0, t2
  ADDI t2, zero, 19
  LW a1, 0(a0)
  # implict jump to bb5
bb5:   # loop depth 2
  SLLIW a0, t1, 2
  SLLIW a2, t2, 2
  ADDI a3, sp, 0
  ADD a0, a3, a0
  ADDI a3, sp, 264
  ADD a3, a3, a2
  LW a2, 0(a0)
  LW a3, 0(a3)
  MULW a3, a1, a3
  ADDW a2, a2, a3
  SLTI a3, a2, 10
  BEQ a3, zero, bb18
  # implict jump to bb6
bb6:   # loop depth 2
  SW a2, 0(a0)
  # implict jump to bb7
bb7:   # loop depth 2
  ADDI a2, zero, -1
  ADDIW a0, t1, -1
  ADDIW t2, t2, -1
  BLT a2, t2, bb17
  # implict jump to bb8
bb8:   # loop depth 1
  ADDI t2, zero, -1
  ADDIW t0, t0, -1
  ADDIW t1, t1, 18
  BLT t2, t0, bb16
  # implict jump to bb9
bb9:   # loop depth 0
  LW a0, 0(sp)
  BNE a0, zero, bb15
  # implict jump to bb10
bb10:   # loop depth 0
  ADDI t0, zero, 39
  SLTI t0, t0, 1
  BEQ t0, zero, bb12
  # implict jump to bb11
bb11:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 368(sp)
  LD s0, 376(sp)
  LD s1, 384(sp)
  ADDI sp, sp, 400
  JALR zero, 0(ra)
bb12:   # loop depth 0
  ADDI s0, zero, 1
  # implict jump to bb13
bb13:   # loop depth 1
  ADDI s1, zero, 39
  SLLIW t0, s0, 2
  ADDIW s0, s0, 1
  ADDI a0, sp, 0
  ADD t0, a0, t0
  LW a0, 0(t0)
  CALL putint
  BGE s1, s0, bb14
  JAL zero, bb11
bb14:   # loop depth 1
  JAL zero, bb13
bb15:   # loop depth 0
  CALL putint
  JAL zero, bb10
bb16:   # loop depth 1
  JAL zero, bb4
bb17:   # loop depth 2
  ADD t1, a0, zero
  JAL zero, bb5
bb18:   # loop depth 2
  ADDI a3, zero, 10
  SW a2, 0(a0)
  DIVW a3, a2, a3
  LW a2, -4(a0)
  ADDW a2, a2, a3
  SW a2, -4(a0)
  JAL zero, bb7
bb19:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb20
bb20:   # loop depth 1
  ADDI t2, zero, 39
  SLLIW t1, t0, 2
  ADDIW t0, t0, 1
  ADDI t6, sp, 0
  ADD t1, t6, t1
  SW zero, 0(t1)
  BGE t2, t0, bb21
  JAL zero, bb3
bb21:   # loop depth 1
  JAL zero, bb20
bb22:   # loop depth 1
  JAL zero, bb1
