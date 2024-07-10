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
  LA s2, h
  ADDI s3, zero, 0
  SW s3, 0(s2)
  LA s2, tail
  ADDI s3, zero, 0
  SW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, inq
  ADD s4, s2, s3
  ADDI s2, zero, 1
  SW s2, 0(s4)
  LA s2, tail
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, tail
  SW s2, 0(s3)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s2, que
  ADD s3, s2, s4
  SW s0, 0(s3)
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
  ADD s0, zero, zero
  # implict jump to bb3
bb3:
  ADD s1, s0, zero
  LA s3, tail
  LW s4, 0(s3)
  SLT s3, s4, s1
  XORI s4, s3, 1
  BNE s4, zero, bb5
  # implict jump to bb4
bb4:
  ADD a0, s2, zero
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
bb5:
  ADDI s3, zero, 4
  MULW s4, s1, s3
  LA s3, que
  ADD s5, s3, s4
  LW s3, 0(s5)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LA s3, inq
  ADD s4, s3, s5
  SW zero, 0(s4)
  ADDIW s3, s1, 1
  ADD s0, s3, zero
  JAL zero, bb3
bb6:
  LA s3, h
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, h
  SW s3, 0(s4)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LA s3, que
  ADD s4, s3, s5
  LW s3, 0(s4)
  XOR s4, s3, s1
  SLTIU s5, s4, 1
  BNE s5, zero, bb14
  # implict jump to bb7
bb7:
  ADD s4, s2, zero
  # implict jump to bb8
bb8:
  ADD s5, s4, zero
  ADDI s6, zero, 4
  MULW s7, s3, s6
  LA s6, head
  ADD s8, s6, s7
  LW s6, 0(s8)
  ADD s7, s6, zero
  # implict jump to bb9
bb9:
  ADD s6, s7, zero
  XORI s8, s6, -1
  SLTU s9, zero, s8
  BNE s9, zero, bb11
  # implict jump to bb10
bb10:
  ADD s0, s5, zero
  JAL zero, bb1
bb11:
  ADDI s8, zero, 4
  MULW s9, s6, s8
  LA s6, to
  ADD s8, s6, s9
  LW s6, 0(s8)
  ADDI s10, zero, 4
  MULW s11, s6, s10
  LA s6, inq
  ADD s10, s6, s11
  LW s6, 0(s10)
  XOR s10, s6, zero
  SLTU s6, zero, s10
  XORI s10, s6, 1
  XOR s6, s10, zero
  SLTU s10, zero, s6
  BNE s10, zero, bb13
  # implict jump to bb12
bb12:
  LA s6, next
  ADD s8, s6, s9
  LW s6, 0(s8)
  ADD s7, s6, zero
  JAL zero, bb9
bb13:
  LW s6, 0(s8)
  ADDI s8, zero, 4
  MULW s10, s6, s8
  LA s8, inq
  ADD s11, s8, s10
  ADDI s8, zero, 1
  SW s8, 0(s11)
  LA s8, tail
  LW s10, 0(s8)
  ADDIW s8, s10, 1
  LA s10, tail
  SW s8, 0(s10)
  ADDI s10, zero, 4
  MULW s11, s8, s10
  LA s8, que
  ADD s10, s8, s11
  SW s6, 0(s10)
  JAL zero, bb12
bb14:
  ADDI s4, zero, 1
  JAL zero, bb8
init:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, zero, zero
  # implict jump to bb16
bb16:
  ADD s1, s0, zero
  SLTI s2, s1, 1005
  BNE s2, zero, bb18
  # implict jump to bb17
bb17:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb18:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, head
  ADD s4, s2, s3
  ADDI s2, zero, -1
  SW s2, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb16
