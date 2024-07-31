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
  LA s0, image_in
  ADD a0, s0, zero
  CALL getarray
  ADD t4, a0, zero
  SW t4, 12(sp)
  ADDI a0, zero, 23
  CALL _sysy_starttime
  ADDI s1, zero, 1
  # implict jump to bb1
bb1:
  ADD t4, s1, zero
  SW t4, 8(sp)
  ADDI t4, zero, 1
  SW t4, 4(sp)
  # implict jump to bb2
bb2:
  LW t4, 4(sp)
  ADD s4, t4, zero
  ADDI s5, zero, 1
  SUBW s5, s4, s5
  SLLIW s5, s5, 9
  LW t4, 8(sp)
  ADDW s5, s5, t4
  ADDI s6, zero, 1
  SUBW s6, s5, s6
  ADDIW s7, s5, 1
  SLLIW s8, s4, 9
  LW t4, 8(sp)
  ADDW s8, s8, t4
  ADDI s9, zero, 1
  SUBW s9, s8, s9
  ADDIW s10, s8, 1
  ADDIW t4, s4, 1
  SW t4, 0(sp)
  LW t4, 0(sp)
  SLLIW s11, t4, 9
  LW t4, 8(sp)
  ADDW s11, s11, t4
  ADDI s2, zero, 1
  SUBW s2, s11, s2
  ADDIW s0, s11, 1
  SLLIW s8, s8, 2
  LA s3, image_in
  ADD s3, s3, s8
  LW s3, 0(s3)
  ADDI s4, zero, 8
  MULW s3, s3, s4
  SLLIW s4, s6, 2
  LA s6, image_in
  ADD s4, s6, s4
  LW s4, 0(s4)
  SUBW s3, s3, s4
  SLLIW s4, s5, 2
  LA s5, image_in
  ADD s4, s5, s4
  LW s4, 0(s4)
  SUBW s3, s3, s4
  SLLIW s4, s7, 2
  LA s5, image_in
  ADD s4, s5, s4
  LW s4, 0(s4)
  SUBW s3, s3, s4
  SLLIW s4, s9, 2
  LA s5, image_in
  ADD s4, s5, s4
  LW s4, 0(s4)
  SUBW s3, s3, s4
  SLLIW s4, s10, 2
  LA s5, image_in
  ADD s4, s5, s4
  LW s4, 0(s4)
  SUBW s3, s3, s4
  SLLIW s2, s2, 2
  LA s4, image_in
  ADD s2, s4, s2
  LW s2, 0(s2)
  SUBW s2, s3, s2
  SLLIW s3, s11, 2
  LA s4, image_in
  ADD s3, s4, s3
  LW s3, 0(s3)
  SUBW s2, s2, s3
  SLLIW s0, s0, 2
  LA s3, image_in
  ADD s0, s3, s0
  LW s0, 0(s0)
  SUBW s0, s2, s0
  LA s2, image_out
  ADD s2, s2, s8
  BLT s0, zero, bb19
  # implict jump to bb3
bb3:
  ADDI s3, zero, 255
  BLT s3, s0, bb18
  # implict jump to bb4
bb4:
  # implict jump to bb5
bb5:
  # implict jump to bb6
bb6:
  SW s0, 0(s2)
  LW t4, 0(sp)
  SLTI s0, t4, 1023
  BNE s0, zero, bb17
  # implict jump to bb7
bb7:
  # implict jump to bb8
bb8:
  LW t4, 8(sp)
  ADDIW s0, t4, 1
  SLTI s2, s0, 511
  BNE s2, zero, bb16
  # implict jump to bb9
bb9:
  ADD s2, zero, zero
  # implict jump to bb10
bb10:
  ADD s3, s2, zero
  SLLIW s4, s3, 9
  SLLIW s5, s4, 2
  LA s6, image_out
  ADD s6, s6, s5
  LA s7, image_in
  ADD s5, s7, s5
  LW s5, 0(s5)
  SW s5, 0(s6)
  ADDIW s4, s4, 511
  SLLIW s4, s4, 2
  LA s5, image_out
  ADD s5, s5, s4
  LA s6, image_in
  ADD s4, s6, s4
  LW s4, 0(s4)
  SW s4, 0(s5)
  ADDIW s3, s3, 1
  SLTI s4, s3, 1024
  BNE s4, zero, bb15
  # implict jump to bb11
bb11:
  ADD s4, zero, zero
  # implict jump to bb12
bb12:
  ADD s5, s4, zero
  SLLIW s6, s5, 2
  LA s7, image_out
  ADD s7, s7, s6
  LA s8, image_in
  ADD s6, s8, s6
  LW s6, 0(s6)
  SW s6, 0(s7)
  LUI s6, 128
  ADDIW s6, s6, -512
  ADDW s6, s5, s6
  SLLIW s6, s6, 2
  LA s7, image_out
  ADD s7, s7, s6
  LA s8, image_in
  ADD s6, s8, s6
  LW s6, 0(s6)
  SW s6, 0(s7)
  ADDIW s5, s5, 1
  SLTI s6, s5, 512
  BNE s6, zero, bb14
  # implict jump to bb13
bb13:
  ADDI a0, zero, 59
  CALL _sysy_stoptime
  LUI s6, 128
  ADDIW s6, s6, 0
  ADD a0, zero, s6
  LA s6, image_out
  ADD a1, s6, zero
  CALL putarray
  LW t4, 12(sp)
  ADD a0, t4, zero
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
  ADD s4, s5, zero
  JAL zero, bb12
bb15:
  ADD s2, s3, zero
  JAL zero, bb10
bb16:
  ADD s1, s0, zero
  JAL zero, bb1
bb17:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb2
bb18:
  ADDI s0, zero, 255
  JAL zero, bb5
bb19:
  ADD s0, zero, zero
  JAL zero, bb6
