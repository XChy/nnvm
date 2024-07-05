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
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, vis
  ADD s4, s2, s3
  ADDI s2, zero, 1
  SW s2, 0(s4)
  XOR s2, s0, s1
  SLTIU s3, s2, 1
  BNE s3, zero, bb1
  JAL zero, bb2
bb1:
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
bb2:
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, head
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADD s2, s0, zero
  JAL zero, bb3
bb3:
  ADDI s0, zero, 0
  ADDI s3, zero, 1
  SUBW s4, s0, s3
  XOR s0, s2, s4
  SLTU s3, zero, s0
  XOR s0, s3, zero
  SLTU s3, zero, s0
  BNE s3, zero, bb4
  JAL zero, bb5
bb4:
  ADDI s0, zero, 4
  MULW s3, s2, s0
  LA s0, to
  ADD s4, s0, s3
  LW s0, 0(s4)
  ADDI s3, zero, 4
  MULW s4, s0, s3
  LA s3, vis
  ADD s5, s3, s4
  LW s3, 0(s5)
  XOR s4, s3, zero
  SLTU s3, zero, s4
  XORI s4, s3, 1
  ADD s3, s4, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb6
  JAL zero, bb7
bb5:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb6:
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL same
  ADD s0, a0, zero
  XOR s3, s0, zero
  SLTU s0, zero, s3
  ADD s3, s0, zero
  JAL zero, bb8
bb7:
  ADD s3, zero, zero
  JAL zero, bb8
bb8:
  BNE s3, zero, bb9
  JAL zero, bb10
bb9:
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
bb10:
  ADDI s0, zero, 4
  MULW s4, s2, s0
  LA s0, next
  ADD s5, s0, s4
  LW s0, 0(s5)
  ADD s2, s0, zero
  JAL zero, bb3
init:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, zero, zero
  JAL zero, bb12
bb12:
  LA s1, maxn
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb13
  JAL zero, bb14
bb13:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, head
  ADD s3, s1, s2
  ADDI s1, zero, 1
  SUB s2, zero, s1
  SW s2, 0(s3)
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb12
bb14:
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
add_edge:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  LA s2, cnt
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  LA s2, to
  ADD s3, s2, s4
  SW s1, 0(s3)
  LA s2, cnt
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  LA s2, next
  ADD s3, s2, s4
  ADDI s2, zero, 4
  MULW s4, s0, s2
  LA s2, head
  ADD s5, s2, s4
  LW s2, 0(s5)
  SW s2, 0(s3)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, head
  ADD s4, s2, s3
  LA s2, cnt
  LW s3, 0(s2)
  SW s3, 0(s4)
  LA s2, cnt
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, cnt
  SW s2, 0(s3)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s2, to
  ADD s3, s2, s4
  SW s0, 0(s3)
  LA s0, cnt
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  LA s0, next
  ADD s2, s0, s3
  ADDI s0, zero, 4
  MULW s3, s1, s0
  LA s0, head
  ADD s4, s0, s3
  LW s0, 0(s4)
  SW s0, 0(s2)
  ADDI s0, zero, 4
  MULW s2, s1, s0
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
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
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
  JAL zero, bb17
bb17:
  LA s6, m
  LW s7, 0(s6)
  XOR s6, s7, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb18
  JAL zero, bb19
bb18:
  CALL getch
  ADD s6, a0, zero
  ADD t4, s6, zero
  SW t4, 0(sp)
  JAL zero, bb20
bb19:
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
bb20:
  LW t4, 0(sp)
  XORI s6, t4, 81
  SLTU s8, zero, s6
  BNE s8, zero, bb23
  JAL zero, bb24
bb21:
  CALL getch
  ADD s6, a0, zero
  ADD t4, s6, zero
  SW t4, 0(sp)
  JAL zero, bb20
bb22:
  LW t4, 0(sp)
  XORI s6, t4, 81
  SLTIU s8, s6, 1
  BNE s8, zero, bb26
  JAL zero, bb28
