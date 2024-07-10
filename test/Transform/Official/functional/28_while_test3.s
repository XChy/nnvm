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
  ADDI sp, sp, -128
  SD s7, 16(sp)
  SD s6, 24(sp)
  SD s4, 32(sp)
  SD s0, 40(sp)
  SD s5, 48(sp)
  SD s1, 56(sp)
  SD s10, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  SD s11, 104(sp)
  SD ra, 112(sp)
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
  ADD t4, s3, zero
  SW t4, 8(sp)
  ADD s5, s2, zero
  ADD t4, s1, zero
  SW t4, 4(sp)
  ADD t4, s0, zero
  SW t4, 0(sp)
  LW t4, 8(sp)
  SLTI s8, t4, 20
  BNE s8, zero, bb3
  # implict jump to bb2
bb2:
  LW t4, 0(sp)
  ADDW s0, s5, t4
  LW t4, 8(sp)
  ADDW s1, t4, s0
  LW t4, 4(sp)
  ADDW s0, s1, t4
  LA s1, e
  LW s2, 0(s1)
  LW t4, 0(sp)
  ADDW s1, s2, t4
  LA s2, g
  LW s3, 0(s2)
  SUBW s2, s1, s3
  LA s1, h
  LW s3, 0(s1)
  ADDW s1, s2, s3
  SUBW s2, s0, s1
  ADD a0, s2, zero
  LD s7, 16(sp)
  LD s6, 24(sp)
  LD s4, 32(sp)
  LD s0, 40(sp)
  LD s5, 48(sp)
  LD s1, 56(sp)
  LD s10, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s11, 104(sp)
  LD ra, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb3:
  LW t4, 8(sp)
  ADDIW s8, t4, 3
  LW t4, 0(sp)
  ADD s9, t4, zero
  LW t4, 4(sp)
  ADD s10, t4, zero
  ADD s11, s5, zero
  # implict jump to bb4
bb4:
  ADD t0, s11, zero
  ADD t1, s10, zero
  ADD t2, s9, zero
  SLTI a0, t0, 10
  BNE a0, zero, bb6
  # implict jump to bb5
bb5:
  ADDI s4, zero, 2
  SUBW s6, t0, s4
  ADD s0, t2, zero
  ADD s1, t1, zero
  ADD s2, s6, zero
  ADD s3, s8, zero
  JAL zero, bb1
bb6:
  ADDIW a0, t0, 1
  ADD a1, t2, zero
  ADD a2, t1, zero
  # implict jump to bb7
bb7:
  ADD a3, a2, zero
  ADD a4, a1, zero
  XORI a5, a3, 7
  SLTIU a6, a5, 1
  BNE a6, zero, bb9
  # implict jump to bb8
bb8:
  ADDIW s4, a3, 1
  ADD s9, a4, zero
  ADD s10, s4, zero
  ADD s11, a0, zero
  JAL zero, bb4
bb9:
  ADDI a5, zero, 1
  SUBW a6, a3, a5
  ADD a5, a4, zero
  # implict jump to bb10
bb10:
  ADD a7, a5, zero
  SLTI t6, a7, 20
  BNE t6, zero, bb12
  # implict jump to bb11
bb11:
  ADDI s4, zero, 1
  SUBW s6, a7, s4
  ADD a1, s6, zero
  ADD a2, a6, zero
  JAL zero, bb7
bb12:
  ADDIW t6, a7, 3
  # implict jump to bb13
bb13:
  LA s7, e
  LW s6, 0(s7)
  ADDI s7, zero, 1
  SLT s4, s7, s6
  BNE s4, zero, bb15
  # implict jump to bb14
bb14:
  LA s4, e
  LW s6, 0(s4)
  ADDIW s4, s6, 1
  LA s6, e
  SW s4, 0(s6)
  ADD a5, t6, zero
  JAL zero, bb10
