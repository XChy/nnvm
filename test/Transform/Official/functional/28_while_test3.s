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
  SD s6, 16(sp)
  SD s7, 24(sp)
  SD s5, 32(sp)
  SD s4, 40(sp)
  SD s0, 48(sp)
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
  JAL zero, bb1
bb1:
  ADD t4, s3, zero
  SW t4, 8(sp)
  ADD t4, s2, zero
  SW t4, 12(sp)
  ADD t4, s1, zero
  SW t4, 4(sp)
  ADD t4, s0, zero
  SW t4, 0(sp)
  LW t4, 8(sp)
  SLTI s8, t4, 20
  BNE s8, zero, bb2
  JAL zero, bb3
bb2:
  LW t4, 8(sp)
  ADDIW s8, t4, 3
  LW t4, 0(sp)
  ADD s9, t4, zero
  LW t4, 4(sp)
  ADD s10, t4, zero
  LW t4, 12(sp)
  ADD s11, t4, zero
  JAL zero, bb4
bb3:
  LW t4, 12(sp)
  LW t3, 0(sp)
  ADDW s0, t4, t3
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
  LD s6, 16(sp)
  LD s7, 24(sp)
  LD s5, 32(sp)
  LD s4, 40(sp)
  LD s0, 48(sp)
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
bb4:
  ADD t0, s11, zero
  ADD t1, s10, zero
  ADD t2, s9, zero
  SLTI a0, t0, 10
  BNE a0, zero, bb5
  JAL zero, bb6
bb5:
  ADDIW a0, t0, 1
  ADD a1, t2, zero
  ADD a2, t1, zero
  JAL zero, bb7
bb6:
  ADDI s4, zero, 2
  SUBW s5, t0, s4
  ADD s0, t2, zero
  ADD s1, t1, zero
  ADD s2, s5, zero
  ADD s3, s8, zero
  JAL zero, bb1
bb7:
  ADD a3, a2, zero
  ADD a4, a1, zero
  XORI a5, a3, 7
  SLTIU a6, a5, 1
  BNE a6, zero, bb8
  JAL zero, bb9
bb8:
  ADDI a5, zero, 1
  SUBW a6, a3, a5
  ADD a5, a4, zero
  JAL zero, bb10
bb9:
  ADDIW s4, a3, 1
  ADD s9, a4, zero
  ADD s10, s4, zero
  ADD s11, a0, zero
  JAL zero, bb4
bb10:
  ADD a7, a5, zero
  SLTI s7, a7, 20
  BNE s7, zero, bb11
  JAL zero, bb12
bb11:
  ADDIW s7, a7, 3
  JAL zero, bb13
bb12:
  ADDI s4, zero, 1
  SUBW s5, a7, s4
  ADD a1, s5, zero
  ADD a2, a6, zero
  JAL zero, bb7
bb13:
  LA s6, e
  LW s4, 0(s6)
  ADDI s6, zero, 1
  SLT s5, s6, s4
  BNE s5, zero, bb14
  JAL zero, bb15
bb14:
  LA s4, e
  LW s5, 0(s4)
  ADDI s4, zero, 1
  SUBW s6, s5, s4
  LA s4, e
  SW s6, 0(s4)
  JAL zero, bb16
bb15:
  LA s4, e
  LW s5, 0(s4)
  ADDIW s4, s5, 1
  LA s5, e
  SW s4, 0(s5)
  ADD a5, s7, zero
  JAL zero, bb10
bb16:
  LA s4, f
  LW s5, 0(s4)
  ADDI s4, zero, 2
  SLT s6, s4, s5
  BNE s6, zero, bb17
  JAL zero, bb18
bb17:
  LA s4, f
  LW s5, 0(s4)
  ADDI s4, zero, 2
  SUBW s6, s5, s4
  LA s4, f
  SW s6, 0(s4)
  JAL zero, bb19
bb18:
  LA s4, f
  LW s5, 0(s4)
  ADDIW s4, s5, 1
  LA s5, f
  SW s4, 0(s5)
  JAL zero, bb13
bb19:
  LA s4, g
  LW s5, 0(s4)
  SLTI s4, s5, 3
  BNE s4, zero, bb20
  JAL zero, bb21
bb20:
  LA s4, g
  LW s5, 0(s4)
  ADDIW s4, s5, 10
  LA s5, g
  SW s4, 0(s5)
  JAL zero, bb22
bb21:
  LA s4, g
  LW s5, 0(s4)
  ADDI s4, zero, 8
  SUBW s6, s5, s4
  LA s4, g
  SW s6, 0(s4)
  JAL zero, bb16
bb22:
  LA s4, h
  LW s5, 0(s4)
  SLTI s4, s5, 10
  BNE s4, zero, bb23
  JAL zero, bb24
bb23:
  LA s4, h
  LW s5, 0(s4)
  ADDIW s4, s5, 8
  LA s5, h
  SW s4, 0(s5)
  JAL zero, bb22
bb24:
  LA s4, h
  LW s5, 0(s4)
  ADDI s4, zero, 1
  SUBW s6, s5, s4
  LA s4, h
  SW s6, 0(s4)
  JAL zero, bb19
