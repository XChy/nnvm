.global main
.global model
.global relu_reg
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -208
  SD s11, 104(sp)
  SD s10, 112(sp)
  SD s0, 120(sp)
  SD s5, 128(sp)
  SD s7, 136(sp)
  SD s1, 144(sp)
  SD s6, 152(sp)
  SD s2, 160(sp)
  SD s3, 168(sp)
  SD s4, 176(sp)
  SD ra, 184(sp)
  SD s8, 192(sp)
  SD s9, 200(sp)
  CALL getint
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb1
bb1:
  ADD s0, s2, zero
  ADD s3, s1, zero
  ADDI s4, zero, 0
  SLT s5, s4, s0
  XOR s4, s5, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb2
  JAL zero, bb3
bb2:
  ADD s4, s3, zero
  ADD s3, zero, zero
  JAL zero, bb4
bb3:
  ADD a0, zero, zero
  LD s11, 104(sp)
  LD s10, 112(sp)
  LD s0, 120(sp)
  LD s5, 128(sp)
  LD s7, 136(sp)
  LD s1, 144(sp)
  LD s6, 152(sp)
  LD s2, 160(sp)
  LD s3, 168(sp)
  LD s4, 176(sp)
  LD ra, 184(sp)
  LD s8, 192(sp)
  LD s9, 200(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb4:
  ADD s5, s3, zero
  ADD s6, s4, zero
  SLTI s7, s5, 5
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb5
  JAL zero, bb6
bb5:
  ADD s7, zero, zero
  JAL zero, bb7
bb6:
  ADDI a0, sp, 0
  ADD a0, a0, zero
  CALL model
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb10
  JAL zero, bb12
bb7:
  ADD s8, s7, zero
  SLTI s9, s8, 5
  XOR s10, s9, zero
  SLTU s9, zero, s10
  BNE s9, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s9, zero, 20
  MULW s10, s5, s9
  ADDI t5, sp, 0
  ADD s9, t5, s10
  ADDI s10, zero, 4
  MULW s11, s8, s10
  ADD s10, s9, s11
  CALL getint
  ADD s9, a0, zero
  SW s9, 0(s10)
  ADDIW s9, s8, 1
  ADD s7, s9, zero
  JAL zero, bb7
bb9:
  ADDIW s7, s5, 1
  ADD s4, s8, zero
  ADD s3, s7, zero
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
  ADDI s3, zero, 1
  SUBW s4, s0, s3
  ADD s1, s6, zero
  ADD s2, s4, zero
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
  ADDI s3, zero, -82
  MULW s4, s2, s3
  ADDW s2, s1, s4
  ADDI s1, zero, 20
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s3, zero, 4
  ADDI s4, zero, 3
  MULW s5, s3, s4
  ADD s3, s1, s5
  LW s1, 0(s3)
  ADDI s3, zero, -103
  MULW s4, s1, s3
  ADDW s1, s2, s4
  ADDI s2, zero, 20
  MUL s3, zero, s2
  ADD s2, s0, s3
  ADDI s3, zero, 4
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s2, s5
  LW s2, 0(s3)
  ADDI s3, zero, -123
  MULW s4, s2, s3
  ADDW s2, s1, s4
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
  ADDI s3, zero, -120
  MULW s4, s2, s3
  ADDW s2, s1, s4
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
  ADDI s3, zero, -59
  MULW s4, s2, s3
  ADDW s2, s1, s4
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
  ADDI s3, zero, -111
  MULW s4, s2, s3
  ADDW s2, s1, s4
  ADDI s1, zero, 20
  ADDI s3, zero, 2
  MULW s4, s1, s3
  ADD s1, s0, s4
  ADDI s3, zero, 4
  ADDI s4, zero, 1
  MULW s5, s3, s4
  ADD s3, s1, s5
  LW s1, 0(s3)
  ADDI s3, zero, -67
  MULW s4, s1, s3
  ADDW s1, s2, s4
  ADDI s2, zero, 20
  ADDI s3, zero, 2
  MULW s4, s2, s3
  ADD s2, s0, s4
  ADDI s3, zero, 4
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADD s3, s2, s5
  LW s2, 0(s3)
  ADDI s3, zero, -106
  MULW s4, s2, s3
  ADDW s2, s1, s4
  ADDI s1, zero, 20
  ADDI s3, zero, 2
  MULW s4, s1, s3
  ADD s1, s0, s4
  ADDI s3, zero, 4
  ADDI s4, zero, 3
  MULW s5, s3, s4
  ADD s3, s1, s5
  LW s1, 0(s3)
  ADDI s3, zero, -75
  MULW s4, s1, s3
  ADDW s1, s2, s4
  ADDI s2, zero, 20
  ADDI s3, zero, 2
  MULW s4, s2, s3
  ADD s2, s0, s4
  ADDI s3, zero, 4
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s2, s5
  LW s2, 0(s3)
  ADDI s3, zero, -102
  MULW s4, s2, s3
  ADDW s2, s1, s4
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
  ADDI s3, zero, -39
  MULW s4, s2, s3
  ADDW s2, s1, s4
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
  ADDI s3, zero, -4
  MULW s4, s2, s3
  ADDW s2, s1, s4
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
  ADDI s2, zero, -106
  MULW s4, s1, s2
  ADDI s1, zero, 20
  MUL s2, zero, s1
  ADD s1, s0, s2
  ADDI s2, zero, 4
  ADDI s5, zero, 1
  MULW s6, s2, s5
  ADD s2, s1, s6
  LW s1, 0(s2)
  ADDI s2, zero, 126
  MULW s5, s1, s2
  ADDW s1, s4, s5
  ADDI s2, zero, 20
  MUL s4, zero, s2
  ADD s2, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, -18
  MULW s5, s2, s4
  ADDW s2, s1, s5
  ADDI s1, zero, 20
  MUL s4, zero, s1
  ADD s1, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, -31
  MULW s5, s1, s4
  ADDW s1, s2, s5
  ADDI s2, zero, 20
  MUL s4, zero, s2
  ADD s2, s0, s4
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, -8
  MULW s5, s2, s4
  ADDW s2, s1, s5
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
  ADDI s4, zero, -4
  MULW s5, s2, s4
  ADDW s2, s1, s5
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
  ADDI s4, zero, -94
  MULW s5, s2, s4
  ADDW s2, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 1
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, -121
  MULW s5, s1, s4
  ADDW s1, s2, s5
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
  ADDI s4, zero, -21
  MULW s5, s1, s4
  ADDW s1, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 2
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, -60
  MULW s5, s2, s4
  ADDW s2, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 2
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, -43
  MULW s5, s1, s4
  ADDW s1, s2, s5
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
  ADDI s4, zero, -42
  MULW s5, s1, s4
  ADDW s1, s2, s5
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
  ADDI s4, zero, -106
  MULW s5, s2, s4
  ADDW s2, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 3
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, -31
  MULW s5, s1, s4
  ADDW s1, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s2, s5
  LW s2, 0(s4)
  ADDI s4, zero, -110
  MULW s5, s2, s4
  ADDW s2, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 4
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 1
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, -100
  MULW s5, s1, s4
  ADDW s1, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, -22
  MULW s5, s2, s4
  ADDW s2, s1, s5
  ADDI s1, zero, 20
  ADDI s4, zero, 4
  MULW s5, s1, s4
  ADD s1, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 3
  MULW s6, s4, s5
  ADD s4, s1, s6
  LW s1, 0(s4)
  ADDI s4, zero, -75
  MULW s5, s1, s4
  ADDW s1, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDI s4, zero, -125
  MULW s5, s2, s4
  ADDW s2, s1, s5
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
  ADDI s4, zero, -70
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
  ADDI s4, zero, -95
  MULW s5, s3, s4
  ADDW s3, s2, s5
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
  ADDI s4, zero, -68
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
  ADDI s4, zero, -5
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
  ADDI s4, zero, -34
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
  ADDI s4, zero, -38
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
  ADDI s4, zero, -63
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
  ADDI s4, zero, -99
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
  ADDI s4, zero, -39
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
  ADDI s4, zero, -6
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
  ADDI s3, zero, -23
  MULW s4, s1, s3
  ADDI s1, zero, 20
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s3, zero, 4
  ADDI s5, zero, 1
  MULW s6, s3, s5
  ADD s3, s1, s6
  LW s1, 0(s3)
  ADDI s3, zero, -63
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
  ADDI s4, zero, -30
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
  ADDI s4, zero, -117
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
  ADDI s4, zero, -65
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
  ADDI s4, zero, -67
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
  ADDI s4, zero, -31
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
  ADDI s4, zero, -123
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
  ADDI s4, zero, -23
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
  ADDI s4, zero, -47
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
  ADDI s4, zero, -32
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
  ADDI s4, zero, -117
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
  ADDI s3, zero, -106
  MULW s4, s1, s3
  ADDW s1, s2, s4
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
  ADDI s4, zero, -104
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
  ADDI s4, zero, -116
  MULW s5, s3, s4
  ADDW s3, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 1
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s2, s5
  LW s2, 0(s4)
  ADDI s4, zero, -63
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
  ADDI s4, zero, -16
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
  ADDI s4, zero, -70
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
  ADDI s4, zero, -96
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
  ADDI s4, zero, -101
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
  ADDI s4, zero, -114
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
  ADDI s4, zero, -95
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
  ADDI s4, zero, -93
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
  ADDI s4, zero, -124
  MULW s5, s3, s4
  ADDW s3, s2, s5
  ADD a0, s3, zero
  CALL relu_reg
  ADD s2, a0, zero
  ADDI s3, zero, -3
  MULW s4, s2, s3
  ADDW s2, s1, s4
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
  ADDI s4, zero, -102
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
  ADDI s4, zero, -74
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
  ADDI s4, zero, -15
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
  ADDI s4, zero, -13
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
  ADDI s4, zero, -62
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
  ADDI s4, zero, -21
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
  ADDI s4, zero, -10
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
  ADDI s4, zero, -16
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
  ADDI s4, zero, -50
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
  ADDI s4, zero, -112
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
  ADDI s4, zero, -116
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
  ADDI s4, zero, -54
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
  ADDI s4, zero, -72
  MULW s5, s3, s4
  ADDW s3, s1, s5
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
  ADDI s3, zero, -77
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
  ADDI s4, zero, -90
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
  ADDI s4, zero, -6
  MULW s5, s3, s4
  ADDW s3, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 1
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s2, s5
  LW s2, 0(s4)
  ADDI s4, zero, -30
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
  ADDI s4, zero, -8
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
  ADDI s4, zero, -110
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
  ADDI s4, zero, -95
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
  ADDI s4, zero, -33
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
  ADDI s4, zero, -79
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
  ADDI s4, zero, -13
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
  ADDI s4, zero, -15
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
  ADDI s4, zero, 66
  MULW s5, s3, s4
  ADDW s3, s2, s5
  ADD a0, s3, zero
  CALL relu_reg
  ADD s2, a0, zero
  ADDI s3, zero, -95
  MULW s4, s2, s3
  ADDW s2, s1, s4
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
  ADDI s4, zero, -2
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
  ADDI s4, zero, -13
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
  ADDI s4, zero, -119
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
  ADDI s4, zero, -7
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
  ADDI s4, zero, -96
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
  ADDI s4, zero, -104
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
  ADDI s4, zero, -121
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
  ADDI s4, zero, -84
  MULW s5, s3, s4
  ADDW s3, s1, s5
  ADD a0, s3, zero
  CALL relu_reg
  ADD s1, a0, zero
  ADDI s3, zero, -50
  MULW s4, s1, s3
  ADDW s1, s2, s4
  ADDI s2, zero, 20
  MUL s3, zero, s2
  ADD s2, s0, s3
  ADDI s3, zero, 4
  MUL s4, zero, s3
  ADD s3, s2, s4
  LW s2, 0(s3)
  ADDI s3, zero, -29
  MULW s4, s2, s3
  ADDI s2, zero, 20
  MUL s3, zero, s2
  ADD s2, s0, s3
  ADDI s3, zero, 4
  ADDI s5, zero, 1
  MULW s6, s3, s5
  ADD s3, s2, s6
  LW s2, 0(s3)
  ADDI s3, zero, 7
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
  ADDI s4, zero, -70
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
  ADDI s4, zero, -90
  MULW s5, s3, s4
  ADDW s3, s2, s5
  ADDI s2, zero, 20
  ADDI s4, zero, 1
  MULW s5, s2, s4
  ADD s2, s0, s5
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s2, s5
  LW s2, 0(s4)
  ADDI s4, zero, -15
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
  ADDI s4, zero, -32
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
  ADDI s4, zero, -62
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
  ADDI s4, zero, -125
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
  ADDI s4, zero, -46
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
  ADDI s4, zero, -70
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
  ADDI s4, zero, -73
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
  ADDI s4, zero, -34
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
  ADDI s4, zero, -87
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
  ADDI s4, zero, -75
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
  ADDI s4, zero, -77
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
  ADDI s4, zero, -103
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
  ADDI s4, zero, -13
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
  ADDI s4, zero, -114
  MULW s5, s3, s4
  ADDW s3, s2, s5
  ADD a0, s3, zero
  CALL relu_reg
  ADD s2, a0, zero
  ADDI s3, zero, -23
  MULW s4, s2, s3
  ADDW s2, s1, s4
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
  ADDI s4, zero, -123
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
  ADDI s4, zero, -92
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
  ADDI s4, zero, -77
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
  ADDI s4, zero, -51
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
  ADDI s4, zero, -74
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
  ADDI s4, zero, -7
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
  ADDI s4, zero, -122
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
  ADDI s4, zero, -68
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
  ADDI s4, zero, -121
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
  ADDI s4, zero, -49
  MULW s5, s1, s4
  ADDW s1, s3, s5
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
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 127
  SLT s2, s1, s0
  BNE s2, zero, bb17
  JAL zero, bb18
bb17:
  ADDI a0, zero, 127
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb18:
  SLT s1, s0, zero
  BNE s1, zero, bb19
  JAL zero, bb20
bb19:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb20:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
