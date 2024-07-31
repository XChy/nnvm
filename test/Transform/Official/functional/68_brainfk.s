.global main
.global interpret
.section .bss

program:
.space 131072
tape:
.space 262144
.section .data
ptr:
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
  CALL getint
  ADD s0, a0, zero
  ADDI s1, zero, 0
  BLT s1, s0, bb3
  # implict jump to bb1
bb1:
  ADD s1, zero, zero
  # implict jump to bb2
bb2:
  SLLIW s1, s1, 2
  LA s4, program
  ADD s1, s4, s1
  SW zero, 0(s1)
  LA s1, program
  ADD a0, s1, zero
  CALL interpret
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb3:
  ADD s2, zero, zero
  # implict jump to bb4
bb4:
  ADD s3, s2, zero
  SLLIW s4, s3, 2
  LA s5, program
  ADD s4, s5, s4
  CALL getch
  ADD s5, a0, zero
  SW s5, 0(s4)
  ADDIW s3, s3, 1
  BLT s3, s0, bb6
  # implict jump to bb5
bb5:
  ADD s1, s3, zero
  JAL zero, bb2
bb6:
  ADD s2, s3, zero
  JAL zero, bb4
interpret:
  ADDI sp, sp, -128
  SD ra, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  SD s7, 40(sp)
  SD s10, 48(sp)
  SD s11, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  SD s8, 104(sp)
  SD s9, 112(sp)
  ADD t4, a0, zero
  SD t4, 32(sp)
  LD t4, 32(sp)
  LW s1, 0(t4)
  BNE s1, zero, bb9
  # implict jump to bb8
bb8:
  LD ra, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  LD s7, 40(sp)
  LD s10, 48(sp)
  LD s11, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s8, 104(sp)
  LD s9, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb9:
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADD s4, zero, zero
  # implict jump to bb10
bb10:
  ADD s5, s4, zero
  ADD s6, s3, zero
  ADD s7, s2, zero
  ADD s8, s1, zero
  XORI s9, s8, 62
  SLTIU s9, s9, 1
  BNE s9, zero, bb45
  # implict jump to bb11
bb11:
  XORI s9, s8, 60
  SLTIU s9, s9, 1
  BNE s9, zero, bb44
  # implict jump to bb12
bb12:
  XORI s9, s8, 43
  SLTIU s9, s9, 1
  BNE s9, zero, bb43
  # implict jump to bb13
bb13:
  XORI s9, s8, 45
  SLTIU s9, s9, 1
  BNE s9, zero, bb42
  # implict jump to bb14
bb14:
  XORI s9, s8, 46
  SLTIU s9, s9, 1
  BNE s9, zero, bb41
  # implict jump to bb15
bb15:
  XORI s9, s8, 44
  SLTIU s9, s9, 1
  BNE s9, zero, bb40
  # implict jump to bb16
bb16:
  XORI s8, s8, 93
  SLTIU s8, s8, 1
  BNE s8, zero, bb39
  # implict jump to bb17
bb17:
  ADD s8, zero, zero
  # implict jump to bb18
bb18:
  BNE s8, zero, bb28
  # implict jump to bb19
bb19:
  ADD s9, s6, zero
  ADD s10, s7, zero
  # implict jump to bb20
bb20:
  ADD t4, s8, zero
  SB t4, 0(sp)
  # implict jump to bb21
bb21:
  LB t4, 0(sp)
  ADD s8, t4, zero
  # implict jump to bb22
bb22:
  ADD s0, s8, zero
  ADD s8, s9, zero
  ADD s9, s10, zero
  # implict jump to bb23
bb23:
  # implict jump to bb24
bb24:
  # implict jump to bb25
bb25:
  # implict jump to bb26
bb26:
  ADDIW s5, s8, 1
  SLLIW s6, s5, 2
  LD t4, 32(sp)
  ADD s6, t4, s6
  LW s6, 0(s6)
  BNE s6, zero, bb27
  JAL zero, bb8
