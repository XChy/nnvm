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
  SLLIW s2, s0, 2
  LA s3, dep
  ADD s4, s3, s2
  LW s2, 0(s4)
  SLLIW s3, s1, 2
  LA s4, dep
  ADD s5, s4, s3
  LW s3, 0(s5)
  SLT s4, s2, s3
  BNE s4, zero, bb20
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  ADD s3, s0, zero
  # implict jump to bb2
bb2:
  ADD s0, s3, zero
  ADD s1, s2, zero
  SLLIW s2, s1, 2
  ADDI s3, zero, 19
  ADD s4, s0, zero
  # implict jump to bb3
bb3:
  ADD s0, s4, zero
  ADD s5, s3, zero
  SLLIW s6, s0, 2
  LA s7, dep
  ADD s8, s7, s6
  LW s6, 0(s8)
  LA s7, dep
  ADD s8, s7, s2
  LW s7, 0(s8)
  SLT s9, s7, s6
  BNE s9, zero, bb13
  # implict jump to bb4
bb4:
  XOR s6, s0, s1
  SLTIU s7, s6, 1
  BNE s7, zero, bb12
  # implict jump to bb5
bb5:
  ADDI s6, zero, 19
  ADD s7, s1, zero
  ADD s9, s0, zero
  # implict jump to bb6
bb6:
  ADD s10, s9, zero
  ADD s11, s7, zero
  ADD t0, s6, zero
  SLT t1, t0, zero
  XORI t2, t1, 1
  BNE t2, zero, bb8
  # implict jump to bb7
bb7:
  ADDI t1, zero, 80
  MULW t2, s10, t1
  LA t1, f
  ADD a1, t1, t2
  LW t1, 0(a1)
  ADD a0, t1, zero
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
  ADDI t1, zero, 80
  MULW t2, s10, t1
  LA t1, f
  ADD a1, t1, t2
  SLLIW t1, t0, 2
  ADD t2, a1, t1
  LW a1, 0(t2)
  ADDI a2, zero, 80
  MULW a3, s11, a2
  LA a2, f
  ADD a4, a2, a3
  ADD a2, a4, t1
  LW t1, 0(a2)
  XOR a3, a1, t1
  SLTU t1, zero, a3
  BNE t1, zero, bb11
  # implict jump to bb9
bb9:
  ADD t1, s11, zero
  ADD s11, s10, zero
  # implict jump to bb10
bb10:
  ADD s10, s11, zero
  ADD s11, t1, zero
  ADDI t1, zero, 1
  SUBW t2, t0, t1
  ADD s6, t2, zero
  ADD s7, s11, zero
  ADD s9, s10, zero
  JAL zero, bb6
bb11:
  LW s10, 0(t2)
  LW t2, 0(a2)
  ADD t1, t2, zero
  ADD s11, s10, zero
  JAL zero, bb10
bb12:
  ADD a0, s0, zero
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
  ADDI s6, zero, 80
  MULW s7, s0, s6
  LA s6, f
  ADD s9, s6, s7
  SLLIW s6, s5, 2
  ADD s7, s9, s6
  LW s6, 0(s7)
  XOR s9, s6, zero
  SLTU s6, zero, s9
  BNE s6, zero, bb19
  # implict jump to bb14
bb14:
  ADD s6, zero, zero
  # implict jump to bb15
bb15:
  ADD s8, s6, zero
  BNE s8, zero, bb18
  # implict jump to bb16
bb16:
  ADD s6, s0, zero
  # implict jump to bb17
bb17:
  ADD s0, s6, zero
  ADDI s6, zero, 1
  SUBW s7, s5, s6
  ADD s3, s7, zero
  ADD s4, s0, zero
  JAL zero, bb3
bb18:
  LW s0, 0(s7)
  ADD s6, s0, zero
  JAL zero, bb17
bb19:
  LW s9, 0(s7)
  SLLIW s10, s9, 2
  LA s9, dep
  ADD s11, s9, s10
  LW s9, 0(s11)
  LW s10, 0(s8)
  SLT s8, s9, s10
  XORI s9, s8, 1
  ADD s6, s9, zero
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
  SLLIW s2, s1, 2
  LA s3, head
  ADD s4, s3, s2
  ADDI s2, zero, -1
  SW s2, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb22
