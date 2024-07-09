.global main
.global model
.global relu_reg
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -432
  SD s6, 328(sp)
  SD s11, 336(sp)
  SD s10, 344(sp)
  SD s0, 352(sp)
  SD s5, 360(sp)
  SD s7, 368(sp)
  SD s1, 376(sp)
  SD s2, 384(sp)
  SD s3, 392(sp)
  SD s4, 400(sp)
  SD ra, 408(sp)
  SD s8, 416(sp)
  SD s9, 424(sp)
  CALL getint
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb1
bb1:
  ADD t4, s2, zero
  SW t4, 208(sp)
  ADD s3, s1, zero
  ADDI s4, zero, 0
  LW t4, 208(sp)
  SLT s5, s4, t4
  BNE s5, zero, bb2
  JAL zero, bb3
bb2:
  ADD s4, s3, zero
  ADD s3, zero, zero
  JAL zero, bb4
bb3:
  ADD a0, zero, zero
  LD s6, 328(sp)
  LD s11, 336(sp)
  LD s10, 344(sp)
  LD s0, 352(sp)
  LD s5, 360(sp)
  LD s7, 368(sp)
  LD s1, 376(sp)
  LD s2, 384(sp)
  LD s3, 392(sp)
  LD s4, 400(sp)
  LD ra, 408(sp)
  LD s8, 416(sp)
  LD s9, 424(sp)
  ADDI sp, sp, 432
  JALR zero, 0(ra)
bb4:
  ADD s5, s3, zero
  ADD t4, s4, zero
  SW t4, 204(sp)
  SLTI s7, s5, 5
  BNE s7, zero, bb5
  JAL zero, bb6
bb5:
  ADD s7, zero, zero
  JAL zero, bb8
bb6:
  LW t4, 0(sp)
  SW t4, 200(sp)
  ADDI s4, zero, 85
  LW t4, 200(sp)
  MULW s5, t4, s4
  ADDI s4, sp, 4
  LW t4, 0(s4)
  SW t4, 196(sp)
  ADDI s4, zero, 23
  LW t4, 196(sp)
  MULW s8, t4, s4
  ADDW s4, s5, s8
  ADDI s5, sp, 8
  LW t4, 0(s5)
  SW t4, 192(sp)
  ADDI s5, zero, -82
  LW t4, 192(sp)
  MULW s9, t4, s5
  ADDW s5, s4, s9
  ADDI s4, sp, 12
  LW t4, 0(s4)
  SW t4, 188(sp)
  ADDI s4, zero, -103
  LW t4, 188(sp)
  MULW s10, t4, s4
  ADDW s4, s5, s10
  ADDI s5, sp, 16
  LW t4, 0(s5)
  SW t4, 184(sp)
  ADDI s5, zero, -123
  LW t4, 184(sp)
  MULW s11, t4, s5
  ADDW s5, s4, s11
  ADDI s4, sp, 20
  LW t4, 0(s4)
  SW t4, 100(sp)
  ADDI s4, zero, 64
  LW t4, 100(sp)
  MULW s11, t4, s4
  ADDW s4, s5, s11
  ADDI s5, sp, 24
  LW t4, 0(s5)
  SW t4, 104(sp)
  ADDI s5, zero, -120
  LW t4, 104(sp)
  MULW s11, t4, s5
  ADDW s5, s4, s11
  ADDI s4, sp, 28
  LW t4, 0(s4)
  SW t4, 108(sp)
  ADDI s4, zero, 50
  LW t4, 108(sp)
  MULW s11, t4, s4
  ADDW s4, s5, s11
  ADDI s5, sp, 32
  LW t4, 0(s5)
  SW t4, 112(sp)
  ADDI s5, zero, -59
  LW t4, 112(sp)
  MULW s11, t4, s5
  ADDW s5, s4, s11
  ADDI s4, sp, 36
  LW t4, 0(s4)
  SW t4, 116(sp)
  ADDI s4, zero, 47
  LW t4, 116(sp)
  MULW s11, t4, s4
  ADDW s4, s5, s11
  ADDI s5, sp, 40
  LW t4, 0(s5)
  SW t4, 120(sp)
  ADDI s5, zero, -111
  LW t4, 120(sp)
  MULW s11, t4, s5
  ADDW s5, s4, s11
  ADDI s4, sp, 44
  LW t4, 0(s4)
  SW t4, 132(sp)
  ADDI s4, zero, -67
  LW t3, 132(sp)
  MULW t4, t3, s4
  SW t4, 124(sp)
  LW t4, 124(sp)
  ADDW s4, s5, t4
  ADDI s5, sp, 48
  LW t4, 0(s5)
  SW t4, 128(sp)
  ADDI s5, zero, -106
  LW t4, 128(sp)
  MULW s11, t4, s5
  ADDW s5, s4, s11
  ADDI s4, sp, 52
  LW t4, 0(s4)
  SW t4, 136(sp)
  ADDI s4, zero, -75
  LW t4, 136(sp)
  MULW s11, t4, s4
  ADDW s4, s5, s11
  ADDI s5, sp, 56
  LW t4, 0(s5)
  SW t4, 140(sp)
  ADDI s5, zero, -102
  LW t4, 140(sp)
  MULW s11, t4, s5
  ADDW s5, s4, s11
  ADDI s4, sp, 60
  LW t4, 0(s4)
  SW t4, 144(sp)
  ADDI s4, zero, 34
  LW t4, 144(sp)
  MULW s11, t4, s4
  ADDW s4, s5, s11
  ADDI s5, sp, 64
  LW t4, 0(s5)
  SW t4, 148(sp)
  ADDI s5, zero, -39
  LW t4, 148(sp)
  MULW s11, t4, s5
  ADDW s5, s4, s11
  ADDI s4, sp, 68
  LW t4, 0(s4)
  SW t4, 152(sp)
  ADDI s4, zero, 65
  LW t4, 152(sp)
  MULW s11, t4, s4
  ADDW s4, s5, s11
  ADDI s5, sp, 72
  LW t4, 0(s5)
  SW t4, 156(sp)
  ADDI s5, zero, 47
  LW t4, 156(sp)
  MULW s11, t4, s5
  ADDW s5, s4, s11
  ADDI s4, sp, 76
  LW t4, 0(s4)
  SW t4, 160(sp)
  ADDI s4, zero, 113
  LW t4, 160(sp)
  MULW s11, t4, s4
  ADDW s4, s5, s11
  ADDI s5, sp, 80
  LW t4, 0(s5)
  SW t4, 164(sp)
  ADDI s5, zero, 110
  LW t4, 164(sp)
  MULW s11, t4, s5
  ADDW s5, s4, s11
  ADDI s4, sp, 84
  LW t4, 0(s4)
  SW t4, 168(sp)
  ADDI s4, zero, 47
  LW t4, 168(sp)
  MULW s11, t4, s4
  ADDW s4, s5, s11
  ADDI s5, sp, 88
  LW t4, 0(s5)
  SW t4, 172(sp)
  ADDI s5, zero, -4
  LW t4, 172(sp)
  MULW s11, t4, s5
  ADDW s5, s4, s11
  ADDI s4, sp, 92
  LW t4, 0(s4)
  SW t4, 176(sp)
  ADDI s4, zero, 80
  LW t4, 176(sp)
  MULW s11, t4, s4
  ADDW s4, s5, s11
  ADDI s5, sp, 96
  LW t4, 0(s5)
  SW t4, 180(sp)
  ADDI s5, zero, 46
  LW t4, 180(sp)
  MULW s11, t4, s5
  ADDW t4, s4, s11
  SW t4, 216(sp)
  ADDI s4, zero, 127
  LW t4, 216(sp)
  SLT s11, s4, t4
  BNE s11, zero, bb26
  JAL zero, bb27
bb7:
  ADD s9, s8, zero
  XOR s11, s9, zero
  SLTU s9, zero, s11
  BNE s9, zero, bb11
  JAL zero, bb13
bb8:
  ADD s8, s7, zero
  SLTI s9, s8, 5
  BNE s9, zero, bb9
  JAL zero, bb10
bb9:
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
  JAL zero, bb8
bb10:
  ADDIW s7, s5, 1
  ADD s4, s8, zero
  ADD s3, s7, zero
  JAL zero, bb4
bb11:
  ADDI a0, zero, 99
  CALL putch
  ADDI a0, zero, 97
  CALL putch
  ADDI a0, zero, 116
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb12
bb12:
  ADDI s9, zero, 1
  LW t4, 208(sp)
  SUBW s11, t4, s9
  LW t4, 204(sp)
  ADD s1, t4, zero
  ADD s2, s11, zero
  JAL zero, bb1
bb13:
  ADDI a0, zero, 100
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 103
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb12
bb14:
  LW t4, 212(sp)
  ADD s11, t4, zero
  ADDI s10, zero, 39
  MULW t4, s11, s10
  SW t4, 220(sp)
  ADDI s10, zero, -106
  LW t4, 200(sp)
  MULW s11, t4, s10
  ADDI s10, zero, 126
  LW t4, 196(sp)
  MULW s8, t4, s10
  ADDW s10, s11, s8
  ADDI s8, zero, -18
  LW t4, 192(sp)
  MULW s11, t4, s8
  ADDW s8, s10, s11
  ADDI s10, zero, -31
  LW t4, 188(sp)
  MULW s11, t4, s10
  ADDW s10, s8, s11
  ADDI s8, zero, -8
  LW t4, 184(sp)
  MULW s11, t4, s8
  ADDW s8, s10, s11
  ADDI s10, zero, 47
  LW t4, 100(sp)
  MULW s11, t4, s10
  ADDW s10, s8, s11
  ADDI s8, zero, -4
  LW t4, 104(sp)
  MULW s11, t4, s8
  ADDW s8, s10, s11
  ADDI s10, zero, 67
  LW t4, 108(sp)
  MULW s11, t4, s10
  ADDW s10, s8, s11
  ADDI s8, zero, -94
  LW t4, 112(sp)
  MULW s11, t4, s8
  ADDW s8, s10, s11
  ADDI s10, zero, -121
  LW t4, 116(sp)
  MULW s11, t4, s10
  ADDW s10, s8, s11
  ADDI s8, zero, 7
  LW t4, 120(sp)
  MULW s11, t4, s8
  ADDW s8, s10, s11
  ADDI s10, zero, -21
  LW t4, 132(sp)
  MULW s11, t4, s10
  ADDW s10, s8, s11
  ADDI s8, zero, -60
  LW t4, 128(sp)
  MULW s11, t4, s8
  ADDW s8, s10, s11
  ADDI s10, zero, -43
  LW t4, 136(sp)
  MULW s11, t4, s10
  ADDW s10, s8, s11
  ADDI s8, zero, 105
  LW t4, 140(sp)
  MULW s11, t4, s8
  ADDW s8, s10, s11
  ADDI s10, zero, -42
  LW t4, 144(sp)
  MULW s11, t4, s10
  ADDW s10, s8, s11
  ADDI s8, zero, 87
  LW t4, 148(sp)
  MULW s11, t4, s8
  ADDW s8, s10, s11
  ADDI s10, zero, 29
  LW t4, 152(sp)
  MULW s11, t4, s10
  ADDW s10, s8, s11
  ADDI s8, zero, -106
  LW t4, 156(sp)
  MULW s11, t4, s8
  ADDW s8, s10, s11
  ADDI s10, zero, -31
  LW t4, 160(sp)
  MULW s11, t4, s10
  ADDW s10, s8, s11
  ADDI s8, zero, -110
  LW t4, 164(sp)
  MULW s11, t4, s8
  ADDW s8, s10, s11
  ADDI s10, zero, -100
  LW t4, 168(sp)
  MULW s11, t4, s10
  ADDW s10, s8, s11
  ADDI s8, zero, -22
  LW t4, 172(sp)
  MULW s11, t4, s8
  ADDW s8, s10, s11
  ADDI s10, zero, -75
  LW t4, 176(sp)
  MULW s11, t4, s10
  ADDW s10, s8, s11
  ADDI s8, zero, -125
  LW t4, 180(sp)
  MULW s11, t4, s8
  ADDW t4, s10, s11
  SW t4, 228(sp)
  ADDI s10, zero, 127
  LW t4, 228(sp)
  SLT s11, s10, t4
  BNE s11, zero, bb30
  JAL zero, bb31
