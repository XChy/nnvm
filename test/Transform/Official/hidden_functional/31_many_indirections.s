.global main
.section .bss
array:
.space 8000
.section .data

.section .text
main:
  ADDI sp, sp, -192
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  ADD a0, zero, zero
  # implict jump to bb1
bb1:
  ADD s0, a0, zero
  ADDI a0, zero, 400
  MULW s1, s0, a0
  LA a0, array
  ADD s1, a0, s1
  SW zero, 0(s1)
  ADDI a0, zero, 1
  SW a0, 4(s1)
  ADDI a0, zero, 2
  SW a0, 8(s1)
  ADDI a0, zero, 3
  SW a0, 12(s1)
  ADDI a0, zero, 4
  SW a0, 16(s1)
  ADDI a0, zero, 5
  SW a0, 20(s1)
  ADDI a0, zero, 6
  SW a0, 24(s1)
  ADDI a0, zero, 7
  SW a0, 28(s1)
  ADDI a0, zero, 8
  SW a0, 32(s1)
  ADDI a0, zero, 9
  SW a0, 36(s1)
  ADDI a0, zero, 10
  SW a0, 40(s1)
  ADDI a0, zero, 11
  SW a0, 44(s1)
  ADDI a0, zero, 12
  SW a0, 48(s1)
  ADDI a0, zero, 13
  SW a0, 52(s1)
  ADDI a0, zero, 14
  SW a0, 56(s1)
  ADDI a0, zero, 15
  SW a0, 60(s1)
  ADDI a0, zero, 16
  SW a0, 64(s1)
  ADDI a0, zero, 17
  SW a0, 68(s1)
  ADDI a0, zero, 18
  SW a0, 72(s1)
  ADDI a0, zero, 19
  SW a0, 76(s1)
  ADDI a0, zero, 20
  SW a0, 80(s1)
  ADDI a0, zero, 21
  SW a0, 84(s1)
  ADDI a0, zero, 22
  SW a0, 88(s1)
  ADDI a0, zero, 23
  SW a0, 92(s1)
  ADDI a0, zero, 24
  SW a0, 96(s1)
  ADDI a0, zero, 25
  SW a0, 100(s1)
  ADDI a0, zero, 26
  SW a0, 104(s1)
  ADDI a0, zero, 27
  SW a0, 108(s1)
  ADDI a0, zero, 28
  SW a0, 112(s1)
  ADDI a0, zero, 29
  SW a0, 116(s1)
  ADDI a0, zero, 30
  SW a0, 120(s1)
  ADDI a0, zero, 31
  SW a0, 124(s1)
  ADDI a0, zero, 32
  SW a0, 128(s1)
  ADDI a0, zero, 33
  SW a0, 132(s1)
  ADDI a0, zero, 34
  SW a0, 136(s1)
  ADDI a0, zero, 35
  SW a0, 140(s1)
  ADDI a0, zero, 36
  SW a0, 144(s1)
  ADDI a0, zero, 37
  SW a0, 148(s1)
  ADDI a0, zero, 38
  SW a0, 152(s1)
  ADDI a0, zero, 39
  SW a0, 156(s1)
  ADDI a0, zero, 40
  SW a0, 160(s1)
  ADDI a0, zero, 41
  SW a0, 164(s1)
  ADDI a0, zero, 42
  SW a0, 168(s1)
  ADDI a0, zero, 43
  SW a0, 172(s1)
  ADDI a0, zero, 44
  SW a0, 176(s1)
  ADDI a0, zero, 45
  SW a0, 180(s1)
  ADDI a0, zero, 46
  SW a0, 184(s1)
  ADDI a0, zero, 47
  SW a0, 188(s1)
  ADDI a0, zero, 48
  SW a0, 192(s1)
  ADDI a0, zero, 49
  SW a0, 196(s1)
  ADDI a0, zero, 50
  SW a0, 200(s1)
  ADDI a0, zero, 51
  SW a0, 204(s1)
  ADDI a0, zero, 52
  SW a0, 208(s1)
  ADDI a0, zero, 53
  SW a0, 212(s1)
  ADDI a0, zero, 54
  SW a0, 216(s1)
  ADDI a0, zero, 55
  SW a0, 220(s1)
  ADDI a0, zero, 56
  SW a0, 224(s1)
  ADDI a0, zero, 57
  SW a0, 228(s1)
  ADDI a0, zero, 58
  SW a0, 232(s1)
  ADDI a0, zero, 59
  SW a0, 236(s1)
  ADDI a0, zero, 60
  SW a0, 240(s1)
  ADDI a0, zero, 61
  SW a0, 244(s1)
  ADDI a0, zero, 62
  SW a0, 248(s1)
  ADDI a0, zero, 63
  SW a0, 252(s1)
  ADDI a0, zero, 64
  SW a0, 256(s1)
  ADDI a0, zero, 65
  SW a0, 260(s1)
  ADDI a0, zero, 66
  SW a0, 264(s1)
  ADDI a0, zero, 67
  SW a0, 268(s1)
  ADDI a0, zero, 68
  SW a0, 272(s1)
  ADDI a0, zero, 69
  SW a0, 276(s1)
  ADDI a0, zero, 70
  SW a0, 280(s1)
  ADDI a0, zero, 71
  SW a0, 284(s1)
  ADDI a0, zero, 72
  SW a0, 288(s1)
  ADDI a0, zero, 73
  SW a0, 292(s1)
  ADDI a0, zero, 74
  SW a0, 296(s1)
  ADDI a0, zero, 75
  SW a0, 300(s1)
  ADDI a0, zero, 76
  SW a0, 304(s1)
  ADDI a0, zero, 77
  SW a0, 308(s1)
  ADDI a0, zero, 78
  SW a0, 312(s1)
  ADDI a0, zero, 79
  SW a0, 316(s1)
  ADDI a0, zero, 80
  SW a0, 320(s1)
  ADDI a0, zero, 81
  SW a0, 324(s1)
  ADDI a0, zero, 82
  SW a0, 328(s1)
  ADDI a0, zero, 83
  SW a0, 332(s1)
  ADDI a0, zero, 84
  SW a0, 336(s1)
  ADDI a0, zero, 85
  SW a0, 340(s1)
  ADDI a0, zero, 86
  SW a0, 344(s1)
  ADDI a0, zero, 87
  SW a0, 348(s1)
  ADDI a0, zero, 88
  SW a0, 352(s1)
  ADDI a0, zero, 89
  SW a0, 356(s1)
  ADDI a0, zero, 90
  SW a0, 360(s1)
  ADDI a0, zero, 91
  SW a0, 364(s1)
  ADDI a0, zero, 92
  SW a0, 368(s1)
  ADDI a0, zero, 93
  SW a0, 372(s1)
  ADDI a0, zero, 94
  SW a0, 376(s1)
  ADDI a0, zero, 95
  SW a0, 380(s1)
  ADDI a0, zero, 96
  SW a0, 384(s1)
  ADDI a0, zero, 97
  SW a0, 388(s1)
  ADDI a0, zero, 98
  SW a0, 392(s1)
  ADDI a0, zero, 99
  SW a0, 396(s1)
  ADDIW s0, s0, 1
  SLTI a0, s0, 20
  BNE a0, zero, bb3
  # implict jump to bb2
