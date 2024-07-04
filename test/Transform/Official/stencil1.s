.global main
.global cutout
.section .bss
image_out:
.space 4194304
image_in:
.space 4194304


.section .data


height:
.word 0x00000400
width:
.word 0x00000400
.section .text
main:
  ADDI sp, sp, -144
  SD ra, 104(sp)
  SD s3, 112(sp)
  SD s2, 120(sp)
  SD s1, 128(sp)
  SD s0, 136(sp)
  LA s0, image_in
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  SW s0, 80(sp)
  ADDI a0, zero, 23
  CALL _sysy_starttime
  ADDI s0, zero, 1
  SW s0, 88(sp)
  JAL zero, bb1
bb1:
  LW s0, 88(sp)
  LA s1, width
  LW s2, 0(s1)
  ADDI s1, zero, 1
  SUBW s3, s2, s1
  SLT s1, s0, s3
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s0, zero, 1
  SW s0, 96(sp)
  JAL zero, bb4
bb3:
  ADDI s0, zero, 0
  SW s0, 96(sp)
  JAL zero, bb7
bb4:
  LW s0, 96(sp)
  LA s1, height
  LW s2, 0(s1)
  ADDI s1, zero, 1
  SUBW s3, s2, s1
  SLT s1, s0, s3
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb5
  JAL zero, bb6
