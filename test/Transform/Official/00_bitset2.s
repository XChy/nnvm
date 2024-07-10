.global rand
.global set
.global main
.section .bss

a:
.space 40000

.section .data
staticvalue:
.word 0x00000000

seed:
.byte 159, 188, 48, 1, 213, 226, 48, 1, 7, 202, 154, 59
.section .text
rand:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  LA s0, staticvalue
  LW s1, 0(s0)
  LA s0, seed
  LW s2, 0(s0)
  MULW s0, s1, s2
  LA s1, seed
  ADDI s2, s1, 4
  LW s1, 0(s2)
  ADDW s2, s0, s1
  LA s0, staticvalue
  SW s2, 0(s0)
  LA s0, seed
  ADDI s1, s0, 8
  LW s0, 0(s1)
  REMW s3, s2, s0
  LA s0, staticvalue
  SW s3, 0(s0)
  SLT s0, s3, zero
  BNE s0, zero, bb1
  JAL zero, bb2
bb1:
  LW s0, 0(s1)
  LA s1, staticvalue
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LA s0, staticvalue
  SW s1, 0(s0)
  JAL zero, bb2
bb2:
  LA s0, staticvalue
  LW s1, 0(s0)
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
set:
  ADDI sp, sp, -240
  SD s11, 128(sp)
  SD s10, 136(sp)
  SD s9, 144(sp)
  SD ra, 152(sp)
  SD s0, 160(sp)
  SD s5, 168(sp)
  SD s7, 176(sp)
  SD s1, 184(sp)
  SD s6, 192(sp)
  SD s8, 200(sp)
  SD s2, 208(sp)
  SD s3, 216(sp)
  SD s4, 224(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADDI s3, zero, 31
  JAL zero, bb4
bb4:
  ADD s4, s3, zero
  XOR s5, s4, zero
  SLTU s6, zero, s5
  BNE s6, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s5, zero, 1
  SUBW s6, s4, s5
  ADDI s4, zero, 4
  MULW s5, s6, s4
  ADDI t5, sp, 0
  ADD s4, t5, s5
  SW zero, 0(s4)
  ADD s3, s6, zero
  JAL zero, bb4
bb6:
  ADDI s3, zero, 1
  SW s3, 0(sp)
  ADDI s3, sp, 4
  ADDI s4, zero, 2
  SW s4, 0(s3)
  ADDI s3, sp, 8
  ADDI s4, zero, 4
  SW s4, 0(s3)
  ADDI s3, sp, 12
  ADDI s4, zero, 8
  SW s4, 0(s3)
  ADDI s3, sp, 16
  ADDI s4, zero, 16
  SW s4, 0(s3)
  ADDI s3, sp, 20
  ADDI s4, zero, 32
  SW s4, 0(s3)
  ADDI s3, sp, 24
  ADDI s4, zero, 64
  SW s4, 0(s3)
  ADDI s3, sp, 28
  ADDI s4, zero, 128
  SW s4, 0(s3)
  ADDI s3, sp, 32
  ADDI s4, zero, 256
  SW s4, 0(s3)
  ADDI s3, sp, 36
  ADDI s4, zero, 512
  SW s4, 0(s3)
  ADDI s3, sp, 40
  ADDI s4, zero, 1024
  SW s4, 0(s3)
  ADDI s3, zero, 10
  JAL zero, bb7
bb7:
  ADD s4, s3, zero
  SLTI s5, s4, 30
  BNE s5, zero, bb8
  JAL zero, bb9
bb8:
  ADDIW s5, s4, 1
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADDI t5, sp, 0
  ADD s6, t5, s7
  ADDI s7, zero, 4
  MULW s8, s4, s7
  ADDI t5, sp, 0
  ADD s4, t5, s8
  LW s7, 0(s4)
  ADDI s4, zero, 2
  MULW s8, s7, s4
  SW s8, 0(s6)
  ADD s3, s5, zero
  JAL zero, bb7
bb9:
  ADDI s3, zero, 30
  DIVW s4, s1, s3
  LUI s3, 2
  ADDIW s3, s3, 1808
  SLT s5, s4, s3
  XORI s3, s5, 1
  BNE s3, zero, bb10
  JAL zero, bb11
bb10:
  ADD a0, zero, zero
  LD s11, 128(sp)
  LD s10, 136(sp)
  LD s9, 144(sp)
  LD ra, 152(sp)
  LD s0, 160(sp)
  LD s5, 168(sp)
  LD s7, 176(sp)
  LD s1, 184(sp)
  LD s6, 192(sp)
  LD s8, 200(sp)
  LD s2, 208(sp)
  LD s3, 216(sp)
  LD s4, 224(sp)
  ADDI sp, sp, 240
  JALR zero, 0(ra)
bb11:
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s0, s5
  LW s0, 0(s3)
  ADDI s4, zero, 30
  REMW s5, s1, s4
  ADDI s1, zero, 4
  MULW s4, s5, s1
  ADDI t5, sp, 0
  ADD s1, t5, s4
  LW s4, 0(s1)
  DIVW s5, s0, s4
  ADDI s0, zero, 2
  REMW s4, s5, s0
  XOR s0, s4, s2
  SLTU s4, zero, s0
  BNE s4, zero, bb12
  JAL zero, bb22
bb12:
  LW s0, 0(s3)
  LW s4, 0(s1)
  DIVW s5, s0, s4
  ADDI s0, zero, 2
  REMW s4, s5, s0
  XOR s0, s4, zero
  SLTIU s4, s0, 1
  BNE s4, zero, bb14
  JAL zero, bb23
bb13:
  ADD s7, s9, zero
  LW s10, 0(s3)
  ADDW s11, s10, s7
  SW s11, 0(s3)
  ADD a0, zero, zero
  LD s11, 128(sp)
  LD s10, 136(sp)
  LD s9, 144(sp)
  LD ra, 152(sp)
  LD s0, 160(sp)
  LD s5, 168(sp)
  LD s7, 176(sp)
  LD s1, 184(sp)
  LD s6, 192(sp)
  LD s8, 200(sp)
  LD s2, 208(sp)
  LD s3, 216(sp)
  LD s4, 224(sp)
  ADDI sp, sp, 240
  JALR zero, 0(ra)
bb14:
  XORI s0, s2, 1
  SLTIU s4, s0, 1
  BNE s4, zero, bb16
  JAL zero, bb24
bb15:
  ADD s0, s5, zero
  LW s6, 0(s3)
  LW s7, 0(s1)
  DIVW s8, s6, s7
  ADDI s6, zero, 2
  REMW s7, s8, s6
  XORI s6, s7, 1
  SLTIU s7, s6, 1
  BNE s7, zero, bb18
  JAL zero, bb25
bb16:
  LW s0, 0(s1)
  ADD s4, s0, zero
  JAL zero, bb17
bb17:
  ADD s0, s4, zero
  ADD s5, s0, zero
  JAL zero, bb15
bb18:
  XOR s6, s2, zero
  SLTIU s7, s6, 1
  BNE s7, zero, bb20
  JAL zero, bb26
bb19:
  ADD s7, s8, zero
  ADD s9, s7, zero
  JAL zero, bb13
bb20:
  LW s6, 0(s1)
  SUBW s7, s0, s6
  ADD s6, s7, zero
  JAL zero, bb21
bb21:
  ADD s7, s6, zero
  ADD s8, s7, zero
  JAL zero, bb19
bb22:
  ADD s9, zero, zero
  JAL zero, bb13
bb23:
  ADD s5, zero, zero
  JAL zero, bb15
bb24:
  ADD s4, zero, zero
  JAL zero, bb17
bb25:
  ADD s8, s0, zero
  JAL zero, bb19
bb26:
  ADD s6, s0, zero
  JAL zero, bb21
main:
  ADDI sp, sp, -240
  SD s11, 136(sp)
  SD s10, 144(sp)
  SD s9, 152(sp)
  SD s0, 160(sp)
  SD s5, 168(sp)
  SD s7, 176(sp)
  SD s1, 184(sp)
  SD s6, 192(sp)
  SD s2, 200(sp)
  SD s3, 208(sp)
  SD s4, 216(sp)
  SD s8, 224(sp)
  SD ra, 232(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  LA s2, staticvalue
  SW s1, 0(s2)
  ADDI a0, zero, 56
  CALL _sysy_starttime
  ADD s1, s0, zero
  JAL zero, bb28
bb28:
  ADD s0, s1, zero
  SLT s2, zero, s0
  BNE s2, zero, bb29
  JAL zero, bb31
bb29:
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  LA s0, staticvalue
  LW s2, 0(s0)
  LA s0, seed
  LW s4, 0(s0)
  MULW s0, s2, s4
  LA s2, seed
  ADDI s4, s2, 4
  LW s2, 0(s4)
  ADDW s5, s0, s2
  LA s0, staticvalue
  SW s5, 0(s0)
  LA s0, seed
  ADDI s2, s0, 8
  LW s0, 0(s2)
  REMW s6, s5, s0
  LA s0, staticvalue
  SW s6, 0(s0)
  SLT s0, s6, zero
  BNE s0, zero, bb32
  JAL zero, bb33
bb30:
  ADD s1, s3, zero
  JAL zero, bb28
bb31:
  ADDI a0, zero, 64
  CALL _sysy_stoptime
  LUI s0, 2
  ADDIW s0, s0, 1808
  ADD a0, zero, s0
  LA s0, a
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD s11, 136(sp)
  LD s10, 144(sp)
  LD s9, 152(sp)
  LD s0, 160(sp)
  LD s5, 168(sp)
  LD s7, 176(sp)
  LD s1, 184(sp)
  LD s6, 192(sp)
  LD s2, 200(sp)
  LD s3, 208(sp)
  LD s4, 216(sp)
  LD s8, 224(sp)
  LD ra, 232(sp)
  ADDI sp, sp, 240
  JALR zero, 0(ra)
bb32:
  LW s0, 0(s2)
  LA s5, staticvalue
  LW s6, 0(s5)
  ADDW s5, s0, s6
  LA s0, staticvalue
  SW s5, 0(s0)
  JAL zero, bb33
bb33:
  LA s0, staticvalue
  LW s5, 0(s0)
  LUI s0, 73
  ADDIW s0, s0, 992
  REMW s6, s5, s0
  LA s0, seed
  LW s7, 0(s0)
  MULW s0, s5, s7
  LW s5, 0(s4)
  ADDW s4, s0, s5
  LA s0, staticvalue
  SW s4, 0(s0)
  LW s0, 0(s2)
  REMW s5, s4, s0
  LA s0, staticvalue
  SW s5, 0(s0)
  SLT s0, s5, zero
  BNE s0, zero, bb34
  JAL zero, bb35
bb34:
  LW s0, 0(s2)
  LA s2, staticvalue
  LW s4, 0(s2)
  ADDW s2, s0, s4
  LA s0, staticvalue
  SW s2, 0(s0)
  JAL zero, bb35
bb35:
  LA s0, staticvalue
  LW s2, 0(s0)
  ADDI s0, zero, 2
  REMW s4, s2, s0
  ADDI s0, zero, 31
  JAL zero, bb36
bb36:
  ADD s2, s0, zero
  XOR s5, s2, zero
  SLTU s7, zero, s5
  BNE s7, zero, bb37
  JAL zero, bb38
bb37:
  ADDI s5, zero, 1
  SUBW s7, s2, s5
  ADDI s2, zero, 4
  MULW s5, s7, s2
  ADDI t5, sp, 0
  ADD s2, t5, s5
  SW zero, 0(s2)
  ADD s0, s7, zero
  JAL zero, bb36
bb38:
  ADDI s0, zero, 1
  SW s0, 0(sp)
  ADDI s0, sp, 4
  ADDI s2, zero, 2
  SW s2, 0(s0)
  ADDI s0, sp, 8
  ADDI s2, zero, 4
  SW s2, 0(s0)
  ADDI s0, sp, 12
  ADDI s2, zero, 8
  SW s2, 0(s0)
  ADDI s0, sp, 16
  ADDI s2, zero, 16
  SW s2, 0(s0)
  ADDI s0, sp, 20
  ADDI s2, zero, 32
  SW s2, 0(s0)
  ADDI s0, sp, 24
  ADDI s2, zero, 64
  SW s2, 0(s0)
  ADDI s0, sp, 28
  ADDI s2, zero, 128
  SW s2, 0(s0)
  ADDI s0, sp, 32
  ADDI s2, zero, 256
  SW s2, 0(s0)
  ADDI s0, sp, 36
  ADDI s2, zero, 512
  SW s2, 0(s0)
  ADDI s0, sp, 40
  ADDI s2, zero, 1024
  SW s2, 0(s0)
  ADDI s0, zero, 10
  JAL zero, bb39
bb39:
  ADD s2, s0, zero
  SLTI s5, s2, 30
  BNE s5, zero, bb40
  JAL zero, bb41
bb40:
  ADDIW s5, s2, 1
  ADDI s7, zero, 4
  MULW s8, s5, s7
  ADDI t5, sp, 0
  ADD s7, t5, s8
  ADDI s8, zero, 4
  MULW s9, s2, s8
  ADDI t5, sp, 0
  ADD s2, t5, s9
  LW s8, 0(s2)
  ADDI s2, zero, 2
  MULW s9, s8, s2
  SW s9, 0(s7)
  ADD s0, s5, zero
  JAL zero, bb39
bb41:
  ADDI s0, zero, 30
  DIVW s2, s6, s0
  LUI s0, 2
  ADDIW s0, s0, 1808
  SLT s5, s2, s0
  XORI s0, s5, 1
  BNE s0, zero, bb30
  JAL zero, bb42
bb42:
  ADDI s0, zero, 4
  MULW s1, s2, s0
  LA s0, a
  ADD t4, s0, s1
  SD t4, 128(sp)
  LD t4, 128(sp)
  LW s0, 0(t4)
  ADDI s1, zero, 30
  REMW s5, s6, s1
  ADDI s1, zero, 4
  MULW s6, s5, s1
  ADDI t5, sp, 0
  ADD s1, t5, s6
  LW s5, 0(s1)
  DIVW s6, s0, s5
  ADDI s0, zero, 2
  REMW s5, s6, s0
  XOR s0, s5, s4
  SLTU s5, zero, s0
  BNE s5, zero, bb43
  JAL zero, bb53
bb43:
  LD t4, 128(sp)
  LW s0, 0(t4)
  LW s5, 0(s1)
  DIVW s6, s0, s5
  ADDI s0, zero, 2
  REMW s5, s6, s0
  XOR s0, s5, zero
  SLTIU s5, s0, 1
  BNE s5, zero, bb45
  JAL zero, bb54
bb44:
  ADD s8, s10, zero
  LD t4, 128(sp)
  LW s11, 0(t4)
  ADDW s2, s11, s8
  LD t4, 128(sp)
  SW s2, 0(t4)
  JAL zero, bb30
bb45:
  XORI s0, s4, 1
  SLTIU s5, s0, 1
  BNE s5, zero, bb47
  JAL zero, bb55
bb46:
  ADD s0, s6, zero
  LD t4, 128(sp)
  LW s7, 0(t4)
  LW s8, 0(s1)
  DIVW s9, s7, s8
  ADDI s7, zero, 2
  REMW s8, s9, s7
  XORI s7, s8, 1
  SLTIU s8, s7, 1
  BNE s8, zero, bb49
  JAL zero, bb56
bb47:
  LW s0, 0(s1)
  ADD s5, s0, zero
  JAL zero, bb48
bb48:
  ADD s0, s5, zero
  ADD s6, s0, zero
  JAL zero, bb46
bb49:
  XOR s7, s4, zero
  SLTIU s8, s7, 1
  BNE s8, zero, bb51
  JAL zero, bb57
bb50:
  ADD s8, s9, zero
  ADD s10, s8, zero
  JAL zero, bb44
bb51:
  LW s7, 0(s1)
  SUBW s8, s0, s7
  ADD s7, s8, zero
  JAL zero, bb52
bb52:
  ADD s8, s7, zero
  ADD s9, s8, zero
  JAL zero, bb50
bb53:
  ADD s10, zero, zero
  JAL zero, bb44
bb54:
  ADD s6, zero, zero
  JAL zero, bb46
bb55:
  ADD s5, zero, zero
  JAL zero, bb48
bb56:
  ADD s9, s0, zero
  JAL zero, bb50
bb57:
  ADD s7, s0, zero
  JAL zero, bb52
