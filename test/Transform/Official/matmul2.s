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
  SD s9, 48(sp)
  SD s8, 56(sp)
  SD s11, 64(sp)
  SD s0, 72(sp)
  SD s5, 80(sp)
  SD s10, 88(sp)
  SD s1, 96(sp)
  SD s6, 104(sp)
  SD s2, 112(sp)
  SD s3, 120(sp)
  SD s4, 128(sp)
  SD s7, 136(sp)
  SD ra, 144(sp)
  ADD s0, zero, zero
  JAL zero, bb1
bb1:
  ADD s1, s0, zero
  SLTI s2, s1, 1000
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
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
  BNE s4, zero, bb4
  JAL zero, bb5
bb3:
  ADDI a0, zero, 23
  CALL _sysy_starttime
  ADD s0, zero, zero
  JAL zero, bb6
bb4:
  ADD a0, s2, zero
  LD s9, 48(sp)
  LD s8, 56(sp)
  LD s11, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s10, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD s7, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb5:
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb1
bb6:
  ADD s1, s0, zero
  SLTI s2, s1, 1000
  BNE s2, zero, bb7
  JAL zero, bb8
bb7:
  ADD s2, zero, zero
  JAL zero, bb9
bb8:
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 0(sp)
  JAL zero, bb12
bb9:
  ADD s3, s2, zero
  SLTI s4, s3, 1000
  BNE s4, zero, bb10
  JAL zero, bb11
bb10:
  LUI s4, 1
  ADDIW s4, s4, -96
  MULW s5, s1, s4
  LA s4, b
  ADD s6, s4, s5
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s4, s6, s5
  LUI s5, 1
  ADDIW s5, s5, -96
  MULW s6, s3, s5
  LA s5, a
  ADD s7, s5, s6
  ADDI s5, zero, 4
  MULW s6, s1, s5
  ADD s5, s7, s6
  LW s6, 0(s5)
  SW s6, 0(s4)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb9
bb11:
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb6
bb12:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t4, 16(sp)
  ADD s4, t4, zero
  LW t4, 32(sp)
  ADD s5, t4, zero
  LW t4, 40(sp)
  SLTI s6, t4, 1000
  BNE s6, zero, bb13
  JAL zero, bb14
bb13:
  ADD s6, s5, zero
  ADD s5, s4, zero
  ADD s4, zero, zero
  JAL zero, bb15
bb14:
  ADD s0, zero, zero
  JAL zero, bb21
bb15:
  ADD s7, s4, zero
  ADD t4, s5, zero
  SW t4, 8(sp)
  ADD t4, s6, zero
  SW t4, 24(sp)
  SLTI s10, s7, 1000
  BNE s10, zero, bb16
  JAL zero, bb17
bb16:
  ADD s10, zero, zero
  ADD s11, zero, zero
  JAL zero, bb18
bb17:
  LW t4, 40(sp)
  ADDIW s0, t4, 1
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb12
bb18:
  ADD s2, s11, zero
  ADD s8, s10, zero
  SLTI s1, s2, 1000
  BNE s1, zero, bb19
  JAL zero, bb20
bb19:
  LUI s1, 1
  ADDIW s1, s1, -96
  LW t4, 40(sp)
  MULW s9, t4, s1
  LA s1, a
  ADD s0, s1, s9
  ADDI s1, zero, 4
  MULW s9, s2, s1
  ADD s1, s0, s9
  LW s0, 0(s1)
  LUI s1, 1
  ADDIW s1, s1, -96
  MULW s9, s2, s1
  LA s1, b
  ADD s3, s1, s9
  ADDI s1, zero, 4
  MULW s9, s7, s1
  ADD s1, s3, s9
  LW s3, 0(s1)
  MULW s1, s0, s3
  ADDW s0, s8, s1
  ADDIW s1, s2, 1
  ADD s10, s0, zero
  ADD s11, s1, zero
  JAL zero, bb18
bb20:
  LUI s0, 1
  ADDIW s0, s0, -96
  LW t4, 40(sp)
  MULW s1, t4, s0
  LA s0, c
  ADD s3, s0, s1
  ADDI s0, zero, 4
  MULW s1, s7, s0
  ADD s0, s3, s1
  SW s8, 0(s0)
  ADDIW s0, s7, 1
  ADD s6, s8, zero
  ADD s5, s2, zero
  ADD s4, s0, zero
  JAL zero, bb15
