.global same
.global init
.global add_edge
.global main
.global clear
.global quick_read
.section .bss
vis:
.space 4020
head:
.space 4020
next:
.space 20020
to:
.space 20020





.section .data




maxm:
.word 0x0000138d
cnt:
.word 0x00000000
maxn:
.word 0x000003ed
m:
.word 0x00000000
n:
.word 0x00000000
.section .text
same:
  ADDI sp, sp, -80
  SD s3, 40(sp)
  SD ra, 48(sp)
  SD s2, 56(sp)
  SD s1, 64(sp)
  SD s0, 72(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 32(sp)
  SW s1, 24(sp)
  LW s0, 32(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, vis
  ADD s1, s0, s2
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LW s0, 32(sp)
  LW s1, 24(sp)
  XOR s2, s0, s1
  SLTIU s0, s2, 1
  BNE s0, zero, bb1
  JAL zero, bb2
bb1:
  ADDI a0, zero, 1
  LD s3, 40(sp)
  LD ra, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb2:
  LW s0, 32(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, head
  ADD s1, s0, s2
  LW s0, 0(s1)
  SW s0, 16(sp)
  JAL zero, bb3
bb3:
  LW s0, 16(sp)
  ADDI s1, zero, 0
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  XOR s1, s0, s3
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb4
  JAL zero, bb5
bb4:
  LW s0, 16(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, to
  ADD s1, s0, s2
  LW s0, 0(s1)
  SW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, vis
  ADD s1, s0, s2
  LW s0, 0(s1)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb6
  JAL zero, bb7
bb5:
  ADD a0, zero, zero
  LD s3, 40(sp)
  LD ra, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb6:
  LW s0, 8(sp)
  LW s1, 24(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL same
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 0(sp)
  JAL zero, bb8
bb7:
  SB zero, 0(sp)
  JAL zero, bb8
bb8:
  LB s0, 0(sp)
  BNE s0, zero, bb9
  JAL zero, bb10
bb9:
  ADDI a0, zero, 1
  LD s3, 40(sp)
  LD ra, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb10:
  LW s0, 16(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, next
  ADD s1, s0, s2
  LW s0, 0(s1)
  SW s0, 16(sp)
  JAL zero, bb3
init:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  SW zero, 0(sp)
  JAL zero, bb12
bb12:
  LW s0, 0(sp)
  LA s1, maxn
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb13
  JAL zero, bb14
bb13:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, head
  ADD s1, s0, s2
  ADDI s0, zero, 1
  SUB s2, zero, s0
  SW s2, 0(s1)
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb12
bb14:
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
add_edge:
  ADDI sp, sp, -64
  SD ra, 16(sp)
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD s1, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 8(sp)
  SW s1, 0(sp)
  LA s0, cnt
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  LA s0, to
  ADD s2, s0, s3
  SW s1, 0(s2)
  LA s0, cnt
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, next
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, head
  ADD s2, s0, s3
  LW s0, 0(s2)
  SW s0, 0(s1)
  LW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, head
  ADD s1, s0, s2
  LA s0, cnt
  LW s2, 0(s0)
  SW s2, 0(s1)
  LA s0, cnt
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, cnt
  SW s0, 0(s1)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, to
  ADD s1, s0, s2
  LW s0, 8(sp)
  SW s0, 0(s1)
  LA s0, cnt
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, next
  ADD s1, s0, s2
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, head
  ADD s2, s0, s3
  LW s0, 0(s2)
  SW s0, 0(s1)
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, head
  ADD s1, s0, s2
  LA s0, cnt
  LW s2, 0(s0)
  SW s2, 0(s1)
  LA s0, cnt
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, cnt
  SW s0, 0(s1)
  LD ra, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -80
  SD s2, 48(sp)
  SD ra, 56(sp)
  SD s1, 64(sp)
  SD s0, 72(sp)
  CALL quick_read
  ADD s0, a0, zero
  LA s1, n
  SW s0, 0(s1)
  CALL quick_read
  ADD s0, a0, zero
  LA s1, m
  SW s0, 0(s1)
  CALL init
  JAL zero, bb17
bb17:
  LA s0, m
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb18
  JAL zero, bb19
bb18:
  CALL getch
  ADD s0, a0, zero
  SW s0, 40(sp)
  JAL zero, bb20
bb19:
  ADD a0, zero, zero
  LD s2, 48(sp)
  LD ra, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb20:
  LW s0, 40(sp)
  XORI s1, s0, 81
  SLTU s0, zero, s1
  BNE s0, zero, bb23
  JAL zero, bb24
bb21:
  CALL getch
  ADD s0, a0, zero
  SW s0, 40(sp)
  JAL zero, bb20
bb22:
  LW s0, 40(sp)
  XORI s1, s0, 81
  SLTIU s0, s1, 1
  BNE s0, zero, bb26
  JAL zero, bb28
bb23:
  LW s0, 40(sp)
  XORI s1, s0, 85
  SLTU s0, zero, s1
  SB s0, 32(sp)
  JAL zero, bb25
bb24:
  SB zero, 32(sp)
  JAL zero, bb25
bb25:
  LB s0, 32(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb21
  JAL zero, bb22
bb26:
  CALL quick_read
  ADD s0, a0, zero
  SW s0, 24(sp)
  CALL quick_read
  ADD s0, a0, zero
  SW s0, 16(sp)
  CALL clear
  LW s0, 24(sp)
  LW s1, 16(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL same
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb27
bb27:
  LA s0, m
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  LA s0, m
  SW s2, 0(s0)
  JAL zero, bb17
bb28:
  CALL quick_read
  ADD s0, a0, zero
  SW s0, 8(sp)
  CALL quick_read
  ADD s0, a0, zero
  SW s0, 0(sp)
  LW s1, 8(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL add_edge
  JAL zero, bb27
clear:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADDI s0, zero, 1
  SW s0, 0(sp)
  JAL zero, bb30
bb30:
  LW s0, 0(sp)
  LA s1, n
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb31
  JAL zero, bb32
bb31:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, vis
  ADD s1, s0, s2
  SW zero, 0(s1)
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb30
bb32:
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
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
  JAL zero, bb34
bb34:
  LW s0, 32(sp)
  SLTI s1, s0, 48
  BNE s1, zero, bb37
  JAL zero, bb38
bb35:
  LW s0, 32(sp)
  XORI s1, s0, 45
  SLTIU s0, s1, 1
  BNE s0, zero, bb40
  JAL zero, bb41
bb36:
  JAL zero, bb42
bb37:
  ADDI s0, zero, 1
  SB s0, 8(sp)
  JAL zero, bb39
bb38:
  LW s0, 32(sp)
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 8(sp)
  JAL zero, bb39
bb39:
  LB s0, 8(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb35
  JAL zero, bb36
bb40:
  ADDI s0, zero, 1
  SW s0, 16(sp)
  JAL zero, bb41
bb41:
  CALL getch
  ADD s0, a0, zero
  SW s0, 32(sp)
  JAL zero, bb34
bb42:
  LW s0, 32(sp)
  SLTI s1, s0, 48
  XORI s0, s1, 1
  BNE s0, zero, bb45
  JAL zero, bb46
bb43:
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
  JAL zero, bb42
bb44:
  LW s0, 16(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb48
  JAL zero, bb50
bb45:
  LW s0, 32(sp)
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XORI s0, s2, 1
  SB s0, 0(sp)
  JAL zero, bb47
bb46:
  SB zero, 0(sp)
  JAL zero, bb47
bb47:
  LB s0, 0(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb43
  JAL zero, bb44
bb48:
  LW s0, 24(sp)
  SUB s1, zero, s0
  ADD a0, s1, zero
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb49:
bb50:
  LW s0, 24(sp)
  ADD a0, s0, zero
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
