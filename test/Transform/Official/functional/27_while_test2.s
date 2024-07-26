.global FourWhile
.global main
.section .bss
.section .data
.section .text
FourWhile:
  ADDI sp, sp, -144
  SD s0, 32(sp)
  SD ra, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s5, 80(sp)
  SD s6, 88(sp)
  SD s7, 96(sp)
  SD s8, 104(sp)
  SD s9, 112(sp)
  SD s10, 120(sp)
  SD s11, 128(sp)
  ADDI s10, zero, 5
  SLTI s10, s10, 20
  BNE s10, zero, bb3
  # implict jump to bb1
bb1:
  ADDI s10, zero, 5
  ADDI s11, zero, 6
  ADDI t0, zero, 7
  ADDI t1, zero, 10
  # implict jump to bb2
bb2:
  ADDW s0, s11, t1
  ADDW s0, s10, s0
  ADDW s0, s0, t0
  ADD a0, s0, zero
  LD s0, 32(sp)
  LD ra, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  LD s7, 96(sp)
  LD s8, 104(sp)
  LD s9, 112(sp)
  LD s10, 120(sp)
  LD s11, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb3:
  ADDI t2, zero, 5
  ADDI t4, zero, 6
  SW t4, 28(sp)
  ADDI a1, zero, 7
  ADDI a2, zero, 10
  # implict jump to bb4
bb4:
  ADD a3, a2, zero
  ADD a4, a1, zero
  LW t4, 28(sp)
  ADD a5, t4, zero
  ADD a6, t2, zero
  ADDIW t4, a6, 3
  SW t4, 8(sp)
  SLTI a6, a5, 10
  BNE a6, zero, bb10
  # implict jump to bb5
bb5:
  ADD a6, a5, zero
  ADD a7, a4, zero
  ADD t6, a3, zero
  # implict jump to bb6
bb6:
  ADD s5, t6, zero
  ADD s1, a7, zero
  ADDI s0, zero, 2
  SUBW s8, a6, s0
  # implict jump to bb7
bb7:
  LW t4, 8(sp)
  SLTI s0, t4, 20
  BNE s0, zero, bb9
  # implict jump to bb8
bb8:
  LW t4, 8(sp)
  ADD s10, t4, zero
  ADD s11, s8, zero
  ADD t0, s1, zero
  ADD t1, s5, zero
  JAL zero, bb2
bb9:
  LW t4, 8(sp)
  ADD t2, t4, zero
  ADD t4, s8, zero
  SW t4, 28(sp)
  ADD a1, s1, zero
  ADD a2, s5, zero
  JAL zero, bb4
bb10:
  # implict jump to bb11
bb11:
  ADD s3, a3, zero
  ADD s6, a4, zero
  ADD s2, a5, zero
  ADDIW t4, s2, 1
  SW t4, 4(sp)
  XORI s2, s6, 7
  SLTIU s2, s2, 1
  BNE s2, zero, bb17
  # implict jump to bb12
bb12:
  ADD s2, s6, zero
  ADD s0, s3, zero
  # implict jump to bb13
bb13:
  ADD s7, s0, zero
  ADDIW s4, s2, 1
  # implict jump to bb14
bb14:
  LW t4, 4(sp)
  SLTI s0, t4, 10
  BNE s0, zero, bb16
  # implict jump to bb15
bb15:
  LW t4, 4(sp)
  ADD a6, t4, zero
  ADD a7, s4, zero
  ADD t6, s7, zero
  JAL zero, bb6
bb16:
  LW t4, 4(sp)
  ADD a5, t4, zero
  ADD a4, s4, zero
  ADD a3, s7, zero
  JAL zero, bb11
bb17:
  ADD t4, s6, zero
  SW t4, 24(sp)
  ADD t4, s3, zero
  SW t4, 16(sp)
  # implict jump to bb18
bb18:
  LW t4, 16(sp)
  ADD s3, t4, zero
  LW t4, 24(sp)
  ADD s9, t4, zero
  ADDI s6, zero, 1
  SUBW t4, s9, s6
  SW t4, 0(sp)
  SLTI s6, s3, 20
  BNE s6, zero, bb24
  # implict jump to bb19
bb19:
  ADD s6, s3, zero
  # implict jump to bb20
bb20:
  ADDI s9, zero, 1
  SUBW t4, s6, s9
  SW t4, 20(sp)
  # implict jump to bb21
bb21:
  LW t4, 0(sp)
  XORI s6, t4, 7
  SLTIU s6, s6, 1
  BNE s6, zero, bb23
  # implict jump to bb22
bb22:
  LW t4, 0(sp)
  ADD s2, t4, zero
  LW t4, 20(sp)
  ADD s0, t4, zero
  JAL zero, bb13
bb23:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb18
bb24:
  # implict jump to bb25
bb25:
  ADD s9, s3, zero
  ADDIW t4, s9, 3
  SW t4, 12(sp)
  # implict jump to bb26
bb26:
  LW t4, 12(sp)
  SLTI s9, t4, 20
  BNE s9, zero, bb28
  # implict jump to bb27
bb27:
  LW t4, 12(sp)
  ADD s6, t4, zero
  JAL zero, bb20
