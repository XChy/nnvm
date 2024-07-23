.global main
.global sum
.section .bss
.section .data
.section .text
main:
  LUI t0, 1048064
  ADDIW t0, t0, -736
  ADD sp, sp, t0
  SD s4, 544(sp)
  SD s6, 552(sp)
  SD s8, 560(sp)
  SD ra, 568(sp)
  SD s0, 576(sp)
  SD s1, 584(sp)
  SD s2, 592(sp)
  SD s3, 600(sp)
  SD s5, 608(sp)
  SD s7, 616(sp)
  SD s10, 680(sp)
  SD s9, 720(sp)
  SD s11, 728(sp)
  LUI s0, 128
  ADDIW s0, s0, 0
  ADD t4, zero, s0
  SW t4, 356(sp)
  # implict jump to bb1
bb1:
  LW t3, 356(sp)
  ADD t4, t3, zero
  SW t4, 360(sp)
  LW t4, 360(sp)
  BNE t4, zero, bb60
  # implict jump to bb2
bb2:
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD s6, zero, zero
  ADD t4, zero, zero
  SW t4, 316(sp)
  ADD t4, zero, zero
  SW t4, 416(sp)
  ADD t4, zero, zero
  SW t4, 412(sp)
  ADD t4, zero, zero
  SW t4, 408(sp)
  ADD t4, zero, zero
  SW t4, 404(sp)
  ADD t4, zero, zero
  SW t4, 400(sp)
  ADD t4, zero, zero
  SW t4, 396(sp)
  ADD t4, zero, zero
  SW t4, 392(sp)
  ADD t4, zero, zero
  SW t4, 352(sp)
  ADD t4, zero, zero
  SW t4, 384(sp)
  ADD t4, zero, zero
  SW t4, 376(sp)
  ADD t4, zero, zero
  SW t4, 372(sp)
  ADD t4, zero, zero
  SW t4, 368(sp)
  ADD t4, zero, zero
  SW t4, 364(sp)
  # implict jump to bb3
bb3:
  LW t3, 364(sp)
  ADD t4, t3, zero
  SW t4, 300(sp)
  LW t3, 368(sp)
  ADD t4, t3, zero
  SW t4, 296(sp)
  LW t3, 372(sp)
  ADD t4, t3, zero
  SW t4, 332(sp)
  LW t3, 376(sp)
  ADD t4, t3, zero
  SW t4, 292(sp)
  LW t4, 384(sp)
  ADD s0, t4, zero
  LW t4, 352(sp)
  ADD s1, t4, zero
  LW t3, 392(sp)
  ADD t4, t3, zero
  SW t4, 304(sp)
  LW t3, 396(sp)
  ADD t4, t3, zero
  SW t4, 308(sp)
  LW t3, 400(sp)
  ADD t4, t3, zero
  SW t4, 320(sp)
  LW t3, 404(sp)
  ADD t4, t3, zero
  SW t4, 288(sp)
  LW t3, 408(sp)
  ADD t4, t3, zero
  SW t4, 380(sp)
  LW t3, 412(sp)
  ADD t4, t3, zero
  SW t4, 284(sp)
  LW t3, 416(sp)
  ADD t4, t3, zero
  SW t4, 324(sp)
  LW t3, 316(sp)
  ADD t4, t3, zero
  SW t4, 312(sp)
  ADD t4, s6, zero
  SW t4, 280(sp)
  ADD t4, s5, zero
  SW t4, 328(sp)
  ADD s11, s4, zero
  ADD s10, s3, zero
  ADD s9, s2, zero
  LW t4, 380(sp)
  SLTI s8, t4, 2
  BNE s8, zero, bb5
  # implict jump to bb4
