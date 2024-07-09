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
  ADDI sp, sp, -144
  SD s9, 56(sp)
  SD s8, 64(sp)
  SD s0, 72(sp)
  SD s5, 80(sp)
  SD s7, 88(sp)
  SD s1, 96(sp)
  SD s6, 104(sp)
  SD s2, 112(sp)
  SD s3, 120(sp)
  SD s4, 128(sp)
  SD ra, 136(sp)
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
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb2:
  JAL zero, bb180
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
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb5:
  XORI s3, s0, 1
  SLTIU s4, s3, 1
  BNE s4, zero, bb25
  JAL zero, bb27
bb6:
  ADDI a0, zero, 4
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  ADD a0, s3, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
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
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
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
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb11:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s5, s3, 1
  BNE s5, zero, bb420
  JAL zero, bb421
bb12:
  ADD s4, s3, zero
  XORI s5, s4, 1
  SLTIU s4, s5, 1
  BNE s4, zero, bb13
  JAL zero, bb14
bb13:
  ADDI a0, zero, 1
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s4, a0, zero
  ADD a0, s4, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb14:
  LA s4, pos
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MULW s6, s5, s4
  ADD s4, s1, s6
  LW s5, 0(s4)
  XORI s4, s5, 43
  SLTIU s5, s4, 1
  BNE s5, zero, bb15
  JAL zero, bb16
bb15:
  ADDI a0, zero, 1
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s4, a0, zero
  ADD a0, s4, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb16:
  LA s4, pos
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MULW s6, s5, s4
  ADD s4, s1, s6
  LW s5, 0(s4)
  XORI s4, s5, 45
  SLTIU s5, s4, 1
  BNE s5, zero, bb17
  JAL zero, bb18
bb17:
  ADDI a0, zero, 1
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s4, a0, zero
  ADD a0, s4, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb18:
  LA s4, pos
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MULW s6, s5, s4
  ADD s4, s1, s6
  LW s5, 0(s4)
  XORI s4, s5, 116
  SLTIU s5, s4, 1
  BNE s5, zero, bb19
  JAL zero, bb20
bb19:
  ADDI a0, zero, 5
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s4, a0, zero
  ADD a0, s4, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb20:
  LA s4, pos
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MULW s6, s5, s4
  ADD s4, s1, s6
  LW s5, 0(s4)
  XORI s4, s5, 102
  SLTIU s5, s4, 1
  BNE s5, zero, bb21
  JAL zero, bb22
bb21:
  ADDI a0, zero, 6
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s4, a0, zero
  ADD a0, s4, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb22:
  LA s4, pos
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MULW s6, s5, s4
  ADD s4, s1, s6
  LW s5, 0(s4)
  XORI s4, s5, 110
  SLTIU s5, s4, 1
  BNE s5, zero, bb23
  JAL zero, bb24
bb23:
  ADDI a0, zero, 7
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s4, a0, zero
  ADD a0, s4, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb24:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb25:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 43
  SLTIU s4, s3, 1
  BNE s4, zero, bb28
  JAL zero, bb30
bb26:
  JAL zero, bb4
bb27:
  XORI s3, s0, 2
  SLTIU s4, s3, 1
  BNE s4, zero, bb73
  JAL zero, bb75
bb28:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb29
bb29:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb33
  JAL zero, bb35
bb30:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 45
  SLTIU s4, s3, 1
  BNE s4, zero, bb31
  JAL zero, bb32
bb31:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb32
bb32:
  JAL zero, bb29
bb33:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb34:
  JAL zero, bb39
bb35:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s5, s3, 1
  BNE s5, zero, bb424
  JAL zero, bb425
bb36:
  ADD s4, s3, zero
  XOR s5, s4, zero
  SLTIU s4, s5, 1
  BNE s4, zero, bb37
  JAL zero, bb38
bb37:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb38:
  JAL zero, bb34
bb39:
  LA s4, pos
  LW s5, 0(s4)
  SLT s4, s5, s2
  BNE s4, zero, bb40
  JAL zero, bb42
bb40:
  LA s4, pos
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MULW s6, s5, s4
  ADD s4, s1, s6
  LW s5, 0(s4)
  SLTI s4, s5, 48
  XORI s6, s4, 1
  BNE s6, zero, bb428
  JAL zero, bb429
bb41:
  ADD s5, s4, zero
  XORI s6, s5, 1
  SLTU s5, zero, s6
  BNE s5, zero, bb43
  JAL zero, bb44
bb42:
  LA s5, pos
  LW s6, 0(s5)
  SLT s5, s6, s2
  BNE s5, zero, bb45
  JAL zero, bb46
bb43:
  JAL zero, bb42
bb44:
  LA s5, pos
  LW s6, 0(s5)
  ADDIW s5, s6, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb39
