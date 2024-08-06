.global main
.global kernel_nussinov
.section .bss
table:
.space 7840000
seq:
.space 5600

.section .data


n:
.word 0x00000578
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  LA a0, seq
  CALL getarray
  LA a0, table
  CALL getarray
  ADDI a0, zero, 79
  CALL _sysy_starttime
  LA a0, n
  LW a0, 0(a0)
  LA a1, seq
  LA a2, table
  CALL kernel_nussinov
  ADDI a0, zero, 81
  CALL _sysy_stoptime
  LA a0, n
  LW a0, 0(a0)
  MULW a0, a0, a0
  LA a1, table
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
kernel_nussinov:   # loop depth 0
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  ADDI t0, zero, 1
  SUBW a5, a0, t0
  SLT t0, a5, zero
  XORI t0, t0, 1
  BNE t0, zero, bb11
  # implict jump to bb2
bb2:   # loop depth 0
  BLT zero, a0, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb4:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  BLT zero, a0, bb8
  # implict jump to bb6
bb6:   # loop depth 1
  ADDIW t0, t0, 1
  BLT t0, a0, bb7
  JAL zero, bb3
bb7:   # loop depth 1
  JAL zero, bb5
bb8:   # loop depth 1
  LUI t1, 1
  ADDIW t1, t1, 1504
  MULW t1, t0, t1
  ADD t2, a2, t1
  ADD t1, zero, zero
  # implict jump to bb9
bb9:   # loop depth 2
  SLLIW a1, t1, 2
  ADD a1, t2, a1
  LW a3, 0(a1)
  ADDI a4, zero, 10
  REMW a3, a3, a4
  SW a3, 0(a1)
  ADDIW t1, t1, 1
  BLT t1, a0, bb10
  JAL zero, bb6
bb10:   # loop depth 2
  JAL zero, bb9
bb11:   # loop depth 0
  ADD t1, zero, zero
  ADD t0, zero, zero
  ADD t2, zero, zero
  # implict jump to bb12
bb12:   # loop depth 1
  ADDIW a3, a5, 1
  SLT a6, a3, a0
  BLT a3, a0, bb16
  # implict jump to bb13
bb13:   # loop depth 1
  # implict jump to bb14
bb14:   # loop depth 1
  ADDI a3, zero, 1
  SUBW a5, a5, a3
  SLT a3, a5, zero
  XORI a3, a3, 1
  BNE a3, zero, bb15
  JAL zero, bb2
bb15:   # loop depth 1
  JAL zero, bb12
bb16:   # loop depth 1
  LUI t0, 1
  ADDIW t0, t0, 1504
  MULW a7, a5, t0
  LUI t0, 1
  ADDIW t0, t0, 1504
  MULW t3, a3, t0
  ADD a4, a3, zero
  # implict jump to bb17
bb17:   # loop depth 2
  ADDI t0, zero, 1
  SUBW t1, a4, t0
  SLT t0, t1, zero
  XORI t0, t0, 1
  SLLIW t4, a4, 2
  SLLIW t5, t1, 2
  BNE t0, zero, bb48
  # implict jump to bb18
bb18:   # loop depth 2
  BLT a3, a0, bb46
  # implict jump to bb19
bb19:   # loop depth 2
  BNE t0, zero, bb45
  # implict jump to bb20
bb20:   # loop depth 2
  ADD t0, zero, zero
  # implict jump to bb21
bb21:   # loop depth 2
  BNE t0, zero, bb34
  # implict jump to bb22
bb22:   # loop depth 2
  # implict jump to bb23
bb23:   # loop depth 2
  BLT a3, a4, bb28
  # implict jump to bb24
bb24:   # loop depth 2
  ADD t1, a3, zero
  # implict jump to bb25
bb25:   # loop depth 2
  ADDIW a4, a4, 1
  BLT a4, a0, bb27
  # implict jump to bb26
bb26:   # loop depth 2
  JAL zero, bb14
bb27:   # loop depth 2
  JAL zero, bb17
bb28:   # loop depth 2
  ADD t5, a2, a7
  ADD s0, t5, t4
  ADD t1, a3, zero
  # implict jump to bb29
bb29:   # loop depth 3
  LW s1, 0(s0)
  SLLIW s2, t1, 2
  ADD s2, t5, s2
  LW s3, 0(s2)
  ADDIW t1, t1, 1
  LUI s4, 1
  ADDIW s4, s4, 1504
  MULW s4, t1, s4
  ADD s4, a2, s4
  ADD s4, s4, t4
  LW s5, 0(s4)
  ADDW s3, s3, s5
  BLT s1, s3, bb33
  # implict jump to bb30
bb30:   # loop depth 3
  BLT t1, a4, bb32
  # implict jump to bb31
bb31:   # loop depth 3
  JAL zero, bb25
bb32:   # loop depth 3
  JAL zero, bb29
bb33:   # loop depth 3
  LW s1, 0(s2)
  LW s2, 0(s4)
  ADDW s1, s1, s2
  SW s1, 0(s0)
  JAL zero, bb30
bb34:   # loop depth 2
  BLT a5, t1, bb39
  # implict jump to bb35
bb35:   # loop depth 2
  ADD t1, a2, a7
  ADD t1, t1, t4
  LW s0, 0(t1)
  ADD s1, a2, t3
  ADD t5, s1, t5
  LW s1, 0(t5)
  BLT s0, s1, bb38
  # implict jump to bb36
bb36:   # loop depth 2
  # implict jump to bb37
bb37:   # loop depth 2
  JAL zero, bb23
bb38:   # loop depth 2
  LW t5, 0(t5)
  SW t5, 0(t1)
  JAL zero, bb36
bb39:   # loop depth 2
  SLLIW t1, a5, 2
  ADD t1, a1, t1
  LW t1, 0(t1)
  ADD t2, a1, t4
  LW t2, 0(t2)
  ADDW t1, t1, t2
  XORI t1, t1, 3
  SLTIU t1, t1, 1
  BNE t1, zero, bb44
  # implict jump to bb40
bb40:   # loop depth 2
  ADD t2, zero, zero
  # implict jump to bb41
bb41:   # loop depth 2
  ADD t1, a2, a7
  ADD t1, t1, t4
  LW s0, 0(t1)
  ADD s1, a2, t3
  ADD t5, s1, t5
  LW s1, 0(t5)
  ADDW s1, s1, t2
  BLT s0, s1, bb43
  # implict jump to bb42
bb42:   # loop depth 2
  JAL zero, bb37
bb43:   # loop depth 2
  LW t5, 0(t5)
  ADDW t5, t5, t2
  SW t5, 0(t1)
  JAL zero, bb42
bb44:   # loop depth 2
  ADDI t2, zero, 1
  JAL zero, bb41
bb45:   # loop depth 2
  ADD t0, a6, zero
  JAL zero, bb21
bb46:   # loop depth 2
  ADD s0, a2, a7
  ADD s0, s0, t4
  LW s1, 0(s0)
  ADD s2, a2, t3
  ADD s2, s2, t4
  LW s3, 0(s2)
  BLT s1, s3, bb47
  JAL zero, bb19
bb47:   # loop depth 2
  LW s1, 0(s2)
  SW s1, 0(s0)
  JAL zero, bb19
bb48:   # loop depth 2
  ADD s0, a2, a7
  ADD s1, s0, t4
  LW s2, 0(s1)
  ADD s0, s0, t5
  LW s3, 0(s0)
  BLT s2, s3, bb49
  JAL zero, bb18
bb49:   # loop depth 2
  LW s0, 0(s0)
  SW s0, 0(s1)
  JAL zero, bb18
