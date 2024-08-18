.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -704
  SD ra, 288(sp)
  SD s1, 296(sp)
  SD s3, 304(sp)
  SD s4, 312(sp)
  SD s5, 320(sp)
  SD s6, 328(sp)
  SD s7, 336(sp)
  SD s8, 344(sp)
  SD s9, 352(sp)
  SD s10, 360(sp)
  SD s11, 368(sp)
  CALL getint
  ADD s11, zero, zero
  SW a0, 72(sp)
  ADD s10, zero, zero
  CALL getint
  SW a0, 76(sp)
  CALL getint
  SW a0, 80(sp)
  CALL getint
  SW a0, 128(sp)
  CALL getint
  SW a0, 168(sp)
  CALL getint
  SW a0, 236(sp)
  CALL getint
  SW a0, 240(sp)
  CALL getint
  SW a0, 244(sp)
  CALL getint
  ADD s8, a0, zero
  CALL getint
  ADD s9, a0, zero
  CALL getint
  SW a0, 156(sp)
  CALL getint
  SW a0, 160(sp)
  CALL getint
  SW a0, 164(sp)
  CALL getint
  SW a0, 44(sp)
  CALL getint
  SW a0, 4(sp)
  CALL getint
  LW t0, 72(sp)
  SW t0, 376(sp)
  LW t1, 76(sp)
  SW t1, 380(sp)
  LW t1, 80(sp)
  SW t1, 384(sp)
  LW t1, 128(sp)
  SW t1, 388(sp)
  LW t1, 168(sp)
  SW t1, 392(sp)
  LW t1, 236(sp)
  SW t1, 396(sp)
  LW t1, 240(sp)
  SW t1, 400(sp)
  LW t1, 244(sp)
  SW t1, 404(sp)
  SW s8, 408(sp)
  SW s9, 412(sp)
  LW t1, 156(sp)
  SW t1, 416(sp)
  LW t1, 160(sp)
  SW t1, 420(sp)
  LW t1, 164(sp)
  SW t1, 424(sp)
  LW t1, 44(sp)
  SW t1, 428(sp)
  LW t1, 4(sp)
  SW t1, 432(sp)
  SW a0, 436(sp)
  # implict jump to bb1
bb1:   # loop depth 1
  SLTI t2, s10, 15
  BNE t2, zero, bb15
  # implict jump to bb2
bb2:   # loop depth 0
  LW t0, 376(sp)
  SW t0, 124(sp)
  LW t0, 380(sp)
  SW t0, 84(sp)
  LW a1, 384(sp)
  SW a1, 264(sp)
  LW a1, 388(sp)
  SW a1, 268(sp)
  LW a1, 392(sp)
  SW a1, 272(sp)
  LW a1, 396(sp)
  SW a1, 276(sp)
  LW a1, 400(sp)
  SW a1, 232(sp)
  LW t0, 404(sp)
  SW t0, 104(sp)
  LW t0, 408(sp)
  SW t0, 108(sp)
  LW t0, 412(sp)
  SW t0, 112(sp)
  LW t0, 416(sp)
  SW t0, 116(sp)
  LW t0, 420(sp)
  SW t0, 176(sp)
  LW t0, 424(sp)
  SW t0, 200(sp)
  LW t0, 428(sp)
  SW t0, 144(sp)
  LW t0, 432(sp)
  SW t0, 148(sp)
  LW t0, 436(sp)
  SW t0, 152(sp)
  LW t0, 124(sp)
  BEQ t0, zero, bb14
  # implict jump to bb3
