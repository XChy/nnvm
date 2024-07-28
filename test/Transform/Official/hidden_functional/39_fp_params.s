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
  SD ra, 368(sp)
  SD s0, 376(sp)
  SD s1, 384(sp)
  SD s2, 392(sp)
  SD s3, 400(sp)
  SD s4, 408(sp)
  SD s5, 416(sp)
  SD s6, 424(sp)
  SD s7, 432(sp)
  SD s8, 440(sp)
  SD s9, 448(sp)
  SD s11, 456(sp)
  FSD fs0, 464(sp)
  FSD fs2, 472(sp)
  FSD fs3, 480(sp)
  SD s10, 488(sp)
  FSD fs1, 496(sp)
  FSD fs4, 504(sp)
  FSD fs5, 512(sp)
  FSD fs6, 520(sp)
  FSD fs7, 528(sp)
  FSD fs8, 536(sp)
  FSD fs9, 544(sp)
  FSD fs10, 552(sp)
  FSD fs11, 560(sp)
  ADD t4, a0, zero
  SW t4, 320(sp)
  ADD s2, a1, zero
  ADD s3, a2, zero
  FSGNJ.D fs0, fa0, fa0
  ADD s4, a3, zero
  ADD s5, a4, zero
  ADD s6, a5, zero
  FSGNJ.D fs1, fa1, fa1
  FSGNJ.D fs2, fa2, fa2
  FSGNJ.D fs3, fa3, fa3
  ADD t4, a6, zero
  SW t4, 328(sp)
  FSGNJ.D fs4, fa4, fa4
  FSGNJ.D ft4, fa5, fa5
  FSW ft4, 344(sp)
  ADD s8, a7, zero
  FSGNJ.D ft4, fa6, fa6
  FSW ft4, 308(sp)
  ADDI t5, sp, 640
  ADD s9, t5, zero
  LW t4, 0(s9)
  SW t4, 352(sp)
  FSGNJ.D ft4, fa7, fa7
  FSW ft4, 340(sp)
  ADDI s10, sp, 644
  FLW fs8, 0(s10)
  ADDI s10, sp, 648
  FLW fs9, 0(s10)
  ADDI s10, sp, 652
  FLW fs10, 0(s10)
  ADDI s10, sp, 656
  FLW ft4, 0(s10)
  FSW ft4, 300(sp)
  ADDI s10, sp, 660
  FLW ft4, 0(s10)
  FSW ft4, 192(sp)
  ADDI s10, sp, 664
  LW s10, 0(s10)
  ADDI s11, sp, 668
  FLW ft4, 0(s11)
  FSW ft4, 324(sp)
  ADDI s11, sp, 672
  LW s11, 0(s11)
  ADDI ra, sp, 676
  LW t4, 0(ra)
  SW t4, 248(sp)
  ADDI t0, sp, 680
  FLW ft4, 0(t0)
  FSW ft4, 272(sp)
  ADDI t0, sp, 684
  FLW ft4, 0(t0)
  FSW ft4, 316(sp)
  ADDI t0, sp, 688
  FLW ft4, 0(t0)
  FSW ft4, 208(sp)
  ADDI t0, sp, 692
  FLW ft4, 0(t0)
  FSW ft4, 264(sp)
  ADDI t0, sp, 696
  FLW ft4, 0(t0)
  FSW ft4, 196(sp)
  ADDI t0, sp, 700
  LW t4, 0(t0)
  SW t4, 260(sp)
  ADDI t1, sp, 704
  FLW ft4, 0(t1)
  FSW ft4, 296(sp)
  ADDI t1, sp, 708
  LW t4, 0(t1)
  SW t4, 212(sp)
  ADDI t2, sp, 712
  FLW ft4, 0(t2)
  FSW ft4, 252(sp)
  ADDI t2, sp, 716
  FLW ft4, 0(t2)
  FSW ft4, 268(sp)
  ADDI t2, sp, 720
  FLW ft4, 0(t2)
  FSW ft4, 228(sp)
  ADDI t2, sp, 724
  FLW ft4, 0(t2)
  FSW ft4, 312(sp)
  ADDI t2, sp, 728
  LW t4, 0(t2)
  SW t4, 332(sp)
  ADDI t6, sp, 732
  LW t4, 0(t6)
  SW t4, 256(sp)
  ADDI s0, sp, 736
  FLW fs6, 0(s0)
  ADDI s0, sp, 740
  FLW fs11, 0(s0)
  ADDI s0, sp, 744
  FLW ft4, 0(s0)
  FSW ft4, 236(sp)
  ADDI s0, sp, 748
  LW s0, 0(s0)
  ADDI s1, sp, 752
  FLW ft4, 0(s1)
  FSW ft4, 336(sp)
  ADDI s1, sp, 756
  LW s1, 0(s1)
  ADDI s7, sp, 760
  LW s7, 0(s7)
  ADDI t2, sp, 764
  FLW ft4, 0(t2)
  FSW ft4, 288(sp)
  ADDI t2, sp, 768
  FLW ft4, 0(t2)
  FSW ft4, 240(sp)
  ADDI t2, sp, 772
  FLW fs5, 0(t2)
  ADDI t2, sp, 776
  FLW ft4, 0(t2)
  FSW ft4, 348(sp)
  ADDI t2, sp, 780
  LW t4, 0(t2)
  SW t4, 280(sp)
  ADDI s9, sp, 784
  LW t4, 0(s9)
  SW t4, 356(sp)
  ADDI s9, sp, 788
  LW t4, 0(s9)
  SW t4, 360(sp)
  ADDI s9, sp, 792
  FLW ft4, 0(s9)
  FSW ft4, 232(sp)
  ADDI s9, sp, 796
  FLW ft4, 0(s9)
  FSW ft4, 292(sp)
  ADDI s9, sp, 800
  FLW ft4, 0(s9)
  FSW ft4, 216(sp)
  ADDI s9, sp, 804
  FLW ft4, 0(s9)
  FSW ft4, 200(sp)
  ADDI s9, sp, 808
  FLW ft4, 0(s9)
  FSW ft4, 204(sp)
  ADDI s9, sp, 812
  FLW ft4, 0(s9)
  FSW ft4, 276(sp)
  ADDI s9, sp, 816
  LW t4, 0(s9)
  SW t4, 220(sp)
  ADDI t1, sp, 820
  FLW ft4, 0(t1)
  FSW ft4, 284(sp)
  ADDI t1, sp, 824
  LW t4, 0(t1)
  SW t4, 244(sp)
  ADDI s9, sp, 828
  FLW ft4, 0(s9)
  FSW ft4, 224(sp)
  LW t4, 320(sp)
  BNE t4, zero, bb2
  # implict jump to bb1
bb1:
  ADD a0, s4, zero
  ADD a1, s2, zero
  ADD a2, s3, zero
  FSGNJ.S fa0, fs0, fs0
  ADD a3, s4, zero
  ADD a4, s5, zero
  ADD a5, s6, zero
  FSGNJ.S fa1, fs1, fs1
  FSGNJ.S fa2, fs2, fs2
  FSGNJ.S fa3, fs3, fs3
  LW t4, 328(sp)
  ADD a6, t4, zero
  FSGNJ.S fa4, fs4, fs4
  FLW ft4, 344(sp)
  FLW ft3, 344(sp)
  FSGNJ.S fa5, ft4, ft3
  ADD a7, s8, zero
  FLW ft4, 308(sp)
  FLW ft3, 308(sp)
  FSGNJ.S fa6, ft4, ft3
  ADDI t5, sp, 0
  ADD s9, t5, zero
  LW t4, 352(sp)
  SW t4, 0(s9)
  FLW ft4, 340(sp)
  FLW ft3, 340(sp)
  FSGNJ.S fa7, ft4, ft3
  ADDI s9, sp, 4
  FSW fs8, 0(s9)
  ADDI s9, sp, 8
  FSW fs9, 0(s9)
  ADDI s9, sp, 12
  FSW fs10, 0(s9)
  ADDI s9, sp, 16
  FLW ft4, 300(sp)
  FSW ft4, 0(s9)
  ADDI s9, sp, 20
  FLW ft4, 192(sp)
  FSW ft4, 0(s9)
  ADDI s9, sp, 24
  SW s10, 0(s9)
  ADDI s9, sp, 28
  FLW ft4, 324(sp)
  FSW ft4, 0(s9)
  ADDI s9, sp, 32
  SW s11, 0(s9)
  ADDI s9, sp, 36
  LW t4, 248(sp)
  SW t4, 0(s9)
  ADDI s9, sp, 40
  FLW ft4, 272(sp)
  FSW ft4, 0(s9)
  ADDI s9, sp, 44
  FLW ft4, 316(sp)
  FSW ft4, 0(s9)
  ADDI s9, sp, 48
  FLW ft4, 208(sp)
  FSW ft4, 0(s9)
  ADDI s9, sp, 52
  FLW ft4, 264(sp)
  FSW ft4, 0(s9)
  ADDI s9, sp, 56
  FLW ft4, 196(sp)
  FSW ft4, 0(s9)
  ADDI s9, sp, 60
  LW t4, 260(sp)
  SW t4, 0(s9)
  ADDI s9, sp, 64
  FLW ft4, 296(sp)
  FSW ft4, 0(s9)
  ADDI s9, sp, 68
  LW t4, 212(sp)
  SW t4, 0(s9)
  ADDI s9, sp, 72
  FLW ft4, 252(sp)
  FSW ft4, 0(s9)
  ADDI s9, sp, 76
  FLW ft4, 268(sp)
  FSW ft4, 0(s9)
  ADDI s9, sp, 80
  FLW ft4, 228(sp)
  FSW ft4, 0(s9)
  ADDI s9, sp, 84
  FLW ft4, 312(sp)
  FSW ft4, 0(s9)
  ADDI s9, sp, 88
  LW t4, 332(sp)
  SW t4, 0(s9)
  ADDI s9, sp, 92
  LW t4, 256(sp)
  SW t4, 0(s9)
  ADDI s9, sp, 96
  FSW fs6, 0(s9)
  ADDI s9, sp, 100
  FSW fs11, 0(s9)
  ADDI s9, sp, 104
  FLW ft4, 236(sp)
  FSW ft4, 0(s9)
  ADDI s9, sp, 108
  SW s0, 0(s9)
  ADDI s9, sp, 112
  FLW ft4, 336(sp)
  FSW ft4, 0(s9)
  ADDI s9, sp, 116
  SW s1, 0(s9)
  ADDI s9, sp, 120
  SW s7, 0(s9)
  ADDI s9, sp, 124
  FLW ft4, 288(sp)
  FSW ft4, 0(s9)
  ADDI s9, sp, 128
  FLW ft4, 240(sp)
  FSW ft4, 0(s9)
  ADDI s9, sp, 132
  FSW fs5, 0(s9)
  ADDI s9, sp, 136
  FLW ft4, 348(sp)
  FSW ft4, 0(s9)
  ADDI s9, sp, 140
  LW t4, 280(sp)
  SW t4, 0(s9)
  ADDI s9, sp, 144
  LW t4, 356(sp)
  SW t4, 0(s9)
  ADDI s9, sp, 148
  LW t4, 360(sp)
  SW t4, 0(s9)
  ADDI s9, sp, 152
  FLW ft4, 232(sp)
  FSW ft4, 0(s9)
  ADDI s9, sp, 156
  FLW ft4, 292(sp)
  FSW ft4, 0(s9)
  ADDI s9, sp, 160
  FLW ft4, 216(sp)
  FSW ft4, 0(s9)
  ADDI s9, sp, 164
  FLW ft4, 200(sp)
  FSW ft4, 0(s9)
  ADDI s9, sp, 168
  FLW ft4, 204(sp)
  FSW ft4, 0(s9)
  ADDI s9, sp, 172
  FLW ft4, 276(sp)
  FSW ft4, 0(s9)
  ADDI s9, sp, 176
  LW t4, 220(sp)
  SW t4, 0(s9)
  ADDI s9, sp, 180
  FLW ft4, 284(sp)
  FSW ft4, 0(s9)
  ADDI s9, sp, 184
  LW t4, 244(sp)
  SW t4, 0(s9)
  ADDI s9, sp, 188
  FLW ft4, 224(sp)
  FSW ft4, 0(s9)
  LW t4, 352(sp)
  FLW ft4, 300(sp)
  FLW ft3, 192(sp)
  FLW ft4, 324(sp)
  LW t3, 248(sp)
  FLW ft3, 272(sp)
  FLW ft4, 316(sp)
  FLW ft3, 208(sp)
  FLW ft4, 264(sp)
  FLW ft3, 196(sp)
  LW t4, 260(sp)
  FLW ft4, 296(sp)
  LW t3, 212(sp)
  FLW ft3, 252(sp)
  FLW ft4, 268(sp)
  FLW ft3, 228(sp)
  FLW ft4, 312(sp)
  LW t4, 332(sp)
  LW t3, 256(sp)
  FLW ft3, 236(sp)
  FLW ft4, 336(sp)
  FLW ft3, 288(sp)
  FLW ft4, 240(sp)
  FLW ft3, 348(sp)
  LW t4, 280(sp)
  LW t3, 356(sp)
  LW t4, 360(sp)
  FLW ft4, 232(sp)
  FLW ft3, 292(sp)
  FLW ft4, 216(sp)
  FLW ft3, 200(sp)
  FLW ft4, 204(sp)
  FLW ft3, 276(sp)
  LW t3, 220(sp)
  FLW ft4, 284(sp)
  LW t4, 244(sp)
  FLW ft3, 224(sp)
  CALL params_f40_i24
  FSGNJ.D fs7, fa0, fa0
  FSGNJ.S fa0, fs7, fs7
  LD ra, 368(sp)
  LD s0, 376(sp)
  LD s1, 384(sp)
  LD s2, 392(sp)
  LD s3, 400(sp)
  LD s4, 408(sp)
  LD s5, 416(sp)
  LD s6, 424(sp)
  LD s7, 432(sp)
  LD s8, 440(sp)
  LD s9, 448(sp)
  LD s11, 456(sp)
  FLD fs0, 464(sp)
  FLD fs2, 472(sp)
  FLD fs3, 480(sp)
  LD s10, 488(sp)
  FLD fs1, 496(sp)
  FLD fs4, 504(sp)
  FLD fs5, 512(sp)
  FLD fs6, 520(sp)
  FLD fs7, 528(sp)
  FLD fs8, 536(sp)
  FLD fs9, 544(sp)
  FLD fs10, 552(sp)
  FLD fs11, 560(sp)
  ADDI sp, sp, 640
  JALR zero, 0(ra)
