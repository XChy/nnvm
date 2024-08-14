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
  ADDI sp, sp, -352
  SD ra, 104(sp)
  SD s0, 112(sp)
  SD s1, 120(sp)
  SD s2, 128(sp)
  SD s3, 136(sp)
  SD s4, 144(sp)
  SD s5, 152(sp)
  SD s6, 160(sp)
  SD s8, 168(sp)
  SD s9, 176(sp)
  SD s10, 184(sp)
  SD s11, 192(sp)
  LA t0, intt
  LA t2, chat
  ADDI t1, zero, 0
  ADDI a0, zero, 0
  SW t1, 0(t0)
  SW a0, 0(t2)
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
  SW s0, 92(sp)
  LW t0, 0(t0)
  SW t0, 88(sp)
  LW t0, 92(sp)
  LW t1, 88(sp)
  BLT t1, t0, bb59
  # implict jump to bb3
bb3:   # loop depth 1
  LA t0, chat
  LW t0, 0(t0)
  BLT zero, t0, bb58
  # implict jump to bb4
bb4:   # loop depth 0
  LA t0, ii
  LA t1, get2
  LA a0, i
  ADDI t2, zero, 64
  LW t0, 0(t0)
  LA a2, get2
  ADDI a1, zero, 1
  SH2ADD t0, t0, t1
  SW t2, 0(t0)
  SW a1, 0(a0)
  LW t0, 4(a2)
  XORI t0, t0, 64
  BNE t0, zero, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  LA t0, ints
  LW a0, 4(t0)
  CALL putint
  ADD a0, zero, zero
  LD ra, 104(sp)
  LD s0, 112(sp)
  LD s1, 120(sp)
  LD s2, 128(sp)
  LD s3, 136(sp)
  LD s4, 144(sp)
  LD s5, 152(sp)
  LD s6, 160(sp)
  LD s8, 168(sp)
  LD s9, 176(sp)
  LD s10, 184(sp)
  LD s11, 192(sp)
  ADDI sp, sp, 352
  JALR zero, 0(ra)
bb6:   # loop depth 0
  ADD a2, zero, zero
  ADD a4, zero, zero
  ADD a3, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  LA a0, i
  LA a1, get2
  LW t1, 0(a0)
  SH2ADD t1, t1, a1
  LW t1, 0(t1)
  XORI t1, t1, 43
  BEQ t1, zero, bb57
  # implict jump to bb8
bb8:   # loop depth 1
  LA t1, i
  LA t2, get2
  LW t1, 0(t1)
  SH2ADD t1, t1, t2
  LW t1, 0(t1)
  XORI t1, t1, 45
  SLTIU t1, t1, 1
  # implict jump to bb9
bb9:   # loop depth 1
  BNE t1, zero, bb56
  # implict jump to bb10
bb10:   # loop depth 1
  LA t1, i
  LA t2, get2
  LW t1, 0(t1)
  SH2ADD t1, t1, t2
  LW t1, 0(t1)
  XORI t1, t1, 42
  SLTIU t1, t1, 1
  # implict jump to bb11
bb11:   # loop depth 1
  BNE t1, zero, bb55
  # implict jump to bb12
bb12:   # loop depth 1
  LA t1, i
  LA t2, get2
  LW t1, 0(t1)
  SH2ADD t1, t1, t2
  LW t1, 0(t1)
  XORI t1, t1, 47
  SLTIU t1, t1, 1
  # implict jump to bb13
bb13:   # loop depth 1
  BNE t1, zero, bb54
  # implict jump to bb14
bb14:   # loop depth 1
  LA t1, i
  LA t2, get2
  LW t1, 0(t1)
  SH2ADD t1, t1, t2
  LW t1, 0(t1)
  XORI t1, t1, 37
  SLTIU t1, t1, 1
  # implict jump to bb15
bb15:   # loop depth 1
  BNE t1, zero, bb53
  # implict jump to bb16
bb16:   # loop depth 1
  LA t1, i
  LA t2, get2
  LW t1, 0(t1)
  SH2ADD t1, t1, t2
  LW t1, 0(t1)
  XORI t1, t1, 94
  SLTIU t1, t1, 1
  # implict jump to bb17
bb17:   # loop depth 1
  BNE t1, zero, bb28
  # implict jump to bb18
bb18:   # loop depth 1
  LA t1, i
  LA t2, get2
  LW t1, 0(t1)
  SH2ADD t1, t1, t2
  LW t1, 0(t1)
  XORI t1, t1, 32
  BNE t1, zero, bb22
  # implict jump to bb19
bb19:   # loop depth 1
  # implict jump to bb20
bb20:   # loop depth 1
  LA t1, i
  LA a6, get2
  LA a5, i
  LW a1, 0(t1)
  ADDIW t2, a1, 1
  SH2ADD a0, t2, a6
  SW t2, 0(a5)
  LW t2, 0(a0)
  XORI t2, t2, 64
  BNE t2, zero, bb21
  JAL zero, bb5
bb21:   # loop depth 1
  JAL zero, bb7
