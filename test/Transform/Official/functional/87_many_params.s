.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -912
  SD ra, 512(sp)
  SD s0, 520(sp)
  SD s1, 528(sp)
  SD s2, 536(sp)
  SD s3, 544(sp)
  SD s4, 552(sp)
  SD s5, 560(sp)
  SD s6, 568(sp)
  SD s7, 576(sp)
  SD s8, 584(sp)
  CALL getint
  ADD s3, zero, zero
  ADD s0, a0, zero
  SW s0, 100(sp)
  ADD s2, zero, zero
  CALL getint
  ADD s0, a0, zero
  SW s0, 96(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 92(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 88(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 84(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 80(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 76(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 72(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 336(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 212(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 140(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 172(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 168(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 164(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 160(sp)
  CALL getint
  LW s0, 100(sp)
  SW s0, 592(sp)
  LW s0, 96(sp)
  SW s0, 596(sp)
  LW s0, 92(sp)
  SW s0, 600(sp)
  LW s0, 88(sp)
  SW s0, 604(sp)
  LW s0, 84(sp)
  SW s0, 608(sp)
  LW s0, 80(sp)
  SW s0, 612(sp)
  LW s0, 76(sp)
  SW s0, 616(sp)
  LW s0, 72(sp)
  SW s0, 620(sp)
  LW s0, 336(sp)
  SW s0, 624(sp)
  LW s0, 212(sp)
  SW s0, 628(sp)
  LW s0, 140(sp)
  SW s0, 632(sp)
  LW s0, 172(sp)
  SW s0, 636(sp)
  LW s0, 168(sp)
  SW s0, 640(sp)
  LW s0, 164(sp)
  SW s0, 644(sp)
  LW s0, 160(sp)
  SW s0, 648(sp)
  SW a0, 652(sp)
  # implict jump to bb1
bb1:   # loop depth 1
  ADDIW s4, s2, 1
  SLTI s5, s4, 16
  BNE s5, zero, bb15
  # implict jump to bb2
bb2:   # loop depth 1
  # implict jump to bb3
bb3:   # loop depth 1
  SLTI s2, s4, 15
  BNE s2, zero, bb14
  # implict jump to bb4
bb4:   # loop depth 0
  LW s0, 592(sp)
  SW s0, 488(sp)
  LW s0, 596(sp)
  SW s0, 216(sp)
  LW s0, 488(sp)
  SLTIU s8, s0, 1
  LW s0, 600(sp)
  SW s0, 484(sp)
  LW s0, 604(sp)
  SW s0, 480(sp)
  LW s0, 608(sp)
  SW s0, 476(sp)
  LW s0, 612(sp)
  SW s0, 472(sp)
  LW s0, 616(sp)
  SW s0, 468(sp)
  LW s0, 620(sp)
  SW s0, 464(sp)
  LW s0, 624(sp)
  SW s0, 460(sp)
  LW s0, 628(sp)
  SW s0, 396(sp)
  LW s0, 632(sp)
  SW s0, 456(sp)
  LW s0, 636(sp)
  SW s0, 64(sp)
  LW s0, 640(sp)
  SW s0, 60(sp)
  LW s0, 644(sp)
  SW s0, 56(sp)
  LW s0, 648(sp)
  SW s0, 52(sp)
  LW s0, 652(sp)
  SW s0, 48(sp)
  BNE s8, zero, bb13
  # implict jump to bb5
bb5:   # loop depth 0
  SW a0, 356(sp)
  LW a0, 160(sp)
  SW a0, 352(sp)
  LW a0, 164(sp)
  SW a0, 348(sp)
  LW a0, 168(sp)
  SW a0, 344(sp)
  LW a0, 172(sp)
  SW a0, 340(sp)
  LW a0, 140(sp)
  SW a0, 276(sp)
  LW a0, 212(sp)
  SW a0, 332(sp)
  LW a0, 336(sp)
  SW a0, 328(sp)
  LW a0, 72(sp)
  SW a0, 324(sp)
  LW a0, 76(sp)
  SW a0, 320(sp)
  LW a0, 80(sp)
  SW a0, 316(sp)
  LW a0, 84(sp)
  SW a0, 312(sp)
  LW a0, 88(sp)
  SW a0, 308(sp)
  LW a0, 92(sp)
  SW a0, 304(sp)
  LW a0, 96(sp)
  SW a0, 300(sp)
  LW a0, 100(sp)
  SW a0, 296(sp)
  LW a0, 48(sp)
  SW a0, 292(sp)
  LW a0, 52(sp)
  SW a0, 288(sp)
  LW a0, 56(sp)
  SW a0, 284(sp)
  LW a0, 60(sp)
  SW a0, 280(sp)
  LW a0, 64(sp)
  SW a0, 32(sp)
  LW a0, 456(sp)
  SW a0, 4(sp)
  LW a0, 396(sp)
  SW a0, 40(sp)
  LW a0, 460(sp)
  SW a0, 44(sp)
  LW s6, 464(sp)
  LW s5, 468(sp)
  LW s4, 472(sp)
  LW s3, 476(sp)
  LW s2, 480(sp)
  LW s0, 484(sp)
  LW a0, 216(sp)
  SW a0, 388(sp)
  LW a0, 388(sp)
  SW a0, 388(sp)
  LW a0, 488(sp)
  SW a0, 392(sp)
  LW a0, 392(sp)
  SW a0, 392(sp)
  # implict jump to bb6
bb6:   # loop depth 1
  LUI s7, 243712
  SW s7, 68(sp)
  LW a0, 388(sp)
  SW a0, 388(sp)
  LW s1, 68(sp)
  ADDIW s1, s1, 1
  SW s1, 68(sp)
  LW a0, 388(sp)
  ADDW s0, a0, s0
  LW a0, 392(sp)
  SW a0, 392(sp)
  LW a0, 68(sp)
  REMW a0, s0, a0
  SW a0, 492(sp)
  LW a0, 392(sp)
  ADDIW a0, a0, -1
  SW a0, 228(sp)
  LW a0, 228(sp)
  SLTIU a0, a0, 1
  SB a0, 0(sp)
  SW s2, 400(sp)
  SW s3, 404(sp)
  SW s4, 408(sp)
  SW s5, 412(sp)
  SW s6, 416(sp)
  LW a0, 44(sp)
  SW a0, 420(sp)
  LW a0, 40(sp)
  SW a0, 424(sp)
  LW a0, 4(sp)
  SW a0, 428(sp)
  LW a0, 32(sp)
  SW a0, 432(sp)
  LW a0, 280(sp)
  SW a0, 436(sp)
  LW a0, 284(sp)
  SW a0, 440(sp)
  LW a0, 288(sp)
  SW a0, 272(sp)
  LW a0, 292(sp)
  SW a0, 268(sp)
  LW a0, 296(sp)
  SW a0, 264(sp)
  LW a0, 300(sp)
  SW a0, 260(sp)
  LW a0, 304(sp)
  SW a0, 256(sp)
  LW a0, 308(sp)
  SW a0, 252(sp)
  LW a0, 312(sp)
  SW a0, 248(sp)
  LW a0, 316(sp)
  SW a0, 208(sp)
  LW a0, 320(sp)
  SW a0, 240(sp)
  LW a0, 324(sp)
  SW a0, 236(sp)
  LW s0, 328(sp)
  LW s1, 332(sp)
  LW a0, 276(sp)
  SW a0, 444(sp)
  LW a0, 340(sp)
  SW a0, 448(sp)
  LW a0, 344(sp)
  SW a0, 504(sp)
  LW a0, 348(sp)
  SW a0, 452(sp)
  LW a0, 352(sp)
  SW a0, 500(sp)
  LW a0, 356(sp)
  SW a0, 496(sp)
  LB a0, 0(sp)
  BNE a0, zero, bb8
  # implict jump to bb7
bb7:   # loop depth 1
  ADD a0, zero, zero
  SW a0, 356(sp)
  LW a0, 496(sp)
  SW a0, 352(sp)
  LW a0, 500(sp)
  SW a0, 348(sp)
  LW a0, 452(sp)
  SW a0, 344(sp)
  LW a0, 504(sp)
  SW a0, 340(sp)
  LW a0, 448(sp)
  SW a0, 276(sp)
  LW a0, 444(sp)
  SW a0, 332(sp)
  SW s1, 328(sp)
  SW s0, 324(sp)
  LW a0, 236(sp)
  SW a0, 320(sp)
  LW a0, 240(sp)
  SW a0, 316(sp)
  LW a0, 208(sp)
  SW a0, 312(sp)
  LW a0, 248(sp)
  SW a0, 308(sp)
  LW a0, 252(sp)
  SW a0, 304(sp)
  LW a0, 256(sp)
  SW a0, 300(sp)
  LW a0, 260(sp)
  SW a0, 296(sp)
  LW a0, 264(sp)
  SW a0, 292(sp)
  LW a0, 268(sp)
  SW a0, 288(sp)
  LW a0, 272(sp)
  SW a0, 284(sp)
  LW a0, 440(sp)
  SW a0, 280(sp)
  LW a0, 436(sp)
  SW a0, 32(sp)
  LW a0, 432(sp)
  SW a0, 4(sp)
  LW a0, 428(sp)
  SW a0, 40(sp)
  LW a0, 424(sp)
  SW a0, 44(sp)
  LW s6, 420(sp)
  LW s5, 416(sp)
  LW s4, 412(sp)
  LW s3, 408(sp)
  LW s2, 404(sp)
  LW s0, 400(sp)
  LW a0, 492(sp)
  SW a0, 388(sp)
  LW a0, 388(sp)
  SW a0, 388(sp)
  LW a0, 228(sp)
  SW a0, 392(sp)
  LW a0, 392(sp)
  SW a0, 392(sp)
  JAL zero, bb6
bb8:   # loop depth 0
  LW a0, 492(sp)
  # implict jump to bb9
bb9:   # loop depth 0
  LUI s0, 2
  ADDIW s0, s0, 656
  SW a0, 656(sp)
  ADDI a0, zero, 62
  SW s0, 660(sp)
  # implict jump to bb10
bb10:   # loop depth 1
  ADDIW a0, a0, -1
  SLLIW s0, a0, 2
  ADDIW s0, s0, 8
  ADDI t6, sp, 656
  ADD s0, t6, s0
  SW zero, 0(s0)
  BNE a0, zero, bb12
  # implict jump to bb11
bb11:   # loop depth 0
  LW a0, 660(sp)
  LW s1, 656(sp)
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
  LD ra, 512(sp)
  LD s0, 520(sp)
  LD s1, 528(sp)
  LD s2, 536(sp)
  LD s3, 544(sp)
  LD s4, 552(sp)
  LD s5, 560(sp)
  LD s6, 568(sp)
  LD s7, 576(sp)
  LD s8, 584(sp)
  ADDI sp, sp, 912
  JALR zero, 0(ra)
bb12:   # loop depth 1
  JAL zero, bb10
bb13:   # loop depth 0
  LW a0, 216(sp)
  JAL zero, bb9
bb14:   # loop depth 1
  ADD s2, s4, zero
  JAL zero, bb1
bb15:   # loop depth 1
  SLLIW s5, s2, 2
  ADD s2, s4, zero
  ADDI t6, sp, 592
  ADD s5, t6, s5
  # implict jump to bb16
bb16:   # loop depth 2
  LW s6, 0(s5)
  SLLIW s7, s2, 2
  ADDI t6, sp, 592
  ADD s7, t6, s7
  LW s8, 0(s7)
  BLT s6, s8, bb21
  # implict jump to bb17
bb17:   # loop depth 2
  # implict jump to bb18
bb18:   # loop depth 2
  ADDIW s2, s2, 1
  SLTI s6, s2, 16
  BNE s6, zero, bb20
  # implict jump to bb19
bb19:   # loop depth 1
  JAL zero, bb3
bb20:   # loop depth 2
  JAL zero, bb16
bb21:   # loop depth 2
  LW s1, 0(s5)
  LW s6, 0(s7)
  ADD s3, s1, zero
  SW s6, 0(s5)
  SW s1, 0(s7)
  JAL zero, bb18
