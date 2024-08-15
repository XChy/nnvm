.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.global f
.section .bss
line2:
.space 400
line1:
.space 200
row:
.space 200


ans:
.space 200
.section .data



n:
.word 0x00000000
sum:
.word 0x00000000

.section .text
main:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  CALL getint
  ADDI t0, zero, 0
  BLT t0, a0, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  LA t0, sum
  LW a0, 0(t0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:   # loop depth 0
  ADD s0, a0, zero
  # implict jump to bb3
bb3:   # loop depth 1
  LA s1, n
  CALL getint
  ADDI s2, zero, 0
  ADD t0, a0, zero
  ADDIW s0, s0, -1
  ADDI a0, zero, 1
  SW t0, 0(s1)
  CALL f
  BLT s2, s0, bb4
  JAL zero, bb1
bb4:   # loop depth 1
  JAL zero, bb3
f:   # loop depth 0
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s8, 8(sp)
  SD s9, 16(sp)
  SD s10, 24(sp)
  SD s11, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s5, 80(sp)
  SD s6, 88(sp)
  SD s7, 96(sp)
  LA s2, n
  ADD s3, a0, zero
  LW t1, 0(s2)
  SLTI t0, t1, 1
  BEQ t0, zero, bb7
  # implict jump to bb6
bb6:   # loop depth 0
  LD ra, 0(sp)
  LD s8, 8(sp)
  LD s9, 16(sp)
  LD s10, 24(sp)
  LD s11, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  LD s7, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb7:   # loop depth 0
  LA s9, ans
  LA s8, sum
  LA s7, line1
  LA s6, line2
  ADDI t0, zero, 1
  ADDIW s11, s3, 1
  SH2ADD s10, s3, s9
  # implict jump to bb8
bb8:   # loop depth 1
  LA t2, row
  ADD s1, t0, zero
  ADDW s5, s3, s1
  SH2ADD s4, s1, t2
  LW t0, 0(s4)
  XORI t0, t0, 1
  BNE t0, zero, bb23
  # implict jump to bb9
bb9:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb10
bb10:   # loop depth 1
  BNE t0, zero, bb22
  # implict jump to bb11
bb11:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb12
bb12:   # loop depth 1
  BNE t0, zero, bb15
  # implict jump to bb13
bb13:   # loop depth 1
  LW t1, 0(s2)
  ADDIW t0, s1, 1
  BGE t1, t0, bb14
  JAL zero, bb6
bb14:   # loop depth 1
  JAL zero, bb8
bb15:   # loop depth 1
  SW s1, 0(s10)
  BEQ s3, t1, bb17
  # implict jump to bb16
bb16:   # loop depth 1
  ADDI t0, zero, 1
  ADDI t1, zero, 1
  SH2ADD s0, s5, s7
  SW t0, 0(s4)
  SW t1, 0(s0)
  ADDI t1, zero, 1
  LW t0, 0(s2)
  ADD a0, s11, zero
  ADDW t0, t0, s3
  SUBW t0, t0, s1
  SH2ADD t0, t0, s6
  SW t1, 0(t0)
  CALL f
  SW zero, 0(s4)
  SW zero, 0(s0)
  LW t0, 0(s2)
  ADDW t0, t0, s3
  SUBW t0, t0, s1
  SH2ADD t0, t0, s6
  SW zero, 0(t0)
  JAL zero, bb13
bb17:   # loop depth 1
  LW t0, 0(s8)
  ADDI s0, zero, 1
  ADDIW t0, t0, 1
  SW t0, 0(s8)
  # implict jump to bb18
bb18:   # loop depth 2
  LW t0, 0(s2)
  BGE t0, s0, bb19
  JAL zero, bb16
bb19:   # loop depth 2
  SH2ADD t0, s0, s9
  LW a0, 0(t0)
  CALL putint
  LW t0, 0(s2)
  BEQ s0, t0, bb21
  # implict jump to bb20
bb20:   # loop depth 2
  ADDIW t0, s0, 1
  ADDI a0, zero, 32
  ADD s0, t0, zero
  CALL putch
  JAL zero, bb18
bb21:   # loop depth 1
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb16
bb22:   # loop depth 1
  ADDW t0, t1, s3
  SUBW t0, t0, s1
  SH2ADD t0, t0, s6
  LW t0, 0(t0)
  SLTU t0, zero, t0
  XORI t0, t0, 1
  SLTU t0, zero, t0
  JAL zero, bb12
bb23:   # loop depth 1
  SH2ADD t0, s5, s7
  LW t0, 0(t0)
  SLTIU t0, t0, 1
  JAL zero, bb10
