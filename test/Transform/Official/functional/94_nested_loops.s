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
  ADDI sp, sp, -560
  SD s0, 448(sp)
  SD s1, 456(sp)
  SD s5, 464(sp)
  SD s2, 472(sp)
  SD s10, 480(sp)
  SD s9, 488(sp)
  SD s3, 496(sp)
  SD s6, 504(sp)
  SD s11, 512(sp)
  SD s8, 520(sp)
  SD s7, 528(sp)
  SD ra, 536(sp)
  SD s4, 544(sp)
  ADD t4, a0, zero
  SW t4, 0(sp)
  ADD t4, a1, zero
  SW t4, 40(sp)
  ADD t4, a2, zero
  SW t4, 144(sp)
  ADD t4, a3, zero
  SW t4, 128(sp)
  ADD t4, a4, zero
  SW t4, 120(sp)
  ADD t4, a5, zero
  SW t4, 112(sp)
  ADD t4, a6, zero
  SW t4, 104(sp)
  ADD t4, zero, zero
  SW t4, 96(sp)
  ADD a6, zero, zero
  ADD a5, zero, zero
  ADD a4, zero, zero
  ADD a3, zero, zero
  ADD a2, zero, zero
  ADD t4, zero, zero
  SW t4, 136(sp)
  JAL zero, bb1
bb1:
  LW t4, 96(sp)
  SLTI a1, t4, 10
  XOR s4, a1, zero
  SLTU a1, zero, s4
  BNE a1, zero, bb2
  JAL zero, bb36
