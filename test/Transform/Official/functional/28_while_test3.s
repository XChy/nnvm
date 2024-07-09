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
  ADDI sp, sp, -144
  SD s6, 32(sp)
  SD s7, 40(sp)
  SD s5, 48(sp)
  SD s4, 56(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
  SD s10, 80(sp)
  SD ra, 88(sp)
  SD s11, 96(sp)
  SD s2, 104(sp)
  SD s3, 112(sp)
  SD s8, 120(sp)
  SD s9, 128(sp)
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
  JAL zero, bb2
bb1:
  ADD s1, s0, zero
  ADD a0, s1, zero
  LD s6, 32(sp)
  LD s7, 40(sp)
  LD s5, 48(sp)
  LD s4, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s10, 80(sp)
  LD ra, 88(sp)
  LD s11, 96(sp)
  LD s2, 104(sp)
  LD s3, 112(sp)
  LD s8, 120(sp)
  LD s9, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb2:
  ADDI s0, zero, 10
  ADDI s1, zero, 7
  ADDI s2, zero, 5
  ADDI s3, zero, 6
  JAL zero, bb3
bb3:
  ADD t4, s3, zero
  SW t4, 24(sp)
  ADD t4, s2, zero
  SW t4, 16(sp)
  ADD t4, s1, zero
  SW t4, 8(sp)
  ADD t4, s0, zero
  SW t4, 0(sp)
  LW t4, 16(sp)
  SLTI s8, t4, 20
  BNE s8, zero, bb4
  JAL zero, bb5
bb4:
  LW t4, 16(sp)
  ADDIW s8, t4, 3
  LW t4, 0(sp)
  ADD s9, t4, zero
  LW t4, 8(sp)
  ADD s10, t4, zero
  LW t4, 24(sp)
  ADD s11, t4, zero
  JAL zero, bb6
bb5:
  LW t4, 24(sp)
  LW t3, 0(sp)
  ADDW s0, t4, t3
  LW t4, 16(sp)
  ADDW s1, t4, s0
  LW t4, 8(sp)
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
  ADD s0, s2, zero
  JAL zero, bb1
bb6:
  ADD t0, s11, zero
  ADD t1, s10, zero
  ADD t2, s9, zero
  SLTI a0, t0, 10
  BNE a0, zero, bb7
  JAL zero, bb8
bb7:
  ADDIW a0, t0, 1
  ADD a1, t2, zero
  ADD a2, t1, zero
  JAL zero, bb9
bb8:
  ADDI s4, zero, 2
  SUBW s5, t0, s4
  ADD s0, t2, zero
  ADD s1, t1, zero
  ADD s2, s8, zero
  ADD s3, s5, zero
  JAL zero, bb3
bb9:
  ADD a3, a2, zero
  ADD a4, a1, zero
  XORI a5, a3, 7
  SLTIU a6, a5, 1
  BNE a6, zero, bb10
  JAL zero, bb11
bb10:
  ADDI a5, zero, 1
  SUBW a6, a3, a5
  ADD a5, a4, zero
  JAL zero, bb12
bb11:
  ADDIW s4, a3, 1
  ADD s9, a4, zero
  ADD s10, s4, zero
  ADD s11, a0, zero
  JAL zero, bb6
bb12:
  ADD a7, a5, zero
  SLTI s7, a7, 20
  BNE s7, zero, bb13
  JAL zero, bb14
bb13:
  ADDIW s7, a7, 3
  JAL zero, bb15
bb14:
  ADDI s4, zero, 1
  SUBW s5, a7, s4
  ADD a1, s5, zero
  ADD a2, a6, zero
  JAL zero, bb9
bb15:
  LA s6, e
  LW s5, 0(s6)
  ADDI s6, zero, 1
  SLT s4, s6, s5
  BNE s4, zero, bb16
  JAL zero, bb17
bb16:
  LA s4, e
  LW s5, 0(s4)
  ADDI s4, zero, 1
  SUBW s6, s5, s4
  LA s4, e
  SW s6, 0(s4)
  JAL zero, bb18
bb17:
  LA s4, e
  LW s5, 0(s4)
  ADDIW s4, s5, 1
  LA s5, e
  SW s4, 0(s5)
  ADD a5, s7, zero
  JAL zero, bb12
bb18:
  LA s4, f
  LW s5, 0(s4)
  ADDI s4, zero, 2
  SLT s6, s4, s5
  BNE s6, zero, bb19
  JAL zero, bb20
bb19:
  LA s4, f
  LW s5, 0(s4)
  ADDI s4, zero, 2
  SUBW s6, s5, s4
  LA s4, f
  SW s6, 0(s4)
  JAL zero, bb21
bb20:
  LA s4, f
  LW s5, 0(s4)
  ADDIW s4, s5, 1
  LA s5, f
  SW s4, 0(s5)
  JAL zero, bb15
bb21:
  LA s4, g
  LW s5, 0(s4)
  SLTI s4, s5, 3
  BNE s4, zero, bb22
  JAL zero, bb23
bb22:
  LA s4, g
  LW s5, 0(s4)
  ADDIW s4, s5, 10
  LA s5, g
  SW s4, 0(s5)
  JAL zero, bb24
bb23:
  LA s4, g
  LW s5, 0(s4)
  ADDI s4, zero, 8
  SUBW s6, s5, s4
  LA s4, g
  SW s6, 0(s4)
  JAL zero, bb18
bb24:
  LA s4, h
  LW s5, 0(s4)
  SLTI s4, s5, 10
  BNE s4, zero, bb25
  JAL zero, bb26
bb25:
  LA s4, h
  LW s5, 0(s4)
  ADDIW s4, s5, 8
  LA s5, h
  SW s4, 0(s5)
  JAL zero, bb24
bb26:
  LA s4, h
  LW s5, 0(s4)
  ADDI s4, zero, 1
  SUBW s6, s5, s4
  LA s4, h
  SW s6, 0(s4)
  JAL zero, bb21
EightWhile:
  ADDI sp, sp, -144
  SD s6, 32(sp)
  SD s7, 40(sp)
  SD s5, 48(sp)
  SD s4, 56(sp)
  SD s0, 64(sp)
  SD s10, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s8, 104(sp)
  SD s9, 112(sp)
  SD s11, 120(sp)
  SD ra, 128(sp)
  ADDI s0, zero, 10
  ADDI s1, zero, 7
  ADDI s2, zero, 5
  ADDI s3, zero, 6
  JAL zero, bb28
bb28:
  ADD t4, s3, zero
  SW t4, 24(sp)
  ADD t4, s2, zero
  SW t4, 16(sp)
  ADD t4, s1, zero
  SW t4, 8(sp)
  ADD t4, s0, zero
  SW t4, 0(sp)
  LW t4, 16(sp)
  SLTI s8, t4, 20
  BNE s8, zero, bb29
  JAL zero, bb30
bb29:
  LW t4, 16(sp)
  ADDIW s8, t4, 3
  LW t4, 0(sp)
  ADD s9, t4, zero
  LW t4, 8(sp)
  ADD s10, t4, zero
  LW t4, 24(sp)
  ADD s11, t4, zero
  JAL zero, bb31
bb30:
  LW t4, 24(sp)
  LW t3, 0(sp)
  ADDW s0, t4, t3
  LW t4, 16(sp)
  ADDW s1, t4, s0
  LW t4, 8(sp)
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
  LD s6, 32(sp)
  LD s7, 40(sp)
  LD s5, 48(sp)
  LD s4, 56(sp)
  LD s0, 64(sp)
  LD s10, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s8, 104(sp)
  LD s9, 112(sp)
  LD s11, 120(sp)
  LD ra, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb31:
  ADD t0, s11, zero
  ADD t1, s10, zero
  ADD t2, s9, zero
  SLTI a0, t0, 10
  BNE a0, zero, bb32
  JAL zero, bb33
bb32:
  ADDIW a0, t0, 1
  ADD a1, t2, zero
  ADD a2, t1, zero
  JAL zero, bb34
bb33:
  ADDI s4, zero, 2
  SUBW s5, t0, s4
  ADD s0, t2, zero
  ADD s1, t1, zero
  ADD s2, s8, zero
  ADD s3, s5, zero
  JAL zero, bb28
bb34:
  ADD a3, a2, zero
  ADD a4, a1, zero
  XORI a5, a3, 7
  SLTIU a6, a5, 1
  BNE a6, zero, bb35
  JAL zero, bb36
bb35:
  ADDI a5, zero, 1
  SUBW a6, a3, a5
  ADD a5, a4, zero
  JAL zero, bb37
bb36:
  ADDIW s4, a3, 1
  ADD s9, a4, zero
  ADD s10, s4, zero
  ADD s11, a0, zero
  JAL zero, bb31
bb37:
  ADD a7, a5, zero
  SLTI s7, a7, 20
  BNE s7, zero, bb38
  JAL zero, bb39
bb38:
  ADDIW s7, a7, 3
  JAL zero, bb40
bb39:
  ADDI s4, zero, 1
  SUBW s5, a7, s4
  ADD a1, s5, zero
  ADD a2, a6, zero
  JAL zero, bb34
bb40:
  LA s6, e
  LW s5, 0(s6)
  ADDI s6, zero, 1
  SLT s4, s6, s5
  BNE s4, zero, bb41
  JAL zero, bb42
bb41:
  LA s4, e
  LW s5, 0(s4)
  ADDI s4, zero, 1
  SUBW s6, s5, s4
  LA s4, e
  SW s6, 0(s4)
  JAL zero, bb43
bb42:
  LA s4, e
  LW s5, 0(s4)
  ADDIW s4, s5, 1
  LA s5, e
  SW s4, 0(s5)
  ADD a5, s7, zero
  JAL zero, bb37
bb43:
  LA s4, f
  LW s5, 0(s4)
  ADDI s4, zero, 2
  SLT s6, s4, s5
  BNE s6, zero, bb44
  JAL zero, bb45
bb44:
  LA s4, f
  LW s5, 0(s4)
  ADDI s4, zero, 2
  SUBW s6, s5, s4
  LA s4, f
  SW s6, 0(s4)
  JAL zero, bb46
bb45:
  LA s4, f
  LW s5, 0(s4)
  ADDIW s4, s5, 1
  LA s5, f
  SW s4, 0(s5)
  JAL zero, bb40
bb46:
  LA s4, g
  LW s5, 0(s4)
  SLTI s4, s5, 3
  BNE s4, zero, bb47
  JAL zero, bb48
bb47:
  LA s4, g
  LW s5, 0(s4)
  ADDIW s4, s5, 10
  LA s5, g
  SW s4, 0(s5)
  JAL zero, bb49
bb48:
  LA s4, g
  LW s5, 0(s4)
  ADDI s4, zero, 8
  SUBW s6, s5, s4
  LA s4, g
  SW s6, 0(s4)
  JAL zero, bb43
bb49:
  LA s4, h
  LW s5, 0(s4)
  SLTI s4, s5, 10
  BNE s4, zero, bb50
  JAL zero, bb51
bb50:
  LA s4, h
  LW s5, 0(s4)
  ADDIW s4, s5, 8
  LA s5, h
  SW s4, 0(s5)
  JAL zero, bb49
bb51:
  LA s4, h
  LW s5, 0(s4)
  ADDI s4, zero, 1
  SUBW s6, s5, s4
  LA s4, h
  SW s6, 0(s4)
  JAL zero, bb46
