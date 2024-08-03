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
  ADD a3, a1, zero
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
  ADD a3, t0, zero
  BLT zero, t1, bb8
  # implict jump to bb6
bb6:
  ADDIW t0, a3, 1
  BLT t0, t1, bb7
  JAL zero, bb3
bb7:
  JAL zero, bb5
bb8:
  LUI t0, 1
  ADDIW t0, t0, 1504
  MULW t0, a3, t0
  ADD a0, t2, t0
  ADD t0, zero, zero
  # implict jump to bb9
bb9:
  ADD a4, t0, zero
  SLLIW t0, a4, 2
  ADD a2, a0, t0
  LW a1, 0(a2)
  ADDI t0, zero, 10
  REMW t0, a1, t0
  SW t0, 0(a2)
  ADDIW t0, a4, 1
  BLT t0, t1, bb10
  JAL zero, bb6
bb10:
  JAL zero, bb9
bb11:
  ADD a1, a0, zero
  ADD a2, zero, zero
  ADD t0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb12
bb12:
  ADD a6, a0, zero
  ADD a0, a2, zero
  ADD a2, a1, zero
  ADDIW a4, a2, 1
  SLT a1, a4, t1
  BLT a4, t1, bb16
  # implict jump to bb13
bb13:
  ADD a1, a0, zero
  ADD a0, t0, zero
  ADD t0, a6, zero
  # implict jump to bb14
bb14:
  ADD a5, t0, zero
  ADD a4, a0, zero
  ADD a0, a1, zero
  ADDI t0, zero, 1
  SUBW a1, a2, t0
  SLT t0, a1, zero
  XORI t0, t0, 1
  BNE t0, zero, bb15
  JAL zero, bb2
bb15:
  ADD a2, a0, zero
  ADD t0, a4, zero
  ADD a0, a5, zero
  JAL zero, bb12
bb16:
  ADD a5, a4, zero
  ADD t0, a6, zero
  # implict jump to bb17
bb17:
  ADD a0, t0, zero
  ADDI t0, zero, 1
  SUBW t3, a5, t0
  SLT t0, t3, zero
  XORI a6, t0, 1
  BNE a6, zero, bb48
  # implict jump to bb18
bb18:
  BLT a4, t1, bb46
  # implict jump to bb19
bb19:
  BNE a6, zero, bb45
  # implict jump to bb20
bb20:
  ADD t0, zero, zero
  # implict jump to bb21
bb21:
  ADD a6, t0, zero
  BNE a6, zero, bb34
  # implict jump to bb22
bb22:
  ADD t0, a0, zero
  # implict jump to bb23
bb23:
  ADD t3, t0, zero
  BLT a4, a5, bb28
  # implict jump to bb24
bb24:
  ADD t0, a4, zero
  # implict jump to bb25
bb25:
  ADD a0, t0, zero
  ADDIW t0, a5, 1
  BLT t0, t1, bb27
  # implict jump to bb26
bb26:
  ADD a1, a0, zero
  ADD a0, a6, zero
  ADD t0, t3, zero
  JAL zero, bb14
bb27:
  ADD a5, t0, zero
  ADD t0, t3, zero
  JAL zero, bb17
bb28:
  LUI t0, 1
  ADDIW t0, t0, 1504
  MULW t0, a2, t0
  ADD a7, t2, t0
  SLLIW t5, a5, 2
  ADD t4, a7, t5
  ADD t0, a4, zero
  # implict jump to bb29
bb29:
  LW a0, 0(t4)
  SLLIW t6, t0, 2
  ADD s1, a7, t6
  LW s0, 0(s1)
  ADDIW t6, t0, 1
  LUI t0, 1
  ADDIW t0, t0, 1504
  MULW t0, t6, t0
  ADD t0, t2, t0
  ADD s2, t0, t5
  LW t0, 0(s2)
  ADDW t0, s0, t0
  BLT a0, t0, bb33
  # implict jump to bb30
bb30:
  BLT t6, a5, bb32
  # implict jump to bb31
bb31:
  ADD t0, t6, zero
  JAL zero, bb25
bb32:
  ADD t0, t6, zero
  JAL zero, bb29
bb33:
  LW t0, 0(s1)
  LW a0, 0(s2)
  ADDW t0, t0, a0
  SW t0, 0(t4)
  JAL zero, bb30
bb34:
  BLT a2, t3, bb39
  # implict jump to bb35
bb35:
  LUI t0, 1
  ADDIW t0, t0, 1504
  MULW t0, a2, t0
  ADD a7, t2, t0
  SLLIW t0, a5, 2
  ADD a7, a7, t0
  LW t4, 0(a7)
  LUI t0, 1
  ADDIW t0, t0, 1504
  MULW t0, a4, t0
  ADD t5, t2, t0
  SLLIW t0, t3, 2
  ADD t0, t5, t0
  LW t3, 0(t0)
  BLT t4, t3, bb38
  # implict jump to bb36
bb36:
  ADD t0, a0, zero
  # implict jump to bb37
bb37:
  JAL zero, bb23
bb38:
  LW t0, 0(t0)
  SW t0, 0(a7)
  JAL zero, bb36
bb39:
  SLLIW t0, a2, 2
  ADD t0, a3, t0
  LW a7, 0(t0)
  SLLIW a0, a5, 2
  ADD t0, a3, a0
  LW t0, 0(t0)
  ADDW t0, a7, t0
  XORI t0, t0, 3
  SLTIU t0, t0, 1
  BNE t0, zero, bb44
  # implict jump to bb40
bb40:
  ADD t0, zero, zero
  # implict jump to bb41
bb41:
  ADD t4, t0, zero
  LUI t0, 1
  ADDIW t0, t0, 1504
  MULW t0, a2, t0
  ADD t0, t2, t0
  ADD a7, t0, a0
  LW a0, 0(a7)
  LUI t0, 1
  ADDIW t0, t0, 1504
  MULW t0, a4, t0
  ADD t0, t2, t0
  SLLIW t3, t3, 2
  ADD t3, t0, t3
  LW t0, 0(t3)
  ADDW t0, t0, t4
  BLT a0, t0, bb43
  # implict jump to bb42
bb42:
  ADD t0, t4, zero
  JAL zero, bb37
bb43:
  LW t0, 0(t3)
  ADDW t0, t0, t4
  SW t0, 0(a7)
  JAL zero, bb42
bb44:
  ADDI t0, zero, 1
  JAL zero, bb41
bb45:
  ADD t0, a1, zero
  JAL zero, bb21
bb46:
  LUI t0, 1
  ADDIW t0, t0, 1504
  MULW t0, a2, t0
  ADD t0, t2, t0
  SLLIW t5, a5, 2
  ADD t4, t0, t5
  LW a7, 0(t4)
  LUI t0, 1
  ADDIW t0, t0, 1504
  MULW t0, a4, t0
  ADD t0, t2, t0
  ADD t5, t0, t5
  LW t0, 0(t5)
  BLT a7, t0, bb47
  JAL zero, bb19
bb47:
  LW t0, 0(t5)
  SW t0, 0(t4)
  JAL zero, bb19
bb48:
  LUI t0, 1
  ADDIW t0, t0, 1504
  MULW t0, a2, t0
  ADD a7, t2, t0
  SLLIW t0, a5, 2
  ADD t4, a7, t0
  LW t5, 0(t4)
  SLLIW t0, t3, 2
  ADD t0, a7, t0
  LW a7, 0(t0)
  BLT t5, a7, bb49
  JAL zero, bb18
bb49:
  LW t0, 0(t0)
  SW t0, 0(t4)
  JAL zero, bb18
