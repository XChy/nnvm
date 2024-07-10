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
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  XOR s2, s0, s1
  SLTIU s3, s2, 1
  BNE s3, zero, bb4
  # implict jump to bb1
bb1:
  SLT s2, s1, s0
  BNE s2, zero, bb3
  # implict jump to bb2
bb2:
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb3:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb4:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -1312
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s2, 16(sp)
  SD s3, 24(sp)
  SD s4, 32(sp)
  SD s7, 40(sp)
  SD s8, 48(sp)
  SD s9, 56(sp)
  SD s0, 64(sp)
  SD s5, 72(sp)
  SD s6, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  ADDI s0, zero, 8
  SW s0, 104(sp)
  ADDI s0, sp, 108
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s1, sp, 112
  ADDI s2, zero, 4
  SW s2, 0(s1)
  ADDI s1, sp, 116
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, sp, 120
  ADDI s2, zero, 2
  SW s2, 0(s1)
  ADDI s1, sp, 124
  ADDI s2, zero, 7
  SW s2, 0(s1)
  ADDI s1, sp, 128
  ADDI s2, zero, 0
  SW s2, 0(s1)
  ADDI s1, sp, 132
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, sp, 136
  ADDI s2, zero, 9
  SW s2, 0(s1)
  ADDI s1, sp, 140
  ADDI s2, zero, 3
  SW s2, 0(s1)
  ADDI s1, sp, 144
  ADDI s2, zero, 4
  SW s2, 0(s1)
  ADDI s1, sp, 148
  ADDI s2, zero, 8
  SW s2, 0(s1)
  ADDI s1, sp, 152
  ADDI s2, zero, 3
  SW s2, 0(s1)
  ADDI s1, sp, 156
  ADDI s2, zero, 7
  SW s2, 0(s1)
  ADDI s1, sp, 160
  ADDI s2, zero, 0
  SW s2, 0(s1)
  ADDI s1, zero, 3
  SW s1, 168(sp)
  ADDI s1, sp, 172
  ADDI s2, zero, 9
  SW s2, 0(s1)
  ADDI s1, sp, 176
  ADDI s2, zero, 7
  SW s2, 0(s1)
  ADDI s1, sp, 180
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, sp, 184
  ADDI s2, zero, 4
  SW s2, 0(s1)
  ADDI s1, sp, 188
  ADDI s2, zero, 2
  SW s2, 0(s1)
  ADDI s1, sp, 192
  ADDI s2, zero, 4
  SW s2, 0(s1)
  ADDI s1, sp, 196
  ADDI s2, zero, 3
  SW s2, 0(s1)
  ADDI s1, sp, 200
  ADDI s2, zero, 6
  SW s2, 0(s1)
  ADDI s1, sp, 204
  ADDI s2, zero, 8
  SW s2, 0(s1)
  ADDI s1, sp, 208
  ADDI s2, zero, 0
  SW s2, 0(s1)
  ADDI s1, sp, 212
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, sp, 216
  ADDI s2, zero, 5
  SW s2, 0(s1)
  ADDI s1, zero, 16
  # implict jump to bb6
bb6:
  ADD s2, s1, zero
  XOR s3, s2, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb38
  # implict jump to bb7
bb7:
  LW s3, 104(sp)
  SW s3, 224(sp)
  ADDI s3, sp, 228
  LW s4, 104(sp)
  LW s5, 0(s0)
  XOR s6, s4, s5
  SLTIU s7, s6, 1
  BNE s7, zero, bb37
  # implict jump to bb8
bb8:
  SLT s6, s5, s4
  BNE s6, zero, bb36
  # implict jump to bb9
bb9:
  ADD s6, s5, zero
  # implict jump to bb10
bb10:
  ADD s4, s6, zero
  SW s4, 0(s3)
  ADDI s3, zero, 2
  # implict jump to bb11
bb11:
  ADD s4, s3, zero
  SLTI s5, s4, 15
  BNE s5, zero, bb30
  # implict jump to bb12
bb12:
  ADDI s5, sp, 280
  LW s6, 0(s5)
  ADD a0, s6, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s5, zero, 256
  # implict jump to bb13
bb13:
  ADD s6, s5, zero
  XOR s7, s6, zero
  SLTU s8, zero, s7
  BNE s8, zero, bb29
  # implict jump to bb14
