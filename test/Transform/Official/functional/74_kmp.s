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
  ADD a1, a1, zero
  ADDI s1, zero, -1
  SW s1, 0(sp)
  ADD s1, zero, zero
  ADDI s2, zero, -1
  # implict jump to bb1
bb1:
  ADD s3, s2, zero
  ADD s4, s1, zero
  SLLIW s5, s4, 2
  ADD s5, s0, s5
  LW s6, 0(s5)
  XOR s6, s6, zero
  SLTU s6, zero, s6
  BNE s6, zero, bb14
  # implict jump to bb2
bb2:
  ADD s6, zero, zero
  ADD s7, zero, zero
  # implict jump to bb3
bb3:
  ADD s8, s7, zero
  ADD s9, s6, zero
  SLLIW s10, s9, 2
  ADD s10, a1, s10
  LW s11, 0(s10)
  XOR s11, s11, zero
  SLTU s11, zero, s11
  BNE s11, zero, bb5
  # implict jump to bb4
bb4:
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
bb5:
  SLLIW s11, s8, 2
  ADD t0, s0, s11
  LW t0, 0(t0)
  LW s10, 0(s10)
  XOR s10, t0, s10
  SLTIU s10, s10, 1
  BNE s10, zero, bb11
  # implict jump to bb6
bb6:
  ADDI t5, sp, 0
  ADD s10, t5, s11
  LW s10, 0(s10)
  XORI s11, s10, -1
  SLTIU s11, s11, 1
  BNE s11, zero, bb10
  # implict jump to bb7
bb7:
  ADD s11, s9, zero
  ADD t0, s10, zero
  # implict jump to bb8
bb8:
  ADD t0, t0, zero
  ADD s11, s11, zero
  ADD s10, s11, zero
  ADD s11, t0, zero
  # implict jump to bb9
bb9:
  ADD s11, s11, zero
  ADD s10, s10, zero
  ADD s6, s10, zero
  ADD s7, s11, zero
  JAL zero, bb3
bb10:
  ADDIW s10, s10, 1
  ADDIW t1, s9, 1
  ADD s11, t1, zero
  ADD t0, s10, zero
  JAL zero, bb8
bb11:
  ADDIW s8, s8, 1
  ADDIW s9, s9, 1
  SLLIW t0, s8, 2
  ADD t0, s0, t0
  LW t0, 0(t0)
  XOR t0, t0, zero
  SLTU t0, zero, t0
  XORI t0, t0, 1
  XOR t0, t0, zero
  SLTU t0, zero, t0
  BNE t0, zero, bb13
  # implict jump to bb12
bb12:
  ADD s10, s9, zero
  ADD s11, s8, zero
  JAL zero, bb9
bb13:
  ADD a0, s9, zero
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
bb14:
  XORI s6, s3, -1
  SLTIU s6, s6, 1
  BNE s6, zero, bb20
  # implict jump to bb15
bb15:
  LW s5, 0(s5)
  SLLIW s6, s3, 2
  ADD s6, s0, s6
  LW s6, 0(s6)
  XOR s5, s5, s6
  SLTIU s5, s5, 1
  ADD s5, s5, zero
  # implict jump to bb16
bb16:
  ADD s5, s5, zero
  BNE s5, zero, bb19
  # implict jump to bb17
bb17:
  SLLIW s5, s3, 2
  ADDI t5, sp, 0
  ADD s5, t5, s5
  LW s5, 0(s5)
  ADD s6, s4, zero
  ADD s5, s5, zero
  # implict jump to bb18
bb18:
  ADD s5, s5, zero
  ADD s6, s6, zero
  ADD s1, s6, zero
  ADD s2, s5, zero
  JAL zero, bb1
bb19:
  ADDIW s3, s3, 1
  ADDIW s4, s4, 1
  SLLIW s7, s4, 2
  ADDI t5, sp, 0
  ADD s7, t5, s7
  SW s3, 0(s7)
  ADD s6, s4, zero
  ADD s5, s3, zero
  JAL zero, bb18
bb20:
  ADDI s5, zero, 1
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
  ADD s1, zero, zero
  # implict jump to bb22
