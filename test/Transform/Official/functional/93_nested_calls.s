.global func2
.global func3
.global main
.global func1
.section .bss
.section .data
.section .text
func2:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  BNE s1, zero, bb2
  # implict jump to bb1
bb1:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:
  REMW s0, s0, s1
  ADD a0, s0, zero
  ADD a1, zero, zero
  CALL func2
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
func3:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SLTIU s2, s1, 1
  BNE s2, zero, bb5
  # implict jump to bb4
bb4:
  ADDW s1, s0, s1
  ADD a0, s1, zero
  ADD a1, zero, zero
  CALL func3
  ADD s1, a0, zero
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb5:
  ADDIW s0, s0, 1
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -176
  SD s2, 32(sp)
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s5, 80(sp)
  SD s6, 88(sp)
  SD s7, 96(sp)
  SD s8, 104(sp)
  SD s9, 112(sp)
  SD s10, 120(sp)
  SD s11, 128(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 12(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 8(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 4(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb7
bb7:
  LW t4, 16(sp)
  ADD s5, t4, zero
  SLLIW s6, s5, 2
  ADDI t5, sp, 136
  ADD s6, t5, s6
  CALL getint
  ADD s7, a0, zero
  SW s7, 0(s6)
  ADDIW t4, s5, 1
  SW t4, 20(sp)
  LW t4, 20(sp)
  SLTI s6, t4, 10
  BNE s6, zero, bb45
  # implict jump to bb8
bb8:
  LW t4, 12(sp)
  SLTU s6, zero, t4
  XORI s6, s6, 1
  BNE s6, zero, bb44
  # implict jump to bb9
bb9:
  ADD s6, zero, zero
  # implict jump to bb10
bb10:
  LW t4, 8(sp)
  SUB s7, zero, t4
  BNE s6, zero, bb43
  # implict jump to bb11
bb11:
  ADD s6, zero, zero
  # implict jump to bb12
bb12:
  BNE s6, zero, bb42
  # implict jump to bb13
bb13:
  ADD s6, zero, zero
  # implict jump to bb14
bb14:
  ADD a0, s6, zero
  LW t4, 4(sp)
  ADD a1, t4, zero
  CALL func2
  ADD s6, a0, zero
  ADD a0, s6, zero
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL func3
  ADD s6, a0, zero
  SUB s6, zero, s6
  LW s7, 136(sp)
  LW s8, 140(sp)
  SUB s9, zero, s8
  LW s10, 144(sp)
  LW t4, 148(sp)
  SW t4, 24(sp)
  LW t4, 24(sp)
  SLTU s3, zero, t4
  XORI s3, s3, 1
  BNE s3, zero, bb41
  # implict jump to bb15
bb15:
  ADD s3, zero, zero
  # implict jump to bb16
bb16:
  BNE s10, zero, bb40
  # implict jump to bb17
bb17:
  ADD s2, zero, zero
  # implict jump to bb18
bb18:
  BNE s2, zero, bb39
  # implict jump to bb19
bb19:
  ADD s2, zero, zero
  # implict jump to bb20
bb20:
  LW s3, 152(sp)
  LW s1, 156(sp)
  SLTU s0, zero, s1
  XORI s0, s0, 1
  BNE s0, zero, bb38
  # implict jump to bb21
bb21:
  ADD s0, zero, zero
  # implict jump to bb22
bb22:
  ADD a0, s3, zero
  ADD a1, s0, zero
  CALL func2
  ADD s0, a0, zero
  BNE s9, zero, bb37
  # implict jump to bb23
bb23:
  # implict jump to bb24
bb24:
  LW s2, 160(sp)
  ADD a0, s0, zero
  ADD a1, s2, zero
  CALL func3
  ADD s0, a0, zero
  LW s9, 164(sp)
  ADD a0, s0, zero
  ADD a1, s9, zero
  CALL func2
  ADD s0, a0, zero
  LW s4, 168(sp)
  LW s5, 172(sp)
  SLTU s11, zero, s5
  XORI s11, s11, 1
  BNE s11, zero, bb36
  # implict jump to bb25
bb25:
  ADD s11, zero, zero
  # implict jump to bb26
bb26:
  ADD a0, s4, zero
  ADD a1, s11, zero
  CALL func3
  ADD s11, a0, zero
  ADD a0, s0, zero
  ADD a1, s11, zero
  LW t4, 12(sp)
  ADD a2, t4, zero
  CALL func1
  ADD s0, a0, zero
  BNE s6, zero, bb35
  # implict jump to bb27
bb27:
  # implict jump to bb28
bb28:
  LW t4, 4(sp)
  SLTU s6, zero, t4
  XORI s6, s6, 1
  BNE s6, zero, bb34
  # implict jump to bb29
bb29:
  ADD s6, zero, zero
  # implict jump to bb30
bb30:
  ADD a0, s6, zero
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL func3
  ADD s6, a0, zero
  LW t4, 8(sp)
  ADD a0, t4, zero
  ADD a1, s6, zero
  CALL func2
  ADD s6, a0, zero
  ADD a0, s0, zero
  ADD a1, s6, zero
  CALL func3
  ADD s0, a0, zero
  ADD a0, s0, zero
  ADD a1, s7, zero
  ADD a2, s8, zero
  CALL func1
  ADD s0, a0, zero
  ADD a0, s0, zero
  ADD a1, s10, zero
  CALL func2
  ADD s0, a0, zero
  SUB s1, zero, s1
  ADD a0, s3, zero
  ADD a1, s1, zero
  CALL func3
  ADD s1, a0, zero
  SUB s2, zero, s2
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL func2
  ADD s1, a0, zero
  SLTU s2, zero, s4
  XORI s2, s2, 1
  BNE s2, zero, bb33
  # implict jump to bb31
bb31:
  ADD s2, zero, zero
  # implict jump to bb32
bb32:
  ADD a0, s1, zero
  ADD a1, s9, zero
  ADD a2, s2, zero
  CALL func1
  ADD s1, a0, zero
  SUB s2, zero, s5
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL func2
  ADD s1, a0, zero
  ADD a0, s1, zero
  LW t4, 12(sp)
  ADD a1, t4, zero
  CALL func3
  ADD s1, a0, zero
  ADD a0, s0, zero
  LW t4, 24(sp)
  ADD a1, t4, zero
  ADD a2, s1, zero
  CALL func1
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD s2, 32(sp)
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  LD s7, 96(sp)
  LD s8, 104(sp)
  LD s9, 112(sp)
  LD s10, 120(sp)
  LD s11, 128(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb33:
  ADDI s2, zero, 1
  JAL zero, bb32
bb34:
  ADDI s6, zero, 1
  JAL zero, bb30
bb35:
  ADD s0, s7, zero
  JAL zero, bb28
bb36:
  ADDI s11, zero, 1
  JAL zero, bb26
bb37:
  ADD s0, s2, zero
  JAL zero, bb24
bb38:
  ADDI s0, zero, 1
  JAL zero, bb22
bb39:
  ADDI s2, zero, 1
  JAL zero, bb20
bb40:
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb18
bb41:
  ADDI s3, zero, 1
  JAL zero, bb16
bb42:
  ADDI s6, zero, 1
  JAL zero, bb14
bb43:
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb12
bb44:
  ADDI s6, zero, 1
  JAL zero, bb10
bb45:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb7
func1:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  SLTIU s3, s2, 1
  BNE s3, zero, bb48
  # implict jump to bb47
bb47:
  SUBW s2, s1, s2
  ADD a0, s0, zero
  ADD a1, s2, zero
  ADD a2, zero, zero
  CALL func1
  ADD s2, a0, zero
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb48:
  MULW s0, s0, s1
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