bb3:   # loop depth 0
  SW a0, 208(sp)
  LW t0, 4(sp)
  SW t0, 212(sp)
  LW t0, 44(sp)
  SW t0, 216(sp)
  LW t0, 164(sp)
  SW t0, 220(sp)
  LW t0, 160(sp)
  SW t0, 224(sp)
  LW t0, 156(sp)
  SW t0, 228(sp)
  SW s9, 280(sp)
  SW s8, 0(sp)
  LW t0, 244(sp)
  SW t0, 40(sp)
  LW t0, 240(sp)
  SW t0, 36(sp)
  LW t0, 236(sp)
  SW t0, 32(sp)
  LW s6, 168(sp)
  LW s4, 128(sp)
  LW s3, 80(sp)
  LW t0, 76(sp)
  SW t0, 120(sp)
  LW t0, 120(sp)
  SW t0, 120(sp)
  LW s1, 72(sp)
  LW t0, 152(sp)
  SW t0, 152(sp)
  LW t0, 148(sp)
  SW t0, 148(sp)
  LW t0, 144(sp)
  SW t0, 144(sp)
  LW t0, 200(sp)
  SW t0, 200(sp)
  LW t0, 176(sp)
  SW t0, 176(sp)
  LW t0, 116(sp)
  SW t0, 116(sp)
  LW t0, 112(sp)
  SW t0, 112(sp)
  LW t0, 108(sp)
  SW t0, 108(sp)
  LW t0, 104(sp)
  SW t0, 104(sp)
  LW t0, 232(sp)
  SW t0, 100(sp)
  LW t0, 100(sp)
  SW t0, 100(sp)
  LW t0, 276(sp)
  SW t0, 204(sp)
  LW t0, 204(sp)
  SW t0, 204(sp)
  LW t0, 272(sp)
  SW t0, 140(sp)
  LW t0, 140(sp)
  SW t0, 140(sp)
  LW t0, 268(sp)
  SW t0, 136(sp)
  LW t0, 136(sp)
  SW t0, 136(sp)
  LW t0, 264(sp)
  SW t0, 132(sp)
  LW t0, 132(sp)
  SW t0, 132(sp)
  LW t0, 84(sp)
  SW t0, 84(sp)
  LW t0, 124(sp)
  SW t0, 124(sp)
  # implict jump to bb4
bb4:   # loop depth 1
  LUI t2, 243712
  LW t0, 84(sp)
  SW t0, 84(sp)
  LW t0, 132(sp)
  SW t0, 132(sp)
  ADDIW t2, t2, 1
  LW t0, 132(sp)
  LW t1, 84(sp)
  ADDW t1, t1, t0
  LW t0, 124(sp)
  SW t0, 124(sp)
  REMW t0, t1, t2
  SW t0, 84(sp)
  LW t0, 124(sp)
  ADDIW t0, t0, -1
  SW t0, 124(sp)
  LW t0, 136(sp)
  SW t0, 132(sp)
  LW t0, 140(sp)
  SW t0, 136(sp)
  LW t0, 204(sp)
  SW t0, 204(sp)
  LW t0, 204(sp)
  SW t0, 140(sp)
  LW t0, 100(sp)
  SW t0, 204(sp)
  LW t0, 204(sp)
  SW t0, 204(sp)
  LW t0, 104(sp)
  SW t0, 100(sp)
  LW t0, 108(sp)
  SW t0, 104(sp)
  LW t0, 112(sp)
  SW t0, 108(sp)
  LW t0, 116(sp)
  SW t0, 112(sp)
  LW t0, 176(sp)
  SW t0, 176(sp)
  LW t0, 176(sp)
  SW t0, 116(sp)
  LW t0, 200(sp)
  SW t0, 176(sp)
  LW t0, 176(sp)
  SW t0, 176(sp)
  LW t0, 144(sp)
  SW t0, 200(sp)
  LW t0, 200(sp)
  SW t0, 200(sp)
  LW t0, 148(sp)
  SW t0, 144(sp)
  LW t0, 152(sp)
  SW t0, 148(sp)
  SW s1, 152(sp)
  LW s1, 120(sp)
  SW s3, 120(sp)
  ADD s3, s4, zero
  ADD s4, s6, zero
  LW s5, 32(sp)
  SW s5, 8(sp)
  LW s5, 36(sp)
  LW s6, 40(sp)
  LW s7, 0(sp)
  LW s8, 280(sp)
  LW s9, 228(sp)
  LW s10, 224(sp)
  SW s10, 248(sp)
  LW s10, 220(sp)
  SW s10, 252(sp)
  LW s10, 216(sp)
  SW s10, 256(sp)
  LW s10, 212(sp)
  SW s10, 284(sp)
  LW s10, 208(sp)
  SW s10, 260(sp)
  LW t0, 124(sp)
  BEQ t0, zero, bb6
  # implict jump to bb5
