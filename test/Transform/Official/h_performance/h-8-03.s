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
  SD s0, 8(sp)
  LA s0, seq
  ADD a0, s0, zero
  CALL getarray
  LA s0, table
  ADD a0, s0, zero
  CALL getarray
  ADDI a0, zero, 79
  CALL _sysy_starttime
  LA s0, n
  LW s0, 0(s0)
  ADD a0, s0, zero
  LA s0, seq
  ADD a1, s0, zero
  LA s0, table
  ADD a2, s0, zero
  CALL kernel_nussinov
  ADDI a0, zero, 81
  CALL _sysy_stoptime
  LA s0, n
  LW s0, 0(s0)
  MULW s0, s0, s0
  ADD a0, s0, zero
  LA s0, table
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
kernel_nussinov:
  ADDI sp, sp, -160
  SD ra, 24(sp)
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s5, 72(sp)
  SD s6, 80(sp)
  SD s7, 88(sp)
  SD s8, 96(sp)
  SD s9, 104(sp)
  SD s10, 112(sp)
  SD s11, 120(sp)
  ADD t4, a0, zero
  SW t4, 8(sp)
  ADD t4, a1, zero
  SD t4, 144(sp)
  ADD t4, a2, zero
  SD t4, 152(sp)
  ADDI s0, zero, 1
  LW t4, 8(sp)
  SUBW s0, t4, s0
  SLT s1, s0, zero
  XORI s1, s1, 1
  BNE s1, zero, bb11
  # implict jump to bb2
bb2:
  LW t4, 8(sp)
  BLT zero, t4, bb4
  # implict jump to bb3
