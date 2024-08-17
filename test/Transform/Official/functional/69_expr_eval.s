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
  ADDIW t0, t0, 1920
  ADD sp, sp, t0
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  SD s10, 104(sp)
  SD s11, 112(sp)
  LA s8, last_char
  CALL getint
  ADD s0, a0, zero
  CALL getch
  LW a0, 0(s8)
  XORI t2, a0, 10
  XORI t1, a0, 32
  SLTIU t2, t2, 1
  SLTIU t1, t1, 1
  OR t1, t1, t2
  BNE t1, zero, bb114
  # implict jump to bb1
bb1:   # loop depth 0
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  LA s11, num
  LA s10, other
  LA s9, cur_token
  AND t1, t1, t2
  BNE t1, zero, bb109
  # implict jump to bb3
bb3:   # loop depth 0
  LW t0, 0(s8)
  ADDI s1, zero, 1
  SW t0, 0(s10)
  CALL getch
  SW a0, 0(s8)
  SW s1, 0(s9)
  # implict jump to bb4
bb4:   # loop depth 0
  BNE s0, zero, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s10, 104(sp)
  LD s11, 112(sp)
  LUI t0, 1
  ADDIW t0, t0, -1920
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb6:   # loop depth 0
  # implict jump to bb7
bb7:   # loop depth 1
  ADDI s5, zero, 256
  SW s0, 0(sp)
  # implict jump to bb8
bb8:   # loop depth 2
  SLLIW t0, s5, 2
  ADDIW s5, s5, -1
  ADDI t6, sp, 120
  ADD t0, t6, t0
  SW zero, -4(t0)
  BNE s5, zero, bb108
  # implict jump to bb9
bb9:   # loop depth 2
  ADDI s4, zero, 256
  # implict jump to bb10
bb10:   # loop depth 2
  SLLIW t0, s4, 2
  ADDIW s4, s4, -1
  ADDI t6, sp, 1144
  ADD t0, t6, t0
  SW zero, -4(t0)
  BNE s4, zero, bb107
  # implict jump to bb11
bb11:   # loop depth 1
  LW t0, 0(s9)
  BNE t0, zero, bb106
  # implict jump to bb12
bb12:   # loop depth 1
  LW t0, 0(s11)
  LW t1, 120(sp)
  SLLIW t2, t1, 2
  ADDIW t1, t1, 1
  ADDI a0, sp, 120
  ADD t2, a0, t2
  SW t1, 120(sp)
  SW t0, 4(t2)
  LW a0, 0(s8)
  XORI t2, a0, 10
  XORI t1, a0, 32
  SLTIU t2, t2, 1
  SLTIU t1, t1, 1
  OR t1, t1, t2
  BNE t1, zero, bb104
  # implict jump to bb13
bb13:   # loop depth 1
  # implict jump to bb14
bb14:   # loop depth 1
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  BNE t1, zero, bb99
  # implict jump to bb15
bb15:   # loop depth 1
  LW t0, 0(s8)
  ADDI s3, zero, 1
  SW t0, 0(s10)
  CALL getch
  SW a0, 0(s8)
  SW s3, 0(s9)
  # implict jump to bb16
bb16:   # loop depth 1
  ADD s3, zero, zero
  ADD s2, zero, zero
  ADD s1, zero, zero
  # implict jump to bb17
bb17:   # loop depth 2
  LW t0, 0(s9)
  XORI t0, t0, 1
  BEQ t0, zero, bb45
  # implict jump to bb18
bb18:   # loop depth 1
  LW a0, 0(s8)
  XORI t2, a0, 10
  XORI t1, a0, 32
  SLTIU t2, t2, 1
  SLTIU t1, t1, 1
  OR t1, t1, t2
  BNE t1, zero, bb43
  # implict jump to bb19
bb19:   # loop depth 1
  # implict jump to bb20
bb20:   # loop depth 1
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  BNE t1, zero, bb38
  # implict jump to bb21
bb21:   # loop depth 1
  LW t0, 0(s8)
  ADDI s1, zero, 1
  SW t0, 0(s10)
  CALL getch
  SW a0, 0(s8)
  SW s1, 0(s9)
  # implict jump to bb22
bb22:   # loop depth 1
  LW t0, 1144(sp)
  BNE t0, zero, bb26
  # implict jump to bb23
