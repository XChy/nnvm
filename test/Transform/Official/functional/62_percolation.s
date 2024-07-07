.global mmerge
.global findfa
.global init
.global main
.section .bss

array:
.space 440
.section .data
n:
.word 0x00000000

.section .text
mmerge:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD a0, s0, zero
  CALL findfa
  ADD s0, a0, zero
  ADD a0, s1, zero
  CALL findfa
  ADD s1, a0, zero
  XOR s2, s0, s1
  SLTU s3, zero, s2
  BNE s3, zero, bb1
  JAL zero, bb2
bb1:
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, array
  ADD s2, s0, s3
  SW s1, 0(s2)
  JAL zero, bb2
bb2:
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
findfa:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, array
  ADD s3, s1, s2
  LW s1, 0(s3)
  XOR s2, s1, s0
  SLTIU s1, s2, 1
  BNE s1, zero, bb4
  JAL zero, bb5
bb4:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb5:
  LW s0, 0(s3)
  ADD a0, s0, zero
  CALL findfa
  ADD s0, a0, zero
  SW s0, 0(s3)
  LW s0, 0(s3)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
init:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 1
  JAL zero, bb7
bb7:
  ADD s2, s1, zero
  MULW s3, s0, s0
  ADDIW s4, s3, 1
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s3, array
  ADD s5, s3, s4
  ADDI s3, zero, -1
  SW s3, 0(s5)
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb7
bb9:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -672
  SD s3, 568(sp)
  SD s2, 576(sp)
  SD s1, 584(sp)
  SD s0, 592(sp)
  SD s10, 600(sp)
  SD s11, 608(sp)
  SD ra, 616(sp)
  SD s7, 624(sp)
  SD s9, 632(sp)
  SD s8, 640(sp)
  SD s6, 648(sp)
  SD s5, 656(sp)
  SD s4, 664(sp)
  ADD t4, zero, zero
  SW t4, 168(sp)
  ADD t4, zero, zero
  SB t4, 160(sp)
  ADD t4, zero, zero
  SB t4, 152(sp)
  ADD t4, zero, zero
  SW t4, 144(sp)
  ADD t4, zero, zero
  SB t4, 136(sp)
  ADD t4, zero, zero
  SW t4, 128(sp)
  ADD t4, zero, zero
  SB t4, 120(sp)
  ADD t4, zero, zero
  SB t4, 112(sp)
  ADD t4, zero, zero
  SB t4, 104(sp)
  ADD t4, zero, zero
  SW t4, 96(sp)
  ADDI t4, zero, 1
  SW t4, 0(sp)
  JAL zero, bb11
