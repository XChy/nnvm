.global MAX
.global main
.global max_sum_nonadjacent
.global longest_common_subseq
.section .bss
.section .data
.section .text
MAX:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  XOR s2, s0, s1
  SLTIU s3, s2, 1
  BNE s3, zero, bb1
  JAL zero, bb2
bb1:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb2:
  SLT s2, s1, s0
  BNE s2, zero, bb3
  JAL zero, bb4
bb3:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb4:
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -144
  SD ra, 120(sp)
  SD s1, 128(sp)
  SD s0, 136(sp)
  ADDI t5, sp, 56
  ADD s0, t5, zero
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 60
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 64
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 68
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 72
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 76
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 80
  SW zero, 0(s0)
  ADDI s0, sp, 84
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 88
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 92
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 96
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 100
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 104
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 108
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 112
  SW zero, 0(s0)
  ADDI t6, sp, 0
  ADD s0, t6, zero
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 4
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 8
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 12
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 16
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 20
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 24
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 28
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 32
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 36
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 40
  SW zero, 0(s0)
  ADDI s0, sp, 44
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 48
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI a0, sp, 56
  ADD a0, a0, zero
  ADDI a1, zero, 15
  CALL max_sum_nonadjacent
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, sp, 56
  ADD a0, a0, zero
  ADDI a1, zero, 15
  ADDI a2, sp, 0
  ADD a2, a2, zero
  ADDI a3, zero, 13
  CALL longest_common_subseq
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 120(sp)
  LD s1, 128(sp)
  LD s0, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
