.global main
.global func
.section .bss
.section .data
.section .text
main:
  LUI t0, 1048569
  ADDI t0, t0, -336
  ADD sp, sp, t0
  LUI t5, 7
  ADDI t5, t5, 232
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t6, 7
  ADDI t6, t6, 240
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t5, 7
  ADDI t5, t5, 248
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t6, 7
  ADDI t6, t6, 256
  ADD t6, t6, sp
  SD s10, 0(t6)
  LUI t5, 7
  ADDI t5, t5, 264
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t6, 7
  ADDI t6, t6, 272
  ADD t6, t6, sp
  SD s6, 0(t6)
  LUI t5, 7
  ADDI t5, t5, 280
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t6, 7
  ADDI t6, t6, 288
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t5, 7
  ADDI t5, t5, 296
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t6, 7
  ADDI t6, t6, 304
  ADD t6, t6, sp
  SD s7, 0(t6)
  LUI t5, 7
  ADDI t5, t5, 312
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t6, 7
  ADDI t6, t6, 320
  ADD t6, t6, sp
  SD s9, 0(t6)
  LUI s0, 1
  ADDI s0, s0, -9
  LUI t5, 3
  ADDI t5, t5, 256
  ADD t5, t5, sp
  SW s0, 0(t5)
  JAL zero, bb1
bb1:
  LUI t6, 3
  ADDI t6, t6, 256
  ADD t6, t6, sp
  LW s0, 0(t6)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb2
  JAL zero, bb3
bb2:
  LUI t5, 3
  ADDI t5, t5, 256
  ADD t5, t5, sp
  LW s0, 0(t5)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  LUI t6, 3
  ADDI t6, t6, 256
  ADD t6, t6, sp
  SW s2, 0(t6)
  ADDI s0, zero, 4
  MULW s1, s2, s0
  ADDW s0, zero, s1
  LUI t5, 3
  ADDI t5, t5, 264
  ADD t5, t5, sp
  ADD s1, t5, s0
  SW zero, 0(s1)
  JAL zero, bb1
bb3:
  LUI s0, 1
  ADDI s0, s0, -969
  SW s0, 24(sp)
  JAL zero, bb4
