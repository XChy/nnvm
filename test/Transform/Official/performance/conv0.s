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
  LA s6, a
  LA t0, kernelid
  SD t0, 160(sp)
  CALL getint
  ADDI s0, zero, 0
  ADD s3, a0, zero
  CALL getint
  ADD s5, a0, zero
  CALL getint
  ADD s4, a0, zero
  ADD a0, s6, zero
  MULW s7, s5, s4
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
  ADD a1, s6, zero
  ADD a0, s7, zero
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
  ADD a7, zero, zero
  SRLIW t1, t1, 31
  ADD t1, s3, t1
  SRAIW t3, t1, 1
  # implict jump to bb3
bb3:   # loop depth 1
  ADD a4, zero, zero
  LD t0, 160(sp)
  SH2ADD t1, a7, t0
  LW t4, 0(t1)
  XORI s10, t4, 2
  XORI s9, t4, 4
  XORI s8, t4, 3
  XORI s3, t4, 1
  # implict jump to bb4
bb4:   # loop depth 2
  LA t0, b
  SD t0, 152(sp)
  ADD a0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 3
  SUBW a6, a4, t3
  ADD t0, zero, zero
  # implict jump to bb6
bb6:   # loop depth 4
  LUI a5, 262144
  SUBW a3, a0, t3
  ADDIW a5, a5, 0
  ADD t5, zero, a5
  # implict jump to bb7
bb7:   # loop depth 5
  SLT a5, a6, s5
  SLT a2, a3, zero
  SLT t1, a6, zero
  SLT s0, a3, s4
  XORI a5, a5, 1
  OR t1, t1, a2
  XORI a2, s0, 1
  OR t1, t1, a5
  OR t1, t1, a2
  ADD a2, t0, zero
  ADD a5, a0, zero
  BNE t1, zero, bb67
  # implict jump to bb8
bb8:   # loop depth 5
  MULW t0, a6, s4
  ADDW t0, t0, a3
  SH2ADD t0, t0, s6
  LW a1, 0(t0)
  # implict jump to bb9
bb9:   # loop depth 5
  BEQ t4, zero, bb54
  # implict jump to bb10
bb10:   # loop depth 5
  BEQ s3, zero, bb47
  # implict jump to bb11
bb11:   # loop depth 5
  BEQ s10, zero, bb44
  # implict jump to bb12
bb12:   # loop depth 5
  BEQ s8, zero, bb37
  # implict jump to bb13
bb13:   # loop depth 5
  BEQ s9, zero, bb30
  # implict jump to bb14
bb14:   # loop depth 5
  ADD t0, zero, zero
  # implict jump to bb15
bb15:   # loop depth 5
  ADDW t2, a5, t3
  ADDIW a3, a3, 1
  BGE a3, t2, bb18
  # implict jump to bb16
bb16:   # loop depth 5
  # implict jump to bb17
bb17:   # loop depth 5
  ADD a0, a5, zero
  JAL zero, bb7
bb18:   # loop depth 4
  ADDW t2, a4, t3
  ADDIW a6, a6, 1
  BGE a6, t2, bb20
  # implict jump to bb19
bb19:   # loop depth 4
  ADD a0, a5, zero
  JAL zero, bb6
bb20:   # loop depth 3
  MULW t2, a4, s4
  ADDIW a0, a5, 1
  ADDW t2, t2, a5
  LD t1, 152(sp)
  SH2ADD t2, t2, t1
  SW t0, 0(t2)
  BGE a0, s4, bb22
  # implict jump to bb21
bb21:   # loop depth 3
  JAL zero, bb5
bb22:   # loop depth 2
  ADDIW a4, a4, 1
  BGE a4, s5, bb24
  # implict jump to bb23
bb23:   # loop depth 2
  JAL zero, bb4
bb24:   # loop depth 1
  BLT zero, s7, bb27
  # implict jump to bb25
bb25:   # loop depth 1
  ADDIW a7, a7, 1
  LW t1, 32(sp)
  BLT a7, t1, bb26
  JAL zero, bb1
bb26:   # loop depth 1
  JAL zero, bb3
bb27:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb28
bb28:   # loop depth 2
  LD t1, 152(sp)
  SH2ADD t2, t0, t1
  SH2ADD t1, t0, s6
  LW t2, 0(t2)
  ADDIW t0, t0, 1
  SW t2, 0(t1)
  BLT t0, s7, bb29
  ADDIW a7, a7, 1
  LW t1, 32(sp)
  BLT a7, t1, bb26
  JAL zero, bb1
