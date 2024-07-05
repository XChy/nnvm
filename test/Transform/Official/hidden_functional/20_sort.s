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
  ADDI sp, sp, -80
  SD s8, 0(sp)
  SD ra, 8(sp)
  SD s4, 16(sp)
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD s6, 40(sp)
  SD s1, 48(sp)
  SD s7, 56(sp)
  SD s5, 64(sp)
  SD s0, 72(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 0
  ADDI s2, zero, 100
  SUBW s3, s1, s2
  ADD s1, s3, zero
  ADD s2, zero, zero
  JAL zero, bb1
bb1:
  LA s3, n
  LW s4, 0(s3)
  SLT s3, s2, s4
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s3, s0, s4
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  LA s3, cnt
  ADD s4, s3, s5
  ADDI s3, zero, 4
  MULW s5, s2, s3
  ADD s3, s0, s5
  LW s5, 0(s3)
  ADDI s3, zero, 4
  MULW s6, s5, s3
  LA s3, cnt
  ADD s5, s3, s6
  LW s3, 0(s5)
  ADDIW s5, s3, 1
  SW s5, 0(s4)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s3, s0, s4
  LW s4, 0(s3)
  SLT s3, s1, s4
  BNE s3, zero, bb4
  JAL zero, bb12
bb3:
  ADD s2, zero, zero
  ADD s3, zero, zero
  JAL zero, bb6
bb4:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s3, s0, s4
  LW s4, 0(s3)
  ADD s3, s4, zero
  JAL zero, bb5
bb5:
  ADDIW s4, s2, 1
  ADD s1, s3, zero
  ADD s2, s4, zero
  JAL zero, bb1
bb6:
  SLT s4, s1, s3
  XORI s5, s4, 1
  XOR s4, s5, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb7
  JAL zero, bb8
bb7:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LA s4, cnt
  ADD s6, s4, s5
  LW s4, 0(s6)
  ADD s5, s4, zero
  ADD s4, s2, zero
  JAL zero, bb9
bb8:
  LD s8, 0(sp)
  LD ra, 8(sp)
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
bb9:
  XOR s6, s5, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb10
  JAL zero, bb11
bb10:
  ADDI s6, zero, 4
  MULW s7, s4, s6
  ADD s6, s0, s7
  SW s3, 0(s6)
  ADDIW s6, s4, 1
  ADDI s7, zero, 1
  SUBW s8, s5, s7
  ADD s5, s8, zero
  ADD s4, s6, zero
  JAL zero, bb9
bb11:
  ADDIW s5, s3, 1
  ADD s2, s4, zero
  ADD s3, s5, zero
  JAL zero, bb6
bb12:
  ADD s3, s1, zero
  JAL zero, bb5
sortC:
  ADDI sp, sp, -64
  SD s4, 0(sp)
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  JAL zero, bb14
bb14:
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb15
  JAL zero, bb16
bb15:
  ADDIW s2, s1, 1
  ADD s3, s2, zero
  ADD s2, s1, zero
  JAL zero, bb17
bb16:
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb17:
  LA s4, n
  LW s5, 0(s4)
  SLT s4, s3, s5
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb18
  JAL zero, bb19
bb18:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s4, s0, s5
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MULW s6, s2, s4
  ADD s4, s0, s6
  LW s6, 0(s4)
  SLT s4, s5, s6
  BNE s4, zero, bb20
  JAL zero, bb22
bb19:
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s3, s0, s4
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s1, s3
  ADD s3, s0, s5
  ADDI s5, zero, 4
  MULW s6, s2, s5
  ADD s5, s0, s6
  LW s6, 0(s5)
  SW s6, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s2, s3
  ADD s2, s0, s5
  SW s4, 0(s2)
  ADDIW s2, s1, 1
  ADD s1, s2, zero
  JAL zero, bb14
bb20:
  ADD s4, s3, zero
  JAL zero, bb21
bb21:
  ADDIW s5, s3, 1
  ADD s3, s5, zero
  ADD s2, s4, zero
  JAL zero, bb17
bb22:
  ADD s4, s2, zero
  JAL zero, bb21
main:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  CALL quick_read
  ADD s0, a0, zero
  LA s1, n
  SW s0, 0(s1)
  ADD s0, zero, zero
  JAL zero, bb24
bb24:
  LA s1, n
  LW s2, 0(s1)
  XOR s1, s0, s2
  SLTU s2, zero, s1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb25
  JAL zero, bb26
bb25:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, a
  ADD s3, s1, s2
  CALL quick_read
  ADD s1, a0, zero
  SW s1, 0(s3)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, b
  ADD s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, a
  ADD s4, s1, s2
  LW s1, 0(s4)
  SW s1, 0(s3)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, c
  ADD s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, b
  ADD s4, s1, s2
  LW s1, 0(s4)
  SW s1, 0(s3)
  ADDIW s1, s0, 1
  ADD s0, s1, zero
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
  LA s1, n
  LW s2, 0(s1)
  SUBW s1, s2, s0
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb28
  JAL zero, bb29
bb28:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, b
  ADD s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, b
  ADD s4, s1, s2
  LW s1, 0(s4)
  ADDI s2, zero, 4
  MULW s4, s0, s2
  LA s2, a
  ADD s5, s2, s4
  LW s2, 0(s5)
  SUBW s4, s1, s2
  SW s4, 0(s3)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, c
  ADD s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, c
  ADD s4, s1, s2
  LW s1, 0(s4)
  ADDI s2, zero, 4
  MULW s4, s0, s2
  LA s2, b
  ADD s5, s2, s4
  LW s2, 0(s5)
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, a
  ADD s5, s1, s2
  LW s1, 0(s5)
  SUBW s2, s4, s1
  SW s2, 0(s3)
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb27
bb29:
  ADD s0, zero, zero
  JAL zero, bb30
bb30:
  LA s1, n
  LW s2, 0(s1)
  SUBW s1, s0, s2
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb31
  JAL zero, bb32
bb31:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, b
  ADD s3, s1, s2
  LW s1, 0(s3)
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb33
  JAL zero, bb34
bb32:
  ADDI s0, zero, 123
  SUB s1, zero, s0
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb33:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb34:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, c
  ADD s3, s1, s2
  LW s1, 0(s3)
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb35
  JAL zero, bb36
bb35:
  ADDI a0, zero, 2
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb36:
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb30
sortA:
  ADDI sp, sp, -80
  SD s8, 0(sp)
  SD ra, 8(sp)
  SD s4, 16(sp)
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD s6, 40(sp)
  SD s1, 48(sp)
  SD s7, 56(sp)
  SD s5, 64(sp)
  SD s0, 72(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  JAL zero, bb38
bb38:
  LA s3, n
  LW s4, 0(s3)
  SLT s3, s2, s4
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb39
  JAL zero, bb40
bb39:
  ADDIW s3, s2, 1
  ADD s4, s1, zero
  ADD s5, s3, zero
  JAL zero, bb41
bb40:
  LD s8, 0(sp)
  LD ra, 8(sp)
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
bb41:
  LA s3, n
  LW s6, 0(s3)
  SLT s3, s5, s6
  XOR s6, s3, zero
  SLTU s3, zero, s6
  BNE s3, zero, bb42
  JAL zero, bb43
bb42:
  ADDI s3, zero, 4
  MULW s6, s2, s3
  ADD s3, s0, s6
  LW s6, 0(s3)
  ADDI s3, zero, 4
  MULW s7, s5, s3
  ADD s3, s0, s7
  LW s7, 0(s3)
  SLT s3, s7, s6
  BNE s3, zero, bb44
  JAL zero, bb46
bb43:
  ADDIW s3, s2, 1
  ADD s1, s4, zero
  ADD s2, s3, zero
  JAL zero, bb38
bb44:
  ADDI s3, zero, 4
  MULW s6, s2, s3
  ADD s3, s0, s6
  LW s6, 0(s3)
  ADDI s3, zero, 4
  MULW s7, s2, s3
  ADD s3, s0, s7
  ADDI s7, zero, 4
  MULW s8, s5, s7
  ADD s7, s0, s8
  LW s8, 0(s7)
  SW s8, 0(s3)
  ADDI s3, zero, 4
  MULW s7, s5, s3
  ADD s3, s0, s7
  SW s6, 0(s3)
  ADD s3, s6, zero
  JAL zero, bb45
bb45:
  ADDIW s6, s5, 1
  ADD s4, s3, zero
  ADD s5, s6, zero
  JAL zero, bb41
bb46:
  ADD s3, s4, zero
  JAL zero, bb45
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
  JAL zero, bb48
bb48:
  SLTI s0, s2, 48
  BNE s0, zero, bb51
  JAL zero, bb52
bb49:
  XORI s3, s2, 45
  SLTIU s4, s3, 1
  BNE s4, zero, bb54
  JAL zero, bb65
bb50:
  ADD s3, zero, zero
  ADD s4, s2, zero
  JAL zero, bb56
bb51:
  ADDI s0, zero, 1
  JAL zero, bb53
bb52:
  ADDI s3, zero, 57
  SLT s4, s3, s2
  XOR s3, s4, zero
  SLTU s4, zero, s3
  ADD s0, s4, zero
  JAL zero, bb53
bb53:
  XOR s3, s0, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb49
  JAL zero, bb50
bb54:
  ADDI s3, zero, 1
  JAL zero, bb55
bb55:
  CALL getch
  ADD s4, a0, zero
  ADD s1, s3, zero
  ADD s2, s4, zero
  JAL zero, bb48
bb56:
  SLTI s5, s4, 48
  XORI s6, s5, 1
  BNE s6, zero, bb59
  JAL zero, bb60
bb57:
  ADDI s5, zero, 10
  MULW s7, s3, s5
  ADDW s5, s7, s4
  ADDI s7, zero, 48
  SUBW s8, s5, s7
  CALL getch
  ADD s5, a0, zero
  ADD s3, s8, zero
  ADD s4, s5, zero
  JAL zero, bb56
bb58:
  XOR s5, s1, zero
  SLTU s7, zero, s5
  BNE s7, zero, bb62
  JAL zero, bb64
bb59:
  ADDI s5, zero, 57
  SLT s6, s5, s4
  XORI s5, s6, 1
  ADD s6, s5, zero
  JAL zero, bb61
bb60:
  ADD s6, zero, zero
  JAL zero, bb61
bb61:
  XOR s5, s6, zero
  SLTU s7, zero, s5
  BNE s7, zero, bb57
  JAL zero, bb58
bb62:
  SUB s5, zero, s3
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
bb63:
bb64:
  ADD a0, s3, zero
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
bb65:
  ADD s3, s1, zero
  JAL zero, bb55
