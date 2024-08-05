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
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD t0, a1, zero
  ADDI t1, zero, 1
  SUBW a6, a0, t1
  SLT t1, a6, zero
  XORI t1, t1, 1
  BNE t1, zero, bb11
  # implict jump to bb2
bb2:
  BLT zero, a0, bb4
  # implict jump to bb3
bb3:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb4:
  ADD t1, zero, zero
  # implict jump to bb5
bb5:
  BLT zero, a0, bb8
  # implict jump to bb6
bb6:
  ADDIW t1, t1, 1
  BLT t1, a0, bb7
  JAL zero, bb3
bb7:
  JAL zero, bb5
bb8:
  LUI t0, 1
  ADDIW t0, t0, 1504
  MULW t0, t1, t0
  ADD t2, a2, t0
  ADD t0, zero, zero
  # implict jump to bb9
bb9:
  SLLIW a1, t0, 2
  ADD a1, t2, a1
  LW a3, 0(a1)
  ADDI a4, zero, 10
  REMW a3, a3, a4
  SW a3, 0(a1)
  ADDIW t0, t0, 1
  BLT t0, a0, bb10
  JAL zero, bb6
bb10:
  JAL zero, bb9
bb11:
  ADD t1, zero, zero
  ADD a3, zero, zero
  ADD a1, zero, zero
  # implict jump to bb12
bb12:
  ADDIW t2, a6, 1
  SLT a4, t2, a0
  BLT t2, a0, bb16
  # implict jump to bb13
bb13:
  # implict jump to bb14
bb14:
  ADDI t2, zero, 1
  SUBW a6, a6, t2
  SLT t2, a6, zero
  XORI t2, t2, 1
  BNE t2, zero, bb15
  JAL zero, bb2
bb15:
  JAL zero, bb12
bb16:
  ADD a5, t2, zero
  # implict jump to bb17
bb17:
  ADDI t1, zero, 1
  SUBW t1, a5, t1
  SLT a3, t1, zero
  XORI a3, a3, 1
  BNE a3, zero, bb48
  # implict jump to bb18
bb18:
  BLT t2, a0, bb46
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
  BLT t2, a5, bb28
  # implict jump to bb24
bb24:
  ADD t1, t2, zero
  # implict jump to bb25
bb25:
  ADDIW a5, a5, 1
  BLT a5, a0, bb27
  # implict jump to bb26
bb26:
  JAL zero, bb14
bb27:
  JAL zero, bb17
bb28:
  LUI t1, 1
  ADDIW t1, t1, 1504
  MULW t1, a6, t1
  ADD a7, a2, t1
  SLLIW t3, a5, 2
  ADD t4, a7, t3
  ADD t1, t2, zero
  # implict jump to bb29
bb29:
  LW t5, 0(t4)
  SLLIW s0, t1, 2
  ADD s0, a7, s0
  LW s1, 0(s0)
  ADDIW t1, t1, 1
  LUI s2, 1
  ADDIW s2, s2, 1504
  MULW s2, t1, s2
  ADD s2, a2, s2
  ADD s2, s2, t3
  LW s3, 0(s2)
  ADDW s1, s1, s3
  BLT t5, s1, bb33
  # implict jump to bb30
bb30:
  BLT t1, a5, bb32
  # implict jump to bb31
bb31:
  JAL zero, bb25
bb32:
  JAL zero, bb29
bb33:
  LW t5, 0(s0)
  LW s0, 0(s2)
  ADDW t5, t5, s0
  SW t5, 0(t4)
  JAL zero, bb30
bb34:
  BLT a6, t1, bb39
  # implict jump to bb35
bb35:
  LUI a7, 1
  ADDIW a7, a7, 1504
  MULW a7, a6, a7
  ADD a7, a2, a7
  SLLIW t3, a5, 2
  ADD a7, a7, t3
  LW t3, 0(a7)
  LUI t4, 1
  ADDIW t4, t4, 1504
  MULW t4, t2, t4
  ADD t4, a2, t4
  SLLIW t1, t1, 2
  ADD t1, t4, t1
  LW t4, 0(t1)
  BLT t3, t4, bb38
  # implict jump to bb36
bb36:
  # implict jump to bb37
bb37:
  JAL zero, bb23
bb38:
  LW t1, 0(t1)
  SW t1, 0(a7)
  JAL zero, bb36
bb39:
  SLLIW a1, a6, 2
  ADD a1, t0, a1
  LW a1, 0(a1)
  SLLIW a7, a5, 2
  ADD t3, t0, a7
  LW t3, 0(t3)
  ADDW a1, a1, t3
  XORI a1, a1, 3
  SLTIU a1, a1, 1
  BNE a1, zero, bb44
  # implict jump to bb40
bb40:
  ADD a1, zero, zero
  # implict jump to bb41
bb41:
  LUI t3, 1
  ADDIW t3, t3, 1504
  MULW t3, a6, t3
  ADD t3, a2, t3
  ADD a7, t3, a7
  LW t3, 0(a7)
  LUI t4, 1
  ADDIW t4, t4, 1504
  MULW t4, t2, t4
  ADD t4, a2, t4
  SLLIW t1, t1, 2
  ADD t1, t4, t1
  LW t4, 0(t1)
  ADDW t4, t4, a1
  BLT t3, t4, bb43
  # implict jump to bb42
bb42:
  JAL zero, bb37
bb43:
  LW t1, 0(t1)
  ADDW t1, t1, a1
  SW t1, 0(a7)
  JAL zero, bb42
bb44:
  ADDI a1, zero, 1
  JAL zero, bb41
bb45:
  ADD a3, a4, zero
  JAL zero, bb21
bb46:
  LUI a7, 1
  ADDIW a7, a7, 1504
  MULW a7, a6, a7
  ADD a7, a2, a7
  SLLIW t3, a5, 2
  ADD a7, a7, t3
  LW t4, 0(a7)
  LUI t5, 1
  ADDIW t5, t5, 1504
  MULW t5, t2, t5
  ADD t5, a2, t5
  ADD t3, t5, t3
  LW t5, 0(t3)
  BLT t4, t5, bb47
  JAL zero, bb19
bb47:
  LW t3, 0(t3)
  SW t3, 0(a7)
  JAL zero, bb19
bb48:
  LUI a7, 1
  ADDIW a7, a7, 1504
  MULW a7, a6, a7
  ADD a7, a2, a7
  SLLIW t3, a5, 2
  ADD t3, a7, t3
  LW t4, 0(t3)
  SLLIW t5, t1, 2
  ADD a7, a7, t5
  LW t5, 0(a7)
  BLT t4, t5, bb49
  JAL zero, bb18
bb49:
  LW a7, 0(a7)
  SW a7, 0(t3)
  JAL zero, bb18