bb15:
  LW t4, 224(sp)
  ADD s11, t4, zero
  ADDI s7, zero, 77
  MULW s3, s11, s7
  LW t3, 220(sp)
  ADDW t4, t3, s3
  SW t4, 240(sp)
  ADDI s3, zero, 26
  LW t4, 200(sp)
  MULW s11, t4, s3
  ADDI s3, zero, 76
  LW t4, 196(sp)
  MULW s6, t4, s3
  ADDW s3, s11, s6
  ADDI s6, zero, -70
  LW t3, 192(sp)
  MULW t4, t3, s6
  SW t4, 236(sp)
  LW t4, 236(sp)
  ADDW s6, s3, t4
  ADDI s3, zero, 29
  LW t4, 188(sp)
  MULW s0, t4, s3
  ADDW s3, s6, s0
  ADDI s0, zero, -95
  LW t4, 184(sp)
  MULW s6, t4, s0
  ADDW s0, s3, s6
  ADDI s3, zero, 96
  LW t4, 100(sp)
  MULW s6, t4, s3
  ADDW s3, s0, s6
  ADDI s0, zero, 52
  LW t4, 104(sp)
  MULW s6, t4, s0
  ADDW s0, s3, s6
  ADDI s3, zero, -68
  LW t4, 108(sp)
  MULW s6, t4, s3
  ADDW s3, s0, s6
  ADDI s0, zero, -5
  LW t4, 112(sp)
  MULW s6, t4, s0
  ADDW s0, s3, s6
  ADDI s3, zero, 34
  LW t4, 116(sp)
  MULW s6, t4, s3
  ADDW s3, s0, s6
  ADDI s0, zero, -34
  LW t4, 120(sp)
  MULW s6, t4, s0
  ADDW s0, s3, s6
  ADDI s3, zero, 102
  LW t4, 132(sp)
  MULW s6, t4, s3
  ADDW s3, s0, s6
  ADDI s0, zero, 6
  LW t4, 128(sp)
  MULW s6, t4, s0
  ADDW s0, s3, s6
  ADDI s3, zero, -38
  LW t4, 136(sp)
  MULW s6, t4, s3
  ADDW s3, s0, s6
  ADDI s0, zero, 27
  LW t4, 140(sp)
  MULW s6, t4, s0
  ADDW s0, s3, s6
  ADDI s3, zero, 110
  LW t4, 144(sp)
  MULW s6, t4, s3
  ADDW s3, s0, s6
  ADDI s0, zero, 116
  LW t4, 148(sp)
  MULW s6, t4, s0
  ADDW s0, s3, s6
  ADDI s3, zero, 39
  LW t4, 152(sp)
  MULW s6, t4, s3
  ADDW s3, s0, s6
  ADDI s0, zero, -63
  LW t4, 156(sp)
  MULW s6, t4, s0
  ADDW s0, s3, s6
  ADDI s3, zero, -99
  LW t4, 160(sp)
  MULW s6, t4, s3
  ADDW s3, s0, s6
  ADDI s0, zero, 65
  LW t3, 164(sp)
  MULW t4, t3, s0
  SW t4, 232(sp)
  LW t4, 232(sp)
  ADDW s0, s3, t4
  ADDI s3, zero, 120
  LW t4, 168(sp)
  MULW s4, t4, s3
  ADDW s3, s0, s4
  ADDI s0, zero, -39
  LW t4, 172(sp)
  MULW s4, t4, s0
  ADDW s0, s3, s4
  ADDI s3, zero, -6
  LW t4, 176(sp)
  MULW s4, t4, s3
  ADDW s3, s0, s4
  ADDI s0, zero, 94
  LW t4, 180(sp)
  MULW s4, t4, s0
  ADDW t4, s3, s4
  SW t4, 248(sp)
  ADDI s3, zero, 127
  LW t4, 248(sp)
  SLT s4, s3, t4
  BNE s4, zero, bb34
  JAL zero, bb35
bb16:
  LW t4, 244(sp)
  ADD s4, t4, zero
  ADDI s5, zero, 127
  MULW s9, s4, s5
  LW t3, 240(sp)
  ADDW t4, t3, s9
  SW t4, 256(sp)
  ADDI s5, zero, -23
  LW t4, 200(sp)
  MULW s9, t4, s5
  ADDI s5, zero, -63
  LW t4, 196(sp)
  MULW s10, t4, s5
  ADDW s5, s9, s10
  ADDI s9, zero, 49
  LW t4, 192(sp)
  MULW s10, t4, s9
  ADDW s9, s5, s10
  ADDI s5, zero, 50
  LW t4, 188(sp)
  MULW s10, t4, s5
  ADDW s5, s9, s10
  ADDI s9, zero, 72
  LW t4, 184(sp)
  MULW s10, t4, s9
  ADDW s9, s5, s10
  ADDI s5, zero, 85
  LW t4, 100(sp)
  MULW s10, t4, s5
  ADDW s5, s9, s10
  ADDI s9, zero, -30
  LW t4, 104(sp)
  MULW s10, t4, s9
  ADDW s9, s5, s10
  ADDI s5, zero, 12
  LW t4, 108(sp)
  MULW s10, t4, s5
  ADDW s5, s9, s10
  ADDI s9, zero, 125
  LW t3, 112(sp)
  MULW t4, t3, s9
  SW t4, 252(sp)
  LW t4, 252(sp)
  ADDW s9, s5, t4
  ADDI s5, zero, -117
  LW t4, 116(sp)
  MULW s8, t4, s5
  ADDW s5, s9, s8
  ADDI s8, zero, -65
  LW t4, 120(sp)
  MULW s9, t4, s8
  ADDW s8, s5, s9
  LW t4, 124(sp)
  ADDW s5, s8, t4
  ADDI s8, zero, 125
  LW t4, 128(sp)
  MULW s9, t4, s8
  ADDW s8, s5, s9
  ADDI s5, zero, 110
  LW t4, 136(sp)
  MULW s9, t4, s5
  ADDW s5, s8, s9
  ADDI s8, zero, -31
  LW t4, 140(sp)
  MULW s9, t4, s8
  ADDW s8, s5, s9
  ADDI s5, zero, -123
  LW t4, 144(sp)
  MULW s9, t4, s5
  ADDW s5, s8, s9
  ADDI s8, zero, 83
  LW t4, 148(sp)
  MULW s9, t4, s8
  ADDW s8, s5, s9
  ADDI s5, zero, 122
  LW t4, 152(sp)
  MULW s9, t4, s5
  ADDW s5, s8, s9
  ADDI s8, zero, 11
  LW t4, 156(sp)
  MULW s9, t4, s8
  ADDW s8, s5, s9
  ADDI s5, zero, -23
  LW t4, 160(sp)
  MULW s9, t4, s5
  ADDW s5, s8, s9
  ADDI s8, zero, -47
  LW t4, 164(sp)
  MULW s9, t4, s8
  ADDW s8, s5, s9
  ADDI s5, zero, -32
  LW t4, 168(sp)
  MULW s9, t4, s5
  ADDW s5, s8, s9
  ADDI s8, zero, -117
  LW t4, 172(sp)
  MULW s9, t4, s8
  ADDW s8, s5, s9
  ADDI s5, zero, 95
  LW t4, 176(sp)
  MULW s9, t4, s5
  ADDW s5, s8, s9
  ADDI s8, zero, 118
  LW t4, 180(sp)
  MULW s9, t4, s8
  ADDW t4, s5, s9
  SW t4, 264(sp)
  ADDI s5, zero, 127
  LW t4, 264(sp)
  SLT s9, s5, t4
  BNE s9, zero, bb38
  JAL zero, bb39
bb17:
  LW t4, 260(sp)
  ADD s9, t4, zero
  ADDI s6, zero, -106
  MULW s11, s9, s6
  LW t3, 256(sp)
  ADDW t4, t3, s11
  SW t4, 272(sp)
  ADDI s9, zero, 8
  LW t4, 200(sp)
  MULW s11, t4, s9
  ADDI s9, zero, 82
  LW t3, 196(sp)
  MULW t4, t3, s9
  SW t4, 268(sp)
  LW t4, 268(sp)
  ADDW s9, s11, t4
  ADDI s11, zero, -104
  LW t4, 192(sp)
  MULW s3, t4, s11
  ADDW s11, s9, s3
  ADDI s3, zero, 101
  LW t4, 188(sp)
  MULW s9, t4, s3
  ADDW s3, s11, s9
  ADDI s9, zero, -116
  LW t4, 184(sp)
  MULW s11, t4, s9
  ADDW s9, s3, s11
  ADDI s3, zero, -63
  LW t4, 100(sp)
  MULW s11, t4, s3
  ADDW s3, s9, s11
  ADDI s9, zero, -16
  LW t4, 104(sp)
  MULW s11, t4, s9
  ADDW s9, s3, s11
  ADDI s3, zero, -70
  LW t4, 108(sp)
  MULW s11, t4, s3
  ADDW s3, s9, s11
  LW t4, 252(sp)
  ADDW s9, s3, t4
  ADDI s3, zero, 75
  LW t4, 116(sp)
  MULW s11, t4, s3
  ADDW s3, s9, s11
  ADDI s9, zero, 66
  LW t4, 120(sp)
  MULW s11, t4, s9
  ADDW s9, s3, s11
  ADDI s3, zero, -96
  LW t4, 132(sp)
  MULW s11, t4, s3
  ADDW s3, s9, s11
  ADDI s9, zero, -101
  LW t4, 128(sp)
  MULW s11, t4, s9
  ADDW s9, s3, s11
  ADDI s3, zero, -114
  LW t4, 136(sp)
  MULW s11, t4, s3
  ADDW s3, s9, s11
  ADDI s9, zero, 59
  LW t4, 140(sp)
  MULW s11, t4, s9
  ADDW s9, s3, s11
  ADDI s3, zero, 12
  LW t4, 144(sp)
  MULW s11, t4, s3
  ADDW s3, s9, s11
  ADDI s9, zero, 5
  LW t4, 148(sp)
  MULW s11, t4, s9
  ADDW s9, s3, s11
  ADDI s3, zero, -95
  LW t4, 152(sp)
  MULW s11, t4, s3
  ADDW s3, s9, s11
  ADDI s9, zero, 116
  LW t4, 156(sp)
  MULW s11, t4, s9
  ADDW s9, s3, s11
  ADDI s3, zero, -93
  LW t4, 160(sp)
  MULW s11, t4, s3
  ADDW s3, s9, s11
  ADDI s9, zero, 15
  LW t4, 164(sp)
  MULW s11, t4, s9
  ADDW s9, s3, s11
  ADDI s3, zero, 79
  LW t4, 168(sp)
  MULW s11, t4, s3
  ADDW s3, s9, s11
  ADDI s9, zero, 3
  LW t4, 172(sp)
  MULW s11, t4, s9
  ADDW s9, s3, s11
  ADDI s3, zero, 49
  LW t4, 176(sp)
  MULW s11, t4, s3
  ADDW s3, s9, s11
  ADDI s9, zero, -124
  LW t4, 180(sp)
  MULW s11, t4, s9
  ADDW t4, s3, s11
  SW t4, 280(sp)
  ADDI s3, zero, 127
  LW t4, 280(sp)
  SLT s11, s3, t4
  BNE s11, zero, bb42
  JAL zero, bb43
