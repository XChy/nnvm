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
  BNE s4, zero, bb20
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  ADD s3, s0, zero
  # implict jump to bb2
bb2:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADDI s6, zero, 19
  ADD s8, s4, zero
  # implict jump to bb3
bb3:
  ADD s4, s8, zero
  ADD s9, s6, zero
  ADDI s10, zero, 4
  MULW s11, s4, s10
  LA s10, dep
  ADD t0, s10, s11
  LW s10, 0(t0)
  LA s11, dep
  ADD t0, s11, s7
  LW s11, 0(t0)
  SLT t1, s11, s10
  BNE t1, zero, bb13
  # implict jump to bb4
bb4:
  XOR s6, s4, s5
  SLTIU s7, s6, 1
  BNE s7, zero, bb12
  # implict jump to bb5
bb5:
  ADDI s6, zero, 19
  ADD s7, s5, zero
  ADD s5, s4, zero
  # implict jump to bb6
bb6:
  ADD s4, s5, zero
  ADD s8, s7, zero
  ADD s9, s6, zero
  SLT s10, s9, zero
  XORI s11, s10, 1
  BNE s11, zero, bb8
  # implict jump to bb7
bb7:
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
bb8:
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
  BNE s11, zero, bb11
  # implict jump to bb9
bb9:
  ADD t0, s8, zero
  ADD s10, s4, zero
  # implict jump to bb10
bb10:
  ADD s11, s10, zero
  ADD t1, t0, zero
  ADDI t2, zero, 1
  SUBW a1, s9, t2
  ADD s6, a1, zero
  ADD s7, t1, zero
  ADD s5, s11, zero
  JAL zero, bb6
bb11:
  LW s11, 0(s10)
  LW s10, 0(t1)
  ADD t0, s10, zero
  ADD s10, s11, zero
  JAL zero, bb10
bb12:
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
bb13:
  ADDI s10, zero, 80
  MULW s11, s4, s10
  LA s10, f
  ADD t1, s10, s11
  ADDI s10, zero, 4
  MULW s11, s9, s10
  ADD s10, t1, s11
  LW s11, 0(s10)
  XOR t1, s11, zero
  SLTU s11, zero, t1
  BNE s11, zero, bb19
  # implict jump to bb14
bb14:
  ADD t0, zero, zero
  # implict jump to bb15
bb15:
  ADD s11, t0, zero
  BNE s11, zero, bb18
  # implict jump to bb16
bb16:
  ADD t1, s4, zero
  # implict jump to bb17
bb17:
  ADD s11, t1, zero
  ADDI t2, zero, 1
  SUBW a1, s9, t2
  ADD s6, a1, zero
  ADD s8, s11, zero
  JAL zero, bb3
bb18:
  LW s11, 0(s10)
  ADD t1, s11, zero
  JAL zero, bb17
bb19:
  LW s11, 0(s10)
  ADDI t1, zero, 4
  MULW t2, s11, t1
  LA s11, dep
  ADD t1, s11, t2
  LW s11, 0(t1)
  LW t1, 0(t0)
  SLT t0, s11, t1
  XORI s11, t0, 1
  ADD t0, s11, zero
  JAL zero, bb15
bb20:
  ADD s2, s0, zero
  ADD s3, s1, zero
  JAL zero, bb2
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
  # implict jump to bb22
bb22:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb24
  # implict jump to bb23
bb23:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb24:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, head
  ADD s4, s2, s3
  ADDI s2, zero, -1
  SW s2, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb22
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
  ADDI s2, zero, 80
  MULW s4, s0, s2
  ADD s0, zero, zero
  # implict jump to bb26
bb26:
  ADD s2, s0, zero
  LA s5, f
  ADD s6, s5, s4
  ADDI s5, zero, 4
  MULW s7, s2, s5
  ADD s5, s6, s7
  LW s8, 0(s5)
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb31
  # implict jump to bb27
bb27:
  LA s0, head
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADD s2, s0, zero
  # implict jump to bb28
bb28:
  ADD s0, s2, zero
  XORI s3, s0, -1
  SLTU s4, zero, s3
  BNE s4, zero, bb30
  # implict jump to bb29