bb45:
  LA s5, pos
  LW s6, 0(s5)
  ADDI s5, zero, 4
  MULW s7, s6, s5
  ADD s5, s1, s7
  LW s6, 0(s5)
  XORI s5, s6, 46
  SLTIU s6, s5, 1
  BNE s6, zero, bb47
  JAL zero, bb48
bb46:
  LA s6, pos
  LW s7, 0(s6)
  SLT s6, s7, s2
  BNE s6, zero, bb55
  JAL zero, bb56
bb47:
  LA s5, pos
  LW s6, 0(s5)
  ADDIW s5, s6, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb49
bb48:
  JAL zero, bb46
bb49:
  LA s5, pos
  LW s6, 0(s5)
  SLT s5, s6, s2
  BNE s5, zero, bb50
  JAL zero, bb52
bb50:
  LA s5, pos
  LW s6, 0(s5)
  ADDI s5, zero, 4
  MULW s7, s6, s5
  ADD s5, s1, s7
  LW s6, 0(s5)
  SLTI s5, s6, 48
  XORI s7, s5, 1
  BNE s7, zero, bb432
  JAL zero, bb433
bb51:
  ADD s6, s5, zero
  XORI s7, s6, 1
  SLTU s6, zero, s7
  BNE s6, zero, bb53
  JAL zero, bb54
bb52:
  JAL zero, bb48
bb53:
  JAL zero, bb52
bb54:
  LA s6, pos
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, pos
  SW s6, 0(s7)
  JAL zero, bb49
bb55:
  LA s6, pos
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s8, s7, s6
  ADD s6, s1, s8
  LW s7, 0(s6)
  XORI s6, s7, 101
  SLTIU s7, s6, 1
  BNE s7, zero, bb57
  JAL zero, bb58
bb56:
  JAL zero, bb26
bb57:
  LA s6, pos
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, pos
  SW s6, 0(s7)
  SLT s7, s6, s2
  BNE s7, zero, bb59
  JAL zero, bb60
bb58:
  JAL zero, bb56
bb59:
  LA s6, pos
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s8, s7, s6
  ADD s6, s1, s8
  LW s7, 0(s6)
  XORI s6, s7, 43
  SLTIU s7, s6, 1
  BNE s7, zero, bb61
  JAL zero, bb62
bb60:
  LA s6, pos
  LW s7, 0(s6)
  SLT s6, s7, s2
  BNE s6, zero, bb63
  JAL zero, bb64
bb61:
  LA s6, pos
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, pos
  SW s6, 0(s7)
  JAL zero, bb62
bb62:
  JAL zero, bb60
bb63:
  LA s6, pos
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s8, s7, s6
  ADD s6, s1, s8
  LW s7, 0(s6)
  XORI s6, s7, 45
  SLTIU s7, s6, 1
  BNE s7, zero, bb65
  JAL zero, bb66
bb64:
  JAL zero, bb67
bb65:
  LA s6, pos
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, pos
  SW s6, 0(s7)
  JAL zero, bb66
bb66:
  JAL zero, bb64
bb67:
  LA s6, pos
  LW s7, 0(s6)
  SLT s6, s7, s2
  BNE s6, zero, bb68
  JAL zero, bb70
bb68:
  LA s6, pos
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s8, s7, s6
  ADD s6, s1, s8
  LW s7, 0(s6)
  SLTI s6, s7, 48
  XORI s8, s6, 1
  BNE s8, zero, bb436
  JAL zero, bb437
bb69:
  ADD s7, s6, zero
  XORI s8, s7, 1
  SLTU s7, zero, s8
  BNE s7, zero, bb71
  JAL zero, bb72
bb70:
  JAL zero, bb58
bb71:
  JAL zero, bb70
bb72:
  LA s7, pos
  LW s8, 0(s7)
  ADDIW s7, s8, 1
  LA s8, pos
  SW s7, 0(s8)
  JAL zero, bb67
bb73:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb76
bb74:
  JAL zero, bb26
bb75:
  XORI s3, s0, 3
  SLTIU s4, s3, 1
  BNE s4, zero, bb88
  JAL zero, bb90
bb76:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  BNE s3, zero, bb77
  JAL zero, bb78
bb77:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 34
  SLTIU s4, s3, 1
  BNE s4, zero, bb79
  JAL zero, bb80
bb78:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb84
  JAL zero, bb85
bb79:
  JAL zero, bb78
bb80:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 92
  SLTIU s4, s3, 1
  BNE s4, zero, bb81
  JAL zero, bb83
bb81:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 2
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb82
bb82:
  JAL zero, bb76
bb83:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb82
bb84:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb85:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 34
  SLTU s4, zero, s3
  BNE s4, zero, bb86
  JAL zero, bb87
bb86:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb87:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb74
bb88:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb196
bb89:
  JAL zero, bb74
bb90:
  XORI s3, s0, 4
  SLTIU s4, s3, 1
  BNE s4, zero, bb108
  JAL zero, bb110
