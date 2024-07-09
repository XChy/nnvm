.global params_f40_i24
.global main
.global params_fa40
.global params_f40
.global params_mix
.section .bss


.section .data
k:
.word 0x00000000
.CONSTANT.7.0:
.word 0x00000000
.section .text
params_f40_i24:
  ADDI sp, sp, -848
  SD s7, 648(sp)
  SD s9, 656(sp)
  SD s10, 664(sp)
  SD s11, 672(sp)
  SD ra, 680(sp)
  FSD fs10, 688(sp)
  FSD fs11, 696(sp)
  FSD fs8, 704(sp)
  FSD fs7, 712(sp)
  SD s8, 720(sp)
  FSD fs6, 728(sp)
  FSD fs1, 736(sp)
  SD s4, 744(sp)
  SD s3, 752(sp)
  FSD fs0, 760(sp)
  SD s2, 768(sp)
  SD s1, 776(sp)
  FSD fs9, 784(sp)
  SD s0, 792(sp)
  SD s5, 800(sp)
  FSD fs2, 808(sp)
  FSD fs3, 816(sp)
  SD s6, 824(sp)
  FSD fs4, 832(sp)
  FSD fs5, 840(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  FSGNJ.D fs0, fa0, fa0
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  FSGNJ.D fs1, fa1, fa1
  FSGNJ.D fs2, fa2, fa2
  FSGNJ.D fs3, fa3, fa3
  ADD s6, a6, zero
  FSGNJ.D fs4, fa4, fa4
  FSGNJ.D fs5, fa5, fa5
  ADD t4, a7, zero
  SW t4, 640(sp)
  FSGNJ.D fs6, fa6, fa6
  ADDI t5, sp, 848
  ADD s8, t5, zero
  LW t4, 0(s8)
  SW t4, 632(sp)
  FSGNJ.D fs7, fa7, fa7
  ADDI s8, sp, 852
  FLW fs8, 0(s8)
  ADDI s8, sp, 856
  FLW ft4, 0(s8)
  FSW ft4, 584(sp)
  ADDI s8, sp, 860
  FLW ft4, 0(s8)
  FSW ft4, 576(sp)
  ADDI s8, sp, 864
  FLW ft4, 0(s8)
  FSW ft4, 568(sp)
  ADDI s8, sp, 868
  FLW ft4, 0(s8)
  FSW ft4, 560(sp)
  ADDI s8, sp, 872
  LW t4, 0(s8)
  SW t4, 624(sp)
  ADDI s8, sp, 876
  FLW ft4, 0(s8)
  FSW ft4, 552(sp)
  ADDI s8, sp, 880
  LW t4, 0(s8)
  SW t4, 616(sp)
  ADDI s8, sp, 884
  LW t4, 0(s8)
  SW t4, 608(sp)
  ADDI s8, sp, 888
  FLW ft4, 0(s8)
  FSW ft4, 544(sp)
  ADDI s8, sp, 892
  FLW ft4, 0(s8)
  FSW ft4, 536(sp)
  ADDI s8, sp, 896
  FLW ft4, 0(s8)
  FSW ft4, 528(sp)
  ADDI s8, sp, 900
  FLW ft4, 0(s8)
  FSW ft4, 520(sp)
  ADDI s8, sp, 904
  FLW ft4, 0(s8)
  FSW ft4, 512(sp)
  ADDI s8, sp, 908
  LW t4, 0(s8)
  SW t4, 600(sp)
  ADDI s8, sp, 912
  FLW ft4, 0(s8)
  FSW ft4, 504(sp)
  ADDI s8, sp, 916
  LW t4, 0(s8)
  SW t4, 592(sp)
  ADDI s8, sp, 920
  FLW ft4, 0(s8)
  FSW ft4, 264(sp)
  ADDI s8, sp, 924
  FLW ft4, 0(s8)
  FSW ft4, 272(sp)
  ADDI s8, sp, 928
  FLW ft4, 0(s8)
  FSW ft4, 280(sp)
  ADDI s8, sp, 932
  FLW ft4, 0(s8)
  FSW ft4, 288(sp)
  ADDI s8, sp, 936
  LW t4, 0(s8)
  SW t4, 496(sp)
  ADDI s8, sp, 940
  LW t4, 0(s8)
  SW t4, 296(sp)
  ADDI s8, sp, 944
  FLW ft4, 0(s8)
  FSW ft4, 304(sp)
  ADDI s8, sp, 948
  FLW ft4, 0(s8)
  FSW ft4, 312(sp)
  ADDI s8, sp, 952
  FLW ft4, 0(s8)
  FSW ft4, 320(sp)
  ADDI s8, sp, 956
  LW t4, 0(s8)
  SW t4, 328(sp)
  ADDI s8, sp, 960
  FLW ft4, 0(s8)
  FSW ft4, 336(sp)
  ADDI s8, sp, 964
  LW t4, 0(s8)
  SW t4, 344(sp)
  ADDI s8, sp, 968
  LW t4, 0(s8)
  SW t4, 352(sp)
  ADDI s8, sp, 972
  FLW ft4, 0(s8)
  FSW ft4, 360(sp)
  ADDI s8, sp, 976
  FLW ft4, 0(s8)
  FSW ft4, 368(sp)
  ADDI s8, sp, 980
  FLW ft4, 0(s8)
  FSW ft4, 376(sp)
  ADDI s8, sp, 984
  FLW ft4, 0(s8)
  FSW ft4, 384(sp)
  ADDI s8, sp, 988
  LW t4, 0(s8)
  SW t4, 392(sp)
  ADDI s8, sp, 992
  LW t4, 0(s8)
  SW t4, 400(sp)
  ADDI s8, sp, 996
  LW t4, 0(s8)
  SW t4, 408(sp)
  ADDI s8, sp, 1000
  FLW ft4, 0(s8)
  FSW ft4, 416(sp)
  ADDI s8, sp, 1004
  FLW ft4, 0(s8)
  FSW ft4, 424(sp)
  ADDI s8, sp, 1008
  FLW ft4, 0(s8)
  FSW ft4, 432(sp)
  ADDI s8, sp, 1012
  FLW ft4, 0(s8)
  FSW ft4, 440(sp)
  ADDI s8, sp, 1016
  FLW ft4, 0(s8)
  FSW ft4, 448(sp)
  ADDI s8, sp, 1020
  FLW ft4, 0(s8)
  FSW ft4, 456(sp)
  ADDI s8, sp, 1024
  LW t4, 0(s8)
  SW t4, 464(sp)
  ADDI s8, sp, 1028
  FLW ft4, 0(s8)
  FSW ft4, 472(sp)
  ADDI s8, sp, 1032
  LW t4, 0(s8)
  SW t4, 480(sp)
  ADDI s8, sp, 1036
  FLW ft4, 0(s8)
  FSW ft4, 488(sp)
  XOR s8, s0, zero
  SLTU t2, zero, s8
  BNE t2, zero, bb1
  JAL zero, bb2
bb1:
  FLW ft4, 320(sp)
  FLW ft3, 584(sp)
  FADD.S ft9, ft4, ft3
  FLW ft4, 472(sp)
  FADD.S ft8, ft9, ft4
  FADD.S ft9, ft8, fs4
  FLW ft4, 280(sp)
  FADD.S ft8, fs0, ft4
  FLW ft4, 560(sp)
  FADD.S ft7, ft8, ft4
  FADD.S ft8, ft7, fs3
  FLW ft4, 520(sp)
  FADD.S ft7, fs1, ft4
  FLW ft4, 312(sp)
  FADD.S ft6, ft7, ft4
  FLW ft4, 576(sp)
  FADD.S ft7, ft6, ft4
  FLW ft4, 376(sp)
  FADD.S ft6, fs8, ft4
  FLW ft4, 304(sp)
  FADD.S ft5, ft6, ft4
  FADD.S ft6, ft5, fs2
  FLW ft4, 272(sp)
  FLW ft3, 456(sp)
  FADD.S ft5, ft4, ft3
  FLW ft4, 416(sp)
  FADD.S ft2, ft5, ft4
  FLW ft4, 424(sp)
  FADD.S ft5, ft2, ft4
  FLW ft4, 544(sp)
  FLW ft3, 264(sp)
  FADD.S ft2, ft4, ft3
  FLW ft4, 432(sp)
  FADD.S ft1, ft2, ft4
  FLW ft4, 528(sp)
  FADD.S ft2, ft1, ft4
  FLW ft4, 368(sp)
  FLW ft3, 512(sp)
  FADD.S ft1, ft4, ft3
  FLW ft4, 440(sp)
  FADD.S ft0, ft1, ft4
  FLW ft4, 360(sp)
  FADD.S ft1, ft0, ft4
  FLW ft4, 384(sp)
  FADD.S ft0, fs5, ft4
  FADD.S fs11, ft0, fs7
  FLW ft4, 336(sp)
  FADD.S ft0, fs11, ft4
  FLW ft4, 552(sp)
  FLW ft3, 536(sp)
  FADD.S fs11, ft4, ft3
  FLW ft4, 288(sp)
  FADD.S fs10, fs11, ft4
  FLW ft4, 488(sp)
  FADD.S fs11, fs10, ft4
  FLW ft4, 448(sp)
  FADD.S fs10, ft4, fs6
  FLW ft4, 568(sp)
  FADD.S fs9, fs10, ft4
  FLW ft4, 504(sp)
  FADD.S fs10, fs9, ft4
  FSW ft9, 224(sp)
  ADDI s8, sp, 228
  FSW ft8, 0(s8)
  ADDI s8, sp, 232
  FSW ft7, 0(s8)
  ADDI s8, sp, 236
  FSW ft6, 0(s8)
  ADDI s8, sp, 240
  FSW ft5, 0(s8)
  ADDI s8, sp, 244
  FSW ft2, 0(s8)
  ADDI s8, sp, 248
  FSW ft1, 0(s8)
  ADDI s8, sp, 252
  FSW ft0, 0(s8)
  ADDI s8, sp, 256
  FSW fs11, 0(s8)
  ADDI s8, sp, 260
  FSW fs10, 0(s8)
  LW t4, 640(sp)
  ADDW s8, t4, s3
  ADDW t2, s8, s1
  LW t4, 392(sp)
  ADDW s8, t4, s4
  ADDW t1, s8, s5
  LW t4, 624(sp)
  ADDW s8, s2, t4
  LW t4, 600(sp)
  ADDW t0, s8, t4
  LW t4, 296(sp)
  LW t3, 616(sp)
  ADDW s8, t4, t3
  LW t4, 344(sp)
  ADDW ra, s8, t4
  LW t4, 328(sp)
  LW t3, 608(sp)
  ADDW s8, t4, t3
  LW t4, 480(sp)
  ADDW s11, s8, t4
  LW t4, 464(sp)
  LW t3, 352(sp)
  ADDW s8, t4, t3
  LW t4, 592(sp)
  ADDW s10, s8, t4
  LW t4, 496(sp)
  LW t3, 632(sp)
  ADDW s8, t4, t3
  LW t4, 408(sp)
  ADDW s9, s8, t4
  LW t4, 400(sp)
  ADDW s8, t4, s6
  ADDW s7, s8, s0
  SW t2, 192(sp)
  ADDI s0, sp, 196
  SW t1, 0(s0)
  ADDI s0, sp, 200
  SW t0, 0(s0)
  ADDI s0, sp, 204
  SW ra, 0(s0)
  ADDI s0, sp, 208
  SW s11, 0(s0)
  ADDI s0, sp, 212
  SW s10, 0(s0)
  ADDI s0, sp, 216
  SW s9, 0(s0)
  ADDI s0, sp, 220
  SW s7, 0(s0)
  ADDI a0, zero, 10
  ADDI a1, sp, 224
  ADD a1, a1, zero
  CALL putfarray
  ADDI a0, zero, 8
  ADDI a1, sp, 192
  ADD a1, a1, zero
  CALL putarray
  ADD s0, zero, zero
  JAL zero, bb3
bb2:
  ADD a0, s3, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  FSGNJ.S fa0, fs0, fs0
  ADD a3, s3, zero
  ADD a4, s4, zero
  ADD a5, s5, zero
  FSGNJ.S fa1, fs1, fs1
  FSGNJ.S fa2, fs2, fs2
  FSGNJ.S fa3, fs3, fs3
  ADD a6, s6, zero
  FSGNJ.S fa4, fs4, fs4
  FSGNJ.S fa5, fs5, fs5
  LW t4, 640(sp)
  ADD a7, t4, zero
  FSGNJ.S fa6, fs6, fs6
  ADDI t6, sp, 0
  ADD s0, t6, zero
  LW t4, 632(sp)
  SW t4, 0(s0)
  FSGNJ.S fa7, fs7, fs7
  ADDI s0, sp, 4
  FSW fs8, 0(s0)
  ADDI s0, sp, 8
  FLW ft4, 584(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 12
  FLW ft4, 576(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 16
  FLW ft4, 568(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 20
  FLW ft4, 560(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 24
  LW t4, 624(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 28
  FLW ft4, 552(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 32
  LW t4, 616(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 36
  LW t4, 608(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 40
  FLW ft4, 544(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 44
  FLW ft4, 536(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 48
  FLW ft4, 528(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 52
  FLW ft4, 520(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 56
  FLW ft4, 512(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 60
  LW t4, 600(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 64
  FLW ft4, 504(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 68
  LW t4, 592(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 72
  FLW ft4, 264(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 76
  FLW ft4, 272(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 80
  FLW ft4, 280(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 84
  FLW ft4, 288(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 88
  LW t4, 496(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 92
  LW t4, 296(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 96
  FLW ft4, 304(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 100
  FLW ft4, 312(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 104
  FLW ft4, 320(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 108
  LW t4, 328(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 112
  FLW ft4, 336(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 116
  LW t4, 344(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 120
  LW t4, 352(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 124
  FLW ft4, 360(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 128
  FLW ft4, 368(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 132
  FLW ft4, 376(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 136
  FLW ft4, 384(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 140
  LW t4, 392(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 144
  LW t4, 400(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 148
  LW t4, 408(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 152
  FLW ft4, 416(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 156
  FLW ft4, 424(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 160
  FLW ft4, 432(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 164
  FLW ft4, 440(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 168
  FLW ft4, 448(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 172
  FLW ft4, 456(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 176
  LW t4, 464(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 180
  FLW ft4, 472(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 184
  LW t4, 480(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 188
  FLW ft4, 488(sp)
  FSW ft4, 0(s0)
  LW t4, 632(sp)
  FLW ft4, 584(sp)
  FLW ft3, 576(sp)
  FLW ft4, 568(sp)
  FLW ft3, 560(sp)
  LW t3, 624(sp)
  FLW ft4, 552(sp)
  LW t4, 616(sp)
  LW t3, 608(sp)
  FLW ft3, 544(sp)
  FLW ft4, 536(sp)
  FLW ft3, 528(sp)
  FLW ft4, 520(sp)
  FLW ft3, 512(sp)
  LW t4, 600(sp)
  FLW ft4, 504(sp)
  LW t3, 592(sp)
  FLW ft3, 264(sp)
  FLW ft4, 272(sp)
  FLW ft3, 280(sp)
  FLW ft4, 288(sp)
  LW t4, 496(sp)
  LW t3, 296(sp)
  FLW ft3, 304(sp)
  FLW ft4, 312(sp)
  FLW ft3, 320(sp)
  LW t4, 328(sp)
  FLW ft4, 336(sp)
  LW t3, 344(sp)
  LW t4, 352(sp)
  FLW ft3, 360(sp)
  FLW ft4, 368(sp)
  FLW ft3, 376(sp)
  FLW ft4, 384(sp)
  LW t3, 392(sp)
  LW t4, 400(sp)
  LW t3, 408(sp)
  FLW ft3, 416(sp)
  FLW ft4, 424(sp)
  FLW ft3, 432(sp)
  FLW ft4, 440(sp)
  FLW ft3, 448(sp)
  FLW ft4, 456(sp)
  LW t4, 464(sp)
  FLW ft3, 472(sp)
  LW t3, 480(sp)
  FLW ft4, 488(sp)
  CALL params_f40_i24
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  LD s7, 648(sp)
  LD s9, 656(sp)
  LD s10, 664(sp)
  LD s11, 672(sp)
  LD ra, 680(sp)
  FLD fs10, 688(sp)
  FLD fs11, 696(sp)
  FLD fs8, 704(sp)
  FLD fs7, 712(sp)
  LD s8, 720(sp)
  FLD fs6, 728(sp)
  FLD fs1, 736(sp)
  LD s4, 744(sp)
  LD s3, 752(sp)
  FLD fs0, 760(sp)
  LD s2, 768(sp)
  LD s1, 776(sp)
  FLD fs9, 784(sp)
  LD s0, 792(sp)
  LD s5, 800(sp)
  FLD fs2, 808(sp)
  FLD fs3, 816(sp)
  LD s6, 824(sp)
  FLD fs4, 832(sp)
  FLD fs5, 840(sp)
  ADDI sp, sp, 848
  JALR zero, 0(ra)
bb3:
  ADD s7, s0, zero
  SLTI s8, s7, 8
  BNE s8, zero, bb4
  JAL zero, bb5
bb4:
  ADDI s8, zero, 4
  MULW s9, s7, s8
  ADDI t5, sp, 192
  ADD s8, t5, s9
  LW s10, 0(s8)
  ADDI t6, sp, 224
  ADD s11, t6, s9
  FLW fs9, 0(s11)
  FCVT.S.W fs10, s10
  FSUB.S fs11, fs10, fs9
  FCVT.W.S s9, fs11, rtz
  SW s9, 0(s8)
  ADDIW s8, s7, 1
  ADD s0, s8, zero
  JAL zero, bb3
bb5:
  LA s0, k
  LW s7, 0(s0)
  ADDI s0, zero, 4
  MULW s8, s7, s0
  ADDI t5, sp, 192
  ADD s0, t5, s8
  LW s7, 0(s0)
  FCVT.S.W fs9, s7
  FSGNJ.S fa0, fs9, fs9
  LD s7, 648(sp)
  LD s9, 656(sp)
  LD s10, 664(sp)
  LD s11, 672(sp)
  LD ra, 680(sp)
  FLD fs10, 688(sp)
  FLD fs11, 696(sp)
  FLD fs8, 704(sp)
  FLD fs7, 712(sp)
  LD s8, 720(sp)
  FLD fs6, 728(sp)
  FLD fs1, 736(sp)
  LD s4, 744(sp)
  LD s3, 752(sp)
  FLD fs0, 760(sp)
  LD s2, 768(sp)
  LD s1, 776(sp)
  FLD fs9, 784(sp)
  LD s0, 792(sp)
  LD s5, 800(sp)
  FLD fs2, 808(sp)
  FLD fs3, 816(sp)
  LD s6, 824(sp)
  FLD fs4, 832(sp)
  FLD fs5, 840(sp)
  ADDI sp, sp, 848
  JALR zero, 0(ra)
main:
  LUI t0, 1048575
  ADDIW t0, t0, 1616
  ADD sp, sp, t0
  LUI t5, 1
  ADDIW t5, t5, -1816
  ADD t5, t5, sp
  FSD fs3, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1808
  ADD t6, t6, sp
  SD s8, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1800
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1792
  ADD t6, t6, sp
  FSD fs1, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1784
  ADD t5, t5, sp
  FSD fs8, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1776
  ADD t6, t6, sp
  FSD fs0, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1768
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1752
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1744
  ADD t6, t6, sp
  FSD fs2, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1736
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1728
  ADD t6, t6, sp
  SD s5, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1720
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1712
  ADD t6, t6, sp
  SD s6, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1704
  ADD t5, t5, sp
  FSD fs4, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1696
  ADD t6, t6, sp
  SD s9, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1688
  ADD t5, t5, sp
  FSD fs5, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1680
  ADD t6, t6, sp
  SD s10, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1672
  ADD t5, t5, sp
  FSD fs6, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1664
  ADD t6, t6, sp
  SD s11, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1656
  ADD t5, t5, sp
  FSD fs7, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1648
  ADD t6, t6, sp
  FSD fs9, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1640
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1632
  ADD t6, t6, sp
  FSD fs10, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1624
  ADD t5, t5, sp
  FSD fs11, 0(t5)
  CALL getint
  ADD s0, a0, zero
  LA s1, k
  SW s0, 0(s1)
  ADD s0, zero, zero
  JAL zero, bb7
bb7:
  ADD s1, s0, zero
  SLTI s2, s1, 40
  BNE s2, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s2, zero, 12
  MULW s3, s1, s2
  ADDI t6, sp, 608
  ADD s2, t6, s3
  ADD a0, s2, zero
  CALL getfarray
  ADD s2, a0, zero
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb7
bb9:
  ADD s0, zero, zero
  JAL zero, bb10
bb10:
  ADD s1, s0, zero
  SLTI s2, s1, 24
  BNE s2, zero, bb11
  JAL zero, bb12
bb11:
  ADDI s2, zero, 12
  MULW s3, s1, s2
  ADDI t5, sp, 320
  ADD s2, t5, s3
  ADD a0, s2, zero
  CALL getarray
  ADD s2, a0, zero
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb10
bb12:
  LA s0, k
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  ADDI t6, sp, 608
  ADD s0, t6, s2
  FLW fs0, 0(s0)
  ADDI t4, sp, 620
  SD t4, 1152(sp)
  LA s1, k
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  LD t4, 1152(sp)
  ADD s1, t4, s3
  FLW fs1, 0(s1)
  ADDI t4, sp, 632
  SD t4, 1632(sp)
  LA s2, k
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  LD t4, 1632(sp)
  ADD s2, t4, s4
  FLW fs2, 0(s2)
  ADDI t4, sp, 644
  SD t4, 1616(sp)
  LA s3, k
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  LD t4, 1616(sp)
  ADD s3, t4, s5
  FLW fs3, 0(s3)
  ADDI t4, sp, 656
  SD t4, 1592(sp)
  LA s4, k
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MULW s6, s5, s4
  LD t4, 1592(sp)
  ADD s4, t4, s6
  FLW fs4, 0(s4)
  ADDI t4, sp, 668
  SD t4, 1136(sp)
  LA s5, k
  LW s6, 0(s5)
  ADDI s5, zero, 4
  MULW s7, s6, s5
  LD t4, 1136(sp)
  ADD s5, t4, s7
  FLW fs5, 0(s5)
  ADDI t4, sp, 680
  SD t4, 1120(sp)
  LA s6, k
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s8, s7, s6
  LD t4, 1120(sp)
  ADD s6, t4, s8
  FLW fs6, 0(s6)
  ADDI t4, sp, 692
  SD t4, 1096(sp)
  LA s7, k
  LW s8, 0(s7)
  ADDI s7, zero, 4
  MULW s9, s8, s7
  LD t4, 1096(sp)
  ADD s7, t4, s9
  FLW fs7, 0(s7)
  ADDI t4, sp, 704
  SD t4, 1088(sp)
  LA s8, k
  LW s9, 0(s8)
  ADDI s8, zero, 4
  MULW s10, s9, s8
  LD t4, 1088(sp)
  ADD s8, t4, s10
  FLW fs8, 0(s8)
  ADDI t4, sp, 716
  SD t4, 1584(sp)
  LA s9, k
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  LD t4, 1584(sp)
  ADD s9, t4, s11
  FLW fs9, 0(s9)
  ADDI t4, sp, 728
  SD t4, 1568(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s7, s11, s10
  LD t4, 1568(sp)
  ADD s10, t4, s7
  FLW fs10, 0(s10)
  ADDI t4, sp, 740
  SD t4, 1536(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s6, s11, s10
  LD t4, 1536(sp)
  ADD s10, t4, s6
  FLW fs11, 0(s10)
  ADDI t4, sp, 752
  SD t4, 1104(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s6, s11, s10
  LD t4, 1104(sp)
  ADD s10, t4, s6
  FLW ft4, 0(s10)
  FSW ft4, 1112(sp)
  ADDI t4, sp, 764
  SD t4, 1520(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s5, s11, s10
  LD t4, 1520(sp)
  ADD s10, t4, s5
  FLW ft4, 0(s10)
  FSW ft4, 1128(sp)
  ADDI t4, sp, 776
  SD t4, 1504(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s4, s11, s10
  LD t4, 1504(sp)
  ADD s10, t4, s4
  FLW ft4, 0(s10)
  FSW ft4, 1144(sp)
  ADDI t4, sp, 788
  SD t4, 1488(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s0, s11, s10
  LD t4, 1488(sp)
  ADD s10, t4, s0
  FLW ft4, 0(s10)
  FSW ft4, 1160(sp)
  ADDI t4, sp, 800
  SD t4, 1168(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s0, s11, s10
  LD t4, 1168(sp)
  ADD s10, t4, s0
  FLW ft4, 0(s10)
  FSW ft4, 1176(sp)
  ADDI t4, sp, 812
  SD t4, 1184(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s0, s11, s10
  LD t4, 1184(sp)
  ADD s10, t4, s0
  FLW ft4, 0(s10)
  FSW ft4, 1192(sp)
  ADDI t4, sp, 824
  SD t4, 1200(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s0, s11, s10
  LD t4, 1200(sp)
  ADD s10, t4, s0
  FLW ft4, 0(s10)
  FSW ft4, 1208(sp)
  ADDI t4, sp, 836
  SD t4, 1216(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s0, s11, s10
  LD t4, 1216(sp)
  ADD s10, t4, s0
  FLW ft4, 0(s10)
  FSW ft4, 1224(sp)
  ADDI t4, sp, 848
  SD t4, 1232(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s0, s11, s10
  LD t4, 1232(sp)
  ADD s10, t4, s0
  FLW ft4, 0(s10)
  FSW ft4, 1240(sp)
  ADDI t4, sp, 860
  SD t4, 1248(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s0, s11, s10
  LD t4, 1248(sp)
  ADD s10, t4, s0
  FLW ft4, 0(s10)
  FSW ft4, 1256(sp)
  ADDI t4, sp, 872
  SD t4, 1264(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s0, s11, s10
  LD t4, 1264(sp)
  ADD s10, t4, s0
  FLW ft4, 0(s10)
  FSW ft4, 1272(sp)
  ADDI t4, sp, 884
  SD t4, 1280(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s0, s11, s10
  LD t4, 1280(sp)
  ADD s10, t4, s0
  FLW ft4, 0(s10)
  FSW ft4, 1288(sp)
  ADDI t4, sp, 896
  SD t4, 1296(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s0, s11, s10
  LD t4, 1296(sp)
  ADD s10, t4, s0
  FLW ft4, 0(s10)
  FSW ft4, 1304(sp)
  ADDI t4, sp, 908
  SD t4, 1312(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s0, s11, s10
  LD t4, 1312(sp)
  ADD s10, t4, s0
  FLW ft4, 0(s10)
  FSW ft4, 1320(sp)
  ADDI t4, sp, 920
  SD t4, 1328(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s0, s11, s10
  LD t4, 1328(sp)
  ADD s10, t4, s0
  FLW ft4, 0(s10)
  FSW ft4, 1336(sp)
  ADDI t4, sp, 932
  SD t4, 1344(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s0, s11, s10
  LD t4, 1344(sp)
  ADD s10, t4, s0
  FLW ft4, 0(s10)
  FSW ft4, 1352(sp)
  ADDI t4, sp, 944
  SD t4, 1360(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s0, s11, s10
  LD t4, 1360(sp)
  ADD s10, t4, s0
  FLW ft4, 0(s10)
  FSW ft4, 1368(sp)
  ADDI t4, sp, 956
  SD t4, 1376(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s0, s11, s10
  LD t4, 1376(sp)
  ADD s10, t4, s0
  FLW ft4, 0(s10)
  FSW ft4, 1384(sp)
  ADDI t4, sp, 968
  SD t4, 1392(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s0, s11, s10
  LD t4, 1392(sp)
  ADD s10, t4, s0
  FLW ft4, 0(s10)
  FSW ft4, 1400(sp)
  ADDI t4, sp, 980
  SD t4, 1408(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s0, s11, s10
  LD t4, 1408(sp)
  ADD s10, t4, s0
  FLW ft4, 0(s10)
  FSW ft4, 1416(sp)
  ADDI t4, sp, 992
  SD t4, 1424(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s0, s11, s10
  LD t4, 1424(sp)
  ADD s10, t4, s0
  FLW ft4, 0(s10)
  FSW ft4, 1432(sp)
  ADDI t4, sp, 1004
  SD t4, 1440(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s0, s11, s10
  LD t4, 1440(sp)
  ADD s10, t4, s0
  FLW ft4, 0(s10)
  FSW ft4, 1448(sp)
  ADDI t4, sp, 1016
  SD t4, 1456(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s0, s11, s10
  LD t4, 1456(sp)
  ADD s10, t4, s0
  FLW ft4, 0(s10)
  FSW ft4, 1464(sp)
  ADDI t4, sp, 1028
  SD t4, 1472(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s0, s11, s10
  LD t4, 1472(sp)
  ADD s10, t4, s0
  FLW ft4, 0(s10)
  FSW ft4, 1480(sp)
  ADDI t4, sp, 1040
  SD t4, 1680(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s4, s11, s10
  LD t4, 1680(sp)
  ADD s10, t4, s4
  FLW ft4, 0(s10)
  FSW ft4, 1496(sp)
  ADDI t4, sp, 1052
  SD t4, 1664(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s5, s11, s10
  LD t4, 1664(sp)
  ADD s10, t4, s5
  FLW ft4, 0(s10)
  FSW ft4, 1512(sp)
  ADDI t4, sp, 1064
  SD t4, 1656(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s6, s11, s10
  LD t4, 1656(sp)
  ADD s10, t4, s6
  FLW ft4, 0(s10)
  FSW ft4, 1528(sp)
  ADDI t4, sp, 1076
  SD t4, 1640(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s7, s11, s10
  LD t4, 1640(sp)
  ADD s10, t4, s7
  FLW ft4, 0(s10)
  FSW ft4, 1544(sp)
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  FSGNJ.S fa2, fs2, fs2
  FSGNJ.S fa3, fs3, fs3
  FSGNJ.S fa4, fs4, fs4
  FSGNJ.S fa5, fs5, fs5
  FSGNJ.S fa6, fs6, fs6
  FSGNJ.S fa7, fs7, fs7
  ADDI t5, sp, 0
  ADD s7, t5, zero
  FSW fs8, 0(s7)
  ADDI s7, sp, 4
  FSW fs9, 0(s7)
  ADDI s7, sp, 8
  FSW fs10, 0(s7)
  ADDI s7, sp, 12
  FSW fs11, 0(s7)
  ADDI s7, sp, 16
  FLW ft4, 1112(sp)
  FSW ft4, 0(s7)
  ADDI s7, sp, 20
  FLW ft4, 1128(sp)
  FSW ft4, 0(s7)
  ADDI s7, sp, 24
  FLW ft4, 1144(sp)
  FSW ft4, 0(s7)
  ADDI s7, sp, 28
  FLW ft4, 1160(sp)
  FSW ft4, 0(s7)
  ADDI s7, sp, 32
  FLW ft4, 1176(sp)
  FSW ft4, 0(s7)
  ADDI s7, sp, 36
  FLW ft4, 1192(sp)
  FSW ft4, 0(s7)
  ADDI s7, sp, 40
  FLW ft4, 1208(sp)
  FSW ft4, 0(s7)
  ADDI s7, sp, 44
  FLW ft4, 1224(sp)
  FSW ft4, 0(s7)
  ADDI s7, sp, 48
  FLW ft4, 1240(sp)
  FSW ft4, 0(s7)
  ADDI s7, sp, 52
  FLW ft4, 1256(sp)
  FSW ft4, 0(s7)
  ADDI s7, sp, 56
  FLW ft4, 1272(sp)
  FSW ft4, 0(s7)
  ADDI s7, sp, 60
  FLW ft4, 1288(sp)
  FSW ft4, 0(s7)
  ADDI s7, sp, 64
  FLW ft4, 1304(sp)
  FSW ft4, 0(s7)
  ADDI s7, sp, 68
  FLW ft4, 1320(sp)
  FSW ft4, 0(s7)
  ADDI s7, sp, 72
  FLW ft4, 1336(sp)
  FSW ft4, 0(s7)
  ADDI s7, sp, 76
  FLW ft4, 1352(sp)
  FSW ft4, 0(s7)
  ADDI s7, sp, 80
  FLW ft4, 1368(sp)
  FSW ft4, 0(s7)
  ADDI s7, sp, 84
  FLW ft4, 1384(sp)
  FSW ft4, 0(s7)
  ADDI s7, sp, 88
  FLW ft4, 1400(sp)
  FSW ft4, 0(s7)
  ADDI s7, sp, 92
  FLW ft4, 1416(sp)
  FSW ft4, 0(s7)
  ADDI s7, sp, 96
  FLW ft4, 1432(sp)
  FSW ft4, 0(s7)
  ADDI s7, sp, 100
  FLW ft4, 1448(sp)
  FSW ft4, 0(s7)
  ADDI s7, sp, 104
  FLW ft4, 1464(sp)
  FSW ft4, 0(s7)
  ADDI s7, sp, 108
  FLW ft4, 1480(sp)
  FSW ft4, 0(s7)
  ADDI s7, sp, 112
  FLW ft4, 1496(sp)
  FSW ft4, 0(s7)
  ADDI s7, sp, 116
  FLW ft4, 1512(sp)
  FSW ft4, 0(s7)
  ADDI s7, sp, 120
  FLW ft4, 1528(sp)
  FSW ft4, 0(s7)
  ADDI s7, sp, 124
  FLW ft4, 1544(sp)
  FSW ft4, 0(s7)
  FLW ft4, 1112(sp)
  FLW ft3, 1128(sp)
  FLW ft4, 1144(sp)
  FLW ft3, 1160(sp)
  FLW ft4, 1176(sp)
  FLW ft3, 1192(sp)
  FLW ft4, 1208(sp)
  FLW ft3, 1224(sp)
  FLW ft4, 1240(sp)
  FLW ft3, 1256(sp)
  FLW ft4, 1272(sp)
  FLW ft3, 1288(sp)
  FLW ft4, 1304(sp)
  FLW ft3, 1320(sp)
  FLW ft4, 1336(sp)
  FLW ft3, 1352(sp)
  FLW ft4, 1368(sp)
  FLW ft3, 1384(sp)
  FLW ft4, 1400(sp)
  FLW ft3, 1416(sp)
  FLW ft4, 1432(sp)
  FLW ft3, 1448(sp)
  FLW ft4, 1464(sp)
  FLW ft3, 1480(sp)
  FLW ft4, 1496(sp)
  FLW ft3, 1512(sp)
  FLW ft4, 1528(sp)
  FLW ft3, 1544(sp)
  CALL params_f40
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 1688(sp)
  ADDI t4, sp, 596
  SD t4, 1552(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s7, s11, s10
  LD t4, 1552(sp)
  ADD s10, t4, s7
  LW s7, 0(s10)
  ADDI t4, sp, 344
  SD t4, 1560(sp)
  LA s11, k
  LW s10, 0(s11)
  ADDI s11, zero, 4
  MULW s9, s10, s11
  LD t4, 1560(sp)
  ADD s10, t4, s9
  LW s9, 0(s10)
  ADDI t4, sp, 392
  SD t4, 1576(sp)
  LA s11, k
  LW s10, 0(s11)
  ADDI s11, zero, 4
  MULW s8, s10, s11
  LD t4, 1576(sp)
  ADD s10, t4, s8
  LW s8, 0(s10)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s3, s11, s10
  LD t4, 1592(sp)
  ADD s10, t4, s3
  FLW fs1, 0(s10)
  ADDI t4, sp, 332
  SD t4, 1600(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s3, s11, s10
  LD t4, 1600(sp)
  ADD s10, t4, s3
  LW s3, 0(s10)
  ADDI t4, sp, 368
  SD t4, 1608(sp)
  LA s11, k
  LW s10, 0(s11)
  ADDI s11, zero, 4
  MULW s2, s10, s11
  LD t4, 1608(sp)
  ADD s10, t4, s2
  LW s2, 0(s10)
  ADDI t4, sp, 380
  SD t4, 1624(sp)
  LA s11, k
  LW s10, 0(s11)
  ADDI s11, zero, 4
  MULW s1, s10, s11
  LD t4, 1624(sp)
  ADD s10, t4, s1
  LW s1, 0(s10)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s6, s11, s10
  LD t4, 1088(sp)
  ADD s10, t4, s6
  FLW fs2, 0(s10)
  LA s6, k
  LW s10, 0(s6)
  ADDI s6, zero, 4
  MULW s11, s10, s6
  LD t4, 1488(sp)
  ADD s6, t4, s11
  FLW fs3, 0(s6)
  LA s6, k
  LW s10, 0(s6)
  ADDI s6, zero, 4
  MULW s11, s10, s6
  LD t4, 1096(sp)
  ADD s6, t4, s11
  FLW fs4, 0(s6)
  ADDI t4, sp, 584
  SD t4, 1648(sp)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s6, s11, s10
  LD t4, 1648(sp)
  ADD s10, t4, s6
  LW s6, 0(s10)
  LA s10, k
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s5, s11, s10
  LD t4, 1616(sp)
  ADD s10, t4, s5
  FLW fs5, 0(s10)
  LA s5, k
  LW s10, 0(s5)
  ADDI s5, zero, 4
  MULW s11, s10, s5
  LD t4, 1360(sp)
  ADD s5, t4, s11
  FLW fs6, 0(s5)
  LA s5, k
  LW s10, 0(s5)
  ADDI s5, zero, 4
  MULW s11, s10, s5
  ADDI t6, sp, 320
  ADD s5, t6, s11
  LW s10, 0(s5)
  LA s5, k
  LW s11, 0(s5)
  ADDI s5, zero, 4
  MULW s4, s11, s5
  LD t4, 1664(sp)
  ADD s5, t4, s4
  FLW fs7, 0(s5)
  ADDI t4, sp, 548
  SD t4, 1672(sp)
  LA s5, k
  LW s11, 0(s5)
  ADDI s5, zero, 4
  MULW s4, s11, s5
  LD t4, 1672(sp)
  ADD s5, t4, s4
  LW s4, 0(s5)
  LA s5, k
  LW s11, 0(s5)
  ADDI s5, zero, 4
  MULW s0, s11, s5
  LD t4, 1392(sp)
  ADD s5, t4, s0
  FLW fs8, 0(s5)
  LA s0, k
  LW s5, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s5, s0
  LD t4, 1104(sp)
  ADD s0, t4, s11
  FLW fs9, 0(s0)
  LA s0, k
  LW s5, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s5, s0
  LD t4, 1152(sp)
  ADD s0, t4, s11
  FLW fs10, 0(s0)
  LA s0, k
  LW s5, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s5, s0
  LD t4, 1536(sp)
  ADD s0, t4, s11
  FLW fs11, 0(s0)
  LA s0, k
  LW s5, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s5, s0
  LD t4, 1656(sp)
  ADD s0, t4, s11
  FLW fs0, 0(s0)
  LA s0, k
  LW s5, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s5, s0
  LD t4, 1120(sp)
  ADD s0, t4, s11
  FLW ft4, 0(s0)
  FSW ft4, 1696(sp)
  ADDI t4, sp, 404
  SD t4, 1704(sp)
  LA s5, k
  LW s11, 0(s5)
  ADDI s5, zero, 4
  MULW s0, s11, s5
  LD t4, 1704(sp)
  ADD s5, t4, s0
  LW t4, 0(s5)
  SW t4, 1712(sp)
  LA s5, k
  LW s11, 0(s5)
  ADDI s5, zero, 4
  MULW s0, s11, s5
  LD t4, 1424(sp)
  ADD s5, t4, s0
  FLW ft4, 0(s5)
  FSW ft4, 1720(sp)
  ADDI t4, sp, 440
  SD t4, 1728(sp)
  LA s5, k
  LW s11, 0(s5)
  ADDI s5, zero, 4
  MULW s0, s11, s5
  LD t4, 1728(sp)
  ADD s5, t4, s0
  LW t4, 0(s5)
  SW t4, 1744(sp)
  ADDI t4, sp, 476
  SD t4, 1736(sp)
  LA s11, k
  LW s5, 0(s11)
  ADDI s11, zero, 4
  MULW s0, s5, s11
  LD t4, 1736(sp)
  ADD s5, t4, s0
  LW t4, 0(s5)
  SW t4, 1752(sp)
  LA s5, k
  LW s11, 0(s5)
  ADDI s5, zero, 4
  MULW s0, s11, s5
  LD t4, 1232(sp)
  ADD s5, t4, s0
  FLW ft4, 0(s5)
  FSW ft4, 1760(sp)
  LA s0, k
  LW s5, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s5, s0
  LD t4, 1440(sp)
  ADD s0, t4, s11
  FLW ft4, 0(s0)
  FSW ft4, 1768(sp)
  LA s0, k
  LW s5, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s5, s0
  LD t4, 1280(sp)
  ADD s0, t4, s11
  FLW ft4, 0(s0)
  FSW ft4, 1776(sp)
  LA s0, k
  LW s5, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s5, s0
  LD t4, 1584(sp)
  ADD s0, t4, s11
  FLW ft4, 0(s0)
  FSW ft4, 1784(sp)
  LA s0, k
  LW s5, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s5, s0
  LD t4, 1312(sp)
  ADD s0, t4, s11
  FLW ft4, 0(s0)
  FSW ft4, 1792(sp)
  ADDI t4, sp, 416
  SD t4, 1800(sp)
  LA s5, k
  LW s11, 0(s5)
  ADDI s5, zero, 4
  MULW s0, s11, s5
  LD t4, 1800(sp)
  ADD s5, t4, s0
  LW t4, 0(s5)
  SW t4, 1808(sp)
  LA s5, k
  LW s11, 0(s5)
  ADDI s5, zero, 4
  MULW s0, s11, s5
  LD t4, 1640(sp)
  ADD s5, t4, s0
  FLW ft4, 0(s5)
  FSW ft4, 1816(sp)
  ADDI t4, sp, 524
  SD t4, 1824(sp)
  LA s5, k
  LW s11, 0(s5)
  ADDI s5, zero, 4
  MULW s0, s11, s5
  LD t4, 1824(sp)
  ADD s5, t4, s0
  LW t4, 0(s5)
  SW t4, 1832(sp)
  LA s5, k
  LW s11, 0(s5)
  ADDI s5, zero, 4
  MULW s0, s11, s5
  LD t4, 1248(sp)
  ADD s5, t4, s0
  FLW ft4, 0(s5)
  FSW ft4, 1840(sp)
  LA s0, k
  LW s5, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s5, s0
  LD t4, 1168(sp)
  ADD s0, t4, s11
  FLW ft4, 0(s0)
  FSW ft4, 1848(sp)
  LA s0, k
  LW s5, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s5, s0
  LD t4, 1136(sp)
  ADD s0, t4, s11
  FLW ft4, 0(s0)
  FSW ft4, 1856(sp)
  LA s0, k
  LW s5, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s5, s0
  LD t4, 1456(sp)
  ADD s0, t4, s11
  FLW ft4, 0(s0)
  FSW ft4, 1864(sp)
  ADDI t4, sp, 536
  SD t4, 1872(sp)
  LA s5, k
  LW s11, 0(s5)
  ADDI s5, zero, 4
  MULW s0, s11, s5
  LD t4, 1872(sp)
  ADD s5, t4, s0
  LW t4, 0(s5)
  SW t4, 1888(sp)
  ADDI t4, sp, 428
  SD t4, 1880(sp)
  LA s11, k
  LW s5, 0(s11)
  ADDI s11, zero, 4
  MULW s0, s5, s11
  LD t4, 1880(sp)
  ADD s5, t4, s0
  LW t4, 0(s5)
  SW t4, 1896(sp)
  LA s5, k
  LW s11, 0(s5)
  ADDI s5, zero, 4
  MULW s0, s11, s5
  LD t4, 1504(sp)
  ADD s5, t4, s0
  FLW ft4, 0(s5)
  FSW ft4, 1904(sp)
  LA s0, k
  LW s5, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s5, s0
  LD t4, 1568(sp)
  ADD s0, t4, s11
  FLW ft4, 0(s0)
  FSW ft4, 1912(sp)
  LA s0, k
  LW s5, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s5, s0
  ADDI t5, sp, 608
  ADD s0, t5, s11
  FLW ft4, 0(s0)
  FSW ft4, 1920(sp)
  ADDI t4, sp, 464
  SD t4, 1928(sp)
  LA s5, k
  LW s11, 0(s5)
  ADDI s5, zero, 4
  MULW s0, s11, s5
  LD t4, 1928(sp)
  ADD s5, t4, s0
  LW t4, 0(s5)
  SW t4, 1936(sp)
  LA s5, k
  LW s11, 0(s5)
  ADDI s5, zero, 4
  MULW s0, s11, s5
  LD t4, 1408(sp)
  ADD s5, t4, s0
  FLW ft4, 0(s5)
  FSW ft4, 1944(sp)
  ADDI t4, sp, 452
  SD t4, 1952(sp)
  LA s5, k
  LW s11, 0(s5)
  ADDI s5, zero, 4
  MULW s0, s11, s5
  LD t4, 1952(sp)
  ADD s5, t4, s0
  LW t4, 0(s5)
  SW t4, 1968(sp)
  ADDI t4, sp, 512
  SD t4, 1960(sp)
  LA s11, k
  LW s5, 0(s11)
  ADDI s11, zero, 4
  MULW s0, s5, s11
  LD t4, 1960(sp)
  ADD s5, t4, s0
  LW t4, 0(s5)
  SW t4, 1976(sp)
  LA s5, k
  LW s11, 0(s5)
  ADDI s5, zero, 4
  MULW s0, s11, s5
  LD t4, 1344(sp)
  ADD s5, t4, s0
  FLW ft4, 0(s5)
  FSW ft4, 1984(sp)
  LA s0, k
  LW s5, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s5, s0
  LD t4, 1296(sp)
  ADD s0, t4, s11
  FLW ft4, 0(s0)
  FSW ft4, 1992(sp)
  LA s0, k
  LW s5, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s5, s0
  LD t4, 1520(sp)
  ADD s0, t4, s11
  FLW ft4, 0(s0)
  FSW ft4, 2000(sp)
  LA s0, k
  LW s5, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s5, s0
  LD t4, 1376(sp)
  ADD s0, t4, s11
  FLW ft4, 0(s0)
  FSW ft4, 2008(sp)
  ADDI t4, sp, 356
  SD t4, 2016(sp)
  LA s5, k
  LW s11, 0(s5)
  ADDI s5, zero, 4
  MULW s0, s11, s5
  LD t4, 2016(sp)
  ADD s5, t4, s0
  LW t4, 0(s5)
  SW t4, 2032(sp)
  ADDI t4, sp, 572
  SD t4, 2024(sp)
  LA s11, k
  LW s5, 0(s11)
  ADDI s11, zero, 4
  MULW s0, s5, s11
  LD t4, 2024(sp)
  ADD s5, t4, s0
  LW t4, 0(s5)
  LUI t6, 1
  ADDIW t6, t6, -2048
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, sp, 560
  SD t4, 2040(sp)
  LA s11, k
  LW s5, 0(s11)
  ADDI s11, zero, 4
  MULW s0, s5, s11
  LD t4, 2040(sp)
  ADD s5, t4, s0
  LW t4, 0(s5)
  LUI t5, 1
  ADDIW t5, t5, -2040
  ADD t5, t5, sp
  SW t4, 0(t5)
  LA s5, k
  LW s11, 0(s5)
  ADDI s5, zero, 4
  MULW s0, s11, s5
  LD t4, 1200(sp)
  ADD s5, t4, s0
  FLW ft4, 0(s5)
  LUI t6, 1
  ADDIW t6, t6, -2032
  ADD t6, t6, sp
  FSW ft4, 0(t6)
  LA s0, k
  LW s5, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s5, s0
  LD t4, 1216(sp)
  ADD s0, t4, s11
  FLW ft4, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, -2024
  ADD t5, t5, sp
  FSW ft4, 0(t5)
  LA s0, k
  LW s5, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s5, s0
  LD t4, 1264(sp)
  ADD s0, t4, s11
  FLW ft4, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -2016
  ADD t6, t6, sp
  FSW ft4, 0(t6)
  LA s0, k
  LW s5, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s5, s0
  LD t4, 1328(sp)
  ADD s0, t4, s11
  FLW ft4, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, -2008
  ADD t5, t5, sp
  FSW ft4, 0(t5)
  LA s0, k
  LW s5, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s5, s0
  LD t4, 1680(sp)
  ADD s0, t4, s11
  FLW ft4, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -2000
  ADD t6, t6, sp
  FSW ft4, 0(t6)
  LA s0, k
  LW s5, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s5, s0
  LD t4, 1184(sp)
  ADD s0, t4, s11
  FLW ft4, 0(s0)
  LUI t4, 1
  ADDIW t4, t4, -1992
  ADD t4, t4, sp
  FSW ft4, 0(t4)
  ADDI t4, sp, 500
  LUI t5, 1
  ADDIW t5, t5, -1984
  ADD t5, t5, sp
  SD t4, 0(t5)
  LA s5, k
  LW s11, 0(s5)
  ADDI s5, zero, 4
  MULW s0, s11, s5
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s5, t4, s0
  LW t4, 0(s5)
  LUI t6, 1
  ADDIW t6, t6, -1976
  ADD t6, t6, sp
  SW t4, 0(t6)
  LA s5, k
  LW s11, 0(s5)
  ADDI s5, zero, 4
  MULW s0, s11, s5
  LD t4, 1632(sp)
  ADD s5, t4, s0
  FLW ft4, 0(s5)
  LUI t4, 1
  ADDIW t4, t4, -1968
  ADD t4, t4, sp
  FSW ft4, 0(t4)
  ADDI t4, sp, 488
  LUI t5, 1
  ADDIW t5, t5, -1960
  ADD t5, t5, sp
  SD t4, 0(t5)
  LA s5, k
  LW s11, 0(s5)
  ADDI s5, zero, 4
  MULW s0, s11, s5
  LUI t4, 1
  ADDIW t4, t4, -1960
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s5, t4, s0
  LW t4, 0(s5)
  LUI t6, 1
  ADDIW t6, t6, -1952
  ADD t6, t6, sp
  SW t4, 0(t6)
  LA s5, k
  LW s11, 0(s5)
  ADDI s5, zero, 4
  MULW s0, s11, s5
  LD t4, 1472(sp)
  ADD s5, t4, s0
  FLW ft4, 0(s5)
  LUI a0, 1
  ADDIW a0, a0, -1944
  ADD a0, a0, sp
  FSW ft4, 0(a0)
  ADD a0, s7, zero
  ADD a1, s9, zero
  ADD a2, s8, zero
  FSGNJ.S fa0, fs1, fs1
  ADD a3, s3, zero
  ADD a4, s2, zero
  ADD a5, s1, zero
  FSGNJ.S fa1, fs2, fs2
  FSGNJ.S fa2, fs3, fs3
  FSGNJ.S fa3, fs4, fs4
  ADD a6, s6, zero
  FSGNJ.S fa4, fs5, fs5
  FSGNJ.S fa5, fs6, fs6
  ADD a7, s10, zero
  FSGNJ.S fa6, fs7, fs7
  ADDI t5, sp, 0
  ADD s0, t5, zero
  SW s4, 0(s0)
  FSGNJ.S fa7, fs8, fs8
  ADDI s0, sp, 4
  FSW fs9, 0(s0)
  ADDI s0, sp, 8
  FSW fs10, 0(s0)
  ADDI s0, sp, 12
  FSW fs11, 0(s0)
  ADDI s0, sp, 16
  FSW fs0, 0(s0)
  ADDI s0, sp, 20
  FLW ft4, 1696(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 24
  LW t4, 1712(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 28
  FLW ft4, 1720(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 32
  LW t4, 1744(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 36
  LW t4, 1752(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 40
  FLW ft4, 1760(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 44
  FLW ft4, 1768(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 48
  FLW ft4, 1776(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 52
  FLW ft4, 1784(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 56
  FLW ft4, 1792(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 60
  LW t4, 1808(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 64
  FLW ft4, 1816(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 68
  LW t4, 1832(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 72
  FLW ft4, 1840(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 76
  FLW ft4, 1848(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 80
  FLW ft4, 1856(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 84
  FLW ft4, 1864(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 88
  LW t4, 1888(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 92
  LW t4, 1896(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 96
  FLW ft4, 1904(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 100
  FLW ft4, 1912(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 104
  FLW ft4, 1920(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 108
  LW t4, 1936(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 112
  FLW ft4, 1944(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 116
  LW t4, 1968(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 120
  LW t4, 1976(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 124
  FLW ft4, 1984(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 128
  FLW ft4, 1992(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 132
  FLW ft4, 2000(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 136
  FLW ft4, 2008(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 140
  LW t4, 2032(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 144
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  SW t4, 0(s0)
  ADDI s0, sp, 148
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  SW t4, 0(s0)
  ADDI s0, sp, 152
  LUI t6, 1
  ADDIW t6, t6, -2032
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  FSW ft4, 0(s0)
  ADDI s0, sp, 156
  LUI t5, 1
  ADDIW t5, t5, -2024
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSW ft4, 0(s0)
  ADDI s0, sp, 160
  LUI t6, 1
  ADDIW t6, t6, -2016
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  FSW ft4, 0(s0)
  ADDI s0, sp, 164
  LUI t5, 1
  ADDIW t5, t5, -2008
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSW ft4, 0(s0)
  ADDI s0, sp, 168
  LUI t6, 1
  ADDIW t6, t6, -2000
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  FSW ft4, 0(s0)
  ADDI s0, sp, 172
  LUI t5, 1
  ADDIW t5, t5, -1992
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSW ft4, 0(s0)
  ADDI s0, sp, 176
  LUI t4, 1
  ADDIW t4, t4, -1976
  ADD t4, t4, sp
  LW t4, 0(t4)
  SW t4, 0(s0)
  ADDI s0, sp, 180
  LUI t6, 1
  ADDIW t6, t6, -1968
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  FSW ft4, 0(s0)
  ADDI s0, sp, 184
  LUI t4, 1
  ADDIW t4, t4, -1952
  ADD t4, t4, sp
  LW t4, 0(t4)
  SW t4, 0(s0)
  ADDI s0, sp, 188
  LUI t5, 1
  ADDIW t5, t5, -1944
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSW ft4, 0(s0)
  FLW ft4, 1696(sp)
  LW t4, 1712(sp)
  FLW ft3, 1720(sp)
  LW t3, 1744(sp)
  LW t4, 1752(sp)
  FLW ft4, 1760(sp)
  FLW ft3, 1768(sp)
  FLW ft4, 1776(sp)
  FLW ft3, 1784(sp)
  FLW ft4, 1792(sp)
  LW t3, 1808(sp)
  FLW ft3, 1816(sp)
  LW t4, 1832(sp)
  FLW ft4, 1840(sp)
  FLW ft3, 1848(sp)
  FLW ft4, 1856(sp)
  FLW ft3, 1864(sp)
  LW t3, 1888(sp)
  LW t4, 1896(sp)
  FLW ft4, 1904(sp)
  FLW ft3, 1912(sp)
  FLW ft4, 1920(sp)
  LW t3, 1936(sp)
  FLW ft3, 1944(sp)
  LW t4, 1968(sp)
  LW t3, 1976(sp)
  FLW ft4, 1984(sp)
  FLW ft3, 1992(sp)
  FLW ft4, 2000(sp)
  FLW ft3, 2008(sp)
  LW t4, 2032(sp)
  LUI t3, 1
  ADDIW t3, t3, -2048
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t6, 1
  ADDIW t6, t6, -2032
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -2024
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -2016
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -2008
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -2000
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1992
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  LUI t3, 1
  ADDIW t3, t3, -1976
  ADD t3, t3, sp
  LW t3, 0(t3)
  LUI t6, 1
  ADDIW t6, t6, -1968
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  LUI t4, 1
  ADDIW t4, t4, -1952
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t5, 1
  ADDIW t5, t5, -1944
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  CALL params_f40_i24
  FSGNJ.D ft4, fa0, fa0
  LUI a0, 1
  ADDIW a0, a0, -1928
  ADD a0, a0, sp
  FSW ft4, 0(a0)
  ADDI a0, sp, 608
  ADD a0, a0, zero
  LD t4, 1152(sp)
  ADD a1, t4, zero
  LD t4, 1632(sp)
  ADD a2, t4, zero
  LD t4, 1616(sp)
  ADD a3, t4, zero
  LD t4, 1592(sp)
  ADD a4, t4, zero
  LD t4, 1136(sp)
  ADD a5, t4, zero
  LD t4, 1120(sp)
  ADD a6, t4, zero
  LD t4, 1096(sp)
  ADD a7, t4, zero
  ADDI t6, sp, 0
  ADD s0, t6, zero
  LD t4, 1088(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 8
  LD t4, 1584(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 16
  LD t4, 1568(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 24
  LD t4, 1536(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 32
  LD t4, 1104(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 40
  LD t4, 1520(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 48
  LD t4, 1504(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 56
  LD t4, 1488(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 64
  LD t4, 1168(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 72
  LD t4, 1184(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 80
  LD t4, 1200(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 88
  LD t4, 1216(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 96
  LD t4, 1232(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 104
  LD t4, 1248(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 112
  LD t4, 1264(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 120
  LD t4, 1280(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 128
  LD t4, 1296(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 136
  LD t4, 1312(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 144
  LD t4, 1328(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 152
  LD t4, 1344(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 160
  LD t4, 1360(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 168
  LD t4, 1376(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 176
  LD t4, 1392(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 184
  LD t4, 1408(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 192
  LD t4, 1424(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 200
  LD t4, 1440(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 208
  LD t4, 1456(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 216
  LD t4, 1472(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 224
  LD t4, 1680(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 232
  LD t4, 1664(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 240
  LD t4, 1656(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 248
  LD t4, 1640(sp)
  SD t4, 0(s0)
  LD t4, 1088(sp)
  LD t3, 1584(sp)
  LD t4, 1568(sp)
  LD t3, 1536(sp)
  LD t4, 1104(sp)
  LD t3, 1520(sp)
  LD t4, 1504(sp)
  LD t3, 1488(sp)
  LD t4, 1168(sp)
  LD t3, 1184(sp)
  LD t4, 1200(sp)
  LD t3, 1216(sp)
  LD t4, 1232(sp)
  LD t3, 1248(sp)
  LD t4, 1264(sp)
  LD t3, 1280(sp)
  LD t4, 1296(sp)
  LD t3, 1312(sp)
  LD t4, 1328(sp)
  LD t3, 1344(sp)
  LD t4, 1360(sp)
  LD t3, 1376(sp)
  LD t4, 1392(sp)
  LD t3, 1408(sp)
  LD t4, 1424(sp)
  LD t3, 1440(sp)
  LD t4, 1456(sp)
  LD t3, 1472(sp)
  LD t4, 1680(sp)
  LD t3, 1664(sp)
  LD t4, 1656(sp)
  LD t3, 1640(sp)
  CALL params_fa40
  FSGNJ.D ft4, fa0, fa0
  LUI t5, 1
  ADDIW t5, t5, -1936
  ADD t5, t5, sp
  FSW ft4, 0(t5)
  LA s0, k
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  ADDI t6, sp, 608
  ADD s0, t6, s2
  FLW fs2, 0(s0)
  LA s0, k
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LD t4, 1600(sp)
  ADD s0, t4, s2
  LW s1, 0(s0)
  LA s0, k
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  LD t4, 1632(sp)
  ADD s0, t4, s3
  FLW fs3, 0(s0)
  LA s0, k
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  LD t4, 1560(sp)
  ADD s0, t4, s3
  LW s2, 0(s0)
  LA s0, k
  LW s3, 0(s0)
  ADDI s0, zero, 4
  MULW s4, s3, s0
  LD t4, 1616(sp)
  ADD s0, t4, s4
  FLW fs4, 0(s0)
  LA s0, k
  LW s3, 0(s0)
  ADDI s0, zero, 4
  MULW s4, s3, s0
  LD t4, 1592(sp)
  ADD s0, t4, s4
  FLW fs5, 0(s0)
  LA s0, k
  LW s3, 0(s0)
  ADDI s0, zero, 4
  MULW s4, s3, s0
  LD t4, 1608(sp)
  ADD s0, t4, s4
  LW s3, 0(s0)
  LA s0, k
  LW s4, 0(s0)
  ADDI s0, zero, 4
  MULW s5, s4, s0
  LD t4, 1624(sp)
  ADD s0, t4, s5
  LW s4, 0(s0)
  LA s0, k
  LW s5, 0(s0)
  ADDI s0, zero, 4
  MULW s6, s5, s0
  LD t4, 1800(sp)
  ADD s0, t4, s6
  LW s5, 0(s0)
  LA s0, k
  LW s6, 0(s0)
  ADDI s0, zero, 4
  MULW s7, s6, s0
  LD t4, 1584(sp)
  ADD s0, t4, s7
  FLW fs6, 0(s0)
  LA s0, k
  LW s6, 0(s0)
  ADDI s0, zero, 4
  MULW s7, s6, s0
  LD t4, 1568(sp)
  ADD s0, t4, s7
  FLW fs7, 0(s0)
  LA s0, k
  LW s6, 0(s0)
  ADDI s0, zero, 4
  MULW s7, s6, s0
  LD t4, 1536(sp)
  ADD s0, t4, s7
  FLW fs8, 0(s0)
  LA s0, k
  LW s6, 0(s0)
  ADDI s0, zero, 4
  MULW s7, s6, s0
  LD t4, 1880(sp)
  ADD s0, t4, s7
  LW s6, 0(s0)
  LA s0, k
  LW s7, 0(s0)
  ADDI s0, zero, 4
  MULW s8, s7, s0
  LD t4, 1520(sp)
  ADD s0, t4, s8
  FLW fs9, 0(s0)
  LA s0, k
  LW s7, 0(s0)
  ADDI s0, zero, 4
  MULW s8, s7, s0
  LD t4, 1504(sp)
  ADD s0, t4, s8
  FLW fs10, 0(s0)
  LA s0, k
  LW s7, 0(s0)
  ADDI s0, zero, 4
  MULW s8, s7, s0
  LD t4, 1488(sp)
  ADD s0, t4, s8
  FLW fs11, 0(s0)
  LA s0, k
  LW s7, 0(s0)
  ADDI s0, zero, 4
  MULW s8, s7, s0
  LD t4, 1200(sp)
  ADD s0, t4, s8
  FLW fs1, 0(s0)
  LA s0, k
  LW s7, 0(s0)
  ADDI s0, zero, 4
  MULW s8, s7, s0
  LD t4, 1216(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  LA s0, k
  LW s7, 0(s0)
  ADDI s0, zero, 4
  MULW s8, s7, s0
  LUI t4, 1
  ADDIW t4, t4, -1960
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s0, t4, s8
  LW s7, 0(s0)
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW s9, s8, s0
  LD t4, 1264(sp)
  ADD s0, t4, s9
  FLW ft4, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  FSW ft4, 0(t5)
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW s9, s8, s0
  LD t4, 1280(sp)
  ADD s0, t4, s9
  FLW ft4, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -1912
  ADD t6, t6, sp
  FSW ft4, 0(t6)
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW s9, s8, s0
  LD t4, 1824(sp)
  ADD s0, t4, s9
  LW s8, 0(s0)
  LA s0, k
  LW s9, 0(s0)
  ADDI s0, zero, 4
  MULW s10, s9, s0
  LD t4, 1872(sp)
  ADD s0, t4, s10
  LW s9, 0(s0)
  LA s0, k
  LW s10, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s10, s0
  LD t4, 1296(sp)
  ADD s0, t4, s11
  FLW ft4, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, -1904
  ADD t5, t5, sp
  FSW ft4, 0(t5)
  LA s0, k
  LW s10, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s10, s0
  LD t4, 1312(sp)
  ADD s0, t4, s11
  FLW ft4, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -1896
  ADD t6, t6, sp
  FSW ft4, 0(t6)
  LA s0, k
  LW s10, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s10, s0
  LD t4, 2040(sp)
  ADD s0, t4, s11
  LW t4, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, -1888
  ADD t5, t5, sp
  SW t4, 0(t5)
  LA s0, k
  LW s11, 0(s0)
  ADDI s0, zero, 4
  MULW s10, s11, s0
  LD t4, 2024(sp)
  ADD s0, t4, s10
  LW t4, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -1880
  ADD t6, t6, sp
  SW t4, 0(t6)
  LA s0, k
  LW s11, 0(s0)
  ADDI s0, zero, 4
  MULW s10, s11, s0
  LD t4, 1344(sp)
  ADD s0, t4, s10
  FLW ft4, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, -1872
  ADD t5, t5, sp
  FSW ft4, 0(t5)
  LA s0, k
  LW s10, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s10, s0
  LD t4, 1360(sp)
  ADD s0, t4, s11
  FLW ft4, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -1864
  ADD t6, t6, sp
  FSW ft4, 0(t6)
  LA s0, k
  LW s10, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s10, s0
  ADDI t5, sp, 320
  ADD s0, t5, s11
  LW t4, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -1856
  ADD t6, t6, sp
  SW t4, 0(t6)
  LA s0, k
  LW s11, 0(s0)
  ADDI s0, zero, 4
  MULW s10, s11, s0
  LD t4, 1408(sp)
  ADD s0, t4, s10
  FLW ft4, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, -1848
  ADD t5, t5, sp
  FSW ft4, 0(t5)
  LA s0, k
  LW s10, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s10, s0
  LD t4, 1560(sp)
  ADD s0, t4, s11
  LW t4, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  SW t4, 0(t6)
  LA s0, k
  LW s11, 0(s0)
  ADDI s0, zero, 4
  MULW s10, s11, s0
  LD t4, 1424(sp)
  ADD s0, t4, s10
  FLW ft4, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, -1832
  ADD t5, t5, sp
  FSW ft4, 0(t5)
  LA s0, k
  LW s10, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s10, s0
  LD t4, 1472(sp)
  ADD s0, t4, s11
  FLW ft4, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -1824
  ADD t6, t6, sp
  FSW ft4, 0(t6)
  LA s0, k
  LW s10, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s10, s0
  LD t4, 2016(sp)
  ADD s0, t4, s11
  LW s10, 0(s0)
  FSGNJ.S fa0, fs2, fs2
  ADDI a0, sp, 320
  ADD a0, a0, zero
  ADD a1, s1, zero
  LD t4, 1152(sp)
  ADD a2, t4, zero
  FSGNJ.S fa1, fs3, fs3
  ADD a3, s2, zero
  FSGNJ.S fa2, fs4, fs4
  FSGNJ.S fa3, fs5, fs5
  LD t4, 1136(sp)
  ADD a4, t4, zero
  LD t4, 2016(sp)
  ADD a5, t4, zero
  ADD a6, s3, zero
  ADD a7, s4, zero
  ADDI t5, sp, 0
  ADD s0, t5, zero
  LD t4, 1120(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 8
  LD t4, 1576(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 16
  LD t4, 1704(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 24
  SW s5, 0(s0)
  ADDI s0, sp, 32
  LD t4, 1096(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 40
  LD t4, 1088(sp)
  SD t4, 0(s0)
  FSGNJ.S fa4, fs6, fs6
  FSGNJ.S fa5, fs7, fs7
  FSGNJ.S fa6, fs8, fs8
  ADDI s0, sp, 48
  LD t4, 1104(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 56
  SW s6, 0(s0)
  FSGNJ.S fa7, fs9, fs9
  ADDI s0, sp, 60
  FSW fs10, 0(s0)
  ADDI s0, sp, 64
  FSW fs11, 0(s0)
  ADDI s0, sp, 72
  LD t4, 1728(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 80
  LD t4, 1168(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 88
  LD t4, 1952(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 96
  LD t4, 1928(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 104
  LD t4, 1184(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 112
  FSW fs1, 0(s0)
  ADDI s0, sp, 116
  FSW fs0, 0(s0)
  ADDI s0, sp, 120
  LD t4, 1736(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 128
  SW s7, 0(s0)
  ADDI s0, sp, 136
  LD t4, 1232(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 144
  LD t4, 1248(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 152
  LUI t6, 1
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  FSW ft4, 0(s0)
  ADDI s0, sp, 156
  LUI t5, 1
  ADDIW t5, t5, -1912
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSW ft4, 0(s0)
  ADDI s0, sp, 160
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 168
  LD t4, 1960(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 176
  SW s8, 0(s0)
  ADDI s0, sp, 180
  SW s9, 0(s0)
  ADDI s0, sp, 184
  LUI t6, 1
  ADDIW t6, t6, -1904
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  FSW ft4, 0(s0)
  ADDI s0, sp, 188
  LUI t5, 1
  ADDIW t5, t5, -1896
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSW ft4, 0(s0)
  ADDI s0, sp, 192
  LD t4, 1672(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 200
  LUI t4, 1
  ADDIW t4, t4, -1888
  ADD t4, t4, sp
  LW t4, 0(t4)
  SW t4, 0(s0)
  ADDI s0, sp, 208
  LD t4, 1328(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 216
  LUI t4, 1
  ADDIW t4, t4, -1880
  ADD t4, t4, sp
  LW t4, 0(t4)
  SW t4, 0(s0)
  ADDI s0, sp, 224
  LD t4, 1648(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 232
  LD t4, 1552(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 240
  LUI t6, 1
  ADDIW t6, t6, -1872
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  FSW ft4, 0(s0)
  ADDI s0, sp, 244
  LUI t5, 1
  ADDIW t5, t5, -1864
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSW ft4, 0(s0)
  ADDI s0, sp, 248
  LD t4, 1376(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 256
  LUI t4, 1
  ADDIW t4, t4, -1856
  ADD t4, t4, sp
  LW t4, 0(t4)
  SW t4, 0(s0)
  ADDI s0, sp, 264
  LD t4, 1600(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 272
  LD t4, 1392(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 280
  LUI t6, 1
  ADDIW t6, t6, -1848
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  FSW ft4, 0(s0)
  ADDI s0, sp, 284
  LUI t4, 1
  ADDIW t4, t4, -1840
  ADD t4, t4, sp
  LW t4, 0(t4)
  SW t4, 0(s0)
  ADDI s0, sp, 288
  LUI t5, 1
  ADDIW t5, t5, -1832
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSW ft4, 0(s0)
  ADDI s0, sp, 296
  LD t4, 1440(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 304
  LD t4, 1456(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 312
  LUI t6, 1
  ADDIW t6, t6, -1824
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  FSW ft4, 0(s0)
  ADDI s0, sp, 316
  SW s10, 0(s0)
  LD t4, 1120(sp)
  LD t3, 1576(sp)
  LD t4, 1704(sp)
  LD t3, 1096(sp)
  LD t4, 1088(sp)
  LD t3, 1104(sp)
  LD t4, 1728(sp)
  LD t3, 1168(sp)
  LD t4, 1952(sp)
  LD t3, 1928(sp)
  LD t4, 1184(sp)
  LD t3, 1736(sp)
  LD t4, 1232(sp)
  LD t3, 1248(sp)
  LUI t5, 1
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1912
  ADD t6, t6, sp
  FLW ft3, 0(t6)
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LD t4, 0(t4)
  LD t3, 1960(sp)
  LUI t5, 1
  ADDIW t5, t5, -1904
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1896
  ADD t6, t6, sp
  FLW ft3, 0(t6)
  LD t4, 1672(sp)
  LUI t3, 1
  ADDIW t3, t3, -1888
  ADD t3, t3, sp
  LW t3, 0(t3)
  LD t4, 1328(sp)
  LUI t3, 1
  ADDIW t3, t3, -1880
  ADD t3, t3, sp
  LW t3, 0(t3)
  LD t4, 1648(sp)
  LD t3, 1552(sp)
  LUI t5, 1
  ADDIW t5, t5, -1872
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1864
  ADD t6, t6, sp
  FLW ft3, 0(t6)
  LD t4, 1376(sp)
  LUI t3, 1
  ADDIW t3, t3, -1856
  ADD t3, t3, sp
  LW t3, 0(t3)
  LD t4, 1600(sp)
  LD t3, 1392(sp)
  LUI t5, 1
  ADDIW t5, t5, -1848
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1840
  ADD t4, t4, sp
  LW t4, 0(t4)
  LUI t6, 1
  ADDIW t6, t6, -1832
  ADD t6, t6, sp
  FLW ft3, 0(t6)
  LD t3, 1440(sp)
  LD t4, 1456(sp)
  LUI t5, 1
  ADDIW t5, t5, -1824
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  CALL params_mix
  ADD s0, a0, zero
  FLW ft4, 1688(sp)
  FLW ft3, 1688(sp)
  FSGNJ.S fa0, ft4, ft3
  CALL putfloat
  ADDI a0, zero, 10
  CALL putch
  LUI t6, 1
  ADDIW t6, t6, -1928
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1928
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  FSGNJ.S fa0, ft4, ft3
  CALL putfloat
  ADDI a0, zero, 10
  CALL putch
  LUI t6, 1
  ADDIW t6, t6, -1936
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1936
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  FSGNJ.S fa0, ft4, ft3
  CALL putfloat
  ADDI a0, zero, 10
  CALL putch
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1816
  ADD t6, t6, sp
  FLD fs3, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1808
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1800
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1792
  ADD t5, t5, sp
  FLD fs1, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1784
  ADD t6, t6, sp
  FLD fs8, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1776
  ADD t5, t5, sp
  FLD fs0, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1768
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1760
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1752
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1744
  ADD t5, t5, sp
  FLD fs2, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1736
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1728
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1720
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1712
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1704
  ADD t6, t6, sp
  FLD fs4, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1696
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1688
  ADD t6, t6, sp
  FLD fs5, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1680
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1672
  ADD t6, t6, sp
  FLD fs6, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1664
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1656
  ADD t6, t6, sp
  FLD fs7, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1648
  ADD t5, t5, sp
  FLD fs9, 0(t5)
  LUI ra, 1
  ADDIW ra, ra, -1640
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 1
  ADDIW t6, t6, -1632
  ADD t6, t6, sp
  FLD fs10, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1624
  ADD t5, t5, sp
  FLD fs11, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, -1616
  ADD sp, sp, t0
  JALR zero, 0(ra)
params_fa40:
  ADDI sp, sp, -736
  SD s11, 536(sp)
  FSD fs11, 544(sp)
  SD ra, 552(sp)
  FSD fs10, 560(sp)
  FSD fs8, 568(sp)
  FSD fs7, 576(sp)
  FSD fs6, 584(sp)
  FSD fs1, 592(sp)
  SD s4, 600(sp)
  SD s3, 608(sp)
  SD s2, 616(sp)
  SD s1, 624(sp)
  FSD fs0, 632(sp)
  FSD fs9, 640(sp)
  SD s5, 648(sp)
  SD s0, 656(sp)
  SD s6, 664(sp)
  SD s7, 672(sp)
  FSD fs2, 680(sp)
  SD s8, 688(sp)
  FSD fs3, 696(sp)
  SD s9, 704(sp)
  FSD fs4, 712(sp)
  SD s10, 720(sp)
  FSD fs5, 728(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  ADD s6, a6, zero
  ADD s7, a7, zero
  ADDI t5, sp, 736
  ADD s8, t5, zero
  LD s9, 0(s8)
  ADDI s8, sp, 744
  LD s10, 0(s8)
  ADDI s8, sp, 752
  LD t4, 0(s8)
  SD t4, 528(sp)
  ADDI s8, sp, 760
  LD t4, 0(s8)
  SD t4, 520(sp)
  ADDI s8, sp, 768
  LD t4, 0(s8)
  SD t4, 512(sp)
  ADDI s8, sp, 776
  LD t4, 0(s8)
  SD t4, 504(sp)
  ADDI s8, sp, 784
  LD t4, 0(s8)
  SD t4, 496(sp)
  ADDI s8, sp, 792
  LD t4, 0(s8)
  SD t4, 296(sp)
  ADDI s8, sp, 800
  LD t4, 0(s8)
  SD t4, 304(sp)
  ADDI s8, sp, 808
  LD t4, 0(s8)
  SD t4, 312(sp)
  ADDI s8, sp, 816
  LD t4, 0(s8)
  SD t4, 320(sp)
  ADDI s8, sp, 824
  LD t4, 0(s8)
  SD t4, 328(sp)
  ADDI s8, sp, 832
  LD t4, 0(s8)
  SD t4, 336(sp)
  ADDI s8, sp, 840
  LD t4, 0(s8)
  SD t4, 344(sp)
  ADDI s8, sp, 848
  LD t4, 0(s8)
  SD t4, 352(sp)
  ADDI s8, sp, 856
  LD t4, 0(s8)
  SD t4, 360(sp)
  ADDI s8, sp, 864
  LD t4, 0(s8)
  SD t4, 368(sp)
  ADDI s8, sp, 872
  LD t4, 0(s8)
  SD t4, 376(sp)
  ADDI s8, sp, 880
  LD t4, 0(s8)
  SD t4, 384(sp)
  ADDI s8, sp, 888
  LD t4, 0(s8)
  SD t4, 392(sp)
  ADDI s8, sp, 896
  LD t4, 0(s8)
  SD t4, 400(sp)
  ADDI s8, sp, 904
  LD t4, 0(s8)
  SD t4, 408(sp)
  ADDI s8, sp, 912
  LD t4, 0(s8)
  SD t4, 416(sp)
  ADDI s8, sp, 920
  LD t4, 0(s8)
  SD t4, 424(sp)
  ADDI s8, sp, 928
  LD t4, 0(s8)
  SD t4, 432(sp)
  ADDI s8, sp, 936
  LD t4, 0(s8)
  SD t4, 440(sp)
  ADDI s8, sp, 944
  LD t4, 0(s8)
  SD t4, 448(sp)
  ADDI s8, sp, 952
  LD t4, 0(s8)
  SD t4, 456(sp)
  ADDI s8, sp, 960
  LD t4, 0(s8)
  SD t4, 464(sp)
  ADDI s8, sp, 968
  LD t4, 0(s8)
  SD t4, 472(sp)
  ADDI s8, sp, 976
  LD t4, 0(s8)
  SD t4, 480(sp)
  ADDI s8, sp, 984
  LD t4, 0(s8)
  SD t4, 488(sp)
  LA s8, k
  LW t2, 0(s8)
  ADDI s8, zero, 4
  MULW t1, t2, s8
  ADD s8, s0, t1
  FLW fs0, 0(s8)
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  ADD s0, s1, t1
  FLW fs1, 0(s0)
  FADD.S fs2, fs0, fs1
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  ADD s0, s2, t1
  FLW fs0, 0(s0)
  FADD.S fs1, fs2, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  ADD s0, s3, t1
  FLW fs0, 0(s0)
  FADD.S fs2, fs1, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  ADD s0, s4, t1
  FLW fs0, 0(s0)
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  ADD s0, s5, t1
  FLW fs1, 0(s0)
  FADD.S fs3, fs0, fs1
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  ADD s0, s6, t1
  FLW fs0, 0(s0)
  FADD.S fs1, fs3, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  ADD s0, s7, t1
  FLW fs0, 0(s0)
  FADD.S fs3, fs1, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  ADD s0, s9, t1
  FLW fs0, 0(s0)
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  ADD s0, s10, t1
  FLW fs1, 0(s0)
  FADD.S fs4, fs0, fs1
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 528(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs1, fs4, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 520(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs4, fs1, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 512(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 504(sp)
  ADD s0, t4, t1
  FLW fs1, 0(s0)
  FADD.S fs5, fs0, fs1
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 496(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs1, fs5, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 296(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs5, fs1, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 304(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 312(sp)
  ADD s0, t4, t1
  FLW fs1, 0(s0)
  FADD.S fs6, fs0, fs1
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 320(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs1, fs6, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 328(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs6, fs1, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 336(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 344(sp)
  ADD s0, t4, t1
  FLW fs1, 0(s0)
  FADD.S fs7, fs0, fs1
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 352(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs1, fs7, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 360(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs7, fs1, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 368(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 376(sp)
  ADD s0, t4, t1
  FLW fs1, 0(s0)
  FADD.S fs8, fs0, fs1
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 384(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs1, fs8, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 392(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs8, fs1, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 400(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 408(sp)
  ADD s0, t4, t1
  FLW fs1, 0(s0)
  FADD.S fs9, fs0, fs1
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 416(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs1, fs9, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 424(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs9, fs1, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 432(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 440(sp)
  ADD s0, t4, t1
  FLW fs1, 0(s0)
  FADD.S fs10, fs0, fs1
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 448(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs1, fs10, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 456(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs10, fs1, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 464(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 472(sp)
  ADD s0, t4, t1
  FLW fs1, 0(s0)
  FADD.S fs11, fs0, fs1
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 480(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs1, fs11, fs0
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 488(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FADD.S fs11, fs1, fs0
  FSW fs2, 256(sp)
  ADDI s0, sp, 260
  FSW fs3, 0(s0)
  ADDI s0, sp, 264
  FSW fs4, 0(s0)
  ADDI s0, sp, 268
  FSW fs5, 0(s0)
  ADDI s0, sp, 272
  FSW fs6, 0(s0)
  ADDI s0, sp, 276
  FSW fs7, 0(s0)
  ADDI s0, sp, 280
  FSW fs8, 0(s0)
  ADDI s0, sp, 284
  FSW fs9, 0(s0)
  ADDI s0, sp, 288
  FSW fs10, 0(s0)
  ADDI s0, sp, 292
  FSW fs11, 0(s0)
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s8, s0
  LD t4, 488(sp)
  ADD s0, t4, t1
  FLW fs0, 0(s0)
  FCVT.S.L fs1, zero
  FEQ.S s0, fs0, fs1
  XORI s8, s0, 1
  ADD s0, s8, zero
  XOR s8, s0, zero
  SLTU s0, zero, s8
  ADD s8, s0, zero
  FCVT.S.W fs0, s8
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FEQ.S s0, fs0, fs1
  XORI s8, s0, 1
  ADD s0, s8, zero
  FCVT.S.W fs0, s0
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FEQ.S s0, fs0, fs1
  XORI s8, s0, 1
  BNE s8, zero, bb14
  JAL zero, bb15
bb14:
  ADDI a0, zero, 10
  ADDI a1, sp, 256
  ADD a1, a1, zero
  CALL putfarray
  LA s0, k
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s8, s0
  ADDI t6, sp, 256
  ADD s0, t6, s11
  FLW fs0, 0(s0)
  FSGNJ.S fa0, fs0, fs0
  LD s11, 536(sp)
  FLD fs11, 544(sp)
  LD ra, 552(sp)
  FLD fs10, 560(sp)
  FLD fs8, 568(sp)
  FLD fs7, 576(sp)
  FLD fs6, 584(sp)
  FLD fs1, 592(sp)
  LD s4, 600(sp)
  LD s3, 608(sp)
  LD s2, 616(sp)
  LD s1, 624(sp)
  FLD fs0, 632(sp)
  FLD fs9, 640(sp)
  LD s5, 648(sp)
  LD s0, 656(sp)
  LD s6, 664(sp)
  LD s7, 672(sp)
  FLD fs2, 680(sp)
  LD s8, 688(sp)
  FLD fs3, 696(sp)
  LD s9, 704(sp)
  FLD fs4, 712(sp)
  LD s10, 720(sp)
  FLD fs5, 728(sp)
  ADDI sp, sp, 736
  JALR zero, 0(ra)
bb15:
  ADD a0, s1, zero
  ADD a1, s2, zero
  ADD a2, s3, zero
  ADD a3, s4, zero
  ADD a4, s5, zero
  ADD a5, s6, zero
  ADD a6, s7, zero
  ADD a7, s9, zero
  ADDI t5, sp, 0
  ADD s0, t5, zero
  SD s10, 0(s0)
  ADDI s0, sp, 8
  LD t4, 528(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 16
  LD t4, 520(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 24
  LD t4, 512(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 32
  LD t4, 504(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 40
  LD t4, 496(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 48
  LD t4, 296(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 56
  LD t4, 304(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 64
  LD t4, 312(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 72
  LD t4, 320(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 80
  LD t4, 328(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 88
  LD t4, 336(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 96
  LD t4, 344(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 104
  LD t4, 352(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 112
  LD t4, 360(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 120
  LD t4, 368(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 128
  LD t4, 376(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 136
  LD t4, 384(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 144
  LD t4, 392(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 152
  LD t4, 400(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 160
  LD t4, 408(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 168
  LD t4, 416(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 176
  LD t4, 424(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 184
  LD t4, 432(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 192
  LD t4, 440(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 200
  LD t4, 448(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 208
  LD t4, 456(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 216
  LD t4, 464(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 224
  LD t4, 472(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 232
  LD t4, 480(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 240
  LD t4, 488(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 248
  ADDI t4, sp, 256
  SD t4, 0(s0)
  LD t4, 528(sp)
  LD t3, 520(sp)
  LD t4, 512(sp)
  LD t3, 504(sp)
  LD t4, 496(sp)
  LD t3, 296(sp)
  LD t4, 304(sp)
  LD t3, 312(sp)
  LD t4, 320(sp)
  LD t3, 328(sp)
  LD t4, 336(sp)
  LD t3, 344(sp)
  LD t4, 352(sp)
  LD t3, 360(sp)
  LD t4, 368(sp)
  LD t3, 376(sp)
  LD t4, 384(sp)
  LD t3, 392(sp)
  LD t4, 400(sp)
  LD t3, 408(sp)
  LD t4, 416(sp)
  LD t3, 424(sp)
  LD t4, 432(sp)
  LD t3, 440(sp)
  LD t4, 448(sp)
  LD t3, 456(sp)
  LD t4, 464(sp)
  LD t3, 472(sp)
  LD t4, 480(sp)
  LD t3, 488(sp)
  ADDI t6, sp, 256
  CALL params_fa40
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  LD s11, 536(sp)
  FLD fs11, 544(sp)
  LD ra, 552(sp)
  FLD fs10, 560(sp)
  FLD fs8, 568(sp)
  FLD fs7, 576(sp)
  FLD fs6, 584(sp)
  FLD fs1, 592(sp)
  LD s4, 600(sp)
  LD s3, 608(sp)
  LD s2, 616(sp)
  LD s1, 624(sp)
  FLD fs0, 632(sp)
  FLD fs9, 640(sp)
  LD s5, 648(sp)
  LD s0, 656(sp)
  LD s6, 664(sp)
  LD s7, 672(sp)
  FLD fs2, 680(sp)
  LD s8, 688(sp)
  FLD fs3, 696(sp)
  LD s9, 704(sp)
  FLD fs4, 712(sp)
  LD s10, 720(sp)
  FLD fs5, 728(sp)
  ADDI sp, sp, 736
  JALR zero, 0(ra)
params_f40:
  ADDI sp, sp, -544
  SD s2, 416(sp)
  SD ra, 424(sp)
  FSD fs10, 432(sp)
  FSD fs11, 440(sp)
  FSD fs4, 448(sp)
  FSD fs3, 456(sp)
  FSD fs2, 464(sp)
  FSD fs6, 472(sp)
  FSD fs1, 480(sp)
  FSD fs5, 488(sp)
  FSD fs0, 496(sp)
  FSD fs7, 504(sp)
  SD s0, 512(sp)
  FSD fs9, 520(sp)
  FSD fs8, 528(sp)
  SD s1, 536(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  FSGNJ.D fs2, fa2, fa2
  FSGNJ.D fs3, fa3, fa3
  FSGNJ.D fs4, fa4, fa4
  FSGNJ.D fs5, fa5, fa5
  FSGNJ.D fs6, fa6, fa6
  FSGNJ.D fs7, fa7, fa7
  ADDI t5, sp, 544
  ADD s0, t5, zero
  FLW fs8, 0(s0)
  ADDI s0, sp, 548
  FLW ft4, 0(s0)
  FSW ft4, 408(sp)
  ADDI s0, sp, 552
  FLW ft4, 0(s0)
  FSW ft4, 400(sp)
  ADDI s0, sp, 556
  FLW ft4, 0(s0)
  FSW ft4, 392(sp)
  ADDI s0, sp, 560
  FLW ft4, 0(s0)
  FSW ft4, 384(sp)
  ADDI s0, sp, 564
  FLW ft4, 0(s0)
  FSW ft4, 376(sp)
  ADDI s0, sp, 568
  FLW ft4, 0(s0)
  FSW ft4, 368(sp)
  ADDI s0, sp, 572
  FLW ft4, 0(s0)
  FSW ft4, 360(sp)
  ADDI s0, sp, 576
  FLW ft4, 0(s0)
  FSW ft4, 352(sp)
  ADDI s0, sp, 580
  FLW ft4, 0(s0)
  FSW ft4, 344(sp)
  ADDI s0, sp, 584
  FLW ft4, 0(s0)
  FSW ft4, 336(sp)
  ADDI s0, sp, 588
  FLW ft4, 0(s0)
  FSW ft4, 328(sp)
  ADDI s0, sp, 592
  FLW ft4, 0(s0)
  FSW ft4, 168(sp)
  ADDI s0, sp, 596
  FLW ft4, 0(s0)
  FSW ft4, 176(sp)
  ADDI s0, sp, 600
  FLW ft4, 0(s0)
  FSW ft4, 184(sp)
  ADDI s0, sp, 604
  FLW ft4, 0(s0)
  FSW ft4, 192(sp)
  ADDI s0, sp, 608
  FLW ft4, 0(s0)
  FSW ft4, 200(sp)
  ADDI s0, sp, 612
  FLW ft4, 0(s0)
  FSW ft4, 208(sp)
  ADDI s0, sp, 616
  FLW ft4, 0(s0)
  FSW ft4, 216(sp)
  ADDI s0, sp, 620
  FLW ft4, 0(s0)
  FSW ft4, 224(sp)
  ADDI s0, sp, 624
  FLW ft4, 0(s0)
  FSW ft4, 232(sp)
  ADDI s0, sp, 628
  FLW ft4, 0(s0)
  FSW ft4, 240(sp)
  ADDI s0, sp, 632
  FLW ft4, 0(s0)
  FSW ft4, 248(sp)
  ADDI s0, sp, 636
  FLW ft4, 0(s0)
  FSW ft4, 256(sp)
  ADDI s0, sp, 640
  FLW ft4, 0(s0)
  FSW ft4, 264(sp)
  ADDI s0, sp, 644
  FLW ft4, 0(s0)
  FSW ft4, 272(sp)
  ADDI s0, sp, 648
  FLW ft4, 0(s0)
  FSW ft4, 280(sp)
  ADDI s0, sp, 652
  FLW ft4, 0(s0)
  FSW ft4, 288(sp)
  ADDI s0, sp, 656
  FLW ft4, 0(s0)
  FSW ft4, 296(sp)
  ADDI s0, sp, 660
  FLW ft4, 0(s0)
  FSW ft4, 304(sp)
  ADDI s0, sp, 664
  FLW ft4, 0(s0)
  FSW ft4, 312(sp)
  ADDI s0, sp, 668
  FLW ft4, 0(s0)
  FSW ft4, 320(sp)
  FCVT.S.L ft9, zero
  FLW ft4, 320(sp)
  FEQ.S s0, ft4, ft9
  XORI s1, s0, 1
  BNE s1, zero, bb17
  JAL zero, bb18
bb17:
  FADD.S ft9, fs0, fs1
  FADD.S ft8, ft9, fs2
  FADD.S ft9, ft8, fs3
  FADD.S ft8, fs4, fs5
  FADD.S ft7, ft8, fs6
  FADD.S ft8, ft7, fs7
  FLW ft4, 408(sp)
  FADD.S ft7, fs8, ft4
  FLW ft4, 400(sp)
  FADD.S ft6, ft7, ft4
  FLW ft4, 392(sp)
  FADD.S ft7, ft6, ft4
  FLW ft4, 384(sp)
  FLW ft3, 376(sp)
  FADD.S ft6, ft4, ft3
  FLW ft4, 368(sp)
  FADD.S ft5, ft6, ft4
  FLW ft4, 360(sp)
  FADD.S ft6, ft5, ft4
  FLW ft4, 352(sp)
  FLW ft3, 344(sp)
  FADD.S ft5, ft4, ft3
  FLW ft4, 336(sp)
  FADD.S ft2, ft5, ft4
  FLW ft4, 328(sp)
  FADD.S ft5, ft2, ft4
  FLW ft4, 168(sp)
  FLW ft3, 176(sp)
  FADD.S ft2, ft4, ft3
  FLW ft4, 184(sp)
  FADD.S ft1, ft2, ft4
  FLW ft4, 192(sp)
  FADD.S ft2, ft1, ft4
  FLW ft4, 200(sp)
  FLW ft3, 208(sp)
  FADD.S ft1, ft4, ft3
  FLW ft4, 216(sp)
  FADD.S ft0, ft1, ft4
  FLW ft4, 224(sp)
  FADD.S ft1, ft0, ft4
  FLW ft4, 232(sp)
  FLW ft3, 240(sp)
  FADD.S ft0, ft4, ft3
  FLW ft4, 248(sp)
  FADD.S fs11, ft0, ft4
  FLW ft4, 256(sp)
  FADD.S ft0, fs11, ft4
  FLW ft4, 264(sp)
  FLW ft3, 272(sp)
  FADD.S fs11, ft4, ft3
  FLW ft4, 280(sp)
  FADD.S fs10, fs11, ft4
  FLW ft4, 288(sp)
  FADD.S fs11, fs10, ft4
  FLW ft4, 296(sp)
  FLW ft3, 304(sp)
  FADD.S fs10, ft4, ft3
  FLW ft4, 312(sp)
  FADD.S fs9, fs10, ft4
  FLW ft4, 320(sp)
  FADD.S fs10, fs9, ft4
  FSW ft9, 128(sp)
  ADDI s0, sp, 132
  FSW ft8, 0(s0)
  ADDI s0, sp, 136
  FSW ft7, 0(s0)
  ADDI s0, sp, 140
  FSW ft6, 0(s0)
  ADDI s0, sp, 144
  FSW ft5, 0(s0)
  ADDI s0, sp, 148
  FSW ft2, 0(s0)
  ADDI s0, sp, 152
  FSW ft1, 0(s0)
  ADDI s0, sp, 156
  FSW ft0, 0(s0)
  ADDI s0, sp, 160
  FSW fs11, 0(s0)
  ADDI s0, sp, 164
  FSW fs10, 0(s0)
  ADDI a0, zero, 10
  ADDI a1, sp, 128
  ADD a1, a1, zero
  CALL putfarray
  LA s0, k
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  ADDI t6, sp, 128
  ADD s0, t6, s2
  FLW fs9, 0(s0)
  FSGNJ.S fa0, fs9, fs9
  LD s2, 416(sp)
  LD ra, 424(sp)
  FLD fs10, 432(sp)
  FLD fs11, 440(sp)
  FLD fs4, 448(sp)
  FLD fs3, 456(sp)
  FLD fs2, 464(sp)
  FLD fs6, 472(sp)
  FLD fs1, 480(sp)
  FLD fs5, 488(sp)
  FLD fs0, 496(sp)
  FLD fs7, 504(sp)
  LD s0, 512(sp)
  FLD fs9, 520(sp)
  FLD fs8, 528(sp)
  LD s1, 536(sp)
  ADDI sp, sp, 544
  JALR zero, 0(ra)
bb18:
  FADD.S fs9, fs0, fs1
  FADD.S fs0, fs9, fs2
  FSGNJ.S fa0, fs1, fs1
  FSGNJ.S fa1, fs2, fs2
  FSGNJ.S fa2, fs3, fs3
  FSGNJ.S fa3, fs4, fs4
  FSGNJ.S fa4, fs5, fs5
  FSGNJ.S fa5, fs6, fs6
  FSGNJ.S fa6, fs7, fs7
  FSGNJ.S fa7, fs8, fs8
  ADDI t5, sp, 0
  ADD s0, t5, zero
  FLW ft4, 408(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 4
  FLW ft4, 400(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 8
  FLW ft4, 392(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 12
  FLW ft4, 384(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 16
  FLW ft4, 376(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 20
  FLW ft4, 368(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 24
  FLW ft4, 360(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 28
  FLW ft4, 352(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 32
  FLW ft4, 344(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 36
  FLW ft4, 336(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 40
  FLW ft4, 328(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 44
  FLW ft4, 168(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 48
  FLW ft4, 176(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 52
  FLW ft4, 184(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 56
  FLW ft4, 192(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 60
  FLW ft4, 200(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 64
  FLW ft4, 208(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 68
  FLW ft4, 216(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 72
  FLW ft4, 224(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 76
  FLW ft4, 232(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 80
  FLW ft4, 240(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 84
  FLW ft4, 248(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 88
  FLW ft4, 256(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 92
  FLW ft4, 264(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 96
  FLW ft4, 272(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 100
  FLW ft4, 280(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 104
  FLW ft4, 288(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 108
  FLW ft4, 296(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 112
  FLW ft4, 304(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 116
  FLW ft4, 312(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 120
  FLW ft4, 320(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 124
  FSW fs0, 0(s0)
  FLW ft4, 408(sp)
  FLW ft3, 400(sp)
  FLW ft4, 392(sp)
  FLW ft3, 384(sp)
  FLW ft4, 376(sp)
  FLW ft3, 368(sp)
  FLW ft4, 360(sp)
  FLW ft3, 352(sp)
  FLW ft4, 344(sp)
  FLW ft3, 336(sp)
  FLW ft4, 328(sp)
  FLW ft3, 168(sp)
  FLW ft4, 176(sp)
  FLW ft3, 184(sp)
  FLW ft4, 192(sp)
  FLW ft3, 200(sp)
  FLW ft4, 208(sp)
  FLW ft3, 216(sp)
  FLW ft4, 224(sp)
  FLW ft3, 232(sp)
  FLW ft4, 240(sp)
  FLW ft3, 248(sp)
  FLW ft4, 256(sp)
  FLW ft3, 264(sp)
  FLW ft4, 272(sp)
  FLW ft3, 280(sp)
  FLW ft4, 288(sp)
  FLW ft3, 296(sp)
  FLW ft4, 304(sp)
  FLW ft3, 312(sp)
  FLW ft4, 320(sp)
  CALL params_f40
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  LD s2, 416(sp)
  LD ra, 424(sp)
  FLD fs10, 432(sp)
  FLD fs11, 440(sp)
  FLD fs4, 448(sp)
  FLD fs3, 456(sp)
  FLD fs2, 464(sp)
  FLD fs6, 472(sp)
  FLD fs1, 480(sp)
  FLD fs5, 488(sp)
  FLD fs0, 496(sp)
  FLD fs7, 504(sp)
  LD s0, 512(sp)
  FLD fs9, 520(sp)
  FLD fs8, 528(sp)
  LD s1, 536(sp)
  ADDI sp, sp, 544
  JALR zero, 0(ra)
params_mix:
  ADDI sp, sp, -1008
  SD s5, 808(sp)
  SD s6, 816(sp)
  SD s7, 824(sp)
  SD s9, 832(sp)
  SD s10, 840(sp)
  SD s11, 848(sp)
  FSD fs8, 856(sp)
  SD ra, 864(sp)
  FSD fs10, 872(sp)
  FSD fs11, 880(sp)
  FSD fs7, 888(sp)
  SD s3, 896(sp)
  FSD fs1, 904(sp)
  SD s1, 912(sp)
  FSD fs0, 920(sp)
  FSD fs9, 928(sp)
  SD s0, 936(sp)
  SD s2, 944(sp)
  FSD fs2, 952(sp)
  FSD fs3, 960(sp)
  SD s8, 968(sp)
  SD s4, 976(sp)
  FSD fs4, 984(sp)
  FSD fs5, 992(sp)
  FSD fs6, 1000(sp)
  FSGNJ.D fs0, fa0, fa0
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  FSGNJ.D fs1, fa1, fa1
  ADD s3, a3, zero
  FSGNJ.D fs2, fa2, fa2
  FSGNJ.D fs3, fa3, fa3
  ADD s4, a4, zero
  ADD t4, a5, zero
  SD t4, 784(sp)
  ADD t4, a6, zero
  SW t4, 776(sp)
  ADD t4, a7, zero
  SW t4, 768(sp)
  ADDI t5, sp, 1008
  ADD s8, t5, zero
  LD t4, 0(s8)
  SD t4, 760(sp)
  ADDI s8, sp, 1016
  LD t4, 0(s8)
  SD t4, 752(sp)
  ADDI s8, sp, 1024
  LD t4, 0(s8)
  SD t4, 744(sp)
  ADDI s8, sp, 1032
  LW t4, 0(s8)
  SW t4, 736(sp)
  ADDI s8, sp, 1040
  LD t4, 0(s8)
  SD t4, 640(sp)
  ADDI s8, sp, 1048
  LD t4, 0(s8)
  SD t4, 632(sp)
  FSGNJ.D fs4, fa4, fa4
  FSGNJ.D fs5, fa5, fa5
  FSGNJ.D fs6, fa6, fa6
  ADDI s8, sp, 1056
  LD t4, 0(s8)
  SD t4, 624(sp)
  ADDI s8, sp, 1064
  LW t4, 0(s8)
  SW t4, 400(sp)
  FSGNJ.D fs7, fa7, fa7
  ADDI s8, sp, 1068
  FLW ft4, 0(s8)
  FSW ft4, 728(sp)
  ADDI s8, sp, 1072
  FLW ft4, 0(s8)
  FSW ft4, 720(sp)
  ADDI s8, sp, 1080
  LD t4, 0(s8)
  SD t4, 408(sp)
  ADDI s8, sp, 1088
  LD t4, 0(s8)
  SD t4, 416(sp)
  ADDI s8, sp, 1096
  LD t4, 0(s8)
  SD t4, 424(sp)
  ADDI s8, sp, 1104
  LD t4, 0(s8)
  SD t4, 432(sp)
  ADDI s8, sp, 1112
  LD t4, 0(s8)
  SD t4, 440(sp)
  ADDI s8, sp, 1120
  FLW ft4, 0(s8)
  FSW ft4, 712(sp)
  ADDI s8, sp, 1124
  FLW ft4, 0(s8)
  FSW ft4, 704(sp)
  ADDI s8, sp, 1128
  LD t4, 0(s8)
  SD t4, 448(sp)
  ADDI s8, sp, 1136
  LW t4, 0(s8)
  SW t4, 456(sp)
  ADDI s8, sp, 1144
  LD t4, 0(s8)
  SD t4, 464(sp)
  ADDI s8, sp, 1152
  LD t4, 0(s8)
  SD t4, 472(sp)
  ADDI s8, sp, 1160
  FLW ft4, 0(s8)
  FSW ft4, 696(sp)
  ADDI s8, sp, 1164
  FLW ft4, 0(s8)
  FSW ft4, 688(sp)
  ADDI s8, sp, 1168
  LD t4, 0(s8)
  SD t4, 480(sp)
  ADDI s8, sp, 1176
  LD t4, 0(s8)
  SD t4, 488(sp)
  ADDI s8, sp, 1184
  LW t4, 0(s8)
  SW t4, 496(sp)
  ADDI s8, sp, 1188
  LW t4, 0(s8)
  SW t4, 504(sp)
  ADDI s8, sp, 1192
  FLW ft4, 0(s8)
  FSW ft4, 680(sp)
  ADDI s8, sp, 1196
  FLW ft4, 0(s8)
  FSW ft4, 672(sp)
  ADDI s8, sp, 1200
  LD t4, 0(s8)
  SD t4, 512(sp)
  ADDI s8, sp, 1208
  LW t4, 0(s8)
  SW t4, 520(sp)
  ADDI s8, sp, 1216
  LD t4, 0(s8)
  SD t4, 528(sp)
  ADDI s8, sp, 1224
  LW t4, 0(s8)
  SW t4, 536(sp)
  ADDI s8, sp, 1232
  LD t4, 0(s8)
  SD t4, 544(sp)
  ADDI s8, sp, 1240
  LD t4, 0(s8)
  SD t4, 552(sp)
  ADDI s8, sp, 1248
  FLW ft4, 0(s8)
  FSW ft4, 664(sp)
  ADDI s8, sp, 1252
  FLW ft4, 0(s8)
  FSW ft4, 656(sp)
  ADDI s8, sp, 1256
  LD t4, 0(s8)
  SD t4, 560(sp)
  ADDI s8, sp, 1264
  LW t4, 0(s8)
  SW t4, 568(sp)
  ADDI s8, sp, 1272
  LD t4, 0(s8)
  SD t4, 576(sp)
  ADDI s8, sp, 1280
  LD t4, 0(s8)
  SD t4, 584(sp)
  ADDI s8, sp, 1288
  FLW ft4, 0(s8)
  FSW ft4, 648(sp)
  ADDI s8, sp, 1292
  LW t4, 0(s8)
  SW t4, 592(sp)
  ADDI s8, sp, 1296
  FLW ft4, 0(s8)
  FSW ft4, 616(sp)
  ADDI s8, sp, 1304
  LD t4, 0(s8)
  SD t4, 600(sp)
  ADDI s8, sp, 1312
  LD t4, 0(s8)
  SD t4, 608(sp)
  ADDI s8, sp, 1320
  FLW ft4, 0(s8)
  FSW ft4, 792(sp)
  ADDI s8, sp, 1324
  LW t4, 0(s8)
  SW t4, 800(sp)
  LA s8, k
  LW t1, 0(s8)
  ADDI s8, zero, 4
  MULW t0, t1, s8
  ADD s8, s2, t0
  FLW ft8, 0(s8)
  FADD.S ft7, fs0, ft8
  FADD.S ft8, ft7, fs1
  FADD.S ft7, ft8, fs2
  LA s2, k
  LW s8, 0(s2)
  ADDI s2, zero, 4
  MULW t0, s8, s2
  ADD s2, s4, t0
  FLW ft8, 0(s2)
  FADD.S ft6, fs3, ft8
  LA s2, k
  LW s8, 0(s2)
  ADDI s2, zero, 4
  MULW t0, s8, s2
  LD t4, 760(sp)
  ADD s2, t4, t0
  FLW ft8, 0(s2)
  FADD.S ft5, ft6, ft8
  LA s2, k
  LW s8, 0(s2)
  ADDI s2, zero, 4
  MULW t0, s8, s2
  LD t4, 640(sp)
  ADD s2, t4, t0
  FLW ft6, 0(s2)
  FADD.S ft8, ft5, ft6
  LA s2, k
  LW s8, 0(s2)
  ADDI s2, zero, 4
  MULW t0, s8, s2
  LD t4, 632(sp)
  ADD s2, t4, t0
  FLW ft5, 0(s2)
  FADD.S ft6, ft5, fs4
  FADD.S ft5, ft6, fs5
  FADD.S ft6, ft5, fs6
  LA s2, k
  LW s8, 0(s2)
  ADDI s2, zero, 4
  MULW t0, s8, s2
  LD t4, 624(sp)
  ADD s2, t4, t0
  FLW ft5, 0(s2)
  FADD.S ft2, ft5, fs7
  FLW ft4, 728(sp)
  FADD.S ft5, ft2, ft4
  FLW ft4, 720(sp)
  FADD.S ft2, ft5, ft4
  LA s2, k
  LW s8, 0(s2)
  ADDI s2, zero, 4
  MULW t0, s8, s2
  LD t4, 416(sp)
  ADD s2, t4, t0
  FLW ft5, 0(s2)
  LA s2, k
  LW s8, 0(s2)
  ADDI s2, zero, 4
  MULW t0, s8, s2
  LD t4, 440(sp)
  ADD s2, t4, t0
  FLW ft1, 0(s2)
  FADD.S ft0, ft5, ft1
  FLW ft4, 712(sp)
  FADD.S ft1, ft0, ft4
  FLW ft4, 704(sp)
  FADD.S ft0, ft1, ft4
  LA s2, k
  LW s8, 0(s2)
  ADDI s2, zero, 4
  MULW t0, s8, s2
  LD t4, 464(sp)
  ADD s2, t4, t0
  FLW ft1, 0(s2)
  LA s2, k
  LW s8, 0(s2)
  ADDI s2, zero, 4
  MULW t0, s8, s2
  LD t4, 472(sp)
  ADD s2, t4, t0
  FLW ft5, 0(s2)
  FADD.S fs11, ft1, ft5
  FLW ft4, 696(sp)
  FADD.S ft1, fs11, ft4
  FLW ft4, 688(sp)
  FADD.S fs11, ft1, ft4
  FLW ft4, 680(sp)
  FLW ft3, 672(sp)
  FADD.S ft1, ft4, ft3
  LA s2, k
  LW s8, 0(s2)
  ADDI s2, zero, 4
  MULW t0, s8, s2
  LD t4, 528(sp)
  ADD s2, t4, t0
  FLW ft5, 0(s2)
  FADD.S fs10, ft1, ft5
  FLW ft4, 664(sp)
  FADD.S ft1, fs10, ft4
  LA s2, k
  LW s8, 0(s2)
  ADDI s2, zero, 4
  MULW t0, s8, s2
  LD t4, 560(sp)
  ADD s2, t4, t0
  FLW fs10, 0(s2)
  FLW ft4, 656(sp)
  FADD.S ft5, ft4, fs10
  LA s2, k
  LW s8, 0(s2)
  ADDI s2, zero, 4
  MULW t0, s8, s2
  LD t4, 584(sp)
  ADD s2, t4, t0
  FLW fs10, 0(s2)
  FADD.S fs9, ft5, fs10
  FLW ft4, 648(sp)
  FADD.S fs10, fs9, ft4
  LA s2, k
  LW s8, 0(s2)
  ADDI s2, zero, 4
  MULW t0, s8, s2
  LD t4, 600(sp)
  ADD s2, t4, t0
  FLW fs9, 0(s2)
  FLW ft4, 616(sp)
  FADD.S ft5, ft4, fs9
  LA s2, k
  LW s8, 0(s2)
  ADDI s2, zero, 4
  MULW t0, s8, s2
  LD t4, 608(sp)
  ADD s2, t4, t0
  FLW fs9, 0(s2)
  FADD.S fs8, ft5, fs9
  FLW ft4, 792(sp)
  FADD.S fs9, fs8, ft4
  FSW ft7, 360(sp)
  ADDI s2, sp, 364
  FSW ft8, 0(s2)
  ADDI s2, sp, 368
  FSW ft6, 0(s2)
  ADDI s2, sp, 372
  FSW ft2, 0(s2)
  ADDI s2, sp, 376
  FSW ft0, 0(s2)
  ADDI s2, sp, 380
  FSW fs11, 0(s2)
  ADDI s2, sp, 384
  FSW ft1, 0(s2)
  ADDI s2, sp, 388
  FSW fs10, 0(s2)
  ADDI s2, sp, 392
  FSW fs9, 0(s2)
  ADDI s8, sp, 396
  LA t0, .CONSTANT.7.0
  FLW fs8, 0(t0)
  FSW fs8, 0(s8)
  LA s8, k
  LW t0, 0(s8)
  ADDI s8, zero, 4
  MULW t1, t0, s8
  ADD s8, s0, t1
  LW s0, 0(s8)
  ADDW s8, s0, s1
  ADDW s0, s8, s3
  LA s8, k
  LW t0, 0(s8)
  ADDI s8, zero, 4
  MULW t1, t0, s8
  LD t4, 784(sp)
  ADD s8, t4, t1
  LW t0, 0(s8)
  LW t4, 776(sp)
  ADDW s8, t0, t4
  LW t4, 768(sp)
  ADDW t0, s8, t4
  LA s8, k
  LW t1, 0(s8)
  ADDI s8, zero, 4
  MULW ra, t1, s8
  LD t4, 752(sp)
  ADD s8, t4, ra
  LW ra, 0(s8)
  LA s8, k
  LW t1, 0(s8)
  ADDI s8, zero, 4
  MULW s11, t1, s8
  LD t4, 744(sp)
  ADD s8, t4, s11
  LW s11, 0(s8)
  ADDW s8, ra, s11
  LW t4, 736(sp)
  ADDW s11, s8, t4
  LA s8, k
  LW ra, 0(s8)
  ADDI s8, zero, 4
  MULW t1, ra, s8
  LD t4, 408(sp)
  ADD s8, t4, t1
  LW ra, 0(s8)
  LW t4, 400(sp)
  ADDW s8, t4, ra
  LA ra, k
  LW t1, 0(ra)
  ADDI ra, zero, 4
  MULW s10, t1, ra
  LD t4, 424(sp)
  ADD ra, t4, s10
  LW s10, 0(ra)
  ADDW ra, s8, s10
  LA s8, k
  LW s10, 0(s8)
  ADDI s8, zero, 4
  MULW t1, s10, s8
  LD t4, 432(sp)
  ADD s8, t4, t1
  LW s10, 0(s8)
  LA s8, k
  LW t1, 0(s8)
  ADDI s8, zero, 4
  MULW s9, t1, s8
  LD t4, 448(sp)
  ADD s8, t4, s9
  LW s9, 0(s8)
  ADDW s8, s10, s9
  LW t4, 456(sp)
  ADDW s9, s8, t4
  LA s8, k
  LW s10, 0(s8)
  ADDI s8, zero, 4
  MULW t1, s10, s8
  LD t4, 480(sp)
  ADD s8, t4, t1
  LW s10, 0(s8)
  LA s8, k
  LW t1, 0(s8)
  ADDI s8, zero, 4
  MULW s7, t1, s8
  LD t4, 488(sp)
  ADD s8, t4, s7
  LW s7, 0(s8)
  ADDW s8, s10, s7
  LW t4, 496(sp)
  ADDW s7, s8, t4
  LA s8, k
  LW s10, 0(s8)
  ADDI s8, zero, 4
  MULW t1, s10, s8
  LD t4, 512(sp)
  ADD s8, t4, t1
  LW s10, 0(s8)
  LW t4, 504(sp)
  ADDW s8, t4, s10
  LW t4, 520(sp)
  ADDW s10, s8, t4
  LA s8, k
  LW t1, 0(s8)
  ADDI s8, zero, 4
  MULW s6, t1, s8
  LD t4, 544(sp)
  ADD s8, t4, s6
  LW s6, 0(s8)
  LW t4, 536(sp)
  ADDW s8, t4, s6
  LA s6, k
  LW t1, 0(s6)
  ADDI s6, zero, 4
  MULW s5, t1, s6
  LD t4, 552(sp)
  ADD s6, t4, s5
  LW s5, 0(s6)
  ADDW s6, s8, s5
  LA s5, k
  LW s8, 0(s5)
  ADDI s5, zero, 4
  MULW t1, s8, s5
  LD t4, 576(sp)
  ADD s5, t4, t1
  LW s8, 0(s5)
  LW t4, 568(sp)
  ADDW s5, t4, s8
  LW t4, 592(sp)
  ADDW s8, s5, t4
  LW t4, 800(sp)
  ADDW s5, s8, t4
  SW s0, 320(sp)
  ADDI s0, sp, 324
  SW t0, 0(s0)
  ADDI s0, sp, 328
  SW s11, 0(s0)
  ADDI s0, sp, 332
  SW ra, 0(s0)
  ADDI s0, sp, 336
  SW s9, 0(s0)
  ADDI s0, sp, 340
  SW s7, 0(s0)
  ADDI s0, sp, 344
  SW s10, 0(s0)
  ADDI s0, sp, 348
  SW s6, 0(s0)
  ADDI s0, sp, 352
  SW s5, 0(s0)
  ADDI s0, sp, 356
  SW zero, 0(s0)
  LW t4, 800(sp)
  XOR s0, t4, zero
  SLTU s5, zero, s0
  BNE s5, zero, bb20
  JAL zero, bb21
bb20:
  ADDI a0, zero, 10
  ADDI a1, sp, 360
  ADD a1, a1, zero
  CALL putfarray
  ADDI a0, zero, 10
  ADDI a1, sp, 320
  ADD a1, a1, zero
  CALL putarray
  ADD s0, zero, zero
  JAL zero, bb22
bb21:
  LW t4, 800(sp)
  FCVT.S.W fs8, t4
  FLW ft4, 792(sp)
  FCVT.W.S s0, ft4, rtz
  FSGNJ.S fa0, fs0, fs0
  ADDI a0, sp, 320
  ADD a0, a0, zero
  ADD a1, s1, zero
  ADDI a2, sp, 360
  ADD a2, a2, zero
  FSGNJ.S fa1, fs1, fs1
  ADD a3, s3, zero
  FSGNJ.S fa2, fs2, fs2
  FSGNJ.S fa3, fs3, fs3
  ADD a4, s4, zero
  LD t4, 784(sp)
  ADD a5, t4, zero
  LW t4, 776(sp)
  ADD a6, t4, zero
  LW t4, 768(sp)
  ADD a7, t4, zero
  ADDI t6, sp, 0
  ADD s1, t6, zero
  LD t4, 760(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 8
  LD t4, 752(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 16
  LD t4, 744(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 24
  LW t4, 736(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 32
  LD t4, 640(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 40
  LD t4, 632(sp)
  SD t4, 0(s1)
  FSGNJ.S fa4, fs4, fs4
  FSGNJ.S fa5, fs5, fs5
  FSGNJ.S fa6, fs6, fs6
  ADDI s1, sp, 48
  LD t4, 624(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 56
  LW t4, 400(sp)
  SW t4, 0(s1)
  FSGNJ.S fa7, fs7, fs7
  ADDI s1, sp, 60
  FLW ft4, 728(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 64
  FLW ft4, 720(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 72
  LD t4, 408(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 80
  LD t4, 416(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 88
  LD t4, 424(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 96
  LD t4, 432(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 104
  LD t4, 440(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 112
  FLW ft4, 712(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 116
  FLW ft4, 704(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 120
  LD t4, 448(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 128
  LW t4, 456(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 136
  LD t4, 464(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 144
  LD t4, 472(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 152
  FLW ft4, 696(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 156
  FLW ft4, 688(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 160
  LD t4, 480(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 168
  LD t4, 488(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 176
  LW t4, 496(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 180
  LW t4, 504(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 184
  FLW ft4, 680(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 188
  FLW ft4, 672(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 192
  LD t4, 512(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 200
  LW t4, 520(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 208
  LD t4, 528(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 216
  LW t4, 536(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 224
  LD t4, 544(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 232
  LD t4, 552(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 240
  FLW ft4, 664(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 244
  FLW ft4, 656(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 248
  LD t4, 560(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 256
  LW t4, 568(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 264
  LD t4, 576(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 272
  LD t4, 584(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 280
  FLW ft4, 648(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 284
  LW t4, 592(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 288
  FLW ft4, 616(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 296
  LD t4, 600(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 304
  LD t4, 608(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 312
  FSW fs8, 0(s1)
  ADDI s1, sp, 316
  SW s0, 0(s1)
  LD t4, 760(sp)
  LD t3, 752(sp)
  LD t4, 744(sp)
  LW t3, 736(sp)
  LD t4, 640(sp)
  LD t3, 632(sp)
  LD t4, 624(sp)
  LW t3, 400(sp)
  FLW ft4, 728(sp)
  FLW ft3, 720(sp)
  LD t4, 408(sp)
  LD t3, 416(sp)
  LD t4, 424(sp)
  LD t3, 432(sp)
  LD t4, 440(sp)
  FLW ft4, 712(sp)
  FLW ft3, 704(sp)
  LD t3, 448(sp)
  LW t4, 456(sp)
  LD t3, 464(sp)
  LD t4, 472(sp)
  FLW ft4, 696(sp)
  FLW ft3, 688(sp)
  LD t3, 480(sp)
  LD t4, 488(sp)
  LW t3, 496(sp)
  LW t4, 504(sp)
  FLW ft4, 680(sp)
  FLW ft3, 672(sp)
  LD t3, 512(sp)
  LW t4, 520(sp)
  LD t3, 528(sp)
  LW t4, 536(sp)
  LD t3, 544(sp)
  LD t4, 552(sp)
  FLW ft4, 664(sp)
  FLW ft3, 656(sp)
  LD t3, 560(sp)
  LW t4, 568(sp)
  LD t3, 576(sp)
  LD t4, 584(sp)
  FLW ft4, 648(sp)
  LW t3, 592(sp)
  FLW ft3, 616(sp)
  LD t4, 600(sp)
  LD t3, 608(sp)
  CALL params_mix
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD s5, 808(sp)
  LD s6, 816(sp)
  LD s7, 824(sp)
  LD s9, 832(sp)
  LD s10, 840(sp)
  LD s11, 848(sp)
  FLD fs8, 856(sp)
  LD ra, 864(sp)
  FLD fs10, 872(sp)
  FLD fs11, 880(sp)
  FLD fs7, 888(sp)
  LD s3, 896(sp)
  FLD fs1, 904(sp)
  LD s1, 912(sp)
  FLD fs0, 920(sp)
  FLD fs9, 928(sp)
  LD s0, 936(sp)
  LD s2, 944(sp)
  FLD fs2, 952(sp)
  FLD fs3, 960(sp)
  LD s8, 968(sp)
  LD s4, 976(sp)
  FLD fs4, 984(sp)
  FLD fs5, 992(sp)
  FLD fs6, 1000(sp)
  ADDI sp, sp, 1008
  JALR zero, 0(ra)
bb22:
  ADD s5, s0, zero
  SLTI s6, s5, 10
  BNE s6, zero, bb23
  JAL zero, bb24
bb23:
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADDI t5, sp, 320
  ADD s6, t5, s7
  LW s8, 0(s6)
  ADDI t6, sp, 360
  ADD s9, t6, s7
  FLW fs8, 0(s9)
  FCVT.S.W fs9, s8
  FSUB.S fs10, fs9, fs8
  FCVT.W.S s7, fs10, rtz
  SW s7, 0(s6)
  ADDIW s6, s5, 1
  ADD s0, s6, zero
  JAL zero, bb22
bb24:
  LA s0, k
  LW s5, 0(s0)
  ADDI s0, zero, 4
  MULW s6, s5, s0
  ADDI t5, sp, 320
  ADD s0, t5, s6
  LW s5, 0(s0)
  FLW fs8, 0(s2)
  FCVT.S.W fs9, s5
  FMUL.S fs10, fs9, fs8
  FCVT.W.S s0, fs10, rtz
  ADD a0, s0, zero
  LD s5, 808(sp)
  LD s6, 816(sp)
  LD s7, 824(sp)
  LD s9, 832(sp)
  LD s10, 840(sp)
  LD s11, 848(sp)
  FLD fs8, 856(sp)
  LD ra, 864(sp)
  FLD fs10, 872(sp)
  FLD fs11, 880(sp)
  FLD fs7, 888(sp)
  LD s3, 896(sp)
  FLD fs1, 904(sp)
  LD s1, 912(sp)
  FLD fs0, 920(sp)
  FLD fs9, 928(sp)
  LD s0, 936(sp)
  LD s2, 944(sp)
  FLD fs2, 952(sp)
  FLD fs3, 960(sp)
  LD s8, 968(sp)
  LD s4, 976(sp)
  FLD fs4, 984(sp)
  FLD fs5, 992(sp)
  FLD fs6, 1000(sp)
  ADDI sp, sp, 1008
  JALR zero, 0(ra)
