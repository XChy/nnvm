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
  ADDI sp, sp, -656
  SD s7, 456(sp)
  SD s9, 464(sp)
  SD s10, 472(sp)
  SD s11, 480(sp)
  FSD fs10, 488(sp)
  SD ra, 496(sp)
  FSD fs11, 504(sp)
  FSD fs8, 512(sp)
  FSD fs7, 520(sp)
  SD s8, 528(sp)
  FSD fs6, 536(sp)
  FSD fs1, 544(sp)
  SD s4, 552(sp)
  SD s3, 560(sp)
  FSD fs0, 568(sp)
  SD s2, 576(sp)
  SD s1, 584(sp)
  FSD fs9, 592(sp)
  SD s0, 600(sp)
  SD s5, 608(sp)
  FSD fs2, 616(sp)
  FSD fs3, 624(sp)
  SD s6, 632(sp)
  FSD fs4, 640(sp)
  FSD fs5, 648(sp)
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
  SW t4, 444(sp)
  FSGNJ.D fs6, fa6, fa6
  ADDI t5, sp, 656
  ADD s8, t5, zero
  LW t4, 0(s8)
  SW t4, 440(sp)
  FSGNJ.D fs7, fa7, fa7
  ADDI s8, sp, 660
  FLW fs8, 0(s8)
  ADDI s8, sp, 664
  FLW ft4, 0(s8)
  FSW ft4, 452(sp)
  ADDI s8, sp, 668
  FLW ft4, 0(s8)
  FSW ft4, 448(sp)
  ADDI s8, sp, 672
  FLW ft4, 0(s8)
  FSW ft4, 412(sp)
  ADDI s8, sp, 676
  FLW ft4, 0(s8)
  FSW ft4, 408(sp)
  ADDI s8, sp, 680
  LW t4, 0(s8)
  SW t4, 436(sp)
  ADDI s8, sp, 684
  FLW ft4, 0(s8)
  FSW ft4, 404(sp)
  ADDI s8, sp, 688
  LW t4, 0(s8)
  SW t4, 432(sp)
  ADDI s8, sp, 692
  LW t4, 0(s8)
  SW t4, 428(sp)
  ADDI s8, sp, 696
  FLW ft4, 0(s8)
  FSW ft4, 400(sp)
  ADDI s8, sp, 700
  FLW ft4, 0(s8)
  FSW ft4, 396(sp)
  ADDI s8, sp, 704
  FLW ft4, 0(s8)
  FSW ft4, 392(sp)
  ADDI s8, sp, 708
  FLW ft4, 0(s8)
  FSW ft4, 388(sp)
  ADDI s8, sp, 712
  FLW ft4, 0(s8)
  FSW ft4, 384(sp)
  ADDI s8, sp, 716
  LW t4, 0(s8)
  SW t4, 424(sp)
  ADDI s8, sp, 720
  FLW ft4, 0(s8)
  FSW ft4, 380(sp)
  ADDI s8, sp, 724
  LW t4, 0(s8)
  SW t4, 420(sp)
  ADDI s8, sp, 728
  FLW ft4, 0(s8)
  FSW ft4, 376(sp)
  ADDI s8, sp, 732
  FLW ft4, 0(s8)
  FSW ft4, 372(sp)
  ADDI s8, sp, 736
  FLW ft4, 0(s8)
  FSW ft4, 264(sp)
  ADDI s8, sp, 740
  FLW ft4, 0(s8)
  FSW ft4, 268(sp)
  ADDI s8, sp, 744
  LW t4, 0(s8)
  SW t4, 416(sp)
  ADDI s8, sp, 748
  LW t4, 0(s8)
  SW t4, 368(sp)
  ADDI s8, sp, 752
  FLW ft4, 0(s8)
  FSW ft4, 272(sp)
  ADDI s8, sp, 756
  FLW ft4, 0(s8)
  FSW ft4, 276(sp)
  ADDI s8, sp, 760
  FLW ft4, 0(s8)
  FSW ft4, 280(sp)
  ADDI s8, sp, 764
  LW t4, 0(s8)
  SW t4, 284(sp)
  ADDI s8, sp, 768
  FLW ft4, 0(s8)
  FSW ft4, 288(sp)
  ADDI s8, sp, 772
  LW t4, 0(s8)
  SW t4, 292(sp)
  ADDI s8, sp, 776
  LW t4, 0(s8)
  SW t4, 296(sp)
  ADDI s8, sp, 780
  FLW ft4, 0(s8)
  FSW ft4, 300(sp)
  ADDI s8, sp, 784
  FLW ft4, 0(s8)
  FSW ft4, 304(sp)
  ADDI s8, sp, 788
  FLW ft4, 0(s8)
  FSW ft4, 308(sp)
  ADDI s8, sp, 792
  FLW ft4, 0(s8)
  FSW ft4, 312(sp)
  ADDI s8, sp, 796
  LW t4, 0(s8)
  SW t4, 316(sp)
  ADDI s8, sp, 800
  LW t4, 0(s8)
  SW t4, 320(sp)
  ADDI s8, sp, 804
  LW t4, 0(s8)
  SW t4, 324(sp)
  ADDI s8, sp, 808
  FLW ft4, 0(s8)
  FSW ft4, 328(sp)
  ADDI s8, sp, 812
  FLW ft4, 0(s8)
  FSW ft4, 332(sp)
  ADDI s8, sp, 816
  FLW ft4, 0(s8)
  FSW ft4, 336(sp)
  ADDI s8, sp, 820
  FLW ft4, 0(s8)
  FSW ft4, 340(sp)
  ADDI s8, sp, 824
  FLW ft4, 0(s8)
  FSW ft4, 344(sp)
  ADDI s8, sp, 828
  FLW ft4, 0(s8)
  FSW ft4, 348(sp)
  ADDI s8, sp, 832
  LW t4, 0(s8)
  SW t4, 352(sp)
  ADDI s8, sp, 836
  FLW ft4, 0(s8)
  FSW ft4, 356(sp)
  ADDI s8, sp, 840
  LW t4, 0(s8)
  SW t4, 360(sp)
  ADDI s8, sp, 844
  FLW ft4, 0(s8)
  FSW ft4, 364(sp)
  XOR s8, s0, zero
  SLTU t6, zero, s8
  BNE t6, zero, bb2
  # implict jump to bb1
