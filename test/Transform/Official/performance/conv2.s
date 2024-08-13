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
  ADDI sp, sp, -416
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
  CALL getint
  LA s1, a
  ADD s3, a0, zero
  LA s2, kernelid
  ADDI s4, zero, 0
  CALL getint
  ADD s0, a0, zero
  SW s0, 176(sp)
  CALL getint
  SW a0, 180(sp)
  ADD a0, s1, zero
  LW s0, 180(sp)
  LW s1, 176(sp)
  MULW s0, s1, s0
  SW s0, 188(sp)
  CALL getarray
  ADD a0, s2, zero
  CALL getarray
  SW a0, 184(sp)
  ADDI a0, zero, 109
  CALL _sysy_starttime
  LW a0, 184(sp)
  BLT s4, a0, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  LA s0, a
  ADDI a0, zero, 116
  CALL _sysy_stoptime
  ADD a1, s0, zero
  LW a0, 188(sp)
  CALL putarray
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
  ADDI sp, sp, 416
  JALR zero, 0(ra)
bb2:   # loop depth 0
  SRAIW s2, s3, 31
  ADD a0, zero, zero
  SRLIW s2, s2, 31
  ADD s2, s3, s2
  SRAIW s0, s2, 1
  SW s0, 192(sp)
  # implict jump to bb3
bb3:   # loop depth 1
  LA s3, kernelid
  SW a0, 196(sp)
  ADD a0, zero, zero
  LW s0, 196(sp)
  SH2ADD s3, s0, s3
  LW s0, 0(s3)
  SW s0, 224(sp)
  LW s0, 224(sp)
  SLTIU s0, s0, 1
  SB s0, 1(sp)
  # implict jump to bb4
bb4:   # loop depth 2
  SW a0, 156(sp)
  ADD s5, zero, zero
  LW a0, 156(sp)
  LW s0, 180(sp)
  MULW a0, a0, s0
  SW a0, 212(sp)
  LW a0, 156(sp)
  LW s0, 192(sp)
  ADDW a0, a0, s0
  SW a0, 208(sp)
  LW a0, 156(sp)
  LW s0, 192(sp)
  SUBW a0, a0, s0
  SW a0, 204(sp)
  # implict jump to bb5
bb5:   # loop depth 3
  SW s5, 84(sp)
  LW s9, 204(sp)
  ADD a0, zero, zero
  LW s0, 192(sp)
  LW s1, 84(sp)
  ADDW s0, s1, s0
  SW s0, 220(sp)
  LW s0, 192(sp)
  LW s1, 84(sp)
  SUBW s0, s1, s0
  SW s0, 216(sp)
  # implict jump to bb6
bb6:   # loop depth 4
  LW s0, 176(sp)
  SLT s7, s9, s0
  LW s8, 216(sp)
  XORI s0, s7, 1
  SB s0, 0(sp)
  SLT s0, s9, zero
  SB s0, 8(sp)
  # implict jump to bb7
bb7:   # loop depth 5
  SLT s6, s8, zero
  LW s0, 180(sp)
  SLT s7, s8, s0
  LB s0, 8(sp)
  OR s6, s0, s6
  XORI s7, s7, 1
  LB s0, 0(sp)
  OR s6, s6, s0
  OR s6, s6, s7
  BNE s6, zero, bb67
  # implict jump to bb8
bb8:   # loop depth 5
  LW s0, 180(sp)
  MULW s6, s9, s0
  LA s7, a
  ADDW s6, s6, s8
  SH2ADD s6, s6, s7
  LW s7, 0(s6)
  # implict jump to bb9
bb9:   # loop depth 5
  LB s0, 1(sp)
  BNE s0, zero, bb54
  # implict jump to bb10
bb10:   # loop depth 5
  LW s0, 224(sp)
  XORI s6, s0, 1
  SLTIU s6, s6, 1
  BNE s6, zero, bb47
  # implict jump to bb11
bb11:   # loop depth 5
  LW s0, 224(sp)
  XORI s6, s0, 2
  SLTIU s6, s6, 1
  BNE s6, zero, bb44
  # implict jump to bb12
bb12:   # loop depth 5
  LW s0, 224(sp)
  XORI s6, s0, 3
  SLTIU s6, s6, 1
  BNE s6, zero, bb37
  # implict jump to bb13
bb13:   # loop depth 5
  LW s0, 224(sp)
  XORI s6, s0, 4
  SLTIU s6, s6, 1
  BNE s6, zero, bb30
  # implict jump to bb14
