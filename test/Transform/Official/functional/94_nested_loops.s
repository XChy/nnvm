.global loop3
.global loop2
.global loop1
.global main
.section .bss
arr2:
.space 107520
arr1:
.space 57600
.section .data


.section .text
loop3:
  ADDI sp, sp, -992
  SD s4, 880(sp)
  SD s1, 888(sp)
  SD s5, 896(sp)
  SD s2, 904(sp)
  SD s3, 912(sp)
  SD s0, 920(sp)
  SD ra, 928(sp)
  SD s6, 936(sp)
  SD s11, 944(sp)
  SD s7, 952(sp)
  SD s10, 960(sp)
  SD s8, 968(sp)
  SD s9, 976(sp)
  ADD t4, a0, zero
  SW t4, 64(sp)
  ADD t4, a1, zero
  SW t4, 56(sp)
  ADD t4, a2, zero
  SW t4, 48(sp)
  ADD t4, a3, zero
  SW t4, 40(sp)
  ADD t4, a4, zero
  SW t4, 32(sp)
  ADD t4, a5, zero
  SW t4, 24(sp)
  ADD t4, a6, zero
  SW t4, 16(sp)
  ADD s7, zero, zero
  ADD s8, zero, zero
  ADD s9, zero, zero
  ADD s10, zero, zero
  ADD s11, zero, zero
  ADD t0, zero, zero
  ADD t1, zero, zero
  JAL zero, bb1
bb1:
  ADD t4, t1, zero
  SW t4, 0(sp)
  ADD a1, t0, zero
  ADD a2, s11, zero
  ADD a3, s10, zero
  ADD a4, s9, zero
  ADD a5, s8, zero
  ADD t4, s7, zero
  SW t4, 8(sp)
  LW t4, 8(sp)
  SLTI a7, t4, 10
  XOR t2, a7, zero
  SLTU a7, zero, t2
  BNE a7, zero, bb2
  JAL zero, bb36
bb2:
  ADD t2, a5, zero
  ADD a5, zero, zero
  ADD a7, a4, zero
  ADD t4, a3, zero
  SW t4, 872(sp)
  ADD t4, a2, zero
  SW t4, 856(sp)
  ADD t4, a1, zero
  SW t4, 840(sp)
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 824(sp)
  JAL zero, bb4
bb3:
  ADD a4, s6, zero
  ADD a0, a4, zero
  LD s4, 880(sp)
  LD s1, 888(sp)
  LD s5, 896(sp)
  LD s2, 904(sp)
  LD s3, 912(sp)
  LD s0, 920(sp)
  LD ra, 928(sp)
  LD s6, 936(sp)
  LD s11, 944(sp)
  LD s7, 952(sp)
  LD s10, 960(sp)
  LD s8, 968(sp)
  LD s9, 976(sp)
  ADDI sp, sp, 992
  JALR zero, 0(ra)
