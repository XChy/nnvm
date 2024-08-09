.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -1024
  SD ra, 592(sp)
  SD s0, 600(sp)
  SD s1, 608(sp)
  SD s2, 616(sp)
  SD s3, 624(sp)
  SD s4, 632(sp)
  SD s5, 640(sp)
  SD s6, 648(sp)
  SD s7, 656(sp)
  SD s8, 664(sp)
  SD s10, 672(sp)
  SD s11, 680(sp)
  CALL getint
  ADD s0, zero, zero
  SW s0, 212(sp)
  ADD s0, a0, zero
  SW s0, 196(sp)
  ADD s0, zero, zero
  SW s0, 416(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 192(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 188(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 392(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 512(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 508(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 504(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 500(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 496(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 456(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 488(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 484(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 480(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 476(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 472(sp)
  CALL getint
  LW s1, 196(sp)
  SW s1, 688(sp)
  SW a0, 468(sp)
  LW a0, 192(sp)
  SW a0, 692(sp)
  LW a0, 188(sp)
  SW a0, 696(sp)
  LW a0, 392(sp)
  SW a0, 700(sp)
  LW a0, 512(sp)
  SW a0, 704(sp)
  LW a0, 508(sp)
  SW a0, 708(sp)
  LW a0, 504(sp)
  SW a0, 712(sp)
  LW a0, 500(sp)
  SW a0, 716(sp)
  LW a0, 496(sp)
  SW a0, 720(sp)
  LW a0, 456(sp)
  SW a0, 724(sp)
  LW a0, 488(sp)
  SW a0, 728(sp)
  LW a0, 484(sp)
  SW a0, 732(sp)
  LW a0, 480(sp)
  SW a0, 736(sp)
  LW a0, 476(sp)
  SW a0, 740(sp)
  LW a0, 472(sp)
  SW a0, 744(sp)
  LW a0, 468(sp)
  SW a0, 748(sp)
  # implict jump to bb1
bb1:   # loop depth 1
  LW a0, 212(sp)
  SW a0, 212(sp)
  LW a0, 416(sp)
  SW a0, 416(sp)
  LW a0, 212(sp)
  ADDIW a0, a0, 1
  SW a0, 396(sp)
  LW a0, 396(sp)
  SLTI s1, a0, 16
  SB s1, 1(sp)
  LB s1, 1(sp)
  BNE s1, zero, bb15
  # implict jump to bb2
bb2:   # loop depth 1
  LW a0, 416(sp)
  SW a0, 416(sp)
  # implict jump to bb3
bb3:   # loop depth 1
  LW a0, 416(sp)
  SW a0, 416(sp)
  LW a0, 396(sp)
  SLTI s11, a0, 15
  BNE s11, zero, bb14
  # implict jump to bb4
bb4:   # loop depth 0
  LW a0, 688(sp)
  SW a0, 64(sp)
  LW s10, 692(sp)
  LW a0, 64(sp)
  SLTIU s11, a0, 1
  LW a0, 696(sp)
  LW s1, 700(sp)
  SW s1, 60(sp)
  LW s1, 704(sp)
  SW s1, 56(sp)
  LW s1, 708(sp)
  SW s1, 8(sp)
  LW s1, 712(sp)
  SW s1, 48(sp)
  LW s1, 716(sp)
  SW s1, 44(sp)
  LW s1, 720(sp)
  SW s1, 492(sp)
  LW s1, 724(sp)
  SW s1, 528(sp)
  LW s1, 728(sp)
  SW s1, 384(sp)
  LW s1, 732(sp)
  SW s1, 380(sp)
  LW s1, 736(sp)
  SW s1, 376(sp)
  LW s1, 740(sp)
  SW s1, 372(sp)
  LW s1, 744(sp)
  SW s1, 368(sp)
  LW s1, 748(sp)
  SW s1, 364(sp)
  BNE s11, zero, bb13
  # implict jump to bb5
bb5:   # loop depth 0
  LW s1, 64(sp)
  SW s1, 360(sp)
  SW s10, 356(sp)
  SW a0, 280(sp)
  LW a0, 60(sp)
  SW a0, 316(sp)
  LW a0, 56(sp)
  SW a0, 348(sp)
  LW a0, 8(sp)
  SW a0, 344(sp)
  LW a0, 48(sp)
  SW a0, 340(sp)
  LW a0, 44(sp)
  SW a0, 336(sp)
  LW a0, 492(sp)
  SW a0, 332(sp)
  LW a0, 528(sp)
  SW a0, 328(sp)
  LW a0, 384(sp)
  SW a0, 324(sp)
  LW a0, 380(sp)
  SW a0, 320(sp)
  LW a0, 376(sp)
  SW a0, 352(sp)
  LW a0, 372(sp)
  SW a0, 452(sp)
  LW a0, 368(sp)
  SW a0, 448(sp)
  LW a0, 364(sp)
  SW a0, 444(sp)
  LW a0, 196(sp)
  SW a0, 440(sp)
  LW a0, 192(sp)
  SW a0, 436(sp)
  LW a0, 188(sp)
  SW a0, 432(sp)
  LW a0, 392(sp)
  SW a0, 392(sp)
  LW a0, 392(sp)
  SW a0, 96(sp)
  LW a0, 512(sp)
  SW a0, 92(sp)
  LW a0, 508(sp)
  SW a0, 88(sp)
  LW a0, 504(sp)
  SW a0, 84(sp)
  LW a0, 500(sp)
  SW a0, 80(sp)
  LW a0, 496(sp)
  SW a0, 424(sp)
  LW a0, 456(sp)
  SW a0, 248(sp)
  LW s5, 488(sp)
  LW s0, 484(sp)
  LW s1, 480(sp)
  LW s2, 476(sp)
  SW s2, 428(sp)
  LW s2, 472(sp)
  SW s2, 388(sp)
  LW s2, 468(sp)
  SW s2, 420(sp)
  # implict jump to bb6
bb6:   # loop depth 1
  LW a0, 280(sp)
  SW a0, 280(sp)
  LW s6, 356(sp)
  LUI s8, 243712
  LW a0, 280(sp)
  ADDW s7, s6, a0
  ADDIW s8, s8, 1
  LW s6, 360(sp)
  REMW s2, s7, s8
  SW s2, 532(sp)
  ADDIW s11, s6, -1
  LW s2, 420(sp)
  SW s2, 536(sp)
  LW s2, 388(sp)
  SW s2, 540(sp)
  LW s2, 428(sp)
  SW s2, 544(sp)
  SW s1, 548(sp)
  SW s0, 552(sp)
  SW s5, 556(sp)
  LW a0, 248(sp)
  SW a0, 560(sp)
  LW a0, 424(sp)
  SW a0, 564(sp)
  LW a0, 80(sp)
  SW a0, 568(sp)
  LW a0, 84(sp)
  SW a0, 572(sp)
  LW a0, 88(sp)
  SW a0, 576(sp)
  LW a0, 92(sp)
  SW a0, 580(sp)
  LW a0, 96(sp)
  SW a0, 584(sp)
  LW a0, 432(sp)
  SW a0, 524(sp)
  LW a0, 436(sp)
  SW a0, 588(sp)
  LW a0, 440(sp)
  SW a0, 460(sp)
  LW a0, 444(sp)
  SW a0, 464(sp)
  LW s0, 448(sp)
  LW a0, 452(sp)
  SW a0, 292(sp)
  LW a0, 352(sp)
  SW a0, 296(sp)
  LW a0, 320(sp)
  SW a0, 300(sp)
  LW a0, 324(sp)
  SW a0, 304(sp)
  LW a0, 328(sp)
  SW a0, 308(sp)
  LW a0, 332(sp)
  SW a0, 312(sp)
  LW a0, 336(sp)
  SW a0, 200(sp)
  LW a0, 340(sp)
  SW a0, 164(sp)
  LW a0, 344(sp)
  SW a0, 168(sp)
  LW a0, 348(sp)
  SW a0, 172(sp)
  LW a0, 316(sp)
  SW a0, 280(sp)
  LW a0, 280(sp)
  SW a0, 280(sp)
  SLTIU s1, s11, 1
  SB s1, 4(sp)
  LB s1, 4(sp)
  BNE s1, zero, bb8
  # implict jump to bb7
bb7:   # loop depth 1
  SW s11, 360(sp)
  LW s1, 532(sp)
  SW s1, 356(sp)
  LW a0, 280(sp)
  SW a0, 280(sp)
  LW a0, 172(sp)
  SW a0, 316(sp)
  LW a0, 168(sp)
  SW a0, 348(sp)
  LW a0, 164(sp)
  SW a0, 344(sp)
  LW a0, 200(sp)
  SW a0, 340(sp)
  LW a0, 312(sp)
  SW a0, 336(sp)
  LW a0, 308(sp)
  SW a0, 332(sp)
  LW a0, 304(sp)
  SW a0, 328(sp)
  LW a0, 300(sp)
  SW a0, 324(sp)
  LW a0, 296(sp)
  SW a0, 320(sp)
  LW a0, 292(sp)
  SW a0, 352(sp)
  SW s0, 452(sp)
  LW a0, 464(sp)
  SW a0, 448(sp)
  LW a0, 460(sp)
  SW a0, 444(sp)
  LW a0, 588(sp)
  SW a0, 440(sp)
  LW a0, 524(sp)
  SW a0, 436(sp)
  LW a0, 584(sp)
  SW a0, 432(sp)
  LW a0, 580(sp)
  SW a0, 96(sp)
  LW a0, 576(sp)
  SW a0, 92(sp)
  LW a0, 572(sp)
  SW a0, 88(sp)
  LW a0, 568(sp)
  SW a0, 84(sp)
  LW a0, 564(sp)
  SW a0, 80(sp)
  LW a0, 560(sp)
  SW a0, 424(sp)
  LW a0, 556(sp)
  SW a0, 248(sp)
  LW s5, 552(sp)
  LW s0, 548(sp)
  LW s1, 544(sp)
  LW s2, 540(sp)
  SW s2, 428(sp)
  LW s2, 536(sp)
  SW s2, 388(sp)
  ADD s2, zero, zero
  SW s2, 420(sp)
  JAL zero, bb6
bb8:   # loop depth 0
  LW s10, 532(sp)
  # implict jump to bb9
bb9:   # loop depth 0
  LUI s0, 2
  ADDIW s0, s0, 656
  SW s10, 752(sp)
  ADDI a0, zero, 62
  SW s0, 756(sp)
  # implict jump to bb10
bb10:   # loop depth 1
  ADDIW a0, a0, -1
  SLLIW s0, a0, 2
  ADDIW s0, s0, 8
  ADDI t6, sp, 752
  ADD s0, t6, s0
  SW zero, 0(s0)
  BNE a0, zero, bb12
  # implict jump to bb11
bb11:   # loop depth 0
  LW a0, 756(sp)
  LW s1, 752(sp)
  ADDIW s0, a0, -1
  ADDIW s3, a0, -3
  ADDIW s4, a0, -4
  ADDIW s5, a0, -6
  ADDIW s6, a0, -7
  ADDW s7, s1, a0
  ADDIW s2, s1, -2
  ADDW s7, s7, s0
  ADDIW s0, s1, -3
  ADDW s7, s7, s2
  ADDIW s2, s1, -5
  ADDW s7, s7, s0
  ADDIW s0, s1, -6
  ADDW s7, s7, s3
  ADDIW s3, s1, -8
  ADDW s7, s7, s4
  ADDIW s4, s1, -9
  ADDW s7, s7, s2
  ADDIW s2, a0, -9
  ADDW s7, s7, s0
  ADDIW s0, a0, -10
  ADDW s7, s7, s5
  ADDIW s5, s1, -11
  ADDW s7, s7, s6
  ADDIW s6, s1, -12
  ADDW s7, s7, s3
  ADDIW s3, a0, -12
  ADDW s7, s7, s4
  ADDIW s4, a0, -13
  ADDW s7, s7, s2
  ADDIW s2, s1, -14
  ADDW s7, s7, s0
  ADDIW s0, s1, -15
  ADDW s7, s7, s5
  ADDIW s5, a0, -15
  ADDW s7, s7, s6
  ADDIW s6, a0, -16
  ADDW s7, s7, s3
  ADDIW s3, s1, -17
  ADDW s7, s7, s4
  ADDIW s4, s1, -18
  ADDW s7, s7, s2
  ADDIW s2, a0, -18
  ADDW s7, s7, s0
  ADDIW s0, a0, -19
  ADDW s7, s7, s5
  ADDIW s5, s1, -20
  ADDW s7, s7, s6
  ADDIW s6, s1, -21
  ADDW s7, s7, s3
  ADDIW s3, a0, -21
  ADDW s7, s7, s4
  ADDIW s4, a0, -22
  ADDW s7, s7, s2
  ADDIW s2, s1, -23
  ADDW s7, s7, s0
  ADDIW s0, s1, -24
  ADDW s7, s7, s5
  ADDIW s5, a0, -24
  ADDW s7, s7, s6
  ADDIW s6, a0, -25
  ADDW s7, s7, s3
  ADDIW s3, s1, -26
  ADDW s7, s7, s4
  ADDIW s4, s1, -27
  ADDW s7, s7, s2
  ADDIW s2, a0, -27
  ADDW s7, s7, s0
  ADDIW s0, a0, -28
  ADDW s7, s7, s5
  ADDIW s5, s1, -29
  ADDW s7, s7, s6
  ADDIW s6, s1, -30
  ADDW s7, s7, s3
  ADDIW s3, a0, -30
  ADDW s7, s7, s4
  ADDIW s4, a0, -31
  ADDW s7, s7, s2
  ADDIW s2, s1, -32
  ADDW s7, s7, s0
  ADDIW s0, s1, -33
  ADDW s7, s7, s5
  ADDIW s5, a0, -33
  ADDW s7, s7, s6
  ADDIW s6, a0, -34
  ADDW s7, s7, s3
  ADDIW s3, s1, -35
  ADDW s7, s7, s4
  ADDIW s4, s1, -36
  ADDW s7, s7, s2
  ADDIW s2, a0, -36
  ADDW s7, s7, s0
  ADDIW s0, a0, -37
  ADDW s7, s7, s5
  ADDIW s5, s1, -38
  ADDW s7, s7, s6
  ADDIW s6, s1, -39
  ADDW s7, s7, s3
  ADDIW s3, a0, -39
  ADDW s7, s7, s4
  ADDIW s4, a0, -40
  ADDW s7, s7, s2
  ADDIW s2, s1, -41
  ADDW s7, s7, s0
  ADDIW s0, s1, -42
  ADDW s7, s7, s5
  ADDIW s5, a0, -42
  ADDW s7, s7, s6
  ADDIW s6, a0, -43
  ADDW s7, s7, s3
  ADDIW s3, s1, -44
  ADDW s7, s7, s4
  ADDIW s4, s1, -45
  ADDW s7, s7, s2
  ADDIW s2, a0, -45
  ADDW s0, s7, s0
  ADDIW a0, a0, -46
  ADDW s5, s0, s5
  ADDIW s0, s1, -47
  ADDW s1, s5, s6
  ADDW s1, s1, s3
  ADDW s1, s1, s4
  ADDW s1, s1, s2
  ADDW a0, s1, a0
  ADDW a0, a0, s0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 592(sp)
  LD s0, 600(sp)
  LD s1, 608(sp)
  LD s2, 616(sp)
  LD s3, 624(sp)
  LD s4, 632(sp)
  LD s5, 640(sp)
  LD s6, 648(sp)
  LD s7, 656(sp)
  LD s8, 664(sp)
  LD s10, 672(sp)
  LD s11, 680(sp)
  ADDI sp, sp, 1024
  JALR zero, 0(ra)
bb12:   # loop depth 1
  JAL zero, bb10
bb13:   # loop depth 0
  JAL zero, bb9
bb14:   # loop depth 1
  LW a0, 396(sp)
  SW a0, 396(sp)
  LW a0, 396(sp)
  SW a0, 212(sp)
  LW a0, 416(sp)
  SW a0, 416(sp)
  JAL zero, bb1
bb15:   # loop depth 1
  LW s0, 212(sp)
  SLLIW s1, s0, 2
  SW s1, 256(sp)
  LW s0, 396(sp)
  SW s0, 208(sp)
  LW a0, 416(sp)
  SW a0, 416(sp)
  LW a0, 416(sp)
  SW a0, 520(sp)
  LW s1, 256(sp)
  ADDI t6, sp, 688
  ADD s1, t6, s1
  SD s1, 1008(sp)
  # implict jump to bb16
bb16:   # loop depth 2
  LW s0, 208(sp)
  SW s0, 208(sp)
  LD s1, 1008(sp)
  LW s1, 0(s1)
  SW s1, 152(sp)
  LW s0, 208(sp)
  SLLIW s1, s0, 2
  SW s1, 244(sp)
  LW s1, 520(sp)
  SW s1, 516(sp)
  LW s1, 244(sp)
  ADDI t6, sp, 688
  ADD s1, t6, s1
  SD s1, 1016(sp)
  LD s1, 1016(sp)
  LW s1, 0(s1)
  SW s1, 72(sp)
  LW s1, 72(sp)
  LW s2, 152(sp)
  BLT s2, s1, bb21
  # implict jump to bb17
bb17:   # loop depth 2
  LW s1, 516(sp)
  SW s1, 516(sp)
  # implict jump to bb18
bb18:   # loop depth 2
  LW s0, 208(sp)
  ADDIW s0, s0, 1
  SW s0, 208(sp)
  LW a0, 516(sp)
  SW a0, 416(sp)
  LW a0, 416(sp)
  SW a0, 416(sp)
  LW s0, 208(sp)
  SLTI s1, s0, 16
  SB s1, 0(sp)
  LB s1, 0(sp)
  BNE s1, zero, bb20
  # implict jump to bb19
bb19:   # loop depth 1
  LW a0, 416(sp)
  SW a0, 416(sp)
  JAL zero, bb3
bb20:   # loop depth 2
  LW s0, 208(sp)
  SW s0, 208(sp)
  LW a0, 416(sp)
  SW a0, 416(sp)
  LW a0, 416(sp)
  SW a0, 520(sp)
  JAL zero, bb16
bb21:   # loop depth 2
  LD s1, 1008(sp)
  LW s10, 0(s1)
  LD s1, 1016(sp)
  LW s1, 0(s1)
  SW s1, 68(sp)
  ADD s1, s10, zero
  SW s1, 516(sp)
  LW s1, 68(sp)
  LD s2, 1008(sp)
  SW s1, 0(s2)
  LD s1, 1016(sp)
  SW s10, 0(s1)
  JAL zero, bb18