max_sum_nonadjacent:
  ADDI sp, sp, -144
  SD ra, 64(sp)
  SD s4, 72(sp)
  SD s3, 80(sp)
  SD s2, 88(sp)
  SD s8, 96(sp)
  SD s6, 104(sp)
  SD s1, 112(sp)
  SD s7, 120(sp)
  SD s5, 128(sp)
  SD s0, 136(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDI s2, zero, 16
  JAL zero, bb7
bb7:
  ADD s3, s2, zero
  XOR s4, s3, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s4, zero, 1
  SUBW s5, s3, s4
  ADDI s3, zero, 4
  MULW s4, s5, s3
  ADD s3, zero, s4
  ADDI t5, sp, 0
  ADD s4, t5, s3
  SW zero, 0(s4)
  ADD s2, s5, zero
  JAL zero, bb7
bb9:
  ADDI t6, sp, 0
  ADD s2, t6, zero
  ADD s3, s0, zero
  LW s4, 0(s3)
  SW s4, 0(s2)
  ADDI s2, sp, 4
  ADD s3, s0, zero
  LW s4, 0(s3)
  ADDI s3, s0, 4
  LW s5, 0(s3)
  ADD a0, s4, zero
  ADD a1, s5, zero
  CALL MAX
  ADD s3, a0, zero
  SW s3, 0(s2)
  ADDI s2, zero, 2
  JAL zero, bb10
bb10:
  ADD s3, s2, zero
  SLT s4, s3, s1
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb11
  JAL zero, bb12
bb11:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADDI t5, sp, 0
  ADD s4, t5, s5
  ADDI s5, zero, 2
  SUBW s6, s3, s5
  ADDI s5, zero, 4
  MULW s7, s6, s5
  ADDI t6, sp, 0
  ADD s5, t6, s7
  LW s6, 0(s5)
  ADDI s5, zero, 4
  MULW s7, s3, s5
  ADD s5, s0, s7
  LW s7, 0(s5)
  ADDW s5, s6, s7
  ADDI s6, zero, 1
  SUBW s7, s3, s6
  ADDI s6, zero, 4
  MULW s8, s7, s6
  ADDI t5, sp, 0
  ADD s6, t5, s8
  LW s7, 0(s6)
  ADD a0, s5, zero
  ADD a1, s7, zero
  CALL MAX
  ADD s5, a0, zero
  SW s5, 0(s4)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb10
bb12:
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  ADDI s0, zero, 4
  MULW s1, s2, s0
  ADDI t6, sp, 0
  ADD s0, t6, s1
  LW s1, 0(s0)
  ADD a0, s1, zero
  LD ra, 64(sp)
  LD s4, 72(sp)
  LD s3, 80(sp)
  LD s2, 88(sp)
  LD s8, 96(sp)
  LD s6, 104(sp)
  LD s1, 112(sp)
  LD s7, 120(sp)
  LD s5, 128(sp)
  LD s0, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
longest_common_subseq:
  ADDI sp, sp, -1136
  SD s11, 1024(sp)
  SD s10, 1032(sp)
  SD s9, 1040(sp)
  SD s8, 1048(sp)
  SD ra, 1056(sp)
  SD s0, 1064(sp)
  SD s5, 1072(sp)
  SD s7, 1080(sp)
  SD s1, 1088(sp)
  SD s6, 1096(sp)
  SD s2, 1104(sp)
  SD s3, 1112(sp)
  SD s4, 1120(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADDI s4, zero, 256
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
  ADD s5, zero, s6
  ADDI t5, sp, 0
  ADD s6, t5, s5
  SW zero, 0(s6)
  ADD s4, s7, zero
  JAL zero, bb14
bb16:
  ADDI s4, zero, 1
  JAL zero, bb17
bb17:
  ADD s5, s4, zero
  SLT s6, s1, s5
  XORI s7, s6, 1
  XOR s6, s7, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb18
  JAL zero, bb19
bb18:
  ADDI s6, zero, 1
  JAL zero, bb20
bb19:
  ADDI s0, zero, 64
  MULW s2, s1, s0
  ADDI t6, sp, 0
  ADD s0, t6, s2
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  LD s11, 1024(sp)
  LD s10, 1032(sp)
  LD s9, 1040(sp)
  LD s8, 1048(sp)
  LD ra, 1056(sp)
  LD s0, 1064(sp)
  LD s5, 1072(sp)
  LD s7, 1080(sp)
  LD s1, 1088(sp)
  LD s6, 1096(sp)
  LD s2, 1104(sp)
  LD s3, 1112(sp)
  LD s4, 1120(sp)
  ADDI sp, sp, 1136
  JALR zero, 0(ra)
bb20:
  ADD s7, s6, zero
  SLT s8, s3, s7
  XORI s9, s8, 1
  XOR s8, s9, zero
  SLTU s9, zero, s8
  BNE s9, zero, bb21
  JAL zero, bb22
bb21:
  ADDI s8, zero, 1
  SUBW s9, s5, s8
  ADDI s8, zero, 4
  MULW s10, s9, s8
  ADD s8, s0, s10
  LW s9, 0(s8)
  ADDI s8, zero, 1
  SUBW s10, s7, s8
  ADDI s8, zero, 4
  MULW s11, s10, s8
  ADD s8, s2, s11
  LW s10, 0(s8)
  XOR s8, s9, s10
  SLTIU s9, s8, 1
  BNE s9, zero, bb23
  JAL zero, bb25
bb22:
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb17
bb23:
  ADDI s8, zero, 64
  MULW s9, s5, s8
  ADDI t5, sp, 0
  ADD s8, t5, s9
  ADDI s9, zero, 4
  MULW s10, s7, s9
  ADD s9, s8, s10
  ADDI s8, zero, 1
  SUBW s10, s5, s8
  ADDI s8, zero, 64
  MULW s11, s10, s8
  ADDI t6, sp, 0
  ADD s8, t6, s11
  ADDI s10, zero, 1
  SUBW s11, s7, s10
  ADDI s10, zero, 4
  MULW t0, s11, s10
  ADD s10, s8, t0
  LW s8, 0(s10)
  ADDIW s10, s8, 1
  SW s10, 0(s9)
  JAL zero, bb24
bb24:
  ADDIW s8, s7, 1
  ADD s6, s8, zero
  JAL zero, bb20
bb25:
  ADDI s6, zero, 64
  MULW s8, s5, s6
  ADDI t5, sp, 0
  ADD s6, t5, s8
  ADDI s8, zero, 4
  MULW s9, s7, s8
  ADD s8, s6, s9
  ADDI s6, zero, 1
  SUBW s9, s5, s6
  ADDI s6, zero, 64
  MULW s10, s9, s6
  ADDI t6, sp, 0
  ADD s6, t6, s10
  ADDI s9, zero, 4
  MULW s10, s7, s9
  ADD s9, s6, s10
  LW s6, 0(s9)
  ADDI s9, zero, 64
  MULW s10, s5, s9
  ADDI t5, sp, 0
  ADD s9, t5, s10
  ADDI s10, zero, 1
  SUBW s11, s7, s10
  ADDI s10, zero, 4
  MULW t0, s11, s10
  ADD s10, s9, t0
  LW s9, 0(s10)
  ADD a0, s6, zero
  ADD a1, s9, zero
  CALL MAX
  ADD s6, a0, zero
  SW s6, 0(s8)
  JAL zero, bb24
