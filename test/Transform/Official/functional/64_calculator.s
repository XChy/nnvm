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
  ADDI sp, sp, -448
  SD s7, 224(sp)
  SD s8, 232(sp)
  SD s10, 240(sp)
  SD s11, 248(sp)
  SD ra, 256(sp)
  SD s0, 264(sp)
  SD s1, 272(sp)
  SD s2, 280(sp)
  SD s3, 288(sp)
  SD s4, 296(sp)
  SD s5, 304(sp)
  SD s6, 312(sp)
  LA t0, intt
  SD t0, 352(sp)
  ADDI t0, zero, 0
  LA t1, chat
  SD t1, 400(sp)
  ADDI t1, zero, 0
  LD t2, 352(sp)
  SW t0, 0(t2)
  LA t0, get
  SD t0, 344(sp)
  LD t0, 400(sp)
  SW t1, 0(t0)
  CALL getch
  XORI t2, a0, 10
  XORI t1, a0, 13
  SLTU t2, zero, t2
  SLTU t1, zero, t1
  AND t1, t1, t2
  BNE t1, zero, bb187
  # implict jump to bb1
bb1:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  LA t0, i
  SD t0, 328(sp)
  LA t0, ii
  SD t0, 320(sp)
  LA t0, get2
  SD t0, 376(sp)
  LA t0, chas
  SD t0, 384(sp)
  LD t0, 328(sp)
  LW t0, 0(t0)
  SW t0, 164(sp)
  SW s0, 196(sp)
  LW t1, 196(sp)
  LW t0, 164(sp)
  BLT t0, t1, bb59
  # implict jump to bb3
bb3:   # loop depth 1
  LD t0, 400(sp)
  LW t0, 0(t0)
  BLT zero, t0, bb58
  # implict jump to bb4
bb4:   # loop depth 0
  LD t0, 320(sp)
  LW t0, 0(t0)
  ADDI t1, zero, 64
  ADDI t2, zero, 1
  LA a7, ints
  LD a0, 376(sp)
  SH2ADD t0, t0, a0
  SW t1, 0(t0)
  LD t0, 328(sp)
  SW t2, 0(t0)
  LD t0, 376(sp)
  LW t0, 4(t0)
  XORI t0, t0, 64
  BNE t0, zero, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  LW a0, 4(a7)
  CALL putint
  ADD a0, zero, zero
  LD s7, 224(sp)
  LD s8, 232(sp)
  LD s10, 240(sp)
  LD s11, 248(sp)
  LD ra, 256(sp)
  LD s0, 264(sp)
  LD s1, 272(sp)
  LD s2, 280(sp)
  LD s3, 288(sp)
  LD s4, 296(sp)
  LD s5, 304(sp)
  LD s6, 312(sp)
  ADDI sp, sp, 448
  JALR zero, 0(ra)
bb6:   # loop depth 0
  ADD a2, zero, zero
  ADD a4, zero, zero
  ADD a3, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  LD t0, 328(sp)
  LW a0, 0(t0)
  LD t0, 376(sp)
  SH2ADD t1, a0, t0
  LW t1, 0(t1)
  XORI t1, t1, 43
  BEQ t1, zero, bb57
  # implict jump to bb8
bb8:   # loop depth 1
  LD t0, 328(sp)
  LW t1, 0(t0)
  LD t0, 376(sp)
  SH2ADD t1, t1, t0
  LW t1, 0(t1)
  XORI t1, t1, 45
  SLTIU t1, t1, 1
  # implict jump to bb9
bb9:   # loop depth 1
  BNE t1, zero, bb56
  # implict jump to bb10
bb10:   # loop depth 1
  LD t0, 328(sp)
  LW t1, 0(t0)
  LD t0, 376(sp)
  SH2ADD t1, t1, t0
  LW t1, 0(t1)
  XORI t1, t1, 42
  SLTIU t1, t1, 1
  # implict jump to bb11
bb11:   # loop depth 1
  BNE t1, zero, bb55
  # implict jump to bb12
bb12:   # loop depth 1
  LD t0, 328(sp)
  LW t1, 0(t0)
  LD t0, 376(sp)
  SH2ADD t1, t1, t0
  LW t1, 0(t1)
  XORI t1, t1, 47
  SLTIU t1, t1, 1
  # implict jump to bb13
bb13:   # loop depth 1
  BNE t1, zero, bb54
  # implict jump to bb14
bb14:   # loop depth 1
  LD t0, 328(sp)
  LW t1, 0(t0)
  LD t0, 376(sp)
  SH2ADD t1, t1, t0
  LW t1, 0(t1)
  XORI t1, t1, 37
  SLTIU t1, t1, 1
  # implict jump to bb15
bb15:   # loop depth 1
  BNE t1, zero, bb53
  # implict jump to bb16
bb16:   # loop depth 1
  LD t0, 328(sp)
  LW t1, 0(t0)
  LD t0, 376(sp)
  SH2ADD t1, t1, t0
  LW t1, 0(t1)
  XORI t1, t1, 94
  SLTIU t1, t1, 1
  # implict jump to bb17
bb17:   # loop depth 1
  BNE t1, zero, bb28
  # implict jump to bb18
bb18:   # loop depth 1
  LD t0, 328(sp)
  LW t1, 0(t0)
  LD t0, 376(sp)
  SH2ADD t1, t1, t0
  LW t1, 0(t1)
  XORI t1, t1, 32
  BNE t1, zero, bb22
  # implict jump to bb19
bb19:   # loop depth 1
  # implict jump to bb20
bb20:   # loop depth 1
  LD t0, 328(sp)
  LW a1, 0(t0)
  ADDIW t2, a1, 1
  LD t0, 376(sp)
  SH2ADD a0, t2, t0
  LD t0, 328(sp)
  SW t2, 0(t0)
  LW t2, 0(a0)
  XORI t2, t2, 64
  BNE t2, zero, bb21
  JAL zero, bb5
bb21:   # loop depth 1
  JAL zero, bb7
bb22:   # loop depth 1
  LD t0, 328(sp)
  LW t1, 0(t0)
  ADDI a1, zero, 1
  LD t0, 376(sp)
  SH2ADD t1, t1, t0
  LW t1, 0(t1)
  LD t0, 352(sp)
  LW t2, 0(t0)
  ADDIW t1, t1, -48
  ADDIW a0, t2, 1
  SH2ADD t2, t2, a7
  LD t0, 352(sp)
  SW a0, 0(t0)
  SW t1, 4(t2)
  LD t0, 320(sp)
  SW a1, 0(t0)
  LD t0, 328(sp)
  LW t1, 0(t0)
  ADDIW t1, t1, 1
  LD t0, 376(sp)
  SH2ADD t1, t1, t0
  LW t1, 0(t1)
  XORI t1, t1, 32
  BNE t1, zero, bb24
  # implict jump to bb23
