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
  ADDI sp, sp, -176
  SD ra, 72(sp)
  SD s0, 80(sp)
  SD s1, 88(sp)
  SD s2, 96(sp)
  SD s10, 104(sp)
  SD s11, 112(sp)
  SD s5, 120(sp)
  SD s6, 128(sp)
  SD s7, 136(sp)
  SD s8, 144(sp)
  SD s9, 152(sp)
  SD s3, 160(sp)
  SD s4, 168(sp)
  LA s0, image_in
  ADD a0, s0, zero
  CALL getarray
  ADD t4, a0, zero
  SW t4, 64(sp)
  ADDI a0, zero, 23
  CALL _sysy_starttime
  ADD t4, zero, zero
  SW t4, 20(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADDI t4, zero, 1
  SW t4, 28(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  ADD t4, zero, zero
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 44(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  ADD t4, zero, zero
  SW t4, 52(sp)
  ADD t4, zero, zero
  SW t4, 56(sp)
  ADD t4, zero, zero
  SW t4, 60(sp)
  # implict jump to bb1
bb1:
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 48(sp)
  ADD s9, t4, zero
  LW t4, 44(sp)
  ADD s8, t4, zero
  LW t4, 0(sp)
  ADD s7, t4, zero
  LW t4, 40(sp)
  ADD s6, t4, zero
  LW t4, 32(sp)
  ADD s5, t4, zero
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t4, 24(sp)
  ADD s4, t4, zero
  LW t4, 20(sp)
  ADD s3, t4, zero
  LW t4, 36(sp)
  SLTI s2, t4, 1023
  BNE s2, zero, bb9
  # implict jump to bb2
bb2:
  ADD s2, zero, zero
  # implict jump to bb3
bb3:
  ADD s1, s2, zero
  SLTI s0, s1, 1024
  BNE s0, zero, bb8
  # implict jump to bb4
bb4:
  ADD s0, zero, zero
  # implict jump to bb5
bb5:
  ADD s11, s0, zero
  SLTI s10, s11, 1024
  BNE s10, zero, bb7
  # implict jump to bb6
bb6:
  ADDI a0, zero, 59
  CALL _sysy_stoptime
  LUI s10, 256
  ADDIW s10, s10, 0
  ADD a0, zero, s10
  LA s10, image_out
  ADD a1, s10, zero
  CALL putarray
  LW t4, 64(sp)
  ADD a0, t4, zero
  LD ra, 72(sp)
  LD s0, 80(sp)
  LD s1, 88(sp)
  LD s2, 96(sp)
  LD s10, 104(sp)
  LD s11, 112(sp)
  LD s5, 120(sp)
  LD s6, 128(sp)
  LD s7, 136(sp)
  LD s8, 144(sp)
  LD s9, 152(sp)
  LD s3, 160(sp)
  LD s4, 168(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb7:
  SLLIW s10, s11, 2
  LA ra, image_out
  ADD t0, ra, s10
  LA ra, image_in
  ADD t1, ra, s10
  LW s10, 0(t1)
  SW s10, 0(t0)
  LUI s10, 256
  ADDIW s10, s10, -1024
  ADDW ra, s11, s10
  SLLIW s10, ra, 2
  LA ra, image_out
  ADD t0, ra, s10
  LA ra, image_in
  ADD t1, ra, s10
  LW s10, 0(t1)
  SW s10, 0(t0)
  ADDIW s10, s11, 1
  ADD s0, s10, zero
  JAL zero, bb5
bb8:
  SLLIW s0, s1, 10
  SLLIW s10, s0, 2
  LA s11, image_out
  ADD ra, s11, s10
  LA s11, image_in
  ADD t0, s11, s10
  LW s10, 0(t0)
  SW s10, 0(ra)
  ADDIW s10, s0, 1023
  SLLIW s0, s10, 2
  LA s10, image_out
  ADD s11, s10, s0
  LA s10, image_in
  ADD ra, s10, s0
  LW s0, 0(ra)
  SW s0, 0(s11)
  ADDIW s0, s1, 1
  ADD s2, s0, zero
  JAL zero, bb3
bb9:
  ADD s0, s3, zero
  ADD s1, s4, zero
  ADD s2, s5, zero
  ADD s3, s6, zero
  ADD s4, s7, zero
  ADD s5, s8, zero
  ADD s6, s9, zero
  LW t4, 8(sp)
  ADD s7, t4, zero
  LW t4, 12(sp)
  ADD s8, t4, zero
  LW t4, 16(sp)
  ADD s9, t4, zero
  ADDI t4, zero, 1
  SW t4, 4(sp)
  # implict jump to bb10
bb10:
  LW t4, 4(sp)
  ADD s11, t4, zero
  ADD ra, s9, zero
  ADD t0, s8, zero
  ADD t1, s7, zero
  ADD t2, s6, zero
  ADD a0, s5, zero
  ADD a1, s4, zero
  ADD a2, s3, zero
  ADD a3, s2, zero
  ADD a4, s1, zero
  ADD a5, s0, zero
  SLTI a6, s11, 1023
  BNE a6, zero, bb12
  # implict jump to bb11
bb11:
  LW t4, 36(sp)
  ADDIW a6, t4, 1
  ADD t4, a5, zero
  SW t4, 20(sp)
  ADD t4, a4, zero
  SW t4, 24(sp)
  ADD t4, a6, zero
  SW t4, 28(sp)
  ADD t4, a3, zero
  SW t4, 32(sp)
  ADD t4, a2, zero
  SW t4, 40(sp)
  ADD t4, a1, zero
  SW t4, 0(sp)
  ADD t4, a0, zero
  SW t4, 44(sp)
  ADD t4, t2, zero
  SW t4, 48(sp)
  ADD t4, t1, zero
  SW t4, 52(sp)
  ADD t4, t0, zero
  SW t4, 56(sp)
  ADD t4, ra, zero
  SW t4, 60(sp)
  JAL zero, bb1
bb12:
  ADDI ra, zero, 1
  SUBW t0, s11, ra
  SLLIW ra, t0, 10
  LW t4, 36(sp)
  ADDW t0, ra, t4
  ADDI ra, zero, 1
  SUBW t1, t0, ra
  ADDIW ra, t0, 1
  SLLIW t2, s11, 10
  LW t4, 36(sp)
  ADDW a0, t2, t4
  ADDI t2, zero, 1
  SUBW a1, a0, t2
  ADDIW t2, a0, 1
  ADDIW a2, s11, 1
  SLLIW s11, a2, 10
  LW t4, 36(sp)
  ADDW a3, s11, t4
  ADDI s11, zero, 1
  SUBW a4, a3, s11
  ADDIW s11, a3, 1
  SLLIW a5, a0, 2
  LA a6, image_in
  ADD a7, a6, a5
  LW a6, 0(a7)
  ADDI a7, zero, 8
  MULW t6, a6, a7
  SLLIW a6, t1, 2
  LA a7, image_in
  ADD s10, a7, a6
  LW a6, 0(s10)
  SUBW s10, t6, a6
  SLLIW a6, t0, 2
  LA a7, image_in
  ADD t6, a7, a6
  LW a6, 0(t6)
  SUBW a7, s10, a6
  SLLIW s10, ra, 2
  LA a6, image_in
  ADD t6, a6, s10
  LW s10, 0(t6)
  SUBW a6, a7, s10
  SLLIW s10, a1, 2
  LA a7, image_in
  ADD t6, a7, s10
  LW s10, 0(t6)
  SUBW a7, a6, s10
  SLLIW s10, t2, 2
  LA a6, image_in
  ADD t6, a6, s10
  LW s10, 0(t6)
  SUBW a6, a7, s10
  SLLIW s10, a4, 2
  LA a7, image_in
  ADD t6, a7, s10
  LW s10, 0(t6)
  SUBW a7, a6, s10
  SLLIW s10, a3, 2
  LA a6, image_in
  ADD t6, a6, s10
  LW s10, 0(t6)
  SUBW a6, a7, s10
  SLLIW s10, s11, 2
  LA a7, image_in
  ADD t6, a7, s10
  LW s10, 0(t6)
  SUBW a7, a6, s10
  LA s10, image_out
  ADD a6, s10, a5
  SLT s10, a7, zero
  BNE s10, zero, bb18
  # implict jump to bb13
bb13:
  ADDI s10, zero, 255
  SLT a5, s10, a7
  BNE a5, zero, bb17
  # implict jump to bb14
bb14:
  ADD s10, a7, zero
  # implict jump to bb15
bb15:
  ADD a5, s10, zero
  ADD s10, a5, zero
  # implict jump to bb16
bb16:
  ADD a5, s10, zero
  SW a5, 0(a6)
  ADD s0, a7, zero
  ADD s1, s11, zero
  ADD s2, a3, zero
  ADD s3, a4, zero
  ADD s4, t2, zero
  ADD s5, a1, zero
  ADD s6, a0, zero
  ADD s7, ra, zero
  ADD s8, t0, zero
  ADD s9, t1, zero
  ADD t4, a2, zero
  SW t4, 4(sp)
  JAL zero, bb10
bb17:
  ADDI s10, zero, 255
  JAL zero, bb15
bb18:
  ADD s10, zero, zero
  JAL zero, bb16
cutout:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s0, a0, zero
  SLT s1, s0, zero
  BNE s1, zero, bb25
  # implict jump to bb20
bb20:
  ADDI s1, zero, 255
  SLT s2, s1, s0
  BNE s2, zero, bb24
  # implict jump to bb21
bb21:
  ADD s1, s0, zero
  # implict jump to bb22
bb22:
  ADD s0, s1, zero
  ADD s1, s0, zero
  # implict jump to bb23
bb23:
  ADD s0, s1, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb24:
  ADDI s1, zero, 255
  JAL zero, bb22
bb25:
  ADD s1, zero, zero
  JAL zero, bb23
