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
  ADDI sp, sp, -144
  SD s7, 72(sp)
  SD s6, 80(sp)
  SD ra, 88(sp)
  SD s0, 96(sp)
  SD s5, 104(sp)
  SD s1, 112(sp)
  SD s2, 120(sp)
  SD s3, 128(sp)
  SD s4, 136(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  SW s0, 64(sp)
  SW s3, 56(sp)
  SW s4, 48(sp)
  SW s5, 40(sp)
  ADDI s0, zero, 0
  SW s0, 32(sp)
  ADDI s0, zero, 0
  SW s0, 24(sp)
  JAL zero, bb1
bb1:
  ADDI s0, zero, 1
  XORI s3, s0, 1
  SLTIU s0, s3, 1
  XOR s3, s0, zero
  SLTU s0, zero, s3
  BNE s0, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s0, zero, 0
  SW s0, 24(sp)
  JAL zero, bb4
bb3:
  ADD a0, zero, zero
  LD s7, 72(sp)
  LD s6, 80(sp)
  LD ra, 88(sp)
  LD s0, 96(sp)
  LD s5, 104(sp)
  LD s1, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb4:
  ADDI s0, zero, 1
  XORI s3, s0, 1
  SLTIU s0, s3, 1
  XOR s3, s0, zero
  SLTU s0, zero, s3
  BNE s0, zero, bb5
  JAL zero, bb6
bb5:
  SW zero, 0(sp)
  LW s0, 32(sp)
  LW s3, 40(sp)
  ADDI s4, zero, 2
  DIVW s5, s3, s4
  SUBW s3, s0, s5
  SW s3, 16(sp)
  JAL zero, bb7
bb6:
  LW s0, 32(sp)
  ADDIW s3, s0, 1
  SW s3, 32(sp)
  LW s0, 32(sp)
  LW s3, 56(sp)
  SLT s4, s0, s3
  XORI s0, s4, 1
  BNE s0, zero, bb19
  JAL zero, bb20
bb7:
  ADDI s0, zero, 1
  XORI s3, s0, 1
  SLTIU s0, s3, 1
  XOR s3, s0, zero
  SLTU s0, zero, s3
  BNE s0, zero, bb8
  JAL zero, bb9
bb8:
  LW s0, 24(sp)
  LW s3, 40(sp)
  ADDI s4, zero, 2
  DIVW s5, s3, s4
  SUBW s3, s0, s5
  SW s3, 8(sp)
  JAL zero, bb10
bb9:
  LW s0, 32(sp)
  LW s3, 48(sp)
  MULW s4, s0, s3
  LW s0, 24(sp)
  ADDW s3, s4, s0
  ADDI s0, zero, 4
  MULW s4, s3, s0
  ADD s0, s2, s4
  LW s3, 0(sp)
  SW s3, 0(s0)
  LW s0, 24(sp)
  ADDIW s3, s0, 1
  SW s3, 24(sp)
  LW s0, 24(sp)
  LW s3, 48(sp)
  SLT s4, s0, s3
  XORI s0, s4, 1
  BNE s0, zero, bb17
  JAL zero, bb18
bb10:
  ADDI s0, zero, 1
  XORI s3, s0, 1
  SLTIU s0, s3, 1
  XOR s3, s0, zero
  SLTU s0, zero, s3
  BNE s0, zero, bb11
  JAL zero, bb12
bb11:
  LW s0, 64(sp)
  LW s3, 0(sp)
  LW s4, 56(sp)
  LW s5, 48(sp)
  LW s6, 16(sp)
  LW s7, 8(sp)
  ADD a0, s1, zero
  ADD a1, s4, zero
  ADD a2, s5, zero
  ADD a3, s6, zero
  ADD a4, s7, zero
  CALL getvalue
  ADD s4, a0, zero
  ADD a0, s0, zero
  ADD a1, s3, zero
  ADD a2, s4, zero
  CALL reduce
  ADD s0, a0, zero
  SW s0, 0(sp)
  LW s0, 8(sp)
  ADDIW s3, s0, 1
  SW s3, 8(sp)
  LW s0, 8(sp)
  LW s3, 24(sp)
  LW s4, 40(sp)
  ADDI s5, zero, 2
  DIVW s6, s4, s5
  ADDW s4, s3, s6
  SLT s3, s0, s4
  XORI s0, s3, 1
  BNE s0, zero, bb13
  JAL zero, bb14
bb12:
  LW s0, 16(sp)
  ADDIW s3, s0, 1
  SW s3, 16(sp)
  LW s0, 16(sp)
  LW s3, 32(sp)
  LW s4, 40(sp)
  ADDI s5, zero, 2
  DIVW s6, s4, s5
  ADDW s4, s3, s6
  SLT s3, s0, s4
  XORI s0, s3, 1
  BNE s0, zero, bb15
  JAL zero, bb16
bb13:
  JAL zero, bb12
bb14:
  JAL zero, bb10
bb15:
  JAL zero, bb9
bb16:
  JAL zero, bb7
bb17:
  JAL zero, bb6
bb18:
  JAL zero, bb4
bb19:
  JAL zero, bb3
bb20:
  JAL zero, bb1
getvalue:
  ADDI sp, sp, -112
  SD ra, 56(sp)
  SD s4, 64(sp)
  SD s3, 72(sp)
  SD s2, 80(sp)
  SD s1, 88(sp)
  SD s0, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  SW s1, 48(sp)
  SW s2, 40(sp)
  SW s3, 32(sp)
  SW s4, 24(sp)
  LW s1, 32(sp)
  SLT s2, s1, zero
  BNE s2, zero, bb22
  JAL zero, bb23
bb22:
  ADDI s1, zero, 1
  SB s1, 16(sp)
  JAL zero, bb24
bb23:
  LW s1, 24(sp)
  SLT s2, s1, zero
  XOR s1, s2, zero
  SLTU s2, zero, s1
  SB s2, 16(sp)
  JAL zero, bb24
bb24:
  LB s1, 16(sp)
  BNE s1, zero, bb25
  JAL zero, bb26
bb25:
  ADDI s1, zero, 1
  SB s1, 8(sp)
  JAL zero, bb27
bb26:
  LW s1, 32(sp)
  LW s2, 48(sp)
  SLT s3, s1, s2
  XORI s1, s3, 1
  XOR s2, s1, zero
  SLTU s1, zero, s2
  SB s1, 8(sp)
  JAL zero, bb27
bb27:
  LB s1, 8(sp)
  BNE s1, zero, bb28
  JAL zero, bb29
bb28:
  ADDI s1, zero, 1
  SB s1, 0(sp)
  JAL zero, bb30
bb29:
  LW s1, 24(sp)
  LW s2, 40(sp)
  SLT s3, s1, s2
  XORI s1, s3, 1
  XOR s2, s1, zero
  SLTU s1, zero, s2
  SB s1, 0(sp)
  JAL zero, bb30
bb30:
  LB s1, 0(sp)
  BNE s1, zero, bb31
  JAL zero, bb32
bb31:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s1, 88(sp)
  LD s0, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb32:
  LW s1, 32(sp)
  LW s2, 40(sp)
  MULW s3, s1, s2
  LW s1, 24(sp)
  ADDW s2, s3, s1
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  LW s2, 0(s1)
  ADD a0, s2, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s1, 88(sp)
  LD s0, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
reduce:
  ADDI sp, sp, -128
  SD s3, 88(sp)
  SD ra, 96(sp)
  SD s2, 104(sp)
  SD s1, 112(sp)
  SD s0, 120(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  SW s0, 80(sp)
  SW s1, 72(sp)
  SW s2, 64(sp)
  LW s0, 80(sp)
  XOR s1, s0, zero
  SLTIU s0, s1, 1
  BNE s0, zero, bb34
  JAL zero, bb35
bb34:
  LW s0, 72(sp)
  LW s1, 64(sp)
  ADDW s2, s0, s1
  ADD a0, s2, zero
  CALL checkrange
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD s3, 88(sp)
  LD ra, 96(sp)
  LD s2, 104(sp)
  LD s1, 112(sp)
  LD s0, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb35:
  LW s0, 80(sp)
  XORI s1, s0, 1
  SLTIU s0, s1, 1
  BNE s0, zero, bb36
  JAL zero, bb37
bb36:
  SW zero, 56(sp)
  ADDI s0, zero, 1
  SW s0, 48(sp)
  JAL zero, bb38
bb37:
  LW s0, 80(sp)
  XORI s1, s0, 2
  SLTIU s0, s1, 1
  BNE s0, zero, bb44
  JAL zero, bb45
bb38:
  LW s0, 48(sp)
  LA s1, max
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb39
  JAL zero, bb40
bb39:
  LW s0, 72(sp)
  LW s1, 48(sp)
  DIVW s2, s0, s1
  ADDI s0, zero, 2
  REMW s1, s2, s0
  LW s0, 64(sp)
  LW s2, 48(sp)
  DIVW s3, s0, s2
  ADDI s0, zero, 2
  REMW s2, s3, s0
  XOR s0, s1, s2
  SLTIU s1, s0, 1
  BNE s1, zero, bb41
  JAL zero, bb43
bb40:
  LW s0, 56(sp)
  ADD a0, s0, zero
  LD s3, 88(sp)
  LD ra, 96(sp)
  LD s2, 104(sp)
  LD s1, 112(sp)
  LD s0, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb41:
  LW s0, 56(sp)
  ADDI s1, zero, 2
  MULW s2, s0, s1
  SW s2, 56(sp)
  JAL zero, bb42
bb42:
  LW s0, 48(sp)
  ADDI s1, zero, 2
  MULW s2, s0, s1
  SW s2, 48(sp)
  JAL zero, bb38
bb43:
  LW s0, 56(sp)
  ADDI s1, zero, 2
  MULW s2, s0, s1
  ADDIW s0, s2, 1
  SW s0, 56(sp)
  JAL zero, bb42
bb44:
  LW s0, 72(sp)
  LW s1, 64(sp)
  SLT s2, s1, s0
  BNE s2, zero, bb46
  JAL zero, bb48
bb45:
  LW s0, 80(sp)
  XORI s1, s0, 3
  SLTIU s0, s1, 1
  BNE s0, zero, bb49
  JAL zero, bb50
bb46:
  LW s0, 72(sp)
  ADD a0, s0, zero
  LD s3, 88(sp)
  LD ra, 96(sp)
  LD s2, 104(sp)
  LD s1, 112(sp)
  LD s0, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb47:
  JAL zero, bb45
bb48:
  LW s0, 64(sp)
  ADD a0, s0, zero
  LD s3, 88(sp)
  LD ra, 96(sp)
  LD s2, 104(sp)
  LD s1, 112(sp)
  LD s0, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb49:
  SW zero, 40(sp)
  ADDI s0, zero, 1
  SW s0, 32(sp)
  JAL zero, bb51
bb50:
  LW s0, 80(sp)
  XORI s1, s0, 4
  SLTIU s0, s1, 1
  BNE s0, zero, bb60
  JAL zero, bb61
bb51:
  LW s0, 32(sp)
  LA s1, max
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb52
  JAL zero, bb53
bb52:
  LW s0, 72(sp)
  LW s1, 32(sp)
  DIVW s2, s0, s1
  ADDI s0, zero, 2
  REMW s1, s2, s0
  XORI s0, s1, 1
  SLTIU s1, s0, 1
  BNE s1, zero, bb54
  JAL zero, bb55
bb53:
  LW s0, 40(sp)
  ADD a0, s0, zero
  LD s3, 88(sp)
  LD ra, 96(sp)
  LD s2, 104(sp)
  LD s1, 112(sp)
  LD s0, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb54:
  ADDI s0, zero, 1
  SB s0, 24(sp)
  JAL zero, bb56
bb55:
  LW s0, 64(sp)
  LW s1, 32(sp)
  DIVW s2, s0, s1
  ADDI s0, zero, 2
  REMW s1, s2, s0
  XORI s0, s1, 1
  SLTIU s1, s0, 1
  XOR s0, s1, zero
  SLTU s1, zero, s0
  SB s1, 24(sp)
  JAL zero, bb56
bb56:
  LB s0, 24(sp)
  BNE s0, zero, bb57
  JAL zero, bb59
bb57:
  LW s0, 40(sp)
  ADDI s1, zero, 2
  MULW s2, s0, s1
  ADDIW s0, s2, 1
  SW s0, 40(sp)
  JAL zero, bb58
bb58:
  LW s0, 32(sp)
  ADDI s1, zero, 2
  MULW s2, s0, s1
  SW s2, 32(sp)
  JAL zero, bb51
bb59:
  LW s0, 40(sp)
  ADDI s1, zero, 2
  MULW s2, s0, s1
  SW s2, 40(sp)
  JAL zero, bb58
bb60:
  SW zero, 16(sp)
  ADDI s0, zero, 1
  SW s0, 8(sp)
  JAL zero, bb62
bb61:
  ADD a0, zero, zero
  LD s3, 88(sp)
  LD ra, 96(sp)
  LD s2, 104(sp)
  LD s1, 112(sp)
  LD s0, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb62:
  LW s0, 8(sp)
  LA s1, max
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb63
  JAL zero, bb64
bb63:
  LW s0, 72(sp)
  LW s1, 8(sp)
  DIVW s2, s0, s1
  ADDI s0, zero, 2
  REMW s1, s2, s0
  XORI s0, s1, 1
  SLTIU s1, s0, 1
  BNE s1, zero, bb65
  JAL zero, bb66
bb64:
  LW s0, 16(sp)
  ADD a0, s0, zero
  LD s3, 88(sp)
  LD ra, 96(sp)
  LD s2, 104(sp)
  LD s1, 112(sp)
  LD s0, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb65:
  LW s0, 64(sp)
  LW s1, 8(sp)
  DIVW s2, s0, s1
  ADDI s0, zero, 2
  REMW s1, s2, s0
  XORI s0, s1, 1
  SLTIU s1, s0, 1
  SB s1, 0(sp)
  JAL zero, bb67
bb66:
  SB zero, 0(sp)
  JAL zero, bb67
bb67:
  LB s0, 0(sp)
  BNE s0, zero, bb68
  JAL zero, bb70
bb68:
  LW s0, 16(sp)
  ADDI s1, zero, 2
  MULW s2, s0, s1
  ADDIW s0, s2, 1
  SW s0, 16(sp)
  JAL zero, bb69
bb69:
  LW s0, 8(sp)
  ADDI s1, zero, 2
  MULW s2, s0, s1
  SW s2, 8(sp)
  JAL zero, bb62
bb70:
  LW s0, 16(sp)
  ADDI s1, zero, 2
  MULW s2, s0, s1
  SW s2, 16(sp)
  JAL zero, bb69
main:
  ADDI sp, sp, -80
  SD ra, 40(sp)
  SD s3, 48(sp)
  SD s2, 56(sp)
  SD s1, 64(sp)
  SD s0, 72(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 32(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 24(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 16(sp)
  LA s0, a
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  LA s0, kernelid
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  SW s0, 8(sp)
  ADDI a0, zero, 109
  CALL _sysy_starttime
  SW zero, 0(sp)
  JAL zero, bb72
bb72:
  LW s0, 0(sp)
  LW s1, 8(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb73
  JAL zero, bb74
bb73:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, kernelid
  ADD s1, s0, s2
  LW s0, 0(s1)
  LW s1, 24(sp)
  LW s2, 16(sp)
  LW s3, 32(sp)
  ADD a0, s0, zero
  LA s0, a
  ADD a1, s0, zero
  LA s0, b
  ADD a2, s0, zero
  ADD a3, s1, zero
  ADD a4, s2, zero
  ADD a5, s3, zero
  CALL convn
  ADD s0, a0, zero
  LW s0, 24(sp)
  LW s1, 16(sp)
  MULW s2, s0, s1
  LA s0, a
  ADD a0, s0, zero
  LA s0, b
  ADD a1, s0, zero
  ADD a2, s2, zero
  CALL memmove
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb72
bb74:
  ADDI a0, zero, 116
  CALL _sysy_starttime
  LW s0, 24(sp)
  LW s1, 16(sp)
  MULW s2, s0, s1
  ADD a0, s2, zero
  LA s0, a
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s3, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
memmove:
  ADDI sp, sp, -80
  SD ra, 16(sp)
  SD s4, 24(sp)
  SD s3, 32(sp)
  SD s2, 40(sp)
  SD s1, 48(sp)
  SD s5, 56(sp)
  SD s0, 64(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  SW s2, 8(sp)
  SW zero, 0(sp)
  JAL zero, bb76
bb76:
  LW s2, 0(sp)
  LW s3, 8(sp)
  SLT s4, s2, s3
  XOR s2, s4, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb77
  JAL zero, bb78
bb77:
  LW s2, 0(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s3, 0(sp)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s1, s5
  LW s4, 0(s3)
  SW s4, 0(s2)
  LW s2, 0(sp)
  ADDIW s3, s2, 1
  SW s3, 0(sp)
  JAL zero, bb76
bb78:
  LD ra, 16(sp)
  LD s4, 24(sp)
  LD s3, 32(sp)
  LD s2, 40(sp)
  LD s1, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
checkrange:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  SW s0, 0(sp)
  JAL zero, bb80
bb80:
  LW s0, 0(sp)
  LA s1, max
  LW s2, 0(s1)
  SLT s1, s2, s0
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb81
  JAL zero, bb82
bb81:
  LW s0, 0(sp)
  LA s1, max
  LW s2, 0(s1)
  SUBW s1, s0, s2
  SW s1, 0(sp)
  JAL zero, bb80
bb82:
  JAL zero, bb83
bb83:
  LW s0, 0(sp)
  SLT s1, s0, zero
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb84
  JAL zero, bb85
bb84:
  LW s0, 0(sp)
  LA s1, max
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  JAL zero, bb83
bb85:
  LW s0, 0(sp)
  ADD a0, s0, zero
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
