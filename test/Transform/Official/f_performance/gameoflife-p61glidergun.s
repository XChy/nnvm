.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss




sheet2:
.space 1000000
sheet1:
.space 1000000
.section .data
steps:
.word 0x00000000
height:
.word 0x00000000
width:
.word 0x00000000
active:
.word 0x00000001


.section .text
main:   # loop depth 0
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
  SD s10, 88(sp)
  LA s1, width
  CALL getint
  ADD s0, a0, zero
  LA s2, height
  SW s0, 0(s1)
  LA s1, steps
  LA s3, height
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(s2)
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(s1)
  CALL getch
  LW s0, 0(s3)
  SLTI s0, s0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb57
  # implict jump to bb1
bb1:   # loop depth 0
  LA s0, steps
  ADDI a0, zero, 95
  CALL _sysy_starttime
  LW a0, 0(s0)
  BLT zero, a0, bb23
  # implict jump to bb2
bb2:   # loop depth 0
  LA s0, active
  ADDI a0, zero, 106
  CALL _sysy_stoptime
  LW a0, 0(s0)
  XORI a0, a0, 2
  SLTIU a0, a0, 1
  BNE a0, zero, bb15
  # implict jump to bb3
bb3:   # loop depth 0
  LA a0, height
  LW a0, 0(a0)
  SLTI a0, a0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb5
  # implict jump to bb4
bb4:   # loop depth 0
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
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb5:   # loop depth 0
  ADDI s1, zero, 1
  # implict jump to bb6
bb6:   # loop depth 1
  LA a0, width
  LW a0, 0(a0)
  SLTI a0, a0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb9
  # implict jump to bb7
bb7:   # loop depth 1
  LA s0, height
  ADDI a0, zero, 10
  ADDIW s1, s1, 1
  CALL putch
  LW a0, 0(s0)
  SLT a0, a0, s1
  XORI a0, a0, 1
  BNE a0, zero, bb8
  JAL zero, bb4
bb8:   # loop depth 1
  JAL zero, bb6
bb9:   # loop depth 1
  ADDI a0, zero, 2000
  LA s2, sheet1
  MULW a0, s1, a0
  ADDI s0, zero, 1
  ADD s2, s2, a0
  # implict jump to bb10
bb10:   # loop depth 2
  SH2ADD a0, s0, s2
  LW a0, 0(a0)
  XORI a0, a0, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb14
  # implict jump to bb11
bb11:   # loop depth 2
  ADDI a0, zero, 46
  CALL putch
  # implict jump to bb12
bb12:   # loop depth 2
  LA a0, width
  ADDIW s0, s0, 1
  LW a0, 0(a0)
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb13
  JAL zero, bb7
bb13:   # loop depth 2
  JAL zero, bb10
bb14:   # loop depth 2
  ADDI a0, zero, 35
  CALL putch
  JAL zero, bb12
bb15:   # loop depth 0
  LA a0, height
  LW s2, 0(a0)
  SLTI a0, s2, 1
  XORI a0, a0, 1
  BNE a0, zero, bb16
  JAL zero, bb3
bb16:   # loop depth 0
  LA a0, width
  ADDI s1, zero, 1
  LW s3, 0(a0)
  SLTI a0, s3, 1
  XORI s4, a0, 1
  # implict jump to bb17
bb17:   # loop depth 1
  BNE s4, zero, bb20
  # implict jump to bb18
bb18:   # loop depth 1
  ADDIW s1, s1, 1
  SLT a0, s2, s1
  XORI a0, a0, 1
  BNE a0, zero, bb19
  JAL zero, bb3
bb19:   # loop depth 1
  JAL zero, bb17
bb20:   # loop depth 1
  ADDI a0, zero, 2000
  LA s6, sheet2
  MULW s0, s1, a0
  LA s5, sheet1
  ADDI a0, zero, 1
  ADD s6, s6, s0
  ADD s5, s5, s0
  # implict jump to bb21
bb21:   # loop depth 2
  SH2ADD s7, a0, s6
  ADDIW s0, a0, 1
  LW s7, 0(s7)
  SLT s8, s3, s0
  SH2ADD a0, a0, s5
  XORI s8, s8, 1
  SW s7, 0(a0)
  BNE s8, zero, bb22
  JAL zero, bb18
