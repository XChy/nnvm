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
  ADDI sp, sp, -416
  SD ra, 304(sp)
  SD s4, 312(sp)
  SD s1, 320(sp)
  SD s0, 328(sp)
  SD s5, 336(sp)
  SD s7, 344(sp)
  SD s10, 352(sp)
  SD s11, 360(sp)
  SD s9, 368(sp)
  SD s8, 376(sp)
  SD s6, 384(sp)
  SD s3, 392(sp)
  SD s2, 400(sp)
  LA s0, image_in
  ADD a0, s0, zero
  CALL getarray
  ADD t4, a0, zero
  SW t4, 0(sp)
  ADDI a0, zero, 23
  CALL _sysy_starttime
  ADD t4, zero, zero
  SW t4, 88(sp)
  ADD t4, zero, zero
  SW t4, 80(sp)
  ADDI t4, zero, 1
  SW t4, 72(sp)
  ADD t4, zero, zero
  SW t4, 64(sp)
  ADD t4, zero, zero
  SW t4, 56(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  JAL zero, bb1
bb1:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t4, 16(sp)
  ADD s11, t4, zero
  LW t4, 24(sp)
  ADD s10, t4, zero
  LW t4, 32(sp)
  ADD s9, t4, zero
  LW t4, 40(sp)
  ADD s8, t4, zero
  LW t4, 48(sp)
  ADD s7, t4, zero
  LW t4, 56(sp)
  ADD s6, t4, zero
  LW t4, 64(sp)
  ADD s5, t4, zero
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t4, 80(sp)
  ADD s3, t4, zero
  LW t4, 88(sp)
  ADD s2, t4, zero
  LA s1, width
  LW s4, 0(s1)
  ADDI s1, zero, 1
  SUBW s0, s4, s1
  LW t4, 96(sp)
  SLT s1, t4, s0
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  ADD s0, s2, zero
  ADD s1, s3, zero
  ADD s2, s5, zero
  ADD s3, s6, zero
  ADD t4, s7, zero
  SW t4, 296(sp)
  ADD t4, s8, zero
  SW t4, 280(sp)
  ADD t4, s9, zero
  SW t4, 264(sp)
  ADD t4, s10, zero
  SW t4, 240(sp)
  ADD t4, s11, zero
  SW t4, 208(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  ADDI t4, zero, 1
  SW t4, 192(sp)
  JAL zero, bb4
bb3:
  ADD s0, zero, zero
  JAL zero, bb7
bb4:
  LW t4, 192(sp)
  ADD s11, t4, zero
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 240(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t3, 264(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t3, 280(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t3, 296(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  ADD t4, s3, zero
  SW t4, 160(sp)
  ADD t4, s2, zero
  SW t4, 168(sp)
  ADD t4, s1, zero
  SW t4, 176(sp)
  ADD t4, s0, zero
  SW t4, 184(sp)
  LA s10, height
  LW s9, 0(s10)
  ADDI s10, zero, 1
  SUBW s8, s9, s10
  SLT s9, s11, s8
  XOR s8, s9, zero
  SLTU s9, zero, s8
  BNE s9, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s8, zero, 1
  SUBW s9, s11, s8
  LA s8, width
  LW s10, 0(s8)
  MULW s8, s9, s10
  LW t4, 96(sp)
  ADDW s10, s8, t4
  ADDI s8, zero, 1
  SUBW t4, s10, s8
  SW t4, 216(sp)
  LA s8, width
  LW s10, 0(s8)
  MULW s8, s9, s10
  LW t3, 96(sp)
  ADDW t4, s8, t3
  SW t4, 224(sp)
  LA s8, width
  LW s10, 0(s8)
  MULW s8, s9, s10
  LW t4, 96(sp)
  ADDW s9, s8, t4
  ADDIW t4, s9, 1
  SW t4, 232(sp)
  LA s9, width
  LW s10, 0(s9)
  MULW s9, s11, s10
  LW t4, 96(sp)
  ADDW s10, s9, t4
  ADDI s9, zero, 1
  SUBW t4, s10, s9
  SW t4, 272(sp)
  LA s9, width
  LW s10, 0(s9)
  MULW s9, s11, s10
  LW t3, 96(sp)
  ADDW t4, s9, t3
  SW t4, 256(sp)
  LA s9, width
  LW s7, 0(s9)
  MULW s9, s11, s7
  LW t4, 96(sp)
  ADDW s7, s9, t4
  ADDIW t4, s7, 1
  SW t4, 288(sp)
  ADDIW t4, s11, 1
  SW t4, 248(sp)
  LA s7, width
  LW s10, 0(s7)
  LW t4, 248(sp)
  MULW s7, t4, s10
  LW t4, 96(sp)
  ADDW s10, s7, t4
  ADDI s7, zero, 1
  SUBW s6, s10, s7
  LA s7, width
  LW s10, 0(s7)
  LW t4, 248(sp)
  MULW s7, t4, s10
  LW t4, 96(sp)
  ADDW s10, s7, t4
  LA s7, width
  LW s8, 0(s7)
  LW t4, 248(sp)
  MULW s7, t4, s8
  LW t4, 96(sp)
  ADDW s8, s7, t4
  ADDIW s7, s8, 1
  ADDI s8, zero, 4
  LW t4, 256(sp)
  MULW s5, t4, s8
  LA s8, image_in
  ADD s9, s8, s5
  LW s5, 0(s9)
  ADDI s8, zero, 8
  MULW s9, s5, s8
  ADDI s5, zero, 4
  LW t4, 216(sp)
  MULW s8, t4, s5
  LA s5, image_in
  ADD s4, s5, s8
  LW s5, 0(s4)
  SUBW s4, s9, s5
  ADDI s5, zero, 4
  LW t4, 224(sp)
  MULW s8, t4, s5
  LA s5, image_in
  ADD s9, s5, s8
  LW s5, 0(s9)
  SUBW s8, s4, s5
  ADDI s4, zero, 4
  LW t4, 232(sp)
  MULW s5, t4, s4
  LA s4, image_in
  ADD s9, s4, s5
  LW s4, 0(s9)
  SUBW s5, s8, s4
  ADDI s4, zero, 4
  LW t4, 272(sp)
  MULW s8, t4, s4
  LA s4, image_in
  ADD s9, s4, s8
  LW s4, 0(s9)
  SUBW s8, s5, s4
  ADDI s4, zero, 4
  LW t4, 288(sp)
  MULW s5, t4, s4
  LA s4, image_in
  ADD s9, s4, s5
  LW s4, 0(s9)
  SUBW s5, s8, s4
  ADDI s4, zero, 4
  MULW s8, s6, s4
  LA s4, image_in
  ADD s9, s4, s8
  LW s4, 0(s9)
  SUBW s8, s5, s4
  ADDI s4, zero, 4
  MULW s5, s10, s4
  LA s4, image_in
  ADD s9, s4, s5
  LW s4, 0(s9)
  SUBW s5, s8, s4
  ADDI s4, zero, 4
  MULW s8, s7, s4
  LA s4, image_in
  ADD s9, s4, s8
  LW s4, 0(s9)
  SUBW s8, s5, s4
  LA s4, width
  LW s5, 0(s4)
  MULW s4, s11, s5
  LW t4, 96(sp)
  ADDW s5, s4, t4
  ADDI s4, zero, 4
  MULW s9, s5, s4
  LA s4, image_out
  ADD s5, s4, s9
  ADD a0, s8, zero
  CALL cutout
  ADD s4, a0, zero
  SW s4, 0(s5)
  ADD s0, s8, zero
  ADD s1, s7, zero
  ADD s2, s10, zero
  ADD s3, s6, zero
  LW t3, 288(sp)
  ADD t4, t3, zero
  SW t4, 296(sp)
  LW t3, 272(sp)
  ADD t4, t3, zero
  SW t4, 280(sp)
  LW t3, 256(sp)
  ADD t4, t3, zero
  SW t4, 264(sp)
  LW t3, 232(sp)
  ADD t4, t3, zero
  SW t4, 240(sp)
  LW t3, 224(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  LW t3, 248(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  JAL zero, bb4
bb6:
  LW t4, 96(sp)
  ADDIW s0, t4, 1
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  ADD t4, s0, zero
  SW t4, 72(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb1
bb7:
  ADD s1, s0, zero
  LA s2, height
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb8
  JAL zero, bb9
bb8:
  LA s2, width
  LW s3, 0(s2)
  MULW s2, s1, s3
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s2, image_out
  ADD s3, s2, s4
  LA s2, width
  LW s4, 0(s2)
  MULW s2, s1, s4
  ADDI s4, zero, 4
  MULW s5, s2, s4
  LA s2, image_in
  ADD s4, s2, s5
  LW s2, 0(s4)
  SW s2, 0(s3)
  LA s2, width
  LW s3, 0(s2)
  MULW s2, s1, s3
  LA s3, width
  LW s4, 0(s3)
  ADDW s3, s2, s4
  ADDI s2, zero, 1
  SUBW s4, s3, s2
  ADDI s2, zero, 4
  MULW s3, s4, s2
  LA s2, image_out
  ADD s4, s2, s3
  LA s2, width
  LW s3, 0(s2)
  MULW s2, s1, s3
  LA s3, width
  LW s5, 0(s3)
  ADDW s3, s2, s5
  ADDI s2, zero, 1
  SUBW s5, s3, s2
  ADDI s2, zero, 4
  MULW s3, s5, s2
  LA s2, image_in
  ADD s5, s2, s3
  LW s2, 0(s5)
  SW s2, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb7
bb9:
  ADD s0, zero, zero
  JAL zero, bb10
bb10:
  ADD s1, s0, zero
  LA s2, width
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb11
  JAL zero, bb12
bb11:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, image_out
  ADD s4, s2, s3
  LA s2, image_in
  ADD s5, s2, s3
  LW s2, 0(s5)
  SW s2, 0(s4)
  LA s2, height
  LW s3, 0(s2)
  ADDI s2, zero, 1
  SUBW s4, s3, s2
  LA s2, width
  LW s3, 0(s2)
  MULW s2, s4, s3
  ADDW s3, s2, s1
  ADDI s2, zero, 4
  MULW s4, s3, s2
  LA s2, image_out
  ADD s3, s2, s4
  LA s2, height
  LW s4, 0(s2)
  ADDI s2, zero, 1
  SUBW s5, s4, s2
  LA s2, width
  LW s4, 0(s2)
  MULW s2, s5, s4
  ADDW s4, s2, s1
  ADDI s2, zero, 4
  MULW s5, s4, s2
  LA s2, image_in
  ADD s4, s2, s5
  LW s2, 0(s4)
  SW s2, 0(s3)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
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
  LD ra, 304(sp)
  LD s4, 312(sp)
  LD s1, 320(sp)
  LD s0, 328(sp)
  LD s5, 336(sp)
  LD s7, 344(sp)
  LD s10, 352(sp)
  LD s11, 360(sp)
  LD s9, 368(sp)
  LD s8, 376(sp)
  LD s6, 384(sp)
  LD s3, 392(sp)
  LD s2, 400(sp)
  ADDI sp, sp, 416
  JALR zero, 0(ra)
cutout:
  ADDI sp, sp, -48
  SD s3, 0(sp)
  SD ra, 8(sp)
  SD s2, 16(sp)
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
  ADD s2, s1, zero
  ADD a0, s2, zero
  LD s3, 0(sp)
  LD ra, 8(sp)
  LD s2, 16(sp)
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
  ADD s3, s2, zero
  ADD s1, s3, zero
  JAL zero, bb15
bb19:
  ADD s2, s0, zero
  JAL zero, bb18
