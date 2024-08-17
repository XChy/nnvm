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
  ADDI sp, sp, -464
  SD s2, 224(sp)
  SD ra, 232(sp)
  SD s0, 240(sp)
  SD s1, 248(sp)
  SD s3, 256(sp)
  SD s4, 264(sp)
  SD s5, 272(sp)
  SD s6, 280(sp)
  SD s7, 288(sp)
  SD s8, 296(sp)
  SD s9, 304(sp)
  SD s10, 312(sp)
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
  BNE t1, zero, bb190
  # implict jump to bb1
bb1:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  LA t0, i
  SD t0, 336(sp)
  LA t0, ii
  SD t0, 376(sp)
  LA t0, get2
  SD t0, 320(sp)
  LA t0, chas
  SD t0, 392(sp)
  LD t0, 336(sp)
  LW t1, 0(t0)
  SW s0, 216(sp)
  LW t0, 216(sp)
  BLT t1, t0, bb62
  # implict jump to bb3
bb3:   # loop depth 0
  LD t0, 400(sp)
  LW t0, 0(t0)
  BLT zero, t0, bb58
  # implict jump to bb4
bb4:   # loop depth 0
  LD t0, 376(sp)
  LW t0, 0(t0)
  ADDI t1, zero, 64
  ADDI t2, zero, 1
  LA a7, ints
  LD a0, 320(sp)
  SH2ADD t0, t0, a0
  SW t1, 0(t0)
  LD t0, 336(sp)
  SW t2, 0(t0)
  LD t0, 320(sp)
  LW t0, 4(t0)
  XORI t0, t0, 64
  BNE t0, zero, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  LW a0, 4(a7)
  CALL putint
  ADD a0, zero, zero
  LD s2, 224(sp)
  LD ra, 232(sp)
  LD s0, 240(sp)
  LD s1, 248(sp)
  LD s3, 256(sp)
  LD s4, 264(sp)
  LD s5, 272(sp)
  LD s6, 280(sp)
  LD s7, 288(sp)
  LD s8, 296(sp)
  LD s9, 304(sp)
  LD s10, 312(sp)
  ADDI sp, sp, 464
  JALR zero, 0(ra)
bb6:   # loop depth 0
  ADD a2, zero, zero
  ADD a4, zero, zero
  ADD a3, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  LD t0, 336(sp)
  LW a0, 0(t0)
  LD t0, 320(sp)
  SH2ADD t1, a0, t0
  LW t1, 0(t1)
  XORI t1, t1, 43
  BEQ t1, zero, bb57
  # implict jump to bb8
bb8:   # loop depth 1
  LD t0, 336(sp)
  LW t1, 0(t0)
  LD t0, 320(sp)
  SH2ADD t1, t1, t0
  LW t1, 0(t1)
  XORI t1, t1, 45
  SLTIU t1, t1, 1
  # implict jump to bb9
bb9:   # loop depth 1
  BNE t1, zero, bb56
  # implict jump to bb10
bb10:   # loop depth 1
  LD t0, 336(sp)
  LW t1, 0(t0)
  LD t0, 320(sp)
  SH2ADD t1, t1, t0
  LW t1, 0(t1)
  XORI t1, t1, 42
  SLTIU t1, t1, 1
  # implict jump to bb11
bb11:   # loop depth 1
  BNE t1, zero, bb55
  # implict jump to bb12
bb12:   # loop depth 1
  LD t0, 336(sp)
  LW t1, 0(t0)
  LD t0, 320(sp)
  SH2ADD t1, t1, t0
  LW t1, 0(t1)
  XORI t1, t1, 47
  SLTIU t1, t1, 1
  # implict jump to bb13
bb13:   # loop depth 1
  BNE t1, zero, bb54
  # implict jump to bb14
bb14:   # loop depth 1
  LD t0, 336(sp)
  LW t1, 0(t0)
  LD t0, 320(sp)
  SH2ADD t1, t1, t0
  LW t1, 0(t1)
  XORI t1, t1, 37
  SLTIU t1, t1, 1
  # implict jump to bb15
bb15:   # loop depth 1
  BNE t1, zero, bb53
  # implict jump to bb16
bb16:   # loop depth 1
  LD t0, 336(sp)
  LW t1, 0(t0)
  LD t0, 320(sp)
  SH2ADD t1, t1, t0
  LW t1, 0(t1)
  XORI t1, t1, 94
  SLTIU t1, t1, 1
  # implict jump to bb17
bb17:   # loop depth 1
  BNE t1, zero, bb28
  # implict jump to bb18
bb18:   # loop depth 1
  LD t0, 336(sp)
  LW t1, 0(t0)
  LD t0, 320(sp)
  SH2ADD t1, t1, t0
  LW t1, 0(t1)
  XORI t1, t1, 32
  BNE t1, zero, bb22
  # implict jump to bb19
bb19:   # loop depth 1
  # implict jump to bb20
bb20:   # loop depth 1
  LD t0, 336(sp)
  LW a1, 0(t0)
  ADDIW t2, a1, 1
  LD t0, 320(sp)
  SH2ADD a0, t2, t0
  LD t0, 336(sp)
  SW t2, 0(t0)
  LW t2, 0(a0)
  XORI t2, t2, 64
  BNE t2, zero, bb21
  JAL zero, bb5
bb21:   # loop depth 1
  JAL zero, bb7
bb22:   # loop depth 1
  LD t0, 336(sp)
  LW t1, 0(t0)
  ADDI a1, zero, 1
  LD t0, 320(sp)
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
  LD t0, 376(sp)
  SW a1, 0(t0)
  LD t0, 336(sp)
  LW t1, 0(t0)
  ADDIW t1, t1, 1
  LD t0, 320(sp)
  SH2ADD t1, t1, t0
  LW t1, 0(t1)
  XORI t1, t1, 32
  BNE t1, zero, bb24
  # implict jump to bb23
bb23:   # loop depth 1
  LD t0, 336(sp)
  LW t1, 0(t0)
  LD t0, 376(sp)
  LW t2, 0(t0)
  ADDW t1, t1, t2
  ADDIW t1, t1, -1
  LD t0, 336(sp)
  SW t1, 0(t0)
  JAL zero, bb19
bb24:   # loop depth 1
  LD t0, 336(sp)
  LW t2, 0(t0)
  SH2ADD a0, a0, a7
  LW t1, 0(a0)
  # implict jump to bb25
bb25:   # loop depth 2
  LD t0, 376(sp)
  LW a1, 0(t0)
  ADDI a6, zero, 10
  ADDW a1, t2, a1
  LD t0, 320(sp)
  SH2ADD a1, a1, t0
  LW a1, 0(a1)
  LW a5, 0(a0)
  ADDIW a1, a1, -48
  ADDW t1, t1, a1
  MULW a1, a5, a6
  SW a1, 0(a0)
  LD t0, 376(sp)
  LW a1, 0(t0)
  ADDIW a1, a1, 1
  ADDW a5, t2, a1
  LD t0, 376(sp)
  SW a1, 0(t0)
  LD t0, 320(sp)
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
  LD t0, 336(sp)
  LW a5, 0(t0)
  ADDW a1, a2, a4
  LD t0, 320(sp)
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
bb46:   # loop depth 2
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
bb58:   # loop depth 0
  LD t0, 376(sp)
  LW t0, 0(t0)
  # implict jump to bb59
