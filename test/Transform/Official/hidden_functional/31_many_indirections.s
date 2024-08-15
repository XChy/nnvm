.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
array:
.space 8000
.section .data

.section .text
main:   # loop depth 0
  ADDI sp, sp, -128
  SD ra, 24(sp)
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s5, 72(sp)
  SD s6, 80(sp)
  SD s7, 88(sp)
  SD s8, 96(sp)
  SD s9, 104(sp)
  SD s10, 112(sp)
  LA a2, array
  ADD t2, zero, zero
  ADD t1, zero, zero
  # implict jump to bb1
bb1:   # loop depth 1
  ADDI t0, zero, 1
  ADD a0, a2, t1
  ADDI a1, zero, 2
  SW zero, 0(a0)
  ADDI a3, zero, 3
  SW t0, 4(a0)
  ADDI t0, zero, 4
  SW a1, 8(a0)
  ADDI a1, zero, 5
  SW a3, 12(a0)
  ADDI a3, zero, 6
  SW t0, 16(a0)
  ADDI t0, zero, 7
  SW a1, 20(a0)
  ADDI a1, zero, 8
  SW a3, 24(a0)
  ADDI a3, zero, 9
  SW t0, 28(a0)
  ADDI t0, zero, 10
  SW a1, 32(a0)
  ADDI a1, zero, 11
  SW a3, 36(a0)
  ADDI a3, zero, 12
  SW t0, 40(a0)
  ADDI t0, zero, 13
  SW a1, 44(a0)
  ADDI a1, zero, 14
  SW a3, 48(a0)
  ADDI a3, zero, 15
  SW t0, 52(a0)
  ADDI t0, zero, 16
  SW a1, 56(a0)
  ADDI a1, zero, 17
  SW a3, 60(a0)
  ADDI a3, zero, 18
  SW t0, 64(a0)
  ADDI t0, zero, 19
  SW a1, 68(a0)
  ADDI a1, zero, 20
  SW a3, 72(a0)
  ADDI a3, zero, 21
  SW t0, 76(a0)
  ADDI t0, zero, 22
  SW a1, 80(a0)
  ADDI a1, zero, 23
  SW a3, 84(a0)
  ADDI a3, zero, 24
  SW t0, 88(a0)
  ADDI t0, zero, 25
  SW a1, 92(a0)
  ADDI a1, zero, 26
  SW a3, 96(a0)
  ADDI a3, zero, 27
  SW t0, 100(a0)
  ADDI t0, zero, 28
  SW a1, 104(a0)
  ADDI a1, zero, 29
  SW a3, 108(a0)
  ADDI a3, zero, 30
  SW t0, 112(a0)
  ADDI t0, zero, 31
  SW a1, 116(a0)
  ADDI a1, zero, 32
  SW a3, 120(a0)
  ADDI a3, zero, 33
  SW t0, 124(a0)
  ADDI t0, zero, 34
  SW a1, 128(a0)
  ADDI a1, zero, 35
  SW a3, 132(a0)
  ADDI a3, zero, 36
  SW t0, 136(a0)
  ADDI t0, zero, 37
  SW a1, 140(a0)
  ADDI a1, zero, 38
  SW a3, 144(a0)
  ADDI a3, zero, 39
  SW t0, 148(a0)
  ADDI t0, zero, 40
  SW a1, 152(a0)
  ADDI a1, zero, 41
  SW a3, 156(a0)
  ADDI a3, zero, 42
  SW t0, 160(a0)
  ADDI t0, zero, 43
  SW a1, 164(a0)
  ADDI a1, zero, 44
  SW a3, 168(a0)
  ADDI a3, zero, 45
  SW t0, 172(a0)
  ADDI t0, zero, 46
  SW a1, 176(a0)
  ADDI a1, zero, 47
  SW a3, 180(a0)
  ADDI a3, zero, 48
  SW t0, 184(a0)
  ADDI t0, zero, 49
  SW a1, 188(a0)
  ADDI a1, zero, 50
  SW a3, 192(a0)
  ADDI a3, zero, 51
  SW t0, 196(a0)
  ADDI t0, zero, 52
  SW a1, 200(a0)
  ADDI a1, zero, 53
  SW a3, 204(a0)
  ADDI a3, zero, 54
  SW t0, 208(a0)
  ADDI t0, zero, 55
  SW a1, 212(a0)
  ADDI a1, zero, 56
  SW a3, 216(a0)
  ADDI a3, zero, 57
  SW t0, 220(a0)
  ADDI t0, zero, 58
  SW a1, 224(a0)
  ADDI a1, zero, 59
  SW a3, 228(a0)
  ADDI a3, zero, 60
  SW t0, 232(a0)
  ADDI t0, zero, 61
  SW a1, 236(a0)
  ADDI a1, zero, 62
  SW a3, 240(a0)
  ADDI a3, zero, 63
  SW t0, 244(a0)
  ADDI t0, zero, 64
  SW a1, 248(a0)
  ADDI a1, zero, 65
  SW a3, 252(a0)
  ADDI a3, zero, 66
  SW t0, 256(a0)
  ADDI t0, zero, 67
  SW a1, 260(a0)
  ADDI a1, zero, 68
  SW a3, 264(a0)
  ADDI a3, zero, 69
  SW t0, 268(a0)
  ADDI t0, zero, 70
  SW a1, 272(a0)
  ADDI a1, zero, 71
  SW a3, 276(a0)
  ADDI a3, zero, 72
  SW t0, 280(a0)
  ADDI t0, zero, 73
  SW a1, 284(a0)
  ADDI a1, zero, 74
  SW a3, 288(a0)
  ADDI a3, zero, 75
  SW t0, 292(a0)
  ADDI t0, zero, 76
  SW a1, 296(a0)
  ADDI a1, zero, 77
  SW a3, 300(a0)
  ADDI a3, zero, 78
  SW t0, 304(a0)
  ADDI t0, zero, 79
  SW a1, 308(a0)
  ADDI a1, zero, 80
  SW a3, 312(a0)
  ADDI a3, zero, 81
  SW t0, 316(a0)
  ADDI t0, zero, 82
  SW a1, 320(a0)
  ADDI a1, zero, 83
  SW a3, 324(a0)
  ADDI a3, zero, 84
  SW t0, 328(a0)
  ADDI t0, zero, 85
  SW a1, 332(a0)
  ADDI a1, zero, 86
  SW a3, 336(a0)
  ADDI a3, zero, 87
  SW t0, 340(a0)
  ADDI t0, zero, 88
  SW a1, 344(a0)
  ADDI a1, zero, 89
  SW a3, 348(a0)
  ADDI a3, zero, 90
  SW t0, 352(a0)
  ADDI t0, zero, 91
  SW a1, 356(a0)
  ADDI a1, zero, 92
  SW a3, 360(a0)
  ADDI a3, zero, 93
  SW t0, 364(a0)
  ADDI t0, zero, 94
  SW a1, 368(a0)
  ADDI a1, zero, 95
  SW a3, 372(a0)
  ADDI a3, zero, 96
  SW t0, 376(a0)
  ADDI t0, zero, 97
  SW a1, 380(a0)
  ADDI a1, zero, 98
  SW a3, 384(a0)
  SW t0, 388(a0)
  ADDIW t2, t2, 1
  ADDI a3, zero, 99
  SW a1, 392(a0)
  ADDIW t1, t1, 400
  SLTI a1, t2, 20
  SW a3, 396(a0)
  BNE a1, zero, bb3
  # implict jump to bb2
