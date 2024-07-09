.global LCA
.global init
.global tree
.global add_edge
.global main
.global quick_read
.section .bss
head:
.space 40020
next:
.space 40020
to:
.space 40020
dep:
.space 40020
f:
.space 800400




.section .data





n:
.word 0x00000000
cnt:
.word 0x00000000
m:
.word 0x00000000
maxn:
.word 0x00002715
.section .text
LCA:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s11, 8(sp)
  SD s10, 16(sp)
  SD s0, 24(sp)
  SD s5, 32(sp)
  SD s7, 40(sp)
  SD s1, 48(sp)
  SD s6, 56(sp)
  SD s8, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD s9, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, dep
  ADD s4, s2, s3
  LW s2, 0(s4)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  LA s3, dep
  ADD s5, s3, s4
  LW s3, 0(s5)
  SLT s4, s2, s3
  BNE s4, zero, bb1
  JAL zero, bb18
bb1:
  ADD s2, s0, zero
  ADD s3, s1, zero
  JAL zero, bb2
bb2:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADDI s6, zero, 19
  ADD s7, s4, zero
  JAL zero, bb3
bb3:
  ADD s4, s7, zero
  ADD s8, s6, zero
  ADDI s9, zero, 4
  MULW s10, s4, s9
  LA s9, dep
  ADD s11, s9, s10
  LW s9, 0(s11)
  ADDI s10, zero, 4
  MULW s11, s5, s10
  LA s10, dep
  ADD t0, s10, s11
  LW s10, 0(t0)
  SLT s11, s10, s9
  BNE s11, zero, bb4
  JAL zero, bb5
bb4:
  ADDI s9, zero, 80
  MULW s10, s4, s9
  LA s9, f
  ADD s11, s9, s10
  ADDI s9, zero, 4
  MULW s10, s8, s9
  ADD s9, s11, s10
  LW s10, 0(s9)
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb6
  JAL zero, bb7
bb5:
  XOR s6, s4, s5
  SLTIU s7, s6, 1
  BNE s7, zero, bb11
  JAL zero, bb12
bb6:
  LW s10, 0(s9)
  ADDI s11, zero, 4
  MULW t1, s10, s11
  LA s10, dep
  ADD s11, s10, t1
  LW s10, 0(s11)
  LW s11, 0(t0)
  SLT t0, s10, s11
  XORI s10, t0, 1
  ADD s11, s10, zero
  JAL zero, bb8
bb7:
  ADD s11, zero, zero
  JAL zero, bb8
bb8:
  ADD s10, s11, zero
  BNE s10, zero, bb9
  JAL zero, bb19
bb9:
  LW s10, 0(s9)
  ADD t0, s10, zero
  JAL zero, bb10
bb10:
  ADD s10, t0, zero
  ADDI t1, zero, 1
  SUBW t2, s8, t1
  ADD s6, t2, zero
  ADD s7, s10, zero
  JAL zero, bb3
bb11:
  ADD a0, s4, zero
  LD ra, 0(sp)
  LD s11, 8(sp)
  LD s10, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s7, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s8, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s9, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb12:
  ADDI s6, zero, 19
  ADD s7, s5, zero
  ADD s5, s4, zero
  JAL zero, bb13
bb13:
  ADD s4, s5, zero
  ADD s8, s7, zero
  ADD s9, s6, zero
  SLT s10, s9, zero
  XORI s11, s10, 1
  BNE s11, zero, bb14
  JAL zero, bb15
bb14:
  ADDI s10, zero, 80
  MULW s11, s4, s10
  LA s10, f
  ADD t0, s10, s11
  ADDI s10, zero, 4
  MULW s11, s9, s10
  ADD s10, t0, s11
  LW t0, 0(s10)
  ADDI t1, zero, 80
  MULW t2, s8, t1
  LA t1, f
  ADD a1, t1, t2
  ADD t1, a1, s11
  LW s11, 0(t1)
  XOR t2, t0, s11
  SLTU s11, zero, t2
  BNE s11, zero, bb16
  JAL zero, bb20
