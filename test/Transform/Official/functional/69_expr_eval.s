.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss




.section .data
cur_token:
.word 0x00000000
other:
.word 0x00000000
num:
.word 0x00000000
last_char:
.word 0x00000020
.section .text
main:   # loop depth 0
  LUI t0, 1048575
  ADDIW t0, t0, 1936
  ADD sp, sp, t0
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  LA s1, last_char
  CALL getint
  ADD s0, a0, zero
  CALL getch
  LW s1, 0(s1)
  XORI s3, s1, 10
  XORI s2, s1, 32
  SLTIU s3, s3, 1
  SLTIU s2, s2, 1
  OR s2, s2, s3
  BNE s2, zero, bb109
  # implict jump to bb1
bb1:   # loop depth 0
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI s2, zero, 57
  SLT s3, s2, s1
  SLTI s2, s1, 48
  XORI s3, s3, 1
  XORI s2, s2, 1
  AND s2, s2, s3
  BNE s2, zero, bb104
  # implict jump to bb3
bb3:   # loop depth 0
  LA s1, last_char
  LA s2, other
  LA s3, last_char
  LA s4, cur_token
  LW s1, 0(s1)
  ADDI s5, zero, 1
  SW s1, 0(s2)
  CALL getch
  ADD s1, a0, zero
  SW s1, 0(s3)
  SW s5, 0(s4)
  # implict jump to bb4
bb4:   # loop depth 0
  BNE s0, zero, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  LUI t0, 1
  ADDIW t0, t0, -1936
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb6:   # loop depth 0
  # implict jump to bb7
bb7:   # loop depth 1
  ADDI s1, zero, 256
  ADD s11, s0, zero
  # implict jump to bb8
bb8:   # loop depth 2
  SLLIW s0, s1, 2
  ADDIW s1, s1, -1
  ADDI t6, sp, 104
  ADD s0, t6, s0
  SW zero, -4(s0)
  BNE s1, zero, bb103
  # implict jump to bb9
bb9:   # loop depth 1
  ADDI s0, zero, 256
  # implict jump to bb10
bb10:   # loop depth 2
  SLLIW s1, s0, 2
  ADDIW s0, s0, -1
  ADDI t6, sp, 1128
  ADD s1, t6, s1
  SW zero, -4(s1)
  BNE s0, zero, bb102
  # implict jump to bb11
bb11:   # loop depth 1
  LA s0, cur_token
  LW s0, 0(s0)
  BNE s0, zero, bb101
  # implict jump to bb12
bb12:   # loop depth 1
  LA s0, num
  LA s3, last_char
  LW s0, 0(s0)
  LW s1, 104(sp)
  SLLIW s2, s1, 2
  ADDIW s1, s1, 1
  ADDI t6, sp, 104
  ADD s2, t6, s2
  SW s1, 104(sp)
  SW s0, 4(s2)
  LW s0, 0(s3)
  XORI s2, s0, 10
  XORI s1, s0, 32
  SLTIU s2, s2, 1
  SLTIU s1, s1, 1
  OR s1, s1, s2
  BNE s1, zero, bb99
  # implict jump to bb13
bb13:   # loop depth 1
  # implict jump to bb14
bb14:   # loop depth 1
  ADDI s1, zero, 57
  SLT s2, s1, s0
  SLTI s1, s0, 48
  XORI s2, s2, 1
  XORI s1, s1, 1
  AND s1, s1, s2
  BNE s1, zero, bb94
  # implict jump to bb15
bb15:   # loop depth 1
  LA s0, last_char
  LA s1, other
  LA s2, last_char
  LA s3, cur_token
  LW s0, 0(s0)
  ADDI s4, zero, 1
  SW s0, 0(s1)
  CALL getch
  ADD s0, a0, zero
  SW s0, 0(s2)
  SW s4, 0(s3)
  # implict jump to bb16
bb16:   # loop depth 1
  ADD s4, zero, zero
  ADD s1, zero, zero
  ADD s0, zero, zero
  # implict jump to bb17
bb17:   # loop depth 2
  LA s2, cur_token
  ADD s10, s4, zero
  LW s2, 0(s2)
  XORI s2, s2, 1
  BEQ s2, zero, bb43
  # implict jump to bb18
