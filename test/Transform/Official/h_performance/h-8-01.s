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
  ADD t1, a0, zero
  ADD t2, a2, zero
  ADDI t0, zero, 1
  SUBW a0, t1, t0
  SLT t0, a0, zero
  XORI t0, t0, 1
  BNE t0, zero, bb11
  # implict jump to bb2
bb2:
  BLT zero, t1, bb4
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
  ADD a1, t0, zero
  BLT zero, t1, bb8
  # implict jump to bb6
bb6:
  ADDIW t0, a1, 1
  BLT t0, t1, bb7
  JAL zero, bb3
bb7:
  JAL zero, bb5
bb8:
  LUI t0, 1
  ADDIW t0, t0, 1504
  MULW t0, a1, t0
  ADD a0, t2, t0
  ADD t0, zero, zero
  # implict jump to bb9
bb9:
  ADD a2, t0, zero
  SLLIW t0, a2, 2
  ADD a4, a0, t0
  LW a3, 0(a4)
  ADDI t0, zero, 10
  REMW t0, a3, t0
  SW t0, 0(a4)
  ADDIW t0, a2, 1
  BLT t0, t1, bb10
  JAL zero, bb6
bb10:
  JAL zero, bb9
bb11:
  ADD t0, a0, zero
  ADD a0, zero, zero
  ADD a2, zero, zero
  ADD a3, zero, zero
  # implict jump to bb12
bb12:
  ADD a5, a3, zero
  ADD a6, a2, zero
  ADD a3, t0, zero
  ADDIW a2, a3, 1
  SLT a4, a2, t1
  BLT a2, t1, bb16
  # implict jump to bb13
bb13:
  ADD a2, a0, zero
  ADD a0, a6, zero
  ADD t0, a5, zero
  # implict jump to bb14
bb14:
  ADD a4, t0, zero
  ADD a5, a0, zero
  ADDI t0, zero, 1
  SUBW a0, a3, t0
  SLT t0, a0, zero
  XORI t0, t0, 1
  BNE t0, zero, bb15
  JAL zero, bb2
bb15:
  ADD t0, a0, zero
  ADD a0, a2, zero
  ADD a2, a5, zero
  ADD a3, a4, zero
  JAL zero, bb12
bb16:
  ADD a0, a2, zero
  ADD t0, a5, zero
  # implict jump to bb17
bb17:
  ADD t3, t0, zero
  ADDI t0, zero, 1
  SUBW a7, a0, t0
  SLT t0, a7, zero
  XORI t5, t0, 1
  BNE t5, zero, bb48
  # implict jump to bb18
bb18:
  BLT a2, t1, bb46
  # implict jump to bb19
bb19:
  BNE t5, zero, bb45
  # implict jump to bb20
bb20:
  ADD t0, zero, zero
  # implict jump to bb21
bb21:
  ADD a6, t0, zero
  BNE a6, zero, bb34
  # implict jump to bb22
bb22:
  ADD t0, t3, zero
  # implict jump to bb23
bb23:
  ADD a5, t0, zero
  BLT a2, a0, bb28
  # implict jump to bb24
bb24:
  ADD t0, a2, zero
  # implict jump to bb25
bb25:
  ADD a7, t0, zero
  ADDIW t0, a0, 1
  BLT t0, t1, bb27
  # implict jump to bb26
bb26:
  ADD a2, a7, zero
  ADD a0, a6, zero
  ADD t0, a5, zero
  JAL zero, bb14
bb27:
  ADD a0, t0, zero
  ADD t0, a5, zero
  JAL zero, bb17
bb28:
  LUI t0, 1
  ADDIW t0, t0, 1504
  MULW t0, a3, t0
  ADD s2, t2, t0
  SLLIW t4, a0, 2
  ADD t3, s2, t4
  ADD t0, a2, zero
  # implict jump to bb29