bb2:
  FLW ft4, 236(sp)
  FADD.S fs7, ft4, fs9
  FLW ft4, 284(sp)
  FADD.S fs7, fs7, ft4
  FADD.S fs4, fs7, fs4
  FLW ft4, 228(sp)
  FADD.S fs0, fs0, ft4
  FLW ft4, 192(sp)
  FADD.S fs0, fs0, ft4
  FADD.S fs0, fs0, fs3
  FLW ft4, 264(sp)
  FADD.S fs1, fs1, ft4
  FADD.S fs1, fs1, fs11
  FADD.S fs1, fs1, fs10
  FADD.S fs3, fs8, fs5
  FADD.S fs3, fs3, fs6
  FADD.S fs2, fs3, fs2
  FLW ft4, 268(sp)
  FLW ft3, 276(sp)
  FADD.S fs3, ft4, ft3
  FLW ft4, 232(sp)
  FADD.S fs3, fs3, ft4
  FLW ft4, 292(sp)
  FADD.S fs3, fs3, ft4
  FLW ft4, 272(sp)
  FLW ft3, 252(sp)
  FADD.S fs5, ft4, ft3
  FLW ft4, 216(sp)
  FADD.S fs5, fs5, ft4
  FLW ft4, 208(sp)
  FADD.S fs5, fs5, ft4
  FLW ft4, 240(sp)
  FLW ft3, 196(sp)
  FADD.S fs6, ft4, ft3
  FLW ft4, 200(sp)
  FADD.S fs6, fs6, ft4
  FLW ft4, 288(sp)
  FADD.S fs6, fs6, ft4
  FLW ft4, 344(sp)
  FLW ft3, 348(sp)
  FADD.S fs7, ft4, ft3
  FLW ft4, 340(sp)
  FADD.S fs7, fs7, ft4
  FLW ft4, 336(sp)
  FADD.S fs7, fs7, ft4
  FLW ft4, 324(sp)
  FLW ft3, 316(sp)
  FADD.S fs8, ft4, ft3
  FLW ft4, 312(sp)
  FADD.S fs8, fs8, ft4
  FLW ft4, 224(sp)
  FADD.S fs8, fs8, ft4
  FLW ft4, 204(sp)
  FLW ft3, 308(sp)
  FADD.S fs9, ft4, ft3
  FLW ft4, 300(sp)
  FADD.S fs9, fs9, ft4
  FLW ft4, 296(sp)
  FADD.S fs9, fs9, ft4
  FSW fs4, 568(sp)
  ADDI s9, sp, 572
  FSW fs0, 0(s9)
  ADDI s9, sp, 576
  FSW fs1, 0(s9)
  ADDI s9, sp, 580
  FSW fs2, 0(s9)
  ADDI s9, sp, 584
  FSW fs3, 0(s9)
  ADDI s9, sp, 588
  FSW fs5, 0(s9)
  ADDI s9, sp, 592
  FSW fs6, 0(s9)
  ADDI s9, sp, 596
  FSW fs7, 0(s9)
  ADDI s9, sp, 600
  FSW fs8, 0(s9)
  ADDI s9, sp, 604
  FSW fs9, 0(s9)
  ADDW s4, s8, s4
  ADDW s2, s4, s2
  LW t4, 280(sp)
  ADDW s4, t4, s5
  ADDW s4, s4, s6
  ADDW s3, s3, s10
  LW t4, 260(sp)
  ADDW s3, s3, t4
  LW t4, 256(sp)
  ADDW s5, t4, s11
  ADDW s1, s5, s1
  LW t4, 248(sp)
  ADDW s0, s0, t4
  LW t4, 244(sp)
  ADDW s0, s0, t4
  LW t4, 220(sp)
  ADDW s5, t4, s7
  LW t4, 212(sp)
  ADDW s5, s5, t4
  LW t4, 332(sp)
  LW t3, 352(sp)
  ADDW s6, t4, t3
  LW t4, 360(sp)
  ADDW s6, s6, t4
  LW t4, 356(sp)
  LW t3, 328(sp)
  ADDW s7, t4, t3
  LW t4, 320(sp)
  ADDW s7, s7, t4
  SW s2, 608(sp)
  ADDI s2, sp, 612
  SW s4, 0(s2)
  ADDI s2, sp, 616
  SW s3, 0(s2)
  ADDI s2, sp, 620
  SW s1, 0(s2)
  ADDI s1, sp, 624
  SW s0, 0(s1)
  ADDI s0, sp, 628
  SW s5, 0(s0)
  ADDI s0, sp, 632
  SW s6, 0(s0)
  ADDI s0, sp, 636
  SW s7, 0(s0)
  ADDI a0, zero, 10
  ADDI a1, sp, 568
  ADD a1, a1, zero
  CALL putfarray
  ADDI a0, zero, 8
  ADDI a1, sp, 608
  ADD a1, a1, zero
  CALL putarray
  SLTI s0, zero, 8
  BNE s0, zero, bb4
  # implict jump to bb3
bb3:
  LA s1, k
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADDI t5, sp, 608
  ADD s1, t5, s1
  LW s1, 0(s1)
  FCVT.S.W fs0, s1
  FSGNJ.S fa0, fs0, fs0
  LD ra, 368(sp)
  LD s0, 376(sp)
  LD s1, 384(sp)
  LD s2, 392(sp)
  LD s3, 400(sp)
  LD s4, 408(sp)
  LD s5, 416(sp)
  LD s6, 424(sp)
  LD s7, 432(sp)
  LD s8, 440(sp)
  LD s9, 448(sp)
  LD s11, 456(sp)
  FLD fs0, 464(sp)
  FLD fs2, 472(sp)
  FLD fs3, 480(sp)
  LD s10, 488(sp)
  FLD fs1, 496(sp)
  FLD fs4, 504(sp)
  FLD fs5, 512(sp)
  FLD fs6, 520(sp)
  FLD fs7, 528(sp)
  FLD fs8, 536(sp)
  FLD fs9, 544(sp)
  FLD fs10, 552(sp)
  FLD fs11, 560(sp)
  ADDI sp, sp, 640
  JALR zero, 0(ra)
bb4:
  # implict jump to bb5
bb5:
  ADD s0, zero, zero
  # implict jump to bb6
bb6:
  ADD s1, s0, zero
  SLLIW s2, s1, 2
  ADDI t5, sp, 608
  ADD s3, t5, s2
  LW s4, 0(s3)
  ADDI t5, sp, 568
  ADD s2, t5, s2
  FLW fs0, 0(s2)
  FCVT.S.W fs1, s4
  FSUB.S fs0, fs1, fs0
  FCVT.W.S s2, fs0, rtz
  SW s2, 0(s3)
  ADDIW t4, s1, 1
  SW t4, 304(sp)
  # implict jump to bb7
bb7:
  LW t4, 304(sp)
  SLTI s1, t4, 8
  BNE s1, zero, bb8
  JAL zero, bb3
bb8:
  LW t4, 304(sp)
  ADD s0, t4, zero
  JAL zero, bb6
main:
  LUI t0, 1048575
  ADDIW t0, t0, 1952
  ADD sp, sp, t0
  SD ra, 672(sp)
  SD s0, 680(sp)
  SD s1, 688(sp)
  SD s2, 696(sp)
  SD s3, 704(sp)
  SD s7, 712(sp)
  SD s9, 720(sp)
  SD s10, 728(sp)
  SD s11, 736(sp)
  FSD fs2, 744(sp)
  FSD fs4, 752(sp)
  FSD fs5, 760(sp)
  FSD fs6, 768(sp)
  FSD fs7, 776(sp)
  FSD fs9, 784(sp)
  FSD fs10, 792(sp)
  SD s6, 800(sp)
  SD s4, 848(sp)
  SD s5, 856(sp)
  SD s8, 888(sp)
  FSD fs0, 896(sp)
  FSD fs1, 904(sp)
  FSD fs3, 912(sp)
  FSD fs8, 920(sp)
  FSD fs11, 928(sp)
  CALL getint
  ADD s2, a0, zero
  LA s3, k
  SW s2, 0(s3)
  SLTI s2, zero, 40
  BNE s2, zero, bb17
  # implict jump to bb10
bb10:
  SLTI s3, zero, 24
  BNE s3, zero, bb12
  # implict jump to bb11