bb2:   # loop depth 0
  LUI t0, 2
  LUI t1, 2
  ADDIW t0, t0, -500
  ADDIW t1, t1, -992
  ADD t0, a2, t0
  LUI t2, 2
  LW t0, 0(t0)
  ADDIW t2, t2, -1392
  LUI a0, 2
  LUI a1, 1
  ADDIW a0, a0, -1792
  ADDIW a1, a1, 1904
  SH2ADD t0, t0, a2
  LUI a3, 1
  ADD t0, t0, t1
  ADDIW a3, a3, 1504
  LW t0, 0(t0)
  LUI a4, 1
  ADDIW a4, a4, 1104
  LUI a5, 1
  ADDIW a5, a5, 704
  LUI a6, 1
  SH2ADD t0, t0, a2
  ADDIW a6, a6, 304
  ADD t0, t0, t2
  LUI t2, 1
  LW t0, 0(t0)
  ADDIW t2, t2, -96
  LUI a7, 1
  LUI t3, 1
  ADDIW a7, a7, -496
  ADDIW t3, t3, -896
  SH2ADD t0, t0, a2
  LUI t4, 1
  ADD t0, t0, a0
  ADDIW t4, t4, -1296
  LW t0, 0(t0)
  LUI a0, 1
  ADDIW a0, a0, -1696
  LUI t1, 2
  ADDIW t1, t1, -520
  ADDI t5, zero, 400
  SH2ADD t0, t0, a2
  ADD t1, a2, t1
  ADD t0, t0, a1
  ADDI a1, zero, 400
  LW t0, 0(t0)
  ADDI s0, zero, 400
  ADDI s1, zero, 400
  ADDI s2, zero, 400
  ADDI s3, zero, 400
  ADDI s4, zero, 400
  SH2ADD t0, t0, a2
  ADDI s5, zero, 400
  ADD t0, t0, a3
  ADDI a3, zero, 400
  LW t0, 0(t0)
  ADDI s6, zero, 400
  ADDI s7, zero, 400
  ADDI s8, zero, 400
  ADDI s9, zero, 400
  SW s9, 20(sp)
  ADDI s9, zero, 400
  SH2ADD t0, t0, a2
  ADDI s10, zero, 400
  ADD t0, t0, a4
  ADDI a4, zero, 400
  SW a4, 16(sp)
  LW t0, 0(t0)
  ADDI a4, zero, 400
  SW a4, 8(sp)
  ADDI a4, zero, 400
  SW a4, 4(sp)
  ADDI a4, zero, 400
  SW a4, 0(sp)
  SH2ADD t0, t0, a2
  ADD t0, t0, a5
  LW t0, 0(t0)
  SH2ADD t0, t0, a2
  ADD t0, t0, a6
  LW t0, 0(t0)
  SH2ADD t0, t0, a2
  ADD t0, t0, t2
  LW t0, 0(t0)
  SH2ADD t0, t0, a2
  ADD t0, t0, a7
  LW t0, 0(t0)
  SH2ADD t0, t0, a2
  ADD t0, t0, t3
  LW t0, 0(t0)
  SH2ADD t0, t0, a2
  ADD t0, t0, t4
  LW t0, 0(t0)
  SH2ADD t0, t0, a2
  ADD t0, t0, a0
  LW t0, 0(t0)
  SH2ADD t0, t0, a2
  LW t0, 2000(t0)
  SH2ADD t0, t0, a2
  LW t0, 1600(t0)
  SH2ADD t0, t0, a2
  LW t0, 1200(t0)
  SH2ADD t0, t0, a2
  LW t0, 800(t0)
  SH2ADD t0, t0, a2
  LW t0, 400(t0)
  SH2ADD t0, t0, a2
  LW t0, 0(t0)
  LW t1, 0(t1)
  MULW t1, t1, t5
  ADD t1, a2, t1
  LW t1, 68(t1)
  MULW t1, t1, a1
  ADD t1, a2, t1
  LW t1, 64(t1)
  MULW t1, t1, s0
  ADD t1, a2, t1
  LW t1, 60(t1)
  MULW t1, t1, s1
  ADD t1, a2, t1
  LW t1, 56(t1)
  MULW t1, t1, s2
  ADD t1, a2, t1
  LW t1, 52(t1)
  MULW t1, t1, s3
  ADD t1, a2, t1
  LW t1, 48(t1)
  MULW t1, t1, s4
  ADD t1, a2, t1
  LW t1, 44(t1)
  MULW t1, t1, s5
  ADD t1, a2, t1
  LW t1, 40(t1)
  MULW t1, t1, a3
  ADD t1, a2, t1
  LW t1, 36(t1)
  MULW t1, t1, s6
  ADD t1, a2, t1
  LW t1, 32(t1)
  MULW t1, t1, s7
  ADD t1, a2, t1
  LW t1, 28(t1)
  MULW t1, t1, s8
  ADD t1, a2, t1
  LW t1, 24(t1)
  LW t2, 20(sp)
  MULW t1, t1, t2
  ADD t1, a2, t1
  LW t1, 20(t1)
  MULW t1, t1, s9
  ADD t1, a2, t1
  LW t1, 16(t1)
  MULW t1, t1, s10
  ADD t1, a2, t1
  LW t1, 12(t1)
  LW t2, 16(sp)
  MULW t1, t1, t2
  ADD t1, a2, t1
  LW t1, 8(t1)
  LW t2, 8(sp)
  MULW t1, t1, t2
  ADD t1, a2, t1
  LW t1, 4(t1)
  LW t2, 4(sp)
  MULW t1, t1, t2
  ADD t1, a2, t1
  LW t1, 0(t1)
  LW t2, 0(sp)
  MULW t1, t1, t2
  ADD t1, a2, t1
  LW t1, 224(t1)
  ADDW a0, t0, t1
  CALL putint
  ADD a0, zero, zero
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD s10, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb3:   # loop depth 1
  JAL zero, bb1
