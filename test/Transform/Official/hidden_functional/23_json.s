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
  ADDI sp, sp, -128
  SD ra, 56(sp)
  SD s4, 64(sp)
  SD s3, 72(sp)
  SD s2, 80(sp)
  SD s6, 88(sp)
  SD s1, 96(sp)
  SD s5, 104(sp)
  SD s0, 112(sp)
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
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
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
  JAL zero, bb8
bb4:
  ADDI a0, zero, 1
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb5:
  XORI s3, s0, 1
  SLTIU s4, s3, 1
  BNE s4, zero, bb33
  JAL zero, bb35
bb6:
  ADDI a0, zero, 4
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  ADD a0, s3, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb7:
  JAL zero, bb4
bb8:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 91
  SLTIU s4, s3, 1
  BNE s4, zero, bb9
  JAL zero, bb11
bb9:
  ADDI a0, zero, 3
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  ADD a0, s3, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb10:
  JAL zero, bb7
bb11:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 34
  SLTIU s4, s3, 1
  BNE s4, zero, bb12
  JAL zero, bb14
bb12:
  ADDI a0, zero, 2
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  ADD a0, s3, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb13:
  JAL zero, bb10
bb14:
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
  BNE s3, zero, bb15
  JAL zero, bb17
bb15:
  ADDI a0, zero, 1
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  ADD a0, s3, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb16:
  JAL zero, bb13
bb17:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 43
  SLTIU s4, s3, 1
  BNE s4, zero, bb18
  JAL zero, bb20
bb18:
  ADDI a0, zero, 1
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  ADD a0, s3, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb19:
  JAL zero, bb16
bb20:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 45
  SLTIU s4, s3, 1
  BNE s4, zero, bb21
  JAL zero, bb23
bb21:
  ADDI a0, zero, 1
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  ADD a0, s3, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb22:
  JAL zero, bb19
bb23:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 116
  SLTIU s4, s3, 1
  BNE s4, zero, bb24
  JAL zero, bb26
bb24:
  ADDI a0, zero, 5
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  ADD a0, s3, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb25:
  JAL zero, bb22
bb26:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 102
  SLTIU s4, s3, 1
  BNE s4, zero, bb27
  JAL zero, bb29
bb27:
  ADDI a0, zero, 6
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  ADD a0, s3, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb28:
  JAL zero, bb25
bb29:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 110
  SLTIU s4, s3, 1
  BNE s4, zero, bb30
  JAL zero, bb32
bb30:
  ADDI a0, zero, 7
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  ADD a0, s3, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb31:
  JAL zero, bb28
bb32:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb33:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 43
  SLTIU s4, s3, 1
  BNE s4, zero, bb36
  JAL zero, bb38
bb34:
  JAL zero, bb4
bb35:
  XORI s3, s0, 2
  SLTIU s4, s3, 1
  BNE s4, zero, bb77
  JAL zero, bb79
bb36:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb37
bb37:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb41
  JAL zero, bb43
bb38:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 45
  SLTIU s4, s3, 1
  BNE s4, zero, bb39
  JAL zero, bb40
bb39:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb40
bb40:
  JAL zero, bb37
bb41:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb42:
  JAL zero, bb46
bb43:
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
  BNE s3, zero, bb44
  JAL zero, bb45
bb44:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb45:
  JAL zero, bb42
bb46:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XOR s4, s3, zero
  SLTU s3, zero, s4
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
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  BNE s3, zero, bb51
  JAL zero, bb52
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
  XORI s3, s4, 46
  SLTIU s4, s3, 1
  BNE s4, zero, bb53
  JAL zero, bb54
bb52:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  BNE s3, zero, bb60
  JAL zero, bb61
bb53:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb55
bb54:
  JAL zero, bb52
bb55:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb56
  JAL zero, bb57
bb56:
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
  BNE s3, zero, bb58
  JAL zero, bb59
bb57:
  JAL zero, bb54
bb58:
  JAL zero, bb57