bb22:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  ADD s3, s0, s3
  CALL getch
  ADD s4, a0, zero
  SW s4, 0(s3)
  XORI s4, s4, 10
  SLTIU s4, s4, 1
  BNE s4, zero, bb24
  # implict jump to bb23
bb23:
  ADDIW s4, s2, 1
  ADD s1, s4, zero
  JAL zero, bb22
bb24:
  SW zero, 0(s3)
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  LUI t0, 1048564
  ADDIW t0, t0, -112
  ADD sp, sp, t0
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  SD s5, 56(sp)
  SD s7, 64(sp)
  SD s10, 72(sp)
  LUI t5, 4
  ADDIW t5, t5, 80
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t5, 8
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 8
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  SD s9, 0(t5)
  ADD s0, zero, zero
  # implict jump to bb26
bb26:
  ADD s1, s0, zero
  SLLIW s2, s1, 2
  ADDI t5, sp, 80
  ADD s2, t5, s2
  CALL getch
  ADD s3, a0, zero
  SW s3, 0(s2)
  XORI s3, s3, 10
  SLTIU s3, s3, 1
  BNE s3, zero, bb28
  # implict jump to bb27
bb27:
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb26
bb28:
  SW zero, 0(s2)
  ADD s0, zero, zero
  # implict jump to bb29
bb29:
  ADD s1, s0, zero
  SLLIW s2, s1, 2
  LUI t5, 4
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  ADD s2, t5, s2
  CALL getch
  ADD s3, a0, zero
  SW s3, 0(s2)
  XORI s3, s3, 10
  SLTIU s3, s3, 1
  BNE s3, zero, bb31
  # implict jump to bb30
bb30:
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb29
bb31:
  SW zero, 0(s2)
  ADDI s0, zero, -1
  LUI t4, 8
  ADDIW t4, t4, 112
  ADD t4, t4, sp
  SW s0, 0(t4)
  ADD t4, zero, zero
  SW t4, 0(sp)
  ADDI t4, zero, -1
  SW t4, 4(sp)
  # implict jump to bb32
bb32:
  LW t4, 4(sp)
  ADD s2, t4, zero
  LW t4, 0(sp)
  ADD s3, t4, zero
  SLLIW s4, s3, 2
  ADDI t5, sp, 80
  ADD s4, t5, s4
  LW s5, 0(s4)
  XOR s5, s5, zero
  SLTU s5, zero, s5
  BNE s5, zero, bb46
  # implict jump to bb33
bb33:
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb34
bb34:
  ADD s7, s6, zero
  ADD s8, s5, zero
  SLLIW s9, s8, 2
  LUI t5, 4
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  ADD s9, t5, s9
  LW s10, 0(s9)
  XOR s10, s10, zero
  SLTU s10, zero, s10
  BNE s10, zero, bb37
  # implict jump to bb35
bb35:
  ADDI s10, zero, -1
  # implict jump to bb36
bb36:
  ADD s10, s10, zero
  ADD a0, s10, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s7, 64(sp)
  LD s10, 72(sp)
  LUI t5, 4
  ADDIW t5, t5, 80
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t5, 8
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 8
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t0, 12
  ADDIW t0, t0, 112
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb37:
  SLLIW s11, s7, 2
  ADDI t5, sp, 80
  ADD s1, t5, s11
  LW s1, 0(s1)
  LW s9, 0(s9)
  XOR s1, s1, s9
  SLTIU s1, s1, 1
  BNE s1, zero, bb43
  # implict jump to bb38
bb38:
  LUI t5, 8
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  ADD s1, t5, s11
  LW s1, 0(s1)
  XORI s9, s1, -1
  SLTIU s9, s9, 1
  BNE s9, zero, bb42
  # implict jump to bb39
bb39:
  ADD s9, s8, zero
  ADD s11, s1, zero
  # implict jump to bb40
bb40:
  ADD s11, s11, zero
  ADD s9, s9, zero
  ADD s0, s9, zero
  ADD s1, s11, zero
  # implict jump to bb41
