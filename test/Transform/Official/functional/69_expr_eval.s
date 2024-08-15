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
  ADDIW t0, t0, 1952
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
  LA s5, last_char
  CALL getint
  ADD s1, a0, zero
  CALL getch
  LW a0, 0(s5)
  XORI t1, a0, 10
  XORI t0, a0, 32
  SLTIU t1, t1, 1
  SLTIU t0, t0, 1
  OR t0, t0, t1
  BNE t0, zero, bb109
  # implict jump to bb1
bb1:   # loop depth 0
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  XORI t1, t1, 1
  XORI t0, t0, 1
  LA s8, num
  LA s7, other
  LA s6, cur_token
  AND t0, t0, t1
  BNE t0, zero, bb104
  # implict jump to bb3
bb3:   # loop depth 0
  LW t0, 0(s5)
  ADDI s0, zero, 1
  SW t0, 0(s7)
  CALL getch
  SW a0, 0(s5)
  SW s0, 0(s6)
  # implict jump to bb4
bb4:   # loop depth 0
  BNE s1, zero, bb6
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
  LUI t0, 1
  ADDIW t0, t0, -1952
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb6:   # loop depth 0
  ADD t0, s1, zero
  # implict jump to bb7
bb7:   # loop depth 1
  ADDI t1, zero, 256
  ADD s10, t0, zero
  # implict jump to bb8
bb8:   # loop depth 2
  SLLIW t0, t1, 2
  ADDIW t1, t1, -1
  ADDI t6, sp, 96
  ADD t0, t6, t0
  SW zero, -4(t0)
  BNE t1, zero, bb103
  # implict jump to bb9
bb9:   # loop depth 1
  ADDI t0, zero, 256
  # implict jump to bb10
bb10:   # loop depth 2
  SLLIW t1, t0, 2
  ADDIW t0, t0, -1
  ADDI t6, sp, 1120
  ADD t1, t6, t1
  SW zero, -4(t1)
  BNE t0, zero, bb102
  # implict jump to bb11
bb11:   # loop depth 1
  LW t0, 0(s6)
  BNE t0, zero, bb101
  # implict jump to bb12
bb12:   # loop depth 1
  LW t0, 0(s8)
  LW t1, 96(sp)
  SLLIW t2, t1, 2
  ADDIW t1, t1, 1
  ADDI a0, sp, 96
  ADD t2, a0, t2
  SW t1, 96(sp)
  SW t0, 4(t2)
  LW a0, 0(s5)
  XORI t1, a0, 10
  XORI t0, a0, 32
  SLTIU t1, t1, 1
  SLTIU t0, t0, 1
  OR t0, t0, t1
  BNE t0, zero, bb99
  # implict jump to bb13
bb13:   # loop depth 1
  # implict jump to bb14
bb14:   # loop depth 1
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  XORI t1, t1, 1
  XORI t0, t0, 1
  AND t0, t0, t1
  BNE t0, zero, bb94
  # implict jump to bb15
bb15:   # loop depth 1
  LW t0, 0(s5)
  ADDI s0, zero, 1
  SW t0, 0(s7)
  CALL getch
  SW a0, 0(s5)
  SW s0, 0(s6)
  # implict jump to bb16
bb16:   # loop depth 1
  ADD t2, zero, zero
  ADD t1, zero, zero
  ADD t0, zero, zero
  # implict jump to bb17
bb17:   # loop depth 2
  LW a0, 0(s6)
  ADD s0, t0, zero
  ADD s1, t1, zero
  ADD s2, t2, zero
  XORI t0, a0, 1
  BEQ t0, zero, bb43
  # implict jump to bb18
bb18:   # loop depth 2
  LW t0, 0(s5)
  XORI t2, t0, 10
  XORI t1, t0, 32
  SLTIU t2, t2, 1
  SLTIU t1, t1, 1
  OR t1, t1, t2
  BNE t1, zero, bb42
  # implict jump to bb19
bb19:   # loop depth 1
  ADDI t2, zero, 57
  SLTI t1, t0, 48
  SLT t2, t2, t0
  XORI t1, t1, 1
  XORI t2, t2, 1
  AND t1, t1, t2
  BNE t1, zero, bb37
  # implict jump to bb20
bb20:   # loop depth 1
  LW t0, 0(s5)
  ADDI s0, zero, 1
  SW t0, 0(s7)
  CALL getch
  SW a0, 0(s5)
  SW s0, 0(s6)
  # implict jump to bb21
