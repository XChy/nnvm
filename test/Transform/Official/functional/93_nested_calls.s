.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -128
  SD ra, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s5, 72(sp)
  SD s6, 80(sp)
  SD s7, 88(sp)
  SD s8, 96(sp)
  SD s9, 104(sp)
  SD s10, 112(sp)
  SD s11, 120(sp)
  CALL getint
  ADD s9, a0, zero
  SLTU s0, zero, s9
  CALL getint
  XORI s0, s0, 1
  ADD s7, a0, zero
  SUBW s1, zero, s7
  SLTU s0, zero, s0
  SLTU s1, zero, s1
  SLTU s0, zero, s0
  CALL getint
  AND s0, s0, s1
  SW s0, 12(sp)
  ADD s0, a0, zero
  SW s0, 24(sp)
  LW s0, 12(sp)
  LW s1, 24(sp)
  REMW s0, s0, s1
  SW s0, 16(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 20(sp)
  LW s0, 24(sp)
  SLTU s0, zero, s0
  SB s0, 1(sp)
  CALL getint
  ADD s6, a0, zero
  CALL getint
  ADD s11, a0, zero
  CALL getint
  ADD s10, a0, zero
  CALL getint
  ADD s3, a0, zero
  CALL getint
  ADD s5, a0, zero
  CALL getint
  ADD s0, a0, zero
  SW s0, 8(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 4(sp)
  CALL getint
  ADD s4, a0, zero
  CALL getint
  ADD s8, a0, zero
  CALL getint
  LW t0, 24(sp)
  BNE t0, zero, bb60
  # implict jump to bb1
bb1:   # loop depth 0
  LW t1, 12(sp)
  # implict jump to bb2
bb2:   # loop depth 0
  LW t0, 20(sp)
  SLTIU a3, t0, 1
  LW t0, 20(sp)
  ADDW t2, t1, t0
  BNE a3, zero, bb59
  # implict jump to bb3
bb3:   # loop depth 0
  ADD t1, t2, zero
  # implict jump to bb4
bb4:   # loop depth 0
  LW t0, 8(sp)
  SLTU a1, zero, t0
  SLTU t2, zero, s3
  XORI a5, a1, 1
  XORI t2, t2, 1
  SLTU a2, zero, a5
  SLTU a1, zero, t2
  REMW t2, s5, a2
  SLTU a4, zero, a1
  SLTU a2, zero, s10
  ADDIW a1, t1, 1
  AND t1, a2, a4
  SUBW a4, zero, s11
  SUBW a2, zero, a1
  BNE a5, zero, bb58
  # implict jump to bb5
bb5:   # loop depth 0
  ADD t2, s5, zero
  # implict jump to bb6
bb6:   # loop depth 0
  BNE a4, zero, bb57
  # implict jump to bb7
bb7:   # loop depth 0
  ADD t1, t2, zero
  # implict jump to bb8
bb8:   # loop depth 0
  LW t0, 4(sp)
  SLTIU a1, t0, 1
  LW t0, 4(sp)
  ADDW t2, t1, t0
  BNE a1, zero, bb56
  # implict jump to bb9
bb9:   # loop depth 0
  ADD t1, t2, zero
  # implict jump to bb10
bb10:   # loop depth 0
  ADDIW t2, t1, 1
  REMW a1, t2, s4
  BNE s4, zero, bb55
  # implict jump to bb11
bb11:   # loop depth 0
  ADD a1, t2, zero
  # implict jump to bb12
bb12:   # loop depth 0
  SLTU t2, zero, a0
  XORI t1, t2, 1
  SLTU t2, zero, t1
  ADDW t1, s8, t2
  SLTIU t2, t2, 1
  BNE t2, zero, bb54
  # implict jump to bb13
bb13:   # loop depth 0
  # implict jump to bb14
bb14:   # loop depth 0
  SLTIU a4, s9, 1
  ADDIW t1, t1, 1
  SUBW t2, t1, s9
  BNE a4, zero, bb53
  # implict jump to bb15
bb15:   # loop depth 0
  ADD t1, t2, zero
  # implict jump to bb16
bb16:   # loop depth 0
  MULW a1, a1, t1
  BNE a2, zero, bb52
  # implict jump to bb17
bb17:   # loop depth 0
  # implict jump to bb18
bb18:   # loop depth 0
  LB t0, 1(sp)
  XORI t2, t0, 1
  SLTU t2, zero, t2
  LW t0, 20(sp)
  ADDW a2, t2, t0
  BNE a3, zero, bb51
  # implict jump to bb19
bb19:   # loop depth 0
  ADD t2, a2, zero
  # implict jump to bb20
bb20:   # loop depth 0
  ADDIW a3, t2, 1
  REMW a2, s7, a3
  BNE a3, zero, bb50
  # implict jump to bb21
bb21:   # loop depth 0
  ADD a2, s7, zero
  # implict jump to bb22
bb22:   # loop depth 0
  ADDW t2, a1, a2
  SLTIU a2, a2, 1
  BNE a2, zero, bb49
  # implict jump to bb23
bb23:   # loop depth 0
  ADD a1, t2, zero
  # implict jump to bb24
bb24:   # loop depth 0
  SUBW t1, s6, s11
  SLTIU a2, s11, 1
  ADDIW t2, a1, 1
  BNE a2, zero, bb48
  # implict jump to bb25
bb25:   # loop depth 0
  # implict jump to bb26
bb26:   # loop depth 0
  MULW t2, t2, t1
  REMW a2, t2, s10
  BNE s10, zero, bb47
  # implict jump to bb27
bb27:   # loop depth 0
  ADD a2, t2, zero
  # implict jump to bb28
bb28:   # loop depth 0
  LW t0, 8(sp)
  SUBW t2, zero, t0
  ADDW t1, s5, t2
  SLTIU t2, t2, 1
  BNE t2, zero, bb46
  # implict jump to bb29
bb29:   # loop depth 0
  # implict jump to bb30
bb30:   # loop depth 0
  LW t0, 4(sp)
  SUBW a3, zero, t0
  ADDIW t2, t1, 1
  REMW a1, t2, a3
  BNE a3, zero, bb45
  # implict jump to bb31
bb31:   # loop depth 0
  ADD a1, t2, zero
  # implict jump to bb32
bb32:   # loop depth 0
  SLTU t2, zero, s8
  XORI t1, t2, 1
  SLTU t2, zero, t1
  SUBW t1, s4, t2
  SLTIU t2, t2, 1
  BNE t2, zero, bb44
  # implict jump to bb33
bb33:   # loop depth 0
  # implict jump to bb34
bb34:   # loop depth 0
  SUBW t2, zero, a0
  MULW t1, a1, t1
  REMW t0, t1, t2
  BNE t2, zero, bb43
  # implict jump to bb35
bb35:   # loop depth 0
  ADD t0, t1, zero
  # implict jump to bb36
bb36:   # loop depth 0
  ADDW t1, t0, s9
  BNE a4, zero, bb42
  # implict jump to bb37
bb37:   # loop depth 0
  ADD t0, t1, zero
  # implict jump to bb38
bb38:   # loop depth 0
  ADDIW t1, t0, 1
  SUBW t0, s3, t1
  SLTIU t1, t1, 1
  BNE t1, zero, bb41
  # implict jump to bb39
bb39:   # loop depth 0
  # implict jump to bb40
bb40:   # loop depth 0
  MULW a0, a2, t0
  LD ra, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD s10, 112(sp)
  LD s11, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb41:   # loop depth 0
  ADD t0, s3, zero
  JAL zero, bb40
bb42:   # loop depth 0
  JAL zero, bb38
bb43:   # loop depth 0
  JAL zero, bb36
bb44:   # loop depth 0
  ADD t1, s4, zero
  JAL zero, bb34
bb45:   # loop depth 0
  JAL zero, bb32
bb46:   # loop depth 0
  ADD t1, s5, zero
  JAL zero, bb30
bb47:   # loop depth 0
  JAL zero, bb28
bb48:   # loop depth 0
  ADD t1, s6, zero
  JAL zero, bb26
bb49:   # loop depth 0
  JAL zero, bb24
bb50:   # loop depth 0
  JAL zero, bb22
bb51:   # loop depth 0
  JAL zero, bb20
bb52:   # loop depth 0
  ADD a1, s6, zero
  JAL zero, bb18
bb53:   # loop depth 0
  JAL zero, bb16
bb54:   # loop depth 0
  ADD t1, s8, zero
  JAL zero, bb14
bb55:   # loop depth 0
  JAL zero, bb12
bb56:   # loop depth 0
  JAL zero, bb10
bb57:   # loop depth 0
  JAL zero, bb8
bb58:   # loop depth 0
  JAL zero, bb6
bb59:   # loop depth 0
  JAL zero, bb4
bb60:   # loop depth 0
  LW t1, 16(sp)
  JAL zero, bb2
