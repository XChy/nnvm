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
  SD s3, 248(sp)
  SD ra, 256(sp)
  SD s2, 264(sp)
  SD s1, 272(sp)
  SD s0, 280(sp)
  ADDI s0, zero, 1
  SW s0, 240(sp)
  ADDI s0, zero, 2
  SW s0, 232(sp)
  ADDI s0, zero, 3
  SW s0, 232(sp)
  ADDI a0, zero, 3
  CALL putint
  LW s0, 232(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 240(sp)
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb1
bb1:
  LW s0, 240(sp)
  SLTI s1, s0, 5
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s0, zero, 0
  SW s0, 224(sp)
  ADDI s0, zero, 1
  ADDW s1, s0, zero
  SW s1, 224(sp)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb4
  JAL zero, bb5
bb3:
  LW s0, 240(sp)
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s0, zero, 4
  ADDI s1, zero, 2
  MULW s2, s0, s1
  LA s0, c
  ADD s1, s0, s2
  ADDI s0, zero, 1
  SW s0, 0(s1)
  ADDI t5, sp, 160
  ADD s0, t5, zero
  SW zero, 0(s0)
  ADDI s0, sp, 164
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 168
  SW zero, 0(s0)
  ADDI s0, sp, 172
  SW zero, 0(s0)
  ADDI s0, sp, 176
  SW zero, 0(s0)
  ADDI s0, sp, 180
  SW zero, 0(s0)
  ADDI s0, sp, 184
  SW zero, 0(s0)
  ADDI s0, sp, 188
  SW zero, 0(s0)
  ADDI s0, sp, 192
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 196
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 200
  SW zero, 0(s0)
  ADDI s0, sp, 204
  SW zero, 0(s0)
  ADDI s0, sp, 208
  SW zero, 0(s0)
  ADDI s0, sp, 212
  SW zero, 0(s0)
  ADDI s0, sp, 216
  SW zero, 0(s0)
  ADDI s0, sp, 220
  SW zero, 0(s0)
  ADDI s0, zero, 2
  SW s0, 152(sp)
  ADDI s0, zero, 4
  ADDI s1, zero, 2
  MULW s2, s0, s1
  LA s0, c
  ADD s1, s0, s2
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
  ADDI t6, sp, 8
  ADD s0, t6, zero
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
  SW zero, 0(s0)
  ADDI s0, sp, 44
  SW zero, 0(s0)
  ADDI s0, sp, 48
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 52
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 56
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, zero, 22
  SW s0, 0(sp)
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
  ADDI s0, zero, 4
  MULW s1, zero, s0
  LA s0, c
  ADD s2, s0, s1
  LW s0, 0(s2)
  ADD a0, s0, zero
  CALL putint
  ADDI s0, zero, 4
  ADDI s1, zero, 1
  MULW s2, s0, s1
  LA s0, c
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  ADDI s0, zero, 4
  ADDI s1, zero, 2
  MULW s2, s0, s1
  LA s0, c
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  ADDI s0, zero, 4
  ADDI s1, zero, 3
  MULW s2, s0, s1
  LA s0, c
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD s3, 248(sp)
  LD ra, 256(sp)
  LD s2, 264(sp)
  LD s1, 272(sp)
  LD s0, 280(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb8:
  LW s0, 0(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb9
  JAL zero, bb10
bb9:
  LW s0, 0(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 0(sp)
  ADDI s0, zero, 4
  MULW s1, s2, s0
  ADDIW s0, s1, 52
  ADDI t5, sp, 8
  ADD s1, t5, s0
  SW zero, 0(s1)
  JAL zero, bb8
bb10:
  LW s0, 152(sp)
  ADDI s1, zero, 20
  MULW s2, s0, s1
  ADDI t6, sp, 8
  ADD s0, t6, s2
  ADDI s1, zero, 20
  MULW s2, zero, s1
  ADD s1, s0, s2
  ADDI s0, zero, 4
  MULW s2, zero, s0
  ADD s0, s1, s2
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  LW s0, 152(sp)
  ADDI s1, zero, 20
  MULW s2, s0, s1
  ADDI t5, sp, 8
  ADD s0, t5, s2
  ADDI s1, zero, 20
  MULW s2, zero, s1
  ADD s1, s0, s2
  ADDI s0, zero, 4
  ADDI s2, zero, 1
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  LW s0, 152(sp)
  ADDI s1, zero, 20
  MULW s2, s0, s1
  ADDI t6, sp, 8
  ADD s0, t6, s2
  ADDI s1, zero, 20
  MULW s2, zero, s1
  ADD s1, s0, s2
  ADDI s0, zero, 4
  ADDI s2, zero, 2
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  JAL zero, bb7