bb4:
  LW s8, 736(sp)
  ADDI s7, sp, 744
  LW s7, 0(s7)
  ADDW s7, s8, s7
  ADDI s8, sp, 740
  LW s8, 0(s8)
  ADDW s7, s7, s8
  ADDI s8, sp, 776
  LW s8, 0(s8)
  ADDW s7, s7, s8
  ADDI s8, sp, 760
  LW s8, 0(s8)
  ADDW s7, s7, s8
  ADDI s8, sp, 964
  LW s8, 0(s8)
  ADDW s7, s7, s8
  ADDI s8, sp, 792
  LW s8, 0(s8)
  ADDW s7, s7, s8
  ADDI s8, sp, 1700
  LW s8, 0(s8)
  ADDW s7, s7, s8
  ADDI s8, sp, 960
  LW s8, 0(s8)
  ADDW s7, s7, s8
  ADDI s8, sp, 1540
  LW s8, 0(s8)
  ADDW s7, s7, s8
  ADDI t5, sp, 736
  ADDI s8, t5, 1996
  LW s8, 0(s8)
  ADDW s7, s7, s8
  LUI s8, 1
  ADDIW s8, s8, -872
  ADDI t5, sp, 736
  ADD s8, t5, s8
  LW s8, 0(s8)
  ADDW s7, s7, s8
  LUI s8, 6
  ADDIW s8, s8, 1824
  ADDI t5, sp, 736
  ADD s8, t5, s8
  LW s8, 0(s8)
  ADDW s7, s7, s8
  ADDI s8, sp, 1244
  LW s8, 0(s8)
  ADDW s7, s7, s8
  ADDI s8, sp, 860
  LW s8, 0(s8)
  ADDW s7, s7, s8
  LUI s8, 60
  ADDIW s8, s8, 912
  ADDI t5, sp, 736
  ADD s8, t5, s8
  LW s8, 0(s8)
  ADDW s7, s7, s8
  LUI s8, 4
  ADDIW s8, s8, -428
  ADDI t5, sp, 736
  ADD s8, t5, s8
  LW s8, 0(s8)
  ADDW s7, s7, s8
  LUI s8, 202
  ADDIW s8, s8, 972
  ADDI t5, sp, 736
  ADD s8, t5, s8
  LW s8, 0(s8)
  ADDW s7, s7, s8
  LUI s8, 69
  ADDIW s8, s8, -1024
  ADDI a0, sp, 736
  ADD s8, a0, s8
  LW s8, 0(s8)
  ADDW s7, s7, s8
  ADD a0, s7, zero
  CALL putint
  ADD a0, zero, zero
  LD s4, 544(sp)
  LD s6, 552(sp)
  LD s8, 560(sp)
  LD ra, 568(sp)
  LD s0, 576(sp)
  LD s1, 584(sp)
  LD s2, 592(sp)
  LD s3, 600(sp)
  LD s5, 608(sp)
  LD s7, 616(sp)
  LD s10, 680(sp)
  LD s9, 720(sp)
  LD s11, 728(sp)
  LUI t0, 512
  ADDIW t0, t0, 736
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb5:
  LW t4, 380(sp)
  SLLIW s7, t4, 20
  ADDI t4, sp, 736
  ADD t4, t4, s7
  SD t4, 712(sp)
  ADD s8, s9, zero
  ADD t4, s10, zero
  SW t4, 476(sp)
  ADD t4, s11, zero
  SW t4, 420(sp)
  LW t3, 328(sp)
  ADD t4, t3, zero
  SW t4, 480(sp)
  LW t3, 280(sp)
  ADD t4, t3, zero
  SW t4, 516(sp)
  LW t3, 312(sp)
  ADD t4, t3, zero
  SW t4, 536(sp)
  LW t3, 324(sp)
  ADD t4, t3, zero
  SW t4, 532(sp)
  LW t3, 284(sp)
  ADD t4, t3, zero
  SW t4, 520(sp)
  ADD t4, zero, zero
  SW t4, 484(sp)
  LW t3, 288(sp)
  ADD t4, t3, zero
  SW t4, 512(sp)
  LW t3, 320(sp)
  ADD t4, t3, zero
  SW t4, 500(sp)
  LW t3, 308(sp)
  ADD t4, t3, zero
  SW t4, 496(sp)
  LW t3, 304(sp)
  ADD t4, t3, zero
  SW t4, 492(sp)
  ADD t4, s1, zero
  SW t4, 488(sp)
  ADD t4, s0, zero
  SW t4, 504(sp)
  LW t3, 292(sp)
  ADD t4, t3, zero
  SW t4, 348(sp)
  LW t3, 332(sp)
  ADD t4, t3, zero
  SW t4, 344(sp)
  LW t3, 296(sp)
  ADD t4, t3, zero
  SW t4, 340(sp)
  LW t3, 300(sp)
  ADD t4, t3, zero
  SW t4, 336(sp)
  # implict jump to bb6
bb6:
  LW t4, 336(sp)
  ADD s7, t4, zero
  LW t4, 340(sp)
  ADD t6, t4, zero
  LW t4, 344(sp)
  ADD a7, t4, zero
  LW t4, 348(sp)
  ADD a6, t4, zero
  LW t4, 504(sp)
  ADD a5, t4, zero
  LW t4, 488(sp)
  ADD s0, t4, zero
  LW t4, 492(sp)
  ADD s1, t4, zero
  LW t4, 496(sp)
  ADD a4, t4, zero
  LW t4, 500(sp)
  ADD a3, t4, zero
  LW t4, 512(sp)
  ADD a2, t4, zero
  LW t3, 484(sp)
  ADD t4, t3, zero
  SW t4, 508(sp)
  LW t4, 520(sp)
  ADD a1, t4, zero
  LW t4, 532(sp)
  ADD a0, t4, zero
  LW t4, 536(sp)
  ADD t2, t4, zero
  LW t4, 516(sp)
  ADD t1, t4, zero
  LW t4, 480(sp)
  ADD t0, t4, zero
  LW t4, 420(sp)
  ADD ra, t4, zero
  LW t4, 476(sp)
  ADD s11, t4, zero
  ADD s10, s8, zero
  LW t4, 508(sp)
  SLTI s9, t4, 2
  BNE s9, zero, bb8
  # implict jump to bb7
bb7:
  LW t4, 380(sp)
  ADDIW s9, t4, 1
  ADD s2, s10, zero
  ADD s3, s11, zero
  ADD s4, ra, zero
  ADD s5, t0, zero
  ADD s6, t1, zero
  ADD t4, t2, zero
  SW t4, 316(sp)
  ADD t4, a0, zero
  SW t4, 416(sp)
  ADD t4, a1, zero
  SW t4, 412(sp)
  ADD t4, s9, zero
  SW t4, 408(sp)
  ADD t4, a2, zero
  SW t4, 404(sp)
  ADD t4, a3, zero
  SW t4, 400(sp)
  ADD t4, a4, zero
  SW t4, 396(sp)
  ADD t4, s1, zero
  SW t4, 392(sp)
  ADD t4, s0, zero
  SW t4, 352(sp)
  ADD t4, a5, zero
  SW t4, 384(sp)
  ADD t4, a6, zero
  SW t4, 376(sp)
  ADD t4, a7, zero
  SW t4, 372(sp)
  ADD t4, t6, zero
  SW t4, 368(sp)
  ADD t4, s7, zero
  SW t4, 364(sp)
  JAL zero, bb3