bb4:
  LW s0, 24(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb5
  JAL zero, bb6
bb5:
  LW s0, 24(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 24(sp)
  ADDI s0, zero, 4
  MULW s1, s2, s0
  ADDW s0, zero, s1
  ADDI t6, sp, 32
  ADD s1, t6, s0
  SW zero, 0(s1)
  JAL zero, bb4
bb6:
  ADDI s0, zero, 268
  ADDI s1, zero, 17
  MULW s2, s0, s1
  LUI t5, 3
  ADDI t5, t5, 264
  ADD t5, t5, sp
  ADD s0, t5, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADD s1, s0, s3
  ADDI s0, zero, 6
  SW s0, 0(s1)
  ADDI s0, zero, 268
  ADDI s1, zero, 17
  MULW s2, s0, s1
  LUI t6, 3
  ADDI t6, t6, 264
  ADD t6, t6, sp
  ADD s0, t6, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 3
  MULW s3, s1, s2
  ADD s1, s0, s3
  ADDI s0, zero, 7
  SW s0, 0(s1)
  ADDI s0, zero, 268
  ADDI s1, zero, 17
  MULW s2, s0, s1
  LUI t5, 3
  ADDI t5, t5, 264
  ADD t5, t5, sp
  ADD s0, t5, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  ADDI s0, zero, 4
  SW s0, 0(s1)
  ADDI s0, zero, 268
  ADDI s1, zero, 17
  MULW s2, s0, s1
  LUI t6, 3
  ADDI t6, t6, 264
  ADD t6, t6, sp
  ADD s0, t6, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 7
  MULW s3, s1, s2
  ADD s1, s0, s3
  ADDI s0, zero, 9
  SW s0, 0(s1)
  ADDI s0, zero, 268
  ADDI s1, zero, 17
  MULW s2, s0, s1
  LUI t5, 3
  ADDI t5, t5, 264
  ADD t5, t5, sp
  ADD s0, t5, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 11
  MULW s3, s1, s2
  ADD s1, s0, s3
  ADDI s0, zero, 11
  SW s0, 0(s1)
  ADDI s0, zero, 236
  ADDI s1, zero, 6
  MULW s2, s0, s1
  ADDI t6, sp, 32
  ADD s0, t6, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADD s1, s0, s3
  ADDI s0, zero, 1
  SW s0, 0(s1)
  ADDI s0, zero, 236
  ADDI s1, zero, 6
  MULW s2, s0, s1
  ADDI t5, sp, 32
  ADD s0, t5, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 2
  MULW s3, s1, s2
  ADD s1, s0, s3
  ADDI s0, zero, 2
  SW s0, 0(s1)
  ADDI s0, zero, 236
  ADDI s1, zero, 6
  MULW s2, s0, s1
  ADDI t6, sp, 32
  ADD s0, t6, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 3
  MULW s3, s1, s2
  ADD s1, s0, s3
  ADDI s0, zero, 3
  SW s0, 0(s1)
  ADDI s0, zero, 236
  ADDI s1, zero, 6
  MULW s2, s0, s1
  ADDI t5, sp, 32
  ADD s0, t5, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 9
  MULW s3, s1, s2
  ADD s1, s0, s3
  ADDI s0, zero, 9
  SW s0, 0(s1)
  ADDI s0, zero, 268
  ADDI s1, zero, 17
  MULW s2, s0, s1
  LUI t6, 3
  ADDI t6, t6, 264
  ADD t6, t6, sp
  ADD s0, t6, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 0(s1)
  ADDI s1, zero, 268
  ADDI s2, zero, 17
  MULW s3, s1, s2
  LUI t5, 3
  ADDI t5, t5, 264
  ADD t5, t5, sp
  ADD s1, t5, s3
  ADDI s2, zero, 4
  ADDI s3, zero, 3
  MULW s4, s2, s3
  ADD s2, s1, s4
  LW s1, 0(s2)
  ADDI s2, zero, 268
  ADDI s3, zero, 17
  MULW s4, s2, s3
  LUI t6, 3
  ADDI t6, t6, 264
  ADD t6, t6, sp
  ADD s2, t6, s4
  ADDI s3, zero, 236
  ADDI s4, zero, 6
  MULW s5, s3, s4
  ADDI t5, sp, 32
  ADD s3, t5, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 236
  ADDI s5, zero, 6
  MULW s6, s4, s5
  ADDI t6, sp, 32
  ADD s4, t6, s6
  ADDI s5, zero, 4
  MULW s6, zero, s5
  ADD s5, s4, s6
  LW s4, 0(s5)
  ADDI s5, zero, 236
  ADDI s6, zero, 6
  MULW s7, s5, s6
  ADDI t5, sp, 32
  ADD s5, t5, s7
  ADDI s6, zero, 236
  ADDI s7, zero, 34
  MULW s8, s6, s7
  ADDI t6, sp, 32
  ADD s6, t6, s8
  ADDI s7, zero, 4
  ADDI s8, zero, 4
  MULW s9, s7, s8
  ADD s7, s6, s9
  LW s6, 0(s7)
  ADDI s7, zero, 236
  ADDI s8, zero, 51
  MULW s9, s7, s8
  ADDI t5, sp, 32
  ADD s7, t5, s9
  ADDI s8, zero, 4
  ADDI s9, zero, 18
  MULW s10, s8, s9
  ADD s8, s7, s10
  LW s7, 0(s8)
  ADD a0, s0, zero
  ADDI a1, sp, 32
  ADD a1, a1, zero
  ADD a2, s1, zero
  ADD a3, s2, zero
  ADD a4, s3, zero
  ADD a5, s4, zero
  ADD a6, s5, zero
  ADD a7, s6, zero
  ADDI t6, sp, 0
  ADD s0, t6, zero
  SW s7, 0(s0)
  CALL func
  ADD s0, a0, zero
  ADDI s1, zero, 3
  MULW s2, s0, s1
  SW s2, 16(sp)
  JAL zero, bb7
bb7:
  LW s0, 16(sp)
  SLT s1, s0, zero
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s0, zero, 236
  ADDI s1, zero, 6
  MULW s2, s0, s1
  ADDI t5, sp, 32
  ADD s0, t5, s2
  LW s1, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW s0, 16(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 16(sp)
  JAL zero, bb7
bb9:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LUI ra, 7
  ADDI ra, ra, 232
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 7
  ADDI t6, t6, 240
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t5, 7
  ADDI t5, t5, 248
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t6, 7
  ADDI t6, t6, 256
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI t5, 7
  ADDI t5, t5, 264
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 7
  ADDI t6, t6, 272
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t5, 7
  ADDI t5, t5, 280
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t6, 7
  ADDI t6, t6, 288
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t5, 7
  ADDI t5, t5, 296
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t6, 7
  ADDI t6, t6, 304
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t5, 7
  ADDI t5, t5, 312
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t6, 7
  ADDI t6, t6, 320
  ADD t6, t6, sp
  LD s9, 0(t6)
  LUI t0, 7
  ADDI t0, t0, 336
  ADD sp, sp, t0
  JALR zero, 0(ra)
func:
  ADDI sp, sp, -144
  SD ra, 56(sp)
  SD s9, 64(sp)
  SD s8, 72(sp)
  SD s7, 80(sp)
  SD s6, 88(sp)
  SD s0, 96(sp)
  SD s5, 104(sp)
  SD s1, 112(sp)
  SD s2, 120(sp)
  SD s3, 128(sp)
  SD s4, 136(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  ADD s6, a6, zero
  ADD s7, a7, zero
  ADDI t5, sp, 144
  ADD s8, t5, zero
  LW s9, 0(s8)
  SW s0, 48(sp)
  SW s2, 40(sp)
  SW s4, 32(sp)
  SW s5, 24(sp)
  SW s7, 16(sp)
  SW s9, 8(sp)
  SW zero, 0(sp)
  JAL zero, bb11
bb11:
  LW s0, 0(sp)
  SLTI s2, s0, 10
  XOR s0, s2, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb12
  JAL zero, bb13
bb12:
  LW s0, 48(sp)
  ADDI s2, zero, 236
  MULW s4, s0, s2
  ADD s0, s1, s4
  LW s2, 0(sp)
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s2, s0, s5
  LW s0, 0(s2)
  ADD a0, s0, zero
  CALL putint
  LW s0, 0(sp)
  ADDIW s2, s0, 1
  SW s2, 0(sp)
  JAL zero, bb11
bb13:
  ADDI a0, zero, 10
  CALL putch
  LW s0, 40(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADD s0, s3, s2
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb14
bb14:
  LW s0, 8(sp)
  SLTI s1, s0, 10
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb15
  JAL zero, bb16
bb15:
  LW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADD s0, s6, s2
  LW s1, 16(sp)
  LUI s2, 31
  ADDI s2, s2, 1899
  MULW s3, s1, s2
  LUI s1, 1
  ADDI s1, s1, -372
  REMW s2, s3, s1
  SW s2, 0(s0)
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  LW s0, 16(sp)
  ADDIW s1, s0, 7
  SW s1, 16(sp)
  JAL zero, bb14
bb16:
  LW s0, 32(sp)
  LW s1, 24(sp)
  ADDW s2, s0, s1
  ADD a0, s2, zero
  LD ra, 56(sp)
  LD s9, 64(sp)
  LD s8, 72(sp)
  LD s7, 80(sp)
  LD s6, 88(sp)
  LD s0, 96(sp)
  LD s5, 104(sp)
  LD s1, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
