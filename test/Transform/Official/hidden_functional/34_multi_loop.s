.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -160
  SD s2, 128(sp)
  SD ra, 136(sp)
  SD s1, 144(sp)
  SD s0, 152(sp)
  ADDI s0, zero, 0
  SW s0, 120(sp)
  ADDI s0, zero, 0
  SW s0, 112(sp)
  JAL zero, bb1
bb1:
  LW s0, 112(sp)
  SLTI s1, s0, 3
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s0, zero, 0
  SW s0, 104(sp)
  JAL zero, bb4
bb3:
  LW s0, 120(sp)
  ADD a0, s0, zero
  LD s2, 128(sp)
  LD ra, 136(sp)
  LD s1, 144(sp)
  LD s0, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb4:
  LW s0, 104(sp)
  SLTI s1, s0, 4
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s0, zero, 0
  SW s0, 96(sp)
  JAL zero, bb7
bb6:
  LW s0, 112(sp)
  ADDIW s1, s0, 1
  SW s1, 112(sp)
  JAL zero, bb1
bb7:
  LW s0, 96(sp)
  SLTI s1, s0, 5
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s0, zero, 0
  SW s0, 88(sp)
  JAL zero, bb10
bb9:
  LW s0, 104(sp)
  ADDIW s1, s0, 1
  SW s1, 104(sp)
  JAL zero, bb4
bb10:
  LW s0, 88(sp)
  SLTI s1, s0, 3
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb11
  JAL zero, bb12
bb11:
  ADDI s0, zero, 0
  SW s0, 80(sp)
  JAL zero, bb13
bb12:
  LW s0, 96(sp)
  ADDIW s1, s0, 1
  SW s1, 96(sp)
  JAL zero, bb7
bb13:
  LW s0, 80(sp)
  SLTI s1, s0, 5
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb14
  JAL zero, bb15
bb14:
  ADDI s0, zero, 0
  SW s0, 72(sp)
  JAL zero, bb16
bb15:
  LW s0, 88(sp)
  ADDIW s1, s0, 1
  SW s1, 88(sp)
  JAL zero, bb10
bb16:
  LW s0, 72(sp)
  SLTI s1, s0, 4
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb17
  JAL zero, bb18
bb17:
  ADDI s0, zero, 0
  SW s0, 64(sp)
  JAL zero, bb19
bb18:
  LW s0, 80(sp)
  ADDIW s1, s0, 1
  SW s1, 80(sp)
  JAL zero, bb13
bb19:
  LW s0, 64(sp)
  SLTI s1, s0, 6
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb20
  JAL zero, bb21
bb20:
  ADDI s0, zero, 0
  SW s0, 56(sp)
  JAL zero, bb22
bb21:
  LW s0, 72(sp)
  ADDIW s1, s0, 1
  SW s1, 72(sp)
  JAL zero, bb16
bb22:
  LW s0, 56(sp)
  SLTI s1, s0, 5
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb23
  JAL zero, bb24
bb23:
  ADDI s0, zero, 0
  SW s0, 48(sp)
  JAL zero, bb25
bb24:
  LW s0, 64(sp)
  ADDIW s1, s0, 1
  SW s1, 64(sp)
  JAL zero, bb19
bb25:
  LW s0, 48(sp)
  SLTI s1, s0, 5
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb26
  JAL zero, bb27
bb26:
  ADDI s0, zero, 0
  SW s0, 40(sp)
  JAL zero, bb28
bb27:
  LW s0, 56(sp)
  ADDIW s1, s0, 1
  SW s1, 56(sp)
  JAL zero, bb22
bb28:
  LW s0, 40(sp)
  SLTI s1, s0, 3
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb29
  JAL zero, bb30
bb29:
  ADDI s0, zero, 0
  SW s0, 32(sp)
  JAL zero, bb31
bb30:
  LW s0, 48(sp)
  ADDIW s1, s0, 1
  SW s1, 48(sp)
  JAL zero, bb25
bb31:
  LW s0, 32(sp)
  SLTI s1, s0, 6
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb32
  JAL zero, bb33
bb32:
  ADDI s0, zero, 0
  SW s0, 24(sp)
  JAL zero, bb34
bb33:
  LW s0, 40(sp)
  ADDIW s1, s0, 1
  SW s1, 40(sp)
  JAL zero, bb28
bb34:
  LW s0, 24(sp)
  SLTI s1, s0, 7
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb35
  JAL zero, bb36
bb35:
  ADDI s0, zero, 0
  SW s0, 16(sp)
  JAL zero, bb37
bb36:
  LW s0, 32(sp)
  ADDIW s1, s0, 2
  SW s1, 32(sp)
  JAL zero, bb31
bb37:
  LW s0, 16(sp)
  SLTI s1, s0, 5
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb38
  JAL zero, bb39
bb38:
  ADDI s0, zero, 0
  SW s0, 8(sp)
  JAL zero, bb40
bb39:
  LW s0, 24(sp)
  ADDIW s1, s0, 2
  SW s1, 24(sp)
  JAL zero, bb34
bb40:
  LW s0, 8(sp)
  SLTI s1, s0, 3
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb41
  JAL zero, bb42
bb41:
  ADDI s0, zero, 0
  SW s0, 0(sp)
  JAL zero, bb43
bb42:
  LW s0, 16(sp)
  ADDIW s1, s0, 2
  SW s1, 16(sp)
  JAL zero, bb37
bb43:
  LW s0, 0(sp)
  SLTI s1, s0, 6
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb44
  JAL zero, bb45
bb44:
  LW s0, 120(sp)
  ADDIW s1, s0, 3
  ADDI s0, zero, 999
  REMW s2, s1, s0
  SW s2, 120(sp)
  LW s0, 0(sp)
  ADDIW s1, s0, 3
  SW s1, 0(sp)
  JAL zero, bb43
bb45:
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb40
