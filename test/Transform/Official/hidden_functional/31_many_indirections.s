.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
array:
.space 8000
.section .data

.section .text
main:   # loop depth 0
  ADDI sp, sp, -720
  SD s9, 216(sp)
  SD ra, 232(sp)
  SD s0, 240(sp)
  SD s1, 248(sp)
  SD s2, 256(sp)
  SD s3, 264(sp)
  SD s4, 272(sp)
  SD s5, 280(sp)
  SD s6, 288(sp)
  SD s7, 296(sp)
  SD s8, 304(sp)
  ADD a0, zero, zero
  # implict jump to bb1
bb1:   # loop depth 1
  ADDI s0, zero, 400
  MULW s0, a0, s0
  LA s1, array
  ADDI s2, zero, 1
  ADDI s3, zero, 2
  ADDI s4, zero, 3
  ADDI s5, zero, 4
  ADD s0, s1, s0
  ADDI s1, zero, 5
  SW zero, 0(s0)
  ADDI s6, zero, 6
  SW s2, 4(s0)
  ADDI s2, zero, 7
  SW s3, 8(s0)
  ADDI s3, zero, 8
  SW s4, 12(s0)
  ADDI s4, zero, 9
  SW s5, 16(s0)
  ADDI s5, zero, 10
  SW s1, 20(s0)
  ADDI s1, zero, 11
  SW s6, 24(s0)
  ADDI s6, zero, 12
  SW s2, 28(s0)
  ADDI s2, zero, 13
  SW s3, 32(s0)
  ADDI s3, zero, 14
  SW s4, 36(s0)
  ADDI s4, zero, 15
  SW s5, 40(s0)
  ADDI s5, zero, 16
  SW s1, 44(s0)
  ADDI s1, zero, 17
  SW s6, 48(s0)
  ADDI s6, zero, 18
  SW s2, 52(s0)
  ADDI s2, zero, 19
  SW s3, 56(s0)
  ADDI s3, zero, 20
  SW s4, 60(s0)
  ADDI s4, zero, 21
  SW s5, 64(s0)
  ADDI s5, zero, 22
  SW s1, 68(s0)
  ADDI s1, zero, 23
  SW s6, 72(s0)
  ADDI s6, zero, 24
  SW s2, 76(s0)
  ADDI s2, zero, 25
  SW s3, 80(s0)
  ADDI s3, zero, 26
  SW s4, 84(s0)
  ADDI s4, zero, 27
  SW s5, 88(s0)
  ADDI s5, zero, 28
  SW s1, 92(s0)
  ADDI s1, zero, 29
  SW s6, 96(s0)
  ADDI s6, zero, 30
  SW s2, 100(s0)
  ADDI s2, zero, 31
  SW s3, 104(s0)
  ADDI s3, zero, 32
  SW s4, 108(s0)
  ADDI s4, zero, 33
  SW s5, 112(s0)
  ADDI s5, zero, 34
  SW s1, 116(s0)
  ADDI s1, zero, 35
  SW s6, 120(s0)
  ADDI s6, zero, 36
  SW s2, 124(s0)
  ADDI s2, zero, 37
  SW s3, 128(s0)
  ADDI s3, zero, 38
  SW s4, 132(s0)
  ADDI s4, zero, 39
  SW s5, 136(s0)
  ADDI s5, zero, 40
  SW s1, 140(s0)
  ADDI s1, zero, 41
  SW s6, 144(s0)
  ADDI s6, zero, 42
  SW s2, 148(s0)
  ADDI s2, zero, 43
  SW s3, 152(s0)
  ADDI s3, zero, 44
  SW s4, 156(s0)
  ADDI s4, zero, 45
  SW s5, 160(s0)
  ADDI s5, zero, 46
  SW s1, 164(s0)
  ADDI s1, zero, 47
  SW s6, 168(s0)
  ADDI s6, zero, 48
  SW s2, 172(s0)
  ADDI s2, zero, 49
  SW s3, 176(s0)
  ADDI s3, zero, 50
  SW s4, 180(s0)
  ADDI s4, zero, 51
  SW s5, 184(s0)
  ADDI s5, zero, 52
  SW s1, 188(s0)
  ADDI s1, zero, 53
  SW s6, 192(s0)
  ADDI s6, zero, 54
  SW s2, 196(s0)
  ADDI s2, zero, 55
  SW s3, 200(s0)
  ADDI s3, zero, 56
  SW s4, 204(s0)
  ADDI s4, zero, 57
  SW s5, 208(s0)
  ADDI s5, zero, 58
  SW s1, 212(s0)
  ADDI s1, zero, 59
  SW s6, 216(s0)
  ADDI s6, zero, 60
  SW s2, 220(s0)
  ADDI s2, zero, 61
  SW s3, 224(s0)
  ADDI s3, zero, 62
  SW s4, 228(s0)
  ADDI s4, zero, 63
  SW s5, 232(s0)
  ADDI s5, zero, 64
  SW s1, 236(s0)
  ADDI s1, zero, 65
  SW s6, 240(s0)
  ADDI s6, zero, 66
  SW s2, 244(s0)
  ADDI s2, zero, 67
  SW s3, 248(s0)
  ADDI s3, zero, 68
  SW s4, 252(s0)
  ADDI s4, zero, 69
  SW s5, 256(s0)
  ADDI s5, zero, 70
  SW s1, 260(s0)
  ADDI s1, zero, 71
  SW s6, 264(s0)
  ADDI s6, zero, 72
  SW s2, 268(s0)
  ADDI s2, zero, 73
  SW s3, 272(s0)
  ADDI s3, zero, 74
  SW s4, 276(s0)
  ADDI s4, zero, 75
  SW s5, 280(s0)
  ADDI s5, zero, 76
  SW s1, 284(s0)
  ADDI s1, zero, 77
  SW s6, 288(s0)
  ADDI s6, zero, 78
  SW s2, 292(s0)
  ADDI s2, zero, 79
  SW s3, 296(s0)
  ADDI s3, zero, 80
  SW s4, 300(s0)
  ADDI s4, zero, 81
  SW s5, 304(s0)
  ADDI s5, zero, 82
  SW s1, 308(s0)
  ADDI s1, zero, 83
  SW s6, 312(s0)
  ADDI s6, zero, 84
  SW s2, 316(s0)
  ADDI s2, zero, 85
  SW s3, 320(s0)
  ADDI s3, zero, 86
  SW s4, 324(s0)
  ADDI s4, zero, 87
  SW s5, 328(s0)
  ADDI s5, zero, 88
  SW s1, 332(s0)
  ADDI s1, zero, 89
  SW s6, 336(s0)
  ADDI s6, zero, 90
  SW s2, 340(s0)
  ADDI s2, zero, 91
  SW s3, 344(s0)
  ADDI s3, zero, 92
  SW s4, 348(s0)
  ADDI s4, zero, 93
  SW s5, 352(s0)
  ADDI s5, zero, 94
  SW s1, 356(s0)
  ADDI s1, zero, 95
  SW s6, 360(s0)
  ADDI s6, zero, 96
  SW s2, 364(s0)
  ADDI s2, zero, 97
  SW s3, 368(s0)
  ADDI s3, zero, 98
  SW s4, 372(s0)
  ADDIW a0, a0, 1
  SW s5, 376(s0)
  ADDI s4, zero, 99
  SW s1, 380(s0)
  SLTI s1, a0, 20
  SW s6, 384(s0)
  SW s2, 388(s0)
  SW s3, 392(s0)
  SW s4, 396(s0)
  BNE s1, zero, bb3
  # implict jump to bb2