bb3:
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD s10, 112(sp)
  LD s11, 120(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb4:
  ADD a1, zero, zero
  # implict jump to bb5
bb5:
  ADD a2, a1, zero
  LW t4, 8(sp)
  BLT zero, t4, bb8
  # implict jump to bb6
bb6:
  ADDIW t2, a2, 1
  LW t4, 8(sp)
  BLT t2, t4, bb7
  JAL zero, bb3
bb7:
  ADD a1, t2, zero
  JAL zero, bb5
bb8:
  LUI a5, 1
  ADDIW a5, a5, 1504
  MULW a5, a2, a5
  LD t4, 152(sp)
  ADD a5, t4, a5
  ADD a6, zero, zero
  # implict jump to bb9
bb9:
  ADD t2, a6, zero
  SLLIW a4, t2, 2
  ADD a4, a5, a4
  LW a3, 0(a4)
  ADDI t1, zero, 10
  REMW t1, a3, t1
  SW t1, 0(a4)
  ADDIW t1, t2, 1
  LW t4, 8(sp)
  BLT t1, t4, bb10
  JAL zero, bb6
bb10:
  ADD a6, t1, zero
  JAL zero, bb9
bb11:
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  # implict jump to bb12
bb12:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  ADD s7, s0, zero
  ADDIW s8, s7, 1
  LW t4, 8(sp)
  SLT s9, s8, t4
  LW t4, 8(sp)
  BLT s8, t4, bb16
  # implict jump to bb13
bb13:
  ADD s10, s4, zero
  # implict jump to bb14
bb14:
  ADDI t0, zero, 1
  SUBW t0, s7, t0
  SLT a1, t0, zero
  XORI a1, a1, 1
  BNE a1, zero, bb15
  JAL zero, bb2
bb15:
  ADD s0, t0, zero
  ADD s1, s6, zero
  ADD s2, s5, zero
  ADD s3, s10, zero
  JAL zero, bb12
bb16:
  ADD s11, s8, zero
  # implict jump to bb17
bb17:
  ADD t0, s4, zero
  ADD t4, s11, zero
  SW t4, 4(sp)
  ADDI t2, zero, 1
  LW t4, 4(sp)
  SUBW t2, t4, t2
  SLT a3, t2, zero
  XORI a3, a3, 1
  BNE a3, zero, bb48
  # implict jump to bb18
bb18:
  LW t4, 8(sp)
  BLT s8, t4, bb46
  # implict jump to bb19
bb19:
  BNE a3, zero, bb45
  # implict jump to bb20
bb20:
  ADD a3, zero, zero
  # implict jump to bb21
bb21:
  ADD t4, a3, zero
  SB t4, 0(sp)
  LB t4, 0(sp)
  BNE t4, zero, bb34
  # implict jump to bb22
bb22:
  ADD a4, t0, zero
  # implict jump to bb23
bb23:
  ADD t4, a4, zero
  SW t4, 16(sp)
  LW t4, 4(sp)
  BLT s8, t4, bb28
  # implict jump to bb24
bb24:
  ADD t0, s8, zero
  # implict jump to bb25
bb25:
  LW t4, 4(sp)
  ADDIW a0, t4, 1
  LW t4, 8(sp)
  BLT a0, t4, bb27
  # implict jump to bb26
bb26:
  ADD s6, t0, zero
  LB t4, 0(sp)
  ADD s5, t4, zero
  LW t4, 16(sp)
  ADD s10, t4, zero
  JAL zero, bb14
bb27:
  ADD s11, a0, zero
  LW t4, 16(sp)
  ADD s4, t4, zero
  JAL zero, bb17
bb28:
  LUI t2, 1
  ADDIW t2, t2, 1504
  MULW t2, s7, t2
  LD t3, 152(sp)
  ADD t4, t3, t2
  SD t4, 128(sp)
  LW t3, 4(sp)
  SLLIW t4, t3, 2
  SW t4, 12(sp)
  LD t3, 128(sp)
  LW t4, 12(sp)
  ADD t4, t3, t4
  SD t4, 136(sp)
  ADD a7, s8, zero
  # implict jump to bb29
bb29:
  ADD t6, a7, zero
  LD t4, 136(sp)
  LW a2, 0(t4)
  SLLIW a1, t6, 2
  LD t4, 128(sp)
  ADD a1, t4, a1
  LW a0, 0(a1)
  ADDIW t6, t6, 1
  LUI a6, 1
  ADDIW a6, a6, 1504
  MULW a6, t6, a6
  LD t4, 152(sp)
  ADD a6, t4, a6
  LW t4, 12(sp)
  ADD a6, a6, t4
  LW a5, 0(a6)
  ADDW a0, a0, a5
  BLT a2, a0, bb33
  # implict jump to bb30
bb30:
  LW t4, 4(sp)
  BLT t6, t4, bb32
  # implict jump to bb31
bb31:
  ADD t0, t6, zero
  JAL zero, bb25
bb32:
  ADD a7, t6, zero
  JAL zero, bb29
bb33:
  LW a0, 0(a1)
  LW a1, 0(a6)
  ADDW a0, a0, a1
  LD t4, 136(sp)
  SW a0, 0(t4)
  JAL zero, bb30
bb34:
  BLT s7, t2, bb39
  # implict jump to bb35
bb35:
  LUI a5, 1
  ADDIW a5, a5, 1504
  MULW a5, s7, a5
  LD t4, 152(sp)
  ADD a5, t4, a5
  LW t4, 4(sp)
  SLLIW a6, t4, 2
  ADD a5, a5, a6
  LW a6, 0(a5)
  LUI a7, 1
  ADDIW a7, a7, 1504
  MULW a7, s8, a7
  LD t4, 152(sp)
  ADD a7, t4, a7
  SLLIW t6, t2, 2
  ADD a7, a7, t6
  LW t6, 0(a7)
  BLT a6, t6, bb38
  # implict jump to bb36
bb36:
  # implict jump to bb37
bb37:
  ADD a4, t0, zero
  JAL zero, bb23
bb38:
  LW a6, 0(a7)
  SW a6, 0(a5)
  JAL zero, bb36
bb39:
  SLLIW a5, s7, 2
  LD t4, 144(sp)
  ADD a5, t4, a5
  LW a5, 0(a5)
  LW t4, 4(sp)
  SLLIW a6, t4, 2
  LD t4, 144(sp)
  ADD a7, t4, a6
  LW a7, 0(a7)
  ADDW a5, a5, a7
  XORI a5, a5, 3
  SLTIU a5, a5, 1
  BNE a5, zero, bb44
  # implict jump to bb40
bb40:
  ADD a5, zero, zero
  # implict jump to bb41
bb41:
  LUI a7, 1
  ADDIW a7, a7, 1504
  MULW a7, s7, a7
  LD t4, 152(sp)
  ADD a7, t4, a7
  ADD a6, a7, a6
  LW a7, 0(a6)
  LUI t6, 1
  ADDIW t6, t6, 1504
  MULW t6, s8, t6
  LD t4, 152(sp)
  ADD t6, t4, t6
  SLLIW t2, t2, 2
  ADD t2, t6, t2
  LW t6, 0(t2)
  ADDW t6, t6, a5
  BLT a7, t6, bb43
  # implict jump to bb42
bb42:
  ADD t0, a5, zero
  JAL zero, bb37
bb43:
  LW t2, 0(t2)
  ADDW t2, t2, a5
  SW t2, 0(a6)
  JAL zero, bb42
bb44:
  ADDI a5, zero, 1
  JAL zero, bb41
bb45:
  ADD a3, s9, zero
  JAL zero, bb21
bb46:
  LUI a4, 1
  ADDIW a4, a4, 1504
  MULW a4, s7, a4
  LD t4, 152(sp)
  ADD a4, t4, a4
  LW t4, 4(sp)
  SLLIW a5, t4, 2
  ADD a4, a4, a5
  LW a6, 0(a4)
  LUI a7, 1
  ADDIW a7, a7, 1504
  MULW a7, s8, a7
  LD t4, 152(sp)
  ADD a7, t4, a7
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
  MULW a4, s7, a4
  LD t4, 152(sp)
  ADD a4, t4, a4
  LW t4, 4(sp)
  SLLIW a5, t4, 2
  ADD a5, a4, a5
  LW a6, 0(a5)
  SLLIW a7, t2, 2
  ADD a4, a4, a7
  LW a7, 0(a4)
  BLT a6, a7, bb49
  JAL zero, bb18
bb49:
  LW a4, 0(a4)
  SW a4, 0(a5)
  JAL zero, bb18
