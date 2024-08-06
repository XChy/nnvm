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
  ADD s0, zero, zero
  # implict jump to bb1
bb1:   # loop depth 1
  SLTI s2, s1, 48
  BNE s2, zero, bb96
  # implict jump to bb2
bb2:   # loop depth 1
  ADDI s2, zero, 57
  SLT s2, s2, s1
  # implict jump to bb3
bb3:   # loop depth 1
  BNE s2, zero, bb92
  # implict jump to bb4
bb4:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  SLTI s3, s1, 48
  XORI s3, s3, 1
  BNE s3, zero, bb91
  # implict jump to bb6
bb6:   # loop depth 1
  ADD s3, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  BNE s3, zero, bb90
  # implict jump to bb8
bb8:   # loop depth 0
  BNE s0, zero, bb89
  # implict jump to bb9
bb9:   # loop depth 0
  # implict jump to bb10
bb10:   # loop depth 0
  LA s0, n
  SW s2, 0(s0)
  BNE zero, s2, bb68
  # implict jump to bb11
bb11:   # loop depth 0
  LA t0, n
  LW t0, 0(t0)
  BLT zero, t0, bb56
  # implict jump to bb12
bb12:   # loop depth 0
  LA t0, n
  LW t0, 0(t0)
  BLT zero, t0, bb49
  # implict jump to bb13
bb13:   # loop depth 0
  ADDI a0, zero, -100
  # implict jump to bb14
bb14:   # loop depth 0
  SLT t0, a0, zero
  XORI t0, t0, 1
  BNE t0, zero, bb40
  # implict jump to bb15
bb15:   # loop depth 0
  LA t0, n
  LW t0, 0(t0)
  BLT zero, t0, bb28
  # implict jump to bb16
bb16:   # loop depth 0
  LA t0, n
  LW t0, 0(t0)
  BNE t0, zero, bb25
  # implict jump to bb17
bb17:   # loop depth 0
  LA t0, n
  LW t1, 0(t0)
  ADD t0, zero, zero
  # implict jump to bb18
bb18:   # loop depth 1
  SUBW t2, t0, t1
  BNE t2, zero, bb20
  # implict jump to bb19
bb19:   # loop depth 0
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
bb20:   # loop depth 1
  SLLIW t2, t0, 2
  LA a0, b
  ADD a0, a0, t2
  LW a0, 0(a0)
  BNE a0, zero, bb24
  # implict jump to bb21
bb21:   # loop depth 1
  LA a0, c
  ADD t2, a0, t2
  LW t2, 0(t2)
  BNE t2, zero, bb23
  # implict jump to bb22
bb22:   # loop depth 1
  ADDIW t0, t0, 1
  JAL zero, bb18
bb23:   # loop depth 0
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
bb24:   # loop depth 0
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
bb25:   # loop depth 0
  LA t0, n
  LW t1, 0(t0)
  ADD t0, zero, zero
  # implict jump to bb26
bb26:   # loop depth 1
  SLLIW t2, t0, 2
  LA a0, b
  ADD a0, a0, t2
  LW a1, 0(a0)
  LA a2, a
  ADD a2, a2, t2
  LW a2, 0(a2)
  SUBW a1, a1, a2
  SW a1, 0(a0)
  LA a0, c
  ADD t2, a0, t2
  LW a0, 0(t2)
  SUBW a0, a0, a1
  SUBW a0, a0, a2
  SW a0, 0(t2)
  ADDIW t0, t0, 1
  SUBW t2, t1, t0
  BNE t2, zero, bb27
  JAL zero, bb17
bb27:   # loop depth 1
  JAL zero, bb26
bb28:   # loop depth 0
  LA t0, n
  LW a2, 0(t0)
  ADD t0, zero, zero
  # implict jump to bb29
bb29:   # loop depth 1
  ADDIW a1, t0, 1
  SLLIW t2, t0, 2
  BLT a1, a2, bb33
  # implict jump to bb30
bb30:   # loop depth 1
  ADD a0, t2, zero
  # implict jump to bb31
