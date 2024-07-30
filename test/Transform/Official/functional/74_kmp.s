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
  ADD s0, a0, zero
  ADDI s1, zero, -1
  SW s1, 0(sp)
  LW s1, 0(s0)
  BNE s1, zero, bb13
  # implict jump to bb1
bb1:
  ADD s5, zero, zero
  ADD s8, zero, zero
  # implict jump to bb2
bb2:
  ADD s9, s8, zero
  ADD s10, s5, zero
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
  ADD t1, s0, t0
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
  ADD s5, s11, zero
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
  ADD t1, s0, t1
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
  ADDI s2, zero, -1
  ADD s3, zero, zero
  # implict jump to bb14
bb14:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  XORI s7, s5, -1
  SLTIU s7, s7, 1
  BNE s7, zero, bb21
  # implict jump to bb15
bb15:
  SLLIW s7, s5, 2
  ADD s7, s0, s7
  LW s7, 0(s7)
  XOR s6, s6, s7
  SLTIU s6, s6, 1
  # implict jump to bb16
bb16:
  BNE s6, zero, bb20
  # implict jump to bb17
bb17:
  SLLIW s6, s5, 2
  ADDI t5, sp, 0
  ADD s6, t5, s6
  LW s6, 0(s6)
  ADD s7, s4, zero
  # implict jump to bb18
bb18:
  SLLIW s4, s7, 2
  ADD s4, s0, s4
  LW s4, 0(s4)
  BNE s4, zero, bb19
  JAL zero, bb1
bb19:
  ADD s1, s4, zero
  ADD s2, s6, zero
  ADD s3, s7, zero
  JAL zero, bb14
bb20:
  ADDIW s5, s5, 1
  ADDIW s4, s4, 1
  SLLIW s8, s4, 2
  ADDI t5, sp, 0
  ADD s8, t5, s8
  SW s5, 0(s8)
  ADD s7, s4, zero
  ADD s6, s5, zero
  JAL zero, bb18
bb21:
  ADDI s6, zero, 1
  JAL zero, bb16
read_str:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  ADD s0, a0, zero
  CALL getch
  ADD s1, a0, zero
  SW s1, 0(s0)
  XORI s1, s1, 10
  SLTIU s1, s1, 1
  BNE s1, zero, bb28
  # implict jump to bb23
bb23:
  ADD s1, zero, zero
  # implict jump to bb24
bb24:
  ADD s2, s1, zero
  ADDIW s2, s2, 1
  SLLIW s3, s2, 2
  ADD s3, s0, s3
  CALL getch
  ADD s4, a0, zero
  SW s4, 0(s3)
  XORI s4, s4, 10
  SLTIU s4, s4, 1
  BNE s4, zero, bb26
  # implict jump to bb25
bb25:
  ADD s1, s2, zero
  JAL zero, bb24
bb26:
  ADD s1, s3, zero
  # implict jump to bb27
bb27:
  SW zero, 0(s1)
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb28:
  ADD s1, s0, zero
  ADD s2, zero, zero
  JAL zero, bb27
main:
  LUI t0, 1048564
  ADDIW t0, t0, -128
  ADD sp, sp, t0
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s7, 72(sp)
  SD s10, 80(sp)
  SD s11, 88(sp)
  SD s8, 96(sp)
  SD s9, 104(sp)
  LUI t5, 8
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SD s6, 0(t5)
  CALL getch
  ADD s0, a0, zero
  SW s0, 112(sp)
  XORI s0, s0, 10
  SLTIU s0, s0, 1
  BNE s0, zero, bb63
  # implict jump to bb30
bb30:
  ADD s0, zero, zero
  # implict jump to bb31
bb31:
  ADD s1, s0, zero
  ADDIW s1, s1, 1
  SLLIW s2, s1, 2
  ADDI t5, sp, 112
  ADD s2, t5, s2
  CALL getch
  ADD s3, a0, zero
  SW s3, 0(s2)
  XORI s3, s3, 10
  SLTIU s3, s3, 1
  BNE s3, zero, bb33
  # implict jump to bb32
bb32:
  ADD s0, s1, zero
  JAL zero, bb31
bb33:
  ADD s0, s2, zero
  # implict jump to bb34
bb34:
  SW zero, 0(s0)
  CALL getch
  ADD s0, a0, zero
  LUI t5, 4
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW s0, 0(t5)
  XORI s0, s0, 10
  SLTIU s0, s0, 1
  BNE s0, zero, bb62
  # implict jump to bb35
bb35:
  ADD s0, zero, zero
  # implict jump to bb36
bb36:
  ADD s1, s0, zero
  ADDIW s1, s1, 1
  SLLIW s2, s1, 2
  LUI t5, 4
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  ADD s2, t5, s2
  CALL getch
  ADD s3, a0, zero
  SW s3, 0(s2)
  XORI s3, s3, 10
  SLTIU s3, s3, 1
  BNE s3, zero, bb38
  # implict jump to bb37
bb37:
  ADD s0, s1, zero
  JAL zero, bb36
bb38:
  ADD s0, s2, zero
  # implict jump to bb39
bb39:
  SW zero, 0(s0)
  ADDI s0, zero, -1
  LUI t5, 8
  ADDIW t5, t5, 120
  ADD t5, t5, sp
  SW s0, 0(t5)
  LW s0, 112(sp)
  BNE s0, zero, bb53
  # implict jump to bb40
bb40:
  ADD s4, zero, zero
  ADD s7, zero, zero
  # implict jump to bb41
bb41:
  ADD s8, s7, zero
  ADD s9, s4, zero
  SLLIW s10, s9, 2
  LUI t5, 4
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  ADD s10, t5, s10
  LW s10, 0(s10)
  BNE s10, zero, bb44
  # implict jump to bb42
