.global f2
.global f1
.global getA
.global main
.global f3
.section .bss



.section .data
count:
.word 0x00000000
sum:
.word 0x00000000
a:
.word 0x00000000
.section .text
f2:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  LA s0, sum
  LW s1, 0(s0)
  LA s0, a
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LA s1, sum
  SW s0, 0(s1)
  LA s0, count
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, count
  SW s0, 0(s1)
  LA s0, sum
  LW s1, 0(s0)
  LA s0, a
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LA s1, sum
  SW s0, 0(s1)
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
f1:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s0, sum
  SW s1, 0(s0)
  LA s0, count
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, count
  SW s0, 0(s1)
  ADD s1, s0, zero
  JAL zero, bb2
bb2:
  ADD s0, s1, zero
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  ADD s2, s1, zero
  JAL zero, bb3
bb3:
  ADD s1, s2, zero
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  ADDW s1, s2, s0
  LA s2, sum
  SW s1, 0(s2)
  ADDW s2, s1, s0
  LA s0, sum
  SW s2, 0(s0)
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
getA:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  LA s0, count
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, count
  SW s0, 0(s1)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -96
  SD s10, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s1, 24(sp)
  SD s6, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s7, 64(sp)
  SD ra, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  LA s0, sum
  ADDI s1, zero, 0
  SW s1, 0(s0)
  LA s0, count
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, count
  SW s0, 0(s1)
  ADD s1, s0, zero
  JAL zero, bb6
bb6:
  ADD s0, s1, zero
  LA s1, a
  SW s0, 0(s1)
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s0, sum
  SW s1, 0(s0)
  LA s0, count
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, count
  SW s0, 0(s1)
  ADD s1, s0, zero
  JAL zero, bb7
bb7:
  ADD s0, s1, zero
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  ADD s2, s1, zero
  JAL zero, bb20
bb8:
  ADD s1, s2, zero
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  ADD s2, s1, zero
  JAL zero, bb26
bb9:
  ADD s1, s2, zero
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  ADD s2, s1, zero
  JAL zero, bb28
bb10:
  ADD s1, s2, zero
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  ADD s2, s1, zero
  JAL zero, bb30
bb11:
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, s0, zero
  JAL zero, bb12
bb12:
  ADD s0, s3, zero
  ADD s4, s2, zero
  ADD s5, s1, zero
  SLTI s6, s4, 3
  BNE s6, zero, bb13
  JAL zero, bb14
bb13:
  ADD s6, s0, zero
  JAL zero, bb15
bb14:
  LA s0, sum
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADD a0, zero, zero
  LD s10, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s1, 24(sp)
  LD s6, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s7, 64(sp)
  LD ra, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb15:
  ADD s0, s6, zero
  LA s6, sum
  LW s7, 0(s6)
  ADDW s6, s7, s0
  LA s7, sum
  SW s6, 0(s7)
  LA s6, count
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, count
  SW s6, 0(s7)
  ADD s7, s6, zero
  JAL zero, bb34
bb16:
  LA s6, count
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, count
  SW s6, 0(s7)
  ADD s7, s6, zero
  JAL zero, bb17
bb17:
  ADD s6, s7, zero
  LA s7, sum
  LW s8, 0(s7)
  ADDW s7, s8, s6
  LA s8, sum
  SW s7, 0(s8)
  LA s7, count
  LW s8, 0(s7)
  ADDIW s7, s8, 1
  LA s8, count
  SW s7, 0(s8)
  ADD s8, s7, zero
  JAL zero, bb36
bb18:
  LA s6, sum
  LW s7, 0(s6)
  ADDW s6, s7, s0
  LA s0, sum
  SW s6, 0(s0)
  LA s0, count
  LW s6, 0(s0)
  ADDIW s0, s6, 1
  LA s6, count
  SW s0, 0(s6)
  ADD s6, s0, zero
  JAL zero, bb38
bb19:
  ADD s0, s6, zero
  ADDIW s6, s4, 1
  ADD s1, s5, zero
  ADD s2, s6, zero
  ADD s3, s0, zero
  JAL zero, bb12
bb20:
  ADD s1, s2, zero
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, count
  SW s2, 0(s3)
  ADD s3, s2, zero
  JAL zero, bb21
bb21:
  ADD s2, s3, zero
  LA s3, sum
  LW s4, 0(s3)
  ADDW s3, s4, s2
  LA s2, sum
  SW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  ADDW s3, s2, s1
  LA s1, sum
  SW s3, 0(s1)
  LA s1, sum
  LW s2, 0(s1)
  LA s1, a
  LW s3, 0(s1)
  ADDW s1, s2, s3
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, sum
  LW s2, 0(s1)
  LA s1, a
  LW s3, 0(s1)
  ADDW s1, s2, s3
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  ADD s2, s1, zero
  JAL zero, bb40
