.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
dst:
.space 8388608
w:
.space 8388608
temp:
.space 8388608
.section .data



.section .text
main:   # loop depth 0
  ADDI sp, sp, -160
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  SD s7, 104(sp)
  SD s8, 112(sp)
  SD s9, 120(sp)
  SD s10, 128(sp)
  SD s11, 136(sp)
  LA s0, w
  CALL getint
  ADD s6, a0, zero
  ADDI a0, zero, 0
  SW a0, 8(sp)
  ADD a0, s0, zero
  CALL getarray
  ADDI a0, zero, 62
  CALL _sysy_starttime
  LW a0, 8(sp)
  BLT a0, s6, bb57
  # implict jump to bb1
bb1:   # loop depth 0
  LW a0, 8(sp)
  BLT a0, s6, bb7
  # implict jump to bb2
bb2:   # loop depth 0
  MULW s1, s6, s6
  BLT zero, s1, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  LA s0, dst
  ADDI a0, zero, 64
  CALL _sysy_stoptime
  ADD a1, s0, zero
  ADD a0, s1, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  LD s9, 120(sp)
  LD s10, 128(sp)
  LD s11, 136(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb4:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  LA s2, temp
  LA s3, dst
  ADDIW s0, a0, 1
  SH2ADD s2, a0, s2
  LW s2, 0(s2)
  SH2ADD a0, a0, s3
  SW s2, 0(a0)
  BLT s0, s1, bb6
  JAL zero, bb3
bb6:   # loop depth 1
  ADD a0, s0, zero
  JAL zero, bb5
bb7:   # loop depth 0
  ADD s3, zero, zero
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb8
bb8:   # loop depth 1
  LW a0, 8(sp)
  BLT a0, s6, bb12
  # implict jump to bb9
bb9:   # loop depth 1
  # implict jump to bb10
bb10:   # loop depth 1
  ADDIW s5, s5, 1
  BLT s5, s6, bb11
  JAL zero, bb2
bb11:   # loop depth 1
  JAL zero, bb8
bb12:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb13
bb13:   # loop depth 2
  SW a0, 16(sp)
  LW a0, 8(sp)
  BLT a0, s6, bb18
  # implict jump to bb14
bb14:   # loop depth 2
  ADD s4, zero, zero
  # implict jump to bb15
bb15:   # loop depth 2
  LW a0, 16(sp)
  ADDIW a0, a0, 1
  BLT a0, s6, bb17
  # implict jump to bb16
bb16:   # loop depth 1
  JAL zero, bb10
bb17:   # loop depth 2
  JAL zero, bb13
bb18:   # loop depth 2
  LW a0, 16(sp)
  SLT s1, a0, s6
  LW a0, 16(sp)
  SLT s0, a0, zero
  XORI s1, s1, 1
  MULW a0, s5, s6
  SW a0, 32(sp)
  LW a0, 16(sp)
  MULW s8, a0, s6
  SLT s4, s5, s6
  SLT s2, s5, zero
  OR a0, s0, s1
  SB a0, 0(sp)
  XORI s7, s4, 1
  LB a0, 0(sp)
  OR s0, a0, s2
  ADD s4, zero, zero
  OR s9, s2, s7
  OR s7, s0, s7
  # implict jump to bb19
bb19:   # loop depth 3
  BNE s7, zero, bb56
  # implict jump to bb20
bb20:   # loop depth 3
  LA s1, temp
  ADDW s0, s8, s5
  SH2ADD s0, s0, s1
  LW s0, 0(s0)
  # implict jump to bb21
bb21:   # loop depth 3
  SLT s1, s4, s6
  SLT s0, s0, zero
  XORI a0, s1, 1
  SB a0, 2(sp)
  SLT a0, s4, zero
  SB a0, 1(sp)
  XORI s0, s0, 1
  BNE s0, zero, bb52
  # implict jump to bb22
bb22:   # loop depth 3
  ADD s0, zero, zero
  # implict jump to bb23
bb23:   # loop depth 3
  SB s0, 4(sp)
  LB a0, 4(sp)
  BNE a0, zero, bb27
  # implict jump to bb24
bb24:   # loop depth 3
  ADDIW s4, s4, 1
  BLT s4, s6, bb26
  # implict jump to bb25
bb25:   # loop depth 2
  LB s3, 4(sp)
  JAL zero, bb15
bb26:   # loop depth 3
  JAL zero, bb19
bb27:   # loop depth 3
  LB a0, 0(sp)
  LB s0, 1(sp)
  OR s1, a0, s0
  LB a0, 2(sp)
  OR s1, s1, a0
  BNE s1, zero, bb51
  # implict jump to bb28
bb28:   # loop depth 3
  LA s2, temp
  ADDW s1, s8, s4
  SH2ADD s1, s1, s2
  LW s1, 0(s1)
  # implict jump to bb29
bb29:   # loop depth 3
  BLT s1, zero, bb44
  # implict jump to bb30
bb30:   # loop depth 3
  LA s2, temp
  ADDW s1, s8, s4
  ADDW a0, s8, s5
  SW a0, 28(sp)
  SH2ADD a0, s1, s2
  SD a0, 144(sp)
  LD a0, 144(sp)
  LW a0, 0(a0)
  SW a0, 12(sp)
  BNE s7, zero, bb43
  # implict jump to bb31
bb31:   # loop depth 3
  LA s1, temp
  LW a0, 28(sp)
  SH2ADD s1, a0, s1
  LW s2, 0(s1)
  # implict jump to bb32
bb32:   # loop depth 3
  LB a0, 1(sp)
  OR s11, s9, a0
  LB a0, 2(sp)
  OR a0, s11, a0
  SB a0, 3(sp)
  LB a0, 3(sp)
  BNE a0, zero, bb42
  # implict jump to bb33
bb33:   # loop depth 3
  LA s1, temp
  LW a0, 32(sp)
  ADDW a0, a0, s4
  SW a0, 24(sp)
  LW a0, 24(sp)
  SH2ADD s1, a0, s1
  LW s1, 0(s1)
  # implict jump to bb34
bb34:   # loop depth 3
  ADDW s1, s2, s1
  LW a0, 12(sp)
  BLT s1, a0, bb35
  JAL zero, bb24
bb35:   # loop depth 3
  BNE s7, zero, bb41
  # implict jump to bb36
bb36:   # loop depth 3
  LA s1, temp
  LW a0, 28(sp)
  SH2ADD s1, a0, s1
  LW s2, 0(s1)
  # implict jump to bb37
bb37:   # loop depth 3
  LB a0, 3(sp)
  BNE a0, zero, bb40
  # implict jump to bb38
bb38:   # loop depth 3
  LA s10, temp
  LW a0, 32(sp)
  ADDW s1, a0, s4
  SH2ADD s1, s1, s10
  LW s1, 0(s1)
  # implict jump to bb39
bb39:   # loop depth 3
  ADDW s1, s2, s1
  LD a0, 144(sp)
  SW s1, 0(a0)
  JAL zero, bb24
bb40:   # loop depth 3
  ADDI s1, zero, -1
  JAL zero, bb39
bb41:   # loop depth 3
  ADDI s2, zero, -1
  JAL zero, bb37
bb42:   # loop depth 3
  ADDI s1, zero, -1
  JAL zero, bb34
bb43:   # loop depth 3
  ADDI s2, zero, -1
  JAL zero, bb32
bb44:   # loop depth 3
  LA s2, temp
  ADDW s1, s8, s4
  SH2ADD s10, s1, s2
  BNE s7, zero, bb50
  # implict jump to bb45
bb45:   # loop depth 3
  LA s2, temp
  ADDW s1, s8, s5
  SH2ADD s1, s1, s2
  LW s2, 0(s1)
  # implict jump to bb46
bb46:   # loop depth 3
  LB a0, 1(sp)
  OR s11, s9, a0
  LB a0, 2(sp)
  OR s1, s11, a0
  BNE s1, zero, bb49
  # implict jump to bb47
bb47:   # loop depth 3
  LA a0, temp
  SD a0, 152(sp)
  LW a0, 32(sp)
  ADDW s1, a0, s4
  LD a0, 152(sp)
  SH2ADD s1, s1, a0
  LW s1, 0(s1)
  # implict jump to bb48
bb48:   # loop depth 3
  ADDW s1, s2, s1
  SW s1, 0(s10)
  JAL zero, bb24
bb49:   # loop depth 3
  ADDI s1, zero, -1
  JAL zero, bb48
bb50:   # loop depth 3
  ADDI s2, zero, -1
  JAL zero, bb46
bb51:   # loop depth 3
  ADDI s1, zero, -1
  JAL zero, bb29
bb52:   # loop depth 3
  LB a0, 1(sp)
  OR s0, s9, a0
  LB a0, 2(sp)
  OR s0, s0, a0
  BNE s0, zero, bb55
  # implict jump to bb53
bb53:   # loop depth 3
  LA s1, temp
  LW a0, 32(sp)
  ADDW s0, a0, s4
  SH2ADD s0, s0, s1
  LW s0, 0(s0)
  # implict jump to bb54
bb54:   # loop depth 3
  SLT s0, s0, zero
  XORI s0, s0, 1
  JAL zero, bb23
bb55:   # loop depth 3
  ADDI s0, zero, -1
  JAL zero, bb54
bb56:   # loop depth 3
  ADDI s0, zero, -1
  JAL zero, bb21
bb57:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb58
bb58:   # loop depth 1
  LW a0, 8(sp)
  BLT a0, s6, bb61
  # implict jump to bb59
bb59:   # loop depth 1
  ADDIW s0, s0, 1
  BLT s0, s6, bb60
  JAL zero, bb1
bb60:   # loop depth 1
  JAL zero, bb58
bb61:   # loop depth 1
  SLT s2, s0, s6
  ADD s1, zero, zero
  XORI s4, s2, 1
  SLT s3, s0, zero
  # implict jump to bb62
bb62:   # loop depth 2
  LA s7, temp
  SLT s2, s1, s6
  MULW a0, s1, s6
  XORI s5, s2, 1
  SLT s2, s1, zero
  OR s2, s2, s5
  OR s2, s2, s3
  ADDW a0, a0, s0
  OR s2, s2, s4
  SH2ADD s5, a0, s7
  BNE s2, zero, bb66
  # implict jump to bb63
bb63:   # loop depth 2
  LA s2, w
  SH2ADD a0, a0, s2
  LW s2, 0(a0)
  # implict jump to bb64
bb64:   # loop depth 2
  ADDIW s1, s1, 1
  SW s2, 0(s5)
  BLT s1, s6, bb65
  JAL zero, bb59
bb65:   # loop depth 2
  JAL zero, bb62
bb66:   # loop depth 2
  ADDI s2, zero, -1
  JAL zero, bb64