bb11:
  LA s4, k
  LW s4, 0(s4)
  SLLIW s4, s4, 2
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
  SD t4, 1872(sp)
  LD t4, 1872(sp)
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
  ADD s2, t4, s4
  FLW fs7, 0(s2)
  ADDI t4, sp, 1464
  SD t4, 1008(sp)
  LD t4, 1008(sp)
  ADD s0, t4, s4
  FLW fs8, 0(s0)
  ADDI t4, sp, 1476
  LUI t5, 1
  ADDIW t5, t5, -1976
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1976
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s3, t4, s4
  FLW fs9, 0(s3)
  ADDI t4, sp, 1488
  LUI t5, 1
  ADDIW t5, t5, -1992
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1992
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s1, t4, s4
  FLW fs10, 0(s1)
  ADDI t4, sp, 1500
  LUI t5, 1
  ADDIW t5, t5, -2000
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -2000
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s2, t4, s4
  FLW fs11, 0(s2)
  ADDI t4, sp, 1512
  SD t4, 944(sp)
  LD t4, 944(sp)
  ADD s2, t4, s4
  FLW ft4, 0(s2)
  FSW ft4, 592(sp)
  ADDI t4, sp, 1524
  LUI t5, 1
  ADDIW t5, t5, -2008
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -2008
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s11, t4, s4
  FLW ft4, 0(s11)
  FSW ft4, 588(sp)
  ADDI t4, sp, 1536
  SD t4, 2000(sp)
  LD t4, 2000(sp)
  ADD s10, t4, s4
  FLW ft4, 0(s10)
  FSW ft4, 584(sp)
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
  FSW ft4, 544(sp)
  ADDI t4, sp, 1560
  SD t4, 976(sp)
  LD t4, 976(sp)
  ADD s9, t4, s4
  FLW ft4, 0(s9)
  FSW ft4, 576(sp)
  ADDI t4, sp, 1572
  SD t4, 984(sp)
  LD t4, 984(sp)
  ADD s9, t4, s4
  FLW ft4, 0(s9)
  FSW ft4, 572(sp)
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
  FSW ft4, 568(sp)
  ADDI t4, sp, 1596
  SD t4, 1000(sp)
  LD t4, 1000(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 560(sp)
  ADDI t4, sp, 1608
  SD t4, 936(sp)
  LD t4, 936(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 552(sp)
  ADDI t4, sp, 1620
  SD t4, 1016(sp)
  LD t4, 1016(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 652(sp)
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
  FSW ft4, 644(sp)
  ADDI t4, sp, 1656
  SD t4, 1040(sp)
  LD t4, 1040(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 640(sp)
  ADDI t4, sp, 1668
  SD t4, 1048(sp)
  LD t4, 1048(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 636(sp)
  ADDI t4, sp, 1680
  SD t4, 1056(sp)
  LD t4, 1056(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 628(sp)
  ADDI t4, sp, 1692
  SD t4, 1064(sp)
  LD t4, 1064(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 620(sp)
  ADDI t4, sp, 1704
  SD t4, 1072(sp)
  LD t4, 1072(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 616(sp)
  ADDI t4, sp, 1716
  SD t4, 1848(sp)
  LD t4, 1848(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 424(sp)
  ADDI t4, sp, 1728
  SD t4, 2008(sp)
  LD t4, 2008(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 488(sp)
  ADDI t4, sp, 1740
  SD t4, 2016(sp)
  LD t4, 2016(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 412(sp)
  ADDI t4, sp, 1752
  SD t4, 2024(sp)
  LD t4, 2024(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 404(sp)
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
  FSW ft4, 392(sp)
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
  FSW ft4, 384(sp)
  ADDI t4, sp, 1800
  SD t4, 1952(sp)
  LD t4, 1952(sp)
  ADD s9, t4, s4
  FLW ft4, 0(s9)
  FSW ft4, 380(sp)
  ADDI t4, sp, 1812
  SD t4, 1936(sp)
  LD t4, 1936(sp)
  ADD s10, t4, s4
  FLW ft4, 0(s10)
  FSW ft4, 372(sp)
  ADDI t4, sp, 1824
  SD t4, 1920(sp)
  LD t4, 1920(sp)
  ADD s11, t4, s4
  FLW ft4, 0(s11)
  FSW ft4, 364(sp)
  ADDI t4, sp, 1836
  SD t4, 1912(sp)
  LD t4, 1912(sp)
  ADD s4, t4, s4
  FLW ft4, 0(s4)
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
  ADD s4, t5, zero
  FSW fs8, 0(s4)
  ADDI s4, sp, 4
  FSW fs9, 0(s4)
  ADDI s4, sp, 8
  FSW fs10, 0(s4)
  ADDI s4, sp, 12
  FSW fs11, 0(s4)
  ADDI s4, sp, 16
  FLW ft4, 592(sp)
  FSW ft4, 0(s4)
  ADDI s4, sp, 20
  FLW ft4, 588(sp)
  FSW ft4, 0(s4)
  ADDI s4, sp, 24
  FLW ft4, 584(sp)
  FSW ft4, 0(s4)
  ADDI s4, sp, 28
  FLW ft4, 544(sp)
  FSW ft4, 0(s4)
  ADDI s4, sp, 32
  FLW ft4, 576(sp)
  FSW ft4, 0(s4)
  ADDI s4, sp, 36
  FLW ft4, 572(sp)
  FSW ft4, 0(s4)
  ADDI s4, sp, 40
  FLW ft4, 568(sp)
  FSW ft4, 0(s4)
  ADDI s4, sp, 44
  FLW ft4, 560(sp)
  FSW ft4, 0(s4)
  ADDI s4, sp, 48
  FLW ft4, 552(sp)
  FSW ft4, 0(s4)
  ADDI s4, sp, 52
  FLW ft4, 652(sp)
  FSW ft4, 0(s4)
  ADDI s4, sp, 56
  FLW ft4, 656(sp)
  FSW ft4, 0(s4)
  ADDI s4, sp, 60
  FLW ft4, 644(sp)
  FSW ft4, 0(s4)
  ADDI s4, sp, 64
  FLW ft4, 640(sp)
  FSW ft4, 0(s4)
  ADDI s4, sp, 68
  FLW ft4, 636(sp)
  FSW ft4, 0(s4)
  ADDI s4, sp, 72
  FLW ft4, 628(sp)
  FSW ft4, 0(s4)
  ADDI s4, sp, 76
  FLW ft4, 620(sp)
  FSW ft4, 0(s4)
  ADDI s4, sp, 80
  FLW ft4, 616(sp)
  FSW ft4, 0(s4)
  ADDI s4, sp, 84
  FLW ft4, 424(sp)
  FSW ft4, 0(s4)
  ADDI s4, sp, 88
  FLW ft4, 488(sp)
  FSW ft4, 0(s4)
  ADDI s4, sp, 92
  FLW ft4, 412(sp)
  FSW ft4, 0(s4)
  ADDI s4, sp, 96
  FLW ft4, 404(sp)
  FSW ft4, 0(s4)
  ADDI s4, sp, 100
  FLW ft4, 400(sp)
  FSW ft4, 0(s4)
  ADDI s4, sp, 104
  FLW ft4, 392(sp)
  FSW ft4, 0(s4)
  ADDI s4, sp, 108
  FLW ft4, 384(sp)
  FSW ft4, 0(s4)
  ADDI s4, sp, 112
  FLW ft4, 380(sp)
  FSW ft4, 0(s4)
  ADDI s4, sp, 116
  FLW ft4, 372(sp)
  FSW ft4, 0(s4)
  ADDI s4, sp, 120
  FLW ft4, 364(sp)
  FSW ft4, 0(s4)
  ADDI s4, sp, 124
  FLW ft4, 360(sp)
  FSW ft4, 0(s4)
  FLW ft4, 592(sp)
  FLW ft3, 588(sp)
  FLW ft4, 584(sp)
  FLW ft3, 544(sp)
  FLW ft4, 576(sp)
  FLW ft3, 572(sp)
  FLW ft4, 568(sp)
  FLW ft3, 560(sp)
  FLW ft4, 552(sp)
  FLW ft3, 652(sp)
  FLW ft4, 656(sp)
  FLW ft3, 644(sp)
  FLW ft4, 640(sp)
  FLW ft3, 636(sp)
  FLW ft4, 628(sp)
  FLW ft3, 620(sp)
  FLW ft4, 616(sp)
  FLW ft3, 424(sp)
  FLW ft4, 488(sp)
  FLW ft3, 412(sp)
  FLW ft4, 404(sp)
  FLW ft3, 400(sp)
  FLW ft4, 392(sp)
  FLW ft3, 384(sp)
  FLW ft4, 380(sp)
  FLW ft3, 372(sp)
  FLW ft4, 364(sp)
  FLW ft3, 360(sp)
  CALL params_f40
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 528(sp)
  ADDI t4, sp, 1356
  LUI t5, 1
  ADDIW t5, t5, -2016
  ADD t5, t5, sp
  SD t4, 0(t5)
  LA s4, k
  LW s4, 0(s4)
  SLLIW s4, s4, 2
  LUI t4, 1
  ADDIW t4, t4, -2016
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s2, t4, s4
  LW s2, 0(s2)
  ADDI t4, sp, 1104
  SD t4, 1888(sp)
  LD t4, 1888(sp)
  ADD s3, t4, s4
  LW s3, 0(s3)
  ADDI t4, sp, 1152
  LUI t5, 1
  ADDIW t5, t5, -1984
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s0, t4, s4
  LW s0, 0(s0)
  LUI t4, 1
  ADDIW t4, t4, -1968
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s8, t4, s4
  FLW fs1, 0(s8)
  ADDI t4, sp, 1092
  SD t4, 1928(sp)
  LD t4, 1928(sp)
  ADD s8, t4, s4
  LW s8, 0(s8)
  ADDI t4, sp, 1128
  SD t4, 1864(sp)
  LD t4, 1864(sp)
  ADD s7, t4, s4
  LW s7, 0(s7)
  ADDI t4, sp, 1140
  SD t4, 1880(sp)
  LD t4, 1880(sp)
  ADD s1, t4, s4
  LW s1, 0(s1)
  LD t4, 1008(sp)
  ADD s6, t4, s4
  FLW fs2, 0(s6)
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s4
  FLW fs3, 0(s6)
  LD t4, 952(sp)
  ADD s6, t4, s4
  FLW fs4, 0(s6)
  ADDI t4, sp, 1344
  SD t4, 1904(sp)
  LD t4, 1904(sp)
  ADD s6, t4, s4
  LW s6, 0(s6)
  LD t4, 1872(sp)
  ADD s11, t4, s4
  FLW fs5, 0(s11)
  LD t4, 1072(sp)
  ADD s11, t4, s4
  FLW fs6, 0(s11)
  ADDI t5, sp, 1080
  ADD s11, t5, s4
  LW s11, 0(s11)
  LD t4, 1936(sp)
  ADD s10, t4, s4
  FLW fs7, 0(s10)
  ADDI t4, sp, 1308
  SD t4, 1856(sp)
  LD t4, 1856(sp)
  ADD s10, t4, s4
  LW s10, 0(s10)
  LD t4, 2008(sp)
  ADD s9, t4, s4
  FLW fs8, 0(s9)
  LD t4, 944(sp)
  ADD s9, t4, s4
  FLW fs9, 0(s9)
  LD t4, 992(sp)
  ADD s9, t4, s4
  FLW fs10, 0(s9)
  LUI t4, 1
  ADDIW t4, t4, -2000
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s9, t4, s4
  FLW fs11, 0(s9)
  LD t4, 1920(sp)
  ADD s9, t4, s4
  FLW fs0, 0(s9)
  LD t4, 960(sp)
  ADD s9, t4, s4
  FLW ft4, 0(s9)
  FSW ft4, 524(sp)
  ADDI t4, sp, 1164
  SD t4, 1944(sp)
  LD t4, 1944(sp)
  ADD s9, t4, s4
  LW s9, 0(s9)
  LD t4, 2024(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 512(sp)
  ADDI t4, sp, 1200
  SD t4, 1960(sp)
  LD t4, 1960(sp)
  ADD s5, t4, s4
  LW t4, 0(s5)
  SW t4, 504(sp)
  ADDI t4, sp, 1236
  SD t4, 1968(sp)
  LD t4, 1968(sp)
  ADD s5, t4, s4
  LW t4, 0(s5)
  SW t4, 500(sp)
  LD t4, 936(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 496(sp)
  LD t4, 2032(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 492(sp)
  LD t4, 1032(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 432(sp)
  LUI t4, 1
  ADDIW t4, t4, -1976
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 484(sp)
  LD t4, 1048(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 480(sp)
  ADDI t4, sp, 1176
  SD t4, 1976(sp)
  LD t4, 1976(sp)
  ADD s5, t4, s4
  LW t4, 0(s5)
  SW t4, 472(sp)
  LD t4, 1912(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 468(sp)
  ADDI t4, sp, 1284
  SD t4, 1984(sp)
  LD t4, 1984(sp)
  ADD s5, t4, s4
  LW t4, 0(s5)
  SW t4, 460(sp)
  LD t4, 1016(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 456(sp)
  LD t4, 976(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 452(sp)
  LD t4, 968(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 448(sp)
  LD t4, 2040(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 444(sp)
  ADDI t4, sp, 1296
  SD t4, 1992(sp)
  LD t4, 1992(sp)
  ADD s5, t4, s4
  LW t4, 0(s5)
  SW t4, 436(sp)
  ADDI t4, sp, 1188
  LUI t5, 1
  ADDIW t5, t5, -2024
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -2024
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s5, t4, s4
  LW t4, 0(s5)
  SW t4, 440(sp)
  LD t4, 2000(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 464(sp)
  LUI t4, 1
  ADDIW t4, t4, -1992
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 476(sp)
  ADDI t5, sp, 1368
  ADD s5, t5, s4
  FLW ft4, 0(s5)
  FSW ft4, 508(sp)
  ADDI t4, sp, 1224
  SD t4, 864(sp)
  LD t4, 864(sp)
  ADD s5, t4, s4
  LW t4, 0(s5)
  SW t4, 516(sp)
  LD t4, 2016(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 520(sp)
  ADDI t4, sp, 1212
  SD t4, 880(sp)
  LD t4, 880(sp)
  ADD s5, t4, s4
  LW t4, 0(s5)
  SW t4, 532(sp)
  ADDI t4, sp, 1272
  SD t4, 872(sp)
  LD t4, 872(sp)
  ADD s5, t4, s4
  LW t4, 0(s5)
  SW t4, 536(sp)
  LD t4, 1064(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 540(sp)
  LD t4, 1040(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 376(sp)
  LUI t4, 1
  ADDIW t4, t4, -2008
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 324(sp)
  LD t4, 1848(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 328(sp)
  ADDI t4, sp, 1116
  SD t4, 840(sp)
  LD t4, 840(sp)
  ADD s5, t4, s4
  LW t4, 0(s5)
  SW t4, 332(sp)
  ADDI t4, sp, 1332
  SD t4, 832(sp)
  LD t4, 832(sp)
  ADD s5, t4, s4
  LW t4, 0(s5)
  SW t4, 336(sp)
  ADDI t4, sp, 1320
  SD t4, 824(sp)
  LD t4, 824(sp)
  ADD s5, t4, s4
  LW t4, 0(s5)
  SW t4, 340(sp)
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 344(sp)
  LD t4, 1000(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 348(sp)
  LD t4, 1024(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 352(sp)
  LD t4, 1056(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 356(sp)
  LD t4, 1952(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 368(sp)
  LD t4, 984(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 320(sp)
  ADDI t4, sp, 1260
  SD t4, 808(sp)
  LD t4, 808(sp)
  ADD s5, t4, s4
  LW t4, 0(s5)
  SW t4, 388(sp)
  LD t4, 1896(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 396(sp)
  ADDI t4, sp, 1248
  SD t4, 816(sp)
  LD t4, 816(sp)
  ADD s5, t4, s4
  LW s5, 0(s5)
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s4, t4, s4
  FLW ft4, 0(s4)
  FSW ft4, 408(sp)
  ADD a0, s2, zero
  ADD a1, s3, zero
  ADD a2, s0, zero
  FSGNJ.S fa0, fs1, fs1
  ADD a3, s8, zero
  ADD a4, s7, zero
  ADD a5, s1, zero
  FSGNJ.S fa1, fs2, fs2
  FSGNJ.S fa2, fs3, fs3
  FSGNJ.S fa3, fs4, fs4
  ADD a6, s6, zero
  FSGNJ.S fa4, fs5, fs5
  FSGNJ.S fa5, fs6, fs6
  ADD a7, s11, zero
  FSGNJ.S fa6, fs7, fs7
  ADDI t5, sp, 0
  ADD s0, t5, zero
  SW s10, 0(s0)
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
  FLW ft4, 524(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 24
  SW s9, 0(s0)
  ADDI s0, sp, 28
  FLW ft4, 512(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 32
  LW t4, 504(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 36
  LW t4, 500(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 40
  FLW ft4, 496(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 44
  FLW ft4, 492(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 48
  FLW ft4, 432(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 52
  FLW ft4, 484(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 56
  FLW ft4, 480(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 60
  LW t4, 472(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 64
  FLW ft4, 468(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 68
  LW t4, 460(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 72
  FLW ft4, 456(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 76
  FLW ft4, 452(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 80
  FLW ft4, 448(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 84
  FLW ft4, 444(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 88
  LW t4, 436(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 92
  LW t4, 440(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 96
  FLW ft4, 464(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 100
  FLW ft4, 476(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 104
  FLW ft4, 508(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 108
  LW t4, 516(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 112
  FLW ft4, 520(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 116
  LW t4, 532(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 120
  LW t4, 536(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 124
  FLW ft4, 540(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 128
  FLW ft4, 376(sp)
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
  FLW ft4, 368(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 172
  FLW ft4, 320(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 176
  LW t4, 388(sp)
  SW t4, 0(s0)
  ADDI s0, sp, 180
  FLW ft4, 396(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 184
  SW s5, 0(s0)
  ADDI s0, sp, 188
  FLW ft4, 408(sp)
  FSW ft4, 0(s0)
  FLW ft4, 524(sp)
  FLW ft3, 512(sp)
  LW t4, 504(sp)
  LW t3, 500(sp)
  FLW ft4, 496(sp)
  FLW ft3, 492(sp)
  FLW ft4, 432(sp)
  FLW ft3, 484(sp)
  FLW ft4, 480(sp)
  LW t4, 472(sp)
  FLW ft3, 468(sp)
  LW t3, 460(sp)
  FLW ft4, 456(sp)
  FLW ft3, 452(sp)
  FLW ft4, 448(sp)
  FLW ft3, 444(sp)
  LW t4, 436(sp)
  LW t3, 440(sp)
  FLW ft4, 464(sp)
  FLW ft3, 476(sp)
  FLW ft4, 508(sp)
  LW t4, 516(sp)
  FLW ft3, 520(sp)
  LW t3, 532(sp)
  LW t4, 536(sp)
  FLW ft4, 540(sp)
  FLW ft3, 376(sp)
  FLW ft4, 324(sp)
  FLW ft3, 328(sp)
  LW t3, 332(sp)
  LW t4, 336(sp)
  LW t3, 340(sp)
  FLW ft4, 344(sp)
  FLW ft3, 348(sp)
  FLW ft4, 352(sp)
  FLW ft3, 356(sp)
  FLW ft4, 368(sp)
  FLW ft3, 320(sp)
  LW t4, 388(sp)
  FLW ft4, 396(sp)
  FLW ft3, 408(sp)
  CALL params_f40_i24
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 420(sp)
  ADDI a0, sp, 1368
  ADD a0, a0, zero
  LD t4, 992(sp)
  ADD a1, t4, zero
  LD t4, 1896(sp)
  ADD a2, t4, zero
  LD t4, 1872(sp)
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
  ADDIW t4, t4, -1976
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
  ADDIW t4, t4, -2008
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
  ADDIW t3, t3, -1976
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
  ADDIW t3, t3, -2008
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
  FSW ft4, 416(sp)
  LA s0, k
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADDI t5, sp, 1368
  ADD s1, t5, s0
  FLW fs2, 0(s1)
  LD t4, 1928(sp)
  ADD s1, t4, s0
  LW s1, 0(s1)
  LD t4, 1896(sp)
  ADD s2, t4, s0
  FLW fs3, 0(s2)
  LD t4, 1888(sp)
  ADD s2, t4, s0
  LW s2, 0(s2)
  LD t4, 1872(sp)
  ADD s3, t4, s0
  FLW fs4, 0(s3)
  LUI t4, 1
  ADDIW t4, t4, -1968
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s3, t4, s0
  FLW fs5, 0(s3)
  LD t4, 1864(sp)
  ADD s3, t4, s0
  LW s3, 0(s3)
  LD t4, 1880(sp)
  ADD s4, t4, s0
  LW s4, 0(s4)
  LD t4, 1976(sp)
  ADD s5, t4, s0
  LW s5, 0(s5)
  LUI t4, 1
  ADDIW t4, t4, -1976
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s0
  FLW fs6, 0(s6)
  LUI t4, 1
  ADDIW t4, t4, -1992
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s0
  FLW fs7, 0(s6)
  LUI t4, 1
  ADDIW t4, t4, -2000
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s0
  FLW fs8, 0(s6)
  LUI t4, 1
  ADDIW t4, t4, -2024
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s6, t4, s0
  LW s6, 0(s6)
  LUI t4, 1
  ADDIW t4, t4, -2008
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s7, t4, s0
  FLW fs9, 0(s7)
  LD t4, 2000(sp)
  ADD s7, t4, s0
  FLW fs10, 0(s7)
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s7, t4, s0
  FLW fs11, 0(s7)
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s7, t4, s0
  FLW fs1, 0(s7)
  LD t4, 1000(sp)
  ADD s7, t4, s0
  FLW fs0, 0(s7)
  LD t4, 816(sp)
  ADD s7, t4, s0
  LW s7, 0(s7)
  LD t4, 1024(sp)
  ADD s8, t4, s0
  FLW ft4, 0(s8)
  FSW ft4, 428(sp)
  LD t4, 1032(sp)
  ADD s8, t4, s0
  FLW ft4, 0(s8)
  FSW ft4, 580(sp)
  LD t4, 1984(sp)
  ADD s8, t4, s0
  LW s8, 0(s8)
  LD t4, 1992(sp)
  ADD s9, t4, s0
  LW s9, 0(s9)
  LD t4, 1040(sp)
  ADD s10, t4, s0
  FLW ft4, 0(s10)
  FSW ft4, 624(sp)
  LD t4, 1048(sp)
  ADD s10, t4, s0
  FLW ft4, 0(s10)
  FSW ft4, 632(sp)
  LD t4, 824(sp)
  ADD s10, t4, s0
  LW s10, 0(s10)
  LD t4, 832(sp)
  ADD s11, t4, s0
  LW t4, 0(s11)
  SW t4, 612(sp)
  LD t4, 1064(sp)
  ADD s11, t4, s0
  FLW ft4, 0(s11)
  FSW ft4, 664(sp)
  LD t4, 1072(sp)
  ADD s11, t4, s0
  FLW ft4, 0(s11)
  FSW ft4, 660(sp)
  ADDI t5, sp, 1080
  ADD s11, t5, s0
  LW t4, 0(s11)
  SW t4, 648(sp)
  LD t4, 2016(sp)
  ADD s11, t4, s0
  FLW ft4, 0(s11)
  FSW ft4, 548(sp)
  LD t4, 2024(sp)
  ADD s11, t4, s0
  FLW ft4, 0(s11)
  FSW ft4, 556(sp)
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s11, t4, s0
  FLW ft4, 0(s11)
  FSW ft4, 564(sp)
  LD t4, 840(sp)
  ADD s0, t4, s0
  LW s0, 0(s0)
  FSGNJ.S fa0, fs2, fs2
  ADDI a0, sp, 1080
  ADD a0, a0, zero
  ADD a1, s1, zero
  LD t4, 992(sp)
  ADD a2, t4, zero
  FSGNJ.S fa1, fs3, fs3
  ADD a3, s2, zero
  FSGNJ.S fa2, fs4, fs4
  FSGNJ.S fa3, fs5, fs5
  LD t4, 968(sp)
  ADD a4, t4, zero
  LD t4, 840(sp)
  ADD a5, t4, zero
  ADD a6, s3, zero
  ADD a7, s4, zero
  ADDI t5, sp, 0
  ADD s1, t5, zero
  LD t4, 960(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 8
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s1)
  ADDI s1, sp, 16
  LD t4, 1944(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 24
  SW s5, 0(s1)
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
  SW s6, 0(s1)
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
  LD t4, 880(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 96
  LD t4, 864(sp)
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
  SW s7, 0(s1)
  ADDI s1, sp, 136
  LD t4, 936(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 144
  LD t4, 1016(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 152
  FLW ft4, 428(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 156
  FLW ft4, 580(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 160
  LD t4, 808(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 168
  LD t4, 872(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 176
  SW s8, 0(s1)
  ADDI s1, sp, 180
  SW s9, 0(s1)
  ADDI s1, sp, 184
  FLW ft4, 624(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 188
  FLW ft4, 632(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 192
  LD t4, 1856(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 200
  SW s10, 0(s1)
  ADDI s1, sp, 208
  LD t4, 1056(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 216
  LW t4, 612(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 224
  LD t4, 1904(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 232
  LUI t4, 1
  ADDIW t4, t4, -2016
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s1)
  ADDI s1, sp, 240
  FLW ft4, 664(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 244
  FLW ft4, 660(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 248
  LD t4, 1848(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 256
  LW t4, 648(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 264
  LD t4, 1928(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 272
  LD t4, 2008(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 280
  FLW ft4, 548(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 284
  SW s2, 0(s1)
  ADDI s1, sp, 288
  FLW ft4, 556(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 296
  LD t4, 2032(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 304
  LD t4, 2040(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 312
  FLW ft4, 564(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 316
  SW s0, 0(s1)
  LD t4, 960(sp)
  LUI t3, 1
  ADDIW t3, t3, -1984
  ADD t3, t3, sp
  LD t3, 0(t3)
  LD t4, 1944(sp)
  LD t3, 952(sp)
  LD t4, 1008(sp)
  LD t3, 944(sp)
  LD t4, 1960(sp)
  LD t3, 976(sp)
  LD t4, 880(sp)
  LD t3, 864(sp)
  LD t4, 984(sp)
  LD t3, 1968(sp)
  LD t4, 936(sp)
  LD t3, 1016(sp)
  FLW ft4, 428(sp)
  FLW ft3, 580(sp)
  LD t4, 808(sp)
  LD t3, 872(sp)
  FLW ft4, 624(sp)
  FLW ft3, 632(sp)
  LD t4, 1856(sp)
  LD t3, 1056(sp)
  LW t4, 612(sp)
  LD t3, 1904(sp)
  LUI t4, 1
  ADDIW t4, t4, -2016
  ADD t4, t4, sp
  LD t4, 0(t4)
  FLW ft4, 664(sp)
  FLW ft3, 660(sp)
  LD t3, 1848(sp)
  LW t4, 648(sp)
  LD t3, 1928(sp)
  LD t4, 2008(sp)
  FLW ft4, 548(sp)
  FLW ft3, 556(sp)
  LD t3, 2032(sp)
  LD t4, 2040(sp)
  FLW ft4, 564(sp)
  CALL params_mix
  ADD s0, a0, zero
  FLW ft4, 528(sp)
  FLW ft3, 528(sp)
  FSGNJ.S fa0, ft4, ft3
  CALL putfloat
  ADDI a0, zero, 10
  CALL putch
  FLW ft4, 420(sp)
  FLW ft3, 420(sp)
  FSGNJ.S fa0, ft4, ft3
  CALL putfloat
  ADDI a0, zero, 10
  CALL putch
  FLW ft4, 416(sp)
  FLW ft3, 416(sp)
  FSGNJ.S fa0, ft4, ft3
  CALL putfloat
  ADDI a0, zero, 10
  CALL putch
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 672(sp)
  LD s0, 680(sp)
  LD s1, 688(sp)
  LD s2, 696(sp)
  LD s3, 704(sp)
  LD s7, 712(sp)
  LD s9, 720(sp)
  LD s10, 728(sp)
  LD s11, 736(sp)
  FLD fs2, 744(sp)
  FLD fs4, 752(sp)
  FLD fs5, 760(sp)
  FLD fs6, 768(sp)
  FLD fs7, 776(sp)
  FLD fs9, 784(sp)
  FLD fs10, 792(sp)
  LD s6, 800(sp)
  LD s4, 848(sp)
  LD s5, 856(sp)
  LD s8, 888(sp)
  FLD fs0, 896(sp)
  FLD fs1, 904(sp)
  FLD fs3, 912(sp)
  FLD fs8, 920(sp)
  FLD fs11, 928(sp)
  LUI t0, 1
  ADDIW t0, t0, -1952
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb12:
  # implict jump to bb13
bb13:
  ADD t4, zero, zero
  SW t4, 600(sp)
  # implict jump to bb14
bb14:
  LW t4, 600(sp)
  ADD s4, t4, zero
  ADDI s5, zero, 12
  MULW s5, s4, s5
  ADDI a0, sp, 1080
  ADD s5, a0, s5
  ADD a0, s5, zero
  CALL getarray
  ADDIW t4, s4, 1
  SW t4, 596(sp)
  # implict jump to bb15
bb15:
  LW t4, 596(sp)
  SLTI s4, t4, 24
  BNE s4, zero, bb16
  JAL zero, bb11
bb16:
  LW t3, 596(sp)
  ADD t4, t3, zero
  SW t4, 600(sp)
  JAL zero, bb14
bb17:
  # implict jump to bb18
bb18:
  ADD t4, zero, zero
  SW t4, 608(sp)
  # implict jump to bb19
bb19:
  LW t4, 608(sp)
  ADD s3, t4, zero
  ADDI s4, zero, 12
  MULW s4, s3, s4
  ADDI a0, sp, 1368
  ADD s4, a0, s4
  ADD a0, s4, zero
  CALL getfarray
  ADDIW t4, s3, 1
  SW t4, 604(sp)
  # implict jump to bb20
bb20:
  LW t4, 604(sp)
  SLTI s3, t4, 40
  BNE s3, zero, bb21
  JAL zero, bb10
bb21:
  LW t3, 604(sp)
  ADD t4, t3, zero
  SW t4, 608(sp)
  JAL zero, bb19
params_fa40:
  ADDI sp, sp, -720
  SD ra, 256(sp)
  SD s4, 288(sp)
  SD s0, 304(sp)
  SD s1, 312(sp)
  SD s2, 320(sp)
  SD s3, 328(sp)
  SD s5, 336(sp)
  SD s6, 344(sp)
  SD s7, 352(sp)
  SD s8, 360(sp)
  SD s9, 368(sp)
  SD s10, 376(sp)
  SD s11, 384(sp)
  FSD fs0, 392(sp)
  FSD fs1, 400(sp)
  FSD fs2, 408(sp)
  FSD fs3, 416(sp)
  FSD fs4, 424(sp)
  FSD fs5, 432(sp)
  FSD fs6, 440(sp)
  FSD fs7, 448(sp)
  FSD fs8, 456(sp)
  FSD fs9, 464(sp)
  FSD fs10, 472(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  ADD s6, a6, zero
  ADD s7, a7, zero
  ADDI t5, sp, 720
  ADD s8, t5, zero
  LD s8, 0(s8)
  ADDI s9, sp, 728
  LD s9, 0(s9)
  ADDI s10, sp, 736
  LD s10, 0(s10)
  ADDI s11, sp, 744
  LD s11, 0(s11)
  ADDI ra, sp, 752
  LD t4, 0(ra)
  SD t4, 272(sp)
  ADDI t0, sp, 760
  LD t4, 0(t0)
  SD t4, 296(sp)
  ADDI t1, sp, 768
  LD t4, 0(t1)
  SD t4, 264(sp)
  ADDI t2, sp, 776
  LD t4, 0(t2)
  SD t4, 280(sp)
  ADDI t6, sp, 784
  LD t4, 0(t6)
  SD t4, 528(sp)
  ADDI t6, sp, 792
  LD t4, 0(t6)
  SD t4, 536(sp)
  ADDI t6, sp, 800
  LD t4, 0(t6)
  SD t4, 544(sp)
  ADDI t6, sp, 808
  LD t4, 0(t6)
  SD t4, 552(sp)
  ADDI t6, sp, 816
  LD t4, 0(t6)
  SD t4, 560(sp)
  ADDI t6, sp, 824
  LD t4, 0(t6)
  SD t4, 568(sp)
  ADDI t6, sp, 832
  LD t4, 0(t6)
  SD t4, 576(sp)
  ADDI t6, sp, 840
  LD t4, 0(t6)
  SD t4, 584(sp)
  ADDI t6, sp, 848
  LD t4, 0(t6)
  SD t4, 592(sp)
  ADDI t6, sp, 856
  LD t4, 0(t6)
  SD t4, 600(sp)
  ADDI t6, sp, 864
  LD t4, 0(t6)
  SD t4, 480(sp)
  ADDI t6, sp, 872
  LD t4, 0(t6)
  SD t4, 608(sp)
  ADDI t6, sp, 880
  LD t4, 0(t6)
  SD t4, 616(sp)
  ADDI t6, sp, 888
  LD t4, 0(t6)
  SD t4, 624(sp)
  ADDI t6, sp, 896
  LD t4, 0(t6)
  SD t4, 632(sp)
  ADDI t6, sp, 904
  LD t4, 0(t6)
  SD t4, 640(sp)
  ADDI t6, sp, 912
  LD t4, 0(t6)
  SD t4, 648(sp)
  ADDI t6, sp, 920
  LD t4, 0(t6)
  SD t4, 656(sp)
  ADDI t6, sp, 928
  LD t4, 0(t6)
  SD t4, 664(sp)
  ADDI t6, sp, 936
  LD t4, 0(t6)
  SD t4, 672(sp)
  ADDI t6, sp, 944
  LD t4, 0(t6)
  SD t4, 680(sp)
  ADDI t6, sp, 952
  LD t4, 0(t6)
  SD t4, 688(sp)
  ADDI t6, sp, 960
  LD t4, 0(t6)
  SD t4, 696(sp)
  ADDI t6, sp, 968
  LD t4, 0(t6)
  SD t4, 704(sp)
  LA t6, k
  LW t6, 0(t6)
  SLLIW t6, t6, 2
  ADD s0, s0, t6
  FLW fs0, 0(s0)
  ADD s0, s1, t6
  FLW fs1, 0(s0)
  FADD.S fs0, fs0, fs1
  ADD s0, s2, t6
  FLW fs1, 0(s0)
  FADD.S fs0, fs0, fs1
  ADD s0, s3, t6
  FLW fs1, 0(s0)
  FADD.S fs0, fs0, fs1
  ADD s0, s4, t6
  FLW fs1, 0(s0)
  ADD s0, s5, t6
  FLW fs2, 0(s0)
  FADD.S fs1, fs1, fs2
  ADD s0, s6, t6
  FLW fs2, 0(s0)
  FADD.S fs1, fs1, fs2
  ADD s0, s7, t6
  FLW fs2, 0(s0)
  FADD.S fs1, fs1, fs2
  ADD s0, s8, t6
  FLW fs2, 0(s0)
  ADD s0, s9, t6
  FLW fs3, 0(s0)
  FADD.S fs2, fs2, fs3
  ADD s0, s10, t6
  FLW fs3, 0(s0)
  FADD.S fs2, fs2, fs3
  ADD s0, s11, t6
  FLW fs3, 0(s0)
  FADD.S fs2, fs2, fs3
  LD t4, 272(sp)
  ADD s0, t4, t6
  FLW fs3, 0(s0)
  LD t4, 296(sp)
  ADD s0, t4, t6
  FLW fs4, 0(s0)
  FADD.S fs3, fs3, fs4
  LD t4, 264(sp)
  ADD s0, t4, t6
  FLW fs4, 0(s0)
  FADD.S fs3, fs3, fs4
  LD t4, 280(sp)
  ADD s0, t4, t6
  FLW fs4, 0(s0)
  FADD.S fs3, fs3, fs4
  LD t4, 528(sp)
  ADD s0, t4, t6
  FLW fs4, 0(s0)
  LD t4, 536(sp)
  ADD s0, t4, t6
  FLW fs5, 0(s0)
  FADD.S fs4, fs4, fs5
  LD t4, 544(sp)
  ADD s0, t4, t6
  FLW fs5, 0(s0)
  FADD.S fs4, fs4, fs5
  LD t4, 552(sp)
  ADD s0, t4, t6
  FLW fs5, 0(s0)
  FADD.S fs4, fs4, fs5
  LD t4, 560(sp)
  ADD s0, t4, t6
  FLW fs5, 0(s0)
  LD t4, 568(sp)
  ADD s0, t4, t6
  FLW fs6, 0(s0)
  FADD.S fs5, fs5, fs6
  LD t4, 576(sp)
  ADD s0, t4, t6
  FLW fs6, 0(s0)
  FADD.S fs5, fs5, fs6
  LD t4, 584(sp)
  ADD s0, t4, t6
  FLW fs6, 0(s0)
  FADD.S fs5, fs5, fs6
  LD t4, 592(sp)
  ADD s0, t4, t6
  FLW fs6, 0(s0)
  LD t4, 600(sp)
  ADD s0, t4, t6
  FLW fs7, 0(s0)
  FADD.S fs6, fs6, fs7
  LD t4, 480(sp)
  ADD s0, t4, t6
  FLW fs7, 0(s0)
  FADD.S fs6, fs6, fs7
  LD t4, 608(sp)
  ADD s0, t4, t6
  FLW fs7, 0(s0)
  FADD.S fs6, fs6, fs7
  LD t4, 616(sp)
  ADD s0, t4, t6
  FLW fs7, 0(s0)
  LD t4, 624(sp)
  ADD s0, t4, t6
  FLW fs8, 0(s0)
  FADD.S fs7, fs7, fs8
  LD t4, 632(sp)
  ADD s0, t4, t6
  FLW fs8, 0(s0)
  FADD.S fs7, fs7, fs8
  LD t4, 640(sp)
  ADD s0, t4, t6
  FLW fs8, 0(s0)
  FADD.S fs7, fs7, fs8
  LD t4, 648(sp)
  ADD s0, t4, t6
  FLW fs8, 0(s0)
  LD t4, 656(sp)
  ADD s0, t4, t6
  FLW fs9, 0(s0)
  FADD.S fs8, fs8, fs9
  LD t4, 664(sp)
  ADD s0, t4, t6
  FLW fs9, 0(s0)
  FADD.S fs8, fs8, fs9
  LD t4, 672(sp)
  ADD s0, t4, t6
  FLW fs9, 0(s0)
  FADD.S fs8, fs8, fs9
  LD t4, 680(sp)
  ADD s0, t4, t6
  FLW fs9, 0(s0)
  LD t4, 688(sp)
  ADD s0, t4, t6
  FLW fs10, 0(s0)
  FADD.S fs9, fs9, fs10
  LD t4, 696(sp)
  ADD s0, t4, t6
  FLW fs10, 0(s0)
  FADD.S fs9, fs9, fs10
  LD t4, 704(sp)
  ADD s0, t4, t6
  FLW fs10, 0(s0)
  FADD.S fs9, fs9, fs10
  FSW fs0, 488(sp)
  ADDI t6, sp, 492
  FSW fs1, 0(t6)
  ADDI t6, sp, 496
  FSW fs2, 0(t6)
  ADDI t6, sp, 500
  FSW fs3, 0(t6)
  ADDI t6, sp, 504
  FSW fs4, 0(t6)
  ADDI t6, sp, 508
  FSW fs5, 0(t6)
  ADDI t6, sp, 512
  FSW fs6, 0(t6)
  ADDI t6, sp, 516
  FSW fs7, 0(t6)
  ADDI t6, sp, 520
  FSW fs8, 0(t6)
  ADDI t6, sp, 524
  FSW fs9, 0(t6)
  FLW fs0, 0(s0)
  FCVT.S.L fs1, zero
  FEQ.S s0, fs0, fs1
  XORI s0, s0, 1
  SLTU s0, zero, s0
  FCVT.S.W fs0, s0
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FEQ.S s0, fs0, fs1
  XORI s0, s0, 1
  FCVT.S.W fs0, s0
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FEQ.S s0, fs0, fs1
  XORI s0, s0, 1
  BNE s0, zero, bb24
  # implict jump to bb23
bb23:
  ADD a0, s1, zero
  ADD a1, s2, zero
  ADD a2, s3, zero
  ADD a3, s4, zero
  ADD a4, s5, zero
  ADD a5, s6, zero
  ADD a6, s7, zero
  ADD a7, s8, zero
  ADDI t5, sp, 0
  ADD s0, t5, zero
  SD s9, 0(s0)
  ADDI s0, sp, 8
  SD s10, 0(s0)
  ADDI s0, sp, 16
  SD s11, 0(s0)
  ADDI s0, sp, 24
  LD t4, 272(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 32
  LD t4, 296(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 40
  LD t4, 264(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 48
  LD t4, 280(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 56
  LD t4, 528(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 64
  LD t4, 536(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 72
  LD t4, 544(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 80
  LD t4, 552(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 88
  LD t4, 560(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 96
  LD t4, 568(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 104
  LD t4, 576(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 112
  LD t4, 584(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 120
  LD t4, 592(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 128
  LD t4, 600(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 136
  LD t4, 480(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 144
  LD t4, 608(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 152
  LD t4, 616(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 160
  LD t4, 624(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 168
  LD t4, 632(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 176
  LD t4, 640(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 184
  LD t4, 648(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 192
  LD t4, 656(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 200
  LD t4, 664(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 208
  LD t4, 672(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 216
  LD t4, 680(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 224
  LD t4, 688(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 232
  LD t4, 696(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 240
  LD t4, 704(sp)
  SD t4, 0(s0)
  ADDI s0, sp, 248
  ADDI t4, sp, 488
  SD t4, 0(s0)
  LD t4, 272(sp)
  LD t3, 296(sp)
  LD t4, 264(sp)
  LD t3, 280(sp)
  LD t4, 528(sp)
  LD t3, 536(sp)
  LD t4, 544(sp)
  LD t3, 552(sp)
  LD t4, 560(sp)
  LD t3, 568(sp)
  LD t4, 576(sp)
  LD t3, 584(sp)
  LD t4, 592(sp)
  LD t3, 600(sp)
  LD t4, 480(sp)
  LD t3, 608(sp)
  LD t4, 616(sp)
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
  ADDI t5, sp, 488
  CALL params_fa40
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 256(sp)
  LD s4, 288(sp)
  LD s0, 304(sp)
  LD s1, 312(sp)
  LD s2, 320(sp)
  LD s3, 328(sp)
  LD s5, 336(sp)
  LD s6, 344(sp)
  LD s7, 352(sp)
  LD s8, 360(sp)
  LD s9, 368(sp)
  LD s10, 376(sp)
  LD s11, 384(sp)
  FLD fs0, 392(sp)
  FLD fs1, 400(sp)
  FLD fs2, 408(sp)
  FLD fs3, 416(sp)
  FLD fs4, 424(sp)
  FLD fs5, 432(sp)
  FLD fs6, 440(sp)
  FLD fs7, 448(sp)
  FLD fs8, 456(sp)
  FLD fs9, 464(sp)
  FLD fs10, 472(sp)
  ADDI sp, sp, 720
  JALR zero, 0(ra)
bb24:
  ADDI a0, zero, 10
  ADDI a1, sp, 488
  ADD a1, a1, zero
  CALL putfarray
  LA s0, k
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADDI t5, sp, 488
  ADD s0, t5, s0
  FLW fs0, 0(s0)
  FSGNJ.S fa0, fs0, fs0
  LD ra, 256(sp)
  LD s4, 288(sp)
  LD s0, 304(sp)
  LD s1, 312(sp)
  LD s2, 320(sp)
  LD s3, 328(sp)
  LD s5, 336(sp)
  LD s6, 344(sp)
  LD s7, 352(sp)
  LD s8, 360(sp)
  LD s9, 368(sp)
  LD s10, 376(sp)
  LD s11, 384(sp)
  FLD fs0, 392(sp)
  FLD fs1, 400(sp)
  FLD fs2, 408(sp)
  FLD fs3, 416(sp)
  FLD fs4, 424(sp)
  FLD fs5, 432(sp)
  FLD fs6, 440(sp)
  FLD fs7, 448(sp)
  FLD fs8, 456(sp)
  FLD fs9, 464(sp)
  FLD fs10, 472(sp)
  ADDI sp, sp, 720
  JALR zero, 0(ra)
params_f40:
  ADDI sp, sp, -400
  SD ra, 248(sp)
  SD s0, 256(sp)
  FSD fs0, 264(sp)
  FSD fs1, 272(sp)
  FSD fs2, 280(sp)
  FSD fs3, 288(sp)
  FSD fs4, 296(sp)
  FSD fs5, 304(sp)
  FSD fs6, 312(sp)
  FSD fs7, 320(sp)
  FSD fs8, 328(sp)
  FSD fs9, 336(sp)
  FSD fs10, 344(sp)
  FSD fs11, 352(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  FSGNJ.D fs2, fa2, fa2
  FSGNJ.D fs3, fa3, fa3
  FSGNJ.D fs4, fa4, fa4
  FSGNJ.D fs5, fa5, fa5
  FSGNJ.D fs6, fa6, fa6
  FSGNJ.D fs7, fa7, fa7
  ADDI t5, sp, 400
  ADD s0, t5, zero
  FLW fs8, 0(s0)
  ADDI s0, sp, 404
  FLW fs9, 0(s0)
  ADDI s0, sp, 408
  FLW fs10, 0(s0)
  ADDI s0, sp, 412
  FLW ft4, 0(s0)
  FSW ft4, 244(sp)
  ADDI s0, sp, 416
  FLW ft4, 0(s0)
  FSW ft4, 132(sp)
  ADDI s0, sp, 420
  FLW ft4, 0(s0)
  FSW ft4, 136(sp)
  ADDI s0, sp, 424
  FLW ft4, 0(s0)
  FSW ft4, 240(sp)
  ADDI s0, sp, 428
  FLW ft4, 0(s0)
  FSW ft4, 140(sp)
  ADDI s0, sp, 432
  FLW ft4, 0(s0)
  FSW ft4, 144(sp)
  ADDI s0, sp, 436
  FLW ft4, 0(s0)
  FSW ft4, 148(sp)
  ADDI s0, sp, 440
  FLW ft4, 0(s0)
  FSW ft4, 152(sp)
  ADDI s0, sp, 444
  FLW ft4, 0(s0)
  FSW ft4, 156(sp)
  ADDI s0, sp, 448
  FLW ft4, 0(s0)
  FSW ft4, 160(sp)
  ADDI s0, sp, 452
  FLW ft4, 0(s0)
  FSW ft4, 168(sp)
  ADDI s0, sp, 456
  FLW ft4, 0(s0)
  FSW ft4, 236(sp)
  ADDI s0, sp, 460
  FLW ft4, 0(s0)
  FSW ft4, 232(sp)
  ADDI s0, sp, 464
  FLW ft4, 0(s0)
  FSW ft4, 228(sp)
  ADDI s0, sp, 468
  FLW ft4, 0(s0)
  FSW ft4, 224(sp)
  ADDI s0, sp, 472
  FLW ft4, 0(s0)
  FSW ft4, 220(sp)
  ADDI s0, sp, 476
  FLW ft4, 0(s0)
  FSW ft4, 216(sp)
  ADDI s0, sp, 480
  FLW ft4, 0(s0)
  FSW ft4, 212(sp)
  ADDI s0, sp, 484
  FLW ft4, 0(s0)
  FSW ft4, 208(sp)
  ADDI s0, sp, 488
  FLW ft4, 0(s0)
  FSW ft4, 204(sp)
  ADDI s0, sp, 492
  FLW ft4, 0(s0)
  FSW ft4, 200(sp)
  ADDI s0, sp, 496
  FLW ft4, 0(s0)
  FSW ft4, 196(sp)
  ADDI s0, sp, 500
  FLW ft4, 0(s0)
  FSW ft4, 192(sp)
  ADDI s0, sp, 504
  FLW ft4, 0(s0)
  FSW ft4, 128(sp)
  ADDI s0, sp, 508
  FLW ft4, 0(s0)
  FSW ft4, 188(sp)
  ADDI s0, sp, 512
  FLW ft4, 0(s0)
  FSW ft4, 184(sp)
  ADDI s0, sp, 516
  FLW ft4, 0(s0)
  FSW ft4, 180(sp)
  ADDI s0, sp, 520
  FLW ft4, 0(s0)
  FSW ft4, 176(sp)
  ADDI s0, sp, 524
  FLW ft4, 0(s0)
  FSW ft4, 172(sp)
  FCVT.S.L ft11, zero
  FLW ft4, 172(sp)
  FEQ.S s0, ft4, ft11
  XORI s0, s0, 1
  BNE s0, zero, bb27
  # implict jump to bb26
bb26:
  FADD.S ft11, fs0, fs1
  FADD.S ft4, ft11, fs2
  FSW ft4, 164(sp)
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
  FLW ft4, 132(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 16
  FLW ft4, 136(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 20
  FLW ft4, 240(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 24
  FLW ft4, 140(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 28
  FLW ft4, 144(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 32
  FLW ft4, 148(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 36
  FLW ft4, 152(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 40
  FLW ft4, 156(sp)
  FSW ft4, 0(s0)
  ADDI s0, sp, 44
  FLW ft4, 160(sp)
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
  FLW ft4, 164(sp)
  FSW ft4, 0(s0)
  FLW ft4, 244(sp)
  FLW ft3, 132(sp)
  FLW ft4, 136(sp)
  FLW ft3, 240(sp)
  FLW ft4, 140(sp)
  FLW ft3, 144(sp)
  FLW ft4, 148(sp)
  FLW ft3, 152(sp)
  FLW ft4, 156(sp)
  FLW ft3, 160(sp)
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
  FLW ft3, 164(sp)
  CALL params_f40
  FSGNJ.D fs11, fa0, fa0
  FSGNJ.S fa0, fs11, fs11
  LD ra, 248(sp)
  LD s0, 256(sp)
  FLD fs0, 264(sp)
  FLD fs1, 272(sp)
  FLD fs2, 280(sp)
  FLD fs3, 288(sp)
  FLD fs4, 296(sp)
  FLD fs5, 304(sp)
  FLD fs6, 312(sp)
  FLD fs7, 320(sp)
  FLD fs8, 328(sp)
  FLD fs9, 336(sp)
  FLD fs10, 344(sp)
  FLD fs11, 352(sp)
  ADDI sp, sp, 400
  JALR zero, 0(ra)
bb27:
  FADD.S fs0, fs0, fs1
  FADD.S fs0, fs0, fs2
  FADD.S fs0, fs0, fs3
  FADD.S fs1, fs4, fs5
  FADD.S fs1, fs1, fs6
  FADD.S fs1, fs1, fs7
  FADD.S fs2, fs8, fs9
  FADD.S fs2, fs2, fs10
  FLW ft4, 244(sp)
  FADD.S fs2, fs2, ft4
  FLW ft4, 132(sp)
  FLW ft3, 136(sp)
  FADD.S fs3, ft4, ft3
  FLW ft4, 240(sp)
  FADD.S fs3, fs3, ft4
  FLW ft4, 140(sp)
  FADD.S fs3, fs3, ft4
  FLW ft4, 144(sp)
  FLW ft3, 148(sp)
  FADD.S fs4, ft4, ft3
  FLW ft4, 152(sp)
  FADD.S fs4, fs4, ft4
  FLW ft4, 156(sp)
  FADD.S fs4, fs4, ft4
  FLW ft4, 160(sp)
  FLW ft3, 168(sp)
  FADD.S fs5, ft4, ft3
  FLW ft4, 236(sp)
  FADD.S fs5, fs5, ft4
  FLW ft4, 232(sp)
  FADD.S fs5, fs5, ft4
  FLW ft4, 228(sp)
  FLW ft3, 224(sp)
  FADD.S fs6, ft4, ft3
  FLW ft4, 220(sp)
  FADD.S fs6, fs6, ft4
  FLW ft4, 216(sp)
  FADD.S fs6, fs6, ft4
  FLW ft4, 212(sp)
  FLW ft3, 208(sp)
  FADD.S fs7, ft4, ft3
  FLW ft4, 204(sp)
  FADD.S fs7, fs7, ft4
  FLW ft4, 200(sp)
  FADD.S fs7, fs7, ft4
  FLW ft4, 196(sp)
  FLW ft3, 192(sp)
  FADD.S fs8, ft4, ft3
  FLW ft4, 128(sp)
  FADD.S fs8, fs8, ft4
  FLW ft4, 188(sp)
  FADD.S fs8, fs8, ft4
  FLW ft4, 184(sp)
  FLW ft3, 180(sp)
  FADD.S fs9, ft4, ft3
  FLW ft4, 176(sp)
  FADD.S fs9, fs9, ft4
  FLW ft4, 172(sp)
  FADD.S fs9, fs9, ft4
  FSW fs0, 360(sp)
  ADDI s0, sp, 364
  FSW fs1, 0(s0)
  ADDI s0, sp, 368
  FSW fs2, 0(s0)
  ADDI s0, sp, 372
  FSW fs3, 0(s0)
  ADDI s0, sp, 376
  FSW fs4, 0(s0)
  ADDI s0, sp, 380
  FSW fs5, 0(s0)
  ADDI s0, sp, 384
  FSW fs6, 0(s0)
  ADDI s0, sp, 388
  FSW fs7, 0(s0)
  ADDI s0, sp, 392
  FSW fs8, 0(s0)
  ADDI s0, sp, 396
  FSW fs9, 0(s0)
  ADDI a0, zero, 10
  ADDI a1, sp, 360
  ADD a1, a1, zero
  CALL putfarray
  LA s0, k
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADDI t5, sp, 360
  ADD s0, t5, s0
  FLW fs0, 0(s0)
  FSGNJ.S fa0, fs0, fs0
  LD ra, 248(sp)
  LD s0, 256(sp)
  FLD fs0, 264(sp)
  FLD fs1, 272(sp)
  FLD fs2, 280(sp)
  FLD fs3, 288(sp)
  FLD fs4, 296(sp)
  FLD fs5, 304(sp)
  FLD fs6, 312(sp)
  FLD fs7, 320(sp)
  FLD fs8, 328(sp)
  FLD fs9, 336(sp)
  FLD fs10, 344(sp)
  FLD fs11, 352(sp)
  ADDI sp, sp, 400
  JALR zero, 0(ra)
params_mix:
  ADDI sp, sp, -896
  SD s11, 440(sp)
  SD ra, 464(sp)
  SD s0, 472(sp)
  SD s1, 480(sp)
  SD s2, 488(sp)
  SD s3, 496(sp)
  SD s4, 504(sp)
  SD s5, 512(sp)
  SD s6, 520(sp)
  SD s7, 528(sp)
  SD s8, 536(sp)
  SD s9, 544(sp)
  SD s10, 552(sp)
  FSD fs1, 568(sp)
  FSD fs0, 584(sp)
  FSD fs4, 592(sp)
  FSD fs5, 600(sp)
  FSD fs6, 608(sp)
  FSD fs7, 616(sp)
  FSD fs8, 624(sp)
  FSD fs9, 632(sp)
  FSD fs2, 648(sp)
  FSD fs10, 656(sp)
  FSD fs3, 672(sp)
  FSD fs11, 800(sp)
  FSGNJ.D fs0, fa0, fa0
  ADD s1, a0, zero
  ADD s2, a1, zero
  ADD s3, a2, zero
  FSGNJ.D fs1, fa1, fa1
  ADD s4, a3, zero
  FSGNJ.D fs2, fa2, fa2
  FSGNJ.D fs3, fa3, fa3
  ADD s5, a4, zero
  ADD s6, a5, zero
  ADD s7, a6, zero
  ADD s8, a7, zero
  ADDI t5, sp, 896
  ADD s9, t5, zero
  LD t4, 0(s9)
  SD t4, 456(sp)
  ADDI s10, sp, 904
  LD t4, 0(s10)
  SD t4, 448(sp)
  ADDI s11, sp, 912
  LD t4, 0(s11)
  SD t4, 400(sp)
  ADDI ra, sp, 920
  LW t4, 0(ra)
  SW t4, 328(sp)
  ADDI t0, sp, 928
  LD t4, 0(t0)
  SD t4, 432(sp)
  ADDI t1, sp, 936
  LD t4, 0(t1)
  SD t4, 424(sp)
  FSGNJ.D fs4, fa4, fa4
  FSGNJ.D fs5, fa5, fa5
  FSGNJ.D fs6, fa6, fa6
  ADDI t2, sp, 944
  LD t4, 0(t2)
  SD t4, 416(sp)
  ADDI t6, sp, 952
  LW t4, 0(t6)
  SW t4, 364(sp)
  FSGNJ.D fs7, fa7, fa7
  ADDI s0, sp, 956
  FLW fs8, 0(s0)
  ADDI s0, sp, 960
  FLW fs9, 0(s0)
  ADDI s0, sp, 968
  LD t4, 0(s0)
  SD t4, 680(sp)
  ADDI s0, sp, 976
  LD t4, 0(s0)
  SD t4, 664(sp)
  ADDI s0, sp, 984
  LD t4, 0(s0)
  SD t4, 560(sp)
  ADDI s0, sp, 992
  LD t4, 0(s0)
  SD t4, 640(sp)
  ADDI s0, sp, 1000
  LD t4, 0(s0)
  SD t4, 576(sp)
  ADDI s0, sp, 1008
  FLW fs10, 0(s0)
  ADDI s0, sp, 1012
  FLW ft4, 0(s0)
  FSW ft4, 320(sp)
  ADDI s0, sp, 1016
  LD t4, 0(s0)
  SD t4, 768(sp)
  ADDI s0, sp, 1024
  LW t4, 0(s0)
  SW t4, 348(sp)
  ADDI s0, sp, 1032
  LD t4, 0(s0)
  SD t4, 776(sp)
  ADDI s0, sp, 1040
  LD t4, 0(s0)
  SD t4, 792(sp)
  ADDI s0, sp, 1048
  FLW ft4, 0(s0)
  FSW ft4, 356(sp)
  ADDI s0, sp, 1052
  FLW ft4, 0(s0)
  FSW ft4, 360(sp)
  ADDI s0, sp, 1056
  LD t4, 0(s0)
  SD t4, 808(sp)
  ADDI s0, sp, 1064
  LD t4, 0(s0)
  SD t4, 816(sp)
  ADDI s0, sp, 1072
  LW t4, 0(s0)
  SW t4, 340(sp)
  ADDI s0, sp, 1076
  LW t4, 0(s0)
  SW t4, 336(sp)
  ADDI s0, sp, 1080
  FLW ft4, 0(s0)
  FSW ft4, 392(sp)
  ADDI s0, sp, 1084
  FLW ft4, 0(s0)
  FSW ft4, 388(sp)
  ADDI s0, sp, 1088
  LD t4, 0(s0)
  SD t4, 824(sp)
  ADDI s0, sp, 1096
  LW t4, 0(s0)
  SW t4, 332(sp)
  ADDI s0, sp, 1104
  LD t4, 0(s0)
  SD t4, 832(sp)
  ADDI s0, sp, 1112
  LW t4, 0(s0)
  SW t4, 324(sp)
  ADDI s0, sp, 1120
  LD t4, 0(s0)
  SD t4, 840(sp)
  ADDI s0, sp, 1128
  LD t4, 0(s0)
  SD t4, 848(sp)
  ADDI s0, sp, 1136
  FLW ft4, 0(s0)
  FSW ft4, 384(sp)
  ADDI s0, sp, 1140
  FLW ft4, 0(s0)
  FSW ft4, 380(sp)
  ADDI s0, sp, 1144
  LD t4, 0(s0)
  SD t4, 856(sp)
  ADDI s0, sp, 1152
  LW t4, 0(s0)
  SW t4, 344(sp)
  ADDI s0, sp, 1160
  LD t4, 0(s0)
  SD t4, 864(sp)
  ADDI s0, sp, 1168
  LD t4, 0(s0)
  SD t4, 872(sp)
  ADDI s0, sp, 1176
  FLW ft4, 0(s0)
  FSW ft4, 376(sp)
  ADDI s0, sp, 1180
  LW t4, 0(s0)
  SW t4, 352(sp)
  ADDI s0, sp, 1184
  FLW ft4, 0(s0)
  FSW ft4, 368(sp)
  ADDI s0, sp, 1192
  LD t4, 0(s0)
  SD t4, 880(sp)
  ADDI s0, sp, 1200
  LD t4, 0(s0)
  SD t4, 784(sp)
  ADDI s0, sp, 1208
  FLW ft10, 0(s0)
  ADDI s0, sp, 1212
  LW s0, 0(s0)
  LA t6, k
  LW t6, 0(t6)
  SLLIW t6, t6, 2
  ADD s3, s3, t6
  FLW ft11, 0(s3)
  FADD.S ft11, fs0, ft11
  FADD.S ft11, ft11, fs1
  FADD.S ft11, ft11, fs2
  ADD s3, s5, t6
  FLW ft9, 0(s3)
  FADD.S ft9, fs3, ft9
  LD t4, 456(sp)
  ADD s3, t4, t6
  FLW ft8, 0(s3)
  FADD.S ft8, ft9, ft8
  LD t4, 432(sp)
  ADD s3, t4, t6
  FLW ft9, 0(s3)
  FADD.S ft8, ft8, ft9
  LD t4, 424(sp)
  ADD s3, t4, t6
  FLW ft9, 0(s3)
  FADD.S ft9, ft9, fs4
  FADD.S ft9, ft9, fs5
  FADD.S ft9, ft9, fs6
  LD t4, 416(sp)
  ADD s3, t4, t6
  FLW ft7, 0(s3)
  FADD.S ft7, ft7, fs7
  FADD.S ft7, ft7, fs8
  FADD.S ft7, ft7, fs9
  LD t4, 664(sp)
  ADD s3, t4, t6
  FLW ft6, 0(s3)
  LD t4, 576(sp)
  ADD s3, t4, t6
  FLW ft5, 0(s3)
  FADD.S ft5, ft6, ft5
  FADD.S ft5, ft5, fs10
  FLW ft4, 320(sp)
  FADD.S ft5, ft5, ft4
  LD t4, 776(sp)
  ADD s3, t4, t6
  FLW ft6, 0(s3)
  LD t4, 792(sp)
  ADD s3, t4, t6
  FLW ft2, 0(s3)
  FADD.S ft2, ft6, ft2
  FLW ft4, 356(sp)
  FADD.S ft2, ft2, ft4
  FLW ft4, 360(sp)
  FADD.S ft2, ft2, ft4
  FLW ft4, 392(sp)
  FLW ft3, 388(sp)
  FADD.S ft6, ft4, ft3
  LD t4, 832(sp)
  ADD s3, t4, t6
  FLW ft1, 0(s3)
  FADD.S ft1, ft6, ft1
  FLW ft4, 384(sp)
  FADD.S ft1, ft1, ft4
  LD t4, 856(sp)
  ADD s3, t4, t6
  FLW ft6, 0(s3)
  FLW ft4, 380(sp)
  FADD.S ft6, ft4, ft6
  LD t4, 872(sp)
  ADD s3, t4, t6
  FLW ft0, 0(s3)
  FADD.S ft0, ft6, ft0
  FLW ft4, 376(sp)
  FADD.S ft0, ft0, ft4
  LD t4, 880(sp)
  ADD s3, t4, t6
  FLW ft6, 0(s3)
  FLW ft4, 368(sp)
  FADD.S ft6, ft4, ft6
  LD t4, 784(sp)
  ADD s3, t4, t6
  FLW fs11, 0(s3)
  FADD.S fs11, ft6, fs11
  FADD.S fs11, fs11, ft10
  FSW ft11, 688(sp)
  ADDI s3, sp, 692
  FSW ft8, 0(s3)
  ADDI s3, sp, 696
  FSW ft9, 0(s3)
  ADDI s3, sp, 700
  FSW ft7, 0(s3)
  ADDI s3, sp, 704
  FSW ft5, 0(s3)
  ADDI s3, sp, 708
  FSW ft2, 0(s3)
  ADDI s3, sp, 712
  FSW ft1, 0(s3)
  ADDI s3, sp, 716
  FSW ft0, 0(s3)
  ADDI t4, sp, 720
  SD t4, 408(sp)
  LD t4, 408(sp)
  FSW fs11, 0(t4)
  ADDI s3, sp, 724
  LA t2, .CONSTANT.7.0
  FLW fs11, 0(t2)
  FSW fs11, 0(s3)
  ADD s1, s1, t6
  LW s1, 0(s1)
  ADDW s1, s1, s2
  ADDW s1, s1, s4
  ADD s3, s6, t6
  LW s3, 0(s3)
  ADDW s3, s3, s7
  ADDW s3, s3, s8
  LD t4, 448(sp)
  ADD t2, t4, t6
  LW t2, 0(t2)
  LD t4, 400(sp)
  ADD t1, t4, t6
  LW t1, 0(t1)
  ADDW t1, t2, t1
  LW t4, 328(sp)
  ADDW t1, t1, t4
  LD t4, 680(sp)
  ADD t2, t4, t6
  LW t2, 0(t2)
  LW t4, 364(sp)
  ADDW t2, t4, t2
  LD t4, 560(sp)
  ADD t0, t4, t6
  LW t0, 0(t0)
  ADDW t0, t2, t0
  LD t4, 640(sp)
  ADD t2, t4, t6
  LW t2, 0(t2)
  LD t4, 768(sp)
  ADD ra, t4, t6
  LW ra, 0(ra)
  ADDW ra, t2, ra
  LW t4, 348(sp)
  ADDW ra, ra, t4
  LD t4, 808(sp)
  ADD t2, t4, t6
  LW t2, 0(t2)
  LD t4, 816(sp)
  ADD s11, t4, t6
  LW s11, 0(s11)
  ADDW s11, t2, s11
  LW t4, 340(sp)
  ADDW s11, s11, t4
  LD t4, 824(sp)
  ADD t2, t4, t6
  LW t2, 0(t2)
  LW t4, 336(sp)
  ADDW t2, t4, t2
  LW t4, 332(sp)
  ADDW t2, t2, t4
  LD t4, 840(sp)
  ADD s10, t4, t6
  LW s10, 0(s10)
  LW t4, 324(sp)
  ADDW s10, t4, s10
  LD t4, 848(sp)
  ADD s9, t4, t6
  LW s9, 0(s9)
  ADDW s9, s10, s9
  LD t4, 864(sp)
  ADD s10, t4, t6
  LW s10, 0(s10)
  LW t4, 344(sp)
  ADDW s10, t4, s10
  LW t4, 352(sp)
  ADDW s10, s10, t4
  ADDW s10, s10, s0
  SW s1, 728(sp)
  ADDI s1, sp, 732
  SW s3, 0(s1)
  ADDI s1, sp, 736
  SW t1, 0(s1)
  ADDI s1, sp, 740
  SW t0, 0(s1)
  ADDI s1, sp, 744
  SW ra, 0(s1)
  ADDI s1, sp, 748
  SW s11, 0(s1)
  ADDI s1, sp, 752
  SW t2, 0(s1)
  ADDI s1, sp, 756
  SW s9, 0(s1)
  ADDI s1, sp, 760
  SW s10, 0(s1)
  ADDI s1, sp, 764
  SW zero, 0(s1)
  BNE s0, zero, bb30
  # implict jump to bb29
bb29:
  FCVT.S.W fs11, s0
  FCVT.W.S s0, ft10, rtz
  FSGNJ.S fa0, fs0, fs0
  ADDI a0, sp, 728
  ADD a0, a0, zero
  ADD a1, s2, zero
  ADDI a2, sp, 688
  ADD a2, a2, zero
  FSGNJ.S fa1, fs1, fs1
  ADD a3, s4, zero
  FSGNJ.S fa2, fs2, fs2
  FSGNJ.S fa3, fs3, fs3
  ADD a4, s5, zero
  ADD a5, s6, zero
  ADD a6, s7, zero
  ADD a7, s8, zero
  ADDI t5, sp, 0
  ADD s1, t5, zero
  LD t4, 456(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 8
  LD t4, 448(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 16
  LD t4, 400(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 24
  LW t4, 328(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 32
  LD t4, 432(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 40
  LD t4, 424(sp)
  SD t4, 0(s1)
  FSGNJ.S fa4, fs4, fs4
  FSGNJ.S fa5, fs5, fs5
  FSGNJ.S fa6, fs6, fs6
  ADDI s1, sp, 48
  LD t4, 416(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 56
  LW t4, 364(sp)
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
  LD t4, 664(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 88
  LD t4, 560(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 96
  LD t4, 640(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 104
  LD t4, 576(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 112
  FSW fs10, 0(s1)
  ADDI s1, sp, 116
  FLW ft4, 320(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 120
  LD t4, 768(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 128
  LW t4, 348(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 136
  LD t4, 776(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 144
  LD t4, 792(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 152
  FLW ft4, 356(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 156
  FLW ft4, 360(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 160
  LD t4, 808(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 168
  LD t4, 816(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 176
  LW t4, 340(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 180
  LW t4, 336(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 184
  FLW ft4, 392(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 188
  FLW ft4, 388(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 192
  LD t4, 824(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 200
  LW t4, 332(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 208
  LD t4, 832(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 216
  LW t4, 324(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 224
  LD t4, 840(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 232
  LD t4, 848(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 240
  FLW ft4, 384(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 244
  FLW ft4, 380(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 248
  LD t4, 856(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 256
  LW t4, 344(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 264
  LD t4, 864(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 272
  LD t4, 872(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 280
  FLW ft4, 376(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 284
  LW t4, 352(sp)
  SW t4, 0(s1)
  ADDI s1, sp, 288
  FLW ft4, 368(sp)
  FSW ft4, 0(s1)
  ADDI s1, sp, 296
  LD t4, 880(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 304
  LD t4, 784(sp)
  SD t4, 0(s1)
  ADDI s1, sp, 312
  FSW fs11, 0(s1)
  ADDI s1, sp, 316
  SW s0, 0(s1)
  LD t4, 456(sp)
  LD t3, 448(sp)
  LD t4, 400(sp)
  LW t3, 328(sp)
  LD t4, 432(sp)
  LD t3, 424(sp)
  LD t4, 416(sp)
  LW t3, 364(sp)
  LD t4, 680(sp)
  LD t3, 664(sp)
  LD t4, 560(sp)
  LD t3, 640(sp)
  LD t4, 576(sp)
  FLW ft4, 320(sp)
  LD t3, 768(sp)
  LW t4, 348(sp)
  LD t3, 776(sp)
  LD t4, 792(sp)
  FLW ft3, 356(sp)
  FLW ft4, 360(sp)
  LD t3, 808(sp)
  LD t4, 816(sp)
  LW t3, 340(sp)
  LW t4, 336(sp)
  FLW ft3, 392(sp)
  FLW ft4, 388(sp)
  LD t3, 824(sp)
  LW t4, 332(sp)
  LD t3, 832(sp)
  LW t4, 324(sp)
  LD t3, 840(sp)
  LD t4, 848(sp)
  FLW ft3, 384(sp)
  FLW ft4, 380(sp)
  LD t3, 856(sp)
  LW t4, 344(sp)
  LD t3, 864(sp)
  LD t4, 872(sp)
  FLW ft3, 376(sp)
  LW t3, 352(sp)
  FLW ft4, 368(sp)
  LD t4, 880(sp)
  LD t3, 784(sp)
  CALL params_mix
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD s11, 440(sp)
  LD ra, 464(sp)
  LD s0, 472(sp)
  LD s1, 480(sp)
  LD s2, 488(sp)
  LD s3, 496(sp)
  LD s4, 504(sp)
  LD s5, 512(sp)
  LD s6, 520(sp)
  LD s7, 528(sp)
  LD s8, 536(sp)
  LD s9, 544(sp)
  LD s10, 552(sp)
  FLD fs1, 568(sp)
  FLD fs0, 584(sp)
  FLD fs4, 592(sp)
  FLD fs5, 600(sp)
  FLD fs6, 608(sp)
  FLD fs7, 616(sp)
  FLD fs8, 624(sp)
  FLD fs9, 632(sp)
  FLD fs2, 648(sp)
  FLD fs10, 656(sp)
  FLD fs3, 672(sp)
  FLD fs11, 800(sp)
  ADDI sp, sp, 896
  JALR zero, 0(ra)
bb30:
  ADDI a0, zero, 10
  ADDI a1, sp, 688
  ADD a1, a1, zero
  CALL putfarray
  ADDI a0, zero, 10
  ADDI a1, sp, 728
  ADD a1, a1, zero
  CALL putarray
  SLTI s0, zero, 10
  BNE s0, zero, bb32
  # implict jump to bb31
bb31:
  LA s1, k
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADDI t4, sp, 728
  ADD s1, t4, s1
  LW s1, 0(s1)
  LD t4, 408(sp)
  FLW fs0, 0(t4)
  FCVT.S.W fs1, s1
  FMUL.S fs0, fs1, fs0
  FCVT.W.S s1, fs0, rtz
  ADD a0, s1, zero
  LD s11, 440(sp)
  LD ra, 464(sp)
  LD s0, 472(sp)
  LD s1, 480(sp)
  LD s2, 488(sp)
  LD s3, 496(sp)
  LD s4, 504(sp)
  LD s5, 512(sp)
  LD s6, 520(sp)
  LD s7, 528(sp)
  LD s8, 536(sp)
  LD s9, 544(sp)
  LD s10, 552(sp)
  FLD fs1, 568(sp)
  FLD fs0, 584(sp)
  FLD fs4, 592(sp)
  FLD fs5, 600(sp)
  FLD fs6, 608(sp)
  FLD fs7, 616(sp)
  FLD fs8, 624(sp)
  FLD fs9, 632(sp)
  FLD fs2, 648(sp)
  FLD fs10, 656(sp)
  FLD fs3, 672(sp)
  FLD fs11, 800(sp)
  ADDI sp, sp, 896
  JALR zero, 0(ra)
bb32:
  # implict jump to bb33
bb33:
  ADD s0, zero, zero
  # implict jump to bb34
bb34:
  ADD s1, s0, zero
  SLLIW s2, s1, 2
  ADDI t5, sp, 728
  ADD s3, t5, s2
  LW s4, 0(s3)
  ADDI t5, sp, 688
  ADD s2, t5, s2
  FLW fs0, 0(s2)
  FCVT.S.W fs1, s4
  FSUB.S fs0, fs1, fs0
  FCVT.W.S s2, fs0, rtz
  SW s2, 0(s3)
  ADDIW t4, s1, 1
  SW t4, 372(sp)
  # implict jump to bb35
bb35:
  LW t4, 372(sp)
  SLTI s1, t4, 10
  BNE s1, zero, bb36
  JAL zero, bb31
bb36:
  LW t4, 372(sp)
  ADD s0, t4, zero
  JAL zero, bb34
