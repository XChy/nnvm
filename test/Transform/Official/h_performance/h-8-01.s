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
main:
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
kernel_nussinov:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD t3, a0, zero
  ADD t4, a1, zero
  ADD t5, a2, zero
  ADDI t0, zero, 1
  SUBW t0, t3, t0
  SLT t1, t0, zero
  XORI t1, t1, 1
  BNE t1, zero, bb11
  # implict jump to bb2
bb2:
  BLT zero, t3, bb4
  # implict jump to bb3
bb3:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb4:
  ADD t0, zero, zero
  # implict jump to bb5
bb5:
  BLT zero, t3, bb8
  # implict jump to bb6
bb6:
  ADDIW t0, t0, 1
  BLT t0, t3, bb7
  JAL zero, bb3
bb7:
  JAL zero, bb5
bb8:
  LUI t1, 1
  ADDIW t1, t1, 1504
  MULW t1, t0, t1
  ADD t1, t5, t1
  ADD t2, zero, zero
  # implict jump to bb9
bb9:
  SLLIW a0, t2, 2
  ADD a0, t1, a0
  LW a1, 0(a0)
  ADDI a2, zero, 10
  REMW a1, a1, a2
  SW a1, 0(a0)
  ADDIW t2, t2, 1
  BLT t2, t3, bb10
  JAL zero, bb6
bb10:
  JAL zero, bb9
bb11:
  ADD t1, zero, zero
  ADD t2, zero, zero
  ADD a0, zero, zero
  # implict jump to bb12
bb12:
  ADDIW a1, t0, 1
  SLT a2, a1, t3
  BLT a1, t3, bb16
  # implict jump to bb13
bb13:
  ADD a1, t2, zero
  ADD t2, a0, zero
  # implict jump to bb14
bb14:
  ADD a0, t2, zero
  ADD t2, a1, zero
  ADDI a1, zero, 1
  SUBW t0, t0, a1
  SLT a1, t0, zero
  XORI a1, a1, 1
  BNE a1, zero, bb15
  JAL zero, bb2
bb15:
  JAL zero, bb12
bb16:
  ADD t1, a1, zero
  ADD t2, a0, zero
  # implict jump to bb17
bb17:
  ADDI a0, zero, 1
  SUBW a0, t1, a0
  SLT a3, a0, zero
  XORI a3, a3, 1
  BNE a3, zero, bb48
  # implict jump to bb18
bb18:
  BLT a1, t3, bb46
  # implict jump to bb19
bb19:
  BNE a3, zero, bb45
  # implict jump to bb20
bb20:
  ADD a3, zero, zero
  # implict jump to bb21
bb21:
  BNE a3, zero, bb34
  # implict jump to bb22
bb22:
  # implict jump to bb23
bb23:
  BLT a1, t1, bb28
  # implict jump to bb24
bb24:
  ADD a0, a1, zero
  # implict jump to bb25
bb25:
  ADDIW t1, t1, 1
  BLT t1, t3, bb27
  # implict jump to bb26
bb26:
  ADD t1, a0, zero
  ADD a1, a3, zero
  JAL zero, bb14
bb27:
  JAL zero, bb17
bb28:
  LUI a0, 1
  ADDIW a0, a0, 1504
  MULW a0, t0, a0
  ADD a0, t5, a0
  SLLIW a4, t1, 2
  ADD a5, a0, a4
  ADD a6, a1, zero
  # implict jump to bb29
bb29:
  LW a7, 0(a5)
  SLLIW t6, a6, 2
  ADD t6, a0, t6
  LW s0, 0(t6)
  ADDIW a6, a6, 1
  LUI s1, 1
  ADDIW s1, s1, 1504
  MULW s1, a6, s1
  ADD s1, t5, s1
  ADD s1, s1, a4
  LW s2, 0(s1)
  ADDW s0, s0, s2
  BLT a7, s0, bb33
  # implict jump to bb30
bb30:
  BLT a6, t1, bb32
  # implict jump to bb31
bb31:
  ADD a0, a6, zero
  JAL zero, bb25
bb32:
  JAL zero, bb29
bb33:
  LW a7, 0(t6)
  LW t6, 0(s1)
  ADDW a7, a7, t6
  SW a7, 0(a5)
  JAL zero, bb30
bb34:
  BLT t0, a0, bb39
  # implict jump to bb35
bb35:
  LUI a4, 1
  ADDIW a4, a4, 1504
  MULW a4, t0, a4
  ADD a4, t5, a4
  SLLIW a5, t1, 2
  ADD a4, a4, a5
  LW a5, 0(a4)
  LUI a6, 1
  ADDIW a6, a6, 1504
  MULW a6, a1, a6
  ADD a6, t5, a6
  SLLIW a0, a0, 2
  ADD a0, a6, a0
  LW a6, 0(a0)
  BLT a5, a6, bb38
  # implict jump to bb36
bb36:
  # implict jump to bb37
bb37:
  JAL zero, bb23
bb38:
  LW a0, 0(a0)
  SW a0, 0(a4)
  JAL zero, bb36
bb39:
  SLLIW t2, t0, 2
  ADD t2, t4, t2
  LW t2, 0(t2)
  SLLIW a4, t1, 2
  ADD a5, t4, a4
  LW a5, 0(a5)
  ADDW t2, t2, a5
  XORI t2, t2, 3
  SLTIU t2, t2, 1
  BNE t2, zero, bb44
  # implict jump to bb40
bb40:
  ADD t2, zero, zero
  # implict jump to bb41
bb41:
  LUI a5, 1
  ADDIW a5, a5, 1504
  MULW a5, t0, a5
  ADD a5, t5, a5
  ADD a4, a5, a4
  LW a5, 0(a4)
  LUI a6, 1
  ADDIW a6, a6, 1504
  MULW a6, a1, a6
  ADD a6, t5, a6
  SLLIW a0, a0, 2
  ADD a0, a6, a0
  LW a6, 0(a0)
  ADDW a6, a6, t2
  BLT a5, a6, bb43
  # implict jump to bb42
bb42:
  JAL zero, bb37
bb43:
  LW a0, 0(a0)
  ADDW a0, a0, t2
  SW a0, 0(a4)
  JAL zero, bb42
bb44:
  ADDI t2, zero, 1
  JAL zero, bb41
bb45:
  ADD a3, a2, zero
  JAL zero, bb21
bb46:
  LUI a4, 1
  ADDIW a4, a4, 1504
  MULW a4, t0, a4
  ADD a4, t5, a4
  SLLIW a5, t1, 2
  ADD a4, a4, a5
  LW a6, 0(a4)
  LUI a7, 1
  ADDIW a7, a7, 1504
  MULW a7, a1, a7
  ADD a7, t5, a7
  ADD a5, a7, a5
  LW a7, 0(a5)
  BLT a6, a7, bb47
  JAL zero, bb19
bb47:
  LW a5, 0(a5)
  SW a5, 0(a4)
  JAL zero, bb19
bb48:
  LUI a4, 1
  ADDIW a4, a4, 1504
  MULW a4, t0, a4
  ADD a4, t5, a4
  SLLIW a5, t1, 2
  ADD a5, a4, a5
  LW a6, 0(a5)
  SLLIW a7, a0, 2
  ADD a4, a4, a7
  LW a7, 0(a4)
  BLT a6, a7, bb49
  JAL zero, bb18
bb49:
  LW a4, 0(a4)
  SW a4, 0(a5)
  JAL zero, bb18
