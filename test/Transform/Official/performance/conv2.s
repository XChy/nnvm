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
  SD ra, 344(sp)
  SD s0, 352(sp)
  SD s1, 360(sp)
  SD s2, 368(sp)
  SD s3, 376(sp)
  SD s4, 384(sp)
  SD s5, 392(sp)
  SD s6, 400(sp)
  SD s7, 408(sp)
  CALL getint
  LA s0, a
  ADD s3, a0, zero
  LA s1, kernelid
  ADDI s4, zero, 0
  CALL getint
  ADD s2, a0, zero
  SW s2, 184(sp)
  CALL getint
  SW a0, 244(sp)
  ADD a0, s0, zero
  LW s0, 184(sp)
  LW s2, 244(sp)
  MULW s0, s0, s2
  SW s0, 192(sp)
  CALL getarray
  ADD a0, s1, zero
  CALL getarray
  SW a0, 188(sp)
  ADDI a0, zero, 109
  CALL _sysy_starttime
  LW a0, 188(sp)
  BLT s4, a0, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  LA s0, a
  ADDI a0, zero, 116
  CALL _sysy_stoptime
  ADD a1, s0, zero
  LW a0, 192(sp)
  CALL putarray
  ADD a0, zero, zero
  LD ra, 344(sp)
  LD s0, 352(sp)
  LD s1, 360(sp)
  LD s2, 368(sp)
  LD s3, 376(sp)
  LD s4, 384(sp)
  LD s5, 392(sp)
  LD s6, 400(sp)
  LD s7, 408(sp)
  ADDI sp, sp, 416
  JALR zero, 0(ra)
bb2:   # loop depth 0
  SRAIW s1, s3, 31
  ADD a0, zero, zero
  SRLIW s1, s1, 31
  ADD s1, s3, s1
  SRAIW s0, s1, 1
  SW s0, 196(sp)
  # implict jump to bb3
bb3:   # loop depth 1
  LA s1, kernelid
  SW a0, 200(sp)
  ADD a0, zero, zero
  LW s0, 200(sp)
  SH2ADD s1, s0, s1
  LW s1, 0(s1)
  XORI s5, s1, 3
  XORI s4, s1, 1
  XORI s3, s1, 4
  XORI s2, s1, 2
  SLTIU s0, s5, 1
  SB s0, 0(sp)
  SLTIU s0, s4, 1
  SB s0, 12(sp)
  SLTIU s0, s1, 1
  SB s0, 11(sp)
  SLTIU s0, s3, 1
  SB s0, 10(sp)
  SLTIU s0, s2, 1
  SB s0, 9(sp)
  # implict jump to bb4
bb4:   # loop depth 2
  SW a0, 204(sp)
  ADD s6, zero, zero
  LW s0, 204(sp)
  LW s1, 244(sp)
  MULW s0, s0, s1
  SW s0, 216(sp)
  LW s0, 204(sp)
  LW s1, 196(sp)
  ADDW s0, s0, s1
  SW s0, 212(sp)
  LW s0, 204(sp)
  LW s1, 196(sp)
  SUBW s0, s0, s1
  SW s0, 160(sp)
  # implict jump to bb5
bb5:   # loop depth 3
  LW s7, 160(sp)
  ADD a0, zero, zero
  LW s0, 196(sp)
  ADDW s0, s6, s0
  SW s0, 224(sp)
  LW s0, 196(sp)
  SUBW s0, s6, s0
  SW s0, 220(sp)
  # implict jump to bb6
bb6:   # loop depth 4
  LW s0, 244(sp)
  MULW s0, s7, s0
  SW s0, 228(sp)
  LW s0, 184(sp)
  SLT s4, s7, s0
  LW s5, 220(sp)
  XORI s0, s4, 1
  SB s0, 20(sp)
  SLT s0, s7, zero
  SB s0, 21(sp)
  # implict jump to bb7
bb7:   # loop depth 5
  SLT s1, s5, zero
  LW s0, 244(sp)
  SLT s4, s5, s0
  LB s0, 21(sp)
  OR s1, s0, s1
  XORI s4, s4, 1
  LB s0, 20(sp)
  OR s1, s1, s0
  OR s1, s1, s4
  BNE s1, zero, bb67
  # implict jump to bb8
bb8:   # loop depth 5
  LA s4, a
  LW s0, 228(sp)
  ADDW s1, s0, s5
  SH2ADD s1, s1, s4
  LW s4, 0(s1)
  # implict jump to bb9