bb41:
  ADD s1, s1, zero
  ADD s0, s0, zero
  ADD s5, s0, zero
  ADD s6, s1, zero
  JAL zero, bb34
bb42:
  ADDIW s1, s1, 1
  ADDIW s0, s8, 1
  ADD s9, s0, zero
  ADD s11, s1, zero
  JAL zero, bb40
bb43:
  ADDIW s7, s7, 1
  ADDIW s8, s8, 1
  SLLIW s9, s7, 2
  ADDI t5, sp, 80
  ADD s9, t5, s9
  LW s9, 0(s9)
  XOR s9, s9, zero
  SLTU s9, zero, s9
  XORI s9, s9, 1
  XOR s9, s9, zero
  SLTU s9, zero, s9
  BNE s9, zero, bb45
  # implict jump to bb44
bb44:
  ADD s0, s8, zero
  ADD s1, s7, zero
  JAL zero, bb41
bb45:
  ADD s10, s8, zero
  JAL zero, bb36
bb46:
  XORI s0, s2, -1
  SLTIU s0, s0, 1
  BNE s0, zero, bb52
  # implict jump to bb47
bb47:
  LW s0, 0(s4)
  SLLIW s1, s2, 2
  ADDI t5, sp, 80
  ADD s1, t5, s1
  LW s1, 0(s1)
  XOR s0, s0, s1
  SLTIU s0, s0, 1
  ADD s0, s0, zero
  # implict jump to bb48
bb48:
  ADD s0, s0, zero
  BNE s0, zero, bb51
  # implict jump to bb49
bb49:
  SLLIW s0, s2, 2
  LUI t5, 8
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  ADD s0, t5, s0
  LW s0, 0(s0)
  ADD s1, s3, zero
  ADD s0, s0, zero
  # implict jump to bb50
bb50:
  ADD s0, s0, zero
  ADD s1, s1, zero
  ADD t4, s1, zero
  SW t4, 0(sp)
  ADD t4, s0, zero
  SW t4, 4(sp)
  JAL zero, bb32
bb51:
  ADDIW s2, s2, 1
  ADDIW s3, s3, 1
  SLLIW s4, s3, 2
  LUI t5, 8
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  ADD s4, t5, s4
  SW s2, 0(s4)
  ADD s1, s3, zero
  ADD s0, s2, zero
  JAL zero, bb50
bb52:
  ADDI s0, zero, 1
  JAL zero, bb48
get_next:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  ADD a0, a0, zero
  ADD a1, a1, zero
  ADDI s0, zero, -1
  SW s0, 0(a1)
  ADD s0, zero, zero
  ADDI s1, zero, -1
  # implict jump to bb54
bb54:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLLIW s4, s3, 2
  ADD s4, a0, s4
  LW s5, 0(s4)
  XOR s5, s5, zero
  SLTU s5, zero, s5
  BNE s5, zero, bb56
  # implict jump to bb55
bb55:
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
bb56:
  XORI s5, s2, -1
  SLTIU s5, s5, 1
  BNE s5, zero, bb62
  # implict jump to bb57
bb57:
  LW s4, 0(s4)
  SLLIW s5, s2, 2
  ADD s5, a0, s5
  LW s5, 0(s5)
  XOR s4, s4, s5
  SLTIU s4, s4, 1
  ADD s4, s4, zero
  # implict jump to bb58
bb58:
  ADD s4, s4, zero
  BNE s4, zero, bb61
  # implict jump to bb59
bb59:
  SLLIW s4, s2, 2
  ADD s4, a1, s4
  LW s4, 0(s4)
  ADD s5, s3, zero
  ADD s4, s4, zero
  # implict jump to bb60
bb60:
  ADD s4, s4, zero
  ADD s5, s5, zero
  ADD s0, s5, zero
  ADD s1, s4, zero
  JAL zero, bb54
bb61:
  ADDIW s2, s2, 1
  ADDIW s3, s3, 1
  SLLIW s6, s3, 2
  ADD s6, a1, s6
  SW s2, 0(s6)
  ADD s5, s3, zero
  ADD s4, s2, zero
  JAL zero, bb60
bb62:
  ADDI s4, zero, 1
  JAL zero, bb58