bb59:   # loop depth 1
  LD t1, 400(sp)
  LW t1, 0(t1)
  ADDI a1, zero, 32
  LD t2, 320(sp)
  SH2ADD a0, t0, t2
  ADDIW t0, t0, 2
  ADDIW t2, t1, -1
  LD a2, 392(sp)
  SH2ADD t1, t1, a2
  LD a2, 400(sp)
  SW t2, 0(a2)
  LW t1, 0(t1)
  SW a1, 0(a0)
  SW t1, 4(a0)
  BLT zero, t2, bb61
  # implict jump to bb60
bb60:   # loop depth 0
  LD t1, 376(sp)
  SW t0, 0(t1)
  JAL zero, bb4
bb61:   # loop depth 1
  JAL zero, bb59
bb62:   # loop depth 0
  ADD t0, zero, zero
  SB t0, 72(sp)
  ADD t0, zero, zero
  SB t0, 73(sp)
  ADD t0, zero, zero
  SB t0, 26(sp)
  ADD t0, zero, zero
  SB t0, 0(sp)
  ADD t5, zero, zero
  ADD t0, zero, zero
  SB t0, 31(sp)
  ADD t3, zero, zero
  ADD t0, zero, zero
  SB t0, 39(sp)
  ADD t0, zero, zero
  SB t0, 16(sp)
  ADD t0, zero, zero
  SB t0, 20(sp)
  ADD t0, zero, zero
  SB t0, 25(sp)
  ADD t0, zero, zero
  SB t0, 42(sp)
  ADD t0, zero, zero
  SB t0, 43(sp)
  ADD t0, zero, zero
  SB t0, 36(sp)
  ADD s0, zero, zero
  ADD t0, zero, zero
  SB t0, 30(sp)
  ADD t0, zero, zero
  SB t0, 14(sp)
  ADD t0, zero, zero
  SB t0, 61(sp)
  ADD t0, zero, zero
  SB t0, 62(sp)
  # implict jump to bb63