bb15:
  ADDI s5, zero, 80
  MULW s6, s4, s5
  LA s4, f
  ADD s5, s4, s6
  LW s4, 0(s5)
  ADD a0, s4, zero
  LD ra, 0(sp)
  LD s11, 8(sp)
  LD s10, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s7, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s8, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s9, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb16:
  LW s11, 0(s10)
  LW s10, 0(t1)
  ADD t0, s10, zero
  ADD s10, s11, zero
  JAL zero, bb17
bb17:
  ADD s11, s10, zero
  ADD t1, t0, zero
  ADDI t2, zero, 1
  SUBW a1, s9, t2
  ADD s6, a1, zero
  ADD s7, t1, zero
  ADD s5, s11, zero
  JAL zero, bb13
bb18:
  ADD s2, s1, zero
  ADD s3, s0, zero
  JAL zero, bb2
bb19:
  ADD t0, s4, zero
  JAL zero, bb10
bb20:
  ADD t0, s8, zero
  ADD s10, s4, zero
  JAL zero, bb17
init:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  LA s0, dep
  LUI s1, 259060
  ADDIW s1, s1, -193
  SW s1, 0(s0)
  ADDI s0, zero, 1
  JAL zero, bb22
bb22:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb23
  JAL zero, bb24
bb23:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, head
  ADD s4, s2, s3
  ADDI s2, zero, -1
  SW s2, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb22
