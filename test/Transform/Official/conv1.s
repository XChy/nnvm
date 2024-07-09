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
  SW t4, 48(sp)
  ADD t4, s10, zero
  SW t4, 56(sp)
  JAL zero, bb5
bb5:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t4, 48(sp)
  ADD t1, t4, zero
  LW t4, 32(sp)
  LW t3, 24(sp)
  SUBW t2, t4, t3
  ADD t4, t1, zero
  SW t4, 80(sp)
  ADD t4, t2, zero
  SW t4, 64(sp)
  JAL zero, bb6
bb6:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 16(sp)
  SLT a7, t4, zero
  BNE a7, zero, bb16
  JAL zero, bb17
bb7:
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
  BNE t1, zero, bb8
  JAL zero, bb9
bb8:
  LW t4, 16(sp)
  ADDIW t1, t4, 1
  LW t4, 24(sp)
  ADDW t2, s7, t4
  SLT a1, t1, t2
  XORI t2, a1, 1
  BNE t2, zero, bb10
  JAL zero, bb11
bb9:
  ADD t4, s9, zero
  SW t4, 80(sp)
  ADD t4, t0, zero
  SW t4, 64(sp)
  JAL zero, bb6
bb10:
  MULW t2, s7, s4
  LW t4, 32(sp)
  ADDW a1, t2, t4
  ADDI t2, zero, 4
  MULW a2, a1, t2
  ADD t2, s2, a2
  SW s9, 0(t2)
  LW t4, 32(sp)
  ADDIW t2, t4, 1
  SLT a1, t2, s4
  XORI a2, a1, 1
  BNE a2, zero, bb12
  JAL zero, bb13
bb11:
  ADD t4, s9, zero
  SW t4, 48(sp)
  ADD t4, t1, zero
  SW t4, 56(sp)
  JAL zero, bb5
bb12:
  ADDIW a1, s7, 1
  SLT a2, a1, s3
  XORI a3, a2, 1
  BNE a3, zero, bb14
  JAL zero, bb15
bb13:
  ADD s8, t2, zero
  JAL zero, bb4
bb14:
  JAL zero, bb3
bb15:
  ADD s6, a1, zero
  JAL zero, bb1
bb16:
  ADDI t4, zero, 1
  SB t4, 40(sp)
  JAL zero, bb18
bb17:
  LW t4, 8(sp)
  SLT s6, t4, zero
  ADD t4, s6, zero
  SB t4, 40(sp)
  JAL zero, bb18
bb18:
  LB t4, 40(sp)
  ADD t2, t4, zero
  BNE t2, zero, bb19
  JAL zero, bb20
bb19:
  ADDI t4, zero, 1
  SB t4, 72(sp)
  JAL zero, bb21
bb20:
  LW t4, 16(sp)
  SLT s6, t4, s3
  XORI s8, s6, 1
  ADD t4, s8, zero
  SB t4, 72(sp)
  JAL zero, bb21
