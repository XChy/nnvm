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
  SD ra, 216(sp)
  SD s0, 224(sp)
  SD s1, 232(sp)
  SD s2, 240(sp)
  SD s3, 248(sp)
  SD s4, 256(sp)
  SD s5, 264(sp)
  SD s6, 272(sp)
  SD s7, 280(sp)
  SD s8, 288(sp)
  SD s9, 296(sp)
  SD s10, 304(sp)
  SD s11, 312(sp)
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
  SD t0, 320(sp)
  LA t0, get2
  SD t0, 384(sp)
  LA t0, chas
  SD t0, 392(sp)
  LD t0, 336(sp)
  LW t0, 0(t0)
  SW t0, 164(sp)
  SW s0, 192(sp)
  LW t0, 192(sp)
  LW t1, 164(sp)
  BLT t1, t0, bb62
  # implict jump to bb3
bb3:   # loop depth 0
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
  LD a0, 384(sp)
  SH2ADD t0, t0, a0
  SW t1, 0(t0)
  LD t0, 336(sp)
  SW t2, 0(t0)
  LD t0, 384(sp)
  LW t0, 4(t0)
  XORI t0, t0, 64
  BNE t0, zero, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  LW a0, 4(a7)
  CALL putint
  ADD a0, zero, zero
  LD ra, 216(sp)
  LD s0, 224(sp)
  LD s1, 232(sp)
  LD s2, 240(sp)
  LD s3, 248(sp)
  LD s4, 256(sp)
  LD s5, 264(sp)
  LD s6, 272(sp)
  LD s7, 280(sp)
  LD s8, 288(sp)
  LD s9, 296(sp)
  LD s10, 304(sp)
  LD s11, 312(sp)
  ADDI sp, sp, 448
  JALR zero, 0(ra)
bb6:   # loop depth 0
  ADD a2, zero, zero
  ADD a4, zero, zero
  ADD a3, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  LD t0, 336(sp)
  LW a0, 0(t0)
  LD t0, 384(sp)
  SH2ADD t1, a0, t0
  LW t1, 0(t1)
  XORI t1, t1, 43
  BEQ t1, zero, bb57
  # implict jump to bb8
bb8:   # loop depth 1
  LD t0, 336(sp)
  LW t1, 0(t0)
  LD t0, 384(sp)
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
  LD t0, 384(sp)
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
  LD t0, 384(sp)
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
  LD t0, 384(sp)
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
  LD t0, 384(sp)
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
  LD t0, 384(sp)
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
  LD t0, 384(sp)
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
  LD t0, 384(sp)
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
  LD t0, 336(sp)
  LW t1, 0(t0)
  ADDIW t1, t1, 1
  LD t0, 384(sp)
  SH2ADD t1, t1, t0
  LW t1, 0(t1)
  XORI t1, t1, 32
  BNE t1, zero, bb24
  # implict jump to bb23
bb23:   # loop depth 1
  LD t0, 336(sp)
  LW t1, 0(t0)
  LD t0, 320(sp)
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
  LD t0, 320(sp)
  LW a1, 0(t0)
  ADDI a6, zero, 10
  ADDW a1, t2, a1
  LD t0, 384(sp)
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
  LD t0, 384(sp)
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
  LW t2, 0(t0)
  SH2ADD t1, t2, a7
  ADDIW a0, t2, -2
  LW a2, 0(t1)
  ADDIW t2, t2, -1
  SH2ADD t2, t2, a7
  LD t0, 352(sp)
  SW a0, 0(t0)
  LW a4, 0(t2)
  LD t0, 336(sp)
  LW a5, 0(t0)
  ADDW a1, a2, a4
  LD t0, 384(sp)
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
  LD t0, 320(sp)
  LW t0, 0(t0)
  # implict jump to bb59
bb59:   # loop depth 1
  LD t1, 400(sp)
  LW t1, 0(t1)
  ADDI a1, zero, 32
  LD t2, 384(sp)
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
  LD t1, 320(sp)
  SW t0, 0(t1)
  JAL zero, bb4
bb61:   # loop depth 1
  JAL zero, bb59
bb62:   # loop depth 0
  ADD t0, zero, zero
  SB t0, 93(sp)
  ADD t0, zero, zero
  SB t0, 100(sp)
  ADD t0, zero, zero
  SB t0, 109(sp)
  ADD t0, zero, zero
  SB t0, 32(sp)
  ADD t0, zero, zero
  SB t0, 63(sp)
  ADD t0, zero, zero
  SB t0, 56(sp)
  ADD t0, zero, zero
  SB t0, 23(sp)
  ADD t0, zero, zero
  SB t0, 69(sp)
  ADD t0, zero, zero
  SB t0, 62(sp)
  ADD t0, zero, zero
  SB t0, 73(sp)
  ADD t0, zero, zero
  SB t0, 74(sp)
  ADD t0, zero, zero
  SB t0, 75(sp)
  ADD t0, zero, zero
  SB t0, 14(sp)
  ADD t0, zero, zero
  SB t0, 103(sp)
  ADD t0, zero, zero
  SB t0, 29(sp)
  ADD t0, zero, zero
  SB t0, 110(sp)
  ADD t0, zero, zero
  SB t0, 102(sp)
  ADD t0, zero, zero
  SB t0, 111(sp)
  ADD t0, zero, zero
  SB t0, 65(sp)
  LW t0, 164(sp)
  SW t0, 164(sp)
  # implict jump to bb63