bb91:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 93
  SLTIU s4, s3, 1
  BNE s4, zero, bb93
  JAL zero, bb94
bb92:
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb95
  JAL zero, bb96
bb93:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  ADDI a0, zero, 1
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb94:
  JAL zero, bb92
bb95:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb96:
  JAL zero, bb212
bb97:
  JAL zero, bb98
bb98:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 44
  SLTIU s4, s3, 1
  BNE s4, zero, bb99
  JAL zero, bb100
bb99:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb228
bb100:
  JAL zero, bb260
bb101:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb102:
  JAL zero, bb244
bb103:
  JAL zero, bb98
bb104:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb105:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 93
  SLTU s4, zero, s3
  BNE s4, zero, bb106
  JAL zero, bb107
bb106:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb107:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb89
bb108:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb276
bb109:
  JAL zero, bb89
bb110:
  XORI s3, s0, 5
  SLTIU s4, s3, 1
  BNE s4, zero, bb140
  JAL zero, bb142
bb111:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 125
  SLTIU s4, s3, 1
  BNE s4, zero, bb113
  JAL zero, bb114
bb112:
  ADDI a0, zero, 2
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb115
  JAL zero, bb116
bb113:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  ADDI a0, zero, 1
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb114:
  JAL zero, bb112
bb115:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb116:
  JAL zero, bb292
bb117:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb118:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 58
  SLTU s4, zero, s3
  BNE s4, zero, bb119
  JAL zero, bb120
bb119:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb120:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb308
bb121:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb122:
  JAL zero, bb324
bb123:
  JAL zero, bb124
bb124:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 44
  SLTIU s4, s3, 1
  BNE s4, zero, bb125
  JAL zero, bb126
bb125:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb340
bb126:
  JAL zero, bb404
bb127:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb128:
  JAL zero, bb356
bb129:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb130:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 58
  SLTU s4, zero, s3
  BNE s4, zero, bb131
  JAL zero, bb132
bb131:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb132:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb372
bb133:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb134:
  JAL zero, bb388
bb135:
  JAL zero, bb124
bb136:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb137:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 125
  SLTU s4, zero, s3
  BNE s4, zero, bb138
  JAL zero, bb139
bb138:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb139:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb109
bb140:
  ADDI s3, zero, 116
  SW s3, 40(sp)
  ADDI s3, sp, 44
  ADDI s4, zero, 114
  SW s4, 0(s3)
  ADDI s4, sp, 48
  ADDI s5, zero, 117
  SW s5, 0(s4)
  ADDI s5, sp, 52
  ADDI s6, zero, 101
  SW s6, 0(s5)
  LA s6, pos
  LW s7, 0(s6)
  ADDIW s6, s7, 3
  SLT s7, s6, s2
  XORI s6, s7, 1
  BNE s6, zero, bb143
  JAL zero, bb144
bb141:
  JAL zero, bb109
bb142:
  XORI s3, s0, 6
  SLTIU s4, s3, 1
  BNE s4, zero, bb153
  JAL zero, bb155
bb143:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb144:
  LA s6, pos
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s8, s7, s6
  ADD s6, s1, s8
  LW s7, 0(s6)
  LW s6, 40(sp)
  XOR s8, s7, s6
  SLTU s6, zero, s8
  BNE s6, zero, bb145
  JAL zero, bb146
bb145:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb146:
  LA s6, pos
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  ADDI s7, zero, 4
  MULW s8, s6, s7
  ADD s6, s1, s8
  LW s7, 0(s6)
  LW s6, 0(s3)
  XOR s3, s7, s6
  SLTU s6, zero, s3
  BNE s6, zero, bb147
  JAL zero, bb148
bb147:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb148:
  LA s3, pos
  LW s6, 0(s3)
  ADDIW s3, s6, 2
  ADDI s6, zero, 4
  MULW s7, s3, s6
  ADD s3, s1, s7
  LW s6, 0(s3)
  LW s3, 0(s4)
  XOR s4, s6, s3
  SLTU s3, zero, s4
  BNE s3, zero, bb149
  JAL zero, bb150
bb149:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb150:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 3
  ADDI s4, zero, 4
  MULW s6, s3, s4
  ADD s3, s1, s6
  LW s4, 0(s3)
  LW s3, 0(s5)
  XOR s5, s4, s3
  SLTU s3, zero, s5
  BNE s3, zero, bb151
  JAL zero, bb152
bb151:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb152:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 4
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb141
bb153:
  ADDI s3, zero, 102
  SW s3, 16(sp)
  ADDI s3, sp, 20
  ADDI s4, zero, 97
  SW s4, 0(s3)
  ADDI s4, sp, 24
  ADDI s5, zero, 108
  SW s5, 0(s4)
  ADDI s5, sp, 28
  ADDI s6, zero, 115
  SW s6, 0(s5)
  ADDI s6, sp, 32
  ADDI s7, zero, 101
  SW s7, 0(s6)
  LA s7, pos
  LW s8, 0(s7)
  ADDIW s7, s8, 4
  SLT s8, s7, s2
  XORI s7, s8, 1
  BNE s7, zero, bb156
  JAL zero, bb157
