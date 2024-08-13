.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
kernelid:
.space 40000
b:
.space 40000000
a:
.space 40000000
.section .data



.section .text
main:   # loop depth 0
  ADDI sp, sp, -448
  SD ra, 368(sp)
  SD s0, 376(sp)
  SD s1, 384(sp)
  SD s2, 392(sp)
  SD s3, 400(sp)
  SD s4, 408(sp)
  SD s5, 416(sp)
  SD s6, 424(sp)
  SD s7, 432(sp)
  CALL getint
  LA s2, a
  ADD s1, a0, zero
  LA s0, kernelid
  ADDI s4, zero, 0
  CALL getint
  ADD s3, a0, zero
  SW s3, 208(sp)
  CALL getint
  SW a0, 100(sp)
  ADD a0, s2, zero
  LW s2, 208(sp)
  LW s3, 100(sp)
  MULW s2, s2, s3
  SW s2, 216(sp)
  CALL getarray
  ADD a0, s0, zero
  CALL getarray
  SW a0, 212(sp)
  ADDI a0, zero, 109
  CALL _sysy_starttime
  LW a0, 212(sp)
  BLT s4, a0, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  LA s0, a
  ADDI a0, zero, 116
  CALL _sysy_stoptime
  ADD a1, s0, zero
  LW a0, 216(sp)
  CALL putarray
  ADD a0, zero, zero
  LD ra, 368(sp)
  LD s0, 376(sp)
  LD s1, 384(sp)
  LD s2, 392(sp)
  LD s3, 400(sp)
  LD s4, 408(sp)
  LD s5, 416(sp)
  LD s6, 424(sp)
  LD s7, 432(sp)
  ADDI sp, sp, 448
  JALR zero, 0(ra)
bb2:   # loop depth 0
  SRAIW s3, s1, 31
  ADD a0, zero, zero
  SRLIW s3, s3, 31
  ADD s1, s1, s3
  SRAIW s0, s1, 1
  SW s0, 220(sp)
  # implict jump to bb3
bb3:   # loop depth 1
  LA s1, kernelid
  SW a0, 224(sp)
  ADD a0, zero, zero
  LW s0, 224(sp)
  SH2ADD s1, s0, s1
  LW s0, 0(s1)
  SW s0, 228(sp)
  LW s0, 228(sp)
  XORI s0, s0, 3
  SW s0, 272(sp)
  LW s0, 228(sp)
  XORI s0, s0, 1
  SW s0, 268(sp)
  LW s0, 228(sp)
  XORI s0, s0, 4
  SW s0, 264(sp)
  LW s0, 228(sp)
  XORI s0, s0, 2
  SW s0, 260(sp)
  # implict jump to bb4
bb4:   # loop depth 2
  SW a0, 184(sp)
  ADD s6, zero, zero
  LW s0, 184(sp)
  LW s1, 100(sp)
  MULW s0, s0, s1
  SW s0, 244(sp)
  LW s0, 184(sp)
  LW s1, 220(sp)
  ADDW s0, s0, s1
  SW s0, 240(sp)
  LW s0, 184(sp)
  LW s1, 220(sp)
  SUBW s0, s0, s1
  SW s0, 236(sp)
  # implict jump to bb5
bb5:   # loop depth 3
  LW s7, 236(sp)
  ADD a0, zero, zero
  LW s0, 220(sp)
  ADDW s0, s6, s0
  SW s0, 252(sp)
  LW s0, 220(sp)
  SUBW s0, s6, s0
  SW s0, 248(sp)
  # implict jump to bb6
bb6:   # loop depth 4
  LW s0, 100(sp)
  MULW s0, s7, s0
  SW s0, 256(sp)
  LW s0, 208(sp)
  SLT s0, s7, s0
  SB s0, 10(sp)
  LW s1, 248(sp)
  LB s0, 10(sp)
  XORI s0, s0, 1
  SB s0, 8(sp)
  SLT s0, s7, zero
  SB s0, 7(sp)
  # implict jump to bb7
bb7:   # loop depth 5
  SW s1, 128(sp)
  LW s0, 128(sp)
  SLT s1, s0, zero
  LW s0, 128(sp)
  LW s2, 100(sp)
  SLT s0, s0, s2
  SB s0, 11(sp)
  LB s0, 7(sp)
  OR s1, s0, s1
  LB s0, 11(sp)
  XORI s0, s0, 1
  SB s0, 6(sp)
  LB s0, 8(sp)
  OR s1, s1, s0
  LB s0, 6(sp)
  OR s1, s1, s0
  BNE s1, zero, bb67
  # implict jump to bb8
bb8:   # loop depth 5
  LA s0, a
  SD s0, 440(sp)
  LW s0, 256(sp)
  LW s1, 128(sp)
  ADDW s1, s0, s1
  LD s0, 440(sp)
  SH2ADD s1, s1, s0
  LW s1, 0(s1)
  # implict jump to bb9