bb18:
  LW t4, 276(sp)
  ADD s11, t4, zero
  ADDI s0, zero, -3
  MULW s10, s11, s0
  LW t3, 272(sp)
  ADDW t4, t3, s10
  SW t4, 292(sp)
  ADDI s10, zero, 81
  LW t4, 200(sp)
  MULW s11, t4, s10
  ADDI s10, zero, 68
  LW t4, 196(sp)
  MULW s4, t4, s10
  ADDW s10, s11, s4
  ADDI s4, zero, -102
  LW t4, 192(sp)
  MULW s11, t4, s4
  ADDW s4, s10, s11
  ADDI s10, zero, -74
  LW t4, 188(sp)
  MULW s11, t4, s10
  ADDW s10, s4, s11
  ADDI s4, zero, 121
  LW t4, 184(sp)
  MULW s11, t4, s4
  ADDW s4, s10, s11
  ADDI s10, zero, -15
  LW t3, 100(sp)
  MULW t4, t3, s10
  SW t4, 288(sp)
  LW t4, 288(sp)
  ADDW s10, s4, t4
  ADDI s4, zero, 55
  LW t4, 104(sp)
  MULW s5, t4, s4
  ADDW s4, s10, s5
  ADDI s5, zero, 101
  LW t4, 108(sp)
  MULW s10, t4, s5
  ADDW s5, s4, s10
  ADDI s4, zero, -13
  LW t4, 112(sp)
  MULW s10, t4, s4
  ADDW s4, s5, s10
  ADDI s5, zero, -62
  LW t3, 116(sp)
  MULW t4, t3, s5
  SW t4, 284(sp)
  LW t4, 284(sp)
  ADDW s5, s4, t4
  ADDI s4, zero, 64
  LW t4, 120(sp)
  MULW s8, t4, s4
  ADDW s4, s5, s8
  ADDI s5, zero, 114
  LW t4, 132(sp)
  MULW s8, t4, s5
  ADDW s5, s4, s8
  ADDI s4, zero, 38
  LW t4, 128(sp)
  MULW s8, t4, s4
  ADDW s4, s5, s8
  ADDI s5, zero, -21
  LW t4, 136(sp)
  MULW s8, t4, s5
  ADDW s5, s4, s8
  ADDI s4, zero, 112
  LW t4, 140(sp)
  MULW s8, t4, s4
  ADDW s4, s5, s8
  ADDI s5, zero, 114
  LW t4, 144(sp)
  MULW s8, t4, s5
  ADDW s5, s4, s8
  ADDI s4, zero, 112
  LW t4, 148(sp)
  MULW s8, t4, s4
  ADDW s4, s5, s8
  ADDI s5, zero, -10
  LW t4, 152(sp)
  MULW s8, t4, s5
  ADDW s5, s4, s8
  ADDI s4, zero, -16
  LW t4, 156(sp)
  MULW s8, t4, s4
  ADDW s4, s5, s8
  ADDI s5, zero, -50
  LW t4, 160(sp)
  MULW s8, t4, s5
  ADDW s5, s4, s8
  ADDI s4, zero, -112
  LW t4, 164(sp)
  MULW s8, t4, s4
  ADDW s4, s5, s8
  ADDI s5, zero, -116
  LW t4, 168(sp)
  MULW s8, t4, s5
  ADDW s5, s4, s8
  ADDI s4, zero, -54
  LW t4, 172(sp)
  MULW s8, t4, s4
  ADDW s4, s5, s8
  ADDI s5, zero, 82
  LW t4, 176(sp)
  MULW s8, t4, s5
  ADDW s5, s4, s8
  ADDI s4, zero, -72
  LW t4, 180(sp)
  MULW s8, t4, s4
  ADDW t4, s5, s8
  SW t4, 300(sp)
  ADDI s5, zero, 127
  LW t4, 300(sp)
  SLT s8, s5, t4
  BNE s8, zero, bb46
  JAL zero, bb47
bb19:
  LW t4, 296(sp)
  ADD s8, t4, zero
  ADDI s7, zero, 32
  MULW s6, s8, s7
  LW t3, 292(sp)
  ADDW t4, t3, s6
  SW t4, 304(sp)
  ADDI s6, zero, 15
  LW t4, 200(sp)
  MULW s8, t4, s6
  ADDI s6, zero, -77
  LW t4, 196(sp)
  MULW s3, t4, s6
  ADDW s6, s8, s3
  ADDI s3, zero, 66
  LW t4, 192(sp)
  MULW s8, t4, s3
  ADDW s3, s6, s8
  ADDI s6, zero, -90
  LW t4, 188(sp)
  MULW s8, t4, s6
  ADDW s6, s3, s8
  ADDI s3, zero, -6
  LW t4, 184(sp)
  MULW s8, t4, s3
  ADDW s3, s6, s8
  ADDI s6, zero, -30
  LW t4, 100(sp)
  MULW s8, t4, s6
  ADDW s6, s3, s8
  ADDI s3, zero, -8
  LW t4, 104(sp)
  MULW s8, t4, s3
  ADDW s3, s6, s8
  ADDI s6, zero, 81
  LW t4, 108(sp)
  MULW s8, t4, s6
  ADDW s6, s3, s8
  ADDI s3, zero, 2
  LW t4, 112(sp)
  MULW s8, t4, s3
  ADDW s3, s6, s8
  ADDI s6, zero, -110
  LW t4, 116(sp)
  MULW s8, t4, s6
  ADDW s6, s3, s8
  ADDI s3, zero, -95
  LW t4, 120(sp)
  MULW s8, t4, s3
  ADDW s3, s6, s8
  ADDI s6, zero, 59
  LW t4, 132(sp)
  MULW s8, t4, s6
  ADDW s6, s3, s8
  ADDI s3, zero, 52
  LW t4, 128(sp)
  MULW s8, t4, s3
  ADDW s3, s6, s8
  ADDI s6, zero, 15
  LW t4, 136(sp)
  MULW s8, t4, s6
  ADDW s6, s3, s8
  ADDI s3, zero, 55
  LW t4, 140(sp)
  MULW s8, t4, s3
  ADDW s3, s6, s8
  ADDI s6, zero, -33
  LW t4, 144(sp)
  MULW s8, t4, s6
  ADDW s6, s3, s8
  ADDI s3, zero, 14
  LW t4, 148(sp)
  MULW s8, t4, s3
  ADDW s3, s6, s8
  ADDI s6, zero, 58
  LW t4, 152(sp)
  MULW s8, t4, s6
  ADDW s6, s3, s8
  ADDI s3, zero, 67
  LW t4, 156(sp)
  MULW s8, t4, s3
  ADDW s3, s6, s8
  ADDI s6, zero, 86
  LW t4, 160(sp)
  MULW s8, t4, s6
  ADDW s6, s3, s8
  ADDI s3, zero, -79
  LW t4, 164(sp)
  MULW s8, t4, s3
  ADDW s3, s6, s8
  ADDI s6, zero, 48
  LW t4, 168(sp)
  MULW s8, t4, s6
  ADDW s6, s3, s8
  ADDI s3, zero, -13
  LW t4, 172(sp)
  MULW s8, t4, s3
  ADDW s3, s6, s8
  ADDI s6, zero, -15
  LW t4, 176(sp)
  MULW s8, t4, s6
  ADDW s6, s3, s8
  ADDI s3, zero, 66
  LW t4, 180(sp)
  MULW s8, t4, s3
  ADDW t4, s6, s8
  SW t4, 312(sp)
  ADDI s6, zero, 127
  LW t4, 312(sp)
  SLT s8, s6, t4
  BNE s8, zero, bb50
  JAL zero, bb51
bb20:
  LW t4, 308(sp)
  ADD s8, t4, zero
  ADDI s9, zero, -95
  MULW s10, s8, s9
  LW t3, 304(sp)
  ADDW t4, t3, s10
  SW t4, 320(sp)
  ADDI s9, zero, 33
  LW t4, 200(sp)
  MULW s10, t4, s9
  LW t4, 268(sp)
  ADDW s9, s10, t4
  ADDI s10, zero, 67
  LW t4, 192(sp)
  MULW s11, t4, s10
  ADDW s10, s9, s11
  ADDI s9, zero, 30
  LW t4, 188(sp)
  MULW s11, t4, s9
  ADDW s9, s10, s11
  ADDI s10, zero, -2
  LW t4, 184(sp)
  MULW s11, t4, s10
  ADDW s10, s9, s11
  ADDI s9, zero, 65
  LW t4, 100(sp)
  MULW s11, t4, s9
  ADDW s9, s10, s11
  ADDI s10, zero, 120
  LW t4, 104(sp)
  MULW s11, t4, s10
  ADDW s10, s9, s11
  ADDI s9, zero, -13
  LW t4, 108(sp)
  MULW s11, t4, s9
  ADDW s9, s10, s11
  ADDI s10, zero, 18
  LW t4, 112(sp)
  MULW s11, t4, s10
  ADDW s10, s9, s11
  ADDI s9, zero, 5
  LW t4, 116(sp)
  MULW s11, t4, s9
  ADDW s9, s10, s11
  ADDI s10, zero, 104
  LW t4, 120(sp)
  MULW s11, t4, s10
  ADDW s10, s9, s11
  ADDI s9, zero, -119
  LW t4, 132(sp)
  MULW s11, t4, s9
  ADDW s9, s10, s11
  ADDI s10, zero, -7
  LW t3, 128(sp)
  MULW t4, t3, s10
  SW t4, 316(sp)
  LW t4, 316(sp)
  ADDW s10, s9, t4
  ADDI s9, zero, 71
  LW t4, 136(sp)
  MULW s0, t4, s9
  ADDW s9, s10, s0
  ADDI s0, zero, 107
  LW t4, 140(sp)
  MULW s10, t4, s0
  ADDW s0, s9, s10
  ADDI s9, zero, 24
  LW t4, 144(sp)
  MULW s10, t4, s9
  ADDW s9, s0, s10
  ADDI s0, zero, 82
  LW t4, 148(sp)
  MULW s10, t4, s0
  ADDW s0, s9, s10
  ADDI s9, zero, -96
  LW t4, 152(sp)
  MULW s10, t4, s9
  ADDW s9, s0, s10
  ADDI s0, zero, -104
  LW t4, 156(sp)
  MULW s10, t4, s0
  ADDW s0, s9, s10
  ADDI s9, zero, -121
  LW t4, 160(sp)
  MULW s10, t4, s9
  ADDW s9, s0, s10
  LW t4, 232(sp)
  ADDW s0, s9, t4
  ADDI s9, zero, 97
  LW t4, 168(sp)
  MULW s10, t4, s9
  ADDW s9, s0, s10
  ADDI s0, zero, 83
  LW t4, 172(sp)
  MULW s10, t4, s0
  ADDW s0, s9, s10
  ADDI s9, zero, 46
  LW t4, 176(sp)
  MULW s10, t4, s9
  ADDW s9, s0, s10
  ADDI s0, zero, -84
  LW t4, 180(sp)
  MULW s10, t4, s0
  ADDW s0, s9, s10
  ADDI s9, zero, 127
  SLT s10, s9, s0
  BNE s10, zero, bb54
  JAL zero, bb55
