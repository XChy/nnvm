.global convn
.global getvalue
.global reduce
.global main
.global memmove
.global checkrange
.section .bss
kernelid:
.space 40000
b:
.space 40000000
a:
.space 40000000

.section .data



max:
.word 0x40000000
.section .text
convn:
  ADDI sp, sp, -192
  SD s11, 88(sp)
  SD s9, 96(sp)
  SD s10, 104(sp)
  SD ra, 112(sp)
  SD s8, 120(sp)
  SD s7, 128(sp)
  SD s6, 136(sp)
  SD s0, 144(sp)
  SD s5, 152(sp)
  SD s1, 160(sp)
  SD s2, 168(sp)
  SD s3, 176(sp)
  SD s4, 184(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  ADD s6, zero, zero
  JAL zero, bb1
bb1:
  ADD s7, s6, zero
  JAL zero, bb2
bb2:
  ADD s8, zero, zero
  JAL zero, bb4
bb3:
  ADD a0, zero, zero
  LD s11, 88(sp)
  LD s9, 96(sp)
  LD s10, 104(sp)
  LD ra, 112(sp)
  LD s8, 120(sp)
  LD s7, 128(sp)
  LD s6, 136(sp)
  LD s0, 144(sp)
  LD s5, 152(sp)
  LD s1, 160(sp)
  LD s2, 168(sp)
  LD s3, 176(sp)
  LD s4, 184(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb4:
  ADD t4, s8, zero
  SW t4, 32(sp)
  ADDI s10, zero, 2
  DIVW t4, s5, s10
  SW t4, 24(sp)
  LW t4, 24(sp)
  SUBW s10, s7, t4
  ADD t4, zero, zero
  SW t4, 40(sp)
  ADD t4, s10, zero
  SW t4, 48(sp)
  JAL zero, bb5
bb5:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t4, 40(sp)
  ADD t1, t4, zero
  LW t4, 32(sp)
  LW t3, 24(sp)
  SUBW t2, t4, t3
  ADD t4, t1, zero
  SW t4, 72(sp)
  ADD t4, t2, zero
  SW t4, 56(sp)
  JAL zero, bb7
bb6:
  ADD a2, a1, zero
  MULW a1, s7, s4
  LW t4, 32(sp)
  ADDW a3, a1, t4
  ADDI a1, zero, 4
  MULW a4, a3, a1
  ADD a1, s2, a4
  SW a2, 0(a1)
  LW t4, 32(sp)
  ADDIW a1, t4, 1
  SLT a2, a1, s4
  XORI a3, a2, 1
  BNE a3, zero, bb14
  JAL zero, bb15
bb7:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 16(sp)
  SLT a7, t4, zero
  BNE a7, zero, bb18
  JAL zero, bb19
bb8:
  ADD s9, s11, zero
  ADD a0, s0, zero
  LW t4, 0(sp)
  ADD a1, t4, zero
  ADD a2, s9, zero
  CALL reduce
  ADD s9, a0, zero
  LW t4, 8(sp)
  ADDIW t0, t4, 1
  LW t4, 32(sp)
  LW t3, 24(sp)
  ADDW t1, t4, t3
  SLT t2, t0, t1
  XORI t1, t2, 1
  BNE t1, zero, bb10
  JAL zero, bb11
bb9:
  ADD t2, t1, zero
  LW t4, 16(sp)
  ADDIW t1, t4, 1
  LW t4, 24(sp)
  ADDW a1, s7, t4
  SLT a2, t1, a1
  XORI a1, a2, 1
  BNE a1, zero, bb12
  JAL zero, bb13
bb10:
  ADD t1, s9, zero
  JAL zero, bb9
bb11:
  ADD t4, s9, zero
  SW t4, 72(sp)
  ADD t4, t0, zero
  SW t4, 56(sp)
  JAL zero, bb7
bb12:
  ADD a1, t2, zero
  JAL zero, bb6
bb13:
  ADD t4, t2, zero
  SW t4, 40(sp)
  ADD t4, t1, zero
  SW t4, 48(sp)
  JAL zero, bb5
bb14:
  ADDIW a2, s7, 1
  SLT a3, a2, s3
  XORI a4, a3, 1
  BNE a4, zero, bb16
  JAL zero, bb17
bb15:
  ADD s8, a1, zero
  JAL zero, bb4
bb16:
  JAL zero, bb3
bb17:
  ADD s6, a2, zero
  JAL zero, bb1
bb18:
  ADDI t4, zero, 1
  SB t4, 80(sp)
  JAL zero, bb20
bb19:
  LW t4, 8(sp)
  SLT s6, t4, zero
  ADD t4, s6, zero
  SB t4, 80(sp)
  JAL zero, bb20
bb20:
  LB t4, 80(sp)
  ADD t2, t4, zero
  BNE t2, zero, bb21
  JAL zero, bb22
bb21:
  ADDI t4, zero, 1
  SB t4, 64(sp)
  JAL zero, bb23
bb22:
  LW t4, 16(sp)
  SLT s6, t4, s3
  XORI s8, s6, 1
  ADD t4, s8, zero
  SB t4, 64(sp)
  JAL zero, bb23
bb23:
  LB t4, 64(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb24
  JAL zero, bb25
bb24:
  ADDI s10, zero, 1
  JAL zero, bb26
bb25:
  LW t4, 8(sp)
  SLT s6, t4, s4
  XORI s8, s6, 1
  ADD s10, s8, zero
  JAL zero, bb26
bb26:
  ADD s11, s10, zero
  BNE s11, zero, bb27
  JAL zero, bb28
bb27:
  ADD s11, zero, zero
  JAL zero, bb8
bb28:
  LW t4, 16(sp)
  MULW s6, t4, s4
  LW t4, 8(sp)
  ADDW s8, s6, t4
  ADDI s6, zero, 4
  MULW s9, s8, s6
  ADD s6, s1, s9
  LW s8, 0(s6)
  ADD s11, s8, zero
  JAL zero, bb8
getvalue:
  ADDI sp, sp, -96
  SD s10, 0(sp)
  SD ra, 8(sp)
  SD s9, 16(sp)
  SD s8, 24(sp)
  SD s7, 32(sp)
  SD s0, 40(sp)
  SD s5, 48(sp)
  SD s1, 56(sp)
  SD s6, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  SLT s5, s3, zero
  BNE s5, zero, bb30
  JAL zero, bb31
bb30:
  ADDI s5, zero, 1
  JAL zero, bb32
bb31:
  SLT s6, s4, zero
  ADD s5, s6, zero
  JAL zero, bb32
bb32:
  ADD s6, s5, zero
  BNE s6, zero, bb33
  JAL zero, bb34
bb33:
  ADDI s6, zero, 1
  JAL zero, bb35
bb34:
  SLT s7, s3, s1
  XORI s8, s7, 1
  ADD s6, s8, zero
  JAL zero, bb35
bb35:
  ADD s7, s6, zero
  BNE s7, zero, bb36
  JAL zero, bb37
bb36:
  ADDI s7, zero, 1
  JAL zero, bb38
bb37:
  SLT s8, s4, s2
  XORI s9, s8, 1
  ADD s7, s9, zero
  JAL zero, bb38
bb38:
  ADD s8, s7, zero
  BNE s8, zero, bb39
  JAL zero, bb40
bb39:
  ADD a0, zero, zero
  LD s10, 0(sp)
  LD ra, 8(sp)
  LD s9, 16(sp)
  LD s8, 24(sp)
  LD s7, 32(sp)
  LD s0, 40(sp)
  LD s5, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb40:
  MULW s8, s3, s2
  ADDW s9, s8, s4
  ADDI s8, zero, 4
  MULW s10, s9, s8
  ADD s8, s0, s10
  LW s9, 0(s8)
  ADD a0, s9, zero
  LD s10, 0(sp)
  LD ra, 8(sp)
  LD s9, 16(sp)
  LD s8, 24(sp)
  LD s7, 32(sp)
  LD s0, 40(sp)
  LD s5, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
reduce:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s9, 16(sp)
  SD s8, 24(sp)
  SD s0, 32(sp)
  SD s5, 40(sp)
  SD s7, 48(sp)
  SD s1, 56(sp)
  SD s6, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD ra, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  XOR s3, s0, zero
  SLTIU s4, s3, 1
  BNE s4, zero, bb42
  JAL zero, bb44
bb42:
  ADDW s3, s1, s2
  JAL zero, bb79
bb43:
  ADD s3, s4, zero
  ADD a0, s3, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s8, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s7, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb44:
  XORI s3, s0, 1
  SLTIU s4, s3, 1
  BNE s4, zero, bb45
  JAL zero, bb46
bb45:
  ADDI s3, zero, 1
  ADD s4, zero, zero
  JAL zero, bb47
bb46:
  XORI s3, s0, 2
  SLTIU s4, s3, 1
  BNE s4, zero, bb53
  JAL zero, bb54
bb47:
  ADD s5, s4, zero
  ADD s6, s3, zero
  LUI s7, 262144
  ADDIW s7, s7, 0
  SLT s8, s6, s7
  BNE s8, zero, bb48
  JAL zero, bb49
bb48:
  DIVW s7, s1, s6
  ADDI s8, zero, 2
  REMW s9, s7, s8
  DIVW s7, s2, s6
  ADDI s8, zero, 2
  REMW s10, s7, s8
  XOR s7, s9, s10
  SLTIU s8, s7, 1
  BNE s8, zero, bb50
  JAL zero, bb52
bb49:
  ADD a0, s5, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s8, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s7, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb50:
  ADDI s7, zero, 2
  MULW s8, s5, s7
  ADD s7, s8, zero
  JAL zero, bb51
bb51:
  ADD s8, s7, zero
  ADDI s9, zero, 2
  MULW s10, s6, s9
  ADD s3, s10, zero
  ADD s4, s8, zero
  JAL zero, bb47
bb52:
  ADDI s3, zero, 2
  MULW s4, s5, s3
  ADDIW s3, s4, 1
  ADD s7, s3, zero
  JAL zero, bb51
bb53:
  SLT s3, s2, s1
  BNE s3, zero, bb55
  JAL zero, bb56
bb54:
  XORI s3, s0, 3
  SLTIU s4, s3, 1
  BNE s4, zero, bb57
  JAL zero, bb58
bb55:
  ADD a0, s1, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s8, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s7, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb56:
  ADD a0, s2, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s8, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s7, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb57:
  ADD s3, zero, zero
  ADDI s4, zero, 1
  JAL zero, bb59
bb58:
  XORI s3, s0, 4
  SLTIU s0, s3, 1
  BNE s0, zero, bb68
  JAL zero, bb69
bb59:
  ADD s5, s4, zero
  ADD s6, s3, zero
  LUI s7, 262144
  ADDIW s7, s7, 0
  SLT s8, s5, s7
  BNE s8, zero, bb60
  JAL zero, bb61
bb60:
  DIVW s7, s1, s5
  ADDI s8, zero, 2
  REMW s9, s7, s8
  XORI s7, s9, 1
  SLTIU s8, s7, 1
  BNE s8, zero, bb62
  JAL zero, bb63
bb61:
  ADD a0, s6, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s8, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s7, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb62:
  ADDI s7, zero, 1
  JAL zero, bb64
bb63:
  DIVW s3, s2, s5
  ADDI s4, zero, 2
  REMW s8, s3, s4
  XORI s3, s8, 1
  SLTIU s4, s3, 1
  ADD s7, s4, zero
  JAL zero, bb64
bb64:
  ADD s8, s7, zero
  BNE s8, zero, bb65
  JAL zero, bb67
bb65:
  ADDI s8, zero, 2
  MULW s9, s6, s8
  ADDIW s8, s9, 1
  ADD s9, s8, zero
  JAL zero, bb66
bb66:
  ADD s8, s9, zero
  ADDI s10, zero, 2
  MULW s11, s5, s10
  ADD s3, s8, zero
  ADD s4, s11, zero
  JAL zero, bb59
bb67:
  ADDI s3, zero, 2
  MULW s4, s6, s3
  ADD s9, s4, zero
  JAL zero, bb66
bb68:
  ADDI s0, zero, 1
  ADD s3, zero, zero
  JAL zero, bb70
bb69:
  ADD a0, zero, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s8, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s7, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb70:
  ADD s4, s3, zero
  ADD s5, s0, zero
  LUI s6, 262144
  ADDIW s6, s6, 0
  SLT s7, s5, s6
  BNE s7, zero, bb71
  JAL zero, bb72
bb71:
  DIVW s6, s1, s5
  ADDI s7, zero, 2
  REMW s8, s6, s7
  XORI s6, s8, 1
  SLTIU s7, s6, 1
  BNE s7, zero, bb73
  JAL zero, bb74
bb72:
  ADD a0, s4, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s8, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s7, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb73:
  DIVW s6, s2, s5
  ADDI s7, zero, 2
  REMW s8, s6, s7
  XORI s6, s8, 1
  SLTIU s7, s6, 1
  ADD s6, s7, zero
  JAL zero, bb75
bb74:
  ADD s6, zero, zero
  JAL zero, bb75
bb75:
  ADD s7, s6, zero
  BNE s7, zero, bb76
  JAL zero, bb78
bb76:
  ADDI s7, zero, 2
  MULW s8, s4, s7
  ADDIW s7, s8, 1
  ADD s8, s7, zero
  JAL zero, bb77
bb77:
  ADD s7, s8, zero
  ADDI s9, zero, 2
  MULW s10, s5, s9
  ADD s0, s10, zero
  ADD s3, s7, zero
  JAL zero, bb70
bb78:
  ADDI s0, zero, 2
  MULW s3, s4, s0
  ADD s8, s3, zero
  JAL zero, bb77
bb79:
  ADD s4, s3, zero
  JAL zero, bb80
bb80:
  ADD s3, s4, zero
  LUI s5, 262144
  ADDIW s5, s5, 0
  SLT s6, s5, s3
  BNE s6, zero, bb81
  JAL zero, bb82
bb81:
  LUI s5, 262144
  ADDIW s5, s5, 0
  SUBW s6, s3, s5
  ADD s4, s6, zero
  JAL zero, bb80
bb82:
  ADD s4, s3, zero
  JAL zero, bb83
bb83:
  ADD s3, s4, zero
  SLT s5, s3, zero
  BNE s5, zero, bb84
  JAL zero, bb85
bb84:
  LUI s5, 262144
  ADDIW s5, s5, 0
  ADDW s6, s3, s5
  ADD s4, s6, zero
  JAL zero, bb83
bb85:
  ADD s4, s3, zero
  JAL zero, bb43
main:
  ADDI sp, sp, -304
  SD s2, 192(sp)
  SD s1, 200(sp)
  SD s5, 208(sp)
  SD s10, 216(sp)
  SD s7, 224(sp)
  SD s3, 232(sp)
  SD s4, 240(sp)
  SD s6, 248(sp)
  SD s8, 256(sp)
  SD s0, 264(sp)
  SD ra, 272(sp)
  SD s11, 280(sp)
  SD s9, 288(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 88(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 8(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 0(sp)
  LA s3, a
  ADD a0, s3, zero
  CALL getarray
  ADD s3, a0, zero
  LA s3, kernelid
  ADD a0, s3, zero
  CALL getarray
  ADD t4, a0, zero
  SW t4, 80(sp)
  ADDI a0, zero, 109
  CALL _sysy_starttime
  ADD s4, zero, zero
  JAL zero, bb87
bb87:
  ADD t4, s4, zero
  SW t4, 72(sp)
  LW t4, 72(sp)
  LW t3, 80(sp)
  SLT s6, t4, t3
  BNE s6, zero, bb88
  JAL zero, bb89
bb88:
  ADDI s6, zero, 4
  LW t4, 72(sp)
  MULW s7, t4, s6
  LA s6, kernelid
  ADD s8, s6, s7
  LW t4, 0(s8)
  SW t4, 64(sp)
  JAL zero, bb90
bb89:
  ADDI a0, zero, 116
  CALL _sysy_stoptime
  LW t4, 8(sp)
  LW t3, 0(sp)
  MULW s0, t4, t3
  ADD a0, s0, zero
  LA s0, a
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD s2, 192(sp)
  LD s1, 200(sp)
  LD s5, 208(sp)
  LD s10, 216(sp)
  LD s7, 224(sp)
  LD s3, 232(sp)
  LD s4, 240(sp)
  LD s6, 248(sp)
  LD s8, 256(sp)
  LD s0, 264(sp)
  LD ra, 272(sp)
  LD s11, 280(sp)
  LD s9, 288(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb90:
  ADD s7, zero, zero
  JAL zero, bb91
bb91:
  ADD t4, s7, zero
  SW t4, 40(sp)
  JAL zero, bb92
bb92:
  ADD s9, zero, zero
  JAL zero, bb93
bb93:
  ADD t4, s9, zero
  SW t4, 32(sp)
  ADDI s11, zero, 2
  LW t3, 88(sp)
  DIVW t4, t3, s11
  SW t4, 16(sp)
  LW t4, 40(sp)
  LW t3, 16(sp)
  SUBW s11, t4, t3
  ADD t4, zero, zero
  SW t4, 184(sp)
  ADD t4, s11, zero
  SW t4, 168(sp)
  JAL zero, bb94
bb94:
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t4, 184(sp)
  ADD s11, t4, zero
  LW t4, 32(sp)
  LW t3, 16(sp)
  SUBW s10, t4, t3
  ADD t4, s11, zero
  SW t4, 152(sp)
  ADD t4, s10, zero
  SW t4, 136(sp)
  JAL zero, bb96
bb95:
  ADD s10, s3, zero
  LW t4, 40(sp)
  LW t3, 0(sp)
  MULW s3, t4, t3
  LW t4, 32(sp)
  ADDW s11, s3, t4
  ADDI s3, zero, 4
  MULW s0, s11, s3
  LA s3, b
  ADD s11, s3, s0
  SW s10, 0(s11)
  LW t4, 32(sp)
  ADDIW s0, t4, 1
  LW t4, 0(sp)
  SLT s3, s0, t4
  XORI s10, s3, 1
  BNE s10, zero, bb103
  JAL zero, bb104
bb96:
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t4, 24(sp)
  SLT s10, t4, zero
  BNE s10, zero, bb107
  JAL zero, bb108
bb97:
  LW t4, 120(sp)
  ADD s0, t4, zero
  LW t4, 64(sp)
  ADD a0, t4, zero
  LW t4, 48(sp)
  ADD a1, t4, zero
  ADD a2, s0, zero
  CALL reduce
  ADD t4, a0, zero
  SW t4, 144(sp)
  LW t3, 56(sp)
  ADDIW t4, t3, 1
  SW t4, 128(sp)
  LW t4, 32(sp)
  LW t3, 16(sp)
  ADDW s6, t4, t3
  LW t4, 128(sp)
  SLT s5, t4, s6
  XORI s6, s5, 1
  BNE s6, zero, bb99
  JAL zero, bb100
bb98:
  ADD t4, s5, zero
  SW t4, 176(sp)
  LW t3, 24(sp)
  ADDIW t4, t3, 1
  SW t4, 160(sp)
  LW t4, 40(sp)
  LW t3, 16(sp)
  ADDW s3, t4, t3
  LW t4, 160(sp)
  SLT s10, t4, s3
  XORI s3, s10, 1
  BNE s3, zero, bb101
  JAL zero, bb102
bb99:
  LW t4, 144(sp)
  ADD s5, t4, zero
  JAL zero, bb98
bb100:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  JAL zero, bb96
bb101:
  LW t4, 176(sp)
  ADD s3, t4, zero
  JAL zero, bb95
bb102:
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  JAL zero, bb94
bb103:
  LW t4, 40(sp)
  ADDIW s3, t4, 1
  LW t4, 8(sp)
  SLT s10, s3, t4
  XORI s11, s10, 1
  BNE s11, zero, bb105
  JAL zero, bb106
bb104:
  ADD s9, s0, zero
  JAL zero, bb93
bb105:
  LW t4, 8(sp)
  LW t3, 0(sp)
  MULW s10, t4, t3
  JAL zero, bb118
bb106:
  ADD s7, s3, zero
  JAL zero, bb91
bb107:
  ADDI t4, zero, 1
  SB t4, 96(sp)
  JAL zero, bb109
bb108:
  LW t4, 56(sp)
  SLT s0, t4, zero
  ADD t4, s0, zero
  SB t4, 96(sp)
  JAL zero, bb109
bb109:
  LB t4, 96(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb110
  JAL zero, bb111
bb110:
  ADDI t4, zero, 1
  SB t4, 104(sp)
  JAL zero, bb112
bb111:
  LW t4, 24(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 104(sp)
  JAL zero, bb112
bb112:
  LB t4, 104(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb113
  JAL zero, bb114
bb113:
  ADDI t4, zero, 1
  SB t4, 112(sp)
  JAL zero, bb115
bb114:
  LW t4, 56(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 112(sp)
  JAL zero, bb115
bb115:
  LB t4, 112(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb116
  JAL zero, bb117
bb116:
  ADD t4, zero, zero
  SW t4, 120(sp)
  JAL zero, bb97
bb117:
  LW t4, 24(sp)
  LW t3, 0(sp)
  MULW s0, t4, t3
  LW t4, 56(sp)
  ADDW s1, s0, t4
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, a
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 120(sp)
  JAL zero, bb97
bb118:
  ADD s11, zero, zero
  JAL zero, bb119
bb119:
  ADD s8, s11, zero
  SLT s5, s8, s10
  BNE s5, zero, bb120
  JAL zero, bb121
bb120:
  ADDI s5, zero, 4
  MULW s2, s8, s5
  LA s5, a
  ADD s6, s5, s2
  LA s5, b
  ADD s1, s5, s2
  LW s2, 0(s1)
  SW s2, 0(s6)
  ADDIW s1, s8, 1
  ADD s11, s1, zero
  JAL zero, bb119
bb121:
  LW t4, 72(sp)
  ADDIW s1, t4, 1
  ADD s4, s1, zero
  JAL zero, bb87
memmove:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s7, 48(sp)
  SD s5, 56(sp)
  SD s0, 64(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, zero, zero
  JAL zero, bb123
bb123:
  ADD s4, s3, zero
  SLT s5, s4, s2
  BNE s5, zero, bb124
  JAL zero, bb125
bb124:
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s5, s0, s6
  ADD s7, s1, s6
  LW s6, 0(s7)
  SW s6, 0(s5)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb123
bb125:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s7, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
checkrange:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADD s1, s0, zero
  JAL zero, bb127
bb127:
  ADD s0, s1, zero
  LUI s2, 262144
  ADDIW s2, s2, 0
  SLT s3, s2, s0
  BNE s3, zero, bb128
  JAL zero, bb129
bb128:
  LUI s2, 262144
  ADDIW s2, s2, 0
  SUBW s3, s0, s2
  ADD s1, s3, zero
  JAL zero, bb127
bb129:
  ADD s1, s0, zero
  JAL zero, bb130
bb130:
  ADD s0, s1, zero
  SLT s2, s0, zero
  BNE s2, zero, bb131
  JAL zero, bb132
bb131:
  LUI s2, 262144
  ADDIW s2, s2, 0
  ADDW s3, s0, s2
  ADD s1, s3, zero
  JAL zero, bb130
bb132:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
