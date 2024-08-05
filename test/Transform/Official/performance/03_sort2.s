.global main
.global radixSort
.section .bss

a:
.space 120000040
.section .data
ans:
.word 0x00000000

.section .text
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  LA a0, a
  CALL getarray
  ADD s0, a0, zero
  ADDI a0, zero, 90
  CALL _sysy_starttime
  ADDI a0, zero, 8
  LA a1, a
  ADD a2, zero, zero
  ADD a3, s0, zero
  CALL radixSort
  BLT zero, s0, bb4
  # implict jump to bb1
bb1:
  LA a0, ans
  LW a0, 0(a0)
  BLT a0, zero, bb3
  # implict jump to bb2
bb2:
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
bb3:
  LA a0, ans
  LW a0, 0(a0)
  SUBW a0, zero, a0
  LA s0, ans
  SW a0, 0(s0)
  JAL zero, bb2
bb4:
  ADD a0, zero, zero
  # implict jump to bb5
bb5:
  LA s1, ans
  LW s1, 0(s1)
  SLLIW s2, a0, 2
  LA s3, a
  ADD s2, s3, s2
  LW s2, 0(s2)
  ADDIW s3, a0, 2
  REMW s2, s2, s3
  MULW s2, a0, s2
  ADDW s1, s1, s2
  LA s2, ans
  SW s1, 0(s2)
  ADDIW a0, a0, 1
  BLT a0, s0, bb6
  JAL zero, bb1
bb6:
  JAL zero, bb5
radixSort:
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
  SW zero, 64(sp)
  SW zero, 68(sp)
  SW zero, 72(sp)
  SW zero, 76(sp)
  SW zero, 80(sp)
  SW zero, 84(sp)
  SW zero, 88(sp)
  SW zero, 92(sp)
  SW zero, 96(sp)
  SW zero, 100(sp)
  SW zero, 104(sp)
  SW zero, 108(sp)
  SW zero, 112(sp)
  SW zero, 116(sp)
  SW zero, 120(sp)
  SW zero, 124(sp)
  SW zero, 128(sp)
  SW zero, 132(sp)
  SW zero, 136(sp)
  SW zero, 140(sp)
  SW zero, 144(sp)
  SW zero, 148(sp)
  SW zero, 152(sp)
  SW zero, 156(sp)
  SW zero, 160(sp)
  SW zero, 164(sp)
  SW zero, 168(sp)
  SW zero, 172(sp)
  SW zero, 176(sp)
  SW zero, 180(sp)
  SW zero, 184(sp)
  SW zero, 188(sp)
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
  BNE a1, zero, bb40
  # implict jump to bb8
bb8:
  ADDIW a1, a2, 1
  SLT a1, a1, a3
  XORI a1, a1, 1
  # implict jump to bb9
bb9:
  BNE a1, zero, bb39
  # implict jump to bb10
bb10:
  BLT a2, a3, bb30
  # implict jump to bb11
bb11:
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
  ADD s2, zero, zero
  ADD a3, zero, zero
  ADD a1, zero, zero
  # implict jump to bb12
bb12:
  SLLIW s4, s2, 2
  ADDI t6, sp, 64
  ADD s3, t6, s4
  LW s0, 0(s3)
  ADDI t6, sp, 128
  ADD s4, t6, s4
  LW s5, 0(s4)
  BLT s0, s5, bb17
  # implict jump to bb13
bb13:
  # implict jump to bb14
bb14:
  ADDIW s2, s2, 1
  SLTI s0, s2, 16
  BNE s0, zero, bb16
  # implict jump to bb15
