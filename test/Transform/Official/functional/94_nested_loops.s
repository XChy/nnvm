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
  ADDI sp, sp, -544
  SD s0, 440(sp)
  SD s5, 448(sp)
  SD s3, 456(sp)
  SD s4, 464(sp)
  SD s2, 472(sp)
  SD s1, 480(sp)
  SD ra, 488(sp)
  SD s6, 496(sp)
  SD s11, 504(sp)
  SD s7, 512(sp)
  SD s10, 520(sp)
  SD s8, 528(sp)
  SD s9, 536(sp)
  ADD t4, a0, zero
  SW t4, 32(sp)
  ADD t4, a1, zero
  SW t4, 28(sp)
  ADD t4, a2, zero
  SW t4, 24(sp)
  ADD t4, a3, zero
  SW t4, 20(sp)
  ADD t4, a4, zero
  SW t4, 16(sp)
  ADD t4, a5, zero
  SW t4, 12(sp)
  ADD t4, a6, zero
  SW t4, 8(sp)
  ADD s7, zero, zero
  ADD s8, zero, zero
  ADD s9, zero, zero
  ADD s10, zero, zero
  ADD s11, zero, zero
  ADD t0, zero, zero
  ADD t1, zero, zero
  # implict jump to bb1
bb1:
  ADD t4, t1, zero
  SW t4, 0(sp)
  ADD a1, t0, zero
  ADD a2, s11, zero
  ADD a3, s10, zero
  ADD a4, s9, zero
  ADD a5, s8, zero
  ADD t4, s7, zero
  SW t4, 4(sp)
  LW t4, 4(sp)
  SLTI a7, t4, 10
  BNE a7, zero, bb4
  # implict jump to bb2
bb2:
  LW t4, 0(sp)
  ADD s6, t4, zero
  # implict jump to bb3
bb3:
  ADD a3, s6, zero
  ADD a0, a3, zero
  LD s0, 440(sp)
  LD s5, 448(sp)
  LD s3, 456(sp)
  LD s4, 464(sp)
  LD s2, 472(sp)
  LD s1, 480(sp)
  LD ra, 488(sp)
  LD s6, 496(sp)
  LD s11, 504(sp)
  LD s7, 512(sp)
  LD s10, 520(sp)
  LD s8, 528(sp)
  LD s9, 536(sp)
  ADDI sp, sp, 544
  JALR zero, 0(ra)
bb4:
  ADD a7, a5, zero
  ADD a5, zero, zero
  ADD t6, a4, zero
  ADD a4, a3, zero
  ADD t4, a2, zero
  SW t4, 428(sp)
  ADD t4, a1, zero
  SW t4, 420(sp)
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 412(sp)
  # implict jump to bb5
