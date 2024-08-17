.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.global radixSort
.section .bss

a:
.space 120000040
.section .data
ans:
.word 0x00000000

.section .text
main:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  LA s1, a
  LA s2, ans
  ADD a0, s1, zero
  CALL getarray
  ADD s0, a0, zero
  ADDI a0, zero, 90
  CALL _sysy_starttime
  ADD a3, s0, zero
  ADD a2, zero, zero
  ADD a1, s1, zero
  ADDI a0, zero, 8
  CALL radixSort
  BLT zero, s0, bb4
  # implict jump to bb1
bb1:   # loop depth 0
  LW t0, 0(s2)
  BLT t0, zero, bb3
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI a0, zero, 102
  CALL _sysy_stoptime
  LW a0, 0(s2)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb3:   # loop depth 0
  LW t0, 0(s2)
  SUBW t0, zero, t0
  SW t0, 0(s2)
  JAL zero, bb2
bb4:   # loop depth 0
  LW t0, 0(s2)
  ADD t1, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  SH2ADD t2, t1, s1
  ADDIW a1, t1, 2
  LW a0, 0(t2)
  ADDIW t2, t1, 1
  REMW a0, a0, a1
  MULW t1, t1, a0
  ADDW t0, t0, t1
  BLT t2, s0, bb7
  # implict jump to bb6
bb6:   # loop depth 0
  SW t0, 0(s2)
  JAL zero, bb1
bb7:   # loop depth 1
  ADD t1, t2, zero
  JAL zero, bb5
radixSort:   # loop depth 0
  ADDI sp, sp, -224
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SW zero, 160(sp)
  ADD a4, a2, zero
  SW zero, 164(sp)
  ADDIW t1, a4, 1
  SW zero, 168(sp)
  ADD t0, a3, zero
  SW zero, 172(sp)
  SW zero, 176(sp)
  SLT t2, t1, t0
  SW zero, 180(sp)
  XORI t1, a0, -1
  SW zero, 184(sp)
  XORI t2, t2, 1
  SW zero, 188(sp)
  SLTIU t1, t1, 1
  SW zero, 192(sp)
  OR t1, t1, t2
  SW zero, 196(sp)
  ADD s0, a1, zero
  SW zero, 200(sp)
  SW zero, 204(sp)
  SW zero, 208(sp)
  SW zero, 212(sp)
  SW zero, 216(sp)
  SW zero, 220(sp)
  BNE t1, zero, bb38
  # implict jump to bb9
bb9:   # loop depth 0
  BLT a4, t0, bb29
  # implict jump to bb10
bb10:   # loop depth 0
  SW a4, 32(sp)
  ADD t0, zero, zero
  LW t1, 160(sp)
  ADD a1, zero, zero
  ADD a2, zero, zero
  ADDW t1, a4, t1
  SW t1, 96(sp)
  SW t1, 36(sp)
  LW t2, 164(sp)
  ADDW t1, t1, t2
  SW t1, 100(sp)
  SW t1, 40(sp)
  LW t2, 168(sp)
  ADDW t1, t1, t2
  SW t1, 104(sp)
  SW t1, 44(sp)
  LW t2, 172(sp)
  ADDW t1, t1, t2
  SW t1, 108(sp)
  SW t1, 48(sp)
  LW t2, 176(sp)
  ADDW t1, t1, t2
  SW t1, 112(sp)
  SW t1, 52(sp)
  LW t2, 180(sp)
  ADDW t1, t1, t2
  SW t1, 116(sp)
  SW t1, 56(sp)
  LW t2, 184(sp)
  ADDW t1, t1, t2
  SW t1, 120(sp)
  SW t1, 60(sp)
  LW t2, 188(sp)
  ADDW t1, t1, t2
  SW t1, 124(sp)
  SW t1, 64(sp)
  LW t2, 192(sp)
  ADDW t1, t1, t2
  SW t1, 128(sp)
  SW t1, 68(sp)
  LW t2, 196(sp)
  ADDW t1, t1, t2
  SW t1, 132(sp)
  SW t1, 72(sp)
  LW t2, 200(sp)
  ADDW t1, t1, t2
  SW t1, 136(sp)
  SW t1, 76(sp)
  LW t2, 204(sp)
  ADDW t1, t1, t2
  SW t1, 140(sp)
  SW t1, 80(sp)
  LW t2, 208(sp)
  ADDW t1, t1, t2
  SW t1, 144(sp)
  SW t1, 84(sp)
  LW t2, 212(sp)
  ADDW t1, t1, t2
  SW t1, 148(sp)
  SW t1, 88(sp)
  LW t2, 216(sp)
  ADDW t1, t1, t2
  SW t1, 152(sp)
  SW t1, 92(sp)
  LW t2, 220(sp)
  ADDW t1, t1, t2
  SW t1, 156(sp)
  # implict jump to bb11
