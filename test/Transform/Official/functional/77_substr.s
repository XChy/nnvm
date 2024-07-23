.global MAX
.global main
.global max_sum_nonadjacent
.global longest_common_subseq
.section .bss
.section .data
.section .text
MAX:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  XOR s1, s0, a1
  SLTIU s1, s1, 1
  BNE s1, zero, bb4
  # implict jump to bb1
bb1:
  BLT a1, s0, bb3
  # implict jump to bb2
bb2:
  ADD a0, a1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb3:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb4:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
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
  BNE s2, zero, bb38
  # implict jump to bb7
bb7:
  LW s3, 104(sp)
  SW s3, 224(sp)
  ADDI s4, sp, 228
  LW s5, 0(s0)
  XOR s6, s3, s5
  SLTIU s6, s6, 1
  BNE s6, zero, bb37
  # implict jump to bb8
bb8:
  BLT s5, s3, bb36
  # implict jump to bb9
bb9:
  # implict jump to bb10
bb10:
  SW s5, 0(s4)
  ADDI s3, zero, 2
  # implict jump to bb11
bb11:
  ADD s4, s3, zero
  SLTI s5, s4, 15
  BNE s5, zero, bb30
  # implict jump to bb12
bb12:
  ADDI s5, sp, 280
  LW s5, 0(s5)
  ADD a0, s5, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s5, zero, 256
  # implict jump to bb13
bb13:
  ADD s6, s5, zero
  BNE s6, zero, bb29
  # implict jump to bb14
bb14:
  ADDI s7, zero, 1
  # implict jump to bb15
bb15:
  ADD s8, s7, zero
  ADDI s9, zero, 15
  SLT s9, s9, s8
  XORI s9, s9, 1
  BNE s9, zero, bb17
  # implict jump to bb16
bb16:
  ADDI s9, sp, 1300
  LW s9, 0(s9)
  ADD a0, s9, zero
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
  SUBW s9, s8, s9
  SLLIW s10, s9, 2
  ADDI t5, sp, 104
  ADD s10, t5, s10
  SLLIW s11, s8, 6
  ADDI ra, sp, 288
  ADD s11, ra, s11
  SLLIW ra, s9, 6
  ADDI t0, sp, 288
  ADD ra, t0, ra
  SLLIW t0, s8, 6
  ADDI t1, sp, 288
  ADD t0, t1, t0
  SLLIW s9, s9, 6
  ADDI t1, sp, 288
  ADD s9, t1, s9
  ADDI t1, zero, 1
  # implict jump to bb18
bb18:
  ADD t2, t1, zero
  ADDI a0, zero, 13
  SLT a0, a0, t2
  XORI a0, a0, 1
  BNE a0, zero, bb20
  # implict jump to bb19
bb19:
  ADDIW a0, s8, 1
  ADD s7, a0, zero
  JAL zero, bb15
bb20:
  LW s7, 0(s10)
  ADDI a0, zero, 1
  SUBW a0, t2, a0
  SLLIW a0, a0, 2
  ADDI a1, sp, 168
  ADD a1, a1, a0
  LW a1, 0(a1)
  XOR s7, s7, a1
  SLTIU s7, s7, 1
  BNE s7, zero, bb28
  # implict jump to bb21
bb21:
  SLLIW s7, t2, 2
  ADD a1, t0, s7
  ADD s7, s9, s7
  LW s7, 0(s7)
  ADD a2, t0, a0
  LW a2, 0(a2)
  XOR a3, s7, a2
  SLTIU a3, a3, 1
  BNE a3, zero, bb27
  # implict jump to bb22
bb22:
  BLT a2, s7, bb26
  # implict jump to bb23
bb23:
  # implict jump to bb24
bb24:
  SW a2, 0(a1)
  # implict jump to bb25
bb25:
  ADDIW s7, t2, 1
  ADD t1, s7, zero
  JAL zero, bb18
bb26:
  ADD a2, s7, zero
  JAL zero, bb24
bb27:
  ADD a2, s7, zero
  JAL zero, bb24