bb1:
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
  LW t4, 444(sp)
  ADD a7, t4, zero
  FSGNJ.S fa6, fs6, fs6
  ADDI t5, sp, 0
  ADD s0, t5, zero
  LW t4, 440(sp)
  SW t4, 0(s0)
  FSGNJ.S fa7, fs7, fs7
  ADDI s0, sp, 4
  FSW fs8, 0(s0)
  ADDI s0, sp, 8
  FLW ft4, 452(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 12
  FLW ft4, 448(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 16
  FLW ft4, 412(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 20
  FLW ft4, 408(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 24
  LW t4, 436(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 28
  FLW ft4, 404(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 32
  LW t4, 432(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 36
  LW t4, 428(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 40
  FLW ft4, 400(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 44
  FLW ft4, 396(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 48
  FLW ft4, 392(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 52
  FLW ft4, 388(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 56
  FLW ft4, 384(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 60
  LW t4, 424(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 64
  FLW ft4, 380(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 68
  LW t4, 420(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 72
  FLW ft4, 376(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 76
  FLW ft4, 372(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 80
  FLW ft4, 264(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 84
  FLW ft4, 268(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 88
  LW t4, 416(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 92
  LW t4, 368(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 96
  FLW ft4, 272(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 100
  FLW ft4, 276(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 104
  FLW ft4, 280(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 108
  LW t4, 284(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 112
  FLW ft4, 288(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 116
  LW t4, 292(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 120
  LW t4, 296(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 124
  FLW ft4, 300(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 128
  FLW ft4, 304(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 132
  FLW ft4, 308(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 136
  FLW ft4, 312(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 140
  LW t4, 316(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 144
  LW t4, 320(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 148
  LW t4, 324(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 152
  FLW ft4, 328(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 156
  FLW ft4, 332(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 160
  FLW ft4, 336(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 164
  FLW ft4, 340(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 168
  FLW ft4, 344(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 172
  FLW ft4, 348(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 176
  LW t4, 352(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 180
  FLW ft4, 356(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 184
  LW t4, 360(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 188
  FLW ft4, 364(sp)
  FSW ft4, 0(s0)
  LW t4, 440(sp)
  FLW ft4, 452(sp)
  FLW ft3, 448(sp)
  FLW ft4, 412(sp)
  FLW ft3, 408(sp)
  LW t3, 436(sp)
  FLW ft4, 404(sp)
  LW t4, 432(sp)
  LW t3, 428(sp)
  FLW ft3, 400(sp)
  FLW ft4, 396(sp)
  FLW ft3, 392(sp)
  FLW ft4, 388(sp)
  FLW ft3, 384(sp)
  LW t4, 424(sp)
  FLW ft4, 380(sp)
  LW t3, 420(sp)
  FLW ft3, 376(sp)
  FLW ft4, 372(sp)
  FLW ft3, 264(sp)
  FLW ft4, 268(sp)
  LW t4, 416(sp)
  LW t3, 368(sp)
  FLW ft3, 272(sp)
  FLW ft4, 276(sp)
  FLW ft3, 280(sp)
  LW t4, 284(sp)
  FLW ft4, 288(sp)
  LW t3, 292(sp)
  LW t4, 296(sp)
  FLW ft3, 300(sp)
  FLW ft4, 304(sp)
  FLW ft3, 308(sp)
  FLW ft4, 312(sp)
  LW t3, 316(sp)
  LW t4, 320(sp)
  LW t3, 324(sp)
  FLW ft3, 328(sp)
  FLW ft4, 332(sp)
  FLW ft3, 336(sp)
  FLW ft4, 340(sp)
  FLW ft3, 344(sp)
  FLW ft4, 348(sp)
  LW t4, 352(sp)
  FLW ft3, 356(sp)
  LW t3, 360(sp)
  FLW ft4, 364(sp)
  CALL params_f40_i24
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  LD s7, 456(sp)
  LD s9, 464(sp)
  LD s10, 472(sp)
  LD s11, 480(sp)
  FLD fs10, 488(sp)
  LD ra, 496(sp)
  FLD fs11, 504(sp)
  FLD fs8, 512(sp)
  FLD fs7, 520(sp)
  LD s8, 528(sp)
  FLD fs6, 536(sp)
  FLD fs1, 544(sp)
  LD s4, 552(sp)
  LD s3, 560(sp)
  FLD fs0, 568(sp)
  LD s2, 576(sp)
  LD s1, 584(sp)
  FLD fs9, 592(sp)
  LD s0, 600(sp)
  LD s5, 608(sp)
  FLD fs2, 616(sp)
  FLD fs3, 624(sp)
  LD s6, 632(sp)
  FLD fs4, 640(sp)
  FLD fs5, 648(sp)
  ADDI sp, sp, 656
  JALR zero, 0(ra)
bb2:
  FLW ft4, 280(sp)
  FLW ft3, 452(sp)
  FADD.S ft11, ft4, ft3
  FLW ft4, 356(sp)
  FADD.S ft10, ft11, ft4
  FADD.S ft11, ft10, fs4
  FLW ft4, 264(sp)
  FADD.S ft10, fs0, ft4
  FLW ft4, 408(sp)
  FADD.S ft9, ft10, ft4
  FADD.S ft10, ft9, fs3
  FLW ft4, 388(sp)
  FADD.S ft9, fs1, ft4
  FLW ft4, 276(sp)
  FADD.S ft8, ft9, ft4
  FLW ft4, 448(sp)
  FADD.S ft9, ft8, ft4
  FLW ft4, 308(sp)
  FADD.S ft8, fs8, ft4
  FLW ft4, 272(sp)
  FADD.S ft7, ft8, ft4
  FADD.S ft8, ft7, fs2
  FLW ft4, 372(sp)
  FLW ft3, 348(sp)
  FADD.S ft7, ft4, ft3
  FLW ft4, 328(sp)
  FADD.S ft6, ft7, ft4
  FLW ft4, 332(sp)
  FADD.S ft7, ft6, ft4
  FLW ft4, 400(sp)
  FLW ft3, 376(sp)
  FADD.S ft6, ft4, ft3
  FLW ft4, 336(sp)
  FADD.S ft5, ft6, ft4
  FLW ft4, 392(sp)
  FADD.S ft6, ft5, ft4
  FLW ft4, 304(sp)
  FLW ft3, 384(sp)
  FADD.S ft5, ft4, ft3
  FLW ft4, 340(sp)
  FADD.S ft2, ft5, ft4
  FLW ft4, 300(sp)
  FADD.S ft5, ft2, ft4
  FLW ft4, 312(sp)
  FADD.S ft2, fs5, ft4
  FADD.S ft1, ft2, fs7
  FLW ft4, 288(sp)
  FADD.S ft2, ft1, ft4
  FLW ft4, 404(sp)
  FLW ft3, 396(sp)
  FADD.S ft1, ft4, ft3
  FLW ft4, 268(sp)
  FADD.S ft0, ft1, ft4
  FLW ft4, 364(sp)
  FADD.S ft1, ft0, ft4
  FLW ft4, 344(sp)
  FADD.S ft0, ft4, fs6
  FLW ft4, 412(sp)
  FADD.S fs11, ft0, ft4
  FLW ft4, 380(sp)
  FADD.S ft0, fs11, ft4
  FSW ft11, 224(sp)
  ADDI s8, sp, 228
  FSW ft10, 0(s8)
  ADDI s8, sp, 232
  FSW ft9, 0(s8)
  ADDI s8, sp, 236
  FSW ft8, 0(s8)
  ADDI s8, sp, 240
  FSW ft7, 0(s8)
  ADDI s8, sp, 244
  FSW ft6, 0(s8)
  ADDI s8, sp, 248
  FSW ft5, 0(s8)
  ADDI s8, sp, 252
  FSW ft2, 0(s8)
  ADDI s8, sp, 256
  FSW ft1, 0(s8)
  ADDI s8, sp, 260
  FSW ft0, 0(s8)
  LW t4, 444(sp)
  ADDW s8, t4, s3
  ADDW t6, s8, s1
  LW t4, 316(sp)
  ADDW s8, t4, s4
  ADDW t2, s8, s5
  LW t4, 436(sp)
  ADDW s8, s2, t4
  LW t4, 424(sp)
  ADDW t1, s8, t4
  LW t4, 368(sp)
  LW t3, 432(sp)
  ADDW s8, t4, t3
  LW t4, 292(sp)
  ADDW t0, s8, t4
  LW t4, 284(sp)
  LW t3, 428(sp)
  ADDW s8, t4, t3
  LW t4, 360(sp)
  ADDW ra, s8, t4
  LW t4, 352(sp)
  LW t3, 296(sp)
  ADDW s8, t4, t3
  LW t4, 420(sp)
  ADDW s11, s8, t4
  LW t4, 416(sp)
  LW t3, 440(sp)
  ADDW s8, t4, t3
  LW t4, 324(sp)
  ADDW s10, s8, t4
  LW t4, 320(sp)
  ADDW s8, t4, s6
  ADDW s9, s8, s0
  SW t6, 192(sp)
  ADDI s0, sp, 196
  SW t2, 0(s0)
  ADDI s0, sp, 200
  SW t1, 0(s0)
  ADDI s0, sp, 204
  SW t0, 0(s0)
  ADDI s0, sp, 208
  SW ra, 0(s0)
  ADDI s0, sp, 212
  SW s11, 0(s0)
  ADDI s0, sp, 216
  SW s10, 0(s0)
  ADDI s0, sp, 220
  SW s9, 0(s0)
  ADDI a0, zero, 10
  ADDI a1, sp, 224
  ADD a1, a1, zero
  CALL putfarray
  ADDI a0, zero, 8
  ADDI a1, sp, 192
  ADD a1, a1, zero
  CALL putarray
  ADD s0, zero, zero
  # implict jump to bb3
bb3:
  ADD s8, s0, zero
  SLTI s9, s8, 8
  BNE s9, zero, bb5
  # implict jump to bb4
bb4:
  LA s0, k
  LW s7, 0(s0)
  SLLIW s0, s7, 2
  ADDI t5, sp, 192
  ADD s7, t5, s0
  LW s0, 0(s7)
  FCVT.S.W fs9, s0
  FSGNJ.S fa0, fs9, fs9
  LD s7, 456(sp)
  LD s9, 464(sp)
  LD s10, 472(sp)
  LD s11, 480(sp)
  FLD fs10, 488(sp)
  LD ra, 496(sp)
  FLD fs11, 504(sp)
  FLD fs8, 512(sp)
  FLD fs7, 520(sp)
  LD s8, 528(sp)
  FLD fs6, 536(sp)
  FLD fs1, 544(sp)
  LD s4, 552(sp)
  LD s3, 560(sp)
  FLD fs0, 568(sp)
  LD s2, 576(sp)
  LD s1, 584(sp)
  FLD fs9, 592(sp)
  LD s0, 600(sp)
  LD s5, 608(sp)
  FLD fs2, 616(sp)
  FLD fs3, 624(sp)
  LD s6, 632(sp)
  FLD fs4, 640(sp)
  FLD fs5, 648(sp)
  ADDI sp, sp, 656
  JALR zero, 0(ra)
bb5:
  SLLIW s9, s8, 2
  ADDI t5, sp, 192
  ADD s10, t5, s9
  LW s11, 0(s10)
  ADDI t5, sp, 224
  ADD s7, t5, s9
  FLW fs11, 0(s7)
  FCVT.S.W fs10, s11
  FSUB.S fs9, fs10, fs11
  FCVT.W.S s7, fs9, rtz
  SW s7, 0(s10)
  ADDIW s7, s8, 1
  ADD s0, s7, zero
  JAL zero, bb3
main:
  LUI t0, 1048575
  ADDIW t0, t0, 1824
  ADD sp, sp, t0
  LUI t5, 1
  ADDIW t5, t5, -2024
  ADD t5, t5, sp
  FSD fs3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -2016
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -2008
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -2000
  ADD t5, t5, sp
  FSD fs1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1992
  ADD t5, t5, sp
  FSD fs8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1984
  ADD t5, t5, sp
  FSD fs0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1976
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1968
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1960
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1952
  ADD t5, t5, sp
  FSD fs2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1944
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1936
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1928
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  FSD fs4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1912
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1904
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1896
  ADD t5, t5, sp
  FSD fs5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1888
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1880
  ADD t5, t5, sp
  FSD fs6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1872
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1864
  ADD t5, t5, sp
  FSD fs7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1856
  ADD t5, t5, sp
  FSD fs9, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1848
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1840
  ADD t5, t5, sp
  FSD fs10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1832
  ADD t5, t5, sp
  FSD fs11, 0(t5)
  CALL getint
  ADD s0, a0, zero
  LA s1, k
  SW s0, 0(s1)
  ADD s0, zero, zero
  # implict jump to bb7
bb7:
  ADD s1, s0, zero
  SLTI s2, s1, 40
  BNE s2, zero, bb12
  # implict jump to bb8
bb8:
  ADD s0, zero, zero
  # implict jump to bb9
bb9:
  ADD s1, s0, zero
  SLTI s2, s1, 24
  BNE s2, zero, bb11
  # implict jump to bb10
bb10:
  LA s0, k
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  ADDI t5, sp, 608
  ADD s1, t5, s0
  FLW fs0, 0(s1)
  ADDI t4, sp, 620
  SD t4, 1192(sp)
  LD t4, 1192(sp)
  ADD s2, t4, s0
  FLW fs1, 0(s2)
  ADDI t4, sp, 632
  SD t4, 1632(sp)
  LD t4, 1632(sp)
  ADD s3, t4, s0
  FLW fs2, 0(s3)
  ADDI t4, sp, 644
  SD t4, 1600(sp)
  LD t4, 1600(sp)
  ADD s4, t4, s0
  FLW fs3, 0(s4)
  ADDI t4, sp, 656
  SD t4, 1584(sp)
  LD t4, 1584(sp)
  ADD s5, t4, s0
  FLW fs4, 0(s5)
  ADDI t4, sp, 668
  SD t4, 1144(sp)
  LD t4, 1144(sp)
  ADD s6, t4, s0
  FLW fs5, 0(s6)
  ADDI t4, sp, 680
  SD t4, 1128(sp)
  LD t4, 1128(sp)
  ADD s7, t4, s0
  FLW fs6, 0(s7)
  ADDI t4, sp, 692
  SD t4, 1112(sp)
  LD t4, 1112(sp)
  ADD s8, t4, s0
  FLW fs7, 0(s8)
  ADDI t4, sp, 704
  SD t4, 1088(sp)
  LD t4, 1088(sp)
  ADD s9, t4, s0
  FLW fs8, 0(s9)
  ADDI t4, sp, 716
  SD t4, 1568(sp)
  LD t4, 1568(sp)
  ADD s10, t4, s0
  FLW fs9, 0(s10)
  ADDI t4, sp, 728
  SD t4, 1560(sp)
  LD t4, 1560(sp)
  ADD s11, t4, s0
  FLW fs10, 0(s11)
  ADDI t4, sp, 740
  SD t4, 1552(sp)
  LD t4, 1552(sp)
  ADD s8, t4, s0
  FLW fs11, 0(s8)
  ADDI t4, sp, 752
  SD t4, 1096(sp)
  LD t4, 1096(sp)
  ADD s8, t4, s0
  FLW ft4, 0(s8)
  FSW ft4, 1104(sp)
  ADDI t4, sp, 764
  SD t4, 1528(sp)
  LD t4, 1528(sp)
  ADD s7, t4, s0
  FLW ft4, 0(s7)
  FSW ft4, 1120(sp)
  ADDI t4, sp, 776
  SD t4, 1512(sp)
  LD t4, 1512(sp)
  ADD s6, t4, s0
  FLW ft4, 0(s6)
  FSW ft4, 1136(sp)
  ADDI t4, sp, 788
  SD t4, 1496(sp)
  LD t4, 1496(sp)
  ADD s5, t4, s0
  FLW ft4, 0(s5)
  FSW ft4, 1152(sp)
  ADDI t4, sp, 800
  SD t4, 1160(sp)
  LD t4, 1160(sp)
  ADD s5, t4, s0
  FLW ft4, 0(s5)
  FSW ft4, 1168(sp)
  ADDI t4, sp, 812
  SD t4, 1176(sp)
  LD t4, 1176(sp)
  ADD s5, t4, s0
  FLW ft4, 0(s5)
  FSW ft4, 1184(sp)
  ADDI t4, sp, 824
  SD t4, 1480(sp)
  LD t4, 1480(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 1200(sp)
  ADDI t4, sp, 836
  SD t4, 1208(sp)
  LD t4, 1208(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 1216(sp)
  ADDI t4, sp, 848
  SD t4, 1224(sp)
  LD t4, 1224(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 1232(sp)
  ADDI t4, sp, 860
  SD t4, 1240(sp)
  LD t4, 1240(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 1248(sp)
  ADDI t4, sp, 872
  SD t4, 1256(sp)
  LD t4, 1256(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 1264(sp)
  ADDI t4, sp, 884
  SD t4, 1272(sp)
  LD t4, 1272(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 1280(sp)
  ADDI t4, sp, 896
  SD t4, 1288(sp)
  LD t4, 1288(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 1296(sp)
  ADDI t4, sp, 908
  SD t4, 1304(sp)
  LD t4, 1304(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 1312(sp)
  ADDI t4, sp, 920
  SD t4, 1320(sp)
  LD t4, 1320(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 1328(sp)
  ADDI t4, sp, 932
  SD t4, 1336(sp)
  LD t4, 1336(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 1344(sp)
  ADDI t4, sp, 944
  SD t4, 1352(sp)
  LD t4, 1352(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 1360(sp)
  ADDI t4, sp, 956
  SD t4, 1368(sp)
  LD t4, 1368(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 1376(sp)
  ADDI t4, sp, 968
  SD t4, 1384(sp)
  LD t4, 1384(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 1392(sp)
  ADDI t4, sp, 980
  SD t4, 1400(sp)
  LD t4, 1400(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 1408(sp)
  ADDI t4, sp, 992
  SD t4, 1416(sp)
  LD t4, 1416(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 1424(sp)
  ADDI t4, sp, 1004
  SD t4, 1432(sp)
  LD t4, 1432(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 1440(sp)
  ADDI t4, sp, 1016
  SD t4, 1448(sp)
  LD t4, 1448(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 1456(sp)
  ADDI t4, sp, 1028
  SD t4, 1464(sp)
  LD t4, 1464(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 1472(sp)
  ADDI t4, sp, 1040
  SD t4, 1696(sp)
  LD t4, 1696(sp)
  ADD s5, t4, s0
  FLW ft4, 0(s5)
  FSW ft4, 1488(sp)
  ADDI t4, sp, 1052
  SD t4, 1672(sp)
  LD t4, 1672(sp)
  ADD s6, t4, s0
  FLW ft4, 0(s6)
  FSW ft4, 1504(sp)
  ADDI t4, sp, 1064
  SD t4, 1656(sp)
  LD t4, 1656(sp)
  ADD s7, t4, s0
  FLW ft4, 0(s7)
  FSW ft4, 1520(sp)
  ADDI t4, sp, 1076
  SD t4, 1648(sp)
  LD t4, 1648(sp)
  ADD s8, t4, s0
  FLW ft4, 0(s8)
  FSW ft4, 1536(sp)
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  FSGNJ.S fa2, fs2, fs2
  FSGNJ.S fa3, fs3, fs3
  FSGNJ.S fa4, fs4, fs4
  FSGNJ.S fa5, fs5, fs5
  FSGNJ.S fa6, fs6, fs6
  FSGNJ.S fa7, fs7, fs7
  ADDI t5, sp, 0
  ADD s0, t5, zero
  FSW fs8, 0(s0)
  ADDI s0, sp, 4
  FSW fs9, 0(s0)
  ADDI s0, sp, 8
  FSW fs10, 0(s0)
  ADDI s0, sp, 12
  FSW fs11, 0(s0)
  ADDI s0, sp, 16
  FLW ft4, 1104(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 20
  FLW ft4, 1120(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 24
  FLW ft4, 1136(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 28
  FLW ft4, 1152(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 32
  FLW ft4, 1168(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 36
  FLW ft4, 1184(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 40
  FLW ft4, 1200(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 44
  FLW ft4, 1216(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 48
  FLW ft4, 1232(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 52
  FLW ft4, 1248(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 56
  FLW ft4, 1264(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 60
  FLW ft4, 1280(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 64
  FLW ft4, 1296(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 68
  FLW ft4, 1312(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 72
  FLW ft4, 1328(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 76
  FLW ft4, 1344(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 80
  FLW ft4, 1360(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 84
  FLW ft4, 1376(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 88
  FLW ft4, 1392(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 92
  FLW ft4, 1408(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 96
  FLW ft4, 1424(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 100
  FLW ft4, 1440(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 104
  FLW ft4, 1456(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 108
  FLW ft4, 1472(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 112
  FLW ft4, 1488(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 116
  FLW ft4, 1504(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 120
  FLW ft4, 1520(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 124
  FLW ft4, 1536(sp)
  FSW ft4, 0(s0)
  FLW ft4, 1104(sp)
  FLW ft3, 1120(sp)
  FLW ft4, 1136(sp)
  FLW ft3, 1152(sp)
  FLW ft4, 1168(sp)
  FLW ft3, 1184(sp)
  FLW ft4, 1200(sp)
  FLW ft3, 1216(sp)
  FLW ft4, 1232(sp)
  FLW ft3, 1248(sp)
  FLW ft4, 1264(sp)
  FLW ft3, 1280(sp)
  FLW ft4, 1296(sp)
  FLW ft3, 1312(sp)
  FLW ft4, 1328(sp)
  FLW ft3, 1344(sp)
  FLW ft4, 1360(sp)
  FLW ft3, 1376(sp)
  FLW ft4, 1392(sp)
  FLW ft3, 1408(sp)
  FLW ft4, 1424(sp)
  FLW ft3, 1440(sp)
  FLW ft4, 1456(sp)
  FLW ft3, 1472(sp)
  FLW ft4, 1488(sp)
  FLW ft3, 1504(sp)
  FLW ft4, 1520(sp)
  FLW ft3, 1536(sp)
  CALL params_f40
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 1680(sp)
  ADDI t4, sp, 596
  SD t4, 1544(sp)
  LA s8, k
  LW s0, 0(s8)
  SLLIW s8, s0, 2
  LD t4, 1544(sp)
  ADD s0, t4, s8
  LW s11, 0(s0)
  ADDI t4, sp, 344
  SD t4, 1616(sp)
  LD t4, 1616(sp)
  ADD s10, t4, s8
  LW s9, 0(s10)
  ADDI t4, sp, 392
  SD t4, 1576(sp)
  LD t4, 1576(sp)
  ADD s10, t4, s8
  LW s4, 0(s10)
  LD t4, 1584(sp)
  ADD s10, t4, s8
  FLW fs1, 0(s10)
  ADDI t4, sp, 332
  SD t4, 1592(sp)
  LD t4, 1592(sp)
  ADD s10, t4, s8
  LW s3, 0(s10)
  ADDI t4, sp, 368
  SD t4, 1608(sp)
  LD t4, 1608(sp)
  ADD s10, t4, s8
  LW s0, 0(s10)
  ADDI t4, sp, 380
  SD t4, 1624(sp)
  LD t4, 1624(sp)
  ADD s10, t4, s8
  LW s2, 0(s10)
  LD t4, 1088(sp)
  ADD s10, t4, s8
  FLW fs2, 0(s10)
  LD t4, 1496(sp)
  ADD s10, t4, s8
  FLW fs3, 0(s10)
  LD t4, 1112(sp)
  ADD s10, t4, s8
  FLW fs4, 0(s10)
  ADDI t4, sp, 584
  SD t4, 1640(sp)
  LD t4, 1640(sp)
  ADD s10, t4, s8
  LW s7, 0(s10)
  LD t4, 1600(sp)
  ADD s10, t4, s8
  FLW fs5, 0(s10)
  LD t4, 1352(sp)
  ADD s10, t4, s8
  FLW fs6, 0(s10)
  ADDI t5, sp, 320
  ADD s10, t5, s8
  LW s6, 0(s10)
  LD t4, 1672(sp)
  ADD s10, t4, s8
  FLW fs7, 0(s10)
  ADDI t4, sp, 548
  SD t4, 1664(sp)
  LD t4, 1664(sp)
  ADD s10, t4, s8
  LW s5, 0(s10)
  LD t4, 1384(sp)
  ADD s10, t4, s8
  FLW fs8, 0(s10)
  LD t4, 1096(sp)
  ADD s10, t4, s8
  FLW fs9, 0(s10)
  LD t4, 1192(sp)
  ADD s10, t4, s8
  FLW fs10, 0(s10)
  LD t4, 1552(sp)
  ADD s10, t4, s8
  FLW fs11, 0(s10)
  LD t4, 1656(sp)
  ADD s10, t4, s8
  FLW fs0, 0(s10)
  LD t4, 1128(sp)
  ADD s10, t4, s8
  FLW ft4, 0(s10)
  FSW ft4, 1684(sp)
  ADDI t4, sp, 404
  SD t4, 1688(sp)
  LD t4, 1688(sp)
  ADD s10, t4, s8
  LW s1, 0(s10)
  LD t4, 1416(sp)
  ADD s10, t4, s8
  FLW ft4, 0(s10)
  FSW ft4, 1704(sp)
  ADDI t4, sp, 440
  SD t4, 1712(sp)
  LD t4, 1712(sp)
  ADD s10, t4, s8
  LW t4, 0(s10)
  SW t4, 1720(sp)
  ADDI t4, sp, 476
  SD t4, 1728(sp)
  LD t4, 1728(sp)
  ADD s10, t4, s8
  LW t4, 0(s10)
  SW t4, 1736(sp)
  LD t4, 1224(sp)
  ADD s10, t4, s8
  FLW ft4, 0(s10)
  FSW ft4, 1740(sp)
  LD t4, 1432(sp)
  ADD s10, t4, s8
  FLW ft4, 0(s10)
  FSW ft4, 1744(sp)
  LD t4, 1272(sp)
  ADD s10, t4, s8
  FLW ft4, 0(s10)
  FSW ft4, 1748(sp)
  LD t4, 1568(sp)
  ADD s10, t4, s8
  FLW ft4, 0(s10)
  FSW ft4, 1752(sp)
  LD t4, 1304(sp)
  ADD s10, t4, s8
  FLW ft4, 0(s10)
  FSW ft4, 1756(sp)
  ADDI t4, sp, 416
  SD t4, 1760(sp)
  LD t4, 1760(sp)
  ADD s10, t4, s8
  LW t4, 0(s10)
  SW t4, 1768(sp)
  LD t4, 1648(sp)
  ADD s10, t4, s8
  FLW ft4, 0(s10)
  FSW ft4, 1772(sp)
  ADDI t4, sp, 524
  SD t4, 1776(sp)
  LD t4, 1776(sp)
  ADD s10, t4, s8
  LW t4, 0(s10)
  SW t4, 1784(sp)
  LD t4, 1240(sp)
  ADD s10, t4, s8
  FLW ft4, 0(s10)
  FSW ft4, 1788(sp)
  LD t4, 1160(sp)
  ADD s10, t4, s8
  FLW ft4, 0(s10)
  FSW ft4, 1792(sp)
  LD t4, 1144(sp)
  ADD s10, t4, s8
  FLW ft4, 0(s10)
  FSW ft4, 1796(sp)
  LD t4, 1448(sp)
  ADD s10, t4, s8
  FLW ft4, 0(s10)
  FSW ft4, 1800(sp)
  ADDI t4, sp, 536
  SD t4, 1808(sp)
  LD t4, 1808(sp)
  ADD s10, t4, s8
  LW t4, 0(s10)
  SW t4, 1816(sp)
  ADDI t4, sp, 428
  SD t4, 1824(sp)
  LD t4, 1824(sp)
  ADD s10, t4, s8
  LW t4, 0(s10)
  SW t4, 1832(sp)
  LD t4, 1512(sp)
  ADD s10, t4, s8
  FLW ft4, 0(s10)
  FSW ft4, 1836(sp)
  LD t4, 1560(sp)
  ADD s10, t4, s8
  FLW ft4, 0(s10)
  FSW ft4, 1840(sp)
  ADDI t5, sp, 608
  ADD s10, t5, s8
  FLW ft4, 0(s10)
  FSW ft4, 1844(sp)
  ADDI t4, sp, 464
  SD t4, 1848(sp)
  LD t4, 1848(sp)
  ADD s10, t4, s8
  LW t4, 0(s10)
  SW t4, 1856(sp)
  LD t4, 1400(sp)
  ADD s10, t4, s8
  FLW ft4, 0(s10)
  FSW ft4, 1860(sp)
  ADDI t4, sp, 452
  SD t4, 1864(sp)
  LD t4, 1864(sp)
  ADD s10, t4, s8
  LW t4, 0(s10)
  SW t4, 1872(sp)
  ADDI t4, sp, 512
  SD t4, 1880(sp)
  LD t4, 1880(sp)
  ADD s10, t4, s8
  LW t4, 0(s10)
  SW t4, 1888(sp)
  LD t4, 1336(sp)
  ADD s10, t4, s8
  FLW ft4, 0(s10)
  FSW ft4, 1892(sp)
  LD t4, 1288(sp)
  ADD s10, t4, s8
  FLW ft4, 0(s10)
  FSW ft4, 1896(sp)
  LD t4, 1528(sp)
  ADD s10, t4, s8
  FLW ft4, 0(s10)
  FSW ft4, 1900(sp)
  LD t4, 1368(sp)
  ADD s10, t4, s8
  FLW ft4, 0(s10)
  FSW ft4, 1904(sp)
  ADDI t4, sp, 356
  SD t4, 1912(sp)
  LD t4, 1912(sp)
  ADD s10, t4, s8
  LW t4, 0(s10)
  SW t4, 1920(sp)
  ADDI t4, sp, 572
  SD t4, 1928(sp)
  LD t4, 1928(sp)
  ADD s10, t4, s8
  LW t4, 0(s10)
  SW t4, 1936(sp)
  ADDI t4, sp, 560
  SD t4, 1944(sp)
  LD t4, 1944(sp)
  ADD s10, t4, s8
  LW t4, 0(s10)
  SW t4, 1952(sp)
  LD t4, 1480(sp)
  ADD s10, t4, s8
  FLW ft4, 0(s10)
  FSW ft4, 1956(sp)
  LD t4, 1208(sp)
  ADD s10, t4, s8
  FLW ft4, 0(s10)
  FSW ft4, 1960(sp)
  LD t4, 1256(sp)
  ADD s10, t4, s8
  FLW ft4, 0(s10)
  FSW ft4, 1964(sp)
  LD t4, 1320(sp)
  ADD s10, t4, s8
  FLW ft4, 0(s10)
  FSW ft4, 1968(sp)
  LD t4, 1696(sp)
  ADD s10, t4, s8
  FLW ft4, 0(s10)
  FSW ft4, 1972(sp)
  LD t4, 1176(sp)
  ADD s10, t4, s8
  FLW ft4, 0(s10)
  FSW ft4, 1976(sp)
  ADDI t4, sp, 500
  SD t4, 1984(sp)
  LD t4, 1984(sp)
  ADD s10, t4, s8
  LW t4, 0(s10)
  SW t4, 1992(sp)
  LD t4, 1632(sp)
  ADD s10, t4, s8
  FLW ft4, 0(s10)
  FSW ft4, 1996(sp)
  ADDI t4, sp, 488
  SD t4, 2000(sp)
  LD t4, 2000(sp)
  ADD s10, t4, s8
  LW t4, 0(s10)
  SW t4, 2008(sp)
  LD t4, 1464(sp)
  ADD s10, t4, s8
  FLW ft4, 0(s10)
  FSW ft4, 2012(sp)
  ADD a0, s11, zero
  ADD a1, s9, zero
  ADD a2, s4, zero
  FSGNJ.S fa0, fs1, fs1
  ADD a3, s3, zero
  ADD a4, s0, zero
  ADD a5, s2, zero
  FSGNJ.S fa1, fs2, fs2
  FSGNJ.S fa2, fs3, fs3
  FSGNJ.S fa3, fs4, fs4
  ADD a6, s7, zero
  FSGNJ.S fa4, fs5, fs5
  FSGNJ.S fa5, fs6, fs6
  ADD a7, s6, zero
  FSGNJ.S fa6, fs7, fs7
  ADDI t5, sp, 0
  ADD s0, t5, zero
  SW s5, 0(s0)
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
  FLW ft4, 1684(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 24
  SW s1, 0(s0)
  ADDI s0, sp, 28
  FLW ft4, 1704(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 32
  LW t4, 1720(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 36
  LW t4, 1736(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 40
  FLW ft4, 1740(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 44
  FLW ft4, 1744(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 48
  FLW ft4, 1748(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 52
  FLW ft4, 1752(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 56
  FLW ft4, 1756(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 60
  LW t4, 1768(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 64
  FLW ft4, 1772(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 68
  LW t4, 1784(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 72
  FLW ft4, 1788(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 76
  FLW ft4, 1792(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 80
  FLW ft4, 1796(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 84
  FLW ft4, 1800(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 88
  LW t4, 1816(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 92
  LW t4, 1832(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 96
  FLW ft4, 1836(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 100
  FLW ft4, 1840(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 104
  FLW ft4, 1844(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 108
  LW t4, 1856(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 112
  FLW ft4, 1860(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 116
  LW t4, 1872(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 120
  LW t4, 1888(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 124
  FLW ft4, 1892(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 128
  FLW ft4, 1896(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 132
  FLW ft4, 1900(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 136
  FLW ft4, 1904(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 140
  LW t4, 1920(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 144
  LW t4, 1936(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 148
  LW t4, 1952(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 152
  FLW ft4, 1956(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 156
  FLW ft4, 1960(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 160
  FLW ft4, 1964(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 164
  FLW ft4, 1968(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 168
  FLW ft4, 1972(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 172
  FLW ft4, 1976(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 176
  LW t4, 1992(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 180
  FLW ft4, 1996(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 184
  LW t4, 2008(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 188
  FLW ft4, 2012(sp)
  FSW ft4, 0(s0)
  FLW ft4, 1684(sp)
  FLW ft3, 1704(sp)
  LW t4, 1720(sp)
  LW t3, 1736(sp)
  FLW ft4, 1740(sp)
  FLW ft3, 1744(sp)
  FLW ft4, 1748(sp)
  FLW ft3, 1752(sp)
  FLW ft4, 1756(sp)
  LW t4, 1768(sp)
  FLW ft3, 1772(sp)
  LW t3, 1784(sp)
  FLW ft4, 1788(sp)
  FLW ft3, 1792(sp)
  FLW ft4, 1796(sp)
  FLW ft3, 1800(sp)
  LW t4, 1816(sp)
  LW t3, 1832(sp)
  FLW ft4, 1836(sp)
  FLW ft3, 1840(sp)
  FLW ft4, 1844(sp)
  LW t4, 1856(sp)
  FLW ft3, 1860(sp)
  LW t3, 1872(sp)
  LW t4, 1888(sp)
  FLW ft4, 1892(sp)
  FLW ft3, 1896(sp)
  FLW ft4, 1900(sp)
  FLW ft3, 1904(sp)
  LW t3, 1920(sp)
  LW t4, 1936(sp)
  LW t3, 1952(sp)
  FLW ft4, 1956(sp)
  FLW ft3, 1960(sp)
  FLW ft4, 1964(sp)
  FLW ft3, 1968(sp)
  FLW ft4, 1972(sp)
  FLW ft3, 1976(sp)
  LW t4, 1992(sp)
  FLW ft4, 1996(sp)
  LW t3, 2008(sp)
  FLW ft3, 2012(sp)
  CALL params_f40_i24
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 2020(sp)
  ADDI a0, sp, 608
  ADD a0, a0, zero
  LD t4, 1192(sp)
  ADD a1, t4, zero
  LD t4, 1632(sp)
  ADD a2, t4, zero
  LD t4, 1600(sp)
  ADD a3, t4, zero
  LD t4, 1584(sp)
  ADD a4, t4, zero
  LD t4, 1144(sp)
  ADD a5, t4, zero
  LD t4, 1128(sp)
  ADD a6, t4, zero
  LD t4, 1112(sp)
  ADD a7, t4, zero
  ADDI t5, sp, 0
  ADD s0, t5, zero
  LD t4, 1088(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 8
  LD t4, 1568(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 16
  LD t4, 1560(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 24
  LD t4, 1552(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 32
  LD t4, 1096(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 40
  LD t4, 1528(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 48
  LD t4, 1512(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 56
  LD t4, 1496(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 64
  LD t4, 1160(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 72
  LD t4, 1176(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 80
  LD t4, 1480(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 88
  LD t4, 1208(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 96
  LD t4, 1224(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 104
  LD t4, 1240(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 112
  LD t4, 1256(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 120
  LD t4, 1272(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 128
  LD t4, 1288(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 136
  LD t4, 1304(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 144
  LD t4, 1320(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 152
  LD t4, 1336(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 160
  LD t4, 1352(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 168
  LD t4, 1368(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 176
  LD t4, 1384(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 184
  LD t4, 1400(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 192
  LD t4, 1416(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 200
  LD t4, 1432(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 208
  LD t4, 1448(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 216
  LD t4, 1464(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 224
  LD t4, 1696(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 232
  LD t4, 1672(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 240
  LD t4, 1656(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 248
  LD t4, 1648(sp)
  SD t4, 0(s0)
  LD t4, 1088(sp)
  LD t3, 1568(sp)
  LD t4, 1560(sp)
  LD t3, 1552(sp)
  LD t4, 1096(sp)
  LD t3, 1528(sp)
  LD t4, 1512(sp)
  LD t3, 1496(sp)
  LD t4, 1160(sp)
  LD t3, 1176(sp)
  LD t4, 1480(sp)
  LD t3, 1208(sp)
  LD t4, 1224(sp)
  LD t3, 1240(sp)
  LD t4, 1256(sp)
  LD t3, 1272(sp)
  LD t4, 1288(sp)
  LD t3, 1304(sp)
  LD t4, 1320(sp)
  LD t3, 1336(sp)
  LD t4, 1352(sp)
  LD t3, 1368(sp)
  LD t4, 1384(sp)
  LD t3, 1400(sp)
  LD t4, 1416(sp)
  LD t3, 1432(sp)
  LD t4, 1448(sp)
  LD t3, 1464(sp)
  LD t4, 1696(sp)
  LD t3, 1672(sp)
  LD t4, 1656(sp)
  LD t3, 1648(sp)
  CALL params_fa40
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 2016(sp)
  LA s0, k
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  ADDI t5, sp, 608
  ADD s1, t5, s0
  FLW fs2, 0(s1)
  LD t4, 1592(sp)
  ADD s1, t4, s0
  LW s2, 0(s1)
  LD t4, 1632(sp)
  ADD s1, t4, s0
  FLW fs3, 0(s1)
  LD t4, 1616(sp)
  ADD s1, t4, s0
  LW s3, 0(s1)
  LD t4, 1600(sp)
  ADD s1, t4, s0
  FLW fs4, 0(s1)
  LD t4, 1584(sp)
  ADD s1, t4, s0
  FLW fs5, 0(s1)
  LD t4, 1608(sp)
  ADD s1, t4, s0
  LW s4, 0(s1)
  LD t4, 1624(sp)
  ADD s1, t4, s0
  LW s5, 0(s1)
  LD t4, 1760(sp)
  ADD s1, t4, s0
  LW s6, 0(s1)
  LD t4, 1568(sp)
  ADD s1, t4, s0
  FLW fs6, 0(s1)
  LD t4, 1560(sp)
  ADD s1, t4, s0
  FLW fs7, 0(s1)
  LD t4, 1552(sp)
  ADD s1, t4, s0
  FLW fs8, 0(s1)
  LD t4, 1824(sp)
  ADD s1, t4, s0
  LW s7, 0(s1)
  LD t4, 1528(sp)
  ADD s1, t4, s0
  FLW fs9, 0(s1)
  LD t4, 1512(sp)
  ADD s1, t4, s0
  FLW fs10, 0(s1)
  LD t4, 1496(sp)
  ADD s1, t4, s0
  FLW fs11, 0(s1)
  LD t4, 1480(sp)
  ADD s1, t4, s0
  FLW fs1, 0(s1)
  LD t4, 1208(sp)
  ADD s1, t4, s0
  FLW fs0, 0(s1)
  LD t4, 2000(sp)
  ADD s1, t4, s0
  LW s8, 0(s1)
  LD t4, 1256(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 2024(sp)
  LD t4, 1272(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 2028(sp)
  LD t4, 1776(sp)
  ADD s1, t4, s0
  LW s9, 0(s1)
  LD t4, 1808(sp)
  ADD s1, t4, s0
  LW s10, 0(s1)
  LD t4, 1288(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 2032(sp)
  LD t4, 1304(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 2036(sp)
  LD t4, 1944(sp)
  ADD s1, t4, s0
  LW s11, 0(s1)
  LD t4, 1928(sp)
  ADD s1, t4, s0
  LW t4, 0(s1)
  SW t4, 2040(sp)
  LD t4, 1336(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 2044(sp)
  LD t4, 1352(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, -2048
  ADD t5, t5, sp
  FSW ft4, 0(t5)
  ADDI t5, sp, 320
  ADD s1, t5, s0
  LW t4, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, -2044
  ADD t5, t5, sp
  SW t4, 0(t5)
  LD t4, 1400(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  FSW ft4, 0(t4)
  LD t4, 1416(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  LUI t4, 1
  ADDIW t4, t4, -2036
  ADD t4, t4, sp
  FSW ft4, 0(t4)
  LD t4, 1464(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  FSW ft4, 0(t4)
  LD t4, 1912(sp)
  ADD s1, t4, s0
  LW s0, 0(s1)
  FSGNJ.S fa0, fs2, fs2
  ADDI a0, sp, 320
  ADD a0, a0, zero
  ADD a1, s2, zero
  LD t4, 1192(sp)
  ADD a2, t4, zero
  FSGNJ.S fa1, fs3, fs3
  ADD a3, s3, zero
  FSGNJ.S fa2, fs4, fs4
  FSGNJ.S fa3, fs5, fs5
  LD t4, 1144(sp)
  ADD a4, t4, zero
  LD t4, 1912(sp)
  ADD a5, t4, zero
  ADD a6, s4, zero
  ADD a7, s5, zero
  ADDI t5, sp, 0
  ADD s1, t5, zero
  LD t4, 1128(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 8
  LD t4, 1576(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 16
  LD t4, 1688(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 24
  SW s6, 0(s1)
  ADDI s1, sp, 32
  LD t4, 1112(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 40
  LD t4, 1088(sp)
  SD t4, 0(s1)
  FSGNJ.S fa4, fs6, fs6
  FSGNJ.S fa5, fs7, fs7
  FSGNJ.S fa6, fs8, fs8
  ADDI s1, sp, 48
  LD t4, 1096(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 56
  SW s7, 0(s1)
  FSGNJ.S fa7, fs9, fs9
  ADDI s1, sp, 60
  FSW fs10, 0(s1)
  ADDI s1, sp, 64
  FSW fs11, 0(s1)
  ADDI s1, sp, 72
  LD t4, 1712(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 80
  LD t4, 1160(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 88
  LD t4, 1864(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 96
  LD t4, 1848(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 104
  LD t4, 1176(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 112
  FSW fs1, 0(s1)
  ADDI s1, sp, 116
  FSW fs0, 0(s1)
  ADDI s1, sp, 120
  LD t4, 1728(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 128
  SW s8, 0(s1)
  ADDI s1, sp, 136
  LD t4, 1224(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 144
  LD t4, 1240(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 152
  FLW ft4, 2024(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 156
  FLW ft4, 2028(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 160
  LD t4, 1984(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 168
  LD t4, 1880(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 176
  SW s9, 0(s1)
  ADDI s1, sp, 180
  SW s10, 0(s1)
  ADDI s1, sp, 184
  FLW ft4, 2032(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 188
  FLW ft4, 2036(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 192
  LD t4, 1664(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 200
  SW s11, 0(s1)
  ADDI s1, sp, 208
  LD t4, 1320(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 216
  LW t4, 2040(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 224
  LD t4, 1640(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 232
  LD t4, 1544(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 240
  FLW ft4, 2044(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 244
  LUI t5, 1
  ADDIW t5, t5, -2048
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSW ft4, 0(s1)
  ADDI s1, sp, 248
  LD t4, 1368(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 256
  LUI t4, 1
  ADDIW t4, t4, -2044
  ADD t4, t4, sp
  LW t4, 0(t4)
  SW t4, 0(s1)
  ADDI s1, sp, 264
  LD t4, 1592(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 272
  LD t4, 1384(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 280
  LUI t5, 1
  ADDIW t5, t5, -2040
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSW ft4, 0(s1)
  ADDI s1, sp, 284
  SW s3, 0(s1)
  ADDI s1, sp, 288
  LUI t5, 1
  ADDIW t5, t5, -2036
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSW ft4, 0(s1)
  ADDI s1, sp, 296
  LD t4, 1432(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 304
  LD t4, 1448(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 312
  LUI t5, 1
  ADDIW t5, t5, -2032
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSW ft4, 0(s1)
  ADDI s1, sp, 316
  SW s0, 0(s1)
  LD t4, 1128(sp)
  LD t3, 1576(sp)
  LD t4, 1688(sp)
  LD t3, 1112(sp)
  LD t4, 1088(sp)
  LD t3, 1096(sp)
  LD t4, 1712(sp)
  LD t3, 1160(sp)
  LD t4, 1864(sp)
  LD t3, 1848(sp)
  LD t4, 1176(sp)
  LD t3, 1728(sp)
  LD t4, 1224(sp)
  LD t3, 1240(sp)
  FLW ft4, 2024(sp)
  FLW ft3, 2028(sp)
  LD t4, 1984(sp)
  LD t3, 1880(sp)
  FLW ft4, 2032(sp)
  FLW ft3, 2036(sp)
  LD t4, 1664(sp)
  LD t3, 1320(sp)
  LW t4, 2040(sp)
  LD t3, 1640(sp)
  LD t4, 1544(sp)
  FLW ft4, 2044(sp)
  LUI t5, 1
  ADDIW t5, t5, -2048
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  LD t3, 1368(sp)
  LUI t4, 1
  ADDIW t4, t4, -2044
  ADD t4, t4, sp
  LW t4, 0(t4)
  LD t3, 1592(sp)
  LD t4, 1384(sp)
  LUI t5, 1
  ADDIW t5, t5, -2040
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -2036
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  LD t3, 1432(sp)
  LD t4, 1448(sp)
  LUI t5, 1
  ADDIW t5, t5, -2032
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  CALL params_mix
  ADD s0, a0, zero
  FLW ft4, 1680(sp)
  FLW ft3, 1680(sp)
  FSGNJ.S fa0, ft4, ft3
  CALL putfloat
  ADDI a0, zero, 10
  CALL putch
  FLW ft4, 2020(sp)
  FLW ft3, 2020(sp)
  FSGNJ.S fa0, ft4, ft3
  CALL putfloat
  ADDI a0, zero, 10
  CALL putch
  FLW ft4, 2016(sp)
  FLW ft3, 2016(sp)
  FSGNJ.S fa0, ft4, ft3
  CALL putfloat
  ADDI a0, zero, 10
  CALL putch
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2024
  ADD t5, t5, sp
  FLD fs3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -2016
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -2008
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -2000
  ADD t5, t5, sp
  FLD fs1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1992
  ADD t5, t5, sp
  FLD fs8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1984
  ADD t5, t5, sp
  FLD fs0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1976
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1968
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1960
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1952
  ADD t5, t5, sp
  FLD fs2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1944
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1936
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1928
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  FLD fs4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1912
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1904
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1896
  ADD t5, t5, sp
  FLD fs5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1888
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1880
  ADD t5, t5, sp
  FLD fs6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1872
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1864
  ADD t5, t5, sp
  FLD fs7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1856
  ADD t5, t5, sp
  FLD fs9, 0(t5)
  LUI ra, 1
  ADDIW ra, ra, -1848
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDIW t5, t5, -1840
  ADD t5, t5, sp
  FLD fs10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1832
  ADD t5, t5, sp
  FLD fs11, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, -1824
  ADD sp, sp, t0
  JALR zero, 0(ra)
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
  JAL zero, bb9
bb12:
  ADDI s2, zero, 12
  MULW s3, s1, s2
  ADDI t5, sp, 608
  ADD s2, t5, s3
  ADD a0, s2, zero
  CALL getfarray
  ADD s2, a0, zero
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb7
params_fa40:
  ADDI sp, sp, -736
  FSD fs11, 528(sp)
  SD ra, 536(sp)
  FSD fs10, 544(sp)
  FSD fs8, 552(sp)
  FSD fs7, 560(sp)
  FSD fs6, 568(sp)
  FSD fs1, 576(sp)
  SD s4, 584(sp)
  SD s3, 592(sp)
  SD s2, 600(sp)
  SD s1, 608(sp)
  FSD fs0, 616(sp)
  FSD fs9, 624(sp)
  SD s5, 632(sp)
  SD s0, 640(sp)
  SD s6, 648(sp)
  SD s7, 656(sp)
  FSD fs2, 664(sp)
  SD s8, 672(sp)
  FSD fs3, 680(sp)
  SD s9, 688(sp)
  FSD fs4, 696(sp)
  SD s10, 704(sp)
  FSD fs5, 712(sp)
  SD s11, 720(sp)
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
  LD s11, 0(s8)
  ADDI s8, sp, 760
  LD t4, 0(s8)
  SD t4, 504(sp)
  ADDI s8, sp, 768
  LD t4, 0(s8)
  SD t4, 512(sp)
  ADDI s8, sp, 776
  LD t4, 0(s8)
  SD t4, 520(sp)
  ADDI s8, sp, 784
  LD t4, 0(s8)
  SD t4, 496(sp)
  ADDI s8, sp, 792
  LD t4, 0(s8)
  SD t4, 488(sp)
  ADDI s8, sp, 800
  LD t4, 0(s8)
  SD t4, 296(sp)
  ADDI s8, sp, 808
  LD t4, 0(s8)
  SD t4, 304(sp)
  ADDI s8, sp, 816
  LD t4, 0(s8)
  SD t4, 312(sp)
  ADDI s8, sp, 824
  LD t4, 0(s8)
  SD t4, 320(sp)
  ADDI s8, sp, 832
  LD t4, 0(s8)
  SD t4, 328(sp)
  ADDI s8, sp, 840
  LD t4, 0(s8)
  SD t4, 336(sp)
  ADDI s8, sp, 848
  LD t4, 0(s8)
  SD t4, 344(sp)
  ADDI s8, sp, 856
  LD t4, 0(s8)
  SD t4, 352(sp)
  ADDI s8, sp, 864
  LD t4, 0(s8)
  SD t4, 360(sp)
  ADDI s8, sp, 872
  LD t4, 0(s8)
  SD t4, 368(sp)
  ADDI s8, sp, 880
  LD t4, 0(s8)
  SD t4, 376(sp)
  ADDI s8, sp, 888
  LD t4, 0(s8)
  SD t4, 384(sp)
  ADDI s8, sp, 896
  LD t4, 0(s8)
  SD t4, 392(sp)
  ADDI s8, sp, 904
  LD t4, 0(s8)
  SD t4, 400(sp)
  ADDI s8, sp, 912
  LD t4, 0(s8)
  SD t4, 408(sp)
  ADDI s8, sp, 920
  LD t4, 0(s8)
  SD t4, 416(sp)
  ADDI s8, sp, 928
  LD t4, 0(s8)
  SD t4, 424(sp)
  ADDI s8, sp, 936
  LD t4, 0(s8)
  SD t4, 432(sp)
  ADDI s8, sp, 944
  LD t4, 0(s8)
  SD t4, 440(sp)
  ADDI s8, sp, 952
  LD t4, 0(s8)
  SD t4, 448(sp)
  ADDI s8, sp, 960
  LD t4, 0(s8)
  SD t4, 456(sp)
  ADDI s8, sp, 968
  LD t4, 0(s8)
  SD t4, 464(sp)
  ADDI s8, sp, 976
  LD t4, 0(s8)
  SD t4, 472(sp)
  ADDI s8, sp, 984
  LD t4, 0(s8)
  SD t4, 480(sp)
  LA s8, k
  LW t6, 0(s8)
  SLLIW s8, t6, 2
  ADD t6, s0, s8
  FLW fs0, 0(t6)
  ADD s0, s1, s8
  FLW fs1, 0(s0)
  FADD.S fs2, fs0, fs1
  ADD s0, s2, s8
  FLW fs0, 0(s0)
  FADD.S fs1, fs2, fs0
  ADD s0, s3, s8
  FLW fs0, 0(s0)
  FADD.S fs2, fs1, fs0
  ADD s0, s4, s8
  FLW fs0, 0(s0)
  ADD s0, s5, s8
  FLW fs1, 0(s0)
  FADD.S fs3, fs0, fs1
  ADD s0, s6, s8
  FLW fs0, 0(s0)
  FADD.S fs1, fs3, fs0
  ADD s0, s7, s8
  FLW fs0, 0(s0)
  FADD.S fs3, fs1, fs0
  ADD s0, s9, s8
  FLW fs0, 0(s0)
  ADD s0, s10, s8
  FLW fs1, 0(s0)
  FADD.S fs4, fs0, fs1
  ADD s0, s11, s8
  FLW fs0, 0(s0)
  FADD.S fs1, fs4, fs0
  LD t4, 504(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  FADD.S fs4, fs1, fs0
  LD t4, 512(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  LD t4, 520(sp)
  ADD s0, t4, s8
  FLW fs1, 0(s0)
  FADD.S fs5, fs0, fs1
  LD t4, 496(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  FADD.S fs1, fs5, fs0
  LD t4, 488(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  FADD.S fs5, fs1, fs0
  LD t4, 296(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  LD t4, 304(sp)
  ADD s0, t4, s8
  FLW fs1, 0(s0)
  FADD.S fs6, fs0, fs1
  LD t4, 312(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  FADD.S fs1, fs6, fs0
  LD t4, 320(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  FADD.S fs6, fs1, fs0
  LD t4, 328(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  LD t4, 336(sp)
  ADD s0, t4, s8
  FLW fs1, 0(s0)
  FADD.S fs7, fs0, fs1
  LD t4, 344(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  FADD.S fs1, fs7, fs0
  LD t4, 352(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  FADD.S fs7, fs1, fs0
  LD t4, 360(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  LD t4, 368(sp)
  ADD s0, t4, s8
  FLW fs1, 0(s0)
  FADD.S fs8, fs0, fs1
  LD t4, 376(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  FADD.S fs1, fs8, fs0
  LD t4, 384(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  FADD.S fs8, fs1, fs0
  LD t4, 392(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  LD t4, 400(sp)
  ADD s0, t4, s8
  FLW fs1, 0(s0)
  FADD.S fs9, fs0, fs1
  LD t4, 408(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  FADD.S fs1, fs9, fs0
  LD t4, 416(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  FADD.S fs9, fs1, fs0
  LD t4, 424(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  LD t4, 432(sp)
  ADD s0, t4, s8
  FLW fs1, 0(s0)
  FADD.S fs10, fs0, fs1
  LD t4, 440(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  FADD.S fs1, fs10, fs0
  LD t4, 448(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  FADD.S fs10, fs1, fs0
  LD t4, 456(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  LD t4, 464(sp)
  ADD s0, t4, s8
  FLW fs1, 0(s0)
  FADD.S fs11, fs0, fs1
  LD t4, 472(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  FADD.S fs1, fs11, fs0
  LD t4, 480(sp)
  ADD s0, t4, s8
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
  SLLIW s0, s8, 2
  LD t4, 480(sp)
  ADD s8, t4, s0
  FLW fs0, 0(s8)
  FCVT.S.L fs1, zero
  FEQ.S s0, fs0, fs1
  XORI s8, s0, 1
  XOR s0, s8, zero
  SLTU s8, zero, s0
  FCVT.S.W fs0, s8
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FEQ.S s0, fs0, fs1
  XORI s8, s0, 1
  FCVT.S.W fs0, s8
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FEQ.S s0, fs0, fs1
  XORI s8, s0, 1
  BNE s8, zero, bb15
  # implict jump to bb14
bb14:
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
  SD s11, 0(s0)
  ADDI s0, sp, 16
  LD t4, 504(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 24
  LD t4, 512(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 32
  LD t4, 520(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 40
  LD t4, 496(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 48
  LD t4, 488(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 56
  LD t4, 296(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 64
  LD t4, 304(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 72
  LD t4, 312(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 80
  LD t4, 320(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 88
  LD t4, 328(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 96
  LD t4, 336(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 104
  LD t4, 344(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 112
  LD t4, 352(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 120
  LD t4, 360(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 128
  LD t4, 368(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 136
  LD t4, 376(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 144
  LD t4, 384(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 152
  LD t4, 392(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 160
  LD t4, 400(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 168
  LD t4, 408(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 176
  LD t4, 416(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 184
  LD t4, 424(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 192
  LD t4, 432(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 200
  LD t4, 440(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 208
  LD t4, 448(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 216
  LD t4, 456(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 224
  LD t4, 464(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 232
  LD t4, 472(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 240
  LD t4, 480(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 248
  ADDI t4, sp, 256
  SD t4, 0(s0)
  LD t4, 504(sp)
  LD t3, 512(sp)
  LD t4, 520(sp)
  LD t3, 496(sp)
  LD t4, 488(sp)
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
  ADDI t5, sp, 256
  CALL params_fa40
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  FLD fs11, 528(sp)
  LD ra, 536(sp)
  FLD fs10, 544(sp)
  FLD fs8, 552(sp)
  FLD fs7, 560(sp)
  FLD fs6, 568(sp)
  FLD fs1, 576(sp)
  LD s4, 584(sp)
  LD s3, 592(sp)
  LD s2, 600(sp)
  LD s1, 608(sp)
  FLD fs0, 616(sp)
  FLD fs9, 624(sp)
  LD s5, 632(sp)
  LD s0, 640(sp)
  LD s6, 648(sp)
  LD s7, 656(sp)
  FLD fs2, 664(sp)
  LD s8, 672(sp)
  FLD fs3, 680(sp)
  LD s9, 688(sp)
  FLD fs4, 696(sp)
  LD s10, 704(sp)
  FLD fs5, 712(sp)
  LD s11, 720(sp)
  ADDI sp, sp, 736
  JALR zero, 0(ra)
bb15:
  ADDI a0, zero, 10
  ADDI a1, sp, 256
  ADD a1, a1, zero
  CALL putfarray
  LA s0, k
  LW s8, 0(s0)
  SLLIW s0, s8, 2
  ADDI t5, sp, 256
  ADD s8, t5, s0
  FLW fs0, 0(s8)
  FSGNJ.S fa0, fs0, fs0
  FLD fs11, 528(sp)
  LD ra, 536(sp)
  FLD fs10, 544(sp)
  FLD fs8, 552(sp)
  FLD fs7, 560(sp)
  FLD fs6, 568(sp)
  FLD fs1, 576(sp)
  LD s4, 584(sp)
  LD s3, 592(sp)
  LD s2, 600(sp)
  LD s1, 608(sp)
  FLD fs0, 616(sp)
  FLD fs9, 624(sp)
  LD s5, 632(sp)
  LD s0, 640(sp)
  LD s6, 648(sp)
  LD s7, 656(sp)
  FLD fs2, 664(sp)
  LD s8, 672(sp)
  FLD fs3, 680(sp)
  LD s9, 688(sp)
  FLD fs4, 696(sp)
  LD s10, 704(sp)
  FLD fs5, 712(sp)
  LD s11, 720(sp)
  ADDI sp, sp, 736
  JALR zero, 0(ra)
params_f40:
  ADDI sp, sp, -416
  FSD fs11, 288(sp)
  FSD fs4, 296(sp)
  FSD fs3, 304(sp)
  FSD fs2, 312(sp)
  FSD fs6, 320(sp)
  FSD fs1, 328(sp)
  FSD fs5, 336(sp)
  FSD fs0, 344(sp)
  FSD fs7, 352(sp)
  SD s0, 360(sp)
  FSD fs8, 368(sp)
  FSD fs9, 376(sp)
  SD ra, 384(sp)
  FSD fs10, 392(sp)
  SD s1, 400(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  FSGNJ.D fs2, fa2, fa2
  FSGNJ.D fs3, fa3, fa3
  FSGNJ.D fs4, fa4, fa4
  FSGNJ.D fs5, fa5, fa5
  FSGNJ.D fs6, fa6, fa6
  FSGNJ.D fs7, fa7, fa7
  ADDI t5, sp, 416
  ADD s0, t5, zero
  FLW fs8, 0(s0)
  ADDI s0, sp, 420
  FLW fs9, 0(s0)
  ADDI s0, sp, 424
  FLW fs10, 0(s0)
  ADDI s0, sp, 428
  FLW ft4, 0(s0)
  FSW ft4, 280(sp)
  ADDI s0, sp, 432
  FLW ft4, 0(s0)
  FSW ft4, 276(sp)
  ADDI s0, sp, 436
  FLW ft4, 0(s0)
  FSW ft4, 272(sp)
  ADDI s0, sp, 440
  FLW ft4, 0(s0)
  FSW ft4, 268(sp)
  ADDI s0, sp, 444
  FLW ft4, 0(s0)
  FSW ft4, 264(sp)
  ADDI s0, sp, 448
  FLW ft4, 0(s0)
  FSW ft4, 260(sp)
  ADDI s0, sp, 452
  FLW ft4, 0(s0)
  FSW ft4, 256(sp)
  ADDI s0, sp, 456
  FLW ft4, 0(s0)
  FSW ft4, 252(sp)
  ADDI s0, sp, 460
  FLW ft4, 0(s0)
  FSW ft4, 248(sp)
  ADDI s0, sp, 464
  FLW ft4, 0(s0)
  FSW ft4, 244(sp)
  ADDI s0, sp, 468
  FLW ft4, 0(s0)
  FSW ft4, 240(sp)
  ADDI s0, sp, 472
  FLW ft4, 0(s0)
  FSW ft4, 168(sp)
  ADDI s0, sp, 476
  FLW ft4, 0(s0)
  FSW ft4, 172(sp)
  ADDI s0, sp, 480
  FLW ft4, 0(s0)
  FSW ft4, 176(sp)
  ADDI s0, sp, 484
  FLW ft4, 0(s0)
  FSW ft4, 180(sp)
  ADDI s0, sp, 488
  FLW ft4, 0(s0)
  FSW ft4, 184(sp)
  ADDI s0, sp, 492
  FLW ft4, 0(s0)
  FSW ft4, 188(sp)
  ADDI s0, sp, 496
  FLW ft4, 0(s0)
  FSW ft4, 192(sp)
  ADDI s0, sp, 500
  FLW ft4, 0(s0)
  FSW ft4, 196(sp)
  ADDI s0, sp, 504
  FLW ft4, 0(s0)
  FSW ft4, 200(sp)
  ADDI s0, sp, 508
  FLW ft4, 0(s0)
  FSW ft4, 204(sp)
  ADDI s0, sp, 512
  FLW ft4, 0(s0)
  FSW ft4, 208(sp)
  ADDI s0, sp, 516
  FLW ft4, 0(s0)
  FSW ft4, 212(sp)
  ADDI s0, sp, 520
  FLW ft4, 0(s0)
  FSW ft4, 216(sp)
  ADDI s0, sp, 524
  FLW ft4, 0(s0)
  FSW ft4, 220(sp)
  ADDI s0, sp, 528
  FLW ft4, 0(s0)
  FSW ft4, 224(sp)
  ADDI s0, sp, 532
  FLW ft4, 0(s0)
  FSW ft4, 228(sp)
  ADDI s0, sp, 536
  FLW ft4, 0(s0)
  FSW ft4, 232(sp)
  ADDI s0, sp, 540
  FLW ft4, 0(s0)
  FSW ft4, 236(sp)
  FCVT.S.L ft11, zero
  FLW ft4, 236(sp)
  FEQ.S s0, ft4, ft11
  XORI s1, s0, 1
  BNE s1, zero, bb18
  # implict jump to bb17
bb17:
  FADD.S fs11, fs0, fs1
  FADD.S fs0, fs11, fs2
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
  FSW fs9, 0(s0)
  ADDI s0, sp, 4
  FSW fs10, 0(s0)
  ADDI s0, sp, 8
  FLW ft4, 280(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 12
  FLW ft4, 276(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 16
  FLW ft4, 272(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 20
  FLW ft4, 268(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 24
  FLW ft4, 264(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 28
  FLW ft4, 260(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 32
  FLW ft4, 256(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 36
  FLW ft4, 252(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 40
  FLW ft4, 248(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 44
  FLW ft4, 244(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 48
  FLW ft4, 240(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 52
  FLW ft4, 168(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 56
  FLW ft4, 172(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 60
  FLW ft4, 176(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 64
  FLW ft4, 180(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 68
  FLW ft4, 184(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 72
  FLW ft4, 188(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 76
  FLW ft4, 192(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 80
  FLW ft4, 196(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 84
  FLW ft4, 200(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 88
  FLW ft4, 204(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 92
  FLW ft4, 208(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 96
  FLW ft4, 212(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 100
  FLW ft4, 216(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 104
  FLW ft4, 220(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 108
  FLW ft4, 224(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 112
  FLW ft4, 228(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 116
  FLW ft4, 232(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 120
  FLW ft4, 236(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 124
  FSW fs0, 0(s0)
  FLW ft4, 280(sp)
  FLW ft3, 276(sp)
  FLW ft4, 272(sp)
  FLW ft3, 268(sp)
  FLW ft4, 264(sp)
  FLW ft3, 260(sp)
  FLW ft4, 256(sp)
  FLW ft3, 252(sp)
  FLW ft4, 248(sp)
  FLW ft3, 244(sp)
  FLW ft4, 240(sp)
  FLW ft3, 168(sp)
  FLW ft4, 172(sp)
  FLW ft3, 176(sp)
  FLW ft4, 180(sp)
  FLW ft3, 184(sp)
  FLW ft4, 188(sp)
  FLW ft3, 192(sp)
  FLW ft4, 196(sp)
  FLW ft3, 200(sp)
  FLW ft4, 204(sp)
  FLW ft3, 208(sp)
  FLW ft4, 212(sp)
  FLW ft3, 216(sp)
  FLW ft4, 220(sp)
  FLW ft3, 224(sp)
  FLW ft4, 228(sp)
  FLW ft3, 232(sp)
  FLW ft4, 236(sp)
  CALL params_f40
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  FLD fs11, 288(sp)
  FLD fs4, 296(sp)
  FLD fs3, 304(sp)
  FLD fs2, 312(sp)
  FLD fs6, 320(sp)
  FLD fs1, 328(sp)
  FLD fs5, 336(sp)
  FLD fs0, 344(sp)
  FLD fs7, 352(sp)
  LD s0, 360(sp)
  FLD fs8, 368(sp)
  FLD fs9, 376(sp)
  LD ra, 384(sp)
  FLD fs10, 392(sp)
  LD s1, 400(sp)
  ADDI sp, sp, 416
  JALR zero, 0(ra)
bb18:
  FADD.S ft11, fs0, fs1
  FADD.S ft10, ft11, fs2
  FADD.S ft11, ft10, fs3
  FADD.S ft10, fs4, fs5
  FADD.S ft9, ft10, fs6
  FADD.S ft10, ft9, fs7
  FADD.S ft9, fs8, fs9
  FADD.S ft8, ft9, fs10
  FLW ft4, 280(sp)
  FADD.S ft9, ft8, ft4
  FLW ft4, 276(sp)
  FLW ft3, 272(sp)
  FADD.S ft8, ft4, ft3
  FLW ft4, 268(sp)
  FADD.S ft7, ft8, ft4
  FLW ft4, 264(sp)
  FADD.S ft8, ft7, ft4
  FLW ft4, 260(sp)
  FLW ft3, 256(sp)
  FADD.S ft7, ft4, ft3
  FLW ft4, 252(sp)
  FADD.S ft6, ft7, ft4
  FLW ft4, 248(sp)
  FADD.S ft7, ft6, ft4
  FLW ft4, 244(sp)
  FLW ft3, 240(sp)
  FADD.S ft6, ft4, ft3
  FLW ft4, 168(sp)
  FADD.S ft5, ft6, ft4
  FLW ft4, 172(sp)
  FADD.S ft6, ft5, ft4
  FLW ft4, 176(sp)
  FLW ft3, 180(sp)
  FADD.S ft5, ft4, ft3
  FLW ft4, 184(sp)
  FADD.S ft2, ft5, ft4
  FLW ft4, 188(sp)
  FADD.S ft5, ft2, ft4
  FLW ft4, 192(sp)
  FLW ft3, 196(sp)
  FADD.S ft2, ft4, ft3
  FLW ft4, 200(sp)
  FADD.S ft1, ft2, ft4
  FLW ft4, 204(sp)
  FADD.S ft2, ft1, ft4
  FLW ft4, 208(sp)
  FLW ft3, 212(sp)
  FADD.S ft1, ft4, ft3
  FLW ft4, 216(sp)
  FADD.S ft0, ft1, ft4
  FLW ft4, 220(sp)
  FADD.S ft1, ft0, ft4
  FLW ft4, 224(sp)
  FLW ft3, 228(sp)
  FADD.S ft0, ft4, ft3
  FLW ft4, 232(sp)
  FADD.S fs11, ft0, ft4
  FLW ft4, 236(sp)
  FADD.S ft0, fs11, ft4
  FSW ft11, 128(sp)
  ADDI s0, sp, 132
  FSW ft10, 0(s0)
  ADDI s0, sp, 136
  FSW ft9, 0(s0)
  ADDI s0, sp, 140
  FSW ft8, 0(s0)
  ADDI s0, sp, 144
  FSW ft7, 0(s0)
  ADDI s0, sp, 148
  FSW ft6, 0(s0)
  ADDI s0, sp, 152
  FSW ft5, 0(s0)
  ADDI s0, sp, 156
  FSW ft2, 0(s0)
  ADDI s0, sp, 160
  FSW ft1, 0(s0)
  ADDI s0, sp, 164
  FSW ft0, 0(s0)
  ADDI a0, zero, 10
  ADDI a1, sp, 128
  ADD a1, a1, zero
  CALL putfarray
  LA s0, k
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  ADDI t5, sp, 128
  ADD s1, t5, s0
  FLW fs11, 0(s1)
  FSGNJ.S fa0, fs11, fs11
  FLD fs11, 288(sp)
  FLD fs4, 296(sp)
  FLD fs3, 304(sp)
  FLD fs2, 312(sp)
  FLD fs6, 320(sp)
  FLD fs1, 328(sp)
  FLD fs5, 336(sp)
  FLD fs0, 344(sp)
  FLD fs7, 352(sp)
  LD s0, 360(sp)
  FLD fs8, 368(sp)
  FLD fs9, 376(sp)
  LD ra, 384(sp)
  FLD fs10, 392(sp)
  LD s1, 400(sp)
  ADDI sp, sp, 416
  JALR zero, 0(ra)
params_mix:
  ADDI sp, sp, -928
  SD s6, 728(sp)
  SD s7, 736(sp)
  SD s9, 744(sp)
  SD s10, 752(sp)
  SD s11, 760(sp)
  SD ra, 768(sp)
  FSD fs10, 776(sp)
  FSD fs11, 784(sp)
  FSD fs8, 792(sp)
  FSD fs7, 800(sp)
  FSD fs6, 808(sp)
  SD s3, 816(sp)
  FSD fs1, 824(sp)
  SD s1, 832(sp)
  FSD fs0, 840(sp)
  FSD fs9, 848(sp)
  SD s0, 856(sp)
  SD s2, 864(sp)
  FSD fs2, 872(sp)
  FSD fs3, 880(sp)
  SD s8, 888(sp)
  SD s4, 896(sp)
  SD s5, 904(sp)
  FSD fs4, 912(sp)
  FSD fs5, 920(sp)
  FSGNJ.D fs0, fa0, fa0
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  FSGNJ.D fs1, fa1, fa1
  ADD s3, a3, zero
  FSGNJ.D fs2, fa2, fa2
  FSGNJ.D fs3, fa3, fa3
  ADD s4, a4, zero
  ADD s5, a5, zero
  ADD t4, a6, zero
  SW t4, 708(sp)
  ADD t4, a7, zero
  SW t4, 704(sp)
  ADDI t5, sp, 928
  ADD s8, t5, zero
  LD t4, 0(s8)
  SD t4, 696(sp)
  ADDI s8, sp, 936
  LD t4, 0(s8)
  SD t4, 688(sp)
  ADDI s8, sp, 944
  LD t4, 0(s8)
  SD t4, 680(sp)
  ADDI s8, sp, 952
  LW t4, 0(s8)
  SW t4, 672(sp)
  ADDI s8, sp, 960
  LD t4, 0(s8)
  SD t4, 664(sp)
  ADDI s8, sp, 968
  LD t4, 0(s8)
  SD t4, 656(sp)
  FSGNJ.D fs4, fa4, fa4
  FSGNJ.D fs5, fa5, fa5
  FSGNJ.D fs6, fa6, fa6
  ADDI s8, sp, 976
  LD t4, 0(s8)
  SD t4, 608(sp)
  ADDI s8, sp, 984
  LW t4, 0(s8)
  SW t4, 600(sp)
  FSGNJ.D fs7, fa7, fa7
  ADDI s8, sp, 988
  FLW fs8, 0(s8)
  ADDI s8, sp, 992
  FLW ft4, 0(s8)
  FSW ft4, 720(sp)
  ADDI s8, sp, 1000
  LD t4, 0(s8)
  SD t4, 400(sp)
  ADDI s8, sp, 1008
  LD t4, 0(s8)
  SD t4, 408(sp)
  ADDI s8, sp, 1016
  LD t4, 0(s8)
  SD t4, 416(sp)
  ADDI s8, sp, 1024
  LD t4, 0(s8)
  SD t4, 424(sp)
  ADDI s8, sp, 1032
  LD t4, 0(s8)
  SD t4, 432(sp)
  ADDI s8, sp, 1040
  FLW ft4, 0(s8)
  FSW ft4, 652(sp)
  ADDI s8, sp, 1044
  FLW ft4, 0(s8)
  FSW ft4, 648(sp)
  ADDI s8, sp, 1048
  LD t4, 0(s8)
  SD t4, 440(sp)
  ADDI s8, sp, 1056
  LW t4, 0(s8)
  SW t4, 448(sp)
  ADDI s8, sp, 1064
  LD t4, 0(s8)
  SD t4, 456(sp)
  ADDI s8, sp, 1072
  LD t4, 0(s8)
  SD t4, 464(sp)
  ADDI s8, sp, 1080
  FLW ft4, 0(s8)
  FSW ft4, 644(sp)
  ADDI s8, sp, 1084
  FLW ft4, 0(s8)
  FSW ft4, 640(sp)
  ADDI s8, sp, 1088
  LD t4, 0(s8)
  SD t4, 472(sp)
  ADDI s8, sp, 1096
  LD t4, 0(s8)
  SD t4, 480(sp)
  ADDI s8, sp, 1104
  LW t4, 0(s8)
  SW t4, 488(sp)
  ADDI s8, sp, 1108
  LW t4, 0(s8)
  SW t4, 492(sp)
  ADDI s8, sp, 1112
  FLW ft4, 0(s8)
  FSW ft4, 636(sp)
  ADDI s8, sp, 1116
  FLW ft4, 0(s8)
  FSW ft4, 632(sp)
  ADDI s8, sp, 1120
  LD t4, 0(s8)
  SD t4, 496(sp)
  ADDI s8, sp, 1128
  LW t4, 0(s8)
  SW t4, 504(sp)
  ADDI s8, sp, 1136
  LD t4, 0(s8)
  SD t4, 512(sp)
  ADDI s8, sp, 1144
  LW t4, 0(s8)
  SW t4, 520(sp)
  ADDI s8, sp, 1152
  LD t4, 0(s8)
  SD t4, 528(sp)
  ADDI s8, sp, 1160
  LD t4, 0(s8)
  SD t4, 536(sp)
  ADDI s8, sp, 1168
  FLW ft4, 0(s8)
  FSW ft4, 628(sp)
  ADDI s8, sp, 1172
  FLW ft4, 0(s8)
  FSW ft4, 624(sp)
  ADDI s8, sp, 1176
  LD t4, 0(s8)
  SD t4, 544(sp)
  ADDI s8, sp, 1184
  LW t4, 0(s8)
  SW t4, 552(sp)
  ADDI s8, sp, 1192
  LD t4, 0(s8)
  SD t4, 560(sp)
  ADDI s8, sp, 1200
  LD t4, 0(s8)
  SD t4, 568(sp)
  ADDI s8, sp, 1208
  FLW ft4, 0(s8)
  FSW ft4, 620(sp)
  ADDI s8, sp, 1212
  LW t4, 0(s8)
  SW t4, 576(sp)
  ADDI s8, sp, 1216
  FLW ft4, 0(s8)
  FSW ft4, 616(sp)
  ADDI s8, sp, 1224
  LD t4, 0(s8)
  SD t4, 584(sp)
  ADDI s8, sp, 1232
  LD t4, 0(s8)
  SD t4, 592(sp)
  ADDI s8, sp, 1240
  FLW ft4, 0(s8)
  FSW ft4, 712(sp)
  ADDI s8, sp, 1244
  LW t4, 0(s8)
  SW t4, 716(sp)
  LA s8, k
  LW t2, 0(s8)
  SLLIW s8, t2, 2
  ADD t2, s2, s8
  FLW ft11, 0(t2)
  FADD.S ft9, fs0, ft11
  FADD.S ft11, ft9, fs1
  FADD.S ft9, ft11, fs2
  ADD s2, s4, s8
  FLW ft11, 0(s2)
  FADD.S ft8, fs3, ft11
  LD t4, 696(sp)
  ADD s2, t4, s8
  FLW ft11, 0(s2)
  FADD.S ft7, ft8, ft11
  LD t4, 664(sp)
  ADD s2, t4, s8
  FLW ft8, 0(s2)
  FADD.S ft11, ft7, ft8
  LD t4, 656(sp)
  ADD s2, t4, s8
  FLW ft7, 0(s2)
  FADD.S ft8, ft7, fs4
  FADD.S ft7, ft8, fs5
  FADD.S ft8, ft7, fs6
  LD t4, 608(sp)
  ADD s2, t4, s8
  FLW ft7, 0(s2)
  FADD.S ft6, ft7, fs7
  FADD.S ft7, ft6, fs8
  FLW ft4, 720(sp)
  FADD.S ft6, ft7, ft4
  LD t4, 408(sp)
  ADD s2, t4, s8
  FLW ft7, 0(s2)
  LD t4, 432(sp)
  ADD s2, t4, s8
  FLW ft5, 0(s2)
  FADD.S ft2, ft7, ft5
  FLW ft4, 652(sp)
  FADD.S ft5, ft2, ft4
  FLW ft4, 648(sp)
  FADD.S ft2, ft5, ft4
  LD t4, 456(sp)
  ADD s2, t4, s8
  FLW ft5, 0(s2)
  LD t4, 464(sp)
  ADD s2, t4, s8
  FLW ft7, 0(s2)
  FADD.S ft1, ft5, ft7
  FLW ft4, 644(sp)
  FADD.S ft5, ft1, ft4
  FLW ft4, 640(sp)
  FADD.S ft1, ft5, ft4
  FLW ft4, 636(sp)
  FLW ft3, 632(sp)
  FADD.S ft5, ft4, ft3
  LD t4, 512(sp)
  ADD s2, t4, s8
  FLW ft7, 0(s2)
  FADD.S ft0, ft5, ft7
  FLW ft4, 628(sp)
  FADD.S ft5, ft0, ft4
  LD t4, 544(sp)
  ADD s2, t4, s8
  FLW ft0, 0(s2)
  FLW ft4, 624(sp)
  FADD.S ft7, ft4, ft0
  LD t4, 568(sp)
  ADD s2, t4, s8
  FLW ft0, 0(s2)
  FADD.S fs11, ft7, ft0
  FLW ft4, 620(sp)
  FADD.S ft0, fs11, ft4
  LD t4, 584(sp)
  ADD s2, t4, s8
  FLW fs11, 0(s2)
  FLW ft4, 616(sp)
  FADD.S ft7, ft4, fs11
  LD t4, 592(sp)
  ADD s2, t4, s8
  FLW fs11, 0(s2)
  FADD.S fs10, ft7, fs11
  FLW ft4, 712(sp)
  FADD.S fs11, fs10, ft4
  FSW ft9, 360(sp)
  ADDI s2, sp, 364
  FSW ft11, 0(s2)
  ADDI s2, sp, 368
  FSW ft8, 0(s2)
  ADDI s2, sp, 372
  FSW ft6, 0(s2)
  ADDI s2, sp, 376
  FSW ft2, 0(s2)
  ADDI s2, sp, 380
  FSW ft1, 0(s2)
  ADDI s2, sp, 384
  FSW ft5, 0(s2)
  ADDI s2, sp, 388
  FSW ft0, 0(s2)
  ADDI s2, sp, 392
  FSW fs11, 0(s2)
  ADDI s8, sp, 396
  LA t2, .CONSTANT.7.0
  FLW fs10, 0(t2)
  FSW fs10, 0(s8)
  LA s8, k
  LW t2, 0(s8)
  SLLIW s8, t2, 2
  ADD t2, s0, s8
  LW s0, 0(t2)
  ADDW t2, s0, s1
  ADDW s0, t2, s3
  ADD t2, s5, s8
  LW t1, 0(t2)
  LW t4, 708(sp)
  ADDW t2, t1, t4
  LW t4, 704(sp)
  ADDW t1, t2, t4
  LD t4, 688(sp)
  ADD t2, t4, s8
  LW t0, 0(t2)
  LD t4, 680(sp)
  ADD t2, t4, s8
  LW ra, 0(t2)
  ADDW t2, t0, ra
  LW t4, 672(sp)
  ADDW ra, t2, t4
  LD t4, 400(sp)
  ADD t0, t4, s8
  LW t2, 0(t0)
  LW t4, 600(sp)
  ADDW t0, t4, t2
  LD t4, 416(sp)
  ADD t2, t4, s8
  LW s11, 0(t2)
  ADDW t2, t0, s11
  LD t4, 424(sp)
  ADD s11, t4, s8
  LW t0, 0(s11)
  LD t4, 440(sp)
  ADD s11, t4, s8
  LW s10, 0(s11)
  ADDW s11, t0, s10
  LW t4, 448(sp)
  ADDW s10, s11, t4
  LD t4, 472(sp)
  ADD s11, t4, s8
  LW t0, 0(s11)
  LD t4, 480(sp)
  ADD s11, t4, s8
  LW s9, 0(s11)
  ADDW s11, t0, s9
  LW t4, 488(sp)
  ADDW s9, s11, t4
  LD t4, 496(sp)
  ADD s11, t4, s8
  LW t0, 0(s11)
  LW t4, 492(sp)
  ADDW s11, t4, t0
  LW t4, 504(sp)
  ADDW t0, s11, t4
  LD t4, 528(sp)
  ADD s11, t4, s8
  LW s7, 0(s11)
  LW t4, 520(sp)
  ADDW s11, t4, s7
  LD t4, 536(sp)
  ADD s7, t4, s8
  LW s6, 0(s7)
  ADDW s7, s11, s6
  LD t4, 560(sp)
  ADD s6, t4, s8
  LW s8, 0(s6)
  LW t4, 552(sp)
  ADDW s6, t4, s8
  LW t4, 576(sp)
  ADDW s8, s6, t4
  LW t4, 716(sp)
  ADDW s6, s8, t4
  SW s0, 320(sp)
  ADDI s0, sp, 324
  SW t1, 0(s0)
  ADDI s0, sp, 328
  SW ra, 0(s0)
  ADDI s0, sp, 332
  SW t2, 0(s0)
  ADDI s0, sp, 336
  SW s10, 0(s0)
  ADDI s0, sp, 340
  SW s9, 0(s0)
  ADDI s0, sp, 344
  SW t0, 0(s0)
  ADDI s0, sp, 348
  SW s7, 0(s0)
  ADDI s0, sp, 352
  SW s6, 0(s0)
  ADDI s0, sp, 356
  SW zero, 0(s0)
  LW t4, 716(sp)
  XOR s0, t4, zero
  SLTU s6, zero, s0
  BNE s6, zero, bb21
  # implict jump to bb20
bb20:
  LW t4, 716(sp)
  FCVT.S.W fs9, t4
  FLW ft4, 712(sp)
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
  ADD a5, s5, zero
  LW t4, 708(sp)
  ADD a6, t4, zero
  LW t4, 704(sp)
  ADD a7, t4, zero
  ADDI t5, sp, 0
  ADD s1, t5, zero
  LD t4, 696(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 8
  LD t4, 688(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 16
  LD t4, 680(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 24
  LW t4, 672(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 32
  LD t4, 664(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 40
  LD t4, 656(sp)
  SD t4, 0(s1)
  FSGNJ.S fa4, fs4, fs4
  FSGNJ.S fa5, fs5, fs5
  FSGNJ.S fa6, fs6, fs6
  ADDI s1, sp, 48
  LD t4, 608(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 56
  LW t4, 600(sp)
  SW t4, 0(s1)
  FSGNJ.S fa7, fs7, fs7
  ADDI s1, sp, 60
  FSW fs8, 0(s1)
  ADDI s1, sp, 64
  FLW ft4, 720(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 72
  LD t4, 400(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 80
  LD t4, 408(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 88
  LD t4, 416(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 96
  LD t4, 424(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 104
  LD t4, 432(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 112
  FLW ft4, 652(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 116
  FLW ft4, 648(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 120
  LD t4, 440(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 128
  LW t4, 448(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 136
  LD t4, 456(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 144
  LD t4, 464(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 152
  FLW ft4, 644(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 156
  FLW ft4, 640(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 160
  LD t4, 472(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 168
  LD t4, 480(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 176
  LW t4, 488(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 180
  LW t4, 492(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 184
  FLW ft4, 636(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 188
  FLW ft4, 632(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 192
  LD t4, 496(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 200
  LW t4, 504(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 208
  LD t4, 512(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 216
  LW t4, 520(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 224
  LD t4, 528(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 232
  LD t4, 536(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 240
  FLW ft4, 628(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 244
  FLW ft4, 624(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 248
  LD t4, 544(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 256
  LW t4, 552(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 264
  LD t4, 560(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 272
  LD t4, 568(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 280
  FLW ft4, 620(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 284
  LW t4, 576(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 288
  FLW ft4, 616(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 296
  LD t4, 584(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 304
  LD t4, 592(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 312
  FSW fs9, 0(s1)
  ADDI s1, sp, 316
  SW s0, 0(s1)
  LD t4, 696(sp)
  LD t3, 688(sp)
  LD t4, 680(sp)
  LW t3, 672(sp)
  LD t4, 664(sp)
  LD t3, 656(sp)
  LD t4, 608(sp)
  LW t3, 600(sp)
  FLW ft4, 720(sp)
  LD t4, 400(sp)
  LD t3, 408(sp)
  LD t4, 416(sp)
  LD t3, 424(sp)
  LD t4, 432(sp)
  FLW ft3, 652(sp)
  FLW ft4, 648(sp)
  LD t3, 440(sp)
  LW t4, 448(sp)
  LD t3, 456(sp)
  LD t4, 464(sp)
  FLW ft3, 644(sp)
  FLW ft4, 640(sp)
  LD t3, 472(sp)
  LD t4, 480(sp)
  LW t3, 488(sp)
  LW t4, 492(sp)
  FLW ft3, 636(sp)
  FLW ft4, 632(sp)
  LD t3, 496(sp)
  LW t4, 504(sp)
  LD t3, 512(sp)
  LW t4, 520(sp)
  LD t3, 528(sp)
  LD t4, 536(sp)
  FLW ft3, 628(sp)
  FLW ft4, 624(sp)
  LD t3, 544(sp)
  LW t4, 552(sp)
  LD t3, 560(sp)
  LD t4, 568(sp)
  FLW ft3, 620(sp)
  LW t3, 576(sp)
  FLW ft4, 616(sp)
  LD t4, 584(sp)
  LD t3, 592(sp)
  CALL params_mix
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD s6, 728(sp)
  LD s7, 736(sp)
  LD s9, 744(sp)
  LD s10, 752(sp)
  LD s11, 760(sp)
  LD ra, 768(sp)
  FLD fs10, 776(sp)
  FLD fs11, 784(sp)
  FLD fs8, 792(sp)
  FLD fs7, 800(sp)
  FLD fs6, 808(sp)
  LD s3, 816(sp)
  FLD fs1, 824(sp)
  LD s1, 832(sp)
  FLD fs0, 840(sp)
  FLD fs9, 848(sp)
  LD s0, 856(sp)
  LD s2, 864(sp)
  FLD fs2, 872(sp)
  FLD fs3, 880(sp)
  LD s8, 888(sp)
  LD s4, 896(sp)
  LD s5, 904(sp)
  FLD fs4, 912(sp)
  FLD fs5, 920(sp)
  ADDI sp, sp, 928
  JALR zero, 0(ra)
bb21:
  ADDI a0, zero, 10
  ADDI a1, sp, 360
  ADD a1, a1, zero
  CALL putfarray
  ADDI a0, zero, 10
  ADDI a1, sp, 320
  ADD a1, a1, zero
  CALL putarray
  ADD s0, zero, zero
  # implict jump to bb22
bb22:
  ADD s6, s0, zero
  SLTI s7, s6, 10
  BNE s7, zero, bb24
  # implict jump to bb23
bb23:
  LA s0, k
  LW s6, 0(s0)
  SLLIW s0, s6, 2
  ADDI t5, sp, 320
  ADD s6, t5, s0
  LW s0, 0(s6)
  FLW fs9, 0(s2)
  FCVT.S.W fs10, s0
  FMUL.S fs11, fs10, fs9
  FCVT.W.S s0, fs11, rtz
  ADD a0, s0, zero
  LD s6, 728(sp)
  LD s7, 736(sp)
  LD s9, 744(sp)
  LD s10, 752(sp)
  LD s11, 760(sp)
  LD ra, 768(sp)
  FLD fs10, 776(sp)
  FLD fs11, 784(sp)
  FLD fs8, 792(sp)
  FLD fs7, 800(sp)
  FLD fs6, 808(sp)
  LD s3, 816(sp)
  FLD fs1, 824(sp)
  LD s1, 832(sp)
  FLD fs0, 840(sp)
  FLD fs9, 848(sp)
  LD s0, 856(sp)
  LD s2, 864(sp)
  FLD fs2, 872(sp)
  FLD fs3, 880(sp)
  LD s8, 888(sp)
  LD s4, 896(sp)
  LD s5, 904(sp)
  FLD fs4, 912(sp)
  FLD fs5, 920(sp)
  ADDI sp, sp, 928
  JALR zero, 0(ra)
bb24:
  SLLIW s7, s6, 2
  ADDI t5, sp, 320
  ADD s8, t5, s7
  LW s9, 0(s8)
  ADDI t5, sp, 360
  ADD s10, t5, s7
  FLW fs10, 0(s10)
  FCVT.S.W fs11, s9
  FSUB.S fs9, fs11, fs10
  FCVT.W.S s7, fs9, rtz
  SW s7, 0(s8)
  ADDIW s7, s6, 1
  ADD s0, s7, zero
  JAL zero, bb22