bb2:
  ADD t4, a6, zero
  SW t4, 208(sp)
  ADD t4, zero, zero
  SW t4, 200(sp)
  ADD t4, a5, zero
  SW t4, 160(sp)
  ADD t4, a4, zero
  SW t4, 168(sp)
  ADD t4, a3, zero
  SW t4, 176(sp)
  ADD t4, a2, zero
  SW t4, 184(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  JAL zero, bb4
bb3:
  ADD a0, s7, zero
  LD s0, 448(sp)
  LD s1, 456(sp)
  LD s5, 464(sp)
  LD s2, 472(sp)
  LD s10, 480(sp)
  LD s9, 488(sp)
  LD s3, 496(sp)
  LD s6, 504(sp)
  LD s11, 512(sp)
  LD s8, 520(sp)
  LD s7, 528(sp)
  LD ra, 536(sp)
  LD s4, 544(sp)
  ADDI sp, sp, 560
  JALR zero, 0(ra)
bb4:
  LW t4, 200(sp)
  SLTI a1, t4, 100
  XOR s4, a1, zero
  SLTU a1, zero, s4
  BNE a1, zero, bb5
  JAL zero, bb37
bb5:
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 280(sp)
  ADD t4, zero, zero
  SW t4, 272(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 256(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 224(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 232(sp)
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 240(sp)
  JAL zero, bb7
bb6:
  LW t4, 96(sp)
  ADDIW a7, t4, 1
  LW t4, 0(sp)
  SLT a1, a7, t4
  XORI s7, a1, 1
  BNE s7, zero, bb34
  JAL zero, bb35
bb7:
  LW t4, 272(sp)
  SLTI t2, t4, 1000
  XOR s8, t2, zero
  SLTU t2, zero, s8
  BNE t2, zero, bb8
  JAL zero, bb38
bb8:
  LW t3, 280(sp)
  ADD t4, t3, zero
  SW t4, 360(sp)
  ADD t4, zero, zero
  SW t4, 344(sp)
  LW t3, 224(sp)
  ADD t4, t3, zero
  SW t4, 328(sp)
  LW t3, 232(sp)
  ADD t4, t3, zero
  SW t4, 312(sp)
  LW t3, 240(sp)
  ADD t4, t3, zero
  SW t4, 296(sp)
  JAL zero, bb10
bb9:
  LW t4, 200(sp)
  ADDIW s11, t4, 1
  LW t4, 40(sp)
  SLT a1, s11, t4
  XORI a7, a1, 1
  BNE a7, zero, bb32
  JAL zero, bb33
bb10:
  LUI t1, 2
  ADDI t1, t1, 1808
  LW t4, 344(sp)
  SLT s4, t4, t1
  XOR t1, s4, zero
  SLTU s4, zero, t1
  BNE s4, zero, bb11
  JAL zero, bb39
bb11:
  LW t3, 360(sp)
  ADD t4, t3, zero
  SW t4, 408(sp)
  LW t3, 328(sp)
  ADD t4, t3, zero
  SW t4, 392(sp)
  ADD t4, zero, zero
  SW t4, 384(sp)
  LW t3, 296(sp)
  ADD t4, t3, zero
  SW t4, 368(sp)
  JAL zero, bb13
bb12:
  LW t4, 272(sp)
  ADDIW s4, t4, 1
  LW t4, 144(sp)
  SLT a1, s4, t4
  XORI s11, a1, 1
  BNE s11, zero, bb30
  JAL zero, bb31
bb13:
  LUI s6, 24
  ADDI s6, s6, 1696
  LW t4, 384(sp)
  SLT s3, t4, s6
  XOR s6, s3, zero
  SLTU s3, zero, s6
  BNE s3, zero, bb14
  JAL zero, bb40
bb14:
  LW t4, 408(sp)
  ADD s3, t4, zero
  ADD s6, zero, zero
  LW t3, 368(sp)
  ADD t4, t3, zero
  SW t4, 424(sp)
  JAL zero, bb16
bb15:
  LW t4, 344(sp)
  ADDIW s9, t4, 1
  LW t4, 128(sp)
  SLT a1, s9, t4
  XORI s4, a1, 1
  BNE s4, zero, bb28
  JAL zero, bb29
bb16:
  LUI t2, 244
  ADDI t2, t2, 576
  SLT s10, s6, t2
  XOR t2, s10, zero
  SLTU s10, zero, t2
  BNE s10, zero, bb17
  JAL zero, bb41
bb17:
  ADD s10, zero, zero
  LW t4, 424(sp)
  ADD t2, t4, zero
  JAL zero, bb19
bb18:
  LW t4, 384(sp)
  ADDIW t1, t4, 1
  LW t4, 120(sp)
  SLT a1, t1, t4
  XORI s9, a1, 1
  BNE s9, zero, bb26
  JAL zero, bb27
bb19:
  LUI s8, 2441
  ADDI s8, s8, 1664
  SLT a1, s10, s8
  XOR s8, a1, zero
  SLTU a1, zero, s8
  BNE a1, zero, bb20
  JAL zero, bb42
bb20:
  ADDI s8, zero, 817
  REMW a1, t2, s8
  LUI s8, 1
  ADDI s8, s8, 1664
  LW t4, 96(sp)
  MULW s2, t4, s8
  LA s8, arr1
  ADD s5, s8, s2
  LUI s2, 1
  ADDI s2, s2, -1216
  LW t4, 200(sp)
  MULW s8, t4, s2
  ADD s2, s5, s8
  ADDI s5, zero, 960
  LW t4, 272(sp)
  MULW s8, t4, s5
  ADD s5, s2, s8
  ADDI s2, zero, 240
  LW t4, 344(sp)
  MULW s8, t4, s2
  ADD s2, s5, s8
  ADDI s5, zero, 48
  LW t4, 384(sp)
  MULW s8, t4, s5
  ADD s5, s2, s8
  ADDI s2, zero, 8
  MULW s8, s6, s2
  ADD s2, s5, s8
  ADDI s5, zero, 4
  MULW s8, s10, s5
  ADD s5, s2, s8
  LW s2, 0(s5)
  ADDW s5, a1, s2
  LUI s2, 3
  ADDI s2, s2, -1536
  LW t4, 96(sp)
  MULW s8, t4, s2
  LA s2, arr2
  ADD a1, s2, s8
  LUI s2, 1
  ADDI s2, s2, 1280
  LW t4, 200(sp)
  MULW s8, t4, s2
  ADD s2, a1, s8
  ADDI s8, zero, 1792
  LW t4, 272(sp)
  MULW a1, t4, s8
  ADD s8, s2, a1
  ADDI s2, zero, 896
  LW t4, 344(sp)
  MULW a1, t4, s2
  ADD s2, s8, a1
  ADDI s8, zero, 224
  LW t4, 384(sp)
  MULW a1, t4, s8
  ADD s8, s2, a1
  ADDI s2, zero, 28
  MULW a1, s6, s2
  ADD s2, s8, a1
  ADDI s8, zero, 4
  MULW a1, s10, s8
  ADD s8, s2, a1
  LW s2, 0(s8)
  ADDW s8, s5, s2
  ADDIW s2, s10, 1
  LW t4, 104(sp)
  SLT s5, s2, t4
  XORI a1, s5, 1
  BNE a1, zero, bb22
  JAL zero, bb23
bb21:
  ADDIW s5, s6, 1
  LW t4, 112(sp)
  SLT a1, s5, t4
  XORI t1, a1, 1
  BNE t1, zero, bb24
  JAL zero, bb25
bb22:
  ADD s1, s2, zero
  ADD s0, s8, zero
  JAL zero, bb21
bb23:
  ADD s10, s2, zero
  ADD t2, s8, zero
  JAL zero, bb19
bb24:
  ADD t4, s1, zero
  SW t4, 88(sp)
  ADD t0, s5, zero
  ADD t4, s0, zero
  SW t4, 440(sp)
  JAL zero, bb18
bb25:
  ADD s3, s1, zero
  ADD s6, s5, zero
  ADD t4, s0, zero
  SW t4, 424(sp)
  JAL zero, bb16
bb26:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 416(sp)
  ADD t4, t0, zero
  SW t4, 400(sp)
  ADD t4, t1, zero
  SW t4, 64(sp)
  LW t3, 440(sp)
  ADD t4, t3, zero
  SW t4, 376(sp)
  JAL zero, bb15
bb27:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 408(sp)
  ADD t4, t0, zero
  SW t4, 392(sp)
  ADD t4, t1, zero
  SW t4, 384(sp)
  LW t3, 440(sp)
  ADD t4, t3, zero
  SW t4, 368(sp)
  JAL zero, bb13
bb28:
  LW t3, 416(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  ADD t4, s9, zero
  SW t4, 352(sp)
  LW t3, 400(sp)
  ADD t4, t3, zero
  SW t4, 336(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 320(sp)
  LW t3, 376(sp)
  ADD t4, t3, zero
  SW t4, 304(sp)
  JAL zero, bb12
bb29:
  LW t3, 416(sp)
  ADD t4, t3, zero
  SW t4, 360(sp)
  ADD t4, s9, zero
  SW t4, 344(sp)
  LW t3, 400(sp)
  ADD t4, t3, zero
  SW t4, 328(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 312(sp)
  LW t3, 376(sp)
  ADD t4, t3, zero
  SW t4, 296(sp)
  JAL zero, bb10
bb30:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 288(sp)
  ADD t4, s4, zero
  SW t4, 56(sp)
  LW t3, 352(sp)
  ADD t4, t3, zero
  SW t4, 264(sp)
  LW t3, 336(sp)
  ADD t4, t3, zero
  SW t4, 248(sp)
  LW t3, 320(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 304(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  JAL zero, bb9
bb31:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 280(sp)
  ADD t4, s4, zero
  SW t4, 272(sp)
  LW t3, 352(sp)
  ADD t4, t3, zero
  SW t4, 256(sp)
  LW t3, 336(sp)
  ADD t4, t3, zero
  SW t4, 224(sp)
  LW t3, 320(sp)
  ADD t4, t3, zero
  SW t4, 232(sp)
  LW t3, 304(sp)
  ADD t4, t3, zero
  SW t4, 240(sp)
  JAL zero, bb7
bb32:
  LW t3, 288(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  ADD t4, s11, zero
  SW t4, 432(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t3, 264(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 248(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb6
bb33:
  LW t3, 288(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  ADD t4, s11, zero
  SW t4, 200(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  LW t3, 264(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LW t3, 248(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  JAL zero, bb4
bb34:
  LW t4, 8(sp)
  ADD s7, t4, zero
  JAL zero, bb3
bb35:
  ADD t4, a7, zero
  SW t4, 96(sp)
  LW t4, 80(sp)
  ADD a6, t4, zero
  LW t4, 152(sp)
  ADD a5, t4, zero
  LW t4, 32(sp)
  ADD a4, t4, zero
  LW t4, 24(sp)
  ADD a3, t4, zero
  LW t4, 16(sp)
  ADD a2, t4, zero
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  JAL zero, bb1
bb36:
  LW t4, 136(sp)
  ADD s7, t4, zero
  JAL zero, bb3
bb37:
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 432(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb6
bb38:
  LW t3, 280(sp)
  ADD t4, t3, zero
  SW t4, 288(sp)
  LW t3, 272(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 256(sp)
  ADD t4, t3, zero
  SW t4, 264(sp)
  LW t3, 224(sp)
  ADD t4, t3, zero
  SW t4, 248(sp)
  LW t3, 232(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 240(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  JAL zero, bb9
bb39:
  LW t3, 360(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 344(sp)
  ADD t4, t3, zero
  SW t4, 352(sp)
  LW t3, 328(sp)
  ADD t4, t3, zero
  SW t4, 336(sp)
  LW t3, 312(sp)
  ADD t4, t3, zero
  SW t4, 320(sp)
  LW t3, 296(sp)
  ADD t4, t3, zero
  SW t4, 304(sp)
  JAL zero, bb12
bb40:
  LW t3, 408(sp)
  ADD t4, t3, zero
  SW t4, 416(sp)
  LW t3, 392(sp)
  ADD t4, t3, zero
  SW t4, 400(sp)
  LW t3, 384(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 368(sp)
  ADD t4, t3, zero
  SW t4, 376(sp)
  JAL zero, bb15
bb41:
  ADD t4, s3, zero
  SW t4, 88(sp)
  ADD t0, s6, zero
  LW t3, 424(sp)
  ADD t4, t3, zero
  SW t4, 440(sp)
  JAL zero, bb18
bb42:
  ADD s1, s10, zero
  ADD s0, t2, zero
  JAL zero, bb21
loop2:
  ADDI sp, sp, -160
  SD s8, 56(sp)
  SD s3, 64(sp)
  SD s9, 72(sp)
  SD s4, 80(sp)
  SD s10, 88(sp)
  SD s5, 96(sp)
  SD s2, 104(sp)
  SD s0, 112(sp)
  SD s1, 120(sp)
  SD s6, 128(sp)
  SD s7, 136(sp)
  SD s11, 144(sp)
  SD ra, 152(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
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
  LW t4, 0(sp)
  SLTI s6, t4, 10
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb45
  JAL zero, bb46
bb45:
  ADD s6, s0, zero
  ADD s7, s1, zero
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  ADD s11, zero, zero
  JAL zero, bb47
bb46:
  LD s8, 56(sp)
  LD s3, 64(sp)
  LD s9, 72(sp)
  LD s4, 80(sp)
  LD s10, 88(sp)
  LD s5, 96(sp)
  LD s2, 104(sp)
  LD s0, 112(sp)
  LD s1, 120(sp)
  LD s6, 128(sp)
  LD s7, 136(sp)
  LD s11, 144(sp)
  LD ra, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb47:
  SLTI t0, s11, 2
  XOR t1, t0, zero
  SLTU t0, zero, t1
  BNE t0, zero, bb48
  JAL zero, bb49
bb48:
  ADD t0, s6, zero
  ADD t1, s7, zero
  LW t4, 40(sp)
  ADD t2, t4, zero
  LW t4, 24(sp)
  ADD a0, t4, zero
  ADD a1, zero, zero
  JAL zero, bb50
bb49:
  LW t4, 0(sp)
  ADDIW s2, t4, 1
  ADD s0, s6, zero
  ADD s1, s7, zero
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  ADD t4, s2, zero
  SW t4, 0(sp)
  JAL zero, bb44
bb50:
  SLTI a2, a1, 3
  XOR a3, a2, zero
  SLTU a2, zero, a3
  BNE a2, zero, bb51
  JAL zero, bb52
bb51:
  ADD a2, t0, zero
  ADD a3, t1, zero
  ADD a4, t2, zero
  ADD a5, zero, zero
  JAL zero, bb53
bb52:
  ADDIW s2, s11, 1
  ADD s6, t0, zero
  ADD s7, t1, zero
  ADD t4, t2, zero
  SW t4, 40(sp)
  ADD t4, a0, zero
  SW t4, 24(sp)
  ADD t4, a1, zero
  SW t4, 8(sp)
  ADD s11, s2, zero
  JAL zero, bb47
bb53:
  SLTI a6, a5, 2
  XOR a7, a6, zero
  SLTU a6, zero, a7
  BNE a6, zero, bb54
  JAL zero, bb55
bb54:
  ADD a6, a2, zero
  ADD a7, a3, zero
  ADD s5, zero, zero
  JAL zero, bb56
bb55:
  ADDIW s2, a1, 1
  ADD t0, a2, zero
  ADD t1, a3, zero
  ADD t2, a4, zero
  ADD a0, a5, zero
  ADD a1, s2, zero
  JAL zero, bb50
bb56:
  SLTI s10, s5, 4
  XOR s4, s10, zero
  SLTU s10, zero, s4
  BNE s10, zero, bb57
  JAL zero, bb58
bb57:
  ADD s4, a6, zero
  ADD s10, zero, zero
  JAL zero, bb59
bb58:
  ADDIW s2, a5, 1
  ADD a2, a6, zero
  ADD a3, a7, zero
  ADD a4, s5, zero
  ADD a5, s2, zero
  JAL zero, bb53
bb59:
  SLTI s9, s10, 8
  XOR s3, s9, zero
  SLTU s9, zero, s3
  BNE s9, zero, bb60
  JAL zero, bb61
bb60:
  ADD s3, zero, zero
  JAL zero, bb62
bb61:
  ADDIW s2, s5, 1
  ADD a6, s4, zero
  ADD a7, s10, zero
  ADD s5, s2, zero
  JAL zero, bb56
bb62:
  SLTI s9, s3, 7
  XOR s8, s9, zero
  SLTU s9, zero, s8
  BNE s9, zero, bb63
  JAL zero, bb64
bb63:
  LUI s8, 3
  ADDI s8, s8, -1536
  LW t4, 0(sp)
  MULW s9, t4, s8
  LA s8, arr2
  ADD s2, s8, s9
  LUI s8, 1
  ADDI s8, s8, 1280
  MULW s9, s11, s8
  ADD s8, s2, s9
  ADDI s2, zero, 1792
  MULW s9, a1, s2
  ADD s2, s8, s9
  ADDI s8, zero, 896
  MULW s9, a5, s8
  ADD s8, s2, s9
  ADDI s2, zero, 224
  MULW s9, s5, s2
  ADD s2, s8, s9
  ADDI s8, zero, 28
  MULW s9, s10, s8
  ADD s8, s2, s9
  ADDI s2, zero, 4
  MULW s9, s3, s2
  ADD s2, s8, s9
  LW t4, 0(sp)
  ADDW s8, t4, s11
  ADDW s9, s8, a5
  ADDW s8, s9, s3
  SW s8, 0(s2)
  ADDIW s2, s3, 1
  ADD s3, s2, zero
  JAL zero, bb62
bb64:
  ADDIW s2, s10, 1
  ADD s4, s3, zero
  ADD s10, s2, zero
  JAL zero, bb59
loop1:
  ADDI sp, sp, -192
  SD s9, 80(sp)
  SD s1, 88(sp)
  SD s2, 96(sp)
  SD s3, 104(sp)
  SD s4, 112(sp)
  SD s5, 120(sp)
  SD s6, 128(sp)
  SD s7, 136(sp)
  SD s0, 144(sp)
  SD s10, 152(sp)
  SD s8, 160(sp)
  SD s11, 168(sp)
  SD ra, 176(sp)
  ADD t4, a0, zero
  SW t4, 56(sp)
  ADD t4, a1, zero
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
  ADD t4, zero, zero
  SW t4, 0(sp)
  JAL zero, bb66
bb66:
  LW t4, 0(sp)
  LW t3, 56(sp)
  SLT s8, t4, t3
  BNE s8, zero, bb69
  JAL zero, bb70
bb67:
  LW t4, 40(sp)
  ADD s8, t4, zero
  LW t4, 32(sp)
  ADD s10, t4, zero
  LW t4, 24(sp)
  ADD s11, t4, zero
  LW t4, 16(sp)
  ADD t0, t4, zero
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  ADD t2, zero, zero
  JAL zero, bb72
bb68:
  LD s9, 80(sp)
  LD s1, 88(sp)
  LD s2, 96(sp)
  LD s3, 104(sp)
  LD s4, 112(sp)
  LD s5, 120(sp)
  LD s6, 128(sp)
  LD s7, 136(sp)
  LD s0, 144(sp)
  LD s10, 152(sp)
  LD s8, 160(sp)
  LD s11, 168(sp)
  LD ra, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb69:
  LW t4, 0(sp)
  LW t3, 48(sp)
  SLT s8, t4, t3
  ADD t4, s8, zero
  SB t4, 64(sp)
  JAL zero, bb71
bb70:
  ADD t4, zero, zero
  SB t4, 64(sp)
  JAL zero, bb71
bb71:
  LB t4, 64(sp)
  XOR s8, t4, zero
  SLTU s10, zero, s8
  BNE s10, zero, bb67
  JAL zero, bb68
bb72:
  SLTI a0, t2, 2
  XOR a1, a0, zero
  SLTU a0, zero, a1
  BNE a0, zero, bb73
  JAL zero, bb74
bb73:
  ADD a0, s8, zero
  ADD a1, s10, zero
  ADD a2, s11, zero
  ADD a3, t0, zero
  ADD a4, zero, zero
  JAL zero, bb75
bb74:
  LW t4, 0(sp)
  ADDIW s0, t4, 1
  ADD t4, s8, zero
  SW t4, 40(sp)
  ADD t4, s10, zero
  SW t4, 32(sp)
  ADD t4, s11, zero
  SW t4, 24(sp)
  ADD t4, t0, zero
  SW t4, 16(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb66
bb75:
  SLTI a5, a4, 3
  XOR a6, a5, zero
  SLTU a5, zero, a6
  BNE a5, zero, bb76
  JAL zero, bb77
bb76:
  ADD a5, a0, zero
  ADD a6, a1, zero
  ADD a7, a2, zero
  ADD s7, zero, zero
  JAL zero, bb78
bb77:
  ADDIW s0, t2, 1
  ADD s8, a0, zero
  ADD s10, a1, zero
  ADD s11, a2, zero
  ADD t0, a3, zero
  ADD t4, a4, zero
  SW t4, 72(sp)
  ADD t2, s0, zero
  JAL zero, bb72
bb78:
  SLTI s6, s7, 4
  XOR s5, s6, zero
  SLTU s6, zero, s5
  BNE s6, zero, bb79
  JAL zero, bb80
bb79:
  ADD s5, zero, zero
  ADD s6, a6, zero
  ADD s4, a7, zero
  JAL zero, bb81
bb80:
  ADDIW s0, a4, 1
  ADD a0, a5, zero
  ADD a1, a6, zero
  ADD a2, a7, zero
  ADD a3, s7, zero
  ADD a4, s0, zero
  JAL zero, bb75
bb81:
  SLTI s3, s5, 5
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb82
  JAL zero, bb83
bb82:
  ADD s2, s6, zero
  ADD s3, zero, zero
  JAL zero, bb84
bb83:
  ADDIW s0, s7, 1
  ADD a5, s5, zero
  ADD a6, s6, zero
  ADD a7, s4, zero
  ADD s7, s0, zero
  JAL zero, bb78
bb84:
  SLTI s1, s3, 6
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb85
  JAL zero, bb86
bb85:
  ADD s0, zero, zero
  JAL zero, bb87
bb86:
  ADDIW s0, s5, 1
  ADD s5, s0, zero
  ADD s6, s2, zero
  ADD s4, s3, zero
  JAL zero, bb81
bb87:
  SLTI s1, s0, 2
  XOR s9, s1, zero
  SLTU s1, zero, s9
  BNE s1, zero, bb88
  JAL zero, bb89
bb88:
  LUI s1, 1
  ADDI s1, s1, 1664
  LW t4, 0(sp)
  MULW s9, t4, s1
  LA s1, arr1
  ADD t1, s1, s9
  LUI s1, 1
  ADDI s1, s1, -1216
  MULW s9, t2, s1
  ADD s1, t1, s9
  ADDI s9, zero, 960
  MULW t1, a4, s9
  ADD s9, s1, t1
  ADDI s1, zero, 240
  MULW t1, s7, s1
  ADD s1, s9, t1
  ADDI s9, zero, 48
  MULW t1, s5, s9
  ADD s9, s1, t1
  ADDI s1, zero, 8
  MULW t1, s3, s1
  ADD s1, s9, t1
  ADDI s9, zero, 4
  MULW t1, s0, s9
  ADD s9, s1, t1
  LW t4, 0(sp)
  ADDW s1, t4, t2
  ADDW t1, s1, a4
  ADDW s1, t1, s7
  ADDW t1, s1, s5
  ADDW s1, t1, s3
  ADDW t1, s1, s0
  LW t4, 56(sp)
  ADDW s1, t1, t4
  LW t4, 48(sp)
  ADDW t1, s1, t4
  SW t1, 0(s9)
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb87
bb89:
  ADDIW s1, s3, 1
  ADD s2, s0, zero
  ADD s3, s1, zero
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