bb21:   # loop depth 2
  LW t0, 1120(sp)
  BNE t0, zero, bb25
  # implict jump to bb22
bb22:   # loop depth 1
  LW t0, 96(sp)
  SLLIW t0, t0, 2
  ADDI t6, sp, 96
  ADD t0, t6, t0
  LW t0, 0(t0)
  ADD s0, t0, zero
  # implict jump to bb23
bb23:   # loop depth 1
  ADD a0, s0, zero
  ADDIW s0, s10, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  BNE s0, zero, bb24
  JAL zero, bb5
bb24:   # loop depth 1
  ADD t0, s0, zero
  JAL zero, bb7
bb25:   # loop depth 2
  LW t0, 1120(sp)
  SLLIW t1, t0, 2
  ADDIW t2, t0, -1
  ADDI t0, sp, 1120
  ADD t0, t0, t1
  LW t0, 0(t0)
  SW t2, 1120(sp)
  XORI a3, t0, 43
  LW t1, 96(sp)
  SLLIW t2, t1, 2
  ADDIW a0, t1, -1
  ADDI a1, sp, 96
  ADD t2, a1, t2
  SLLIW a1, a0, 2
  LW t2, 0(t2)
  ADDI a2, sp, 96
  ADD a1, a2, a1
  ADDIW a2, t1, -2
  SW a0, 96(sp)
  LW t1, 0(a1)
  SW a2, 96(sp)
  BEQ a3, zero, bb36
  # implict jump to bb26
bb26:   # loop depth 2
  XORI a0, t0, 45
  BEQ a0, zero, bb35
  # implict jump to bb27
bb27:   # loop depth 2
  XORI a0, t0, 42
  BEQ a0, zero, bb34
  # implict jump to bb28
bb28:   # loop depth 2
  XORI a0, t0, 47
  BEQ a0, zero, bb33
  # implict jump to bb29
bb29:   # loop depth 2
  XORI t0, t0, 37
  BEQ t0, zero, bb32
  # implict jump to bb30
bb30:   # loop depth 2
  ADD t0, zero, zero
  # implict jump to bb31
bb31:   # loop depth 2
  LW t1, 96(sp)
  SLLIW t2, t1, 2
  ADDIW t1, t1, 1
  ADDI t6, sp, 96
  ADD t2, t6, t2
  SW t1, 96(sp)
  SW t0, 4(t2)
  JAL zero, bb21
bb32:   # loop depth 2
  REMW t0, t1, t2
  JAL zero, bb31
bb33:   # loop depth 2
  DIVW t0, t1, t2
  JAL zero, bb31
bb34:   # loop depth 2
  MULW t0, t1, t2
  JAL zero, bb31
bb35:   # loop depth 2
  SUBW t0, t1, t2
  JAL zero, bb31
bb36:   # loop depth 2
  ADDW t0, t1, t2
  JAL zero, bb31
bb37:   # loop depth 1
  ADDIW t0, t0, -48
  ADDI s0, zero, 57
  SW t0, 0(s8)
  CALL getch
  SLT t1, s0, a0
  SLTI t0, a0, 48
  XORI t1, t1, 1
  XORI t0, t0, 1
  AND t0, t0, t1
  SW a0, 0(s5)
  BNE t0, zero, bb39
  # implict jump to bb38
bb38:   # loop depth 1
  SW zero, 0(s6)
  JAL zero, bb21
bb39:   # loop depth 1
  # implict jump to bb40
bb40:   # loop depth 2
  LW t0, 0(s8)
  ADDI t1, zero, 10
  ADDI s0, zero, 57
  MULW t0, t0, t1
  ADDW t0, t0, a0
  ADDIW t0, t0, -48
  SW t0, 0(s8)
  CALL getch
  SLT t1, s0, a0
  SLTI t0, a0, 48
  XORI t1, t1, 1
  XORI t0, t0, 1
  AND t0, t0, t1
  SW a0, 0(s5)
  BNE t0, zero, bb41
  JAL zero, bb38
bb41:   # loop depth 2
  JAL zero, bb40
bb42:   # loop depth 2
  CALL getch
  SW a0, 0(s5)
  JAL zero, bb18
