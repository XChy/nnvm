.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
array:
.space 8000
.section .data

.section .text
main:   # loop depth 0
  ADDI sp, sp, -336
  SD s5, 80(sp)
  SD s4, 96(sp)
  SD ra, 112(sp)
  SD s0, 120(sp)
  SD s1, 128(sp)
  SD s2, 136(sp)
  SD s3, 144(sp)
  ADD t2, zero, zero
  ADD t1, zero, zero
  # implict jump to bb1
bb1:   # loop depth 1
  LA a0, array
  ADDI t0, zero, 1
  ADDI a1, zero, 2
  ADD a0, a0, t1
  ADDI a2, zero, 3
  SW zero, 0(a0)
  ADDI a3, zero, 4
  SW t0, 4(a0)
  ADDI t0, zero, 5
  SW a1, 8(a0)
  ADDI a1, zero, 6
  SW a2, 12(a0)
  ADDI a2, zero, 7
  SW a3, 16(a0)
  ADDI a3, zero, 8
  SW t0, 20(a0)
  ADDI t0, zero, 9
  SW a1, 24(a0)
  ADDI a1, zero, 10
  SW a2, 28(a0)
  ADDI a2, zero, 11
  SW a3, 32(a0)
  ADDI a3, zero, 12
  SW t0, 36(a0)
  ADDI t0, zero, 13
  SW a1, 40(a0)
  ADDI a1, zero, 14
  SW a2, 44(a0)
  ADDI a2, zero, 15
  SW a3, 48(a0)
  ADDI a3, zero, 16
  SW t0, 52(a0)
  ADDI t0, zero, 17
  SW a1, 56(a0)
  ADDI a1, zero, 18
  SW a2, 60(a0)
  ADDI a2, zero, 19
  SW a3, 64(a0)
  ADDI a3, zero, 20
  SW t0, 68(a0)
  ADDI t0, zero, 21
  SW a1, 72(a0)
  ADDI a1, zero, 22
  SW a2, 76(a0)
  ADDI a2, zero, 23
  SW a3, 80(a0)
  ADDI a3, zero, 24
  SW t0, 84(a0)
  ADDI t0, zero, 25
  SW a1, 88(a0)
  ADDI a1, zero, 26
  SW a2, 92(a0)
  ADDI a2, zero, 27
  SW a3, 96(a0)
  ADDI a3, zero, 28
  SW t0, 100(a0)
  ADDI t0, zero, 29
  SW a1, 104(a0)
  ADDI a1, zero, 30
  SW a2, 108(a0)
  ADDI a2, zero, 31
  SW a3, 112(a0)
  ADDI a3, zero, 32
  SW t0, 116(a0)
  ADDI t0, zero, 33
  SW a1, 120(a0)
  ADDI a1, zero, 34
  SW a2, 124(a0)
  ADDI a2, zero, 35
  SW a3, 128(a0)
  ADDI a3, zero, 36
  SW t0, 132(a0)
  ADDI t0, zero, 37
  SW a1, 136(a0)
  ADDI a1, zero, 38
  SW a2, 140(a0)
  ADDI a2, zero, 39
  SW a3, 144(a0)
  ADDI a3, zero, 40
  SW t0, 148(a0)
  ADDI t0, zero, 41
  SW a1, 152(a0)
  ADDI a1, zero, 42
  SW a2, 156(a0)
  ADDI a2, zero, 43
  SW a3, 160(a0)
  ADDI a3, zero, 44
  SW t0, 164(a0)
  ADDI t0, zero, 45
  SW a1, 168(a0)
  ADDI a1, zero, 46
  SW a2, 172(a0)
  ADDI a2, zero, 47
  SW a3, 176(a0)
  ADDI a3, zero, 48
  SW t0, 180(a0)
  ADDI t0, zero, 49
  SW a1, 184(a0)
  ADDI a1, zero, 50
  SW a2, 188(a0)
  ADDI a2, zero, 51
  SW a3, 192(a0)
  ADDI a3, zero, 52
  SW t0, 196(a0)
  ADDI t0, zero, 53
  SW a1, 200(a0)
  ADDI a1, zero, 54
  SW a2, 204(a0)
  ADDI a2, zero, 55
  SW a3, 208(a0)
  ADDI a3, zero, 56
  SW t0, 212(a0)
  ADDI t0, zero, 57
  SW a1, 216(a0)
  ADDI a1, zero, 58
  SW a2, 220(a0)
  ADDI a2, zero, 59
  SW a3, 224(a0)
  ADDI a3, zero, 60
  SW t0, 228(a0)
  ADDI t0, zero, 61
  SW a1, 232(a0)
  ADDI a1, zero, 62
  SW a2, 236(a0)
  ADDI a2, zero, 63
  SW a3, 240(a0)
  ADDI a3, zero, 64
  SW t0, 244(a0)
  ADDI t0, zero, 65
  SW a1, 248(a0)
  ADDI a1, zero, 66
  SW a2, 252(a0)
  ADDI a2, zero, 67
  SW a3, 256(a0)
  ADDI a3, zero, 68
  SW t0, 260(a0)
  ADDI t0, zero, 69
  SW a1, 264(a0)
  ADDI a1, zero, 70
  SW a2, 268(a0)
  ADDI a2, zero, 71
  SW a3, 272(a0)
  ADDI a3, zero, 72
  SW t0, 276(a0)
  ADDI t0, zero, 73
  SW a1, 280(a0)
  ADDI a1, zero, 74
  SW a2, 284(a0)
  ADDI a2, zero, 75
  SW a3, 288(a0)
  ADDI a3, zero, 76
  SW t0, 292(a0)
  ADDI t0, zero, 77
  SW a1, 296(a0)
  ADDI a1, zero, 78
  SW a2, 300(a0)
  ADDI a2, zero, 79
  SW a3, 304(a0)
  ADDI a3, zero, 80
  SW t0, 308(a0)
  ADDI t0, zero, 81
  SW a1, 312(a0)
  ADDI a1, zero, 82
  SW a2, 316(a0)
  ADDI a2, zero, 83
  SW a3, 320(a0)
  ADDI a3, zero, 84
  SW t0, 324(a0)
  ADDI t0, zero, 85
  SW a1, 328(a0)
  ADDI a1, zero, 86
  SW a2, 332(a0)
  ADDI a2, zero, 87
  SW a3, 336(a0)
  ADDI a3, zero, 88
  SW t0, 340(a0)
  ADDI t0, zero, 89
  SW a1, 344(a0)
  ADDI a1, zero, 90
  SW a2, 348(a0)
  ADDI a2, zero, 91
  SW a3, 352(a0)
  ADDI a3, zero, 92
  SW t0, 356(a0)
  ADDI t0, zero, 93
  SW a1, 360(a0)
  ADDI a1, zero, 94
  SW a2, 364(a0)
  ADDI a2, zero, 95
  SW a3, 368(a0)
  ADDI a3, zero, 96
  SW t0, 372(a0)
  ADDI a4, zero, 97
  SW a1, 376(a0)
  ADDI a1, zero, 98
  SW a2, 380(a0)
  SW a3, 384(a0)
  ADDIW t2, t2, 1
  SW a4, 388(a0)
  ADDI a2, zero, 99
  SW a1, 392(a0)
  ADDIW t1, t1, 400
  SLTI a1, t2, 20
  SW a2, 396(a0)
  BNE a1, zero, bb3
  # implict jump to bb2
