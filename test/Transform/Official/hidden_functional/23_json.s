.global detect_item
.global main
.global skip_space
.global is_number
.section .bss
buffer:
.space 200000000

.section .data

pos:
.word 0x00000000
.section .text
detect_item:
  ADDI sp, sp, -160
  SD s10, 56(sp)
  SD s9, 64(sp)
  SD s8, 72(sp)
  SD s0, 80(sp)
  SD s5, 88(sp)
  SD s7, 96(sp)
  SD s1, 104(sp)
  SD s6, 112(sp)
  SD s2, 120(sp)
  SD s3, 128(sp)
  SD s4, 136(sp)
  SD ra, 144(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb1
  JAL zero, bb2
bb1:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb2:
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL skip_space
  XOR s3, s0, zero
  SLTIU s4, s3, 1
  BNE s4, zero, bb3
  JAL zero, bb5
bb3:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 123
  SLTIU s4, s3, 1
  BNE s4, zero, bb6
  JAL zero, bb7
bb4:
  ADDI a0, zero, 1
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb5:
  XORI s3, s0, 1
  SLTIU s4, s3, 1
  BNE s4, zero, bb24
  JAL zero, bb26
bb6:
  ADDI a0, zero, 4
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  ADD a0, s3, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb7:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 91
  SLTIU s4, s3, 1
  BNE s4, zero, bb8
  JAL zero, bb9
bb8:
  ADDI a0, zero, 3
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  ADD a0, s3, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb9:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 34
  SLTIU s4, s3, 1
  BNE s4, zero, bb10
  JAL zero, bb11
bb10:
  ADDI a0, zero, 2
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  ADD a0, s3, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb11:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  ADD a0, s4, zero
  CALL is_number
  ADD s3, a0, zero
  XORI s4, s3, 1
  SLTIU s3, s4, 1
  BNE s3, zero, bb12
  JAL zero, bb13
bb12:
  ADDI a0, zero, 1
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  ADD a0, s3, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb13:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 43
  SLTIU s4, s3, 1
  BNE s4, zero, bb14
  JAL zero, bb15
bb14:
  ADDI a0, zero, 1
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  ADD a0, s3, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb15:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 45
  SLTIU s4, s3, 1
  BNE s4, zero, bb16
  JAL zero, bb17
bb16:
  ADDI a0, zero, 1
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  ADD a0, s3, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb17:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 116
  SLTIU s4, s3, 1
  BNE s4, zero, bb18
  JAL zero, bb19
bb18:
  ADDI a0, zero, 5
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  ADD a0, s3, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb19:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 102
  SLTIU s4, s3, 1
  BNE s4, zero, bb20
  JAL zero, bb21
bb20:
  ADDI a0, zero, 6
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  ADD a0, s3, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb21:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 110
  SLTIU s4, s3, 1
  BNE s4, zero, bb22
  JAL zero, bb23
bb22:
  ADDI a0, zero, 7
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  ADD a0, s3, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb23:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb24:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 43
  SLTIU s4, s3, 1
  BNE s4, zero, bb27
  JAL zero, bb29
bb25:
  JAL zero, bb4
bb26:
  XORI s3, s0, 2
  SLTIU s4, s3, 1
  BNE s4, zero, bb68
  JAL zero, bb70
bb27:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb28
bb28:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb32
  JAL zero, bb34
bb29:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 45
  SLTIU s4, s3, 1
  BNE s4, zero, bb30
  JAL zero, bb31
bb30:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb31
bb31:
  JAL zero, bb28
bb32:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb33:
  JAL zero, bb37
bb34:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  ADD a0, s4, zero
  CALL is_number
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb35
  JAL zero, bb36
bb35:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb36:
  JAL zero, bb33
bb37:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  BNE s3, zero, bb38
  JAL zero, bb39
bb38:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  ADD a0, s4, zero
  CALL is_number
  ADD s3, a0, zero
  XORI s4, s3, 1
  SLTU s3, zero, s4
  BNE s3, zero, bb40
  JAL zero, bb41
bb39:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  BNE s3, zero, bb42
  JAL zero, bb43
bb40:
  JAL zero, bb39
bb41:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb37
bb42:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 46
  SLTIU s4, s3, 1
  BNE s4, zero, bb44
  JAL zero, bb45
bb43:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  BNE s3, zero, bb51
  JAL zero, bb52
bb44:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb46
bb45:
  JAL zero, bb43
bb46:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  BNE s3, zero, bb47
  JAL zero, bb48
bb47:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  ADD a0, s4, zero
  CALL is_number
  ADD s3, a0, zero
  XORI s4, s3, 1
  SLTU s3, zero, s4
  BNE s3, zero, bb49
  JAL zero, bb50
bb48:
  JAL zero, bb45
bb49:
  JAL zero, bb48
bb50:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb46
bb51:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 101
  SLTIU s4, s3, 1
  BNE s4, zero, bb53
  JAL zero, bb54
bb52:
  JAL zero, bb25
bb53:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  SLT s4, s3, s2
  BNE s4, zero, bb55
  JAL zero, bb56
bb54:
  JAL zero, bb52
bb55:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 43
  SLTIU s4, s3, 1
  BNE s4, zero, bb57
  JAL zero, bb58
bb56:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  BNE s3, zero, bb59
  JAL zero, bb60
bb57:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb58
bb58:
  JAL zero, bb56
bb59:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 45
  SLTIU s4, s3, 1
  BNE s4, zero, bb61
  JAL zero, bb62
bb60:
  JAL zero, bb63
bb61:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb62
bb62:
  JAL zero, bb60
bb63:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  BNE s3, zero, bb64
  JAL zero, bb65
bb64:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  ADD a0, s4, zero
  CALL is_number
  ADD s3, a0, zero
  XORI s4, s3, 1
  SLTU s3, zero, s4
  BNE s3, zero, bb66
  JAL zero, bb67
bb65:
  JAL zero, bb54
bb66:
  JAL zero, bb65
bb67:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb63
bb68:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb71
bb69:
  JAL zero, bb25
bb70:
  XORI s3, s0, 3
  SLTIU s4, s3, 1
  BNE s4, zero, bb83
  JAL zero, bb85
bb71:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  BNE s3, zero, bb72
  JAL zero, bb73
bb72:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 34
  SLTIU s4, s3, 1
  BNE s4, zero, bb74
  JAL zero, bb75
bb73:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb79
  JAL zero, bb80
bb74:
  JAL zero, bb73
bb75:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 92
  SLTIU s4, s3, 1
  BNE s4, zero, bb76
  JAL zero, bb78
bb76:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 2
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb77
bb77:
  JAL zero, bb71
bb78:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb77
bb79:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb80:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 34
  SLTU s4, zero, s3
  BNE s4, zero, bb81
  JAL zero, bb82
bb81:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb82:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb69
bb83:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL skip_space
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  BNE s3, zero, bb86
  JAL zero, bb87
bb84:
  JAL zero, bb69
bb85:
  XORI s3, s0, 4
  SLTIU s4, s3, 1
  BNE s4, zero, bb101
  JAL zero, bb103
bb86:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 93
  SLTIU s4, s3, 1
  BNE s4, zero, bb88
  JAL zero, bb89
bb87:
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb90
  JAL zero, bb91
bb88:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  ADDI a0, zero, 1
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb89:
  JAL zero, bb87
bb90:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb91:
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL skip_space
  JAL zero, bb92
bb92:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 44
  SLTIU s4, s3, 1
  BNE s4, zero, bb93
  JAL zero, bb94
bb93:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL skip_space
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb95
  JAL zero, bb96
bb94:
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL skip_space
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb97
  JAL zero, bb98
bb95:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb96:
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL skip_space
  JAL zero, bb92
bb97:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb98:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 93
  SLTU s4, zero, s3
  BNE s4, zero, bb99
  JAL zero, bb100
bb99:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb100:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb84
bb101:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL skip_space
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  BNE s3, zero, bb104
  JAL zero, bb105
bb102:
  JAL zero, bb84
bb103:
  XORI s3, s0, 5
  SLTIU s4, s3, 1
  BNE s4, zero, bb131
  JAL zero, bb133
bb104:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 125
  SLTIU s4, s3, 1
  BNE s4, zero, bb106
  JAL zero, bb107
bb105:
  ADDI a0, zero, 2
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb108
  JAL zero, bb109
bb106:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  ADDI a0, zero, 1
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb107:
  JAL zero, bb105
bb108:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb109:
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL skip_space
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb110
  JAL zero, bb111
bb110:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb111:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 58
  SLTU s4, zero, s3
  BNE s4, zero, bb112
  JAL zero, bb113
bb112:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb113:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL skip_space
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb114
  JAL zero, bb115
bb114:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb115:
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL skip_space
  JAL zero, bb116
bb116:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 44
  SLTIU s4, s3, 1
  BNE s4, zero, bb117
  JAL zero, bb118
bb117:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL skip_space
  ADDI a0, zero, 2
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb119
  JAL zero, bb120
bb118:
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL skip_space
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb127
  JAL zero, bb128
bb119:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb120:
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL skip_space
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb121
  JAL zero, bb122
bb121:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb122:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 58
  SLTU s4, zero, s3
  BNE s4, zero, bb123
  JAL zero, bb124
bb123:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb124:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL skip_space
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb125
  JAL zero, bb126
bb125:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb126:
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL skip_space
  JAL zero, bb116
bb127:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb128:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 125
  SLTU s4, zero, s3
  BNE s4, zero, bb129
  JAL zero, bb130
bb129:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb130:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb102
bb131:
  ADDI t5, sp, 40
  ADD s3, t5, zero
  ADDI s4, zero, 116
  SW s4, 0(s3)
  ADDI s4, sp, 44
  ADDI s5, zero, 114
  SW s5, 0(s4)
  ADDI s5, sp, 48
  ADDI s6, zero, 117
  SW s6, 0(s5)
  ADDI s6, sp, 52
  ADDI s7, zero, 101
  SW s7, 0(s6)
  LA s7, pos
  LW s8, 0(s7)
  ADDIW s7, s8, 3
  SLT s8, s7, s2
  XORI s7, s8, 1
  BNE s7, zero, bb134
  JAL zero, bb135
bb132:
  JAL zero, bb102
bb133:
  XORI s3, s0, 6
  SLTIU s4, s3, 1
  BNE s4, zero, bb144
  JAL zero, bb146
bb134:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb135:
  LA s7, pos
  LW s8, 0(s7)
  ADDI s7, zero, 4
  MULW s9, s8, s7
  ADD s7, s1, s9
  LW s8, 0(s7)
  LW s7, 0(s3)
  XOR s3, s8, s7
  SLTU s7, zero, s3
  BNE s7, zero, bb136
  JAL zero, bb137
bb136:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb137:
  LA s3, pos
  LW s7, 0(s3)
  ADDIW s3, s7, 1
  ADDI s7, zero, 4
  MULW s8, s3, s7
  ADD s3, s1, s8
  LW s7, 0(s3)
  LW s3, 0(s4)
  XOR s4, s7, s3
  SLTU s3, zero, s4
  BNE s3, zero, bb138
  JAL zero, bb139
bb138:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb139:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 2
  ADDI s4, zero, 4
  MULW s7, s3, s4
  ADD s3, s1, s7
  LW s4, 0(s3)
  LW s3, 0(s5)
  XOR s5, s4, s3
  SLTU s3, zero, s5
  BNE s3, zero, bb140
  JAL zero, bb141
bb140:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb141:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 3
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s1, s5
  LW s4, 0(s3)
  LW s3, 0(s6)
  XOR s5, s4, s3
  SLTU s3, zero, s5
  BNE s3, zero, bb142
  JAL zero, bb143
bb142:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb143:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 4
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb132
bb144:
  ADDI t6, sp, 16
  ADD s3, t6, zero
  ADDI s4, zero, 102
  SW s4, 0(s3)
  ADDI s4, sp, 20
  ADDI s5, zero, 97
  SW s5, 0(s4)
  ADDI s5, sp, 24
  ADDI s6, zero, 108
  SW s6, 0(s5)
  ADDI s6, sp, 28
  ADDI s7, zero, 115
  SW s7, 0(s6)
  ADDI s7, sp, 32
  ADDI s8, zero, 101
  SW s8, 0(s7)
  LA s8, pos
  LW s9, 0(s8)
  ADDIW s8, s9, 4
  SLT s9, s8, s2
  XORI s8, s9, 1
  BNE s8, zero, bb147
  JAL zero, bb148
bb145:
  JAL zero, bb132
bb146:
  XORI s3, s0, 7
  SLTIU s0, s3, 1
  BNE s0, zero, bb159
  JAL zero, bb160
bb147:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb148:
  LA s8, pos
  LW s9, 0(s8)
  ADDI s8, zero, 4
  MULW s10, s9, s8
  ADD s8, s1, s10
  LW s9, 0(s8)
  LW s8, 0(s3)
  XOR s3, s9, s8
  SLTU s8, zero, s3
  BNE s8, zero, bb149
  JAL zero, bb150
bb149:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb150:
  LA s3, pos
  LW s8, 0(s3)
  ADDIW s3, s8, 1
  ADDI s8, zero, 4
  MULW s9, s3, s8
  ADD s3, s1, s9
  LW s8, 0(s3)
  LW s3, 0(s4)
  XOR s4, s8, s3
  SLTU s3, zero, s4
  BNE s3, zero, bb151
  JAL zero, bb152
bb151:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb152:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 2
  ADDI s4, zero, 4
  MULW s8, s3, s4
  ADD s3, s1, s8
  LW s4, 0(s3)
  LW s3, 0(s5)
  XOR s5, s4, s3
  SLTU s3, zero, s5
  BNE s3, zero, bb153
  JAL zero, bb154
bb153:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb154:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 3
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s1, s5
  LW s4, 0(s3)
  LW s3, 0(s6)
  XOR s5, s4, s3
  SLTU s3, zero, s5
  BNE s3, zero, bb155
  JAL zero, bb156
bb155:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb156:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 4
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s1, s5
  LW s4, 0(s3)
  LW s3, 0(s7)
  XOR s5, s4, s3
  SLTU s3, zero, s5
  BNE s3, zero, bb157
  JAL zero, bb158
bb157:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb158:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 5
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb145
bb159:
  ADDI t5, sp, 0
  ADD s0, t5, zero
  ADDI s3, zero, 110
  SW s3, 0(s0)
  ADDI s3, sp, 4
  ADDI s4, zero, 117
  SW s4, 0(s3)
  ADDI s4, sp, 8
  ADDI s5, zero, 108
  SW s5, 0(s4)
  ADDI s5, sp, 12
  ADDI s6, zero, 108
  SW s6, 0(s5)
  LA s6, pos
  LW s7, 0(s6)
  ADDIW s6, s7, 3
  SLT s7, s6, s2
  XORI s2, s7, 1
  BNE s2, zero, bb161
  JAL zero, bb162
bb160:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb161:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb162:
  LA s2, pos
  LW s6, 0(s2)
  ADDI s2, zero, 4
  MULW s7, s6, s2
  ADD s2, s1, s7
  LW s6, 0(s2)
  LW s2, 0(s0)
  XOR s0, s6, s2
  SLTU s2, zero, s0
  BNE s2, zero, bb163
  JAL zero, bb164
bb163:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb164:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 1
  ADDI s2, zero, 4
  MULW s6, s0, s2
  ADD s0, s1, s6
  LW s2, 0(s0)
  LW s0, 0(s3)
  XOR s3, s2, s0
  SLTU s0, zero, s3
  BNE s0, zero, bb165
  JAL zero, bb166
bb165:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb166:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 2
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s2, 0(s0)
  LW s0, 0(s4)
  XOR s3, s2, s0
  SLTU s0, zero, s3
  BNE s0, zero, bb167
  JAL zero, bb168
bb167:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb168:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 3
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(s0)
  LW s0, 0(s5)
  XOR s2, s1, s0
  SLTU s0, zero, s2
  BNE s0, zero, bb169
  JAL zero, bb170
bb169:
  ADD a0, zero, zero
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb170:
  LA s0, pos
  LW s1, 0(s0)
  ADDIW s0, s1, 4
  LA s1, pos
  SW s0, 0(s1)
  JAL zero, bb145
main:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb172
bb172:
  ADD s0, s2, zero
  ADD s3, s1, zero
  XORI s4, s0, 35
  SLTU s5, zero, s4
  BNE s5, zero, bb173
  JAL zero, bb174
bb173:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LA s4, buffer
  ADD s6, s4, s5
  SW s0, 0(s6)
  ADDIW s0, s3, 1
  CALL getch
  ADD s4, a0, zero
  ADD s1, s0, zero
  ADD s2, s4, zero
  JAL zero, bb172
bb174:
  LA s0, buffer
  ADD a0, s0, zero
  ADD a1, s3, zero
  CALL skip_space
  ADD a0, zero, zero
  LA s0, buffer
  ADD a1, s0, zero
  ADD a2, s3, zero
  CALL detect_item
  ADD s0, a0, zero
  LA s1, buffer
  ADD a0, s1, zero
  ADD a1, s3, zero
  CALL skip_space
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb175
  JAL zero, bb176
bb175:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
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
bb176:
  ADDI a0, zero, 110
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 116
  CALL putch
  ADDI a0, zero, 32
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 1
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
skip_space:
  ADDI sp, sp, -48
  SD s4, 0(sp)
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  JAL zero, bb178
bb178:
  LA s2, pos
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb180
  JAL zero, bb181
bb179:
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb180:
  JAL zero, bb179
bb181:
  LA s2, pos
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  ADD s2, s0, s4
  LW s3, 0(s2)
  XORI s2, s3, 32
  SLTIU s3, s2, 1
  BNE s3, zero, bb182
  JAL zero, bb184
bb182:
  LA s2, pos
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, pos
  SW s2, 0(s3)
  JAL zero, bb183
bb183:
  JAL zero, bb178
bb184:
  LA s2, pos
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  ADD s2, s0, s4
  LW s3, 0(s2)
  XORI s2, s3, 9
  SLTIU s3, s2, 1
  BNE s3, zero, bb185
  JAL zero, bb187
bb185:
  LA s2, pos
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, pos
  SW s2, 0(s3)
  JAL zero, bb186
bb186:
  JAL zero, bb183
bb187:
  LA s2, pos
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  ADD s2, s0, s4
  LW s3, 0(s2)
  XORI s2, s3, 10
  SLTIU s3, s2, 1
  BNE s3, zero, bb188
  JAL zero, bb190
bb188:
  LA s2, pos
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, pos
  SW s2, 0(s3)
  JAL zero, bb189
bb189:
  JAL zero, bb186
bb190:
  LA s2, pos
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  ADD s2, s0, s4
  LW s3, 0(s2)
  XORI s2, s3, 13
  SLTIU s3, s2, 1
  BNE s3, zero, bb191
  JAL zero, bb192
bb191:
  LA s2, pos
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, pos
  SW s2, 0(s3)
  JAL zero, bb189
bb192:
  JAL zero, bb179
is_number:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  SLTI s1, s0, 48
  XORI s2, s1, 1
  BNE s2, zero, bb194
  JAL zero, bb195
bb194:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XORI s0, s2, 1
  BNE s0, zero, bb196
  JAL zero, bb197
bb195:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb196:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb197:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
