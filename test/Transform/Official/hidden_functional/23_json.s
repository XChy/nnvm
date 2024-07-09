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
  JAL zero, bb143
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
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 123
  SLTIU s4, s3, 1
  BNE s4, zero, bb4
  JAL zero, bb5
bb3:
  XORI s3, s0, 1
  SLTIU s4, s3, 1
  BNE s4, zero, bb23
  JAL zero, bb25
bb4:
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
bb5:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 91
  SLTIU s4, s3, 1
  BNE s4, zero, bb6
  JAL zero, bb7
bb6:
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
bb7:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 34
  SLTIU s4, s3, 1
  BNE s4, zero, bb8
  JAL zero, bb9
bb8:
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
bb9:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s5, s3, 1
  BNE s5, zero, bb289
  JAL zero, bb290
bb10:
  ADD s4, s3, zero
  XORI s5, s4, 1
  SLTIU s4, s5, 1
  BNE s4, zero, bb11
  JAL zero, bb12
bb11:
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
bb12:
  LA s4, pos
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MULW s6, s5, s4
  ADD s4, s1, s6
  LW s5, 0(s4)
  XORI s4, s5, 43
  SLTIU s5, s4, 1
  BNE s5, zero, bb13
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
  XORI s4, s5, 45
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
  XORI s4, s5, 116
  SLTIU s5, s4, 1
  BNE s5, zero, bb17
  JAL zero, bb18
bb17:
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
bb18:
  LA s4, pos
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MULW s6, s5, s4
  ADD s4, s1, s6
  LW s5, 0(s4)
  XORI s4, s5, 102
  SLTIU s5, s4, 1
  BNE s5, zero, bb19
  JAL zero, bb20
bb19:
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
bb20:
  LA s4, pos
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MULW s6, s5, s4
  ADD s4, s1, s6
  LW s5, 0(s4)
  XORI s4, s5, 110
  SLTIU s5, s4, 1
  BNE s5, zero, bb21
  JAL zero, bb22
bb21:
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
bb22:
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
bb23:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 43
  SLTIU s4, s3, 1
  BNE s4, zero, bb26
  JAL zero, bb28
bb24:
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
bb25:
  XORI s3, s0, 2
  SLTIU s4, s3, 1
  BNE s4, zero, bb57
  JAL zero, bb58
bb26:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb27
bb27:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb30
  JAL zero, bb31
bb28:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 45
  SLTIU s4, s3, 1
  BNE s4, zero, bb29
  JAL zero, bb27
bb29:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb27
bb30:
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
bb31:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s5, s3, 1
  BNE s5, zero, bb293
  JAL zero, bb294
bb32:
  ADD s4, s3, zero
  XOR s5, s4, zero
  SLTIU s4, s5, 1
  BNE s4, zero, bb33
  JAL zero, bb34
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
  LA s4, pos
  LW s5, 0(s4)
  SLT s4, s5, s2
  BNE s4, zero, bb35
  JAL zero, bb37
bb35:
  LA s4, pos
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MULW s6, s5, s4
  ADD s4, s1, s6
  LW s5, 0(s4)
  SLTI s4, s5, 48
  XORI s6, s4, 1
  BNE s6, zero, bb297
  JAL zero, bb298
bb36:
  ADD s5, s4, zero
  XORI s6, s5, 1
  SLTU s5, zero, s6
  BNE s5, zero, bb37
  JAL zero, bb38
bb37:
  LA s5, pos
  LW s6, 0(s5)
  SLT s5, s6, s2
  BNE s5, zero, bb39
  JAL zero, bb40
bb38:
  LA s5, pos
  LW s6, 0(s5)
  ADDIW s5, s6, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb34
bb39:
  LA s5, pos
  LW s6, 0(s5)
  ADDI s5, zero, 4
  MULW s7, s6, s5
  ADD s5, s1, s7
  LW s6, 0(s5)
  XORI s5, s6, 46
  SLTIU s6, s5, 1
  BNE s6, zero, bb41
  JAL zero, bb40
