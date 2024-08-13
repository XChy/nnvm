.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
array:
.space 80

.section .data

sum:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -1104
  SD ra, 408(sp)
  SD s0, 416(sp)
  SD s1, 424(sp)
  SD s2, 432(sp)
  SD s3, 440(sp)
  SD s4, 448(sp)
  SD s5, 456(sp)
  SD s6, 464(sp)
  SD s7, 472(sp)
  SD s8, 480(sp)
  SD s9, 488(sp)
  SD s10, 496(sp)
  ADDI s9, zero, 19
  ADDI s8, zero, 18
  ADDI s7, zero, 17
  ADDI s6, zero, 16
  ADDI s5, zero, 15
  ADDI s4, zero, 14
  ADDI a0, zero, 13
  SW a0, 220(sp)
  ADDI s3, zero, 12
  ADDI s2, zero, 11
  ADDI a0, zero, 10
  SW a0, 316(sp)
  ADDI s1, zero, 9
  ADDI a0, zero, 8
  SW a0, 372(sp)
  ADDI a0, zero, 7
  SW a0, 180(sp)
  ADDI a0, zero, 6
  SW a0, 184(sp)
  ADDI a0, zero, 5
  SW a0, 192(sp)
  ADDI a0, zero, 4
  SW a0, 196(sp)
  ADDI a0, zero, 3
  SW a0, 200(sp)
  ADDI a0, zero, 2
  SW a0, 204(sp)
  ADDI a0, zero, 1
  SW a0, 208(sp)
  ADDI a0, zero, 0
  SW a0, 212(sp)
  LA a0, array
  SD a0, 680(sp)
  SLTI a0, s9, 20
  SB a0, 150(sp)
  LA a0, array
  SD a0, 688(sp)
  SLTI a0, s8, 20
  SB a0, 151(sp)
  LA a0, array
  SD a0, 832(sp)
  SLTI a0, s7, 20
  SB a0, 153(sp)
  LA a0, array
  SD a0, 840(sp)
  SLTI a0, s6, 20
  SB a0, 154(sp)
  LA a0, array
  SD a0, 848(sp)
  SLTI a0, s5, 20
  SB a0, 155(sp)
  LA a0, array
  SD a0, 696(sp)
  SLTI a0, s4, 20
  SB a0, 157(sp)
  LA a0, array
  SD a0, 704(sp)
  LW a0, 220(sp)
  SLTI a0, a0, 20
  SB a0, 158(sp)
  LA a0, array
  SD a0, 712(sp)
  SLTI a0, s3, 20
  SB a0, 159(sp)
  LA a0, array
  SD a0, 720(sp)
  SLTI a0, s2, 20
  SB a0, 164(sp)
  LA a0, array
  SD a0, 728(sp)
  LW a0, 316(sp)
  SLTI a0, a0, 20
  SB a0, 172(sp)
  LA a0, array
  SD a0, 672(sp)
  SLTI a0, s1, 20
  SB a0, 170(sp)
  LA a0, array
  SD a0, 744(sp)
  LW a0, 372(sp)
  SLTI a0, a0, 20
  SB a0, 169(sp)
  LA a0, array
  SD a0, 912(sp)
  LW a0, 180(sp)
  SLTI a0, a0, 20
  SB a0, 167(sp)
  LA a0, array
  SD a0, 920(sp)
  LW a0, 184(sp)
  SLTI a0, a0, 20
  SB a0, 166(sp)
  LA a0, array
  SD a0, 512(sp)
  LW a0, 192(sp)
  SLTI a0, a0, 20
  SB a0, 163(sp)
  LA a0, array
  SD a0, 928(sp)
  LW a0, 196(sp)
  SLTI a0, a0, 20
  SB a0, 156(sp)
  LA a0, array
  SD a0, 752(sp)
  LW a0, 200(sp)
  SLTI a0, a0, 20
  SB a0, 137(sp)
  LA a0, array
  SD a0, 944(sp)
  LW a0, 204(sp)
  SLTI s0, a0, 20
  LA a0, array
  SD a0, 1024(sp)
  LW a0, 208(sp)
  SLTI a0, a0, 20
  LW s1, 212(sp)
  SLTI s1, s1, 20
  SB s1, 108(sp)
  ADD s1, zero, zero
  SW s1, 348(sp)
  LB s1, 150(sp)
  XORI s1, s1, 1
  SB s1, 126(sp)
  LB s1, 151(sp)
  XORI s1, s1, 1
  SB s1, 124(sp)
  LB s1, 153(sp)
  XORI s1, s1, 1
  SB s1, 123(sp)
  LB s1, 154(sp)
  XORI s1, s1, 1
  SB s1, 121(sp)
  LB s1, 155(sp)
  XORI s1, s1, 1
  SB s1, 120(sp)
  LB s1, 157(sp)
  XORI s1, s1, 1
  SB s1, 110(sp)
  LB s1, 158(sp)
  XORI s1, s1, 1
  SB s1, 117(sp)
  LB s1, 159(sp)
  XORI s1, s1, 1
  SB s1, 116(sp)
  LB s1, 164(sp)
  XORI s1, s1, 1
  SB s1, 115(sp)
  LB s1, 172(sp)
  XORI s1, s1, 1
  SB s1, 113(sp)
  LB s1, 170(sp)
  XORI s1, s1, 1
  SB s1, 112(sp)
  LB s1, 169(sp)
  XORI s1, s1, 1
  SB s1, 111(sp)
  LB s1, 167(sp)
  XORI s1, s1, 1
  SB s1, 145(sp)
  LB s1, 166(sp)
  XORI s1, s1, 1
  SB s1, 144(sp)
  LB s1, 163(sp)
  XORI s1, s1, 1
  SB s1, 143(sp)
  LB s1, 156(sp)
  XORI s1, s1, 1
  SB s1, 141(sp)
  LB s1, 137(sp)
  XORI s1, s1, 1
  SB s1, 139(sp)
  XORI s0, s0, 1
  SB s0, 128(sp)
  XORI a0, a0, 1
  SB a0, 135(sp)
  LB a0, 108(sp)
  XORI a0, a0, 1
  SB a0, 133(sp)
  # implict jump to bb1
bb1:   # loop depth 1
  LA a0, sum
  SD a0, 504(sp)
  LW s0, 348(sp)
  SLT a0, zero, s0
  SB a0, 101(sp)
  LA a0, sum
  SD a0, 888(sp)
  LD a0, 504(sp)
  LW a0, 0(a0)
  LB s1, 101(sp)
  XORI s1, s1, 1
  SB s1, 114(sp)
  LB s1, 133(sp)
  LB s2, 114(sp)
  OR s1, s2, s1
  SB s1, 118(sp)
  ADDIW a0, a0, 1
  LD s1, 888(sp)
  SW a0, 0(s1)
  LB a0, 118(sp)
  BNE a0, zero, bb363
  # implict jump to bb2
bb2:   # loop depth 1
  LA a0, array
  SD a0, 768(sp)
  ADDI a0, zero, 1
  SW a0, 188(sp)
  ADDI a0, zero, 1
  LW s1, 188(sp)
  LD s2, 768(sp)
  SW s1, 0(s2)
  # implict jump to bb3
bb3:   # loop depth 1
  BNE a0, zero, bb359
  # implict jump to bb4
bb4:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  BNE a0, zero, bb355
  # implict jump to bb6
bb6:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  BNE a0, zero, bb351
  # implict jump to bb8
bb8:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb9
bb9:   # loop depth 1
  BNE a0, zero, bb347
  # implict jump to bb10
bb10:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb11
bb11:   # loop depth 1
  BNE a0, zero, bb343
  # implict jump to bb12
bb12:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb13
bb13:   # loop depth 1
  BNE a0, zero, bb339
  # implict jump to bb14
bb14:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb15
bb15:   # loop depth 1
  BNE a0, zero, bb335
  # implict jump to bb16
bb16:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb17
bb17:   # loop depth 1
  BNE a0, zero, bb331
  # implict jump to bb18
bb18:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb19
bb19:   # loop depth 1
  BNE a0, zero, bb327
  # implict jump to bb20
bb20:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb21
bb21:   # loop depth 1
  BNE a0, zero, bb323
  # implict jump to bb22
bb22:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb23
bb23:   # loop depth 1
  BNE a0, zero, bb319
  # implict jump to bb24