bb5:   # loop depth 1
  ADD s10, zero, zero
  SW s10, 208(sp)
  LW s10, 260(sp)
  SW s10, 212(sp)
  LW s10, 284(sp)
  SW s10, 216(sp)
  LW s10, 256(sp)
  SW s10, 220(sp)
  LW s10, 252(sp)
  SW s10, 224(sp)
  LW s10, 248(sp)
  SW s10, 228(sp)
  SW s9, 280(sp)
  SW s8, 0(sp)
  SW s7, 40(sp)
  SW s6, 36(sp)
  SW s5, 32(sp)
  LW s6, 8(sp)
  LW t0, 120(sp)
  SW t0, 120(sp)
  LW t0, 152(sp)
  SW t0, 152(sp)
  LW t0, 148(sp)
  SW t0, 148(sp)
  LW t0, 144(sp)
  SW t0, 144(sp)
  LW t0, 200(sp)
  SW t0, 200(sp)
  LW t0, 176(sp)
  SW t0, 176(sp)
  LW t0, 116(sp)
  SW t0, 116(sp)
  LW t0, 112(sp)
  SW t0, 112(sp)
  LW t0, 108(sp)
  SW t0, 108(sp)
  LW t0, 104(sp)
  SW t0, 104(sp)
  LW t0, 100(sp)
  SW t0, 100(sp)
  LW t0, 204(sp)
  SW t0, 204(sp)
  LW t0, 140(sp)
  SW t0, 140(sp)
  LW t0, 136(sp)
  SW t0, 136(sp)
  LW t0, 132(sp)
  SW t0, 132(sp)
  LW t0, 84(sp)
  SW t0, 84(sp)
  LW t0, 124(sp)
  SW t0, 124(sp)
  JAL zero, bb4
bb6:   # loop depth 1
  LW t0, 84(sp)
  SW t0, 84(sp)
  # implict jump to bb7
bb7:   # loop depth 0
  LUI t1, 2
  LW t0, 84(sp)
  SW t0, 84(sp)
  ADDIW t1, t1, 656
  LW t0, 84(sp)
  SW t0, 440(sp)
  ADDI t0, zero, 62
  SW t1, 444(sp)
  # implict jump to bb8
bb8:   # loop depth 1
  ADDIW t0, t0, -1
  SLLIW t1, t0, 2
  ADDIW t1, t1, 8
  ADDI t6, sp, 440
  ADD t1, t6, t1
  SW zero, 0(t1)
  BNE t0, zero, bb13
  # implict jump to bb9
bb9:   # loop depth 1
  ADDI t0, zero, 1
  # implict jump to bb10
bb10:   # loop depth 1
  SLLIW t1, t0, 3
  ADDIW t0, t0, 1
  ADDI a0, sp, 440
  ADD t1, a0, t1
  SLTI a0, t0, 32
  LW t2, -4(t1)
  ADDIW t2, t2, -1
  SW t2, 0(t1)
  LW t2, -8(t1)
  ADDIW t2, t2, -2
  SW t2, 4(t1)
  BNE a0, zero, bb12
  # implict jump to bb11