bb22:   # loop depth 2
  ADD a0, s0, zero
  JAL zero, bb21
bb23:   # loop depth 1
  LA a0, active
  LW a0, 0(a0)
  XORI a0, a0, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb41
  # implict jump to bb24
bb24:   # loop depth 1
  LA a0, height
  LW a0, 0(a0)
  SLTI s0, a0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb27
  # implict jump to bb25
bb25:   # loop depth 1
  LA a0, active
  ADDI s0, zero, 1
  SW s0, 0(a0)
  # implict jump to bb26
bb26:   # loop depth 1
  LA a0, steps
  LA s0, steps
  ADDI s1, zero, 0
  LW a0, 0(a0)
  ADDIW a0, a0, -1
  SW a0, 0(s0)
  BLT s1, a0, bb23
  JAL zero, bb2
bb27:   # loop depth 1
  LA s0, width
  ADD s5, zero, zero
  ADD s6, zero, zero
  ADDI s1, zero, 1
  LW s0, 0(s0)
  SLTI s2, s0, 1
  XORI s10, s2, 1
  # implict jump to bb28
bb28:   # loop depth 2
  BNE s10, zero, bb32
  # implict jump to bb29
bb29:   # loop depth 2
  # implict jump to bb30
bb30:   # loop depth 2
  ADDIW s1, s1, 1
  SLT s2, a0, s1
  XORI s2, s2, 1
  BNE s2, zero, bb31
  JAL zero, bb25
bb31:   # loop depth 2
  JAL zero, bb28
bb32:   # loop depth 2
  ADDI s2, zero, 2000
  LA s3, sheet1
  MULW s2, s1, s2
  LA s5, sheet2
  ADDI s4, zero, 1
  ADD s3, s3, s2
  ADD s2, s5, s2
  # implict jump to bb33
bb33:   # loop depth 3
  SH2ADD s5, s4, s2
  ADDIW s8, s4, 1
  LW s6, -2004(s5)
  LW s7, -2000(s5)
  LW s9, -1996(s5)
  ADDW s6, s6, s7
  LW s7, -4(s5)
  ADDW s6, s6, s9
  LW s9, 4(s5)
  ADDW s6, s6, s7
  LW s7, 1996(s5)
  ADDW s6, s6, s9
  LW s9, 2000(s5)
  ADDW s6, s6, s7
  LW s7, 2004(s5)
  ADDW s6, s6, s9
  LW s5, 0(s5)
  ADDW s6, s6, s7
  XORI s7, s6, 2
  SLTIU s7, s7, 1
  XORI s5, s5, 1
  SLTIU s5, s5, 1
  AND s5, s5, s7
  BNE s5, zero, bb40
  # implict jump to bb34
bb34:   # loop depth 3
  XORI s7, s6, 3
  SLTIU s7, s7, 1
  BNE s7, zero, bb39
  # implict jump to bb35
bb35:   # loop depth 3
  SH2ADD s4, s4, s3
  SW zero, 0(s4)
  # implict jump to bb36
bb36:   # loop depth 3
  SLT s4, s0, s8
  XORI s4, s4, 1
  BNE s4, zero, bb38
  # implict jump to bb37
bb37:   # loop depth 2
  JAL zero, bb30
bb38:   # loop depth 3
  ADD s4, s8, zero
  JAL zero, bb33
bb39:   # loop depth 3
  ADDI s7, zero, 1
  SH2ADD s4, s4, s3
  SW s7, 0(s4)
  JAL zero, bb36
bb40:   # loop depth 3
  ADDI s7, zero, 1
  SH2ADD s4, s4, s3
  SW s7, 0(s4)
  JAL zero, bb36
bb41:   # loop depth 1
  LA a0, height
  LW a0, 0(a0)
  SLTI s0, a0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb43
  # implict jump to bb42
bb42:   # loop depth 1
  LA a0, active
  ADDI s0, zero, 2
  SW s0, 0(a0)
  JAL zero, bb26
bb43:   # loop depth 1
  LA s0, width
  ADD s5, zero, zero
  ADD s6, zero, zero
  ADDI s1, zero, 1
  LW s0, 0(s0)
  SLTI s2, s0, 1
  XORI s10, s2, 1
  # implict jump to bb44
bb44:   # loop depth 2
  BNE s10, zero, bb48
  # implict jump to bb45
