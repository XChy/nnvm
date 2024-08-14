.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
image_out:
.space 2097152
image_in:
.space 2097152
.section .data


.section .text
main:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  LA a0, image_in
  ADDI s0, zero, 1
  CALL getarray
  ADD s2, a0, zero
  ADDI a0, zero, 23
  CALL _sysy_starttime
  # implict jump to bb1
bb1:   # loop depth 1
  ADDI t2, zero, 1
  # implict jump to bb2
bb2:   # loop depth 2
  LA a0, image_in
  SLLIW t1, t2, 9
  ADDIW t0, t2, -1
  ADDW t1, t1, s0
  LA a2, image_in
  SH2ADD a0, t1, a0
  SLLIW t0, t0, 9
  LW a1, 0(a0)
  ADDW t0, t0, s0
  SH2ADD a2, t0, a2
  ADDIW t2, t2, 1
  LA a4, image_in
  SLLIW t0, t2, 9
  LW a3, -4(a2)
  ADDW t0, t0, s0
  SH2ADD a4, t0, a4
  SLLIW t0, a1, 3
  LA a6, image_out
  ADDI a5, zero, 255
  LW a1, 0(a2)
  SUBW t0, t0, a3
  SH2ADD a3, t1, a6
  LW t1, 4(a2)
  SUBW t0, t0, a1
  LW a1, -4(a0)
  SUBW t0, t0, t1
  LW t1, 4(a0)
  SUBW t0, t0, a1
  LW a0, -4(a4)
  SUBW t0, t0, t1
  LW t1, 0(a4)
  SUBW t0, t0, a0
  LW a0, 4(a4)
  SUBW t0, t0, t1
  SUBW t1, t0, a0
  BLT a5, t1, bb18
  # implict jump to bb3
bb3:   # loop depth 2
  ADD t0, t1, zero
  # implict jump to bb4
bb4:   # loop depth 2
  BLT t1, zero, bb17
  # implict jump to bb5
bb5:   # loop depth 2
  # implict jump to bb6
bb6:   # loop depth 2
  SLTI t1, t2, 1023
  SW t0, 0(a3)
  BNE t1, zero, bb16
  # implict jump to bb7
bb7:   # loop depth 1
  ADDIW s0, s0, 1
  SLTI t0, s0, 511
  BNE t0, zero, bb15
  # implict jump to bb8
bb8:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb9
bb9:   # loop depth 1
  LA t2, image_in
  SLLIW t1, t0, 9
  LA a1, image_out
  SH2ADD t2, t1, t2
  ADDIW t0, t0, 1
  LW a0, 0(t2)
  SH2ADD t1, t1, a1
  SLTI a1, t0, 1024
  SW a0, 0(t1)
  LW t2, 2044(t2)
  SW t2, 2044(t1)
  BNE a1, zero, bb14
  # implict jump to bb10
bb10:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb11
bb11:   # loop depth 1
  LA t2, image_in
  LA t1, image_out
  LUI a1, 512
  SH2ADD t2, t0, t2
  ADDIW a1, a1, -2048
  LW a0, 0(t2)
  SH2ADD t1, t0, t1
  ADD t2, t2, a1
  LUI a1, 512
  ADDIW a1, a1, -2048
  ADDIW t0, t0, 1
  SW a0, 0(t1)
  ADD t1, t1, a1
  LW t2, 0(t2)
  SLTI a0, t0, 512
  SW t2, 0(t1)
  BNE a0, zero, bb13
  # implict jump to bb12
bb12:   # loop depth 0
  LA s1, image_out
  LUI s0, 128
  ADDIW s0, s0, 0
  ADDI a0, zero, 59
  CALL _sysy_stoptime
  ADD a1, s1, zero
  ADD a0, zero, s0
  CALL putarray
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb13:   # loop depth 1
  JAL zero, bb11
bb14:   # loop depth 1
  JAL zero, bb9
bb15:   # loop depth 1
  JAL zero, bb1
bb16:   # loop depth 2
  JAL zero, bb2
bb17:   # loop depth 2
  ADD t0, zero, zero
  JAL zero, bb6
bb18:   # loop depth 2
  ADDI t0, zero, 255
  JAL zero, bb4
