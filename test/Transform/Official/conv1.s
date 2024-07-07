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
  ADDI sp, sp, -160
  SD s11, 56(sp)
  SD s10, 64(sp)
  SD s9, 72(sp)
  SD ra, 80(sp)
  SD s8, 88(sp)
  SD s7, 96(sp)
  SD s6, 104(sp)
  SD s0, 112(sp)
  SD s5, 120(sp)
  SD s1, 128(sp)
  SD s2, 136(sp)
  SD s3, 144(sp)
  SD s4, 152(sp)
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
  LD s11, 56(sp)
  LD s10, 64(sp)
  LD s9, 72(sp)
  LD ra, 80(sp)
  LD s8, 88(sp)
  LD s7, 96(sp)
  LD s6, 104(sp)
  LD s0, 112(sp)
  LD s5, 120(sp)
  LD s1, 128(sp)
  LD s2, 136(sp)
  LD s3, 144(sp)
  LD s4, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb4:
  ADD s9, s8, zero
  ADDI s10, zero, 2
  DIVW s11, s5, s10
  SUBW s10, s7, s11
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, s10, zero
  SW t4, 24(sp)
  JAL zero, bb6
bb5:
  ADDIW a2, s7, 1
  SLT a3, a2, s3
  XORI a4, a3, 1
  BNE a4, zero, bb16
  JAL zero, bb17
bb6:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t4, 16(sp)
  ADD t1, t4, zero
  SUBW t2, s9, s11
  ADD t4, t1, zero
  SW t4, 40(sp)
  ADD t4, t2, zero
  SW t4, 32(sp)
  JAL zero, bb8
bb7:
  ADD a2, a1, zero
  MULW a1, s7, s4
  ADDW a3, a1, s9
  ADDI a1, zero, 4
  MULW a4, a3, a1
  ADD a1, s2, a4
  SW a2, 0(a1)
  ADDIW a1, s9, 1
  SLT a2, a1, s4
  XORI a3, a2, 1
  BNE a3, zero, bb14
  JAL zero, bb15
bb8:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  ADD a0, s1, zero
  ADD a1, s3, zero
  ADD a2, s4, zero
  LW t4, 48(sp)
  ADD a3, t4, zero
  LW t4, 0(sp)
  ADD a4, t4, zero
  CALL getvalue
  ADD s10, a0, zero
  ADD a0, s0, zero
  LW t4, 8(sp)
  ADD a1, t4, zero
  ADD a2, s10, zero
  CALL reduce
  ADD s10, a0, zero
  LW t4, 0(sp)
  ADDIW t0, t4, 1
  ADDW t1, s9, s11
  SLT t2, t0, t1
  XORI t1, t2, 1
  BNE t1, zero, bb10
  JAL zero, bb11
bb9:
  ADD t2, t1, zero
  LW t4, 48(sp)
  ADDIW t1, t4, 1
  ADDW a1, s7, s11
  SLT a2, t1, a1
  XORI a1, a2, 1
  BNE a1, zero, bb12
  JAL zero, bb13
bb10:
  ADD t1, s10, zero
  JAL zero, bb9
bb11:
  ADD t4, s10, zero
  SW t4, 40(sp)
  ADD t4, t0, zero
  SW t4, 32(sp)
  JAL zero, bb8
bb12:
  ADD a1, t2, zero
  JAL zero, bb7
bb13:
  ADD t4, t2, zero
  SW t4, 16(sp)
  ADD t4, t1, zero
  SW t4, 24(sp)
  JAL zero, bb6
bb14:
  JAL zero, bb5
bb15:
  ADD s8, a1, zero
  JAL zero, bb4
bb16:
  JAL zero, bb3
bb17:
  ADD s6, a2, zero
  JAL zero, bb1
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
  BNE s5, zero, bb19
  JAL zero, bb20
bb19:
  ADDI s5, zero, 1
  JAL zero, bb21
bb20:
  SLT s6, s4, zero
  ADD s5, s6, zero
  JAL zero, bb21
bb21:
  ADD s6, s5, zero
  BNE s6, zero, bb22
  JAL zero, bb23
bb22:
  ADDI s6, zero, 1
  JAL zero, bb24
