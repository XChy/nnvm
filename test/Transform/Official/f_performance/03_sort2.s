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
  ADD s3, a0, zero
  LA a0, ans
  LW s2, 0(a0)
  SLLIW s0, s3, 2
  LA a0, a
  ADD a0, a0, s0
  LW a0, 0(a0)
  ADDIW s0, s3, 2
  REMW a0, a0, s0
  MULW a0, s3, a0
  ADDW s0, s2, a0
  LA a0, ans
  SW s0, 0(a0)
  ADDIW a0, s3, 1
  BLT a0, s1, bb6
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
  ADD s1, a0, zero
  ADD s0, a1, zero
  ADD a1, a2, zero
  ADDI a0, zero, 16
  # implict jump to bb8
bb8:
  ADD a2, a0, zero
  ADDI a0, zero, 1
  SUBW a0, a2, a0
  SLLIW a2, a0, 2
  ADDI t5, sp, 128
  ADD a2, t5, a2
  SW zero, 0(a2)
  BNE a0, zero, bb57
  # implict jump to bb9
bb9:
  ADDI a0, zero, 16
  # implict jump to bb10
bb10:
  ADD a2, a0, zero
  ADDI a0, zero, 1
  SUBW a0, a2, a0
  SLLIW a2, a0, 2
  ADDI t5, sp, 64
  ADD a2, t5, a2
  SW zero, 0(a2)
  BNE a0, zero, bb56
  # implict jump to bb11
bb11:
  ADDI a0, zero, 16
  # implict jump to bb12
bb12:
  ADD a2, a0, zero
  ADDI a0, zero, 1
  SUBW a0, a2, a0
  SLLIW a2, a0, 2
  ADDI t5, sp, 0
  ADD a2, t5, a2
  SW zero, 0(a2)
  BNE a0, zero, bb55
  # implict jump to bb13
bb13:
  XORI a0, s1, -1
  SLTIU a0, a0, 1
  BNE a0, zero, bb54
  # implict jump to bb14
bb14:
  ADDIW a0, a1, 1
  SLT a0, a0, a3
  XORI a0, a0, 1
  # implict jump to bb15
bb15:
  BNE a0, zero, bb53
  # implict jump to bb16
bb16:
  BLT a1, a3, bb44
  # implict jump to bb17
bb17:
  SW a1, 128(sp)
  LW a0, 0(sp)
  ADDW a3, a1, a0
  SW a3, 64(sp)
  ADDI a0, zero, 1
  # implict jump to bb18
bb18:
  ADD s2, a0, zero
  SLLIW a2, s2, 2
  ADDI t5, sp, 128
  ADD s4, t5, a2
  ADDI a0, zero, 1
  SUBW a0, s2, a0
  SLLIW a0, a0, 2
  ADDI t5, sp, 64
  ADD a0, t5, a0
  LW s3, 0(a0)
  SW s3, 0(s4)
  ADDI t5, sp, 64
  ADD s4, t5, a2
  ADDI a0, sp, 0
  ADD a0, a0, a2
  LW a0, 0(a0)
  ADDW a0, s3, a0
  SW a0, 0(s4)
  ADDIW a0, s2, 1
  SLTI a2, a0, 16
  BNE a2, zero, bb43
  # implict jump to bb19
bb19:
  ADD a0, zero, zero
  ADD s3, zero, zero
  ADD a2, zero, zero
  # implict jump to bb20
bb20:
  ADD s5, a2, zero
  ADD a2, s3, zero
  ADD s4, a0, zero
  SLLIW s2, s4, 2
  ADDI t5, sp, 128
  ADD s6, t5, s2
  LW a0, 0(s6)
  ADDI t5, sp, 64
  ADD s7, t5, s2
  LW s2, 0(s7)
  BLT a0, s2, bb30
  # implict jump to bb21
bb21:
  ADD a0, a2, zero
  ADD a2, s5, zero
  # implict jump to bb22
bb22:
  ADD s2, a2, zero
  ADD a2, a0, zero
  ADDIW s3, s4, 1
  SLTI a0, s3, 16
  BNE a0, zero, bb29
  # implict jump to bb23
bb23:
  SW a1, 128(sp)
  SW a3, 64(sp)
  ADD a0, zero, zero
  # implict jump to bb24
bb24:
  ADD s2, a0, zero
  BLT zero, s2, bb28
  # implict jump to bb25
