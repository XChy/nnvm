.global main
.global cutout
.section .bss
image_out:
.space 2097152
image_in:
.space 2097152


.section .data


height:
.word 0x00000400
width:
.word 0x00000200
.section .text
main:
  ADDI sp, sp, -256
  SD ra, 152(sp)
  SD s4, 160(sp)
  SD s1, 168(sp)
  SD s0, 176(sp)
  SD s5, 184(sp)
  SD s7, 192(sp)
  SD s10, 200(sp)
  SD s11, 208(sp)
  SD s9, 216(sp)
  SD s8, 224(sp)
  SD s6, 232(sp)
  SD s3, 240(sp)
  SD s2, 248(sp)
  LA s0, image_in
  ADD a0, s0, zero
  CALL getarray
  ADD t4, a0, zero
  SW t4, 0(sp)
  ADDI a0, zero, 23
  CALL _sysy_starttime
  ADD t4, zero, zero
  SW t4, 44(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  ADDI t4, zero, 1
  SW t4, 36(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, zero, zero
  SW t4, 28(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb1
bb1:
  LW t4, 4(sp)
  ADD s0, t4, zero
  LW t4, 8(sp)
  ADD s11, t4, zero
  LW t4, 12(sp)
  ADD s10, t4, zero
  LW t4, 16(sp)
  ADD s9, t4, zero
  LW t4, 20(sp)
  ADD s8, t4, zero
  LW t4, 24(sp)
  ADD s7, t4, zero
  LW t4, 28(sp)
  ADD s6, t4, zero
  LW t4, 32(sp)
  ADD s5, t4, zero
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t4, 40(sp)
  ADD s3, t4, zero
  LW t4, 44(sp)
  ADD s2, t4, zero
  LW t4, 48(sp)
  SLTI s1, t4, 511
  BNE s1, zero, bb9
  # implict jump to bb2
bb2:
  ADD s0, zero, zero
  # implict jump to bb3
bb3:
  ADD s1, s0, zero
  SLTI s2, s1, 1024
  BNE s2, zero, bb8
  # implict jump to bb4
bb4:
  ADD s0, zero, zero
  # implict jump to bb5
bb5:
  ADD s1, s0, zero
  SLTI s2, s1, 512
  BNE s2, zero, bb7
  # implict jump to bb6
bb6:
  ADDI a0, zero, 59
  CALL _sysy_stoptime
  LUI s0, 128
  ADDIW s0, s0, 0
  ADD a0, zero, s0
  LA s0, image_out
  ADD a1, s0, zero
  CALL putarray
  LW t4, 0(sp)
  ADD a0, t4, zero
  LD ra, 152(sp)
  LD s4, 160(sp)
  LD s1, 168(sp)
  LD s0, 176(sp)
  LD s5, 184(sp)
  LD s7, 192(sp)
  LD s10, 200(sp)
  LD s11, 208(sp)
  LD s9, 216(sp)
  LD s8, 224(sp)
  LD s6, 232(sp)
  LD s3, 240(sp)
  LD s2, 248(sp)
  ADDI sp, sp, 256
  JALR zero, 0(ra)
bb7:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, image_out
  ADD s4, s2, s3
  LA s2, image_in
  ADD s5, s2, s3
  LW s2, 0(s5)
  SW s2, 0(s4)
  LUI s2, 128
  ADDIW s2, s2, -512
  ADDW s3, s1, s2
  ADDI s2, zero, 4
  MULW s4, s3, s2
  LA s2, image_out
  ADD s3, s2, s4
  LA s2, image_in
  ADD s5, s2, s4
  LW s2, 0(s5)
  SW s2, 0(s3)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb5
bb8:
  ADDI s2, zero, 512
  MULW s3, s1, s2
  ADDI s2, zero, 4
  MULW s4, s3, s2
  LA s2, image_out
  ADD s5, s2, s4
  LA s2, image_in
  ADD s6, s2, s4
  LW s2, 0(s6)
  SW s2, 0(s5)
  ADDIW s2, s3, 511
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s2, image_out
  ADD s3, s2, s4
  LA s2, image_in
  ADD s5, s2, s4
  LW s2, 0(s5)
  SW s2, 0(s3)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb3
bb9:
  ADD s1, s2, zero
  ADD s2, s3, zero
  ADD s3, s5, zero
  ADD s5, s6, zero
  ADD s6, s7, zero
  ADD s7, s8, zero
  ADD s8, s9, zero
  ADD t4, s10, zero
  SW t4, 144(sp)
  ADD t4, s11, zero
  SW t4, 100(sp)
  ADD t4, s0, zero
  SW t4, 96(sp)
  ADDI t4, zero, 1
  SW t4, 92(sp)
  # implict jump to bb10
bb10:
  LW t4, 92(sp)
  ADD s4, t4, zero
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  ADD t4, s8, zero
  SW t4, 64(sp)
  ADD t4, s7, zero
  SW t4, 68(sp)
  ADD t4, s6, zero
  SW t4, 72(sp)
  ADD t4, s5, zero
  SW t4, 76(sp)
  ADD t4, s3, zero
  SW t4, 80(sp)
  ADD t4, s2, zero
  SW t4, 84(sp)
  ADD t4, s1, zero
  SW t4, 88(sp)
  SLTI s0, s4, 1023
  BNE s0, zero, bb12
  # implict jump to bb11
bb11:
  LW t4, 48(sp)
  ADDIW s0, t4, 1
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  ADD t4, s0, zero
  SW t4, 36(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb1
bb12:
  ADDI s0, zero, 1
  SUBW s11, s4, s0
  ADDI s0, zero, 512
  MULW s10, s11, s0
  LW t3, 48(sp)
  ADDW t4, s10, t3
  SW t4, 140(sp)
  ADDI s10, zero, 1
  LW t3, 140(sp)
  SUBW t4, t3, s10
  SW t4, 108(sp)
  LW t3, 140(sp)
  ADDIW t4, t3, 1
  SW t4, 104(sp)
  ADDI s10, zero, 512
  MULW s11, s4, s10
  LW t3, 48(sp)
  ADDW t4, s11, t3
  SW t4, 136(sp)
  ADDI s11, zero, 1
  LW t3, 136(sp)
  SUBW t4, t3, s11
  SW t4, 112(sp)
  LW t3, 136(sp)
  ADDIW t4, t3, 1
  SW t4, 120(sp)
  ADDIW t4, s4, 1
  SW t4, 116(sp)
  ADDI s4, zero, 512
  LW t4, 116(sp)
  MULW s11, t4, s4
  LW t3, 48(sp)
  ADDW t4, s11, t3
  SW t4, 132(sp)
  ADDI s11, zero, 1
  LW t3, 132(sp)
  SUBW t4, t3, s11
  SW t4, 124(sp)
  LW t3, 132(sp)
  ADDIW t4, t3, 1
  SW t4, 128(sp)
  ADDI s11, zero, 4
  LW t4, 136(sp)
  MULW s4, t4, s11
  LA s11, image_in
  ADD s10, s11, s4
  LW s11, 0(s10)
  ADDI s10, zero, 8
  MULW s0, s11, s10
  ADDI s10, zero, 4
  LW t4, 108(sp)
  MULW s11, t4, s10
  LA s10, image_in
  ADD s9, s10, s11
  LW s10, 0(s9)
  SUBW s9, s0, s10
  ADDI s0, zero, 4
  LW t4, 140(sp)
  MULW s10, t4, s0
  LA s0, image_in
  ADD s11, s0, s10
  LW s0, 0(s11)
  SUBW s10, s9, s0
  ADDI s0, zero, 4
  LW t4, 104(sp)
  MULW s9, t4, s0
  LA s0, image_in
  ADD s11, s0, s9
  LW s0, 0(s11)
  SUBW s9, s10, s0
  ADDI s0, zero, 4
  LW t4, 112(sp)
  MULW s10, t4, s0
  LA s0, image_in
  ADD s11, s0, s10
  LW s0, 0(s11)
  SUBW s10, s9, s0
  ADDI s0, zero, 4
  LW t4, 120(sp)
  MULW s9, t4, s0
  LA s0, image_in
  ADD s11, s0, s9
  LW s0, 0(s11)
  SUBW s9, s10, s0
  ADDI s0, zero, 4
  LW t4, 124(sp)
  MULW s10, t4, s0
  LA s0, image_in
  ADD s11, s0, s10
  LW s0, 0(s11)
  SUBW s10, s9, s0
  ADDI s0, zero, 4
  LW t4, 132(sp)
  MULW s9, t4, s0
  LA s0, image_in
  ADD s11, s0, s9
  LW s0, 0(s11)
  SUBW s9, s10, s0
  ADDI s0, zero, 4
  LW t4, 128(sp)
  MULW s10, t4, s0
  LA s0, image_in
  ADD s11, s0, s10
  LW s0, 0(s11)
  SUBW s10, s9, s0
  LA s0, image_out
  ADD s9, s0, s4
  SLT s0, s10, zero
  BNE s0, zero, bb18
  # implict jump to bb13
bb13:
  ADDI s1, zero, 255
  SLT s2, s1, s10
  BNE s2, zero, bb17
  # implict jump to bb14
bb14:
  ADD s1, s10, zero
  # implict jump to bb15
bb15:
  ADD s2, s1, zero
  ADD s0, s2, zero
  # implict jump to bb16
bb16:
  ADD s4, s0, zero
  SW s4, 0(s9)
  ADD s1, s10, zero
  LW t4, 128(sp)
  ADD s2, t4, zero
  LW t4, 132(sp)
  ADD s3, t4, zero
  LW t4, 124(sp)
  ADD s5, t4, zero
  LW t4, 120(sp)
  ADD s6, t4, zero
  LW t4, 112(sp)
  ADD s7, t4, zero
  LW t4, 136(sp)
  ADD s8, t4, zero
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  JAL zero, bb10
bb17:
  ADDI s1, zero, 255
  JAL zero, bb15
bb18:
  ADD s0, zero, zero
  JAL zero, bb16
cutout:
  ADDI sp, sp, -48
  SD s3, 0(sp)
  SD ra, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  SLT s1, s0, zero
  BNE s1, zero, bb25
  # implict jump to bb20
bb20:
  ADDI s2, zero, 255
  SLT s3, s2, s0
  BNE s3, zero, bb24
  # implict jump to bb21
bb21:
  ADD s2, s0, zero
  # implict jump to bb22
bb22:
  ADD s3, s2, zero
  ADD s1, s3, zero
  # implict jump to bb23
bb23:
  ADD s2, s1, zero
  ADD a0, s2, zero
  LD s3, 0(sp)
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb24:
  ADDI s2, zero, 255
  JAL zero, bb22
bb25:
  ADD s1, zero, zero
  JAL zero, bb23
