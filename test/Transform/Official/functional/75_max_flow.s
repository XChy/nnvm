.global max_flow
.global dfs
.global add_node
.global main
.global my_memset
.section .bss
rev:
.space 400
cap:
.space 400
used:
.space 40
to:
.space 400
size:
.space 40

.section .data





INF:
.word 0x70000000
.section .text
max_flow:
  ADDI sp, sp, -96
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
  ADD s1, a0, zero
  ADD s2, a1, zero
  ADDI s3, zero, 0
  SLTI s3, s3, 10
  ADD s4, zero, zero
  # implict jump to bb1
bb1:
  ADD s5, s4, zero
  BNE s3, zero, bb5
  # implict jump to bb2
bb2:
  ADD a0, s1, zero
  ADD a1, s2, zero
  LUI s7, 458752
  ADDIW s7, s7, 0
  ADD a2, zero, s7
  CALL dfs
  ADD s7, a0, zero
  SLTIU s8, s7, 1
  BNE s8, zero, bb4
  # implict jump to bb3
bb3:
  ADDW s7, s5, s7
  ADD s4, s7, zero
  JAL zero, bb1
bb4:
  ADD a0, s5, zero
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
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb5:
  # implict jump to bb6
bb6:
  ADD s6, zero, zero
  # implict jump to bb7
bb7:
  ADD s7, s6, zero
  SLLIW s8, s7, 2
  LA s9, used
  ADD s8, s9, s8
  SW zero, 0(s8)
  ADDIW s0, s7, 1
  # implict jump to bb8
bb8:
  SLTI s7, s0, 10
  BNE s7, zero, bb9
  JAL zero, bb2
bb9:
  ADD s6, s0, zero
  JAL zero, bb7