bb2:   # loop depth 0
  LA s0, array
  LUI a0, 2
  ADDIW a0, a0, -500
  LA s1, array
  ADD a0, s0, a0
  LUI s0, 2
  LW a0, 0(a0)
  ADDIW s0, s0, -992
  LA s2, array
  LUI s3, 2
  ADDIW s3, s3, -1392
  LA s4, array
  SH2ADD a0, a0, s1
  LUI s1, 2
  ADD a0, a0, s0
  ADDIW s1, s1, -1792
  LW a0, 0(a0)
  LA s0, array
  LUI s5, 1
  LA s6, array
  ADDIW s5, s5, 1904
  LUI s7, 1
  SH2ADD a0, a0, s2
  ADDIW s7, s7, 1504
  ADD a0, a0, s3
  LA s2, array
  SD s2, 224(sp)
  LW a0, 0(a0)
  LUI s2, 1
  ADDIW s2, s2, 1104
  LA s3, array
  LUI s8, 1
  LA s9, array
  SD s9, 672(sp)
  SH2ADD a0, a0, s4
  ADDIW s8, s8, 704
  ADD a0, a0, s1
  LUI s1, 1
  SW s1, 60(sp)
  LW a0, 0(a0)
  LW s1, 60(sp)
  ADDIW s1, s1, 304
  SW s1, 60(sp)
  LA s1, array
  SD s1, 680(sp)
  LUI s1, 1
  SW s1, 52(sp)
  LW s1, 52(sp)
  ADDIW s1, s1, -96
  SW s1, 52(sp)
  LA s1, array
  SD s1, 688(sp)
  SH2ADD a0, a0, s0
  LUI s0, 1
  SW s0, 36(sp)
  ADD a0, a0, s5
  LW s0, 36(sp)
  ADDIW s0, s0, -496
  SW s0, 36(sp)
  LW a0, 0(a0)
  LA s0, array
  SD s0, 192(sp)
  LUI s0, 1
  SW s0, 24(sp)
  LA s0, array
  SD s0, 696(sp)
  LW s0, 24(sp)
  ADDIW s0, s0, -896
  SW s0, 24(sp)
  LUI s0, 1
  SW s0, 144(sp)
  SH2ADD a0, a0, s6
  LW s0, 144(sp)
  ADDIW s0, s0, -1296
  SW s0, 144(sp)
  ADD a0, a0, s7
  LA s0, array
  SD s0, 704(sp)
  LW a0, 0(a0)
  LUI s0, 1
  SW s0, 96(sp)
  LW s0, 96(sp)
  ADDIW s0, s0, -1696
  SW s0, 96(sp)
  LA s0, array
  SD s0, 480(sp)
  LA s0, array
  SD s0, 400(sp)
  LA s0, array
  SD s0, 408(sp)
  LD s0, 224(sp)
  SH2ADD a0, a0, s0
  LA s0, array
  SD s0, 416(sp)
  ADD a0, a0, s2
  LA s0, array
  SD s0, 424(sp)
  LW a0, 0(a0)
  LA s0, array
  SD s0, 432(sp)
  LA s6, array
  LUI s5, 2
  ADDIW s5, s5, -520
  ADDI s0, zero, 400
  SW s0, 20(sp)
  SH2ADD a0, a0, s3
  ADD s0, s6, s5
  SD s0, 384(sp)
  ADD a0, a0, s8
  LA s0, array
  SD s0, 440(sp)
  LW a0, 0(a0)
  ADDI s0, zero, 400
  SW s0, 12(sp)
  LA s0, array
  SD s0, 448(sp)
  ADDI s0, zero, 400
  SW s0, 4(sp)
  LA s0, array
  SD s0, 456(sp)
  ADDI s0, zero, 400
  SW s0, 44(sp)
  LD s0, 672(sp)
  SH2ADD a0, a0, s0
  LA s0, array
  SD s0, 464(sp)
  LW s0, 60(sp)
  ADD a0, a0, s0
  ADDI s0, zero, 400
  SW s0, 156(sp)
  LW a0, 0(a0)
  LA s0, array
  SD s0, 472(sp)
  ADDI s0, zero, 400
  SW s0, 148(sp)
  LA s0, array
  SD s0, 392(sp)
  ADDI s0, zero, 400
  SW s0, 140(sp)
  LA s0, array
  SD s0, 488(sp)
  LD s0, 680(sp)
  SH2ADD a0, a0, s0
  ADDI s0, zero, 400
  SW s0, 88(sp)
  LW s0, 52(sp)
  ADD a0, a0, s0
  LA s0, array
  SD s0, 496(sp)
  LW a0, 0(a0)
  ADDI s0, zero, 400
  SW s0, 124(sp)
  LA s0, array
  SD s0, 504(sp)
  ADDI s0, zero, 400
  SW s0, 116(sp)
  LA s0, array
  SD s0, 512(sp)
  ADDI s0, zero, 400
  SW s0, 108(sp)
  LD s0, 688(sp)
  SH2ADD a0, a0, s0
  LA s0, array
  SD s0, 520(sp)
  LW s0, 36(sp)
  ADD a0, a0, s0
  ADDI s0, zero, 400
  SW s0, 100(sp)
  LW a0, 0(a0)
  LA s0, array
  SD s0, 528(sp)
  ADDI s0, zero, 400
  SW s0, 92(sp)
  LA s0, array
  SD s0, 536(sp)
  ADDI s0, zero, 400
  SW s0, 132(sp)
  LA s0, array
  SD s0, 544(sp)
  LD s0, 192(sp)
  SH2ADD a0, a0, s0
  SD a0, 312(sp)
  ADDI a0, zero, 400
  SW a0, 160(sp)
  LW a0, 24(sp)
  LD s0, 312(sp)
  ADD a0, s0, a0
  SD a0, 320(sp)
  LA a0, array
  SD a0, 552(sp)
  LD a0, 320(sp)
  LW a0, 0(a0)
  SW a0, 16(sp)
  ADDI a0, zero, 400
  SW a0, 80(sp)
  LA a0, array
  SD a0, 640(sp)
  ADDI a0, zero, 400
  SW a0, 84(sp)
  LA a0, array
  SD a0, 648(sp)
  ADDI a0, zero, 400
  SW a0, 76(sp)
  LD a0, 696(sp)
  LW s0, 16(sp)
  SH2ADD a0, s0, a0
  SD a0, 328(sp)
  LA a0, array
  SD a0, 656(sp)
  LW a0, 144(sp)
  LD s0, 328(sp)
  ADD a0, s0, a0
  SD a0, 336(sp)
  ADDI a0, zero, 400
  SW a0, 68(sp)
  LD a0, 336(sp)
  LW a0, 0(a0)
  SW a0, 28(sp)
  LA a0, array
  SD a0, 664(sp)
  LD a0, 704(sp)
  LW s0, 28(sp)
  SH2ADD a0, s0, a0
  SD a0, 344(sp)
  LW a0, 96(sp)
  LD s0, 344(sp)
  ADD a0, s0, a0
  SD a0, 208(sp)
  LD a0, 208(sp)
  LW a0, 0(a0)
  SW a0, 40(sp)
  LD a0, 480(sp)
  LW s0, 40(sp)
  SH2ADD a0, s0, a0
  SD a0, 360(sp)
  LD a0, 360(sp)
  LW a0, 2000(a0)
  SW a0, 48(sp)
  LD a0, 400(sp)
  LW s0, 48(sp)
  SH2ADD a0, s0, a0
  SD a0, 368(sp)
  LD a0, 368(sp)
  LW a0, 1600(a0)
  SW a0, 56(sp)
  LD a0, 408(sp)
  LW s0, 56(sp)
  SH2ADD a0, s0, a0
  SD a0, 376(sp)
  LD a0, 376(sp)
  LW a0, 1200(a0)
  SW a0, 64(sp)
  LD a0, 416(sp)
  LW s0, 64(sp)
  SH2ADD a0, s0, a0
  LW a0, 800(a0)
  LD s0, 424(sp)
  SH2ADD a0, a0, s0
  LW a0, 400(a0)
  LD s0, 432(sp)
  SH2ADD a0, a0, s0
  LW a0, 0(a0)
  SW a0, 72(sp)
  LD a0, 384(sp)
  LW a0, 0(a0)
  LW s0, 20(sp)
  MULW a0, a0, s0
  LD s0, 440(sp)
  ADD a0, s0, a0
  LW a0, 68(a0)
  LW s0, 12(sp)
  MULW a0, a0, s0
  LD s0, 448(sp)
  ADD a0, s0, a0
  LW a0, 64(a0)
  LW s0, 4(sp)
  MULW a0, a0, s0
  LD s0, 456(sp)
  ADD a0, s0, a0
  LW a0, 60(a0)
  LW s0, 44(sp)
  MULW a0, a0, s0
  LD s0, 464(sp)
  ADD a0, s0, a0
  LW a0, 56(a0)
  LW s0, 156(sp)
  MULW a0, a0, s0
  LD s0, 472(sp)
  ADD a0, s0, a0
  LW a0, 52(a0)
  LW s0, 148(sp)
  MULW a0, a0, s0
  LD s0, 392(sp)
  ADD a0, s0, a0
  LW a0, 48(a0)
  LW s0, 140(sp)
  MULW a0, a0, s0
  LD s0, 488(sp)
  ADD a0, s0, a0
  LW a0, 44(a0)
  LW s0, 88(sp)
  MULW a0, a0, s0
  LD s0, 496(sp)
  ADD a0, s0, a0
  LW a0, 40(a0)
  LW s0, 124(sp)
  MULW a0, a0, s0
  LD s0, 504(sp)
  ADD a0, s0, a0
  LW a0, 36(a0)
  LW s0, 116(sp)
  MULW a0, a0, s0
  LD s0, 512(sp)
  ADD a0, s0, a0
  LW a0, 32(a0)
  LW s0, 108(sp)
  MULW a0, a0, s0
  LD s0, 520(sp)
  ADD a0, s0, a0
  LW a0, 28(a0)
  LW s0, 100(sp)
  MULW a0, a0, s0
  LD s0, 528(sp)
  ADD a0, s0, a0
  LW a0, 24(a0)
  LW s0, 92(sp)
  MULW a0, a0, s0
  LD s0, 536(sp)
  ADD a0, s0, a0
  LW a0, 20(a0)
  LW s0, 132(sp)
  MULW a0, a0, s0
  LD s0, 544(sp)
  ADD a0, s0, a0
  LW a0, 16(a0)
  LW s0, 160(sp)
  MULW a0, a0, s0
  LD s0, 552(sp)
  ADD a0, s0, a0
  LW a0, 12(a0)
  LW s0, 80(sp)
  MULW a0, a0, s0
  LD s0, 640(sp)
  ADD a0, s0, a0
  LW a0, 8(a0)
  LW s0, 84(sp)
  MULW a0, a0, s0
  LD s0, 648(sp)
  ADD a0, s0, a0
  LW a0, 4(a0)
  LW s0, 76(sp)
  MULW a0, a0, s0
  LD s0, 656(sp)
  ADD a0, s0, a0
  LW a0, 0(a0)
  LW s0, 68(sp)
  MULW a0, a0, s0
  LD s0, 664(sp)
  ADD a0, s0, a0
  LW a0, 224(a0)
  LW s0, 72(sp)
  ADDW a0, s0, a0
  CALL putint
  ADD a0, zero, zero
  LD s9, 216(sp)
  LD ra, 232(sp)
  LD s0, 240(sp)
  LD s1, 248(sp)
  LD s2, 256(sp)
  LD s3, 264(sp)
  LD s4, 272(sp)
  LD s5, 280(sp)
  LD s6, 288(sp)
  LD s7, 296(sp)
  LD s8, 304(sp)
  ADDI sp, sp, 720
  JALR zero, 0(ra)
bb3:   # loop depth 1
  JAL zero, bb1
