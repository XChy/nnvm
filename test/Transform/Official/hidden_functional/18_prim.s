.global same
.global main
.global find
.global prim
.global quick_read
.section .bss
c:
.space 4020
v:
.space 4020
fa:
.space 4020

u:
.space 4020



.section .data



n:
.word 0x00000000

m:
.word 0x00000000
maxn:
.word 0x00000069
maxm:
.word 0x000003ed
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
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  CALL quick_read
  ADD s0, a0, zero
  CALL quick_read
  ADD s0, a0, zero
  ADD s1, zero, zero
  JAL zero, bb4
bb4:
  SLT s2, s1, s0
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, u
  ADD s4, s2, s3
  CALL quick_read
  ADD s2, a0, zero
  SW s2, 0(s4)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, v
  ADD s4, s2, s3
  CALL quick_read
  ADD s2, a0, zero
  SW s2, 0(s4)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, c
  ADD s4, s2, s3
  CALL quick_read
  ADD s2, a0, zero
  SW s2, 0(s4)
  ADDIW s2, s1, 1
  ADD s1, s2, zero
  JAL zero, bb4
bb6:
  CALL prim
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
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
  XOR s2, s0, s1
  SLTIU s1, s2, 1
  BNE s1, zero, bb8
  JAL zero, bb9