bb9:   # loop depth 5
  SW s1, 132(sp)
  LW s0, 228(sp)
  BEQ s0, zero, bb54
  # implict jump to bb10
bb10:   # loop depth 5
  LW s0, 268(sp)
  BEQ s0, zero, bb47
  # implict jump to bb11
bb11:   # loop depth 5
  LW s0, 260(sp)
  BEQ s0, zero, bb44
  # implict jump to bb12
bb12:   # loop depth 5
  LW s0, 272(sp)
  BEQ s0, zero, bb37
  # implict jump to bb13
bb13:   # loop depth 5
  LW s0, 264(sp)
  BEQ s0, zero, bb30
  # implict jump to bb14
bb14:   # loop depth 5
  ADD a0, zero, zero
  # implict jump to bb15
bb15:   # loop depth 5
  LW s0, 128(sp)
  ADDIW s1, s0, 1
  LW s0, 252(sp)
  BGE s1, s0, bb17
  # implict jump to bb16
bb16:   # loop depth 5
  JAL zero, bb7
bb17:   # loop depth 4
  ADDIW s7, s7, 1
  LW s0, 240(sp)
  BGE s7, s0, bb19
  # implict jump to bb18
bb18:   # loop depth 4
  JAL zero, bb6
bb19:   # loop depth 3
  LA s7, b
  LW s0, 244(sp)
  ADDW s5, s0, s6
  ADDIW s6, s6, 1
  SH2ADD s5, s5, s7
  SW a0, 0(s5)
  LW a0, 100(sp)
  BGE s6, a0, bb21
  # implict jump to bb20
bb20:   # loop depth 3
  JAL zero, bb5
bb21:   # loop depth 2
  LW a0, 184(sp)
  ADDIW a0, a0, 1
  LW s0, 208(sp)
  BGE a0, s0, bb23
  # implict jump to bb22
bb22:   # loop depth 2
  JAL zero, bb4
bb23:   # loop depth 1
  LW a0, 216(sp)
  BLT zero, a0, bb27
  # implict jump to bb24
bb24:   # loop depth 1
  LW a0, 224(sp)
  ADDIW a0, a0, 1
  LW s0, 212(sp)
  BLT a0, s0, bb26
  # implict jump to bb25
bb25:   # loop depth 0
  JAL zero, bb1
bb26:   # loop depth 1
  JAL zero, bb3
bb27:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb28
bb28:   # loop depth 2
  LA s4, b
  LA s5, a
  ADDIW s1, a0, 1
  SH2ADD s4, a0, s4
  LW s4, 0(s4)
  SH2ADD a0, a0, s5
  SW s4, 0(a0)
  LW a0, 216(sp)
  BLT s1, a0, bb29
  JAL zero, bb24
bb29:   # loop depth 2
  ADD a0, s1, zero
  JAL zero, bb28
bb30:   # loop depth 5
  ADDI s0, zero, 1
  SW s0, 232(sp)
  ADD s1, zero, zero
  # implict jump to bb31
bb31:   # loop depth 6
  LW s0, 232(sp)
  SW s0, 24(sp)
  LW s0, 24(sp)
  LW s2, 132(sp)
  DIVW s0, s2, s0
  SW s0, 40(sp)
  SLLIW s1, s1, 1
  LW s0, 24(sp)
  DIVW s0, a0, s0
  SW s0, 20(sp)
  ADDIW s0, s1, 1
  SW s0, 48(sp)
  LW s0, 40(sp)
  SLLI s0, s0, 1
  SW s0, 344(sp)
  LW s0, 20(sp)
  SLLI s0, s0, 1
  SW s0, 276(sp)
  LW s0, 344(sp)
  SRLI s0, s0, 63
  SW s0, 348(sp)
  LW s0, 276(sp)
  SRLI s0, s0, 63
  SW s0, 332(sp)
  LW s0, 348(sp)
  LW s2, 40(sp)
  ADD s0, s2, s0
  SW s0, 356(sp)
  LW s0, 332(sp)
  LW s2, 20(sp)
  ADD s0, s2, s0
  SW s0, 340(sp)
  LW s0, 356(sp)
  ANDI s0, s0, -2
  SW s0, 352(sp)
  LW s0, 340(sp)
  ANDI s0, s0, -2
  SW s0, 336(sp)
  LW s0, 352(sp)
  LW s2, 40(sp)
  SUBW s0, s2, s0
  SW s0, 44(sp)
  LW s0, 336(sp)
  LW s2, 20(sp)
  SUBW s0, s2, s0
  SW s0, 32(sp)
  LW s0, 44(sp)
  XORI s0, s0, 1
  SW s0, 72(sp)
  LW s0, 32(sp)
  XORI s0, s0, 1
  SW s0, 68(sp)
  LW s0, 72(sp)
  SLTIU s0, s0, 1
  SB s0, 2(sp)
  LW s0, 68(sp)
  SLTIU s0, s0, 1
  SB s0, 1(sp)
  LB s0, 2(sp)
  LB s2, 1(sp)
  AND s0, s2, s0
  SB s0, 3(sp)
  LB s0, 3(sp)
  BNE s0, zero, bb36
  # implict jump to bb32