bb14:
  ADDI s7, zero, 1
  # implict jump to bb15
bb15:
  ADD s8, s7, zero
  ADDI s9, zero, 15
  SLT s10, s9, s8
  XORI s9, s10, 1
  BNE s9, zero, bb17
  # implict jump to bb16
bb16:
  ADDI s9, sp, 1300
  LW s10, 0(s9)
  ADD a0, s10, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s2, 16(sp)
  LD s3, 24(sp)
  LD s4, 32(sp)
  LD s7, 40(sp)
  LD s8, 48(sp)
  LD s9, 56(sp)
  LD s0, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 1312
  JALR zero, 0(ra)
bb17:
  ADDI s9, zero, 1
  # implict jump to bb18
bb18:
  ADD s10, s9, zero
  ADDI s11, zero, 13
  SLT ra, s11, s10
  XORI s11, ra, 1
  BNE s11, zero, bb20
  # implict jump to bb19
bb19:
  ADDIW s11, s8, 1
  ADD s7, s11, zero
  JAL zero, bb15
bb20:
  ADDI s7, zero, 1
  SUBW s11, s8, s7
  SLLIW s7, s11, 2
  ADDI ra, sp, 104
  ADD ra, ra, s7
  LW s7, 0(ra)
  ADDI ra, zero, 1
  SUBW t0, s10, ra
  SLLIW ra, t0, 2
  ADDI t0, sp, 168
  ADD t0, t0, ra
  LW t1, 0(t0)
  XOR t0, s7, t1
  SLTIU s7, t0, 1
  BNE s7, zero, bb28
  # implict jump to bb21
bb21:
  SLLIW s7, s8, 6
  ADDI t0, sp, 288
  ADD t0, t0, s7
  SLLIW s7, s10, 2
  ADD t1, t0, s7
  SLLIW t2, s11, 6
  ADDI a0, sp, 288
  ADD a0, a0, t2
  ADD t2, a0, s7
  LW s7, 0(t2)
  ADD t2, t0, ra
  LW t0, 0(t2)
  XOR t2, s7, t0
  SLTIU a0, t2, 1
  BNE a0, zero, bb27
  # implict jump to bb22
bb22:
  SLT t2, t0, s7
  BNE t2, zero, bb26
  # implict jump to bb23
bb23:
  ADD t2, t0, zero
  # implict jump to bb24
bb24:
  ADD s7, t2, zero
  SW s7, 0(t1)
  # implict jump to bb25
bb25:
  ADDIW s7, s10, 1
  ADD s9, s7, zero
  JAL zero, bb18
bb26:
  ADD t2, s7, zero
  JAL zero, bb24
bb27:
  ADD t2, s7, zero
  JAL zero, bb24
bb28:
  SLLIW s7, s8, 6
  ADDI t0, sp, 288
  ADD t0, t0, s7
  SLLIW s7, s10, 2
  ADD t1, t0, s7
  SLLIW s7, s11, 6
  ADDI t5, sp, 288
  ADD s11, t5, s7
  ADD s7, s11, ra
  LW s11, 0(s7)
  ADDIW s7, s11, 1
  SW s7, 0(t1)
  JAL zero, bb25
bb29:
  ADDI s7, zero, 1
  SUBW s8, s6, s7
  SLLIW s6, s8, 2
  ADDI t5, sp, 288
  ADD s7, t5, s6
  SW zero, 0(s7)
  ADD s5, s8, zero
  JAL zero, bb13
bb30:
  SLLIW s5, s4, 2
  ADDI t5, sp, 224
  ADD s6, t5, s5
  ADDI s7, zero, 2
  SUBW s8, s4, s7
  SLLIW s7, s8, 2
  ADDI t5, sp, 224
  ADD s8, t5, s7
  LW s7, 0(s8)
  ADDI t5, sp, 104
  ADD s8, t5, s5
  LW s5, 0(s8)
  ADDW s8, s7, s5
  ADDI s5, zero, 1
  SUBW s7, s4, s5
  SLLIW s5, s7, 2
  ADDI t5, sp, 224
  ADD s7, t5, s5
  LW s5, 0(s7)
  XOR s7, s8, s5
  SLTIU s9, s7, 1
  BNE s9, zero, bb35
  # implict jump to bb31
