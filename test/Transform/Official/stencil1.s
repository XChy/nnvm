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
  ADDI sp, sp, -304
  SD ra, 192(sp)
  SD s8, 200(sp)
  SD s1, 208(sp)
  SD s0, 216(sp)
  SD s5, 224(sp)
  SD s7, 232(sp)
  SD s10, 240(sp)
  SD s3, 248(sp)
  SD s11, 256(sp)
  SD s9, 264(sp)
  SD s6, 272(sp)
  SD s4, 280(sp)
  SD s2, 288(sp)
  LA s0, image_in
  ADD a0, s0, zero
  CALL getarray
  ADD t4, a0, zero
  SW t4, 0(sp)
  ADDI a0, zero, 23
  CALL _sysy_starttime
  ADD t4, zero, zero
  SW t4, 168(sp)
  ADD t4, zero, zero
  SW t4, 152(sp)
  ADDI t4, zero, 1
  SW t4, 8(sp)
  ADD t4, zero, zero
  SW t4, 136(sp)
  ADD t4, zero, zero
  SW t4, 120(sp)
  ADD t4, zero, zero
  SW t4, 104(sp)
  ADD t4, zero, zero
  SW t4, 88(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  JAL zero, bb1
bb1:
  LA s0, width
  LW s3, 0(s0)
  ADDI s0, zero, 1
  SUBW s11, s3, s0
  LW t4, 8(sp)
  SLT s0, t4, s11
  XOR s3, s0, zero
  SLTU s0, zero, s3
  BNE s0, zero, bb2
  JAL zero, bb3
bb2:
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  ADDI t4, zero, 1
  SW t4, 176(sp)
  JAL zero, bb4
bb3:
  ADD s0, zero, zero
  JAL zero, bb7
bb4:
  LA s7, height
  LW s9, 0(s7)
  ADDI s7, zero, 1
  SUBW s6, s9, s7
  LW t4, 176(sp)
  SLT s7, t4, s6
  XOR s6, s7, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s6, zero, 1
  LW t4, 176(sp)
  SUBW s7, t4, s6
  LA s6, width
  LW s9, 0(s6)
  MULW s6, s7, s9
  LW t4, 8(sp)
  ADDW s7, s6, t4
  ADDI s6, zero, 1
  SUBW t4, s7, s6
  SW t4, 184(sp)
  ADDI s6, zero, 1
  LW t4, 176(sp)
  SUBW s7, t4, s6
  LA s6, width
  LW s10, 0(s6)
  MULW s6, s7, s10
  LW t4, 8(sp)
  ADDW s7, s6, t4
  ADDI s6, zero, 1
  LW t4, 176(sp)
  SUBW s10, t4, s6
  LA s6, width
  LW s5, 0(s6)
  MULW s6, s10, s5
  LW t4, 8(sp)
  ADDW s5, s6, t4
  ADDIW s6, s5, 1
  LA s5, width
  LW s10, 0(s5)
  LW t4, 176(sp)
  MULW s5, t4, s10
  LW t4, 8(sp)
  ADDW s10, s5, t4
  ADDI s5, zero, 1
  SUBW s11, s10, s5
  LA s5, width
  LW s10, 0(s5)
  LW t4, 176(sp)
  MULW s5, t4, s10
  LW t4, 8(sp)
  ADDW s10, s5, t4
  LA s5, width
  LW s4, 0(s5)
  LW t4, 176(sp)
  MULW s5, t4, s4
  LW t4, 8(sp)
  ADDW s4, s5, t4
  ADDIW s5, s4, 1
  LW t4, 176(sp)
  ADDIW s4, t4, 1
  LA s3, width
  LW s2, 0(s3)
  MULW s3, s4, s2
  LW t4, 8(sp)
  ADDW s2, s3, t4
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  LW t4, 176(sp)
  ADDIW s2, t4, 1
  LA s3, width
  LW s0, 0(s3)
  MULW s3, s2, s0
  LW t4, 8(sp)
  ADDW s0, s3, t4
  LW t4, 176(sp)
  ADDIW s2, t4, 1
  LA s3, width
  LW s1, 0(s3)
  MULW s3, s2, s1
  LW t4, 8(sp)
  ADDW s1, s3, t4
  ADDIW s2, s1, 1
  ADDI s1, zero, 4
  MULW s3, s10, s1
  LA s1, image_in
  ADD s8, s1, s3
  LW s1, 0(s8)
  ADDI s3, zero, 8
  MULW s8, s1, s3
  ADDI s1, zero, 4
  LW t4, 184(sp)
  MULW s3, t4, s1
  LA s1, image_in
  ADD s9, s1, s3
  LW s1, 0(s9)
  SUBW s3, s8, s1
  ADDI s1, zero, 4
  MULW s8, s7, s1
  LA s1, image_in
  ADD s9, s1, s8
  LW s1, 0(s9)
  SUBW s8, s3, s1
  ADDI s1, zero, 4
  MULW s3, s6, s1
  LA s1, image_in
  ADD s9, s1, s3
  LW s1, 0(s9)
  SUBW s3, s8, s1
  ADDI s1, zero, 4
  MULW s8, s11, s1
  LA s1, image_in
  ADD s9, s1, s8
  LW s1, 0(s9)
  SUBW s8, s3, s1
  ADDI s1, zero, 4
  MULW s3, s5, s1
  LA s1, image_in
  ADD s9, s1, s3
  LW s1, 0(s9)
  SUBW s3, s8, s1
  ADDI s1, zero, 4
  MULW s8, s4, s1
  LA s1, image_in
  ADD s9, s1, s8
  LW s1, 0(s9)
  SUBW s8, s3, s1
  ADDI s1, zero, 4
  MULW s3, s0, s1
  LA s1, image_in
  ADD s9, s1, s3
  LW s1, 0(s9)
  SUBW s3, s8, s1
  ADDI s1, zero, 4
  MULW s8, s2, s1
  LA s1, image_in
  ADD s9, s1, s8
  LW s1, 0(s9)
  SUBW s8, s3, s1
  LA s1, width
  LW s3, 0(s1)
  LW t4, 176(sp)
  MULW s1, t4, s3
  LW t4, 8(sp)
  ADDW s3, s1, t4
  ADDI s1, zero, 4
  MULW s9, s3, s1
  LA s1, image_out
  ADD s3, s1, s9
  ADD a0, s8, zero
  CALL cutout
  ADD s1, a0, zero
  SW s1, 0(s3)
  LW t4, 176(sp)
  ADDIW s1, t4, 1
  ADD t4, s8, zero
  SW t4, 160(sp)
  ADD t4, s2, zero
  SW t4, 144(sp)
  ADD t4, s0, zero
  SW t4, 128(sp)
  ADD t4, s4, zero
  SW t4, 112(sp)
  ADD t4, s5, zero
  SW t4, 96(sp)
  ADD t4, s11, zero
  SW t4, 80(sp)
  ADD t4, s10, zero
  SW t4, 48(sp)
  ADD t4, s6, zero
  SW t4, 56(sp)
  ADD t4, s7, zero
  SW t4, 64(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  ADD t4, s1, zero
  SW t4, 176(sp)
  JAL zero, bb4
bb6:
  LW t4, 8(sp)
  ADDIW s0, t4, 1
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  ADD t4, s0, zero
  SW t4, 8(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb1
bb7:
  LA s1, height
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb8
  JAL zero, bb9
bb8:
  LA s1, width
  LW s2, 0(s1)
  MULW s1, s0, s2
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, image_out
  ADD s2, s1, s3
  LA s1, width
  LW s3, 0(s1)
  MULW s1, s0, s3
  ADDI s3, zero, 4
  MULW s4, s1, s3
  LA s1, image_in
  ADD s3, s1, s4
  LW s1, 0(s3)
  SW s1, 0(s2)
  LA s1, width
  LW s2, 0(s1)
  MULW s1, s0, s2
  LA s2, width
  LW s3, 0(s2)
  ADDW s2, s1, s3
  ADDI s1, zero, 1
  SUBW s3, s2, s1
  ADDI s1, zero, 4
  MULW s2, s3, s1
  LA s1, image_out
  ADD s3, s1, s2
  LA s1, width
  LW s2, 0(s1)
  MULW s1, s0, s2
  LA s2, width
  LW s4, 0(s2)
  ADDW s2, s1, s4
  ADDI s1, zero, 1
  SUBW s4, s2, s1
  ADDI s1, zero, 4
  MULW s2, s4, s1
  LA s1, image_in
  ADD s4, s1, s2
  LW s1, 0(s4)
  SW s1, 0(s3)
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb7
bb9:
  ADD s0, zero, zero
  JAL zero, bb10
bb10:
  LA s1, width
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb11
  JAL zero, bb12
bb11:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, image_out
  ADD s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, image_in
  ADD s4, s1, s2
  LW s1, 0(s4)
  SW s1, 0(s3)
  LA s1, height
  LW s2, 0(s1)
  ADDI s1, zero, 1
  SUBW s3, s2, s1
  LA s1, width
  LW s2, 0(s1)
  MULW s1, s3, s2
  ADDW s2, s1, s0
  ADDI s1, zero, 4
  MULW s3, s2, s1
  LA s1, image_out
  ADD s2, s1, s3
  LA s1, height
  LW s3, 0(s1)
  ADDI s1, zero, 1
  SUBW s4, s3, s1
  LA s1, width
  LW s3, 0(s1)
  MULW s1, s4, s3
  ADDW s3, s1, s0
  ADDI s1, zero, 4
  MULW s4, s3, s1
  LA s1, image_in
  ADD s3, s1, s4
  LW s1, 0(s3)
  SW s1, 0(s2)
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb10
bb12:
  ADDI a0, zero, 59
  CALL _sysy_stoptime
  LA s0, width
  LW s1, 0(s0)
  LA s0, height
  LW s2, 0(s0)
  MULW s0, s1, s2
  ADD a0, s0, zero
  LA s0, image_out
  ADD a1, s0, zero
  CALL putarray
  LW t4, 0(sp)
  ADD a0, t4, zero
  LD ra, 192(sp)
  LD s8, 200(sp)
  LD s1, 208(sp)
  LD s0, 216(sp)
  LD s5, 224(sp)
  LD s7, 232(sp)
  LD s10, 240(sp)
  LD s3, 248(sp)
  LD s11, 256(sp)
  LD s9, 264(sp)
  LD s6, 272(sp)
  LD s4, 280(sp)
  LD s2, 288(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
cutout:
  ADDI sp, sp, -48
  SD s3, 0(sp)
  SD s2, 8(sp)
  SD ra, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  SLT s1, s0, zero
  BNE s1, zero, bb14
  JAL zero, bb16
bb14:
  ADD s1, zero, zero
  JAL zero, bb15
bb15:
  ADD a0, s1, zero
  LD s3, 0(sp)
  LD s2, 8(sp)
  LD ra, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb16:
  ADDI s2, zero, 255
  SLT s3, s2, s0
  BNE s3, zero, bb17
  JAL zero, bb19
bb17:
  ADDI s2, zero, 255
  JAL zero, bb18
bb18:
  ADD s1, s2, zero
  JAL zero, bb15
bb19:
  ADD s2, s0, zero
  JAL zero, bb18