bb18:   # loop depth 2
  LA s0, last_char
  LW s0, 0(s0)
  XORI s2, s0, 10
  XORI s1, s0, 32
  SLTIU s2, s2, 1
  SLTIU s1, s1, 1
  OR s1, s1, s2
  BNE s1, zero, bb42
  # implict jump to bb19
bb19:   # loop depth 1
  ADDI s2, zero, 57
  SLTI s1, s0, 48
  SLT s2, s2, s0
  XORI s1, s1, 1
  XORI s2, s2, 1
  AND s1, s1, s2
  BNE s1, zero, bb37
  # implict jump to bb20
bb20:   # loop depth 1
  LA s0, last_char
  LA s1, other
  LA s2, last_char
  LA s3, cur_token
  LW s0, 0(s0)
  ADDI s4, zero, 1
  SW s0, 0(s1)
  CALL getch
  SW a0, 0(s2)
  SW s4, 0(s3)
  # implict jump to bb21
bb21:   # loop depth 2
  LW a0, 1128(sp)
  BNE a0, zero, bb25
  # implict jump to bb22
bb22:   # loop depth 1
  LW a0, 104(sp)
  SLLIW a0, a0, 2
  ADDI t6, sp, 104
  ADD a0, t6, a0
  LW s0, 0(a0)
  # implict jump to bb23
bb23:   # loop depth 1
  ADD a0, s0, zero
  ADDIW s0, s11, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  BNE s0, zero, bb24
  JAL zero, bb5
bb24:   # loop depth 1
  JAL zero, bb7
bb25:   # loop depth 2
  LW a0, 1128(sp)
  SLLIW s0, a0, 2
  ADDIW s1, a0, -1
  ADDI a0, sp, 1128
  ADD a0, a0, s0
  LW a0, 0(a0)
  SW s1, 1128(sp)
  XORI s4, a0, 43
  LW s0, 104(sp)
  SLLIW s1, s0, 2
  ADDIW s2, s0, -1
  ADDI t6, sp, 104
  ADD s1, t6, s1
  SLLIW s3, s2, 2
  LW s1, 0(s1)
  ADDI t6, sp, 104
  ADD s3, t6, s3
  ADDIW s5, s0, -2
  SW s2, 104(sp)
  LW s0, 0(s3)
  SW s5, 104(sp)
  BEQ s4, zero, bb36
  # implict jump to bb26
bb26:   # loop depth 2
  XORI s2, a0, 45
  BEQ s2, zero, bb35
  # implict jump to bb27
bb27:   # loop depth 2
  XORI s2, a0, 42
  BEQ s2, zero, bb34
  # implict jump to bb28
bb28:   # loop depth 2
  XORI s2, a0, 47
  BEQ s2, zero, bb33
  # implict jump to bb29
bb29:   # loop depth 2
  XORI a0, a0, 37
  BEQ a0, zero, bb32
  # implict jump to bb30
bb30:   # loop depth 2
  ADD a0, zero, zero
  # implict jump to bb31
bb31:   # loop depth 2
  LW s0, 104(sp)
  SLLIW s1, s0, 2
  ADDIW s0, s0, 1
  ADDI t6, sp, 104
  ADD s1, t6, s1
  SW s0, 104(sp)
  SW a0, 4(s1)
  JAL zero, bb21
bb32:   # loop depth 2
  REMW a0, s0, s1
  JAL zero, bb31
bb33:   # loop depth 2
  DIVW a0, s0, s1
  JAL zero, bb31
bb34:   # loop depth 2
  MULW a0, s0, s1
  JAL zero, bb31
bb35:   # loop depth 2
  SUBW a0, s0, s1
  JAL zero, bb31
bb36:   # loop depth 2
  ADDW a0, s0, s1
  JAL zero, bb31
bb37:   # loop depth 1
  LA s1, num
  ADDIW s0, s0, -48
  ADDI s2, zero, 57
  LA s3, last_char
  SW s0, 0(s1)
  CALL getch
  ADD s0, a0, zero
  SLT s2, s2, s0
  SLTI s1, s0, 48
  XORI s2, s2, 1
  XORI s1, s1, 1
  AND s1, s1, s2
  SW s0, 0(s3)
  BNE s1, zero, bb39
  # implict jump to bb38