bb23:   # loop depth 1
  LD t0, 328(sp)
  LW t1, 0(t0)
  LD t0, 320(sp)
  LW t2, 0(t0)
  ADDW t1, t1, t2
  ADDIW t1, t1, -1
  LD t0, 328(sp)
  SW t1, 0(t0)
  JAL zero, bb19
bb24:   # loop depth 1
  LD t0, 328(sp)
  LW t2, 0(t0)
  SH2ADD a0, a0, a7
  LW t1, 0(a0)
  # implict jump to bb25
bb25:   # loop depth 2
  LD t0, 320(sp)
  LW a1, 0(t0)
  ADDI a6, zero, 10
  ADDW a1, t2, a1
  LD t0, 376(sp)
  SH2ADD a1, a1, t0
  LW a1, 0(a1)
  LW a5, 0(a0)
  ADDIW a1, a1, -48
  ADDW t1, t1, a1
  MULW a1, a5, a6
  SW a1, 0(a0)
  LD t0, 320(sp)
  LW a1, 0(t0)
  ADDIW a1, a1, 1
  ADDW a5, t2, a1
  LD t0, 320(sp)
  SW a1, 0(t0)
  LD t0, 376(sp)
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
  LD t0, 352(sp)
  LW t1, 0(t0)
  ADDIW t2, t1, -1
  SH2ADD a0, t1, a7
  LD t0, 352(sp)
  SW t2, 0(t0)
  ADDIW a1, t1, -2
  LW a2, 0(a0)
  SH2ADD t2, t2, a7
  LD t0, 352(sp)
  SW a1, 0(t0)
  LW a4, 0(t2)
  LD t0, 328(sp)
  LW a5, 0(t0)
  ADDW a1, a2, a4
  LD t0, 376(sp)
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
  LD t0, 352(sp)
  LW a5, 0(t0)
  ADD a3, a1, zero
  ADDIW t1, a5, 1
  SH2ADD a5, a5, a7
  LD t0, 352(sp)
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
  JAL zero, bb40
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
  LD t0, 400(sp)
  LW t0, 0(t0)
  ADDI a0, zero, 32
  ADDIW t1, t0, -1
  LD t2, 384(sp)
  SH2ADD t0, t0, t2
  LD t2, 400(sp)
  SW t1, 0(t2)
  LW t0, 0(t0)
  LD t1, 320(sp)
  LW t1, 0(t1)
  LD t2, 376(sp)
  SH2ADD t2, t1, t2
  ADDIW t1, t1, 2
  SW a0, 0(t2)
  SW t0, 4(t2)
  LD t0, 320(sp)
  SW t1, 0(t0)
  JAL zero, bb3
bb59:   # loop depth 0
  LA t1, c
  SD t1, 336(sp)
  ADD t1, zero, zero
  SB t1, 93(sp)
  ADD t1, zero, zero
  SB t1, 92(sp)
  ADD t0, zero, zero
  SB t0, 103(sp)
  ADD t0, zero, zero
  SB t0, 17(sp)
  ADD t0, zero, zero
  SB t0, 16(sp)
  ADD t0, zero, zero
  SB t0, 49(sp)
  ADD t0, zero, zero
  SB t0, 51(sp)
  ADD t0, zero, zero
  SB t0, 116(sp)
  ADD t0, zero, zero
  SB t0, 68(sp)
  ADD t0, zero, zero
  SB t0, 109(sp)
  ADD t0, zero, zero
  SB t0, 104(sp)
  ADD t0, zero, zero
  SB t0, 15(sp)
  ADD t0, zero, zero
  SB t0, 14(sp)
  ADD t0, zero, zero
  SB t0, 10(sp)
  ADD t0, zero, zero
  SB t0, 66(sp)
  ADD t0, zero, zero
  SB t0, 110(sp)
  ADD t0, zero, zero
  SB t0, 105(sp)
  ADD t0, zero, zero
  SB t0, 27(sp)
  ADD t0, zero, zero
  SB t0, 55(sp)
  LW t0, 164(sp)
  SW t0, 164(sp)
  # implict jump to bb60