bb9:   # loop depth 5
  LB s0, 11(sp)
  BNE s0, zero, bb54
  # implict jump to bb10
bb10:   # loop depth 5
  LB s0, 12(sp)
  BNE s0, zero, bb47
  # implict jump to bb11
bb11:   # loop depth 5
  LB s0, 9(sp)
  BNE s0, zero, bb44
  # implict jump to bb12
bb12:   # loop depth 5
  LB s0, 0(sp)
  BNE s0, zero, bb37
  # implict jump to bb13
bb13:   # loop depth 5
  LB s0, 10(sp)
  BNE s0, zero, bb30
  # implict jump to bb14
bb14:   # loop depth 5
  ADD a0, zero, zero
  # implict jump to bb15
bb15:   # loop depth 5
  ADDIW s5, s5, 1
  LW s0, 224(sp)
  SLT s4, s5, s0
  XORI s4, s4, 1
  BNE s4, zero, bb17
  # implict jump to bb16
bb16:   # loop depth 5
  JAL zero, bb7
bb17:   # loop depth 4
  ADDIW s7, s7, 1
  LW s0, 212(sp)
  SLT s4, s7, s0
  XORI s4, s4, 1
  BNE s4, zero, bb19
  # implict jump to bb18
bb18:   # loop depth 4
  JAL zero, bb6
bb19:   # loop depth 3
  LA s5, b
  ADDIW s1, s6, 1
  LW s0, 216(sp)
  ADDW s4, s0, s6
  LW s0, 244(sp)
  SLT s6, s1, s0
  SH2ADD s5, s4, s5
  XORI s4, s6, 1
  SW a0, 0(s5)
  BNE s4, zero, bb21
  # implict jump to bb20
bb20:   # loop depth 3
  ADD s6, s1, zero
  JAL zero, bb5
bb21:   # loop depth 2
  LW a0, 204(sp)
  ADDIW a0, a0, 1
  LW s0, 184(sp)
  SLT s1, a0, s0
  XORI s1, s1, 1
  BNE s1, zero, bb23
  # implict jump to bb22
bb22:   # loop depth 2
  JAL zero, bb4
bb23:   # loop depth 1
  LW a0, 192(sp)
  BLT zero, a0, bb27
  # implict jump to bb24
bb24:   # loop depth 1
  LW a0, 200(sp)
  ADDIW a0, a0, 1
  LW s0, 188(sp)
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
  LA s2, b
  LA s3, a
  ADDIW s1, a0, 1
  SH2ADD s2, a0, s2
  LW s2, 0(s2)
  SH2ADD a0, a0, s3
  SW s2, 0(a0)
  LW a0, 192(sp)
  BLT s1, a0, bb29
  JAL zero, bb24
bb29:   # loop depth 2
  ADD a0, s1, zero
  JAL zero, bb28
bb30:   # loop depth 5
  ADDI s0, zero, 1
  SW s0, 164(sp)
  ADD s1, zero, zero
  # implict jump to bb31
bb31:   # loop depth 6
  LW s0, 164(sp)
  SW s0, 124(sp)
  LW s0, 124(sp)
  DIVW s0, s4, s0
  SW s0, 56(sp)
  SLLIW s1, s1, 1
  LW s0, 124(sp)
  DIVW s0, a0, s0
  SW s0, 76(sp)
  ADDIW s0, s1, 1
  SW s0, 32(sp)
  LW s0, 56(sp)
  SLLI s0, s0, 1
  SW s0, 320(sp)
  LW s0, 76(sp)
  SLLI s0, s0, 1
  SW s0, 304(sp)
  LW s0, 320(sp)
  SRLI s0, s0, 63
  SW s0, 324(sp)
  LW s0, 304(sp)
  SRLI s0, s0, 63
  SW s0, 308(sp)
  LW s0, 324(sp)
  LW s2, 56(sp)
  ADD s0, s2, s0
  SW s0, 332(sp)
  LW s0, 308(sp)
  LW s2, 76(sp)
  ADD s0, s2, s0
  SW s0, 316(sp)
  LW s0, 332(sp)
  ANDI s0, s0, -2
  SW s0, 328(sp)
  LW s0, 316(sp)
  ANDI s0, s0, -2
  SW s0, 312(sp)
  LW s0, 328(sp)
  LW s2, 56(sp)
  SUBW s0, s2, s0
  SW s0, 48(sp)
  LW s0, 312(sp)
  LW s2, 76(sp)
  SUBW s0, s2, s0
  SW s0, 72(sp)
  LW s0, 48(sp)
  XORI s0, s0, 1
  SW s0, 24(sp)
  LW s0, 72(sp)
  XORI s0, s0, 1
  SW s0, 36(sp)
  LW s0, 24(sp)
  SLTIU s0, s0, 1
  SB s0, 6(sp)
  LW s0, 36(sp)
  SLTIU s0, s0, 1
  SB s0, 4(sp)
  LB s0, 6(sp)
  LB s2, 4(sp)
  AND s0, s2, s0
  SB s0, 7(sp)
  LB s0, 7(sp)
  BNE s0, zero, bb36
  # implict jump to bb32