bb29:   # loop depth 2
  JAL zero, bb28
bb30:   # loop depth 5
  ADDI a0, zero, 1
  ADD t0, zero, zero
  # implict jump to bb31
bb31:   # loop depth 6
  DIVW s0, a1, a0
  SLLIW t1, t0, 1
  DIVW t2, a2, a0
  ADDIW t0, t1, 1
  SLLI s1, s0, 1
  SW s1, 36(sp)
  SLLI s11, t2, 1
  LW s1, 36(sp)
  SRLI s1, s1, 63
  SW s1, 48(sp)
  SRLI s11, s11, 63
  LW s1, 48(sp)
  ADD s1, s0, s1
  SW s1, 40(sp)
  ADD s11, t2, s11
  LW s1, 40(sp)
  ANDI s1, s1, -2
  SW s1, 44(sp)
  ANDI s11, s11, -2
  LW s1, 44(sp)
  SUBW s0, s0, s1
  SUBW t2, t2, s11
  XORI s0, s0, 1
  XORI t2, t2, 1
  SLTIU s0, s0, 1
  SLTIU t2, t2, 1
  AND t2, t2, s0
  BNE t2, zero, bb36
  # implict jump to bb32
bb32:   # loop depth 6
  ADD t0, t1, zero
  # implict jump to bb33
bb33:   # loop depth 6
  SLLIW a0, a0, 1
  BLT a0, t5, bb35
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
  DIVW s0, a1, a0
  SLLIW t1, t0, 1
  DIVW t2, a2, a0
  ADDIW t0, t1, 1
  SLLI s1, s0, 1
  SW s1, 16(sp)
  SLLI s11, t2, 1
  LW s1, 16(sp)
  SRLI s1, s1, 63
  SW s1, 20(sp)
  SRLI s11, s11, 63
  LW s1, 20(sp)
  ADD s1, s0, s1
  SW s1, 28(sp)
  ADD s11, t2, s11
  LW s1, 28(sp)
  ANDI s1, s1, -2
  SW s1, 24(sp)
  ANDI s11, s11, -2
  LW s1, 24(sp)
  SUBW s0, s0, s1
  SUBW t2, t2, s11
  XORI s0, s0, 1
  XORI t2, t2, 1
  SLTIU s0, s0, 1
  SLTIU t2, t2, 1
  OR t2, t2, s0
  BNE t2, zero, bb43
  # implict jump to bb39
bb39:   # loop depth 6
  ADD t0, t1, zero
  # implict jump to bb40
bb40:   # loop depth 6
  SLLIW a0, a0, 1
  BLT a0, t5, bb42
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
  DIVW s0, a1, a0
  SLLIW t0, t0, 1
  DIVW t2, a2, a0
  ADDIW t1, t0, 1
  SLLI s1, s0, 1
  SW s1, 0(sp)
  SLLI s11, t2, 1
  LW s1, 0(sp)
  SRLI s1, s1, 63
  SW s1, 4(sp)
  SRLI s11, s11, 63
  LW s1, 4(sp)
  ADD s1, s0, s1
  SW s1, 12(sp)
  ADD s11, t2, s11
  LW s1, 12(sp)
  ANDI s1, s1, -2
  SW s1, 8(sp)
  ANDI s11, s11, -2
  LW s1, 8(sp)
  SUBW s0, s0, s1
  SUBW t2, t2, s11
  BEQ t2, s0, bb53
  # implict jump to bb49
bb49:   # loop depth 6
  ADD t0, t1, zero
  # implict jump to bb50
bb50:   # loop depth 6
  SLLIW a0, a0, 1
  BLT a0, t5, bb52
  # implict jump to bb51
bb51:   # loop depth 6
  JAL zero, bb15
bb52:   # loop depth 6
  JAL zero, bb48
bb53:   # loop depth 6
  JAL zero, bb50
bb54:   # loop depth 5
  ADDW t0, a2, a1
  BLT t5, t0, bb63
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
  ADDW t0, t0, t5
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
  BLT t5, t0, bb66
  # implict jump to bb65
bb65:   # loop depth 6
  JAL zero, bb56
bb66:   # loop depth 6
  JAL zero, bb64
bb67:   # loop depth 5
  ADD a1, zero, zero
  JAL zero, bb9
