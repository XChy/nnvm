.global sortB
.global sortC
.global main
.global sortA
.global quick_read
.section .bss
c:
.space 400020
b:
.space 400020
a:
.space 400020
x:
.space 400020
cnt:
.space 1600080


.section .data





maxn:
.word 0x000186a5
n:
.word 0x00000000
.section .text
sortB:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s0, 16(sp)
  SD s5, 24(sp)
  SD s7, 32(sp)
  SD s1, 40(sp)
  SD s6, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD ra, 96(sp)
  ADD s0, a0, zero
  ADDI s1, zero, -100
  ADD s2, zero, zero
  JAL zero, bb1
bb1:
  ADD s3, s2, zero
  ADD s4, s1, zero
  LA s5, n
  LW s6, 0(s5)
  SLT s5, s3, s6
  BNE s5, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s5, zero, 4
  MULW s6, s3, s5
  ADD s5, s0, s6
  LW s6, 0(s5)
  ADDI s7, zero, 4
  MULW s8, s6, s7
  LA s6, cnt
  ADD s7, s6, s8
  LW s6, 0(s5)
  ADDI s8, zero, 4
  MULW s9, s6, s8
  LA s6, cnt
  ADD s8, s6, s9
  LW s6, 0(s8)
  ADDIW s8, s6, 1
  SW s8, 0(s7)
  LW s6, 0(s5)
  SLT s7, s4, s6
  BNE s7, zero, bb4
  JAL zero, bb12
bb3:
  ADD s1, zero, zero
  ADD s2, zero, zero
  JAL zero, bb6
bb4:
  LW s6, 0(s5)
  ADD s5, s6, zero
  JAL zero, bb5
bb5:
  ADD s6, s5, zero
  ADDIW s7, s3, 1
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb1
bb6:
  ADD s3, s2, zero
  ADD s5, s1, zero
  SLT s6, s4, s3
  XORI s7, s6, 1
  BNE s7, zero, bb7
  JAL zero, bb8
bb7:
  ADDI s6, zero, 4
  MULW s7, s3, s6
  LA s6, cnt
  ADD s8, s6, s7
  LW s6, 0(s8)
  ADD s7, s6, zero
  ADD s6, s5, zero
  JAL zero, bb9
bb8:
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s7, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb9:
  ADD s5, s6, zero
  ADD s8, s7, zero
  XOR s9, s8, zero
  SLTU s10, zero, s9
  BNE s10, zero, bb10
  JAL zero, bb11
bb10:
  ADDI s9, zero, 4
  MULW s10, s5, s9
  ADD s9, s0, s10
  SW s3, 0(s9)
  ADDIW s9, s5, 1
  ADDI s10, zero, 1
  SUBW s11, s8, s10
  ADD s7, s11, zero
  ADD s6, s9, zero
  JAL zero, bb9
bb11:
  ADDIW s6, s3, 1
  ADD s1, s5, zero
  ADD s2, s6, zero
  JAL zero, bb6
bb12:
  ADD s5, s4, zero
  JAL zero, bb5
sortC:
  ADDI sp, sp, -96
  SD s10, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s7, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD ra, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  JAL zero, bb14
bb14:
  ADD s2, s1, zero
  LA s3, n
  LW s4, 0(s3)
  SLT s3, s2, s4
  BNE s3, zero, bb15
  JAL zero, bb16
bb15:
  ADDIW s3, s2, 1
  ADD s4, s3, zero
  ADD s5, s2, zero
  JAL zero, bb17
bb16:
  LD s10, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD ra, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb17:
  ADD s6, s5, zero
  ADD s7, s4, zero
  LA s8, n
  LW s9, 0(s8)
  SLT s8, s7, s9
  BNE s8, zero, bb18
  JAL zero, bb19
bb18:
  ADDI s8, zero, 4
  MULW s9, s7, s8
  ADD s8, s0, s9
  LW s9, 0(s8)
  ADDI s8, zero, 4
  MULW s10, s6, s8
  ADD s8, s0, s10
  LW s10, 0(s8)
  SLT s8, s9, s10
  BNE s8, zero, bb20
  JAL zero, bb22
bb19:
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s2, s0, s5
  LW s4, 0(s2)
  ADDI s5, zero, 4
  MULW s7, s6, s5
  ADD s5, s0, s7
  LW s6, 0(s5)
  SW s6, 0(s2)
  SW s4, 0(s5)
  ADD s1, s3, zero
  JAL zero, bb14
bb20:
  ADD s8, s7, zero
  JAL zero, bb21
bb21:
  ADD s9, s8, zero
  ADDIW s10, s7, 1
  ADD s4, s10, zero
  ADD s5, s9, zero
  JAL zero, bb17
bb22:
  ADD s8, s6, zero
  JAL zero, bb21
main:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s7, 48(sp)
  SD s5, 56(sp)
  SD s0, 64(sp)
  CALL quick_read
  ADD s0, a0, zero
  LA s1, n
  SW s0, 0(s1)
  ADD s0, zero, zero
  JAL zero, bb24
bb24:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  XOR s2, s1, s3
  SLTU s3, zero, s2
  BNE s3, zero, bb25
  JAL zero, bb26
