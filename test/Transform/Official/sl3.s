.global main
.section .bss
y:
.space 864000000
x:
.space 864000000
.section .data


.section .text
main:
  ADDI sp, sp, -144
  SD s11, 32(sp)
  SD ra, 40(sp)
  SD s1, 48(sp)
  SD s7, 56(sp)
  SD s10, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD s5, 96(sp)
  SD s0, 104(sp)
  SD s6, 112(sp)
  SD s8, 120(sp)
  SD s9, 128(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 0(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 24(sp)
  ADDI a0, zero, 13
  CALL _sysy_starttime
  ADD s2, zero, zero
  JAL zero, bb1
bb1:
  ADD s3, s2, zero
  LW t4, 0(sp)
  SLT s4, s3, t4
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb2
  JAL zero, bb3
bb2:
  ADD s4, zero, zero
  JAL zero, bb4
bb3:
  ADDI s2, zero, 1
  ADDI s3, zero, 1
  JAL zero, bb10
bb4:
  ADD s5, s4, zero
  LW t4, 0(sp)
  SLT s6, s5, t4
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb5
  JAL zero, bb6
bb5:
  ADD s6, zero, zero
  JAL zero, bb7
bb6:
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb1
bb7:
  ADD s7, s6, zero
  LW t4, 0(sp)
  SLT s8, s7, t4
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb8
  JAL zero, bb9
bb8:
  LUI s8, 352
  ADDI s8, s8, -1792
  MULW s9, s3, s8
  LA s8, x
  ADD s10, s8, s9
  LUI s8, 1
  ADDI s8, s8, -1696
  MULW s9, s5, s8
  ADD s8, s10, s9
  ADDI s9, zero, 4
  MULW s10, s7, s9
  ADD s9, s8, s10
  ADDI s8, zero, 1
  SW s8, 0(s9)
  LUI s8, 352
  ADDI s8, s8, -1792
  MULW s9, s3, s8
  LA s8, y
  ADD s10, s8, s9
  LUI s8, 1
  ADDI s8, s8, -1696
  MULW s9, s5, s8
  ADD s8, s10, s9
  ADDI s9, zero, 4
  MULW s10, s7, s9
  ADD s9, s8, s10
  SW zero, 0(s9)
  ADDIW s8, s7, 1
  ADD s6, s8, zero
  JAL zero, bb7
bb9:
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb4
bb10:
  ADD t4, s3, zero
  SW t4, 8(sp)
  ADD t4, s2, zero
  SW t4, 16(sp)
  ADDI s6, zero, 1
  LW t4, 0(sp)
  SUBW s7, t4, s6
  LW t4, 16(sp)
  SLT s6, t4, s7
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb11
  JAL zero, bb12
bb11:
  ADDI s6, zero, 1
  JAL zero, bb13
bb12:
  ADDI a0, zero, 53
  CALL _sysy_stoptime
  LUI s0, 352
  ADDI s0, s0, -1792
  MULW s1, zero, s0
  LA s0, x
  ADD s2, s0, s1
  LUI s0, 1
  ADDI s0, s0, -1696
  MULW s1, zero, s0
  ADD s0, s2, s1
  LW t4, 0(sp)
  ADD a0, t4, zero
  ADD a1, s0, zero
  CALL putarray
  ADDI s0, zero, 2
  LW t4, 0(sp)
  DIVW s1, t4, s0
  LUI s0, 352
  ADDI s0, s0, -1792
  MULW s2, s1, s0
  LA s0, x
  ADD s1, s0, s2
  ADDI s0, zero, 2
  LW t4, 0(sp)
  DIVW s2, t4, s0
  LUI s0, 1
  ADDI s0, s0, -1696
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW t4, 0(sp)
  ADD a0, t4, zero
  ADD a1, s0, zero
  CALL putarray
  ADDI s0, zero, 1
  LW t4, 16(sp)
  SUBW s1, t4, s0
  LUI s0, 352
  ADDI s0, s0, -1792
  MULW s2, s1, s0
  LA s0, x
  ADD s1, s0, s2
  ADDI s0, zero, 1
  LW t4, 8(sp)
  SUBW s2, t4, s0
  LUI s0, 1
  ADDI s0, s0, -1696
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW t4, 0(sp)
  ADD a0, t4, zero
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD s11, 32(sp)
  LD ra, 40(sp)
  LD s1, 48(sp)
  LD s7, 56(sp)
  LD s10, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s5, 96(sp)
  LD s0, 104(sp)
  LD s6, 112(sp)
  LD s8, 120(sp)
  LD s9, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb13:
  ADD s7, s6, zero
  ADDI s8, zero, 1
  LW t4, 0(sp)
  SUBW s9, t4, s8
  SLT s8, s7, s9
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb14
  JAL zero, bb15
bb14:
  ADDI s8, zero, 1
  JAL zero, bb16
bb15:
  LW t4, 16(sp)
  ADDIW s0, t4, 1
  ADD s2, s0, zero
  ADD s3, s7, zero
  JAL zero, bb10
bb16:
  ADD s9, s8, zero
  ADDI s10, zero, 1
  LW t4, 0(sp)
  SUBW s11, t4, s10
  SLT s10, s9, s11
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb17
  JAL zero, bb18
bb17:
  LUI s10, 352
  ADDI s10, s10, -1792
  LW t4, 16(sp)
  MULW s11, t4, s10
  LA s10, x
  ADD s0, s10, s11
  LUI s10, 1
  ADDI s10, s10, -1696
  MULW s11, s7, s10
  ADD s10, s0, s11
  ADDI s0, zero, 4
  MULW s11, s9, s0
  ADD s0, s10, s11
  ADDI s10, zero, 1
  LW t4, 16(sp)
  SUBW s11, t4, s10
  LUI s10, 352
  ADDI s10, s10, -1792
  MULW s4, s11, s10
  LA s10, x
  ADD s11, s10, s4
  LUI s4, 1
  ADDI s4, s4, -1696
  MULW s10, s7, s4
  ADD s4, s11, s10
  ADDI s10, zero, 4
  MULW s11, s9, s10
  ADD s10, s4, s11
  LW s4, 0(s10)
  LW t4, 16(sp)
  ADDIW s10, t4, 1
  LUI s11, 352
  ADDI s11, s11, -1792
  MULW s5, s10, s11
  LA s10, x
  ADD s11, s10, s5
  LUI s5, 1
  ADDI s5, s5, -1696
  MULW s10, s7, s5
  ADD s5, s11, s10
  ADDI s10, zero, 4
  MULW s11, s9, s10
  ADD s10, s5, s11
  LW s5, 0(s10)
  ADDW s10, s4, s5
  LUI s4, 352
  ADDI s4, s4, -1792
  LW t4, 16(sp)
  MULW s5, t4, s4
  LA s4, x
  ADD s11, s4, s5
  ADDI s4, zero, 1
  SUBW s5, s7, s4
  LUI s4, 1
  ADDI s4, s4, -1696
  MULW s1, s5, s4
  ADD s4, s11, s1
  ADDI s1, zero, 4
  MULW s5, s9, s1
  ADD s1, s4, s5
  LW s4, 0(s1)
  ADDW s1, s10, s4
  LUI s4, 352
  ADDI s4, s4, -1792
  LW t4, 16(sp)
  MULW s5, t4, s4
  LA s4, x
  ADD s10, s4, s5
  ADDIW s4, s7, 1
  LUI s5, 1
  ADDI s5, s5, -1696
  MULW s11, s4, s5
  ADD s4, s10, s11
  ADDI s5, zero, 4
  MULW s10, s9, s5
  ADD s5, s4, s10
  LW s4, 0(s5)
  ADDW s5, s1, s4
  LUI s1, 352
  ADDI s1, s1, -1792
  LW t4, 16(sp)
  MULW s4, t4, s1
  LA s1, x
  ADD s10, s1, s4
  LUI s1, 1
  ADDI s1, s1, -1696
  MULW s4, s7, s1
  ADD s1, s10, s4
  ADDI s4, zero, 1
  SUBW s10, s9, s4
  ADDI s4, zero, 4
  MULW s11, s10, s4
  ADD s4, s1, s11
  LW s1, 0(s4)
  ADDW s4, s5, s1
  LUI s1, 352
  ADDI s1, s1, -1792
  LW t4, 16(sp)
  MULW s5, t4, s1
  LA s1, x
  ADD s10, s1, s5
  LUI s1, 1
  ADDI s1, s1, -1696
  MULW s5, s7, s1
  ADD s1, s10, s5
  ADDIW s5, s9, 1
  ADDI s10, zero, 4
  MULW s11, s5, s10
  ADD s5, s1, s11
  LW s1, 0(s5)
  ADDW s5, s4, s1
  LW t4, 24(sp)
  DIVW s1, s5, t4
  SW s1, 0(s0)
  ADDIW s0, s9, 1
  ADD s8, s0, zero
  JAL zero, bb16
bb18:
  ADDIW s0, s7, 1
  ADD s6, s0, zero
  JAL zero, bb13