bb21:
  LW t4, 324(sp)
  ADD s10, t4, zero
  ADDI s5, zero, -50
  MULW s4, s10, s5
  LW t4, 320(sp)
  ADDW s5, t4, s4
  ADDI s4, zero, -29
  LW t4, 200(sp)
  MULW s10, t4, s4
  ADDI s4, zero, 7
  LW t4, 196(sp)
  MULW s7, t4, s4
  ADDW s4, s10, s7
  LW t4, 236(sp)
  ADDW s7, s4, t4
  ADDI s4, zero, 38
  LW t4, 188(sp)
  MULW s10, t4, s4
  ADDW s4, s7, s10
  ADDI s7, zero, -90
  LW t4, 184(sp)
  MULW s10, t4, s7
  ADDW s7, s4, s10
  LW t4, 288(sp)
  ADDW s4, s7, t4
  ADDI s7, zero, -32
  LW t4, 104(sp)
  MULW s10, t4, s7
  ADDW s7, s4, s10
  ADDI s4, zero, 37
  LW t4, 108(sp)
  MULW s10, t4, s4
  ADDW s4, s7, s10
  ADDI s7, zero, 36
  LW t4, 112(sp)
  MULW s10, t4, s7
  ADDW s7, s4, s10
  LW t4, 284(sp)
  ADDW s4, s7, t4
  ADDI s7, zero, -125
  LW t4, 120(sp)
  MULW s10, t4, s7
  ADDW s7, s4, s10
  ADDI s4, zero, -46
  LW t4, 132(sp)
  MULW s10, t4, s4
  ADDW s4, s7, s10
  ADDI s7, zero, -70
  LW t4, 128(sp)
  MULW s10, t4, s7
  ADDW s7, s4, s10
  ADDI s4, zero, 37
  LW t4, 136(sp)
  MULW s10, t4, s4
  ADDW s4, s7, s10
  ADDI s7, zero, -73
  LW t4, 140(sp)
  MULW s10, t4, s7
  ADDW s7, s4, s10
  ADDI s4, zero, -34
  LW t4, 144(sp)
  MULW s10, t4, s4
  ADDW s4, s7, s10
  ADDI s7, zero, -87
  LW t4, 148(sp)
  MULW s10, t4, s7
  ADDW s7, s4, s10
  ADDI s4, zero, -75
  LW t4, 152(sp)
  MULW s10, t4, s4
  ADDW s4, s7, s10
  ADDI s7, zero, 71
  LW t4, 156(sp)
  MULW s10, t4, s7
  ADDW s7, s4, s10
  ADDI s4, zero, -77
  LW t4, 160(sp)
  MULW s10, t4, s4
  ADDW s4, s7, s10
  ADDI s7, zero, 53
  LW t4, 164(sp)
  MULW s10, t4, s7
  ADDW s7, s4, s10
  ADDI s4, zero, 37
  LW t4, 168(sp)
  MULW s10, t4, s4
  ADDW s4, s7, s10
  ADDI s7, zero, -103
  LW t4, 172(sp)
  MULW s10, t4, s7
  ADDW s7, s4, s10
  ADDI s4, zero, -13
  LW t4, 176(sp)
  MULW s10, t4, s4
  ADDW s4, s7, s10
  ADDI s7, zero, -114
  LW t4, 180(sp)
  MULW s10, t4, s7
  ADDW s7, s4, s10
  ADDI s4, zero, 127
  SLT s10, s4, s7
  BNE s10, zero, bb58
  JAL zero, bb59
bb22:
  ADD s10, s4, zero
  ADDI s6, zero, -23
  MULW s3, s10, s6
  ADDW s6, s5, s3
  ADDI s3, zero, 67
  LW t4, 200(sp)
  MULW s10, t4, s3
  ADDI s3, zero, 42
  LW t4, 196(sp)
  MULW s11, t4, s3
  ADDW s3, s10, s11
  ADDI s10, zero, 41
  LW t4, 192(sp)
  MULW s11, t4, s10
  ADDW s10, s3, s11
  ADDI s3, zero, -123
  LW t4, 188(sp)
  MULW s11, t4, s3
  ADDW s3, s10, s11
  ADDI s10, zero, -92
  LW t4, 184(sp)
  MULW s11, t4, s10
  ADDW s10, s3, s11
  ADDI s3, zero, 10
  LW t4, 100(sp)
  MULW s11, t4, s3
  ADDW s3, s10, s11
  ADDI s10, zero, -77
  LW t4, 104(sp)
  MULW s11, t4, s10
  ADDW s10, s3, s11
  ADDI s3, zero, 75
  LW t4, 108(sp)
  MULW s11, t4, s3
  ADDW s3, s10, s11
  ADDI s10, zero, 96
  LW t4, 112(sp)
  MULW s11, t4, s10
  ADDW s10, s3, s11
  ADDI s3, zero, -51
  LW t4, 116(sp)
  MULW s11, t4, s3
  ADDW s3, s10, s11
  ADDI s10, zero, 109
  LW t4, 120(sp)
  MULW s11, t4, s10
  ADDW s10, s3, s11
  ADDI s3, zero, -74
  LW t4, 132(sp)
  MULW s11, t4, s3
  ADDW s3, s10, s11
  LW t4, 316(sp)
  ADDW s10, s3, t4
  ADDI s3, zero, -122
  LW t4, 136(sp)
  MULW s11, t4, s3
  ADDW s3, s10, s11
  ADDI s10, zero, 67
  LW t4, 140(sp)
  MULW s11, t4, s10
  ADDW s10, s3, s11
  ADDI s3, zero, 47
  LW t4, 144(sp)
  MULW s11, t4, s3
  ADDW s3, s10, s11
  ADDI s10, zero, 22
  LW t4, 148(sp)
  MULW s11, t4, s10
  ADDW s10, s3, s11
  ADDI s3, zero, -68
  LW t4, 152(sp)
  MULW s11, t4, s3
  ADDW s3, s10, s11
  ADDI s10, zero, 38
  LW t4, 156(sp)
  MULW s11, t4, s10
  ADDW s10, s3, s11
  ADDI s3, zero, 29
  LW t4, 160(sp)
  MULW s11, t4, s3
  ADDW s3, s10, s11
  ADDI s10, zero, 115
  LW t4, 164(sp)
  MULW s11, t4, s10
  ADDW s10, s3, s11
  ADDI s3, zero, -121
  LW t4, 168(sp)
  MULW s11, t4, s3
  ADDW s3, s10, s11
  ADDI s10, zero, 36
  LW t4, 172(sp)
  MULW s11, t4, s10
  ADDW s10, s3, s11
  ADDI s3, zero, -49
  LW t4, 176(sp)
  MULW s11, t4, s3
  ADDW s3, s10, s11
  ADDI s10, zero, 85
  LW t4, 180(sp)
  MULW s11, t4, s10
  ADDW s10, s3, s11
  ADDI s3, zero, 127
  SLT s11, s3, s10
  BNE s11, zero, bb62
  JAL zero, bb63
bb23:
  ADD s11, s3, zero
  ADDI s8, zero, 46
  MULW s9, s11, s8
  ADDW s8, s6, s9
  SLT s9, zero, s8
  BNE s9, zero, bb24
  JAL zero, bb25
bb24:
  ADDI s8, zero, 1
  JAL zero, bb7
bb25:
  ADD s8, zero, zero
  JAL zero, bb7
bb26:
  ADDI t4, zero, 127
  SW t4, 212(sp)
  JAL zero, bb14
bb27:
  LW t4, 216(sp)
  SLT s0, t4, zero
  BNE s0, zero, bb28
  JAL zero, bb29
bb28:
  ADD t4, zero, zero
  SW t4, 212(sp)
  JAL zero, bb14
bb29:
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 212(sp)
  JAL zero, bb14
bb30:
  ADDI t4, zero, 127
  SW t4, 224(sp)
  JAL zero, bb15
bb31:
  LW t4, 228(sp)
  SLT s0, t4, zero
  BNE s0, zero, bb32
  JAL zero, bb33
bb32:
  ADD t4, zero, zero
  SW t4, 224(sp)
  JAL zero, bb15
bb33:
  LW t3, 228(sp)
  ADD t4, t3, zero
  SW t4, 224(sp)
  JAL zero, bb15
bb34:
  ADDI t4, zero, 127
  SW t4, 244(sp)
  JAL zero, bb16
bb35:
  LW t4, 248(sp)
  SLT s0, t4, zero
  BNE s0, zero, bb36
  JAL zero, bb37
bb36:
  ADD t4, zero, zero
  SW t4, 244(sp)
  JAL zero, bb16
bb37:
  LW t3, 248(sp)
  ADD t4, t3, zero
  SW t4, 244(sp)
  JAL zero, bb16
bb38:
  ADDI t4, zero, 127
  SW t4, 260(sp)
  JAL zero, bb17
bb39:
  LW t4, 264(sp)
  SLT s0, t4, zero
  BNE s0, zero, bb40
  JAL zero, bb41
bb40:
  ADD t4, zero, zero
  SW t4, 260(sp)
  JAL zero, bb17
bb41:
  LW t3, 264(sp)
  ADD t4, t3, zero
  SW t4, 260(sp)
  JAL zero, bb17
bb42:
  ADDI t4, zero, 127
  SW t4, 276(sp)
  JAL zero, bb18
bb43:
  LW t4, 280(sp)
  SLT s0, t4, zero
  BNE s0, zero, bb44
  JAL zero, bb45
bb44:
  ADD t4, zero, zero
  SW t4, 276(sp)
  JAL zero, bb18
bb45:
  LW t3, 280(sp)
  ADD t4, t3, zero
  SW t4, 276(sp)
  JAL zero, bb18
bb46:
  ADDI t4, zero, 127
  SW t4, 296(sp)
  JAL zero, bb19
bb47:
  LW t4, 300(sp)
  SLT s0, t4, zero
  BNE s0, zero, bb48
  JAL zero, bb49
bb48:
  ADD t4, zero, zero
  SW t4, 296(sp)
  JAL zero, bb19
bb49:
  LW t3, 300(sp)
  ADD t4, t3, zero
  SW t4, 296(sp)
  JAL zero, bb19
bb50:
  ADDI t4, zero, 127
  SW t4, 308(sp)
  JAL zero, bb20
bb51:
  LW t4, 312(sp)
  SLT s0, t4, zero
  BNE s0, zero, bb52
  JAL zero, bb53
