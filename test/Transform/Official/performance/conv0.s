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
  ADDI sp, sp, -304
  SD ra, 216(sp)
  SD s5, 224(sp)
  SD s6, 232(sp)
  SD s7, 240(sp)
  SD s9, 248(sp)
  SD s10, 256(sp)
  SD s11, 264(sp)
  LA t0, a
  SD t0, 288(sp)
  LA t0, kernelid
  SD t0, 280(sp)
  CALL getint
  ADDI s7, zero, 0
  ADD s5, a0, zero
  CALL getint
  SW a0, 152(sp)
  CALL getint
  ADD s6, a0, zero
  LD a0, 288(sp)
  LW t0, 152(sp)
  MULW t0, t0, s6
  SW t0, 144(sp)
  CALL getarray
  LD a0, 280(sp)
  CALL getarray
  SW a0, 148(sp)
  ADDI a0, zero, 109
  CALL _sysy_starttime
  LW t0, 148(sp)
  BLT s7, t0, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  ADDI a0, zero, 116
  CALL _sysy_stoptime
  LD a1, 288(sp)
  LW a0, 144(sp)
  CALL putarray
  ADD a0, zero, zero
  LD ra, 216(sp)
  LD s5, 224(sp)
  LD s6, 232(sp)
  LD s7, 240(sp)
  LD s9, 248(sp)
  LD s10, 256(sp)
  LD s11, 264(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb2:   # loop depth 0
  SRAIW t1, s5, 31
  ADD t0, zero, zero
  SRLIW t1, t1, 31
  ADD t1, s5, t1
  SRAIW t5, t1, 1
  # implict jump to bb3
bb3:   # loop depth 1
  SW t0, 140(sp)
  ADD t4, zero, zero
  LD t0, 280(sp)
  LW t2, 140(sp)
  SH2ADD t2, t2, t0
  LW s5, 0(t2)
  XORI t0, s5, 3
  SW t0, 124(sp)
  XORI t0, s5, 1
  SW t0, 128(sp)
  XORI t0, s5, 4
  SW t0, 68(sp)
  XORI t0, s5, 2
  SW t0, 72(sp)
  # implict jump to bb4
bb4:   # loop depth 2
  LA t0, b
  SD t0, 272(sp)
  MULW t0, t4, s6
  SW t0, 132(sp)
  ADD t3, zero, zero
  ADDW s7, t4, t5
  SUBW t0, t4, t5
  SW t0, 136(sp)
  # implict jump to bb5
bb5:   # loop depth 3
  LW a7, 136(sp)
  ADD t2, zero, zero
  ADDW s9, t3, t5
  SUBW a6, t3, t5
  # implict jump to bb6
bb6:   # loop depth 4
  LUI a2, 262144
  MULW s11, a7, s6
  LW t0, 152(sp)
  SLT a1, a7, t0
  ADDIW a2, a2, 0
  ADD a5, a6, zero
  XORI t0, a1, 1
  SB t0, 4(sp)
  SLT t0, a7, zero
  SB t0, 3(sp)
  ADD s10, zero, a2
  # implict jump to bb7
bb7:   # loop depth 5
  SLT a0, a5, zero
  SLT a1, a5, s6
  LB t0, 3(sp)
  OR a0, t0, a0
  XORI a1, a1, 1
  LB t0, 4(sp)
  OR a0, a0, t0
  OR a0, a0, a1
  BNE a0, zero, bb66
  # implict jump to bb8
bb8:   # loop depth 5
  ADDW a0, s11, a5
  LD t0, 288(sp)
  SH2ADD a0, a0, t0
  LW a4, 0(a0)
  # implict jump to bb9
bb9:   # loop depth 5
  BEQ s5, zero, bb53
  # implict jump to bb10
bb10:   # loop depth 5
  LW t0, 128(sp)
  BEQ t0, zero, bb46
  # implict jump to bb11
bb11:   # loop depth 5
  LW t0, 72(sp)
  BEQ t0, zero, bb43
  # implict jump to bb12
bb12:   # loop depth 5
  LW t0, 124(sp)
  BEQ t0, zero, bb36
  # implict jump to bb13
bb13:   # loop depth 5
  LW t0, 68(sp)
  BEQ t0, zero, bb29
  # implict jump to bb14
bb14:   # loop depth 5
  ADD t2, zero, zero
  # implict jump to bb15
bb15:   # loop depth 5
  ADDIW a5, a5, 1
  BGE a5, s9, bb17
  # implict jump to bb16
bb16:   # loop depth 5
  JAL zero, bb7
bb17:   # loop depth 4
  ADDIW a7, a7, 1
  BGE a7, s7, bb19
  # implict jump to bb18
bb18:   # loop depth 4
  JAL zero, bb6
bb19:   # loop depth 3
  LW t0, 132(sp)
  ADDW a1, t0, t3
  ADDIW t3, t3, 1
  LD t0, 272(sp)
  SH2ADD a1, a1, t0
  SW t2, 0(a1)
  BGE t3, s6, bb21
  # implict jump to bb20
bb20:   # loop depth 3
  JAL zero, bb5
bb21:   # loop depth 2
  ADDIW t4, t4, 1
  LW t0, 152(sp)
  BGE t4, t0, bb23
  # implict jump to bb22
bb22:   # loop depth 2
  JAL zero, bb4
bb23:   # loop depth 1
  LW t0, 144(sp)
  BLT zero, t0, bb26
  # implict jump to bb24
bb24:   # loop depth 1
  LW t0, 140(sp)
  ADDIW t0, t0, 1
  LW t1, 148(sp)
  BLT t0, t1, bb25
  JAL zero, bb1
bb25:   # loop depth 1
  JAL zero, bb3
bb26:   # loop depth 1
  ADD t1, zero, zero
  # implict jump to bb27
bb27:   # loop depth 2
  LD t0, 272(sp)
  SH2ADD a0, t1, t0
  LD t0, 288(sp)
  SH2ADD t2, t1, t0
  LW a0, 0(a0)
  ADDIW t1, t1, 1
  SW a0, 0(t2)
  LW t0, 144(sp)
  BLT t1, t0, bb28
  JAL zero, bb24
bb28:   # loop depth 2
  JAL zero, bb27
bb29:   # loop depth 5
  ADDI a2, zero, 1
  ADD a0, zero, zero
  # implict jump to bb30
bb30:   # loop depth 6
  DIVW t0, a4, a2
  SW t0, 80(sp)
  SLLIW a1, a0, 1
  DIVW t0, t2, a2
  SW t0, 88(sp)
  ADDIW a0, a1, 1
  LW t0, 80(sp)
  SLLI t0, t0, 1
  SW t0, 172(sp)
  LW t0, 88(sp)
  SLLI t0, t0, 1
  SW t0, 188(sp)
  LW t0, 172(sp)
  SRLI t0, t0, 63
  SW t0, 168(sp)
  LW t0, 188(sp)
  SRLI t0, t0, 63
  SW t0, 184(sp)
  LW t0, 168(sp)
  LW t1, 80(sp)
  ADD t0, t1, t0
  SW t0, 160(sp)
  LW t0, 184(sp)
  LW t1, 88(sp)
  ADD t0, t1, t0
  SW t0, 176(sp)
  LW t0, 160(sp)
  ANDI t0, t0, -2
  SW t0, 164(sp)
  LW t0, 176(sp)
  ANDI t0, t0, -2
  SW t0, 180(sp)
  LW t0, 164(sp)
  LW t1, 80(sp)
  SUBW t0, t1, t0
  SW t0, 76(sp)
  LW t0, 180(sp)
  LW t1, 88(sp)
  SUBW t0, t1, t0
  SW t0, 84(sp)
  LW t0, 76(sp)
  XORI t0, t0, 1
  SW t0, 28(sp)
  LW t0, 84(sp)
  XORI t0, t0, 1
  SW t0, 24(sp)
  LW t0, 28(sp)
  SLTIU t0, t0, 1
  SB t0, 2(sp)
  LW t0, 24(sp)
  SLTIU t0, t0, 1
  SB t0, 7(sp)
  LB t0, 2(sp)
  LB t1, 7(sp)
  AND t0, t1, t0
  SB t0, 0(sp)
  LB t0, 0(sp)
  BNE t0, zero, bb35
  # implict jump to bb31
bb31:   # loop depth 6
  ADD a0, a1, zero
  # implict jump to bb32
bb32:   # loop depth 6
  SLLIW a2, a2, 1
  BLT a2, s10, bb34
  # implict jump to bb33
bb33:   # loop depth 5
  ADD t2, a0, zero
  JAL zero, bb15
bb34:   # loop depth 6
  JAL zero, bb30
bb35:   # loop depth 6
  JAL zero, bb32
bb36:   # loop depth 5
  ADDI a2, zero, 1
  ADD a0, zero, zero
  # implict jump to bb37
bb37:   # loop depth 6
  DIVW t0, a4, a2
  SW t0, 96(sp)
  SLLIW a1, a0, 1
  DIVW t0, t2, a2
  SW t0, 104(sp)
  ADDIW a0, a1, 1
  LW t0, 96(sp)
  SLLI t0, t0, 1
  SW t0, 204(sp)
  LW t0, 104(sp)
  SLLI t0, t0, 1
  SW t0, 116(sp)
  LW t0, 204(sp)
  SRLI t0, t0, 63
  SW t0, 200(sp)
  LW t0, 116(sp)
  SRLI t0, t0, 63
  SW t0, 60(sp)
  LW t0, 200(sp)
  LW t1, 96(sp)
  ADD t0, t1, t0
  SW t0, 192(sp)
  LW t0, 60(sp)
  LW t1, 104(sp)
  ADD t0, t1, t0
  SW t0, 208(sp)
  LW t0, 192(sp)
  ANDI t0, t0, -2
  SW t0, 196(sp)
  LW t0, 208(sp)
  ANDI t0, t0, -2
  SW t0, 212(sp)
  LW t0, 196(sp)
  LW t1, 96(sp)
  SUBW t0, t1, t0
  SW t0, 92(sp)
  LW t0, 212(sp)
  LW t1, 104(sp)
  SUBW t0, t1, t0
  SW t0, 100(sp)
  LW t0, 92(sp)
  XORI t0, t0, 1
  SW t0, 20(sp)
  LW t0, 100(sp)
  XORI t0, t0, 1
  SW t0, 16(sp)
  LW t0, 20(sp)
  SLTIU t0, t0, 1
  SB t0, 5(sp)
  LW t0, 16(sp)
  SLTIU t0, t0, 1
  SB t0, 1(sp)
  LB t0, 5(sp)
  LB t1, 1(sp)
  OR t0, t1, t0
  SB t0, 6(sp)
  LB t0, 6(sp)
  BNE t0, zero, bb42
  # implict jump to bb38
bb38:   # loop depth 6
  ADD a0, a1, zero
  # implict jump to bb39
bb39:   # loop depth 6
  SLLIW a2, a2, 1
  BLT a2, s10, bb41
  # implict jump to bb40
bb40:   # loop depth 5
  ADD t2, a0, zero
  JAL zero, bb15
bb41:   # loop depth 6
  JAL zero, bb37
bb42:   # loop depth 6
  JAL zero, bb39
bb43:   # loop depth 5
  BLT a4, t2, bb45
  # implict jump to bb44
bb44:   # loop depth 5
  ADD t2, a4, zero
  JAL zero, bb15
bb45:   # loop depth 5
  JAL zero, bb15
bb46:   # loop depth 5
  ADD a2, zero, zero
  ADDI a3, zero, 1
  # implict jump to bb47
bb47:   # loop depth 6
  DIVW t0, a4, a3
  SW t0, 112(sp)
  SLLIW a2, a2, 1
  DIVW t0, t2, a3
  SW t0, 120(sp)
  ADDIW a1, a2, 1
  LW t0, 112(sp)
  SLLI t0, t0, 1
  SW t0, 48(sp)
  LW t0, 120(sp)
  SLLI t0, t0, 1
  SW t0, 32(sp)
  LW t0, 48(sp)
  SRLI t0, t0, 63
  SW t0, 52(sp)
  LW t0, 32(sp)
  SRLI t0, t0, 63
  SW t0, 36(sp)
  LW t0, 52(sp)
  LW t1, 112(sp)
  ADD t0, t1, t0
  SW t0, 12(sp)
  LW t0, 36(sp)
  LW t1, 120(sp)
  ADD t0, t1, t0
  SW t0, 44(sp)
  LW t0, 12(sp)
  ANDI t0, t0, -2
  SW t0, 56(sp)
  LW t0, 44(sp)
  ANDI t0, t0, -2
  SW t0, 40(sp)
  LW t0, 56(sp)
  LW t1, 112(sp)
  SUBW t0, t1, t0
  SW t0, 108(sp)
  LW t0, 40(sp)
  LW t1, 120(sp)
  SUBW t0, t1, t0
  SW t0, 156(sp)
  LW t0, 108(sp)
  LW t1, 156(sp)
  BEQ t1, t0, bb52
  # implict jump to bb48
bb48:   # loop depth 6
  ADD a2, a1, zero
  # implict jump to bb49
bb49:   # loop depth 6
  SLLIW a3, a3, 1
  BLT a3, s10, bb51
  # implict jump to bb50
bb50:   # loop depth 5
  ADD t2, a2, zero
  JAL zero, bb15
bb51:   # loop depth 6
  JAL zero, bb47
bb52:   # loop depth 6
  JAL zero, bb49
bb53:   # loop depth 5
  ADDW t2, t2, a4
  BLT s10, t2, bb62
  # implict jump to bb54
bb54:   # loop depth 5
  # implict jump to bb55
bb55:   # loop depth 5
  BLT t2, zero, bb58
  # implict jump to bb56
bb56:   # loop depth 5
  # implict jump to bb57
bb57:   # loop depth 5
  JAL zero, bb15
bb58:   # loop depth 5
  # implict jump to bb59
bb59:   # loop depth 6
  ADDW t2, t2, s10
  BLT t2, zero, bb61
  # implict jump to bb60
bb60:   # loop depth 5
  JAL zero, bb57
bb61:   # loop depth 6
  JAL zero, bb59
bb62:   # loop depth 5
  # implict jump to bb63
bb63:   # loop depth 6
  LUI a0, 786432
  ADDIW a0, a0, 0
  ADDW t2, t2, a0
  BLT s10, t2, bb65
  # implict jump to bb64
bb64:   # loop depth 5
  JAL zero, bb55
bb65:   # loop depth 6
  JAL zero, bb63
bb66:   # loop depth 5
  ADD a4, zero, zero
  JAL zero, bb9