EightWhile:
  ADDI sp, sp, -128
  SD s6, 16(sp)
  SD s7, 24(sp)
  SD s5, 32(sp)
  SD s4, 40(sp)
  SD s0, 48(sp)
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
  JAL zero, bb26
bb26:
  ADD t4, s3, zero
  SW t4, 8(sp)
  ADD t4, s2, zero
  SW t4, 12(sp)
  ADD t4, s1, zero
  SW t4, 4(sp)
  ADD t4, s0, zero
  SW t4, 0(sp)
  LW t4, 8(sp)
  SLTI s8, t4, 20
  BNE s8, zero, bb27
  JAL zero, bb28
bb27:
  LW t4, 8(sp)
  ADDIW s8, t4, 3
  LW t4, 0(sp)
  ADD s9, t4, zero
  LW t4, 4(sp)
  ADD s10, t4, zero
  LW t4, 12(sp)
  ADD s11, t4, zero
  JAL zero, bb29
bb28:
  LW t4, 12(sp)
  LW t3, 0(sp)
  ADDW s0, t4, t3
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
  LD s6, 16(sp)
  LD s7, 24(sp)
  LD s5, 32(sp)
  LD s4, 40(sp)
  LD s0, 48(sp)
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
bb29:
  ADD t0, s11, zero
  ADD t1, s10, zero
  ADD t2, s9, zero
  SLTI a0, t0, 10
  BNE a0, zero, bb30
  JAL zero, bb31
bb30:
  ADDIW a0, t0, 1
  ADD a1, t2, zero
  ADD a2, t1, zero
  JAL zero, bb32
bb31:
  ADDI s4, zero, 2
  SUBW s5, t0, s4
  ADD s0, t2, zero
  ADD s1, t1, zero
  ADD s2, s5, zero
  ADD s3, s8, zero
  JAL zero, bb26
bb32:
  ADD a3, a2, zero
  ADD a4, a1, zero
  XORI a5, a3, 7
  SLTIU a6, a5, 1
  BNE a6, zero, bb33
  JAL zero, bb34
bb33:
  ADDI a5, zero, 1
  SUBW a6, a3, a5
  ADD a5, a4, zero
  JAL zero, bb35
bb34:
  ADDIW s4, a3, 1
  ADD s9, a4, zero
  ADD s10, s4, zero
  ADD s11, a0, zero
  JAL zero, bb29
bb35:
  ADD a7, a5, zero
  SLTI s7, a7, 20
  BNE s7, zero, bb36
  JAL zero, bb37
bb36:
  ADDIW s7, a7, 3
  JAL zero, bb38
bb37:
  ADDI s4, zero, 1
  SUBW s5, a7, s4
  ADD a1, s5, zero
  ADD a2, a6, zero
  JAL zero, bb32
bb38:
  LA s6, e
  LW s4, 0(s6)
  ADDI s6, zero, 1
  SLT s5, s6, s4
  BNE s5, zero, bb39
  JAL zero, bb40
bb39:
  LA s4, e
  LW s5, 0(s4)
  ADDI s4, zero, 1
  SUBW s6, s5, s4
  LA s4, e
  SW s6, 0(s4)
  JAL zero, bb41
bb40:
  LA s4, e
  LW s5, 0(s4)
  ADDIW s4, s5, 1
  LA s5, e
  SW s4, 0(s5)
  ADD a5, s7, zero
  JAL zero, bb35
bb41:
  LA s4, f
  LW s5, 0(s4)
  ADDI s4, zero, 2
  SLT s6, s4, s5
  BNE s6, zero, bb42
  JAL zero, bb43
bb42:
  LA s4, f
  LW s5, 0(s4)
  ADDI s4, zero, 2
  SUBW s6, s5, s4
  LA s4, f
  SW s6, 0(s4)
  JAL zero, bb44
bb43:
  LA s4, f
  LW s5, 0(s4)
  ADDIW s4, s5, 1
  LA s5, f
  SW s4, 0(s5)
  JAL zero, bb38
bb44:
  LA s4, g
  LW s5, 0(s4)
  SLTI s4, s5, 3
  BNE s4, zero, bb45
  JAL zero, bb46
bb45:
  LA s4, g
  LW s5, 0(s4)
  ADDIW s4, s5, 10
  LA s5, g
  SW s4, 0(s5)
  JAL zero, bb47
bb46:
  LA s4, g
  LW s5, 0(s4)
  ADDI s4, zero, 8
  SUBW s6, s5, s4
  LA s4, g
  SW s6, 0(s4)
  JAL zero, bb41
bb47:
  LA s4, h
  LW s5, 0(s4)
  SLTI s4, s5, 10
  BNE s4, zero, bb48
  JAL zero, bb49
bb48:
  LA s4, h
  LW s5, 0(s4)
  ADDIW s4, s5, 8
  LA s5, h
  SW s4, 0(s5)
  JAL zero, bb47
bb49:
  LA s4, h
  LW s5, 0(s4)
  ADDI s4, zero, 1
  SUBW s6, s5, s4
  LA s4, h
  SW s6, 0(s4)
  JAL zero, bb44