bb23:   # loop depth 1
  LW t0, 120(sp)
  SLLIW t0, t0, 2
  ADDI t6, sp, 120
  ADD t0, t6, t0
  LW s1, 0(t0)
  # implict jump to bb24
bb24:   # loop depth 1
  ADD a0, s1, zero
  LW t0, 0(sp)
  ADDIW s0, t0, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  BNE s0, zero, bb25
  JAL zero, bb5
bb25:   # loop depth 1
  JAL zero, bb7
bb26:   # loop depth 2
  LW t0, 1144(sp)
  SLLIW t1, t0, 2
  ADDIW t2, t0, -1
  ADDI t0, sp, 1144
  ADD t0, t0, t1
  LW t0, 0(t0)
  SW t2, 1144(sp)
  XORI a4, t0, 43
  LW t1, 120(sp)
  SLLIW a0, t1, 2
  ADDIW a1, t1, -1
  ADDI a2, sp, 120
  ADD a0, a2, a0
  SLLIW a2, a1, 2
  LW a0, 0(a0)
  ADDI a3, sp, 120
  ADD a2, a3, a2
  ADDIW a3, t1, -2
  SW a1, 120(sp)
  LW t1, 0(a2)
  SW a3, 120(sp)
  BEQ a4, zero, bb37
  # implict jump to bb27
bb27:   # loop depth 2
  XORI a1, t0, 45
  BEQ a1, zero, bb36
  # implict jump to bb28
bb28:   # loop depth 2
  XORI a1, t0, 42
  BEQ a1, zero, bb35
  # implict jump to bb29
bb29:   # loop depth 2
  XORI a1, t0, 47
  BEQ a1, zero, bb34
  # implict jump to bb30
bb30:   # loop depth 2
  XORI t0, t0, 37
  BEQ t0, zero, bb33
  # implict jump to bb31
bb31:   # loop depth 2
  ADD t0, zero, zero
  # implict jump to bb32
bb32:   # loop depth 2
  LW t1, 120(sp)
  SLLIW a0, t1, 2
  ADDIW t1, t1, 1
  ADDI t6, sp, 120
  ADD a0, t6, a0
  SW t1, 120(sp)
  SW t0, 4(a0)
  BNE t2, zero, bb26
  JAL zero, bb23
bb33:   # loop depth 2
  REMW t0, t1, a0
  JAL zero, bb32
bb34:   # loop depth 2
  DIVW t0, t1, a0
  JAL zero, bb32
bb35:   # loop depth 2
  MULW t0, t1, a0
  JAL zero, bb32
bb36:   # loop depth 2
  SUBW t0, t1, a0
  JAL zero, bb32
bb37:   # loop depth 2
  ADDW t0, t1, a0
  JAL zero, bb32
bb38:   # loop depth 1
  ADDIW t0, a0, -48
  ADDI s1, zero, 57
  SW t0, 0(s11)
  CALL getch
  SLT t2, s1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  SW a0, 0(s8)
  BNE t1, zero, bb40
  # implict jump to bb39
bb39:   # loop depth 1
  SW zero, 0(s9)
  JAL zero, bb22
bb40:   # loop depth 1
  # implict jump to bb41
bb41:   # loop depth 2
  LW t1, 0(s11)
  ADDI t2, zero, 10
  ADDI s1, zero, 57
  MULW t1, t1, t2
  ADDW t0, t1, a0
  ADDIW t0, t0, -48
  SW t0, 0(s11)
  CALL getch
  SLT t2, s1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  SW a0, 0(s8)
  BNE t1, zero, bb42
  SW zero, 0(s9)
  JAL zero, bb22
bb42:   # loop depth 2
  JAL zero, bb41
bb43:   # loop depth 2
  CALL getch
  XORI t2, a0, 10
  XORI t1, a0, 32
  SLTIU t2, t2, 1
  SLTIU t1, t1, 1
  OR t1, t1, t2
  SW a0, 0(s8)
  BNE t1, zero, bb43
  # implict jump to bb44
bb44:   # loop depth 2
  JAL zero, bb20
bb45:   # loop depth 2
  LW s7, 0(s10)
  XORI t1, s7, 45
  XORI t0, s7, 43
  SLTIU t1, t1, 1
  SLTIU t0, t0, 1
  OR t0, t0, t1
  BNE t0, zero, bb98
  # implict jump to bb46
