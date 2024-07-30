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
  SW t4, 320(sp)
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
  SW t4, 324(sp)
  FSGNJ.D fs4, fa4, fa4
  FSGNJ.D ft4, fa5, fa5
  FSW ft4, 336(sp)
  ADD s7, a7, zero
  FSGNJ.D ft4, fa6, fa6
  FSW ft4, 308(sp)
  ADDI t5, sp, 640
  ADD s8, t5, zero
  LW t4, 0(s8)
  SW t4, 212(sp)
  FSGNJ.D ft4, fa7, fa7
  FSW ft4, 332(sp)
  FLW fs8, 644(sp)
  FLW fs9, 648(sp)
  FLW fs10, 652(sp)
  FLW ft4, 656(sp)
  FSW ft4, 304(sp)
  FLW ft4, 660(sp)
  FSW ft4, 252(sp)
  LW s9, 664(sp)
  FLW ft4, 668(sp)
  FSW ft4, 280(sp)
  LW s10, 672(sp)
  LW s11, 676(sp)
  FLW ft4, 680(sp)
  FSW ft4, 248(sp)
  FLW ft4, 684(sp)
  FSW ft4, 316(sp)
  FLW ft4, 688(sp)
  FSW ft4, 208(sp)
  FLW ft4, 692(sp)
  FSW ft4, 240(sp)
  FLW ft4, 696(sp)
  FSW ft4, 196(sp)
  LW t4, 700(sp)
  SW t4, 260(sp)
  FLW ft4, 704(sp)
  FSW ft4, 300(sp)
  LW t4, 708(sp)
  SW t4, 220(sp)
  FLW ft4, 712(sp)
  FSW ft4, 232(sp)
  FLW ft4, 716(sp)
  FSW ft4, 296(sp)
  FLW ft4, 720(sp)
  FSW ft4, 276(sp)
  FLW ft4, 724(sp)
  FSW ft4, 312(sp)
  LW t4, 728(sp)
  SW t4, 344(sp)
  LW t4, 732(sp)
  SW t4, 288(sp)
  FLW fs6, 736(sp)
  FLW fs11, 740(sp)
  FLW ft4, 744(sp)
  FSW ft4, 244(sp)
  LW t4, 748(sp)
  SW t4, 292(sp)
  FLW ft4, 752(sp)
  FSW ft4, 328(sp)
  LW s0, 756(sp)
  LW s6, 760(sp)
  FLW ft4, 764(sp)
  FSW ft4, 356(sp)
  FLW ft4, 768(sp)
  FSW ft4, 236(sp)
  FLW fs5, 772(sp)
  FLW ft4, 776(sp)
  FSW ft4, 340(sp)
  LW t4, 780(sp)
  SW t4, 256(sp)
  LW t4, 784(sp)
  SW t4, 348(sp)
  LW t4, 788(sp)
  SW t4, 352(sp)
  FLW ft4, 792(sp)
  FSW ft4, 272(sp)
  FLW ft4, 796(sp)
  FSW ft4, 284(sp)
  FLW ft4, 800(sp)
  FSW ft4, 216(sp)
  FLW ft4, 804(sp)
  FSW ft4, 200(sp)
  FLW ft4, 808(sp)
  FSW ft4, 204(sp)
  FLW ft4, 812(sp)
  FSW ft4, 264(sp)
  LW t4, 816(sp)
  SW t4, 228(sp)
  FLW ft4, 820(sp)
  FSW ft4, 192(sp)
  LW t4, 824(sp)
  SW t4, 268(sp)
  FLW ft4, 828(sp)
  FSW ft4, 224(sp)
  LW t4, 320(sp)
  BNE t4, zero, bb2
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
  LW t4, 324(sp)
  ADD a6, t4, zero
  FSGNJ.S fa4, fs4, fs4
  FLW ft4, 336(sp)
  FLW ft3, 336(sp)
  FSGNJ.S fa5, ft4, ft3
  ADD a7, s7, zero
  FLW ft4, 308(sp)
  FLW ft3, 308(sp)
  FSGNJ.S fa6, ft4, ft3
  ADDI t5, sp, 0
  ADD s8, t5, zero
  LW t4, 212(sp)
  SW t4, 0(s8)
  FLW ft4, 332(sp)
  FLW ft3, 332(sp)
  FSGNJ.S fa7, ft4, ft3
  FSW fs8, 4(sp)
  FSW fs9, 8(sp)
  FSW fs10, 12(sp)
  FLW ft4, 304(sp)
  FSW ft4, 16(sp)
  FLW ft4, 252(sp)
  FSW ft4, 20(sp)
  SW s9, 24(sp)
  FLW ft4, 280(sp)
  FSW ft4, 28(sp)
  SW s10, 32(sp)
  SW s11, 36(sp)
  FLW ft4, 248(sp)
  FSW ft4, 40(sp)
  FLW ft4, 316(sp)
  FSW ft4, 44(sp)
  FLW ft4, 208(sp)
  FSW ft4, 48(sp)
  FLW ft4, 240(sp)
  FSW ft4, 52(sp)
  FLW ft4, 196(sp)
  FSW ft4, 56(sp)
  LW t4, 260(sp)
  SW t4, 60(sp)
  FLW ft4, 300(sp)
  FSW ft4, 64(sp)
  LW t4, 220(sp)
  SW t4, 68(sp)
  FLW ft4, 232(sp)
  FSW ft4, 72(sp)
  FLW ft4, 296(sp)
  FSW ft4, 76(sp)
  FLW ft4, 276(sp)
  FSW ft4, 80(sp)
  FLW ft4, 312(sp)
  FSW ft4, 84(sp)
  LW t4, 344(sp)
  SW t4, 88(sp)
  LW t4, 288(sp)
  SW t4, 92(sp)
  FSW fs6, 96(sp)
  FSW fs11, 100(sp)
  FLW ft4, 244(sp)
  FSW ft4, 104(sp)
  LW t4, 292(sp)
  SW t4, 108(sp)
  FLW ft4, 328(sp)
  FSW ft4, 112(sp)
  SW s0, 116(sp)
  SW s6, 120(sp)
  FLW ft4, 356(sp)
  FSW ft4, 124(sp)
  FLW ft4, 236(sp)
  FSW ft4, 128(sp)
  FSW fs5, 132(sp)
  FLW ft4, 340(sp)
  FSW ft4, 136(sp)
  LW t4, 256(sp)
  SW t4, 140(sp)
  LW t4, 348(sp)
  SW t4, 144(sp)
  LW t4, 352(sp)
  SW t4, 148(sp)
  FLW ft4, 272(sp)
  FSW ft4, 152(sp)
  FLW ft4, 284(sp)
  FSW ft4, 156(sp)
  FLW ft4, 216(sp)
  FSW ft4, 160(sp)
  FLW ft4, 200(sp)
  FSW ft4, 164(sp)
  FLW ft4, 204(sp)
  FSW ft4, 168(sp)
  FLW ft4, 264(sp)
  FSW ft4, 172(sp)
  LW t4, 228(sp)
  SW t4, 176(sp)
  FLW ft4, 192(sp)
  FSW ft4, 180(sp)
  LW t4, 268(sp)
  SW t4, 184(sp)
  FLW ft4, 224(sp)
  FSW ft4, 188(sp)
  LW t4, 212(sp)
  FLW ft4, 304(sp)
  FLW ft3, 252(sp)
  FLW ft4, 280(sp)
  FLW ft3, 248(sp)
  FLW ft4, 316(sp)
  FLW ft3, 208(sp)
  FLW ft4, 240(sp)
  FLW ft3, 196(sp)
  LW t3, 260(sp)
  FLW ft4, 300(sp)
  LW t4, 220(sp)
  FLW ft3, 232(sp)
  FLW ft4, 296(sp)
  FLW ft3, 276(sp)
  FLW ft4, 312(sp)
  LW t3, 344(sp)
  LW t4, 288(sp)
  FLW ft3, 244(sp)
  LW t3, 292(sp)
  FLW ft4, 328(sp)
  FLW ft3, 356(sp)
  FLW ft4, 236(sp)
  FLW ft3, 340(sp)
  LW t4, 256(sp)
  LW t3, 348(sp)
  LW t4, 352(sp)
  FLW ft4, 272(sp)
  FLW ft3, 284(sp)
  FLW ft4, 216(sp)
  FLW ft3, 200(sp)
  FLW ft4, 204(sp)
  FLW ft3, 264(sp)
  LW t3, 228(sp)
  FLW ft4, 192(sp)
  LW t4, 268(sp)
  FLW ft3, 224(sp)
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
  FLW ft4, 244(sp)
  FADD.S fs7, ft4, fs9
  FLW ft4, 192(sp)
  FADD.S fs7, fs7, ft4
  FADD.S fs4, fs7, fs4
  FLW ft4, 276(sp)
  FADD.S fs0, fs0, ft4
  FLW ft4, 252(sp)
  FADD.S fs0, fs0, ft4
  FADD.S fs0, fs0, fs3
  FLW ft4, 240(sp)
  FADD.S fs1, fs1, ft4
  FADD.S fs1, fs1, fs11
  FADD.S fs1, fs1, fs10
  FADD.S fs3, fs8, fs5
  FADD.S fs3, fs3, fs6
  FADD.S fs2, fs3, fs2
  FLW ft4, 296(sp)
  FLW ft3, 264(sp)
  FADD.S fs3, ft4, ft3
  FLW ft4, 272(sp)
  FADD.S fs3, fs3, ft4
  FLW ft4, 284(sp)
  FADD.S fs3, fs3, ft4
  FLW ft4, 248(sp)
  FLW ft3, 232(sp)
  FADD.S fs5, ft4, ft3
  FLW ft4, 216(sp)
  FADD.S fs5, fs5, ft4
  FLW ft4, 208(sp)
  FADD.S fs5, fs5, ft4
  FLW ft4, 236(sp)
  FLW ft3, 196(sp)
  FADD.S fs6, ft4, ft3
  FLW ft4, 200(sp)
  FADD.S fs6, fs6, ft4
  FLW ft4, 356(sp)
  FADD.S fs6, fs6, ft4
  FLW ft4, 336(sp)
  FLW ft3, 340(sp)
  FADD.S fs7, ft4, ft3
  FLW ft4, 332(sp)
  FADD.S fs7, fs7, ft4
  FLW ft4, 328(sp)
  FADD.S fs7, fs7, ft4
  FLW ft4, 280(sp)
  FLW ft3, 316(sp)
  FADD.S fs8, ft4, ft3
  FLW ft4, 312(sp)
  FADD.S fs8, fs8, ft4
  FLW ft4, 224(sp)
  FADD.S fs8, fs8, ft4
  FLW ft4, 204(sp)
  FLW ft3, 308(sp)
  FADD.S fs9, ft4, ft3
  FLW ft4, 304(sp)
  FADD.S fs9, fs9, ft4
  FLW ft4, 300(sp)
  FADD.S fs9, fs9, ft4
  FSW fs4, 560(sp)
  FSW fs0, 564(sp)
  FSW fs1, 568(sp)
  FSW fs2, 572(sp)
  FSW fs3, 576(sp)
  FSW fs5, 580(sp)
  FSW fs6, 584(sp)
  FSW fs7, 588(sp)
  FSW fs8, 592(sp)
  FSW fs9, 596(sp)
  ADDW s3, s7, s3
  ADDW s1, s3, s1
  LW t4, 256(sp)
  ADDW s3, t4, s4
  ADDW s3, s3, s5
  ADDW s2, s2, s9
  LW t4, 260(sp)
  ADDW s2, s2, t4
  LW t4, 288(sp)
  ADDW s4, t4, s10
  ADDW s0, s4, s0
  LW t4, 292(sp)
  ADDW s4, t4, s11
  LW t4, 268(sp)
  ADDW s4, s4, t4
  LW t4, 228(sp)
  ADDW s5, t4, s6
  LW t4, 220(sp)
  ADDW s5, s5, t4
  LW t4, 344(sp)
  LW t3, 212(sp)
  ADDW s6, t4, t3
  LW t4, 352(sp)
  ADDW s6, s6, t4
  LW t4, 348(sp)
  LW t3, 324(sp)
  ADDW s7, t4, t3
  LW t4, 320(sp)
  ADDW s7, s7, t4
  SW s1, 600(sp)
  SW s3, 604(sp)
  SW s2, 608(sp)
  SW s0, 612(sp)
  SW s4, 616(sp)
  SW s5, 620(sp)
  SW s6, 624(sp)
  SW s7, 628(sp)
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
  SLLIW s2, s1, 2
  ADDI t5, sp, 600
  ADD s3, t5, s2
  LW s4, 0(s3)
  ADDI t5, sp, 560
  ADD s2, t5, s2
  FLW fs0, 0(s2)
  FCVT.S.W fs1, s4
  FSUB.S fs0, fs1, fs0
  FCVT.W.S s2, fs0, rtz
  SW s2, 0(s3)
  ADDIW s1, s1, 1
  SLTI s2, s1, 8
  BNE s2, zero, bb5
  # implict jump to bb4
