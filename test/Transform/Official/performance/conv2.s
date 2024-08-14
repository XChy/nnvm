.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
kernelid:
.space 40000
b:
.space 40000000
a:
.space 40000000
.section .data



.section .text
main:   # loop depth 0
  ADDI sp, sp, -240
  SD ra, 144(sp)
  SD s0, 152(sp)
  SD s3, 160(sp)
  SD s4, 168(sp)
  SD s5, 176(sp)
  SD s6, 184(sp)
  SD s7, 192(sp)
  SD s8, 200(sp)
  SD s9, 208(sp)
  SD s10, 216(sp)
  SD s11, 224(sp)
  CALL getint
  LA s0, a
  ADD s5, a0, zero
  LA s4, kernelid
  ADDI s6, zero, 0
  CALL getint
  SW a0, 128(sp)
  CALL getint
  ADD s3, a0, zero
  ADD a0, s0, zero
  LW t0, 128(sp)
  MULW t0, t0, s3
  SW t0, 120(sp)
  CALL getarray
  ADD a0, s4, zero
  CALL getarray
  SW a0, 124(sp)
  ADDI a0, zero, 109
  CALL _sysy_starttime
  LW t0, 124(sp)
  BLT s6, t0, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  LA s0, a
  ADDI a0, zero, 116
  CALL _sysy_stoptime
  ADD a1, s0, zero
  LW a0, 120(sp)
  CALL putarray
  ADD a0, zero, zero
  LD ra, 144(sp)
  LD s0, 152(sp)
  LD s3, 160(sp)
  LD s4, 168(sp)
  LD s5, 176(sp)
  LD s6, 184(sp)
  LD s7, 192(sp)
  LD s8, 200(sp)
  LD s9, 208(sp)
  LD s10, 216(sp)
  LD s11, 224(sp)
  ADDI sp, sp, 240
  JALR zero, 0(ra)
bb2:   # loop depth 0
  SRAIW t1, s5, 31
  ADD t0, zero, zero
  SRLIW t1, t1, 31
  ADD t1, s5, t1
  SRAIW t5, t1, 1
  # implict jump to bb3
bb3:   # loop depth 1
  LA t2, kernelid
  SW t0, 116(sp)
  ADD a7, zero, zero
  LW t0, 116(sp)
  SH2ADD t2, t0, t2
  LW s4, 0(t2)
  XORI t0, s4, 3
  SW t0, 104(sp)
  XORI t0, s4, 1
  SW t0, 100(sp)
  XORI t0, s4, 4
  SW t0, 96(sp)
  XORI t0, s4, 2
  SW t0, 92(sp)
  # implict jump to bb4
bb4:   # loop depth 2
  ADD t4, zero, zero
  MULW t0, a7, s3
  SW t0, 108(sp)
  ADDW s5, a7, t5
  SUBW t0, a7, t5
  SW t0, 112(sp)
  # implict jump to bb5
bb5:   # loop depth 3
  LW t3, 112(sp)
  ADD a2, zero, zero
  ADDW s7, t4, t5
  SUBW a6, t4, t5
  # implict jump to bb6
bb6:   # loop depth 4
  MULW s8, t3, s3
  LW t0, 128(sp)
  SLT a1, t3, t0
  ADD a5, a6, zero
  XORI s10, a1, 1
  SLT s9, t3, zero
  # implict jump to bb7
bb7:   # loop depth 5
  SLT t2, a5, zero
  SLT a0, a5, s3
  OR t2, s9, t2
  XORI a0, a0, 1
  OR t2, t2, s10
  OR t2, t2, a0
  BNE t2, zero, bb66
  # implict jump to bb8
bb8:   # loop depth 5
  LA a0, a
  ADDW t2, s8, a5
  SH2ADD t2, t2, a0
  LW a4, 0(t2)
  # implict jump to bb9
bb9:   # loop depth 5
  BEQ s4, zero, bb53
  # implict jump to bb10
bb10:   # loop depth 5
  LW t0, 100(sp)
  BEQ t0, zero, bb46
  # implict jump to bb11
bb11:   # loop depth 5
  LW t0, 92(sp)
  BEQ t0, zero, bb43
  # implict jump to bb12
bb12:   # loop depth 5
  LW t0, 104(sp)
  BEQ t0, zero, bb36
  # implict jump to bb13
bb13:   # loop depth 5
  LW t0, 96(sp)
  BEQ t0, zero, bb29
  # implict jump to bb14
bb14:   # loop depth 5
  ADD a2, zero, zero
  # implict jump to bb15
bb15:   # loop depth 5
  ADDIW a5, a5, 1
  BGE a5, s7, bb17
  # implict jump to bb16
