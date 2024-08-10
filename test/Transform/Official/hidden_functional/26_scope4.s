.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss



.section .data
count:
.word 0x00000000
sum:
.word 0x00000000
a:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -448
  SD ra, 128(sp)
  SD s0, 136(sp)
  SD s1, 144(sp)
  SD s2, 152(sp)
  SD s3, 160(sp)
  SD s4, 168(sp)
  SD s5, 176(sp)
  SD s6, 184(sp)
  SD s7, 192(sp)
  SD s8, 200(sp)
  SD s9, 208(sp)
  SD s10, 216(sp)
  SD s11, 224(sp)
  LA a0, sum
  LA s1, count
  ADDI s0, zero, 0
  LA s3, count
  SW s0, 0(a0)
  LA s5, a
  LW s1, 0(s1)
  LA s6, sum
  LA s7, count
  LA s8, sum
  LA s9, count
  LA s10, sum
  ADDIW s4, s1, 1
  ADDIW s2, s1, 2
  SW s4, 0(s3)
  ADDW s3, s4, s2
  SW s4, 0(s5)
  ADDIW s5, s1, 3
  SW s4, 0(s6)
  LA s11, count
  SW s2, 0(s7)
  ADDW s6, s3, s5
  SW s3, 0(s8)
  LA s7, sum
  SW s5, 0(s9)
  ADDIW s3, s1, 4
  SW s6, 0(s10)
  LA s8, sum
  ADDW s6, s6, s3
  SW s3, 0(s11)
  LA s9, sum
  ADDW s3, s6, s5
  SW s6, 0(s7)
  LA s6, sum
  ADDW s5, s3, s5
  SW s3, 0(s8)
  LA s7, count
  ADDW s3, s5, s4
  SW s5, 0(s9)
  LA s8, sum
  ADDIW s5, s1, 5
  SW s3, 0(s6)
  LA s6, count
  ADDW s3, s3, s4
  SW s5, 0(s7)
  LA s7, sum
  ADDIW s5, s1, 6
  SW s3, 0(s8)
  LA s8, count
  ADDW s3, s3, s5
  SW s5, 0(s6)
  LA s9, sum
  ADDIW s5, s1, 7
  SW s3, 0(s7)
  LA s7, count
  ADDW s3, s3, s5
  SW s5, 0(s8)
  LA s8, sum
  ADDIW s6, s1, 8
  SW s3, 0(s9)
  LA s9, sum
  ADDW s3, s3, s5
  SW s6, 0(s7)
  LA s6, count
  ADDW s5, s3, s2
  SW s3, 0(s8)
  LA s7, sum
  ADDIW s3, s1, 9
  SW s5, 0(s9)
  LA s8, count
  ADDW s5, s5, s3
  SW s3, 0(s6)
  LA s9, sum
  ADDIW s6, s1, 10
  SW s5, 0(s7)
  LA s7, sum
  ADDW s5, s5, s6
  SW s6, 0(s8)
  LA s8, sum
  ADDW s6, s5, s3
  SW s5, 0(s9)
  LA s9, sum
  ADDW s3, s6, s3
  SW s6, 0(s7)
  LA s6, count
  ADDW s5, s3, s4
  SW s3, 0(s8)
  LA s7, sum
  ADDIW s3, s1, 11
  SW s5, 0(s9)
  LA s8, count
  ADDW s5, s5, s4
  SW s3, 0(s6)
  LA s6, sum
  ADDIW s3, s1, 12
  SW s5, 0(s7)
  LA s7, count
  ADDW s5, s5, s3
  SW s3, 0(s8)
  LA s8, sum
  ADDIW s3, s1, 13
  SW s5, 0(s6)
  LA s9, count
  ADDW s5, s5, s3
  SW s3, 0(s7)
  LA s7, sum
  ADDIW s6, s1, 14
  SW s5, 0(s8)
  LA s8, count
  ADDW s3, s5, s3
  SW s6, 0(s9)
  LA s6, sum
  ADDIW s5, s1, 15
  SW s3, 0(s7)
  LA s7, count
  ADDW s3, s3, s2
  SW s5, 0(s8)
  LA s8, sum
  ADDIW s5, s1, 16
  SW s3, 0(s6)
  LA s9, count
  ADDW s3, s3, s5
  SW s5, 0(s7)
  LA s7, sum
  ADDIW s6, s1, 17
  SW s3, 0(s8)
  LA s8, sum
  ADDW s3, s3, s6
  SW s6, 0(s9)
  LA s9, sum
  ADDW s6, s3, s5
  SW s3, 0(s7)
  LA s7, sum
  ADDW s3, s6, s5
  SW s6, 0(s8)
  LA s6, count
  ADDW s5, s3, s4
  SW s3, 0(s9)
  LA s8, sum
  ADDIW s3, s1, 18
  SW s5, 0(s7)
  LA s7, count
  ADDW s5, s5, s4
  SW s3, 0(s6)
  LA s6, sum
  ADDIW s3, s1, 19
  SW s5, 0(s8)
  LA s8, count
  ADDW s5, s5, s3
  SW s3, 0(s7)
  LA s7, sum
  ADDIW s3, s1, 20
  SW s5, 0(s6)
  LA s9, count
  ADDW s5, s5, s3
  SW s3, 0(s8)
  LA s8, sum
  ADDIW s6, s1, 21
  SW s5, 0(s7)
  LA s7, count
  ADDW s3, s5, s3
  SW s6, 0(s9)
  LA s9, count
  ADDIW s5, s1, 22
  SW s3, 0(s8)
  LA s8, sum
  ADDIW s6, s1, 23
  SW s5, 0(s7)
  LA s7, count
  ADDW s3, s3, s6
  SW s6, 0(s9)
  LA s9, sum
  ADDIW s5, s1, 24
  SW s3, 0(s8)
  LA s8, count
  ADDW s3, s3, s5
  SW s5, 0(s7)
  LA s7, sum
  ADDIW s6, s1, 25
  SW s3, 0(s9)
  LA s9, sum
  ADDW s3, s3, s6
  SW s6, 0(s8)
  LA s8, sum
  ADDW s6, s3, s5
  SW s3, 0(s7)
  LA s7, sum
  ADDW s3, s6, s5
  SW s6, 0(s9)
  LA s6, count
  ADDW s5, s3, s4
  SW s3, 0(s8)
  LA s8, sum
  ADDIW s3, s1, 26
  SW s5, 0(s7)
  LA s7, count
  ADDW s5, s5, s4
  SW s3, 0(s6)
  LA s6, sum
  ADDIW s3, s1, 27
  SW s5, 0(s8)
  LA s8, count
  ADDW s5, s5, s3
  SW s3, 0(s7)
  LA s7, sum
  ADDIW s3, s1, 28
  SW s5, 0(s6)
  LA s9, count
  ADDW s5, s5, s3
  SW s3, 0(s8)
  LA s8, sum
  ADDIW s6, s1, 29
  SW s5, 0(s7)
  LA s7, count
  ADDW s3, s5, s3
  SW s6, 0(s9)
  LA s6, sum
  ADDIW s5, s1, 30
  SW s3, 0(s8)
  LA s8, count
  ADDW s3, s3, s5
  SW s5, 0(s7)
  LA s7, sum
  ADDIW s5, s1, 31
  SW s3, 0(s6)
  LA s9, count
  ADDW s3, s3, s5
  SW s5, 0(s8)
  LA s8, sum
  ADDIW s6, s1, 32
  SW s3, 0(s7)
  LA s7, sum
  ADDW s3, s3, s6
  SW s6, 0(s9)
  LA s9, sum
  ADDW s6, s3, s5
  SW s3, 0(s8)
  LA s8, sum
  ADDW s3, s6, s5
  SW s6, 0(s7)
  LA s6, count
  ADDW s5, s3, s4
  SW s3, 0(s9)
  LA s7, sum
  ADDIW s3, s1, 33
  SW s5, 0(s8)
  LA s8, count
  ADDW s5, s5, s4
  SW s3, 0(s6)
  LA s6, sum
  ADDIW s3, s1, 34
  SW s5, 0(s7)
  LA s7, count
  ADDW s5, s5, s3
  SW s3, 0(s8)
  LA s8, sum
  ADDIW s3, s1, 35
  SW s5, 0(s6)
  LA s9, count
  ADDW s5, s5, s3
  SW s3, 0(s7)
  LA s7, sum
  ADDIW s6, s1, 36
  SW s5, 0(s8)
  LA s8, count
  ADDW s3, s5, s3
  SW s6, 0(s9)
  LA s6, sum
  ADDIW s5, s1, 37
  SW s3, 0(s7)
  LA s7, count
  ADDW s3, s3, s5
  SW s5, 0(s8)
  LA s8, sum
  ADDIW s5, s1, 38
  SW s3, 0(s6)
  LA s9, count
  ADDW s3, s3, s5
  SW s5, 0(s7)
  LA s7, sum
  ADDIW s6, s1, 39
  SW s3, 0(s8)
  LA s8, sum
  ADDW s3, s3, s6
  SW s6, 0(s9)
  LA s9, sum
  ADDW s6, s3, s5
  SW s3, 0(s7)
  LA s7, sum
  ADDW s3, s6, s5
  SW s6, 0(s8)
  LA s6, count
  ADDW s5, s3, s4
  SW s3, 0(s9)
  LA s8, sum
  ADDIW s3, s1, 40
  SW s5, 0(s7)
  LA s7, count
  ADDW s5, s5, s4
  SW s3, 0(s6)
  LA s6, sum
  ADDIW s3, s1, 41
  SW s5, 0(s8)
  LA s8, count
  ADDW s5, s5, s3
  SW s3, 0(s7)
  LA s7, sum
  ADDIW s3, s1, 42
  SW s5, 0(s6)
  LA s9, count
  ADDW s5, s5, s3
  SW s3, 0(s8)
  LA s8, sum
  ADDIW s6, s1, 43
  SW s5, 0(s7)
  LA s7, sum
  ADDW s3, s5, s3
  SW s6, 0(s9)
  LA s6, count
  ADDW s5, s3, s2
  SW s3, 0(s8)
  LA s8, sum
  ADDIW s3, s1, 44
  SW s5, 0(s7)
  LA s7, count
  ADDW s5, s5, s3
  SW s3, 0(s6)
  LA s9, sum
  ADDIW s6, s1, 45
  SW s5, 0(s8)
  LA s8, sum
  ADDW s5, s5, s6
  SW s6, 0(s7)
  LA s7, sum
  ADDW s6, s5, s3
  SW s5, 0(s9)
  LA s9, sum
  ADDW s3, s6, s3
  SW s6, 0(s8)
  LA s6, count
  ADDW s5, s3, s4
  SW s3, 0(s7)
  LA s7, sum
  ADDIW s3, s1, 46
  SW s5, 0(s9)
  LA s8, count
  ADDW s5, s5, s4
  SW s3, 0(s6)
  LA s6, sum
  ADDIW s3, s1, 47
  SW s5, 0(s7)
  LA s7, count
  ADDW s5, s5, s3
  SW s3, 0(s8)
  LA s8, sum
  ADDIW s3, s1, 48
  SW s5, 0(s6)
  LA s6, count
  ADDW s5, s5, s3
  SW s3, 0(s7)
  LA s7, sum
  ADDIW s1, s1, 49
  SW s5, 0(s8)
  ADDW s3, s5, s3
  SW s1, 0(s6)
  ADD s1, zero, zero
  ADD a0, zero, zero
  SW s3, 0(s7)
  # implict jump to bb1
