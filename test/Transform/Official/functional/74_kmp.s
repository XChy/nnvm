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
  SD s11, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 8
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 16
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 40
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 48
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 72
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 80
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  SD s9, 0(t5)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDI s2, zero, -1
  SW s2, 0(sp)
  ADD s2, zero, zero
  ADDI s3, zero, -1
  # implict jump to bb1
bb1:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADD s6, s0, s7
  LW s7, 0(s6)
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb14
  # implict jump to bb2
bb2:
  ADD s2, zero, zero
  ADD s3, zero, zero
  # implict jump to bb3
bb3:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADD s6, s1, s7
  LW s7, 0(s6)
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb5
  # implict jump to bb4
bb4:
  ADDI a0, zero, -1
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 8
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI ra, 4
  ADDIW ra, ra, 16
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 4
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 40
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 48
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 72
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 80
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t0, 4
  ADDIW t0, t0, 112
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb5:
  ADDI s7, zero, 4
  MULW s8, s4, s7
  ADD s7, s0, s8
  LW s9, 0(s7)
  LW s7, 0(s6)
  XOR s6, s9, s7
  SLTIU s7, s6, 1
  BNE s7, zero, bb11
  # implict jump to bb6
bb6:
  ADDI t5, sp, 0
  ADD s2, t5, s8
  LW s3, 0(s2)
  XORI s2, s3, -1
  SLTIU s6, s2, 1
  BNE s6, zero, bb10
  # implict jump to bb7
bb7:
  ADD s8, s5, zero
  ADD s6, s3, zero
  # implict jump to bb8
bb8:
  ADD s2, s6, zero
  ADD s9, s8, zero
  ADD s7, s9, zero
  ADD s4, s2, zero
  # implict jump to bb9
bb9:
  ADD s6, s4, zero
  ADD s9, s7, zero
  ADD s2, s9, zero
  ADD s3, s6, zero
  JAL zero, bb3
bb10:
  ADDIW s2, s3, 1
  ADDIW s6, s5, 1
  ADD s8, s6, zero
  ADD s6, s2, zero
  JAL zero, bb8
bb11:
  ADDIW s6, s4, 1
  ADDIW s4, s5, 1
  ADDI s7, zero, 4
  MULW s9, s6, s7
  ADD s7, s0, s9
  LW s9, 0(s7)
  XOR s7, s9, zero
  SLTU s9, zero, s7
  XORI s7, s9, 1
  XOR s9, s7, zero
  SLTU s7, zero, s9
  BNE s7, zero, bb13
  # implict jump to bb12
bb12:
  ADD s7, s4, zero
  ADD s4, s6, zero
  JAL zero, bb9
bb13:
  ADD a0, s4, zero
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 8
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI ra, 4
  ADDIW ra, ra, 16
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 4
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 40
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 48
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 72
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 80
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t0, 4
  ADDIW t0, t0, 112
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb14:
  XORI s7, s4, -1
  SLTIU s8, s7, 1
  BNE s8, zero, bb20
  # implict jump to bb15
bb15:
  LW s2, 0(s6)
  ADDI s3, zero, 4
  MULW s6, s4, s3
  ADD s3, s0, s6
  LW s6, 0(s3)
  XOR s3, s2, s6
  SLTIU s2, s3, 1
  ADD s7, s2, zero
  # implict jump to bb16
bb16:
  ADD s8, s7, zero
  BNE s8, zero, bb19
  # implict jump to bb17
bb17:
  ADDI s2, zero, 4
  MULW s3, s4, s2
  ADDI t5, sp, 0
  ADD s2, t5, s3
  LW s3, 0(s2)
  ADD s10, s5, zero
  ADD s9, s3, zero
  # implict jump to bb18
bb18:
  ADD s8, s9, zero
  ADD s11, s10, zero
  ADD s2, s11, zero
  ADD s3, s8, zero
  JAL zero, bb1
bb19:
  ADDIW s8, s4, 1
  ADDIW s9, s5, 1
  ADDI s10, zero, 4
  MULW s11, s9, s10
  ADDI t5, sp, 0
  ADD s10, t5, s11
  SW s8, 0(s10)
  ADD s10, s9, zero
  ADD s9, s8, zero
  JAL zero, bb18