bb52:
  ADD t4, zero, zero
  SW t4, 308(sp)
  JAL zero, bb20
bb53:
  LW t3, 312(sp)
  ADD t4, t3, zero
  SW t4, 308(sp)
  JAL zero, bb20
bb54:
  ADDI t4, zero, 127
  SW t4, 324(sp)
  JAL zero, bb21
bb55:
  SLT s1, s0, zero
  BNE s1, zero, bb56
  JAL zero, bb57
bb56:
  ADD t4, zero, zero
  SW t4, 324(sp)
  JAL zero, bb21
bb57:
  ADD t4, s0, zero
  SW t4, 324(sp)
  JAL zero, bb21
bb58:
  ADDI s4, zero, 127
  JAL zero, bb22
bb59:
  SLT s1, s7, zero
  BNE s1, zero, bb60
  JAL zero, bb61
bb60:
  ADD s4, zero, zero
  JAL zero, bb22
bb61:
  ADD s4, s7, zero
  JAL zero, bb22
bb62:
  ADDI s3, zero, 127
  JAL zero, bb23
bb63:
  SLT s1, s10, zero
  BNE s1, zero, bb64
  JAL zero, bb65
bb64:
  ADD s3, zero, zero
  JAL zero, bb23
bb65:
  ADD s3, s10, zero
  JAL zero, bb23
model:
  ADDI sp, sp, -288
  SD ra, 176(sp)
  SD s1, 184(sp)
  SD s4, 192(sp)
  SD s0, 200(sp)
  SD s5, 208(sp)
  SD s7, 216(sp)
  SD s10, 224(sp)
  SD s2, 232(sp)
  SD s3, 240(sp)
  SD s6, 248(sp)
  SD s8, 256(sp)
  SD s9, 264(sp)
  SD s11, 272(sp)
  ADD s0, a0, zero
  LW t4, 0(s0)
  SW t4, 100(sp)
  ADDI s2, zero, 85
  LW t4, 100(sp)
  MULW s3, t4, s2
  ADDI s2, s0, 4
  LW t4, 0(s2)
  SW t4, 96(sp)
  ADDI s2, zero, 23
  LW t4, 96(sp)
  MULW s5, t4, s2
  ADDW s2, s3, s5
  ADDI s3, s0, 8
  LW t4, 0(s3)
  SW t4, 92(sp)
  ADDI s3, zero, -82
  LW t4, 92(sp)
  MULW s6, t4, s3
  ADDW s3, s2, s6
  ADDI s2, s0, 12
  LW t4, 0(s2)
  SW t4, 88(sp)
  ADDI s2, zero, -103
  LW t4, 88(sp)
  MULW s7, t4, s2
  ADDW s2, s3, s7
  ADDI s3, s0, 16
  LW t4, 0(s3)
  SW t4, 84(sp)
  ADDI s3, zero, -123
  LW t4, 84(sp)
  MULW s8, t4, s3
  ADDW s3, s2, s8
  ADDI s2, s0, 20
  LW t4, 0(s2)
  SW t4, 80(sp)
  ADDI s2, zero, 64
  LW t4, 80(sp)
  MULW s9, t4, s2
  ADDW s2, s3, s9
  ADDI s3, s0, 24
  LW t4, 0(s3)
  SW t4, 76(sp)
  ADDI s3, zero, -120
  LW t4, 76(sp)
  MULW s10, t4, s3
  ADDW s3, s2, s10
  ADDI s2, s0, 28
  LW t4, 0(s2)
  SW t4, 72(sp)
  ADDI s2, zero, 50
  LW t4, 72(sp)
  MULW s11, t4, s2
  ADDW s2, s3, s11
  ADDI s3, s0, 32
  LW t4, 0(s3)
  SW t4, 68(sp)
  ADDI s3, zero, -59
  LW t4, 68(sp)
  MULW t0, t4, s3
  ADDW s3, s2, t0
  ADDI s2, s0, 36
  LW t4, 0(s2)
  SW t4, 64(sp)
  ADDI s2, zero, 47
  LW t4, 64(sp)
  MULW t1, t4, s2
  ADDW s2, s3, t1
  ADDI s3, s0, 40
  LW t4, 0(s3)
  SW t4, 60(sp)
  ADDI s3, zero, -111
  LW t4, 60(sp)
  MULW t2, t4, s3
  ADDW s3, s2, t2
  ADDI s2, s0, 44
  LW t4, 0(s2)
  SW t4, 56(sp)
  ADDI s2, zero, -67
  LW t3, 56(sp)
  MULW t4, t3, s2
  SW t4, 52(sp)
  LW t4, 52(sp)
  ADDW s2, s3, t4
  ADDI s3, s0, 48
  LW t4, 0(s3)
  SW t4, 48(sp)
  ADDI s3, zero, -106
  LW t4, 48(sp)
  MULW a3, t4, s3
  ADDW s3, s2, a3
  ADDI s2, s0, 52
  LW t4, 0(s2)
  SW t4, 44(sp)
  ADDI s2, zero, -75
  LW t4, 44(sp)
  MULW a4, t4, s2
  ADDW s2, s3, a4
  ADDI s3, s0, 56
  LW t4, 0(s3)
  SW t4, 40(sp)
  ADDI s3, zero, -102
  LW t4, 40(sp)
  MULW a5, t4, s3
  ADDW s3, s2, a5
  ADDI s2, s0, 60
  LW t4, 0(s2)
  SW t4, 36(sp)
  ADDI s2, zero, 34
  LW t4, 36(sp)
  MULW a6, t4, s2
  ADDW s2, s3, a6
  ADDI s3, s0, 64
  LW t4, 0(s3)
  SW t4, 32(sp)
  ADDI s3, zero, -39
  LW t4, 32(sp)
  MULW a7, t4, s3
  ADDW s3, s2, a7
  ADDI s2, s0, 68
  LW t4, 0(s2)
  SW t4, 0(sp)
  ADDI s2, zero, 65
  LW t4, 0(sp)
  MULW a7, t4, s2
  ADDW s2, s3, a7
  ADDI s3, s0, 72
  LW t4, 0(s3)
  SW t4, 4(sp)
  ADDI s3, zero, 47
  LW t4, 4(sp)
  MULW a7, t4, s3
  ADDW s3, s2, a7
  ADDI s2, s0, 76
  LW t4, 0(s2)
  SW t4, 8(sp)
  ADDI s2, zero, 113
  LW t4, 8(sp)
  MULW a7, t4, s2
  ADDW s2, s3, a7
  ADDI s3, s0, 80
  LW t4, 0(s3)
  SW t4, 12(sp)
  ADDI s3, zero, 110
  LW t4, 12(sp)
  MULW a7, t4, s3
  ADDW s3, s2, a7
  ADDI s2, s0, 84
  LW t4, 0(s2)
  SW t4, 16(sp)
  ADDI s2, zero, 47
  LW t4, 16(sp)
  MULW a7, t4, s2
  ADDW s2, s3, a7
  ADDI s3, s0, 88
  LW t4, 0(s3)
  SW t4, 20(sp)
  ADDI s3, zero, -4
  LW t4, 20(sp)
  MULW a7, t4, s3
  ADDW s3, s2, a7
  ADDI s2, s0, 92
  LW t4, 0(s2)
  SW t4, 24(sp)
  ADDI s2, zero, 80
  LW t4, 24(sp)
  MULW a7, t4, s2
  ADDW s2, s3, a7
  ADDI s3, s0, 96
  LW t4, 0(s3)
  SW t4, 28(sp)
  ADDI s3, zero, 46
  LW t4, 28(sp)
  MULW a7, t4, s3
  ADDW t4, s2, a7
  SW t4, 108(sp)
  ADDI s2, zero, 127
  LW t4, 108(sp)
  SLT a7, s2, t4
  BNE a7, zero, bb79
  JAL zero, bb80
bb67:
  LW t4, 104(sp)
  ADD a7, t4, zero
  ADDI s0, zero, 39
  MULW t4, a7, s0
  SW t4, 112(sp)
  ADDI s0, zero, -106
  LW t4, 100(sp)
  MULW a7, t4, s0
  ADDI s0, zero, 126
  LW t4, 96(sp)
  MULW a5, t4, s0
  ADDW s0, a7, a5
  ADDI a5, zero, -18
  LW t4, 92(sp)
  MULW a7, t4, a5
  ADDW a5, s0, a7
  ADDI s0, zero, -31
  LW t4, 88(sp)
  MULW a7, t4, s0
  ADDW s0, a5, a7
  ADDI a5, zero, -8
  LW t4, 84(sp)
  MULW a7, t4, a5
  ADDW a5, s0, a7
  ADDI s0, zero, 47
  LW t4, 80(sp)
  MULW a7, t4, s0
  ADDW s0, a5, a7
  ADDI a5, zero, -4
  LW t4, 76(sp)
  MULW a7, t4, a5
  ADDW a5, s0, a7
  ADDI s0, zero, 67
  LW t4, 72(sp)
  MULW a7, t4, s0
  ADDW s0, a5, a7
  ADDI a5, zero, -94
  LW t4, 68(sp)
  MULW a7, t4, a5
  ADDW a5, s0, a7
  ADDI s0, zero, -121
  LW t4, 64(sp)
  MULW a7, t4, s0
  ADDW s0, a5, a7
  ADDI a5, zero, 7
  LW t4, 60(sp)
  MULW a7, t4, a5
  ADDW a5, s0, a7
  ADDI s0, zero, -21
  LW t4, 56(sp)
  MULW a7, t4, s0
  ADDW s0, a5, a7
  ADDI a5, zero, -60
  LW t4, 48(sp)
  MULW a7, t4, a5
  ADDW a5, s0, a7
  ADDI s0, zero, -43
  LW t4, 44(sp)
  MULW a7, t4, s0
  ADDW s0, a5, a7
  ADDI a5, zero, 105
  LW t4, 40(sp)
  MULW a7, t4, a5
  ADDW a5, s0, a7
  ADDI s0, zero, -42
  LW t4, 36(sp)
  MULW a7, t4, s0
  ADDW s0, a5, a7
  ADDI a5, zero, 87
  LW t4, 32(sp)
  MULW a7, t4, a5
  ADDW a5, s0, a7
  ADDI s0, zero, 29
  LW t4, 0(sp)
  MULW a7, t4, s0
  ADDW s0, a5, a7
  ADDI a5, zero, -106
  LW t4, 4(sp)
  MULW a7, t4, a5
  ADDW a5, s0, a7
  ADDI s0, zero, -31
  LW t4, 8(sp)
  MULW a7, t4, s0
  ADDW s0, a5, a7
  ADDI a5, zero, -110
  LW t4, 12(sp)
  MULW a7, t4, a5
  ADDW a5, s0, a7
  ADDI s0, zero, -100
  LW t4, 16(sp)
  MULW a7, t4, s0
  ADDW s0, a5, a7
  ADDI a5, zero, -22
  LW t4, 20(sp)
  MULW a7, t4, a5
  ADDW a5, s0, a7
  ADDI s0, zero, -75
  LW t4, 24(sp)
  MULW a7, t4, s0
  ADDW s0, a5, a7
  ADDI a5, zero, -125
  LW t4, 28(sp)
  MULW a7, t4, a5
  ADDW t4, s0, a7
  SW t4, 120(sp)
  ADDI s0, zero, 127
  LW t4, 120(sp)
  SLT a7, s0, t4
  BNE a7, zero, bb83
  JAL zero, bb84