bb154:
  JAL zero, bb141
bb155:
  XORI s3, s0, 7
  SLTIU s4, s3, 1
  BNE s4, zero, bb168
  JAL zero, bb169
bb156:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb157:
  LA s7, pos
  LW s8, 0(s7)
  ADDI s7, zero, 4
  MULW s9, s8, s7
  ADD s7, s1, s9
  LW s8, 0(s7)
  LW s7, 16(sp)
  XOR s9, s8, s7
  SLTU s7, zero, s9
  BNE s7, zero, bb158
  JAL zero, bb159
bb158:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb159:
  LA s7, pos
  LW s8, 0(s7)
  ADDIW s7, s8, 1
  ADDI s8, zero, 4
  MULW s9, s7, s8
  ADD s7, s1, s9
  LW s8, 0(s7)
  LW s7, 0(s3)
  XOR s3, s8, s7
  SLTU s7, zero, s3
  BNE s7, zero, bb160
  JAL zero, bb161
bb160:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb161:
  LA s3, pos
  LW s7, 0(s3)
  ADDIW s3, s7, 2
  ADDI s7, zero, 4
  MULW s8, s3, s7
  ADD s3, s1, s8
  LW s7, 0(s3)
  LW s3, 0(s4)
  XOR s4, s7, s3
  SLTU s3, zero, s4
  BNE s3, zero, bb162
  JAL zero, bb163
bb162:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb163:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 3
  ADDI s4, zero, 4
  MULW s7, s3, s4
  ADD s3, s1, s7
  LW s4, 0(s3)
  LW s3, 0(s5)
  XOR s5, s4, s3
  SLTU s3, zero, s5
  BNE s3, zero, bb164
  JAL zero, bb165
bb164:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb165:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 4
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s1, s5
  LW s4, 0(s3)
  LW s3, 0(s6)
  XOR s5, s4, s3
  SLTU s3, zero, s5
  BNE s3, zero, bb166
  JAL zero, bb167
bb166:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb167:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 5
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb154
bb168:
  ADDI s3, zero, 110
  SW s3, 0(sp)
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
  XORI s6, s7, 1
  BNE s6, zero, bb170
  JAL zero, bb171
bb169:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb170:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb171:
  LA s6, pos
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s8, s7, s6
  ADD s6, s1, s8
  LW s7, 0(s6)
  LW s6, 0(sp)
  XOR s8, s7, s6
  SLTU s6, zero, s8
  BNE s6, zero, bb172
  JAL zero, bb173
bb172:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb173:
  LA s6, pos
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  ADDI s7, zero, 4
  MULW s8, s6, s7
  ADD s6, s1, s8
  LW s7, 0(s6)
  LW s6, 0(s3)
  XOR s3, s7, s6
  SLTU s6, zero, s3
  BNE s6, zero, bb174
  JAL zero, bb175
bb174:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb175:
  LA s3, pos
  LW s6, 0(s3)
  ADDIW s3, s6, 2
  ADDI s6, zero, 4
  MULW s7, s3, s6
  ADD s3, s1, s7
  LW s6, 0(s3)
  LW s3, 0(s4)
  XOR s4, s6, s3
  SLTU s3, zero, s4
  BNE s3, zero, bb176
  JAL zero, bb177
bb176:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb177:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 3
  ADDI s4, zero, 4
  MULW s6, s3, s4
  ADD s3, s1, s6
  LW s4, 0(s3)
  LW s3, 0(s5)
  XOR s5, s4, s3
  SLTU s3, zero, s5
  BNE s3, zero, bb178
  JAL zero, bb179
bb178:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb179:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 4
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb154
bb180:
  JAL zero, bb181
bb181:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb183
  JAL zero, bb184
bb182:
  XOR s3, s0, zero
  SLTIU s4, s3, 1
  BNE s4, zero, bb3
  JAL zero, bb5
bb183:
  JAL zero, bb182
bb184:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s4, s3, 1
  BNE s4, zero, bb185
  JAL zero, bb187
bb185:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb186
bb186:
  JAL zero, bb181
bb187:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 9
  SLTIU s4, s3, 1
  BNE s4, zero, bb188
  JAL zero, bb190
bb188:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb189
bb189:
  JAL zero, bb186
bb190:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb191
  JAL zero, bb193
bb191:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb192
bb192:
  JAL zero, bb189
bb193:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 13
  SLTIU s4, s3, 1
  BNE s4, zero, bb194
  JAL zero, bb195
bb194:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb192
bb195:
  JAL zero, bb182
bb196:
  JAL zero, bb197
