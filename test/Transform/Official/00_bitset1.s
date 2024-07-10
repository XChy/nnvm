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
  BNE s0, zero, bb2
  # implict jump to bb1
bb1:
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
bb2:
  LW s0, 0(s1)
  LA s1, staticvalue
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LA s0, staticvalue
  SW s1, 0(s0)
  JAL zero, bb1
set:
  ADDI sp, sp, -240
  SD s11, 128(sp)
  SD s10, 136(sp)
  SD ra, 144(sp)
  SD s9, 152(sp)
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
  # implict jump to bb4
bb4:
  ADD s4, s3, zero
  XOR s5, s4, zero
  SLTU s6, zero, s5
  BNE s6, zero, bb26
  # implict jump to bb5
bb5:
  ADDI s5, zero, 1
  SW s5, 0(sp)
  ADDI s5, sp, 4
  ADDI s6, zero, 2
  SW s6, 0(s5)
  ADDI s5, sp, 8
  ADDI s6, zero, 4
  SW s6, 0(s5)
  ADDI s5, sp, 12
  ADDI s6, zero, 8
  SW s6, 0(s5)
  ADDI s5, sp, 16
  ADDI s6, zero, 16
  SW s6, 0(s5)
  ADDI s5, sp, 20
  ADDI s6, zero, 32
  SW s6, 0(s5)
  ADDI s5, sp, 24
  ADDI s6, zero, 64
  SW s6, 0(s5)
  ADDI s5, sp, 28
  ADDI s6, zero, 128
  SW s6, 0(s5)
  ADDI s5, sp, 32
  ADDI s6, zero, 256
  SW s6, 0(s5)
  ADDI s5, sp, 36
  ADDI s6, zero, 512
  SW s6, 0(s5)
  ADDI s5, sp, 40
  ADDI s6, zero, 1024
  SW s6, 0(s5)
  ADDI s5, zero, 10
  # implict jump to bb6
bb6:
  ADD s6, s5, zero
  SLTI s7, s6, 30
  BNE s7, zero, bb25
  # implict jump to bb7
bb7:
  ADDI s7, zero, 30
  DIVW s8, s1, s7
  LUI s7, 2
  ADDIW s7, s7, 1808
  SLT s9, s8, s7
  XORI s7, s9, 1
  BNE s7, zero, bb24
  # implict jump to bb8
bb8:
  SLLIW s7, s8, 2
  ADD s8, s0, s7
  LW s7, 0(s8)
  ADDI s9, zero, 30
  REMW s10, s1, s9
  SLLIW s9, s10, 2
  ADDI t5, sp, 0
  ADD s10, t5, s9
  LW s9, 0(s10)
  DIVW s11, s7, s9
  ADDI s7, zero, 2
  REMW s9, s11, s7
  XOR s7, s9, s2
  SLTU s9, zero, s7
  BNE s9, zero, bb11
  # implict jump to bb9
bb9:
  ADD s7, zero, zero
  # implict jump to bb10
bb10:
  ADD s9, s7, zero
  LW s7, 0(s8)
  ADDW s10, s7, s9
  SW s10, 0(s8)
  ADD a0, zero, zero
  LD s11, 128(sp)
  LD s10, 136(sp)
  LD ra, 144(sp)
  LD s9, 152(sp)
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
  LW s9, 0(s8)
  LW s11, 0(s10)
  DIVW t0, s9, s11
  ADDI s9, zero, 2
  REMW s11, t0, s9
  XOR s9, s11, zero
  SLTIU s11, s9, 1
  BNE s11, zero, bb20
  # implict jump to bb12
bb12:
  ADD s9, zero, zero
  # implict jump to bb13
bb13:
  ADD s11, s9, zero
  LW s9, 0(s8)
  LW t0, 0(s10)
  DIVW t1, s9, t0
  ADDI s9, zero, 2
  REMW t0, t1, s9
  XORI s9, t0, 1
  SLTIU t0, s9, 1
  BNE t0, zero, bb16
  # implict jump to bb14
bb14:
  ADD s9, s11, zero
  # implict jump to bb15
bb15:
  ADD s10, s9, zero
  ADD s7, s10, zero
  JAL zero, bb10
bb16:
  XOR t0, s2, zero
  SLTIU t1, t0, 1
  BNE t1, zero, bb19
  # implict jump to bb17
bb17:
  ADD t0, s11, zero
  # implict jump to bb18
bb18:
  ADD s10, t0, zero
  ADD s9, s10, zero
  JAL zero, bb15
