.global mem_move
.global floyd
.global main
.global getvalue
.section .bss
c:
.space 8388608
dst:
.space 8388608
w:
.space 8388608
temp:
.space 8388608

.section .data




maxlen:
.word 0x00200000
.section .text
mem_move:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, zero, zero
  JAL zero, bb1
bb1:
  SLT s4, s3, s2
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s4, s1, s5
  ADDI s5, zero, 4
  MULW s6, s3, s5
  ADD s5, s0, s6
  LW s6, 0(s5)
  SW s6, 0(s4)
  ADDIW s4, s3, 1
  ADD s3, s4, zero
  JAL zero, bb1
bb3:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
floyd:
  ADDI sp, sp, -128
  SD s2, 24(sp)
  SD s11, 32(sp)
  SD s10, 40(sp)
  SD s9, 48(sp)
  SD s8, 56(sp)
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s5, 80(sp)
  SD s7, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  SD s6, 112(sp)
  SD s1, 120(sp)
  ADD s0, a0, zero
  ADD t4, a1, zero
  SD t4, 0(sp)
  ADD t4, a2, zero
  SW t4, 8(sp)
  ADD s3, zero, zero
  JAL zero, bb5
bb5:
  LW t4, 8(sp)
  SLT s4, s3, t4
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb6
  JAL zero, bb7
bb6:
  ADD s4, zero, zero
  JAL zero, bb8
bb7:
  ADD s0, zero, zero
  ADD s3, zero, zero
  ADD t4, zero, zero
  SW t4, 16(sp)
  JAL zero, bb11
bb8:
  LW t4, 8(sp)
  SLT s5, s4, t4
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb9
  JAL zero, bb10
bb9:
  LW t4, 8(sp)
  MULW s5, s4, t4
  ADDW s6, s5, s3
  ADDI s5, zero, 4
  MULW s7, s6, s5
  LA s5, temp
  ADD s6, s5, s7
  ADD a0, s0, zero
  LW t4, 8(sp)
  ADD a1, t4, zero
  ADD a2, s4, zero
  ADD a3, s3, zero
  CALL getvalue
  ADD s5, a0, zero
  SW s5, 0(s6)
  ADDIW s5, s4, 1
  ADD s4, s5, zero
  JAL zero, bb8
bb10:
  ADDIW s4, s3, 1
  ADD s3, s4, zero
  JAL zero, bb5
bb11:
  LW t4, 16(sp)
  LW t3, 8(sp)
  SLT s5, t4, t3
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb12
  JAL zero, bb13
bb12:
  ADD s5, s0, zero
  ADD s6, zero, zero
  ADD s7, s3, zero
  JAL zero, bb14
bb13:
  LW t4, 8(sp)
  LW t3, 8(sp)
  MULW s0, t4, t3
  LA s1, temp
  ADD a0, s1, zero
  LD t4, 0(sp)
  ADD a1, t4, zero
  ADD a2, s0, zero
  CALL mem_move
  LD s2, 24(sp)
  LD s11, 32(sp)
  LD s10, 40(sp)
  LD s9, 48(sp)
  LD s8, 56(sp)
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD s6, 112(sp)
  LD s1, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb14:
  LW t4, 8(sp)
  SLT s8, s6, t4
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb15
  JAL zero, bb16
bb15:
  ADD s8, s5, zero
  ADD s9, zero, zero
  JAL zero, bb17
bb16:
  LW t4, 16(sp)
  ADDIW s1, t4, 1
  ADD s0, s5, zero
  ADD s3, s7, zero
  ADD t4, s1, zero
  SW t4, 16(sp)
  JAL zero, bb11
bb17:
  LW t4, 8(sp)
  SLT s10, s9, t4
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb18
  JAL zero, bb19
bb18:
  LA s10, temp
  ADD a0, s10, zero
  LW t4, 8(sp)
  ADD a1, t4, zero
  ADD a2, s6, zero
  LW t4, 16(sp)
  ADD a3, t4, zero
  CALL getvalue
  ADD s10, a0, zero
  SLT s11, s10, zero
  XORI s10, s11, 1
  BNE s10, zero, bb20
  JAL zero, bb21
bb19:
  ADDIW s1, s6, 1
  ADD s5, s8, zero
  ADD s6, s1, zero
  ADD s7, s9, zero
  JAL zero, bb14
bb20:
  LA s10, temp
  ADD a0, s10, zero
  LW t4, 8(sp)
  ADD a1, t4, zero
  LW t4, 16(sp)
  ADD a2, t4, zero
  ADD a3, s9, zero
  CALL getvalue
  ADD s10, a0, zero
  SLT s11, s10, zero
  XORI s10, s11, 1
  ADD s11, s10, zero
  JAL zero, bb22
bb21:
  ADD s11, zero, zero
  JAL zero, bb22
bb22:
  BNE s11, zero, bb23
  JAL zero, bb24
bb23:
  LA s10, temp
  ADD a0, s10, zero
  LW t4, 8(sp)
  ADD a1, t4, zero
  ADD a2, s6, zero
  ADD a3, s9, zero
  CALL getvalue
  ADD s10, a0, zero
  SLT s1, s10, zero
  BNE s1, zero, bb25
  JAL zero, bb27