bb197:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb199
  JAL zero, bb200
bb198:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  BNE s3, zero, bb91
  JAL zero, bb92
bb199:
  JAL zero, bb198
bb200:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s4, s3, 1
  BNE s4, zero, bb201
  JAL zero, bb203
bb201:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb202
bb202:
  JAL zero, bb197
bb203:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 9
  SLTIU s4, s3, 1
  BNE s4, zero, bb204
  JAL zero, bb206
bb204:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb205
bb205:
  JAL zero, bb202
bb206:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb207
  JAL zero, bb209
bb207:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb208
bb208:
  JAL zero, bb205
bb209:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 13
  SLTIU s4, s3, 1
  BNE s4, zero, bb210
  JAL zero, bb211
bb210:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb208
bb211:
  JAL zero, bb198
bb212:
  JAL zero, bb213
bb213:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb215
  JAL zero, bb216
bb214:
  JAL zero, bb97
bb215:
  JAL zero, bb214
bb216:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s4, s3, 1
  BNE s4, zero, bb217
  JAL zero, bb219
bb217:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb218
bb218:
  JAL zero, bb213
bb219:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 9
  SLTIU s4, s3, 1
  BNE s4, zero, bb220
  JAL zero, bb222
bb220:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb221
bb221:
  JAL zero, bb218
bb222:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb223
  JAL zero, bb225
bb223:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb224
bb224:
  JAL zero, bb221
bb225:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 13
  SLTIU s4, s3, 1
  BNE s4, zero, bb226
  JAL zero, bb227
bb226:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb224
bb227:
  JAL zero, bb214
bb228:
  JAL zero, bb229
bb229:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb231
  JAL zero, bb232
bb230:
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb101
  JAL zero, bb102
bb231:
  JAL zero, bb230
bb232:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s4, s3, 1
  BNE s4, zero, bb233
  JAL zero, bb235
bb233:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb234
bb234:
  JAL zero, bb229
bb235:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 9
  SLTIU s4, s3, 1
  BNE s4, zero, bb236
  JAL zero, bb238
bb236:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb237
bb237:
  JAL zero, bb234
bb238:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb239
  JAL zero, bb241
bb239:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb240
bb240:
  JAL zero, bb237
bb241:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 13
  SLTIU s4, s3, 1
  BNE s4, zero, bb242
  JAL zero, bb243
bb242:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb240
bb243:
  JAL zero, bb230
bb244:
  JAL zero, bb245
bb245:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb247
  JAL zero, bb248
bb246:
  JAL zero, bb103
bb247:
  JAL zero, bb246
bb248:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s4, s3, 1
  BNE s4, zero, bb249
  JAL zero, bb251
bb249:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb250
bb250:
  JAL zero, bb245
bb251:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 9
  SLTIU s4, s3, 1
  BNE s4, zero, bb252
  JAL zero, bb254
bb252:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb253
bb253:
  JAL zero, bb250
bb254:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb255
  JAL zero, bb257
bb255:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb256
bb256:
  JAL zero, bb253
bb257:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 13
  SLTIU s4, s3, 1
  BNE s4, zero, bb258
  JAL zero, bb259
bb258:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb256
bb259:
  JAL zero, bb246
bb260:
  JAL zero, bb261
bb261:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb263
  JAL zero, bb264
bb262:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb104
  JAL zero, bb105
bb263:
  JAL zero, bb262
bb264:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s4, s3, 1
  BNE s4, zero, bb265
  JAL zero, bb267
bb265:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb266
bb266:
  JAL zero, bb261
bb267:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 9
  SLTIU s4, s3, 1
  BNE s4, zero, bb268
  JAL zero, bb270
bb268:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb269
bb269:
  JAL zero, bb266
bb270:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb271
  JAL zero, bb273
bb271:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb272
bb272:
  JAL zero, bb269
bb273:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 13
  SLTIU s4, s3, 1
  BNE s4, zero, bb274
  JAL zero, bb275
bb274:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb272
bb275:
  JAL zero, bb262
bb276:
  JAL zero, bb277
bb277:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb279
  JAL zero, bb280
bb278:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  BNE s3, zero, bb111
  JAL zero, bb112
bb279:
  JAL zero, bb278
bb280:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s4, s3, 1
  BNE s4, zero, bb281
  JAL zero, bb283
bb281:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb282
bb282:
  JAL zero, bb277
bb283:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 9
  SLTIU s4, s3, 1
  BNE s4, zero, bb284
  JAL zero, bb286
bb284:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb285
bb285:
  JAL zero, bb282
bb286:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb287
  JAL zero, bb289
bb287:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb288
bb288:
  JAL zero, bb285
bb289:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 13
  SLTIU s4, s3, 1
  BNE s4, zero, bb290
  JAL zero, bb291
bb290:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb288
bb291:
  JAL zero, bb278
bb292:
  JAL zero, bb293
