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
  ADDI sp, sp, -640
  SD ra, 360(sp)
  SD s0, 368(sp)
  SD s1, 376(sp)
  SD s2, 384(sp)
  SD s3, 392(sp)
  SD s4, 400(sp)
  SD s5, 408(sp)
  SD s6, 416(sp)
  SD s7, 424(sp)
  SD s8, 432(sp)
  SD s9, 440(sp)
  SD s10, 448(sp)
  SD s11, 456(sp)
  FSD fs0, 464(sp)
  FSD fs2, 472(sp)
  FSD fs3, 480(sp)
  FSD fs1, 488(sp)
  FSD fs4, 496(sp)
  FSD fs5, 504(sp)
  FSD fs6, 512(sp)
  FSD fs7, 520(sp)
  FSD fs8, 528(sp)
  FSD fs9, 536(sp)
  FSD fs10, 544(sp)
  FSD fs11, 552(sp)
  ADD t4, a0, zero
  SW t4, 312(sp)
  ADD s1, a1, zero
  ADD s2, a2, zero
  FSGNJ.D fs0, fa0, fa0
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  FSGNJ.D fs1, fa1, fa1
  FSGNJ.D fs2, fa2, fa2
  FSGNJ.D fs3, fa3, fa3
  ADD t4, a6, zero
  SW t4, 320(sp)
  FSGNJ.D fs4, fa4, fa4
  FSGNJ.D ft4, fa5, fa5
  FSW ft4, 336(sp)
  ADD s7, a7, zero
  FSGNJ.D ft4, fa6, fa6
  FSW ft4, 300(sp)
  ADDI t5, sp, 640
  ADD s8, t5, zero
  LW t4, 0(s8)
  SW t4, 344(sp)
  FSGNJ.D ft4, fa7, fa7
  FSW ft4, 332(sp)
  ADDI s8, sp, 644
  FLW fs8, 0(s8)
  ADDI s8, sp, 648
  FLW fs9, 0(s8)
  ADDI s8, sp, 652
  FLW fs10, 0(s8)
  ADDI s8, sp, 656
  FLW ft4, 0(s8)
  FSW ft4, 296(sp)
  ADDI s8, sp, 660
  FLW ft4, 0(s8)
  FSW ft4, 264(sp)
  ADDI s8, sp, 664
  LW s10, 0(s8)
  ADDI s8, sp, 668
  FLW ft4, 0(s8)
  FSW ft4, 316(sp)
  ADDI s8, sp, 672
  LW s11, 0(s8)
  ADDI s8, sp, 676
  LW t4, 0(s8)
  SW t4, 192(sp)
  ADDI s8, sp, 680
  FLW ft4, 0(s8)
  FSW ft4, 256(sp)
  ADDI s8, sp, 684
  FLW ft4, 0(s8)
  FSW ft4, 308(sp)
  ADDI s8, sp, 688
  FLW ft4, 0(s8)
  FSW ft4, 204(sp)
  ADDI s8, sp, 692
  FLW ft4, 0(s8)
  FSW ft4, 228(sp)
  ADDI s8, sp, 696
  FLW ft4, 0(s8)
  FSW ft4, 240(sp)
  ADDI s8, sp, 700
  LW t4, 0(s8)
  SW t4, 248(sp)
  ADDI s8, sp, 704
  FLW ft4, 0(s8)
  FSW ft4, 292(sp)
  ADDI s8, sp, 708
  LW t4, 0(s8)
  SW t4, 208(sp)
  ADDI s8, sp, 712
  FLW ft4, 0(s8)
  FSW ft4, 280(sp)
  ADDI s8, sp, 716
  FLW ft4, 0(s8)
  FSW ft4, 236(sp)
  ADDI s8, sp, 720
  FLW ft4, 0(s8)
  FSW ft4, 276(sp)
  ADDI s8, sp, 724
  FLW ft4, 0(s8)
  FSW ft4, 304(sp)
  ADDI s8, sp, 728
  LW t4, 0(s8)
  SW t4, 324(sp)
  ADDI s8, sp, 732
  LW t4, 0(s8)
  SW t4, 252(sp)
  ADDI s8, sp, 736
  FLW fs6, 0(s8)
  ADDI s8, sp, 740
  FLW fs11, 0(s8)
  ADDI s8, sp, 744
  FLW ft4, 0(s8)
  FSW ft4, 268(sp)
  ADDI s8, sp, 748
  LW s0, 0(s8)
  ADDI s8, sp, 752
  FLW ft4, 0(s8)
  FSW ft4, 328(sp)
  ADDI s8, sp, 756
  LW s6, 0(s8)
  ADDI s8, sp, 760
  LW t4, 0(s8)
  SW t4, 224(sp)
  ADDI s8, sp, 764
  FLW ft4, 0(s8)
  FSW ft4, 356(sp)
  ADDI s8, sp, 768
  FLW ft4, 0(s8)
  FSW ft4, 288(sp)
  ADDI s8, sp, 772
  FLW fs5, 0(s8)
  ADDI s8, sp, 776
  FLW ft4, 0(s8)
  FSW ft4, 340(sp)
  ADDI s8, sp, 780
  LW s9, 0(s8)
  ADDI s8, sp, 784
  LW t4, 0(s8)
  SW t4, 348(sp)
  ADDI s8, sp, 788
  LW t4, 0(s8)
  SW t4, 352(sp)
  ADDI s8, sp, 792
  FLW ft4, 0(s8)
  FSW ft4, 244(sp)
  ADDI s8, sp, 796
  FLW ft4, 0(s8)
  FSW ft4, 284(sp)
  ADDI s8, sp, 800
  FLW ft4, 0(s8)
  FSW ft4, 212(sp)
  ADDI s8, sp, 804
  FLW ft4, 0(s8)
  FSW ft4, 196(sp)
  ADDI s8, sp, 808
  FLW ft4, 0(s8)
  FSW ft4, 200(sp)
  ADDI s8, sp, 812
  FLW ft4, 0(s8)
  FSW ft4, 260(sp)
  ADDI s8, sp, 816
  LW t4, 0(s8)
  SW t4, 216(sp)
  ADDI s8, sp, 820
  FLW ft4, 0(s8)
  FSW ft4, 272(sp)
  ADDI s8, sp, 824
  LW t4, 0(s8)
  SW t4, 232(sp)
  ADDI s8, sp, 828
  FLW ft4, 0(s8)
  FSW ft4, 220(sp)
  LW t4, 312(sp)
  XOR s8, t4, zero
  SLTU t2, zero, s8
  BNE t2, zero, bb2
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
  LW t4, 320(sp)
  ADD a6, t4, zero
  FSGNJ.S fa4, fs4, fs4
  FLW ft4, 336(sp)
  FLW ft3, 336(sp)
  FSGNJ.S fa5, ft4, ft3
  ADD a7, s7, zero
  FLW ft4, 300(sp)
  FLW ft3, 300(sp)
  FSGNJ.S fa6, ft4, ft3
  ADDI t5, sp, 0
  ADD s8, t5, zero
  LW t4, 344(sp)
  SW t4, 0(s8)
  FLW ft4, 332(sp)
  FLW ft3, 332(sp)
  FSGNJ.S fa7, ft4, ft3
  ADDI s8, sp, 4
  FSW fs8, 0(s8)
  ADDI s8, sp, 8
  FSW fs9, 0(s8)
  ADDI s8, sp, 12
  FSW fs10, 0(s8)
  ADDI s8, sp, 16
  FLW ft4, 296(sp)
  FSW ft4, 0(s8)
  ADDI s8, sp, 20
  FLW ft4, 264(sp)
  FSW ft4, 0(s8)
  ADDI s8, sp, 24
  SW s10, 0(s8)
  ADDI s8, sp, 28
  FLW ft4, 316(sp)
  FSW ft4, 0(s8)
  ADDI s8, sp, 32
  SW s11, 0(s8)
  ADDI s8, sp, 36
  LW t4, 192(sp)
  SW t4, 0(s8)
  ADDI s8, sp, 40
  FLW ft4, 256(sp)
  FSW ft4, 0(s8)
  ADDI s8, sp, 44
  FLW ft4, 308(sp)
  FSW ft4, 0(s8)
  ADDI s8, sp, 48
  FLW ft4, 204(sp)
  FSW ft4, 0(s8)
  ADDI s8, sp, 52
  FLW ft4, 228(sp)
  FSW ft4, 0(s8)
  ADDI s8, sp, 56
  FLW ft4, 240(sp)
  FSW ft4, 0(s8)
  ADDI s8, sp, 60
  LW t4, 248(sp)
  SW t4, 0(s8)
  ADDI s8, sp, 64
  FLW ft4, 292(sp)
  FSW ft4, 0(s8)
  ADDI s8, sp, 68
  LW t4, 208(sp)
  SW t4, 0(s8)
  ADDI s8, sp, 72
  FLW ft4, 280(sp)
  FSW ft4, 0(s8)
  ADDI s8, sp, 76
  FLW ft4, 236(sp)
  FSW ft4, 0(s8)
  ADDI s8, sp, 80
  FLW ft4, 276(sp)
  FSW ft4, 0(s8)
  ADDI s8, sp, 84
  FLW ft4, 304(sp)
  FSW ft4, 0(s8)
  ADDI s8, sp, 88
  LW t4, 324(sp)
  SW t4, 0(s8)
  ADDI s8, sp, 92
  LW t4, 252(sp)
  SW t4, 0(s8)
  ADDI s8, sp, 96
  FSW fs6, 0(s8)
  ADDI s8, sp, 100
  FSW fs11, 0(s8)
  ADDI s8, sp, 104
  FLW ft4, 268(sp)
  FSW ft4, 0(s8)
  ADDI s8, sp, 108
  SW s0, 0(s8)
  ADDI s8, sp, 112
  FLW ft4, 328(sp)
  FSW ft4, 0(s8)
  ADDI s8, sp, 116
  SW s6, 0(s8)
  ADDI s8, sp, 120
  LW t4, 224(sp)
  SW t4, 0(s8)
  ADDI s8, sp, 124
  FLW ft4, 356(sp)
  FSW ft4, 0(s8)
  ADDI s8, sp, 128
  FLW ft4, 288(sp)
  FSW ft4, 0(s8)
  ADDI s8, sp, 132
  FSW fs5, 0(s8)
  ADDI s8, sp, 136
  FLW ft4, 340(sp)
  FSW ft4, 0(s8)
  ADDI s8, sp, 140
  SW s9, 0(s8)
  ADDI s8, sp, 144
  LW t4, 348(sp)
  SW t4, 0(s8)
  ADDI s8, sp, 148
  LW t4, 352(sp)
  SW t4, 0(s8)
  ADDI s8, sp, 152
  FLW ft4, 244(sp)
  FSW ft4, 0(s8)
  ADDI s8, sp, 156
  FLW ft4, 284(sp)
  FSW ft4, 0(s8)
  ADDI s8, sp, 160
  FLW ft4, 212(sp)
  FSW ft4, 0(s8)
  ADDI s8, sp, 164
  FLW ft4, 196(sp)
  FSW ft4, 0(s8)
  ADDI s8, sp, 168
  FLW ft4, 200(sp)
  FSW ft4, 0(s8)
  ADDI s8, sp, 172
  FLW ft4, 260(sp)
  FSW ft4, 0(s8)
  ADDI s8, sp, 176
  LW t4, 216(sp)
  SW t4, 0(s8)
  ADDI s8, sp, 180
  FLW ft4, 272(sp)
  FSW ft4, 0(s8)
  ADDI s8, sp, 184
  LW t4, 232(sp)
  SW t4, 0(s8)
  ADDI s8, sp, 188
  FLW ft4, 220(sp)
  FSW ft4, 0(s8)
  LW t4, 344(sp)
  FLW ft4, 296(sp)
  FLW ft3, 264(sp)
  FLW ft4, 316(sp)
  LW t3, 192(sp)
  FLW ft3, 256(sp)
  FLW ft4, 308(sp)
  FLW ft3, 204(sp)
  FLW ft4, 228(sp)
  FLW ft3, 240(sp)
  LW t4, 248(sp)
  FLW ft4, 292(sp)
  LW t3, 208(sp)
  FLW ft3, 280(sp)
  FLW ft4, 236(sp)
  FLW ft3, 276(sp)
  FLW ft4, 304(sp)
  LW t4, 324(sp)
  LW t3, 252(sp)
  FLW ft3, 268(sp)
  FLW ft4, 328(sp)
  LW t4, 224(sp)
  FLW ft3, 356(sp)
  FLW ft4, 288(sp)
  FLW ft3, 340(sp)
  LW t3, 348(sp)
  LW t4, 352(sp)
  FLW ft4, 244(sp)
  FLW ft3, 284(sp)
  FLW ft4, 212(sp)
  FLW ft3, 196(sp)
  FLW ft4, 200(sp)
  FLW ft3, 260(sp)
  LW t3, 216(sp)
  FLW ft4, 272(sp)
  LW t4, 232(sp)
  FLW ft3, 220(sp)
  CALL params_f40_i24
  FSGNJ.D fs7, fa0, fa0
  FSGNJ.S fa0, fs7, fs7
  LD ra, 360(sp)
  LD s0, 368(sp)
  LD s1, 376(sp)
  LD s2, 384(sp)
  LD s3, 392(sp)
  LD s4, 400(sp)
  LD s5, 408(sp)
  LD s6, 416(sp)
  LD s7, 424(sp)
  LD s8, 432(sp)
  LD s9, 440(sp)
  LD s10, 448(sp)
  LD s11, 456(sp)
  FLD fs0, 464(sp)
  FLD fs2, 472(sp)
  FLD fs3, 480(sp)
  FLD fs1, 488(sp)
  FLD fs4, 496(sp)
  FLD fs5, 504(sp)
  FLD fs6, 512(sp)
  FLD fs7, 520(sp)
  FLD fs8, 528(sp)
  FLD fs9, 536(sp)
  FLD fs10, 544(sp)
  FLD fs11, 552(sp)
  ADDI sp, sp, 640
  JALR zero, 0(ra)
