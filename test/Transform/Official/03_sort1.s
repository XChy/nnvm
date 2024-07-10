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
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  SLT s3, s2, s0
  BNE s3, zero, bb5
  # implict jump to bb2
bb2:
  LA s0, ans
  LW s1, 0(s0)
  SLT s0, s1, zero
  BNE s0, zero, bb4
  # implict jump to bb3
bb3:
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
bb4:
  LA s0, ans
  LW s1, 0(s0)
  SUBW s0, zero, s1
  LA s1, ans
  SW s0, 0(s1)
  JAL zero, bb3
bb5:
  LA s3, ans
  LW s4, 0(s3)
  SLLIW s3, s2, 2
  LA s5, a
  ADD s6, s5, s3
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
  # implict jump to bb7
bb7:
  ADD s0, s3, zero
  ADD s4, s2, zero
  SLT s5, s4, s1
  BNE s5, zero, bb9
  # implict jump to bb8
bb8:
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
bb9:
  SRAIW s5, s0, 4
  ADDIW s6, s4, 1
  ADD s2, s6, zero
  ADD s3, s5, zero
  JAL zero, bb7
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
  # implict jump to bb11
bb11:
  ADD s5, s4, zero
  XOR s6, s5, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb50
  # implict jump to bb12
bb12:
  ADDI s4, zero, 16
  # implict jump to bb13
bb13:
  ADD s5, s4, zero
  XOR s6, s5, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb49
  # implict jump to bb14
bb14:
  ADDI s4, zero, 16
  # implict jump to bb15
bb15:
  ADD s5, s4, zero
  XOR s6, s5, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb48
  # implict jump to bb16
bb16:
  LW t4, 208(sp)
  XORI s4, t4, -1
  SLTIU s5, s4, 1
  BNE s5, zero, bb47
  # implict jump to bb17
bb17:
  LW t4, 196(sp)
  ADDIW s0, t4, 1
  LW t4, 192(sp)
  SLT s1, s0, t4
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 212(sp)
  # implict jump to bb18