bb40:
  LA s6, pos
  LW s7, 0(s6)
  SLT s6, s7, s2
  BNE s6, zero, bb46
  JAL zero, bb24
bb41:
  LA s5, pos
  LW s6, 0(s5)
  ADDIW s5, s6, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb42
bb42:
  LA s5, pos
  LW s6, 0(s5)
  SLT s5, s6, s2
  BNE s5, zero, bb43
  JAL zero, bb40
bb43:
  LA s5, pos
  LW s6, 0(s5)
  ADDI s5, zero, 4
  MULW s7, s6, s5
  ADD s5, s1, s7
  LW s6, 0(s5)
  SLTI s5, s6, 48
  XORI s7, s5, 1
  BNE s7, zero, bb301
  JAL zero, bb302
bb44:
  ADD s6, s5, zero
  XORI s7, s6, 1
  SLTU s6, zero, s7
  BNE s6, zero, bb40
  JAL zero, bb45
bb45:
  LA s6, pos
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, pos
  SW s6, 0(s7)
  JAL zero, bb42
bb46:
  LA s6, pos
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s8, s7, s6
  ADD s6, s1, s8
  LW s7, 0(s6)
  XORI s6, s7, 101
  SLTIU s7, s6, 1
  BNE s7, zero, bb47
  JAL zero, bb24
bb47:
  LA s6, pos
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, pos
  SW s6, 0(s7)
  SLT s7, s6, s2
  BNE s7, zero, bb48
  JAL zero, bb49
bb48:
  LA s6, pos
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s8, s7, s6
  ADD s6, s1, s8
  LW s7, 0(s6)
  XORI s6, s7, 43
  SLTIU s7, s6, 1
  BNE s7, zero, bb50
  JAL zero, bb49
bb49:
  LA s6, pos
  LW s7, 0(s6)
  SLT s6, s7, s2
  BNE s6, zero, bb51
  JAL zero, bb53
bb50:
  LA s6, pos
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, pos
  SW s6, 0(s7)
  JAL zero, bb49
bb51:
  LA s6, pos
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s8, s7, s6
  ADD s6, s1, s8
  LW s7, 0(s6)
  XORI s6, s7, 45
  SLTIU s7, s6, 1
  BNE s7, zero, bb52
  JAL zero, bb53
bb52:
  LA s6, pos
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, pos
  SW s6, 0(s7)
  JAL zero, bb53
bb53:
  LA s6, pos
  LW s7, 0(s6)
  SLT s6, s7, s2
  BNE s6, zero, bb54
  JAL zero, bb24
bb54:
  LA s6, pos
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s8, s7, s6
  ADD s6, s1, s8
  LW s7, 0(s6)
  SLTI s6, s7, 48
  XORI s8, s6, 1
  BNE s8, zero, bb305
  JAL zero, bb306
bb55:
  ADD s7, s6, zero
  XORI s8, s7, 1
  SLTU s7, zero, s8
  BNE s7, zero, bb24
  JAL zero, bb56
bb56:
  LA s7, pos
  LW s8, 0(s7)
  ADDIW s7, s8, 1
  LA s8, pos
  SW s7, 0(s8)
  JAL zero, bb53
bb57:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb59
bb58:
  XORI s3, s0, 3
  SLTIU s4, s3, 1
  BNE s4, zero, bb69
  JAL zero, bb70
bb59:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  BNE s3, zero, bb60
  JAL zero, bb61
bb60:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 34
  SLTIU s4, s3, 1
  BNE s4, zero, bb61
  JAL zero, bb62
bb61:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb65
  JAL zero, bb66
bb62:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 92
  SLTIU s4, s3, 1
  BNE s4, zero, bb63
  JAL zero, bb64
bb63:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 2
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb59
bb64:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb59
bb65:
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
bb66:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 34
  SLTU s4, zero, s3
  BNE s4, zero, bb67
  JAL zero, bb68
bb67:
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
bb68:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb24
bb69:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb153
bb70:
  XORI s3, s0, 4
  SLTIU s4, s3, 1
  BNE s4, zero, bb82
  JAL zero, bb83
