.global KMP
.global read_str
.global main
.global get_next
.section .bss
.section .data
.section .text
KMP:
  LUI t0, 1048572
  ADDIW t0, t0, -112
  ADD sp, sp, t0
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 8
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 16
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 40
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 48
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 72
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 80
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  SD s11, 0(t5)
  ADD s2, a0, zero
  ADDI s3, zero, -1
  SW s3, 0(sp)
  ADDI s3, zero, 0
  SLLIW s3, s3, 2
  ADD s3, s2, s3
  LW s3, 0(s3)
  BNE s3, zero, bb13
  # implict jump to bb1
bb1:
  ADD s7, zero, zero
  ADD s8, zero, zero
  # implict jump to bb2
bb2:
  ADD s9, s8, zero
  ADD s10, s7, zero
  SLLIW s11, s10, 2
  ADD s11, a1, s11
  LW s11, 0(s11)
  BNE s11, zero, bb4
  # implict jump to bb3
bb3:
  ADDI a0, zero, -1
  LUI ra, 4
  ADDIW ra, ra, 0
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 4
  ADDIW t5, t5, 8
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 16
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 40
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 48
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 72
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 80
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t0, 4
  ADDIW t0, t0, 112
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb4:
  SLLIW t0, s9, 2
  ADD t1, s2, t0
  LW t1, 0(t1)
  XOR s11, t1, s11
  SLTIU s11, s11, 1
  BNE s11, zero, bb10
  # implict jump to bb5
bb5:
  ADDI t5, sp, 0
  ADD s11, t5, t0
  LW s11, 0(s11)
  XORI t0, s11, -1
  SLTIU t0, t0, 1
  BNE t0, zero, bb9
  # implict jump to bb6
bb6:
  ADD t0, s10, zero
  ADD t1, s11, zero
  # implict jump to bb7
bb7:
  ADD s11, t0, zero
  ADD t0, t1, zero
  # implict jump to bb8
bb8:
  ADD s7, s11, zero
  ADD s8, t0, zero
  JAL zero, bb2
bb9:
  ADDIW s11, s11, 1
  ADDIW t2, s10, 1
  ADD t0, t2, zero
  ADD t1, s11, zero
  JAL zero, bb7
bb10:
  ADDIW s9, s9, 1
  ADDIW s10, s10, 1
  SLLIW t1, s9, 2
  ADD t1, s2, t1
  LW t1, 0(t1)
  SLTU t1, zero, t1
  XORI t1, t1, 1
  BNE t1, zero, bb12
  # implict jump to bb11
bb11:
  ADD s11, s10, zero
  ADD t0, s9, zero
  JAL zero, bb8
bb12:
  ADD a0, s10, zero
  LUI ra, 4
  ADDIW ra, ra, 0
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 4
  ADDIW t5, t5, 8
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 16
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 40
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 48
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 72
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 80
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t0, 4
  ADDIW t0, t0, 112
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb13:
  ADDI s4, zero, -1
  # implict jump to bb14
bb14:
  ADD s5, zero, zero
  # implict jump to bb15
bb15:
  ADD s6, s5, zero
  ADD s7, s4, zero
  ADD s8, s3, zero
  XORI s9, s7, -1
  SLTIU s9, s9, 1
  BNE s9, zero, bb23
  # implict jump to bb16
bb16:
  SLLIW s9, s7, 2
  ADD s9, s2, s9
  LW s9, 0(s9)
  XOR s8, s8, s9
  SLTIU s8, s8, 1
  # implict jump to bb17
bb17:
  BNE s8, zero, bb22
  # implict jump to bb18
bb18:
  SLLIW s8, s7, 2
  ADDI t5, sp, 0
  ADD s8, t5, s8
  LW s8, 0(s8)
  ADD s9, s6, zero
  # implict jump to bb19
bb19:
  ADD s1, s8, zero
  ADD s0, s9, zero
  # implict jump to bb20
bb20:
  SLLIW s6, s0, 2
  ADD s6, s2, s6
  LW s6, 0(s6)
  BNE s6, zero, bb21
  JAL zero, bb1
bb21:
  ADD s3, s6, zero
  ADD s4, s1, zero
  ADD s5, s0, zero
  JAL zero, bb15
bb22:
  ADDIW s7, s7, 1
  ADDIW s6, s6, 1
  SLLIW s10, s6, 2
  ADDI t5, sp, 0
  ADD s10, t5, s10
  SW s7, 0(s10)
  ADD s9, s6, zero
  ADD s8, s7, zero
  JAL zero, bb19
bb23:
  ADDI s8, zero, 1
  JAL zero, bb17
read_str:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  ADD s1, a0, zero
  SLLI s2, zero, 2
  ADD s2, s1, s2
  CALL getch
  ADD s3, a0, zero
  SW s3, 0(s2)
  XORI s3, s3, 10
  SLTIU s3, s3, 1
  BNE s3, zero, bb32
  # implict jump to bb25