bb43:   # loop depth 2
  LW s3, 0(s7)
  XORI t1, s3, 45
  XORI t0, s3, 43
  SLTIU t1, t1, 1
  SLTIU t0, t0, 1
  OR t0, t0, t1
  BNE t0, zero, bb93
  # implict jump to bb44
bb44:   # loop depth 2
  XORI t1, s3, 47
  XORI t0, s3, 42
  XORI t2, s3, 37
  SLTIU t1, t1, 1
  SLTIU t0, t0, 1
  SLTIU t2, t2, 1
  OR t0, t0, t1
  OR t0, t0, t2
  BNE t0, zero, bb92
  # implict jump to bb45
bb45:   # loop depth 2
  ADD t0, zero, zero
  # implict jump to bb46
bb46:   # loop depth 2
  ADD s4, t0, zero
  SLTU t0, zero, s4
  BEQ t0, zero, bb18
  # implict jump to bb47
bb47:   # loop depth 3
  LW t0, 0(s5)
  XORI t2, t0, 10
  XORI t1, t0, 32
  SLTIU t2, t2, 1
  SLTIU t1, t1, 1
  OR t1, t1, t2
  BNE t1, zero, bb91
  # implict jump to bb48
bb48:   # loop depth 2
  ADDI t2, zero, 57
  SLTI t1, t0, 48
  SLT t2, t2, t0
  XORI t1, t1, 1
  XORI t2, t2, 1
  AND t1, t1, t2
  BNE t1, zero, bb86
  # implict jump to bb49
bb49:   # loop depth 2
  LW t0, 0(s5)
  ADDI s9, zero, 1
  SW t0, 0(s7)
  CALL getch
  SW a0, 0(s5)
  SW s9, 0(s6)
  # implict jump to bb50
bb50:   # loop depth 2
  ADD t2, s2, zero
  ADD t1, s1, zero
  ADD t0, s0, zero
  # implict jump to bb51
bb51:   # loop depth 3
  LW a0, 1120(sp)
  ADD s0, t0, zero
  ADD s1, t1, zero
  ADD s2, t2, zero
  BNE a0, zero, bb80
  # implict jump to bb52
bb52:   # loop depth 3
  ADD t0, zero, zero
  # implict jump to bb53
bb53:   # loop depth 3
  BNE t0, zero, bb68
  # implict jump to bb54
bb54:   # loop depth 2
  LW t0, 1120(sp)
  SLLIW t1, t0, 2
  ADDIW t0, t0, 1
  ADDI t6, sp, 1120
  ADD t1, t6, t1
  SW t0, 1120(sp)
  SW s3, 4(t1)
  LW t0, 0(s6)
  BNE t0, zero, bb67
  # implict jump to bb55
bb55:   # loop depth 2
  LW t0, 0(s8)
  LW t1, 96(sp)
  SLLIW t2, t1, 2
  ADDIW t1, t1, 1
  ADDI a0, sp, 96
  ADD t2, a0, t2
  SW t1, 96(sp)
  SW t0, 4(t2)
  LW a0, 0(s5)
  XORI t1, a0, 10
  XORI t0, a0, 32
  SLTIU t1, t1, 1
  SLTIU t0, t0, 1
  OR t0, t0, t1
  BNE t0, zero, bb65
  # implict jump to bb56
bb56:   # loop depth 2
  # implict jump to bb57
bb57:   # loop depth 2
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  XORI t1, t1, 1
  XORI t0, t0, 1
  AND t0, t0, t1
  BNE t0, zero, bb60
  # implict jump to bb58
bb58:   # loop depth 2
  LW t0, 0(s5)
  ADDI s3, zero, 1
  SW t0, 0(s7)
  CALL getch
  SW a0, 0(s5)
  SW s3, 0(s6)
  # implict jump to bb59
bb59:   # loop depth 2
  ADD t2, s2, zero
  ADD t1, s1, zero
  ADD t0, s0, zero
  JAL zero, bb17
bb60:   # loop depth 2
  ADDIW t0, a0, -48
  ADDI s3, zero, 57
  SW t0, 0(s8)
  CALL getch
  SLT t1, s3, a0
  SLTI t0, a0, 48
  XORI t1, t1, 1
  XORI t0, t0, 1
  AND t0, t0, t1
  SW a0, 0(s5)
  BNE t0, zero, bb62
  # implict jump to bb61
bb61:   # loop depth 2
  SW zero, 0(s6)
  JAL zero, bb59
bb62:   # loop depth 2
  # implict jump to bb63