bb24:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
tree:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s7, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s8, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s9, 80(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, dep
  ADD s4, s2, s3
  SW s1, 0(s4)
  ADD s2, zero, zero
  JAL zero, bb26
bb26:
  ADD s4, s2, zero
  ADDI s5, zero, 80
  MULW s6, s0, s5
  LA s5, f
  ADD s7, s5, s6
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s5, s7, s6
  LW s8, 0(s5)
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb27
  JAL zero, bb28
bb27:
  ADDIW s8, s4, 1
  ADDI s4, zero, 4
  MULW s9, s8, s4
  ADD s4, s7, s9
  LW s7, 0(s5)
  ADDI s5, zero, 80
  MULW s9, s7, s5
  LA s5, f
  ADD s7, s5, s9
  ADD s5, s7, s6
  LW s6, 0(s5)
  SW s6, 0(s4)
  ADD s2, s8, zero
  JAL zero, bb26
bb28:
  LA s0, head
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADD s2, s0, zero
  JAL zero, bb29
bb29:
  ADD s0, s2, zero
  XORI s3, s0, -1
  SLTU s4, zero, s3
  BNE s4, zero, bb30
  JAL zero, bb31
bb30:
  ADDI s3, zero, 4
  MULW s4, s0, s3
  LA s0, to
  ADD s3, s0, s4
  LW s0, 0(s3)
  ADDIW s3, s1, 1
  ADD a0, s0, zero
  ADD a1, s3, zero
  CALL tree
  LA s0, next
  ADD s3, s0, s4
  LW s0, 0(s3)
  ADD s2, s0, zero
  JAL zero, bb29
bb31:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s8, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s9, 80(sp)
  ADDI sp, sp, 96
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
  LA s2, cnt
  LW s3, 0(s2)
  SW s3, 0(s5)
  LA s2, cnt
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, cnt
  SW s2, 0(s3)
  ADDI s2, zero, 80
  MULW s3, s1, s2
  LA s1, f
  ADD s2, s1, s3
  SW s0, 0(s2)
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
  ADDI sp, sp, -432
  SD ra, 328(sp)
  SD s11, 336(sp)
  SD s4, 344(sp)
  SD s0, 352(sp)
  SD s5, 360(sp)
  SD s7, 368(sp)
  SD s10, 376(sp)
  SD s1, 384(sp)
  SD s6, 392(sp)
  SD s2, 400(sp)
  SD s9, 408(sp)
  SD s8, 416(sp)
  SD s3, 424(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb67
bb34:
  LW t4, 48(sp)
  ADD s1, t4, zero
  LA s7, n
  SW s1, 0(s7)
  CALL getch
  ADD s1, a0, zero
  ADD s7, zero, zero
  ADD s9, s1, zero
  JAL zero, bb83
bb35:
  LW t4, 104(sp)
  ADD s0, t4, zero
  LA s5, m
  SW s0, 0(s5)
  LA s0, dep
  LUI s5, 259060
  ADDIW s5, s5, -193
  SW s5, 0(s0)
  ADDI s0, zero, 1
  JAL zero, bb64
bb36:
  ADD t4, s0, zero
  SW t4, 128(sp)
  LA s5, n
  LW s6, 0(s5)
  LW t4, 128(sp)
  XOR s5, t4, s6
  SLTU s6, zero, s5
  BNE s6, zero, bb37
  JAL zero, bb40
bb37:
  CALL getch
  ADD s5, a0, zero
  ADD s6, zero, zero
  ADD s8, s5, zero
  JAL zero, bb99
bb38:
  LW t4, 168(sp)
  ADD s3, t4, zero
  CALL getch
  ADD s6, a0, zero
  ADD s9, zero, zero
  ADD s10, s6, zero
  JAL zero, bb115
bb39:
  ADD s1, s4, zero
  LA s5, cnt
  LW s7, 0(s5)
  ADDI s5, zero, 4
  MULW s10, s7, s5
  LA s5, to
  ADD s7, s5, s10
  SW s1, 0(s7)
  LA s5, cnt
  LW s7, 0(s5)
  ADDI s5, zero, 4
  MULW s10, s7, s5
  LA s5, next
  ADD s7, s5, s10
  ADDI s5, zero, 4
  MULW s10, s3, s5
  LA s5, head
  ADD s6, s5, s10
  LW s5, 0(s6)
  SW s5, 0(s7)
  LA s5, cnt
  LW s7, 0(s5)
  SW s7, 0(s6)
  LA s5, cnt
  LW s6, 0(s5)
  ADDIW s5, s6, 1
  LA s6, cnt
  SW s5, 0(s6)
  ADDI s5, zero, 80
  MULW s6, s1, s5
  LA s1, f
  ADD s5, s1, s6
  SW s3, 0(s5)
  LW t4, 128(sp)
  ADDIW s1, t4, 1
  ADD s0, s1, zero
  JAL zero, bb36
bb40:
  ADDI a0, zero, 1
  ADDI a1, zero, 1
  CALL tree
  JAL zero, bb41
bb41:
  LA s0, m
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb42
  JAL zero, bb46
bb42:
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb131
bb43:
  LW t3, 240(sp)
  ADD t4, t3, zero
  SW t4, 264(sp)
  CALL getch
  ADD s7, a0, zero
  ADD s9, zero, zero
  ADD s10, s7, zero
  JAL zero, bb147
bb44:
  LW t4, 304(sp)
  ADD s0, t4, zero
  ADDI s4, zero, 4
  LW t4, 264(sp)
  MULW s5, t4, s4
  LA s4, dep
  ADD s8, s4, s5
  LW s4, 0(s8)
  ADDI s5, zero, 4
  MULW s8, s0, s5
  LA s5, dep
  ADD s11, s5, s8
  LW s5, 0(s11)
  SLT s8, s4, s5
  BNE s8, zero, bb47
  JAL zero, bb163
bb45:
  ADD s2, s1, zero
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s2, m
  LW s3, 0(s2)
  ADDI s2, zero, 1
  SUBW s4, s3, s2
  LA s2, m
  SW s4, 0(s2)
  JAL zero, bb41
bb46:
  ADD a0, zero, zero
  LD ra, 328(sp)
  LD s11, 336(sp)
  LD s4, 344(sp)
  LD s0, 352(sp)
  LD s5, 360(sp)
  LD s7, 368(sp)
  LD s10, 376(sp)
  LD s1, 384(sp)
  LD s6, 392(sp)
  LD s2, 400(sp)
  LD s9, 408(sp)
  LD s8, 416(sp)
  LD s3, 424(sp)
  ADDI sp, sp, 432
  JALR zero, 0(ra)
bb47:
  LW t3, 264(sp)
  ADD t4, t3, zero
  SW t4, 320(sp)
  ADD t4, s0, zero
  SW t4, 312(sp)
  JAL zero, bb48
bb48:
  LW t4, 312(sp)
  ADD s8, t4, zero
  LW t4, 320(sp)
  ADD s11, t4, zero
  ADDI s7, zero, 19
  ADD s1, s8, zero
  JAL zero, bb49
bb49:
  ADD s8, s1, zero
  ADD s3, s7, zero
  ADDI s9, zero, 4
  MULW s6, s8, s9
  LA s9, dep
  ADD s10, s9, s6
  LW s6, 0(s10)
  ADDI s9, zero, 4
  MULW s10, s11, s9
  LA s9, dep
  ADD s2, s9, s10
  LW s9, 0(s2)
  SLT s10, s9, s6
  BNE s10, zero, bb50
  JAL zero, bb51
bb50:
  ADDI s6, zero, 80
  MULW s9, s8, s6
  LA s6, f
  ADD s10, s6, s9
  ADDI s6, zero, 4
  MULW s9, s3, s6
  ADD s6, s10, s9
  LW s9, 0(s6)
  XOR s10, s9, zero
  SLTU s9, zero, s10
  BNE s9, zero, bb52
  JAL zero, bb53
bb51:
  XOR s1, s8, s11
  SLTIU s2, s1, 1
  BNE s2, zero, bb57
  JAL zero, bb58
bb52:
  LW s9, 0(s6)
  ADDI s10, zero, 4
  MULW s5, s9, s10
  LA s9, dep
  ADD s10, s9, s5
  LW s5, 0(s10)
  LW s9, 0(s2)
  SLT s2, s5, s9
  XORI s5, s2, 1
  ADD s2, s5, zero
  JAL zero, bb54
bb53:
  ADD s2, zero, zero
  JAL zero, bb54
bb54:
  ADD s5, s2, zero
  BNE s5, zero, bb55
  JAL zero, bb164
bb55:
  LW s5, 0(s6)
  ADD s9, s5, zero
  JAL zero, bb56
bb56:
  ADD s5, s9, zero
  ADDI s10, zero, 1
  SUBW s4, s3, s10
  ADD s7, s4, zero
  ADD s1, s5, zero
  JAL zero, bb49
bb57:
  ADD s1, s8, zero
  JAL zero, bb45
bb58:
  ADDI s2, zero, 19
  ADD s3, s11, zero
  ADD s4, s8, zero
  JAL zero, bb59
bb59:
  ADD s5, s4, zero
  ADD s6, s3, zero
  ADD s7, s2, zero
  SLT s8, s7, zero
  XORI s9, s8, 1
  BNE s9, zero, bb60
  JAL zero, bb61
bb60:
  ADDI s8, zero, 80
  MULW s9, s5, s8
  LA s8, f
  ADD s10, s8, s9
  ADDI s8, zero, 4
  MULW s9, s7, s8
  ADD s8, s10, s9
  LW s10, 0(s8)
  ADDI s11, zero, 80
  MULW t0, s6, s11
  LA s11, f
  ADD t1, s11, t0
  ADD s11, t1, s9
  LW s9, 0(s11)
  XOR t0, s10, s9
  SLTU s9, zero, t0
  BNE s9, zero, bb62
  JAL zero, bb165
bb61:
  ADDI s2, zero, 80
  MULW s3, s5, s2
  LA s2, f
  ADD s4, s2, s3
  LW s2, 0(s4)
  ADD s1, s2, zero
  JAL zero, bb45
bb62:
  LW s9, 0(s8)
  LW s8, 0(s11)
  ADD s10, s8, zero
  ADD s8, s9, zero
  JAL zero, bb63
bb63:
  ADD s9, s8, zero
  ADD s11, s10, zero
  ADDI t0, zero, 1
  SUBW t1, s7, t0
  ADD s2, t1, zero
  ADD s3, s11, zero
  ADD s4, s9, zero
  JAL zero, bb59
bb64:
  ADD s5, s0, zero
  LA s6, n
  LW s8, 0(s6)
  SLT s6, s8, s5
  XORI s8, s6, 1
  BNE s8, zero, bb65
  JAL zero, bb66
bb65:
  ADDI s6, zero, 4
  MULW s8, s5, s6
  LA s6, head
  ADD s2, s6, s8
  ADDI s6, zero, -1
  SW s6, 0(s2)
  ADDIW s2, s5, 1
  ADD s0, s2, zero
  JAL zero, bb64
bb66:
  ADDI s0, zero, 1
  JAL zero, bb36
bb67:
  ADD t4, s2, zero
  SW t4, 8(sp)
  ADD t4, s1, zero
  SW t4, 0(sp)
  LW t4, 8(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb70
  JAL zero, bb71
bb68:
  LW t4, 8(sp)
  XORI s5, t4, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb73
  JAL zero, bb166
bb69:
  ADD s1, zero, zero
  LW t4, 8(sp)
  ADD s2, t4, zero
  JAL zero, bb75
bb70:
  ADDI t4, zero, 1
  SB t4, 16(sp)
  JAL zero, bb72
bb71:
  ADDI s0, zero, 57
  LW t4, 8(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 16(sp)
  JAL zero, bb72
bb72:
  LB t4, 16(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb68
  JAL zero, bb69
bb73:
  ADDI s5, zero, 1
  JAL zero, bb74
bb74:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb67
bb75:
  ADD t4, s2, zero
  SW t4, 32(sp)
  ADD t4, s1, zero
  SW t4, 24(sp)
  LW t4, 32(sp)
  SLTI s7, t4, 48
  XORI s8, s7, 1
  BNE s8, zero, bb78
  JAL zero, bb79
bb76:
  ADDI s7, zero, 10
  LW t4, 24(sp)
  MULW s9, t4, s7
  LW t4, 32(sp)
  ADDW s7, s9, t4
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb75
bb77:
  LW t4, 0(sp)
  XOR s1, t4, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb81
  JAL zero, bb82
bb78:
  ADDI s7, zero, 57
  LW t4, 32(sp)
  SLT s8, s7, t4
  XORI s7, s8, 1
  ADD t4, s7, zero
  SB t4, 40(sp)
  JAL zero, bb80
bb79:
  ADD t4, zero, zero
  SB t4, 40(sp)
  JAL zero, bb80
bb80:
  LB t4, 40(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb76
  JAL zero, bb77
bb81:
  LW t4, 24(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 48(sp)
  JAL zero, bb34
bb82:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb34
bb83:
  ADD t4, s9, zero
  SW t4, 64(sp)
  ADD t4, s7, zero
  SW t4, 56(sp)
  LW t4, 64(sp)
  SLTI s11, t4, 48
  BNE s11, zero, bb86
  JAL zero, bb87
bb84:
  LW t4, 64(sp)
  XORI s3, t4, 45
  SLTIU s0, s3, 1
  BNE s0, zero, bb89
  JAL zero, bb167
bb85:
  ADD s0, zero, zero
  LW t4, 64(sp)
  ADD s3, t4, zero
  JAL zero, bb91
bb86:
  ADDI t4, zero, 1
  SB t4, 72(sp)
  JAL zero, bb88
bb87:
  ADDI s0, zero, 57
  LW t4, 64(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 72(sp)
  JAL zero, bb88
bb88:
  LB t4, 72(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb84
  JAL zero, bb85
bb89:
  ADDI s0, zero, 1
  JAL zero, bb90
bb90:
  ADD s3, s0, zero
  CALL getch
  ADD s4, a0, zero
  ADD s7, s3, zero
  ADD s9, s4, zero
  JAL zero, bb83
bb91:
  ADD t4, s3, zero
  SW t4, 88(sp)
  ADD t4, s0, zero
  SW t4, 80(sp)
  LW t4, 88(sp)
  SLTI s9, t4, 48
  XORI s6, s9, 1
  BNE s6, zero, bb94
  JAL zero, bb95
bb92:
  ADDI s6, zero, 10
  LW t4, 80(sp)
  MULW s5, t4, s6
  LW t4, 88(sp)
  ADDW s6, s5, t4
  ADDI s5, zero, 48
  SUBW s8, s6, s5
  CALL getch
  ADD s5, a0, zero
  ADD s0, s8, zero
  ADD s3, s5, zero
  JAL zero, bb91
bb93:
  LW t4, 56(sp)
  XOR s0, t4, zero
  SLTU s3, zero, s0
  BNE s3, zero, bb97
  JAL zero, bb98
bb94:
  ADDI s6, zero, 57
  LW t4, 88(sp)
  SLT s9, s6, t4
  XORI s6, s9, 1
  ADD t4, s6, zero
  SB t4, 96(sp)
  JAL zero, bb96
bb95:
  ADD t4, zero, zero
  SB t4, 96(sp)
  JAL zero, bb96
bb96:
  LB t4, 96(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb92
  JAL zero, bb93
bb97:
  LW t4, 80(sp)
  SUB s0, zero, t4
  ADD t4, s0, zero
  SW t4, 104(sp)
  JAL zero, bb35
bb98:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  JAL zero, bb35
bb99:
  ADD t4, s8, zero
  SW t4, 120(sp)
  ADD t4, s6, zero
  SW t4, 112(sp)
  LW t4, 120(sp)
  SLTI s1, t4, 48
  BNE s1, zero, bb102
  JAL zero, bb103
bb100:
  LW t4, 120(sp)
  XORI s11, t4, 45
  SLTIU s7, s11, 1
  BNE s7, zero, bb105
  JAL zero, bb168
bb101:
  ADD s4, zero, zero
  LW t4, 120(sp)
  ADD s6, t4, zero
  JAL zero, bb107
bb102:
  ADDI t4, zero, 1
  SB t4, 136(sp)
  JAL zero, bb104
bb103:
  ADDI s0, zero, 57
  LW t4, 120(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 136(sp)
  JAL zero, bb104
bb104:
  LB t4, 136(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb100
  JAL zero, bb101
bb105:
  ADDI s7, zero, 1
  JAL zero, bb106
bb106:
  ADD s11, s7, zero
  CALL getch
  ADD s4, a0, zero
  ADD s6, s11, zero
  ADD s8, s4, zero
  JAL zero, bb99
bb107:
  ADD t4, s6, zero
  SW t4, 152(sp)
  ADD t4, s4, zero
  SW t4, 144(sp)
  LW t4, 152(sp)
  SLTI s11, t4, 48
  XORI s9, s11, 1
  BNE s9, zero, bb110
  JAL zero, bb111
bb108:
  ADDI s9, zero, 10
  LW t4, 144(sp)
  MULW s3, t4, s9
  LW t4, 152(sp)
  ADDW s9, s3, t4
  ADDI s3, zero, 48
  SUBW s10, s9, s3
  CALL getch
  ADD s3, a0, zero
  ADD s4, s10, zero
  ADD s6, s3, zero
  JAL zero, bb107
bb109:
  LW t4, 112(sp)
  XOR s3, t4, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb113
  JAL zero, bb114
bb110:
  ADDI s9, zero, 57
  LW t4, 152(sp)
  SLT s11, s9, t4
  XORI s9, s11, 1
  ADD t4, s9, zero
  SB t4, 160(sp)
  JAL zero, bb112
bb111:
  ADD t4, zero, zero
  SB t4, 160(sp)
  JAL zero, bb112
bb112:
  LB t4, 160(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb108
  JAL zero, bb109
bb113:
  LW t4, 144(sp)
  SUB s3, zero, t4
  ADD t4, s3, zero
  SW t4, 168(sp)
  JAL zero, bb38
bb114:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  JAL zero, bb38
bb115:
  ADD t4, s10, zero
  SW t4, 184(sp)
  ADD t4, s9, zero
  SW t4, 176(sp)
  LW t4, 184(sp)
  SLTI s2, t4, 48
  BNE s2, zero, bb118
  JAL zero, bb119
bb116:
  LW t4, 184(sp)
  XORI s1, t4, 45
  SLTIU s8, s1, 1
  BNE s8, zero, bb121
  JAL zero, bb169
bb117:
  ADD s1, zero, zero
  LW t4, 184(sp)
  ADD s7, t4, zero
  JAL zero, bb123
bb118:
  ADDI s2, zero, 1
  JAL zero, bb120
bb119:
  ADDI s0, zero, 57
  LW t4, 184(sp)
  SLT s1, s0, t4
  ADD s2, s1, zero
  JAL zero, bb120
bb120:
  ADD s1, s2, zero
  BNE s1, zero, bb116
  JAL zero, bb117
bb121:
  ADDI s1, zero, 1
  JAL zero, bb122
bb122:
  ADD s8, s1, zero
  CALL getch
  ADD s7, a0, zero
  ADD s9, s8, zero
  ADD s10, s7, zero
  JAL zero, bb115
bb123:
  ADD s8, s7, zero
  ADD s9, s1, zero
  SLTI s10, s8, 48
  XORI s11, s10, 1
  BNE s11, zero, bb126
  JAL zero, bb127
bb124:
  ADDI s10, zero, 10
  MULW s4, s9, s10
  ADDW s10, s4, s8
  ADDI s4, zero, 48
  SUBW s5, s10, s4
  CALL getch
  ADD s4, a0, zero
  ADD s1, s5, zero
  ADD s7, s4, zero
  JAL zero, bb123
bb125:
  LW t4, 176(sp)
  XOR s1, t4, zero
  SLTU s4, zero, s1
  BNE s4, zero, bb129
  JAL zero, bb130
bb126:
  ADDI s10, zero, 57
  SLT s11, s10, s8
  XORI s10, s11, 1
  ADD s11, s10, zero
  JAL zero, bb128
bb127:
  ADD s11, zero, zero
  JAL zero, bb128
bb128:
  ADD s10, s11, zero
  BNE s10, zero, bb124
  JAL zero, bb125
bb129:
  SUB s1, zero, s9
  ADD s4, s1, zero
  JAL zero, bb39
bb130:
  ADD s4, s9, zero
  JAL zero, bb39
bb131:
  ADD t4, s2, zero
  SW t4, 200(sp)
  ADD t4, s1, zero
  SW t4, 192(sp)
  LW t4, 200(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb134
  JAL zero, bb135
bb132:
  LW t4, 200(sp)
  XORI s5, t4, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb137
  JAL zero, bb170
bb133:
  ADD s1, zero, zero
  LW t4, 200(sp)
  ADD s2, t4, zero
  JAL zero, bb139
bb134:
  ADDI t4, zero, 1
  SB t4, 208(sp)
  JAL zero, bb136
bb135:
  ADDI s0, zero, 57
  LW t4, 200(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 208(sp)
  JAL zero, bb136
bb136:
  LB t4, 208(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb132
  JAL zero, bb133
bb137:
  ADDI s5, zero, 1
  JAL zero, bb138
bb138:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb131
bb139:
  ADD t4, s2, zero
  SW t4, 224(sp)
  ADD t4, s1, zero
  SW t4, 216(sp)
  LW t4, 224(sp)
  SLTI s7, t4, 48
  XORI s8, s7, 1
  BNE s8, zero, bb142
  JAL zero, bb143
bb140:
  ADDI s7, zero, 10
  LW t4, 216(sp)
  MULW s9, t4, s7
  LW t4, 224(sp)
  ADDW s7, s9, t4
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb139
bb141:
  LW t4, 192(sp)
  XOR s1, t4, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb145
  JAL zero, bb146
bb142:
  ADDI s7, zero, 57
  LW t4, 224(sp)
  SLT s8, s7, t4
  XORI s7, s8, 1
  ADD t4, s7, zero
  SB t4, 232(sp)
  JAL zero, bb144
bb143:
  ADD t4, zero, zero
  SB t4, 232(sp)
  JAL zero, bb144
bb144:
  LB t4, 232(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb140
  JAL zero, bb141
bb145:
  LW t4, 216(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 240(sp)
  JAL zero, bb43
bb146:
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 240(sp)
  JAL zero, bb43
bb147:
  ADD t4, s10, zero
  SW t4, 256(sp)
  ADD t4, s9, zero
  SW t4, 248(sp)
  LW t4, 256(sp)
  SLTI s3, t4, 48
  BNE s3, zero, bb150
  JAL zero, bb151
bb148:
  LW t4, 256(sp)
  XORI s0, t4, 45
  SLTIU s4, s0, 1
  BNE s4, zero, bb153
  JAL zero, bb171
bb149:
  ADD s0, zero, zero
  LW t4, 256(sp)
  ADD s4, t4, zero
  JAL zero, bb155
bb150:
  ADDI t4, zero, 1
  SB t4, 272(sp)
  JAL zero, bb152
bb151:
  ADDI s0, zero, 57
  LW t4, 256(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 272(sp)
  JAL zero, bb152
bb152:
  LB t4, 272(sp)
  ADD s0, t4, zero
  BNE s0, zero, bb148
  JAL zero, bb149
bb153:
  ADDI s0, zero, 1
  JAL zero, bb154
bb154:
  ADD s4, s0, zero
  CALL getch
  ADD s6, a0, zero
  ADD s9, s4, zero
  ADD s10, s6, zero
  JAL zero, bb147
bb155:
  ADD t4, s4, zero
  SW t4, 288(sp)
  ADD t4, s0, zero
  SW t4, 280(sp)
  LW t4, 288(sp)
  SLTI s10, t4, 48
  XORI s5, s10, 1
  BNE s5, zero, bb158
  JAL zero, bb159
bb156:
  ADDI s5, zero, 10
  LW t4, 280(sp)
  MULW s8, t4, s5
  LW t4, 288(sp)
  ADDW s5, s8, t4
  ADDI s8, zero, 48
  SUBW s2, s5, s8
  CALL getch
  ADD s5, a0, zero
  ADD s0, s2, zero
  ADD s4, s5, zero
  JAL zero, bb155
bb157:
  LW t4, 248(sp)
  XOR s0, t4, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb161
  JAL zero, bb162
bb158:
  ADDI s5, zero, 57
  LW t4, 288(sp)
  SLT s10, s5, t4
  XORI s5, s10, 1
  ADD t4, s5, zero
  SB t4, 296(sp)
  JAL zero, bb160
bb159:
  ADD t4, zero, zero
  SB t4, 296(sp)
  JAL zero, bb160
bb160:
  LB t4, 296(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb156
  JAL zero, bb157
bb161:
  LW t4, 280(sp)
  SUB s0, zero, t4
  ADD t4, s0, zero
  SW t4, 304(sp)
  JAL zero, bb44
bb162:
  LW t3, 280(sp)
  ADD t4, t3, zero
  SW t4, 304(sp)
  JAL zero, bb44
bb163:
  ADD t4, s0, zero
  SW t4, 320(sp)
  LW t3, 264(sp)
  ADD t4, t3, zero
  SW t4, 312(sp)
  JAL zero, bb48
bb164:
  ADD s9, s8, zero
  JAL zero, bb56
bb165:
  ADD s10, s6, zero
  ADD s8, s5, zero
  JAL zero, bb63
bb166:
  LW t4, 0(sp)
  ADD s5, t4, zero
  JAL zero, bb74
bb167:
  LW t4, 56(sp)
  ADD s0, t4, zero
  JAL zero, bb90
bb168:
  LW t4, 112(sp)
  ADD s7, t4, zero
  JAL zero, bb106
bb169:
  LW t4, 176(sp)
  ADD s1, t4, zero
  JAL zero, bb122
bb170:
  LW t4, 192(sp)
  ADD s5, t4, zero
  JAL zero, bb138
bb171:
  LW t4, 248(sp)
  ADD s0, t4, zero
  JAL zero, bb154
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
  JAL zero, bb173
bb173:
  ADD s0, s2, zero
  ADD s3, s1, zero
  SLTI s4, s0, 48
  BNE s4, zero, bb176
  JAL zero, bb177
bb174:
  XORI s5, s0, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb179
  JAL zero, bb189
bb175:
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb181
bb176:
  ADDI s4, zero, 1
  JAL zero, bb178
bb177:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  ADD s4, s2, zero
  JAL zero, bb178
bb178:
  ADD s5, s4, zero
  BNE s5, zero, bb174
  JAL zero, bb175
bb179:
  ADDI s5, zero, 1
  JAL zero, bb180
bb180:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb173
bb181:
  ADD s5, s2, zero
  ADD s6, s1, zero
  SLTI s7, s5, 48
  XORI s8, s7, 1
  BNE s8, zero, bb184
  JAL zero, bb185
bb182:
  ADDI s7, zero, 10
  MULW s9, s6, s7
  ADDW s7, s9, s5
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb181
bb183:
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb187
  JAL zero, bb188
bb184:
  ADDI s7, zero, 57
  SLT s8, s7, s5
  XORI s7, s8, 1
  ADD s8, s7, zero
  JAL zero, bb186
bb185:
  ADD s8, zero, zero
  JAL zero, bb186
bb186:
  ADD s7, s8, zero
  BNE s7, zero, bb182
  JAL zero, bb183
bb187:
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
bb188:
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
bb189:
  ADD s5, s3, zero
  JAL zero, bb180
