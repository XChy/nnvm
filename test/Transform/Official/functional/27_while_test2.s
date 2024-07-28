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
  ADDI t2, zero, 10
  ADDI a0, zero, 7
  ADDI a1, zero, 6
  ADDI a2, zero, 5
  # implict jump to bb4
bb4:
  ADD t4, a0, zero
  SW t4, 28(sp)
  # implict jump to bb5
bb5:
  ADD a3, t2, zero
  LW t4, 28(sp)
  ADD a4, t4, zero
  ADD a5, a1, zero
  ADD a6, a2, zero
  ADDIW t4, a6, 3
  SW t4, 8(sp)
  SLTI a6, a5, 10
  BNE a6, zero, bb11
  # implict jump to bb6
bb6:
  ADD a6, a5, zero
  ADD a7, a4, zero
  ADD t6, a3, zero
  # implict jump to bb7
bb7:
  ADD s7, t6, zero
  ADD s2, a7, zero
  ADDI s0, zero, 2
  SUBW s3, a6, s0
  # implict jump to bb8
bb8:
  LW t4, 8(sp)
  SLTI s0, t4, 20
  BNE s0, zero, bb10
  # implict jump to bb9
bb9:
  LW t4, 8(sp)
  ADD s10, t4, zero
  ADD s11, s3, zero
  ADD t0, s2, zero
  ADD t1, s7, zero
  JAL zero, bb2
bb10:
  LW t4, 8(sp)
  ADD a2, t4, zero
  ADD a1, s3, zero
  ADD t4, s2, zero
  SW t4, 28(sp)
  ADD t2, s7, zero
  JAL zero, bb5
bb11:
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  ADD s8, a3, zero
  ADD s4, a4, zero
  ADD s1, a5, zero
  ADDIW t4, s1, 1
  SW t4, 4(sp)
  XORI s1, s4, 7
  SLTIU s1, s1, 1
  BNE s1, zero, bb19
  # implict jump to bb14
bb14:
  ADD s1, s4, zero
  ADD s0, s8, zero
  # implict jump to bb15
bb15:
  ADD s5, s0, zero
  ADDIW s6, s1, 1
  # implict jump to bb16
bb16:
  LW t4, 4(sp)
  SLTI s0, t4, 10
  BNE s0, zero, bb18
  # implict jump to bb17
bb17:
  LW t4, 4(sp)
  ADD a6, t4, zero
  ADD a7, s6, zero
  ADD t6, s5, zero
  JAL zero, bb7
bb18:
  LW t4, 4(sp)
  ADD a5, t4, zero
  ADD a4, s6, zero
  ADD a3, s5, zero
  JAL zero, bb13
bb19:
  # implict jump to bb20
bb20:
  ADD t4, s4, zero
  SW t4, 24(sp)
  ADD t4, s8, zero
  SW t4, 16(sp)
  # implict jump to bb21
bb21:
  LW t4, 16(sp)
  ADD s8, t4, zero
  LW t4, 24(sp)
  ADD s9, t4, zero
  ADDI s4, zero, 1
  SUBW t4, s9, s4
  SW t4, 0(sp)
  SLTI s4, s8, 20
  BNE s4, zero, bb27
  # implict jump to bb22
bb22:
  ADD s4, s8, zero
  # implict jump to bb23
bb23:
  ADDI s9, zero, 1
  SUBW t4, s4, s9
  SW t4, 20(sp)
  # implict jump to bb24
bb24:
  LW t4, 0(sp)
  XORI s4, t4, 7
  SLTIU s4, s4, 1
  BNE s4, zero, bb26
  # implict jump to bb25
bb25:
  LW t4, 0(sp)
  ADD s1, t4, zero
  LW t4, 20(sp)
  ADD s0, t4, zero
  JAL zero, bb15
bb26:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb21
bb27:
  # implict jump to bb28
bb28:
  # implict jump to bb29
bb29:
  ADD s9, s8, zero
  ADDIW t4, s9, 3
  SW t4, 12(sp)
  # implict jump to bb30
bb30:
  LW t4, 12(sp)
  SLTI s9, t4, 20
  BNE s9, zero, bb32
  # implict jump to bb31
bb31:
  LW t4, 12(sp)
  ADD s4, t4, zero
  JAL zero, bb23
bb32:
  LW t4, 12(sp)
  ADD s8, t4, zero
  JAL zero, bb29
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
  BNE s10, zero, bb36
  # implict jump to bb34