bb21:
  LB t4, 72(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb22
  JAL zero, bb23
bb22:
  ADDI s10, zero, 1
  JAL zero, bb24
bb23:
  LW t4, 8(sp)
  SLT s6, t4, s4
  XORI s8, s6, 1
  ADD s10, s8, zero
  JAL zero, bb24
bb24:
  ADD s11, s10, zero
  BNE s11, zero, bb25
  JAL zero, bb26
bb25:
  ADD s11, zero, zero
  JAL zero, bb7
bb26:
  LW t4, 16(sp)
  MULW s6, t4, s4
  LW t4, 8(sp)
  ADDW s8, s6, t4
  ADDI s6, zero, 4
  MULW s9, s8, s6
  ADD s6, s1, s9
  LW s8, 0(s6)
  ADD s11, s8, zero
  JAL zero, bb7
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
  BNE s5, zero, bb28
  JAL zero, bb29
bb28:
  ADDI s5, zero, 1
  JAL zero, bb30
bb29:
  SLT s6, s4, zero
  ADD s5, s6, zero
  JAL zero, bb30
bb30:
  ADD s6, s5, zero
  BNE s6, zero, bb31
  JAL zero, bb32
bb31:
  ADDI s6, zero, 1
  JAL zero, bb33
bb32:
  SLT s7, s3, s1
  XORI s8, s7, 1
  ADD s6, s8, zero
  JAL zero, bb33
bb33:
  ADD s7, s6, zero
  BNE s7, zero, bb34
  JAL zero, bb35
bb34:
  ADDI s7, zero, 1
  JAL zero, bb36
bb35:
  SLT s8, s4, s2
  XORI s9, s8, 1
  ADD s7, s9, zero
  JAL zero, bb36
bb36:
  ADD s8, s7, zero
  BNE s8, zero, bb37
  JAL zero, bb38
bb37:
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
bb38:
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
  BNE s4, zero, bb40
  JAL zero, bb42
bb40:
  ADDW s3, s1, s2
  JAL zero, bb77
bb41:
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
bb42:
  XORI s3, s0, 1
  SLTIU s4, s3, 1
  BNE s4, zero, bb43
  JAL zero, bb44
bb43:
  ADDI s3, zero, 1
  ADD s4, zero, zero
  JAL zero, bb45
bb44:
  XORI s3, s0, 2
  SLTIU s4, s3, 1
  BNE s4, zero, bb51
  JAL zero, bb52
bb45:
  ADD s5, s4, zero
  ADD s6, s3, zero
  LUI s7, 262144
  ADDIW s7, s7, 0
  SLT s8, s6, s7
  BNE s8, zero, bb46
  JAL zero, bb47
bb46:
  DIVW s7, s1, s6
  ADDI s8, zero, 2
  REMW s9, s7, s8
  DIVW s7, s2, s6
  ADDI s8, zero, 2
  REMW s10, s7, s8
  XOR s7, s9, s10
  SLTIU s8, s7, 1
  BNE s8, zero, bb48
  JAL zero, bb50
bb47:
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
bb48:
  ADDI s7, zero, 2
  MULW s8, s5, s7
  ADD s7, s8, zero
  JAL zero, bb49
bb49:
  ADD s8, s7, zero
  ADDI s9, zero, 2
  MULW s10, s6, s9
  ADD s3, s10, zero
  ADD s4, s8, zero
  JAL zero, bb45
bb50:
  ADDI s3, zero, 2
  MULW s4, s5, s3
  ADDIW s3, s4, 1
  ADD s7, s3, zero
  JAL zero, bb49
bb51:
  SLT s3, s2, s1
  BNE s3, zero, bb53
  JAL zero, bb54
bb52:
  XORI s3, s0, 3
  SLTIU s4, s3, 1
  BNE s4, zero, bb55
  JAL zero, bb56
bb53:
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
bb54:
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
bb55:
  ADD s3, zero, zero
  ADDI s4, zero, 1
  JAL zero, bb57
bb56:
  XORI s3, s0, 4
  SLTIU s0, s3, 1
  BNE s0, zero, bb66
  JAL zero, bb67
bb57:
  ADD s5, s4, zero
  ADD s6, s3, zero
  LUI s7, 262144
  ADDIW s7, s7, 0
  SLT s8, s5, s7
  BNE s8, zero, bb58
  JAL zero, bb59
bb58:
  DIVW s7, s1, s5
  ADDI s8, zero, 2
  REMW s9, s7, s8
  XORI s7, s9, 1
  SLTIU s8, s7, 1
  BNE s8, zero, bb60
  JAL zero, bb61
bb59:
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
bb60:
  ADDI s7, zero, 1
  JAL zero, bb62
bb61:
  DIVW s3, s2, s5
  ADDI s4, zero, 2
  REMW s8, s3, s4
  XORI s3, s8, 1
  SLTIU s4, s3, 1
  ADD s7, s4, zero
  JAL zero, bb62
bb62:
  ADD s8, s7, zero
  BNE s8, zero, bb63
  JAL zero, bb65
bb63:
  ADDI s8, zero, 2
  MULW s9, s6, s8
  ADDIW s8, s9, 1
  ADD s9, s8, zero
  JAL zero, bb64
bb64:
  ADD s8, s9, zero
  ADDI s10, zero, 2
  MULW s11, s5, s10
  ADD s3, s8, zero
  ADD s4, s11, zero
  JAL zero, bb57
bb65:
  ADDI s3, zero, 2
  MULW s4, s6, s3
  ADD s9, s4, zero
  JAL zero, bb64
bb66:
  ADDI s0, zero, 1
  ADD s3, zero, zero
  JAL zero, bb68
bb67:
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
bb68:
  ADD s4, s3, zero
  ADD s5, s0, zero
  LUI s6, 262144
  ADDIW s6, s6, 0
  SLT s7, s5, s6
  BNE s7, zero, bb69
  JAL zero, bb70
bb69:
  DIVW s6, s1, s5
  ADDI s7, zero, 2
  REMW s8, s6, s7
  XORI s6, s8, 1
  SLTIU s7, s6, 1
  BNE s7, zero, bb71
  JAL zero, bb72
bb70:
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
bb71:
  DIVW s6, s2, s5
  ADDI s7, zero, 2
  REMW s8, s6, s7
  XORI s6, s8, 1
  SLTIU s7, s6, 1
  ADD s6, s7, zero
  JAL zero, bb73
bb72:
  ADD s6, zero, zero
  JAL zero, bb73
bb73:
  ADD s7, s6, zero
  BNE s7, zero, bb74
  JAL zero, bb76
bb74:
  ADDI s7, zero, 2
  MULW s8, s4, s7
  ADDIW s7, s8, 1
  ADD s8, s7, zero
  JAL zero, bb75
bb75:
  ADD s7, s8, zero
  ADDI s9, zero, 2
  MULW s10, s5, s9
  ADD s0, s10, zero
  ADD s3, s7, zero
  JAL zero, bb68
bb76:
  ADDI s0, zero, 2
  MULW s3, s4, s0
  ADD s8, s3, zero
  JAL zero, bb75
bb77:
  ADD s4, s3, zero
  JAL zero, bb78
bb78:
  ADD s3, s4, zero
  LUI s5, 262144
  ADDIW s5, s5, 0
  SLT s6, s5, s3
  BNE s6, zero, bb79
  JAL zero, bb80
bb79:
  LUI s5, 262144
  ADDIW s5, s5, 0
  SUBW s6, s3, s5
  ADD s4, s6, zero
  JAL zero, bb78
bb80:
  ADD s4, s3, zero
  JAL zero, bb81
bb81:
  ADD s3, s4, zero
  SLT s5, s3, zero
  BNE s5, zero, bb82
  JAL zero, bb83
bb82:
  LUI s5, 262144
  ADDIW s5, s5, 0
  ADDW s6, s3, s5
  ADD s4, s6, zero
  JAL zero, bb81
bb83:
  JAL zero, bb41
main:
  ADDI sp, sp, -288
  SD s2, 184(sp)
  SD s1, 192(sp)
  SD s5, 200(sp)
  SD s10, 208(sp)
  SD s7, 216(sp)
  SD s3, 224(sp)
  SD s4, 232(sp)
  SD s6, 240(sp)
  SD s8, 248(sp)
  SD s0, 256(sp)
  SD ra, 264(sp)
  SD s11, 272(sp)
  SD s9, 280(sp)
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
  JAL zero, bb85
bb85:
  ADD t4, s4, zero
  SW t4, 72(sp)
  LW t4, 72(sp)
  LW t3, 80(sp)
  SLT s6, t4, t3
  BNE s6, zero, bb86
  JAL zero, bb87
bb86:
  ADDI s6, zero, 4
  LW t4, 72(sp)
  MULW s7, t4, s6
  LA s6, kernelid
  ADD s8, s6, s7
  LW t4, 0(s8)
  SW t4, 64(sp)
  JAL zero, bb88
bb87:
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
  LD s2, 184(sp)
  LD s1, 192(sp)
  LD s5, 200(sp)
  LD s10, 208(sp)
  LD s7, 216(sp)
  LD s3, 224(sp)
  LD s4, 232(sp)
  LD s6, 240(sp)
  LD s8, 248(sp)
  LD s0, 256(sp)
  LD ra, 264(sp)
  LD s11, 272(sp)
  LD s9, 280(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb88:
  ADD s7, zero, zero
  JAL zero, bb89
bb89:
  ADD t4, s7, zero
  SW t4, 40(sp)
  JAL zero, bb90
bb90:
  ADD s9, zero, zero
  JAL zero, bb91
bb91:
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
  SW t4, 176(sp)
  ADD t4, s11, zero
  SW t4, 168(sp)
  JAL zero, bb92
bb92:
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t4, 176(sp)
  ADD s11, t4, zero
  LW t4, 32(sp)
  LW t3, 16(sp)
  SUBW s10, t4, t3
  ADD t4, s11, zero
  SW t4, 152(sp)
  ADD t4, s10, zero
  SW t4, 136(sp)
  JAL zero, bb93
bb93:
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t4, 24(sp)
  SLT s10, t4, zero
  BNE s10, zero, bb103
  JAL zero, bb104
bb94:
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
  BNE s6, zero, bb95
  JAL zero, bb96
bb95:
  LW t3, 24(sp)
  ADDIW t4, t3, 1
  SW t4, 160(sp)
  LW t4, 40(sp)
  LW t3, 16(sp)
  ADDW s6, t4, t3
  LW t4, 160(sp)
  SLT s3, t4, s6
  XORI s6, s3, 1
  BNE s6, zero, bb97
  JAL zero, bb98
bb96:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  JAL zero, bb93
bb97:
  LW t4, 40(sp)
  LW t3, 0(sp)
  MULW s3, t4, t3
  LW t4, 32(sp)
  ADDW s6, s3, t4
  ADDI s3, zero, 4
  MULW s10, s6, s3
  LA s3, b
  ADD s6, s3, s10
  LW t4, 144(sp)
  SW t4, 0(s6)
  LW t4, 32(sp)
  ADDIW s3, t4, 1
  LW t4, 0(sp)
  SLT s6, s3, t4
  XORI s10, s6, 1
  BNE s10, zero, bb99
  JAL zero, bb100
bb98:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  JAL zero, bb92
bb99:
  LW t4, 40(sp)
  ADDIW s6, t4, 1
  LW t4, 8(sp)
  SLT s10, s6, t4
  XORI s11, s10, 1
  BNE s11, zero, bb101
  JAL zero, bb102
bb100:
  ADD s9, s3, zero
  JAL zero, bb91
bb101:
  LW t4, 8(sp)
  LW t3, 0(sp)
  MULW s10, t4, t3
  JAL zero, bb114
bb102:
  ADD s7, s6, zero
  JAL zero, bb89
bb103:
  ADDI t4, zero, 1
  SB t4, 96(sp)
  JAL zero, bb105
bb104:
  LW t4, 56(sp)
  SLT s0, t4, zero
  ADD t4, s0, zero
  SB t4, 96(sp)
  JAL zero, bb105
bb105:
  LB t4, 96(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb106
  JAL zero, bb107
bb106:
  ADDI t4, zero, 1
  SB t4, 104(sp)
  JAL zero, bb108
bb107:
  LW t4, 24(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 104(sp)
  JAL zero, bb108
bb108:
  LB t4, 104(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb109
  JAL zero, bb110
bb109:
  ADDI t4, zero, 1
  SB t4, 112(sp)
  JAL zero, bb111
bb110:
  LW t4, 56(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 112(sp)
  JAL zero, bb111
bb111:
  LB t4, 112(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb112
  JAL zero, bb113
bb112:
  ADD t4, zero, zero
  SW t4, 120(sp)
  JAL zero, bb94
bb113:
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
  JAL zero, bb94
bb114:
  ADD s11, zero, zero
  JAL zero, bb115
bb115:
  ADD s0, s11, zero
  SLT s8, s0, s10
  BNE s8, zero, bb116
  JAL zero, bb117
bb116:
  ADDI s8, zero, 4
  MULW s5, s0, s8
  LA s8, a
  ADD s2, s8, s5
  LA s8, b
  ADD s1, s8, s5
  LW s5, 0(s1)
  SW s5, 0(s2)
  ADDIW s1, s0, 1
  ADD s11, s1, zero
  JAL zero, bb115
bb117:
  LW t4, 72(sp)
  ADDIW s0, t4, 1
  ADD s4, s0, zero
  JAL zero, bb85
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
  JAL zero, bb119
bb119:
  ADD s4, s3, zero
  SLT s5, s4, s2
  BNE s5, zero, bb120
  JAL zero, bb121
bb120:
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s5, s0, s6
  ADD s7, s1, s6
  LW s6, 0(s7)
  SW s6, 0(s5)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb119
bb121:
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
  JAL zero, bb123
bb123:
  ADD s0, s1, zero
  LUI s2, 262144
  ADDIW s2, s2, 0
  SLT s3, s2, s0
  BNE s3, zero, bb124
  JAL zero, bb125
bb124:
  LUI s2, 262144
  ADDIW s2, s2, 0
  SUBW s3, s0, s2
  ADD s1, s3, zero
  JAL zero, bb123
bb125:
  ADD s1, s0, zero
  JAL zero, bb126
bb126:
  ADD s0, s1, zero
  SLT s2, s0, zero
  BNE s2, zero, bb127
  JAL zero, bb128
bb127:
  LUI s2, 262144
  ADDIW s2, s2, 0
  ADDW s3, s0, s2
  ADD s1, s3, zero
  JAL zero, bb126
bb128:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