bb32:   # loop depth 6
  # implict jump to bb33
bb33:   # loop depth 6
  LUI s0, 262144
  SW s0, 200(sp)
  LW s0, 24(sp)
  SLLIW s0, s0, 1
  SW s0, 16(sp)
  LW s0, 200(sp)
  ADDIW s0, s0, 0
  SW s0, 200(sp)
  LW s0, 200(sp)
  LW s2, 16(sp)
  SLT s0, s2, s0
  SB s0, 5(sp)
  LB s0, 5(sp)
  BNE s0, zero, bb35
  # implict jump to bb34
bb34:   # loop depth 5
  ADD a0, s1, zero
  JAL zero, bb15
bb35:   # loop depth 6
  LW s0, 16(sp)
  SW s0, 232(sp)
  JAL zero, bb31
bb36:   # loop depth 6
  LW s1, 48(sp)
  JAL zero, bb33
bb37:   # loop depth 5
  ADDI s0, zero, 1
  SW s0, 328(sp)
  ADD s1, zero, zero
  # implict jump to bb38
bb38:   # loop depth 6
  LW s0, 328(sp)
  SW s0, 168(sp)
  LW s0, 168(sp)
  LW s2, 132(sp)
  DIVW s0, s2, s0
  SW s0, 180(sp)
  SLLIW s1, s1, 1
  LW s0, 168(sp)
  DIVW s0, a0, s0
  SW s0, 172(sp)
  ADDIW s0, s1, 1
  SW s0, 36(sp)
  LW s0, 180(sp)
  SLLI s0, s0, 1
  SW s0, 312(sp)
  LW s0, 172(sp)
  SLLI s0, s0, 1
  SW s0, 296(sp)
  LW s0, 312(sp)
  SRLI s0, s0, 63
  SW s0, 316(sp)
  LW s0, 296(sp)
  SRLI s0, s0, 63
  SW s0, 300(sp)
  LW s0, 316(sp)
  LW s2, 180(sp)
  ADD s0, s2, s0
  SW s0, 324(sp)
  LW s0, 300(sp)
  LW s2, 172(sp)
  ADD s0, s2, s0
  SW s0, 308(sp)
  LW s0, 324(sp)
  ANDI s0, s0, -2
  SW s0, 320(sp)
  LW s0, 308(sp)
  ANDI s0, s0, -2
  SW s0, 304(sp)
  LW s0, 320(sp)
  LW s2, 180(sp)
  SUBW s0, s2, s0
  SW s0, 136(sp)
  LW s0, 304(sp)
  LW s2, 172(sp)
  SUBW s0, s2, s0
  SW s0, 176(sp)
  LW s0, 136(sp)
  XORI s0, s0, 1
  SW s0, 64(sp)
  LW s0, 176(sp)
  XORI s0, s0, 1
  SW s0, 60(sp)
  LW s0, 64(sp)
  SLTIU s0, s0, 1
  SB s0, 14(sp)
  LW s0, 60(sp)
  SLTIU s0, s0, 1
  SB s0, 13(sp)
  LB s0, 14(sp)
  LB s2, 13(sp)
  OR s0, s2, s0
  SB s0, 15(sp)
  LB s0, 15(sp)
  BNE s0, zero, bb43
  # implict jump to bb39
bb39:   # loop depth 6
  # implict jump to bb40
bb40:   # loop depth 6
  LUI s0, 262144
  SW s0, 196(sp)
  LW s0, 168(sp)
  SLLIW s0, s0, 1
  SW s0, 28(sp)
  LW s0, 196(sp)
  ADDIW s0, s0, 0
  SW s0, 196(sp)
  LW s0, 196(sp)
  LW s2, 28(sp)
  SLT s0, s2, s0
  SB s0, 12(sp)
  LB s0, 12(sp)
  BNE s0, zero, bb42
  # implict jump to bb41
bb41:   # loop depth 5
  ADD a0, s1, zero
  JAL zero, bb15
bb42:   # loop depth 6
  LW s0, 28(sp)
  SW s0, 328(sp)
  JAL zero, bb38
bb43:   # loop depth 6
  LW s1, 36(sp)
  JAL zero, bb40
bb44:   # loop depth 5
  LW s0, 132(sp)
  BLT s0, a0, bb46
  # implict jump to bb45