inqueue:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, inq
  ADD s3, s1, s2
  ADDI s1, zero, 1
  SW s1, 0(s3)
  LA s1, tail
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, tail
  SW s1, 0(s2)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, que
  ADD s2, s1, s3
  SW s0, 0(s2)
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
  LA s2, cnt
  LW s3, 0(s2)
  SW s3, 0(s5)
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
  ADD s1, s0, s3
  LW s0, 0(s1)
  SW s0, 0(s2)
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
  ADDI sp, sp, -304
  SD s11, 200(sp)
  SD s6, 208(sp)
  SD s8, 216(sp)
  SD s0, 224(sp)
  SD s5, 232(sp)
  SD s7, 240(sp)
  SD s10, 248(sp)
  SD s1, 256(sp)
  SD s2, 264(sp)
  SD s9, 272(sp)
  SD s4, 280(sp)
  SD ra, 288(sp)
  SD s3, 296(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  # implict jump to bb22
bb22:
  ADD t4, s2, zero
  SW t4, 4(sp)
  ADD t4, s1, zero
  SW t4, 0(sp)
  LW t4, 4(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb158
  # implict jump to bb23
bb23:
  ADDI s0, zero, 57
  LW t4, 4(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 8(sp)
  # implict jump to bb24
bb24:
  LB t4, 8(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb154
  # implict jump to bb25
bb25:
  ADD s1, zero, zero
  LW t4, 4(sp)
  ADD s2, t4, zero
  # implict jump to bb26
bb26:
  ADD t4, s2, zero
  SW t4, 16(sp)
  ADD t4, s1, zero
  SW t4, 12(sp)
  LW t4, 16(sp)
  SLTI s7, t4, 48
  XORI s8, s7, 1
  BNE s8, zero, bb153
  # implict jump to bb27
bb27:
  ADD t4, zero, zero
  SB t4, 20(sp)
  # implict jump to bb28
bb28:
  LB t4, 20(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb152
  # implict jump to bb29
bb29:
  LW t4, 0(sp)
  XOR s1, t4, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb151
  # implict jump to bb30
bb30:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  # implict jump to bb31
bb31:
  LW t4, 24(sp)
  ADD s1, t4, zero
  LA s7, n
  SW s1, 0(s7)
  CALL getch
  ADD s1, a0, zero
  ADD s7, zero, zero
  ADD s9, s1, zero
  # implict jump to bb32
bb32:
  ADD t4, s9, zero
  SW t4, 32(sp)
  ADD t4, s7, zero
  SW t4, 28(sp)
  LW t4, 32(sp)
  SLTI s11, t4, 48
  BNE s11, zero, bb150
  # implict jump to bb33
bb33:
  ADDI s0, zero, 57
  LW t4, 32(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 36(sp)
  # implict jump to bb34
bb34:
  LB t4, 36(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb146
  # implict jump to bb35
bb35:
  ADD s0, zero, zero
  LW t4, 32(sp)
  ADD s3, t4, zero
  # implict jump to bb36
bb36:
  ADD t4, s3, zero
  SW t4, 44(sp)
  ADD t4, s0, zero
  SW t4, 40(sp)
  LW t4, 44(sp)
  SLTI s9, t4, 48
  XORI s6, s9, 1
  BNE s6, zero, bb145
  # implict jump to bb37
bb37:
  ADD t4, zero, zero
  SB t4, 48(sp)
  # implict jump to bb38
bb38:
  LB t4, 48(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb144
  # implict jump to bb39
bb39:
  LW t4, 28(sp)
  XOR s0, t4, zero
  SLTU s3, zero, s0
  BNE s3, zero, bb143
  # implict jump to bb40
bb40:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  # implict jump to bb41
bb41:
  LW t4, 52(sp)
  ADD s0, t4, zero
  LA s5, m
  SW s0, 0(s5)
  ADD s0, zero, zero
  # implict jump to bb42
bb42:
  ADD s5, s0, zero
  SLTI s6, s5, 1005
  BNE s6, zero, bb142
  # implict jump to bb43
bb43:
  ADD t4, zero, zero
  SW t4, 152(sp)
  ADD t4, zero, zero
  SW t4, 148(sp)
  ADD t4, zero, zero
  SW t4, 144(sp)
  ADD t4, zero, zero
  SW t4, 140(sp)
  # implict jump to bb44
bb44:
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LA s7, m
  LW s4, 0(s7)
  XOR s7, s4, zero
  SLTU s4, zero, s7
  BNE s4, zero, bb46
  # implict jump to bb45
bb45:
  ADD a0, zero, zero
  LD s11, 200(sp)
  LD s6, 208(sp)
  LD s8, 216(sp)
  LD s0, 224(sp)
  LD s5, 232(sp)
  LD s7, 240(sp)
  LD s10, 248(sp)
  LD s1, 256(sp)
  LD s2, 264(sp)
  LD s9, 272(sp)
  LD s4, 280(sp)
  LD ra, 288(sp)
  LD s3, 296(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb46:
  CALL getch
  ADD s4, a0, zero
  ADD s7, s4, zero
  # implict jump to bb47
bb47:
  ADD t4, s7, zero
  SW t4, 56(sp)
  LW t4, 56(sp)
  XORI s9, t4, 81
  SLTU s3, zero, s9
  BNE s3, zero, bb141
  # implict jump to bb48
bb48:
  ADD t4, zero, zero
  SB t4, 76(sp)
  # implict jump to bb49
bb49:
  LB t4, 76(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb140
  # implict jump to bb50
bb50:
  LW t4, 56(sp)
  XORI s7, t4, 81
  SLTIU s9, s7, 1
  BNE s9, zero, bb89
  # implict jump to bb51
bb51:
  CALL getch
  ADD s4, a0, zero
  ADD s5, zero, zero
  ADD s6, s4, zero
  # implict jump to bb52
bb52:
  ADD t4, s6, zero
  SW t4, 160(sp)
  ADD t4, s5, zero
  SW t4, 156(sp)
  LW t4, 160(sp)
  SLTI s8, t4, 48
  BNE s8, zero, bb88
  # implict jump to bb53
bb53:
  ADDI s0, zero, 57
  LW t4, 160(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 164(sp)
  # implict jump to bb54
bb54:
  LB t4, 164(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb84
  # implict jump to bb55
bb55:
  ADD s5, zero, zero
  LW t4, 160(sp)
  ADD s6, t4, zero
  # implict jump to bb56
bb56:
  ADD t4, s6, zero
  SW t4, 172(sp)
  ADD t4, s5, zero
  SW t4, 168(sp)
  LW t4, 172(sp)
  SLTI s11, t4, 48
  XORI s7, s11, 1
  BNE s7, zero, bb83
  # implict jump to bb57
bb57:
  ADD t4, zero, zero
  SB t4, 176(sp)
  # implict jump to bb58
bb58:
  LB t4, 176(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb82
  # implict jump to bb59
bb59:
  LW t4, 156(sp)
  XOR s4, t4, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb81
  # implict jump to bb60
bb60:
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  # implict jump to bb61
bb61:
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  CALL getch
  ADD s6, a0, zero
  ADD s7, zero, zero
  ADD s8, s6, zero
  # implict jump to bb62
bb62:
  ADD t4, s8, zero
  SW t4, 188(sp)
  ADD t4, s7, zero
  SW t4, 184(sp)
  LW t4, 188(sp)
  SLTI s9, t4, 48
  BNE s9, zero, bb80
  # implict jump to bb63
bb63:
  ADDI s0, zero, 57
  LW t4, 188(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 196(sp)
  # implict jump to bb64
bb64:
  LB t4, 196(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb76
  # implict jump to bb65
bb65:
  ADD s5, zero, zero
  LW t4, 188(sp)
  ADD s7, t4, zero
  # implict jump to bb66
bb66:
  ADD s8, s7, zero
  ADD s10, s5, zero
  SLTI s11, s8, 48
  XORI s6, s11, 1
  BNE s6, zero, bb75
  # implict jump to bb67
bb67:
  ADD s11, zero, zero
  # implict jump to bb68
bb68:
  ADD s6, s11, zero
  BNE s6, zero, bb74
  # implict jump to bb69
bb69:
  LW t4, 184(sp)
  XOR s4, t4, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb73
  # implict jump to bb70
bb70:
  ADD s5, s10, zero
  # implict jump to bb71
bb71:
  ADD s4, s5, zero
  LA s6, cnt
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s9, s7, s6
  LA s6, to
  ADD s7, s6, s9
  SW s4, 0(s7)
  LA s6, cnt
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s9, s7, s6
  LA s6, next
  ADD s7, s6, s9
  ADDI s6, zero, 4
  LW t4, 192(sp)
  MULW s9, t4, s6
  LA s6, head
  ADD t0, s6, s9
  LW s6, 0(t0)
  SW s6, 0(s7)
  LA s6, cnt
  LW s7, 0(s6)
  SW s7, 0(t0)
  LA s6, cnt
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, cnt
  SW s6, 0(s7)
  ADDI s7, zero, 4
  MULW s9, s6, s7
  LA s6, to
  ADD s7, s6, s9
  LW t4, 192(sp)
  SW t4, 0(s7)
  LA s6, cnt
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s9, s7, s6
  LA s6, next
  ADD s7, s6, s9
  ADDI s6, zero, 4
  MULW s9, s4, s6
  LA s6, head
  ADD t0, s6, s9
  LW s6, 0(t0)
  SW s6, 0(s7)
  LA s6, cnt
  LW s7, 0(s6)
  SW s7, 0(t0)
  LA s6, cnt
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, cnt
  SW s6, 0(s7)
  ADD s0, s4, zero
  LW t4, 192(sp)
  ADD s2, t4, zero
  LW t4, 68(sp)
  ADD s3, t4, zero
  LW t4, 72(sp)
  ADD s1, t4, zero
  # implict jump to bb72
bb72:
  ADD s4, s1, zero
  ADD s5, s3, zero
  ADD s6, s2, zero
  ADD s7, s0, zero
  LA s8, m
  LW s9, 0(s8)
  ADDI s8, zero, 1
  SUBW s10, s9, s8
  LA s8, m
  SW s10, 0(s8)
  ADD t4, s7, zero
  SW t4, 152(sp)
  ADD t4, s6, zero
  SW t4, 148(sp)
  ADD t4, s5, zero
  SW t4, 144(sp)
  ADD t4, s4, zero
  SW t4, 140(sp)
  JAL zero, bb44
bb73:
  SUB s4, zero, s10
  ADD s5, s4, zero
  JAL zero, bb71
bb74:
  ADDI s6, zero, 10
  MULW s4, s10, s6
  ADDW s6, s4, s8
  ADDI s4, zero, 48
  SUBW s9, s6, s4
  CALL getch
  ADD s4, a0, zero
  ADD s5, s9, zero
  ADD s7, s4, zero
  JAL zero, bb66
bb75:
  ADDI s6, zero, 57
  SLT s11, s6, s8
  XORI s6, s11, 1
  ADD s11, s6, zero
  JAL zero, bb68
bb76:
  LW t4, 188(sp)
  XORI s11, t4, 45
  SLTIU s5, s11, 1
  BNE s5, zero, bb79
  # implict jump to bb77
bb77:
  LW t4, 184(sp)
  ADD s5, t4, zero
  # implict jump to bb78
bb78:
  ADD s11, s5, zero
  CALL getch
  ADD s10, a0, zero
  ADD s7, s11, zero
  ADD s8, s10, zero
  JAL zero, bb62
bb79:
  ADDI s5, zero, 1
  JAL zero, bb78
bb80:
  ADDI t4, zero, 1
  SB t4, 196(sp)
  JAL zero, bb64
bb81:
  LW t4, 168(sp)
  SUB s4, zero, t4
  ADD t4, s4, zero
  SW t4, 180(sp)
  JAL zero, bb61
bb82:
  ADDI s7, zero, 10
  LW t4, 168(sp)
  MULW s4, t4, s7
  LW t4, 172(sp)
  ADDW s7, s4, t4
  ADDI s4, zero, 48
  SUBW s8, s7, s4
  CALL getch
  ADD s4, a0, zero
  ADD s5, s8, zero
  ADD s6, s4, zero
  JAL zero, bb56
bb83:
  ADDI s7, zero, 57
  LW t4, 172(sp)
  SLT s11, s7, t4
  XORI s7, s11, 1
  ADD t4, s7, zero
  SB t4, 176(sp)
  JAL zero, bb58
bb84:
  LW t4, 160(sp)
  XORI s9, t4, 45
  SLTIU s10, s9, 1
  BNE s10, zero, bb87
  # implict jump to bb85
bb85:
  LW t4, 156(sp)
  ADD s9, t4, zero
  # implict jump to bb86
bb86:
  ADD s10, s9, zero
  CALL getch
  ADD s11, a0, zero
  ADD s5, s10, zero
  ADD s6, s11, zero
  JAL zero, bb52
bb87:
  ADDI s9, zero, 1
  JAL zero, bb86
bb88:
  ADDI t4, zero, 1
  SB t4, 164(sp)
  JAL zero, bb54
bb89:
  CALL getch
  ADD s7, a0, zero
  ADD s9, zero, zero
  ADD s4, s7, zero
  # implict jump to bb90
bb90:
  ADD t4, s4, zero
  SW t4, 84(sp)
  ADD t4, s9, zero
  SW t4, 80(sp)
  LW t4, 84(sp)
  SLTI s1, t4, 48
  BNE s1, zero, bb139
  # implict jump to bb91
bb91:
  ADDI s4, zero, 57
  LW t4, 84(sp)
  SLT s5, s4, t4
  ADD t4, s5, zero
  SB t4, 88(sp)
  # implict jump to bb92
bb92:
  LB t4, 88(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb135
  # implict jump to bb93
bb93:
  ADD s3, zero, zero
  LW t4, 84(sp)
  ADD s4, t4, zero
  # implict jump to bb94
bb94:
  ADD t4, s4, zero
  SW t4, 96(sp)
  ADD t4, s3, zero
  SW t4, 92(sp)
  LW t4, 96(sp)
  SLTI s10, t4, 48
  XORI s11, s10, 1
  BNE s11, zero, bb134
  # implict jump to bb95
bb95:
  ADD t4, zero, zero
  SB t4, 100(sp)
  # implict jump to bb96
bb96:
  LB t4, 100(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb133
  # implict jump to bb97
bb97:
  LW t4, 80(sp)
  XOR s1, t4, zero
  SLTU s3, zero, s1
  BNE s3, zero, bb132
  # implict jump to bb98
bb98:
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  # implict jump to bb99
bb99:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  CALL getch
  ADD s4, a0, zero
  ADD s7, zero, zero
  ADD s10, s4, zero
  # implict jump to bb100
bb100:
  ADD t4, s10, zero
  SW t4, 112(sp)
  ADD t4, s7, zero
  SW t4, 108(sp)
  LW t4, 112(sp)
  SLTI s8, t4, 48
  BNE s8, zero, bb131
  # implict jump to bb101
bb101:
  ADDI s4, zero, 57
  LW t4, 112(sp)
  SLT s5, s4, t4
  ADD t4, s5, zero
  SB t4, 120(sp)
  # implict jump to bb102
bb102:
  LB t4, 120(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb127
  # implict jump to bb103
bb103:
  ADD s3, zero, zero
  LW t4, 112(sp)
  ADD s7, t4, zero
  # implict jump to bb104
bb104:
  ADD t4, s7, zero
  SW t4, 128(sp)
  ADD t4, s3, zero
  SW t4, 124(sp)
  LW t4, 128(sp)
  SLTI s11, t4, 48
  XORI s4, s11, 1
  BNE s4, zero, bb126
  # implict jump to bb105
bb105:
  ADD t4, zero, zero
  SB t4, 132(sp)
  # implict jump to bb106
bb106:
  LB t4, 132(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb125
  # implict jump to bb107
bb107:
  LW t4, 108(sp)
  XOR s1, t4, zero
  SLTU s3, zero, s1
  BNE s3, zero, bb124
  # implict jump to bb108
bb108:
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  # implict jump to bb109
bb109:
  LW t4, 136(sp)
  ADD s1, t4, zero
  LA s4, h
  SW zero, 0(s4)
  LA s4, tail
  SW zero, 0(s4)
  ADDI s4, zero, 4
  LW t4, 116(sp)
  MULW s7, t4, s4
  LA s4, inq
  ADD s8, s4, s7
  ADDI s4, zero, 1
  SW s4, 0(s8)
  LA s4, tail
  LW s7, 0(s4)
  ADDIW s4, s7, 1
  LA s7, tail
  SW s4, 0(s7)
  ADDI s7, zero, 4
  MULW s8, s4, s7
  LA s4, que
  ADD s7, s4, s8
  LW t4, 116(sp)
  SW t4, 0(s7)
  ADD s4, zero, zero
  # implict jump to bb110
bb110:
  ADD s7, s4, zero
  LA s8, h
  LW s10, 0(s8)
  LA s8, tail
  LW s9, 0(s8)
  SLT s8, s10, s9
  BNE s8, zero, bb115
  # implict jump to bb111
bb111:
  ADD s0, zero, zero
  # implict jump to bb112
bb112:
  ADD s2, s0, zero
  LA s3, tail
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb114
  # implict jump to bb113
bb113:
  ADD a0, s7, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t4, 60(sp)
  ADD s0, t4, zero
  LW t4, 64(sp)
  ADD s2, t4, zero
  ADD s3, s1, zero
  LW t4, 116(sp)
  ADD s1, t4, zero
  JAL zero, bb72
bb114:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s3, que
  ADD s5, s3, s4
  LW s3, 0(s5)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LA s3, inq
  ADD s4, s3, s5
  SW zero, 0(s4)
  ADDIW s3, s2, 1
  ADD s0, s3, zero
  JAL zero, bb112
bb115:
  LA s8, h
  LW s9, 0(s8)
  ADDIW s8, s9, 1
  LA s9, h
  SW s8, 0(s9)
  ADDI s9, zero, 4
  MULW s10, s8, s9
  LA s8, que
  ADD s9, s8, s10
  LW s8, 0(s9)
  XOR s9, s8, s1
  SLTIU s10, s9, 1
  BNE s10, zero, bb123
  # implict jump to bb116
bb116:
  ADD s9, s7, zero
  # implict jump to bb117
bb117:
  ADD s10, s9, zero
  ADDI s11, zero, 4
  MULW s3, s8, s11
  LA s11, head
  ADD s6, s11, s3
  LW s3, 0(s6)
  ADD s6, s3, zero
  # implict jump to bb118
bb118:
  ADD s3, s6, zero
  XORI s11, s3, -1
  SLTU s5, zero, s11
  BNE s5, zero, bb120
  # implict jump to bb119
bb119:
  ADD s4, s10, zero
  JAL zero, bb110
bb120:
  ADDI s5, zero, 4
  MULW s11, s3, s5
  LA s3, to
  ADD s5, s3, s11
  LW s3, 0(s5)
  ADDI s2, zero, 4
  MULW s0, s3, s2
  LA s2, inq
  ADD s3, s2, s0
  LW s0, 0(s3)
  XOR s2, s0, zero
  SLTU s0, zero, s2
  XORI s2, s0, 1
  XOR s0, s2, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb122
  # implict jump to bb121
bb121:
  LA s0, next
  ADD s2, s0, s11
  LW s0, 0(s2)
  ADD s6, s0, zero
  JAL zero, bb118
bb122:
  LW s0, 0(s5)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, inq
  ADD s5, s2, s3
  ADDI s2, zero, 1
  SW s2, 0(s5)
  LA s2, tail
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, tail
  SW s2, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s2, s3
  LA s2, que
  ADD s3, s2, s5
  SW s0, 0(s3)
  JAL zero, bb121
bb123:
  ADDI s9, zero, 1
  JAL zero, bb117
bb124:
  LW t4, 124(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 136(sp)
  JAL zero, bb109
bb125:
  ADDI s4, zero, 10
  LW t4, 124(sp)
  MULW s1, t4, s4
  LW t4, 128(sp)
  ADDW s4, s1, t4
  ADDI s1, zero, 48
  SUBW s8, s4, s1
  CALL getch
  ADD s1, a0, zero
  ADD s3, s8, zero
  ADD s7, s1, zero
  JAL zero, bb104
bb126:
  ADDI s4, zero, 57
  LW t4, 128(sp)
  SLT s11, s4, t4
  XORI s4, s11, 1
  ADD t4, s4, zero
  SB t4, 132(sp)
  JAL zero, bb106
bb127:
  LW t4, 112(sp)
  XORI s11, t4, 45
  SLTIU s3, s11, 1
  BNE s3, zero, bb130
  # implict jump to bb128
bb128:
  LW t4, 108(sp)
  ADD s3, t4, zero
  # implict jump to bb129
bb129:
  ADD s11, s3, zero
  CALL getch
  ADD s9, a0, zero
  ADD s7, s11, zero
  ADD s10, s9, zero
  JAL zero, bb100
bb130:
  ADDI s3, zero, 1
  JAL zero, bb129
bb131:
  ADDI t4, zero, 1
  SB t4, 120(sp)
  JAL zero, bb102
bb132:
  LW t4, 92(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 104(sp)
  JAL zero, bb99
bb133:
  ADDI s10, zero, 10
  LW t4, 92(sp)
  MULW s7, t4, s10
  LW t4, 96(sp)
  ADDW s10, s7, t4
  ADDI s7, zero, 48
  SUBW s1, s10, s7
  CALL getch
  ADD s7, a0, zero
  ADD s3, s1, zero
  ADD s4, s7, zero
  JAL zero, bb94
bb134:
  ADDI s10, zero, 57
  LW t4, 96(sp)
  SLT s11, s10, t4
  XORI s10, s11, 1
  ADD t4, s10, zero
  SB t4, 100(sp)
  JAL zero, bb96
bb135:
  LW t4, 84(sp)
  XORI s10, t4, 45
  SLTIU s8, s10, 1
  BNE s8, zero, bb138
  # implict jump to bb136
bb136:
  LW t4, 80(sp)
  ADD s8, t4, zero
  # implict jump to bb137
bb137:
  ADD s10, s8, zero
  CALL getch
  ADD s3, a0, zero
  ADD s9, s10, zero
  ADD s4, s3, zero
  JAL zero, bb90
bb138:
  ADDI s8, zero, 1
  JAL zero, bb137
bb139:
  ADDI t4, zero, 1
  SB t4, 88(sp)
  JAL zero, bb92
bb140:
  CALL getch
  ADD s9, a0, zero
  ADD s7, s9, zero
  JAL zero, bb47
bb141:
  LW t4, 56(sp)
  XORI s3, t4, 85
  SLTU s9, zero, s3
  ADD t4, s9, zero
  SB t4, 76(sp)
  JAL zero, bb49
bb142:
  ADDI s6, zero, 4
  MULW s8, s5, s6
  LA s6, head
  ADD s2, s6, s8
  ADDI s6, zero, -1
  SW s6, 0(s2)
  ADDIW s2, s5, 1
  ADD s0, s2, zero
  JAL zero, bb42
bb143:
  LW t4, 40(sp)
  SUB s0, zero, t4
  ADD t4, s0, zero
  SW t4, 52(sp)
  JAL zero, bb41
bb144:
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
  JAL zero, bb36
bb145:
  ADDI s6, zero, 57
  LW t4, 44(sp)
  SLT s9, s6, t4
  XORI s6, s9, 1
  ADD t4, s6, zero
  SB t4, 48(sp)
  JAL zero, bb38
bb146:
  LW t4, 32(sp)
  XORI s3, t4, 45
  SLTIU s0, s3, 1
  BNE s0, zero, bb149
  # implict jump to bb147
bb147:
  LW t4, 28(sp)
  ADD s0, t4, zero
  # implict jump to bb148
bb148:
  ADD s3, s0, zero
  CALL getch
  ADD s4, a0, zero
  ADD s7, s3, zero
  ADD s9, s4, zero
  JAL zero, bb32
bb149:
  ADDI s0, zero, 1
  JAL zero, bb148
bb150:
  ADDI t4, zero, 1
  SB t4, 36(sp)
  JAL zero, bb34
bb151:
  LW t4, 12(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 24(sp)
  JAL zero, bb31
bb152:
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
  JAL zero, bb26
bb153:
  ADDI s7, zero, 57
  LW t4, 16(sp)
  SLT s8, s7, t4
  XORI s7, s8, 1
  ADD t4, s7, zero
  SB t4, 20(sp)
  JAL zero, bb28
bb154:
  LW t4, 4(sp)
  XORI s5, t4, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb157
  # implict jump to bb155
bb155:
  LW t4, 0(sp)
  ADD s5, t4, zero
  # implict jump to bb156
bb156:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb22
bb157:
  ADDI s5, zero, 1
  JAL zero, bb156
bb158:
  ADDI t4, zero, 1
  SB t4, 8(sp)
  JAL zero, bb24
pop_queue:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  LA s0, h
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, h
  SW s0, 0(s1)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, que
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
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
  # implict jump to bb161
bb161:
  ADD s0, s2, zero
  ADD s3, s1, zero
  SLTI s4, s0, 48
  BNE s4, zero, bb177
  # implict jump to bb162
bb162:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  ADD s4, s2, zero
  # implict jump to bb163
bb163:
  ADD s5, s4, zero
  BNE s5, zero, bb173
  # implict jump to bb164
bb164:
  ADD s1, zero, zero
  ADD s2, s0, zero
  # implict jump to bb165
bb165:
  ADD s5, s2, zero
  ADD s6, s1, zero
  SLTI s7, s5, 48
  XORI s8, s7, 1
  BNE s8, zero, bb172
  # implict jump to bb166
bb166:
  ADD s8, zero, zero
  # implict jump to bb167
bb167:
  ADD s7, s8, zero
  BNE s7, zero, bb171
  # implict jump to bb168
bb168:
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb170
  # implict jump to bb169
bb169:
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
bb170:
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
bb171:
  ADDI s7, zero, 10
  MULW s9, s6, s7
  ADDW s7, s9, s5
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb165
bb172:
  ADDI s7, zero, 57
  SLT s8, s7, s5
  XORI s7, s8, 1
  ADD s8, s7, zero
  JAL zero, bb167
bb173:
  XORI s5, s0, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb176
  # implict jump to bb174
bb174:
  ADD s5, s3, zero
  # implict jump to bb175
bb175:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb161
bb176:
  ADDI s5, zero, 1
  JAL zero, bb175
bb177:
  ADDI s4, zero, 1
  JAL zero, bb163
