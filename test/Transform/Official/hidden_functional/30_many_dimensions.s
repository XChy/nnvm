.global main
.global sum
.section .bss
.section .data
.section .text
main:
  LUI t0, 1048064
  ADDIW t0, t0, -640
  ADD sp, sp, t0
  SD ra, 536(sp)
  SD s0, 544(sp)
  SD s1, 552(sp)
  SD s2, 560(sp)
  SD s3, 568(sp)
  SD s4, 576(sp)
  SD s5, 584(sp)
  SD s6, 592(sp)
  SD s7, 600(sp)
  SD s8, 608(sp)
  SD s10, 616(sp)
  SD s9, 624(sp)
  SD s11, 632(sp)
  LUI s0, 128
  ADDIW s0, s0, 0
  ADD t4, zero, s0
  SW t4, 404(sp)
  # implict jump to bb1
bb1:
  LW t3, 404(sp)
  ADD t4, t3, zero
  SW t4, 400(sp)
  LW t4, 400(sp)
  XOR s2, t4, zero
  SLTU s2, zero, s2
  BNE s2, zero, bb60
  # implict jump to bb2
bb2:
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD s6, zero, zero
  ADD t4, zero, zero
  SW t4, 280(sp)
  ADD t4, zero, zero
  SW t4, 312(sp)
  ADD t4, zero, zero
  SW t4, 348(sp)
  ADD t4, zero, zero
  SW t4, 352(sp)
  ADD t4, zero, zero
  SW t4, 356(sp)
  ADD t4, zero, zero
  SW t4, 360(sp)
  ADD t4, zero, zero
  SW t4, 364(sp)
  ADD t4, zero, zero
  SW t4, 368(sp)
  ADD t4, zero, zero
  SW t4, 372(sp)
  ADD t4, zero, zero
  SW t4, 376(sp)
  ADD t4, zero, zero
  SW t4, 384(sp)
  ADD t4, zero, zero
  SW t4, 388(sp)
  ADD t4, zero, zero
  SW t4, 392(sp)
  ADD t4, zero, zero
  SW t4, 396(sp)
  # implict jump to bb3
bb3:
  LW t3, 396(sp)
  ADD t4, t3, zero
  SW t4, 316(sp)
  LW t3, 392(sp)
  ADD t4, t3, zero
  SW t4, 320(sp)
  LW t3, 388(sp)
  ADD t4, t3, zero
  SW t4, 292(sp)
  LW t3, 384(sp)
  ADD t4, t3, zero
  SW t4, 332(sp)
  LW t4, 376(sp)
  ADD s0, t4, zero
  LW t4, 372(sp)
  ADD s1, t4, zero
  LW t3, 368(sp)
  ADD t4, t3, zero
  SW t4, 296(sp)
  LW t3, 364(sp)
  ADD t4, t3, zero
  SW t4, 288(sp)
  LW t3, 360(sp)
  ADD t4, t3, zero
  SW t4, 276(sp)
  LW t3, 356(sp)
  ADD t4, t3, zero
  SW t4, 328(sp)
  LW t3, 352(sp)
  ADD t4, t3, zero
  SW t4, 380(sp)
  LW t3, 348(sp)
  ADD t4, t3, zero
  SW t4, 284(sp)
  LW t3, 312(sp)
  ADD t4, t3, zero
  SW t4, 324(sp)
  LW t3, 280(sp)
  ADD t4, t3, zero
  SW t4, 300(sp)
  ADD t4, s6, zero
  SW t4, 304(sp)
  ADD t4, s5, zero
  SW t4, 308(sp)
  ADD s11, s4, zero
  ADD s10, s3, zero
  ADD s9, s2, zero
  LW t4, 380(sp)
  SLTI s8, t4, 2
  BNE s8, zero, bb5
  # implict jump to bb4