bb59:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb55
bb60:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 101
  SLTIU s4, s3, 1
  BNE s4, zero, bb62
  JAL zero, bb63
bb61:
  JAL zero, bb34
bb62:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  SLT s4, s3, s2
  BNE s4, zero, bb64
  JAL zero, bb65
bb63:
  JAL zero, bb61
bb64:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 43
  SLTIU s4, s3, 1
  BNE s4, zero, bb66
  JAL zero, bb67
bb65:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  BNE s3, zero, bb68
  JAL zero, bb69
bb66:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb67
bb67:
  JAL zero, bb65
bb68:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 45
  SLTIU s4, s3, 1
  BNE s4, zero, bb70
  JAL zero, bb71
bb69:
  JAL zero, bb72
bb70:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb71
bb71:
  JAL zero, bb69
bb72:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb73
  JAL zero, bb74
bb73:
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
  BNE s3, zero, bb75
  JAL zero, bb76
bb74:
  JAL zero, bb63
bb75:
  JAL zero, bb74
bb76:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb72
bb77:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb80
bb78:
  JAL zero, bb34
bb79:
  XORI s3, s0, 3
  SLTIU s4, s3, 1
  BNE s4, zero, bb93
  JAL zero, bb95
bb80:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb81
  JAL zero, bb82
bb81:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 34
  SLTIU s4, s3, 1
  BNE s4, zero, bb83
  JAL zero, bb84
bb82:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb88
  JAL zero, bb90
bb83:
  JAL zero, bb82
bb84:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 92
  SLTIU s4, s3, 1
  BNE s4, zero, bb85
  JAL zero, bb87
bb85:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 2
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb86
bb86:
  JAL zero, bb80
bb87:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb86
bb88:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb89:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb78
bb90:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 34
  SLTU s4, zero, s3
  BNE s4, zero, bb91
  JAL zero, bb92
bb91:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb92:
  JAL zero, bb89
bb93:
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
  BNE s3, zero, bb96
  JAL zero, bb97
bb94:
  JAL zero, bb78
bb95:
  XORI s3, s0, 4
  SLTIU s4, s3, 1
  BNE s4, zero, bb111
  JAL zero, bb113
bb96:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 93
  SLTIU s4, s3, 1
  BNE s4, zero, bb98
  JAL zero, bb99
bb97:
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb100
  JAL zero, bb101
bb98:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  ADDI a0, zero, 1
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb99:
  JAL zero, bb97
bb100:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb101:
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL skip_space
  JAL zero, bb102
bb102:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 44
  SLTIU s4, s3, 1
  XOR s3, s4, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb103
  JAL zero, bb104
bb103:
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
  BNE s3, zero, bb105
  JAL zero, bb106
bb104:
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL skip_space
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb107
  JAL zero, bb108
bb105:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb106:
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL skip_space
  JAL zero, bb102
bb107:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb108:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 93
  SLTU s4, zero, s3
  BNE s4, zero, bb109
  JAL zero, bb110
bb109:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb110:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb94
bb111:
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
  BNE s3, zero, bb114
  JAL zero, bb115
bb112:
  JAL zero, bb94
bb113:
  XORI s3, s0, 5
  SLTIU s4, s3, 1
  BNE s4, zero, bb142
  JAL zero, bb144
bb114:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 125
  SLTIU s4, s3, 1
  BNE s4, zero, bb116
  JAL zero, bb117
bb115:
  ADDI a0, zero, 2
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb118
  JAL zero, bb119
bb116:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  ADDI a0, zero, 1
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb117:
  JAL zero, bb115
bb118:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb119:
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL skip_space
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb120
  JAL zero, bb121
bb120:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb121:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 58
  SLTU s4, zero, s3
  BNE s4, zero, bb122
  JAL zero, bb123
bb122:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb123:
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
  BNE s3, zero, bb124
  JAL zero, bb125
bb124:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb125:
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL skip_space
  JAL zero, bb126
bb126:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 44
  SLTIU s4, s3, 1
  XOR s3, s4, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb127
  JAL zero, bb128
