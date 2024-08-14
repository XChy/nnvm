.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
image_out:
.space 4194304
image_in:
.space 4194304
.section .data


.section .text
main:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  LA s0, image_in
  ADDI s1, zero, 1
  ADD a0, s0, zero
  CALL getarray
  ADD s3, a0, zero
  ADDI a0, zero, 23
  CALL _sysy_starttime
  # implict jump to bb1
bb1:   # loop depth 1
  LA s2, image_out
  ADDI t2, zero, 1
  # implict jump to bb2
bb2:   # loop depth 2
  ADDI a3, zero, 255
  SLLIW t1, t2, 10
  ADDIW t0, t2, -1
  ADDW t1, t1, s1
  SLLIW t0, t0, 10
  SH2ADD a0, t1, s0
  ADDW t0, t0, s1
  LW a1, 0(a0)
  SH2ADD a2, t0, s0
  ADDIW t2, t2, 1
  SH2ADD a4, t1, s2
  SLLIW t0, t2, 10
  LW t1, -4(a2)
  ADDW t0, t0, s1
  SH2ADD a5, t0, s0
  SLLIW t0, a1, 3
  LW a1, 0(a2)
  SUBW t0, t0, t1
  LW t1, 4(a2)
  SUBW t0, t0, a1
  LW a1, -4(a0)
  SUBW t0, t0, t1
  LW t1, 4(a0)
  SUBW t0, t0, a1
  LW a0, -4(a5)
  SUBW t0, t0, t1
  LW t1, 0(a5)
  SUBW t0, t0, a0
  LW a0, 4(a5)
  SUBW t0, t0, t1
  SUBW t1, t0, a0
  BLT a3, t1, bb18
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
  SW t0, 0(a4)
  BNE t1, zero, bb16
  # implict jump to bb7
bb7:   # loop depth 1
  ADDIW s1, s1, 1
  SLTI t0, s1, 1023
  BNE t0, zero, bb15
  # implict jump to bb8
bb8:   # loop depth 0
  LUI t1, 1
  ADD t0, zero, zero
  ADDIW t1, t1, -4
  ADD a3, zero, t1
  # implict jump to bb9
bb9:   # loop depth 1
  SLLIW t1, t0, 10
  ADDIW t0, t0, 1
  SH2ADD t2, t1, s0
  SH2ADD t1, t1, s2
  LW a0, 0(t2)
  ADD a1, t2, a3
  ADD t2, t1, a3
  SLTI a2, t0, 1024
  SW a0, 0(t1)
  LW t1, 0(a1)
  SW t1, 0(t2)
  BNE a2, zero, bb14
  # implict jump to bb10
bb10:   # loop depth 0
  LUI t1, 1023
  ADD t0, zero, zero
  ADDIW t1, t1, 0
  ADD a3, zero, t1
  # implict jump to bb11
bb11:   # loop depth 1
  SH2ADD t2, t0, s0
  SH2ADD t1, t0, s2
  LW a0, 0(t2)
  ADD a1, t2, a3
  ADDIW t0, t0, 1
  ADD t2, t1, a3
  SLTI a2, t0, 1024
  SW a0, 0(t1)
  LW t1, 0(a1)
  SW t1, 0(t2)
  BNE a2, zero, bb13
  # implict jump to bb12
bb12:   # loop depth 0
  LUI s0, 256
  ADDI a0, zero, 59
  ADDIW s0, s0, 0
  CALL _sysy_stoptime
  ADD a1, s2, zero
  ADD a0, zero, s0
  CALL putarray
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
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
