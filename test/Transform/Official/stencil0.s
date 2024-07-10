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
  ADDI sp, sp, -176
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  SD s10, 96(sp)
  SD s11, 104(sp)
  SD s5, 112(sp)
  SD s6, 120(sp)
  SD s7, 128(sp)
  SD s8, 136(sp)
  SD s9, 144(sp)
  SD s3, 152(sp)
  SD s4, 160(sp)
  LA s0, image_in
  ADD a0, s0, zero
  CALL getarray
  ADD t4, a0, zero
  SW t4, 60(sp)
  ADDI a0, zero, 23
  CALL _sysy_starttime
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  ADDI t4, zero, 1
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 28(sp)
  ADD t4, zero, zero
  SW t4, 36(sp)
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
  # implict jump to bb1
bb1:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t4, 44(sp)
  ADD s9, t4, zero
  LW t4, 0(sp)
  ADD s8, t4, zero
  LW t4, 40(sp)
  ADD s7, t4, zero
  LW t4, 36(sp)
  ADD s6, t4, zero
  LW t4, 28(sp)
  ADD s5, t4, zero
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t4, 20(sp)
  ADD s4, t4, zero
  LW t4, 16(sp)
  ADD s3, t4, zero
  LW t4, 32(sp)
  SLTI s2, t4, 511
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
  SLTI s10, s11, 512
  BNE s10, zero, bb7
  # implict jump to bb6