bb63:   # loop depth 3
  LW t0, 0(s8)
  ADDI t1, zero, 10
  ADDI s3, zero, 57
  MULW t0, t0, t1
  ADDW t0, t0, a0
  ADDIW t0, t0, -48
  SW t0, 0(s8)
  CALL getch
  SLT t1, s3, a0
  SLTI t0, a0, 48
  XORI t1, t1, 1
  XORI t0, t0, 1
  AND t0, t0, t1
  SW a0, 0(s5)
  BNE t0, zero, bb64
  JAL zero, bb61
bb64:   # loop depth 3
  JAL zero, bb63
bb65:   # loop depth 3
  CALL getch
  XORI t1, a0, 10
  XORI t0, a0, 32
  SLTIU t1, t1, 1
  SLTIU t0, t0, 1
  OR t0, t0, t1
  SW a0, 0(s5)
  BNE t0, zero, bb65
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
  LW t0, 1120(sp)
  SLLIW t1, t0, 2
  ADDIW a0, t0, -1
  ADDI t0, sp, 1120
  ADD t0, t0, t1
  LW t2, 0(t0)
  SW a0, 1120(sp)
  XORI a3, t2, 43
  LW t0, 96(sp)
  SLLIW t1, t0, 2
  ADDIW a0, t0, -1
  ADDI a1, sp, 96
  ADD t1, a1, t1
  SLLIW a1, a0, 2
  LW t1, 0(t1)
  ADDI a2, sp, 96
  ADD a1, a2, a1
  ADDIW a2, t0, -2
  SW a0, 96(sp)
  LW t0, 0(a1)
  SW a2, 96(sp)
  BEQ a3, zero, bb79
  # implict jump to bb69
bb69:   # loop depth 3
  XORI a0, t2, 45
  BEQ a0, zero, bb78
  # implict jump to bb70
bb70:   # loop depth 3
  XORI a0, t2, 42
  BEQ a0, zero, bb77
  # implict jump to bb71
bb71:   # loop depth 3
  XORI a0, t2, 47
  BEQ a0, zero, bb76
  # implict jump to bb72
bb72:   # loop depth 3
  XORI a0, t2, 37
  BEQ a0, zero, bb75
  # implict jump to bb73
bb73:   # loop depth 3
  ADD a0, zero, zero
  # implict jump to bb74
bb74:   # loop depth 3
  LW a1, 96(sp)
  SLLIW a2, a1, 2
  ADDIW a1, a1, 1
  ADDI t6, sp, 96
  ADD a2, t6, a2
  SW a1, 96(sp)
  SW a0, 4(a2)
  JAL zero, bb51
bb75:   # loop depth 3
  REMW a0, t0, t1
  JAL zero, bb74
bb76:   # loop depth 3
  DIVW a0, t0, t1
  JAL zero, bb74
bb77:   # loop depth 3
  MULW a0, t0, t1
  JAL zero, bb74
bb78:   # loop depth 3
  SUBW a0, t0, t1
  JAL zero, bb74
bb79:   # loop depth 3
  ADDW a0, t0, t1
  JAL zero, bb74
bb80:   # loop depth 3
  SLLIW t0, a0, 2
  ADDI t2, sp, 1120
  ADD t0, t2, t0
  LW t0, 0(t0)
  XORI t2, t0, 45
  XORI t1, t0, 43
  SLTIU t2, t2, 1
  SLTIU t1, t1, 1
  OR t1, t1, t2
  BNE t1, zero, bb85
  # implict jump to bb81
bb81:   # loop depth 3
  XORI t1, t0, 47
  XORI t2, t0, 42
  XORI a0, t0, 37
  SLTIU t1, t1, 1
  SLTIU t0, t2, 1
  SLTIU t2, a0, 1
  OR t0, t0, t1
  OR t0, t0, t2
  BNE t0, zero, bb84
  # implict jump to bb82
bb82:   # loop depth 3
  ADD t0, zero, zero
  # implict jump to bb83
bb83:   # loop depth 3
  SLT t0, t0, s4
  XORI t0, t0, 1
  JAL zero, bb53
bb84:   # loop depth 3
  ADDI t0, zero, 20
  JAL zero, bb83
bb85:   # loop depth 3
  ADDI t0, zero, 10
  JAL zero, bb83
