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
  ADDI sp, sp, -128
  SD s9, 24(sp)
  SD s8, 32(sp)
  SD s11, 40(sp)
  SD s0, 48(sp)
  SD s5, 56(sp)
  SD s10, 64(sp)
  SD s1, 72(sp)
  SD s6, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  SD s7, 112(sp)
  SD ra, 120(sp)
  ADD s0, zero, zero
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  SLTI s2, s1, 1000
  BNE s2, zero, bb42
  # implict jump to bb2
bb2:
  ADDI a0, zero, 23
  CALL _sysy_starttime
  ADD s0, zero, zero
  # implict jump to bb3
bb3:
  ADD s1, s0, zero
  SLTI s2, s1, 1000
  BNE s2, zero, bb38
  # implict jump to bb4
bb4:
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  ADD t4, zero, zero
  SW t4, 0(sp)
  # implict jump to bb5
bb5:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t4, 8(sp)
  ADD s4, t4, zero
  LW t4, 16(sp)
  ADD s5, t4, zero
  LW t4, 20(sp)
  SLTI s6, t4, 1000
  BNE s6, zero, bb31
  # implict jump to bb6
bb6:
  ADD s0, zero, zero
  # implict jump to bb7
bb7:
  ADD s1, s0, zero
  SLTI s2, s1, 1000
  BNE s2, zero, bb21
  # implict jump to bb8
bb8:
  ADD s0, zero, zero
  # implict jump to bb9
bb9:
  ADD s1, s0, zero
  SLTI s2, s1, 1000
  BNE s2, zero, bb17
  # implict jump to bb10
bb10:
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb11
bb11:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s2, 1000
  BNE s4, zero, bb13
  # implict jump to bb12
bb12:
  ADDI a0, zero, 92
  CALL _sysy_stoptime
  ADD a0, s3, zero
  CALL putint
  ADD a0, zero, zero
  LD s9, 24(sp)
  LD s8, 32(sp)
  LD s11, 40(sp)
  LD s0, 48(sp)
  LD s5, 56(sp)
  LD s10, 64(sp)
  LD s1, 72(sp)
  LD s6, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD s7, 112(sp)
  LD ra, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb13:
  ADD s4, s3, zero
  ADD s5, zero, zero
  # implict jump to bb14
bb14:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s6, 1000
  BNE s8, zero, bb16
  # implict jump to bb15
bb15:
  ADDIW s4, s2, 1
  ADD s0, s7, zero
  ADD s1, s4, zero
  JAL zero, bb11
bb16:
  LUI s8, 1
  ADDIW s8, s8, -96
  MULW s9, s2, s8
  LA s8, c
  ADD s10, s8, s9
  SLLIW s8, s6, 2
  ADD s9, s10, s8
  LW s8, 0(s9)
  ADDW s9, s7, s8
  ADDIW s8, s6, 1
  ADD s4, s9, zero
  ADD s5, s8, zero
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
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb9
bb20:
  LUI s4, 1
  ADDIW s4, s4, -96
  MULW s5, s1, s4
  LA s4, c
  ADD s6, s4, s5
  SLLIW s4, s3, 2
  ADD s5, s6, s4
  LUI s4, 1
  ADDIW s4, s4, -96
  MULW s6, s3, s4
  LA s4, c
  ADD s7, s4, s6
  SLLIW s4, s1, 2
  ADD s6, s7, s4
  LW s4, 0(s6)
  SUBW s6, zero, s4
  SW s6, 0(s5)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb18
bb21:
  LUI s2, 524288
  ADDIW s2, s2, -1
  ADD s3, zero, s2
  ADD s2, zero, zero
  # implict jump to bb22
bb22:
  ADD s4, s2, zero
  ADD s5, s3, zero
  SLTI s6, s4, 1000
  BNE s6, zero, bb27
  # implict jump to bb23
bb23:
  ADD s2, zero, zero
  # implict jump to bb24
bb24:
  ADD s3, s2, zero
  SLTI s4, s3, 1000
  BNE s4, zero, bb26
  # implict jump to bb25
bb25:
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb7
bb26:
  LUI s4, 1
  ADDIW s4, s4, -96
  MULW s6, s1, s4
  LA s4, c
  ADD s7, s4, s6
  SLLIW s4, s3, 2
  ADD s6, s7, s4
  SW s5, 0(s6)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb24