bb127:
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
  BNE s3, zero, bb129
  JAL zero, bb130
bb128:
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL skip_space
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb137
  JAL zero, bb139
bb129:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb130:
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL skip_space
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb131
  JAL zero, bb132
bb131:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb132:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 58
  SLTU s4, zero, s3
  BNE s4, zero, bb133
  JAL zero, bb134
bb133:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb134:
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
  BNE s3, zero, bb135
  JAL zero, bb136
bb135:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb136:
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL skip_space
  JAL zero, bb126
bb137:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb138:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb112
bb139:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 125
  SLTU s4, zero, s3
  BNE s4, zero, bb140
  JAL zero, bb141
bb140:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb141:
  JAL zero, bb138
bb142:
  ADDI t5, sp, 40
  ADD s3, t5, zero
  ADDI s4, zero, 116
  SW s4, 0(s3)
  ADDI s3, sp, 44
  ADDI s4, zero, 114
  SW s4, 0(s3)
  ADDI s3, sp, 48
  ADDI s4, zero, 117
  SW s4, 0(s3)
  ADDI s3, sp, 52
  ADDI s4, zero, 101
  SW s4, 0(s3)
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 3
  SLT s4, s3, s2
  XORI s3, s4, 1
  BNE s3, zero, bb145
  JAL zero, bb147
bb143:
  JAL zero, bb112
bb144:
  XORI s3, s0, 6
  SLTIU s4, s3, 1
  BNE s4, zero, bb159
  JAL zero, bb161
bb145:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb146:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 4
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb143
bb147:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, zero, s3
  ADDI t6, sp, 40
  ADD s3, t6, s5
  LW s5, 0(s3)
  XOR s3, s4, s5
  SLTU s4, zero, s3
  BNE s4, zero, bb148
  JAL zero, bb150
bb148:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb149:
  JAL zero, bb146
bb150:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s1, s5
  LW s4, 0(s3)
  ADDI s3, zero, 4
  ADDI s5, zero, 1
  MULW s6, s3, s5
  ADDI t5, sp, 40
  ADD s3, t5, s6
  LW s5, 0(s3)
  XOR s3, s4, s5
  SLTU s4, zero, s3
  BNE s4, zero, bb151
  JAL zero, bb153
bb151:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb152:
  JAL zero, bb149
bb153:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 2
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s1, s5
  LW s4, 0(s3)
  ADDI s3, zero, 4
  ADDI s5, zero, 2
  MULW s6, s3, s5
  ADDI t6, sp, 40
  ADD s3, t6, s6
  LW s5, 0(s3)
  XOR s3, s4, s5
  SLTU s4, zero, s3
  BNE s4, zero, bb154
  JAL zero, bb156
bb154:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb155:
  JAL zero, bb152
bb156:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 3
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s1, s5
  LW s4, 0(s3)
  ADDI s3, zero, 4
  ADDI s5, zero, 3
  MULW s6, s3, s5
  ADDI t5, sp, 40
  ADD s3, t5, s6
  LW s5, 0(s3)
  XOR s3, s4, s5
  SLTU s4, zero, s3
  BNE s4, zero, bb157
  JAL zero, bb158
bb157:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb158:
  JAL zero, bb155
bb159:
  ADDI t6, sp, 16
  ADD s3, t6, zero
  ADDI s4, zero, 102
  SW s4, 0(s3)
  ADDI s3, sp, 20
  ADDI s4, zero, 97
  SW s4, 0(s3)
  ADDI s3, sp, 24
  ADDI s4, zero, 108
  SW s4, 0(s3)
  ADDI s3, sp, 28
  ADDI s4, zero, 115
  SW s4, 0(s3)
  ADDI s3, sp, 32
  ADDI s4, zero, 101
  SW s4, 0(s3)
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 4
  SLT s4, s3, s2
  XORI s3, s4, 1
  BNE s3, zero, bb162
  JAL zero, bb164
bb160:
  JAL zero, bb143
