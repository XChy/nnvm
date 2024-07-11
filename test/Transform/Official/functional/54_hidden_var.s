.global main
.section .bss


.section .data
c:
.byte 6, 0, 0, 0, 7, 0, 0, 0, 8, 0, 0, 0, 9, 0, 0, 0
b:
.word 0x00000005
.section .text
main:
  ADDI sp, sp, -272
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
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
  ADDI s0, s0, 8
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s1, zero, 0
  SW s1, 64(sp)
  ADDI s1, sp, 68
  ADDI s2, zero, 9
  SW s2, 0(s1)
  ADDI s1, sp, 72
  ADDI s2, zero, 0
  SW s2, 0(s1)
  ADDI s1, sp, 76
  ADDI s2, zero, 0
  SW s2, 0(s1)
  ADDI s1, sp, 80
  ADDI s2, zero, 0
  SW s2, 0(s1)
  ADDI s1, sp, 84
  ADDI s2, zero, 0
  SW s2, 0(s1)
  ADDI s1, sp, 88
  ADDI s2, zero, 0
  SW s2, 0(s1)
  ADDI s1, sp, 92
  ADDI s2, zero, 0
  SW s2, 0(s1)
  ADDI s1, sp, 96
  ADDI s2, zero, 8
  SW s2, 0(s1)
  ADDI s1, sp, 100
  ADDI s2, zero, 3
  SW s2, 0(s1)
  ADDI s1, sp, 104
  ADDI s2, zero, 0
  SW s2, 0(s1)
  ADDI s1, sp, 108
  ADDI s2, zero, 0
  SW s2, 0(s1)
  ADDI s1, sp, 112
  ADDI s2, zero, 0
  SW s2, 0(s1)
  ADDI s1, sp, 116
  ADDI s2, zero, 0
  SW s2, 0(s1)
  ADDI s1, sp, 120
  ADDI s2, zero, 0
  SW s2, 0(s1)
  ADDI s1, sp, 124
  ADDI s2, zero, 0
  SW s2, 0(s1)
  LW s1, 0(s0)
  BNE s1, zero, bb2
  # implict jump to bb1
bb1:
  ADDI a0, zero, 10
  CALL putch
  LA s6, b
  LW s6, 0(s6)
  ADD a0, s6, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s6, c
  LW s6, 0(s6)
  ADD a0, s6, zero
  CALL putint
  LA s6, c
  ADDI s6, s6, 4
  LW s6, 0(s6)
  ADD a0, s6, zero
  CALL putint
  LW s6, 0(s0)
  ADD a0, s6, zero
  CALL putint
  LA s6, c
  ADDI s6, s6, 12
  LW s6, 0(s6)
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
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb2:
  SW zero, 128(sp)
  ADDI s1, sp, 132
  SW zero, 0(s1)
  ADDI s1, sp, 136
  SW zero, 0(s1)
  ADDI s1, sp, 140
  SW zero, 0(s1)
  ADDI s1, sp, 144
  SW zero, 0(s1)
  ADDI s1, sp, 148
  SW zero, 0(s1)
  ADDI s1, sp, 152
  SW zero, 0(s1)
  ADDI s1, sp, 156
  SW zero, 0(s1)
  ADDI s1, sp, 160
  SW zero, 0(s1)
  ADDI s1, sp, 164
  SW zero, 0(s1)
  ADDI s1, sp, 168
  ADDI s2, zero, 2
  SW s2, 0(s1)
  ADDI s2, sp, 172
  ADDI s3, zero, 1
  SW s3, 0(s2)
  ADDI s3, sp, 176
  ADDI s4, zero, 8
  SW s4, 0(s3)
  ADDI s4, zero, 22
  # implict jump to bb3
bb3:
  ADD s5, s4, zero
  BNE s5, zero, bb5
  # implict jump to bb4
bb4:
  LW s6, 0(s1)
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
  SUBW s5, s5, s6
  SLLIW s6, s5, 2
  ADDIW s6, s6, 52
  ADDI t5, sp, 128
  ADD s6, t5, s6
  SW zero, 0(s6)
  ADD s4, s5, zero
  JAL zero, bb3
