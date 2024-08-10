.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.global radixSort
.section .bss

a:
.space 120000040
.section .data
ans:
.word 0x00000000

.section .text
main:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  LA a0, a
  LA s0, a
  CALL getarray
  ADD s2, a0, zero
  ADDI a0, zero, 90
  CALL _sysy_starttime
  ADD a3, s2, zero
  ADD a2, zero, zero
  ADD a1, s0, zero
  ADDI a0, zero, 8
  CALL radixSort
  BLT zero, s2, bb4
  # implict jump to bb1
bb1:   # loop depth 0
  LA a0, ans
  LW a0, 0(a0)
  BLT a0, zero, bb3
  # implict jump to bb2
bb2:   # loop depth 0
  LA s0, ans
  ADDI a0, zero, 102
  CALL _sysy_stoptime
  LW a0, 0(s0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb3:   # loop depth 0
  LA a0, ans
  LA s0, ans
  LW a0, 0(a0)
  SUBW a0, zero, a0
  SW a0, 0(s0)
  JAL zero, bb2
bb4:   # loop depth 0
  LA s0, ans
  ADD a0, zero, zero
  LW s1, 0(s0)
  # implict jump to bb5
bb5:   # loop depth 1
  LA s0, a
  ADDIW s4, a0, 2
  SH2ADD s3, a0, s0
  ADDIW s0, a0, 1
  LW s3, 0(s3)
  REMW s3, s3, s4
  MULW a0, a0, s3
  ADDW s1, s1, a0
  BLT s0, s2, bb7
  # implict jump to bb6
bb6:   # loop depth 0
  LA a0, ans
  SW s1, 0(a0)
  JAL zero, bb1
bb7:   # loop depth 1
  ADD a0, s0, zero
  JAL zero, bb5
radixSort:   # loop depth 0
  ADDI sp, sp, -272
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SW zero, 200(sp)
  SW zero, 204(sp)
  XORI s0, a0, -1
  SW zero, 208(sp)
  SLTIU s2, s0, 1
  SW zero, 212(sp)
  SW zero, 216(sp)
  ADD s1, a2, zero
  SW zero, 220(sp)
  ADD s0, a1, zero
  SW zero, 224(sp)
  SW zero, 228(sp)
  SW zero, 232(sp)
  SW zero, 236(sp)
  SW zero, 240(sp)
  SW zero, 244(sp)
  SW zero, 248(sp)
  SW zero, 252(sp)
  SW zero, 256(sp)
  SW zero, 260(sp)
  BNE s2, zero, bb41
  # implict jump to bb9
bb9:   # loop depth 0
  ADDIW a1, s1, 1
  SLT a1, a1, a3
  XORI a1, a1, 1
  # implict jump to bb10
bb10:   # loop depth 0
  BNE a1, zero, bb40
  # implict jump to bb11
bb11:   # loop depth 0
  BLT s1, a3, bb31
  # implict jump to bb12
bb12:   # loop depth 0
  SW s1, 72(sp)
  ADD a1, zero, zero
  LW a2, 200(sp)
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADDW a2, s1, a2
  SW a2, 136(sp)
  SW a2, 76(sp)
  LW a3, 204(sp)
  ADDW a2, a2, a3
  SW a2, 140(sp)
  SW a2, 80(sp)
  LW a3, 208(sp)
  ADDW a2, a2, a3
  SW a2, 144(sp)
  SW a2, 84(sp)
  LW a3, 212(sp)
  ADDW a2, a2, a3
  SW a2, 148(sp)
  SW a2, 88(sp)
  LW a3, 216(sp)
  ADDW a2, a2, a3
  SW a2, 152(sp)
  SW a2, 92(sp)
  LW a3, 220(sp)
  ADDW a2, a2, a3
  SW a2, 156(sp)
  SW a2, 96(sp)
  LW a3, 224(sp)
  ADDW a2, a2, a3
  SW a2, 160(sp)
  SW a2, 100(sp)
  LW a3, 228(sp)
  ADDW a2, a2, a3
  SW a2, 164(sp)
  SW a2, 104(sp)
  LW a3, 232(sp)
  ADDW a2, a2, a3
  SW a2, 168(sp)
  SW a2, 108(sp)
  LW a3, 236(sp)
  ADDW a2, a2, a3
  SW a2, 172(sp)
  SW a2, 112(sp)
  LW a3, 240(sp)
  ADDW a2, a2, a3
  SW a2, 176(sp)
  SW a2, 116(sp)
  LW a3, 244(sp)
  ADDW a2, a2, a3
  SW a2, 180(sp)
  SW a2, 120(sp)
  LW a3, 248(sp)
  ADDW a2, a2, a3
  SW a2, 184(sp)
  SW a2, 124(sp)
  LW a3, 252(sp)
  ADDW a2, a2, a3
  SW a2, 188(sp)
  SW a2, 128(sp)
  LW a3, 256(sp)
  ADDW a2, a2, a3
  SW a2, 192(sp)
  SW a2, 132(sp)
  LW a3, 260(sp)
  ADDW a2, a2, a3
  SW a2, 196(sp)
  # implict jump to bb13
bb13:   # loop depth 1
  SLLIW a2, s3, 2
  ADDI t6, sp, 72
  ADD s4, t6, a2
  ADDI t6, sp, 136
  ADD s5, t6, a2
  LW a2, 0(s4)
  LW a3, 0(s5)
  BLT a2, a3, bb18
  # implict jump to bb14
bb14:   # loop depth 1
  # implict jump to bb15
bb15:   # loop depth 1
  ADDIW s3, s3, 1
  SLTI a2, s3, 16
  BNE a2, zero, bb17
  # implict jump to bb16
bb16:   # loop depth 0
  LW a3, 200(sp)
  ADDIW s2, a0, -1
  ADD a2, s1, zero
  ADD a1, s0, zero
  ADD a0, s2, zero
  ADDW s1, s1, a3
  ADD a3, s1, zero
  CALL radixSort
  LW a3, 204(sp)
  ADD a2, s1, zero
  ADD a1, s0, zero
  ADD a0, s2, zero
  ADDW s1, s1, a3
  ADD a3, s1, zero
  CALL radixSort
  LW a3, 208(sp)
  ADD a2, s1, zero
  ADD a1, s0, zero
  ADD a0, s2, zero
  ADDW s1, s1, a3
  ADD a3, s1, zero
  CALL radixSort
  LW a3, 212(sp)
  ADD a2, s1, zero
  ADD a1, s0, zero
  ADD a0, s2, zero
  ADDW s1, s1, a3
  ADD a3, s1, zero
  CALL radixSort
  LW a3, 216(sp)
  ADD a2, s1, zero
  ADD a1, s0, zero
  ADD a0, s2, zero
  ADDW s1, s1, a3
  ADD a3, s1, zero
  CALL radixSort
  LW a3, 220(sp)
  ADD a2, s1, zero
  ADD a1, s0, zero
  ADD a0, s2, zero
  ADDW s1, s1, a3
  ADD a3, s1, zero
  CALL radixSort
  LW a3, 224(sp)
  ADD a2, s1, zero
  ADD a1, s0, zero
  ADD a0, s2, zero
  ADDW s1, s1, a3
  ADD a3, s1, zero
  CALL radixSort
  LW a3, 228(sp)
  ADD a2, s1, zero
  ADD a1, s0, zero
  ADD a0, s2, zero
  ADDW s1, s1, a3
  ADD a3, s1, zero
  CALL radixSort
  LW a3, 232(sp)
  ADD a2, s1, zero
  ADD a1, s0, zero
  ADD a0, s2, zero
  ADDW s1, s1, a3
  ADD a3, s1, zero
  CALL radixSort
  LW a3, 236(sp)
  ADD a2, s1, zero
  ADD a1, s0, zero
  ADD a0, s2, zero
  ADDW s1, s1, a3
  ADD a3, s1, zero
  CALL radixSort
  LW a3, 240(sp)
  ADD a2, s1, zero
  ADD a1, s0, zero
  ADD a0, s2, zero
  ADDW s1, s1, a3
  ADD a3, s1, zero
  CALL radixSort
  LW a3, 244(sp)
  ADD a2, s1, zero
  ADD a1, s0, zero
  ADD a0, s2, zero
  ADDW s1, s1, a3
  ADD a3, s1, zero
  CALL radixSort
  LW a3, 248(sp)
  ADD a2, s1, zero
  ADD a1, s0, zero
  ADD a0, s2, zero
  ADDW s1, s1, a3
  ADD a3, s1, zero
  CALL radixSort
  LW a3, 252(sp)
  ADD a2, s1, zero
  ADD a1, s0, zero
  ADD a0, s2, zero
  ADDW s1, s1, a3
  ADD a3, s1, zero
  CALL radixSort
  LW a3, 256(sp)
  ADD a2, s1, zero
  ADD a1, s0, zero
  ADD a0, s2, zero
  ADDW s1, s1, a3
  ADD a3, s1, zero
  CALL radixSort
  LW a3, 260(sp)
  ADD a2, s1, zero
  ADD a1, s0, zero
  ADD a0, s2, zero
  ADDW a3, s1, a3
  CALL radixSort
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb17:   # loop depth 1
  JAL zero, bb13
bb18:   # loop depth 1
  # implict jump to bb19
bb19:   # loop depth 2
  SH2ADD a1, a2, s0
  LW a1, 0(a1)
  # implict jump to bb20
bb20:   # loop depth 3
  BLT zero, a0, bb27
  # implict jump to bb21
bb21:   # loop depth 3
  ADD a2, a1, zero
  # implict jump to bb22
bb22:   # loop depth 3
  SLLI a3, a2, 1
  SRLI a3, a3, 60
  ADD a3, a2, a3
  ANDI a3, a3, -16
  SUBW a2, a2, a3
  BNE a2, s3, bb26
  # implict jump to bb23
bb23:   # loop depth 2
  LW a2, 0(s4)
  SH2ADD a3, a2, s0
  ADDIW a2, a2, 1
  SW a1, 0(a3)
  SW a2, 0(s4)
  LW a2, 0(s4)
  LW a3, 0(s5)
  BLT a2, a3, bb25
  # implict jump to bb24
bb24:   # loop depth 1
  JAL zero, bb15
bb25:   # loop depth 2
  JAL zero, bb19
bb26:   # loop depth 3
  SLLIW a2, a2, 2
  ADD s2, a1, zero
  ADDI a3, sp, 72
  ADD a3, a3, a2
  LW a2, 0(a3)
  SH2ADD s6, a2, s0
  ADDIW s7, a2, 1
  LW a2, 0(s6)
  SW a1, 0(s6)
  ADD a1, a2, zero
  SW s7, 0(a3)
  JAL zero, bb20
bb27:   # loop depth 3
  ADD a3, zero, zero
  ADD a2, a1, zero
  # implict jump to bb28
bb28:   # loop depth 4
  SRAIW s6, a2, 31
  ADDIW a3, a3, 1
  SRLIW s6, s6, 28
  ADD a2, a2, s6
  SRAIW a2, a2, 4
  BLT a3, a0, bb30
  # implict jump to bb29
bb29:   # loop depth 3
  JAL zero, bb22
bb30:   # loop depth 4
  JAL zero, bb28
bb31:   # loop depth 0
  ADD a2, s1, zero
  # implict jump to bb32
bb32:   # loop depth 1
  SH2ADD a1, a2, s0
  LW a1, 0(a1)
  BLT zero, a0, bb36
  # implict jump to bb33
bb33:   # loop depth 1
  # implict jump to bb34
bb34:   # loop depth 1
  ADDIW a2, a2, 1
  SLLI s2, a1, 1
  SRLI s2, s2, 60
  ADD s2, a1, s2
  ANDI s2, s2, -16
  SUBW a1, a1, s2
  SLLIW a1, a1, 2
  ADDI t6, sp, 200
  ADD a1, t6, a1
  LW s2, 0(a1)
  ADDIW s2, s2, 1
  SW s2, 0(a1)
  BLT a2, a3, bb35
  JAL zero, bb12
bb35:   # loop depth 1
  JAL zero, bb32
bb36:   # loop depth 1
  ADD s2, zero, zero
  # implict jump to bb37
bb37:   # loop depth 2
  SRAIW s3, a1, 31
  ADDIW s2, s2, 1
  SRLIW s3, s3, 28
  ADD a1, a1, s3
  SRAIW a1, a1, 4
  BLT s2, a0, bb39
  # implict jump to bb38
bb38:   # loop depth 1
  JAL zero, bb34
bb39:   # loop depth 2
  JAL zero, bb37
bb40:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb41:   # loop depth 0
  ADDI a1, zero, 1
  JAL zero, bb10
