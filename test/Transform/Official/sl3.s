.global main
.section .bss
y:
.space 864000000
x:
.space 864000000
.section .data


.section .text
main:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s2, 16(sp)
  SD s3, 24(sp)
  SD s4, 32(sp)
  SD s8, 40(sp)
  SD s9, 48(sp)
  SD s0, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  ADDI a0, zero, 13
  CALL _sysy_starttime
  ADD s2, zero, zero
  # implict jump to bb1
bb1:
  ADD s3, s2, zero
  BLT s3, s0, bb12
  # implict jump to bb2
bb2:
  ADDI s4, zero, 1
  SUBW s4, s0, s4
  ADDI s5, zero, 1
  ADDI s6, zero, 1
  # implict jump to bb3
bb3:
  ADD s7, s6, zero
  ADD s8, s5, zero
  BLT s8, s4, bb5
  # implict jump to bb4
bb4:
  ADDI a0, zero, 53
  CALL _sysy_stoptime
  ADD a0, s0, zero
  LA s9, x
  ADD a1, s9, zero
  CALL putarray
  ADDI s9, zero, 2
  DIVW s9, s0, s9
  LUI s10, 352
  ADDIW s10, s10, -1792
  MULW s10, s9, s10
  LA s11, x
  ADD s10, s11, s10
  LUI s11, 1
  ADDIW s11, s11, -1696
  MULW s9, s9, s11
  ADD s9, s10, s9
  ADD a0, s0, zero
  ADD a1, s9, zero
  CALL putarray
  ADDI s9, zero, 1
  SUBW s9, s8, s9
  LUI s10, 352
  ADDIW s10, s10, -1792
  MULW s9, s9, s10
  LA s10, x
  ADD s9, s10, s9
  ADDI s10, zero, 1
  SUBW s7, s7, s10
  LUI s10, 1
  ADDIW s10, s10, -1696
  MULW s7, s7, s10
  ADD s7, s9, s7
  ADD a0, s0, zero
  ADD a1, s7, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s2, 16(sp)
  LD s3, 24(sp)
  LD s4, 32(sp)
  LD s8, 40(sp)
  LD s9, 48(sp)
  LD s0, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb5:
  ADDI s7, zero, 1
  # implict jump to bb6
bb6:
  ADD s9, s7, zero
  BLT s9, s4, bb8
  # implict jump to bb7
bb7:
  ADDIW s10, s8, 1
  ADD s5, s10, zero
  ADD s6, s9, zero
  JAL zero, bb3
bb8:
  ADDI s5, zero, 1
  # implict jump to bb9
bb9:
  ADD s6, s5, zero
  BLT s6, s4, bb11
  # implict jump to bb10
bb10:
  ADDIW s10, s9, 1
  ADD s7, s10, zero
  JAL zero, bb6
bb11:
  LUI s7, 352
  ADDIW s7, s7, -1792
  MULW s7, s8, s7
  LA s10, x
  ADD s7, s10, s7
  LUI s10, 1
  ADDIW s10, s10, -1696
  MULW s10, s9, s10
  ADD s11, s7, s10
  SLLIW ra, s6, 2
  ADD t0, s11, ra
  ADDI t1, zero, 1
  SUBW t1, s8, t1
  LUI t2, 352
  ADDIW t2, t2, -1792
  MULW t1, t1, t2
  LA t2, x
  ADD t1, t2, t1
  ADD t1, t1, s10
  ADD t1, t1, ra
  LW t1, 0(t1)
  ADDIW t2, s8, 1
  LUI a0, 352
  ADDIW a0, a0, -1792
  MULW t2, t2, a0
  LA a0, x
  ADD t2, a0, t2
  ADD s10, t2, s10
  ADD s10, s10, ra
  LW s10, 0(s10)
  ADDW s10, t1, s10
  ADDI t1, zero, 1
  SUBW t1, s9, t1
  LUI t2, 1
  ADDIW t2, t2, -1696
  MULW t1, t1, t2
  ADD t1, s7, t1
  ADD t1, t1, ra
  LW t1, 0(t1)
  ADDW s10, s10, t1
  ADDIW t1, s9, 1
  LUI t2, 1
  ADDIW t2, t2, -1696
  MULW t1, t1, t2
  ADD s7, s7, t1
  ADD s7, s7, ra
  LW s7, 0(s7)
  ADDW s7, s10, s7
  ADDI s10, zero, 1
  SUBW s10, s6, s10
  SLLIW s10, s10, 2
  ADD s10, s11, s10
  LW s10, 0(s10)
  ADDW s7, s7, s10
  ADDIW s6, s6, 1
  SLLIW s10, s6, 2
  ADD s10, s11, s10
  LW s10, 0(s10)
  ADDW s7, s7, s10
  DIVW s7, s7, s1
  SW s7, 0(t0)
  ADD s5, s6, zero
  JAL zero, bb9
bb12:
  ADD s4, zero, zero
  # implict jump to bb13
bb13:
  ADD s5, s4, zero
  BLT s5, s0, bb15
  # implict jump to bb14
bb14:
  ADDIW s6, s3, 1
  ADD s2, s6, zero
  JAL zero, bb1
bb15:
  ADD s2, zero, zero
  # implict jump to bb16
bb16:
  ADD s6, s2, zero
  BLT s6, s0, bb18
  # implict jump to bb17
bb17:
  ADDIW s7, s5, 1
  ADD s4, s7, zero
  JAL zero, bb13
bb18:
  LUI s4, 352
  ADDIW s4, s4, -1792
  MULW s4, s3, s4
  LA s7, x
  ADD s7, s7, s4
  LUI s8, 1
  ADDIW s8, s8, -1696
  MULW s8, s5, s8
  ADD s7, s7, s8
  SLLIW s9, s6, 2
  ADD s7, s7, s9
  ADDI s10, zero, 1
  SW s10, 0(s7)
  LA s7, y
  ADD s4, s7, s4
  ADD s4, s4, s8
  ADD s4, s4, s9
  SW zero, 0(s4)
  ADDIW s4, s6, 1
  ADD s2, s4, zero
  JAL zero, bb16
