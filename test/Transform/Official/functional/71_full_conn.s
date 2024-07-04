.global main
.global model
.global relu_reg
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -176
  SD s3, 128(sp)
  SD ra, 136(sp)
  SD s2, 144(sp)
  SD s1, 152(sp)
  SD s0, 160(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 120(sp)
  JAL zero, bb1
bb1:
  LW s0, 120(sp)
  ADDI s1, zero, 0
  SLT s2, s1, s0
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s0, zero, 0
  SW s0, 8(sp)
  JAL zero, bb4
bb3:
  ADD a0, zero, zero
  LD s3, 128(sp)
  LD ra, 136(sp)
  LD s2, 144(sp)
  LD s1, 152(sp)
  LD s0, 160(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb4:
  LW s0, 8(sp)
  SLTI s1, s0, 5
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb5
  JAL zero, bb6
bb5:
  SW zero, 0(sp)
  JAL zero, bb7
bb6:
  ADDI a0, sp, 16
  ADD a0, a0, zero
  CALL model
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb10
  JAL zero, bb12
bb7:
  LW s0, 0(sp)
  SLTI s1, s0, 5
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb8
  JAL zero, bb9
bb8:
  LW s0, 8(sp)
  ADDI s1, zero, 20
  MULW s2, s0, s1
  ADDI t5, sp, 16
  ADD s0, t5, s2
  LW s1, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(s1)
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb7
bb9:
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb4
bb10:
  ADDI a0, zero, 99
  CALL putch
  ADDI a0, zero, 97
  CALL putch
  ADDI a0, zero, 116
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb11
bb11:
  LW s0, 120(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 120(sp)
  JAL zero, bb1
bb12:
  ADDI a0, zero, 100
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 103
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb11
model:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 20
  MUL s2, zero, s1
  ADD s1, s0, s2
  ADDI s2, zero, 4
  MUL s3, zero, s2
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 85
  MULW s3, s1, s2
  ADDI s1, zero, 20
  MUL s2, zero, s1
  ADD s1, s0, s2
  ADDI s2, zero, 4
  ADDI s4, zero, 1
  MULW s5, s2, s4
  ADD s2, s1, s5
  LW s1, 0(s2)
  ADDI s2, zero, 23
  MULW s4, s1, s2
  ADDW s1, s3, s4
  ADDI s2, zero, 20
  MUL s3, zero, s2
  ADD s2, s0, s3
  ADDI s3, zero, 4
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s2, s5
  LW s2, 0(s3)
  ADDI s3, zero, 82
  SUB s4, zero, s3
  MULW s3, s2, s4
  ADDW s2, s1, s3
  ADDI s1, zero, 20
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s3, zero, 4
  ADDI s4, zero, 3
  MULW s5, s3, s4
  ADD s3, s1, s5
  LW s1, 0(s3)
  ADDI s3, zero, 103
  SUB s4, zero, s3
  MULW s3, s1, s4
  ADDW s1, s2, s3
  ADDI s2, zero, 20
  MUL s3, zero, s2
  ADD s2, s0, s3
  ADDI s3, zero, 4
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s2, s5
  LW s2, 0(s3)
  ADDI s3, zero, 123
  SUB s4, zero, s3
  MULW s3, s2, s4
  ADDW s2, s1, s3
  ADDI s1, zero, 20
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s0, s4
  ADDI s3, zero, 4
  MUL s4, zero, s3
  ADD s3, s1, s4
  LW s1, 0(s3)
  ADDI s3, zero, 64
  MULW s4, s1, s3
  ADDW s1, s2, s4
  ADDI s2, zero, 20
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADD s2, s0, s4
  ADDI s3, zero, 4
  ADDI s4, zero, 1
  MULW s5, s3, s4
  ADD s3, s2, s5
  LW s2, 0(s3)
  ADDI s3, zero, 120
  SUB s4, zero, s3
  MULW s3, s2, s4
  ADDW s2, s1, s3
  ADDI s1, zero, 20
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s0, s4
  ADDI s3, zero, 4
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s1, s5
  LW s1, 0(s3)
  ADDI s3, zero, 50
  MULW s4, s1, s3
  ADDW s1, s2, s4
  ADDI s2, zero, 20
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADD s2, s0, s4
  ADDI s3, zero, 4
  ADDI s4, zero, 3
  MULW s5, s3, s4
  ADD s3, s2, s5
  LW s2, 0(s3)
  ADDI s3, zero, 59
  SUB s4, zero, s3
  MULW s3, s2, s4
  ADDW s2, s1, s3
  ADDI s1, zero, 20
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s0, s4
  ADDI s3, zero, 4
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s1, s5
  LW s1, 0(s3)
  ADDI s3, zero, 47
  MULW s4, s1, s3
  ADDW s1, s2, s4
  ADDI s2, zero, 20
  ADDI s3, zero, 2
  MULW s4, s2, s3
  ADD s2, s0, s4
  ADDI s3, zero, 4
  MUL s4, zero, s3
  ADD s3, s2, s4
  LW s2, 0(s3)
  ADDI s3, zero, 111
  SUB s4, zero, s3
  MULW s3, s2, s4
  ADDW s2, s1, s3
  ADDI s1, zero, 20
  ADDI s3, zero, 2
  MULW s4, s1, s3
  ADD s1, s0, s4
  ADDI s3, zero, 4
  ADDI s4, zero, 1
  MULW s5, s3, s4
  ADD s3, s1, s5
  LW s1, 0(s3)
  ADDI s3, zero, 67
  SUB s4, zero, s3
  MULW s3, s1, s4
  ADDW s1, s2, s3
  ADDI s2, zero, 20
  ADDI s3, zero, 2
  MULW s4, s2, s3
  ADD s2, s0, s4
  ADDI s3, zero, 4
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s2, s5
  LW s2, 0(s3)
  ADDI s3, zero, 106
  SUB s4, zero, s3
  MULW s3, s2, s4
  ADDW s2, s1, s3
  ADDI s1, zero, 20
  ADDI s3, zero, 2
  MULW s4, s1, s3
  ADD s1, s0, s4
  ADDI s3, zero, 4
  ADDI s4, zero, 3
  MULW s5, s3, s4
  ADD s3, s1, s5
  LW s1, 0(s3)
  ADDI s3, zero, 75
  SUB s4, zero, s3
  MULW s3, s1, s4
  ADDW s1, s2, s3
  ADDI s2, zero, 20
  ADDI s3, zero, 2
  MULW s4, s2, s3
  ADD s2, s0, s4
  ADDI s3, zero, 4
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s2, s5
  LW s2, 0(s3)
  ADDI s3, zero, 102
  SUB s4, zero, s3
  MULW s3, s2, s4
  ADDW s2, s1, s3
  ADDI s1, zero, 20
  ADDI s3, zero, 3
  MULW s4, s1, s3
  ADD s1, s0, s4
  ADDI s3, zero, 4
  MUL s4, zero, s3
  ADD s3, s1, s4
  LW s1, 0(s3)
  ADDI s3, zero, 34
  MULW s4, s1, s3
  ADDW s1, s2, s4
  ADDI s2, zero, 20
  ADDI s3, zero, 3
  MULW s4, s2, s3
  ADD s2, s0, s4
  ADDI s3, zero, 4
  ADDI s4, zero, 1
  MULW s5, s3, s4
  ADD s3, s2, s5
  LW s2, 0(s3)
  ADDI s3, zero, 39
  SUB s4, zero, s3
  MULW s3, s2, s4
  ADDW s2, s1, s3
  ADDI s1, zero, 20
  ADDI s3, zero, 3
  MULW s4, s1, s3
  ADD s1, s0, s4
  ADDI s3, zero, 4
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s1, s5
  LW s1, 0(s3)
  ADDI s3, zero, 65
  MULW s4, s1, s3
  ADDW s1, s2, s4
  ADDI s2, zero, 20
  ADDI s3, zero, 3
  MULW s4, s2, s3
  ADD s2, s0, s4
  ADDI s3, zero, 4
  ADDI s4, zero, 3
  MULW s5, s3, s4
  ADD s3, s2, s5
  LW s2, 0(s3)
  ADDI s3, zero, 47
  MULW s4, s2, s3
  ADDW s2, s1, s4
  ADDI s1, zero, 20
  ADDI s3, zero, 3
  MULW s4, s1, s3
  ADD s1, s0, s4
  ADDI s3, zero, 4
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s1, s5
  LW s1, 0(s3)
  ADDI s3, zero, 113
  MULW s4, s1, s3
  ADDW s1, s2, s4
  ADDI s2, zero, 20
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s0, s4
  ADDI s3, zero, 4
  MUL s4, zero, s3
  ADD s3, s2, s4
  LW s2, 0(s3)
  ADDI s3, zero, 110
  MULW s4, s2, s3
  ADDW s2, s1, s4
  ADDI s1, zero, 20
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s1, s0, s4
  ADDI s3, zero, 4
  ADDI s4, zero, 1
  MULW s5, s3, s4
  ADD s3, s1, s5
  LW s1, 0(s3)
  ADDI s3, zero, 47
  MULW s4, s1, s3
  ADDW s1, s2, s4
  ADDI s2, zero, 20
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s0, s4
  ADDI s3, zero, 4
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s2, s5
  LW s2, 0(s3)
  ADDI s3, zero, 4
  SUB s4, zero, s3
  MULW s3, s2, s4
  ADDW s2, s1, s3
  ADDI s1, zero, 20
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s1, s0, s4
  ADDI s3, zero, 4
  ADDI s4, zero, 3
  MULW s5, s3, s4
  ADD s3, s1, s5
  LW s1, 0(s3)
  ADDI s3, zero, 80
  MULW s4, s1, s3
  ADDW s1, s2, s4
  ADDI s2, zero, 20
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s0, s4
  ADDI s3, zero, 4
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s2, s5
  LW s2, 0(s3)
  ADDI s3, zero, 46
  MULW s4, s2, s3
  ADDW s2, s1, s4
  ADD a0, s2, zero
  CALL relu_reg
  ADD s1, a0, zero
  ADDI s2, zero, 39
  MULW s3, s1, s2
  ADDI s1, zero, 20
  MUL s2, zero, s1
  ADD s1, s0, s2
  ADDI s2, zero, 4
  MUL s4, zero, s2
  ADD s2, s1, s4
  LW s1, 0(s2)
  ADDI s2, zero, 106
  SUB s4, zero, s2
  MULW s2, s1, s4
  ADDI s1, zero, 20
  MUL s4, zero, s1
  ADD s1, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 126
  MULW s5, s1, s4
  ADDW s1, s2, s5
  ADDI s2, zero, 20
  MUL s4, zero, s2
  ADD s2, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 18
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s1, s4
  ADDI s1, zero, 20
  MUL s4, zero, s1
  ADD s1, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 31
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s2, s4
  ADDI s2, zero, 20
  MUL s4, zero, s2
  ADD s2, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 8
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s1, s4
  ADDI s1, zero, 20
  ADDI s4, zero, 1
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s1, s5
  LW s1, 0(s4)
  ADDI s4, zero, 47
  MULW s5, s1, s4
  ADDW s1, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 1
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 4
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s1, s4
  ADDI s1, zero, 20
  ADDI s4, zero, 1
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 67
  MULW s5, s1, s4
  ADDW s1, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 1
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 94
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s1, s4
  ADDI s1, zero, 20
  ADDI s4, zero, 1
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 121
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s2, s4
  ADDI s2, zero, 20
  ADDI s4, zero, 2
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s2, s5
  LW s2, 0(s4)
  ADDI s4, zero, 7
  MULW s5, s2, s4
  ADDW s2, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 2
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 21
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s2, s4
  ADDI s2, zero, 20
  ADDI s4, zero, 2
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 60
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s1, s4
  ADDI s1, zero, 20
  ADDI s4, zero, 2
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 43
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s2, s4
  ADDI s2, zero, 20
  ADDI s4, zero, 2
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 105
  MULW s5, s2, s4
  ADDW s2, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 3
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s1, s5
  LW s1, 0(s4)
  ADDI s4, zero, 42
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s2, s4
  ADDI s2, zero, 20
  ADDI s4, zero, 3
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 87
  MULW s5, s2, s4
  ADDW s2, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 3
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 29
  MULW s5, s1, s4
  ADDW s1, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 3
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 106
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s1, s4
  ADDI s1, zero, 20
  ADDI s4, zero, 3
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 31
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s2, s4
  ADDI s2, zero, 20
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s2, s5
  LW s2, 0(s4)
  ADDI s4, zero, 110
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s1, s4
  ADDI s1, zero, 20
  ADDI s4, zero, 4
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 100
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s2, s4
  ADDI s2, zero, 20
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 22
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s1, s4
  ADDI s1, zero, 20
  ADDI s4, zero, 4
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 75
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s2, s4
  ADDI s2, zero, 20
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 125
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s1, s4
  ADD a0, s2, zero
  CALL relu_reg
  ADD s1, a0, zero
  ADDI s2, zero, 77
  MULW s4, s1, s2
  ADDW s1, s3, s4
  ADDI s2, zero, 20
  MUL s3, zero, s2
  ADD s2, s0, s3
  ADDI s3, zero, 4
  MUL s4, zero, s3
  ADD s3, s2, s4
  LW s2, 0(s3)
  ADDI s3, zero, 26
  MULW s4, s2, s3
  ADDI s2, zero, 20
  MUL s3, zero, s2
  ADD s2, s0, s3
  ADDI s3, zero, 4
  ADDI s5, zero, 1
  MULW s6, s3, s5
  ADD s3, s2, s6
  LW s2, 0(s3)
  ADDI s3, zero, 76
  MULW s5, s2, s3
  ADDW s2, s4, s5
  ADDI s3, zero, 20
  MUL s4, zero, s3
  ADD s3, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 70
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s2, s4
  ADDI s2, zero, 20
  MUL s4, zero, s2
  ADD s2, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 29
  MULW s5, s2, s4
  ADDW s2, s3, s5
  ADDI s3, zero, 20
  MUL s4, zero, s3
  ADD s3, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 95
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s2, s4
  ADDI s2, zero, 20
  ADDI s4, zero, 1
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s2, s5
  LW s2, 0(s4)
  ADDI s4, zero, 96
  MULW s5, s2, s4
  ADDW s2, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 1
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 52
  MULW s5, s3, s4
  ADDW s3, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 1
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 68
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 1
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 5
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s2, s4
  ADDI s2, zero, 20
  ADDI s4, zero, 1
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 34
  MULW s5, s2, s4
  ADDW s2, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s3, s5
  LW s3, 0(s4)
  ADDI s4, zero, 34
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s2, s4
  ADDI s2, zero, 20
  ADDI s4, zero, 2
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 102
  MULW s5, s2, s4
  ADDW s2, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 6
  MULW s5, s3, s4
  ADDW s3, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 2
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 38
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 27
  MULW s5, s3, s4
  ADDW s3, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 3
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s2, s5
  LW s2, 0(s4)
  ADDI s4, zero, 110
  MULW s5, s2, s4
  ADDW s2, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 3
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 116
  MULW s5, s3, s4
  ADDW s3, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 3
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 39
  MULW s5, s2, s4
  ADDW s2, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 3
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 63
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s2, s4
  ADDI s2, zero, 20
  ADDI s4, zero, 3
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 99
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s3, s5
  LW s3, 0(s4)
  ADDI s4, zero, 65
  MULW s5, s3, s4
  ADDW s3, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 120
  MULW s5, s2, s4
  ADDW s2, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 39
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s2, s4
  ADDI s2, zero, 20
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 6
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 94
  MULW s5, s3, s4
  ADDW s3, s2, s5
  ADD a0, s3, zero
  CALL relu_reg
  ADD s2, a0, zero
  ADDI s3, zero, 127
  MULW s4, s2, s3
  ADDW s2, s1, s4
  ADDI s1, zero, 20
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s3, zero, 4
  MUL s4, zero, s3
  ADD s3, s1, s4
  LW s1, 0(s3)
  ADDI s3, zero, 23
  SUB s4, zero, s3
  MULW s3, s1, s4
  ADDI s1, zero, 20
  MUL s4, zero, s1
  ADD s1, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 63
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s3, s4
  ADDI s3, zero, 20
  MUL s4, zero, s3
  ADD s3, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 49
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADDI s1, zero, 20
  MUL s4, zero, s1
  ADD s1, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 50
  MULW s5, s1, s4
  ADDW s1, s3, s5
  ADDI s3, zero, 20
  MUL s4, zero, s3
  ADD s3, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 72
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 1
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s1, s5
  LW s1, 0(s4)
  ADDI s4, zero, 85
  MULW s5, s1, s4
  ADDW s1, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 1
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 30
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s1, s4
  ADDI s1, zero, 20
  ADDI s4, zero, 1
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 12
  MULW s5, s1, s4
  ADDW s1, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 1
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 125
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 1
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 117
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s3, s5
  LW s3, 0(s4)
  ADDI s4, zero, 65
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s1, s4
  ADDI s1, zero, 20
  ADDI s4, zero, 2
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 67
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 125
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 2
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 110
  MULW s5, s1, s4
  ADDW s1, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 31
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s1, s4
  ADDI s1, zero, 20
  ADDI s4, zero, 3
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s1, s5
  LW s1, 0(s4)
  ADDI s4, zero, 123
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 3
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 83
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 3
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 122
  MULW s5, s1, s4
  ADDW s1, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 3
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 11
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 3
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 23
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s3, s5
  LW s3, 0(s4)
  ADDI s4, zero, 47
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s1, s4
  ADDI s1, zero, 20
  ADDI s4, zero, 4
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 32
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 117
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s1, s4
  ADDI s1, zero, 20
  ADDI s4, zero, 4
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 95
  MULW s5, s1, s4
  ADDW s1, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 118
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADD a0, s3, zero
  CALL relu_reg
  ADD s1, a0, zero
  ADDI s3, zero, 106
  SUB s4, zero, s3
  MULW s3, s1, s4
  ADDW s1, s2, s3
  ADDI s2, zero, 20
  MUL s3, zero, s2
  ADD s2, s0, s3
  ADDI s3, zero, 4
  MUL s4, zero, s3
  ADD s3, s2, s4
  LW s2, 0(s3)
  ADDI s3, zero, 8
  MULW s4, s2, s3
  ADDI s2, zero, 20
  MUL s3, zero, s2
  ADD s2, s0, s3
  ADDI s3, zero, 4
  ADDI s5, zero, 1
  MULW s6, s3, s5
  ADD s3, s2, s6
  LW s2, 0(s3)
  ADDI s3, zero, 82
  MULW s5, s2, s3
  ADDW s2, s4, s5
  ADDI s3, zero, 20
  MUL s4, zero, s3
  ADD s3, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 104
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s2, s4
  ADDI s2, zero, 20
  MUL s4, zero, s2
  ADD s2, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 101
  MULW s5, s2, s4
  ADDW s2, s3, s5
  ADDI s3, zero, 20
  MUL s4, zero, s3
  ADD s3, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 116
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s2, s4
  ADDI s2, zero, 20
  ADDI s4, zero, 1
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s2, s5
  LW s2, 0(s4)
  ADDI s4, zero, 63
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 1
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 16
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s2, s4
  ADDI s2, zero, 20
  ADDI s4, zero, 1
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 70
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 1
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 125
  MULW s5, s3, s4
  ADDW s3, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 1
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 75
  MULW s5, s2, s4
  ADDW s2, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s3, s5
  LW s3, 0(s4)
  ADDI s4, zero, 66
  MULW s5, s3, s4
  ADDW s3, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 2
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 96
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 101
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s2, s4
  ADDI s2, zero, 20
  ADDI s4, zero, 2
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 114
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 59
  MULW s5, s3, s4
  ADDW s3, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 3
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s2, s5
  LW s2, 0(s4)
  ADDI s4, zero, 12
  MULW s5, s2, s4
  ADDW s2, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 3
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 5
  MULW s5, s3, s4
  ADDW s3, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 3
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 95
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 3
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 116
  MULW s5, s3, s4
  ADDW s3, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 3
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 93
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s3, s5
  LW s3, 0(s4)
  ADDI s4, zero, 15
  MULW s5, s3, s4
  ADDW s3, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 79
  MULW s5, s2, s4
  ADDW s2, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 3
  MULW s5, s3, s4
  ADDW s3, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 49
  MULW s5, s2, s4
  ADDW s2, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 124
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s2, s4
  ADD a0, s3, zero
  CALL relu_reg
  ADD s2, a0, zero
  ADDI s3, zero, 3
  SUB s4, zero, s3
  MULW s3, s2, s4
  ADDW s2, s1, s3
  ADDI s1, zero, 20
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s3, zero, 4
  MUL s4, zero, s3
  ADD s3, s1, s4
  LW s1, 0(s3)
  ADDI s3, zero, 81
  MULW s4, s1, s3
  ADDI s1, zero, 20
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s3, zero, 4
  ADDI s5, zero, 1
  MULW s6, s3, s5
  ADD s3, s1, s6
  LW s1, 0(s3)
  ADDI s3, zero, 68
  MULW s5, s1, s3
  ADDW s1, s4, s5
  ADDI s3, zero, 20
  MUL s4, zero, s3
  ADD s3, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 102
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s1, s4
  ADDI s1, zero, 20
  MUL s4, zero, s1
  ADD s1, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 74
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s3, s4
  ADDI s3, zero, 20
  MUL s4, zero, s3
  ADD s3, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 121
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 1
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s1, s5
  LW s1, 0(s4)
  ADDI s4, zero, 15
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 1
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 55
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 1
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 101
  MULW s5, s1, s4
  ADDW s1, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 1
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 13
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s1, s4
  ADDI s1, zero, 20
  ADDI s4, zero, 1
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 62
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s3, s5
  LW s3, 0(s4)
  ADDI s4, zero, 64
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 2
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 114
  MULW s5, s1, s4
  ADDW s1, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 38
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 2
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 21
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 112
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 3
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s1, s5
  LW s1, 0(s4)
  ADDI s4, zero, 114
  MULW s5, s1, s4
  ADDW s1, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 3
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 112
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 3
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 10
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 3
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 16
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s1, s4
  ADDI s1, zero, 20
  ADDI s4, zero, 3
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 50
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s3, s5
  LW s3, 0(s4)
  ADDI s4, zero, 112
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s1, s4
  ADDI s1, zero, 20
  ADDI s4, zero, 4
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 116
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 54
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s1, s4
  ADDI s1, zero, 20
  ADDI s4, zero, 4
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 82
  MULW s5, s1, s4
  ADDW s1, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 72
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s1, s4
  ADD a0, s3, zero
  CALL relu_reg
  ADD s1, a0, zero
  ADDI s3, zero, 32
  MULW s4, s1, s3
  ADDW s1, s2, s4
  ADDI s2, zero, 20
  MUL s3, zero, s2
  ADD s2, s0, s3
  ADDI s3, zero, 4
  MUL s4, zero, s3
  ADD s3, s2, s4
  LW s2, 0(s3)
  ADDI s3, zero, 15
  MULW s4, s2, s3
  ADDI s2, zero, 20
  MUL s3, zero, s2
  ADD s2, s0, s3
  ADDI s3, zero, 4
  ADDI s5, zero, 1
  MULW s6, s3, s5
  ADD s3, s2, s6
  LW s2, 0(s3)
  ADDI s3, zero, 77
  SUB s5, zero, s3
  MULW s3, s2, s5
  ADDW s2, s4, s3
  ADDI s3, zero, 20
  MUL s4, zero, s3
  ADD s3, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 66
  MULW s5, s3, s4
  ADDW s3, s2, s5
  ADDI s2, zero, 20
  MUL s4, zero, s2
  ADD s2, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 90
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s3, s4
  ADDI s3, zero, 20
  MUL s4, zero, s3
  ADD s3, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 6
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s2, s4
  ADDI s2, zero, 20
  ADDI s4, zero, 1
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s2, s5
  LW s2, 0(s4)
  ADDI s4, zero, 30
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 1
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 8
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s2, s4
  ADDI s2, zero, 20
  ADDI s4, zero, 1
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 81
  MULW s5, s2, s4
  ADDW s2, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 1
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADDW s3, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 1
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 110
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s3, s5
  LW s3, 0(s4)
  ADDI s4, zero, 95
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s2, s4
  ADDI s2, zero, 20
  ADDI s4, zero, 2
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 59
  MULW s5, s2, s4
  ADDW s2, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 52
  MULW s5, s3, s4
  ADDW s3, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 2
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 15
  MULW s5, s2, s4
  ADDW s2, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 55
  MULW s5, s3, s4
  ADDW s3, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 3
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s2, s5
  LW s2, 0(s4)
  ADDI s4, zero, 33
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 3
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 14
  MULW s5, s3, s4
  ADDW s3, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 3
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 58
  MULW s5, s2, s4
  ADDW s2, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 3
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 67
  MULW s5, s3, s4
  ADDW s3, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 3
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 86
  MULW s5, s2, s4
  ADDW s2, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s3, s5
  LW s3, 0(s4)
  ADDI s4, zero, 79
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s2, s4
  ADDI s2, zero, 20
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 48
  MULW s5, s2, s4
  ADDW s2, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 13
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s2, s4
  ADDI s2, zero, 20
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 15
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 66
  MULW s5, s3, s4
  ADDW s3, s2, s5
  ADD a0, s3, zero
  CALL relu_reg
  ADD s2, a0, zero
  ADDI s3, zero, 95
  SUB s4, zero, s3
  MULW s3, s2, s4
  ADDW s2, s1, s3
  ADDI s1, zero, 20
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s3, zero, 4
  MUL s4, zero, s3
  ADD s3, s1, s4
  LW s1, 0(s3)
  ADDI s3, zero, 33
  MULW s4, s1, s3
  ADDI s1, zero, 20
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s3, zero, 4
  ADDI s5, zero, 1
  MULW s6, s3, s5
  ADD s3, s1, s6
  LW s1, 0(s3)
  ADDI s3, zero, 82
  MULW s5, s1, s3
  ADDW s1, s4, s5
  ADDI s3, zero, 20
  MUL s4, zero, s3
  ADD s3, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 67
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADDI s1, zero, 20
  MUL s4, zero, s1
  ADD s1, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 30
  MULW s5, s1, s4
  ADDW s1, s3, s5
  ADDI s3, zero, 20
  MUL s4, zero, s3
  ADD s3, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 2
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s1, s4
  ADDI s1, zero, 20
  ADDI s4, zero, 1
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s1, s5
  LW s1, 0(s4)
  ADDI s4, zero, 65
  MULW s5, s1, s4
  ADDW s1, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 1
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 120
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 1
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 13
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 1
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 18
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 1
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 5
  MULW s5, s1, s4
  ADDW s1, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s3, s5
  LW s3, 0(s4)
  ADDI s4, zero, 104
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 2
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 119
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 7
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s1, s4
  ADDI s1, zero, 20
  ADDI s4, zero, 2
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 71
  MULW s5, s1, s4
  ADDW s1, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 107
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 3
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s1, s5
  LW s1, 0(s4)
  ADDI s4, zero, 24
  MULW s5, s1, s4
  ADDW s1, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 3
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 82
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 3
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 96
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 3
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 104
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s1, s4
  ADDI s1, zero, 20
  ADDI s4, zero, 3
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 121
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s3, s5
  LW s3, 0(s4)
  ADDI s4, zero, 65
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 4
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 97
  MULW s5, s1, s4
  ADDW s1, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 83
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 4
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 46
  MULW s5, s1, s4
  ADDW s1, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 84
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s1, s4
  ADD a0, s3, zero
  CALL relu_reg
  ADD s1, a0, zero
  ADDI s3, zero, 50
  SUB s4, zero, s3
  MULW s3, s1, s4
  ADDW s1, s2, s3
  ADDI s2, zero, 20
  MUL s3, zero, s2
  ADD s2, s0, s3
  ADDI s3, zero, 4
  MUL s4, zero, s3
  ADD s3, s2, s4
  LW s2, 0(s3)
  ADDI s3, zero, 29
  SUB s4, zero, s3
  MULW s3, s2, s4
  ADDI s2, zero, 20
  MUL s4, zero, s2
  ADD s2, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 7
  MULW s5, s2, s4
  ADDW s2, s3, s5
  ADDI s3, zero, 20
  MUL s4, zero, s3
  ADD s3, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 70
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s2, s4
  ADDI s2, zero, 20
  MUL s4, zero, s2
  ADD s2, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 38
  MULW s5, s2, s4
  ADDW s2, s3, s5
  ADDI s3, zero, 20
  MUL s4, zero, s3
  ADD s3, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 90
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s2, s4
  ADDI s2, zero, 20
  ADDI s4, zero, 1
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s2, s5
  LW s2, 0(s4)
  ADDI s4, zero, 15
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 1
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 32
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s2, s4
  ADDI s2, zero, 20
  ADDI s4, zero, 1
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 37
  MULW s5, s2, s4
  ADDW s2, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 1
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 36
  MULW s5, s3, s4
  ADDW s3, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 1
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 62
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s3, s5
  LW s3, 0(s4)
  ADDI s4, zero, 125
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s2, s4
  ADDI s2, zero, 20
  ADDI s4, zero, 2
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 46
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 70
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s2, s4
  ADDI s2, zero, 20
  ADDI s4, zero, 2
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 37
  MULW s5, s2, s4
  ADDW s2, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 73
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s2, s4
  ADDI s2, zero, 20
  ADDI s4, zero, 3
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s2, s5
  LW s2, 0(s4)
  ADDI s4, zero, 34
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 3
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 87
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s2, s4
  ADDI s2, zero, 20
  ADDI s4, zero, 3
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 75
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 3
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 71
  MULW s5, s3, s4
  ADDW s3, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 3
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 77
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s3, s5
  LW s3, 0(s4)
  ADDI s4, zero, 53
  MULW s5, s3, s4
  ADDW s3, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 37
  MULW s5, s2, s4
  ADDW s2, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 103
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s2, s4
  ADDI s2, zero, 20
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, 13
  SUB s5, zero, s4
  MULW s4, s2, s5
  ADDW s2, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 114
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s2, s4
  ADD a0, s3, zero
  CALL relu_reg
  ADD s2, a0, zero
  ADDI s3, zero, 23
  SUB s4, zero, s3
  MULW s3, s2, s4
  ADDW s2, s1, s3
  ADDI s1, zero, 20
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s3, zero, 4
  MUL s4, zero, s3
  ADD s3, s1, s4
  LW s1, 0(s3)
  ADDI s3, zero, 67
  MULW s4, s1, s3
  ADDI s1, zero, 20
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s3, zero, 4
  ADDI s5, zero, 1
  MULW s6, s3, s5
  ADD s3, s1, s6
  LW s1, 0(s3)
  ADDI s3, zero, 42
  MULW s5, s1, s3
  ADDW s1, s4, s5
  ADDI s3, zero, 20
  MUL s4, zero, s3
  ADD s3, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 41
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADDI s1, zero, 20
  MUL s4, zero, s1
  ADD s1, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 123
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s3, s4
  ADDI s3, zero, 20
  MUL s4, zero, s3
  ADD s3, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 92
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s1, s4
  ADDI s1, zero, 20
  ADDI s4, zero, 1
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s1, s5
  LW s1, 0(s4)
  ADDI s4, zero, 10
  MULW s5, s1, s4
  ADDW s1, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 1
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 77
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s1, s4
  ADDI s1, zero, 20
  ADDI s4, zero, 1
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 75
  MULW s5, s1, s4
  ADDW s1, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 1
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 96
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 1
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 51
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s3, s5
  LW s3, 0(s4)
  ADDI s4, zero, 109
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 2
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 74
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 7
  SUB s5, zero, s4
  MULW s4, s3, s5
  ADDW s3, s1, s4
  ADDI s1, zero, 20
  ADDI s4, zero, 2
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 122
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 67
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 3
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s1, s5
  LW s1, 0(s4)
  ADDI s4, zero, 47
  MULW s5, s1, s4
  ADDW s1, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 3
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 22
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 3
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 68
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 3
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 38
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 3
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 29
  MULW s5, s1, s4
  ADDW s1, s3, s5
  ADDI s3, zero, 20
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s3, s5
  LW s3, 0(s4)
  ADDI s4, zero, 115
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 4
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 121
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDI s4, zero, 36
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 4
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, 49
  SUB s5, zero, s4
  MULW s4, s1, s5
  ADDW s1, s3, s4
  ADDI s3, zero, 20
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  ADDI s0, zero, 4
  ADDI s4, zero, 4
  MULW s5, s0, s4
  ADD s0, s3, s5
  LW s3, 0(s0)
  ADDI s0, zero, 85
  MULW s4, s3, s0
  ADDW s0, s1, s4
  ADD a0, s0, zero
  CALL relu_reg
  ADD s0, a0, zero
  ADDI s1, zero, 46
  MULW s3, s0, s1
  ADDW s0, s2, s3
  SLT s1, zero, s0
  BNE s1, zero, bb14
  JAL zero, bb15
bb14:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb15:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
relu_reg:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  SW s0, 0(sp)
  ADDI s1, zero, 127
  SLT s2, s1, s0
  BNE s2, zero, bb17
  JAL zero, bb18
bb17:
  ADDI a0, zero, 127
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb18:
  LW s0, 0(sp)
  SLT s1, s0, zero
  BNE s1, zero, bb19
  JAL zero, bb20
bb19:
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb20:
  LW s0, 0(sp)
  ADD a0, s0, zero
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
