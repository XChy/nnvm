.global main
.section .bss
array:
.space 8000
.section .data

.section .text
main:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
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
  LUI a0, 2
  ADDIW a0, a0, -500
  LA s0, array
  ADD a0, s0, a0
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s0, array
  ADD a0, s0, a0
  LUI s0, 2
  ADDIW s0, s0, -992
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s0, array
  ADD a0, s0, a0
  LUI s0, 2
  ADDIW s0, s0, -1392
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s0, array
  ADD a0, s0, a0
  LUI s0, 2
  ADDIW s0, s0, -1792
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s0, array
  ADD a0, s0, a0
  LUI s0, 1
  ADDIW s0, s0, 1904
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s0, array
  ADD a0, s0, a0
  LUI s0, 1
  ADDIW s0, s0, 1504
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s0, array
  ADD a0, s0, a0
  LUI s0, 1
  ADDIW s0, s0, 1104
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s0, array
  ADD a0, s0, a0
  LUI s0, 1
  ADDIW s0, s0, 704
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s0, array
  ADD a0, s0, a0
  LUI s0, 1
  ADDIW s0, s0, 304
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s0, array
  ADD a0, s0, a0
  LUI s0, 1
  ADDIW s0, s0, -96
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s0, array
  ADD a0, s0, a0
  LUI s0, 1
  ADDIW s0, s0, -496
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s0, array
  ADD a0, s0, a0
  LUI s0, 1
  ADDIW s0, s0, -896
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s0, array
  ADD a0, s0, a0
  LUI s0, 1
  ADDIW s0, s0, -1296
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s0, array
  ADD a0, s0, a0
  LUI s0, 1
  ADDIW s0, s0, -1696
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s0, array
  ADD a0, s0, a0
  LW a0, 2000(a0)
  SLLIW a0, a0, 2
  LA s0, array
  ADD a0, s0, a0
  LW a0, 1600(a0)
  SLLIW a0, a0, 2
  LA s0, array
  ADD a0, s0, a0
  LW a0, 1200(a0)
  SLLIW a0, a0, 2
  LA s0, array
  ADD a0, s0, a0
  LW a0, 800(a0)
  SLLIW a0, a0, 2
  LA s0, array
  ADD a0, s0, a0
  LW a0, 400(a0)
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
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb3:   # loop depth 1
  JAL zero, bb1