bb29:
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
  JAL zero, bb28
bb31:
  ADDIW s8, s2, 1
  ADDI s2, zero, 4
  MULW s9, s8, s2
  ADD s2, s6, s9
  LW s6, 0(s5)
  ADDI s5, zero, 80
  MULW s9, s6, s5
  LA s5, f
  ADD s6, s5, s9
  ADD s5, s6, s7
  LW s6, 0(s5)
  SW s6, 0(s2)
  ADD s0, s8, zero
  JAL zero, bb26
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
  ADDI sp, sp, -272
  SD ra, 168(sp)
  SD s11, 176(sp)
  SD s4, 184(sp)
  SD s0, 192(sp)
  SD s5, 200(sp)
  SD s7, 208(sp)
  SD s10, 216(sp)
  SD s1, 224(sp)
  SD s6, 232(sp)
  SD s2, 240(sp)
  SD s9, 248(sp)
  SD s8, 256(sp)
  SD s3, 264(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  # implict jump to bb34
bb34:
  ADD t4, s2, zero
  SW t4, 4(sp)
  ADD t4, s1, zero
  SW t4, 0(sp)
  LW t4, 4(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb171
  # implict jump to bb35
bb35:
  ADDI s0, zero, 57
  LW t4, 4(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 8(sp)
  # implict jump to bb36
bb36:
  LB t4, 8(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb167
  # implict jump to bb37
bb37:
  ADD s1, zero, zero
  LW t4, 4(sp)
  ADD s2, t4, zero
  # implict jump to bb38
bb38:
  ADD t4, s2, zero
  SW t4, 16(sp)
  ADD t4, s1, zero
  SW t4, 12(sp)
  LW t4, 16(sp)
  SLTI s7, t4, 48
  XORI s8, s7, 1
  BNE s8, zero, bb166
  # implict jump to bb39
bb39:
  ADD t4, zero, zero
  SB t4, 20(sp)
  # implict jump to bb40
bb40:
  LB t4, 20(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb165
  # implict jump to bb41
bb41:
  LW t4, 0(sp)
  XOR s1, t4, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb164
  # implict jump to bb42
bb42:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  # implict jump to bb43
bb43:
  LW t4, 24(sp)
  ADD s1, t4, zero
  LA s7, n
  SW s1, 0(s7)
  CALL getch
  ADD s1, a0, zero
  ADD s7, zero, zero
  ADD s9, s1, zero
  # implict jump to bb44
bb44:
  ADD t4, s9, zero
  SW t4, 32(sp)
  ADD t4, s7, zero
  SW t4, 28(sp)
  LW t4, 32(sp)
  SLTI s11, t4, 48
  BNE s11, zero, bb163
  # implict jump to bb45
bb45:
  ADDI s0, zero, 57
  LW t4, 32(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 36(sp)
  # implict jump to bb46
bb46:
  LB t4, 36(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb159
  # implict jump to bb47
bb47:
  ADD s0, zero, zero
  LW t4, 32(sp)
  ADD s3, t4, zero
  # implict jump to bb48
bb48:
  ADD t4, s3, zero
  SW t4, 44(sp)
  ADD t4, s0, zero
  SW t4, 40(sp)
  LW t4, 44(sp)
  SLTI s9, t4, 48
  XORI s6, s9, 1
  BNE s6, zero, bb158
  # implict jump to bb49
bb49:
  ADD t4, zero, zero
  SB t4, 48(sp)
  # implict jump to bb50
bb50:
  LB t4, 48(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb157
  # implict jump to bb51
bb51:
  LW t4, 28(sp)
  XOR s0, t4, zero
  SLTU s3, zero, s0
  BNE s3, zero, bb156
  # implict jump to bb52
bb52:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  # implict jump to bb53
bb53:
  LW t4, 52(sp)
  ADD s0, t4, zero
  LA s5, m
  SW s0, 0(s5)
  LA s0, dep
  LUI s5, 259060
  ADDIW s5, s5, -193
  SW s5, 0(s0)
  ADDI s0, zero, 1
  # implict jump to bb54
bb54:
  ADD s5, s0, zero
  LA s6, n
  LW s8, 0(s6)
  SLT s6, s8, s5
  XORI s8, s6, 1
  BNE s8, zero, bb155
  # implict jump to bb55
bb55:
  ADDI s0, zero, 1
  # implict jump to bb56
bb56:
  ADD t4, s0, zero
  SW t4, 64(sp)
  LA s5, n
  LW s6, 0(s5)
  LW t4, 64(sp)
  XOR s5, t4, s6
  SLTU s6, zero, s5
  BNE s6, zero, bb118
  # implict jump to bb57
bb57:
  ADDI a0, zero, 1
  ADDI a1, zero, 1
  CALL tree
  # implict jump to bb58
bb58:
  LA s0, m
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb60
  # implict jump to bb59
bb59:
  ADD a0, zero, zero
  LD ra, 168(sp)
  LD s11, 176(sp)
  LD s4, 184(sp)
  LD s0, 192(sp)
  LD s5, 200(sp)
  LD s7, 208(sp)
  LD s10, 216(sp)
  LD s1, 224(sp)
  LD s6, 232(sp)
  LD s2, 240(sp)
  LD s9, 248(sp)
  LD s8, 256(sp)
  LD s3, 264(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb60:
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  # implict jump to bb61
bb61:
  ADD t4, s2, zero
  SW t4, 100(sp)
  ADD t4, s1, zero
  SW t4, 96(sp)
  LW t4, 100(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb117
  # implict jump to bb62
bb62:
  ADDI s0, zero, 57
  LW t4, 100(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 104(sp)
  # implict jump to bb63
bb63:
  LB t4, 104(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb113
  # implict jump to bb64
bb64:
  ADD s1, zero, zero
  LW t4, 100(sp)
  ADD s2, t4, zero
  # implict jump to bb65
bb65:
  ADD t4, s2, zero
  SW t4, 112(sp)
  ADD t4, s1, zero
  SW t4, 108(sp)
  LW t4, 112(sp)
  SLTI s7, t4, 48
  XORI s8, s7, 1
  BNE s8, zero, bb112
  # implict jump to bb66
bb66:
  ADD t4, zero, zero
  SB t4, 116(sp)
  # implict jump to bb67
bb67:
  LB t4, 116(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb111
  # implict jump to bb68
bb68:
  LW t4, 96(sp)
  XOR s1, t4, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb110
  # implict jump to bb69
bb69:
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  # implict jump to bb70
bb70:
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  CALL getch
  ADD s7, a0, zero
  ADD s9, zero, zero
  ADD s10, s7, zero
  # implict jump to bb71
bb71:
  ADD t4, s10, zero
  SW t4, 128(sp)
  ADD t4, s9, zero
  SW t4, 124(sp)
  LW t4, 128(sp)
  SLTI s3, t4, 48
  BNE s3, zero, bb109
  # implict jump to bb72
bb72:
  ADDI s0, zero, 57
  LW t4, 128(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 136(sp)
  # implict jump to bb73
bb73:
  LB t4, 136(sp)
  ADD s0, t4, zero
  BNE s0, zero, bb105
  # implict jump to bb74
bb74:
  ADD s0, zero, zero
  LW t4, 128(sp)
  ADD s4, t4, zero
  # implict jump to bb75
bb75:
  ADD t4, s4, zero
  SW t4, 144(sp)
  ADD t4, s0, zero
  SW t4, 140(sp)
  LW t4, 144(sp)
  SLTI s10, t4, 48
  XORI s5, s10, 1
  BNE s5, zero, bb104
  # implict jump to bb76
bb76:
  ADD t4, zero, zero
  SB t4, 148(sp)
  # implict jump to bb77
bb77:
  LB t4, 148(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb103
  # implict jump to bb78
bb78:
  LW t4, 124(sp)
  XOR s0, t4, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb102
  # implict jump to bb79
bb79:
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  # implict jump to bb80
bb80:
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  ADDI s4, zero, 4
  LW t4, 132(sp)
  MULW s5, t4, s4
  LA s4, dep
  ADD s8, s4, s5
  LW s4, 0(s8)
  ADDI s5, zero, 4
  LW t4, 164(sp)
  MULW s8, t4, s5
  LA s5, dep
  ADD s11, s5, s8
  LW s5, 0(s11)
  SLT s8, s4, s5
  BNE s8, zero, bb101
  # implict jump to bb81
bb81:
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  # implict jump to bb82
bb82:
  LW t4, 156(sp)
  ADD s8, t4, zero
  LW t4, 160(sp)
  ADD s11, t4, zero
  ADDI s7, zero, 4
  MULW s1, s11, s7
  ADDI s7, zero, 19
  ADD s3, s8, zero
  # implict jump to bb83
bb83:
  ADD s8, s3, zero
  ADD s9, s7, zero
  ADDI s6, zero, 4
  MULW s10, s8, s6
  LA s6, dep
  ADD s2, s6, s10
  LW s6, 0(s2)
  LA s2, dep
  ADD s10, s2, s1
  LW s2, 0(s10)
  SLT s5, s2, s6
  BNE s5, zero, bb94
  # implict jump to bb84
bb84:
  XOR s0, s8, s11
  SLTIU s1, s0, 1
  BNE s1, zero, bb93
  # implict jump to bb85
bb85:
  ADDI s1, zero, 19
  ADD s2, s11, zero
  ADD s3, s8, zero
  # implict jump to bb86
bb86:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  SLT s7, s6, zero
  XORI s8, s7, 1
  BNE s8, zero, bb89
  # implict jump to bb87
bb87:
  ADDI s1, zero, 80
  MULW s2, s4, s1
  LA s1, f
  ADD s3, s1, s2
  LW s1, 0(s3)
  ADD s0, s1, zero
  # implict jump to bb88
bb88:
  ADD s1, s0, zero
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s1, m
  LW s2, 0(s1)
  ADDI s1, zero, 1
  SUBW s3, s2, s1
  LA s1, m
  SW s3, 0(s1)
  JAL zero, bb58
bb89:
  ADDI s7, zero, 80
  MULW s8, s4, s7
  LA s7, f
  ADD s9, s7, s8
  ADDI s7, zero, 4
  MULW s8, s6, s7
  ADD s7, s9, s8
  LW s9, 0(s7)
  ADDI s10, zero, 80
  MULW s11, s5, s10
  LA s10, f
  ADD t0, s10, s11
  ADD s10, t0, s8
  LW s8, 0(s10)
  XOR s11, s9, s8
  SLTU s8, zero, s11
  BNE s8, zero, bb92
  # implict jump to bb90
bb90:
  ADD s9, s5, zero
  ADD s7, s4, zero
  # implict jump to bb91
bb91:
  ADD s8, s7, zero
  ADD s10, s9, zero
  ADDI s11, zero, 1
  SUBW t0, s6, s11
  ADD s1, t0, zero
  ADD s2, s10, zero
  ADD s3, s8, zero
  JAL zero, bb86
bb92:
  LW s8, 0(s7)
  LW s7, 0(s10)
  ADD s9, s7, zero
  ADD s7, s8, zero
  JAL zero, bb91
bb93:
  ADD s0, s8, zero
  JAL zero, bb88
bb94:
  ADDI s2, zero, 80
  MULW s5, s8, s2
  LA s2, f
  ADD s6, s2, s5
  ADDI s2, zero, 4
  MULW s5, s9, s2
  ADD s2, s6, s5
  LW s5, 0(s2)
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb100
  # implict jump to bb95
bb95:
  ADD s5, zero, zero
  # implict jump to bb96
bb96:
  ADD s4, s5, zero
  BNE s4, zero, bb99
  # implict jump to bb97
bb97:
  ADD s6, s8, zero
  # implict jump to bb98
bb98:
  ADD s4, s6, zero
  ADDI s10, zero, 1
  SUBW s0, s9, s10
  ADD s7, s0, zero
  ADD s3, s4, zero
  JAL zero, bb83
bb99:
  LW s4, 0(s2)
  ADD s6, s4, zero
  JAL zero, bb98
bb100:
  LW s5, 0(s2)
  ADDI s6, zero, 4
  MULW s4, s5, s6
  LA s5, dep
  ADD s6, s5, s4
  LW s4, 0(s6)
  LW s5, 0(s10)
  SLT s6, s4, s5
  XORI s4, s6, 1
  ADD s5, s4, zero
  JAL zero, bb96
bb101:
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  JAL zero, bb82
bb102:
  LW t4, 140(sp)
  SUB s0, zero, t4
  ADD t4, s0, zero
  SW t4, 152(sp)
  JAL zero, bb80
bb103:
  ADDI s5, zero, 10
  LW t4, 140(sp)
  MULW s8, t4, s5
  LW t4, 144(sp)
  ADDW s5, s8, t4
  ADDI s8, zero, 48
  SUBW s2, s5, s8
  CALL getch
  ADD s5, a0, zero
  ADD s0, s2, zero
  ADD s4, s5, zero
  JAL zero, bb75
bb104:
  ADDI s5, zero, 57
  LW t4, 144(sp)
  SLT s10, s5, t4
  XORI s5, s10, 1
  ADD t4, s5, zero
  SB t4, 148(sp)
  JAL zero, bb77
bb105:
  LW t4, 128(sp)
  XORI s0, t4, 45
  SLTIU s4, s0, 1
  BNE s4, zero, bb108
  # implict jump to bb106
bb106:
  LW t4, 124(sp)
  ADD s0, t4, zero
  # implict jump to bb107
bb107:
  ADD s4, s0, zero
  CALL getch
  ADD s6, a0, zero
  ADD s9, s4, zero
  ADD s10, s6, zero
  JAL zero, bb71
bb108:
  ADDI s0, zero, 1
  JAL zero, bb107
bb109:
  ADDI t4, zero, 1
  SB t4, 136(sp)
  JAL zero, bb73
bb110:
  LW t4, 108(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 120(sp)
  JAL zero, bb70
bb111:
  ADDI s7, zero, 10
  LW t4, 108(sp)
  MULW s9, t4, s7
  LW t4, 112(sp)
  ADDW s7, s9, t4
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb65
bb112:
  ADDI s7, zero, 57
  LW t4, 112(sp)
  SLT s8, s7, t4
  XORI s7, s8, 1
  ADD t4, s7, zero
  SB t4, 116(sp)
  JAL zero, bb67
bb113:
  LW t4, 100(sp)
  XORI s5, t4, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb116
  # implict jump to bb114
bb114:
  LW t4, 96(sp)
  ADD s5, t4, zero
  # implict jump to bb115
bb115:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb61
bb116:
  ADDI s5, zero, 1
  JAL zero, bb115
bb117:
  ADDI t4, zero, 1
  SB t4, 104(sp)
  JAL zero, bb63
bb118:
  CALL getch
  ADD s5, a0, zero
  ADD s6, zero, zero
  ADD s8, s5, zero
  # implict jump to bb119
bb119:
  ADD t4, s8, zero
  SW t4, 60(sp)
  ADD t4, s6, zero
  SW t4, 56(sp)
  LW t4, 60(sp)
  SLTI s1, t4, 48
  BNE s1, zero, bb154
  # implict jump to bb120
bb120:
  ADDI s0, zero, 57
  LW t4, 60(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 68(sp)
  # implict jump to bb121
bb121:
  LB t4, 68(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb150
  # implict jump to bb122
bb122:
  ADD s4, zero, zero
  LW t4, 60(sp)
  ADD s6, t4, zero
  # implict jump to bb123
bb123:
  ADD t4, s6, zero
  SW t4, 76(sp)
  ADD t4, s4, zero
  SW t4, 72(sp)
  LW t4, 76(sp)
  SLTI s11, t4, 48
  XORI s9, s11, 1
  BNE s9, zero, bb149
  # implict jump to bb124
bb124:
  ADD t4, zero, zero
  SB t4, 80(sp)
  # implict jump to bb125
bb125:
  LB t4, 80(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb148
  # implict jump to bb126
bb126:
  LW t4, 56(sp)
  XOR s3, t4, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb147
  # implict jump to bb127
bb127:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  # implict jump to bb128
bb128:
  LW t4, 84(sp)
  ADD s3, t4, zero
  CALL getch
  ADD s6, a0, zero
  ADD s9, zero, zero
  ADD s10, s6, zero
  # implict jump to bb129
bb129:
  ADD t4, s10, zero
  SW t4, 92(sp)
  ADD t4, s9, zero
  SW t4, 88(sp)
  LW t4, 92(sp)
  SLTI s2, t4, 48
  BNE s2, zero, bb146
  # implict jump to bb130
bb130:
  ADDI s0, zero, 57
  LW t4, 92(sp)
  SLT s1, s0, t4
  ADD s2, s1, zero
  # implict jump to bb131
bb131:
  ADD s1, s2, zero
  BNE s1, zero, bb142
  # implict jump to bb132
bb132:
  ADD s1, zero, zero
  LW t4, 92(sp)
  ADD s7, t4, zero
  # implict jump to bb133
bb133:
  ADD s8, s7, zero
  ADD s9, s1, zero
  SLTI s10, s8, 48
  XORI s11, s10, 1
  BNE s11, zero, bb141
  # implict jump to bb134
bb134:
  ADD s11, zero, zero
  # implict jump to bb135
bb135:
  ADD s10, s11, zero
  BNE s10, zero, bb140
  # implict jump to bb136
bb136:
  LW t4, 88(sp)
  XOR s1, t4, zero
  SLTU s4, zero, s1
  BNE s4, zero, bb139
  # implict jump to bb137
bb137:
  ADD s4, s9, zero
  # implict jump to bb138
bb138:
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
  LW t4, 64(sp)
  ADDIW s1, t4, 1
  ADD s0, s1, zero
  JAL zero, bb56
bb139:
  SUB s1, zero, s9
  ADD s4, s1, zero
  JAL zero, bb138
bb140:
  ADDI s10, zero, 10
  MULW s4, s9, s10
  ADDW s10, s4, s8
  ADDI s4, zero, 48
  SUBW s5, s10, s4
  CALL getch
  ADD s4, a0, zero
  ADD s1, s5, zero
  ADD s7, s4, zero
  JAL zero, bb133
bb141:
  ADDI s10, zero, 57
  SLT s11, s10, s8
  XORI s10, s11, 1
  ADD s11, s10, zero
  JAL zero, bb135
bb142:
  LW t4, 92(sp)
  XORI s1, t4, 45
  SLTIU s8, s1, 1
  BNE s8, zero, bb145
  # implict jump to bb143
bb143:
  LW t4, 88(sp)
  ADD s1, t4, zero
  # implict jump to bb144
bb144:
  ADD s8, s1, zero
  CALL getch
  ADD s7, a0, zero
  ADD s9, s8, zero
  ADD s10, s7, zero
  JAL zero, bb129
bb145:
  ADDI s1, zero, 1
  JAL zero, bb144
bb146:
  ADDI s2, zero, 1
  JAL zero, bb131
bb147:
  LW t4, 72(sp)
  SUB s3, zero, t4
  ADD t4, s3, zero
  SW t4, 84(sp)
  JAL zero, bb128
bb148:
  ADDI s9, zero, 10
  LW t4, 72(sp)
  MULW s3, t4, s9
  LW t4, 76(sp)
  ADDW s9, s3, t4
  ADDI s3, zero, 48
  SUBW s10, s9, s3
  CALL getch
  ADD s3, a0, zero
  ADD s4, s10, zero
  ADD s6, s3, zero
  JAL zero, bb123
bb149:
  ADDI s9, zero, 57
  LW t4, 76(sp)
  SLT s11, s9, t4
  XORI s9, s11, 1
  ADD t4, s9, zero
  SB t4, 80(sp)
  JAL zero, bb125
bb150:
  LW t4, 60(sp)
  XORI s11, t4, 45
  SLTIU s7, s11, 1
  BNE s7, zero, bb153
  # implict jump to bb151
bb151:
  LW t4, 56(sp)
  ADD s7, t4, zero
  # implict jump to bb152
bb152:
  ADD s11, s7, zero
  CALL getch
  ADD s4, a0, zero
  ADD s6, s11, zero
  ADD s8, s4, zero
  JAL zero, bb119
bb153:
  ADDI s7, zero, 1
  JAL zero, bb152
bb154:
  ADDI t4, zero, 1
  SB t4, 68(sp)
  JAL zero, bb121
bb155:
  ADDI s6, zero, 4
  MULW s8, s5, s6
  LA s6, head
  ADD s2, s6, s8
  ADDI s6, zero, -1
  SW s6, 0(s2)
  ADDIW s2, s5, 1
  ADD s0, s2, zero
  JAL zero, bb54
bb156:
  LW t4, 40(sp)
  SUB s0, zero, t4
  ADD t4, s0, zero
  SW t4, 52(sp)
  JAL zero, bb53
bb157:
  ADDI s6, zero, 10
  LW t4, 40(sp)
  MULW s5, t4, s6
  LW t4, 44(sp)
  ADDW s6, s5, t4
  ADDI s5, zero, 48
  SUBW s8, s6, s5
  CALL getch
  ADD s5, a0, zero
  ADD s0, s8, zero
  ADD s3, s5, zero
  JAL zero, bb48
bb158:
  ADDI s6, zero, 57
  LW t4, 44(sp)
  SLT s9, s6, t4
  XORI s6, s9, 1
  ADD t4, s6, zero
  SB t4, 48(sp)
  JAL zero, bb50
bb159:
  LW t4, 32(sp)
  XORI s3, t4, 45
  SLTIU s0, s3, 1
  BNE s0, zero, bb162
  # implict jump to bb160
bb160:
  LW t4, 28(sp)
  ADD s0, t4, zero
  # implict jump to bb161
bb161:
  ADD s3, s0, zero
  CALL getch
  ADD s4, a0, zero
  ADD s7, s3, zero
  ADD s9, s4, zero
  JAL zero, bb44
bb162:
  ADDI s0, zero, 1
  JAL zero, bb161
bb163:
  ADDI t4, zero, 1
  SB t4, 36(sp)
  JAL zero, bb46
bb164:
  LW t4, 12(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 24(sp)
  JAL zero, bb43
bb165:
  ADDI s7, zero, 10
  LW t4, 12(sp)
  MULW s9, t4, s7
  LW t4, 16(sp)
  ADDW s7, s9, t4
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb38
bb166:
  ADDI s7, zero, 57
  LW t4, 16(sp)
  SLT s8, s7, t4
  XORI s7, s8, 1
  ADD t4, s7, zero
  SB t4, 20(sp)
  JAL zero, bb40
bb167:
  LW t4, 4(sp)
  XORI s5, t4, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb170
  # implict jump to bb168
bb168:
  LW t4, 0(sp)
  ADD s5, t4, zero
  # implict jump to bb169
bb169:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb34
bb170:
  ADDI s5, zero, 1
  JAL zero, bb169
bb171:
  ADDI t4, zero, 1
  SB t4, 8(sp)
  JAL zero, bb36
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
  # implict jump to bb173
bb173:
  ADD s0, s2, zero
  ADD s3, s1, zero
  SLTI s4, s0, 48
  BNE s4, zero, bb189
  # implict jump to bb174
bb174:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  ADD s4, s2, zero
  # implict jump to bb175
bb175:
  ADD s5, s4, zero
  BNE s5, zero, bb185
  # implict jump to bb176
bb176:
  ADD s1, zero, zero
  ADD s2, s0, zero
  # implict jump to bb177
bb177:
  ADD s5, s2, zero
  ADD s6, s1, zero
  SLTI s7, s5, 48
  XORI s8, s7, 1
  BNE s8, zero, bb184
  # implict jump to bb178
bb178:
  ADD s8, zero, zero
  # implict jump to bb179
bb179:
  ADD s7, s8, zero
  BNE s7, zero, bb183
  # implict jump to bb180
bb180:
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb182
  # implict jump to bb181
bb181:
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
bb182:
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
bb183:
  ADDI s7, zero, 10
  MULW s9, s6, s7
  ADDW s7, s9, s5
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb177
bb184:
  ADDI s7, zero, 57
  SLT s8, s7, s5
  XORI s7, s8, 1
  ADD s8, s7, zero
  JAL zero, bb179
bb185:
  XORI s5, s0, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb188
  # implict jump to bb186
bb186:
  ADD s5, s3, zero
  # implict jump to bb187
bb187:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb173
bb188:
  ADDI s5, zero, 1
  JAL zero, bb187
bb189:
  ADDI s4, zero, 1
  JAL zero, bb175