bb25:
  # implict jump to bb26
bb26:
  ADD s3, zero, zero
  # implict jump to bb27
bb27:
  ADD s4, s3, zero
  ADDIW s0, s4, 1
  # implict jump to bb28
bb28:
  SLLIW s4, s0, 2
  ADD s4, s1, s4
  CALL getch
  ADD s5, a0, zero
  SW s5, 0(s4)
  XORI s5, s5, 10
  SLTIU s5, s5, 1
  BNE s5, zero, bb30
  # implict jump to bb29
bb29:
  ADD s3, s0, zero
  JAL zero, bb27
bb30:
  ADD s1, s4, zero
  # implict jump to bb31
bb31:
  SW zero, 0(s1)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb32:
  ADD s1, s2, zero
  ADD s0, zero, zero
  JAL zero, bb31
main:
  LUI t0, 1048564
  ADDIW t0, t0, -128
  ADD sp, sp, t0
  SD ra, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s5, 56(sp)
  LUI t5, 12
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 72
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 80
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SD s9, 0(t5)
  SLLI s4, zero, 2
  LUI t5, 8
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  ADD s4, t5, s4
  CALL getch
  ADD s5, a0, zero
  SW s5, 0(s4)
  XORI s5, s5, 10
  SLTIU s5, s5, 1
  BNE s5, zero, bb73
  # implict jump to bb34
bb34:
  # implict jump to bb35
bb35:
  ADD s5, zero, zero
  # implict jump to bb36
bb36:
  ADD s6, s5, zero
  ADDIW s0, s6, 1
  # implict jump to bb37
bb37:
  SLLIW s6, s0, 2
  LUI t5, 8
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  ADD s6, t5, s6
  CALL getch
  ADD s7, a0, zero
  SW s7, 0(s6)
  XORI s7, s7, 10
  SLTIU s7, s7, 1
  BNE s7, zero, bb39
  # implict jump to bb38
bb38:
  ADD s5, s0, zero
  JAL zero, bb36
bb39:
  ADD s0, s6, zero
  # implict jump to bb40
bb40:
  SW zero, 0(s0)
  SLLI s0, zero, 2
  LUI t5, 4
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  ADD s0, t5, s0
  CALL getch
  ADD s4, a0, zero
  SW s4, 0(s0)
  XORI s4, s4, 10
  SLTIU s4, s4, 1
  BNE s4, zero, bb72
  # implict jump to bb41
bb41:
  # implict jump to bb42
bb42:
  ADD s4, zero, zero
  # implict jump to bb43
bb43:
  ADD s5, s4, zero
  ADDIW s3, s5, 1
  # implict jump to bb44
bb44:
  SLLIW s5, s3, 2
  LUI t5, 4
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  ADD s5, t5, s5
  CALL getch
  ADD s6, a0, zero
  SW s6, 0(s5)
  XORI s6, s6, 10
  SLTIU s6, s6, 1
  BNE s6, zero, bb46
  # implict jump to bb45
bb45:
  ADD s4, s3, zero
  JAL zero, bb43
bb46:
  ADD s3, s5, zero
  # implict jump to bb47
bb47:
  SW zero, 0(s3)
  ADDI s0, zero, -1
  SW s0, 64(sp)
  SLLI s0, zero, 2
  LUI t5, 8
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  ADD s0, t5, s0
  LW s0, 0(s0)
  BNE s0, zero, bb61
  # implict jump to bb48
bb48:
  ADD s6, zero, zero
  ADD s7, zero, zero
  # implict jump to bb49
bb49:
  ADD s8, s7, zero
  ADD s9, s6, zero
  SLLIW s10, s9, 2
  LUI t5, 4
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  ADD s10, t5, s10
  LW s10, 0(s10)
  BNE s10, zero, bb52
  # implict jump to bb50
bb50:
  ADDI s11, zero, -1
  # implict jump to bb51
bb51:
  ADD a0, s11, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s5, 56(sp)
  LUI t5, 12
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 72
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 80
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t0, 12
  ADDIW t0, t0, 128
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb52:
  SLLIW s4, s8, 2
  LUI t5, 8
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  ADD s2, t5, s4
  LW s2, 0(s2)
  XOR s2, s2, s10
  SLTIU s2, s2, 1
  BNE s2, zero, bb58
  # implict jump to bb53
bb53:
  ADDI t5, sp, 64
  ADD s2, t5, s4
  LW s2, 0(s2)
  XORI s4, s2, -1
  SLTIU s4, s4, 1
  BNE s4, zero, bb57
  # implict jump to bb54
bb54:
  ADD s4, s9, zero
  ADD s10, s2, zero
  # implict jump to bb55
