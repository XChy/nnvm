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
  LA a0, a
  CALL getarray
  ADD s1, a0, zero
  ADDI a0, zero, 90
  CALL _sysy_starttime
  ADDI a0, zero, 8
  LA a1, a
  ADD a2, zero, zero
  ADD a3, s1, zero
  CALL radixSort
  BLT zero, s1, bb4
  # implict jump to bb1
bb1:   # loop depth 0
  LA a0, ans
  LW a0, 0(a0)
  BLT a0, zero, bb3
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI a0, zero, 102
  CALL _sysy_stoptime
  LA a0, ans
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb3:   # loop depth 0
  LA a0, ans
  LW a0, 0(a0)
  SUBW a0, zero, a0
  LA s0, ans
  SW a0, 0(s0)
  JAL zero, bb2
bb4:   # loop depth 0
  LA a0, ans
  LW s0, 0(a0)
  ADD a0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  SLLIW s2, a0, 2
  LA s3, a
  ADD s2, s3, s2
  LW s2, 0(s2)
  ADDIW s3, a0, 2
  REMW s2, s2, s3
  MULW s2, a0, s2
  ADDW s0, s0, s2
  ADDIW a0, a0, 1
  BLT a0, s1, bb7
  # implict jump to bb6
bb6:   # loop depth 0
  LA a0, ans
  SW s0, 0(a0)
  JAL zero, bb1
bb7:   # loop depth 1
  JAL zero, bb5
radixSort:   # loop depth 0
  ADDI sp, sp, -256
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  ADD s1, a1, zero
  SW zero, 192(sp)
  SW zero, 196(sp)
  SW zero, 200(sp)
  SW zero, 204(sp)
  SW zero, 208(sp)
  SW zero, 212(sp)
  SW zero, 216(sp)
  SW zero, 220(sp)
  SW zero, 224(sp)
  SW zero, 228(sp)
  SW zero, 232(sp)
  SW zero, 236(sp)
  SW zero, 240(sp)
  SW zero, 244(sp)
  SW zero, 248(sp)
  SW zero, 252(sp)
  XORI a1, a0, -1
  SLTIU a1, a1, 1
  BNE a1, zero, bb41
  # implict jump to bb9
bb9:   # loop depth 0
  ADDIW a1, a2, 1
  SLT a1, a1, a3
  XORI a1, a1, 1
  # implict jump to bb10
bb10:   # loop depth 0
  BNE a1, zero, bb40
  # implict jump to bb11
bb11:   # loop depth 0
  BLT a2, a3, bb31
  # implict jump to bb12
bb12:   # loop depth 0
  SW a2, 64(sp)
  LW a1, 192(sp)
  ADDW a1, a2, a1
  SW a1, 128(sp)
  SW a1, 68(sp)
  LW a3, 196(sp)
  ADDW a1, a1, a3
  SW a1, 132(sp)
  SW a1, 72(sp)
  LW a3, 200(sp)
  ADDW a1, a1, a3
  SW a1, 136(sp)
  SW a1, 76(sp)
  LW a3, 204(sp)
  ADDW a1, a1, a3
  SW a1, 140(sp)
  SW a1, 80(sp)
  LW a3, 208(sp)
  ADDW a1, a1, a3
  SW a1, 144(sp)
  SW a1, 84(sp)
  LW a3, 212(sp)
  ADDW a1, a1, a3
  SW a1, 148(sp)
  SW a1, 88(sp)
  LW a3, 216(sp)
  ADDW a1, a1, a3
  SW a1, 152(sp)
  SW a1, 92(sp)
  LW a3, 220(sp)
  ADDW a1, a1, a3
  SW a1, 156(sp)
  SW a1, 96(sp)
  LW a3, 224(sp)
  ADDW a1, a1, a3
  SW a1, 160(sp)
  SW a1, 100(sp)
  LW a3, 228(sp)
  ADDW a1, a1, a3
  SW a1, 164(sp)
  SW a1, 104(sp)
  LW a3, 232(sp)
  ADDW a1, a1, a3
  SW a1, 168(sp)
  SW a1, 108(sp)
  LW a3, 236(sp)
  ADDW a1, a1, a3
  SW a1, 172(sp)
  SW a1, 112(sp)
  LW a3, 240(sp)
  ADDW a1, a1, a3
  SW a1, 176(sp)
  SW a1, 116(sp)
  LW a3, 244(sp)
  ADDW a1, a1, a3
  SW a1, 180(sp)
  SW a1, 120(sp)
  LW a3, 248(sp)
  ADDW a1, a1, a3
  SW a1, 184(sp)
  SW a1, 124(sp)
  LW a3, 252(sp)
  ADDW a1, a1, a3
  SW a1, 188(sp)
  ADD s3, zero, zero
  ADD s2, zero, zero
  ADD a1, zero, zero
  # implict jump to bb13
bb13:   # loop depth 1
  SLLIW s0, s3, 2
  ADDI t6, sp, 64
  ADD s4, t6, s0
  LW a3, 0(s4)
  ADDI t6, sp, 128
  ADD s5, t6, s0
  LW s0, 0(s5)
  BLT a3, s0, bb18
  # implict jump to bb14
bb14:   # loop depth 1
  # implict jump to bb15
bb15:   # loop depth 1
  ADDIW s3, s3, 1
  SLTI a3, s3, 16
  BNE a3, zero, bb17
  # implict jump to bb16
