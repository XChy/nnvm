.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
c:
.space 400020
b:
.space 400020
a:
.space 400020
cnt:
.space 1600080

.section .data




n:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s5, 16(sp)
  SD s6, 24(sp)
  SD s7, 32(sp)
  SD s8, 40(sp)
  SD s9, 48(sp)
  SD s0, 56(sp)
  SD s1, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  CALL getch
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb86
  # implict jump to bb1
bb1:   # loop depth 0
  ADD s5, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  XORI t1, t1, 1
  XORI t0, t0, 1
  AND t0, t0, t1
  BNE t0, zero, bb82
  # implict jump to bb3
bb3:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb4
bb4:   # loop depth 0
  LA s4, n
  LA s3, a
  LA s1, b
  LA s0, c
  SUBW t0, zero, s2
  BNE s5, zero, bb81
  # implict jump to bb5
bb5:   # loop depth 0
  ADD t0, s2, zero
  # implict jump to bb6
bb6:   # loop depth 0
  SW t0, 0(s4)
  BNE zero, t0, bb60
  # implict jump to bb7
bb7:   # loop depth 0
  LW a4, 0(s4)
  ADD t0, zero, zero
  ADD t1, zero, zero
  # implict jump to bb8
bb8:   # loop depth 1
  BLT t1, a4, bb50
  # implict jump to bb9
bb9:   # loop depth 0
  LW t0, 0(s4)
  LA a1, cnt
  BLT zero, t0, bb46
  # implict jump to bb10
bb10:   # loop depth 0
  ADDI a0, zero, -100
  # implict jump to bb11
bb11:   # loop depth 0
  BGE a0, zero, bb37
  # implict jump to bb12
bb12:   # loop depth 0
  LW t0, 0(s4)
  BLT zero, t0, bb25
  # implict jump to bb13
bb13:   # loop depth 0
  LW t0, 0(s4)
  BNE t0, zero, bb22
  # implict jump to bb14
bb14:   # loop depth 0
  LW t1, 0(s4)
  ADD t0, zero, zero
  # implict jump to bb15
bb15:   # loop depth 1
  SUBW t2, t0, t1
  BNE t2, zero, bb17
  # implict jump to bb16
bb16:   # loop depth 0
  ADDI a0, zero, -123
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s5, 16(sp)
  LD s6, 24(sp)
  LD s7, 32(sp)
  LD s8, 40(sp)
  LD s9, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb17:   # loop depth 1
  SH2ADD t2, t0, s1
  LW t2, 0(t2)
  BNE t2, zero, bb21
  # implict jump to bb18
bb18:   # loop depth 1
  SH2ADD t2, t0, s0
  LW t2, 0(t2)
  BNE t2, zero, bb20
  # implict jump to bb19
bb19:   # loop depth 1
  ADDIW t0, t0, 1
  JAL zero, bb15
bb20:   # loop depth 0
  ADDI a0, zero, 2
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s5, 16(sp)
  LD s6, 24(sp)
  LD s7, 32(sp)
  LD s8, 40(sp)
  LD s9, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb21:   # loop depth 0
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s5, 16(sp)
  LD s6, 24(sp)
  LD s7, 32(sp)
  LD s8, 40(sp)
  LD s9, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb22:   # loop depth 0
  LW t1, 0(s4)
  ADD t0, zero, zero
  # implict jump to bb23
bb23:   # loop depth 1
  SH2ADD t2, t0, s1
  SH2ADD a1, t0, s3
  LW a0, 0(t2)
  SH2ADD a2, t0, s0
  ADDIW t0, t0, 1
  SUBW a3, t1, t0
  LW a1, 0(a1)
  SUBW a0, a0, a1
  SW a0, 0(t2)
  LW t2, 0(a2)
  SUBW t2, t2, a0
  SUBW t2, t2, a1
  SW t2, 0(a2)
  BNE a3, zero, bb24
  JAL zero, bb14
bb24:   # loop depth 1
  JAL zero, bb23
bb25:   # loop depth 0
  LW a2, 0(s4)
  ADD a1, zero, zero
  # implict jump to bb26
