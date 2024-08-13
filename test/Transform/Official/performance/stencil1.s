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
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s7, 8(sp)
  SD s8, 16(sp)
  SD s9, 24(sp)
  SD s10, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s5, 80(sp)
  SD s6, 88(sp)
  LA a0, image_in
  ADDI s0, zero, 1
  CALL getarray
  ADD s10, a0, zero
  ADDI a0, zero, 23
  CALL _sysy_starttime
  # implict jump to bb1
bb1:   # loop depth 1
  ADDI s1, zero, 1
  ADD a0, s0, zero
  # implict jump to bb2
bb2:   # loop depth 2
  LA s2, image_in
  SLLIW s0, s1, 10
  ADDIW s3, s1, -1
  ADDW s0, s0, a0
  LA s4, image_in
  SH2ADD s2, s0, s2
  SLLIW s3, s3, 10
  LW s6, 0(s2)
  ADDW s3, s3, a0
  SH2ADD s4, s3, s4
  ADDIW s1, s1, 1
  LA s7, image_in
  SLLIW s3, s1, 10
  LW s5, -4(s4)
  ADDW s3, s3, a0
  SH2ADD s7, s3, s7
  SLLIW s3, s6, 3
  LA s8, image_out
  ADDI s9, zero, 255
  LW s6, 0(s4)
  SUBW s3, s3, s5
  SH2ADD s0, s0, s8
  LW s4, 4(s4)
  SUBW s3, s3, s6
  LW s5, -4(s2)
  SUBW s3, s3, s4
  LW s4, 4(s2)
  SUBW s2, s3, s5
  LW s3, -4(s7)
  SUBW s2, s2, s4
  LW s4, 0(s7)
  SUBW s2, s2, s3
  LW s3, 4(s7)
  SUBW s2, s2, s4
  SUBW s3, s2, s3
  BLT s9, s3, bb18
  # implict jump to bb3
bb3:   # loop depth 2
  ADD s2, s3, zero
  # implict jump to bb4
bb4:   # loop depth 2
  BLT s3, zero, bb17
  # implict jump to bb5
bb5:   # loop depth 2
  # implict jump to bb6
bb6:   # loop depth 2
  SLTI s3, s1, 1023
  SW s2, 0(s0)
  BNE s3, zero, bb16
  # implict jump to bb7
bb7:   # loop depth 1
  ADDIW s0, a0, 1
  SLTI a0, s0, 1023
  BNE a0, zero, bb15
  # implict jump to bb8
bb8:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb9
bb9:   # loop depth 1
  LA s1, image_in
  SLLIW s0, a0, 10
  LA s3, image_out
  SH2ADD s1, s0, s1
  LUI s4, 1
  LW s2, 0(s1)
  ADDIW s4, s4, -4
  SH2ADD s0, s0, s3
  ADD s1, s1, s4
  LUI s3, 1
  ADDIW a0, a0, 1
  SW s2, 0(s0)
  ADDIW s3, s3, -4
  LW s1, 0(s1)
  ADD s0, s0, s3
  SLTI s2, a0, 1024
  SW s1, 0(s0)
  BNE s2, zero, bb14
  # implict jump to bb10
bb10:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb11
bb11:   # loop depth 1
  LA s1, image_in
  LA s0, image_out
  LUI s3, 1023
  SH2ADD s1, a0, s1
  ADDIW s3, s3, 0
  LW s2, 0(s1)
  SH2ADD s0, a0, s0
  ADD s1, s1, s3
  LUI s3, 1023
  ADDIW s3, s3, 0
  ADDIW a0, a0, 1
  SW s2, 0(s0)
  ADD s0, s0, s3
  LW s1, 0(s1)
  SLTI s2, a0, 1024
  SW s1, 0(s0)
  BNE s2, zero, bb13
  # implict jump to bb12
bb12:   # loop depth 0
  LA s0, image_out
  LUI s1, 256
  ADDIW s1, s1, 0
  ADDI a0, zero, 59
  CALL _sysy_stoptime
  ADD a1, s0, zero
  ADD a0, zero, s1
  CALL putarray
  ADD a0, s10, zero
  LD ra, 0(sp)
  LD s7, 8(sp)
  LD s8, 16(sp)
  LD s9, 24(sp)
  LD s10, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  ADDI sp, sp, 96
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
  ADD s2, zero, zero
  JAL zero, bb6
bb18:   # loop depth 2
  ADDI s2, zero, 255
  JAL zero, bb4