bb8:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb9:
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
prim:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s8, 8(sp)
  SD s7, 16(sp)
  SD s4, 24(sp)
  SD s3, 32(sp)
  SD s2, 40(sp)
  SD s6, 48(sp)
  SD s1, 56(sp)
  SD s5, 64(sp)
  SD s0, 72(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb11
bb11:
  LA s2, m
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb12
  JAL zero, bb13
bb12:
  ADDIW s2, s1, 1
  ADD s3, s0, zero
  ADD s4, s2, zero
  JAL zero, bb14
bb13:
  ADDI s0, zero, 1
  JAL zero, bb19
bb14:
  LA s2, m
  LW s5, 0(s2)
  SLT s2, s4, s5
  XOR s5, s2, zero
  SLTU s2, zero, s5
  BNE s2, zero, bb15
  JAL zero, bb16
bb15:
  ADDI s2, zero, 4
  MULW s5, s1, s2
  LA s2, c
  ADD s6, s2, s5
  LW s2, 0(s6)
  ADDI s5, zero, 4
  MULW s6, s4, s5
  LA s5, c
  ADD s7, s5, s6
  LW s5, 0(s7)
  SLT s6, s5, s2
  BNE s6, zero, bb17
  JAL zero, bb27
bb16:
  ADDIW s2, s1, 1
  ADD s0, s3, zero
  ADD s1, s2, zero
  JAL zero, bb11
bb17:
  ADDI s2, zero, 4
  MULW s5, s1, s2
  LA s2, u
  ADD s6, s2, s5
  LW s2, 0(s6)
  ADDI s5, zero, 4
  MULW s6, s1, s5
  LA s5, u
  ADD s7, s5, s6
  ADDI s5, zero, 4
  MULW s6, s4, s5
  LA s5, u
  ADD s8, s5, s6
  LW s5, 0(s8)
  SW s5, 0(s7)
  ADDI s5, zero, 4
  MULW s6, s4, s5
  LA s5, u
  ADD s7, s5, s6
  SW s2, 0(s7)
  ADDI s2, zero, 4
  MULW s5, s1, s2
  LA s2, v
  ADD s6, s2, s5
  LW s2, 0(s6)
  ADDI s5, zero, 4
  MULW s6, s1, s5
  LA s5, v
  ADD s7, s5, s6
  ADDI s5, zero, 4
  MULW s6, s4, s5
  LA s5, v
  ADD s8, s5, s6
  LW s5, 0(s8)
  SW s5, 0(s7)
  ADDI s5, zero, 4
  MULW s6, s4, s5
  LA s5, v
  ADD s7, s5, s6
  SW s2, 0(s7)
  ADDI s2, zero, 4
  MULW s5, s1, s2
  LA s2, c
  ADD s6, s2, s5
  LW s2, 0(s6)
  ADDI s5, zero, 4
  MULW s6, s1, s5
  LA s5, c
  ADD s7, s5, s6
  ADDI s5, zero, 4
  MULW s6, s4, s5
  LA s5, c
  ADD s8, s5, s6
  LW s5, 0(s8)
  SW s5, 0(s7)
  ADDI s5, zero, 4
  MULW s6, s4, s5
  LA s5, c
  ADD s7, s5, s6
  SW s2, 0(s7)
  ADD s5, s2, zero
  JAL zero, bb18
bb18:
  ADDIW s2, s4, 1
  ADD s3, s5, zero
  ADD s4, s2, zero
  JAL zero, bb14
bb19:
  LA s1, n
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s2, s1, 1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb20
  JAL zero, bb21
bb20:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, fa
  ADD s3, s1, s2
  SW s0, 0(s3)
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb19
bb21:
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb22
bb22:
  LA s2, m
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb23
  JAL zero, bb24
bb23:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, u
  ADD s4, s2, s3
  LW s2, 0(s4)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  LA s3, v
  ADD s5, s3, s4
  LW s3, 0(s5)
  ADD a0, s2, zero
  ADD a1, s3, zero
  CALL same
  ADD s2, a0, zero
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb25
  JAL zero, bb26
bb24:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s8, 8(sp)
  LD s7, 16(sp)
  LD s4, 24(sp)
  LD s3, 32(sp)
  LD s2, 40(sp)
  LD s6, 48(sp)
  LD s1, 56(sp)
  LD s5, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb25:
  ADD s0, s0, zero
  ADD s1, s1, zero
  JAL zero, bb22
bb26:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, c
  ADD s4, s2, s3
  LW s2, 0(s4)
  ADDW s3, s0, s2
  ADDI s2, zero, 4
  MULW s4, s1, s2
  LA s2, u
  ADD s5, s2, s4
  LW s2, 0(s5)
  ADD a0, s2, zero
  CALL find
  ADD s2, a0, zero
  ADDI s4, zero, 4
  MULW s5, s2, s4
  LA s2, fa
  ADD s4, s2, s5
  ADDI s2, zero, 4
  MULW s5, s1, s2
  LA s2, v
  ADD s6, s2, s5
  LW s2, 0(s6)
  SW s2, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s3, zero
  ADD s1, s2, zero
  JAL zero, bb22
bb27:
  ADD s5, s3, zero
  JAL zero, bb18
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
  JAL zero, bb29
bb29:
  SLTI s0, s2, 48
  BNE s0, zero, bb32
  JAL zero, bb33
bb30:
  XORI s3, s2, 45
  SLTIU s4, s3, 1
  BNE s4, zero, bb35
  JAL zero, bb46
bb31:
  ADD s3, zero, zero
  ADD s4, s2, zero
  JAL zero, bb37
bb32:
  ADDI s0, zero, 1
  JAL zero, bb34
bb33:
  ADDI s3, zero, 57
  SLT s4, s3, s2
  XOR s3, s4, zero
  SLTU s4, zero, s3
  ADD s0, s4, zero
  JAL zero, bb34
bb34:
  XOR s3, s0, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb30
  JAL zero, bb31
bb35:
  ADDI s3, zero, 1
  JAL zero, bb36
bb36:
  CALL getch
  ADD s4, a0, zero
  ADD s1, s3, zero
  ADD s2, s4, zero
  JAL zero, bb29
bb37:
  SLTI s5, s4, 48
  XORI s6, s5, 1
  BNE s6, zero, bb40
  JAL zero, bb41
bb38:
  ADDI s5, zero, 10
  MULW s7, s3, s5
  ADDW s5, s7, s4
  ADDI s7, zero, 48
  SUBW s8, s5, s7
  CALL getch
  ADD s5, a0, zero
  ADD s3, s8, zero
  ADD s4, s5, zero
  JAL zero, bb37
bb39:
  XOR s5, s1, zero
  SLTU s7, zero, s5
  BNE s7, zero, bb43
  JAL zero, bb45
bb40:
  ADDI s5, zero, 57
  SLT s6, s5, s4
  XORI s5, s6, 1
  ADD s6, s5, zero
  JAL zero, bb42
bb41:
  ADD s6, zero, zero
  JAL zero, bb42
bb42:
  XOR s5, s6, zero
  SLTU s7, zero, s5
  BNE s7, zero, bb38
  JAL zero, bb39
bb43:
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
bb44:
bb45:
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
bb46:
  ADD s3, s1, zero
  JAL zero, bb36