bb2:   # loop depth 0
  LA t1, array
  LUI t0, 2
  ADDIW t0, t0, -500
  LA t2, array
  ADD t0, t1, t0
  LUI t1, 2
  LW t0, 0(t0)
  ADDIW t1, t1, -992
  LA a0, array
  LUI a1, 2
  ADDIW a1, a1, -1392
  LA a2, array
  SH2ADD t0, t0, t2
  LUI t2, 2
  ADD t0, t0, t1
  ADDIW t2, t2, -1792
  LW t0, 0(t0)
  LA t1, array
  LUI a3, 1
  LA a4, array
  ADDIW a3, a3, 1904
  LUI a5, 1
  SH2ADD t0, t0, a0
  ADDIW a5, a5, 1504
  ADD t0, t0, a1
  LA a0, array
  LW t0, 0(t0)
  LUI a1, 1
  ADDIW a1, a1, 1104
  LA a6, array
  LUI a7, 1
  LA t3, array
  SH2ADD t0, t0, a2
  ADDIW a7, a7, 704
  ADD t0, t0, t2
  LUI t2, 1
  LW t0, 0(t0)
  ADDIW t2, t2, 304
  LA a2, array
  LUI t4, 1
  ADDIW t4, t4, -96
  LA t5, array
  SH2ADD t0, t0, t1
  LUI s0, 1
  ADD t0, t0, a3
  ADDIW s0, s0, -496
  LW t0, 0(t0)
  LA a3, array
  LUI s1, 1
  LA s2, array
  ADDIW s1, s1, -896
  LUI s3, 1
  SH2ADD t0, t0, a4
  ADDIW s3, s3, -1296
  ADD t0, t0, a5
  LA a4, array
  LW t0, 0(t0)
  LUI a5, 1
  ADDIW a5, a5, -1696
  LA s4, array
  LA s5, array
  LA t1, array
  SD t1, 88(sp)
  SH2ADD t0, t0, a0
  LA t1, array
  SD t1, 192(sp)
  ADD t0, t0, a1
  LA t1, array
  SD t1, 176(sp)
  LW t0, 0(t0)
  LA t1, array
  SD t1, 168(sp)
  LA a0, array
  LUI t1, 2
  ADDIW t1, t1, -520
  ADDI a1, zero, 400
  SW a1, 40(sp)
  SH2ADD t0, t0, a6
  ADD t1, a0, t1
  ADD t0, t0, a7
  LA a0, array
  SD a0, 160(sp)
  LW t0, 0(t0)
  ADDI a0, zero, 400
  SW a0, 28(sp)
  LA a0, array
  SD a0, 152(sp)
  ADDI a0, zero, 400
  SW a0, 12(sp)
  LA a0, array
  SD a0, 104(sp)
  ADDI a0, zero, 400
  SW a0, 36(sp)
  SH2ADD t0, t0, t3
  LA a0, array
  SD a0, 264(sp)
  ADD t0, t0, t2
  ADDI t2, zero, 400
  SW t2, 4(sp)
  LW t0, 0(t0)
  LA t2, array
  SD t2, 288(sp)
  ADDI t2, zero, 400
  SW t2, 44(sp)
  LA t2, array
  SD t2, 280(sp)
  ADDI t2, zero, 400
  SW t2, 48(sp)
  LA t2, array
  SD t2, 272(sp)
  SH2ADD t0, t0, a2
  ADDI t2, zero, 400
  SW t2, 8(sp)
  ADD t0, t0, t4
  LA t2, array
  SD t2, 320(sp)
  LW t0, 0(t0)
  ADDI t2, zero, 400
  SW t2, 0(sp)
  LA t2, array
  SD t2, 200(sp)
  ADDI t2, zero, 400
  SW t2, 52(sp)
  LA t2, array
  SD t2, 256(sp)
  ADDI t2, zero, 400
  SW t2, 56(sp)
  SH2ADD t0, t0, t5
  LA t2, array
  SD t2, 312(sp)
  ADD t0, t0, s0
  ADDI t2, zero, 400
  SW t2, 16(sp)
  LW t0, 0(t0)
  LA t2, array
  SD t2, 248(sp)
  ADDI t2, zero, 400
  SW t2, 64(sp)
  LA t2, array
  SD t2, 240(sp)
  ADDI t2, zero, 400
  SW t2, 68(sp)
  LA t2, array
  SD t2, 232(sp)
  SH2ADD t0, t0, a3
  ADDI t2, zero, 400
  SW t2, 20(sp)
  ADD t0, t0, s1
  LA t2, array
  SD t2, 304(sp)
  LW t0, 0(t0)
  ADDI t2, zero, 400
  SW t2, 72(sp)
  LA t2, array
  SD t2, 224(sp)
  ADDI t2, zero, 400
  SW t2, 76(sp)
  LA t2, array
  SD t2, 216(sp)
  ADDI t2, zero, 400
  SW t2, 60(sp)
  SH2ADD t0, t0, s2
  LA t2, array
  SD t2, 296(sp)
  ADD t0, t0, s3
  ADDI s2, zero, 400
  LW t0, 0(t0)
  LA t2, array
  SD t2, 208(sp)
  SH2ADD t0, t0, a4
  ADD t0, t0, a5
  LW t0, 0(t0)
  SH2ADD t0, t0, s4
  LW t0, 2000(t0)
  SH2ADD t0, t0, s5
  LW t0, 1600(t0)
  LD t2, 88(sp)
  SH2ADD t0, t0, t2
  LW t0, 1200(t0)
  LD t2, 192(sp)
  SH2ADD t0, t0, t2
  LW t0, 800(t0)
  LD t2, 176(sp)
  SH2ADD t0, t0, t2
  LW t0, 400(t0)
  LD t2, 168(sp)
  SH2ADD t0, t0, t2
  LW t0, 0(t0)
  LW t1, 0(t1)
  LW t2, 40(sp)
  MULW t1, t1, t2
  LD t2, 160(sp)
  ADD t1, t2, t1
  LW t1, 68(t1)
  LW t2, 28(sp)
  MULW t1, t1, t2
  LD t2, 152(sp)
  ADD t1, t2, t1
  LW t1, 64(t1)
  LW t2, 12(sp)
  MULW t1, t1, t2
  LD t2, 104(sp)
  ADD t1, t2, t1
  LW t1, 60(t1)
  LW t2, 36(sp)
  MULW t1, t1, t2
  LD t2, 264(sp)
  ADD t1, t2, t1
  LW t1, 56(t1)
  LW t2, 4(sp)
  MULW t1, t1, t2
  LD t2, 288(sp)
  ADD t1, t2, t1
  LW t1, 52(t1)
  LW t2, 44(sp)
  MULW t1, t1, t2
  LD t2, 280(sp)
  ADD t1, t2, t1
  LW t1, 48(t1)
  LW t2, 48(sp)
  MULW t1, t1, t2
  LD t2, 272(sp)
  ADD t1, t2, t1
  LW t1, 44(t1)
  LW t2, 8(sp)
  MULW t1, t1, t2
  LD t2, 320(sp)
  ADD t1, t2, t1
  LW t1, 40(t1)
  LW t2, 0(sp)
  MULW t1, t1, t2
  LD t2, 200(sp)
  ADD t1, t2, t1
  LW t1, 36(t1)
  LW t2, 52(sp)
  MULW t1, t1, t2
  LD t2, 256(sp)
  ADD t1, t2, t1
  LW t1, 32(t1)
  LW t2, 56(sp)
  MULW t1, t1, t2
  LD t2, 312(sp)
  ADD t1, t2, t1
  LW t1, 28(t1)
  LW t2, 16(sp)
  MULW t1, t1, t2
  LD t2, 248(sp)
  ADD t1, t2, t1
  LW t1, 24(t1)
  LW t2, 64(sp)
  MULW t1, t1, t2
  LD t2, 240(sp)
  ADD t1, t2, t1
  LW t1, 20(t1)
  LW t2, 68(sp)
  MULW t1, t1, t2
  LD t2, 232(sp)
  ADD t1, t2, t1
  LW t1, 16(t1)
  LW t2, 20(sp)
  MULW t1, t1, t2
  LD t2, 304(sp)
  ADD t1, t2, t1
  LW t1, 12(t1)
  LW t2, 72(sp)
  MULW t1, t1, t2
  LD t2, 224(sp)
  ADD t1, t2, t1
  LW t1, 8(t1)
  LW t2, 76(sp)
  MULW t1, t1, t2
  LD t2, 216(sp)
  ADD t1, t2, t1
  LW t1, 4(t1)
  LW t2, 60(sp)
  MULW t1, t1, t2
  LD t2, 296(sp)
  ADD t1, t2, t1
  LW t1, 0(t1)
  MULW t1, t1, s2
  LD t2, 208(sp)
  ADD t1, t2, t1
  LW t1, 224(t1)
  ADDW a0, t0, t1
  CALL putint
  ADD a0, zero, zero
  LD s5, 80(sp)
  LD s4, 96(sp)
  LD ra, 112(sp)
  LD s0, 120(sp)
  LD s1, 128(sp)
  LD s2, 136(sp)
  LD s3, 144(sp)
  ADDI sp, sp, 336
  JALR zero, 0(ra)
bb3:   # loop depth 1
  JAL zero, bb1
