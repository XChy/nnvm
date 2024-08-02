.global main
.section .bss
image_out:
.space 2097152
image_in:
.space 2097152
.section .data


.section .text
main:
  ADDI sp, sp, -128
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  SD s10, 104(sp)
  SD s11, 112(sp)
  LA a0, image_in
  CALL getarray
  ADD s0, a0, zero
  ADDI a0, zero, 23
  CALL _sysy_starttime
  ADDI a0, zero, 1
  # implict jump to bb1
bb1:
  ADDI s1, zero, 1
  # implict jump to bb2
bb2:
  ADDI s2, zero, 1
  SUBW s2, s1, s2
  SLLIW s2, s2, 9
  ADDW s2, s2, a0
  ADDI s3, zero, 1
  SUBW s3, s2, s3
  ADDIW s4, s2, 1
  SLLIW s5, s1, 9
  ADDW s5, s5, a0
  ADDI s6, zero, 1
  SUBW s6, s5, s6
  ADDIW s7, s5, 1
  ADDIW s1, s1, 1
  SLLIW s8, s1, 9
  ADDW s8, s8, a0
  SW s8, 0(sp)
  ADDI s9, zero, 1
  LW s8, 0(sp)
  SUBW s9, s8, s9
  LW s8, 0(sp)
  ADDIW s10, s8, 1
  SLLIW s5, s5, 2
  LA s11, image_in
  ADD s11, s11, s5
  LW s11, 0(s11)
  ADDI s8, zero, 8
  SW s8, 4(sp)
  LW s8, 4(sp)
  MULW s11, s11, s8
  SLLIW s3, s3, 2
  SW s3, 8(sp)
  LA s3, image_in
  SD s3, 120(sp)
  LD s3, 120(sp)
  LW s8, 8(sp)
  ADD s3, s3, s8
  LW s3, 0(s3)
  SUBW s3, s11, s3
  SLLIW s2, s2, 2
  LA s11, image_in
  ADD s2, s11, s2
  LW s2, 0(s2)
  SUBW s2, s3, s2
  SLLIW s3, s4, 2
  LA s4, image_in
  ADD s3, s4, s3
  LW s3, 0(s3)
  SUBW s2, s2, s3
  SLLIW s3, s6, 2
  LA s4, image_in
  ADD s3, s4, s3
  LW s3, 0(s3)
  SUBW s2, s2, s3
  SLLIW s3, s7, 2
  LA s4, image_in
  ADD s3, s4, s3
  LW s3, 0(s3)
  SUBW s2, s2, s3
  SLLIW s3, s9, 2
  LA s4, image_in
  ADD s3, s4, s3
  LW s3, 0(s3)
  SUBW s2, s2, s3
  LW s3, 0(sp)
  SLLIW s3, s3, 2
  LA s4, image_in
  ADD s3, s4, s3
  LW s3, 0(s3)
  SUBW s2, s2, s3
  SLLIW s3, s10, 2
  LA s4, image_in
  ADD s3, s4, s3
  LW s3, 0(s3)
  SUBW s2, s2, s3
  LA s3, image_out
  ADD s3, s3, s5
  BLT s2, zero, bb18
  # implict jump to bb3
bb3:
  ADDI s4, zero, 255
  BLT s4, s2, bb17
  # implict jump to bb4
bb4:
  # implict jump to bb5
bb5:
  # implict jump to bb6
bb6:
  SW s2, 0(s3)
  SLTI s2, s1, 1023
  BNE s2, zero, bb16
  # implict jump to bb7
bb7:
  ADDIW a0, a0, 1
  SLTI s1, a0, 511
  BNE s1, zero, bb15
  # implict jump to bb8
bb8:
  ADD a0, zero, zero
  # implict jump to bb9
bb9:
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
bb10:
  ADD a0, zero, zero
  # implict jump to bb11
bb11:
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
bb12:
  ADDI a0, zero, 59
  CALL _sysy_stoptime
  LUI a0, 128
  ADDIW a0, a0, 0
  ADD a0, zero, a0
  LA a1, image_out
  CALL putarray
  ADD a0, s0, zero
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s10, 104(sp)
  LD s11, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb13:
  JAL zero, bb11
bb14:
  JAL zero, bb9
bb15:
  JAL zero, bb1
bb16:
  JAL zero, bb2
bb17:
  ADDI s2, zero, 255
  JAL zero, bb5
bb18:
  ADD s2, zero, zero
  JAL zero, bb6
