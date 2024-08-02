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
  ADDI sp, sp, -272
  SD ra, 192(sp)
  SD s0, 200(sp)
  SD s1, 208(sp)
  SD s2, 216(sp)
  SD s3, 224(sp)
  SD s4, 232(sp)
  SD s5, 240(sp)
  SD s6, 248(sp)
  SD s7, 256(sp)
  SD s8, 264(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDI a0, zero, 16
  # implict jump to bb8
bb8:
  ADDI a1, zero, 1
  SUBW a0, a0, a1
  SLLIW a1, a0, 2
  ADDI t5, sp, 128
  ADD a1, t5, a1
  SW zero, 0(a1)
  BNE a0, zero, bb57
  # implict jump to bb9
bb9:
  ADDI a0, zero, 16
  # implict jump to bb10
bb10:
  ADDI a1, zero, 1
  SUBW a0, a0, a1
  SLLIW a1, a0, 2
  ADDI t5, sp, 64
  ADD a1, t5, a1
  SW zero, 0(a1)
  BNE a0, zero, bb56
  # implict jump to bb11
bb11:
  ADDI a0, zero, 16
  # implict jump to bb12
bb12:
  ADDI a1, zero, 1
  SUBW a0, a0, a1
  SLLIW a1, a0, 2
  ADDI t5, sp, 0
  ADD a1, t5, a1
  SW zero, 0(a1)
  BNE a0, zero, bb55
  # implict jump to bb13
bb13:
  XORI a0, s0, -1
  SLTIU a0, a0, 1
  BNE a0, zero, bb54
  # implict jump to bb14
bb14:
  ADDIW a0, a2, 1
  SLT a0, a0, a3
  XORI a0, a0, 1
  # implict jump to bb15
bb15:
  BNE a0, zero, bb53
  # implict jump to bb16
bb16:
  BLT a2, a3, bb44
  # implict jump to bb17
bb17:
  SW a2, 128(sp)
  LW a0, 0(sp)
  ADDW a0, a2, a0
  SW a0, 64(sp)
  ADDI a1, zero, 1
  # implict jump to bb18
bb18:
  SLLIW a3, a1, 2
  ADDI t5, sp, 128
  ADD s2, t5, a3
  ADDI s3, zero, 1
  SUBW s3, a1, s3
  SLLIW s3, s3, 2
  ADDI t5, sp, 64
  ADD s3, t5, s3
  LW s3, 0(s3)
  SW s3, 0(s2)
  ADDI t5, sp, 64
  ADD s2, t5, a3
  ADDI t5, sp, 0
  ADD a3, t5, a3
  LW a3, 0(a3)
  ADDW a3, s3, a3
  SW a3, 0(s2)
  ADDIW a1, a1, 1
  SLTI a3, a1, 16
  BNE a3, zero, bb43
  # implict jump to bb19
bb19:
  ADD a1, zero, zero
  ADD a3, zero, zero
  ADD s2, zero, zero
  # implict jump to bb20
bb20:
  SLLIW s3, a1, 2
  ADDI t5, sp, 128
  ADD s4, t5, s3
  LW s5, 0(s4)
  ADDI t5, sp, 64
  ADD s3, t5, s3
  LW s6, 0(s3)
  BLT s5, s6, bb30
  # implict jump to bb21
bb21:
  ADD s3, a3, zero
  ADD a3, s2, zero
  # implict jump to bb22
bb22:
  ADD s2, a3, zero
  ADD a3, s3, zero
  ADDIW a1, a1, 1
  SLTI s3, a1, 16
  BNE s3, zero, bb29
  # implict jump to bb23
bb23:
  SW a2, 128(sp)
  SW a0, 64(sp)
  ADD a0, zero, zero
  # implict jump to bb24
bb24:
  ADD s2, a0, zero
  BLT zero, s2, bb28
  # implict jump to bb25
bb25:
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SLLIW a1, s2, 2
  ADDI a2, sp, 128
  ADD a2, a2, a1
  LW a2, 0(a2)
  ADDI a3, sp, 64
  ADD a1, a3, a1
  LW a3, 0(a1)
  ADD a1, s1, zero
  CALL radixSort
  ADDIW a0, s2, 1
  SLTI a1, a0, 16
  BNE a1, zero, bb27
  # implict jump to bb26
bb26:
  LD ra, 192(sp)
  LD s0, 200(sp)
  LD s1, 208(sp)
  LD s2, 216(sp)
  LD s3, 224(sp)
  LD s4, 232(sp)
  LD s5, 240(sp)
  LD s6, 248(sp)
  LD s7, 256(sp)
  LD s8, 264(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb27:
  JAL zero, bb24
bb28:
  SLLIW a0, s2, 2
  ADDI a1, sp, 128
  ADD a1, a1, a0
  ADDI a2, zero, 1
  SUBW a2, s2, a2
  SLLIW a2, a2, 2
  ADDI t5, sp, 64
  ADD a2, t5, a2
  LW a2, 0(a2)
  SW a2, 0(a1)
  ADDI a1, sp, 64
  ADD a1, a1, a0
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW a0, 0(a0)
  ADDW a0, a2, a0
  SW a0, 0(a1)
  JAL zero, bb25
bb29:
  JAL zero, bb20
bb30:
  ADD s6, s5, zero
  ADD s2, s4, zero
  # implict jump to bb31
bb31:
  ADD s5, a3, zero
  ADD a3, s6, zero
  SLLIW a3, a3, 2
  ADD a3, s1, a3
  LW a3, 0(a3)
  ADD s6, a3, zero
  ADD a3, s5, zero
  # implict jump to bb32
bb32:
  ADD s5, a3, zero
  ADD a3, s6, zero
  BLT zero, s0, bb39
  # implict jump to bb33
bb33:
  ADD s6, a3, zero
  # implict jump to bb34
bb34:
  SLLI s7, s6, 1
  SRLI s7, s7, 60
  ADD s7, s6, s7
  ANDI s7, s7, -16
  SUBW s6, s6, s7
  BNE s6, a1, bb38
  # implict jump to bb35
bb35:
  LW s6, 0(s2)
  SLLIW s7, s6, 2
  ADD s7, s1, s7
  SW a3, 0(s7)
  ADDIW s6, s6, 1
  SW s6, 0(s2)
  LW s2, 0(s4)
  LW s6, 0(s3)
  BLT s2, s6, bb37
  # implict jump to bb36
bb36:
  ADD s3, s5, zero
  JAL zero, bb22
bb37:
  ADD s6, s2, zero
  ADD s2, s4, zero
  ADD a3, s5, zero
  JAL zero, bb31
bb38:
  SLLIW s5, s6, 2
  ADDI t5, sp, 128
  ADD s5, t5, s5
  LW s6, 0(s5)
  SLLIW s7, s6, 2
  ADD s7, s1, s7
  LW s8, 0(s7)
  SW a3, 0(s7)
  ADDIW s6, s6, 1
  SW s6, 0(s5)
  ADD s6, s8, zero
  JAL zero, bb32
bb39:
  ADD s6, a3, zero
  ADD s7, zero, zero
  # implict jump to bb40
bb40:
  SRAIW s8, s6, 31
  SRLIW s8, s8, 28
  ADD s6, s6, s8
  SRAIW s6, s6, 4
  ADDIW s7, s7, 1
  BLT s7, s0, bb42
  # implict jump to bb41
bb41:
  JAL zero, bb34
bb42:
  JAL zero, bb40
bb43:
  JAL zero, bb18
bb44:
  ADD a0, a2, zero
  # implict jump to bb45
bb45:
  SLLIW a1, a0, 2
  ADD a1, s1, a1
  LW a1, 0(a1)
  BLT zero, s0, bb49
  # implict jump to bb46
bb46:
  # implict jump to bb47
bb47:
  SLLI s2, a1, 1
  SRLI s2, s2, 60
  ADD s2, a1, s2
  ANDI s2, s2, -16
  SUBW a1, a1, s2
  SLLIW a1, a1, 2
  ADDI t5, sp, 0
  ADD a1, t5, a1
  LW s2, 0(a1)
  ADDIW s2, s2, 1
  SW s2, 0(a1)
  ADDIW a0, a0, 1
  BLT a0, a3, bb48
  JAL zero, bb17
bb48:
  JAL zero, bb45
bb49:
  ADD s2, zero, zero
  # implict jump to bb50
bb50:
  SRAIW s3, a1, 31
  SRLIW s3, s3, 28
  ADD a1, a1, s3
  SRAIW a1, a1, 4
  ADDIW s2, s2, 1
  BLT s2, s0, bb52
  # implict jump to bb51
bb51:
  JAL zero, bb47
bb52:
  JAL zero, bb50
bb53:
  LD ra, 192(sp)
  LD s0, 200(sp)
  LD s1, 208(sp)
  LD s2, 216(sp)
  LD s3, 224(sp)
  LD s4, 232(sp)
  LD s5, 240(sp)
  LD s6, 248(sp)
  LD s7, 256(sp)
  LD s8, 264(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb54:
  ADDI a0, zero, 1
  JAL zero, bb15
bb55:
  JAL zero, bb12
bb56:
  JAL zero, bb10
bb57:
  JAL zero, bb8