bb22:
  ADD s1, s2, zero
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, count
  SW s2, 0(s3)
  ADD s3, s2, zero
  JAL zero, bb23
bb23:
  ADD s2, s3, zero
  LA s3, sum
  LW s4, 0(s3)
  ADDW s3, s4, s2
  LA s2, sum
  SW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  ADDW s3, s2, s1
  LA s1, sum
  SW s3, 0(s1)
  LA s1, sum
  LW s2, 0(s1)
  LA s1, a
  LW s3, 0(s1)
  ADDW s1, s2, s3
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, sum
  LW s2, 0(s1)
  LA s1, a
  LW s3, 0(s1)
  ADDW s1, s2, s3
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  ADD s2, s1, zero
  JAL zero, bb42
bb24:
  ADD s1, s2, zero
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, count
  SW s2, 0(s3)
  ADD s3, s2, zero
  JAL zero, bb25
bb25:
  ADD s2, s3, zero
  LA s3, sum
  LW s4, 0(s3)
  ADDW s3, s4, s2
  LA s2, sum
  SW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  ADDW s3, s2, s1
  LA s1, sum
  SW s3, 0(s1)
  LA s1, sum
  LW s2, 0(s1)
  LA s1, a
  LW s3, 0(s1)
  ADDW s1, s2, s3
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, sum
  LW s2, 0(s1)
  LA s1, a
  LW s3, 0(s1)
  ADDW s1, s2, s3
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  ADD s2, s1, zero
  JAL zero, bb44
bb26:
  ADD s1, s2, zero
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, count
  SW s2, 0(s3)
  ADD s3, s2, zero
  JAL zero, bb27
bb27:
  ADD s2, s3, zero
  LA s3, sum
  LW s4, 0(s3)
  ADDW s3, s4, s2
  LA s2, sum
  SW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  ADDW s3, s2, s1
  LA s1, sum
  SW s3, 0(s1)
  LA s1, sum
  LW s2, 0(s1)
  LA s1, a
  LW s3, 0(s1)
  ADDW s1, s2, s3
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, sum
  LW s2, 0(s1)
  LA s1, a
  LW s3, 0(s1)
  ADDW s1, s2, s3
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  ADD s2, s1, zero
  JAL zero, bb46
bb28:
  ADD s1, s2, zero
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, count
  SW s2, 0(s3)
  ADD s3, s2, zero
  JAL zero, bb29
bb29:
  ADD s2, s3, zero
  LA s3, sum
  LW s4, 0(s3)
  ADDW s3, s4, s2
  LA s2, sum
  SW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  ADDW s3, s2, s1
  LA s1, sum
  SW s3, 0(s1)
  LA s1, sum
  LW s2, 0(s1)
  LA s1, a
  LW s3, 0(s1)
  ADDW s1, s2, s3
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, sum
  LW s2, 0(s1)
  LA s1, a
  LW s3, 0(s1)
  ADDW s1, s2, s3
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  ADD s2, s1, zero
  JAL zero, bb48
bb30:
  ADD s1, s2, zero
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, count
  SW s2, 0(s3)
  ADD s3, s2, zero
  JAL zero, bb31
bb31:
  ADD s2, s3, zero
  LA s3, sum
  LW s4, 0(s3)
  ADDW s3, s4, s2
  LA s2, sum
  SW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  ADDW s3, s2, s1
  LA s1, sum
  SW s3, 0(s1)
  LA s1, sum
  LW s2, 0(s1)
  LA s1, a
  LW s3, 0(s1)
  ADDW s1, s2, s3
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, sum
  LW s2, 0(s1)
  LA s1, a
  LW s3, 0(s1)
  ADDW s1, s2, s3
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  ADD s2, s1, zero
  JAL zero, bb50
bb32:
  ADD s1, s2, zero
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, count
  SW s2, 0(s3)
  ADD s3, s2, zero
  JAL zero, bb33
bb33:
  ADD s2, s3, zero
  LA s3, sum
  LW s4, 0(s3)
  ADDW s3, s4, s2
  LA s2, sum
  SW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  ADDW s3, s2, s1
  LA s1, sum
  SW s3, 0(s1)
  LA s1, sum
  LW s2, 0(s1)
  LA s1, a
  LW s3, 0(s1)
  ADDW s1, s2, s3
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, sum
  LW s2, 0(s1)
  LA s1, a
  LW s3, 0(s1)
  ADDW s1, s2, s3
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  ADD s2, s1, zero
  JAL zero, bb52