bb71:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 93
  SLTIU s4, s3, 1
  BNE s4, zero, bb73
  JAL zero, bb72
bb72:
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb74
  JAL zero, bb163
bb73:
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
bb74:
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
bb75:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 44
  SLTIU s4, s3, 1
  BNE s4, zero, bb76
  JAL zero, bb191
bb76:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb172
bb77:
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
bb78:
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
bb79:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 93
  SLTU s4, zero, s3
  BNE s4, zero, bb80
  JAL zero, bb81
bb80:
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
bb81:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb24
bb82:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb201
bb83:
  XORI s3, s0, 5
  SLTIU s4, s3, 1
  BNE s4, zero, bb105
  JAL zero, bb106
bb84:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 125
  SLTIU s4, s3, 1
  BNE s4, zero, bb86
  JAL zero, bb85
bb85:
  ADDI a0, zero, 2
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb87
  JAL zero, bb211
bb86:
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
bb87:
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
bb88:
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
bb89:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 58
  SLTU s4, zero, s3
  BNE s4, zero, bb90
  JAL zero, bb91
bb90:
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
bb91:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb221
bb92:
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
bb93:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 44
  SLTIU s4, s3, 1
  BNE s4, zero, bb94
  JAL zero, bb279
bb94:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb240
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
bb97:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 58
  SLTU s4, zero, s3
  BNE s4, zero, bb98
  JAL zero, bb99
bb98:
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
bb99:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb260
bb100:
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
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 125
  SLTU s4, zero, s3
  BNE s4, zero, bb103
  JAL zero, bb104
bb103:
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
bb104:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb24
bb105:
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
  BNE s6, zero, bb107
  JAL zero, bb108
bb106:
  XORI s3, s0, 6
  SLTIU s4, s3, 1
  BNE s4, zero, bb117
  JAL zero, bb118
bb107:
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
bb108:
  LA s6, pos
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s8, s7, s6
  ADD s6, s1, s8
  LW s7, 0(s6)
  LW s6, 40(sp)
  XOR s8, s7, s6
  SLTU s6, zero, s8
  BNE s6, zero, bb109
  JAL zero, bb110
bb109:
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
bb110:
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
  BNE s6, zero, bb111
  JAL zero, bb112
bb111:
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
bb112:
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
  BNE s3, zero, bb113
  JAL zero, bb114
bb113:
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
bb114:
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
  BNE s3, zero, bb115
  JAL zero, bb116
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
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 4
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb24
bb117:
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
  BNE s7, zero, bb119
  JAL zero, bb120
bb118:
  XORI s3, s0, 7
  SLTIU s4, s3, 1
  BNE s4, zero, bb131
  JAL zero, bb132
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
  LA s7, pos
  LW s8, 0(s7)
  ADDI s7, zero, 4
  MULW s9, s8, s7
  ADD s7, s1, s9
  LW s8, 0(s7)
  LW s7, 16(sp)
  XOR s9, s8, s7
  SLTU s7, zero, s9
  BNE s7, zero, bb121
  JAL zero, bb122
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
  BNE s7, zero, bb123
  JAL zero, bb124
bb123:
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
bb124:
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
  BNE s3, zero, bb125
  JAL zero, bb126
bb125:
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
bb126:
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
  BNE s3, zero, bb127
  JAL zero, bb128
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
  BNE s3, zero, bb129
  JAL zero, bb130
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
  ADDIW s3, s4, 5
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb24
bb131:
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
  BNE s6, zero, bb133
  JAL zero, bb134
bb132:
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
  LA s6, pos
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s8, s7, s6
  ADD s6, s1, s8
  LW s7, 0(s6)
  LW s6, 0(sp)
  XOR s8, s7, s6
  SLTU s6, zero, s8
  BNE s6, zero, bb135
  JAL zero, bb136
bb135:
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
bb136:
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
  BNE s6, zero, bb137
  JAL zero, bb138