bb27:
  LUI s6, 1
  ADDIW s6, s6, -96
  MULW s7, s1, s6
  LA s6, c
  ADD s8, s6, s7
  SLLIW s6, s4, 2
  ADD s7, s8, s6
  LW s6, 0(s7)
  SLT s8, s6, s5
  BNE s8, zero, bb30
  # implict jump to bb28
bb28:
  ADD s7, s5, zero
  # implict jump to bb29
bb29:
  ADD s6, s7, zero
  ADDIW s8, s4, 1
  ADD s3, s6, zero
  ADD s2, s8, zero
  JAL zero, bb22
bb30:
  LW s6, 0(s7)
  ADD s7, s6, zero
  JAL zero, bb29
bb31:
  ADD s6, s5, zero
  ADD s5, s4, zero
  ADD s4, zero, zero
  # implict jump to bb32
bb32:
  ADD s7, s4, zero
  ADD t4, s5, zero
  SW t4, 4(sp)
  ADD t4, s6, zero
  SW t4, 12(sp)
  SLTI s10, s7, 1000
  BNE s10, zero, bb34
  # implict jump to bb33
bb33:
  LW t4, 20(sp)
  ADDIW s0, t4, 1
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb5
bb34:
  ADD s10, zero, zero
  ADD s11, zero, zero
  # implict jump to bb35
bb35:
  ADD s2, s11, zero
  ADD s8, s10, zero
  SLTI s1, s2, 1000
  BNE s1, zero, bb37
  # implict jump to bb36
bb36:
  LUI s0, 1
  ADDIW s0, s0, -96
  LW t4, 20(sp)
  MULW s1, t4, s0
  LA s0, c
  ADD s3, s0, s1
  SLLIW s0, s7, 2
  ADD s1, s3, s0
  SW s8, 0(s1)
  ADDIW s0, s7, 1
  ADD s6, s8, zero
  ADD s5, s2, zero
  ADD s4, s0, zero
  JAL zero, bb32
bb37:
  LUI s1, 1
  ADDIW s1, s1, -96
  LW t4, 20(sp)
  MULW s9, t4, s1
  LA s1, a
  ADD s0, s1, s9
  SLLIW s1, s2, 2
  ADD s9, s0, s1
  LW s0, 0(s9)
  LUI s1, 1
  ADDIW s1, s1, -96
  MULW s9, s2, s1
  LA s1, b
  ADD s3, s1, s9
  SLLIW s1, s7, 2
  ADD s9, s3, s1
  LW s1, 0(s9)
  MULW s3, s0, s1
  ADDW s0, s8, s3
  ADDIW s1, s2, 1
  ADD s10, s0, zero
  ADD s11, s1, zero
  JAL zero, bb35
bb38:
  ADD s2, zero, zero
  # implict jump to bb39
bb39:
  ADD s3, s2, zero
  SLTI s4, s3, 1000
  BNE s4, zero, bb41
  # implict jump to bb40
bb40:
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb3
bb41:
  LUI s4, 1
  ADDIW s4, s4, -96
  MULW s5, s1, s4
  LA s4, b
  ADD s6, s4, s5
  SLLIW s4, s3, 2
  ADD s5, s6, s4
  LUI s4, 1
  ADDIW s4, s4, -96
  MULW s6, s3, s4
  LA s4, a
  ADD s7, s4, s6
  SLLIW s4, s1, 2
  ADD s6, s7, s4
  LW s4, 0(s6)
  SW s4, 0(s5)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb39
bb42:
  LUI s2, 1
  ADDIW s2, s2, -96
  MULW s3, s1, s2
  LA s2, a
  ADD s4, s2, s3
  ADD a0, s4, zero
  CALL getarray
  ADD s2, a0, zero
  XORI s3, s2, 1000
  SLTU s4, zero, s3
  BNE s4, zero, bb44
  # implict jump to bb43
bb43:
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb1
bb44:
  ADD a0, s2, zero
  LD s9, 24(sp)
  LD s8, 32(sp)
  LD s11, 40(sp)
  LD s0, 48(sp)
  LD s5, 56(sp)
  LD s10, 64(sp)
  LD s1, 72(sp)
  LD s6, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD s7, 112(sp)
  LD ra, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
