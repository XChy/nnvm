.global main
.global func
.section .bss

.section .data
loopCount:
.word 0x00000000
.section .text
main:
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
  CALL getint
  ADD s4, a0, zero
  LA s5, loopCount
  SW s4, 0(s5)
  LUI s4, 2
  ADDIW s4, s4, 1823
  ADD a0, zero, s4
  CALL _sysy_starttime
  LA s4, loopCount
  LW s4, 0(s4)
  ADDI s5, zero, 0
  BLT s5, s4, bb3
  # implict jump to bb1
bb1:
  ADD s4, zero, zero
  # implict jump to bb2
bb2:
  LUI s7, 2
  ADDIW s7, s7, 1838
  ADD a0, zero, s7
  CALL _sysy_stoptime
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
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
bb3:
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb4
bb4:
  ADD t4, s6, zero
  SW t4, 0(sp)
  ADD t4, s5, zero
  SW t4, 4(sp)
  ADDI s9, zero, 0
  SLTI s9, s9, 60
  BNE s9, zero, bb10
  # implict jump to bb5
bb5:
  ADD s9, zero, zero
  # implict jump to bb6
bb6:
  ADDI s7, zero, 60
  DIVW s7, s9, s7
  LW t4, 4(sp)
  ADDW s7, t4, s7
  LUI s8, 131068
  ADDIW s8, s8, 1
  REMW s1, s7, s8
  LW t4, 0(sp)
  ADDIW s0, t4, 1
  # implict jump to bb7
bb7:
  LA s7, loopCount
  LW s7, 0(s7)
  BLT s0, s7, bb9
  # implict jump to bb8
bb8:
  ADD s4, s1, zero
  JAL zero, bb2
bb9:
  ADD s5, s1, zero
  ADD s6, s0, zero
  JAL zero, bb4
bb10:
  ADD s10, zero, zero
  ADD s11, zero, zero
  # implict jump to bb11
bb11:
  ADD s7, s11, zero
  ADD s8, s10, zero
  LW t4, 0(sp)
  ADDW s2, s8, t4
  ADDIW s3, s7, 1
  # implict jump to bb12
bb12:
  SLTI s7, s3, 60
  BNE s7, zero, bb14
  # implict jump to bb13
bb13:
  ADD s9, s2, zero
  JAL zero, bb6
bb14:
  ADD s10, s2, zero
  ADD s11, s3, zero
  JAL zero, bb11
func:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  LUI s1, 2
  ADDIW s1, s1, 1808
  ADDW s0, s0, s1
  SUBW s0, s0, a1
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
