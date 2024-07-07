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
  ADDI sp, sp, -400
  SD ra, 296(sp)
  SD s4, 304(sp)
  SD s1, 312(sp)
  SD s0, 320(sp)
  SD s5, 328(sp)
  SD s7, 336(sp)
  SD s10, 344(sp)
  SD s11, 352(sp)
  SD s9, 360(sp)
  SD s8, 368(sp)
  SD s6, 376(sp)
  SD s3, 384(sp)
  SD s2, 392(sp)
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
  LW t4, 8(sp)
  ADD s0, t4, zero
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
  LW t4, 96(sp)
  SLTI s1, t4, 1023
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  ADD s1, s2, zero
  ADD s2, s3, zero
  ADD s3, s5, zero
  ADD s5, s6, zero
  ADD t4, s7, zero
  SW t4, 288(sp)
  ADD t4, s8, zero
  SW t4, 272(sp)
  ADD t4, s9, zero
  SW t4, 256(sp)
  ADD t4, s10, zero
  SW t4, 240(sp)
  ADD t4, s11, zero
  SW t4, 200(sp)
  ADD t4, s0, zero
  SW t4, 192(sp)
  ADDI t4, zero, 1
  SW t4, 184(sp)
  JAL zero, bb4
bb3:
  ADD s0, zero, zero
  JAL zero, bb7
bb4:
  LW t4, 184(sp)
  ADD s4, t4, zero
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t3, 240(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 256(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t3, 272(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t3, 288(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  ADD t4, s5, zero
  SW t4, 152(sp)
  ADD t4, s3, zero
  SW t4, 160(sp)
  ADD t4, s2, zero
  SW t4, 168(sp)
  ADD t4, s1, zero
  SW t4, 176(sp)
  SLTI s0, s4, 1023
  BNE s0, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s0, zero, 1
  SUBW s11, s4, s0
  ADDI s0, zero, 1024
  MULW s10, s11, s0
  LW t3, 96(sp)
  ADDW t4, s10, t3
  SW t4, 216(sp)
  ADDI s10, zero, 1
  LW t3, 216(sp)
  SUBW t4, t3, s10
  SW t4, 208(sp)
  LW t3, 216(sp)
  ADDIW t4, t3, 1
  SW t4, 224(sp)
  ADDI s11, zero, 1024
  MULW s0, s4, s11
  LW t3, 96(sp)
  ADDW t4, s0, t3
  SW t4, 248(sp)
  ADDI s0, zero, 1
  LW t3, 248(sp)
  SUBW t4, t3, s0
  SW t4, 264(sp)
  LW t3, 248(sp)
  ADDIW t4, t3, 1
  SW t4, 280(sp)
  ADDIW t4, s4, 1
  SW t4, 232(sp)
  ADDI s4, zero, 1024
  LW t4, 232(sp)
  MULW s9, t4, s4
  LW t4, 96(sp)
  ADDW s4, s9, t4
  ADDI s9, zero, 1
  SUBW s11, s4, s9
  ADDIW s9, s4, 1
  ADDI s8, zero, 4
  LW t4, 248(sp)
  MULW s10, t4, s8
  LA s8, image_in
  ADD s7, s8, s10
  LW s8, 0(s7)
  ADDI s7, zero, 8
  MULW s0, s8, s7
  ADDI s7, zero, 4
  LW t4, 208(sp)
  MULW s8, t4, s7
  LA s7, image_in
  ADD s6, s7, s8
  LW s7, 0(s6)
  SUBW s6, s0, s7
  ADDI s0, zero, 4
  LW t4, 216(sp)
  MULW s7, t4, s0
  LA s0, image_in
  ADD s8, s0, s7
  LW s0, 0(s8)
  SUBW s7, s6, s0
  ADDI s0, zero, 4
  LW t4, 224(sp)
  MULW s6, t4, s0
  LA s0, image_in
  ADD s8, s0, s6
  LW s0, 0(s8)
  SUBW s6, s7, s0
  ADDI s0, zero, 4
  LW t4, 264(sp)
  MULW s7, t4, s0
  LA s0, image_in
  ADD s8, s0, s7
  LW s0, 0(s8)
  SUBW s7, s6, s0
  ADDI s0, zero, 4
  LW t4, 280(sp)
  MULW s6, t4, s0
  LA s0, image_in
  ADD s8, s0, s6
  LW s0, 0(s8)
  SUBW s6, s7, s0
  ADDI s0, zero, 4
  MULW s7, s11, s0
  LA s0, image_in
  ADD s8, s0, s7
  LW s0, 0(s8)
  SUBW s7, s6, s0
  ADDI s0, zero, 4
  MULW s6, s4, s0
  LA s0, image_in
  ADD s8, s0, s6
  LW s0, 0(s8)
  SUBW s6, s7, s0
  ADDI s0, zero, 4
  MULW s7, s9, s0
  LA s0, image_in
  ADD s8, s0, s7
  LW s0, 0(s8)
  SUBW s7, s6, s0
  LA s0, image_out
  ADD s6, s0, s10
  ADD a0, s7, zero
  CALL cutout
  ADD s0, a0, zero
  SW s0, 0(s6)
  ADD s1, s7, zero
  ADD s2, s9, zero
  ADD s3, s4, zero
  ADD s5, s11, zero
  LW t3, 280(sp)
  ADD t4, t3, zero
  SW t4, 288(sp)
  LW t3, 264(sp)
  ADD t4, t3, zero
  SW t4, 272(sp)
  LW t3, 248(sp)
  ADD t4, t3, zero
  SW t4, 256(sp)
  LW t3, 224(sp)
  ADD t4, t3, zero
  SW t4, 240(sp)
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  LW t3, 232(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  JAL zero, bb4
bb6:
  LW t4, 96(sp)
  ADDIW s0, t4, 1
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  ADD t4, s0, zero
  SW t4, 72(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb1
bb7:
  ADD s1, s0, zero
  SLTI s2, s1, 1024
  BNE s2, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s2, zero, 1024
  MULW s3, s1, s2
  ADDI s2, zero, 4
  MULW s4, s3, s2
  LA s2, image_out
  ADD s5, s2, s4
  LA s2, image_in
  ADD s6, s2, s4
  LW s2, 0(s6)
  SW s2, 0(s5)
  ADDIW s2, s3, 1024
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  ADDI s2, zero, 4
  MULW s3, s4, s2
  LA s2, image_out
  ADD s4, s2, s3
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
  SLTI s2, s1, 1024
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
  LUI s2, 256
  ADDI s2, s2, -1024
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
  JAL zero, bb10
bb12:
  ADDI a0, zero, 59
  CALL _sysy_stoptime
  LUI s0, 256
  ADDI s0, s0, 0
  ADD a0, zero, s0
  LA s0, image_out
  ADD a1, s0, zero
  CALL putarray
  LW t4, 0(sp)
  ADD a0, t4, zero
  LD ra, 296(sp)
  LD s4, 304(sp)
  LD s1, 312(sp)
  LD s0, 320(sp)
  LD s5, 328(sp)
  LD s7, 336(sp)
  LD s10, 344(sp)
  LD s11, 352(sp)
  LD s9, 360(sp)
  LD s8, 368(sp)
  LD s6, 376(sp)
  LD s3, 384(sp)
  LD s2, 392(sp)
  ADDI sp, sp, 400
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