bb2:
  FLW ft4, 268(sp)
  FADD.S fs7, ft4, fs9
  FLW ft4, 272(sp)
  FADD.S fs9, fs7, ft4
  FADD.S fs7, fs9, fs4
  FLW ft4, 276(sp)
  FADD.S fs4, fs0, ft4
  FLW ft4, 264(sp)
  FADD.S fs0, fs4, ft4
  FADD.S fs4, fs0, fs3
  FLW ft4, 228(sp)
  FADD.S fs0, fs1, ft4
  FADD.S fs1, fs0, fs11
  FADD.S fs0, fs1, fs10
  FADD.S fs1, fs8, fs5
  FADD.S fs3, fs1, fs6
  FADD.S fs1, fs3, fs2
  FLW ft4, 236(sp)
  FLW ft3, 260(sp)
  FADD.S fs2, ft4, ft3
  FLW ft4, 244(sp)
  FADD.S fs3, fs2, ft4
  FLW ft4, 284(sp)
  FADD.S fs2, fs3, ft4
  FLW ft4, 256(sp)
  FLW ft3, 280(sp)
  FADD.S fs3, ft4, ft3
  FLW ft4, 212(sp)
  FADD.S fs5, fs3, ft4
  FLW ft4, 204(sp)
  FADD.S fs3, fs5, ft4
  FLW ft4, 288(sp)
  FLW ft3, 240(sp)
  FADD.S fs5, ft4, ft3
  FLW ft4, 196(sp)
  FADD.S fs6, fs5, ft4
  FLW ft4, 356(sp)
  FADD.S fs5, fs6, ft4
  FLW ft4, 336(sp)
  FLW ft3, 340(sp)
  FADD.S fs6, ft4, ft3
  FLW ft4, 332(sp)
  FADD.S fs8, fs6, ft4
  FLW ft4, 328(sp)
  FADD.S fs6, fs8, ft4
  FLW ft4, 316(sp)
  FLW ft3, 308(sp)
  FADD.S fs8, ft4, ft3
  FLW ft4, 304(sp)
  FADD.S fs9, fs8, ft4
  FLW ft4, 220(sp)
  FADD.S fs8, fs9, ft4
  FLW ft4, 200(sp)
  FLW ft3, 300(sp)
  FADD.S fs9, ft4, ft3
  FLW ft4, 296(sp)
  FADD.S fs10, fs9, ft4
  FLW ft4, 292(sp)
  FADD.S fs9, fs10, ft4
  FSW fs7, 560(sp)
  ADDI s8, sp, 564
  FSW fs4, 0(s8)
  ADDI s8, sp, 568
  FSW fs0, 0(s8)
  ADDI s8, sp, 572
  FSW fs1, 0(s8)
  ADDI s8, sp, 576
  FSW fs2, 0(s8)
  ADDI s8, sp, 580
  FSW fs3, 0(s8)
  ADDI s8, sp, 584
  FSW fs5, 0(s8)
  ADDI s8, sp, 588
  FSW fs6, 0(s8)
  ADDI s8, sp, 592
  FSW fs8, 0(s8)
  ADDI s8, sp, 596
  FSW fs9, 0(s8)
  ADDW s8, s7, s3
  ADDW s3, s8, s1
  ADDW s1, s9, s4
  ADDW s4, s1, s5
  ADDW s1, s2, s10
  LW t4, 248(sp)
  ADDW s2, s1, t4
  LW t4, 252(sp)
  ADDW s1, t4, s11
  ADDW s5, s1, s6
  LW t4, 192(sp)
  ADDW s1, s0, t4
  LW t4, 232(sp)
  ADDW s0, s1, t4
  LW t4, 216(sp)
  LW t3, 224(sp)
  ADDW s1, t4, t3
  LW t4, 208(sp)
  ADDW s6, s1, t4
  LW t4, 324(sp)
  LW t3, 344(sp)
  ADDW s1, t4, t3
  LW t4, 352(sp)
  ADDW s7, s1, t4
  LW t4, 348(sp)
  LW t3, 320(sp)
  ADDW s1, t4, t3
  LW t4, 312(sp)
  ADDW s8, s1, t4
  SW s3, 600(sp)
  ADDI s1, sp, 604
  SW s4, 0(s1)
  ADDI s1, sp, 608
  SW s2, 0(s1)
  ADDI s1, sp, 612
  SW s5, 0(s1)
  ADDI s1, sp, 616
  SW s0, 0(s1)
  ADDI s0, sp, 620
  SW s6, 0(s0)
  ADDI s0, sp, 624
  SW s7, 0(s0)
  ADDI s0, sp, 628
  SW s8, 0(s0)
  ADDI a0, zero, 10
  ADDI a1, sp, 560
  ADD a1, a1, zero
  CALL putfarray
  ADDI a0, zero, 8
  ADDI a1, sp, 600
  ADD a1, a1, zero
  CALL putarray
  ADD s0, zero, zero
  # implict jump to bb3
bb3:
  ADD s1, s0, zero
  SLTI s2, s1, 8
  BNE s2, zero, bb5
  # implict jump to bb4
bb4:
  LA s2, k
  LW s3, 0(s2)
  SLLIW s2, s3, 2
  ADDI t5, sp, 600
  ADD s3, t5, s2
  LW s2, 0(s3)
  FCVT.S.W fs0, s2
  FSGNJ.S fa0, fs0, fs0
  LD ra, 360(sp)
  LD s0, 368(sp)
  LD s1, 376(sp)
  LD s2, 384(sp)
  LD s3, 392(sp)
  LD s4, 400(sp)
  LD s5, 408(sp)
  LD s6, 416(sp)
  LD s7, 424(sp)
  LD s8, 432(sp)
  LD s9, 440(sp)
  LD s10, 448(sp)
  LD s11, 456(sp)
  FLD fs0, 464(sp)
  FLD fs2, 472(sp)
  FLD fs3, 480(sp)
  FLD fs1, 488(sp)
  FLD fs4, 496(sp)
  FLD fs5, 504(sp)
  FLD fs6, 512(sp)
  FLD fs7, 520(sp)
  FLD fs8, 528(sp)
  FLD fs9, 536(sp)
  FLD fs10, 544(sp)
  FLD fs11, 552(sp)
  ADDI sp, sp, 640
  JALR zero, 0(ra)
bb5:
  SLLIW s2, s1, 2
  ADDI t5, sp, 600
  ADD s3, t5, s2
  LW s4, 0(s3)
  ADDI t5, sp, 560
  ADD s5, t5, s2
  FLW fs0, 0(s5)
  FCVT.S.W fs1, s4
  FSUB.S fs2, fs1, fs0
  FCVT.W.S s2, fs2, rtz
  SW s2, 0(s3)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb3