bb63:   # loop depth 1
  LW t0, 164(sp)
  SW t0, 164(sp)
  ADDI a2, zero, 57
  LD t0, 344(sp)
  LW t1, 164(sp)
  SH2ADD t1, t1, t0
  LB t0, 65(sp)
  SB t0, 65(sp)
  LW t0, 0(t1)
  SW t0, 204(sp)
  LB t0, 111(sp)
  SB t0, 111(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 110(sp)
  SB t0, 110(sp)
  LB t0, 110(sp)
  SB t0, 86(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 103(sp)
  SB t0, 103(sp)
  LW t0, 204(sp)
  SLT a2, a2, t0
  LW t0, 204(sp)
  SLTI a1, t0, 48
  XORI a2, a2, 1
  XORI a1, a1, 1
  AND s3, a1, a2
  LB t0, 14(sp)
  SB t0, 60(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  LB t0, 74(sp)
  SB t0, 74(sp)
  LB t0, 74(sp)
  SB t0, 59(sp)
  LB t0, 73(sp)
  SB t0, 73(sp)
  LB t0, 73(sp)
  SB t0, 61(sp)
  LB t0, 62(sp)
  SB t0, 62(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 63(sp)
  SB t0, 63(sp)
  LB t0, 32(sp)
  SB t0, 32(sp)
  LB t0, 109(sp)
  SB t0, 109(sp)
  LB t0, 109(sp)
  SB t0, 87(sp)
  LB t0, 100(sp)
  SB t0, 106(sp)
  LB t0, 93(sp)
  SB t0, 66(sp)
  BNE s3, zero, bb189
  # implict jump to bb64
bb64:   # loop depth 1
  LW t0, 204(sp)
  XORI s3, t0, 40
  BEQ s3, zero, bb188
  # implict jump to bb65
bb65:   # loop depth 1
  LW t0, 204(sp)
  XORI s3, t0, 94
  BEQ s3, zero, bb187
  # implict jump to bb66
bb66:   # loop depth 1
  LA t0, c
  SD t0, 328(sp)
  LW t0, 204(sp)
  XORI s3, t0, 41
  BEQ s3, zero, bb182
  # implict jump to bb67
bb67:   # loop depth 1
  LW t0, 204(sp)
  XORI s3, t0, 43
  BEQ s3, zero, bb158
  # implict jump to bb68
bb68:   # loop depth 1
  LB t0, 65(sp)
  SB t0, 85(sp)
  LB t0, 111(sp)
  SB t0, 88(sp)
  LB t0, 102(sp)
  SB t0, 76(sp)
  LB t0, 86(sp)
  SB t0, 57(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 103(sp)
  SB t0, 103(sp)
  LB t0, 60(sp)
  SB t0, 41(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  LB t0, 59(sp)
  SB t0, 59(sp)
  LB t0, 61(sp)
  SB t0, 61(sp)
  LB t0, 62(sp)
  SB t0, 62(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 63(sp)
  SB t0, 63(sp)
  LB t0, 32(sp)
  SB t0, 32(sp)
  LB t0, 87(sp)
  SB t0, 107(sp)
  LB t0, 107(sp)
  SB t0, 107(sp)
  LB t0, 106(sp)
  SB t0, 106(sp)
  LB t0, 66(sp)
  SB t0, 66(sp)
  # implict jump to bb69
bb69:   # loop depth 1
  LW t0, 204(sp)
  XORI t0, t0, 45
  SW t0, 156(sp)
  LB t0, 66(sp)
  SB t0, 66(sp)
  LB t0, 106(sp)
  SB t0, 106(sp)
  LB t0, 107(sp)
  SB t0, 107(sp)
  LB t0, 32(sp)
  SB t0, 32(sp)
  LB t0, 63(sp)
  SB t0, 63(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 62(sp)
  SB t0, 62(sp)
  LB t0, 61(sp)
  SB t0, 61(sp)
  LB t0, 59(sp)
  SB t0, 59(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 103(sp)
  SB t0, 103(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 76(sp)
  SB t0, 46(sp)
  LB t0, 46(sp)
  SB t0, 46(sp)
  LB s9, 88(sp)
  LB s1, 85(sp)
  LW t0, 156(sp)
  BEQ t0, zero, bb134
  # implict jump to bb70
bb70:   # loop depth 1
  SB s1, 81(sp)
  SB s9, 82(sp)
  LB t0, 46(sp)
  SB t0, 46(sp)
  LB t0, 46(sp)
  SB t0, 83(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 57(sp)
  SB t0, 84(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 103(sp)
  SB t0, 103(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 41(sp)
  SB t0, 114(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  LB t0, 59(sp)
  SB t0, 70(sp)
  LB t0, 70(sp)
  SB t0, 70(sp)
  LB t0, 61(sp)
  SB t0, 55(sp)
  LB t0, 55(sp)
  SB t0, 55(sp)
  LB t0, 62(sp)
  SB t0, 58(sp)
  LB t0, 58(sp)
  SB t0, 58(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 63(sp)
  SB t0, 113(sp)
  LB t0, 113(sp)
  SB t0, 113(sp)
  LB t0, 32(sp)
  SB t0, 32(sp)
  LB t0, 107(sp)
  SB t0, 107(sp)
  LB t0, 106(sp)
  SB t0, 106(sp)
  LB t0, 66(sp)
  SB t0, 66(sp)
  # implict jump to bb71
bb71:   # loop depth 1
  LW t0, 204(sp)
  XORI t0, t0, 42
  SW t0, 152(sp)
  LB t0, 66(sp)
  SB t0, 66(sp)
  LB t0, 106(sp)
  SB t0, 31(sp)
  LB t0, 107(sp)
  SB t0, 107(sp)
  LB t0, 32(sp)
  SB t0, 19(sp)
  LB t0, 113(sp)
  SB t0, 113(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 58(sp)
  SB t0, 58(sp)
  LB t0, 55(sp)
  SB t0, 55(sp)
  LB t0, 70(sp)
  SB t0, 70(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  LB t0, 114(sp)
  SB t0, 43(sp)
  LB t0, 43(sp)
  SB t0, 43(sp)
  LB t0, 103(sp)
  SB t0, 103(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 84(sp)
  SB t0, 105(sp)
  LB t0, 105(sp)
  SB t0, 105(sp)
  LB t0, 83(sp)
  SB t0, 104(sp)
  LB t0, 104(sp)
  SB t0, 104(sp)
  LB s4, 82(sp)
  LB s5, 81(sp)
  LW t0, 152(sp)
  BEQ t0, zero, bb116
  # implict jump to bb72
bb72:   # loop depth 1
  SB s5, 77(sp)
  SB s4, 78(sp)
  LB t0, 104(sp)
  SB t0, 104(sp)
  LB t0, 104(sp)
  SB t0, 79(sp)
  LB t0, 105(sp)
  SB t0, 105(sp)
  LB t0, 105(sp)
  SB t0, 80(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB a3, 103(sp)
  LB t0, 43(sp)
  SB t0, 43(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  LB t0, 70(sp)
  SB t0, 70(sp)
  LB t0, 55(sp)
  SB t0, 55(sp)
  LB t0, 58(sp)
  SB t0, 58(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 113(sp)
  SB t0, 71(sp)
  LB t0, 19(sp)
  SB t0, 19(sp)
  LB t0, 107(sp)
  SB t0, 107(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB t0, 66(sp)
  SB t0, 66(sp)
  # implict jump to bb73
bb73:   # loop depth 1
  LW t0, 204(sp)
  XORI t0, t0, 47
  SW t0, 144(sp)
  LB t0, 66(sp)
  SB t0, 66(sp)
  LB t0, 31(sp)
  SB t0, 40(sp)
  LB t0, 40(sp)
  SB t0, 40(sp)
  LB t0, 107(sp)
  SB t0, 107(sp)
  LB t0, 19(sp)
  SB t0, 39(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 58(sp)
  SB t0, 58(sp)
  LB t0, 55(sp)
  SB t0, 55(sp)
  LB t0, 70(sp)
  SB t0, 70(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  LB t0, 43(sp)
  SB t0, 43(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 80(sp)
  SB t0, 17(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB t0, 79(sp)
  SB t0, 68(sp)
  LB t0, 68(sp)
  SB t0, 68(sp)
  LB s1, 78(sp)
  LB s2, 77(sp)
  LW t0, 144(sp)
  BEQ t0, zero, bb98
  # implict jump to bb74
bb74:   # loop depth 1
  SB s2, 118(sp)
  SB s1, 119(sp)
  LB t0, 68(sp)
  SB t0, 68(sp)
  LB t0, 68(sp)
  SB t0, 89(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB s0, 29(sp)
  LB t0, 43(sp)
  SB t0, 43(sp)
  LB t0, 43(sp)
  SB t0, 115(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  LB t0, 70(sp)
  SB t0, 47(sp)
  LB t0, 55(sp)
  SB t0, 55(sp)
  LB t0, 58(sp)
  SB t0, 72(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t0, 107(sp)
  SB t0, 107(sp)
  LB t0, 40(sp)
  SB t0, 40(sp)
  LB t0, 66(sp)
  SB t0, 66(sp)
  # implict jump to bb75
bb75:   # loop depth 1
  LW t0, 204(sp)
  XORI s5, t0, 37
  LB t0, 66(sp)
  SB t0, 66(sp)
  LB t0, 66(sp)
  SB t0, 95(sp)
  LB t0, 40(sp)
  SB t0, 40(sp)
  LB t0, 40(sp)
  SB t0, 108(sp)
  LB t0, 107(sp)
  SB t0, 107(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t0, 39(sp)
  SB t0, 24(sp)
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 72(sp)
  SB t0, 72(sp)
  LB t0, 55(sp)
  SB t0, 55(sp)
  LB t0, 47(sp)
  SB t0, 47(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  LB t0, 115(sp)
  SB t0, 67(sp)
  SB s0, 21(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB t0, 89(sp)
  SB t0, 20(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 119(sp)
  SB t0, 111(sp)
  LB t0, 111(sp)
  SB t0, 111(sp)
  LB t0, 118(sp)
  SB t0, 25(sp)
  LB t0, 25(sp)
  SB t0, 25(sp)
  BEQ s5, zero, bb80
  # implict jump to bb76
bb76:   # loop depth 1
  LB t0, 25(sp)
  SB t0, 25(sp)
  LB t0, 111(sp)
  SB t0, 111(sp)
  LB t0, 20(sp)
  SB t0, 117(sp)
  LB t0, 17(sp)
  SB t0, 116(sp)
  LB t0, 21(sp)
  SB t0, 26(sp)
  SB a3, 27(sp)
  LB t0, 67(sp)
  SB t0, 48(sp)
  LB t0, 48(sp)
  SB t0, 48(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  LB t0, 47(sp)
  SB t0, 47(sp)
  LB t0, 55(sp)
  SB t0, 73(sp)
  LB t0, 72(sp)
  SB t0, 72(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB a4, 23(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB a1, 24(sp)
  LB t0, 107(sp)
  SB t0, 107(sp)
  LB t0, 108(sp)
  SB t0, 108(sp)
  LB t4, 95(sp)
  # implict jump to bb77
bb77:   # loop depth 1
  LD t0, 320(sp)
  LW a2, 0(t0)
  ADDI t5, zero, 32
  SB t4, 97(sp)
  LB t0, 108(sp)
  SB t0, 108(sp)
  LB t0, 108(sp)
  SB t0, 98(sp)
  LB t0, 107(sp)
  SB t0, 107(sp)
  LB t0, 107(sp)
  SB t0, 99(sp)
  SB a1, 32(sp)
  LD t0, 384(sp)
  SH2ADD a6, a2, t0
  ADDIW t0, a2, 1
  SW t0, 196(sp)
  SW t5, 0(a6)
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB t0, 71(sp)
  SB t0, 63(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  SB a4, 23(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 72(sp)
  SB t0, 72(sp)
  LB t0, 72(sp)
  SB t0, 62(sp)
  LB t0, 73(sp)
  SB t0, 73(sp)
  LB t0, 47(sp)
  SB t0, 74(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  LB t0, 75(sp)
  SB t0, 0(sp)
  LB t0, 48(sp)
  SB t0, 48(sp)
  LB t0, 27(sp)
  SB t0, 103(sp)
  LB t0, 26(sp)
  SB t0, 29(sp)
  LB t0, 116(sp)
  SB t0, 110(sp)
  LB t0, 117(sp)
  SB t0, 102(sp)
  LB t0, 111(sp)
  SB t0, 111(sp)
  LB s2, 25(sp)
  SB s2, 90(sp)
  LB t0, 111(sp)
  SB t0, 111(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 110(sp)
  SB t0, 110(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 103(sp)
  SB t0, 103(sp)
  LB t0, 48(sp)
  SB t0, 48(sp)
  LB t0, 48(sp)
  SB t0, 9(sp)
  LB t0, 0(sp)
  SB t0, 0(sp)
  LB t0, 74(sp)
  SB t0, 74(sp)
  LB t0, 73(sp)
  SB t0, 73(sp)
  LB t0, 62(sp)
  SB t0, 62(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 63(sp)
  SB t0, 63(sp)
  LB t0, 32(sp)
  SB t0, 32(sp)
  LB t0, 99(sp)
  SB t0, 109(sp)
  LB t0, 109(sp)
  SB t0, 109(sp)
  LB t0, 98(sp)
  SB t0, 106(sp)
  LB t0, 106(sp)
  SB t0, 106(sp)
  LB t0, 97(sp)
  SB t0, 66(sp)
  LB t0, 66(sp)
  SB t0, 66(sp)
  LD t0, 320(sp)
  LW t1, 196(sp)
  SW t1, 0(t0)
  # implict jump to bb78
bb78:   # loop depth 1
  LD t0, 336(sp)
  LW a6, 0(t0)
  LB t0, 66(sp)
  SB t0, 66(sp)
  LB t0, 106(sp)
  SB t0, 106(sp)
  LB t0, 109(sp)
  SB t0, 109(sp)
  LB t0, 32(sp)
  SB t0, 32(sp)
  LB t0, 63(sp)
  SB t0, 63(sp)
  ADDIW t0, a6, 1
  SW t0, 164(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LD t0, 336(sp)
  LW t1, 164(sp)
  SW t1, 0(t0)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 62(sp)
  SB t0, 62(sp)
  LB t0, 73(sp)
  SB t0, 73(sp)
  LB t0, 74(sp)
  SB t0, 74(sp)
  LB t0, 0(sp)
  SB t0, 75(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  LB t0, 9(sp)
  SB t0, 14(sp)
  LB t0, 103(sp)
  SB t0, 103(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 110(sp)
  SB t0, 110(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 111(sp)
  SB t0, 111(sp)
  LB t0, 90(sp)
  SB t0, 65(sp)
  LB t0, 65(sp)
  SB t0, 65(sp)
  LW t0, 192(sp)
  LW t1, 164(sp)
  BLT t1, t0, bb79
  JAL zero, bb3
bb79:   # loop depth 1
  LB t0, 66(sp)
  SB t0, 66(sp)
  LB t0, 66(sp)
  SB t0, 93(sp)
  LB t0, 106(sp)
  SB t0, 106(sp)
  LB t0, 106(sp)
  SB t0, 100(sp)
  LB t0, 109(sp)
  SB t0, 109(sp)
  LB t0, 32(sp)
  SB t0, 32(sp)
  LB t0, 63(sp)
  SB t0, 63(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 62(sp)
  SB t0, 62(sp)
  LB t0, 73(sp)
  SB t0, 73(sp)
  LB t0, 74(sp)
  SB t0, 74(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  LB t0, 14(sp)
  SB t0, 14(sp)
  LB t0, 103(sp)
  SB t0, 103(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 110(sp)
  SB t0, 110(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 111(sp)
  SB t0, 111(sp)
  LB t0, 65(sp)
  SB t0, 65(sp)
  LW t0, 164(sp)
  SW t0, 164(sp)
  JAL zero, bb63
bb80:   # loop depth 1
  LB t0, 25(sp)
  SB t0, 25(sp)
  LB t0, 111(sp)
  SB t0, 111(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB t0, 21(sp)
  SB t0, 21(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  LB t0, 47(sp)
  SB t0, 47(sp)
  LB t0, 55(sp)
  SB t0, 55(sp)
  LB t0, 72(sp)
  SB t0, 72(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB t0, 24(sp)
  SB t0, 24(sp)
  LB t0, 107(sp)
  SB t0, 107(sp)
  # implict jump to bb81
bb81:   # loop depth 2
  LD t0, 400(sp)
  LW a4, 0(t0)
  LB t0, 107(sp)
  SB t0, 107(sp)
  LB t0, 24(sp)
  SB t0, 24(sp)
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LD t0, 392(sp)
  SH2ADD a4, a4, t0
  LB t0, 72(sp)
  SB t0, 72(sp)
  LW s5, 0(a4)
  LB t0, 55(sp)
  SB t0, 55(sp)
  LB t0, 47(sp)
  SB t0, 47(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  XORI s1, s5, 42
  LB t0, 21(sp)
  SB t0, 21(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 111(sp)
  SB t0, 111(sp)
  LB t0, 25(sp)
  SB t0, 25(sp)
  BEQ s1, zero, bb97
  # implict jump to bb82
bb82:   # loop depth 2
  XORI s0, s5, 47
  SLTIU t4, s0, 1
  # implict jump to bb83
bb83:   # loop depth 2
  BNE t4, zero, bb96
  # implict jump to bb84
bb84:   # loop depth 2
  XORI s1, s5, 37
  SLTIU t0, s1, 1
  SB t0, 108(sp)
  LB t0, 108(sp)
  SB t0, 108(sp)
  # implict jump to bb85
bb85:   # loop depth 2
  LB t0, 108(sp)
  SB t0, 108(sp)
  LB t0, 108(sp)
  BNE t0, zero, bb95
  # implict jump to bb86
bb86:   # loop depth 2
  XORI s2, s5, 94
  SLTIU s2, s2, 1
  # implict jump to bb87
bb87:   # loop depth 2
  SB s2, 101(sp)
  LB t0, 101(sp)
  BNE t0, zero, bb89
  # implict jump to bb88
bb88:   # loop depth 1
  LD t0, 400(sp)
  LW s3, 0(t0)
  ADDI s6, zero, 37
  LB t0, 25(sp)
  SB t0, 25(sp)
  LB t0, 111(sp)
  SB t0, 111(sp)
  LB t0, 20(sp)
  SB t0, 117(sp)
  LB t0, 17(sp)
  SB t0, 116(sp)
  ADDIW t5, s3, 1
  LD t0, 392(sp)
  SH2ADD a6, s3, t0
  LD t0, 400(sp)
  SW t5, 0(t0)
  LB t0, 21(sp)
  SB t0, 26(sp)
  SB a3, 27(sp)
  LB t0, 67(sp)
  SB t0, 48(sp)
  LB t0, 48(sp)
  SB t0, 48(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  LB t0, 47(sp)
  SB t0, 47(sp)
  LB t0, 55(sp)
  SB t0, 73(sp)
  LB t0, 72(sp)
  SB t0, 72(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB a4, 23(sp)
  LB t0, 101(sp)
  SB t0, 56(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB a1, 24(sp)
  LB t0, 107(sp)
  SB t0, 107(sp)
  LB t0, 108(sp)
  SB t0, 108(sp)
  SW s6, 4(a6)
  JAL zero, bb77
bb89:   # loop depth 2
  LD t0, 400(sp)
  LW s3, 0(t0)
  ADDI t0, zero, 32
  SW t0, 140(sp)
  ADDIW s4, s3, -1
  LD t0, 392(sp)
  SH2ADD s3, s3, t0
  LD t0, 400(sp)
  SW s4, 0(t0)
  LW s3, 0(s3)
  LD t0, 328(sp)
  SW s3, 0(t0)
  LD t0, 320(sp)
  LW s5, 0(t0)
  LD t0, 384(sp)
  SH2ADD s6, s5, t0
  ADDIW s5, s5, 2
  LW t0, 140(sp)
  SW t0, 0(s6)
  SW s3, 4(s6)
  LD t0, 320(sp)
  SW s5, 0(t0)
  BEQ s4, zero, bb94
  # implict jump to bb90
bb90:   # loop depth 2
  ADDI s5, zero, 1
  # implict jump to bb91
bb91:   # loop depth 2
  BEQ s5, zero, bb88
  # implict jump to bb92
bb92:   # loop depth 2
  # implict jump to bb93
bb93:   # loop depth 2
  LB t0, 25(sp)
  SB t0, 25(sp)
  LB t0, 111(sp)
  SB t0, 111(sp)
  LB t0, 20(sp)
  SB t0, 20(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB t0, 21(sp)
  SB t0, 21(sp)
  LB t0, 67(sp)
  SB t0, 67(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  LB t0, 47(sp)
  SB t0, 47(sp)
  LB t0, 55(sp)
  SB t0, 55(sp)
  LB t0, 72(sp)
  SB t0, 72(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB t0, 24(sp)
  SB t0, 24(sp)
  LB t0, 107(sp)
  SB t0, 107(sp)
  JAL zero, bb81
bb94:   # loop depth 2
  ADD s5, zero, zero
  JAL zero, bb91
bb95:   # loop depth 2
  ADDI s2, zero, 1
  JAL zero, bb87
bb96:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 108(sp)
  JAL zero, bb85
bb97:   # loop depth 2
  ADDI t4, zero, 1
  JAL zero, bb83
bb98:   # loop depth 1
  LB t0, 68(sp)
  SB t0, 68(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB s0, 29(sp)
  LB t0, 43(sp)
  SB t0, 43(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  LB t0, 70(sp)
  SB t0, 47(sp)
  LB t0, 55(sp)
  SB t0, 55(sp)
  LB t0, 58(sp)
  SB t0, 72(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t0, 107(sp)
  SB t0, 107(sp)
  LB t0, 40(sp)
  SB t0, 40(sp)
  LB t0, 66(sp)
  SB t0, 66(sp)
  # implict jump to bb99
bb99:   # loop depth 2
  LD t0, 400(sp)
  LW s3, 0(t0)
  LB t0, 66(sp)
  SB t0, 66(sp)
  LB t0, 40(sp)
  SB t0, 40(sp)
  LB t0, 107(sp)
  SB t0, 107(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LD t0, 392(sp)
  SH2ADD s3, s3, t0
  LB t0, 72(sp)
  SB t0, 72(sp)
  LW s5, 0(s3)
  LB t0, 55(sp)
  SB t0, 55(sp)
  LB t0, 47(sp)
  SB t0, 47(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  LB t0, 43(sp)
  SB t0, 43(sp)
  XORI s3, s5, 42
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB t0, 68(sp)
  SB t0, 68(sp)
  BEQ s3, zero, bb115
  # implict jump to bb100
bb100:   # loop depth 2
  XORI s3, s5, 47
  SLTIU t0, s3, 1
  SB t0, 69(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  # implict jump to bb101
bb101:   # loop depth 2
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 69(sp)
  BNE t0, zero, bb114
  # implict jump to bb102
bb102:   # loop depth 2
  XORI s4, s5, 37
  SLTIU t0, s4, 1
  SB t0, 23(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  # implict jump to bb103
bb103:   # loop depth 2
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 23(sp)
  BNE t0, zero, bb113
  # implict jump to bb104
bb104:   # loop depth 2
  XORI s5, s5, 94
  SLTIU s5, s5, 1
  # implict jump to bb105
bb105:   # loop depth 2
  SB s5, 96(sp)
  LB t0, 96(sp)
  BNE t0, zero, bb107
  # implict jump to bb106
bb106:   # loop depth 1
  LD t0, 400(sp)
  LW s6, 0(t0)
  ADDI t0, zero, 47
  SW t0, 168(sp)
  SB s2, 118(sp)
  SB s1, 119(sp)
  LB t0, 68(sp)
  SB t0, 68(sp)
  LB t0, 68(sp)
  SB t0, 89(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  ADDIW t5, s6, 1
  LD t0, 392(sp)
  SH2ADD s7, s6, t0
  LD t0, 400(sp)
  SW t5, 0(t0)
  LB t0, 43(sp)
  SB t0, 43(sp)
  LB t0, 43(sp)
  SB t0, 115(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  LB t0, 47(sp)
  SB t0, 47(sp)
  LB t0, 55(sp)
  SB t0, 55(sp)
  LB t0, 72(sp)
  SB t0, 72(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 96(sp)
  SB t0, 71(sp)
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t0, 107(sp)
  SB t0, 107(sp)
  LB t0, 40(sp)
  SB t0, 40(sp)
  LB t0, 66(sp)
  SB t0, 66(sp)
  LW t0, 168(sp)
  SW t0, 4(s7)
  JAL zero, bb75
bb107:   # loop depth 2
  LD t0, 400(sp)
  LW s6, 0(t0)
  ADDI t0, zero, 32
  SW t0, 136(sp)
  ADDIW s7, s6, -1
  LD t0, 392(sp)
  SH2ADD s6, s6, t0
  LD t0, 400(sp)
  SW s7, 0(t0)
  LW t0, 0(s6)
  SW t0, 200(sp)
  LD t0, 328(sp)
  LW t1, 200(sp)
  SW t1, 0(t0)
  LD t0, 320(sp)
  LW s6, 0(t0)
  LD t0, 384(sp)
  SH2ADD s8, s6, t0
  ADDIW s6, s6, 2
  LW t0, 136(sp)
  SW t0, 0(s8)
  LW t0, 200(sp)
  SW t0, 4(s8)
  LD t0, 320(sp)
  SW s6, 0(t0)
  BEQ s7, zero, bb112
  # implict jump to bb108
bb108:   # loop depth 2
  ADDI s7, zero, 1
  # implict jump to bb109
bb109:   # loop depth 2
  BEQ s7, zero, bb106
  # implict jump to bb110
bb110:   # loop depth 2
  # implict jump to bb111
bb111:   # loop depth 2
  LB t0, 68(sp)
  SB t0, 68(sp)
  LB t0, 17(sp)
  SB t0, 17(sp)
  LB t0, 43(sp)
  SB t0, 43(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  LB t0, 47(sp)
  SB t0, 47(sp)
  LB t0, 55(sp)
  SB t0, 55(sp)
  LB t0, 72(sp)
  SB t0, 72(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 39(sp)
  SB t0, 39(sp)
  LB t0, 107(sp)
  SB t0, 107(sp)
  LB t0, 40(sp)
  SB t0, 40(sp)
  LB t0, 66(sp)
  SB t0, 66(sp)
  JAL zero, bb99
bb112:   # loop depth 2
  ADD s7, zero, zero
  JAL zero, bb109
bb113:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb105
bb114:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 23(sp)
  JAL zero, bb103
bb115:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 69(sp)
  JAL zero, bb101
bb116:   # loop depth 1
  LB t0, 104(sp)
  SB t0, 104(sp)
  LB t0, 105(sp)
  SB t0, 105(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB a3, 103(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  LB t0, 55(sp)
  SB t0, 55(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 113(sp)
  SB t0, 71(sp)
  LB t0, 19(sp)
  SB t0, 19(sp)
  LB t0, 107(sp)
  SB t0, 107(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB t0, 66(sp)
  SB t0, 66(sp)
  # implict jump to bb117
bb117:   # loop depth 2
  LD t0, 400(sp)
  LW t4, 0(t0)
  LB t0, 66(sp)
  SB t0, 66(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB t0, 107(sp)
  SB t0, 107(sp)
  LB t0, 19(sp)
  SB t0, 19(sp)
  LB t0, 71(sp)
  SB t0, 71(sp)
  LD t0, 392(sp)
  SH2ADD t4, t4, t0
  LB t0, 56(sp)
  SB t0, 56(sp)
  LW s6, 0(t4)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 55(sp)
  SB t0, 55(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  XORI t4, s6, 42
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 105(sp)
  SB t0, 105(sp)
  LB t0, 104(sp)
  SB t0, 104(sp)
  BEQ t4, zero, bb133
  # implict jump to bb118
bb118:   # loop depth 2
  XORI t4, s6, 47
  SLTIU t0, t4, 1
  SB t0, 43(sp)
  LB t0, 43(sp)
  SB t0, 43(sp)
  # implict jump to bb119
bb119:   # loop depth 2
  LB t0, 43(sp)
  SB t0, 43(sp)
  LB t0, 43(sp)
  BNE t0, zero, bb132
  # implict jump to bb120
bb120:   # loop depth 2
  XORI s2, s6, 37
  SLTIU t0, s2, 1
  SB t0, 70(sp)
  LB t0, 70(sp)
  SB t0, 70(sp)
  # implict jump to bb121
bb121:   # loop depth 2
  LB t0, 70(sp)
  SB t0, 70(sp)
  LB t0, 70(sp)
  BNE t0, zero, bb131
  # implict jump to bb122
bb122:   # loop depth 2
  XORI s3, s6, 94
  SLTIU s6, s3, 1
  # implict jump to bb123
bb123:   # loop depth 2
  SB s6, 94(sp)
  LB t0, 94(sp)
  BNE t0, zero, bb125
  # implict jump to bb124
bb124:   # loop depth 1
  LD t0, 400(sp)
  LW s11, 0(t0)
  ADDI t0, zero, 42
  SW t0, 172(sp)
  SB s5, 77(sp)
  SB s4, 78(sp)
  LB t0, 104(sp)
  SB t0, 104(sp)
  LB t0, 104(sp)
  SB t0, 79(sp)
  LB t0, 105(sp)
  SB t0, 105(sp)
  LB t0, 105(sp)
  SB t0, 80(sp)
  ADDIW s0, s11, 1
  LD t0, 392(sp)
  SH2ADD t0, s11, t0
  SD t0, 376(sp)
  LD t0, 400(sp)
  SW s0, 0(t0)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 43(sp)
  SB t0, 43(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  LB t0, 70(sp)
  SB t0, 70(sp)
  LB t0, 55(sp)
  SB t0, 55(sp)
  LB t0, 94(sp)
  SB t0, 58(sp)
  LB t0, 58(sp)
  SB t0, 58(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB t0, 19(sp)
  SB t0, 19(sp)
  LB t0, 107(sp)
  SB t0, 107(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB t0, 66(sp)
  SB t0, 66(sp)
  LW t0, 172(sp)
  LD t1, 376(sp)
  SW t0, 4(t1)
  JAL zero, bb73
bb125:   # loop depth 2
  LD t0, 400(sp)
  LW s3, 0(t0)
  ADDI t0, zero, 32
  SW t0, 120(sp)
  ADDIW s7, s3, -1
  LD t0, 392(sp)
  SH2ADD s3, s3, t0
  LD t0, 400(sp)
  SW s7, 0(t0)
  LW s3, 0(s3)
  LD t0, 328(sp)
  SW s3, 0(t0)
  LD t0, 320(sp)
  LW s8, 0(t0)
  LD t0, 384(sp)
  SH2ADD t0, s8, t0
  SD t0, 440(sp)
  ADDIW s8, s8, 2
  LW t0, 120(sp)
  LD t1, 440(sp)
  SW t0, 0(t1)
  LD t0, 440(sp)
  SW s3, 4(t0)
  LD t0, 320(sp)
  SW s8, 0(t0)
  BEQ s7, zero, bb130
  # implict jump to bb126
bb126:   # loop depth 2
  ADDI s10, zero, 1
  # implict jump to bb127
bb127:   # loop depth 2
  BEQ s10, zero, bb124
  # implict jump to bb128
bb128:   # loop depth 2
  # implict jump to bb129
bb129:   # loop depth 2
  LB t0, 104(sp)
  SB t0, 104(sp)
  LB t0, 105(sp)
  SB t0, 105(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  LB t0, 55(sp)
  SB t0, 55(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 71(sp)
  SB t0, 71(sp)
  LB t0, 19(sp)
  SB t0, 19(sp)
  LB t0, 107(sp)
  SB t0, 107(sp)
  LB t0, 31(sp)
  SB t0, 31(sp)
  LB t0, 66(sp)
  SB t0, 66(sp)
  JAL zero, bb117
bb130:   # loop depth 2
  ADD s10, zero, zero
  JAL zero, bb127
bb131:   # loop depth 2
  ADDI s6, zero, 1
  JAL zero, bb123
bb132:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 70(sp)
  JAL zero, bb121
bb133:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 43(sp)
  JAL zero, bb119
bb134:   # loop depth 1
  LB t0, 46(sp)
  SB t0, 46(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 59(sp)
  SB t0, 59(sp)
  LB t0, 62(sp)
  SB t0, 58(sp)
  LB t0, 58(sp)
  SB t0, 58(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 63(sp)
  SB t0, 113(sp)
  LB t0, 113(sp)
  SB t0, 113(sp)
  LB t0, 107(sp)
  SB t0, 107(sp)
  LB t0, 106(sp)
  SB t0, 106(sp)
  LB t0, 66(sp)
  SB t0, 66(sp)
  # implict jump to bb135
bb135:   # loop depth 2
  LD t0, 400(sp)
  LW t4, 0(t0)
  LB t0, 66(sp)
  SB t0, 66(sp)
  LB t0, 106(sp)
  SB t0, 106(sp)
  LB t0, 107(sp)
  SB t0, 107(sp)
  LB t0, 113(sp)
  SB t0, 113(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LD t0, 392(sp)
  SH2ADD t4, t4, t0
  LB t0, 23(sp)
  SB t0, 23(sp)
  LW s5, 0(t4)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 58(sp)
  SB t0, 58(sp)
  LB t0, 59(sp)
  SB t0, 59(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  XORI a5, s5, 43
  LB t0, 46(sp)
  SB t0, 46(sp)
  BEQ a5, zero, bb157
  # implict jump to bb136
bb136:   # loop depth 2
  XORI a5, s5, 45
  SLTIU t0, a5, 1
  SB t0, 29(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  # implict jump to bb137
bb137:   # loop depth 2
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 29(sp)
  BNE t0, zero, bb156
  # implict jump to bb138
bb138:   # loop depth 2
  XORI t4, s5, 42
  SLTIU t0, t4, 1
  SB t0, 103(sp)
  LB t0, 103(sp)
  SB t0, 103(sp)
  # implict jump to bb139
bb139:   # loop depth 2
  LB t0, 103(sp)
  SB t0, 103(sp)
  LB t0, 103(sp)
  BNE t0, zero, bb155
  # implict jump to bb140
bb140:   # loop depth 2
  XORI s2, s5, 47
  SLTIU t0, s2, 1
  SB t0, 75(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  # implict jump to bb141
bb141:   # loop depth 2
  LB t0, 75(sp)
  SB t0, 75(sp)
  LB t0, 75(sp)
  BNE t0, zero, bb154
  # implict jump to bb142
bb142:   # loop depth 2
  XORI s3, s5, 37
  SLTIU t0, s3, 1
  SB t0, 55(sp)
  LB t0, 55(sp)
  SB t0, 55(sp)
  # implict jump to bb143
bb143:   # loop depth 2
  LB t0, 55(sp)
  SB t0, 55(sp)
  LB t0, 55(sp)
  BNE t0, zero, bb153
  # implict jump to bb144
bb144:   # loop depth 2
  XORI s4, s5, 94
  SLTIU s4, s4, 1
  # implict jump to bb145
bb145:   # loop depth 2
  SB s4, 92(sp)
  LB t0, 92(sp)
  BNE t0, zero, bb147
  # implict jump to bb146
bb146:   # loop depth 1
  LD t0, 400(sp)
  LW s6, 0(t0)
  ADDI t0, zero, 45
  SW t0, 124(sp)
  SB s1, 81(sp)
  SB s9, 82(sp)
  LB t0, 46(sp)
  SB t0, 46(sp)
  LB t0, 46(sp)
  SB t0, 83(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 57(sp)
  SB t0, 84(sp)
  ADDIW t3, s6, 1
  LD t0, 392(sp)
  SH2ADD s6, s6, t0
  LD t0, 400(sp)
  SW t3, 0(t0)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 103(sp)
  SB t0, 103(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 41(sp)
  SB t0, 114(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  LB t0, 59(sp)
  SB t0, 70(sp)
  LB t0, 70(sp)
  SB t0, 70(sp)
  LB t0, 55(sp)
  SB t0, 55(sp)
  LB t0, 58(sp)
  SB t0, 58(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 113(sp)
  SB t0, 113(sp)
  LB t0, 92(sp)
  SB t0, 32(sp)
  LB t0, 107(sp)
  SB t0, 107(sp)
  LB t0, 106(sp)
  SB t0, 106(sp)
  LB t0, 66(sp)
  SB t0, 66(sp)
  LW t0, 124(sp)
  SW t0, 4(s6)
  JAL zero, bb71
bb147:   # loop depth 2
  LD t0, 400(sp)
  LW s5, 0(t0)
  ADDI t0, zero, 32
  SW t0, 128(sp)
  ADDIW s6, s5, -1
  LD t0, 392(sp)
  SH2ADD s5, s5, t0
  LD t0, 400(sp)
  SW s6, 0(t0)
  LW t0, 0(s5)
  SW t0, 208(sp)
  LD t0, 328(sp)
  LW t1, 208(sp)
  SW t1, 0(t0)
  LD t0, 320(sp)
  LW s5, 0(t0)
  LD t0, 384(sp)
  SH2ADD t0, s5, t0
  SD t0, 432(sp)
  ADDIW s5, s5, 2
  LW t0, 128(sp)
  LD t1, 432(sp)
  SW t0, 0(t1)
  LD t0, 432(sp)
  LW t1, 208(sp)
  SW t1, 4(t0)
  LD t0, 320(sp)
  SW s5, 0(t0)
  BEQ s6, zero, bb152
  # implict jump to bb148
bb148:   # loop depth 2
  ADDI s5, zero, 1
  # implict jump to bb149
bb149:   # loop depth 2
  BEQ s5, zero, bb146
  # implict jump to bb150
bb150:   # loop depth 2
  # implict jump to bb151
bb151:   # loop depth 2
  LB t0, 46(sp)
  SB t0, 46(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 59(sp)
  SB t0, 59(sp)
  LB t0, 58(sp)
  SB t0, 58(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 113(sp)
  SB t0, 113(sp)
  LB t0, 107(sp)
  SB t0, 107(sp)
  LB t0, 106(sp)
  SB t0, 106(sp)
  LB t0, 66(sp)
  SB t0, 66(sp)
  JAL zero, bb135
bb152:   # loop depth 2
  ADD s5, zero, zero
  JAL zero, bb149
bb153:   # loop depth 2
  ADDI s4, zero, 1
  JAL zero, bb145
bb154:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 55(sp)
  JAL zero, bb143
bb155:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 75(sp)
  JAL zero, bb141
bb156:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 103(sp)
  JAL zero, bb139
bb157:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 29(sp)
  JAL zero, bb137
bb158:   # loop depth 1
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 103(sp)
  SB t0, 103(sp)
  LB t0, 60(sp)
  SB t0, 60(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  LB t0, 59(sp)
  SB t0, 59(sp)
  LB t0, 61(sp)
  SB t0, 61(sp)
  LB t0, 62(sp)
  SB t0, 62(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 63(sp)
  SB t0, 63(sp)
  LB t0, 32(sp)
  SB t0, 32(sp)
  LB t0, 106(sp)
  SB t0, 106(sp)
  LB t1, 66(sp)
  # implict jump to bb159
bb159:   # loop depth 2
  LD t0, 400(sp)
  LW a5, 0(t0)
  SB t1, 66(sp)
  LB t0, 106(sp)
  SB t0, 106(sp)
  LB t0, 32(sp)
  SB t0, 32(sp)
  LB t0, 63(sp)
  SB t0, 63(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LD t0, 392(sp)
  SH2ADD a3, a5, t0
  LB t0, 23(sp)
  SB t0, 23(sp)
  LW t4, 0(a3)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 62(sp)
  SB t0, 62(sp)
  LB t0, 61(sp)
  SB t0, 61(sp)
  LB t0, 59(sp)
  SB t0, 59(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  XORI a4, t4, 43
  LB t0, 60(sp)
  SB t0, 60(sp)
  LB t0, 103(sp)
  SB t0, 103(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  BEQ a4, zero, bb181
  # implict jump to bb160
bb160:   # loop depth 2
  XORI a4, t4, 45
  SLTIU a4, a4, 1
  # implict jump to bb161
bb161:   # loop depth 2
  BNE a4, zero, bb180
  # implict jump to bb162
bb162:   # loop depth 2
  XORI a6, t4, 42
  SLTIU t0, a6, 1
  SB t0, 57(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  # implict jump to bb163
bb163:   # loop depth 2
  LB t0, 57(sp)
  SB t0, 57(sp)
  LB t0, 57(sp)
  BNE t0, zero, bb179
  # implict jump to bb164
bb164:   # loop depth 2
  XORI a7, t4, 47
  SLTIU a7, a7, 1
  # implict jump to bb165
bb165:   # loop depth 2
  BNE a7, zero, bb178
  # implict jump to bb166
bb166:   # loop depth 2
  XORI t3, t4, 37
  SLTIU t0, t3, 1
  SB t0, 107(sp)
  LB t0, 107(sp)
  SB t0, 107(sp)
  # implict jump to bb167
bb167:   # loop depth 2
  LB t0, 107(sp)
  SB t0, 107(sp)
  LB t0, 107(sp)
  BNE t0, zero, bb177
  # implict jump to bb168
bb168:   # loop depth 2
  XORI t4, t4, 94
  SLTIU t4, t4, 1
  # implict jump to bb169
bb169:   # loop depth 2
  SB t4, 91(sp)
  LB t0, 91(sp)
  BNE t0, zero, bb171
  # implict jump to bb170
bb170:   # loop depth 1
  LD t0, 400(sp)
  LW s1, 0(t0)
  ADDI t4, zero, 43
  SB a4, 85(sp)
  SB a7, 88(sp)
  LB t0, 91(sp)
  SB t0, 76(sp)
  LB t0, 57(sp)
  SB t0, 57(sp)
  ADDIW a4, s1, 1
  LD t0, 392(sp)
  SH2ADD a6, s1, t0
  LD t0, 400(sp)
  SW a4, 0(t0)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 103(sp)
  SB t0, 103(sp)
  LB t0, 60(sp)
  SB t0, 41(sp)
  LB t0, 41(sp)
  SB t0, 41(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  LB t0, 59(sp)
  SB t0, 59(sp)
  LB t0, 61(sp)
  SB t0, 61(sp)
  LB t0, 62(sp)
  SB t0, 62(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 63(sp)
  SB t0, 63(sp)
  LB t0, 32(sp)
  SB t0, 32(sp)
  LB t0, 107(sp)
  SB t0, 107(sp)
  LB t0, 106(sp)
  SB t0, 106(sp)
  LB t0, 66(sp)
  SB t0, 66(sp)
  SW t4, 4(a6)
  JAL zero, bb69
bb171:   # loop depth 2
  LD t0, 400(sp)
  LW t4, 0(t0)
  ADDI t0, zero, 32
  SW t0, 132(sp)
  ADDIW s1, t4, -1
  LD t0, 392(sp)
  SH2ADD t4, t4, t0
  LD t0, 400(sp)
  SW s1, 0(t0)
  LW t4, 0(t4)
  LD t0, 328(sp)
  SW t4, 0(t0)
  LD t0, 320(sp)
  LW s7, 0(t0)
  LD t0, 384(sp)
  SH2ADD s8, s7, t0
  ADDIW s7, s7, 2
  LW t0, 132(sp)
  SW t0, 0(s8)
  SW t4, 4(s8)
  LD t0, 320(sp)
  SW s7, 0(t0)
  BEQ s1, zero, bb176
  # implict jump to bb172
bb172:   # loop depth 2
  ADDI t4, zero, 1
  # implict jump to bb173
bb173:   # loop depth 2
  BEQ t4, zero, bb170
  # implict jump to bb174
bb174:   # loop depth 2
  # implict jump to bb175
bb175:   # loop depth 2
  LB t0, 29(sp)
  SB t0, 29(sp)
  LB t0, 103(sp)
  SB t0, 103(sp)
  LB t0, 60(sp)
  SB t0, 60(sp)
  LB t0, 75(sp)
  SB t0, 75(sp)
  LB t0, 59(sp)
  SB t0, 59(sp)
  LB t0, 61(sp)
  SB t0, 61(sp)
  LB t0, 62(sp)
  SB t0, 62(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 63(sp)
  SB t0, 63(sp)
  LB t0, 32(sp)
  SB t0, 32(sp)
  LB t0, 106(sp)
  SB t0, 106(sp)
  LB t1, 66(sp)
  JAL zero, bb159
bb176:   # loop depth 2
  ADD t4, zero, zero
  JAL zero, bb173
bb177:   # loop depth 2
  ADDI t4, zero, 1
  JAL zero, bb169
bb178:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 107(sp)
  JAL zero, bb167
bb179:   # loop depth 2
  ADDI a7, zero, 1
  JAL zero, bb165
bb180:   # loop depth 2
  ADDI t0, zero, 1
  SB t0, 57(sp)
  JAL zero, bb163
bb181:   # loop depth 2
  ADDI a4, zero, 1
  JAL zero, bb161
bb182:   # loop depth 1
  LD t0, 400(sp)
  LW s3, 0(t0)
  ADDIW s7, s3, -1
  LD t0, 392(sp)
  SH2ADD s3, s3, t0
  LD t0, 400(sp)
  SW s7, 0(t0)
  LW s3, 0(s3)
  XORI s6, s3, 40
  LD t0, 328(sp)
  SW s3, 0(t0)
  BNE s6, zero, bb183
  JAL zero, bb67
bb183:   # loop depth 1
  LD t0, 320(sp)
  LW s6, 0(t0)
  # implict jump to bb184
bb184:   # loop depth 2
  ADDI s3, zero, 32
  LD t0, 384(sp)
  SH2ADD t0, s6, t0
  SD t0, 416(sp)
  LD t0, 416(sp)
  SW s3, 0(t0)
  LD t0, 392(sp)
  SH2ADD s9, s7, t0
  LD t0, 328(sp)
  LW s8, 0(t0)
  ADDIW s7, s7, -1
  ADDIW s6, s6, 2
  LD t0, 416(sp)
  SW s8, 4(t0)
  LW s8, 0(s9)
  XORI s9, s8, 40
  LD t0, 328(sp)
  SW s8, 0(t0)
  BNE s9, zero, bb186
  # implict jump to bb185
bb185:   # loop depth 1
  LD t0, 400(sp)
  SW s7, 0(t0)
  LD t0, 320(sp)
  SW s6, 0(t0)
  JAL zero, bb67
bb186:   # loop depth 2
  JAL zero, bb184
bb187:   # loop depth 1
  LD t0, 400(sp)
  LW s3, 0(t0)
  ADDI s7, zero, 94
  ADDIW s6, s3, 1
  LD t0, 392(sp)
  SH2ADD s3, s3, t0
  LD t0, 400(sp)
  SW s6, 0(t0)
  SW s7, 4(s3)
  JAL zero, bb66
bb188:   # loop depth 1
  LD t0, 400(sp)
  LW s3, 0(t0)
  ADDI s7, zero, 40
  ADDIW s6, s3, 1
  LD t0, 392(sp)
  SH2ADD s3, s3, t0
  LD t0, 400(sp)
  SW s6, 0(t0)
  SW s7, 4(s3)
  JAL zero, bb65
bb189:   # loop depth 1
  LD t0, 320(sp)
  LW s6, 0(t0)
  LB t0, 65(sp)
  SB t0, 90(sp)
  LB t0, 111(sp)
  SB t0, 111(sp)
  LB t0, 102(sp)
  SB t0, 102(sp)
  LB t0, 86(sp)
  SB t0, 110(sp)
  LB t0, 110(sp)
  SB t0, 110(sp)
  LB t0, 29(sp)
  SB t0, 29(sp)
  LD t0, 384(sp)
  SH2ADD t1, s6, t0
  ADDIW t0, s6, 1
  SW t0, 160(sp)
  LW t0, 204(sp)
  SW t0, 0(t1)
  LB t0, 103(sp)
  SB t0, 103(sp)
  LB t0, 60(sp)
  SB t0, 9(sp)
  LB t0, 75(sp)
  SB t0, 0(sp)
  LB t0, 59(sp)
  SB t0, 74(sp)
  LB t0, 74(sp)
  SB t0, 74(sp)
  LB t0, 61(sp)
  SB t0, 73(sp)
  LB t0, 73(sp)
  SB t0, 73(sp)
  LB t0, 62(sp)
  SB t0, 62(sp)
  LB t0, 69(sp)
  SB t0, 69(sp)
  LB t0, 23(sp)
  SB t0, 23(sp)
  LB t0, 56(sp)
  SB t0, 56(sp)
  LB t0, 63(sp)
  SB t0, 63(sp)
  LB t0, 32(sp)
  SB t0, 32(sp)
  LB t0, 87(sp)
  SB t0, 109(sp)
  LB t0, 109(sp)
  SB t0, 109(sp)
  LB t0, 106(sp)
  SB t0, 106(sp)
  LB t0, 66(sp)
  SB t0, 66(sp)
  LD t0, 320(sp)
  LW t1, 160(sp)
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