bb68:
  LW t4, 116(sp)
  ADD a7, t4, zero
  ADDI a4, zero, 77
  MULW a3, a7, a4
  LW t3, 112(sp)
  ADDW t4, t3, a3
  SW t4, 132(sp)
  ADDI a3, zero, 26
  LW t4, 100(sp)
  MULW a7, t4, a3
  ADDI a3, zero, 76
  LW t4, 96(sp)
  MULW a2, t4, a3
  ADDW a3, a7, a2
  ADDI a2, zero, -70
  LW t3, 92(sp)
  MULW t4, t3, a2
  SW t4, 128(sp)
  LW t4, 128(sp)
  ADDW a2, a3, t4
  ADDI a3, zero, 29
  LW t4, 88(sp)
  MULW a1, t4, a3
  ADDW a3, a2, a1
  ADDI a1, zero, -95
  LW t4, 84(sp)
  MULW a2, t4, a1
  ADDW a1, a3, a2
  ADDI a2, zero, 96
  LW t4, 80(sp)
  MULW a3, t4, a2
  ADDW a2, a1, a3
  ADDI a1, zero, 52
  LW t4, 76(sp)
  MULW a3, t4, a1
  ADDW a1, a2, a3
  ADDI a2, zero, -68
  LW t4, 72(sp)
  MULW a3, t4, a2
  ADDW a2, a1, a3
  ADDI a1, zero, -5
  LW t4, 68(sp)
  MULW a3, t4, a1
  ADDW a1, a2, a3
  ADDI a2, zero, 34
  LW t4, 64(sp)
  MULW a3, t4, a2
  ADDW a2, a1, a3
  ADDI a1, zero, -34
  LW t4, 60(sp)
  MULW a3, t4, a1
  ADDW a1, a2, a3
  ADDI a2, zero, 102
  LW t4, 56(sp)
  MULW a3, t4, a2
  ADDW a2, a1, a3
  ADDI a1, zero, 6
  LW t4, 48(sp)
  MULW a3, t4, a1
  ADDW a1, a2, a3
  ADDI a2, zero, -38
  LW t4, 44(sp)
  MULW a3, t4, a2
  ADDW a2, a1, a3
  ADDI a1, zero, 27
  LW t4, 40(sp)
  MULW a3, t4, a1
  ADDW a1, a2, a3
  ADDI a2, zero, 110
  LW t4, 36(sp)
  MULW a3, t4, a2
  ADDW a2, a1, a3
  ADDI a1, zero, 116
  LW t4, 32(sp)
  MULW a3, t4, a1
  ADDW a1, a2, a3
  ADDI a2, zero, 39
  LW t4, 0(sp)
  MULW a3, t4, a2
  ADDW a2, a1, a3
  ADDI a1, zero, -63
  LW t4, 4(sp)
  MULW a3, t4, a1
  ADDW a1, a2, a3
  ADDI a2, zero, -99
  LW t4, 8(sp)
  MULW a3, t4, a2
  ADDW a2, a1, a3
  ADDI a1, zero, 65
  LW t3, 12(sp)
  MULW t4, t3, a1
  SW t4, 124(sp)
  LW t4, 124(sp)
  ADDW a1, a2, t4
  ADDI a2, zero, 120
  LW t4, 16(sp)
  MULW t2, t4, a2
  ADDW a2, a1, t2
  ADDI t2, zero, -39
  LW t4, 20(sp)
  MULW a1, t4, t2
  ADDW t2, a2, a1
  ADDI a1, zero, -6
  LW t4, 24(sp)
  MULW a2, t4, a1
  ADDW a1, t2, a2
  ADDI t2, zero, 94
  LW t4, 28(sp)
  MULW a2, t4, t2
  ADDW t4, a1, a2
  SW t4, 140(sp)
  ADDI a1, zero, 127
  LW t4, 140(sp)
  SLT a2, a1, t4
  BNE a2, zero, bb87
  JAL zero, bb88
bb69:
  LW t4, 136(sp)
  ADD a2, t4, zero
  ADDI t1, zero, 127
  MULW t0, a2, t1
  LW t3, 132(sp)
  ADDW t4, t3, t0
  SW t4, 148(sp)
  ADDI t0, zero, -23
  LW t4, 100(sp)
  MULW a2, t4, t0
  ADDI t0, zero, -63
  LW t4, 96(sp)
  MULW s11, t4, t0
  ADDW t0, a2, s11
  ADDI s11, zero, 49
  LW t4, 92(sp)
  MULW a2, t4, s11
  ADDW s11, t0, a2
  ADDI t0, zero, 50
  LW t4, 88(sp)
  MULW a2, t4, t0
  ADDW t0, s11, a2
  ADDI s11, zero, 72
  LW t4, 84(sp)
  MULW a2, t4, s11
  ADDW s11, t0, a2
  ADDI t0, zero, 85
  LW t4, 80(sp)
  MULW a2, t4, t0
  ADDW t0, s11, a2
  ADDI s11, zero, -30
  LW t4, 76(sp)
  MULW a2, t4, s11
  ADDW s11, t0, a2
  ADDI t0, zero, 12
  LW t4, 72(sp)
  MULW a2, t4, t0
  ADDW t0, s11, a2
  ADDI s11, zero, 125
  LW t3, 68(sp)
  MULW t4, t3, s11
  SW t4, 144(sp)
  LW t4, 144(sp)
  ADDW s11, t0, t4
  ADDI t0, zero, -117
  LW t4, 64(sp)
  MULW s10, t4, t0
  ADDW t0, s11, s10
  ADDI s10, zero, -65
  LW t4, 60(sp)
  MULW s11, t4, s10
  ADDW s10, t0, s11
  LW t4, 52(sp)
  ADDW s11, s10, t4
  ADDI s10, zero, 125
  LW t4, 48(sp)
  MULW t0, t4, s10
  ADDW s10, s11, t0
  ADDI s11, zero, 110
  LW t4, 44(sp)
  MULW t0, t4, s11
  ADDW s11, s10, t0
  ADDI s10, zero, -31
  LW t4, 40(sp)
  MULW t0, t4, s10
  ADDW s10, s11, t0
  ADDI s11, zero, -123
  LW t4, 36(sp)
  MULW t0, t4, s11
  ADDW s11, s10, t0
  ADDI s10, zero, 83
  LW t4, 32(sp)
  MULW t0, t4, s10
  ADDW s10, s11, t0
  ADDI s11, zero, 122
  LW t4, 0(sp)
  MULW t0, t4, s11
  ADDW s11, s10, t0
  ADDI s10, zero, 11
  LW t4, 4(sp)
  MULW t0, t4, s10
  ADDW s10, s11, t0
  ADDI s11, zero, -23
  LW t4, 8(sp)
  MULW t0, t4, s11
  ADDW s11, s10, t0
  ADDI s10, zero, -47
  LW t4, 12(sp)
  MULW t0, t4, s10
  ADDW s10, s11, t0
  ADDI s11, zero, -32
  LW t4, 16(sp)
  MULW t0, t4, s11
  ADDW s11, s10, t0
  ADDI s10, zero, -117
  LW t4, 20(sp)
  MULW t0, t4, s10
  ADDW s10, s11, t0
  ADDI s11, zero, 95
  LW t4, 24(sp)
  MULW t0, t4, s11
  ADDW s11, s10, t0
  ADDI s10, zero, 118
  LW t4, 28(sp)
  MULW t0, t4, s10
  ADDW t4, s11, t0
  SW t4, 156(sp)
  ADDI s11, zero, 127
  LW t4, 156(sp)
  SLT t0, s11, t4
  BNE t0, zero, bb91
  JAL zero, bb92
bb70:
  LW t4, 152(sp)
  ADD t0, t4, zero
  ADDI s9, zero, -106
  MULW s8, t0, s9
  LW t3, 148(sp)
  ADDW t4, t3, s8
  SW t4, 164(sp)
  ADDI s8, zero, 8
  LW t4, 100(sp)
  MULW t0, t4, s8
  ADDI s8, zero, 82
  LW t3, 96(sp)
  MULW t4, t3, s8
  SW t4, 160(sp)
  LW t4, 160(sp)
  ADDW s8, t0, t4
  ADDI t0, zero, -104
  LW t4, 92(sp)
  MULW s6, t4, t0
  ADDW t0, s8, s6
  ADDI s6, zero, 101
  LW t4, 88(sp)
  MULW s8, t4, s6
  ADDW s6, t0, s8
  ADDI s8, zero, -116
  LW t4, 84(sp)
  MULW t0, t4, s8
  ADDW s8, s6, t0
  ADDI s6, zero, -63
  LW t4, 80(sp)
  MULW t0, t4, s6
  ADDW s6, s8, t0
  ADDI s8, zero, -16
  LW t4, 76(sp)
  MULW t0, t4, s8
  ADDW s8, s6, t0
  ADDI s6, zero, -70
  LW t4, 72(sp)
  MULW t0, t4, s6
  ADDW s6, s8, t0
  LW t4, 144(sp)
  ADDW s8, s6, t4
  ADDI s6, zero, 75
  LW t4, 64(sp)
  MULW t0, t4, s6
  ADDW s6, s8, t0
  ADDI s8, zero, 66
  LW t4, 60(sp)
  MULW t0, t4, s8
  ADDW s8, s6, t0
  ADDI s6, zero, -96
  LW t4, 56(sp)
  MULW t0, t4, s6
  ADDW s6, s8, t0
  ADDI s8, zero, -101
  LW t4, 48(sp)
  MULW t0, t4, s8
  ADDW s8, s6, t0
  ADDI s6, zero, -114
  LW t4, 44(sp)
  MULW t0, t4, s6
  ADDW s6, s8, t0
  ADDI s8, zero, 59
  LW t4, 40(sp)
  MULW t0, t4, s8
  ADDW s8, s6, t0
  ADDI s6, zero, 12
  LW t4, 36(sp)
  MULW t0, t4, s6
  ADDW s6, s8, t0
  ADDI s8, zero, 5
  LW t4, 32(sp)
  MULW t0, t4, s8
  ADDW s8, s6, t0
  ADDI s6, zero, -95
  LW t4, 0(sp)
  MULW t0, t4, s6
  ADDW s6, s8, t0
  ADDI s8, zero, 116
  LW t4, 4(sp)
  MULW t0, t4, s8
  ADDW s8, s6, t0
  ADDI s6, zero, -93
  LW t4, 8(sp)
  MULW t0, t4, s6
  ADDW s6, s8, t0
  ADDI s8, zero, 15
  LW t4, 12(sp)
  MULW t0, t4, s8
  ADDW s8, s6, t0
  ADDI s6, zero, 79
  LW t4, 16(sp)
  MULW t0, t4, s6
  ADDW s6, s8, t0
  ADDI s8, zero, 3
  LW t4, 20(sp)
  MULW t0, t4, s8
  ADDW s8, s6, t0
  ADDI s6, zero, 49
  LW t4, 24(sp)
  MULW t0, t4, s6
  ADDW s6, s8, t0
  ADDI s8, zero, -124
  LW t4, 28(sp)
  MULW t0, t4, s8
  ADDW s8, s6, t0
  ADDI s6, zero, 127
  SLT t0, s6, s8
  BNE t0, zero, bb95
  JAL zero, bb96