bb4:
  LA s2, k
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  ADDI t5, sp, 600
  ADD s2, t5, s2
  LW s2, 0(s2)
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
  ADD s0, s1, zero
  JAL zero, bb3
main:
  LUI t0, 1048575
  ADDIW t0, t0, 1952
  ADD sp, sp, t0
  SD ra, 672(sp)
  SD s0, 680(sp)
  SD s5, 688(sp)
  SD s7, 696(sp)
  SD s8, 704(sp)
  SD s9, 712(sp)
  SD s10, 720(sp)
  SD s11, 728(sp)
  FSD fs2, 736(sp)
  FSD fs3, 744(sp)
  FSD fs4, 752(sp)
  FSD fs5, 760(sp)
  FSD fs6, 768(sp)
  FSD fs7, 776(sp)
  FSD fs9, 784(sp)
  FSD fs10, 792(sp)
  SD s2, 800(sp)
  SD s1, 816(sp)
  FSD fs0, 864(sp)
  FSD fs8, 872(sp)
  SD s3, 888(sp)
  SD s4, 904(sp)
  SD s6, 912(sp)
  FSD fs1, 920(sp)
  FSD fs11, 928(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, k
  SW s0, 0(s1)
  ADD t4, zero, zero
  SW t4, 608(sp)
  # implict jump to bb7
bb7:
  LW t4, 608(sp)
  ADD s1, t4, zero
  ADDI s2, zero, 12
  MULW s2, s1, s2
  ADDI a0, sp, 1368
  ADD s2, a0, s2
  ADD a0, s2, zero
  CALL getfarray
  ADDIW t4, s1, 1
  SW t4, 604(sp)
  LW t4, 604(sp)
  SLTI s2, t4, 40
  BNE s2, zero, bb12
  # implict jump to bb8
bb8:
  ADD t4, zero, zero
  SW t4, 600(sp)
  # implict jump to bb9
bb9:
  LW t4, 600(sp)
  ADD s3, t4, zero
  ADDI s4, zero, 12
  MULW s4, s3, s4
  ADDI a0, sp, 1080
  ADD s4, a0, s4
  ADD a0, s4, zero
  CALL getarray
  ADDIW t4, s3, 1
  SW t4, 596(sp)
  LW t4, 596(sp)
  SLTI s4, t4, 24
  BNE s4, zero, bb11
  # implict jump to bb10
bb10:
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
  ADD s0, t4, s4
  FLW fs7, 0(s0)
  ADDI t4, sp, 1464
  SD t4, 1008(sp)
  LD t4, 1008(sp)
  ADD s1, t4, s4
  FLW fs8, 0(s1)
  ADDI t4, sp, 1476
  LUI t5, 1
  ADDIW t5, t5, -1976
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1976
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
  FSW fs9, 4(sp)
  FSW fs10, 8(sp)
  FSW fs11, 12(sp)
  FLW ft4, 592(sp)
  FSW ft4, 16(sp)
  FLW ft4, 588(sp)
  FSW ft4, 20(sp)
  FLW ft4, 584(sp)
  FSW ft4, 24(sp)
  FLW ft4, 544(sp)
  FSW ft4, 28(sp)
  FLW ft4, 576(sp)
  FSW ft4, 32(sp)
  FLW ft4, 572(sp)
  FSW ft4, 36(sp)
  FLW ft4, 568(sp)
  FSW ft4, 40(sp)
  FLW ft4, 560(sp)
  FSW ft4, 44(sp)
  FLW ft4, 552(sp)
  FSW ft4, 48(sp)
  FLW ft4, 652(sp)
  FSW ft4, 52(sp)
  FLW ft4, 656(sp)
  FSW ft4, 56(sp)
  FLW ft4, 644(sp)
  FSW ft4, 60(sp)
  FLW ft4, 640(sp)
  FSW ft4, 64(sp)
  FLW ft4, 636(sp)
  FSW ft4, 68(sp)
  FLW ft4, 628(sp)
  FSW ft4, 72(sp)
  FLW ft4, 620(sp)
  FSW ft4, 76(sp)
  FLW ft4, 616(sp)
  FSW ft4, 80(sp)
  FLW ft4, 424(sp)
  FSW ft4, 84(sp)
  FLW ft4, 488(sp)
  FSW ft4, 88(sp)
  FLW ft4, 412(sp)
  FSW ft4, 92(sp)
  FLW ft4, 404(sp)
  FSW ft4, 96(sp)
  FLW ft4, 400(sp)
  FSW ft4, 100(sp)
  FLW ft4, 392(sp)
  FSW ft4, 104(sp)
  FLW ft4, 384(sp)
  FSW ft4, 108(sp)
  FLW ft4, 380(sp)
  FSW ft4, 112(sp)
  FLW ft4, 372(sp)
  FSW ft4, 116(sp)
  FLW ft4, 364(sp)
  FSW ft4, 120(sp)
  FLW ft4, 360(sp)
  FSW ft4, 124(sp)
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
  ADD s0, t4, s4
  LW s0, 0(s0)
  ADDI t4, sp, 1104
  SD t4, 1888(sp)
  LD t4, 1888(sp)
  ADD s2, t4, s4
  LW s2, 0(s2)
  ADDI t4, sp, 1152
  LUI t5, 1
  ADDIW t5, t5, -1984
  ADD t5, t5, sp
  SD t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s1, t4, s4
  LW s1, 0(s1)
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
  ADD s3, t4, s4
  LW s3, 0(s3)
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
  SD t4, 856(sp)
  LD t4, 856(sp)
  ADD s5, t4, s4
  LW t4, 0(s5)
  SW t4, 516(sp)
  LD t4, 2016(sp)
  ADD s5, t4, s4
  FLW ft4, 0(s5)
  FSW ft4, 520(sp)
  ADDI t4, sp, 1212
  SD t4, 896(sp)
  LD t4, 896(sp)
  ADD s5, t4, s4
  LW t4, 0(s5)
  SW t4, 532(sp)
  ADDI t4, sp, 1272
  SD t4, 880(sp)
  LD t4, 880(sp)
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
  SD t4, 848(sp)
  LD t4, 848(sp)
  ADD s5, t4, s4
  LW t4, 0(s5)
  SW t4, 332(sp)
  ADDI t4, sp, 1332
  SD t4, 840(sp)
  LD t4, 840(sp)
  ADD s5, t4, s4
  LW t4, 0(s5)
  SW t4, 336(sp)
  ADDI t4, sp, 1320
  SD t4, 832(sp)
  LD t4, 832(sp)
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
  SD t4, 824(sp)
  LD t4, 824(sp)
  ADD s5, t4, s4
  LW s5, 0(s5)
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s4, t4, s4
  FLW ft4, 0(s4)
  FSW ft4, 408(sp)
  ADD a0, s0, zero
  ADD a1, s2, zero
  ADD a2, s1, zero
  FSGNJ.S fa0, fs1, fs1
  ADD a3, s8, zero
  ADD a4, s7, zero
  ADD a5, s3, zero
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
  FSW fs9, 4(sp)
  FSW fs10, 8(sp)
  FSW fs11, 12(sp)
  FSW fs0, 16(sp)
  FLW ft4, 524(sp)
  FSW ft4, 20(sp)
  SW s9, 24(sp)
  FLW ft4, 512(sp)
  FSW ft4, 28(sp)
  LW t4, 504(sp)
  SW t4, 32(sp)
  LW t4, 500(sp)
  SW t4, 36(sp)
  FLW ft4, 496(sp)
  FSW ft4, 40(sp)
  FLW ft4, 492(sp)
  FSW ft4, 44(sp)
  FLW ft4, 432(sp)
  FSW ft4, 48(sp)
  FLW ft4, 484(sp)
  FSW ft4, 52(sp)
  FLW ft4, 480(sp)
  FSW ft4, 56(sp)
  LW t4, 472(sp)
  SW t4, 60(sp)
  FLW ft4, 468(sp)
  FSW ft4, 64(sp)
  LW t4, 460(sp)
  SW t4, 68(sp)
  FLW ft4, 456(sp)
  FSW ft4, 72(sp)
  FLW ft4, 452(sp)
  FSW ft4, 76(sp)
  FLW ft4, 448(sp)
  FSW ft4, 80(sp)
  FLW ft4, 444(sp)
  FSW ft4, 84(sp)
  LW t4, 436(sp)
  SW t4, 88(sp)
  LW t4, 440(sp)
  SW t4, 92(sp)
  FLW ft4, 464(sp)
  FSW ft4, 96(sp)
  FLW ft4, 476(sp)
  FSW ft4, 100(sp)
  FLW ft4, 508(sp)
  FSW ft4, 104(sp)
  LW t4, 516(sp)
  SW t4, 108(sp)
  FLW ft4, 520(sp)
  FSW ft4, 112(sp)
  LW t4, 532(sp)
  SW t4, 116(sp)
  LW t4, 536(sp)
  SW t4, 120(sp)
  FLW ft4, 540(sp)
  FSW ft4, 124(sp)
  FLW ft4, 376(sp)
  FSW ft4, 128(sp)
  FLW ft4, 324(sp)
  FSW ft4, 132(sp)
  FLW ft4, 328(sp)
  FSW ft4, 136(sp)
  LW t4, 332(sp)
  SW t4, 140(sp)
  LW t4, 336(sp)
  SW t4, 144(sp)
  LW t4, 340(sp)
  SW t4, 148(sp)
  FLW ft4, 344(sp)
  FSW ft4, 152(sp)
  FLW ft4, 348(sp)
  FSW ft4, 156(sp)
  FLW ft4, 352(sp)
  FSW ft4, 160(sp)
  FLW ft4, 356(sp)
  FSW ft4, 164(sp)
  FLW ft4, 368(sp)
  FSW ft4, 168(sp)
  FLW ft4, 320(sp)
  FSW ft4, 172(sp)
  LW t4, 388(sp)
  SW t4, 176(sp)
  FLW ft4, 396(sp)
  FSW ft4, 180(sp)
  SW s5, 184(sp)
  FLW ft4, 408(sp)
  FSW ft4, 188(sp)
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
  LUI t4, 1
  ADDIW t4, t4, -1976
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 8(sp)
  LUI t4, 1
  ADDIW t4, t4, -1992
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 16(sp)
  LUI t4, 1
  ADDIW t4, t4, -2000
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 24(sp)
  LD t4, 944(sp)
  SD t4, 32(sp)
  LUI t4, 1
  ADDIW t4, t4, -2008
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 40(sp)
  LD t4, 2000(sp)
  SD t4, 48(sp)
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 56(sp)
  LD t4, 976(sp)
  SD t4, 64(sp)
  LD t4, 984(sp)
  SD t4, 72(sp)
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 80(sp)
  LD t4, 1000(sp)
  SD t4, 88(sp)
  LD t4, 936(sp)
  SD t4, 96(sp)
  LD t4, 1016(sp)
  SD t4, 104(sp)
  LD t4, 1024(sp)
  SD t4, 112(sp)
  LD t4, 1032(sp)
  SD t4, 120(sp)
  LD t4, 1040(sp)
  SD t4, 128(sp)
  LD t4, 1048(sp)
  SD t4, 136(sp)
  LD t4, 1056(sp)
  SD t4, 144(sp)
  LD t4, 1064(sp)
  SD t4, 152(sp)
  LD t4, 1072(sp)
  SD t4, 160(sp)
  LD t4, 1848(sp)
  SD t4, 168(sp)
  LD t4, 2008(sp)
  SD t4, 176(sp)
  LD t4, 2016(sp)
  SD t4, 184(sp)
  LD t4, 2024(sp)
  SD t4, 192(sp)
  LD t4, 2032(sp)
  SD t4, 200(sp)
  LD t4, 2040(sp)
  SD t4, 208(sp)
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 216(sp)
  LD t4, 1952(sp)
  SD t4, 224(sp)
  LD t4, 1936(sp)
  SD t4, 232(sp)
  LD t4, 1920(sp)
  SD t4, 240(sp)
  LD t4, 1912(sp)
  SD t4, 248(sp)
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
  LD t4, 824(sp)
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
  LD t4, 832(sp)
  ADD s10, t4, s0
  LW s10, 0(s10)
  LD t4, 840(sp)
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
  LD t4, 848(sp)
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
  LD t4, 848(sp)
  ADD a5, t4, zero
  ADD a6, s3, zero
  ADD a7, s4, zero
  ADDI t5, sp, 0
  ADD s1, t5, zero
  LD t4, 960(sp)
  SD t4, 0(s1)
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 8(sp)
  LD t4, 1944(sp)
  SD t4, 16(sp)
  SW s5, 24(sp)
  LD t4, 952(sp)
  SD t4, 32(sp)
  LD t4, 1008(sp)
  SD t4, 40(sp)
  FSGNJ.S fa4, fs6, fs6
  FSGNJ.S fa5, fs7, fs7
  FSGNJ.S fa6, fs8, fs8
  LD t4, 944(sp)
  SD t4, 48(sp)
  SW s6, 56(sp)
  FSGNJ.S fa7, fs9, fs9
  FSW fs10, 60(sp)
  FSW fs11, 64(sp)
  LD t4, 1960(sp)
  SD t4, 72(sp)
  LD t4, 976(sp)
  SD t4, 80(sp)
  LD t4, 896(sp)
  SD t4, 88(sp)
  LD t4, 856(sp)
  SD t4, 96(sp)
  LD t4, 984(sp)
  SD t4, 104(sp)
  FSW fs1, 112(sp)
  FSW fs0, 116(sp)
  LD t4, 1968(sp)
  SD t4, 120(sp)
  SW s7, 128(sp)
  LD t4, 936(sp)
  SD t4, 136(sp)
  LD t4, 1016(sp)
  SD t4, 144(sp)
  FLW ft4, 428(sp)
  FSW ft4, 152(sp)
  FLW ft4, 580(sp)
  FSW ft4, 156(sp)
  LD t4, 808(sp)
  SD t4, 160(sp)
  LD t4, 880(sp)
  SD t4, 168(sp)
  SW s8, 176(sp)
  SW s9, 180(sp)
  FLW ft4, 624(sp)
  FSW ft4, 184(sp)
  FLW ft4, 632(sp)
  FSW ft4, 188(sp)
  LD t4, 1856(sp)
  SD t4, 192(sp)
  SW s10, 200(sp)
  LD t4, 1056(sp)
  SD t4, 208(sp)
  LW t4, 612(sp)
  SW t4, 216(sp)
  LD t4, 1904(sp)
  SD t4, 224(sp)
  LUI t4, 1
  ADDIW t4, t4, -2016
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 232(sp)
  FLW ft4, 664(sp)
  FSW ft4, 240(sp)
  FLW ft4, 660(sp)
  FSW ft4, 244(sp)
  LD t4, 1848(sp)
  SD t4, 248(sp)
  LW t4, 648(sp)
  SW t4, 256(sp)
  LD t4, 1928(sp)
  SD t4, 264(sp)
  LD t4, 2008(sp)
  SD t4, 272(sp)
  FLW ft4, 548(sp)
  FSW ft4, 280(sp)
  SW s2, 284(sp)
  FLW ft4, 556(sp)
  FSW ft4, 288(sp)
  LD t4, 2032(sp)
  SD t4, 296(sp)
  LD t4, 2040(sp)
  SD t4, 304(sp)
  FLW ft4, 564(sp)
  FSW ft4, 312(sp)
  SW s0, 316(sp)
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
  LD t4, 896(sp)
  LD t3, 856(sp)
  LD t4, 984(sp)
  LD t3, 1968(sp)
  LD t4, 936(sp)
  LD t3, 1016(sp)
  FLW ft4, 428(sp)
  FLW ft3, 580(sp)
  LD t4, 808(sp)
  LD t3, 880(sp)
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
  LD s5, 688(sp)
  LD s7, 696(sp)
  LD s8, 704(sp)
  LD s9, 712(sp)
  LD s10, 720(sp)
  LD s11, 728(sp)
  FLD fs2, 736(sp)
  FLD fs3, 744(sp)
  FLD fs4, 752(sp)
  FLD fs5, 760(sp)
  FLD fs6, 768(sp)
  FLD fs7, 776(sp)
  FLD fs9, 784(sp)
  FLD fs10, 792(sp)
  LD s2, 800(sp)
  LD s1, 816(sp)
  FLD fs0, 864(sp)
  FLD fs8, 872(sp)
  LD s3, 888(sp)
  LD s4, 904(sp)
  LD s6, 912(sp)
  FLD fs1, 920(sp)
  FLD fs11, 928(sp)
  LUI t0, 1
  ADDIW t0, t0, -1952
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb11:
  LW t3, 596(sp)
  ADD t4, t3, zero
  SW t4, 600(sp)
  JAL zero, bb9
bb12:
  LW t3, 604(sp)
  ADD t4, t3, zero
  SW t4, 608(sp)
  JAL zero, bb7
params_fa40:
  ADDI sp, sp, -720
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
  LD s9, 728(sp)
  LD s10, 736(sp)
  LD s11, 744(sp)
  LD t4, 752(sp)
  SD t4, 288(sp)
  LD t4, 760(sp)
  SD t4, 472(sp)
  LD t4, 768(sp)
  SD t4, 296(sp)
  LD t4, 776(sp)
  SD t4, 304(sp)
  LD t4, 784(sp)
  SD t4, 704(sp)
  LD t4, 792(sp)
  SD t4, 528(sp)
  LD t4, 800(sp)
  SD t4, 536(sp)
  LD t4, 808(sp)
  SD t4, 544(sp)
  LD t4, 816(sp)
  SD t4, 552(sp)
  LD t4, 824(sp)
  SD t4, 560(sp)
  LD t4, 832(sp)
  SD t4, 568(sp)
  LD t4, 840(sp)
  SD t4, 576(sp)
  LD t4, 848(sp)
  SD t4, 584(sp)
  LD t4, 856(sp)
  SD t4, 592(sp)
  LD t4, 864(sp)
  SD t4, 600(sp)
  LD t4, 872(sp)
  SD t4, 480(sp)
  LD t4, 880(sp)
  SD t4, 608(sp)
  LD t4, 888(sp)
  SD t4, 616(sp)
  LD t4, 896(sp)
  SD t4, 624(sp)
  LD t4, 904(sp)
  SD t4, 632(sp)
  LD t4, 912(sp)
  SD t4, 640(sp)
  LD t4, 920(sp)
  SD t4, 648(sp)
  LD t4, 928(sp)
  SD t4, 656(sp)
  LD t4, 936(sp)
  SD t4, 664(sp)
  LD t4, 944(sp)
  SD t4, 672(sp)
  LD t4, 952(sp)
  SD t4, 680(sp)
  LD t4, 960(sp)
  SD t4, 688(sp)
  LD t4, 968(sp)
  SD t4, 696(sp)
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
  LD t4, 288(sp)
  ADD s0, t4, t6
  FLW fs3, 0(s0)
  LD t4, 472(sp)
  ADD s0, t4, t6
  FLW fs4, 0(s0)
  FADD.S fs3, fs3, fs4
  LD t4, 296(sp)
  ADD s0, t4, t6
  FLW fs4, 0(s0)
  FADD.S fs3, fs3, fs4
  LD t4, 304(sp)
  ADD s0, t4, t6
  FLW fs4, 0(s0)
  FADD.S fs3, fs3, fs4
  LD t4, 704(sp)
  ADD s0, t4, t6
  FLW fs4, 0(s0)
  LD t4, 528(sp)
  ADD s0, t4, t6
  FLW fs5, 0(s0)
  FADD.S fs4, fs4, fs5
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
  LD t4, 560(sp)
  ADD s0, t4, t6
  FLW fs6, 0(s0)
  FADD.S fs5, fs5, fs6
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
  LD t4, 592(sp)
  ADD s0, t4, t6
  FLW fs7, 0(s0)
  FADD.S fs6, fs6, fs7
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
  LD t4, 616(sp)
  ADD s0, t4, t6
  FLW fs8, 0(s0)
  FADD.S fs7, fs7, fs8
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
  LD t4, 648(sp)
  ADD s0, t4, t6
  FLW fs9, 0(s0)
  FADD.S fs8, fs8, fs9
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
  LD t4, 680(sp)
  ADD s0, t4, t6
  FLW fs10, 0(s0)
  FADD.S fs9, fs9, fs10
  LD t4, 688(sp)
  ADD s0, t4, t6
  FLW fs10, 0(s0)
  FADD.S fs9, fs9, fs10
  LD t4, 696(sp)
  ADD s0, t4, t6
  FLW fs10, 0(s0)
  FADD.S fs9, fs9, fs10
  FSW fs0, 488(sp)
  FSW fs1, 492(sp)
  FSW fs2, 496(sp)
  FSW fs3, 500(sp)
  FSW fs4, 504(sp)
  FSW fs5, 508(sp)
  FSW fs6, 512(sp)
  FSW fs7, 516(sp)
  FSW fs8, 520(sp)
  FSW fs9, 524(sp)
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
  BNE s0, zero, bb15
  # implict jump to bb14
bb14:
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
  SD s10, 8(sp)
  SD s11, 16(sp)
  LD t4, 288(sp)
  SD t4, 24(sp)
  LD t4, 472(sp)
  SD t4, 32(sp)
  LD t4, 296(sp)
  SD t4, 40(sp)
  LD t4, 304(sp)
  SD t4, 48(sp)
  LD t4, 704(sp)
  SD t4, 56(sp)
  LD t4, 528(sp)
  SD t4, 64(sp)
  LD t4, 536(sp)
  SD t4, 72(sp)
  LD t4, 544(sp)
  SD t4, 80(sp)
  LD t4, 552(sp)
  SD t4, 88(sp)
  LD t4, 560(sp)
  SD t4, 96(sp)
  LD t4, 568(sp)
  SD t4, 104(sp)
  LD t4, 576(sp)
  SD t4, 112(sp)
  LD t4, 584(sp)
  SD t4, 120(sp)
  LD t4, 592(sp)
  SD t4, 128(sp)
  LD t4, 600(sp)
  SD t4, 136(sp)
  LD t4, 480(sp)
  SD t4, 144(sp)
  LD t4, 608(sp)
  SD t4, 152(sp)
  LD t4, 616(sp)
  SD t4, 160(sp)
  LD t4, 624(sp)
  SD t4, 168(sp)
  LD t4, 632(sp)
  SD t4, 176(sp)
  LD t4, 640(sp)
  SD t4, 184(sp)
  LD t4, 648(sp)
  SD t4, 192(sp)
  LD t4, 656(sp)
  SD t4, 200(sp)
  LD t4, 664(sp)
  SD t4, 208(sp)
  LD t4, 672(sp)
  SD t4, 216(sp)
  LD t4, 680(sp)
  SD t4, 224(sp)
  LD t4, 688(sp)
  SD t4, 232(sp)
  LD t4, 696(sp)
  SD t4, 240(sp)
  ADDI t4, sp, 488
  SD t4, 248(sp)
  LD t4, 288(sp)
  LD t3, 472(sp)
  LD t4, 296(sp)
  LD t3, 304(sp)
  LD t4, 704(sp)
  LD t3, 528(sp)
  LD t4, 536(sp)
  LD t3, 544(sp)
  LD t4, 552(sp)
  LD t3, 560(sp)
  LD t4, 568(sp)
  LD t3, 576(sp)
  LD t4, 584(sp)
  LD t3, 592(sp)
  LD t4, 600(sp)
  LD t3, 480(sp)
  LD t4, 608(sp)
  LD t3, 616(sp)
  LD t4, 624(sp)
  LD t3, 632(sp)
  LD t4, 640(sp)
  LD t3, 648(sp)
  LD t4, 656(sp)
  LD t3, 664(sp)
  LD t4, 672(sp)
  LD t3, 680(sp)
  LD t4, 688(sp)
  LD t3, 696(sp)
  ADDI t5, sp, 488
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
  ADDI sp, sp, 720
  JALR zero, 0(ra)
bb15:
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
  FLW fs9, 404(sp)
  FLW fs10, 408(sp)
  FLW ft4, 412(sp)
  FSW ft4, 244(sp)
  FLW ft4, 416(sp)
  FSW ft4, 240(sp)
  FLW ft4, 420(sp)
  FSW ft4, 144(sp)
  FLW ft4, 424(sp)
  FSW ft4, 148(sp)
  FLW ft4, 428(sp)
  FSW ft4, 132(sp)
  FLW ft4, 432(sp)
  FSW ft4, 140(sp)
  FLW ft4, 436(sp)
  FSW ft4, 152(sp)
  FLW ft4, 440(sp)
  FSW ft4, 136(sp)
  FLW ft4, 444(sp)
  FSW ft4, 156(sp)
  FLW ft4, 448(sp)
  FSW ft4, 160(sp)
  FLW ft4, 452(sp)
  FSW ft4, 168(sp)
  FLW ft4, 456(sp)
  FSW ft4, 236(sp)
  FLW ft4, 460(sp)
  FSW ft4, 232(sp)
  FLW ft4, 464(sp)
  FSW ft4, 228(sp)
  FLW ft4, 468(sp)
  FSW ft4, 224(sp)
  FLW ft4, 472(sp)
  FSW ft4, 220(sp)
  FLW ft4, 476(sp)
  FSW ft4, 216(sp)
  FLW ft4, 480(sp)
  FSW ft4, 212(sp)
  FLW ft4, 484(sp)
  FSW ft4, 208(sp)
  FLW ft4, 488(sp)
  FSW ft4, 204(sp)
  FLW ft4, 492(sp)
  FSW ft4, 200(sp)
  FLW ft4, 496(sp)
  FSW ft4, 196(sp)
  FLW ft4, 500(sp)
  FSW ft4, 192(sp)
  FLW ft4, 504(sp)
  FSW ft4, 128(sp)
  FLW ft4, 508(sp)
  FSW ft4, 188(sp)
  FLW ft4, 512(sp)
  FSW ft4, 184(sp)
  FLW ft4, 516(sp)
  FSW ft4, 180(sp)
  FLW ft4, 520(sp)
  FSW ft4, 176(sp)
  FLW ft4, 524(sp)
  FSW ft4, 172(sp)
  FCVT.S.L ft11, zero
  FLW ft4, 172(sp)
  FEQ.S s0, ft4, ft11
  XORI s0, s0, 1
  BNE s0, zero, bb18
  # implict jump to bb17
bb17:
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
  FSW fs10, 4(sp)
  FLW ft4, 244(sp)
  FSW ft4, 8(sp)
  FLW ft4, 240(sp)
  FSW ft4, 12(sp)
  FLW ft4, 144(sp)
  FSW ft4, 16(sp)
  FLW ft4, 148(sp)
  FSW ft4, 20(sp)
  FLW ft4, 132(sp)
  FSW ft4, 24(sp)
  FLW ft4, 140(sp)
  FSW ft4, 28(sp)
  FLW ft4, 152(sp)
  FSW ft4, 32(sp)
  FLW ft4, 136(sp)
  FSW ft4, 36(sp)
  FLW ft4, 156(sp)
  FSW ft4, 40(sp)
  FLW ft4, 160(sp)
  FSW ft4, 44(sp)
  FLW ft4, 168(sp)
  FSW ft4, 48(sp)
  FLW ft4, 236(sp)
  FSW ft4, 52(sp)
  FLW ft4, 232(sp)
  FSW ft4, 56(sp)
  FLW ft4, 228(sp)
  FSW ft4, 60(sp)
  FLW ft4, 224(sp)
  FSW ft4, 64(sp)
  FLW ft4, 220(sp)
  FSW ft4, 68(sp)
  FLW ft4, 216(sp)
  FSW ft4, 72(sp)
  FLW ft4, 212(sp)
  FSW ft4, 76(sp)
  FLW ft4, 208(sp)
  FSW ft4, 80(sp)
  FLW ft4, 204(sp)
  FSW ft4, 84(sp)
  FLW ft4, 200(sp)
  FSW ft4, 88(sp)
  FLW ft4, 196(sp)
  FSW ft4, 92(sp)
  FLW ft4, 192(sp)
  FSW ft4, 96(sp)
  FLW ft4, 128(sp)
  FSW ft4, 100(sp)
  FLW ft4, 188(sp)
  FSW ft4, 104(sp)
  FLW ft4, 184(sp)
  FSW ft4, 108(sp)
  FLW ft4, 180(sp)
  FSW ft4, 112(sp)
  FLW ft4, 176(sp)
  FSW ft4, 116(sp)
  FLW ft4, 172(sp)
  FSW ft4, 120(sp)
  FLW ft4, 164(sp)
  FSW ft4, 124(sp)
  FLW ft4, 244(sp)
  FLW ft3, 240(sp)
  FLW ft4, 144(sp)
  FLW ft3, 148(sp)
  FLW ft4, 132(sp)
  FLW ft3, 140(sp)
  FLW ft4, 152(sp)
  FLW ft3, 136(sp)
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
bb18:
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
  FLW ft4, 240(sp)
  FLW ft3, 144(sp)
  FADD.S fs3, ft4, ft3
  FLW ft4, 148(sp)
  FADD.S fs3, fs3, ft4
  FLW ft4, 132(sp)
  FADD.S fs3, fs3, ft4
  FLW ft4, 140(sp)
  FLW ft3, 152(sp)
  FADD.S fs4, ft4, ft3
  FLW ft4, 136(sp)
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
  FSW fs1, 364(sp)
  FSW fs2, 368(sp)
  FSW fs3, 372(sp)
  FSW fs4, 376(sp)
  FSW fs5, 380(sp)
  FSW fs6, 384(sp)
  FSW fs7, 388(sp)
  FSW fs8, 392(sp)
  FSW fs9, 396(sp)
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
  ADDI sp, sp, -880
  SD s0, 392(sp)
  SD s2, 400(sp)
  SD s4, 408(sp)
  SD s5, 416(sp)
  SD s6, 424(sp)
  SD s7, 432(sp)
  SD s8, 440(sp)
  FSD fs2, 448(sp)
  FSD fs3, 456(sp)
  FSD fs0, 480(sp)
  SD s1, 504(sp)
  SD ra, 520(sp)
  SD s3, 528(sp)
  SD s9, 536(sp)
  SD s10, 544(sp)
  SD s11, 552(sp)
  FSD fs1, 560(sp)
  FSD fs4, 568(sp)
  FSD fs5, 576(sp)
  FSD fs6, 744(sp)
  FSD fs7, 752(sp)
  FSD fs8, 760(sp)
  FSD fs10, 768(sp)
  FSD fs9, 784(sp)
  FSD fs11, 792(sp)
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
  ADD s7, a7, zero
  ADDI t5, sp, 880
  ADD s8, t5, zero
  LD t4, 0(s8)
  SD t4, 512(sp)
  LD t4, 888(sp)
  SD t4, 496(sp)
  LD t4, 896(sp)
  SD t4, 488(sp)
  LW t4, 904(sp)
  SW t4, 364(sp)
  LD t4, 912(sp)
  SD t4, 472(sp)
  LD t4, 920(sp)
  SD t4, 464(sp)
  FSGNJ.D fs4, fa4, fa4
  FSGNJ.D fs5, fa5, fa5
  FSGNJ.D fs6, fa6, fa6
  LD t4, 928(sp)
  SD t4, 736(sp)
  LW t4, 936(sp)
  SW t4, 360(sp)
  FSGNJ.D fs7, fa7, fa7
  FLW fs8, 940(sp)
  FLW fs9, 944(sp)
  LD t4, 952(sp)
  SD t4, 864(sp)
  LD t4, 960(sp)
  SD t4, 664(sp)
  LD t4, 968(sp)
  SD t4, 672(sp)
  LD t4, 976(sp)
  SD t4, 680(sp)
  LD t4, 984(sp)
  SD t4, 688(sp)
  FLW fs10, 992(sp)
  FLW ft4, 996(sp)
  FSW ft4, 324(sp)
  LD t4, 1000(sp)
  SD t4, 696(sp)
  LW t4, 1008(sp)
  SW t4, 388(sp)
  LD t4, 1016(sp)
  SD t4, 704(sp)
  LD t4, 1024(sp)
  SD t4, 712(sp)
  FLW ft4, 1032(sp)
  FSW ft4, 328(sp)
  FLW ft4, 1036(sp)
  FSW ft4, 332(sp)
  LD t4, 1040(sp)
  SD t4, 720(sp)
  LD t4, 1048(sp)
  SD t4, 728(sp)
  LW t4, 1056(sp)
  SW t4, 384(sp)
  LW t4, 1060(sp)
  SW t4, 380(sp)
  FLW ft4, 1064(sp)
  FSW ft4, 336(sp)
  FLW ft4, 1068(sp)
  FSW ft4, 340(sp)
  LD t4, 1072(sp)
  SD t4, 776(sp)
  LW t4, 1080(sp)
  SW t4, 376(sp)
  LD t4, 1088(sp)
  SD t4, 800(sp)
  LW t4, 1096(sp)
  SW t4, 320(sp)
  LD t4, 1104(sp)
  SD t4, 808(sp)
  LD t4, 1112(sp)
  SD t4, 816(sp)
  FLW ft4, 1120(sp)
  FSW ft4, 344(sp)
  FLW ft4, 1124(sp)
  FSW ft4, 348(sp)
  LD t4, 1128(sp)
  SD t4, 824(sp)
  LW t4, 1136(sp)
  SW t4, 372(sp)
  LD t4, 1144(sp)
  SD t4, 832(sp)
  LD t4, 1152(sp)
  SD t4, 840(sp)
  FLW ft4, 1160(sp)
  FSW ft4, 352(sp)
  LW t4, 1164(sp)
  SW t4, 368(sp)
  FLW ft4, 1168(sp)
  FSW ft4, 356(sp)
  LD t4, 1176(sp)
  SD t4, 848(sp)
  LD t4, 1184(sp)
  SD t4, 856(sp)
  FLW ft10, 1192(sp)
  LW t6, 1196(sp)
  LA t2, k
  LW t2, 0(t2)
  SLLIW t2, t2, 2
  ADD s2, s2, t2
  FLW ft11, 0(s2)
  FADD.S ft11, fs0, ft11
  FADD.S ft11, ft11, fs1
  FADD.S ft11, ft11, fs2
  ADD s2, s4, t2
  FLW ft9, 0(s2)
  FADD.S ft9, fs3, ft9
  LD t4, 512(sp)
  ADD s2, t4, t2
  FLW ft8, 0(s2)
  FADD.S ft8, ft9, ft8
  LD t4, 472(sp)
  ADD s2, t4, t2
  FLW ft9, 0(s2)
  FADD.S ft8, ft8, ft9
  LD t4, 464(sp)
  ADD s2, t4, t2
  FLW ft9, 0(s2)
  FADD.S ft9, ft9, fs4
  FADD.S ft9, ft9, fs5
  FADD.S ft9, ft9, fs6
  LD t4, 736(sp)
  ADD s2, t4, t2
  FLW ft7, 0(s2)
  FADD.S ft7, ft7, fs7
  FADD.S ft7, ft7, fs8
  FADD.S ft7, ft7, fs9
  LD t4, 664(sp)
  ADD s2, t4, t2
  FLW ft6, 0(s2)
  LD t4, 688(sp)
  ADD s2, t4, t2
  FLW ft5, 0(s2)
  FADD.S ft5, ft6, ft5
  FADD.S ft5, ft5, fs10
  FLW ft4, 324(sp)
  FADD.S ft5, ft5, ft4
  LD t4, 704(sp)
  ADD s2, t4, t2
  FLW ft6, 0(s2)
  LD t4, 712(sp)
  ADD s2, t4, t2
  FLW ft2, 0(s2)
  FADD.S ft2, ft6, ft2
  FLW ft4, 328(sp)
  FADD.S ft2, ft2, ft4
  FLW ft4, 332(sp)
  FADD.S ft2, ft2, ft4
  FLW ft4, 336(sp)
  FLW ft3, 340(sp)
  FADD.S ft6, ft4, ft3
  LD t4, 800(sp)
  ADD s2, t4, t2
  FLW ft1, 0(s2)
  FADD.S ft1, ft6, ft1
  FLW ft4, 344(sp)
  FADD.S ft1, ft1, ft4
  LD t4, 824(sp)
  ADD s2, t4, t2
  FLW ft6, 0(s2)
  FLW ft4, 348(sp)
  FADD.S ft6, ft4, ft6
  LD t4, 840(sp)
  ADD s2, t4, t2
  FLW ft0, 0(s2)
  FADD.S ft0, ft6, ft0
  FLW ft4, 352(sp)
  FADD.S ft0, ft0, ft4
  LD t4, 848(sp)
  ADD s2, t4, t2
  FLW ft6, 0(s2)
  FLW ft4, 356(sp)
  FADD.S ft6, ft4, ft6
  LD t4, 856(sp)
  ADD s2, t4, t2
  FLW fs11, 0(s2)
  FADD.S fs11, ft6, fs11
  FADD.S fs11, fs11, ft10
  FSW ft11, 624(sp)
  FSW ft8, 628(sp)
  FSW ft9, 632(sp)
  FSW ft7, 636(sp)
  FSW ft5, 640(sp)
  FSW ft2, 644(sp)
  FSW ft1, 648(sp)
  FSW ft0, 652(sp)
  FSW fs11, 656(sp)
  LA s2, .CONSTANT.7.0
  FLW fs11, 0(s2)
  FSW fs11, 660(sp)
  ADD s0, s0, t2
  LW s0, 0(s0)
  ADDW s0, s0, s1
  ADDW s0, s0, s3
  ADD s2, s5, t2
  LW s2, 0(s2)
  ADDW s2, s2, s6
  ADDW s2, s2, s7
  LD t4, 496(sp)
  ADD t1, t4, t2
  LW t1, 0(t1)
  LD t4, 488(sp)
  ADD t0, t4, t2
  LW t0, 0(t0)
  ADDW t0, t1, t0
  LW t4, 364(sp)
  ADDW t0, t0, t4
  LD t4, 864(sp)
  ADD t1, t4, t2
  LW t1, 0(t1)
  LW t4, 360(sp)
  ADDW t1, t4, t1
  LD t4, 672(sp)
  ADD ra, t4, t2
  LW ra, 0(ra)
  ADDW ra, t1, ra
  LD t4, 680(sp)
  ADD t1, t4, t2
  LW t1, 0(t1)
  LD t4, 696(sp)
  ADD s11, t4, t2
  LW s11, 0(s11)
  ADDW s11, t1, s11
  LW t4, 388(sp)
  ADDW s11, s11, t4
  LD t4, 720(sp)
  ADD t1, t4, t2
  LW t1, 0(t1)
  LD t4, 728(sp)
  ADD s10, t4, t2
  LW s10, 0(s10)
  ADDW s10, t1, s10
  LW t4, 384(sp)
  ADDW s10, s10, t4
  LD t4, 776(sp)
  ADD t1, t4, t2
  LW t1, 0(t1)
  LW t4, 380(sp)
  ADDW t1, t4, t1
  LW t4, 376(sp)
  ADDW t1, t1, t4
  LD t4, 808(sp)
  ADD s9, t4, t2
  LW s9, 0(s9)
  LW t4, 320(sp)
  ADDW s9, t4, s9
  LD t4, 816(sp)
  ADD s8, t4, t2
  LW s8, 0(s8)
  ADDW s8, s9, s8
  LD t4, 832(sp)
  ADD s9, t4, t2
  LW s9, 0(s9)
  LW t4, 372(sp)
  ADDW s9, t4, s9
  LW t4, 368(sp)
  ADDW s9, s9, t4
  ADDW s9, s9, t6
  SW s0, 584(sp)
  SW s2, 588(sp)
  SW t0, 592(sp)
  SW ra, 596(sp)
  SW s11, 600(sp)
  SW s10, 604(sp)
  SW t1, 608(sp)
  SW s8, 612(sp)
  SW s9, 616(sp)
  SW zero, 620(sp)
  BNE t6, zero, bb21
  # implict jump to bb20
bb20:
  FCVT.S.W fs11, t6
  FCVT.W.S s0, ft10, rtz
  FSGNJ.S fa0, fs0, fs0
  ADDI a0, sp, 584
  ADD a0, a0, zero
  ADD a1, s1, zero
  ADDI a2, sp, 624
  ADD a2, a2, zero
  FSGNJ.S fa1, fs1, fs1
  ADD a3, s3, zero
  FSGNJ.S fa2, fs2, fs2
  FSGNJ.S fa3, fs3, fs3
  ADD a4, s4, zero
  ADD a5, s5, zero
  ADD a6, s6, zero
  ADD a7, s7, zero
  ADDI t5, sp, 0
  ADD s1, t5, zero
  LD t4, 512(sp)
  SD t4, 0(s1)
  LD t4, 496(sp)
  SD t4, 8(sp)
  LD t4, 488(sp)
  SD t4, 16(sp)
  LW t4, 364(sp)
  SW t4, 24(sp)
  LD t4, 472(sp)
  SD t4, 32(sp)
  LD t4, 464(sp)
  SD t4, 40(sp)
  FSGNJ.S fa4, fs4, fs4
  FSGNJ.S fa5, fs5, fs5
  FSGNJ.S fa6, fs6, fs6
  LD t4, 736(sp)
  SD t4, 48(sp)
  LW t4, 360(sp)
  SW t4, 56(sp)
  FSGNJ.S fa7, fs7, fs7
  FSW fs8, 60(sp)
  FSW fs9, 64(sp)
  LD t4, 864(sp)
  SD t4, 72(sp)
  LD t4, 664(sp)
  SD t4, 80(sp)
  LD t4, 672(sp)
  SD t4, 88(sp)
  LD t4, 680(sp)
  SD t4, 96(sp)
  LD t4, 688(sp)
  SD t4, 104(sp)
  FSW fs10, 112(sp)
  FLW ft4, 324(sp)
  FSW ft4, 116(sp)
  LD t4, 696(sp)
  SD t4, 120(sp)
  LW t4, 388(sp)
  SW t4, 128(sp)
  LD t4, 704(sp)
  SD t4, 136(sp)
  LD t4, 712(sp)
  SD t4, 144(sp)
  FLW ft4, 328(sp)
  FSW ft4, 152(sp)
  FLW ft4, 332(sp)
  FSW ft4, 156(sp)
  LD t4, 720(sp)
  SD t4, 160(sp)
  LD t4, 728(sp)
  SD t4, 168(sp)
  LW t4, 384(sp)
  SW t4, 176(sp)
  LW t4, 380(sp)
  SW t4, 180(sp)
  FLW ft4, 336(sp)
  FSW ft4, 184(sp)
  FLW ft4, 340(sp)
  FSW ft4, 188(sp)
  LD t4, 776(sp)
  SD t4, 192(sp)
  LW t4, 376(sp)
  SW t4, 200(sp)
  LD t4, 800(sp)
  SD t4, 208(sp)
  LW t4, 320(sp)
  SW t4, 216(sp)
  LD t4, 808(sp)
  SD t4, 224(sp)
  LD t4, 816(sp)
  SD t4, 232(sp)
  FLW ft4, 344(sp)
  FSW ft4, 240(sp)
  FLW ft4, 348(sp)
  FSW ft4, 244(sp)
  LD t4, 824(sp)
  SD t4, 248(sp)
  LW t4, 372(sp)
  SW t4, 256(sp)
  LD t4, 832(sp)
  SD t4, 264(sp)
  LD t4, 840(sp)
  SD t4, 272(sp)
  FLW ft4, 352(sp)
  FSW ft4, 280(sp)
  LW t4, 368(sp)
  SW t4, 284(sp)
  FLW ft4, 356(sp)
  FSW ft4, 288(sp)
  LD t4, 848(sp)
  SD t4, 296(sp)
  LD t4, 856(sp)
  SD t4, 304(sp)
  FSW fs11, 312(sp)
  SW s0, 316(sp)
  LD t4, 512(sp)
  LD t3, 496(sp)
  LD t4, 488(sp)
  LW t3, 364(sp)
  LD t4, 472(sp)
  LD t3, 464(sp)
  LD t4, 736(sp)
  LW t3, 360(sp)
  LD t4, 864(sp)
  LD t3, 664(sp)
  LD t4, 672(sp)
  LD t3, 680(sp)
  LD t4, 688(sp)
  FLW ft4, 324(sp)
  LD t3, 696(sp)
  LW t4, 388(sp)
  LD t3, 704(sp)
  LD t4, 712(sp)
  FLW ft3, 328(sp)
  FLW ft4, 332(sp)
  LD t3, 720(sp)
  LD t4, 728(sp)
  LW t3, 384(sp)
  LW t4, 380(sp)
  FLW ft3, 336(sp)
  FLW ft4, 340(sp)
  LD t3, 776(sp)
  LW t4, 376(sp)
  LD t3, 800(sp)
  LW t4, 320(sp)
  LD t3, 808(sp)
  LD t4, 816(sp)
  FLW ft3, 344(sp)
  FLW ft4, 348(sp)
  LD t3, 824(sp)
  LW t4, 372(sp)
  LD t3, 832(sp)
  LD t4, 840(sp)
  FLW ft3, 352(sp)
  LW t3, 368(sp)
  FLW ft4, 356(sp)
  LD t4, 848(sp)
  LD t3, 856(sp)
  CALL params_mix
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD s0, 392(sp)
  LD s2, 400(sp)
  LD s4, 408(sp)
  LD s5, 416(sp)
  LD s6, 424(sp)
  LD s7, 432(sp)
  LD s8, 440(sp)
  FLD fs2, 448(sp)
  FLD fs3, 456(sp)
  FLD fs0, 480(sp)
  LD s1, 504(sp)
  LD ra, 520(sp)
  LD s3, 528(sp)
  LD s9, 536(sp)
  LD s10, 544(sp)
  LD s11, 552(sp)
  FLD fs1, 560(sp)
  FLD fs4, 568(sp)
  FLD fs5, 576(sp)
  FLD fs6, 744(sp)
  FLD fs7, 752(sp)
  FLD fs8, 760(sp)
  FLD fs10, 768(sp)
  FLD fs9, 784(sp)
  FLD fs11, 792(sp)
  ADDI sp, sp, 880
  JALR zero, 0(ra)
bb21:
  ADDI a0, zero, 10
  ADDI a1, sp, 624
  ADD a1, a1, zero
  CALL putfarray
  ADDI a0, zero, 10
  ADDI a1, sp, 584
  ADD a1, a1, zero
  CALL putarray
  ADD s0, zero, zero
  # implict jump to bb22
bb22:
  ADD s1, s0, zero
  SLLIW s2, s1, 2
  ADDI t5, sp, 584
  ADD s3, t5, s2
  LW s4, 0(s3)
  ADDI t5, sp, 624
  ADD s2, t5, s2
  FLW fs0, 0(s2)
  FCVT.S.W fs1, s4
  FSUB.S fs0, fs1, fs0
  FCVT.W.S s2, fs0, rtz
  SW s2, 0(s3)
  ADDIW s1, s1, 1
  SLTI s2, s1, 10
  BNE s2, zero, bb24
  # implict jump to bb23
bb23:
  LA s2, k
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  ADDI t5, sp, 584
  ADD s2, t5, s2
  LW s2, 0(s2)
  FLW fs0, 656(sp)
  FCVT.S.W fs1, s2
  FMUL.S fs0, fs1, fs0
  FCVT.W.S s2, fs0, rtz
  ADD a0, s2, zero
  LD s0, 392(sp)
  LD s2, 400(sp)
  LD s4, 408(sp)
  LD s5, 416(sp)
  LD s6, 424(sp)
  LD s7, 432(sp)
  LD s8, 440(sp)
  FLD fs2, 448(sp)
  FLD fs3, 456(sp)
  FLD fs0, 480(sp)
  LD s1, 504(sp)
  LD ra, 520(sp)
  LD s3, 528(sp)
  LD s9, 536(sp)
  LD s10, 544(sp)
  LD s11, 552(sp)
  FLD fs1, 560(sp)
  FLD fs4, 568(sp)
  FLD fs5, 576(sp)
  FLD fs6, 744(sp)
  FLD fs7, 752(sp)
  FLD fs8, 760(sp)
  FLD fs10, 768(sp)
  FLD fs9, 784(sp)
  FLD fs11, 792(sp)
  ADDI sp, sp, 880
  JALR zero, 0(ra)
bb24:
  ADD s0, s1, zero
  JAL zero, bb22
