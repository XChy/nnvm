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
main:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  CALL getch
  ADD s1, a0, zero
  ADD s3, zero, zero
  # implict jump to bb1
bb1:
  SLTI s0, s1, 48
  BNE s0, zero, bb96
  # implict jump to bb2
bb2:
  ADDI s0, zero, 57
  SLT s0, s0, s1
  # implict jump to bb3
bb3:
  BNE s0, zero, bb92
  # implict jump to bb4
bb4:
  ADD s2, zero, zero
  # implict jump to bb5
bb5:
  SLTI s0, s1, 48
  XORI s0, s0, 1
  BNE s0, zero, bb91
  # implict jump to bb6
bb6:
  ADD s0, zero, zero
  # implict jump to bb7
bb7:
  BNE s0, zero, bb90
  # implict jump to bb8
bb8:
  BNE s3, zero, bb89
  # implict jump to bb9
bb9:
  # implict jump to bb10
bb10:
  LA s0, n
  SW s2, 0(s0)
  BNE zero, s2, bb68
  # implict jump to bb11
bb11:
  LA t0, n
  LW t0, 0(t0)
  BLT zero, t0, bb56
  # implict jump to bb12
bb12:
  LA t0, n
  LW t0, 0(t0)
  BLT zero, t0, bb49
  # implict jump to bb13
bb13:
  ADDI a0, zero, -100
  # implict jump to bb14
bb14:
  SLT t0, a0, zero
  XORI t0, t0, 1
  BNE t0, zero, bb40
  # implict jump to bb15
bb15:
  LA t0, n
  LW t0, 0(t0)
  BLT zero, t0, bb28
  # implict jump to bb16
bb16:
  LA t0, n
  LW t0, 0(t0)
  BNE t0, zero, bb25
  # implict jump to bb17
bb17:
  LA t0, n
  LW t1, 0(t0)
  ADD t0, zero, zero
  # implict jump to bb18
bb18:
  SUBW t2, t0, t1
  BNE t2, zero, bb20
  # implict jump to bb19
bb19:
  ADDI a0, zero, -123
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb20:
  SLLIW t2, t0, 2
  LA a0, b
  ADD a0, a0, t2
  LW a0, 0(a0)
  BNE a0, zero, bb24
  # implict jump to bb21
bb21:
  LA a0, c
  ADD t2, a0, t2
  LW t2, 0(t2)
  BNE t2, zero, bb23
  # implict jump to bb22
bb22:
  ADDIW t0, t0, 1
  JAL zero, bb18
bb23:
  ADDI a0, zero, 2
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb24:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb25:
  ADD t0, zero, zero
  # implict jump to bb26
bb26:
  SLLIW t1, t0, 2
  LA t2, b
  ADD t2, t2, t1
  LW a0, 0(t2)
  LA a1, a
  ADD a1, a1, t1
  LW a1, 0(a1)
  SUBW a0, a0, a1
  SW a0, 0(t2)
  LA t2, c
  ADD t1, t2, t1
  LW t2, 0(t1)
  SUBW t2, t2, a0
  SUBW t2, t2, a1
  SW t2, 0(t1)
  ADDIW t0, t0, 1
  LA t1, n
  LW t1, 0(t1)
  SUBW t1, t1, t0
  BNE t1, zero, bb27
  JAL zero, bb17
bb27:
  JAL zero, bb26
bb28:
  LA t0, n
  LW a1, 0(t0)
  ADD t2, zero, zero
  # implict jump to bb29
bb29:
  ADDIW a0, t2, 1
  BLT a0, a1, bb33
  # implict jump to bb30
bb30:
  ADD t1, t2, zero
  # implict jump to bb31
bb31:
  SLLIW t0, t2, 2
  LA t2, c
  ADD t0, t2, t0
  LW t2, 0(t0)
  SLLIW t1, t1, 2
  LA a2, c
  ADD t1, a2, t1
  LW a2, 0(t1)
  SW a2, 0(t0)
  SW t2, 0(t1)
  LA t0, n
  LW t0, 0(t0)
  BLT a0, t0, bb32
  JAL zero, bb16
bb32:
  ADD t2, a0, zero
  JAL zero, bb29
bb33:
  ADD t1, t2, zero
  ADD t0, a0, zero
  # implict jump to bb34
bb34:
  SLLIW a2, t0, 2
  LA a3, c
  ADD a2, a3, a2
  LW a2, 0(a2)
  SLLIW a3, t1, 2
  LA a4, c
  ADD a3, a4, a3
  LW a3, 0(a3)
  BLT a2, a3, bb39
  # implict jump to bb35
bb35:
  # implict jump to bb36
bb36:
  ADDIW t0, t0, 1
  LA a2, n
  LW a2, 0(a2)
  BLT t0, a2, bb38
  # implict jump to bb37
bb37:
  JAL zero, bb31
bb38:
  JAL zero, bb34
bb39:
  ADD t1, t0, zero
  JAL zero, bb36
bb40:
  ADD t2, zero, zero
  ADD t0, zero, zero
  # implict jump to bb41
bb41:
  SLLIW t1, t2, 2
  LA a1, cnt
  ADD t1, a1, t1
  LW t1, 0(t1)
  BNE t1, zero, bb45
  # implict jump to bb42
bb42:
  # implict jump to bb43
bb43:
  ADDIW t2, t2, 1
  SLT t1, a0, t2
  XORI t1, t1, 1
  BNE t1, zero, bb44
  JAL zero, bb15
