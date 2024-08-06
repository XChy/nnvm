.global main
.section .bss
array:
.space 8000
.section .data

.section .text
main:   # loop depth 0
  ADDI sp, sp, -384
  SD ra, 120(sp)
  SD s0, 128(sp)
  SD s1, 136(sp)
  SD s2, 144(sp)
  SD s3, 152(sp)
  SD s4, 160(sp)
  SD s5, 168(sp)
  SD s6, 176(sp)
  SD s7, 184(sp)
  SD s8, 192(sp)
  SD s9, 200(sp)
  SD s10, 208(sp)
  SD s11, 216(sp)
  ADD a0, zero, zero
  # implict jump to bb1
bb1:   # loop depth 1
  ADDI s0, zero, 400
  MULW s0, a0, s0
  LA s1, array
  ADD s0, s1, s0
  SW zero, 0(s0)
  ADDI s1, zero, 1
  SW s1, 4(s0)
  ADDI s1, zero, 2
  SW s1, 8(s0)
  ADDI s1, zero, 3
  SW s1, 12(s0)
  ADDI s1, zero, 4
  SW s1, 16(s0)
  ADDI s1, zero, 5
  SW s1, 20(s0)
  ADDI s1, zero, 6
  SW s1, 24(s0)
  ADDI s1, zero, 7
  SW s1, 28(s0)
  ADDI s1, zero, 8
  SW s1, 32(s0)
  ADDI s1, zero, 9
  SW s1, 36(s0)
  ADDI s1, zero, 10
  SW s1, 40(s0)
  ADDI s1, zero, 11
  SW s1, 44(s0)
  ADDI s1, zero, 12
  SW s1, 48(s0)
  ADDI s1, zero, 13
  SW s1, 52(s0)
  ADDI s1, zero, 14
  SW s1, 56(s0)
  ADDI s1, zero, 15
  SW s1, 60(s0)
  ADDI s1, zero, 16
  SW s1, 64(s0)
  ADDI s1, zero, 17
  SW s1, 68(s0)
  ADDI s1, zero, 18
  SW s1, 72(s0)
  ADDI s1, zero, 19
  SW s1, 76(s0)
  ADDI s1, zero, 20
  SW s1, 80(s0)
  ADDI s1, zero, 21
  SW s1, 84(s0)
  ADDI s1, zero, 22
  SW s1, 88(s0)
  ADDI s1, zero, 23
  SW s1, 92(s0)
  ADDI s1, zero, 24
  SW s1, 96(s0)
  ADDI s1, zero, 25
  SW s1, 100(s0)
  ADDI s1, zero, 26
  SW s1, 104(s0)
  ADDI s1, zero, 27
  SW s1, 108(s0)
  ADDI s1, zero, 28
  SW s1, 112(s0)
  ADDI s1, zero, 29
  SW s1, 116(s0)
  ADDI s1, zero, 30
  SW s1, 120(s0)
  ADDI s1, zero, 31
  SW s1, 124(s0)
  ADDI s1, zero, 32
  SW s1, 128(s0)
  ADDI s1, zero, 33
  SW s1, 132(s0)
  ADDI s1, zero, 34
  SW s1, 136(s0)
  ADDI s1, zero, 35
  SW s1, 140(s0)
  ADDI s1, zero, 36
  SW s1, 144(s0)
  ADDI s1, zero, 37
  SW s1, 148(s0)
  ADDI s1, zero, 38
  SW s1, 152(s0)
  ADDI s1, zero, 39
  SW s1, 156(s0)
  ADDI s1, zero, 40
  SW s1, 160(s0)
  ADDI s1, zero, 41
  SW s1, 164(s0)
  ADDI s1, zero, 42
  SW s1, 168(s0)
  ADDI s1, zero, 43
  SW s1, 172(s0)
  ADDI s1, zero, 44
  SW s1, 176(s0)
  ADDI s1, zero, 45
  SW s1, 180(s0)
  ADDI s1, zero, 46
  SW s1, 184(s0)
  ADDI s1, zero, 47
  SW s1, 188(s0)
  ADDI s1, zero, 48
  SW s1, 192(s0)
  ADDI s1, zero, 49
  SW s1, 196(s0)
  ADDI s1, zero, 50
  SW s1, 200(s0)
  ADDI s1, zero, 51
  SW s1, 204(s0)
  ADDI s1, zero, 52
  SW s1, 208(s0)
  ADDI s1, zero, 53
  SW s1, 212(s0)
  ADDI s1, zero, 54
  SW s1, 216(s0)
  ADDI s1, zero, 55
  SW s1, 220(s0)
  ADDI s1, zero, 56
  SW s1, 224(s0)
  ADDI s1, zero, 57
  SW s1, 228(s0)
  ADDI s1, zero, 58
  SW s1, 232(s0)
  ADDI s1, zero, 59
  SW s1, 236(s0)
  ADDI s1, zero, 60
  SW s1, 240(s0)
  ADDI s1, zero, 61
  SW s1, 244(s0)
  ADDI s1, zero, 62
  SW s1, 248(s0)
  ADDI s1, zero, 63
  SW s1, 252(s0)
  ADDI s1, zero, 64
  SW s1, 256(s0)
  ADDI s1, zero, 65
  SW s1, 260(s0)
  ADDI s1, zero, 66
  SW s1, 264(s0)
  ADDI s1, zero, 67
  SW s1, 268(s0)
  ADDI s1, zero, 68
  SW s1, 272(s0)
  ADDI s1, zero, 69
  SW s1, 276(s0)
  ADDI s1, zero, 70
  SW s1, 280(s0)
  ADDI s1, zero, 71
  SW s1, 284(s0)
  ADDI s1, zero, 72
  SW s1, 288(s0)
  ADDI s1, zero, 73
  SW s1, 292(s0)
  ADDI s1, zero, 74
  SW s1, 296(s0)
  ADDI s1, zero, 75
  SW s1, 300(s0)
  ADDI s1, zero, 76
  SW s1, 304(s0)
  ADDI s1, zero, 77
  SW s1, 308(s0)
  ADDI s1, zero, 78
  SW s1, 312(s0)
  ADDI s1, zero, 79
  SW s1, 316(s0)
  ADDI s1, zero, 80
  SW s1, 320(s0)
  ADDI s1, zero, 81
  SW s1, 324(s0)
  ADDI s1, zero, 82
  SW s1, 328(s0)
  ADDI s1, zero, 83
  SW s1, 332(s0)
  ADDI s1, zero, 84
  SW s1, 336(s0)
  ADDI s1, zero, 85
  SW s1, 340(s0)
  ADDI s1, zero, 86
  SW s1, 344(s0)
  ADDI s1, zero, 87
  SW s1, 348(s0)
  ADDI s1, zero, 88
  SW s1, 352(s0)
  ADDI s1, zero, 89
  SW s1, 356(s0)
  ADDI s1, zero, 90
  SW s1, 360(s0)
  ADDI s1, zero, 91
  SW s1, 364(s0)
  ADDI s1, zero, 92
  SW s1, 368(s0)
  ADDI s1, zero, 93
  SW s1, 372(s0)
  ADDI s1, zero, 94
  SW s1, 376(s0)
  ADDI s1, zero, 95
  SW s1, 380(s0)
  ADDI s1, zero, 96
  SW s1, 384(s0)
  ADDI s1, zero, 97
  SW s1, 388(s0)
  ADDI s1, zero, 98
  SW s1, 392(s0)
  ADDI s1, zero, 99
  SW s1, 396(s0)
  ADDIW a0, a0, 1
  SLTI s0, a0, 20
  BNE s0, zero, bb3
  # implict jump to bb2
