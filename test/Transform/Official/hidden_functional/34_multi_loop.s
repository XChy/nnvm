.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -1984
  SD s1, 1880(sp)
  SD s3, 1888(sp)
  SD s5, 1896(sp)
  SD s6, 1904(sp)
  SD s0, 1912(sp)
  SD s2, 1920(sp)
  SD s4, 1928(sp)
  SD ra, 1936(sp)
  SD s7, 1944(sp)
  SD s8, 1952(sp)
  SD s9, 1960(sp)
  SD s10, 1968(sp)
  SD s11, 1976(sp)
  ADD t4, zero, zero
  SW t4, 232(sp)
  ADD t4, zero, zero
  SW t4, 216(sp)
  ADD t4, zero, zero
  SW t4, 200(sp)
  ADD t4, zero, zero
  SW t4, 184(sp)
  ADD t4, zero, zero
  SW t4, 168(sp)
  ADD t4, zero, zero
  SW t4, 152(sp)
  ADD t4, zero, zero
  SW t4, 80(sp)
  ADD t4, zero, zero
  SW t4, 64(sp)
  ADD t4, zero, zero
  SW t4, 56(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  JAL zero, bb1
bb1:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 240(sp)
  LW t4, 24(sp)
  ADD a2, t4, zero
  LW t4, 32(sp)
  ADD a3, t4, zero
  LW t4, 40(sp)
  ADD a4, t4, zero
  LW t4, 48(sp)
  ADD a5, t4, zero
  LW t4, 56(sp)
  ADD a6, t4, zero
  LW t4, 64(sp)
  ADD a7, t4, zero
  LW t4, 80(sp)
  ADD a0, t4, zero
  LW t4, 152(sp)
  ADD t2, t4, zero
  LW t4, 168(sp)
  ADD t1, t4, zero
  LW t4, 184(sp)
  ADD t0, t4, zero
  LW t4, 200(sp)
  ADD s11, t4, zero
  LW t4, 216(sp)
  ADD s10, t4, zero
  LW t4, 232(sp)
  ADD s9, t4, zero
  LW t4, 240(sp)
  SLTI s8, t4, 3
  XOR s7, s8, zero
  SLTU s8, zero, s7
  BNE s8, zero, bb2
  JAL zero, bb3
bb2:
  ADD t4, s9, zero
  SW t4, 472(sp)
  ADD t4, s10, zero
  SW t4, 456(sp)
  ADD t4, s11, zero
  SW t4, 440(sp)
  ADD t4, t0, zero
  SW t4, 424(sp)
  ADD t4, t1, zero
  SW t4, 408(sp)
  ADD t4, t2, zero
  SW t4, 392(sp)
  ADD t4, a0, zero
  SW t4, 376(sp)
  ADD t4, a7, zero
  SW t4, 360(sp)
  ADD t4, a6, zero
  SW t4, 296(sp)
  ADD t4, a5, zero
  SW t4, 288(sp)
  ADD t4, a4, zero
  SW t4, 280(sp)
  ADD t4, a3, zero
  SW t4, 272(sp)
  ADD t4, a2, zero
  SW t4, 264(sp)
  ADD t4, zero, zero
  SW t4, 256(sp)
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 248(sp)
  JAL zero, bb4
bb3:
  LW t4, 0(sp)
  ADD a0, t4, zero
  LD s1, 1880(sp)
  LD s3, 1888(sp)
  LD s5, 1896(sp)
  LD s6, 1904(sp)
  LD s0, 1912(sp)
  LD s2, 1920(sp)
  LD s4, 1928(sp)
  LD ra, 1936(sp)
  LD s7, 1944(sp)
  LD s8, 1952(sp)
  LD s9, 1960(sp)
  LD s10, 1968(sp)
  LD s11, 1976(sp)
  ADDI sp, sp, 1984
  JALR zero, 0(ra)
bb4:
  LW t3, 248(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 256(sp)
  ADD t4, t3, zero
  SW t4, 480(sp)
  LW t3, 264(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t3, 272(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t3, 280(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t3, 288(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t3, 296(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 360(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t3, 376(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t3, 392(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t3, 408(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  LW t3, 424(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LW t3, 440(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  LW t3, 456(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  LW t3, 472(sp)
  ADD t4, t3, zero
  SW t4, 224(sp)
  LW t4, 480(sp)
  SLTI s4, t4, 4
  XOR s2, s4, zero
  SLTU s4, zero, s2
  BNE s4, zero, bb5
  JAL zero, bb6
bb5:
  LW t3, 224(sp)
  ADD t4, t3, zero
  SW t4, 696(sp)
  ADD t4, zero, zero
  SW t4, 680(sp)
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 672(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 656(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 640(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 624(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 608(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 592(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 576(sp)
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 560(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 512(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 504(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 496(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 488(sp)
  JAL zero, bb7
bb6:
  LW t4, 240(sp)
  ADDIW s0, t4, 1
  LW t3, 224(sp)
  ADD t4, t3, zero
  SW t4, 232(sp)
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  ADD t4, s0, zero
  SW t4, 16(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb1
bb7:
  LW t3, 488(sp)
  ADD t4, t3, zero
  SW t4, 304(sp)
  LW t3, 496(sp)
  ADD t4, t3, zero
  SW t4, 312(sp)
  LW t3, 504(sp)
  ADD t4, t3, zero
  SW t4, 320(sp)
  LW t3, 512(sp)
  ADD t4, t3, zero
  SW t4, 328(sp)
  LW t3, 560(sp)
  ADD t4, t3, zero
  SW t4, 336(sp)
  LW t3, 576(sp)
  ADD t4, t3, zero
  SW t4, 344(sp)
  LW t3, 592(sp)
  ADD t4, t3, zero
  SW t4, 352(sp)
  LW t3, 608(sp)
  ADD t4, t3, zero
  SW t4, 368(sp)
  LW t3, 624(sp)
  ADD t4, t3, zero
  SW t4, 384(sp)
  LW t3, 640(sp)
  ADD t4, t3, zero
  SW t4, 400(sp)
  LW t3, 656(sp)
  ADD t4, t3, zero
  SW t4, 416(sp)
  LW t3, 672(sp)
  ADD t4, t3, zero
  SW t4, 432(sp)
  LW t3, 680(sp)
  ADD t4, t3, zero
  SW t4, 448(sp)
  LW t3, 696(sp)
  ADD t4, t3, zero
  SW t4, 464(sp)
  LW t4, 448(sp)
  SLTI t2, t4, 5
  XOR s10, t2, zero
  SLTU t2, zero, s10
  BNE t2, zero, bb8
  JAL zero, bb9
bb8:
  ADD t4, zero, zero
  SW t4, 896(sp)
  LW t3, 432(sp)
  ADD t4, t3, zero
  SW t4, 888(sp)
  LW t3, 416(sp)
  ADD t4, t3, zero
  SW t4, 872(sp)
  LW t3, 400(sp)
  ADD t4, t3, zero
  SW t4, 856(sp)
  LW t3, 384(sp)
  ADD t4, t3, zero
  SW t4, 840(sp)
  LW t3, 368(sp)
  ADD t4, t3, zero
  SW t4, 824(sp)
  LW t3, 352(sp)
  ADD t4, t3, zero
  SW t4, 808(sp)
  LW t3, 344(sp)
  ADD t4, t3, zero
  SW t4, 792(sp)
  LW t3, 336(sp)
  ADD t4, t3, zero
  SW t4, 776(sp)
  LW t3, 328(sp)
  ADD t4, t3, zero
  SW t4, 760(sp)
  LW t3, 320(sp)
  ADD t4, t3, zero
  SW t4, 744(sp)
  LW t3, 312(sp)
  ADD t4, t3, zero
  SW t4, 712(sp)
  LW t3, 304(sp)
  ADD t4, t3, zero
  SW t4, 704(sp)
  JAL zero, bb10
bb9:
  LW t4, 480(sp)
  ADDIW s0, t4, 1
  LW t3, 464(sp)
  ADD t4, t3, zero
  SW t4, 472(sp)
  LW t3, 448(sp)
  ADD t4, t3, zero
  SW t4, 456(sp)
  LW t3, 432(sp)
  ADD t4, t3, zero
  SW t4, 440(sp)
  LW t3, 416(sp)
  ADD t4, t3, zero
  SW t4, 424(sp)
  LW t3, 400(sp)
  ADD t4, t3, zero
  SW t4, 408(sp)
  LW t3, 384(sp)
  ADD t4, t3, zero
  SW t4, 392(sp)
  LW t3, 368(sp)
  ADD t4, t3, zero
  SW t4, 376(sp)
  LW t3, 352(sp)
  ADD t4, t3, zero
  SW t4, 360(sp)
  LW t3, 344(sp)
  ADD t4, t3, zero
  SW t4, 296(sp)
  LW t3, 336(sp)
  ADD t4, t3, zero
  SW t4, 288(sp)
  LW t3, 328(sp)
  ADD t4, t3, zero
  SW t4, 280(sp)
  LW t3, 320(sp)
  ADD t4, t3, zero
  SW t4, 272(sp)
  LW t3, 312(sp)
  ADD t4, t3, zero
  SW t4, 264(sp)
  ADD t4, s0, zero
  SW t4, 256(sp)
  LW t3, 304(sp)
  ADD t4, t3, zero
  SW t4, 248(sp)
  JAL zero, bb4
bb10:
  LW t3, 704(sp)
  ADD t4, t3, zero
  SW t4, 520(sp)
  LW t3, 712(sp)
  ADD t4, t3, zero
  SW t4, 528(sp)
  LW t3, 744(sp)
  ADD t4, t3, zero
  SW t4, 536(sp)
  LW t3, 760(sp)
  ADD t4, t3, zero
  SW t4, 544(sp)
  LW t3, 776(sp)
  ADD t4, t3, zero
  SW t4, 552(sp)
  LW t3, 792(sp)
  ADD t4, t3, zero
  SW t4, 568(sp)
  LW t3, 808(sp)
  ADD t4, t3, zero
  SW t4, 584(sp)
  LW t3, 824(sp)
  ADD t4, t3, zero
  SW t4, 600(sp)
  LW t3, 840(sp)
  ADD t4, t3, zero
  SW t4, 616(sp)
  LW t3, 856(sp)
  ADD t4, t3, zero
  SW t4, 632(sp)
  LW t3, 872(sp)
  ADD t4, t3, zero
  SW t4, 648(sp)
  LW t3, 888(sp)
  ADD t4, t3, zero
  SW t4, 664(sp)
  LW t3, 896(sp)
  ADD t4, t3, zero
  SW t4, 688(sp)
  LW t4, 688(sp)
  SLTI s0, t4, 3
  XOR a7, s0, zero
  SLTU s0, zero, a7
  BNE s0, zero, bb11
  JAL zero, bb12
bb11:
  ADD t4, zero, zero
  SW t4, 1080(sp)
  LW t3, 648(sp)
  ADD t4, t3, zero
  SW t4, 1072(sp)
  LW t3, 632(sp)
  ADD t4, t3, zero
  SW t4, 1056(sp)
  LW t3, 616(sp)
  ADD t4, t3, zero
  SW t4, 1040(sp)
  LW t3, 600(sp)
  ADD t4, t3, zero
  SW t4, 1024(sp)
  LW t3, 584(sp)
  ADD t4, t3, zero
  SW t4, 1008(sp)
  LW t3, 568(sp)
  ADD t4, t3, zero
  SW t4, 992(sp)
  LW t3, 552(sp)
  ADD t4, t3, zero
  SW t4, 976(sp)
  LW t3, 544(sp)
  ADD t4, t3, zero
  SW t4, 960(sp)
  LW t3, 536(sp)
  ADD t4, t3, zero
  SW t4, 944(sp)
  LW t3, 528(sp)
  ADD t4, t3, zero
  SW t4, 928(sp)
  LW t3, 520(sp)
  ADD t4, t3, zero
  SW t4, 912(sp)
  JAL zero, bb13
bb12:
  LW t4, 448(sp)
  ADDIW s0, t4, 1
  LW t3, 688(sp)
  ADD t4, t3, zero
  SW t4, 696(sp)
  ADD t4, s0, zero
  SW t4, 680(sp)
  LW t3, 664(sp)
  ADD t4, t3, zero
  SW t4, 672(sp)
  LW t3, 648(sp)
  ADD t4, t3, zero
  SW t4, 656(sp)
  LW t3, 632(sp)
  ADD t4, t3, zero
  SW t4, 640(sp)
  LW t3, 616(sp)
  ADD t4, t3, zero
  SW t4, 624(sp)
  LW t3, 600(sp)
  ADD t4, t3, zero
  SW t4, 608(sp)
  LW t3, 584(sp)
  ADD t4, t3, zero
  SW t4, 592(sp)
  LW t3, 568(sp)
  ADD t4, t3, zero
  SW t4, 576(sp)
  LW t3, 552(sp)
  ADD t4, t3, zero
  SW t4, 560(sp)
  LW t3, 544(sp)
  ADD t4, t3, zero
  SW t4, 512(sp)
  LW t3, 536(sp)
  ADD t4, t3, zero
  SW t4, 504(sp)
  LW t3, 528(sp)
  ADD t4, t3, zero
  SW t4, 496(sp)
  LW t3, 520(sp)
  ADD t4, t3, zero
  SW t4, 488(sp)
  JAL zero, bb7
bb13:
  LW t3, 912(sp)
  ADD t4, t3, zero
  SW t4, 720(sp)
  LW t3, 928(sp)
  ADD t4, t3, zero
  SW t4, 728(sp)
  LW t3, 944(sp)
  ADD t4, t3, zero
  SW t4, 736(sp)
  LW t3, 960(sp)
  ADD t4, t3, zero
  SW t4, 752(sp)
  LW t3, 976(sp)
  ADD t4, t3, zero
  SW t4, 768(sp)
  LW t3, 992(sp)
  ADD t4, t3, zero
  SW t4, 784(sp)
  LW t3, 1008(sp)
  ADD t4, t3, zero
  SW t4, 800(sp)
  LW t3, 1024(sp)
  ADD t4, t3, zero
  SW t4, 816(sp)
  LW t3, 1040(sp)
  ADD t4, t3, zero
  SW t4, 832(sp)
  LW t3, 1056(sp)
  ADD t4, t3, zero
  SW t4, 848(sp)
  LW t3, 1072(sp)
  ADD t4, t3, zero
  SW t4, 864(sp)
  LW t3, 1080(sp)
  ADD t4, t3, zero
  SW t4, 880(sp)
  LW t4, 880(sp)
  SLTI s6, t4, 5
  XOR s8, s6, zero
  SLTU s6, zero, s8
  BNE s6, zero, bb14
  JAL zero, bb15
bb14:
  ADD t4, zero, zero
  SW t4, 1248(sp)
  LW t3, 848(sp)
  ADD t4, t3, zero
  SW t4, 1240(sp)
  LW t3, 832(sp)
  ADD t4, t3, zero
  SW t4, 1224(sp)
  LW t3, 816(sp)
  ADD t4, t3, zero
  SW t4, 1208(sp)
  LW t3, 800(sp)
  ADD t4, t3, zero
  SW t4, 1192(sp)
  LW t3, 784(sp)
  ADD t4, t3, zero
  SW t4, 1176(sp)
  LW t3, 768(sp)
  ADD t4, t3, zero
  SW t4, 1160(sp)
  LW t3, 752(sp)
  ADD t4, t3, zero
  SW t4, 1144(sp)
  LW t3, 736(sp)
  ADD t4, t3, zero
  SW t4, 1128(sp)
  LW t3, 728(sp)
  ADD t4, t3, zero
  SW t4, 1112(sp)
  LW t3, 720(sp)
  ADD t4, t3, zero
  SW t4, 1096(sp)
  JAL zero, bb16
bb15:
  LW t4, 688(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 896(sp)
  LW t3, 880(sp)
  ADD t4, t3, zero
  SW t4, 888(sp)
  LW t3, 864(sp)
  ADD t4, t3, zero
  SW t4, 872(sp)
  LW t3, 848(sp)
  ADD t4, t3, zero
  SW t4, 856(sp)
  LW t3, 832(sp)
  ADD t4, t3, zero
  SW t4, 840(sp)
  LW t3, 816(sp)
  ADD t4, t3, zero
  SW t4, 824(sp)
  LW t3, 800(sp)
  ADD t4, t3, zero
  SW t4, 808(sp)
  LW t3, 784(sp)
  ADD t4, t3, zero
  SW t4, 792(sp)
  LW t3, 768(sp)
  ADD t4, t3, zero
  SW t4, 776(sp)
  LW t3, 752(sp)
  ADD t4, t3, zero
  SW t4, 760(sp)
  LW t3, 736(sp)
  ADD t4, t3, zero
  SW t4, 744(sp)
  LW t3, 728(sp)
  ADD t4, t3, zero
  SW t4, 712(sp)
  LW t3, 720(sp)
  ADD t4, t3, zero
  SW t4, 704(sp)
  JAL zero, bb10
bb16:
  LW t3, 1096(sp)
  ADD t4, t3, zero
  SW t4, 904(sp)
  LW t3, 1112(sp)
  ADD t4, t3, zero
  SW t4, 920(sp)
  LW t3, 1128(sp)
  ADD t4, t3, zero
  SW t4, 936(sp)
  LW t3, 1144(sp)
  ADD t4, t3, zero
  SW t4, 952(sp)
  LW t3, 1160(sp)
  ADD t4, t3, zero
  SW t4, 968(sp)
  LW t3, 1176(sp)
  ADD t4, t3, zero
  SW t4, 984(sp)
  LW t3, 1192(sp)
  ADD t4, t3, zero
  SW t4, 1000(sp)
  LW t3, 1208(sp)
  ADD t4, t3, zero
  SW t4, 1016(sp)
  LW t3, 1224(sp)
  ADD t4, t3, zero
  SW t4, 1032(sp)
  LW t3, 1240(sp)
  ADD t4, t3, zero
  SW t4, 1048(sp)
  LW t3, 1248(sp)
  ADD t4, t3, zero
  SW t4, 1064(sp)
  LW t4, 1064(sp)
  SLTI s5, t4, 4
  XOR a4, s5, zero
  SLTU s5, zero, a4
  BNE s5, zero, bb17
  JAL zero, bb18
bb17:
  ADD t4, zero, zero
  SW t4, 1400(sp)
  LW t3, 1032(sp)
  ADD t4, t3, zero
  SW t4, 1392(sp)
  LW t3, 1016(sp)
  ADD t4, t3, zero
  SW t4, 1376(sp)
  LW t3, 1000(sp)
  ADD t4, t3, zero
  SW t4, 1360(sp)
  LW t3, 984(sp)
  ADD t4, t3, zero
  SW t4, 1344(sp)
  LW t3, 968(sp)
  ADD t4, t3, zero
  SW t4, 1328(sp)
  LW t3, 952(sp)
  ADD t4, t3, zero
  SW t4, 1312(sp)
  LW t3, 936(sp)
  ADD t4, t3, zero
  SW t4, 1296(sp)
  LW t3, 920(sp)
  ADD t4, t3, zero
  SW t4, 1280(sp)
  LW t3, 904(sp)
  ADD t4, t3, zero
  SW t4, 1264(sp)
  JAL zero, bb19
bb18:
  LW t4, 880(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 1080(sp)
  LW t3, 1064(sp)
  ADD t4, t3, zero
  SW t4, 1072(sp)
  LW t3, 1048(sp)
  ADD t4, t3, zero
  SW t4, 1056(sp)
  LW t3, 1032(sp)
  ADD t4, t3, zero
  SW t4, 1040(sp)
  LW t3, 1016(sp)
  ADD t4, t3, zero
  SW t4, 1024(sp)
  LW t3, 1000(sp)
  ADD t4, t3, zero
  SW t4, 1008(sp)
  LW t3, 984(sp)
  ADD t4, t3, zero
  SW t4, 992(sp)
  LW t3, 968(sp)
  ADD t4, t3, zero
  SW t4, 976(sp)
  LW t3, 952(sp)
  ADD t4, t3, zero
  SW t4, 960(sp)
  LW t3, 936(sp)
  ADD t4, t3, zero
  SW t4, 944(sp)
  LW t3, 920(sp)
  ADD t4, t3, zero
  SW t4, 928(sp)
  LW t3, 904(sp)
  ADD t4, t3, zero
  SW t4, 912(sp)
  JAL zero, bb13
bb19:
  LW t3, 1264(sp)
  ADD t4, t3, zero
  SW t4, 1088(sp)
  LW t3, 1280(sp)
  ADD t4, t3, zero
  SW t4, 1104(sp)
  LW t3, 1296(sp)
  ADD t4, t3, zero
  SW t4, 1120(sp)
  LW t3, 1312(sp)
  ADD t4, t3, zero
  SW t4, 1136(sp)
  LW t3, 1328(sp)
  ADD t4, t3, zero
  SW t4, 1152(sp)
  LW t3, 1344(sp)
  ADD t4, t3, zero
  SW t4, 1168(sp)
  LW t3, 1360(sp)
  ADD t4, t3, zero
  SW t4, 1184(sp)
  LW t3, 1376(sp)
  ADD t4, t3, zero
  SW t4, 1200(sp)
  LW t3, 1392(sp)
  ADD t4, t3, zero
  SW t4, 1216(sp)
  LW t3, 1400(sp)
  ADD t4, t3, zero
  SW t4, 1232(sp)
  LW t4, 1232(sp)
  SLTI s0, t4, 6
  XOR a6, s0, zero
  SLTU s0, zero, a6
  BNE s0, zero, bb20
  JAL zero, bb21
bb20:
  ADD t4, zero, zero
  SW t4, 1536(sp)
  LW t3, 1200(sp)
  ADD t4, t3, zero
  SW t4, 1528(sp)
  LW t3, 1184(sp)
  ADD t4, t3, zero
  SW t4, 1512(sp)
  LW t3, 1168(sp)
  ADD t4, t3, zero
  SW t4, 1496(sp)
  LW t3, 1152(sp)
  ADD t4, t3, zero
  SW t4, 1480(sp)
  LW t3, 1136(sp)
  ADD t4, t3, zero
  SW t4, 1464(sp)
  LW t3, 1120(sp)
  ADD t4, t3, zero
  SW t4, 1448(sp)
  LW t3, 1104(sp)
  ADD t4, t3, zero
  SW t4, 1432(sp)
  LW t3, 1088(sp)
  ADD t4, t3, zero
  SW t4, 1416(sp)
  JAL zero, bb22
bb21:
  LW t4, 1064(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 1248(sp)
  LW t3, 1232(sp)
  ADD t4, t3, zero
  SW t4, 1240(sp)
  LW t3, 1216(sp)
  ADD t4, t3, zero
  SW t4, 1224(sp)
  LW t3, 1200(sp)
  ADD t4, t3, zero
  SW t4, 1208(sp)
  LW t3, 1184(sp)
  ADD t4, t3, zero
  SW t4, 1192(sp)
  LW t3, 1168(sp)
  ADD t4, t3, zero
  SW t4, 1176(sp)
  LW t3, 1152(sp)
  ADD t4, t3, zero
  SW t4, 1160(sp)
  LW t3, 1136(sp)
  ADD t4, t3, zero
  SW t4, 1144(sp)
  LW t3, 1120(sp)
  ADD t4, t3, zero
  SW t4, 1128(sp)
  LW t3, 1104(sp)
  ADD t4, t3, zero
  SW t4, 1112(sp)
  LW t3, 1088(sp)
  ADD t4, t3, zero
  SW t4, 1096(sp)
  JAL zero, bb16
bb22:
  LW t3, 1416(sp)
  ADD t4, t3, zero
  SW t4, 1256(sp)
  LW t3, 1432(sp)
  ADD t4, t3, zero
  SW t4, 1272(sp)
  LW t3, 1448(sp)
  ADD t4, t3, zero
  SW t4, 1288(sp)
  LW t3, 1464(sp)
  ADD t4, t3, zero
  SW t4, 1304(sp)
  LW t3, 1480(sp)
  ADD t4, t3, zero
  SW t4, 1320(sp)
  LW t3, 1496(sp)
  ADD t4, t3, zero
  SW t4, 1336(sp)
  LW t3, 1512(sp)
  ADD t4, t3, zero
  SW t4, 1352(sp)
  LW t3, 1528(sp)
  ADD t4, t3, zero
  SW t4, 1368(sp)
  LW t3, 1536(sp)
  ADD t4, t3, zero
  SW t4, 1384(sp)
  LW t4, 1384(sp)
  SLTI s4, t4, 5
  XOR s6, s4, zero
  SLTU s4, zero, s6
  BNE s4, zero, bb23
  JAL zero, bb24
bb23:
  LW t3, 1368(sp)
  ADD t4, t3, zero
  SW t4, 1656(sp)
  ADD t4, zero, zero
  SW t4, 1640(sp)
  LW t3, 1336(sp)
  ADD t4, t3, zero
  SW t4, 1632(sp)
  LW t3, 1320(sp)
  ADD t4, t3, zero
  SW t4, 1616(sp)
  LW t3, 1304(sp)
  ADD t4, t3, zero
  SW t4, 1600(sp)
  LW t3, 1288(sp)
  ADD t4, t3, zero
  SW t4, 1584(sp)
  LW t3, 1272(sp)
  ADD t4, t3, zero
  SW t4, 1568(sp)
  LW t3, 1256(sp)
  ADD t4, t3, zero
  SW t4, 1552(sp)
  JAL zero, bb25
bb24:
  LW t4, 1232(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 1400(sp)
  LW t3, 1384(sp)
  ADD t4, t3, zero
  SW t4, 1392(sp)
  LW t3, 1368(sp)
  ADD t4, t3, zero
  SW t4, 1376(sp)
  LW t3, 1352(sp)
  ADD t4, t3, zero
  SW t4, 1360(sp)
  LW t3, 1336(sp)
  ADD t4, t3, zero
  SW t4, 1344(sp)
  LW t3, 1320(sp)
  ADD t4, t3, zero
  SW t4, 1328(sp)
  LW t3, 1304(sp)
  ADD t4, t3, zero
  SW t4, 1312(sp)
  LW t3, 1288(sp)
  ADD t4, t3, zero
  SW t4, 1296(sp)
  LW t3, 1272(sp)
  ADD t4, t3, zero
  SW t4, 1280(sp)
  LW t3, 1256(sp)
  ADD t4, t3, zero
  SW t4, 1264(sp)
  JAL zero, bb19
bb25:
  LW t3, 1552(sp)
  ADD t4, t3, zero
  SW t4, 1408(sp)
  LW t3, 1568(sp)
  ADD t4, t3, zero
  SW t4, 1424(sp)
  LW t3, 1584(sp)
  ADD t4, t3, zero
  SW t4, 1440(sp)
  LW t3, 1600(sp)
  ADD t4, t3, zero
  SW t4, 1456(sp)
  LW t3, 1616(sp)
  ADD t4, t3, zero
  SW t4, 1472(sp)
  LW t3, 1632(sp)
  ADD t4, t3, zero
  SW t4, 1488(sp)
  LW t3, 1640(sp)
  ADD t4, t3, zero
  SW t4, 1504(sp)
  LW t3, 1656(sp)
  ADD t4, t3, zero
  SW t4, 1520(sp)
  LW t4, 1504(sp)
  SLTI s3, t4, 5
  XOR t1, s3, zero
  SLTU s3, zero, t1
  BNE s3, zero, bb26
  JAL zero, bb27
bb26:
  ADD t4, zero, zero
  SW t4, 1760(sp)
  LW t3, 1488(sp)
  ADD t4, t3, zero
  SW t4, 1752(sp)
  LW t3, 1472(sp)
  ADD t4, t3, zero
  SW t4, 1736(sp)
  LW t3, 1456(sp)
  ADD t4, t3, zero
  SW t4, 1720(sp)
  LW t3, 1440(sp)
  ADD t4, t3, zero
  SW t4, 1704(sp)
  LW t3, 1424(sp)
  ADD t4, t3, zero
  SW t4, 1688(sp)
  LW t3, 1408(sp)
  ADD t4, t3, zero
  SW t4, 1672(sp)
  JAL zero, bb28
bb27:
  LW t4, 1384(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 1536(sp)
  LW t3, 1520(sp)
  ADD t4, t3, zero
  SW t4, 1528(sp)
  LW t3, 1504(sp)
  ADD t4, t3, zero
  SW t4, 1512(sp)
  LW t3, 1488(sp)
  ADD t4, t3, zero
  SW t4, 1496(sp)
  LW t3, 1472(sp)
  ADD t4, t3, zero
  SW t4, 1480(sp)
  LW t3, 1456(sp)
  ADD t4, t3, zero
  SW t4, 1464(sp)
  LW t3, 1440(sp)
  ADD t4, t3, zero
  SW t4, 1448(sp)
  LW t3, 1424(sp)
  ADD t4, t3, zero
  SW t4, 1432(sp)
  LW t3, 1408(sp)
  ADD t4, t3, zero
  SW t4, 1416(sp)
  JAL zero, bb22
bb28:
  LW t3, 1672(sp)
  ADD t4, t3, zero
  SW t4, 1544(sp)
  LW t3, 1688(sp)
  ADD t4, t3, zero
  SW t4, 1560(sp)
  LW t3, 1704(sp)
  ADD t4, t3, zero
  SW t4, 1576(sp)
  LW t3, 1720(sp)
  ADD t4, t3, zero
  SW t4, 1592(sp)
  LW t3, 1736(sp)
  ADD t4, t3, zero
  SW t4, 1608(sp)
  LW t3, 1752(sp)
  ADD t4, t3, zero
  SW t4, 1624(sp)
  LW t3, 1760(sp)
  ADD t4, t3, zero
  SW t4, 1648(sp)
  LW t4, 1648(sp)
  SLTI s0, t4, 3
  XOR a7, s0, zero
  SLTU s0, zero, a7
  BNE s0, zero, bb29
  JAL zero, bb30
bb29:
  ADD t4, zero, zero
  SW t4, 1848(sp)
  LW t3, 1608(sp)
  ADD t4, t3, zero
  SW t4, 1840(sp)
  LW t3, 1592(sp)
  ADD t4, t3, zero
  SW t4, 1824(sp)
  LW t3, 1576(sp)
  ADD t4, t3, zero
  SW t4, 1808(sp)
  LW t3, 1560(sp)
  ADD t4, t3, zero
  SW t4, 1792(sp)
  LW t3, 1544(sp)
  ADD t4, t3, zero
  SW t4, 1776(sp)
  JAL zero, bb31
bb30:
  LW t4, 1504(sp)
  ADDIW s0, t4, 1
  LW t3, 1648(sp)
  ADD t4, t3, zero
  SW t4, 1656(sp)
  ADD t4, s0, zero
  SW t4, 1640(sp)
  LW t3, 1624(sp)
  ADD t4, t3, zero
  SW t4, 1632(sp)
  LW t3, 1608(sp)
  ADD t4, t3, zero
  SW t4, 1616(sp)
  LW t3, 1592(sp)
  ADD t4, t3, zero
  SW t4, 1600(sp)
  LW t3, 1576(sp)
  ADD t4, t3, zero
  SW t4, 1584(sp)
  LW t3, 1560(sp)
  ADD t4, t3, zero
  SW t4, 1568(sp)
  LW t3, 1544(sp)
  ADD t4, t3, zero
  SW t4, 1552(sp)
  JAL zero, bb25
bb31:
  LW t3, 1776(sp)
  ADD t4, t3, zero
  SW t4, 1664(sp)
  LW t3, 1792(sp)
  ADD t4, t3, zero
  SW t4, 1680(sp)
  LW t3, 1808(sp)
  ADD t4, t3, zero
  SW t4, 1696(sp)
  LW t3, 1824(sp)
  ADD t4, t3, zero
  SW t4, 1712(sp)
  LW t3, 1840(sp)
  ADD t4, t3, zero
  SW t4, 1728(sp)
  LW t3, 1848(sp)
  ADD t4, t3, zero
  SW t4, 1744(sp)
  LW t4, 1744(sp)
  SLTI a2, t4, 6
  XOR s6, a2, zero
  SLTU a2, zero, s6
  BNE a2, zero, bb32
  JAL zero, bb33
bb32:
  ADD s6, zero, zero
  LW t4, 1712(sp)
  ADD a2, t4, zero
  LW t4, 1696(sp)
  ADD a6, t4, zero
  LW t4, 1680(sp)
  ADD s4, t4, zero
  LW t3, 1664(sp)
  ADD t4, t3, zero
  SW t4, 1864(sp)
  JAL zero, bb34
bb33:
  LW t4, 1648(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 1760(sp)
  LW t3, 1744(sp)
  ADD t4, t3, zero
  SW t4, 1752(sp)
  LW t3, 1728(sp)
  ADD t4, t3, zero
  SW t4, 1736(sp)
  LW t3, 1712(sp)
  ADD t4, t3, zero
  SW t4, 1720(sp)
  LW t3, 1696(sp)
  ADD t4, t3, zero
  SW t4, 1704(sp)
  LW t3, 1680(sp)
  ADD t4, t3, zero
  SW t4, 1688(sp)
  LW t3, 1664(sp)
  ADD t4, t3, zero
  SW t4, 1672(sp)
  JAL zero, bb28
bb34:
  LW t3, 1864(sp)
  ADD t4, t3, zero
  SW t4, 1768(sp)
  ADD t4, s4, zero
  SW t4, 1784(sp)
  ADD t4, a6, zero
  SW t4, 1800(sp)
  ADD t4, a2, zero
  SW t4, 1816(sp)
  ADD t4, s6, zero
  SW t4, 1832(sp)
  LW t4, 1832(sp)
  SLTI t2, t4, 7
  XOR s11, t2, zero
  SLTU t2, zero, s11
  BNE t2, zero, bb35
  JAL zero, bb36
bb35:
  ADD s11, zero, zero
  LW t4, 1800(sp)
  ADD t2, t4, zero
  LW t4, 1784(sp)
  ADD a0, t4, zero
  LW t4, 1768(sp)
  ADD a1, t4, zero
  JAL zero, bb37
bb36:
  LW t4, 1744(sp)
  ADDIW s0, t4, 2
  ADD t4, s0, zero
  SW t4, 1848(sp)
  LW t3, 1832(sp)
  ADD t4, t3, zero
  SW t4, 1840(sp)
  LW t3, 1816(sp)
  ADD t4, t3, zero
  SW t4, 1824(sp)
  LW t3, 1800(sp)
  ADD t4, t3, zero
  SW t4, 1808(sp)
  LW t3, 1784(sp)
  ADD t4, t3, zero
  SW t4, 1792(sp)
  LW t3, 1768(sp)
  ADD t4, t3, zero
  SW t4, 1776(sp)
  JAL zero, bb31
bb37:
  ADD t4, a1, zero
  SW t4, 1856(sp)
  ADD t4, a0, zero
  SW t4, 1872(sp)
  ADD s3, t2, zero
  ADD a4, s11, zero
  SLTI s9, a4, 5
  XOR a3, s9, zero
  SLTU s9, zero, a3
  BNE s9, zero, bb38
  JAL zero, bb39
bb38:
  ADD s9, zero, zero
  LW t4, 1872(sp)
  ADD a3, t4, zero
  LW t4, 1856(sp)
  ADD s1, t4, zero
  JAL zero, bb40
bb39:
  LW t4, 1832(sp)
  ADDIW s0, t4, 2
  ADD s6, s0, zero
  ADD a2, a4, zero
  ADD a6, s3, zero
  LW t4, 1872(sp)
  ADD s4, t4, zero
  LW t3, 1856(sp)
  ADD t4, t3, zero
  SW t4, 1864(sp)
  JAL zero, bb34
bb40:
  ADD s7, s1, zero
  ADD s5, a3, zero
  ADD a5, s9, zero
  SLTI t0, a5, 3
  XOR s8, t0, zero
  SLTU t0, zero, s8
  BNE t0, zero, bb41
  JAL zero, bb42
bb41:
  ADD s8, zero, zero
  ADD t0, s7, zero
  JAL zero, bb43
bb42:
  ADDIW s0, a4, 2
  ADD s11, s0, zero
  ADD t2, a5, zero
  ADD a0, s5, zero
  ADD a1, s7, zero
  JAL zero, bb37
bb43:
  ADD a7, t0, zero
  ADD s0, s8, zero
  SLTI s10, s0, 6
  XOR s2, s10, zero
  SLTU s10, zero, s2
  BNE s10, zero, bb44
  JAL zero, bb45
bb44:
  ADDIW s2, a7, 3
  ADDI s10, zero, 999
  REMW t1, s2, s10
  ADDIW s2, s0, 3
  ADD s8, s2, zero
  ADD t0, t1, zero
  JAL zero, bb43
bb45:
  ADDIW s2, a5, 1
  ADD s9, s2, zero
  ADD a3, s0, zero
  ADD s1, a7, zero
  JAL zero, bb40