bb44:
  JAL zero, bb41
bb45:
  # implict jump to bb46
bb46:
  SLLIW a1, t0, 2
  LA a2, b
  ADD a1, a2, a1
  SW t2, 0(a1)
  ADDIW t0, t0, 1
  ADDI a1, zero, 1
  SUBW t1, t1, a1
  BNE t1, zero, bb48
  # implict jump to bb47
bb47:
  JAL zero, bb43
bb48:
  JAL zero, bb46
bb49:
  ADD t1, zero, zero
  ADDI a0, zero, -100
  # implict jump to bb50
bb50:
  SLLIW t0, t1, 2
  LA t2, b
  ADD t0, t2, t0
  LW t0, 0(t0)
  SLLIW t2, t0, 2
  LA a1, cnt
  ADD t2, a1, t2
  LW a1, 0(t2)
  ADDIW a1, a1, 1
  SW a1, 0(t2)
  BLT a0, t0, bb55
  # implict jump to bb51
bb51:
  # implict jump to bb52
bb52:
  ADDIW t1, t1, 1
  LA t0, n
  LW t0, 0(t0)
  BLT t1, t0, bb54
  # implict jump to bb53
bb53:
  JAL zero, bb14
bb54:
  JAL zero, bb50
bb55:
  ADD a0, t0, zero
  JAL zero, bb52
bb56:
  LA t0, n
  LW a0, 0(t0)
  ADD t2, zero, zero
  ADD t0, zero, zero
  # implict jump to bb57
bb57:
  ADDIW t1, t2, 1
  BLT t1, a0, bb61
  # implict jump to bb58
bb58:
  # implict jump to bb59
bb59:
  LA t2, n
  LW t2, 0(t2)
  BLT t1, t2, bb60
  JAL zero, bb12
bb60:
  ADD t2, t1, zero
  JAL zero, bb57
bb61:
  SLLIW t2, t2, 2
  LA a1, a
  ADD a1, a1, t2
  ADD t2, t1, zero
  # implict jump to bb62
bb62:
  LW a2, 0(a1)
  SLLIW a3, t2, 2
  LA a4, a
  ADD a3, a4, a3
  LW a4, 0(a3)
  BLT a4, a2, bb67
  # implict jump to bb63
bb63:
  # implict jump to bb64
bb64:
  ADDIW t2, t2, 1
  LA a2, n
  LW a2, 0(a2)
  BLT t2, a2, bb66
  # implict jump to bb65
bb65:
  JAL zero, bb59
bb66:
  JAL zero, bb62
bb67:
  LW t0, 0(a1)
  LW a2, 0(a3)
  SW a2, 0(a1)
  SW t0, 0(a3)
  JAL zero, bb64
bb68:
  ADD s4, zero, zero
  # implict jump to bb69
bb69:
  SLLIW s5, s4, 2
  LA s0, a
  ADD s6, s0, s5
  CALL getch
  ADD s1, a0, zero
  ADD s3, zero, zero
  # implict jump to bb70
bb70:
  SLTI s0, s1, 48
  BNE s0, zero, bb88
  # implict jump to bb71
bb71:
  ADDI s0, zero, 57
  SLT s0, s0, s1
  # implict jump to bb72
bb72:
  BNE s0, zero, bb84
  # implict jump to bb73
bb73:
  ADD s2, zero, zero
  # implict jump to bb74
bb74:
  SLTI s0, s1, 48
  XORI s0, s0, 1
  BNE s0, zero, bb83
  # implict jump to bb75
bb75:
  ADD s0, zero, zero
  # implict jump to bb76
bb76:
  BNE s0, zero, bb82
  # implict jump to bb77
bb77:
  BNE s3, zero, bb81
  # implict jump to bb78
bb78:
  # implict jump to bb79
bb79:
  SW s2, 0(s6)
  LA s0, b
  ADD s0, s0, s5
  SW s2, 0(s0)
  LA s0, c
  ADD s0, s0, s5
  SW s2, 0(s0)
  ADDIW s4, s4, 1
  LA s0, n
  LW s0, 0(s0)
  BNE s4, s0, bb80
  JAL zero, bb11
bb80:
  JAL zero, bb69
bb81:
  SUBW s2, zero, s2
  JAL zero, bb79
bb82:
  ADDI s0, zero, 10
  MULW s0, s2, s0
  ADDW s0, s0, s1
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb74
bb83:
  ADDI s0, zero, 57
  SLT s0, s0, s1
  XORI s0, s0, 1
  JAL zero, bb76
bb84:
  XORI s0, s1, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb87
  # implict jump to bb85
bb85:
  # implict jump to bb86
bb86:
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb70
bb87:
  ADDI s3, zero, 1
  JAL zero, bb86
bb88:
  ADDI s0, zero, 1
  JAL zero, bb72
bb89:
  SUBW s2, zero, s2
  JAL zero, bb10
bb90:
  ADDI s0, zero, 10
  MULW s0, s2, s0
  ADDW s0, s0, s1
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb5
bb91:
  ADDI s0, zero, 57
  SLT s0, s0, s1
  XORI s0, s0, 1
  JAL zero, bb7
bb92:
  XORI s0, s1, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb95
  # implict jump to bb93
bb93:
  # implict jump to bb94
bb94:
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb1
bb95:
  ADDI s3, zero, 1
  JAL zero, bb94
bb96:
  ADDI s0, zero, 1
  JAL zero, bb3