bb24:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb25
bb25:   # loop depth 1
  BNE a0, zero, bb315
  # implict jump to bb26
bb26:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb27
bb27:   # loop depth 1
  BNE a0, zero, bb311
  # implict jump to bb28
bb28:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb29
bb29:   # loop depth 1
  BNE a0, zero, bb307
  # implict jump to bb30
bb30:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb31
bb31:   # loop depth 1
  BNE a0, zero, bb303
  # implict jump to bb32
bb32:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb33
bb33:   # loop depth 1
  BNE a0, zero, bb299
  # implict jump to bb34
bb34:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb35
bb35:   # loop depth 1
  BNE a0, zero, bb295
  # implict jump to bb36
bb36:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb37
bb37:   # loop depth 1
  BNE a0, zero, bb291
  # implict jump to bb38
bb38:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb39
bb39:   # loop depth 1
  BNE a0, zero, bb289
  # implict jump to bb40
bb40:   # loop depth 1
  ADDIW a0, s0, 1
  SW a0, 348(sp)
  LW a0, 348(sp)
  SLTI s0, a0, 20
  BNE s0, zero, bb288
  # implict jump to bb41
bb41:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb42
bb42:   # loop depth 1
  LA s1, sum
  SD s1, 656(sp)
  SLT a0, zero, s0
  SB a0, 26(sp)
  LA a0, sum
  SD a0, 648(sp)
  LD a0, 656(sp)
  LW a0, 0(a0)
  LB s1, 26(sp)
  XORI s1, s1, 1
  SB s1, 51(sp)
  LB s1, 133(sp)
  LB s2, 51(sp)
  OR s1, s2, s1
  SB s1, 52(sp)
  ADDIW a0, a0, 2
  LD s1, 648(sp)
  SW a0, 0(s1)
  LB a0, 52(sp)
  BNE a0, zero, bb287
  # implict jump to bb43
bb43:   # loop depth 1
  LA a0, array
  SD a0, 776(sp)
  ADD a0, zero, zero
  LD s1, 776(sp)
  SW zero, 0(s1)
  # implict jump to bb44
bb44:   # loop depth 1
  BNE a0, zero, bb286
  # implict jump to bb45
bb45:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 1
  SW s1, 240(sp)
  LW s1, 240(sp)
  SLT s1, s1, s0
  SB s1, 25(sp)
  LA s1, sum
  SD s1, 640(sp)
  LW a0, 0(a0)
  LB s1, 25(sp)
  XORI s1, s1, 1
  SB s1, 53(sp)
  LB s1, 135(sp)
  LB s2, 53(sp)
  OR s1, s2, s1
  SB s1, 54(sp)
  ADDIW a0, a0, 2
  LD s1, 640(sp)
  SW a0, 0(s1)
  LB a0, 54(sp)
  BNE a0, zero, bb285
  # implict jump to bb46
bb46:   # loop depth 1
  LA a0, array
  LD s1, 1024(sp)
  SW zero, 4(s1)
  LW a0, 0(a0)
  # implict jump to bb47
bb47:   # loop depth 1
  SLTU a0, zero, a0
  # implict jump to bb48
bb48:   # loop depth 1
  BNE a0, zero, bb284
  # implict jump to bb49
bb49:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 2
  SW s1, 236(sp)
  LW s1, 236(sp)
  SLT s1, s1, s0
  SB s1, 24(sp)
  LA s1, sum
  SD s1, 632(sp)
  LW a0, 0(a0)
  LB s1, 24(sp)
  XORI s1, s1, 1
  SB s1, 14(sp)
  LB s1, 128(sp)
  LB s2, 14(sp)
  OR s1, s2, s1
  SB s1, 1(sp)
  ADDIW a0, a0, 2
  LD s1, 632(sp)
  SW a0, 0(s1)
  LB a0, 1(sp)
  BNE a0, zero, bb283
  # implict jump to bb50
bb50:   # loop depth 1
  LD a0, 944(sp)
  SW zero, 8(a0)
  LD a0, 1024(sp)
  LW a0, 4(a0)
  # implict jump to bb51
bb51:   # loop depth 1
  SLTU a0, zero, a0
  # implict jump to bb52
bb52:   # loop depth 1
  BNE a0, zero, bb282
  # implict jump to bb53
bb53:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 3
  SW s1, 232(sp)
  LW s1, 232(sp)
  SLT s1, s1, s0
  SB s1, 23(sp)
  LA s1, sum
  SD s1, 624(sp)
  LW a0, 0(a0)
  LB s1, 23(sp)
  XORI s1, s1, 1
  SB s1, 2(sp)
  LB s1, 139(sp)
  LB s2, 2(sp)
  OR s1, s2, s1
  SB s1, 3(sp)
  ADDIW a0, a0, 2
  LD s1, 624(sp)
  SW a0, 0(s1)
  LB a0, 3(sp)
  BNE a0, zero, bb281
  # implict jump to bb54
bb54:   # loop depth 1
  LD a0, 752(sp)
  SW zero, 12(a0)
  LD a0, 944(sp)
  LW a0, 8(a0)
  # implict jump to bb55
bb55:   # loop depth 1
  SLTU a0, zero, a0
  # implict jump to bb56
bb56:   # loop depth 1
  BNE a0, zero, bb280
  # implict jump to bb57
bb57:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 4
  SW s1, 228(sp)
  LW s1, 228(sp)
  SLT s1, s1, s0
  SB s1, 22(sp)
  LA s1, sum
  SD s1, 616(sp)
  LW a0, 0(a0)
  LB s1, 22(sp)
  XORI s1, s1, 1
  SB s1, 4(sp)
  LB s1, 141(sp)
  LB s2, 4(sp)
  OR s1, s2, s1
  SB s1, 5(sp)
  ADDIW a0, a0, 2
  LD s1, 616(sp)
  SW a0, 0(s1)
  LB a0, 5(sp)
  BNE a0, zero, bb279
  # implict jump to bb58
bb58:   # loop depth 1
  LD a0, 928(sp)
  SW zero, 16(a0)
  LD a0, 752(sp)
  LW a0, 12(a0)
  # implict jump to bb59
bb59:   # loop depth 1
  SLTU a0, zero, a0
  # implict jump to bb60
bb60:   # loop depth 1
  BNE a0, zero, bb278
  # implict jump to bb61
bb61:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 5
  SW s1, 224(sp)
  LW s1, 224(sp)
  SLT s1, s1, s0
  SB s1, 21(sp)
  LA s1, sum
  SD s1, 608(sp)
  LW a0, 0(a0)
  LB s1, 21(sp)
  XORI s1, s1, 1
  SB s1, 6(sp)
  LB s1, 143(sp)
  LB s2, 6(sp)
  OR s1, s2, s1
  SB s1, 82(sp)
  ADDIW a0, a0, 2
  LD s1, 608(sp)
  SW a0, 0(s1)
  LB a0, 82(sp)
  BNE a0, zero, bb277
  # implict jump to bb62
bb62:   # loop depth 1
  LD a0, 512(sp)
  SW zero, 20(a0)
  LD a0, 928(sp)
  LW a0, 16(a0)
  # implict jump to bb63
bb63:   # loop depth 1
  SLTU a0, zero, a0
  # implict jump to bb64
bb64:   # loop depth 1
  BNE a0, zero, bb276
  # implict jump to bb65
bb65:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 6
  SW s1, 364(sp)
  LW s1, 364(sp)
  SLT s1, s1, s0
  SB s1, 20(sp)
  LA s1, sum
  SD s1, 520(sp)
  LW a0, 0(a0)
  LB s1, 20(sp)
  XORI s1, s1, 1
  SB s1, 81(sp)
  LB s1, 144(sp)
  LB s2, 81(sp)
  OR s1, s2, s1
  SB s1, 80(sp)
  ADDIW a0, a0, 2
  LD s1, 520(sp)
  SW a0, 0(s1)
  LB a0, 80(sp)
  BNE a0, zero, bb275
  # implict jump to bb66
bb66:   # loop depth 1
  LD a0, 920(sp)
  SW zero, 24(a0)
  LD a0, 512(sp)
  LW a0, 20(a0)
  # implict jump to bb67
bb67:   # loop depth 1
  SLTU a0, zero, a0
  # implict jump to bb68
bb68:   # loop depth 1
  BNE a0, zero, bb274
  # implict jump to bb69