bb14:   # loop depth 5
  ADD a0, zero, zero
  # implict jump to bb15
bb15:   # loop depth 5
  ADDIW s8, s8, 1
  LW s0, 220(sp)
  SLT s7, s8, s0
  XORI s7, s7, 1
  BNE s7, zero, bb17
  # implict jump to bb16
bb16:   # loop depth 5
  JAL zero, bb7
bb17:   # loop depth 4
  ADDIW s9, s9, 1
  LW s0, 208(sp)
  SLT s7, s9, s0
  XORI s7, s7, 1
  BNE s7, zero, bb19
  # implict jump to bb18
bb18:   # loop depth 4
  JAL zero, bb6
bb19:   # loop depth 3
  LA s7, b
  LW s0, 84(sp)
  ADDIW s5, s0, 1
  LW s0, 212(sp)
  LW s1, 84(sp)
  ADDW s6, s0, s1
  LW s0, 180(sp)
  SLT s8, s5, s0
  SH2ADD s7, s6, s7
  XORI s6, s8, 1
  SW a0, 0(s7)
  BNE s6, zero, bb21
  # implict jump to bb20
bb20:   # loop depth 3
  JAL zero, bb5
bb21:   # loop depth 2
  LW a0, 156(sp)
  ADDIW a0, a0, 1
  LW s0, 176(sp)
  SLT s3, a0, s0
  XORI s3, s3, 1
  BNE s3, zero, bb23
  # implict jump to bb22
bb22:   # loop depth 2
  JAL zero, bb4
bb23:   # loop depth 1
  LW a0, 188(sp)
  BLT zero, a0, bb27
  # implict jump to bb24
bb24:   # loop depth 1
  LW a0, 196(sp)
  ADDIW a0, a0, 1
  LW s0, 184(sp)
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
  ADDIW s3, a0, 1
  SH2ADD s4, a0, s4
  LW s4, 0(s4)
  SH2ADD a0, a0, s5
  SW s4, 0(a0)
  LW a0, 188(sp)
  BLT s3, a0, bb29
  JAL zero, bb24
bb29:   # loop depth 2
  ADD a0, s3, zero
  JAL zero, bb28
bb30:   # loop depth 5
  ADDI s0, zero, 1
  SW s0, 324(sp)
  ADD s6, zero, zero
  # implict jump to bb31
bb31:   # loop depth 6
  LW s0, 324(sp)
  SW s0, 152(sp)
  LW s0, 152(sp)
  DIVW s0, s7, s0
  SW s0, 28(sp)
  SLLIW s6, s6, 1
  LW s0, 152(sp)
  DIVW s0, a0, s0
  SW s0, 120(sp)
  ADDIW s0, s6, 1
  SW s0, 16(sp)
  LW s0, 28(sp)
  SLLI s0, s0, 1
  SW s0, 300(sp)
  LW s0, 120(sp)
  SLLI s0, s0, 1
  SW s0, 284(sp)
  LW s0, 300(sp)
  SRLI s0, s0, 63
  SW s0, 304(sp)
  LW s0, 284(sp)
  SRLI s0, s0, 63
  SW s0, 288(sp)
  LW s0, 304(sp)
  LW s1, 28(sp)
  ADD s0, s1, s0
  SW s0, 312(sp)
  LW s0, 288(sp)
  LW s1, 120(sp)
  ADD s0, s1, s0
  SW s0, 296(sp)
  LW s0, 312(sp)
  ANDI s0, s0, -2
  SW s0, 308(sp)
  LW s0, 296(sp)
  ANDI s0, s0, -2
  SW s0, 292(sp)
  LW s0, 308(sp)
  LW s1, 28(sp)
  SUBW s0, s1, s0
  SW s0, 24(sp)
  LW s0, 292(sp)
  LW s1, 120(sp)
  SUBW s0, s1, s0
  SW s0, 32(sp)
  LW s0, 24(sp)
  XORI s0, s0, 1
  SW s0, 56(sp)
  LW s0, 32(sp)
  XORI s0, s0, 1
  SW s0, 52(sp)
  LW s0, 56(sp)
  SLTIU s0, s0, 1
  SB s0, 4(sp)
  LW s0, 52(sp)
  SLTIU s0, s0, 1
  SB s0, 15(sp)
  LB s0, 4(sp)
  LB s1, 15(sp)
  AND s0, s1, s0
  SB s0, 3(sp)
  LB s0, 3(sp)
  BNE s0, zero, bb36
  # implict jump to bb32