bb45:   # loop depth 5
  LW a0, 132(sp)
  JAL zero, bb15
bb46:   # loop depth 5
  JAL zero, bb15
bb47:   # loop depth 5
  ADD s0, zero, zero
  SW s0, 360(sp)
  ADDI s1, zero, 1
  # implict jump to bb48
bb48:   # loop depth 6
  LW s0, 360(sp)
  SW s0, 88(sp)
  LW s0, 132(sp)
  DIVW s0, s0, s1
  SW s0, 148(sp)
  LW s0, 88(sp)
  SLLIW s0, s0, 1
  SW s0, 156(sp)
  DIVW s0, a0, s1
  SW s0, 140(sp)
  LW s0, 156(sp)
  ADDIW s0, s0, 1
  SW s0, 160(sp)
  LW s0, 148(sp)
  SLLI s0, s0, 1
  SW s0, 84(sp)
  LW s0, 140(sp)
  SLLI s0, s0, 1
  SW s0, 76(sp)
  LW s0, 84(sp)
  SRLI s0, s0, 63
  SW s0, 284(sp)
  LW s0, 76(sp)
  SRLI s0, s0, 63
  SW s0, 80(sp)
  LW s0, 284(sp)
  LW s2, 148(sp)
  ADD s0, s2, s0
  SW s0, 292(sp)
  LW s0, 80(sp)
  LW s2, 140(sp)
  ADD s0, s2, s0
  SW s0, 280(sp)
  LW s0, 292(sp)
  ANDI s0, s0, -2
  SW s0, 288(sp)
  LW s0, 280(sp)
  ANDI s0, s0, -2
  SW s0, 52(sp)
  LW s0, 288(sp)
  LW s2, 148(sp)
  SUBW s0, s2, s0
  SW s0, 152(sp)
  LW s0, 52(sp)
  LW s2, 140(sp)
  SUBW s0, s2, s0
  SW s0, 144(sp)
  LW s0, 152(sp)
  LW s2, 144(sp)
  BEQ s2, s0, bb53
  # implict jump to bb49
bb49:   # loop depth 6
  LW s0, 160(sp)
  SW s0, 364(sp)
  # implict jump to bb50
bb50:   # loop depth 6
  LUI s0, 262144
  SW s0, 192(sp)
  SLLIW s0, s1, 1
  SW s0, 164(sp)
  LW s0, 192(sp)
  ADDIW s0, s0, 0
  SW s0, 192(sp)
  LW s1, 364(sp)
  LW s0, 192(sp)
  LW s2, 164(sp)
  SLT s0, s2, s0
  SB s0, 4(sp)
  LB s0, 4(sp)
  BNE s0, zero, bb52
  # implict jump to bb51
bb51:   # loop depth 5
  ADD a0, s1, zero
  JAL zero, bb15
bb52:   # loop depth 6
  SW s1, 360(sp)
  LW s1, 164(sp)
  JAL zero, bb48
bb53:   # loop depth 6
  LW s0, 156(sp)
  SW s0, 364(sp)
  JAL zero, bb50
bb54:   # loop depth 5
  LUI s0, 262144
  SW s0, 188(sp)
  LW s0, 132(sp)
  ADDW a0, a0, s0
  LW s0, 188(sp)
  ADDIW s0, s0, 0
  SW s0, 188(sp)
  LW s0, 188(sp)
  SLT s1, s0, a0
  BNE s1, zero, bb63
  # implict jump to bb55
bb55:   # loop depth 5
  # implict jump to bb56
bb56:   # loop depth 5
  BLT a0, zero, bb59
  # implict jump to bb57
bb57:   # loop depth 5
  # implict jump to bb58
bb58:   # loop depth 5
  JAL zero, bb15
bb59:   # loop depth 5
  # implict jump to bb60
bb60:   # loop depth 6
  LUI s1, 262144
  ADDIW s1, s1, 0
  ADDW a0, a0, s1
  BLT a0, zero, bb62
  # implict jump to bb61
bb61:   # loop depth 5
  JAL zero, bb58
bb62:   # loop depth 6
  JAL zero, bb60
bb63:   # loop depth 5
  # implict jump to bb64
bb64:   # loop depth 6
  LUI s1, 786432
  LUI s0, 262144
  SW s0, 204(sp)
  ADDIW s1, s1, 0
  LW s0, 204(sp)
  ADDIW s0, s0, 0
  SW s0, 204(sp)
  ADDW a0, a0, s1
  LW s0, 204(sp)
  SLT s1, s0, a0
  BNE s1, zero, bb66
  # implict jump to bb65
bb65:   # loop depth 5
  JAL zero, bb56
bb66:   # loop depth 6
  JAL zero, bb64
bb67:   # loop depth 5
  ADD s1, zero, zero
  JAL zero, bb9
