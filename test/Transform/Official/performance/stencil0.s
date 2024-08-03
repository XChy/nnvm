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
  ADD s8, a0, zero
  ADDI a0, zero, 23
  CALL _sysy_starttime
  ADDI a0, zero, 1
  # implict jump to bb1
bb1:
  ADD s1, a0, zero
  ADDI a0, zero, 1
  # implict jump to bb2
bb2:
  ADD s5, a0, zero
  ADDI a0, zero, 1
  SUBW a0, s5, a0
  SLLIW a0, a0, 9
  ADDW s2, a0, s1
  ADDI a0, zero, 1
  SUBW s3, s2, a0
  ADDIW s4, s2, 1
  SLLIW a0, s5, 9
  ADDW s0, a0, s1
  ADDI a0, zero, 1
  SUBW s10, s0, a0
  ADDIW s9, s0, 1
  ADDIW s7, s5, 1
  SLLIW a0, s7, 9
  ADDW s6, a0, s1
  ADDI a0, zero, 1
  SUBW s5, s6, a0
  ADDIW a0, s6, 1
  SW a0, 0(sp)
  SLLIW a0, s0, 2
  SW a0, 4(sp)
  LA s0, image_in
  LW a0, 4(sp)
  ADD a0, s0, a0
  LW s0, 0(a0)
  ADDI a0, zero, 8
  MULW s11, s0, a0
  SLLIW s0, s3, 2
  LA a0, image_in
  ADD a0, a0, s0
  LW a0, 0(a0)
  SUBW s0, s11, a0
  SLLIW s2, s2, 2
  LA a0, image_in
  ADD a0, a0, s2
  LW a0, 0(a0)
  SUBW s2, s0, a0
  SLLIW s0, s4, 2
  LA a0, image_in
  ADD a0, a0, s0
  LW a0, 0(a0)
  SUBW s2, s2, a0
  SLLIW s0, s10, 2
  LA a0, image_in
  ADD a0, a0, s0
  LW a0, 0(a0)
  SUBW s2, s2, a0
  SLLIW s0, s9, 2
  LA a0, image_in
  ADD a0, a0, s0
  LW a0, 0(a0)
  SUBW s0, s2, a0
  SLLIW s2, s5, 2
  LA a0, image_in
  ADD a0, a0, s2
  LW a0, 0(a0)
  SUBW s0, s0, a0
  SLLIW s2, s6, 2
  LA a0, image_in
  ADD a0, a0, s2
  LW a0, 0(a0)
  SUBW s0, s0, a0
  LW a0, 0(sp)
  SLLIW s2, a0, 2
  LA a0, image_in
  ADD a0, a0, s2
  LW a0, 0(a0)
  SUBW s2, s0, a0
  LA s0, image_out
  LW a0, 4(sp)
  ADD s0, s0, a0
  BLT s2, zero, bb19
  # implict jump to bb3
bb3:
  ADDI a0, zero, 255
  BLT a0, s2, bb18
  # implict jump to bb4
bb4:
  ADD a0, s2, zero
  # implict jump to bb5
bb5:
  # implict jump to bb6
bb6:
  SW a0, 0(s0)
  SLTI a0, s7, 1023
  BNE a0, zero, bb17
  # implict jump to bb7
bb7:
  # implict jump to bb8
bb8:
  ADDIW s0, s1, 1
  SLTI a0, s0, 511
  BNE a0, zero, bb16
  # implict jump to bb9
bb9:
  ADD a0, zero, zero
  # implict jump to bb10
bb10:
  ADD s2, a0, zero
  SLLIW s1, s2, 9
  SLLIW s0, s1, 2
  LA a0, image_out
  ADD s3, a0, s0
  LA a0, image_in
  ADD a0, a0, s0
  LW a0, 0(a0)
  SW a0, 0(s3)
  ADDIW a0, s1, 511
  SLLIW s1, a0, 2
  LA a0, image_out
  ADD s0, a0, s1
  LA a0, image_in
  ADD a0, a0, s1
  LW a0, 0(a0)
  SW a0, 0(s0)
  ADDIW s0, s2, 1
  SLTI a0, s0, 1024
  BNE a0, zero, bb15
  # implict jump to bb11
bb11:
  ADD a0, zero, zero
  # implict jump to bb12
bb12:
  ADD s2, a0, zero
  SLLIW s1, s2, 2
  LA a0, image_out
  ADD s0, a0, s1
  LA a0, image_in
  ADD a0, a0, s1
  LW a0, 0(a0)
  SW a0, 0(s0)
  LUI a0, 128
  ADDIW a0, a0, -512
  ADDW a0, s2, a0
  SLLIW s1, a0, 2
  LA a0, image_out
  ADD s0, a0, s1
  LA a0, image_in
  ADD a0, a0, s1
  LW a0, 0(a0)
  SW a0, 0(s0)
  ADDIW a0, s2, 1
  SLTI s0, a0, 512
  BNE s0, zero, bb14
  # implict jump to bb13
bb13:
  ADDI a0, zero, 59
  CALL _sysy_stoptime
  LUI a0, 128
  ADDIW a0, a0, 0
  ADD a0, zero, a0
  LA a1, image_out
  CALL putarray
  ADD a0, s8, zero
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
bb14:
  JAL zero, bb12
bb15:
  ADD a0, s0, zero
  JAL zero, bb10
bb16:
  ADD a0, s0, zero
  JAL zero, bb1
bb17:
  ADD a0, s7, zero
  JAL zero, bb2
bb18:
  ADDI a0, zero, 255
  JAL zero, bb5
bb19:
  ADD a0, zero, zero
  JAL zero, bb6
