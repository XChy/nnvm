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
  ADDI sp, sp, -240
  SD s4, 136(sp)
  SD s2, 144(sp)
  SD s6, 152(sp)
  SD s0, 160(sp)
  SD s1, 168(sp)
  SD s5, 176(sp)
  SD s8, 184(sp)
  SD s7, 192(sp)
  SD s11, 200(sp)
  SD s10, 208(sp)
  SD s9, 216(sp)
  SD ra, 224(sp)
  SD s3, 232(sp)
  ADD t4, a0, zero
  SW t4, 48(sp)
  ADD t4, a1, zero
  SD t4, 40(sp)
  ADD t4, a2, zero
  SD t4, 32(sp)
  ADD t4, a3, zero
  SW t4, 24(sp)
  ADD t4, a4, zero
  SW t4, 16(sp)
  ADD t4, a5, zero
  SW t4, 8(sp)
  ADD t4, zero, zero
  SW t4, 96(sp)
  ADD t4, zero, zero
  SW t4, 120(sp)
  ADD t4, zero, zero
  SW t4, 128(sp)
  ADD t4, zero, zero
  SW t4, 0(sp)
  JAL zero, bb1
bb1:
  ADDI t1, zero, 1
  XORI t0, t1, 1
  SLTIU t1, t0, 1
  XOR t0, t1, zero
  SLTU t1, zero, t0
  BNE t1, zero, bb2
  JAL zero, bb3
bb2:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  ADD t4, zero, zero
  SW t4, 56(sp)
  JAL zero, bb4
bb3:
  ADD a0, zero, zero
  LD s4, 136(sp)
  LD s2, 144(sp)
  LD s6, 152(sp)
  LD s0, 160(sp)
  LD s1, 168(sp)
  LD s5, 176(sp)
  LD s8, 184(sp)
  LD s7, 192(sp)
  LD s11, 200(sp)
  LD s10, 208(sp)
  LD s9, 216(sp)
  LD ra, 224(sp)
  LD s3, 232(sp)
  ADDI sp, sp, 240
  JALR zero, 0(ra)
bb4:
  ADDI s9, zero, 1
  XORI s3, s9, 1
  SLTIU s9, s3, 1
  XOR s3, s9, zero
  SLTU s9, zero, s3
  BNE s9, zero, bb5
  JAL zero, bb21
bb5:
  ADDI s3, zero, 2
  LW t4, 8(sp)
  DIVW s9, t4, s3
  LW t4, 0(sp)
  SUBW s3, t4, s9
  ADD s9, zero, zero
  LW t4, 80(sp)
  ADD s10, t4, zero
  ADD s11, s3, zero
  JAL zero, bb7
bb6:
  LW t4, 0(sp)
  ADDIW a1, t4, 1
  LW t4, 24(sp)
  SLT a2, a1, t4
  XORI a3, a2, 1
  BNE a3, zero, bb19
  JAL zero, bb20
bb7:
  ADDI s3, zero, 1
  XORI s7, s3, 1
  SLTIU s3, s7, 1
  XOR s7, s3, zero
  SLTU s3, zero, s7
  BNE s3, zero, bb8
  JAL zero, bb22
bb8:
  ADDI s3, zero, 2
  LW t4, 8(sp)
  DIVW s7, t4, s3
  LW t4, 56(sp)
  SUBW s3, t4, s7
  ADD s7, s9, zero
  ADD t4, s3, zero
  SW t4, 104(sp)
  JAL zero, bb10
bb9:
  LW t4, 0(sp)
  LW t3, 16(sp)
  MULW t1, t4, t3
  LW t4, 56(sp)
  ADDW t2, t1, t4
  ADDI t1, zero, 4
  MULW a1, t2, t1
  LD t4, 32(sp)
  ADD t1, t4, a1
  SW s8, 0(t1)
  LW t4, 56(sp)
  ADDIW t1, t4, 1
  LW t4, 16(sp)
  SLT t2, t1, t4
  XORI a1, t2, 1
  BNE a1, zero, bb17
  JAL zero, bb18