bb161:
  XORI s3, s0, 7
  SLTIU s0, s3, 1
  BNE s0, zero, bb179
  JAL zero, bb181
bb162:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb163:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 5
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb160
bb164:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, zero, s3
  ADDI t5, sp, 16
  ADD s3, t5, s5
  LW s5, 0(s3)
  XOR s3, s4, s5
  SLTU s4, zero, s3
  BNE s4, zero, bb165
  JAL zero, bb167
bb165:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb166:
  JAL zero, bb163
bb167:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s1, s5
  LW s4, 0(s3)
  ADDI s3, zero, 4
  ADDI s5, zero, 1
  MULW s6, s3, s5
  ADDI t6, sp, 16
  ADD s3, t6, s6
  LW s5, 0(s3)
  XOR s3, s4, s5
  SLTU s4, zero, s3
  BNE s4, zero, bb168
  JAL zero, bb170
bb168:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb169:
  JAL zero, bb166
bb170:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 2
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s1, s5
  LW s4, 0(s3)
  ADDI s3, zero, 4
  ADDI s5, zero, 2
  MULW s6, s3, s5
  ADDI t5, sp, 16
  ADD s3, t5, s6
  LW s5, 0(s3)
  XOR s3, s4, s5
  SLTU s4, zero, s3
  BNE s4, zero, bb171
  JAL zero, bb173
bb171:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb172:
  JAL zero, bb169
bb173:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 3
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s1, s5
  LW s4, 0(s3)
  ADDI s3, zero, 4
  ADDI s5, zero, 3
  MULW s6, s3, s5
  ADDI t6, sp, 16
  ADD s3, t6, s6
  LW s5, 0(s3)
  XOR s3, s4, s5
  SLTU s4, zero, s3
  BNE s4, zero, bb174
  JAL zero, bb176
bb174:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb175:
  JAL zero, bb172
bb176:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 4
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s1, s5
  LW s4, 0(s3)
  ADDI s3, zero, 4
  ADDI s5, zero, 4
  MULW s6, s3, s5
  ADDI t5, sp, 16
  ADD s3, t5, s6
  LW s5, 0(s3)
  XOR s3, s4, s5
  SLTU s4, zero, s3
  BNE s4, zero, bb177
  JAL zero, bb178
bb177:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb178:
  JAL zero, bb175
bb179:
  ADDI t6, sp, 0
  ADD s0, t6, zero
  ADDI s3, zero, 110
  SW s3, 0(s0)
  ADDI s0, sp, 4
  ADDI s3, zero, 117
  SW s3, 0(s0)
  ADDI s0, sp, 8
  ADDI s3, zero, 108
  SW s3, 0(s0)
  ADDI s0, sp, 12
  ADDI s3, zero, 108
  SW s3, 0(s0)
  LA s0, pos
  LW s3, 0(s0)
  ADDIW s0, s3, 3
  SLT s3, s0, s2
  XORI s0, s3, 1
  BNE s0, zero, bb182
  JAL zero, bb184
bb180:
  JAL zero, bb160
bb181:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb182:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb183:
  LA s0, pos
  LW s1, 0(s0)
  ADDIW s0, s1, 4
  LA s1, pos
  SW s0, 0(s1)
  JAL zero, bb180
bb184:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, zero, s0
  ADDI t5, sp, 0
  ADD s0, t5, s3
  LW s3, 0(s0)
  XOR s0, s2, s3
  SLTU s2, zero, s0
  BNE s2, zero, bb185
  JAL zero, bb187
bb185:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb186:
  JAL zero, bb183
bb187:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 1
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s2, 0(s0)
  ADDI s0, zero, 4
  ADDI s3, zero, 1
  MULW s4, s0, s3
  ADDI t6, sp, 0
  ADD s0, t6, s4
  LW s3, 0(s0)
  XOR s0, s2, s3
  SLTU s2, zero, s0
  BNE s2, zero, bb188
  JAL zero, bb190
bb188:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb189:
  JAL zero, bb186