bb4:
  LW s8, 640(sp)
  ADDI s7, sp, 648
  LW s7, 0(s7)
  ADDW s7, s8, s7
  ADDI s8, sp, 644
  LW s8, 0(s8)
  ADDW s7, s7, s8
  ADDI s8, sp, 680
  LW s8, 0(s8)
  ADDW s7, s7, s8
  ADDI s8, sp, 664
  LW s8, 0(s8)
  ADDW s7, s7, s8
  ADDI s8, sp, 868
  LW s8, 0(s8)
  ADDW s7, s7, s8
  ADDI s8, sp, 696
  LW s8, 0(s8)
  ADDW s7, s7, s8
  ADDI s8, sp, 1604
  LW s8, 0(s8)
  ADDW s7, s7, s8
  ADDI s8, sp, 864
  LW s8, 0(s8)
  ADDW s7, s7, s8
  ADDI s8, sp, 1444
  LW s8, 0(s8)
  ADDW s7, s7, s8
  ADDI t5, sp, 640
  ADDI s8, t5, 1996
  LW s8, 0(s8)
  ADDW s7, s7, s8
  LUI s8, 1
  ADDIW s8, s8, -872
  ADDI t5, sp, 640
  ADD s8, t5, s8
  LW s8, 0(s8)
  ADDW s7, s7, s8
  LUI s8, 6
  ADDIW s8, s8, 1824
  ADDI t5, sp, 640
  ADD s8, t5, s8
  LW s8, 0(s8)
  ADDW s7, s7, s8
  ADDI s8, sp, 1148
  LW s8, 0(s8)
  ADDW s7, s7, s8
  ADDI s8, sp, 764
  LW s8, 0(s8)
  ADDW s7, s7, s8
  LUI s8, 60
  ADDIW s8, s8, 912
  ADDI t5, sp, 640
  ADD s8, t5, s8
  LW s8, 0(s8)
  ADDW s7, s7, s8
  LUI s8, 4
  ADDIW s8, s8, -428
  ADDI t5, sp, 640
  ADD s8, t5, s8
  LW s8, 0(s8)
  ADDW s7, s7, s8
  LUI s8, 202
  ADDIW s8, s8, 972
  ADDI t5, sp, 640
  ADD s8, t5, s8
  LW s8, 0(s8)
  ADDW s7, s7, s8
  LUI s8, 69
  ADDIW s8, s8, -1024
  ADDI a0, sp, 640
  ADD s8, a0, s8
  LW s8, 0(s8)
  ADDW s7, s7, s8
  ADD a0, s7, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 536(sp)
  LD s0, 544(sp)
  LD s1, 552(sp)
  LD s2, 560(sp)
  LD s3, 568(sp)
  LD s4, 576(sp)
  LD s5, 584(sp)
  LD s6, 592(sp)
  LD s7, 600(sp)
  LD s8, 608(sp)
  LD s10, 616(sp)
  LD s9, 624(sp)
  LD s11, 632(sp)
  LUI t0, 512
  ADDIW t0, t0, 640
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb5:
  ADD s7, s9, zero
  ADD t4, s10, zero
  SW t4, 532(sp)
  ADD t4, s11, zero
  SW t4, 472(sp)
  LW t3, 308(sp)
  ADD t4, t3, zero
  SW t4, 528(sp)
  LW t3, 304(sp)
  ADD t4, t3, zero
  SW t4, 524(sp)
  LW t3, 300(sp)
  ADD t4, t3, zero
  SW t4, 520(sp)
  LW t3, 324(sp)
  ADD t4, t3, zero
  SW t4, 516(sp)
  LW t3, 284(sp)
  ADD t4, t3, zero
  SW t4, 512(sp)
  ADD t4, zero, zero
  SW t4, 508(sp)
  LW t3, 328(sp)
  ADD t4, t3, zero
  SW t4, 504(sp)
  LW t3, 276(sp)
  ADD t4, t3, zero
  SW t4, 496(sp)
  LW t3, 288(sp)
  ADD t4, t3, zero
  SW t4, 492(sp)
  LW t3, 296(sp)
  ADD t4, t3, zero
  SW t4, 488(sp)
  ADD t4, s1, zero
  SW t4, 484(sp)
  ADD t4, s0, zero
  SW t4, 480(sp)
  LW t3, 332(sp)
  ADD t4, t3, zero
  SW t4, 408(sp)
  LW t3, 292(sp)
  ADD t4, t3, zero
  SW t4, 476(sp)
  LW t3, 320(sp)
  ADD t4, t3, zero
  SW t4, 340(sp)
  LW t3, 316(sp)
  ADD t4, t3, zero
  SW t4, 336(sp)
  # implict jump to bb6
bb6:
  LW t4, 336(sp)
  ADD t6, t4, zero
  LW t4, 340(sp)
  ADD a7, t4, zero
  LW t4, 476(sp)
  ADD a6, t4, zero
  LW t4, 408(sp)
  ADD a5, t4, zero
  LW t4, 480(sp)
  ADD a4, t4, zero
  LW t4, 484(sp)
  ADD s0, t4, zero
  LW t4, 488(sp)
  ADD s1, t4, zero
  LW t4, 492(sp)
  ADD a3, t4, zero
  LW t4, 496(sp)
  ADD a2, t4, zero
  LW t4, 504(sp)
  ADD a1, t4, zero
  LW t3, 508(sp)
  ADD t4, t3, zero
  SW t4, 500(sp)
  LW t4, 512(sp)
  ADD a0, t4, zero
  LW t4, 516(sp)
  ADD t2, t4, zero
  LW t4, 520(sp)
  ADD t1, t4, zero
  LW t4, 524(sp)
  ADD t0, t4, zero
  LW t4, 528(sp)
  ADD ra, t4, zero
  LW t4, 472(sp)
  ADD s11, t4, zero
  LW t4, 532(sp)
  ADD s10, t4, zero
  ADD s9, s7, zero
  LW t4, 500(sp)
  SLTI s8, t4, 2
  BNE s8, zero, bb8
  # implict jump to bb7
bb7:
  LW t4, 380(sp)
  ADDIW s8, t4, 1
  ADD s2, s9, zero
  ADD s3, s10, zero
  ADD s4, s11, zero
  ADD s5, ra, zero
  ADD s6, t0, zero
  ADD t4, t1, zero
  SW t4, 280(sp)
  ADD t4, t2, zero
  SW t4, 312(sp)
  ADD t4, a0, zero
  SW t4, 348(sp)
  ADD t4, s8, zero
  SW t4, 352(sp)
  ADD t4, a1, zero
  SW t4, 356(sp)
  ADD t4, a2, zero
  SW t4, 360(sp)
  ADD t4, a3, zero
  SW t4, 364(sp)
  ADD t4, s1, zero
  SW t4, 368(sp)
  ADD t4, s0, zero
  SW t4, 372(sp)
  ADD t4, a4, zero
  SW t4, 376(sp)
  ADD t4, a5, zero
  SW t4, 384(sp)
  ADD t4, a6, zero
  SW t4, 388(sp)
  ADD t4, a7, zero
  SW t4, 392(sp)
  ADD t4, t6, zero
  SW t4, 396(sp)
  JAL zero, bb3
