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
  ADDI sp, sp, -592
  SD ra, 112(sp)
  SD s0, 120(sp)
  SD s1, 128(sp)
  SD s2, 136(sp)
  SD s3, 144(sp)
  SD s4, 152(sp)
  SD s5, 160(sp)
  SD s6, 296(sp)
  SD s8, 304(sp)
  SD s9, 312(sp)
  ADDI s5, zero, 19
  ADDI s4, zero, 18
  ADDI s3, zero, 17
  ADDI s2, zero, 16
  ADDI s1, zero, 15
  ADDI s0, zero, 14
  ADDI t5, zero, 13
  ADDI t4, zero, 12
  ADDI t3, zero, 11
  ADDI a7, zero, 10
  ADDI a6, zero, 9
  ADDI a5, zero, 8
  ADDI a4, zero, 7
  ADDI a3, zero, 6
  ADDI a2, zero, 5
  ADDI a1, zero, 4
  ADDI t1, zero, 3
  ADDI a0, zero, 2
  ADDI t2, zero, 1
  ADDI t0, zero, 0
  LA s6, array
  SD s6, 448(sp)
  SLTI s6, s5, 20
  LA s5, array
  SD s5, 440(sp)
  SLTI s5, s4, 20
  LA s4, array
  SD s4, 40(sp)
  SLTI s4, s3, 20
  LA s3, array
  SD s3, 32(sp)
  SLTI s3, s2, 20
  LA s2, array
  SD s2, 80(sp)
  SLTI s2, s1, 20
  LA s1, array
  SD s1, 88(sp)
  SLTI s0, s0, 20
  SB s0, 26(sp)
  LA s0, array
  SD s0, 96(sp)
  SLTI t5, t5, 20
  SB t5, 25(sp)
  LA t5, array
  SD t5, 104(sp)
  SLTI t4, t4, 20
  SB t4, 24(sp)
  LA t4, array
  SD t4, 72(sp)
  SLTI t3, t3, 20
  SB t3, 23(sp)
  LA t3, array
  SD t3, 200(sp)
  SLTI a7, a7, 20
  SB a7, 22(sp)
  LA a7, array
  SD a7, 208(sp)
  SLTI a6, a6, 20
  SB a6, 21(sp)
  LA a6, array
  SD a6, 216(sp)
  SLTI a5, a5, 20
  SB a5, 20(sp)
  LA a5, array
  SD a5, 224(sp)
  SLTI a4, a4, 20
  SB a4, 19(sp)
  LA a4, array
  SD a4, 232(sp)
  SLTI a3, a3, 20
  SB a3, 18(sp)
  LA a3, array
  SD a3, 240(sp)
  SLTI a2, a2, 20
  SB a2, 17(sp)
  LA a2, array
  SD a2, 248(sp)
  SLTI a1, a1, 20
  SB a1, 16(sp)
  LA a1, array
  SD a1, 256(sp)
  SLTI t1, t1, 20
  SB t1, 0(sp)
  LA t1, array
  SD t1, 264(sp)
  SLTI a1, a0, 20
  LA s9, array
  SLTI a0, t2, 20
  SLTI t2, t0, 20
  ADD t1, zero, zero
  XORI a2, s6, 1
  SB a2, 15(sp)
  XORI a2, s5, 1
  SB a2, 14(sp)
  XORI a2, s4, 1
  SB a2, 13(sp)
  XORI a2, s3, 1
  SB a2, 12(sp)
  XORI a2, s2, 1
  SB a2, 11(sp)
  LB a2, 26(sp)
  XORI a2, a2, 1
  SB a2, 10(sp)
  LB a2, 25(sp)
  XORI a2, a2, 1
  SB a2, 9(sp)
  LB a2, 24(sp)
  XORI a2, a2, 1
  SB a2, 8(sp)
  LB a2, 23(sp)
  XORI a2, a2, 1
  SB a2, 7(sp)
  LB a2, 22(sp)
  XORI a2, a2, 1
  SB a2, 6(sp)
  LB a2, 21(sp)
  XORI a2, a2, 1
  SB a2, 5(sp)
  LB a2, 20(sp)
  XORI a2, a2, 1
  SB a2, 4(sp)
  LB a2, 19(sp)
  XORI a6, a2, 1
  LB a2, 18(sp)
  XORI a5, a2, 1
  LB a2, 17(sp)
  XORI a4, a2, 1
  LB a2, 16(sp)
  XORI a2, a2, 1
  SB a2, 3(sp)
  LB a2, 0(sp)
  XORI a2, a2, 1
  SB a2, 2(sp)
  XORI a1, a1, 1
  XORI a0, a0, 1
  SB a0, 1(sp)
  XORI t2, t2, 1
  # implict jump to bb1
