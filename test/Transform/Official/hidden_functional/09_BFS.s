.global same
.global init
.global inqueue
.global add_edge
.global main
.global pop_queue
.global quick_read
.section .bss

head:
.space 4020
inq:
.space 4020
next:
.space 20020
que:
.space 4020
to:
.space 20020






.section .data
h:
.word 0x00000000





maxm:
.word 0x0000138d
cnt:
.word 0x00000000
maxn:
.word 0x000003ed
m:
.word 0x00000000
tail:
.word 0x00000000
n:
.word 0x00000000
.section .text
same:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  LA s2, h
  ADDI s3, zero, 0
  SW s3, 0(s2)
  LA s2, tail
  ADDI s3, zero, 0
  SW s3, 0(s2)
  SLLIW s2, s0, 2
  LA s3, inq
  ADD s4, s3, s2
  ADDI s2, zero, 1
  SW s2, 0(s4)
  LA s2, tail
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, tail
  SW s2, 0(s3)
  SLLIW s3, s2, 2
  LA s2, que
  ADD s4, s2, s3
  SW s0, 0(s4)
  ADD s0, zero, zero
  # implict jump to bb1
bb1:
  ADD s2, s0, zero
  LA s3, h
  LW s4, 0(s3)
  LA s3, tail
  LW s5, 0(s3)
  SLT s3, s4, s5
  BNE s3, zero, bb6
  # implict jump to bb2
bb2:
  ADD s3, zero, zero
  # implict jump to bb3
bb3:
  ADD s4, s3, zero
  LA s5, tail
  LW s6, 0(s5)
  SLT s5, s6, s4
  XORI s6, s5, 1
  BNE s6, zero, bb5
  # implict jump to bb4
bb4:
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb5:
  SLLIW s5, s4, 2
  LA s6, que
  ADD s7, s6, s5
  LW s5, 0(s7)
  SLLIW s6, s5, 2
  LA s5, inq
  ADD s7, s5, s6
  SW zero, 0(s7)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb3
bb6:
  LA s3, h
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, h
  SW s3, 0(s4)
  SLLIW s4, s3, 2
  LA s3, que
  ADD s5, s3, s4
  LW s3, 0(s5)
  XOR s4, s3, s1
  SLTIU s5, s4, 1
  BNE s5, zero, bb14
  # implict jump to bb7
bb7:
  ADD s4, s2, zero
  # implict jump to bb8
bb8:
  ADD s2, s4, zero
  SLLIW s4, s3, 2
  LA s3, head
  ADD s5, s3, s4
  LW s3, 0(s5)
  ADD s4, s3, zero
  # implict jump to bb9
bb9:
  ADD s3, s4, zero
  XORI s5, s3, -1
  SLTU s6, zero, s5
  BNE s6, zero, bb11
  # implict jump to bb10
bb10:
  ADD s0, s2, zero
  JAL zero, bb1
bb11:
  SLLIW s0, s3, 2
  LA s3, to
  ADD s5, s3, s0
  LW s3, 0(s5)
  SLLIW s6, s3, 2
  LA s3, inq
  ADD s7, s3, s6
  LW s3, 0(s7)
  XOR s6, s3, zero
  SLTU s3, zero, s6
  XORI s6, s3, 1
  XOR s3, s6, zero
  SLTU s6, zero, s3
  BNE s6, zero, bb13
  # implict jump to bb12
bb12:
  LA s3, next
  ADD s5, s3, s0
  LW s0, 0(s5)
  ADD s4, s0, zero
  JAL zero, bb9
bb13:
  LW s3, 0(s5)
  SLLIW s5, s3, 2
  LA s6, inq
  ADD s7, s6, s5
  ADDI s5, zero, 1
  SW s5, 0(s7)
  LA s5, tail
  LW s6, 0(s5)
  ADDIW s5, s6, 1
  LA s6, tail
  SW s5, 0(s6)
  SLLIW s6, s5, 2
  LA s5, que
  ADD s7, s5, s6
  SW s3, 0(s7)
  JAL zero, bb12
bb14:
  ADDI s4, zero, 1
  JAL zero, bb8
init:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  ADD s0, zero, zero
  # implict jump to bb16
bb16:
  ADD s1, s0, zero
  SLTI s2, s1, 1005
  BNE s2, zero, bb18
  # implict jump to bb17
bb17:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb18:
  SLLIW s2, s1, 2
  LA s3, head
  ADD s4, s3, s2
  ADDI s2, zero, -1
  SW s2, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb16
inqueue:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s0, a0, zero
  SLLIW s1, s0, 2
  LA s2, inq
  ADD s3, s2, s1
  ADDI s1, zero, 1
  SW s1, 0(s3)
  LA s1, tail
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, tail
  SW s1, 0(s2)
  SLLIW s2, s1, 2
  LA s1, que
  ADD s3, s1, s2
  SW s0, 0(s3)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
add_edge:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
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
  SLLIW s3, s2, 2
  LA s2, to
  ADD s4, s2, s3
  SW s0, 0(s4)
  LA s0, cnt
  LW s2, 0(s0)
  SLLIW s0, s2, 2
  LA s2, next
  ADD s3, s2, s0
  SLLIW s0, s1, 2
  LA s1, head
  ADD s2, s1, s0
  LW s0, 0(s2)
  SW s0, 0(s3)
  LA s0, cnt
  LW s1, 0(s0)
  SW s1, 0(s2)
  LA s0, cnt
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, cnt
  SW s0, 0(s1)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -336
  SD ra, 224(sp)
  SD s0, 232(sp)
  SD s1, 240(sp)
  SD s11, 248(sp)
  SD s3, 256(sp)
  SD s4, 264(sp)
  SD s5, 272(sp)
  SD s7, 280(sp)
  SD s8, 288(sp)
  SD s9, 296(sp)
  SD s2, 304(sp)
  SD s6, 312(sp)
  SD s10, 320(sp)
  CALL getch
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 204(sp)
  ADD t4, s0, zero
  SW t4, 200(sp)
  # implict jump to bb22