bb5:
  LW t3, 412(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t3, 420(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 428(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  ADD t4, a4, zero
  SW t4, 48(sp)
  ADD t4, t6, zero
  SW t4, 52(sp)
  ADD t4, a5, zero
  SW t4, 60(sp)
  ADD t4, a7, zero
  SW t4, 56(sp)
  LW t4, 60(sp)
  SLTI s1, t4, 100
  BNE s1, zero, bb10
  # implict jump to bb6
bb6:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 404(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 400(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 384(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 388(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 392(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 396(sp)
  # implict jump to bb7
bb7:
  LW t4, 396(sp)
  ADD s2, t4, zero
  LW t4, 392(sp)
  ADD s1, t4, zero
  LW t4, 388(sp)
  ADD s4, t4, zero
  LW t4, 384(sp)
  ADD a1, t4, zero
  LW t4, 400(sp)
  ADD s3, t4, zero
  LW t4, 404(sp)
  ADD a2, t4, zero
  LW t4, 4(sp)
  ADDIW a6, t4, 1
  LW t4, 32(sp)
  SLT a3, a6, t4
  XORI s6, a3, 1
  BNE s6, zero, bb9
  # implict jump to bb8
bb8:
  ADD s7, a6, zero
  ADD s8, a2, zero
  ADD s9, s3, zero
  ADD s10, a1, zero
  ADD s11, s4, zero
  ADD t0, s1, zero
  ADD t1, s2, zero
  JAL zero, bb1
bb9:
  ADD s6, s2, zero
  JAL zero, bb3
bb10:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 380(sp)
  ADD t4, zero, zero
  SW t4, 372(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 364(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 356(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 204(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  # implict jump to bb11
bb11:
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 204(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t3, 356(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 364(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t3, 372(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 380(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LW t4, 80(sp)
  SLTI s4, t4, 1000
  BNE s4, zero, bb16
  # implict jump to bb12
bb12:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 352(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 348(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 332(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 336(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 340(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 344(sp)
  # implict jump to bb13
bb13:
  LW t3, 344(sp)
  ADD t4, t3, zero
  SW t4, 408(sp)
  LW t3, 340(sp)
  ADD t4, t3, zero
  SW t4, 416(sp)
  LW t3, 336(sp)
  ADD t4, t3, zero
  SW t4, 424(sp)
  LW t3, 332(sp)
  ADD t4, t3, zero
  SW t4, 432(sp)
  LW t4, 348(sp)
  ADD t2, t4, zero
  LW t4, 352(sp)
  ADD s5, t4, zero
  LW t4, 60(sp)
  ADDIW s0, t4, 1
  LW t4, 28(sp)
  SLT s2, s0, t4
  XORI s1, s2, 1
  BNE s1, zero, bb15
  # implict jump to bb14
bb14:
  ADD a7, s5, zero
  ADD a5, s0, zero
  ADD t6, t2, zero
  LW t4, 432(sp)
  ADD a4, t4, zero
  LW t3, 424(sp)
  ADD t4, t3, zero
  SW t4, 428(sp)
  LW t3, 416(sp)
  ADD t4, t3, zero
  SW t4, 420(sp)
  LW t3, 408(sp)
  ADD t4, t3, zero
  SW t4, 412(sp)
  JAL zero, bb5
bb15:
  ADD t4, s5, zero
  SW t4, 404(sp)
  ADD t4, t2, zero
  SW t4, 400(sp)
  LW t3, 432(sp)
  ADD t4, t3, zero
  SW t4, 384(sp)
  LW t3, 424(sp)
  ADD t4, t3, zero
  SW t4, 388(sp)
  LW t3, 416(sp)
  ADD t4, t3, zero
  SW t4, 392(sp)
  LW t3, 408(sp)
  ADD t4, t3, zero
  SW t4, 396(sp)
  JAL zero, bb7
bb16:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 196(sp)
  ADD t4, zero, zero
  SW t4, 120(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  # implict jump to bb17
bb17:
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  LW t3, 196(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LUI s3, 2
  ADDIW s3, s3, 1808
  LW t4, 108(sp)
  SLT s2, t4, s3
  BNE s2, zero, bb22
  # implict jump to bb18
bb18:
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 304(sp)
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 300(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 288(sp)
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 292(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 296(sp)
  # implict jump to bb19
bb19:
  LW t3, 296(sp)
  ADD t4, t3, zero
  SW t4, 320(sp)
  LW t3, 292(sp)
  ADD t4, t3, zero
  SW t4, 324(sp)
  LW t3, 288(sp)
  ADD t4, t3, zero
  SW t4, 328(sp)
  LW t3, 300(sp)
  ADD t4, t3, zero
  SW t4, 360(sp)
  LW t3, 304(sp)
  ADD t4, t3, zero
  SW t4, 376(sp)
  LW t3, 80(sp)
  ADDIW t4, t3, 1
  SW t4, 368(sp)
  LW t4, 368(sp)
  LW t3, 24(sp)
  SLT s3, t4, t3
  XORI s4, s3, 1
  BNE s4, zero, bb21
  # implict jump to bb20
bb20:
  LW t3, 376(sp)
  ADD t4, t3, zero
  SW t4, 380(sp)
  LW t3, 368(sp)
  ADD t4, t3, zero
  SW t4, 372(sp)
  LW t3, 360(sp)
  ADD t4, t3, zero
  SW t4, 364(sp)
  LW t3, 328(sp)
  ADD t4, t3, zero
  SW t4, 356(sp)
  LW t3, 324(sp)
  ADD t4, t3, zero
  SW t4, 204(sp)
  LW t3, 320(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  JAL zero, bb11
bb21:
  LW t3, 376(sp)
  ADD t4, t3, zero
  SW t4, 352(sp)
  LW t3, 368(sp)
  ADD t4, t3, zero
  SW t4, 348(sp)
  LW t3, 360(sp)
  ADD t4, t3, zero
  SW t4, 332(sp)
  LW t3, 328(sp)
  ADD t4, t3, zero
  SW t4, 336(sp)
  LW t3, 324(sp)
  ADD t4, t3, zero
  SW t4, 340(sp)
  LW t3, 320(sp)
  ADD t4, t3, zero
  SW t4, 344(sp)
  JAL zero, bb13
bb22:
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  ADD t4, zero, zero
  SW t4, 124(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  # implict jump to bb23
bb23:
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LUI s3, 24
  ADDIW s3, s3, 1696
  LW t4, 136(sp)
  SLT s2, t4, s3
  BNE s2, zero, bb28
  # implict jump to bb24
bb24:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 264(sp)
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 260(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 252(sp)
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 256(sp)
  # implict jump to bb25
bb25:
  LW t3, 256(sp)
  ADD t4, t3, zero
  SW t4, 280(sp)
  LW t3, 252(sp)
  ADD t4, t3, zero
  SW t4, 284(sp)
  LW t3, 260(sp)
  ADD t4, t3, zero
  SW t4, 308(sp)
  LW t3, 264(sp)
  ADD t4, t3, zero
  SW t4, 316(sp)
  LW t3, 108(sp)
  ADDIW t4, t3, 1
  SW t4, 312(sp)
  LW t4, 312(sp)
  LW t3, 20(sp)
  SLT s5, t4, t3
  XORI s3, s5, 1
  BNE s3, zero, bb27
  # implict jump to bb26
bb26:
  LW t3, 316(sp)
  ADD t4, t3, zero
  SW t4, 196(sp)
  LW t3, 312(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 308(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  LW t3, 284(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t3, 280(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  JAL zero, bb17
bb27:
  LW t3, 316(sp)
  ADD t4, t3, zero
  SW t4, 304(sp)
  LW t3, 312(sp)
  ADD t4, t3, zero
  SW t4, 300(sp)
  LW t3, 308(sp)
  ADD t4, t3, zero
  SW t4, 288(sp)
  LW t3, 284(sp)
  ADD t4, t3, zero
  SW t4, 292(sp)
  LW t3, 280(sp)
  ADD t4, t3, zero
  SW t4, 296(sp)
  JAL zero, bb19
bb28:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  ADD t4, zero, zero
  SW t4, 172(sp)
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  # implict jump to bb29
bb29:
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LUI s3, 244
  ADDIW s3, s3, 576
  LW t4, 164(sp)
  SLT s2, t4, s3
  BNE s2, zero, bb34
  # implict jump to bb30
bb30:
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 232(sp)
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 228(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 224(sp)
  # implict jump to bb31
bb31:
  LW t3, 224(sp)
  ADD t4, t3, zero
  SW t4, 248(sp)
  LW t3, 228(sp)
  ADD t4, t3, zero
  SW t4, 272(sp)
  LW t3, 232(sp)
  ADD t4, t3, zero
  SW t4, 276(sp)
  LW t3, 136(sp)
  ADDIW t4, t3, 1
  SW t4, 268(sp)
  LW t4, 268(sp)
  LW t3, 16(sp)
  SLT s5, t4, t3
  XORI s3, s5, 1
  BNE s3, zero, bb33
  # implict jump to bb32
bb32:
  LW t3, 276(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t3, 272(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  LW t3, 268(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t3, 248(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  JAL zero, bb23
bb33:
  LW t3, 276(sp)
  ADD t4, t3, zero
  SW t4, 264(sp)
  LW t3, 272(sp)
  ADD t4, t3, zero
  SW t4, 260(sp)
  LW t3, 268(sp)
  ADD t4, t3, zero
  SW t4, 252(sp)
  LW t3, 248(sp)
  ADD t4, t3, zero
  SW t4, 256(sp)
  JAL zero, bb25
bb34:
  ADD t4, zero, zero
  SW t4, 192(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  # implict jump to bb35
bb35:
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LUI s3, 2441
  ADDIW s3, s3, 1664
  LW t4, 184(sp)
  SLT s2, t4, s3
  BNE s2, zero, bb40
  # implict jump to bb36
bb36:
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 212(sp)
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  # implict jump to bb37
bb37:
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 236(sp)
  LW t3, 212(sp)
  ADD t4, t3, zero
  SW t4, 244(sp)
  LW t3, 164(sp)
  ADDIW t4, t3, 1
  SW t4, 240(sp)
  LW t4, 240(sp)
  LW t3, 12(sp)
  SLT s3, t4, t3
  XORI s2, s3, 1
  BNE s2, zero, bb39
  # implict jump to bb38
bb38:
  LW t3, 244(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LW t3, 240(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  LW t3, 236(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  JAL zero, bb29
bb39:
  LW t3, 244(sp)
  ADD t4, t3, zero
  SW t4, 232(sp)
  LW t3, 240(sp)
  ADD t4, t3, zero
  SW t4, 228(sp)
  LW t3, 236(sp)
  ADD t4, t3, zero
  SW t4, 224(sp)
  JAL zero, bb31
bb40:
  ADDI s2, zero, 817
  LW t4, 180(sp)
  REMW s3, t4, s2
  LUI s2, 1
  ADDIW s2, s2, 1664
  LW t4, 4(sp)
  MULW s4, t4, s2
  LA s2, arr1
  ADD s5, s2, s4
  LUI s2, 1
  ADDIW s2, s2, -1216
  LW t4, 60(sp)
  MULW s4, t4, s2
  ADD s2, s5, s4
  ADDI s4, zero, 960
  LW t4, 80(sp)
  MULW s5, t4, s4
  ADD s4, s2, s5
  ADDI s2, zero, 240
  LW t4, 108(sp)
  MULW s5, t4, s2
  ADD s2, s4, s5
  ADDI s4, zero, 48
  LW t4, 136(sp)
  MULW s5, t4, s4
  ADD s4, s2, s5
  ADDI s2, zero, 8
  LW t4, 164(sp)
  MULW s5, t4, s2
  ADD s2, s4, s5
  ADDI s4, zero, 4
  LW t4, 184(sp)
  MULW s5, t4, s4
  ADD s4, s2, s5
  LW s2, 0(s4)
  ADDW s4, s3, s2
  LUI s2, 3
  ADDIW s2, s2, -1536
  LW t4, 4(sp)
  MULW s3, t4, s2
  LA s2, arr2
  ADD s6, s2, s3
  LUI s2, 1
  ADDIW s2, s2, 1280
  LW t4, 60(sp)
  MULW s3, t4, s2
  ADD s2, s6, s3
  ADDI s3, zero, 1792
  LW t4, 80(sp)
  MULW s6, t4, s3
  ADD s3, s2, s6
  ADDI s2, zero, 896
  LW t4, 108(sp)
  MULW s6, t4, s2
  ADD s2, s3, s6
  ADDI s3, zero, 224
  LW t4, 136(sp)
  MULW s6, t4, s3
  ADD s3, s2, s6
  ADDI s2, zero, 28
  LW t4, 164(sp)
  MULW s6, t4, s2
  ADD s2, s3, s6
  ADD s3, s2, s5
  LW s2, 0(s3)
  ADDW t4, s4, s2
  SW t4, 216(sp)
  LW t3, 184(sp)
  ADDIW t4, t3, 1
  SW t4, 220(sp)
  LW t4, 220(sp)
  LW t3, 8(sp)
  SLT s4, t4, t3
  XORI s5, s4, 1
  BNE s5, zero, bb42
  # implict jump to bb41
bb41:
  LW t3, 220(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  JAL zero, bb35
bb42:
  LW t3, 220(sp)
  ADD t4, t3, zero
  SW t4, 212(sp)
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  JAL zero, bb37
loop2:
  ADDI sp, sp, -224
  SD s3, 112(sp)
  SD s4, 120(sp)
  SD s5, 128(sp)
  SD s6, 136(sp)
  SD s1, 144(sp)
  SD s2, 152(sp)
  SD s10, 160(sp)
  SD s7, 168(sp)
  SD s8, 176(sp)
  SD s9, 184(sp)
  SD s11, 192(sp)
  SD ra, 200(sp)
  SD s0, 208(sp)
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
  ADD t4, zero, zero
  SW t4, 0(sp)
  # implict jump to bb44
bb44:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t4, 8(sp)
  ADD s7, t4, zero
  LW t4, 16(sp)
  ADD s8, t4, zero
  LW t4, 24(sp)
  ADD s9, t4, zero
  LW t4, 32(sp)
  ADD s10, t4, zero
  LW t4, 40(sp)
  ADD s11, t4, zero
  LW t4, 44(sp)
  SLTI t0, t4, 10
  BNE t0, zero, bb46
  # implict jump to bb45
bb45:
  LD s3, 112(sp)
  LD s4, 120(sp)
  LD s5, 128(sp)
  LD s6, 136(sp)
  LD s1, 144(sp)
  LD s2, 152(sp)
  LD s10, 160(sp)
  LD s7, 168(sp)
  LD s8, 176(sp)
  LD s9, 184(sp)
  LD s11, 192(sp)
  LD ra, 200(sp)
  LD s0, 208(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb46:
  ADD t4, s11, zero
  SW t4, 88(sp)
  ADD t4, s10, zero
  SW t4, 80(sp)
  ADD t4, s9, zero
  SW t4, 72(sp)
  ADD t4, s8, zero
  SW t4, 64(sp)
  ADD t4, s7, zero
  SW t4, 56(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  # implict jump to bb47
bb47:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t4, 92(sp)
  SLTI a4, t4, 2
  BNE a4, zero, bb49
  # implict jump to bb48
bb48:
  LW t4, 44(sp)
  ADDIW s0, t4, 1
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb44
bb49:
  LW t4, 36(sp)
  ADD a4, t4, zero
  LW t4, 28(sp)
  ADD a5, t4, zero
  LW t4, 20(sp)
  ADD a6, t4, zero
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  ADD t4, zero, zero
  SW t4, 96(sp)
  # implict jump to bb50
bb50:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  ADD t4, a6, zero
  SW t4, 68(sp)
  ADD t4, a5, zero
  SW t4, 76(sp)
  ADD t4, a4, zero
  SW t4, 84(sp)
  LW t4, 52(sp)
  SLTI a1, t4, 3
  BNE a1, zero, bb52
  # implict jump to bb51
bb51:
  LW t4, 92(sp)
  ADDIW s0, t4, 1
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  ADD t4, s0, zero
  SW t4, 48(sp)
  JAL zero, bb47
bb52:
  LW t4, 84(sp)
  ADD a1, t4, zero
  LW t4, 76(sp)
  ADD s2, t4, zero
  LW t4, 68(sp)
  ADD a2, t4, zero
  ADD s1, zero, zero
  # implict jump to bb53
bb53:
  ADD t4, s1, zero
  SW t4, 100(sp)
  ADD t4, a2, zero
  SW t4, 108(sp)
  ADD s6, s2, zero
  ADD s7, a1, zero
  LW t4, 100(sp)
  SLTI s5, t4, 2
  BNE s5, zero, bb55
  # implict jump to bb54
bb54:
  LW t4, 52(sp)
  ADDIW s0, t4, 1
  ADD a4, s7, zero
  ADD a5, s6, zero
  LW t4, 108(sp)
  ADD a6, t4, zero
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  ADD t4, s0, zero
  SW t4, 96(sp)
  JAL zero, bb50
bb55:
  ADD s5, s7, zero
  ADD s8, s6, zero
  ADD t2, zero, zero
  # implict jump to bb56
bb56:
  ADD s9, t2, zero
  ADD s4, s8, zero
  ADD s10, s5, zero
  SLTI a0, s9, 4
  BNE a0, zero, bb58
  # implict jump to bb57
bb57:
  LW t4, 100(sp)
  ADDIW s0, t4, 1
  ADD a1, s10, zero
  ADD s2, s4, zero
  ADD a2, s9, zero
  ADD s1, s0, zero
  JAL zero, bb53
bb58:
  ADD a0, s10, zero
  ADD s11, zero, zero
  # implict jump to bb59
bb59:
  ADD s3, s11, zero
  ADD t0, a0, zero
  SLTI t1, s3, 8
  BNE t1, zero, bb61
  # implict jump to bb60
bb60:
  ADDIW s0, s9, 1
  ADD s5, t0, zero
  ADD s8, s3, zero
  ADD t2, s0, zero
  JAL zero, bb56
bb61:
  ADD t1, zero, zero
  # implict jump to bb62
bb62:
  ADD t6, t1, zero
  SLTI a3, t6, 7
  BNE a3, zero, bb64
  # implict jump to bb63
bb63:
  ADDIW s0, s3, 1
  ADD a0, t6, zero
  ADD s11, s0, zero
  JAL zero, bb59
bb64:
  LUI a3, 3
  ADDIW a3, a3, -1536
  LW t4, 44(sp)
  MULW a7, t4, a3
  LA a3, arr2
  ADD s0, a3, a7
  LUI a3, 1
  ADDIW a3, a3, 1280
  LW t4, 92(sp)
  MULW a7, t4, a3
  ADD a3, s0, a7
  ADDI s0, zero, 1792
  LW t4, 52(sp)
  MULW a7, t4, s0
  ADD s0, a3, a7
  ADDI a3, zero, 896
  LW t4, 100(sp)
  MULW a7, t4, a3
  ADD a3, s0, a7
  ADDI s0, zero, 224
  MULW a7, s9, s0
  ADD s0, a3, a7
  ADDI a3, zero, 28
  MULW a7, s3, a3
  ADD a3, s0, a7
  ADDI s0, zero, 4
  MULW a7, t6, s0
  ADD s0, a3, a7
  LW t4, 44(sp)
  LW t3, 92(sp)
  ADDW a3, t4, t3
  LW t4, 100(sp)
  ADDW a7, a3, t4
  ADDW a3, a7, t6
  SW a3, 0(s0)
  ADDIW s0, t6, 1
  ADD t1, s0, zero
  JAL zero, bb62
loop1:
  ADDI sp, sp, -256
  SD s11, 144(sp)
  SD s1, 152(sp)
  SD s3, 160(sp)
  SD s6, 168(sp)
  SD s7, 176(sp)
  SD s2, 184(sp)
  SD s10, 192(sp)
  SD s8, 200(sp)
  SD s4, 208(sp)
  SD ra, 216(sp)
  SD s9, 224(sp)
  SD s0, 232(sp)
  SD s5, 240(sp)
  ADD t4, a0, zero
  SW t4, 28(sp)
  ADD t4, a1, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 76(sp)
  ADD t4, zero, zero
  SW t4, 68(sp)
  ADD t4, zero, zero
  SW t4, 60(sp)
  ADD t4, zero, zero
  SW t4, 52(sp)
  ADD t4, zero, zero
  SW t4, 44(sp)
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb66
bb66:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 20(sp)
  LW t3, 28(sp)
  SLT t2, t4, t3
  BNE t2, zero, bb89
  # implict jump to bb67
bb67:
  ADD t4, zero, zero
  SB t4, 32(sp)
  # implict jump to bb68
bb68:
  LB t4, 32(sp)
  ADD t2, t4, zero
  BNE t2, zero, bb70
  # implict jump to bb69
bb69:
  LD s11, 144(sp)
  LD s1, 152(sp)
  LD s3, 160(sp)
  LD s6, 168(sp)
  LD s7, 176(sp)
  LD s2, 184(sp)
  LD s10, 192(sp)
  LD s8, 200(sp)
  LD s4, 208(sp)
  LD ra, 216(sp)
  LD s9, 224(sp)
  LD s0, 232(sp)
  LD s5, 240(sp)
  ADDI sp, sp, 256
  JALR zero, 0(ra)
bb70:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  ADD t4, zero, zero
  SW t4, 80(sp)
  # implict jump to bb71
bb71:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t4, 124(sp)
  SLTI s10, t4, 2
  BNE s10, zero, bb73
  # implict jump to bb72
bb72:
  LW t4, 20(sp)
  ADDIW s0, t4, 1
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  ADD t4, s0, zero
  SW t4, 36(sp)
  JAL zero, bb66
bb73:
  LW t4, 72(sp)
  ADD s10, t4, zero
  LW t4, 64(sp)
  ADD s9, t4, zero
  LW t4, 56(sp)
  ADD s8, t4, zero
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  ADD t4, zero, zero
  SW t4, 128(sp)
  # implict jump to bb74
bb74:
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  ADD t4, s8, zero
  SW t4, 100(sp)
  ADD t4, s9, zero
  SW t4, 108(sp)
  ADD t4, s10, zero
  SW t4, 116(sp)
  LW t4, 84(sp)
  SLTI s5, t4, 3
  BNE s5, zero, bb76
  # implict jump to bb75
bb75:
  LW t4, 124(sp)
  ADDIW s0, t4, 1
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  ADD t4, s0, zero
  SW t4, 80(sp)
  JAL zero, bb71
bb76:
  LW t4, 116(sp)
  ADD s5, t4, zero
  LW t4, 108(sp)
  ADD t1, t4, zero
  LW t4, 100(sp)
  ADD s4, t4, zero
  ADD t0, zero, zero
  # implict jump to bb77
bb77:
  ADD t4, t0, zero
  SW t4, 132(sp)
  ADD t4, s4, zero
  SW t4, 140(sp)
  ADD s2, t1, zero
  ADD a5, s5, zero
  LW t4, 132(sp)
  SLTI a0, t4, 4
  BNE a0, zero, bb79
  # implict jump to bb78
bb78:
  LW t4, 84(sp)
  ADDIW s0, t4, 1
  ADD s10, a5, zero
  ADD s9, s2, zero
  LW t4, 140(sp)
  ADD s8, t4, zero
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  ADD t4, s0, zero
  SW t4, 128(sp)
  JAL zero, bb74
bb79:
  ADD a0, zero, zero
  ADD a4, s2, zero
  LW t4, 140(sp)
  ADD s7, t4, zero
  # implict jump to bb80
bb80:
  ADD a3, s7, zero
  ADD a7, a4, zero
  ADD a2, a0, zero
  SLTI s6, a2, 5
  BNE s6, zero, bb82
  # implict jump to bb81
bb81:
  LW t4, 132(sp)
  ADDIW s0, t4, 1
  ADD s5, a2, zero
  ADD t1, a7, zero
  ADD s4, a3, zero
  ADD t0, s0, zero
  JAL zero, bb77
bb82:
  ADD s6, a7, zero
  ADD a1, zero, zero
  # implict jump to bb83
bb83:
  ADD t6, a1, zero
  ADD t2, s6, zero
  SLTI a6, t6, 6
  BNE a6, zero, bb85
  # implict jump to bb84
bb84:
  ADDIW s0, a2, 1
  ADD a0, s0, zero
  ADD a4, t2, zero
  ADD s7, t6, zero
  JAL zero, bb80
bb85:
  ADD a6, zero, zero
  # implict jump to bb86
bb86:
  ADD s0, a6, zero
  SLTI s3, s0, 2
  BNE s3, zero, bb88
  # implict jump to bb87
bb87:
  ADDIW s1, t6, 1
  ADD s6, s0, zero
  ADD a1, s1, zero
  JAL zero, bb83
bb88:
  LUI s3, 1
  ADDIW s3, s3, 1664
  LW t4, 20(sp)
  MULW s1, t4, s3
  LA s3, arr1
  ADD s11, s3, s1
  LUI s1, 1
  ADDIW s1, s1, -1216
  LW t4, 124(sp)
  MULW s3, t4, s1
  ADD s1, s11, s3
  ADDI s3, zero, 960
  LW t4, 84(sp)
  MULW s11, t4, s3
  ADD s3, s1, s11
  ADDI s1, zero, 240
  LW t4, 132(sp)
  MULW s11, t4, s1
  ADD s1, s3, s11
  ADDI s3, zero, 48
  MULW s11, a2, s3
  ADD s3, s1, s11
  ADDI s1, zero, 8
  MULW s11, t6, s1
  ADD s1, s3, s11
  ADDI s3, zero, 4
  MULW s11, s0, s3
  ADD s3, s1, s11
  LW t4, 20(sp)
  LW t3, 124(sp)
  ADDW s1, t4, t3
  LW t4, 84(sp)
  ADDW s11, s1, t4
  LW t4, 132(sp)
  ADDW s1, s11, t4
  ADDW s11, s1, a2
  ADDW s1, s11, t6
  ADDW s11, s1, s0
  LW t4, 28(sp)
  ADDW s1, s11, t4
  LW t4, 24(sp)
  ADDW s11, s1, t4
  SW s11, 0(s3)
  ADDIW s1, s0, 1
  ADD a6, s1, zero
  JAL zero, bb86
bb89:
  LW t4, 20(sp)
  LW t3, 24(sp)
  SLT t2, t4, t3
  ADD t4, t2, zero
  SB t4, 32(sp)
  JAL zero, bb68
main:
  ADDI sp, sp, -496
  SD s4, 384(sp)
  SD s1, 392(sp)
  SD s2, 400(sp)
  SD s6, 408(sp)
  SD s3, 416(sp)
  SD ra, 424(sp)
  SD s0, 432(sp)
  SD s7, 440(sp)
  SD s10, 448(sp)
  SD s8, 456(sp)
  SD s9, 464(sp)
  SD s11, 472(sp)
  SD s5, 480(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 56(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 52(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 48(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 44(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 40(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 36(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 8(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 4(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 104(sp)
  ADD t4, zero, zero
  SW t4, 96(sp)
  ADD t4, zero, zero
  SW t4, 88(sp)
  ADD t4, zero, zero
  SW t4, 80(sp)
  ADD t4, zero, zero
  SW t4, 72(sp)
  ADD t4, zero, zero
  SW t4, 64(sp)
  # implict jump to bb91
bb91:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t4, 12(sp)
  LW t3, 56(sp)
  SLT s5, t4, t3
  BNE s5, zero, bb135
  # implict jump to bb92
bb92:
  ADD t4, zero, zero
  SB t4, 60(sp)
  # implict jump to bb93
bb93:
  LB t4, 60(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb116
  # implict jump to bb94
bb94:
  ADD t4, zero, zero
  SW t4, 260(sp)
  ADD t4, zero, zero
  SW t4, 252(sp)
  ADD t4, zero, zero
  SW t4, 244(sp)
  ADD t4, zero, zero
  SW t4, 236(sp)
  ADD t4, zero, zero
  SW t4, 224(sp)
  ADD t4, zero, zero
  SW t4, 220(sp)
  # implict jump to bb95
bb95:
  LW t3, 220(sp)
  ADD t4, t3, zero
  SW t4, 264(sp)
  LW t4, 224(sp)
  ADD s7, t4, zero
  LW t4, 236(sp)
  ADD s8, t4, zero
  LW t4, 244(sp)
  ADD s9, t4, zero
  LW t4, 252(sp)
  ADD s10, t4, zero
  LW t4, 260(sp)
  ADD s11, t4, zero
  LW t4, 264(sp)
  SLTI s5, t4, 10
  BNE s5, zero, bb97
  # implict jump to bb96
bb96:
  LW t4, 48(sp)
  ADD a0, t4, zero
  LW t4, 44(sp)
  ADD a1, t4, zero
  LW t4, 40(sp)
  ADD a2, t4, zero
  LW t4, 36(sp)
  ADD a3, t4, zero
  LW t4, 8(sp)
  ADD a4, t4, zero
  LW t4, 4(sp)
  ADD a5, t4, zero
  LW t4, 0(sp)
  ADD a6, t4, zero
  CALL loop3
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD s4, 384(sp)
  LD s1, 392(sp)
  LD s2, 400(sp)
  LD s6, 408(sp)
  LD s3, 416(sp)
  LD ra, 424(sp)
  LD s0, 432(sp)
  LD s7, 440(sp)
  LD s10, 448(sp)
  LD s8, 456(sp)
  LD s9, 464(sp)
  LD s11, 472(sp)
  LD s5, 480(sp)
  ADDI sp, sp, 496
  JALR zero, 0(ra)
bb97:
  ADD t4, s11, zero
  SW t4, 308(sp)
  ADD t4, s10, zero
  SW t4, 300(sp)
  ADD t4, s9, zero
  SW t4, 292(sp)
  ADD t4, s8, zero
  SW t4, 284(sp)
  ADD t4, s7, zero
  SW t4, 276(sp)
  ADD t4, zero, zero
  SW t4, 268(sp)
  # implict jump to bb98
bb98:
  LW t3, 268(sp)
  ADD t4, t3, zero
  SW t4, 312(sp)
  LW t3, 276(sp)
  ADD t4, t3, zero
  SW t4, 228(sp)
  LW t3, 284(sp)
  ADD t4, t3, zero
  SW t4, 232(sp)
  LW t3, 292(sp)
  ADD t4, t3, zero
  SW t4, 240(sp)
  LW t3, 300(sp)
  ADD t4, t3, zero
  SW t4, 248(sp)
  LW t3, 308(sp)
  ADD t4, t3, zero
  SW t4, 256(sp)
  LW t4, 312(sp)
  SLTI s3, t4, 2
  BNE s3, zero, bb100
  # implict jump to bb99
bb99:
  LW t4, 264(sp)
  ADDIW s0, t4, 1
  LW t3, 256(sp)
  ADD t4, t3, zero
  SW t4, 260(sp)
  LW t3, 248(sp)
  ADD t4, t3, zero
  SW t4, 252(sp)
  LW t3, 240(sp)
  ADD t4, t3, zero
  SW t4, 244(sp)
  LW t3, 232(sp)
  ADD t4, t3, zero
  SW t4, 236(sp)
  LW t3, 228(sp)
  ADD t4, t3, zero
  SW t4, 224(sp)
  ADD t4, s0, zero
  SW t4, 220(sp)
  JAL zero, bb95
bb100:
  LW t3, 256(sp)
  ADD t4, t3, zero
  SW t4, 348(sp)
  LW t3, 248(sp)
  ADD t4, t3, zero
  SW t4, 340(sp)
  LW t3, 240(sp)
  ADD t4, t3, zero
  SW t4, 332(sp)
  LW t3, 232(sp)
  ADD t4, t3, zero
  SW t4, 324(sp)
  ADD t4, zero, zero
  SW t4, 316(sp)
  # implict jump to bb101
bb101:
  LW t3, 316(sp)
  ADD t4, t3, zero
  SW t4, 272(sp)
  LW t3, 324(sp)
  ADD t4, t3, zero
  SW t4, 280(sp)
  LW t3, 332(sp)
  ADD t4, t3, zero
  SW t4, 288(sp)
  LW t3, 340(sp)
  ADD t4, t3, zero
  SW t4, 296(sp)
  LW t3, 348(sp)
  ADD t4, t3, zero
  SW t4, 304(sp)
  LW t4, 272(sp)
  SLTI s8, t4, 3
  BNE s8, zero, bb103
  # implict jump to bb102
bb102:
  LW t4, 312(sp)
  ADDIW s0, t4, 1
  LW t3, 304(sp)
  ADD t4, t3, zero
  SW t4, 308(sp)
  LW t3, 296(sp)
  ADD t4, t3, zero
  SW t4, 300(sp)
  LW t3, 288(sp)
  ADD t4, t3, zero
  SW t4, 292(sp)
  LW t3, 280(sp)
  ADD t4, t3, zero
  SW t4, 284(sp)
  LW t3, 272(sp)
  ADD t4, t3, zero
  SW t4, 276(sp)
  ADD t4, s0, zero
  SW t4, 268(sp)
  JAL zero, bb98
bb103:
  LW t3, 304(sp)
  ADD t4, t3, zero
  SW t4, 376(sp)
  LW t3, 296(sp)
  ADD t4, t3, zero
  SW t4, 368(sp)
  LW t3, 288(sp)
  ADD t4, t3, zero
  SW t4, 360(sp)
  ADD t4, zero, zero
  SW t4, 352(sp)
  # implict jump to bb104
bb104:
  LW t3, 352(sp)
  ADD t4, t3, zero
  SW t4, 320(sp)
  LW t3, 360(sp)
  ADD t4, t3, zero
  SW t4, 328(sp)
  LW t3, 368(sp)
  ADD t4, t3, zero
  SW t4, 336(sp)
  LW t3, 376(sp)
  ADD t4, t3, zero
  SW t4, 344(sp)
  LW t4, 320(sp)
  SLTI s9, t4, 2
  BNE s9, zero, bb106
  # implict jump to bb105
bb105:
  LW t4, 272(sp)
  ADDIW s0, t4, 1
  LW t3, 344(sp)
  ADD t4, t3, zero
  SW t4, 348(sp)
  LW t3, 336(sp)
  ADD t4, t3, zero
  SW t4, 340(sp)
  LW t3, 328(sp)
  ADD t4, t3, zero
  SW t4, 332(sp)
  LW t3, 320(sp)
  ADD t4, t3, zero
  SW t4, 324(sp)
  ADD t4, s0, zero
  SW t4, 316(sp)
  JAL zero, bb101
bb106:
  LW t4, 344(sp)
  ADD s9, t4, zero
  LW t4, 336(sp)
  ADD s0, t4, zero
  ADD s5, zero, zero
  # implict jump to bb107
bb107:
  ADD t4, s5, zero
  SW t4, 356(sp)
  ADD t4, s0, zero
  SW t4, 364(sp)
  ADD t4, s9, zero
  SW t4, 372(sp)
  LW t4, 356(sp)
  SLTI s6, t4, 4
  BNE s6, zero, bb109
  # implict jump to bb108
bb108:
  LW t4, 320(sp)
  ADDIW s0, t4, 1
  LW t3, 372(sp)
  ADD t4, t3, zero
  SW t4, 376(sp)
  LW t3, 364(sp)
  ADD t4, t3, zero
  SW t4, 368(sp)
  LW t3, 356(sp)
  ADD t4, t3, zero
  SW t4, 360(sp)
  ADD t4, s0, zero
  SW t4, 352(sp)
  JAL zero, bb104
bb109:
  LW t4, 372(sp)
  ADD s6, t4, zero
  ADD s3, zero, zero
  # implict jump to bb110
bb110:
  ADD s11, s3, zero
  ADD s2, s6, zero
  SLTI s7, s11, 8
  BNE s7, zero, bb112
  # implict jump to bb111
bb111:
  LW t4, 356(sp)
  ADDIW s1, t4, 1
  ADD s9, s2, zero
  ADD s0, s11, zero
  ADD s5, s1, zero
  JAL zero, bb107
bb112:
  ADD s7, zero, zero
  # implict jump to bb113
bb113:
  ADD s4, s7, zero
  SLTI s10, s4, 7
  BNE s10, zero, bb115
  # implict jump to bb114
bb114:
  ADDIW s1, s11, 1
  ADD s6, s4, zero
  ADD s3, s1, zero
  JAL zero, bb110
bb115:
  LUI s10, 3
  ADDIW s10, s10, -1536
  LW t4, 264(sp)
  MULW s1, t4, s10
  LA s10, arr2
  ADD s8, s10, s1
  LUI s1, 1
  ADDIW s1, s1, 1280
  LW t4, 312(sp)
  MULW s10, t4, s1
  ADD s1, s8, s10
  ADDI s8, zero, 1792
  LW t4, 272(sp)
  MULW s10, t4, s8
  ADD s8, s1, s10
  ADDI s1, zero, 896
  LW t4, 320(sp)
  MULW s10, t4, s1
  ADD s1, s8, s10
  ADDI s8, zero, 224
  LW t4, 356(sp)
  MULW s10, t4, s8
  ADD s8, s1, s10
  ADDI s1, zero, 28
  MULW s10, s11, s1
  ADD s1, s8, s10
  ADDI s8, zero, 4
  MULW s10, s4, s8
  ADD s8, s1, s10
  LW t4, 264(sp)
  LW t3, 312(sp)
  ADDW s1, t4, t3
  LW t4, 320(sp)
  ADDW s10, s1, t4
  ADDW s1, s10, s4
  SW s1, 0(s8)
  ADDIW s1, s4, 1
  ADD s7, s1, zero
  JAL zero, bb113
bb116:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  ADD t4, zero, zero
  SW t4, 108(sp)
  # implict jump to bb117
bb117:
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  LW t4, 152(sp)
  SLTI s11, t4, 2
  BNE s11, zero, bb119
  # implict jump to bb118
bb118:
  LW t4, 12(sp)
  ADDIW s0, t4, 1
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  ADD t4, s0, zero
  SW t4, 64(sp)
  JAL zero, bb91
bb119:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  ADD t4, zero, zero
  SW t4, 156(sp)
  # implict jump to bb120
bb120:
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t4, 112(sp)
  SLTI s0, t4, 3
  BNE s0, zero, bb122
  # implict jump to bb121
bb121:
  LW t4, 152(sp)
  ADDIW s0, t4, 1
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  ADD t4, s0, zero
  SW t4, 108(sp)
  JAL zero, bb117
bb122:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  ADD t4, zero, zero
  SW t4, 192(sp)
  # implict jump to bb123
bb123:
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LW t4, 160(sp)
  SLTI s1, t4, 4
  BNE s1, zero, bb125
  # implict jump to bb124
bb124:
  LW t4, 112(sp)
  ADDIW s0, t4, 1
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  ADD t4, s0, zero
  SW t4, 156(sp)
  JAL zero, bb120
bb125:
  ADD s1, zero, zero
  LW t4, 176(sp)
  ADD s7, t4, zero
  LW t4, 168(sp)
  ADD s5, t4, zero
  # implict jump to bb126
bb126:
  ADD t4, s5, zero
  SW t4, 196(sp)
  ADD t4, s7, zero
  SW t4, 204(sp)
  ADD t4, s1, zero
  SW t4, 212(sp)
  LW t4, 212(sp)
  SLTI s9, t4, 5
  BNE s9, zero, bb128
  # implict jump to bb127
bb127:
  LW t4, 160(sp)
  ADDIW s0, t4, 1
  LW t3, 212(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  LW t3, 204(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  LW t3, 196(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  ADD t4, s0, zero
  SW t4, 192(sp)
  JAL zero, bb123
bb128:
  LW t4, 204(sp)
  ADD s9, t4, zero
  ADD s11, zero, zero
  # implict jump to bb129
bb129:
  ADD s3, s11, zero
  ADD s10, s9, zero
  SLTI s4, s3, 6
  BNE s4, zero, bb131
  # implict jump to bb130
bb130:
  LW t4, 212(sp)
  ADDIW s0, t4, 1
  ADD s1, s0, zero
  ADD s7, s10, zero
  ADD s5, s3, zero
  JAL zero, bb126
bb131:
  ADD s4, zero, zero
  # implict jump to bb132
bb132:
  ADD s6, s4, zero
  SLTI s2, s6, 2
  BNE s2, zero, bb134
  # implict jump to bb133
bb133:
  ADDIW s0, s3, 1
  ADD s9, s6, zero
  ADD s11, s0, zero
  JAL zero, bb129
bb134:
  LUI s2, 1
  ADDIW s2, s2, 1664
  LW t4, 12(sp)
  MULW s8, t4, s2
  LA s2, arr1
  ADD s0, s2, s8
  LUI s2, 1
  ADDIW s2, s2, -1216
  LW t4, 152(sp)
  MULW s8, t4, s2
  ADD s2, s0, s8
  ADDI s0, zero, 960
  LW t4, 112(sp)
  MULW s8, t4, s0
  ADD s0, s2, s8
  ADDI s2, zero, 240
  LW t4, 160(sp)
  MULW s8, t4, s2
  ADD s2, s0, s8
  ADDI s0, zero, 48
  LW t4, 212(sp)
  MULW s8, t4, s0
  ADD s0, s2, s8
  ADDI s2, zero, 8
  MULW s8, s3, s2
  ADD s2, s0, s8
  ADDI s0, zero, 4
  MULW s8, s6, s0
  ADD s0, s2, s8
  LW t4, 12(sp)
  LW t3, 152(sp)
  ADDW s2, t4, t3
  LW t4, 112(sp)
  ADDW s8, s2, t4
  LW t4, 160(sp)
  ADDW s2, s8, t4
  LW t4, 212(sp)
  ADDW s8, s2, t4
  ADDW s2, s8, s3
  ADDW s8, s2, s6
  LW t4, 56(sp)
  ADDW s2, s8, t4
  LW t4, 52(sp)
  ADDW s8, s2, t4
  SW s8, 0(s0)
  ADDIW s0, s6, 1
  ADD s4, s0, zero
  JAL zero, bb132
bb135:
  LW t4, 12(sp)
  LW t3, 52(sp)
  SLT s5, t4, t3
  ADD t4, s5, zero
  SB t4, 60(sp)
  JAL zero, bb93
