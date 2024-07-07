.global main
.section .bss
y:
.space 864000000
x:
.space 864000000
.section .data


.section .text
main:
  ADDI sp, sp, -176
  SD ra, 64(sp)
  SD s1, 72(sp)
  SD s11, 80(sp)
  SD s7, 88(sp)
  SD s10, 96(sp)
  SD s2, 104(sp)
  SD s3, 112(sp)
  SD s4, 120(sp)
  SD s5, 128(sp)
  SD s0, 136(sp)
  SD s6, 144(sp)
  SD s8, 152(sp)
  SD s9, 160(sp)
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
  BNE s4, zero, bb2
  JAL zero, bb3
bb2:
  ADD s4, zero, zero
  JAL zero, bb4
bb3:
  ADDI t4, zero, 1
  SW t4, 48(sp)
  ADDI t4, zero, 1
  SW t4, 40(sp)
  JAL zero, bb10
bb4:
  ADD s5, s4, zero
  LW t4, 0(sp)
  SLT s6, s5, t4
  BNE s6, zero, bb5
  JAL zero, bb6
bb5:
  ADD s6, zero, zero
  JAL zero, bb7
bb6:
  ADDIW s0, s3, 1
  ADD s2, s0, zero
  JAL zero, bb1
bb7:
  ADD s7, s6, zero
  LW t4, 0(sp)
  SLT s8, s7, t4
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
  MULW s11, s5, s8
  ADD s8, s10, s11
  ADDI s10, zero, 4
  MULW s0, s7, s10
  ADD s10, s8, s0
  ADDI s8, zero, 1
  SW s8, 0(s10)
  LA s8, y
  ADD s10, s8, s9
  ADD s8, s10, s11
  ADD s9, s8, s0
  SW zero, 0(s9)
  ADDIW s0, s7, 1
  ADD s6, s0, zero
  JAL zero, bb7
bb9:
  ADDIW s0, s5, 1
  ADD s4, s0, zero
  JAL zero, bb4
bb10:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  ADDI s5, zero, 1
  LW t3, 0(sp)
  SUBW t4, t3, s5
  SW t4, 56(sp)
  LW t4, 16(sp)
  LW t3, 56(sp)
  SLT s5, t4, t3
  BNE s5, zero, bb11
  JAL zero, bb12
bb11:
  ADDI s5, zero, 1
  JAL zero, bb13
bb12:
  ADDI a0, zero, 53
  CALL _sysy_stoptime
  LA s0, x
  ADD s1, s0, zero
  ADD s0, s1, zero
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
  ADD s3, s0, s2
  LUI s0, 1
  ADDI s0, s0, -1696
  MULW s2, s1, s0
  ADD s0, s3, s2
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
  LD ra, 64(sp)
  LD s1, 72(sp)
  LD s11, 80(sp)
  LD s7, 88(sp)
  LD s10, 96(sp)
  LD s2, 104(sp)
  LD s3, 112(sp)
  LD s4, 120(sp)
  LD s5, 128(sp)
  LD s0, 136(sp)
  LD s6, 144(sp)
  LD s8, 152(sp)
  LD s9, 160(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb13:
  ADD t4, s5, zero
  SW t4, 32(sp)
  LW t4, 32(sp)
  LW t3, 56(sp)
  SLT s8, t4, t3
  BNE s8, zero, bb14
  JAL zero, bb15
bb14:
  ADDI s8, zero, 1
  JAL zero, bb16
bb15:
  LW t4, 16(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 48(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb10
bb16:
  ADD s9, s8, zero
  LW t4, 56(sp)
  SLT s10, s9, t4
  BNE s10, zero, bb17
  JAL zero, bb18
bb17:
  LUI s10, 352
  ADDI s10, s10, -1792
  LW t4, 16(sp)
  MULW s11, t4, s10
  LA s10, x
  ADD s3, s10, s11
  LUI s10, 1
  ADDI s10, s10, -1696
  LW t4, 32(sp)
  MULW s11, t4, s10
  ADD s10, s3, s11
  ADDI s4, zero, 4
  MULW s1, s9, s4
  ADD s4, s10, s1
  ADDI s7, zero, 1
  LW t4, 16(sp)
  SUBW s2, t4, s7
  LUI s7, 352
  ADDI s7, s7, -1792
  MULW s0, s2, s7
  LA s2, x
  ADD s7, s2, s0
  ADD s0, s7, s11
  ADD s2, s0, s1
  LW s0, 0(s2)
  LW t4, 16(sp)
  ADDIW s2, t4, 1
  LUI s7, 352
  ADDI s7, s7, -1792
  MULW s6, s2, s7
  LA s2, x
  ADD s7, s2, s6
  ADD s2, s7, s11
  ADD s6, s2, s1
  LW s2, 0(s6)
  ADDW s6, s0, s2
  ADDI s0, zero, 1
  LW t4, 32(sp)
  SUBW s2, t4, s0
  LUI s0, 1
  ADDI s0, s0, -1696
  MULW s7, s2, s0
  ADD s0, s3, s7
  ADD s2, s0, s1
  LW s0, 0(s2)
  ADDW s2, s6, s0
  LW t4, 32(sp)
  ADDIW s0, t4, 1
  LUI s6, 1
  ADDI s6, s6, -1696
  MULW s7, s0, s6
  ADD s0, s3, s7
  ADD s3, s0, s1
  LW s0, 0(s3)
  ADDW s1, s2, s0
  ADDI s0, zero, 1
  SUBW s2, s9, s0
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s10, s3
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDIW s1, s9, 1
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s2, s10, s3
  LW s3, 0(s2)
  ADDW s2, s0, s3
  LW t4, 24(sp)
  DIVW s0, s2, t4
  SW s0, 0(s4)
  ADD s8, s1, zero
  JAL zero, bb16
bb18:
  LW t4, 32(sp)
  ADDIW s0, t4, 1
  ADD s5, s0, zero
  JAL zero, bb13