bb22:   # loop depth 1
  LA t1, i
  LA t2, get2
  LA a0, intt
  LA a5, ints
  LW t1, 0(t1)
  LA a1, intt
  LA a6, ii
  LA t3, i
  ADDI a7, zero, 1
  LA t4, get2
  SH2ADD t1, t1, t2
  LW t1, 0(t1)
  LW t2, 0(a0)
  ADDIW t1, t1, -48
  ADDIW a0, t2, 1
  SH2ADD t2, t2, a5
  SW a0, 0(a1)
  SW t1, 4(t2)
  SW a7, 0(a6)
  LW t1, 0(t3)
  ADDIW t1, t1, 1
  SH2ADD t1, t1, t4
  LW t1, 0(t1)
  XORI t1, t1, 32
  BNE t1, zero, bb24
  # implict jump to bb23
bb23:   # loop depth 1
  LA t1, i
  LA t2, ii
  LA a0, i
  LW t1, 0(t1)
  LW t2, 0(t2)
  ADDW t1, t1, t2
  ADDIW t1, t1, -1
  SW t1, 0(a0)
  JAL zero, bb19
bb24:   # loop depth 1
  LA t1, i
  LA a1, ints
  LW t2, 0(t1)
  SH2ADD a0, a0, a1
  LW t1, 0(a0)
  # implict jump to bb25
bb25:   # loop depth 2
  LA a1, ii
  LA a5, get2
  ADDI a6, zero, 10
  LA a7, ii
  LW a1, 0(a1)
  LA t4, get2
  LA t3, ii
  ADDW a1, t2, a1
  SH2ADD a1, a1, a5
  LW a1, 0(a1)
  LW a5, 0(a0)
  ADDIW a1, a1, -48
  ADDW t1, t1, a1
  MULW a1, a5, a6
  SW a1, 0(a0)
  LW a1, 0(a7)
  ADDIW a1, a1, 1
  ADDW a5, t2, a1
  SW a1, 0(t3)
  SH2ADD a1, a5, t4
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
  LA t1, intt
  LA a0, ints
  LA a1, intt
  LA a5, ints
  LW t1, 0(t1)
  LA a4, intt
  LA a6, i
  LA a7, get2
  ADDIW t2, t1, -1
  SH2ADD a0, t1, a0
  SW t2, 0(a1)
  ADDIW a1, t1, -2
  LW a2, 0(a0)
  SH2ADD t2, t2, a5
  SW a1, 0(a4)
  LW a4, 0(t2)
  LW a5, 0(a6)
  ADDW a1, a2, a4
  SH2ADD a5, a5, a7
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
  LA a0, intt
  LA a7, ints
  LA a6, intt
  LW a5, 0(a0)
  ADD a3, a1, zero
  ADDIW t1, a5, 1
  SH2ADD a5, a5, a7
  SW t1, 0(a6)
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
  LA t0, chat
  LA a0, chas
  LA t2, chat
  LA a1, ii
  LW t0, 0(t0)
  LA a2, get2
  ADDI a3, zero, 32
  LA a4, ii
  ADDIW t1, t0, -1
  SH2ADD t0, t0, a0
  SW t1, 0(t2)
  LW t0, 0(t0)
  LW t1, 0(a1)
  SH2ADD t2, t1, a2
  ADDIW t1, t1, 2
  SW a3, 0(t2)
  SW t0, 4(t2)
  SW t1, 0(a4)
  JAL zero, bb3
bb59:   # loop depth 0
  ADD t0, zero, zero
  SB t0, 2(sp)
  ADD t0, zero, zero
  SB t0, 1(sp)
  ADD t0, zero, zero
  SB t0, 11(sp)
  ADD s10, zero, zero
  ADD t0, zero, zero
  SB t0, 6(sp)
  ADD t0, zero, zero
  SB t0, 0(sp)
  ADD t0, zero, zero
  SB t0, 10(sp)
  ADD t0, zero, zero
  SB t0, 5(sp)
  ADD t0, zero, zero
  SB t0, 13(sp)
  ADD t0, zero, zero
  SB t0, 28(sp)
  ADD s11, zero, zero
  ADD t0, zero, zero
  SB t0, 7(sp)
  ADD t0, zero, zero
  SB t0, 8(sp)
  ADD t0, zero, zero
  SB t0, 29(sp)
  ADD t0, zero, zero
  SB t0, 22(sp)
  ADD t0, zero, zero
  SB t0, 34(sp)
  ADD t0, zero, zero
  SB t0, 33(sp)
  ADD t0, zero, zero
  SB t0, 4(sp)
  ADD t0, zero, zero
  SB t0, 3(sp)
  LW t0, 88(sp)
  SW t0, 88(sp)
  # implict jump to bb60
