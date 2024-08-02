.global main
.section .bss
.section .data
.section .text
main:
  LUI t0, 1048569
  ADDIW t0, t0, -256
  ADD sp, sp, t0
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  LUI a0, 1
  ADDIW a0, a0, -9
  ADD a0, zero, a0
  # implict jump to bb1
bb1:
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  ADDI t5, sp, 56
  ADD s0, t5, s0
  ADDI s1, zero, 0
  SW s1, 0(s0)
  BNE a0, zero, bb17
  # implict jump to bb2
bb2:
  LUI a0, 1
  ADDIW a0, a0, -969
  ADD a0, zero, a0
  # implict jump to bb3
bb3:
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  LUI t5, 4
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  ADD s0, t5, s0
  SW zero, 0(s0)
  BNE a0, zero, bb16
  # implict jump to bb4
bb4:
  LUI a0, 1
  ADDIW a0, a0, 464
  ADDI t5, sp, 56
  ADD a0, t5, a0
  ADDI s0, zero, 6
  SW s0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 472
  ADDI t5, sp, 56
  ADD a0, t5, a0
  ADDI s0, zero, 7
  SW s0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 476
  ADDI t5, sp, 56
  ADD a0, t5, a0
  ADDI s0, zero, 4
  SW s0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 488
  ADDI t5, sp, 56
  ADD s0, t5, a0
  ADDI a0, zero, 9
  SW a0, 0(s0)
  LUI a0, 1
  ADDIW a0, a0, 504
  ADDI t5, sp, 56
  ADD a0, t5, a0
  ADDI s1, zero, 11
  SW s1, 0(a0)
  ADDI a0, zero, 1
  LUI t5, 4
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  SW a0, 1420(t5)
  ADDI a0, zero, 2
  LUI t5, 4
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  SW a0, 1424(t5)
  ADDI a0, zero, 3
  LUI t5, 4
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  SW a0, 1428(t5)
  ADDI a0, zero, 9
  LUI t5, 4
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  SW a0, 1452(t5)
  LUI t5, 4
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  ADDI s1, t5, 1416
  LUI t5, 4
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  LW s2, 1416(t5)
  LUI a0, 2
  ADDIW a0, a0, -152
  LUI t5, 4
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  ADD a0, t5, a0
  LW s3, 0(a0)
  LUI a0, 3
  ADDIW a0, a0, -180
  LUI t5, 4
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  ADD a0, t5, a0
  LW s4, 0(a0)
  ADD a0, zero, zero
  # implict jump to bb5
bb5:
  ADD s5, a0, zero
  SLLIW a0, s5, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  CALL putint
  ADDIW a0, s5, 1
  SLTI s5, a0, 10
  BNE s5, zero, bb15
  # implict jump to bb6
bb6:
  ADDI a0, zero, 10
  CALL putch
  LW a0, 0(s0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  SLTI a0, s4, 10
  BNE a0, zero, bb12
  # implict jump to bb7
bb7:
  ADDIW a0, s2, 3
  ADDI s0, zero, 3
  MULW a0, a0, s0
  SLT s0, a0, zero
  XORI s0, s0, 1
  BNE s0, zero, bb9
  # implict jump to bb8
bb8:
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
  LUI t0, 7
  ADDIW t0, t0, 256
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb9:
  # implict jump to bb10
bb10:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SLT s0, a0, zero
  XORI s0, s0, 1
  BNE s0, zero, bb11
  JAL zero, bb8
bb11:
  JAL zero, bb10
bb12:
  ADD a0, s3, zero
  ADD s0, s4, zero
  # implict jump to bb13
bb13:
  SLLIW s3, s0, 2
  ADD s3, s1, s3
  LUI s4, 31
  ADDIW s4, s4, 1899
  MULW s4, a0, s4
  LUI s5, 1
  ADDIW s5, s5, -372
  REMW s4, s4, s5
  SW s4, 0(s3)
  ADDIW s0, s0, 1
  ADDIW a0, a0, 7
  SLTI s3, s0, 10
  BNE s3, zero, bb14
  JAL zero, bb7
bb14:
  JAL zero, bb13
bb15:
  JAL zero, bb5
bb16:
  JAL zero, bb3
bb17:
  JAL zero, bb1