bb19:
  LW t1, 0(s10)
  SUBW s10, s11, t1
  ADD t0, s10, zero
  JAL zero, bb18
bb20:
  XORI s11, s2, 1
  SLTIU t0, s11, 1
  BNE t0, zero, bb23
  # implict jump to bb21
bb21:
  ADD s11, zero, zero
  # implict jump to bb22
bb22:
  ADD t0, s11, zero
  ADD s9, t0, zero
  JAL zero, bb13
bb23:
  LW t0, 0(s10)
  ADD s11, t0, zero
  JAL zero, bb22
bb24:
  ADD a0, zero, zero
  LD s11, 128(sp)
  LD s10, 136(sp)
  LD ra, 144(sp)
  LD s9, 152(sp)
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
bb25:
  ADDIW s7, s6, 1
  SLLIW s8, s7, 2
  ADDI t5, sp, 0
  ADD s9, t5, s8
  SLLIW s8, s6, 2
  ADDI t5, sp, 0
  ADD s6, t5, s8
  LW s8, 0(s6)
  SLLIW s6, s8, 1
  SW s6, 0(s9)
  ADD s5, s7, zero
  JAL zero, bb6
bb26:
  ADDI s5, zero, 1
  SUBW s6, s4, s5
  SLLIW s4, s6, 2
  ADDI t5, sp, 0
  ADD s5, t5, s4
  SW zero, 0(s5)
  ADD s3, s6, zero
  JAL zero, bb4