bb32:   # loop depth 6
  # implict jump to bb33
bb33:   # loop depth 6
  LUI s0, 262144
  SW s0, 180(sp)
  LW s0, 124(sp)
  SLLIW s0, s0, 1
  SW s0, 28(sp)
  LW s0, 180(sp)
  ADDIW s0, s0, 0
  SW s0, 180(sp)
  LW s0, 180(sp)
  LW s2, 28(sp)
  SLT s0, s2, s0
  SB s0, 13(sp)
  LB s0, 13(sp)
  BNE s0, zero, bb35
  # implict jump to bb34
bb34:   # loop depth 5
  ADD a0, s1, zero
  JAL zero, bb15
bb35:   # loop depth 6
  LW s0, 28(sp)
  SW s0, 164(sp)
  JAL zero, bb31
bb36:   # loop depth 6
  LW s1, 32(sp)
  JAL zero, bb33
bb37:   # loop depth 5
  ADDI s0, zero, 1
  SW s0, 208(sp)
  ADD s1, zero, zero
  # implict jump to bb38
bb38:   # loop depth 6
  LW s0, 208(sp)
  SW s0, 132(sp)
  LW s0, 132(sp)
  DIVW s0, s4, s0
  SW s0, 144(sp)
  SLLIW s1, s1, 1
  LW s0, 132(sp)
  DIVW s0, a0, s0
  SW s0, 136(sp)
  ADDIW s0, s1, 1
  SW s0, 152(sp)
  LW s0, 144(sp)
  SLLI s0, s0, 1
  SW s0, 288(sp)
  LW s0, 136(sp)
  SLLI s0, s0, 1
  SW s0, 68(sp)
  LW s0, 288(sp)
  SRLI s0, s0, 63
  SW s0, 292(sp)
  LW s0, 68(sp)
  SRLI s0, s0, 63
  SW s0, 276(sp)
  LW s0, 292(sp)
  LW s2, 144(sp)
  ADD s0, s2, s0
  SW s0, 256(sp)
  LW s0, 276(sp)
  LW s2, 136(sp)
  ADD s0, s2, s0
  SW s0, 284(sp)
  LW s0, 256(sp)
  ANDI s0, s0, -2
  SW s0, 296(sp)
  LW s0, 284(sp)
  ANDI s0, s0, -2
  SW s0, 280(sp)
  LW s0, 296(sp)
  LW s2, 144(sp)
  SUBW s0, s2, s0
  SW s0, 148(sp)
  LW s0, 280(sp)
  LW s2, 136(sp)
  SUBW s0, s2, s0
  SW s0, 140(sp)
  LW s0, 148(sp)
  XORI s0, s0, 1
  SW s0, 52(sp)
  LW s0, 140(sp)
  XORI s0, s0, 1
  SW s0, 80(sp)
  LW s0, 52(sp)
  SLTIU s0, s0, 1
  SB s0, 3(sp)
  LW s0, 80(sp)
  SLTIU s0, s0, 1
  SB s0, 5(sp)
  LB s0, 3(sp)
  LB s2, 5(sp)
  OR s0, s2, s0
  SB s0, 2(sp)
  LB s0, 2(sp)
  BNE s0, zero, bb43
  # implict jump to bb39
bb39:   # loop depth 6
  # implict jump to bb40
bb40:   # loop depth 6
  LUI s0, 262144
  SW s0, 176(sp)
  LW s0, 132(sp)
  SLLIW s0, s0, 1
  SW s0, 156(sp)
  LW s0, 176(sp)
  ADDIW s0, s0, 0
  SW s0, 176(sp)
  LW s0, 176(sp)
  LW s2, 156(sp)
  SLT s0, s2, s0
  SB s0, 1(sp)
  LB s0, 1(sp)
  BNE s0, zero, bb42
  # implict jump to bb41