bb55:
  ADD s2, s4, zero
  ADD s3, s10, zero
  # implict jump to bb56
bb56:
  ADD s6, s2, zero
  ADD s7, s3, zero
  JAL zero, bb49
bb57:
  ADDIW s2, s2, 1
  ADDIW s3, s9, 1
  ADD s4, s3, zero
  ADD s10, s2, zero
  JAL zero, bb55
bb58:
  ADDIW s4, s8, 1
  ADDIW s8, s9, 1
  SLLIW s9, s4, 2
  LUI t5, 8
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  ADD s9, t5, s9
  LW s9, 0(s9)
  SLTU s9, zero, s9
  XORI s9, s9, 1
  BNE s9, zero, bb60
  # implict jump to bb59
bb59:
  ADD s2, s8, zero
  ADD s3, s4, zero
  JAL zero, bb56
bb60:
  ADD s11, s8, zero
  JAL zero, bb51
bb61:
  ADDI s3, zero, -1
  # implict jump to bb62
bb62:
  ADD t4, s3, zero
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb63
bb63:
  LW t4, 8(sp)
  ADD s5, t4, zero
  LW t4, 0(sp)
  ADD s6, t4, zero
  ADD s7, s0, zero
  XORI s8, s6, -1
  SLTIU s8, s8, 1
  BNE s8, zero, bb71
  # implict jump to bb64
bb64:
  SLLIW s8, s6, 2
  LUI t5, 8
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  ADD s8, t5, s8
  LW s8, 0(s8)
  XOR s7, s7, s8
  SLTIU s7, s7, 1
  # implict jump to bb65
bb65:
  BNE s7, zero, bb70
  # implict jump to bb66
bb66:
  SLLIW s7, s6, 2
  ADDI t5, sp, 64
  ADD s7, t5, s7
  LW s7, 0(s7)
  ADD s8, s5, zero
  # implict jump to bb67
bb67:
  ADD s1, s7, zero
  ADD t4, s8, zero
  SW t4, 4(sp)
  # implict jump to bb68
bb68:
  LW t4, 4(sp)
  SLLIW s5, t4, 2
  LUI t5, 8
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  ADD s5, t5, s5
  LW s5, 0(s5)
  BNE s5, zero, bb69
  JAL zero, bb48
bb69:
  ADD s0, s5, zero
  ADD t4, s1, zero
  SW t4, 0(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb63
bb70:
  ADDIW s6, s6, 1
  ADDIW s5, s5, 1
  SLLIW s9, s5, 2
  ADDI t5, sp, 64
  ADD s9, t5, s9
  SW s6, 0(s9)
  ADD s8, s5, zero
  ADD s7, s6, zero
  JAL zero, bb67
bb71:
  ADDI s7, zero, 1
  JAL zero, bb65
bb72:
  ADD s3, s0, zero
  JAL zero, bb47
bb73:
  ADD s0, s4, zero
  JAL zero, bb40
get_next:
  ADDI sp, sp, -96
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
  ADDI s2, zero, -1
  SW s2, 0(a1)
  SLLI s2, zero, 2
  ADD s2, a0, s2
  LW s2, 0(s2)
  BNE s2, zero, bb76
  # implict jump to bb75
bb75:
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
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb76:
  ADDI s3, zero, -1
  # implict jump to bb77
bb77:
  ADD s4, zero, zero
  # implict jump to bb78
bb78:
  ADD s5, s4, zero
  ADD s6, s3, zero
  ADD s7, s2, zero
  XORI s8, s6, -1
  SLTIU s8, s8, 1
  BNE s8, zero, bb86
  # implict jump to bb79
bb79:
  SLLIW s8, s6, 2
  ADD s8, a0, s8
  LW s8, 0(s8)
  XOR s7, s7, s8
  SLTIU s7, s7, 1
  # implict jump to bb80
bb80:
  BNE s7, zero, bb85
  # implict jump to bb81
bb81:
  SLLIW s7, s6, 2
  ADD s7, a1, s7
  LW s7, 0(s7)
  ADD s8, s5, zero
  # implict jump to bb82
bb82:
  ADD s1, s7, zero
  ADD s0, s8, zero
  # implict jump to bb83
bb83:
  SLLIW s5, s0, 2
  ADD s5, a0, s5
  LW s5, 0(s5)
  BNE s5, zero, bb84
  JAL zero, bb75
bb84:
  ADD s2, s5, zero
  ADD s3, s1, zero
  ADD s4, s0, zero
  JAL zero, bb78
bb85:
  ADDIW s6, s6, 1
  ADDIW s5, s5, 1
  SLLIW s9, s5, 2
  ADD s9, a1, s9
  SW s6, 0(s9)
  ADD s8, s5, zero
  ADD s7, s6, zero
  JAL zero, bb82
bb86:
  ADDI s7, zero, 1
  JAL zero, bb80