bb63:   # loop depth 1
  ADDI a2, zero, 57
  LD t0, 344(sp)
  SH2ADD t1, t1, t0
  LB t0, 62(sp)
  SB t0, 62(sp)
  LW t0, 0(t1)
  SW t0, 212(sp)
  LB t0, 61(sp)
  SB t0, 61(sp)
  LB t0, 14(sp)
  SB t0, 14(sp)
  LB t0, 30(sp)
  SB t0, 30(sp)
  SB s0, 105(sp)
  LB t0, 36(sp)
  SB t0, 36(sp)
  LB t0, 36(sp)
  SB t0, 94(sp)
  LW t0, 212(sp)
  SLT a7, a2, t0
  LW t0, 212(sp)
  SLTI a2, t0, 48
  XORI a7, a7, 1
  XORI a2, a2, 1
  AND t0, a2, a7
  SB t0, 63(sp)
  LB t0, 43(sp)
  SB t0, 43(sp)
  LB t0, 43(sp)
  SB t0, 21(sp)
  LB t0, 42(sp)
  SB t0, 42(sp)
  LB t0, 42(sp)
  SB t0, 22(sp)
  LB t0, 25(sp)
  SB t0, 25(sp)
  LB t0, 25(sp)
  SB t0, 80(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB t0, 0(sp)
  SB t0, 0(sp)
  LB t0, 26(sp)
  SB t0, 26(sp)
  LB t0, 26(sp)
  SB t0, 81(sp)
  LB t0, 73(sp)
  SB t0, 29(sp)
  LB t0, 72(sp)
  SB t0, 18(sp)
  LB t0, 63(sp)
  BNE t0, zero, bb189
  # implict jump to bb64
bb64:   # loop depth 1
  LW t0, 212(sp)
  XORI s3, t0, 40
  BEQ s3, zero, bb188
  # implict jump to bb65
bb65:   # loop depth 1
  LW t0, 212(sp)
  XORI s3, t0, 94
  BEQ s3, zero, bb187
  # implict jump to bb66
bb66:   # loop depth 1
  LA t0, c
  SD t0, 328(sp)
  LW t0, 212(sp)
  XORI s3, t0, 41
  BEQ s3, zero, bb182
  # implict jump to bb67
bb67:   # loop depth 1
  LW t0, 212(sp)
  XORI s3, t0, 43
  BEQ s3, zero, bb158
  # implict jump to bb68
bb68:   # loop depth 1
  LB t0, 62(sp)
  SB t0, 95(sp)
  LB t0, 61(sp)
  SB t0, 96(sp)
  LB t0, 14(sp)
  SB t0, 97(sp)
  LB t0, 30(sp)
  SB t0, 99(sp)
  LB t0, 105(sp)
  SB t0, 56(sp)
  LB t0, 94(sp)
  SB t0, 57(sp)
  LB t0, 21(sp)
  SB t0, 21(sp)
  LB t0, 22(sp)
  SB t0, 22(sp)
  LB t0, 80(sp)
  SB t0, 102(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 20(sp)
  SB t0, 101(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  SB t3, 40(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  SB t5, 51(sp)
  LB t0, 0(sp)
  SB t0, 0(sp)
  LB t0, 81(sp)
  SB t0, 28(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 18(sp)
  SB t0, 18(sp)
  # implict jump to bb69
bb69:   # loop depth 1
  LW t0, 212(sp)
  XORI t0, t0, 45
  SW t0, 164(sp)
  LB t0, 18(sp)
  SB t0, 18(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB a1, 0(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB t0, 40(sp)
  SB t0, 40(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 101(sp)
  SB t0, 20(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 102(sp)
  SB t0, 41(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 22(sp)
  SB t0, 54(sp)
  LB t0, 54(sp)
  SB t0, 54(sp)
  LB t0, 21(sp)
  SB t0, 58(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB s0, 99(sp)
  LB t0, 97(sp)
  SB t0, 46(sp)
  LB t0, 46(sp)
  SB t0, 46(sp)
  LB t0, 96(sp)
  SB t0, 47(sp)
  LB t0, 47(sp)
  SB t0, 47(sp)
  LB s2, 95(sp)
  LW t0, 164(sp)
  BEQ t0, zero, bb134
  # implict jump to bb70
bb70:   # loop depth 1
  SB s2, 82(sp)
  LB t0, 47(sp)
  SB t0, 47(sp)
  LB t0, 47(sp)
  SB t0, 89(sp)
  LB t0, 46(sp)
  SB t0, 46(sp)
  LB t0, 46(sp)
  SB t0, 91(sp)
  SB s0, 92(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 58(sp)
  SB t0, 58(sp)
  LB t0, 54(sp)
  SB t0, 54(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t0, 40(sp)
  SB t0, 40(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 18(sp)
  SB t0, 18(sp)
  # implict jump to bb71
bb71:   # loop depth 1
  LW t0, 212(sp)
  XORI t0, t0, 42
  SW t0, 124(sp)
  LB t0, 18(sp)
  SB t0, 18(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  SB a1, 9(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB t0, 40(sp)
  SB t0, 40(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 54(sp)
  SB t0, 54(sp)
  LB t0, 58(sp)
  SB t0, 58(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 92(sp)
  SB t0, 114(sp)
  LB t0, 114(sp)
  SB t0, 114(sp)
  LB s1, 91(sp)
  LB s2, 89(sp)
  LB s3, 82(sp)
  LW t0, 124(sp)
  BEQ t0, zero, bb116
  # implict jump to bb72
bb72:   # loop depth 1
  SB s3, 76(sp)
  SB s2, 77(sp)
  SB s1, 78(sp)
  LB t0, 114(sp)
  SB t0, 114(sp)
  LB t0, 114(sp)
  SB t0, 79(sp)
  LB t0, 56(sp)
  SB t0, 44(sp)
  LB t0, 44(sp)
  SB t0, 44(sp)
  LB t0, 57(sp)
  SB t0, 36(sp)
  LB t0, 36(sp)
  SB t0, 36(sp)
  LB t0, 58(sp)
  SB t0, 110(sp)
  LB t0, 54(sp)
  SB t0, 54(sp)
  LB t0, 54(sp)
  SB t0, 109(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB a5, 39(sp)
  LB t0, 40(sp)
  SB t0, 40(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 9(sp)
  SB t0, 9(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 18(sp)
  SB t0, 18(sp)
  # implict jump to bb73
bb73:   # loop depth 1
  LW t0, 212(sp)
  XORI t0, t0, 47
  SW t0, 168(sp)
  LB t0, 18(sp)
  SB t0, 18(sp)
  LB t0, 29(sp)
  SB t0, 67(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 9(sp)
  SB t0, 9(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB t0, 40(sp)
  SB t0, 40(sp)
  LB t0, 40(sp)
  SB t0, 35(sp)
  SB a5, 39(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 109(sp)
  SB t0, 42(sp)
  LB t0, 42(sp)
  SB t0, 42(sp)
  LB t0, 110(sp)
  SB t0, 34(sp)
  LB t0, 36(sp)
  SB t0, 36(sp)
  LB t0, 44(sp)
  SB t0, 44(sp)
  LB t0, 79(sp)
  SB t0, 27(sp)
  LB t0, 27(sp)
  SB t0, 27(sp)
  LB s3, 78(sp)
  LB s4, 77(sp)
  LB t0, 76(sp)
  SB t0, 64(sp)
  LB t0, 64(sp)
  SB t0, 64(sp)
  LW t0, 168(sp)
  BEQ t0, zero, bb98
  # implict jump to bb74
bb74:   # loop depth 1
  LB t0, 64(sp)
  SB t0, 64(sp)
  LB t0, 64(sp)
  SB t0, 107(sp)
  SB s4, 108(sp)
  SB s3, 74(sp)
  LB t0, 27(sp)
  SB t0, 27(sp)
  LB t0, 44(sp)
  SB t0, 44(sp)
  LB t0, 36(sp)
  SB t0, 36(sp)
  LB t0, 34(sp)
  SB t0, 34(sp)
  LB t0, 42(sp)
  SB t0, 42(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t0, 35(sp)
  SB t0, 35(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 9(sp)
  SB t0, 9(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  LB t0, 18(sp)
  SB t0, 18(sp)
  # implict jump to bb75
bb75:   # loop depth 1
  LW t0, 212(sp)
  XORI t0, t0, 37
  SW t0, 172(sp)
  LB t0, 18(sp)
  SB t0, 18(sp)
  LB t0, 18(sp)
  SB t0, 86(sp)
  LB t2, 67(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 9(sp)
  SB t0, 9(sp)
  LB t5, 51(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB t0, 35(sp)
  SB t0, 35(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 42(sp)
  SB t0, 42(sp)
  LB t0, 34(sp)
  SB t0, 34(sp)
  LB t0, 36(sp)
  SB t0, 36(sp)
  LB t0, 44(sp)
  SB t0, 44(sp)
  LB t0, 27(sp)
  SB t0, 27(sp)
  LB t0, 74(sp)
  SB t0, 32(sp)
  LB t0, 32(sp)
  SB t0, 32(sp)
  LB t0, 108(sp)
  SB t0, 17(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB t0, 107(sp)
  SB t0, 1(sp)
  LB t0, 1(sp)
  SB t0, 1(sp)
  LW t0, 172(sp)
  BEQ t0, zero, bb80
  # implict jump to bb76
bb76:   # loop depth 1
  LB t0, 1(sp)
  SB t0, 1(sp)
  LB t0, 17(sp)
  SB t0, 113(sp)
  LB t0, 32(sp)
  SB t0, 112(sp)
  LB t0, 27(sp)
  SB t0, 111(sp)
  LB t0, 44(sp)
  SB t0, 44(sp)
  LB t0, 36(sp)
  SB t0, 36(sp)
  LB t0, 34(sp)
  SB t0, 43(sp)
  LB t0, 43(sp)
  SB t0, 43(sp)
  LB t0, 42(sp)
  SB t0, 42(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t3, 35(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB a1, 9(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB s4, 86(sp)
  # implict jump to bb77
bb77:   # loop depth 1
  LD t0, 376(sp)
  LW a5, 0(t0)
  ADDI s0, zero, 32
  SB s4, 88(sp)
  SB t2, 90(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 28(sp)
  SB t0, 93(sp)
  SB a1, 0(sp)
  LD t0, 320(sp)
  SH2ADD t4, a5, t0
  ADDIW t0, a5, 1
  SW t0, 208(sp)
  SW s0, 0(t4)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 41(sp)
  SB t0, 25(sp)
  LB t0, 42(sp)
  SB t0, 42(sp)
  LB t0, 43(sp)
  SB t0, 43(sp)
  LB t0, 36(sp)
  SB t0, 36(sp)
  LB t0, 44(sp)
  SB t0, 44(sp)
  LB s7, 111(sp)
  LB t0, 112(sp)
  SB t0, 14(sp)
  LB t0, 113(sp)
  SB t0, 61(sp)
  LB s9, 1(sp)
  SB s9, 106(sp)
  LB t0, 61(sp)
  SB t0, 61(sp)
  LB t0, 14(sp)
  SB t0, 14(sp)
  SB s7, 100(sp)
  LB t0, 44(sp)
  SB t0, 44(sp)
  LB t0, 44(sp)
  SB t0, 98(sp)
  LB t0, 36(sp)
  SB t0, 36(sp)
  LB t0, 43(sp)
  SB t0, 43(sp)
  LB t0, 42(sp)
  SB t0, 42(sp)
  LB t0, 25(sp)
  SB t0, 25(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB t0, 0(sp)
  SB t0, 0(sp)
  LB t0, 93(sp)
  SB t0, 26(sp)
  LB t0, 26(sp)
  SB t0, 26(sp)
  LB t0, 90(sp)
  SB t0, 29(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 88(sp)
  SB t0, 18(sp)
  LB t0, 18(sp)
  SB t0, 18(sp)
  LD t0, 376(sp)
  LW t1, 208(sp)
  SW t1, 0(t0)
  # implict jump to bb78
bb78:   # loop depth 1
  LD t0, 336(sp)
  LW a7, 0(t0)
  LB t0, 18(sp)
  SB t0, 18(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 26(sp)
  SB t0, 26(sp)
  LB t0, 0(sp)
  SB t0, 0(sp)
  ADDIW t1, a7, 1
  LB t0, 31(sp)
  SB t0, 31(sp)
  LD t0, 336(sp)
  SW t1, 0(t0)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 25(sp)
  SB t0, 25(sp)
  LB t0, 42(sp)
  SB t0, 42(sp)
  LB t0, 43(sp)
  SB t0, 43(sp)
  LB t0, 36(sp)
  SB t0, 36(sp)
  LB s0, 98(sp)
  LB t0, 100(sp)
  SB t0, 30(sp)
  LB t0, 14(sp)
  SB t0, 14(sp)
  LB t0, 61(sp)
  SB t0, 61(sp)
  LB t0, 106(sp)
  SB t0, 62(sp)
  LB t0, 62(sp)
  SB t0, 62(sp)
  LW t0, 216(sp)
  BLT t1, t0, bb79
  JAL zero, bb3
bb79:   # loop depth 1
  LB t0, 18(sp)
  SB t0, 18(sp)
  LB t0, 18(sp)
  SB t0, 72(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 29(sp)
  SB t0, 73(sp)
  LB t0, 26(sp)
  SB t0, 26(sp)
  LB t0, 0(sp)
  SB t0, 0(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 25(sp)
  SB t0, 25(sp)
  LB t0, 42(sp)
  SB t0, 42(sp)
  LB t0, 43(sp)
  SB t0, 43(sp)
  LB t0, 36(sp)
  SB t0, 36(sp)
  LB t0, 30(sp)
  SB t0, 30(sp)
  LB t0, 14(sp)
  SB t0, 14(sp)
  LB t0, 61(sp)
  SB t0, 61(sp)
  LB t0, 62(sp)
  SB t0, 62(sp)
  JAL zero, bb63
bb80:   # loop depth 1
  LB t0, 1(sp)
  SB t0, 1(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB t0, 32(sp)
  SB t0, 32(sp)
  LB t0, 27(sp)
  SB t0, 27(sp)
  LB t0, 44(sp)
  SB t0, 44(sp)
  LB t0, 36(sp)
  SB t0, 36(sp)
  LB t0, 34(sp)
  SB t0, 34(sp)
  LB t0, 42(sp)
  SB t0, 42(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t0, 35(sp)
  SB t0, 35(sp)
  LB t0, 9(sp)
  SB t0, 9(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  # implict jump to bb81
bb81:   # loop depth 2
  LD t0, 400(sp)
  LW a3, 0(t0)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 9(sp)
  SB t0, 9(sp)
  LB t0, 35(sp)
  SB t0, 35(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LD t0, 392(sp)
  SH2ADD a5, a3, t0
  LB t0, 16(sp)
  SB t0, 16(sp)
  LW s3, 0(a5)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 42(sp)
  SB t0, 42(sp)
  LB t0, 34(sp)
  SB t0, 34(sp)
  LB t0, 36(sp)
  SB t0, 36(sp)
  XORI a5, s3, 42
  LB t0, 44(sp)
  SB t0, 44(sp)
  LB t0, 27(sp)
  SB t0, 27(sp)
  LB t0, 32(sp)
  SB t0, 32(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB t0, 1(sp)
  SB t0, 1(sp)
  BEQ a5, zero, bb97
  # implict jump to bb82
bb82:   # loop depth 2
  XORI a5, s3, 47
  SLTIU s4, a5, 1
  # implict jump to bb83
bb83:   # loop depth 2
  BNE s4, zero, bb96
  # implict jump to bb84
bb84:   # loop depth 2
  XORI a5, s3, 37
  SLTIU t2, a5, 1
  # implict jump to bb85
bb85:   # loop depth 2
  BNE t2, zero, bb95
  # implict jump to bb86
bb86:   # loop depth 2
  XORI a5, s3, 94
  SLTIU a5, a5, 1
  # implict jump to bb87
bb87:   # loop depth 2
  SB a5, 75(sp)
  LB t0, 75(sp)
  BNE t0, zero, bb89
  # implict jump to bb88
bb88:   # loop depth 1
  LD t0, 400(sp)
  LW a5, 0(t0)
  ADDI t0, zero, 37
  SW t0, 180(sp)
  LB t0, 1(sp)
  SB t0, 1(sp)
  LB t0, 17(sp)
  SB t0, 113(sp)
  LB t0, 32(sp)
  SB t0, 112(sp)
  LB t0, 27(sp)
  SB t0, 111(sp)
  ADDIW s1, a5, 1
  LD t0, 392(sp)
  SH2ADD t0, a5, t0
  SD t0, 448(sp)
  LD t0, 400(sp)
  SW s1, 0(t0)
  LB t0, 44(sp)
  SB t0, 44(sp)
  LB t0, 36(sp)
  SB t0, 36(sp)
  LB t0, 34(sp)
  SB t0, 43(sp)
  LB t0, 43(sp)
  SB t0, 43(sp)
  LB t0, 42(sp)
  SB t0, 42(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t3, 35(sp)
  LB t0, 75(sp)
  SB t0, 31(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB a1, 9(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LW t0, 180(sp)
  LD t1, 448(sp)
  SW t0, 4(t1)
  JAL zero, bb77
bb89:   # loop depth 2
  LD t0, 400(sp)
  LW a5, 0(t0)
  ADDI t0, zero, 32
  SW t0, 156(sp)
  ADDIW s3, a5, -1
  LD t0, 392(sp)
  SH2ADD a5, a5, t0
  LD t0, 400(sp)
  SW s3, 0(t0)
  LW t0, 0(a5)
  SW t0, 204(sp)
  LD t0, 328(sp)
  LW t1, 204(sp)
  SW t1, 0(t0)
  LD t0, 376(sp)
  LW a5, 0(t0)
  LD t0, 320(sp)
  SH2ADD s5, a5, t0
  ADDIW a5, a5, 2
  LW t0, 156(sp)
  SW t0, 0(s5)
  LW t0, 204(sp)
  SW t0, 4(s5)
  LD t0, 376(sp)
  SW a5, 0(t0)
  BEQ s3, zero, bb94
  # implict jump to bb90
bb90:   # loop depth 2
  ADDI a5, zero, 1
  # implict jump to bb91
bb91:   # loop depth 2
  BEQ a5, zero, bb88
  # implict jump to bb92
bb92:   # loop depth 2
  # implict jump to bb93
bb93:   # loop depth 2
  LB t0, 1(sp)
  SB t0, 1(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB t0, 32(sp)
  SB t0, 32(sp)
  LB t0, 27(sp)
  SB t0, 27(sp)
  LB t0, 44(sp)
  SB t0, 44(sp)
  LB t0, 36(sp)
  SB t0, 36(sp)
  LB t0, 34(sp)
  SB t0, 34(sp)
  LB t0, 42(sp)
  SB t0, 42(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t0, 35(sp)
  SB t0, 35(sp)
  LB t0, 9(sp)
  SB t0, 9(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  JAL zero, bb81
bb94:   # loop depth 2
  ADD a5, zero, zero
  JAL zero, bb91
bb95:   # loop depth 2
  ADDI a5, zero, 1
  JAL zero, bb87
bb96:   # loop depth 2
  ADDI t2, zero, 1
  JAL zero, bb85
bb97:   # loop depth 2
  ADDI s4, zero, 1
  JAL zero, bb83
bb98:   # loop depth 1
  LB t0, 64(sp)
  SB t0, 64(sp)
  LB t0, 27(sp)
  SB t0, 27(sp)
  LB t0, 44(sp)
  SB t0, 44(sp)
  LB t0, 36(sp)
  SB t0, 36(sp)
  LB t0, 34(sp)
  SB t0, 34(sp)
  LB t0, 42(sp)
  SB t0, 42(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB t0, 9(sp)
  SB t0, 9(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  LB t0, 18(sp)
  SB t0, 18(sp)
  # implict jump to bb99
bb99:   # loop depth 2
  LD t0, 400(sp)
  LW a3, 0(t0)
  LB t0, 18(sp)
  SB t0, 18(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 9(sp)
  SB t0, 9(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LD t0, 392(sp)
  SH2ADD a3, a3, t0
  LB t0, 16(sp)
  SB t0, 16(sp)
  LW s6, 0(a3)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 42(sp)
  SB t0, 42(sp)
  LB t0, 34(sp)
  SB t0, 34(sp)
  LB t0, 36(sp)
  SB t0, 36(sp)
  XORI a3, s6, 42
  LB t0, 44(sp)
  SB t0, 44(sp)
  LB t0, 27(sp)
  SB t0, 27(sp)
  LB t0, 64(sp)
  SB t0, 64(sp)
  BEQ a3, zero, bb115
  # implict jump to bb100
bb100:   # loop depth 2
  XORI a3, s6, 47
  SLTIU t0, a3, 1
  SB t0, 39(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  # implict jump to bb101
bb101:   # loop depth 2
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t0, 39(sp)
  BNE t0, zero, bb114
  # implict jump to bb102
bb102:   # loop depth 2
  XORI a6, s6, 37
  SLTIU a6, a6, 1
  # implict jump to bb103
bb103:   # loop depth 2
  SB a6, 35(sp)
  LB t0, 35(sp)
  BNE t0, zero, bb113
  # implict jump to bb104
bb104:   # loop depth 2
  XORI a6, s6, 94
  SLTIU a6, a6, 1
  # implict jump to bb105
bb105:   # loop depth 2
  SB a6, 87(sp)
  LB t0, 87(sp)
  BNE t0, zero, bb107
  # implict jump to bb106
bb106:   # loop depth 1
  LD t0, 400(sp)
  LW a6, 0(t0)
  ADDI t0, zero, 47
  SW t0, 120(sp)
  LB t0, 64(sp)
  SB t0, 64(sp)
  LB t0, 64(sp)
  SB t0, 107(sp)
  SB s4, 108(sp)
  SB s3, 74(sp)
  LB t0, 27(sp)
  SB t0, 27(sp)
  ADDIW t3, a6, 1
  LD t0, 392(sp)
  SH2ADD t0, a6, t0
  SD t0, 416(sp)
  LD t0, 400(sp)
  SW t3, 0(t0)
  LB t0, 44(sp)
  SB t0, 44(sp)
  LB t0, 36(sp)
  SB t0, 36(sp)
  LB t0, 34(sp)
  SB t0, 34(sp)
  LB t0, 42(sp)
  SB t0, 42(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t0, 35(sp)
  SB t0, 35(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB t0, 87(sp)
  SB t0, 51(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 9(sp)
  SB t0, 9(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  LB t0, 18(sp)
  SB t0, 18(sp)
  LD t0, 416(sp)
  LW t1, 120(sp)
  SW t1, 4(t0)
  JAL zero, bb75
bb107:   # loop depth 2
  LD t0, 400(sp)
  LW a6, 0(t0)
  ADDI t0, zero, 32
  SW t0, 152(sp)
  ADDIW t3, a6, -1
  LD t0, 392(sp)
  SH2ADD a6, a6, t0
  LD t0, 400(sp)
  SW t3, 0(t0)
  LW a6, 0(a6)
  LD t0, 328(sp)
  SW a6, 0(t0)
  LD t0, 376(sp)
  LW s7, 0(t0)
  LD t0, 320(sp)
  SH2ADD s8, s7, t0
  ADDIW s7, s7, 2
  LW t0, 152(sp)
  SW t0, 0(s8)
  SW a6, 4(s8)
  LD t0, 376(sp)
  SW s7, 0(t0)
  BEQ t3, zero, bb112
  # implict jump to bb108
bb108:   # loop depth 2
  ADDI a6, zero, 1
  # implict jump to bb109
bb109:   # loop depth 2
  BEQ a6, zero, bb106
  # implict jump to bb110
bb110:   # loop depth 2
  # implict jump to bb111
bb111:   # loop depth 2
  LB t0, 64(sp)
  SB t0, 64(sp)
  LB t0, 27(sp)
  SB t0, 27(sp)
  LB t0, 44(sp)
  SB t0, 44(sp)
  LB t0, 36(sp)
  SB t0, 36(sp)
  LB t0, 34(sp)
  SB t0, 34(sp)
  LB t0, 42(sp)
  SB t0, 42(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB t0, 9(sp)
  SB t0, 9(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  LB t0, 18(sp)
  SB t0, 18(sp)
  JAL zero, bb99
bb112:   # loop depth 2
  ADD a6, zero, zero
  JAL zero, bb109
bb113:   # loop depth 2
  ADDI a6, zero, 1
  JAL zero, bb105
bb114:   # loop depth 2
  ADDI a6, zero, 1
  JAL zero, bb103
bb115:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 39(sp)
  JAL zero, bb101
bb116:   # loop depth 1
  LB t0, 114(sp)
  SB t0, 114(sp)
  LB t0, 56(sp)
  SB t0, 44(sp)
  LB t0, 44(sp)
  SB t0, 44(sp)
  LB t0, 58(sp)
  SB t0, 110(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB a5, 39(sp)
  LB t0, 40(sp)
  SB t0, 40(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 9(sp)
  SB t0, 9(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 18(sp)
  SB t0, 18(sp)
  # implict jump to bb117
bb117:   # loop depth 2
  LD t0, 400(sp)
  LW a7, 0(t0)
  LB t0, 18(sp)
  SB t0, 18(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 9(sp)
  SB t0, 9(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LD t0, 392(sp)
  SH2ADD a7, a7, t0
  LB t0, 31(sp)
  SB t0, 31(sp)
  LW t0, 0(a7)
  SW t0, 132(sp)
  LB t0, 40(sp)
  SB t0, 40(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 110(sp)
  SB t0, 110(sp)
  LW t0, 132(sp)
  XORI a7, t0, 42
  LB t0, 44(sp)
  SB t0, 44(sp)
  LB t0, 114(sp)
  SB t0, 114(sp)
  BEQ a7, zero, bb133
  # implict jump to bb118
bb118:   # loop depth 2
  LW t0, 132(sp)
  XORI a7, t0, 47
  SLTIU t0, a7, 1
  SB t0, 36(sp)
  LB t0, 36(sp)
  SB t0, 36(sp)
  # implict jump to bb119
bb119:   # loop depth 2
  LB t0, 36(sp)
  SB t0, 36(sp)
  LB t0, 36(sp)
  BNE t0, zero, bb132
  # implict jump to bb120
bb120:   # loop depth 2
  LW t0, 132(sp)
  XORI s4, t0, 37
  SLTIU s4, s4, 1
  # implict jump to bb121
bb121:   # loop depth 2
  SB s4, 109(sp)
  LB t0, 109(sp)
  BNE t0, zero, bb131
  # implict jump to bb122
bb122:   # loop depth 2
  LW t0, 132(sp)
  XORI s5, t0, 94
  SLTIU s5, s5, 1
  # implict jump to bb123
bb123:   # loop depth 2
  SB s5, 85(sp)
  LB t0, 85(sp)
  BNE t0, zero, bb125
  # implict jump to bb124
bb124:   # loop depth 1
  LD t0, 400(sp)
  LW s6, 0(t0)
  ADDI t0, zero, 42
  SW t0, 184(sp)
  SB s3, 76(sp)
  SB s2, 77(sp)
  SB s1, 78(sp)
  LB t0, 114(sp)
  SB t0, 114(sp)
  LB t0, 114(sp)
  SB t0, 79(sp)
  ADDIW s1, s6, 1
  LD t0, 392(sp)
  SH2ADD t0, s6, t0
  SD t0, 456(sp)
  LD t0, 400(sp)
  SW s1, 0(t0)
  LB t0, 44(sp)
  SB t0, 44(sp)
  LB t0, 36(sp)
  SB t0, 36(sp)
  LB t0, 110(sp)
  SB t0, 110(sp)
  LB t0, 109(sp)
  SB t0, 109(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 85(sp)
  SB t0, 16(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 40(sp)
  SB t0, 40(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 9(sp)
  SB t0, 9(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 18(sp)
  SB t0, 18(sp)
  LW t0, 184(sp)
  LD t1, 456(sp)
  SW t0, 4(t1)
  JAL zero, bb73
bb125:   # loop depth 2
  LD t0, 400(sp)
  LW s6, 0(t0)
  ADDI t0, zero, 32
  SW t0, 148(sp)
  ADDIW t0, s6, -1
  SW t0, 160(sp)
  LD t0, 392(sp)
  SH2ADD s6, s6, t0
  LD t0, 400(sp)
  LW t1, 160(sp)
  SW t1, 0(t0)
  LW s6, 0(s6)
  LD t0, 328(sp)
  SW s6, 0(t0)
  LD t0, 376(sp)
  LW t0, 0(t0)
  SW t0, 128(sp)
  LD t0, 320(sp)
  LW t1, 128(sp)
  SH2ADD t0, t1, t0
  SD t0, 384(sp)
  LW t0, 128(sp)
  ADDIW t0, t0, 2
  SW t0, 116(sp)
  LW t0, 148(sp)
  LD t1, 384(sp)
  SW t0, 0(t1)
  LD t0, 384(sp)
  SW s6, 4(t0)
  LD t0, 376(sp)
  LW t1, 116(sp)
  SW t1, 0(t0)
  LW t0, 160(sp)
  BEQ t0, zero, bb130
  # implict jump to bb126
bb126:   # loop depth 2
  ADDI s6, zero, 1
  # implict jump to bb127
bb127:   # loop depth 2
  BEQ s6, zero, bb124
  # implict jump to bb128
bb128:   # loop depth 2
  # implict jump to bb129
bb129:   # loop depth 2
  LB t0, 114(sp)
  SB t0, 114(sp)
  LB t0, 44(sp)
  SB t0, 44(sp)
  LB t0, 110(sp)
  SB t0, 110(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 40(sp)
  SB t0, 40(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 9(sp)
  SB t0, 9(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 18(sp)
  SB t0, 18(sp)
  JAL zero, bb117
bb130:   # loop depth 2
  ADD s6, zero, zero
  JAL zero, bb127
bb131:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb123
bb132:   # loop depth 2
  ADDI s4, zero, 1
  JAL zero, bb121
bb133:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 36(sp)
  JAL zero, bb119
bb134:   # loop depth 1
  LB t0, 47(sp)
  SB t0, 47(sp)
  LB t0, 46(sp)
  SB t0, 46(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 54(sp)
  SB t0, 54(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t0, 40(sp)
  SB t0, 23(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 18(sp)
  SB t0, 18(sp)
  # implict jump to bb135
bb135:   # loop depth 2
  LD t0, 400(sp)
  LW s1, 0(t0)
  LB t0, 18(sp)
  SB t0, 18(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LD t0, 392(sp)
  SH2ADD s1, s1, t0
  LB t0, 23(sp)
  SB t0, 23(sp)
  LW s5, 0(s1)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 54(sp)
  SB t0, 54(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  XORI a4, s5, 43
  LB t0, 46(sp)
  SB t0, 46(sp)
  LB t0, 47(sp)
  SB t0, 47(sp)
  BEQ a4, zero, bb157
  # implict jump to bb136
bb136:   # loop depth 2
  XORI a4, s5, 45
  SLTIU s9, a4, 1
  # implict jump to bb137
bb137:   # loop depth 2
  BNE s9, zero, bb156
  # implict jump to bb138
bb138:   # loop depth 2
  XORI a4, s5, 42
  SLTIU t0, a4, 1
  SB t0, 56(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  # implict jump to bb139
bb139:   # loop depth 2
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 56(sp)
  BNE t0, zero, bb155
  # implict jump to bb140
bb140:   # loop depth 2
  XORI s3, s5, 47
  SLTIU t0, s3, 1
  SB t0, 58(sp)
  LB t0, 58(sp)
  SB t0, 58(sp)
  # implict jump to bb141
bb141:   # loop depth 2
  LB t0, 58(sp)
  SB t0, 58(sp)
  LB t0, 58(sp)
  BNE t0, zero, bb154
  # implict jump to bb142
bb142:   # loop depth 2
  XORI s4, s5, 37
  SLTIU t0, s4, 1
  SB t0, 20(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  # implict jump to bb143
bb143:   # loop depth 2
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 20(sp)
  BNE t0, zero, bb153
  # implict jump to bb144
bb144:   # loop depth 2
  XORI s5, s5, 94
  SLTIU s5, s5, 1
  # implict jump to bb145
bb145:   # loop depth 2
  SB s5, 84(sp)
  LB t0, 84(sp)
  BNE t0, zero, bb147
  # implict jump to bb146
bb146:   # loop depth 1
  LD t0, 400(sp)
  LW s6, 0(t0)
  ADDI t0, zero, 45
  SW t0, 188(sp)
  SB s2, 82(sp)
  LB t0, 47(sp)
  SB t0, 47(sp)
  LB t0, 47(sp)
  SB t0, 89(sp)
  LB t0, 46(sp)
  SB t0, 46(sp)
  LB t0, 46(sp)
  SB t0, 91(sp)
  SB s9, 92(sp)
  ADDIW s0, s6, 1
  LD t0, 392(sp)
  SH2ADD t0, s6, t0
  SD t0, 424(sp)
  LD t0, 400(sp)
  SW s0, 0(t0)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 58(sp)
  SB t0, 58(sp)
  LB t0, 54(sp)
  SB t0, 54(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t0, 23(sp)
  SB t0, 40(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB a1, 84(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 18(sp)
  SB t0, 18(sp)
  LD t0, 424(sp)
  LW t1, 188(sp)
  SW t1, 4(t0)
  JAL zero, bb71
bb147:   # loop depth 2
  LD t0, 400(sp)
  LW s6, 0(t0)
  ADDI t0, zero, 32
  SW t0, 144(sp)
  ADDIW s7, s6, -1
  LD t0, 392(sp)
  SH2ADD s6, s6, t0
  LD t0, 400(sp)
  SW s7, 0(t0)
  LW s6, 0(s6)
  LD t0, 328(sp)
  SW s6, 0(t0)
  LD t0, 376(sp)
  LW s8, 0(t0)
  LD t0, 320(sp)
  SH2ADD s10, s8, t0
  ADDIW s8, s8, 2
  LW t0, 144(sp)
  SW t0, 0(s10)
  SW s6, 4(s10)
  LD t0, 376(sp)
  SW s8, 0(t0)
  BEQ s7, zero, bb152
  # implict jump to bb148
bb148:   # loop depth 2
  ADDI s6, zero, 1
  # implict jump to bb149
bb149:   # loop depth 2
  BEQ s6, zero, bb146
  # implict jump to bb150
bb150:   # loop depth 2
  # implict jump to bb151
bb151:   # loop depth 2
  LB t0, 47(sp)
  SB t0, 47(sp)
  LB t0, 46(sp)
  SB t0, 46(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 54(sp)
  SB t0, 54(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 18(sp)
  SB t0, 18(sp)
  JAL zero, bb135
bb152:   # loop depth 2
  ADD s6, zero, zero
  JAL zero, bb149
bb153:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb145
bb154:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 20(sp)
  JAL zero, bb143
bb155:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 58(sp)
  JAL zero, bb141
bb156:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 56(sp)
  JAL zero, bb139
bb157:   # loop depth 2
  ADDI s9, zero, 1
  JAL zero, bb137
bb158:   # loop depth 1
  LB t0, 30(sp)
  SB t0, 30(sp)
  LB t0, 105(sp)
  SB t0, 105(sp)
  LB t0, 94(sp)
  SB t0, 94(sp)
  LB t0, 21(sp)
  SB t0, 21(sp)
  LB t0, 22(sp)
  SB t0, 22(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  SB t3, 40(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  SB t5, 51(sp)
  LB t0, 0(sp)
  SB t0, 0(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t1, 18(sp)
  # implict jump to bb159
bb159:   # loop depth 2
  LD t0, 400(sp)
  LW a7, 0(t0)
  SB t1, 18(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 0(sp)
  SB t0, 0(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LD t0, 392(sp)
  SH2ADD a7, a7, t0
  LB t0, 40(sp)
  SB t0, 40(sp)
  LW s4, 0(a7)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 20(sp)
  SB t0, 101(sp)
  LB t0, 22(sp)
  SB t0, 22(sp)
  LB t0, 21(sp)
  SB t0, 21(sp)
  XORI s0, s4, 43
  LB t0, 94(sp)
  SB t0, 57(sp)
  LB t0, 105(sp)
  SB t0, 56(sp)
  LB t0, 30(sp)
  SB t0, 30(sp)
  BEQ s0, zero, bb181
  # implict jump to bb160
bb160:   # loop depth 2
  XORI s0, s4, 45
  SLTIU s0, s0, 1
  # implict jump to bb161
bb161:   # loop depth 2
  BNE s0, zero, bb180
  # implict jump to bb162
bb162:   # loop depth 2
  XORI s1, s4, 42
  SLTIU s1, s1, 1
  # implict jump to bb163
bb163:   # loop depth 2
  BNE s1, zero, bb179
  # implict jump to bb164
bb164:   # loop depth 2
  XORI s2, s4, 47
  SLTIU s2, s2, 1
  # implict jump to bb165
bb165:   # loop depth 2
  SB s2, 102(sp)
  LB t0, 102(sp)
  BNE t0, zero, bb178
  # implict jump to bb166
bb166:   # loop depth 2
  XORI s3, s4, 37
  SLTIU t0, s3, 1
  SB t0, 28(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  # implict jump to bb167
bb167:   # loop depth 2
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 28(sp)
  BNE t0, zero, bb177
  # implict jump to bb168
bb168:   # loop depth 2
  XORI s4, s4, 94
  SLTIU s4, s4, 1
  # implict jump to bb169
bb169:   # loop depth 2
  SB s4, 71(sp)
  LB t0, 71(sp)
  BNE t0, zero, bb171
  # implict jump to bb170
bb170:   # loop depth 1
  LD t0, 400(sp)
  LW s5, 0(t0)
  ADDI t0, zero, 43
  SW t0, 140(sp)
  SB s0, 95(sp)
  SB s1, 96(sp)
  LB t0, 71(sp)
  SB t0, 97(sp)
  LB t0, 30(sp)
  SB t0, 30(sp)
  LB t0, 30(sp)
  SB t0, 99(sp)
  ADDIW t5, s5, 1
  LD t0, 392(sp)
  SH2ADD s0, s5, t0
  LD t0, 400(sp)
  SW t5, 0(t0)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 21(sp)
  SB t0, 21(sp)
  LB t0, 22(sp)
  SB t0, 22(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 101(sp)
  SB t0, 101(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t0, 40(sp)
  SB t0, 40(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 0(sp)
  SB t0, 0(sp)
  LB t0, 28(sp)
  SB t0, 28(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 18(sp)
  SB t0, 18(sp)
  LW t0, 140(sp)
  SW t0, 4(s0)
  JAL zero, bb69
bb171:   # loop depth 2
  LD t0, 400(sp)
  LW s5, 0(t0)
  ADDI t0, zero, 32
  SW t0, 136(sp)
  ADDIW s6, s5, -1
  LD t0, 392(sp)
  SH2ADD s5, s5, t0
  LD t0, 400(sp)
  SW s6, 0(t0)
  LW s5, 0(s5)
  LD t0, 328(sp)
  SW s5, 0(t0)
  LD t0, 376(sp)
  LW s7, 0(t0)
  LD t0, 320(sp)
  SH2ADD s8, s7, t0
  ADDIW s7, s7, 2
  LW t0, 136(sp)
  SW t0, 0(s8)
  SW s5, 4(s8)
  LD t0, 376(sp)
  SW s7, 0(t0)
  BEQ s6, zero, bb176
  # implict jump to bb172
bb172:   # loop depth 2
  ADDI s5, zero, 1
  # implict jump to bb173
bb173:   # loop depth 2
  BEQ s5, zero, bb170
  # implict jump to bb174
bb174:   # loop depth 2
  # implict jump to bb175
bb175:   # loop depth 2
  LB t0, 30(sp)
  SB t0, 30(sp)
  LB t0, 56(sp)
  SB t0, 105(sp)
  LB t0, 57(sp)
  SB t0, 94(sp)
  LB t0, 21(sp)
  SB t0, 21(sp)
  LB t0, 22(sp)
  SB t0, 22(sp)
  LB t0, 101(sp)
  SB t0, 20(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t0, 40(sp)
  SB t0, 40(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB t0, 51(sp)
  SB t0, 51(sp)
  LB t0, 0(sp)
  SB t0, 0(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t1, 18(sp)
  JAL zero, bb159
bb176:   # loop depth 2
  ADD s5, zero, zero
  JAL zero, bb173
bb177:   # loop depth 2
  ADDI s4, zero, 1
  JAL zero, bb169
bb178:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 28(sp)
  JAL zero, bb167
bb179:   # loop depth 2
  ADDI s2, zero, 1
  JAL zero, bb165
bb180:   # loop depth 2
  ADDI s1, zero, 1
  JAL zero, bb163
bb181:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb161
bb182:   # loop depth 1
  LD t0, 400(sp)
  LW s4, 0(t0)
  ADDIW s8, s4, -1
  LD t0, 392(sp)
  SH2ADD s4, s4, t0
  LD t0, 400(sp)
  SW s8, 0(t0)
  LW s4, 0(s4)
  XORI s5, s4, 40
  LD t0, 328(sp)
  SW s4, 0(t0)
  BNE s5, zero, bb183
  JAL zero, bb67
bb183:   # loop depth 1
  LD t0, 376(sp)
  LW s5, 0(t0)
  # implict jump to bb184
bb184:   # loop depth 2
  ADDI s4, zero, 32
  LD t0, 320(sp)
  SH2ADD t0, s5, t0
  SD t0, 432(sp)
  LD t0, 432(sp)
  SW s4, 0(t0)
  LD t0, 392(sp)
  SH2ADD s10, s8, t0
  LD t0, 328(sp)
  LW s9, 0(t0)
  ADDIW s8, s8, -1
  ADDIW s5, s5, 2
  LD t0, 432(sp)
  SW s9, 4(t0)
  LW s9, 0(s10)
  XORI s10, s9, 40
  LD t0, 328(sp)
  SW s9, 0(t0)
  BNE s10, zero, bb186
  # implict jump to bb185
bb185:   # loop depth 1
  LD t0, 400(sp)
  SW s8, 0(t0)
  LD t0, 376(sp)
  SW s5, 0(t0)
  JAL zero, bb67
bb186:   # loop depth 2
  JAL zero, bb184
bb187:   # loop depth 1
  LD t0, 400(sp)
  LW s3, 0(t0)
  ADDI s5, zero, 94
  ADDIW s4, s3, 1
  LD t0, 392(sp)
  SH2ADD s3, s3, t0
  LD t0, 400(sp)
  SW s4, 0(t0)
  SW s5, 4(s3)
  JAL zero, bb66
bb188:   # loop depth 1
  LD t0, 400(sp)
  LW s3, 0(t0)
  ADDI s5, zero, 40
  ADDIW s4, s3, 1
  LD t0, 392(sp)
  SH2ADD s3, s3, t0
  LD t0, 400(sp)
  SW s4, 0(t0)
  SW s5, 4(s3)
  JAL zero, bb65
bb189:   # loop depth 1
  LD t0, 376(sp)
  LW s3, 0(t0)
  LB t0, 62(sp)
  SB t0, 106(sp)
  LB t0, 61(sp)
  SB t0, 61(sp)
  LB t0, 14(sp)
  SB t0, 14(sp)
  LB t0, 30(sp)
  SB t0, 100(sp)
  LB t0, 105(sp)
  SB t0, 98(sp)
  LD t0, 320(sp)
  SH2ADD t1, s3, t0
  ADDIW t0, s3, 1
  SW t0, 176(sp)
  LW t0, 212(sp)
  SW t0, 0(t1)
  LB t0, 94(sp)
  SB t0, 36(sp)
  LB t0, 36(sp)
  SB t0, 36(sp)
  LB t0, 21(sp)
  SB t0, 43(sp)
  LB t0, 43(sp)
  SB t0, 43(sp)
  LB t0, 22(sp)
  SB t0, 42(sp)
  LB t0, 42(sp)
  SB t0, 42(sp)
  LB t0, 80(sp)
  SB t0, 25(sp)
  LB t0, 25(sp)
  SB t0, 25(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 16(sp)
  SB t0, 16(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB t0, 0(sp)
  SB t0, 0(sp)
  LB t0, 81(sp)
  SB t0, 26(sp)
  LB t0, 26(sp)
  SB t0, 26(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 18(sp)
  SB t0, 18(sp)
  LD t0, 376(sp)
  LW t1, 176(sp)
  SW t1, 0(t0)
  JAL zero, bb78
bb190:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb191
bb191:   # loop depth 1
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
  BNE t1, zero, bb193
  # implict jump to bb192
bb192:   # loop depth 1
  JAL zero, bb2
bb193:   # loop depth 1
  JAL zero, bb191