bb16:   # loop depth 5
  JAL zero, bb7
bb17:   # loop depth 4
  ADDIW t3, t3, 1
  BGE t3, s5, bb19
  # implict jump to bb18
bb18:   # loop depth 4
  JAL zero, bb6
bb19:   # loop depth 3
  LA a3, b
  LW t0, 108(sp)
  ADDW a1, t0, t4
  ADDIW t4, t4, 1
  SH2ADD a1, a1, a3
  SW a2, 0(a1)
  BGE t4, s3, bb21
  # implict jump to bb20
bb20:   # loop depth 3
  JAL zero, bb5
bb21:   # loop depth 2
  ADDIW a7, a7, 1
  LW t0, 128(sp)
  BGE a7, t0, bb23
  # implict jump to bb22
bb22:   # loop depth 2
  JAL zero, bb4
bb23:   # loop depth 1
  LW t0, 120(sp)
  BLT zero, t0, bb26
  # implict jump to bb24
bb24:   # loop depth 1
  LW t0, 116(sp)
  ADDIW t0, t0, 1
  LW t1, 124(sp)
  BLT t0, t1, bb25
  JAL zero, bb1
bb25:   # loop depth 1
  JAL zero, bb3
bb26:   # loop depth 1
  ADD t1, zero, zero
  # implict jump to bb27
bb27:   # loop depth 2
  LA a0, b
  LA a1, a
  ADDIW t2, t1, 1
  SH2ADD a0, t1, a0
  LW a0, 0(a0)
  SH2ADD t1, t1, a1
  SW a0, 0(t1)
  LW t0, 120(sp)
  BLT t2, t0, bb28
  JAL zero, bb24
bb28:   # loop depth 2
  ADD t1, t2, zero
  JAL zero, bb27
bb29:   # loop depth 5
  ADDI a1, zero, 1
  ADD t2, zero, zero
  # implict jump to bb30
bb30:   # loop depth 6
  DIVW s11, a4, a1
  SLLIW a0, t2, 1
  DIVW a3, a2, a1
  ADDIW t2, a0, 1
  SLLI t0, s11, 1
  SW t0, 80(sp)
  SLLI t0, a3, 1
  SW t0, 12(sp)
  LW t0, 80(sp)
  SRLI t0, t0, 63
  SW t0, 140(sp)
  LW t0, 12(sp)
  SRLI t0, t0, 63
  SW t0, 8(sp)
  LW t0, 140(sp)
  ADD t0, s11, t0
  SW t0, 132(sp)
  LW t0, 8(sp)
  ADD t0, a3, t0
  SW t0, 40(sp)
  LW t0, 132(sp)
  ANDI t0, t0, -2
  SW t0, 136(sp)
  LW t0, 40(sp)
  ANDI t0, t0, -2
  SW t0, 4(sp)
  LW t0, 136(sp)
  SUBW s11, s11, t0
  LW t0, 4(sp)
  SUBW a3, a3, t0
  XORI s11, s11, 1
  XORI a3, a3, 1
  SLTIU s11, s11, 1
  SLTIU a3, a3, 1
  AND a3, a3, s11
  BNE a3, zero, bb35
  # implict jump to bb31
bb31:   # loop depth 6
  ADD t2, a0, zero
  # implict jump to bb32
bb32:   # loop depth 6
  LUI a3, 262144
  SLLIW a1, a1, 1
  ADDIW a3, a3, 0
  SLT a3, a1, a3
  BNE a3, zero, bb34
  # implict jump to bb33
bb33:   # loop depth 5
  ADD a2, t2, zero
  JAL zero, bb15
bb34:   # loop depth 6
  JAL zero, bb30
bb35:   # loop depth 6
  JAL zero, bb32
bb36:   # loop depth 5
  ADDI a1, zero, 1
  ADD t2, zero, zero
  # implict jump to bb37
bb37:   # loop depth 6
  DIVW s11, a4, a1
  SLLIW a0, t2, 1
  DIVW a3, a2, a1
  ADDIW t2, a0, 1
  SLLI t0, s11, 1
  SW t0, 28(sp)
  SLLI t0, a3, 1
  SW t0, 44(sp)
  LW t0, 28(sp)
  SRLI t0, t0, 63
  SW t0, 24(sp)
  LW t0, 44(sp)
  SRLI t0, t0, 63
  SW t0, 0(sp)
  LW t0, 24(sp)
  ADD t0, s11, t0
  SW t0, 16(sp)
  LW t0, 0(sp)
  ADD t0, a3, t0
  SW t0, 32(sp)
  LW t0, 16(sp)
  ANDI t0, t0, -2
  SW t0, 20(sp)
  LW t0, 32(sp)
  ANDI t0, t0, -2
  SW t0, 36(sp)
  LW t0, 20(sp)
  SUBW s11, s11, t0
  LW t0, 36(sp)
  SUBW a3, a3, t0
  XORI s11, s11, 1
  XORI a3, a3, 1
  SLTIU s11, s11, 1
  SLTIU a3, a3, 1
  OR a3, a3, s11
  BNE a3, zero, bb42
  # implict jump to bb38
