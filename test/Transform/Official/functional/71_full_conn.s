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
  ADDI sp, sp, -256
  SD ra, 144(sp)
  SD s11, 152(sp)
  SD s0, 160(sp)
  SD s5, 168(sp)
  SD s7, 176(sp)
  SD s10, 184(sp)
  SD s1, 192(sp)
  SD s6, 200(sp)
  SD s2, 208(sp)
  SD s3, 216(sp)
  SD s4, 224(sp)
  SD s8, 232(sp)
  SD s9, 240(sp)
  ADD s0, a0, zero
  LW s1, 0(s0)
  ADDI s2, zero, 85
  MULW s3, s1, s2
  ADDI s1, s0, 4
  LW s2, 0(s1)
  ADDI s4, zero, 23
  MULW s5, s2, s4
  ADDW s2, s3, s5
  ADDI s3, s0, 8
  LW s4, 0(s3)
  ADDI s5, zero, -82
  MULW s6, s4, s5
  ADDW s4, s2, s6
  ADDI s2, s0, 12
  LW s5, 0(s2)
  ADDI s6, zero, -103
  MULW s7, s5, s6
  ADDW s5, s4, s7
  ADDI s4, s0, 16
  LW s6, 0(s4)
  ADDI s7, zero, -123
  MULW s8, s6, s7
  ADDW s6, s5, s8
  ADDI s5, s0, 20
  LW s7, 0(s5)
  ADDI s8, zero, 64
  MULW s9, s7, s8
  ADDW s7, s6, s9
  ADDI s6, s0, 24
  LW s8, 0(s6)
  ADDI s9, zero, -120
  MULW s10, s8, s9
  ADDW s8, s7, s10
  ADDI t4, s0, 28
  SD t4, 136(sp)
  LD t4, 136(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 50
  MULW s11, s9, s10
  ADDW s9, s8, s11
  ADDI t4, s0, 32
  SD t4, 128(sp)
  LD t4, 128(sp)
  LW s10, 0(t4)
  ADDI s11, zero, -59
  MULW ra, s10, s11
  ADDW s10, s9, ra
  ADDI t4, s0, 36
  SD t4, 120(sp)
  LD t4, 120(sp)
  LW s11, 0(t4)
  ADDI ra, zero, 47
  MULW t0, s11, ra
  ADDW s11, s10, t0
  ADDI t4, s0, 40
  SD t4, 112(sp)
  LD t4, 112(sp)
  LW ra, 0(t4)
  ADDI t0, zero, -111
  MULW t1, ra, t0
  ADDW ra, s11, t1
  ADDI t4, s0, 44
  SD t4, 104(sp)
  LD t4, 104(sp)
  LW t0, 0(t4)
  ADDI t1, zero, -67
  MULW t2, t0, t1
  ADDW t0, ra, t2
  ADDI t4, s0, 48
  SD t4, 88(sp)
  LD t4, 88(sp)
  LW t1, 0(t4)
  ADDI t2, zero, -106
  MULW a1, t1, t2
  ADDW t1, t0, a1
  ADDI t4, s0, 52
  SD t4, 96(sp)
  LD t4, 96(sp)
  LW t2, 0(t4)
  ADDI a1, zero, -75
  MULW a2, t2, a1
  ADDW t2, t1, a2
  ADDI t4, s0, 56
  SD t4, 48(sp)
  LD t4, 48(sp)
  LW a1, 0(t4)
  ADDI a2, zero, -102
  MULW a3, a1, a2
  ADDW a1, t2, a3
  ADDI t4, s0, 60
  SD t4, 56(sp)
  LD t4, 56(sp)
  LW a2, 0(t4)
  ADDI a3, zero, 34
  MULW a4, a2, a3
  ADDW a2, a1, a4
  ADDI t4, s0, 64
  SD t4, 80(sp)
  LD t4, 80(sp)
  LW a3, 0(t4)
  ADDI a4, zero, -39
  MULW a5, a3, a4
  ADDW a3, a2, a5
  ADDI t4, s0, 68
  SD t4, 72(sp)
  LD t4, 72(sp)
  LW a4, 0(t4)
  ADDI a5, zero, 65
  MULW a6, a4, a5
  ADDW a4, a3, a6
  ADDI t4, s0, 72
  SD t4, 64(sp)
  LD t4, 64(sp)
  LW a5, 0(t4)
  ADDI a6, zero, 47
  MULW a7, a5, a6
  ADDW a5, a4, a7
  ADDI t4, s0, 76
  SD t4, 0(sp)
  LD t4, 0(sp)
  LW a6, 0(t4)
  ADDI a7, zero, 113
  MULW a4, a6, a7
  ADDW a6, a5, a4
  ADDI t4, s0, 80
  SD t4, 8(sp)
  LD t4, 8(sp)
  LW a5, 0(t4)
  ADDI a7, zero, 110
  MULW a4, a5, a7
  ADDW a5, a6, a4
  ADDI t4, s0, 84
  SD t4, 16(sp)
  LD t4, 16(sp)
  LW a6, 0(t4)
  ADDI a7, zero, 47
  MULW a4, a6, a7
  ADDW a6, a5, a4
  ADDI t4, s0, 88
  SD t4, 24(sp)
  LD t4, 24(sp)
  LW a5, 0(t4)
  ADDI a7, zero, -4
  MULW a4, a5, a7
  ADDW a5, a6, a4
  ADDI t4, s0, 92
  SD t4, 32(sp)
  LD t4, 32(sp)
  LW a6, 0(t4)
  ADDI a7, zero, 80
  MULW a4, a6, a7
  ADDW a6, a5, a4
  ADDI t4, s0, 96
  SD t4, 40(sp)
  LD t4, 40(sp)
  LW a5, 0(t4)
  ADDI a7, zero, 46
  MULW a4, a5, a7
  ADDW a5, a6, a4
  ADD a0, a5, zero
  CALL relu_reg
  ADD s11, a0, zero
  ADDI s10, zero, 39
  MULW s9, s11, s10
  LW s10, 0(s0)
  ADDI s11, zero, -106
  MULW s8, s10, s11
  LW s10, 0(s1)
  ADDI s11, zero, 126
  MULW s7, s10, s11
  ADDW s10, s8, s7
  LW s7, 0(s3)
  ADDI s8, zero, -18
  MULW s11, s7, s8
  ADDW s7, s10, s11
  LW s8, 0(s2)
  ADDI s10, zero, -31
  MULW s11, s8, s10
  ADDW s8, s7, s11
  LW s7, 0(s4)
  ADDI s10, zero, -8
  MULW s11, s7, s10
  ADDW s7, s8, s11
  LW s8, 0(s5)
  ADDI s10, zero, 47
  MULW s11, s8, s10
  ADDW s8, s7, s11
  LW s7, 0(s6)
  ADDI s10, zero, -4
  MULW s11, s7, s10
  ADDW s7, s8, s11
  LD t4, 136(sp)
  LW s8, 0(t4)
  ADDI s10, zero, 67
  MULW s11, s8, s10
  ADDW s8, s7, s11
  LD t4, 128(sp)
  LW s7, 0(t4)
  ADDI s10, zero, -94
  MULW s11, s7, s10
  ADDW s7, s8, s11
  LD t4, 120(sp)
  LW s8, 0(t4)
  ADDI s10, zero, -121
  MULW s11, s8, s10
  ADDW s8, s7, s11
  LD t4, 112(sp)
  LW s7, 0(t4)
  ADDI s10, zero, 7
  MULW s11, s7, s10
  ADDW s7, s8, s11
  LD t4, 104(sp)
  LW s8, 0(t4)
  ADDI s10, zero, -21
  MULW s11, s8, s10
  ADDW s8, s7, s11
  LD t4, 88(sp)
  LW s7, 0(t4)
  ADDI s10, zero, -60
  MULW s11, s7, s10
  ADDW s7, s8, s11
  LD t4, 96(sp)
  LW s8, 0(t4)
  ADDI s10, zero, -43
  MULW s11, s8, s10
  ADDW s8, s7, s11
  LD t4, 48(sp)
  LW s7, 0(t4)
  ADDI s10, zero, 105
  MULW s11, s7, s10
  ADDW s7, s8, s11
  LD t4, 56(sp)
  LW s8, 0(t4)
  ADDI s10, zero, -42
  MULW s11, s8, s10
  ADDW s8, s7, s11
  LD t4, 80(sp)
  LW s7, 0(t4)
  ADDI s10, zero, 87
  MULW s11, s7, s10
  ADDW s7, s8, s11
  LD t4, 72(sp)
  LW s8, 0(t4)
  ADDI s10, zero, 29
  MULW s11, s8, s10
  ADDW s8, s7, s11
  LD t4, 64(sp)
  LW s7, 0(t4)
  ADDI s10, zero, -106
  MULW s11, s7, s10
  ADDW s7, s8, s11
  LD t4, 0(sp)
  LW s8, 0(t4)
  ADDI s10, zero, -31
  MULW s11, s8, s10
  ADDW s8, s7, s11
  LD t4, 8(sp)
  LW s7, 0(t4)
  ADDI s10, zero, -110
  MULW s11, s7, s10
  ADDW s7, s8, s11
  LD t4, 16(sp)
  LW s8, 0(t4)
  ADDI s10, zero, -100
  MULW s11, s8, s10
  ADDW s8, s7, s11
  LD t4, 24(sp)
  LW s7, 0(t4)
  ADDI s10, zero, -22
  MULW s11, s7, s10
  ADDW s7, s8, s11
  LD t4, 32(sp)
  LW s8, 0(t4)
  ADDI s10, zero, -75
  MULW s11, s8, s10
  ADDW s8, s7, s11
  LD t4, 40(sp)
  LW s7, 0(t4)
  ADDI s10, zero, -125
  MULW s11, s7, s10
  ADDW s7, s8, s11
  ADD a0, s7, zero
  CALL relu_reg
  ADD s7, a0, zero
  ADDI s8, zero, 77
  MULW s10, s7, s8
  ADDW s7, s9, s10
  LW s8, 0(s0)
  ADDI s9, zero, 26
  MULW s10, s8, s9
  LW s8, 0(s1)
  ADDI s9, zero, 76
  MULW s11, s8, s9
  ADDW s8, s10, s11
  LW s9, 0(s3)
  ADDI s10, zero, -70
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LW s8, 0(s2)
  ADDI s10, zero, 29
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LW s9, 0(s4)
  ADDI s10, zero, -95
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LW s8, 0(s5)
  ADDI s10, zero, 96
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LW s9, 0(s6)
  ADDI s10, zero, 52
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 136(sp)
  LW s8, 0(t4)
  ADDI s10, zero, -68
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 128(sp)
  LW s9, 0(t4)
  ADDI s10, zero, -5
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 120(sp)
  LW s8, 0(t4)
  ADDI s10, zero, 34
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 112(sp)
  LW s9, 0(t4)
  ADDI s10, zero, -34
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 104(sp)
  LW s8, 0(t4)
  ADDI s10, zero, 102
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 88(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 6
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 96(sp)
  LW s8, 0(t4)
  ADDI s10, zero, -38
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 48(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 27
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 56(sp)
  LW s8, 0(t4)
  ADDI s10, zero, 110
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 80(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 116
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 72(sp)
  LW s8, 0(t4)
  ADDI s10, zero, 39
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 64(sp)
  LW s9, 0(t4)
  ADDI s10, zero, -63
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 0(sp)
  LW s8, 0(t4)
  ADDI s10, zero, -99
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 8(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 65
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 16(sp)
  LW s8, 0(t4)
  ADDI s10, zero, 120
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 24(sp)
  LW s9, 0(t4)
  ADDI s10, zero, -39
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 32(sp)
  LW s8, 0(t4)
  ADDI s10, zero, -6
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 40(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 94
  MULW s11, s9, s10
  ADDW s9, s8, s11
  ADD a0, s9, zero
  CALL relu_reg
  ADD s8, a0, zero
  ADDI s9, zero, 127
  MULW s10, s8, s9
  ADDW s8, s7, s10
  LW s7, 0(s0)
  ADDI s9, zero, -23
  MULW s10, s7, s9
  LW s7, 0(s1)
  ADDI s9, zero, -63
  MULW s11, s7, s9
  ADDW s7, s10, s11
  LW s9, 0(s3)
  ADDI s10, zero, 49
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LW s7, 0(s2)
  ADDI s10, zero, 50
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LW s9, 0(s4)
  ADDI s10, zero, 72
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LW s7, 0(s5)
  ADDI s10, zero, 85
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LW s9, 0(s6)
  ADDI s10, zero, -30
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LD t4, 136(sp)
  LW s7, 0(t4)
  ADDI s10, zero, 12
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LD t4, 128(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 125
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LD t4, 120(sp)
  LW s7, 0(t4)
  ADDI s10, zero, -117
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LD t4, 112(sp)
  LW s9, 0(t4)
  ADDI s10, zero, -65
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LD t4, 104(sp)
  LW s7, 0(t4)
  ADDI s10, zero, -67
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LD t4, 88(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 125
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LD t4, 96(sp)
  LW s7, 0(t4)
  ADDI s10, zero, 110
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LD t4, 48(sp)
  LW s9, 0(t4)
  ADDI s10, zero, -31
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LD t4, 56(sp)
  LW s7, 0(t4)
  ADDI s10, zero, -123
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LD t4, 80(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 83
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LD t4, 72(sp)
  LW s7, 0(t4)
  ADDI s10, zero, 122
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LD t4, 64(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 11
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LD t4, 0(sp)
  LW s7, 0(t4)
  ADDI s10, zero, -23
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LD t4, 8(sp)
  LW s9, 0(t4)
  ADDI s10, zero, -47
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LD t4, 16(sp)
  LW s7, 0(t4)
  ADDI s10, zero, -32
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LD t4, 24(sp)
  LW s9, 0(t4)
  ADDI s10, zero, -117
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LD t4, 32(sp)
  LW s7, 0(t4)
  ADDI s10, zero, 95
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LD t4, 40(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 118
  MULW s11, s9, s10
  ADDW s9, s7, s11
  ADD a0, s9, zero
  CALL relu_reg
  ADD s7, a0, zero
  ADDI s9, zero, -106
  MULW s10, s7, s9
  ADDW s7, s8, s10
  LW s8, 0(s0)
  ADDI s9, zero, 8
  MULW s10, s8, s9
  LW s8, 0(s1)
  ADDI s9, zero, 82
  MULW s11, s8, s9
  ADDW s8, s10, s11
  LW s9, 0(s3)
  ADDI s10, zero, -104
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LW s8, 0(s2)
  ADDI s10, zero, 101
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LW s9, 0(s4)
  ADDI s10, zero, -116
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LW s8, 0(s5)
  ADDI s10, zero, -63
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LW s9, 0(s6)
  ADDI s10, zero, -16
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 136(sp)
  LW s8, 0(t4)
  ADDI s10, zero, -70
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 128(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 125
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 120(sp)
  LW s8, 0(t4)
  ADDI s10, zero, 75
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 112(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 66
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 104(sp)
  LW s8, 0(t4)
  ADDI s10, zero, -96
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 88(sp)
  LW s9, 0(t4)
  ADDI s10, zero, -101
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 96(sp)
  LW s8, 0(t4)
  ADDI s10, zero, -114
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 48(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 59
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 56(sp)
  LW s8, 0(t4)
  ADDI s10, zero, 12
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 80(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 5
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 72(sp)
  LW s8, 0(t4)
  ADDI s10, zero, -95
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 64(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 116
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 0(sp)
  LW s8, 0(t4)
  ADDI s10, zero, -93
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 8(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 15
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 16(sp)
  LW s8, 0(t4)
  ADDI s10, zero, 79
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 24(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 3
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 32(sp)
  LW s8, 0(t4)
  ADDI s10, zero, 49
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 40(sp)
  LW s9, 0(t4)
  ADDI s10, zero, -124
  MULW s11, s9, s10
  ADDW s9, s8, s11
  ADD a0, s9, zero
  CALL relu_reg
  ADD s8, a0, zero
  ADDI s9, zero, -3
  MULW s10, s8, s9
  ADDW s8, s7, s10
  LW s7, 0(s0)
  ADDI s9, zero, 81
  MULW s10, s7, s9
  LW s7, 0(s1)
  ADDI s9, zero, 68
  MULW s11, s7, s9
  ADDW s7, s10, s11
  LW s9, 0(s3)
  ADDI s10, zero, -102
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LW s7, 0(s2)
  ADDI s10, zero, -74
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LW s9, 0(s4)
  ADDI s10, zero, 121
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LW s7, 0(s5)
  ADDI s10, zero, -15
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LW s9, 0(s6)
  ADDI s10, zero, 55
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LD t4, 136(sp)
  LW s7, 0(t4)
  ADDI s10, zero, 101
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LD t4, 128(sp)
  LW s9, 0(t4)
  ADDI s10, zero, -13
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LD t4, 120(sp)
  LW s7, 0(t4)
  ADDI s10, zero, -62
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LD t4, 112(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 64
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LD t4, 104(sp)
  LW s7, 0(t4)
  ADDI s10, zero, 114
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LD t4, 88(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 38
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LD t4, 96(sp)
  LW s7, 0(t4)
  ADDI s10, zero, -21
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LD t4, 48(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 112
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LD t4, 56(sp)
  LW s7, 0(t4)
  ADDI s10, zero, 114
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LD t4, 80(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 112
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LD t4, 72(sp)
  LW s7, 0(t4)
  ADDI s10, zero, -10
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LD t4, 64(sp)
  LW s9, 0(t4)
  ADDI s10, zero, -16
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LD t4, 0(sp)
  LW s7, 0(t4)
  ADDI s10, zero, -50
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LD t4, 8(sp)
  LW s9, 0(t4)
  ADDI s10, zero, -112
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LD t4, 16(sp)
  LW s7, 0(t4)
  ADDI s10, zero, -116
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LD t4, 24(sp)
  LW s9, 0(t4)
  ADDI s10, zero, -54
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LD t4, 32(sp)
  LW s7, 0(t4)
  ADDI s10, zero, 82
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LD t4, 40(sp)
  LW s9, 0(t4)
  ADDI s10, zero, -72
  MULW s11, s9, s10
  ADDW s9, s7, s11
  ADD a0, s9, zero
  CALL relu_reg
  ADD s7, a0, zero
  ADDI s9, zero, 32
  MULW s10, s7, s9
  ADDW s7, s8, s10
  LW s8, 0(s0)
  ADDI s9, zero, 15
  MULW s10, s8, s9
  LW s8, 0(s1)
  ADDI s9, zero, -77
  MULW s11, s8, s9
  ADDW s8, s10, s11
  LW s9, 0(s3)
  ADDI s10, zero, 66
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LW s8, 0(s2)
  ADDI s10, zero, -90
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LW s9, 0(s4)
  ADDI s10, zero, -6
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LW s8, 0(s5)
  ADDI s10, zero, -30
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LW s9, 0(s6)
  ADDI s10, zero, -8
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 136(sp)
  LW s8, 0(t4)
  ADDI s10, zero, 81
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 128(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 2
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 120(sp)
  LW s8, 0(t4)
  ADDI s10, zero, -110
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 112(sp)
  LW s9, 0(t4)
  ADDI s10, zero, -95
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 104(sp)
  LW s8, 0(t4)
  ADDI s10, zero, 59
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 88(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 52
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 96(sp)
  LW s8, 0(t4)
  ADDI s10, zero, 15
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 48(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 55
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 56(sp)
  LW s8, 0(t4)
  ADDI s10, zero, -33
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 80(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 14
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 72(sp)
  LW s8, 0(t4)
  ADDI s10, zero, 58
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 64(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 67
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 0(sp)
  LW s8, 0(t4)
  ADDI s10, zero, 86
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 8(sp)
  LW s9, 0(t4)
  ADDI s10, zero, -79
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 16(sp)
  LW s8, 0(t4)
  ADDI s10, zero, 48
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 24(sp)
  LW s9, 0(t4)
  ADDI s10, zero, -13
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 32(sp)
  LW s8, 0(t4)
  ADDI s10, zero, -15
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 40(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 66
  MULW s11, s9, s10
  ADDW s9, s8, s11
  ADD a0, s9, zero
  CALL relu_reg
  ADD s8, a0, zero
  ADDI s9, zero, -95
  MULW s10, s8, s9
  ADDW s8, s7, s10
  LW s7, 0(s0)
  ADDI s9, zero, 33
  MULW s10, s7, s9
  LW s7, 0(s1)
  ADDI s9, zero, 82
  MULW s11, s7, s9
  ADDW s7, s10, s11
  LW s9, 0(s3)
  ADDI s10, zero, 67
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LW s7, 0(s2)
  ADDI s10, zero, 30
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LW s9, 0(s4)
  ADDI s10, zero, -2
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LW s7, 0(s5)
  ADDI s10, zero, 65
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LW s9, 0(s6)
  ADDI s10, zero, 120
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LD t4, 136(sp)
  LW s7, 0(t4)
  ADDI s10, zero, -13
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LD t4, 128(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 18
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LD t4, 120(sp)
  LW s7, 0(t4)
  ADDI s10, zero, 5
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LD t4, 112(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 104
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LD t4, 104(sp)
  LW s7, 0(t4)
  ADDI s10, zero, -119
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LD t4, 88(sp)
  LW s9, 0(t4)
  ADDI s10, zero, -7
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LD t4, 96(sp)
  LW s7, 0(t4)
  ADDI s10, zero, 71
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LD t4, 48(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 107
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LD t4, 56(sp)
  LW s7, 0(t4)
  ADDI s10, zero, 24
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LD t4, 80(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 82
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LD t4, 72(sp)
  LW s7, 0(t4)
  ADDI s10, zero, -96
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LD t4, 64(sp)
  LW s9, 0(t4)
  ADDI s10, zero, -104
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LD t4, 0(sp)
  LW s7, 0(t4)
  ADDI s10, zero, -121
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LD t4, 8(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 65
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LD t4, 16(sp)
  LW s7, 0(t4)
  ADDI s10, zero, 97
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LD t4, 24(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 83
  MULW s11, s9, s10
  ADDW s9, s7, s11
  LD t4, 32(sp)
  LW s7, 0(t4)
  ADDI s10, zero, 46
  MULW s11, s7, s10
  ADDW s7, s9, s11
  LD t4, 40(sp)
  LW s9, 0(t4)
  ADDI s10, zero, -84
  MULW s11, s9, s10
  ADDW s9, s7, s11
  ADD a0, s9, zero
  CALL relu_reg
  ADD s7, a0, zero
  ADDI s9, zero, -50
  MULW s10, s7, s9
  ADDW s7, s8, s10
  LW s8, 0(s0)
  ADDI s9, zero, -29
  MULW s10, s8, s9
  LW s8, 0(s1)
  ADDI s9, zero, 7
  MULW s11, s8, s9
  ADDW s8, s10, s11
  LW s9, 0(s3)
  ADDI s10, zero, -70
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LW s8, 0(s2)
  ADDI s10, zero, 38
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LW s9, 0(s4)
  ADDI s10, zero, -90
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LW s8, 0(s5)
  ADDI s10, zero, -15
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LW s9, 0(s6)
  ADDI s10, zero, -32
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 136(sp)
  LW s8, 0(t4)
  ADDI s10, zero, 37
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 128(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 36
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 120(sp)
  LW s8, 0(t4)
  ADDI s10, zero, -62
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 112(sp)
  LW s9, 0(t4)
  ADDI s10, zero, -125
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 104(sp)
  LW s8, 0(t4)
  ADDI s10, zero, -46
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 88(sp)
  LW s9, 0(t4)
  ADDI s10, zero, -70
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 96(sp)
  LW s8, 0(t4)
  ADDI s10, zero, 37
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 48(sp)
  LW s9, 0(t4)
  ADDI s10, zero, -73
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 56(sp)
  LW s8, 0(t4)
  ADDI s10, zero, -34
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 80(sp)
  LW s9, 0(t4)
  ADDI s10, zero, -87
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 72(sp)
  LW s8, 0(t4)
  ADDI s10, zero, -75
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 64(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 71
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 0(sp)
  LW s8, 0(t4)
  ADDI s10, zero, -77
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 8(sp)
  LW s9, 0(t4)
  ADDI s10, zero, 53
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 16(sp)
  LW s8, 0(t4)
  ADDI s10, zero, 37
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 24(sp)
  LW s9, 0(t4)
  ADDI s10, zero, -103
  MULW s11, s9, s10
  ADDW s9, s8, s11
  LD t4, 32(sp)
  LW s8, 0(t4)
  ADDI s10, zero, -13
  MULW s11, s8, s10
  ADDW s8, s9, s11
  LD t4, 40(sp)
  LW s9, 0(t4)
  ADDI s10, zero, -114
  MULW s11, s9, s10
  ADDW s9, s8, s11
  ADD a0, s9, zero
  CALL relu_reg
  ADD s8, a0, zero
  ADDI s9, zero, -23
  MULW s10, s8, s9
  ADDW s8, s7, s10
  LW s7, 0(s0)
  ADDI s0, zero, 67
  MULW s9, s7, s0
  LW s0, 0(s1)
  ADDI s1, zero, 42
  MULW s7, s0, s1
  ADDW s0, s9, s7
  LW s1, 0(s3)
  ADDI s3, zero, 41
  MULW s7, s1, s3
  ADDW s1, s0, s7
  LW s0, 0(s2)
  ADDI s2, zero, -123
  MULW s3, s0, s2
  ADDW s0, s1, s3
  LW s1, 0(s4)
  ADDI s2, zero, -92
  MULW s3, s1, s2
  ADDW s1, s0, s3
  LW s0, 0(s5)
  ADDI s2, zero, 10
  MULW s3, s0, s2
  ADDW s0, s1, s3
  LW s1, 0(s6)
  ADDI s2, zero, -77
  MULW s3, s1, s2
  ADDW s1, s0, s3
  LD t4, 136(sp)
  LW s0, 0(t4)
  ADDI s2, zero, 75
  MULW s3, s0, s2
  ADDW s0, s1, s3
  LD t4, 128(sp)
  LW s1, 0(t4)
  ADDI s2, zero, 96
  MULW s3, s1, s2
  ADDW s1, s0, s3
  LD t4, 120(sp)
  LW s0, 0(t4)
  ADDI s2, zero, -51
  MULW s3, s0, s2
  ADDW s0, s1, s3
  LD t4, 112(sp)
  LW s1, 0(t4)
  ADDI s2, zero, 109
  MULW s3, s1, s2
  ADDW s1, s0, s3
  LD t4, 104(sp)
  LW s0, 0(t4)
  ADDI s2, zero, -74
  MULW s3, s0, s2
  ADDW s0, s1, s3
  LD t4, 88(sp)
  LW s1, 0(t4)
  ADDI s2, zero, -7
  MULW s3, s1, s2
  ADDW s1, s0, s3
  LD t4, 96(sp)
  LW s0, 0(t4)
  ADDI s2, zero, -122
  MULW s3, s0, s2
  ADDW s0, s1, s3
  LD t4, 48(sp)
  LW s1, 0(t4)
  ADDI s2, zero, 67
  MULW s3, s1, s2
  ADDW s1, s0, s3
  LD t4, 56(sp)
  LW s0, 0(t4)
  ADDI s2, zero, 47
  MULW s3, s0, s2
  ADDW s0, s1, s3
  LD t4, 80(sp)
  LW s1, 0(t4)
  ADDI s2, zero, 22
  MULW s3, s1, s2
  ADDW s1, s0, s3
  LD t4, 72(sp)
  LW s0, 0(t4)
  ADDI s2, zero, -68
  MULW s3, s0, s2
  ADDW s0, s1, s3
  LD t4, 64(sp)
  LW s1, 0(t4)
  ADDI s2, zero, 38
  MULW s3, s1, s2
  ADDW s1, s0, s3
  LD t4, 0(sp)
  LW s0, 0(t4)
  ADDI s2, zero, 29
  MULW s3, s0, s2
  ADDW s0, s1, s3
  LD t4, 8(sp)
  LW s1, 0(t4)
  ADDI s2, zero, 115
  MULW s3, s1, s2
  ADDW s1, s0, s3
  LD t4, 16(sp)
  LW s0, 0(t4)
  ADDI s2, zero, -121
  MULW s3, s0, s2
  ADDW s0, s1, s3
  LD t4, 24(sp)
  LW s1, 0(t4)
  ADDI s2, zero, 36
  MULW s3, s1, s2
  ADDW s1, s0, s3
  LD t4, 32(sp)
  LW s0, 0(t4)
  ADDI s2, zero, -49
  MULW s3, s0, s2
  ADDW s0, s1, s3
  LD t4, 40(sp)
  LW s1, 0(t4)
  ADDI s2, zero, 85
  MULW s3, s1, s2
  ADDW s1, s0, s3
  ADD a0, s1, zero
  CALL relu_reg
  ADD s0, a0, zero
  ADDI s1, zero, 46
  MULW s2, s0, s1
  ADDW s0, s8, s2
  SLT s1, zero, s0
  BNE s1, zero, bb14
  JAL zero, bb15
bb14:
  ADDI a0, zero, 1
  LD ra, 144(sp)
  LD s11, 152(sp)
  LD s0, 160(sp)
  LD s5, 168(sp)
  LD s7, 176(sp)
  LD s10, 184(sp)
  LD s1, 192(sp)
  LD s6, 200(sp)
  LD s2, 208(sp)
  LD s3, 216(sp)
  LD s4, 224(sp)
  LD s8, 232(sp)
  LD s9, 240(sp)
  ADDI sp, sp, 256
  JALR zero, 0(ra)
bb15:
  ADD a0, zero, zero
  LD ra, 144(sp)
  LD s11, 152(sp)
  LD s0, 160(sp)
  LD s5, 168(sp)
  LD s7, 176(sp)
  LD s10, 184(sp)
  LD s1, 192(sp)
  LD s6, 200(sp)
  LD s2, 208(sp)
  LD s3, 216(sp)
  LD s4, 224(sp)
  LD s8, 232(sp)
  LD s9, 240(sp)
  ADDI sp, sp, 256
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