bb69:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 7
  SW s1, 368(sp)
  LW s1, 368(sp)
  SLT s1, s1, s0
  SB s1, 19(sp)
  LA s1, sum
  SD s1, 592(sp)
  LW a0, 0(a0)
  LB s1, 19(sp)
  XORI s1, s1, 1
  SB s1, 79(sp)
  LB s1, 145(sp)
  LB s2, 79(sp)
  OR s1, s2, s1
  SB s1, 78(sp)
  ADDIW a0, a0, 2
  LD s1, 592(sp)
  SW a0, 0(s1)
  LB a0, 78(sp)
  BNE a0, zero, bb273
  # implict jump to bb70
bb70:   # loop depth 1
  LD a0, 912(sp)
  SW zero, 28(a0)
  LD a0, 920(sp)
  LW a0, 24(a0)
  # implict jump to bb71
bb71:   # loop depth 1
  SLTU a0, zero, a0
  # implict jump to bb72
bb72:   # loop depth 1
  BNE a0, zero, bb272
  # implict jump to bb73
bb73:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 8
  SW s1, 376(sp)
  LW s1, 376(sp)
  SLT s1, s1, s0
  SB s1, 18(sp)
  LA s1, sum
  SD s1, 584(sp)
  LW a0, 0(a0)
  LB s1, 18(sp)
  XORI s1, s1, 1
  SB s1, 77(sp)
  LB s1, 111(sp)
  LB s2, 77(sp)
  OR s1, s2, s1
  SB s1, 76(sp)
  ADDIW a0, a0, 2
  LD s1, 584(sp)
  SW a0, 0(s1)
  LB a0, 76(sp)
  BNE a0, zero, bb271
  # implict jump to bb74
bb74:   # loop depth 1
  LD a0, 744(sp)
  SW zero, 32(a0)
  LD a0, 912(sp)
  LW a0, 28(a0)
  # implict jump to bb75
bb75:   # loop depth 1
  SLTU a0, zero, a0
  # implict jump to bb76
bb76:   # loop depth 1
  BNE a0, zero, bb270
  # implict jump to bb77
bb77:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 9
  SW s1, 400(sp)
  LW s1, 400(sp)
  SLT s1, s1, s0
  SB s1, 17(sp)
  LA s1, sum
  SD s1, 576(sp)
  LW a0, 0(a0)
  LB s1, 17(sp)
  XORI s1, s1, 1
  SB s1, 75(sp)
  LB s1, 112(sp)
  LB s2, 75(sp)
  OR s1, s2, s1
  SB s1, 74(sp)
  ADDIW a0, a0, 2
  LD s1, 576(sp)
  SW a0, 0(s1)
  LB a0, 74(sp)
  BNE a0, zero, bb269
  # implict jump to bb78
bb78:   # loop depth 1
  LD a0, 672(sp)
  SW zero, 36(a0)
  LD a0, 744(sp)
  LW a0, 32(a0)
  # implict jump to bb79
bb79:   # loop depth 1
  SLTU a0, zero, a0
  # implict jump to bb80
bb80:   # loop depth 1
  BNE a0, zero, bb268
  # implict jump to bb81
bb81:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 10
  SW s1, 360(sp)
  LW s1, 360(sp)
  SLT s1, s1, s0
  SB s1, 16(sp)
  LA s1, sum
  SD s1, 568(sp)
  LW a0, 0(a0)
  LB s1, 16(sp)
  XORI s1, s1, 1
  SB s1, 73(sp)
  LB s1, 113(sp)
  LB s2, 73(sp)
  OR s1, s2, s1
  SB s1, 72(sp)
  ADDIW a0, a0, 2
  LD s1, 568(sp)
  SW a0, 0(s1)
  LB a0, 72(sp)
  BNE a0, zero, bb267
  # implict jump to bb82
bb82:   # loop depth 1
  LD a0, 728(sp)
  SW zero, 40(a0)
  LD a0, 672(sp)
  LW a0, 36(a0)
  # implict jump to bb83
bb83:   # loop depth 1
  SLTU a0, zero, a0
  # implict jump to bb84
bb84:   # loop depth 1
  BNE a0, zero, bb266
  # implict jump to bb85
bb85:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 11
  SW s1, 356(sp)
  LW s1, 356(sp)
  SLT s1, s1, s0
  SB s1, 15(sp)
  LA s1, sum
  SD s1, 560(sp)
  LW a0, 0(a0)
  LB s1, 15(sp)
  XORI s1, s1, 1
  SB s1, 71(sp)
  LB s1, 115(sp)
  LB s2, 71(sp)
  OR s1, s2, s1
  SB s1, 70(sp)
  ADDIW a0, a0, 2
  LD s1, 560(sp)
  SW a0, 0(s1)
  LB a0, 70(sp)
  BNE a0, zero, bb265
  # implict jump to bb86
bb86:   # loop depth 1
  LD a0, 720(sp)
  SW zero, 44(a0)
  LD a0, 728(sp)
  LW a0, 40(a0)
  # implict jump to bb87
bb87:   # loop depth 1
  SLTU a0, zero, a0
  # implict jump to bb88
bb88:   # loop depth 1
  BNE a0, zero, bb264
  # implict jump to bb89
bb89:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 12
  SW s1, 344(sp)
  LW s1, 344(sp)
  SLT s1, s1, s0
  SB s1, 0(sp)
  LA s1, sum
  SD s1, 552(sp)
  LW a0, 0(a0)
  LB s1, 0(sp)
  XORI s1, s1, 1
  SB s1, 55(sp)
  LB s1, 116(sp)
  LB s2, 55(sp)
  OR s1, s2, s1
  SB s1, 68(sp)
  ADDIW a0, a0, 2
  LD s1, 552(sp)
  SW a0, 0(s1)
  LB a0, 68(sp)
  BNE a0, zero, bb263
  # implict jump to bb90
bb90:   # loop depth 1
  LD a0, 712(sp)
  SW zero, 48(a0)
  LD a0, 720(sp)
  LW a0, 44(a0)
  # implict jump to bb91
bb91:   # loop depth 1
  SLTU a0, zero, a0
  # implict jump to bb92
bb92:   # loop depth 1
  BNE a0, zero, bb262
  # implict jump to bb93
bb93:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 13
  SW s1, 340(sp)
  LW s1, 340(sp)
  SLT s1, s1, s0
  SB s1, 13(sp)
  LA s1, sum
  SD s1, 544(sp)
  LW a0, 0(a0)
  LB s1, 13(sp)
  XORI s1, s1, 1
  SB s1, 67(sp)
  LB s1, 117(sp)
  LB s2, 67(sp)
  OR s1, s2, s1
  SB s1, 66(sp)
  ADDIW a0, a0, 2
  LD s1, 544(sp)
  SW a0, 0(s1)
  LB a0, 66(sp)
  BNE a0, zero, bb261
  # implict jump to bb94
bb94:   # loop depth 1
  LD a0, 704(sp)
  SW zero, 52(a0)
  LD a0, 712(sp)
  LW a0, 48(a0)
  # implict jump to bb95
bb95:   # loop depth 1
  SLTU a0, zero, a0
  # implict jump to bb96
bb96:   # loop depth 1
  BNE a0, zero, bb260
  # implict jump to bb97
bb97:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 14
  SW s1, 336(sp)
  LW s1, 336(sp)
  SLT s1, s1, s0
  SB s1, 12(sp)
  LA s1, sum
  SD s1, 536(sp)
  LW a0, 0(a0)
  LB s1, 12(sp)
  XORI s1, s1, 1
  SB s1, 65(sp)
  LB s1, 110(sp)
  LB s2, 65(sp)
  OR s1, s2, s1
  SB s1, 64(sp)
  ADDIW a0, a0, 2
  LD s1, 536(sp)
  SW a0, 0(s1)
  LB a0, 64(sp)
  BNE a0, zero, bb259
  # implict jump to bb98
bb98:   # loop depth 1
  LD a0, 696(sp)
  SW zero, 56(a0)
  LD a0, 704(sp)
  LW a0, 52(a0)
  # implict jump to bb99
bb99:   # loop depth 1
  SLTU a0, zero, a0
  # implict jump to bb100
bb100:   # loop depth 1
  BNE a0, zero, bb258
  # implict jump to bb101