bb28:
  SLLIW s7, t2, 2
  ADD s7, s11, s7
  ADD a0, ra, a0
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(s7)
  JAL zero, bb25
bb29:
  ADDI s7, zero, 1
  SUBW s6, s6, s7
  SLLIW s7, s6, 2
  ADDI t5, sp, 288
  ADD s7, t5, s7
  SW zero, 0(s7)
  ADD s5, s6, zero
  JAL zero, bb13
bb30:
  SLLIW s5, s4, 2
  ADDI t5, sp, 224
  ADD s6, t5, s5
  ADDI s7, zero, 2
  SUBW s7, s4, s7
  SLLIW s7, s7, 2
  ADDI t5, sp, 224
  ADD s7, t5, s7
  LW s7, 0(s7)
  ADDI t5, sp, 104
  ADD s5, t5, s5
  LW s5, 0(s5)
  ADDW s5, s7, s5
  ADDI s7, zero, 1
  SUBW s7, s4, s7
  SLLIW s7, s7, 2
  ADDI t5, sp, 224
  ADD s7, t5, s7
  LW s7, 0(s7)
  XOR s8, s5, s7
  SLTIU s8, s8, 1
  BNE s8, zero, bb35
  # implict jump to bb31
bb31:
  BLT s7, s5, bb34
  # implict jump to bb32
bb32:
  # implict jump to bb33
bb33:
  SW s7, 0(s6)
  ADDIW s4, s4, 1
  ADD s3, s4, zero
  JAL zero, bb11
bb34:
  ADD s7, s5, zero
  JAL zero, bb33
bb35:
  ADD s7, s5, zero
  JAL zero, bb33
bb36:
  ADD s5, s3, zero
  JAL zero, bb10
bb37:
  ADD s5, s3, zero
  JAL zero, bb10
bb38:
  ADDI s3, zero, 1
  SUBW s2, s2, s3
  SLLIW s3, s2, 2
  ADDI t5, sp, 224
  ADD s3, t5, s3
  SW zero, 0(s3)
  ADD s1, s2, zero
  JAL zero, bb6
max_sum_nonadjacent:
  ADDI sp, sp, -144
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
  ADD s0, a0, zero
  ADDI s1, zero, 16
  # implict jump to bb40
bb40:
  ADD s2, s1, zero
  BNE s2, zero, bb55
  # implict jump to bb41
bb41:
  LW s3, 0(s0)
  SW s3, 0(sp)
  ADDI s4, sp, 4
  LW s5, 4(s0)
  XOR s6, s3, s5
  SLTIU s6, s6, 1
  BNE s6, zero, bb54
  # implict jump to bb42
bb42:
  BLT s5, s3, bb53
  # implict jump to bb43
bb43:
  # implict jump to bb44
bb44:
  SW s5, 0(s4)
  ADDI s3, zero, 2
  # implict jump to bb45
bb45:
  ADD s4, s3, zero
  BLT s4, a1, bb47
  # implict jump to bb46
bb46:
  ADDI s5, zero, 1
  SUBW s5, a1, s5
  SLLIW s5, s5, 2
  ADDI a0, sp, 0
  ADD s5, a0, s5
  LW s5, 0(s5)
  ADD a0, s5, zero
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
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb47:
  SLLIW s5, s4, 2
  ADDI t5, sp, 0
  ADD s6, t5, s5
  ADDI s7, zero, 2
  SUBW s7, s4, s7
  SLLIW s7, s7, 2
  ADDI t5, sp, 0
  ADD s7, t5, s7
  LW s7, 0(s7)
  ADD s5, s0, s5
  LW s5, 0(s5)
  ADDW s5, s7, s5
  ADDI s7, zero, 1
  SUBW s7, s4, s7
  SLLIW s7, s7, 2
  ADDI t5, sp, 0
  ADD s7, t5, s7
  LW s7, 0(s7)
  XOR s8, s5, s7
  SLTIU s8, s8, 1
  BNE s8, zero, bb52
  # implict jump to bb48