bb8:
  LW t4, 508(sp)
  SLLIW s0, t4, 19
  LD t3, 712(sp)
  ADD t4, t3, s0
  SD t4, 704(sp)
  ADD s2, s10, zero
  ADD s3, s11, zero
  ADD s4, ra, zero
  ADD s5, t0, zero
  ADD s6, t1, zero
  ADD s9, t2, zero
  ADD t4, a0, zero
  SW t4, 460(sp)
  ADD t4, a1, zero
  SW t4, 424(sp)
  ADD t4, a2, zero
  SW t4, 428(sp)
  ADD t4, a3, zero
  SW t4, 432(sp)
  ADD t4, a4, zero
  SW t4, 436(sp)
  ADD t4, s1, zero
  SW t4, 440(sp)
  ADD t4, zero, zero
  SW t4, 444(sp)
  ADD t4, a5, zero
  SW t4, 448(sp)
  ADD t4, a6, zero
  SW t4, 452(sp)
  ADD t4, a7, zero
  SW t4, 456(sp)
  ADD t4, t6, zero
  SW t4, 464(sp)
  ADD t4, s7, zero
  SW t4, 468(sp)
  # implict jump to bb9
bb9:
  LW t4, 468(sp)
  ADD a4, t4, zero
  LW t4, 464(sp)
  ADD a5, t4, zero
  LW t4, 456(sp)
  ADD a6, t4, zero
  LW t4, 452(sp)
  ADD a7, t4, zero
  LW t4, 448(sp)
  ADD t6, t4, zero
  LW t3, 444(sp)
  ADD t4, t3, zero
  SW t4, 472(sp)
  LW t4, 440(sp)
  ADD s0, t4, zero
  LW t4, 436(sp)
  ADD s7, t4, zero
  LW t4, 432(sp)
  ADD a3, t4, zero
  LW t4, 428(sp)
  ADD a2, t4, zero
  LW t4, 424(sp)
  ADD a1, t4, zero
  LW t4, 460(sp)
  ADD a0, t4, zero
  ADD t2, s9, zero
  ADD s1, s6, zero
  ADD t1, s5, zero
  ADD t0, s4, zero
  ADD ra, s3, zero
  ADD s11, s2, zero
  LW t4, 472(sp)
  SLTI s10, t4, 2
  BNE s10, zero, bb11
  # implict jump to bb10
bb10:
  LW t4, 508(sp)
  ADDIW s10, t4, 1
  ADD s8, s11, zero
  ADD t4, ra, zero
  SW t4, 476(sp)
  ADD t4, t0, zero
  SW t4, 420(sp)
  ADD t4, t1, zero
  SW t4, 480(sp)
  ADD t4, s1, zero
  SW t4, 516(sp)
  ADD t4, t2, zero
  SW t4, 536(sp)
  ADD t4, a0, zero
  SW t4, 532(sp)
  ADD t4, a1, zero
  SW t4, 520(sp)
  ADD t4, s10, zero
  SW t4, 484(sp)
  ADD t4, a2, zero
  SW t4, 512(sp)
  ADD t4, a3, zero
  SW t4, 500(sp)
  ADD t4, s7, zero
  SW t4, 496(sp)
  ADD t4, s0, zero
  SW t4, 492(sp)
  LW t3, 472(sp)
  ADD t4, t3, zero
  SW t4, 488(sp)
  ADD t4, t6, zero
  SW t4, 504(sp)
  ADD t4, a7, zero
  SW t4, 348(sp)
  ADD t4, a6, zero
  SW t4, 344(sp)
  ADD t4, a5, zero
  SW t4, 340(sp)
  ADD t4, a4, zero
  SW t4, 336(sp)
  JAL zero, bb6
bb11:
  LW t4, 472(sp)
  SLLIW s8, t4, 18
  LD t3, 704(sp)
  ADD t4, t3, s8
  SD t4, 696(sp)
  ADD s10, s11, zero
  ADD s11, ra, zero
  ADD t4, t0, zero
  SW t4, 120(sp)
  ADD t4, t1, zero
  SW t4, 116(sp)
  ADD t4, s1, zero
  SW t4, 112(sp)
  ADD t4, t2, zero
  SW t4, 72(sp)
  ADD t4, a0, zero
  SW t4, 104(sp)
  ADD t4, a1, zero
  SW t4, 100(sp)
  ADD t4, a2, zero
  SW t4, 96(sp)
  ADD t4, a3, zero
  SW t4, 92(sp)
  ADD t4, s7, zero
  SW t4, 88(sp)
  ADD t4, s0, zero
  SW t4, 84(sp)
  ADD t4, t6, zero
  SW t4, 248(sp)
  ADD t4, zero, zero
  SW t4, 80(sp)
  ADD t4, a6, zero
  SW t4, 76(sp)
  ADD t4, a5, zero
  SW t4, 524(sp)
  ADD t4, a4, zero
  SW t4, 528(sp)
  # implict jump to bb12
bb12:
  LW t4, 528(sp)
  ADD t6, t4, zero
  LW t4, 524(sp)
  ADD s8, t4, zero
  LW t4, 76(sp)
  ADD a4, t4, zero
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 388(sp)
  LW t4, 248(sp)
  ADD a5, t4, zero
  LW t4, 84(sp)
  ADD a6, t4, zero
  LW t4, 88(sp)
  ADD a7, t4, zero
  LW t4, 92(sp)
  ADD a3, t4, zero
  LW t4, 96(sp)
  ADD s0, t4, zero
  LW t4, 100(sp)
  ADD s7, t4, zero
  LW t4, 104(sp)
  ADD a2, t4, zero
  LW t4, 72(sp)
  ADD a1, t4, zero
  LW t4, 112(sp)
  ADD a0, t4, zero
  LW t4, 116(sp)
  ADD t2, t4, zero
  LW t4, 120(sp)
  ADD t1, t4, zero
  ADD s1, s11, zero
  ADD t0, s10, zero
  LW t4, 388(sp)
  SLTI ra, t4, 2
  BNE ra, zero, bb14
  # implict jump to bb13
