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
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  LA a0, image_in
  ADDI s2, zero, 1
  CALL getarray
  ADD s0, a0, zero
  ADDI a0, zero, 23
  CALL _sysy_starttime
  # implict jump to bb1
bb1:   # loop depth 1
  ADDI s1, zero, 1
  # implict jump to bb2
bb2:   # loop depth 2
  LA s4, image_in
  SLLIW s3, s1, 10
  ADDIW a0, s1, -1
  ADDW s3, s3, s2
  SLLIW a0, a0, 10
  SLLIW s3, s3, 2
  LA s6, image_in
  ADD s4, s4, s3
  ADDW a0, a0, s2
  LW s5, 0(s4)
  SLLIW a0, a0, 2
  ADD s6, s6, a0
  ADDIW s1, s1, 1
  SLLIW a0, s1, 10
  LA s8, image_in
  LW s7, -4(s6)
  ADDW a0, a0, s2
  SLLIW s9, a0, 2
  SLLIW a0, s5, 3
  ADD s8, s8, s9
  LA s9, image_out
  LW s5, 0(s6)
  SUBW a0, a0, s7
  ADD s3, s9, s3
  LW s6, 4(s6)
  SUBW a0, a0, s5
  LW s5, -4(s4)
  SUBW a0, a0, s6
  LW s4, 4(s4)
  SUBW a0, a0, s5
  LW s5, -4(s8)
  SUBW a0, a0, s4
  LW s4, 0(s8)
  SUBW a0, a0, s5
  LW s5, 4(s8)
  SUBW a0, a0, s4
  SUBW a0, a0, s5
  BLT a0, zero, bb18
  # implict jump to bb3
bb3:   # loop depth 2
  ADDI s4, zero, 255
  BLT s4, a0, bb17
  # implict jump to bb4
bb4:   # loop depth 2
  # implict jump to bb5
bb5:   # loop depth 2
  # implict jump to bb6
bb6:   # loop depth 2
  SLTI s4, s1, 1023
  SW a0, 0(s3)
  BNE s4, zero, bb16
  # implict jump to bb7
bb7:   # loop depth 1
  ADDIW s2, s2, 1
  SLTI a0, s2, 1023
  BNE a0, zero, bb15
  # implict jump to bb8
bb8:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb9
bb9:   # loop depth 1
  LA s2, image_in
  SLLIW s1, a0, 10
  LA s4, image_out
  SLLIW s1, s1, 2
  LUI s5, 1
  ADD s2, s2, s1
  ADDIW s5, s5, -4
  LW s3, 0(s2)
  ADD s1, s4, s1
  ADD s2, s2, s5
  LUI s4, 1
  ADDIW s4, s4, -4
  ADDIW a0, a0, 1
  SW s3, 0(s1)
  ADD s1, s1, s4
  LW s2, 0(s2)
  SLTI s3, a0, 1024
  SW s2, 0(s1)
  BNE s3, zero, bb14
  # implict jump to bb10
bb10:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb11
bb11:   # loop depth 1
  LA s2, image_in
  SLLIW s1, a0, 2
  LA s4, image_out
  ADD s2, s2, s1
  LUI s5, 1023
  LW s3, 0(s2)
  ADDIW s5, s5, 0
  ADD s1, s4, s1
  ADD s2, s2, s5
  LUI s4, 1023
  ADDIW a0, a0, 1
  SW s3, 0(s1)
  ADDIW s4, s4, 0
  LW s2, 0(s2)
  ADD s1, s1, s4
  SLTI s3, a0, 1024
  SW s2, 0(s1)
  BNE s3, zero, bb13
  # implict jump to bb12
bb12:   # loop depth 0
  LUI s2, 256
  LA s1, image_out
  ADDI a0, zero, 59
  ADDIW s2, s2, 0
  CALL _sysy_stoptime
  ADD a0, zero, s2
  ADD a1, s1, zero
  CALL putarray
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
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
  ADDI a0, zero, 255
  JAL zero, bb5
bb18:   # loop depth 2
  ADD a0, zero, zero
  JAL zero, bb6