bb23:
  LW t4, 0(sp)
  XORI s6, t4, 85
  SLTU s8, zero, s6
  ADD s0, s8, zero
  JAL zero, bb25
bb24:
  ADD s0, zero, zero
  JAL zero, bb25
bb25:
  XOR s6, s0, zero
  SLTU s8, zero, s6
  BNE s8, zero, bb21
  JAL zero, bb22
bb26:
  CALL quick_read
  ADD s6, a0, zero
  CALL quick_read
  ADD s8, a0, zero
  CALL clear
  ADD a0, s6, zero
  ADD a1, s8, zero
  CALL same
  ADD s9, a0, zero
  ADD a0, s9, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD s9, s1, zero
  ADD s10, s6, zero
  ADD s6, s3, zero
  ADD s11, s8, zero
  JAL zero, bb27
bb27:
  LA s8, m
  LW s7, 0(s8)
  ADDI s8, zero, 1
  SUBW s4, s7, s8
  LA s7, m
  SW s4, 0(s7)
  ADD s1, s9, zero
  ADD s2, s10, zero
  ADD s3, s6, zero
  ADD t4, s11, zero
  SW t4, 8(sp)
  ADD s5, s0, zero
  JAL zero, bb17
bb28:
  CALL quick_read
  ADD s4, a0, zero
  CALL quick_read
  ADD s5, a0, zero
  ADD a0, s4, zero
  ADD a1, s5, zero
  CALL add_edge
  ADD s9, s5, zero
  ADD s10, s2, zero
  ADD s6, s4, zero
  LW t4, 8(sp)
  ADD s11, t4, zero
  JAL zero, bb27
clear:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADDI s0, zero, 1
  JAL zero, bb30
bb30:
  LA s1, n
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s2, s1, 1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb31
  JAL zero, bb32
bb31:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, vis
  ADD s3, s1, s2
  SW zero, 0(s3)
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb30
bb32:
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
  JAL zero, bb34
bb34:
  SLTI s0, s2, 48
  BNE s0, zero, bb37
  JAL zero, bb38
bb35:
  XORI s3, s2, 45
  SLTIU s4, s3, 1
  BNE s4, zero, bb40
  JAL zero, bb51
bb36:
  ADD s3, zero, zero
  ADD s4, s2, zero
  JAL zero, bb42
bb37:
  ADDI s0, zero, 1
  JAL zero, bb39
bb38:
  ADDI s3, zero, 57
  SLT s4, s3, s2
  XOR s3, s4, zero
  SLTU s4, zero, s3
  ADD s0, s4, zero
  JAL zero, bb39
bb39:
  XOR s3, s0, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb35
  JAL zero, bb36
bb40:
  ADDI s3, zero, 1
  JAL zero, bb41
bb41:
  CALL getch
  ADD s4, a0, zero
  ADD s1, s3, zero
  ADD s2, s4, zero
  JAL zero, bb34
bb42:
  SLTI s5, s4, 48
  XORI s6, s5, 1
  BNE s6, zero, bb45
  JAL zero, bb46
bb43:
  ADDI s5, zero, 10
  MULW s7, s3, s5
  ADDW s5, s7, s4
  ADDI s7, zero, 48
  SUBW s8, s5, s7
  CALL getch
  ADD s5, a0, zero
  ADD s3, s8, zero
  ADD s4, s5, zero
  JAL zero, bb42
bb44:
  XOR s5, s1, zero
  SLTU s7, zero, s5
  BNE s7, zero, bb48
  JAL zero, bb50
bb45:
  ADDI s5, zero, 57
  SLT s6, s5, s4
  XORI s5, s6, 1
  ADD s6, s5, zero
  JAL zero, bb47
bb46:
  ADD s6, zero, zero
  JAL zero, bb47
bb47:
  XOR s5, s6, zero
  SLTU s7, zero, s5
  BNE s7, zero, bb43
  JAL zero, bb44
bb48:
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
bb49:
bb50:
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
bb51:
  ADD s3, s1, zero
  JAL zero, bb41