bb38:   # loop depth 1
  LA a0, cur_token
  SW zero, 0(a0)
  JAL zero, bb21
bb39:   # loop depth 1
  # implict jump to bb40
bb40:   # loop depth 2
  LA s1, num
  ADDI s5, zero, 10
  LA s2, num
  LW s1, 0(s1)
  ADDI s4, zero, 57
  LA s3, last_char
  MULW s1, s1, s5
  ADDW s0, s1, s0
  ADDIW s0, s0, -48
  SW s0, 0(s2)
  CALL getch
  ADD s0, a0, zero
  SLT s2, s4, s0
  SLTI s1, s0, 48
  XORI s2, s2, 1
  XORI s1, s1, 1
  AND s1, s1, s2
  SW s0, 0(s3)
  BNE s1, zero, bb41
  JAL zero, bb38
bb41:   # loop depth 2
  JAL zero, bb40
bb42:   # loop depth 2
  LA s1, last_char
  CALL getch
  ADD s0, a0, zero
  SW s0, 0(s1)
  JAL zero, bb18
bb43:   # loop depth 2
  LA s2, other
  LW s2, 0(s2)
  XORI s4, s2, 45
  XORI s3, s2, 43
  SLTIU s4, s4, 1
  SLTIU s3, s3, 1
  OR s3, s3, s4
  BNE s3, zero, bb93
  # implict jump to bb44
bb44:   # loop depth 2
  XORI s4, s2, 47
  XORI s3, s2, 42
  XORI s5, s2, 37
  SLTIU s4, s4, 1
  SLTIU s3, s3, 1
  SLTIU s5, s5, 1
  OR s3, s3, s4
  OR s3, s3, s5
  BNE s3, zero, bb92
  # implict jump to bb45
bb45:   # loop depth 2
  ADD s3, zero, zero
  # implict jump to bb46
bb46:   # loop depth 2
  SLTU s4, zero, s3
  BEQ s4, zero, bb18
  # implict jump to bb47
bb47:   # loop depth 3
  LA s4, last_char
  LW s4, 0(s4)
  XORI s6, s4, 10
  XORI s5, s4, 32
  SLTIU s6, s6, 1
  SLTIU s5, s5, 1
  OR s5, s5, s6
  BNE s5, zero, bb91
  # implict jump to bb48
bb48:   # loop depth 2
  ADDI s6, zero, 57
  SLTI s5, s4, 48
  SLT s6, s6, s4
  XORI s5, s5, 1
  XORI s6, s6, 1
  AND s5, s5, s6
  BNE s5, zero, bb86
  # implict jump to bb49
bb49:   # loop depth 2
  LA s4, last_char
  LA s5, other
  LA s6, last_char
  LA s7, cur_token
  LW s4, 0(s4)
  ADDI s8, zero, 1
  SW s4, 0(s5)
  CALL getch
  ADD s4, a0, zero
  SW s4, 0(s6)
  SW s8, 0(s7)
  # implict jump to bb50
bb50:   # loop depth 2
  ADD s4, s10, zero
  # implict jump to bb51
bb51:   # loop depth 3
  LW s5, 1128(sp)
  BNE s5, zero, bb80
  # implict jump to bb52
bb52:   # loop depth 3
  ADD s5, zero, zero
  # implict jump to bb53
bb53:   # loop depth 3
  BNE s5, zero, bb68
  # implict jump to bb54
bb54:   # loop depth 2
  LW s3, 1128(sp)
  LA s6, cur_token
  SLLIW s5, s3, 2
  ADDIW s3, s3, 1
  ADDI t6, sp, 1128
  ADD s5, t6, s5
  SW s3, 1128(sp)
  SW s2, 4(s5)
  LW s2, 0(s6)
  BNE s2, zero, bb67
  # implict jump to bb55
