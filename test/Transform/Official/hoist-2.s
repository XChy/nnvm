.global main
.global func
.section .bss

.section .data
loopCount:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, loopCount
  SW s0, 0(s1)
  ADDI a0, zero, 121
  CALL _sysy_starttime
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb1
bb1:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, loopCount
  LW s5, 0(s4)
  SLT s4, s2, s5
  BNE s4, zero, bb2
  JAL zero, bb3
bb2:
  ADDIW s4, s3, 15
  LUI s5, 366211
  ADDIW s5, s5, -255
  REMW s6, s4, s5
  ADDIW s4, s2, 1
  ADD s0, s6, zero
  ADD s1, s4, zero
  JAL zero, bb1
bb3:
  ADDI a0, zero, 123
  CALL _sysy_stoptime
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
func:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s11, 8(sp)
  SD s10, 16(sp)
  SD s9, 24(sp)
  SD s8, 32(sp)
  SD s7, 40(sp)
  SD s6, 48(sp)
  SD s0, 56(sp)
  SD s5, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  ADD s6, a6, zero
  ADD s7, a7, zero
  ADDI t5, sp, 112
  ADD s8, t5, zero
  LW s9, 0(s8)
  ADDI s8, sp, 116
  LW s10, 0(s8)
  ADDI s8, sp, 120
  LW s11, 0(s8)
  ADDI s8, sp, 124
  LW t0, 0(s8)
  ADDI s8, sp, 128
  LW t1, 0(s8)
  ADDI s8, sp, 132
  LW t2, 0(s8)
  ADDI s8, sp, 136
  LW a1, 0(s8)
  ADD s8, zero, zero
  ADD a2, zero, zero
  JAL zero, bb5
bb5:
  ADD a3, a2, zero
  ADD a4, s8, zero
  LA a5, loopCount
  LW a6, 0(a5)
  SLT a5, a3, a6
  BNE a5, zero, bb6
  JAL zero, bb7
bb6:
  ADDW a5, s0, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDW a6, a5, s0
  ADDW a5, a6, s1
  ADDW a6, a5, s2
  ADDW a5, a6, s3
  ADDW a6, a5, s4
  ADDW a5, a6, s5
  ADDW a6, a5, s6
  ADDW a5, a6, s7
  ADDW a6, a5, s9
  ADDW a5, a6, s10
  ADDW a6, a5, s11
  ADDW a5, a6, t0
  ADDW a6, a5, t1
  ADDW a5, a6, t2
  ADDW a6, a5, a1
  ADDW a5, a6, s0
  ADDW a6, a5, s1
  ADDW a5, a6, s2
  ADDW a6, a5, s3
  ADDW a5, a6, s4
  ADDW a6, a5, s5
  ADDW a5, a6, s6
  ADDW a6, a5, s7
  ADDW a5, a6, s9
  ADDW a6, a5, s10
  ADDW a5, a6, s11
  ADDW a6, a5, t0
  ADDW a5, a6, t1
  ADDW a6, a5, t2
  ADDW a5, a6, a1
  ADDI a6, zero, 100
  DIVW a7, a5, a6
  ADDW a5, a4, a7
  LUI a6, 366211
  ADDIW a6, a6, -255
  REMW a7, a5, a6
  ADDIW a5, a3, 1
  ADD s8, a7, zero
  ADD a2, a5, zero
  JAL zero, bb5
bb7:
  ADD a0, a4, zero
  LD ra, 0(sp)
  LD s11, 8(sp)
  LD s10, 16(sp)
  LD s9, 24(sp)
  LD s8, 32(sp)
  LD s7, 40(sp)
  LD s6, 48(sp)
  LD s0, 56(sp)
  LD s5, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
