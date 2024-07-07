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
  SD s4, 208(sp)
  SD ra, 216(sp)
  SD s3, 224(sp)
  SD s2, 232(sp)
  SD s1, 240(sp)
  SD s5, 248(sp)
  SD s0, 256(sp)
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
  ADDI t5, sp, 144
  ADD s0, t5, zero
  SW zero, 0(s0)
  ADDI s0, sp, 148
  ADDI s2, zero, 9
  SW s2, 0(s0)
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
  ADDI s2, zero, 8
  SW s2, 0(s0)
  ADDI s0, sp, 180
  ADDI s2, zero, 3
  SW s2, 0(s0)
  ADDI s0, sp, 184
  SW zero, 0(s0)
  ADDI s0, sp, 188
  SW zero, 0(s0)
  ADDI s0, sp, 192
  SW zero, 0(s0)
  ADDI s0, sp, 196
  SW zero, 0(s0)
  ADDI s0, sp, 200
  SW zero, 0(s0)
  ADDI s0, sp, 204
  SW zero, 0(s0)
  LW s0, 0(s1)
  XOR s2, s0, zero
  SLTU s0, zero, s2
  BNE s0, zero, bb1
  JAL zero, bb2
bb1:
  ADDI t6, sp, 0
  ADD s0, t6, zero
  SW zero, 0(s0)
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
  ADDI s2, sp, 48
  ADDI s3, zero, 8
  SW s3, 0(s2)
  ADDI s2, zero, 22
  JAL zero, bb3
bb2:
  ADDI a0, zero, 10
  CALL putch
  LA s0, b
  LW s2, 0(s0)
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s0, c
  ADD s2, s0, zero
  LW s0, 0(s2)
  ADD a0, s0, zero
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
  LD s4, 208(sp)
  LD ra, 216(sp)
  LD s3, 224(sp)
  LD s2, 232(sp)
  LD s1, 240(sp)
  LD s5, 248(sp)
  LD s0, 256(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb3:
  ADD s3, s2, zero
  XOR s4, s3, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb4
  JAL zero, bb5
bb4:
  ADDI s4, zero, 1
  SUBW s5, s3, s4
  ADDI s3, zero, 4
  MULW s4, s5, s3
  ADDIW s3, s4, 52
  ADDI t5, sp, 0
  ADD s4, t5, s3
  SW zero, 0(s4)
  ADD s2, s5, zero
  JAL zero, bb3
bb5:
  ADD s2, s0, zero
  ADD s0, s2, zero
  LW s3, 0(s0)
  ADD a0, s3, zero
  CALL putint
  ADDI s0, s2, 4
  LW s3, 0(s0)
  ADD a0, s3, zero
  CALL putint
  ADDI s0, s2, 8
  LW s2, 0(s0)
  ADD a0, s2, zero
  CALL putint
  JAL zero, bb2