bb8:
  ADD s0, s9, zero
  ADD s2, s10, zero
  ADD s3, s11, zero
  ADD s4, ra, zero
  ADD s5, t0, zero
  ADD s6, t1, zero
  ADD t4, t2, zero
  SW t4, 420(sp)
  ADD t4, a0, zero
  SW t4, 424(sp)
  ADD t4, a1, zero
  SW t4, 428(sp)
  ADD t4, a2, zero
  SW t4, 432(sp)
  ADD t4, a3, zero
  SW t4, 436(sp)
  ADD t4, s1, zero
  SW t4, 440(sp)
  ADD t4, zero, zero
  SW t4, 444(sp)
  ADD t4, a4, zero
  SW t4, 448(sp)
  ADD t4, a5, zero
  SW t4, 452(sp)
  ADD t4, a6, zero
  SW t4, 456(sp)
  ADD t4, a7, zero
  SW t4, 460(sp)
  ADD t4, t6, zero
  SW t4, 464(sp)
  # implict jump to bb9
bb9:
  LW t4, 464(sp)
  ADD a3, t4, zero
  LW t4, 460(sp)
  ADD a4, t4, zero
  LW t4, 456(sp)
  ADD a5, t4, zero
  LW t4, 452(sp)
  ADD a6, t4, zero
  LW t4, 448(sp)
  ADD a7, t4, zero
  LW t3, 444(sp)
  ADD t4, t3, zero
  SW t4, 468(sp)
  LW t4, 440(sp)
  ADD t6, t4, zero
  LW t4, 436(sp)
  ADD a2, t4, zero
  LW t4, 432(sp)
  ADD a1, t4, zero
  LW t4, 428(sp)
  ADD a0, t4, zero
  LW t4, 424(sp)
  ADD t2, t4, zero
  LW t4, 420(sp)
  ADD t1, t4, zero
  ADD t0, s6, zero
  ADD s1, s5, zero
  ADD ra, s4, zero
  ADD s11, s3, zero
  ADD s10, s2, zero
  ADD s9, s0, zero
  LW t4, 468(sp)
  SLTI s8, t4, 2
  BNE s8, zero, bb11
  # implict jump to bb10
bb10:
  LW t4, 500(sp)
  ADDIW s8, t4, 1
  ADD s7, s9, zero
  ADD t4, s10, zero
  SW t4, 532(sp)
  ADD t4, s11, zero
  SW t4, 472(sp)
  ADD t4, ra, zero
  SW t4, 528(sp)
  ADD t4, s1, zero
  SW t4, 524(sp)
  ADD t4, t0, zero
  SW t4, 520(sp)
  ADD t4, t1, zero
  SW t4, 516(sp)
  ADD t4, t2, zero
  SW t4, 512(sp)
  ADD t4, s8, zero
  SW t4, 508(sp)
  ADD t4, a0, zero
  SW t4, 504(sp)
  ADD t4, a1, zero
  SW t4, 496(sp)
  ADD t4, a2, zero
  SW t4, 492(sp)
  ADD t4, t6, zero
  SW t4, 488(sp)
  LW t3, 468(sp)
  ADD t4, t3, zero
  SW t4, 484(sp)
  ADD t4, a7, zero
  SW t4, 480(sp)
  ADD t4, a6, zero
  SW t4, 408(sp)
  ADD t4, a5, zero
  SW t4, 476(sp)
  ADD t4, a4, zero
  SW t4, 340(sp)
  ADD t4, a3, zero
  SW t4, 336(sp)
  JAL zero, bb6
bb11:
  ADD s7, s9, zero
  ADD s8, s10, zero
  ADD t4, s11, zero
  SW t4, 120(sp)
  ADD t4, ra, zero
  SW t4, 116(sp)
  ADD t4, s1, zero
  SW t4, 112(sp)
  ADD t4, t0, zero
  SW t4, 72(sp)
  ADD t4, t1, zero
  SW t4, 104(sp)
  ADD t4, t2, zero
  SW t4, 100(sp)
  ADD t4, a0, zero
  SW t4, 96(sp)
  ADD t4, a1, zero
  SW t4, 92(sp)
  ADD t4, a2, zero
  SW t4, 88(sp)
  ADD t4, t6, zero
  SW t4, 84(sp)
  ADD t4, a7, zero
  SW t4, 80(sp)
  ADD t4, zero, zero
  SW t4, 76(sp)
  ADD t4, a5, zero
  SW t4, 244(sp)
  ADD t4, a4, zero
  SW t4, 344(sp)
  ADD t4, a3, zero
  SW t4, 416(sp)
  # implict jump to bb12
