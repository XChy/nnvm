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
  ADDI sp, sp, -288
  SD s4, 176(sp)
  SD s3, 184(sp)
  SD s0, 192(sp)
  SD s1, 200(sp)
  SD s2, 208(sp)
  SD s5, 216(sp)
  SD s10, 224(sp)
  SD ra, 232(sp)
  SD s7, 240(sp)
  SD s8, 248(sp)
  SD s9, 256(sp)
  SD s11, 264(sp)
  SD s6, 272(sp)
  ADD t4, a0, zero
  SW t4, 72(sp)
  ADD t4, a1, zero
  SD t4, 64(sp)
  ADD t4, a2, zero
  SD t4, 56(sp)
  ADD t4, a3, zero
  SW t4, 40(sp)
  ADD t4, a4, zero
  SW t4, 32(sp)
  ADD t4, a5, zero
  SW t4, 16(sp)
  ADD s6, zero, zero
  ADD s7, zero, zero
  ADD s8, zero, zero
  ADD s9, zero, zero
  JAL zero, bb1
bb1:
  ADD t4, s9, zero
  SW t4, 8(sp)
  ADD s11, s8, zero
  ADD ra, s7, zero
  ADD t0, s6, zero
  JAL zero, bb2
bb2:
  ADD t4, t0, zero
  SW t4, 160(sp)
  ADD t4, ra, zero
  SW t4, 144(sp)
  ADD t4, s11, zero
  SW t4, 152(sp)
  ADD t4, zero, zero
  SW t4, 168(sp)
  JAL zero, bb4
