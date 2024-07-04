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
  ADDI sp, sp, -48
  SD ra, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 8(sp)
  SW s1, 0(sp)
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  SW s0, 8(sp)
  LW s0, 0(sp)
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  SW s0, 0(sp)
  LW s1, 8(sp)
  XOR s2, s1, s0
  SLTIU s0, s2, 1
  BNE s0, zero, bb1
  JAL zero, bb2
bb1:
  ADDI a0, zero, 1
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb2:
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -64
  SD ra, 24(sp)
  SD s2, 32(sp)
  SD s1, 40(sp)
  SD s0, 48(sp)
  CALL quick_read
  ADD s0, a0, zero
  SW s0, 16(sp)
  CALL quick_read
  ADD s0, a0, zero
  SW s0, 8(sp)
  SW zero, 0(sp)
  JAL zero, bb4
bb4:
  LW s0, 0(sp)
  LW s1, 8(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb5
  JAL zero, bb6
bb5:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, u
  ADD s1, s0, s2
  CALL quick_read
  ADD s0, a0, zero
  SW s0, 0(s1)
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, v
  ADD s1, s0, s2
  CALL quick_read
  ADD s0, a0, zero
  SW s0, 0(s1)
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, c
  ADD s1, s0, s2
  CALL quick_read
  ADD s0, a0, zero
  SW s0, 0(s1)
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb4
bb6:
  CALL prim
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
find:
  ADDI sp, sp, -64
  SD ra, 16(sp)
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD s1, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  SW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, fa
  ADD s3, s1, s2
  LW s1, 0(s3)
  XOR s2, s0, s1
  SLTIU s0, s2, 1
  BNE s0, zero, bb8
  JAL zero, bb9
bb8:
  LW s0, 8(sp)
  ADD a0, s0, zero
  LD ra, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb9:
  LW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, fa
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  SW s0, 0(sp)
  LW s1, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, fa
  ADD s2, s1, s3
  SW s0, 0(s2)
  ADD a0, s0, zero
  LD ra, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
prim:
  ADDI sp, sp, -80
  SD ra, 32(sp)
  SD s4, 40(sp)
  SD s3, 48(sp)
  SD s2, 56(sp)
  SD s1, 64(sp)
  SD s0, 72(sp)
  SW zero, 24(sp)
  JAL zero, bb11
bb11:
  LW s0, 24(sp)
  LA s1, m
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb12
  JAL zero, bb13
bb12:
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  JAL zero, bb14
bb13:
  ADDI s0, zero, 1
  SW s0, 24(sp)
  JAL zero, bb19
bb14:
  LW s0, 16(sp)
  LA s1, m
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb15
  JAL zero, bb16
bb15:
  LW s0, 24(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, c
  ADD s1, s0, s2
  LW s0, 0(s1)
  LW s1, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, c
  ADD s2, s1, s3
  LW s1, 0(s2)
  SLT s2, s1, s0
  BNE s2, zero, bb17
  JAL zero, bb18
bb16:
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  SW s1, 24(sp)
  JAL zero, bb11
bb17:
  LW s0, 24(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, u
  ADD s1, s0, s2
  LW s0, 0(s1)
  SW s0, 8(sp)
  LW s1, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, u
  ADD s2, s1, s3
  LW s1, 16(sp)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  LA s1, u
  ADD s3, s1, s4
  LW s1, 0(s3)
  SW s1, 0(s2)
  LW s1, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, u
  ADD s2, s1, s3
  SW s0, 0(s2)
  LW s0, 24(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, v
  ADD s1, s0, s2
  LW s0, 0(s1)
  SW s0, 8(sp)
  LW s1, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, v
  ADD s2, s1, s3
  LW s1, 16(sp)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  LA s1, v
  ADD s3, s1, s4
  LW s1, 0(s3)
  SW s1, 0(s2)
  LW s1, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, v
  ADD s2, s1, s3
  SW s0, 0(s2)
  LW s0, 24(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, c
  ADD s1, s0, s2
  LW s0, 0(s1)
  SW s0, 8(sp)
  LW s1, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, c
  ADD s2, s1, s3
  LW s1, 16(sp)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  LA s1, c
  ADD s3, s1, s4
  LW s1, 0(s3)
  SW s1, 0(s2)
  LW s1, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, c
  ADD s2, s1, s3
  SW s0, 0(s2)
  JAL zero, bb18
bb18:
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  JAL zero, bb14
bb19:
  LW s0, 24(sp)
  LA s1, n
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb20
  JAL zero, bb21
bb20:
  LW s0, 24(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, fa
  ADD s1, s0, s2
  LW s0, 24(sp)
  SW s0, 0(s1)
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  SW s1, 24(sp)
  JAL zero, bb19
bb21:
  SW zero, 24(sp)
  SW zero, 0(sp)
  JAL zero, bb22
bb22:
  LW s0, 24(sp)
  LA s1, m
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb23
  JAL zero, bb24
bb23:
  LW s0, 24(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, u
  ADD s1, s0, s2
  LW s0, 0(s1)
  LW s1, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, v
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL same
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb25
  JAL zero, bb26
bb24:
  LW s0, 0(sp)
  ADD a0, s0, zero
  LD ra, 32(sp)
  LD s4, 40(sp)
  LD s3, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb25:
  JAL zero, bb22
bb26:
  LW s0, 0(sp)
  LW s1, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, c
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDW s2, s0, s1
  SW s2, 0(sp)
  LW s0, 24(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, u
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, fa
  ADD s1, s0, s2
  LW s0, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, v
  ADD s2, s0, s3
  LW s0, 0(s2)
  SW s0, 0(s1)
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  SW s1, 24(sp)
  JAL zero, bb22
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
  JAL zero, bb28
bb28:
  LW s0, 32(sp)
  SLTI s1, s0, 48
  BNE s1, zero, bb31
  JAL zero, bb32
bb29:
  LW s0, 32(sp)
  XORI s1, s0, 45
  SLTIU s0, s1, 1
  BNE s0, zero, bb34
  JAL zero, bb35
bb30:
  JAL zero, bb36
bb31:
  ADDI s0, zero, 1
  SB s0, 8(sp)
  JAL zero, bb33
bb32:
  LW s0, 32(sp)
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 8(sp)
  JAL zero, bb33
bb33:
  LB s0, 8(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb29
  JAL zero, bb30
bb34:
  ADDI s0, zero, 1
  SW s0, 16(sp)
  JAL zero, bb35
bb35:
  CALL getch
  ADD s0, a0, zero
  SW s0, 32(sp)
  JAL zero, bb28
bb36:
  LW s0, 32(sp)
  SLTI s1, s0, 48
  XORI s0, s1, 1
  BNE s0, zero, bb39
  JAL zero, bb40
bb37:
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
  JAL zero, bb36
bb38:
  LW s0, 16(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb42
  JAL zero, bb44
bb39:
  LW s0, 32(sp)
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XORI s0, s2, 1
  SB s0, 0(sp)
  JAL zero, bb41
bb40:
  SB zero, 0(sp)
  JAL zero, bb41
bb41:
  LB s0, 0(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb37
  JAL zero, bb38
bb42:
  LW s0, 24(sp)
  SUB s1, zero, s0
  ADD a0, s1, zero
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb43:
bb44:
  LW s0, 24(sp)
  ADD a0, s0, zero
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