bb71:
  LW t4, 168(sp)
  ADD t0, t4, zero
  ADDI s5, zero, -3
  MULW s4, t0, s5
  LW t4, 164(sp)
  ADDW s5, t4, s4
  ADDI s4, zero, 81
  LW t4, 100(sp)
  MULW t0, t4, s4
  ADDI s4, zero, 68
  LW t4, 96(sp)
  MULW s1, t4, s4
  ADDW s4, t0, s1
  ADDI s1, zero, -102
  LW t4, 92(sp)
  MULW t0, t4, s1
  ADDW s1, s4, t0
  ADDI s4, zero, -74
  LW t4, 88(sp)
  MULW t0, t4, s4
  ADDW s4, s1, t0
  ADDI s1, zero, 121
  LW t4, 84(sp)
  MULW t0, t4, s1
  ADDW s1, s4, t0
  ADDI s4, zero, -15
  LW t4, 80(sp)
  MULW t0, t4, s4
  ADDW s4, s1, t0
  ADDI s1, zero, 55
  LW t4, 76(sp)
  MULW s2, t4, s1
  ADDW s1, s4, s2
  ADDI s2, zero, 101
  LW t4, 72(sp)
  MULW s4, t4, s2
  ADDW s2, s1, s4
  ADDI s1, zero, -13
  LW t4, 68(sp)
  MULW s4, t4, s1
  ADDW s1, s2, s4
  ADDI s2, zero, -62
  LW t4, 64(sp)
  MULW s4, t4, s2
  ADDW s2, s1, s4
  ADDI s1, zero, 64
  LW t4, 60(sp)
  MULW s3, t4, s1
  ADDW s1, s2, s3
  ADDI s2, zero, 114
  LW t4, 56(sp)
  MULW s3, t4, s2
  ADDW s2, s1, s3
  ADDI s1, zero, 38
  LW t4, 48(sp)
  MULW s3, t4, s1
  ADDW s1, s2, s3
  ADDI s2, zero, -21
  LW t4, 44(sp)
  MULW s3, t4, s2
  ADDW s2, s1, s3
  ADDI s1, zero, 112
  LW t4, 40(sp)
  MULW s3, t4, s1
  ADDW s1, s2, s3
  ADDI s2, zero, 114
  LW t4, 36(sp)
  MULW s3, t4, s2
  ADDW s2, s1, s3
  ADDI s1, zero, 112
  LW t4, 32(sp)
  MULW s3, t4, s1
  ADDW s1, s2, s3
  ADDI s2, zero, -10
  LW t4, 0(sp)
  MULW s3, t4, s2
  ADDW s2, s1, s3
  ADDI s1, zero, -16
  LW t4, 4(sp)
  MULW s3, t4, s1
  ADDW s1, s2, s3
  ADDI s2, zero, -50
  LW t4, 8(sp)
  MULW s3, t4, s2
  ADDW s2, s1, s3
  ADDI s1, zero, -112
  LW t4, 12(sp)
  MULW s3, t4, s1
  ADDW s1, s2, s3
  ADDI s2, zero, -116
  LW t4, 16(sp)
  MULW s3, t4, s2
  ADDW s2, s1, s3
  ADDI s1, zero, -54
  LW t4, 20(sp)
  MULW s3, t4, s1
  ADDW s1, s2, s3
  ADDI s2, zero, 82
  LW t4, 24(sp)
  MULW s3, t4, s2
  ADDW s2, s1, s3
  ADDI s1, zero, -72
  LW t4, 28(sp)
  MULW s3, t4, s1
  ADDW s1, s2, s3
  ADDI s2, zero, 127
  SLT s3, s2, s1
  BNE s3, zero, bb99
  JAL zero, bb100
bb72:
  ADD s3, s2, zero
  ADDI a6, zero, 32
  MULW s0, s3, a6
  ADDW s3, s5, s0
  ADDI s0, zero, 15
  LW t4, 100(sp)
  MULW a6, t4, s0
  ADDI s0, zero, -77
  LW t4, 96(sp)
  MULW a5, t4, s0
  ADDW s0, a6, a5
  ADDI a5, zero, 66
  LW t4, 92(sp)
  MULW a6, t4, a5
  ADDW a5, s0, a6
  ADDI s0, zero, -90
  LW t4, 88(sp)
  MULW a6, t4, s0
  ADDW s0, a5, a6
  ADDI a5, zero, -6
  LW t4, 84(sp)
  MULW a6, t4, a5
  ADDW a5, s0, a6
  ADDI s0, zero, -30
  LW t4, 80(sp)
  MULW a6, t4, s0
  ADDW s0, a5, a6
  ADDI a5, zero, -8
  LW t4, 76(sp)
  MULW a6, t4, a5
  ADDW a5, s0, a6
  ADDI s0, zero, 81
  LW t4, 72(sp)
  MULW a6, t4, s0
  ADDW s0, a5, a6
  ADDI a5, zero, 2
  LW t4, 68(sp)
  MULW a6, t4, a5
  ADDW a5, s0, a6
  ADDI s0, zero, -110
  LW t4, 64(sp)
  MULW a6, t4, s0
  ADDW s0, a5, a6
  ADDI a5, zero, -95
  LW t4, 60(sp)
  MULW a6, t4, a5
  ADDW a5, s0, a6
  ADDI s0, zero, 59
  LW t4, 56(sp)
  MULW a6, t4, s0
  ADDW s0, a5, a6
  ADDI a5, zero, 52
  LW t4, 48(sp)
  MULW a6, t4, a5
  ADDW a5, s0, a6
  ADDI s0, zero, 15
  LW t4, 44(sp)
  MULW a6, t4, s0
  ADDW s0, a5, a6
  ADDI a5, zero, 55
  LW t4, 40(sp)
  MULW a6, t4, a5
  ADDW a5, s0, a6
  ADDI s0, zero, -33
  LW t4, 36(sp)
  MULW a6, t4, s0
  ADDW s0, a5, a6
  ADDI a5, zero, 14
  LW t4, 32(sp)
  MULW a6, t4, a5
  ADDW a5, s0, a6
  ADDI s0, zero, 58
  LW t4, 0(sp)
  MULW a6, t4, s0
  ADDW s0, a5, a6
  ADDI a5, zero, 67
  LW t4, 4(sp)
  MULW a6, t4, a5
  ADDW a5, s0, a6
  ADDI s0, zero, 86
  LW t4, 8(sp)
  MULW a6, t4, s0
  ADDW s0, a5, a6
  ADDI a5, zero, -79
  LW t4, 12(sp)
  MULW a6, t4, a5
  ADDW a5, s0, a6
  ADDI s0, zero, 48
  LW t4, 16(sp)
  MULW a6, t4, s0
  ADDW s0, a5, a6
  ADDI a5, zero, -13
  LW t4, 20(sp)
  MULW a6, t4, a5
  ADDW a5, s0, a6
  ADDI s0, zero, -15
  LW t4, 24(sp)
  MULW a6, t4, s0
  ADDW s0, a5, a6
  ADDI a5, zero, 66
  LW t4, 28(sp)
  MULW a6, t4, a5
  ADDW a5, s0, a6
  ADDI s0, zero, 127
  SLT a6, s0, a5
  BNE a6, zero, bb103
  JAL zero, bb104
bb73:
  ADD a6, s0, zero
  ADDI a3, zero, -95
  MULW a7, a6, a3
  ADDW a3, s3, a7
  ADDI a6, zero, 33
  LW t4, 100(sp)
  MULW a7, t4, a6
  LW t4, 160(sp)
  ADDW a6, a7, t4
  ADDI a7, zero, 67
  LW t4, 92(sp)
  MULW a4, t4, a7
  ADDW a7, a6, a4
  ADDI a4, zero, 30
  LW t4, 88(sp)
  MULW a6, t4, a4
  ADDW a4, a7, a6
  ADDI a6, zero, -2
  LW t4, 84(sp)
  MULW a7, t4, a6
  ADDW a6, a4, a7
  ADDI a4, zero, 65
  LW t4, 80(sp)
  MULW a7, t4, a4
  ADDW a4, a6, a7
  ADDI a6, zero, 120
  LW t4, 76(sp)
  MULW a7, t4, a6
  ADDW a6, a4, a7
  ADDI a4, zero, -13
  LW t4, 72(sp)
  MULW a7, t4, a4
  ADDW a4, a6, a7
  ADDI a6, zero, 18
  LW t4, 68(sp)
  MULW a7, t4, a6
  ADDW a6, a4, a7
  ADDI a4, zero, 5
  LW t4, 64(sp)
  MULW a7, t4, a4
  ADDW a4, a6, a7
  ADDI a6, zero, 104
  LW t4, 60(sp)
  MULW a7, t4, a6
  ADDW a6, a4, a7
  ADDI a4, zero, -119
  LW t4, 56(sp)
  MULW a7, t4, a4
  ADDW a4, a6, a7
  ADDI a6, zero, -7
  LW t4, 48(sp)
  MULW a7, t4, a6
  ADDW a6, a4, a7
  ADDI a4, zero, 71
  LW t4, 44(sp)
  MULW a1, t4, a4
  ADDW a4, a6, a1
  ADDI a1, zero, 107
  LW t4, 40(sp)
  MULW a6, t4, a1
  ADDW a1, a4, a6
  ADDI a4, zero, 24
  LW t4, 36(sp)
  MULW a6, t4, a4
  ADDW a4, a1, a6
  ADDI a1, zero, 82
  LW t4, 32(sp)
  MULW a6, t4, a1
  ADDW a1, a4, a6
  ADDI a4, zero, -96
  LW t4, 0(sp)
  MULW a6, t4, a4
  ADDW a4, a1, a6
  ADDI a1, zero, -104
  LW t4, 4(sp)
  MULW a6, t4, a1
  ADDW a1, a4, a6
  ADDI a4, zero, -121
  LW t4, 8(sp)
  MULW a6, t4, a4
  ADDW a4, a1, a6
  LW t4, 124(sp)
  ADDW a1, a4, t4
  ADDI a4, zero, 97
  LW t4, 16(sp)
  MULW a6, t4, a4
  ADDW a4, a1, a6
  ADDI a1, zero, 83
  LW t4, 20(sp)
  MULW a6, t4, a1
  ADDW a1, a4, a6
  ADDI a4, zero, 46
  LW t4, 24(sp)
  MULW a6, t4, a4
  ADDW a4, a1, a6
  ADDI a1, zero, -84
  LW t4, 28(sp)
  MULW a6, t4, a1
  ADDW a1, a4, a6
  ADDI a4, zero, 127
  SLT a6, a4, a1
  BNE a6, zero, bb107
  JAL zero, bb108
