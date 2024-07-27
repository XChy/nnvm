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
  LA s1, c
  ADDI s2, zero, 1
  SW s2, 8(s1)
  ADDI s2, zero, 0
  SW s2, 72(sp)
  ADDI s2, sp, 76
  ADDI s3, zero, 9
  SW s3, 0(s2)
  ADDI s2, sp, 80
  ADDI s3, zero, 0
  SW s3, 0(s2)
  ADDI s2, sp, 84
  ADDI s3, zero, 0
  SW s3, 0(s2)
  ADDI s2, sp, 88
  ADDI s3, zero, 0
  SW s3, 0(s2)
  ADDI s2, sp, 92
  ADDI s3, zero, 0
  SW s3, 0(s2)
  ADDI s2, sp, 96
  ADDI s3, zero, 0
  SW s3, 0(s2)
  ADDI s2, sp, 100
  ADDI s3, zero, 0
  SW s3, 0(s2)
  ADDI s2, sp, 104
  ADDI s3, zero, 8
  SW s3, 0(s2)
  ADDI s2, sp, 108
  ADDI s3, zero, 3
  SW s3, 0(s2)
  ADDI s2, sp, 112
  ADDI s3, zero, 0
  SW s3, 0(s2)
  ADDI s2, sp, 116
  ADDI s3, zero, 0
  SW s3, 0(s2)
  ADDI s2, sp, 120
  ADDI s3, zero, 0
  SW s3, 0(s2)
  ADDI s2, sp, 124
  ADDI s3, zero, 0
  SW s3, 0(s2)
  ADDI s2, sp, 128
  ADDI s3, zero, 0
  SW s3, 0(s2)
  ADDI s2, sp, 132
  ADDI s3, zero, 0
  SW s3, 0(s2)
  ADDI s2, zero, 0
  XORI s2, s2, 1
  BNE s2, zero, bb2
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
  LW s6, 4(s6)
  ADD a0, s6, zero
  CALL putint
  LW s6, 8(s1)
  ADD a0, s6, zero
  CALL putint
  LA s6, c
  LW s6, 12(s6)
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
  ADDI s2, zero, 0
  SW s2, 136(sp)
  ADDI s2, sp, 140
  ADDI s3, zero, 0
  SW s3, 0(s2)
  ADDI s2, sp, 144
  ADDI s3, zero, 0
  SW s3, 0(s2)
  ADDI s2, sp, 148
  ADDI s3, zero, 0
  SW s3, 0(s2)
  ADDI s2, sp, 152
  ADDI s3, zero, 0
  SW s3, 0(s2)
  ADDI s2, sp, 156
  ADDI s3, zero, 0
  SW s3, 0(s2)
  ADDI s2, sp, 160
  ADDI s3, zero, 0
  SW s3, 0(s2)
  ADDI s2, sp, 164
  ADDI s3, zero, 0
  SW s3, 0(s2)
  ADDI s2, sp, 168
  ADDI s3, zero, 0
  SW s3, 0(s2)
  ADDI s2, sp, 172
  ADDI s3, zero, 0
  SW s3, 0(s2)
  ADDI s2, sp, 176
  ADDI s3, zero, 2
  SW s3, 0(s2)
  ADDI s3, sp, 180
  ADDI s4, zero, 1
  SW s4, 0(s3)
  ADDI s4, sp, 184
  ADDI s5, zero, 8
  SW s5, 0(s4)
  ADDI s5, zero, 0
  XORI s5, s5, 22
  BNE s5, zero, bb4
  # implict jump to bb3
bb3:
  LW s6, 0(s2)
  ADD a0, s6, zero
  CALL putint
  LW s6, 0(s3)
  ADD a0, s6, zero
  CALL putint
  LW s6, 0(s4)
  ADD a0, s6, zero
  CALL putint
  JAL zero, bb1
bb4:
  ADDI s5, zero, 22
  # implict jump to bb5
bb5:
  # implict jump to bb6
bb6:
  ADD s6, s5, zero
  ADDI s7, zero, 1
  SUBW s0, s6, s7
  SLLIW s6, s0, 2
  ADDIW s6, s6, 52
  ADDI t5, sp, 136
  ADD s6, t5, s6
  SW zero, 0(s6)
  # implict jump to bb7
bb7:
  BNE s0, zero, bb8
  JAL zero, bb3
bb8:
  ADD s5, s0, zero
  JAL zero, bb6