bb11:   # loop depth 1
  SLLIW t1, a2, 2
  ADDI a3, sp, 32
  ADD a3, a3, t1
  ADDI t2, sp, 96
  ADD t2, t2, t1
  LW t1, 0(a3)
  LW a5, 0(t2)
  BLT t1, a5, bb16
  # implict jump to bb12
bb12:   # loop depth 1
  # implict jump to bb13
bb13:   # loop depth 1
  ADDIW a2, a2, 1
  SLTI t1, a2, 16
  BNE t1, zero, bb15
  # implict jump to bb14
bb14:   # loop depth 0
  LW t0, 160(sp)
  ADDIW s1, a0, -1
  ADD a2, a4, zero
  ADD a1, s0, zero
  ADD a0, s1, zero
  ADDW s2, a4, t0
  ADD a3, s2, zero
  CALL radixSort
  LW t0, 164(sp)
  ADD a2, s2, zero
  ADD a1, s0, zero
  ADD a0, s1, zero
  ADDW s2, s2, t0
  ADD a3, s2, zero
  CALL radixSort
  LW t0, 168(sp)
  ADD a2, s2, zero
  ADD a1, s0, zero
  ADD a0, s1, zero
  ADDW s2, s2, t0
  ADD a3, s2, zero
  CALL radixSort
  LW t0, 172(sp)
  ADD a2, s2, zero
  ADD a1, s0, zero
  ADD a0, s1, zero
  ADDW s2, s2, t0
  ADD a3, s2, zero
  CALL radixSort
  LW t0, 176(sp)
  ADD a2, s2, zero
  ADD a1, s0, zero
  ADD a0, s1, zero
  ADDW s2, s2, t0
  ADD a3, s2, zero
  CALL radixSort
  LW t0, 180(sp)
  ADD a2, s2, zero
  ADD a1, s0, zero
  ADD a0, s1, zero
  ADDW s2, s2, t0
  ADD a3, s2, zero
  CALL radixSort
  LW t0, 184(sp)
  ADD a2, s2, zero
  ADD a1, s0, zero
  ADD a0, s1, zero
  ADDW s2, s2, t0
  ADD a3, s2, zero
  CALL radixSort
  LW t0, 188(sp)
  ADD a2, s2, zero
  ADD a1, s0, zero
  ADD a0, s1, zero
  ADDW s2, s2, t0
  ADD a3, s2, zero
  CALL radixSort
  LW t0, 192(sp)
  ADD a2, s2, zero
  ADD a1, s0, zero
  ADD a0, s1, zero
  ADDW s2, s2, t0
  ADD a3, s2, zero
  CALL radixSort
  LW t0, 196(sp)
  ADD a2, s2, zero
  ADD a1, s0, zero
  ADD a0, s1, zero
  ADDW s2, s2, t0
  ADD a3, s2, zero
  CALL radixSort
  LW t0, 200(sp)
  ADD a2, s2, zero
  ADD a1, s0, zero
  ADD a0, s1, zero
  ADDW s2, s2, t0
  ADD a3, s2, zero
  CALL radixSort
  LW t0, 204(sp)
  ADD a2, s2, zero
  ADD a1, s0, zero
  ADD a0, s1, zero
  ADDW s2, s2, t0
  ADD a3, s2, zero
  CALL radixSort
  LW t0, 208(sp)
  ADD a2, s2, zero
  ADD a1, s0, zero
  ADD a0, s1, zero
  ADDW s2, s2, t0
  ADD a3, s2, zero
  CALL radixSort
  LW t0, 212(sp)
  ADD a2, s2, zero
  ADD a1, s0, zero
  ADD a0, s1, zero
  ADDW s2, s2, t0
  ADD a3, s2, zero
  CALL radixSort
  LW t0, 216(sp)
  ADD a2, s2, zero
  ADD a1, s0, zero
  ADD a0, s1, zero
  ADDW s2, s2, t0
  ADD a3, s2, zero
  CALL radixSort
  LW t0, 220(sp)
  ADD a2, s2, zero
  ADD a1, s0, zero
  ADD a0, s1, zero
  ADDW a3, s2, t0
  CALL radixSort
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb15:   # loop depth 1
  JAL zero, bb11
