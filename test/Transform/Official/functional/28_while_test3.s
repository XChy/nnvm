.global main
.global EightWhile
.section .bss




.section .data
e:
.word 0x00000000
f:
.word 0x00000000
h:
.word 0x00000000
g:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  LA s0, g
  ADDI s1, zero, 1
  SW s1, 0(s0)
  LA s0, h
  ADDI s1, zero, 2
  SW s1, 0(s0)
  LA s0, e
  ADDI s1, zero, 4
  SW s1, 0(s0)
  LA s0, f
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, zero, 10
  ADDI s1, zero, 7
  ADDI s2, zero, 6
  ADDI s3, zero, 5
  # implict jump to bb1
bb1:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  ADD s7, s0, zero
  SLTI s8, s4, 20
  BNE s8, zero, bb3
  # implict jump to bb2
bb2:
  ADDW s8, s5, s7
  ADDW s8, s4, s8
  ADDW s8, s8, s6
  LA s9, e
  LW s9, 0(s9)
  ADDW s9, s9, s7
  LA s10, g
  LW s10, 0(s10)
  SUBW s9, s9, s10
  LA s10, h
  LW s10, 0(s10)
  ADDW s9, s9, s10
  SUBW s8, s8, s9
  ADD a0, s8, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb3:
  ADDIW s4, s4, 3
  ADD s7, s7, zero
  ADD s6, s6, zero
  ADD s5, s5, zero
  # implict jump to bb4
bb4:
  ADD s8, s5, zero
  ADD s9, s6, zero
  ADD s10, s7, zero
  SLTI s11, s8, 10
  BNE s11, zero, bb6
  # implict jump to bb5
bb5:
  ADDI s11, zero, 2
  SUBW s11, s8, s11
  ADD s0, s10, zero
  ADD s1, s9, zero
  ADD s2, s11, zero
  ADD s3, s4, zero
  JAL zero, bb1
bb6:
  ADDIW s0, s8, 1
  ADD s1, s10, zero
  ADD s2, s9, zero
  # implict jump to bb7
bb7:
  ADD s3, s2, zero
  ADD s8, s1, zero
  XORI s9, s3, 7
  SLTIU s9, s9, 1
  BNE s9, zero, bb9
  # implict jump to bb8
bb8:
  ADDIW s9, s3, 1
  ADD s7, s8, zero
  ADD s6, s9, zero
  ADD s5, s0, zero
  JAL zero, bb4
bb9:
  ADDI s5, zero, 1
  SUBW s3, s3, s5
  ADD s5, s8, zero
  # implict jump to bb10
bb10:
  ADD s6, s5, zero
  SLTI s7, s6, 20
  BNE s7, zero, bb12
  # implict jump to bb11
bb11:
  ADDI s7, zero, 1
  SUBW s7, s6, s7
  ADD s1, s7, zero
  ADD s2, s3, zero
  JAL zero, bb7
bb12:
  ADDIW s1, s6, 3
  # implict jump to bb13
bb13:
  LA s2, e
  LW s2, 0(s2)
  ADDI s6, zero, 1
  SLT s2, s6, s2
  BNE s2, zero, bb15
  # implict jump to bb14
bb14:
  LA s2, e
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s6, e
  SW s2, 0(s6)
  ADD s5, s1, zero
  JAL zero, bb10
bb15:
  LA s2, e
  LW s2, 0(s2)
  ADDI s5, zero, 1
  SUBW s2, s2, s5
  LA s5, e
  SW s2, 0(s5)
  # implict jump to bb16
bb16:
  LA s2, f
  LW s2, 0(s2)
  ADDI s5, zero, 2
  SLT s2, s5, s2
  BNE s2, zero, bb18
  # implict jump to bb17
bb17:
  LA s2, f
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s5, f
  SW s2, 0(s5)
  JAL zero, bb13
bb18:
  LA s2, f
  LW s2, 0(s2)
  ADDI s5, zero, 2
  SUBW s2, s2, s5
  LA s5, f
  SW s2, 0(s5)
  # implict jump to bb19
bb19:
  LA s2, g
  LW s2, 0(s2)
  SLTI s2, s2, 3
  BNE s2, zero, bb21
  # implict jump to bb20
bb20:
  LA s2, g
  LW s2, 0(s2)
  ADDI s5, zero, 8
  SUBW s2, s2, s5
  LA s5, g
  SW s2, 0(s5)
  JAL zero, bb16
bb21:
  LA s2, g
  LW s2, 0(s2)
  ADDIW s2, s2, 10
  LA s5, g
  SW s2, 0(s5)
  # implict jump to bb22
bb22:
  LA s2, h
  LW s2, 0(s2)
  SLTI s2, s2, 10
  BNE s2, zero, bb24
  # implict jump to bb23
bb23:
  LA s2, h
  LW s2, 0(s2)
  ADDI s5, zero, 1
  SUBW s2, s2, s5
  LA s5, h
  SW s2, 0(s5)
  JAL zero, bb19
