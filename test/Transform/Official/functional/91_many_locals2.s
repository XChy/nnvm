.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -288
  SD ra, 256(sp)
  SD s1, 264(sp)
  SD s0, 272(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 8(sp)
  JAL zero, bb1
bb1:
  LW s0, 8(sp)
  XORI s1, s0, 5
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb2
  JAL zero, bb3
bb2:
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb1
bb3:
  ADDI s0, zero, 0
  SW s0, 248(sp)
  ADDI s0, zero, 1
  ADDW s1, s0, zero
  SW s1, 240(sp)
  ADDIW s0, s1, 1
  SW s0, 232(sp)
  ADDIW s1, s0, 1
  SW s1, 224(sp)
  ADDIW s0, s1, 1
  SW s0, 216(sp)
  ADDIW s1, s0, 1
  SW s1, 208(sp)
  ADDIW s0, s1, 1
  SW s0, 200(sp)
  ADDIW s1, s0, 1
  SW s1, 192(sp)
  ADDIW s0, s1, 1
  SW s0, 184(sp)
  ADDIW s1, s0, 1
  SW s1, 176(sp)
  ADDIW s0, s1, 1
  SW s0, 168(sp)
  ADDIW s1, s0, 1
  SW s1, 160(sp)
  ADDIW s0, s1, 1
  SW s0, 152(sp)
  ADDIW s1, s0, 1
  SW s1, 144(sp)
  ADDIW s0, s1, 1
  SW s0, 136(sp)
  ADDIW s1, s0, 1
  SW s1, 128(sp)
  ADDIW s0, s1, 1
  SW s0, 120(sp)
  ADDIW s1, s0, 1
  SW s1, 112(sp)
  ADDIW s0, s1, 1
  SW s0, 104(sp)
  ADDIW s1, s0, 1
  SW s1, 96(sp)
  ADDIW s0, s1, 1
  SW s0, 88(sp)
  ADDIW s1, s0, 1
  SW s1, 80(sp)
  ADDIW s0, s1, 1
  SW s0, 72(sp)
  ADDIW s1, s0, 1
  SW s1, 64(sp)
  ADDIW s0, s1, 1
  SW s0, 56(sp)
  ADDIW s1, s0, 1
  SW s1, 48(sp)
  ADDIW s0, s1, 1
  SW s0, 40(sp)
  ADDIW s1, s0, 1
  SW s1, 32(sp)
  ADDIW s0, s1, 1
  SW s0, 24(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  ADD a0, zero, zero
  CALL putint
  LW s0, 240(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 232(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 224(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 216(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 208(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 200(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 192(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 184(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 176(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 168(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 160(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 152(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 144(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 136(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 128(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 120(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 112(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 104(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 96(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 88(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 80(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 72(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 64(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 56(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 48(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 40(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 32(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 24(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 16(sp)
  ADD a0, s0, zero
  CALL putint
  ADDI s0, zero, 10
  SW s0, 0(sp)
  ADDI a0, zero, 10
  CALL putch
  LW s0, 8(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 0(sp)
  ADD a0, s0, zero
  CALL putch
  LW s0, 48(sp)
  ADD a0, s0, zero
  LD ra, 256(sp)
  LD s1, 264(sp)
  LD s0, 272(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