bb190:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 2
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s2, 0(s0)
  ADDI s0, zero, 4
  ADDI s3, zero, 2
  MULW s4, s0, s3
  ADDI t5, sp, 0
  ADD s0, t5, s4
  LW s3, 0(s0)
  XOR s0, s2, s3
  SLTU s2, zero, s0
  BNE s2, zero, bb191
  JAL zero, bb193
bb191:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb192:
  JAL zero, bb189
bb193:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 3
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s2, zero, 3
  MULW s3, s0, s2
  ADDI t6, sp, 0
  ADD s0, t6, s3
  LW s2, 0(s0)
  XOR s0, s1, s2
  SLTU s1, zero, s0
  BNE s1, zero, bb194
  JAL zero, bb195
bb194:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb195:
  JAL zero, bb192
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb197
bb197:
  XORI s0, s2, 35
  SLTU s3, zero, s0
  XOR s0, s3, zero
  SLTU s3, zero, s0
  BNE s3, zero, bb198
  JAL zero, bb199
bb198:
  ADDI s0, zero, 4
  MULW s3, s1, s0
  LA s0, buffer
  ADD s4, s0, s3
  SW s2, 0(s4)
  ADDIW s0, s1, 1
  CALL getch
  ADD s3, a0, zero
  ADD s1, s0, zero
  ADD s2, s3, zero
  JAL zero, bb197
bb199:
  LA s0, buffer
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL skip_space
  ADD a0, zero, zero
  LA s0, buffer
  ADD a1, s0, zero
  ADD a2, s1, zero
  CALL detect_item
  ADD s0, a0, zero
  LA s2, buffer
  ADD a0, s2, zero
  ADD a1, s1, zero
  CALL skip_space
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb200
  JAL zero, bb202
bb200:
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
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb201:
bb202:
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
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
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
  JAL zero, bb204
bb204:
  XORI s2, zero, 1
  SLTU s3, zero, s2
  BNE s3, zero, bb205
  JAL zero, bb206
bb205:
  LA s2, pos
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb207
  JAL zero, bb208
bb206:
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb207:
  JAL zero, bb206
bb208:
  LA s2, pos
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  ADD s2, s0, s4
  LW s3, 0(s2)
  XORI s2, s3, 32
  SLTIU s3, s2, 1
  BNE s3, zero, bb209
  JAL zero, bb211
bb209:
  LA s2, pos
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, pos
  SW s2, 0(s3)
  JAL zero, bb210
bb210:
  JAL zero, bb204
bb211:
  LA s2, pos
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  ADD s2, s0, s4
  LW s3, 0(s2)
  XORI s2, s3, 9
  SLTIU s3, s2, 1
  BNE s3, zero, bb212
  JAL zero, bb214
bb212:
  LA s2, pos
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, pos
  SW s2, 0(s3)
  JAL zero, bb213
bb213:
  JAL zero, bb210
bb214:
  LA s2, pos
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  ADD s2, s0, s4
  LW s3, 0(s2)
  XORI s2, s3, 10
  SLTIU s3, s2, 1
  BNE s3, zero, bb215
  JAL zero, bb217
bb215:
  LA s2, pos
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, pos
  SW s2, 0(s3)
  JAL zero, bb216
bb216:
  JAL zero, bb213
bb217:
  LA s2, pos
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  ADD s2, s0, s4
  LW s3, 0(s2)
  XORI s2, s3, 13
  SLTIU s3, s2, 1
  BNE s3, zero, bb218
  JAL zero, bb220
bb218:
  LA s2, pos
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, pos
  SW s2, 0(s3)
  JAL zero, bb219
bb219:
  JAL zero, bb216
bb220:
  JAL zero, bb206
is_number:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  SLTI s1, s0, 48
  XORI s2, s1, 1
  BNE s2, zero, bb222
  JAL zero, bb224
bb222:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XORI s0, s2, 1
  BNE s0, zero, bb225
  JAL zero, bb227
bb223:
bb224:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb225:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb226:
  JAL zero, bb223
bb227:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
