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
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  LA s0, staticvalue
  LW s0, 0(s0)
  LA s1, seed
  LW s1, 0(s1)
  MULW s0, s0, s1
  LA s1, seed
  ADDI s1, s1, 4
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LA s1, staticvalue
  SW s0, 0(s1)
  LA s1, seed
  ADDI s1, s1, 8
  LW s1, 0(s1)
  REMW s0, s0, s1
  LA s2, staticvalue
  SW s0, 0(s2)
  BLT s0, zero, bb2
  # implict jump to bb1
bb1:
  LA s0, staticvalue
  LW s0, 0(s0)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:
  LA s0, staticvalue
  LW s0, 0(s0)
  ADDW s0, s1, s0
  LA s1, staticvalue
  SW s0, 0(s1)
  JAL zero, bb1
set:
  ADDI sp, sp, -224
  SD ra, 128(sp)
  SD s0, 136(sp)
  SD s1, 144(sp)
  SD s2, 152(sp)
  SD s3, 160(sp)
  SD s4, 168(sp)
  SD s5, 176(sp)
  SD s6, 184(sp)
  SD s7, 192(sp)
  SD s8, 200(sp)
  SD s9, 208(sp)
  SD s10, 216(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 31
  # implict jump to bb4
bb4:
  ADD s2, s1, zero
  BNE s2, zero, bb26
  # implict jump to bb5
bb5:
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
  # implict jump to bb6
bb6:
  ADD s4, s3, zero
  SLTI s5, s4, 30
  BNE s5, zero, bb25
  # implict jump to bb7
bb7:
  ADDI s5, zero, 30
  DIVW s5, a1, s5
  LUI s6, 2
  ADDIW s6, s6, 1808
  SLT s6, s5, s6
  XORI s6, s6, 1
  BNE s6, zero, bb24
  # implict jump to bb8
bb8:
  SLLIW s5, s5, 2
  ADD s5, s0, s5
  LW s6, 0(s5)
  ADDI s7, zero, 30
  REMW s7, a1, s7
  SLLIW s7, s7, 2
  ADDI t5, sp, 0
  ADD s7, t5, s7
  LW s7, 0(s7)
  DIVW s6, s6, s7
  ADDI s8, zero, 2
  REMW s6, s6, s8
  BNE s6, a2, bb11
  # implict jump to bb9
bb9:
  ADD s8, zero, zero
  # implict jump to bb10
bb10:
  LW s6, 0(s5)
  ADDW s6, s6, s8
  SW s6, 0(s5)
  ADD a0, zero, zero
  LD ra, 128(sp)
  LD s0, 136(sp)
  LD s1, 144(sp)
  LD s2, 152(sp)
  LD s3, 160(sp)
  LD s4, 168(sp)
  LD s5, 176(sp)
  LD s6, 184(sp)
  LD s7, 192(sp)
  LD s8, 200(sp)
  LD s9, 208(sp)
  LD s10, 216(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb11:
  SLTIU s9, s6, 1
  BNE s9, zero, bb20
  # implict jump to bb12
bb12:
  ADD s9, zero, zero
  # implict jump to bb13
bb13:
  XORI s6, s6, 1
  SLTIU s6, s6, 1
  BNE s6, zero, bb16
  # implict jump to bb14
bb14:
  ADD s6, s9, zero
  # implict jump to bb15
bb15:
  ADD s8, s6, zero
  JAL zero, bb10
bb16:
  SLTIU s10, a2, 1
  BNE s10, zero, bb19
  # implict jump to bb17
bb17:
  ADD s10, s9, zero
  # implict jump to bb18
bb18:
  ADD s6, s10, zero
  JAL zero, bb15
bb19:
  SUBW s7, s9, s7
  ADD s10, s7, zero
  JAL zero, bb18
bb20:
  XORI s10, a2, 1
  SLTIU s10, s10, 1
  BNE s10, zero, bb23
  # implict jump to bb21
bb21:
  ADD s10, zero, zero
  # implict jump to bb22
bb22:
  ADD s9, s10, zero
  JAL zero, bb13
bb23:
  ADD s10, s7, zero
  JAL zero, bb22
bb24:
  ADD a0, zero, zero
  LD ra, 128(sp)
  LD s0, 136(sp)
  LD s1, 144(sp)
  LD s2, 152(sp)
  LD s3, 160(sp)
  LD s4, 168(sp)
  LD s5, 176(sp)
  LD s6, 184(sp)
  LD s7, 192(sp)
  LD s8, 200(sp)
  LD s9, 208(sp)
  LD s10, 216(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb25:
  ADDIW s5, s4, 1
  SLLIW s6, s5, 2
  ADDI t5, sp, 0
  ADD s6, t5, s6
  SLLIW s4, s4, 2
  ADDI t5, sp, 0
  ADD s4, t5, s4
  LW s4, 0(s4)
  SLLIW s4, s4, 1
  SW s4, 0(s6)
  ADD s3, s5, zero
  JAL zero, bb6
bb26:
  ADDI s3, zero, 1
  SUBW s2, s2, s3
  SLLIW s3, s2, 2
  ADDI t5, sp, 0
  ADD s3, t5, s3
  SW zero, 0(s3)
  ADD s1, s2, zero
  JAL zero, bb4
main:
  ADDI sp, sp, -256
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  LA s2, staticvalue
  SW s1, 0(s2)
  ADDI a0, zero, 56
  CALL _sysy_starttime
  LA s1, seed
  ADDI s1, s1, 4
  LA s2, seed
  ADDI s2, s2, 8
  ADDI s3, sp, 132
  ADDI s4, sp, 136
  ADDI s5, sp, 140
  ADDI s6, sp, 144
  ADDI s7, sp, 148
  ADDI s8, sp, 152
  ADDI s9, sp, 156
  ADDI t4, sp, 160
  SD t4, 104(sp)
  ADDI t4, sp, 164
  SD t4, 112(sp)
  ADDI t4, sp, 168
  SD t4, 120(sp)
  # implict jump to bb28
bb28:
  ADD s11, s0, zero
  BLT zero, s11, bb30
  # implict jump to bb29
bb29:
  ADDI a0, zero, 64
  CALL _sysy_stoptime
  LUI s10, 2
  ADDIW s10, s10, 1808
  ADD a0, zero, s10
  LA s10, a
  ADD a1, s10, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 256
  JALR zero, 0(ra)
bb30:
  ADDI s10, zero, 1
  SUBW s10, s11, s10
  LA s11, staticvalue
  LW s11, 0(s11)
  LA ra, seed
  LW ra, 0(ra)
  MULW s11, s11, ra
  LW t0, 0(s1)
  ADDW s11, s11, t0
  LA t1, staticvalue
  SW s11, 0(t1)
  LW t1, 0(s2)
  REMW s11, s11, t1
  LA t2, staticvalue
  SW s11, 0(t2)
  BLT s11, zero, bb57
  # implict jump to bb31
bb31:
  LA s11, staticvalue
  LW s11, 0(s11)
  LUI t2, 73
  ADDIW t2, t2, 992
  REMW t2, s11, t2
  MULW s11, s11, ra
  ADDW s11, s11, t0
  LA ra, staticvalue
  SW s11, 0(ra)
  REMW s11, s11, t1
  LA ra, staticvalue
  SW s11, 0(ra)
  BLT s11, zero, bb56
  # implict jump to bb32
bb32:
  LA s11, staticvalue
  LW s11, 0(s11)
  ADDI ra, zero, 2
  REMW s11, s11, ra
  ADDI ra, zero, 31
  # implict jump to bb33
bb33:
  ADD t0, ra, zero
  BNE t0, zero, bb55
  # implict jump to bb34
bb34:
  ADDI t1, zero, 1
  SW t1, 128(sp)
  ADDI t1, zero, 2
  SW t1, 0(s3)
  ADDI t1, zero, 4
  SW t1, 0(s4)
  ADDI t1, zero, 8
  SW t1, 0(s5)
  ADDI t1, zero, 16
  SW t1, 0(s6)
  ADDI t1, zero, 32
  SW t1, 0(s7)
  ADDI t1, zero, 64
  SW t1, 0(s8)
  ADDI t1, zero, 128
  SW t1, 0(s9)
  ADDI t1, zero, 256
  LD t4, 104(sp)
  SW t1, 0(t4)
  ADDI t1, zero, 512
  LD t4, 112(sp)
  SW t1, 0(t4)
  ADDI t1, zero, 1024
  LD t4, 120(sp)
  SW t1, 0(t4)
  ADDI t1, zero, 10
  # implict jump to bb35
bb35:
  ADD a0, t1, zero
  SLTI a1, a0, 30
  BNE a1, zero, bb54
  # implict jump to bb36
bb36:
  ADDI a1, zero, 30
  DIVW a1, t2, a1
  LUI a2, 2
  ADDIW a2, a2, 1808
  SLT a2, a1, a2
  XORI a2, a2, 1
  BNE a2, zero, bb40
  # implict jump to bb37
bb37:
  SLLIW a1, a1, 2
  LA a2, a
  ADD a1, a2, a1
  LW a2, 0(a1)
  ADDI a3, zero, 30
  REMW a3, t2, a3
  SLLIW a3, a3, 2
  ADDI a4, sp, 128
  ADD a3, a4, a3
  LW a3, 0(a3)
  DIVW a2, a2, a3
  ADDI a4, zero, 2
  REMW a2, a2, a4
  BNE a2, s11, bb41
  # implict jump to bb38
bb38:
  ADD a4, zero, zero
  # implict jump to bb39
bb39:
  LW a2, 0(a1)
  ADDW a2, a2, a4
  SW a2, 0(a1)
  # implict jump to bb40
bb40:
  ADD s0, s10, zero
  JAL zero, bb28
bb41:
  SLTIU a5, a2, 1
  BNE a5, zero, bb50
  # implict jump to bb42
bb42:
  ADD a5, zero, zero
  # implict jump to bb43
bb43:
  XORI a2, a2, 1
  SLTIU a2, a2, 1
  BNE a2, zero, bb46
  # implict jump to bb44
bb44:
  ADD a2, a5, zero
  # implict jump to bb45
bb45:
  ADD a4, a2, zero
  JAL zero, bb39
bb46:
  SLTIU a6, s11, 1
  BNE a6, zero, bb49
  # implict jump to bb47
bb47:
  ADD a6, a5, zero
  # implict jump to bb48
bb48:
  ADD a2, a6, zero
  JAL zero, bb45
bb49:
  SUBW a3, a5, a3
  ADD a6, a3, zero
  JAL zero, bb48
bb50:
  XORI a6, s11, 1
  SLTIU a6, a6, 1
  BNE a6, zero, bb53
  # implict jump to bb51
bb51:
  ADD a6, zero, zero
  # implict jump to bb52
bb52:
  ADD a5, a6, zero
  JAL zero, bb43
bb53:
  ADD a6, a3, zero
  JAL zero, bb52
bb54:
  ADDIW s0, a0, 1
  SLLIW a1, s0, 2
  ADDI t1, sp, 128
  ADD a1, t1, a1
  SLLIW a0, a0, 2
  ADDI t1, sp, 128
  ADD a0, t1, a0
  LW a0, 0(a0)
  SLLIW a0, a0, 1
  SW a0, 0(a1)
  ADD t1, s0, zero
  JAL zero, bb35
bb55:
  ADDI s0, zero, 1
  SUBW s0, t0, s0
  SLLIW t0, s0, 2
  ADDI ra, sp, 128
  ADD t0, ra, t0
  SW zero, 0(t0)
  ADD ra, s0, zero
  JAL zero, bb33
bb56:
  LA s11, staticvalue
  LW s11, 0(s11)
  ADDW s11, t1, s11
  LA ra, staticvalue
  SW s11, 0(ra)
  JAL zero, bb32
bb57:
  LA s11, staticvalue
  LW s11, 0(s11)
  ADDW s11, t1, s11
  LA t2, staticvalue
  SW s11, 0(t2)
  JAL zero, bb31