bb3:
  ADD a0, zero, zero
  LD s4, 176(sp)
  LD s3, 184(sp)
  LD s0, 192(sp)
  LD s1, 200(sp)
  LD s2, 208(sp)
  LD s5, 216(sp)
  LD s10, 224(sp)
  LD ra, 232(sp)
  LD s7, 240(sp)
  LD s8, 248(sp)
  LD s9, 256(sp)
  LD s11, 264(sp)
  LD s6, 272(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb4:
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 152(sp)
  ADD a6, t4, zero
  LW t4, 144(sp)
  ADD a7, t4, zero
  LW t4, 160(sp)
  ADD t2, t4, zero
  ADD s10, t2, zero
  ADD t4, a7, zero
  SW t4, 136(sp)
  ADD s5, a6, zero
  JAL zero, bb5
bb5:
  ADDI a6, zero, 2
  LW t3, 16(sp)
  DIVW t4, t3, a6
  SW t4, 24(sp)
  LW t4, 8(sp)
  LW t3, 24(sp)
  SUBW a6, t4, t3
  ADD t4, zero, zero
  SW t4, 112(sp)
  ADD t4, a7, zero
  SW t4, 104(sp)
  ADD t4, a6, zero
  SW t4, 80(sp)
  JAL zero, bb7
bb6:
  ADD a1, s5, zero
  LW t4, 136(sp)
  ADD s5, t4, zero
  ADD a2, s10, zero
  LW t4, 8(sp)
  ADDIW s10, t4, 1
  LW t4, 40(sp)
  SLT a3, s10, t4
  XORI a4, a3, 1
  BNE a4, zero, bb19
  JAL zero, bb20
bb7:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t4, 104(sp)
  ADD a6, t4, zero
  LW t4, 112(sp)
  ADD s2, t4, zero
  ADD s1, s2, zero
  ADD s0, a6, zero
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  JAL zero, bb8
bb8:
  LW t4, 0(sp)
  LW t3, 24(sp)
  SUBW a7, t4, t3
  ADD t4, s2, zero
  SW t4, 88(sp)
  ADD t4, a7, zero
  SW t4, 96(sp)
  JAL zero, bb10
bb9:
  LW t4, 128(sp)
  ADD t1, t4, zero
  ADD t2, s0, zero
  ADD s0, s1, zero
  LW t4, 8(sp)
  LW t3, 32(sp)
  MULW s1, t4, t3
  LW t4, 0(sp)
  ADDW a1, s1, t4
  ADDI s1, zero, 4
  MULW a2, a1, s1
  LD t4, 56(sp)
  ADD s1, t4, a2
  SW s0, 0(s1)
  LW t4, 0(sp)
  ADDIW s1, t4, 1
  LW t4, 32(sp)
  SLT a1, s1, t4
  XORI a2, a1, 1
  BNE a2, zero, bb17
  JAL zero, bb18
bb10:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t4, 88(sp)
  ADD s2, t4, zero
  ADD s3, s2, zero
  LW t4, 120(sp)
  ADD s4, t4, zero
  JAL zero, bb11
bb11:
  LD t4, 64(sp)
  ADD a0, t4, zero
  LW t4, 40(sp)
  ADD a1, t4, zero
  LW t4, 32(sp)
  ADD a2, t4, zero
  LW t4, 48(sp)
  ADD a3, t4, zero
  LW t4, 120(sp)
  ADD a4, t4, zero
  CALL getvalue
  ADD s11, a0, zero
  LW t4, 72(sp)
  ADD a0, t4, zero
  ADD a1, s2, zero
  ADD a2, s11, zero
  CALL reduce
  ADD s2, a0, zero
  LW t4, 120(sp)
  ADDIW s11, t4, 1
  LW t4, 0(sp)
  LW t3, 24(sp)
  ADDW t0, t4, t3
  SLT t1, s11, t0
  XORI t0, t1, 1
  BNE t0, zero, bb13
  JAL zero, bb14
bb12:
  ADD t0, s4, zero
  ADD s4, s3, zero
  LW t4, 48(sp)
  ADDIW s3, t4, 1
  LW t4, 8(sp)
  LW t3, 24(sp)
  ADDW t1, t4, t3
  SLT t2, s3, t1
  XORI t1, t2, 1
  BNE t1, zero, bb15
  JAL zero, bb16
bb13:
  ADD s3, s2, zero
  ADD s4, s11, zero
  JAL zero, bb12
bb14:
  ADD t4, s2, zero
  SW t4, 88(sp)
  ADD t4, s11, zero
  SW t4, 96(sp)
  JAL zero, bb10
bb15:
  ADD s1, s4, zero
  ADD s0, t0, zero
  ADD t4, s3, zero
  SW t4, 128(sp)
  JAL zero, bb9
bb16:
  ADD t4, s4, zero
  SW t4, 112(sp)
  ADD t4, t0, zero
  SW t4, 104(sp)
  ADD t4, s3, zero
  SW t4, 80(sp)
  JAL zero, bb7
bb17:
  ADD s10, s0, zero
  ADD t4, t2, zero
  SW t4, 136(sp)
  ADD s5, t1, zero
  JAL zero, bb6
bb18:
  ADD t4, s0, zero
  SW t4, 160(sp)
  ADD t4, t2, zero
  SW t4, 144(sp)
  ADD t4, t1, zero
  SW t4, 152(sp)
  ADD t4, s1, zero
  SW t4, 168(sp)
  JAL zero, bb4
bb19:
  JAL zero, bb3
bb20:
  ADD s6, a2, zero
  ADD s7, s5, zero
  ADD s8, a1, zero
  ADD s9, s10, zero
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
  BNE s5, zero, bb22
  JAL zero, bb23
bb22:
  ADDI s5, zero, 1
  JAL zero, bb24
bb23:
  SLT s6, s4, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  ADD s5, s6, zero
  JAL zero, bb24
bb24:
  ADD s6, s5, zero
  BNE s6, zero, bb25
  JAL zero, bb26
bb25:
  ADDI s6, zero, 1
  JAL zero, bb27
bb26:
  SLT s7, s3, s1
  XORI s8, s7, 1
  XOR s7, s8, zero
  SLTU s8, zero, s7
  ADD s6, s8, zero
  JAL zero, bb27
bb27:
  ADD s7, s6, zero
  BNE s7, zero, bb28
  JAL zero, bb29
bb28:
  ADDI s7, zero, 1
  JAL zero, bb30
bb29:
  SLT s8, s4, s2
  XORI s9, s8, 1
  XOR s8, s9, zero
  SLTU s9, zero, s8
  ADD s7, s9, zero
  JAL zero, bb30
bb30:
  ADD s8, s7, zero
  BNE s8, zero, bb31
  JAL zero, bb32
bb31:
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
bb32:
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
  BNE s4, zero, bb34
  JAL zero, bb35
bb34:
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
bb35:
  XORI s3, s0, 1
  SLTIU s4, s3, 1
  BNE s4, zero, bb36
  JAL zero, bb37
bb36:
  ADDI s3, zero, 1
  ADD s4, zero, zero
  JAL zero, bb38
bb37:
  XORI s3, s0, 2
  SLTIU s4, s3, 1
  BNE s4, zero, bb44
  JAL zero, bb45
bb38:
  ADD s5, s4, zero
  ADD s6, s3, zero
  LA s7, max
  LW s8, 0(s7)
  SLT s7, s6, s8
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb39
  JAL zero, bb40
bb39:
  DIVW s7, s1, s6
  ADDI s8, zero, 2
  REMW s9, s7, s8
  DIVW s7, s2, s6
  ADDI s8, zero, 2
  REMW s10, s7, s8
  XOR s7, s9, s10
  SLTIU s8, s7, 1
  BNE s8, zero, bb41
  JAL zero, bb43
bb40:
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
bb41:
  ADDI s7, zero, 2
  MULW s8, s5, s7
  ADD s7, s8, zero
  JAL zero, bb42
bb42:
  ADD s8, s7, zero
  ADDI s9, zero, 2
  MULW s10, s6, s9
  ADD s3, s10, zero
  ADD s4, s8, zero
  JAL zero, bb38
bb43:
  ADDI s3, zero, 2
  MULW s4, s5, s3
  ADDIW s3, s4, 1
  ADD s7, s3, zero
  JAL zero, bb42
bb44:
  SLT s3, s2, s1
  BNE s3, zero, bb46
  JAL zero, bb47
bb45:
  XORI s3, s0, 3
  SLTIU s4, s3, 1
  BNE s4, zero, bb48
  JAL zero, bb49
bb46:
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
bb47:
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
bb48:
  ADD s3, zero, zero
  ADDI s4, zero, 1
  JAL zero, bb50
bb49:
  XORI s3, s0, 4
  SLTIU s0, s3, 1
  BNE s0, zero, bb59
  JAL zero, bb60
bb50:
  ADD s5, s4, zero
  ADD s6, s3, zero
  LA s7, max
  LW s8, 0(s7)
  SLT s7, s5, s8
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb51
  JAL zero, bb52
bb51:
  DIVW s7, s1, s5
  ADDI s8, zero, 2
  REMW s9, s7, s8
  XORI s7, s9, 1
  SLTIU s8, s7, 1
  BNE s8, zero, bb53
  JAL zero, bb54
bb52:
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
bb53:
  ADDI s7, zero, 1
  JAL zero, bb55
bb54:
  DIVW s3, s2, s5
  ADDI s4, zero, 2
  REMW s8, s3, s4
  XORI s3, s8, 1
  SLTIU s4, s3, 1
  XOR s3, s4, zero
  SLTU s4, zero, s3
  ADD s7, s4, zero
  JAL zero, bb55
bb55:
  ADD s8, s7, zero
  BNE s8, zero, bb56
  JAL zero, bb58
bb56:
  ADDI s8, zero, 2
  MULW s9, s6, s8
  ADDIW s8, s9, 1
  ADD s9, s8, zero
  JAL zero, bb57
bb57:
  ADD s8, s9, zero
  ADDI s10, zero, 2
  MULW s11, s5, s10
  ADD s3, s8, zero
  ADD s4, s11, zero
  JAL zero, bb50
bb58:
  ADDI s3, zero, 2
  MULW s4, s6, s3
  ADD s9, s4, zero
  JAL zero, bb57
bb59:
  ADDI s0, zero, 1
  ADD s3, zero, zero
  JAL zero, bb61
bb60:
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
bb61:
  ADD s4, s3, zero
  ADD s5, s0, zero
  LA s6, max
  LW s7, 0(s6)
  SLT s6, s5, s7
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb62
  JAL zero, bb63
bb62:
  DIVW s6, s1, s5
  ADDI s7, zero, 2
  REMW s8, s6, s7
  XORI s6, s8, 1
  SLTIU s7, s6, 1
  BNE s7, zero, bb64
  JAL zero, bb65
bb63:
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
bb64:
  DIVW s6, s2, s5
  ADDI s7, zero, 2
  REMW s8, s6, s7
  XORI s6, s8, 1
  SLTIU s7, s6, 1
  ADD s6, s7, zero
  JAL zero, bb66
bb65:
  ADD s6, zero, zero
  JAL zero, bb66
bb66:
  ADD s7, s6, zero
  BNE s7, zero, bb67
  JAL zero, bb69
bb67:
  ADDI s7, zero, 2
  MULW s8, s4, s7
  ADDIW s7, s8, 1
  ADD s8, s7, zero
  JAL zero, bb68
bb68:
  ADD s7, s8, zero
  ADDI s9, zero, 2
  MULW s10, s5, s9
  ADD s0, s10, zero
  ADD s3, s7, zero
  JAL zero, bb61
bb69:
  ADDI s0, zero, 2
  MULW s3, s4, s0
  ADD s8, s3, zero
  JAL zero, bb68
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
  JAL zero, bb71
bb71:
  ADD s5, s4, zero
  SLT s6, s5, s3
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb72
  JAL zero, bb73
bb72:
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
  JAL zero, bb71
bb73:
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
  JAL zero, bb75
bb75:
  ADD s4, s3, zero
  SLT s5, s4, s2
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb76
  JAL zero, bb77
bb76:
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s5, s0, s6
  ADD s7, s1, s6
  LW s6, 0(s7)
  SW s6, 0(s5)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb75
bb77:
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
  JAL zero, bb79
bb79:
  ADD s0, s1, zero
  LA s2, max
  LW s3, 0(s2)
  SLT s2, s3, s0
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb80
  JAL zero, bb81
bb80:
  LA s2, max
  LW s3, 0(s2)
  SUBW s2, s0, s3
  ADD s1, s2, zero
  JAL zero, bb79
bb81:
  ADD s1, s0, zero
  JAL zero, bb82
bb82:
  ADD s0, s1, zero
  SLT s2, s0, zero
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb83
  JAL zero, bb84
bb83:
  LA s2, max
  LW s3, 0(s2)
  ADDW s2, s0, s3
  ADD s1, s2, zero
  JAL zero, bb82
bb84:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
