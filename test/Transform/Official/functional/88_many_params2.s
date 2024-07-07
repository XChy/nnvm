.global main
.global func
.section .bss
.section .data
.section .text
main:
  LUI t0, 1048569
  ADDIW t0, t0, -288
  ADD sp, sp, t0
  LUI t5, 7
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t6, 7
  ADDIW t6, t6, 216
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t5, 7
  ADDIW t5, t5, 224
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t6, 7
  ADDIW t6, t6, 232
  ADD t6, t6, sp
  SD s1, 0(t6)
  LUI t5, 7
  ADDIW t5, t5, 240
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t6, 7
  ADDIW t6, t6, 248
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t5, 7
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t6, 7
  ADDIW t6, t6, 264
  ADD t6, t6, sp
  SD s4, 0(t6)
  LUI t5, 7
  ADDIW t5, t5, 272
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t6, 7
  ADDIW t6, t6, 280
  ADD t6, t6, sp
  SD s8, 0(t6)
  LUI s0, 1
  ADDIW s0, s0, -9
  ADD s1, zero, s0
  JAL zero, bb1
bb1:
  ADD s0, s1, zero
  XOR s2, s0, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  ADDI s0, zero, 4
  MULW s2, s3, s0
  LUI t5, 3
  ADDIW t5, t5, 240
  ADD t5, t5, sp
  ADD s0, t5, s2
  SW zero, 0(s0)
  ADD s1, s3, zero
  JAL zero, bb1
bb3:
  LUI s0, 1
  ADDIW s0, s0, -969
  ADD s1, zero, s0
  JAL zero, bb4
bb4:
  ADD s0, s1, zero
  XOR s2, s0, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  ADDI s0, zero, 4
  MULW s2, s3, s0
  ADDI t6, sp, 16
  ADD s0, t6, s2
  SW zero, 0(s0)
  ADD s1, s3, zero
  JAL zero, bb4
bb6:
  LUI s0, 1
  ADDIW s0, s0, 464
  LUI t5, 3
  ADDIW t5, t5, 240
  ADD t5, t5, sp
  ADD s1, t5, s0
  ADDI s0, zero, 6
  SW s0, 0(s1)
  LUI s0, 1
  ADDIW s0, s0, 472
  LUI t6, 3
  ADDIW t6, t6, 240
  ADD t6, t6, sp
  ADD s2, t6, s0
  ADDI s0, zero, 7
  SW s0, 0(s2)
  LUI s0, 1
  ADDIW s0, s0, 476
  LUI t5, 3
  ADDIW t5, t5, 240
  ADD t5, t5, sp
  ADD s3, t5, s0
  ADDI s0, zero, 4
  SW s0, 0(s3)
  LUI s0, 1
  ADDIW s0, s0, 488
  LUI t6, 3
  ADDIW t6, t6, 240
  ADD t6, t6, sp
  ADD s3, t6, s0
  ADDI s0, zero, 9
  SW s0, 0(s3)
  LUI s0, 1
  ADDIW s0, s0, 504
  LUI t5, 3
  ADDIW t5, t5, 240
  ADD t5, t5, sp
  ADD s3, t5, s0
  ADDI s0, zero, 11
  SW s0, 0(s3)
  ADDI s0, sp, 1436
  ADDI s3, zero, 1
  SW s3, 0(s0)
  ADDI s0, sp, 1440
  ADDI s3, zero, 2
  SW s3, 0(s0)
  ADDI s0, sp, 1444
  ADDI s3, zero, 3
  SW s3, 0(s0)
  ADDI s3, sp, 1468
  ADDI s4, zero, 9
  SW s4, 0(s3)
  LW s3, 0(s1)
  LW s1, 0(s2)
  LUI s2, 1
  ADDIW s2, s2, 460
  LUI t6, 3
  ADDIW t6, t6, 240
  ADD t6, t6, sp
  ADD s4, t6, s2
  LW s2, 0(s0)
  ADDI s0, sp, 1432
  LW s5, 0(s0)
  LUI s6, 2
  ADDIW s6, s6, -152
  ADDI t5, sp, 16
  ADD s7, t5, s6
  LW s6, 0(s7)
  LUI s7, 3
  ADDIW s7, s7, -180
  ADDI t6, sp, 16
  ADD s8, t6, s7
  LW s7, 0(s8)
  ADD a0, s3, zero
  ADDI a1, sp, 16
  ADD a1, a1, zero
  ADD a2, s1, zero
  ADD a3, s4, zero
  ADD a4, s2, zero
  ADD a5, s5, zero
  ADD a6, s0, zero
  ADD a7, s6, zero
  ADDI t5, sp, 0
  ADD s1, t5, zero
  SW s7, 0(s1)
  CALL func
  ADD s1, a0, zero
  ADDI s2, zero, 3
  MULW s3, s1, s2
  ADD s1, s3, zero
  JAL zero, bb7
bb7:
  ADD s2, s1, zero
  SLT s3, s2, zero
  XORI s4, s3, 1
  BNE s4, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s3, s0, s4
  LW s4, 0(s3)
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  ADD s1, s4, zero
  JAL zero, bb7
bb9:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LUI ra, 7
  ADDIW ra, ra, 208
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 7
  ADDIW t6, t6, 216
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t5, 7
  ADDIW t5, t5, 224
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t6, 7
  ADDIW t6, t6, 232
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t5, 7
  ADDIW t5, t5, 240
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t6, 7
  ADDIW t6, t6, 248
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t5, 7
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t6, 7
  ADDIW t6, t6, 264
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t5, 7
  ADDIW t5, t5, 272
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t6, 7
  ADDIW t6, t6, 280
  ADD t6, t6, sp
  LD s8, 0(t6)
  LUI t0, 7
  ADDIW t0, t0, 288
  ADD sp, sp, t0
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
  ADD s8, zero, zero
  JAL zero, bb11
bb11:
  ADD s10, s8, zero
  SLTI s11, s10, 10
  BNE s11, zero, bb12
  JAL zero, bb13
bb12:
  ADDI s11, zero, 236
  MULW ra, s0, s11
  ADD s11, s1, ra
  ADDI ra, zero, 4
  MULW t0, s10, ra
  ADD ra, s11, t0
  LW s11, 0(ra)
  ADD a0, s11, zero
  CALL putint
  ADDIW s11, s10, 1
  ADD s8, s11, zero
  JAL zero, bb11
bb13:
  ADDI a0, zero, 10
  CALL putch
  ADDI s0, zero, 4
  MULW s1, s2, s0
  ADD s0, s3, s1
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD s0, s9, zero
  ADD s1, s7, zero
  JAL zero, bb14
bb14:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s7, s3, 10
  BNE s7, zero, bb15
  JAL zero, bb16
bb15:
  ADDI s7, zero, 4
  MULW s8, s3, s7
  ADD s7, s6, s8
  LUI s8, 31
  ADDIW s8, s8, 1899
  MULW s9, s2, s8
  LUI s8, 1
  ADDIW s8, s8, -372
  REMW s10, s9, s8
  SW s10, 0(s7)
  ADDIW s7, s3, 1
  ADDIW s3, s2, 7
  ADD s0, s7, zero
  ADD s1, s3, zero
  JAL zero, bb14
bb16:
  ADDW s0, s4, s5
  ADD a0, s0, zero
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