bb137:
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
bb138:
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
  BNE s3, zero, bb139
  JAL zero, bb140
bb139:
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
bb140:
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
  BNE s3, zero, bb141
  JAL zero, bb142
bb141:
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
bb142:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 4
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb24
bb143:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb144
  JAL zero, bb145
bb144:
  XOR s3, s0, zero
  SLTIU s4, s3, 1
  BNE s4, zero, bb2
  JAL zero, bb3
bb145:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s4, s3, 1
  BNE s4, zero, bb146
  JAL zero, bb147
bb146:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
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
  XORI s3, s4, 9
  SLTIU s4, s3, 1
  BNE s4, zero, bb148
  JAL zero, bb149
bb148:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb143
bb149:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb150
  JAL zero, bb151
bb150:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb143
bb151:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 13
  SLTIU s4, s3, 1
  BNE s4, zero, bb152
  JAL zero, bb144
bb152:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb143
bb153:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb154
  JAL zero, bb155
bb154:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  BNE s3, zero, bb71
  JAL zero, bb72
bb155:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s4, s3, 1
  BNE s4, zero, bb156
  JAL zero, bb157
bb156:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb153
bb157:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 9
  SLTIU s4, s3, 1
  BNE s4, zero, bb158
  JAL zero, bb159
bb158:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb153
bb159:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb160
  JAL zero, bb161
bb160:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb153
bb161:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 13
  SLTIU s4, s3, 1
  BNE s4, zero, bb162
  JAL zero, bb154
bb162:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb153
bb163:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb75
  JAL zero, bb164
bb164:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s4, s3, 1
  BNE s4, zero, bb165
  JAL zero, bb166
bb165:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb163
bb166:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 9
  SLTIU s4, s3, 1
  BNE s4, zero, bb167
  JAL zero, bb168
bb167:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb163
bb168:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb169
  JAL zero, bb170
bb169:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb163
bb170:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 13
  SLTIU s4, s3, 1
  BNE s4, zero, bb171
  JAL zero, bb75
bb171:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb163
bb172:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb173
  JAL zero, bb174
bb173:
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb77
  JAL zero, bb182
bb174:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s4, s3, 1
  BNE s4, zero, bb175
  JAL zero, bb176
bb175:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb172
bb176:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 9
  SLTIU s4, s3, 1
  BNE s4, zero, bb177
  JAL zero, bb178
bb177:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb172
bb178:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb179
  JAL zero, bb180
bb179:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb172
bb180:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 13
  SLTIU s4, s3, 1
  BNE s4, zero, bb181
  JAL zero, bb173
bb181:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb172
bb182:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb75
  JAL zero, bb183
bb183:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s4, s3, 1
  BNE s4, zero, bb184
  JAL zero, bb185
bb184:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb182
bb185:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 9
  SLTIU s4, s3, 1
  BNE s4, zero, bb186
  JAL zero, bb187
bb186:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb182
bb187:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb188
  JAL zero, bb189
bb188:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb182
bb189:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 13
  SLTIU s4, s3, 1
  BNE s4, zero, bb190
  JAL zero, bb75
bb190:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb182
bb191:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb192
  JAL zero, bb193
bb192:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb78
  JAL zero, bb79
bb193:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s4, s3, 1
  BNE s4, zero, bb194
  JAL zero, bb195
bb194:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb191
bb195:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 9
  SLTIU s4, s3, 1
  BNE s4, zero, bb196
  JAL zero, bb197
bb196:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb191
bb197:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb198
  JAL zero, bb199
bb198:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb191
bb199:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 13
  SLTIU s4, s3, 1
  BNE s4, zero, bb200
  JAL zero, bb192
bb200:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb191
bb201:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb202
  JAL zero, bb203
bb202:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  BNE s3, zero, bb84
  JAL zero, bb85
bb203:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s4, s3, 1
  BNE s4, zero, bb204
  JAL zero, bb205
bb204:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb201
bb205:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 9
  SLTIU s4, s3, 1
  BNE s4, zero, bb206
  JAL zero, bb207