bb31:
  SLT s7, s5, s8
  BNE s7, zero, bb34
  # implict jump to bb32
bb32:
  ADD s7, s5, zero
  # implict jump to bb33
bb33:
  ADD s5, s7, zero
  SW s5, 0(s6)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb11
bb34:
  ADD s7, s8, zero
  JAL zero, bb33
bb35:
  ADD s7, s8, zero
  JAL zero, bb33
bb36:
  ADD s6, s4, zero
  JAL zero, bb10
bb37:
  ADD s6, s4, zero
  JAL zero, bb10
bb38:
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  SLLIW s2, s4, 2
  ADDI t5, sp, 224
  ADD s3, t5, s2
  SW zero, 0(s3)
  ADD s1, s4, zero
  JAL zero, bb6
max_sum_nonadjacent:
  ADDI sp, sp, -160
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  SD s5, 112(sp)
  SD s6, 120(sp)
  SD s7, 128(sp)
  SD s8, 136(sp)
  SD s9, 144(sp)
  SD s10, 152(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDI s2, zero, 16
  # implict jump to bb40
bb40:
  ADD s3, s2, zero
  XOR s4, s3, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb55
  # implict jump to bb41
bb41:
  LW s4, 0(s0)
  SW s4, 0(sp)
  ADDI s4, sp, 4
  LW s5, 0(s0)
  ADDI s6, s0, 4
  LW s7, 0(s6)
  XOR s6, s5, s7
  SLTIU s8, s6, 1
  BNE s8, zero, bb54
  # implict jump to bb42
bb42:
  SLT s6, s7, s5
  BNE s6, zero, bb53
  # implict jump to bb43
bb43:
  ADD s6, s7, zero
  # implict jump to bb44
bb44:
  ADD s5, s6, zero
  SW s5, 0(s4)
  ADDI s4, zero, 2
  # implict jump to bb45
bb45:
  ADD s5, s4, zero
  SLT s6, s5, s1
  BNE s6, zero, bb47
  # implict jump to bb46
bb46:
  ADDI s6, zero, 1
  SUBW s7, s1, s6
  SLLIW s6, s7, 2
  ADDI t5, sp, 0
  ADD s7, t5, s6
  LW s6, 0(s7)
  ADD a0, s6, zero
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD s5, 112(sp)
  LD s6, 120(sp)
  LD s7, 128(sp)
  LD s8, 136(sp)
  LD s9, 144(sp)
  LD s10, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb47:
  SLLIW s6, s5, 2
  ADDI t5, sp, 0
  ADD s7, t5, s6
  ADDI s8, zero, 2
  SUBW s9, s5, s8
  SLLIW s8, s9, 2
  ADDI t5, sp, 0
  ADD s9, t5, s8
  LW s8, 0(s9)
  ADD s9, s0, s6
  LW s6, 0(s9)
  ADDW s9, s8, s6
  ADDI s6, zero, 1
  SUBW s8, s5, s6
  SLLIW s6, s8, 2
  ADDI t5, sp, 0
  ADD s8, t5, s6
  LW s6, 0(s8)
  XOR s8, s9, s6
  SLTIU s10, s8, 1
  BNE s10, zero, bb52
  # implict jump to bb48
bb48:
  SLT s8, s6, s9
  BNE s8, zero, bb51
  # implict jump to bb49
bb49:
  ADD s8, s6, zero
  # implict jump to bb50
bb50:
  ADD s6, s8, zero
  SW s6, 0(s7)
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb45
bb51:
  ADD s8, s9, zero
  JAL zero, bb50
bb52:
  ADD s8, s9, zero
  JAL zero, bb50
bb53:
  ADD s6, s5, zero
  JAL zero, bb44
bb54:
  ADD s6, s5, zero
  JAL zero, bb44
bb55:
  ADDI s4, zero, 1
  SUBW s5, s3, s4
  SLLIW s3, s5, 2
  ADDI t5, sp, 0
  ADD s4, t5, s3
  SW zero, 0(s4)
  ADD s2, s5, zero
  JAL zero, bb40
longest_common_subseq:
  ADDI sp, sp, -1136
  SD ra, 1024(sp)
  SD s0, 1032(sp)
  SD s1, 1040(sp)
  SD s2, 1048(sp)
  SD s3, 1056(sp)
  SD s4, 1064(sp)
  SD s5, 1072(sp)
  SD s6, 1080(sp)
  SD s7, 1088(sp)
  SD s8, 1096(sp)
  SD s9, 1104(sp)
  SD s10, 1112(sp)
  SD s11, 1120(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADDI s4, zero, 256
  # implict jump to bb57
bb57:
  ADD s5, s4, zero
  XOR s6, s5, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb73
  # implict jump to bb58
bb58:
  ADDI s6, zero, 1
  # implict jump to bb59
bb59:
  ADD s7, s6, zero
  SLT s8, s1, s7
  XORI s9, s8, 1
  BNE s9, zero, bb61
  # implict jump to bb60
bb60:
  SLLIW s8, s1, 6
  ADDI t5, sp, 0
  ADD s9, t5, s8
  SLLIW s8, s3, 2
  ADD s10, s9, s8
  LW s8, 0(s10)
  ADD a0, s8, zero
  LD ra, 1024(sp)
  LD s0, 1032(sp)
  LD s1, 1040(sp)
  LD s2, 1048(sp)
  LD s3, 1056(sp)
  LD s4, 1064(sp)
  LD s5, 1072(sp)
  LD s6, 1080(sp)
  LD s7, 1088(sp)
  LD s8, 1096(sp)
  LD s9, 1104(sp)
  LD s10, 1112(sp)
  LD s11, 1120(sp)
  ADDI sp, sp, 1136
  JALR zero, 0(ra)
bb61:
  ADDI s8, zero, 1
  # implict jump to bb62
bb62:
  ADD s9, s8, zero
  SLT s10, s3, s9
  XORI s11, s10, 1
  BNE s11, zero, bb64
  # implict jump to bb63
bb63:
  ADDIW s10, s7, 1
  ADD s6, s10, zero
  JAL zero, bb59
bb64:
  ADDI s6, zero, 1
  SUBW s10, s7, s6
  SLLIW s6, s10, 2
  ADD s11, s0, s6
  LW s6, 0(s11)
  ADDI s11, zero, 1
  SUBW t0, s9, s11
  SLLIW s11, t0, 2
  ADD t0, s2, s11
  LW t1, 0(t0)
  XOR t0, s6, t1
  SLTIU s6, t0, 1
  BNE s6, zero, bb72
  # implict jump to bb65
bb65:
  SLLIW s6, s7, 6
  ADDI t0, sp, 0
  ADD t0, t0, s6
  SLLIW s6, s9, 2
  ADD t1, t0, s6
  SLLIW t2, s10, 6
  ADDI a0, sp, 0
  ADD a0, a0, t2
  ADD t2, a0, s6
  LW s6, 0(t2)
  ADD t2, t0, s11
  LW t0, 0(t2)
  XOR t2, s6, t0
  SLTIU a0, t2, 1
  BNE a0, zero, bb71
  # implict jump to bb66
bb66:
  SLT t2, t0, s6
  BNE t2, zero, bb70
  # implict jump to bb67
bb67:
  ADD t2, t0, zero
  # implict jump to bb68
bb68:
  ADD s6, t2, zero
  SW s6, 0(t1)
  # implict jump to bb69
bb69:
  ADDIW s6, s9, 1
  ADD s8, s6, zero
  JAL zero, bb62
bb70:
  ADD t2, s6, zero
  JAL zero, bb68
bb71:
  ADD t2, s6, zero
  JAL zero, bb68
bb72:
  SLLIW s6, s7, 6
  ADDI t0, sp, 0
  ADD t0, t0, s6
  SLLIW s6, s9, 2
  ADD t1, t0, s6
  SLLIW s6, s10, 6
  ADDI t5, sp, 0
  ADD s10, t5, s6
  ADD s6, s10, s11
  LW s10, 0(s6)
  ADDIW s6, s10, 1
  SW s6, 0(t1)
  JAL zero, bb69
bb73:
  ADDI s6, zero, 1
  SUBW s7, s5, s6
  SLLIW s5, s7, 2
  ADDI t5, sp, 0
  ADD s6, t5, s5
  SW zero, 0(s6)
  ADD s4, s7, zero
  JAL zero, bb57