bb46:   # loop depth 2
  XORI t1, s7, 47
  XORI t0, s7, 42
  XORI t2, s7, 37
  SLTIU t1, t1, 1
  SLTIU t0, t0, 1
  SLTIU t2, t2, 1
  OR t0, t0, t1
  OR t0, t0, t2
  BNE t0, zero, bb97
  # implict jump to bb47
bb47:   # loop depth 2
  ADD s6, zero, zero
  # implict jump to bb48
bb48:   # loop depth 2
  SLTU t0, zero, s6
  BEQ t0, zero, bb18
  # implict jump to bb49
bb49:   # loop depth 2
  # implict jump to bb50
bb50:   # loop depth 2
  LW a0, 0(s8)
  XORI t2, a0, 10
  XORI t1, a0, 32
  SLTIU t2, t2, 1
  SLTIU t1, t1, 1
  OR t1, t1, t2
  BNE t1, zero, bb95
  # implict jump to bb51
bb51:   # loop depth 2
  # implict jump to bb52
bb52:   # loop depth 2
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  BNE t1, zero, bb90
  # implict jump to bb53
bb53:   # loop depth 2
  LW t0, 0(s8)
  ADDI t1, zero, 1
  SW t1, 12(sp)
  SW t0, 0(s10)
  CALL getch
  SW a0, 0(s8)
  LW t0, 12(sp)
  SW t0, 0(s9)
  # implict jump to bb54
bb54:   # loop depth 2
  # implict jump to bb55
bb55:   # loop depth 3
  LW t0, 1144(sp)
  BNE t0, zero, bb84
  # implict jump to bb56
bb56:   # loop depth 3
  ADD t0, zero, zero
  # implict jump to bb57
bb57:   # loop depth 3
  BNE t0, zero, bb72
  # implict jump to bb58
bb58:   # loop depth 2
  LW t0, 1144(sp)
  SLLIW t1, t0, 2
  ADDIW t0, t0, 1
  ADDI t6, sp, 1144
  ADD t1, t6, t1
  SW t0, 1144(sp)
  SW s7, 4(t1)
  LW t0, 0(s9)
  BNE t0, zero, bb71
  # implict jump to bb59
bb59:   # loop depth 2
  LW t0, 0(s11)
  LW t1, 120(sp)
  SLLIW t2, t1, 2
  ADDIW t1, t1, 1
  ADDI a0, sp, 120
  ADD t2, a0, t2
  SW t1, 120(sp)
  SW t0, 4(t2)
  LW a0, 0(s8)
  XORI t2, a0, 10
  XORI t1, a0, 32
  SLTIU t2, t2, 1
  SLTIU t1, t1, 1
  OR t1, t1, t2
  BNE t1, zero, bb69
  # implict jump to bb60
bb60:   # loop depth 2
  # implict jump to bb61
bb61:   # loop depth 2
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  BNE t1, zero, bb64
  # implict jump to bb62
bb62:   # loop depth 2
  LW t0, 0(s8)
  ADDI s6, zero, 1
  SW t0, 0(s10)
  CALL getch
  SW a0, 0(s8)
  SW s6, 0(s9)
  # implict jump to bb63
bb63:   # loop depth 2
  JAL zero, bb17
bb64:   # loop depth 2
  ADDIW t0, a0, -48
  ADDI s6, zero, 57
  SW t0, 0(s11)
  CALL getch
  SLT t2, s6, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  SW a0, 0(s8)
  BNE t1, zero, bb66
  # implict jump to bb65
bb65:   # loop depth 2
  SW zero, 0(s9)
  JAL zero, bb17
bb66:   # loop depth 2
  # implict jump to bb67
bb67:   # loop depth 3
  LW t1, 0(s11)
  ADDI t2, zero, 10
  ADDI s6, zero, 57
  MULW t1, t1, t2
  ADDW t0, t1, a0
  ADDIW t0, t0, -48
  SW t0, 0(s11)
  CALL getch
  SLT t2, s6, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  SW a0, 0(s8)
  BNE t1, zero, bb68
  SW zero, 0(s9)
  JAL zero, bb17
bb68:   # loop depth 3
  JAL zero, bb67