bb11:   # loop depth 0
  LW t0, 440(sp)
  LW t1, 444(sp)
  LW t2, 448(sp)
  ADDW t0, t0, t1
  LW t1, 452(sp)
  ADDW t0, t0, t2
  LW t2, 456(sp)
  ADDW t0, t0, t1
  LW t1, 460(sp)
  ADDW t0, t0, t2
  LW t2, 464(sp)
  ADDW t0, t0, t1
  LW t1, 468(sp)
  ADDW t0, t0, t2
  LW t2, 472(sp)
  ADDW t0, t0, t1
  LW t1, 476(sp)
  ADDW t0, t0, t2
  LW t2, 480(sp)
  ADDW t0, t0, t1
  LW t1, 484(sp)
  ADDW t0, t0, t2
  LW t2, 488(sp)
  ADDW t0, t0, t1
  LW t1, 492(sp)
  ADDW t0, t0, t2
  LW t2, 496(sp)
  ADDW t0, t0, t1
  LW t1, 500(sp)
  ADDW t0, t0, t2
  LW t2, 504(sp)
  ADDW t0, t0, t1
  LW t1, 508(sp)
  ADDW t0, t0, t2
  LW t2, 512(sp)
  ADDW t0, t0, t1
  LW t1, 516(sp)
  ADDW t0, t0, t2
  LW t2, 520(sp)
  ADDW t0, t0, t1
  LW t1, 524(sp)
  ADDW t0, t0, t2
  LW t2, 528(sp)
  ADDW t0, t0, t1
  LW t1, 532(sp)
  ADDW t0, t0, t2
  LW t2, 536(sp)
  ADDW t0, t0, t1
  LW t1, 540(sp)
  ADDW t0, t0, t2
  LW t2, 544(sp)
  ADDW t0, t0, t1
  LW t1, 548(sp)
  ADDW t0, t0, t2
  LW t2, 552(sp)
  ADDW t0, t0, t1
  LW t1, 556(sp)
  ADDW t0, t0, t2
  LW t2, 560(sp)
  ADDW t0, t0, t1
  LW t1, 564(sp)
  ADDW t0, t0, t2
  LW t2, 568(sp)
  ADDW t0, t0, t1
  LW t1, 572(sp)
  ADDW t0, t0, t2
  LW t2, 576(sp)
  ADDW t0, t0, t1
  LW t1, 580(sp)
  ADDW t0, t0, t2
  LW t2, 584(sp)
  ADDW t0, t0, t1
  LW t1, 588(sp)
  ADDW t0, t0, t2
  LW t2, 592(sp)
  ADDW t0, t0, t1
  LW t1, 596(sp)
  ADDW t0, t0, t2
  LW t2, 600(sp)
  ADDW t0, t0, t1
  LW t1, 604(sp)
  ADDW t0, t0, t2
  LW t2, 608(sp)
  ADDW t0, t0, t1
  LW t1, 612(sp)
  ADDW t0, t0, t2
  LW t2, 616(sp)
  ADDW t0, t0, t1
  LW t1, 620(sp)
  ADDW t0, t0, t2
  LW t2, 624(sp)
  ADDW t0, t0, t1
  LW t1, 628(sp)
  ADDW t0, t0, t2
  LW t2, 632(sp)
  ADDW t0, t0, t1
  LW t1, 636(sp)
  ADDW t0, t0, t2
  LW t2, 640(sp)
  ADDW t0, t0, t1
  LW t1, 644(sp)
  ADDW t0, t0, t2
  LW t2, 648(sp)
  ADDW t0, t0, t1
  LW t1, 652(sp)
  ADDW t0, t0, t2
  LW t2, 656(sp)
  ADDW t0, t0, t1
  LW t1, 660(sp)
  ADDW t0, t0, t2
  LW t2, 664(sp)
  ADDW t0, t0, t1
  LW t1, 668(sp)
  ADDW t0, t0, t2
  LW t2, 672(sp)
  ADDW t0, t0, t1
  LW t1, 676(sp)
  ADDW t0, t0, t2
  LW t2, 680(sp)
  ADDW t0, t0, t1
  LW t1, 684(sp)
  ADDW t0, t0, t2
  LW t2, 688(sp)
  ADDW t0, t0, t1
  LW t1, 692(sp)
  ADDW t0, t0, t2
  ADDW a0, t0, t1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 288(sp)
  LD s1, 296(sp)
  LD s3, 304(sp)
  LD s4, 312(sp)
  LD s5, 320(sp)
  LD s6, 328(sp)
  LD s7, 336(sp)
  LD s8, 344(sp)
  LD s9, 352(sp)
  LD s10, 360(sp)
  LD s11, 368(sp)
  ADDI sp, sp, 704
  JALR zero, 0(ra)
bb12:   # loop depth 1
  JAL zero, bb10
bb13:   # loop depth 1
  JAL zero, bb8
bb14:   # loop depth 0
  LW t0, 84(sp)
  SW t0, 84(sp)
  JAL zero, bb7
bb15:   # loop depth 1
  ADDIW a1, s10, 1
  SLTI t2, a1, 16
  BNE t2, zero, bb18
  # implict jump to bb16
bb16:   # loop depth 1
  # implict jump to bb17
bb17:   # loop depth 1
  ADD s10, a1, zero
  JAL zero, bb1
bb18:   # loop depth 1
  SLLIW a3, s10, 2
  ADD a2, a1, zero
  ADDI t6, sp, 376
  ADD a3, t6, a3
  # implict jump to bb19
bb19:   # loop depth 2
  LW a4, 0(a3)
  SLLIW t2, a2, 2
  ADDI a5, sp, 376
  ADD a5, a5, t2
  LW t2, 0(a5)
  BLT a4, t2, bb24
  # implict jump to bb20
bb20:   # loop depth 2
  # implict jump to bb21
bb21:   # loop depth 2
  ADDIW a2, a2, 1
  SLTI a4, a2, 16
  BNE a4, zero, bb23
  # implict jump to bb22
bb22:   # loop depth 2
  ADD s10, a1, zero
  JAL zero, bb1
bb23:   # loop depth 2
  JAL zero, bb19
bb24:   # loop depth 2
  LW t2, 0(a3)
  LW a4, 0(a5)
  ADD s11, t2, zero
  SW a4, 0(a3)
  SW t2, 0(a5)
  JAL zero, bb21
