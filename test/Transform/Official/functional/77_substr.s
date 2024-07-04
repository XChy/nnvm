.global MAX
.global main
.global max_sum_nonadjacent
.global longest_common_subseq
.section .bss
.section .data
.section .text
MAX:
  ADDI sp, sp, -48
  SD ra, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 8(sp)
  SW s1, 0(sp)
  XOR s2, s0, s1
  SLTIU s0, s2, 1
  BNE s0, zero, bb1
  JAL zero, bb3
bb1:
  LW s0, 8(sp)
  ADD a0, s0, zero
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb2:
bb3:
  LW s0, 8(sp)
  LW s1, 0(sp)
  SLT s2, s1, s0
  BNE s2, zero, bb4
  JAL zero, bb6
bb4:
  LW s0, 8(sp)
  ADD a0, s0, zero
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb5:
  JAL zero, bb2
bb6:
  LW s0, 0(sp)
  ADD a0, s0, zero
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
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
  SD ra, 88(sp)
  SD s4, 96(sp)
  SD s3, 104(sp)
  SD s2, 112(sp)
  SD s1, 120(sp)
  SD s5, 128(sp)
  SD s0, 136(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s1, 80(sp)
  ADDI s1, zero, 16
  SW s1, 8(sp)
  JAL zero, bb9
bb9:
  LW s1, 8(sp)
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb10
  JAL zero, bb11
bb10:
  LW s1, 8(sp)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SW s3, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADD s1, zero, s2
  ADDI t5, sp, 16
  ADD s2, t5, s1
  SW zero, 0(s2)
  JAL zero, bb9
bb11:
  ADDI s1, zero, 4
  MUL s2, zero, s1
  ADDI t6, sp, 16
  ADD s1, t6, s2
  ADDI s2, zero, 4
  MUL s3, zero, s2
  ADD s2, s0, s3
  LW s3, 0(s2)
  SW s3, 0(s1)
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDI t5, sp, 16
  ADD s1, t5, s3
  ADDI s2, zero, 4
  MUL s3, zero, s2
  ADD s2, s0, s3
  LW s3, 0(s2)
  ADDI s2, zero, 4
  ADDI s4, zero, 1
  MULW s5, s2, s4
  ADD s2, s0, s5
  LW s4, 0(s2)
  ADD a0, s3, zero
  ADD a1, s4, zero
  CALL MAX
  ADD s2, a0, zero
  SW s2, 0(s1)
  ADDI s1, zero, 2
  SW s1, 0(sp)
  JAL zero, bb12
bb12:
  LW s1, 0(sp)
  LW s2, 80(sp)
  SLT s3, s1, s2
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb13
  JAL zero, bb14
bb13:
  LW s1, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t6, sp, 16
  ADD s1, t6, s3
  LW s2, 0(sp)
  ADDI s3, zero, 2
  SUBW s4, s2, s3
  ADDI s2, zero, 4
  MULW s3, s4, s2
  ADDI t5, sp, 16
  ADD s2, t5, s3
  LW s3, 0(s2)
  LW s2, 0(sp)
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s2, s0, s5
  LW s4, 0(s2)
  ADDW s2, s3, s4
  LW s3, 0(sp)
  ADDI s4, zero, 1
  SUBW s5, s3, s4
  ADDI s3, zero, 4
  MULW s4, s5, s3
  ADDI t6, sp, 16
  ADD s3, t6, s4
  LW s4, 0(s3)
  ADD a0, s2, zero
  ADD a1, s4, zero
  CALL MAX
  ADD s2, a0, zero
  SW s2, 0(s1)
  LW s1, 0(sp)
  ADDIW s2, s1, 1
  SW s2, 0(sp)
  JAL zero, bb12
bb14:
  LW s0, 80(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  ADDI s0, zero, 4
  MULW s1, s2, s0
  ADDI t5, sp, 16
  ADD s0, t5, s1
  LW s1, 0(s0)
  ADD a0, s1, zero
  LD ra, 88(sp)
  LD s4, 96(sp)
  LD s3, 104(sp)
  LD s2, 112(sp)
  LD s1, 120(sp)
  LD s5, 128(sp)
  LD s0, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
longest_common_subseq:
  ADDI sp, sp, -1136
  SD s7, 1064(sp)
  SD s0, 1072(sp)
  SD s5, 1080(sp)
  SD s1, 1088(sp)
  SD s6, 1096(sp)
  SD s2, 1104(sp)
  SD s3, 1112(sp)
  SD s4, 1120(sp)
  SD ra, 1128(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  SW s1, 1056(sp)
  SW s3, 1048(sp)
  ADDI s1, zero, 256
  SW s1, 16(sp)
  JAL zero, bb16
bb16:
  LW s1, 16(sp)
  XOR s3, s1, zero
  SLTU s1, zero, s3
  BNE s1, zero, bb17
  JAL zero, bb18
bb17:
  LW s1, 16(sp)
  ADDI s3, zero, 1
  SUBW s4, s1, s3
  SW s4, 16(sp)
  ADDI s1, zero, 4
  MULW s3, s4, s1
  ADD s1, zero, s3
  ADDI t5, sp, 24
  ADD s3, t5, s1
  SW zero, 0(s3)
  JAL zero, bb16
bb18:
  ADDI s1, zero, 1
  SW s1, 8(sp)
  JAL zero, bb19
bb19:
  LW s1, 8(sp)
  LW s3, 1056(sp)
  SLT s4, s3, s1
  XORI s1, s4, 1
  XOR s3, s1, zero
  SLTU s1, zero, s3
  BNE s1, zero, bb20
  JAL zero, bb21
bb20:
  ADDI s1, zero, 1
  SW s1, 0(sp)
  JAL zero, bb22
bb21:
  LW s0, 1056(sp)
  ADDI s1, zero, 64
  MULW s2, s0, s1
  ADDI t6, sp, 24
  ADD s0, t6, s2
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 0(s1)
  ADD a0, s0, zero
  LD s7, 1064(sp)
  LD s0, 1072(sp)
  LD s5, 1080(sp)
  LD s1, 1088(sp)
  LD s6, 1096(sp)
  LD s2, 1104(sp)
  LD s3, 1112(sp)
  LD s4, 1120(sp)
  LD ra, 1128(sp)
  ADDI sp, sp, 1136
  JALR zero, 0(ra)
bb22:
  LW s1, 0(sp)
  LW s3, 1048(sp)
  SLT s4, s3, s1
  XORI s1, s4, 1
  XOR s3, s1, zero
  SLTU s1, zero, s3
  BNE s1, zero, bb23
  JAL zero, bb24
bb23:
  LW s1, 8(sp)
  ADDI s3, zero, 1
  SUBW s4, s1, s3
  ADDI s1, zero, 4
  MULW s3, s4, s1
  ADD s1, s0, s3
  LW s3, 0(s1)
  LW s1, 0(sp)
  ADDI s4, zero, 1
  SUBW s5, s1, s4
  ADDI s1, zero, 4
  MULW s4, s5, s1
  ADD s1, s2, s4
  LW s4, 0(s1)
  XOR s1, s3, s4
  SLTIU s3, s1, 1
  BNE s3, zero, bb25
  JAL zero, bb27
bb24:
  LW s1, 8(sp)
  ADDIW s3, s1, 1
  SW s3, 8(sp)
  JAL zero, bb19
bb25:
  LW s1, 8(sp)
  ADDI s3, zero, 64
  MULW s4, s1, s3
  ADDI t5, sp, 24
  ADD s1, t5, s4
  LW s3, 0(sp)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s1, s5
  LW s1, 8(sp)
  ADDI s4, zero, 1
  SUBW s5, s1, s4
  ADDI s1, zero, 64
  MULW s4, s5, s1
  ADDI t6, sp, 24
  ADD s1, t6, s4
  LW s4, 0(sp)
  ADDI s5, zero, 1
  SUBW s6, s4, s5
  ADDI s4, zero, 4
  MULW s5, s6, s4
  ADD s4, s1, s5
  LW s1, 0(s4)
  ADDIW s4, s1, 1
  SW s4, 0(s3)
  JAL zero, bb26
bb26:
  LW s1, 0(sp)
  ADDIW s3, s1, 1
  SW s3, 0(sp)
  JAL zero, bb22
bb27:
  LW s1, 8(sp)
  ADDI s3, zero, 64
  MULW s4, s1, s3
  ADDI t5, sp, 24
  ADD s1, t5, s4
  LW s3, 0(sp)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s1, s5
  LW s1, 8(sp)
  ADDI s4, zero, 1
  SUBW s5, s1, s4
  ADDI s1, zero, 64
  MULW s4, s5, s1
  ADDI t6, sp, 24
  ADD s1, t6, s4
  LW s4, 0(sp)
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  LW s4, 8(sp)
  ADDI s5, zero, 64
  MULW s6, s4, s5
  ADDI t5, sp, 24
  ADD s4, t5, s6
  LW s5, 0(sp)
  ADDI s6, zero, 1
  SUBW s7, s5, s6
  ADDI s5, zero, 4
  MULW s6, s7, s5
  ADD s5, s4, s6
  LW s4, 0(s5)
  ADD a0, s1, zero
  ADD a1, s4, zero
  CALL MAX
  ADD s1, a0, zero
  SW s1, 0(s3)
  JAL zero, bb26