bb26:   # loop depth 1
  SLLIW t0, a1, 2
  ADDIW a0, a1, 1
  BLT a0, a2, bb30
  # implict jump to bb27
bb27:   # loop depth 1
  # implict jump to bb28
bb28:   # loop depth 1
  SH2ADD t1, a1, s0
  LW t2, 0(t1)
  ADD t0, s0, t0
  LW a1, 0(t0)
  SW a1, 0(t1)
  SW t2, 0(t0)
  BLT a0, a2, bb29
  JAL zero, bb13
bb29:   # loop depth 1
  ADD a1, a0, zero
  JAL zero, bb26
bb30:   # loop depth 1
  LW a3, 0(s4)
  ADD t2, a0, zero
  ADD t1, a1, zero
  # implict jump to bb31
bb31:   # loop depth 2
  SH2ADD a4, t2, s0
  ADD a5, s0, t0
  LW t0, 0(a4)
  LW a4, 0(a5)
  BLT t0, a4, bb36
  # implict jump to bb32
bb32:   # loop depth 2
  # implict jump to bb33
bb33:   # loop depth 2
  ADDIW t2, t2, 1
  SLLIW t0, t1, 2
  BLT t2, a3, bb35
  # implict jump to bb34
bb34:   # loop depth 2
  JAL zero, bb28
bb35:   # loop depth 2
  JAL zero, bb31
bb36:   # loop depth 2
  ADD t1, t2, zero
  JAL zero, bb33
bb37:   # loop depth 0
  ADD t0, zero, zero
  ADD t2, zero, zero
  # implict jump to bb38
bb38:   # loop depth 1
  SH2ADD t1, t2, a1
  LW t1, 0(t1)
  BNE t1, zero, bb42
  # implict jump to bb39
bb39:   # loop depth 1
  # implict jump to bb40
bb40:   # loop depth 1
  ADDIW t2, t2, 1
  BGE a0, t2, bb41
  JAL zero, bb12
bb41:   # loop depth 1
  JAL zero, bb38
bb42:   # loop depth 1
  # implict jump to bb43
bb43:   # loop depth 2
  SH2ADD a2, t0, s1
  ADDIW t1, t1, -1
  ADDIW t0, t0, 1
  SW t2, 0(a2)
  BNE t1, zero, bb45
  # implict jump to bb44
bb44:   # loop depth 2
  ADDIW t2, t2, 1
  BGE a0, t2, bb41
  JAL zero, bb12
bb45:   # loop depth 2
  JAL zero, bb43
bb46:   # loop depth 0
  LW t1, 0(s4)
  ADDI a0, zero, -100
  ADD t0, zero, zero
  # implict jump to bb47
bb47:   # loop depth 1
  SH2ADD t2, t0, s1
  ADDIW t0, t0, 1
  LW t2, 0(t2)
  SH2ADD a2, t2, a1
  MAX a0, t2, a0
  LW t2, 0(a2)
  ADDIW t2, t2, 1
  SW t2, 0(a2)
  BLT t0, t1, bb49
  # implict jump to bb48
bb48:   # loop depth 1
  JAL zero, bb11
bb49:   # loop depth 1
  JAL zero, bb47
bb50:   # loop depth 1
  LW a0, 0(s4)
  ADDIW t2, t1, 1
  BLT t2, a0, bb53
  # implict jump to bb51
bb51:   # loop depth 1
  # implict jump to bb52
bb52:   # loop depth 1
  ADD t1, t2, zero
  JAL zero, bb8
bb53:   # loop depth 1
  LW a2, 0(s4)
  ADD a0, t2, zero
  SH2ADD a1, t1, s3
  # implict jump to bb54
bb54:   # loop depth 2
  LW t1, 0(a1)
  SH2ADD a3, a0, s3
  LW a5, 0(a3)
  BLT a5, t1, bb59
  # implict jump to bb55
bb55:   # loop depth 2
  # implict jump to bb56
bb56:   # loop depth 2
  ADDIW a0, a0, 1
  BLT a0, a2, bb58
  # implict jump to bb57
