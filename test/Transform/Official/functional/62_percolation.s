.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global findfa
.global main
.section .bss

array:
.space 440
.section .data
n:
.word 0x00000000

.section .text
findfa:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  LA t0, array
  SH2ADD s0, a0, t0
  LW t0, 0(s0)
  BEQ t0, a0, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  LW a0, 0(s0)
  CALL findfa
  ADD t0, a0, zero
  ADD a0, t0, zero
  SW t0, 0(s0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb2:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
main:   # loop depth 0
  ADDI sp, sp, -128
  SD ra, 40(sp)
  SD s4, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s8, 96(sp)
  SD s9, 104(sp)
  SD s10, 112(sp)
  SD s11, 120(sp)
  ADDI t4, zero, 17
  LA t0, array
  SD t0, 88(sp)
  LA t0, n
  SD t0, 80(sp)
  ADD t0, zero, zero
  SW t0, 32(sp)
  ADD t0, zero, zero
  SB t0, 3(sp)
  ADD t0, zero, zero
  SB t0, 5(sp)
  ADD s7, zero, zero
  ADDI t3, zero, 1
  ADD s8, zero, zero
  ADD t0, zero, zero
  SB t0, 4(sp)
  ADD s9, zero, zero
  ADD s11, zero, zero
  SLTI t1, t4, 1
  SB t1, 1(sp)
  # implict jump to bb4
bb4:   # loop depth 1
  ADDI t4, zero, 4
  LD t0, 80(sp)
  SW t4, 0(t0)
  ADDIW t1, t3, -1
  SW t1, 16(sp)
  LB t0, 4(sp)
  SB t0, 4(sp)
  LB t0, 5(sp)
  SB t0, 5(sp)
  LB t0, 3(sp)
  SB t0, 3(sp)
  LW t0, 32(sp)
  SW t0, 32(sp)
  LB t1, 1(sp)
  BEQ t1, zero, bb55
  # implict jump to bb5
bb5:   # loop depth 1
  ADD s5, zero, zero
  LW t0, 32(sp)
  SW t0, 32(sp)
  LB t0, 3(sp)
  SB t0, 3(sp)
  LB t0, 5(sp)
  SB t0, 5(sp)
  ADD t0, zero, zero
  SW t0, 28(sp)
  LB t0, 4(sp)
  SB t0, 4(sp)
  ADD s6, zero, zero
  # implict jump to bb6
bb6:   # loop depth 2
  ADDIW s5, s5, 1
  LB t0, 4(sp)
  SB t0, 4(sp)
  LW t0, 28(sp)
  SW t0, 28(sp)
  LW t0, 28(sp)
  SW t0, 8(sp)
  LB t0, 5(sp)
  SB t0, 5(sp)
  LB t0, 3(sp)
  SB t0, 3(sp)
  LB t0, 3(sp)
  SB t0, 0(sp)
  LW t0, 32(sp)
  SW t0, 32(sp)
  LW t0, 32(sp)
  SW t0, 12(sp)
  CALL getint
  SW a0, 24(sp)
  CALL getint
  SW a0, 20(sp)
  BEQ s6, zero, bb15
  # implict jump to bb7
bb7:   # loop depth 2
  LB t0, 4(sp)
  SB t0, 4(sp)
  LW t0, 8(sp)
  SW t0, 28(sp)
  LW t0, 28(sp)
  SW t0, 28(sp)
  LB t0, 5(sp)
  SB t0, 5(sp)
  LB t0, 0(sp)
  SB t0, 3(sp)
  LB t0, 3(sp)
  SB t0, 3(sp)
  LW t0, 12(sp)
  SW t0, 32(sp)
  LW t0, 32(sp)
  SW t0, 32(sp)
  # implict jump to bb8
bb8:   # loop depth 2
  LW t0, 28(sp)
  SW t0, 28(sp)
  SLTI a7, s5, 10
  LW t0, 28(sp)
  SLTU s6, zero, t0
  LW t0, 32(sp)
  SW t0, 32(sp)
  LB t0, 3(sp)
  SB t0, 3(sp)
  LB t0, 5(sp)
  SB t0, 5(sp)
  LB t0, 4(sp)
  SB t0, 4(sp)
  BNE a7, zero, bb14
  # implict jump to bb9
bb9:   # loop depth 1
  BEQ s6, zero, bb13
  # implict jump to bb10
bb10:   # loop depth 1
  LW t0, 16(sp)
  BNE t0, zero, bb12
  # implict jump to bb11
bb11:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD s10, 112(sp)
  LD s11, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb12:   # loop depth 1
  LW t0, 32(sp)
  SW t0, 32(sp)
  LB t0, 3(sp)
  SB t0, 3(sp)
  LB t0, 5(sp)
  SB t0, 5(sp)
  LW t3, 16(sp)
  LB t0, 4(sp)
  SB t0, 4(sp)
  JAL zero, bb4
bb13:   # loop depth 1
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb10
bb14:   # loop depth 2
  LW t0, 32(sp)
  SW t0, 32(sp)
  LB t0, 3(sp)
  SB t0, 3(sp)
  LB t0, 5(sp)
  SB t0, 5(sp)
  LW t0, 28(sp)
  SW t0, 28(sp)
  LB t0, 4(sp)
  SB t0, 4(sp)
  JAL zero, bb6
bb15:   # loop depth 2
  LD t0, 80(sp)
  LW t0, 0(t0)
  LW t1, 24(sp)
  ADDIW t1, t1, -1
  LW t2, 24(sp)
  XORI t2, t2, 1
  MULW t0, t0, t1
  LW t1, 20(sp)
  ADDW t0, t0, t1
  SW t0, 32(sp)
  LD t0, 88(sp)
  LW t1, 32(sp)
  SH2ADD s8, t1, t0
  LW t0, 32(sp)
  SW t0, 0(s8)
  BEQ t2, zero, bb53
  # implict jump to bb16
bb16:   # loop depth 2
  LD t0, 80(sp)
  LW t0, 0(t0)
  LW t1, 24(sp)
  BEQ t1, t0, bb51
  # implict jump to bb17
bb17:   # loop depth 2
  LD t0, 80(sp)
  LW t0, 0(t0)
  LW t1, 20(sp)
  BLT t1, t0, bb50
  # implict jump to bb18
bb18:   # loop depth 2
  ADD t0, zero, zero
  SB t0, 5(sp)
  # implict jump to bb19
bb19:   # loop depth 2
  LB t0, 5(sp)
  SB t0, 5(sp)
  LB t0, 5(sp)
  BNE t0, zero, bb48
  # implict jump to bb20
bb20:   # loop depth 2
  ADDI t0, zero, 1
  LW t1, 20(sp)
  BLT t0, t1, bb47
  # implict jump to bb21
bb21:   # loop depth 2
  ADD t0, zero, zero
  SB t0, 4(sp)
  # implict jump to bb22
bb22:   # loop depth 2
  LB t0, 4(sp)
  SB t0, 4(sp)
  LB t0, 4(sp)
  BNE t0, zero, bb45
  # implict jump to bb23
bb23:   # loop depth 2
  LD t0, 80(sp)
  LW t0, 0(t0)
  LW t1, 24(sp)
  BLT t1, t0, bb44
  # implict jump to bb24
bb24:   # loop depth 2
  ADD s7, zero, zero
  # implict jump to bb25
bb25:   # loop depth 2
  BNE s7, zero, bb42
  # implict jump to bb26
bb26:   # loop depth 2
  ADDI t0, zero, 1
  LW t1, 24(sp)
  BLT t0, t1, bb41
  # implict jump to bb27
bb27:   # loop depth 2
  ADD s8, zero, zero
  # implict jump to bb28
bb28:   # loop depth 2
  BNE s8, zero, bb39
  # implict jump to bb29
bb29:   # loop depth 2
  LD t0, 88(sp)
  LW t0, 0(t0)
  XORI t0, t0, -1
  BNE t0, zero, bb38
  # implict jump to bb30
bb30:   # loop depth 2
  ADD s9, zero, zero
  # implict jump to bb31
bb31:   # loop depth 2
  BNE s9, zero, bb37
  # implict jump to bb32
bb32:   # loop depth 2
  ADD t0, zero, zero
  SB t0, 3(sp)
  # implict jump to bb33
bb33:   # loop depth 2
  LB t0, 3(sp)
  SB t0, 3(sp)
  LB t0, 3(sp)
  BNE t0, zero, bb36
  # implict jump to bb34
bb34:   # loop depth 2
  LW t0, 8(sp)
  SW t0, 28(sp)
  LW t0, 28(sp)
  SW t0, 28(sp)
  # implict jump to bb35
bb35:   # loop depth 2
  LW t0, 28(sp)
  SW t0, 28(sp)
  LB t0, 4(sp)
  SB t0, 4(sp)
  LW t0, 28(sp)
  SW t0, 28(sp)
  LB t0, 5(sp)
  SB t0, 5(sp)
  LB t0, 3(sp)
  SB t0, 3(sp)
  LW t0, 32(sp)
  SW t0, 32(sp)
  JAL zero, bb8
bb36:   # loop depth 2
  ADD a0, s5, zero
  ADD s11, s5, zero
  ADDI t0, zero, 1
  SW t0, 28(sp)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb35
bb37:   # loop depth 2
  ADD a0, zero, zero
  CALL findfa
  ADD s10, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  XOR t0, s10, a0
  SLTIU t0, t0, 1
  SB t0, 3(sp)
  LB t0, 3(sp)
  SB t0, 3(sp)
  JAL zero, bb33
bb38:   # loop depth 2
  LD t0, 88(sp)
  LW t0, 68(t0)
  XORI t0, t0, -1
  SLTU s9, zero, t0
  JAL zero, bb31
bb39:   # loop depth 2
  LD t0, 80(sp)
  LW t1, 0(t0)
  LW a0, 32(sp)
  LW t0, 32(sp)
  SUBW s10, t0, t1
  CALL findfa
  ADD s9, a0, zero
  ADD a0, s10, zero
  CALL findfa
  BNE s9, a0, bb40
  JAL zero, bb29
bb40:   # loop depth 2
  LD t0, 88(sp)
  SH2ADD t1, s9, t0
  SW a0, 0(t1)
  JAL zero, bb29
bb41:   # loop depth 2
  LD t0, 80(sp)
  LW t0, 0(t0)
  LW t1, 32(sp)
  SUBW t0, t1, t0
  LD t1, 88(sp)
  SH2ADD t0, t0, t1
  LW t0, 0(t0)
  XORI t0, t0, -1
  SLTU s8, zero, t0
  JAL zero, bb28
bb42:   # loop depth 2
  LD t0, 80(sp)
  LW t1, 0(t0)
  LW a0, 32(sp)
  LW t0, 32(sp)
  ADDW s8, t0, t1
  CALL findfa
  ADD s9, a0, zero
  ADD a0, s8, zero
  CALL findfa
  BNE s9, a0, bb43
  JAL zero, bb26
bb43:   # loop depth 2
  LD t0, 88(sp)
  SH2ADD t1, s9, t0
  SW a0, 0(t1)
  JAL zero, bb26
bb44:   # loop depth 2
  LW t1, 32(sp)
  ADDW t0, t1, t0
  LD t1, 88(sp)
  SH2ADD t0, t0, t1
  LW t0, 0(t0)
  XORI t0, t0, -1
  SLTU s7, zero, t0
  JAL zero, bb25
bb45:   # loop depth 2
  LW a0, 32(sp)
  LW t0, 32(sp)
  ADDIW s7, t0, -1
  CALL findfa
  ADD s8, a0, zero
  ADD a0, s7, zero
  CALL findfa
  BNE s8, a0, bb46
  JAL zero, bb23
bb46:   # loop depth 2
  LD t0, 88(sp)
  SH2ADD t1, s8, t0
  SW a0, 0(t1)
  JAL zero, bb23
bb47:   # loop depth 2
  LW t0, -4(s8)
  XORI t0, t0, -1
  SLTU t0, zero, t0
  SB t0, 4(sp)
  LB t0, 4(sp)
  SB t0, 4(sp)
  JAL zero, bb22
bb48:   # loop depth 2
  LW a0, 32(sp)
  LW t0, 32(sp)
  ADDIW s7, t0, 1
  CALL findfa
  ADD s6, a0, zero
  ADD a0, s7, zero
  CALL findfa
  BNE s6, a0, bb49
  JAL zero, bb20
bb49:   # loop depth 2
  LD t0, 88(sp)
  SH2ADD t1, s6, t0
  SW a0, 0(t1)
  JAL zero, bb20
bb50:   # loop depth 2
  LW t0, 4(s8)
  XORI t0, t0, -1
  SLTU t0, zero, t0
  SB t0, 5(sp)
  LB t0, 5(sp)
  SB t0, 5(sp)
  JAL zero, bb19
bb51:   # loop depth 2
  ADDI t1, zero, 17
  LW a0, 32(sp)
  LD t0, 88(sp)
  SW t1, 68(t0)
  CALL findfa
  ADD s4, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  BNE s4, a0, bb52
  JAL zero, bb17
bb52:   # loop depth 2
  LD t0, 88(sp)
  SH2ADD t1, s4, t0
  SW a0, 0(t1)
  JAL zero, bb17
bb53:   # loop depth 2
  LW a0, 32(sp)
  LD t0, 88(sp)
  SW zero, 0(t0)
  CALL findfa
  ADD s4, a0, zero
  ADD a0, zero, zero
  CALL findfa
  BNE s4, a0, bb54
  JAL zero, bb16
bb54:   # loop depth 2
  LD t0, 88(sp)
  SH2ADD t1, s4, t0
  SW a0, 0(t1)
  JAL zero, bb16
bb55:   # loop depth 1
  ADDI a5, zero, 1
  # implict jump to bb56
bb56:   # loop depth 2
  ADDI t4, zero, -1
  LD t0, 88(sp)
  SH2ADD t3, a5, t0
  ADDI t5, zero, 17
  ADDIW a5, a5, 1
  SW t4, 0(t3)
  BGE t5, a5, bb57
  JAL zero, bb5
bb57:   # loop depth 2
  JAL zero, bb56