bb34:
  ADD s6, s7, zero
  LA s7, sum
  LW s8, 0(s7)
  ADDW s7, s8, s6
  LA s8, sum
  SW s7, 0(s8)
  LA s7, count
  LW s8, 0(s7)
  ADDIW s7, s8, 1
  LA s8, count
  SW s7, 0(s8)
  ADD s8, s7, zero
  JAL zero, bb35
bb35:
  ADD s7, s8, zero
  LA s8, sum
  LW s9, 0(s8)
  ADDW s8, s9, s7
  LA s7, sum
  SW s8, 0(s7)
  ADDW s7, s8, s6
  LA s8, sum
  SW s7, 0(s8)
  ADDW s8, s7, s6
  LA s6, sum
  SW s8, 0(s6)
  LA s6, sum
  LW s7, 0(s6)
  LA s6, a
  LW s8, 0(s6)
  ADDW s6, s7, s8
  LA s7, sum
  SW s6, 0(s7)
  LA s6, count
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, count
  SW s6, 0(s7)
  LA s6, sum
  LW s7, 0(s6)
  LA s6, a
  LW s8, 0(s6)
  ADDW s6, s7, s8
  LA s7, sum
  SW s6, 0(s7)
  LA s6, count
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, count
  SW s6, 0(s7)
  ADD s7, s6, zero
  JAL zero, bb54
bb36:
  ADD s7, s8, zero
  LA s8, sum
  LW s9, 0(s8)
  ADDW s8, s9, s7
  LA s9, sum
  SW s8, 0(s9)
  LA s8, count
  LW s9, 0(s8)
  ADDIW s8, s9, 1
  LA s9, count
  SW s8, 0(s9)
  ADD s9, s8, zero
  JAL zero, bb37
bb37:
  ADD s8, s9, zero
  LA s9, sum
  LW s10, 0(s9)
  ADDW s9, s10, s8
  LA s8, sum
  SW s9, 0(s8)
  ADDW s8, s9, s7
  LA s9, sum
  SW s8, 0(s9)
  ADDW s9, s8, s7
  LA s7, sum
  SW s9, 0(s7)
  LA s7, sum
  LW s8, 0(s7)
  LA s7, a
  LW s9, 0(s7)
  ADDW s7, s8, s9
  LA s8, sum
  SW s7, 0(s8)
  LA s7, count
  LW s8, 0(s7)
  ADDIW s7, s8, 1
  LA s8, count
  SW s7, 0(s8)
  LA s7, sum
  LW s8, 0(s7)
  LA s7, a
  LW s9, 0(s7)
  ADDW s7, s8, s9
  LA s8, sum
  SW s7, 0(s8)
  LA s7, count
  LW s8, 0(s7)
  ADDIW s7, s8, 1
  LA s8, count
  SW s7, 0(s8)
  ADD s8, s7, zero
  JAL zero, bb56
bb38:
  ADD s0, s6, zero
  LA s6, sum
  LW s7, 0(s6)
  ADDW s6, s7, s0
  LA s7, sum
  SW s6, 0(s7)
  LA s6, count
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, count
  SW s6, 0(s7)
  ADD s7, s6, zero
  JAL zero, bb39
bb39:
  ADD s6, s7, zero
  LA s7, sum
  LW s8, 0(s7)
  ADDW s7, s8, s6
  LA s6, sum
  SW s7, 0(s6)
  ADDW s6, s7, s0
  LA s7, sum
  SW s6, 0(s7)
  ADDW s7, s6, s0
  LA s0, sum
  SW s7, 0(s0)
  LA s0, sum
  LW s6, 0(s0)
  LA s0, a
  LW s7, 0(s0)
  ADDW s0, s6, s7
  LA s6, sum
  SW s0, 0(s6)
  LA s0, count
  LW s6, 0(s0)
  ADDIW s0, s6, 1
  LA s6, count
  SW s0, 0(s6)
  LA s0, sum
  LW s6, 0(s0)
  LA s0, a
  LW s7, 0(s0)
  ADDW s0, s6, s7
  LA s6, sum
  SW s0, 0(s6)
  LA s0, count
  LW s6, 0(s0)
  ADDIW s0, s6, 1
  LA s6, count
  SW s0, 0(s6)
  ADD s6, s0, zero
  JAL zero, bb58
bb40:
  ADD s1, s2, zero
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  ADD s2, s1, zero
  JAL zero, bb41
bb41:
  ADD s1, s2, zero
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, count
  SW s2, 0(s3)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  ADD s2, s1, zero
  JAL zero, bb22
bb42:
  ADD s1, s2, zero
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  ADD s2, s1, zero
  JAL zero, bb43
bb43:
  ADD s1, s2, zero
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, count
  SW s2, 0(s3)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  ADD s2, s1, zero
  JAL zero, bb24
