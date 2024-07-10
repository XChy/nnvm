.global main
.global getNumPos
.global radixSort
.global getMaxNum
.section .bss

a:
.space 120000040

.section .data
ans:
.word 0x00000000

base:
.word 0x00000010
.section .text
main:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  LA s0, a
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  ADDI a0, zero, 90
  CALL _sysy_starttime
  ADDI a0, zero, 8
  LA s1, a
  ADD a1, s1, zero
  ADD a2, zero, zero
  ADD a3, s0, zero
  CALL radixSort
  ADD s1, zero, zero
  JAL zero, bb1
bb1:
  ADD s2, s1, zero
  SLT s3, s2, s0
  BNE s3, zero, bb2
  JAL zero, bb3
bb2:
  LA s3, ans
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s2, s3
  LA s3, a
  ADD s6, s3, s5
  LW s3, 0(s6)
  ADDIW s5, s2, 2
  REMW s6, s3, s5
  MULW s3, s2, s6
  ADDW s5, s4, s3
  LA s3, ans
  SW s5, 0(s3)
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb1
bb3:
  LA s0, ans
  LW s1, 0(s0)
  SLT s0, s1, zero
  BNE s0, zero, bb4
  JAL zero, bb5
bb4:
  LA s0, ans
  LW s1, 0(s0)
  SUBW s0, zero, s1
  LA s1, ans
  SW s0, 0(s1)
  JAL zero, bb5
bb5:
  ADDI a0, zero, 102
  CALL _sysy_stoptime
  LA s0, ans
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
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
getNumPos:
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
  ADD s2, zero, zero
  ADD s3, s0, zero
  JAL zero, bb7
bb7:
  ADD s0, s3, zero
  ADD s4, s2, zero
  SLT s5, s4, s1
  BNE s5, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s5, zero, 16
  DIVW s6, s0, s5
  ADDIW s5, s4, 1
  ADD s2, s5, zero
  ADD s3, s6, zero
  JAL zero, bb7
bb9:
  ADDI s1, zero, 16
  REMW s2, s0, s1
  ADD a0, s2, zero
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
radixSort:
  ADDI sp, sp, -320
  SD s2, 216(sp)
  SD s3, 224(sp)
  SD s11, 232(sp)
  SD s10, 240(sp)
  SD s9, 248(sp)
  SD s8, 256(sp)
  SD s7, 264(sp)
  SD s4, 272(sp)
  SD s5, 280(sp)
  SD s0, 288(sp)
  SD s6, 296(sp)
  SD s1, 304(sp)
  SD ra, 312(sp)
  ADD t4, a0, zero
  SW t4, 208(sp)
  ADD t4, a1, zero
  SD t4, 200(sp)
  ADD t4, a2, zero
  SW t4, 196(sp)
  ADD t4, a3, zero
  SW t4, 192(sp)
  ADDI s4, zero, 16
  JAL zero, bb11
bb11:
  ADD s5, s4, zero
  XOR s6, s5, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb12
  JAL zero, bb13
bb12:
  ADDI s6, zero, 1
  SUBW s7, s5, s6
  ADDI s5, zero, 4
  MULW s6, s7, s5
  ADDI t5, sp, 128
  ADD s5, t5, s6
  SW zero, 0(s5)
  ADD s4, s7, zero
  JAL zero, bb11
bb13:
  ADDI s4, zero, 16
  JAL zero, bb14
bb14:
  ADD s5, s4, zero
  XOR s6, s5, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb15
  JAL zero, bb16
bb15:
  ADDI s6, zero, 1
  SUBW s7, s5, s6
  ADDI s5, zero, 4
  MULW s6, s7, s5
  ADDI t5, sp, 64
  ADD s5, t5, s6
  SW zero, 0(s5)
  ADD s4, s7, zero
  JAL zero, bb14
bb16:
  ADDI s4, zero, 16
  JAL zero, bb17
bb17:
  ADD s5, s4, zero
  XOR s6, s5, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb18
  JAL zero, bb19
bb18:
  ADDI s6, zero, 1
  SUBW s7, s5, s6
  ADDI s5, zero, 4
  MULW s6, s7, s5
  ADDI t5, sp, 0
  ADD s5, t5, s6
  SW zero, 0(s5)
  ADD s4, s7, zero
  JAL zero, bb17
bb19:
  LW t4, 208(sp)
  XORI s4, t4, -1
  SLTIU s5, s4, 1
  BNE s5, zero, bb20
  JAL zero, bb21
bb20:
  ADDI t4, zero, 1
  SB t4, 212(sp)
  JAL zero, bb22
bb21:
  LW t4, 196(sp)
  ADDIW s0, t4, 1
  LW t4, 192(sp)
  SLT s1, s0, t4
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 212(sp)
  JAL zero, bb22