bb22:
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 212(sp)
  LW t3, 204(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  LW t4, 212(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb158
  # implict jump to bb23
bb23:
  ADDI s4, zero, 57
  LW t4, 212(sp)
  SLT s5, s4, t4
  ADD s4, s5, zero
  # implict jump to bb24
bb24:
  ADD s5, s4, zero
  BNE s5, zero, bb154
  # implict jump to bb25
bb25:
  ADD t4, zero, zero
  SW t4, 120(sp)
  LW t3, 212(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  # implict jump to bb26
bb26:
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t4, 60(sp)
  SLTI s8, t4, 48
  XORI s9, s8, 1
  BNE s9, zero, bb153
  # implict jump to bb27
bb27:
  ADD s8, zero, zero
  # implict jump to bb28
bb28:
  ADD s9, s8, zero
  BNE s9, zero, bb152
  # implict jump to bb29
bb29:
  LW t4, 208(sp)
  XOR s8, t4, zero
  SLTU s9, zero, s8
  BNE s9, zero, bb151
  # implict jump to bb30
bb30:
  LW t4, 4(sp)
  ADD s8, t4, zero
  # implict jump to bb31
bb31:
  ADD s9, s8, zero
  LA s8, n
  SW s9, 0(s8)
  CALL getch
  ADD s8, a0, zero
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, s8, zero
  SW t4, 8(sp)
  # implict jump to bb32
bb32:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t4, 20(sp)
  SLTI s2, t4, 48
  BNE s2, zero, bb150
  # implict jump to bb33
bb33:
  ADDI s2, zero, 57
  LW t4, 20(sp)
  SLT s1, s2, t4
  ADD s2, s1, zero
  # implict jump to bb34
bb34:
  ADD s1, s2, zero
  BNE s1, zero, bb146
  # implict jump to bb35
bb35:
  ADD t4, zero, zero
  SW t4, 28(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  # implict jump to bb36
bb36:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t4, 32(sp)
  SLTI s5, t4, 48
  XORI s4, s5, 1
  BNE s4, zero, bb145
  # implict jump to bb37
bb37:
  ADD s4, zero, zero
  # implict jump to bb38
bb38:
  ADD s5, s4, zero
  BNE s5, zero, bb144
  # implict jump to bb39
bb39:
  LW t4, 16(sp)
  XOR s4, t4, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb143
  # implict jump to bb40
bb40:
  LW t4, 36(sp)
  ADD s4, t4, zero
  # implict jump to bb41
bb41:
  ADD s5, s4, zero
  LA s4, m
  SW s5, 0(s4)
  ADD t4, zero, zero
  SW t4, 40(sp)
  # implict jump to bb42
bb42:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t4, 44(sp)
  SLTI s6, t4, 1005
  BNE s6, zero, bb142
  # implict jump to bb43
bb43:
  ADD t4, zero, zero
  SW t4, 80(sp)
  ADD t4, zero, zero
  SW t4, 76(sp)
  ADD t4, zero, zero
  SW t4, 72(sp)
  ADD t4, zero, zero
  SW t4, 68(sp)
  # implict jump to bb44
bb44:
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LA s3, m
  LW s0, 0(s3)
  XOR s3, s0, zero
  SLTU s0, zero, s3
  BNE s0, zero, bb46
  # implict jump to bb45
bb45:
  ADD a0, zero, zero
  LD ra, 224(sp)
  LD s0, 232(sp)
  LD s1, 240(sp)
  LD s11, 248(sp)
  LD s3, 256(sp)
  LD s4, 264(sp)
  LD s5, 272(sp)
  LD s7, 280(sp)
  LD s8, 288(sp)
  LD s9, 296(sp)
  LD s2, 304(sp)
  LD s6, 312(sp)
  LD s10, 320(sp)
  ADDI sp, sp, 336
  JALR zero, 0(ra)
bb46:
  CALL getch
  ADD s0, a0, zero
  ADD t4, s0, zero
  SW t4, 64(sp)
  # implict jump to bb47
bb47:
  LW t4, 64(sp)
  ADD s0, t4, zero
  XORI s4, s0, 81
  SLTU s5, zero, s4
  BNE s5, zero, bb141
  # implict jump to bb48
bb48:
  ADD s4, zero, zero
  # implict jump to bb49
bb49:
  ADD s5, s4, zero
  BNE s5, zero, bb140
  # implict jump to bb50
bb50:
  XORI s4, s0, 81
  SLTIU s0, s4, 1
  BNE s0, zero, bb89
  # implict jump to bb51
bb51:
  CALL getch
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 88(sp)
  ADD t4, s0, zero
  SW t4, 84(sp)
  # implict jump to bb52
bb52:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LW t4, 96(sp)
  SLTI s8, t4, 48
  BNE s8, zero, bb88
  # implict jump to bb53
bb53:
  ADDI s8, zero, 57
  LW t4, 96(sp)
  SLT s2, s8, t4
  ADD s8, s2, zero
  # implict jump to bb54
bb54:
  ADD s2, s8, zero
  BNE s2, zero, bb84
  # implict jump to bb55
bb55:
  ADD t4, zero, zero
  SW t4, 104(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  # implict jump to bb56
bb56:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t4, 108(sp)
  SLTI s9, t4, 48
  XORI s10, s9, 1
  BNE s10, zero, bb83
  # implict jump to bb57
bb57:
  ADD s9, zero, zero
  # implict jump to bb58
bb58:
  ADD s7, s9, zero
  BNE s7, zero, bb82
  # implict jump to bb59
bb59:
  LW t4, 92(sp)
  XOR s7, t4, zero
  SLTU s9, zero, s7
  BNE s9, zero, bb81
  # implict jump to bb60
bb60:
  LW t4, 112(sp)
  ADD s7, t4, zero
  # implict jump to bb61
bb61:
  ADD t4, s7, zero
  SW t4, 116(sp)
  CALL getch
  ADD s7, a0, zero
  ADD s10, zero, zero
  ADD t4, s7, zero
  SW t4, 196(sp)
  # implict jump to bb62
bb62:
  LW t4, 196(sp)
  ADD s7, t4, zero
  ADD s5, s10, zero
  SLTI s4, s7, 48
  BNE s4, zero, bb80
  # implict jump to bb63
bb63:
  ADDI s4, zero, 57
  SLT s11, s4, s7
  ADD s4, s11, zero
  # implict jump to bb64
bb64:
  ADD s11, s4, zero
  BNE s11, zero, bb76
  # implict jump to bb65
bb65:
  ADD s4, zero, zero
  ADD s11, s7, zero
  # implict jump to bb66
bb66:
  ADD s0, s11, zero
  ADD s8, s4, zero
  SLTI s2, s0, 48
  XORI s1, s2, 1
  BNE s1, zero, bb75
  # implict jump to bb67
bb67:
  ADD s1, zero, zero
  # implict jump to bb68
bb68:
  ADD s2, s1, zero
  BNE s2, zero, bb74
  # implict jump to bb69
bb69:
  XOR s1, s5, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb73
  # implict jump to bb70
bb70:
  ADD s1, s8, zero
  # implict jump to bb71
bb71:
  ADD s2, s1, zero
  LA s1, cnt
  LW s3, 0(s1)
  SLLIW s1, s3, 2
  LA s3, to
  ADD s9, s3, s1
  SW s2, 0(s9)
  LA s1, cnt
  LW s3, 0(s1)
  SLLIW s1, s3, 2
  LA s3, next
  ADD s9, s3, s1
  LW t4, 116(sp)
  SLLIW s1, t4, 2
  LA s3, head
  ADD s6, s3, s1
  LW s1, 0(s6)
  SW s1, 0(s9)
  LA s1, cnt
  LW s3, 0(s1)
  SW s3, 0(s6)
  LA s1, cnt
  LW s3, 0(s1)
  ADDIW s1, s3, 1
  LA s3, cnt
  SW s1, 0(s3)
  SLLIW s3, s1, 2
  LA s1, to
  ADD s6, s1, s3
  LW t4, 116(sp)
  SW t4, 0(s6)
  LA s1, cnt
  LW s3, 0(s1)
  SLLIW s1, s3, 2
  LA s3, next
  ADD s6, s3, s1
  SLLIW s1, s2, 2
  LA s3, head
  ADD s9, s3, s1
  LW s1, 0(s9)
  SW s1, 0(s6)
  LA s1, cnt
  LW s3, 0(s1)
  SW s3, 0(s9)
  LA s1, cnt
  LW s3, 0(s1)
  ADDIW s1, s3, 1
  LA s3, cnt
  SW s1, 0(s3)
  ADD t4, s2, zero
  SW t4, 192(sp)
  LW t4, 116(sp)
  ADD s2, t4, zero
  LW t4, 52(sp)
  ADD s3, t4, zero
  LW t4, 48(sp)
  ADD s6, t4, zero
  # implict jump to bb72
bb72:
  ADD s7, s6, zero
  ADD s6, s3, zero
  ADD s3, s2, zero
  LW t4, 192(sp)
  ADD s2, t4, zero
  LA s11, m
  LW s9, 0(s11)
  ADDI s11, zero, 1
  SUBW s10, s9, s11
  LA s9, m
  SW s10, 0(s9)
  ADD t4, s2, zero
  SW t4, 80(sp)
  ADD t4, s3, zero
  SW t4, 76(sp)
  ADD t4, s6, zero
  SW t4, 72(sp)
  ADD t4, s7, zero
  SW t4, 68(sp)
  JAL zero, bb44
bb73:
  SUB s2, zero, s8
  ADD s1, s2, zero
  JAL zero, bb71
bb74:
  ADDI s9, zero, 10
  MULW s1, s8, s9
  ADDW s8, s1, s0
  ADDI s0, zero, 48
  SUBW s1, s8, s0
  CALL getch
  ADD s0, a0, zero
  ADD s4, s1, zero
  ADD s11, s0, zero
  JAL zero, bb66
bb75:
  ADDI s2, zero, 57
  SLT s3, s2, s0
  XORI s2, s3, 1
  ADD s1, s2, zero
  JAL zero, bb68
bb76:
  XORI s0, s7, 45
  SLTIU s1, s0, 1
  BNE s1, zero, bb79
  # implict jump to bb77
bb77:
  ADD s0, s5, zero
  # implict jump to bb78
bb78:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD s10, s1, zero
  ADD t4, s0, zero
  SW t4, 196(sp)
  JAL zero, bb62
bb79:
  ADDI s0, zero, 1
  JAL zero, bb78
bb80:
  ADDI s4, zero, 1
  JAL zero, bb64
bb81:
  LW t4, 112(sp)
  SUB s9, zero, t4
  ADD s7, s9, zero
  JAL zero, bb61
bb82:
  ADDI s0, zero, 10
  LW t4, 112(sp)
  MULW s1, t4, s0
  LW t4, 108(sp)
  ADDW s0, s1, t4
  ADDI s1, zero, 48
  SUBW s4, s0, s1
  CALL getch
  ADD s0, a0, zero
  ADD t4, s4, zero
  SW t4, 104(sp)
  ADD t4, s0, zero
  SW t4, 100(sp)
  JAL zero, bb56
bb83:
  ADDI s10, zero, 57
  LW t4, 108(sp)
  SLT s7, s10, t4
  XORI s10, s7, 1
  ADD s9, s10, zero
  JAL zero, bb58
bb84:
  LW t4, 96(sp)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  BNE s1, zero, bb87
  # implict jump to bb85
bb85:
  LW t4, 92(sp)
  ADD s0, t4, zero
  # implict jump to bb86
bb86:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD t4, s1, zero
  SW t4, 88(sp)
  ADD t4, s0, zero
  SW t4, 84(sp)
  JAL zero, bb52
bb87:
  ADDI s0, zero, 1
  JAL zero, bb86
bb88:
  ADDI s8, zero, 1
  JAL zero, bb54
bb89:
  CALL getch
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 184(sp)
  ADD t4, s0, zero
  SW t4, 188(sp)
  # implict jump to bb90
bb90:
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  LW t4, 176(sp)
  SLTI s7, t4, 48
  BNE s7, zero, bb139
  # implict jump to bb91
bb91:
  ADDI s7, zero, 57
  LW t4, 176(sp)
  SLT s8, s7, t4
  ADD s7, s8, zero
  # implict jump to bb92
bb92:
  ADD s8, s7, zero
  BNE s8, zero, bb135
  # implict jump to bb93
bb93:
  ADD t4, zero, zero
  SW t4, 168(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  # implict jump to bb94
bb94:
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  LW t4, 164(sp)
  SLTI s11, t4, 48
  XORI s4, s11, 1
  BNE s4, zero, bb134
  # implict jump to bb95
bb95:
  ADD s4, zero, zero
  # implict jump to bb96
bb96:
  ADD s1, s4, zero
  BNE s1, zero, bb133
  # implict jump to bb97
bb97:
  LW t4, 180(sp)
  XOR s1, t4, zero
  SLTU s4, zero, s1
  BNE s4, zero, bb132
  # implict jump to bb98
bb98:
  LW t4, 160(sp)
  ADD s1, t4, zero
  # implict jump to bb99
bb99:
  ADD t4, s1, zero
  SW t4, 156(sp)
  CALL getch
  ADD s1, a0, zero
  ADD t4, zero, zero
  SW t4, 148(sp)
  ADD t4, s1, zero
  SW t4, 152(sp)
  # implict jump to bb100
bb100:
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t4, 140(sp)
  SLTI s8, t4, 48
  BNE s8, zero, bb131
  # implict jump to bb101
bb101:
  ADDI s8, zero, 57
  LW t4, 140(sp)
  SLT s7, s8, t4
  ADD s8, s7, zero
  # implict jump to bb102
bb102:
  ADD s7, s8, zero
  BNE s7, zero, bb127
  # implict jump to bb103
bb103:
  ADD t4, zero, zero
  SW t4, 132(sp)
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  # implict jump to bb104
bb104:
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t4, 128(sp)
  SLTI s4, t4, 48
  XORI s5, s4, 1
  BNE s5, zero, bb126
  # implict jump to bb105
bb105:
  ADD s4, zero, zero
  # implict jump to bb106
bb106:
  ADD s5, s4, zero
  BNE s5, zero, bb125
  # implict jump to bb107
bb107:
  LW t4, 144(sp)
  XOR s4, t4, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb124
  # implict jump to bb108
bb108:
  LW t4, 124(sp)
  ADD s4, t4, zero
  # implict jump to bb109
bb109:
  ADD s5, s4, zero
  LA s4, h
  SW zero, 0(s4)
  LA s4, tail
  SW zero, 0(s4)
  LW t4, 156(sp)
  SLLIW s4, t4, 2
  LA s11, inq
  ADD s0, s11, s4
  ADDI s4, zero, 1
  SW s4, 0(s0)
  LA s0, tail
  LW s4, 0(s0)
  ADDIW s0, s4, 1
  LA s4, tail
  SW s0, 0(s4)
  SLLIW s4, s0, 2
  LA s0, que
  ADD s11, s0, s4
  LW t4, 156(sp)
  SW t4, 0(s11)
  ADD s0, zero, zero
  # implict jump to bb110
bb110:
  ADD s4, s0, zero
  LA s11, h
  LW s1, 0(s11)
  LA s11, tail
  LW s8, 0(s11)
  SLT s11, s1, s8
  BNE s11, zero, bb115
  # implict jump to bb111
bb111:
  ADD s1, zero, zero
  # implict jump to bb112
bb112:
  ADD s8, s1, zero
  LA s11, tail
  LW s7, 0(s11)
  SLT s11, s7, s8
  XORI s7, s11, 1
  BNE s7, zero, bb114
  # implict jump to bb113
bb113:
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  LW t4, 56(sp)
  ADD s2, t4, zero
  ADD s3, s5, zero
  LW t4, 156(sp)
  ADD s6, t4, zero
  JAL zero, bb72
bb114:
  SLLIW s2, s8, 2
  LA s3, que
  ADD s6, s3, s2
  LW s2, 0(s6)
  SLLIW s3, s2, 2
  LA s2, inq
  ADD s6, s2, s3
  SW zero, 0(s6)
  ADDIW s2, s8, 1
  ADD s1, s2, zero
  JAL zero, bb112
bb115:
  LA s1, h
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, h
  SW s1, 0(s2)
  SLLIW s2, s1, 2
  LA s1, que
  ADD s3, s1, s2
  LW s1, 0(s3)
  XOR s2, s1, s5
  SLTIU s3, s2, 1
  BNE s3, zero, bb123
  # implict jump to bb116
bb116:
  ADD s2, s4, zero
  # implict jump to bb117
bb117:
  ADD s3, s2, zero
  SLLIW s2, s1, 2
  LA s1, head
  ADD s4, s1, s2
  LW s1, 0(s4)
  ADD s2, s1, zero
  # implict jump to bb118
bb118:
  ADD s1, s2, zero
  XORI s4, s1, -1
  SLTU s6, zero, s4
  BNE s6, zero, bb120
  # implict jump to bb119
bb119:
  ADD s0, s3, zero
  JAL zero, bb110
bb120:
  SLLIW s0, s1, 2
  LA s1, to
  ADD s4, s1, s0
  LW s1, 0(s4)
  SLLIW s6, s1, 2
  LA s1, inq
  ADD s7, s1, s6
  LW s1, 0(s7)
  XOR s6, s1, zero
  SLTU s1, zero, s6
  XORI s6, s1, 1
  XOR s1, s6, zero
  SLTU s6, zero, s1
  BNE s6, zero, bb122
  # implict jump to bb121
bb121:
  LA s1, next
  ADD s4, s1, s0
  LW s0, 0(s4)
  ADD s2, s0, zero
  JAL zero, bb118
bb122:
  LW s1, 0(s4)
  SLLIW s4, s1, 2
  LA s6, inq
  ADD s7, s6, s4
  ADDI s4, zero, 1
  SW s4, 0(s7)
  LA s4, tail
  LW s6, 0(s4)
  ADDIW s4, s6, 1
  LA s6, tail
  SW s4, 0(s6)
  SLLIW s6, s4, 2
  LA s4, que
  ADD s7, s4, s6
  SW s1, 0(s7)
  JAL zero, bb121
bb123:
  ADDI s2, zero, 1
  JAL zero, bb117
bb124:
  LW t4, 124(sp)
  SUB s5, zero, t4
  ADD s4, s5, zero
  JAL zero, bb109
bb125:
  ADDI s0, zero, 10
  LW t4, 124(sp)
  MULW s1, t4, s0
  LW t4, 128(sp)
  ADDW s0, s1, t4
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s0, a0, zero
  ADD t4, s2, zero
  SW t4, 132(sp)
  ADD t4, s0, zero
  SW t4, 136(sp)
  JAL zero, bb104
bb126:
  ADDI s5, zero, 57
  LW t4, 128(sp)
  SLT s11, s5, t4
  XORI s5, s11, 1
  ADD s4, s5, zero
  JAL zero, bb106
bb127:
  LW t4, 140(sp)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  BNE s1, zero, bb130
  # implict jump to bb128
bb128:
  LW t4, 144(sp)
  ADD s0, t4, zero
  # implict jump to bb129
bb129:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD t4, s1, zero
  SW t4, 148(sp)
  ADD t4, s0, zero
  SW t4, 152(sp)
  JAL zero, bb100
bb130:
  ADDI s0, zero, 1
  JAL zero, bb129
bb131:
  ADDI s8, zero, 1
  JAL zero, bb102
bb132:
  LW t4, 160(sp)
  SUB s4, zero, t4
  ADD s1, s4, zero
  JAL zero, bb99
bb133:
  ADDI s0, zero, 10
  LW t4, 160(sp)
  MULW s1, t4, s0
  LW t4, 164(sp)
  ADDW s0, s1, t4
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s0, a0, zero
  ADD t4, s2, zero
  SW t4, 168(sp)
  ADD t4, s0, zero
  SW t4, 172(sp)
  JAL zero, bb94
bb134:
  ADDI s11, zero, 57
  LW t4, 164(sp)
  SLT s1, s11, t4
  XORI s11, s1, 1
  ADD s4, s11, zero
  JAL zero, bb96
bb135:
  LW t4, 176(sp)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  BNE s1, zero, bb138
  # implict jump to bb136
bb136:
  LW t4, 180(sp)
  ADD s0, t4, zero
  # implict jump to bb137
bb137:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD t4, s1, zero
  SW t4, 184(sp)
  ADD t4, s0, zero
  SW t4, 188(sp)
  JAL zero, bb90
bb138:
  ADDI s0, zero, 1
  JAL zero, bb137
bb139:
  ADDI s7, zero, 1
  JAL zero, bb92
bb140:
  CALL getch
  ADD s0, a0, zero
  ADD t4, s0, zero
  SW t4, 64(sp)
  JAL zero, bb47
bb141:
  XORI s5, s0, 85
  SLTU s11, zero, s5
  ADD s4, s11, zero
  JAL zero, bb49
bb142:
  LW t4, 44(sp)
  SLLIW s0, t4, 2
  LA s1, head
  ADD s2, s1, s0
  ADDI s0, zero, -1
  SW s0, 0(s2)
  LW t4, 44(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 40(sp)
  JAL zero, bb42
bb143:
  LW t4, 36(sp)
  SUB s5, zero, t4
  ADD s4, s5, zero
  JAL zero, bb41
bb144:
  ADDI s0, zero, 10
  LW t4, 36(sp)
  MULW s1, t4, s0
  LW t4, 32(sp)
  ADDW s0, s1, t4
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s0, a0, zero
  ADD t4, s2, zero
  SW t4, 28(sp)
  ADD t4, s0, zero
  SW t4, 24(sp)
  JAL zero, bb36
bb145:
  ADDI s5, zero, 57
  LW t4, 32(sp)
  SLT s6, s5, t4
  XORI s5, s6, 1
  ADD s4, s5, zero
  JAL zero, bb38
bb146:
  LW t4, 20(sp)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  BNE s1, zero, bb149
  # implict jump to bb147
bb147:
  LW t4, 16(sp)
  ADD s0, t4, zero
  # implict jump to bb148
bb148:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD t4, s1, zero
  SW t4, 12(sp)
  ADD t4, s0, zero
  SW t4, 8(sp)
  JAL zero, bb32
bb149:
  ADDI s0, zero, 1
  JAL zero, bb148
bb150:
  ADDI s2, zero, 1
  JAL zero, bb34
bb151:
  LW t4, 4(sp)
  SUB s9, zero, t4
  ADD s8, s9, zero
  JAL zero, bb31
bb152:
  ADDI s0, zero, 10
  LW t4, 4(sp)
  MULW s1, t4, s0
  LW t4, 60(sp)
  ADDW s0, s1, t4
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s0, a0, zero
  ADD t4, s2, zero
  SW t4, 120(sp)
  ADD t4, s0, zero
  SW t4, 216(sp)
  JAL zero, bb26
bb153:
  ADDI s9, zero, 57
  LW t4, 60(sp)
  SLT s10, s9, t4
  XORI s9, s10, 1
  ADD s8, s9, zero
  JAL zero, bb28
bb154:
  LW t4, 212(sp)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  BNE s1, zero, bb157
  # implict jump to bb155
bb155:
  LW t4, 208(sp)
  ADD s0, t4, zero
  # implict jump to bb156
bb156:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD t4, s1, zero
  SW t4, 204(sp)
  ADD t4, s0, zero
  SW t4, 200(sp)
  JAL zero, bb22
bb157:
  ADDI s0, zero, 1
  JAL zero, bb156
bb158:
  ADDI s4, zero, 1
  JAL zero, bb24
pop_queue:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  LA s0, h
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, h
  SW s0, 0(s1)
  SLLIW s1, s0, 2
  LA s0, que
  ADD s2, s0, s1
  LW s0, 0(s2)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
quick_read:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  # implict jump to bb161
bb161:
  ADD s0, s2, zero
  ADD s3, s1, zero
  SLTI s4, s0, 48
  BNE s4, zero, bb177
  # implict jump to bb162
bb162:
  ADDI s4, zero, 57
  SLT s5, s4, s0
  ADD s4, s5, zero
  # implict jump to bb163
bb163:
  ADD s5, s4, zero
  BNE s5, zero, bb173
  # implict jump to bb164
bb164:
  ADD s4, zero, zero
  ADD s5, s0, zero
  # implict jump to bb165
bb165:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s6, 48
  XORI s9, s8, 1
  BNE s9, zero, bb172
  # implict jump to bb166
bb166:
  ADD s8, zero, zero
  # implict jump to bb167
bb167:
  ADD s9, s8, zero
  BNE s9, zero, bb171
  # implict jump to bb168
bb168:
  XOR s8, s3, zero
  SLTU s9, zero, s8
  BNE s9, zero, bb170
  # implict jump to bb169
bb169:
  ADD a0, s7, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb170:
  SUB s8, zero, s7
  ADD a0, s8, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb171:
  ADDI s8, zero, 10
  MULW s9, s7, s8
  ADDW s7, s9, s6
  ADDI s6, zero, 48
  SUBW s8, s7, s6
  CALL getch
  ADD s6, a0, zero
  ADD s4, s8, zero
  ADD s5, s6, zero
  JAL zero, bb165
bb172:
  ADDI s9, zero, 57
  SLT s10, s9, s6
  XORI s9, s10, 1
  ADD s8, s9, zero
  JAL zero, bb167
bb173:
  XORI s4, s0, 45
  SLTIU s0, s4, 1
  BNE s0, zero, bb176
  # implict jump to bb174
bb174:
  ADD s0, s3, zero
  # implict jump to bb175
bb175:
  ADD s3, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD s1, s3, zero
  ADD s2, s0, zero
  JAL zero, bb161
bb176:
  ADDI s0, zero, 1
  JAL zero, bb175
bb177:
  ADDI s4, zero, 1
  JAL zero, bb163