bb13:
  LW t4, 472(sp)
  ADDIW ra, t4, 1
  ADD s2, t0, zero
  ADD s3, s1, zero
  ADD s4, t1, zero
  ADD s5, t2, zero
  ADD s6, a0, zero
  ADD s9, a1, zero
  ADD t4, a2, zero
  SW t4, 460(sp)
  ADD t4, s7, zero
  SW t4, 424(sp)
  ADD t4, s0, zero
  SW t4, 428(sp)
  ADD t4, a3, zero
  SW t4, 432(sp)
  ADD t4, a7, zero
  SW t4, 436(sp)
  ADD t4, a6, zero
  SW t4, 440(sp)
  ADD t4, ra, zero
  SW t4, 444(sp)
  ADD t4, a5, zero
  SW t4, 448(sp)
  LW t3, 388(sp)
  ADD t4, t3, zero
  SW t4, 452(sp)
  ADD t4, a4, zero
  SW t4, 456(sp)
  ADD t4, s8, zero
  SW t4, 464(sp)
  ADD t4, t6, zero
  SW t4, 468(sp)
  JAL zero, bb9
bb14:
  LW t4, 388(sp)
  SLLIW s2, t4, 17
  LD t3, 696(sp)
  ADD t4, t3, s2
  SD t4, 688(sp)
  ADD s3, t0, zero
  ADD s4, t1, zero
  ADD s5, t2, zero
  ADD s6, a0, zero
  ADD s8, a1, zero
  ADD s9, a2, zero
  ADD t4, s7, zero
  SW t4, 20(sp)
  ADD t4, s0, zero
  SW t4, 16(sp)
  ADD t4, a3, zero
  SW t4, 12(sp)
  ADD t4, a7, zero
  SW t4, 8(sp)
  ADD t4, a6, zero
  SW t4, 4(sp)
  ADD t4, a5, zero
  SW t4, 36(sp)
  ADD t4, a4, zero
  SW t4, 136(sp)
  ADD t4, zero, zero
  SW t4, 132(sp)
  ADD t4, t6, zero
  SW t4, 128(sp)
  # implict jump to bb15
bb15:
  LW t4, 128(sp)
  ADD a3, t4, zero
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t4, 136(sp)
  ADD a5, t4, zero
  LW t4, 36(sp)
  ADD a6, t4, zero
  LW t4, 4(sp)
  ADD a7, t4, zero
  LW t4, 8(sp)
  ADD t6, t4, zero
  LW t4, 12(sp)
  ADD a4, t4, zero
  LW t4, 16(sp)
  ADD s2, t4, zero
  LW t4, 20(sp)
  ADD a2, t4, zero
  ADD a1, s9, zero
  ADD a0, s8, zero
  ADD t2, s6, zero
  ADD t1, s5, zero
  ADD t0, s4, zero
  ADD ra, s1, zero
  ADD s0, s3, zero
  LW t4, 124(sp)
  SLTI s7, t4, 2
  BNE s7, zero, bb17
  # implict jump to bb16
bb16:
  LW t4, 388(sp)
  ADDIW s7, t4, 1
  ADD s10, s0, zero
  ADD s11, ra, zero
  ADD t4, t0, zero
  SW t4, 120(sp)
  ADD t4, t1, zero
  SW t4, 116(sp)
  ADD t4, t2, zero
  SW t4, 112(sp)
  ADD t4, a0, zero
  SW t4, 72(sp)
  ADD t4, a1, zero
  SW t4, 104(sp)
  ADD t4, a2, zero
  SW t4, 100(sp)
  ADD t4, s2, zero
  SW t4, 96(sp)
  ADD t4, a4, zero
  SW t4, 92(sp)
  ADD t4, t6, zero
  SW t4, 88(sp)
  ADD t4, a7, zero
  SW t4, 84(sp)
  ADD t4, a6, zero
  SW t4, 248(sp)
  ADD t4, s7, zero
  SW t4, 80(sp)
  ADD t4, a5, zero
  SW t4, 76(sp)
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 524(sp)
  ADD t4, a3, zero
  SW t4, 528(sp)
  JAL zero, bb12
bb17:
  LW t4, 124(sp)
  SLLIW s7, t4, 16
  LD t3, 688(sp)
  ADD t4, t3, s7
  SD t4, 672(sp)
  ADD s10, ra, zero
  ADD s11, t0, zero
  ADD t4, t1, zero
  SW t4, 108(sp)
  ADD t4, t2, zero
  SW t4, 68(sp)
  ADD t4, a0, zero
  SW t4, 64(sp)
  ADD t4, a1, zero
  SW t4, 60(sp)
  ADD t4, a2, zero
  SW t4, 56(sp)
  ADD t4, s2, zero
  SW t4, 52(sp)
  ADD t4, a4, zero
  SW t4, 48(sp)
  ADD t4, t6, zero
  SW t4, 44(sp)
  ADD t4, a7, zero
  SW t4, 40(sp)
  ADD t4, a6, zero
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, a3, zero
  SW t4, 28(sp)
  # implict jump to bb18
bb18:
  LW t4, 28(sp)
  ADD a7, t4, zero
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t4, 0(sp)
  ADD t6, t4, zero
  LW t4, 40(sp)
  ADD s7, t4, zero
  LW t4, 44(sp)
  ADD a3, t4, zero
  LW t4, 48(sp)
  ADD a6, t4, zero
  LW t4, 52(sp)
  ADD a5, t4, zero
  LW t4, 56(sp)
  ADD a4, t4, zero
  LW t4, 60(sp)
  ADD a2, t4, zero
  LW t4, 64(sp)
  ADD a1, t4, zero
  LW t4, 68(sp)
  ADD s2, t4, zero
  LW t4, 108(sp)
  ADD a0, t4, zero
  ADD t2, s11, zero
  ADD t1, s10, zero
  ADD t0, s0, zero
  LW t4, 24(sp)
  SLTI ra, t4, 2
  BNE ra, zero, bb20
  # implict jump to bb19
