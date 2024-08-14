.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss


.section .data
b:
.word 0x00000001
a:
.word 0xffffffff
.section .text
main:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADDI t0, zero, 5
  BGE t0, zero, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  LA t0, a
  LA s0, b
  LA s1, a
  LW a0, 0(t0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW a0, 0(s0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW a0, 0(s1)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb2:   # loop depth 0
  ADD s3, zero, zero
  ADDI s2, zero, 5
  # implict jump to bb3
bb3:   # loop depth 1
  LA t0, a
  LA t1, a
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SW t0, 0(t1)
  BNE t0, zero, bb21
  # implict jump to bb4
bb4:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  BNE t0, zero, bb20
  # implict jump to bb6
bb6:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  BNE t0, zero, bb19
  # implict jump to bb8
bb8:   # loop depth 1
  LA t0, a
  LA t2, a
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SLTI t1, t0, 14
  SW t0, 0(t2)
  BNE t1, zero, bb18
  # implict jump to bb9
bb9:   # loop depth 1
  LA t0, a
  LA t1, a
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SW t0, 0(t1)
  BNE t0, zero, bb17
  # implict jump to bb10
bb10:   # loop depth 1
  ADD s3, zero, zero
  # implict jump to bb11
bb11:   # loop depth 1
  ADD t0, s3, zero
  # implict jump to bb12
bb12:   # loop depth 1
  BNE t0, zero, bb16
  # implict jump to bb13
bb13:   # loop depth 1
  LA t0, a
  LA t1, a
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SW t0, 0(t1)
  # implict jump to bb14
bb14:   # loop depth 1
  ADDIW s2, s2, -1
  BGE s2, zero, bb15
  JAL zero, bb1
bb15:   # loop depth 1
  JAL zero, bb3
bb16:   # loop depth 1
  LA t0, a
  LA s0, b
  LA s1, b
  LW a0, 0(t0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t0, 0(s0)
  SLLIW t0, t0, 1
  SW t0, 0(s1)
  JAL zero, bb14
bb17:   # loop depth 1
  LA t0, a
  LA a0, a
  LA a1, a
  LW t0, 0(t0)
  ADDIW t1, t0, 2
  ADDIW t0, t0, 1
  SUBW t2, t0, t1
  SW t0, 0(a0)
  ADDIW t0, t2, 1
  SW t1, 0(a1)
  SLTU s3, zero, t0
  JAL zero, bb11
bb18:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb12
bb19:   # loop depth 1
  LA t0, a
  LA s0, b
  LW a0, 0(t0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW a0, 0(s0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb8
bb20:   # loop depth 1
  LA t0, a
  LA t2, a
  LW t0, 0(t0)
  ADDIW t1, t0, 1
  SLTU t0, zero, t1
  SW t1, 0(t2)
  JAL zero, bb7
bb21:   # loop depth 1
  LA t0, a
  LA t2, a
  LW t0, 0(t0)
  ADDIW t1, t0, 1
  SLTU t0, zero, t1
  SW t1, 0(t2)
  JAL zero, bb5
