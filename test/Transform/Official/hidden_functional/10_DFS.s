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
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
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
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
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
  ADD s0, s2, zero
  XORI s3, s0, -1
  SLTU s4, zero, s3
  XOR s3, s4, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb4
  JAL zero, bb5
bb4:
  ADDI s3, zero, 4
  MULW s4, s0, s3
  LA s3, to
  ADD s5, s3, s4
  LW s3, 0(s5)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LA s4, vis
  ADD s6, s4, s5
  LW s4, 0(s6)
  XOR s5, s4, zero
  SLTU s4, zero, s5
  XORI s5, s4, 1
  ADD s4, s5, zero
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb6
  JAL zero, bb7
bb5:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb6:
  ADD a0, s3, zero
  ADD a1, s1, zero
  CALL same
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  ADD s4, s3, zero
  JAL zero, bb8
bb7:
  ADD s4, zero, zero
  JAL zero, bb8
bb8:
  ADD s3, s4, zero
  BNE s3, zero, bb9
  JAL zero, bb10
bb9:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb10:
  ADDI s3, zero, 4
  MULW s5, s0, s3
  LA s3, next
  ADD s6, s3, s5
  LW s3, 0(s6)
  ADD s2, s3, zero
  JAL zero, bb3
init:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, zero, zero
  JAL zero, bb12
bb12:
  ADD s1, s0, zero
  LA s2, maxn
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb13
  JAL zero, bb14
bb13:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, head
  ADD s4, s2, s3
  ADDI s2, zero, -1
  SW s2, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb12
bb14:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
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
  JAL zero, bb17
bb17:
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
  BNE s9, zero, bb18
  JAL zero, bb19
bb18:
  CALL getch
  ADD s8, a0, zero
  ADD s9, s8, zero
  JAL zero, bb20
bb19:
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
bb20:
  ADD t4, s9, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  XORI s10, t4, 81
  SLTU s11, zero, s10
  BNE s11, zero, bb23
  JAL zero, bb24
bb21:
  CALL getch
  ADD s8, a0, zero
  ADD s9, s8, zero
  JAL zero, bb20
bb22:
  LW t4, 0(sp)
  XORI s8, t4, 81
  SLTIU s9, s8, 1
  BNE s9, zero, bb26
  JAL zero, bb28
bb23:
  LW t4, 0(sp)
  XORI s10, t4, 85
  SLTU s11, zero, s10
  ADD t4, s11, zero
  SB t4, 40(sp)
  JAL zero, bb25
bb24:
  ADD t4, zero, zero
  SB t4, 40(sp)
  JAL zero, bb25
bb25:
  LB t4, 40(sp)
  ADD s11, t4, zero
  XOR s8, s11, zero
  SLTU s11, zero, s8
  BNE s11, zero, bb21
  JAL zero, bb22
bb26:
  CALL quick_read
  ADD s8, a0, zero
  CALL quick_read
  ADD s9, a0, zero
  CALL clear
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
  ADD t4, s8, zero
  SW t4, 64(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  ADD t4, s9, zero
  SW t4, 48(sp)
  JAL zero, bb27
bb27:
  LW t4, 48(sp)
  ADD s9, t4, zero
  LW t4, 56(sp)
  ADD s5, t4, zero
  LW t4, 64(sp)
  ADD s4, t4, zero
  ADD s10, s11, zero
  LA s6, m
  LW s8, 0(s6)
  ADDI s6, zero, 1
  SUBW s7, s8, s6
  LA s6, m
  SW s7, 0(s6)
  ADD s0, s10, zero
  ADD s1, s4, zero
  ADD s2, s5, zero
  ADD s3, s9, zero
  JAL zero, bb17
bb28:
  CALL quick_read
  ADD s0, a0, zero
  CALL quick_read
  ADD s1, a0, zero
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL add_edge
  ADD s11, s1, zero
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  ADD t4, s0, zero
  SW t4, 56(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb27
clear:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADDI s0, zero, 1
  JAL zero, bb30
bb30:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb31
  JAL zero, bb32
bb31:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, vis
  ADD s4, s2, s3
  SW zero, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb30
bb32:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
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
  JAL zero, bb34
bb34:
  ADD s0, s2, zero
  ADD s3, s1, zero
  SLTI s4, s0, 48
  BNE s4, zero, bb37
  JAL zero, bb38
bb35:
  XORI s5, s0, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb40
  JAL zero, bb51
bb36:
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb42
bb37:
  ADDI s4, zero, 1
  JAL zero, bb39
bb38:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XOR s1, s2, zero
  SLTU s2, zero, s1
  ADD s4, s2, zero
  JAL zero, bb39
bb39:
  ADD s5, s4, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb35
  JAL zero, bb36
bb40:
  ADDI s5, zero, 1
  JAL zero, bb41
bb41:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb34
bb42:
  ADD s5, s2, zero
  ADD s6, s1, zero
  SLTI s7, s5, 48
  XORI s8, s7, 1
  BNE s8, zero, bb45
  JAL zero, bb46
bb43:
  ADDI s7, zero, 10
  MULW s9, s6, s7
  ADDW s7, s9, s5
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb42
bb44:
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb48
  JAL zero, bb50
bb45:
  ADDI s7, zero, 57
  SLT s8, s7, s5
  XORI s7, s8, 1
  ADD s8, s7, zero
  JAL zero, bb47
bb46:
  ADD s8, zero, zero
  JAL zero, bb47
bb47:
  ADD s7, s8, zero
  XOR s9, s7, zero
  SLTU s7, zero, s9
  BNE s7, zero, bb43
  JAL zero, bb44
bb48:
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
bb49:
bb50:
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
bb51:
  ADD s5, s3, zero
  JAL zero, bb41
