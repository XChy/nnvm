.global main
.section .bss
image_out:
.space 4194304
image_in:
.space 4194304
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
  ADD s9, a0, zero
  ADDI a0, zero, 23
  CALL _sysy_starttime
  ADDI a0, zero, 1
  # implict jump to bb1
bb1:
  ADD s8, a0, zero
  ADDI a0, zero, 1
  # implict jump to bb2
bb2:
  ADD s0, a0, zero
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SLLIW a0, a0, 10
  ADDW s1, a0, s8
  ADDI a0, zero, 1
  SUBW a0, s1, a0
  SW a0, 8(sp)
  ADDIW a0, s1, 1
  SW a0, 4(sp)
  SLLIW a0, s0, 10
  ADDW s3, a0, s8
  ADDI a0, zero, 1
  SUBW s10, s3, a0
  ADDIW s7, s3, 1
  ADDIW a0, s0, 1
  SW a0, 0(sp)
  LW a0, 0(sp)
  SLLIW a0, a0, 10
  ADDW s0, a0, s8
  ADDI a0, zero, 1
  SUBW s2, s0, a0
  ADDIW s5, s0, 1
  SLLIW s4, s3, 2
  LA a0, image_in
  ADD a0, a0, s4
  LW s3, 0(a0)
  ADDI a0, zero, 8
  MULW s6, s3, a0
  LW a0, 8(sp)
  SLLIW s3, a0, 2
  LA a0, image_in
  ADD a0, a0, s3
  LW a0, 0(a0)
  SUBW s3, s6, a0
  SLLIW s1, s1, 2
  LA a0, image_in
  ADD a0, a0, s1
  LW a0, 0(a0)
  SUBW s3, s3, a0
  LW a0, 4(sp)
  SLLIW s1, a0, 2
  LA a0, image_in
  ADD a0, a0, s1
  LW a0, 0(a0)
  SUBW s1, s3, a0
  SLLIW s3, s10, 2
  LA a0, image_in
  ADD a0, a0, s3
  LW a0, 0(a0)
  SUBW s3, s1, a0
  SLLIW s1, s7, 2
  LA a0, image_in
  ADD a0, a0, s1
  LW a0, 0(a0)
  SUBW s3, s3, a0
  SLLIW s1, s2, 2
  LA a0, image_in
  ADD a0, a0, s1
  LW a0, 0(a0)
  SUBW s1, s3, a0
  SLLIW s0, s0, 2
  LA a0, image_in
  ADD a0, a0, s0
  LW a0, 0(a0)
  SUBW s0, s1, a0
  SLLIW s1, s5, 2
  LA a0, image_in
  ADD a0, a0, s1
  LW a0, 0(a0)
  SUBW s1, s0, a0
  LA a0, image_out
  ADD s0, a0, s4
  BLT s1, zero, bb18
  # implict jump to bb3
bb3:
  ADDI a0, zero, 255
  BLT a0, s1, bb17
  # implict jump to bb4
bb4:
  ADD a0, s1, zero
  # implict jump to bb5
bb5:
  # implict jump to bb6
bb6:
  SW a0, 0(s0)
  LW a0, 0(sp)
  SLTI a0, a0, 1023
  BNE a0, zero, bb16
  # implict jump to bb7
bb7:
  ADDIW a0, s8, 1
  SLTI s0, a0, 1023
  BNE s0, zero, bb15
  # implict jump to bb8
bb8:
  ADD a0, zero, zero
  # implict jump to bb9
bb9:
  ADD s2, a0, zero
  SLLIW s3, s2, 10
  SLLIW s1, s3, 2
  LA a0, image_out
  ADD s0, a0, s1
  LA a0, image_in
  ADD a0, a0, s1
  LW a0, 0(a0)
  SW a0, 0(s0)
  ADDIW a0, s3, 1023
  SLLIW s1, a0, 2
  LA a0, image_out
  ADD s0, a0, s1
  LA a0, image_in
  ADD a0, a0, s1
  LW a0, 0(a0)
  SW a0, 0(s0)
  ADDIW a0, s2, 1
  SLTI s0, a0, 1024
  BNE s0, zero, bb14
  # implict jump to bb10
bb10:
  ADD a0, zero, zero
  # implict jump to bb11
bb11:
  ADD s1, a0, zero
  SLLIW s2, s1, 2
  LA a0, image_out
  ADD s0, a0, s2
  LA a0, image_in
  ADD a0, a0, s2
  LW a0, 0(a0)
  SW a0, 0(s0)
  LUI a0, 256
  ADDIW a0, a0, -1024
  ADDW a0, s1, a0
  SLLIW s2, a0, 2
  LA a0, image_out
  ADD s0, a0, s2
  LA a0, image_in
  ADD a0, a0, s2
  LW a0, 0(a0)
  SW a0, 0(s0)
  ADDIW s0, s1, 1
  SLTI a0, s0, 1024
  BNE a0, zero, bb13
  # implict jump to bb12
bb12:
  ADDI a0, zero, 59
  CALL _sysy_stoptime
  LUI a0, 256
  ADDIW a0, a0, 0
  ADD a0, zero, a0
  LA a1, image_out
  CALL putarray
  ADD a0, s9, zero
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
  JAL zero, bb1
bb16:
  LW a0, 0(sp)
  JAL zero, bb2
bb17:
  ADDI a0, zero, 255
  JAL zero, bb5
bb18:
  ADD a0, zero, zero
  JAL zero, bb6