bb24:
  ADDIW s1, s9, 1
  ADD s8, s11, zero
  ADD s9, s1, zero
  JAL zero, bb17
bb25:
  LW t4, 8(sp)
  MULW s1, s6, t4
  ADDW s10, s1, s9
  ADDI s1, zero, 4
  MULW s2, s10, s1
  LA s1, temp
  ADD s10, s1, s2
  LA s1, temp
  ADD a0, s1, zero
  LW t4, 8(sp)
  ADD a1, t4, zero
  ADD a2, s6, zero
  LW t4, 16(sp)
  ADD a3, t4, zero
  CALL getvalue
  ADD s1, a0, zero
  LA s2, temp
  ADD a0, s2, zero
  LW t4, 8(sp)
  ADD a1, t4, zero
  LW t4, 16(sp)
  ADD a2, t4, zero
  ADD a3, s9, zero
  CALL getvalue
  ADD s2, a0, zero
  ADDW s4, s1, s2
  SW s4, 0(s10)
  JAL zero, bb26
bb26:
  JAL zero, bb24
bb27:
  LW t4, 8(sp)
  MULW s1, s6, t4
  ADDW s2, s1, s9
  ADDI s1, zero, 4
  MULW s4, s2, s1
  LA s1, temp
  ADD s2, s1, s4
  LW s1, 0(s2)
  LA s2, temp
  ADD a0, s2, zero
  LW t4, 8(sp)
  ADD a1, t4, zero
  ADD a2, s6, zero
  LW t4, 16(sp)
  ADD a3, t4, zero
  CALL getvalue
  ADD s2, a0, zero
  LA s4, temp
  ADD a0, s4, zero
  LW t4, 8(sp)
  ADD a1, t4, zero
  LW t4, 16(sp)
  ADD a2, t4, zero
  ADD a3, s9, zero
  CALL getvalue
  ADD s4, a0, zero
  ADDW s10, s2, s4
  SLT s2, s10, s1
  BNE s2, zero, bb28
  JAL zero, bb29
bb28:
  LW t4, 8(sp)
  MULW s1, s6, t4
  ADDW s2, s1, s9
  ADDI s1, zero, 4
  MULW s4, s2, s1
  LA s1, temp
  ADD s2, s1, s4
  LA s1, temp
  ADD a0, s1, zero
  LW t4, 8(sp)
  ADD a1, t4, zero
  ADD a2, s6, zero
  LW t4, 16(sp)
  ADD a3, t4, zero
  CALL getvalue
  ADD s1, a0, zero
  LA s4, temp
  ADD a0, s4, zero
  LW t4, 8(sp)
  ADD a1, t4, zero
  LW t4, 16(sp)
  ADD a2, t4, zero
  ADD a3, s9, zero
  CALL getvalue
  ADD s4, a0, zero
  ADDW s10, s1, s4
  SW s10, 0(s2)
  JAL zero, bb29
bb29:
  JAL zero, bb26
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, w
  ADD a0, s1, zero
  CALL getarray
  ADD s1, a0, zero
  ADDI a0, zero, 62
  CALL _sysy_starttime
  LA s1, w
  ADD a0, s1, zero
  LA s1, dst
  ADD a1, s1, zero
  ADD a2, s0, zero
  CALL floyd
  ADDI a0, zero, 64
  CALL _sysy_stoptime
  MULW s1, s0, s0
  ADD a0, s1, zero
  LA s0, dst
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
getvalue:
  ADDI sp, sp, -96
  SD s9, 0(sp)
  SD ra, 8(sp)
  SD s8, 16(sp)
  SD s0, 24(sp)
  SD s5, 32(sp)
  SD s7, 40(sp)
  SD s1, 48(sp)
  SD s6, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  SLT s4, s2, zero
  BNE s4, zero, bb32
  JAL zero, bb33
bb32:
  ADDI s4, zero, 1
  JAL zero, bb34
bb33:
  SLT s5, s2, s1
  XORI s6, s5, 1
  XOR s5, s6, zero
  SLTU s6, zero, s5
  ADD s4, s6, zero
  JAL zero, bb34
bb34:
  BNE s4, zero, bb35
  JAL zero, bb36
bb35:
  ADDI s5, zero, 1
  JAL zero, bb37
bb36:
  SLT s6, s3, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  ADD s5, s6, zero
  JAL zero, bb37
bb37:
  BNE s5, zero, bb38
  JAL zero, bb39
bb38:
  ADDI s6, zero, 1
  JAL zero, bb40
bb39:
  SLT s7, s3, s1
  XORI s8, s7, 1
  XOR s7, s8, zero
  SLTU s8, zero, s7
  ADD s6, s8, zero
  JAL zero, bb40
bb40:
  BNE s6, zero, bb41
  JAL zero, bb42
bb41:
  ADDI s7, zero, 1
  SUB s8, zero, s7
  ADD a0, s8, zero
  LD s9, 0(sp)
  LD ra, 8(sp)
  LD s8, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s7, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb42:
  MULW s7, s2, s1
  ADDW s8, s7, s3
  ADDI s7, zero, 4
  MULW s9, s8, s7
  ADD s7, s0, s9
  LW s8, 0(s7)
  ADD a0, s8, zero
  LD s9, 0(sp)
  LD ra, 8(sp)
  LD s8, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s7, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
