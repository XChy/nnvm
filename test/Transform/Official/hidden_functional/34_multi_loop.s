.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -1024
  SD s7, 912(sp)
  SD s8, 920(sp)
  SD s2, 928(sp)
  SD s1, 936(sp)
  SD s9, 944(sp)
  SD s11, 952(sp)
  SD s5, 960(sp)
  SD s4, 968(sp)
  SD s10, 976(sp)
  SD ra, 984(sp)
  SD s0, 992(sp)
  SD s3, 1000(sp)
  SD s6, 1008(sp)
  ADD t4, zero, zero
  SW t4, 224(sp)
  ADD t4, zero, zero
  SW t4, 208(sp)
  ADD t4, zero, zero
  SW t4, 192(sp)
  ADD t4, zero, zero
  SW t4, 176(sp)
  ADD t4, zero, zero
  SW t4, 160(sp)
  ADD t4, zero, zero
  SW t4, 144(sp)
  ADD t4, zero, zero
  SW t4, 128(sp)
  ADD t4, zero, zero
  SW t4, 112(sp)
  ADD t4, zero, zero
  SW t4, 96(sp)
  ADD t4, zero, zero
  SW t4, 80(sp)
  ADD t4, zero, zero
  SW t4, 64(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  ADD t4, zero, zero
  SW t4, 0(sp)
  JAL zero, bb1
bb1:
  LW t4, 8(sp)
  SLTI a0, t4, 3
  XOR a1, a0, zero
  SLTU a0, zero, a1
  BNE a0, zero, bb2
  JAL zero, bb3
bb2:
  LW t3, 224(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  ADD t4, zero, zero
  SW t4, 232(sp)
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb4
bb3:
  LW t4, 0(sp)
  ADD a0, t4, zero
  LD s7, 912(sp)
  LD s8, 920(sp)
  LD s2, 928(sp)
  LD s1, 936(sp)
  LD s9, 944(sp)
  LD s11, 952(sp)
  LD s5, 960(sp)
  LD s4, 968(sp)
  LD s10, 976(sp)
  LD ra, 984(sp)
  LD s0, 992(sp)
  LD s3, 1000(sp)
  LD s6, 1008(sp)
  ADDI sp, sp, 1024
  JALR zero, 0(ra)
bb4:
  LW t4, 232(sp)
  SLTI t0, t4, 4
  XOR s10, t0, zero
  SLTU t0, zero, s10
  BNE t0, zero, bb5
  JAL zero, bb6
bb5:
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 344(sp)
  ADD t4, zero, zero
  SW t4, 336(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 328(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 320(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 312(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 304(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 296(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 288(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 280(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 272(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 264(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 256(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 248(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 240(sp)
  JAL zero, bb7
bb6:
  LW t4, 8(sp)
  ADDIW s0, t4, 1
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
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  ADD t4, s0, zero
  SW t4, 8(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  JAL zero, bb1
bb7:
  LW t4, 336(sp)
  SLTI a3, t4, 5
  XOR s3, a3, zero
  SLTU a3, zero, s3
  BNE a3, zero, bb8
  JAL zero, bb9
bb8:
  ADD t4, zero, zero
  SW t4, 448(sp)
  LW t3, 328(sp)
  ADD t4, t3, zero
  SW t4, 440(sp)
  LW t3, 320(sp)
  ADD t4, t3, zero
  SW t4, 432(sp)
  LW t3, 312(sp)
  ADD t4, t3, zero
  SW t4, 424(sp)
  LW t3, 304(sp)
  ADD t4, t3, zero
  SW t4, 416(sp)
  LW t3, 296(sp)
  ADD t4, t3, zero
  SW t4, 408(sp)
  LW t3, 288(sp)
  ADD t4, t3, zero
  SW t4, 400(sp)
  LW t3, 280(sp)
  ADD t4, t3, zero
  SW t4, 392(sp)
  LW t3, 272(sp)
  ADD t4, t3, zero
  SW t4, 384(sp)
  LW t3, 264(sp)
  ADD t4, t3, zero
  SW t4, 376(sp)
  LW t3, 256(sp)
  ADD t4, t3, zero
  SW t4, 368(sp)
  LW t3, 248(sp)
  ADD t4, t3, zero
  SW t4, 360(sp)
  LW t3, 240(sp)
  ADD t4, t3, zero
  SW t4, 352(sp)
  JAL zero, bb10
bb9:
  LW t4, 232(sp)
  ADDIW s0, t4, 1
  LW t3, 344(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  LW t3, 336(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  LW t3, 328(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LW t3, 320(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LW t3, 312(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t3, 304(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t3, 296(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 288(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t3, 280(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t3, 272(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 264(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 256(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 248(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  ADD t4, s0, zero
  SW t4, 232(sp)
  LW t3, 240(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb4
bb10:
  LW t4, 448(sp)
  SLTI s6, t4, 3
  XOR a6, s6, zero
  SLTU s6, zero, a6
  BNE s6, zero, bb11
  JAL zero, bb12
bb11:
  ADD t4, zero, zero
  SW t4, 544(sp)
  LW t3, 432(sp)
  ADD t4, t3, zero
  SW t4, 536(sp)
  LW t3, 424(sp)
  ADD t4, t3, zero
  SW t4, 528(sp)
  LW t3, 416(sp)
  ADD t4, t3, zero
  SW t4, 520(sp)
  LW t3, 408(sp)
  ADD t4, t3, zero
  SW t4, 512(sp)
  LW t3, 400(sp)
  ADD t4, t3, zero
  SW t4, 504(sp)
  LW t3, 392(sp)
  ADD t4, t3, zero
  SW t4, 496(sp)
  LW t3, 384(sp)
  ADD t4, t3, zero
  SW t4, 488(sp)
  LW t3, 376(sp)
  ADD t4, t3, zero
  SW t4, 480(sp)
  LW t3, 368(sp)
  ADD t4, t3, zero
  SW t4, 472(sp)
  LW t3, 360(sp)
  ADD t4, t3, zero
  SW t4, 464(sp)
  LW t3, 352(sp)
  ADD t4, t3, zero
  SW t4, 456(sp)
  JAL zero, bb13
bb12:
  LW t4, 336(sp)
  ADDIW s0, t4, 1
  LW t3, 448(sp)
  ADD t4, t3, zero
  SW t4, 344(sp)
  ADD t4, s0, zero
  SW t4, 336(sp)
  LW t3, 440(sp)
  ADD t4, t3, zero
  SW t4, 328(sp)
  LW t3, 432(sp)
  ADD t4, t3, zero
  SW t4, 320(sp)
  LW t3, 424(sp)
  ADD t4, t3, zero
  SW t4, 312(sp)
  LW t3, 416(sp)
  ADD t4, t3, zero
  SW t4, 304(sp)
  LW t3, 408(sp)
  ADD t4, t3, zero
  SW t4, 296(sp)
  LW t3, 400(sp)
  ADD t4, t3, zero
  SW t4, 288(sp)
  LW t3, 392(sp)
  ADD t4, t3, zero
  SW t4, 280(sp)
  LW t3, 384(sp)
  ADD t4, t3, zero
  SW t4, 272(sp)
  LW t3, 376(sp)
  ADD t4, t3, zero
  SW t4, 264(sp)
  LW t3, 368(sp)
  ADD t4, t3, zero
  SW t4, 256(sp)
  LW t3, 360(sp)
  ADD t4, t3, zero
  SW t4, 248(sp)
  LW t3, 352(sp)
  ADD t4, t3, zero
  SW t4, 240(sp)
  JAL zero, bb7
bb13:
  LW t4, 544(sp)
  SLTI a4, t4, 5
  XOR s4, a4, zero
  SLTU a4, zero, s4
  BNE a4, zero, bb14
  JAL zero, bb15
bb14:
  ADD t4, zero, zero
  SW t4, 632(sp)
  LW t3, 528(sp)
  ADD t4, t3, zero
  SW t4, 624(sp)
  LW t3, 520(sp)
  ADD t4, t3, zero
  SW t4, 616(sp)
  LW t3, 512(sp)
  ADD t4, t3, zero
  SW t4, 608(sp)
  LW t3, 504(sp)
  ADD t4, t3, zero
  SW t4, 600(sp)
  LW t3, 496(sp)
  ADD t4, t3, zero
  SW t4, 592(sp)
  LW t3, 488(sp)
  ADD t4, t3, zero
  SW t4, 584(sp)
  LW t3, 480(sp)
  ADD t4, t3, zero
  SW t4, 576(sp)
  LW t3, 472(sp)
  ADD t4, t3, zero
  SW t4, 568(sp)
  LW t3, 464(sp)
  ADD t4, t3, zero
  SW t4, 560(sp)
  LW t3, 456(sp)
  ADD t4, t3, zero
  SW t4, 552(sp)
  JAL zero, bb16
bb15:
  LW t4, 448(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 448(sp)
  LW t3, 544(sp)
  ADD t4, t3, zero
  SW t4, 440(sp)
  LW t3, 536(sp)
  ADD t4, t3, zero
  SW t4, 432(sp)
  LW t3, 528(sp)
  ADD t4, t3, zero
  SW t4, 424(sp)
  LW t3, 520(sp)
  ADD t4, t3, zero
  SW t4, 416(sp)
  LW t3, 512(sp)
  ADD t4, t3, zero
  SW t4, 408(sp)
  LW t3, 504(sp)
  ADD t4, t3, zero
  SW t4, 400(sp)
  LW t3, 496(sp)
  ADD t4, t3, zero
  SW t4, 392(sp)
  LW t3, 488(sp)
  ADD t4, t3, zero
  SW t4, 384(sp)
  LW t3, 480(sp)
  ADD t4, t3, zero
  SW t4, 376(sp)
  LW t3, 472(sp)
  ADD t4, t3, zero
  SW t4, 368(sp)
  LW t3, 464(sp)
  ADD t4, t3, zero
  SW t4, 360(sp)
  LW t3, 456(sp)
  ADD t4, t3, zero
  SW t4, 352(sp)
  JAL zero, bb10
bb16:
  LW t4, 632(sp)
  SLTI s5, t4, 4
  XOR a5, s5, zero
  SLTU s5, zero, a5
  BNE s5, zero, bb17
  JAL zero, bb18
bb17:
  ADD t4, zero, zero
  SW t4, 712(sp)
  LW t3, 616(sp)
  ADD t4, t3, zero
  SW t4, 704(sp)
  LW t3, 608(sp)
  ADD t4, t3, zero
  SW t4, 696(sp)
  LW t3, 600(sp)
  ADD t4, t3, zero
  SW t4, 688(sp)
  LW t3, 592(sp)
  ADD t4, t3, zero
  SW t4, 680(sp)
  LW t3, 584(sp)
  ADD t4, t3, zero
  SW t4, 672(sp)
  LW t3, 576(sp)
  ADD t4, t3, zero
  SW t4, 664(sp)
  LW t3, 568(sp)
  ADD t4, t3, zero
  SW t4, 656(sp)
  LW t3, 560(sp)
  ADD t4, t3, zero
  SW t4, 648(sp)
  LW t3, 552(sp)
  ADD t4, t3, zero
  SW t4, 640(sp)
  JAL zero, bb19
bb18:
  LW t4, 544(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 544(sp)
  LW t3, 632(sp)
  ADD t4, t3, zero
  SW t4, 536(sp)
  LW t3, 624(sp)
  ADD t4, t3, zero
  SW t4, 528(sp)
  LW t3, 616(sp)
  ADD t4, t3, zero
  SW t4, 520(sp)
  LW t3, 608(sp)
  ADD t4, t3, zero
  SW t4, 512(sp)
  LW t3, 600(sp)
  ADD t4, t3, zero
  SW t4, 504(sp)
  LW t3, 592(sp)
  ADD t4, t3, zero
  SW t4, 496(sp)
  LW t3, 584(sp)
  ADD t4, t3, zero
  SW t4, 488(sp)
  LW t3, 576(sp)
  ADD t4, t3, zero
  SW t4, 480(sp)
  LW t3, 568(sp)
  ADD t4, t3, zero
  SW t4, 472(sp)
  LW t3, 560(sp)
  ADD t4, t3, zero
  SW t4, 464(sp)
  LW t3, 552(sp)
  ADD t4, t3, zero
  SW t4, 456(sp)
  JAL zero, bb13
bb19:
  LW t4, 712(sp)
  SLTI a6, t4, 6
  XOR s6, a6, zero
  SLTU a6, zero, s6
  BNE a6, zero, bb20
  JAL zero, bb21
bb20:
  ADD t4, zero, zero
  SW t4, 784(sp)
  LW t3, 696(sp)
  ADD t4, t3, zero
  SW t4, 776(sp)
  LW t3, 688(sp)
  ADD t4, t3, zero
  SW t4, 768(sp)
  LW t3, 680(sp)
  ADD t4, t3, zero
  SW t4, 760(sp)
  LW t3, 672(sp)
  ADD t4, t3, zero
  SW t4, 752(sp)
  LW t3, 664(sp)
  ADD t4, t3, zero
  SW t4, 744(sp)
  LW t3, 656(sp)
  ADD t4, t3, zero
  SW t4, 736(sp)
  LW t3, 648(sp)
  ADD t4, t3, zero
  SW t4, 728(sp)
  LW t3, 640(sp)
  ADD t4, t3, zero
  SW t4, 720(sp)
  JAL zero, bb22
bb21:
  LW t4, 632(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 632(sp)
  LW t3, 712(sp)
  ADD t4, t3, zero
  SW t4, 624(sp)
  LW t3, 704(sp)
  ADD t4, t3, zero
  SW t4, 616(sp)
  LW t3, 696(sp)
  ADD t4, t3, zero
  SW t4, 608(sp)
  LW t3, 688(sp)
  ADD t4, t3, zero
  SW t4, 600(sp)
  LW t3, 680(sp)
  ADD t4, t3, zero
  SW t4, 592(sp)
  LW t3, 672(sp)
  ADD t4, t3, zero
  SW t4, 584(sp)
  LW t3, 664(sp)
  ADD t4, t3, zero
  SW t4, 576(sp)
  LW t3, 656(sp)
  ADD t4, t3, zero
  SW t4, 568(sp)
  LW t3, 648(sp)
  ADD t4, t3, zero
  SW t4, 560(sp)
  LW t3, 640(sp)
  ADD t4, t3, zero
  SW t4, 552(sp)
  JAL zero, bb16
bb22:
  LW t4, 784(sp)
  SLTI s0, t4, 5
  XOR s11, s0, zero
  SLTU s0, zero, s11
  BNE s0, zero, bb23
  JAL zero, bb24
bb23:
  LW t3, 776(sp)
  ADD t4, t3, zero
  SW t4, 848(sp)
  ADD t4, zero, zero
  SW t4, 840(sp)
  LW t3, 760(sp)
  ADD t4, t3, zero
  SW t4, 832(sp)
  LW t3, 752(sp)
  ADD t4, t3, zero
  SW t4, 824(sp)
  LW t3, 744(sp)
  ADD t4, t3, zero
  SW t4, 816(sp)
  LW t3, 736(sp)
  ADD t4, t3, zero
  SW t4, 808(sp)
  LW t3, 728(sp)
  ADD t4, t3, zero
  SW t4, 800(sp)
  LW t3, 720(sp)
  ADD t4, t3, zero
  SW t4, 792(sp)
  JAL zero, bb25
bb24:
  LW t4, 712(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 712(sp)
  LW t3, 784(sp)
  ADD t4, t3, zero
  SW t4, 704(sp)
  LW t3, 776(sp)
  ADD t4, t3, zero
  SW t4, 696(sp)
  LW t3, 768(sp)
  ADD t4, t3, zero
  SW t4, 688(sp)
  LW t3, 760(sp)
  ADD t4, t3, zero
  SW t4, 680(sp)
  LW t3, 752(sp)
  ADD t4, t3, zero
  SW t4, 672(sp)
  LW t3, 744(sp)
  ADD t4, t3, zero
  SW t4, 664(sp)
  LW t3, 736(sp)
  ADD t4, t3, zero
  SW t4, 656(sp)
  LW t3, 728(sp)
  ADD t4, t3, zero
  SW t4, 648(sp)
  LW t3, 720(sp)
  ADD t4, t3, zero
  SW t4, 640(sp)
  JAL zero, bb19
bb25:
  LW t4, 840(sp)
  SLTI s9, t4, 5
  XOR t1, s9, zero
  SLTU s9, zero, t1
  BNE s9, zero, bb26
  JAL zero, bb27
bb26:
  ADD t4, zero, zero
  SW t4, 904(sp)
  LW t3, 832(sp)
  ADD t4, t3, zero
  SW t4, 896(sp)
  LW t3, 824(sp)
  ADD t4, t3, zero
  SW t4, 888(sp)
  LW t3, 816(sp)
  ADD t4, t3, zero
  SW t4, 880(sp)
  LW t3, 808(sp)
  ADD t4, t3, zero
  SW t4, 872(sp)
  LW t3, 800(sp)
  ADD t4, t3, zero
  SW t4, 864(sp)
  LW t3, 792(sp)
  ADD t4, t3, zero
  SW t4, 856(sp)
  JAL zero, bb28
bb27:
  LW t4, 784(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 784(sp)
  LW t3, 848(sp)
  ADD t4, t3, zero
  SW t4, 776(sp)
  LW t3, 840(sp)
  ADD t4, t3, zero
  SW t4, 768(sp)
  LW t3, 832(sp)
  ADD t4, t3, zero
  SW t4, 760(sp)
  LW t3, 824(sp)
  ADD t4, t3, zero
  SW t4, 752(sp)
  LW t3, 816(sp)
  ADD t4, t3, zero
  SW t4, 744(sp)
  LW t3, 808(sp)
  ADD t4, t3, zero
  SW t4, 736(sp)
  LW t3, 800(sp)
  ADD t4, t3, zero
  SW t4, 728(sp)
  LW t3, 792(sp)
  ADD t4, t3, zero
  SW t4, 720(sp)
  JAL zero, bb22
bb28:
  LW t4, 904(sp)
  SLTI s1, t4, 3
  XOR a1, s1, zero
  SLTU s1, zero, a1
  BNE s1, zero, bb29
  JAL zero, bb30
bb29:
  ADD s1, zero, zero
  LW t4, 888(sp)
  ADD a1, t4, zero
  LW t4, 880(sp)
  ADD s2, t4, zero
  LW t4, 872(sp)
  ADD a2, t4, zero
  LW t4, 864(sp)
  ADD a3, t4, zero
  LW t4, 856(sp)
  ADD s3, t4, zero
  JAL zero, bb31
bb30:
  LW t4, 840(sp)
  ADDIW s0, t4, 1
  LW t3, 904(sp)
  ADD t4, t3, zero
  SW t4, 848(sp)
  ADD t4, s0, zero
  SW t4, 840(sp)
  LW t3, 896(sp)
  ADD t4, t3, zero
  SW t4, 832(sp)
  LW t3, 888(sp)
  ADD t4, t3, zero
  SW t4, 824(sp)
  LW t3, 880(sp)
  ADD t4, t3, zero
  SW t4, 816(sp)
  LW t3, 872(sp)
  ADD t4, t3, zero
  SW t4, 808(sp)
  LW t3, 864(sp)
  ADD t4, t3, zero
  SW t4, 800(sp)
  LW t3, 856(sp)
  ADD t4, t3, zero
  SW t4, 792(sp)
  JAL zero, bb25
bb31:
  SLTI a6, s1, 6
  XOR s6, a6, zero
  SLTU a6, zero, s6
  BNE a6, zero, bb32
  JAL zero, bb33
bb32:
  ADD s6, zero, zero
  ADD a6, s2, zero
  ADD t2, a2, zero
  ADD s8, a3, zero
  ADD a7, s3, zero
  JAL zero, bb34
bb33:
  LW t4, 904(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 904(sp)
  ADD t4, s1, zero
  SW t4, 896(sp)
  ADD t4, a1, zero
  SW t4, 888(sp)
  ADD t4, s2, zero
  SW t4, 880(sp)
  ADD t4, a2, zero
  SW t4, 872(sp)
  ADD t4, a3, zero
  SW t4, 864(sp)
  ADD t4, s3, zero
  SW t4, 856(sp)
  JAL zero, bb28
bb34:
  SLTI s7, s6, 7
  XOR s4, s7, zero
  SLTU s7, zero, s4
  BNE s7, zero, bb35
  JAL zero, bb36
bb35:
  ADD s4, zero, zero
  ADD s7, t2, zero
  ADD a4, s8, zero
  ADD s11, a7, zero
  JAL zero, bb37
bb36:
  ADDIW s0, s1, 2
  ADD s1, s0, zero
  ADD a1, s6, zero
  ADD s2, a6, zero
  ADD a2, t2, zero
  ADD a3, s8, zero
  ADD s3, a7, zero
  JAL zero, bb31
bb37:
  SLTI s0, s4, 5
  XOR a0, s0, zero
  SLTU s0, zero, a0
  BNE s0, zero, bb38
  JAL zero, bb39
bb38:
  ADD s0, zero, zero
  ADD a0, a4, zero
  ADD s5, s11, zero
  JAL zero, bb40
bb39:
  ADDIW s0, s6, 2
  ADD s6, s0, zero
  ADD a6, s4, zero
  ADD t2, s7, zero
  ADD s8, a4, zero
  ADD a7, s11, zero
  JAL zero, bb34
bb40:
  SLTI a5, s0, 3
  XOR s10, a5, zero
  SLTU a5, zero, s10
  BNE a5, zero, bb41
  JAL zero, bb42
bb41:
  ADD s10, zero, zero
  ADD a5, s5, zero
  JAL zero, bb43
bb42:
  ADDIW s9, s4, 2
  ADD s4, s9, zero
  ADD s7, s0, zero
  ADD a4, a0, zero
  ADD s11, s5, zero
  JAL zero, bb37
bb43:
  SLTI t0, s10, 6
  XOR t1, t0, zero
  SLTU t0, zero, t1
  BNE t0, zero, bb44
  JAL zero, bb45
bb44:
  ADDIW t0, a5, 3
  ADDI t1, zero, 999
  REMW s9, t0, t1
  ADDIW t0, s10, 3
  ADD s10, t0, zero
  ADD a5, s9, zero
  JAL zero, bb43
bb45:
  ADDIW s9, s0, 1
  ADD s0, s9, zero
  ADD a0, s10, zero
  ADD s5, a5, zero
  JAL zero, bb40