bb12:
  LW t4, 416(sp)
  ADD a7, t4, zero
  LW t4, 344(sp)
  ADD t6, t4, zero
  LW t4, 244(sp)
  ADD a3, t4, zero
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 412(sp)
  LW t4, 80(sp)
  ADD a4, t4, zero
  LW t4, 84(sp)
  ADD a5, t4, zero
  LW t4, 88(sp)
  ADD a6, t4, zero
  LW t4, 92(sp)
  ADD a2, t4, zero
  LW t4, 96(sp)
  ADD a1, t4, zero
  LW t4, 100(sp)
  ADD a0, t4, zero
  LW t4, 104(sp)
  ADD t2, t4, zero
  LW t4, 72(sp)
  ADD t1, t4, zero
  LW t4, 112(sp)
  ADD t0, t4, zero
  LW t4, 116(sp)
  ADD ra, t4, zero
  LW t4, 120(sp)
  ADD s11, t4, zero
  ADD s1, s8, zero
  ADD s10, s7, zero
  LW t4, 412(sp)
  SLTI s9, t4, 2
  BNE s9, zero, bb14
  # implict jump to bb13
bb13:
  LW t4, 468(sp)
  ADDIW s9, t4, 1
  ADD s0, s10, zero
  ADD s2, s1, zero
  ADD s3, s11, zero
  ADD s4, ra, zero
  ADD s5, t0, zero
  ADD s6, t1, zero
  ADD t4, t2, zero
  SW t4, 420(sp)
  ADD t4, a0, zero
  SW t4, 424(sp)
  ADD t4, a1, zero
  SW t4, 428(sp)
  ADD t4, a2, zero
  SW t4, 432(sp)
  ADD t4, a6, zero
  SW t4, 436(sp)
  ADD t4, a5, zero
  SW t4, 440(sp)
  ADD t4, s9, zero
  SW t4, 444(sp)
  ADD t4, a4, zero
  SW t4, 448(sp)
  LW t3, 412(sp)
  ADD t4, t3, zero
  SW t4, 452(sp)
  ADD t4, a3, zero
  SW t4, 456(sp)
  ADD t4, t6, zero
  SW t4, 460(sp)
  ADD t4, a7, zero
  SW t4, 464(sp)
  JAL zero, bb9
bb14:
  ADD s0, s10, zero
  ADD s1, s1, zero
  ADD s2, s11, zero
  ADD s3, ra, zero
  ADD s4, t0, zero
  ADD s5, t1, zero
  ADD s6, t2, zero
  ADD t4, a0, zero
  SW t4, 20(sp)
  ADD t4, a1, zero
  SW t4, 16(sp)
  ADD t4, a2, zero
  SW t4, 12(sp)
  ADD t4, a6, zero
  SW t4, 8(sp)
  ADD t4, a5, zero
  SW t4, 4(sp)
  ADD t4, a4, zero
  SW t4, 36(sp)
  ADD t4, a3, zero
  SW t4, 136(sp)
  ADD t4, zero, zero
  SW t4, 132(sp)
  ADD t4, a7, zero
  SW t4, 128(sp)
  # implict jump to bb15
bb15:
  LW t4, 128(sp)
  ADD a2, t4, zero
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t4, 136(sp)
  ADD a4, t4, zero
  LW t4, 36(sp)
  ADD a5, t4, zero
  LW t4, 4(sp)
  ADD a6, t4, zero
  LW t4, 8(sp)
  ADD a7, t4, zero
  LW t4, 12(sp)
  ADD t6, t4, zero
  LW t4, 16(sp)
  ADD a3, t4, zero
  LW t4, 20(sp)
  ADD a1, t4, zero
  ADD a0, s6, zero
  ADD t2, s5, zero
  ADD t1, s4, zero
  ADD t0, s3, zero
  ADD ra, s2, zero
  ADD s11, s1, zero
  ADD s10, s0, zero
  LW t4, 124(sp)
  SLTI s9, t4, 2
  BNE s9, zero, bb17
  # implict jump to bb16
bb16:
  LW t4, 412(sp)
  ADDIW s9, t4, 1
  ADD s7, s10, zero
  ADD s8, s11, zero
  ADD t4, ra, zero
  SW t4, 120(sp)
  ADD t4, t0, zero
  SW t4, 116(sp)
  ADD t4, t1, zero
  SW t4, 112(sp)
  ADD t4, t2, zero
  SW t4, 72(sp)
  ADD t4, a0, zero
  SW t4, 104(sp)
  ADD t4, a1, zero
  SW t4, 100(sp)
  ADD t4, a3, zero
  SW t4, 96(sp)
  ADD t4, t6, zero
  SW t4, 92(sp)
  ADD t4, a7, zero
  SW t4, 88(sp)
  ADD t4, a6, zero
  SW t4, 84(sp)
  ADD t4, a5, zero
  SW t4, 80(sp)
  ADD t4, s9, zero
  SW t4, 76(sp)
  ADD t4, a4, zero
  SW t4, 244(sp)
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 344(sp)
  ADD t4, a2, zero
  SW t4, 416(sp)
  JAL zero, bb12
bb17:
  ADD s7, s10, zero
  ADD s8, s11, zero
  ADD s9, ra, zero
  ADD t4, t0, zero
  SW t4, 108(sp)
  ADD t4, t1, zero
  SW t4, 68(sp)
  ADD t4, t2, zero
  SW t4, 64(sp)
  ADD t4, a0, zero
  SW t4, 60(sp)
  ADD t4, a1, zero
  SW t4, 56(sp)
  ADD t4, a3, zero
  SW t4, 52(sp)
  ADD t4, t6, zero
  SW t4, 48(sp)
  ADD t4, a7, zero
  SW t4, 44(sp)
  ADD t4, a6, zero
  SW t4, 40(sp)
  ADD t4, a5, zero
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, a2, zero
  SW t4, 28(sp)
  # implict jump to bb18