bb16:   # loop depth 1
  # implict jump to bb17
bb17:   # loop depth 2
  SH2ADD t0, t1, s0
  LW t0, 0(t0)
  # implict jump to bb18
bb18:   # loop depth 3
  BLT zero, a0, bb25
  # implict jump to bb19
bb19:   # loop depth 3
  ADD t1, t0, zero
  # implict jump to bb20
bb20:   # loop depth 3
  SLLI t2, t1, 1
  SRLI t2, t2, 60
  ADD t2, t1, t2
  ANDI t2, t2, -16
  SUBW t1, t1, t2
  BNE t1, a2, bb24
  # implict jump to bb21
bb21:   # loop depth 2
  LW t1, 0(a3)
  SH2ADD t2, t1, s0
  ADDIW t1, t1, 1
  SW t0, 0(t2)
  SW t1, 0(a3)
  BLT t1, a5, bb23
  # implict jump to bb22
bb22:   # loop depth 2
  JAL zero, bb13
bb23:   # loop depth 2
  JAL zero, bb17
bb24:   # loop depth 3
  SLLIW t1, t1, 2
  ADD a1, t0, zero
  ADDI t2, sp, 32
  ADD t2, t2, t1
  LW t1, 0(t2)
  SH2ADD a6, t1, s0
  ADDIW a7, t1, 1
  LW t1, 0(a6)
  SW t0, 0(a6)
  ADD t0, t1, zero
  SW a7, 0(t2)
  JAL zero, bb18
bb25:   # loop depth 3
  ADD t2, zero, zero
  ADD t1, t0, zero
  # implict jump to bb26
bb26:   # loop depth 4
  SRAIW a6, t1, 31
  ADDIW t2, t2, 1
  SRLIW a6, a6, 28
  ADD t1, t1, a6
  SRAIW t1, t1, 4
  BLT t2, a0, bb28
  # implict jump to bb27
bb27:   # loop depth 4
  JAL zero, bb20
bb28:   # loop depth 4
  JAL zero, bb26
bb29:   # loop depth 0
  ADD t2, a4, zero
  # implict jump to bb30
bb30:   # loop depth 1
  SH2ADD t1, t2, s0
  LW t1, 0(t1)
  BLT zero, a0, bb34
  # implict jump to bb31
bb31:   # loop depth 1
  # implict jump to bb32
bb32:   # loop depth 1
  ADDIW t2, t2, 1
  SLLI a1, t1, 1
  SRLI a1, a1, 60
  ADD a1, t1, a1
  ANDI a1, a1, -16
  SUBW t1, t1, a1
  SLLIW t1, t1, 2
  ADDI a1, sp, 160
  ADD t1, a1, t1
  LW a1, 0(t1)
  ADDIW a1, a1, 1
  SW a1, 0(t1)
  BLT t2, t0, bb33
  JAL zero, bb10
bb33:   # loop depth 1
  JAL zero, bb30
bb34:   # loop depth 1
  ADD a1, zero, zero
  # implict jump to bb35
bb35:   # loop depth 2
  SRAIW a2, t1, 31
  ADDIW a1, a1, 1
  SRLIW a2, a2, 28
  ADD t1, t1, a2
  SRAIW t1, t1, 4
  BLT a1, a0, bb37
  # implict jump to bb36
bb36:   # loop depth 2
  JAL zero, bb32
bb37:   # loop depth 2
  JAL zero, bb35
bb38:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