bb293:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb295
  JAL zero, bb296
bb294:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb117
  JAL zero, bb118
bb295:
  JAL zero, bb294
bb296:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s4, s3, 1
  BNE s4, zero, bb297
  JAL zero, bb299
bb297:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb298
bb298:
  JAL zero, bb293
bb299:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 9
  SLTIU s4, s3, 1
  BNE s4, zero, bb300
  JAL zero, bb302
bb300:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb301
bb301:
  JAL zero, bb298
bb302:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb303
  JAL zero, bb305
bb303:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb304
bb304:
  JAL zero, bb301
bb305:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 13
  SLTIU s4, s3, 1
  BNE s4, zero, bb306
  JAL zero, bb307
bb306:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb304
bb307:
  JAL zero, bb294
bb308:
  JAL zero, bb309
bb309:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb311
  JAL zero, bb312
bb310:
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb121
  JAL zero, bb122
bb311:
  JAL zero, bb310
bb312:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s4, s3, 1
  BNE s4, zero, bb313
  JAL zero, bb315
bb313:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb314
bb314:
  JAL zero, bb309
bb315:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 9
  SLTIU s4, s3, 1
  BNE s4, zero, bb316
  JAL zero, bb318
bb316:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb317
bb317:
  JAL zero, bb314
bb318:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb319
  JAL zero, bb321
bb319:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb320
bb320:
  JAL zero, bb317
bb321:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 13
  SLTIU s4, s3, 1
  BNE s4, zero, bb322
  JAL zero, bb323
bb322:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb320
bb323:
  JAL zero, bb310
bb324:
  JAL zero, bb325
bb325:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb327
  JAL zero, bb328
bb326:
  JAL zero, bb123
bb327:
  JAL zero, bb326
bb328:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s4, s3, 1
  BNE s4, zero, bb329
  JAL zero, bb331
bb329:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb330
bb330:
  JAL zero, bb325
bb331:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 9
  SLTIU s4, s3, 1
  BNE s4, zero, bb332
  JAL zero, bb334
bb332:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb333
bb333:
  JAL zero, bb330
bb334:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb335
  JAL zero, bb337
bb335:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb336
bb336:
  JAL zero, bb333
bb337:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 13
  SLTIU s4, s3, 1
  BNE s4, zero, bb338
  JAL zero, bb339
bb338:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb336
bb339:
  JAL zero, bb326
bb340:
  JAL zero, bb341
bb341:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb343
  JAL zero, bb344
bb342:
  ADDI a0, zero, 2
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb127
  JAL zero, bb128
bb343:
  JAL zero, bb342
bb344:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s4, s3, 1
  BNE s4, zero, bb345
  JAL zero, bb347
bb345:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb346
bb346:
  JAL zero, bb341
bb347:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 9
  SLTIU s4, s3, 1
  BNE s4, zero, bb348
  JAL zero, bb350
bb348:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb349
bb349:
  JAL zero, bb346
bb350:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb351
  JAL zero, bb353
bb351:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb352
bb352:
  JAL zero, bb349
bb353:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 13
  SLTIU s4, s3, 1
  BNE s4, zero, bb354
  JAL zero, bb355
bb354:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb352
bb355:
  JAL zero, bb342
bb356:
  JAL zero, bb357
bb357:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb359
  JAL zero, bb360
bb358:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb129
  JAL zero, bb130
bb359:
  JAL zero, bb358
bb360:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s4, s3, 1
  BNE s4, zero, bb361
  JAL zero, bb363
bb361:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb362
bb362:
  JAL zero, bb357
bb363:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 9
  SLTIU s4, s3, 1
  BNE s4, zero, bb364
  JAL zero, bb366
bb364:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb365
bb365:
  JAL zero, bb362
bb366:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb367
  JAL zero, bb369
bb367:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb368
bb368:
  JAL zero, bb365
bb369:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 13
  SLTIU s4, s3, 1
  BNE s4, zero, bb370
  JAL zero, bb371
bb370:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb368
bb371:
  JAL zero, bb358
bb372:
  JAL zero, bb373
bb373:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb375
  JAL zero, bb376
bb374:
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb133
  JAL zero, bb134
bb375:
  JAL zero, bb374
bb376:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s4, s3, 1
  BNE s4, zero, bb377
  JAL zero, bb379
bb377:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb378
bb378:
  JAL zero, bb373
bb379:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 9
  SLTIU s4, s3, 1
  BNE s4, zero, bb380
  JAL zero, bb382
bb380:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb381
bb381:
  JAL zero, bb378
bb382:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb383
  JAL zero, bb385
bb383:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb384
bb384:
  JAL zero, bb381
bb385:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 13
  SLTIU s4, s3, 1
  BNE s4, zero, bb386
  JAL zero, bb387
bb386:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb384
bb387:
  JAL zero, bb374
bb388:
  JAL zero, bb389