bb18:
  LW t4, 28(sp)
  ADD a6, t4, zero
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t4, 0(sp)
  ADD t6, t4, zero
  LW t4, 40(sp)
  ADD a7, t4, zero
  LW t4, 44(sp)
  ADD a2, t4, zero
  LW t4, 48(sp)
  ADD a5, t4, zero
  LW t4, 52(sp)
  ADD a4, t4, zero
  LW t4, 56(sp)
  ADD a3, t4, zero
  LW t4, 60(sp)
  ADD a1, t4, zero
  LW t4, 64(sp)
  ADD a0, t4, zero
  LW t4, 68(sp)
  ADD t2, t4, zero
  LW t4, 108(sp)
  ADD t1, t4, zero
  ADD t0, s9, zero
  ADD ra, s8, zero
  ADD s11, s7, zero
  LW t4, 24(sp)
  SLTI s10, t4, 2
  BNE s10, zero, bb20
  # implict jump to bb19
bb19:
  LW t4, 124(sp)
  ADDIW s10, t4, 1
  ADD s0, s11, zero
  ADD s1, ra, zero
  ADD s2, t0, zero
  ADD s3, t1, zero
  ADD s4, t2, zero
  ADD s5, a0, zero
  ADD s6, a1, zero
  ADD t4, a3, zero
  SW t4, 20(sp)
  ADD t4, a4, zero
  SW t4, 16(sp)
  ADD t4, a5, zero
  SW t4, 12(sp)
  ADD t4, a2, zero
  SW t4, 8(sp)
  ADD t4, a7, zero
  SW t4, 4(sp)
  ADD t4, t6, zero
  SW t4, 36(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  ADD t4, s10, zero
  SW t4, 132(sp)
  ADD t4, a6, zero
  SW t4, 128(sp)
  JAL zero, bb15
bb20:
  ADD s0, s11, zero
  ADD s1, ra, zero
  ADD s2, t0, zero
  ADD s3, t1, zero
  ADD s4, t2, zero
  ADD s5, a0, zero
  ADD s6, a1, zero
  ADD s10, a3, zero
  ADD t4, a4, zero
  SW t4, 236(sp)
  ADD t4, a5, zero
  SW t4, 232(sp)
  ADD t4, zero, zero
  SW t4, 228(sp)
  ADD t4, a7, zero
  SW t4, 224(sp)
  ADD t4, t6, zero
  SW t4, 220(sp)
  ADD t4, a6, zero
  SW t4, 216(sp)
  # implict jump to bb21
bb21:
  LW t4, 216(sp)
  ADD a1, t4, zero
  LW t4, 220(sp)
  ADD a2, t4, zero
  LW t4, 224(sp)
  ADD a3, t4, zero
  LW t3, 228(sp)
  ADD t4, t3, zero
  SW t4, 212(sp)
  LW t4, 232(sp)
  ADD a5, t4, zero
  LW t4, 236(sp)
  ADD a6, t4, zero
  ADD a7, s10, zero
  ADD t6, s6, zero
  ADD a4, s5, zero
  ADD a0, s4, zero
  ADD t2, s3, zero
  ADD t1, s2, zero
  ADD t0, s1, zero
  ADD ra, s0, zero
  LW t4, 212(sp)
  SLTI s11, t4, 2
  BNE s11, zero, bb23
  # implict jump to bb22
bb22:
  LW t4, 24(sp)
  ADDIW s11, t4, 1
  ADD s7, ra, zero
  ADD s8, t0, zero
  ADD s9, t1, zero
  ADD t4, t2, zero
  SW t4, 108(sp)
  ADD t4, a0, zero
  SW t4, 68(sp)
  ADD t4, a4, zero
  SW t4, 64(sp)
  ADD t4, t6, zero
  SW t4, 60(sp)
  ADD t4, a7, zero
  SW t4, 56(sp)
  ADD t4, a6, zero
  SW t4, 52(sp)
  ADD t4, a5, zero
  SW t4, 48(sp)
  LW t3, 212(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  ADD t4, a3, zero
  SW t4, 40(sp)
  ADD t4, a2, zero
  SW t4, 0(sp)
  ADD t4, s11, zero
  SW t4, 32(sp)
  ADD t4, a1, zero
  SW t4, 28(sp)
  JAL zero, bb18
bb23:
  ADD s7, zero, zero
  ADD s8, t0, zero
  ADD s9, t1, zero
  ADD s11, t2, zero
  ADD t4, a0, zero
  SW t4, 176(sp)
  ADD t4, a4, zero
  SW t4, 268(sp)
  ADD t4, t6, zero
  SW t4, 264(sp)
  ADD t4, a7, zero
  SW t4, 260(sp)
  ADD t4, a6, zero
  SW t4, 256(sp)
  ADD t4, a5, zero
  SW t4, 252(sp)
  ADD t4, a3, zero
  SW t4, 248(sp)
  ADD t4, a2, zero
  SW t4, 208(sp)
  ADD t4, a1, zero
  SW t4, 240(sp)
  # implict jump to bb24
bb24:
  LW t4, 240(sp)
  ADD a5, t4, zero
  LW t4, 208(sp)
  ADD a6, t4, zero
  LW t4, 248(sp)
  ADD a7, t4, zero
  LW t4, 252(sp)
  ADD t6, t4, zero
  LW t4, 256(sp)
  ADD a1, t4, zero
  LW t4, 260(sp)
  ADD a2, t4, zero
  LW t4, 264(sp)
  ADD a3, t4, zero
  LW t4, 268(sp)
  ADD a4, t4, zero
  LW t4, 176(sp)
  ADD a0, t4, zero
  ADD t2, s11, zero
  ADD t1, s9, zero
  ADD t0, s8, zero
  ADD t4, s7, zero
  SW t4, 272(sp)
  LW t4, 272(sp)
  SLTI ra, t4, 2
  BNE ra, zero, bb26
  # implict jump to bb25
bb25:
  LW t4, 212(sp)
  ADDIW ra, t4, 1
  LW t4, 272(sp)
  ADD s0, t4, zero
  ADD s1, t0, zero
  ADD s2, t1, zero
  ADD s3, t2, zero
  ADD s4, a0, zero
  ADD s5, a4, zero
  ADD s6, a3, zero
  ADD s10, a2, zero
  ADD t4, a1, zero
  SW t4, 236(sp)
  ADD t4, t6, zero
  SW t4, 232(sp)
  ADD t4, ra, zero
  SW t4, 228(sp)
  ADD t4, a7, zero
  SW t4, 224(sp)
  ADD t4, a6, zero
  SW t4, 220(sp)
  ADD t4, a5, zero
  SW t4, 216(sp)
  JAL zero, bb21
bb26:
  ADD s0, t0, zero
  ADD s1, t1, zero
  ADD s2, t2, zero
  ADD s3, a0, zero
  ADD s4, a4, zero
  ADD s5, zero, zero
  ADD s6, a2, zero
  ADD s10, a1, zero
  ADD ra, t6, zero
  ADD t4, a7, zero
  SW t4, 156(sp)
  ADD t4, a6, zero
  SW t4, 152(sp)
  ADD t4, a5, zero
  SW t4, 148(sp)
  # implict jump to bb27
bb27:
  LW t4, 148(sp)
  ADD a0, t4, zero
  LW t4, 152(sp)
  ADD a1, t4, zero
  LW t4, 156(sp)
  ADD a2, t4, zero
  ADD a3, ra, zero
  ADD a4, s10, zero
  ADD a5, s6, zero
  ADD t4, s5, zero
  SW t4, 144(sp)
  ADD a7, s4, zero
  ADD t6, s3, zero
  ADD a6, s2, zero
  ADD t2, s1, zero
  ADD t1, s0, zero
  LW t4, 144(sp)
  SLTI t0, t4, 2
  BNE t0, zero, bb29
  # implict jump to bb28
bb28:
  LW t4, 272(sp)
  ADDIW t0, t4, 1
  ADD s7, t0, zero
  ADD s8, t1, zero
  ADD s9, t2, zero
  ADD s11, a6, zero
  ADD t4, t6, zero
  SW t4, 176(sp)
  ADD t4, a7, zero
  SW t4, 268(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 264(sp)
  ADD t4, a5, zero
  SW t4, 260(sp)
  ADD t4, a4, zero
  SW t4, 256(sp)
  ADD t4, a3, zero
  SW t4, 252(sp)
  ADD t4, a2, zero
  SW t4, 248(sp)
  ADD t4, a1, zero
  SW t4, 208(sp)
  ADD t4, a0, zero
  SW t4, 240(sp)
  JAL zero, bb24
bb29:
  ADD s7, zero, zero
  ADD s8, t2, zero
  ADD s9, a6, zero
  ADD s11, t6, zero
  ADD t0, a7, zero
  ADD t4, a5, zero
  SW t4, 184(sp)
  ADD t4, a4, zero
  SW t4, 140(sp)
  ADD t4, a3, zero
  SW t4, 172(sp)
  ADD t4, a2, zero
  SW t4, 168(sp)
  ADD t4, a1, zero
  SW t4, 164(sp)
  ADD t4, a0, zero
  SW t4, 160(sp)
  # implict jump to bb30
bb30:
  LW t4, 160(sp)
  ADD a4, t4, zero
  LW t4, 164(sp)
  ADD a5, t4, zero
  LW t4, 168(sp)
  ADD a6, t4, zero
  LW t4, 172(sp)
  ADD a7, t4, zero
  LW t4, 140(sp)
  ADD t6, t4, zero
  LW t4, 184(sp)
  ADD a0, t4, zero
  ADD a1, t0, zero
  ADD a2, s11, zero
  ADD a3, s9, zero
  ADD t2, s8, zero
  ADD t4, s7, zero
  SW t4, 180(sp)
  LW t4, 180(sp)
  SLTI t1, t4, 2
  BNE t1, zero, bb32
  # implict jump to bb31
bb31:
  LW t4, 144(sp)
  ADDIW t1, t4, 1
  LW t4, 180(sp)
  ADD s0, t4, zero
  ADD s1, t2, zero
  ADD s2, a3, zero
  ADD s3, a2, zero
  ADD s4, a1, zero
  ADD s5, t1, zero
  ADD s6, a0, zero
  ADD s10, t6, zero
  ADD ra, a7, zero
  ADD t4, a6, zero
  SW t4, 156(sp)
  ADD t4, a5, zero
  SW t4, 152(sp)
  ADD t4, a4, zero
  SW t4, 148(sp)
  JAL zero, bb27
bb32:
  ADD s0, t2, zero
  ADD s1, a3, zero
  ADD s2, a2, zero
  ADD s3, a1, zero
  ADD s4, a0, zero
  ADD s5, zero, zero
  ADD s6, a7, zero
  ADD s10, a6, zero
  ADD ra, a5, zero
  ADD t1, a4, zero
  # implict jump to bb33
bb33:
  ADD t2, t1, zero
  ADD a0, ra, zero
  ADD a1, s10, zero
  ADD a2, s6, zero
  ADD t4, s5, zero
  SW t4, 188(sp)
  ADD a4, s4, zero
  ADD a5, s3, zero
  ADD a6, s2, zero
  ADD a7, s1, zero
  ADD t6, s0, zero
  LW t4, 188(sp)
  SLTI a3, t4, 2
  BNE a3, zero, bb35
  # implict jump to bb34
bb34:
  LW t4, 180(sp)
  ADDIW a3, t4, 1
  ADD s7, a3, zero
  ADD s8, t6, zero
  ADD s9, a7, zero
  ADD s11, a6, zero
  ADD t0, a5, zero
  ADD t4, a4, zero
  SW t4, 184(sp)
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  ADD t4, a2, zero
  SW t4, 172(sp)
  ADD t4, a1, zero
  SW t4, 168(sp)
  ADD t4, a0, zero
  SW t4, 164(sp)
  ADD t4, t2, zero
  SW t4, 160(sp)
  JAL zero, bb30
bb35:
  ADD s7, t6, zero
  ADD s8, a7, zero
  ADD s9, a6, zero
  ADD s11, a5, zero
  ADD t0, a4, zero
  ADD a1, a2, zero
  ADD t4, zero, zero
  SW t4, 204(sp)
  ADD t4, a0, zero
  SW t4, 200(sp)
  ADD t4, t2, zero
  SW t4, 196(sp)
  # implict jump to bb36
bb36:
  LW t4, 196(sp)
  ADD a3, t4, zero
  LW t4, 200(sp)
  ADD a4, t4, zero
  LW t3, 204(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  ADD a6, a1, zero
  ADD a7, t0, zero
  ADD t6, s11, zero
  ADD a5, s9, zero
  ADD t2, s8, zero
  ADD a0, s7, zero
  LW t4, 192(sp)
  SLTI a2, t4, 2
  BNE a2, zero, bb38
  # implict jump to bb37
bb37:
  LW t4, 188(sp)
  ADDIW a2, t4, 1
  ADD s0, a0, zero
  ADD s1, t2, zero
  ADD s2, a5, zero
  ADD s3, t6, zero
  ADD s4, a7, zero
  ADD s5, a2, zero
  ADD s6, a6, zero
  LW t4, 192(sp)
  ADD s10, t4, zero
  ADD ra, a4, zero
  ADD t1, a3, zero
  JAL zero, bb33
bb38:
  ADD s0, zero, zero
  ADD s1, t2, zero
  ADD s2, a5, zero
  ADD s3, t6, zero
  ADD s4, a7, zero
  ADD s5, a6, zero
  ADD s6, a4, zero
  ADD s10, a3, zero
  # implict jump to bb39
bb39:
  ADD ra, s10, zero
  ADD t1, s6, zero
  ADD t2, s5, zero
  ADD a0, s4, zero
  ADD a2, s3, zero
  ADD a3, s2, zero
  ADD a4, s1, zero
  ADD a5, s0, zero
  SLTI a6, a5, 2
  BNE a6, zero, bb41
  # implict jump to bb40
bb40:
  LW t4, 192(sp)
  ADDIW a6, t4, 1
  ADD s7, a5, zero
  ADD s8, a4, zero
  ADD s9, a3, zero
  ADD s11, a2, zero
  ADD t0, a0, zero
  ADD a1, t2, zero
  ADD t4, a6, zero
  SW t4, 204(sp)
  ADD t4, t1, zero
  SW t4, 200(sp)
  ADD t4, ra, zero
  SW t4, 196(sp)
  JAL zero, bb36
bb41:
  ADD s7, zero, zero
  ADD s8, a3, zero
  ADD s9, a2, zero
  ADD s11, a0, zero
  ADD t0, t2, zero
  ADD t1, t1, zero
  ADD ra, ra, zero
  # implict jump to bb42
bb42:
  ADD t2, ra, zero
  ADD a0, t1, zero
  ADD a1, t0, zero
  ADD a2, s11, zero
  ADD a3, s9, zero
  ADD a4, s8, zero
  ADD a6, s7, zero
  SLTI a7, a6, 2
  BNE a7, zero, bb44
  # implict jump to bb43
bb43:
  ADDIW a7, a5, 1
  ADD s0, a7, zero
  ADD s1, a6, zero
  ADD s2, a4, zero
  ADD s3, a3, zero
  ADD s4, a2, zero
  ADD s5, a1, zero
  ADD s6, a0, zero
  ADD s10, t2, zero
  JAL zero, bb39
bb44:
  ADD s0, zero, zero
  ADD s1, a3, zero
  ADD s2, a2, zero
  ADD s3, a1, zero
  ADD s4, a0, zero
  ADD s5, t2, zero
  # implict jump to bb45
bb45:
  ADD s6, s5, zero
  ADD s10, s4, zero
  ADD t2, s3, zero
  ADD a0, s2, zero
  ADD a1, s1, zero
  ADD a2, s0, zero
  SLTI a3, a2, 2
  BNE a3, zero, bb47
  # implict jump to bb46
bb46:
  ADDIW a3, a6, 1
  ADD s7, a3, zero
  ADD s8, a2, zero
  ADD s9, a1, zero
  ADD s11, a0, zero
  ADD t0, t2, zero
  ADD t1, s10, zero
  ADD ra, s6, zero
  JAL zero, bb42
bb47:
  ADD s7, zero, zero
  ADD s8, a0, zero
  ADD s9, t2, zero
  ADD s10, s10, zero
  ADD s6, s6, zero
  # implict jump to bb48
bb48:
  ADD s11, s6, zero
  ADD ra, s10, zero
  ADD t0, s9, zero
  ADD t1, s8, zero
  ADD t2, s7, zero
  SLTI a0, t2, 2
  BNE a0, zero, bb50
  # implict jump to bb49
bb49:
  ADDIW a0, a2, 1
  ADD s0, a0, zero
  ADD s1, t2, zero
  ADD s2, t1, zero
  ADD s3, t0, zero
  ADD s4, ra, zero
  ADD s5, s11, zero
  JAL zero, bb45
bb50:
  ADD s0, zero, zero
  ADD s1, t0, zero
  ADD s2, ra, zero
  ADD s3, s11, zero
  # implict jump to bb51
bb51:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s11, s1, zero
  ADD ra, s0, zero
  SLTI t0, ra, 2
  BNE t0, zero, bb53
  # implict jump to bb52
bb52:
  ADDIW t0, t2, 1
  ADD s7, t0, zero
  ADD s8, ra, zero
  ADD s9, s11, zero
  ADD s10, s5, zero
  ADD s6, s4, zero
  JAL zero, bb48
bb53:
  ADD s6, zero, zero
  ADD s5, s5, zero
  ADD s4, s4, zero
  # implict jump to bb54
bb54:
  ADD s7, s4, zero
  ADD s8, s5, zero
  ADD s9, s6, zero
  SLTI s10, s9, 2
  BNE s10, zero, bb56
  # implict jump to bb55
bb55:
  ADDIW s10, ra, 1
  ADD s0, s10, zero
  ADD s1, s9, zero
  ADD s2, s8, zero
  ADD s3, s7, zero
  JAL zero, bb51
bb56:
  ADD s0, zero, zero
  ADD s1, s7, zero
  # implict jump to bb57
bb57:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s7, s3, 2
  BNE s7, zero, bb59
  # implict jump to bb58
bb58:
  ADDIW s7, s9, 1
  ADD s6, s7, zero
  ADD s5, s3, zero
  ADD s4, s2, zero
  JAL zero, bb54
bb59:
  LW t4, 380(sp)
  SLLIW s4, t4, 20
  ADDI t4, sp, 640
  ADD s4, t4, s4
  LW t4, 500(sp)
  SLLIW s5, t4, 19
  ADD s4, s4, s5
  LW t4, 468(sp)
  SLLIW s5, t4, 18
  ADD s4, s4, s5
  LW t4, 412(sp)
  SLLIW s5, t4, 17
  ADD s4, s4, s5
  LW t4, 124(sp)
  SLLIW s5, t4, 16
  ADD s4, s4, s5
  LW t4, 24(sp)
  SLLIW s5, t4, 15
  ADD s4, s4, s5
  LW t4, 212(sp)
  SLLIW s5, t4, 14
  ADD s4, s4, s5
  LW t4, 272(sp)
  SLLIW s5, t4, 13
  ADD s4, s4, s5
  LW t4, 144(sp)
  SLLIW s5, t4, 12
  ADD s4, s4, s5
  LW t4, 180(sp)
  SLLIW s5, t4, 11
  ADD s4, s4, s5
  LW t4, 188(sp)
  SLLIW s5, t4, 10
  ADD s4, s4, s5
  LW t4, 192(sp)
  SLLIW s5, t4, 9
  ADD s4, s4, s5
  SLLIW s5, a5, 8
  ADD s4, s4, s5
  SLLIW s5, a6, 7
  ADD s4, s4, s5
  SLLIW s5, a2, 6
  ADD s4, s4, s5
  SLLIW s5, t2, 5
  ADD s4, s4, s5
  SLLIW s5, ra, 4
  ADD s4, s4, s5
  SLLIW s5, s9, 3
  ADD s4, s4, s5
  SLLIW s5, s3, 2
  ADD s4, s4, s5
  SW s2, 0(s4)
  ADDIW s2, s2, 1
  ADDIW s3, s3, 1
  ADD s0, s3, zero
  ADD s1, s2, zero
  JAL zero, bb57
bb60:
  ADDI s0, zero, 1
  LW t4, 400(sp)
  SUBW s0, t4, s0
  SLLIW s1, s0, 2
  ADDI t4, sp, 640
  ADD s1, t4, s1
  SW zero, 0(s1)
  ADD t4, s0, zero
  SW t4, 404(sp)
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
  ADD a1, a1, zero
  ADD a2, a2, zero
  ADD a3, a3, zero
  ADD a4, a4, zero
  ADD a5, a5, zero
  ADD a6, a6, zero
  ADD a7, a7, zero
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