bb206:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb201
bb207:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb208
  JAL zero, bb209
bb208:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb201
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
  JAL zero, bb202
bb210:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb201
bb211:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb212
  JAL zero, bb213
bb212:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb88
  JAL zero, bb89
bb213:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s4, s3, 1
  BNE s4, zero, bb214
  JAL zero, bb215
bb214:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb211
bb215:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 9
  SLTIU s4, s3, 1
  BNE s4, zero, bb216
  JAL zero, bb217
bb216:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb211
bb217:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb218
  JAL zero, bb219
bb218:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb211
bb219:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 13
  SLTIU s4, s3, 1
  BNE s4, zero, bb220
  JAL zero, bb212
bb220:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb211
bb221:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb222
  JAL zero, bb223
bb222:
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb92
  JAL zero, bb231
bb223:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s4, s3, 1
  BNE s4, zero, bb224
  JAL zero, bb225
bb224:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb221
bb225:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 9
  SLTIU s4, s3, 1
  BNE s4, zero, bb226
  JAL zero, bb227
bb226:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb221
bb227:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb228
  JAL zero, bb229
bb228:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb221
bb229:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 13
  SLTIU s4, s3, 1
  BNE s4, zero, bb230
  JAL zero, bb222
bb230:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb221
bb231:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb93
  JAL zero, bb232
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
  JAL zero, bb234
bb233:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb231
bb234:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 9
  SLTIU s4, s3, 1
  BNE s4, zero, bb235
  JAL zero, bb236
bb235:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb231
bb236:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb237
  JAL zero, bb238
bb237:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb231
bb238:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 13
  SLTIU s4, s3, 1
  BNE s4, zero, bb239
  JAL zero, bb93
bb239:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb231
bb240:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb241
  JAL zero, bb242
bb241:
  ADDI a0, zero, 2
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb95
  JAL zero, bb250
bb242:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s4, s3, 1
  BNE s4, zero, bb243
  JAL zero, bb244
bb243:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb240
bb244:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 9
  SLTIU s4, s3, 1
  BNE s4, zero, bb245
  JAL zero, bb246
bb245:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb240
bb246:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb247
  JAL zero, bb248
bb247:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb240
bb248:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 13
  SLTIU s4, s3, 1
  BNE s4, zero, bb249
  JAL zero, bb241
bb249:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb240
bb250:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb251
  JAL zero, bb252
bb251:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb96
  JAL zero, bb97
bb252:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s4, s3, 1
  BNE s4, zero, bb253
  JAL zero, bb254
bb253:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb250
bb254:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 9
  SLTIU s4, s3, 1
  BNE s4, zero, bb255
  JAL zero, bb256
bb255:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb250
bb256:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb257
  JAL zero, bb258
bb257:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb250
bb258:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 13
  SLTIU s4, s3, 1
  BNE s4, zero, bb259
  JAL zero, bb251
bb259:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb250
bb260:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb261
  JAL zero, bb262
bb261:
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb100
  JAL zero, bb270
bb262:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s4, s3, 1
  BNE s4, zero, bb263
  JAL zero, bb264
bb263:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb260
bb264:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 9
  SLTIU s4, s3, 1
  BNE s4, zero, bb265
  JAL zero, bb266
bb265:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb260
bb266:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb267
  JAL zero, bb268
bb267:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb260
bb268:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 13
  SLTIU s4, s3, 1
  BNE s4, zero, bb269
  JAL zero, bb261
bb269:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb260
bb270:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb93
  JAL zero, bb271
bb271:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s4, s3, 1
  BNE s4, zero, bb272
  JAL zero, bb273
bb272:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb270
bb273:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 9
  SLTIU s4, s3, 1
  BNE s4, zero, bb274
  JAL zero, bb275
bb274:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb270
bb275:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb276
  JAL zero, bb277
bb276:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb270
bb277:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 13
  SLTIU s4, s3, 1
  BNE s4, zero, bb278
  JAL zero, bb93