bb1:   # loop depth 1
  SW a0, 0(sp)
  SLTI s3, s1, 3
  BNE s3, zero, bb3
  # implict jump to bb2
bb2:   # loop depth 0
  LA a0, sum
  LW a0, 0(a0)
  CALL putint
  ADD a0, zero, zero
  LD ra, 128(sp)
  LD s0, 136(sp)
  LD s1, 144(sp)
  LD s2, 152(sp)
  LD s3, 160(sp)
  LD s4, 168(sp)
  LD s5, 176(sp)
  LD s6, 184(sp)
  LD s7, 192(sp)
  LD s8, 200(sp)
  LD s9, 208(sp)
  LD s10, 216(sp)
  LD s11, 224(sp)
  ADDI sp, sp, 448
  JALR zero, 0(ra)
bb3:   # loop depth 1
  # implict jump to bb4
bb4:   # loop depth 1
  LA s0, sum
  LA s3, sum
  LA s5, count
  LA a0, count
  SD a0, 112(sp)
  LW s0, 0(s0)
  LA a0, sum
  SD a0, 104(sp)
  LA a0, count
  SD a0, 96(sp)
  LA a0, sum
  SD a0, 88(sp)
  LA a0, sum
  SD a0, 80(sp)
  LA a0, sum
  SD a0, 376(sp)
  ADDW s0, s0, s2
  LA a0, sum
  SD a0, 368(sp)
  SW s0, 0(s3)
  LA a0, count
  SD a0, 360(sp)
  LW s3, 0(s5)
  LA a0, sum
  SD a0, 72(sp)
  LA a0, count
  SD a0, 352(sp)
  LA a0, sum
  SD a0, 344(sp)
  LA a0, count
  SD a0, 232(sp)
  LA a0, sum
  SD a0, 328(sp)
  ADDIW s5, s3, 1
  ADDIW s6, s3, 2
  ADDW s0, s0, s5
  LD a0, 112(sp)
  SW s5, 0(a0)
  LD a0, 104(sp)
  SW s0, 0(a0)
  ADDW s0, s0, s6
  LD a0, 96(sp)
  SW s6, 0(a0)
  ADDW s6, s0, s5
  LD a0, 88(sp)
  SW s0, 0(a0)
  ADDW s0, s6, s5
  LD a0, 80(sp)
  SW s6, 0(a0)
  ADDW s5, s0, s4
  LD a0, 376(sp)
  SW s0, 0(a0)
  ADDIW s0, s3, 3
  LD a0, 368(sp)
  SW s5, 0(a0)
  ADDW s5, s5, s4
  LD a0, 360(sp)
  SW s0, 0(a0)
  ADDIW s0, s3, 4
  LD a0, 72(sp)
  SW s5, 0(a0)
  ADDW s5, s5, s0
  LD a0, 352(sp)
  SW s0, 0(a0)
  ADDIW s0, s3, 5
  LD a0, 344(sp)
  SW s5, 0(a0)
  LA s7, count
  ADDW s5, s5, s0
  LD a0, 232(sp)
  SW s0, 0(a0)
  LA s8, sum
  ADDIW s3, s3, 6
  LD a0, 328(sp)
  SW s5, 0(a0)
  XORI s6, s1, 1
  ADDW s5, s5, s0
  SW s3, 0(s7)
  ADDIW a0, s1, 1
  SW a0, 4(sp)
  SLTIU s1, s6, 1
  SW s5, 0(s8)
  BNE s1, zero, bb6
  # implict jump to bb5