bb29:
  LW a7, 0(t3)
  SLLIW t5, t0, 2
  ADD t5, s2, t5
  LW s1, 0(t5)
  ADDIW s0, t0, 1
  LUI t0, 1
  ADDIW t0, t0, 1504
  MULW t0, s0, t0
  ADD t0, t2, t0
  ADD t6, t0, t4
  LW t0, 0(t6)
  ADDW t0, s1, t0
  BLT a7, t0, bb33
  # implict jump to bb30
bb30:
  BLT s0, a0, bb32
  # implict jump to bb31
bb31:
  ADD t0, s0, zero
  JAL zero, bb25
bb32:
  ADD t0, s0, zero
  JAL zero, bb29
bb33:
  LW a7, 0(t5)
  LW t0, 0(t6)
  ADDW t0, a7, t0
  SW t0, 0(t3)
  JAL zero, bb30
bb34:
  BLT a3, a7, bb39
  # implict jump to bb35
bb35:
  LUI t0, 1
  ADDIW t0, t0, 1504
  MULW t0, a3, t0
  ADD t0, t2, t0
  SLLIW a5, a0, 2
  ADD t5, t0, a5
  LW t4, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, 1504
  MULW t0, a2, t0
  ADD a5, t2, t0
  SLLIW t0, a7, 2
  ADD t0, a5, t0
  LW a5, 0(t0)
  BLT t4, a5, bb38
  # implict jump to bb36
bb36:
  ADD t0, t3, zero
  # implict jump to bb37
bb37:
  JAL zero, bb23
bb38:
  LW t0, 0(t0)
  SW t0, 0(t5)
  JAL zero, bb36
bb39:
  SLLIW t0, a3, 2
  ADD t0, a1, t0
  LW t0, 0(t0)
  SLLIW a5, a0, 2
  ADD t3, a1, a5
  LW t3, 0(t3)
  ADDW t0, t0, t3
  XORI t0, t0, 3
  SLTIU t0, t0, 1
  BNE t0, zero, bb44
  # implict jump to bb40
bb40:
  ADD t0, zero, zero
  # implict jump to bb41
bb41:
  ADD t3, t0, zero
  LUI t0, 1
  ADDIW t0, t0, 1504
  MULW t0, a3, t0
  ADD t0, t2, t0
  ADD t5, t0, a5
  LW t4, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, 1504
  MULW t0, a2, t0
  ADD a5, t2, t0
  SLLIW t0, a7, 2
  ADD a5, a5, t0
  LW t0, 0(a5)
  ADDW t0, t0, t3
  BLT t4, t0, bb43
  # implict jump to bb42
bb42:
  ADD t0, t3, zero
  JAL zero, bb37
bb43:
  LW t0, 0(a5)
  ADDW t0, t0, t3
  SW t0, 0(t5)
  JAL zero, bb42
bb44:
  ADDI t0, zero, 1
  JAL zero, bb41
bb45:
  ADD t0, a4, zero
  JAL zero, bb21
bb46:
  LUI t0, 1
  ADDIW t0, t0, 1504
  MULW t0, a3, t0
  ADD t0, t2, t0
  SLLIW a6, a0, 2
  ADD t4, t0, a6
  LW a5, 0(t4)
  LUI t0, 1
  ADDIW t0, t0, 1504
  MULW t0, a2, t0
  ADD t0, t2, t0
  ADD t0, t0, a6
  LW a6, 0(t0)
  BLT a5, a6, bb47
  JAL zero, bb19
bb47:
  LW t0, 0(t0)
  SW t0, 0(t4)
  JAL zero, bb19
bb48:
  LUI t0, 1
  ADDIW t0, t0, 1504
  MULW t0, a3, t0
  ADD t0, t2, t0
  SLLIW a5, a0, 2
  ADD t4, t0, a5
  LW a6, 0(t4)
  SLLIW a5, a7, 2
  ADD a5, t0, a5
  LW t0, 0(a5)
  BLT a6, t0, bb49
  JAL zero, bb18
bb49:
  LW t0, 0(a5)
  SW t0, 0(t4)
  JAL zero, bb18