bb1:   # loop depth 1
  LA t0, sum
  SD t0, 280(sp)
  SLT s8, zero, t1
  LA t0, sum
  SD t0, 56(sp)
  LD t0, 280(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  OR s8, s8, t2
  ADDIW t0, t0, 1
  LD a0, 56(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb363
  # implict jump to bb2
bb2:   # loop depth 1
  LA s8, array
  ADDI t0, zero, 1
  SW t0, 28(sp)
  ADDI t0, zero, 1
  LW a0, 28(sp)
  SW a0, 0(s8)
  # implict jump to bb3
bb3:   # loop depth 1
  BNE t0, zero, bb359
  # implict jump to bb4
bb4:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  BNE t0, zero, bb355
  # implict jump to bb6
bb6:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  BNE t0, zero, bb351
  # implict jump to bb8
bb8:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb9
bb9:   # loop depth 1
  BNE t0, zero, bb347
  # implict jump to bb10
bb10:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb11
bb11:   # loop depth 1
  BNE t0, zero, bb343
  # implict jump to bb12
bb12:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb13
bb13:   # loop depth 1
  BNE t0, zero, bb339
  # implict jump to bb14
bb14:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb15
bb15:   # loop depth 1
  BNE t0, zero, bb335
  # implict jump to bb16
bb16:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb17
bb17:   # loop depth 1
  BNE t0, zero, bb331
  # implict jump to bb18
bb18:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb19
bb19:   # loop depth 1
  BNE t0, zero, bb327
  # implict jump to bb20
bb20:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb21
bb21:   # loop depth 1
  BNE t0, zero, bb323
  # implict jump to bb22
bb22:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb23
bb23:   # loop depth 1
  BNE t0, zero, bb319
  # implict jump to bb24
bb24:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb25
bb25:   # loop depth 1
  BNE t0, zero, bb315
  # implict jump to bb26
bb26:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb27
bb27:   # loop depth 1
  BNE t0, zero, bb311
  # implict jump to bb28
bb28:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb29
bb29:   # loop depth 1
  BNE t0, zero, bb307
  # implict jump to bb30
bb30:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb31
bb31:   # loop depth 1
  BNE t0, zero, bb303
  # implict jump to bb32
bb32:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb33
bb33:   # loop depth 1
  BNE t0, zero, bb299
  # implict jump to bb34
bb34:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb35
bb35:   # loop depth 1
  BNE t0, zero, bb295
  # implict jump to bb36
bb36:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb37
bb37:   # loop depth 1
  BNE t0, zero, bb291
  # implict jump to bb38
bb38:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb39
bb39:   # loop depth 1
  BNE t0, zero, bb289
  # implict jump to bb40
bb40:   # loop depth 1
  ADDIW t1, t1, 1
  SLTI s8, t1, 20
  BNE s8, zero, bb288
  # implict jump to bb41
bb41:   # loop depth 0
  ADD t1, zero, zero
  # implict jump to bb42
bb42:   # loop depth 1
  LA t0, sum
  SD t0, 272(sp)
  SLT s8, zero, t1
  LA t0, sum
  SD t0, 560(sp)
  LD t0, 272(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  OR s8, s8, t2
  ADDIW t0, t0, 2
  LD a0, 560(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb287
  # implict jump to bb43
bb43:   # loop depth 1
  LA s8, array
  ADD t0, zero, zero
  SW zero, 0(s8)
  # implict jump to bb44
bb44:   # loop depth 1
  BNE t0, zero, bb286
  # implict jump to bb45
bb45:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 1
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 288(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 1(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 2
  LD a0, 288(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb285
  # implict jump to bb46
bb46:   # loop depth 1
  LA t0, array
  SW zero, 4(s9)
  LW t0, 0(t0)
  # implict jump to bb47
bb47:   # loop depth 1
  SLTU t0, zero, t0
  # implict jump to bb48
bb48:   # loop depth 1
  BNE t0, zero, bb284
  # implict jump to bb49
bb49:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 2
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 568(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  OR s8, s8, a1
  ADDIW t0, t0, 2
  LD a0, 568(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb283
  # implict jump to bb50
bb50:   # loop depth 1
  LD t0, 264(sp)
  SW zero, 8(t0)
  LW t0, 4(s9)
  # implict jump to bb51
bb51:   # loop depth 1
  SLTU t0, zero, t0
  # implict jump to bb52
bb52:   # loop depth 1
  BNE t0, zero, bb282
  # implict jump to bb53
bb53:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 3
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 576(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 2(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 2
  LD a0, 576(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb281
  # implict jump to bb54
bb54:   # loop depth 1
  LD t0, 256(sp)
  SW zero, 12(t0)
  LD t0, 264(sp)
  LW t0, 8(t0)
  # implict jump to bb55
bb55:   # loop depth 1
  SLTU t0, zero, t0
  # implict jump to bb56
bb56:   # loop depth 1
  BNE t0, zero, bb280
  # implict jump to bb57
bb57:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 4
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 584(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 3(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 2
  LD a0, 584(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb279
  # implict jump to bb58
bb58:   # loop depth 1
  LD t0, 248(sp)
  SW zero, 16(t0)
  LD t0, 256(sp)
  LW t0, 12(t0)
  # implict jump to bb59
bb59:   # loop depth 1
  SLTU t0, zero, t0
  # implict jump to bb60
bb60:   # loop depth 1
  BNE t0, zero, bb278
  # implict jump to bb61
bb61:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 5
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 392(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  OR s8, s8, a4
  ADDIW t0, t0, 2
  LD a0, 392(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb277
  # implict jump to bb62
bb62:   # loop depth 1
  LD t0, 240(sp)
  SW zero, 20(t0)
  LD t0, 248(sp)
  LW t0, 16(t0)
  # implict jump to bb63
bb63:   # loop depth 1
  SLTU t0, zero, t0
  # implict jump to bb64
bb64:   # loop depth 1
  BNE t0, zero, bb276
  # implict jump to bb65
bb65:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 6
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 328(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  OR s8, s8, a5
  ADDIW t0, t0, 2
  LD a0, 328(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb275
  # implict jump to bb66
bb66:   # loop depth 1
  LD t0, 232(sp)
  SW zero, 24(t0)
  LD t0, 240(sp)
  LW t0, 20(t0)
  # implict jump to bb67
bb67:   # loop depth 1
  SLTU t0, zero, t0
  # implict jump to bb68
bb68:   # loop depth 1
  BNE t0, zero, bb274
  # implict jump to bb69
bb69:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 7
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 336(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  OR s8, s8, a6
  ADDIW t0, t0, 2
  LD a0, 336(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb273
  # implict jump to bb70
bb70:   # loop depth 1
  LD t0, 224(sp)
  SW zero, 28(t0)
  LD t0, 232(sp)
  LW t0, 24(t0)
  # implict jump to bb71
bb71:   # loop depth 1
  SLTU t0, zero, t0
  # implict jump to bb72
bb72:   # loop depth 1
  BNE t0, zero, bb272
  # implict jump to bb73
bb73:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 8
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 344(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 4(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 2
  LD a0, 344(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb271
  # implict jump to bb74
bb74:   # loop depth 1
  LD t0, 216(sp)
  SW zero, 32(t0)
  LD t0, 224(sp)
  LW t0, 28(t0)
  # implict jump to bb75
bb75:   # loop depth 1
  SLTU t0, zero, t0
  # implict jump to bb76
bb76:   # loop depth 1
  BNE t0, zero, bb270
  # implict jump to bb77
bb77:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 9
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 352(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 5(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 2
  LD a0, 352(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb269
  # implict jump to bb78
bb78:   # loop depth 1
  LD t0, 208(sp)
  SW zero, 36(t0)
  LD t0, 216(sp)
  LW t0, 32(t0)
  # implict jump to bb79
bb79:   # loop depth 1
  SLTU t0, zero, t0
  # implict jump to bb80
bb80:   # loop depth 1
  BNE t0, zero, bb268
  # implict jump to bb81
bb81:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 10
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 360(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 6(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 2
  LD a0, 360(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb267
  # implict jump to bb82
bb82:   # loop depth 1
  LD t0, 200(sp)
  SW zero, 40(t0)
  LD t0, 208(sp)
  LW t0, 36(t0)
  # implict jump to bb83
bb83:   # loop depth 1
  SLTU t0, zero, t0
  # implict jump to bb84
bb84:   # loop depth 1
  BNE t0, zero, bb266
  # implict jump to bb85
bb85:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 11
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 368(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 7(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 2
  LD a0, 368(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb265
  # implict jump to bb86
bb86:   # loop depth 1
  LD t0, 72(sp)
  SW zero, 44(t0)
  LD t0, 200(sp)
  LW t0, 40(t0)
  # implict jump to bb87
bb87:   # loop depth 1
  SLTU t0, zero, t0
  # implict jump to bb88
bb88:   # loop depth 1
  BNE t0, zero, bb264
  # implict jump to bb89
bb89:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 12
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 376(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 8(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 2
  LD a0, 376(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb263
  # implict jump to bb90
bb90:   # loop depth 1
  LD t0, 104(sp)
  SW zero, 48(t0)
  LD t0, 72(sp)
  LW t0, 44(t0)
  # implict jump to bb91
bb91:   # loop depth 1
  SLTU t0, zero, t0
  # implict jump to bb92
bb92:   # loop depth 1
  BNE t0, zero, bb262
  # implict jump to bb93
bb93:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 13
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 384(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 9(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 2
  LD a0, 384(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb261
  # implict jump to bb94
bb94:   # loop depth 1
  LD t0, 96(sp)
  SW zero, 52(t0)
  LD t0, 104(sp)
  LW t0, 48(t0)
  # implict jump to bb95
bb95:   # loop depth 1
  SLTU t0, zero, t0
  # implict jump to bb96
bb96:   # loop depth 1
  BNE t0, zero, bb260
  # implict jump to bb97
bb97:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 14
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 320(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 10(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 2
  LD a0, 320(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb259
  # implict jump to bb98
bb98:   # loop depth 1
  LD t0, 88(sp)
  SW zero, 56(t0)
  LD t0, 96(sp)
  LW t0, 52(t0)
  # implict jump to bb99
bb99:   # loop depth 1
  SLTU t0, zero, t0
  # implict jump to bb100
bb100:   # loop depth 1
  BNE t0, zero, bb258
  # implict jump to bb101
bb101:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 15
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 400(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 11(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 2
  LD a0, 400(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb257
  # implict jump to bb102
bb102:   # loop depth 1
  LD t0, 80(sp)
  SW zero, 60(t0)
  LD t0, 88(sp)
  LW t0, 56(t0)
  # implict jump to bb103
bb103:   # loop depth 1
  SLTU t0, zero, t0
  # implict jump to bb104
bb104:   # loop depth 1
  BNE t0, zero, bb256
  # implict jump to bb105
bb105:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 16
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 408(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 12(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 2
  LD a0, 408(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb255
  # implict jump to bb106
bb106:   # loop depth 1
  LD t0, 32(sp)
  SW zero, 64(t0)
  LD t0, 80(sp)
  LW t0, 60(t0)
  # implict jump to bb107
bb107:   # loop depth 1
  SLTU t0, zero, t0
  # implict jump to bb108
bb108:   # loop depth 1
  BNE t0, zero, bb254
  # implict jump to bb109
bb109:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 17
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 416(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 13(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 2
  LD a0, 416(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb253
  # implict jump to bb110
bb110:   # loop depth 1
  LD t0, 40(sp)
  SW zero, 68(t0)
  LD t0, 32(sp)
  LW t0, 64(t0)
  # implict jump to bb111
bb111:   # loop depth 1
  SLTU t0, zero, t0
  # implict jump to bb112
bb112:   # loop depth 1
  BNE t0, zero, bb252
  # implict jump to bb113
bb113:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 18
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 424(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 14(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 2
  LD a0, 424(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb251
  # implict jump to bb114
bb114:   # loop depth 1
  LD t0, 440(sp)
  SW zero, 72(t0)
  LD t0, 40(sp)
  LW t0, 68(t0)
  # implict jump to bb115
bb115:   # loop depth 1
  SLTU t0, zero, t0
  # implict jump to bb116
bb116:   # loop depth 1
  BNE t0, zero, bb119
  # implict jump to bb117
bb117:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 19
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 432(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 15(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 2
  LD a0, 432(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb119
  # implict jump to bb118
bb118:   # loop depth 1
  LD t0, 448(sp)
  SW zero, 76(t0)
  # implict jump to bb119
bb119:   # loop depth 1
  ADDIW t1, t1, 1
  SLTI s8, t1, 20
  BNE s8, zero, bb250
  # implict jump to bb120
bb120:   # loop depth 0
  ADDI t1, zero, 1
  # implict jump to bb121
bb121:   # loop depth 1
  SLTI t0, t1, 20
  BNE t0, zero, bb244
  # implict jump to bb122
bb122:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb123
bb123:   # loop depth 1
  BNE t0, zero, bb243
  # implict jump to bb124
bb124:   # loop depth 0
  LA t0, sum
  LA s3, sum
  OR t1, zero, t2
  LW t0, 0(t0)
  ADDIW t0, t0, 3
  SW t0, 0(s3)
  BNE t1, zero, bb242
  # implict jump to bb125
bb125:   # loop depth 0
  LA t0, array
  LW t0, 0(t0)
  # implict jump to bb126
bb126:   # loop depth 0
  BNE t0, zero, bb238
  # implict jump to bb127
bb127:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb128
bb128:   # loop depth 0
  BNE t0, zero, bb237
  # implict jump to bb129
bb129:   # loop depth 0
  LA t0, sum
  LA a0, sum
  OR t2, zero, a1
  LW t0, 0(t0)
  ADDIW t0, t0, 3
  SW t0, 0(a0)
  BNE t2, zero, bb236
  # implict jump to bb130
bb130:   # loop depth 0
  LD t0, 264(sp)
  LW t0, 8(t0)
  # implict jump to bb131
bb131:   # loop depth 0
  SLTU t0, zero, t0
  XORI t0, t0, 1
  SLTU t0, zero, t0
  # implict jump to bb132
bb132:   # loop depth 0
  BNE t0, zero, bb134
  # implict jump to bb133
bb133:   # loop depth 0
  LA t0, sum
  LA t2, sum
  LW t0, 0(t0)
  ADDIW t0, t0, 3
  SW t0, 0(t2)
  # implict jump to bb134
bb134:   # loop depth 0
  LA t0, sum
  LA a0, sum
  LB t2, 3(sp)
  OR t2, zero, t2
  LW t0, 0(t0)
  ADDIW t0, t0, 3
  SW t0, 0(a0)
  BNE t2, zero, bb235
  # implict jump to bb135
bb135:   # loop depth 0
  LD t0, 248(sp)
  LW t0, 16(t0)
  # implict jump to bb136
bb136:   # loop depth 0
  SLTU t0, zero, t0
  BEQ t0, zero, bb234
  # implict jump to bb137
bb137:   # loop depth 0
  LA t0, sum
  LA a3, sum
  OR a0, zero, a4
  LW t0, 0(t0)
  ADDIW t0, t0, 3
  SW t0, 0(a3)
  BNE a0, zero, bb233
  # implict jump to bb138
bb138:   # loop depth 0
  LD t0, 240(sp)
  LW t0, 20(t0)
  # implict jump to bb139
bb139:   # loop depth 0
  BNE t0, zero, bb229
  # implict jump to bb140
bb140:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb141
bb141:   # loop depth 0
  BNE t0, zero, bb225
  # implict jump to bb142
bb142:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb143
bb143:   # loop depth 0
  # implict jump to bb144
bb144:   # loop depth 0
  BNE t0, zero, bb146
  # implict jump to bb145
bb145:   # loop depth 0
  LA t0, sum
  LA a0, sum
  LW t0, 0(t0)
  ADDIW t0, t0, 3
  SW t0, 0(a0)
  # implict jump to bb146
bb146:   # loop depth 0
  LA t0, sum
  LA a3, sum
  LB a0, 5(sp)
  OR a0, zero, a0
  LW t0, 0(t0)
  ADDIW t0, t0, 3
  SW t0, 0(a3)
  BNE a0, zero, bb224
  # implict jump to bb147
bb147:   # loop depth 0
  LD t0, 208(sp)
  LW t0, 36(t0)
  # implict jump to bb148
bb148:   # loop depth 0
  BNE t0, zero, bb220
  # implict jump to bb149
bb149:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb150
bb150:   # loop depth 0
  BNE t0, zero, bb219
  # implict jump to bb151
bb151:   # loop depth 0
  LA t0, sum
  LA a3, sum
  LB a0, 7(sp)
  OR a0, zero, a0
  LW t0, 0(t0)
  ADDIW t0, t0, 3
  SW t0, 0(a3)
  BNE a0, zero, bb218
  # implict jump to bb152
bb152:   # loop depth 0
  LD t0, 72(sp)
  LW t0, 44(t0)
  # implict jump to bb153
bb153:   # loop depth 0
  SLTU t0, zero, t0
  XORI t0, t0, 1
  SLTU t0, zero, t0
  # implict jump to bb154
bb154:   # loop depth 0
  BNE t0, zero, bb217
  # implict jump to bb155
bb155:   # loop depth 0
  LA t0, sum
  LA a3, sum
  LB a0, 8(sp)
  OR a0, zero, a0
  LW t0, 0(t0)
  ADDIW t0, t0, 3
  SW t0, 0(a3)
  BNE a0, zero, bb216
  # implict jump to bb156
bb156:   # loop depth 0
  LD t0, 104(sp)
  LW t0, 48(t0)
  # implict jump to bb157
bb157:   # loop depth 0
  SLTU t0, zero, t0
  XORI t0, t0, 1
  SLTU t0, zero, t0
  # implict jump to bb158
bb158:   # loop depth 0
  BNE t0, zero, bb215
  # implict jump to bb159
bb159:   # loop depth 0
  LA t0, sum
  LA a3, sum
  LB a0, 9(sp)
  OR a0, zero, a0
  LW t0, 0(t0)
  ADDIW t0, t0, 3
  SW t0, 0(a3)
  BNE a0, zero, bb214
  # implict jump to bb160
bb160:   # loop depth 0
  LD t0, 96(sp)
  LW t0, 52(t0)
  # implict jump to bb161
bb161:   # loop depth 0
  SLTU t0, zero, t0
  XORI t0, t0, 1
  SLTU t0, zero, t0
  # implict jump to bb162
bb162:   # loop depth 0
  BNE t0, zero, bb166
  # implict jump to bb163
bb163:   # loop depth 0
  LA t0, sum
  LA a3, sum
  LB a0, 10(sp)
  OR a0, zero, a0
  LW t0, 0(t0)
  ADDIW t0, t0, 3
  SW t0, 0(a3)
  BNE a0, zero, bb213
  # implict jump to bb164
bb164:   # loop depth 0
  LD t0, 88(sp)
  LW t0, 56(t0)
  # implict jump to bb165
bb165:   # loop depth 0
  BNE t0, zero, bb212
  # implict jump to bb166
bb166:   # loop depth 0
  LA t0, sum
  LA a0, sum
  LW t0, 0(t0)
  ADDIW t0, t0, 3
  SW t0, 0(a0)
  BNE t1, zero, bb211
  # implict jump to bb167
bb167:   # loop depth 0
  LA t0, array
  LW t0, 0(t0)
  # implict jump to bb168
bb168:   # loop depth 0
  BNE t0, zero, bb207
  # implict jump to bb169
bb169:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb170
bb170:   # loop depth 0
  BNE t0, zero, bb203
  # implict jump to bb171
bb171:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb172
bb172:   # loop depth 0
  BNE t0, zero, bb199
  # implict jump to bb173
bb173:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb174
bb174:   # loop depth 0
  BNE t0, zero, bb198
  # implict jump to bb175
bb175:   # loop depth 0
  LA t0, sum
  LA t2, sum
  OR t1, zero, a4
  LW t0, 0(t0)
  ADDIW t0, t0, 3
  SW t0, 0(t2)
  BNE t1, zero, bb197
  # implict jump to bb176
bb176:   # loop depth 0
  LD t0, 240(sp)
  LW t0, 20(t0)
  # implict jump to bb177
bb177:   # loop depth 0
  SLTU t0, zero, t0
  # implict jump to bb178
bb178:   # loop depth 0
  BNE t0, zero, bb196
  # implict jump to bb179
bb179:   # loop depth 0
  LA t0, sum
  LA t2, sum
  OR t1, zero, a5
  LW t0, 0(t0)
  ADDIW t0, t0, 3
  SW t0, 0(t2)
  BNE t1, zero, bb195
  # implict jump to bb180
bb180:   # loop depth 0
  LD t0, 232(sp)
  LW t0, 24(t0)
  # implict jump to bb181
bb181:   # loop depth 0
  BNE t0, zero, bb191
  # implict jump to bb182
bb182:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb183
bb183:   # loop depth 0
  # implict jump to bb184
bb184:   # loop depth 0
  BNE t0, zero, bb190
  # implict jump to bb185
bb185:   # loop depth 0
  LA t0, sum
  LA t2, sum
  LB t1, 4(sp)
  OR t1, zero, t1
  LW t0, 0(t0)
  ADDIW t0, t0, 3
  SW t0, 0(t2)
  BNE t1, zero, bb189
  # implict jump to bb186
bb186:   # loop depth 0
  LD t0, 216(sp)
  LW t0, 32(t0)
  # implict jump to bb187
bb187:   # loop depth 0
  SLTU t0, zero, t0
  # implict jump to bb188
bb188:   # loop depth 0
  LA t1, sum
  LW t1, 0(t1)
  ADDW a0, t1, t0
  CALL putint
  ADD a0, zero, zero
  LD ra, 112(sp)
  LD s0, 120(sp)
  LD s1, 128(sp)
  LD s2, 136(sp)
  LD s3, 144(sp)
  LD s4, 152(sp)
  LD s5, 160(sp)
  LD s6, 296(sp)
  LD s8, 304(sp)
  LD s9, 312(sp)
  ADDI sp, sp, 592
  JALR zero, 0(ra)
bb189:   # loop depth 0
  ADD t0, zero, zero
  JAL zero, bb187
bb190:   # loop depth 0
  ADDI t0, zero, 1
  JAL zero, bb188
bb191:   # loop depth 0
  LA t0, sum
  LA t2, sum
  OR t1, zero, a6
  LW t0, 0(t0)
  ADDIW t0, t0, 3
  SW t0, 0(t2)
  BNE t1, zero, bb194
  # implict jump to bb192
bb192:   # loop depth 0
  LD t0, 224(sp)
  LW t0, 28(t0)
  # implict jump to bb193
bb193:   # loop depth 0
  SLTU t0, zero, t0
  XORI t0, t0, 1
  SLTU t0, zero, t0
  JAL zero, bb183
bb194:   # loop depth 0
  ADD t0, zero, zero
  JAL zero, bb193
bb195:   # loop depth 0
  ADD t0, zero, zero
  JAL zero, bb181
bb196:   # loop depth 0
  ADDI t0, zero, 1
  JAL zero, bb184
bb197:   # loop depth 0
  ADD t0, zero, zero
  JAL zero, bb177
bb198:   # loop depth 0
  ADDI t0, zero, 1
  JAL zero, bb178
bb199:   # loop depth 0
  LA t0, sum
  LA t1, sum
  LW t0, 0(t0)
  ADDIW t0, t0, 3
  SW t0, 0(t1)
  BNE t2, zero, bb202
  # implict jump to bb200
bb200:   # loop depth 0
  LD t0, 248(sp)
  LW t0, 16(t0)
  # implict jump to bb201
bb201:   # loop depth 0
  SLTU t0, zero, t0
  XORI t0, t0, 1
  SLTU t0, zero, t0
  JAL zero, bb174
bb202:   # loop depth 0
  ADD t0, zero, zero
  JAL zero, bb201
bb203:   # loop depth 0
  LA t0, sum
  LA a0, sum
  LB t1, 2(sp)
  OR t1, zero, t1
  LW t0, 0(t0)
  ADDIW t0, t0, 3
  SW t0, 0(a0)
  BNE t1, zero, bb206
  # implict jump to bb204
bb204:   # loop depth 0
  LD t0, 256(sp)
  LW t0, 12(t0)
  # implict jump to bb205
bb205:   # loop depth 0
  SLTU t0, zero, t0
  XORI t0, t0, 1
  SLTU t0, zero, t0
  JAL zero, bb172
bb206:   # loop depth 0
  ADD t0, zero, zero
  JAL zero, bb205
bb207:   # loop depth 0
  LA t0, sum
  LA a0, sum
  OR t1, zero, a1
  LW t0, 0(t0)
  ADDIW t0, t0, 3
  SW t0, 0(a0)
  BNE t1, zero, bb210
  # implict jump to bb208
bb208:   # loop depth 0
  LD t0, 264(sp)
  LW t0, 8(t0)
  # implict jump to bb209
bb209:   # loop depth 0
  SLTU t0, zero, t0
  JAL zero, bb170
bb210:   # loop depth 0
  ADD t0, zero, zero
  JAL zero, bb209
bb211:   # loop depth 0
  ADD t0, zero, zero
  JAL zero, bb168
bb212:   # loop depth 0
  LA t0, sum
  LA a0, sum
  LW t0, 0(t0)
  ADDIW t0, t0, 3
  SW t0, 0(a0)
  JAL zero, bb166
bb213:   # loop depth 0
  ADD t0, zero, zero
  JAL zero, bb165
bb214:   # loop depth 0
  ADD t0, zero, zero
  JAL zero, bb161
bb215:   # loop depth 0
  ADDI t0, zero, 1
  JAL zero, bb162
bb216:   # loop depth 0
  ADD t0, zero, zero
  JAL zero, bb157
bb217:   # loop depth 0
  ADDI t0, zero, 1
  JAL zero, bb158
bb218:   # loop depth 0
  ADD t0, zero, zero
  JAL zero, bb153
bb219:   # loop depth 0
  ADDI t0, zero, 1
  JAL zero, bb154
bb220:   # loop depth 0
  LA t0, sum
  LA a3, sum
  LB a0, 6(sp)
  OR a0, zero, a0
  LW t0, 0(t0)
  ADDIW t0, t0, 3
  SW t0, 0(a3)
  BNE a0, zero, bb223
  # implict jump to bb221
bb221:   # loop depth 0
  LD t0, 200(sp)
  LW t0, 40(t0)
  # implict jump to bb222
bb222:   # loop depth 0
  SLTU t0, zero, t0
  XORI t0, t0, 1
  SLTU t0, zero, t0
  JAL zero, bb150
bb223:   # loop depth 0
  ADD t0, zero, zero
  JAL zero, bb222
bb224:   # loop depth 0
  ADD t0, zero, zero
  JAL zero, bb148
bb225:   # loop depth 0
  LA t0, sum
  LA a3, sum
  OR a0, zero, a6
  LW t0, 0(t0)
  ADDIW t0, t0, 3
  SW t0, 0(a3)
  BNE a0, zero, bb228
  # implict jump to bb226
bb226:   # loop depth 0
  LD t0, 224(sp)
  LW t0, 28(t0)
  # implict jump to bb227
bb227:   # loop depth 0
  SLTU t0, zero, t0
  JAL zero, bb143
bb228:   # loop depth 0
  ADD t0, zero, zero
  JAL zero, bb227
bb229:   # loop depth 0
  LA t0, sum
  LA a3, sum
  OR a0, zero, a5
  LW t0, 0(t0)
  ADDIW t0, t0, 3
  SW t0, 0(a3)
  BNE a0, zero, bb232
  # implict jump to bb230
bb230:   # loop depth 0
  LD t0, 232(sp)
  LW t0, 24(t0)
  # implict jump to bb231
bb231:   # loop depth 0
  SLTU t0, zero, t0
  XORI t0, t0, 1
  SLTU t0, zero, t0
  JAL zero, bb141
bb232:   # loop depth 0
  ADD t0, zero, zero
  JAL zero, bb231
bb233:   # loop depth 0
  ADD t0, zero, zero
  JAL zero, bb139
bb234:   # loop depth 0
  ADDI t0, zero, 1
  JAL zero, bb144
bb235:   # loop depth 0
  ADD t0, zero, zero
  JAL zero, bb136
bb236:   # loop depth 0
  ADD t0, zero, zero
  JAL zero, bb131
bb237:   # loop depth 0
  ADDI t0, zero, 1
  JAL zero, bb132
bb238:   # loop depth 0
  LA t0, sum
  LA s3, sum
  LB t2, 1(sp)
  OR t2, zero, t2
  LW t0, 0(t0)
  ADDIW t0, t0, 3
  SW t0, 0(s3)
  BNE t2, zero, bb241
  # implict jump to bb239
bb239:   # loop depth 0
  LW t0, 4(s9)
  # implict jump to bb240
bb240:   # loop depth 0
  SLTU t0, zero, t0
  JAL zero, bb128
bb241:   # loop depth 0
  ADD t0, zero, zero
  JAL zero, bb240
bb242:   # loop depth 0
  ADD t0, zero, zero
  JAL zero, bb126
bb243:   # loop depth 1
  ADDIW t1, t1, 1
  JAL zero, bb121
bb244:   # loop depth 1
  LA s3, sum
  ADDIW t0, t1, -1
  SLTI s5, t0, 20
  SLT s4, t0, t1
  LW s3, 0(s3)
  LA s6, sum
  XORI s5, s5, 1
  XORI s4, s4, 1
  OR s4, s4, s5
  ADDIW s3, s3, 1
  SW s3, 0(s6)
  BNE s4, zero, bb249
  # implict jump to bb245
bb245:   # loop depth 1
  LA s3, array
  ADDI s4, zero, 1
  SH2ADD s3, t1, s3
  SW s4, -4(s3)
  BEQ t0, zero, bb248
  # implict jump to bb246
bb246:   # loop depth 1
  LW t0, -8(s3)
  # implict jump to bb247
bb247:   # loop depth 1
  SLTU t0, zero, t0
  JAL zero, bb123
bb248:   # loop depth 1
  LA t0, array
  LW t0, 0(t0)
  JAL zero, bb247
bb249:   # loop depth 1
  ADD t0, zero, zero
  JAL zero, bb247
bb250:   # loop depth 1
  JAL zero, bb42
bb251:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb115
bb252:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb116
bb253:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb111
bb254:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb112
bb255:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb107
bb256:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb108
bb257:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb103
bb258:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb104
bb259:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb99
bb260:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb100
bb261:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb95
bb262:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb96
bb263:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb91
bb264:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb92
bb265:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb87
bb266:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb88
bb267:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb83
bb268:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb84
bb269:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb79
bb270:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb80
bb271:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb75
bb272:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb76
bb273:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb71
bb274:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb72
bb275:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb67
bb276:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb68
bb277:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb63
bb278:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb64
bb279:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb59
bb280:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb60
bb281:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb55
bb282:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb56
bb283:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb51
bb284:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb52
bb285:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb47
bb286:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb48
bb287:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb44
bb288:   # loop depth 1
  JAL zero, bb1
bb289:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 19
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 552(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 15(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 1
  LD a0, 552(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb40
  # implict jump to bb290
bb290:   # loop depth 1
  ADDI t0, zero, 1
  LD a0, 448(sp)
  SW t0, 76(a0)
  JAL zero, bb40
bb291:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 18
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 544(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 14(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 1
  LD a0, 544(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb294
  # implict jump to bb292
bb292:   # loop depth 1
  ADDI t0, zero, 1
  LD a0, 440(sp)
  SW t0, 72(a0)
  LD t0, 40(sp)
  LW t0, 68(t0)
  # implict jump to bb293
bb293:   # loop depth 1
  SLTU t0, zero, t0
  JAL zero, bb39
bb294:   # loop depth 1
  ADD t0, zero, zero
  JAL zero, bb293
bb295:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 17
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 536(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 13(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 1
  LD a0, 536(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb298
  # implict jump to bb296
bb296:   # loop depth 1
  ADDI t0, zero, 1
  LD a0, 40(sp)
  SW t0, 68(a0)
  LD t0, 32(sp)
  LW t0, 64(t0)
  # implict jump to bb297
bb297:   # loop depth 1
  SLTU t0, zero, t0
  JAL zero, bb37
bb298:   # loop depth 1
  ADD t0, zero, zero
  JAL zero, bb297
bb299:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 16
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 456(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 12(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 1
  LD a0, 456(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb302
  # implict jump to bb300
bb300:   # loop depth 1
  ADDI t0, zero, 1
  LD a0, 32(sp)
  SW t0, 64(a0)
  LD t0, 80(sp)
  LW t0, 60(t0)
  # implict jump to bb301
bb301:   # loop depth 1
  SLTU t0, zero, t0
  JAL zero, bb35
bb302:   # loop depth 1
  ADD t0, zero, zero
  JAL zero, bb301
bb303:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 15
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 520(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 11(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 1
  LD a0, 520(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb306
  # implict jump to bb304
bb304:   # loop depth 1
  ADDI t0, zero, 1
  LD a0, 80(sp)
  SW t0, 60(a0)
  LD t0, 88(sp)
  LW t0, 56(t0)
  # implict jump to bb305
bb305:   # loop depth 1
  SLTU t0, zero, t0
  JAL zero, bb33
bb306:   # loop depth 1
  ADD t0, zero, zero
  JAL zero, bb305
bb307:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 14
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 512(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 10(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 1
  LD a0, 512(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb310
  # implict jump to bb308
bb308:   # loop depth 1
  ADDI t0, zero, 1
  LD a0, 88(sp)
  SW t0, 56(a0)
  LD t0, 96(sp)
  LW t0, 52(t0)
  # implict jump to bb309
bb309:   # loop depth 1
  SLTU t0, zero, t0
  JAL zero, bb31
bb310:   # loop depth 1
  ADD t0, zero, zero
  JAL zero, bb309
bb311:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 13
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 504(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 9(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 1
  LD a0, 504(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb314
  # implict jump to bb312
bb312:   # loop depth 1
  ADDI t0, zero, 1
  LD a0, 96(sp)
  SW t0, 52(a0)
  LD t0, 104(sp)
  LW t0, 48(t0)
  # implict jump to bb313
bb313:   # loop depth 1
  SLTU t0, zero, t0
  JAL zero, bb29
bb314:   # loop depth 1
  ADD t0, zero, zero
  JAL zero, bb313
bb315:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 12
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 496(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 8(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 1
  LD a0, 496(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb318
  # implict jump to bb316
bb316:   # loop depth 1
  ADDI t0, zero, 1
  LD a0, 104(sp)
  SW t0, 48(a0)
  LD t0, 72(sp)
  LW t0, 44(t0)
  # implict jump to bb317
bb317:   # loop depth 1
  SLTU t0, zero, t0
  JAL zero, bb27
bb318:   # loop depth 1
  ADD t0, zero, zero
  JAL zero, bb317
bb319:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 11
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 488(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 7(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 1
  LD a0, 488(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb322
  # implict jump to bb320
bb320:   # loop depth 1
  ADDI t0, zero, 1
  LD a0, 72(sp)
  SW t0, 44(a0)
  LD t0, 200(sp)
  LW t0, 40(t0)
  # implict jump to bb321
bb321:   # loop depth 1
  SLTU t0, zero, t0
  JAL zero, bb25
bb322:   # loop depth 1
  ADD t0, zero, zero
  JAL zero, bb321
bb323:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 10
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 480(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 6(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 1
  LD a0, 480(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb326
  # implict jump to bb324
bb324:   # loop depth 1
  ADDI t0, zero, 1
  LD a0, 200(sp)
  SW t0, 40(a0)
  LD t0, 208(sp)
  LW t0, 36(t0)
  # implict jump to bb325
bb325:   # loop depth 1
  SLTU t0, zero, t0
  JAL zero, bb23
bb326:   # loop depth 1
  ADD t0, zero, zero
  JAL zero, bb325
bb327:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 9
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 472(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 5(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 1
  LD a0, 472(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb330
  # implict jump to bb328
bb328:   # loop depth 1
  ADDI t0, zero, 1
  LD a0, 208(sp)
  SW t0, 36(a0)
  LD t0, 216(sp)
  LW t0, 32(t0)
  # implict jump to bb329
bb329:   # loop depth 1
  SLTU t0, zero, t0
  JAL zero, bb21
bb330:   # loop depth 1
  ADD t0, zero, zero
  JAL zero, bb329
bb331:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 8
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 464(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 4(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 1
  LD a0, 464(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb334
  # implict jump to bb332
bb332:   # loop depth 1
  ADDI t0, zero, 1
  LD a0, 216(sp)
  SW t0, 32(a0)
  LD t0, 224(sp)
  LW t0, 28(t0)
  # implict jump to bb333
bb333:   # loop depth 1
  SLTU t0, zero, t0
  JAL zero, bb19
bb334:   # loop depth 1
  ADD t0, zero, zero
  JAL zero, bb333
bb335:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 7
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 528(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  OR s8, s8, a6
  ADDIW t0, t0, 1
  LD a0, 528(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb338
  # implict jump to bb336
bb336:   # loop depth 1
  ADDI t0, zero, 1
  LD a0, 224(sp)
  SW t0, 28(a0)
  LD t0, 232(sp)
  LW t0, 24(t0)
  # implict jump to bb337
bb337:   # loop depth 1
  SLTU t0, zero, t0
  JAL zero, bb17
bb338:   # loop depth 1
  ADD t0, zero, zero
  JAL zero, bb337
bb339:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 6
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 192(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  OR s8, s8, a5
  ADDIW t0, t0, 1
  LD a0, 192(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb342
  # implict jump to bb340
bb340:   # loop depth 1
  ADDI t0, zero, 1
  LD a0, 232(sp)
  SW t0, 24(a0)
  LD t0, 240(sp)
  LW t0, 20(t0)
  # implict jump to bb341
bb341:   # loop depth 1
  SLTU t0, zero, t0
  JAL zero, bb15
bb342:   # loop depth 1
  ADD t0, zero, zero
  JAL zero, bb341
bb343:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 5
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 184(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  OR s8, s8, a4
  ADDIW t0, t0, 1
  LD a0, 184(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb346
  # implict jump to bb344
bb344:   # loop depth 1
  ADDI t0, zero, 1
  LD a0, 240(sp)
  SW t0, 20(a0)
  LD t0, 248(sp)
  LW t0, 16(t0)
  # implict jump to bb345
bb345:   # loop depth 1
  SLTU t0, zero, t0
  JAL zero, bb13
bb346:   # loop depth 1
  ADD t0, zero, zero
  JAL zero, bb345
bb347:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 4
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 176(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 3(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 1
  LD a0, 176(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb350
  # implict jump to bb348
bb348:   # loop depth 1
  ADDI t0, zero, 1
  LD a0, 248(sp)
  SW t0, 16(a0)
  LD t0, 256(sp)
  LW t0, 12(t0)
  # implict jump to bb349
bb349:   # loop depth 1
  SLTU t0, zero, t0
  JAL zero, bb11
bb350:   # loop depth 1
  ADD t0, zero, zero
  JAL zero, bb349
bb351:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 3
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 168(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 2(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 1
  LD a0, 168(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb354
  # implict jump to bb352
bb352:   # loop depth 1
  ADDI t0, zero, 1
  LD a0, 256(sp)
  SW t0, 12(a0)
  LD t0, 264(sp)
  LW t0, 8(t0)
  # implict jump to bb353
bb353:   # loop depth 1
  SLTU t0, zero, t0
  JAL zero, bb9
bb354:   # loop depth 1
  ADD t0, zero, zero
  JAL zero, bb353
bb355:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 2
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 48(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  OR s8, s8, a1
  ADDIW t0, t0, 1
  LD a0, 48(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb358
  # implict jump to bb356
bb356:   # loop depth 1
  ADDI t0, zero, 1
  LD a0, 264(sp)
  SW t0, 8(a0)
  LW t0, 4(s9)
  # implict jump to bb357
bb357:   # loop depth 1
  SLTU t0, zero, t0
  JAL zero, bb7
bb358:   # loop depth 1
  ADD t0, zero, zero
  JAL zero, bb357
bb359:   # loop depth 1
  LA t0, sum
  ADDI s8, zero, 1
  SLT s8, s8, t1
  LA a0, sum
  SD a0, 64(sp)
  LW t0, 0(t0)
  XORI s8, s8, 1
  LB a0, 1(sp)
  OR s8, s8, a0
  ADDIW t0, t0, 1
  LD a0, 64(sp)
  SW t0, 0(a0)
  BNE s8, zero, bb362
  # implict jump to bb360
bb360:   # loop depth 1
  LA s8, array
  ADDI t0, zero, 1
  SW t0, 4(s9)
  LW t0, 0(s8)
  # implict jump to bb361
bb361:   # loop depth 1
  SLTU t0, zero, t0
  JAL zero, bb5
bb362:   # loop depth 1
  ADD t0, zero, zero
  JAL zero, bb361
bb363:   # loop depth 1
  ADD t0, zero, zero
  JAL zero, bb3