bb101:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 15
  SW s1, 332(sp)
  LW s1, 332(sp)
  SLT s1, s1, s0
  SB s1, 11(sp)
  LA s1, sum
  SD s1, 528(sp)
  LW a0, 0(a0)
  LB s1, 11(sp)
  XORI s1, s1, 1
  SB s1, 63(sp)
  LB s1, 120(sp)
  LB s2, 63(sp)
  OR s1, s2, s1
  SB s1, 62(sp)
  ADDIW a0, a0, 2
  LD s1, 528(sp)
  SW a0, 0(s1)
  LB a0, 62(sp)
  BNE a0, zero, bb257
  # implict jump to bb102
bb102:   # loop depth 1
  LD a0, 848(sp)
  SW zero, 60(a0)
  LD a0, 696(sp)
  LW a0, 56(a0)
  # implict jump to bb103
bb103:   # loop depth 1
  SLTU a0, zero, a0
  # implict jump to bb104
bb104:   # loop depth 1
  BNE a0, zero, bb256
  # implict jump to bb105
bb105:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 16
  SW s1, 328(sp)
  LW s1, 328(sp)
  SLT s1, s1, s0
  SB s1, 10(sp)
  LA s1, sum
  SD s1, 600(sp)
  LW a0, 0(a0)
  LB s1, 10(sp)
  XORI s1, s1, 1
  SB s1, 61(sp)
  LB s1, 121(sp)
  LB s2, 61(sp)
  OR s1, s2, s1
  SB s1, 60(sp)
  ADDIW a0, a0, 2
  LD s1, 600(sp)
  SW a0, 0(s1)
  LB a0, 60(sp)
  BNE a0, zero, bb255
  # implict jump to bb106
bb106:   # loop depth 1
  LD a0, 840(sp)
  SW zero, 64(a0)
  LD a0, 848(sp)
  LW a0, 60(a0)
  # implict jump to bb107
bb107:   # loop depth 1
  SLTU a0, zero, a0
  # implict jump to bb108
bb108:   # loop depth 1
  BNE a0, zero, bb254
  # implict jump to bb109
bb109:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 17
  SW s1, 324(sp)
  LW s1, 324(sp)
  SLT s1, s1, s0
  SB s1, 9(sp)
  LA s1, sum
  SD s1, 800(sp)
  LW a0, 0(a0)
  LB s1, 9(sp)
  XORI s1, s1, 1
  SB s1, 59(sp)
  LB s1, 123(sp)
  LB s2, 59(sp)
  OR s1, s2, s1
  SB s1, 58(sp)
  ADDIW a0, a0, 2
  LD s1, 800(sp)
  SW a0, 0(s1)
  LB a0, 58(sp)
  BNE a0, zero, bb253
  # implict jump to bb110
bb110:   # loop depth 1
  LD a0, 832(sp)
  SW zero, 68(a0)
  LD a0, 840(sp)
  LW a0, 64(a0)
  # implict jump to bb111
bb111:   # loop depth 1
  SLTU a0, zero, a0
  # implict jump to bb112
bb112:   # loop depth 1
  BNE a0, zero, bb252
  # implict jump to bb113
bb113:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 18
  SW s1, 268(sp)
  LW s1, 268(sp)
  SLT s1, s1, s0
  SB s1, 8(sp)
  LA s1, sum
  SD s1, 792(sp)
  LW a0, 0(a0)
  LB s1, 8(sp)
  XORI s1, s1, 1
  SB s1, 57(sp)
  LB s1, 124(sp)
  LB s2, 57(sp)
  OR s1, s2, s1
  SB s1, 56(sp)
  ADDIW a0, a0, 2
  LD s1, 792(sp)
  SW a0, 0(s1)
  LB a0, 56(sp)
  BNE a0, zero, bb251
  # implict jump to bb114
bb114:   # loop depth 1
  LD a0, 688(sp)
  SW zero, 72(a0)
  LD a0, 832(sp)
  LW a0, 68(a0)
  # implict jump to bb115
bb115:   # loop depth 1
  SLTU a0, zero, a0
  # implict jump to bb116
bb116:   # loop depth 1
  BNE a0, zero, bb119
  # implict jump to bb117
bb117:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 19
  SW s1, 320(sp)
  LW s1, 320(sp)
  SLT s1, s1, s0
  SB s1, 7(sp)
  LA s1, sum
  SD s1, 784(sp)
  LW a0, 0(a0)
  LB s1, 7(sp)
  XORI s1, s1, 1
  SB s1, 69(sp)
  LB s1, 126(sp)
  LB s2, 69(sp)
  OR s1, s2, s1
  SB s1, 109(sp)
  ADDIW a0, a0, 2
  LD s1, 784(sp)
  SW a0, 0(s1)
  LB a0, 109(sp)
  BNE a0, zero, bb119
  # implict jump to bb118
bb118:   # loop depth 1
  LD a0, 680(sp)
  SW zero, 76(a0)
  # implict jump to bb119
bb119:   # loop depth 1
  ADDIW s0, s0, 1
  SLTI a0, s0, 20
  SB a0, 130(sp)
  LB a0, 130(sp)
  BNE a0, zero, bb250
  # implict jump to bb120
bb120:   # loop depth 0
  ADDI s0, zero, 1
  # implict jump to bb121
bb121:   # loop depth 1
  SLTI a0, s0, 20
  BNE a0, zero, bb244
  # implict jump to bb122
bb122:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb123
bb123:   # loop depth 1
  BNE a0, zero, bb243
  # implict jump to bb124
bb124:   # loop depth 0
  LA a0, sum
  LA s7, sum
  LB s0, 133(sp)
  OR s0, zero, s0
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  SW a0, 0(s7)
  BNE s0, zero, bb242
  # implict jump to bb125
bb125:   # loop depth 0
  LA a0, array
  LW a0, 0(a0)
  # implict jump to bb126
bb126:   # loop depth 0
  BNE a0, zero, bb238
  # implict jump to bb127
bb127:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb128
bb128:   # loop depth 0
  BNE a0, zero, bb237
  # implict jump to bb129
bb129:   # loop depth 0
  LA a0, sum
  LA s2, sum
  LB s1, 128(sp)
  OR s1, zero, s1
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  SW a0, 0(s2)
  BNE s1, zero, bb236
  # implict jump to bb130
bb130:   # loop depth 0
  LD a0, 944(sp)
  LW a0, 8(a0)
  # implict jump to bb131
bb131:   # loop depth 0
  SLTU a0, zero, a0
  XORI a0, a0, 1
  SLTU a0, zero, a0
  # implict jump to bb132
bb132:   # loop depth 0
  BNE a0, zero, bb134
  # implict jump to bb133
bb133:   # loop depth 0
  LA a0, sum
  LA s1, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  SW a0, 0(s1)
  # implict jump to bb134
bb134:   # loop depth 0
  LA a0, sum
  LA s2, sum
  LB s1, 141(sp)
  OR s1, zero, s1
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  SW a0, 0(s2)
  BNE s1, zero, bb235
  # implict jump to bb135
bb135:   # loop depth 0
  LD a0, 928(sp)
  LW a0, 16(a0)
  # implict jump to bb136
bb136:   # loop depth 0
  SLTU a0, zero, a0
  XORI a0, a0, 1
  BNE a0, zero, bb234
  # implict jump to bb137
bb137:   # loop depth 0
  LA a0, sum
  LA s4, sum
  LB s2, 143(sp)
  OR s2, zero, s2
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  SW a0, 0(s4)
  BNE s2, zero, bb233
  # implict jump to bb138
bb138:   # loop depth 0
  LD a0, 512(sp)
  LW a0, 20(a0)
  # implict jump to bb139
bb139:   # loop depth 0
  BNE a0, zero, bb229
  # implict jump to bb140
bb140:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb141
bb141:   # loop depth 0
  BNE a0, zero, bb225
  # implict jump to bb142
bb142:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb143
bb143:   # loop depth 0
  # implict jump to bb144
bb144:   # loop depth 0
  BNE a0, zero, bb146
  # implict jump to bb145
bb145:   # loop depth 0
  LA a0, sum
  LA s2, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  SW a0, 0(s2)
  # implict jump to bb146
bb146:   # loop depth 0
  LA a0, sum
  LA s4, sum
  LB s2, 112(sp)
  OR s2, zero, s2
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  SW a0, 0(s4)
  BNE s2, zero, bb224
  # implict jump to bb147