bb31:   # loop depth 1
  LA t0, c
  ADD t0, t0, t2
  LW t1, 0(t0)
  LA t2, c
  ADD t2, t2, a0
  LW a0, 0(t2)
  SW a0, 0(t0)
  SW t1, 0(t2)
  BLT a1, a2, bb32
  JAL zero, bb16
bb32:   # loop depth 1
  ADD t0, a1, zero
  JAL zero, bb29
bb33:   # loop depth 1
  LA t1, n
  LW a3, 0(t1)
  ADD a0, t2, zero
  ADD t1, a1, zero
  # implict jump to bb34
bb34:   # loop depth 2
  SLLIW a4, t1, 2
  LA a5, c
  ADD a4, a5, a4
  LW a4, 0(a4)
  LA a5, c
  ADD a0, a5, a0
  LW a0, 0(a0)
  BLT a4, a0, bb39
  # implict jump to bb35
bb35:   # loop depth 2
  # implict jump to bb36
bb36:   # loop depth 2
  ADDIW t1, t1, 1
  SLLIW a0, t0, 2
  BLT t1, a3, bb38
  # implict jump to bb37
bb37:   # loop depth 2
  JAL zero, bb31
bb38:   # loop depth 2
  JAL zero, bb34
bb39:   # loop depth 2
  ADD t0, t1, zero
  JAL zero, bb36
bb40:   # loop depth 0
  ADD t2, zero, zero
  ADD t0, zero, zero
  # implict jump to bb41
bb41:   # loop depth 1
  SLLIW t1, t2, 2
  LA a1, cnt
  ADD t1, a1, t1
  LW t1, 0(t1)
  BNE t1, zero, bb45
  # implict jump to bb42
bb42:   # loop depth 1
  # implict jump to bb43
bb43:   # loop depth 1
  ADDIW t2, t2, 1
  SLT t1, a0, t2
  XORI t1, t1, 1
  BNE t1, zero, bb44
  JAL zero, bb15
bb44:   # loop depth 1
  JAL zero, bb41
bb45:   # loop depth 1
  # implict jump to bb46
bb46:   # loop depth 2
  SLLIW a1, t0, 2
  LA a2, b
  ADD a1, a2, a1
  SW t2, 0(a1)
  ADDIW t0, t0, 1
  ADDI a1, zero, 1
  SUBW t1, t1, a1
  BNE t1, zero, bb48
  # implict jump to bb47
bb47:   # loop depth 2
  JAL zero, bb43
bb48:   # loop depth 2
  JAL zero, bb46
bb49:   # loop depth 0
  LA t0, n
  LW t2, 0(t0)
  ADD t1, zero, zero
  ADDI a0, zero, -100
  # implict jump to bb50
bb50:   # loop depth 1
  SLLIW t0, t1, 2
  LA a1, b
  ADD t0, a1, t0
  LW t0, 0(t0)
  SLLIW a1, t0, 2
  LA a2, cnt
  ADD a1, a2, a1
  LW a2, 0(a1)
  ADDIW a2, a2, 1
  SW a2, 0(a1)
  BLT a0, t0, bb55
  # implict jump to bb51
bb51:   # loop depth 1
  # implict jump to bb52
bb52:   # loop depth 1
  ADDIW t1, t1, 1
  BLT t1, t2, bb54
  # implict jump to bb53
bb53:   # loop depth 1
  JAL zero, bb14
bb54:   # loop depth 1
  JAL zero, bb50
bb55:   # loop depth 1
  ADD a0, t0, zero
  JAL zero, bb52
bb56:   # loop depth 0
  LA t0, n
  LW a0, 0(t0)
  ADD t2, zero, zero
  ADD t0, zero, zero
  # implict jump to bb57
bb57:   # loop depth 1
  ADDIW t1, t2, 1
  BLT t1, a0, bb61
  # implict jump to bb58
bb58:   # loop depth 1
  # implict jump to bb59
bb59:   # loop depth 1
  BLT t1, a0, bb60
  JAL zero, bb12
bb60:   # loop depth 1
  ADD t2, t1, zero
  JAL zero, bb57
bb61:   # loop depth 1
  LA a1, n
  LW a1, 0(a1)
  SLLIW t2, t2, 2
  LA a2, a
  ADD a2, a2, t2
  ADD t2, t1, zero
  # implict jump to bb62
