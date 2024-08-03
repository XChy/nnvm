.global main
.section .bss
image_out:
.space 2097152
image_in:
.space 2097152
.section .data


.section .text
main:
  ADDI sp, sp, -112
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
  ADDI a0, zero, 1
  # implict jump to bb1
bb1:
  ADD s3, a0, zero
  ADDI a0, zero, 1
  # implict jump to bb2
bb2:
  ADD s0, a0, zero
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SLLIW a0, a0, 9
  ADDW s7, a0, s3
  ADDI a0, zero, 1
  SUBW s5, s7, a0
  ADDIW s8, s7, 1
  SLLIW a0, s0, 9
  ADDW s6, a0, s3
  ADDI a0, zero, 1
  SUBW a0, s6, a0
  SW a0, 8(sp)
  ADDIW s4, s6, 1
  ADDIW s1, s0, 1
  SLLIW a0, s1, 9
  ADDW a0, a0, s3
  SW a0, 0(sp)
  ADDI s0, zero, 1
  LW a0, 0(sp)
  SUBW s10, a0, s0
  LW a0, 0(sp)
  ADDIW s9, a0, 1
  SLLIW a0, s6, 2
  SW a0, 4(sp)
  LA s0, image_in
  LW a0, 4(sp)
  ADD a0, s0, a0
  LW s0, 0(a0)
  ADDI a0, zero, 8
  MULW s6, s0, a0
  SLLIW s0, s5, 2
  LA a0, image_in
  ADD a0, a0, s0
  LW a0, 0(a0)
  SUBW s0, s6, a0
  SLLIW s5, s7, 2
  LA a0, image_in
  ADD a0, a0, s5
  LW a0, 0(a0)
  SUBW s0, s0, a0
  SLLIW s5, s8, 2
  LA a0, image_in
  ADD a0, a0, s5
  LW a0, 0(a0)
  SUBW s0, s0, a0
  LW a0, 8(sp)
  SLLIW s5, a0, 2
  LA a0, image_in
  ADD a0, a0, s5
  LW a0, 0(a0)
  SUBW s5, s0, a0
  SLLIW s0, s4, 2
  LA a0, image_in
  ADD a0, a0, s0
  LW a0, 0(a0)
  SUBW s4, s5, a0
  SLLIW s0, s10, 2
  LA a0, image_in
  ADD a0, a0, s0
  LW a0, 0(a0)
  SUBW s4, s4, a0
  LW a0, 0(sp)
  SLLIW s0, a0, 2
  LA a0, image_in
  ADD a0, a0, s0
  LW a0, 0(a0)
  SUBW s0, s4, a0
  SLLIW s4, s9, 2
  LA a0, image_in
  ADD a0, a0, s4
  LW a0, 0(a0)
  SUBW s4, s0, a0
  LA s0, image_out
  LW a0, 4(sp)
  ADD s0, s0, a0
  BLT s4, zero, bb18
  # implict jump to bb3
bb3:
  ADDI a0, zero, 255
  BLT a0, s4, bb17
  # implict jump to bb4
bb4:
  ADD a0, s4, zero
  # implict jump to bb5
bb5:
  # implict jump to bb6
bb6:
  SW a0, 0(s0)
  SLTI a0, s1, 1023
  BNE a0, zero, bb16
  # implict jump to bb7
bb7:
  ADDIW s0, s3, 1
  SLTI a0, s0, 511
  BNE a0, zero, bb15
  # implict jump to bb8
bb8:
  ADD a0, zero, zero
  # implict jump to bb9
bb9:
  ADD s3, a0, zero
  SLLIW s4, s3, 9
  SLLIW s1, s4, 2
  LA a0, image_out
  ADD s0, a0, s1
  LA a0, image_in
  ADD a0, a0, s1
  LW a0, 0(a0)
  SW a0, 0(s0)
  ADDIW a0, s4, 511
  SLLIW s0, a0, 2
  LA a0, image_out
  ADD s1, a0, s0
  LA a0, image_in
  ADD a0, a0, s0
  LW a0, 0(a0)
  SW a0, 0(s1)
  ADDIW a0, s3, 1
  SLTI s0, a0, 1024
  BNE s0, zero, bb14
  # implict jump to bb10
bb10:
  ADD a0, zero, zero
  # implict jump to bb11
bb11:
  ADD s3, a0, zero
  SLLIW s1, s3, 2
  LA a0, image_out
  ADD s0, a0, s1
  LA a0, image_in
  ADD a0, a0, s1
  LW a0, 0(a0)
  SW a0, 0(s0)
  LUI a0, 128
  ADDIW a0, a0, -512
  ADDW a0, s3, a0
  SLLIW s0, a0, 2
  LA a0, image_out
  ADD s1, a0, s0
  LA a0, image_in
  ADD a0, a0, s0
  LW a0, 0(a0)
  SW a0, 0(s1)
  ADDIW s0, s3, 1
  SLTI a0, s0, 512
  BNE a0, zero, bb13
  # implict jump to bb12
bb12:
  ADDI a0, zero, 59
  CALL _sysy_stoptime
  LUI a0, 128
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
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb13:
  ADD a0, s0, zero
  JAL zero, bb11
bb14:
  JAL zero, bb9
bb15:
  ADD a0, s0, zero
  JAL zero, bb1
bb16:
  ADD a0, s1, zero
  JAL zero, bb2
bb17:
  ADDI a0, zero, 255
  JAL zero, bb5
bb18:
  ADD a0, zero, zero
  JAL zero, bb6