bb10:
  ADDI s3, zero, 1
  XORI s5, s3, 1
  SLTIU s3, s5, 1
  XOR s5, s3, zero
  SLTU s3, zero, s5
  BNE s3, zero, bb11
  JAL zero, bb23
bb11:
  LD t4, 40(sp)
  ADD a0, t4, zero
  LW t4, 24(sp)
  ADD a1, t4, zero
  LW t4, 16(sp)
  ADD a2, t4, zero
  ADD a3, s11, zero
  LW t4, 104(sp)
  ADD a4, t4, zero
  CALL getvalue
  ADD s3, a0, zero
  LW t4, 48(sp)
  ADD a0, t4, zero
  ADD a1, s7, zero
  ADD a2, s3, zero
  CALL reduce
  ADD s3, a0, zero
  LW t4, 104(sp)
  ADDIW s5, t4, 1
  ADDI t0, zero, 2
  LW t4, 8(sp)
  DIVW t1, t4, t0
  LW t4, 56(sp)
  ADDW t0, t4, t1
  SLT t1, s5, t0
  XORI t0, t1, 1
  BNE t0, zero, bb13
  JAL zero, bb14
bb12:
  ADDIW t0, s11, 1
  ADDI t1, zero, 2
  LW t4, 8(sp)
  DIVW t2, t4, t1
  LW t4, 0(sp)
  ADDW t1, t4, t2
  SLT t2, t0, t1
  XORI t1, t2, 1
  BNE t1, zero, bb15
  JAL zero, bb16
bb13:
  ADD s1, s3, zero
  ADD s0, s5, zero
  JAL zero, bb12
bb14:
  ADD s7, s3, zero
  ADD t4, s5, zero
  SW t4, 104(sp)
  JAL zero, bb10
bb15:
  ADD s8, s1, zero
  ADD s6, s0, zero
  ADD s2, t0, zero
  JAL zero, bb9
bb16:
  ADD s9, s1, zero
  ADD s10, s0, zero
  ADD s11, t0, zero
  JAL zero, bb7
bb17:
  ADD s4, s8, zero
  ADD t4, s6, zero
  SW t4, 88(sp)
  ADD t4, s2, zero
  SW t4, 72(sp)
  ADD t2, t1, zero
  JAL zero, bb6
bb18:
  ADD t4, s8, zero
  SW t4, 112(sp)
  ADD t4, s6, zero
  SW t4, 80(sp)
  ADD t4, s2, zero
  SW t4, 64(sp)
  ADD t4, t1, zero
  SW t4, 56(sp)
  JAL zero, bb4
bb19:
  JAL zero, bb3