bb45:   # loop depth 2
  # implict jump to bb46
bb46:   # loop depth 2
  ADDIW s1, s1, 1
  SLT s2, a0, s1
  XORI s2, s2, 1
  BNE s2, zero, bb47
  JAL zero, bb42
bb47:   # loop depth 2
  JAL zero, bb44
bb48:   # loop depth 2
  ADDI s2, zero, 2000
  LA s3, sheet2
  MULW s2, s1, s2
  LA s5, sheet1
  ADDI s4, zero, 1
  ADD s3, s3, s2
  ADD s2, s5, s2
  # implict jump to bb49
bb49:   # loop depth 3
  SH2ADD s5, s4, s2
  ADDIW s8, s4, 1
  LW s6, -2004(s5)
  LW s7, -2000(s5)
  LW s9, -1996(s5)
  ADDW s6, s6, s7
  LW s7, -4(s5)
  ADDW s6, s6, s9
  LW s9, 4(s5)
  ADDW s6, s6, s7
  LW s7, 1996(s5)
  ADDW s6, s6, s9
  LW s9, 2000(s5)
  ADDW s6, s6, s7
  LW s7, 2004(s5)
  ADDW s6, s6, s9
  LW s5, 0(s5)
  ADDW s6, s6, s7
  XORI s7, s6, 2
  SLTIU s7, s7, 1
  XORI s5, s5, 1
  SLTIU s5, s5, 1
  AND s5, s5, s7
  BNE s5, zero, bb56
  # implict jump to bb50
bb50:   # loop depth 3
  XORI s7, s6, 3
  SLTIU s7, s7, 1
  BNE s7, zero, bb55
  # implict jump to bb51
bb51:   # loop depth 3
  SH2ADD s4, s4, s3
  SW zero, 0(s4)
  # implict jump to bb52
bb52:   # loop depth 3
  SLT s4, s0, s8
  XORI s4, s4, 1
  BNE s4, zero, bb54
  # implict jump to bb53
bb53:   # loop depth 2
  JAL zero, bb46
bb54:   # loop depth 3
  ADD s4, s8, zero
  JAL zero, bb49
bb55:   # loop depth 3
  ADDI s7, zero, 1
  SH2ADD s4, s4, s3
  SW s7, 0(s4)
  JAL zero, bb52
bb56:   # loop depth 3
  ADDI s7, zero, 1
  SH2ADD s4, s4, s3
  SW s7, 0(s4)
  JAL zero, bb52
bb57:   # loop depth 0
  ADD s0, zero, zero
  ADDI s2, zero, 1
  # implict jump to bb58
bb58:   # loop depth 1
  LA s1, width
  LW s1, 0(s1)
  SLTI s1, s1, 1
  XORI s1, s1, 1
  BNE s1, zero, bb62
  # implict jump to bb59
bb59:   # loop depth 1
  # implict jump to bb60
bb60:   # loop depth 1
  LA s1, height
  ADDIW s2, s2, 1
  CALL getch
  LW s1, 0(s1)
  SLT s1, s1, s2
  XORI s1, s1, 1
  BNE s1, zero, bb61
  JAL zero, bb1
bb61:   # loop depth 1
  JAL zero, bb58
bb62:   # loop depth 1
  ADDI s0, zero, 2000
  LA s3, sheet1
  MULW s0, s2, s0
  ADDI s1, zero, 1
  ADD s3, s3, s0
  # implict jump to bb63
bb63:   # loop depth 2
  CALL getch
  ADD s0, a0, zero
  XORI s4, s0, 35
  SLTIU s4, s4, 1
  BNE s4, zero, bb68
  # implict jump to bb64
bb64:   # loop depth 2
  SH2ADD s4, s1, s3
  SW zero, 0(s4)
  # implict jump to bb65
bb65:   # loop depth 2
  LA s4, width
  ADDIW s1, s1, 1
  LW s4, 0(s4)
  SLT s4, s4, s1
  XORI s4, s4, 1
  BNE s4, zero, bb67
  # implict jump to bb66
bb66:   # loop depth 1
  JAL zero, bb60
bb67:   # loop depth 2
  JAL zero, bb63
bb68:   # loop depth 2
  ADDI s5, zero, 1
  SH2ADD s4, s1, s3
  SW s5, 0(s4)
  JAL zero, bb65