main:
  ADDI sp, sp, -240
  SD s11, 128(sp)
  SD s10, 136(sp)
  SD s9, 144(sp)
  SD s0, 152(sp)
  SD s5, 160(sp)
  SD s7, 168(sp)
  SD s1, 176(sp)
  SD s6, 184(sp)
  SD s2, 192(sp)
  SD s3, 200(sp)
  SD s4, 208(sp)
  SD s8, 216(sp)
  SD ra, 224(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  LA s2, staticvalue
  SW s1, 0(s2)
  ADDI a0, zero, 56
  CALL _sysy_starttime
  ADD s1, s0, zero
  # implict jump to bb28
bb28:
  ADD s0, s1, zero
  SLT s2, zero, s0
  BNE s2, zero, bb30
  # implict jump to bb29
bb29:
  ADDI a0, zero, 64
  CALL _sysy_stoptime
  LUI s2, 2
  ADDIW s2, s2, 1808
  ADD a0, zero, s2
  LA s2, a
  ADD a1, s2, zero
  CALL putarray
  ADD a0, zero, zero
  LD s11, 128(sp)
  LD s10, 136(sp)
  LD s9, 144(sp)
  LD s0, 152(sp)
  LD s5, 160(sp)
  LD s7, 168(sp)
  LD s1, 176(sp)
  LD s6, 184(sp)
  LD s2, 192(sp)
  LD s3, 200(sp)
  LD s4, 208(sp)
  LD s8, 216(sp)
  LD ra, 224(sp)
  ADDI sp, sp, 240
  JALR zero, 0(ra)
bb30:
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
  BNE s0, zero, bb57
  # implict jump to bb31
bb31:
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
  BNE s0, zero, bb56
  # implict jump to bb32
bb32:
  LA s0, staticvalue
  LW s2, 0(s0)
  ADDI s0, zero, 2
  REMW s4, s2, s0
  ADDI s0, zero, 31
  # implict jump to bb33
bb33:
  ADD s2, s0, zero
  XOR s5, s2, zero
  SLTU s7, zero, s5
  BNE s7, zero, bb55
  # implict jump to bb34
bb34:
  ADDI s5, zero, 1
  SW s5, 0(sp)
  ADDI s5, sp, 4
  ADDI s7, zero, 2
  SW s7, 0(s5)
  ADDI s5, sp, 8
  ADDI s7, zero, 4
  SW s7, 0(s5)
  ADDI s5, sp, 12
  ADDI s7, zero, 8
  SW s7, 0(s5)
  ADDI s5, sp, 16
  ADDI s7, zero, 16
  SW s7, 0(s5)
  ADDI s5, sp, 20
  ADDI s7, zero, 32
  SW s7, 0(s5)
  ADDI s5, sp, 24
  ADDI s7, zero, 64
  SW s7, 0(s5)
  ADDI s5, sp, 28
  ADDI s7, zero, 128
  SW s7, 0(s5)
  ADDI s5, sp, 32
  ADDI s7, zero, 256
  SW s7, 0(s5)
  ADDI s5, sp, 36
  ADDI s7, zero, 512
  SW s7, 0(s5)
  ADDI s5, sp, 40
  ADDI s7, zero, 1024
  SW s7, 0(s5)
  ADDI s5, zero, 10
  # implict jump to bb35
bb35:
  ADD s7, s5, zero
  SLTI s8, s7, 30
  BNE s8, zero, bb54
  # implict jump to bb36
bb36:
  ADDI s8, zero, 30
  DIVW s9, s6, s8
  LUI s8, 2
  ADDIW s8, s8, 1808
  SLT s10, s9, s8
  XORI s8, s10, 1
  BNE s8, zero, bb40
  # implict jump to bb37
bb37:
  SLLIW s8, s9, 2
  LA s9, a
  ADD s10, s9, s8
  LW s8, 0(s10)
  ADDI s9, zero, 30
  REMW s11, s6, s9
  SLLIW s9, s11, 2
  ADDI t5, sp, 0
  ADD s11, t5, s9
  LW s9, 0(s11)
  DIVW ra, s8, s9
  ADDI s8, zero, 2
  REMW s9, ra, s8
  XOR s8, s9, s4
  SLTU s9, zero, s8
  BNE s9, zero, bb41
  # implict jump to bb38
bb38:
  ADD s8, zero, zero
  # implict jump to bb39
bb39:
  ADD s9, s8, zero
  LW s8, 0(s10)
  ADDW s11, s8, s9
  SW s11, 0(s10)
  # implict jump to bb40
bb40:
  ADD s1, s3, zero
  JAL zero, bb28
bb41:
  LW s9, 0(s10)
  LW ra, 0(s11)
  DIVW t0, s9, ra
  ADDI s9, zero, 2
  REMW ra, t0, s9
  XOR s9, ra, zero
  SLTIU ra, s9, 1
  BNE ra, zero, bb50
  # implict jump to bb42
bb42:
  ADD s9, zero, zero
  # implict jump to bb43
bb43:
  ADD ra, s9, zero
  LW s9, 0(s10)
  LW t0, 0(s11)
  DIVW t1, s9, t0
  ADDI s9, zero, 2
  REMW t0, t1, s9
  XORI s9, t0, 1
  SLTIU t0, s9, 1
  BNE t0, zero, bb46
  # implict jump to bb44
bb44:
  ADD s9, ra, zero
  # implict jump to bb45
bb45:
  ADD s11, s9, zero
  ADD s8, s11, zero
  JAL zero, bb39
bb46:
  XOR t0, s4, zero
  SLTIU t1, t0, 1
  BNE t1, zero, bb49
  # implict jump to bb47
bb47:
  ADD t0, ra, zero
  # implict jump to bb48
bb48:
  ADD s11, t0, zero
  ADD s9, s11, zero
  JAL zero, bb45
bb49:
  LW t1, 0(s11)
  SUBW s11, ra, t1
  ADD t0, s11, zero
  JAL zero, bb48
bb50:
  XORI ra, s4, 1
  SLTIU t0, ra, 1
  BNE t0, zero, bb53
  # implict jump to bb51
bb51:
  ADD ra, zero, zero
  # implict jump to bb52
bb52:
  ADD t0, ra, zero
  ADD s9, t0, zero
  JAL zero, bb43
bb53:
  LW t0, 0(s11)
  ADD ra, t0, zero
  JAL zero, bb52
bb54:
  ADDIW s1, s7, 1
  SLLIW s8, s1, 2
  ADDI t5, sp, 0
  ADD s9, t5, s8
  SLLIW s8, s7, 2
  ADDI t5, sp, 0
  ADD s7, t5, s8
  LW s8, 0(s7)
  SLLIW s7, s8, 1
  SW s7, 0(s9)
  ADD s5, s1, zero
  JAL zero, bb35
bb55:
  ADDI s1, zero, 1
  SUBW s5, s2, s1
  SLLIW s1, s5, 2
  ADDI t5, sp, 0
  ADD s2, t5, s1
  SW zero, 0(s2)
  ADD s0, s5, zero
  JAL zero, bb33
bb56:
  LW s0, 0(s2)
  LA s2, staticvalue
  LW s4, 0(s2)
  ADDW s2, s0, s4
  LA s0, staticvalue
  SW s2, 0(s0)
  JAL zero, bb32
bb57:
  LW s0, 0(s2)
  LA s5, staticvalue
  LW s6, 0(s5)
  ADDW s5, s0, s6
  LA s0, staticvalue
  SW s5, 0(s0)
  JAL zero, bb31