bb389:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb391
  JAL zero, bb392
bb390:
  JAL zero, bb135
bb391:
  JAL zero, bb390
bb392:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s4, s3, 1
  BNE s4, zero, bb393
  JAL zero, bb395
bb393:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb394
bb394:
  JAL zero, bb389
bb395:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 9
  SLTIU s4, s3, 1
  BNE s4, zero, bb396
  JAL zero, bb398
bb396:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb397
bb397:
  JAL zero, bb394
bb398:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb399
  JAL zero, bb401
bb399:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb400
bb400:
  JAL zero, bb397
bb401:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 13
  SLTIU s4, s3, 1
  BNE s4, zero, bb402
  JAL zero, bb403
bb402:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb400
bb403:
  JAL zero, bb390
bb404:
  JAL zero, bb405
bb405:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb407
  JAL zero, bb408
bb406:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb136
  JAL zero, bb137
bb407:
  JAL zero, bb406
bb408:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s4, s3, 1
  BNE s4, zero, bb409
  JAL zero, bb411
bb409:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb410
bb410:
  JAL zero, bb405
bb411:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 9
  SLTIU s4, s3, 1
  BNE s4, zero, bb412
  JAL zero, bb414
bb412:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb413
bb413:
  JAL zero, bb410
bb414:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb415
  JAL zero, bb417
bb415:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb416
bb416:
  JAL zero, bb413
bb417:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 13
  SLTIU s4, s3, 1
  BNE s4, zero, bb418
  JAL zero, bb419
bb418:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb416
bb419:
  JAL zero, bb406
bb420:
  ADDI s3, zero, 57
  SLT s5, s3, s4
  XORI s3, s5, 1
  BNE s3, zero, bb422
  JAL zero, bb423
bb421:
  ADD s3, zero, zero
  JAL zero, bb12
bb422:
  ADDI s3, zero, 1
  JAL zero, bb12
bb423:
  ADD s3, zero, zero
  JAL zero, bb12
bb424:
  ADDI s3, zero, 57
  SLT s5, s3, s4
  XORI s3, s5, 1
  BNE s3, zero, bb426
  JAL zero, bb427
bb425:
  ADD s3, zero, zero
  JAL zero, bb36
bb426:
  ADDI s3, zero, 1
  JAL zero, bb36
bb427:
  ADD s3, zero, zero
  JAL zero, bb36
bb428:
  ADDI s4, zero, 57
  SLT s6, s4, s5
  XORI s4, s6, 1
  BNE s4, zero, bb430
  JAL zero, bb431
bb429:
  ADD s4, zero, zero
  JAL zero, bb41
bb430:
  ADDI s4, zero, 1
  JAL zero, bb41
bb431:
  ADD s4, zero, zero
  JAL zero, bb41
bb432:
  ADDI s5, zero, 57
  SLT s7, s5, s6
  XORI s5, s7, 1
  BNE s5, zero, bb434
  JAL zero, bb435
bb433:
  ADD s5, zero, zero
  JAL zero, bb51
bb434:
  ADDI s5, zero, 1
  JAL zero, bb51
bb435:
  ADD s5, zero, zero
  JAL zero, bb51
bb436:
  ADDI s6, zero, 57
  SLT s8, s6, s7
  XORI s6, s8, 1
  BNE s6, zero, bb438
  JAL zero, bb439
bb437:
  ADD s6, zero, zero
  JAL zero, bb69
bb438:
  ADDI s6, zero, 1
  JAL zero, bb69
bb439:
  ADD s6, zero, zero
  JAL zero, bb69
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
  JAL zero, bb441
bb441:
  ADD s0, s2, zero
  ADD s3, s1, zero
  XORI s4, s0, 35
  SLTU s5, zero, s4
  BNE s5, zero, bb442
  JAL zero, bb443
bb442:
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
  JAL zero, bb441
bb443:
  JAL zero, bb446
bb444:
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
bb445:
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
bb446:
  JAL zero, bb447
bb447:
  LA s0, pos
  LW s1, 0(s0)
  SLT s0, s1, s3
  XORI s1, s0, 1
  BNE s1, zero, bb449
  JAL zero, bb450
bb448:
  ADD a0, zero, zero
  LA s0, buffer
  ADD a1, s0, zero
  ADD a2, s3, zero
  CALL detect_item
  ADD s0, a0, zero
  JAL zero, bb462
bb449:
  JAL zero, bb448
bb450:
  LA s0, pos
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, buffer
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 32
  SLTIU s0, s1, 1
  BNE s0, zero, bb451
  JAL zero, bb453
bb451:
  LA s0, pos
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, pos
  SW s0, 0(s1)
  JAL zero, bb452
bb452:
  JAL zero, bb447
bb453:
  LA s0, pos
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, buffer
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 9
  SLTIU s0, s1, 1
  BNE s0, zero, bb454
  JAL zero, bb456
