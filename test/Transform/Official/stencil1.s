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
  ADDI sp, sp, -272
  SD ra, 160(sp)
  SD s0, 168(sp)
  SD s1, 176(sp)
  SD s2, 184(sp)
  SD s3, 192(sp)
  SD s5, 200(sp)
  SD s6, 208(sp)
  SD s10, 216(sp)
  SD s7, 224(sp)
  SD s4, 232(sp)
  SD s8, 240(sp)
  SD s9, 248(sp)
  SD s11, 256(sp)
  LA t6, image_in
  ADD a0, t6, zero
  CALL getarray
  ADD t4, a0, zero
  SW t4, 148(sp)
  ADDI a0, zero, 23
  CALL _sysy_starttime
  ADDI s7, zero, 1
  SLTI s7, s7, 1023
  BNE s7, zero, bb14
  # implict jump to bb1
bb1:
  ADDI s0, zero, 0
  SLTI s0, s0, 1024
  BNE s0, zero, bb9
  # implict jump to bb2
bb2:
  SLTI s1, zero, 1024
  BNE s1, zero, bb4
  # implict jump to bb3
bb3:
  ADDI a0, zero, 59
  CALL _sysy_stoptime
  LUI s2, 256
  ADDIW s2, s2, 0
  ADD a0, zero, s2
  LA s2, image_out
  ADD a1, s2, zero
  CALL putarray
  LW t4, 148(sp)
  ADD a0, t4, zero
  LD ra, 160(sp)
  LD s0, 168(sp)
  LD s1, 176(sp)
  LD s2, 184(sp)
  LD s3, 192(sp)
  LD s5, 200(sp)
  LD s6, 208(sp)
  LD s10, 216(sp)
  LD s7, 224(sp)
  LD s4, 232(sp)
  LD s8, 240(sp)
  LD s9, 248(sp)
  LD s11, 256(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb4:
  # implict jump to bb5
bb5:
  ADD s1, zero, zero
  # implict jump to bb6
bb6:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  LA s4, image_out
  ADD s4, s4, s3
  LA s5, image_in
  ADD s3, s5, s3
  LW s3, 0(s3)
  SW s3, 0(s4)
  LUI s3, 256
  ADDIW s3, s3, -1024
  ADDW s3, s2, s3
  SLLIW s3, s3, 2
  LA s4, image_out
  ADD s4, s4, s3
  LA s5, image_in
  ADD s3, s5, s3
  LW s3, 0(s3)
  SW s3, 0(s4)
  ADDIW t4, s2, 1
  SW t4, 64(sp)
  # implict jump to bb7
bb7:
  LW t4, 64(sp)
  SLTI s2, t4, 1024
  BNE s2, zero, bb8
  JAL zero, bb3
bb8:
  LW t4, 64(sp)
  ADD s1, t4, zero
  JAL zero, bb6
bb9:
  # implict jump to bb10
bb10:
  ADD s0, zero, zero
  # implict jump to bb11
bb11:
  ADD s1, s0, zero
  SLLIW s2, s1, 10
  SLLIW s3, s2, 2
  LA s4, image_out
  ADD s4, s4, s3
  LA s5, image_in
  ADD s3, s5, s3
  LW s3, 0(s3)
  SW s3, 0(s4)
  ADDIW s2, s2, 1023
  SLLIW s2, s2, 2
  LA s3, image_out
  ADD s3, s3, s2
  LA s4, image_in
  ADD s2, s4, s2
  LW s2, 0(s2)
  SW s2, 0(s3)
  ADDIW t4, s1, 1
  SW t4, 60(sp)
  # implict jump to bb12
bb12:
  LW t4, 60(sp)
  SLTI s1, t4, 1024
  BNE s1, zero, bb13
  JAL zero, bb2
bb13:
  LW t4, 60(sp)
  ADD s0, t4, zero
  JAL zero, bb11
bb14:
  ADDI s7, zero, 1
  # implict jump to bb15
bb15:
  ADD t4, s7, zero
  SW t4, 52(sp)
  ADD t4, zero, zero
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  ADD t4, zero, zero
  SW t4, 36(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 28(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  # implict jump to bb16
bb16:
  LW t4, 32(sp)
  ADD s9, t4, zero
  LW t4, 28(sp)
  ADD s4, t4, zero
  LW t4, 24(sp)
  ADD s11, t4, zero
  LW t4, 20(sp)
  ADD s8, t4, zero
  LW t4, 16(sp)
  ADD s7, t4, zero
  LW t4, 12(sp)
  ADD s2, t4, zero
  LW t4, 8(sp)
  ADD s1, t4, zero
  LW t4, 36(sp)
  ADD s0, t4, zero
  LW t4, 40(sp)
  ADD s3, t4, zero
  LW t4, 0(sp)
  ADD s6, t4, zero
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  ADDI s5, zero, 1
  SLTI s5, s5, 1023
  BNE s5, zero, bb21
  # implict jump to bb17
bb17:
  ADD t4, s6, zero
  SW t4, 96(sp)
  ADD t4, s3, zero
  SW t4, 92(sp)
  ADD t4, s0, zero
  SW t4, 88(sp)
  ADD s6, s7, zero
  ADD s7, s8, zero
  ADD s8, s11, zero
  # implict jump to bb18
bb18:
  ADD t4, s9, zero
  SW t4, 140(sp)
  ADD t4, s4, zero
  SW t4, 112(sp)
  ADD t4, s8, zero
  SW t4, 104(sp)
  ADD t4, s7, zero
  SW t4, 152(sp)
  ADD t4, s6, zero
  SW t4, 156(sp)
  ADD t4, s2, zero
  SW t4, 44(sp)
  ADD t4, s1, zero
  SW t4, 4(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 76(sp)
  ADDIW t4, t3, 1
  SW t4, 56(sp)
  # implict jump to bb19
bb19:
  LW t4, 56(sp)
  SLTI s0, t4, 1023
  BNE s0, zero, bb20
  JAL zero, bb1
bb20:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  JAL zero, bb16
bb21:
  ADDI s11, zero, 1
  # implict jump to bb22
bb22:
  ADD t4, s11, zero
  SW t4, 100(sp)
  # implict jump to bb23
bb23:
  LW t4, 100(sp)
  ADD s11, t4, zero
  ADDI s5, zero, 1
  SUBW s5, s11, s5
  SLLIW s5, s5, 10
  LW t3, 76(sp)
  ADDW t4, s5, t3
  SW t4, 72(sp)
  ADDI s5, zero, 1
  LW t3, 72(sp)
  SUBW t4, t3, s5
  SW t4, 128(sp)
  LW t3, 72(sp)
  ADDIW t4, t3, 1
  SW t4, 68(sp)
  SLLIW s5, s11, 10
  LW t3, 76(sp)
  ADDW t4, s5, t3
  SW t4, 136(sp)
  ADDI s5, zero, 1
  LW t3, 136(sp)
  SUBW t4, t3, s5
  SW t4, 144(sp)
  LW t4, 136(sp)
  ADDIW s10, t4, 1
  ADDIW t4, s11, 1
  SW t4, 84(sp)
  LW t4, 84(sp)
  SLLIW s5, t4, 10
  LW t3, 76(sp)
  ADDW t4, s5, t3
  SW t4, 116(sp)
  ADDI s5, zero, 1
  LW t3, 116(sp)
  SUBW t4, t3, s5
  SW t4, 80(sp)
  LW t3, 116(sp)
  ADDIW t4, t3, 1
  SW t4, 124(sp)
  LW t4, 136(sp)
  SLLIW s5, t4, 2
  LA s11, image_in
  ADD s11, s11, s5
  LW s11, 0(s11)
  ADDI s3, zero, 8
  MULW s3, s11, s3
  LW t4, 128(sp)
  SLLIW s11, t4, 2
  LA s0, image_in
  ADD s0, s0, s11
  LW s0, 0(s0)
  SUBW s0, s3, s0
  LW t4, 72(sp)
  SLLIW s3, t4, 2
  LA s11, image_in
  ADD s3, s11, s3
  LW s3, 0(s3)
  SUBW s0, s0, s3
  LW t4, 68(sp)
  SLLIW s3, t4, 2
  LA s11, image_in
  ADD s3, s11, s3
  LW s3, 0(s3)
  SUBW s0, s0, s3
  LW t4, 144(sp)
  SLLIW s3, t4, 2
  LA s11, image_in
  ADD s3, s11, s3
  LW s3, 0(s3)
  SUBW s0, s0, s3
  SLLIW s3, s10, 2
  LA s11, image_in
  ADD s3, s11, s3
  LW s3, 0(s3)
  SUBW s0, s0, s3
  LW t4, 80(sp)
  SLLIW s3, t4, 2
  LA s11, image_in
  ADD s3, s11, s3
  LW s3, 0(s3)
  SUBW s0, s0, s3
  LW t4, 116(sp)
  SLLIW s3, t4, 2
  LA s11, image_in
  ADD s3, s11, s3
  LW s3, 0(s3)
  SUBW s0, s0, s3
  LW t4, 124(sp)
  SLLIW s3, t4, 2
  LA s11, image_in
  ADD s3, s11, s3
  LW s3, 0(s3)
  SUBW t4, s0, s3
  SW t4, 108(sp)
  LA s0, image_out
  ADD s0, s0, s5
  LW t4, 108(sp)
  BLT t4, zero, bb32
  # implict jump to bb24
bb24:
  ADDI s3, zero, 255
  LW t4, 108(sp)
  BLT s3, t4, bb31
  # implict jump to bb25
bb25:
  LW t4, 108(sp)
  ADD s3, t4, zero
  # implict jump to bb26
bb26:
  # implict jump to bb27
bb27:
  SW s3, 0(s0)
  # implict jump to bb28
bb28:
  LW t4, 84(sp)
  SLTI s0, t4, 1023
  BNE s0, zero, bb30
  # implict jump to bb29
bb29:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  ADD t4, s10, zero
  SW t4, 88(sp)
  LW t4, 80(sp)
  ADD s1, t4, zero
  LW t4, 128(sp)
  ADD s2, t4, zero
  LW t4, 72(sp)
  ADD s6, t4, zero
  LW t4, 116(sp)
  ADD s7, t4, zero
  LW t4, 68(sp)
  ADD s8, t4, zero
  LW t4, 124(sp)
  ADD s4, t4, zero
  LW t4, 108(sp)
  ADD s9, t4, zero
  JAL zero, bb18
bb30:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  JAL zero, bb23
bb31:
  ADDI s3, zero, 255
  JAL zero, bb26
bb32:
  ADD s3, zero, zero
  JAL zero, bb27
cutout:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  BLT s0, zero, bb39
  # implict jump to bb34
bb34:
  ADDI s1, zero, 255
  BLT s1, s0, bb38
  # implict jump to bb35
bb35:
  # implict jump to bb36
bb36:
  # implict jump to bb37
bb37:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb38:
  ADDI s0, zero, 255
  JAL zero, bb36
bb39:
  ADD s0, zero, zero
  JAL zero, bb37