bb15:
  SW a2, 64(sp)
  LW a1, 192(sp)
  ADDW a3, a2, a1
  SW a3, 128(sp)
  ADDI a1, zero, 1
  SUBW s0, a0, a1
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 128(sp)
  SW a2, 68(sp)
  LW a0, 196(sp)
  ADDW a3, a2, a0
  SW a3, 132(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 132(sp)
  SW a2, 72(sp)
  LW a0, 200(sp)
  ADDW a3, a2, a0
  SW a3, 136(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 136(sp)
  SW a2, 76(sp)
  LW a0, 204(sp)
  ADDW a3, a2, a0
  SW a3, 140(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 140(sp)
  SW a2, 80(sp)
  LW a0, 208(sp)
  ADDW a3, a2, a0
  SW a3, 144(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 144(sp)
  SW a2, 84(sp)
  LW a0, 212(sp)
  ADDW a3, a2, a0
  SW a3, 148(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 148(sp)
  SW a2, 88(sp)
  LW a0, 216(sp)
  ADDW a3, a2, a0
  SW a3, 152(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 152(sp)
  SW a2, 92(sp)
  LW a0, 220(sp)
  ADDW a3, a2, a0
  SW a3, 156(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 156(sp)
  SW a2, 96(sp)
  LW a0, 224(sp)
  ADDW a3, a2, a0
  SW a3, 160(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 160(sp)
  SW a2, 100(sp)
  LW a0, 228(sp)
  ADDW a3, a2, a0
  SW a3, 164(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 164(sp)
  SW a2, 104(sp)
  LW a0, 232(sp)
  ADDW a3, a2, a0
  SW a3, 168(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 168(sp)
  SW a2, 108(sp)
  LW a0, 236(sp)
  ADDW a3, a2, a0
  SW a3, 172(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 172(sp)
  SW a2, 112(sp)
  LW a0, 240(sp)
  ADDW a3, a2, a0
  SW a3, 176(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 176(sp)
  SW a2, 116(sp)
  LW a0, 244(sp)
  ADDW a3, a2, a0
  SW a3, 180(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 180(sp)
  SW a2, 120(sp)
  LW a0, 248(sp)
  ADDW a3, a2, a0
  SW a3, 184(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 184(sp)
  SW a2, 124(sp)
  LW a0, 252(sp)
  ADDW a3, a2, a0
  SW a3, 188(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
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
bb16:
  JAL zero, bb12
bb17:
  # implict jump to bb18
bb18:
  SLLIW a1, s0, 2
  ADD a1, s1, a1
  LW s0, 0(a1)
  # implict jump to bb19
bb19:
  ADD a1, s0, zero
  BLT zero, a0, bb26
  # implict jump to bb20
bb20:
  ADD s5, a1, zero
  # implict jump to bb21
bb21:
  SLLI s0, s5, 1
  SRLI s0, s0, 60
  ADD s0, s5, s0
  ANDI s0, s0, -16
  SUBW s0, s5, s0
  BNE s0, s2, bb25
  # implict jump to bb22
bb22:
  LW s0, 0(s3)
  SLLIW s5, s0, 2
  ADD s5, s1, s5
  SW a1, 0(s5)
  ADDIW s0, s0, 1
  SW s0, 0(s3)
  LW s0, 0(s3)
  LW s5, 0(s4)
  BLT s0, s5, bb24
  # implict jump to bb23
bb23:
  JAL zero, bb14
bb24:
  JAL zero, bb18
bb25:
  SLLIW a3, s0, 2
  ADDI t6, sp, 64
  ADD a3, t6, a3
  LW s5, 0(a3)
  SLLIW s0, s5, 2
  ADD s6, s1, s0
  LW s0, 0(s6)
  SW a1, 0(s6)
  ADDIW s5, s5, 1
  SW s5, 0(a3)
  ADD a3, a1, zero
  JAL zero, bb19
bb26:
  ADD s5, a1, zero
  ADD s0, zero, zero
  # implict jump to bb27
bb27:
  SRAIW s6, s5, 31
  SRLIW s6, s6, 28
  ADD s5, s5, s6
  SRAIW s5, s5, 4
  ADDIW s0, s0, 1
  BLT s0, a0, bb29
  # implict jump to bb28
bb28:
  JAL zero, bb21
bb29:
  JAL zero, bb27
bb30:
  ADD s0, a2, zero
  # implict jump to bb31
bb31:
  SLLIW a1, s0, 2
  ADD a1, s1, a1
  LW a1, 0(a1)
  BLT zero, a0, bb35
  # implict jump to bb32
bb32:
  # implict jump to bb33
bb33:
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
  BLT s0, a3, bb34
  JAL zero, bb11
bb34:
  JAL zero, bb31
bb35:
  ADD s2, zero, zero
  # implict jump to bb36
bb36:
  SRAIW s3, a1, 31
  SRLIW s3, s3, 28
  ADD a1, a1, s3
  SRAIW a1, a1, 4
  ADDIW s2, s2, 1
  BLT s2, a0, bb38
  # implict jump to bb37
bb37:
  JAL zero, bb33
bb38:
  JAL zero, bb36
bb39:
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
bb40:
  ADDI a1, zero, 1
  JAL zero, bb9