bb22:
  LB t4, 212(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb23
  JAL zero, bb24
bb23:
  LD s2, 216(sp)
  LD s3, 224(sp)
  LD s11, 232(sp)
  LD s10, 240(sp)
  LD s9, 248(sp)
  LD s8, 256(sp)
  LD s7, 264(sp)
  LD s4, 272(sp)
  LD s5, 280(sp)
  LD s0, 288(sp)
  LD s6, 296(sp)
  LD s1, 304(sp)
  LD ra, 312(sp)
  ADDI sp, sp, 320
  JALR zero, 0(ra)
bb24:
  LW t4, 196(sp)
  ADD s5, t4, zero
  JAL zero, bb25
bb25:
  ADD s6, s5, zero
  LW t4, 192(sp)
  SLT s7, s6, t4
  BNE s7, zero, bb26
  JAL zero, bb27
bb26:
  ADDI s7, zero, 4
  MULW s8, s6, s7
  LD t4, 200(sp)
  ADD s7, t4, s8
  LW s8, 0(s7)
  ADD s7, zero, zero
  ADD s9, s8, zero
  JAL zero, bb45
bb27:
  LW t4, 196(sp)
  SW t4, 128(sp)
  LW s5, 0(sp)
  LW t4, 196(sp)
  ADDW s6, t4, s5
  SW s6, 64(sp)
  ADDI s5, zero, 1
  JAL zero, bb28
bb28:
  ADD s6, s5, zero
  SLTI s7, s6, 16
  BNE s7, zero, bb29
  JAL zero, bb30
bb29:
  ADDI s7, zero, 4
  MULW s8, s6, s7
  ADDI t5, sp, 128
  ADD s7, t5, s8
  ADDI s9, zero, 1
  SUBW s10, s6, s9
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADDI t5, sp, 64
  ADD s9, t5, s11
  LW s10, 0(s9)
  SW s10, 0(s7)
  ADDI t5, sp, 64
  ADD s7, t5, s8
  ADDI t5, sp, 0
  ADD s9, t5, s8
  LW s8, 0(s9)
  ADDW s9, s10, s8
  SW s9, 0(s7)
  ADDIW s7, s6, 1
  ADD s5, s7, zero
  JAL zero, bb28
bb30:
  ADD s5, zero, zero
  ADD s6, zero, zero
  ADD s7, zero, zero
  JAL zero, bb31
bb31:
  ADD s8, s7, zero
  ADD s9, s6, zero
  ADD s10, s5, zero
  SLTI s11, s8, 16
  BNE s11, zero, bb32
  JAL zero, bb33
bb32:
  ADDI s11, zero, 4
  MULW t0, s8, s11
  ADD s11, s10, zero
  ADD s10, s9, zero
  JAL zero, bb34
bb33:
  LW t4, 196(sp)
  SW t4, 128(sp)
  LW s0, 0(sp)
  LW t4, 196(sp)
  ADDW s1, t4, s0
  SW s1, 64(sp)
  ADD s0, zero, zero
  JAL zero, bb40
bb34:
  ADD s9, s10, zero
  ADD t1, s11, zero
  ADDI t2, sp, 128
  ADD t2, t2, t0
  LW a4, 0(t2)
  ADDI a5, sp, 64
  ADD a5, a5, t0
  LW a6, 0(a5)
  SLT a5, a4, a6
  BNE a5, zero, bb35
  JAL zero, bb36
bb35:
  LW a4, 0(t2)
  ADDI a5, zero, 4
  MULW a6, a4, a5
  LD t4, 200(sp)
  ADD a4, t4, a6
  LW a5, 0(a4)
  ADD a4, t1, zero
  ADD a6, a5, zero
  JAL zero, bb37
bb36:
  ADDIW s0, s8, 1
  ADD s5, t1, zero
  ADD s6, s9, zero
  ADD s7, s0, zero
  JAL zero, bb31
bb37:
  ADD a5, a6, zero
  ADD a7, a4, zero
  ADD t6, zero, zero
  ADD s3, a5, zero
  JAL zero, bb48
bb38:
  ADDI s0, zero, 4
  MULW s2, s1, s0
  ADDI t5, sp, 128
  ADD s0, t5, s2
  LW s1, 0(s0)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LD t4, 200(sp)
  ADD s1, t4, s3
  LW s2, 0(s1)
  SW a5, 0(s1)
  LW s1, 0(s0)
  ADDIW s3, s1, 1
  SW s3, 0(s0)
  ADD a4, a5, zero
  ADD a6, s2, zero
  JAL zero, bb37
bb39:
  LW s0, 0(t2)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LD t4, 200(sp)
  ADD s0, t4, s2
  SW a5, 0(s0)
  LW s0, 0(t2)
  ADDIW s1, s0, 1
  SW s1, 0(t2)
  ADD s11, a7, zero
  ADD s10, a5, zero
  JAL zero, bb34
bb40:
  ADD s1, s0, zero
  SLTI s2, s1, 16
  BNE s2, zero, bb41
  JAL zero, bb42
bb41:
  SLT s2, zero, s1
  BNE s2, zero, bb43
  JAL zero, bb44
bb42:
  LD s2, 216(sp)
  LD s3, 224(sp)
  LD s11, 232(sp)
  LD s10, 240(sp)
  LD s9, 248(sp)
  LD s8, 256(sp)
  LD s7, 264(sp)
  LD s4, 272(sp)
  LD s5, 280(sp)
  LD s0, 288(sp)
  LD s6, 296(sp)
  LD s1, 304(sp)
  LD ra, 312(sp)
  ADDI sp, sp, 320
  JALR zero, 0(ra)
bb43:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 128
  ADD s2, t5, s3
  ADDI s4, zero, 1
  SUBW s5, s1, s4
  ADDI s4, zero, 4
  MULW s6, s5, s4
  ADDI t5, sp, 64
  ADD s4, t5, s6
  LW s5, 0(s4)
  SW s5, 0(s2)
  ADDI t5, sp, 64
  ADD s2, t5, s3
  ADDI t5, sp, 0
  ADD s4, t5, s3
  LW s3, 0(s4)
  ADDW s4, s5, s3
  SW s4, 0(s2)
  JAL zero, bb44
bb44:
  ADDI s2, zero, 1
  LW t4, 208(sp)
  SUBW s3, t4, s2
  ADDI s2, zero, 4
  MULW s4, s1, s2
  ADDI t5, sp, 128
  ADD s2, t5, s4
  LW s5, 0(s2)
  ADDI t5, sp, 64
  ADD s2, t5, s4
  LW s4, 0(s2)
  ADD a0, s3, zero
  LD t4, 200(sp)
  ADD a1, t4, zero
  ADD a2, s5, zero
  ADD a3, s4, zero
  CALL radixSort
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb40
bb45:
  ADD s8, s9, zero
  ADD s10, s7, zero
  LW t4, 208(sp)
  SLT s11, s10, t4
  BNE s11, zero, bb46
  JAL zero, bb47
bb46:
  ADDI s11, zero, 16
  DIVW t0, s8, s11
  ADDIW s11, s10, 1
  ADD s7, s11, zero
  ADD s9, t0, zero
  JAL zero, bb45
bb47:
  ADDI s7, zero, 16
  REMW s9, s8, s7
  ADDI s7, zero, 4
  MULW s8, s9, s7
  ADDI t5, sp, 0
  ADD s7, t5, s8
  LW s8, 0(s7)
  ADDIW s9, s8, 1
  SW s9, 0(s7)
  ADDIW s7, s6, 1
  ADD s5, s7, zero
  JAL zero, bb25
bb48:
  ADD s2, s3, zero
  ADD s1, t6, zero
  LW t4, 208(sp)
  SLT s0, s1, t4
  BNE s0, zero, bb49
  JAL zero, bb50
bb49:
  ADDI s0, zero, 16
  DIVW s4, s2, s0
  ADDIW s0, s1, 1
  ADD t6, s0, zero
  ADD s3, s4, zero
  JAL zero, bb48
bb50:
  ADDI s0, zero, 16
  REMW s1, s2, s0
  XOR s0, s1, s8
  SLTU s2, zero, s0
  BNE s2, zero, bb38
  JAL zero, bb39
getMaxNum:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s8, 32(sp)
  SD s6, 40(sp)
  SD s1, 48(sp)
  SD s7, 56(sp)
  SD s5, 64(sp)
  SD s0, 72(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  JAL zero, bb52
bb52:
  ADD s4, s3, zero
  ADD s5, s2, zero
  SLT s6, s5, s0
  BNE s6, zero, bb53
  JAL zero, bb54
bb53:
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADD s6, s1, s7
  LW s7, 0(s6)
  SLT s8, s4, s7
  BNE s8, zero, bb55
  JAL zero, bb57
bb54:
  ADD a0, s4, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s8, 32(sp)
  LD s6, 40(sp)
  LD s1, 48(sp)
  LD s7, 56(sp)
  LD s5, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb55:
  LW s7, 0(s6)
  ADD s6, s7, zero
  JAL zero, bb56
bb56:
  ADD s7, s6, zero
  ADDIW s8, s5, 1
  ADD s2, s8, zero
  ADD s3, s7, zero
  JAL zero, bb52
bb57:
  ADD s6, s4, zero
  JAL zero, bb56