bb5:
  LW s0, 96(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  LA s0, width
  LW s1, 0(s0)
  MULW s0, s2, s1
  LW s1, 88(sp)
  ADDW s2, s0, s1
  ADDI s0, zero, 1
  SUBW s1, s2, s0
  SW s1, 72(sp)
  LW s0, 96(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  LA s0, width
  LW s1, 0(s0)
  MULW s0, s2, s1
  LW s1, 88(sp)
  ADDW s2, s0, s1
  SW s2, 64(sp)
  LW s0, 96(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  LA s0, width
  LW s1, 0(s0)
  MULW s0, s2, s1
  LW s1, 88(sp)
  ADDW s2, s0, s1
  ADDIW s0, s2, 1
  SW s0, 56(sp)
  LW s0, 96(sp)
  LA s1, width
  LW s2, 0(s1)
  MULW s1, s0, s2
  LW s0, 88(sp)
  ADDW s2, s1, s0
  ADDI s0, zero, 1
  SUBW s1, s2, s0
  SW s1, 48(sp)
  LW s0, 96(sp)
  LA s1, width
  LW s2, 0(s1)
  MULW s1, s0, s2
  LW s0, 88(sp)
  ADDW s2, s1, s0
  SW s2, 40(sp)
  LW s0, 96(sp)
  LA s1, width
  LW s2, 0(s1)
  MULW s1, s0, s2
  LW s0, 88(sp)
  ADDW s2, s1, s0
  ADDIW s0, s2, 1
  SW s0, 32(sp)
  LW s0, 96(sp)
  ADDIW s1, s0, 1
  LA s0, width
  LW s2, 0(s0)
  MULW s0, s1, s2
  LW s1, 88(sp)
  ADDW s2, s0, s1
  ADDI s0, zero, 1
  SUBW s1, s2, s0
  SW s1, 24(sp)
  LW s0, 96(sp)
  ADDIW s1, s0, 1
  LA s0, width
  LW s2, 0(s0)
  MULW s0, s1, s2
  LW s1, 88(sp)
  ADDW s2, s0, s1
  SW s2, 16(sp)
  LW s0, 96(sp)
  ADDIW s1, s0, 1
  LA s0, width
  LW s2, 0(s0)
  MULW s0, s1, s2
  LW s1, 88(sp)
  ADDW s2, s0, s1
  ADDIW s0, s2, 1
  SW s0, 8(sp)
  LW s0, 40(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, image_in
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADDI s1, zero, 8
  MULW s2, s0, s1
  LW s0, 72(sp)
  ADDI s1, zero, 4
  MULW s3, s0, s1
  LA s0, image_in
  ADD s1, s0, s3
  LW s0, 0(s1)
  SUBW s1, s2, s0
  LW s0, 64(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, image_in
  ADD s2, s0, s3
  LW s0, 0(s2)
  SUBW s2, s1, s0
  LW s0, 56(sp)
  ADDI s1, zero, 4
  MULW s3, s0, s1
  LA s0, image_in
  ADD s1, s0, s3
  LW s0, 0(s1)
  SUBW s1, s2, s0
  LW s0, 48(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, image_in
  ADD s2, s0, s3
  LW s0, 0(s2)
  SUBW s2, s1, s0
  LW s0, 32(sp)
  ADDI s1, zero, 4
  MULW s3, s0, s1
  LA s0, image_in
  ADD s1, s0, s3
  LW s0, 0(s1)
  SUBW s1, s2, s0
  LW s0, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, image_in
  ADD s2, s0, s3
  LW s0, 0(s2)
  SUBW s2, s1, s0
  LW s0, 16(sp)
  ADDI s1, zero, 4
  MULW s3, s0, s1
  LA s0, image_in
  ADD s1, s0, s3
  LW s0, 0(s1)
  SUBW s1, s2, s0
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, image_in
  ADD s2, s0, s3
  LW s0, 0(s2)
  SUBW s2, s1, s0
  SW s2, 0(sp)
  LW s0, 96(sp)
  LA s1, width
  LW s2, 0(s1)
  MULW s1, s0, s2
  LW s0, 88(sp)
  ADDW s2, s1, s0
  ADDI s0, zero, 4
  MULW s1, s2, s0
  LA s0, image_out
  ADD s2, s0, s1
  LW s0, 0(sp)
  ADD a0, s0, zero
  CALL cutout
  ADD s0, a0, zero
  SW s0, 0(s2)
  LW s0, 96(sp)
  ADDIW s1, s0, 1
  SW s1, 96(sp)
  JAL zero, bb4
bb6:
  LW s0, 88(sp)
  ADDIW s1, s0, 1
  SW s1, 88(sp)
  JAL zero, bb1
bb7:
  LW s0, 96(sp)
  LA s1, height
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb8
  JAL zero, bb9
bb8:
  LW s0, 96(sp)
  LA s1, width
  LW s2, 0(s1)
  MULW s1, s0, s2
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, image_out
  ADD s1, s0, s2
  LW s0, 96(sp)
  LA s2, width
  LW s3, 0(s2)
  MULW s2, s0, s3
  ADDI s0, zero, 4
  MULW s3, s2, s0
  LA s0, image_in
  ADD s2, s0, s3
  LW s0, 0(s2)
  SW s0, 0(s1)
  LW s0, 96(sp)
  LA s1, width
  LW s2, 0(s1)
  MULW s1, s0, s2
  LA s0, width
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  ADDI s0, zero, 4
  MULW s1, s2, s0
  LA s0, image_out
  ADD s2, s0, s1
  LW s0, 96(sp)
  LA s1, width
  LW s3, 0(s1)
  MULW s1, s0, s3
  LA s0, width
  LW s3, 0(s0)
  ADDW s0, s1, s3
  ADDI s1, zero, 1
  SUBW s3, s0, s1
  ADDI s0, zero, 4
  MULW s1, s3, s0
  LA s0, image_in
  ADD s3, s0, s1
  LW s0, 0(s3)
  SW s0, 0(s2)
  LW s0, 96(sp)
  ADDIW s1, s0, 1
  SW s1, 96(sp)
  JAL zero, bb7
bb9:
  ADDI s0, zero, 0
  SW s0, 88(sp)
  JAL zero, bb10
bb10:
  LW s0, 88(sp)
  LA s1, width
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb11
  JAL zero, bb12
bb11:
  LW s0, 88(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, image_out
  ADD s1, s0, s2
  LW s0, 88(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, image_in
  ADD s2, s0, s3
  LW s0, 0(s2)
  SW s0, 0(s1)
  LA s0, height
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  LA s0, width
  LW s1, 0(s0)
  MULW s0, s2, s1
  LW s1, 88(sp)
  ADDW s2, s0, s1
  ADDI s0, zero, 4
  MULW s1, s2, s0
  LA s0, image_out
  ADD s2, s0, s1
  LA s0, height
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s3, s1, s0
  LA s0, width
  LW s1, 0(s0)
  MULW s0, s3, s1
  LW s1, 88(sp)
  ADDW s3, s0, s1
  ADDI s0, zero, 4
  MULW s1, s3, s0
  LA s0, image_in
  ADD s3, s0, s1
  LW s0, 0(s3)
  SW s0, 0(s2)
  LW s0, 88(sp)
  ADDIW s1, s0, 1
  SW s1, 88(sp)
  JAL zero, bb10
bb12:
  ADDI a0, zero, 59
  CALL _sysy_starttime
  LA s0, width
  LW s1, 0(s0)
  LA s0, height
  LW s2, 0(s0)
  MULW s0, s1, s2
  ADD a0, s0, zero
  LA s0, image_out
  ADD a1, s0, zero
  CALL putarray
  LW s0, 80(sp)
  ADD a0, s0, zero
  LD ra, 104(sp)
  LD s3, 112(sp)
  LD s2, 120(sp)
  LD s1, 128(sp)
  LD s0, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
cutout:
  ADDI sp, sp, -48
  SD s2, 8(sp)
  SD ra, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  SW s0, 0(sp)
  LW s0, 0(sp)
  SLT s1, s0, zero
  BNE s1, zero, bb14
  JAL zero, bb16
bb14:
  SW zero, 0(sp)
  JAL zero, bb15
bb15:
  LW s0, 0(sp)
  ADD a0, s0, zero
  LD s2, 8(sp)
  LD ra, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb16:
  LW s0, 0(sp)
  ADDI s1, zero, 255
  SLT s2, s1, s0
  BNE s2, zero, bb17
  JAL zero, bb18
bb17:
  ADDI s0, zero, 255
  SW s0, 0(sp)
  JAL zero, bb18
bb18:
  JAL zero, bb15
