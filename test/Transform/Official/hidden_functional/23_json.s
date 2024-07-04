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
  SD s4, 72(sp)
  SD ra, 80(sp)
  SD s3, 88(sp)
  SD s2, 96(sp)
  SD s1, 104(sp)
  SD s0, 112(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  SW s0, 64(sp)
  SW s2, 56(sp)
  LA s0, pos
  LW s3, 0(s0)
  SLT s0, s3, s2
  XORI s2, s0, 1
  BNE s2, zero, bb1
  JAL zero, bb2
bb1:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb2:
  LW s0, 56(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL skip_space
  LW s0, 64(sp)
  XOR s2, s0, zero
  SLTIU s0, s2, 1
  BNE s0, zero, bb3
  JAL zero, bb5
bb3:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  XORI s0, s2, 123
  SLTIU s2, s0, 1
  BNE s2, zero, bb6
  JAL zero, bb8
bb4:
  ADDI a0, zero, 1
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb5:
  LW s0, 64(sp)
  XORI s2, s0, 1
  SLTIU s0, s2, 1
  BNE s0, zero, bb33
  JAL zero, bb35
bb6:
  LW s0, 56(sp)
  ADDI a0, zero, 4
  ADD a1, s1, zero
  ADD a2, s0, zero
  CALL detect_item
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb7:
  JAL zero, bb4
bb8:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  XORI s0, s2, 91
  SLTIU s2, s0, 1
  BNE s2, zero, bb9
  JAL zero, bb11
bb9:
  LW s0, 56(sp)
  ADDI a0, zero, 3
  ADD a1, s1, zero
  ADD a2, s0, zero
  CALL detect_item
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb10:
  JAL zero, bb7
bb11:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  XORI s0, s2, 34
  SLTIU s2, s0, 1
  BNE s2, zero, bb12
  JAL zero, bb14
bb12:
  LW s0, 56(sp)
  ADDI a0, zero, 2
  ADD a1, s1, zero
  ADD a2, s0, zero
  CALL detect_item
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb13:
  JAL zero, bb10
bb14:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  ADD a0, s2, zero
  CALL is_number
  ADD s0, a0, zero
  XORI s2, s0, 1
  SLTIU s0, s2, 1
  BNE s0, zero, bb15
  JAL zero, bb17
bb15:
  LW s0, 56(sp)
  ADDI a0, zero, 1
  ADD a1, s1, zero
  ADD a2, s0, zero
  CALL detect_item
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb16:
  JAL zero, bb13
bb17:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  XORI s0, s2, 43
  SLTIU s2, s0, 1
  BNE s2, zero, bb18
  JAL zero, bb20
bb18:
  LW s0, 56(sp)
  ADDI a0, zero, 1
  ADD a1, s1, zero
  ADD a2, s0, zero
  CALL detect_item
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb19:
  JAL zero, bb16
bb20:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  XORI s0, s2, 45
  SLTIU s2, s0, 1
  BNE s2, zero, bb21
  JAL zero, bb23
bb21:
  LW s0, 56(sp)
  ADDI a0, zero, 1
  ADD a1, s1, zero
  ADD a2, s0, zero
  CALL detect_item
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb22:
  JAL zero, bb19
bb23:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  XORI s0, s2, 116
  SLTIU s2, s0, 1
  BNE s2, zero, bb24
  JAL zero, bb26
bb24:
  LW s0, 56(sp)
  ADDI a0, zero, 5
  ADD a1, s1, zero
  ADD a2, s0, zero
  CALL detect_item
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb25:
  JAL zero, bb22
bb26:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  XORI s0, s2, 102
  SLTIU s2, s0, 1
  BNE s2, zero, bb27
  JAL zero, bb29
bb27:
  LW s0, 56(sp)
  ADDI a0, zero, 6
  ADD a1, s1, zero
  ADD a2, s0, zero
  CALL detect_item
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb28:
  JAL zero, bb25
bb29:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  XORI s0, s2, 110
  SLTIU s2, s0, 1
  BNE s2, zero, bb30
  JAL zero, bb32
bb30:
  LW s0, 56(sp)
  ADDI a0, zero, 7
  ADD a1, s1, zero
  ADD a2, s0, zero
  CALL detect_item
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb31:
  JAL zero, bb28
bb32:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb33:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  XORI s0, s2, 43
  SLTIU s2, s0, 1
  BNE s2, zero, bb36
  JAL zero, bb38
bb34:
  JAL zero, bb4
bb35:
  LW s0, 64(sp)
  XORI s2, s0, 2
  SLTIU s0, s2, 1
  BNE s0, zero, bb77
  JAL zero, bb79
bb36:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 1
  LA s2, pos
  SW s0, 0(s2)
  JAL zero, bb37
bb37:
  LA s0, pos
  LW s2, 0(s0)
  LW s0, 56(sp)
  SLT s3, s2, s0
  XORI s0, s3, 1
  BNE s0, zero, bb41
  JAL zero, bb43
bb38:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  XORI s0, s2, 45
  SLTIU s2, s0, 1
  BNE s2, zero, bb39
  JAL zero, bb40
bb39:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 1
  LA s2, pos
  SW s0, 0(s2)
  JAL zero, bb40
bb40:
  JAL zero, bb37
bb41:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb42:
  JAL zero, bb46
bb43:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  ADD a0, s2, zero
  CALL is_number
  ADD s0, a0, zero
  XOR s2, s0, zero
  SLTIU s0, s2, 1
  BNE s0, zero, bb44
  JAL zero, bb45
bb44:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb45:
  JAL zero, bb42
bb46:
  LA s0, pos
  LW s2, 0(s0)
  LW s0, 56(sp)
  SLT s3, s2, s0
  XOR s0, s3, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb47
  JAL zero, bb48
bb47:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  ADD a0, s2, zero
  CALL is_number
  ADD s0, a0, zero
  XORI s2, s0, 1
  SLTU s0, zero, s2
  BNE s0, zero, bb49
  JAL zero, bb50
bb48:
  LA s0, pos
  LW s2, 0(s0)
  LW s0, 56(sp)
  SLT s3, s2, s0
  BNE s3, zero, bb51
  JAL zero, bb52
bb49:
  JAL zero, bb48
bb50:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 1
  LA s2, pos
  SW s0, 0(s2)
  JAL zero, bb46
bb51:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  XORI s0, s2, 46
  SLTIU s2, s0, 1
  BNE s2, zero, bb53
  JAL zero, bb54
bb52:
  LA s0, pos
  LW s2, 0(s0)
  LW s0, 56(sp)
  SLT s3, s2, s0
  BNE s3, zero, bb60
  JAL zero, bb61
bb53:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 1
  LA s2, pos
  SW s0, 0(s2)
  JAL zero, bb55
bb54:
  JAL zero, bb52
bb55:
  LA s0, pos
  LW s2, 0(s0)
  LW s0, 56(sp)
  SLT s3, s2, s0
  XOR s0, s3, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb56
  JAL zero, bb57
bb56:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  ADD a0, s2, zero
  CALL is_number
  ADD s0, a0, zero
  XORI s2, s0, 1
  SLTU s0, zero, s2
  BNE s0, zero, bb58
  JAL zero, bb59
bb57:
  JAL zero, bb54
bb58:
  JAL zero, bb57
bb59:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 1
  LA s2, pos
  SW s0, 0(s2)
  JAL zero, bb55
bb60:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  XORI s0, s2, 101
  SLTIU s2, s0, 1
  BNE s2, zero, bb62
  JAL zero, bb63
bb61:
  JAL zero, bb34
bb62:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 1
  LA s2, pos
  SW s0, 0(s2)
  LW s2, 56(sp)
  SLT s3, s0, s2
  BNE s3, zero, bb64
  JAL zero, bb65
bb63:
  JAL zero, bb61
bb64:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  XORI s0, s2, 43
  SLTIU s2, s0, 1
  BNE s2, zero, bb66
  JAL zero, bb67
bb65:
  LA s0, pos
  LW s2, 0(s0)
  LW s0, 56(sp)
  SLT s3, s2, s0
  BNE s3, zero, bb68
  JAL zero, bb69
bb66:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 1
  LA s2, pos
  SW s0, 0(s2)
  JAL zero, bb67
bb67:
  JAL zero, bb65
bb68:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  XORI s0, s2, 45
  SLTIU s2, s0, 1
  BNE s2, zero, bb70
  JAL zero, bb71
bb69:
  JAL zero, bb72
bb70:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 1
  LA s2, pos
  SW s0, 0(s2)
  JAL zero, bb71
bb71:
  JAL zero, bb69
bb72:
  LA s0, pos
  LW s2, 0(s0)
  LW s0, 56(sp)
  SLT s3, s2, s0
  XOR s0, s3, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb73
  JAL zero, bb74
bb73:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  ADD a0, s2, zero
  CALL is_number
  ADD s0, a0, zero
  XORI s2, s0, 1
  SLTU s0, zero, s2
  BNE s0, zero, bb75
  JAL zero, bb76
bb74:
  JAL zero, bb63
bb75:
  JAL zero, bb74
bb76:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 1
  LA s2, pos
  SW s0, 0(s2)
  JAL zero, bb72
bb77:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 1
  LA s2, pos
  SW s0, 0(s2)
  JAL zero, bb80
bb78:
  JAL zero, bb34
bb79:
  LW s0, 64(sp)
  XORI s2, s0, 3
  SLTIU s0, s2, 1
  BNE s0, zero, bb93
  JAL zero, bb95
bb80:
  LA s0, pos
  LW s2, 0(s0)
  LW s0, 56(sp)
  SLT s3, s2, s0
  XOR s0, s3, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb81
  JAL zero, bb82
bb81:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  XORI s0, s2, 34
  SLTIU s2, s0, 1
  BNE s2, zero, bb83
  JAL zero, bb84
bb82:
  LA s0, pos
  LW s2, 0(s0)
  LW s0, 56(sp)
  SLT s3, s2, s0
  XORI s0, s3, 1
  BNE s0, zero, bb88
  JAL zero, bb90
bb83:
  JAL zero, bb82
bb84:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  XORI s0, s2, 92
  SLTIU s2, s0, 1
  BNE s2, zero, bb85
  JAL zero, bb87
bb85:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 2
  LA s2, pos
  SW s0, 0(s2)
  JAL zero, bb86
bb86:
  JAL zero, bb80
bb87:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 1
  LA s2, pos
  SW s0, 0(s2)
  JAL zero, bb86
bb88:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb89:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 1
  LA s2, pos
  SW s0, 0(s2)
  JAL zero, bb78
bb90:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  XORI s0, s2, 34
  SLTU s2, zero, s0
  BNE s2, zero, bb91
  JAL zero, bb92
bb91:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb92:
  JAL zero, bb89
bb93:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 1
  LA s2, pos
  SW s0, 0(s2)
  LW s0, 56(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL skip_space
  LA s0, pos
  LW s2, 0(s0)
  LW s0, 56(sp)
  SLT s3, s2, s0
  BNE s3, zero, bb96
  JAL zero, bb97
bb94:
  JAL zero, bb78
bb95:
  LW s0, 64(sp)
  XORI s2, s0, 4
  SLTIU s0, s2, 1
  BNE s0, zero, bb111
  JAL zero, bb113
bb96:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  XORI s0, s2, 93
  SLTIU s2, s0, 1
  BNE s2, zero, bb98
  JAL zero, bb99
bb97:
  LW s0, 56(sp)
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s0, zero
  CALL detect_item
  ADD s0, a0, zero
  XOR s2, s0, zero
  SLTIU s0, s2, 1
  BNE s0, zero, bb100
  JAL zero, bb101
bb98:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 1
  LA s2, pos
  SW s0, 0(s2)
  ADDI a0, zero, 1
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb99:
  JAL zero, bb97
bb100:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb101:
  LW s0, 56(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL skip_space
  JAL zero, bb102
bb102:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  XORI s0, s2, 44
  SLTIU s2, s0, 1
  XOR s0, s2, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb103
  JAL zero, bb104
bb103:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 1
  LA s2, pos
  SW s0, 0(s2)
  LW s0, 56(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL skip_space
  LW s0, 56(sp)
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s0, zero
  CALL detect_item
  ADD s0, a0, zero
  XOR s2, s0, zero
  SLTIU s0, s2, 1
  BNE s0, zero, bb105
  JAL zero, bb106
bb104:
  LW s0, 56(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL skip_space
  LA s0, pos
  LW s2, 0(s0)
  LW s0, 56(sp)
  SLT s3, s2, s0
  XORI s0, s3, 1
  BNE s0, zero, bb107
  JAL zero, bb108
bb105:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb106:
  LW s0, 56(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL skip_space
  JAL zero, bb102
bb107:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb108:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  XORI s0, s2, 93
  SLTU s2, zero, s0
  BNE s2, zero, bb109
  JAL zero, bb110
bb109:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb110:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 1
  LA s2, pos
  SW s0, 0(s2)
  JAL zero, bb94
bb111:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 1
  LA s2, pos
  SW s0, 0(s2)
  LW s0, 56(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL skip_space
  LA s0, pos
  LW s2, 0(s0)
  LW s0, 56(sp)
  SLT s3, s2, s0
  BNE s3, zero, bb114
  JAL zero, bb115
bb112:
  JAL zero, bb94
bb113:
  LW s0, 64(sp)
  XORI s2, s0, 5
  SLTIU s0, s2, 1
  BNE s0, zero, bb142
  JAL zero, bb144
bb114:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  XORI s0, s2, 125
  SLTIU s2, s0, 1
  BNE s2, zero, bb116
  JAL zero, bb117
bb115:
  LW s0, 56(sp)
  ADDI a0, zero, 2
  ADD a1, s1, zero
  ADD a2, s0, zero
  CALL detect_item
  ADD s0, a0, zero
  XOR s2, s0, zero
  SLTIU s0, s2, 1
  BNE s0, zero, bb118
  JAL zero, bb119
bb116:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 1
  LA s2, pos
  SW s0, 0(s2)
  ADDI a0, zero, 1
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb117:
  JAL zero, bb115
bb118:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb119:
  LW s0, 56(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL skip_space
  LA s0, pos
  LW s2, 0(s0)
  LW s0, 56(sp)
  SLT s3, s2, s0
  XORI s0, s3, 1
  BNE s0, zero, bb120
  JAL zero, bb121
bb120:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb121:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  XORI s0, s2, 58
  SLTU s2, zero, s0
  BNE s2, zero, bb122
  JAL zero, bb123
bb122:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb123:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 1
  LA s2, pos
  SW s0, 0(s2)
  LW s0, 56(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL skip_space
  LW s0, 56(sp)
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s0, zero
  CALL detect_item
  ADD s0, a0, zero
  XOR s2, s0, zero
  SLTIU s0, s2, 1
  BNE s0, zero, bb124
  JAL zero, bb125
bb124:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb125:
  LW s0, 56(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL skip_space
  JAL zero, bb126
bb126:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  XORI s0, s2, 44
  SLTIU s2, s0, 1
  XOR s0, s2, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb127
  JAL zero, bb128
bb127:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 1
  LA s2, pos
  SW s0, 0(s2)
  LW s0, 56(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL skip_space
  LW s0, 56(sp)
  ADDI a0, zero, 2
  ADD a1, s1, zero
  ADD a2, s0, zero
  CALL detect_item
  ADD s0, a0, zero
  XOR s2, s0, zero
  SLTIU s0, s2, 1
  BNE s0, zero, bb129
  JAL zero, bb130
bb128:
  LW s0, 56(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL skip_space
  LA s0, pos
  LW s2, 0(s0)
  LW s0, 56(sp)
  SLT s3, s2, s0
  XORI s0, s3, 1
  BNE s0, zero, bb137
  JAL zero, bb139
bb129:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb130:
  LW s0, 56(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL skip_space
  LA s0, pos
  LW s2, 0(s0)
  LW s0, 56(sp)
  SLT s3, s2, s0
  XORI s0, s3, 1
  BNE s0, zero, bb131
  JAL zero, bb132
bb131:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb132:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  XORI s0, s2, 58
  SLTU s2, zero, s0
  BNE s2, zero, bb133
  JAL zero, bb134
bb133:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb134:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 1
  LA s2, pos
  SW s0, 0(s2)
  LW s0, 56(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL skip_space
  LW s0, 56(sp)
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s0, zero
  CALL detect_item
  ADD s0, a0, zero
  XOR s2, s0, zero
  SLTIU s0, s2, 1
  BNE s0, zero, bb135
  JAL zero, bb136
bb135:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb136:
  LW s0, 56(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL skip_space
  JAL zero, bb126
bb137:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb138:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 1
  LA s2, pos
  SW s0, 0(s2)
  JAL zero, bb112
bb139:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  XORI s0, s2, 125
  SLTU s2, zero, s0
  BNE s2, zero, bb140
  JAL zero, bb141
bb140:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb141:
  JAL zero, bb138
bb142:
  ADDI t5, sp, 40
  ADD s0, t5, zero
  ADDI s2, zero, 116
  SW s2, 0(s0)
  ADDI s0, sp, 44
  ADDI s2, zero, 114
  SW s2, 0(s0)
  ADDI s0, sp, 48
  ADDI s2, zero, 117
  SW s2, 0(s0)
  ADDI s0, sp, 52
  ADDI s2, zero, 101
  SW s2, 0(s0)
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 3
  LW s2, 56(sp)
  SLT s3, s0, s2
  XORI s0, s3, 1
  BNE s0, zero, bb145
  JAL zero, bb147
bb143:
  JAL zero, bb112
bb144:
  LW s0, 64(sp)
  XORI s2, s0, 6
  SLTIU s0, s2, 1
  BNE s0, zero, bb159
  JAL zero, bb161
bb145:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb146:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 4
  LA s2, pos
  SW s0, 0(s2)
  JAL zero, bb143
bb147:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, zero, s0
  ADDI t6, sp, 40
  ADD s0, t6, s3
  LW s3, 0(s0)
  XOR s0, s2, s3
  SLTU s2, zero, s0
  BNE s2, zero, bb148
  JAL zero, bb150
bb148:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb149:
  JAL zero, bb146
bb150:
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
  ADDI t5, sp, 40
  ADD s0, t5, s4
  LW s3, 0(s0)
  XOR s0, s2, s3
  SLTU s2, zero, s0
  BNE s2, zero, bb151
  JAL zero, bb153
bb151:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb152:
  JAL zero, bb149
bb153:
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
  ADDI t6, sp, 40
  ADD s0, t6, s4
  LW s3, 0(s0)
  XOR s0, s2, s3
  SLTU s2, zero, s0
  BNE s2, zero, bb154
  JAL zero, bb156
bb154:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb155:
  JAL zero, bb152
bb156:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 3
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s2, 0(s0)
  ADDI s0, zero, 4
  ADDI s3, zero, 3
  MULW s4, s0, s3
  ADDI t5, sp, 40
  ADD s0, t5, s4
  LW s3, 0(s0)
  XOR s0, s2, s3
  SLTU s2, zero, s0
  BNE s2, zero, bb157
  JAL zero, bb158
bb157:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb158:
  JAL zero, bb155
bb159:
  ADDI t6, sp, 16
  ADD s0, t6, zero
  ADDI s2, zero, 102
  SW s2, 0(s0)
  ADDI s0, sp, 20
  ADDI s2, zero, 97
  SW s2, 0(s0)
  ADDI s0, sp, 24
  ADDI s2, zero, 108
  SW s2, 0(s0)
  ADDI s0, sp, 28
  ADDI s2, zero, 115
  SW s2, 0(s0)
  ADDI s0, sp, 32
  ADDI s2, zero, 101
  SW s2, 0(s0)
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 4
  LW s2, 56(sp)
  SLT s3, s0, s2
  XORI s0, s3, 1
  BNE s0, zero, bb162
  JAL zero, bb164
bb160:
  JAL zero, bb143
bb161:
  LW s0, 64(sp)
  XORI s2, s0, 7
  SLTIU s0, s2, 1
  BNE s0, zero, bb179
  JAL zero, bb181
bb162:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb163:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 5
  LA s2, pos
  SW s0, 0(s2)
  JAL zero, bb160
bb164:
  LA s0, pos
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, zero, s0
  ADDI t5, sp, 16
  ADD s0, t5, s3
  LW s3, 0(s0)
  XOR s0, s2, s3
  SLTU s2, zero, s0
  BNE s2, zero, bb165
  JAL zero, bb167
bb165:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb166:
  JAL zero, bb163
bb167:
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
  ADDI t6, sp, 16
  ADD s0, t6, s4
  LW s3, 0(s0)
  XOR s0, s2, s3
  SLTU s2, zero, s0
  BNE s2, zero, bb168
  JAL zero, bb170
bb168:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb169:
  JAL zero, bb166
bb170:
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
  ADDI t5, sp, 16
  ADD s0, t5, s4
  LW s3, 0(s0)
  XOR s0, s2, s3
  SLTU s2, zero, s0
  BNE s2, zero, bb171
  JAL zero, bb173
bb171:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb172:
  JAL zero, bb169
bb173:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 3
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s2, 0(s0)
  ADDI s0, zero, 4
  ADDI s3, zero, 3
  MULW s4, s0, s3
  ADDI t6, sp, 16
  ADD s0, t6, s4
  LW s3, 0(s0)
  XOR s0, s2, s3
  SLTU s2, zero, s0
  BNE s2, zero, bb174
  JAL zero, bb176
bb174:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb175:
  JAL zero, bb172
bb176:
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 4
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s2, 0(s0)
  ADDI s0, zero, 4
  ADDI s3, zero, 4
  MULW s4, s0, s3
  ADDI t5, sp, 16
  ADD s0, t5, s4
  LW s3, 0(s0)
  XOR s0, s2, s3
  SLTU s2, zero, s0
  BNE s2, zero, bb177
  JAL zero, bb178
bb177:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb178:
  JAL zero, bb175
bb179:
  ADDI t6, sp, 0
  ADD s0, t6, zero
  ADDI s2, zero, 110
  SW s2, 0(s0)
  ADDI s0, sp, 4
  ADDI s2, zero, 117
  SW s2, 0(s0)
  ADDI s0, sp, 8
  ADDI s2, zero, 108
  SW s2, 0(s0)
  ADDI s0, sp, 12
  ADDI s2, zero, 108
  SW s2, 0(s0)
  LA s0, pos
  LW s2, 0(s0)
  ADDIW s0, s2, 3
  LW s2, 56(sp)
  SLT s3, s0, s2
  XORI s0, s3, 1
  BNE s0, zero, bb182
  JAL zero, bb184
bb180:
  JAL zero, bb160
bb181:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb182:
  ADD a0, zero, zero
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
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
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
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
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
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
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
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
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb195:
  JAL zero, bb192
main:
  ADDI sp, sp, -64
  SD ra, 24(sp)
  SD s2, 32(sp)
  SD s1, 40(sp)
  SD s0, 48(sp)
  CALL getch
  ADD s0, a0, zero
  SW s0, 16(sp)
  SW zero, 8(sp)
  JAL zero, bb197
bb197:
  LW s0, 16(sp)
  XORI s1, s0, 35
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb198
  JAL zero, bb199
bb198:
  LW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, buffer
  ADD s1, s0, s2
  LW s0, 16(sp)
  SW s0, 0(s1)
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  CALL getch
  ADD s0, a0, zero
  SW s0, 16(sp)
  JAL zero, bb197
bb199:
  LW s0, 8(sp)
  LA s1, buffer
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL skip_space
  LW s0, 8(sp)
  ADD a0, zero, zero
  LA s1, buffer
  ADD a1, s1, zero
  ADD a2, s0, zero
  CALL detect_item
  ADD s0, a0, zero
  SW s0, 0(sp)
  LW s0, 8(sp)
  LA s1, buffer
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL skip_space
  LW s0, 0(sp)
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
  LD ra, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
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
  LD ra, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
skip_space:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s1, 0(sp)
  JAL zero, bb204
bb204:
  XORI s1, zero, 1
  SLTU s2, zero, s1
  BNE s2, zero, bb205
  JAL zero, bb206
bb205:
  LA s1, pos
  LW s2, 0(s1)
  LW s1, 0(sp)
  SLT s3, s2, s1
  XORI s1, s3, 1
  BNE s1, zero, bb207
  JAL zero, bb208
bb206:
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
  LA s1, pos
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  LW s2, 0(s1)
  XORI s1, s2, 32
  SLTIU s2, s1, 1
  BNE s2, zero, bb209
  JAL zero, bb211
bb209:
  LA s1, pos
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, pos
  SW s1, 0(s2)
  JAL zero, bb210
bb210:
  JAL zero, bb204
bb211:
  LA s1, pos
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  LW s2, 0(s1)
  XORI s1, s2, 9
  SLTIU s2, s1, 1
  BNE s2, zero, bb212
  JAL zero, bb214
bb212:
  LA s1, pos
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, pos
  SW s1, 0(s2)
  JAL zero, bb213
bb213:
  JAL zero, bb210
bb214:
  LA s1, pos
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  LW s2, 0(s1)
  XORI s1, s2, 10
  SLTIU s2, s1, 1
  BNE s2, zero, bb215
  JAL zero, bb217
bb215:
  LA s1, pos
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, pos
  SW s1, 0(s2)
  JAL zero, bb216
bb216:
  JAL zero, bb213
bb217:
  LA s1, pos
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  LW s2, 0(s1)
  XORI s1, s2, 13
  SLTIU s2, s1, 1
  BNE s2, zero, bb218
  JAL zero, bb220
bb218:
  LA s1, pos
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, pos
  SW s1, 0(s2)
  JAL zero, bb219
bb219:
  JAL zero, bb216
bb220:
  JAL zero, bb206
is_number:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  SW s0, 0(sp)
  SLTI s1, s0, 48
  XORI s0, s1, 1
  BNE s0, zero, bb222
  JAL zero, bb224
bb222:
  LW s0, 0(sp)
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XORI s0, s2, 1
  BNE s0, zero, bb225
  JAL zero, bb227
bb223:
bb224:
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb225:
  ADDI a0, zero, 1
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb226:
  JAL zero, bb223
bb227:
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
