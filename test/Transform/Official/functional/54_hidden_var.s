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
  SD ra, 208(sp)
  SD s4, 216(sp)
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
  ADD s0, zero, zero
  JAL zero, bb1
bb1:
  ADDI s1, zero, 1
  SLTI s2, s1, 5
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s1, zero, 1
  ADDW s2, s1, zero
  XOR s1, s2, zero
  SLTU s3, zero, s1
  BNE s3, zero, bb4
  JAL zero, bb5
bb3:
  ADDI a0, zero, 1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s1, zero, 4
  ADDI s3, zero, 2
  MULW s4, s1, s3
  LA s1, c
  ADD s3, s1, s4
  ADDI s1, zero, 1
  SW s1, 0(s3)
  ADDI t5, sp, 144
  ADD s1, t5, zero
  SW zero, 0(s1)
  ADDI s1, sp, 148
  ADDI s3, zero, 9
  SW s3, 0(s1)
  ADDI s1, sp, 152
  SW zero, 0(s1)
  ADDI s1, sp, 156
  SW zero, 0(s1)
  ADDI s1, sp, 160
  SW zero, 0(s1)
  ADDI s1, sp, 164
  SW zero, 0(s1)
  ADDI s1, sp, 168
  SW zero, 0(s1)
  ADDI s1, sp, 172
  SW zero, 0(s1)
  ADDI s1, sp, 176
  ADDI s3, zero, 8
  SW s3, 0(s1)
  ADDI s1, sp, 180
  ADDI s3, zero, 3
  SW s3, 0(s1)
  ADDI s1, sp, 184
  SW zero, 0(s1)
  ADDI s1, sp, 188
  SW zero, 0(s1)
  ADDI s1, sp, 192
  SW zero, 0(s1)
  ADDI s1, sp, 196
  SW zero, 0(s1)
  ADDI s1, sp, 200
  SW zero, 0(s1)
  ADDI s1, sp, 204
  SW zero, 0(s1)
  ADDI s1, zero, 4
  ADDI s3, zero, 2
  MULW s4, s1, s3
  LA s1, c
  ADD s3, s1, s4
  LW s1, 0(s3)
  XOR s3, s1, zero
  SLTU s1, zero, s3
  BNE s1, zero, bb6
  JAL zero, bb7
bb4:
  JAL zero, bb3
bb5:
  ADD s0, s2, zero
  JAL zero, bb1
bb6:
  ADDI t6, sp, 0
  ADD s1, t6, zero
  SW zero, 0(s1)
  ADDI s1, sp, 4
  SW zero, 0(s1)
  ADDI s1, sp, 8
  SW zero, 0(s1)
  ADDI s1, sp, 12
  SW zero, 0(s1)
  ADDI s1, sp, 16
  SW zero, 0(s1)
  ADDI s1, sp, 20
  SW zero, 0(s1)
  ADDI s1, sp, 24
  SW zero, 0(s1)
  ADDI s1, sp, 28
  SW zero, 0(s1)
  ADDI s1, sp, 32
  SW zero, 0(s1)
  ADDI s1, sp, 36
  SW zero, 0(s1)
  ADDI s1, sp, 40
  ADDI s3, zero, 2
  SW s3, 0(s1)
  ADDI s1, sp, 44
  ADDI s3, zero, 1
  SW s3, 0(s1)
  ADDI s1, sp, 48
  ADDI s3, zero, 8
  SW s3, 0(s1)
  ADDI s1, zero, 22
  JAL zero, bb8
bb7:
  ADDI a0, zero, 10
  CALL putch
  LA s1, b
  LW s3, 0(s1)
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s1, zero, 4
  MULW s3, zero, s1
  LA s1, c
  ADD s4, s1, s3
  LW s1, 0(s4)
  ADD a0, s1, zero
  CALL putint
  ADDI s1, zero, 4
  ADDI s3, zero, 1
  MULW s4, s1, s3
  LA s1, c
  ADD s3, s1, s4
  LW s1, 0(s3)
  ADD a0, s1, zero
  CALL putint
  ADDI s1, zero, 4
  ADDI s3, zero, 2
  MULW s4, s1, s3
  LA s1, c
  ADD s3, s1, s4
  LW s1, 0(s3)
  ADD a0, s1, zero
  CALL putint
  ADDI s1, zero, 4
  ADDI s3, zero, 3
  MULW s4, s1, s3
  LA s1, c
  ADD s3, s1, s4
  LW s1, 0(s3)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 208(sp)
  LD s4, 216(sp)
  LD s3, 224(sp)
  LD s2, 232(sp)
  LD s1, 240(sp)
  LD s5, 248(sp)
  LD s0, 256(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb8:
  XOR s3, s1, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb9
  JAL zero, bb10
bb9:
  ADDI s3, zero, 1
  SUBW s4, s1, s3
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADDIW s3, s5, 52
  ADDI t5, sp, 0
  ADD s5, t5, s3
  SW zero, 0(s5)
  ADD s1, s4, zero
  JAL zero, bb8
bb10:
  ADDI s1, zero, 20
  ADDI s3, zero, 2
  MULW s4, s1, s3
  ADDI t6, sp, 0
  ADD s1, t6, s4
  ADDI s3, zero, 20
  MULW s4, zero, s3
  ADD s3, s1, s4
  ADDI s1, zero, 4
  MULW s4, zero, s1
  ADD s1, s3, s4
  LW s3, 0(s1)
  ADD a0, s3, zero
  CALL putint
  ADDI s1, zero, 20
  ADDI s3, zero, 2
  MULW s4, s1, s3
  ADDI t5, sp, 0
  ADD s1, t5, s4
  ADDI s3, zero, 20
  MULW s4, zero, s3
  ADD s3, s1, s4
  ADDI s1, zero, 4
  ADDI s4, zero, 1
  MULW s5, s1, s4
  ADD s1, s3, s5
  LW s3, 0(s1)
  ADD a0, s3, zero
  CALL putint
  ADDI s1, zero, 20
  ADDI s3, zero, 2
  MULW s4, s1, s3
  ADDI t6, sp, 0
  ADD s1, t6, s4
  ADDI s3, zero, 20
  MULW s4, zero, s3
  ADD s3, s1, s4
  ADDI s1, zero, 4
  ADDI s4, zero, 2
  MULW s5, s1, s4
  ADD s1, s3, s5
  LW s3, 0(s1)
  ADD a0, s3, zero
  CALL putint
  JAL zero, bb7