bb69:   # loop depth 3
  CALL getch
  XORI t2, a0, 10
  XORI t1, a0, 32
  SLTIU t2, t2, 1
  SLTIU t1, t1, 1
  OR t1, t1, t2
  SW a0, 0(s8)
  BNE t1, zero, bb69
  # implict jump to bb70
bb70:   # loop depth 3
  JAL zero, bb61
bb71:   # loop depth 1
  ADDI a0, zero, 112
  ADDI s1, zero, -1
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
  JAL zero, bb24
bb72:   # loop depth 3
  LW t0, 1144(sp)
  SLLIW t1, t0, 2
  ADDIW t2, t0, -1
  ADDI t0, sp, 1144
  ADD t0, t0, t1
  LW s3, 0(t0)
  SW t2, 1144(sp)
  XORI a3, s3, 43
  LW t2, 120(sp)
  SLLIW t1, t2, 2
  ADDIW a0, t2, -1
  ADDI a1, sp, 120
  ADD t1, a1, t1
  SLLIW a1, a0, 2
  LW s2, 0(t1)
  ADDI a2, sp, 120
  ADD a1, a2, a1
  ADDIW a2, t2, -2
  SW a0, 120(sp)
  LW s1, 0(a1)
  SW a2, 120(sp)
  BEQ a3, zero, bb83
  # implict jump to bb73
bb73:   # loop depth 3
  XORI a0, s3, 45
  BEQ a0, zero, bb82
  # implict jump to bb74
bb74:   # loop depth 3
  XORI a0, s3, 42
  BEQ a0, zero, bb81
  # implict jump to bb75
bb75:   # loop depth 3
  XORI a0, s3, 47
  BEQ a0, zero, bb80
  # implict jump to bb76
bb76:   # loop depth 3
  XORI a0, s3, 37
  BEQ a0, zero, bb79
  # implict jump to bb77
bb77:   # loop depth 3
  ADD a0, zero, zero
  # implict jump to bb78
bb78:   # loop depth 3
  LW a1, 120(sp)
  SLLIW t1, a1, 2
  ADDIW t0, a1, 1
  ADDI t6, sp, 120
  ADD t1, t6, t1
  SW t0, 120(sp)
  SW a0, 4(t1)
  JAL zero, bb55
bb79:   # loop depth 3
  REMW a0, s1, s2
  JAL zero, bb78
bb80:   # loop depth 3
  DIVW a0, s1, s2
  JAL zero, bb78
bb81:   # loop depth 3
  MULW a0, s1, s2
  JAL zero, bb78
bb82:   # loop depth 3
  SUBW a0, s1, s2
  JAL zero, bb78
bb83:   # loop depth 3
  ADDW a0, s1, s2
  JAL zero, bb78
bb84:   # loop depth 3
  SLLIW t0, t0, 2
  ADDI t2, sp, 1144
  ADD t0, t2, t0
  LW t0, 0(t0)
  XORI t2, t0, 45
  XORI t1, t0, 43
  SLTIU t2, t2, 1
  SLTIU t1, t1, 1
  OR t1, t1, t2
  BNE t1, zero, bb89
  # implict jump to bb85
bb85:   # loop depth 3
  XORI t1, t0, 47
  XORI t2, t0, 42
  XORI a0, t0, 37
  SLTIU t1, t1, 1
  SLTIU t0, t2, 1
  SLTIU t2, a0, 1
  OR t0, t0, t1
  OR t0, t0, t2
  BNE t0, zero, bb88
  # implict jump to bb86
bb86:   # loop depth 3
  ADD t0, zero, zero
  # implict jump to bb87
bb87:   # loop depth 3
  SLT t0, t0, s6
  XORI t0, t0, 1
  JAL zero, bb57
bb88:   # loop depth 3
  ADDI t0, zero, 20
  SLT t0, t0, s6
  XORI t0, t0, 1
  JAL zero, bb57
bb89:   # loop depth 3
  ADDI t0, zero, 10
  SLT t0, t0, s6
  XORI t0, t0, 1
  JAL zero, bb57
bb90:   # loop depth 2
  ADDIW t0, a0, -48
  ADDI t1, zero, 57
  SW t1, 8(sp)
  SW t0, 0(s11)
  CALL getch
  LW t0, 8(sp)
  SLT t2, t0, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  SW a0, 0(s8)
  BNE t1, zero, bb92
  # implict jump to bb91