bb32:   # loop depth 6
  # implict jump to bb33
bb33:   # loop depth 6
  LUI s0, 262144
  SW s0, 172(sp)
  LW s0, 152(sp)
  SLLIW s0, s0, 1
  SW s0, 36(sp)
  LW s0, 172(sp)
  ADDIW s0, s0, 0
  SW s0, 172(sp)
  LW s0, 172(sp)
  LW s1, 36(sp)
  SLT s0, s1, s0
  SB s0, 11(sp)
  LB s0, 11(sp)
  BNE s0, zero, bb35
  # implict jump to bb34
bb34:   # loop depth 5
  ADD a0, s6, zero
  JAL zero, bb15
bb35:   # loop depth 6
  LW s0, 36(sp)
  SW s0, 324(sp)
  JAL zero, bb31
bb36:   # loop depth 6
  LW s6, 16(sp)
  JAL zero, bb33
bb37:   # loop depth 5
  ADDI s0, zero, 1
  SW s0, 244(sp)
  ADD s6, zero, zero
  # implict jump to bb38
bb38:   # loop depth 6
  LW s0, 244(sp)
  SW s0, 124(sp)
  LW s0, 124(sp)
  DIVW s0, s7, s0
  SW s0, 136(sp)
  SLLIW s6, s6, 1
  LW s0, 124(sp)
  DIVW s0, a0, s0
  SW s0, 128(sp)
  ADDIW s0, s6, 1
  SW s0, 144(sp)
  LW s0, 136(sp)
  SLLI s0, s0, 1
  SW s0, 268(sp)
  LW s0, 128(sp)
  SLLI s0, s0, 1
  SW s0, 252(sp)
  LW s0, 268(sp)
  SRLI s0, s0, 63
  SW s0, 272(sp)
  LW s0, 252(sp)
  SRLI s0, s0, 63
  SW s0, 256(sp)
  LW s0, 272(sp)
  LW s1, 136(sp)
  ADD s0, s1, s0
  SW s0, 280(sp)
  LW s0, 256(sp)
  LW s1, 128(sp)
  ADD s0, s1, s0
  SW s0, 264(sp)
  LW s0, 280(sp)
  ANDI s0, s0, -2
  SW s0, 276(sp)
  LW s0, 264(sp)
  ANDI s0, s0, -2
  SW s0, 260(sp)
  LW s0, 276(sp)
  LW s1, 136(sp)
  SUBW s0, s1, s0
  SW s0, 140(sp)
  LW s0, 260(sp)
  LW s1, 128(sp)
  SUBW s0, s1, s0
  SW s0, 132(sp)
  LW s0, 140(sp)
  XORI s0, s0, 1
  SW s0, 48(sp)
  LW s0, 132(sp)
  XORI s0, s0, 1
  SW s0, 44(sp)
  LW s0, 48(sp)
  SLTIU s0, s0, 1
  SB s0, 6(sp)
  LW s0, 44(sp)
  SLTIU s0, s0, 1
  SB s0, 2(sp)
  LB s0, 6(sp)
  LB s1, 2(sp)
  OR s0, s1, s0
  SB s0, 7(sp)
  LB s0, 7(sp)
  BNE s0, zero, bb43
  # implict jump to bb39
bb39:   # loop depth 6
  # implict jump to bb40
bb40:   # loop depth 6
  LUI s0, 262144
  SW s0, 168(sp)
  LW s0, 124(sp)
  SLLIW s0, s0, 1
  SW s0, 148(sp)
  LW s0, 168(sp)
  ADDIW s0, s0, 0
  SW s0, 168(sp)
  LW s0, 168(sp)
  LW s1, 148(sp)
  SLT s0, s1, s0
  SB s0, 12(sp)
  LB s0, 12(sp)
  BNE s0, zero, bb42
  # implict jump to bb41
bb41:   # loop depth 5
  ADD a0, s6, zero
  JAL zero, bb15
bb42:   # loop depth 6
  LW s0, 148(sp)
  SW s0, 244(sp)
  JAL zero, bb38
bb43:   # loop depth 6
  LW s6, 144(sp)
  JAL zero, bb40
bb44:   # loop depth 5
  BLT s7, a0, bb46
  # implict jump to bb45
