.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -768
  SD ra, 328(sp)
  SD s0, 336(sp)
  SD s1, 344(sp)
  SD s2, 352(sp)
  SD s3, 360(sp)
  SD s4, 368(sp)
  SD s5, 376(sp)
  SD s6, 384(sp)
  SD s7, 392(sp)
  SD s8, 400(sp)
  SD s9, 408(sp)
  SD s10, 416(sp)
  SD s11, 752(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 292(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 324(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 296(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 300(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 304(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 308(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 312(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 260(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 192(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 196(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 200(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 204(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 220(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 216(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 212(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 208(sp)
  LW t4, 292(sp)
  SW t4, 424(sp)
  LW t4, 324(sp)
  SW t4, 428(sp)
  LW t4, 296(sp)
  SW t4, 432(sp)
  LW t4, 300(sp)
  SW t4, 436(sp)
  LW t4, 304(sp)
  SW t4, 440(sp)
  LW t4, 308(sp)
  SW t4, 444(sp)
  LW t4, 312(sp)
  SW t4, 448(sp)
  LW t4, 260(sp)
  SW t4, 452(sp)
  LW t4, 192(sp)
  SW t4, 456(sp)
  LW t4, 196(sp)
  SW t4, 460(sp)
  LW t4, 200(sp)
  SW t4, 464(sp)
  LW t4, 204(sp)
  SW t4, 468(sp)
  LW t4, 220(sp)
  SW t4, 472(sp)
  LW t4, 216(sp)
  SW t4, 476(sp)
  LW t4, 212(sp)
  SW t4, 480(sp)
  LW t4, 208(sp)
  SW t4, 484(sp)
  ADD t4, zero, zero
  SW t4, 264(sp)
  ADD t4, zero, zero
  SW t4, 272(sp)
  # implict jump to bb1
bb1:
  LW t4, 272(sp)
  ADD s9, t4, zero
  LW t4, 264(sp)
  ADD s8, t4, zero
  ADDIW t4, s8, 1
  SW t4, 320(sp)
  LW t4, 320(sp)
  SLTI s7, t4, 16
  BNE s7, zero, bb18
  # implict jump to bb2
bb2:
  ADD s7, s9, zero
  # implict jump to bb3
bb3:
  ADD t4, s7, zero
  SW t4, 268(sp)
  LW t4, 320(sp)
  SLTI s4, t4, 15
  BNE s4, zero, bb17
  # implict jump to bb4
bb4:
  LW s4, 424(sp)
  LW t4, 428(sp)
  SW t4, 224(sp)
  LW s6, 432(sp)
  LW s1, 436(sp)
  LW s0, 440(sp)
  LW s9, 444(sp)
  LW s2, 448(sp)
  LW s8, 452(sp)
  LW s3, 456(sp)
  LW s10, 460(sp)
  LW s7, 464(sp)
  LW s11, 468(sp)
  LW t4, 472(sp)
  SW t4, 84(sp)
  LW t4, 476(sp)
  SW t4, 144(sp)
  LW t4, 480(sp)
  SW t4, 92(sp)
  LW t4, 484(sp)
  SW t4, 88(sp)
  SLTIU s5, s4, 1
  BNE s5, zero, bb16
  # implict jump to bb5
bb5:
  LW t4, 224(sp)
  ADD s5, t4, zero
  ADD t4, s9, zero
  SW t4, 252(sp)
  ADD t4, s2, zero
  SW t4, 244(sp)
  ADD t4, s8, zero
  SW t4, 236(sp)
  ADD t4, s3, zero
  SW t4, 228(sp)
  ADD t4, s10, zero
  SW t4, 316(sp)
  ADD t4, s7, zero
  SW t4, 104(sp)
  ADD t4, s11, zero
  SW t4, 112(sp)
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t3, 292(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 324(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t3, 296(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 300(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t3, 304(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t3, 308(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 312(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 260(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 196(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 204(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 220(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 212(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  # implict jump to bb6
bb6:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  LW t3, 316(sp)
  ADD t4, t3, zero
  SW t4, 232(sp)
  LW t3, 228(sp)
  ADD t4, t3, zero
  SW t4, 240(sp)
  LW t3, 236(sp)
  ADD t4, t3, zero
  SW t4, 248(sp)
  LW t3, 244(sp)
  ADD t4, t3, zero
  SW t4, 256(sp)
  LW t4, 252(sp)
  ADD s11, t4, zero
  ADD s8, s0, zero
  ADD s10, s1, zero
  ADD s2, s6, zero
  ADD s7, s5, zero
  ADD s9, s4, zero
  ADDI s3, zero, 1
  SUBW s3, s9, s3
  ADDW s2, s7, s2
  LUI s7, 243712
  ADDIW s7, s7, 1
  REMW s2, s2, s7
  SLTIU s7, s3, 1
  BNE s7, zero, bb8
  # implict jump to bb7
bb7:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s10, zero
  ADD s1, s8, zero
  ADD s0, s11, zero
  LW t3, 256(sp)
  ADD t4, t3, zero
  SW t4, 252(sp)
  LW t3, 248(sp)
  ADD t4, t3, zero
  SW t4, 244(sp)
  LW t3, 240(sp)
  ADD t4, t3, zero
  SW t4, 236(sp)
  LW t3, 232(sp)
  ADD t4, t3, zero
  SW t4, 228(sp)
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 316(sp)
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  JAL zero, bb6
bb8:
  ADD s0, s2, zero
  # implict jump to bb9
bb9:
  SW s0, 488(sp)
  LUI s0, 2
  ADDIW s0, s0, 656
  SW s0, 492(sp)
  ADDI s0, zero, 62
  # implict jump to bb10
bb10:
  ADD s1, s0, zero
  ADDI s2, zero, 1
  SUBW s1, s1, s2
  SLLIW s2, s1, 2
  ADDIW s2, s2, 8
  ADDI t5, sp, 488
  ADD s2, t5, s2
  SW zero, 0(s2)
  BNE s1, zero, bb15
  # implict jump to bb11
bb11:
  ADDI s2, zero, 1
  # implict jump to bb12
bb12:
  ADD s3, s2, zero
  SLLIW s4, s3, 3
  ADDI t5, sp, 488
  ADD s4, t5, s4
  ADDI s5, zero, 1
  SUBW s5, s3, s5
  SLLIW s5, s5, 3
  ADDI t5, sp, 488
  ADD s5, t5, s5
  LW s6, 4(s5)
  ADDI s7, zero, 1
  SUBW s6, s6, s7
  SW s6, 0(s4)
  LW s5, 0(s5)
  ADDI s6, zero, 2
  SUBW s5, s5, s6
  SW s5, 4(s4)
  ADDIW s3, s3, 1
  SLTI s4, s3, 32
  BNE s4, zero, bb14
  # implict jump to bb13
bb13:
  LW s4, 488(sp)
  LW s5, 492(sp)
  ADDW s4, s4, s5
  LW s5, 496(sp)
  ADDW s4, s4, s5
  LW s5, 500(sp)
  ADDW s4, s4, s5
  LW s5, 504(sp)
  ADDW s4, s4, s5
  LW s5, 508(sp)
  ADDW s4, s4, s5
  LW s5, 512(sp)
  ADDW s4, s4, s5
  LW s5, 516(sp)
  ADDW s4, s4, s5
  LW s5, 520(sp)
  ADDW s4, s4, s5
  LW s5, 524(sp)
  ADDW s4, s4, s5
  LW s5, 528(sp)
  ADDW s4, s4, s5
  LW s5, 532(sp)
  ADDW s4, s4, s5
  LW s5, 536(sp)
  ADDW s4, s4, s5
  LW s5, 540(sp)
  ADDW s4, s4, s5
  LW s5, 544(sp)
  ADDW s4, s4, s5
  LW s5, 548(sp)
  ADDW s4, s4, s5
  LW s5, 552(sp)
  ADDW s4, s4, s5
  LW s5, 556(sp)
  ADDW s4, s4, s5
  LW s5, 560(sp)
  ADDW s4, s4, s5
  LW s5, 564(sp)
  ADDW s4, s4, s5
  LW s5, 568(sp)
  ADDW s4, s4, s5
  LW s5, 572(sp)
  ADDW s4, s4, s5
  LW s5, 576(sp)
  ADDW s4, s4, s5
  LW s5, 580(sp)
  ADDW s4, s4, s5
  LW s5, 584(sp)
  ADDW s4, s4, s5
  LW s5, 588(sp)
  ADDW s4, s4, s5
  LW s5, 592(sp)
  ADDW s4, s4, s5
  LW s5, 596(sp)
  ADDW s4, s4, s5
  LW s5, 600(sp)
  ADDW s4, s4, s5
  LW s5, 604(sp)
  ADDW s4, s4, s5
  LW s5, 608(sp)
  ADDW s4, s4, s5
  LW s5, 612(sp)
  ADDW s4, s4, s5
  LW s5, 616(sp)
  ADDW s4, s4, s5
  LW s5, 620(sp)
  ADDW s4, s4, s5
  LW s5, 624(sp)
  ADDW s4, s4, s5
  LW s5, 628(sp)
  ADDW s4, s4, s5
  LW s5, 632(sp)
  ADDW s4, s4, s5
  LW s5, 636(sp)
  ADDW s4, s4, s5
  LW s5, 640(sp)
  ADDW s4, s4, s5
  LW s5, 644(sp)
  ADDW s4, s4, s5
  LW s5, 648(sp)
  ADDW s4, s4, s5
  LW s5, 652(sp)
  ADDW s4, s4, s5
  LW s5, 656(sp)
  ADDW s4, s4, s5
  LW s5, 660(sp)
  ADDW s4, s4, s5
  LW s5, 664(sp)
  ADDW s4, s4, s5
  LW s5, 668(sp)
  ADDW s4, s4, s5
  LW s5, 672(sp)
  ADDW s4, s4, s5
  LW s5, 676(sp)
  ADDW s4, s4, s5
  LW s5, 680(sp)
  ADDW s4, s4, s5
  LW s5, 684(sp)
  ADDW s4, s4, s5
  LW s5, 688(sp)
  ADDW s4, s4, s5
  LW s5, 692(sp)
  ADDW s4, s4, s5
  LW s5, 696(sp)
  ADDW s4, s4, s5
  LW s5, 700(sp)
  ADDW s4, s4, s5
  LW s5, 704(sp)
  ADDW s4, s4, s5
  LW s5, 708(sp)
  ADDW s4, s4, s5
  LW s5, 712(sp)
  ADDW s4, s4, s5
  LW s5, 716(sp)
  ADDW s4, s4, s5
  LW s5, 720(sp)
  ADDW s4, s4, s5
  LW s5, 724(sp)
  ADDW s4, s4, s5
  LW s5, 728(sp)
  ADDW s4, s4, s5
  LW s5, 732(sp)
  ADDW s4, s4, s5
  LW s5, 736(sp)
  ADDW s4, s4, s5
  LW s5, 740(sp)
  ADDW s4, s4, s5
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 328(sp)
  LD s0, 336(sp)
  LD s1, 344(sp)
  LD s2, 352(sp)
  LD s3, 360(sp)
  LD s4, 368(sp)
  LD s5, 376(sp)
  LD s6, 384(sp)
  LD s7, 392(sp)
  LD s8, 400(sp)
  LD s9, 408(sp)
  LD s10, 416(sp)
  LD s11, 752(sp)
  ADDI sp, sp, 768
  JALR zero, 0(ra)
bb14:
  ADD s2, s3, zero
  JAL zero, bb12
bb15:
  ADD s0, s1, zero
  JAL zero, bb10
bb16:
  LW t4, 224(sp)
  ADD s0, t4, zero
  JAL zero, bb9
bb17:
  LW t3, 320(sp)
  ADD t4, t3, zero
  SW t4, 264(sp)
  LW t3, 268(sp)
  ADD t4, t3, zero
  SW t4, 272(sp)
  JAL zero, bb1
bb18:
  SLLIW s8, s8, 2
  ADDI t4, sp, 424
  ADD t4, t4, s8
  SD t4, 744(sp)
  LW t3, 320(sp)
  ADD t4, t3, zero
  SW t4, 280(sp)
  ADD t4, s9, zero
  SW t4, 288(sp)
  # implict jump to bb19
bb19:
  LW t4, 288(sp)
  ADD s6, t4, zero
  LW t4, 280(sp)
  ADD s5, t4, zero
  LD t4, 744(sp)
  LW s4, 0(t4)
  SLLIW s3, s5, 2
  ADDI t5, sp, 424
  ADD s3, t5, s3
  LW s2, 0(s3)
  BLT s4, s2, bb24
  # implict jump to bb20
bb20:
  ADD s2, s6, zero
  # implict jump to bb21
bb21:
  ADD t4, s2, zero
  SW t4, 284(sp)
  ADDIW t4, s5, 1
  SW t4, 276(sp)
  LW t4, 276(sp)
  SLTI s4, t4, 16
  BNE s4, zero, bb23
  # implict jump to bb22
bb22:
  LW t4, 284(sp)
  ADD s7, t4, zero
  JAL zero, bb3
bb23:
  LW t3, 276(sp)
  ADD t4, t3, zero
  SW t4, 280(sp)
  LW t3, 284(sp)
  ADD t4, t3, zero
  SW t4, 288(sp)
  JAL zero, bb19
bb24:
  LD t4, 744(sp)
  LW s4, 0(t4)
  LW s6, 0(s3)
  LD t4, 744(sp)
  SW s6, 0(t4)
  SW s4, 0(s3)
  ADD s2, s4, zero
  JAL zero, bb21