bb55:   # loop depth 2
  LA s2, num
  LA s6, last_char
  LW s2, 0(s2)
  LW s3, 104(sp)
  SLLIW s5, s3, 2
  ADDIW s3, s3, 1
  ADDI t6, sp, 104
  ADD s5, t6, s5
  SW s3, 104(sp)
  SW s2, 4(s5)
  LW s2, 0(s6)
  XORI s5, s2, 10
  XORI s3, s2, 32
  SLTIU s5, s5, 1
  SLTIU s3, s3, 1
  OR s3, s3, s5
  BNE s3, zero, bb65
  # implict jump to bb56
bb56:   # loop depth 2
  # implict jump to bb57
bb57:   # loop depth 2
  ADDI s3, zero, 57
  SLT s5, s3, s2
  SLTI s3, s2, 48
  XORI s5, s5, 1
  XORI s3, s3, 1
  AND s3, s3, s5
  BNE s3, zero, bb60
  # implict jump to bb58
bb58:   # loop depth 2
  LA s2, last_char
  LA s3, other
  LA s5, last_char
  LA s6, cur_token
  LW s2, 0(s2)
  ADDI s7, zero, 1
  SW s2, 0(s3)
  CALL getch
  ADD s2, a0, zero
  SW s2, 0(s5)
  SW s7, 0(s6)
  # implict jump to bb59
bb59:   # loop depth 2
  JAL zero, bb17
bb60:   # loop depth 2
  LA s3, num
  ADDIW s2, s2, -48
  ADDI s5, zero, 57
  LA s6, last_char
  SW s2, 0(s3)
  CALL getch
  ADD s2, a0, zero
  SLT s5, s5, s2
  SLTI s3, s2, 48
  XORI s5, s5, 1
  XORI s3, s3, 1
  AND s3, s3, s5
  SW s2, 0(s6)
  BNE s3, zero, bb62
  # implict jump to bb61
bb61:   # loop depth 2
  LA s2, cur_token
  SW zero, 0(s2)
  JAL zero, bb59
bb62:   # loop depth 2
  # implict jump to bb63
bb63:   # loop depth 3
  LA s3, num
  ADDI s5, zero, 10
  LA s8, num
  LW s3, 0(s3)
  ADDI s7, zero, 57
  LA s6, last_char
  MULW s3, s3, s5
  ADDW s2, s3, s2
  ADDIW s2, s2, -48
  SW s2, 0(s8)
  CALL getch
  ADD s2, a0, zero
  SLT s5, s7, s2
  SLTI s3, s2, 48
  XORI s5, s5, 1
  XORI s3, s3, 1
  AND s3, s3, s5
  SW s2, 0(s6)
  BNE s3, zero, bb64
  JAL zero, bb61
bb64:   # loop depth 3
  JAL zero, bb63
bb65:   # loop depth 3
  CALL getch
  LA s6, last_char
  ADD s2, a0, zero
  XORI s5, s2, 10
  XORI s3, s2, 32
  SLTIU s5, s5, 1
  SLTIU s3, s3, 1
  OR s3, s3, s5
  SW s2, 0(s6)
  BNE s3, zero, bb65
  # implict jump to bb66
bb66:   # loop depth 2
  JAL zero, bb57
bb67:   # loop depth 1
  ADDI a0, zero, 112
  ADDI s0, zero, -1
  CALL putch
  ADDI a0, zero, 97
  CALL putch
  ADDI a0, zero, 110
  CALL putch
  ADDI a0, zero, 105
  CALL putch
  ADDI a0, zero, 99
  CALL putch
  ADDI a0, zero, 33
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb23
bb68:   # loop depth 3
  LW s0, 1128(sp)
  SLLIW s1, s0, 2
  ADDIW s5, s0, -1
  ADDI t6, sp, 1128
  ADD s0, t6, s1
  LW s4, 0(s0)
  SW s5, 1128(sp)
  XORI s5, s4, 43
  LW s0, 104(sp)
  SLLIW s1, s0, 2
  ADDIW s6, s0, -1
  ADDI t6, sp, 104
  ADD s1, t6, s1
  SLLIW s7, s6, 2
  LW s1, 0(s1)
  ADDI t6, sp, 104
  ADD s7, t6, s7
  ADDIW s8, s0, -2
  SW s6, 104(sp)
  LW s0, 0(s7)
  SW s8, 104(sp)
  BEQ s5, zero, bb79
  # implict jump to bb69
bb69:   # loop depth 3
  XORI s5, s4, 45
  BEQ s5, zero, bb78
  # implict jump to bb70