bb20:
  ADDI s7, zero, 1
  JAL zero, bb16
read_str:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb22
bb22:
  ADD s2, s1, zero
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s3, s0, s4
  CALL getch
  ADD s4, a0, zero
  SW s4, 0(s3)
  XORI s5, s4, 10
  SLTIU s4, s5, 1
  BNE s4, zero, bb24
  # implict jump to bb23
bb23:
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb22
bb24:
  SW zero, 0(s3)
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
main:
  LUI t0, 1048564
  ADDIW t0, t0, -112
  ADD sp, sp, t0
  LUI t5, 12
  ADDIW t5, t5, 8
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 16
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 40
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 48
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 72
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 80
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t4, 12
  ADDIW t4, t4, 96
  ADD t4, t4, sp
  SD s0, 0(t4)
  LUI t4, 12
  ADDIW t4, t4, 104
  ADD t4, t4, sp
  SD s8, 0(t4)
  ADD t4, zero, zero
  LUI t5, 12
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb26
bb26:
  LUI t3, 12
  ADDIW t3, t3, 0
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 12
  ADDIW t5, t5, 4
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI s2, zero, 4
  LUI t4, 12
  ADDIW t4, t4, 4
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s3, t4, s2
  LUI t5, 8
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD s2, t5, s3
  CALL getch
  ADD s3, a0, zero
  SW s3, 0(s2)
  XORI s4, s3, 10
  SLTIU s3, s4, 1
  BNE s3, zero, bb28
  # implict jump to bb27
bb27:
  LUI t4, 12
  ADDIW t4, t4, 4
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  LUI t5, 12
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb26
bb28:
  SW zero, 0(s2)
  ADD s2, zero, zero
  # implict jump to bb29
bb29:
  ADD s3, s2, zero
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD s4, t5, s5
  CALL getch
  ADD s5, a0, zero
  SW s5, 0(s4)
  XORI s6, s5, 10
  SLTIU s5, s6, 1
  BNE s5, zero, bb31
  # implict jump to bb30
bb30:
  ADDIW s0, s3, 1
  ADD s2, s0, zero
  JAL zero, bb29
bb31:
  SW zero, 0(s4)
  ADDI s4, zero, -1
  SW s4, 0(sp)
  ADD s4, zero, zero
  ADDI s5, zero, -1
  # implict jump to bb32
bb32:
  ADD s6, s5, zero
  ADD s7, s4, zero
  ADDI s8, zero, 4
  MULW s9, s7, s8
  LUI t5, 8
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD s8, t5, s9
  LW s9, 0(s8)
  XOR s10, s9, zero
  SLTU s9, zero, s10
  BNE s9, zero, bb46
  # implict jump to bb33
bb33:
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb34
bb34:
  ADD s4, s1, zero
  ADD s5, s0, zero
  ADDI s6, zero, 4
  MULW s7, s5, s6
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD s6, t5, s7
  LW s7, 0(s6)
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb37
  # implict jump to bb35
bb35:
  ADDI s7, zero, -1
  # implict jump to bb36
bb36:
  ADD s9, s7, zero
  ADD a0, s9, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LUI t5, 12
  ADDIW t5, t5, 8
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 16
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 40
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 48
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI ra, 12
  ADDIW ra, ra, 56
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 12
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 72
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 80
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 12
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t0, 12
  ADDIW t0, t0, 112
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb37:
  ADDI s7, zero, 4
  MULW s8, s4, s7
  LUI t5, 8
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD s7, t5, s8
  LW s9, 0(s7)
  LW s7, 0(s6)
  XOR s6, s9, s7
  SLTIU s7, s6, 1
  BNE s7, zero, bb43
  # implict jump to bb38
bb38:
  ADDI t5, sp, 0
  ADD s0, t5, s8
  LW s1, 0(s0)
  XORI s0, s1, -1
  SLTIU s6, s0, 1
  BNE s6, zero, bb42
  # implict jump to bb39
bb39:
  ADD s8, s5, zero
  ADD s6, s1, zero
  # implict jump to bb40
bb40:
  ADD s0, s6, zero
  ADD s10, s8, zero
  ADD s9, s10, zero
  ADD s4, s0, zero
  # implict jump to bb41
bb41:
  ADD s6, s4, zero
  ADD s10, s9, zero
  ADD s0, s10, zero
  ADD s1, s6, zero
  JAL zero, bb34
