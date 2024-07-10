.global main
.section .bss


.section .data
c:
.byte 6, 0, 0, 0, 7, 0, 0, 0, 8, 0, 0, 0, 9, 0, 0, 0
b:
.word 0x00000005
.section .text
main:
  ADDI sp, sp, -288
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  ADDI a0, zero, 3
  CALL putint
  ADDI a0, zero, 3
  CALL putint
  ADDI a0, zero, 1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s0, c
  ADDI s1, s0, 8
  ADDI s0, zero, 1
  SW s0, 0(s1)
  ADDI s0, zero, 0
  SW s0, 72(sp)
  ADDI s0, sp, 76
  ADDI s2, zero, 9
  SW s2, 0(s0)
  ADDI s0, sp, 80
  ADDI s2, zero, 0
  SW s2, 0(s0)
  ADDI s0, sp, 84
  ADDI s2, zero, 0
  SW s2, 0(s0)
  ADDI s0, sp, 88
  ADDI s2, zero, 0
  SW s2, 0(s0)
  ADDI s0, sp, 92
  ADDI s2, zero, 0
  SW s2, 0(s0)
  ADDI s0, sp, 96
  ADDI s2, zero, 0
  SW s2, 0(s0)
  ADDI s0, sp, 100
  ADDI s2, zero, 0
  SW s2, 0(s0)
  ADDI s0, sp, 104
  ADDI s2, zero, 8
  SW s2, 0(s0)
  ADDI s0, sp, 108
  ADDI s2, zero, 3
  SW s2, 0(s0)
  ADDI s0, sp, 112
  ADDI s2, zero, 0
  SW s2, 0(s0)
  ADDI s0, sp, 116
  ADDI s2, zero, 0
  SW s2, 0(s0)
  ADDI s0, sp, 120
  ADDI s2, zero, 0
  SW s2, 0(s0)
  ADDI s0, sp, 124
  ADDI s2, zero, 0
  SW s2, 0(s0)
  ADDI s0, sp, 128
  ADDI s2, zero, 0
  SW s2, 0(s0)
  ADDI s0, sp, 132
  ADDI s2, zero, 0
  SW s2, 0(s0)
  LW s0, 0(s1)
  XOR s2, s0, zero
  SLTU s0, zero, s2
  BNE s0, zero, bb2
  # implict jump to bb1
bb1:
  ADDI a0, zero, 10
  CALL putch
  LA s6, b
  LW s7, 0(s6)
  ADD a0, s7, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s6, c
  LW s7, 0(s6)
  ADD a0, s7, zero
  CALL putint
  LA s6, c
  ADDI s7, s6, 4
  LW s6, 0(s7)
  ADD a0, s6, zero
  CALL putint
  LW s6, 0(s1)
  ADD a0, s6, zero
  CALL putint
  LA s6, c
  ADDI s7, s6, 12
  LW s6, 0(s7)
  ADD a0, s6, zero
  CALL putint
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
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb2:
  SW zero, 136(sp)
  ADDI s0, sp, 140
  SW zero, 0(s0)
  ADDI s0, sp, 144
  SW zero, 0(s0)
  ADDI s0, sp, 148
  SW zero, 0(s0)
  ADDI s0, sp, 152
  SW zero, 0(s0)
  ADDI s0, sp, 156
  SW zero, 0(s0)
  ADDI s0, sp, 160
  SW zero, 0(s0)
  ADDI s0, sp, 164
  SW zero, 0(s0)
  ADDI s0, sp, 168
  SW zero, 0(s0)
  ADDI s0, sp, 172
  SW zero, 0(s0)
  ADDI s0, sp, 176
  ADDI s2, zero, 2
  SW s2, 0(s0)
  ADDI s2, sp, 180
  ADDI s3, zero, 1
  SW s3, 0(s2)
  ADDI s3, sp, 184
  ADDI s4, zero, 8
  SW s4, 0(s3)
  ADDI s4, zero, 22
  # implict jump to bb3
bb3:
  ADD s5, s4, zero
  XOR s6, s5, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb5
  # implict jump to bb4
bb4:
  LW s6, 0(s0)
  ADD a0, s6, zero
  CALL putint
  LW s6, 0(s2)
  ADD a0, s6, zero
  CALL putint
  LW s6, 0(s3)
  ADD a0, s6, zero
  CALL putint
  JAL zero, bb1
bb5:
  ADDI s6, zero, 1
  SUBW s7, s5, s6
  SLLIW s5, s7, 2
  ADDIW s6, s5, 52
  ADDI t5, sp, 136
  ADD s5, t5, s6
  SW zero, 0(s5)
  ADD s4, s7, zero
  JAL zero, bb3
