.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
get2:
.space 40000
get:
.space 40000




chas:
.space 40000

ints:
.space 40000
.section .data


c:
.word 0x00000000
i:
.word 0x00000000
ii:
.word 0x00000001
chat:
.word 0x00000000

intt:
.word 0x00000000

.section .text
main:   # loop depth 0
  ADDI sp, sp, -304
  SD ra, 96(sp)
  SD s0, 104(sp)
  SD s1, 112(sp)
  SD s2, 120(sp)
  SD s3, 128(sp)
  SD s4, 136(sp)
  SD s5, 144(sp)
  SD s7, 152(sp)
  SD s8, 160(sp)
  SD s9, 168(sp)
  SD s10, 176(sp)
  SD s11, 184(sp)
  LA t0, intt
  SD t0, 256(sp)
  ADDI t0, zero, 0
  LA t1, chat
  SD t1, 248(sp)
  ADDI t1, zero, 0
  LD t2, 256(sp)
  SW t0, 0(t2)
  LA t0, get
  SD t0, 200(sp)
  LD t0, 248(sp)
  SW t1, 0(t0)
  CALL getch
  XORI t2, a0, 10
  XORI t1, a0, 13
  SLTU t2, zero, t2
  SLTU t1, zero, t1
  AND t1, t1, t2
  BNE t1, zero, bb172
  # implict jump to bb1
bb1:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  LA t0, i
  SD t0, 208(sp)
  LA t0, ii
  SD t0, 216(sp)
  LA t0, get2
  SD t0, 224(sp)
  LA t0, chas
  SD t0, 232(sp)
  LD t0, 208(sp)
  LW t1, 0(t0)
  SW s0, 60(sp)
  LW t2, 60(sp)
  BLT t1, t2, bb59
  # implict jump to bb3
bb3:   # loop depth 1
  LD t0, 248(sp)
  LW t0, 0(t0)
  BLT zero, t0, bb58
  # implict jump to bb4