bb70:   # loop depth 3
  XORI s5, s4, 42
  BEQ s5, zero, bb77
  # implict jump to bb71
bb71:   # loop depth 3
  XORI s5, s4, 47
  BEQ s5, zero, bb76
  # implict jump to bb72
bb72:   # loop depth 3
  XORI s5, s4, 37
  BEQ s5, zero, bb75
  # implict jump to bb73
bb73:   # loop depth 3
  ADD s5, zero, zero
  # implict jump to bb74
bb74:   # loop depth 3
  LW s6, 104(sp)
  SLLIW s7, s6, 2
  ADDIW s6, s6, 1
  ADDI t6, sp, 104
  ADD s7, t6, s7
  SW s6, 104(sp)
  SW s5, 4(s7)
  JAL zero, bb51
bb75:   # loop depth 3
  REMW s5, s0, s1
  JAL zero, bb74
bb76:   # loop depth 3
  DIVW s5, s0, s1
  JAL zero, bb74
bb77:   # loop depth 3
  MULW s5, s0, s1
  JAL zero, bb74
bb78:   # loop depth 3
  SUBW s5, s0, s1
  JAL zero, bb74
bb79:   # loop depth 3
  ADDW s5, s0, s1
  JAL zero, bb74
bb80:   # loop depth 3
  SLLIW s5, s5, 2
  ADDI t6, sp, 1128
  ADD s5, t6, s5
  LW s5, 0(s5)
  XORI s7, s5, 45
  XORI s6, s5, 43
  SLTIU s7, s7, 1
  SLTIU s6, s6, 1
  OR s6, s6, s7
  BNE s6, zero, bb85
  # implict jump to bb81
bb81:   # loop depth 3
  XORI s6, s5, 47
  XORI s7, s5, 42
  XORI s8, s5, 37
  SLTIU s6, s6, 1
  SLTIU s5, s7, 1
  SLTIU s7, s8, 1
  OR s5, s5, s6
  OR s5, s5, s7
  BNE s5, zero, bb84
  # implict jump to bb82
bb82:   # loop depth 3
  ADD s5, zero, zero
  # implict jump to bb83
bb83:   # loop depth 3
  SLT s5, s5, s3
  XORI s5, s5, 1
  JAL zero, bb53
bb84:   # loop depth 3
  ADDI s5, zero, 20
  JAL zero, bb83
bb85:   # loop depth 3
  ADDI s5, zero, 10
  JAL zero, bb83
bb86:   # loop depth 2
  LA s5, num
  ADDIW s4, s4, -48
  ADDI s7, zero, 57
  LA s6, last_char
  SW s4, 0(s5)
  CALL getch
  ADD s4, a0, zero
  SLT s7, s7, s4
  SLTI s5, s4, 48
  XORI s7, s7, 1
  XORI s5, s5, 1
  AND s5, s5, s7
  SW s4, 0(s6)
  BNE s5, zero, bb88
  # implict jump to bb87
bb87:   # loop depth 2
  LA s4, cur_token
  SW zero, 0(s4)
  JAL zero, bb50
bb88:   # loop depth 2
  # implict jump to bb89
bb89:   # loop depth 3
  LA s5, num
  ADDI s6, zero, 10
  LA s7, num
  LW s5, 0(s5)
  ADDI s9, zero, 57
  LA s8, last_char
  MULW s5, s5, s6
  ADDW s4, s5, s4
  ADDIW s4, s4, -48
  SW s4, 0(s7)
  CALL getch
  ADD s4, a0, zero
  SLT s6, s9, s4
  SLTI s5, s4, 48
  XORI s6, s6, 1
  XORI s5, s5, 1
  AND s5, s5, s6
  SW s4, 0(s8)
  BNE s5, zero, bb90
  JAL zero, bb87
bb90:   # loop depth 3
  JAL zero, bb89
bb91:   # loop depth 3
  LA s5, last_char
  CALL getch
  ADD s4, a0, zero
  SW s4, 0(s5)
  JAL zero, bb47
bb92:   # loop depth 2
  ADDI s3, zero, 20
  JAL zero, bb46