bb24:
  LA s2, h
  LW s2, 0(s2)
  ADDIW s2, s2, 8
  LA s5, h
  SW s2, 0(s5)
  JAL zero, bb22
EightWhile:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  ADDI s0, zero, 10
  ADDI s1, zero, 7
  ADDI s2, zero, 6
  ADDI s3, zero, 5
  # implict jump to bb26
bb26:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  ADD s7, s0, zero
  SLTI s8, s4, 20
  BNE s8, zero, bb28
  # implict jump to bb27
bb27:
  ADDW s8, s5, s7
  ADDW s8, s4, s8
  ADDW s8, s8, s6
  LA s9, e
  LW s9, 0(s9)
  ADDW s9, s9, s7
  LA s10, g
  LW s10, 0(s10)
  SUBW s9, s9, s10
  LA s10, h
  LW s10, 0(s10)
  ADDW s9, s9, s10
  SUBW s8, s8, s9
  ADD a0, s8, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb28:
  ADDIW s4, s4, 3
  ADD s7, s7, zero
  ADD s6, s6, zero
  ADD s5, s5, zero
  # implict jump to bb29
bb29:
  ADD s8, s5, zero
  ADD s9, s6, zero
  ADD s10, s7, zero
  SLTI s11, s8, 10
  BNE s11, zero, bb31
  # implict jump to bb30
bb30:
  ADDI s11, zero, 2
  SUBW s11, s8, s11
  ADD s0, s10, zero
  ADD s1, s9, zero
  ADD s2, s11, zero
  ADD s3, s4, zero
  JAL zero, bb26
bb31:
  ADDIW s0, s8, 1
  ADD s1, s10, zero
  ADD s2, s9, zero
  # implict jump to bb32
bb32:
  ADD s3, s2, zero
  ADD s8, s1, zero
  XORI s9, s3, 7
  SLTIU s9, s9, 1
  BNE s9, zero, bb34
  # implict jump to bb33
bb33:
  ADDIW s9, s3, 1
  ADD s7, s8, zero
  ADD s6, s9, zero
  ADD s5, s0, zero
  JAL zero, bb29
bb34:
  ADDI s5, zero, 1
  SUBW s3, s3, s5
  ADD s5, s8, zero
  # implict jump to bb35
bb35:
  ADD s6, s5, zero
  SLTI s7, s6, 20
  BNE s7, zero, bb37
  # implict jump to bb36
bb36:
  ADDI s7, zero, 1
  SUBW s7, s6, s7
  ADD s1, s7, zero
  ADD s2, s3, zero
  JAL zero, bb32
bb37:
  ADDIW s1, s6, 3
  # implict jump to bb38
bb38:
  LA s2, e
  LW s2, 0(s2)
  ADDI s6, zero, 1
  SLT s2, s6, s2
  BNE s2, zero, bb40
  # implict jump to bb39
bb39:
  LA s2, e
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s6, e
  SW s2, 0(s6)
  ADD s5, s1, zero
  JAL zero, bb35
bb40:
  LA s2, e
  LW s2, 0(s2)
  ADDI s5, zero, 1
  SUBW s2, s2, s5
  LA s5, e
  SW s2, 0(s5)
  # implict jump to bb41
bb41:
  LA s2, f
  LW s2, 0(s2)
  ADDI s5, zero, 2
  SLT s2, s5, s2
  BNE s2, zero, bb43
  # implict jump to bb42
bb42:
  LA s2, f
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s5, f
  SW s2, 0(s5)
  JAL zero, bb38
bb43:
  LA s2, f
  LW s2, 0(s2)
  ADDI s5, zero, 2
  SUBW s2, s2, s5
  LA s5, f
  SW s2, 0(s5)
  # implict jump to bb44
bb44:
  LA s2, g
  LW s2, 0(s2)
  SLTI s2, s2, 3
  BNE s2, zero, bb46
  # implict jump to bb45
bb45:
  LA s2, g
  LW s2, 0(s2)
  ADDI s5, zero, 8
  SUBW s2, s2, s5
  LA s5, g
  SW s2, 0(s5)
  JAL zero, bb41
bb46:
  LA s2, g
  LW s2, 0(s2)
  ADDIW s2, s2, 10
  LA s5, g
  SW s2, 0(s5)
  # implict jump to bb47
bb47:
  LA s2, h
  LW s2, 0(s2)
  SLTI s2, s2, 10
  BNE s2, zero, bb49
  # implict jump to bb48
bb48:
  LA s2, h
  LW s2, 0(s2)
  ADDI s5, zero, 1
  SUBW s2, s2, s5
  LA s5, h
  SW s2, 0(s5)
  JAL zero, bb44
bb49:
  LA s2, h
  LW s2, 0(s2)
  ADDIW s2, s2, 8
  LA s5, h
  SW s2, 0(s5)
  JAL zero, bb47