bb60:   # loop depth 1
  LW t0, 164(sp)
  SW t0, 164(sp)
  ADDI t3, zero, 57
  LD t0, 344(sp)
  LW t1, 164(sp)
  SH2ADD a7, t1, t0
  LB t0, 55(sp)
  SB t0, 55(sp)
  LW t0, 0(a7)
  SW t0, 208(sp)
  LB t0, 27(sp)
  SB t0, 27(sp)
  LB t0, 105(sp)
  SB t0, 105(sp)
  LB t0, 110(sp)
  SB t0, 110(sp)
  LB t0, 66(sp)
  SB t0, 66(sp)
  LB s7, 10(sp)
  LW t0, 208(sp)
  SLT a7, t3, t0
  LW t0, 208(sp)
  SLTI a0, t0, 48
  XORI a7, a7, 1
  XORI a0, a0, 1
  AND s0, a0, a7
  LB t0, 14(sp)
  SB t0, 14(sp)
  LB t0, 15(sp)
  SB t0, 15(sp)
  LB t0, 104(sp)
  SB t0, 104(sp)
  LB t0, 104(sp)
  SB t0, 74(sp)
  LB t0, 109(sp)
  SB t0, 9(sp)
  LB t0, 68(sp)
  SB t0, 68(sp)
  LB t0, 116(sp)
  SB t0, 116(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 49(sp)
  SB t0, 49(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB t0, 103(sp)
  SB t0, 103(sp)
  LB t0, 103(sp)
  SB t0, 77(sp)
  LB t0, 92(sp)
  SB t0, 102(sp)
  LB t0, 93(sp)
  SB t0, 56(sp)
  BNE s0, zero, bb186
  # implict jump to bb61
bb61:   # loop depth 1
  LW t0, 208(sp)
  XORI s0, t0, 40
  BEQ s0, zero, bb185
  # implict jump to bb62
bb62:   # loop depth 1
  LW t0, 208(sp)
  XORI s0, t0, 94
  BEQ s0, zero, bb184
  # implict jump to bb63
bb63:   # loop depth 1
  LW t0, 208(sp)
  XORI s0, t0, 41
  BEQ s0, zero, bb179
  # implict jump to bb64
bb64:   # loop depth 1
  LW t0, 208(sp)
  XORI s0, t0, 43
  BEQ s0, zero, bb155
  # implict jump to bb65
bb65:   # loop depth 1
  LB t0, 55(sp)
  SB t0, 98(sp)
  LB t0, 27(sp)
  SB t0, 97(sp)
  LB t0, 105(sp)
  SB t0, 96(sp)
  LB t0, 110(sp)
  SB t0, 95(sp)
  LB t0, 66(sp)
  SB t0, 66(sp)
  SB s7, 13(sp)
  LB t0, 14(sp)
  SB t0, 14(sp)
  LB t0, 15(sp)
  SB t0, 15(sp)
  LB s10, 74(sp)
  LB t0, 9(sp)
  SB t0, 108(sp)
  LB t0, 68(sp)
  SB t0, 68(sp)
  LB t0, 116(sp)
  SB t0, 116(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB s5, 49(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB t0, 77(sp)
  SB t0, 57(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  # implict jump to bb66
bb66:   # loop depth 1
  LW t0, 208(sp)
  XORI s3, t0, 45
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 116(sp)
  SB t0, 116(sp)
  LB t0, 116(sp)
  SB t0, 25(sp)
  LB t0, 68(sp)
  SB t0, 68(sp)
  LB t0, 68(sp)
  SB t0, 24(sp)
  LB t0, 108(sp)
  SB t0, 108(sp)
  LB t0, 15(sp)
  SB t0, 15(sp)
  LB t0, 14(sp)
  SB t0, 14(sp)
  LB t0, 13(sp)
  SB t0, 13(sp)
  LB t0, 66(sp)
  SB t0, 71(sp)
  LB a5, 95(sp)
  LB t5, 96(sp)
  LB t0, 97(sp)
  SB t0, 70(sp)
  LB t0, 70(sp)
  SB t0, 70(sp)
  LB t0, 98(sp)
  SB t0, 59(sp)
  LB t0, 59(sp)
  SB t0, 59(sp)
  BEQ s3, zero, bb131
  # implict jump to bb67
bb67:   # loop depth 1
  LB t0, 59(sp)
  SB t0, 59(sp)
  LB t0, 59(sp)
  SB t0, 79(sp)
  LB t0, 70(sp)
  SB t0, 70(sp)
  LB t0, 70(sp)
  SB t0, 81(sp)
  SB t5, 82(sp)
  SB a5, 91(sp)
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB t0, 13(sp)
  SB t0, 13(sp)
  LB t0, 14(sp)
  SB t0, 111(sp)
  LB t0, 15(sp)
  SB t0, 67(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  LB t0, 108(sp)
  SB t0, 53(sp)
  LB t0, 53(sp)
  SB t0, 53(sp)
  LB t0, 24(sp)
  SB t0, 24(sp)
  LB t0, 25(sp)
  SB t0, 25(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB s11, 16(sp)
  LB a0, 17(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  # implict jump to bb68
bb68:   # loop depth 1
  LW a1, 208(sp)
  XORI t0, a1, 42
  SW t0, 180(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 25(sp)
  SB t0, 25(sp)
  LB t0, 24(sp)
  SB t0, 24(sp)
  LB t0, 53(sp)
  SB t0, 53(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  LB s8, 111(sp)
  LB t0, 13(sp)
  SB t0, 13(sp)
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB t0, 91(sp)
  SB t0, 60(sp)
  LB t0, 60(sp)
  SB t0, 60(sp)
  LB t0, 82(sp)
  SB t0, 61(sp)
  LB t0, 61(sp)
  SB t0, 61(sp)
  LB t0, 81(sp)
  SB t0, 38(sp)
  LB t0, 38(sp)
  SB t0, 38(sp)
  LB t0, 79(sp)
  SB t0, 28(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LW t0, 180(sp)
  BEQ t0, zero, bb113
  # implict jump to bb69
bb69:   # loop depth 1
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 28(sp)
  SB t0, 73(sp)
  LB t0, 38(sp)
  SB t0, 38(sp)
  LB t0, 38(sp)
  SB t0, 75(sp)
  LB t0, 61(sp)
  SB t0, 61(sp)
  LB t0, 61(sp)
  SB t0, 76(sp)
  LB t0, 60(sp)
  SB t0, 60(sp)
  LB t0, 60(sp)
  SB t0, 78(sp)
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB t0, 13(sp)
  SB t0, 13(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  LB t0, 53(sp)
  SB t0, 53(sp)
  LB t0, 24(sp)
  SB t0, 24(sp)
  LB t0, 25(sp)
  SB t0, 25(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 51(sp)
  SB t0, 29(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  # implict jump to bb70
bb70:   # loop depth 1
  LW a6, 208(sp)
  XORI s4, a6, 47
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 29(sp)
  SB t0, 51(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 25(sp)
  SB t0, 25(sp)
  LB t0, 24(sp)
  SB t0, 24(sp)
  LB t0, 53(sp)
  SB t0, 53(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  LB t0, 13(sp)
  SB t0, 13(sp)
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB t0, 78(sp)
  SB t0, 69(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB a6, 76(sp)
  LB a7, 75(sp)
  LB t3, 73(sp)
  BEQ s4, zero, bb95
  # implict jump to bb71
bb71:   # loop depth 1
  SB t3, 113(sp)
  SB a7, 107(sp)
  SB a6, 86(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB t0, 13(sp)
  SB t0, 21(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  SB s10, 23(sp)
  LB t0, 53(sp)
  SB t0, 53(sp)
  LB t0, 53(sp)
  SB t0, 63(sp)
  LB t0, 24(sp)
  SB t0, 24(sp)
  LB t0, 25(sp)
  SB t0, 25(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  # implict jump to bb72
bb72:   # loop depth 1
  LW a1, 208(sp)
  XORI t0, a1, 37
  SW t0, 200(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 56(sp)
  SB t0, 85(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 25(sp)
  SB t0, 25(sp)
  LB t0, 24(sp)
  SB t0, 24(sp)
  LB t0, 63(sp)
  SB t0, 63(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  SB s8, 22(sp)
  LB t0, 21(sp)
  SB t0, 21(sp)
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 86(sp)
  SB t0, 20(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 107(sp)
  SB t0, 19(sp)
  LB t0, 19(sp)
  SB t0, 19(sp)
  LB t0, 113(sp)
  SB t0, 114(sp)
  LB t0, 114(sp)
  SB t0, 114(sp)
  LW t0, 200(sp)
  BEQ t0, zero, bb77
  # implict jump to bb73
bb73:   # loop depth 1
  LB t0, 114(sp)
  SB t0, 114(sp)
  LB t0, 19(sp)
  SB t0, 112(sp)
  LB s8, 20(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 71(sp)
  SB t0, 66(sp)
  LB t0, 21(sp)
  SB t0, 50(sp)
  LB t0, 50(sp)
  SB t0, 50(sp)
  LB s1, 22(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  LB t4, 23(sp)
  LB t3, 63(sp)
  LB t0, 24(sp)
  SB t0, 68(sp)
  LB t0, 68(sp)
  SB t0, 68(sp)
  LB t0, 25(sp)
  SB t0, 116(sp)
  LB t0, 116(sp)
  SB t0, 116(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  SB s5, 49(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB a3, 85(sp)
  # implict jump to bb74
bb74:   # loop depth 1
  LD t0, 320(sp)
  LW a6, 0(t0)
  ADDI s0, zero, 32
  SB a3, 87(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 102(sp)
  SB t0, 88(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 57(sp)
  SB t0, 89(sp)
  SB a0, 17(sp)
  LD t0, 376(sp)
  SH2ADD a3, a6, t0
  ADDIW t0, a6, 1
  SW t0, 144(sp)
  SW s0, 0(a3)
  SB s11, 16(sp)
  LB t0, 49(sp)
  SB t0, 49(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 116(sp)
  SB t0, 116(sp)
  LB t0, 68(sp)
  SB t0, 68(sp)
  SB t3, 109(sp)
  SB t4, 104(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  LB t0, 67(sp)
  SB t0, 15(sp)
  LB t0, 50(sp)
  SB t0, 50(sp)
  LB t0, 50(sp)
  SB t0, 10(sp)
  LB t0, 66(sp)
  SB t0, 66(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  SB s8, 105(sp)
  LB t0, 112(sp)
  SB t0, 27(sp)
  LB s0, 114(sp)
  SB s0, 94(sp)
  LB t0, 27(sp)
  SB t0, 27(sp)
  LB t0, 105(sp)
  SB t0, 105(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 66(sp)
  SB t0, 66(sp)
  LB t0, 10(sp)
  SB t0, 10(sp)
  LB t0, 15(sp)
  SB t0, 15(sp)
  LB t0, 104(sp)
  SB t0, 104(sp)
  LB t0, 109(sp)
  SB t0, 109(sp)
  LB t0, 68(sp)
  SB t0, 68(sp)
  LB t0, 116(sp)
  SB t0, 116(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 49(sp)
  SB t0, 49(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB t0, 89(sp)
  SB t0, 103(sp)
  LB t0, 103(sp)
  SB t0, 103(sp)
  LB t0, 88(sp)
  SB t0, 102(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 87(sp)
  SB t0, 56(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LD t0, 320(sp)
  LW t1, 144(sp)
  SW t1, 0(t0)
  # implict jump to bb75
bb75:   # loop depth 1
  LD a7, 328(sp)
  LW a7, 0(a7)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 103(sp)
  SB t0, 103(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  ADDIW t0, a7, 1
  SW t0, 164(sp)
  LB t0, 49(sp)
  SB t0, 49(sp)
  LD a7, 328(sp)
  LW t0, 164(sp)
  SW t0, 0(a7)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 116(sp)
  SB t0, 116(sp)
  LB t0, 68(sp)
  SB t0, 68(sp)
  LB t0, 109(sp)
  SB t0, 109(sp)
  LB t0, 104(sp)
  SB t0, 104(sp)
  LB t0, 15(sp)
  SB t0, 15(sp)
  LB t0, 10(sp)
  SB t0, 10(sp)
  LB t0, 66(sp)
  SB t0, 66(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 105(sp)
  SB t0, 105(sp)
  LB t0, 27(sp)
  SB t0, 27(sp)
  LB t0, 94(sp)
  SB t0, 55(sp)
  LB t0, 55(sp)
  SB t0, 55(sp)
  LW a6, 196(sp)
  LW t0, 164(sp)
  BLT t0, a6, bb76
  JAL zero, bb3
bb76:   # loop depth 1
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 56(sp)
  SB t0, 93(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 102(sp)
  SB t0, 92(sp)
  LB t0, 103(sp)
  SB t0, 103(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 49(sp)
  SB t0, 49(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 116(sp)
  SB t0, 116(sp)
  LB t0, 68(sp)
  SB t0, 68(sp)
  LB t0, 109(sp)
  SB t0, 109(sp)
  LB t0, 104(sp)
  SB t0, 104(sp)
  LB t0, 15(sp)
  SB t0, 15(sp)
  SB s1, 14(sp)
  LB t0, 10(sp)
  SB t0, 10(sp)
  LB t0, 66(sp)
  SB t0, 66(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 69(sp)
  SB t0, 110(sp)
  LB t0, 105(sp)
  SB t0, 105(sp)
  LB t0, 27(sp)
  SB t0, 27(sp)
  LB t0, 55(sp)
  SB t0, 55(sp)
  LW t0, 164(sp)
  SW t0, 164(sp)
  JAL zero, bb60
bb77:   # loop depth 1
  LB t0, 114(sp)
  SB t0, 114(sp)
  LB t0, 19(sp)
  SB t0, 19(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB t0, 21(sp)
  SB t0, 21(sp)
  LB t0, 22(sp)
  SB t0, 22(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 63(sp)
  SB t0, 63(sp)
  LB t0, 24(sp)
  SB t0, 24(sp)
  LB t0, 25(sp)
  SB t0, 25(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  # implict jump to bb78
bb78:   # loop depth 2
  LD t0, 400(sp)
  LW t2, 0(t0)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 25(sp)
  SB t0, 25(sp)
  LD t0, 384(sp)
  SH2ADD a1, t2, t0
  LB t0, 24(sp)
  SB t0, 24(sp)
  LW s3, 0(a1)
  LB t0, 63(sp)
  SB t0, 63(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  LB t0, 22(sp)
  SB t0, 22(sp)
  LB t0, 21(sp)
  SB t0, 21(sp)
  XORI s0, s3, 42
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 19(sp)
  SB t0, 19(sp)
  LB t0, 114(sp)
  SB t0, 114(sp)
  BEQ s0, zero, bb94
  # implict jump to bb79
bb79:   # loop depth 2
  XORI s0, s3, 47
  SLTIU a3, s0, 1
  # implict jump to bb80
bb80:   # loop depth 2
  BNE a3, zero, bb93
  # implict jump to bb81
bb81:   # loop depth 2
  XORI s1, s3, 37
  SLTIU t0, s1, 1
  SB t0, 102(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  # implict jump to bb82
bb82:   # loop depth 2
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 102(sp)
  BNE t0, zero, bb92
  # implict jump to bb83
bb83:   # loop depth 2
  XORI s1, s3, 94
  SLTIU s1, s1, 1
  # implict jump to bb84
bb84:   # loop depth 2
  SB s1, 90(sp)
  LB s1, 90(sp)
  BNE s1, zero, bb86
  # implict jump to bb85
bb85:   # loop depth 1
  LD t0, 400(sp)
  LW s1, 0(t0)
  ADDI t0, zero, 37
  SW t0, 184(sp)
  LB t0, 114(sp)
  SB t0, 114(sp)
  LB t0, 19(sp)
  SB t0, 112(sp)
  LB s8, 20(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  ADDIW a7, s1, 1
  LD t0, 384(sp)
  SH2ADD s5, s1, t0
  LD t0, 400(sp)
  SW a7, 0(t0)
  LB t0, 71(sp)
  SB t0, 66(sp)
  LB t0, 21(sp)
  SB t0, 50(sp)
  LB t0, 50(sp)
  SB t0, 50(sp)
  LB s1, 22(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  LB t4, 23(sp)
  LB t3, 63(sp)
  LB t0, 24(sp)
  SB t0, 68(sp)
  LB t0, 25(sp)
  SB t0, 116(sp)
  LB t0, 116(sp)
  SB t0, 116(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 90(sp)
  SB t0, 49(sp)
  LB t0, 49(sp)
  SB t0, 49(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LW t0, 184(sp)
  SW t0, 4(s5)
  JAL zero, bb74
bb86:   # loop depth 2
  LD t0, 400(sp)
  LW s1, 0(t0)
  ADDI s3, zero, 32
  SW s3, 124(sp)
  ADDIW t0, s1, -1
  SW t0, 204(sp)
  LD t0, 384(sp)
  SH2ADD s1, s1, t0
  LD t0, 400(sp)
  LW t1, 204(sp)
  SW t1, 0(t0)
  LW s1, 0(s1)
  LD s3, 336(sp)
  SW s1, 0(s3)
  LD t0, 320(sp)
  LW s4, 0(t0)
  LD t0, 376(sp)
  SH2ADD s5, s4, t0
  ADDIW s4, s4, 2
  LW s3, 124(sp)
  SW s3, 0(s5)
  SW s1, 4(s5)
  LD t0, 320(sp)
  SW s4, 0(t0)
  LW t0, 204(sp)
  BEQ t0, zero, bb91
  # implict jump to bb87
bb87:   # loop depth 2
  ADDI s1, zero, 1
  # implict jump to bb88
bb88:   # loop depth 2
  BEQ s1, zero, bb85
  # implict jump to bb89
bb89:   # loop depth 2
  # implict jump to bb90
bb90:   # loop depth 2
  LB t0, 114(sp)
  SB t0, 114(sp)
  LB t0, 19(sp)
  SB t0, 19(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB t0, 21(sp)
  SB t0, 21(sp)
  LB t0, 22(sp)
  SB t0, 22(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 63(sp)
  SB t0, 63(sp)
  LB t0, 24(sp)
  SB t0, 24(sp)
  LB t0, 25(sp)
  SB t0, 25(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  JAL zero, bb78
bb91:   # loop depth 2
  ADD s1, zero, zero
  JAL zero, bb88
bb92:   # loop depth 2
  ADDI s1, zero, 1
  JAL zero, bb84
bb93:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 102(sp)
  JAL zero, bb82
bb94:   # loop depth 2
  ADDI a3, zero, 1
  JAL zero, bb80
bb95:   # loop depth 1
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB t0, 13(sp)
  SB t0, 21(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  LB t0, 53(sp)
  SB t0, 53(sp)
  LB t0, 24(sp)
  SB t0, 24(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  # implict jump to bb96
bb96:   # loop depth 2
  LD t0, 400(sp)
  LW a2, 0(t0)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LD t0, 384(sp)
  SH2ADD a2, a2, t0
  LB t0, 24(sp)
  SB t0, 24(sp)
  LW s11, 0(a2)
  LB t0, 53(sp)
  SB t0, 53(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  LB t0, 21(sp)
  SB t0, 21(sp)
  XORI a3, s11, 42
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  BEQ a3, zero, bb112
  # implict jump to bb97
bb97:   # loop depth 2
  XORI a3, s11, 47
  SLTIU t0, a3, 1
  SB t0, 25(sp)
  LB t0, 25(sp)
  SB t0, 25(sp)
  # implict jump to bb98
bb98:   # loop depth 2
  LB t0, 25(sp)
  SB t0, 25(sp)
  LB t0, 25(sp)
  BNE t0, zero, bb111
  # implict jump to bb99
bb99:   # loop depth 2
  XORI a4, s11, 37
  SLTIU t0, a4, 1
  SB t0, 51(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  # implict jump to bb100
bb100:   # loop depth 2
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 51(sp)
  BNE t0, zero, bb110
  # implict jump to bb101
bb101:   # loop depth 2
  XORI t4, s11, 94
  SLTIU t4, t4, 1
  # implict jump to bb102
bb102:   # loop depth 2
  SB t4, 72(sp)
  LB t4, 72(sp)
  BNE t4, zero, bb104
  # implict jump to bb103
bb103:   # loop depth 1
  LD t0, 400(sp)
  LW t5, 0(t0)
  ADDI t0, zero, 47
  SW t0, 188(sp)
  SB t3, 113(sp)
  SB a7, 107(sp)
  SB a6, 86(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  ADDIW a5, t5, 1
  LD t0, 384(sp)
  SH2ADD t0, t5, t0
  SD t0, 368(sp)
  LD t0, 400(sp)
  SW a5, 0(t0)
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB t0, 21(sp)
  SB t0, 21(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  SB s10, 23(sp)
  LB t0, 53(sp)
  SB t0, 53(sp)
  LB t0, 53(sp)
  SB t0, 63(sp)
  LB t0, 24(sp)
  SB t0, 24(sp)
  LB t0, 25(sp)
  SB t0, 25(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB s11, 72(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LW t0, 188(sp)
  LD t1, 368(sp)
  SW t0, 4(t1)
  JAL zero, bb72
bb104:   # loop depth 2
  LD t0, 400(sp)
  LW t5, 0(t0)
  ADDI t4, zero, 32
  SW t4, 136(sp)
  ADDIW s0, t5, -1
  LD t0, 384(sp)
  SH2ADD t5, t5, t0
  LD t0, 400(sp)
  SW s0, 0(t0)
  LW t5, 0(t5)
  LD t4, 336(sp)
  SW t5, 0(t4)
  LD t0, 320(sp)
  LW s1, 0(t0)
  LD t0, 376(sp)
  SH2ADD s2, s1, t0
  ADDIW s1, s1, 2
  LW t4, 136(sp)
  SW t4, 0(s2)
  SW t5, 4(s2)
  LD t0, 320(sp)
  SW s1, 0(t0)
  BEQ s0, zero, bb109
  # implict jump to bb105
bb105:   # loop depth 2
  ADDI s0, zero, 1
  # implict jump to bb106
bb106:   # loop depth 2
  BEQ s0, zero, bb103
  # implict jump to bb107
bb107:   # loop depth 2
  # implict jump to bb108
bb108:   # loop depth 2
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB t0, 21(sp)
  SB t0, 21(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  LB t0, 53(sp)
  SB t0, 53(sp)
  LB t0, 24(sp)
  SB t0, 24(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  JAL zero, bb96
bb109:   # loop depth 2
  ADD s0, zero, zero
  JAL zero, bb106
bb110:   # loop depth 2
  ADDI t4, zero, 1
  JAL zero, bb102
bb111:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 51(sp)
  JAL zero, bb100
bb112:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 25(sp)
  JAL zero, bb98
bb113:   # loop depth 1
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 38(sp)
  SB t0, 38(sp)
  LB t0, 61(sp)
  SB t0, 61(sp)
  LB t0, 60(sp)
  SB t0, 60(sp)
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB t0, 53(sp)
  SB t0, 53(sp)
  LB t0, 25(sp)
  SB t0, 25(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 51(sp)
  SB t0, 29(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  # implict jump to bb114
bb114:   # loop depth 2
  LD t0, 400(sp)
  LW a2, 0(t0)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LD t0, 384(sp)
  SH2ADD a3, a2, t0
  LW t0, 0(a3)
  SW t0, 128(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 25(sp)
  SB t0, 25(sp)
  LB t0, 53(sp)
  SB t0, 53(sp)
  LW t0, 128(sp)
  XORI s2, t0, 42
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB t0, 60(sp)
  SB t0, 60(sp)
  LB t0, 61(sp)
  SB t0, 61(sp)
  LB t0, 38(sp)
  SB t0, 38(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  BEQ s2, zero, bb130
  # implict jump to bb115
bb115:   # loop depth 2
  LW t0, 128(sp)
  XORI s2, t0, 47
  SLTIU t0, s2, 1
  SB t0, 13(sp)
  LB t0, 13(sp)
  SB t0, 13(sp)
  # implict jump to bb116
bb116:   # loop depth 2
  LB t0, 13(sp)
  SB t0, 13(sp)
  LB t0, 13(sp)
  BNE t0, zero, bb129
  # implict jump to bb117
bb117:   # loop depth 2
  LW t0, 128(sp)
  XORI s3, t0, 37
  SLTIU t0, s3, 1
  SB t0, 67(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  # implict jump to bb118
bb118:   # loop depth 2
  LB t0, 67(sp)
  SB t0, 67(sp)
  LB t0, 67(sp)
  BNE t0, zero, bb128
  # implict jump to bb119
bb119:   # loop depth 2
  LW t0, 128(sp)
  XORI s4, t0, 94
  SLTIU s4, s4, 1
  # implict jump to bb120
bb120:   # loop depth 2
  SB s4, 84(sp)
  LB s4, 84(sp)
  BNE s4, zero, bb122
  # implict jump to bb121
bb121:   # loop depth 1
  LD t0, 400(sp)
  LW s6, 0(t0)
  ADDI t0, zero, 42
  SW t0, 192(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 28(sp)
  SB t0, 73(sp)
  LB t0, 38(sp)
  SB t0, 38(sp)
  LB t0, 38(sp)
  SB t0, 75(sp)
  LB t0, 61(sp)
  SB t0, 61(sp)
  LB t0, 61(sp)
  SB t0, 76(sp)
  LB t0, 60(sp)
  SB t0, 60(sp)
  LB t0, 60(sp)
  SB t0, 78(sp)
  ADDIW t4, s6, 1
  LD t0, 384(sp)
  SH2ADD t0, s6, t0
  SD t0, 432(sp)
  LD t0, 400(sp)
  SW t4, 0(t0)
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB t0, 13(sp)
  SB t0, 13(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  LB t0, 53(sp)
  SB t0, 53(sp)
  LB a5, 84(sp)
  SB a5, 24(sp)
  LB t0, 25(sp)
  SB t0, 25(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LW t0, 192(sp)
  LD t1, 432(sp)
  SW t0, 4(t1)
  JAL zero, bb70
bb122:   # loop depth 2
  LD t0, 400(sp)
  LW s6, 0(t0)
  ADDI s4, zero, 32
  SW s4, 152(sp)
  ADDIW t0, s6, -1
  SW t0, 212(sp)
  LD t0, 384(sp)
  SH2ADD s6, s6, t0
  LD t0, 400(sp)
  LW t1, 212(sp)
  SW t1, 0(t0)
  LW t0, 0(s6)
  SW t0, 132(sp)
  LD s4, 336(sp)
  LW t0, 132(sp)
  SW t0, 0(s4)
  LD t0, 320(sp)
  LW s6, 0(t0)
  LD t0, 376(sp)
  SH2ADD s7, s6, t0
  ADDIW s6, s6, 2
  LW s4, 152(sp)
  SW s4, 0(s7)
  LW t0, 132(sp)
  SW t0, 4(s7)
  LD t0, 320(sp)
  SW s6, 0(t0)
  LW t0, 212(sp)
  BEQ t0, zero, bb127
  # implict jump to bb123
bb123:   # loop depth 2
  ADDI s7, zero, 1
  # implict jump to bb124
bb124:   # loop depth 2
  BEQ s7, zero, bb121
  # implict jump to bb125
bb125:   # loop depth 2
  # implict jump to bb126
bb126:   # loop depth 2
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 38(sp)
  SB t0, 38(sp)
  LB t0, 61(sp)
  SB t0, 61(sp)
  LB t0, 60(sp)
  SB t0, 60(sp)
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB t0, 53(sp)
  SB t0, 53(sp)
  LB t0, 25(sp)
  SB t0, 25(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  JAL zero, bb114
bb127:   # loop depth 2
  ADD s7, zero, zero
  JAL zero, bb124
bb128:   # loop depth 2
  ADDI s4, zero, 1
  JAL zero, bb120
bb129:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 67(sp)
  JAL zero, bb118
bb130:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 13(sp)
  JAL zero, bb116
bb131:   # loop depth 1
  LB t0, 59(sp)
  SB t0, 59(sp)
  LB t0, 70(sp)
  SB t0, 70(sp)
  LB t0, 13(sp)
  SB t0, 13(sp)
  LB t0, 15(sp)
  SB t0, 67(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  LB t0, 24(sp)
  SB t0, 24(sp)
  LB t0, 25(sp)
  SB t0, 25(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB s11, 16(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  # implict jump to bb132
bb132:   # loop depth 2
  LD t0, 400(sp)
  LW a4, 0(t0)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LD t0, 384(sp)
  SH2ADD a4, a4, t0
  LB t0, 51(sp)
  SB t0, 51(sp)
  LW s4, 0(a4)
  LB t0, 25(sp)
  SB t0, 25(sp)
  LB t0, 24(sp)
  SB t0, 24(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  LB t0, 13(sp)
  SB t0, 13(sp)
  XORI s0, s4, 43
  LB t0, 70(sp)
  SB t0, 70(sp)
  LB t0, 59(sp)
  SB t0, 59(sp)
  BEQ s0, zero, bb154
  # implict jump to bb133
bb133:   # loop depth 2
  XORI s0, s4, 45
  SLTIU t3, s0, 1
  # implict jump to bb134
bb134:   # loop depth 2
  BNE t3, zero, bb153
  # implict jump to bb135
bb135:   # loop depth 2
  XORI s1, s4, 42
  SLTIU t0, s1, 1
  SB t0, 71(sp)
  LB t0, 71(sp)
  SB t0, 71(sp)
  # implict jump to bb136
bb136:   # loop depth 2
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB t0, 71(sp)
  BNE t0, zero, bb152
  # implict jump to bb137
bb137:   # loop depth 2
  XORI s2, s4, 47
  SLTIU t0, s2, 1
  SB t0, 111(sp)
  LB t0, 111(sp)
  SB t0, 111(sp)
  # implict jump to bb138
bb138:   # loop depth 2
  LB t0, 111(sp)
  SB t0, 111(sp)
  LB t0, 111(sp)
  BNE t0, zero, bb151
  # implict jump to bb139
bb139:   # loop depth 2
  XORI s3, s4, 37
  SLTIU t0, s3, 1
  SB t0, 53(sp)
  LB t0, 53(sp)
  SB t0, 53(sp)
  # implict jump to bb140
bb140:   # loop depth 2
  LB t0, 53(sp)
  SB t0, 53(sp)
  LB t0, 53(sp)
  BNE t0, zero, bb150
  # implict jump to bb141
bb141:   # loop depth 2
  XORI s4, s4, 94
  SLTIU s4, s4, 1
  # implict jump to bb142
bb142:   # loop depth 2
  SB s4, 83(sp)
  LB s4, 83(sp)
  BNE s4, zero, bb144
  # implict jump to bb143
bb143:   # loop depth 1
  LD t0, 400(sp)
  LW s6, 0(t0)
  ADDI t0, zero, 45
  SW t0, 120(sp)
  LB t0, 59(sp)
  SB t0, 59(sp)
  LB t0, 59(sp)
  SB t0, 79(sp)
  LB t0, 70(sp)
  SB t0, 70(sp)
  LB t0, 70(sp)
  SB t0, 81(sp)
  SB t5, 82(sp)
  SB t3, 91(sp)
  ADDIW t5, s6, 1
  LD t0, 384(sp)
  SH2ADD t3, s6, t0
  LD t0, 400(sp)
  SW t5, 0(t0)
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB t0, 13(sp)
  SB t0, 13(sp)
  LB t0, 111(sp)
  SB t0, 111(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  LB t0, 53(sp)
  SB t0, 53(sp)
  LB t0, 24(sp)
  SB t0, 24(sp)
  LB t0, 25(sp)
  SB t0, 25(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB a0, 83(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LW t0, 120(sp)
  SW t0, 4(t3)
  JAL zero, bb68
bb144:   # loop depth 2
  LD t0, 400(sp)
  LW s6, 0(t0)
  ADDI s4, zero, 32
  SW s4, 156(sp)
  ADDIW t0, s6, -1
  SW t0, 220(sp)
  LD t0, 384(sp)
  SH2ADD s6, s6, t0
  LD t0, 400(sp)
  LW t1, 220(sp)
  SW t1, 0(t0)
  LW t0, 0(s6)
  SW t0, 216(sp)
  LD s4, 336(sp)
  LW t0, 216(sp)
  SW t0, 0(s4)
  LD t0, 320(sp)
  LW s6, 0(t0)
  LD t0, 376(sp)
  SH2ADD s8, s6, t0
  ADDIW s6, s6, 2
  LW s4, 156(sp)
  SW s4, 0(s8)
  LW t0, 216(sp)
  SW t0, 4(s8)
  LD t0, 320(sp)
  SW s6, 0(t0)
  LW t0, 220(sp)
  BEQ t0, zero, bb149
  # implict jump to bb145
bb145:   # loop depth 2
  ADDI s8, zero, 1
  # implict jump to bb146
bb146:   # loop depth 2
  BEQ s8, zero, bb143
  # implict jump to bb147
bb147:   # loop depth 2
  # implict jump to bb148
bb148:   # loop depth 2
  LB t0, 59(sp)
  SB t0, 59(sp)
  LB t0, 70(sp)
  SB t0, 70(sp)
  LB t0, 13(sp)
  SB t0, 13(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  LB t0, 24(sp)
  SB t0, 24(sp)
  LB t0, 25(sp)
  SB t0, 25(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  JAL zero, bb132
bb149:   # loop depth 2
  ADD s8, zero, zero
  JAL zero, bb146
bb150:   # loop depth 2
  ADDI s4, zero, 1
  JAL zero, bb142
bb151:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 53(sp)
  JAL zero, bb140
bb152:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 111(sp)
  JAL zero, bb138
bb153:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 71(sp)
  JAL zero, bb136
bb154:   # loop depth 2
  ADDI t3, zero, 1
  JAL zero, bb134
bb155:   # loop depth 1
  LB t0, 110(sp)
  SB t0, 110(sp)
  LB t0, 66(sp)
  SB t0, 66(sp)
  LB t0, 14(sp)
  SB t0, 14(sp)
  LB t0, 15(sp)
  SB t0, 15(sp)
  LB t0, 9(sp)
  SB t0, 9(sp)
  LB a3, 68(sp)
  LB t0, 116(sp)
  SB t0, 116(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB s5, 49(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  # implict jump to bb156
bb156:   # loop depth 2
  LD t0, 400(sp)
  LW a5, 0(t0)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LD t0, 384(sp)
  SH2ADD a5, a5, t0
  LB t0, 51(sp)
  SB t0, 51(sp)
  LW s1, 0(a5)
  LB t0, 116(sp)
  SB t0, 116(sp)
  LB t0, 9(sp)
  SB t0, 108(sp)
  LB t0, 15(sp)
  SB t0, 15(sp)
  LB t0, 14(sp)
  SB t0, 14(sp)
  XORI t3, s1, 43
  SB s7, 13(sp)
  LB t0, 66(sp)
  SB t0, 66(sp)
  LB a7, 110(sp)
  BEQ t3, zero, bb178
  # implict jump to bb157
bb157:   # loop depth 2
  XORI t3, s1, 45
  SLTIU t3, t3, 1
  # implict jump to bb158
bb158:   # loop depth 2
  BNE t3, zero, bb177
  # implict jump to bb159
bb159:   # loop depth 2
  XORI t4, s1, 42
  SLTIU t4, t4, 1
  # implict jump to bb160
bb160:   # loop depth 2
  BNE t4, zero, bb176
  # implict jump to bb161
bb161:   # loop depth 2
  XORI t5, s1, 47
  SLTIU s10, t5, 1
  # implict jump to bb162
bb162:   # loop depth 2
  BNE s10, zero, bb175
  # implict jump to bb163
bb163:   # loop depth 2
  XORI s0, s1, 37
  SLTIU t0, s0, 1
  SB t0, 57(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  # implict jump to bb164
bb164:   # loop depth 2
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 57(sp)
  BNE t0, zero, bb174
  # implict jump to bb165
bb165:   # loop depth 2
  XORI s1, s1, 94
  SLTIU s1, s1, 1
  # implict jump to bb166
bb166:   # loop depth 2
  SB s1, 80(sp)
  LB s1, 80(sp)
  BNE s1, zero, bb168
  # implict jump to bb167
bb167:   # loop depth 1
  LD t0, 400(sp)
  LW s2, 0(t0)
  ADDI s1, zero, 43
  SW s1, 160(sp)
  SB t3, 98(sp)
  SB t4, 97(sp)
  LB t3, 80(sp)
  SB t3, 96(sp)
  SB a7, 95(sp)
  ADDIW a7, s2, 1
  LD t0, 384(sp)
  SH2ADD t3, s2, t0
  LD t0, 400(sp)
  SW a7, 0(t0)
  LB t0, 66(sp)
  SB t0, 66(sp)
  LB t0, 13(sp)
  SB t0, 13(sp)
  LB t0, 14(sp)
  SB t0, 14(sp)
  LB t0, 15(sp)
  SB t0, 15(sp)
  LB t0, 108(sp)
  SB t0, 108(sp)
  SB a3, 68(sp)
  LB t0, 116(sp)
  SB t0, 116(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LW t0, 160(sp)
  SW t0, 4(t3)
  JAL zero, bb66
bb168:   # loop depth 2
  LD t0, 400(sp)
  LW s2, 0(t0)
  ADDI s1, zero, 32
  SW s1, 140(sp)
  ADDIW s4, s2, -1
  LD t0, 384(sp)
  SH2ADD s2, s2, t0
  LD t0, 400(sp)
  SW s4, 0(t0)
  LW s2, 0(s2)
  LD s1, 336(sp)
  SW s2, 0(s1)
  LD t0, 320(sp)
  LW s6, 0(t0)
  LD t0, 376(sp)
  SH2ADD s7, s6, t0
  ADDIW s6, s6, 2
  LW s1, 140(sp)
  SW s1, 0(s7)
  SW s2, 4(s7)
  LD t0, 320(sp)
  SW s6, 0(t0)
  BEQ s4, zero, bb173
  # implict jump to bb169
bb169:   # loop depth 2
  ADDI s8, zero, 1
  # implict jump to bb170
bb170:   # loop depth 2
  BEQ s8, zero, bb167
  # implict jump to bb171
bb171:   # loop depth 2
  # implict jump to bb172
bb172:   # loop depth 2
  SB a7, 110(sp)
  LB t0, 66(sp)
  SB t0, 66(sp)
  LB s7, 13(sp)
  LB t0, 14(sp)
  SB t0, 14(sp)
  LB t0, 15(sp)
  SB t0, 15(sp)
  LB t0, 108(sp)
  SB t0, 9(sp)
  LB t0, 116(sp)
  SB t0, 116(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  JAL zero, bb156
bb173:   # loop depth 2
  ADD s8, zero, zero
  JAL zero, bb170
bb174:   # loop depth 2
  ADDI s1, zero, 1
  JAL zero, bb166
bb175:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 57(sp)
  JAL zero, bb164
bb176:   # loop depth 2
  ADDI s10, zero, 1
  JAL zero, bb162
bb177:   # loop depth 2
  ADDI t4, zero, 1
  JAL zero, bb160
bb178:   # loop depth 2
  ADDI t3, zero, 1
  JAL zero, bb158
bb179:   # loop depth 1
  LD t0, 400(sp)
  LW s1, 0(t0)
  ADDIW s3, s1, -1
  LD t0, 384(sp)
  SH2ADD s1, s1, t0
  LD t0, 400(sp)
  SW s3, 0(t0)
  LW s1, 0(s1)
  XORI s2, s1, 40
  LD t0, 336(sp)
  SW s1, 0(t0)
  BNE s2, zero, bb180
  JAL zero, bb64
bb180:   # loop depth 1
  LD t0, 320(sp)
  LW s2, 0(t0)
  # implict jump to bb181
bb181:   # loop depth 2
  ADDI s1, zero, 32
  LD t0, 376(sp)
  SH2ADD t0, s2, t0
  SD t0, 416(sp)
  LD t0, 416(sp)
  SW s1, 0(t0)
  LD t0, 384(sp)
  SH2ADD s5, s3, t0
  LD t0, 336(sp)
  LW s4, 0(t0)
  ADDIW s3, s3, -1
  ADDIW s2, s2, 2
  LD t0, 416(sp)
  SW s4, 4(t0)
  LW s4, 0(s5)
  XORI s5, s4, 40
  LD t0, 336(sp)
  SW s4, 0(t0)
  BNE s5, zero, bb183
  # implict jump to bb182
bb182:   # loop depth 1
  LD t0, 400(sp)
  SW s3, 0(t0)
  LD t0, 320(sp)
  SW s2, 0(t0)
  JAL zero, bb64
bb183:   # loop depth 2
  JAL zero, bb181
bb184:   # loop depth 1
  LD t0, 400(sp)
  LW s0, 0(t0)
  ADDI s2, zero, 94
  ADDIW s1, s0, 1
  LD t0, 384(sp)
  SH2ADD s0, s0, t0
  LD t0, 400(sp)
  SW s1, 0(t0)
  SW s2, 4(s0)
  JAL zero, bb63
bb185:   # loop depth 1
  LD t0, 400(sp)
  LW s0, 0(t0)
  ADDI s2, zero, 40
  ADDIW s1, s0, 1
  LD t0, 384(sp)
  SH2ADD s0, s0, t0
  LD t0, 400(sp)
  SW s1, 0(t0)
  SW s2, 4(s0)
  JAL zero, bb62
bb186:   # loop depth 1
  LD t0, 320(sp)
  LW s0, 0(t0)
  LB t0, 55(sp)
  SB t0, 94(sp)
  LB t0, 27(sp)
  SB t0, 27(sp)
  LB t0, 105(sp)
  SB t0, 105(sp)
  LB t0, 110(sp)
  SB t0, 69(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 66(sp)
  SB t0, 66(sp)
  LD t0, 376(sp)
  SH2ADD t0, s0, t0
  ADDIW t1, s0, 1
  SW t1, 172(sp)
  LW t1, 208(sp)
  SW t1, 0(t0)
  SB s7, 10(sp)
  LB s1, 14(sp)
  LB t0, 15(sp)
  SB t0, 15(sp)
  LB t0, 74(sp)
  SB t0, 104(sp)
  LB t0, 104(sp)
  SB t0, 104(sp)
  LB t0, 9(sp)
  SB t0, 109(sp)
  LB t0, 68(sp)
  SB t0, 68(sp)
  LB t0, 116(sp)
  SB t0, 116(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 49(sp)
  SB t0, 49(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB t0, 77(sp)
  SB t0, 103(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LD t0, 320(sp)
  LW t1, 172(sp)
  SW t1, 0(t0)
  JAL zero, bb75
bb187:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb188
bb188:   # loop depth 1
  LD t0, 344(sp)
  SH2ADD t1, s0, t0
  ADDIW s0, s0, 1
  SW a0, 0(t1)
  CALL getch
  XORI t2, a0, 10
  XORI t1, a0, 13
  SLTU t2, zero, t2
  SLTU t1, zero, t1
  AND t1, t1, t2
  BNE t1, zero, bb190
  # implict jump to bb189
bb189:   # loop depth 0
  JAL zero, bb2
bb190:   # loop depth 1
  JAL zero, bb188