bb5:   # loop depth 1
  LA s1, sum
  LA s3, sum
  LA s5, count
  LA s6, count
  LW s1, 0(s1)
  LA s7, sum
  LA a0, count
  SD a0, 272(sp)
  LA a0, sum
  SD a0, 264(sp)
  LA a0, sum
  SD a0, 256(sp)
  LA a0, sum
  SD a0, 248(sp)
  ADDW s1, s1, s2
  LA a0, sum
  SD a0, 432(sp)
  SW s1, 0(s3)
  LA a0, count
  SD a0, 424(sp)
  LW s2, 0(s5)
  LA a0, sum
  SD a0, 416(sp)
  LA a0, count
  SD a0, 408(sp)
  LA a0, sum
  SD a0, 400(sp)
  LA a0, count
  SD a0, 392(sp)
  LA a0, sum
  SD a0, 240(sp)
  ADDIW s3, s2, 1
  ADDIW s5, s2, 2
  ADDW s1, s1, s3
  SW s3, 0(s6)
  SW s1, 0(s7)
  ADDW s1, s1, s5
  LD a0, 272(sp)
  SW s5, 0(a0)
  ADDW s5, s1, s3
  LD a0, 264(sp)
  SW s1, 0(a0)
  ADDW s1, s5, s3
  LD a0, 256(sp)
  SW s5, 0(a0)
  ADDW s3, s1, s4
  LD a0, 248(sp)
  SW s1, 0(a0)
  ADDIW s1, s2, 3
  LD a0, 432(sp)
  SW s3, 0(a0)
  ADDW s3, s3, s4
  LD a0, 424(sp)
  SW s1, 0(a0)
  ADDIW s1, s2, 4
  LD a0, 416(sp)
  SW s3, 0(a0)
  ADDW s3, s3, s1
  LD a0, 408(sp)
  SW s1, 0(a0)
  ADDIW s1, s2, 5
  LD a0, 400(sp)
  SW s3, 0(a0)
  LA s6, count
  ADDW s3, s3, s1
  LD a0, 392(sp)
  SW s1, 0(a0)
  LA s7, sum
  ADDIW s5, s2, 6
  LD a0, 240(sp)
  SW s3, 0(a0)
  LA s8, count
  ADDW s1, s3, s1
  SW s5, 0(s6)
  ADDIW s3, s2, 7
  SW s1, 0(s7)
  LW s1, 4(sp)
  ADD s2, s3, zero
  LW a0, 0(sp)
  SW s3, 0(s8)
  JAL zero, bb1
