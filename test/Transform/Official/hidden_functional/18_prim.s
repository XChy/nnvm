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
  CALL quick_read
  ADD s0, a0, zero
  ADD s1, zero, zero
  JAL zero, bb4
bb4:
  ADD s2, s1, zero
  SLT s3, s2, s0
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s3, u
  ADD s5, s3, s4
  CALL quick_read
  ADD s3, a0, zero
  SW s3, 0(s5)
  LA s3, v
  ADD s5, s3, s4
  CALL quick_read
  ADD s3, a0, zero
  SW s3, 0(s5)
  LA s3, c
  ADD s5, s3, s4
  CALL quick_read
  ADD s3, a0, zero
  SW s3, 0(s5)
  ADDIW s3, s2, 1
  ADD s1, s3, zero
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
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
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
  LW s0, 0(s3)
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  SW s0, 0(s3)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
prim:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s10, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s11, 96(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb11
bb11:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, m
  LW s5, 0(s4)
  SLT s4, s2, s5
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb12
  JAL zero, bb13
bb12:
  ADDIW s4, s2, 1
  ADD s5, s3, zero
  ADD s3, s4, zero
  JAL zero, bb14
bb13:
  ADDI s0, zero, 1
  JAL zero, bb19
bb14:
  ADD s6, s3, zero
  ADD s7, s5, zero
  LA s8, m
  LW s9, 0(s8)
  SLT s8, s6, s9
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb15
  JAL zero, bb16
bb15:
  ADDI s8, zero, 4
  MULW s9, s2, s8
  LA s8, c
  ADD s10, s8, s9
  LW s8, 0(s10)
  ADDI s11, zero, 4
  MULW t0, s6, s11
  LA s11, c
  ADD t1, s11, t0
  LW s11, 0(t1)
  SLT t2, s11, s8
  BNE t2, zero, bb17
  JAL zero, bb27
bb16:
  ADD s0, s7, zero
  ADD s1, s4, zero
  JAL zero, bb11
bb17:
  LA s8, u
  ADD s11, s8, s9
  LW s8, 0(s11)
  LA t2, u
  ADD a0, t2, t0
  LW t2, 0(a0)
  SW t2, 0(s11)
  SW s8, 0(a0)
  LA s8, v
  ADD s11, s8, s9
  LW s8, 0(s11)
  LA s9, v
  ADD t2, s9, t0
  LW s9, 0(t2)
  SW s9, 0(s11)
  SW s8, 0(t2)
  LW s8, 0(s10)
  LW s9, 0(t1)
  SW s9, 0(s10)
  SW s8, 0(t1)
  ADD s9, s8, zero
  JAL zero, bb18
bb18:
  ADD s8, s9, zero
  ADDIW s10, s6, 1
  ADD s5, s8, zero
  ADD s3, s10, zero
  JAL zero, bb14
bb19:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb20
  JAL zero, bb21
bb20:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, fa
  ADD s4, s2, s3
  SW s1, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb19
bb21:
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb22
bb22:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, m
  LW s5, 0(s4)
  SLT s4, s2, s5
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb23
  JAL zero, bb24
bb23:
  ADDI s4, zero, 4
  MULW s5, s2, s4
  LA s4, u
  ADD s6, s4, s5
  LW s4, 0(s6)
  LA s7, v
  ADD s8, s7, s5
  LW s7, 0(s8)
  ADD a0, s4, zero
  ADD a1, s7, zero
  CALL same
  ADD s4, a0, zero
  XOR s7, s4, zero
  SLTU s4, zero, s7
  BNE s4, zero, bb25
  JAL zero, bb26
bb24:
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s10, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb25:
  ADD s0, s3, zero
  ADD s1, s2, zero
  JAL zero, bb22
bb26:
  LA s4, c
  ADD s7, s4, s5
  LW s4, 0(s7)
  ADDW s5, s3, s4
  LW s4, 0(s6)
  ADD a0, s4, zero
  CALL find
  ADD s4, a0, zero
  ADDI s6, zero, 4
  MULW s7, s4, s6
  LA s4, fa
  ADD s6, s4, s7
  LW s4, 0(s8)
  SW s4, 0(s6)
  ADDIW s4, s2, 1
  ADD s0, s5, zero
  ADD s1, s4, zero
  JAL zero, bb22
bb27:
  ADD s9, s7, zero
  JAL zero, bb18
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
  JAL zero, bb29
bb29:
  ADD s0, s2, zero
  ADD s3, s1, zero
  SLTI s4, s0, 48
  BNE s4, zero, bb32
  JAL zero, bb33
bb30:
  XORI s5, s0, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb35
  JAL zero, bb45
bb31:
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb37
bb32:
  ADDI s4, zero, 1
  JAL zero, bb34
bb33:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XOR s1, s2, zero
  SLTU s2, zero, s1
  ADD s4, s2, zero
  JAL zero, bb34
bb34:
  ADD s5, s4, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb30
  JAL zero, bb31
bb35:
  ADDI s5, zero, 1
  JAL zero, bb36
bb36:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb29
bb37:
  ADD s5, s2, zero
  ADD s6, s1, zero
  SLTI s7, s5, 48
  XORI s8, s7, 1
  BNE s8, zero, bb40
  JAL zero, bb41
bb38:
  ADDI s7, zero, 10
  MULW s9, s6, s7
  ADDW s7, s9, s5
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb37
bb39:
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb43
  JAL zero, bb44
bb40:
  ADDI s7, zero, 57
  SLT s8, s7, s5
  XORI s7, s8, 1
  ADD s8, s7, zero
  JAL zero, bb42
bb41:
  ADD s8, zero, zero
  JAL zero, bb42
bb42:
  ADD s7, s8, zero
  XOR s9, s7, zero
  SLTU s7, zero, s9
  BNE s7, zero, bb38
  JAL zero, bb39
bb43:
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
bb44:
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
bb45:
  ADD s5, s3, zero
  JAL zero, bb36
