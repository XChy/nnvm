.global main
.global long_func
.section .bss

.section .data
SHIFT_TABLE:
.byte 1, 0, 0, 0, 2, 0, 0, 0, 4, 0, 0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 32, 0, 0, 0, 64, 0, 0, 0, 128, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 4, 0, 0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 32, 0, 0, 0, 64, 0, 0, 0, 128, 0, 0
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  CALL long_func
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
long_func:
  LUI t0, 1048574
  ADDI t0, t0, -992
  ADD sp, sp, t0
  LUI t5, 2
  ADDI t5, t5, 880
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t6, 2
  ADDI t6, t6, 888
  ADD t6, t6, sp
  SD s4, 0(t6)
  LUI t5, 2
  ADDI t5, t5, 896
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t6, 2
  ADDI t6, t6, 904
  ADD t6, t6, sp
  SD s6, 0(t6)
  LUI t5, 2
  ADDI t5, t5, 912
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t6, 2
  ADDI t6, t6, 920
  ADD t6, t6, sp
  SD s8, 0(t6)
  LUI t5, 2
  ADDI t5, t5, 928
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t6, 2
  ADDI t6, t6, 936
  ADD t6, t6, sp
  SD s1, 0(t6)
  LUI t5, 2
  ADDI t5, t5, 944
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t6, 2
  ADDI t6, t6, 952
  ADD t6, t6, sp
  SD s11, 0(t6)
  LUI t5, 2
  ADDI t5, t5, 960
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t4, 2
  ADDI t4, t4, 968
  ADD t4, t4, sp
  SD s10, 0(t4)
  LUI t4, 2
  ADDI t4, t4, 976
  ADD t4, t4, sp
  SD s9, 0(t4)
  ADD t4, zero, zero
  SW t4, 512(sp)
  ADDI t4, zero, 1
  SW t4, 504(sp)
  ADD t4, zero, zero
  SW t4, 496(sp)
  ADD t4, zero, zero
  SB t4, 488(sp)
  ADD t4, zero, zero
  SW t4, 480(sp)
  ADD t4, zero, zero
  SB t4, 472(sp)
  ADD t4, zero, zero
  SW t4, 464(sp)
  ADD t4, zero, zero
  SW t4, 456(sp)
  ADD t4, zero, zero
  SW t4, 448(sp)
  ADD t4, zero, zero
  SW t4, 440(sp)
  ADD t4, zero, zero
  SW t4, 432(sp)
  ADD t4, zero, zero
  SW t4, 424(sp)
  ADD t4, zero, zero
  SW t4, 416(sp)
  ADD t4, zero, zero
  SB t4, 408(sp)
  ADD t4, zero, zero
  SB t4, 400(sp)
  ADD t4, zero, zero
  SW t4, 392(sp)
  ADD t4, zero, zero
  SB t4, 368(sp)
  ADD t4, zero, zero
  SB t4, 360(sp)
  ADDI t4, zero, 2
  SW t4, 352(sp)
  ADD t4, zero, zero
  SW t4, 344(sp)
  ADD t4, zero, zero
  SB t4, 336(sp)
  ADD t4, zero, zero
  SW t4, 328(sp)
  ADD t4, zero, zero
  SW t4, 320(sp)
  ADD t4, zero, zero
  SB t4, 288(sp)
  ADD t4, zero, zero
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, zero, zero
  SB t4, 24(sp)
  ADD t4, zero, zero
  SB t4, 32(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  ADD t4, zero, zero
  SB t4, 48(sp)
  ADD t4, zero, zero
  SW t4, 56(sp)
  JAL zero, bb2
bb2:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LB t3, 48(sp)
  ADD t4, t3, zero
  SB t4, 72(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LB t3, 32(sp)
  ADD t4, t3, zero
  SB t4, 88(sp)
  LB t3, 24(sp)
  ADD t4, t3, zero
  SB t4, 96(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LB t3, 288(sp)
  ADD t4, t3, zero
  SB t4, 128(sp)
  LW t3, 320(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t3, 328(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LB t3, 336(sp)
  ADD t4, t3, zero
  SB t4, 152(sp)
  LW t3, 344(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  LW t3, 352(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LB t3, 360(sp)
  ADD t4, t3, zero
  SB t4, 176(sp)
  LB t3, 368(sp)
  ADD t4, t3, zero
  SB t4, 184(sp)
  LW t3, 392(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  LB t3, 400(sp)
  ADD t4, t3, zero
  SB t4, 200(sp)
  LB t3, 408(sp)
  ADD t4, t3, zero
  SB t4, 208(sp)
  LW t3, 416(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  LW t3, 424(sp)
  ADD t4, t3, zero
  SW t4, 224(sp)
  LW t3, 432(sp)
  ADD t4, t3, zero
  SW t4, 232(sp)
  LW t3, 440(sp)
  ADD t4, t3, zero
  SW t4, 240(sp)
  LW t3, 448(sp)
  ADD t4, t3, zero
  SW t4, 248(sp)
  LW t3, 456(sp)
  ADD t4, t3, zero
  SW t4, 256(sp)
  LW t3, 464(sp)
  ADD t4, t3, zero
  SW t4, 264(sp)
  LB t3, 472(sp)
  ADD t4, t3, zero
  SB t4, 272(sp)
  LW t3, 480(sp)
  ADD t4, t3, zero
  SW t4, 280(sp)
  LB t4, 488(sp)
  ADD a7, t4, zero
  LW t3, 496(sp)
  ADD t4, t3, zero
  SW t4, 296(sp)
  LW t3, 504(sp)
  ADD t4, t3, zero
  SW t4, 304(sp)
  LW t3, 512(sp)
  ADD t4, t3, zero
  SW t4, 312(sp)
  LW t4, 312(sp)
  SLT a6, zero, t4
  XOR a5, a6, zero
  SLTU a6, zero, a5
  BNE a6, zero, bb3
  JAL zero, bb4
bb3:
  ADD a5, a7, zero
  ADD a6, zero, zero
  ADDI a7, zero, 1
  LW t4, 312(sp)
  ADD a4, t4, zero
  ADD a3, zero, zero
  JAL zero, bb5
bb4:
  LW t4, 304(sp)
  ADD a0, t4, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD t4, zero, zero
  LUI t3, 1
  ADDI t3, t3, -1872
  ADD t3, t3, sp
  SB t4, 0(t3)
  ADDI t4, zero, 1
  LUI t3, 1
  ADDI t3, t3, -1880
  ADD t3, t3, sp
  SW t4, 0(t3)
  LW t3, 192(sp)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, -1888
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 1
  LUI t5, 1
  ADDI t5, t5, -1896
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 1
  ADDI t6, t6, -1920
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 1
  ADDI t5, t5, -1928
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 1
  ADDI t6, t6, -1936
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 1
  ADDI t5, t5, -1944
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 1
  ADDI t6, t6, -1952
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 1
  ADDI t5, t5, -1960
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 1
  ADDI t6, t6, -1968
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 1
  ADDI t5, t5, -2024
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  SB t4, 1712(sp)
  ADD t4, zero, zero
  SW t4, 1720(sp)
  ADD t4, zero, zero
  SW t4, 1728(sp)
  ADD t4, zero, zero
  SW t4, 1736(sp)
  ADD t4, zero, zero
  SB t4, 1744(sp)
  ADDI t4, zero, 2
  SW t4, 1752(sp)
  ADD t4, zero, zero
  SW t4, 1760(sp)
  ADD t4, zero, zero
  SW t4, 1768(sp)
  ADD t4, zero, zero
  SW t4, 1776(sp)
  ADD t4, zero, zero
  SB t4, 1784(sp)
  ADD t4, zero, zero
  SW t4, 1792(sp)
  ADD t4, zero, zero
  SW t4, 1800(sp)
  ADD t4, zero, zero
  SW t4, 1808(sp)
  ADD t4, zero, zero
  SB t4, 1816(sp)
  ADD t4, zero, zero
  SW t4, 1824(sp)
  ADD t4, zero, zero
  SB t4, 1832(sp)
  ADD t4, zero, zero
  SW t4, 1840(sp)
  ADD t4, zero, zero
  SB t4, 1848(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 1856(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 1864(sp)
  JAL zero, bb198
bb5:
  ADD a2, a3, zero
  ADD a1, a4, zero
  ADD a0, a7, zero
  ADD t4, a6, zero
  SW t4, 376(sp)
  ADD t4, a5, zero
  SB t4, 384(sp)
  LW t4, 376(sp)
  SLTI t2, t4, 16
  XOR t1, t2, zero
  SLTU t2, zero, t1
  BNE t2, zero, bb6
  JAL zero, bb7
bb6:
  ADDI t1, zero, 2
  REMW t2, a1, t1
  XOR t1, t2, zero
  SLTU t2, zero, t1
  BNE t2, zero, bb8
  JAL zero, bb9
bb7:
  XOR s9, a2, zero
  SLTU s10, zero, s9
  BNE s10, zero, bb13
  JAL zero, bb795
bb8:
  ADDI t1, zero, 2
  REMW t2, a0, t1
  XOR t1, t2, zero
  SLTU t2, zero, t1
  ADD t1, t2, zero
  JAL zero, bb10
bb9:
  ADD t1, zero, zero
  JAL zero, bb10
bb10:
  ADD t2, t1, zero
  BNE t2, zero, bb11
  JAL zero, bb794
bb11:
  ADDI t0, zero, 4
  LW t4, 376(sp)
  MULW ra, t4, t0
  LA t0, SHIFT_TABLE
  ADD s11, t0, ra
  LW ra, 0(s11)
  ADDI s11, zero, 1
  MULW t0, ra, s11
  ADDW s11, a2, t0
  ADD ra, s11, zero
  JAL zero, bb12
bb12:
  ADD s11, ra, zero
  ADDI t0, zero, 2
  DIVW s10, a1, t0
  ADDI t0, zero, 2
  DIVW s9, a0, t0
  LW t4, 376(sp)
  ADDIW t0, t4, 1
  ADD a5, t2, zero
  ADD a6, t0, zero
  ADD a7, s9, zero
  ADD a4, s10, zero
  ADD a3, s11, zero
  JAL zero, bb5
bb13:
  LW t3, 304(sp)
  ADD t4, t3, zero
  SW t4, 768(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 760(sp)
  LB t3, 272(sp)
  ADD t4, t3, zero
  SB t4, 752(sp)
  LW t3, 264(sp)
  ADD t4, t3, zero
  SW t4, 744(sp)
  LW t3, 256(sp)
  ADD t4, t3, zero
  SW t4, 736(sp)
  LW t3, 248(sp)
  ADD t4, t3, zero
  SW t4, 728(sp)
  LW t3, 232(sp)
  ADD t4, t3, zero
  SW t4, 720(sp)
  LW t3, 224(sp)
  ADD t4, t3, zero
  SW t4, 712(sp)
  LW t3, 376(sp)
  ADD t4, t3, zero
  SW t4, 704(sp)
  LB t3, 184(sp)
  ADD t4, t3, zero
  SB t4, 696(sp)
  LB t3, 176(sp)
  ADD t4, t3, zero
  SB t4, 688(sp)
  LB t3, 152(sp)
  ADD t4, t3, zero
  SB t4, 680(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 672(sp)
  ADD t4, zero, zero
  SW t4, 664(sp)
  LB t3, 72(sp)
  ADD t4, t3, zero
  SB t4, 656(sp)
  JAL zero, bb15
bb14:
  LB t3, 992(sp)
  ADD t4, t3, zero
  SB t4, 1336(sp)
  LW t3, 1000(sp)
  ADD t4, t3, zero
  SW t4, 1328(sp)
  LW t3, 1008(sp)
  ADD t4, t3, zero
  SW t4, 1320(sp)
  LB t3, 1016(sp)
  ADD t4, t3, zero
  SB t4, 1312(sp)
  LB t3, 1024(sp)
  ADD t4, t3, zero
  SB t4, 1304(sp)
  LB t3, 1032(sp)
  ADD t4, t3, zero
  SB t4, 1296(sp)
  LW t4, 1040(sp)
  ADD a6, t4, zero
  LW t3, 1048(sp)
  ADD t4, t3, zero
  SW t4, 1288(sp)
  LW t3, 1056(sp)
  ADD t4, t3, zero
  SW t4, 1272(sp)
  LW t3, 1064(sp)
  ADD t4, t3, zero
  SW t4, 1224(sp)
  LW t3, 1072(sp)
  ADD t4, t3, zero
  SW t4, 1160(sp)
  LW t3, 1080(sp)
  ADD t4, t3, zero
  SW t4, 1152(sp)
  LB t3, 1088(sp)
  ADD t4, t3, zero
  SB t4, 1144(sp)
  LW t3, 1096(sp)
  ADD t4, t3, zero
  SW t4, 1136(sp)
  LW t3, 1104(sp)
  ADD t4, t3, zero
  SW t4, 1128(sp)
  LW t3, 1112(sp)
  ADD t4, t3, zero
  SW t4, 1120(sp)
  LW t3, 240(sp)
  ADD t4, t3, zero
  SW t4, 1488(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 1480(sp)
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 1472(sp)
  LB t3, 208(sp)
  ADD t4, t3, zero
  SB t4, 1464(sp)
  LB t3, 200(sp)
  ADD t4, t3, zero
  SB t4, 1456(sp)
  ADD t4, a6, zero
  SW t4, 1448(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 1440(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 1432(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 1424(sp)
  LB t3, 128(sp)
  ADD t4, t3, zero
  SB t4, 1416(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 1408(sp)
  ADD t4, zero, zero
  SW t4, 1400(sp)
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 1392(sp)
  LB t3, 96(sp)
  ADD t4, t3, zero
  SB t4, 1384(sp)
  LB t3, 88(sp)
  ADD t4, t3, zero
  SB t4, 1376(sp)
  JAL zero, bb101
bb15:
  LB t3, 656(sp)
  ADD t4, t3, zero
  SB t4, 520(sp)
  LW t3, 664(sp)
  ADD t4, t3, zero
  SW t4, 528(sp)
  LW t3, 672(sp)
  ADD t4, t3, zero
  SW t4, 536(sp)
  LB t3, 680(sp)
  ADD t4, t3, zero
  SB t4, 544(sp)
  LB t3, 688(sp)
  ADD t4, t3, zero
  SB t4, 552(sp)
  LB t3, 696(sp)
  ADD t4, t3, zero
  SB t4, 560(sp)
  LW t3, 704(sp)
  ADD t4, t3, zero
  SW t4, 568(sp)
  LW t3, 712(sp)
  ADD t4, t3, zero
  SW t4, 576(sp)
  LW t3, 720(sp)
  ADD t4, t3, zero
  SW t4, 584(sp)
  LW t3, 728(sp)
  ADD t4, t3, zero
  SW t4, 592(sp)
  LW t3, 736(sp)
  ADD t4, t3, zero
  SW t4, 600(sp)
  LW t3, 744(sp)
  ADD t4, t3, zero
  SW t4, 608(sp)
  LB t3, 752(sp)
  ADD t4, t3, zero
  SB t4, 616(sp)
  LW t3, 760(sp)
  ADD t4, t3, zero
  SW t4, 624(sp)
  LW t3, 768(sp)
  ADD t4, t3, zero
  SW t4, 632(sp)
  LW t4, 624(sp)
  XOR s2, t4, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb16
  JAL zero, bb17
bb16:
  LB t4, 616(sp)
  ADD s1, t4, zero
  ADD s2, zero, zero
  ADDI s0, zero, 1
  LW t4, 624(sp)
  ADD s8, t4, zero
  ADD s7, zero, zero
  JAL zero, bb18
bb17:
  LW t3, 528(sp)
  ADD t4, t3, zero
  SW t4, 1112(sp)
  LW t3, 632(sp)
  ADD t4, t3, zero
  SW t4, 1104(sp)
  LW t3, 624(sp)
  ADD t4, t3, zero
  SW t4, 1096(sp)
  LB t3, 616(sp)
  ADD t4, t3, zero
  SB t4, 1088(sp)
  LW t3, 608(sp)
  ADD t4, t3, zero
  SW t4, 1080(sp)
  LW t3, 600(sp)
  ADD t4, t3, zero
  SW t4, 1072(sp)
  LW t3, 592(sp)
  ADD t4, t3, zero
  SW t4, 1064(sp)
  LW t3, 584(sp)
  ADD t4, t3, zero
  SW t4, 1056(sp)
  LW t3, 576(sp)
  ADD t4, t3, zero
  SW t4, 1048(sp)
  LW t3, 568(sp)
  ADD t4, t3, zero
  SW t4, 1040(sp)
  LB t3, 560(sp)
  ADD t4, t3, zero
  SB t4, 1032(sp)
  LB t3, 552(sp)
  ADD t4, t3, zero
  SB t4, 1024(sp)
  LB t3, 544(sp)
  ADD t4, t3, zero
  SB t4, 1016(sp)
  LW t3, 536(sp)
  ADD t4, t3, zero
  SW t4, 1008(sp)
  LW t3, 528(sp)
  ADD t4, t3, zero
  SW t4, 1000(sp)
  LB t3, 520(sp)
  ADD t4, t3, zero
  SB t4, 992(sp)
  JAL zero, bb14
bb18:
  ADD s6, s7, zero
  ADD s5, s8, zero
  ADD s4, s0, zero
  ADD t4, s2, zero
  SW t4, 648(sp)
  ADD t4, s1, zero
  SB t4, 640(sp)
  LW t4, 648(sp)
  SLTI s3, t4, 16
  XOR a7, s3, zero
  SLTU s3, zero, a7
  BNE s3, zero, bb19
  JAL zero, bb20
bb19:
  ADDI s3, zero, 2
  REMW a7, s5, s3
  XOR s3, a7, zero
  SLTU a7, zero, s3
  BNE a7, zero, bb21
  JAL zero, bb22
bb20:
  XOR s0, s6, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb26
  JAL zero, bb797
bb21:
  ADDI s3, zero, 2
  REMW a7, s4, s3
  XOR s3, a7, zero
  SLTU a7, zero, s3
  ADD s3, a7, zero
  JAL zero, bb23
bb22:
  ADD s3, zero, zero
  JAL zero, bb23
bb23:
  ADD a7, s3, zero
  BNE a7, zero, bb24
  JAL zero, bb796
bb24:
  ADDI a6, zero, 4
  LW t4, 648(sp)
  MULW a5, t4, a6
  LA a6, SHIFT_TABLE
  ADD a4, a6, a5
  LW a5, 0(a4)
  ADDI a4, zero, 1
  MULW a6, a5, a4
  ADDW a4, s6, a6
  ADD a5, a4, zero
  JAL zero, bb25
bb25:
  ADD a4, a5, zero
  ADDI a6, zero, 2
  DIVW a3, s5, a6
  ADDI a6, zero, 2
  DIVW a2, s4, a6
  LW t4, 648(sp)
  ADDIW a6, t4, 1
  ADD s1, a7, zero
  ADD s2, a6, zero
  ADD s0, a2, zero
  ADD s8, a3, zero
  ADD s7, a4, zero
  JAL zero, bb18
bb26:
  LW t4, 632(sp)
  ADD s0, t4, zero
  LW t4, 600(sp)
  ADD s1, t4, zero
  LW t4, 648(sp)
  ADD s2, t4, zero
  LB t4, 560(sp)
  ADD s3, t4, zero
  LW t4, 528(sp)
  ADD s4, t4, zero
  LB t4, 520(sp)
  ADD s5, t4, zero
  JAL zero, bb28
bb27:
  LB t3, 832(sp)
  ADD t4, t3, zero
  SB t4, 976(sp)
  LW t3, 840(sp)
  ADD t4, t3, zero
  SW t4, 968(sp)
  LW t3, 848(sp)
  ADD t4, t3, zero
  SW t4, 960(sp)
  LB t3, 856(sp)
  ADD t4, t3, zero
  SB t4, 952(sp)
  LW t4, 864(sp)
  ADD s11, t4, zero
  LW t3, 872(sp)
  ADD t4, t3, zero
  SW t4, 944(sp)
  LW t3, 880(sp)
  ADD t4, t3, zero
  SW t4, 936(sp)
  LW t4, 632(sp)
  ADD t1, t4, zero
  LW t4, 632(sp)
  ADD t2, t4, zero
  LW t4, 576(sp)
  ADD a0, t4, zero
  ADD a1, s11, zero
  LB t4, 552(sp)
  ADD s11, t4, zero
  LB t4, 544(sp)
  ADD a2, t4, zero
  JAL zero, bb59
bb28:
  ADD t4, s5, zero
  SB t4, 776(sp)
  ADD t4, s4, zero
  SW t4, 784(sp)
  ADD t4, s3, zero
  SB t4, 792(sp)
  ADD t4, s2, zero
  SW t4, 800(sp)
  ADD t4, s1, zero
  SW t4, 808(sp)
  ADD t4, s0, zero
  SW t4, 816(sp)
  LW t4, 816(sp)
  XOR a5, t4, zero
  SLTU a6, zero, a5
  BNE a6, zero, bb29
  JAL zero, bb30
bb29:
  ADD a5, zero, zero
  LW t4, 816(sp)
  ADD a6, t4, zero
  LW t4, 784(sp)
  ADD a7, t4, zero
  ADD a1, zero, zero
  JAL zero, bb31
bb30:
  LW t3, 816(sp)
  ADD t4, t3, zero
  SW t4, 880(sp)
  LW t3, 808(sp)
  ADD t4, t3, zero
  SW t4, 872(sp)
  LW t3, 800(sp)
  ADD t4, t3, zero
  SW t4, 864(sp)
  LB t3, 792(sp)
  ADD t4, t3, zero
  SB t4, 856(sp)
  LW t3, 784(sp)
  ADD t4, t3, zero
  SW t4, 848(sp)
  LW t3, 784(sp)
  ADD t4, t3, zero
  SW t4, 840(sp)
  LB t3, 776(sp)
  ADD t4, t3, zero
  SB t4, 832(sp)
  JAL zero, bb27
bb31:
  ADD a0, a1, zero
  ADD t2, a7, zero
  ADD t1, a6, zero
  ADD t0, a5, zero
  SLTI ra, t0, 16
  XOR s11, ra, zero
  SLTU ra, zero, s11
  BNE ra, zero, bb32
  JAL zero, bb33
bb32:
  ADDI s11, zero, 2
  REMW ra, t2, s11
  XOR s11, ra, zero
  SLTU ra, zero, s11
  BNE ra, zero, bb34
  JAL zero, bb36
bb33:
  ADD s6, zero, zero
  LW t4, 816(sp)
  ADD s7, t4, zero
  LB t4, 776(sp)
  ADD s9, t4, zero
  LW t4, 784(sp)
  ADD s10, t4, zero
  ADD s11, zero, zero
  JAL zero, bb41
bb34:
  ADDI s11, zero, 2
  REMW ra, t1, s11
  XOR s11, ra, zero
  SLTIU ra, s11, 1
  BNE ra, zero, bb37
  JAL zero, bb798
bb35:
  ADD s10, ra, zero
  ADDI s9, zero, 2
  DIVW s6, t2, s9
  ADDI s9, zero, 2
  DIVW s7, t1, s9
  ADDIW s9, t0, 1
  ADD a5, s9, zero
  ADD a6, s7, zero
  ADD a7, s6, zero
  ADD a1, s10, zero
  JAL zero, bb31
bb36:
  ADDI s6, zero, 2
  REMW s7, t1, s6
  XOR s6, s7, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb39
  JAL zero, bb799
bb37:
  ADDI s11, zero, 4
  MULW ra, t0, s11
  LA s11, SHIFT_TABLE
  ADD s10, s11, ra
  LW s11, 0(s10)
  ADDI s10, zero, 1
  MULW ra, s11, s10
  ADDW s10, a0, ra
  ADD s11, s10, zero
  JAL zero, bb38
bb38:
  ADD s10, s11, zero
  ADD ra, s10, zero
  JAL zero, bb35
bb39:
  ADDI s6, zero, 4
  MULW s7, t0, s6
  LA s6, SHIFT_TABLE
  ADD s9, s6, s7
  LW s6, 0(s9)
  ADDI s7, zero, 1
  MULW s9, s6, s7
  ADDW s6, a0, s9
  ADD s7, s6, zero
  JAL zero, bb40
bb40:
  ADD s6, s7, zero
  ADD ra, s6, zero
  JAL zero, bb35
bb41:
  ADD ra, s11, zero
  ADD t0, s10, zero
  ADD t4, s9, zero
  SB t4, 824(sp)
  ADD t2, s7, zero
  ADD a1, s6, zero
  SLTI a5, a1, 16
  XOR a6, a5, zero
  SLTU a5, zero, a6
  BNE a5, zero, bb42
  JAL zero, bb43
bb42:
  ADDI a5, zero, 2
  REMW a6, t0, a5
  XOR a5, a6, zero
  SLTU a6, zero, a5
  BNE a6, zero, bb44
  JAL zero, bb45
bb43:
  JAL zero, bb50
bb44:
  ADDI a5, zero, 2
  REMW a6, t2, a5
  XOR a5, a6, zero
  SLTU a6, zero, a5
  ADD a5, a6, zero
  JAL zero, bb46
bb45:
  ADD a5, zero, zero
  JAL zero, bb46
bb46:
  ADD a6, a5, zero
  BNE a6, zero, bb47
  JAL zero, bb800
bb47:
  ADDI a7, zero, 4
  MULW s8, a1, a7
  LA a7, SHIFT_TABLE
  ADD a2, a7, s8
  LW s8, 0(a2)
  ADDI a2, zero, 1
  MULW a7, s8, a2
  ADDW s8, ra, a7
  ADD a2, s8, zero
  JAL zero, bb48
bb48:
  ADD s8, a2, zero
  ADDI a7, zero, 2
  DIVW a3, t0, a7
  ADDI a7, zero, 2
  DIVW a4, t2, a7
  ADDIW a7, a1, 1
  ADD s6, a7, zero
  ADD s7, a4, zero
  ADD s9, a6, zero
  ADD s10, a3, zero
  ADD s11, s8, zero
  JAL zero, bb41
bb49:
  ADD s9, s8, zero
  ADD s8, s7, zero
  ADD s7, s6, zero
  ADD s0, s9, zero
  ADD s1, a0, zero
  ADD s2, s7, zero
  ADD s3, s8, zero
  ADD s4, a0, zero
  LB t4, 824(sp)
  ADD s5, t4, zero
  JAL zero, bb28
bb50:
  LA s6, SHIFT_TABLE
  ADDI s7, s6, 4
  LW s6, 0(s7)
  MULW s7, ra, s6
  ADD s6, zero, zero
  LB t4, 792(sp)
  ADD s8, t4, zero
  LUI s9, 16
  ADDI s9, s9, -1
  ADD s10, zero, s9
  ADD s9, s7, zero
  ADD s7, zero, zero
  JAL zero, bb51
bb51:
  ADD s11, s7, zero
  ADD ra, s9, zero
  ADD t0, s10, zero
  ADD t2, s8, zero
  ADD a1, s6, zero
  SLTI a2, a1, 16
  XOR a3, a2, zero
  SLTU a2, zero, a3
  BNE a2, zero, bb52
  JAL zero, bb53
bb52:
  ADDI a2, zero, 2
  REMW a3, ra, a2
  XOR a2, a3, zero
  SLTU a3, zero, a2
  BNE a3, zero, bb54
  JAL zero, bb55
bb53:
  ADD s6, a1, zero
  ADD s7, t2, zero
  ADD s8, s11, zero
  JAL zero, bb49
bb54:
  ADDI a2, zero, 2
  REMW a3, t0, a2
  XOR a2, a3, zero
  SLTU a3, zero, a2
  ADD a2, a3, zero
  JAL zero, bb56
bb55:
  ADD a2, zero, zero
  JAL zero, bb56
bb56:
  ADD a3, a2, zero
  BNE a3, zero, bb57
  JAL zero, bb801
bb57:
  ADDI a4, zero, 4
  MULW a5, a1, a4
  LA a4, SHIFT_TABLE
  ADD a6, a4, a5
  LW a4, 0(a6)
  ADDI a5, zero, 1
  MULW a6, a4, a5
  ADDW a4, s11, a6
  ADD a5, a4, zero
  JAL zero, bb58
bb58:
  ADD a4, a5, zero
  ADDI a6, zero, 2
  DIVW a7, ra, a6
  ADDI a6, zero, 2
  DIVW t1, t0, a6
  ADDIW a6, a1, 1
  ADD s6, a6, zero
  ADD s8, a3, zero
  ADD s10, t1, zero
  ADD s9, a7, zero
  ADD s7, a4, zero
  JAL zero, bb51
bb59:
  ADD t4, a2, zero
  SB t4, 928(sp)
  ADD t4, s11, zero
  SB t4, 920(sp)
  ADD t4, a1, zero
  SW t4, 912(sp)
  ADD t4, a0, zero
  SW t4, 904(sp)
  ADD t4, t2, zero
  SW t4, 896(sp)
  ADD t4, t1, zero
  SW t4, 888(sp)
  LW t4, 896(sp)
  XOR s5, t4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb60
  JAL zero, bb61
bb60:
  ADD s4, zero, zero
  LW t4, 896(sp)
  ADD s5, t4, zero
  LW t4, 888(sp)
  ADD s3, t4, zero
  ADD s2, zero, zero
  JAL zero, bb62
bb61:
  ADDI s0, zero, 1
  SLTI s1, s0, 15
  XORI s0, s1, 1
  BNE s0, zero, bb90
  JAL zero, bb92
bb62:
  ADD s1, s2, zero
  ADD s0, s3, zero
  ADD s6, s5, zero
  ADD a7, s4, zero
  SLTI a6, a7, 16
  XOR a5, a6, zero
  SLTU a6, zero, a5
  BNE a6, zero, bb63
  JAL zero, bb64
bb63:
  ADDI a5, zero, 2
  REMW a6, s0, a5
  XOR a5, a6, zero
  SLTU a6, zero, a5
  BNE a6, zero, bb65
  JAL zero, bb67
bb64:
  ADD s0, zero, zero
  LB t4, 928(sp)
  ADD s2, t4, zero
  LW t4, 896(sp)
  ADD s3, t4, zero
  LW t4, 888(sp)
  ADD s4, t4, zero
  ADD s5, zero, zero
  JAL zero, bb72
bb65:
  ADDI a5, zero, 2
  REMW a6, s6, a5
  XOR a5, a6, zero
  SLTIU a6, a5, 1
  BNE a6, zero, bb68
  JAL zero, bb802
bb66:
  ADD a4, a6, zero
  ADDI a3, zero, 2
  DIVW t0, s0, a3
  ADDI a3, zero, 2
  DIVW ra, s6, a3
  ADDIW a3, a7, 1
  ADD s4, a3, zero
  ADD s5, ra, zero
  ADD s3, t0, zero
  ADD s2, a4, zero
  JAL zero, bb62
bb67:
  ADDI s2, zero, 2
  REMW s3, s6, s2
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb70
  JAL zero, bb803
bb68:
  ADDI a5, zero, 4
  MULW a6, a7, a5
  LA a5, SHIFT_TABLE
  ADD a4, a5, a6
  LW a5, 0(a4)
  ADDI a4, zero, 1
  MULW a6, a5, a4
  ADDW a4, s1, a6
  ADD a5, a4, zero
  JAL zero, bb69
bb69:
  ADD a4, a5, zero
  ADD a6, a4, zero
  JAL zero, bb66
bb70:
  ADDI s2, zero, 4
  MULW s3, a7, s2
  LA s2, SHIFT_TABLE
  ADD s4, s2, s3
  LW s2, 0(s4)
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADDW s2, s1, s4
  ADD s3, s2, zero
  JAL zero, bb71
bb71:
  ADD s2, s3, zero
  ADD a6, s2, zero
  JAL zero, bb66
bb72:
  ADD s6, s5, zero
  ADD ra, s4, zero
  ADD t0, s3, zero
  ADD t4, s2, zero
  SB t4, 984(sp)
  ADD a4, s0, zero
  SLTI a5, a4, 16
  XOR a6, a5, zero
  SLTU a5, zero, a6
  BNE a5, zero, bb73
  JAL zero, bb74
bb73:
  ADDI a5, zero, 2
  REMW a6, ra, a5
  XOR a5, a6, zero
  SLTU a6, zero, a5
  BNE a6, zero, bb75
  JAL zero, bb76
bb74:
  JAL zero, bb81
bb75:
  ADDI a5, zero, 2
  REMW a6, t0, a5
  XOR a5, a6, zero
  SLTU a6, zero, a5
  ADD a5, a6, zero
  JAL zero, bb77
bb76:
  ADD a5, zero, zero
  JAL zero, bb77
bb77:
  ADD a6, a5, zero
  BNE a6, zero, bb78
  JAL zero, bb804
bb78:
  ADDI a7, zero, 4
  MULW s10, a4, a7
  LA a7, SHIFT_TABLE
  ADD s9, a7, s10
  LW s10, 0(s9)
  ADDI s9, zero, 1
  MULW a7, s10, s9
  ADDW s9, s6, a7
  ADD s10, s9, zero
  JAL zero, bb79
bb79:
  ADD s9, s10, zero
  ADDI a7, zero, 2
  DIVW s8, ra, a7
  ADDI a7, zero, 2
  DIVW s7, t0, a7
  ADDIW a7, a4, 1
  ADD s0, a7, zero
  ADD s2, a6, zero
  ADD s3, s7, zero
  ADD s4, s8, zero
  ADD s5, s9, zero
  JAL zero, bb72
bb80:
  ADD s4, s3, zero
  ADD s3, s2, zero
  ADD s2, s0, zero
  ADD t1, s1, zero
  ADD t2, s4, zero
  ADD a0, s1, zero
  ADD a1, s2, zero
  ADD s11, s3, zero
  LB t4, 984(sp)
  ADD a2, t4, zero
  JAL zero, bb59
bb81:
  LA s0, SHIFT_TABLE
  ADDI s2, s0, 4
  LW s0, 0(s2)
  MULW s2, s6, s0
  ADD s0, zero, zero
  LB t4, 920(sp)
  ADD s3, t4, zero
  LUI s4, 16
  ADDI s4, s4, -1
  ADD s5, zero, s4
  ADD s4, s2, zero
  ADD s2, zero, zero
  JAL zero, bb82
bb82:
  ADD s6, s2, zero
  ADD s7, s4, zero
  ADD s8, s5, zero
  ADD s9, s3, zero
  ADD s10, s0, zero
  SLTI ra, s10, 16
  XOR t0, ra, zero
  SLTU ra, zero, t0
  BNE ra, zero, bb83
  JAL zero, bb84
bb83:
  ADDI ra, zero, 2
  REMW t0, s7, ra
  XOR ra, t0, zero
  SLTU t0, zero, ra
  BNE t0, zero, bb85
  JAL zero, bb86
bb84:
  ADD s0, s10, zero
  ADD s2, s9, zero
  ADD s3, s6, zero
  JAL zero, bb80
bb85:
  ADDI ra, zero, 2
  REMW t0, s8, ra
  XOR ra, t0, zero
  SLTU t0, zero, ra
  ADD ra, t0, zero
  JAL zero, bb87
bb86:
  ADD ra, zero, zero
  JAL zero, bb87
bb87:
  ADD t0, ra, zero
  BNE t0, zero, bb88
  JAL zero, bb805
bb88:
  ADDI a4, zero, 4
  MULW a5, s10, a4
  LA a4, SHIFT_TABLE
  ADD a6, a4, a5
  LW a4, 0(a6)
  ADDI a5, zero, 1
  MULW a6, a4, a5
  ADDW a4, s6, a6
  ADD a5, a4, zero
  JAL zero, bb89
bb89:
  ADD a4, a5, zero
  ADDI a6, zero, 2
  DIVW a7, s7, a6
  ADDI a6, zero, 2
  DIVW a3, s8, a6
  ADDIW a6, s10, 1
  ADD s0, a6, zero
  ADD s3, t0, zero
  ADD s5, a3, zero
  ADD s4, a7, zero
  ADD s2, a4, zero
  JAL zero, bb82
bb90:
  LW t4, 624(sp)
  SLT s0, t4, zero
  BNE s0, zero, bb93
  JAL zero, bb95
bb91:
  ADD s0, s2, zero
  LW t3, 888(sp)
  ADD t4, t3, zero
  SW t4, 768(sp)
  ADD t4, s0, zero
  SW t4, 760(sp)
  LB t3, 640(sp)
  ADD t4, t3, zero
  SB t4, 752(sp)
  LW t3, 936(sp)
  ADD t4, t3, zero
  SW t4, 744(sp)
  LW t3, 944(sp)
  ADD t4, t3, zero
  SW t4, 736(sp)
  LW t3, 888(sp)
  ADD t4, t3, zero
  SW t4, 728(sp)
  LW t3, 896(sp)
  ADD t4, t3, zero
  SW t4, 720(sp)
  LW t3, 904(sp)
  ADD t4, t3, zero
  SW t4, 712(sp)
  LW t3, 912(sp)
  ADD t4, t3, zero
  SW t4, 704(sp)
  LB t3, 952(sp)
  ADD t4, t3, zero
  SB t4, 696(sp)
  LB t3, 920(sp)
  ADD t4, t3, zero
  SB t4, 688(sp)
  LB t3, 928(sp)
  ADD t4, t3, zero
  SB t4, 680(sp)
  LW t3, 960(sp)
  ADD t4, t3, zero
  SW t4, 672(sp)
  LW t3, 968(sp)
  ADD t4, t3, zero
  SW t4, 664(sp)
  LB t3, 976(sp)
  ADD t4, t3, zero
  SB t4, 656(sp)
  JAL zero, bb15
bb92:
  JAL zero, bb96
bb93:
  LUI s0, 16
  ADDI s0, s0, -1
  ADD s1, zero, s0
  JAL zero, bb94
bb94:
  ADD s0, s1, zero
  ADD s2, s0, zero
  JAL zero, bb91
bb95:
  ADD s1, zero, zero
  JAL zero, bb94
bb96:
  LUI s0, 8
  ADDI s0, s0, -1
  LW t4, 624(sp)
  SLT s1, s0, t4
  BNE s1, zero, bb98
  JAL zero, bb100
bb97:
  ADD s1, s3, zero
  ADD s2, s1, zero
  JAL zero, bb91
bb98:
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 4
  LW s0, 0(s1)
  LW t4, 624(sp)
  DIVW s1, t4, s0
  LUI s0, 16
  ADDI s0, s0, 0
  ADDW s3, s1, s0
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 60
  LW s0, 0(s1)
  SUBW s1, s3, s0
  ADD s0, s1, zero
  JAL zero, bb99
bb99:
  ADD s1, s0, zero
  ADD s3, s1, zero
  JAL zero, bb97
bb100:
  LA s1, SHIFT_TABLE
  ADDI s2, s1, 4
  LW s1, 0(s2)
  LW t4, 624(sp)
  DIVW s2, t4, s1
  ADD s0, s2, zero
  JAL zero, bb99
bb101:
  LB t3, 1376(sp)
  ADD t4, t3, zero
  SB t4, 1168(sp)
  LB t3, 1384(sp)
  ADD t4, t3, zero
  SB t4, 1176(sp)
  LW t3, 1392(sp)
  ADD t4, t3, zero
  SW t4, 1184(sp)
  LW t3, 1400(sp)
  ADD t4, t3, zero
  SW t4, 1192(sp)
  LW t3, 1408(sp)
  ADD t4, t3, zero
  SW t4, 1200(sp)
  LB t3, 1416(sp)
  ADD t4, t3, zero
  SB t4, 1208(sp)
  LW t3, 1424(sp)
  ADD t4, t3, zero
  SW t4, 1216(sp)
  LW t3, 1432(sp)
  ADD t4, t3, zero
  SW t4, 1360(sp)
  LW t3, 1440(sp)
  ADD t4, t3, zero
  SW t4, 1232(sp)
  LW t3, 1448(sp)
  ADD t4, t3, zero
  SW t4, 1240(sp)
  LB t3, 1456(sp)
  ADD t4, t3, zero
  SB t4, 1248(sp)
  LB t3, 1464(sp)
  ADD t4, t3, zero
  SB t4, 1256(sp)
  LW t3, 1472(sp)
  ADD t4, t3, zero
  SW t4, 1264(sp)
  LW t3, 1480(sp)
  ADD t4, t3, zero
  SW t4, 1352(sp)
  LW t3, 1488(sp)
  ADD t4, t3, zero
  SW t4, 1280(sp)
  LW t4, 1352(sp)
  XOR a7, t4, zero
  SLTU a5, zero, a7
  BNE a5, zero, bb102
  JAL zero, bb103
bb102:
  ADD a5, zero, zero
  ADDI a7, zero, 1
  LB t4, 1168(sp)
  ADD a4, t4, zero
  LW t4, 1352(sp)
  ADD a3, t4, zero
  ADD a2, zero, zero
  JAL zero, bb104
bb103:
  ADDI s0, zero, 1
  SLTI s1, s0, 15
  XORI s0, s1, 1
  BNE s0, zero, bb187
  JAL zero, bb189
bb104:
  ADD a1, a2, zero
  ADD a0, a3, zero
  ADD t4, a4, zero
  SB t4, 1344(sp)
  ADD t2, a7, zero
  ADD t4, a5, zero
  SW t4, 1368(sp)
  LW t4, 1368(sp)
  SLTI t1, t4, 16
  XOR t0, t1, zero
  SLTU t1, zero, t0
  BNE t1, zero, bb105
  JAL zero, bb106
bb105:
  ADDI t0, zero, 2
  REMW t1, a0, t0
  XOR t0, t1, zero
  SLTU t1, zero, t0
  BNE t1, zero, bb107
  JAL zero, bb108
bb106:
  XOR s8, a1, zero
  SLTU s9, zero, s8
  BNE s9, zero, bb112
  JAL zero, bb807
bb107:
  ADDI t0, zero, 2
  REMW t1, t2, t0
  XOR t0, t1, zero
  SLTU t1, zero, t0
  ADD t0, t1, zero
  JAL zero, bb109
bb108:
  ADD t0, zero, zero
  JAL zero, bb109
bb109:
  ADD t1, t0, zero
  BNE t1, zero, bb110
  JAL zero, bb806
bb110:
  ADDI ra, zero, 4
  LW t4, 1368(sp)
  MULW s11, t4, ra
  LA ra, SHIFT_TABLE
  ADD s10, ra, s11
  LW s11, 0(s10)
  ADDI s10, zero, 1
  MULW ra, s11, s10
  ADDW s10, a1, ra
  ADD s11, s10, zero
  JAL zero, bb111
bb111:
  ADD s10, s11, zero
  ADDI ra, zero, 2
  DIVW s9, a0, ra
  ADDI ra, zero, 2
  DIVW s8, t2, ra
  LW t4, 1368(sp)
  ADDIW ra, t4, 1
  ADD a5, ra, zero
  ADD a7, s8, zero
  ADD a4, t1, zero
  ADD a3, s9, zero
  ADD a2, s10, zero
  JAL zero, bb104
bb112:
  LW t4, 1264(sp)
  ADD s8, t4, zero
  LB t4, 1256(sp)
  ADD s9, t4, zero
  LW t4, 1368(sp)
  ADD s10, t4, zero
  LW t4, 1192(sp)
  ADD s11, t4, zero
  LW t4, 1360(sp)
  ADD ra, t4, zero
  LB t4, 1176(sp)
  ADD t0, t4, zero
  JAL zero, bb114
bb113:
  LB t3, 1552(sp)
  ADD t4, t3, zero
  SB t4, 1696(sp)
  LW t3, 1560(sp)
  ADD t4, t3, zero
  SW t4, 1688(sp)
  LW t3, 1568(sp)
  ADD t4, t3, zero
  SW t4, 1680(sp)
  LW t3, 1576(sp)
  ADD t4, t3, zero
  SW t4, 1672(sp)
  LW t4, 1584(sp)
  ADD s11, t4, zero
  LB t3, 1592(sp)
  ADD t4, t3, zero
  SB t4, 1664(sp)
  LW t3, 1600(sp)
  ADD t4, t3, zero
  SW t4, 1656(sp)
  LW t4, 1360(sp)
  ADD t1, t4, zero
  LB t4, 1248(sp)
  ADD t2, t4, zero
  ADD a0, s11, zero
  LW t4, 1360(sp)
  ADD s11, t4, zero
  LB t4, 1208(sp)
  ADD a1, t4, zero
  LW t4, 1184(sp)
  ADD a2, t4, zero
  JAL zero, bb145
bb114:
  ADD t4, t0, zero
  SB t4, 1496(sp)
  ADD t4, ra, zero
  SW t4, 1512(sp)
  ADD t4, s11, zero
  SW t4, 1504(sp)
  ADD t4, s10, zero
  SW t4, 1520(sp)
  ADD t4, s9, zero
  SB t4, 1528(sp)
  ADD t4, s8, zero
  SW t4, 1536(sp)
  LW t4, 1512(sp)
  XOR a4, t4, zero
  SLTU a5, zero, a4
  BNE a5, zero, bb115
  JAL zero, bb116
bb115:
  ADD a4, zero, zero
  LW t4, 1512(sp)
  ADD a5, t4, zero
  LW t4, 1504(sp)
  ADD a7, t4, zero
  ADD s0, zero, zero
  JAL zero, bb117
bb116:
  LW t3, 1536(sp)
  ADD t4, t3, zero
  SW t4, 1600(sp)
  LB t3, 1528(sp)
  ADD t4, t3, zero
  SB t4, 1592(sp)
  LW t3, 1520(sp)
  ADD t4, t3, zero
  SW t4, 1584(sp)
  LW t3, 1504(sp)
  ADD t4, t3, zero
  SW t4, 1576(sp)
  LW t3, 1512(sp)
  ADD t4, t3, zero
  SW t4, 1568(sp)
  LW t3, 1504(sp)
  ADD t4, t3, zero
  SW t4, 1560(sp)
  LB t3, 1496(sp)
  ADD t4, t3, zero
  SB t4, 1552(sp)
  JAL zero, bb113
bb117:
  ADD s1, s0, zero
  ADD a6, a7, zero
  ADD s2, a5, zero
  ADD s3, a4, zero
  SLTI s4, s3, 16
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb118
  JAL zero, bb119
bb118:
  ADDI s4, zero, 2
  REMW s5, a6, s4
  XOR s4, s5, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb120
  JAL zero, bb122
bb119:
  ADD s0, zero, zero
  LW t4, 1512(sp)
  ADD s2, t4, zero
  LB t4, 1496(sp)
  ADD s3, t4, zero
  LW t4, 1504(sp)
  ADD s4, t4, zero
  ADD s5, zero, zero
  JAL zero, bb127
bb120:
  ADDI s4, zero, 2
  REMW s5, s2, s4
  XOR s4, s5, zero
  SLTIU s5, s4, 1
  BNE s5, zero, bb123
  JAL zero, bb808
bb121:
  ADD s4, s6, zero
  ADDI s7, zero, 2
  DIVW t1, a6, s7
  ADDI s7, zero, 2
  DIVW a0, s2, s7
  ADDIW s7, s3, 1
  ADD a4, s7, zero
  ADD a5, a0, zero
  ADD a7, t1, zero
  ADD s0, s4, zero
  JAL zero, bb117
bb122:
  ADDI s0, zero, 2
  REMW s4, s2, s0
  XOR s0, s4, zero
  SLTU s4, zero, s0
  BNE s4, zero, bb125
  JAL zero, bb809
bb123:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LA s4, SHIFT_TABLE
  ADD s6, s4, s5
  LW s4, 0(s6)
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADDW s4, s1, s6
  ADD s5, s4, zero
  JAL zero, bb124
bb124:
  ADD s4, s5, zero
  ADD s6, s4, zero
  JAL zero, bb121
bb125:
  ADDI s0, zero, 4
  MULW s4, s3, s0
  LA s0, SHIFT_TABLE
  ADD s5, s0, s4
  LW s0, 0(s5)
  ADDI s4, zero, 1
  MULW s5, s0, s4
  ADDW s0, s1, s5
  ADD s4, s0, zero
  JAL zero, bb126
bb126:
  ADD s0, s4, zero
  ADD s6, s0, zero
  JAL zero, bb121
bb127:
  ADD s6, s5, zero
  ADD s7, s4, zero
  ADD t4, s3, zero
  SB t4, 1544(sp)
  ADD a0, s2, zero
  ADD a4, s0, zero
  SLTI a5, a4, 16
  XOR a6, a5, zero
  SLTU a5, zero, a6
  BNE a5, zero, bb128
  JAL zero, bb129
bb128:
  ADDI a5, zero, 2
  REMW a6, s7, a5
  XOR a5, a6, zero
  SLTU a6, zero, a5
  BNE a6, zero, bb130
  JAL zero, bb131
bb129:
  JAL zero, bb136
bb130:
  ADDI a5, zero, 2
  REMW a6, a0, a5
  XOR a5, a6, zero
  SLTU a6, zero, a5
  ADD a5, a6, zero
  JAL zero, bb132
bb131:
  ADD a5, zero, zero
  JAL zero, bb132
bb132:
  ADD a6, a5, zero
  BNE a6, zero, bb133
  JAL zero, bb810
bb133:
  ADDI a7, zero, 4
  MULW t2, a4, a7
  LA a7, SHIFT_TABLE
  ADD a1, a7, t2
  LW t2, 0(a1)
  ADDI a1, zero, 1
  MULW a7, t2, a1
  ADDW t2, s6, a7
  ADD a1, t2, zero
  JAL zero, bb134
bb134:
  ADD t2, a1, zero
  ADDI a7, zero, 2
  DIVW a2, s7, a7
  ADDI a7, zero, 2
  DIVW a3, a0, a7
  ADDIW a7, a4, 1
  ADD s0, a7, zero
  ADD s2, a3, zero
  ADD s3, a6, zero
  ADD s4, a2, zero
  ADD s5, t2, zero
  JAL zero, bb127
bb135:
  ADD s4, s3, zero
  ADD s3, s2, zero
  ADD s2, s0, zero
  ADD s8, s1, zero
  ADD s9, s2, zero
  ADD s10, s3, zero
  ADD s11, s1, zero
  ADD ra, s4, zero
  LB t4, 1544(sp)
  ADD t0, t4, zero
  JAL zero, bb114
bb136:
  LA s0, SHIFT_TABLE
  ADDI s2, s0, 4
  LW s0, 0(s2)
  MULW s2, s6, s0
  LB t4, 1528(sp)
  ADD s0, t4, zero
  ADD s3, zero, zero
  LUI s4, 16
  ADDI s4, s4, -1
  ADD s5, zero, s4
  ADD s4, s2, zero
  ADD s2, zero, zero
  JAL zero, bb137
bb137:
  ADD s6, s2, zero
  ADD s7, s4, zero
  ADD t2, s5, zero
  ADD a0, s3, zero
  ADD a1, s0, zero
  SLTI a2, a0, 16
  XOR a3, a2, zero
  SLTU a2, zero, a3
  BNE a2, zero, bb138
  JAL zero, bb139
bb138:
  ADDI a2, zero, 2
  REMW a3, s7, a2
  XOR a2, a3, zero
  SLTU a3, zero, a2
  BNE a3, zero, bb140
  JAL zero, bb141
bb139:
  ADD s0, a1, zero
  ADD s2, a0, zero
  ADD s3, s6, zero
  JAL zero, bb135
bb140:
  ADDI a2, zero, 2
  REMW a3, t2, a2
  XOR a2, a3, zero
  SLTU a3, zero, a2
  ADD a2, a3, zero
  JAL zero, bb142
bb141:
  ADD a2, zero, zero
  JAL zero, bb142
bb142:
  ADD a3, a2, zero
  BNE a3, zero, bb143
  JAL zero, bb811
bb143:
  ADDI a4, zero, 4
  MULW a5, a0, a4
  LA a4, SHIFT_TABLE
  ADD a6, a4, a5
  LW a4, 0(a6)
  ADDI a5, zero, 1
  MULW a6, a4, a5
  ADDW a4, s6, a6
  ADD a5, a4, zero
  JAL zero, bb144
bb144:
  ADD a4, a5, zero
  ADDI a6, zero, 2
  DIVW a7, s7, a6
  ADDI a6, zero, 2
  DIVW t1, t2, a6
  ADDIW a6, a0, 1
  ADD s0, a3, zero
  ADD s3, a6, zero
  ADD s5, t1, zero
  ADD s4, a7, zero
  ADD s2, a4, zero
  JAL zero, bb137
bb145:
  ADD t4, a2, zero
  SW t4, 1648(sp)
  ADD t4, a1, zero
  SB t4, 1640(sp)
  ADD t4, s11, zero
  SW t4, 1632(sp)
  ADD t4, a0, zero
  SW t4, 1624(sp)
  ADD t4, t2, zero
  SB t4, 1616(sp)
  ADD t4, t1, zero
  SW t4, 1608(sp)
  LW t4, 1608(sp)
  XOR s5, t4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb146
  JAL zero, bb147
bb146:
  ADD s4, zero, zero
  LW t4, 1608(sp)
  ADD s5, t4, zero
  LW t4, 1632(sp)
  ADD s3, t4, zero
  ADD s2, zero, zero
  JAL zero, bb148
bb147:
  ADDI s0, zero, 1
  SLTI s1, s0, 15
  XORI s0, s1, 1
  BNE s0, zero, bb176
  JAL zero, bb178
bb148:
  ADD t4, s2, zero
  SW t4, 1704(sp)
  ADD s0, s3, zero
  ADD s6, s5, zero
  ADD a7, s4, zero
  SLTI a6, a7, 16
  XOR a5, a6, zero
  SLTU a6, zero, a5
  BNE a6, zero, bb149
  JAL zero, bb150
bb149:
  ADDI a5, zero, 2
  REMW a6, s0, a5
  XOR a5, a6, zero
  SLTU a6, zero, a5
  BNE a6, zero, bb151
  JAL zero, bb153
bb150:
  ADD s0, zero, zero
  LB t4, 1640(sp)
  ADD s2, t4, zero
  LW t4, 1608(sp)
  ADD s3, t4, zero
  LW t4, 1632(sp)
  ADD s4, t4, zero
  ADD s5, zero, zero
  JAL zero, bb158
bb151:
  ADDI a5, zero, 2
  REMW a6, s6, a5
  XOR a5, a6, zero
  SLTIU a6, a5, 1
  BNE a6, zero, bb154
  JAL zero, bb812
bb152:
  ADD a4, a6, zero
  ADDI a3, zero, 2
  DIVW t0, s0, a3
  ADDI a3, zero, 2
  DIVW ra, s6, a3
  ADDIW a3, a7, 1
  ADD s4, a3, zero
  ADD s5, ra, zero
  ADD s3, t0, zero
  ADD s2, a4, zero
  JAL zero, bb148
bb153:
  ADDI s2, zero, 2
  REMW s3, s6, s2
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb156
  JAL zero, bb813
bb154:
  ADDI a5, zero, 4
  MULW a6, a7, a5
  LA a5, SHIFT_TABLE
  ADD a4, a5, a6
  LW a5, 0(a4)
  ADDI a4, zero, 1
  MULW a6, a5, a4
  LW t4, 1704(sp)
  ADDW a4, t4, a6
  ADD a5, a4, zero
  JAL zero, bb155
bb155:
  ADD a4, a5, zero
  ADD a6, a4, zero
  JAL zero, bb152
bb156:
  ADDI s2, zero, 4
  MULW s3, a7, s2
  LA s2, SHIFT_TABLE
  ADD s4, s2, s3
  LW s2, 0(s4)
  ADDI s3, zero, 1
  MULW s4, s2, s3
  LW t4, 1704(sp)
  ADDW s2, t4, s4
  ADD s3, s2, zero
  JAL zero, bb157
bb157:
  ADD s2, s3, zero
  ADD a6, s2, zero
  JAL zero, bb152
bb158:
  ADD s6, s5, zero
  ADD ra, s4, zero
  ADD t0, s3, zero
  ADD a3, s2, zero
  ADD a4, s0, zero
  SLTI a5, a4, 16
  XOR a6, a5, zero
  SLTU a5, zero, a6
  BNE a5, zero, bb159
  JAL zero, bb160
bb159:
  ADDI a5, zero, 2
  REMW a6, ra, a5
  XOR a5, a6, zero
  SLTU a6, zero, a5
  BNE a6, zero, bb161
  JAL zero, bb162
bb160:
  JAL zero, bb167
bb161:
  ADDI a5, zero, 2
  REMW a6, t0, a5
  XOR a5, a6, zero
  SLTU a6, zero, a5
  ADD a5, a6, zero
  JAL zero, bb163
bb162:
  ADD a5, zero, zero
  JAL zero, bb163
bb163:
  ADD a6, a5, zero
  BNE a6, zero, bb164
  JAL zero, bb814
bb164:
  ADDI a7, zero, 4
  MULW s10, a4, a7
  LA a7, SHIFT_TABLE
  ADD s9, a7, s10
  LW s10, 0(s9)
  ADDI s9, zero, 1
  MULW a7, s10, s9
  ADDW s9, s6, a7
  ADD s10, s9, zero
  JAL zero, bb165
bb165:
  ADD s9, s10, zero
  ADDI a7, zero, 2
  DIVW s8, ra, a7
  ADDI a7, zero, 2
  DIVW s7, t0, a7
  ADDIW a7, a4, 1
  ADD s0, a7, zero
  ADD s2, a6, zero
  ADD s3, s7, zero
  ADD s4, s8, zero
  ADD s5, s9, zero
  JAL zero, bb158
bb166:
  ADD s3, s2, zero
  ADD s2, s1, zero
  ADD s1, s0, zero
  ADD t1, s3, zero
  ADD t2, s1, zero
  ADD a0, s2, zero
  LW t4, 1704(sp)
  ADD s11, t4, zero
  ADD a1, a3, zero
  LW t4, 1704(sp)
  ADD a2, t4, zero
  JAL zero, bb145
bb167:
  LA s0, SHIFT_TABLE
  ADDI s2, s0, 4
  LW s0, 0(s2)
  MULW s2, s6, s0
  LB t4, 1616(sp)
  ADD s0, t4, zero
  ADD s3, zero, zero
  LUI s4, 16
  ADDI s4, s4, -1
  ADD s5, zero, s4
  ADD s4, s2, zero
  ADD s2, zero, zero
  JAL zero, bb168
bb168:
  ADD s6, s2, zero
  ADD s7, s4, zero
  ADD s8, s5, zero
  ADD s9, s3, zero
  ADD s10, s0, zero
  SLTI ra, s9, 16
  XOR t0, ra, zero
  SLTU ra, zero, t0
  BNE ra, zero, bb169
  JAL zero, bb170
bb169:
  ADDI ra, zero, 2
  REMW t0, s7, ra
  XOR ra, t0, zero
  SLTU t0, zero, ra
  BNE t0, zero, bb171
  JAL zero, bb172
bb170:
  ADD s0, s10, zero
  ADD s1, s9, zero
  ADD s2, s6, zero
  JAL zero, bb166
bb171:
  ADDI ra, zero, 2
  REMW t0, s8, ra
  XOR ra, t0, zero
  SLTU t0, zero, ra
  ADD ra, t0, zero
  JAL zero, bb173
bb172:
  ADD ra, zero, zero
  JAL zero, bb173
bb173:
  ADD t0, ra, zero
  BNE t0, zero, bb174
  JAL zero, bb815
bb174:
  ADDI a4, zero, 4
  MULW a5, s9, a4
  LA a4, SHIFT_TABLE
  ADD a6, a4, a5
  LW a4, 0(a6)
  ADDI a5, zero, 1
  MULW a6, a4, a5
  ADDW a4, s6, a6
  ADD a5, a4, zero
  JAL zero, bb175
bb175:
  ADD a4, a5, zero
  ADDI a6, zero, 2
  DIVW a7, s7, a6
  ADDI a6, zero, 2
  DIVW s1, s8, a6
  ADDIW a6, s9, 1
  ADD s0, t0, zero
  ADD s3, a6, zero
  ADD s5, s1, zero
  ADD s4, a7, zero
  ADD s2, a4, zero
  JAL zero, bb168
bb176:
  LW t4, 1352(sp)
  SLT s0, t4, zero
  BNE s0, zero, bb179
  JAL zero, bb181
bb177:
  ADD s0, s2, zero
  LW t3, 1608(sp)
  ADD t4, t3, zero
  SW t4, 1488(sp)
  ADD t4, s0, zero
  SW t4, 1480(sp)
  LW t3, 1656(sp)
  ADD t4, t3, zero
  SW t4, 1472(sp)
  LB t3, 1664(sp)
  ADD t4, t3, zero
  SB t4, 1464(sp)
  LB t3, 1616(sp)
  ADD t4, t3, zero
  SB t4, 1456(sp)
  LW t3, 1624(sp)
  ADD t4, t3, zero
  SW t4, 1448(sp)
  LW t3, 1672(sp)
  ADD t4, t3, zero
  SW t4, 1440(sp)
  LW t3, 1632(sp)
  ADD t4, t3, zero
  SW t4, 1432(sp)
  LW t3, 1632(sp)
  ADD t4, t3, zero
  SW t4, 1424(sp)
  LB t3, 1640(sp)
  ADD t4, t3, zero
  SB t4, 1416(sp)
  LW t3, 1680(sp)
  ADD t4, t3, zero
  SW t4, 1408(sp)
  LW t3, 1688(sp)
  ADD t4, t3, zero
  SW t4, 1400(sp)
  LW t3, 1648(sp)
  ADD t4, t3, zero
  SW t4, 1392(sp)
  LB t3, 1696(sp)
  ADD t4, t3, zero
  SB t4, 1384(sp)
  LB t3, 1344(sp)
  ADD t4, t3, zero
  SB t4, 1376(sp)
  JAL zero, bb101
bb178:
  JAL zero, bb182
bb179:
  LUI s0, 16
  ADDI s0, s0, -1
  ADD s1, zero, s0
  JAL zero, bb180
bb180:
  ADD s0, s1, zero
  ADD s2, s0, zero
  JAL zero, bb177
bb181:
  ADD s1, zero, zero
  JAL zero, bb180
bb182:
  LUI s0, 8
  ADDI s0, s0, -1
  LW t4, 1352(sp)
  SLT s1, s0, t4
  BNE s1, zero, bb184
  JAL zero, bb186
bb183:
  ADD s1, s3, zero
  ADD s2, s1, zero
  JAL zero, bb177
bb184:
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 4
  LW s0, 0(s1)
  LW t4, 1352(sp)
  DIVW s1, t4, s0
  LUI s0, 16
  ADDI s0, s0, 0
  ADDW s3, s1, s0
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 60
  LW s0, 0(s1)
  SUBW s1, s3, s0
  ADD s0, s1, zero
  JAL zero, bb185
bb185:
  ADD s1, s0, zero
  ADD s3, s1, zero
  JAL zero, bb183
bb186:
  LA s1, SHIFT_TABLE
  ADDI s2, s1, 4
  LW s1, 0(s2)
  LW t4, 1352(sp)
  DIVW s2, t4, s1
  ADD s0, s2, zero
  JAL zero, bb185
bb187:
  LW t4, 312(sp)
  SLT s0, t4, zero
  BNE s0, zero, bb190
  JAL zero, bb192
bb188:
  ADD s0, s3, zero
  ADD s4, s2, zero
  ADD t4, s0, zero
  SW t4, 512(sp)
  LW t3, 1120(sp)
  ADD t4, t3, zero
  SW t4, 504(sp)
  LW t3, 1128(sp)
  ADD t4, t3, zero
  SW t4, 496(sp)
  LB t3, 384(sp)
  ADD t4, t3, zero
  SB t4, 488(sp)
  LW t3, 1136(sp)
  ADD t4, t3, zero
  SW t4, 480(sp)
  LB t3, 1144(sp)
  ADD t4, t3, zero
  SB t4, 472(sp)
  LW t3, 1152(sp)
  ADD t4, t3, zero
  SW t4, 464(sp)
  LW t3, 1160(sp)
  ADD t4, t3, zero
  SW t4, 456(sp)
  LW t3, 1224(sp)
  ADD t4, t3, zero
  SW t4, 448(sp)
  LW t3, 1280(sp)
  ADD t4, t3, zero
  SW t4, 440(sp)
  LW t3, 1272(sp)
  ADD t4, t3, zero
  SW t4, 432(sp)
  LW t3, 1288(sp)
  ADD t4, t3, zero
  SW t4, 424(sp)
  LW t3, 1264(sp)
  ADD t4, t3, zero
  SW t4, 416(sp)
  LB t3, 1256(sp)
  ADD t4, t3, zero
  SB t4, 408(sp)
  LB t3, 1248(sp)
  ADD t4, t3, zero
  SB t4, 400(sp)
  LW t3, 1240(sp)
  ADD t4, t3, zero
  SW t4, 392(sp)
  LB t3, 1296(sp)
  ADD t4, t3, zero
  SB t4, 368(sp)
  LB t3, 1304(sp)
  ADD t4, t3, zero
  SB t4, 360(sp)
  LW t3, 1192(sp)
  ADD t4, t3, zero
  SW t4, 352(sp)
  LW t3, 1232(sp)
  ADD t4, t3, zero
  SW t4, 344(sp)
  LB t3, 1312(sp)
  ADD t4, t3, zero
  SB t4, 336(sp)
  LW t3, 1216(sp)
  ADD t4, t3, zero
  SW t4, 328(sp)
  LW t3, 1320(sp)
  ADD t4, t3, zero
  SW t4, 320(sp)
  LB t3, 1208(sp)
  ADD t4, t3, zero
  SB t4, 288(sp)
  LW t3, 1200(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t3, 1184(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  ADDI t4, zero, 1
  SW t4, 16(sp)
  LB t3, 1176(sp)
  ADD t4, t3, zero
  SB t4, 24(sp)
  LB t3, 1168(sp)
  ADD t4, t3, zero
  SB t4, 32(sp)
  LW t3, 1328(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LB t3, 1336(sp)
  ADD t4, t3, zero
  SB t4, 48(sp)
  ADD t4, s4, zero
  SW t4, 56(sp)
  JAL zero, bb2
bb189:
  JAL zero, bb193
bb190:
  LUI s0, 16
  ADDI s0, s0, -1
  ADD s1, zero, s0
  JAL zero, bb191
bb191:
  ADD s0, s1, zero
  LW t4, 312(sp)
  ADD s2, t4, zero
  ADD s3, s0, zero
  JAL zero, bb188
bb192:
  ADD s1, zero, zero
  JAL zero, bb191
bb193:
  LUI s0, 8
  ADDI s0, s0, -1
  LW t4, 312(sp)
  SLT s1, s0, t4
  BNE s1, zero, bb195
  JAL zero, bb197
bb194:
  ADD s4, s5, zero
  ADD s5, s6, zero
  ADD s2, s5, zero
  ADD s3, s4, zero
  JAL zero, bb188
bb195:
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 4
  LW s0, 0(s1)
  LW t4, 312(sp)
  DIVW s1, t4, s0
  LUI s0, 16
  ADDI s0, s0, 0
  ADDW s4, s1, s0
  LA s0, SHIFT_TABLE
  ADDI s5, s0, 60
  LW s0, 0(s5)
  SUBW s5, s4, s0
  ADD s0, s1, zero
  ADD s1, s5, zero
  JAL zero, bb196
bb196:
  ADD s4, s1, zero
  ADD s5, s0, zero
  ADD s6, s5, zero
  ADD s5, s4, zero
  JAL zero, bb194
bb197:
  LA s2, SHIFT_TABLE
  ADDI s3, s2, 4
  LW s2, 0(s3)
  LW t4, 312(sp)
  DIVW s3, t4, s2
  LW t4, 312(sp)
  ADD s0, t4, zero
  ADD s1, s3, zero
  JAL zero, bb196
bb198:
  LW t3, 1864(sp)
  ADD t4, t3, zero
  SW t4, 1872(sp)
  LW t3, 1856(sp)
  ADD t4, t3, zero
  SW t4, 1880(sp)
  LB t3, 1848(sp)
  ADD t4, t3, zero
  SB t4, 1888(sp)
  LW t3, 1840(sp)
  ADD t4, t3, zero
  SW t4, 1896(sp)
  LB t3, 1832(sp)
  ADD t4, t3, zero
  SB t4, 1904(sp)
  LW t3, 1824(sp)
  ADD t4, t3, zero
  SW t4, 1912(sp)
  LB t3, 1816(sp)
  ADD t4, t3, zero
  SB t4, 1920(sp)
  LW t3, 1808(sp)
  ADD t4, t3, zero
  SW t4, 1928(sp)
  LW t3, 1800(sp)
  ADD t4, t3, zero
  SW t4, 1936(sp)
  LW t3, 1792(sp)
  ADD t4, t3, zero
  SW t4, 1944(sp)
  LB t3, 1784(sp)
  ADD t4, t3, zero
  SB t4, 1952(sp)
  LW t3, 1776(sp)
  ADD t4, t3, zero
  SW t4, 1960(sp)
  LW t3, 1768(sp)
  ADD t4, t3, zero
  SW t4, 1968(sp)
  LW t3, 1760(sp)
  ADD t4, t3, zero
  SW t4, 1976(sp)
  LW t3, 1752(sp)
  ADD t4, t3, zero
  SW t4, 1984(sp)
  LB t3, 1744(sp)
  ADD t4, t3, zero
  SB t4, 1992(sp)
  LW t3, 1736(sp)
  ADD t4, t3, zero
  SW t4, 2000(sp)
  LW t3, 1728(sp)
  ADD t4, t3, zero
  SW t4, 2008(sp)
  LW t3, 1720(sp)
  ADD t4, t3, zero
  SW t4, 2016(sp)
  LB t3, 1712(sp)
  ADD t4, t3, zero
  SB t4, 2024(sp)
  LUI t3, 1
  ADDI t3, t3, -2024
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  SW t4, 2032(sp)
  LUI t3, 1
  ADDI t3, t3, -1968
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  SB t4, 2040(sp)
  LUI t3, 1
  ADDI t3, t3, -1960
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -2048
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1952
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -2040
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1944
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, -2032
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDI t4, t4, -1936
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s11, t4, zero
  LUI t3, 1
  ADDI t3, t3, -1928
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -2016
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1920
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -2008
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1896
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -2000
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1888
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1992
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1880
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1984
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1872
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, -1976
  ADD t5, t5, sp
  SB t4, 0(t5)
  LUI t4, 1
  ADDI t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s10, zero, t4
  XOR s9, s10, zero
  SLTU s10, zero, s9
  BNE s10, zero, bb199
  JAL zero, bb200
bb199:
  ADD s9, zero, zero
  ADD s10, s11, zero
  ADDI s11, zero, 1
  LUI t4, 1
  ADDI t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  ADD s7, zero, zero
  JAL zero, bb201
bb200:
  LUI t4, 1
  ADDI t4, t4, -2000
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a0, t4, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD t4, zero, zero
  LUI t3, 1
  ADDI t3, t3, 208
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1992
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, 200
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 1
  ADDI t5, t5, 192
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 1
  ADDI t6, t6, 184
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 1
  ADDI t5, t5, 176
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 1
  ADDI t6, t6, 168
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 1
  ADDI t5, t5, 160
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 1
  ADDI t6, t6, 152
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 1
  ADDI t5, t5, 144
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 1
  ADDI t6, t6, 136
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 1
  ADDI t5, t5, 128
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 1
  ADDI t6, t6, 120
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 1
  ADDI t5, t5, -56
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 1
  ADDI t6, t6, -48
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 1
  ADDI t5, t5, -40
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 1
  ADDI t6, t6, -32
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 1
  ADDI t5, t5, -24
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t3, 1
  ADDI t3, t3, -16
  ADD t3, t3, sp
  SB t4, 0(t3)
  ADD t4, zero, zero
  LUI t3, 1
  ADDI t3, t3, -8
  ADD t3, t3, sp
  SB t4, 0(t3)
  LW t3, 1880(sp)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, 0
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 1
  ADDI t5, t5, 8
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 1
  ADDI t6, t6, 16
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 1
  ADDI t5, t5, 24
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 1
  ADDI t6, t6, 32
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 1
  ADDI t5, t5, 40
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 1
  ADDI t6, t6, 48
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 1
  ADDI t5, t5, 56
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 1
  ADDI t6, t6, 64
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 1
  ADDI t5, t5, 72
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 1
  ADDI t6, t6, 80
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t3, 1
  ADDI t3, t3, 88
  ADD t3, t3, sp
  SB t4, 0(t3)
  ADDI t4, zero, 2
  LUI t3, 1
  ADDI t3, t3, 96
  ADD t3, t3, sp
  SW t4, 0(t3)
  LW t3, 1872(sp)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, 104
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb394
bb201:
  ADD t4, s7, zero
  LUI t6, 1
  ADDI t6, t6, -1864
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s8, zero
  LUI t5, 1
  ADDI t5, t5, -1848
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s11, zero
  LUI t6, 1
  ADDI t6, t6, -1856
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s10, zero
  LUI t5, 1
  ADDI t5, t5, -1912
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, s9, zero
  LUI t6, 1
  ADDI t6, t6, -1904
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDI t4, t4, -1904
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s3, t4, 16
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb202
  JAL zero, bb203
bb202:
  ADDI s2, zero, 2
  LUI t4, 1
  ADDI t4, t4, -1848
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s3, t4, s2
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb204
  JAL zero, bb205
bb203:
  LUI t4, 1
  ADDI t4, t4, -1864
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s0, t4, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb209
  JAL zero, bb817
bb204:
  ADDI s2, zero, 2
  LUI t4, 1
  ADDI t4, t4, -1856
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s3, t4, s2
  XOR s2, s3, zero
  SLTU s3, zero, s2
  ADD s2, s3, zero
  JAL zero, bb206
bb205:
  ADD s2, zero, zero
  JAL zero, bb206
bb206:
  ADD s3, s2, zero
  BNE s3, zero, bb207
  JAL zero, bb816
bb207:
  ADDI s1, zero, 4
  LUI t4, 1
  ADDI t4, t4, -1904
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s0, t4, s1
  LA s1, SHIFT_TABLE
  ADD s6, s1, s0
  LW s0, 0(s6)
  ADDI s1, zero, 1
  MULW s6, s0, s1
  LUI t4, 1
  ADDI t4, t4, -1864
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s0, t4, s6
  ADD s1, s0, zero
  JAL zero, bb208
bb208:
  ADD s0, s1, zero
  ADDI s6, zero, 2
  LUI t4, 1
  ADDI t4, t4, -1848
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s4, t4, s6
  ADDI s6, zero, 2
  LUI t4, 1
  ADDI t4, t4, -1856
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s5, t4, s6
  LUI t4, 1
  ADDI t4, t4, -1904
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s6, t4, 1
  ADD s9, s6, zero
  ADD s10, s3, zero
  ADD s11, s5, zero
  ADD s8, s4, zero
  ADD s7, s0, zero
  JAL zero, bb201
bb209:
  LUI t3, 1
  ADDI t3, t3, -1904
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1592
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -2000
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1600
  ADD t3, t3, sp
  SW t4, 0(t3)
  LW t3, 1984(sp)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, -1608
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t3, 1
  ADDI t3, t3, -1616
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -2048
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1640
  ADD t3, t3, sp
  SB t4, 0(t3)
  LB t3, 2040(sp)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1648
  ADD t3, t3, sp
  SB t4, 0(t3)
  LW t3, 2032(sp)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1656
  ADD t3, t3, sp
  SW t4, 0(t3)
  LB t3, 2024(sp)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1664
  ADD t3, t3, sp
  SB t4, 0(t3)
  LW t3, 2016(sp)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1672
  ADD t3, t3, sp
  SW t4, 0(t3)
  LW t3, 2008(sp)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1680
  ADD t3, t3, sp
  SW t4, 0(t3)
  LW t3, 2000(sp)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1688
  ADD t3, t3, sp
  SW t4, 0(t3)
  LB t3, 1992(sp)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1696
  ADD t3, t3, sp
  SB t4, 0(t3)
  LW t3, 1944(sp)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1840
  ADD t3, t3, sp
  SW t4, 0(t3)
  LB t3, 1904(sp)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1832
  ADD t3, t3, sp
  SB t4, 0(t3)
  LW t3, 1896(sp)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, -1824
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb211
bb210:
  LUI t3, 1
  ADDI t3, t3, -1048
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -832
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1056
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -840
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1064
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -848
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1072
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -856
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1040
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -864
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1032
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -872
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1024
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -880
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1016
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -888
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1008
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -896
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1000
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -904
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -992
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -912
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -984
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -920
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -976
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -944
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -968
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -936
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -960
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, -928
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDI t4, t4, -952
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  LW t3, 1984(sp)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -576
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1976
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, -584
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, s0, zero
  LUI t3, 1
  ADDI t3, t3, -592
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -2008
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -600
  ADD t3, t3, sp
  SB t4, 0(t3)
  LW t3, 1984(sp)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -624
  ADD t3, t3, sp
  SW t4, 0(t3)
  ADD t4, zero, zero
  LUI t3, 1
  ADDI t3, t3, -632
  ADD t3, t3, sp
  SW t4, 0(t3)
  LW t3, 1976(sp)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -640
  ADD t3, t3, sp
  SW t4, 0(t3)
  LW t3, 1968(sp)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -648
  ADD t3, t3, sp
  SW t4, 0(t3)
  LW t3, 1960(sp)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -656
  ADD t3, t3, sp
  SW t4, 0(t3)
  LB t3, 1952(sp)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -664
  ADD t3, t3, sp
  SB t4, 0(t3)
  LW t3, 1936(sp)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -672
  ADD t3, t3, sp
  SW t4, 0(t3)
  LW t3, 1928(sp)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -680
  ADD t3, t3, sp
  SW t4, 0(t3)
  LB t3, 1920(sp)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -824
  ADD t3, t3, sp
  SB t4, 0(t3)
  LW t3, 1912(sp)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -816
  ADD t3, t3, sp
  SW t4, 0(t3)
  LB t3, 1888(sp)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, -808
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb297
bb211:
  LUI t3, 1
  ADDI t3, t3, -1824
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1816
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1832
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1808
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1840
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1800
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1696
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1792
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1688
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1784
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1680
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1776
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1672
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1768
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1664
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1760
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1656
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1752
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1648
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1744
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1640
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1736
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1616
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1728
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1608
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1720
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1600
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1712
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1592
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, -1704
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDI t4, t4, -1720
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s11, t4, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb212
  JAL zero, bb213
bb212:
  ADD s10, zero, zero
  LUI t4, 1
  ADDI t4, t4, -1744
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s11, t4, zero
  ADDI s9, zero, 1
  LUI t4, 1
  ADDI t4, t4, -1720
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  ADD s7, zero, zero
  JAL zero, bb214
bb213:
  LUI t3, 1
  ADDI t3, t3, -1704
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -952
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1728
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -960
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1712
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -968
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1720
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -976
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1728
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -984
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1736
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -992
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1744
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1000
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1752
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1008
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1760
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1016
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1768
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1024
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1776
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1032
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1784
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1040
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1792
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1072
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1800
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1064
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1808
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1056
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1816
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, -1048
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb210
bb214:
  ADD t4, s7, zero
  LUI t6, 1
  ADDI t6, t6, -1584
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s8, zero
  LUI t5, 1
  ADDI t5, t5, -1568
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s9, zero
  LUI t6, 1
  ADDI t6, t6, -1576
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s11, zero
  LUI t5, 1
  ADDI t5, t5, -1632
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, s10, zero
  LUI t6, 1
  ADDI t6, t6, -1624
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDI t4, t4, -1624
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s3, t4, 16
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb215
  JAL zero, bb216
bb215:
  ADDI s2, zero, 2
  LUI t4, 1
  ADDI t4, t4, -1568
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s3, t4, s2
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb217
  JAL zero, bb218
bb216:
  LUI t4, 1
  ADDI t4, t4, -1584
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s0, t4, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb222
  JAL zero, bb819
bb217:
  ADDI s2, zero, 2
  LUI t4, 1
  ADDI t4, t4, -1576
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s3, t4, s2
  XOR s2, s3, zero
  SLTU s3, zero, s2
  ADD s2, s3, zero
  JAL zero, bb219
bb218:
  ADD s2, zero, zero
  JAL zero, bb219
bb219:
  ADD s3, s2, zero
  BNE s3, zero, bb220
  JAL zero, bb818
bb220:
  ADDI s1, zero, 4
  LUI t4, 1
  ADDI t4, t4, -1624
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s0, t4, s1
  LA s1, SHIFT_TABLE
  ADD s6, s1, s0
  LW s0, 0(s6)
  ADDI s1, zero, 1
  MULW s6, s0, s1
  LUI t4, 1
  ADDI t4, t4, -1584
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s0, t4, s6
  ADD s1, s0, zero
  JAL zero, bb221
bb221:
  ADD s0, s1, zero
  ADDI s6, zero, 2
  LUI t4, 1
  ADDI t4, t4, -1568
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s4, t4, s6
  ADDI s6, zero, 2
  LUI t4, 1
  ADDI t4, t4, -1576
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s5, t4, s6
  LUI t4, 1
  ADDI t4, t4, -1624
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s6, t4, 1
  ADD s10, s6, zero
  ADD s11, s3, zero
  ADD s9, s5, zero
  ADD s8, s4, zero
  ADD s7, s0, zero
  JAL zero, bb214
bb222:
  LUI t3, 1
  ADDI t3, t3, -1624
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1464
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1752
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1472
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1760
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1480
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1712
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1488
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1808
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1496
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1728
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, -1504
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb224
bb223:
  LUI t3, 1
  ADDI t3, t3, -1368
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1224
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1360
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1232
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1352
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1240
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1344
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1248
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1336
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1256
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1328
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, -1264
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDI t4, t4, -1320
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s5, t4, zero
  ADD t4, s5, zero
  LUI t3, 1
  ADDI t3, t3, -1168
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1736
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1176
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1712
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1184
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1712
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1192
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1784
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1200
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1792
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, -1216
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb255
bb224:
  LUI t3, 1
  ADDI t3, t3, -1504
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1560
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1496
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1552
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1488
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1544
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1480
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1536
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1472
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1528
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1464
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, -1520
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDI t4, t4, -1544
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s6, t4, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb225
  JAL zero, bb226
bb225:
  ADD s6, zero, zero
  LUI t4, 1
  ADDI t4, t4, -1544
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  LUI t4, 1
  ADDI t4, t4, -1560
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  ADD s9, zero, zero
  JAL zero, bb227
bb226:
  LUI t3, 1
  ADDI t3, t3, -1520
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1320
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1560
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1328
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1528
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1336
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1536
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1344
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1544
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1352
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1552
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1360
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1560
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, -1368
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb223
bb227:
  ADD t4, s9, zero
  LUI t6, 1
  ADDI t6, t6, -1512
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD s11, s8, zero
  ADD s10, s7, zero
  ADD t4, s6, zero
  LUI t5, 1
  ADDI t5, t5, -1456
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDI t4, t4, -1456
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s4, t4, 16
  XOR s3, s4, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb228
  JAL zero, bb229
bb228:
  ADDI s3, zero, 2
  REMW s4, s11, s3
  XOR s3, s4, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb230
  JAL zero, bb232
bb229:
  ADD s0, zero, zero
  LUI t4, 1
  ADDI t4, t4, -1536
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s1, t4, zero
  LUI t4, 1
  ADDI t4, t4, -1544
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  LUI t4, 1
  ADDI t4, t4, -1560
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  ADD s4, zero, zero
  JAL zero, bb237
bb230:
  ADDI s3, zero, 2
  REMW s4, s10, s3
  XOR s3, s4, zero
  SLTIU s4, s3, 1
  BNE s4, zero, bb233
  JAL zero, bb820
bb231:
  ADD s2, s4, zero
  ADDI s1, zero, 2
  DIVW s0, s11, s1
  ADDI s1, zero, 2
  DIVW s5, s10, s1
  LUI t4, 1
  ADDI t4, t4, -1456
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s1, t4, 1
  ADD s6, s1, zero
  ADD s7, s5, zero
  ADD s8, s0, zero
  ADD s9, s2, zero
  JAL zero, bb227
bb232:
  ADDI s0, zero, 2
  REMW s1, s10, s0
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb235
  JAL zero, bb821
bb233:
  ADDI s3, zero, 4
  LUI t4, 1
  ADDI t4, t4, -1456
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s4, t4, s3
  LA s3, SHIFT_TABLE
  ADD s2, s3, s4
  LW s3, 0(s2)
  ADDI s2, zero, 1
  MULW s4, s3, s2
  LUI t4, 1
  ADDI t4, t4, -1512
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s2, t4, s4
  ADD s3, s2, zero
  JAL zero, bb234
bb234:
  ADD s2, s3, zero
  ADD s4, s2, zero
  JAL zero, bb231
bb235:
  ADDI s0, zero, 4
  LUI t4, 1
  ADDI t4, t4, -1456
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s1, t4, s0
  LA s0, SHIFT_TABLE
  ADD s2, s0, s1
  LW s0, 0(s2)
  ADDI s1, zero, 1
  MULW s2, s0, s1
  LUI t4, 1
  ADDI t4, t4, -1512
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s0, t4, s2
  ADD s1, s0, zero
  JAL zero, bb236
bb236:
  ADD s0, s1, zero
  ADD s4, s0, zero
  JAL zero, bb231
bb237:
  ADD t4, s4, zero
  LUI t6, 1
  ADDI t6, t6, -1440
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s3, zero
  LUI t5, 1
  ADDI t5, t5, -1416
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s2, zero
  LUI t6, 1
  ADDI t6, t6, -1424
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s1, zero
  LUI t5, 1
  ADDI t5, t5, -1448
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, s0, zero
  LUI t6, 1
  ADDI t6, t6, -1432
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDI t4, t4, -1432
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s10, t4, 16
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb238
  JAL zero, bb239
bb238:
  ADDI s10, zero, 2
  LUI t4, 1
  ADDI t4, t4, -1416
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb240
  JAL zero, bb241
bb239:
  JAL zero, bb246
bb240:
  ADDI s10, zero, 2
  LUI t4, 1
  ADDI t4, t4, -1424
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  ADD s10, s11, zero
  JAL zero, bb242
bb241:
  ADD s10, zero, zero
  JAL zero, bb242
bb242:
  ADD s11, s10, zero
  BNE s11, zero, bb243
  JAL zero, bb822
bb243:
  ADDI s8, zero, 4
  LUI t4, 1
  ADDI t4, t4, -1432
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s5, t4, s8
  LA s8, SHIFT_TABLE
  ADD s9, s8, s5
  LW s5, 0(s9)
  ADDI s8, zero, 1
  MULW s9, s5, s8
  LUI t4, 1
  ADDI t4, t4, -1440
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s5, t4, s9
  ADD s8, s5, zero
  JAL zero, bb244
bb244:
  ADD s5, s8, zero
  ADDI s9, zero, 2
  LUI t4, 1
  ADDI t4, t4, -1416
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s7, t4, s9
  ADDI s9, zero, 2
  LUI t4, 1
  ADDI t4, t4, -1424
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s6, t4, s9
  LUI t4, 1
  ADDI t4, t4, -1432
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s9, t4, 1
  ADD s0, s9, zero
  ADD s1, s11, zero
  ADD s2, s6, zero
  ADD s3, s7, zero
  ADD s4, s5, zero
  JAL zero, bb237
bb245:
  ADD s3, s2, zero
  ADD s2, s1, zero
  ADD s1, s0, zero
  ADD t4, s1, zero
  LUI t3, 1
  ADDI t3, t3, -1464
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1512
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1472
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1448
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, -1480
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, s3, zero
  LUI t6, 1
  ADDI t6, t6, -1488
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s2, zero
  LUI t3, 1
  ADDI t3, t3, -1496
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1512
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, -1504
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb224
bb246:
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 4
  LW s0, 0(s1)
  LUI t4, 1
  ADDI t4, t4, -1440
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s1, t4, s0
  ADD s0, zero, zero
  LUI t4, 1
  ADDI t4, t4, -1552
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  LUI s3, 16
  ADDI s3, s3, -1
  ADD s4, zero, s3
  ADD s3, s1, zero
  ADD s1, zero, zero
  JAL zero, bb247
bb247:
  ADD t4, s1, zero
  LUI t6, 1
  ADDI t6, t6, -1408
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s3, zero
  LUI t5, 1
  ADDI t5, t5, -1376
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s4, zero
  LUI t6, 1
  ADDI t6, t6, -1384
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s2, zero
  LUI t5, 1
  ADDI t5, t5, -1400
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, s0, zero
  LUI t6, 1
  ADDI t6, t6, -1392
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDI t4, t4, -1392
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s10, t4, 16
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb248
  JAL zero, bb249
bb248:
  ADDI s10, zero, 2
  LUI t4, 1
  ADDI t4, t4, -1376
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb250
  JAL zero, bb251
bb249:
  LUI t4, 1
  ADDI t4, t4, -1392
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  LUI t4, 1
  ADDI t4, t4, -1400
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s1, t4, zero
  LUI t4, 1
  ADDI t4, t4, -1408
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  JAL zero, bb245
bb250:
  ADDI s10, zero, 2
  LUI t4, 1
  ADDI t4, t4, -1384
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  ADD s10, s11, zero
  JAL zero, bb252
bb251:
  ADD s10, zero, zero
  JAL zero, bb252
bb252:
  ADD s11, s10, zero
  BNE s11, zero, bb253
  JAL zero, bb823
bb253:
  ADDI s5, zero, 4
  LUI t4, 1
  ADDI t4, t4, -1392
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s8, t4, s5
  LA s5, SHIFT_TABLE
  ADD s9, s5, s8
  LW s5, 0(s9)
  ADDI s8, zero, 1
  MULW s9, s5, s8
  LUI t4, 1
  ADDI t4, t4, -1408
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s5, t4, s9
  ADD s8, s5, zero
  JAL zero, bb254
bb254:
  ADD s5, s8, zero
  ADDI s9, zero, 2
  LUI t4, 1
  ADDI t4, t4, -1376
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s7, t4, s9
  ADDI s9, zero, 2
  LUI t4, 1
  ADDI t4, t4, -1384
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s6, t4, s9
  LUI t4, 1
  ADDI t4, t4, -1392
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s9, t4, 1
  ADD s0, s9, zero
  ADD s2, s11, zero
  ADD s4, s6, zero
  ADD s3, s7, zero
  ADD s1, s5, zero
  JAL zero, bb247
bb255:
  LUI t3, 1
  ADDI t3, t3, -1216
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1312
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1200
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1304
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1192
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1296
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1184
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1288
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1176
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1280
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1168
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, -1272
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDI t4, t4, -1296
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s6, t4, zero
  SLTU s11, zero, s6
  BNE s11, zero, bb256
  JAL zero, bb257
bb256:
  ADD s6, zero, zero
  LUI t4, 1
  ADDI t4, t4, -1296
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  LUI t4, 1
  ADDI t4, t4, -1288
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s10, t4, zero
  ADD s9, zero, zero
  JAL zero, bb258
bb257:
  ADDI s0, zero, 1
  SLTI s1, s0, 15
  XORI s0, s1, 1
  BNE s0, zero, bb286
  JAL zero, bb288
bb258:
  ADD t4, s9, zero
  LUI t6, 1
  ADDI t6, t6, -1208
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD s7, s10, zero
  ADD s0, s11, zero
  ADD t4, s6, zero
  LUI t5, 1
  ADDI t5, t5, -1160
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDI t4, t4, -1160
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s1, t4, 16
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb259
  JAL zero, bb260
bb259:
  ADDI s1, zero, 2
  REMW s2, s7, s1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb261
  JAL zero, bb263
bb260:
  ADD s0, zero, zero
  LUI t4, 1
  ADDI t4, t4, -1280
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s1, t4, zero
  LUI t4, 1
  ADDI t4, t4, -1296
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  LUI t4, 1
  ADDI t4, t4, -1288
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  ADD s4, zero, zero
  JAL zero, bb268
bb261:
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s1, s2, zero
  SLTIU s2, s1, 1
  BNE s2, zero, bb264
  JAL zero, bb824
bb262:
  ADD s1, s3, zero
  ADDI s5, zero, 2
  DIVW s4, s7, s5
  ADDI s5, zero, 2
  DIVW s8, s0, s5
  LUI t4, 1
  ADDI t4, t4, -1160
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s5, t4, 1
  ADD s6, s5, zero
  ADD s11, s8, zero
  ADD s10, s4, zero
  ADD s9, s1, zero
  JAL zero, bb258
bb263:
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb266
  JAL zero, bb825
bb264:
  ADDI s1, zero, 4
  LUI t4, 1
  ADDI t4, t4, -1160
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s2, t4, s1
  LA s1, SHIFT_TABLE
  ADD s3, s1, s2
  LW s1, 0(s3)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LUI t4, 1
  ADDI t4, t4, -1208
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s1, t4, s3
  ADD s2, s1, zero
  JAL zero, bb265
bb265:
  ADD s1, s2, zero
  ADD s3, s1, zero
  JAL zero, bb262
bb266:
  ADDI s1, zero, 4
  LUI t4, 1
  ADDI t4, t4, -1160
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s2, t4, s1
  LA s1, SHIFT_TABLE
  ADD s4, s1, s2
  LW s1, 0(s4)
  ADDI s2, zero, 1
  MULW s4, s1, s2
  LUI t4, 1
  ADDI t4, t4, -1208
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s1, t4, s4
  ADD s2, s1, zero
  JAL zero, bb267
bb267:
  ADD s1, s2, zero
  ADD s3, s1, zero
  JAL zero, bb262
bb268:
  ADD t4, s4, zero
  LUI t6, 1
  ADDI t6, t6, -1144
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s3, zero
  LUI t5, 1
  ADDI t5, t5, -1120
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s2, zero
  LUI t6, 1
  ADDI t6, t6, -1128
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s1, zero
  LUI t5, 1
  ADDI t5, t5, -1152
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, s0, zero
  LUI t6, 1
  ADDI t6, t6, -1136
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDI t4, t4, -1136
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s10, t4, 16
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb269
  JAL zero, bb270
bb269:
  ADDI s10, zero, 2
  LUI t4, 1
  ADDI t4, t4, -1120
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb271
  JAL zero, bb272
bb270:
  JAL zero, bb277
bb271:
  ADDI s10, zero, 2
  LUI t4, 1
  ADDI t4, t4, -1128
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  ADD s10, s11, zero
  JAL zero, bb273
bb272:
  ADD s10, zero, zero
  JAL zero, bb273
bb273:
  ADD s11, s10, zero
  BNE s11, zero, bb274
  JAL zero, bb826
bb274:
  ADDI s8, zero, 4
  LUI t4, 1
  ADDI t4, t4, -1136
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s5, t4, s8
  LA s8, SHIFT_TABLE
  ADD s9, s8, s5
  LW s5, 0(s9)
  ADDI s8, zero, 1
  MULW s9, s5, s8
  LUI t4, 1
  ADDI t4, t4, -1144
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s5, t4, s9
  ADD s8, s5, zero
  JAL zero, bb275
bb275:
  ADD s5, s8, zero
  ADDI s9, zero, 2
  LUI t4, 1
  ADDI t4, t4, -1120
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s7, t4, s9
  ADDI s9, zero, 2
  LUI t4, 1
  ADDI t4, t4, -1128
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s6, t4, s9
  LUI t4, 1
  ADDI t4, t4, -1136
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s9, t4, 1
  ADD s0, s9, zero
  ADD s1, s11, zero
  ADD s2, s6, zero
  ADD s3, s7, zero
  ADD s4, s5, zero
  JAL zero, bb268
bb276:
  ADD s3, s2, zero
  ADD s2, s1, zero
  ADD s1, s0, zero
  ADD t4, s1, zero
  LUI t3, 1
  ADDI t3, t3, -1168
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1152
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1176
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1208
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, -1184
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s3, zero
  LUI t3, 1
  ADDI t3, t3, -1192
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1208
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, -1200
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s2, zero
  LUI t5, 1
  ADDI t5, t5, -1216
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb255
bb277:
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 4
  LW s0, 0(s1)
  LUI t4, 1
  ADDI t4, t4, -1144
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s1, t4, s0
  ADD s0, zero, zero
  LUI t4, 1
  ADDI t4, t4, -1312
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  LUI s3, 16
  ADDI s3, s3, -1
  ADD s4, zero, s3
  ADD s3, s1, zero
  ADD s1, zero, zero
  JAL zero, bb278
bb278:
  ADD t4, s1, zero
  LUI t6, 1
  ADDI t6, t6, -1112
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s3, zero
  LUI t5, 1
  ADDI t5, t5, -1080
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s4, zero
  LUI t6, 1
  ADDI t6, t6, -1088
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s2, zero
  LUI t5, 1
  ADDI t5, t5, -1104
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, s0, zero
  LUI t6, 1
  ADDI t6, t6, -1096
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDI t4, t4, -1096
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s10, t4, 16
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb279
  JAL zero, bb280
bb279:
  ADDI s10, zero, 2
  LUI t4, 1
  ADDI t4, t4, -1080
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb281
  JAL zero, bb282
bb280:
  LUI t4, 1
  ADDI t4, t4, -1096
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  LUI t4, 1
  ADDI t4, t4, -1104
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s1, t4, zero
  LUI t4, 1
  ADDI t4, t4, -1112
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  JAL zero, bb276
bb281:
  ADDI s10, zero, 2
  LUI t4, 1
  ADDI t4, t4, -1088
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  ADD s10, s11, zero
  JAL zero, bb283
bb282:
  ADD s10, zero, zero
  JAL zero, bb283
bb283:
  ADD s11, s10, zero
  BNE s11, zero, bb284
  JAL zero, bb827
bb284:
  ADDI s5, zero, 4
  LUI t4, 1
  ADDI t4, t4, -1096
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s8, t4, s5
  LA s5, SHIFT_TABLE
  ADD s9, s5, s8
  LW s5, 0(s9)
  ADDI s8, zero, 1
  MULW s9, s5, s8
  LUI t4, 1
  ADDI t4, t4, -1112
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s5, t4, s9
  ADD s8, s5, zero
  JAL zero, bb285
bb285:
  ADD s5, s8, zero
  ADDI s9, zero, 2
  LUI t4, 1
  ADDI t4, t4, -1080
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s7, t4, s9
  ADDI s9, zero, 2
  LUI t4, 1
  ADDI t4, t4, -1088
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s6, t4, s9
  LUI t4, 1
  ADDI t4, t4, -1096
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s9, t4, 1
  ADD s0, s9, zero
  ADD s2, s11, zero
  ADD s4, s6, zero
  ADD s3, s7, zero
  ADD s1, s5, zero
  JAL zero, bb278
bb286:
  LUI t4, 1
  ADDI t4, t4, -1720
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s0, t4, zero
  BNE s0, zero, bb289
  JAL zero, bb291
bb287:
  ADD s0, s2, zero
  LUI t3, 1
  ADDI t3, t3, -1272
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1592
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1288
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, -1600
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s0, zero
  LUI t3, 1
  ADDI t3, t3, -1608
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1264
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1616
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1280
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1640
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1632
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1648
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1256
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1656
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1248
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1664
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1288
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1672
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1296
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1680
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1304
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1688
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1312
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1696
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1240
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1840
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1232
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1832
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1224
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, -1824
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb211
bb288:
  JAL zero, bb292
bb289:
  LUI s0, 16
  ADDI s0, s0, -1
  ADD s1, zero, s0
  JAL zero, bb290
bb290:
  ADD s0, s1, zero
  ADD s2, s0, zero
  JAL zero, bb287
bb291:
  ADD s1, zero, zero
  JAL zero, bb290
bb292:
  LUI s0, 8
  ADDI s0, s0, -1
  LUI t4, 1
  ADDI t4, t4, -1720
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s1, s0, t4
  BNE s1, zero, bb294
  JAL zero, bb296
bb293:
  ADD s1, s3, zero
  ADD s2, s1, zero
  JAL zero, bb287
bb294:
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 4
  LW s0, 0(s1)
  LUI t4, 1
  ADDI t4, t4, -1720
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s1, t4, s0
  LUI s0, 16
  ADDI s0, s0, 0
  ADDW s3, s1, s0
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 60
  LW s0, 0(s1)
  SUBW s1, s3, s0
  ADD s0, s1, zero
  JAL zero, bb295
bb295:
  ADD s1, s0, zero
  ADD s3, s1, zero
  JAL zero, bb293
bb296:
  LA s1, SHIFT_TABLE
  ADDI s2, s1, 4
  LW s1, 0(s2)
  LUI t4, 1
  ADDI t4, t4, -1720
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s2, t4, s1
  ADD s0, s2, zero
  JAL zero, bb295
bb297:
  LUI t3, 1
  ADDI t3, t3, -808
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -800
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -816
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -792
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -824
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -784
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -680
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -776
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -672
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -768
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -664
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -760
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -656
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -752
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -648
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -744
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -640
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -736
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -632
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -728
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -624
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -720
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -600
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -712
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -592
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -704
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -584
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -696
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -576
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, -688
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDI t4, t4, -720
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s11, t4, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb298
  JAL zero, bb299
bb298:
  ADD s10, zero, zero
  LUI t4, 1
  ADDI t4, t4, -712
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s11, t4, zero
  ADDI s9, zero, 1
  LUI t4, 1
  ADDI t4, t4, -720
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  ADD s7, zero, zero
  JAL zero, bb300
bb299:
  ADDI s0, zero, 1
  SLTI s1, s0, 15
  XORI s0, s1, 1
  BNE s0, zero, bb383
  JAL zero, bb385
bb300:
  ADD t4, s7, zero
  LUI t6, 1
  ADDI t6, t6, -568
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s8, zero
  LUI t5, 1
  ADDI t5, t5, -552
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s9, zero
  LUI t6, 1
  ADDI t6, t6, -560
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s11, zero
  LUI t5, 1
  ADDI t5, t5, -616
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, s10, zero
  LUI t6, 1
  ADDI t6, t6, -608
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDI t4, t4, -608
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s0, t4, 16
  XOR s3, s0, zero
  SLTU s0, zero, s3
  BNE s0, zero, bb301
  JAL zero, bb302
bb301:
  ADDI s0, zero, 2
  LUI t4, 1
  ADDI t4, t4, -552
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s3, t4, s0
  XOR s0, s3, zero
  SLTU s3, zero, s0
  BNE s3, zero, bb303
  JAL zero, bb304
bb302:
  LUI t4, 1
  ADDI t4, t4, -568
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s0, t4, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb308
  JAL zero, bb829
bb303:
  ADDI s0, zero, 2
  LUI t4, 1
  ADDI t4, t4, -560
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s3, t4, s0
  XOR s0, s3, zero
  SLTU s3, zero, s0
  ADD s0, s3, zero
  JAL zero, bb305
bb304:
  ADD s0, zero, zero
  JAL zero, bb305
bb305:
  ADD s3, s0, zero
  BNE s3, zero, bb306
  JAL zero, bb828
bb306:
  ADDI s2, zero, 4
  LUI t4, 1
  ADDI t4, t4, -608
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s1, t4, s2
  LA s2, SHIFT_TABLE
  ADD s6, s2, s1
  LW s1, 0(s6)
  ADDI s2, zero, 1
  MULW s6, s1, s2
  LUI t4, 1
  ADDI t4, t4, -568
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s1, t4, s6
  ADD s2, s1, zero
  JAL zero, bb307
bb307:
  ADD s1, s2, zero
  ADDI s6, zero, 2
  LUI t4, 1
  ADDI t4, t4, -552
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s4, t4, s6
  ADDI s6, zero, 2
  LUI t4, 1
  ADDI t4, t4, -560
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s5, t4, s6
  LUI t4, 1
  ADDI t4, t4, -608
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s6, t4, 1
  ADD s10, s6, zero
  ADD s11, s3, zero
  ADD s9, s5, zero
  ADD s8, s4, zero
  ADD s7, s1, zero
  JAL zero, bb300
bb308:
  LUI t3, 1
  ADDI t3, t3, -608
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -448
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -728
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -456
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -688
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -464
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -752
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -472
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -760
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -488
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -800
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, -496
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb310
bb309:
  LUI t3, 1
  ADDI t3, t3, -352
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -208
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -344
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -216
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -336
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -224
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -328
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -232
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -320
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -240
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -312
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, -248
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDI t4, t4, -304
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s5, t4, zero
  LUI t3, 1
  ADDI t3, t3, -696
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, -152
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, s5, zero
  LUI t3, 1
  ADDI t3, t3, -160
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -688
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -168
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -776
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -176
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -784
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -192
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -688
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, -200
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb341
bb310:
  LUI t3, 1
  ADDI t3, t3, -496
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -544
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -488
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -536
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -472
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -528
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -464
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -520
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -456
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -512
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -448
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, -504
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDI t4, t4, -520
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s6, t4, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb311
  JAL zero, bb312
bb311:
  ADD s6, zero, zero
  LUI t4, 1
  ADDI t4, t4, -520
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  LUI t4, 1
  ADDI t4, t4, -512
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  ADD s9, zero, zero
  JAL zero, bb313
bb312:
  LUI t3, 1
  ADDI t3, t3, -504
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -304
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -512
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -312
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -512
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -320
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -520
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -328
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -528
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -336
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -536
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -344
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -544
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, -352
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb309
bb313:
  ADD t4, s9, zero
  LUI t5, 1
  ADDI t5, t5, -480
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD s11, s8, zero
  ADD s5, s7, zero
  ADD t4, s6, zero
  LUI t6, 1
  ADDI t6, t6, -440
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDI t4, t4, -440
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s10, t4, 16
  XOR s3, s10, zero
  SLTU s10, zero, s3
  BNE s10, zero, bb314
  JAL zero, bb315
bb314:
  ADDI s3, zero, 2
  REMW s10, s11, s3
  XOR s3, s10, zero
  SLTU s10, zero, s3
  BNE s10, zero, bb316
  JAL zero, bb318
bb315:
  ADD s0, zero, zero
  LUI t4, 1
  ADDI t4, t4, -536
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s1, t4, zero
  LUI t4, 1
  ADDI t4, t4, -520
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  LUI t4, 1
  ADDI t4, t4, -512
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  ADD s4, zero, zero
  JAL zero, bb323
bb316:
  ADDI s3, zero, 2
  REMW s10, s5, s3
  XOR s3, s10, zero
  SLTIU s10, s3, 1
  BNE s10, zero, bb319
  JAL zero, bb830
bb317:
  ADD s2, s10, zero
  ADDI s1, zero, 2
  DIVW s0, s11, s1
  ADDI s1, zero, 2
  DIVW s4, s5, s1
  LUI t4, 1
  ADDI t4, t4, -440
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s1, t4, 1
  ADD s6, s1, zero
  ADD s7, s4, zero
  ADD s8, s0, zero
  ADD s9, s2, zero
  JAL zero, bb313
bb318:
  ADDI s0, zero, 2
  REMW s1, s5, s0
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb321
  JAL zero, bb831
bb319:
  ADDI s3, zero, 4
  LUI t4, 1
  ADDI t4, t4, -440
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s10, t4, s3
  LA s3, SHIFT_TABLE
  ADD s2, s3, s10
  LW s3, 0(s2)
  ADDI s2, zero, 1
  MULW s10, s3, s2
  LUI t4, 1
  ADDI t4, t4, -480
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s2, t4, s10
  ADD s3, s2, zero
  JAL zero, bb320
bb320:
  ADD s2, s3, zero
  ADD s10, s2, zero
  JAL zero, bb317
bb321:
  ADDI s0, zero, 4
  LUI t4, 1
  ADDI t4, t4, -440
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s1, t4, s0
  LA s0, SHIFT_TABLE
  ADD s2, s0, s1
  LW s0, 0(s2)
  ADDI s1, zero, 1
  MULW s2, s0, s1
  LUI t4, 1
  ADDI t4, t4, -480
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s0, t4, s2
  ADD s1, s0, zero
  JAL zero, bb322
bb322:
  ADD s0, s1, zero
  ADD s10, s0, zero
  JAL zero, bb317
bb323:
  ADD t4, s4, zero
  LUI t5, 1
  ADDI t5, t5, -424
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s3, zero
  LUI t6, 1
  ADDI t6, t6, -400
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s2, zero
  LUI t5, 1
  ADDI t5, t5, -408
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s1, zero
  LUI t6, 1
  ADDI t6, t6, -432
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, s0, zero
  LUI t5, 1
  ADDI t5, t5, -416
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDI t4, t4, -416
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s10, t4, 16
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb324
  JAL zero, bb325
bb324:
  ADDI s10, zero, 2
  LUI t4, 1
  ADDI t4, t4, -400
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb326
  JAL zero, bb327
bb325:
  JAL zero, bb332
bb326:
  ADDI s10, zero, 2
  LUI t4, 1
  ADDI t4, t4, -408
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  ADD s10, s11, zero
  JAL zero, bb328
bb327:
  ADD s10, zero, zero
  JAL zero, bb328
bb328:
  ADD s11, s10, zero
  BNE s11, zero, bb329
  JAL zero, bb832
bb329:
  ADDI s8, zero, 4
  LUI t4, 1
  ADDI t4, t4, -416
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s5, t4, s8
  LA s8, SHIFT_TABLE
  ADD s9, s8, s5
  LW s5, 0(s9)
  ADDI s8, zero, 1
  MULW s9, s5, s8
  LUI t4, 1
  ADDI t4, t4, -424
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s5, t4, s9
  ADD s8, s5, zero
  JAL zero, bb330
bb330:
  ADD s5, s8, zero
  ADDI s9, zero, 2
  LUI t4, 1
  ADDI t4, t4, -400
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s7, t4, s9
  ADDI s9, zero, 2
  LUI t4, 1
  ADDI t4, t4, -408
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s6, t4, s9
  LUI t4, 1
  ADDI t4, t4, -416
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s9, t4, 1
  ADD s0, s9, zero
  ADD s1, s11, zero
  ADD s2, s6, zero
  ADD s3, s7, zero
  ADD s4, s5, zero
  JAL zero, bb323
bb331:
  ADD s3, s2, zero
  ADD s2, s1, zero
  ADD s1, s0, zero
  ADD t4, s1, zero
  LUI t3, 1
  ADDI t3, t3, -448
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -480
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, -456
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s3, zero
  LUI t3, 1
  ADDI t3, t3, -464
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -480
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -472
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -432
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, -488
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, s2, zero
  LUI t6, 1
  ADDI t6, t6, -496
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb310
bb332:
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 4
  LW s0, 0(s1)
  LUI t4, 1
  ADDI t4, t4, -424
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s1, t4, s0
  ADD s0, zero, zero
  LUI t4, 1
  ADDI t4, t4, -544
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  LUI s3, 16
  ADDI s3, s3, -1
  ADD s4, zero, s3
  ADD s3, s1, zero
  ADD s1, zero, zero
  JAL zero, bb333
bb333:
  ADD t4, s1, zero
  LUI t5, 1
  ADDI t5, t5, -392
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s3, zero
  LUI t6, 1
  ADDI t6, t6, -360
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s4, zero
  LUI t5, 1
  ADDI t5, t5, -368
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s2, zero
  LUI t6, 1
  ADDI t6, t6, -384
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, s0, zero
  LUI t5, 1
  ADDI t5, t5, -376
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDI t4, t4, -376
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s10, t4, 16
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb334
  JAL zero, bb335
bb334:
  ADDI s10, zero, 2
  LUI t4, 1
  ADDI t4, t4, -360
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb336
  JAL zero, bb337
bb335:
  LUI t4, 1
  ADDI t4, t4, -376
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  LUI t4, 1
  ADDI t4, t4, -384
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s1, t4, zero
  LUI t4, 1
  ADDI t4, t4, -392
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  JAL zero, bb331
bb336:
  ADDI s10, zero, 2
  LUI t4, 1
  ADDI t4, t4, -368
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  ADD s10, s11, zero
  JAL zero, bb338
bb337:
  ADD s10, zero, zero
  JAL zero, bb338
bb338:
  ADD s11, s10, zero
  BNE s11, zero, bb339
  JAL zero, bb833
bb339:
  ADDI s5, zero, 4
  LUI t4, 1
  ADDI t4, t4, -376
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s8, t4, s5
  LA s5, SHIFT_TABLE
  ADD s9, s5, s8
  LW s5, 0(s9)
  ADDI s8, zero, 1
  MULW s9, s5, s8
  LUI t4, 1
  ADDI t4, t4, -392
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s5, t4, s9
  ADD s8, s5, zero
  JAL zero, bb340
bb340:
  ADD s5, s8, zero
  ADDI s9, zero, 2
  LUI t4, 1
  ADDI t4, t4, -360
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s7, t4, s9
  ADDI s9, zero, 2
  LUI t4, 1
  ADDI t4, t4, -368
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s6, t4, s9
  LUI t4, 1
  ADDI t4, t4, -376
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s9, t4, 1
  ADD s0, s9, zero
  ADD s2, s11, zero
  ADD s4, s6, zero
  ADD s3, s7, zero
  ADD s1, s5, zero
  JAL zero, bb333
bb341:
  LUI t3, 1
  ADDI t3, t3, -200
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -296
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -192
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -288
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -176
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -280
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -168
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -272
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -160
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -264
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -152
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, -256
  ADD t6, t6, sp
  SB t4, 0(t6)
  LUI t4, 1
  ADDI t4, t4, -296
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s6, t4, zero
  SLTU s11, zero, s6
  BNE s11, zero, bb342
  JAL zero, bb343
bb342:
  ADD s6, zero, zero
  LUI t4, 1
  ADDI t4, t4, -296
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  LUI t4, 1
  ADDI t4, t4, -272
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s10, t4, zero
  ADD s9, zero, zero
  JAL zero, bb344
bb343:
  ADDI s0, zero, 1
  SLTI s1, s0, 15
  XORI s0, s1, 1
  BNE s0, zero, bb372
  JAL zero, bb374
bb344:
  ADD t4, s9, zero
  LUI t5, 1
  ADDI t5, t5, -184
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD s7, s10, zero
  ADD s0, s11, zero
  ADD t4, s6, zero
  LUI t6, 1
  ADDI t6, t6, -144
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDI t4, t4, -144
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s8, t4, 16
  XOR s2, s8, zero
  SLTU s8, zero, s2
  BNE s8, zero, bb345
  JAL zero, bb346
bb345:
  ADDI s2, zero, 2
  REMW s8, s7, s2
  XOR s2, s8, zero
  SLTU s8, zero, s2
  BNE s8, zero, bb347
  JAL zero, bb349
bb346:
  ADD s0, zero, zero
  LUI t4, 1
  ADDI t4, t4, -288
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s1, t4, zero
  LUI t4, 1
  ADDI t4, t4, -296
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  LUI t4, 1
  ADDI t4, t4, -272
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  ADD s4, zero, zero
  JAL zero, bb354
bb347:
  ADDI s2, zero, 2
  REMW s8, s0, s2
  XOR s2, s8, zero
  SLTIU s8, s2, 1
  BNE s8, zero, bb350
  JAL zero, bb834
bb348:
  ADD s2, s8, zero
  ADDI s3, zero, 2
  DIVW s4, s7, s3
  ADDI s3, zero, 2
  DIVW s1, s0, s3
  LUI t4, 1
  ADDI t4, t4, -144
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s3, t4, 1
  ADD s6, s3, zero
  ADD s11, s1, zero
  ADD s10, s4, zero
  ADD s9, s2, zero
  JAL zero, bb344
bb349:
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb352
  JAL zero, bb835
bb350:
  ADDI s2, zero, 4
  LUI t4, 1
  ADDI t4, t4, -144
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s8, t4, s2
  LA s2, SHIFT_TABLE
  ADD s5, s2, s8
  LW s2, 0(s5)
  ADDI s5, zero, 1
  MULW s8, s2, s5
  LUI t4, 1
  ADDI t4, t4, -184
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s2, t4, s8
  ADD s5, s2, zero
  JAL zero, bb351
bb351:
  ADD s2, s5, zero
  ADD s8, s2, zero
  JAL zero, bb348
bb352:
  ADDI s1, zero, 4
  LUI t4, 1
  ADDI t4, t4, -144
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s2, t4, s1
  LA s1, SHIFT_TABLE
  ADD s3, s1, s2
  LW s1, 0(s3)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LUI t4, 1
  ADDI t4, t4, -184
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s1, t4, s3
  ADD s2, s1, zero
  JAL zero, bb353
bb353:
  ADD s1, s2, zero
  ADD s8, s1, zero
  JAL zero, bb348
bb354:
  ADD t4, s4, zero
  LUI t5, 1
  ADDI t5, t5, -128
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s3, zero
  LUI t6, 1
  ADDI t6, t6, -104
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s2, zero
  LUI t5, 1
  ADDI t5, t5, -112
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s1, zero
  LUI t6, 1
  ADDI t6, t6, -136
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, s0, zero
  LUI t5, 1
  ADDI t5, t5, -120
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDI t4, t4, -120
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s10, t4, 16
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb355
  JAL zero, bb356
bb355:
  ADDI s10, zero, 2
  LUI t4, 1
  ADDI t4, t4, -104
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb357
  JAL zero, bb358
bb356:
  JAL zero, bb363
bb357:
  ADDI s10, zero, 2
  LUI t4, 1
  ADDI t4, t4, -112
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  ADD s10, s11, zero
  JAL zero, bb359
bb358:
  ADD s10, zero, zero
  JAL zero, bb359
bb359:
  ADD s11, s10, zero
  BNE s11, zero, bb360
  JAL zero, bb836
bb360:
  ADDI s8, zero, 4
  LUI t4, 1
  ADDI t4, t4, -120
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s5, t4, s8
  LA s8, SHIFT_TABLE
  ADD s9, s8, s5
  LW s5, 0(s9)
  ADDI s8, zero, 1
  MULW s9, s5, s8
  LUI t4, 1
  ADDI t4, t4, -128
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s5, t4, s9
  ADD s8, s5, zero
  JAL zero, bb361
bb361:
  ADD s5, s8, zero
  ADDI s9, zero, 2
  LUI t4, 1
  ADDI t4, t4, -104
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s7, t4, s9
  ADDI s9, zero, 2
  LUI t4, 1
  ADDI t4, t4, -112
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s6, t4, s9
  LUI t4, 1
  ADDI t4, t4, -120
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s9, t4, 1
  ADD s0, s9, zero
  ADD s1, s11, zero
  ADD s2, s6, zero
  ADD s3, s7, zero
  ADD s4, s5, zero
  JAL zero, bb354
bb362:
  ADD s3, s2, zero
  ADD s2, s1, zero
  ADD s1, s0, zero
  ADD t4, s1, zero
  LUI t6, 1
  ADDI t6, t6, -152
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, s2, zero
  LUI t3, 1
  ADDI t3, t3, -160
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -184
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -168
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -184
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -176
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -136
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, -192
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, s3, zero
  LUI t6, 1
  ADDI t6, t6, -200
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb341
bb363:
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 4
  LW s0, 0(s1)
  LUI t4, 1
  ADDI t4, t4, -128
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s1, t4, s0
  LUI t4, 1
  ADDI t4, t4, -256
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s0, t4, zero
  ADD s2, zero, zero
  LUI s3, 16
  ADDI s3, s3, -1
  ADD s4, zero, s3
  ADD s3, s1, zero
  ADD s1, zero, zero
  JAL zero, bb364
bb364:
  ADD t4, s1, zero
  LUI t5, 1
  ADDI t5, t5, -96
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s3, zero
  LUI t6, 1
  ADDI t6, t6, -64
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s4, zero
  LUI t5, 1
  ADDI t5, t5, -72
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s2, zero
  LUI t6, 1
  ADDI t6, t6, -88
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s0, zero
  LUI t5, 1
  ADDI t5, t5, -80
  ADD t5, t5, sp
  SB t4, 0(t5)
  LUI t4, 1
  ADDI t4, t4, -88
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s10, t4, 16
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb365
  JAL zero, bb366
bb365:
  ADDI s10, zero, 2
  LUI t4, 1
  ADDI t4, t4, -64
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb367
  JAL zero, bb368
bb366:
  LUI t4, 1
  ADDI t4, t4, -80
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s0, t4, zero
  LUI t4, 1
  ADDI t4, t4, -88
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  LUI t4, 1
  ADDI t4, t4, -96
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  JAL zero, bb362
bb367:
  ADDI s10, zero, 2
  LUI t4, 1
  ADDI t4, t4, -72
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  ADD s10, s11, zero
  JAL zero, bb369
bb368:
  ADD s10, zero, zero
  JAL zero, bb369
bb369:
  ADD s11, s10, zero
  BNE s11, zero, bb370
  JAL zero, bb837
bb370:
  ADDI s5, zero, 4
  LUI t4, 1
  ADDI t4, t4, -88
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s8, t4, s5
  LA s5, SHIFT_TABLE
  ADD s9, s5, s8
  LW s5, 0(s9)
  ADDI s8, zero, 1
  MULW s9, s5, s8
  LUI t4, 1
  ADDI t4, t4, -96
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s5, t4, s9
  ADD s8, s5, zero
  JAL zero, bb371
bb371:
  ADD s5, s8, zero
  ADDI s9, zero, 2
  LUI t4, 1
  ADDI t4, t4, -64
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s7, t4, s9
  ADDI s9, zero, 2
  LUI t4, 1
  ADDI t4, t4, -72
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s6, t4, s9
  LUI t4, 1
  ADDI t4, t4, -88
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s9, t4, 1
  ADD s0, s11, zero
  ADD s2, s9, zero
  ADD s4, s6, zero
  ADD s3, s7, zero
  ADD s1, s5, zero
  JAL zero, bb364
bb372:
  LUI t4, 1
  ADDI t4, t4, -720
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s0, t4, zero
  BNE s0, zero, bb375
  JAL zero, bb377
bb373:
  ADD s0, s2, zero
  LUI t3, 1
  ADDI t3, t3, -272
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -576
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -256
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -584
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -264
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -592
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -616
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, -600
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, s0, zero
  LUI t3, 1
  ADDI t3, t3, -624
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -248
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -632
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -240
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -640
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -232
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -648
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -224
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -656
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -216
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -664
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -272
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -672
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -280
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -680
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -288
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -824
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -296
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -816
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -208
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, -808
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb297
bb374:
  JAL zero, bb378
bb375:
  LUI s0, 16
  ADDI s0, s0, -1
  ADD s1, zero, s0
  JAL zero, bb376
bb376:
  ADD s0, s1, zero
  ADD s2, s0, zero
  JAL zero, bb373
bb377:
  ADD s1, zero, zero
  JAL zero, bb376
bb378:
  LUI s0, 8
  ADDI s0, s0, -1
  LUI t4, 1
  ADDI t4, t4, -720
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s1, s0, t4
  BNE s1, zero, bb380
  JAL zero, bb382
bb379:
  ADD s1, s3, zero
  ADD s2, s1, zero
  JAL zero, bb373
bb380:
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 4
  LW s0, 0(s1)
  LUI t4, 1
  ADDI t4, t4, -720
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s1, t4, s0
  LUI s0, 16
  ADDI s0, s0, 0
  ADDW s3, s1, s0
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 60
  LW s0, 0(s1)
  SUBW s1, s3, s0
  ADD s0, s1, zero
  JAL zero, bb381
bb381:
  ADD s1, s0, zero
  ADD s3, s1, zero
  JAL zero, bb379
bb382:
  LA s1, SHIFT_TABLE
  ADDI s2, s1, 4
  LW s1, 0(s2)
  LUI t4, 1
  ADDI t4, t4, -720
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s2, t4, s1
  ADD s0, s2, zero
  JAL zero, bb381
bb383:
  LUI t4, 1
  ADDI t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s0, t4, zero
  BNE s0, zero, bb386
  JAL zero, bb388
bb384:
  ADD s0, s3, zero
  ADD s4, s2, zero
  LUI t3, 1
  ADDI t3, t3, -696
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, -1872
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, s0, zero
  LUI t3, 1
  ADDI t3, t3, -1880
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -704
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1888
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -928
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1896
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -712
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1920
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -936
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1928
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1912
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1936
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -944
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1944
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -920
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1952
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -912
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1960
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -904
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1968
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -896
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -2024
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -888
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  SB t4, 1712(sp)
  LUI t3, 1
  ADDI t3, t3, -880
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  SW t4, 1720(sp)
  LUI t3, 1
  ADDI t3, t3, -872
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  SW t4, 1728(sp)
  LUI t3, 1
  ADDI t3, t3, -864
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  SW t4, 1736(sp)
  LUI t3, 1
  ADDI t3, t3, -856
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  SB t4, 1744(sp)
  LUI t3, 1
  ADDI t3, t3, -728
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  SW t4, 1752(sp)
  LUI t3, 1
  ADDI t3, t3, -736
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  SW t4, 1760(sp)
  LUI t3, 1
  ADDI t3, t3, -744
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  SW t4, 1768(sp)
  LUI t3, 1
  ADDI t3, t3, -752
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  SW t4, 1776(sp)
  LUI t3, 1
  ADDI t3, t3, -760
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  SB t4, 1784(sp)
  LUI t3, 1
  ADDI t3, t3, -848
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  SW t4, 1792(sp)
  LUI t3, 1
  ADDI t3, t3, -768
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  SW t4, 1800(sp)
  LUI t3, 1
  ADDI t3, t3, -776
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  SW t4, 1808(sp)
  LUI t3, 1
  ADDI t3, t3, -784
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  SB t4, 1816(sp)
  LUI t3, 1
  ADDI t3, t3, -792
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  SW t4, 1824(sp)
  LUI t3, 1
  ADDI t3, t3, -840
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  SB t4, 1832(sp)
  LUI t3, 1
  ADDI t3, t3, -832
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  SW t4, 1840(sp)
  LUI t3, 1
  ADDI t3, t3, -800
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  SB t4, 1848(sp)
  ADDI t4, zero, 1
  SW t4, 1856(sp)
  ADD t4, s4, zero
  SW t4, 1864(sp)
  JAL zero, bb198
bb385:
  JAL zero, bb389
bb386:
  LUI s0, 16
  ADDI s0, s0, -1
  ADD s1, zero, s0
  JAL zero, bb387
bb387:
  ADD s0, s1, zero
  LUI t4, 1
  ADDI t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  ADD s3, s0, zero
  JAL zero, bb384
bb388:
  ADD s1, zero, zero
  JAL zero, bb387
bb389:
  LUI s0, 8
  ADDI s0, s0, -1
  LUI t4, 1
  ADDI t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s1, s0, t4
  BNE s1, zero, bb391
  JAL zero, bb393
bb390:
  ADD s4, s5, zero
  ADD s5, s6, zero
  ADD s2, s5, zero
  ADD s3, s4, zero
  JAL zero, bb384
bb391:
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 4
  LW s0, 0(s1)
  LUI t4, 1
  ADDI t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s1, t4, s0
  LUI s0, 16
  ADDI s0, s0, 0
  ADDW s4, s1, s0
  LA s0, SHIFT_TABLE
  ADDI s5, s0, 60
  LW s0, 0(s5)
  SUBW s5, s4, s0
  ADD s0, s1, zero
  ADD s1, s5, zero
  JAL zero, bb392
bb392:
  ADD s4, s1, zero
  ADD s5, s0, zero
  ADD s6, s5, zero
  ADD s5, s4, zero
  JAL zero, bb390
bb393:
  LA s2, SHIFT_TABLE
  ADDI s3, s2, 4
  LW s2, 0(s3)
  LUI t4, 1
  ADDI t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s3, t4, s2
  LUI t4, 1
  ADDI t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  ADD s1, s3, zero
  JAL zero, bb392
bb394:
  LUI t3, 1
  ADDI t3, t3, 104
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 112
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 96
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 224
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 88
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 232
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 80
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 240
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 72
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 248
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 64
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 256
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 56
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 264
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 48
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 272
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 40
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 280
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 32
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 288
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 24
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 296
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 16
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 304
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 8
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 312
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 0
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 216
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -8
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 320
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -16
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 328
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -24
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 336
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -32
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 344
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -40
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 352
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -48
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 368
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -56
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 376
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 120
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, 384
  ADD t5, t5, sp
  SB t4, 0(t5)
  LUI t4, 1
  ADDI t4, t4, 128
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  LUI t4, 1
  ADDI t4, t4, 136
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  LUI t4, 1
  ADDI t4, t4, 144
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  LUI t4, 1
  ADDI t4, t4, 152
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s0, t4, zero
  LUI t4, 1
  ADDI t4, t4, 160
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  LUI t4, 1
  ADDI t4, t4, 168
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s10, t4, zero
  LUI t4, 1
  ADDI t4, t4, 176
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s9, t4, zero
  LUI t4, 1
  ADDI t4, t4, 184
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  LUI t4, 1
  ADDI t4, t4, 192
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s7, t4, zero
  LUI t3, 1
  ADDI t3, t3, 200
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, 360
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDI t4, t4, 208
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s6, t4, zero
  LUI t4, 1
  ADDI t4, t4, 224
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s5, t4, 16
  XOR s4, s5, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb395
  JAL zero, bb396
bb395:
  ADD t4, s6, zero
  LUI t3, 1
  ADDI t3, t3, 960
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 360
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, 952
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 1
  LUI t6, 1
  ADDI t6, t6, 944
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s7, zero
  LUI t5, 1
  ADDI t5, t5, 392
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADDI t4, zero, 2
  LUI t3, 1
  ADDI t3, t3, 936
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 224
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, 400
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s8, zero
  LUI t5, 1
  ADDI t5, t5, 408
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s9, zero
  LUI t6, 1
  ADDI t6, t6, 912
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s10, zero
  LUI t5, 1
  ADDI t5, t5, 904
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s11, zero
  LUI t6, 1
  ADDI t6, t6, 896
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s0, zero
  LUI t5, 1
  ADDI t5, t5, 888
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, s1, zero
  LUI t6, 1
  ADDI t6, t6, 880
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s2, zero
  LUI t5, 1
  ADDI t5, t5, 872
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, s3, zero
  LUI t3, 1
  ADDI t3, t3, 864
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 384
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 856
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 376
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 416
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 368
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 424
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 352
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 432
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 344
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 440
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 336
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 448
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 328
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 456
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 320
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 464
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 216
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 472
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 312
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 480
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 304
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 488
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 296
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 496
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 288
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 504
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 280
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 512
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 272
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 520
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 264
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 528
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 256
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 536
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 248
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 544
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 240
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 552
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 232
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 560
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 112
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, 568
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb397
bb396:
  ADD t4, zero, zero
  LUI t5, 2
  ADDI t5, t5, -1064
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 2
  ADDI t6, t6, -1072
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 2
  ADDI t5, t5, -1080
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, zero, zero
  LUI t3, 2
  ADDI t3, t3, -1088
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 360
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, -1096
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 2
  ADDI t5, t5, -1104
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 2
  ADDI t6, t6, -1112
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 2
  ADDI t5, t5, -1120
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 2
  ADDI t6, t6, -1128
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 2
  ADDI t5, t5, -1136
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 2
  ADDI t6, t6, -1144
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 2
  ADDI t5, t5, -1152
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 2
  ADDI t6, t6, -1160
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 2
  ADDI t5, t5, -1168
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 2
  ADDI t6, t6, -1176
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 2
  ADDI t5, t5, -1184
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 2
  ADDI t6, t6, -1192
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 2
  ADDI t5, t5, -1200
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 2
  ADDI t6, t6, -1208
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 2
  ADDI t5, t5, -1216
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 2
  ADDI t6, t6, -1224
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 2
  ADDI t5, t5, -1232
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 2
  ADDI t6, t6, -1320
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 2
  ADDI t5, t5, -1312
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 2
  ADDI t6, t6, -1304
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 2
  ADDI t5, t5, -1296
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 2
  ADDI t6, t6, -1288
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 2
  ADDI t5, t5, -1280
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t3, 2
  ADDI t3, t3, -1272
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 216
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, -1264
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 2
  ADDI t5, t5, -1256
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, zero, zero
  LUI t3, 2
  ADDI t3, t3, -1248
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 112
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, -1240
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb593
bb397:
  LUI t3, 1
  ADDI t3, t3, 568
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 576
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 560
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 584
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 552
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 592
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 544
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 600
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 536
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 608
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 528
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 616
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 520
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 624
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 512
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 632
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 504
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 640
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 496
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 648
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 488
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 656
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 480
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 664
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 472
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 672
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 464
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 680
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 456
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 688
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 448
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 696
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 440
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 704
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 432
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 712
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 424
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 720
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 416
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 728
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 856
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 736
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 864
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 744
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 872
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 752
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 880
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 760
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 888
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 768
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 896
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 776
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 904
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 784
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 912
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 792
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 408
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 800
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 400
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 808
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 936
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 816
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 392
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 824
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 944
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 832
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 952
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 840
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 960
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, 848
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDI t4, t4, 808
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s3, zero, t4
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb398
  JAL zero, bb399
bb398:
  ADD s2, zero, zero
  LUI t4, 1
  ADDI t4, t4, 824
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  ADDI s1, zero, 1
  LUI t4, 1
  ADDI t4, t4, 808
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  ADD s11, zero, zero
  JAL zero, bb400
bb399:
  LUI t4, 1
  ADDI t4, t4, 832
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a0, t4, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LUI t4, 1
  ADDI t4, t4, 224
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  LUI t3, 1
  ADDI t3, t3, 848
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 208
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 840
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 200
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 824
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 192
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 800
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 184
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 792
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 176
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 784
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 168
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 776
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 160
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 768
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 152
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 760
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 144
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 752
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 136
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 744
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 128
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 736
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 120
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 728
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -56
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 720
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -48
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 712
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -40
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 704
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -32
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 696
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -24
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 688
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -16
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 680
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -8
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 672
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 0
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 664
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 8
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 656
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 16
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 648
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 24
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 640
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 32
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 632
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 40
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 624
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 48
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 616
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 56
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 608
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 64
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 600
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 72
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 592
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 80
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 584
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, 88
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, s0, zero
  LUI t3, 1
  ADDI t3, t3, 96
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 576
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, 104
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb394
bb400:
  ADD t4, s11, zero
  LUI t6, 1
  ADDI t6, t6, 968
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s0, zero
  LUI t5, 1
  ADDI t5, t5, 984
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s1, zero
  LUI t6, 1
  ADDI t6, t6, 976
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s3, zero
  LUI t5, 1
  ADDI t5, t5, 920
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, s2, zero
  LUI t6, 1
  ADDI t6, t6, 928
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDI t4, t4, 928
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s7, t4, 16
  XOR s6, s7, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb401
  JAL zero, bb402
bb401:
  ADDI s6, zero, 2
  LUI t4, 1
  ADDI t4, t4, 984
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s7, t4, s6
  XOR s6, s7, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb403
  JAL zero, bb404
bb402:
  LUI t4, 1
  ADDI t4, t4, 968
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s0, t4, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb408
  JAL zero, bb839
bb403:
  ADDI s6, zero, 2
  LUI t4, 1
  ADDI t4, t4, 976
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s7, t4, s6
  XOR s6, s7, zero
  SLTU s7, zero, s6
  ADD s6, s7, zero
  JAL zero, bb405
bb404:
  ADD s6, zero, zero
  JAL zero, bb405
bb405:
  ADD s7, s6, zero
  BNE s7, zero, bb406
  JAL zero, bb838
bb406:
  ADDI s5, zero, 4
  LUI t4, 1
  ADDI t4, t4, 928
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s4, t4, s5
  LA s5, SHIFT_TABLE
  ADD s10, s5, s4
  LW s4, 0(s10)
  ADDI s5, zero, 1
  MULW s10, s4, s5
  LUI t4, 1
  ADDI t4, t4, 968
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s4, t4, s10
  ADD s5, s4, zero
  JAL zero, bb407
bb407:
  ADD s4, s5, zero
  ADDI s10, zero, 2
  LUI t4, 1
  ADDI t4, t4, 984
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s8, t4, s10
  ADDI s10, zero, 2
  LUI t4, 1
  ADDI t4, t4, 976
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s9, t4, s10
  LUI t4, 1
  ADDI t4, t4, 928
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s10, t4, 1
  ADD s2, s10, zero
  ADD s3, s7, zero
  ADD s1, s9, zero
  ADD s0, s8, zero
  ADD s11, s4, zero
  JAL zero, bb400
bb408:
  LUI t3, 1
  ADDI t3, t3, 928
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1240
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 832
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1232
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 792
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1224
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 784
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, 1216
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t3, 1
  ADDI t3, t3, 1200
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 760
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1184
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 752
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1176
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 816
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1168
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 720
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1160
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 704
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1152
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 688
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1144
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 616
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1136
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 608
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 992
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 600
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1000
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 584
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, 1008
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb410
bb409:
  LUI t3, 1
  ADDI t3, t3, 1784
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 2000
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1776
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1992
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1768
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1984
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1760
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1976
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1792
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1968
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1800
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1960
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1808
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1952
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1816
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1944
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1824
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1936
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1832
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1928
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1840
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1920
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1848
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1912
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1856
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1888
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1864
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1896
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1872
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, 1904
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDI t4, t4, 1880
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  ADD t4, zero, zero
  LUI t6, 2
  ADDI t6, t6, -1840
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s0, zero
  LUI t3, 2
  ADDI t3, t3, -1848
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 768
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1856
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 744
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1864
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 736
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1880
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 816
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1896
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 696
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1904
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 680
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1912
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 664
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1920
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 656
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1928
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 648
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1936
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 640
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1944
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 632
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 2008
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 816
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 2016
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 592
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, 2024
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb496
bb410:
  LUI t3, 1
  ADDI t3, t3, 1008
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1016
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1000
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1024
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 992
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1032
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1136
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1040
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1144
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1048
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1152
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1056
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1160
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1064
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1168
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1072
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1176
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1080
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1184
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1088
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1200
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1096
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1216
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1104
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1224
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1112
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1232
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1120
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1240
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, 1128
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDI t4, t4, 1072
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s11, t4, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb411
  JAL zero, bb412
bb411:
  ADD s10, zero, zero
  ADDI s11, zero, 1
  LUI t4, 1
  ADDI t4, t4, 1016
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s9, t4, zero
  LUI t4, 1
  ADDI t4, t4, 1072
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  ADD s7, zero, zero
  JAL zero, bb413
bb412:
  LUI t3, 1
  ADDI t3, t3, 1128
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1880
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1096
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1872
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1120
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1864
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1112
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1856
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1104
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1848
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1096
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1840
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1088
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1832
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1080
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1824
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1072
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1816
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1064
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1808
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1056
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1800
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1048
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1792
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1040
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1760
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1032
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1768
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1024
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1776
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1016
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, 1784
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb409
bb413:
  ADD t4, s7, zero
  LUI t6, 1
  ADDI t6, t6, 1248
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s8, zero
  LUI t5, 1
  ADDI t5, t5, 1264
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s9, zero
  LUI t6, 1
  ADDI t6, t6, 1192
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, s11, zero
  LUI t5, 1
  ADDI t5, t5, 1256
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s10, zero
  LUI t6, 1
  ADDI t6, t6, 1208
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDI t4, t4, 1208
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s3, t4, 16
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb414
  JAL zero, bb415
bb414:
  ADDI s2, zero, 2
  LUI t4, 1
  ADDI t4, t4, 1264
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s3, t4, s2
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb416
  JAL zero, bb417
bb415:
  LUI t4, 1
  ADDI t4, t4, 1248
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s0, t4, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb421
  JAL zero, bb841
bb416:
  ADDI s2, zero, 2
  LUI t4, 1
  ADDI t4, t4, 1256
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s3, t4, s2
  XOR s2, s3, zero
  SLTU s3, zero, s2
  ADD s2, s3, zero
  JAL zero, bb418
bb417:
  ADD s2, zero, zero
  JAL zero, bb418
bb418:
  ADD s3, s2, zero
  BNE s3, zero, bb419
  JAL zero, bb840
bb419:
  ADDI s1, zero, 4
  LUI t4, 1
  ADDI t4, t4, 1208
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s0, t4, s1
  LA s1, SHIFT_TABLE
  ADD s6, s1, s0
  LW s0, 0(s6)
  ADDI s1, zero, 1
  MULW s6, s0, s1
  LUI t4, 1
  ADDI t4, t4, 1248
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s0, t4, s6
  ADD s1, s0, zero
  JAL zero, bb420
bb420:
  ADD s0, s1, zero
  ADDI s6, zero, 2
  LUI t4, 1
  ADDI t4, t4, 1264
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s4, t4, s6
  ADDI s6, zero, 2
  LUI t4, 1
  ADDI t4, t4, 1256
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s5, t4, s6
  LUI t4, 1
  ADDI t4, t4, 1208
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s6, t4, 1
  ADD s10, s6, zero
  ADD s11, s5, zero
  ADD s9, s3, zero
  ADD s8, s4, zero
  ADD s7, s0, zero
  JAL zero, bb413
bb421:
  LUI t3, 1
  ADDI t3, t3, 1208
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1368
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1096
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1360
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1120
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1352
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1064
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1344
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1032
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1336
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1024
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, 1328
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb423
bb422:
  LUI t3, 1
  ADDI t3, t3, 1464
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1608
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1472
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1600
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1480
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1592
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1488
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1584
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1496
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1576
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1504
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, 1568
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDI t4, t4, 1512
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s5, t4, zero
  ADD t4, s5, zero
  LUI t3, 1
  ADDI t3, t3, 1664
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1120
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1656
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1080
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1648
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1120
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1640
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1048
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1632
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1040
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, 1624
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb454
bb423:
  LUI t3, 1
  ADDI t3, t3, 1328
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1272
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1336
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1280
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1344
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1288
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1352
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1296
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1360
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1304
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1368
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, 1312
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDI t4, t4, 1296
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s6, t4, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb424
  JAL zero, bb425
bb424:
  ADD s6, zero, zero
  LUI t4, 1
  ADDI t4, t4, 1296
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  LUI t4, 1
  ADDI t4, t4, 1304
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  ADD s9, zero, zero
  JAL zero, bb426
bb425:
  LUI t3, 1
  ADDI t3, t3, 1312
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1512
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1304
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1504
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1304
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1496
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1296
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1488
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1288
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1480
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1280
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1472
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1272
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, 1464
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb422
bb426:
  ADD t4, s9, zero
  LUI t6, 1
  ADDI t6, t6, 1320
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD s11, s8, zero
  ADD s10, s7, zero
  ADD t4, s6, zero
  LUI t5, 1
  ADDI t5, t5, 1376
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDI t4, t4, 1376
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s4, t4, 16
  XOR s3, s4, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb427
  JAL zero, bb428
bb427:
  ADDI s3, zero, 2
  REMW s4, s11, s3
  XOR s3, s4, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb429
  JAL zero, bb431
bb428:
  ADD s0, zero, zero
  LUI t4, 1
  ADDI t4, t4, 1296
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  LUI t4, 1
  ADDI t4, t4, 1280
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  LUI t4, 1
  ADDI t4, t4, 1304
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  ADD s4, zero, zero
  JAL zero, bb436
bb429:
  ADDI s3, zero, 2
  REMW s4, s10, s3
  XOR s3, s4, zero
  SLTIU s4, s3, 1
  BNE s4, zero, bb432
  JAL zero, bb842
bb430:
  ADD s2, s4, zero
  ADDI s1, zero, 2
  DIVW s0, s11, s1
  ADDI s1, zero, 2
  DIVW s5, s10, s1
  LUI t4, 1
  ADDI t4, t4, 1376
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s1, t4, 1
  ADD s6, s1, zero
  ADD s7, s5, zero
  ADD s8, s0, zero
  ADD s9, s2, zero
  JAL zero, bb426
bb431:
  ADDI s0, zero, 2
  REMW s1, s10, s0
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb434
  JAL zero, bb843
bb432:
  ADDI s3, zero, 4
  LUI t4, 1
  ADDI t4, t4, 1376
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s4, t4, s3
  LA s3, SHIFT_TABLE
  ADD s2, s3, s4
  LW s3, 0(s2)
  ADDI s2, zero, 1
  MULW s4, s3, s2
  LUI t4, 1
  ADDI t4, t4, 1320
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s2, t4, s4
  ADD s3, s2, zero
  JAL zero, bb433
bb433:
  ADD s2, s3, zero
  ADD s4, s2, zero
  JAL zero, bb430
bb434:
  ADDI s0, zero, 4
  LUI t4, 1
  ADDI t4, t4, 1376
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s1, t4, s0
  LA s0, SHIFT_TABLE
  ADD s2, s0, s1
  LW s0, 0(s2)
  ADDI s1, zero, 1
  MULW s2, s0, s1
  LUI t4, 1
  ADDI t4, t4, 1320
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s0, t4, s2
  ADD s1, s0, zero
  JAL zero, bb435
bb435:
  ADD s0, s1, zero
  ADD s4, s0, zero
  JAL zero, bb430
bb436:
  ADD t4, s4, zero
  LUI t6, 1
  ADDI t6, t6, 1392
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s3, zero
  LUI t5, 1
  ADDI t5, t5, 1416
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s2, zero
  LUI t6, 1
  ADDI t6, t6, 1384
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, s1, zero
  LUI t5, 1
  ADDI t5, t5, 1408
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s0, zero
  LUI t6, 1
  ADDI t6, t6, 1400
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDI t4, t4, 1400
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s10, t4, 16
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb437
  JAL zero, bb438
bb437:
  ADDI s10, zero, 2
  LUI t4, 1
  ADDI t4, t4, 1416
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb439
  JAL zero, bb440
bb438:
  JAL zero, bb445
bb439:
  ADDI s10, zero, 2
  LUI t4, 1
  ADDI t4, t4, 1408
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  ADD s10, s11, zero
  JAL zero, bb441
bb440:
  ADD s10, zero, zero
  JAL zero, bb441
bb441:
  ADD s11, s10, zero
  BNE s11, zero, bb442
  JAL zero, bb844
bb442:
  ADDI s7, zero, 4
  LUI t4, 1
  ADDI t4, t4, 1400
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s5, t4, s7
  LA s7, SHIFT_TABLE
  ADD s9, s7, s5
  LW s5, 0(s9)
  ADDI s7, zero, 1
  MULW s9, s5, s7
  LUI t4, 1
  ADDI t4, t4, 1392
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s5, t4, s9
  ADD s7, s5, zero
  JAL zero, bb443
bb443:
  ADD s5, s7, zero
  ADDI s9, zero, 2
  LUI t4, 1
  ADDI t4, t4, 1416
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s8, t4, s9
  ADDI s9, zero, 2
  LUI t4, 1
  ADDI t4, t4, 1408
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s6, t4, s9
  LUI t4, 1
  ADDI t4, t4, 1400
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s9, t4, 1
  ADD s0, s9, zero
  ADD s1, s6, zero
  ADD s2, s11, zero
  ADD s3, s8, zero
  ADD s4, s5, zero
  JAL zero, bb436
bb444:
  ADD s3, s2, zero
  ADD s2, s1, zero
  ADD s1, s0, zero
  ADD t4, s1, zero
  LUI t3, 1
  ADDI t3, t3, 1368
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1320
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, 1360
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s3, zero
  LUI t6, 1
  ADDI t6, t6, 1352
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s2, zero
  LUI t3, 1
  ADDI t3, t3, 1344
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1384
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1336
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1320
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, 1328
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb423
bb445:
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 4
  LW s0, 0(s1)
  LUI t4, 1
  ADDI t4, t4, 1392
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s1, t4, s0
  ADD s0, zero, zero
  LUI t4, 1
  ADDI t4, t4, 1288
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  LUI s3, 16
  ADDI s3, s3, -1
  ADD s4, zero, s3
  ADD s3, s1, zero
  ADD s1, zero, zero
  JAL zero, bb446
bb446:
  ADD t4, s1, zero
  LUI t6, 1
  ADDI t6, t6, 1424
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s3, zero
  LUI t5, 1
  ADDI t5, t5, 1456
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s4, zero
  LUI t6, 1
  ADDI t6, t6, 1448
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s2, zero
  LUI t5, 1
  ADDI t5, t5, 1432
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, s0, zero
  LUI t6, 1
  ADDI t6, t6, 1440
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDI t4, t4, 1440
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s10, t4, 16
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb447
  JAL zero, bb448
bb447:
  ADDI s10, zero, 2
  LUI t4, 1
  ADDI t4, t4, 1456
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb449
  JAL zero, bb450
bb448:
  LUI t4, 1
  ADDI t4, t4, 1440
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  LUI t4, 1
  ADDI t4, t4, 1432
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s1, t4, zero
  LUI t4, 1
  ADDI t4, t4, 1424
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  JAL zero, bb444
bb449:
  ADDI s10, zero, 2
  LUI t4, 1
  ADDI t4, t4, 1448
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  ADD s10, s11, zero
  JAL zero, bb451
bb450:
  ADD s10, zero, zero
  JAL zero, bb451
bb451:
  ADD s11, s10, zero
  BNE s11, zero, bb452
  JAL zero, bb845
bb452:
  ADDI s5, zero, 4
  LUI t4, 1
  ADDI t4, t4, 1440
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s8, t4, s5
  LA s5, SHIFT_TABLE
  ADD s9, s5, s8
  LW s5, 0(s9)
  ADDI s8, zero, 1
  MULW s9, s5, s8
  LUI t4, 1
  ADDI t4, t4, 1424
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s5, t4, s9
  ADD s8, s5, zero
  JAL zero, bb453
bb453:
  ADD s5, s8, zero
  ADDI s9, zero, 2
  LUI t4, 1
  ADDI t4, t4, 1456
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s7, t4, s9
  ADDI s9, zero, 2
  LUI t4, 1
  ADDI t4, t4, 1448
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s6, t4, s9
  LUI t4, 1
  ADDI t4, t4, 1440
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s9, t4, 1
  ADD s0, s9, zero
  ADD s2, s11, zero
  ADD s4, s6, zero
  ADD s3, s7, zero
  ADD s1, s5, zero
  JAL zero, bb446
bb454:
  LUI t3, 1
  ADDI t3, t3, 1624
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1520
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1632
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1528
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1640
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1536
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1648
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1544
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1656
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1552
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1664
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, 1560
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDI t4, t4, 1552
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s6, t4, zero
  SLTU s11, zero, s6
  BNE s11, zero, bb455
  JAL zero, bb456
bb455:
  ADD s6, zero, zero
  LUI t4, 1
  ADDI t4, t4, 1552
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  LUI t4, 1
  ADDI t4, t4, 1536
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s10, t4, zero
  ADD s9, zero, zero
  JAL zero, bb457
bb456:
  ADDI s0, zero, 1
  SLTI s1, s0, 15
  XORI s0, s1, 1
  BNE s0, zero, bb485
  JAL zero, bb487
bb457:
  ADD t4, s9, zero
  LUI t6, 1
  ADDI t6, t6, 1616
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD s7, s10, zero
  ADD s8, s11, zero
  ADD t4, s6, zero
  LUI t5, 1
  ADDI t5, t5, 1672
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDI t4, t4, 1672
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s1, t4, 16
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb458
  JAL zero, bb459
bb458:
  ADDI s1, zero, 2
  REMW s2, s7, s1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb460
  JAL zero, bb462
bb459:
  ADD s0, zero, zero
  LUI t4, 1
  ADDI t4, t4, 1528
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s1, t4, zero
  LUI t4, 1
  ADDI t4, t4, 1552
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  LUI t4, 1
  ADDI t4, t4, 1536
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  ADD s4, zero, zero
  JAL zero, bb467
bb460:
  ADDI s1, zero, 2
  REMW s2, s8, s1
  XOR s1, s2, zero
  SLTIU s2, s1, 1
  BNE s2, zero, bb463
  JAL zero, bb846
bb461:
  ADD s1, s3, zero
  ADDI s5, zero, 2
  DIVW s4, s7, s5
  ADDI s5, zero, 2
  DIVW s0, s8, s5
  LUI t4, 1
  ADDI t4, t4, 1672
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s5, t4, 1
  ADD s6, s5, zero
  ADD s11, s0, zero
  ADD s10, s4, zero
  ADD s9, s1, zero
  JAL zero, bb457
bb462:
  ADDI s0, zero, 2
  REMW s1, s8, s0
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb465
  JAL zero, bb847
bb463:
  ADDI s1, zero, 4
  LUI t4, 1
  ADDI t4, t4, 1672
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s2, t4, s1
  LA s1, SHIFT_TABLE
  ADD s3, s1, s2
  LW s1, 0(s3)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LUI t4, 1
  ADDI t4, t4, 1616
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s1, t4, s3
  ADD s2, s1, zero
  JAL zero, bb464
bb464:
  ADD s1, s2, zero
  ADD s3, s1, zero
  JAL zero, bb461
bb465:
  ADDI s0, zero, 4
  LUI t4, 1
  ADDI t4, t4, 1672
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s1, t4, s0
  LA s0, SHIFT_TABLE
  ADD s2, s0, s1
  LW s0, 0(s2)
  ADDI s1, zero, 1
  MULW s2, s0, s1
  LUI t4, 1
  ADDI t4, t4, 1616
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s0, t4, s2
  ADD s1, s0, zero
  JAL zero, bb466
bb466:
  ADD s0, s1, zero
  ADD s3, s0, zero
  JAL zero, bb461
bb467:
  ADD t4, s4, zero
  LUI t6, 1
  ADDI t6, t6, 1688
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s3, zero
  LUI t5, 1
  ADDI t5, t5, 1712
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s2, zero
  LUI t6, 1
  ADDI t6, t6, 1704
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s1, zero
  LUI t5, 1
  ADDI t5, t5, 1680
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, s0, zero
  LUI t6, 1
  ADDI t6, t6, 1696
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDI t4, t4, 1696
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s10, t4, 16
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb468
  JAL zero, bb469
bb468:
  ADDI s10, zero, 2
  LUI t4, 1
  ADDI t4, t4, 1712
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb470
  JAL zero, bb471
bb469:
  JAL zero, bb476
bb470:
  ADDI s10, zero, 2
  LUI t4, 1
  ADDI t4, t4, 1704
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  ADD s10, s11, zero
  JAL zero, bb472
bb471:
  ADD s10, zero, zero
  JAL zero, bb472
bb472:
  ADD s11, s10, zero
  BNE s11, zero, bb473
  JAL zero, bb848
bb473:
  ADDI s8, zero, 4
  LUI t4, 1
  ADDI t4, t4, 1696
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s5, t4, s8
  LA s8, SHIFT_TABLE
  ADD s9, s8, s5
  LW s5, 0(s9)
  ADDI s8, zero, 1
  MULW s9, s5, s8
  LUI t4, 1
  ADDI t4, t4, 1688
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s5, t4, s9
  ADD s8, s5, zero
  JAL zero, bb474
bb474:
  ADD s5, s8, zero
  ADDI s9, zero, 2
  LUI t4, 1
  ADDI t4, t4, 1712
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s7, t4, s9
  ADDI s9, zero, 2
  LUI t4, 1
  ADDI t4, t4, 1704
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s6, t4, s9
  LUI t4, 1
  ADDI t4, t4, 1696
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s9, t4, 1
  ADD s0, s9, zero
  ADD s1, s11, zero
  ADD s2, s6, zero
  ADD s3, s7, zero
  ADD s4, s5, zero
  JAL zero, bb467
bb475:
  ADD s3, s2, zero
  ADD s2, s1, zero
  ADD s1, s0, zero
  ADD t4, s1, zero
  LUI t5, 1
  ADDI t5, t5, 1664
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s3, zero
  LUI t6, 1
  ADDI t6, t6, 1656
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s2, zero
  LUI t3, 1
  ADDI t3, t3, 1648
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1616
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1640
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1680
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1632
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1616
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, 1624
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb454
bb476:
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 4
  LW s0, 0(s1)
  LUI t4, 1
  ADDI t4, t4, 1688
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s1, t4, s0
  ADD s0, zero, zero
  LUI t4, 1
  ADDI t4, t4, 1544
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  LUI s3, 16
  ADDI s3, s3, -1
  ADD s4, zero, s3
  ADD s3, s1, zero
  ADD s1, zero, zero
  JAL zero, bb477
bb477:
  ADD t4, s1, zero
  LUI t6, 1
  ADDI t6, t6, 1720
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s3, zero
  LUI t5, 1
  ADDI t5, t5, 1752
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s4, zero
  LUI t6, 1
  ADDI t6, t6, 1744
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s2, zero
  LUI t5, 1
  ADDI t5, t5, 1728
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, s0, zero
  LUI t6, 1
  ADDI t6, t6, 1736
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDI t4, t4, 1736
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s10, t4, 16
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb478
  JAL zero, bb479
bb478:
  ADDI s10, zero, 2
  LUI t4, 1
  ADDI t4, t4, 1752
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb480
  JAL zero, bb481
bb479:
  LUI t4, 1
  ADDI t4, t4, 1736
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  LUI t4, 1
  ADDI t4, t4, 1728
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s1, t4, zero
  LUI t4, 1
  ADDI t4, t4, 1720
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  JAL zero, bb475
bb480:
  ADDI s10, zero, 2
  LUI t4, 1
  ADDI t4, t4, 1744
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  ADD s10, s11, zero
  JAL zero, bb482
bb481:
  ADD s10, zero, zero
  JAL zero, bb482
bb482:
  ADD s11, s10, zero
  BNE s11, zero, bb483
  JAL zero, bb849
bb483:
  ADDI s5, zero, 4
  LUI t4, 1
  ADDI t4, t4, 1736
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s8, t4, s5
  LA s5, SHIFT_TABLE
  ADD s9, s5, s8
  LW s5, 0(s9)
  ADDI s8, zero, 1
  MULW s9, s5, s8
  LUI t4, 1
  ADDI t4, t4, 1720
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s5, t4, s9
  ADD s8, s5, zero
  JAL zero, bb484
bb484:
  ADD s5, s8, zero
  ADDI s9, zero, 2
  LUI t4, 1
  ADDI t4, t4, 1752
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s7, t4, s9
  ADDI s9, zero, 2
  LUI t4, 1
  ADDI t4, t4, 1744
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s6, t4, s9
  LUI t4, 1
  ADDI t4, t4, 1736
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s9, t4, 1
  ADD s0, s9, zero
  ADD s2, s11, zero
  ADD s4, s6, zero
  ADD s3, s7, zero
  ADD s1, s5, zero
  JAL zero, bb477
bb485:
  LUI t4, 1
  ADDI t4, t4, 1072
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s0, t4, zero
  BNE s0, zero, bb488
  JAL zero, bb490
bb486:
  ADD s0, s2, zero
  LUI t3, 1
  ADDI t3, t3, 1560
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1240
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1536
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1232
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1552
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1224
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1568
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1216
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1576
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1200
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1584
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1184
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1544
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, 1176
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, s0, zero
  LUI t3, 1
  ADDI t3, t3, 1168
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1592
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1160
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1536
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1152
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1528
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1144
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1520
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1136
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1600
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 992
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1608
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1000
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1192
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, 1008
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb410
bb487:
  JAL zero, bb491
bb488:
  LUI s0, 16
  ADDI s0, s0, -1
  ADD s1, zero, s0
  JAL zero, bb489
bb489:
  ADD s0, s1, zero
  ADD s2, s0, zero
  JAL zero, bb486
bb490:
  ADD s1, zero, zero
  JAL zero, bb489
bb491:
  LUI s0, 8
  ADDI s0, s0, -1
  LUI t4, 1
  ADDI t4, t4, 1072
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s1, s0, t4
  BNE s1, zero, bb493
  JAL zero, bb495
bb492:
  ADD s1, s3, zero
  ADD s2, s1, zero
  JAL zero, bb486
bb493:
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 4
  LW s0, 0(s1)
  LUI t4, 1
  ADDI t4, t4, 1072
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s1, t4, s0
  LUI s0, 16
  ADDI s0, s0, 0
  ADDW s3, s1, s0
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 60
  LW s0, 0(s1)
  SUBW s1, s3, s0
  ADD s0, s1, zero
  JAL zero, bb494
bb494:
  ADD s1, s0, zero
  ADD s3, s1, zero
  JAL zero, bb492
bb495:
  LA s1, SHIFT_TABLE
  ADDI s2, s1, 4
  LW s1, 0(s2)
  LUI t4, 1
  ADDI t4, t4, 1072
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s2, t4, s1
  ADD s0, s2, zero
  JAL zero, bb494
bb496:
  LUI t3, 1
  ADDI t3, t3, 2024
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 2032
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 2016
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 2040
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 2008
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -2048
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1944
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -2040
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1936
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -2032
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1928
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -2024
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1920
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -2016
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1912
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -2008
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1904
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -2000
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1896
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1992
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1880
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1984
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1864
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1976
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1856
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1968
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1848
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1960
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1840
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 2
  ADDI t5, t5, -1952
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 2
  ADDI t4, t4, -1992
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s11, t4, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb497
  JAL zero, bb498
bb497:
  ADD s10, zero, zero
  ADDI s11, zero, 1
  LUI t4, 2
  ADDI t4, t4, -2032
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s9, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1992
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  ADD s7, zero, zero
  JAL zero, bb499
bb498:
  ADDI s0, zero, 1
  SLTI s1, s0, 15
  XORI s0, s1, 1
  BNE s0, zero, bb582
  JAL zero, bb584
bb499:
  ADD t4, s7, zero
  LUI t6, 2
  ADDI t6, t6, -1832
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s8, zero
  LUI t5, 2
  ADDI t5, t5, -1816
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s9, zero
  LUI t6, 2
  ADDI t6, t6, -1888
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, s11, zero
  LUI t5, 2
  ADDI t5, t5, -1824
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s10, zero
  LUI t6, 2
  ADDI t6, t6, -1872
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 2
  ADDI t4, t4, -1872
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s3, t4, 16
  XOR s0, s3, zero
  SLTU s3, zero, s0
  BNE s3, zero, bb500
  JAL zero, bb501
bb500:
  ADDI s0, zero, 2
  LUI t4, 2
  ADDI t4, t4, -1816
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s3, t4, s0
  XOR s0, s3, zero
  SLTU s3, zero, s0
  BNE s3, zero, bb502
  JAL zero, bb503
bb501:
  LUI t4, 2
  ADDI t4, t4, -1832
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s0, t4, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb507
  JAL zero, bb851
bb502:
  ADDI s0, zero, 2
  LUI t4, 2
  ADDI t4, t4, -1824
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s3, t4, s0
  XOR s0, s3, zero
  SLTU s3, zero, s0
  ADD s0, s3, zero
  JAL zero, bb504
bb503:
  ADD s0, zero, zero
  JAL zero, bb504
bb504:
  ADD s3, s0, zero
  BNE s3, zero, bb505
  JAL zero, bb850
bb505:
  ADDI s2, zero, 4
  LUI t4, 2
  ADDI t4, t4, -1872
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s1, t4, s2
  LA s2, SHIFT_TABLE
  ADD s6, s2, s1
  LW s1, 0(s6)
  ADDI s2, zero, 1
  MULW s6, s1, s2
  LUI t4, 2
  ADDI t4, t4, -1832
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s1, t4, s6
  ADD s2, s1, zero
  JAL zero, bb506
bb506:
  ADD s1, s2, zero
  ADDI s6, zero, 2
  LUI t4, 2
  ADDI t4, t4, -1816
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s4, t4, s6
  ADDI s6, zero, 2
  LUI t4, 2
  ADDI t4, t4, -1824
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s5, t4, s6
  LUI t4, 2
  ADDI t4, t4, -1872
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s6, t4, 1
  ADD s10, s6, zero
  ADD s11, s5, zero
  ADD s9, s3, zero
  ADD s8, s4, zero
  ADD s7, s1, zero
  JAL zero, bb499
bb507:
  LUI t3, 2
  ADDI t3, t3, -1872
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1712
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1976
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1720
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1952
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1728
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -2008
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1744
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -2024
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1752
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 2040
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 2
  ADDI t5, t5, -1760
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb509
bb508:
  LUI t3, 2
  ADDI t3, t3, -1616
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1472
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1608
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1480
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1600
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1488
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1592
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1496
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1584
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, -1504
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 2
  ADDI t4, t4, -1576
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s6, t4, zero
  LUI t3, 2
  ADDI t3, t3, -1568
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 2
  ADDI t5, t5, -1512
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s6, zero
  LUI t3, 2
  ADDI t3, t3, -1416
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1968
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1424
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1984
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1432
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -2016
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1440
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 2040
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1448
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 2040
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, -1456
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb540
bb509:
  LUI t3, 2
  ADDI t3, t3, -1760
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1808
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1752
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1800
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1744
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1792
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1728
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1784
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1720
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1776
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1712
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 2
  ADDI t5, t5, -1768
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 2
  ADDI t4, t4, -1808
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s6, t4, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb510
  JAL zero, bb511
bb510:
  ADD s6, zero, zero
  LUI t4, 2
  ADDI t4, t4, -1808
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1784
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  ADD s9, zero, zero
  JAL zero, bb512
bb511:
  LUI t3, 2
  ADDI t3, t3, -1784
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1568
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1768
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1576
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1776
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1584
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1784
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1592
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1792
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1600
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1800
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1608
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1808
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, -1616
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb508
bb512:
  ADD t4, s9, zero
  LUI t5, 2
  ADDI t5, t5, -1736
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD s11, s8, zero
  ADD s5, s7, zero
  ADD t4, s6, zero
  LUI t6, 2
  ADDI t6, t6, -1704
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 2
  ADDI t4, t4, -1704
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s3, t4, 16
  XOR s10, s3, zero
  SLTU s3, zero, s10
  BNE s3, zero, bb513
  JAL zero, bb514
bb513:
  ADDI s3, zero, 2
  REMW s10, s11, s3
  XOR s3, s10, zero
  SLTU s10, zero, s3
  BNE s10, zero, bb515
  JAL zero, bb517
bb514:
  ADD s0, zero, zero
  LUI t4, 2
  ADDI t4, t4, -1808
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1800
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1784
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  ADD s4, zero, zero
  JAL zero, bb522
bb515:
  ADDI s3, zero, 2
  REMW s10, s5, s3
  XOR s3, s10, zero
  SLTIU s10, s3, 1
  BNE s10, zero, bb518
  JAL zero, bb852
bb516:
  ADD s2, s10, zero
  ADDI s1, zero, 2
  DIVW s0, s11, s1
  ADDI s1, zero, 2
  DIVW s4, s5, s1
  LUI t4, 2
  ADDI t4, t4, -1704
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s1, t4, 1
  ADD s6, s1, zero
  ADD s7, s4, zero
  ADD s8, s0, zero
  ADD s9, s2, zero
  JAL zero, bb512
bb517:
  ADDI s0, zero, 2
  REMW s1, s5, s0
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb520
  JAL zero, bb853
bb518:
  ADDI s3, zero, 4
  LUI t4, 2
  ADDI t4, t4, -1704
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s10, t4, s3
  LA s3, SHIFT_TABLE
  ADD s2, s3, s10
  LW s3, 0(s2)
  ADDI s2, zero, 1
  MULW s10, s3, s2
  LUI t4, 2
  ADDI t4, t4, -1736
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s2, t4, s10
  ADD s3, s2, zero
  JAL zero, bb519
bb519:
  ADD s2, s3, zero
  ADD s10, s2, zero
  JAL zero, bb516
bb520:
  ADDI s0, zero, 4
  LUI t4, 2
  ADDI t4, t4, -1704
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s1, t4, s0
  LA s0, SHIFT_TABLE
  ADD s2, s0, s1
  LW s0, 0(s2)
  ADDI s1, zero, 1
  MULW s2, s0, s1
  LUI t4, 2
  ADDI t4, t4, -1736
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s0, t4, s2
  ADD s1, s0, zero
  JAL zero, bb521
bb521:
  ADD s0, s1, zero
  ADD s10, s0, zero
  JAL zero, bb516
bb522:
  ADD t4, s4, zero
  LUI t5, 2
  ADDI t5, t5, -1688
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s3, zero
  LUI t6, 2
  ADDI t6, t6, -1664
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s2, zero
  LUI t5, 2
  ADDI t5, t5, -1696
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, s1, zero
  LUI t6, 2
  ADDI t6, t6, -1672
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s0, zero
  LUI t5, 2
  ADDI t5, t5, -1680
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 2
  ADDI t4, t4, -1680
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s10, t4, 16
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb523
  JAL zero, bb524
bb523:
  ADDI s10, zero, 2
  LUI t4, 2
  ADDI t4, t4, -1664
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb525
  JAL zero, bb526
bb524:
  JAL zero, bb531
bb525:
  ADDI s10, zero, 2
  LUI t4, 2
  ADDI t4, t4, -1672
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  ADD s10, s11, zero
  JAL zero, bb527
bb526:
  ADD s10, zero, zero
  JAL zero, bb527
bb527:
  ADD s11, s10, zero
  BNE s11, zero, bb528
  JAL zero, bb854
bb528:
  ADDI s7, zero, 4
  LUI t4, 2
  ADDI t4, t4, -1680
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s5, t4, s7
  LA s7, SHIFT_TABLE
  ADD s9, s7, s5
  LW s5, 0(s9)
  ADDI s7, zero, 1
  MULW s9, s5, s7
  LUI t4, 2
  ADDI t4, t4, -1688
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s5, t4, s9
  ADD s7, s5, zero
  JAL zero, bb529
bb529:
  ADD s5, s7, zero
  ADDI s9, zero, 2
  LUI t4, 2
  ADDI t4, t4, -1664
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s8, t4, s9
  ADDI s9, zero, 2
  LUI t4, 2
  ADDI t4, t4, -1672
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s6, t4, s9
  LUI t4, 2
  ADDI t4, t4, -1680
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s9, t4, 1
  ADD s0, s9, zero
  ADD s1, s6, zero
  ADD s2, s11, zero
  ADD s3, s8, zero
  ADD s4, s5, zero
  JAL zero, bb522
bb530:
  ADD s3, s2, zero
  ADD s2, s1, zero
  ADD s1, s0, zero
  ADD t4, s1, zero
  LUI t3, 2
  ADDI t3, t3, -1712
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1736
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1720
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1736
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, -1728
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s2, zero
  LUI t3, 2
  ADDI t3, t3, -1744
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1696
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 2
  ADDI t5, t5, -1752
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, s3, zero
  LUI t6, 2
  ADDI t6, t6, -1760
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb509
bb531:
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 4
  LW s0, 0(s1)
  LUI t4, 2
  ADDI t4, t4, -1688
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s1, t4, s0
  ADD s0, zero, zero
  LUI t4, 2
  ADDI t4, t4, -1792
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  LUI s3, 16
  ADDI s3, s3, -1
  ADD s4, zero, s3
  ADD s3, s1, zero
  ADD s1, zero, zero
  JAL zero, bb532
bb532:
  ADD t4, s1, zero
  LUI t5, 2
  ADDI t5, t5, -1656
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s3, zero
  LUI t6, 2
  ADDI t6, t6, -1624
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s4, zero
  LUI t5, 2
  ADDI t5, t5, -1632
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s2, zero
  LUI t6, 2
  ADDI t6, t6, -1648
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, s0, zero
  LUI t5, 2
  ADDI t5, t5, -1640
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 2
  ADDI t4, t4, -1640
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s10, t4, 16
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb533
  JAL zero, bb534
bb533:
  ADDI s10, zero, 2
  LUI t4, 2
  ADDI t4, t4, -1624
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb535
  JAL zero, bb536
bb534:
  LUI t4, 2
  ADDI t4, t4, -1640
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1648
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s1, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1656
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  JAL zero, bb530
bb535:
  ADDI s10, zero, 2
  LUI t4, 2
  ADDI t4, t4, -1632
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  ADD s10, s11, zero
  JAL zero, bb537
bb536:
  ADD s10, zero, zero
  JAL zero, bb537
bb537:
  ADD s11, s10, zero
  BNE s11, zero, bb538
  JAL zero, bb855
bb538:
  ADDI s5, zero, 4
  LUI t4, 2
  ADDI t4, t4, -1640
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s8, t4, s5
  LA s5, SHIFT_TABLE
  ADD s9, s5, s8
  LW s5, 0(s9)
  ADDI s8, zero, 1
  MULW s9, s5, s8
  LUI t4, 2
  ADDI t4, t4, -1656
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s5, t4, s9
  ADD s8, s5, zero
  JAL zero, bb539
bb539:
  ADD s5, s8, zero
  ADDI s9, zero, 2
  LUI t4, 2
  ADDI t4, t4, -1624
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s7, t4, s9
  ADDI s9, zero, 2
  LUI t4, 2
  ADDI t4, t4, -1632
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s6, t4, s9
  LUI t4, 2
  ADDI t4, t4, -1640
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s9, t4, 1
  ADD s0, s9, zero
  ADD s2, s11, zero
  ADD s4, s6, zero
  ADD s3, s7, zero
  ADD s1, s5, zero
  JAL zero, bb532
bb540:
  LUI t3, 2
  ADDI t3, t3, -1456
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1560
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1448
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1552
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1440
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1544
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1432
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1536
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1424
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1528
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1416
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, -1520
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 2
  ADDI t4, t4, -1552
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s5, t4, zero
  SLTU s11, zero, s5
  BNE s11, zero, bb541
  JAL zero, bb542
bb541:
  ADD s5, zero, zero
  LUI t4, 2
  ADDI t4, t4, -1552
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1560
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s10, t4, zero
  ADD s9, zero, zero
  JAL zero, bb543
bb542:
  ADDI s0, zero, 1
  SLTI s1, s0, 15
  XORI s0, s1, 1
  BNE s0, zero, bb571
  JAL zero, bb573
bb543:
  ADD t4, s9, zero
  LUI t5, 2
  ADDI t5, t5, -1464
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD s7, s10, zero
  ADD s8, s11, zero
  ADD t4, s5, zero
  LUI t6, 2
  ADDI t6, t6, -1408
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 2
  ADDI t4, t4, -1408
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s1, t4, 16
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb544
  JAL zero, bb545
bb544:
  ADDI s1, zero, 2
  REMW s2, s7, s1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb546
  JAL zero, bb548
bb545:
  ADD s0, zero, zero
  LUI t4, 2
  ADDI t4, t4, -1528
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s1, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1552
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1560
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  ADD s4, zero, zero
  JAL zero, bb553
bb546:
  ADDI s1, zero, 2
  REMW s2, s8, s1
  XOR s1, s2, zero
  SLTIU s2, s1, 1
  BNE s2, zero, bb549
  JAL zero, bb856
bb547:
  ADD s1, s3, zero
  ADDI s6, zero, 2
  DIVW s4, s7, s6
  ADDI s6, zero, 2
  DIVW s0, s8, s6
  LUI t4, 2
  ADDI t4, t4, -1408
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s6, t4, 1
  ADD s5, s6, zero
  ADD s11, s0, zero
  ADD s10, s4, zero
  ADD s9, s1, zero
  JAL zero, bb543
bb548:
  ADDI s0, zero, 2
  REMW s1, s8, s0
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb551
  JAL zero, bb857
bb549:
  ADDI s1, zero, 4
  LUI t4, 2
  ADDI t4, t4, -1408
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s2, t4, s1
  LA s1, SHIFT_TABLE
  ADD s3, s1, s2
  LW s1, 0(s3)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LUI t4, 2
  ADDI t4, t4, -1464
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s1, t4, s3
  ADD s2, s1, zero
  JAL zero, bb550
bb550:
  ADD s1, s2, zero
  ADD s3, s1, zero
  JAL zero, bb547
bb551:
  ADDI s0, zero, 4
  LUI t4, 2
  ADDI t4, t4, -1408
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s1, t4, s0
  LA s0, SHIFT_TABLE
  ADD s2, s0, s1
  LW s0, 0(s2)
  ADDI s1, zero, 1
  MULW s2, s0, s1
  LUI t4, 2
  ADDI t4, t4, -1464
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s0, t4, s2
  ADD s1, s0, zero
  JAL zero, bb552
bb552:
  ADD s0, s1, zero
  ADD s3, s0, zero
  JAL zero, bb547
bb553:
  ADD t4, s4, zero
  LUI t5, 2
  ADDI t5, t5, -1392
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s3, zero
  LUI t6, 2
  ADDI t6, t6, -1368
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s2, zero
  LUI t5, 2
  ADDI t5, t5, -1376
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s1, zero
  LUI t6, 2
  ADDI t6, t6, -1400
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, s0, zero
  LUI t5, 2
  ADDI t5, t5, -1384
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 2
  ADDI t4, t4, -1384
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s10, t4, 16
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb554
  JAL zero, bb555
bb554:
  ADDI s10, zero, 2
  LUI t4, 2
  ADDI t4, t4, -1368
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb556
  JAL zero, bb557
bb555:
  JAL zero, bb562
bb556:
  ADDI s10, zero, 2
  LUI t4, 2
  ADDI t4, t4, -1376
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  ADD s10, s11, zero
  JAL zero, bb558
bb557:
  ADD s10, zero, zero
  JAL zero, bb558
bb558:
  ADD s11, s10, zero
  BNE s11, zero, bb559
  JAL zero, bb858
bb559:
  ADDI s8, zero, 4
  LUI t4, 2
  ADDI t4, t4, -1384
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s5, t4, s8
  LA s8, SHIFT_TABLE
  ADD s9, s8, s5
  LW s5, 0(s9)
  ADDI s8, zero, 1
  MULW s9, s5, s8
  LUI t4, 2
  ADDI t4, t4, -1392
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s5, t4, s9
  ADD s8, s5, zero
  JAL zero, bb560
bb560:
  ADD s5, s8, zero
  ADDI s9, zero, 2
  LUI t4, 2
  ADDI t4, t4, -1368
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s7, t4, s9
  ADDI s9, zero, 2
  LUI t4, 2
  ADDI t4, t4, -1376
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s6, t4, s9
  LUI t4, 2
  ADDI t4, t4, -1384
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s9, t4, 1
  ADD s0, s9, zero
  ADD s1, s11, zero
  ADD s2, s6, zero
  ADD s3, s7, zero
  ADD s4, s5, zero
  JAL zero, bb553
bb561:
  ADD s3, s2, zero
  ADD s2, s1, zero
  ADD s1, s0, zero
  ADD t4, s1, zero
  LUI t3, 2
  ADDI t3, t3, -1416
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1400
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, -1424
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, s2, zero
  LUI t3, 2
  ADDI t3, t3, -1432
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1464
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 2
  ADDI t5, t5, -1440
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s3, zero
  LUI t3, 2
  ADDI t3, t3, -1448
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1464
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, -1456
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb540
bb562:
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 4
  LW s0, 0(s1)
  LUI t4, 2
  ADDI t4, t4, -1392
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s1, t4, s0
  ADD s0, zero, zero
  LUI t4, 2
  ADDI t4, t4, -1536
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  LUI s3, 16
  ADDI s3, s3, -1
  ADD s4, zero, s3
  ADD s3, s1, zero
  ADD s1, zero, zero
  JAL zero, bb563
bb563:
  ADD t4, s1, zero
  LUI t5, 2
  ADDI t5, t5, -1360
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s3, zero
  LUI t6, 2
  ADDI t6, t6, -1328
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s4, zero
  LUI t5, 2
  ADDI t5, t5, -1336
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s2, zero
  LUI t6, 2
  ADDI t6, t6, -1352
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, s0, zero
  LUI t5, 2
  ADDI t5, t5, -1344
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 2
  ADDI t4, t4, -1344
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s10, t4, 16
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb564
  JAL zero, bb565
bb564:
  ADDI s10, zero, 2
  LUI t4, 2
  ADDI t4, t4, -1328
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb566
  JAL zero, bb567
bb565:
  LUI t4, 2
  ADDI t4, t4, -1344
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1352
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s1, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1360
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  JAL zero, bb561
bb566:
  ADDI s10, zero, 2
  LUI t4, 2
  ADDI t4, t4, -1336
  ADD t4, t4, sp
  LW t4, 0(t4)
  REMW s11, t4, s10
  XOR s10, s11, zero
  SLTU s11, zero, s10
  ADD s10, s11, zero
  JAL zero, bb568
bb567:
  ADD s10, zero, zero
  JAL zero, bb568
bb568:
  ADD s11, s10, zero
  BNE s11, zero, bb569
  JAL zero, bb859
bb569:
  ADDI s5, zero, 4
  LUI t4, 2
  ADDI t4, t4, -1344
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s8, t4, s5
  LA s5, SHIFT_TABLE
  ADD s9, s5, s8
  LW s5, 0(s9)
  ADDI s8, zero, 1
  MULW s9, s5, s8
  LUI t4, 2
  ADDI t4, t4, -1360
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s5, t4, s9
  ADD s8, s5, zero
  JAL zero, bb570
bb570:
  ADD s5, s8, zero
  ADDI s9, zero, 2
  LUI t4, 2
  ADDI t4, t4, -1328
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s7, t4, s9
  ADDI s9, zero, 2
  LUI t4, 2
  ADDI t4, t4, -1336
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s6, t4, s9
  LUI t4, 2
  ADDI t4, t4, -1344
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s9, t4, 1
  ADD s0, s9, zero
  ADD s2, s11, zero
  ADD s4, s6, zero
  ADD s3, s7, zero
  ADD s1, s5, zero
  JAL zero, bb563
bb571:
  LUI t4, 2
  ADDI t4, t4, -1992
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s0, t4, zero
  BNE s0, zero, bb574
  JAL zero, bb576
bb572:
  ADD s0, s2, zero
  LUI t3, 2
  ADDI t3, t3, -1512
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1840
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1520
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1848
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1528
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1856
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1504
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1864
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1536
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, -1880
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, s0, zero
  LUI t3, 2
  ADDI t3, t3, -1896
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1496
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1904
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1488
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1912
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1544
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1920
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1480
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1928
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1888
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1936
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1472
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1944
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1552
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 2008
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1560
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 2016
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1560
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, 2024
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb496
bb573:
  JAL zero, bb577
bb574:
  LUI s0, 16
  ADDI s0, s0, -1
  ADD s1, zero, s0
  JAL zero, bb575
bb575:
  ADD s0, s1, zero
  ADD s2, s0, zero
  JAL zero, bb572
bb576:
  ADD s1, zero, zero
  JAL zero, bb575
bb577:
  LUI s0, 8
  ADDI s0, s0, -1
  LUI t4, 2
  ADDI t4, t4, -1992
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s1, s0, t4
  BNE s1, zero, bb579
  JAL zero, bb581
bb578:
  ADD s1, s3, zero
  ADD s2, s1, zero
  JAL zero, bb572
bb579:
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 4
  LW s0, 0(s1)
  LUI t4, 2
  ADDI t4, t4, -1992
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s1, t4, s0
  LUI s0, 16
  ADDI s0, s0, 0
  ADDW s3, s1, s0
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 60
  LW s0, 0(s1)
  SUBW s1, s3, s0
  ADD s0, s1, zero
  JAL zero, bb580
bb580:
  ADD s1, s0, zero
  ADD s3, s1, zero
  JAL zero, bb578
bb581:
  LA s1, SHIFT_TABLE
  ADDI s2, s1, 4
  LW s1, 0(s2)
  LUI t4, 2
  ADDI t4, t4, -1992
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s2, t4, s1
  ADD s0, s2, zero
  JAL zero, bb580
bb582:
  LUI t4, 1
  ADDI t4, t4, 808
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s0, t4, zero
  BNE s0, zero, bb585
  JAL zero, bb587
bb583:
  ADD s0, s3, zero
  ADD s4, s2, zero
  LUI t3, 2
  ADDI t3, t3, -1952
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 960
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1960
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 952
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1904
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 944
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 920
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 392
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1952
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, 936
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s0, zero
  LUI t3, 1
  ADDI t3, t3, 400
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1896
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 408
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1888
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 912
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1912
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 904
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1920
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 896
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1968
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 888
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1928
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 880
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1936
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 872
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1976
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 864
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1984
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 856
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1944
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 416
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1952
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 424
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1992
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 432
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1960
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 440
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -2000
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 448
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1968
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 456
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -2008
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, 464
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADDI t4, zero, 1
  LUI t3, 1
  ADDI t3, t3, 472
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -2016
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 480
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -2024
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 488
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -2032
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 496
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -2040
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 504
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -2048
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 512
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 2040
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 520
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1976
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 528
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1984
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 536
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1992
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 544
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 2032
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 552
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 2000
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, 560
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, s4, zero
  LUI t5, 1
  ADDI t5, t5, 568
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb397
bb584:
  JAL zero, bb588
bb585:
  LUI s0, 16
  ADDI s0, s0, -1
  ADD s1, zero, s0
  JAL zero, bb586
bb586:
  ADD s0, s1, zero
  LUI t4, 1
  ADDI t4, t4, 808
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  ADD s3, s0, zero
  JAL zero, bb583
bb587:
  ADD s1, zero, zero
  JAL zero, bb586
bb588:
  LUI s0, 8
  ADDI s0, s0, -1
  LUI t4, 1
  ADDI t4, t4, 808
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s1, s0, t4
  BNE s1, zero, bb590
  JAL zero, bb592
bb589:
  ADD s4, s5, zero
  ADD s5, s6, zero
  ADD s2, s5, zero
  ADD s3, s4, zero
  JAL zero, bb583
bb590:
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 4
  LW s0, 0(s1)
  LUI t4, 1
  ADDI t4, t4, 808
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s1, t4, s0
  LUI s0, 16
  ADDI s0, s0, 0
  ADDW s4, s1, s0
  LA s0, SHIFT_TABLE
  ADDI s5, s0, 60
  LW s0, 0(s5)
  SUBW s5, s4, s0
  ADD s0, s1, zero
  ADD s1, s5, zero
  JAL zero, bb591
bb591:
  ADD s4, s1, zero
  ADD s5, s0, zero
  ADD s6, s5, zero
  ADD s5, s4, zero
  JAL zero, bb589
bb592:
  LA s2, SHIFT_TABLE
  ADDI s3, s2, 4
  LW s2, 0(s3)
  LUI t4, 1
  ADDI t4, t4, 808
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s3, t4, s2
  LUI t4, 1
  ADDI t4, t4, 808
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  ADD s1, s3, zero
  JAL zero, bb591
bb593:
  LUI t3, 2
  ADDI t3, t3, -1240
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1048
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1248
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1056
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1256
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1040
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1264
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1032
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1272
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1024
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1280
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1016
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1288
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1008
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1296
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1000
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1304
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -992
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1312
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -984
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1320
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -976
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1232
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -968
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1224
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, -960
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 2
  ADDI t4, t4, -1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1208
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1200
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s6, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1192
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1184
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s4, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1176
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1168
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1160
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s1, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1152
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1144
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a6, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1136
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD a7, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1128
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a5, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1120
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a4, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1112
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a3, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1104
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD a2, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1096
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a1, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1088
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD t2, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1080
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD t1, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1072
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD t0, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1064
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  LUI t4, 2
  ADDI t4, t4, -1056
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s10, t4, 16
  XOR s9, s10, zero
  SLTU s10, zero, s9
  BNE s10, zero, bb594
  JAL zero, bb595
bb594:
  ADD t4, s11, zero
  LUI t5, 2
  ADDI t5, t5, -384
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t0, zero
  LUI t6, 2
  ADDI t6, t6, -392
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, t1, zero
  LUI t5, 2
  ADDI t5, t5, -400
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, t2, zero
  LUI t6, 2
  ADDI t6, t6, -408
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, a1, zero
  LUI t5, 2
  ADDI t5, t5, -416
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a2, zero
  LUI t3, 2
  ADDI t3, t3, -424
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1056
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, -432
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADDI t4, zero, 1
  LUI t5, 2
  ADDI t5, t5, -440
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a3, zero
  LUI t6, 2
  ADDI t6, t6, -952
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, a4, zero
  LUI t5, 2
  ADDI t5, t5, -448
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a5, zero
  LUI t6, 2
  ADDI t6, t6, -456
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, a7, zero
  LUI t5, 2
  ADDI t5, t5, -464
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, a6, zero
  LUI t6, 2
  ADDI t6, t6, -472
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s0, zero
  LUI t5, 2
  ADDI t5, t5, -480
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s1, zero
  LUI t6, 2
  ADDI t6, t6, -488
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, s2, zero
  LUI t5, 2
  ADDI t5, t5, -512
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s3, zero
  LUI t6, 2
  ADDI t6, t6, -520
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s4, zero
  LUI t5, 2
  ADDI t5, t5, -528
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s5, zero
  LUI t6, 2
  ADDI t6, t6, -536
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, s6, zero
  LUI t5, 2
  ADDI t5, t5, -544
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s7, zero
  LUI t6, 2
  ADDI t6, t6, -552
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s8, zero
  LUI t3, 2
  ADDI t3, t3, -560
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -960
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -568
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -968
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -944
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -976
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -936
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -984
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -928
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -992
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -920
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1000
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -912
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1008
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -904
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1016
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -896
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1024
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -888
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1032
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 2
  ADDI t5, t5, -880
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADDI t4, zero, 2
  LUI t3, 2
  ADDI t3, t3, -872
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1040
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -864
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1048
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, -856
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb596
bb595:
  ADD a0, zero, zero
  LUI t5, 2
  ADDI t5, t5, 880
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t6, 2
  ADDI t6, t6, 888
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t5, 2
  ADDI t5, t5, 896
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t6, 2
  ADDI t6, t6, 904
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t5, 2
  ADDI t5, t5, 912
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t6, 2
  ADDI t6, t6, 920
  ADD t6, t6, sp
  LD s8, 0(t6)
  LUI t5, 2
  ADDI t5, t5, 928
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t6, 2
  ADDI t6, t6, 936
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t5, 2
  ADDI t5, t5, 944
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t6, 2
  ADDI t6, t6, 952
  ADD t6, t6, sp
  LD s11, 0(t6)
  LUI ra, 2
  ADDI ra, ra, 960
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 2
  ADDI t5, t5, 968
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t6, 2
  ADDI t6, t6, 976
  ADD t6, t6, sp
  LD s9, 0(t6)
  LUI t0, 2
  ADDI t0, t0, 992
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb596:
  LUI t3, 2
  ADDI t3, t3, -856
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -848
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -864
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -840
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -872
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -832
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -880
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -824
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -888
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -816
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -896
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -808
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -904
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -800
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -912
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -792
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -920
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -784
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -928
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -776
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -936
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -768
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -944
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -760
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -568
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -752
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -560
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -744
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -552
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -736
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -544
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -728
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -536
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -720
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -528
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -712
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -520
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -704
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -512
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -696
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -488
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -688
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -480
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -680
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -472
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -672
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -464
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -664
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -456
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -656
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -448
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -648
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -952
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -640
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -440
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -632
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -432
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -624
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -424
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -616
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -416
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -608
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -408
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -600
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -400
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -592
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -392
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -584
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -384
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 2
  ADDI t5, t5, -576
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 2
  ADDI t4, t4, -624
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s8, zero, t4
  XOR s7, s8, zero
  SLTU s8, zero, s7
  BNE s8, zero, bb597
  JAL zero, bb598
bb597:
  LUI t4, 2
  ADDI t4, t4, -584
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s7, t4, zero
  ADD s8, zero, zero
  ADDI s6, zero, 1
  LUI t4, 2
  ADDI t4, t4, -624
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s5, t4, zero
  ADD s4, zero, zero
  JAL zero, bb599
bb598:
  ADDI s0, zero, 4
  LUI t4, 2
  ADDI t4, t4, -1056
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s1, t4, s0
  LA s0, SHIFT_TABLE
  ADD s2, s0, s1
  LW s0, 0(s2)
  LUI t4, 2
  ADDI t4, t4, -632
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s1, s0, t4
  SLTU s0, zero, s1
  BNE s0, zero, bb792
  JAL zero, bb793
bb599:
  ADD s3, s4, zero
  ADD s2, s5, zero
  ADD s1, s6, zero
  ADD t4, s8, zero
  LUI t6, 2
  ADDI t6, t6, -504
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s7, zero
  LUI t5, 2
  ADDI t5, t5, -496
  ADD t5, t5, sp
  SB t4, 0(t5)
  LUI t4, 2
  ADDI t4, t4, -504
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s0, t4, 16
  XOR a6, s0, zero
  SLTU s0, zero, a6
  BNE s0, zero, bb600
  JAL zero, bb601
bb600:
  ADDI s0, zero, 2
  REMW a6, s2, s0
  XOR s0, a6, zero
  SLTU a6, zero, s0
  BNE a6, zero, bb602
  JAL zero, bb603
bb601:
  XOR s0, s3, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb607
  JAL zero, bb861
bb602:
  ADDI s0, zero, 2
  REMW a6, s1, s0
  XOR s0, a6, zero
  SLTU a6, zero, s0
  ADD s0, a6, zero
  JAL zero, bb604
bb603:
  ADD s0, zero, zero
  JAL zero, bb604
bb604:
  ADD a6, s0, zero
  BNE a6, zero, bb605
  JAL zero, bb860
bb605:
  ADDI a7, zero, 4
  LUI t4, 2
  ADDI t4, t4, -504
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a5, t4, a7
  LA a7, SHIFT_TABLE
  ADD a4, a7, a5
  LW a5, 0(a4)
  ADDI a4, zero, 1
  MULW a7, a5, a4
  ADDW a4, s3, a7
  ADD a5, a4, zero
  JAL zero, bb606
bb606:
  ADD a4, a5, zero
  ADDI a7, zero, 2
  DIVW a3, s2, a7
  ADDI a7, zero, 2
  DIVW a2, s1, a7
  LUI t4, 2
  ADDI t4, t4, -504
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW a7, t4, 1
  ADD s7, a6, zero
  ADD s8, a7, zero
  ADD s6, a2, zero
  ADD s5, a3, zero
  ADD s4, a4, zero
  JAL zero, bb599
bb607:
  LUI t3, 2
  ADDI t3, t3, -600
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -128
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -504
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -136
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -656
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -144
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -664
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -152
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -672
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -160
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -832
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -168
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -696
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, -176
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t3, 2
  ADDI t3, t3, -184
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -720
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -192
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -736
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -200
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -752
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -208
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -760
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -216
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -632
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -224
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -776
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -232
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -840
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 2
  ADDI t5, t5, -256
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb609
bb608:
  LUI t3, 2
  ADDI t3, t3, 128
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 488
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 136
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 480
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 144
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 472
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 152
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 464
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 160
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 456
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 168
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 448
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 176
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 440
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 184
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 312
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 192
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 304
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 200
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 296
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 208
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 288
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 216
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 280
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 224
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 272
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 232
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, 264
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 2
  ADDI t4, t4, 240
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  LUI t3, 2
  ADDI t3, t3, 248
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 256
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -576
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 624
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -592
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 2
  ADDI t5, t5, 616
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, s7, zero
  LUI t3, 2
  ADDI t3, t3, 608
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -616
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 600
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -832
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 592
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -648
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 584
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -688
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 576
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -704
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 568
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -728
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, 560
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t3, 2
  ADDI t3, t3, 552
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -784
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 544
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -792
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 536
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -800
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 528
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -832
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 520
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -816
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 2
  ADDI t5, t5, 496
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb695
bb609:
  LUI t3, 2
  ADDI t3, t3, -256
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -376
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -232
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -368
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -224
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -360
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -216
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -352
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -208
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -344
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -200
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -336
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -192
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -328
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -184
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -320
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -176
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -312
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -168
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -304
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -160
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -296
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -152
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -288
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -144
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -280
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -136
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -272
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -128
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t2, 2
  ADDI t2, t2, -264
  ADD t2, t2, sp
  SB t4, 0(t2)
  LUI t4, 2
  ADDI t4, t4, -304
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR t2, t4, zero
  SLTU t1, zero, t2
  BNE t1, zero, bb610
  JAL zero, bb611
bb610:
  ADD t1, zero, zero
  LUI t4, 2
  ADDI t4, t4, -368
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD t2, t4, zero
  ADDI t0, zero, 1
  LUI t4, 2
  ADDI t4, t4, -304
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  ADD s10, zero, zero
  JAL zero, bb612
bb611:
  LUI t3, 2
  ADDI t3, t3, -264
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 248
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -272
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 240
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -320
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 232
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -280
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 224
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -288
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 216
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -296
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 208
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -304
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 200
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -312
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 192
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -320
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 184
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -328
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 176
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -336
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 168
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -344
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 160
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -352
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 152
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -360
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 144
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -368
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 136
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -376
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, 128
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb608
bb612:
  ADD s9, s10, zero
  ADD a1, s11, zero
  ADD a7, t0, zero
  ADD t4, t2, zero
  LUI t5, 2
  ADDI t5, t5, -248
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, t1, zero
  LUI a6, 2
  ADDI a6, a6, -240
  ADD a6, a6, sp
  SW t4, 0(a6)
  LUI t4, 2
  ADDI t4, t4, -240
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI a6, t4, 16
  XOR a5, a6, zero
  SLTU a6, zero, a5
  BNE a6, zero, bb613
  JAL zero, bb614
bb613:
  ADDI a5, zero, 2
  REMW a6, a1, a5
  XOR a5, a6, zero
  SLTU a6, zero, a5
  BNE a6, zero, bb615
  JAL zero, bb616
bb614:
  XOR s7, s9, zero
  SLTU s8, zero, s7
  BNE s8, zero, bb620
  JAL zero, bb863
bb615:
  ADDI a5, zero, 2
  REMW a6, a7, a5
  XOR a5, a6, zero
  SLTU a6, zero, a5
  ADD a5, a6, zero
  JAL zero, bb617
bb616:
  ADD a5, zero, zero
  JAL zero, bb617
bb617:
  ADD a6, a5, zero
  BNE a6, zero, bb618
  JAL zero, bb862
bb618:
  ADDI a4, zero, 4
  LUI t4, 2
  ADDI t4, t4, -240
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a3, t4, a4
  LA a4, SHIFT_TABLE
  ADD a2, a4, a3
  LW a3, 0(a2)
  ADDI a2, zero, 1
  MULW a4, a3, a2
  ADDW a2, s9, a4
  ADD a3, a2, zero
  JAL zero, bb619
bb619:
  ADD a2, a3, zero
  ADDI a4, zero, 2
  DIVW s8, a1, a4
  ADDI a4, zero, 2
  DIVW s7, a7, a4
  LUI t4, 2
  ADDI t4, t4, -240
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW a4, t4, 1
  ADD t1, a4, zero
  ADD t2, a6, zero
  ADD t0, s7, zero
  ADD s11, s8, zero
  ADD s10, a2, zero
  JAL zero, bb612
bb620:
  LUI t4, 2
  ADDI t4, t4, -240
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  LUI t4, 2
  ADDI t4, t4, -296
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  LUI t4, 2
  ADDI t4, t4, -360
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s9, t4, zero
  LUI t4, 2
  ADDI t4, t4, -328
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s10, t4, zero
  LUI t3, 2
  ADDI t3, t3, -320
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -56
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -376
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, -72
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb622
bb621:
  LUI t3, 2
  ADDI t3, t3, -48
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 96
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -40
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 88
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -32
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 80
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -24
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 72
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -16
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 64
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -8
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t1, 2
  ADDI t1, t1, 56
  ADD t1, t1, sp
  SW t4, 0(t1)
  LUI t4, 2
  ADDI t4, t4, 0
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t1, t4, zero
  LUI t4, 2
  ADDI t4, t4, -264
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD t2, t4, zero
  ADD a1, t1, zero
  LUI t4, 2
  ADDI t4, t4, -280
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t1, t4, zero
  LUI t4, 2
  ADDI t4, t4, -288
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD a2, t4, zero
  LUI t3, 2
  ADDI t3, t3, -360
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 120
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -360
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 2
  ADDI t5, t5, 104
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb653
bb622:
  LUI t3, 2
  ADDI t3, t3, -72
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -120
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -56
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, -112
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s10, zero
  LUI t5, 2
  ADDI t5, t5, -104
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, s9, zero
  LUI t6, 2
  ADDI t6, t6, -96
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s8, zero
  LUI t5, 2
  ADDI t5, t5, -88
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s7, zero
  LUI a5, 2
  ADDI a5, a5, -80
  ADD a5, a5, sp
  SW t4, 0(a5)
  LUI t4, 2
  ADDI t4, t4, -96
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR a5, t4, zero
  SLTU a6, zero, a5
  BNE a6, zero, bb623
  JAL zero, bb624
bb623:
  ADD a5, zero, zero
  LUI t4, 2
  ADDI t4, t4, -96
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a6, t4, zero
  LUI t4, 2
  ADDI t4, t4, -112
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a7, t4, zero
  ADD s6, zero, zero
  JAL zero, bb625
bb624:
  LUI t3, 2
  ADDI t3, t3, -80
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 0
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -88
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -8
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -96
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -16
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -112
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -24
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -104
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -32
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -112
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -40
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -120
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, -48
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb621
bb625:
  ADD t4, s6, zero
  LUI t5, 2
  ADDI t5, t5, -64
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD s4, a7, zero
  ADD s3, a6, zero
  ADD s2, a5, zero
  SLTI s1, s2, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb626
  JAL zero, bb627
bb626:
  ADDI s0, zero, 2
  REMW s1, s4, s0
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb628
  JAL zero, bb630
bb627:
  ADD s0, zero, zero
  LUI t4, 2
  ADDI t4, t4, -104
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s1, t4, zero
  LUI t4, 2
  ADDI t4, t4, -96
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  LUI t4, 2
  ADDI t4, t4, -112
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  ADD s4, zero, zero
  JAL zero, bb635
bb628:
  ADDI s0, zero, 2
  REMW s1, s3, s0
  XOR s0, s1, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb631
  JAL zero, bb864
bb629:
  ADD s0, t1, zero
  ADDI t2, zero, 2
  DIVW a1, s4, t2
  ADDI t2, zero, 2
  DIVW a2, s3, t2
  ADDIW t2, s2, 1
  ADD a5, t2, zero
  ADD a6, a2, zero
  ADD a7, a1, zero
  ADD s6, s0, zero
  JAL zero, bb625
bb630:
  ADDI s0, zero, 2
  REMW s1, s3, s0
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb633
  JAL zero, bb865
bb631:
  ADDI s0, zero, 4
  MULW s1, s2, s0
  LA s0, SHIFT_TABLE
  ADD t1, s0, s1
  LW s0, 0(t1)
  ADDI s1, zero, 1
  MULW t1, s0, s1
  LUI t4, 2
  ADDI t4, t4, -64
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s0, t4, t1
  ADD s1, s0, zero
  JAL zero, bb632
bb632:
  ADD s0, s1, zero
  ADD t1, s0, zero
  JAL zero, bb629
bb633:
  ADDI s0, zero, 4
  MULW s1, s2, s0
  LA s0, SHIFT_TABLE
  ADD s6, s0, s1
  LW s0, 0(s6)
  ADDI s1, zero, 1
  MULW s6, s0, s1
  LUI t4, 2
  ADDI t4, t4, -64
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s0, t4, s6
  ADD s1, s0, zero
  JAL zero, bb634
bb634:
  ADD s0, s1, zero
  ADD t1, s0, zero
  JAL zero, bb629
bb635:
  ADD s6, s4, zero
  ADD t1, s3, zero
  ADD t2, s2, zero
  ADD a1, s1, zero
  ADD a2, s0, zero
  SLTI a5, a2, 16
  XOR a6, a5, zero
  SLTU a5, zero, a6
  BNE a5, zero, bb636
  JAL zero, bb637
bb636:
  ADDI a5, zero, 2
  REMW a6, t1, a5
  XOR a5, a6, zero
  SLTU a6, zero, a5
  BNE a6, zero, bb638
  JAL zero, bb639
bb637:
  JAL zero, bb644
bb638:
  ADDI a5, zero, 2
  REMW a6, t2, a5
  XOR a5, a6, zero
  SLTU a6, zero, a5
  ADD a5, a6, zero
  JAL zero, bb640
bb639:
  ADD a5, zero, zero
  JAL zero, bb640
bb640:
  ADD a6, a5, zero
  BNE a6, zero, bb641
  JAL zero, bb866
bb641:
  ADDI a7, zero, 4
  MULW a3, a2, a7
  LA a7, SHIFT_TABLE
  ADD a4, a7, a3
  LW a3, 0(a4)
  ADDI a4, zero, 1
  MULW a7, a3, a4
  ADDW a3, s6, a7
  ADD a4, a3, zero
  JAL zero, bb642
bb642:
  ADD a3, a4, zero
  ADDI a7, zero, 2
  DIVW t0, t1, a7
  ADDI a7, zero, 2
  DIVW s5, t2, a7
  ADDIW a7, a2, 1
  ADD s0, a7, zero
  ADD s1, a6, zero
  ADD s2, s5, zero
  ADD s3, t0, zero
  ADD s4, a3, zero
  JAL zero, bb635
bb643:
  ADD s3, s2, zero
  ADD s2, s1, zero
  ADD s1, s0, zero
  ADD s7, s1, zero
  LUI t4, 2
  ADDI t4, t4, -64
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  ADD s9, s3, zero
  ADD s10, a1, zero
  LUI t3, 2
  ADDI t3, t3, -64
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, -56
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s2, zero
  LUI t5, 2
  ADDI t5, t5, -72
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb622
bb644:
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 4
  LW s0, 0(s1)
  MULW s1, s6, s0
  ADD s0, zero, zero
  LUI s2, 16
  ADDI s2, s2, -1
  ADD s3, zero, s2
  LUI t4, 2
  ADDI t4, t4, -120
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  ADD s4, s1, zero
  ADD s1, zero, zero
  JAL zero, bb645
bb645:
  ADD s5, s1, zero
  ADD s6, s4, zero
  ADD t0, s2, zero
  ADD t1, s3, zero
  ADD t2, s0, zero
  SLTI a2, t2, 16
  XOR a3, a2, zero
  SLTU a2, zero, a3
  BNE a2, zero, bb646
  JAL zero, bb647
bb646:
  ADDI a2, zero, 2
  REMW a3, s6, a2
  XOR a2, a3, zero
  SLTU a3, zero, a2
  BNE a3, zero, bb648
  JAL zero, bb649
bb647:
  ADD s0, t2, zero
  ADD s1, t0, zero
  ADD s2, s5, zero
  JAL zero, bb643
bb648:
  ADDI a2, zero, 2
  REMW a3, t1, a2
  XOR a2, a3, zero
  SLTU a3, zero, a2
  ADD a2, a3, zero
  JAL zero, bb650
bb649:
  ADD a2, zero, zero
  JAL zero, bb650
bb650:
  ADD a3, a2, zero
  BNE a3, zero, bb651
  JAL zero, bb867
bb651:
  ADDI a4, zero, 4
  MULW a5, t2, a4
  LA a4, SHIFT_TABLE
  ADD a6, a4, a5
  LW a4, 0(a6)
  ADDI a5, zero, 1
  MULW a6, a4, a5
  ADDW a4, s5, a6
  ADD a5, a4, zero
  JAL zero, bb652
bb652:
  ADD a4, a5, zero
  ADDI a6, zero, 2
  DIVW a7, s6, a6
  ADDI a6, zero, 2
  DIVW s11, t1, a6
  ADDIW a6, t2, 1
  ADD s0, a6, zero
  ADD s3, s11, zero
  ADD s2, a3, zero
  ADD s4, a7, zero
  ADD s1, a4, zero
  JAL zero, bb645
bb653:
  LUI t3, 2
  ADDI t3, t3, 104
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 48
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 120
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, 40
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, a2, zero
  LUI t5, 2
  ADDI t5, t5, 32
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADD t4, t1, zero
  LUI t6, 2
  ADDI t6, t6, 24
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, a1, zero
  LUI t5, 2
  ADDI t5, t5, 16
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t2, zero
  LUI t6, 2
  ADDI t6, t6, 8
  ADD t6, t6, sp
  SB t4, 0(t6)
  LUI t4, 2
  ADDI t4, t4, 48
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s3, t4, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb654
  JAL zero, bb655
bb654:
  ADD s2, zero, zero
  LUI t4, 2
  ADDI t4, t4, 48
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  LUI t4, 2
  ADDI t4, t4, 40
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  ADD s0, zero, zero
  JAL zero, bb656
bb655:
  ADDI s0, zero, 1
  SLTI s1, s0, 15
  XORI s0, s1, 1
  BNE s0, zero, bb684
  JAL zero, bb686
bb656:
  ADD t4, s0, zero
  LUI t5, 2
  ADDI t5, t5, 112
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD s5, s1, zero
  ADD s6, s3, zero
  ADD a7, s2, zero
  SLTI a6, a7, 16
  XOR a5, a6, zero
  SLTU a6, zero, a5
  BNE a6, zero, bb657
  JAL zero, bb658
bb657:
  ADDI a5, zero, 2
  REMW a6, s5, a5
  XOR a5, a6, zero
  SLTU a6, zero, a5
  BNE a6, zero, bb659
  JAL zero, bb661
bb658:
  ADD s0, zero, zero
  LUI t4, 2
  ADDI t4, t4, 32
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s1, t4, zero
  LUI t4, 2
  ADDI t4, t4, 48
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  LUI t4, 2
  ADDI t4, t4, 40
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  ADD s5, zero, zero
  JAL zero, bb666
bb659:
  ADDI a5, zero, 2
  REMW a6, s6, a5
  XOR a5, a6, zero
  SLTIU a6, a5, 1
  BNE a6, zero, bb662
  JAL zero, bb868
bb660:
  ADD t0, a6, zero
  ADDI s11, zero, 2
  DIVW s10, s5, s11
  ADDI s11, zero, 2
  DIVW s9, s6, s11
  ADDIW s11, a7, 1
  ADD s2, s11, zero
  ADD s3, s9, zero
  ADD s1, s10, zero
  ADD s0, t0, zero
  JAL zero, bb656
bb661:
  ADDI s0, zero, 2
  REMW s1, s6, s0
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb664
  JAL zero, bb869
bb662:
  ADDI a5, zero, 4
  MULW a6, a7, a5
  LA a5, SHIFT_TABLE
  ADD t0, a5, a6
  LW a5, 0(t0)
  ADDI t0, zero, 1
  MULW a6, a5, t0
  LUI t4, 2
  ADDI t4, t4, 112
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW t0, t4, a6
  ADD a5, t0, zero
  JAL zero, bb663
bb663:
  ADD t0, a5, zero
  ADD a6, t0, zero
  JAL zero, bb660
bb664:
  ADDI s0, zero, 4
  MULW s1, a7, s0
  LA s0, SHIFT_TABLE
  ADD s2, s0, s1
  LW s0, 0(s2)
  ADDI s1, zero, 1
  MULW s2, s0, s1
  LUI t4, 2
  ADDI t4, t4, 112
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s0, t4, s2
  ADD s1, s0, zero
  JAL zero, bb665
bb665:
  ADD s0, s1, zero
  ADD a6, s0, zero
  JAL zero, bb660
bb666:
  ADD s6, s5, zero
  ADD s9, s3, zero
  ADD s10, s2, zero
  ADD s11, s1, zero
  ADD t0, s0, zero
  SLTI a5, t0, 16
  XOR a6, a5, zero
  SLTU a5, zero, a6
  BNE a5, zero, bb667
  JAL zero, bb668
bb667:
  ADDI a5, zero, 2
  REMW a6, s9, a5
  XOR a5, a6, zero
  SLTU a6, zero, a5
  BNE a6, zero, bb669
  JAL zero, bb670
bb668:
  JAL zero, bb675
bb669:
  ADDI a5, zero, 2
  REMW a6, s10, a5
  XOR a5, a6, zero
  SLTU a6, zero, a5
  ADD a5, a6, zero
  JAL zero, bb671
bb670:
  ADD a5, zero, zero
  JAL zero, bb671
bb671:
  ADD a6, a5, zero
  BNE a6, zero, bb672
  JAL zero, bb870
bb672:
  ADDI a7, zero, 4
  MULW s8, t0, a7
  LA a7, SHIFT_TABLE
  ADD s7, a7, s8
  LW s8, 0(s7)
  ADDI s7, zero, 1
  MULW a7, s8, s7
  ADDW s7, s6, a7
  ADD s8, s7, zero
  JAL zero, bb673
bb673:
  ADD s7, s8, zero
  ADDI a7, zero, 2
  DIVW a4, s9, a7
  ADDI a7, zero, 2
  DIVW s4, s10, a7
  ADDIW a7, t0, 1
  ADD s0, a7, zero
  ADD s1, a6, zero
  ADD s2, s4, zero
  ADD s3, a4, zero
  ADD s5, s7, zero
  JAL zero, bb666
bb674:
  ADD s3, s2, zero
  ADD s2, s1, zero
  ADD s1, s0, zero
  ADD t2, s1, zero
  ADD a1, s2, zero
  LUI t4, 2
  ADDI t4, t4, 112
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t1, t4, zero
  ADD a2, s11, zero
  LUI t3, 2
  ADDI t3, t3, 112
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, 120
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s3, zero
  LUI t5, 2
  ADDI t5, t5, 104
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb653
bb675:
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 4
  LW s0, 0(s1)
  MULW s1, s6, s0
  LUI t4, 2
  ADDI t4, t4, 8
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s0, t4, zero
  ADD s2, zero, zero
  LUI s3, 16
  ADDI s3, s3, -1
  ADD s4, zero, s3
  ADD s3, s1, zero
  ADD s1, zero, zero
  JAL zero, bb676
bb676:
  ADD s5, s1, zero
  ADD s6, s3, zero
  ADD s7, s4, zero
  ADD s8, s2, zero
  ADD s9, s0, zero
  SLTI s10, s8, 16
  XOR t0, s10, zero
  SLTU s10, zero, t0
  BNE s10, zero, bb677
  JAL zero, bb678
bb677:
  ADDI s10, zero, 2
  REMW t0, s6, s10
  XOR s10, t0, zero
  SLTU t0, zero, s10
  BNE t0, zero, bb679
  JAL zero, bb680
bb678:
  ADD s0, s9, zero
  ADD s1, s8, zero
  ADD s2, s5, zero
  JAL zero, bb674
bb679:
  ADDI s10, zero, 2
  REMW t0, s7, s10
  XOR s10, t0, zero
  SLTU t0, zero, s10
  ADD s10, t0, zero
  JAL zero, bb681
bb680:
  ADD s10, zero, zero
  JAL zero, bb681
bb681:
  ADD t0, s10, zero
  BNE t0, zero, bb682
  JAL zero, bb871
bb682:
  ADDI a4, zero, 4
  MULW a5, s8, a4
  LA a4, SHIFT_TABLE
  ADD a6, a4, a5
  LW a4, 0(a6)
  ADDI a5, zero, 1
  MULW a6, a4, a5
  ADDW a4, s5, a6
  ADD a5, a4, zero
  JAL zero, bb683
bb683:
  ADD a4, a5, zero
  ADDI a6, zero, 2
  DIVW a7, s6, a6
  ADDI a6, zero, 2
  DIVW a3, s7, a6
  ADDIW a6, s8, 1
  ADD s0, t0, zero
  ADD s2, a6, zero
  ADD s4, a3, zero
  ADD s3, a7, zero
  ADD s1, a4, zero
  JAL zero, bb676
bb684:
  LUI t4, 2
  ADDI t4, t4, -304
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s0, t4, zero
  BNE s0, zero, bb687
  JAL zero, bb689
bb685:
  ADD s0, s2, zero
  LUI t3, 2
  ADDI t3, t3, 8
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -128
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 16
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -136
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 24
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -144
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 32
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -152
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 56
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, -160
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s0, zero
  LUI t3, 2
  ADDI t3, t3, -168
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 64
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -176
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 72
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -184
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 80
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -192
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 40
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -200
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 88
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -208
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 48
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -216
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 40
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -224
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -248
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -232
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 96
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 2
  ADDI t5, t5, -256
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb609
bb686:
  JAL zero, bb690
bb687:
  LUI s0, 16
  ADDI s0, s0, -1
  ADD s1, zero, s0
  JAL zero, bb688
bb688:
  ADD s0, s1, zero
  ADD s2, s0, zero
  JAL zero, bb685
bb689:
  ADD s1, zero, zero
  JAL zero, bb688
bb690:
  LUI s0, 8
  ADDI s0, s0, -1
  LUI t4, 2
  ADDI t4, t4, -304
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s1, s0, t4
  BNE s1, zero, bb692
  JAL zero, bb694
bb691:
  ADD s1, s3, zero
  ADD s2, s1, zero
  JAL zero, bb685
bb692:
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 4
  LW s0, 0(s1)
  LUI t4, 2
  ADDI t4, t4, -304
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s1, t4, s0
  LUI s0, 16
  ADDI s0, s0, 0
  ADDW s3, s1, s0
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 60
  LW s0, 0(s1)
  SUBW s1, s3, s0
  ADD s0, s1, zero
  JAL zero, bb693
bb693:
  ADD s1, s0, zero
  ADD s3, s1, zero
  JAL zero, bb691
bb694:
  LA s1, SHIFT_TABLE
  ADDI s2, s1, 4
  LW s1, 0(s2)
  LUI t4, 2
  ADDI t4, t4, -304
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s2, t4, s1
  ADD s0, s2, zero
  JAL zero, bb693
bb695:
  LUI t3, 2
  ADDI t3, t3, 496
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 320
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 520
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 328
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 528
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 336
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 536
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 344
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 544
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 352
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 552
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 360
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 560
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 368
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 568
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 376
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 576
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 384
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 584
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 392
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 592
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 400
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 600
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 408
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 608
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 416
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 616
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 424
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 624
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI a1, 2
  ADDI a1, a1, 432
  ADD a1, a1, sp
  SW t4, 0(a1)
  LUI t4, 2
  ADDI t4, t4, 328
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR a1, t4, zero
  SLTU a7, zero, a1
  BNE a7, zero, bb696
  JAL zero, bb697
bb696:
  ADD a1, zero, zero
  LUI t4, 2
  ADDI t4, t4, 336
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD a7, t4, zero
  ADDI a6, zero, 1
  LUI t4, 2
  ADDI t4, t4, 328
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a5, t4, zero
  ADD a4, zero, zero
  JAL zero, bb698
bb697:
  ADDI s0, zero, 1
  SLTI s1, s0, 15
  XORI s0, s1, 1
  BNE s0, zero, bb781
  JAL zero, bb783
bb698:
  ADD a3, a4, zero
  ADD a2, a5, zero
  ADD t2, a6, zero
  ADD t4, a7, zero
  LUI t6, 2
  ADDI t6, t6, 504
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, a1, zero
  LUI t1, 2
  ADDI t1, t1, 512
  ADD t1, t1, sp
  SW t4, 0(t1)
  LUI t4, 2
  ADDI t4, t4, 512
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI t1, t4, 16
  XOR t0, t1, zero
  SLTU t1, zero, t0
  BNE t1, zero, bb699
  JAL zero, bb700
bb699:
  ADDI t0, zero, 2
  REMW t1, a2, t0
  XOR t0, t1, zero
  SLTU t1, zero, t0
  BNE t1, zero, bb701
  JAL zero, bb702
bb700:
  XOR s6, a3, zero
  SLTU s8, zero, s6
  BNE s8, zero, bb706
  JAL zero, bb873
bb701:
  ADDI t0, zero, 2
  REMW t1, t2, t0
  XOR t0, t1, zero
  SLTU t1, zero, t0
  ADD t0, t1, zero
  JAL zero, bb703
bb702:
  ADD t0, zero, zero
  JAL zero, bb703
bb703:
  ADD t1, t0, zero
  BNE t1, zero, bb704
  JAL zero, bb872
bb704:
  ADDI s11, zero, 4
  LUI t4, 2
  ADDI t4, t4, 512
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s10, t4, s11
  LA s11, SHIFT_TABLE
  ADD s9, s11, s10
  LW s10, 0(s9)
  ADDI s9, zero, 1
  MULW s11, s10, s9
  ADDW s9, a3, s11
  ADD s10, s9, zero
  JAL zero, bb705
bb705:
  ADD s9, s10, zero
  ADDI s11, zero, 2
  DIVW s8, a2, s11
  ADDI s11, zero, 2
  DIVW s6, t2, s11
  LUI t4, 2
  ADDI t4, t4, 512
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s11, t4, 1
  ADD a1, s11, zero
  ADD a7, t1, zero
  ADD a6, s6, zero
  ADD a5, s8, zero
  ADD a4, s9, zero
  JAL zero, bb698
bb706:
  LUI t4, 2
  ADDI t4, t4, 512
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s6, t4, zero
  LUI t4, 2
  ADDI t4, t4, 408
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s8, t4, zero
  LUI t4, 2
  ADDI t4, t4, 392
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s9, t4, zero
  LUI t4, 2
  ADDI t4, t4, 360
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s10, t4, zero
  LUI t3, 2
  ADDI t3, t3, 400
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 696
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 320
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 2
  ADDI t5, t5, 688
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb708
bb707:
  LUI t3, 2
  ADDI t3, t3, 704
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 848
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 712
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 840
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 720
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 832
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 728
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 824
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 736
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 816
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 744
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t1, 2
  ADDI t1, t1, 808
  ADD t1, t1, sp
  SB t4, 0(t1)
  LUI t4, 2
  ADDI t4, t4, 752
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t1, t4, zero
  LUI t4, 2
  ADDI t4, t4, 400
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t2, t4, zero
  LUI t4, 2
  ADDI t4, t4, 424
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD a1, t4, zero
  ADD a2, t1, zero
  LUI t4, 2
  ADDI t4, t4, 384
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD t1, t4, zero
  LUI t3, 2
  ADDI t3, t3, 368
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 872
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 400
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, 864
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb739
bb708:
  LUI t3, 2
  ADDI t3, t3, 688
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 632
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 696
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 2
  ADDI t5, t5, 640
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s10, zero
  LUI t6, 2
  ADDI t6, t6, 648
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s9, zero
  LUI t5, 2
  ADDI t5, t5, 656
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s8, zero
  LUI t6, 2
  ADDI t6, t6, 664
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, s6, zero
  LUI a5, 2
  ADDI a5, a5, 672
  ADD a5, a5, sp
  SW t4, 0(a5)
  LUI t4, 2
  ADDI t4, t4, 640
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR a5, t4, zero
  SLTU a6, zero, a5
  BNE a6, zero, bb709
  JAL zero, bb710
bb709:
  ADD a5, zero, zero
  LUI t4, 2
  ADDI t4, t4, 640
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a6, t4, zero
  LUI t4, 2
  ADDI t4, t4, 648
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a7, t4, zero
  ADD s0, zero, zero
  JAL zero, bb711
bb710:
  LUI t3, 2
  ADDI t3, t3, 672
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 752
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 664
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 744
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 656
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 736
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 648
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 728
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 648
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 720
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 640
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 712
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 632
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 2
  ADDI t5, t5, 704
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb707
bb711:
  ADD s1, s0, zero
  ADD s2, a7, zero
  ADD s7, a6, zero
  ADD s3, a5, zero
  SLTI s4, s3, 16
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb712
  JAL zero, bb713
bb712:
  ADDI s4, zero, 2
  REMW s5, s2, s4
  XOR s4, s5, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb714
  JAL zero, bb716
bb713:
  ADD s0, zero, zero
  LUI t4, 2
  ADDI t4, t4, 632
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  LUI t4, 2
  ADDI t4, t4, 640
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  LUI t4, 2
  ADDI t4, t4, 648
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s4, t4, zero
  ADD s5, zero, zero
  JAL zero, bb721
bb714:
  ADDI s4, zero, 2
  REMW s5, s7, s4
  XOR s4, s5, zero
  SLTIU s5, s4, 1
  BNE s5, zero, bb717
  JAL zero, bb874
bb715:
  ADD s4, t1, zero
  ADDI t2, zero, 2
  DIVW a1, s2, t2
  ADDI t2, zero, 2
  DIVW a2, s7, t2
  ADDIW t2, s3, 1
  ADD a5, t2, zero
  ADD a6, a2, zero
  ADD a7, a1, zero
  ADD s0, s4, zero
  JAL zero, bb711
bb716:
  ADDI s0, zero, 2
  REMW s4, s7, s0
  XOR s0, s4, zero
  SLTU s4, zero, s0
  BNE s4, zero, bb719
  JAL zero, bb875
bb717:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LA s4, SHIFT_TABLE
  ADD t1, s4, s5
  LW s4, 0(t1)
  ADDI s5, zero, 1
  MULW t1, s4, s5
  ADDW s4, s1, t1
  ADD s5, s4, zero
  JAL zero, bb718
bb718:
  ADD s4, s5, zero
  ADD t1, s4, zero
  JAL zero, bb715
bb719:
  ADDI s0, zero, 4
  MULW s4, s3, s0
  LA s0, SHIFT_TABLE
  ADD s5, s0, s4
  LW s0, 0(s5)
  ADDI s4, zero, 1
  MULW s5, s0, s4
  ADDW s0, s1, s5
  ADD s4, s0, zero
  JAL zero, bb720
bb720:
  ADD s0, s4, zero
  ADD t1, s0, zero
  JAL zero, bb715
bb721:
  ADD s7, s5, zero
  ADD t1, s4, zero
  ADD t2, s3, zero
  ADD t4, s2, zero
  LUI a2, 2
  ADDI a2, a2, 680
  ADD a2, a2, sp
  SB t4, 0(a2)
  ADD a2, s0, zero
  SLTI a5, a2, 16
  XOR a6, a5, zero
  SLTU a5, zero, a6
  BNE a5, zero, bb722
  JAL zero, bb723
bb722:
  ADDI a5, zero, 2
  REMW a6, t1, a5
  XOR a5, a6, zero
  SLTU a6, zero, a5
  BNE a6, zero, bb724
  JAL zero, bb725
bb723:
  JAL zero, bb730
bb724:
  ADDI a5, zero, 2
  REMW a6, t2, a5
  XOR a5, a6, zero
  SLTU a6, zero, a5
  ADD a5, a6, zero
  JAL zero, bb726
bb725:
  ADD a5, zero, zero
  JAL zero, bb726
bb726:
  ADD a6, a5, zero
  BNE a6, zero, bb727
  JAL zero, bb876
bb727:
  ADDI a7, zero, 4
  MULW a3, a2, a7
  LA a7, SHIFT_TABLE
  ADD a4, a7, a3
  LW a3, 0(a4)
  ADDI a4, zero, 1
  MULW a7, a3, a4
  ADDW a3, s7, a7
  ADD a4, a3, zero
  JAL zero, bb728
bb728:
  ADD a3, a4, zero
  ADDI a7, zero, 2
  DIVW a1, t1, a7
  ADDI a7, zero, 2
  DIVW t0, t2, a7
  ADDIW a7, a2, 1
  ADD s0, a7, zero
  ADD s2, a6, zero
  ADD s3, t0, zero
  ADD s4, a1, zero
  ADD s5, a3, zero
  JAL zero, bb721
bb729:
  ADD s4, s3, zero
  ADD s3, s2, zero
  ADD s2, s0, zero
  ADD s6, s2, zero
  ADD s8, s3, zero
  ADD s9, s1, zero
  ADD s10, s1, zero
  ADD t4, s4, zero
  LUI t3, 2
  ADDI t3, t3, 696
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 680
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, 688
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb708
bb730:
  LA s0, SHIFT_TABLE
  ADDI s2, s0, 4
  LW s0, 0(s2)
  MULW s2, s7, s0
  ADD s0, zero, zero
  LUI t4, 2
  ADDI t4, t4, 664
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  LUI s4, 16
  ADDI s4, s4, -1
  ADD s5, zero, s4
  ADD s4, s2, zero
  ADD s2, zero, zero
  JAL zero, bb731
bb731:
  ADD s7, s2, zero
  ADD t0, s4, zero
  ADD t1, s5, zero
  ADD t2, s3, zero
  ADD a1, s0, zero
  SLTI a2, a1, 16
  XOR a3, a2, zero
  SLTU a2, zero, a3
  BNE a2, zero, bb732
  JAL zero, bb733
bb732:
  ADDI a2, zero, 2
  REMW a3, t0, a2
  XOR a2, a3, zero
  SLTU a3, zero, a2
  BNE a3, zero, bb734
  JAL zero, bb735
bb733:
  ADD s0, a1, zero
  ADD s2, t2, zero
  ADD s3, s7, zero
  JAL zero, bb729
bb734:
  ADDI a2, zero, 2
  REMW a3, t1, a2
  XOR a2, a3, zero
  SLTU a3, zero, a2
  ADD a2, a3, zero
  JAL zero, bb736
bb735:
  ADD a2, zero, zero
  JAL zero, bb736
bb736:
  ADD a3, a2, zero
  BNE a3, zero, bb737
  JAL zero, bb877
bb737:
  ADDI a4, zero, 4
  MULW a5, a1, a4
  LA a4, SHIFT_TABLE
  ADD a6, a4, a5
  LW a4, 0(a6)
  ADDI a5, zero, 1
  MULW a6, a4, a5
  ADDW a4, s7, a6
  ADD a5, a4, zero
  JAL zero, bb738
bb738:
  ADD a4, a5, zero
  ADDI a6, zero, 2
  DIVW a7, t0, a6
  ADDI a6, zero, 2
  DIVW s11, t1, a6
  ADDIW a6, a1, 1
  ADD s0, a6, zero
  ADD s3, a3, zero
  ADD s5, s11, zero
  ADD s4, a7, zero
  ADD s2, a4, zero
  JAL zero, bb731
bb739:
  LUI t3, 2
  ADDI t3, t3, 864
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 800
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 872
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 2
  ADDI t5, t5, 792
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t1, zero
  LUI t6, 2
  ADDI t6, t6, 784
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, a2, zero
  LUI t5, 2
  ADDI t5, t5, 776
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a1, zero
  LUI t6, 2
  ADDI t6, t6, 768
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, t2, zero
  LUI t5, 2
  ADDI t5, t5, 760
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 2
  ADDI t4, t4, 760
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s3, t4, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb740
  JAL zero, bb741
bb740:
  ADD s2, zero, zero
  LUI t4, 2
  ADDI t4, t4, 760
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  LUI t4, 2
  ADDI t4, t4, 800
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  ADD s0, zero, zero
  JAL zero, bb742
bb741:
  ADDI s0, zero, 1
  SLTI s1, s0, 15
  XORI s0, s1, 1
  BNE s0, zero, bb770
  JAL zero, bb772
bb742:
  ADD t4, s0, zero
  LUI t6, 2
  ADDI t6, t6, 856
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD s5, s1, zero
  ADD s6, s3, zero
  ADD a7, s2, zero
  SLTI a6, a7, 16
  XOR a5, a6, zero
  SLTU a6, zero, a5
  BNE a6, zero, bb743
  JAL zero, bb744
bb743:
  ADDI a5, zero, 2
  REMW a6, s5, a5
  XOR a5, a6, zero
  SLTU a6, zero, a5
  BNE a6, zero, bb745
  JAL zero, bb747
bb744:
  ADD s0, zero, zero
  LUI t4, 2
  ADDI t4, t4, 784
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s1, t4, zero
  LUI t4, 2
  ADDI t4, t4, 760
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  LUI t4, 2
  ADDI t4, t4, 800
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  ADD s5, zero, zero
  JAL zero, bb752
bb745:
  ADDI a5, zero, 2
  REMW a6, s6, a5
  XOR a5, a6, zero
  SLTIU a6, a5, 1
  BNE a6, zero, bb748
  JAL zero, bb878
bb746:
  ADD t0, a6, zero
  ADDI s11, zero, 2
  DIVW s10, s5, s11
  ADDI s11, zero, 2
  DIVW s9, s6, s11
  ADDIW s11, a7, 1
  ADD s2, s11, zero
  ADD s3, s9, zero
  ADD s1, s10, zero
  ADD s0, t0, zero
  JAL zero, bb742
bb747:
  ADDI s0, zero, 2
  REMW s1, s6, s0
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb750
  JAL zero, bb879
bb748:
  ADDI a5, zero, 4
  MULW a6, a7, a5
  LA a5, SHIFT_TABLE
  ADD t0, a5, a6
  LW a5, 0(t0)
  ADDI t0, zero, 1
  MULW a6, a5, t0
  LUI t4, 2
  ADDI t4, t4, 856
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW t0, t4, a6
  ADD a5, t0, zero
  JAL zero, bb749
bb749:
  ADD t0, a5, zero
  ADD a6, t0, zero
  JAL zero, bb746
bb750:
  ADDI s0, zero, 4
  MULW s1, a7, s0
  LA s0, SHIFT_TABLE
  ADD s2, s0, s1
  LW s0, 0(s2)
  ADDI s1, zero, 1
  MULW s2, s0, s1
  LUI t4, 2
  ADDI t4, t4, 856
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDW s0, t4, s2
  ADD s1, s0, zero
  JAL zero, bb751
bb751:
  ADD s0, s1, zero
  ADD a6, s0, zero
  JAL zero, bb746
bb752:
  ADD s6, s5, zero
  ADD s9, s3, zero
  ADD s10, s2, zero
  ADD s11, s1, zero
  ADD t0, s0, zero
  SLTI a5, t0, 16
  XOR a6, a5, zero
  SLTU a5, zero, a6
  BNE a5, zero, bb753
  JAL zero, bb754
bb753:
  ADDI a5, zero, 2
  REMW a6, s9, a5
  XOR a5, a6, zero
  SLTU a6, zero, a5
  BNE a6, zero, bb755
  JAL zero, bb756
bb754:
  JAL zero, bb761
bb755:
  ADDI a5, zero, 2
  REMW a6, s10, a5
  XOR a5, a6, zero
  SLTU a6, zero, a5
  ADD a5, a6, zero
  JAL zero, bb757
bb756:
  ADD a5, zero, zero
  JAL zero, bb757
bb757:
  ADD a6, a5, zero
  BNE a6, zero, bb758
  JAL zero, bb880
bb758:
  ADDI a7, zero, 4
  MULW s8, t0, a7
  LA a7, SHIFT_TABLE
  ADD s7, a7, s8
  LW s8, 0(s7)
  ADDI s7, zero, 1
  MULW a7, s8, s7
  ADDW s7, s6, a7
  ADD s8, s7, zero
  JAL zero, bb759
bb759:
  ADD s7, s8, zero
  ADDI a7, zero, 2
  DIVW s4, s9, a7
  ADDI a7, zero, 2
  DIVW a4, s10, a7
  ADDIW a7, t0, 1
  ADD s0, a7, zero
  ADD s1, a6, zero
  ADD s2, a4, zero
  ADD s3, s4, zero
  ADD s5, s7, zero
  JAL zero, bb752
bb760:
  ADD s3, s2, zero
  ADD s2, s1, zero
  ADD s1, s0, zero
  ADD t2, s3, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  ADD t1, s11, zero
  LUI t3, 2
  ADDI t3, t3, 856
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 872
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 856
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 2
  ADDI t5, t5, 864
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb739
bb761:
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 4
  LW s0, 0(s1)
  MULW s1, s6, s0
  LUI t4, 2
  ADDI t4, t4, 768
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s0, t4, zero
  ADD s2, zero, zero
  LUI s3, 16
  ADDI s3, s3, -1
  ADD s4, zero, s3
  ADD s3, s1, zero
  ADD s1, zero, zero
  JAL zero, bb762
bb762:
  ADD s5, s1, zero
  ADD s6, s3, zero
  ADD s7, s4, zero
  ADD s8, s2, zero
  ADD s9, s0, zero
  SLTI s10, s8, 16
  XOR t0, s10, zero
  SLTU s10, zero, t0
  BNE s10, zero, bb763
  JAL zero, bb764
bb763:
  ADDI s10, zero, 2
  REMW t0, s6, s10
  XOR s10, t0, zero
  SLTU t0, zero, s10
  BNE t0, zero, bb765
  JAL zero, bb766
bb764:
  ADD s0, s9, zero
  ADD s1, s8, zero
  ADD s2, s5, zero
  JAL zero, bb760
bb765:
  ADDI s10, zero, 2
  REMW t0, s7, s10
  XOR s10, t0, zero
  SLTU t0, zero, s10
  ADD s10, t0, zero
  JAL zero, bb767
bb766:
  ADD s10, zero, zero
  JAL zero, bb767
bb767:
  ADD t0, s10, zero
  BNE t0, zero, bb768
  JAL zero, bb881
bb768:
  ADDI a4, zero, 4
  MULW a5, s8, a4
  LA a4, SHIFT_TABLE
  ADD a6, a4, a5
  LW a4, 0(a6)
  ADDI a5, zero, 1
  MULW a6, a4, a5
  ADDW a4, s5, a6
  ADD a5, a4, zero
  JAL zero, bb769
bb769:
  ADD a4, a5, zero
  ADDI a6, zero, 2
  DIVW a7, s6, a6
  ADDI a6, zero, 2
  DIVW a3, s7, a6
  ADDIW a6, s8, 1
  ADD s0, t0, zero
  ADD s2, a6, zero
  ADD s4, a3, zero
  ADD s3, a7, zero
  ADD s1, a4, zero
  JAL zero, bb762
bb770:
  LUI t4, 2
  ADDI t4, t4, 328
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s0, t4, zero
  BNE s0, zero, bb773
  JAL zero, bb775
bb771:
  ADD s0, s2, zero
  LUI t3, 2
  ADDI t3, t3, 760
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 624
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 768
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 616
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 776
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 608
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 808
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 600
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 800
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 592
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 816
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 584
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 784
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 576
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 824
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 568
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 792
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 560
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 832
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 552
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 800
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 544
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 840
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 536
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 504
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, 528
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, s0, zero
  LUI t3, 2
  ADDI t3, t3, 520
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 848
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 2
  ADDI t5, t5, 496
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb695
bb772:
  JAL zero, bb776
bb773:
  LUI s0, 16
  ADDI s0, s0, -1
  ADD s1, zero, s0
  JAL zero, bb774
bb774:
  ADD s0, s1, zero
  ADD s2, s0, zero
  JAL zero, bb771
bb775:
  ADD s1, zero, zero
  JAL zero, bb774
bb776:
  LUI s0, 8
  ADDI s0, s0, -1
  LUI t4, 2
  ADDI t4, t4, 328
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s1, s0, t4
  BNE s1, zero, bb778
  JAL zero, bb780
bb777:
  ADD s1, s3, zero
  ADD s2, s1, zero
  JAL zero, bb771
bb778:
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 4
  LW s0, 0(s1)
  LUI t4, 2
  ADDI t4, t4, 328
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s1, t4, s0
  LUI s0, 16
  ADDI s0, s0, 0
  ADDW s3, s1, s0
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 60
  LW s0, 0(s1)
  SUBW s1, s3, s0
  ADD s0, s1, zero
  JAL zero, bb779
bb779:
  ADD s1, s0, zero
  ADD s3, s1, zero
  JAL zero, bb777
bb780:
  LA s1, SHIFT_TABLE
  ADDI s2, s1, 4
  LW s1, 0(s2)
  LUI t4, 2
  ADDI t4, t4, 328
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s2, t4, s1
  ADD s0, s2, zero
  JAL zero, bb779
bb781:
  LUI t4, 2
  ADDI t4, t4, -624
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s0, t4, zero
  BNE s0, zero, bb784
  JAL zero, bb786
bb782:
  ADD s0, s3, zero
  ADD s4, s2, zero
  LUI t3, 2
  ADDI t3, t3, 432
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -384
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -496
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -392
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 424
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -400
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 256
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -408
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 416
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -416
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 408
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, -424
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, s0, zero
  LUI t3, 2
  ADDI t3, t3, -432
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 264
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -440
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 400
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -952
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 392
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -448
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 272
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -456
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 280
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -464
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 288
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -472
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 296
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -480
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 384
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -488
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 304
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -512
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 376
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -520
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 312
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -528
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 440
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -536
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 368
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -544
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 448
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -552
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 360
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -560
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 456
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -568
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 464
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -944
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 472
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -936
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 480
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -928
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 352
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -920
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 344
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -912
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 336
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -904
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 328
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -896
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 320
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 2
  ADDI t5, t5, -888
  ADD t5, t5, sp
  SB t4, 0(t5)
  ADDI t4, zero, 1
  LUI t3, 2
  ADDI t3, t3, -880
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 360
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -872
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 488
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, -864
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, s4, zero
  LUI t5, 2
  ADDI t5, t5, -856
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb596
bb783:
  JAL zero, bb787
bb784:
  LUI s0, 16
  ADDI s0, s0, -1
  ADD s1, zero, s0
  JAL zero, bb785
bb785:
  ADD s0, s1, zero
  LUI t4, 2
  ADDI t4, t4, -624
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  ADD s3, s0, zero
  JAL zero, bb782
bb786:
  ADD s1, zero, zero
  JAL zero, bb785
bb787:
  LUI s0, 8
  ADDI s0, s0, -1
  LUI t4, 2
  ADDI t4, t4, -624
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s1, s0, t4
  BNE s1, zero, bb789
  JAL zero, bb791
bb788:
  ADD s4, s5, zero
  ADD s5, s6, zero
  ADD s2, s5, zero
  ADD s3, s4, zero
  JAL zero, bb782
bb789:
  LA s0, SHIFT_TABLE
  ADDI s1, s0, 4
  LW s0, 0(s1)
  LUI t4, 2
  ADDI t4, t4, -624
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s1, t4, s0
  LUI s0, 16
  ADDI s0, s0, 0
  ADDW s4, s1, s0
  LA s0, SHIFT_TABLE
  ADDI s5, s0, 60
  LW s0, 0(s5)
  SUBW s5, s4, s0
  ADD s0, s1, zero
  ADD s1, s5, zero
  JAL zero, bb790
bb790:
  ADD s4, s1, zero
  ADD s5, s0, zero
  ADD s6, s5, zero
  ADD s5, s4, zero
  JAL zero, bb788
bb791:
  LA s2, SHIFT_TABLE
  ADDI s3, s2, 4
  LW s2, 0(s3)
  LUI t4, 2
  ADDI t4, t4, -624
  ADD t4, t4, sp
  LW t4, 0(t4)
  DIVW s3, t4, s2
  LUI t4, 2
  ADDI t4, t4, -624
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  ADD s1, s3, zero
  JAL zero, bb790
bb792:
  ADDI a0, zero, 1
  LUI t6, 2
  ADDI t6, t6, 880
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t5, 2
  ADDI t5, t5, 888
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t6, 2
  ADDI t6, t6, 896
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t5, 2
  ADDI t5, t5, 904
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t6, 2
  ADDI t6, t6, 912
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t5, 2
  ADDI t5, t5, 920
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t6, 2
  ADDI t6, t6, 928
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t5, 2
  ADDI t5, t5, 936
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 2
  ADDI t6, t6, 944
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t5, 2
  ADDI t5, t5, 952
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI ra, 2
  ADDI ra, ra, 960
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 2
  ADDI t6, t6, 968
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI t5, 2
  ADDI t5, t5, 976
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t0, 2
  ADDI t0, t0, 992
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb793:
  LUI t4, 2
  ADDI t4, t4, -1056
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  LUI t3, 2
  ADDI t3, t3, -576
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1064
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -584
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1072
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -592
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1080
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -600
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1088
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -608
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1096
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -616
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1104
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -640
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1112
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -648
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1120
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -656
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1128
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -664
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1136
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -672
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1144
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -680
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1152
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -688
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1160
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -696
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1168
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -704
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1176
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -712
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1184
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -720
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1192
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -728
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1200
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -736
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1208
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -744
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1216
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -752
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1224
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -760
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1232
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -768
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1320
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -776
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1312
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -784
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1304
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -792
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1296
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -800
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1288
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -808
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1280
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -816
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1272
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -824
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1264
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -840
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, -1256
  ADD t6, t6, sp
  SB t4, 0(t6)
  ADD t4, s0, zero
  LUI t3, 2
  ADDI t3, t3, -1248
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -848
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 2
  ADDI t5, t5, -1240
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb593
bb794:
  ADD ra, a2, zero
  JAL zero, bb12
bb795:
  LW t3, 304(sp)
  ADD t4, t3, zero
  SW t4, 1112(sp)
  LW t3, 296(sp)
  ADD t4, t3, zero
  SW t4, 1104(sp)
  LW t3, 280(sp)
  ADD t4, t3, zero
  SW t4, 1096(sp)
  LB t3, 272(sp)
  ADD t4, t3, zero
  SB t4, 1088(sp)
  LW t3, 264(sp)
  ADD t4, t3, zero
  SW t4, 1080(sp)
  LW t3, 256(sp)
  ADD t4, t3, zero
  SW t4, 1072(sp)
  LW t3, 248(sp)
  ADD t4, t3, zero
  SW t4, 1064(sp)
  LW t3, 232(sp)
  ADD t4, t3, zero
  SW t4, 1056(sp)
  LW t3, 224(sp)
  ADD t4, t3, zero
  SW t4, 1048(sp)
  LW t3, 376(sp)
  ADD t4, t3, zero
  SW t4, 1040(sp)
  LB t3, 184(sp)
  ADD t4, t3, zero
  SB t4, 1032(sp)
  LB t3, 176(sp)
  ADD t4, t3, zero
  SB t4, 1024(sp)
  LB t3, 152(sp)
  ADD t4, t3, zero
  SB t4, 1016(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 1008(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 1000(sp)
  LB t3, 72(sp)
  ADD t4, t3, zero
  SB t4, 992(sp)
  JAL zero, bb14
bb796:
  ADD a5, s6, zero
  JAL zero, bb25
bb797:
  LW t3, 608(sp)
  ADD t4, t3, zero
  SW t4, 880(sp)
  LW t3, 600(sp)
  ADD t4, t3, zero
  SW t4, 872(sp)
  LW t3, 648(sp)
  ADD t4, t3, zero
  SW t4, 864(sp)
  LB t3, 560(sp)
  ADD t4, t3, zero
  SB t4, 856(sp)
  LW t3, 536(sp)
  ADD t4, t3, zero
  SW t4, 848(sp)
  LW t3, 528(sp)
  ADD t4, t3, zero
  SW t4, 840(sp)
  LB t3, 520(sp)
  ADD t4, t3, zero
  SB t4, 832(sp)
  JAL zero, bb27
bb798:
  ADD s11, a0, zero
  JAL zero, bb38
bb799:
  ADD s7, a0, zero
  JAL zero, bb40
bb800:
  ADD a2, ra, zero
  JAL zero, bb48
bb801:
  ADD a5, s11, zero
  JAL zero, bb58
bb802:
  ADD a5, s1, zero
  JAL zero, bb69
bb803:
  ADD s3, s1, zero
  JAL zero, bb71
bb804:
  ADD s10, s6, zero
  JAL zero, bb79
bb805:
  ADD a5, s6, zero
  JAL zero, bb89
bb806:
  ADD s11, a1, zero
  JAL zero, bb111
bb807:
  LW t3, 1264(sp)
  ADD t4, t3, zero
  SW t4, 1600(sp)
  LB t3, 1256(sp)
  ADD t4, t3, zero
  SB t4, 1592(sp)
  LW t3, 1368(sp)
  ADD t4, t3, zero
  SW t4, 1584(sp)
  LW t3, 1232(sp)
  ADD t4, t3, zero
  SW t4, 1576(sp)
  LW t3, 1200(sp)
  ADD t4, t3, zero
  SW t4, 1568(sp)
  LW t3, 1192(sp)
  ADD t4, t3, zero
  SW t4, 1560(sp)
  LB t3, 1176(sp)
  ADD t4, t3, zero
  SB t4, 1552(sp)
  JAL zero, bb113
bb808:
  ADD s5, s1, zero
  JAL zero, bb124
bb809:
  ADD s4, s1, zero
  JAL zero, bb126
bb810:
  ADD a1, s6, zero
  JAL zero, bb134
bb811:
  ADD a5, s6, zero
  JAL zero, bb144
bb812:
  LW t4, 1704(sp)
  ADD a5, t4, zero
  JAL zero, bb155
bb813:
  LW t4, 1704(sp)
  ADD s3, t4, zero
  JAL zero, bb157
bb814:
  ADD s10, s6, zero
  JAL zero, bb165
bb815:
  ADD a5, s6, zero
  JAL zero, bb175
bb816:
  LUI t4, 1
  ADDI t4, t4, -1864
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  JAL zero, bb208
bb817:
  LUI t3, 1
  ADDI t3, t3, -1904
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -952
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -2000
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -960
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -2016
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -968
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -2032
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -976
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -2040
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -984
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -2048
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -992
  ADD t3, t3, sp
  SB t4, 0(t3)
  LB t3, 2040(sp)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1000
  ADD t3, t3, sp
  SB t4, 0(t3)
  LW t3, 2032(sp)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1008
  ADD t3, t3, sp
  SW t4, 0(t3)
  LB t3, 2024(sp)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1016
  ADD t3, t3, sp
  SB t4, 0(t3)
  LW t3, 2016(sp)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1024
  ADD t3, t3, sp
  SW t4, 0(t3)
  LW t3, 2008(sp)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1032
  ADD t3, t3, sp
  SW t4, 0(t3)
  LW t3, 2000(sp)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1040
  ADD t3, t3, sp
  SW t4, 0(t3)
  LB t3, 1992(sp)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1072
  ADD t3, t3, sp
  SB t4, 0(t3)
  LW t3, 1944(sp)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1064
  ADD t3, t3, sp
  SW t4, 0(t3)
  LB t3, 1904(sp)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1056
  ADD t3, t3, sp
  SB t4, 0(t3)
  LW t3, 1896(sp)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, -1048
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb210
bb818:
  LUI t4, 1
  ADDI t4, t4, -1584
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  JAL zero, bb221
bb819:
  LUI t3, 1
  ADDI t3, t3, -1624
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1320
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1728
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1328
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1752
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1336
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1760
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1344
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1800
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1352
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1808
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -1360
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -1816
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, -1368
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb223
bb820:
  LUI t4, 1
  ADDI t4, t4, -1512
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  JAL zero, bb234
bb821:
  LUI t4, 1
  ADDI t4, t4, -1512
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  JAL zero, bb236
bb822:
  LUI t4, 1
  ADDI t4, t4, -1440
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  JAL zero, bb244
bb823:
  LUI t4, 1
  ADDI t4, t4, -1408
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  JAL zero, bb254
bb824:
  LUI t4, 1
  ADDI t4, t4, -1208
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  JAL zero, bb265
bb825:
  LUI t4, 1
  ADDI t4, t4, -1208
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  JAL zero, bb267
bb826:
  LUI t4, 1
  ADDI t4, t4, -1144
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  JAL zero, bb275
bb827:
  LUI t4, 1
  ADDI t4, t4, -1112
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  JAL zero, bb285
bb828:
  LUI t4, 1
  ADDI t4, t4, -568
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  JAL zero, bb307
bb829:
  LUI t3, 1
  ADDI t3, t3, -608
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -304
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -728
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -312
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -736
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -320
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -744
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -328
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -752
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -336
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -760
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, -344
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, -800
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, -352
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb309
bb830:
  LUI t4, 1
  ADDI t4, t4, -480
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  JAL zero, bb320
bb831:
  LUI t4, 1
  ADDI t4, t4, -480
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  JAL zero, bb322
bb832:
  LUI t4, 1
  ADDI t4, t4, -424
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  JAL zero, bb330
bb833:
  LUI t4, 1
  ADDI t4, t4, -392
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  JAL zero, bb340
bb834:
  LUI t4, 1
  ADDI t4, t4, -184
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s5, t4, zero
  JAL zero, bb351
bb835:
  LUI t4, 1
  ADDI t4, t4, -184
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  JAL zero, bb353
bb836:
  LUI t4, 1
  ADDI t4, t4, -128
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  JAL zero, bb361
bb837:
  LUI t4, 1
  ADDI t4, t4, -96
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  JAL zero, bb371
bb838:
  LUI t4, 1
  ADDI t4, t4, 968
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s5, t4, zero
  JAL zero, bb407
bb839:
  LUI t3, 1
  ADDI t3, t3, 928
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1880
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 832
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1872
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 800
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1864
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 792
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1856
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 784
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1848
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 776
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1840
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 760
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1832
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 752
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1824
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 728
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1816
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 720
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1808
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 704
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1800
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 688
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1792
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 616
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1760
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 608
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1768
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 600
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1776
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 584
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDI t5, t5, 1784
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb409
bb840:
  LUI t4, 1
  ADDI t4, t4, 1248
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  JAL zero, bb420
bb841:
  LUI t3, 1
  ADDI t3, t3, 1208
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1512
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1104
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1504
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1096
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1496
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1088
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1488
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1064
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1480
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1032
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDI t3, t3, 1472
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 1
  ADDI t3, t3, 1024
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDI t6, t6, 1464
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb422
bb842:
  LUI t4, 1
  ADDI t4, t4, 1320
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  JAL zero, bb433
bb843:
  LUI t4, 1
  ADDI t4, t4, 1320
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  JAL zero, bb435
bb844:
  LUI t4, 1
  ADDI t4, t4, 1392
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  JAL zero, bb443
bb845:
  LUI t4, 1
  ADDI t4, t4, 1424
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  JAL zero, bb453
bb846:
  LUI t4, 1
  ADDI t4, t4, 1616
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  JAL zero, bb464
bb847:
  LUI t4, 1
  ADDI t4, t4, 1616
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  JAL zero, bb466
bb848:
  LUI t4, 1
  ADDI t4, t4, 1688
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  JAL zero, bb474
bb849:
  LUI t4, 1
  ADDI t4, t4, 1720
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  JAL zero, bb484
bb850:
  LUI t4, 2
  ADDI t4, t4, -1832
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  JAL zero, bb506
bb851:
  LUI t3, 2
  ADDI t3, t3, -1952
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1568
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1872
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1576
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -1976
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1584
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -2000
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1592
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -2008
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1600
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -2024
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -1608
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -2040
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 2
  ADDI t5, t5, -1616
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb508
bb852:
  LUI t4, 2
  ADDI t4, t4, -1736
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  JAL zero, bb519
bb853:
  LUI t4, 2
  ADDI t4, t4, -1736
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  JAL zero, bb521
bb854:
  LUI t4, 2
  ADDI t4, t4, -1688
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  JAL zero, bb529
bb855:
  LUI t4, 2
  ADDI t4, t4, -1656
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  JAL zero, bb539
bb856:
  LUI t4, 2
  ADDI t4, t4, -1464
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  JAL zero, bb550
bb857:
  LUI t4, 2
  ADDI t4, t4, -1464
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  JAL zero, bb552
bb858:
  LUI t4, 2
  ADDI t4, t4, -1392
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  JAL zero, bb560
bb859:
  LUI t4, 2
  ADDI t4, t4, -1360
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  JAL zero, bb570
bb860:
  ADD a5, s3, zero
  JAL zero, bb606
bb861:
  LUI t3, 2
  ADDI t3, t3, -600
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 248
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -504
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 240
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -632
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 232
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -656
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 224
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -664
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 216
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -672
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 208
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -680
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 200
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -696
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 192
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -712
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 184
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -720
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 176
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -736
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 168
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -752
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 160
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -760
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 152
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -768
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 144
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -776
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 136
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -840
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, 128
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb608
bb862:
  ADD a3, s9, zero
  JAL zero, bb619
bb863:
  LUI t3, 2
  ADDI t3, t3, -240
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 0
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -296
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -8
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -312
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -16
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -320
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -24
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -328
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -32
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -344
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, -40
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, -376
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 2
  ADDI t5, t5, -48
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb621
bb864:
  LUI t4, 2
  ADDI t4, t4, -64
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  JAL zero, bb632
bb865:
  LUI t4, 2
  ADDI t4, t4, -64
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  JAL zero, bb634
bb866:
  ADD a4, s6, zero
  JAL zero, bb642
bb867:
  ADD a5, s5, zero
  JAL zero, bb652
bb868:
  LUI t4, 2
  ADDI t4, t4, 112
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a5, t4, zero
  JAL zero, bb663
bb869:
  LUI t4, 2
  ADDI t4, t4, 112
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  JAL zero, bb665
bb870:
  ADD s8, s6, zero
  JAL zero, bb673
bb871:
  ADD a5, s5, zero
  JAL zero, bb683
bb872:
  ADD s10, a3, zero
  JAL zero, bb705
bb873:
  LUI t3, 2
  ADDI t3, t3, 512
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 752
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 408
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 744
  ADD t3, t3, sp
  SB t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 392
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 736
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 376
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 728
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 360
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 720
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 344
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 2
  ADDI t3, t3, 712
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 2
  ADDI t3, t3, 320
  ADD t3, t3, sp
  LB t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 2
  ADDI t6, t6, 704
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb707
bb874:
  ADD s5, s1, zero
  JAL zero, bb718
bb875:
  ADD s4, s1, zero
  JAL zero, bb720
bb876:
  ADD a4, s7, zero
  JAL zero, bb728
bb877:
  ADD a5, s7, zero
  JAL zero, bb738
bb878:
  LUI t4, 2
  ADDI t4, t4, 856
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a5, t4, zero
  JAL zero, bb749
bb879:
  LUI t4, 2
  ADDI t4, t4, 856
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  JAL zero, bb751
bb880:
  ADD s8, s6, zero
  JAL zero, bb759
bb881:
  ADD a5, s5, zero
  JAL zero, bb769