bb25:
  ADDI a0, zero, 1
  SUBW a3, s1, a0
  SLLIW a1, s2, 2
  ADDI a0, sp, 128
  ADD a0, a0, a1
  LW a2, 0(a0)
  ADDI a0, sp, 64
  ADD a0, a0, a1
  LW s3, 0(a0)
  ADD a0, a3, zero
  ADD a1, s0, zero
  ADD a3, s3, zero
  CALL radixSort
  ADDIW a1, s2, 1
  SLTI a0, a1, 16
  BNE a0, zero, bb27
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
  ADD a0, a1, zero
  JAL zero, bb24
bb28:
  SLLIW a3, s2, 2
  ADDI a1, sp, 128
  ADD a1, a1, a3
  ADDI a0, zero, 1
  SUBW a0, s2, a0
  SLLIW a0, a0, 2
  ADDI a2, sp, 64
  ADD a0, a2, a0
  LW a2, 0(a0)
  SW a2, 0(a1)
  ADDI a1, sp, 64
  ADD a1, a1, a3
  ADDI a0, sp, 0
  ADD a0, a0, a3
  LW a0, 0(a0)
  ADDW a0, a2, a0
  SW a0, 0(a1)
  JAL zero, bb25
bb29:
  ADD a0, s3, zero
  ADD s3, a2, zero
  ADD a2, s2, zero
  JAL zero, bb20
bb30:
  ADD s2, s6, zero
  # implict jump to bb31
bb31:
  ADD s3, a2, zero
  SLLIW a0, a0, 2
  ADD a0, s0, a0
  LW a0, 0(a0)
  ADD a2, a0, zero
  ADD a0, s3, zero
  # implict jump to bb32
bb32:
  ADD s3, a0, zero
  ADD s5, a2, zero
  BLT zero, s1, bb39
  # implict jump to bb33
bb33:
  ADD a0, s5, zero
  # implict jump to bb34
bb34:
  ADD a2, a0, zero
  ADDI a0, zero, 16
  REMW a0, a2, a0
  BNE a0, s4, bb38
  # implict jump to bb35
bb35:
  LW a2, 0(s2)
  SLLIW a0, a2, 2
  ADD a0, s0, a0
  SW s5, 0(a0)
  ADDIW a0, a2, 1
  SW a0, 0(s2)
  LW a2, 0(s6)
  LW a0, 0(s7)
  BLT a2, a0, bb37
  # implict jump to bb36
bb36:
  ADD a0, s3, zero
  ADD a2, s5, zero
  JAL zero, bb22
bb37:
  ADD a0, a2, zero
  ADD s2, s6, zero
  ADD a2, s3, zero
  JAL zero, bb31
bb38:
  SLLIW a0, a0, 2
  ADDI t5, sp, 128
  ADD s8, t5, a0
  LW s3, 0(s8)
  SLLIW a0, s3, 2
  ADD a0, s0, a0
  LW a2, 0(a0)
  SW s5, 0(a0)
  ADDIW a0, s3, 1
  SW a0, 0(s8)
  ADD a0, s5, zero
  JAL zero, bb32
bb39:
  ADD a0, s5, zero
  ADD a2, zero, zero
  # implict jump to bb40
bb40:
  ADD s8, a0, zero
  SRAIW a0, s8, 31
  SRLIW a0, a0, 28
  ADD a0, s8, a0
  SRAIW a0, a0, 4
  ADDIW a2, a2, 1
  BLT a2, s1, bb42
  # implict jump to bb41
bb41:
  JAL zero, bb34
bb42:
  JAL zero, bb40
bb43:
  JAL zero, bb18
bb44:
  ADD a0, a1, zero
  # implict jump to bb45
bb45:
  ADD s2, a0, zero
  SLLIW a0, s2, 2
  ADD a0, s0, a0
  LW a0, 0(a0)
  BLT zero, s1, bb49
  # implict jump to bb46
bb46:
  # implict jump to bb47
bb47:
  ADD a2, a0, zero
  ADDI a0, zero, 16
  REMW a0, a2, a0
  SLLIW a0, a0, 2
  ADDI a2, sp, 0
  ADD a2, a2, a0
  LW a0, 0(a2)
  ADDIW a0, a0, 1
  SW a0, 0(a2)
  ADDIW a0, s2, 1
  BLT a0, a3, bb48
  JAL zero, bb17
bb48:
  JAL zero, bb45
bb49:
  ADD a2, zero, zero
  # implict jump to bb50
bb50:
  ADD s3, a0, zero
  SRAIW a0, s3, 31
  SRLIW a0, a0, 28
  ADD a0, s3, a0
  SRAIW a0, a0, 4
  ADDIW a2, a2, 1
  BLT a2, s1, bb52
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