bb18:
  LB t4, 212(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb46
  # implict jump to bb19
bb19:
  LW t4, 196(sp)
  ADD s5, t4, zero
  # implict jump to bb20
bb20:
  ADD s6, s5, zero
  LW t4, 192(sp)
  SLT s7, s6, t4
  BNE s7, zero, bb42
  # implict jump to bb21
bb21:
  LW t4, 196(sp)
  SW t4, 128(sp)
  LW s5, 0(sp)
  LW t4, 196(sp)
  ADDW s6, t4, s5
  SW s6, 64(sp)
  ADDI s5, zero, 1
  # implict jump to bb22
bb22:
  ADD s6, s5, zero
  SLTI s7, s6, 16
  BNE s7, zero, bb41
  # implict jump to bb23
bb23:
  ADD s5, zero, zero
  ADD s6, zero, zero
  ADD s7, zero, zero
  # implict jump to bb24
bb24:
  ADD s8, s7, zero
  ADD s9, s6, zero
  ADD s10, s5, zero
  SLTI s11, s8, 16
  BNE s11, zero, bb31
  # implict jump to bb25
bb25:
  LW t4, 196(sp)
  SW t4, 128(sp)
  LW s0, 0(sp)
  LW t4, 196(sp)
  ADDW s1, t4, s0
  SW s1, 64(sp)
  ADD s0, zero, zero
  # implict jump to bb26
bb26:
  ADD s1, s0, zero
  SLTI s2, s1, 16
  BNE s2, zero, bb28
  # implict jump to bb27
bb27:
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
bb28:
  SLT s2, zero, s1
  BNE s2, zero, bb30
  # implict jump to bb29
bb29:
  ADDI s2, zero, 1
  LW t4, 208(sp)
  SUBW s3, t4, s2
  SLLIW s2, s1, 2
  ADDI t5, sp, 128
  ADD s4, t5, s2
  LW s5, 0(s4)
  ADDI t5, sp, 64
  ADD s4, t5, s2
  LW s2, 0(s4)
  ADD a0, s3, zero
  LD t4, 200(sp)
  ADD a1, t4, zero
  ADD a2, s5, zero
  ADD a3, s2, zero
  CALL radixSort
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb26
bb30:
  SLLIW s2, s1, 2
  ADDI t5, sp, 128
  ADD s3, t5, s2
  ADDI s4, zero, 1
  SUBW s5, s1, s4
  SLLIW s4, s5, 2
  ADDI t5, sp, 64
  ADD s5, t5, s4
  LW s4, 0(s5)
  SW s4, 0(s3)
  ADDI t5, sp, 64
  ADD s3, t5, s2
  ADDI t5, sp, 0
  ADD s5, t5, s2
  LW s2, 0(s5)
  ADDW s5, s4, s2
  SW s5, 0(s3)
  JAL zero, bb29
bb31:
  SLLIW s11, s8, 2
  ADD t0, s10, zero
  ADD s10, s9, zero
  # implict jump to bb32
bb32:
  ADD s9, s10, zero
  ADD t1, t0, zero
  ADDI t2, sp, 128
  ADD t2, t2, s11
  LW a4, 0(t2)
  ADDI a5, sp, 64
  ADD a5, a5, s11
  LW a6, 0(a5)
  SLT a5, a4, a6
  BNE a5, zero, bb34
  # implict jump to bb33
bb33:
  ADDIW s0, s8, 1
  ADD s5, t1, zero
  ADD s6, s9, zero
  ADD s7, s0, zero
  JAL zero, bb24
bb34:
  LW a4, 0(t2)
  SLLIW a5, a4, 2
  LD t4, 200(sp)
  ADD a4, t4, a5
  LW a5, 0(a4)
  ADD a4, t1, zero
  ADD a6, a5, zero
  # implict jump to bb35
bb35:
  ADD a5, a6, zero
  ADD a7, a4, zero
  ADD t6, zero, zero
  ADD s3, a5, zero
  # implict jump to bb36
bb36:
  ADD s2, s3, zero
  ADD s1, t6, zero
  LW t4, 208(sp)
  SLT s0, s1, t4
  BNE s0, zero, bb40
  # implict jump to bb37
bb37:
  ADDI s0, zero, 16
  REMW s1, s2, s0
  XOR s0, s1, s8
  SLTU s2, zero, s0
  BNE s2, zero, bb39
  # implict jump to bb38
bb38:
  LW s0, 0(t2)
  SLLIW s1, s0, 2
  LD t4, 200(sp)
  ADD s0, t4, s1
  SW a5, 0(s0)
  LW s0, 0(t2)
  ADDIW s1, s0, 1
  SW s1, 0(t2)
  ADD t0, a7, zero
  ADD s10, a5, zero
  JAL zero, bb32
bb39:
  SLLIW s0, s1, 2
  ADDI t5, sp, 128
  ADD s1, t5, s0
  LW s0, 0(s1)
  SLLIW s2, s0, 2
  LD t4, 200(sp)
  ADD s0, t4, s2
  LW s2, 0(s0)
  SW a5, 0(s0)
  LW s0, 0(s1)
  ADDIW s3, s0, 1
  SW s3, 0(s1)
  ADD a4, a5, zero
  ADD a6, s2, zero
  JAL zero, bb35
bb40:
  SRAIW s0, s2, 4
  ADDIW s4, s1, 1
  ADD t6, s4, zero
  ADD s3, s0, zero
  JAL zero, bb36
bb41:
  SLLIW s7, s6, 2
  ADDI t5, sp, 128
  ADD s8, t5, s7
  ADDI s9, zero, 1
  SUBW s10, s6, s9
  SLLIW s9, s10, 2
  ADDI t5, sp, 64
  ADD s10, t5, s9
  LW s9, 0(s10)
  SW s9, 0(s8)
  ADDI t5, sp, 64
  ADD s8, t5, s7
  ADDI t5, sp, 0
  ADD s10, t5, s7
  LW s7, 0(s10)
  ADDW s10, s9, s7
  SW s10, 0(s8)
  ADDIW s7, s6, 1
  ADD s5, s7, zero
  JAL zero, bb22
bb42:
  SLLIW s7, s6, 2
  LD t4, 200(sp)
  ADD s8, t4, s7
  LW s7, 0(s8)
  ADD s8, zero, zero
  ADD s9, s7, zero
  # implict jump to bb43
bb43:
  ADD s7, s9, zero
  ADD s10, s8, zero
  LW t4, 208(sp)
  SLT s11, s10, t4
  BNE s11, zero, bb45
  # implict jump to bb44
bb44:
  ADDI s8, zero, 16
  REMW s9, s7, s8
  SLLIW s7, s9, 2
  ADDI t5, sp, 0
  ADD s8, t5, s7
  LW s7, 0(s8)
  ADDIW s9, s7, 1
  SW s9, 0(s8)
  ADDIW s7, s6, 1
  ADD s5, s7, zero
  JAL zero, bb20
bb45:
  SRAIW s11, s7, 4
  ADDIW t0, s10, 1
  ADD s8, t0, zero
  ADD s9, s11, zero
  JAL zero, bb43
bb46:
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
bb47:
  ADDI t4, zero, 1
  SB t4, 212(sp)
  JAL zero, bb18
bb48:
  ADDI s6, zero, 1
  SUBW s7, s5, s6
  SLLIW s5, s7, 2
  ADDI t5, sp, 0
  ADD s6, t5, s5
  SW zero, 0(s6)
  ADD s4, s7, zero
  JAL zero, bb15
bb49:
  ADDI s6, zero, 1
  SUBW s7, s5, s6
  SLLIW s5, s7, 2
  ADDI t5, sp, 64
  ADD s6, t5, s5
  SW zero, 0(s6)
  ADD s4, s7, zero
  JAL zero, bb13
bb50:
  ADDI s6, zero, 1
  SUBW s7, s5, s6
  SLLIW s5, s7, 2
  ADDI t5, sp, 128
  ADD s6, t5, s5
  SW zero, 0(s6)
  ADD s4, s7, zero
  JAL zero, bb11
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
  # implict jump to bb52
bb52:
  ADD s4, s3, zero
  ADD s5, s2, zero
  SLT s6, s5, s0
  BNE s6, zero, bb54
  # implict jump to bb53
bb53:
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
bb54:
  SLLIW s6, s5, 2
  ADD s7, s1, s6
  LW s6, 0(s7)
  SLT s8, s4, s6
  BNE s8, zero, bb57
  # implict jump to bb55
bb55:
  ADD s7, s4, zero
  # implict jump to bb56
bb56:
  ADD s6, s7, zero
  ADDIW s8, s5, 1
  ADD s2, s8, zero
  ADD s3, s6, zero
  JAL zero, bb52
bb57:
  LW s6, 0(s7)
  ADD s7, s6, zero
  JAL zero, bb56
