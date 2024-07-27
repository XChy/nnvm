.global main
.global func
.section .bss

.section .data
loopCount:
.word 0x00000000
.section .text
main:
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
  CALL getint
  ADD s2, a0, zero
  LA s3, loopCount
  SW s2, 0(s3)
  ADDI a0, zero, 121
  CALL _sysy_starttime
  LA s2, loopCount
  LW s2, 0(s2)
  ADDI s3, zero, 0
  BLT s3, s2, bb3
  # implict jump to bb1
bb1:
  ADD s2, zero, zero
  # implict jump to bb2
bb2:
  ADDI a0, zero, 123
  CALL _sysy_stoptime
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb3:
  # implict jump to bb4
bb4:
  ADD s3, zero, zero
  ADD s4, zero, zero
  # implict jump to bb5
bb5:
  ADD s5, s4, zero
  ADD s6, s3, zero
  ADDIW s5, s5, 15
  LUI s7, 366211
  ADDIW s7, s7, -255
  REMW s0, s5, s7
  ADDIW s1, s6, 1
  # implict jump to bb6
bb6:
  LA s5, loopCount
  LW s5, 0(s5)
  BLT s1, s5, bb8
  # implict jump to bb7
bb7:
  ADD s2, s0, zero
  JAL zero, bb2
bb8:
  ADD s3, s1, zero
  ADD s4, s0, zero
  JAL zero, bb5
func:
  ADDI sp, sp, -112
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s10, 96(sp)
  SD s11, 104(sp)
  ADD s2, a0, zero
  ADDI t5, sp, 112
  ADD s3, t5, zero
  LW s3, 0(s3)
  ADDI s4, sp, 116
  LW s4, 0(s4)
  ADDI s5, sp, 120
  LW s5, 0(s5)
  ADDI s6, sp, 124
  LW s6, 0(s6)
  ADDI s7, sp, 128
  LW s7, 0(s7)
  ADDI s8, sp, 132
  LW s8, 0(s8)
  ADDI s9, sp, 136
  LW t4, 0(s9)
  SW t4, 0(sp)
  LA s10, loopCount
  LW s10, 0(s10)
  BLT zero, s10, bb12
  # implict jump to bb10
bb10:
  ADD s10, zero, zero
  # implict jump to bb11
bb11:
  ADD a0, s10, zero
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb12:
  # implict jump to bb13
bb13:
  ADD s11, zero, zero
  ADD t0, zero, zero
  # implict jump to bb14
bb14:
  ADD t1, t0, zero
  ADD t2, s11, zero
  ADDW t6, s2, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDW t6, t6, s2
  ADDW t6, t6, a1
  ADDW t6, t6, a2
  ADDW t6, t6, a3
  ADDW t6, t6, a4
  ADDW t6, t6, a5
  ADDW t6, t6, a6
  ADDW t6, t6, a7
  ADDW t6, t6, s3
  ADDW t6, t6, s4
  ADDW t6, t6, s5
  ADDW t6, t6, s6
  ADDW t6, t6, s7
  ADDW t6, t6, s8
  LW t4, 0(sp)
  ADDW t6, t6, t4
  ADDI s9, zero, 100
  DIVW s9, t6, s9
  ADDW s9, t1, s9
  LUI t1, 366211
  ADDIW t1, t1, -255
  REMW s1, s9, t1
  ADDIW s0, t2, 1
  # implict jump to bb15
bb15:
  LA s9, loopCount
  LW s9, 0(s9)
  BLT s0, s9, bb17
  # implict jump to bb16
bb16:
  ADD s10, s1, zero
  JAL zero, bb11
bb17:
  ADD s11, s0, zero
  ADD t0, s1, zero
  JAL zero, bb14