bb34:
  ADDI s10, zero, 5
  ADDI s11, zero, 6
  ADDI t0, zero, 7
  ADDI t1, zero, 10
  # implict jump to bb35
bb35:
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
bb36:
  ADDI t2, zero, 10
  ADDI a0, zero, 7
  ADDI a1, zero, 6
  ADDI a2, zero, 5
  # implict jump to bb37
bb37:
  ADD t4, a0, zero
  SW t4, 28(sp)
  # implict jump to bb38
bb38:
  ADD a3, t2, zero
  LW t4, 28(sp)
  ADD a4, t4, zero
  ADD a5, a1, zero
  ADD a6, a2, zero
  ADDIW t4, a6, 3
  SW t4, 8(sp)
  SLTI a6, a5, 10
  BNE a6, zero, bb44
  # implict jump to bb39
bb39:
  ADD a6, a5, zero
  ADD a7, a4, zero
  ADD t6, a3, zero
  # implict jump to bb40
bb40:
  ADD s4, t6, zero
  ADD s3, a7, zero
  ADDI s0, zero, 2
  SUBW s5, a6, s0
  # implict jump to bb41
bb41:
  LW t4, 8(sp)
  SLTI s0, t4, 20
  BNE s0, zero, bb43
  # implict jump to bb42
bb42:
  LW t4, 8(sp)
  ADD s10, t4, zero
  ADD s11, s5, zero
  ADD t0, s3, zero
  ADD t1, s4, zero
  JAL zero, bb35
bb43:
  LW t4, 8(sp)
  ADD a2, t4, zero
  ADD a1, s5, zero
  ADD t4, s3, zero
  SW t4, 28(sp)
  ADD t2, s4, zero
  JAL zero, bb38
bb44:
  # implict jump to bb45
bb45:
  # implict jump to bb46
bb46:
  ADD s8, a3, zero
  ADD s1, a4, zero
  ADD s2, a5, zero
  ADDIW t4, s2, 1
  SW t4, 4(sp)
  XORI s2, s1, 7
  SLTIU s2, s2, 1
  BNE s2, zero, bb52
  # implict jump to bb47
bb47:
  ADD s2, s1, zero
  ADD s0, s8, zero
  # implict jump to bb48
bb48:
  ADD s6, s0, zero
  ADDIW s7, s2, 1
  # implict jump to bb49
bb49:
  LW t4, 4(sp)
  SLTI s0, t4, 10
  BNE s0, zero, bb51
  # implict jump to bb50
bb50:
  LW t4, 4(sp)
  ADD a6, t4, zero
  ADD a7, s7, zero
  ADD t6, s6, zero
  JAL zero, bb40
bb51:
  LW t4, 4(sp)
  ADD a5, t4, zero
  ADD a4, s7, zero
  ADD a3, s6, zero
  JAL zero, bb46
bb52:
  # implict jump to bb53
bb53:
  ADD t4, s1, zero
  SW t4, 24(sp)
  ADD t4, s8, zero
  SW t4, 16(sp)
  # implict jump to bb54
bb54:
  LW t4, 16(sp)
  ADD s8, t4, zero
  LW t4, 24(sp)
  ADD s9, t4, zero
  ADDI s1, zero, 1
  SUBW t4, s9, s1
  SW t4, 0(sp)
  SLTI s1, s8, 20
  BNE s1, zero, bb60
  # implict jump to bb55
bb55:
  ADD s1, s8, zero
  # implict jump to bb56
bb56:
  ADDI s9, zero, 1
  SUBW t4, s1, s9
  SW t4, 20(sp)
  # implict jump to bb57
bb57:
  LW t4, 0(sp)
  XORI s1, t4, 7
  SLTIU s1, s1, 1
  BNE s1, zero, bb59
  # implict jump to bb58
bb58:
  LW t4, 0(sp)
  ADD s2, t4, zero
  LW t4, 20(sp)
  ADD s0, t4, zero
  JAL zero, bb48
bb59:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb54
bb60:
  # implict jump to bb61
bb61:
  # implict jump to bb62
bb62:
  ADD s9, s8, zero
  ADDIW t4, s9, 3
  SW t4, 12(sp)
  # implict jump to bb63
bb63:
  LW t4, 12(sp)
  SLTI s9, t4, 20
  BNE s9, zero, bb65
  # implict jump to bb64
bb64:
  LW t4, 12(sp)
  ADD s1, t4, zero
  JAL zero, bb56
bb65:
  LW t4, 12(sp)
  ADD s8, t4, zero
  JAL zero, bb62
