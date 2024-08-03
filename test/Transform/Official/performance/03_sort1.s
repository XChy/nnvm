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
  SUBW s0, zero, a0
  LA a0, ans
  SW s0, 0(a0)
  JAL zero, bb2
bb4:
  ADD a0, zero, zero
  # implict jump to bb5
bb5:
  ADD s2, a0, zero
  LA a0, ans
  LW s3, 0(a0)
  SLLIW s1, s2, 2
  LA a0, a
  ADD a0, a0, s1
  LW s1, 0(a0)
  ADDIW a0, s2, 2
  REMW a0, s1, a0
  MULW a0, s2, a0
  ADDW s1, s3, a0
  LA a0, ans
  SW s1, 0(a0)
  ADDIW a0, s2, 1
  BLT a0, s0, bb6
  JAL zero, bb1
bb6:
  JAL zero, bb5
radixSort:
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
  SD s8, 72(sp)
  ADD s1, a0, zero
  ADD s0, a1, zero
  ADD a1, a2, zero
  ADD a2, a3, zero
  ADDI a0, zero, 16
  # implict jump to bb8
bb8:
  ADDI a3, zero, 1
  SUBW a3, a0, a3
  SLLIW a0, a3, 2
  ADDI t5, sp, 80
  ADD a0, t5, a0
  SW zero, 0(a0)
  BNE a3, zero, bb49
  # implict jump to bb9
bb9:
  ADDI a0, zero, 16
  # implict jump to bb10
bb10:
  ADDI a3, zero, 1
  SUBW a3, a0, a3
  SLLIW a0, a3, 2
  ADDI t5, sp, 144
  ADD a0, t5, a0
  SW zero, 0(a0)
  BNE a3, zero, bb48
  # implict jump to bb11
bb11:
  ADDI a0, zero, 16
  # implict jump to bb12
bb12:
  ADD a3, a0, zero
  ADDI a0, zero, 1
  SUBW a3, a3, a0
  SLLIW a0, a3, 2
  ADDI t5, sp, 208
  ADD a0, t5, a0
  SW zero, 0(a0)
  BNE a3, zero, bb47
  # implict jump to bb13
bb13:
  XORI a0, s1, -1
  SLTIU a0, a0, 1
  BNE a0, zero, bb46
  # implict jump to bb14
bb14:
  ADDIW a0, a1, 1
  SLT a0, a0, a2
  XORI a0, a0, 1
  # implict jump to bb15
bb15:
  BNE a0, zero, bb45
  # implict jump to bb16
bb16:
  BLT a1, a2, bb36
  # implict jump to bb17
bb17:
  SW a1, 80(sp)
  LW a0, 208(sp)
  ADDW s6, a1, a0
  SW s6, 144(sp)
  LW a2, 144(sp)
  SW a2, 84(sp)
  LW a0, 212(sp)
  ADDW a0, a2, a0
  SW a0, 148(sp)
  LW a0, 148(sp)
  SW a0, 88(sp)
  LW a2, 216(sp)
  ADDW a0, a0, a2
  SW a0, 152(sp)
  LW a0, 152(sp)
  SW a0, 92(sp)
  LW a2, 220(sp)
  ADDW a0, a0, a2
  SW a0, 156(sp)
  LW a0, 156(sp)
  SW a0, 96(sp)
  LW a2, 224(sp)
  ADDW a0, a0, a2
  SW a0, 160(sp)
  LW a2, 160(sp)
  SW a2, 100(sp)
  LW a0, 228(sp)
  ADDW a0, a2, a0
  SW a0, 164(sp)
  LW a0, 164(sp)
  SW a0, 104(sp)
  LW a2, 232(sp)
  ADDW a0, a0, a2
  SW a0, 168(sp)
  LW a2, 168(sp)
  SW a2, 108(sp)
  LW a0, 236(sp)
  ADDW a0, a2, a0
  SW a0, 172(sp)
  LW a0, 172(sp)
  SW a0, 112(sp)
  LW a2, 240(sp)
  ADDW a0, a0, a2
  SW a0, 176(sp)
  LW a0, 176(sp)
  SW a0, 116(sp)
  LW a2, 244(sp)
  ADDW a0, a0, a2
  SW a0, 180(sp)
  LW a0, 180(sp)
  SW a0, 120(sp)
  LW a2, 248(sp)
  ADDW a0, a0, a2
  SW a0, 184(sp)
  LW a0, 184(sp)
  SW a0, 124(sp)
  LW a2, 252(sp)
  ADDW a0, a0, a2
  SW a0, 188(sp)
  LW a2, 188(sp)
  SW a2, 128(sp)
  LW a0, 256(sp)
  ADDW a0, a2, a0
  SW a0, 192(sp)
  LW a0, 192(sp)
  SW a0, 132(sp)
  LW a2, 260(sp)
  ADDW a0, a0, a2
  SW a0, 196(sp)
  LW a2, 196(sp)
  SW a2, 136(sp)
  LW a0, 264(sp)
  ADDW a0, a2, a0
  SW a0, 200(sp)
  LW a0, 200(sp)
  SW a0, 140(sp)
  LW a2, 268(sp)
  ADDW a0, a0, a2
  SW a0, 204(sp)
  ADD a0, zero, zero
  ADD a3, zero, zero
  ADD a2, zero, zero
  # implict jump to bb18
