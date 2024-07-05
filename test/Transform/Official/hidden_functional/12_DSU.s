.global same
.global init
.global main
.global find
.global quick_read
.section .bss

fa:
.space 400020

.section .data
m:
.word 0x00000000

n:
.word 0x00000000
.section .text
same:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  ADD a0, s1, zero
  CALL find
  ADD s1, a0, zero
  XOR s2, s0, s1
  SLTIU s0, s2, 1
  BNE s0, zero, bb1
  JAL zero, bb2
bb1:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
init:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADDI s0, zero, 1
  JAL zero, bb4
bb4:
  LA s1, n
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s2, s1, 1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, fa
  ADD s3, s1, s2
  SW s0, 0(s3)
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb4
bb6:
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -128
  SD s4, 16(sp)
  SD s11, 24(sp)
  SD s10, 32(sp)
  SD s9, 40(sp)
  SD s1, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s5, 88(sp)
  SD s0, 96(sp)
  SD ra, 104(sp)
  SD s8, 112(sp)
  CALL quick_read
  ADD s1, a0, zero
  LA s2, n
  SW s1, 0(s2)
  CALL quick_read
  ADD s1, a0, zero
  LA s2, m
  SW s1, 0(s2)
  CALL init
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADD t4, zero, zero
  SW t4, 8(sp)
  ADD s5, zero, zero
  JAL zero, bb8
bb8:
  LA s6, m
  LW s7, 0(s6)
  XOR s6, s7, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb9
  JAL zero, bb10
bb9:
  CALL getch
  ADD s6, a0, zero
  ADD t4, s6, zero
  SW t4, 0(sp)
  JAL zero, bb11
bb10:
  ADD a0, zero, zero
  LD s4, 16(sp)
  LD s11, 24(sp)
  LD s10, 32(sp)
  LD s9, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s5, 88(sp)
  LD s0, 96(sp)
  LD ra, 104(sp)
  LD s8, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb11:
  LW t4, 0(sp)
  XORI s6, t4, 81
  SLTU s8, zero, s6
  BNE s8, zero, bb14
  JAL zero, bb15
bb12:
  CALL getch
  ADD s6, a0, zero
  ADD t4, s6, zero
  SW t4, 0(sp)
  JAL zero, bb11
bb13:
  LW t4, 0(sp)
  XORI s6, t4, 81
  SLTIU s8, s6, 1
  BNE s8, zero, bb17
  JAL zero, bb19
bb14:
  LW t4, 0(sp)
  XORI s6, t4, 85
  SLTU s8, zero, s6
  ADD s0, s8, zero
  JAL zero, bb16
bb15:
  ADD s0, zero, zero
  JAL zero, bb16
bb16:
  XOR s6, s0, zero
  SLTU s8, zero, s6
  BNE s8, zero, bb12
  JAL zero, bb13
bb17:
  CALL quick_read
  ADD s6, a0, zero
  CALL quick_read
  ADD s8, a0, zero
  ADD a0, s6, zero
  ADD a1, s8, zero
  CALL same
  ADD s9, a0, zero
  ADD a0, s9, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD s9, s1, zero
  ADD s10, s2, zero
  ADD s11, s8, zero
  ADD s8, s6, zero
  JAL zero, bb18
bb18:
  LA s6, m
  LW s7, 0(s6)
  ADDI s6, zero, 1
  SUBW s4, s7, s6
  LA s6, m
  SW s4, 0(s6)
  ADD s1, s9, zero
  ADD s2, s10, zero
  ADD s3, s11, zero
  ADD t4, s8, zero
  SW t4, 8(sp)
  ADD s5, s0, zero
  JAL zero, bb8
bb19:
  CALL quick_read
  ADD s4, a0, zero
  ADD a0, s4, zero
  CALL find
  ADD s4, a0, zero
  CALL quick_read
  ADD s5, a0, zero
  ADD a0, s5, zero
  CALL find
  ADD s5, a0, zero
  ADDI s6, zero, 4
  MULW s7, s4, s6
  LA s6, fa
  ADD t0, s6, s7
  SW s5, 0(t0)
  ADD s9, s5, zero
  ADD s10, s4, zero
  ADD s11, s3, zero
  LW t4, 8(sp)
  ADD s8, t4, zero
  JAL zero, bb18
find:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, fa
  ADD s3, s1, s2
  LW s1, 0(s3)
  XOR s2, s1, s0
  SLTIU s1, s2, 1
  BNE s1, zero, bb21
  JAL zero, bb23
bb21:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb22:
bb23:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, fa
  ADD s3, s1, s2
  LW s1, 0(s3)
  ADD a0, s1, zero
  CALL find
  ADD s1, a0, zero
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, fa
  ADD s2, s0, s3
  SW s1, 0(s2)
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
quick_read:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s8, 8(sp)
  SD s4, 16(sp)
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD s6, 40(sp)
  SD s1, 48(sp)
  SD s7, 56(sp)
  SD s5, 64(sp)
  SD s0, 72(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb25
bb25:
  SLTI s0, s2, 48
  BNE s0, zero, bb28
  JAL zero, bb29
bb26:
  XORI s3, s2, 45
  SLTIU s4, s3, 1
  BNE s4, zero, bb31
  JAL zero, bb42
bb27:
  ADD s3, s2, zero
  ADD s4, zero, zero
  JAL zero, bb33
bb28:
  ADDI s0, zero, 1
  JAL zero, bb30
bb29:
  ADDI s3, zero, 57
  SLT s4, s3, s2
  XOR s3, s4, zero
  SLTU s4, zero, s3
  ADD s0, s4, zero
  JAL zero, bb30
bb30:
  XOR s3, s0, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb26
  JAL zero, bb27
bb31:
  ADDI s3, zero, 1
  JAL zero, bb32
bb32:
  CALL getch
  ADD s4, a0, zero
  ADD s1, s3, zero
  ADD s2, s4, zero
  JAL zero, bb25
bb33:
  SLTI s5, s3, 48
  XORI s6, s5, 1
  BNE s6, zero, bb36
  JAL zero, bb37
bb34:
  ADDI s5, zero, 10
  MULW s7, s4, s5
  ADDW s5, s7, s3
  ADDI s7, zero, 48
  SUBW s8, s5, s7
  CALL getch
  ADD s5, a0, zero
  ADD s3, s5, zero
  ADD s4, s8, zero
  JAL zero, bb33
bb35:
  XOR s5, s1, zero
  SLTU s7, zero, s5
  BNE s7, zero, bb39
  JAL zero, bb41
bb36:
  ADDI s5, zero, 57
  SLT s6, s5, s3
  XORI s5, s6, 1
  ADD s6, s5, zero
  JAL zero, bb38
bb37:
  ADD s6, zero, zero
  JAL zero, bb38
bb38:
  XOR s5, s6, zero
  SLTU s7, zero, s5
  BNE s7, zero, bb34
  JAL zero, bb35
bb39:
  SUB s5, zero, s4
  ADD a0, s5, zero
  LD ra, 0(sp)
  LD s8, 8(sp)
  LD s4, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s6, 40(sp)
  LD s1, 48(sp)
  LD s7, 56(sp)
  LD s5, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb40:
bb41:
  ADD a0, s4, zero
  LD ra, 0(sp)
  LD s8, 8(sp)
  LD s4, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s6, 40(sp)
  LD s1, 48(sp)
  LD s7, 56(sp)
  LD s5, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb42:
  ADD s3, s1, zero
  JAL zero, bb32