bb23:
  SLT s7, s3, s1
  XORI s8, s7, 1
  ADD s6, s8, zero
  JAL zero, bb24
bb24:
  ADD s7, s6, zero
  BNE s7, zero, bb25
  JAL zero, bb26
bb25:
  ADDI s7, zero, 1
  JAL zero, bb27
bb26:
  SLT s8, s4, s2
  XORI s9, s8, 1
  ADD s7, s9, zero
  JAL zero, bb27
bb27:
  ADD s8, s7, zero
  BNE s8, zero, bb28
  JAL zero, bb29
bb28:
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
bb29:
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
  BNE s4, zero, bb31
  JAL zero, bb32
bb31:
  ADDW s3, s1, s2
  ADD a0, s3, zero
  CALL checkrange
  ADD s3, a0, zero
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
bb32:
  XORI s3, s0, 1
  SLTIU s4, s3, 1
  BNE s4, zero, bb33
  JAL zero, bb34
bb33:
  ADDI s3, zero, 1
  ADD s4, zero, zero
  JAL zero, bb35
bb34:
  XORI s3, s0, 2
  SLTIU s4, s3, 1
  BNE s4, zero, bb41
  JAL zero, bb42
bb35:
  ADD s5, s4, zero
  ADD s6, s3, zero
  LUI s7, 262144
  ADDI s7, s7, 0
  SLT s8, s6, s7
  BNE s8, zero, bb36
  JAL zero, bb37
bb36:
  DIVW s7, s1, s6
  ADDI s8, zero, 2
  REMW s9, s7, s8
  DIVW s7, s2, s6
  ADDI s8, zero, 2
  REMW s10, s7, s8
  XOR s7, s9, s10
  SLTIU s8, s7, 1
  BNE s8, zero, bb38
  JAL zero, bb40
bb37:
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
bb38:
  ADDI s7, zero, 2
  MULW s8, s5, s7
  ADD s7, s8, zero
  JAL zero, bb39
bb39:
  ADD s8, s7, zero
  ADDI s9, zero, 2
  MULW s10, s6, s9
  ADD s3, s10, zero
  ADD s4, s8, zero
  JAL zero, bb35
bb40:
  ADDI s3, zero, 2
  MULW s4, s5, s3
  ADDIW s3, s4, 1
  ADD s7, s3, zero
  JAL zero, bb39
bb41:
  SLT s3, s2, s1
  BNE s3, zero, bb43
  JAL zero, bb44
bb42:
  XORI s3, s0, 3
  SLTIU s4, s3, 1
  BNE s4, zero, bb45
  JAL zero, bb46
bb43:
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
bb44:
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
bb45:
  ADD s3, zero, zero
  ADDI s4, zero, 1
  JAL zero, bb47
bb46:
  XORI s3, s0, 4
  SLTIU s0, s3, 1
  BNE s0, zero, bb56
  JAL zero, bb57
bb47:
  ADD s5, s4, zero
  ADD s6, s3, zero
  LUI s7, 262144
  ADDI s7, s7, 0
  SLT s8, s5, s7
  BNE s8, zero, bb48
  JAL zero, bb49
bb48:
  DIVW s7, s1, s5
  ADDI s8, zero, 2
  REMW s9, s7, s8
  XORI s7, s9, 1
  SLTIU s8, s7, 1
  BNE s8, zero, bb50
  JAL zero, bb51
bb49:
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
bb50:
  ADDI s7, zero, 1
  JAL zero, bb52
bb51:
  DIVW s3, s2, s5
  ADDI s4, zero, 2
  REMW s8, s3, s4
  XORI s3, s8, 1
  SLTIU s4, s3, 1
  ADD s7, s4, zero
  JAL zero, bb52
bb52:
  ADD s8, s7, zero
  BNE s8, zero, bb53
  JAL zero, bb55
bb53:
  ADDI s8, zero, 2
  MULW s9, s6, s8
  ADDIW s8, s9, 1
  ADD s9, s8, zero
  JAL zero, bb54
bb54:
  ADD s8, s9, zero
  ADDI s10, zero, 2
  MULW s11, s5, s10
  ADD s3, s8, zero
  ADD s4, s11, zero
  JAL zero, bb47