bb18:
  ADD s3, a2, zero
  ADD s5, a3, zero
  ADD a2, a0, zero
  SLLIW a0, a2, 2
  ADDI a3, sp, 80
  ADD a3, a3, a0
  LW s4, 0(a3)
  ADDI t5, sp, 144
  ADD s2, t5, a0
  LW a0, 0(s2)
  BLT s4, a0, bb23
  # implict jump to bb19
bb19:
  ADD a0, s5, zero
  ADD a3, s3, zero
  # implict jump to bb20
bb20:
  ADD s2, a3, zero
  ADD a3, a0, zero
  ADDIW a0, a2, 1
  SLTI a2, a0, 16
  BNE a2, zero, bb22
  # implict jump to bb21
bb21:
  SW a1, 80(sp)
  SW s6, 144(sp)
  ADDI a0, zero, 1
  SUBW s1, s1, a0
  LW a2, 80(sp)
  LW a3, 144(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL radixSort
  LW a1, 144(sp)
  SW a1, 84(sp)
  LW a0, 212(sp)
  ADDW a0, a1, a0
  SW a0, 148(sp)
  LW a2, 84(sp)
  LW a3, 148(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL radixSort
  LW a1, 148(sp)
  SW a1, 88(sp)
  LW a0, 216(sp)
  ADDW a0, a1, a0
  SW a0, 152(sp)
  LW a2, 88(sp)
  LW a3, 152(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL radixSort
  LW a1, 152(sp)
  SW a1, 92(sp)
  LW a0, 220(sp)
  ADDW a0, a1, a0
  SW a0, 156(sp)
  LW a2, 92(sp)
  LW a3, 156(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL radixSort
  LW a1, 156(sp)
  SW a1, 96(sp)
  LW a0, 224(sp)
  ADDW a0, a1, a0
  SW a0, 160(sp)
  LW a2, 96(sp)
  LW a3, 160(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL radixSort
  LW a0, 160(sp)
  SW a0, 100(sp)
  LW a1, 228(sp)
  ADDW a0, a0, a1
  SW a0, 164(sp)
  LW a2, 100(sp)
  LW a3, 164(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL radixSort
  LW a1, 164(sp)
  SW a1, 104(sp)
  LW a0, 232(sp)
  ADDW a0, a1, a0
  SW a0, 168(sp)
  LW a2, 104(sp)
  LW a3, 168(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL radixSort
  LW a0, 168(sp)
  SW a0, 108(sp)
  LW a1, 236(sp)
  ADDW a0, a0, a1
  SW a0, 172(sp)
  LW a2, 108(sp)
  LW a3, 172(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL radixSort
  LW a1, 172(sp)
  SW a1, 112(sp)
  LW a0, 240(sp)
  ADDW a0, a1, a0
  SW a0, 176(sp)
  LW a2, 112(sp)
  LW a3, 176(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL radixSort
  LW a0, 176(sp)
  SW a0, 116(sp)
  LW a1, 244(sp)
  ADDW a0, a0, a1
  SW a0, 180(sp)
  LW a2, 116(sp)
  LW a3, 180(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL radixSort
  LW a1, 180(sp)
  SW a1, 120(sp)
  LW a0, 248(sp)
  ADDW a0, a1, a0
  SW a0, 184(sp)
  LW a2, 120(sp)
  LW a3, 184(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL radixSort
  LW a0, 184(sp)
  SW a0, 124(sp)
  LW a1, 252(sp)
  ADDW a0, a0, a1
  SW a0, 188(sp)
  LW a2, 124(sp)
  LW a3, 188(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL radixSort
  LW a1, 188(sp)
  SW a1, 128(sp)
  LW a0, 256(sp)
  ADDW a0, a1, a0
  SW a0, 192(sp)
  LW a2, 128(sp)
  LW a3, 192(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL radixSort
  LW a0, 192(sp)
  SW a0, 132(sp)
  LW a1, 260(sp)
  ADDW a0, a0, a1
  SW a0, 196(sp)
  LW a2, 132(sp)
  LW a3, 196(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL radixSort
  LW a1, 196(sp)
  SW a1, 136(sp)
  LW a0, 264(sp)
  ADDW a0, a1, a0
  SW a0, 200(sp)
  LW a2, 136(sp)
  LW a3, 200(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL radixSort
  LW a0, 200(sp)
  SW a0, 140(sp)
  LW a1, 268(sp)
  ADDW a0, a0, a1
  SW a0, 204(sp)
  LW a2, 140(sp)
  LW a3, 204(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
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
  LD s8, 72(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb22:
  ADD a2, s2, zero
  JAL zero, bb18
bb23:
  ADD s3, a3, zero
  ADD a0, s5, zero
  # implict jump to bb24
bb24:
  ADD s5, a0, zero
  ADD a0, s4, zero
  SLLIW a0, a0, 2
  ADD a0, s0, a0
  LW a0, 0(a0)
  ADD s7, a0, zero
  ADD a0, s5, zero
  # implict jump to bb25
bb25:
  ADD s5, a0, zero
  ADD s4, s7, zero
  BLT zero, s1, bb32
  # implict jump to bb26
bb26:
  ADD a0, s4, zero
  # implict jump to bb27
bb27:
  ADD s7, a0, zero
  SLLI a0, s7, 1
  SRLI a0, a0, 60
  ADD a0, s7, a0
  ANDI a0, a0, -16
  SUBW a0, s7, a0
  BNE a0, a2, bb31
  # implict jump to bb28
bb28:
  LW s7, 0(s3)
  SLLIW a0, s7, 2
  ADD a0, s0, a0
  SW s4, 0(a0)
  ADDIW a0, s7, 1
  SW a0, 0(s3)
  LW s3, 0(a3)
  LW a0, 0(s2)
  BLT s3, a0, bb30
  # implict jump to bb29
bb29:
  ADD a0, s5, zero
  ADD a3, s4, zero
  JAL zero, bb20
bb30:
  ADD s4, s3, zero
  ADD s3, a3, zero
  ADD a0, s5, zero
  JAL zero, bb24
bb31:
  SLLIW a0, a0, 2
  ADDI t5, sp, 80
  ADD s5, t5, a0
  LW a0, 0(s5)
  SLLIW s7, a0, 2
  ADD s7, s0, s7
  LW s8, 0(s7)
  SW s4, 0(s7)
  ADDIW a0, a0, 1
  SW a0, 0(s5)
  ADD s7, s8, zero
  ADD a0, s4, zero
  JAL zero, bb25
bb32:
  ADD s8, s4, zero
  ADD a0, zero, zero
  # implict jump to bb33
bb33:
  ADD s7, a0, zero
  SRAIW a0, s8, 31
  SRLIW a0, a0, 28
  ADD a0, s8, a0
  SRAIW s8, a0, 4
  ADDIW a0, s7, 1
  BLT a0, s1, bb35
  # implict jump to bb34
bb34:
  ADD a0, s8, zero
  JAL zero, bb27
bb35:
  JAL zero, bb33
bb36:
  ADD a0, a1, zero
  # implict jump to bb37
bb37:
  ADD s2, a0, zero
  SLLIW a0, s2, 2
  ADD a0, s0, a0
  LW a0, 0(a0)
  BLT zero, s1, bb41
  # implict jump to bb38
bb38:
  # implict jump to bb39
bb39:
  ADD a3, a0, zero
  SLLI a0, a3, 1
  SRLI a0, a0, 60
  ADD a0, a3, a0
  ANDI a0, a0, -16
  SUBW a0, a3, a0
  SLLIW a0, a0, 2
  ADDI a3, sp, 208
  ADD a3, a3, a0
  LW a0, 0(a3)
  ADDIW a0, a0, 1
  SW a0, 0(a3)
  ADDIW a0, s2, 1
  BLT a0, a2, bb40
  JAL zero, bb17
bb40:
  JAL zero, bb37
bb41:
  ADD a3, a0, zero
  ADD a0, zero, zero
  # implict jump to bb42
bb42:
  ADD s3, a0, zero
  SRAIW a0, a3, 31
  SRLIW a0, a0, 28
  ADD a0, a3, a0
  SRAIW a0, a0, 4
  ADDIW s3, s3, 1
  BLT s3, s1, bb44
  # implict jump to bb43
bb43:
  JAL zero, bb39
bb44:
  ADD a3, a0, zero
  ADD a0, s3, zero
  JAL zero, bb42
bb45:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb46:
  ADDI a0, zero, 1
  JAL zero, bb15
bb47:
  ADD a0, a3, zero
  JAL zero, bb12
bb48:
  ADD a0, a3, zero
  JAL zero, bb10
bb49:
  ADD a0, a3, zero
  JAL zero, bb8