bb21:
  ADD s1, s0, zero
  SLTI s2, s1, 1000
  BNE s2, zero, bb22
  JAL zero, bb23
bb22:
  LUI s2, 524288
  ADDIW s2, s2, -1
  ADD s3, zero, s2
  ADD s2, zero, zero
  JAL zero, bb24
bb23:
  ADD s0, zero, zero
  JAL zero, bb32
bb24:
  ADD s4, s2, zero
  ADD s5, s3, zero
  SLTI s6, s4, 1000
  BNE s6, zero, bb25
  JAL zero, bb26
bb25:
  LUI s6, 1
  ADDIW s6, s6, -96
  MULW s7, s1, s6
  LA s6, c
  ADD s8, s6, s7
  ADDI s6, zero, 4
  MULW s7, s4, s6
  ADD s6, s8, s7
  LW s7, 0(s6)
  SLT s8, s7, s5
  BNE s8, zero, bb27
  JAL zero, bb44
bb26:
  ADD s2, zero, zero
  JAL zero, bb29
bb27:
  LW s7, 0(s6)
  ADD s6, s7, zero
  JAL zero, bb28
bb28:
  ADD s7, s6, zero
  ADDIW s8, s4, 1
  ADD s3, s7, zero
  ADD s2, s8, zero
  JAL zero, bb24
bb29:
  ADD s3, s2, zero
  SLTI s4, s3, 1000
  BNE s4, zero, bb30
  JAL zero, bb31
bb30:
  LUI s4, 1
  ADDIW s4, s4, -96
  MULW s6, s1, s4
  LA s4, c
  ADD s7, s4, s6
  ADDI s4, zero, 4
  MULW s6, s3, s4
  ADD s4, s7, s6
  SW s5, 0(s4)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb29
bb31:
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb21
bb32:
  ADD s1, s0, zero
  SLTI s2, s1, 1000
  BNE s2, zero, bb33
  JAL zero, bb34
bb33:
  ADD s2, zero, zero
  JAL zero, bb35
bb34:
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb38
bb35:
  ADD s3, s2, zero
  SLTI s4, s3, 1000
  BNE s4, zero, bb36
  JAL zero, bb37
bb36:
  LUI s4, 1
  ADDIW s4, s4, -96
  MULW s5, s1, s4
  LA s4, c
  ADD s6, s4, s5
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s4, s6, s5
  LUI s5, 1
  ADDIW s5, s5, -96
  MULW s6, s3, s5
  LA s5, c
  ADD s7, s5, s6
  ADDI s5, zero, 4
  MULW s6, s1, s5
  ADD s5, s7, s6
  LW s6, 0(s5)
  SUBW s5, zero, s6
  SW s5, 0(s4)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb35
bb37:
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb32
bb38:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s2, 1000
  BNE s4, zero, bb39
  JAL zero, bb40
bb39:
  ADD s4, s3, zero
  ADD s5, zero, zero
  JAL zero, bb41
bb40:
  ADDI a0, zero, 92
  CALL _sysy_stoptime
  ADD a0, s3, zero
  CALL putint
  ADD a0, zero, zero
  LD s9, 48(sp)
  LD s8, 56(sp)
  LD s11, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s10, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD s7, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb41:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s6, 1000
  BNE s8, zero, bb42
  JAL zero, bb43
bb42:
  LUI s8, 1
  ADDIW s8, s8, -96
  MULW s9, s2, s8
  LA s8, c
  ADD s10, s8, s9
  ADDI s8, zero, 4
  MULW s9, s6, s8
  ADD s8, s10, s9
  LW s9, 0(s8)
  ADDW s8, s7, s9
  ADDIW s9, s6, 1
  ADD s4, s8, zero
  ADD s5, s9, zero
  JAL zero, bb41
bb43:
  ADDIW s4, s2, 1
  ADD s0, s7, zero
  ADD s1, s4, zero
  JAL zero, bb38
bb44:
  ADD s6, s5, zero
  JAL zero, bb28