bb15:
  LA s4, e
  LW s6, 0(s4)
  ADDI s4, zero, 1
  SUBW s7, s6, s4
  LA s4, e
  SW s7, 0(s4)
  # implict jump to bb16
bb16:
  LA s4, f
  LW s6, 0(s4)
  ADDI s4, zero, 2
  SLT s7, s4, s6
  BNE s7, zero, bb18
  # implict jump to bb17
bb17:
  LA s4, f
  LW s6, 0(s4)
  ADDIW s4, s6, 1
  LA s6, f
  SW s4, 0(s6)
  JAL zero, bb13
bb18:
  LA s4, f
  LW s6, 0(s4)
  ADDI s4, zero, 2
  SUBW s7, s6, s4
  LA s4, f
  SW s7, 0(s4)
  # implict jump to bb19
bb19:
  LA s4, g
  LW s6, 0(s4)
  SLTI s4, s6, 3
  BNE s4, zero, bb21
  # implict jump to bb20
bb20:
  LA s4, g
  LW s6, 0(s4)
  ADDI s4, zero, 8
  SUBW s7, s6, s4
  LA s4, g
  SW s7, 0(s4)
  JAL zero, bb16
bb21:
  LA s4, g
  LW s6, 0(s4)
  ADDIW s4, s6, 10
  LA s6, g
  SW s4, 0(s6)
  # implict jump to bb22
bb22:
  LA s4, h
  LW s6, 0(s4)
  SLTI s4, s6, 10
  BNE s4, zero, bb24
  # implict jump to bb23
bb23:
  LA s4, h
  LW s6, 0(s4)
  ADDI s4, zero, 1
  SUBW s7, s6, s4
  LA s4, h
  SW s7, 0(s4)
  JAL zero, bb19
bb24:
  LA s4, h
  LW s6, 0(s4)
  ADDIW s4, s6, 8
  LA s6, h
  SW s4, 0(s6)
  JAL zero, bb22
EightWhile:
  ADDI sp, sp, -128
  SD s7, 16(sp)
  SD s6, 24(sp)
  SD s4, 32(sp)
  SD s0, 40(sp)
  SD s5, 48(sp)
  SD s10, 56(sp)
  SD s1, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  SD s11, 104(sp)
  SD ra, 112(sp)
  ADDI s0, zero, 10
  ADDI s1, zero, 7
  ADDI s2, zero, 6
  ADDI s3, zero, 5
  # implict jump to bb26
bb26:
  ADD t4, s3, zero
  SW t4, 8(sp)
  ADD s5, s2, zero
  ADD t4, s1, zero
  SW t4, 4(sp)
  ADD t4, s0, zero
  SW t4, 0(sp)
  LW t4, 8(sp)
  SLTI s8, t4, 20
  BNE s8, zero, bb28
  # implict jump to bb27
bb27:
  LW t4, 0(sp)
  ADDW s0, s5, t4
  LW t4, 8(sp)
  ADDW s1, t4, s0
  LW t4, 4(sp)
  ADDW s0, s1, t4
  LA s1, e
  LW s2, 0(s1)
  LW t4, 0(sp)
  ADDW s1, s2, t4
  LA s2, g
  LW s3, 0(s2)
  SUBW s2, s1, s3
  LA s1, h
  LW s3, 0(s1)
  ADDW s1, s2, s3
  SUBW s2, s0, s1
  ADD a0, s2, zero
  LD s7, 16(sp)
  LD s6, 24(sp)
  LD s4, 32(sp)
  LD s0, 40(sp)
  LD s5, 48(sp)
  LD s10, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s11, 104(sp)
  LD ra, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb28:
  LW t4, 8(sp)
  ADDIW s8, t4, 3
  LW t4, 0(sp)
  ADD s9, t4, zero
  LW t4, 4(sp)
  ADD s10, t4, zero
  ADD s11, s5, zero
  # implict jump to bb29
