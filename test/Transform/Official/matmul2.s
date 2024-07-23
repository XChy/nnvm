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
  ADDI sp, sp, -160
  SD ra, 48(sp)
  SD s0, 56(sp)
  SD s1, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  SD s10, 104(sp)
  SD s11, 112(sp)
  SD s5, 120(sp)
  SD s6, 128(sp)
  SD s7, 136(sp)
  SD s4, 144(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb1
bb1:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 8(sp)
  SLTI s2, t4, 1000
  BNE s2, zero, bb42
  # implict jump to bb2
bb2:
  ADDI a0, zero, 23
  CALL _sysy_starttime
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb3
bb3:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t4, 12(sp)
  SLTI s4, t4, 1000
  BNE s4, zero, bb38
  # implict jump to bb4
bb4:
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, zero, zero
  SW t4, 28(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  # implict jump to bb5
bb5:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t4, 20(sp)
  SLTI s10, t4, 1000
  BNE s10, zero, bb31
  # implict jump to bb6
bb6:
  ADD s10, zero, zero
  # implict jump to bb7
bb7:
  ADD t4, s10, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  SLTI s0, t4, 1000
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
  LD ra, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s10, 104(sp)
  LD s11, 112(sp)
  LD s5, 120(sp)
  LD s6, 128(sp)
  LD s7, 136(sp)
  LD s4, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb13:
  LUI s5, 1
  ADDIW s5, s5, -96
  MULW s5, s7, s5
  LA s4, c
  ADD s4, s4, s5
  ADD s5, s6, zero
  ADD s6, zero, zero
  # implict jump to bb14
bb14:
  ADD s8, s6, zero
  ADD s9, s5, zero
  SLTI s11, s8, 1000
  BNE s11, zero, bb16
  # implict jump to bb15
bb15:
  ADDIW s11, s7, 1
  ADD s3, s9, zero
  ADD s2, s11, zero
  JAL zero, bb11
bb16:
  SLLIW s2, s8, 2
  ADD s2, s4, s2
  LW s2, 0(s2)
  ADDW s2, s9, s2
  ADDIW s3, s8, 1
  ADD s5, s2, zero
  ADD s6, s3, zero
  JAL zero, bb14
bb17:
  LUI s2, 1
  ADDIW s2, s2, -96
  MULW s2, s1, s2
  LA s3, c
  ADD s2, s3, s2
  SLLIW s3, s1, 2
  ADD s4, zero, zero
  # implict jump to bb18
bb18:
  ADD s5, s4, zero
  SLTI s6, s5, 1000
  BNE s6, zero, bb20
  # implict jump to bb19
bb19:
  ADDIW s6, s1, 1
  ADD s0, s6, zero
  JAL zero, bb9
bb20:
  SLLIW s0, s5, 2
  ADD s0, s2, s0
  LUI s6, 1
  ADDIW s6, s6, -96
  MULW s6, s5, s6
  LA s7, c
  ADD s6, s7, s6
  ADD s6, s6, s3
  LW s6, 0(s6)
  SUBW s6, zero, s6
  SW s6, 0(s0)
  ADDIW s0, s5, 1
  ADD s4, s0, zero
  JAL zero, bb18
bb21:
  LUI s0, 1
  ADDIW s0, s0, -96
  LW t4, 0(sp)
  MULW s0, t4, s0
  LA s1, c
  ADD s0, s1, s0
  LUI s1, 524288
  ADDIW s1, s1, -1
  ADD s1, zero, s1
  ADD s2, zero, zero
  # implict jump to bb22
bb22:
  ADD s3, s2, zero
  ADD s4, s1, zero
  SLTI s5, s3, 1000
  BNE s5, zero, bb27
  # implict jump to bb23
bb23:
  LUI s5, 1
  ADDIW s5, s5, -96
  LW t4, 0(sp)
  MULW s5, t4, s5
  LA s6, c
  ADD s5, s6, s5
  ADD s6, zero, zero
  # implict jump to bb24
bb24:
  ADD s7, s6, zero
  SLTI s8, s7, 1000
  BNE s8, zero, bb26
  # implict jump to bb25
bb25:
  LW t4, 0(sp)
  ADDIW s8, t4, 1
  ADD s10, s8, zero
  JAL zero, bb7
bb26:
  SLLIW s8, s7, 2
  ADD s8, s5, s8
  SW s4, 0(s8)
  ADDIW s7, s7, 1
  ADD s6, s7, zero
  JAL zero, bb24
bb27:
  SLLIW s5, s3, 2
  ADD s5, s0, s5
  LW s5, 0(s5)
  BLT s5, s4, bb30
  # implict jump to bb28
bb28:
  # implict jump to bb29
bb29:
  ADDIW s3, s3, 1
  ADD s1, s4, zero
  ADD s2, s3, zero
  JAL zero, bb22
bb30:
  ADD s4, s5, zero
  JAL zero, bb29
bb31:
  LUI s0, 1
  ADDIW s0, s0, -96
  LW t4, 20(sp)
  MULW s0, t4, s0
  LA s1, a
  ADD s0, s1, s0
  LUI s1, 1
  ADDIW s1, s1, -96
  LW t4, 20(sp)
  MULW s1, t4, s1
  LA s2, c
  ADD s1, s2, s1
  LW t4, 40(sp)
  ADD s2, t4, zero
  LW t4, 36(sp)
  ADD s3, t4, zero
  ADD s4, zero, zero
  # implict jump to bb32
bb32:
  ADD s5, s4, zero
  ADD s6, s3, zero
  ADD s7, s2, zero
  SLTI s8, s5, 1000
  BNE s8, zero, bb34
  # implict jump to bb33
bb33:
  LW t4, 20(sp)
  ADDIW s8, t4, 1
  ADD t4, s7, zero
  SW t4, 32(sp)
  ADD t4, s6, zero
  SW t4, 28(sp)
  ADD t4, s8, zero
  SW t4, 24(sp)
  JAL zero, bb5
bb34:
  SLLIW s6, s5, 2
  ADD s7, zero, zero
  ADD s8, zero, zero
  # implict jump to bb35
bb35:
  ADD s9, s8, zero
  ADD s10, s7, zero
  SLTI s11, s9, 1000
  BNE s11, zero, bb37
  # implict jump to bb36
bb36:
  SLLIW s11, s5, 2
  ADD s11, s1, s11
  SW s10, 0(s11)
  ADDIW s11, s5, 1
  ADD s2, s10, zero
  ADD s3, s9, zero
  ADD s4, s11, zero
  JAL zero, bb32
bb37:
  SLLIW s2, s9, 2
  ADD s2, s0, s2
  LW s2, 0(s2)
  LUI s3, 1
  ADDIW s3, s3, -96
  MULW s3, s9, s3
  LA s4, b
  ADD s3, s4, s3
  ADD s3, s3, s6
  LW s3, 0(s3)
  MULW s2, s2, s3
  ADDW s2, s10, s2
  ADDIW s3, s9, 1
  ADD s7, s2, zero
  ADD s8, s3, zero
  JAL zero, bb35
bb38:
  LUI s0, 1
  ADDIW s0, s0, -96
  LW t4, 12(sp)
  MULW s0, t4, s0
  LA s1, b
  ADD s0, s1, s0
  LW t4, 12(sp)
  SLLIW s1, t4, 2
  ADD s2, zero, zero
  # implict jump to bb39
bb39:
  ADD s3, s2, zero
  SLTI s4, s3, 1000
  BNE s4, zero, bb41
  # implict jump to bb40
bb40:
  LW t4, 12(sp)
  ADDIW s4, t4, 1
  ADD t4, s4, zero
  SW t4, 16(sp)
  JAL zero, bb3
bb41:
  SLLIW s4, s3, 2
  ADD s4, s0, s4
  LUI s5, 1
  ADDIW s5, s5, -96
  MULW s5, s3, s5
  LA s6, a
  ADD s5, s6, s5
  ADD s5, s5, s1
  LW s5, 0(s5)
  SW s5, 0(s4)
  ADDIW s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb39
bb42:
  LUI s0, 1
  ADDIW s0, s0, -96
  LW t4, 8(sp)
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
  LW t4, 8(sp)
  ADDIW s1, t4, 1
  ADD t4, s1, zero
  SW t4, 4(sp)
  JAL zero, bb1
bb44:
  ADD a0, s0, zero
  LD ra, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s10, 104(sp)
  LD s11, 112(sp)
  LD s5, 120(sp)
  LD s6, 128(sp)
  LD s7, 136(sp)
  LD s4, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
