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
  SD ra, 32(sp)
  SD s4, 40(sp)
  SD s3, 48(sp)
  SD s2, 56(sp)
  SD s1, 64(sp)
  SD s0, 72(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 0
  SW s1, 24(sp)
  ADDI s1, zero, 0
  ADDI s2, zero, 100
  SUBW s3, s1, s2
  SW s3, 16(sp)
  JAL zero, bb1
bb1:
  LW s1, 24(sp)
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  LW s1, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  LA s1, cnt
  ADD s2, s1, s3
  LW s1, 24(sp)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s1, s0, s4
  LW s3, 0(s1)
  ADDI s1, zero, 4
  MULW s4, s3, s1
  LA s1, cnt
  ADD s3, s1, s4
  LW s1, 0(s3)
  ADDIW s3, s1, 1
  SW s3, 0(s2)
  LW s1, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(s1)
  LW s1, 16(sp)
  SLT s3, s1, s2
  BNE s3, zero, bb4
  JAL zero, bb5
bb3:
  ADDI s1, zero, 0
  SW s1, 24(sp)
  ADDI s1, zero, 0
  SW s1, 8(sp)
  JAL zero, bb6
bb4:
  LW s1, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(s1)
  SW s2, 16(sp)
  JAL zero, bb5
bb5:
  LW s1, 24(sp)
  ADDIW s2, s1, 1
  SW s2, 24(sp)
  JAL zero, bb1
bb6:
  LW s1, 24(sp)
  LW s2, 16(sp)
  SLT s3, s2, s1
  XORI s1, s3, 1
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb7
  JAL zero, bb8
bb7:
  LW s1, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, cnt
  ADD s2, s1, s3
  LW s1, 0(s2)
  SW s1, 0(sp)
  JAL zero, bb9
bb8:
  LD ra, 32(sp)
  LD s4, 40(sp)
  LD s3, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb9:
  LW s1, 0(sp)
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb10
  JAL zero, bb11
bb10:
  LW s1, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 24(sp)
  SW s2, 0(s1)
  LW s1, 8(sp)
  ADDIW s2, s1, 1
  SW s2, 8(sp)
  LW s1, 0(sp)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SW s3, 0(sp)
  JAL zero, bb9
bb11:
  LW s1, 24(sp)
  ADDIW s2, s1, 1
  SW s2, 24(sp)
  JAL zero, bb6
sortC:
  ADDI sp, sp, -80
  SD s4, 32(sp)
  SD ra, 40(sp)
  SD s3, 48(sp)
  SD s2, 56(sp)
  SD s1, 64(sp)
  SD s0, 72(sp)
  ADD s0, a0, zero
  SW zero, 24(sp)
  JAL zero, bb13
bb13:
  LW s1, 24(sp)
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb14
  JAL zero, bb15
bb14:
  LW s1, 24(sp)
  SW s1, 16(sp)
  LW s1, 24(sp)
  ADDIW s2, s1, 1
  SW s2, 8(sp)
  JAL zero, bb16
bb15:
  LD s4, 32(sp)
  LD ra, 40(sp)
  LD s3, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb16:
  LW s1, 8(sp)
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb17
  JAL zero, bb18
bb17:
  LW s1, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(s1)
  LW s1, 16(sp)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s1, s0, s4
  LW s3, 0(s1)
  SLT s1, s2, s3
  BNE s1, zero, bb19
  JAL zero, bb20
bb18:
  LW s1, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(s1)
  SW s2, 0(sp)
  LW s1, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 16(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s3, 0(s2)
  SW s3, 0(s1)
  LW s1, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(sp)
  SW s2, 0(s1)
  LW s1, 24(sp)
  ADDIW s2, s1, 1
  SW s2, 24(sp)
  JAL zero, bb13
bb19:
  LW s1, 8(sp)
  SW s1, 16(sp)
  JAL zero, bb20
bb20:
  LW s1, 8(sp)
  ADDIW s2, s1, 1
  SW s2, 8(sp)
  JAL zero, bb16
main:
  ADDI sp, sp, -64
  SD ra, 8(sp)
  SD s4, 16(sp)
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD s1, 40(sp)
  SD s0, 48(sp)
  CALL quick_read
  ADD s0, a0, zero
  LA s1, n
  SW s0, 0(s1)
  SW zero, 0(sp)
  JAL zero, bb22
bb22:
  LW s0, 0(sp)
  LA s1, n
  LW s2, 0(s1)
  XOR s1, s0, s2
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb23
  JAL zero, bb24
bb23:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, a
  ADD s1, s0, s2
  CALL quick_read
  ADD s0, a0, zero
  SW s0, 0(s1)
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, b
  ADD s1, s0, s2
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, a
  ADD s2, s0, s3
  LW s0, 0(s2)
  SW s0, 0(s1)
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, c
  ADD s1, s0, s2
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, b
  ADD s2, s0, s3
  LW s0, 0(s2)
  SW s0, 0(s1)
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb22
bb24:
  LA s0, a
  ADD a0, s0, zero
  CALL sortA
  LA s0, b
  ADD a0, s0, zero
  CALL sortB
  LA s0, c
  ADD a0, s0, zero
  CALL sortC
  SW zero, 0(sp)
  JAL zero, bb25
bb25:
  LA s0, n
  LW s1, 0(s0)
  LW s0, 0(sp)
  SUBW s2, s1, s0
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb26
  JAL zero, bb27
bb26:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, b
  ADD s1, s0, s2
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, b
  ADD s2, s0, s3
  LW s0, 0(s2)
  LW s2, 0(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s2, a
  ADD s3, s2, s4
  LW s2, 0(s3)
  SUBW s3, s0, s2
  SW s3, 0(s1)
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, c
  ADD s1, s0, s2
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, c
  ADD s2, s0, s3
  LW s0, 0(s2)
  LW s2, 0(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s2, b
  ADD s3, s2, s4
  LW s2, 0(s3)
  SUBW s3, s0, s2
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s4, s0, s2
  LA s0, a
  ADD s2, s0, s4
  LW s0, 0(s2)
  SUBW s2, s3, s0
  SW s2, 0(s1)
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb25
bb27:
  SW zero, 0(sp)
  JAL zero, bb28
bb28:
  LW s0, 0(sp)
  LA s1, n
  LW s2, 0(s1)
  SUBW s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb29
  JAL zero, bb30
bb29:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, b
  ADD s1, s0, s2
  LW s0, 0(s1)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb31
  JAL zero, bb32
bb30:
  ADDI s0, zero, 123
  SUB s1, zero, s0
  ADD a0, s1, zero
  LD ra, 8(sp)
  LD s4, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb31:
  ADDI a0, zero, 1
  LD ra, 8(sp)
  LD s4, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb32:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, c
  ADD s1, s0, s2
  LW s0, 0(s1)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb33
  JAL zero, bb34
bb33:
  ADDI a0, zero, 2
  LD ra, 8(sp)
  LD s4, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb34:
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb28
sortA:
  ADDI sp, sp, -80
  SD s4, 24(sp)
  SD ra, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s0, 64(sp)
  ADD s0, a0, zero
  SW zero, 16(sp)
  JAL zero, bb36
bb36:
  LW s1, 16(sp)
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb37
  JAL zero, bb38
bb37:
  LW s1, 16(sp)
  ADDIW s2, s1, 1
  SW s2, 8(sp)
  JAL zero, bb39
bb38:
  LD s4, 24(sp)
  LD ra, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb39:
  LW s1, 8(sp)
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb40
  JAL zero, bb41
bb40:
  LW s1, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(s1)
  LW s1, 8(sp)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s1, s0, s4
  LW s3, 0(s1)
  SLT s1, s3, s2
  BNE s1, zero, bb42
  JAL zero, bb43
bb41:
  LW s1, 16(sp)
  ADDIW s2, s1, 1
  SW s2, 16(sp)
  JAL zero, bb36
bb42:
  LW s1, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(s1)
  SW s2, 0(sp)
  LW s1, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 8(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s3, 0(s2)
  SW s3, 0(s1)
  LW s1, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(sp)
  SW s2, 0(s1)
  JAL zero, bb43
bb43:
  LW s1, 8(sp)
  ADDIW s2, s1, 1
  SW s2, 8(sp)
  JAL zero, bb39
quick_read:
  ADDI sp, sp, -80
  SD ra, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s0, 64(sp)
  CALL getch
  ADD s0, a0, zero
  SW s0, 32(sp)
  SW zero, 24(sp)
  SW zero, 16(sp)
  JAL zero, bb45
bb45:
  LW s0, 32(sp)
  SLTI s1, s0, 48
  BNE s1, zero, bb48
  JAL zero, bb49
bb46:
  LW s0, 32(sp)
  XORI s1, s0, 45
  SLTIU s0, s1, 1
  BNE s0, zero, bb51
  JAL zero, bb52
bb47:
  JAL zero, bb53
bb48:
  ADDI s0, zero, 1
  SB s0, 8(sp)
  JAL zero, bb50
bb49:
  LW s0, 32(sp)
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 8(sp)
  JAL zero, bb50
bb50:
  LB s0, 8(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb46
  JAL zero, bb47
bb51:
  ADDI s0, zero, 1
  SW s0, 16(sp)
  JAL zero, bb52
bb52:
  CALL getch
  ADD s0, a0, zero
  SW s0, 32(sp)
  JAL zero, bb45
bb53:
  LW s0, 32(sp)
  SLTI s1, s0, 48
  XORI s0, s1, 1
  BNE s0, zero, bb56
  JAL zero, bb57
bb54:
  LW s0, 24(sp)
  ADDI s1, zero, 10
  MULW s2, s0, s1
  LW s0, 32(sp)
  ADDW s1, s2, s0
  ADDI s0, zero, 48
  SUBW s2, s1, s0
  SW s2, 24(sp)
  CALL getch
  ADD s0, a0, zero
  SW s0, 32(sp)
  JAL zero, bb53
bb55:
  LW s0, 16(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb59
  JAL zero, bb61
bb56:
  LW s0, 32(sp)
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XORI s0, s2, 1
  SB s0, 0(sp)
  JAL zero, bb58
bb57:
  SB zero, 0(sp)
  JAL zero, bb58
bb58:
  LB s0, 0(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb54
  JAL zero, bb55
bb59:
  LW s0, 24(sp)
  SUB s1, zero, s0
  ADD a0, s1, zero
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb60:
bb61:
  LW s0, 24(sp)
  ADD a0, s0, zero
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
