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
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s7, 48(sp)
  SD s5, 56(sp)
  SD s0, 64(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, zero, zero
  JAL zero, bb1
bb1:
  ADD s4, s3, zero
  SLT s5, s4, s2
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s5, s1, s6
  ADD s7, s0, s6
  LW s6, 0(s7)
  SW s6, 0(s5)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb1
bb3:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s7, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
floyd:
  ADDI sp, sp, -192
  SD s11, 80(sp)
  SD s2, 88(sp)
  SD s10, 96(sp)
  SD ra, 104(sp)
  SD s1, 112(sp)
  SD s0, 120(sp)
  SD s5, 128(sp)
  SD s7, 136(sp)
  SD s8, 144(sp)
  SD s9, 152(sp)
  SD s3, 160(sp)
  SD s4, 168(sp)
  SD s6, 176(sp)
  ADD s0, a0, zero
  ADD t4, a1, zero
  SD t4, 0(sp)
  ADD t4, a2, zero
  SW t4, 8(sp)
  ADD s3, zero, zero
  JAL zero, bb5
bb5:
  ADD s4, s3, zero
  LW t4, 8(sp)
  SLT s5, s4, t4
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb6
  JAL zero, bb7
bb6:
  ADD s5, zero, zero
  JAL zero, bb8
bb7:
  ADD t4, zero, zero
  SB t4, 48(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  JAL zero, bb11
bb8:
  ADD s6, s5, zero
  LW t4, 8(sp)
  SLT s7, s6, t4
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb9
  JAL zero, bb10
bb9:
  LW t4, 8(sp)
  MULW s7, s6, t4
  ADDW s8, s7, s4
  ADDI s7, zero, 4
  MULW s9, s8, s7
  LA s7, temp
  ADD s8, s7, s9
  ADD a0, s0, zero
  LW t4, 8(sp)
  ADD a1, t4, zero
  ADD a2, s6, zero
  ADD a3, s4, zero
  CALL getvalue
  ADD s7, a0, zero
  SW s7, 0(s8)
  ADDIW s7, s6, 1
  ADD s5, s7, zero
  JAL zero, bb8
bb10:
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb5
bb11:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t4, 32(sp)
  ADD s6, t4, zero
  LB t4, 48(sp)
  ADD s7, t4, zero
  LW t4, 56(sp)
  LW t3, 8(sp)
  SLT s8, t4, t3
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb12
  JAL zero, bb13
bb12:
  ADD s8, s7, zero
  ADD s7, zero, zero
  ADD t4, s6, zero
  SW t4, 72(sp)
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
  LD s11, 80(sp)
  LD s2, 88(sp)
  LD s10, 96(sp)
  LD ra, 104(sp)
  LD s1, 112(sp)
  LD s0, 120(sp)
  LD s5, 128(sp)
  LD s7, 136(sp)
  LD s8, 144(sp)
  LD s9, 152(sp)
  LD s3, 160(sp)
  LD s4, 168(sp)
  LD s6, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb14:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  ADD s10, s7, zero
  ADD t4, s8, zero
  SB t4, 40(sp)
  LW t4, 8(sp)
  SLT s1, s10, t4
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb15
  JAL zero, bb16
bb15:
  LB t4, 40(sp)
  ADD s1, t4, zero
  ADD s2, zero, zero
  JAL zero, bb17
bb16:
  LW t4, 56(sp)
  ADDIW s0, t4, 1
  LB t3, 40(sp)
  ADD t4, t3, zero
  SB t4, 48(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  ADD t4, s0, zero
  SW t4, 16(sp)
  JAL zero, bb11
bb17:
  ADD t4, s2, zero
  SW t4, 64(sp)
  ADD s6, s1, zero
  LW t4, 64(sp)
  LW t3, 8(sp)
  SLT s3, t4, t3
  XOR s11, s3, zero
  SLTU s3, zero, s11
  BNE s3, zero, bb18
  JAL zero, bb19
bb18:
  LA s3, temp
  ADD a0, s3, zero
  LW t4, 8(sp)
  ADD a1, t4, zero
  ADD a2, s10, zero
  LW t4, 56(sp)
  ADD a3, t4, zero
  CALL getvalue
  ADD s3, a0, zero
  SLT s11, s3, zero
  XORI s3, s11, 1
  BNE s3, zero, bb20
  JAL zero, bb21
bb19:
  ADDIW s0, s10, 1
  ADD s8, s6, zero
  ADD s7, s0, zero
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  JAL zero, bb14
bb20:
  LA s3, temp
  ADD a0, s3, zero
  LW t4, 8(sp)
  ADD a1, t4, zero
  LW t4, 56(sp)
  ADD a2, t4, zero
  LW t4, 64(sp)
  ADD a3, t4, zero
  CALL getvalue
  ADD s3, a0, zero
  SLT s11, s3, zero
  XORI s3, s11, 1
  ADD s11, s3, zero
  JAL zero, bb22
bb21:
  ADD s11, zero, zero
  JAL zero, bb22
bb22:
  ADD s3, s11, zero
  BNE s3, zero, bb23
  JAL zero, bb24
bb23:
  LA s0, temp
  ADD a0, s0, zero
  LW t4, 8(sp)
  ADD a1, t4, zero
  ADD a2, s10, zero
  LW t4, 64(sp)
  ADD a3, t4, zero
  CALL getvalue
  ADD s0, a0, zero
  SLT s5, s0, zero
  BNE s5, zero, bb25
  JAL zero, bb27
bb24:
  LW t4, 64(sp)
  ADDIW s0, t4, 1
  ADD s1, s3, zero
  ADD s2, s0, zero
  JAL zero, bb17
bb25:
  LW t4, 8(sp)
  MULW s0, s10, t4
  LW t4, 64(sp)
  ADDW s5, s0, t4
  ADDI s0, zero, 4
  MULW s4, s5, s0
  LA s0, temp
  ADD s5, s0, s4
  LA s0, temp
  ADD a0, s0, zero
  LW t4, 8(sp)
  ADD a1, t4, zero
  ADD a2, s10, zero
  LW t4, 56(sp)
  ADD a3, t4, zero
  CALL getvalue
  ADD s0, a0, zero
  LA s4, temp
  ADD a0, s4, zero
  LW t4, 8(sp)
  ADD a1, t4, zero
  LW t4, 56(sp)
  ADD a2, t4, zero
  LW t4, 64(sp)
  ADD a3, t4, zero
  CALL getvalue
  ADD s4, a0, zero
  ADDW s9, s0, s4
  SW s9, 0(s5)
  JAL zero, bb26
bb26:
  JAL zero, bb24
bb27:
  LW t4, 8(sp)
  MULW s0, s10, t4
  LW t4, 64(sp)
  ADDW s1, s0, t4
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, temp
  ADD s1, s0, s2
  LW s0, 0(s1)
  LA s2, temp
  ADD a0, s2, zero
  LW t4, 8(sp)
  ADD a1, t4, zero
  ADD a2, s10, zero
  LW t4, 56(sp)
  ADD a3, t4, zero
  CALL getvalue
  ADD s2, a0, zero
  LA s4, temp
  ADD a0, s4, zero
  LW t4, 8(sp)
  ADD a1, t4, zero
  LW t4, 56(sp)
  ADD a2, t4, zero
  LW t4, 64(sp)
  ADD a3, t4, zero
  CALL getvalue
  ADD s4, a0, zero
  ADDW s5, s2, s4
  SLT s2, s5, s0
  BNE s2, zero, bb28
  JAL zero, bb29
bb28:
  LA s0, temp
  ADD a0, s0, zero
  LW t4, 8(sp)
  ADD a1, t4, zero
  ADD a2, s10, zero
  LW t4, 56(sp)
  ADD a3, t4, zero
  CALL getvalue
  ADD s0, a0, zero
  LA s2, temp
  ADD a0, s2, zero
  LW t4, 8(sp)
  ADD a1, t4, zero
  LW t4, 56(sp)
  ADD a2, t4, zero
  LW t4, 64(sp)
  ADD a3, t4, zero
  CALL getvalue
  ADD s2, a0, zero
  ADDW s4, s0, s2
  SW s4, 0(s1)
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
  ADD s5, s4, zero
  BNE s5, zero, bb35
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
  ADD s6, s5, zero
  BNE s6, zero, bb38
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
  ADD s7, s6, zero
  BNE s7, zero, bb41
  JAL zero, bb42
bb41:
  ADDI a0, zero, -1
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