tree:
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
  SLLIW s2, s0, 2
  LA s3, dep
  ADD s4, s3, s2
  SW s1, 0(s4)
  ADDI s3, zero, 80
  MULW s4, s0, s3
  ADD s0, zero, zero
  # implict jump to bb26
bb26:
  ADD s3, s0, zero
  LA s5, f
  ADD s6, s5, s4
  SLLIW s5, s3, 2
  ADD s7, s6, s5
  LW s8, 0(s7)
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb31
  # implict jump to bb27
bb27:
  LA s8, head
  ADD s9, s8, s2
  LW s8, 0(s9)
  ADD s9, s8, zero
  # implict jump to bb28
bb28:
  ADD s8, s9, zero
  XORI s10, s8, -1
  SLTU s11, zero, s10
  BNE s11, zero, bb30
  # implict jump to bb29
bb29:
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
bb30:
  SLLIW s10, s8, 2
  LA s8, to
  ADD s11, s8, s10
  LW s8, 0(s11)
  ADDIW s11, s1, 1
  ADD a0, s8, zero
  ADD a1, s11, zero
  CALL tree
  LA s8, next
  ADD s11, s8, s10
  LW s8, 0(s11)
  ADD s9, s8, zero
  JAL zero, bb28
bb31:
  ADDIW s8, s3, 1
  SLLIW s3, s8, 2
  ADD s9, s6, s3
  LW s3, 0(s7)
  ADDI s6, zero, 80
  MULW s7, s3, s6
  LA s3, f
  ADD s6, s3, s7
  ADD s3, s6, s5
  LW s5, 0(s3)
  SW s5, 0(s9)
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
  SLLIW s2, s3, 2
  LA s3, to
  ADD s4, s3, s2
  SW s1, 0(s4)
  LA s2, cnt
  LW s3, 0(s2)
  SLLIW s2, s3, 2
  LA s3, next
  ADD s4, s3, s2
  SLLIW s2, s0, 2
  LA s3, head
  ADD s5, s3, s2
  LW s2, 0(s5)
  SW s2, 0(s4)
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
  ADDI sp, sp, -336
  SD ra, 232(sp)
  SD s2, 240(sp)
  SD s3, 248(sp)
  SD s1, 256(sp)
  SD s0, 264(sp)
  SD s5, 272(sp)
  SD s7, 280(sp)
  SD s10, 288(sp)
  SD s9, 296(sp)
  SD s8, 304(sp)
  SD s4, 312(sp)
  SD s6, 320(sp)
  SD s11, 328(sp)
  CALL getch
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 4(sp)
  ADD t4, s0, zero
  SW t4, 0(sp)
  # implict jump to bb34
