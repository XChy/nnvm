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
  ADDI sp, sp, -208
  SD ra, 96(sp)
  SD s11, 104(sp)
  SD s9, 112(sp)
  SD s10, 120(sp)
  SD s8, 128(sp)
  SD s7, 136(sp)
  SD s6, 144(sp)
  SD s0, 152(sp)
  SD s5, 160(sp)
  SD s1, 168(sp)
  SD s2, 176(sp)
  SD s3, 184(sp)
  SD s4, 192(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  ADDI s6, zero, 2
  DIVW s7, s5, s6
  ADD s5, zero, zero
  JAL zero, bb1
bb1:
  ADD s6, s5, zero
  ADD s8, zero, zero
  JAL zero, bb2
bb2:
  ADD t4, s8, zero
  SW t4, 40(sp)
  SUBW s10, s6, s7
  LW t3, 40(sp)
  SUBW t4, t3, s7
  SW t4, 32(sp)
  ADD t4, zero, zero
  SW t4, 64(sp)
  ADD t4, s10, zero
  SW t4, 72(sp)
  JAL zero, bb3
bb3:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t4, 64(sp)
  ADD t1, t4, zero
  LW t3, 24(sp)
  SLT t4, t3, zero
  SB t4, 16(sp)
  ADD t4, t1, zero
  SW t4, 80(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb4
bb4:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LB t4, 16(sp)
  BNE t4, zero, bb14
  JAL zero, bb15
bb5:
  ADD s9, s11, zero
  ADD a0, s0, zero
  LW t4, 0(sp)
  ADD a1, t4, zero
  ADD a2, s9, zero
  CALL reduce
  ADD s9, a0, zero
  LW t4, 8(sp)
  ADDIW t0, t4, 1
  LW t4, 40(sp)
  ADDW t1, t4, s7
  SLT t2, t0, t1
  XORI t1, t2, 1
  BNE t1, zero, bb6
  JAL zero, bb7
bb6:
  LW t4, 24(sp)
  ADDIW t1, t4, 1
  ADDW t2, s6, s7
  SLT a1, t1, t2
  XORI t2, a1, 1
  BNE t2, zero, bb8
  JAL zero, bb9
bb7:
  ADD t4, s9, zero
  SW t4, 80(sp)
  ADD t4, t0, zero
  SW t4, 48(sp)
  JAL zero, bb4
bb8:
  MULW t2, s6, s4
  LW t4, 40(sp)
  ADDW a1, t2, t4
  ADDI t2, zero, 4
  MULW a2, a1, t2
  ADD t2, s2, a2
  SW s9, 0(t2)
  LW t4, 40(sp)
  ADDIW t2, t4, 1
  SLT a1, t2, s4
  XORI a2, a1, 1
  BNE a2, zero, bb10
  JAL zero, bb11
bb9:
  ADD t4, s9, zero
  SW t4, 64(sp)
  ADD t4, t1, zero
  SW t4, 72(sp)
  JAL zero, bb3
bb10:
  ADDIW a1, s6, 1
  SLT a2, a1, s3
  XORI a3, a2, 1
  BNE a3, zero, bb12
  JAL zero, bb13
bb11:
  ADD s8, t2, zero
  JAL zero, bb2
bb12:
  ADD a0, zero, zero
  LD ra, 96(sp)
  LD s11, 104(sp)
  LD s9, 112(sp)
  LD s10, 120(sp)
  LD s8, 128(sp)
  LD s7, 136(sp)
  LD s6, 144(sp)
  LD s0, 152(sp)
  LD s5, 160(sp)
  LD s1, 168(sp)
  LD s2, 176(sp)
  LD s3, 184(sp)
  LD s4, 192(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb13:
  ADD s5, a1, zero
  JAL zero, bb1
bb14:
  ADDI t4, zero, 1
  SB t4, 88(sp)
  JAL zero, bb16
bb15:
  LW t4, 8(sp)
  SLT s5, t4, zero
  ADD t4, s5, zero
  SB t4, 88(sp)
  JAL zero, bb16
bb16:
  LB t4, 88(sp)
  ADD t2, t4, zero
  BNE t2, zero, bb17
  JAL zero, bb18
bb17:
  ADDI t4, zero, 1
  SB t4, 56(sp)
  JAL zero, bb19
bb18:
  LW t4, 24(sp)
  SLT s5, t4, s3
  XORI s8, s5, 1
  ADD t4, s8, zero
  SB t4, 56(sp)
  JAL zero, bb19
bb19:
  LB t4, 56(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb20
  JAL zero, bb21
bb20:
  ADDI s10, zero, 1
  JAL zero, bb22
bb21:
  LW t4, 8(sp)
  SLT s5, t4, s4
  XORI s8, s5, 1
  ADD s10, s8, zero
  JAL zero, bb22
bb22:
  ADD s11, s10, zero
  BNE s11, zero, bb23
  JAL zero, bb24
bb23:
  ADD s11, zero, zero
  JAL zero, bb5
bb24:
  LW t4, 24(sp)
  MULW s5, t4, s4
  LW t4, 8(sp)
  ADDW s8, s5, t4
  ADDI s5, zero, 4
  MULW s9, s8, s5
  ADD s5, s1, s9
  LW s8, 0(s5)
  ADD s11, s8, zero
  JAL zero, bb5
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
  BNE s5, zero, bb26
  JAL zero, bb27
bb26:
  ADDI s5, zero, 1
  JAL zero, bb28
bb27:
  SLT s6, s4, zero
  ADD s5, s6, zero
  JAL zero, bb28
bb28:
  ADD s6, s5, zero
  BNE s6, zero, bb29
  JAL zero, bb30
bb29:
  ADDI s6, zero, 1
  JAL zero, bb31
bb30:
  SLT s7, s3, s1
  XORI s8, s7, 1
  ADD s6, s8, zero
  JAL zero, bb31
bb31:
  ADD s7, s6, zero
  BNE s7, zero, bb32
  JAL zero, bb33
bb32:
  ADDI s7, zero, 1
  JAL zero, bb34
bb33:
  SLT s8, s4, s2
  XORI s9, s8, 1
  ADD s7, s9, zero
  JAL zero, bb34
bb34:
  ADD s8, s7, zero
  BNE s8, zero, bb35
  JAL zero, bb36
bb35:
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
bb36:
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
  SD ra, 8(sp)
  SD s10, 16(sp)
  SD s9, 24(sp)
  SD s0, 32(sp)
  SD s5, 40(sp)
  SD s7, 48(sp)
  SD s1, 56(sp)
  SD s6, 64(sp)
  SD s8, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  XOR s3, s0, zero
  SLTIU s4, s3, 1
  BNE s4, zero, bb38
  JAL zero, bb39
bb38:
  ADDW s3, s1, s2
  ADD s4, s3, zero
  JAL zero, bb74
bb39:
  XORI s3, s0, 1
  SLTIU s4, s3, 1
  BNE s4, zero, bb40
  JAL zero, bb41
bb40:
  ADDI s3, zero, 1
  ADD s4, zero, zero
  JAL zero, bb42
bb41:
  XORI s3, s0, 2
  SLTIU s4, s3, 1
  BNE s4, zero, bb48
  JAL zero, bb49
bb42:
  ADD s5, s4, zero
  ADD s6, s3, zero
  LUI s7, 262144
  ADDIW s7, s7, 0
  SLT s8, s6, s7
  BNE s8, zero, bb43
  JAL zero, bb44
bb43:
  DIVW s7, s1, s6
  ADDI s8, zero, 2
  REMW s9, s7, s8
  DIVW s7, s2, s6
  ADDI s8, zero, 2
  REMW s10, s7, s8
  XOR s7, s9, s10
  SLTIU s8, s7, 1
  BNE s8, zero, bb45
  JAL zero, bb47
bb44:
  ADD a0, s5, zero
  LD s11, 0(sp)
  LD ra, 8(sp)
  LD s10, 16(sp)
  LD s9, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s7, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s8, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb45:
  ADDI s7, zero, 2
  MULW s8, s5, s7
  ADD s7, s8, zero
  JAL zero, bb46
bb46:
  ADD s8, s7, zero
  ADDI s9, zero, 2
  MULW s10, s6, s9
  ADD s3, s10, zero
  ADD s4, s8, zero
  JAL zero, bb42
bb47:
  ADDI s3, zero, 2
  MULW s4, s5, s3
  ADDIW s3, s4, 1
  ADD s7, s3, zero
  JAL zero, bb46
bb48:
  SLT s3, s2, s1
  BNE s3, zero, bb50
  JAL zero, bb51
bb49:
  XORI s3, s0, 3
  SLTIU s4, s3, 1
  BNE s4, zero, bb52
  JAL zero, bb53
bb50:
  ADD a0, s1, zero
  LD s11, 0(sp)
  LD ra, 8(sp)
  LD s10, 16(sp)
  LD s9, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s7, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s8, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb51:
  ADD a0, s2, zero
  LD s11, 0(sp)
  LD ra, 8(sp)
  LD s10, 16(sp)
  LD s9, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s7, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s8, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb52:
  ADD s3, zero, zero
  ADDI s4, zero, 1
  JAL zero, bb54
bb53:
  XORI s3, s0, 4
  SLTIU s0, s3, 1
  BNE s0, zero, bb63
  JAL zero, bb64
bb54:
  ADD s5, s4, zero
  ADD s6, s3, zero
  LUI s7, 262144
  ADDIW s7, s7, 0
  SLT s8, s5, s7
  BNE s8, zero, bb55
  JAL zero, bb56
bb55:
  DIVW s7, s1, s5
  ADDI s8, zero, 2
  REMW s9, s7, s8
  XORI s7, s9, 1
  SLTIU s8, s7, 1
  BNE s8, zero, bb57
  JAL zero, bb58
bb56:
  ADD a0, s6, zero
  LD s11, 0(sp)
  LD ra, 8(sp)
  LD s10, 16(sp)
  LD s9, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s7, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s8, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb57:
  ADDI s7, zero, 1
  JAL zero, bb59
bb58:
  DIVW s3, s2, s5
  ADDI s4, zero, 2
  REMW s8, s3, s4
  XORI s3, s8, 1
  SLTIU s4, s3, 1
  ADD s7, s4, zero
  JAL zero, bb59
bb59:
  ADD s8, s7, zero
  BNE s8, zero, bb60
  JAL zero, bb62
bb60:
  ADDI s8, zero, 2
  MULW s9, s6, s8
  ADDIW s8, s9, 1
  ADD s9, s8, zero
  JAL zero, bb61
bb61:
  ADD s8, s9, zero
  ADDI s10, zero, 2
  MULW s11, s5, s10
  ADD s3, s8, zero
  ADD s4, s11, zero
  JAL zero, bb54
bb62:
  ADDI s3, zero, 2
  MULW s4, s6, s3
  ADD s9, s4, zero
  JAL zero, bb61
bb63:
  ADDI s0, zero, 1
  ADD s3, zero, zero
  JAL zero, bb65
bb64:
  ADD a0, zero, zero
  LD s11, 0(sp)
  LD ra, 8(sp)
  LD s10, 16(sp)
  LD s9, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s7, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s8, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb65:
  ADD s4, s3, zero
  ADD s5, s0, zero
  LUI s6, 262144
  ADDIW s6, s6, 0
  SLT s7, s5, s6
  BNE s7, zero, bb66
  JAL zero, bb67
bb66:
  DIVW s6, s1, s5
  ADDI s7, zero, 2
  REMW s8, s6, s7
  XORI s6, s8, 1
  SLTIU s7, s6, 1
  BNE s7, zero, bb68
  JAL zero, bb69
bb67:
  ADD a0, s4, zero
  LD s11, 0(sp)
  LD ra, 8(sp)
  LD s10, 16(sp)
  LD s9, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s7, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s8, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb68:
  DIVW s6, s2, s5
  ADDI s7, zero, 2
  REMW s8, s6, s7
  XORI s6, s8, 1
  SLTIU s7, s6, 1
  ADD s6, s7, zero
  JAL zero, bb70
bb69:
  ADD s6, zero, zero
  JAL zero, bb70
bb70:
  ADD s7, s6, zero
  BNE s7, zero, bb71
  JAL zero, bb73
bb71:
  ADDI s7, zero, 2
  MULW s8, s4, s7
  ADDIW s7, s8, 1
  ADD s8, s7, zero
  JAL zero, bb72
bb72:
  ADD s7, s8, zero
  ADDI s9, zero, 2
  MULW s10, s5, s9
  ADD s0, s10, zero
  ADD s3, s7, zero
  JAL zero, bb65
bb73:
  ADDI s0, zero, 2
  MULW s3, s4, s0
  ADD s8, s3, zero
  JAL zero, bb72
bb74:
  ADD s3, s4, zero
  LUI s5, 262144
  ADDIW s5, s5, 0
  SLT s6, s5, s3
  BNE s6, zero, bb75
  JAL zero, bb76
bb75:
  LUI s5, 262144
  ADDIW s5, s5, 0
  SUBW s6, s3, s5
  ADD s4, s6, zero
  JAL zero, bb74
bb76:
  ADD s4, s3, zero
  JAL zero, bb77
bb77:
  ADD s3, s4, zero
  SLT s5, s3, zero
  BNE s5, zero, bb78
  JAL zero, bb79
bb78:
  LUI s5, 262144
  ADDIW s5, s5, 0
  ADDW s6, s3, s5
  ADD s4, s6, zero
  JAL zero, bb77
bb79:
  ADD a0, s3, zero
  LD s11, 0(sp)
  LD ra, 8(sp)
  LD s10, 16(sp)
  LD s9, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s7, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s8, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -304
  SD s11, 200(sp)
  SD s9, 208(sp)
  SD s1, 216(sp)
  SD s5, 224(sp)
  SD s7, 232(sp)
  SD s10, 240(sp)
  SD s3, 248(sp)
  SD s4, 256(sp)
  SD s6, 264(sp)
  SD s8, 272(sp)
  SD s0, 280(sp)
  SD ra, 288(sp)
  SD s2, 296(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 104(sp)
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
  SW t4, 96(sp)
  ADDI a0, zero, 109
  CALL _sysy_starttime
  ADD s4, zero, zero
  JAL zero, bb81
bb81:
  ADD t4, s4, zero
  SW t4, 88(sp)
  LW t4, 88(sp)
  LW t3, 96(sp)
  SLT s6, t4, t3
  BNE s6, zero, bb82
  JAL zero, bb83
bb82:
  ADDI s6, zero, 4
  LW t4, 88(sp)
  MULW s7, t4, s6
  LA s6, kernelid
  ADD s8, s6, s7
  LW t4, 0(s8)
  SW t4, 80(sp)
  ADDI s7, zero, 2
  LW t3, 104(sp)
  DIVW t4, t3, s7
  SW t4, 72(sp)
  ADD s7, zero, zero
  JAL zero, bb84
bb83:
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
  LD s11, 200(sp)
  LD s9, 208(sp)
  LD s1, 216(sp)
  LD s5, 224(sp)
  LD s7, 232(sp)
  LD s10, 240(sp)
  LD s3, 248(sp)
  LD s4, 256(sp)
  LD s6, 264(sp)
  LD s8, 272(sp)
  LD s0, 280(sp)
  LD ra, 288(sp)
  LD s2, 296(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb84:
  ADD t4, s7, zero
  SW t4, 48(sp)
  ADD s10, zero, zero
  JAL zero, bb85
bb85:
  ADD t4, s10, zero
  SW t4, 24(sp)
  LW t4, 48(sp)
  LW t3, 72(sp)
  SUBW s2, t4, t3
  LW t3, 24(sp)
  LW t4, 72(sp)
  SUBW t4, t3, t4
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 192(sp)
  ADD t4, s2, zero
  SW t4, 184(sp)
  JAL zero, bb86
bb86:
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t4, 192(sp)
  ADD s2, t4, zero
  LW t3, 32(sp)
  SLT t4, t3, zero
  SB t4, 40(sp)
  ADD t4, s2, zero
  SW t4, 168(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  JAL zero, bb87
bb87:
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LB t4, 40(sp)
  BNE t4, zero, bb97
  JAL zero, bb98
bb88:
  LW t4, 136(sp)
  ADD s0, t4, zero
  LW t4, 80(sp)
  ADD a0, t4, zero
  LW t4, 64(sp)
  ADD a1, t4, zero
  ADD a2, s0, zero
  CALL reduce
  ADD t4, a0, zero
  SW t4, 160(sp)
  LW t3, 56(sp)
  ADDIW t4, t3, 1
  SW t4, 144(sp)
  LW t4, 24(sp)
  LW t3, 72(sp)
  ADDW s6, t4, t3
  LW t4, 144(sp)
  SLT s5, t4, s6
  XORI s6, s5, 1
  BNE s6, zero, bb89
  JAL zero, bb90
bb89:
  LW t3, 32(sp)
  ADDIW t4, t3, 1
  SW t4, 176(sp)
  LW t4, 48(sp)
  LW t3, 72(sp)
  ADDW s6, t4, t3
  LW t4, 176(sp)
  SLT s3, t4, s6
  XORI s6, s3, 1
  BNE s6, zero, bb91
  JAL zero, bb92
bb90:
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  JAL zero, bb87
bb91:
  LW t4, 48(sp)
  LW t3, 0(sp)
  MULW s3, t4, t3
  LW t4, 24(sp)
  ADDW s6, s3, t4
  ADDI s3, zero, 4
  MULW s8, s6, s3
  LA s3, b
  ADD s6, s3, s8
  LW t4, 160(sp)
  SW t4, 0(s6)
  LW t4, 24(sp)
  ADDIW s3, t4, 1
  LW t4, 0(sp)
  SLT s6, s3, t4
  XORI s8, s6, 1
  BNE s8, zero, bb93
  JAL zero, bb94
bb92:
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  JAL zero, bb86
bb93:
  LW t4, 48(sp)
  ADDIW s6, t4, 1
  LW t4, 8(sp)
  SLT s8, s6, t4
  XORI s2, s8, 1
  BNE s2, zero, bb95
  JAL zero, bb96
bb94:
  ADD s10, s3, zero
  JAL zero, bb85
bb95:
  LW t4, 8(sp)
  LW t3, 0(sp)
  MULW s2, t4, t3
  ADD s8, zero, zero
  JAL zero, bb108
bb96:
  ADD s7, s6, zero
  JAL zero, bb84
bb97:
  ADDI t4, zero, 1
  SB t4, 112(sp)
  JAL zero, bb99
bb98:
  LW t4, 56(sp)
  SLT s0, t4, zero
  ADD t4, s0, zero
  SB t4, 112(sp)
  JAL zero, bb99
bb99:
  LB t4, 112(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb100
  JAL zero, bb101
bb100:
  ADDI t4, zero, 1
  SB t4, 120(sp)
  JAL zero, bb102
bb101:
  LW t4, 32(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 120(sp)
  JAL zero, bb102
bb102:
  LB t4, 120(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb103
  JAL zero, bb104
bb103:
  ADDI t4, zero, 1
  SB t4, 128(sp)
  JAL zero, bb105
bb104:
  LW t4, 56(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 128(sp)
  JAL zero, bb105
bb105:
  LB t4, 128(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb106
  JAL zero, bb107
bb106:
  ADD t4, zero, zero
  SW t4, 136(sp)
  JAL zero, bb88
bb107:
  LW t4, 32(sp)
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
  SW t4, 136(sp)
  JAL zero, bb88
bb108:
  ADD s0, s8, zero
  SLT s9, s0, s2
  BNE s9, zero, bb109
  JAL zero, bb110
bb109:
  ADDI s9, zero, 4
  MULW s5, s0, s9
  LA s9, a
  ADD s11, s9, s5
  LA s9, b
  ADD s1, s9, s5
  LW s5, 0(s1)
  SW s5, 0(s11)
  ADDIW s1, s0, 1
  ADD s8, s1, zero
  JAL zero, bb108
bb110:
  LW t4, 88(sp)
  ADDIW s0, t4, 1
  ADD s4, s0, zero
  JAL zero, bb81
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
  JAL zero, bb112
bb112:
  ADD s4, s3, zero
  SLT s5, s4, s2
  BNE s5, zero, bb113
  JAL zero, bb114
bb113:
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s5, s0, s6
  ADD s7, s1, s6
  LW s6, 0(s7)
  SW s6, 0(s5)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb112
bb114:
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
  JAL zero, bb116
bb116:
  ADD s0, s1, zero
  LUI s2, 262144
  ADDIW s2, s2, 0
  SLT s3, s2, s0
  BNE s3, zero, bb117
  JAL zero, bb118
bb117:
  LUI s2, 262144
  ADDIW s2, s2, 0
  SUBW s3, s0, s2
  ADD s1, s3, zero
  JAL zero, bb116
bb118:
  ADD s1, s0, zero
  JAL zero, bb119
bb119:
  ADD s0, s1, zero
  SLT s2, s0, zero
  BNE s2, zero, bb120
  JAL zero, bb121
bb120:
  LUI s2, 262144
  ADDIW s2, s2, 0
  ADDW s3, s0, s2
  ADD s1, s3, zero
  JAL zero, bb119
bb121:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