bb25:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, a
  ADD s4, s2, s3
  CALL quick_read
  ADD s2, a0, zero
  SW s2, 0(s4)
  LA s2, b
  ADD s5, s2, s3
  LW s2, 0(s4)
  SW s2, 0(s5)
  LA s2, c
  ADD s4, s2, s3
  LW s2, 0(s5)
  SW s2, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb24
bb26:
  LA s0, a
  ADD a0, s0, zero
  CALL sortA
  LA s0, b
  ADD a0, s0, zero
  CALL sortB
  LA s0, c
  ADD a0, s0, zero
  CALL sortC
  ADD s0, zero, zero
  JAL zero, bb27
bb27:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SUBW s2, s3, s1
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb28
  JAL zero, bb29
bb28:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, b
  ADD s4, s2, s3
  LW s2, 0(s4)
  LA s5, a
  ADD s6, s5, s3
  LW s5, 0(s6)
  SUBW s7, s2, s5
  SW s7, 0(s4)
  LA s2, c
  ADD s5, s2, s3
  LW s2, 0(s5)
  LW s3, 0(s4)
  SUBW s4, s2, s3
  LW s2, 0(s6)
  SUBW s3, s4, s2
  SW s3, 0(s5)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb27
bb29:
  ADD s0, zero, zero
  JAL zero, bb30
bb30:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SUBW s2, s1, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb31
  JAL zero, bb32
bb31:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, b
  ADD s4, s2, s3
  LW s2, 0(s4)
  XOR s4, s2, zero
  SLTU s2, zero, s4
  BNE s2, zero, bb33
  JAL zero, bb34
bb32:
  ADDI a0, zero, -123
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s7, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb33:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s7, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb34:
  LA s2, c
  ADD s4, s2, s3
  LW s2, 0(s4)
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb35
  JAL zero, bb36
bb35:
  ADDI a0, zero, 2
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s7, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb36:
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb30
sortA:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s0, 16(sp)
  SD s5, 24(sp)
  SD s7, 32(sp)
  SD s1, 40(sp)
  SD s6, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD ra, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  JAL zero, bb38
bb38:
  ADD s3, s2, zero
  ADD s4, s1, zero
  LA s5, n
  LW s6, 0(s5)
  SLT s5, s3, s6
  BNE s5, zero, bb39
  JAL zero, bb40
bb39:
  ADDIW s5, s3, 1
  ADD s6, s4, zero
  ADD s4, s5, zero
  JAL zero, bb41
bb40:
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s7, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb41:
  ADD s7, s4, zero
  ADD s8, s6, zero
  LA s9, n
  LW s10, 0(s9)
  SLT s9, s7, s10
  BNE s9, zero, bb42
  JAL zero, bb43
bb42:
  ADDI s9, zero, 4
  MULW s10, s3, s9
  ADD s9, s0, s10
  LW s10, 0(s9)
  ADDI s11, zero, 4
  MULW t0, s7, s11
  ADD s11, s0, t0
  LW t0, 0(s11)
  SLT t1, t0, s10
  BNE t1, zero, bb44
  JAL zero, bb46
bb43:
  ADD s1, s8, zero
  ADD s2, s5, zero
  JAL zero, bb38
bb44:
  LW s10, 0(s9)
  LW t0, 0(s11)
  SW t0, 0(s9)
  SW s10, 0(s11)
  ADD s9, s10, zero
  JAL zero, bb45
bb45:
  ADD s10, s9, zero
  ADDIW s11, s7, 1
  ADD s6, s10, zero
  ADD s4, s11, zero
  JAL zero, bb41
bb46:
  ADD s9, s8, zero
  JAL zero, bb45
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
  JAL zero, bb48
bb48:
  ADD s0, s2, zero
  ADD s3, s1, zero
  SLTI s4, s0, 48
  BNE s4, zero, bb51
  JAL zero, bb52
bb49:
  XORI s5, s0, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb54
  JAL zero, bb64
bb50:
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb56
bb51:
  ADDI s4, zero, 1
  JAL zero, bb53
bb52:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  ADD s4, s2, zero
  JAL zero, bb53
bb53:
  ADD s5, s4, zero
  BNE s5, zero, bb49
  JAL zero, bb50
bb54:
  ADDI s5, zero, 1
  JAL zero, bb55
bb55:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb48
bb56:
  ADD s5, s2, zero
  ADD s6, s1, zero
  SLTI s7, s5, 48
  XORI s8, s7, 1
  BNE s8, zero, bb59
  JAL zero, bb60
bb57:
  ADDI s7, zero, 10
  MULW s9, s6, s7
  ADDW s7, s9, s5
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb56
bb58:
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb62
  JAL zero, bb63
bb59:
  ADDI s7, zero, 57
  SLT s8, s7, s5
  XORI s7, s8, 1
  ADD s8, s7, zero
  JAL zero, bb61
bb60:
  ADD s8, zero, zero
  JAL zero, bb61
bb61:
  ADD s7, s8, zero
  BNE s7, zero, bb57
  JAL zero, bb58
bb62:
  SUB s1, zero, s6
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
bb63:
  ADD a0, s6, zero
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
bb64:
  ADD s5, s3, zero
  JAL zero, bb55