bb42:
  ADDIW s0, s1, 1
  ADDIW s6, s5, 1
  ADD s8, s6, zero
  ADD s6, s0, zero
  JAL zero, bb40
bb43:
  ADDIW s6, s4, 1
  ADDIW s4, s5, 1
  ADDI s7, zero, 4
  MULW s9, s6, s7
  LUI t5, 8
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD s7, t5, s9
  LW s9, 0(s7)
  XOR s7, s9, zero
  SLTU s9, zero, s7
  XORI s7, s9, 1
  XOR s9, s7, zero
  SLTU s7, zero, s9
  BNE s7, zero, bb45
  # implict jump to bb44
bb44:
  ADD s9, s4, zero
  ADD s4, s6, zero
  JAL zero, bb41
bb45:
  ADD s7, s4, zero
  JAL zero, bb36
bb46:
  XORI s9, s6, -1
  SLTIU s10, s9, 1
  BNE s10, zero, bb52
  # implict jump to bb47
bb47:
  LW s0, 0(s8)
  ADDI s1, zero, 4
  MULW s4, s6, s1
  LUI t5, 8
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD s1, t5, s4
  LW s4, 0(s1)
  XOR s1, s0, s4
  SLTIU s0, s1, 1
  ADD s9, s0, zero
  # implict jump to bb48
bb48:
  ADD s10, s9, zero
  BNE s10, zero, bb51
  # implict jump to bb49
bb49:
  ADDI s4, zero, 4
  MULW s5, s6, s4
  ADDI t5, sp, 0
  ADD s4, t5, s5
  LW s5, 0(s4)
  ADD s0, s7, zero
  ADD s1, s5, zero
  # implict jump to bb50
bb50:
  ADD s10, s1, zero
  ADD s11, s0, zero
  ADD s4, s11, zero
  ADD s5, s10, zero
  JAL zero, bb32
bb51:
  ADDIW s10, s6, 1
  ADDIW s11, s7, 1
  ADDI s0, zero, 4
  MULW s1, s11, s0
  ADDI t5, sp, 0
  ADD s0, t5, s1
  SW s10, 0(s0)
  ADD s0, s11, zero
  ADD s1, s10, zero
  JAL zero, bb50
bb52:
  ADDI s9, zero, 1
  JAL zero, bb48
get_next:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s9, 16(sp)
  SD s0, 24(sp)
  SD s5, 32(sp)
  SD s7, 40(sp)
  SD s1, 48(sp)
  SD s6, 56(sp)
  SD s8, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD ra, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDI s2, zero, -1
  SW s2, 0(s1)
  ADD s2, zero, zero
  ADDI s3, zero, -1
  # implict jump to bb54
bb54:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADD s6, s0, s7
  LW s7, 0(s6)
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb56
  # implict jump to bb55
bb55:
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s7, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s8, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb56:
  XORI s7, s4, -1
  SLTIU s8, s7, 1
  BNE s8, zero, bb62
  # implict jump to bb57
bb57:
  LW s2, 0(s6)
  ADDI s3, zero, 4
  MULW s6, s4, s3
  ADD s3, s0, s6
  LW s6, 0(s3)
  XOR s3, s2, s6
  SLTIU s2, s3, 1
  ADD s7, s2, zero
  # implict jump to bb58
bb58:
  ADD s8, s7, zero
  BNE s8, zero, bb61
  # implict jump to bb59
bb59:
  ADDI s2, zero, 4
  MULW s3, s4, s2
  ADD s2, s1, s3
  LW s3, 0(s2)
  ADD s10, s5, zero
  ADD s9, s3, zero
  # implict jump to bb60
bb60:
  ADD s8, s9, zero
  ADD s11, s10, zero
  ADD s2, s11, zero
  ADD s3, s8, zero
  JAL zero, bb54
bb61:
  ADDIW s8, s4, 1
  ADDIW s9, s5, 1
  ADDI s10, zero, 4
  MULW s11, s9, s10
  ADD s10, s1, s11
  SW s8, 0(s10)
  ADD s10, s9, zero
  ADD s9, s8, zero
  JAL zero, bb60
bb62:
  ADDI s7, zero, 1
  JAL zero, bb58