bb41:   # loop depth 5
  ADD a0, s1, zero
  JAL zero, bb15
bb42:   # loop depth 6
  LW s0, 156(sp)
  SW s0, 208(sp)
  JAL zero, bb38
bb43:   # loop depth 6
  LW s1, 152(sp)
  JAL zero, bb40
bb44:   # loop depth 5
  BLT s4, a0, bb46
  # implict jump to bb45
bb45:   # loop depth 5
  ADD a0, s4, zero
  JAL zero, bb15
bb46:   # loop depth 5
  JAL zero, bb15
bb47:   # loop depth 5
  ADD s0, zero, zero
  SW s0, 336(sp)
  ADDI s1, zero, 1
  # implict jump to bb48
bb48:   # loop depth 6
  LW s0, 336(sp)
  SW s0, 100(sp)
  DIVW s0, s4, s1
  SW s0, 112(sp)
  LW s0, 100(sp)
  SLLIW s0, s0, 1
  SW s0, 120(sp)
  DIVW s0, a0, s1
  SW s0, 104(sp)
  LW s0, 120(sp)
  ADDIW s0, s0, 1
  SW s0, 84(sp)
  LW s0, 112(sp)
  SLLI s0, s0, 1
  SW s0, 260(sp)
  LW s0, 104(sp)
  SLLI s0, s0, 1
  SW s0, 60(sp)
  LW s0, 260(sp)
  SRLI s0, s0, 63
  SW s0, 264(sp)
  LW s0, 60(sp)
  SRLI s0, s0, 63
  SW s0, 64(sp)
  LW s0, 264(sp)
  LW s2, 112(sp)
  ADD s0, s2, s0
  SW s0, 272(sp)
  LW s0, 64(sp)
  LW s2, 104(sp)
  ADD s0, s2, s0
  SW s0, 300(sp)
  LW s0, 272(sp)
  ANDI s0, s0, -2
  SW s0, 268(sp)
  LW s0, 300(sp)
  ANDI s0, s0, -2
  SW s0, 44(sp)
  LW s0, 268(sp)
  LW s2, 112(sp)
  SUBW s0, s2, s0
  SW s0, 116(sp)
  LW s0, 44(sp)
  LW s2, 104(sp)
  SUBW s0, s2, s0
  SW s0, 108(sp)
  LW s0, 116(sp)
  LW s2, 108(sp)
  XOR s0, s2, s0
  SW s0, 40(sp)
  LW s0, 40(sp)
  SLTIU s0, s0, 1
  SB s0, 14(sp)
  LB s0, 14(sp)
  BNE s0, zero, bb53
  # implict jump to bb49
bb49:   # loop depth 6
  LW s0, 84(sp)
  SW s0, 340(sp)
  # implict jump to bb50
bb50:   # loop depth 6
  LUI s0, 262144
  SW s0, 172(sp)
  SLLIW s0, s1, 1
  SW s0, 128(sp)
  LW s0, 172(sp)
  ADDIW s0, s0, 0
  SW s0, 172(sp)
  LW s1, 340(sp)
  LW s0, 172(sp)
  LW s2, 128(sp)
  SLT s0, s2, s0
  SB s0, 8(sp)
  LB s0, 8(sp)
  BNE s0, zero, bb52
  # implict jump to bb51
bb51:   # loop depth 5
  ADD a0, s1, zero
  JAL zero, bb15
bb52:   # loop depth 6
  SW s1, 336(sp)
  LW s1, 128(sp)
  JAL zero, bb48
bb53:   # loop depth 6
  LW s0, 120(sp)
  SW s0, 340(sp)
  JAL zero, bb50
bb54:   # loop depth 5
  LUI s0, 262144
  SW s0, 168(sp)
  ADDW a0, a0, s4
  LW s0, 168(sp)
  ADDIW s0, s0, 0
  SW s0, 168(sp)
  LW s0, 168(sp)
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
  LUI s4, 786432
  LUI s1, 262144
  ADDIW s4, s4, 0
  ADDIW s1, s1, 0
  ADDW a0, a0, s4
  SLT s1, s1, a0
  BNE s1, zero, bb66
  # implict jump to bb65
bb65:   # loop depth 5
  JAL zero, bb56
bb66:   # loop depth 6
  JAL zero, bb64
bb67:   # loop depth 5
  ADD s4, zero, zero
  JAL zero, bb9