bb48:
  BLT s7, s5, bb51
  # implict jump to bb49
bb49:
  # implict jump to bb50
bb50:
  SW s7, 0(s6)
  ADDIW s4, s4, 1
  ADD s3, s4, zero
  JAL zero, bb45
bb51:
  ADD s7, s5, zero
  JAL zero, bb50
bb52:
  ADD s7, s5, zero
  JAL zero, bb50
bb53:
  ADD s5, s3, zero
  JAL zero, bb44
bb54:
  ADD s5, s3, zero
  JAL zero, bb44
bb55:
  ADDI s3, zero, 1
  SUBW s2, s2, s3
  SLLIW s3, s2, 2
  ADDI t5, sp, 0
  ADD s3, t5, s3
  SW zero, 0(s3)
  ADD s1, s2, zero
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
  ADDI s1, zero, 256
  # implict jump to bb57
bb57:
  ADD s2, s1, zero
  BNE s2, zero, bb73
  # implict jump to bb58
bb58:
  ADDI s3, zero, 1
  # implict jump to bb59
bb59:
  ADD s4, s3, zero
  SLT s5, a1, s4
  XORI s5, s5, 1
  BNE s5, zero, bb61
  # implict jump to bb60
bb60:
  SLLIW s5, a1, 6
  ADDI t5, sp, 0
  ADD s5, t5, s5
  SLLIW s6, a3, 2
  ADD s5, s5, s6
  LW s5, 0(s5)
  ADD a0, s5, zero
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
  ADDI s5, zero, 1
  SUBW s5, s4, s5
  SLLIW s6, s5, 2
  ADD s6, s0, s6
  SLLIW s7, s4, 6
  ADDI t5, sp, 0
  ADD s7, t5, s7
  SLLIW s8, s5, 6
  ADDI t5, sp, 0
  ADD s8, t5, s8
  SLLIW s9, s4, 6
  ADDI t5, sp, 0
  ADD s9, t5, s9
  SLLIW s5, s5, 6
  ADDI t5, sp, 0
  ADD s5, t5, s5
  ADDI s10, zero, 1
  # implict jump to bb62
bb62:
  ADD s11, s10, zero
  SLT t0, a3, s11
  XORI t0, t0, 1
  BNE t0, zero, bb64
  # implict jump to bb63
bb63:
  ADDIW t0, s4, 1
  ADD s3, t0, zero
  JAL zero, bb59
bb64:
  LW s3, 0(s6)
  ADDI t0, zero, 1
  SUBW t0, s11, t0
  SLLIW t0, t0, 2
  ADD t1, a2, t0
  LW t1, 0(t1)
  XOR s3, s3, t1
  SLTIU s3, s3, 1
  BNE s3, zero, bb72
  # implict jump to bb65
bb65:
  SLLIW s3, s11, 2
  ADD t1, s9, s3
  ADD s3, s5, s3
  LW s3, 0(s3)
  ADD t2, s9, t0
  LW t2, 0(t2)
  XOR a0, s3, t2
  SLTIU a0, a0, 1
  BNE a0, zero, bb71
  # implict jump to bb66
bb66:
  BLT t2, s3, bb70
  # implict jump to bb67
bb67:
  # implict jump to bb68
bb68:
  SW t2, 0(t1)
  # implict jump to bb69
bb69:
  ADDIW s3, s11, 1
  ADD s10, s3, zero
  JAL zero, bb62
bb70:
  ADD t2, s3, zero
  JAL zero, bb68
bb71:
  ADD t2, s3, zero
  JAL zero, bb68
bb72:
  SLLIW s3, s11, 2
  ADD s3, s7, s3
  ADD t0, s8, t0
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SW t0, 0(s3)
  JAL zero, bb69
bb73:
  ADDI s3, zero, 1
  SUBW s2, s2, s3
  SLLIW s3, s2, 2
  ADDI t5, sp, 0
  ADD s3, t5, s3
  SW zero, 0(s3)
  ADD s1, s2, zero
  JAL zero, bb57