bb45:   # loop depth 5
  ADD a0, s7, zero
  JAL zero, bb15
bb46:   # loop depth 5
  JAL zero, bb15
bb47:   # loop depth 5
  ADD s0, zero, zero
  SW s0, 316(sp)
  ADDI s6, zero, 1
  # implict jump to bb48
bb48:   # loop depth 6
  LW s0, 316(sp)
  SW s0, 92(sp)
  DIVW s0, s7, s6
  SW s0, 104(sp)
  LW s0, 92(sp)
  SLLIW s0, s0, 1
  SW s0, 112(sp)
  DIVW s0, a0, s6
  SW s0, 96(sp)
  LW s0, 112(sp)
  ADDIW s0, s0, 1
  SW s0, 116(sp)
  LW s0, 104(sp)
  SLLI s0, s0, 1
  SW s0, 40(sp)
  LW s0, 96(sp)
  SLLI s0, s0, 1
  SW s0, 60(sp)
  LW s0, 40(sp)
  SRLI s0, s0, 63
  SW s0, 248(sp)
  LW s0, 60(sp)
  SRLI s0, s0, 63
  SW s0, 64(sp)
  LW s0, 248(sp)
  LW s1, 104(sp)
  ADD s0, s1, s0
  SW s0, 76(sp)
  LW s0, 64(sp)
  LW s1, 96(sp)
  ADD s0, s1, s0
  SW s0, 72(sp)
  LW s0, 76(sp)
  ANDI s0, s0, -2
  SW s0, 200(sp)
  LW s0, 72(sp)
  ANDI s0, s0, -2
  SW s0, 68(sp)
  LW s0, 200(sp)
  LW s1, 104(sp)
  SUBW s0, s1, s0
  SW s0, 108(sp)
  LW s0, 68(sp)
  LW s1, 96(sp)
  SUBW s0, s1, s0
  SW s0, 100(sp)
  LW s0, 108(sp)
  LW s1, 100(sp)
  XOR s0, s1, s0
  SW s0, 20(sp)
  LW s0, 20(sp)
  SLTIU s0, s0, 1
  SB s0, 5(sp)
  LB s0, 5(sp)
  BNE s0, zero, bb53
  # implict jump to bb49
bb49:   # loop depth 6
  LW s0, 116(sp)
  SW s0, 320(sp)
  # implict jump to bb50
bb50:   # loop depth 6
  LUI s0, 262144
  SW s0, 164(sp)
  SLLIW s0, s6, 1
  SW s0, 80(sp)
  LW s0, 164(sp)
  ADDIW s0, s0, 0
  SW s0, 164(sp)
  LW s6, 320(sp)
  LW s0, 164(sp)
  LW s1, 80(sp)
  SLT s0, s1, s0
  SB s0, 10(sp)
  LB s0, 10(sp)
  BNE s0, zero, bb52
  # implict jump to bb51
bb51:   # loop depth 5
  ADD a0, s6, zero
  JAL zero, bb15
bb52:   # loop depth 6
  SW s6, 316(sp)
  LW s6, 80(sp)
  JAL zero, bb48
bb53:   # loop depth 6
  LW s0, 112(sp)
  SW s0, 320(sp)
  JAL zero, bb50
bb54:   # loop depth 5
  LUI s0, 262144
  SW s0, 160(sp)
  ADDW a0, a0, s7
  LW s0, 160(sp)
  ADDIW s0, s0, 0
  SW s0, 160(sp)
  LW s0, 160(sp)
  SLT s6, s0, a0
  BNE s6, zero, bb63
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
  LUI s6, 262144
  ADDIW s6, s6, 0
  ADDW a0, a0, s6
  BLT a0, zero, bb62
  # implict jump to bb61
bb61:   # loop depth 5
  JAL zero, bb58
bb62:   # loop depth 6
  JAL zero, bb60
bb63:   # loop depth 5
  # implict jump to bb64
bb64:   # loop depth 6
  LUI s7, 786432
  LUI s6, 262144
  ADDIW s7, s7, 0
  ADDIW s6, s6, 0
  ADDW a0, a0, s7
  SLT s6, s6, a0
  BNE s6, zero, bb66
  # implict jump to bb65
bb65:   # loop depth 5
  JAL zero, bb56
bb66:   # loop depth 6
  JAL zero, bb64
bb67:   # loop depth 5
  ADD s7, zero, zero
  JAL zero, bb9
