.global main
.section .bss

c:
.space 4000000
b:
.space 4000000
a:
.space 4000000
.section .data
MAX:
.word 0x7fffffff



.section .text
main:
  ADDI sp, sp, -144
  SD ra, 40(sp)
  SD s3, 48(sp)
  SD s0, 56(sp)
  SD s1, 64(sp)
  SD s2, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s10, 96(sp)
  SD s11, 104(sp)
  SD s5, 112(sp)
  SD s6, 120(sp)
  SD s7, 128(sp)
  SD s4, 136(sp)
  ADD t4, zero, zero
  SW t4, 0(sp)
  # implict jump to bb1
bb1:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t4, 4(sp)
  SLTI s2, t4, 1000
  BNE s2, zero, bb42
  # implict jump to bb2
bb2:
  ADDI a0, zero, 23
  CALL _sysy_starttime
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb3
bb3:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 8(sp)
  SLTI s4, t4, 1000
  BNE s4, zero, bb38
  # implict jump to bb4
bb4:
  ADD t4, zero, zero
  SW t4, 28(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb5
bb5:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t4, 16(sp)
  SLTI s10, t4, 1000
  BNE s10, zero, bb31
  # implict jump to bb6
bb6:
  ADD s10, zero, zero
  # implict jump to bb7
bb7:
  ADD s11, s10, zero
  SLTI s0, s11, 1000
  BNE s0, zero, bb21
  # implict jump to bb8
bb8:
  ADD s0, zero, zero
  # implict jump to bb9
bb9:
  ADD s1, s0, zero
  SLTI s3, s1, 1000
  BNE s3, zero, bb17
  # implict jump to bb10
bb10:
  ADD s3, zero, zero
  ADD s2, zero, zero
  # implict jump to bb11
bb11:
  ADD s7, s2, zero
  ADD s6, s3, zero
  SLTI s5, s7, 1000
  BNE s5, zero, bb13
  # implict jump to bb12
bb12:
  ADDI a0, zero, 92
  CALL _sysy_stoptime
  ADD a0, s6, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s3, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  LD s5, 112(sp)
  LD s6, 120(sp)
  LD s7, 128(sp)
  LD s4, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb13:
  ADD s5, s6, zero
  ADD s6, zero, zero
  # implict jump to bb14
bb14:
  ADD s4, s6, zero
  ADD s8, s5, zero
  SLTI s9, s4, 1000
  BNE s9, zero, bb16
  # implict jump to bb15
bb15:
  ADDIW s9, s7, 1
  ADD s3, s8, zero
  ADD s2, s9, zero
  JAL zero, bb11
bb16:
  LUI s2, 1
  ADDIW s2, s2, -96
  MULW s2, s7, s2
  LA s3, c
  ADD s2, s3, s2
  SLLIW s3, s4, 2
  ADD s2, s2, s3
  LW s2, 0(s2)
  ADDW s2, s8, s2
  ADDIW s3, s4, 1
  ADD s5, s2, zero
  ADD s6, s3, zero
  JAL zero, bb14
bb17:
  ADD s2, zero, zero
  # implict jump to bb18
bb18:
  ADD s3, s2, zero
  SLTI s4, s3, 1000
  BNE s4, zero, bb20
  # implict jump to bb19
bb19:
  ADDIW s4, s1, 1
  ADD s0, s4, zero
  JAL zero, bb9
bb20:
  LUI s0, 1
  ADDIW s0, s0, -96
  MULW s0, s1, s0
  LA s4, c
  ADD s0, s4, s0
  SLLIW s4, s3, 2
  ADD s0, s0, s4
  LUI s4, 1
  ADDIW s4, s4, -96
  MULW s4, s3, s4
  LA s5, c
  ADD s4, s5, s4
  SLLIW s5, s1, 2
  ADD s4, s4, s5
  LW s4, 0(s4)
  SUBW s4, zero, s4
  SW s4, 0(s0)
  ADDIW s0, s3, 1
  ADD s2, s0, zero
  JAL zero, bb18
bb21:
  LUI s0, 524288
  ADDIW s0, s0, -1
  ADD s0, zero, s0
  ADD s1, zero, zero
  # implict jump to bb22
bb22:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s2, 1000
  BNE s4, zero, bb27
  # implict jump to bb23
bb23:
  ADD s4, zero, zero
  # implict jump to bb24
bb24:
  ADD s5, s4, zero
  SLTI s6, s5, 1000
  BNE s6, zero, bb26
  # implict jump to bb25
bb25:
  ADDIW s6, s11, 1
  ADD s10, s6, zero
  JAL zero, bb7
bb26:
  LUI s6, 1
  ADDIW s6, s6, -96
  MULW s6, s11, s6
  LA s7, c
  ADD s6, s7, s6
  SLLIW s7, s5, 2
  ADD s6, s6, s7
  SW s3, 0(s6)
  ADDIW s5, s5, 1
  ADD s4, s5, zero
  JAL zero, bb24
bb27:
  LUI s4, 1
  ADDIW s4, s4, -96
  MULW s4, s11, s4
  LA s5, c
  ADD s4, s5, s4
  SLLIW s5, s2, 2
  ADD s4, s4, s5
  LW s4, 0(s4)
  BLT s4, s3, bb30
  # implict jump to bb28
bb28:
  # implict jump to bb29
bb29:
  ADDIW s2, s2, 1
  ADD s0, s3, zero
  ADD s1, s2, zero
  JAL zero, bb22
bb30:
  ADD s3, s4, zero
  JAL zero, bb29
bb31:
  LW t4, 36(sp)
  ADD s0, t4, zero
  LW t4, 32(sp)
  ADD s1, t4, zero
  ADD s2, zero, zero
  # implict jump to bb32
bb32:
  ADD s3, s2, zero
  ADD s4, s1, zero
  ADD s5, s0, zero
  SLTI s6, s3, 1000
  BNE s6, zero, bb34
  # implict jump to bb33
bb33:
  LW t4, 16(sp)
  ADDIW s6, t4, 1
  ADD t4, s5, zero
  SW t4, 28(sp)
  ADD t4, s4, zero
  SW t4, 24(sp)
  ADD t4, s6, zero
  SW t4, 20(sp)
  JAL zero, bb5
bb34:
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb35
bb35:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s6, 1000
  BNE s8, zero, bb37
  # implict jump to bb36
bb36:
  LUI s8, 1
  ADDIW s8, s8, -96
  LW t4, 16(sp)
  MULW s8, t4, s8
  LA s9, c
  ADD s8, s9, s8
  SLLIW s9, s3, 2
  ADD s8, s8, s9
  SW s7, 0(s8)
  ADDIW s8, s3, 1
  ADD s0, s7, zero
  ADD s1, s6, zero
  ADD s2, s8, zero
  JAL zero, bb32
bb37:
  LUI s0, 1
  ADDIW s0, s0, -96
  LW t4, 16(sp)
  MULW s0, t4, s0
  LA s1, a
  ADD s0, s1, s0
  SLLIW s1, s6, 2
  ADD s0, s0, s1
  LW s0, 0(s0)
  LUI s1, 1
  ADDIW s1, s1, -96
  MULW s1, s6, s1
  LA s2, b
  ADD s1, s2, s1
  SLLIW s2, s3, 2
  ADD s1, s1, s2
  LW s1, 0(s1)
  MULW s0, s0, s1
  ADDW s0, s7, s0
  ADDIW s1, s6, 1
  ADD s4, s0, zero
  ADD s5, s1, zero
  JAL zero, bb35
bb38:
  ADD s0, zero, zero
  # implict jump to bb39
bb39:
  ADD s1, s0, zero
  SLTI s2, s1, 1000
  BNE s2, zero, bb41
  # implict jump to bb40
bb40:
  LW t4, 8(sp)
  ADDIW s2, t4, 1
  ADD t4, s2, zero
  SW t4, 12(sp)
  JAL zero, bb3
bb41:
  LUI s2, 1
  ADDIW s2, s2, -96
  LW t4, 8(sp)
  MULW s2, t4, s2
  LA s3, b
  ADD s2, s3, s2
  SLLIW s3, s1, 2
  ADD s2, s2, s3
  LUI s3, 1
  ADDIW s3, s3, -96
  MULW s3, s1, s3
  LA s4, a
  ADD s3, s4, s3
  LW t4, 8(sp)
  SLLIW s4, t4, 2
  ADD s3, s3, s4
  LW s3, 0(s3)
  SW s3, 0(s2)
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb39
bb42:
  LUI s0, 1
  ADDIW s0, s0, -96
  LW t4, 4(sp)
  MULW s0, t4, s0
  LA s1, a
  ADD s0, s1, s0
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  XORI s1, s0, 1000
  BNE s1, zero, bb44
  # implict jump to bb43
bb43:
  LW t4, 4(sp)
  ADDIW s1, t4, 1
  ADD t4, s1, zero
  SW t4, 0(sp)
  JAL zero, bb1
bb44:
  ADD a0, s0, zero
  LD ra, 40(sp)
  LD s3, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  LD s5, 112(sp)
  LD s6, 120(sp)
  LD s7, 128(sp)
  LD s4, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