bb29:
  ADD t0, s11, zero
  ADD t1, s10, zero
  ADD t2, s9, zero
  SLTI a0, t0, 10
  BNE a0, zero, bb31
  # implict jump to bb30
bb30:
  ADDI s4, zero, 2
  SUBW s6, t0, s4
  ADD s0, t2, zero
  ADD s1, t1, zero
  ADD s2, s6, zero
  ADD s3, s8, zero
  JAL zero, bb26
bb31:
  ADDIW a0, t0, 1
  ADD a1, t2, zero
  ADD a2, t1, zero
  # implict jump to bb32
bb32:
  ADD a3, a2, zero
  ADD a4, a1, zero
  XORI a5, a3, 7
  SLTIU a6, a5, 1
  BNE a6, zero, bb34
  # implict jump to bb33
bb33:
  ADDIW s4, a3, 1
  ADD s9, a4, zero
  ADD s10, s4, zero
  ADD s11, a0, zero
  JAL zero, bb29
bb34:
  ADDI a5, zero, 1
  SUBW a6, a3, a5
  ADD a5, a4, zero
  # implict jump to bb35
bb35:
  ADD a7, a5, zero
  SLTI t6, a7, 20
  BNE t6, zero, bb37
  # implict jump to bb36
bb36:
  ADDI s4, zero, 1
  SUBW s6, a7, s4
  ADD a1, s6, zero
  ADD a2, a6, zero
  JAL zero, bb32
bb37:
  ADDIW t6, a7, 3
  # implict jump to bb38
bb38:
  LA s7, e
  LW s6, 0(s7)
  ADDI s7, zero, 1
  SLT s4, s7, s6
  BNE s4, zero, bb40
  # implict jump to bb39
bb39:
  LA s4, e
  LW s6, 0(s4)
  ADDIW s4, s6, 1
  LA s6, e
  SW s4, 0(s6)
  ADD a5, t6, zero
  JAL zero, bb35
bb40:
  LA s4, e
  LW s6, 0(s4)
  ADDI s4, zero, 1
  SUBW s7, s6, s4
  LA s4, e
  SW s7, 0(s4)
  # implict jump to bb41
bb41:
  LA s4, f
  LW s6, 0(s4)
  ADDI s4, zero, 2
  SLT s7, s4, s6
  BNE s7, zero, bb43
  # implict jump to bb42
bb42:
  LA s4, f
  LW s6, 0(s4)
  ADDIW s4, s6, 1
  LA s6, f
  SW s4, 0(s6)
  JAL zero, bb38
bb43:
  LA s4, f
  LW s6, 0(s4)
  ADDI s4, zero, 2
  SUBW s7, s6, s4
  LA s4, f
  SW s7, 0(s4)
  # implict jump to bb44
bb44:
  LA s4, g
  LW s6, 0(s4)
  SLTI s4, s6, 3
  BNE s4, zero, bb46
  # implict jump to bb45
bb45:
  LA s4, g
  LW s6, 0(s4)
  ADDI s4, zero, 8
  SUBW s7, s6, s4
  LA s4, g
  SW s7, 0(s4)
  JAL zero, bb41
bb46:
  LA s4, g
  LW s6, 0(s4)
  ADDIW s4, s6, 10
  LA s6, g
  SW s4, 0(s6)
  # implict jump to bb47
bb47:
  LA s4, h
  LW s6, 0(s4)
  SLTI s4, s6, 10
  BNE s4, zero, bb49
  # implict jump to bb48
bb48:
  LA s4, h
  LW s6, 0(s4)
  ADDI s4, zero, 1
  SUBW s7, s6, s4
  LA s4, h
  SW s7, 0(s4)
  JAL zero, bb44
bb49:
  LA s4, h
  LW s6, 0(s4)
  ADDIW s4, s6, 8
  LA s6, h
  SW s4, 0(s6)
  JAL zero, bb47