bb147:   # loop depth 0
  LD a0, 672(sp)
  LW a0, 36(a0)
  # implict jump to bb148
bb148:   # loop depth 0
  BNE a0, zero, bb220
  # implict jump to bb149
bb149:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb150
bb150:   # loop depth 0
  BNE a0, zero, bb219
  # implict jump to bb151
bb151:   # loop depth 0
  LA a0, sum
  LA s4, sum
  LB s2, 115(sp)
  OR s2, zero, s2
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  SW a0, 0(s4)
  BNE s2, zero, bb218
  # implict jump to bb152
bb152:   # loop depth 0
  LD a0, 720(sp)
  LW a0, 44(a0)
  # implict jump to bb153
bb153:   # loop depth 0
  SLTU a0, zero, a0
  XORI a0, a0, 1
  SLTU a0, zero, a0
  # implict jump to bb154
bb154:   # loop depth 0
  BNE a0, zero, bb217
  # implict jump to bb155
bb155:   # loop depth 0
  LA a0, sum
  LA s4, sum
  LB s2, 116(sp)
  OR s2, zero, s2
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  SW a0, 0(s4)
  BNE s2, zero, bb216
  # implict jump to bb156
bb156:   # loop depth 0
  LD a0, 712(sp)
  LW a0, 48(a0)
  # implict jump to bb157
bb157:   # loop depth 0
  SLTU a0, zero, a0
  XORI a0, a0, 1
  SLTU a0, zero, a0
  # implict jump to bb158
bb158:   # loop depth 0
  BNE a0, zero, bb215
  # implict jump to bb159
bb159:   # loop depth 0
  LA a0, sum
  LA s4, sum
  LB s2, 117(sp)
  OR s2, zero, s2
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  SW a0, 0(s4)
  BNE s2, zero, bb214
  # implict jump to bb160
bb160:   # loop depth 0
  LD a0, 704(sp)
  LW a0, 52(a0)
  # implict jump to bb161
bb161:   # loop depth 0
  SLTU a0, zero, a0
  XORI a0, a0, 1
  SLTU a0, zero, a0
  # implict jump to bb162
bb162:   # loop depth 0
  BNE a0, zero, bb166
  # implict jump to bb163
bb163:   # loop depth 0
  LA a0, sum
  LA s4, sum
  LB s2, 110(sp)
  OR s2, zero, s2
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  SW a0, 0(s4)
  BNE s2, zero, bb213
  # implict jump to bb164
bb164:   # loop depth 0
  LD a0, 696(sp)
  LW a0, 56(a0)
  # implict jump to bb165
bb165:   # loop depth 0
  BNE a0, zero, bb212
  # implict jump to bb166
bb166:   # loop depth 0
  LA a0, sum
  LA s2, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  SW a0, 0(s2)
  BNE s0, zero, bb211
  # implict jump to bb167
bb167:   # loop depth 0
  LA a0, array
  LW a0, 0(a0)
  # implict jump to bb168
bb168:   # loop depth 0
  BNE a0, zero, bb207
  # implict jump to bb169
bb169:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb170
bb170:   # loop depth 0
  BNE a0, zero, bb203
  # implict jump to bb171
bb171:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb172
bb172:   # loop depth 0
  BNE a0, zero, bb199
  # implict jump to bb173
bb173:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb174
bb174:   # loop depth 0
  BNE a0, zero, bb198
  # implict jump to bb175
bb175:   # loop depth 0
  LA a0, sum
  LA s1, sum
  LB s0, 143(sp)
  OR s0, zero, s0
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  SW a0, 0(s1)
  BNE s0, zero, bb197
  # implict jump to bb176
bb176:   # loop depth 0
  LD a0, 512(sp)
  LW a0, 20(a0)
  # implict jump to bb177
bb177:   # loop depth 0
  SLTU a0, zero, a0
  # implict jump to bb178
bb178:   # loop depth 0
  BNE a0, zero, bb196
  # implict jump to bb179
bb179:   # loop depth 0
  LA a0, sum
  LA s1, sum
  LB s0, 144(sp)
  OR s0, zero, s0
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  SW a0, 0(s1)
  BNE s0, zero, bb195
  # implict jump to bb180
bb180:   # loop depth 0
  LD a0, 920(sp)
  LW a0, 24(a0)
  # implict jump to bb181
bb181:   # loop depth 0
  BNE a0, zero, bb191
  # implict jump to bb182
bb182:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb183
bb183:   # loop depth 0
  # implict jump to bb184
bb184:   # loop depth 0
  BNE a0, zero, bb190
  # implict jump to bb185
bb185:   # loop depth 0
  LA a0, sum
  LA s1, sum
  LB s0, 111(sp)
  OR s0, zero, s0
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  SW a0, 0(s1)
  BNE s0, zero, bb189
  # implict jump to bb186
bb186:   # loop depth 0
  LD a0, 744(sp)
  LW a0, 32(a0)
  # implict jump to bb187
bb187:   # loop depth 0
  SLTU a0, zero, a0
  # implict jump to bb188
bb188:   # loop depth 0
  LA s0, sum
  LW s0, 0(s0)
  ADDW a0, s0, a0
  CALL putint
  ADD a0, zero, zero
  LD ra, 408(sp)
  LD s0, 416(sp)
  LD s1, 424(sp)
  LD s2, 432(sp)
  LD s3, 440(sp)
  LD s4, 448(sp)
  LD s5, 456(sp)
  LD s6, 464(sp)
  LD s7, 472(sp)
  LD s8, 480(sp)
  LD s9, 488(sp)
  LD s10, 496(sp)
  ADDI sp, sp, 1104
  JALR zero, 0(ra)
bb189:   # loop depth 0
  ADD a0, zero, zero
  JAL zero, bb187
bb190:   # loop depth 0
  ADDI a0, zero, 1
  JAL zero, bb188
bb191:   # loop depth 0
  LA a0, sum
  LA s1, sum
  LB s0, 145(sp)
  OR s0, zero, s0
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  SW a0, 0(s1)
  BNE s0, zero, bb194
  # implict jump to bb192
bb192:   # loop depth 0
  LD a0, 912(sp)
  LW a0, 28(a0)
  # implict jump to bb193
bb193:   # loop depth 0
  SLTU a0, zero, a0
  XORI a0, a0, 1
  SLTU a0, zero, a0
  JAL zero, bb183
bb194:   # loop depth 0
  ADD a0, zero, zero
  JAL zero, bb193
bb195:   # loop depth 0
  ADD a0, zero, zero
  JAL zero, bb181
bb196:   # loop depth 0
  ADDI a0, zero, 1
  JAL zero, bb184
bb197:   # loop depth 0
  ADD a0, zero, zero
  JAL zero, bb177
bb198:   # loop depth 0
  ADDI a0, zero, 1
  JAL zero, bb178
bb199:   # loop depth 0
  LA a0, sum
  LA s0, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  SW a0, 0(s0)
  BNE s1, zero, bb202
  # implict jump to bb200
bb200:   # loop depth 0
  LD a0, 928(sp)
  LW a0, 16(a0)
  # implict jump to bb201
bb201:   # loop depth 0
  SLTU a0, zero, a0
  XORI a0, a0, 1
  SLTU a0, zero, a0
  JAL zero, bb174
bb202:   # loop depth 0
  ADD a0, zero, zero
  JAL zero, bb201
bb203:   # loop depth 0
  LA a0, sum
  LA s2, sum
  LB s0, 139(sp)
  OR s0, zero, s0
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  SW a0, 0(s2)
  BNE s0, zero, bb206
  # implict jump to bb204
bb204:   # loop depth 0
  LD a0, 752(sp)
  LW a0, 12(a0)
  # implict jump to bb205
bb205:   # loop depth 0
  SLTU a0, zero, a0
  XORI a0, a0, 1
  SLTU a0, zero, a0
  JAL zero, bb172
bb206:   # loop depth 0
  ADD a0, zero, zero
  JAL zero, bb205
bb207:   # loop depth 0
  LA a0, sum
  LA s2, sum
  LB s0, 128(sp)
  OR s0, zero, s0
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  SW a0, 0(s2)
  BNE s0, zero, bb210
  # implict jump to bb208
bb208:   # loop depth 0
  LD a0, 944(sp)
  LW a0, 8(a0)
  # implict jump to bb209