bb27:
  ADD s1, s6, zero
  ADD s2, s9, zero
  ADD s3, s5, zero
  ADD s4, s0, zero
  JAL zero, bb10
bb28:
  ADDI s11, zero, 1
  ADD t0, s6, zero
  # implict jump to bb29
bb29:
  ADD t1, t0, zero
  ADD t2, s11, zero
  ADDI a1, zero, 1
  SUBW t1, t1, a1
  SLLIW a1, t1, 2
  LD t4, 32(sp)
  ADD a1, t4, a1
  LW a1, 0(a1)
  XORI a2, a1, 91
  SLTIU a2, a2, 1
  BNE a2, zero, bb38
  # implict jump to bb30
bb30:
  XORI a1, a1, 93
  SLTIU a1, a1, 1
  BNE a1, zero, bb37
  # implict jump to bb31
bb31:
  ADD a1, t2, zero
  # implict jump to bb32
bb32:
  # implict jump to bb33
bb33:
  BLT zero, a1, bb36
  # implict jump to bb34
bb34:
  # implict jump to bb35
bb35:
  ADD s9, t1, zero
  ADD s10, a1, zero
  JAL zero, bb20
bb36:
  ADD s11, a1, zero
  ADD t0, t1, zero
  JAL zero, bb29
bb37:
  ADDIW a2, t2, 1
  ADD a1, a2, zero
  JAL zero, bb32
bb38:
  ADDI a2, zero, 1
  SUBW t2, t2, a2
  ADD a1, t2, zero
  JAL zero, bb33
bb39:
  LA s9, ptr
  LW s9, 0(s9)
  SLLIW s9, s9, 2
  LA s10, tape
  ADD s9, s10, s9
  LW s9, 0(s9)
  SLTU s9, zero, s9
  ADD s8, s9, zero
  JAL zero, bb18
bb40:
  LA s8, ptr
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  LA s11, tape
  ADD s8, s11, s8
  CALL getch
  ADD s11, a0, zero
  SW s11, 0(s8)
  ADD t4, s5, zero
  SB t4, 0(sp)
  ADD s9, s6, zero
  ADD s10, s7, zero
  JAL zero, bb21
bb41:
  LA s11, ptr
  LW s11, 0(s11)
  SLLIW s11, s11, 2
  LA s0, tape
  ADD s0, s0, s11
  LW s0, 0(s0)
  ADD a0, s0, zero
  CALL putch
  ADD s8, s5, zero
  ADD s9, s6, zero
  ADD s10, s7, zero
  JAL zero, bb22
bb42:
  LA s10, ptr
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, tape
  ADD s10, s11, s10
  LW s11, 0(s10)
  ADDI t0, zero, 1
  SUBW s11, s11, t0
  SW s11, 0(s10)
  ADD s0, s5, zero
  ADD s8, s6, zero
  ADD s9, s7, zero
  JAL zero, bb23
bb43:
  LA s10, ptr
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, tape
  ADD s10, s11, s10
  LW s11, 0(s10)
  ADDIW s11, s11, 1
  SW s11, 0(s10)
  ADD s0, s5, zero
  ADD s8, s6, zero
  ADD s9, s7, zero
  JAL zero, bb24
bb44:
  LA s10, ptr
  LW s10, 0(s10)
  ADDI s11, zero, 1
  SUBW s10, s10, s11
  LA s11, ptr
  SW s10, 0(s11)
  ADD s0, s5, zero
  ADD s8, s6, zero
  ADD s9, s7, zero
  JAL zero, bb25
bb45:
  LA s10, ptr
  LW s10, 0(s10)
  ADDIW s10, s10, 1
  LA s11, ptr
  SW s10, 0(s11)
  ADD s0, s5, zero
  ADD s8, s6, zero
  ADD s9, s7, zero
  JAL zero, bb26