bb278:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb270
bb279:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb280
  JAL zero, bb281
bb280:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb101
  JAL zero, bb102
bb281:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s4, s3, 1
  BNE s4, zero, bb282
  JAL zero, bb283
bb282:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb279
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
  JAL zero, bb285
bb284:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb279
bb285:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb286
  JAL zero, bb287
bb286:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb279
bb287:
  LA s3, pos
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s1, s5
  LW s4, 0(s3)
  XORI s3, s4, 13
  SLTIU s4, s3, 1
  BNE s4, zero, bb288
  JAL zero, bb280
bb288:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb279
bb289:
  ADDI s3, zero, 57
  SLT s5, s3, s4
  XORI s3, s5, 1
  BNE s3, zero, bb291
  JAL zero, bb292
bb290:
  ADD s3, zero, zero
  JAL zero, bb10
bb291:
  ADDI s3, zero, 1
  JAL zero, bb10
bb292:
  ADD s3, zero, zero
  JAL zero, bb10
bb293:
  ADDI s3, zero, 57
  SLT s5, s3, s4
  XORI s3, s5, 1
  BNE s3, zero, bb295
  JAL zero, bb296
bb294:
  ADD s3, zero, zero
  JAL zero, bb32
bb295:
  ADDI s3, zero, 1
  JAL zero, bb32
bb296:
  ADD s3, zero, zero
  JAL zero, bb32
bb297:
  ADDI s4, zero, 57
  SLT s6, s4, s5
  XORI s4, s6, 1
  BNE s4, zero, bb299
  JAL zero, bb300
bb298:
  ADD s4, zero, zero
  JAL zero, bb36
bb299:
  ADDI s4, zero, 1
  JAL zero, bb36
bb300:
  ADD s4, zero, zero
  JAL zero, bb36
bb301:
  ADDI s5, zero, 57
  SLT s7, s5, s6
  XORI s5, s7, 1
  BNE s5, zero, bb303
  JAL zero, bb304
bb302:
  ADD s5, zero, zero
  JAL zero, bb44
bb303:
  ADDI s5, zero, 1
  JAL zero, bb44
bb304:
  ADD s5, zero, zero
  JAL zero, bb44
bb305:
  ADDI s6, zero, 57
  SLT s8, s6, s7
  XORI s6, s8, 1
  BNE s6, zero, bb307
  JAL zero, bb308
bb306:
  ADD s6, zero, zero
  JAL zero, bb55
bb307:
  ADDI s6, zero, 1
  JAL zero, bb55
bb308:
  ADD s6, zero, zero
  JAL zero, bb55
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
  JAL zero, bb310
bb310:
  ADD s0, s2, zero
  ADD s3, s1, zero
  XORI s4, s0, 35
  SLTU s5, zero, s4
  BNE s5, zero, bb311
  JAL zero, bb314
bb311:
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
  JAL zero, bb310
bb312:
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
bb313:
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
bb314:
  LA s0, pos
  LW s1, 0(s0)
  SLT s0, s1, s3
  XORI s1, s0, 1
  BNE s1, zero, bb315
  JAL zero, bb316
bb315:
  ADD a0, zero, zero
  LA s0, buffer
  ADD a1, s0, zero
  ADD a2, s3, zero
  CALL detect_item
  ADD s0, a0, zero
  JAL zero, bb324
bb316:
  LA s0, pos
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, buffer
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 32
  SLTIU s0, s1, 1
  BNE s0, zero, bb317
  JAL zero, bb318
bb317:
  LA s0, pos
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, pos
  SW s0, 0(s1)
  JAL zero, bb314
bb318:
  LA s0, pos
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, buffer
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 9
  SLTIU s0, s1, 1
  BNE s0, zero, bb319
  JAL zero, bb320
bb319:
  LA s0, pos
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, pos
  SW s0, 0(s1)
  JAL zero, bb314
bb320:
  LA s0, pos
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, buffer
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 10
  SLTIU s0, s1, 1
  BNE s0, zero, bb321
  JAL zero, bb322