bb209:   # loop depth 0
  SLTU a0, zero, a0
  JAL zero, bb170
bb210:   # loop depth 0
  ADD a0, zero, zero
  JAL zero, bb209
bb211:   # loop depth 0
  ADD a0, zero, zero
  JAL zero, bb168
bb212:   # loop depth 0
  LA a0, sum
  LA s2, sum
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  SW a0, 0(s2)
  JAL zero, bb166
bb213:   # loop depth 0
  ADD a0, zero, zero
  JAL zero, bb165
bb214:   # loop depth 0
  ADD a0, zero, zero
  JAL zero, bb161
bb215:   # loop depth 0
  ADDI a0, zero, 1
  JAL zero, bb162
bb216:   # loop depth 0
  ADD a0, zero, zero
  JAL zero, bb157
bb217:   # loop depth 0
  ADDI a0, zero, 1
  JAL zero, bb158
bb218:   # loop depth 0
  ADD a0, zero, zero
  JAL zero, bb153
bb219:   # loop depth 0
  ADDI a0, zero, 1
  JAL zero, bb154
bb220:   # loop depth 0
  LA a0, sum
  LA s4, sum
  LB s2, 113(sp)
  OR s2, zero, s2
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  SW a0, 0(s4)
  BNE s2, zero, bb223
  # implict jump to bb221
bb221:   # loop depth 0
  LD a0, 728(sp)
  LW a0, 40(a0)
  # implict jump to bb222
bb222:   # loop depth 0
  SLTU a0, zero, a0
  XORI a0, a0, 1
  SLTU a0, zero, a0
  JAL zero, bb150
bb223:   # loop depth 0
  ADD a0, zero, zero
  JAL zero, bb222
bb224:   # loop depth 0
  ADD a0, zero, zero
  JAL zero, bb148
bb225:   # loop depth 0
  LA a0, sum
  LA s4, sum
  LB s2, 145(sp)
  OR s2, zero, s2
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  SW a0, 0(s4)
  BNE s2, zero, bb228
  # implict jump to bb226
bb226:   # loop depth 0
  LD a0, 912(sp)
  LW a0, 28(a0)
  # implict jump to bb227
bb227:   # loop depth 0
  SLTU a0, zero, a0
  JAL zero, bb143
bb228:   # loop depth 0
  ADD a0, zero, zero
  JAL zero, bb227
bb229:   # loop depth 0
  LA a0, sum
  LA s4, sum
  LB s2, 144(sp)
  OR s2, zero, s2
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  SW a0, 0(s4)
  BNE s2, zero, bb232
  # implict jump to bb230
bb230:   # loop depth 0
  LD a0, 920(sp)
  LW a0, 24(a0)
  # implict jump to bb231
bb231:   # loop depth 0
  SLTU a0, zero, a0
  XORI a0, a0, 1
  SLTU a0, zero, a0
  JAL zero, bb141
bb232:   # loop depth 0
  ADD a0, zero, zero
  JAL zero, bb231
bb233:   # loop depth 0
  ADD a0, zero, zero
  JAL zero, bb139
bb234:   # loop depth 0
  ADDI a0, zero, 1
  JAL zero, bb144
bb235:   # loop depth 0
  ADD a0, zero, zero
  JAL zero, bb136
bb236:   # loop depth 0
  ADD a0, zero, zero
  JAL zero, bb131
bb237:   # loop depth 0
  ADDI a0, zero, 1
  JAL zero, bb132
bb238:   # loop depth 0
  LA a0, sum
  LA s7, sum
  LB s1, 135(sp)
  OR s1, zero, s1
  LW a0, 0(a0)
  ADDIW a0, a0, 3
  SW a0, 0(s7)
  BNE s1, zero, bb241
  # implict jump to bb239
bb239:   # loop depth 0
  LD a0, 1024(sp)
  LW a0, 4(a0)
  # implict jump to bb240
bb240:   # loop depth 0
  SLTU a0, zero, a0
  JAL zero, bb128
bb241:   # loop depth 0
  ADD a0, zero, zero
  JAL zero, bb240
bb242:   # loop depth 0
  ADD a0, zero, zero
  JAL zero, bb126
bb243:   # loop depth 1
  ADDIW s0, s0, 1
  JAL zero, bb121
bb244:   # loop depth 1
  LA s7, sum
  ADDIW a0, s0, -1
  SLTI s9, a0, 20
  SLT s8, a0, s0
  LW s7, 0(s7)
  LA s10, sum
  XORI s9, s9, 1
  XORI s8, s8, 1
  OR s8, s8, s9
  ADDIW s7, s7, 1
  SW s7, 0(s10)
  BNE s8, zero, bb249
  # implict jump to bb245
bb245:   # loop depth 1
  LA s8, array
  ADDI s9, zero, 1
  SLTIU s7, a0, 1
  SH2ADD a0, s0, s8
  SW s9, -4(a0)
  BNE s7, zero, bb248
  # implict jump to bb246
bb246:   # loop depth 1
  LW a0, -8(a0)
  # implict jump to bb247
bb247:   # loop depth 1
  SLTU a0, zero, a0
  JAL zero, bb123
bb248:   # loop depth 1
  LA a0, array
  LW a0, 0(a0)
  JAL zero, bb247
bb249:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb247
bb250:   # loop depth 1
  JAL zero, bb42
bb251:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb115
bb252:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb116
bb253:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb111
bb254:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb112
bb255:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb107
bb256:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb108
bb257:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb103
bb258:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb104
bb259:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb99
bb260:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb100
bb261:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb95
bb262:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb96
bb263:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb91
bb264:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb92
bb265:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb87
bb266:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb88
bb267:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb83
bb268:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb84
bb269:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb79
bb270:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb80
bb271:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb75
bb272:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb76
bb273:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb71
bb274:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb72
bb275:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb67
bb276:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb68
bb277:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb63
bb278:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb64
bb279:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb59
bb280:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb60
bb281:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb55
bb282:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb56
bb283:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb51
bb284:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb52
bb285:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb47
bb286:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb48
bb287:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb44
bb288:   # loop depth 1
  LW a0, 348(sp)
  SW a0, 348(sp)
  JAL zero, bb1
bb289:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 19
  SW s1, 260(sp)
  LW s1, 260(sp)
  SLT s1, s1, s0
  SB s1, 27(sp)
  LA s1, sum
  SD s1, 664(sp)
  LW a0, 0(a0)
  LB s1, 27(sp)
  XORI s1, s1, 1
  SB s1, 49(sp)
  LB s1, 126(sp)
  LB s2, 49(sp)
  OR s1, s2, s1
  SB s1, 50(sp)
  ADDIW a0, a0, 1
  LD s1, 664(sp)
  SW a0, 0(s1)
  LB a0, 50(sp)
  BNE a0, zero, bb40
  # implict jump to bb290
bb290:   # loop depth 1
  ADDI a0, zero, 1
  LD s1, 680(sp)
  SW a0, 76(s1)
  JAL zero, bb40
bb291:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 18
  SW s1, 272(sp)
  LW s1, 272(sp)
  SLT s1, s1, s0
  SB s1, 42(sp)
  LA s1, sum
  SD s1, 736(sp)
  LW a0, 0(a0)
  LB s1, 42(sp)
  XORI s1, s1, 1
  SB s1, 47(sp)
  LB s1, 124(sp)
  LB s2, 47(sp)
  OR s1, s2, s1
  SB s1, 48(sp)
  ADDIW a0, a0, 1
  LD s1, 736(sp)
  SW a0, 0(s1)
  LB a0, 48(sp)
  BNE a0, zero, bb294
  # implict jump to bb292
bb292:   # loop depth 1
  ADDI a0, zero, 1
  LD s1, 688(sp)
  SW a0, 72(s1)
  LD a0, 832(sp)
  LW a0, 68(a0)
  # implict jump to bb293
bb293:   # loop depth 1
  SLTU a0, zero, a0
  JAL zero, bb39
bb294:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb293
bb295:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 17
  SW s1, 288(sp)
  LW s1, 288(sp)
  SLT s1, s1, s0
  SB s1, 84(sp)
  LA s1, sum
  SD s1, 960(sp)
  LW a0, 0(a0)
  LB s1, 84(sp)
  XORI s1, s1, 1
  SB s1, 45(sp)
  LB s1, 123(sp)
  LB s2, 45(sp)
  OR s1, s2, s1
  SB s1, 46(sp)
  ADDIW a0, a0, 1
  LD s1, 960(sp)
  SW a0, 0(s1)
  LB a0, 46(sp)
  BNE a0, zero, bb298
  # implict jump to bb296