bb42:
  ADDI s11, zero, -1
  # implict jump to bb43
bb43:
  ADD a0, s11, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s7, 72(sp)
  LD s10, 80(sp)
  LD s11, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LUI t5, 8
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t0, 12
  ADDIW t0, t0, 128
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb44:
  SLLIW s2, s8, 2
  ADDI t5, sp, 112
  ADD s6, t5, s2
  LW s6, 0(s6)
  XOR s6, s6, s10
  SLTIU s6, s6, 1
  BNE s6, zero, bb50
  # implict jump to bb45
bb45:
  LUI t5, 8
  ADDIW t5, t5, 120
  ADD t5, t5, sp
  ADD s2, t5, s2
  LW s2, 0(s2)
  XORI s6, s2, -1
  SLTIU s6, s6, 1
  BNE s6, zero, bb49
  # implict jump to bb46
bb46:
  ADD s6, s9, zero
  ADD s10, s2, zero
  # implict jump to bb47
bb47:
  ADD s1, s6, zero
  ADD s2, s10, zero
  # implict jump to bb48
bb48:
  ADD s4, s1, zero
  ADD s7, s2, zero
  JAL zero, bb41
bb49:
  ADDIW s2, s2, 1
  ADDIW s1, s9, 1
  ADD s6, s1, zero
  ADD s10, s2, zero
  JAL zero, bb47
bb50:
  ADDIW s6, s8, 1
  ADDIW s8, s9, 1
  SLLIW s9, s6, 2
  ADDI t5, sp, 112
  ADD s9, t5, s9
  LW s9, 0(s9)
  SLTU s9, zero, s9
  XORI s9, s9, 1
  BNE s9, zero, bb52
  # implict jump to bb51
bb51:
  ADD s1, s8, zero
  ADD s2, s6, zero
  JAL zero, bb48
bb52:
  ADD s11, s8, zero
  JAL zero, bb43
bb53:
  ADDI t4, zero, -1
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb54
bb54:
  LW t4, 8(sp)
  ADD s3, t4, zero
  LW t4, 0(sp)
  ADD s4, t4, zero
  ADD s5, s0, zero
  XORI s6, s4, -1
  SLTIU s6, s6, 1
  BNE s6, zero, bb61
  # implict jump to bb55
bb55:
  SLLIW s6, s4, 2
  ADDI t5, sp, 112
  ADD s6, t5, s6
  LW s6, 0(s6)
  XOR s5, s5, s6
  SLTIU s5, s5, 1
  # implict jump to bb56
bb56:
  BNE s5, zero, bb60
  # implict jump to bb57
bb57:
  SLLIW s5, s4, 2
  LUI t5, 8
  ADDIW t5, t5, 120
  ADD t5, t5, sp
  ADD s5, t5, s5
  LW s5, 0(s5)
  ADD s6, s3, zero
  # implict jump to bb58
bb58:
  ADD t4, s6, zero
  SW t4, 4(sp)
  LW t4, 4(sp)
  SLLIW s3, t4, 2
  ADDI t5, sp, 112
  ADD s3, t5, s3
  LW s3, 0(s3)
  BNE s3, zero, bb59
  JAL zero, bb40
bb59:
  ADD s0, s3, zero
  ADD t4, s5, zero
  SW t4, 0(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb54
bb60:
  ADDIW s4, s4, 1
  ADDIW s3, s3, 1
  SLLIW s7, s3, 2
  LUI t5, 8
  ADDIW t5, t5, 120
  ADD t5, t5, sp
  ADD s7, t5, s7
  SW s4, 0(s7)
  ADD s6, s3, zero
  ADD s5, s4, zero
  JAL zero, bb58
bb61:
  ADDI s5, zero, 1
  JAL zero, bb56
bb62:
  LUI t5, 4
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  ADD s0, t5, zero
  JAL zero, bb39
bb63:
  ADDI t5, sp, 112
  ADD s0, t5, zero
  JAL zero, bb34
get_next:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  ADDI s0, zero, -1
  SW s0, 0(a1)
  LW s0, 0(a0)
  BNE s0, zero, bb66
  # implict jump to bb65
bb65:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb66:
  ADDI s1, zero, -1
  ADD s2, zero, zero
  # implict jump to bb67
bb67:
  ADD s3, s2, zero
  ADD s4, s1, zero
  ADD s5, s0, zero
  XORI s6, s4, -1
  SLTIU s6, s6, 1
  BNE s6, zero, bb74
  # implict jump to bb68
bb68:
  SLLIW s6, s4, 2
  ADD s6, a0, s6
  LW s6, 0(s6)
  XOR s5, s5, s6
  SLTIU s5, s5, 1
  # implict jump to bb69
bb69:
  BNE s5, zero, bb73
  # implict jump to bb70
bb70:
  SLLIW s5, s4, 2
  ADD s5, a1, s5
  LW s5, 0(s5)
  ADD s6, s3, zero
  # implict jump to bb71
bb71:
  SLLIW s3, s6, 2
  ADD s3, a0, s3
  LW s3, 0(s3)
  BNE s3, zero, bb72
  JAL zero, bb65
bb72:
  ADD s0, s3, zero
  ADD s1, s5, zero
  ADD s2, s6, zero
  JAL zero, bb67
bb73:
  ADDIW s4, s4, 1
  ADDIW s3, s3, 1
  SLLIW s7, s3, 2
  ADD s7, a1, s7
  SW s4, 0(s7)
  ADD s6, s3, zero
  ADD s5, s4, zero
  JAL zero, bb71
bb74:
  ADDI s5, zero, 1
  JAL zero, bb69
