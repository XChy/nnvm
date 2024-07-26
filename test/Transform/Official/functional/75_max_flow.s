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
  ADDI sp, sp, -80
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
  ADD s1, a0, zero
  ADD s2, a1, zero
  ADD s3, zero, zero
  # implict jump to bb1
bb1:
  ADD s4, s3, zero
  SLTI s5, zero, 10
  BNE s5, zero, bb5
  # implict jump to bb2
bb2:
  ADD a0, s1, zero
  ADD a1, s2, zero
  LUI s6, 458752
  ADDIW s6, s6, 0
  ADD a2, zero, s6
  CALL dfs
  ADD s6, a0, zero
  SLTIU s7, s6, 1
  BNE s7, zero, bb4
  # implict jump to bb3
bb3:
  ADDW s6, s4, s6
  ADD s3, s6, zero
  JAL zero, bb1
bb4:
  ADD a0, s4, zero
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb5:
  ADD s5, zero, zero
  # implict jump to bb6
bb6:
  ADD s6, s5, zero
  SLLIW s7, s6, 2
  LA s8, used
  ADD s7, s8, s7
  SW zero, 0(s7)
  ADDIW s0, s6, 1
  # implict jump to bb7
bb7:
  SLTI s6, s0, 10
  BNE s6, zero, bb8
  JAL zero, bb2
bb8:
  ADD s5, s0, zero
  JAL zero, bb6
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
  BNE s3, zero, bb23
  # implict jump to bb10
bb10:
  SLLIW s3, s0, 2
  LA s4, used
  ADD s4, s4, s3
  ADDI s5, zero, 1
  SW s5, 0(s4)
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb11
bb11:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  LA s10, size
  ADD s10, s10, s3
  LW s10, 0(s10)
  BLT s7, s10, bb13
  # implict jump to bb12
bb12:
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
bb13:
  ADDI s10, zero, 40
  MULW s10, s0, s10
  LA s11, to
  ADD s11, s11, s10
  SLLIW t4, s7, 2
  SW t4, 0(sp)
  LW t4, 0(sp)
  ADD s11, s11, t4
  LW t1, 0(s11)
  SLLIW t1, t1, 2
  LA t2, used
  ADD t1, t2, t1
  LW t1, 0(t1)
  BNE t1, zero, bb22
  # implict jump to bb14
bb14:
  LA t1, cap
  ADD t1, t1, s10
  LW t3, 0(sp)
  ADD t4, t1, t3
  SD t4, 112(sp)
  LD t4, 112(sp)
  LW t2, 0(t4)
  SLT a3, zero, t2
  XORI a3, a3, 1
  BNE a3, zero, bb21
  # implict jump to bb15
bb15:
  BLT s2, t2, bb20
  # implict jump to bb16
bb16:
  # implict jump to bb17
bb17:
  ADD t4, t2, zero
  SW t4, 4(sp)
  LW a3, 0(s11)
  ADD a0, a3, zero
  ADD a1, s1, zero
  LW t4, 4(sp)
  ADD a2, t4, zero
  CALL dfs
  ADD t0, a0, zero
  BLT zero, t0, bb19
  # implict jump to bb18
bb18:
  ADDIW t1, s7, 1
  ADD s4, t0, zero
  LW t4, 4(sp)
  ADD s5, t4, zero
  ADD s6, t1, zero
  JAL zero, bb11
bb19:
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
  LW t4, 0(sp)
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
bb20:
  ADD t2, s2, zero
  JAL zero, bb17
bb21:
  ADDIW s10, s7, 1
  ADD s4, s9, zero
  ADD s5, s8, zero
  ADD s6, s10, zero
  JAL zero, bb11
bb22:
  ADDIW s7, s7, 1
  ADD s4, s9, zero
  ADD s5, s8, zero
  ADD s6, s7, zero
  JAL zero, bb11
bb23:
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
  BNE s5, zero, bb40
  # implict jump to bb26
bb26:
  LW t4, 12(sp)
  BLT zero, t4, bb36
  # implict jump to bb27
bb27:
  ADD s1, zero, zero
  # implict jump to bb28
bb28:
  ADD s3, s1, zero
  SLTI s4, zero, 10
  BNE s4, zero, bb32
  # implict jump to bb29
bb29:
  ADDI a0, zero, 1
  LW t4, 8(sp)
  ADD a1, t4, zero
  LUI s5, 458752
  ADDIW s5, s5, 0
  ADD a2, zero, s5
  CALL dfs
  ADD s5, a0, zero
  SLTIU s7, s5, 1
  BNE s7, zero, bb31
  # implict jump to bb30
bb30:
  ADDW s5, s3, s5
  ADD s1, s5, zero
  JAL zero, bb28
bb31:
  ADD a0, s3, zero
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
bb32:
  ADD s4, zero, zero
  # implict jump to bb33
bb33:
  ADD s5, s4, zero
  SLLIW s7, s5, 2
  LA s8, used
  ADD s7, s8, s7
  SW zero, 0(s7)
  ADDIW s0, s5, 1
  # implict jump to bb34
bb34:
  SLTI s5, s0, 10
  BNE s5, zero, bb35
  JAL zero, bb29
bb35:
  ADD s4, s0, zero
  JAL zero, bb33
bb36:
  LW t4, 12(sp)
  ADD s6, t4, zero
  # implict jump to bb37
bb37:
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
  # implict jump to bb38
bb38:
  BLT zero, s2, bb39
  JAL zero, bb27
bb39:
  ADD s6, s2, zero
  JAL zero, bb37
bb40:
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb41
bb41:
  LW t4, 4(sp)
  ADD s6, t4, zero
  SLLIW s7, s6, 2
  LA s8, size
  ADD s7, s8, s7
  SW zero, 0(s7)
  ADDIW t4, s6, 1
  SW t4, 0(sp)
  # implict jump to bb42
bb42:
  LW t4, 0(sp)
  SLTI s6, t4, 10
  BNE s6, zero, bb43
  JAL zero, bb26
bb43:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb41
my_memset:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  BLT zero, a2, bb46
  # implict jump to bb45
bb45:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb46:
  ADD s1, zero, zero
  # implict jump to bb47
bb47:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  ADD s3, a0, s3
  SW a1, 0(s3)
  ADDIW s0, s2, 1
  # implict jump to bb48
bb48:
  BLT s0, a2, bb49
  JAL zero, bb45
bb49:
  ADD s1, s0, zero
  JAL zero, bb47