bb296:   # loop depth 1
  ADDI a0, zero, 1
  LD s1, 832(sp)
  SW a0, 68(s1)
  LD a0, 840(sp)
  LW a0, 64(a0)
  # implict jump to bb297
bb297:   # loop depth 1
  SLTU a0, zero, a0
  JAL zero, bb37
bb298:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb297
bb299:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 16
  SW s1, 300(sp)
  LW s1, 300(sp)
  SLT s1, s1, s0
  SB s1, 85(sp)
  LA s1, sum
  SD s1, 968(sp)
  LW a0, 0(a0)
  LB s1, 85(sp)
  XORI s1, s1, 1
  SB s1, 43(sp)
  LB s1, 121(sp)
  LB s2, 43(sp)
  OR s1, s2, s1
  SB s1, 44(sp)
  ADDIW a0, a0, 1
  LD s1, 968(sp)
  SW a0, 0(s1)
  LB a0, 44(sp)
  BNE a0, zero, bb302
  # implict jump to bb300
bb300:   # loop depth 1
  ADDI a0, zero, 1
  LD s1, 840(sp)
  SW a0, 64(s1)
  LD a0, 848(sp)
  LW a0, 60(a0)
  # implict jump to bb301
bb301:   # loop depth 1
  SLTU a0, zero, a0
  JAL zero, bb35
bb302:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb301
bb303:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 15
  SW s1, 312(sp)
  LW s1, 312(sp)
  SLT s1, s1, s0
  SB s1, 86(sp)
  LA s1, sum
  SD s1, 976(sp)
  LW a0, 0(a0)
  LB s1, 86(sp)
  XORI s1, s1, 1
  SB s1, 41(sp)
  LB s1, 120(sp)
  LB s2, 41(sp)
  OR s1, s2, s1
  SB s1, 28(sp)
  ADDIW a0, a0, 1
  LD s1, 976(sp)
  SW a0, 0(s1)
  LB a0, 28(sp)
  BNE a0, zero, bb306
  # implict jump to bb304
bb304:   # loop depth 1
  ADDI a0, zero, 1
  LD s1, 848(sp)
  SW a0, 60(s1)
  LD a0, 696(sp)
  LW a0, 56(a0)
  # implict jump to bb305
bb305:   # loop depth 1
  SLTU a0, zero, a0
  JAL zero, bb33
bb306:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb305
bb307:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 14
  SW s1, 176(sp)
  LW s1, 176(sp)
  SLT s1, s1, s0
  SB s1, 87(sp)
  LA s1, sum
  SD s1, 984(sp)
  LW a0, 0(a0)
  LB s1, 87(sp)
  XORI s1, s1, 1
  SB s1, 39(sp)
  LB s1, 110(sp)
  LB s2, 39(sp)
  OR s1, s2, s1
  SB s1, 40(sp)
  ADDIW a0, a0, 1
  LD s1, 984(sp)
  SW a0, 0(s1)
  LB a0, 40(sp)
  BNE a0, zero, bb310
  # implict jump to bb308
bb308:   # loop depth 1
  ADDI a0, zero, 1
  LD s1, 696(sp)
  SW a0, 56(s1)
  LD a0, 704(sp)
  LW a0, 52(a0)
  # implict jump to bb309
bb309:   # loop depth 1
  SLTU a0, zero, a0
  JAL zero, bb31
bb310:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb309
bb311:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 13
  SW s1, 308(sp)
  LW s1, 308(sp)
  SLT s1, s1, s0
  SB s1, 88(sp)
  LA s1, sum
  SD s1, 992(sp)
  LW a0, 0(a0)
  LB s1, 88(sp)
  XORI s1, s1, 1
  SB s1, 37(sp)
  LB s1, 117(sp)
  LB s2, 37(sp)
  OR s1, s2, s1
  SB s1, 38(sp)
  ADDIW a0, a0, 1
  LD s1, 992(sp)
  SW a0, 0(s1)
  LB a0, 38(sp)
  BNE a0, zero, bb314
  # implict jump to bb312
bb312:   # loop depth 1
  ADDI a0, zero, 1
  LD s1, 704(sp)
  SW a0, 52(s1)
  LD a0, 712(sp)
  LW a0, 48(a0)
  # implict jump to bb313
bb313:   # loop depth 1
  SLTU a0, zero, a0
  JAL zero, bb29
bb314:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb313
bb315:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 12
  SW s1, 304(sp)
  LW s1, 304(sp)
  SLT s1, s1, s0
  SB s1, 89(sp)
  LA s1, sum
  SD s1, 1000(sp)
  LW a0, 0(a0)
  LB s1, 89(sp)
  XORI s1, s1, 1
  SB s1, 35(sp)
  LB s1, 116(sp)
  LB s2, 35(sp)
  OR s1, s2, s1
  SB s1, 36(sp)
  ADDIW a0, a0, 1
  LD s1, 1000(sp)
  SW a0, 0(s1)
  LB a0, 36(sp)
  BNE a0, zero, bb318
  # implict jump to bb316
bb316:   # loop depth 1
  ADDI a0, zero, 1
  LD s1, 712(sp)
  SW a0, 48(s1)
  LD a0, 720(sp)
  LW a0, 44(a0)
  # implict jump to bb317
bb317:   # loop depth 1
  SLTU a0, zero, a0
  JAL zero, bb27
bb318:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb317
bb319:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 11
  SW s1, 296(sp)
  LW s1, 296(sp)
  SLT s1, s1, s0
  SB s1, 90(sp)
  LA s1, sum
  SD s1, 1008(sp)
  LW a0, 0(a0)
  LB s1, 90(sp)
  XORI s1, s1, 1
  SB s1, 97(sp)
  LB s1, 115(sp)
  LB s2, 97(sp)
  OR s1, s2, s1
  SB s1, 34(sp)
  ADDIW a0, a0, 1
  LD s1, 1008(sp)
  SW a0, 0(s1)
  LB a0, 34(sp)
  BNE a0, zero, bb322
  # implict jump to bb320
bb320:   # loop depth 1
  ADDI a0, zero, 1
  LD s1, 720(sp)
  SW a0, 44(s1)
  LD a0, 728(sp)
  LW a0, 40(a0)
  # implict jump to bb321
bb321:   # loop depth 1
  SLTU a0, zero, a0
  JAL zero, bb25
bb322:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb321
bb323:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 10
  SW s1, 292(sp)
  LW s1, 292(sp)
  SLT s1, s1, s0
  SB s1, 91(sp)
  LA s1, sum
  SD s1, 1016(sp)
  LW a0, 0(a0)
  LB s1, 91(sp)
  XORI s1, s1, 1
  SB s1, 32(sp)
  LB s1, 113(sp)
  LB s2, 32(sp)
  OR s1, s2, s1
  SB s1, 33(sp)
  ADDIW a0, a0, 1
  LD s1, 1016(sp)
  SW a0, 0(s1)
  LB a0, 33(sp)
  BNE a0, zero, bb326
  # implict jump to bb324
bb324:   # loop depth 1
  ADDI a0, zero, 1
  LD s1, 728(sp)
  SW a0, 40(s1)
  LD a0, 672(sp)
  LW a0, 36(a0)
  # implict jump to bb325
bb325:   # loop depth 1
  SLTU a0, zero, a0
  JAL zero, bb23
bb326:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb325
bb327:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 9
  SW s1, 284(sp)
  LW s1, 284(sp)
  SLT s1, s1, s0
  SB s1, 92(sp)
  LA s1, sum
  SD s1, 952(sp)
  LW a0, 0(a0)
  LB s1, 92(sp)
  XORI s1, s1, 1
  SB s1, 30(sp)
  LB s1, 112(sp)
  LB s2, 30(sp)
  OR s1, s2, s1
  SB s1, 31(sp)
  ADDIW a0, a0, 1
  LD s1, 952(sp)
  SW a0, 0(s1)
  LB a0, 31(sp)
  BNE a0, zero, bb330
  # implict jump to bb328
bb328:   # loop depth 1
  ADDI a0, zero, 1
  LD s1, 672(sp)
  SW a0, 36(s1)
  LD a0, 744(sp)
  LW a0, 32(a0)
  # implict jump to bb329
