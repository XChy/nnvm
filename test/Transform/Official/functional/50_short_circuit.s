.global main
.global func
.section .bss

.section .data
g:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  CALL getint
  ADD s0, a0, zero
  ADDI s1, zero, 10
  SLT s2, s1, s0
  BNE s2, zero, bb10
  # implict jump to bb1
bb1:
  CALL getint
  ADD s0, a0, zero
  ADDI s1, zero, 11
  SLT s2, s1, s0
  BNE s2, zero, bb9
  # implict jump to bb2
bb2:
  CALL getint
  ADD s0, a0, zero
  ADDI s1, zero, 99
  SLT s2, s1, s0
  XORI s1, s2, 1
  BNE s1, zero, bb4
  # implict jump to bb3
bb3:
  LA s1, g
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s0, g
  SW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  # implict jump to bb4
bb4:
  CALL getint
  ADD s1, a0, zero
  ADDI s2, zero, 100
  SLT s3, s2, s1
  XORI s2, s3, 1
  BNE s2, zero, bb6
  # implict jump to bb5
bb5:
  LA s2, g
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, g
  SW s2, 0(s1)
  ADD a0, s2, zero
  CALL putint
  # implict jump to bb6
bb6:
  LA s2, g
  LW s3, 0(s2)
  ADDIW s2, s3, 99
  LA s3, g
  SW s2, 0(s3)
  ADD a0, s2, zero
  CALL putint
  LA s2, g
  LW s3, 0(s2)
  XOR s2, s3, zero
  SLTU s3, zero, s2
  XORI s2, s3, 1
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb8
  # implict jump to bb7
bb7:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb8:
  LA s2, g
  LW s3, 0(s2)
  ADDIW s2, s3, 100
  LA s3, g
  SW s2, 0(s3)
  ADD a0, s2, zero
  CALL putint
  JAL zero, bb7
bb9:
  LA s1, g
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s0, g
  SW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  JAL zero, bb2
bb10:
  LA s1, g
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s0, g
  SW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  JAL zero, bb1
func:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  LA s1, g
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s0, g
  SW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  LA s0, g
  LW s1, 0(s0)
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
