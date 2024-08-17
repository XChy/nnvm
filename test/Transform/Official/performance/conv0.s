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
  ADDI sp, sp, -176
  SD ra, 56(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD s5, 96(sp)
  SD s6, 104(sp)
  SD s7, 112(sp)
  SD s8, 120(sp)
  SD s9, 128(sp)
  SD s10, 136(sp)
  SD s11, 144(sp)
  LA s5, a
  LA t0, kernelid
  SD t0, 160(sp)
  CALL getint
  ADDI s0, zero, 0
  ADD s3, a0, zero
  CALL getint
  ADD s7, a0, zero
  CALL getint
  ADD s6, a0, zero
  ADD a0, s5, zero
  MULW s4, s7, s6
  CALL getarray
  LD a0, 160(sp)
  CALL getarray
  SW a0, 32(sp)
  ADDI a0, zero, 109
  CALL _sysy_starttime
  LW t0, 32(sp)
  BLT s0, t0, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  ADDI a0, zero, 116
  CALL _sysy_stoptime
  ADD a1, s5, zero
  ADD a0, s4, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s5, 96(sp)
  LD s6, 104(sp)
  LD s7, 112(sp)
  LD s8, 120(sp)
  LD s9, 128(sp)
  LD s10, 136(sp)
  LD s11, 144(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb2:   # loop depth 0
  SRAIW t1, s3, 31
  ADD t3, zero, zero
  SRLIW t1, t1, 31
  ADD t1, s3, t1
  SRAIW t4, t1, 1
  # implict jump to bb3
bb3:   # loop depth 1
  ADD a4, zero, zero
  LD t0, 160(sp)
  SH2ADD t1, t3, t0
  LW t5, 0(t1)
  XORI s10, t5, 3
  XORI s9, t5, 4
  XORI s8, t5, 1
  XORI s3, t5, 2
  # implict jump to bb4
bb4:   # loop depth 2
  LA t0, b
  SD t0, 152(sp)
  ADD a6, zero, zero
  # implict jump to bb5
bb5:   # loop depth 3
  SUBW a3, a4, t4
  ADD t0, zero, zero
  # implict jump to bb6
bb6:   # loop depth 4
  LUI a5, 262144
  SUBW a7, a6, t4
  ADDIW a5, a5, 0
  ADD s0, zero, a5
  # implict jump to bb7
bb7:   # loop depth 5
  SLT a2, a3, s7
  SLT a0, a7, zero
  SLT t1, a3, zero
  SLT a5, a7, s6
  XORI a2, a2, 1
  OR t1, t1, a0
  XORI a0, a5, 1
  OR t1, t1, a2
  OR t1, t1, a0
  ADD a2, t0, zero
  ADD a5, a6, zero
  BNE t1, zero, bb67
  # implict jump to bb8
bb8:   # loop depth 5
  MULW t0, a3, s6
  ADDW t0, t0, a7
  SH2ADD t0, t0, s5
  LW a1, 0(t0)
  # implict jump to bb9
bb9:   # loop depth 5
  BEQ t5, zero, bb54
  # implict jump to bb10
bb10:   # loop depth 5
  BEQ s8, zero, bb47
  # implict jump to bb11
bb11:   # loop depth 5
  BEQ s3, zero, bb44
  # implict jump to bb12
bb12:   # loop depth 5
  BEQ s10, zero, bb37
  # implict jump to bb13
bb13:   # loop depth 5
  BEQ s9, zero, bb30
  # implict jump to bb14
bb14:   # loop depth 5
  ADD t0, zero, zero
  # implict jump to bb15
bb15:   # loop depth 5
  ADDW t2, a5, t4
  ADDIW a7, a7, 1
  BGE a7, t2, bb18
  # implict jump to bb16
bb16:   # loop depth 5
  # implict jump to bb17
bb17:   # loop depth 5
  ADD a6, a5, zero
  JAL zero, bb7
bb18:   # loop depth 4
  ADDW t2, a4, t4
  ADDIW a3, a3, 1
  BGE a3, t2, bb20
  # implict jump to bb19
bb19:   # loop depth 4
  ADD a6, a5, zero
  JAL zero, bb6
bb20:   # loop depth 3
  MULW t2, a4, s6
  ADDIW a6, a5, 1
  ADDW t2, t2, a5
  LD t1, 152(sp)
  SH2ADD t2, t2, t1
  SW t0, 0(t2)
  BGE a6, s6, bb22
  # implict jump to bb21
bb21:   # loop depth 3
  JAL zero, bb5
bb22:   # loop depth 2
  ADDIW a4, a4, 1
  BGE a4, s7, bb24
  # implict jump to bb23
bb23:   # loop depth 2
  JAL zero, bb4
bb24:   # loop depth 1
  BLT zero, s4, bb27
  # implict jump to bb25
bb25:   # loop depth 1
  ADDIW t3, t3, 1
  LW t1, 32(sp)
  BLT t3, t1, bb26
  JAL zero, bb1
bb26:   # loop depth 1
  JAL zero, bb3
bb27:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb28
bb28:   # loop depth 2
  LD t1, 152(sp)
  SH2ADD t2, t0, t1
  SH2ADD t1, t0, s5
  LW t2, 0(t2)
  ADDIW t0, t0, 1
  SW t2, 0(t1)
  BLT t0, s4, bb29
  ADDIW t3, t3, 1
  LW t1, 32(sp)
  BLT t3, t1, bb26
  JAL zero, bb1
bb29:   # loop depth 2
  JAL zero, bb28
bb30:   # loop depth 5
  ADDI a0, zero, 1
  ADD t0, zero, zero
  # implict jump to bb31
bb31:   # loop depth 6
  DIVW a6, a1, a0
  SLLIW t1, t0, 1
  DIVW t2, a2, a0
  ADDIW t0, t1, 1
  SLLI s1, a6, 1
  SW s1, 36(sp)
  SLLI s11, t2, 1
  LW s1, 36(sp)
  SRLI s1, s1, 63
  SW s1, 48(sp)
  SRLI s11, s11, 63
  LW s1, 48(sp)
  ADD s1, a6, s1
  SW s1, 40(sp)
  ADD s11, t2, s11
  LW s1, 40(sp)
  ANDI s1, s1, -2
  SW s1, 44(sp)
  ANDI s11, s11, -2
  LW s1, 44(sp)
  SUBW a6, a6, s1
  SUBW t2, t2, s11
  XORI a6, a6, 1
  XORI t2, t2, 1
  SLTIU a6, a6, 1
  SLTIU t2, t2, 1
  AND t2, t2, a6
  BNE t2, zero, bb36
  # implict jump to bb32
bb32:   # loop depth 6
  ADD t0, t1, zero
  # implict jump to bb33
bb33:   # loop depth 6
  SLLIW a0, a0, 1
  BLT a0, s0, bb35
  # implict jump to bb34
bb34:   # loop depth 6
  JAL zero, bb15
bb35:   # loop depth 6
  JAL zero, bb31
bb36:   # loop depth 6
  JAL zero, bb33
bb37:   # loop depth 5
  ADDI a0, zero, 1
  ADD t0, zero, zero
  # implict jump to bb38
bb38:   # loop depth 6
  DIVW a6, a1, a0
  SLLIW t1, t0, 1
  DIVW t2, a2, a0
  ADDIW t0, t1, 1
  SLLI s1, a6, 1
  SW s1, 16(sp)
  SLLI s11, t2, 1
  LW s1, 16(sp)
  SRLI s1, s1, 63
  SW s1, 20(sp)
  SRLI s11, s11, 63
  LW s1, 20(sp)
  ADD s1, a6, s1
  SW s1, 28(sp)
  ADD s11, t2, s11
  LW s1, 28(sp)
  ANDI s1, s1, -2
  SW s1, 24(sp)
  ANDI s11, s11, -2
  LW s1, 24(sp)
  SUBW a6, a6, s1
  SUBW t2, t2, s11
  XORI a6, a6, 1
  XORI t2, t2, 1
  SLTIU a6, a6, 1
  SLTIU t2, t2, 1
  OR t2, t2, a6
  BNE t2, zero, bb43
  # implict jump to bb39
bb39:   # loop depth 6
  ADD t0, t1, zero
  # implict jump to bb40
bb40:   # loop depth 6
  SLLIW a0, a0, 1
  BLT a0, s0, bb42
  # implict jump to bb41
bb41:   # loop depth 6
  JAL zero, bb15
bb42:   # loop depth 6
  JAL zero, bb38
bb43:   # loop depth 6
  JAL zero, bb40
bb44:   # loop depth 5
  BLT a1, a2, bb46
  # implict jump to bb45
bb45:   # loop depth 5
  ADD t0, a1, zero
  JAL zero, bb15
bb46:   # loop depth 5
  ADD t0, a2, zero
  JAL zero, bb15
bb47:   # loop depth 5
  ADD t0, zero, zero
  ADDI a0, zero, 1
  # implict jump to bb48
bb48:   # loop depth 6
  DIVW a6, a1, a0
  SLLIW t0, t0, 1
  DIVW t2, a2, a0
  ADDIW t1, t0, 1
  SLLI s1, a6, 1
  SW s1, 0(sp)
  SLLI s11, t2, 1
  LW s1, 0(sp)
  SRLI s1, s1, 63
  SW s1, 4(sp)
  SRLI s11, s11, 63
  LW s1, 4(sp)
  ADD s1, a6, s1
  SW s1, 12(sp)
  ADD s11, t2, s11
  LW s1, 12(sp)
  ANDI s1, s1, -2
  SW s1, 8(sp)
  ANDI s11, s11, -2
  LW s1, 8(sp)
  SUBW a6, a6, s1
  SUBW t2, t2, s11
  BEQ t2, a6, bb53
  # implict jump to bb49
bb49:   # loop depth 6
  ADD t0, t1, zero
  # implict jump to bb50
bb50:   # loop depth 6
  SLLIW a0, a0, 1
  BLT a0, s0, bb52
  # implict jump to bb51
bb51:   # loop depth 6
  JAL zero, bb15
bb52:   # loop depth 6
  JAL zero, bb48
bb53:   # loop depth 6
  JAL zero, bb50
bb54:   # loop depth 5
  ADDW t0, a2, a1
  BLT s0, t0, bb63
  # implict jump to bb55
bb55:   # loop depth 5
  # implict jump to bb56
bb56:   # loop depth 5
  BLT t0, zero, bb59
  # implict jump to bb57
bb57:   # loop depth 5
  # implict jump to bb58
bb58:   # loop depth 5
  JAL zero, bb15
bb59:   # loop depth 5
  # implict jump to bb60
bb60:   # loop depth 6
  ADDW t0, t0, s0
  BLT t0, zero, bb62
  # implict jump to bb61
bb61:   # loop depth 6
  JAL zero, bb15
bb62:   # loop depth 6
  JAL zero, bb60
bb63:   # loop depth 5
  # implict jump to bb64
bb64:   # loop depth 6
  LUI t1, 786432
  ADDIW t1, t1, 0
  ADDW t0, t0, t1
  BLT s0, t0, bb66
  # implict jump to bb65
bb65:   # loop depth 6
  JAL zero, bb56
bb66:   # loop depth 6
  JAL zero, bb64
bb67:   # loop depth 5
  ADD a1, zero, zero
  JAL zero, bb9