bb329:   # loop depth 1
  SLTU a0, zero, a0
  JAL zero, bb21
bb330:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb329
bb331:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 8
  SW s1, 280(sp)
  LW s1, 280(sp)
  SLT s1, s1, s0
  SB s1, 93(sp)
  LA s1, sum
  SD s1, 1032(sp)
  LW a0, 0(a0)
  LB s1, 93(sp)
  XORI s1, s1, 1
  SB s1, 147(sp)
  LB s1, 111(sp)
  LB s2, 147(sp)
  OR s1, s2, s1
  SB s1, 29(sp)
  ADDIW a0, a0, 1
  LD s1, 1032(sp)
  SW a0, 0(s1)
  LB a0, 29(sp)
  BNE a0, zero, bb334
  # implict jump to bb332
bb332:   # loop depth 1
  ADDI a0, zero, 1
  LD s1, 744(sp)
  SW a0, 32(s1)
  LD a0, 912(sp)
  LW a0, 28(a0)
  # implict jump to bb333
bb333:   # loop depth 1
  SLTU a0, zero, a0
  JAL zero, bb19
bb334:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb333
bb335:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 7
  SW s1, 276(sp)
  LW s1, 276(sp)
  SLT s1, s1, s0
  SB s1, 94(sp)
  LA s1, sum
  SD s1, 1040(sp)
  LW a0, 0(a0)
  LB s1, 94(sp)
  XORI s1, s1, 1
  SB s1, 149(sp)
  LB s1, 145(sp)
  LB s2, 149(sp)
  OR s1, s2, s1
  SB s1, 148(sp)
  ADDIW a0, a0, 1
  LD s1, 1040(sp)
  SW a0, 0(s1)
  LB a0, 148(sp)
  BNE a0, zero, bb338
  # implict jump to bb336
bb336:   # loop depth 1
  ADDI a0, zero, 1
  LD s1, 912(sp)
  SW a0, 28(s1)
  LD a0, 920(sp)
  LW a0, 24(a0)
  # implict jump to bb337
bb337:   # loop depth 1
  SLTU a0, zero, a0
  JAL zero, bb17
bb338:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb337
bb339:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 6
  SW s1, 216(sp)
  LW s1, 216(sp)
  SLT s1, s1, s0
  SB s1, 95(sp)
  LA s1, sum
  SD s1, 1048(sp)
  LW a0, 0(a0)
  LB s1, 95(sp)
  XORI s1, s1, 1
  SB s1, 146(sp)
  LB s1, 144(sp)
  LB s2, 146(sp)
  OR s1, s2, s1
  SB s1, 152(sp)
  ADDIW a0, a0, 1
  LD s1, 1048(sp)
  SW a0, 0(s1)
  LB a0, 152(sp)
  BNE a0, zero, bb342
  # implict jump to bb340
bb340:   # loop depth 1
  ADDI a0, zero, 1
  LD s1, 920(sp)
  SW a0, 24(s1)
  LD a0, 512(sp)
  LW a0, 20(a0)
  # implict jump to bb341
bb341:   # loop depth 1
  SLTU a0, zero, a0
  JAL zero, bb15
bb342:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb341
bb343:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 5
  SW s1, 264(sp)
  LW s1, 264(sp)
  SLT s1, s1, s0
  SB s1, 96(sp)
  LA s1, sum
  SD s1, 1056(sp)
  LW a0, 0(a0)
  LB s1, 96(sp)
  XORI s1, s1, 1
  SB s1, 173(sp)
  LB s1, 143(sp)
  LB s2, 173(sp)
  OR s1, s2, s1
  SB s1, 160(sp)
  ADDIW a0, a0, 1
  LD s1, 1056(sp)
  SW a0, 0(s1)
  LB a0, 160(sp)
  BNE a0, zero, bb346
  # implict jump to bb344
bb344:   # loop depth 1
  ADDI a0, zero, 1
  LD s1, 512(sp)
  SW a0, 20(s1)
  LD a0, 928(sp)
  LW a0, 16(a0)
  # implict jump to bb345
bb345:   # loop depth 1
  SLTU a0, zero, a0
  JAL zero, bb13
bb346:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb345
bb347:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 4
  SW s1, 256(sp)
  LW s1, 256(sp)
  SLT s1, s1, s0
  SB s1, 83(sp)
  LA s1, sum
  SD s1, 1064(sp)
  LW a0, 0(a0)
  LB s1, 83(sp)
  XORI s1, s1, 1
  SB s1, 168(sp)
  LB s1, 141(sp)
  LB s2, 168(sp)
  OR s1, s2, s1
  SB s1, 171(sp)
  ADDIW a0, a0, 1
  LD s1, 1064(sp)
  SW a0, 0(s1)
  LB a0, 171(sp)
  BNE a0, zero, bb350
  # implict jump to bb348
bb348:   # loop depth 1
  ADDI a0, zero, 1
  LD s1, 928(sp)
  SW a0, 16(s1)
  LD a0, 752(sp)
  LW a0, 12(a0)
  # implict jump to bb349
bb349:   # loop depth 1
  SLTU a0, zero, a0
  JAL zero, bb11
bb350:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb349
bb351:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 3
  SW s1, 252(sp)
  LW s1, 252(sp)
  SLT s1, s1, s0
  SB s1, 98(sp)
  LA s1, sum
  SD s1, 1072(sp)
  LW a0, 0(a0)
  LB s1, 98(sp)
  XORI s1, s1, 1
  SB s1, 165(sp)
  LB s1, 139(sp)
  LB s2, 165(sp)
  OR s1, s2, s1
  SB s1, 161(sp)
  ADDIW a0, a0, 1
  LD s1, 1072(sp)
  SW a0, 0(s1)
  LB a0, 161(sp)
  BNE a0, zero, bb354
  # implict jump to bb352
bb352:   # loop depth 1
  ADDI a0, zero, 1
  LD s1, 752(sp)
  SW a0, 12(s1)
  LD a0, 944(sp)
  LW a0, 8(a0)
  # implict jump to bb353
bb353:   # loop depth 1
  SLTU a0, zero, a0
  JAL zero, bb9
bb354:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb353
bb355:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 2
  SW s1, 248(sp)
  LW s1, 248(sp)
  SLT s1, s1, s0
  SB s1, 99(sp)
  LA s1, sum
  SD s1, 1080(sp)
  LW a0, 0(a0)
  LB s1, 99(sp)
  XORI s1, s1, 1
  SB s1, 127(sp)
  LB s1, 128(sp)
  LB s2, 127(sp)
  OR s1, s2, s1
  SB s1, 162(sp)
  ADDIW a0, a0, 1
  LD s1, 1080(sp)
  SW a0, 0(s1)
  LB a0, 162(sp)
  BNE a0, zero, bb358
  # implict jump to bb356
bb356:   # loop depth 1
  ADDI a0, zero, 1
  LD s1, 944(sp)
  SW a0, 8(s1)
  LD a0, 1024(sp)
  LW a0, 4(a0)
  # implict jump to bb357
bb357:   # loop depth 1
  SLTU a0, zero, a0
  JAL zero, bb7
bb358:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb357
bb359:   # loop depth 1
  LA a0, sum
  ADDI s1, zero, 1
  SW s1, 244(sp)
  LW s1, 244(sp)
  SLT s1, s1, s0
  SB s1, 100(sp)
  LA s1, sum
  SD s1, 1088(sp)
  LW a0, 0(a0)
  LB s1, 100(sp)
  XORI s1, s1, 1
  SB s1, 122(sp)
  LB s1, 135(sp)
  LB s2, 122(sp)
  OR s1, s2, s1
  SB s1, 125(sp)
  ADDIW a0, a0, 1
  LD s1, 1088(sp)
  SW a0, 0(s1)
  LB a0, 125(sp)
  BNE a0, zero, bb362
  # implict jump to bb360
bb360:   # loop depth 1
  LA a0, array
  SD a0, 760(sp)
  ADDI a0, zero, 1
  LD s1, 1024(sp)
  SW a0, 4(s1)
  LD a0, 760(sp)
  LW a0, 0(a0)
  # implict jump to bb361
bb361:   # loop depth 1
  SLTU a0, zero, a0
  JAL zero, bb5
bb362:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb361
bb363:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb3