bb74:
  ADD a6, a4, zero
  ADDI t2, zero, -50
  MULW a2, a6, t2
  ADDW t2, a3, a2
  ADDI a2, zero, -29
  LW t4, 100(sp)
  MULW a6, t4, a2
  ADDI a2, zero, 7
  LW t4, 96(sp)
  MULW t1, t4, a2
  ADDW a2, a6, t1
  LW t4, 128(sp)
  ADDW t1, a2, t4
  ADDI a2, zero, 38
  LW t4, 88(sp)
  MULW a6, t4, a2
  ADDW a2, t1, a6
  ADDI t1, zero, -90
  LW t4, 84(sp)
  MULW a6, t4, t1
  ADDW t1, a2, a6
  ADDW a2, t1, t0
  ADDI t1, zero, -32
  LW t4, 76(sp)
  MULW a6, t4, t1
  ADDW t1, a2, a6
  ADDI a2, zero, 37
  LW t4, 72(sp)
  MULW a6, t4, a2
  ADDW a2, t1, a6
  ADDI t1, zero, 36
  LW t4, 68(sp)
  MULW a6, t4, t1
  ADDW t1, a2, a6
  ADDW a2, t1, s4
  ADDI t1, zero, -125
  LW t4, 60(sp)
  MULW a6, t4, t1
  ADDW t1, a2, a6
  ADDI a2, zero, -46
  LW t4, 56(sp)
  MULW a6, t4, a2
  ADDW a2, t1, a6
  ADDI t1, zero, -70
  LW t4, 48(sp)
  MULW a6, t4, t1
  ADDW t1, a2, a6
  ADDI a2, zero, 37
  LW t4, 44(sp)
  MULW a6, t4, a2
  ADDW a2, t1, a6
  ADDI t1, zero, -73
  LW t4, 40(sp)
  MULW a6, t4, t1
  ADDW t1, a2, a6
  ADDI a2, zero, -34
  LW t4, 36(sp)
  MULW a6, t4, a2
  ADDW a2, t1, a6
  ADDI t1, zero, -87
  LW t4, 32(sp)
  MULW a6, t4, t1
  ADDW t1, a2, a6
  ADDI a2, zero, -75
  LW t4, 0(sp)
  MULW a6, t4, a2
  ADDW a2, t1, a6
  ADDI t1, zero, 71
  LW t4, 4(sp)
  MULW a6, t4, t1
  ADDW t1, a2, a6
  ADDI a2, zero, -77
  LW t4, 8(sp)
  MULW a6, t4, a2
  ADDW a2, t1, a6
  ADDI t1, zero, 53
  LW t4, 12(sp)
  MULW a6, t4, t1
  ADDW t1, a2, a6
  ADDI a2, zero, 37
  LW t4, 16(sp)
  MULW a6, t4, a2
  ADDW a2, t1, a6
  ADDI t1, zero, -103
  LW t4, 20(sp)
  MULW a6, t4, t1
  ADDW t1, a2, a6
  ADDI a2, zero, -13
  LW t4, 24(sp)
  MULW a6, t4, a2
  ADDW a2, t1, a6
  ADDI t1, zero, -114
  LW t4, 28(sp)
  MULW a6, t4, t1
  ADDW t1, a2, a6
  ADDI a2, zero, 127
  SLT a6, a2, t1
  BNE a6, zero, bb111
  JAL zero, bb112
bb75:
  ADD a6, a2, zero
  ADDI s11, zero, -23
  MULW s10, a6, s11
  ADDW s11, t2, s10
  ADDI s10, zero, 67
  LW t4, 100(sp)
  MULW a6, t4, s10
  ADDI s10, zero, 42
  LW t4, 96(sp)
  MULW s7, t4, s10
  ADDW s10, a6, s7
  ADDI s7, zero, 41
  LW t4, 92(sp)
  MULW a6, t4, s7
  ADDW s7, s10, a6
  ADDI s10, zero, -123
  LW t4, 88(sp)
  MULW a6, t4, s10
  ADDW s10, s7, a6
  ADDI s7, zero, -92
  LW t4, 84(sp)
  MULW a6, t4, s7
  ADDW s7, s10, a6
  ADDI s10, zero, 10
  LW t4, 80(sp)
  MULW a6, t4, s10
  ADDW s10, s7, a6
  ADDI s7, zero, -77
  LW t4, 76(sp)
  MULW a6, t4, s7
  ADDW s7, s10, a6
  ADDI s10, zero, 75
  LW t4, 72(sp)
  MULW a6, t4, s10
  ADDW s10, s7, a6
  ADDI s7, zero, 96
  LW t4, 68(sp)
  MULW a6, t4, s7
  ADDW s7, s10, a6
  ADDI s10, zero, -51
  LW t4, 64(sp)
  MULW a6, t4, s10
  ADDW s10, s7, a6
  ADDI s7, zero, 109
  LW t4, 60(sp)
  MULW a6, t4, s7
  ADDW s7, s10, a6
  ADDI s10, zero, -74
  LW t4, 56(sp)
  MULW a6, t4, s10
  ADDW s10, s7, a6
  ADDW s7, s10, a7
  ADDI s10, zero, -122
  LW t4, 44(sp)
  MULW a6, t4, s10
  ADDW s10, s7, a6
  ADDI s7, zero, 67
  LW t4, 40(sp)
  MULW a6, t4, s7
  ADDW s7, s10, a6
  ADDI s10, zero, 47
  LW t4, 36(sp)
  MULW a6, t4, s10
  ADDW s10, s7, a6
  ADDI s7, zero, 22
  LW t4, 32(sp)
  MULW a6, t4, s7
  ADDW s7, s10, a6
  ADDI s10, zero, -68
  LW t4, 0(sp)
  MULW a6, t4, s10
  ADDW s10, s7, a6
  ADDI s7, zero, 38
  LW t4, 4(sp)
  MULW a6, t4, s7
  ADDW s7, s10, a6
  ADDI s10, zero, 29
  LW t4, 8(sp)
  MULW a6, t4, s10
  ADDW s10, s7, a6
  ADDI s7, zero, 115
  LW t4, 12(sp)
  MULW a6, t4, s7
  ADDW s7, s10, a6
  ADDI s10, zero, -121
  LW t4, 16(sp)
  MULW a6, t4, s10
  ADDW s10, s7, a6
  ADDI s7, zero, 36
  LW t4, 20(sp)
  MULW a6, t4, s7
  ADDW s7, s10, a6
  ADDI s10, zero, -49
  LW t4, 24(sp)
  MULW a6, t4, s10
  ADDW s10, s7, a6
  ADDI s7, zero, 85
  LW t4, 28(sp)
  MULW a6, t4, s7
  ADDW s7, s10, a6
  ADDI s10, zero, 127
  SLT a6, s10, s7
  BNE a6, zero, bb115
  JAL zero, bb116
bb76:
  ADD a6, s10, zero
  ADDI s9, zero, 46
  MULW s6, a6, s9
  ADDW s9, s11, s6
  SLT s6, zero, s9
  BNE s6, zero, bb77
  JAL zero, bb78
bb77:
  ADDI a0, zero, 1
  LD ra, 176(sp)
  LD s1, 184(sp)
  LD s4, 192(sp)
  LD s0, 200(sp)
  LD s5, 208(sp)
  LD s7, 216(sp)
  LD s10, 224(sp)
  LD s2, 232(sp)
  LD s3, 240(sp)
  LD s6, 248(sp)
  LD s8, 256(sp)
  LD s9, 264(sp)
  LD s11, 272(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb78:
  ADD a0, zero, zero
  LD ra, 176(sp)
  LD s1, 184(sp)
  LD s4, 192(sp)
  LD s0, 200(sp)
  LD s5, 208(sp)
  LD s7, 216(sp)
  LD s10, 224(sp)
  LD s2, 232(sp)
  LD s3, 240(sp)
  LD s6, 248(sp)
  LD s8, 256(sp)
  LD s9, 264(sp)
  LD s11, 272(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb79:
  ADDI t4, zero, 127
  SW t4, 104(sp)
  JAL zero, bb67
bb80:
  LW t4, 108(sp)
  SLT s0, t4, zero
  BNE s0, zero, bb81
  JAL zero, bb82
bb81:
  ADD t4, zero, zero
  SW t4, 104(sp)
  JAL zero, bb67
bb82:
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  JAL zero, bb67
bb83:
  ADDI t4, zero, 127
  SW t4, 116(sp)
  JAL zero, bb68
bb84:
  LW t4, 120(sp)
  SLT s0, t4, zero
  BNE s0, zero, bb85
  JAL zero, bb86
bb85:
  ADD t4, zero, zero
  SW t4, 116(sp)
  JAL zero, bb68
bb86:
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  JAL zero, bb68
bb87:
  ADDI t4, zero, 127
  SW t4, 136(sp)
  JAL zero, bb69
bb88:
  LW t4, 140(sp)
  SLT s0, t4, zero
  BNE s0, zero, bb89
  JAL zero, bb90
bb89:
  ADD t4, zero, zero
  SW t4, 136(sp)
  JAL zero, bb69
bb90:
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  JAL zero, bb69
bb91:
  ADDI t4, zero, 127
  SW t4, 152(sp)
  JAL zero, bb70
bb92:
  LW t4, 156(sp)
  SLT s0, t4, zero
  BNE s0, zero, bb93
  JAL zero, bb94
bb93:
  ADD t4, zero, zero
  SW t4, 152(sp)
  JAL zero, bb70
bb94:
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  JAL zero, bb70
bb95:
  ADDI t4, zero, 127
  SW t4, 168(sp)
  JAL zero, bb71
bb96:
  SLT s0, s8, zero
  BNE s0, zero, bb97
  JAL zero, bb98
bb97:
  ADD t4, zero, zero
  SW t4, 168(sp)
  JAL zero, bb71
bb98:
  ADD t4, s8, zero
  SW t4, 168(sp)
  JAL zero, bb71
bb99:
  ADDI s2, zero, 127
  JAL zero, bb72
bb100:
  SLT s0, s1, zero
  BNE s0, zero, bb101
  JAL zero, bb102
bb101:
  ADD s2, zero, zero
  JAL zero, bb72
bb102:
  ADD s2, s1, zero
  JAL zero, bb72
bb103:
  ADDI s0, zero, 127
  JAL zero, bb73
bb104:
  SLT s6, a5, zero
  BNE s6, zero, bb105
  JAL zero, bb106
bb105:
  ADD s0, zero, zero
  JAL zero, bb73
bb106:
  ADD s0, a5, zero
  JAL zero, bb73
bb107:
  ADDI a4, zero, 127
  JAL zero, bb74
bb108:
  SLT s6, a1, zero
  BNE s6, zero, bb109
  JAL zero, bb110
bb109:
  ADD a4, zero, zero
  JAL zero, bb74
bb110:
  ADD a4, a1, zero
  JAL zero, bb74
bb111:
  ADDI a2, zero, 127
  JAL zero, bb75
bb112:
  SLT s6, t1, zero
  BNE s6, zero, bb113
  JAL zero, bb114
bb113:
  ADD a2, zero, zero
  JAL zero, bb75
bb114:
  ADD a2, t1, zero
  JAL zero, bb75
bb115:
  ADDI s10, zero, 127
  JAL zero, bb76
bb116:
  SLT s6, s7, zero
  BNE s6, zero, bb117
  JAL zero, bb118
bb117:
  ADD s10, zero, zero
  JAL zero, bb76
bb118:
  ADD s10, s7, zero
  JAL zero, bb76
relu_reg:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 127
  SLT s2, s1, s0
  BNE s2, zero, bb120
  JAL zero, bb121
bb120:
  ADDI a0, zero, 127
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb121:
  SLT s1, s0, zero
  BNE s1, zero, bb122
  JAL zero, bb123
bb122:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb123:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