bb86:   # loop depth 2
  ADDIW t0, t0, -48
  ADDI s9, zero, 57
  SW t0, 0(s8)
  CALL getch
  SLT t1, s9, a0
  SLTI t0, a0, 48
  XORI t1, t1, 1
  XORI t0, t0, 1
  AND t0, t0, t1
  SW a0, 0(s5)
  BNE t0, zero, bb88
  # implict jump to bb87
bb87:   # loop depth 2
  SW zero, 0(s6)
  JAL zero, bb50
bb88:   # loop depth 2
  # implict jump to bb89
bb89:   # loop depth 3
  LW t0, 0(s8)
  ADDI t1, zero, 10
  ADDI s9, zero, 57
  MULW t0, t0, t1
  ADDW t0, t0, a0
  ADDIW t0, t0, -48
  SW t0, 0(s8)
  CALL getch
  SLT t1, s9, a0
  SLTI t0, a0, 48
  XORI t1, t1, 1
  XORI t0, t0, 1
  AND t0, t0, t1
  SW a0, 0(s5)
  BNE t0, zero, bb90
  JAL zero, bb87
bb90:   # loop depth 3
  JAL zero, bb89
bb91:   # loop depth 3
  CALL getch
  SW a0, 0(s5)
  JAL zero, bb47
bb92:   # loop depth 2
  ADDI t0, zero, 20
  JAL zero, bb46
bb93:   # loop depth 2
  ADDI t0, zero, 10
  JAL zero, bb46
bb94:   # loop depth 1
  ADDIW t0, a0, -48
  ADDI s0, zero, 57
  SW t0, 0(s8)
  CALL getch
  SLT t1, s0, a0
  SLTI t0, a0, 48
  XORI t1, t1, 1
  XORI t0, t0, 1
  AND t0, t0, t1
  SW a0, 0(s5)
  BNE t0, zero, bb96
  # implict jump to bb95
bb95:   # loop depth 1
  SW zero, 0(s6)
  JAL zero, bb16
bb96:   # loop depth 1
  # implict jump to bb97
bb97:   # loop depth 2
  LW t0, 0(s8)
  ADDI t1, zero, 10
  ADDI s0, zero, 57
  MULW t0, t0, t1
  ADDW t0, t0, a0
  ADDIW t0, t0, -48
  SW t0, 0(s8)
  CALL getch
  SLT t1, s0, a0
  SLTI t0, a0, 48
  XORI t1, t1, 1
  XORI t0, t0, 1
  AND t0, t0, t1
  SW a0, 0(s5)
  BNE t0, zero, bb98
  JAL zero, bb95
bb98:   # loop depth 2
  JAL zero, bb97
bb99:   # loop depth 2
  CALL getch
  XORI t1, a0, 10
  XORI t0, a0, 32
  SLTIU t1, t1, 1
  SLTIU t0, t0, 1
  OR t0, t0, t1
  SW a0, 0(s5)
  BNE t0, zero, bb99
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
  ADDIW t0, a0, -48
  ADDI s0, zero, 57
  SW t0, 0(s8)
  CALL getch
  SLT t1, s0, a0
  SLTI t0, a0, 48
  XORI t1, t1, 1
  XORI t0, t0, 1
  AND t0, t0, t1
  SW a0, 0(s5)
  BNE t0, zero, bb106
  # implict jump to bb105
bb105:   # loop depth 0
  SW zero, 0(s6)
  JAL zero, bb4
bb106:   # loop depth 0
  # implict jump to bb107
bb107:   # loop depth 1
  LW t0, 0(s8)
  ADDI t1, zero, 10
  ADDI s0, zero, 57
  MULW t0, t0, t1
  ADDW t0, t0, a0
  ADDIW t0, t0, -48
  SW t0, 0(s8)
  CALL getch
  SLT t1, s0, a0
  SLTI t0, a0, 48
  XORI t1, t1, 1
  XORI t0, t0, 1
  AND t0, t0, t1
  SW a0, 0(s5)
  BNE t0, zero, bb108
  JAL zero, bb105
bb108:   # loop depth 1
  JAL zero, bb107
bb109:   # loop depth 1
  CALL getch
  XORI t1, a0, 10
  XORI t0, a0, 32
  SLTIU t1, t1, 1
  SLTIU t0, t0, 1
  OR t0, t0, t1
  SW a0, 0(s5)
  BNE t0, zero, bb109
  # implict jump to bb110
bb110:   # loop depth 0
  JAL zero, bb2