bb38:   # loop depth 6
  ADD t2, a0, zero
  # implict jump to bb39
bb39:   # loop depth 6
  LUI a3, 262144
  SLLIW a1, a1, 1
  ADDIW a3, a3, 0
  SLT a3, a1, a3
  BNE a3, zero, bb41
  # implict jump to bb40
bb40:   # loop depth 5
  ADD a2, t2, zero
  JAL zero, bb15
bb41:   # loop depth 6
  JAL zero, bb37
bb42:   # loop depth 6
  JAL zero, bb39
bb43:   # loop depth 5
  BLT a4, a2, bb45
  # implict jump to bb44
bb44:   # loop depth 5
  ADD a2, a4, zero
  JAL zero, bb15
bb45:   # loop depth 5
  JAL zero, bb15
bb46:   # loop depth 5
  ADD a1, zero, zero
  ADDI a3, zero, 1
  # implict jump to bb47
bb47:   # loop depth 6
  DIVW t0, a4, a3
  SW t0, 84(sp)
  SLLIW a1, a1, 1
  DIVW s11, a2, a3
  ADDIW a0, a1, 1
  LW t0, 84(sp)
  SLLI t0, t0, 1
  SW t0, 60(sp)
  SLLI t0, s11, 1
  SW t0, 76(sp)
  LW t0, 60(sp)
  SRLI t0, t0, 63
  SW t0, 56(sp)
  LW t0, 76(sp)
  SRLI t0, t0, 63
  SW t0, 72(sp)
  LW t0, 56(sp)
  LW t1, 84(sp)
  ADD t0, t1, t0
  SW t0, 48(sp)
  LW t0, 72(sp)
  ADD t0, s11, t0
  SW t0, 64(sp)
  LW t0, 48(sp)
  ANDI t0, t0, -2
  SW t0, 52(sp)
  LW t0, 64(sp)
  ANDI t0, t0, -2
  SW t0, 68(sp)
  LW t0, 52(sp)
  LW t1, 84(sp)
  SUBW t0, t1, t0
  SW t0, 88(sp)
  LW t0, 68(sp)
  SUBW s11, s11, t0
  LW t0, 88(sp)
  BEQ s11, t0, bb52
  # implict jump to bb48
bb48:   # loop depth 6
  ADD a1, a0, zero
  # implict jump to bb49
bb49:   # loop depth 6
  LUI s11, 262144
  SLLIW a3, a3, 1
  ADDIW s11, s11, 0
  SLT s11, a3, s11
  BNE s11, zero, bb51
  # implict jump to bb50
bb50:   # loop depth 5
  ADD a2, a1, zero
  JAL zero, bb15
bb51:   # loop depth 6
  JAL zero, bb47
bb52:   # loop depth 6
  JAL zero, bb49
bb53:   # loop depth 5
  LUI a0, 262144
  ADDW a2, a2, a4
  ADDIW a0, a0, 0
  SLT a0, a0, a2
  BNE a0, zero, bb62
  # implict jump to bb54
bb54:   # loop depth 5
  # implict jump to bb55
bb55:   # loop depth 5
  BLT a2, zero, bb58
  # implict jump to bb56
bb56:   # loop depth 5
  # implict jump to bb57
bb57:   # loop depth 5
  JAL zero, bb15
bb58:   # loop depth 5
  # implict jump to bb59
bb59:   # loop depth 6
  LUI a0, 262144
  ADDIW a0, a0, 0
  ADDW a2, a2, a0
  BLT a2, zero, bb61
  # implict jump to bb60
bb60:   # loop depth 5
  JAL zero, bb57
bb61:   # loop depth 6
  JAL zero, bb59
bb62:   # loop depth 5
  # implict jump to bb63
bb63:   # loop depth 6
  LUI a0, 786432
  LUI a1, 262144
  ADDIW a0, a0, 0
  ADDIW a1, a1, 0
  ADDW a2, a2, a0
  SLT a0, a1, a2
  BNE a0, zero, bb65
  # implict jump to bb64
bb64:   # loop depth 5
  JAL zero, bb55
bb65:   # loop depth 6
  JAL zero, bb63
bb66:   # loop depth 5
  ADD a4, zero, zero
  JAL zero, bb9