dfs:
  ADDI sp, sp, -128
  SD s4, 8(sp)
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s10, 96(sp)
  SD s11, 104(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  XOR s3, s0, s1
  SLTIU s3, s3, 1
  BNE s3, zero, bb24
  # implict jump to bb11
bb11:
  SLLIW s3, s0, 2
  LA s4, used
  ADD s4, s4, s3
  ADDI s5, zero, 1
  SW s5, 0(s4)
  LA s4, size
  ADD s3, s4, s3
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb12
bb12:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  LW s10, 0(s3)
  BLT s7, s10, bb14
  # implict jump to bb13
bb13:
  ADD a0, zero, zero
  LD s4, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb14:
  ADDI s10, zero, 40
  MULW s10, s0, s10
  LA s11, to
  ADD s11, s11, s10
  SLLIW t4, s7, 2
  SW t4, 4(sp)
  LW t4, 4(sp)
  ADD s11, s11, t4
  LW t1, 0(s11)
  SLLIW t1, t1, 2
  LA t2, used
  ADD t1, t2, t1
  LW t1, 0(t1)
  BNE t1, zero, bb23
  # implict jump to bb15
bb15:
  LA t1, cap
  ADD t1, t1, s10
  LW t3, 4(sp)
  ADD t4, t1, t3
  SD t4, 112(sp)
  LD t4, 112(sp)
  LW t2, 0(t4)
  SLT a3, zero, t2
  XORI a3, a3, 1
  BNE a3, zero, bb22
  # implict jump to bb16
bb16:
  BLT s2, t2, bb21
  # implict jump to bb17
bb17:
  # implict jump to bb18
bb18:
  ADD t4, t2, zero
  SW t4, 0(sp)
  LW a3, 0(s11)
  ADD a0, a3, zero
  ADD a1, s1, zero
  LW t4, 0(sp)
  ADD a2, t4, zero
  CALL dfs
  ADD t0, a0, zero
  BLT zero, t0, bb20
  # implict jump to bb19
bb19:
  ADDIW t1, s7, 1
  ADD s4, t0, zero
  LW t4, 0(sp)
  ADD s5, t4, zero
  ADD s6, t1, zero
  JAL zero, bb12
bb20:
  LD t4, 112(sp)
  LW t1, 0(t4)
  SUBW t1, t1, t0
  LD t4, 112(sp)
  SW t1, 0(t4)
  LW s11, 0(s11)
  ADDI t1, zero, 40
  MULW s11, s11, t1
  LA t1, cap
  ADD s11, t1, s11
  LA t1, rev
  ADD s10, t1, s10
  LW t4, 4(sp)
  ADD s10, s10, t4
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  ADD s10, s11, s10
  LW s11, 0(s10)
  ADDW s11, s11, t0
  SW s11, 0(s10)
  ADD a0, t0, zero
  LD s4, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb21:
  ADD t2, s2, zero
  JAL zero, bb18
bb22:
  ADDIW s10, s7, 1
  ADD s4, s9, zero
  ADD s5, s8, zero
  ADD s6, s10, zero
  JAL zero, bb12
bb23:
  ADDIW s7, s7, 1
  ADD s4, s9, zero
  ADD s5, s8, zero
  ADD s6, s7, zero
  JAL zero, bb12
bb24:
  ADD a0, s2, zero
  LD s4, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
add_node:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  ADDI s0, zero, 40
  MULW s0, a0, s0
  LA s1, to
  ADD s1, s1, s0
  SLLIW s2, a0, 2
  LA s3, size
  ADD s2, s3, s2
  LW s3, 0(s2)
  SLLIW s4, s3, 2
  ADD s1, s1, s4
  SW a1, 0(s1)
  LA s1, cap
  ADD s1, s1, s0
  ADD s1, s1, s4
  SW a2, 0(s1)
  LA s1, rev
  ADD s0, s1, s0
  ADD s0, s0, s4
  SLLIW s1, a1, 2
  LA s4, size
  ADD s1, s4, s1
  LW s4, 0(s1)
  SW s4, 0(s0)
  ADDI s0, zero, 40
  MULW s0, a1, s0
  LA s5, to
  ADD s5, s5, s0
  SLLIW s4, s4, 2
  ADD s5, s5, s4
  SW a0, 0(s5)
  LA s5, cap
  ADD s5, s5, s0
  ADD s5, s5, s4
  SW zero, 0(s5)
  LA s5, rev
  ADD s0, s5, s0
  ADD s0, s0, s4
  SW s3, 0(s0)
  ADDIW s0, s3, 1
  SW s0, 0(s2)
  LW s0, 0(s1)
  ADDIW s0, s0, 1
  SW s0, 0(s1)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -128
  SD ra, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s3, 40(sp)
  SD s0, 48(sp)
  SD s5, 56(sp)
  SD s7, 64(sp)
  SD s10, 72(sp)
  SD s4, 80(sp)
  SD s6, 88(sp)
  SD s8, 96(sp)
  SD s9, 104(sp)
  SD s11, 112(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 8(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 12(sp)
  SLTI s5, zero, 10
  BNE s5, zero, bb43
  # implict jump to bb27
bb27:
  LW t4, 12(sp)
  BLT zero, t4, bb38
  # implict jump to bb28
bb28:
  SLTI s1, zero, 10
  ADD s3, zero, zero
  # implict jump to bb29
bb29:
  ADD s4, s3, zero
  BNE s1, zero, bb33
  # implict jump to bb30
bb30:
  ADDI a0, zero, 1
  LW t4, 8(sp)
  ADD a1, t4, zero
  LUI s7, 458752
  ADDIW s7, s7, 0
  ADD a2, zero, s7
  CALL dfs
  ADD s7, a0, zero
  SLTIU s8, s7, 1
  BNE s8, zero, bb32
  # implict jump to bb31
bb31:
  ADDW s7, s4, s7
  ADD s3, s7, zero
  JAL zero, bb29
bb32:
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s0, 48(sp)
  LD s5, 56(sp)
  LD s7, 64(sp)
  LD s10, 72(sp)
  LD s4, 80(sp)
  LD s6, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD s11, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb33:
  # implict jump to bb34
bb34:
  ADD s5, zero, zero
  # implict jump to bb35
bb35:
  ADD s7, s5, zero
  SLLIW s8, s7, 2
  LA s9, used
  ADD s8, s9, s8
  SW zero, 0(s8)
  ADDIW s0, s7, 1
  # implict jump to bb36
bb36:
  SLTI s7, s0, 10
  BNE s7, zero, bb37
  JAL zero, bb30
bb37:
  ADD s5, s0, zero
  JAL zero, bb35
bb38:
  # implict jump to bb39
bb39:
  LW t4, 12(sp)
  ADD s6, t4, zero
  # implict jump to bb40
bb40:
  ADD s7, s6, zero
  CALL getint
  ADD s8, a0, zero
  CALL getint
  ADD s9, a0, zero
  CALL getint
  ADD s10, a0, zero
  ADDI s11, zero, 40
  MULW s11, s8, s11
  LA s4, to
  ADD s4, s4, s11
  SLLIW s3, s8, 2
  LA s5, size
  ADD s3, s5, s3
  LW s5, 0(s3)
  SLLIW s1, s5, 2
  ADD s4, s4, s1
  SW s9, 0(s4)
  LA s4, cap
  ADD s4, s4, s11
  ADD s4, s4, s1
  SW s10, 0(s4)
  LA s4, rev
  ADD s4, s4, s11
  ADD s1, s4, s1
  SLLIW s4, s9, 2
  LA s10, size
  ADD s4, s10, s4
  LW s10, 0(s4)
  SW s10, 0(s1)
  ADDI s1, zero, 40
  MULW s1, s9, s1
  LA s9, to
  ADD s9, s9, s1
  SLLIW s10, s10, 2
  ADD s9, s9, s10
  SW s8, 0(s9)
  LA s8, cap
  ADD s8, s8, s1
  ADD s8, s8, s10
  SW zero, 0(s8)
  LA s8, rev
  ADD s1, s8, s1
  ADD s1, s1, s10
  SW s5, 0(s1)
  ADDIW s1, s5, 1
  SW s1, 0(s3)
  LW s1, 0(s4)
  ADDIW s1, s1, 1
  SW s1, 0(s4)
  ADDI s1, zero, 1
  SUBW s2, s7, s1
  # implict jump to bb41
bb41:
  BLT zero, s2, bb42
  JAL zero, bb28
bb42:
  ADD s6, s2, zero
  JAL zero, bb40
bb43:
  # implict jump to bb44
bb44:
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb45
bb45:
  LW t4, 4(sp)
  ADD s6, t4, zero
  SLLIW s7, s6, 2
  LA s8, size
  ADD s7, s8, s7
  SW zero, 0(s7)
  ADDIW t4, s6, 1
  SW t4, 0(sp)
  # implict jump to bb46
bb46:
  LW t4, 0(sp)
  SLTI s6, t4, 10
  BNE s6, zero, bb47
  JAL zero, bb27
bb47:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb45
my_memset:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  BLT zero, a2, bb50
  # implict jump to bb49
bb49:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb50:
  # implict jump to bb51
bb51:
  ADD s1, zero, zero
  # implict jump to bb52
bb52:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  ADD s3, a0, s3
  SW a1, 0(s3)
  ADDIW s0, s2, 1
  # implict jump to bb53
bb53:
  BLT s0, a2, bb54
  JAL zero, bb49
bb54:
  ADD s1, s0, zero
  JAL zero, bb52