bb28:
  LW t4, 12(sp)
  ADD s3, t4, zero
  JAL zero, bb25
main:
  ADDI sp, sp, -144
  SD s0, 32(sp)
  SD ra, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s5, 80(sp)
  SD s6, 88(sp)
  SD s7, 96(sp)
  SD s8, 104(sp)
  SD s9, 112(sp)
  SD s10, 120(sp)
  SD s11, 128(sp)
  ADDI s10, zero, 5
  SLTI s10, s10, 20
  BNE s10, zero, bb32
  # implict jump to bb30
bb30:
  ADDI s10, zero, 5
  ADDI s11, zero, 6
  ADDI t0, zero, 7
  ADDI t1, zero, 10
  # implict jump to bb31
bb31:
  ADDW s0, s11, t1
  ADDW s0, s10, s0
  ADDW s0, s0, t0
  ADD a0, s0, zero
  LD s0, 32(sp)
  LD ra, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  LD s7, 96(sp)
  LD s8, 104(sp)
  LD s9, 112(sp)
  LD s10, 120(sp)
  LD s11, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb32:
  ADDI t2, zero, 5
  ADDI t4, zero, 6
  SW t4, 28(sp)
  ADDI a1, zero, 7
  ADDI a2, zero, 10
  # implict jump to bb33
bb33:
  ADD a3, a2, zero
  ADD a4, a1, zero
  LW t4, 28(sp)
  ADD a5, t4, zero
  ADD a6, t2, zero
  ADDIW t4, a6, 3
  SW t4, 8(sp)
  SLTI a6, a5, 10
  BNE a6, zero, bb39
  # implict jump to bb34
bb34:
  ADD a6, a5, zero
  ADD a7, a4, zero
  ADD t6, a3, zero
  # implict jump to bb35
bb35:
  ADD s5, t6, zero
  ADD s3, a7, zero
  ADDI s0, zero, 2
  SUBW s2, a6, s0
  # implict jump to bb36
bb36:
  LW t4, 8(sp)
  SLTI s0, t4, 20
  BNE s0, zero, bb38
  # implict jump to bb37
bb37:
  LW t4, 8(sp)
  ADD s10, t4, zero
  ADD s11, s2, zero
  ADD t0, s3, zero
  ADD t1, s5, zero
  JAL zero, bb31
bb38:
  LW t4, 8(sp)
  ADD t2, t4, zero
  ADD t4, s2, zero
  SW t4, 28(sp)
  ADD a1, s3, zero
  ADD a2, s5, zero
  JAL zero, bb33
bb39:
  # implict jump to bb40
bb40:
  ADD s9, a3, zero
  ADD s8, a4, zero
  ADD s7, a5, zero
  ADDIW t4, s7, 1
  SW t4, 4(sp)
  XORI s7, s8, 7
  SLTIU s7, s7, 1
  BNE s7, zero, bb46
  # implict jump to bb41
bb41:
  ADD s7, s8, zero
  ADD s0, s9, zero
  # implict jump to bb42
bb42:
  ADD s4, s0, zero
  ADDIW s6, s7, 1
  # implict jump to bb43
bb43:
  LW t4, 4(sp)
  SLTI s0, t4, 10
  BNE s0, zero, bb45
  # implict jump to bb44
bb44:
  LW t4, 4(sp)
  ADD a6, t4, zero
  ADD a7, s6, zero
  ADD t6, s4, zero
  JAL zero, bb35
bb45:
  LW t4, 4(sp)
  ADD a5, t4, zero
  ADD a4, s6, zero
  ADD a3, s4, zero
  JAL zero, bb40
bb46:
  ADD t4, s8, zero
  SW t4, 24(sp)
  ADD t4, s9, zero
  SW t4, 16(sp)
  # implict jump to bb47
bb47:
  LW t4, 16(sp)
  ADD s9, t4, zero
  LW t4, 24(sp)
  ADD s1, t4, zero
  ADDI s8, zero, 1
  SUBW t4, s1, s8
  SW t4, 0(sp)
  SLTI s1, s9, 20
  BNE s1, zero, bb53
  # implict jump to bb48
bb48:
  ADD s1, s9, zero
  # implict jump to bb49
bb49:
  ADDI s9, zero, 1
  SUBW t4, s1, s9
  SW t4, 20(sp)
  # implict jump to bb50
bb50:
  LW t4, 0(sp)
  XORI s1, t4, 7
  SLTIU s1, s1, 1
  BNE s1, zero, bb52
  # implict jump to bb51
bb51:
  LW t4, 0(sp)
  ADD s7, t4, zero
  LW t4, 20(sp)
  ADD s0, t4, zero
  JAL zero, bb42
bb52:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb47
bb53:
  ADD s8, s9, zero
  # implict jump to bb54
bb54:
  ADD s9, s8, zero
  ADDIW t4, s9, 3
  SW t4, 12(sp)
  # implict jump to bb55
bb55:
  LW t4, 12(sp)
  SLTI s9, t4, 20
  BNE s9, zero, bb57
  # implict jump to bb56
bb56:
  LW t4, 12(sp)
  ADD s1, t4, zero
  JAL zero, bb49
bb57:
  LW t4, 12(sp)
  ADD s8, t4, zero
  JAL zero, bb54