bb93:   # loop depth 2
  ADDI s3, zero, 10
  JAL zero, bb46
bb94:   # loop depth 1
  LA s1, num
  ADDIW s0, s0, -48
  ADDI s2, zero, 57
  LA s3, last_char
  SW s0, 0(s1)
  CALL getch
  ADD s0, a0, zero
  SLT s2, s2, s0
  SLTI s1, s0, 48
  XORI s2, s2, 1
  XORI s1, s1, 1
  AND s1, s1, s2
  SW s0, 0(s3)
  BNE s1, zero, bb96
  # implict jump to bb95
bb95:   # loop depth 1
  LA s0, cur_token
  SW zero, 0(s0)
  JAL zero, bb16
bb96:   # loop depth 1
  # implict jump to bb97
bb97:   # loop depth 2
  LA s1, num
  ADDI s5, zero, 10
  LA s2, num
  LW s1, 0(s1)
  ADDI s4, zero, 57
  LA s3, last_char
  MULW s1, s1, s5
  ADDW s0, s1, s0
  ADDIW s0, s0, -48
  SW s0, 0(s2)
  CALL getch
  ADD s0, a0, zero
  SLT s2, s4, s0
  SLTI s1, s0, 48
  XORI s2, s2, 1
  XORI s1, s1, 1
  AND s1, s1, s2
  SW s0, 0(s3)
  BNE s1, zero, bb98
  JAL zero, bb95
bb98:   # loop depth 2
  JAL zero, bb97
bb99:   # loop depth 2
  CALL getch
  LA s3, last_char
  ADD s0, a0, zero
  XORI s2, s0, 10
  XORI s1, s0, 32
  SLTIU s2, s2, 1
  SLTIU s1, s1, 1
  OR s1, s1, s2
  SW s0, 0(s3)
  BNE s1, zero, bb99
  # implict jump to bb100
bb100:   # loop depth 1
  JAL zero, bb14
bb101:   # loop depth 1
  ADDI a0, zero, 112
  ADDI s0, zero, -1
  CALL putch
  ADDI a0, zero, 97
  CALL putch
  ADDI a0, zero, 110
  CALL putch
  ADDI a0, zero, 105
  CALL putch
  ADDI a0, zero, 99
  CALL putch
  ADDI a0, zero, 33
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb23
bb102:   # loop depth 2
  JAL zero, bb10
bb103:   # loop depth 2
  JAL zero, bb8
bb104:   # loop depth 0
  LA s2, num
  ADDIW s1, s1, -48
  ADDI s3, zero, 57
  LA s4, last_char
  SW s1, 0(s2)
  CALL getch
  ADD s1, a0, zero
  SLT s3, s3, s1
  SLTI s2, s1, 48
  XORI s3, s3, 1
  XORI s2, s2, 1
  AND s2, s2, s3
  SW s1, 0(s4)
  BNE s2, zero, bb106
  # implict jump to bb105
bb105:   # loop depth 0
  LA s1, cur_token
  SW zero, 0(s1)
  JAL zero, bb4
bb106:   # loop depth 0
  # implict jump to bb107
bb107:   # loop depth 1
  LA s2, num
  ADDI s6, zero, 10
  LA s3, num
  LW s2, 0(s2)
  ADDI s5, zero, 57
  LA s4, last_char
  MULW s2, s2, s6
  ADDW s1, s2, s1
  ADDIW s1, s1, -48
  SW s1, 0(s3)
  CALL getch
  ADD s1, a0, zero
  SLT s3, s5, s1
  SLTI s2, s1, 48
  XORI s3, s3, 1
  XORI s2, s2, 1
  AND s2, s2, s3
  SW s1, 0(s4)
  BNE s2, zero, bb108
  JAL zero, bb105
bb108:   # loop depth 1
  JAL zero, bb107
bb109:   # loop depth 1
  CALL getch
  LA s4, last_char
  ADD s1, a0, zero
  XORI s3, s1, 10
  XORI s2, s1, 32
  SLTIU s3, s3, 1
  SLTIU s2, s2, 1
  OR s2, s2, s3
  SW s1, 0(s4)
  BNE s2, zero, bb109
  # implict jump to bb110
bb110:   # loop depth 0
  JAL zero, bb2
