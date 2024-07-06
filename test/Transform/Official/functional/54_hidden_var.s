.global main
.section .bss


.section .data
c:
.byte 6, 0, 0, 0, 7, 0, 0, 0, 8, 0, 0, 0, 9, 0, 0, 0
b:
.word 0x00000005
.section .text
main:
  ADDI sp, sp, -256
  SD s3, 208(sp)
  SD s2, 216(sp)
  SD ra, 224(sp)
  SD s1, 232(sp)
  SD s0, 240(sp)
  ADDI a0, zero, 3
  CALL putint
  ADDI a0, zero, 3
  CALL putint
  ADDI a0, zero, 1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb1
bb1:
  ADDI s0, zero, 1
  SLTI s1, s0, 5
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s0, zero, 0
  XORI s1, s0, 1
  SLTU s0, zero, s1
  BNE s0, zero, bb4
  JAL zero, bb5
bb3:
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
  ADDI s1, zero, 9
  SW s1, 0(s0)
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
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 180
  ADDI s1, zero, 3
  SW s1, 0(s0)
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
  LA s0, c
  ADDI s1, s0, 8
  LW s0, 0(s1)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb6
  JAL zero, bb7
bb4:
  JAL zero, bb3
bb5:
  JAL zero, bb1
bb6:
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
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 44
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 48
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, zero, 22
  JAL zero, bb8
bb7:
  ADDI a0, zero, 10
  CALL putch
  LA s0, b
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s0, c
  ADD s1, s0, zero
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  LA s0, c
  ADDI s1, s0, 4
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  LA s0, c
  ADDI s1, s0, 8
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
  LD s3, 208(sp)
  LD s2, 216(sp)
  LD ra, 224(sp)
  LD s1, 232(sp)
  LD s0, 240(sp)
  ADDI sp, sp, 256
  JALR zero, 0(ra)
bb8:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb9
  JAL zero, bb10
bb9:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADDIW s1, s2, 52
  ADDI t5, sp, 0
  ADD s2, t5, s1
  SW zero, 0(s2)
  ADD s0, s3, zero
  JAL zero, bb8
bb10:
  ADDI s0, sp, 40
  ADD s1, s0, zero
  ADD s0, s1, zero
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADDI s0, sp, 40
  ADD s1, s0, zero
  ADDI s0, s1, 4
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADDI s0, sp, 40
  ADD s1, s0, zero
  ADDI s0, s1, 8
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  JAL zero, bb7