bb2:   # loop depth 0
  LA a0, array
  ADDI a0, a0, 400
  LA s0, array
  ADDI s0, s0, 800
  LA s1, array
  ADDI s1, s1, 1200
  LA s2, array
  ADDI s2, s2, 1600
  LA s3, array
  ADDI s3, s3, 2000
  LUI s4, 1
  ADDIW s4, s4, -1696
  LA s5, array
  ADD s4, s5, s4
  LUI s5, 1
  ADDIW s5, s5, -1296
  LA s6, array
  ADD s5, s6, s5
  LUI s6, 1
  ADDIW s6, s6, -896
  LA s7, array
  ADD s6, s7, s6
  LUI s7, 1
  ADDIW s7, s7, -496
  LA s8, array
  ADD s7, s8, s7
  LUI s8, 1
  ADDIW s8, s8, -96
  LA s9, array
  ADD s8, s9, s8
  SD s8, 280(sp)
  LUI s9, 1
  ADDIW s9, s9, 304
  LA s10, array
  ADD s8, s10, s9
  SD s8, 272(sp)
  LUI s10, 1
  ADDIW s10, s10, 704
  LA s11, array
  ADD s8, s11, s10
  SD s8, 264(sp)
  LUI s11, 1
  ADDIW s11, s11, 1104
  LA s8, array
  SD s8, 336(sp)
  LD s8, 336(sp)
  ADD s8, s8, s11
  SD s8, 256(sp)
  LUI s8, 1
  SW s8, 12(sp)
  LW s8, 12(sp)
  ADDIW s8, s8, 1504
  SW s8, 12(sp)
  LA s8, array
  SD s8, 328(sp)
  LD s8, 328(sp)
  LW s9, 12(sp)
  ADD s8, s8, s9
  SD s8, 248(sp)
  LUI s8, 1
  SW s8, 16(sp)
  LW s8, 16(sp)
  ADDIW s8, s8, 1904
  SW s8, 16(sp)
  LA s8, array
  SD s8, 320(sp)
  LD s8, 320(sp)
  LW s9, 16(sp)
  ADD s8, s8, s9
  SD s8, 240(sp)
  LUI s8, 2
  SW s8, 24(sp)
  LW s8, 24(sp)
  ADDIW s8, s8, -1792
  SW s8, 24(sp)
  LA s8, array
  SD s8, 312(sp)
  LD s8, 312(sp)
  LW s9, 24(sp)
  ADD s8, s8, s9
  SD s8, 232(sp)
  LUI s8, 2
  SW s8, 32(sp)
  LW s8, 32(sp)
  ADDIW s8, s8, -1392
  SW s8, 32(sp)
  LA s8, array
  SD s8, 304(sp)
  LD s8, 304(sp)
  LW s9, 32(sp)
  ADD s8, s8, s9
  SD s8, 80(sp)
  LUI s8, 2
  SW s8, 36(sp)
  LW s8, 36(sp)
  ADDIW s8, s8, -992
  SW s8, 36(sp)
  LA s8, array
  SD s8, 224(sp)
  LD s8, 224(sp)
  LW s9, 36(sp)
  ADD s8, s8, s9
  SD s8, 88(sp)
  LUI s8, 2
  SW s8, 40(sp)
  LW s8, 40(sp)
  ADDIW s8, s8, -500
  SW s8, 40(sp)
  LA s8, array
  SD s8, 288(sp)
  LD s8, 288(sp)
  LW s9, 40(sp)
  ADD s8, s8, s9
  SD s8, 96(sp)
  LD s8, 96(sp)
  LW s8, 0(s8)
  SW s8, 64(sp)
  LW s8, 64(sp)
  SLLIW s8, s8, 2
  SW s8, 68(sp)
  LW s8, 68(sp)
  LD s9, 88(sp)
  ADD s8, s9, s8
  SD s8, 296(sp)
  LD s8, 296(sp)
  LW s8, 0(s8)
  SW s8, 60(sp)
  LW s8, 60(sp)
  SLLIW s8, s8, 2
  SW s8, 56(sp)
  LW s8, 56(sp)
  LD s9, 80(sp)
  ADD s8, s9, s8
  SD s8, 368(sp)
  LD s8, 368(sp)
  LW s8, 0(s8)
  SW s8, 52(sp)
  LW s8, 52(sp)
  SLLIW s8, s8, 2
  SW s8, 48(sp)
  LD s8, 232(sp)
  LW s9, 48(sp)
  ADD s8, s8, s9
  SD s8, 360(sp)
  LD s8, 360(sp)
  LW s8, 0(s8)
  SW s8, 44(sp)
  LW s8, 44(sp)
  SLLIW s8, s8, 2
  SW s8, 0(sp)
  LD s8, 240(sp)
  LW s9, 0(sp)
  ADD s8, s8, s9
  SD s8, 352(sp)
  LD s8, 352(sp)
  LW s8, 0(s8)
  SW s8, 28(sp)
  LW s8, 28(sp)
  SLLIW s8, s8, 2
  SW s8, 20(sp)
  LD s8, 248(sp)
  LW s9, 20(sp)
  ADD s8, s8, s9
  SD s8, 344(sp)
  LD s8, 344(sp)
  LW s8, 0(s8)
  SW s8, 8(sp)
  LW s8, 8(sp)
  SLLIW s8, s8, 2
  SW s8, 4(sp)
  LD s8, 256(sp)
  LW s9, 4(sp)
  ADD s11, s8, s9
  LW s11, 0(s11)
  SLLIW s11, s11, 2
  LD s8, 264(sp)
  ADD s10, s8, s11
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LD s8, 272(sp)
  ADD s9, s8, s10
  LW s9, 0(s9)
  SLLIW s9, s9, 2
  LD s8, 280(sp)
  ADD s8, s8, s9
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  ADD s7, s7, s8
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  ADD s6, s6, s7
  LW s6, 0(s6)
  SLLIW s6, s6, 2
  ADD s5, s5, s6
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  ADD s4, s4, s5
  LW s4, 0(s4)
  SLLIW s4, s4, 2
  ADD s3, s3, s4
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s2, s2, s3
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  ADD s1, s1, s2
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s0, s0, s1
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s0, array
  ADD a0, s0, a0
  LW a0, 0(a0)
  LUI s0, 2
  ADDIW s0, s0, -520
  LA s1, array
  ADD s0, s1, s0
  LW s0, 0(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 68(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 64(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 60(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 56(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 52(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 48(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 44(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 40(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 36(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 32(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 28(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 24(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 20(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 16(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 12(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 8(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 4(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 0(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 224(s0)
  ADDW a0, a0, s0
  CALL putint
  ADD a0, zero, zero
  LD ra, 120(sp)
  LD s0, 128(sp)
  LD s1, 136(sp)
  LD s2, 144(sp)
  LD s3, 152(sp)
  LD s4, 160(sp)
  LD s5, 168(sp)
  LD s6, 176(sp)
  LD s7, 184(sp)
  LD s8, 192(sp)
  LD s9, 200(sp)
  LD s10, 208(sp)
  LD s11, 216(sp)
  ADDI sp, sp, 384
  JALR zero, 0(ra)
bb3:   # loop depth 0
  JAL zero, bb1