bb454:
  LA s0, pos
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, pos
  SW s0, 0(s1)
  JAL zero, bb455
bb455:
  JAL zero, bb452
bb456:
  LA s0, pos
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, buffer
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 10
  SLTIU s0, s1, 1
  BNE s0, zero, bb457
  JAL zero, bb459
bb457:
  LA s0, pos
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, pos
  SW s0, 0(s1)
  JAL zero, bb458
bb458:
  JAL zero, bb455
bb459:
  LA s0, pos
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, buffer
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 13
  SLTIU s0, s1, 1
  BNE s0, zero, bb460
  JAL zero, bb461
bb460:
  LA s0, pos
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, pos
  SW s0, 0(s1)
  JAL zero, bb458
bb461:
  JAL zero, bb448
bb462:
  JAL zero, bb463
bb463:
  LA s1, pos
  LW s2, 0(s1)
  SLT s1, s2, s3
  XORI s2, s1, 1
  BNE s2, zero, bb465
  JAL zero, bb466
bb464:
  XOR s1, s0, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb444
  JAL zero, bb445
bb465:
  JAL zero, bb464
bb466:
  LA s1, pos
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s4, s2, s1
  LA s1, buffer
  ADD s2, s1, s4
  LW s1, 0(s2)
  XORI s2, s1, 32
  SLTIU s1, s2, 1
  BNE s1, zero, bb467
  JAL zero, bb469
bb467:
  LA s1, pos
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, pos
  SW s1, 0(s2)
  JAL zero, bb468
bb468:
  JAL zero, bb463
bb469:
  LA s1, pos
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s4, s2, s1
  LA s1, buffer
  ADD s2, s1, s4
  LW s1, 0(s2)
  XORI s2, s1, 9
  SLTIU s1, s2, 1
  BNE s1, zero, bb470
  JAL zero, bb472
bb470:
  LA s1, pos
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, pos
  SW s1, 0(s2)
  JAL zero, bb471
bb471:
  JAL zero, bb468
bb472:
  LA s1, pos
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s4, s2, s1
  LA s1, buffer
  ADD s2, s1, s4
  LW s1, 0(s2)
  XORI s2, s1, 10
  SLTIU s1, s2, 1
  BNE s1, zero, bb473
  JAL zero, bb475
bb473:
  LA s1, pos
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, pos
  SW s1, 0(s2)
  JAL zero, bb474
bb474:
  JAL zero, bb471
bb475:
  LA s1, pos
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s4, s2, s1
  LA s1, buffer
  ADD s2, s1, s4
  LW s1, 0(s2)
  XORI s2, s1, 13
  SLTIU s1, s2, 1
  BNE s1, zero, bb476
  JAL zero, bb477
bb476:
  LA s1, pos
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, pos
  SW s1, 0(s2)
  JAL zero, bb474
bb477:
  JAL zero, bb464
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
  JAL zero, bb479
bb479:
  LA s2, pos
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb481
  JAL zero, bb482
bb480:
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb481:
  JAL zero, bb480
bb482:
  LA s2, pos
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  ADD s2, s0, s4
  LW s3, 0(s2)
  XORI s2, s3, 32
  SLTIU s3, s2, 1
  BNE s3, zero, bb483
  JAL zero, bb485
bb483:
  LA s2, pos
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, pos
  SW s2, 0(s3)
  JAL zero, bb484
bb484:
  JAL zero, bb479
bb485:
  LA s2, pos
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  ADD s2, s0, s4
  LW s3, 0(s2)
  XORI s2, s3, 9
  SLTIU s3, s2, 1
  BNE s3, zero, bb486
  JAL zero, bb488
bb486:
  LA s2, pos
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, pos
  SW s2, 0(s3)
  JAL zero, bb487
bb487:
  JAL zero, bb484
bb488:
  LA s2, pos
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  ADD s2, s0, s4
  LW s3, 0(s2)
  XORI s2, s3, 10
  SLTIU s3, s2, 1
  BNE s3, zero, bb489
  JAL zero, bb491
bb489:
  LA s2, pos
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, pos
  SW s2, 0(s3)
  JAL zero, bb490
bb490:
  JAL zero, bb487
bb491:
  LA s2, pos
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  ADD s2, s0, s4
  LW s3, 0(s2)
  XORI s2, s3, 13
  SLTIU s3, s2, 1
  BNE s3, zero, bb492
  JAL zero, bb493
bb492:
  LA s2, pos
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, pos
  SW s2, 0(s3)
  JAL zero, bb490
bb493:
  JAL zero, bb480
is_number:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  SLTI s1, s0, 48
  XORI s2, s1, 1
  BNE s2, zero, bb495
  JAL zero, bb496
bb495:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XORI s0, s2, 1
  BNE s0, zero, bb497
  JAL zero, bb498
bb496:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb497:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb498:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