bb6:   # loop depth 1
  LA a0, count
  LA s3, count
  LA s7, sum
  LA s0, sum
  SD s0, 48(sp)
  LW s1, 0(a0)
  LA s8, count
  LA a0, sum
  SD a0, 40(sp)
  LA a0, count
  SD a0, 32(sp)
  LA a0, sum
  SD a0, 320(sp)
  LA a0, sum
  SD a0, 312(sp)
  ADDIW a0, s1, 1
  ADDIW s5, s1, 2
  SW a0, 0(s3)
  ADDIW s6, s1, 3
  LW s3, 0(s7)
  LA s0, sum
  SD s0, 304(sp)
  LA s0, sum
  SD s0, 296(sp)
  LA s0, count
  SD s0, 288(sp)
  LA s0, sum
  SD s0, 280(sp)
  ADDIW s0, s1, 4
  SW s0, 8(sp)
  ADDW s3, s3, a0
  LA s0, count
  SD s0, 24(sp)
  LD s0, 48(sp)
  SW s3, 0(s0)
  ADDW s3, s3, s5
  SW s5, 0(s8)
  ADDW s7, s3, s6
  LD s0, 40(sp)
  SW s3, 0(s0)
  ADDW s3, s7, s5
  LD s0, 32(sp)
  SW s6, 0(s0)
  ADDW s5, s3, s5
  LD s0, 320(sp)
  SW s7, 0(s0)
  ADDW s6, s5, s4
  LD s0, 312(sp)
  SW s3, 0(s0)
  ADDW s3, s6, s4
  LD s0, 304(sp)
  SW s5, 0(s0)
  LA s7, sum
  LD s0, 296(sp)
  SW s6, 0(s0)
  ADDIW s5, s1, 5
  LD s0, 288(sp)
  LW s6, 8(sp)
  SW s6, 0(s0)
  LA s6, count
  LD s0, 280(sp)
  SW s3, 0(s0)
  ADDW s3, s3, s5
  LD s0, 24(sp)
  SW s5, 0(s0)
  LA s8, sum
  ADDIW s5, s1, 6
  SW s3, 0(s7)
  LA s7, count
  ADDW s3, s3, s5
  SW s5, 0(s6)
  LA s6, sum
  ADDIW s1, s1, 7
  SW s3, 0(s8)
  ADDW s3, s3, s5
  SW s1, 0(s7)
  LW s1, 4(sp)
  SW s3, 0(s6)
  JAL zero, bb1