bb4:
  LW t3, 824(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 840(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 856(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t3, 872(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  ADD t4, a7, zero
  SW t4, 104(sp)
  ADD t4, a5, zero
  SW t4, 120(sp)
  ADD t4, t2, zero
  SW t4, 112(sp)
  LW t4, 120(sp)
  SLTI s0, t4, 100
  XOR a6, s0, zero
  SLTU s0, zero, a6
  BNE s0, zero, bb5
  JAL zero, bb37
bb5:
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 760(sp)
  ADD t4, zero, zero
  SW t4, 744(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 728(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 416(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 408(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 400(sp)
  JAL zero, bb7
bb6:
  LW t4, 800(sp)
  ADD s3, t4, zero
  LW t4, 792(sp)
  ADD s0, t4, zero
  LW t4, 784(sp)
  ADD a1, t4, zero
  LW t4, 776(sp)
  ADD s2, t4, zero
  LW t4, 808(sp)
  ADD a2, t4, zero
  LW t4, 816(sp)
  ADD s5, t4, zero
  LW t4, 8(sp)
  ADDIW a3, t4, 1
  LW t4, 64(sp)
  SLT s6, a3, t4
  XORI a4, s6, 1
  BNE a4, zero, bb34
  JAL zero, bb35
bb7:
  LW t3, 400(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t3, 408(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t3, 416(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t3, 728(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t3, 744(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  LW t3, 760(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LW t4, 160(sp)
  SLTI s1, t4, 1000
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb8
  JAL zero, bb38
bb8:
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 248(sp)
  ADD t4, zero, zero
  SW t4, 240(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  JAL zero, bb10
bb9:
  LW t3, 696(sp)
  ADD t4, t3, zero
  SW t4, 768(sp)
  LW t3, 688(sp)
  ADD t4, t3, zero
  SW t4, 832(sp)
  LW t3, 680(sp)
  ADD t4, t3, zero
  SW t4, 848(sp)
  LW t3, 672(sp)
  ADD t4, t3, zero
  SW t4, 864(sp)
  LW t4, 704(sp)
  ADD s4, t4, zero
  LW t4, 712(sp)
  ADD a6, t4, zero
  LW t4, 120(sp)
  ADDIW s1, t4, 1
  LW t4, 56(sp)
  SLT s0, s1, t4
  XORI s3, s0, 1
  BNE s3, zero, bb32
  JAL zero, bb33
bb10:
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  LW t3, 240(sp)
  ADD t4, t3, zero
  SW t4, 224(sp)
  LW t3, 248(sp)
  ADD t4, t3, zero
  SW t4, 232(sp)
  LUI s2, 2
  ADDI s2, s2, 1808
  LW t4, 224(sp)
  SLT s1, t4, s2
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb11
  JAL zero, bb39
bb11:
  LW t3, 232(sp)
  ADD t4, t3, zero
  SW t4, 312(sp)
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 304(sp)
  ADD t4, zero, zero
  SW t4, 256(sp)
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 264(sp)
  JAL zero, bb13
bb12:
  LW t3, 600(sp)
  ADD t4, t3, zero
  SW t4, 648(sp)
  LW t3, 592(sp)
  ADD t4, t3, zero
  SW t4, 656(sp)
  LW t3, 584(sp)
  ADD t4, t3, zero
  SW t4, 664(sp)
  LW t3, 608(sp)
  ADD t4, t3, zero
  SW t4, 720(sp)
  LW t3, 616(sp)
  ADD t4, t3, zero
  SW t4, 752(sp)
  LW t3, 160(sp)
  ADDIW t4, t3, 1
  SW t4, 736(sp)
  LW t4, 736(sp)
  LW t3, 48(sp)
  SLT s2, t4, t3
  XORI s3, s2, 1
  BNE s3, zero, bb30
  JAL zero, bb31
bb13:
  LW t3, 264(sp)
  ADD t4, t3, zero
  SW t4, 272(sp)
  LW t3, 256(sp)
  ADD t4, t3, zero
  SW t4, 280(sp)
  LW t3, 304(sp)
  ADD t4, t3, zero
  SW t4, 288(sp)
  LW t3, 312(sp)
  ADD t4, t3, zero
  SW t4, 296(sp)
  LUI s2, 24
  ADDI s2, s2, 1696
  LW t4, 280(sp)
  SLT s1, t4, s2
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb14
  JAL zero, bb40
bb14:
  LW t3, 296(sp)
  ADD t4, t3, zero
  SW t4, 360(sp)
  ADD t4, zero, zero
  SW t4, 352(sp)
  LW t3, 272(sp)
  ADD t4, t3, zero
  SW t4, 320(sp)
  JAL zero, bb16
bb15:
  LW t3, 520(sp)
  ADD t4, t3, zero
  SW t4, 568(sp)
  LW t3, 512(sp)
  ADD t4, t3, zero
  SW t4, 576(sp)
  LW t3, 528(sp)
  ADD t4, t3, zero
  SW t4, 624(sp)
  LW t3, 536(sp)
  ADD t4, t3, zero
  SW t4, 640(sp)
  LW t3, 224(sp)
  ADDIW t4, t3, 1
  SW t4, 632(sp)
  LW t4, 632(sp)
  LW t3, 40(sp)
  SLT s4, t4, t3
  XORI s2, s4, 1
  BNE s2, zero, bb28
  JAL zero, bb29
bb16:
  LW t3, 320(sp)
  ADD t4, t3, zero
  SW t4, 328(sp)
  LW t3, 352(sp)
  ADD t4, t3, zero
  SW t4, 336(sp)
  LW t3, 360(sp)
  ADD t4, t3, zero
  SW t4, 344(sp)
  LUI s2, 244
  ADDI s2, s2, 576
  LW t4, 336(sp)
  SLT s1, t4, s2
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb17
  JAL zero, bb41
bb17:
  ADD t4, zero, zero
  SW t4, 392(sp)
  LW t3, 328(sp)
  ADD t4, t3, zero
  SW t4, 384(sp)
  JAL zero, bb19
bb18:
  LW t3, 456(sp)
  ADD t4, t3, zero
  SW t4, 504(sp)
  LW t3, 464(sp)
  ADD t4, t3, zero
  SW t4, 552(sp)
  LW t3, 472(sp)
  ADD t4, t3, zero
  SW t4, 560(sp)
  LW t3, 280(sp)
  ADDIW t4, t3, 1
  SW t4, 544(sp)
  LW t4, 544(sp)
  LW t3, 32(sp)
  SLT s4, t4, t3
  XORI s2, s4, 1
  BNE s2, zero, bb26
  JAL zero, bb27
bb19:
  LW t3, 384(sp)
  ADD t4, t3, zero
  SW t4, 368(sp)
  LW t3, 392(sp)
  ADD t4, t3, zero
  SW t4, 376(sp)
  LUI s2, 2441
  ADDI s2, s2, 1664
  LW t4, 376(sp)
  SLT s1, t4, s2
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb20
  JAL zero, bb42
bb20:
  ADDI s1, zero, 817
  LW t4, 368(sp)
  REMW s2, t4, s1
  LUI s1, 1
  ADDI s1, s1, 1664
  LW t4, 8(sp)
  MULW s3, t4, s1
  LA s1, arr1
  ADD s4, s1, s3
  LUI s1, 1
  ADDI s1, s1, -1216
  LW t4, 120(sp)
  MULW s3, t4, s1
  ADD s1, s4, s3
  ADDI s3, zero, 960
  LW t4, 160(sp)
  MULW s4, t4, s3
  ADD s3, s1, s4
  ADDI s1, zero, 240
  LW t4, 224(sp)
  MULW s4, t4, s1
  ADD s1, s3, s4
  ADDI s3, zero, 48
  LW t4, 280(sp)
  MULW s4, t4, s3
  ADD s3, s1, s4
  ADDI s1, zero, 8
  LW t4, 336(sp)
  MULW s4, t4, s1
  ADD s1, s3, s4
  ADDI s3, zero, 4
  LW t4, 376(sp)
  MULW s4, t4, s3
  ADD s3, s1, s4
  LW s1, 0(s3)
  ADDW s3, s2, s1
  LUI s1, 3
  ADDI s1, s1, -1536
  LW t4, 8(sp)
  MULW s2, t4, s1
  LA s1, arr2
  ADD s5, s1, s2
  LUI s1, 1
  ADDI s1, s1, 1280
  LW t4, 120(sp)
  MULW s2, t4, s1
  ADD s1, s5, s2
  ADDI s2, zero, 1792
  LW t4, 160(sp)
  MULW s5, t4, s2
  ADD s2, s1, s5
  ADDI s1, zero, 896
  LW t4, 224(sp)
  MULW s5, t4, s1
  ADD s1, s2, s5
  ADDI s2, zero, 224
  LW t4, 280(sp)
  MULW s5, t4, s2
  ADD s2, s1, s5
  ADDI s1, zero, 28
  LW t4, 336(sp)
  MULW s5, t4, s1
  ADD s1, s2, s5
  ADD s2, s1, s4
  LW s1, 0(s2)
  ADDW t4, s3, s1
  SW t4, 440(sp)
  LW t3, 376(sp)
  ADDIW t4, t3, 1
  SW t4, 448(sp)
  LW t4, 448(sp)
  LW t3, 16(sp)
  SLT s3, t4, t3
  XORI s4, s3, 1
  BNE s4, zero, bb22
  JAL zero, bb23
bb21:
  LW t3, 424(sp)
  ADD t4, t3, zero
  SW t4, 480(sp)
  LW t3, 432(sp)
  ADD t4, t3, zero
  SW t4, 496(sp)
  LW t3, 336(sp)
  ADDIW t4, t3, 1
  SW t4, 488(sp)
  LW t4, 488(sp)
  LW t3, 24(sp)
  SLT s2, t4, t3
  XORI s1, s2, 1
  BNE s1, zero, bb24
  JAL zero, bb25
bb22:
  LW t3, 448(sp)
  ADD t4, t3, zero
  SW t4, 432(sp)
  LW t3, 440(sp)
  ADD t4, t3, zero
  SW t4, 424(sp)
  JAL zero, bb21
bb23:
  LW t3, 448(sp)
  ADD t4, t3, zero
  SW t4, 392(sp)
  LW t3, 440(sp)
  ADD t4, t3, zero
  SW t4, 384(sp)
  JAL zero, bb19
bb24:
  LW t3, 496(sp)
  ADD t4, t3, zero
  SW t4, 472(sp)
  LW t3, 488(sp)
  ADD t4, t3, zero
  SW t4, 464(sp)
  LW t3, 480(sp)
  ADD t4, t3, zero
  SW t4, 456(sp)
  JAL zero, bb18
bb25:
  LW t3, 496(sp)
  ADD t4, t3, zero
  SW t4, 360(sp)
  LW t3, 488(sp)
  ADD t4, t3, zero
  SW t4, 352(sp)
  LW t3, 480(sp)
  ADD t4, t3, zero
  SW t4, 320(sp)
  JAL zero, bb16
bb26:
  LW t3, 560(sp)
  ADD t4, t3, zero
  SW t4, 536(sp)
  LW t3, 552(sp)
  ADD t4, t3, zero
  SW t4, 528(sp)
  LW t3, 544(sp)
  ADD t4, t3, zero
  SW t4, 512(sp)
  LW t3, 504(sp)
  ADD t4, t3, zero
  SW t4, 520(sp)
  JAL zero, bb15
bb27:
  LW t3, 560(sp)
  ADD t4, t3, zero
  SW t4, 312(sp)
  LW t3, 552(sp)
  ADD t4, t3, zero
  SW t4, 304(sp)
  LW t3, 544(sp)
  ADD t4, t3, zero
  SW t4, 256(sp)
  LW t3, 504(sp)
  ADD t4, t3, zero
  SW t4, 264(sp)
  JAL zero, bb13
bb28:
  LW t3, 640(sp)
  ADD t4, t3, zero
  SW t4, 616(sp)
  LW t3, 632(sp)
  ADD t4, t3, zero
  SW t4, 608(sp)
  LW t3, 624(sp)
  ADD t4, t3, zero
  SW t4, 584(sp)
  LW t3, 576(sp)
  ADD t4, t3, zero
  SW t4, 592(sp)
  LW t3, 568(sp)
  ADD t4, t3, zero
  SW t4, 600(sp)
  JAL zero, bb12
bb29:
  LW t3, 640(sp)
  ADD t4, t3, zero
  SW t4, 248(sp)
  LW t3, 632(sp)
  ADD t4, t3, zero
  SW t4, 240(sp)
  LW t3, 624(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LW t3, 576(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LW t3, 568(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  JAL zero, bb10
bb30:
  LW t3, 752(sp)
  ADD t4, t3, zero
  SW t4, 712(sp)
  LW t3, 736(sp)
  ADD t4, t3, zero
  SW t4, 704(sp)
  LW t3, 720(sp)
  ADD t4, t3, zero
  SW t4, 672(sp)
  LW t3, 664(sp)
  ADD t4, t3, zero
  SW t4, 680(sp)
  LW t3, 656(sp)
  ADD t4, t3, zero
  SW t4, 688(sp)
  LW t3, 648(sp)
  ADD t4, t3, zero
  SW t4, 696(sp)
  JAL zero, bb9
bb31:
  LW t3, 752(sp)
  ADD t4, t3, zero
  SW t4, 760(sp)
  LW t3, 736(sp)
  ADD t4, t3, zero
  SW t4, 744(sp)
  LW t3, 720(sp)
  ADD t4, t3, zero
  SW t4, 728(sp)
  LW t3, 664(sp)
  ADD t4, t3, zero
  SW t4, 416(sp)
  LW t3, 656(sp)
  ADD t4, t3, zero
  SW t4, 408(sp)
  LW t3, 648(sp)
  ADD t4, t3, zero
  SW t4, 400(sp)
  JAL zero, bb7
bb32:
  ADD t4, a6, zero
  SW t4, 816(sp)
  ADD t4, s4, zero
  SW t4, 808(sp)
  LW t3, 864(sp)
  ADD t4, t3, zero
  SW t4, 776(sp)
  LW t3, 848(sp)
  ADD t4, t3, zero
  SW t4, 784(sp)
  LW t3, 832(sp)
  ADD t4, t3, zero
  SW t4, 792(sp)
  LW t3, 768(sp)
  ADD t4, t3, zero
  SW t4, 800(sp)
  JAL zero, bb6
bb33:
  ADD t2, a6, zero
  ADD a5, s1, zero
  ADD a7, s4, zero
  LW t3, 864(sp)
  ADD t4, t3, zero
  SW t4, 872(sp)
  LW t3, 848(sp)
  ADD t4, t3, zero
  SW t4, 856(sp)
  LW t3, 832(sp)
  ADD t4, t3, zero
  SW t4, 840(sp)
  LW t3, 768(sp)
  ADD t4, t3, zero
  SW t4, 824(sp)
  JAL zero, bb4
bb34:
  ADD s6, s3, zero
  JAL zero, bb3
bb35:
  ADD s7, a3, zero
  ADD s8, s5, zero
  ADD s9, a2, zero
  ADD s10, s2, zero
  ADD s11, a1, zero
  ADD t0, s0, zero
  ADD t1, s3, zero
  JAL zero, bb1
bb36:
  LW t4, 0(sp)
  ADD s6, t4, zero
  JAL zero, bb3
bb37:
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 816(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 808(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 776(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 784(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 792(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 800(sp)
  JAL zero, bb6
bb38:
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 712(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 704(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 672(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 680(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 688(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 696(sp)
  JAL zero, bb9
bb39:
  LW t3, 232(sp)
  ADD t4, t3, zero
  SW t4, 616(sp)
  LW t3, 224(sp)
  ADD t4, t3, zero
  SW t4, 608(sp)
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 584(sp)
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 592(sp)
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 600(sp)
  JAL zero, bb12
bb40:
  LW t3, 296(sp)
  ADD t4, t3, zero
  SW t4, 536(sp)
  LW t3, 288(sp)
  ADD t4, t3, zero
  SW t4, 528(sp)
  LW t3, 280(sp)
  ADD t4, t3, zero
  SW t4, 512(sp)
  LW t3, 272(sp)
  ADD t4, t3, zero
  SW t4, 520(sp)
  JAL zero, bb15
bb41:
  LW t3, 344(sp)
  ADD t4, t3, zero
  SW t4, 472(sp)
  LW t3, 336(sp)
  ADD t4, t3, zero
  SW t4, 464(sp)
  LW t3, 328(sp)
  ADD t4, t3, zero
  SW t4, 456(sp)
  JAL zero, bb18
bb42:
  LW t3, 376(sp)
  ADD t4, t3, zero
  SW t4, 432(sp)
  LW t3, 368(sp)
  ADD t4, t3, zero
  SW t4, 424(sp)
  JAL zero, bb21
loop2:
  ADDI sp, sp, -336
  SD s6, 232(sp)
  SD s5, 240(sp)
  SD s3, 248(sp)
  SD s4, 256(sp)
  SD s1, 264(sp)
  SD s2, 272(sp)
  SD s10, 280(sp)
  SD s7, 288(sp)
  SD s8, 296(sp)
  SD s9, 304(sp)
  SD s11, 312(sp)
  SD ra, 320(sp)
  SD s0, 328(sp)
  ADD t4, zero, zero
  SW t4, 80(sp)
  ADD t4, zero, zero
  SW t4, 64(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 0(sp)
  JAL zero, bb44
bb44:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t4, 16(sp)
  ADD s7, t4, zero
  LW t4, 32(sp)
  ADD s8, t4, zero
  LW t4, 48(sp)
  ADD s9, t4, zero
  LW t4, 64(sp)
  ADD s10, t4, zero
  LW t4, 80(sp)
  ADD s11, t4, zero
  LW t4, 88(sp)
  SLTI t0, t4, 10
  XOR t1, t0, zero
  SLTU t0, zero, t1
  BNE t0, zero, bb45
  JAL zero, bb46
bb45:
  ADD t4, s11, zero
  SW t4, 176(sp)
  ADD t4, s10, zero
  SW t4, 160(sp)
  ADD t4, s9, zero
  SW t4, 144(sp)
  ADD t4, s8, zero
  SW t4, 128(sp)
  ADD t4, s7, zero
  SW t4, 112(sp)
  ADD t4, zero, zero
  SW t4, 96(sp)
  JAL zero, bb47
bb46:
  LD s6, 232(sp)
  LD s5, 240(sp)
  LD s3, 248(sp)
  LD s4, 256(sp)
  LD s1, 264(sp)
  LD s2, 272(sp)
  LD s10, 280(sp)
  LD s7, 288(sp)
  LD s8, 296(sp)
  LD s9, 304(sp)
  LD s11, 312(sp)
  LD ra, 320(sp)
  LD s0, 328(sp)
  ADDI sp, sp, 336
  JALR zero, 0(ra)
bb47:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t4, 184(sp)
  SLTI a4, t4, 2
  XOR a5, a4, zero
  SLTU a4, zero, a5
  BNE a4, zero, bb48
  JAL zero, bb49
bb48:
  LW t4, 72(sp)
  ADD a4, t4, zero
  LW t4, 56(sp)
  ADD a5, t4, zero
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 224(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  ADD t4, zero, zero
  SW t4, 192(sp)
  JAL zero, bb50
bb49:
  LW t4, 88(sp)
  ADDIW s0, t4, 1
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb44
bb50:
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 224(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  ADD t4, a5, zero
  SW t4, 152(sp)
  ADD t4, a4, zero
  SW t4, 168(sp)
  LW t4, 104(sp)
  SLTI s2, t4, 3
  XOR a2, s2, zero
  SLTU s2, zero, a2
  BNE s2, zero, bb51
  JAL zero, bb52
bb51:
  LW t4, 168(sp)
  ADD s2, t4, zero
  LW t4, 152(sp)
  ADD a2, t4, zero
  LW t4, 136(sp)
  ADD s1, t4, zero
  ADD a3, zero, zero
  JAL zero, bb53
bb52:
  LW t4, 184(sp)
  ADDIW s0, t4, 1
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  ADD t4, s0, zero
  SW t4, 96(sp)
  JAL zero, bb47
bb53:
  ADD t4, a3, zero
  SW t4, 200(sp)
  ADD t4, s1, zero
  SW t4, 216(sp)
  ADD s7, a2, zero
  ADD t2, s2, zero
  LW t4, 200(sp)
  SLTI s8, t4, 2
  XOR s4, s8, zero
  SLTU s8, zero, s4
  BNE s8, zero, bb54
  JAL zero, bb55
bb54:
  ADD s4, t2, zero
  ADD s8, s7, zero
  ADD s9, zero, zero
  JAL zero, bb56
bb55:
  LW t4, 104(sp)
  ADDIW s0, t4, 1
  ADD a4, t2, zero
  ADD a5, s7, zero
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 224(sp)
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  ADD t4, s0, zero
  SW t4, 192(sp)
  JAL zero, bb50
bb56:
  ADD a0, s9, zero
  ADD s10, s8, zero
  ADD s3, s4, zero
  SLTI s11, a0, 4
  XOR a1, s11, zero
  SLTU s11, zero, a1
  BNE s11, zero, bb57
  JAL zero, bb58
bb57:
  ADD s11, s3, zero
  ADD a1, zero, zero
  JAL zero, bb59
bb58:
  LW t4, 200(sp)
  ADDIW s0, t4, 1
  ADD s2, s3, zero
  ADD a2, s10, zero
  ADD s1, a0, zero
  ADD a3, s0, zero
  JAL zero, bb53
bb59:
  ADD t0, a1, zero
  ADD t1, s11, zero
  SLTI s5, t0, 8
  XOR s0, s5, zero
  SLTU s5, zero, s0
  BNE s5, zero, bb60
  JAL zero, bb61
bb60:
  ADD s0, zero, zero
  JAL zero, bb62
bb61:
  ADDIW s0, a0, 1
  ADD s4, t1, zero
  ADD s8, t0, zero
  ADD s9, s0, zero
  JAL zero, bb56
bb62:
  ADD s5, s0, zero
  SLTI a7, s5, 7
  XOR s6, a7, zero
  SLTU a7, zero, s6
  BNE a7, zero, bb63
  JAL zero, bb64
bb63:
  LUI s6, 3
  ADDI s6, s6, -1536
  LW t4, 88(sp)
  MULW a7, t4, s6
  LA s6, arr2
  ADD a6, s6, a7
  LUI s6, 1
  ADDI s6, s6, 1280
  LW t4, 184(sp)
  MULW a7, t4, s6
  ADD s6, a6, a7
  ADDI a6, zero, 1792
  LW t4, 104(sp)
  MULW a7, t4, a6
  ADD a6, s6, a7
  ADDI s6, zero, 896
  LW t4, 200(sp)
  MULW a7, t4, s6
  ADD s6, a6, a7
  ADDI a6, zero, 224
  MULW a7, a0, a6
  ADD a6, s6, a7
  ADDI s6, zero, 28
  MULW a7, t0, s6
  ADD s6, a6, a7
  ADDI a6, zero, 4
  MULW a7, s5, a6
  ADD a6, s6, a7
  LW t4, 88(sp)
  LW t3, 184(sp)
  ADDW s6, t4, t3
  LW t4, 200(sp)
  ADDW a7, s6, t4
  ADDW s6, a7, s5
  SW s6, 0(a6)
  ADDIW s6, s5, 1
  ADD s0, s6, zero
  JAL zero, bb62
bb64:
  ADDIW s0, t0, 1
  ADD s11, s5, zero
  ADD a1, s0, zero
  JAL zero, bb59
loop1:
  ADDI sp, sp, -400
  SD s1, 296(sp)
  SD s2, 304(sp)
  SD s10, 312(sp)
  SD s5, 320(sp)
  SD s6, 328(sp)
  SD s7, 336(sp)
  SD s8, 344(sp)
  SD s4, 352(sp)
  SD ra, 360(sp)
  SD s11, 368(sp)
  SD s9, 376(sp)
  SD s0, 384(sp)
  SD s3, 392(sp)
  ADD t4, a0, zero
  SW t4, 56(sp)
  ADD t4, a1, zero
  SW t4, 48(sp)
  ADD t4, zero, zero
  SW t4, 152(sp)
  ADD t4, zero, zero
  SW t4, 136(sp)
  ADD t4, zero, zero
  SW t4, 120(sp)
  ADD t4, zero, zero
  SW t4, 104(sp)
  ADD t4, zero, zero
  SW t4, 88(sp)
  ADD t4, zero, zero
  SW t4, 72(sp)
  JAL zero, bb66
bb66:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 40(sp)
  LW t3, 56(sp)
  SLT t2, t4, t3
  BNE t2, zero, bb69
  JAL zero, bb70
bb67:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 240(sp)
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 224(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  ADD t4, zero, zero
  SW t4, 160(sp)
  JAL zero, bb72
bb68:
  LD s1, 296(sp)
  LD s2, 304(sp)
  LD s10, 312(sp)
  LD s5, 320(sp)
  LD s6, 328(sp)
  LD s7, 336(sp)
  LD s8, 344(sp)
  LD s4, 352(sp)
  LD ra, 360(sp)
  LD s11, 368(sp)
  LD s9, 376(sp)
  LD s0, 384(sp)
  LD s3, 392(sp)
  ADDI sp, sp, 400
  JALR zero, 0(ra)
bb69:
  LW t4, 40(sp)
  LW t3, 48(sp)
  SLT t2, t4, t3
  ADD t4, t2, zero
  SB t4, 64(sp)
  JAL zero, bb71
bb70:
  ADD t4, zero, zero
  SB t4, 64(sp)
  JAL zero, bb71
bb71:
  LB t4, 64(sp)
  ADD t2, t4, zero
  XOR a1, t2, zero
  SLTU t2, zero, a1
  BNE t2, zero, bb67
  JAL zero, bb68
bb72:
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 248(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t3, 224(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t3, 240(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t4, 248(sp)
  SLTI s9, t4, 2
  XOR s8, s9, zero
  SLTU s9, zero, s8
  BNE s9, zero, bb73
  JAL zero, bb74
bb73:
  LW t4, 144(sp)
  ADD s8, t4, zero
  LW t4, 128(sp)
  ADD s9, t4, zero
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 288(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 272(sp)
  ADD t4, zero, zero
  SW t4, 256(sp)
  JAL zero, bb75
bb74:
  LW t4, 40(sp)
  ADDIW s0, t4, 1
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  ADD t4, s0, zero
  SW t4, 72(sp)
  JAL zero, bb66
bb75:
  LW t3, 256(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LW t3, 272(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LW t3, 288(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  ADD t4, s9, zero
  SW t4, 216(sp)
  ADD t4, s8, zero
  SW t4, 232(sp)
  LW t4, 168(sp)
  SLTI t0, t4, 3
  XOR s4, t0, zero
  SLTU t0, zero, s4
  BNE t0, zero, bb76
  JAL zero, bb77
bb76:
  LW t4, 232(sp)
  ADD s4, t4, zero
  LW t4, 216(sp)
  ADD t0, t4, zero
  LW t4, 200(sp)
  ADD s11, t4, zero
  ADD s3, zero, zero
  JAL zero, bb78
bb77:
  LW t4, 248(sp)
  ADDIW s0, t4, 1
  LW t3, 232(sp)
  ADD t4, t3, zero
  SW t4, 240(sp)
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 224(sp)
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  ADD t4, s0, zero
  SW t4, 160(sp)
  JAL zero, bb72
bb78:
  ADD t4, s3, zero
  SW t4, 264(sp)
  ADD t4, s11, zero
  SW t4, 280(sp)
  ADD a5, t0, zero
  ADD s7, s4, zero
  LW t4, 264(sp)
  SLTI a4, t4, 4
  XOR a7, a4, zero
  SLTU a4, zero, a7
  BNE a4, zero, bb79
  JAL zero, bb80
bb79:
  ADD a4, zero, zero
  ADD a7, a5, zero
  LW t4, 280(sp)
  ADD a3, t4, zero
  JAL zero, bb81
bb80:
  LW t4, 168(sp)
  ADDIW s0, t4, 1
  ADD s8, s7, zero
  ADD s9, a5, zero
  LW t3, 280(sp)
  ADD t4, t3, zero
  SW t4, 288(sp)
  LW t3, 264(sp)
  ADD t4, t3, zero
  SW t4, 272(sp)
  ADD t4, s0, zero
  SW t4, 256(sp)
  JAL zero, bb75
bb81:
  ADD s6, a3, zero
  ADD a2, a7, zero
  ADD t1, a4, zero
  SLTI a1, t1, 5
  XOR s5, a1, zero
  SLTU a1, zero, s5
  BNE a1, zero, bb82
  JAL zero, bb83
bb82:
  ADD s5, a2, zero
  ADD a1, zero, zero
  JAL zero, bb84
bb83:
  LW t4, 264(sp)
  ADDIW s0, t4, 1
  ADD s4, t1, zero
  ADD t0, a2, zero
  ADD s11, s6, zero
  ADD s3, s0, zero
  JAL zero, bb78
bb84:
  ADD t2, a1, zero
  ADD a6, s5, zero
  SLTI a0, t2, 6
  XOR s10, a0, zero
  SLTU a0, zero, s10
  BNE a0, zero, bb85
  JAL zero, bb86
bb85:
  ADD s10, zero, zero
  JAL zero, bb87
bb86:
  ADDIW s0, t1, 1
  ADD a4, s0, zero
  ADD a7, a6, zero
  ADD a3, t2, zero
  JAL zero, bb81
bb87:
  ADD a0, s10, zero
  SLTI s0, a0, 2
  XOR s2, s0, zero
  SLTU s0, zero, s2
  BNE s0, zero, bb88
  JAL zero, bb89
bb88:
  LUI s0, 1
  ADDI s0, s0, 1664
  LW t4, 40(sp)
  MULW s2, t4, s0
  LA s0, arr1
  ADD s1, s0, s2
  LUI s0, 1
  ADDI s0, s0, -1216
  LW t4, 248(sp)
  MULW s2, t4, s0
  ADD s0, s1, s2
  ADDI s1, zero, 960
  LW t4, 168(sp)
  MULW s2, t4, s1
  ADD s1, s0, s2
  ADDI s0, zero, 240
  LW t4, 264(sp)
  MULW s2, t4, s0
  ADD s0, s1, s2
  ADDI s1, zero, 48
  MULW s2, t1, s1
  ADD s1, s0, s2
  ADDI s0, zero, 8
  MULW s2, t2, s0
  ADD s0, s1, s2
  ADDI s1, zero, 4
  MULW s2, a0, s1
  ADD s1, s0, s2
  LW t4, 40(sp)
  LW t3, 248(sp)
  ADDW s0, t4, t3
  LW t4, 168(sp)
  ADDW s2, s0, t4
  LW t4, 264(sp)
  ADDW s0, s2, t4
  ADDW s2, s0, t1
  ADDW s0, s2, t2
  ADDW s2, s0, a0
  LW t4, 56(sp)
  ADDW s0, s2, t4
  LW t4, 48(sp)
  ADDW s2, s0, t4
  SW s2, 0(s1)
  ADDIW s0, a0, 1
  ADD s10, s0, zero
  JAL zero, bb87
bb89:
  ADDIW s0, t2, 1
  ADD s5, a0, zero
  ADD a1, s0, zero
  JAL zero, bb84
main:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s7, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s8, 72(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  CALL getint
  ADD s2, a0, zero
  CALL getint
  ADD s3, a0, zero
  CALL getint
  ADD s4, a0, zero
  CALL getint
  ADD s5, a0, zero
  CALL getint
  ADD s6, a0, zero
  CALL getint
  ADD s7, a0, zero
  CALL getint
  ADD s8, a0, zero
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL loop1
  CALL loop2
  ADD a0, s2, zero
  ADD a1, s3, zero
  ADD a2, s4, zero
  ADD a3, s5, zero
  ADD a4, s6, zero
  ADD a5, s7, zero
  ADD a6, s8, zero
  CALL loop3
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s8, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