bb60:   # loop depth 1
  LA t1, get
  LW t0, 88(sp)
  SW t0, 88(sp)
  ADDI a7, zero, 57
  LB t0, 3(sp)
  SB t0, 3(sp)
  LW t0, 88(sp)
  SH2ADD a6, t0, t1
  LB t0, 4(sp)
  SB t0, 4(sp)
  LW t0, 0(a6)
  SW t0, 84(sp)
  LB t0, 33(sp)
  SB t0, 33(sp)
  LB t0, 34(sp)
  SB t0, 34(sp)
  LB t0, 22(sp)
  SB t0, 22(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 8(sp)
  SB t0, 8(sp)
  LW t0, 84(sp)
  SLT a7, a7, t0
  LW t0, 84(sp)
  SLTI a6, t0, 48
  XORI a7, a7, 1
  XORI a6, a6, 1
  AND a6, a6, a7
  LB t0, 7(sp)
  SB t0, 7(sp)
  XORI s4, a6, 1
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 13(sp)
  SB t0, 13(sp)
  LB t0, 5(sp)
  SB t0, 5(sp)
  LB t0, 10(sp)
  SB t0, 10(sp)
  LB t0, 0(sp)
  SB t0, 0(sp)
  LB t0, 6(sp)
  SB t0, 6(sp)
  LB t0, 11(sp)
  SB t0, 11(sp)
  LB t0, 11(sp)
  SB t0, 26(sp)
  LB t0, 1(sp)
  SB t0, 1(sp)
  LB t0, 1(sp)
  SB t0, 25(sp)
  LB t0, 2(sp)
  SB t0, 2(sp)
  LB t0, 2(sp)
  SB t0, 24(sp)
  BEQ s4, zero, bb171
  # implict jump to bb61
bb61:   # loop depth 1
  LW t0, 84(sp)
  XORI s4, t0, 40
  BEQ s4, zero, bb170
  # implict jump to bb62
bb62:   # loop depth 1
  LW t0, 84(sp)
  XORI s4, t0, 94
  BEQ s4, zero, bb169
  # implict jump to bb63
bb63:   # loop depth 1
  LW t0, 84(sp)
  XORI s4, t0, 41
  BEQ s4, zero, bb164
  # implict jump to bb64
bb64:   # loop depth 1
  LW t0, 84(sp)
  XORI s4, t0, 43
  BEQ s4, zero, bb143
  # implict jump to bb65
bb65:   # loop depth 1
  LB t0, 3(sp)
  SB t0, 3(sp)
  LB t0, 4(sp)
  SB t0, 4(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 10(sp)
  SB t0, 10(sp)
  # implict jump to bb66
bb66:   # loop depth 1
  LW t0, 84(sp)
  XORI s0, t0, 45
  SB s10, 23(sp)
  LB t0, 10(sp)
  SB t0, 10(sp)
  LB t0, 10(sp)
  SB t0, 27(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 4(sp)
  SB t0, 4(sp)
  LB t0, 3(sp)
  SB t0, 3(sp)
  BEQ s0, zero, bb122
  # implict jump to bb67
bb67:   # loop depth 1
  LB t0, 33(sp)
  SB t0, 33(sp)
  LB t0, 34(sp)
  SB t0, 34(sp)
  LB t0, 22(sp)
  SB t0, 22(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 0(sp)
  SB t0, 0(sp)
  # implict jump to bb68
bb68:   # loop depth 1
  LW t0, 84(sp)
  XORI a2, t0, 42
  LB t0, 0(sp)
  SB t0, 0(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 22(sp)
  SB t0, 22(sp)
  LB t0, 34(sp)
  SB t0, 34(sp)
  LB t0, 33(sp)
  SB t0, 33(sp)
  BEQ a2, zero, bb107
  # implict jump to bb69
bb69:   # loop depth 1
  LB t0, 8(sp)
  SB t0, 8(sp)
  LB t0, 7(sp)
  SB t0, 7(sp)
  LB t0, 13(sp)
  SB t0, 13(sp)
  # implict jump to bb70
bb70:   # loop depth 1
  LW t0, 84(sp)
  XORI a4, t0, 47
  LB t0, 13(sp)
  SB t0, 13(sp)
  LB t0, 7(sp)
  SB t0, 7(sp)
  LB t0, 8(sp)
  SB t0, 8(sp)
  BEQ a4, zero, bb92
  # implict jump to bb71
bb71:   # loop depth 1
  LB t0, 5(sp)
  SB t0, 5(sp)
  LB t0, 6(sp)
  SB t0, 6(sp)
  # implict jump to bb72
bb72:   # loop depth 1
  LW t0, 84(sp)
  XORI a7, t0, 37
  LB t0, 6(sp)
  SB t0, 6(sp)
  LB t0, 5(sp)
  SB t0, 5(sp)
  BEQ a7, zero, bb77
  # implict jump to bb73
bb73:   # loop depth 1
  LB t0, 26(sp)
  SB t0, 11(sp)
  LB t0, 11(sp)
  SB t0, 11(sp)
  LB t0, 25(sp)
  SB t0, 1(sp)
  LB t0, 1(sp)
  SB t0, 1(sp)
  LB t0, 24(sp)
  SB t0, 2(sp)
  LB t0, 2(sp)
  SB t0, 2(sp)
  # implict jump to bb74
bb74:   # loop depth 1
  LA t5, ii
  LA s1, get2
  LA s0, ii
  ADDI s2, zero, 32
  LW t5, 0(t5)
  LB t0, 2(sp)
  SB t0, 2(sp)
  LB t0, 1(sp)
  SB t0, 1(sp)
  LB t0, 11(sp)
  SB t0, 11(sp)
  LB t0, 3(sp)
  SB t0, 3(sp)
  LB t0, 4(sp)
  SB t0, 4(sp)
  SH2ADD s1, t5, s1
  ADDIW t1, t5, 1
  SW s2, 0(s1)
  LB t0, 33(sp)
  SB t0, 33(sp)
  LB t0, 34(sp)
  SB t0, 34(sp)
  LB t0, 22(sp)
  SB t0, 22(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 8(sp)
  SB t0, 8(sp)
  LB t0, 7(sp)
  SB t0, 7(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 13(sp)
  SB t0, 13(sp)
  LB t0, 5(sp)
  SB t0, 5(sp)
  LB t0, 27(sp)
  SB t0, 10(sp)
  LB t0, 10(sp)
  SB t0, 10(sp)
  LB t0, 0(sp)
  SB t0, 0(sp)
  LB t0, 6(sp)
  SB t0, 6(sp)
  LB s10, 23(sp)
  LB t0, 11(sp)
  SB t0, 11(sp)
  LB t0, 1(sp)
  SB t0, 1(sp)
  LB t0, 2(sp)
  SB t0, 2(sp)
  SW t1, 0(s0)
  # implict jump to bb75
bb75:   # loop depth 1
  LA a3, i
  LA a4, i
  LB t0, 2(sp)
  SB t0, 2(sp)
  LB t0, 1(sp)
  SB t0, 1(sp)
  LW a3, 0(a3)
  LB t0, 11(sp)
  SB t0, 11(sp)
  LB t0, 6(sp)
  SB t0, 6(sp)
  LB t0, 0(sp)
  SB t0, 0(sp)
  LB t0, 10(sp)
  SB t0, 10(sp)
  ADDIW t0, a3, 1
  SW t0, 88(sp)
  LB t0, 5(sp)
  SB t0, 5(sp)
  LW t0, 88(sp)
  SW t0, 0(a4)
  LB t0, 13(sp)
  SB t0, 13(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 7(sp)
  SB t0, 7(sp)
  LB t0, 8(sp)
  SB t0, 8(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 22(sp)
  SB t0, 22(sp)
  LB t0, 34(sp)
  SB t0, 34(sp)
  LB t0, 33(sp)
  SB t0, 33(sp)
  LB t0, 4(sp)
  SB t0, 4(sp)
  LB t0, 3(sp)
  SB t0, 3(sp)
  LW a0, 92(sp)
  LW t0, 88(sp)
  BLT t0, a0, bb76
  JAL zero, bb3
bb76:   # loop depth 1
  LB t0, 2(sp)
  SB t0, 2(sp)
  LB t0, 1(sp)
  SB t0, 1(sp)
  LB t0, 11(sp)
  SB t0, 11(sp)
  LB t0, 6(sp)
  SB t0, 6(sp)
  LB t0, 0(sp)
  SB t0, 0(sp)
  LB t0, 10(sp)
  SB t0, 10(sp)
  LB t0, 5(sp)
  SB t0, 5(sp)
  LB t0, 13(sp)
  SB t0, 13(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 7(sp)
  SB t0, 7(sp)
  LB t0, 8(sp)
  SB t0, 8(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 22(sp)
  SB t0, 22(sp)
  LB t0, 34(sp)
  SB t0, 34(sp)
  LB t0, 33(sp)
  SB t0, 33(sp)
  LB t0, 4(sp)
  SB t0, 4(sp)
  LB t0, 3(sp)
  SB t0, 3(sp)
  LW t0, 88(sp)
  SW t0, 88(sp)
  JAL zero, bb60
bb77:   # loop depth 2
  LA t2, chat
  LA a7, chas
  LW t2, 0(t2)
  SH2ADD t2, t2, a7
  LW t3, 0(t2)
  XORI t2, t3, 42
  BEQ t2, zero, bb91
  # implict jump to bb78
bb78:   # loop depth 2
  XORI t2, t3, 47
  SLTIU t0, t2, 1
  SB t0, 2(sp)
  LB t0, 2(sp)
  SB t0, 2(sp)
  # implict jump to bb79
bb79:   # loop depth 2
  LB t0, 2(sp)
  SB t0, 2(sp)
  LB t0, 2(sp)
  BNE t0, zero, bb90
  # implict jump to bb80
bb80:   # loop depth 2
  XORI t2, t3, 37
  SLTIU t0, t2, 1
  SB t0, 1(sp)
  LB t0, 1(sp)
  SB t0, 1(sp)
  # implict jump to bb81
bb81:   # loop depth 2
  LB t0, 1(sp)
  SB t0, 1(sp)
  LB t0, 1(sp)
  BNE t0, zero, bb89
  # implict jump to bb82
bb82:   # loop depth 2
  XORI t3, t3, 94
  SLTIU t0, t3, 1
  SB t0, 11(sp)
  LB t0, 11(sp)
  SB t0, 11(sp)
  # implict jump to bb83
bb83:   # loop depth 2
  LB t0, 11(sp)
  SB t0, 11(sp)
  LB t0, 11(sp)
  BNE t0, zero, bb85
  # implict jump to bb84
bb84:   # loop depth 1
  LA t5, chat
  LA s2, chas
  LA s1, chat
  ADDI s3, zero, 37
  LW t5, 0(t5)
  LB t0, 11(sp)
  SB t0, 11(sp)
  LB t0, 1(sp)
  SB t0, 1(sp)
  LB t0, 2(sp)
  SB t0, 2(sp)
  ADDIW s0, t5, 1
  SH2ADD t5, t5, s2
  SW s0, 0(s1)
  SW s3, 4(t5)
  JAL zero, bb74
bb85:   # loop depth 2
  LA t5, chat
  LA s2, chas
  LA s1, chat
  LA s3, c
  LW t5, 0(t5)
  LA s4, ii
  LA s5, get2
  ADDI t0, zero, 32
  SW t0, 96(sp)
  LA t0, ii
  SD t0, 208(sp)
  ADDIW s0, t5, -1
  SH2ADD t5, t5, s2
  SW s0, 0(s1)
  LW t5, 0(t5)
  SW t5, 0(s3)
  LW s1, 0(s4)
  SH2ADD s2, s1, s5
  ADDIW s1, s1, 2
  LW t0, 96(sp)
  SW t0, 0(s2)
  SW t5, 4(s2)
  LD t0, 208(sp)
  SW s1, 0(t0)
  BEQ s0, zero, bb88
  # implict jump to bb86
bb86:   # loop depth 2
  ADDI t5, zero, 1
  # implict jump to bb87
bb87:   # loop depth 2
  BEQ t5, zero, bb84
  JAL zero, bb77
bb88:   # loop depth 2
  ADD t5, zero, zero
  JAL zero, bb87
bb89:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 11(sp)
  JAL zero, bb83
bb90:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 1(sp)
  JAL zero, bb81
bb91:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 2(sp)
  JAL zero, bb79
bb92:   # loop depth 2
  LA t2, chat
  LA a4, chas
  LW t2, 0(t2)
  SH2ADD t2, t2, a4
  LW a7, 0(t2)
  XORI t2, a7, 42
  BEQ t2, zero, bb106
  # implict jump to bb93
bb93:   # loop depth 2
  XORI t2, a7, 47
  SLTIU t0, t2, 1
  SB t0, 6(sp)
  LB t0, 6(sp)
  SB t0, 6(sp)
  # implict jump to bb94
bb94:   # loop depth 2
  LB t0, 6(sp)
  SB t0, 6(sp)
  LB t0, 6(sp)
  BNE t0, zero, bb105
  # implict jump to bb95
bb95:   # loop depth 2
  XORI a4, a7, 37
  SLTIU s11, a4, 1
  # implict jump to bb96
bb96:   # loop depth 2
  BNE s11, zero, bb104
  # implict jump to bb97
bb97:   # loop depth 2
  XORI a4, a7, 94
  SLTIU t0, a4, 1
  SB t0, 5(sp)
  LB t0, 5(sp)
  SB t0, 5(sp)
  # implict jump to bb98
bb98:   # loop depth 2
  LB t0, 5(sp)
  SB t0, 5(sp)
  LB t0, 5(sp)
  BNE t0, zero, bb100
  # implict jump to bb99
bb99:   # loop depth 1
  LA a4, chat
  LA s4, chas
  LA t5, chat
  ADDI s5, zero, 47
  LW a4, 0(a4)
  LB t0, 5(sp)
  SB t0, 5(sp)
  LB t0, 6(sp)
  SB t0, 6(sp)
  ADDIW a5, a4, 1
  SH2ADD a4, a4, s4
  SW a5, 0(t5)
  SW s5, 4(a4)
  JAL zero, bb72
bb100:   # loop depth 2
  LA a4, chat
  LA s0, chas
  LA t5, chat
  LA t0, c
  SD t0, 248(sp)
  LW a4, 0(a4)
  LA s4, ii
  LA s5, get2
  ADDI s8, zero, 32
  LA t0, ii
  SD t0, 216(sp)
  ADDIW t3, a4, -1
  SH2ADD a4, a4, s0
  SW t3, 0(t5)
  LW a4, 0(a4)
  LD t0, 248(sp)
  SW a4, 0(t0)
  LW t5, 0(s4)
  SH2ADD s0, t5, s5
  ADDIW t5, t5, 2
  SW s8, 0(s0)
  SW a4, 4(s0)
  LD t0, 216(sp)
  SW t5, 0(t0)
  BEQ t3, zero, bb103
  # implict jump to bb101
bb101:   # loop depth 2
  ADDI t5, zero, 1
  # implict jump to bb102
bb102:   # loop depth 2
  BEQ t5, zero, bb99
  JAL zero, bb92
bb103:   # loop depth 2
  ADD t5, zero, zero
  JAL zero, bb102
bb104:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 5(sp)
  JAL zero, bb98
bb105:   # loop depth 2
  ADDI s11, zero, 1
  JAL zero, bb96
bb106:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 6(sp)
  JAL zero, bb94
bb107:   # loop depth 2
  LA t2, chat
  LA a1, chas
  LW t2, 0(t2)
  SH2ADD t2, t2, a1
  LW a4, 0(t2)
  XORI t2, a4, 42
  BEQ t2, zero, bb121
  # implict jump to bb108
bb108:   # loop depth 2
  XORI t2, a4, 47
  SLTIU t0, t2, 1
  SB t0, 13(sp)
  LB t0, 13(sp)
  SB t0, 13(sp)
  # implict jump to bb109
bb109:   # loop depth 2
  LB t0, 13(sp)
  SB t0, 13(sp)
  LB t0, 13(sp)
  BNE t0, zero, bb120
  # implict jump to bb110
bb110:   # loop depth 2
  XORI a1, a4, 37
  SLTIU t0, a1, 1
  SB t0, 8(sp)
  LB t0, 8(sp)
  SB t0, 8(sp)
  # implict jump to bb111
bb111:   # loop depth 2
  LB t0, 8(sp)
  SB t0, 8(sp)
  LB t0, 8(sp)
  BNE t0, zero, bb119
  # implict jump to bb112
bb112:   # loop depth 2
  XORI a1, a4, 94
  SLTIU t0, a1, 1
  SB t0, 7(sp)
  LB t0, 7(sp)
  SB t0, 7(sp)
  # implict jump to bb113
bb113:   # loop depth 2
  LB t0, 7(sp)
  SB t0, 7(sp)
  LB t0, 7(sp)
  BNE t0, zero, bb115
  # implict jump to bb114
bb114:   # loop depth 1
  LA s0, chat
  LA a4, chas
  LA a1, chat
  ADDI a7, zero, 42
  LW s0, 0(s0)
  LB t0, 8(sp)
  SB t0, 8(sp)
  LB t0, 7(sp)
  SB t0, 7(sp)
  LB t0, 13(sp)
  SB t0, 13(sp)
  ADDIW s4, s0, 1
  SH2ADD a4, s0, a4
  SW s4, 0(a1)
  SW a7, 4(a4)
  JAL zero, bb70
bb115:   # loop depth 2
  LA a1, chat
  LA s0, chas
  LA a7, chat
  LA t0, c
  SD t0, 256(sp)
  LW a1, 0(a1)
  LA s4, ii
  LA s5, get2
  ADDI s8, zero, 32
  LA t0, ii
  SD t0, 224(sp)
  ADDIW a4, a1, -1
  SH2ADD a1, a1, s0
  SW a4, 0(a7)
  LW a1, 0(a1)
  LD t0, 256(sp)
  SW a1, 0(t0)
  LW a7, 0(s4)
  SH2ADD s0, a7, s5
  ADDIW a7, a7, 2
  SW s8, 0(s0)
  SW a1, 4(s0)
  LD t0, 224(sp)
  SW a7, 0(t0)
  BEQ a4, zero, bb118
  # implict jump to bb116
bb116:   # loop depth 2
  ADDI a4, zero, 1
  # implict jump to bb117
bb117:   # loop depth 2
  BEQ a4, zero, bb114
  JAL zero, bb107
bb118:   # loop depth 2
  ADD a4, zero, zero
  JAL zero, bb117
bb119:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 7(sp)
  JAL zero, bb113
bb120:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 8(sp)
  JAL zero, bb111
bb121:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 13(sp)
  JAL zero, bb109
bb122:   # loop depth 2
  LA t2, chat
  LA a0, chas
  LW t2, 0(t2)
  SH2ADD t2, t2, a0
  LW s0, 0(t2)
  XORI t2, s0, 43
  BEQ t2, zero, bb142
  # implict jump to bb123
bb123:   # loop depth 2
  XORI t2, s0, 45
  SLTIU t0, t2, 1
  SB t0, 33(sp)
  LB t0, 33(sp)
  SB t0, 33(sp)
  # implict jump to bb124
bb124:   # loop depth 2
  LB t0, 33(sp)
  SB t0, 33(sp)
  LB t0, 33(sp)
  BNE t0, zero, bb141
  # implict jump to bb125
bb125:   # loop depth 2
  XORI a0, s0, 42
  SLTIU t0, a0, 1
  SB t0, 0(sp)
  LB t0, 0(sp)
  SB t0, 0(sp)
  # implict jump to bb126
bb126:   # loop depth 2
  LB t0, 0(sp)
  SB t0, 0(sp)
  LB t0, 0(sp)
  BNE t0, zero, bb140
  # implict jump to bb127
bb127:   # loop depth 2
  XORI a1, s0, 47
  SLTIU t0, a1, 1
  SB t0, 34(sp)
  LB t0, 34(sp)
  SB t0, 34(sp)
  # implict jump to bb128
bb128:   # loop depth 2
  LB t0, 34(sp)
  SB t0, 34(sp)
  LB t0, 34(sp)
  BNE t0, zero, bb139
  # implict jump to bb129
bb129:   # loop depth 2
  XORI a2, s0, 37
  SLTIU t0, a2, 1
  SB t0, 22(sp)
  LB t0, 22(sp)
  SB t0, 22(sp)
  # implict jump to bb130
bb130:   # loop depth 2
  LB t0, 22(sp)
  SB t0, 22(sp)
  LB t0, 22(sp)
  BNE t0, zero, bb138
  # implict jump to bb131
bb131:   # loop depth 2
  XORI s0, s0, 94
  SLTIU t0, s0, 1
  SB t0, 29(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  # implict jump to bb132
bb132:   # loop depth 2
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 29(sp)
  BNE t0, zero, bb134
  # implict jump to bb133
bb133:   # loop depth 1
  LA s4, chat
  LA s10, chas
  LA s9, chat
  ADDI t0, zero, 45
  SW t0, 80(sp)
  LW t0, 0(s4)
  SW t0, 68(sp)
  LB t0, 33(sp)
  SB t0, 33(sp)
  LB t0, 34(sp)
  SB t0, 34(sp)
  LB t0, 22(sp)
  SB t0, 22(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 0(sp)
  SB t0, 0(sp)
  LW t0, 68(sp)
  ADDIW a2, t0, 1
  LW t0, 68(sp)
  SH2ADD s0, t0, s10
  SW a2, 0(s9)
  LW t0, 80(sp)
  SW t0, 4(s0)
  JAL zero, bb68
bb134:   # loop depth 2
  LA s4, chat
  LA t0, chas
  SD t0, 280(sp)
  LA s5, chat
  LA t0, c
  SD t0, 272(sp)
  LW s4, 0(s4)
  LA t0, ii
  SD t0, 200(sp)
  LA s8, get2
  ADDI s9, zero, 32
  LA t0, ii
  SD t0, 232(sp)
  ADDIW t0, s4, -1
  SW t0, 64(sp)
  LD t0, 280(sp)
  SH2ADD s4, s4, t0
  LW t0, 64(sp)
  SW t0, 0(s5)
  LW s4, 0(s4)
  LD t0, 272(sp)
  SW s4, 0(t0)
  LD t0, 200(sp)
  LW s5, 0(t0)
  SH2ADD s8, s5, s8
  ADDIW s5, s5, 2
  SW s9, 0(s8)
  SW s4, 4(s8)
  LD t0, 232(sp)
  SW s5, 0(t0)
  LW t0, 64(sp)
  BEQ t0, zero, bb137
  # implict jump to bb135
bb135:   # loop depth 2
  ADDI s4, zero, 1
  # implict jump to bb136
bb136:   # loop depth 2
  BEQ s4, zero, bb133
  JAL zero, bb122
bb137:   # loop depth 2
  ADD s4, zero, zero
  JAL zero, bb136
bb138:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 29(sp)
  JAL zero, bb132
bb139:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 22(sp)
  JAL zero, bb130
bb140:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 34(sp)
  JAL zero, bb128
bb141:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 0(sp)
  JAL zero, bb126
bb142:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 33(sp)
  JAL zero, bb124
bb143:   # loop depth 2
  LA t0, chat
  LA t1, chas
  LW t0, 0(t0)
  SH2ADD t0, t0, t1
  LW s0, 0(t0)
  XORI t0, s0, 43
  BEQ t0, zero, bb163
  # implict jump to bb144
bb144:   # loop depth 2
  XORI t0, s0, 45
  SLTIU t0, t0, 1
  SB t0, 28(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  # implict jump to bb145
bb145:   # loop depth 2
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 28(sp)
  BNE t0, zero, bb162
  # implict jump to bb146
bb146:   # loop depth 2
  XORI t1, s0, 42
  SLTIU t0, t1, 1
  SB t0, 4(sp)
  LB t0, 4(sp)
  SB t0, 4(sp)
  # implict jump to bb147
bb147:   # loop depth 2
  LB t0, 4(sp)
  SB t0, 4(sp)
  LB t0, 4(sp)
  BNE t0, zero, bb161
  # implict jump to bb148
bb148:   # loop depth 2
  XORI a6, s0, 47
  SLTIU s10, a6, 1
  # implict jump to bb149
bb149:   # loop depth 2
  BNE s10, zero, bb160
  # implict jump to bb150
bb150:   # loop depth 2
  XORI t4, s0, 37
  SLTIU t0, t4, 1
  SB t0, 3(sp)
  LB t0, 3(sp)
  SB t0, 3(sp)
  # implict jump to bb151
bb151:   # loop depth 2
  LB t0, 3(sp)
  SB t0, 3(sp)
  LB t0, 3(sp)
  BNE t0, zero, bb159
  # implict jump to bb152
bb152:   # loop depth 2
  XORI s0, s0, 94
  SLTIU t0, s0, 1
  SB t0, 10(sp)
  LB t0, 10(sp)
  SB t0, 10(sp)
  # implict jump to bb153
bb153:   # loop depth 2
  LB t0, 10(sp)
  SB t0, 10(sp)
  LB t0, 10(sp)
  BNE t0, zero, bb155
  # implict jump to bb154
bb154:   # loop depth 1
  LA s4, chat
  LA s5, chas
  LA t0, chat
  SD t0, 288(sp)
  ADDI s6, zero, 43
  LW t0, 0(s4)
  SW t0, 60(sp)
  LB t0, 3(sp)
  SB t0, 3(sp)
  LB t0, 4(sp)
  SB t0, 4(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 10(sp)
  SB t0, 10(sp)
  LW t0, 60(sp)
  ADDIW t4, t0, 1
  LW t0, 60(sp)
  SH2ADD s0, t0, s5
  LD t0, 288(sp)
  SW t4, 0(t0)
  SW s6, 4(s0)
  JAL zero, bb66
bb155:   # loop depth 2
  LA s4, chat
  LA t0, chas
  SD t0, 312(sp)
  LA t0, chat
  SD t0, 320(sp)
  LA t0, c
  SD t0, 304(sp)
  LW s4, 0(s4)
  LA t0, ii
  SD t0, 296(sp)
  LA s5, get2
  ADDI s6, zero, 32
  LA t0, ii
  SD t0, 240(sp)
  ADDIW t0, s4, -1
  SW t0, 52(sp)
  LD t0, 312(sp)
  SH2ADD s4, s4, t0
  LD t0, 320(sp)
  LW t1, 52(sp)
  SW t1, 0(t0)
  LW t0, 0(s4)
  SW t0, 36(sp)
  LD t0, 304(sp)
  LW t1, 36(sp)
  SW t1, 0(t0)
  LD t0, 296(sp)
  LW s4, 0(t0)
  SH2ADD s5, s4, s5
  ADDIW s4, s4, 2
  SW s6, 0(s5)
  LW t0, 36(sp)
  SW t0, 4(s5)
  LD t0, 240(sp)
  SW s4, 0(t0)
  LW t0, 52(sp)
  BEQ t0, zero, bb158
  # implict jump to bb156
bb156:   # loop depth 2
  ADDI s4, zero, 1
  # implict jump to bb157
bb157:   # loop depth 2
  BEQ s4, zero, bb154
  JAL zero, bb143
bb158:   # loop depth 2
  ADD s4, zero, zero
  JAL zero, bb157
bb159:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 10(sp)
  JAL zero, bb153
bb160:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 3(sp)
  JAL zero, bb151
bb161:   # loop depth 2
  ADDI s10, zero, 1
  JAL zero, bb149
bb162:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 4(sp)
  JAL zero, bb147
bb163:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 28(sp)
  JAL zero, bb145
bb164:   # loop depth 1
  LA s4, chat
  LA s6, chas
  LA t0, chat
  SD t0, 336(sp)
  LA s8, c
  LW s5, 0(s4)
  ADDIW t0, s5, -1
  SW t0, 40(sp)
  SH2ADD s5, s5, s6
  LD t0, 336(sp)
  LW t1, 40(sp)
  SW t1, 0(t0)
  LW s5, 0(s5)
  XORI s6, s5, 40
  SW s5, 0(s8)
  BNE s6, zero, bb165
  JAL zero, bb64
bb165:   # loop depth 1
  LA s6, ii
  LW t0, 40(sp)
  SW t0, 40(sp)
  LW t0, 0(s6)
  SW t0, 44(sp)
  LW t0, 44(sp)
  SW t0, 44(sp)
  # implict jump to bb166
bb166:   # loop depth 2
  LA s6, get2
  LW t0, 44(sp)
  SW t0, 44(sp)
  LA s4, c
  ADDI t0, zero, 32
  SW t0, 72(sp)
  LW t0, 44(sp)
  SH2ADD t0, t0, s6
  SD t0, 264(sp)
  LA s8, chas
  LD t0, 264(sp)
  LW t1, 72(sp)
  SW t1, 0(t0)
  LW t0, 40(sp)
  SW t0, 40(sp)
  LW s6, 0(s4)
  LW t0, 40(sp)
  SH2ADD s8, t0, s8
  LA t0, c
  SD t0, 328(sp)
  LW t0, 40(sp)
  ADDIW t0, t0, -1
  SW t0, 40(sp)
  LW t0, 44(sp)
  ADDIW t0, t0, 2
  SW t0, 44(sp)
  LD t0, 264(sp)
  SW s6, 4(t0)
  LW s6, 0(s8)
  XORI s8, s6, 40
  LD t0, 328(sp)
  SW s6, 0(t0)
  BNE s8, zero, bb168
  # implict jump to bb167
bb167:   # loop depth 1
  LA s6, chat
  LA s8, ii
  LW t0, 40(sp)
  SW t0, 0(s6)
  LW t0, 44(sp)
  SW t0, 0(s8)
  JAL zero, bb64
bb168:   # loop depth 2
  LW t0, 44(sp)
  SW t0, 44(sp)
  LW t0, 40(sp)
  SW t0, 40(sp)
  JAL zero, bb166
bb169:   # loop depth 1
  LA s4, chat
  LA s6, chas
  LA s5, chat
  ADDI s8, zero, 94
  LW s4, 0(s4)
  ADDIW t0, s4, 1
  SW t0, 48(sp)
  SH2ADD s4, s4, s6
  LW t0, 48(sp)
  SW t0, 0(s5)
  SW s8, 4(s4)
  JAL zero, bb63
bb170:   # loop depth 1
  LA s4, chat
  LA s6, chas
  LA s5, chat
  ADDI s8, zero, 40
  LW s4, 0(s4)
  ADDIW t0, s4, 1
  SW t0, 56(sp)
  SH2ADD s4, s4, s6
  LW t0, 56(sp)
  SW t0, 0(s5)
  SW s8, 4(s4)
  JAL zero, bb62
bb171:   # loop depth 1
  LA s4, ii
  LA s8, get2
  LA t0, ii
  SD t0, 344(sp)
  LB t0, 3(sp)
  SB t0, 3(sp)
  LW t0, 0(s4)
  SW t0, 76(sp)
  LB t0, 4(sp)
  SB t0, 4(sp)
  LB t0, 33(sp)
  SB t0, 33(sp)
  LB t0, 34(sp)
  SB t0, 34(sp)
  LB t0, 22(sp)
  SB t0, 22(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LW t0, 76(sp)
  SH2ADD t0, t0, s8
  LW t1, 76(sp)
  ADDIW t1, t1, 1
  LW t2, 84(sp)
  SW t2, 0(t0)
  LB t0, 8(sp)
  SB t0, 8(sp)
  LB t0, 7(sp)
  SB t0, 7(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 13(sp)
  SB t0, 13(sp)
  LB t0, 5(sp)
  SB t0, 5(sp)
  LB t0, 10(sp)
  SB t0, 10(sp)
  LB t0, 0(sp)
  SB t0, 0(sp)
  LB t0, 6(sp)
  SB t0, 6(sp)
  LB t0, 26(sp)
  SB t0, 11(sp)
  LB t0, 25(sp)
  SB t0, 1(sp)
  LB t0, 24(sp)
  SB t0, 2(sp)
  LB t0, 2(sp)
  SB t0, 2(sp)
  LD t0, 344(sp)
  SW t1, 0(t0)
  JAL zero, bb75
bb172:   # loop depth 0
  ADD t1, zero, zero
  # implict jump to bb173
bb173:   # loop depth 1
  LA t2, get
  ADDIW s0, t1, 1
  SH2ADD t1, t1, t2
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
  ADD t1, s0, zero
  JAL zero, bb173
