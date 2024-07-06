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
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADDI s0, zero, 1
  JAL zero, bb4
bb4:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, fa
  ADD s4, s2, s3
  SW s1, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb4
bb6:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -176
  SD s7, 72(sp)
  SD s6, 80(sp)
  SD s4, 88(sp)
  SD s5, 96(sp)
  SD s0, 104(sp)
  SD s10, 112(sp)
  SD s1, 120(sp)
  SD s2, 128(sp)
  SD s3, 136(sp)
  SD s8, 144(sp)
  SD s9, 152(sp)
  SD ra, 160(sp)
  SD s11, 168(sp)
  CALL quick_read
  ADD s0, a0, zero
  LA s1, n
  SW s0, 0(s1)
  CALL quick_read
  ADD s0, a0, zero
  LA s1, m
  SW s0, 0(s1)
  CALL init
  ADD s0, zero, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  JAL zero, bb8
bb8:
  ADD t4, s3, zero
  SW t4, 32(sp)
  ADD t4, s2, zero
  SW t4, 24(sp)
  ADD t4, s1, zero
  SW t4, 16(sp)
  ADD t4, s0, zero
  SW t4, 8(sp)
  LA s8, m
  LW s9, 0(s8)
  XOR s8, s9, zero
  SLTU s9, zero, s8
  BNE s9, zero, bb9
  JAL zero, bb10
bb9:
  CALL getch
  ADD s8, a0, zero
  ADD s9, s8, zero
  JAL zero, bb11
bb10:
  ADD a0, zero, zero
  LD s7, 72(sp)
  LD s6, 80(sp)
  LD s4, 88(sp)
  LD s5, 96(sp)
  LD s0, 104(sp)
  LD s10, 112(sp)
  LD s1, 120(sp)
  LD s2, 128(sp)
  LD s3, 136(sp)
  LD s8, 144(sp)
  LD s9, 152(sp)
  LD ra, 160(sp)
  LD s11, 168(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb11:
  ADD t4, s9, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  XORI s10, t4, 81
  SLTU s11, zero, s10
  BNE s11, zero, bb14
  JAL zero, bb15
bb12:
  CALL getch
  ADD s8, a0, zero
  ADD s9, s8, zero
  JAL zero, bb11
bb13:
  LW t4, 0(sp)
  XORI s8, t4, 81
  SLTIU s9, s8, 1
  BNE s9, zero, bb17
  JAL zero, bb19
bb14:
  LW t4, 0(sp)
  XORI s10, t4, 85
  SLTU s11, zero, s10
  ADD t4, s11, zero
  SB t4, 40(sp)
  JAL zero, bb16
bb15:
  ADD t4, zero, zero
  SB t4, 40(sp)
  JAL zero, bb16
bb16:
  LB t4, 40(sp)
  ADD s11, t4, zero
  XOR s8, s11, zero
  SLTU s11, zero, s8
  BNE s11, zero, bb12
  JAL zero, bb13
bb17:
  CALL quick_read
  ADD s8, a0, zero
  CALL quick_read
  ADD s9, a0, zero
  ADD a0, s8, zero
  ADD a1, s9, zero
  CALL same
  ADD s11, a0, zero
  ADD a0, s11, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t4, 8(sp)
  ADD s11, t4, zero
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  ADD t4, s9, zero
  SW t4, 56(sp)
  ADD t4, s8, zero
  SW t4, 48(sp)
  JAL zero, bb18
bb18:
  LW t4, 48(sp)
  ADD s8, t4, zero
  LW t4, 56(sp)
  ADD s5, t4, zero
  LW t4, 64(sp)
  ADD s4, t4, zero
  ADD s10, s11, zero
  LA s9, m
  LW s6, 0(s9)
  ADDI s9, zero, 1
  SUBW s7, s6, s9
  LA s6, m
  SW s7, 0(s6)
  ADD s0, s10, zero
  ADD s1, s4, zero
  ADD s2, s5, zero
  ADD s3, s8, zero
  JAL zero, bb8
bb19:
  CALL quick_read
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  CALL quick_read
  ADD s1, a0, zero
  ADD a0, s1, zero
  CALL find
  ADD s1, a0, zero
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, fa
  ADD s4, s2, s3
  SW s1, 0(s4)
  ADD s11, s1, zero
  ADD t4, s0, zero
  SW t4, 64(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
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
  JAL zero, bb22
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
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s7, 24(sp)
  SD s10, 32(sp)
  SD s1, 40(sp)
  SD s6, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb24
bb24:
  ADD s0, s2, zero
  ADD s3, s1, zero
  SLTI s4, s0, 48
  BNE s4, zero, bb27
  JAL zero, bb28
bb25:
  XORI s5, s0, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb30
  JAL zero, bb40
bb26:
  ADD s1, s0, zero
  ADD s2, zero, zero
  JAL zero, bb32
bb27:
  ADDI s4, zero, 1
  JAL zero, bb29
bb28:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XOR s1, s2, zero
  SLTU s2, zero, s1
  ADD s4, s2, zero
  JAL zero, bb29
bb29:
  ADD s5, s4, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb25
  JAL zero, bb26
bb30:
  ADDI s5, zero, 1
  JAL zero, bb31
bb31:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb24
bb32:
  ADD s5, s2, zero
  ADD s6, s1, zero
  SLTI s7, s6, 48
  XORI s8, s7, 1
  BNE s8, zero, bb35
  JAL zero, bb36
bb33:
  ADDI s7, zero, 10
  MULW s9, s5, s7
  ADDW s7, s9, s6
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s7, zero
  ADD s2, s10, zero
  JAL zero, bb32
bb34:
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb38
  JAL zero, bb39
bb35:
  ADDI s7, zero, 57
  SLT s8, s7, s6
  XORI s7, s8, 1
  ADD s8, s7, zero
  JAL zero, bb37
bb36:
  ADD s8, zero, zero
  JAL zero, bb37
bb37:
  ADD s7, s8, zero
  XOR s9, s7, zero
  SLTU s7, zero, s9
  BNE s7, zero, bb33
  JAL zero, bb34
bb38:
  SUB s1, zero, s5
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s10, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb39:
  ADD a0, s5, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s10, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb40:
  ADD s5, s3, zero
  JAL zero, bb31