bb321:
  LA s0, pos
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, pos
  SW s0, 0(s1)
  JAL zero, bb314
bb322:
  LA s0, pos
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, buffer
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 13
  SLTIU s0, s1, 1
  BNE s0, zero, bb323
  JAL zero, bb315
bb323:
  LA s0, pos
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, pos
  SW s0, 0(s1)
  JAL zero, bb314
bb324:
  LA s1, pos
  LW s2, 0(s1)
  SLT s1, s2, s3
  XORI s2, s1, 1
  BNE s2, zero, bb325
  JAL zero, bb326
bb325:
  XOR s1, s0, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb312
  JAL zero, bb313
bb326:
  LA s1, pos
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s4, s2, s1
  LA s1, buffer
  ADD s2, s1, s4
  LW s1, 0(s2)
  XORI s2, s1, 32
  SLTIU s1, s2, 1
  BNE s1, zero, bb327
  JAL zero, bb328
bb327:
  LA s1, pos
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, pos
  SW s1, 0(s2)
  JAL zero, bb324
bb328:
  LA s1, pos
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s4, s2, s1
  LA s1, buffer
  ADD s2, s1, s4
  LW s1, 0(s2)
  XORI s2, s1, 9
  SLTIU s1, s2, 1
  BNE s1, zero, bb329
  JAL zero, bb330
bb329:
  LA s1, pos
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, pos
  SW s1, 0(s2)
  JAL zero, bb324
bb330:
  LA s1, pos
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s4, s2, s1
  LA s1, buffer
  ADD s2, s1, s4
  LW s1, 0(s2)
  XORI s2, s1, 10
  SLTIU s1, s2, 1
  BNE s1, zero, bb331
  JAL zero, bb332
bb331:
  LA s1, pos
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, pos
  SW s1, 0(s2)
  JAL zero, bb324
bb332:
  LA s1, pos
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s4, s2, s1
  LA s1, buffer
  ADD s2, s1, s4
  LW s1, 0(s2)
  XORI s2, s1, 13
  SLTIU s1, s2, 1
  BNE s1, zero, bb333
  JAL zero, bb325
bb333:
  LA s1, pos
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, pos
  SW s1, 0(s2)
  JAL zero, bb324
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
  JAL zero, bb335
bb335:
  LA s2, pos
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb336
  JAL zero, bb337
bb336:
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb337:
  LA s2, pos
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  ADD s2, s0, s4
  LW s3, 0(s2)
  XORI s2, s3, 32
  SLTIU s3, s2, 1
  BNE s3, zero, bb338
  JAL zero, bb339
bb338:
  LA s2, pos
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, pos
  SW s2, 0(s3)
  JAL zero, bb335
bb339:
  LA s2, pos
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  ADD s2, s0, s4
  LW s3, 0(s2)
  XORI s2, s3, 9
  SLTIU s3, s2, 1
  BNE s3, zero, bb340
  JAL zero, bb341
bb340:
  LA s2, pos
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, pos
  SW s2, 0(s3)
  JAL zero, bb335
bb341:
  LA s2, pos
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  ADD s2, s0, s4
  LW s3, 0(s2)
  XORI s2, s3, 10
  SLTIU s3, s2, 1
  BNE s3, zero, bb342
  JAL zero, bb343
bb342:
  LA s2, pos
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, pos
  SW s2, 0(s3)
  JAL zero, bb335
bb343:
  LA s2, pos
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  ADD s2, s0, s4
  LW s3, 0(s2)
  XORI s2, s3, 13
  SLTIU s3, s2, 1
  BNE s3, zero, bb344
  JAL zero, bb336
bb344:
  LA s2, pos
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, pos
  SW s2, 0(s3)
  JAL zero, bb335
is_number:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  SLTI s1, s0, 48
  XORI s2, s1, 1
  BNE s2, zero, bb346
  JAL zero, bb347
bb346:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XORI s0, s2, 1
  BNE s0, zero, bb348
  JAL zero, bb349
bb347:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb348:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb349:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