bb16:   # loop depth 0
  LW a1, 192(sp)
  ADDW s2, a2, a1
  ADDIW s0, a0, -1
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a3, s2, zero
  CALL radixSort
  LW a0, 196(sp)
  ADDW s3, s2, a0
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  CALL radixSort
  LW a0, 200(sp)
  ADDW s4, s3, a0
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s3, zero
  ADD a3, s4, zero
  CALL radixSort
  LW a0, 204(sp)
  ADDW s2, s4, a0
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s4, zero
  ADD a3, s2, zero
  CALL radixSort
  LW a0, 208(sp)
  ADDW s3, s2, a0
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  CALL radixSort
  LW a0, 212(sp)
  ADDW s2, s3, a0
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s3, zero
  ADD a3, s2, zero
  CALL radixSort
  LW a0, 216(sp)
  ADDW s3, s2, a0
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  CALL radixSort
  LW a0, 220(sp)
  ADDW s2, s3, a0
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s3, zero
  ADD a3, s2, zero
  CALL radixSort
  LW a0, 224(sp)
  ADDW s3, s2, a0
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  CALL radixSort
  LW a0, 228(sp)
  ADDW s4, s3, a0
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s3, zero
  ADD a3, s4, zero
  CALL radixSort
  LW a0, 232(sp)
  ADDW s2, s4, a0
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s4, zero
  ADD a3, s2, zero
  CALL radixSort
  LW a0, 236(sp)
  ADDW s3, s2, a0
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  CALL radixSort
  LW a0, 240(sp)
  ADDW s4, s3, a0
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s3, zero
  ADD a3, s4, zero
  CALL radixSort
  LW a0, 244(sp)
  ADDW s2, s4, a0
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s4, zero
  ADD a3, s2, zero
  CALL radixSort
  LW a0, 248(sp)
  ADDW s3, s2, a0
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  CALL radixSort
  LW a0, 252(sp)
  ADDW a3, s3, a0
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s3, zero
  CALL radixSort
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  ADDI sp, sp, 256
  JALR zero, 0(ra)
bb17:   # loop depth 1
  JAL zero, bb13
bb18:   # loop depth 1
  # implict jump to bb19
bb19:   # loop depth 2
  SLLIW a1, a3, 2
  ADD a1, s1, a1
  LW a3, 0(a1)
  # implict jump to bb20
bb20:   # loop depth 3
  ADD a1, a3, zero
  BLT zero, a0, bb27
  # implict jump to bb21
bb21:   # loop depth 3
  ADD a3, a1, zero
  # implict jump to bb22
bb22:   # loop depth 3
  SLLI s0, a3, 1
  SRLI s0, s0, 60
  ADD s0, a3, s0
  ANDI s0, s0, -16
  SUBW a3, a3, s0
  BNE a3, s3, bb26
  # implict jump to bb23
bb23:   # loop depth 2
  LW a3, 0(s4)
  SLLIW s0, a3, 2
  ADD s0, s1, s0
  SW a1, 0(s0)
  ADDIW a3, a3, 1
  SW a3, 0(s4)
  LW a3, 0(s4)
  LW s0, 0(s5)
  BLT a3, s0, bb25
  # implict jump to bb24
bb24:   # loop depth 1
  JAL zero, bb15
bb25:   # loop depth 2
  JAL zero, bb19
bb26:   # loop depth 3
  SLLIW a3, a3, 2
  ADDI t6, sp, 64
  ADD s0, t6, a3
  LW s2, 0(s0)
  SLLIW a3, s2, 2
  ADD s6, s1, a3
  LW a3, 0(s6)
  SW a1, 0(s6)
  ADDIW s2, s2, 1
  SW s2, 0(s0)
  ADD s2, a1, zero
  JAL zero, bb20
bb27:   # loop depth 3
  ADD a3, a1, zero
  ADD s0, zero, zero
  # implict jump to bb28
bb28:   # loop depth 4
  SRAIW s6, a3, 31
  SRLIW s6, s6, 28
  ADD a3, a3, s6
  SRAIW a3, a3, 4
  ADDIW s0, s0, 1
  BLT s0, a0, bb30
  # implict jump to bb29
bb29:   # loop depth 3
  JAL zero, bb22
bb30:   # loop depth 4
  JAL zero, bb28
bb31:   # loop depth 0
  ADD s0, a2, zero
  # implict jump to bb32
bb32:   # loop depth 1
  SLLIW a1, s0, 2
  ADD a1, s1, a1
  LW a1, 0(a1)
  BLT zero, a0, bb36
  # implict jump to bb33
bb33:   # loop depth 1
  # implict jump to bb34
bb34:   # loop depth 1
  SLLI s2, a1, 1
  SRLI s2, s2, 60
  ADD s2, a1, s2
  ANDI s2, s2, -16
  SUBW a1, a1, s2
  SLLIW a1, a1, 2
  ADDI t6, sp, 192
  ADD a1, t6, a1
  LW s2, 0(a1)
  ADDIW s2, s2, 1
  SW s2, 0(a1)
  ADDIW s0, s0, 1
  BLT s0, a3, bb35
  JAL zero, bb12
bb35:   # loop depth 1
  JAL zero, bb32
bb36:   # loop depth 1
  ADD s2, zero, zero
  # implict jump to bb37
bb37:   # loop depth 2
  SRAIW s3, a1, 31
  SRLIW s3, s3, 28
  ADD a1, a1, s3
  SRAIW a1, a1, 4
  ADDIW s2, s2, 1
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
  ADDI sp, sp, 256
  JALR zero, 0(ra)
bb41:   # loop depth 0
  ADDI a1, zero, 1
  JAL zero, bb10