main:
  LUI t0, 1048575
  ADDIW t0, t0, 1952
  ADD sp, sp, t0
  FSD fs4, 672(sp)
  SD ra, 680(sp)
  SD s0, 688(sp)
  SD s3, 696(sp)
  SD s5, 704(sp)
  SD s8, 712(sp)
  SD s9, 720(sp)
  SD s10, 728(sp)
  SD s11, 736(sp)
  FSD fs3, 744(sp)
  FSD fs5, 752(sp)
  FSD fs10, 760(sp)
  FSD fs0, 776(sp)
  FSD fs6, 784(sp)
  FSD fs7, 792(sp)
  FSD fs9, 800(sp)
  SD s1, 824(sp)
  SD s4, 832(sp)
  SD s6, 840(sp)
  SD s2, 864(sp)
  SD s7, 872(sp)
  FSD fs8, 888(sp)
  FSD fs1, 904(sp)
  FSD fs2, 912(sp)
  FSD fs11, 920(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, k
  SW s0, 0(s1)
  ADD t4, zero, zero
  SW t4, 612(sp)
  # implict jump to bb7
bb7:
  LW t3, 612(sp)
  ADD t4, t3, zero
  SW t4, 608(sp)
  LW t4, 608(sp)
  SLTI s2, t4, 40
  BNE s2, zero, bb12
  # implict jump to bb8
bb8:
  ADD t4, zero, zero
  SW t4, 604(sp)
  # implict jump to bb9
bb9:
  LW t3, 604(sp)
  ADD t4, t3, zero
  SW t4, 600(sp)
  LW t4, 600(sp)
  SLTI s4, t4, 24
  BNE s4, zero, bb11
  # implict jump to bb10
bb10:
  LA s4, k
  LW s5, 0(s4)
  SLLIW s4, s5, 2
  ADDI t5, sp, 1368
  ADD s5, t5, s4
  FLW fs0, 0(s5)
  ADDI t4, sp, 1380
  SD t4, 992(sp)
  LD t4, 992(sp)
  ADD s6, t4, s4
  FLW fs1, 0(s6)
  ADDI t4, sp, 1392
  SD t4, 1896(sp)
  LD t4, 1896(sp)
  ADD s7, t4, s4
  FLW fs2, 0(s7)
  ADDI t4, sp, 1404
  SD t4, 1864(sp)
  LD t4, 1864(sp)
  ADD s8, t4, s4
  FLW fs3, 0(s8)
  ADDI t4, sp, 1416
  LUI t5, 1
  ADDIW t5, t5, -1968
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1968
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s9, t4, s4
  FLW fs4, 0(s9)
  ADDI t4, sp, 1428
  SD t4, 968(sp)
  LD t4, 968(sp)
  ADD s10, t4, s4
  FLW fs5, 0(s10)
  ADDI t4, sp, 1440
  SD t4, 960(sp)
  LD t4, 960(sp)
  ADD s11, t4, s4
  FLW fs6, 0(s11)
  ADDI t4, sp, 1452
  SD t4, 952(sp)
  LD t4, 952(sp)
  ADD s0, t4, s4
  FLW fs7, 0(s0)
  ADDI t4, sp, 1464
  SD t4, 1008(sp)
  LD t4, 1008(sp)
  ADD s1, t4, s4
  FLW fs8, 0(s1)
  ADDI t4, sp, 1476
  LUI t5, 1
  ADDIW t5, t5, -1984
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s2, t4, s4
  FLW fs9, 0(s2)
  ADDI t4, sp, 1488
  LUI t5, 1
  ADDIW t5, t5, -1992
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1992
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s3, t4, s4
  FLW fs10, 0(s3)
  ADDI t4, sp, 1500
  LUI t5, 1
  ADDIW t5, t5, -2000
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -2000
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s0, t4, s4
  FLW fs11, 0(s0)
  ADDI t4, sp, 1512
  SD t4, 944(sp)
  LD t4, 944(sp)
  ADD s0, t4, s4
  FLW ft4, 0(s0)
  FSW ft4, 596(sp)
  ADDI t4, sp, 1524
  LUI t5, 1
  ADDIW t5, t5, -2016
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -2016
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s11, t4, s4
  FLW ft4, 0(s11)
  FSW ft4, 592(sp)
  ADDI t4, sp, 1536
  SD t4, 2000(sp)
  LD t4, 2000(sp)
  ADD s10, t4, s4
  FLW ft4, 0(s10)
  FSW ft4, 588(sp)
  ADDI t4, sp, 1548
  LUI t5, 1
  ADDIW t5, t5, -2032
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s9, t4, s4
  FLW ft4, 0(s9)
  FSW ft4, 548(sp)
  ADDI t4, sp, 1560
  SD t4, 976(sp)
  LD t4, 976(sp)
  ADD s9, t4, s4
  FLW ft4, 0(s9)
  FSW ft4, 580(sp)
  ADDI t4, sp, 1572
  SD t4, 984(sp)
  LD t4, 984(sp)
  ADD s9, t4, s4
  FLW ft4, 0(s9)
  FSW ft4, 576(sp)
  ADDI t4, sp, 1584
  LUI t5, 1
  ADDIW t5, t5, -2040
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 572(sp)
  ADDI t4, sp, 1596
  SD t4, 1000(sp)
  LD t4, 1000(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 564(sp)
  ADDI t4, sp, 1608
  SD t4, 936(sp)
  LD t4, 936(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 556(sp)
  ADDI t4, sp, 1620
  SD t4, 1016(sp)
  LD t4, 1016(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 632(sp)
  ADDI t4, sp, 1632
  SD t4, 1024(sp)
  LD t4, 1024(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 656(sp)
  ADDI t4, sp, 1644
  SD t4, 1032(sp)
  LD t4, 1032(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 664(sp)
  ADDI t4, sp, 1656
  SD t4, 1040(sp)
  LD t4, 1040(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 648(sp)
  ADDI t4, sp, 1668
  SD t4, 1048(sp)
  LD t4, 1048(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 644(sp)
  ADDI t4, sp, 1680
  SD t4, 1056(sp)
  LD t4, 1056(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 636(sp)
  ADDI t4, sp, 1692
  SD t4, 1064(sp)
  LD t4, 1064(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 624(sp)
  ADDI t4, sp, 1704
  SD t4, 1072(sp)
  LD t4, 1072(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 620(sp)
  ADDI t4, sp, 1716
  SD t4, 1848(sp)
  LD t4, 1848(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 428(sp)
  ADDI t4, sp, 1728
  SD t4, 2008(sp)
  LD t4, 2008(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 420(sp)
  ADDI t4, sp, 1740
  SD t4, 2016(sp)
  LD t4, 2016(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 416(sp)
  ADDI t4, sp, 1752
  SD t4, 2024(sp)
  LD t4, 2024(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 408(sp)
  ADDI t4, sp, 1764
  SD t4, 2032(sp)
  LD t4, 2032(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 400(sp)
  ADDI t4, sp, 1776
  SD t4, 2040(sp)
  LD t4, 2040(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 396(sp)
  ADDI t4, sp, 1788
  LUI t5, 1
  ADDIW t5, t5, -2048
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 388(sp)
  ADDI t4, sp, 1800
  SD t4, 1952(sp)
  LD t4, 1952(sp)
  ADD s9, t4, s4
  FLW ft4, 0(s9)
  FSW ft4, 320(sp)
  ADDI t4, sp, 1812
  SD t4, 1936(sp)
  LD t4, 1936(sp)
  ADD s10, t4, s4
  FLW ft4, 0(s10)
  FSW ft4, 376(sp)
  ADDI t4, sp, 1824
  SD t4, 1920(sp)
  LD t4, 1920(sp)
  ADD s11, t4, s4
  FLW ft4, 0(s11)
  FSW ft4, 368(sp)
  ADDI t4, sp, 1836
  SD t4, 1912(sp)
  LD t4, 1912(sp)
  ADD s0, t4, s4
  FLW ft4, 0(s0)
  FSW ft4, 360(sp)
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
  FLW ft4, 596(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 20
  FLW ft4, 592(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 24
  FLW ft4, 588(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 28
  FLW ft4, 548(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 32
  FLW ft4, 580(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 36
  FLW ft4, 576(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 40
  FLW ft4, 572(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 44
  FLW ft4, 564(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 48
  FLW ft4, 556(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 52
  FLW ft4, 632(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 56
  FLW ft4, 656(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 60
  FLW ft4, 664(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 64
  FLW ft4, 648(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 68
  FLW ft4, 644(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 72
  FLW ft4, 636(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 76
  FLW ft4, 624(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 80
  FLW ft4, 620(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 84
  FLW ft4, 428(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 88
  FLW ft4, 420(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 92
  FLW ft4, 416(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 96
  FLW ft4, 408(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 100
  FLW ft4, 400(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 104
  FLW ft4, 396(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 108
  FLW ft4, 388(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 112
  FLW ft4, 320(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 116
  FLW ft4, 376(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 120
  FLW ft4, 368(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 124
  FLW ft4, 360(sp)
  FSW ft4, 0(s0)
  FLW ft4, 596(sp)
  FLW ft3, 592(sp)
  FLW ft4, 588(sp)
  FLW ft3, 548(sp)
  FLW ft4, 580(sp)
  FLW ft3, 576(sp)
  FLW ft4, 572(sp)
  FLW ft3, 564(sp)
  FLW ft4, 556(sp)
  FLW ft3, 632(sp)
  FLW ft4, 656(sp)
  FLW ft3, 664(sp)
  FLW ft4, 648(sp)
  FLW ft3, 644(sp)
  FLW ft4, 636(sp)
  FLW ft3, 624(sp)
  FLW ft4, 620(sp)
  FLW ft3, 428(sp)
  FLW ft4, 420(sp)
  FLW ft3, 416(sp)
  FLW ft4, 408(sp)
  FLW ft3, 400(sp)
  FLW ft4, 396(sp)
  FLW ft3, 388(sp)
  FLW ft4, 320(sp)
  FLW ft3, 376(sp)
  FLW ft4, 368(sp)
  FLW ft3, 360(sp)
  CALL params_f40
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 532(sp)
  ADDI t4, sp, 1356
  LUI t5, 1
  ADDIW t5, t5, -2008
  ADD t5, t5, sp
  SD t4, 0(t5)
  LA s4, k
  LW s0, 0(s4)
  SLLIW s4, s0, 2
  LUI t4, 1
  ADDIW t4, t4, -2008
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s0, t4, s4
  LW s3, 0(s0)
  ADDI t4, sp, 1104
  SD t4, 1880(sp)
  LD t4, 1880(sp)
  ADD s2, t4, s4
  LW s1, 0(s2)
  ADDI t4, sp, 1152
  LUI t5, 1
  ADDIW t5, t5, -1976
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1976
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s2, t4, s4
  LW s8, 0(s2)
  LUI t4, 1
  ADDIW t4, t4, -1968
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s2, t4, s4
  FLW fs1, 0(s2)
  ADDI t4, sp, 1092
  SD t4, 1928(sp)
  LD t4, 1928(sp)
  ADD s2, t4, s4
  LW s7, 0(s2)
  ADDI t4, sp, 1128
  SD t4, 1872(sp)
  LD t4, 1872(sp)
  ADD s2, t4, s4
  LW s0, 0(s2)
  ADDI t4, sp, 1140
  SD t4, 1888(sp)
  LD t4, 1888(sp)
  ADD s2, t4, s4
  LW s6, 0(s2)
  LD t4, 1008(sp)
  ADD s2, t4, s4
  FLW fs2, 0(s2)
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s2, t4, s4
  FLW fs3, 0(s2)
  LD t4, 952(sp)
  ADD s2, t4, s4
  FLW fs4, 0(s2)
  ADDI t4, sp, 1344
  SD t4, 1904(sp)
  LD t4, 1904(sp)
  ADD s2, t4, s4
  LW s11, 0(s2)
  LD t4, 1864(sp)
  ADD s2, t4, s4
  FLW fs5, 0(s2)
  LD t4, 1072(sp)
  ADD s2, t4, s4
  FLW fs6, 0(s2)
  ADDI t5, sp, 1080
  ADD s2, t5, s4
  LW s10, 0(s2)
  LD t4, 1936(sp)
  ADD s2, t4, s4
  FLW fs7, 0(s2)
  ADDI t4, sp, 1308
  SD t4, 1856(sp)
  LD t4, 1856(sp)
  ADD s2, t4, s4
  LW s9, 0(s2)
  LD t4, 2008(sp)
  ADD s2, t4, s4
  FLW fs8, 0(s2)
  LD t4, 944(sp)
  ADD s2, t4, s4
  FLW fs9, 0(s2)
  LD t4, 992(sp)
  ADD s2, t4, s4
  FLW fs10, 0(s2)
  LUI t4, 1
  ADDIW t4, t4, -2000
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s2, t4, s4
  FLW fs11, 0(s2)
  LD t4, 1920(sp)
  ADD s2, t4, s4
  FLW fs0, 0(s2)
  LD t4, 960(sp)
  ADD s2, t4, s4
  FLW ft4, 0(s2)
  FSW ft4, 528(sp)
  ADDI t4, sp, 1164
  SD t4, 1944(sp)
  LD t4, 1944(sp)
  ADD s2, t4, s4
  LW s5, 0(s2)
  LD t4, 2024(sp)
  ADD s2, t4, s4
  FLW ft4, 0(s2)
  FSW ft4, 520(sp)
  ADDI t4, sp, 1200
  SD t4, 1960(sp)
  LD t4, 1960(sp)
  ADD s2, t4, s4
  LW t4, 0(s2)
  SW t4, 512(sp)
  ADDI t4, sp, 1236
  SD t4, 1968(sp)
  LD t4, 1968(sp)
  ADD s2, t4, s4
  LW t4, 0(s2)
  SW t4, 508(sp)
  LD t4, 936(sp)
  ADD s2, t4, s4
  FLW ft4, 0(s2)
  FSW ft4, 504(sp)
  LD t4, 2032(sp)
  ADD s2, t4, s4
  FLW ft4, 0(s2)
  FSW ft4, 500(sp)
  LD t4, 1032(sp)
  ADD s2, t4, s4
  FLW ft4, 0(s2)
  FSW ft4, 496(sp)
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s2, t4, s4
  FLW ft4, 0(s2)
  FSW ft4, 436(sp)
  LD t4, 1048(sp)
  ADD s2, t4, s4
  FLW ft4, 0(s2)
  FSW ft4, 488(sp)
  ADDI t4, sp, 1176
  SD t4, 1976(sp)
  LD t4, 1976(sp)
  ADD s2, t4, s4
  LW t4, 0(s2)
  SW t4, 480(sp)
  LD t4, 1912(sp)
  ADD s2, t4, s4
  FLW ft4, 0(s2)
  FSW ft4, 476(sp)
  ADDI t4, sp, 1284
  SD t4, 1984(sp)
  LD t4, 1984(sp)
  ADD s2, t4, s4
  LW t4, 0(s2)
  SW t4, 468(sp)
  LD t4, 1016(sp)
  ADD s2, t4, s4
  FLW ft4, 0(s2)
  FSW ft4, 464(sp)
  LD t4, 976(sp)
  ADD s2, t4, s4
  FLW ft4, 0(s2)
  FSW ft4, 460(sp)
  LD t4, 968(sp)
  ADD s2, t4, s4
  FLW ft4, 0(s2)
  FSW ft4, 456(sp)
  LD t4, 2040(sp)
  ADD s2, t4, s4
  FLW ft4, 0(s2)
  FSW ft4, 452(sp)
  ADDI t4, sp, 1296
  SD t4, 1992(sp)
  LD t4, 1992(sp)
  ADD s2, t4, s4
  LW t4, 0(s2)
  SW t4, 444(sp)
  ADDI t4, sp, 1188
  LUI t5, 1
  ADDIW t5, t5, -2024
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -2024
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s2, t4, s4
  LW t4, 0(s2)
  SW t4, 440(sp)
  LD t4, 2000(sp)
  ADD s2, t4, s4
  FLW ft4, 0(s2)
  FSW ft4, 448(sp)
  LUI t4, 1
  ADDIW t4, t4, -1992
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s2, t4, s4
  FLW ft4, 0(s2)
  FSW ft4, 472(sp)
  ADDI t5, sp, 1368
  ADD s2, t5, s4
  FLW ft4, 0(s2)
  FSW ft4, 484(sp)
  ADDI t4, sp, 1224
  SD t4, 928(sp)
  LD t4, 928(sp)
  ADD s2, t4, s4
  LW t4, 0(s2)
  SW t4, 516(sp)
  LD t4, 2016(sp)
  ADD s2, t4, s4
  FLW ft4, 0(s2)
  FSW ft4, 524(sp)
  ADDI t4, sp, 1212
  SD t4, 768(sp)
  LD t4, 768(sp)
  ADD s2, t4, s4
  LW t4, 0(s2)
  SW t4, 536(sp)
  ADDI t4, sp, 1272
  SD t4, 896(sp)
  LD t4, 896(sp)
  ADD s2, t4, s4
  LW t4, 0(s2)
  SW t4, 540(sp)
  LD t4, 1064(sp)
  ADD s2, t4, s4
  FLW ft4, 0(s2)
  FSW ft4, 544(sp)
  LD t4, 1040(sp)
  ADD s2, t4, s4
  FLW ft4, 0(s2)
  FSW ft4, 380(sp)
  LUI t4, 1
  ADDIW t4, t4, -2016
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s2, t4, s4
  FLW ft4, 0(s2)
  FSW ft4, 324(sp)
  LD t4, 1848(sp)
  ADD s2, t4, s4
  FLW ft4, 0(s2)
  FSW ft4, 328(sp)
  ADDI t4, sp, 1116
  SD t4, 880(sp)
  LD t4, 880(sp)
  ADD s2, t4, s4
  LW t4, 0(s2)
  SW t4, 332(sp)
  ADDI t4, sp, 1332
  SD t4, 856(sp)
  LD t4, 856(sp)
  ADD s2, t4, s4
  LW t4, 0(s2)
  SW t4, 336(sp)
  ADDI t4, sp, 1320
  SD t4, 848(sp)
  LD t4, 848(sp)
  ADD s2, t4, s4
  LW t4, 0(s2)
  SW t4, 340(sp)
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s2, t4, s4
  FLW ft4, 0(s2)
  FSW ft4, 344(sp)
  LD t4, 1000(sp)
  ADD s2, t4, s4
  FLW ft4, 0(s2)
  FSW ft4, 348(sp)
  LD t4, 1024(sp)
  ADD s2, t4, s4
  FLW ft4, 0(s2)
  FSW ft4, 352(sp)
  LD t4, 1056(sp)
  ADD s2, t4, s4
  FLW ft4, 0(s2)
  FSW ft4, 356(sp)
  LD t4, 1952(sp)
  ADD s2, t4, s4
  FLW ft4, 0(s2)
  FSW ft4, 364(sp)
  LD t4, 984(sp)
  ADD s2, t4, s4
  FLW ft4, 0(s2)
  FSW ft4, 372(sp)
  ADDI t4, sp, 1260
  SD t4, 808(sp)
  LD t4, 808(sp)
  ADD s2, t4, s4
  LW t4, 0(s2)
  SW t4, 384(sp)
  LD t4, 1896(sp)
  ADD s2, t4, s4
  FLW ft4, 0(s2)
  FSW ft4, 392(sp)
  ADDI t4, sp, 1248
  SD t4, 816(sp)
  LD t4, 816(sp)
  ADD s2, t4, s4
  LW t4, 0(s2)
  SW t4, 404(sp)
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s2, t4, s4
  FLW ft4, 0(s2)
  FSW ft4, 412(sp)
  ADD a0, s3, zero
  ADD a1, s1, zero
  ADD a2, s8, zero
  FSGNJ.S fa0, fs1, fs1
  ADD a3, s7, zero
  ADD a4, s0, zero
  ADD a5, s6, zero
  FSGNJ.S fa1, fs2, fs2
  FSGNJ.S fa2, fs3, fs3
  FSGNJ.S fa3, fs4, fs4
  ADD a6, s11, zero
  FSGNJ.S fa4, fs5, fs5
  FSGNJ.S fa5, fs6, fs6
  ADD a7, s10, zero
  FSGNJ.S fa6, fs7, fs7
  ADDI t5, sp, 0
  ADD s0, t5, zero
  SW s9, 0(s0)
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
  FLW ft4, 528(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 24
  SW s5, 0(s0)
  ADDI s0, sp, 28
  FLW ft4, 520(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 32
  LW t4, 512(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 36
  LW t4, 508(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 40
  FLW ft4, 504(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 44
  FLW ft4, 500(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 48
  FLW ft4, 496(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 52
  FLW ft4, 436(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 56
  FLW ft4, 488(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 60
  LW t4, 480(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 64
  FLW ft4, 476(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 68
  LW t4, 468(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 72
  FLW ft4, 464(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 76
  FLW ft4, 460(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 80
  FLW ft4, 456(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 84
  FLW ft4, 452(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 88
  LW t4, 444(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 92
  LW t4, 440(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 96
  FLW ft4, 448(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 100
  FLW ft4, 472(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 104
  FLW ft4, 484(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 108
  LW t4, 516(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 112
  FLW ft4, 524(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 116
  LW t4, 536(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 120
  LW t4, 540(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 124
  FLW ft4, 544(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 128
  FLW ft4, 380(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 132
  FLW ft4, 324(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 136
  FLW ft4, 328(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 140
  LW t4, 332(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 144
  LW t4, 336(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 148
  LW t4, 340(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 152
  FLW ft4, 344(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 156
  FLW ft4, 348(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 160
  FLW ft4, 352(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 164
  FLW ft4, 356(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 168
  FLW ft4, 364(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 172
  FLW ft4, 372(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 176
  LW t4, 384(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 180
  FLW ft4, 392(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 184
  LW t4, 404(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 188
  FLW ft4, 412(sp)
  FSW ft4, 0(s0)
  FLW ft4, 528(sp)
  FLW ft3, 520(sp)
  LW t4, 512(sp)
  LW t3, 508(sp)
  FLW ft4, 504(sp)
  FLW ft3, 500(sp)
  FLW ft4, 496(sp)
  FLW ft3, 436(sp)
  FLW ft4, 488(sp)
  LW t4, 480(sp)
  FLW ft3, 476(sp)
  LW t3, 468(sp)
  FLW ft4, 464(sp)
  FLW ft3, 460(sp)
  FLW ft4, 456(sp)
  FLW ft3, 452(sp)
  LW t4, 444(sp)
  LW t3, 440(sp)
  FLW ft4, 448(sp)
  FLW ft3, 472(sp)
  FLW ft4, 484(sp)
  LW t4, 516(sp)
  FLW ft3, 524(sp)
  LW t3, 536(sp)
  LW t4, 540(sp)
  FLW ft4, 544(sp)
  FLW ft3, 380(sp)
  FLW ft4, 324(sp)
  FLW ft3, 328(sp)
  LW t3, 332(sp)
  LW t4, 336(sp)
  LW t3, 340(sp)
  FLW ft4, 344(sp)
  FLW ft3, 348(sp)
  FLW ft4, 352(sp)
  FLW ft3, 356(sp)
  FLW ft4, 364(sp)
  FLW ft3, 372(sp)
  LW t4, 384(sp)
  FLW ft4, 392(sp)
  LW t3, 404(sp)
  FLW ft3, 412(sp)
  CALL params_f40_i24
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 424(sp)
  ADDI a0, sp, 1368
  ADD a0, a0, zero
  LD t4, 992(sp)
  ADD a1, t4, zero
  LD t4, 1896(sp)
  ADD a2, t4, zero
  LD t4, 1864(sp)
  ADD a3, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -1968
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD a4, t4, zero
  LD t4, 968(sp)
  ADD a5, t4, zero
  LD t4, 960(sp)
  ADD a6, t4, zero
  LD t4, 952(sp)
  ADD a7, t4, zero
  ADDI t5, sp, 0
  ADD s0, t5, zero
  LD t4, 1008(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 8
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 16
  LUI t4, 1
  ADDIW t4, t4, -1992
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 24
  LUI t4, 1
  ADDIW t4, t4, -2000
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 32
  LD t4, 944(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 40
  LUI t4, 1
  ADDIW t4, t4, -2016
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 48
  LD t4, 2000(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 56
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 64
  LD t4, 976(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 72
  LD t4, 984(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 80
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 88
  LD t4, 1000(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 96
  LD t4, 936(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 104
  LD t4, 1016(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 112
  LD t4, 1024(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 120
  LD t4, 1032(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 128
  LD t4, 1040(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 136
  LD t4, 1048(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 144
  LD t4, 1056(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 152
  LD t4, 1064(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 160
  LD t4, 1072(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 168
  LD t4, 1848(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 176
  LD t4, 2008(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 184
  LD t4, 2016(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 192
  LD t4, 2024(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 200
  LD t4, 2032(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 208
  LD t4, 2040(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 216
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 224
  LD t4, 1952(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 232
  LD t4, 1936(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 240
  LD t4, 1920(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 248
  LD t4, 1912(sp)
  SD t4, 0(s0)
  LD t4, 1008(sp)
  LUI t3, 1
  ADDIW t3, t3, -1984
  ADD t3, t3, sp
  LD t3, 0(t3)
  LUI t4, 1
  ADDIW t4, t4, -1992
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 1
  ADDIW t3, t3, -2000
  ADD t3, t3, sp
  LD t3, 0(t3)
  LD t4, 944(sp)
  LUI t3, 1
  ADDIW t3, t3, -2016
  ADD t3, t3, sp
  LD t3, 0(t3)
  LD t4, 2000(sp)
  LUI t3, 1
  ADDIW t3, t3, -2032
  ADD t3, t3, sp
  LD t3, 0(t3)
  LD t4, 976(sp)
  LD t3, 984(sp)
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LD t4, 0(t4)
  LD t3, 1000(sp)
  LD t4, 936(sp)
  LD t3, 1016(sp)
  LD t4, 1024(sp)
  LD t3, 1032(sp)
  LD t4, 1040(sp)
  LD t3, 1048(sp)
  LD t4, 1056(sp)
  LD t3, 1064(sp)
  LD t4, 1072(sp)
  LD t3, 1848(sp)
  LD t4, 2008(sp)
  LD t3, 2016(sp)
  LD t4, 2024(sp)
  LD t3, 2032(sp)
  LD t4, 2040(sp)
  LUI t3, 1
  ADDIW t3, t3, -2048
  ADD t3, t3, sp
  LD t3, 0(t3)
  LD t4, 1952(sp)
  LD t3, 1936(sp)
  LD t4, 1920(sp)
  LD t3, 1912(sp)
  CALL params_fa40
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 492(sp)
  LA s0, k
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  ADDI t5, sp, 1368
  ADD s1, t5, s0
  FLW fs2, 0(s1)
  LD t4, 1928(sp)
  ADD s1, t4, s0
  LW s2, 0(s1)
  LD t4, 1896(sp)
  ADD s1, t4, s0
  FLW fs3, 0(s1)
  LD t4, 1880(sp)
  ADD s1, t4, s0
  LW s3, 0(s1)
  LD t4, 1864(sp)
  ADD s1, t4, s0
  FLW fs4, 0(s1)
  LUI t4, 1
  ADDIW t4, t4, -1968
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s1, t4, s0
  FLW fs5, 0(s1)
  LD t4, 1872(sp)
  ADD s1, t4, s0
  LW s4, 0(s1)
  LD t4, 1888(sp)
  ADD s1, t4, s0
  LW s5, 0(s1)
  LD t4, 1976(sp)
  ADD s1, t4, s0
  LW s6, 0(s1)
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s1, t4, s0
  FLW fs6, 0(s1)
  LUI t4, 1
  ADDIW t4, t4, -1992
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s1, t4, s0
  FLW fs7, 0(s1)
  LUI t4, 1
  ADDIW t4, t4, -2000
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s1, t4, s0
  FLW fs8, 0(s1)
  LUI t4, 1
  ADDIW t4, t4, -2024
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s1, t4, s0
  LW s7, 0(s1)
  LUI t4, 1
  ADDIW t4, t4, -2016
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s1, t4, s0
  FLW fs9, 0(s1)
  LD t4, 2000(sp)
  ADD s1, t4, s0
  FLW fs10, 0(s1)
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s1, t4, s0
  FLW fs11, 0(s1)
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s1, t4, s0
  FLW fs1, 0(s1)
  LD t4, 1000(sp)
  ADD s1, t4, s0
  FLW fs0, 0(s1)
  LD t4, 816(sp)
  ADD s1, t4, s0
  LW s8, 0(s1)
  LD t4, 1024(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 432(sp)
  LD t4, 1032(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 584(sp)
  LD t4, 1984(sp)
  ADD s1, t4, s0
  LW s9, 0(s1)
  LD t4, 1992(sp)
  ADD s1, t4, s0
  LW s10, 0(s1)
  LD t4, 1040(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 628(sp)
  LD t4, 1048(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 640(sp)
  LD t4, 848(sp)
  ADD s1, t4, s0
  LW s11, 0(s1)
  LD t4, 856(sp)
  ADD s1, t4, s0
  LW t4, 0(s1)
  SW t4, 616(sp)
  LD t4, 1064(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 660(sp)
  LD t4, 1072(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 668(sp)
  ADDI t5, sp, 1080
  ADD s1, t5, s0
  LW t4, 0(s1)
  SW t4, 652(sp)
  LD t4, 2016(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 552(sp)
  LD t4, 2024(sp)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 560(sp)
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s1, t4, s0
  FLW ft4, 0(s1)
  FSW ft4, 568(sp)
  LD t4, 880(sp)
  ADD s1, t4, s0
  LW s0, 0(s1)
  FSGNJ.S fa0, fs2, fs2
  ADDI a0, sp, 1080
  ADD a0, a0, zero
  ADD a1, s2, zero
  LD t4, 992(sp)
  ADD a2, t4, zero
  FSGNJ.S fa1, fs3, fs3
  ADD a3, s3, zero
  FSGNJ.S fa2, fs4, fs4
  FSGNJ.S fa3, fs5, fs5
  LD t4, 968(sp)
  ADD a4, t4, zero
  LD t4, 880(sp)
  ADD a5, t4, zero
  ADD a6, s4, zero
  ADD a7, s5, zero
  ADDI t5, sp, 0
  ADD s1, t5, zero
  LD t4, 960(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 8
  LUI t4, 1
  ADDIW t4, t4, -1976
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s1)
  ADDI s1, sp, 16
  LD t4, 1944(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 24
  SW s6, 0(s1)
  ADDI s1, sp, 32
  LD t4, 952(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 40
  LD t4, 1008(sp)
  SD t4, 0(s1)
  FSGNJ.S fa4, fs6, fs6
  FSGNJ.S fa5, fs7, fs7
  FSGNJ.S fa6, fs8, fs8
  ADDI s1, sp, 48
  LD t4, 944(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 56
  SW s7, 0(s1)
  FSGNJ.S fa7, fs9, fs9
  ADDI s1, sp, 60
  FSW fs10, 0(s1)
  ADDI s1, sp, 64
  FSW fs11, 0(s1)
  ADDI s1, sp, 72
  LD t4, 1960(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 80
  LD t4, 976(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 88
  LD t4, 768(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 96
  LD t4, 928(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 104
  LD t4, 984(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 112
  FSW fs1, 0(s1)
  ADDI s1, sp, 116
  FSW fs0, 0(s1)
  ADDI s1, sp, 120
  LD t4, 1968(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 128
  SW s8, 0(s1)
  ADDI s1, sp, 136
  LD t4, 936(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 144
  LD t4, 1016(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 152
  FLW ft4, 432(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 156
  FLW ft4, 584(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 160
  LD t4, 808(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 168
  LD t4, 896(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 176
  SW s9, 0(s1)
  ADDI s1, sp, 180
  SW s10, 0(s1)
  ADDI s1, sp, 184
  FLW ft4, 628(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 188
  FLW ft4, 640(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 192
  LD t4, 1856(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 200
  SW s11, 0(s1)
  ADDI s1, sp, 208
  LD t4, 1056(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 216
  LW t4, 616(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 224
  LD t4, 1904(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 232
  LUI t4, 1
  ADDIW t4, t4, -2008
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s1)
  ADDI s1, sp, 240
  FLW ft4, 660(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 244
  FLW ft4, 668(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 248
  LD t4, 1848(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 256
  LW t4, 652(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 264
  LD t4, 1928(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 272
  LD t4, 2008(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 280
  FLW ft4, 552(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 284
  SW s3, 0(s1)
  ADDI s1, sp, 288
  FLW ft4, 560(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 296
  LD t4, 2032(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 304
  LD t4, 2040(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 312
  FLW ft4, 568(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 316
  SW s0, 0(s1)
  LD t4, 960(sp)
  LUI t3, 1
  ADDIW t3, t3, -1976
  ADD t3, t3, sp
  LD t3, 0(t3)
  LD t4, 1944(sp)
  LD t3, 952(sp)
  LD t4, 1008(sp)
  LD t3, 944(sp)
  LD t4, 1960(sp)
  LD t3, 976(sp)
  LD t4, 768(sp)
  LD t3, 928(sp)
  LD t4, 984(sp)
  LD t3, 1968(sp)
  LD t4, 936(sp)
  LD t3, 1016(sp)
  FLW ft4, 432(sp)
  FLW ft3, 584(sp)
  LD t4, 808(sp)
  LD t3, 896(sp)
  FLW ft4, 628(sp)
  FLW ft3, 640(sp)
  LD t4, 1856(sp)
  LD t3, 1056(sp)
  LW t4, 616(sp)
  LD t3, 1904(sp)
  LUI t4, 1
  ADDIW t4, t4, -2008
  ADD t4, t4, sp
  LD t4, 0(t4)
  FLW ft4, 660(sp)
  FLW ft3, 668(sp)
  LD t3, 1848(sp)
  LW t4, 652(sp)
  LD t3, 1928(sp)
  LD t4, 2008(sp)
  FLW ft4, 552(sp)
  FLW ft3, 560(sp)
  LD t3, 2032(sp)
  LD t4, 2040(sp)
  FLW ft4, 568(sp)
  CALL params_mix
  ADD s0, a0, zero
  FLW ft4, 532(sp)
  FLW ft3, 532(sp)
  FSGNJ.S fa0, ft4, ft3
  CALL putfloat
  ADDI a0, zero, 10
  CALL putch
  FLW ft4, 424(sp)
  FLW ft3, 424(sp)
  FSGNJ.S fa0, ft4, ft3
  CALL putfloat
  ADDI a0, zero, 10
  CALL putch
  FLW ft4, 492(sp)
  FLW ft3, 492(sp)
  FSGNJ.S fa0, ft4, ft3
  CALL putfloat
  ADDI a0, zero, 10
  CALL putch
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  FLD fs4, 672(sp)
  LD ra, 680(sp)
  LD s0, 688(sp)
  LD s3, 696(sp)
  LD s5, 704(sp)
  LD s8, 712(sp)
  LD s9, 720(sp)
  LD s10, 728(sp)
  LD s11, 736(sp)
  FLD fs3, 744(sp)
  FLD fs5, 752(sp)
  FLD fs10, 760(sp)
  FLD fs0, 776(sp)
  FLD fs6, 784(sp)
  FLD fs7, 792(sp)
  FLD fs9, 800(sp)
  LD s1, 824(sp)
  LD s4, 832(sp)
  LD s6, 840(sp)
  LD s2, 864(sp)
  LD s7, 872(sp)
  FLD fs8, 888(sp)
  FLD fs1, 904(sp)
  FLD fs2, 912(sp)
  FLD fs11, 920(sp)
  LUI t0, 1
  ADDIW t0, t0, -1952
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb11:
  ADDI s0, zero, 12
  LW t4, 600(sp)
  MULW s1, t4, s0
  ADDI t5, sp, 1080
  ADD s0, t5, s1
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  LW t4, 600(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 604(sp)
  JAL zero, bb9
bb12:
  ADDI s0, zero, 12
  LW t4, 608(sp)
  MULW s1, t4, s0
  ADDI t5, sp, 1368
  ADD s0, t5, s1
  ADD a0, s0, zero
  CALL getfarray
  ADD s0, a0, zero
  LW t4, 608(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 612(sp)
  JAL zero, bb7
params_fa40:
  ADDI sp, sp, -736
  SD ra, 256(sp)
  SD s9, 264(sp)
  SD s10, 272(sp)
  SD s11, 280(sp)
  SD s0, 312(sp)
  SD s1, 320(sp)
  SD s2, 328(sp)
  SD s3, 336(sp)
  SD s4, 344(sp)
  SD s5, 352(sp)
  SD s6, 360(sp)
  SD s7, 368(sp)
  SD s8, 376(sp)
  FSD fs0, 384(sp)
  FSD fs1, 392(sp)
  FSD fs2, 400(sp)
  FSD fs3, 408(sp)
  FSD fs4, 416(sp)
  FSD fs5, 424(sp)
  FSD fs6, 432(sp)
  FSD fs7, 440(sp)
  FSD fs8, 448(sp)
  FSD fs9, 456(sp)
  FSD fs10, 464(sp)
  FSD fs11, 472(sp)
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
  SD t4, 296(sp)
  ADDI s8, sp, 768
  LD t4, 0(s8)
  SD t4, 480(sp)
  ADDI s8, sp, 776
  LD t4, 0(s8)
  SD t4, 288(sp)
  ADDI s8, sp, 784
  LD t4, 0(s8)
  SD t4, 304(sp)
  ADDI s8, sp, 792
  LD t4, 0(s8)
  SD t4, 720(sp)
  ADDI s8, sp, 800
  LD t4, 0(s8)
  SD t4, 536(sp)
  ADDI s8, sp, 808
  LD t4, 0(s8)
  SD t4, 544(sp)
  ADDI s8, sp, 816
  LD t4, 0(s8)
  SD t4, 552(sp)
  ADDI s8, sp, 824
  LD t4, 0(s8)
  SD t4, 560(sp)
  ADDI s8, sp, 832
  LD t4, 0(s8)
  SD t4, 568(sp)
  ADDI s8, sp, 840
  LD t4, 0(s8)
  SD t4, 576(sp)
  ADDI s8, sp, 848
  LD t4, 0(s8)
  SD t4, 584(sp)
  ADDI s8, sp, 856
  LD t4, 0(s8)
  SD t4, 592(sp)
  ADDI s8, sp, 864
  LD t4, 0(s8)
  SD t4, 600(sp)
  ADDI s8, sp, 872
  LD t4, 0(s8)
  SD t4, 608(sp)
  ADDI s8, sp, 880
  LD t4, 0(s8)
  SD t4, 616(sp)
  ADDI s8, sp, 888
  LD t4, 0(s8)
  SD t4, 488(sp)
  ADDI s8, sp, 896
  LD t4, 0(s8)
  SD t4, 624(sp)
  ADDI s8, sp, 904
  LD t4, 0(s8)
  SD t4, 632(sp)
  ADDI s8, sp, 912
  LD t4, 0(s8)
  SD t4, 640(sp)
  ADDI s8, sp, 920
  LD t4, 0(s8)
  SD t4, 648(sp)
  ADDI s8, sp, 928
  LD t4, 0(s8)
  SD t4, 656(sp)
  ADDI s8, sp, 936
  LD t4, 0(s8)
  SD t4, 664(sp)
  ADDI s8, sp, 944
  LD t4, 0(s8)
  SD t4, 672(sp)
  ADDI s8, sp, 952
  LD t4, 0(s8)
  SD t4, 680(sp)
  ADDI s8, sp, 960
  LD t4, 0(s8)
  SD t4, 688(sp)
  ADDI s8, sp, 968
  LD t4, 0(s8)
  SD t4, 696(sp)
  ADDI s8, sp, 976
  LD t4, 0(s8)
  SD t4, 704(sp)
  ADDI s8, sp, 984
  LD t4, 0(s8)
  SD t4, 712(sp)
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
  LD t4, 296(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  FADD.S fs4, fs1, fs0
  LD t4, 480(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  LD t4, 288(sp)
  ADD s0, t4, s8
  FLW fs1, 0(s0)
  FADD.S fs5, fs0, fs1
  LD t4, 304(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  FADD.S fs1, fs5, fs0
  LD t4, 720(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  FADD.S fs5, fs1, fs0
  LD t4, 536(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  LD t4, 544(sp)
  ADD s0, t4, s8
  FLW fs1, 0(s0)
  FADD.S fs6, fs0, fs1
  LD t4, 552(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  FADD.S fs1, fs6, fs0
  LD t4, 560(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  FADD.S fs6, fs1, fs0
  LD t4, 568(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  LD t4, 576(sp)
  ADD s0, t4, s8
  FLW fs1, 0(s0)
  FADD.S fs7, fs0, fs1
  LD t4, 584(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  FADD.S fs1, fs7, fs0
  LD t4, 592(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  FADD.S fs7, fs1, fs0
  LD t4, 600(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  LD t4, 608(sp)
  ADD s0, t4, s8
  FLW fs1, 0(s0)
  FADD.S fs8, fs0, fs1
  LD t4, 616(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  FADD.S fs1, fs8, fs0
  LD t4, 488(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  FADD.S fs8, fs1, fs0
  LD t4, 624(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  LD t4, 632(sp)
  ADD s0, t4, s8
  FLW fs1, 0(s0)
  FADD.S fs9, fs0, fs1
  LD t4, 640(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  FADD.S fs1, fs9, fs0
  LD t4, 648(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  FADD.S fs9, fs1, fs0
  LD t4, 656(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  LD t4, 664(sp)
  ADD s0, t4, s8
  FLW fs1, 0(s0)
  FADD.S fs10, fs0, fs1
  LD t4, 672(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  FADD.S fs1, fs10, fs0
  LD t4, 680(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  FADD.S fs10, fs1, fs0
  LD t4, 688(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  LD t4, 696(sp)
  ADD s0, t4, s8
  FLW fs1, 0(s0)
  FADD.S fs11, fs0, fs1
  LD t4, 704(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  FADD.S fs1, fs11, fs0
  LD t4, 712(sp)
  ADD s0, t4, s8
  FLW fs0, 0(s0)
  FADD.S fs11, fs1, fs0
  FSW fs2, 496(sp)
  ADDI s0, sp, 500
  FSW fs3, 0(s0)
  ADDI s0, sp, 504
  FSW fs4, 0(s0)
  ADDI s0, sp, 508
  FSW fs5, 0(s0)
  ADDI s0, sp, 512
  FSW fs6, 0(s0)
  ADDI s0, sp, 516
  FSW fs7, 0(s0)
  ADDI s0, sp, 520
  FSW fs8, 0(s0)
  ADDI s0, sp, 524
  FSW fs9, 0(s0)
  ADDI s0, sp, 528
  FSW fs10, 0(s0)
  ADDI s0, sp, 532
  FSW fs11, 0(s0)
  LA s0, k
  LW s8, 0(s0)
  SLLIW s0, s8, 2
  LD t4, 712(sp)
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
  LD t4, 296(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 24
  LD t4, 480(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 32
  LD t4, 288(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 40
  LD t4, 304(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 48
  LD t4, 720(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 56
  LD t4, 536(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 64
  LD t4, 544(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 72
  LD t4, 552(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 80
  LD t4, 560(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 88
  LD t4, 568(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 96
  LD t4, 576(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 104
  LD t4, 584(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 112
  LD t4, 592(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 120
  LD t4, 600(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 128
  LD t4, 608(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 136
  LD t4, 616(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 144
  LD t4, 488(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 152
  LD t4, 624(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 160
  LD t4, 632(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 168
  LD t4, 640(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 176
  LD t4, 648(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 184
  LD t4, 656(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 192
  LD t4, 664(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 200
  LD t4, 672(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 208
  LD t4, 680(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 216
  LD t4, 688(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 224
  LD t4, 696(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 232
  LD t4, 704(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 240
  LD t4, 712(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 248
  ADDI t4, sp, 496
  SD t4, 0(s0)
  LD t4, 296(sp)
  LD t3, 480(sp)
  LD t4, 288(sp)
  LD t3, 304(sp)
  LD t4, 720(sp)
  LD t3, 536(sp)
  LD t4, 544(sp)
  LD t3, 552(sp)
  LD t4, 560(sp)
  LD t3, 568(sp)
  LD t4, 576(sp)
  LD t3, 584(sp)
  LD t4, 592(sp)
  LD t3, 600(sp)
  LD t4, 608(sp)
  LD t3, 616(sp)
  LD t4, 488(sp)
  LD t3, 624(sp)
  LD t4, 632(sp)
  LD t3, 640(sp)
  LD t4, 648(sp)
  LD t3, 656(sp)
  LD t4, 664(sp)
  LD t3, 672(sp)
  LD t4, 680(sp)
  LD t3, 688(sp)
  LD t4, 696(sp)
  LD t3, 704(sp)
  LD t4, 712(sp)
  ADDI t5, sp, 496
  CALL params_fa40
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 256(sp)
  LD s9, 264(sp)
  LD s10, 272(sp)
  LD s11, 280(sp)
  LD s0, 312(sp)
  LD s1, 320(sp)
  LD s2, 328(sp)
  LD s3, 336(sp)
  LD s4, 344(sp)
  LD s5, 352(sp)
  LD s6, 360(sp)
  LD s7, 368(sp)
  LD s8, 376(sp)
  FLD fs0, 384(sp)
  FLD fs1, 392(sp)
  FLD fs2, 400(sp)
  FLD fs3, 408(sp)
  FLD fs4, 416(sp)
  FLD fs5, 424(sp)
  FLD fs6, 432(sp)
  FLD fs7, 440(sp)
  FLD fs8, 448(sp)
  FLD fs9, 456(sp)
  FLD fs10, 464(sp)
  FLD fs11, 472(sp)
  ADDI sp, sp, 736
  JALR zero, 0(ra)
bb15:
  ADDI a0, zero, 10
  ADDI a1, sp, 496
  ADD a1, a1, zero
  CALL putfarray
  LA s0, k
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  ADDI t5, sp, 496
  ADD s1, t5, s0
  FLW fs0, 0(s1)
  FSGNJ.S fa0, fs0, fs0
  LD ra, 256(sp)
  LD s9, 264(sp)
  LD s10, 272(sp)
  LD s11, 280(sp)
  LD s0, 312(sp)
  LD s1, 320(sp)
  LD s2, 328(sp)
  LD s3, 336(sp)
  LD s4, 344(sp)
  LD s5, 352(sp)
  LD s6, 360(sp)
  LD s7, 368(sp)
  LD s8, 376(sp)
  FLD fs0, 384(sp)
  FLD fs1, 392(sp)
  FLD fs2, 400(sp)
  FLD fs3, 408(sp)
  FLD fs4, 416(sp)
  FLD fs5, 424(sp)
  FLD fs6, 432(sp)
  FLD fs7, 440(sp)
  FLD fs8, 448(sp)
  FLD fs9, 456(sp)
  FLD fs10, 464(sp)
  FLD fs11, 472(sp)
  ADDI sp, sp, 736
  JALR zero, 0(ra)
params_f40:
  ADDI sp, sp, -416
  SD ra, 248(sp)
  SD s0, 256(sp)
  SD s1, 264(sp)
  FSD fs0, 272(sp)
  FSD fs1, 280(sp)
  FSD fs2, 288(sp)
  FSD fs3, 296(sp)
  FSD fs4, 304(sp)
  FSD fs5, 312(sp)
  FSD fs6, 320(sp)
  FSD fs7, 328(sp)
  FSD fs8, 336(sp)
  FSD fs9, 344(sp)
  FSD fs10, 352(sp)
  FSD fs11, 360(sp)
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
  FSW ft4, 244(sp)
  ADDI s0, sp, 432
  FLW ft4, 0(s0)
  FSW ft4, 140(sp)
  ADDI s0, sp, 436
  FLW ft4, 0(s0)
  FSW ft4, 240(sp)
  ADDI s0, sp, 440
  FLW ft4, 0(s0)
  FSW ft4, 136(sp)
  ADDI s0, sp, 444
  FLW ft4, 0(s0)
  FSW ft4, 132(sp)
  ADDI s0, sp, 448
  FLW ft4, 0(s0)
  FSW ft4, 152(sp)
  ADDI s0, sp, 452
  FLW ft4, 0(s0)
  FSW ft4, 148(sp)
  ADDI s0, sp, 456
  FLW ft4, 0(s0)
  FSW ft4, 144(sp)
  ADDI s0, sp, 460
  FLW ft4, 0(s0)
  FSW ft4, 156(sp)
  ADDI s0, sp, 464
  FLW ft4, 0(s0)
  FSW ft4, 164(sp)
  ADDI s0, sp, 468
  FLW ft4, 0(s0)
  FSW ft4, 168(sp)
  ADDI s0, sp, 472
  FLW ft4, 0(s0)
  FSW ft4, 236(sp)
  ADDI s0, sp, 476
  FLW ft4, 0(s0)
  FSW ft4, 232(sp)
  ADDI s0, sp, 480
  FLW ft4, 0(s0)
  FSW ft4, 228(sp)
  ADDI s0, sp, 484
  FLW ft4, 0(s0)
  FSW ft4, 224(sp)
  ADDI s0, sp, 488
  FLW ft4, 0(s0)
  FSW ft4, 220(sp)
  ADDI s0, sp, 492
  FLW ft4, 0(s0)
  FSW ft4, 216(sp)
  ADDI s0, sp, 496
  FLW ft4, 0(s0)
  FSW ft4, 212(sp)
  ADDI s0, sp, 500
  FLW ft4, 0(s0)
  FSW ft4, 208(sp)
  ADDI s0, sp, 504
  FLW ft4, 0(s0)
  FSW ft4, 204(sp)
  ADDI s0, sp, 508
  FLW ft4, 0(s0)
  FSW ft4, 200(sp)
  ADDI s0, sp, 512
  FLW ft4, 0(s0)
  FSW ft4, 196(sp)
  ADDI s0, sp, 516
  FLW ft4, 0(s0)
  FSW ft4, 192(sp)
  ADDI s0, sp, 520
  FLW ft4, 0(s0)
  FSW ft4, 128(sp)
  ADDI s0, sp, 524
  FLW ft4, 0(s0)
  FSW ft4, 188(sp)
  ADDI s0, sp, 528
  FLW ft4, 0(s0)
  FSW ft4, 184(sp)
  ADDI s0, sp, 532
  FLW ft4, 0(s0)
  FSW ft4, 180(sp)
  ADDI s0, sp, 536
  FLW ft4, 0(s0)
  FSW ft4, 176(sp)
  ADDI s0, sp, 540
  FLW ft4, 0(s0)
  FSW ft4, 172(sp)
  FCVT.S.L ft11, zero
  FLW ft4, 172(sp)
  FEQ.S s0, ft4, ft11
  XORI s1, s0, 1
  BNE s1, zero, bb18
  # implict jump to bb17
bb17:
  FADD.S ft11, fs0, fs1
  FADD.S ft4, ft11, fs2
  FSW ft4, 160(sp)
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
  FLW ft4, 244(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 12
  FLW ft4, 140(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 16
  FLW ft4, 240(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 20
  FLW ft4, 136(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 24
  FLW ft4, 132(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 28
  FLW ft4, 152(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 32
  FLW ft4, 148(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 36
  FLW ft4, 144(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 40
  FLW ft4, 156(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 44
  FLW ft4, 164(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 48
  FLW ft4, 168(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 52
  FLW ft4, 236(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 56
  FLW ft4, 232(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 60
  FLW ft4, 228(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 64
  FLW ft4, 224(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 68
  FLW ft4, 220(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 72
  FLW ft4, 216(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 76
  FLW ft4, 212(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 80
  FLW ft4, 208(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 84
  FLW ft4, 204(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 88
  FLW ft4, 200(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 92
  FLW ft4, 196(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 96
  FLW ft4, 192(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 100
  FLW ft4, 128(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 104
  FLW ft4, 188(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 108
  FLW ft4, 184(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 112
  FLW ft4, 180(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 116
  FLW ft4, 176(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 120
  FLW ft4, 172(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 124
  FLW ft4, 160(sp)
  FSW ft4, 0(s0)
  FLW ft4, 244(sp)
  FLW ft3, 140(sp)
  FLW ft4, 240(sp)
  FLW ft3, 136(sp)
  FLW ft4, 132(sp)
  FLW ft3, 152(sp)
  FLW ft4, 148(sp)
  FLW ft3, 144(sp)
  FLW ft4, 156(sp)
  FLW ft3, 164(sp)
  FLW ft4, 168(sp)
  FLW ft3, 236(sp)
  FLW ft4, 232(sp)
  FLW ft3, 228(sp)
  FLW ft4, 224(sp)
  FLW ft3, 220(sp)
  FLW ft4, 216(sp)
  FLW ft3, 212(sp)
  FLW ft4, 208(sp)
  FLW ft3, 204(sp)
  FLW ft4, 200(sp)
  FLW ft3, 196(sp)
  FLW ft4, 192(sp)
  FLW ft3, 128(sp)
  FLW ft4, 188(sp)
  FLW ft3, 184(sp)
  FLW ft4, 180(sp)
  FLW ft3, 176(sp)
  FLW ft4, 172(sp)
  FLW ft3, 160(sp)
  CALL params_f40
  FSGNJ.D fs11, fa0, fa0
  FSGNJ.S fa0, fs11, fs11
  LD ra, 248(sp)
  LD s0, 256(sp)
  LD s1, 264(sp)
  FLD fs0, 272(sp)
  FLD fs1, 280(sp)
  FLD fs2, 288(sp)
  FLD fs3, 296(sp)
  FLD fs4, 304(sp)
  FLD fs5, 312(sp)
  FLD fs6, 320(sp)
  FLD fs7, 328(sp)
  FLD fs8, 336(sp)
  FLD fs9, 344(sp)
  FLD fs10, 352(sp)
  FLD fs11, 360(sp)
  ADDI sp, sp, 416
  JALR zero, 0(ra)
bb18:
  FADD.S fs11, fs0, fs1
  FADD.S fs0, fs11, fs2
  FADD.S fs1, fs0, fs3
  FADD.S fs0, fs4, fs5
  FADD.S fs2, fs0, fs6
  FADD.S fs0, fs2, fs7
  FADD.S fs2, fs8, fs9
  FADD.S fs3, fs2, fs10
  FLW ft4, 244(sp)
  FADD.S fs2, fs3, ft4
  FLW ft4, 140(sp)
  FLW ft3, 240(sp)
  FADD.S fs3, ft4, ft3
  FLW ft4, 136(sp)
  FADD.S fs4, fs3, ft4
  FLW ft4, 132(sp)
  FADD.S fs3, fs4, ft4
  FLW ft4, 152(sp)
  FLW ft3, 148(sp)
  FADD.S fs4, ft4, ft3
  FLW ft4, 144(sp)
  FADD.S fs5, fs4, ft4
  FLW ft4, 156(sp)
  FADD.S fs4, fs5, ft4
  FLW ft4, 164(sp)
  FLW ft3, 168(sp)
  FADD.S fs5, ft4, ft3
  FLW ft4, 236(sp)
  FADD.S fs6, fs5, ft4
  FLW ft4, 232(sp)
  FADD.S fs5, fs6, ft4
  FLW ft4, 228(sp)
  FLW ft3, 224(sp)
  FADD.S fs6, ft4, ft3
  FLW ft4, 220(sp)
  FADD.S fs7, fs6, ft4
  FLW ft4, 216(sp)
  FADD.S fs6, fs7, ft4
  FLW ft4, 212(sp)
  FLW ft3, 208(sp)
  FADD.S fs7, ft4, ft3
  FLW ft4, 204(sp)
  FADD.S fs8, fs7, ft4
  FLW ft4, 200(sp)
  FADD.S fs7, fs8, ft4
  FLW ft4, 196(sp)
  FLW ft3, 192(sp)
  FADD.S fs8, ft4, ft3
  FLW ft4, 128(sp)
  FADD.S fs9, fs8, ft4
  FLW ft4, 188(sp)
  FADD.S fs8, fs9, ft4
  FLW ft4, 184(sp)
  FLW ft3, 180(sp)
  FADD.S fs9, ft4, ft3
  FLW ft4, 176(sp)
  FADD.S fs10, fs9, ft4
  FLW ft4, 172(sp)
  FADD.S fs9, fs10, ft4
  FSW fs1, 368(sp)
  ADDI s0, sp, 372
  FSW fs0, 0(s0)
  ADDI s0, sp, 376
  FSW fs2, 0(s0)
  ADDI s0, sp, 380
  FSW fs3, 0(s0)
  ADDI s0, sp, 384
  FSW fs4, 0(s0)
  ADDI s0, sp, 388
  FSW fs5, 0(s0)
  ADDI s0, sp, 392
  FSW fs6, 0(s0)
  ADDI s0, sp, 396
  FSW fs7, 0(s0)
  ADDI s0, sp, 400
  FSW fs8, 0(s0)
  ADDI s0, sp, 404
  FSW fs9, 0(s0)
  ADDI a0, zero, 10
  ADDI a1, sp, 368
  ADD a1, a1, zero
  CALL putfarray
  LA s0, k
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  ADDI t5, sp, 368
  ADD s1, t5, s0
  FLW fs0, 0(s1)
  FSGNJ.S fa0, fs0, fs0
  LD ra, 248(sp)
  LD s0, 256(sp)
  LD s1, 264(sp)
  FLD fs0, 272(sp)
  FLD fs1, 280(sp)
  FLD fs2, 288(sp)
  FLD fs3, 296(sp)
  FLD fs4, 304(sp)
  FLD fs5, 312(sp)
  FLD fs6, 320(sp)
  FLD fs7, 328(sp)
  FLD fs8, 336(sp)
  FLD fs9, 344(sp)
  FLD fs10, 352(sp)
  FLD fs11, 360(sp)
  ADDI sp, sp, 416
  JALR zero, 0(ra)
params_mix:
  ADDI sp, sp, -896
  SD s0, 440(sp)
  FSD fs5, 448(sp)
  SD ra, 456(sp)
  SD s1, 464(sp)
  SD s2, 472(sp)
  SD s3, 480(sp)
  SD s4, 488(sp)
  SD s5, 496(sp)
  SD s6, 504(sp)
  SD s7, 512(sp)
  SD s8, 520(sp)
  SD s9, 528(sp)
  SD s10, 536(sp)
  SD s11, 544(sp)
  FSD fs0, 552(sp)
  FSD fs1, 560(sp)
  FSD fs2, 568(sp)
  FSD fs3, 576(sp)
  FSD fs4, 584(sp)
  FSD fs6, 592(sp)
  FSD fs7, 760(sp)
  FSD fs8, 768(sp)
  FSD fs10, 776(sp)
  FSD fs11, 784(sp)
  FSD fs9, 800(sp)
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
  ADD s6, a6, zero
  ADD t4, a7, zero
  SW t4, 396(sp)
  ADDI t5, sp, 896
  ADD s8, t5, zero
  LD t4, 0(s8)
  SD t4, 408(sp)
  ADDI s8, sp, 904
  LD t4, 0(s8)
  SD t4, 416(sp)
  ADDI s8, sp, 912
  LD t4, 0(s8)
  SD t4, 424(sp)
  ADDI s8, sp, 920
  LW t4, 0(s8)
  SW t4, 344(sp)
  ADDI s8, sp, 928
  LD t4, 0(s8)
  SD t4, 400(sp)
  ADDI s8, sp, 936
  LD t4, 0(s8)
  SD t4, 432(sp)
  FSGNJ.D fs4, fa4, fa4
  FSGNJ.D fs5, fa5, fa5
  FSGNJ.D fs6, fa6, fa6
  ADDI s8, sp, 944
  LD t4, 0(s8)
  SD t4, 880(sp)
  ADDI s8, sp, 952
  LW t4, 0(s8)
  SW t4, 348(sp)
  FSGNJ.D fs7, fa7, fa7
  ADDI s8, sp, 956
  FLW fs8, 0(s8)
  ADDI s8, sp, 960
  FLW fs9, 0(s8)
  ADDI s8, sp, 968
  LD t4, 0(s8)
  SD t4, 680(sp)
  ADDI s8, sp, 976
  LD t4, 0(s8)
  SD t4, 688(sp)
  ADDI s8, sp, 984
  LD t4, 0(s8)
  SD t4, 696(sp)
  ADDI s8, sp, 992
  LD t4, 0(s8)
  SD t4, 704(sp)
  ADDI s8, sp, 1000
  LD t4, 0(s8)
  SD t4, 712(sp)
  ADDI s8, sp, 1008
  FLW ft4, 0(s8)
  FSW ft4, 392(sp)
  ADDI s8, sp, 1012
  FLW ft4, 0(s8)
  FSW ft4, 388(sp)
  ADDI s8, sp, 1016
  LD t4, 0(s8)
  SD t4, 720(sp)
  ADDI s8, sp, 1024
  LW t4, 0(s8)
  SW t4, 356(sp)
  ADDI s8, sp, 1032
  LD t4, 0(s8)
  SD t4, 728(sp)
  ADDI s8, sp, 1040
  LD t4, 0(s8)
  SD t4, 736(sp)
  ADDI s8, sp, 1048
  FLW ft4, 0(s8)
  FSW ft4, 384(sp)
  ADDI s8, sp, 1052
  FLW ft4, 0(s8)
  FSW ft4, 380(sp)
  ADDI s8, sp, 1056
  LD t4, 0(s8)
  SD t4, 744(sp)
  ADDI s8, sp, 1064
  LD t4, 0(s8)
  SD t4, 792(sp)
  ADDI s8, sp, 1072
  LW t4, 0(s8)
  SW t4, 340(sp)
  ADDI s8, sp, 1076
  LW t4, 0(s8)
  SW t4, 336(sp)
  ADDI s8, sp, 1080
  FLW ft4, 0(s8)
  FSW ft4, 376(sp)
  ADDI s8, sp, 1084
  FLW ft4, 0(s8)
  FSW ft4, 372(sp)
  ADDI s8, sp, 1088
  LD t4, 0(s8)
  SD t4, 808(sp)
  ADDI s8, sp, 1096
  LW t4, 0(s8)
  SW t4, 328(sp)
  ADDI s8, sp, 1104
  LD t4, 0(s8)
  SD t4, 816(sp)
  ADDI s8, sp, 1112
  LW t4, 0(s8)
  SW t4, 324(sp)
  ADDI s8, sp, 1120
  LD t4, 0(s8)
  SD t4, 824(sp)
  ADDI s8, sp, 1128
  LD t4, 0(s8)
  SD t4, 832(sp)
  ADDI s8, sp, 1136
  FLW ft4, 0(s8)
  FSW ft4, 368(sp)
  ADDI s8, sp, 1140
  FLW ft4, 0(s8)
  FSW ft4, 364(sp)
  ADDI s8, sp, 1144
  LD t4, 0(s8)
  SD t4, 840(sp)
  ADDI s8, sp, 1152
  LW t4, 0(s8)
  SW t4, 352(sp)
  ADDI s8, sp, 1160
  LD t4, 0(s8)
  SD t4, 848(sp)
  ADDI s8, sp, 1168
  LD t4, 0(s8)
  SD t4, 856(sp)
  ADDI s8, sp, 1176
  FLW ft4, 0(s8)
  FSW ft4, 360(sp)
  ADDI s8, sp, 1180
  LW t4, 0(s8)
  SW t4, 332(sp)
  ADDI s8, sp, 1184
  FLW ft4, 0(s8)
  FSW ft4, 320(sp)
  ADDI s8, sp, 1192
  LD t4, 0(s8)
  SD t4, 864(sp)
  ADDI s8, sp, 1200
  LD t4, 0(s8)
  SD t4, 872(sp)
  ADDI s8, sp, 1208
  FLW ft10, 0(s8)
  ADDI s8, sp, 1212
  LW t6, 0(s8)
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
  LD t4, 408(sp)
  ADD s2, t4, s8
  FLW ft11, 0(s2)
  FADD.S ft7, ft8, ft11
  LD t4, 400(sp)
  ADD s2, t4, s8
  FLW ft8, 0(s2)
  FADD.S ft11, ft7, ft8
  LD t4, 432(sp)
  ADD s2, t4, s8
  FLW ft7, 0(s2)
  FADD.S ft8, ft7, fs4
  FADD.S ft7, ft8, fs5
  FADD.S ft8, ft7, fs6
  LD t4, 880(sp)
  ADD s2, t4, s8
  FLW ft7, 0(s2)
  FADD.S ft6, ft7, fs7
  FADD.S ft7, ft6, fs8
  FADD.S ft6, ft7, fs9
  LD t4, 688(sp)
  ADD s2, t4, s8
  FLW ft7, 0(s2)
  LD t4, 712(sp)
  ADD s2, t4, s8
  FLW ft5, 0(s2)
  FADD.S ft2, ft7, ft5
  FLW ft4, 392(sp)
  FADD.S ft5, ft2, ft4
  FLW ft4, 388(sp)
  FADD.S ft2, ft5, ft4
  LD t4, 728(sp)
  ADD s2, t4, s8
  FLW ft5, 0(s2)
  LD t4, 736(sp)
  ADD s2, t4, s8
  FLW ft7, 0(s2)
  FADD.S ft1, ft5, ft7
  FLW ft4, 384(sp)
  FADD.S ft5, ft1, ft4
  FLW ft4, 380(sp)
  FADD.S ft1, ft5, ft4
  FLW ft4, 376(sp)
  FLW ft3, 372(sp)
  FADD.S ft5, ft4, ft3
  LD t4, 816(sp)
  ADD s2, t4, s8
  FLW ft7, 0(s2)
  FADD.S ft0, ft5, ft7
  FLW ft4, 368(sp)
  FADD.S ft5, ft0, ft4
  LD t4, 840(sp)
  ADD s2, t4, s8
  FLW ft0, 0(s2)
  FLW ft4, 364(sp)
  FADD.S ft7, ft4, ft0
  LD t4, 856(sp)
  ADD s2, t4, s8
  FLW ft0, 0(s2)
  FADD.S fs11, ft7, ft0
  FLW ft4, 360(sp)
  FADD.S ft0, fs11, ft4
  LD t4, 864(sp)
  ADD s2, t4, s8
  FLW fs11, 0(s2)
  FLW ft4, 320(sp)
  FADD.S ft7, ft4, fs11
  LD t4, 872(sp)
  ADD s2, t4, s8
  FLW fs11, 0(s2)
  FADD.S fs10, ft7, fs11
  FADD.S fs11, fs10, ft10
  FSW ft9, 640(sp)
  ADDI s2, sp, 644
  FSW ft11, 0(s2)
  ADDI s2, sp, 648
  FSW ft8, 0(s2)
  ADDI s2, sp, 652
  FSW ft6, 0(s2)
  ADDI s2, sp, 656
  FSW ft2, 0(s2)
  ADDI s2, sp, 660
  FSW ft1, 0(s2)
  ADDI s2, sp, 664
  FSW ft5, 0(s2)
  ADDI s2, sp, 668
  FSW ft0, 0(s2)
  ADDI t4, sp, 672
  SD t4, 752(sp)
  LD t4, 752(sp)
  FSW fs11, 0(t4)
  ADDI s8, sp, 676
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
  LW s2, 0(t2)
  ADDW t2, s2, s6
  LW t4, 396(sp)
  ADDW s2, t2, t4
  LD t4, 416(sp)
  ADD t2, t4, s8
  LW t1, 0(t2)
  LD t4, 424(sp)
  ADD t2, t4, s8
  LW t0, 0(t2)
  ADDW t2, t1, t0
  LW t4, 344(sp)
  ADDW t0, t2, t4
  LD t4, 680(sp)
  ADD t1, t4, s8
  LW t2, 0(t1)
  LW t4, 348(sp)
  ADDW t1, t4, t2
  LD t4, 696(sp)
  ADD t2, t4, s8
  LW ra, 0(t2)
  ADDW t2, t1, ra
  LD t4, 704(sp)
  ADD ra, t4, s8
  LW t1, 0(ra)
  LD t4, 720(sp)
  ADD ra, t4, s8
  LW s11, 0(ra)
  ADDW ra, t1, s11
  LW t4, 356(sp)
  ADDW s11, ra, t4
  LD t4, 744(sp)
  ADD ra, t4, s8
  LW t1, 0(ra)
  LD t4, 792(sp)
  ADD ra, t4, s8
  LW s10, 0(ra)
  ADDW ra, t1, s10
  LW t4, 340(sp)
  ADDW s10, ra, t4
  LD t4, 808(sp)
  ADD ra, t4, s8
  LW t1, 0(ra)
  LW t4, 336(sp)
  ADDW ra, t4, t1
  LW t4, 328(sp)
  ADDW t1, ra, t4
  LD t4, 824(sp)
  ADD ra, t4, s8
  LW s9, 0(ra)
  LW t4, 324(sp)
  ADDW ra, t4, s9
  LD t4, 832(sp)
  ADD s9, t4, s8
  LW s7, 0(s9)
  ADDW s9, ra, s7
  LD t4, 848(sp)
  ADD s7, t4, s8
  LW s8, 0(s7)
  LW t4, 352(sp)
  ADDW s7, t4, s8
  LW t4, 332(sp)
  ADDW s8, s7, t4
  ADDW s7, s8, t6
  SW s0, 600(sp)
  ADDI s0, sp, 604
  SW s2, 0(s0)
  ADDI s0, sp, 608
  SW t0, 0(s0)
  ADDI s0, sp, 612
  SW t2, 0(s0)
  ADDI s0, sp, 616
  SW s11, 0(s0)
  ADDI s0, sp, 620
  SW s10, 0(s0)
  ADDI s0, sp, 624
  SW t1, 0(s0)
  ADDI s0, sp, 628
  SW s9, 0(s0)
  ADDI s0, sp, 632
  SW s7, 0(s0)
  ADDI s0, sp, 636
  SW zero, 0(s0)
  XOR s0, t6, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb21
  # implict jump to bb20
bb20:
  FCVT.S.W fs10, t6
  FCVT.W.S s0, ft10, rtz
  FSGNJ.S fa0, fs0, fs0
  ADDI a0, sp, 600
  ADD a0, a0, zero
  ADD a1, s1, zero
  ADDI a2, sp, 640
  ADD a2, a2, zero
  FSGNJ.S fa1, fs1, fs1
  ADD a3, s3, zero
  FSGNJ.S fa2, fs2, fs2
  FSGNJ.S fa3, fs3, fs3
  ADD a4, s4, zero
  ADD a5, s5, zero
  ADD a6, s6, zero
  LW t4, 396(sp)
  ADD a7, t4, zero
  ADDI t5, sp, 0
  ADD s1, t5, zero
  LD t4, 408(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 8
  LD t4, 416(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 16
  LD t4, 424(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 24
  LW t4, 344(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 32
  LD t4, 400(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 40
  LD t4, 432(sp)
  SD t4, 0(s1)
  FSGNJ.S fa4, fs4, fs4
  FSGNJ.S fa5, fs5, fs5
  FSGNJ.S fa6, fs6, fs6
  ADDI s1, sp, 48
  LD t4, 880(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 56
  LW t4, 348(sp)
  SW t4, 0(s1)
  FSGNJ.S fa7, fs7, fs7
  ADDI s1, sp, 60
  FSW fs8, 0(s1)
  ADDI s1, sp, 64
  FSW fs9, 0(s1)
  ADDI s1, sp, 72
  LD t4, 680(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 80
  LD t4, 688(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 88
  LD t4, 696(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 96
  LD t4, 704(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 104
  LD t4, 712(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 112
  FLW ft4, 392(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 116
  FLW ft4, 388(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 120
  LD t4, 720(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 128
  LW t4, 356(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 136
  LD t4, 728(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 144
  LD t4, 736(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 152
  FLW ft4, 384(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 156
  FLW ft4, 380(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 160
  LD t4, 744(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 168
  LD t4, 792(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 176
  LW t4, 340(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 180
  LW t4, 336(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 184
  FLW ft4, 376(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 188
  FLW ft4, 372(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 192
  LD t4, 808(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 200
  LW t4, 328(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 208
  LD t4, 816(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 216
  LW t4, 324(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 224
  LD t4, 824(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 232
  LD t4, 832(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 240
  FLW ft4, 368(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 244
  FLW ft4, 364(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 248
  LD t4, 840(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 256
  LW t4, 352(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 264
  LD t4, 848(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 272
  LD t4, 856(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 280
  FLW ft4, 360(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 284
  LW t4, 332(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 288
  FLW ft4, 320(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 296
  LD t4, 864(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 304
  LD t4, 872(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 312
  FSW fs10, 0(s1)
  ADDI s1, sp, 316
  SW s0, 0(s1)
  LD t4, 408(sp)
  LD t3, 416(sp)
  LD t4, 424(sp)
  LW t3, 344(sp)
  LD t4, 400(sp)
  LD t3, 432(sp)
  LD t4, 880(sp)
  LW t3, 348(sp)
  LD t4, 680(sp)
  LD t3, 688(sp)
  LD t4, 696(sp)
  LD t3, 704(sp)
  LD t4, 712(sp)
  FLW ft4, 392(sp)
  FLW ft3, 388(sp)
  LD t3, 720(sp)
  LW t4, 356(sp)
  LD t3, 728(sp)
  LD t4, 736(sp)
  FLW ft4, 384(sp)
  FLW ft3, 380(sp)
  LD t3, 744(sp)
  LD t4, 792(sp)
  LW t3, 340(sp)
  LW t4, 336(sp)
  FLW ft4, 376(sp)
  FLW ft3, 372(sp)
  LD t3, 808(sp)
  LW t4, 328(sp)
  LD t3, 816(sp)
  LW t4, 324(sp)
  LD t3, 824(sp)
  LD t4, 832(sp)
  FLW ft4, 368(sp)
  FLW ft3, 364(sp)
  LD t3, 840(sp)
  LW t4, 352(sp)
  LD t3, 848(sp)
  LD t4, 856(sp)
  FLW ft4, 360(sp)
  LW t3, 332(sp)
  FLW ft3, 320(sp)
  LD t4, 864(sp)
  LD t3, 872(sp)
  CALL params_mix
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD s0, 440(sp)
  FLD fs5, 448(sp)
  LD ra, 456(sp)
  LD s1, 464(sp)
  LD s2, 472(sp)
  LD s3, 480(sp)
  LD s4, 488(sp)
  LD s5, 496(sp)
  LD s6, 504(sp)
  LD s7, 512(sp)
  LD s8, 520(sp)
  LD s9, 528(sp)
  LD s10, 536(sp)
  LD s11, 544(sp)
  FLD fs0, 552(sp)
  FLD fs1, 560(sp)
  FLD fs2, 568(sp)
  FLD fs3, 576(sp)
  FLD fs4, 584(sp)
  FLD fs6, 592(sp)
  FLD fs7, 760(sp)
  FLD fs8, 768(sp)
  FLD fs10, 776(sp)
  FLD fs11, 784(sp)
  FLD fs9, 800(sp)
  ADDI sp, sp, 896
  JALR zero, 0(ra)
bb21:
  ADDI a0, zero, 10
  ADDI a1, sp, 640
  ADD a1, a1, zero
  CALL putfarray
  ADDI a0, zero, 10
  ADDI a1, sp, 600
  ADD a1, a1, zero
  CALL putarray
  ADD s0, zero, zero
  # implict jump to bb22
bb22:
  ADD s1, s0, zero
  SLTI s2, s1, 10
  BNE s2, zero, bb24
  # implict jump to bb23
bb23:
  LA s2, k
  LW s3, 0(s2)
  SLLIW s2, s3, 2
  ADDI t5, sp, 600
  ADD s3, t5, s2
  LW s2, 0(s3)
  LD t4, 752(sp)
  FLW fs0, 0(t4)
  FCVT.S.W fs1, s2
  FMUL.S fs2, fs1, fs0
  FCVT.W.S s2, fs2, rtz
  ADD a0, s2, zero
  LD s0, 440(sp)
  FLD fs5, 448(sp)
  LD ra, 456(sp)
  LD s1, 464(sp)
  LD s2, 472(sp)
  LD s3, 480(sp)
  LD s4, 488(sp)
  LD s5, 496(sp)
  LD s6, 504(sp)
  LD s7, 512(sp)
  LD s8, 520(sp)
  LD s9, 528(sp)
  LD s10, 536(sp)
  LD s11, 544(sp)
  FLD fs0, 552(sp)
  FLD fs1, 560(sp)
  FLD fs2, 568(sp)
  FLD fs3, 576(sp)
  FLD fs4, 584(sp)
  FLD fs6, 592(sp)
  FLD fs7, 760(sp)
  FLD fs8, 768(sp)
  FLD fs10, 776(sp)
  FLD fs11, 784(sp)
  FLD fs9, 800(sp)
  ADDI sp, sp, 896
  JALR zero, 0(ra)
bb24:
  SLLIW s2, s1, 2
  ADDI t5, sp, 600
  ADD s3, t5, s2
  LW s4, 0(s3)
  ADDI t5, sp, 640
  ADD s5, t5, s2
  FLW fs0, 0(s5)
  FCVT.S.W fs1, s4
  FSUB.S fs2, fs1, fs0
  FCVT.W.S s2, fs2, rtz
  SW s2, 0(s3)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb22