bb6:
  ADDI a0, zero, 59
  CALL _sysy_stoptime
  LUI s10, 128
  ADDIW s10, s10, 0
  ADD a0, zero, s10
  LA s10, image_out
  ADD a1, s10, zero
  CALL putarray
  LW t4, 60(sp)
  ADD a0, t4, zero
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  LD s5, 112(sp)
  LD s6, 120(sp)
  LD s7, 128(sp)
  LD s8, 136(sp)
  LD s9, 144(sp)
  LD s3, 152(sp)
  LD s4, 160(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb7:
  SLLIW s10, s11, 2
  LA ra, image_out
  ADD ra, ra, s10
  LA t0, image_in
  ADD s10, t0, s10
  LW s10, 0(s10)
  SW s10, 0(ra)
  LUI s10, 128
  ADDIW s10, s10, -512
  ADDW s10, s11, s10
  SLLIW s10, s10, 2
  LA ra, image_out
  ADD ra, ra, s10
  LA t0, image_in
  ADD s10, t0, s10
  LW s10, 0(s10)
  SW s10, 0(ra)
  ADDIW s10, s11, 1
  ADD s0, s10, zero
  JAL zero, bb5
bb8:
  SLLIW s0, s1, 9
  SLLIW s10, s0, 2
  LA s11, image_out
  ADD s11, s11, s10
  LA ra, image_in
  ADD s10, ra, s10
  LW s10, 0(s10)
  SW s10, 0(s11)
  ADDIW s0, s0, 511
  SLLIW s0, s0, 2
  LA s10, image_out
  ADD s10, s10, s0
  LA s11, image_in
  ADD s0, s11, s0
  LW s0, 0(s0)
  SW s0, 0(s10)
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
  LW t4, 4(sp)
  ADD s7, t4, zero
  LW t4, 8(sp)
  ADD s8, t4, zero
  LW t4, 12(sp)
  ADD s9, t4, zero
  ADDI s10, zero, 1
  # implict jump to bb10
bb10:
  ADD s11, s10, zero
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
  LW t4, 32(sp)
  ADDIW a6, t4, 1
  ADD t4, a5, zero
  SW t4, 16(sp)
  ADD t4, a4, zero
  SW t4, 20(sp)
  ADD t4, a6, zero
  SW t4, 24(sp)
  ADD t4, a3, zero
  SW t4, 28(sp)
  ADD t4, a2, zero
  SW t4, 36(sp)
  ADD t4, a1, zero
  SW t4, 40(sp)
  ADD t4, a0, zero
  SW t4, 0(sp)
  ADD t4, t2, zero
  SW t4, 44(sp)
  ADD t4, t1, zero
  SW t4, 48(sp)
  ADD t4, t0, zero
  SW t4, 52(sp)
  ADD t4, ra, zero
  SW t4, 56(sp)
  JAL zero, bb1
bb12:
  ADDI ra, zero, 1
  SUBW ra, s11, ra
  SLLIW ra, ra, 9
  LW t4, 32(sp)
  ADDW ra, ra, t4
  ADDI t0, zero, 1
  SUBW t0, ra, t0
  ADDIW t1, ra, 1
  SLLIW t2, s11, 9
  LW t4, 32(sp)
  ADDW t2, t2, t4
  ADDI a0, zero, 1
  SUBW a0, t2, a0
  ADDIW a1, t2, 1
  ADDIW s11, s11, 1
  SLLIW a2, s11, 9
  LW t4, 32(sp)
  ADDW a2, a2, t4
  ADDI a3, zero, 1
  SUBW a3, a2, a3
  ADDIW a4, a2, 1
  SLLIW a5, t2, 2
  LA a6, image_in
  ADD a6, a6, a5
  LW a6, 0(a6)
  ADDI a7, zero, 8
  MULW a6, a6, a7
  SLLIW a7, t0, 2
  LA t6, image_in
  ADD a7, t6, a7
  LW a7, 0(a7)
  SUBW a6, a6, a7
  SLLIW a7, ra, 2
  LA t6, image_in
  ADD a7, t6, a7
  LW a7, 0(a7)
  SUBW a6, a6, a7
  SLLIW a7, t1, 2
  LA t6, image_in
  ADD a7, t6, a7
  LW a7, 0(a7)
  SUBW a6, a6, a7
  SLLIW a7, a0, 2
  LA t6, image_in
  ADD a7, t6, a7
  LW a7, 0(a7)
  SUBW a6, a6, a7
  SLLIW a7, a1, 2
  LA t6, image_in
  ADD a7, t6, a7
  LW a7, 0(a7)
  SUBW a6, a6, a7
  SLLIW a7, a3, 2
  LA t6, image_in
  ADD a7, t6, a7
  LW a7, 0(a7)
  SUBW a6, a6, a7
  SLLIW a7, a2, 2
  LA t6, image_in
  ADD a7, t6, a7
  LW a7, 0(a7)
  SUBW a6, a6, a7
  SLLIW a7, a4, 2
  LA t6, image_in
  ADD a7, t6, a7
  LW a7, 0(a7)
  SUBW a6, a6, a7
  LA a7, image_out
  ADD a5, a7, a5
  SLT a7, a6, zero
  BNE a7, zero, bb18
  # implict jump to bb13
bb13:
  ADDI a7, zero, 255
  SLT a7, a7, a6
  BNE a7, zero, bb17
  # implict jump to bb14
bb14:
  ADD a7, a6, zero
  # implict jump to bb15
bb15:
  # implict jump to bb16
bb16:
  SW a7, 0(a5)
  ADD s0, a6, zero
  ADD s1, a4, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a1, zero
  ADD s5, a0, zero
  ADD s6, t2, zero
  ADD s7, t1, zero
  ADD s8, ra, zero
  ADD s9, t0, zero
  ADD s10, s11, zero
  JAL zero, bb10
bb17:
  ADDI a7, zero, 255
  JAL zero, bb15
bb18:
  ADD a7, zero, zero
  JAL zero, bb16
cutout:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  SLT s1, s0, zero
  BNE s1, zero, bb25
  # implict jump to bb20
bb20:
  ADDI s1, zero, 255
  SLT s1, s1, s0
  BNE s1, zero, bb24
  # implict jump to bb21
bb21:
  # implict jump to bb22
bb22:
  # implict jump to bb23
bb23:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb24:
  ADDI s0, zero, 255
  JAL zero, bb22
bb25:
  ADD s0, zero, zero
  JAL zero, bb23
