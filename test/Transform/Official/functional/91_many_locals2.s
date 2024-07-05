.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -256
  SD ra, 144(sp)
  SD s1, 152(sp)
  SD s11, 160(sp)
  SD s0, 168(sp)
  SD s5, 176(sp)
  SD s7, 184(sp)
  SD s10, 192(sp)
  SD s2, 200(sp)
  SD s3, 208(sp)
  SD s4, 216(sp)
  SD s6, 224(sp)
  SD s8, 232(sp)
  SD s9, 240(sp)
  CALL getint
  ADD s0, a0, zero
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb1
bb1:
  LW t4, 0(sp)
  XORI s0, t4, 5
  SLTIU s2, s0, 1
  XOR s0, s2, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  LW t4, 0(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb1
bb3:
  ADDI s0, zero, 1
  ADDW s2, s0, zero
  ADDIW s0, s2, 1
  ADDIW s3, s0, 1
  ADDIW s4, s3, 1
  ADDIW s5, s4, 1
  ADDIW s6, s5, 1
  ADDIW s7, s6, 1
  ADDIW s8, s7, 1
  ADDIW s9, s8, 1
  ADDIW s10, s9, 1
  ADDIW s11, s10, 1
  ADDIW s1, s11, 1
  ADDIW t4, s1, 1
  SW t4, 8(sp)
  LW t3, 8(sp)
  ADDIW t4, t3, 1
  SW t4, 16(sp)
  LW t3, 16(sp)
  ADDIW t4, t3, 1
  SW t4, 24(sp)
  LW t3, 24(sp)
  ADDIW t4, t3, 1
  SW t4, 32(sp)
  LW t3, 32(sp)
  ADDIW t4, t3, 1
  SW t4, 40(sp)
  LW t3, 40(sp)
  ADDIW t4, t3, 1
  SW t4, 48(sp)
  LW t3, 48(sp)
  ADDIW t4, t3, 1
  SW t4, 56(sp)
  LW t3, 56(sp)
  ADDIW t4, t3, 1
  SW t4, 64(sp)
  LW t3, 64(sp)
  ADDIW t4, t3, 1
  SW t4, 72(sp)
  LW t3, 72(sp)
  ADDIW t4, t3, 1
  SW t4, 80(sp)
  LW t3, 80(sp)
  ADDIW t4, t3, 1
  SW t4, 88(sp)
  LW t3, 88(sp)
  ADDIW t4, t3, 1
  SW t4, 96(sp)
  LW t3, 96(sp)
  ADDIW t4, t3, 1
  SW t4, 104(sp)
  LW t3, 104(sp)
  ADDIW t4, t3, 1
  SW t4, 112(sp)
  LW t3, 112(sp)
  ADDIW t4, t3, 1
  SW t4, 120(sp)
  LW t3, 120(sp)
  ADDIW t4, t3, 1
  SW t4, 128(sp)
  LW t3, 128(sp)
  ADDIW t4, t3, 1
  SW t4, 136(sp)
  ADD a0, zero, zero
  CALL putint
  ADD a0, s2, zero
  CALL putint
  ADD a0, s0, zero
  CALL putint
  ADD a0, s3, zero
  CALL putint
  ADD a0, s4, zero
  CALL putint
  ADD a0, s5, zero
  CALL putint
  ADD a0, s6, zero
  CALL putint
  ADD a0, s7, zero
  CALL putint
  ADD a0, s8, zero
  CALL putint
  ADD a0, s9, zero
  CALL putint
  ADD a0, s10, zero
  CALL putint
  ADD a0, s11, zero
  CALL putint
  ADD a0, s1, zero
  CALL putint
  LW t4, 8(sp)
  ADD a0, t4, zero
  CALL putint
  LW t4, 16(sp)
  ADD a0, t4, zero
  CALL putint
  LW t4, 24(sp)
  ADD a0, t4, zero
  CALL putint
  LW t4, 32(sp)
  ADD a0, t4, zero
  CALL putint
  LW t4, 40(sp)
  ADD a0, t4, zero
  CALL putint
  LW t4, 48(sp)
  ADD a0, t4, zero
  CALL putint
  LW t4, 56(sp)
  ADD a0, t4, zero
  CALL putint
  LW t4, 64(sp)
  ADD a0, t4, zero
  CALL putint
  LW t4, 72(sp)
  ADD a0, t4, zero
  CALL putint
  LW t4, 80(sp)
  ADD a0, t4, zero
  CALL putint
  LW t4, 88(sp)
  ADD a0, t4, zero
  CALL putint
  LW t4, 96(sp)
  ADD a0, t4, zero
  CALL putint
  LW t4, 104(sp)
  ADD a0, t4, zero
  CALL putint
  LW t4, 112(sp)
  ADD a0, t4, zero
  CALL putint
  LW t4, 120(sp)
  ADD a0, t4, zero
  CALL putint
  LW t4, 128(sp)
  ADD a0, t4, zero
  CALL putint
  LW t4, 136(sp)
  ADD a0, t4, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t4, 0(sp)
  ADD a0, t4, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t4, 104(sp)
  ADD a0, t4, zero
  LD ra, 144(sp)
  LD s1, 152(sp)
  LD s11, 160(sp)
  LD s0, 168(sp)
  LD s5, 176(sp)
  LD s7, 184(sp)
  LD s10, 192(sp)
  LD s2, 200(sp)
  LD s3, 208(sp)
  LD s4, 216(sp)
  LD s6, 224(sp)
  LD s8, 232(sp)
  LD s9, 240(sp)
  ADDI sp, sp, 256
  JALR zero, 0(ra)