bb20:
  ADD t4, s4, zero
  SW t4, 96(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  ADD t4, a1, zero
  SW t4, 0(sp)
  JAL zero, bb1
bb21:
  LW t4, 112(sp)
  ADD s4, t4, zero
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t4, 56(sp)
  ADD t2, t4, zero
  JAL zero, bb6
bb22:
  ADD s8, s9, zero
  ADD s6, s10, zero
  ADD s2, s11, zero
  JAL zero, bb9
bb23:
  ADD s1, s7, zero
  LW t4, 104(sp)
  ADD s0, t4, zero
  JAL zero, bb12
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
  BNE s5, zero, bb25
  JAL zero, bb26
bb25:
  ADDI s5, zero, 1
  JAL zero, bb27
bb26:
  SLT s6, s4, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  ADD s5, s6, zero
  JAL zero, bb27
bb27:
  BNE s5, zero, bb28
  JAL zero, bb29
bb28:
  ADDI s6, zero, 1
  JAL zero, bb30
bb29:
  SLT s7, s3, s1
  XORI s8, s7, 1
  XOR s7, s8, zero
  SLTU s8, zero, s7
  ADD s6, s8, zero
  JAL zero, bb30
bb30:
  BNE s6, zero, bb31
  JAL zero, bb32
bb31:
  ADDI s7, zero, 1
  JAL zero, bb33
bb32:
  SLT s8, s4, s2
  XORI s9, s8, 1
  XOR s8, s9, zero
  SLTU s9, zero, s8
  ADD s7, s9, zero
  JAL zero, bb33
bb33:
  BNE s7, zero, bb34
  JAL zero, bb35
bb34:
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
bb35:
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
  ADDI sp, sp, -80
  SD s8, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s7, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD ra, 72(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  XOR s3, s0, zero
  SLTIU s4, s3, 1
  BNE s4, zero, bb37
  JAL zero, bb38
bb37:
  ADDW s3, s1, s2
  ADD a0, s3, zero
  CALL checkrange
  ADD s3, a0, zero
  ADD a0, s3, zero
  LD s8, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD ra, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb38:
  XORI s3, s0, 1
  SLTIU s4, s3, 1
  BNE s4, zero, bb39
  JAL zero, bb40
bb39:
  ADDI s3, zero, 1
  ADD s4, zero, zero
  JAL zero, bb41
bb40:
  XORI s3, s0, 2
  SLTIU s4, s3, 1
  BNE s4, zero, bb47
  JAL zero, bb48
bb41:
  LA s5, max
  LW s6, 0(s5)
  SLT s5, s3, s6
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb42
  JAL zero, bb43
bb42:
  DIVW s5, s1, s3
  ADDI s6, zero, 2
  REMW s7, s5, s6
  DIVW s5, s2, s3
  ADDI s6, zero, 2
  REMW s8, s5, s6
  XOR s5, s7, s8
  SLTIU s6, s5, 1
  BNE s6, zero, bb44
  JAL zero, bb46
bb43:
  ADD a0, s4, zero
  LD s8, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD ra, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb44:
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s5, s6, zero
  JAL zero, bb45
bb45:
  ADDI s6, zero, 2
  MULW s7, s3, s6
  ADD s3, s7, zero
  ADD s4, s5, zero
  JAL zero, bb41
bb46:
  ADDI s6, zero, 2
  MULW s7, s4, s6
  ADDIW s6, s7, 1
  ADD s5, s6, zero
  JAL zero, bb45
bb47:
  SLT s3, s2, s1
  BNE s3, zero, bb49
  JAL zero, bb51
bb48:
  XORI s3, s0, 3
  SLTIU s4, s3, 1
  BNE s4, zero, bb52
  JAL zero, bb53
bb49:
  ADD a0, s1, zero
  LD s8, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD ra, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb50:
  JAL zero, bb48
bb51:
  ADD a0, s2, zero
  LD s8, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD ra, 72(sp)
  ADDI sp, sp, 80
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
  LA s5, max
  LW s6, 0(s5)
  SLT s5, s4, s6
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb55
  JAL zero, bb56
bb55:
  DIVW s5, s1, s4
  ADDI s6, zero, 2
  REMW s7, s5, s6
  XORI s5, s7, 1
  SLTIU s6, s5, 1
  BNE s6, zero, bb57
  JAL zero, bb58
bb56:
  ADD a0, s3, zero
  LD s8, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD ra, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb57:
  ADDI s5, zero, 1
  JAL zero, bb59
bb58:
  DIVW s6, s2, s4
  ADDI s7, zero, 2
  REMW s8, s6, s7
  XORI s6, s8, 1
  SLTIU s7, s6, 1
  XOR s6, s7, zero
  SLTU s7, zero, s6
  ADD s5, s7, zero
  JAL zero, bb59
bb59:
  BNE s5, zero, bb60
  JAL zero, bb62
bb60:
  ADDI s6, zero, 2
  MULW s7, s3, s6
  ADDIW s6, s7, 1
  ADD s7, s6, zero
  JAL zero, bb61
bb61:
  ADDI s6, zero, 2
  MULW s8, s4, s6
  ADD s3, s7, zero
  ADD s4, s8, zero
  JAL zero, bb54
bb62:
  ADDI s6, zero, 2
  MULW s8, s3, s6
  ADD s7, s8, zero
  JAL zero, bb61
bb63:
  ADDI s0, zero, 1
  ADD s3, zero, zero
  JAL zero, bb65
bb64:
  ADD a0, zero, zero
  LD s8, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD ra, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb65:
  LA s4, max
  LW s5, 0(s4)
  SLT s4, s0, s5
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb66
  JAL zero, bb67
bb66:
  DIVW s4, s1, s0
  ADDI s5, zero, 2
  REMW s6, s4, s5
  XORI s4, s6, 1
  SLTIU s5, s4, 1
  BNE s5, zero, bb68
  JAL zero, bb69
bb67:
  ADD a0, s3, zero
  LD s8, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD ra, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb68:
  DIVW s4, s2, s0
  ADDI s5, zero, 2
  REMW s6, s4, s5
  XORI s4, s6, 1
  SLTIU s5, s4, 1
  ADD s4, s5, zero
  JAL zero, bb70
bb69:
  ADD s4, zero, zero
  JAL zero, bb70
bb70:
  BNE s4, zero, bb71
  JAL zero, bb73
bb71:
  ADDI s5, zero, 2
  MULW s6, s3, s5
  ADDIW s5, s6, 1
  ADD s6, s5, zero
  JAL zero, bb72
bb72:
  ADDI s5, zero, 2
  MULW s7, s0, s5
  ADD s0, s7, zero
  ADD s3, s6, zero
  JAL zero, bb65
bb73:
  ADDI s5, zero, 2
  MULW s7, s3, s5
  ADD s6, s7, zero
  JAL zero, bb72
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
  JAL zero, bb75
bb75:
  SLT s5, s4, s3
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb76
  JAL zero, bb77
bb76:
  ADDI s5, zero, 4
  MULW s6, s4, s5
  LA s5, kernelid
  ADD s7, s5, s6
  LW s5, 0(s7)
  ADD a0, s5, zero
  LA s5, a
  ADD a1, s5, zero
  LA s5, b
  ADD a2, s5, zero
  ADD a3, s1, zero
  ADD a4, s2, zero
  ADD a5, s0, zero
  CALL convn
  ADD s5, a0, zero
  MULW s5, s1, s2
  LA s6, a
  ADD a0, s6, zero
  LA s6, b
  ADD a1, s6, zero
  ADD a2, s5, zero
  CALL memmove
  ADDIW s5, s4, 1
  ADD s4, s5, zero
  JAL zero, bb75
bb77:
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
memmove:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, zero, zero
  JAL zero, bb79
bb79:
  SLT s4, s3, s2
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb80
  JAL zero, bb81
bb80:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s4, s0, s5
  ADDI s5, zero, 4
  MULW s6, s3, s5
  ADD s5, s1, s6
  LW s6, 0(s5)
  SW s6, 0(s4)
  ADDIW s4, s3, 1
  ADD s3, s4, zero
  JAL zero, bb79
bb81:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
checkrange:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  ADD s1, s0, zero
  JAL zero, bb83
bb83:
  LA s0, max
  LW s2, 0(s0)
  SLT s0, s2, s1
  XOR s2, s0, zero
  SLTU s0, zero, s2
  BNE s0, zero, bb84
  JAL zero, bb85
bb84:
  LA s0, max
  LW s2, 0(s0)
  SUBW s0, s1, s2
  ADD s1, s0, zero
  JAL zero, bb83
bb85:
  ADD s0, s1, zero
  JAL zero, bb86
bb86:
  SLT s1, s0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb87
  JAL zero, bb88
bb87:
  LA s1, max
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADD s0, s1, zero
  JAL zero, bb86
bb88:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
