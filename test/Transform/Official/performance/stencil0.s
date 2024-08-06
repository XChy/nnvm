.global main
.section .bss
image_out:
.space 2097152
image_in:
.space 2097152
.section .data


.section .text
main:   # loop depth 0
  ADDI sp, sp, -128
  SD s8, 8(sp)
  SD s9, 16(sp)
  SD s10, 24(sp)
  SD s11, 32(sp)
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  SD s7, 104(sp)
  LA a0, image_in
  CALL getarray
  SW a0, 0(sp)
  ADDI a0, zero, 23
  CALL _sysy_starttime
  ADDI s2, zero, 1
  # implict jump to bb1
bb1:   # loop depth 1
  ADDI a0, zero, 1
  # implict jump to bb2
bb2:   # loop depth 2
  ADDI s1, zero, 1
  SUBW s1, a0, s1
  SLLIW s1, s1, 9
  ADDW s1, s1, s2
  ADDI s3, zero, 1
  SUBW s3, s1, s3
  ADDIW s4, s1, 1
  SLLIW s5, a0, 9
  ADDW s5, s5, s2
  ADDI s6, zero, 1
  SUBW s6, s5, s6
  ADDIW s7, s5, 1
  ADDIW a0, a0, 1
  SLLIW s8, a0, 9
  ADDW s9, s8, s2
  ADDI s8, zero, 1
  SUBW s8, s9, s8
  ADDIW s10, s9, 1
  SLLIW s11, s5, 2
  LA s5, image_in
  ADD s5, s5, s11
  LW s5, 0(s5)
  ADDI s0, zero, 8
  SW s0, 4(sp)
  LW s0, 4(sp)
  MULW s5, s5, s0
  SLLIW s3, s3, 2
  LA s0, image_in
  SD s0, 112(sp)
  LD s0, 112(sp)
  ADD s3, s0, s3
  LW s3, 0(s3)
  SUBW s3, s5, s3
  SLLIW s5, s1, 2
  LA s1, image_in
  ADD s1, s1, s5
  LW s1, 0(s1)
  SUBW s3, s3, s1
  SLLIW s4, s4, 2
  LA s1, image_in
  ADD s1, s1, s4
  LW s1, 0(s1)
  SUBW s1, s3, s1
  SLLIW s4, s6, 2
  LA s3, image_in
  ADD s3, s3, s4
  LW s3, 0(s3)
  SUBW s1, s1, s3
  SLLIW s3, s7, 2
  LA s4, image_in
  ADD s3, s4, s3
  LW s3, 0(s3)
  SUBW s1, s1, s3
  SLLIW s3, s8, 2
  LA s4, image_in
  ADD s3, s4, s3
  LW s3, 0(s3)
  SUBW s1, s1, s3
  SLLIW s3, s9, 2
  LA s4, image_in
  ADD s3, s4, s3
  LW s3, 0(s3)
  SUBW s1, s1, s3
  SLLIW s3, s10, 2
  LA s4, image_in
  ADD s3, s4, s3
  LW s3, 0(s3)
  SUBW s1, s1, s3
  LA s3, image_out
  ADD s3, s3, s11
  BLT s1, zero, bb18
  # implict jump to bb3
bb3:   # loop depth 2
  ADDI s4, zero, 255
  BLT s4, s1, bb17
  # implict jump to bb4
bb4:   # loop depth 2
  # implict jump to bb5
bb5:   # loop depth 2
  # implict jump to bb6
bb6:   # loop depth 2
  SW s1, 0(s3)
  SLTI s1, a0, 1023
  BNE s1, zero, bb16
  # implict jump to bb7
bb7:   # loop depth 1
  ADDIW s2, s2, 1
  SLTI s1, s2, 511
  BNE s1, zero, bb15
  # implict jump to bb8
bb8:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb9
bb9:   # loop depth 1
  SLLIW s1, a0, 9
  SLLIW s2, s1, 2
  LA s3, image_out
  ADD s3, s3, s2
  LA s4, image_in
  ADD s2, s4, s2
  LW s2, 0(s2)
  SW s2, 0(s3)
  ADDIW s1, s1, 511
  SLLIW s1, s1, 2
  LA s2, image_out
  ADD s2, s2, s1
  LA s3, image_in
  ADD s1, s3, s1
  LW s1, 0(s1)
  SW s1, 0(s2)
  ADDIW a0, a0, 1
  SLTI s1, a0, 1024
  BNE s1, zero, bb14
  # implict jump to bb10
bb10:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb11
bb11:   # loop depth 1
  SLLIW s1, a0, 2
  LA s2, image_out
  ADD s2, s2, s1
  LA s3, image_in
  ADD s1, s3, s1
  LW s1, 0(s1)
  SW s1, 0(s2)
  LUI s1, 128
  ADDIW s1, s1, -512
  ADDW s1, a0, s1
  SLLIW s1, s1, 2
  LA s2, image_out
  ADD s2, s2, s1
  LA s3, image_in
  ADD s1, s3, s1
  LW s1, 0(s1)
  SW s1, 0(s2)
  ADDIW a0, a0, 1
  SLTI s1, a0, 512
  BNE s1, zero, bb13
  # implict jump to bb12
bb12:   # loop depth 0
  ADDI a0, zero, 59
  CALL _sysy_stoptime
  LUI a0, 128
  ADDIW a0, a0, 0
  ADD a0, zero, a0
  LA a1, image_out
  CALL putarray
  LW a0, 0(sp)
  LD s8, 8(sp)
  LD s9, 16(sp)
  LD s10, 24(sp)
  LD s11, 32(sp)
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s7, 104(sp)
  ADDI sp, sp, 128
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
  ADDI s1, zero, 255
  JAL zero, bb5
bb18:   # loop depth 2
  ADD s1, zero, zero
  JAL zero, bb6
