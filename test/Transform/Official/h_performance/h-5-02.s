.global main
.section .bss
x:
.space 5600
b:
.space 5600
y:
.space 5600
A:
.space 7840000

.section .data




n:
.word 0x00000578
.section .text
main:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s5, 16(sp)
  SD s6, 24(sp)
  SD s7, 32(sp)
  SD s8, 40(sp)
  SD s9, 48(sp)
  SD s10, 56(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  LA a0, A
  CALL getarray
  LA a0, b
  CALL getarray
  LA a0, x
  CALL getarray
  LA a0, y
  CALL getarray
  ADDI a0, zero, 68
  CALL _sysy_starttime
  LA a0, n
  LW s0, 0(a0)
  ADDI s1, zero, 0
  BLT s1, s0, bb22
  # implict jump to bb1
bb1:
  BLT s1, s0, bb13
  # implict jump to bb2
bb2:
  ADDI a0, zero, 1
  SUBW s1, s0, a0
  SLT a0, s1, zero
  XORI a0, a0, 1
  BNE a0, zero, bb4
  # implict jump to bb3
bb3:
  ADDI a0, zero, 71
  CALL _sysy_stoptime
  LA a0, n
  LW a0, 0(a0)
  LA a1, x
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s5, 16(sp)
  LD s6, 24(sp)
  LD s7, 32(sp)
  LD s8, 40(sp)
  LD s9, 48(sp)
  LD s10, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb4:
  ADD a0, s1, zero
  # implict jump to bb5
bb5:
  ADD s1, a0, zero
  SLLIW s2, s1, 2
  LA a0, y
  ADD a0, a0, s2
  LW s3, 0(a0)
  ADDIW s5, s1, 1
  BLT s5, s0, bb9
  # implict jump to bb6
bb6:
  ADD a0, s3, zero
  # implict jump to bb7
bb7:
  ADD s5, a0, zero
  LA a0, x
  ADD s4, a0, s2
  LUI a0, 1
  ADDIW a0, a0, 1504
  MULW s3, s1, a0
  LA a0, A
  ADD a0, a0, s3
  ADD a0, a0, s2
  LW a0, 0(a0)
  DIVW a0, s5, a0
  SW a0, 0(s4)
  ADDI a0, zero, 1
  SUBW s1, s1, a0
  SLT a0, s1, zero
  XORI a0, a0, 1
  BNE a0, zero, bb8
  JAL zero, bb3
bb8:
  ADD a0, s1, zero
  JAL zero, bb5
bb9:
  LUI a0, 1
  ADDIW a0, a0, 1504
  MULW s4, s1, a0
  LA a0, A
  ADD s4, a0, s4
  ADD a0, s5, zero
  # implict jump to bb10
bb10:
  ADD s5, s3, zero
  ADD s6, a0, zero
  SLLIW s7, s6, 2
  ADD a0, s4, s7
  LW s3, 0(a0)
  LA a0, x
  ADD a0, a0, s7
  LW a0, 0(a0)
  MULW a0, s3, a0
  SUBW s3, s5, a0
  ADDIW a0, s6, 1
  BLT a0, s0, bb12
  # implict jump to bb11
bb11:
  ADD a0, s3, zero
  JAL zero, bb7
bb12:
  JAL zero, bb10
bb13:
  ADD a0, zero, zero
  # implict jump to bb14
bb14:
  ADD s4, a0, zero
  SLLIW s3, s4, 2
  LA a0, b
  ADD a0, a0, s3
  LW s5, 0(a0)
  BLT zero, s4, bb18
  # implict jump to bb15
bb15:
  ADD a0, s5, zero
  # implict jump to bb16
bb16:
  ADD s1, a0, zero
  LA a0, y
  ADD a0, a0, s3
  SW s1, 0(a0)
  ADDIW a0, s4, 1
  BLT a0, s0, bb17
  JAL zero, bb2
bb17:
  JAL zero, bb14
bb18:
  LUI a0, 1
  ADDIW a0, a0, 1504
  MULW s1, s4, a0
  LA a0, A
  ADD s2, a0, s1
  ADD a0, zero, zero
  ADD s1, s5, zero
  # implict jump to bb19
bb19:
  ADD s5, s1, zero
  ADD s6, a0, zero
  SLLIW s1, s6, 2
  ADD a0, s2, s1
  LW s7, 0(a0)
  LA a0, y
  ADD a0, a0, s1
  LW a0, 0(a0)
  MULW a0, s7, a0
  SUBW s1, s5, a0
  ADDIW a0, s6, 1
  BLT a0, s4, bb21
  # implict jump to bb20
bb20:
  ADD a0, s1, zero
  JAL zero, bb16
bb21:
  JAL zero, bb19
bb22:
  ADD a0, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  # implict jump to bb23
bb23:
  ADD s4, s3, zero
  ADD s3, s2, zero
  ADD s2, a0, zero
  BLT zero, s2, bb39
  # implict jump to bb24
bb24:
  ADD a0, s4, zero
  # implict jump to bb25
bb25:
  ADD s4, a0, zero
  ADD a0, s3, zero
  BLT s2, s0, bb29
  # implict jump to bb26
bb26:
  ADD s3, s4, zero
  # implict jump to bb27
bb27:
  ADD s4, s3, zero
  ADD s3, a0, zero
  ADDIW a0, s2, 1
  BLT a0, s0, bb28
  JAL zero, bb1
bb28:
  ADD s2, s3, zero
  ADD s3, s4, zero
  JAL zero, bb23
bb29:
  LUI a0, 1
  ADDIW a0, a0, 1504
  MULW s3, s2, a0
  LA a0, A
  ADD s4, a0, s3
  ADD a0, s2, zero
  # implict jump to bb30
bb30:
  ADD s6, a0, zero
  SLLIW s7, s6, 2
  ADD s5, s4, s7
  LW s3, 0(s5)
  BLT zero, s2, bb35
  # implict jump to bb31
bb31:
  ADD a0, zero, zero
  # implict jump to bb32
bb32:
  ADD s7, a0, zero
  SW s3, 0(s5)
  ADDIW a0, s6, 1
  BLT a0, s0, bb34
  # implict jump to bb33
bb33:
  ADD a0, s7, zero
  JAL zero, bb27
bb34:
  JAL zero, bb30
bb35:
  ADD a0, zero, zero
  # implict jump to bb36
bb36:
  ADD s8, a0, zero
  SLLIW a0, s8, 2
  ADD a0, s4, a0
  LW s9, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 1504
  MULW s10, s8, a0
  LA a0, A
  ADD a0, a0, s10
  ADD a0, a0, s7
  LW a0, 0(a0)
  MULW a0, s9, a0
  SUBW s3, s3, a0
  ADDIW a0, s8, 1
  BLT a0, s2, bb38
  # implict jump to bb37
bb37:
  JAL zero, bb32
bb38:
  JAL zero, bb36
bb39:
  LUI a0, 1
  ADDIW a0, a0, 1504
  MULW s3, s2, a0
  LA a0, A
  ADD s5, a0, s3
  ADD a0, zero, zero
  # implict jump to bb40
bb40:
  ADD s4, a0, zero
  SLLIW s3, s4, 2
  ADD s6, s5, s3
  LW s8, 0(s6)
  BLT zero, s4, bb45
  # implict jump to bb41
bb41:
  ADD a0, zero, zero
  ADD s7, s8, zero
  # implict jump to bb42
bb42:
  ADD s8, a0, zero
  LUI a0, 1
  ADDIW a0, a0, 1504
  MULW s9, s4, a0
  LA a0, A
  ADD a0, a0, s9
  ADD a0, a0, s3
  LW a0, 0(a0)
  DIVW a0, s7, a0
  SW a0, 0(s6)
  ADDIW a0, s4, 1
  BLT a0, s2, bb44
  # implict jump to bb43
bb43:
  ADD s3, s8, zero
  ADD a0, s7, zero
  JAL zero, bb25
bb44:
  JAL zero, bb40
bb45:
  ADD s7, zero, zero
  ADD a0, s8, zero
  # implict jump to bb46
bb46:
  ADD s8, a0, zero
  ADD s9, s7, zero
  SLLIW a0, s9, 2
  ADD a0, s5, a0
  LW s7, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 1504
  MULW s10, s9, a0
  LA a0, A
  ADD a0, a0, s10
  ADD a0, a0, s3
  LW a0, 0(a0)
  MULW a0, s7, a0
  SUBW s8, s8, a0
  ADDIW a0, s9, 1
  BLT a0, s4, bb48
  # implict jump to bb47
bb47:
  ADD s7, s8, zero
  JAL zero, bb42
bb48:
  ADD s7, a0, zero
  ADD a0, s8, zero
  JAL zero, bb46