bb44:
  ADD s1, s2, zero
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  ADD s2, s1, zero
  JAL zero, bb45
bb45:
  ADD s1, s2, zero
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, count
  SW s2, 0(s3)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  ADD s2, s1, zero
  JAL zero, bb8
bb46:
  ADD s1, s2, zero
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  ADD s2, s1, zero
  JAL zero, bb47
bb47:
  ADD s1, s2, zero
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, count
  SW s2, 0(s3)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  ADD s2, s1, zero
  JAL zero, bb9
bb48:
  ADD s1, s2, zero
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  ADD s2, s1, zero
  JAL zero, bb49
bb49:
  ADD s1, s2, zero
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, count
  SW s2, 0(s3)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  ADD s2, s1, zero
  JAL zero, bb10
bb50:
  ADD s1, s2, zero
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  ADD s2, s1, zero
  JAL zero, bb51
bb51:
  ADD s1, s2, zero
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, count
  SW s2, 0(s3)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  ADD s2, s1, zero
  JAL zero, bb32
bb52:
  ADD s1, s2, zero
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  ADD s2, s1, zero
  JAL zero, bb53
bb53:
  ADD s1, s2, zero
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, count
  SW s2, 0(s3)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  JAL zero, bb11
bb54:
  ADD s6, s7, zero
  LA s7, sum
  LW s8, 0(s7)
  ADDW s7, s8, s6
  LA s6, sum
  SW s7, 0(s6)
  LA s6, count
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, count
  SW s6, 0(s7)
  ADD s7, s6, zero
  JAL zero, bb55
bb55:
  ADD s6, s7, zero
  LA s7, sum
  LW s8, 0(s7)
  ADDW s7, s8, s6
  LA s8, sum
  SW s7, 0(s8)
  LA s7, count
  LW s8, 0(s7)
  ADDIW s7, s8, 1
  LA s8, count
  SW s7, 0(s8)
  LA s7, sum
  LW s8, 0(s7)
  ADDW s7, s8, s6
  LA s6, sum
  SW s7, 0(s6)
  XORI s6, s4, 1
  SLTIU s7, s6, 1
  BNE s7, zero, bb16
  JAL zero, bb18
bb56:
  ADD s7, s8, zero
  LA s8, sum
  LW s9, 0(s8)
  ADDW s8, s9, s7
  LA s7, sum
  SW s8, 0(s7)
  LA s7, count
  LW s8, 0(s7)
  ADDIW s7, s8, 1
  LA s8, count
  SW s7, 0(s8)
  ADD s8, s7, zero
  JAL zero, bb57
bb57:
  ADD s7, s8, zero
  LA s8, sum
  LW s9, 0(s8)
  ADDW s8, s9, s7
  LA s9, sum
  SW s8, 0(s9)
  LA s8, count
  LW s9, 0(s8)
  ADDIW s8, s9, 1
  LA s9, count
  SW s8, 0(s9)
  LA s8, sum
  LW s9, 0(s8)
  ADDW s8, s9, s7
  LA s7, sum
  SW s8, 0(s7)
  ADDIW s7, s4, 1
  ADD s1, s6, zero
  ADD s2, s7, zero
  ADD s3, s0, zero
  JAL zero, bb12
bb58:
  ADD s0, s6, zero
  LA s6, sum
  LW s7, 0(s6)
  ADDW s6, s7, s0
  LA s0, sum
  SW s6, 0(s0)
  LA s0, count
  LW s6, 0(s0)
  ADDIW s0, s6, 1
  LA s6, count
  SW s0, 0(s6)
  ADD s6, s0, zero
  JAL zero, bb59
bb59:
  ADD s0, s6, zero
  LA s6, sum
  LW s7, 0(s6)
  ADDW s6, s7, s0
  LA s7, sum
  SW s6, 0(s7)
  LA s6, count
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, count
  SW s6, 0(s7)
  LA s6, sum
  LW s7, 0(s6)
  ADDW s6, s7, s0
  LA s0, sum
  SW s6, 0(s0)
  LA s0, count
  LW s6, 0(s0)
  ADDIW s0, s6, 1
  LA s6, count
  SW s0, 0(s6)
  ADD s6, s0, zero
  JAL zero, bb19
f3:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  LA s0, count
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, count
  SW s0, 0(s1)
  ADD s1, s0, zero
  JAL zero, bb61
bb61:
  ADD s0, s1, zero
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s0, sum
  SW s1, 0(s0)
  LA s0, count
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, count
  SW s0, 0(s1)
  ADD s1, s0, zero
  JAL zero, bb62
bb62:
  ADD s0, s1, zero
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s0, sum
  SW s1, 0(s0)
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