bb4:   # loop depth 0
  LD t0, 216(sp)
  LW t0, 0(t0)
  ADDI t1, zero, 64
  ADDI t2, zero, 1
  LA a7, ints
  LD a0, 224(sp)
  SH2ADD t0, t0, a0
  SW t1, 0(t0)
  LD t0, 208(sp)
  SW t2, 0(t0)
  LD t0, 224(sp)
  LW t0, 4(t0)
  XORI t0, t0, 64
  BNE t0, zero, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  LW a0, 4(a7)
  CALL putint
  ADD a0, zero, zero
  LD ra, 96(sp)
  LD s0, 104(sp)
  LD s1, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD s5, 144(sp)
  LD s7, 152(sp)
  LD s8, 160(sp)
  LD s9, 168(sp)
  LD s10, 176(sp)
  LD s11, 184(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb6:   # loop depth 0
  ADD a2, zero, zero
  ADD a4, zero, zero
  ADD a3, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  LD t0, 208(sp)
  LW a0, 0(t0)
  LD t0, 224(sp)
  SH2ADD t1, a0, t0
  LW t1, 0(t1)
  XORI t1, t1, 43
  BEQ t1, zero, bb57
  # implict jump to bb8
bb8:   # loop depth 1
  LD t0, 208(sp)
  LW t1, 0(t0)
  LD t0, 224(sp)
  SH2ADD t1, t1, t0
  LW t1, 0(t1)
  XORI t1, t1, 45
  SLTIU t1, t1, 1
  # implict jump to bb9
bb9:   # loop depth 1
  BNE t1, zero, bb56
  # implict jump to bb10
bb10:   # loop depth 1
  LD t0, 208(sp)
  LW t1, 0(t0)
  LD t0, 224(sp)
  SH2ADD t1, t1, t0
  LW t1, 0(t1)
  XORI t1, t1, 42
  SLTIU t1, t1, 1
  # implict jump to bb11
bb11:   # loop depth 1
  BNE t1, zero, bb55
  # implict jump to bb12
bb12:   # loop depth 1
  LD t0, 208(sp)
  LW t1, 0(t0)
  LD t0, 224(sp)
  SH2ADD t1, t1, t0
  LW t1, 0(t1)
  XORI t1, t1, 47
  SLTIU t1, t1, 1
  # implict jump to bb13
bb13:   # loop depth 1
  BNE t1, zero, bb54
  # implict jump to bb14
bb14:   # loop depth 1
  LD t0, 208(sp)
  LW t1, 0(t0)
  LD t0, 224(sp)
  SH2ADD t1, t1, t0
  LW t1, 0(t1)
  XORI t1, t1, 37
  SLTIU t1, t1, 1
  # implict jump to bb15
bb15:   # loop depth 1
  BNE t1, zero, bb53
  # implict jump to bb16
bb16:   # loop depth 1
  LD t0, 208(sp)
  LW t1, 0(t0)
  LD t0, 224(sp)
  SH2ADD t1, t1, t0
  LW t1, 0(t1)
  XORI t1, t1, 94
  SLTIU t1, t1, 1
  # implict jump to bb17
bb17:   # loop depth 1
  BNE t1, zero, bb28
  # implict jump to bb18
bb18:   # loop depth 1
  LD t0, 208(sp)
  LW t1, 0(t0)
  LD t0, 224(sp)
  SH2ADD t1, t1, t0
  LW t1, 0(t1)
  XORI t1, t1, 32
  BNE t1, zero, bb22
  # implict jump to bb19
bb19:   # loop depth 1
  # implict jump to bb20
bb20:   # loop depth 1
  LD t0, 208(sp)
  LW a1, 0(t0)
  ADDIW t2, a1, 1
  LD t0, 224(sp)
  SH2ADD a0, t2, t0
  LD t0, 208(sp)
  SW t2, 0(t0)
  LW t2, 0(a0)
  XORI t2, t2, 64
  BNE t2, zero, bb21
  JAL zero, bb5
bb21:   # loop depth 1
  JAL zero, bb7
bb22:   # loop depth 1
  LD t0, 208(sp)
  LW t1, 0(t0)
  ADDI a1, zero, 1
  LD t0, 224(sp)
  SH2ADD t1, t1, t0
  LW t1, 0(t1)
  LD t0, 256(sp)
  LW t2, 0(t0)
  ADDIW t1, t1, -48
  ADDIW a0, t2, 1
  SH2ADD t2, t2, a7
  LD t0, 256(sp)
  SW a0, 0(t0)
  SW t1, 4(t2)
  LD t0, 216(sp)
  SW a1, 0(t0)
  LD t0, 208(sp)
  LW t1, 0(t0)
  ADDIW t1, t1, 1
  LD t0, 224(sp)
  SH2ADD t1, t1, t0
  LW t1, 0(t1)
  XORI t1, t1, 32
  BNE t1, zero, bb24
  # implict jump to bb23
bb23:   # loop depth 1
  LD t0, 208(sp)
  LW t1, 0(t0)
  LD t0, 216(sp)
  LW t2, 0(t0)
  ADDW t1, t1, t2
  ADDIW t1, t1, -1
  LD t0, 208(sp)
  SW t1, 0(t0)
  JAL zero, bb19
bb24:   # loop depth 1
  LD t0, 208(sp)
  LW t2, 0(t0)
  SH2ADD a0, a0, a7
  LW t1, 0(a0)
  # implict jump to bb25
bb25:   # loop depth 2
  LD t0, 216(sp)
  LW a1, 0(t0)
  ADDI a6, zero, 10
  ADDW a1, t2, a1
  LD t0, 224(sp)
  SH2ADD a1, a1, t0
  LW a1, 0(a1)
  LW a5, 0(a0)
  ADDIW a1, a1, -48
  ADDW t1, t1, a1
  MULW a1, a5, a6
  SW a1, 0(a0)
  LD t0, 216(sp)
  LW a1, 0(t0)
  ADDIW a1, a1, 1
  ADDW a5, t2, a1
  LD t0, 216(sp)
  SW a1, 0(t0)
  LD t0, 224(sp)
  SH2ADD a1, a5, t0
  LW a1, 0(a1)
  XORI a1, a1, 32
  BNE a1, zero, bb27
  # implict jump to bb26
bb26:   # loop depth 1
  SW t1, 0(a0)
  JAL zero, bb23
bb27:   # loop depth 2
  JAL zero, bb25
bb28:   # loop depth 1
  LD t0, 256(sp)
  LW t1, 0(t0)
  ADDIW t2, t1, -1
  SH2ADD a0, t1, a7
  LD t0, 256(sp)
  SW t2, 0(t0)
  ADDIW a1, t1, -2
  LW a2, 0(a0)
  SH2ADD t2, t2, a7
  LD t0, 256(sp)
  SW a1, 0(t0)
  LW a4, 0(t2)
  LD t0, 208(sp)
  LW a5, 0(t0)
  ADDW a1, a2, a4
  LD t0, 224(sp)
  SH2ADD a5, a5, t0
  LW a5, 0(a5)
  XORI a6, a5, 43
  BEQ a6, zero, bb52
  # implict jump to bb29
bb29:   # loop depth 1
  ADD a1, a3, zero
  # implict jump to bb30
bb30:   # loop depth 1
  SUBW a0, a4, a2
  XORI a3, a5, 45
  BEQ a3, zero, bb51
  # implict jump to bb31
bb31:   # loop depth 1
  ADD a0, a1, zero
  # implict jump to bb32
bb32:   # loop depth 1
  MULW a1, a2, a4
  XORI a3, a5, 42
  BEQ a3, zero, bb50
  # implict jump to bb33
bb33:   # loop depth 1
  ADD a1, a0, zero
  # implict jump to bb34
bb34:   # loop depth 1
  DIVW a0, a4, a2
  XORI a3, a5, 47
  BEQ a3, zero, bb49
  # implict jump to bb35
bb35:   # loop depth 1
  ADD a0, a1, zero
  # implict jump to bb36
bb36:   # loop depth 1
  REMW a1, a4, a2
  XORI a3, a5, 37
  BEQ a3, zero, bb48
  # implict jump to bb37
bb37:   # loop depth 1
  ADD a1, a0, zero
  # implict jump to bb38
bb38:   # loop depth 1
  XORI a0, a5, 94
  BEQ a0, zero, bb41
  # implict jump to bb39
bb39:   # loop depth 1
  # implict jump to bb40
bb40:   # loop depth 1
  LD t0, 256(sp)
  LW a5, 0(t0)
  ADD a3, a1, zero
  ADDIW t1, a5, 1
  SH2ADD a5, a5, a7
  LD t0, 256(sp)
  SW t1, 0(t0)
  SW a1, 4(a5)
  JAL zero, bb20
bb41:   # loop depth 1
  BNE a2, zero, bb44
  # implict jump to bb42
bb42:   # loop depth 1
  ADDI a1, zero, 1
  # implict jump to bb43
bb43:   # loop depth 1
  JAL zero, bb40
bb44:   # loop depth 1
  ADDI a1, zero, 1
  ADD a0, a2, zero
  # implict jump to bb45
bb45:   # loop depth 2
  MULW a1, a1, a4
  ADDIW a0, a0, -1
  BNE a0, zero, bb47
  # implict jump to bb46
bb46:   # loop depth 1
  JAL zero, bb43
bb47:   # loop depth 2
  JAL zero, bb45
bb48:   # loop depth 1
  JAL zero, bb38
bb49:   # loop depth 1
  JAL zero, bb36
bb50:   # loop depth 1
  JAL zero, bb34
bb51:   # loop depth 1
  JAL zero, bb32
bb52:   # loop depth 1
  JAL zero, bb30
bb53:   # loop depth 1
  ADDI t1, zero, 1
  JAL zero, bb17
bb54:   # loop depth 1
  ADDI t1, zero, 1
  JAL zero, bb15
bb55:   # loop depth 1
  ADDI t1, zero, 1
  JAL zero, bb13
bb56:   # loop depth 1
  ADDI t1, zero, 1
  JAL zero, bb11
bb57:   # loop depth 1
  ADDI t1, zero, 1
  JAL zero, bb9
bb58:   # loop depth 1
  LD t0, 248(sp)
  LW t0, 0(t0)
  ADDI a0, zero, 32
  ADDIW t1, t0, -1
  LD t2, 232(sp)
  SH2ADD t0, t0, t2
  LD t2, 248(sp)
  SW t1, 0(t2)
  LW t0, 0(t0)
  LD t1, 216(sp)
  LW t1, 0(t1)
  LD t2, 224(sp)
  SH2ADD t2, t1, t2
  ADDIW t1, t1, 2
  SW a0, 0(t2)
  SW t0, 4(t2)
  LD t0, 216(sp)
  SW t1, 0(t0)
  JAL zero, bb3
bb59:   # loop depth 0
  LA t0, c
  SD t0, 192(sp)
  ADD t2, zero, zero
  SB t2, 42(sp)
  ADD t2, zero, zero
  SB t2, 41(sp)
  ADD t2, zero, zero
  SB t2, 36(sp)
  ADD t2, zero, zero
  SB t2, 30(sp)
  ADD t2, zero, zero
  SB t2, 27(sp)
  ADD t2, zero, zero
  SB t2, 28(sp)
  ADD t2, zero, zero
  SB t2, 29(sp)
  ADD a6, zero, zero
  ADD t0, zero, zero
  SB t0, 9(sp)
  ADD t0, zero, zero
  SB t0, 2(sp)
  ADD s11, zero, zero
  ADD t0, zero, zero
  SB t0, 5(sp)
  ADD t0, zero, zero
  SB t0, 46(sp)
  ADD t0, zero, zero
  SB t0, 6(sp)
  ADD t0, zero, zero
  SB t0, 7(sp)
  ADD t0, zero, zero
  SB t0, 17(sp)
  ADD s9, zero, zero
  ADD t0, zero, zero
  SB t0, 15(sp)
  ADD t0, zero, zero
  SB t0, 16(sp)
  # implict jump to bb60
bb60:   # loop depth 1
  ADDI a5, zero, 57
  LD t0, 200(sp)
  SH2ADD t1, t1, t0
  LB t0, 16(sp)
  SB t0, 16(sp)
  LW t0, 0(t1)
  SW t0, 48(sp)
  LB t0, 15(sp)
  SB t0, 15(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB t0, 7(sp)
  SB t0, 7(sp)
  LB t0, 6(sp)
  SB t0, 4(sp)
  LW t0, 48(sp)
  SLT a7, a5, t0
  LW t0, 48(sp)
  SLTI a5, t0, 48
  XORI a7, a7, 1
  XORI a5, a5, 1
  AND a5, a5, a7
  LB t0, 46(sp)
  SB t0, 46(sp)
  XORI t0, a5, 1
  SW t0, 64(sp)
  LB t0, 5(sp)
  SB t0, 20(sp)
  SB s11, 1(sp)
  LB t0, 2(sp)
  SB t0, 10(sp)
  LB t0, 9(sp)
  SB t0, 9(sp)
  SB a6, 33(sp)
  LB a0, 29(sp)
  SB a0, 11(sp)
  LB t3, 28(sp)
  LB a0, 27(sp)
  SB a0, 47(sp)
  LB t0, 30(sp)
  SB t0, 13(sp)
  LB t0, 13(sp)
  SB t0, 13(sp)
  LB a0, 36(sp)
  SB a0, 40(sp)
  LB a0, 41(sp)
  SB a0, 39(sp)
  LB a0, 42(sp)
  SB a0, 26(sp)
  LW t0, 64(sp)
  BEQ t0, zero, bb171
  # implict jump to bb61
bb61:   # loop depth 1
  LW t0, 48(sp)
  XORI s3, t0, 40
  BEQ s3, zero, bb170
  # implict jump to bb62
bb62:   # loop depth 1
  LW t0, 48(sp)
  XORI s3, t0, 94
  BEQ s3, zero, bb169
  # implict jump to bb63
bb63:   # loop depth 1
  LW t0, 48(sp)
  XORI s3, t0, 41
  BEQ s3, zero, bb164
  # implict jump to bb64
bb64:   # loop depth 1
  LW t0, 48(sp)
  XORI s3, t0, 43
  BEQ s3, zero, bb143
  # implict jump to bb65
bb65:   # loop depth 1
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 15(sp)
  SB t0, 15(sp)
  LB t0, 10(sp)
  SB t0, 10(sp)
  LB t0, 11(sp)
  SB t0, 11(sp)
  LB t0, 13(sp)
  SB t0, 13(sp)
  # implict jump to bb66
bb66:   # loop depth 1
  LW t0, 48(sp)
  XORI s7, t0, 45
  LB t0, 13(sp)
  SB t0, 13(sp)
  LB t0, 13(sp)
  SB t0, 37(sp)
  LB t0, 11(sp)
  SB t0, 11(sp)
  LB t0, 11(sp)
  SB t0, 35(sp)
  LB t0, 10(sp)
  SB t0, 10(sp)
  LB t0, 10(sp)
  SB t0, 34(sp)
  LB t0, 15(sp)
  SB t0, 15(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  BEQ s7, zero, bb122
  # implict jump to bb67
bb67:   # loop depth 1
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB t0, 7(sp)
  SB t0, 7(sp)
  LB s4, 4(sp)
  # implict jump to bb68
bb68:   # loop depth 1
  LW t0, 48(sp)
  XORI s7, t0, 42
  SB t3, 32(sp)
  SB s4, 4(sp)
  LB t0, 7(sp)
  SB t0, 7(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  BEQ s7, zero, bb107
  # implict jump to bb69
bb69:   # loop depth 1
  LB s3, 46(sp)
  LB s5, 20(sp)
  LB t0, 9(sp)
  SB t0, 21(sp)
  # implict jump to bb70
bb70:   # loop depth 1
  LW t0, 48(sp)
  XORI s7, t0, 47
  LB t0, 21(sp)
  SB t0, 21(sp)
  SB s5, 20(sp)
  BEQ s7, zero, bb92
  # implict jump to bb71
bb71:   # loop depth 1
  LB s11, 1(sp)
  LB t0, 33(sp)
  SB t0, 22(sp)
  LB t0, 22(sp)
  SB t0, 22(sp)
  LB a4, 47(sp)
  # implict jump to bb72
bb72:   # loop depth 1
  LW t0, 48(sp)
  XORI s8, t0, 37
  SB a4, 31(sp)
  LB t0, 22(sp)
  SB t0, 22(sp)
  BEQ s8, zero, bb77
  # implict jump to bb73
bb73:   # loop depth 1
  LB s5, 40(sp)
  LB t0, 39(sp)
  SB t0, 12(sp)
  LB t0, 12(sp)
  SB t0, 12(sp)
  LB a3, 26(sp)
  # implict jump to bb74
bb74:   # loop depth 1
  LD t0, 216(sp)
  LW s2, 0(t0)
  ADDI s8, zero, 32
  LB t0, 12(sp)
  SB t0, 12(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 16(sp)
  SB t0, 45(sp)
  LD t0, 224(sp)
  SH2ADD t5, s2, t0
  ADDIW s2, s2, 1
  SW s8, 0(t5)
  LB t0, 15(sp)
  SB t0, 15(sp)
  LB t0, 15(sp)
  SB t0, 44(sp)
  SB s9, 43(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB t0, 7(sp)
  SB t0, 7(sp)
  LB t0, 4(sp)
  SB t0, 4(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 34(sp)
  SB t0, 10(sp)
  LB t0, 10(sp)
  SB t0, 10(sp)
  LB t0, 21(sp)
  SB t0, 21(sp)
  LB t0, 22(sp)
  SB t0, 22(sp)
  LB t0, 35(sp)
  SB t0, 11(sp)
  LB t3, 32(sp)
  LB t0, 31(sp)
  SB t0, 8(sp)
  LB t0, 8(sp)
  SB t0, 8(sp)
  LB t0, 37(sp)
  SB t0, 13(sp)
  LB t0, 13(sp)
  SB t0, 13(sp)
  LB t0, 12(sp)
  SB t0, 12(sp)
  LD t0, 216(sp)
  SW s2, 0(t0)
  # implict jump to bb75
bb75:   # loop depth 1
  LD t0, 208(sp)
  LW a4, 0(t0)
  SB a3, 38(sp)
  LB t0, 12(sp)
  SB t0, 12(sp)
  LB t0, 13(sp)
  SB t0, 13(sp)
  LB t0, 8(sp)
  SB t0, 8(sp)
  ADDIW t1, a4, 1
  LD t0, 208(sp)
  SW t1, 0(t0)
  LB t0, 11(sp)
  SB t0, 11(sp)
  LB a6, 22(sp)
  LB t0, 21(sp)
  SB t0, 9(sp)
  LB t0, 10(sp)
  SB t0, 2(sp)
  LB t0, 20(sp)
  SB t0, 5(sp)
  SB s3, 46(sp)
  LB t0, 4(sp)
  SB t0, 6(sp)
  LB t0, 7(sp)
  SB t0, 7(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB s9, 43(sp)
  LB t0, 44(sp)
  SB t0, 15(sp)
  LB t0, 15(sp)
  SB t0, 15(sp)
  LB t0, 45(sp)
  SB t0, 16(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LW a4, 60(sp)
  BLT t1, a4, bb76
  JAL zero, bb3
bb76:   # loop depth 1
  LB a4, 38(sp)
  SB a4, 42(sp)
  LB t0, 12(sp)
  SB t0, 12(sp)
  LB t0, 12(sp)
  SB t0, 41(sp)
  SB s5, 36(sp)
  LB t0, 13(sp)
  SB t0, 13(sp)
  LB t0, 13(sp)
  SB t0, 30(sp)
  LB t2, 8(sp)
  SB t2, 27(sp)
  SB t3, 28(sp)
  LB t0, 11(sp)
  SB t0, 11(sp)
  LB t0, 11(sp)
  SB t0, 29(sp)
  LB t0, 9(sp)
  SB t0, 9(sp)
  LB t0, 2(sp)
  SB t0, 2(sp)
  LB t0, 5(sp)
  SB t0, 5(sp)
  LB t0, 46(sp)
  SB t0, 46(sp)
  LB t0, 6(sp)
  SB t0, 6(sp)
  LB t0, 7(sp)
  SB t0, 7(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB t0, 15(sp)
  SB t0, 15(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  JAL zero, bb60
bb77:   # loop depth 2
  LD t0, 248(sp)
  LW s0, 0(t0)
  LD t0, 232(sp)
  SH2ADD s0, s0, t0
  LW s2, 0(s0)
  XORI s0, s2, 42
  BEQ s0, zero, bb91
  # implict jump to bb78
bb78:   # loop depth 2
  XORI s0, s2, 47
  SLTIU a3, s0, 1
  # implict jump to bb79
bb79:   # loop depth 2
  BNE a3, zero, bb90
  # implict jump to bb80
bb80:   # loop depth 2
  XORI s1, s2, 37
  SLTIU t0, s1, 1
  SB t0, 12(sp)
  LB t0, 12(sp)
  SB t0, 12(sp)
  # implict jump to bb81
bb81:   # loop depth 2
  LB t0, 12(sp)
  SB t0, 12(sp)
  LB t0, 12(sp)
  BNE t0, zero, bb89
  # implict jump to bb82
bb82:   # loop depth 2
  XORI s2, s2, 94
  SLTIU s5, s2, 1
  # implict jump to bb83
bb83:   # loop depth 2
  BNE s5, zero, bb85
  # implict jump to bb84
bb84:   # loop depth 1
  LD t0, 248(sp)
  LW s8, 0(t0)
  ADDI s10, zero, 37
  LB t0, 12(sp)
  SB t0, 12(sp)
  ADDIW t0, s8, 1
  SW t0, 80(sp)
  LD t0, 232(sp)
  SH2ADD s2, s8, t0
  LD t0, 248(sp)
  LW t1, 80(sp)
  SW t1, 0(t0)
  SW s10, 4(s2)
  JAL zero, bb74
bb85:   # loop depth 2
  LD t0, 248(sp)
  LW s8, 0(t0)
  ADDI t0, zero, 32
  SW t0, 92(sp)
  ADDIW s10, s8, -1
  LD t0, 232(sp)
  SH2ADD s8, s8, t0
  LD t0, 248(sp)
  SW s10, 0(t0)
  LW s8, 0(s8)
  LD t0, 192(sp)
  SW s8, 0(t0)
  LD t0, 216(sp)
  LW t0, 0(t0)
  SW t0, 84(sp)
  LD t0, 224(sp)
  LW t1, 84(sp)
  SH2ADD t0, t1, t0
  SD t0, 288(sp)
  LW t0, 84(sp)
  ADDIW t0, t0, 2
  SW t0, 68(sp)
  LD t0, 288(sp)
  LW t1, 92(sp)
  SW t1, 0(t0)
  LD t0, 288(sp)
  SW s8, 4(t0)
  LD t0, 216(sp)
  LW t1, 68(sp)
  SW t1, 0(t0)
  BEQ s10, zero, bb88
  # implict jump to bb86
bb86:   # loop depth 2
  ADDI s8, zero, 1
  # implict jump to bb87
bb87:   # loop depth 2
  BEQ s8, zero, bb84
  JAL zero, bb77
bb88:   # loop depth 2
  ADD s8, zero, zero
  JAL zero, bb87
bb89:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb83
bb90:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 12(sp)
  JAL zero, bb81
bb91:   # loop depth 2
  ADDI a3, zero, 1
  JAL zero, bb79
bb92:   # loop depth 2
  LD t0, 248(sp)
  LW a4, 0(t0)
  LD t0, 232(sp)
  SH2ADD a4, a4, t0
  LW t4, 0(a4)
  XORI a4, t4, 42
  BEQ a4, zero, bb106
  # implict jump to bb93
bb93:   # loop depth 2
  XORI a4, t4, 47
  SLTIU a4, a4, 1
  # implict jump to bb94
bb94:   # loop depth 2
  BNE a4, zero, bb105
  # implict jump to bb95
bb95:   # loop depth 2
  XORI a6, t4, 37
  SLTIU s11, a6, 1
  # implict jump to bb96
bb96:   # loop depth 2
  BNE s11, zero, bb104
  # implict jump to bb97
bb97:   # loop depth 2
  XORI t4, t4, 94
  SLTIU t0, t4, 1
  SB t0, 22(sp)
  LB t0, 22(sp)
  SB t0, 22(sp)
  # implict jump to bb98
bb98:   # loop depth 2
  LB t0, 22(sp)
  SB t0, 22(sp)
  LB t0, 22(sp)
  BNE t0, zero, bb100
  # implict jump to bb99
bb99:   # loop depth 1
  LD t0, 248(sp)
  LW s8, 0(t0)
  ADDI s10, zero, 47
  LB t0, 22(sp)
  SB t0, 22(sp)
  ADDIW t4, s8, 1
  LD t0, 232(sp)
  SH2ADD s8, s8, t0
  LD t0, 248(sp)
  SW t4, 0(t0)
  SW s10, 4(s8)
  JAL zero, bb72
bb100:   # loop depth 2
  LD t0, 248(sp)
  LW s5, 0(t0)
  ADDI t0, zero, 32
  SW t0, 88(sp)
  ADDIW s8, s5, -1
  LD t0, 232(sp)
  SH2ADD s5, s5, t0
  LD t0, 248(sp)
  SW s8, 0(t0)
  LW s5, 0(s5)
  LD t0, 192(sp)
  SW s5, 0(t0)
  LD t0, 216(sp)
  LW s10, 0(t0)
  LD t0, 224(sp)
  SH2ADD t0, s10, t0
  SD t0, 296(sp)
  ADDIW s10, s10, 2
  LD t0, 296(sp)
  LW t1, 88(sp)
  SW t1, 0(t0)
  LD t0, 296(sp)
  SW s5, 4(t0)
  LD t0, 216(sp)
  SW s10, 0(t0)
  BEQ s8, zero, bb103
  # implict jump to bb101
bb101:   # loop depth 2
  ADDI s5, zero, 1
  # implict jump to bb102
bb102:   # loop depth 2
  BEQ s5, zero, bb99
  JAL zero, bb92
bb103:   # loop depth 2
  ADD s5, zero, zero
  JAL zero, bb102
bb104:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 22(sp)
  JAL zero, bb98
bb105:   # loop depth 2
  ADDI s11, zero, 1
  JAL zero, bb96
bb106:   # loop depth 2
  ADDI a4, zero, 1
  JAL zero, bb94
bb107:   # loop depth 2
  LD t0, 248(sp)
  LW a3, 0(t0)
  LD t0, 232(sp)
  SH2ADD a3, a3, t0
  LW s5, 0(a3)
  XORI a3, s5, 42
  BEQ a3, zero, bb121
  # implict jump to bb108
bb108:   # loop depth 2
  XORI a3, s5, 47
  SLTIU t0, a3, 1
  SB t0, 21(sp)
  LB t0, 21(sp)
  SB t0, 21(sp)
  # implict jump to bb109
bb109:   # loop depth 2
  LB t0, 21(sp)
  SB t0, 21(sp)
  LB t0, 21(sp)
  BNE t0, zero, bb120
  # implict jump to bb110
bb110:   # loop depth 2
  XORI t3, s5, 37
  SLTIU s3, t3, 1
  # implict jump to bb111
bb111:   # loop depth 2
  BNE s3, zero, bb119
  # implict jump to bb112
bb112:   # loop depth 2
  XORI s5, s5, 94
  SLTIU s5, s5, 1
  # implict jump to bb113
bb113:   # loop depth 2
  BNE s5, zero, bb115
  # implict jump to bb114
bb114:   # loop depth 1
  LD t0, 248(sp)
  LW s7, 0(t0)
  ADDI s8, zero, 42
  LB t0, 21(sp)
  SB t0, 21(sp)
  ADDIW t3, s7, 1
  LD t0, 232(sp)
  SH2ADD s7, s7, t0
  LD t0, 248(sp)
  SW t3, 0(t0)
  SW s8, 4(s7)
  JAL zero, bb70
bb115:   # loop depth 2
  LD t0, 248(sp)
  LW s7, 0(t0)
  ADDI s11, zero, 32
  ADDIW s8, s7, -1
  LD t0, 232(sp)
  SH2ADD s7, s7, t0
  LD t0, 248(sp)
  SW s8, 0(t0)
  LW s7, 0(s7)
  LD t0, 192(sp)
  SW s7, 0(t0)
  LD t0, 216(sp)
  LW s10, 0(t0)
  LD t0, 224(sp)
  SH2ADD t0, s10, t0
  SD t0, 240(sp)
  ADDIW s10, s10, 2
  LD t0, 240(sp)
  SW s11, 0(t0)
  LD t0, 240(sp)
  SW s7, 4(t0)
  LD t0, 216(sp)
  SW s10, 0(t0)
  BEQ s8, zero, bb118
  # implict jump to bb116
bb116:   # loop depth 2
  ADDI s7, zero, 1
  # implict jump to bb117
bb117:   # loop depth 2
  BEQ s7, zero, bb114
  JAL zero, bb107
bb118:   # loop depth 2
  ADD s7, zero, zero
  JAL zero, bb117
bb119:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb113
bb120:   # loop depth 2
  ADDI s3, zero, 1
  JAL zero, bb111
bb121:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 21(sp)
  JAL zero, bb109
bb122:   # loop depth 2
  LD t0, 248(sp)
  LW t2, 0(t0)
  LD t0, 232(sp)
  SH2ADD t2, t2, t0
  LW s4, 0(t2)
  XORI t2, s4, 43
  BEQ t2, zero, bb142
  # implict jump to bb123
bb123:   # loop depth 2
  XORI t2, s4, 45
  SLTIU s9, t2, 1
  # implict jump to bb124
bb124:   # loop depth 2
  BNE s9, zero, bb141
  # implict jump to bb125
bb125:   # loop depth 2
  XORI a0, s4, 42
  SLTIU t3, a0, 1
  # implict jump to bb126
bb126:   # loop depth 2
  BNE t3, zero, bb140
  # implict jump to bb127
bb127:   # loop depth 2
  XORI a1, s4, 47
  SLTIU t0, a1, 1
  SB t0, 17(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  # implict jump to bb128
bb128:   # loop depth 2
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB t0, 17(sp)
  BNE t0, zero, bb139
  # implict jump to bb129
bb129:   # loop depth 2
  XORI a1, s4, 37
  SLTIU t0, a1, 1
  SB t0, 7(sp)
  LB t0, 7(sp)
  SB t0, 7(sp)
  # implict jump to bb130
bb130:   # loop depth 2
  LB t0, 7(sp)
  SB t0, 7(sp)
  LB t0, 7(sp)
  BNE t0, zero, bb138
  # implict jump to bb131
bb131:   # loop depth 2
  XORI s4, s4, 94
  SLTIU s4, s4, 1
  # implict jump to bb132
bb132:   # loop depth 2
  BNE s4, zero, bb134
  # implict jump to bb133
bb133:   # loop depth 1
  LD t0, 248(sp)
  LW s7, 0(t0)
  ADDI s8, zero, 45
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB t0, 7(sp)
  SB t0, 7(sp)
  ADDIW t2, s7, 1
  LD t0, 232(sp)
  SH2ADD a2, s7, t0
  LD t0, 248(sp)
  SW t2, 0(t0)
  SW s8, 4(a2)
  JAL zero, bb68
bb134:   # loop depth 2
  LD t0, 248(sp)
  LW s7, 0(t0)
  ADDI t0, zero, 32
  SW t0, 76(sp)
  ADDIW s8, s7, -1
  LD t0, 232(sp)
  SH2ADD s7, s7, t0
  LD t0, 248(sp)
  SW s8, 0(t0)
  LW t0, 0(s7)
  SW t0, 52(sp)
  LD t0, 192(sp)
  LW t1, 52(sp)
  SW t1, 0(t0)
  LD t0, 216(sp)
  LW s7, 0(t0)
  LD t0, 224(sp)
  SH2ADD t0, s7, t0
  SD t0, 264(sp)
  ADDIW s7, s7, 2
  LW t0, 76(sp)
  LD t1, 264(sp)
  SW t0, 0(t1)
  LD t0, 264(sp)
  LW t1, 52(sp)
  SW t1, 4(t0)
  LD t0, 216(sp)
  SW s7, 0(t0)
  BEQ s8, zero, bb137
  # implict jump to bb135
bb135:   # loop depth 2
  ADDI s7, zero, 1
  # implict jump to bb136
bb136:   # loop depth 2
  BEQ s7, zero, bb133
  JAL zero, bb122
bb137:   # loop depth 2
  ADD s7, zero, zero
  JAL zero, bb136
bb138:   # loop depth 2
  ADDI s4, zero, 1
  JAL zero, bb132
bb139:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 7(sp)
  JAL zero, bb130
bb140:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 17(sp)
  JAL zero, bb128
bb141:   # loop depth 2
  ADDI t3, zero, 1
  JAL zero, bb126
bb142:   # loop depth 2
  ADDI s9, zero, 1
  JAL zero, bb124
bb143:   # loop depth 2
  LD t0, 248(sp)
  LW t0, 0(t0)
  LD t1, 232(sp)
  SH2ADD t0, t0, t1
  LW t5, 0(t0)
  XORI t0, t5, 43
  BEQ t0, zero, bb163
  # implict jump to bb144
bb144:   # loop depth 2
  XORI t0, t5, 45
  SLTIU t0, t0, 1
  SB t0, 10(sp)
  LB t0, 10(sp)
  SB t0, 10(sp)
  # implict jump to bb145
bb145:   # loop depth 2
  LB t0, 10(sp)
  SB t0, 10(sp)
  LB t0, 10(sp)
  BNE t0, zero, bb162
  # implict jump to bb146
bb146:   # loop depth 2
  XORI t1, t5, 42
  SLTIU t0, t1, 1
  SB t0, 15(sp)
  LB t0, 15(sp)
  SB t0, 15(sp)
  # implict jump to bb147
bb147:   # loop depth 2
  LB t0, 15(sp)
  SB t0, 15(sp)
  LB t0, 15(sp)
  BNE t0, zero, bb161
  # implict jump to bb148
bb148:   # loop depth 2
  XORI a5, t5, 47
  SLTIU t0, a5, 1
  SB t0, 13(sp)
  LB t0, 13(sp)
  SB t0, 13(sp)
  # implict jump to bb149
bb149:   # loop depth 2
  LB t0, 13(sp)
  SB t0, 13(sp)
  LB t0, 13(sp)
  BNE t0, zero, bb160
  # implict jump to bb150
bb150:   # loop depth 2
  XORI a7, t5, 37
  SLTIU t0, a7, 1
  SB t0, 16(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  # implict jump to bb151
bb151:   # loop depth 2
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 16(sp)
  BNE t0, zero, bb159
  # implict jump to bb152
bb152:   # loop depth 2
  XORI t5, t5, 94
  SLTIU t0, t5, 1
  SB t0, 11(sp)
  LB t0, 11(sp)
  SB t0, 11(sp)
  # implict jump to bb153
bb153:   # loop depth 2
  LB t0, 11(sp)
  SB t0, 11(sp)
  LB t0, 11(sp)
  BNE t0, zero, bb155
  # implict jump to bb154
bb154:   # loop depth 1
  LD t0, 248(sp)
  LW s7, 0(t0)
  ADDI s8, zero, 43
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 15(sp)
  SB t0, 15(sp)
  LB t0, 10(sp)
  SB t0, 10(sp)
  LB t0, 11(sp)
  SB t0, 11(sp)
  ADDIW t0, s7, 1
  LD t1, 232(sp)
  SH2ADD a7, s7, t1
  LD t1, 248(sp)
  SW t0, 0(t1)
  LB t0, 13(sp)
  SB t0, 13(sp)
  SW s8, 4(a7)
  JAL zero, bb66
bb155:   # loop depth 2
  LD t0, 248(sp)
  LW s3, 0(t0)
  ADDI t0, zero, 32
  SW t0, 72(sp)
  ADDIW s4, s3, -1
  LD t0, 232(sp)
  SH2ADD s3, s3, t0
  LD t0, 248(sp)
  SW s4, 0(t0)
  LW s3, 0(s3)
  LD t0, 192(sp)
  SW s3, 0(t0)
  LD t0, 216(sp)
  LW s7, 0(t0)
  LD t0, 224(sp)
  SH2ADD s8, s7, t0
  ADDIW s7, s7, 2
  LW t0, 72(sp)
  SW t0, 0(s8)
  SW s3, 4(s8)
  LD t0, 216(sp)
  SW s7, 0(t0)
  BEQ s4, zero, bb158
  # implict jump to bb156
bb156:   # loop depth 2
  ADDI s3, zero, 1
  # implict jump to bb157
bb157:   # loop depth 2
  BEQ s3, zero, bb154
  JAL zero, bb143
bb158:   # loop depth 2
  ADD s3, zero, zero
  JAL zero, bb157
bb159:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 11(sp)
  JAL zero, bb153
bb160:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 16(sp)
  JAL zero, bb151
bb161:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 13(sp)
  JAL zero, bb149
bb162:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 15(sp)
  JAL zero, bb147
bb163:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 10(sp)
  JAL zero, bb145
bb164:   # loop depth 1
  LD t0, 248(sp)
  LW s4, 0(t0)
  ADDIW s5, s4, -1
  LD t0, 232(sp)
  SH2ADD s4, s4, t0
  LD t0, 248(sp)
  SW s5, 0(t0)
  LW s4, 0(s4)
  XORI s7, s4, 40
  LD t0, 192(sp)
  SW s4, 0(t0)
  BNE s7, zero, bb165
  JAL zero, bb64
bb165:   # loop depth 1
  LD t0, 216(sp)
  LW t0, 0(t0)
  SW t0, 56(sp)
  LW t0, 56(sp)
  SW t0, 56(sp)
  # implict jump to bb166
bb166:   # loop depth 2
  LW t0, 56(sp)
  SW t0, 56(sp)
  ADDI s4, zero, 32
  LD t0, 224(sp)
  LW t1, 56(sp)
  SH2ADD s7, t1, t0
  SW s4, 0(s7)
  LD t0, 232(sp)
  SH2ADD t0, s5, t0
  SD t0, 272(sp)
  LD t0, 192(sp)
  LW s8, 0(t0)
  ADDIW s5, s5, -1
  LW t0, 56(sp)
  ADDIW t0, t0, 2
  SW t0, 56(sp)
  SW s8, 4(s7)
  LD t0, 272(sp)
  LW s7, 0(t0)
  XORI s8, s7, 40
  LD t0, 192(sp)
  SW s7, 0(t0)
  BNE s8, zero, bb168
  # implict jump to bb167
bb167:   # loop depth 1
  LD t0, 248(sp)
  SW s5, 0(t0)
  LD t0, 216(sp)
  LW t1, 56(sp)
  SW t1, 0(t0)
  JAL zero, bb64
bb168:   # loop depth 2
  LW t0, 56(sp)
  SW t0, 56(sp)
  JAL zero, bb166
bb169:   # loop depth 1
  LD t0, 248(sp)
  LW s3, 0(t0)
  ADDI s5, zero, 94
  ADDIW s4, s3, 1
  LD t0, 232(sp)
  SH2ADD s3, s3, t0
  LD t0, 248(sp)
  SW s4, 0(t0)
  SW s5, 4(s3)
  JAL zero, bb63
bb170:   # loop depth 1
  LD t0, 248(sp)
  LW s3, 0(t0)
  ADDI s5, zero, 40
  ADDIW s4, s3, 1
  LD t0, 232(sp)
  SH2ADD s3, s3, t0
  LD t0, 248(sp)
  SW s4, 0(t0)
  SW s5, 4(s3)
  JAL zero, bb62
bb171:   # loop depth 1
  LD t0, 216(sp)
  LW s3, 0(t0)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 16(sp)
  SB t0, 45(sp)
  LB t0, 15(sp)
  SB t0, 15(sp)
  LB t0, 15(sp)
  SB t0, 44(sp)
  SB s9, 43(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB t0, 7(sp)
  SB t0, 7(sp)
  LD t0, 224(sp)
  SH2ADD t0, s3, t0
  ADDIW t1, s3, 1
  LW t2, 48(sp)
  SW t2, 0(t0)
  LB t0, 4(sp)
  SB t0, 4(sp)
  LB s3, 46(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB s11, 1(sp)
  LB t0, 10(sp)
  SB t0, 10(sp)
  LB t0, 9(sp)
  SB t0, 21(sp)
  LB t0, 33(sp)
  SB t0, 22(sp)
  LB t0, 22(sp)
  SB t0, 22(sp)
  LB t0, 11(sp)
  SB t0, 11(sp)
  LB t0, 47(sp)
  SB t0, 8(sp)
  LB t0, 8(sp)
  SB t0, 8(sp)
  LB t0, 13(sp)
  SB t0, 13(sp)
  LB s5, 40(sp)
  LB t0, 39(sp)
  SB t0, 12(sp)
  LB t0, 12(sp)
  SB t0, 12(sp)
  LB a3, 26(sp)
  LD t0, 216(sp)
  SW t1, 0(t0)
  JAL zero, bb75
bb172:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb173
bb173:   # loop depth 1
  LD t0, 200(sp)
  SH2ADD t1, s0, t0
  ADDIW s0, s0, 1
  SW a0, 0(t1)
  CALL getch
  XORI t2, a0, 10
  XORI t1, a0, 13
  SLTU t2, zero, t2
  SLTU t1, zero, t1
  AND t1, t1, t2
  BNE t1, zero, bb175
  # implict jump to bb174
bb174:   # loop depth 0
  JAL zero, bb2
bb175:   # loop depth 1
  JAL zero, bb173