bb91:   # loop depth 2
  SW zero, 0(s9)
  JAL zero, bb54
bb92:   # loop depth 2
  # implict jump to bb93
bb93:   # loop depth 3
  LW t1, 0(s11)
  ADDI t2, zero, 10
  ADDI t0, zero, 57
  SW t0, 4(sp)
  MULW t1, t1, t2
  ADDW t0, t1, a0
  ADDIW t0, t0, -48
  SW t0, 0(s11)
  CALL getch
  LW t0, 4(sp)
  SLT t2, t0, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  SW a0, 0(s8)
  BNE t1, zero, bb94
  SW zero, 0(s9)
  JAL zero, bb54
bb94:   # loop depth 3
  JAL zero, bb93
bb95:   # loop depth 3
  CALL getch
  XORI t2, a0, 10
  XORI t1, a0, 32
  SLTIU t2, t2, 1
  SLTIU t1, t1, 1
  OR t1, t1, t2
  SW a0, 0(s8)
  BNE t1, zero, bb95
  # implict jump to bb96
bb96:   # loop depth 3
  JAL zero, bb52
bb97:   # loop depth 2
  ADDI s6, zero, 20
  JAL zero, bb48
bb98:   # loop depth 2
  ADDI s6, zero, 10
  JAL zero, bb48
bb99:   # loop depth 1
  ADDIW t0, a0, -48
  ADDI s3, zero, 57
  SW t0, 0(s11)
  CALL getch
  SLT t2, s3, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  SW a0, 0(s8)
  BNE t1, zero, bb101
  # implict jump to bb100
bb100:   # loop depth 1
  SW zero, 0(s9)
  JAL zero, bb16
bb101:   # loop depth 1
  # implict jump to bb102
bb102:   # loop depth 2
  LW t1, 0(s11)
  ADDI t2, zero, 10
  ADDI s3, zero, 57
  MULW t1, t1, t2
  ADDW t0, t1, a0
  ADDIW t0, t0, -48
  SW t0, 0(s11)
  CALL getch
  SLT t2, s3, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  SW a0, 0(s8)
  BNE t1, zero, bb103
  SW zero, 0(s9)
  JAL zero, bb16
bb103:   # loop depth 2
  JAL zero, bb102
bb104:   # loop depth 2
  CALL getch
  XORI t2, a0, 10
  XORI t1, a0, 32
  SLTIU t2, t2, 1
  SLTIU t1, t1, 1
  OR t1, t1, t2
  SW a0, 0(s8)
  BNE t1, zero, bb104
  # implict jump to bb105
bb105:   # loop depth 2
  JAL zero, bb14
bb106:   # loop depth 1
  ADDI a0, zero, 112
  ADDI s1, zero, -1
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
  JAL zero, bb24
bb107:   # loop depth 2
  JAL zero, bb10
bb108:   # loop depth 2
  JAL zero, bb8
bb109:   # loop depth 0
  ADDIW t0, a0, -48
  ADDI s1, zero, 57
  SW t0, 0(s11)
  CALL getch
  SLT t2, s1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  SW a0, 0(s8)
  BNE t1, zero, bb111
  # implict jump to bb110
bb110:   # loop depth 0
  SW zero, 0(s9)
  JAL zero, bb4
bb111:   # loop depth 0
  # implict jump to bb112
bb112:   # loop depth 1
  LW t1, 0(s11)
  ADDI t2, zero, 10
  ADDI s1, zero, 57
  MULW t1, t1, t2
  ADDW t0, t1, a0
  ADDIW t0, t0, -48
  SW t0, 0(s11)
  CALL getch
  SLT t2, s1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  SW a0, 0(s8)
  BNE t1, zero, bb113
  SW zero, 0(s9)
  JAL zero, bb4
bb113:   # loop depth 1
  JAL zero, bb112
bb114:   # loop depth 1
  CALL getch
  XORI t2, a0, 10
  XORI t1, a0, 32
  SLTIU t2, t2, 1
  SLTIU t1, t1, 1
  OR t1, t1, t2
  SW a0, 0(s8)
  BNE t1, zero, bb114
  # implict jump to bb115
bb115:   # loop depth 1
  JAL zero, bb2
