.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -96
  SD s2, 56(sp)
  SD ra, 64(sp)
  SD s1, 72(sp)
  SD s0, 80(sp)
  ADDI s0, zero, 0
  SW s0, 48(sp)
  ADDI s0, zero, 0
  SW s0, 40(sp)
  JAL zero, bb1
bb1:
  LW s0, 40(sp)
  SLTI s1, s0, 20
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s0, zero, 0
  SW s0, 32(sp)
  JAL zero, bb4
bb3:
  LW s0, 48(sp)
  ADD a0, s0, zero
  LD s2, 56(sp)
  LD ra, 64(sp)
  LD s1, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb4:
  LW s0, 32(sp)
  SLTI s1, s0, 10
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s0, zero, 0
  SW s0, 24(sp)
  JAL zero, bb7
bb6:
  LW s0, 40(sp)
  ADDIW s1, s0, 1
  SW s1, 40(sp)
  JAL zero, bb1
bb7:
  LW s0, 24(sp)
  SLTI s1, s0, 5
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s0, zero, 0
  SW s0, 16(sp)
  JAL zero, bb10
bb9:
  LW s0, 32(sp)
  ADDIW s1, s0, 1
  SW s1, 32(sp)
  JAL zero, bb4
  ADDIW s0, s1, 1
  SW s0, 32(sp)
  JAL zero, bb4
bb10:
  LW s0, 16(sp)
  SLTI s1, s0, 3
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb11
  JAL zero, bb12
bb11:
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SLTI s0, s1, 3
  XORI s1, s0, 1
  BNE s1, zero, bb13
  JAL zero, bb14
bb12:
  JAL zero, bb27
bb13:
  LW s0, 16(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb15
  JAL zero, bb16
bb14:
  SW zero, 0(sp)
  JAL zero, bb24
bb15:
  LW s0, 16(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb17
  JAL zero, bb18
bb16:
  JAL zero, bb14
bb17:
  ADDI s0, zero, 1
  SB s0, 8(sp)
  JAL zero, bb19
bb18:
  LW s0, 16(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 8(sp)
  JAL zero, bb19
bb19:
  LB s0, 8(sp)
  BNE s0, zero, bb20
  JAL zero, bb21
bb20:
  LW s0, 16(sp)
  ADDI s1, zero, 1
  SUBW s2, zero, s1
  SUBW s1, s0, s2
  SLTI s0, s1, 3
  XORI s1, s0, 1
  BNE s1, zero, bb22
  JAL zero, bb23
bb21:
  JAL zero, bb16
bb22:
  JAL zero, bb12
  JAL zero, bb10
bb23:
  JAL zero, bb21
bb24:
  LW s0, 0(sp)
  SLTI s1, s0, 2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb25
  JAL zero, bb26
bb25:
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb24
  JAL zero, bb26
  LW s0, 48(sp)
  ADDIW s1, s0, 1
  SW s1, 48(sp)
  JAL zero, bb24
bb26:
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  LW s0, 48(sp)
  ADDIW s1, s0, 1
  SW s1, 48(sp)
  JAL zero, bb10
bb27:
  XORI s0, zero, 1
  SLTU s1, zero, s0
  BNE s1, zero, bb28
  JAL zero, bb29
bb28:
  JAL zero, bb30
bb29:
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  SW s1, 24(sp)
  JAL zero, bb7
bb30:
  XORI s0, zero, 1
  SLTU s1, zero, s0
  BNE s1, zero, bb31
  JAL zero, bb32
bb31:
  JAL zero, bb32
bb32:
  JAL zero, bb29