bb11:
  LW t4, 0(sp)
  ADD s11, t4, zero
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LB t3, 104(sp)
  ADD t4, t3, zero
  SB t4, 72(sp)
  LB t3, 112(sp)
  ADD t4, t3, zero
  SB t4, 64(sp)
  LB t3, 120(sp)
  ADD t4, t3, zero
  SB t4, 8(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LB t3, 136(sp)
  ADD t4, t3, zero
  SB t4, 88(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LB t3, 152(sp)
  ADD t4, t3, zero
  SB t4, 40(sp)
  LB t3, 160(sp)
  ADD t4, t3, zero
  SB t4, 32(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  XOR a7, s11, zero
  SLTU s10, zero, a7
  BNE s10, zero, bb12
  JAL zero, bb13
bb12:
  ADDI s10, zero, 1
  SUBW t4, s11, s10
  SW t4, 16(sp)
  LA s10, n
  ADDI s11, zero, 4
  SW s11, 0(s10)
  ADDI a0, zero, 4
  CALL init
  LA s10, n
  LW s11, 0(s10)
  LA s10, n
  LW s9, 0(s10)
  MULW s10, s11, s9
  ADDIW t4, s10, 1
  SW t4, 176(sp)
  ADD s10, zero, zero
  ADD s11, zero, zero
  LW t4, 24(sp)
  ADD s8, t4, zero
  LB t4, 32(sp)
  ADD s7, t4, zero
  LB t4, 40(sp)
  ADD s6, t4, zero
  LW t4, 48(sp)
  ADD s5, t4, zero
  LB t4, 88(sp)
  ADD s4, t4, zero
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 552(sp)
  LB t3, 8(sp)
  ADD t4, t3, zero
  SB t4, 544(sp)
  LB t3, 64(sp)
  ADD t4, t3, zero
  SB t4, 312(sp)
  LB t3, 72(sp)
  ADD t4, t3, zero
  SB t4, 304(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 280(sp)
  JAL zero, bb14
bb13:
  ADD a0, zero, zero
  LD s3, 568(sp)
  LD s2, 576(sp)
  LD s1, 584(sp)
  LD s0, 592(sp)
  LD s10, 600(sp)
  LD s11, 608(sp)
  LD ra, 616(sp)
  LD s7, 624(sp)
  LD s9, 632(sp)
  LD s8, 640(sp)
  LD s6, 648(sp)
  LD s5, 656(sp)
  LD s4, 664(sp)
  ADDI sp, sp, 672
  JALR zero, 0(ra)
bb14:
  LW t3, 280(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LB t3, 304(sp)
  ADD t4, t3, zero
  SB t4, 192(sp)
  LB t3, 312(sp)
  ADD t4, t3, zero
  SB t4, 200(sp)
  LB t3, 544(sp)
  ADD t4, t3, zero
  SB t4, 208(sp)
  LW t3, 552(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  ADD t4, s4, zero
  SB t4, 224(sp)
  ADD t4, s5, zero
  SW t4, 232(sp)
  ADD t4, s6, zero
  SB t4, 240(sp)
  ADD t4, s7, zero
  SB t4, 248(sp)
  ADD t4, s8, zero
  SW t4, 256(sp)
  ADD t4, s11, zero
  SW t4, 264(sp)
  ADD t4, s10, zero
  SW t4, 272(sp)
  LW t4, 264(sp)
  SLTI s9, t4, 10
  BNE s9, zero, bb15
  JAL zero, bb16
bb15:
  CALL getint
  ADD t4, a0, zero
  SW t4, 296(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 288(sp)
  LW t4, 272(sp)
  XOR s9, t4, zero
  SLTU s0, zero, s9
  XORI s9, s0, 1
  ADD s0, s9, zero
  XOR s9, s0, zero
  SLTU s0, zero, s9
  BNE s0, zero, bb17
  JAL zero, bb53
bb16:
  LW t4, 272(sp)
  XOR s0, t4, zero
  SLTU s1, zero, s0
  XORI s0, s1, 1
  ADD s1, s0, zero
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb51
  JAL zero, bb52
bb17:
  LA s0, n
  LW s9, 0(s0)
  ADDI s0, zero, 1
  LW t4, 296(sp)
  SUBW s1, t4, s0
  MULW s0, s9, s1
  LW t3, 288(sp)
  ADDW t4, s0, t3
  SW t4, 320(sp)
  ADDI s0, zero, 4
  LW t4, 320(sp)
  MULW s9, t4, s0
  LA s0, array
  ADD s1, s0, s9
  LW t4, 320(sp)
  SW t4, 0(s1)
  LW t4, 296(sp)
  XORI s0, t4, 1
  SLTIU s1, s0, 1
  BNE s1, zero, bb19
  JAL zero, bb20
bb18:
  LW t3, 488(sp)
  ADD t4, t3, zero
  SW t4, 512(sp)
  LB t3, 480(sp)
  ADD t4, t3, zero
  SB t4, 520(sp)
  LB t3, 472(sp)
  ADD t4, t3, zero
  SB t4, 528(sp)
  LB t3, 464(sp)
  ADD t4, t3, zero
  SB t4, 536(sp)
  LB t3, 456(sp)
  ADD t4, t3, zero
  SB t4, 560(sp)
  LB t4, 448(sp)
  ADD s1, t4, zero
  LB t4, 440(sp)
  ADD s9, t4, zero
  LW t4, 496(sp)
  ADD s2, t4, zero
  LW t4, 432(sp)
  ADD s3, t4, zero
  LW t4, 264(sp)
  ADDIW s0, t4, 1
  ADD s10, s3, zero
  ADD s11, s0, zero
  ADD s8, s2, zero
  ADD s7, s9, zero
  ADD s6, s1, zero
  LW t4, 288(sp)
  ADD s5, t4, zero
  LB t4, 560(sp)
  ADD s4, t4, zero
  LW t3, 296(sp)
  ADD t4, t3, zero
  SW t4, 552(sp)
  LB t3, 536(sp)
  ADD t4, t3, zero
  SB t4, 544(sp)
  LB t3, 528(sp)
  ADD t4, t3, zero
  SB t4, 312(sp)
  LB t3, 520(sp)
  ADD t4, t3, zero
  SB t4, 304(sp)
  LW t3, 512(sp)
  ADD t4, t3, zero
  SW t4, 280(sp)
  JAL zero, bb14
bb19:
  LA s0, array
  SW zero, 0(s0)
  LW t4, 320(sp)
  ADD a0, t4, zero
  ADD a1, zero, zero
  CALL mmerge
  JAL zero, bb20
bb20:
  LA s0, n
  LW s1, 0(s0)
  LW t4, 296(sp)
  XOR s0, t4, s1
  SLTIU s1, s0, 1
  BNE s1, zero, bb21
  JAL zero, bb22
bb21:
  ADDI s0, zero, 4
  LW t4, 176(sp)
  MULW s1, t4, s0
  LA s0, array
  ADD s9, s0, s1
  LW t4, 176(sp)
  SW t4, 0(s9)
  LW t4, 320(sp)
  ADD a0, t4, zero
  LW t4, 176(sp)
  ADD a1, t4, zero
  CALL mmerge
  JAL zero, bb22
bb22:
  LA s0, n
  LW s1, 0(s0)
  LW t4, 288(sp)
  SLT s0, t4, s1
  BNE s0, zero, bb23
  JAL zero, bb24
bb23:
  LW t4, 320(sp)
  ADDIW s0, t4, 1
  ADDI s1, zero, 4
  MULW s9, s0, s1
  LA s0, array
  ADD s1, s0, s9
  LW s0, 0(s1)
  XORI s1, s0, -1
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 328(sp)
  JAL zero, bb25
bb24:
  ADD t4, zero, zero
  SB t4, 328(sp)
  JAL zero, bb25
bb25:
  LB t3, 328(sp)
  ADD t4, t3, zero
  SB t4, 336(sp)
  LB t4, 336(sp)
  BNE t4, zero, bb26
  JAL zero, bb27
bb26:
  LW t4, 320(sp)
  ADDIW s9, t4, 1
  LW t4, 320(sp)
  ADD a0, t4, zero
  ADD a1, s9, zero
  CALL mmerge
  JAL zero, bb27
bb27:
  ADDI s9, zero, 1
  LW t4, 288(sp)
  SLT s1, s9, t4
  BNE s1, zero, bb28
  JAL zero, bb29
bb28:
  ADDI s1, zero, 1
  LW t4, 320(sp)
  SUBW s9, t4, s1
  ADDI s1, zero, 4
  MULW s0, s9, s1
  LA s1, array
  ADD s9, s1, s0
  LW s0, 0(s9)
  XORI s1, s0, -1
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 344(sp)
  JAL zero, bb30
bb29:
  ADD t4, zero, zero
  SB t4, 344(sp)
  JAL zero, bb30
bb30:
  LB t3, 344(sp)
  ADD t4, t3, zero
  SB t4, 352(sp)
  LB t4, 352(sp)
  BNE t4, zero, bb31
  JAL zero, bb32
bb31:
  ADDI s9, zero, 1
  LW t4, 320(sp)
  SUBW s1, t4, s9
  LW t4, 320(sp)
  ADD a0, t4, zero
  ADD a1, s1, zero
  CALL mmerge
  JAL zero, bb32
bb32:
  LA s1, n
  LW s9, 0(s1)
  LW t4, 296(sp)
  SLT s1, t4, s9
  BNE s1, zero, bb33
  JAL zero, bb34
bb33:
  LA s1, n
  LW s9, 0(s1)
  LW t4, 320(sp)
  ADDW s1, t4, s9
  ADDI s9, zero, 4
  MULW s0, s1, s9
  LA s1, array
  ADD s9, s1, s0
  LW s0, 0(s9)
  XORI s1, s0, -1
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 360(sp)
  JAL zero, bb35
bb34:
  ADD t4, zero, zero
  SB t4, 360(sp)
  JAL zero, bb35
bb35:
  LB t3, 360(sp)
  ADD t4, t3, zero
  SB t4, 368(sp)
  LB t4, 368(sp)
  BNE t4, zero, bb36
  JAL zero, bb37
bb36:
  LA s9, n
  LW s1, 0(s9)
  LW t4, 320(sp)
  ADDW s9, t4, s1
  LW t4, 320(sp)
  ADD a0, t4, zero
  ADD a1, s9, zero
  CALL mmerge
  JAL zero, bb37
bb37:
  ADDI s1, zero, 1
  LW t4, 296(sp)
  SLT s9, s1, t4
  BNE s9, zero, bb38
  JAL zero, bb39
bb38:
  LA s1, n
  LW s9, 0(s1)
  LW t4, 320(sp)
  SUBW s1, t4, s9
  ADDI s9, zero, 4
  MULW s0, s1, s9
  LA s1, array
  ADD s9, s1, s0
  LW s0, 0(s9)
  XORI s1, s0, -1
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 376(sp)
  JAL zero, bb40
bb39:
  ADD t4, zero, zero
  SB t4, 376(sp)
  JAL zero, bb40
bb40:
  LB t3, 376(sp)
  ADD t4, t3, zero
  SB t4, 384(sp)
  LB t4, 384(sp)
  BNE t4, zero, bb41
  JAL zero, bb42
bb41:
  LA s9, n
  LW s1, 0(s9)
  LW t4, 320(sp)
  SUBW s9, t4, s1
  LW t4, 320(sp)
  ADD a0, t4, zero
  ADD a1, s9, zero
  CALL mmerge
  JAL zero, bb42
bb42:
  LA s1, array
  LW s9, 0(s1)
  XORI s1, s9, -1
  SLTU s9, zero, s1
  BNE s9, zero, bb43
  JAL zero, bb44
bb43:
  ADDI s1, zero, 4
  LW t4, 176(sp)
  MULW s9, t4, s1
  LA s1, array
  ADD s0, s1, s9
  LW s1, 0(s0)
  XORI s0, s1, -1
  SLTU s1, zero, s0
  ADD t4, s1, zero
  SB t4, 392(sp)
  JAL zero, bb45
bb44:
  ADD t4, zero, zero
  SB t4, 392(sp)
  JAL zero, bb45
bb45:
  LB t3, 392(sp)
  ADD t4, t3, zero
  SB t4, 400(sp)
  LB t4, 400(sp)
  BNE t4, zero, bb46
  JAL zero, bb47
bb46:
  ADD a0, zero, zero
  CALL findfa
  ADD s9, a0, zero
  LW t4, 176(sp)
  ADD a0, t4, zero
  CALL findfa
  ADD s0, a0, zero
  XOR s1, s9, s0
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 408(sp)
  JAL zero, bb48
bb47:
  ADD t4, zero, zero
  SB t4, 408(sp)
  JAL zero, bb48
bb48:
  LB t3, 408(sp)
  ADD t4, t3, zero
  SB t4, 416(sp)
  LB t4, 416(sp)
  BNE t4, zero, bb49
  JAL zero, bb54
bb49:
  LW t4, 264(sp)
  ADDIW s9, t4, 1
  ADD a0, s9, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI t4, zero, 1
  SW t4, 504(sp)
  ADD t4, s9, zero
  SW t4, 424(sp)
  JAL zero, bb50
bb50:
  LW t4, 424(sp)
  ADD s9, t4, zero
  LW t4, 504(sp)
  ADD s0, t4, zero
  ADD t4, s0, zero
  SW t4, 432(sp)
  LW t3, 320(sp)
  ADD t4, t3, zero
  SW t4, 496(sp)
  LB t3, 336(sp)
  ADD t4, t3, zero
  SB t4, 440(sp)
  LB t3, 384(sp)
  ADD t4, t3, zero
  SB t4, 448(sp)
  LB t3, 368(sp)
  ADD t4, t3, zero
  SB t4, 456(sp)
  LB t3, 400(sp)
  ADD t4, t3, zero
  SB t4, 464(sp)
  LB t3, 352(sp)
  ADD t4, t3, zero
  SB t4, 472(sp)
  LB t3, 416(sp)
  ADD t4, t3, zero
  SB t4, 480(sp)
  ADD t4, s9, zero
  SW t4, 488(sp)
  JAL zero, bb18
bb51:
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb52
bb52:
  LW t3, 256(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LB t3, 248(sp)
  ADD t4, t3, zero
  SB t4, 160(sp)
  LB t3, 240(sp)
  ADD t4, t3, zero
  SB t4, 152(sp)
  LW t3, 232(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LB t3, 224(sp)
  ADD t4, t3, zero
  SB t4, 136(sp)
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LB t3, 208(sp)
  ADD t4, t3, zero
  SB t4, 120(sp)
  LB t3, 200(sp)
  ADD t4, t3, zero
  SB t4, 112(sp)
  LB t3, 192(sp)
  ADD t4, t3, zero
  SB t4, 104(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  JAL zero, bb11
bb53:
  LW t3, 272(sp)
  ADD t4, t3, zero
  SW t4, 432(sp)
  LW t3, 256(sp)
  ADD t4, t3, zero
  SW t4, 496(sp)
  LB t3, 248(sp)
  ADD t4, t3, zero
  SB t4, 440(sp)
  LB t3, 240(sp)
  ADD t4, t3, zero
  SB t4, 448(sp)
  LB t3, 224(sp)
  ADD t4, t3, zero
  SB t4, 456(sp)
  LB t3, 208(sp)
  ADD t4, t3, zero
  SB t4, 464(sp)
  LB t3, 200(sp)
  ADD t4, t3, zero
  SB t4, 472(sp)
  LB t3, 192(sp)
  ADD t4, t3, zero
  SB t4, 480(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 488(sp)
  JAL zero, bb18
bb54:
  LW t3, 272(sp)
  ADD t4, t3, zero
  SW t4, 504(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 424(sp)
  JAL zero, bb50
