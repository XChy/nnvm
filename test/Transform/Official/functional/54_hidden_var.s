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
  SD ra, 208(sp)
  SD s4, 216(sp)
  SD s3, 224(sp)
  SD s2, 232(sp)
  SD s6, 240(sp)
  SD s1, 248(sp)
  SD s5, 256(sp)
  SD s0, 264(sp)
  SD s7, 272(sp)
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
  SW s0, 144(sp)
  ADDI s0, sp, 148
  ADDI s2, zero, 9
  SW s2, 0(s0)
  ADDI s0, sp, 152
  ADDI s2, zero, 0
  SW s2, 0(s0)
  ADDI s0, sp, 156
  ADDI s2, zero, 0
  SW s2, 0(s0)
  ADDI s0, sp, 160
  ADDI s2, zero, 0
  SW s2, 0(s0)
  ADDI s0, sp, 164
  ADDI s2, zero, 0
  SW s2, 0(s0)
  ADDI s0, sp, 168
  ADDI s2, zero, 0
  SW s2, 0(s0)
  ADDI s0, sp, 172
  ADDI s2, zero, 0
  SW s2, 0(s0)
  ADDI s0, sp, 176
  ADDI s2, zero, 8
  SW s2, 0(s0)
  ADDI s0, sp, 180
  ADDI s2, zero, 3
  SW s2, 0(s0)
  ADDI s0, sp, 184
  ADDI s2, zero, 0
  SW s2, 0(s0)
  ADDI s0, sp, 188
  ADDI s2, zero, 0
  SW s2, 0(s0)
  ADDI s0, sp, 192
  ADDI s2, zero, 0
  SW s2, 0(s0)
  ADDI s0, sp, 196
  ADDI s2, zero, 0
  SW s2, 0(s0)
  ADDI s0, sp, 200
  ADDI s2, zero, 0
  SW s2, 0(s0)
  ADDI s0, sp, 204
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
  LA s0, b
  LW s2, 0(s0)
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s0, c
  LW s2, 0(s0)
  ADD a0, s2, zero
  CALL putint
  LA s0, c
  ADDI s2, s0, 4
  LW s0, 0(s2)
  ADD a0, s0, zero
  CALL putint
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  LA s0, c
  ADDI s1, s0, 12
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 208(sp)
  LD s4, 216(sp)
  LD s3, 224(sp)
  LD s2, 232(sp)
  LD s6, 240(sp)
  LD s1, 248(sp)
  LD s5, 256(sp)
  LD s0, 264(sp)
  LD s7, 272(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb2:
  SW zero, 0(sp)
  ADDI s0, sp, 4
  SW zero, 0(s0)
  ADDI s0, sp, 8
  SW zero, 0(s0)
  ADDI s0, sp, 12
  SW zero, 0(s0)
  ADDI s0, sp, 16
  SW zero, 0(s0)
  ADDI s0, sp, 20
  SW zero, 0(s0)
  ADDI s0, sp, 24
  SW zero, 0(s0)
  ADDI s0, sp, 28
  SW zero, 0(s0)
  ADDI s0, sp, 32
  SW zero, 0(s0)
  ADDI s0, sp, 36
  SW zero, 0(s0)
  ADDI s0, sp, 40
  ADDI s2, zero, 2
  SW s2, 0(s0)
  ADDI s2, sp, 44
  ADDI s3, zero, 1
  SW s3, 0(s2)
  ADDI s3, sp, 48
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
  LW s4, 0(s0)
  ADD a0, s4, zero
  CALL putint
  LW s0, 0(s2)
  ADD a0, s0, zero
  CALL putint
  LW s0, 0(s3)
  ADD a0, s0, zero
  CALL putint
  JAL zero, bb1
bb5:
  ADDI s6, zero, 1
  SUBW s7, s5, s6
  SLLIW s5, s7, 2
  ADDIW s6, s5, 52
  ADDI t5, sp, 0
  ADD s5, t5, s6
  SW zero, 0(s5)
  ADD s4, s7, zero
  JAL zero, bb3