bb19:
  LW t4, 124(sp)
  ADDIW ra, t4, 1
  ADD s3, t0, zero
  ADD s1, t1, zero
  ADD s4, t2, zero
  ADD s5, a0, zero
  ADD s6, s2, zero
  ADD s8, a1, zero
  ADD s9, a2, zero
  ADD t4, a4, zero
  SW t4, 20(sp)
  ADD t4, a5, zero
  SW t4, 16(sp)
  ADD t4, a6, zero
  SW t4, 12(sp)
  ADD t4, a3, zero
  SW t4, 8(sp)
  ADD t4, s7, zero
  SW t4, 4(sp)
  ADD t4, t6, zero
  SW t4, 36(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  ADD t4, ra, zero
  SW t4, 132(sp)
  ADD t4, a7, zero
  SW t4, 128(sp)
  JAL zero, bb15
bb20:
  LW t4, 24(sp)
  SLLIW s1, t4, 15
  LD t3, 672(sp)
  ADD t4, t3, s1
  SD t4, 664(sp)
  ADD s3, t0, zero
  ADD s4, t1, zero
  ADD s5, t2, zero
  ADD s6, a0, zero
  ADD s8, a1, zero
  ADD s9, a2, zero
  ADD ra, a4, zero
  ADD t4, a5, zero
  SW t4, 240(sp)
  ADD t4, a6, zero
  SW t4, 236(sp)
  ADD t4, zero, zero
  SW t4, 232(sp)
  ADD t4, s7, zero
  SW t4, 228(sp)
  ADD t4, t6, zero
  SW t4, 224(sp)
  ADD t4, a7, zero
  SW t4, 220(sp)
  # implict jump to bb21
bb21:
  LW t4, 220(sp)
  ADD a2, t4, zero
  LW t4, 224(sp)
  ADD a3, t4, zero
  LW t4, 228(sp)
  ADD a4, t4, zero
  LW t3, 232(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  LW t4, 236(sp)
  ADD a6, t4, zero
  LW t4, 240(sp)
  ADD a7, t4, zero
  ADD t6, ra, zero
  ADD a5, s9, zero
  ADD s1, s8, zero
  ADD a1, s2, zero
  ADD a0, s6, zero
  ADD s7, s5, zero
  ADD t2, s4, zero
  ADD t1, s3, zero
  LW t4, 216(sp)
  SLTI t0, t4, 2
  BNE t0, zero, bb23
  # implict jump to bb22
bb22:
  LW t4, 24(sp)
  ADDIW t0, t4, 1
  ADD s0, t1, zero
  ADD s10, t2, zero
  ADD s11, s7, zero
  ADD t4, a0, zero
  SW t4, 108(sp)
  ADD t4, a1, zero
  SW t4, 68(sp)
  ADD t4, s1, zero
  SW t4, 64(sp)
  ADD t4, a5, zero
  SW t4, 60(sp)
  ADD t4, t6, zero
  SW t4, 56(sp)
  ADD t4, a7, zero
  SW t4, 52(sp)
  ADD t4, a6, zero
  SW t4, 48(sp)
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  ADD t4, a4, zero
  SW t4, 40(sp)
  ADD t4, a3, zero
  SW t4, 0(sp)
  ADD t4, t0, zero
  SW t4, 32(sp)
  ADD t4, a2, zero
  SW t4, 28(sp)
  JAL zero, bb18
bb23:
  LW t4, 216(sp)
  SLLIW s0, t4, 14
  LD t3, 664(sp)
  ADD t4, t3, s0
  SD t4, 656(sp)
  ADD s10, zero, zero
  ADD s11, t2, zero
  ADD t0, a0, zero
  ADD t4, a1, zero
  SW t4, 176(sp)
  ADD t4, s1, zero
  SW t4, 272(sp)
  ADD t4, a5, zero
  SW t4, 268(sp)
  ADD t4, t6, zero
  SW t4, 264(sp)
  ADD t4, a7, zero
  SW t4, 260(sp)
  ADD t4, a6, zero
  SW t4, 256(sp)
  ADD t4, a4, zero
  SW t4, 252(sp)
  ADD t4, a3, zero
  SW t4, 212(sp)
  ADD t4, a2, zero
  SW t4, 244(sp)
  # implict jump to bb24
bb24:
  LW t4, 244(sp)
  ADD a6, t4, zero
  LW t4, 212(sp)
  ADD a7, t4, zero
  LW t4, 252(sp)
  ADD t6, t4, zero
  LW t4, 256(sp)
  ADD s0, t4, zero
  LW t4, 260(sp)
  ADD a2, t4, zero
  LW t4, 264(sp)
  ADD a3, t4, zero
  LW t4, 268(sp)
  ADD a4, t4, zero
  LW t4, 272(sp)
  ADD a5, t4, zero
  LW t4, 176(sp)
  ADD a1, t4, zero
  ADD a0, t0, zero
  ADD t2, s7, zero
  ADD s1, s11, zero
  ADD t4, s10, zero
  SW t4, 276(sp)
  LW t4, 276(sp)
  SLTI t1, t4, 2
  BNE t1, zero, bb26
  # implict jump to bb25
bb25:
  LW t4, 216(sp)
  ADDIW t1, t4, 1
  LW t4, 276(sp)
  ADD s3, t4, zero
  ADD s4, s1, zero
  ADD s5, t2, zero
  ADD s6, a0, zero
  ADD s2, a1, zero
  ADD s8, a5, zero
  ADD s9, a4, zero
  ADD ra, a3, zero
  ADD t4, a2, zero
  SW t4, 240(sp)
  ADD t4, s0, zero
  SW t4, 236(sp)
  ADD t4, t1, zero
  SW t4, 232(sp)
  ADD t4, t6, zero
  SW t4, 228(sp)
  ADD t4, a7, zero
  SW t4, 224(sp)
  ADD t4, a6, zero
  SW t4, 220(sp)
  JAL zero, bb21
bb26:
  LW t4, 276(sp)
  SLLIW s2, t4, 13
  LD t3, 656(sp)
  ADD t4, t3, s2
  SD t4, 648(sp)
  ADD s3, t2, zero
  ADD s4, a0, zero
  ADD s5, a1, zero
  ADD s6, a5, zero
  ADD s8, zero, zero
  ADD s9, a3, zero
  ADD ra, a2, zero
  ADD t4, t6, zero
  SW t4, 156(sp)
  ADD t4, a7, zero
  SW t4, 152(sp)
  ADD t4, a6, zero
  SW t4, 148(sp)
  # implict jump to bb27
bb27:
  LW t4, 148(sp)
  ADD a1, t4, zero
  LW t4, 152(sp)
  ADD a2, t4, zero
  LW t4, 156(sp)
  ADD a3, t4, zero
  ADD a4, s0, zero
  ADD a5, ra, zero
  ADD a6, s9, zero
  ADD t4, s8, zero
  SW t4, 144(sp)
  ADD t6, s6, zero
  ADD a7, s5, zero
  ADD s2, s4, zero
  ADD a0, s3, zero
  ADD t2, s1, zero
  LW t4, 144(sp)
  SLTI t1, t4, 2
  BNE t1, zero, bb29
  # implict jump to bb28
bb28:
  LW t4, 276(sp)
  ADDIW t1, t4, 1
  ADD s10, t1, zero
  ADD s11, t2, zero
  ADD s7, a0, zero
  ADD t0, s2, zero
  ADD t4, a7, zero
  SW t4, 176(sp)
  ADD t4, t6, zero
  SW t4, 272(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 268(sp)
  ADD t4, a6, zero
  SW t4, 264(sp)
  ADD t4, a5, zero
  SW t4, 260(sp)
  ADD t4, a4, zero
  SW t4, 256(sp)
  ADD t4, a3, zero
  SW t4, 252(sp)
  ADD t4, a2, zero
  SW t4, 212(sp)
  ADD t4, a1, zero
  SW t4, 244(sp)
  JAL zero, bb24
bb29:
  LW t4, 144(sp)
  SLLIW s7, t4, 12
  LD t3, 648(sp)
  ADD t4, t3, s7
  SD t4, 640(sp)
  ADD s10, zero, zero
  ADD s11, a0, zero
  ADD t0, a7, zero
  ADD t1, t6, zero
  ADD t4, a6, zero
  SW t4, 188(sp)
  ADD t4, a5, zero
  SW t4, 180(sp)
  ADD t4, a4, zero
  SW t4, 140(sp)
  ADD t4, a3, zero
  SW t4, 172(sp)
  ADD t4, a2, zero
  SW t4, 168(sp)
  ADD t4, a1, zero
  SW t4, 164(sp)
  # implict jump to bb30
bb30:
  LW t4, 164(sp)
  ADD a5, t4, zero
  LW t4, 168(sp)
  ADD a6, t4, zero
  LW t4, 172(sp)
  ADD a7, t4, zero
  LW t4, 140(sp)
  ADD t6, t4, zero
  LW t4, 180(sp)
  ADD s7, t4, zero
  LW t4, 188(sp)
  ADD a1, t4, zero
  ADD a2, t1, zero
  ADD a3, t0, zero
  ADD a4, s2, zero
  ADD a0, s11, zero
  ADD t4, s10, zero
  SW t4, 184(sp)
  LW t4, 184(sp)
  SLTI t2, t4, 2
  BNE t2, zero, bb32
  # implict jump to bb31
bb31:
  LW t4, 144(sp)
  ADDIW t2, t4, 1
  LW t4, 184(sp)
  ADD s1, t4, zero
  ADD s3, a0, zero
  ADD s4, a4, zero
  ADD s5, a3, zero
  ADD s6, a2, zero
  ADD s8, t2, zero
  ADD s9, a1, zero
  ADD ra, s7, zero
  ADD s0, t6, zero
  ADD t4, a7, zero
  SW t4, 156(sp)
  ADD t4, a6, zero
  SW t4, 152(sp)
  ADD t4, a5, zero
  SW t4, 148(sp)
  JAL zero, bb27
bb32:
  LW t4, 184(sp)
  SLLIW s0, t4, 11
  LD t3, 640(sp)
  ADD t4, t3, s0
  SD t4, 632(sp)
  ADD s1, a0, zero
  ADD s3, a4, zero
  ADD s4, a3, zero
  ADD s5, a2, zero
  ADD s6, a1, zero
  ADD s7, zero, zero
  ADD s8, t6, zero
  ADD s9, a7, zero
  ADD ra, a6, zero
  ADD t2, a5, zero
  # implict jump to bb33
bb33:
  ADD a0, t2, zero
  ADD a1, ra, zero
  ADD a2, s9, zero
  ADD a3, s8, zero
  ADD t4, s7, zero
  SW t4, 192(sp)
  ADD a5, s6, zero
  ADD a6, s5, zero
  ADD a7, s4, zero
  ADD t6, s3, zero
  ADD a4, s1, zero
  LW t4, 192(sp)
  SLTI s0, t4, 2
  BNE s0, zero, bb35
  # implict jump to bb34
bb34:
  LW t4, 184(sp)
  ADDIW s0, t4, 1
  ADD s10, s0, zero
  ADD s11, a4, zero
  ADD s2, t6, zero
  ADD t0, a7, zero
  ADD t1, a6, zero
  ADD t4, a5, zero
  SW t4, 188(sp)
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  ADD t4, a3, zero
  SW t4, 140(sp)
  ADD t4, a2, zero
  SW t4, 172(sp)
  ADD t4, a1, zero
  SW t4, 168(sp)
  ADD t4, a0, zero
  SW t4, 164(sp)
  JAL zero, bb30
bb35:
  LW t4, 192(sp)
  SLLIW s0, t4, 10
  LD t3, 632(sp)
  ADD t4, t3, s0
  SD t4, 624(sp)
  ADD s2, a4, zero
  ADD s10, t6, zero
  ADD s11, a7, zero
  ADD t0, a6, zero
  ADD t1, a5, zero
  ADD a2, a3, zero
  ADD t4, zero, zero
  SW t4, 196(sp)
  ADD t4, a1, zero
  SW t4, 204(sp)
  ADD t4, a0, zero
  SW t4, 208(sp)
  # implict jump to bb36
bb36:
  LW t4, 208(sp)
  ADD a4, t4, zero
  LW t4, 204(sp)
  ADD a5, t4, zero
  LW t3, 196(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  ADD a7, a2, zero
  ADD t6, t1, zero
  ADD a6, t0, zero
  ADD s0, s11, zero
  ADD a0, s10, zero
  ADD a1, s2, zero
  LW t4, 200(sp)
  SLTI a3, t4, 2
  BNE a3, zero, bb38
  # implict jump to bb37
bb37:
  LW t4, 192(sp)
  ADDIW a3, t4, 1
  ADD s1, a1, zero
  ADD s3, a0, zero
  ADD s4, s0, zero
  ADD s5, a6, zero
  ADD s6, t6, zero
  ADD s7, a3, zero
  ADD s8, a7, zero
  LW t4, 200(sp)
  ADD s9, t4, zero
  ADD ra, a5, zero
  ADD t2, a4, zero
  JAL zero, bb33
bb38:
  LW t4, 200(sp)
  SLLIW s1, t4, 9
  LD t4, 624(sp)
  ADD s1, t4, s1
  ADD s3, zero, zero
  ADD s4, a0, zero
  ADD s5, a6, zero
  ADD s6, t6, zero
  ADD s7, a7, zero
  ADD s8, a5, zero
  ADD s9, a4, zero
  # implict jump to bb39
bb39:
  ADD ra, s9, zero
  ADD t2, s8, zero
  ADD a0, s7, zero
  ADD a1, s6, zero
  ADD a3, s5, zero
  ADD a4, s0, zero
  ADD a5, s4, zero
  ADD a6, s3, zero
  SLTI a7, a6, 2
  BNE a7, zero, bb41
  # implict jump to bb40
bb40:
  LW t4, 200(sp)
  ADDIW a7, t4, 1
  ADD s2, a6, zero
  ADD s10, a5, zero
  ADD s11, a4, zero
  ADD t0, a3, zero
  ADD t1, a1, zero
  ADD a2, a0, zero
  ADD t4, a7, zero
  SW t4, 196(sp)
  ADD t4, t2, zero
  SW t4, 204(sp)
  ADD t4, ra, zero
  SW t4, 208(sp)
  JAL zero, bb36
bb41:
  SLLIW s2, a6, 8
  ADD s2, s1, s2
  ADD s10, zero, zero
  ADD s11, a4, zero
  ADD t0, a3, zero
  ADD t1, a1, zero
  # implict jump to bb42
bb42:
  ADD a1, ra, zero
  ADD a2, t2, zero
  ADD a3, a0, zero
  ADD a4, t1, zero
  ADD a5, t0, zero
  ADD a7, s11, zero
  ADD t4, s10, zero
  SW t4, 160(sp)
  LW t4, 160(sp)
  SLTI t6, t4, 2
  BNE t6, zero, bb44
  # implict jump to bb43
bb43:
  ADDIW t6, a6, 1
  ADD s3, t6, zero
  LW t4, 160(sp)
  ADD s4, t4, zero
  ADD s0, a7, zero
  ADD s5, a5, zero
  ADD s6, a4, zero
  ADD s7, a3, zero
  ADD s8, a2, zero
  ADD s9, a1, zero
  JAL zero, bb39
bb44:
  LW t4, 160(sp)
  SLLIW s0, t4, 7
  ADD s0, s2, s0
  ADD s3, zero, zero
  ADD s4, a5, zero
  ADD s5, a4, zero
  ADD s6, a3, zero
  ADD s7, a2, zero
  ADD s8, a1, zero
  # implict jump to bb45
bb45:
  ADD s9, s8, zero
  ADD a1, s7, zero
  ADD a2, s6, zero
  ADD a3, s5, zero
  ADD a4, s4, zero
  ADD a5, s3, zero
  SLTI a7, a5, 2
  BNE a7, zero, bb47
  # implict jump to bb46
bb46:
  LW t4, 160(sp)
  ADDIW a7, t4, 1
  ADD s10, a7, zero
  ADD s11, a5, zero
  ADD t0, a4, zero
  ADD t1, a3, zero
  ADD a0, a2, zero
  ADD t2, a1, zero
  ADD ra, s9, zero
  JAL zero, bb42
bb47:
  SLLIW s10, a5, 6
  ADD s10, s0, s10
  ADD s11, zero, zero
  ADD ra, a3, zero
  ADD t0, a2, zero
  ADD t1, a1, zero
  # implict jump to bb48
bb48:
  ADD t2, s9, zero
  ADD a0, t1, zero
  ADD a1, t0, zero
  ADD a2, ra, zero
  ADD a3, s11, zero
  SLTI a4, a3, 2
  BNE a4, zero, bb50
  # implict jump to bb49
bb49:
  ADDIW a4, a5, 1
  ADD s3, a4, zero
  ADD s4, a3, zero
  ADD s5, a2, zero
  ADD s6, a1, zero
  ADD s7, a0, zero
  ADD s8, t2, zero
  JAL zero, bb45
bb50:
  SLLIW s3, a3, 5
  ADD s3, s10, s3
  ADD s4, zero, zero
  ADD s5, a1, zero
  ADD s6, a0, zero
  ADD s7, t2, zero
  # implict jump to bb51
bb51:
  ADD s8, s7, zero
  ADD t2, s6, zero
  ADD a0, s5, zero
  ADD a1, s4, zero
  SLTI a2, a1, 2
  BNE a2, zero, bb53
  # implict jump to bb52
bb52:
  ADDIW a2, a3, 1
  ADD s11, a2, zero
  ADD ra, a1, zero
  ADD t0, a0, zero
  ADD t1, t2, zero
  ADD s9, s8, zero
  JAL zero, bb48
bb53:
  SLLIW s9, a1, 4
  ADD s9, s3, s9
  ADD s11, zero, zero
  ADD ra, t2, zero
  # implict jump to bb54
bb54:
  ADD t0, s8, zero
  ADD t1, ra, zero
  ADD t2, s11, zero
  SLTI a0, t2, 2
  BNE a0, zero, bb56
  # implict jump to bb55
bb55:
  ADDIW a0, a1, 1
  ADD s4, a0, zero
  ADD s5, t2, zero
  ADD s6, t1, zero
  ADD s7, t0, zero
  JAL zero, bb51
bb56:
  SLLIW s4, t2, 3
  ADD s4, s9, s4
  ADD s5, zero, zero
  ADD s6, t0, zero
  # implict jump to bb57
bb57:
  ADD s7, s6, zero
  ADD t0, s5, zero
  SLTI t1, t0, 2
  BNE t1, zero, bb59
  # implict jump to bb58
bb58:
  ADDIW t1, t2, 1
  ADD s11, t1, zero
  ADD ra, t0, zero
  ADD s8, s7, zero
  JAL zero, bb54
bb59:
  SLLIW s8, t0, 2
  ADD s8, s4, s8
  SW s7, 0(s8)
  ADDIW s7, s7, 1
  ADDIW s8, t0, 1
  ADD s5, s8, zero
  ADD s6, s7, zero
  JAL zero, bb57
bb60:
  ADDI s0, zero, 1
  LW t4, 360(sp)
  SUBW s0, t4, s0
  SLLIW s1, s0, 2
  ADDI t4, sp, 736
  ADD s1, t4, s1
  SW zero, 0(s1)
  ADD t4, s0, zero
  SW t4, 356(sp)
  JAL zero, bb1
sum:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  ADD s0, a0, zero
  ADDI t5, sp, 112
  ADD s1, t5, zero
  LD s1, 0(s1)
  ADDI s2, sp, 120
  LD s2, 0(s2)
  ADDI s3, sp, 128
  LD s3, 0(s3)
  ADDI s4, sp, 136
  LD s4, 0(s4)
  ADDI s5, sp, 144
  LD s5, 0(s5)
  ADDI s6, sp, 152
  LD s6, 0(s6)
  ADDI s7, sp, 160
  LD s7, 0(s7)
  ADDI s8, sp, 168
  LD s8, 0(s8)
  ADDI s9, sp, 176
  LD s9, 0(s9)
  ADDI s10, sp, 184
  LD s10, 0(s10)
  ADDI s11, sp, 192
  LD s11, 0(s11)
  LW s0, 0(s0)
  ADDI ra, a1, 8
  LW ra, 0(ra)
  ADDW s0, s0, ra
  ADDI ra, a2, 4
  LW ra, 0(ra)
  ADDW s0, s0, ra
  ADDI ra, a3, 40
  LW ra, 0(ra)
  ADDW s0, s0, ra
  ADDI ra, a4, 24
  LW ra, 0(ra)
  ADDW s0, s0, ra
  ADDI ra, a5, 228
  LW ra, 0(ra)
  ADDW s0, s0, ra
  ADDI ra, a6, 56
  LW ra, 0(ra)
  ADDW s0, s0, ra
  ADDI ra, a7, 964
  LW ra, 0(ra)
  ADDW s0, s0, ra
  ADDI s1, s1, 224
  LW s1, 0(s1)
  ADDW s0, s0, s1
  ADDI s1, s2, 804
  LW s1, 0(s1)
  ADDW s0, s0, s1
  ADDI s1, s3, 1996
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LUI s1, 1
  ADDIW s1, s1, -872
  ADD s1, s4, s1
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LUI s1, 6
  ADDIW s1, s1, 1824
  ADD s1, s5, s1
  LW s1, 0(s1)
  ADDW s0, s0, s1
  ADDI s1, s6, 508
  LW s1, 0(s1)
  ADDW s0, s0, s1
  ADDI s1, s7, 124
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LUI s1, 60
  ADDIW s1, s1, 912
  ADD s1, s8, s1
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LUI s1, 4
  ADDIW s1, s1, -428
  ADD s1, s9, s1
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LUI s1, 202
  ADDIW s1, s1, 972
  ADD s1, s10, s1
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LUI s1, 69
  ADDIW s1, s1, -1024
  ADD s1, s11, s1
  LW s1, 0(s1)
  ADDW s0, s0, s1
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