bb2:
  LA a0, array
  ADDI s2, a0, 400
  LA a0, array
  ADDI s1, a0, 800
  LA a0, array
  ADDI s4, a0, 1200
  LA a0, array
  ADDI s3, a0, 1600
  LA a0, array
  ADDI a0, a0, 2000
  SD a0, 80(sp)
  LUI s0, 1
  ADDIW s0, s0, -1696
  LA a0, array
  ADD a0, a0, s0
  SD a0, 88(sp)
  LUI s0, 1
  ADDIW s0, s0, -1296
  LA a0, array
  ADD s6, a0, s0
  LUI s0, 1
  ADDIW s0, s0, -896
  LA a0, array
  ADD s5, a0, s0
  LUI s0, 1
  ADDIW s0, s0, -496
  LA a0, array
  ADD a0, a0, s0
  SD a0, 96(sp)
  LUI s0, 1
  ADDIW s0, s0, -96
  LA a0, array
  ADD a0, a0, s0
  SD a0, 0(sp)
  LUI s0, 1
  ADDIW s0, s0, 304
  LA a0, array
  ADD a0, a0, s0
  SD a0, 128(sp)
  LUI s0, 1
  ADDIW s0, s0, 704
  LA a0, array
  ADD a0, a0, s0
  SD a0, 136(sp)
  LUI s0, 1
  ADDIW s0, s0, 1104
  LA a0, array
  ADD a0, a0, s0
  SD a0, 144(sp)
  LUI s0, 1
  ADDIW s0, s0, 1504
  LA a0, array
  ADD s7, a0, s0
  LUI s0, 1
  ADDIW s0, s0, 1904
  LA a0, array
  ADD a0, a0, s0
  SD a0, 152(sp)
  LUI s0, 2
  ADDIW s0, s0, -1792
  LA a0, array
  ADD a0, a0, s0
  SD a0, 160(sp)
  LUI s0, 2
  ADDIW s0, s0, -1392
  LA a0, array
  ADD a0, a0, s0
  SD a0, 168(sp)
  LUI s0, 2
  ADDIW s0, s0, -992
  LA a0, array
  ADD a0, a0, s0
  SD a0, 176(sp)
  LUI s0, 2
  ADDIW s0, s0, -500
  LA a0, array
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LD a0, 176(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LD a0, 168(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LD a0, 160(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LD a0, 152(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s7, a0
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LD a0, 144(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LD a0, 136(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LD a0, 128(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LD a0, 0(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LD a0, 96(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s5, a0
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s6, a0
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LD a0, 88(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LD a0, 80(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s3, a0
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s4, a0
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s2, a0
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LA a0, array
  ADD a0, a0, s0
  LW s1, 0(a0)
  LUI s0, 2
  ADDIW s0, s0, -520
  LA a0, array
  ADD a0, a0, s0
  LW s0, 0(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 68(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 64(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 60(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 56(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 52(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 48(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 44(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 40(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 36(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 32(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 28(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 24(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 20(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 16(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 12(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 8(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 4(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 0(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW a0, 224(a0)
  ADDW a0, s1, a0
  CALL putint
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb3:
  ADD a0, s0, zero
  JAL zero, bb1