bb34:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 12(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb171
  # implict jump to bb35
bb35:
  ADDI s4, zero, 57
  LW t4, 12(sp)
  SLT s5, s4, t4
  ADD s4, s5, zero
  # implict jump to bb36
bb36:
  ADD s5, s4, zero
  BNE s5, zero, bb167
  # implict jump to bb37
bb37:
  ADD t4, zero, zero
  SW t4, 20(sp)
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  # implict jump to bb38
bb38:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t4, 24(sp)
  SLTI s8, t4, 48
  XORI s9, s8, 1
  BNE s9, zero, bb166
  # implict jump to bb39
bb39:
  ADD s8, zero, zero
  # implict jump to bb40
bb40:
  ADD s9, s8, zero
  BNE s9, zero, bb165
  # implict jump to bb41
bb41:
  LW t4, 8(sp)
  XOR s8, t4, zero
  SLTU s9, zero, s8
  BNE s9, zero, bb164
  # implict jump to bb42
bb42:
  LW t4, 28(sp)
  ADD s8, t4, zero
  # implict jump to bb43
bb43:
  ADD s9, s8, zero
  LA s8, n
  SW s9, 0(s8)
  CALL getch
  ADD s8, a0, zero
  ADD t4, zero, zero
  SW t4, 36(sp)
  ADD t4, s8, zero
  SW t4, 32(sp)
  # implict jump to bb44
bb44:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t4, 44(sp)
  SLTI s2, t4, 48
  BNE s2, zero, bb163
  # implict jump to bb45
bb45:
  ADDI s2, zero, 57
  LW t4, 44(sp)
  SLT s1, s2, t4
  ADD s2, s1, zero
  # implict jump to bb46
bb46:
  ADD s1, s2, zero
  BNE s1, zero, bb159
  # implict jump to bb47
bb47:
  ADD t4, zero, zero
  SW t4, 52(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  # implict jump to bb48
bb48:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t4, 56(sp)
  SLTI s5, t4, 48
  XORI s4, s5, 1
  BNE s4, zero, bb158
  # implict jump to bb49
bb49:
  ADD s4, zero, zero
  # implict jump to bb50
bb50:
  ADD s5, s4, zero
  BNE s5, zero, bb157
  # implict jump to bb51
bb51:
  LW t4, 40(sp)
  XOR s4, t4, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb156
  # implict jump to bb52
bb52:
  LW t4, 60(sp)
  ADD s4, t4, zero
  # implict jump to bb53
bb53:
  ADD s5, s4, zero
  LA s4, m
  SW s5, 0(s4)
  LA s4, dep
  LUI s5, 259060
  ADDIW s5, s5, -193
  SW s5, 0(s4)
  ADDI t4, zero, 1
  SW t4, 64(sp)
  # implict jump to bb54
bb54:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LA s6, n
  LW s7, 0(s6)
  LW t4, 68(sp)
  SLT s6, s7, t4
  XORI s7, s6, 1
  BNE s7, zero, bb155
  # implict jump to bb55
bb55:
  ADDI t4, zero, 1
  SW t4, 76(sp)
  # implict jump to bb56
bb56:
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LA s10, n
  LW s9, 0(s10)
  LW t4, 72(sp)
  XOR s10, t4, s9
  SLTU s9, zero, s10
  BNE s9, zero, bb118
  # implict jump to bb57
bb57:
  ADDI a0, zero, 1
  ADDI a1, zero, 1
  CALL tree
  # implict jump to bb58
bb58:
  LA s9, m
  LW s10, 0(s9)
  XOR s9, s10, zero
  SLTU s10, zero, s9
  BNE s10, zero, bb60
  # implict jump to bb59
bb59:
  ADD a0, zero, zero
  LD ra, 232(sp)
  LD s2, 240(sp)
  LD s3, 248(sp)
  LD s1, 256(sp)
  LD s0, 264(sp)
  LD s5, 272(sp)
  LD s7, 280(sp)
  LD s10, 288(sp)
  LD s9, 296(sp)
  LD s8, 304(sp)
  LD s4, 312(sp)
  LD s6, 320(sp)
  LD s11, 328(sp)
  ADDI sp, sp, 336
  JALR zero, 0(ra)
bb60:
  CALL getch
  ADD s9, a0, zero
  ADD t4, zero, zero
  SW t4, 84(sp)
  ADD t4, s9, zero
  SW t4, 80(sp)
  # implict jump to bb61
bb61:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t4, 92(sp)
  SLTI s2, t4, 48
  BNE s2, zero, bb117
  # implict jump to bb62
bb62:
  ADDI s2, zero, 57
  LW t4, 92(sp)
  SLT s1, s2, t4
  ADD s2, s1, zero
  # implict jump to bb63
bb63:
  ADD s1, s2, zero
  BNE s1, zero, bb113
  # implict jump to bb64
bb64:
  ADD t4, zero, zero
  SW t4, 100(sp)
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  # implict jump to bb65
bb65:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  LW t4, 104(sp)
  SLTI s4, t4, 48
  XORI s5, s4, 1
  BNE s5, zero, bb112
  # implict jump to bb66
bb66:
  ADD s4, zero, zero
  # implict jump to bb67
bb67:
  ADD s5, s4, zero
  BNE s5, zero, bb111
  # implict jump to bb68
bb68:
  LW t4, 88(sp)
  XOR s4, t4, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb110
  # implict jump to bb69
bb69:
  LW t4, 108(sp)
  ADD s4, t4, zero
  # implict jump to bb70
bb70:
  ADD t4, s4, zero
  SW t4, 112(sp)
  CALL getch
  ADD s4, a0, zero
  ADD t4, zero, zero
  SW t4, 120(sp)
  ADD t4, s4, zero
  SW t4, 116(sp)
  # implict jump to bb71
bb71:
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t4, 128(sp)
  SLTI s10, t4, 48
  BNE s10, zero, bb109
  # implict jump to bb72
bb72:
  ADDI s10, zero, 57
  LW t4, 128(sp)
  SLT s8, s10, t4
  ADD s10, s8, zero
  # implict jump to bb73
bb73:
  ADD s8, s10, zero
  BNE s8, zero, bb105
  # implict jump to bb74
bb74:
  ADD t4, zero, zero
  SW t4, 136(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  # implict jump to bb75
bb75:
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t4, 140(sp)
  SLTI s1, t4, 48
  XORI s3, s1, 1
  BNE s3, zero, bb104
  # implict jump to bb76
bb76:
  ADD s1, zero, zero
  # implict jump to bb77
bb77:
  ADD s0, s1, zero
  BNE s0, zero, bb103
  # implict jump to bb78
bb78:
  LW t4, 124(sp)
  XOR s0, t4, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb102
  # implict jump to bb79
bb79:
  LW t4, 144(sp)
  ADD s0, t4, zero
  # implict jump to bb80
bb80:
  ADD s1, s0, zero
  LW t4, 112(sp)
  SLLIW s0, t4, 2
  LA s3, dep
  ADD s5, s3, s0
  LW s0, 0(s5)
  SLLIW s3, s1, 2
  LA s5, dep
  ADD s6, s5, s3
  LW s3, 0(s6)
  SLT s5, s0, s3
  BNE s5, zero, bb101
  # implict jump to bb81
bb81:
  ADD s0, s1, zero
  LW t4, 112(sp)
  ADD s3, t4, zero
  # implict jump to bb82
bb82:
  ADD s1, s3, zero
  ADD t4, s0, zero
  SW t4, 152(sp)
  LW t3, 152(sp)
  SLLIW t4, t3, 2
  SW t4, 148(sp)
  ADDI t4, zero, 19
  SW t4, 160(sp)
  ADD t4, s1, zero
  SW t4, 156(sp)
  # implict jump to bb83
bb83:
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  LW t4, 168(sp)
  SLLIW s11, t4, 2
  LA s4, dep
  ADD s10, s4, s11
  LW s4, 0(s10)
  LA s10, dep
  LW t3, 148(sp)
  ADD t4, s10, t3
  SD t4, 176(sp)
  LD t4, 176(sp)
  LW s10, 0(t4)
  SLT s8, s10, s4
  BNE s8, zero, bb94
  # implict jump to bb84
bb84:
  LW t4, 168(sp)
  LW t3, 152(sp)
  XOR s4, t4, t3
  SLTIU s8, s4, 1
  BNE s8, zero, bb93
  # implict jump to bb85
bb85:
  ADDI s4, zero, 19
  LW t4, 152(sp)
  ADD s8, t4, zero
  LW t4, 168(sp)
  ADD s10, t4, zero
  # implict jump to bb86
bb86:
  ADD s9, s10, zero
  ADD s2, s8, zero
  ADD s0, s4, zero
  SLT s3, s0, zero
  XORI s6, s3, 1
  BNE s6, zero, bb89
  # implict jump to bb87
bb87:
  ADDI s3, zero, 80
  MULW s6, s9, s3
  LA s3, f
  ADD s5, s3, s6
  LW s3, 0(s5)
  ADD t4, s3, zero
  SW t4, 184(sp)
  # implict jump to bb88
bb88:
  LW t4, 184(sp)
  ADD s0, t4, zero
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s0, m
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  LA s0, m
  SW s2, 0(s0)
  JAL zero, bb58
bb89:
  ADDI s3, zero, 80
  MULW s6, s9, s3
  LA s3, f
  ADD s7, s3, s6
  SLLIW s3, s0, 2
  ADD s6, s7, s3
  LW s7, 0(s6)
  ADDI s1, zero, 80
  MULW s11, s2, s1
  LA s1, f
  ADD s5, s1, s11
  ADD s1, s5, s3
  LW s3, 0(s1)
  XOR s5, s7, s3
  SLTU s3, zero, s5
  BNE s3, zero, bb92
  # implict jump to bb90
bb90:
  ADD s3, s2, zero
  ADD s2, s9, zero
  # implict jump to bb91
bb91:
  ADD s1, s2, zero
  ADD s2, s3, zero
  ADDI s3, zero, 1
  SUBW s5, s0, s3
  ADD s4, s5, zero
  ADD s8, s2, zero
  ADD s10, s1, zero
  JAL zero, bb86
bb92:
  LW s5, 0(s6)
  LW s6, 0(s1)
  ADD s3, s6, zero
  ADD s2, s5, zero
  JAL zero, bb91
bb93:
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  JAL zero, bb88
bb94:
  ADDI s0, zero, 80
  LW t4, 168(sp)
  MULW s1, t4, s0
  LA s0, f
  ADD s2, s0, s1
  LW t4, 164(sp)
  SLLIW s0, t4, 2
  ADD s1, s2, s0
  LW s0, 0(s1)
  XOR s2, s0, zero
  SLTU s0, zero, s2
  BNE s0, zero, bb100
  # implict jump to bb95
bb95:
  ADD s0, zero, zero
  # implict jump to bb96
bb96:
  ADD s2, s0, zero
  BNE s2, zero, bb99
  # implict jump to bb97
bb97:
  LW t4, 168(sp)
  ADD s0, t4, zero
  # implict jump to bb98
bb98:
  ADD s1, s0, zero
  ADDI s0, zero, 1
  LW t4, 164(sp)
  SUBW s2, t4, s0
  ADD t4, s2, zero
  SW t4, 160(sp)
  ADD t4, s1, zero
  SW t4, 156(sp)
  JAL zero, bb83
bb99:
  LW s2, 0(s1)
  ADD s0, s2, zero
  JAL zero, bb98
bb100:
  LW s2, 0(s1)
  SLLIW s3, s2, 2
  LA s2, dep
  ADD s4, s2, s3
  LW s2, 0(s4)
  LD t4, 176(sp)
  LW s3, 0(t4)
  SLT s4, s2, s3
  XORI s2, s4, 1
  ADD s0, s2, zero
  JAL zero, bb96
bb101:
  LW t4, 112(sp)
  ADD s0, t4, zero
  ADD s3, s1, zero
  JAL zero, bb82
bb102:
  LW t4, 144(sp)
  SUB s1, zero, t4
  ADD s0, s1, zero
  JAL zero, bb80
bb103:
  ADDI s0, zero, 10
  LW t4, 144(sp)
  MULW s1, t4, s0
  LW t4, 140(sp)
  ADDW s0, s1, t4
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s0, a0, zero
  ADD t4, s2, zero
  SW t4, 136(sp)
  ADD t4, s0, zero
  SW t4, 132(sp)
  JAL zero, bb75
bb104:
  ADDI s3, zero, 57
  LW t4, 140(sp)
  SLT s0, s3, t4
  XORI s3, s0, 1
  ADD s1, s3, zero
  JAL zero, bb77
bb105:
  LW t4, 128(sp)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  BNE s1, zero, bb108
  # implict jump to bb106
bb106:
  LW t4, 124(sp)
  ADD s0, t4, zero
  # implict jump to bb107
bb107:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD t4, s1, zero
  SW t4, 120(sp)
  ADD t4, s0, zero
  SW t4, 116(sp)
  JAL zero, bb71
bb108:
  ADDI s0, zero, 1
  JAL zero, bb107
bb109:
  ADDI s10, zero, 1
  JAL zero, bb73
bb110:
  LW t4, 108(sp)
  SUB s5, zero, t4
  ADD s4, s5, zero
  JAL zero, bb70
bb111:
  ADDI s0, zero, 10
  LW t4, 108(sp)
  MULW s1, t4, s0
  LW t4, 104(sp)
  ADDW s0, s1, t4
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s0, a0, zero
  ADD t4, s2, zero
  SW t4, 100(sp)
  ADD t4, s0, zero
  SW t4, 96(sp)
  JAL zero, bb65
bb112:
  ADDI s5, zero, 57
  LW t4, 104(sp)
  SLT s7, s5, t4
  XORI s5, s7, 1
  ADD s4, s5, zero
  JAL zero, bb67
bb113:
  LW t4, 92(sp)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  BNE s1, zero, bb116
  # implict jump to bb114
bb114:
  LW t4, 88(sp)
  ADD s0, t4, zero
  # implict jump to bb115
bb115:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD t4, s1, zero
  SW t4, 84(sp)
  ADD t4, s0, zero
  SW t4, 80(sp)
  JAL zero, bb61
bb116:
  ADDI s0, zero, 1
  JAL zero, bb115
bb117:
  ADDI s2, zero, 1
  JAL zero, bb63
bb118:
  CALL getch
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 192(sp)
  ADD t4, s0, zero
  SW t4, 188(sp)
  # implict jump to bb119
bb119:
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 196(sp)
  LW t4, 200(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb154
  # implict jump to bb120
bb120:
  ADDI s4, zero, 57
  LW t4, 200(sp)
  SLT s5, s4, t4
  ADD s4, s5, zero
  # implict jump to bb121
bb121:
  ADD s5, s4, zero
  BNE s5, zero, bb150
  # implict jump to bb122
bb122:
  ADD t4, zero, zero
  SW t4, 208(sp)
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 204(sp)
  # implict jump to bb123
bb123:
  LW t3, 204(sp)
  ADD t4, t3, zero
  SW t4, 212(sp)
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  LW t4, 212(sp)
  SLTI s8, t4, 48
  XORI s9, s8, 1
  BNE s9, zero, bb149
  # implict jump to bb124
bb124:
  ADD s8, zero, zero
  # implict jump to bb125
bb125:
  ADD s9, s8, zero
  BNE s9, zero, bb148
  # implict jump to bb126
bb126:
  LW t4, 196(sp)
  XOR s8, t4, zero
  SLTU s9, zero, s8
  BNE s9, zero, bb147
  # implict jump to bb127
bb127:
  LW t4, 216(sp)
  ADD s8, t4, zero
  # implict jump to bb128
bb128:
  ADD t4, s8, zero
  SW t4, 220(sp)
  CALL getch
  ADD s8, a0, zero
  ADD s10, zero, zero
  ADD t4, s8, zero
  SW t4, 224(sp)
  # implict jump to bb129
bb129:
  LW t4, 224(sp)
  ADD s8, t4, zero
  ADD s2, s10, zero
  SLTI s1, s8, 48
  BNE s1, zero, bb146
  # implict jump to bb130
bb130:
  ADDI s1, zero, 57
  SLT s3, s1, s8
  ADD s1, s3, zero
  # implict jump to bb131
bb131:
  ADD s3, s1, zero
  BNE s3, zero, bb142
  # implict jump to bb132
bb132:
  ADD s1, zero, zero
  ADD s3, s8, zero
  # implict jump to bb133
bb133:
  ADD s0, s3, zero
  ADD s5, s1, zero
  SLTI s4, s0, 48
  XORI s6, s4, 1
  BNE s6, zero, bb141
  # implict jump to bb134
bb134:
  ADD s4, zero, zero
  # implict jump to bb135
bb135:
  ADD s6, s4, zero
  BNE s6, zero, bb140
  # implict jump to bb136
bb136:
  XOR s4, s2, zero
  SLTU s6, zero, s4
  BNE s6, zero, bb139
  # implict jump to bb137
bb137:
  ADD s4, s5, zero
  # implict jump to bb138
bb138:
  ADD s6, s4, zero
  LA s4, cnt
  LW s7, 0(s4)
  SLLIW s4, s7, 2
  LA s7, to
  ADD s9, s7, s4
  SW s6, 0(s9)
  LA s4, cnt
  LW s7, 0(s4)
  SLLIW s4, s7, 2
  LA s7, next
  ADD s9, s7, s4
  LW t4, 220(sp)
  SLLIW s4, t4, 2
  LA s7, head
  ADD s11, s7, s4
  LW s4, 0(s11)
  SW s4, 0(s9)
  LA s4, cnt
  LW s7, 0(s4)
  SW s7, 0(s11)
  LA s4, cnt
  LW s7, 0(s4)
  ADDIW s4, s7, 1
  LA s7, cnt
  SW s4, 0(s7)
  ADDI s4, zero, 80
  MULW s7, s6, s4
  LA s4, f
  ADD s6, s4, s7
  LW t4, 220(sp)
  SW t4, 0(s6)
  LW t4, 72(sp)
  ADDIW s4, t4, 1
  ADD t4, s4, zero
  SW t4, 76(sp)
  JAL zero, bb56
bb139:
  SUB s6, zero, s5
  ADD s4, s6, zero
  JAL zero, bb138
bb140:
  ADDI s4, zero, 10
  MULW s6, s5, s4
  ADDW s4, s6, s0
  ADDI s0, zero, 48
  SUBW s5, s4, s0
  CALL getch
  ADD s0, a0, zero
  ADD s1, s5, zero
  ADD s3, s0, zero
  JAL zero, bb133
bb141:
  ADDI s6, zero, 57
  SLT s7, s6, s0
  XORI s6, s7, 1
  ADD s4, s6, zero
  JAL zero, bb135
bb142:
  XORI s0, s8, 45
  SLTIU s1, s0, 1
  BNE s1, zero, bb145
  # implict jump to bb143
bb143:
  ADD s0, s2, zero
  # implict jump to bb144
bb144:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD s10, s1, zero
  ADD t4, s0, zero
  SW t4, 224(sp)
  JAL zero, bb129
bb145:
  ADDI s0, zero, 1
  JAL zero, bb144
bb146:
  ADDI s1, zero, 1
  JAL zero, bb131
bb147:
  LW t4, 216(sp)
  SUB s9, zero, t4
  ADD s8, s9, zero
  JAL zero, bb128
bb148:
  ADDI s0, zero, 10
  LW t4, 216(sp)
  MULW s1, t4, s0
  LW t4, 212(sp)
  ADDW s0, s1, t4
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s0, a0, zero
  ADD t4, s2, zero
  SW t4, 208(sp)
  ADD t4, s0, zero
  SW t4, 204(sp)
  JAL zero, bb123
bb149:
  ADDI s9, zero, 57
  LW t4, 212(sp)
  SLT s10, s9, t4
  XORI s9, s10, 1
  ADD s8, s9, zero
  JAL zero, bb125
bb150:
  LW t4, 200(sp)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  BNE s1, zero, bb153
  # implict jump to bb151
bb151:
  LW t4, 196(sp)
  ADD s0, t4, zero
  # implict jump to bb152
bb152:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD t4, s1, zero
  SW t4, 192(sp)
  ADD t4, s0, zero
  SW t4, 188(sp)
  JAL zero, bb119
bb153:
  ADDI s0, zero, 1
  JAL zero, bb152
bb154:
  ADDI s4, zero, 1
  JAL zero, bb121
bb155:
  LW t4, 68(sp)
  SLLIW s0, t4, 2
  LA s1, head
  ADD s2, s1, s0
  ADDI s0, zero, -1
  SW s0, 0(s2)
  LW t4, 68(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 64(sp)
  JAL zero, bb54
bb156:
  LW t4, 60(sp)
  SUB s5, zero, t4
  ADD s4, s5, zero
  JAL zero, bb53
bb157:
  ADDI s0, zero, 10
  LW t4, 60(sp)
  MULW s1, t4, s0
  LW t4, 56(sp)
  ADDW s0, s1, t4
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s0, a0, zero
  ADD t4, s2, zero
  SW t4, 52(sp)
  ADD t4, s0, zero
  SW t4, 48(sp)
  JAL zero, bb48
bb158:
  ADDI s5, zero, 57
  LW t4, 56(sp)
  SLT s6, s5, t4
  XORI s5, s6, 1
  ADD s4, s5, zero
  JAL zero, bb50
bb159:
  LW t4, 44(sp)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  BNE s1, zero, bb162
  # implict jump to bb160
bb160:
  LW t4, 40(sp)
  ADD s0, t4, zero
  # implict jump to bb161
bb161:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD t4, s1, zero
  SW t4, 36(sp)
  ADD t4, s0, zero
  SW t4, 32(sp)
  JAL zero, bb44
bb162:
  ADDI s0, zero, 1
  JAL zero, bb161
bb163:
  ADDI s2, zero, 1
  JAL zero, bb46
bb164:
  LW t4, 28(sp)
  SUB s9, zero, t4
  ADD s8, s9, zero
  JAL zero, bb43
bb165:
  ADDI s0, zero, 10
  LW t4, 28(sp)
  MULW s1, t4, s0
  LW t4, 24(sp)
  ADDW s0, s1, t4
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s0, a0, zero
  ADD t4, s2, zero
  SW t4, 20(sp)
  ADD t4, s0, zero
  SW t4, 16(sp)
  JAL zero, bb38
bb166:
  ADDI s9, zero, 57
  LW t4, 24(sp)
  SLT s10, s9, t4
  XORI s9, s10, 1
  ADD s8, s9, zero
  JAL zero, bb40
bb167:
  LW t4, 12(sp)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  BNE s1, zero, bb170
  # implict jump to bb168
bb168:
  LW t4, 8(sp)
  ADD s0, t4, zero
  # implict jump to bb169
bb169:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD t4, s1, zero
  SW t4, 4(sp)
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb34
bb170:
  ADDI s0, zero, 1
  JAL zero, bb169
bb171:
  ADDI s4, zero, 1
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
  ADDI s4, zero, 57
  SLT s5, s4, s0
  ADD s4, s5, zero
  # implict jump to bb175
bb175:
  ADD s5, s4, zero
  BNE s5, zero, bb185
  # implict jump to bb176
bb176:
  ADD s4, zero, zero
  ADD s5, s0, zero
  # implict jump to bb177
bb177:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s6, 48
  XORI s9, s8, 1
  BNE s9, zero, bb184
  # implict jump to bb178
bb178:
  ADD s8, zero, zero
  # implict jump to bb179
bb179:
  ADD s9, s8, zero
  BNE s9, zero, bb183
  # implict jump to bb180
bb180:
  XOR s8, s3, zero
  SLTU s9, zero, s8
  BNE s9, zero, bb182
  # implict jump to bb181
bb181:
  ADD a0, s7, zero
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
  SUB s8, zero, s7
  ADD a0, s8, zero
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
  ADDI s8, zero, 10
  MULW s9, s7, s8
  ADDW s7, s9, s6
  ADDI s6, zero, 48
  SUBW s8, s7, s6
  CALL getch
  ADD s6, a0, zero
  ADD s4, s8, zero
  ADD s5, s6, zero
  JAL zero, bb177
bb184:
  ADDI s9, zero, 57
  SLT s10, s9, s6
  XORI s9, s10, 1
  ADD s8, s9, zero
  JAL zero, bb179
bb185:
  XORI s4, s0, 45
  SLTIU s0, s4, 1
  BNE s0, zero, bb188
  # implict jump to bb186
bb186:
  ADD s0, s3, zero
  # implict jump to bb187
bb187:
  ADD s3, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD s1, s3, zero
  ADD s2, s0, zero
  JAL zero, bb173
bb188:
  ADDI s0, zero, 1
  JAL zero, bb187
bb189:
  ADDI s4, zero, 1
  JAL zero, bb175
