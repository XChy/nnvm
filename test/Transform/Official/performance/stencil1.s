.global main
.section .bss
image_out:
.space 4194304
image_in:
.space 4194304
.section .data


.section .text
main:
  ADDI sp, sp, -128
  SD s7, 16(sp)
  SD s8, 24(sp)
  SD s9, 32(sp)
  SD s10, 40(sp)
  SD ra, 48(sp)
  SD s0, 56(sp)
  SD s1, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD s5, 96(sp)
  SD s6, 104(sp)
  LA a0, image_in
  CALL getarray
  ADD s2, a0, zero
  ADDI a0, zero, 23
  CALL _sysy_starttime
  ADDI s1, zero, 1
  # implict jump to bb1
bb1:
  ADDI a0, zero, 1
  # implict jump to bb2
bb2:
  ADDI s0, zero, 1
  SUBW s0, a0, s0
  SLLIW s0, s0, 10
  ADDW s0, s0, s1
  ADDI s3, zero, 1
  SUBW s3, s0, s3
  ADDIW s4, s0, 1
  SLLIW s5, a0, 10
  ADDW s5, s5, s1
  ADDI s6, zero, 1
  SUBW s6, s5, s6
  ADDIW s7, s5, 1
  SW s7, 0(sp)
  ADDIW a0, a0, 1
  SLLIW s8, a0, 10
  ADDW s8, s8, s1
  ADDI s9, zero, 1
  SUBW s9, s8, s9
  ADDIW s10, s8, 1
  SLLIW s5, s5, 2
  SW s5, 8(sp)
  LA s5, image_in
  LW s7, 8(sp)
  ADD s5, s5, s7
  LW s5, 0(s5)
  ADDI s7, zero, 8
  SW s7, 4(sp)
  LW s7, 4(sp)
  MULW s5, s5, s7
  SLLIW s3, s3, 2
  LA s7, image_in
  SD s7, 112(sp)
  LD s7, 112(sp)
  ADD s3, s7, s3
  LW s3, 0(s3)
  SUBW s3, s5, s3
  SLLIW s0, s0, 2
  LA s5, image_in
  ADD s0, s5, s0
  LW s0, 0(s0)
  SUBW s0, s3, s0
  SLLIW s3, s4, 2
  LA s4, image_in
  ADD s3, s4, s3
  LW s3, 0(s3)
  SUBW s0, s0, s3
  SLLIW s3, s6, 2
  LA s4, image_in
  ADD s3, s4, s3
  LW s3, 0(s3)
  SUBW s0, s0, s3
  LW s3, 0(sp)
  SLLIW s3, s3, 2
  LA s4, image_in
  ADD s3, s4, s3
  LW s3, 0(s3)
  SUBW s0, s0, s3
  SLLIW s3, s9, 2
  LA s4, image_in
  ADD s3, s4, s3
  LW s3, 0(s3)
  SUBW s0, s0, s3
  SLLIW s3, s8, 2
  LA s4, image_in
  ADD s3, s4, s3
  LW s3, 0(s3)
  SUBW s0, s0, s3
  SLLIW s3, s10, 2
  LA s4, image_in
  ADD s3, s4, s3
  LW s3, 0(s3)
  SUBW s0, s0, s3
  LA s3, image_out
  LW s4, 8(sp)
  ADD s3, s3, s4
  BLT s0, zero, bb18
  # implict jump to bb3
bb3:
  ADDI s4, zero, 255
  BLT s4, s0, bb17
  # implict jump to bb4
bb4:
  # implict jump to bb5
bb5:
  # implict jump to bb6
bb6:
  SW s0, 0(s3)
  SLTI s0, a0, 1023
  BNE s0, zero, bb16
  # implict jump to bb7
bb7:
  ADDIW s1, s1, 1
  SLTI s0, s1, 1023
  BNE s0, zero, bb15
  # implict jump to bb8
bb8:
  ADD a0, zero, zero
  # implict jump to bb9
bb9:
  SLLIW s0, a0, 10
  SLLIW s1, s0, 2
  LA s3, image_out
  ADD s3, s3, s1
  LA s4, image_in
  ADD s1, s4, s1
  LW s1, 0(s1)
  SW s1, 0(s3)
  ADDIW s0, s0, 1023
  SLLIW s0, s0, 2
  LA s1, image_out
  ADD s1, s1, s0
  LA s3, image_in
  ADD s0, s3, s0
  LW s0, 0(s0)
  SW s0, 0(s1)
  ADDIW a0, a0, 1
  SLTI s0, a0, 1024
  BNE s0, zero, bb14
  # implict jump to bb10
bb10:
  ADD a0, zero, zero
  # implict jump to bb11
bb11:
  SLLIW s0, a0, 2
  LA s1, image_out
  ADD s1, s1, s0
  LA s3, image_in
  ADD s0, s3, s0
  LW s0, 0(s0)
  SW s0, 0(s1)
  LUI s0, 256
  ADDIW s0, s0, -1024
  ADDW s0, a0, s0
  SLLIW s0, s0, 2
  LA s1, image_out
  ADD s1, s1, s0
  LA s3, image_in
  ADD s0, s3, s0
  LW s0, 0(s0)
  SW s0, 0(s1)
  ADDIW a0, a0, 1
  SLTI s0, a0, 1024
  BNE s0, zero, bb13
  # implict jump to bb12
bb12:
  ADDI a0, zero, 59
  CALL _sysy_stoptime
  LUI a0, 256
  ADDIW a0, a0, 0
  ADD a0, zero, a0
  LA a1, image_out
  CALL putarray
  ADD a0, s2, zero
  LD s7, 16(sp)
  LD s8, 24(sp)
  LD s9, 32(sp)
  LD s10, 40(sp)
  LD ra, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s5, 96(sp)
  LD s6, 104(sp)
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
  ADDI s0, zero, 255
  JAL zero, bb5
bb18:
  ADD s0, zero, zero
  JAL zero, bb6