bb62:   # loop depth 2
  LW a3, 0(a2)
  SLLIW a4, t2, 2
  LA a5, a
  ADD a4, a5, a4
  LW a5, 0(a4)
  BLT a5, a3, bb67
  # implict jump to bb63
bb63:   # loop depth 2
  # implict jump to bb64
bb64:   # loop depth 2
  ADDIW t2, t2, 1
  BLT t2, a1, bb66
  # implict jump to bb65
bb65:   # loop depth 2
  JAL zero, bb59
bb66:   # loop depth 2
  JAL zero, bb62
bb67:   # loop depth 2
  LW t0, 0(a2)
  LW a3, 0(a4)
  SW a3, 0(a2)
  SW t0, 0(a4)
  JAL zero, bb64
bb68:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb69
bb69:   # loop depth 1
  SLLIW s4, s1, 2
  LA s0, a
  ADD s5, s0, s4
  CALL getch
  ADD s2, a0, zero
  ADD s6, zero, zero
  # implict jump to bb70
bb70:   # loop depth 2
  SLTI s0, s2, 48
  BNE s0, zero, bb88
  # implict jump to bb71
bb71:   # loop depth 2
  ADDI s0, zero, 57
  SLT s0, s0, s2
  # implict jump to bb72
bb72:   # loop depth 2
  BNE s0, zero, bb84
  # implict jump to bb73
bb73:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb74
bb74:   # loop depth 2
  SLTI s3, s2, 48
  XORI s3, s3, 1
  BNE s3, zero, bb83
  # implict jump to bb75
bb75:   # loop depth 2
  ADD s3, zero, zero
  # implict jump to bb76
bb76:   # loop depth 2
  BNE s3, zero, bb82
  # implict jump to bb77
bb77:   # loop depth 1
  BNE s6, zero, bb81
  # implict jump to bb78
bb78:   # loop depth 1
  # implict jump to bb79
bb79:   # loop depth 1
  SW s0, 0(s5)
  LA s2, b
  ADD s2, s2, s4
  SW s0, 0(s2)
  LA s2, c
  ADD s2, s2, s4
  SW s0, 0(s2)
  ADDIW s1, s1, 1
  LA s0, n
  LW s0, 0(s0)
  BNE s1, s0, bb80
  JAL zero, bb11
bb80:   # loop depth 1
  JAL zero, bb69
bb81:   # loop depth 1
  SUBW s0, zero, s0
  JAL zero, bb79
bb82:   # loop depth 2
  ADDI s3, zero, 10
  MULW s0, s0, s3
  ADDW s0, s0, s2
  ADDI s2, zero, 48
  SUBW s0, s0, s2
  CALL getch
  ADD s2, a0, zero
  JAL zero, bb74
bb83:   # loop depth 2
  ADDI s3, zero, 57
  SLT s3, s3, s2
  XORI s3, s3, 1
  JAL zero, bb76
bb84:   # loop depth 2
  XORI s0, s2, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb87
  # implict jump to bb85
bb85:   # loop depth 2
  # implict jump to bb86
bb86:   # loop depth 2
  CALL getch
  ADD s2, a0, zero
  JAL zero, bb70
bb87:   # loop depth 2
  ADDI s6, zero, 1
  JAL zero, bb86
bb88:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb72
bb89:   # loop depth 0
  SUBW s2, zero, s2
  JAL zero, bb10
bb90:   # loop depth 1
  ADDI s3, zero, 10
  MULW s2, s2, s3
  ADDW s1, s2, s1
  ADDI s2, zero, 48
  SUBW s2, s1, s2
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb5
bb91:   # loop depth 1
  ADDI s3, zero, 57
  SLT s3, s3, s1
  XORI s3, s3, 1
  JAL zero, bb7
bb92:   # loop depth 1
  XORI s1, s1, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb95
  # implict jump to bb93
bb93:   # loop depth 1
  # implict jump to bb94
bb94:   # loop depth 1
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb1
bb95:   # loop depth 1
  ADDI s0, zero, 1
  JAL zero, bb94
bb96:   # loop depth 1
  ADDI s2, zero, 1
  JAL zero, bb3