bb55:
  ADDI s3, zero, 2
  MULW s4, s6, s3
  ADD s9, s4, zero
  JAL zero, bb54
bb56:
  ADDI s0, zero, 1
  ADD s3, zero, zero
  JAL zero, bb58
bb57:
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
bb58:
  ADD s4, s3, zero
  ADD s5, s0, zero
  LUI s6, 262144
  ADDI s6, s6, 0
  SLT s7, s5, s6
  BNE s7, zero, bb59
  JAL zero, bb60
bb59:
  DIVW s6, s1, s5
  ADDI s7, zero, 2
  REMW s8, s6, s7
  XORI s6, s8, 1
  SLTIU s7, s6, 1
  BNE s7, zero, bb61
  JAL zero, bb62
bb60:
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
bb61:
  DIVW s6, s2, s5
  ADDI s7, zero, 2
  REMW s8, s6, s7
  XORI s6, s8, 1
  SLTIU s7, s6, 1
  ADD s6, s7, zero
  JAL zero, bb63
bb62:
  ADD s6, zero, zero
  JAL zero, bb63
bb63:
  ADD s7, s6, zero
  BNE s7, zero, bb64
  JAL zero, bb66
bb64:
  ADDI s7, zero, 2
  MULW s8, s4, s7
  ADDIW s7, s8, 1
  ADD s8, s7, zero
  JAL zero, bb65
bb65:
  ADD s7, s8, zero
  ADDI s9, zero, 2
  MULW s10, s5, s9
  ADD s0, s10, zero
  ADD s3, s7, zero
  JAL zero, bb58
bb66:
  ADDI s0, zero, 2
  MULW s3, s4, s0
  ADD s8, s3, zero
  JAL zero, bb65
main:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s7, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s8, 72(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  CALL getint
  ADD s2, a0, zero
  LA s3, a
  ADD a0, s3, zero
  CALL getarray
  ADD s3, a0, zero
  LA s3, kernelid
  ADD a0, s3, zero
  CALL getarray
  ADD s3, a0, zero
  ADDI a0, zero, 109
  CALL _sysy_starttime
  ADD s4, zero, zero
  JAL zero, bb68
bb68:
  ADD s5, s4, zero
  SLT s6, s5, s3
  BNE s6, zero, bb69
  JAL zero, bb70
bb69:
  ADDI s6, zero, 4
  MULW s7, s5, s6
  LA s6, kernelid
  ADD s8, s6, s7
  LW s6, 0(s8)
  ADD a0, s6, zero
  LA s6, a
  ADD a1, s6, zero
  LA s6, b
  ADD a2, s6, zero
  ADD a3, s1, zero
  ADD a4, s2, zero
  ADD a5, s0, zero
  CALL convn
  ADD s6, a0, zero
  MULW s6, s1, s2
  LA s7, a
  ADD a0, s7, zero
  LA s7, b
  ADD a1, s7, zero
  ADD a2, s6, zero
  CALL memmove
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb68
bb70:
  ADDI a0, zero, 116
  CALL _sysy_stoptime
  MULW s0, s1, s2
  ADD a0, s0, zero
  LA s0, a
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s8, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
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
  JAL zero, bb72
bb72:
  ADD s4, s3, zero
  SLT s5, s4, s2
  BNE s5, zero, bb73
  JAL zero, bb74
bb73:
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s5, s0, s6
  ADD s7, s1, s6
  LW s6, 0(s7)
  SW s6, 0(s5)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb72
bb74:
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
  JAL zero, bb76
bb76:
  ADD s0, s1, zero
  LUI s2, 262144
  ADDI s2, s2, 0
  SLT s3, s2, s0
  BNE s3, zero, bb77
  JAL zero, bb78
bb77:
  LUI s2, 262144
  ADDI s2, s2, 0
  SUBW s3, s0, s2
  ADD s1, s3, zero
  JAL zero, bb76
bb78:
  ADD s1, s0, zero
  JAL zero, bb79
bb79:
  ADD s0, s1, zero
  SLT s2, s0, zero
  BNE s2, zero, bb80
  JAL zero, bb81
bb80:
  LUI s2, 262144
  ADDI s2, s2, 0
  ADDW s3, s0, s2
  ADD s1, s3, zero
  JAL zero, bb79
bb81:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