bb57:   # loop depth 2
  ADD t1, t2, zero
  JAL zero, bb8
bb58:   # loop depth 2
  JAL zero, bb54
bb59:   # loop depth 2
  LW t1, 0(a1)
  LW a5, 0(a3)
  ADD t0, t1, zero
  SW a5, 0(a1)
  SW t1, 0(a3)
  JAL zero, bb56
bb60:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb61
bb61:   # loop depth 1
  CALL getch
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  SH2ADD s8, s2, s3
  BNE t0, zero, bb74
  # implict jump to bb62
bb62:   # loop depth 1
  ADD s9, zero, zero
  ADD s5, a0, zero
  # implict jump to bb63
bb63:   # loop depth 1
  ADDI t0, zero, 57
  SLT t1, t0, s5
  SLTI t0, s5, 48
  XORI t1, t1, 1
  XORI t0, t0, 1
  AND t0, t0, t1
  BNE t0, zero, bb70
  # implict jump to bb64
bb64:   # loop depth 1
  ADD s6, zero, zero
  # implict jump to bb65
bb65:   # loop depth 1
  SUBW t0, zero, s6
  BNE s9, zero, bb69
  # implict jump to bb66
bb66:   # loop depth 1
  ADD t0, s6, zero
  # implict jump to bb67
bb67:   # loop depth 1
  SH2ADD t1, s2, s1
  SW t0, 0(s8)
  SH2ADD t2, s2, s0
  SW t0, 0(t1)
  ADDIW s2, s2, 1
  SW t0, 0(t2)
  LW t0, 0(s4)
  BNE s2, t0, bb68
  JAL zero, bb7
bb68:   # loop depth 1
  JAL zero, bb61
bb69:   # loop depth 1
  JAL zero, bb67
bb70:   # loop depth 1
  ADD s6, zero, zero
  # implict jump to bb71
bb71:   # loop depth 2
  ADDI s7, zero, 10
  CALL getch
  MULW t0, s6, s7
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  ADDW t0, t0, s5
  AND t1, t1, t2
  ADDIW s6, t0, -48
  BNE t1, zero, bb73
  # implict jump to bb72
bb72:   # loop depth 2
  JAL zero, bb65
bb73:   # loop depth 2
  ADD s5, a0, zero
  JAL zero, bb71
bb74:   # loop depth 1
  ADD s9, zero, zero
  # implict jump to bb75
bb75:   # loop depth 2
  XORI t0, a0, 45
  BEQ t0, zero, bb80
  # implict jump to bb76
bb76:   # loop depth 2
  # implict jump to bb77
bb77:   # loop depth 2
  CALL getch
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb79
  # implict jump to bb78
bb78:   # loop depth 2
  ADD s5, a0, zero
  JAL zero, bb63
bb79:   # loop depth 2
  JAL zero, bb75
bb80:   # loop depth 2
  ADDI s9, zero, 1
  JAL zero, bb77
bb81:   # loop depth 0
  JAL zero, bb6
bb82:   # loop depth 0
  ADD s2, zero, zero
  ADD s0, a0, zero
  # implict jump to bb83
bb83:   # loop depth 1
  ADDI s1, zero, 10
  CALL getch
  MULW t0, s2, s1
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  ADDW t0, t0, s0
  AND t1, t1, t2
  ADDIW s2, t0, -48
  BNE t1, zero, bb85
  # implict jump to bb84
bb84:   # loop depth 1
  JAL zero, bb4
bb85:   # loop depth 1
  ADD s0, a0, zero
  JAL zero, bb83
bb86:   # loop depth 0
  ADD s5, zero, zero
  # implict jump to bb87
bb87:   # loop depth 1
  XORI t0, a0, 45
  BEQ t0, zero, bb92
  # implict jump to bb88
bb88:   # loop depth 1
  # implict jump to bb89
bb89:   # loop depth 1
  CALL getch
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb91
  # implict jump to bb90
bb90:   # loop depth 1
  JAL zero, bb2
bb91:   # loop depth 1
  JAL zero, bb87
bb92:   # loop depth 1
  ADDI s5, zero, 1
  JAL zero, bb89
