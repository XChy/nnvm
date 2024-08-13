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
  ADDI sp, sp, -432
  SD ra, 136(sp)
  SD s0, 144(sp)
  SD s1, 152(sp)
  SD s2, 160(sp)
  SD s3, 168(sp)
  SD s4, 176(sp)
  SD s5, 184(sp)
  SD s6, 192(sp)
  SD s7, 200(sp)
  SD s8, 208(sp)
  SD s9, 216(sp)
  SD s10, 224(sp)
  LA a0, sum
  LA s1, count
  ADDI s0, zero, 0
  LA s2, count
  SW s0, 0(a0)
  LA s4, a
  LW s1, 0(s1)
  LA s5, sum
  LA s6, count
  LA s7, sum
  LA s8, count
  LA s9, sum
  ADDIW s3, s1, 1
  ADDIW s0, s1, 2
  SW s3, 0(s2)
  ADDW s2, s3, s0
  SW s3, 0(s4)
  ADDIW s4, s1, 3
  SW s3, 0(s5)
  LA s10, count
  SW s0, 0(s6)
  ADDW s5, s2, s4
  SW s2, 0(s7)
  LA s6, sum
  SW s4, 0(s8)
  ADDIW s2, s1, 4
  SW s5, 0(s9)
  LA s7, sum
  ADDW s5, s5, s2
  SW s2, 0(s10)
  LA s8, sum
  ADDW s2, s5, s4
  SW s5, 0(s6)
  LA s5, sum
  ADDW s4, s2, s4
  SW s2, 0(s7)
  LA s6, count
  ADDW s2, s4, s3
  SW s4, 0(s8)
  LA s7, sum
  ADDIW s4, s1, 5
  SW s2, 0(s5)
  LA s5, count
  ADDW s2, s2, s3
  SW s4, 0(s6)
  LA s6, sum
  ADDIW s4, s1, 6
  SW s2, 0(s7)
  LA s7, count
  ADDW s2, s2, s4
  SW s4, 0(s5)
  LA s8, sum
  ADDIW s4, s1, 7
  SW s2, 0(s6)
  LA s6, count
  ADDW s2, s2, s4
  SW s4, 0(s7)
  LA s7, sum
  ADDIW s5, s1, 8
  SW s2, 0(s8)
  LA s8, sum
  ADDW s2, s2, s4
  SW s5, 0(s6)
  LA s5, count
  ADDW s4, s2, s0
  SW s2, 0(s7)
  LA s6, sum
  ADDIW s2, s1, 9
  SW s4, 0(s8)
  LA s7, count
  ADDW s4, s4, s2
  SW s2, 0(s5)
  LA s8, sum
  ADDIW s5, s1, 10
  SW s4, 0(s6)
  LA s6, sum
  ADDW s4, s4, s5
  SW s5, 0(s7)
  LA s7, sum
  ADDW s5, s4, s2
  SW s4, 0(s8)
  LA s8, sum
  ADDW s2, s5, s2
  SW s5, 0(s6)
  LA s5, count
  ADDW s4, s2, s3
  SW s2, 0(s7)
  LA s6, sum
  ADDIW s2, s1, 11
  SW s4, 0(s8)
  LA s7, count
  ADDW s4, s4, s3
  SW s2, 0(s5)
  LA s5, sum
  ADDIW s2, s1, 12
  SW s4, 0(s6)
  LA s6, count
  ADDW s4, s4, s2
  SW s2, 0(s7)
  LA s7, sum
  ADDIW s2, s1, 13
  SW s4, 0(s5)
  LA s8, count
  ADDW s4, s4, s2
  SW s2, 0(s6)
  LA s6, sum
  ADDIW s5, s1, 14
  SW s4, 0(s7)
  LA s7, count
  ADDW s2, s4, s2
  SW s5, 0(s8)
  LA s5, sum
  ADDIW s4, s1, 15
  SW s2, 0(s6)
  LA s6, count
  ADDW s2, s2, s0
  SW s4, 0(s7)
  LA s7, sum
  ADDIW s4, s1, 16
  SW s2, 0(s5)
  LA s8, count
  ADDW s2, s2, s4
  SW s4, 0(s6)
  LA s6, sum
  ADDIW s5, s1, 17
  SW s2, 0(s7)
  LA s7, sum
  ADDW s2, s2, s5
  SW s5, 0(s8)
  LA s8, sum
  ADDW s5, s2, s4
  SW s2, 0(s6)
  LA s6, sum
  ADDW s2, s5, s4
  SW s5, 0(s7)
  LA s5, count
  ADDW s4, s2, s3
  SW s2, 0(s8)
  LA s7, sum
  ADDIW s2, s1, 18
  SW s4, 0(s6)
  LA s6, count
  ADDW s4, s4, s3
  SW s2, 0(s5)
  LA s5, sum
  ADDIW s2, s1, 19
  SW s4, 0(s7)
  LA s7, count
  ADDW s4, s4, s2
  SW s2, 0(s6)
  LA s6, sum
  ADDIW s2, s1, 20
  SW s4, 0(s5)
  LA s8, count
  ADDW s4, s4, s2
  SW s2, 0(s7)
  LA s7, sum
  ADDIW s5, s1, 21
  SW s4, 0(s6)
  LA s6, count
  ADDW s2, s4, s2
  SW s5, 0(s8)
  LA s8, count
  ADDIW s4, s1, 22
  SW s2, 0(s7)
  LA s7, sum
  ADDIW s5, s1, 23
  SW s4, 0(s6)
  LA s6, count
  ADDW s2, s2, s5
  SW s5, 0(s8)
  LA s8, sum
  ADDIW s4, s1, 24
  SW s2, 0(s7)
  LA s7, count
  ADDW s2, s2, s4
  SW s4, 0(s6)
  LA s6, sum
  ADDIW s5, s1, 25
  SW s2, 0(s8)
  LA s8, sum
  ADDW s2, s2, s5
  SW s5, 0(s7)
  LA s7, sum
  ADDW s5, s2, s4
  SW s2, 0(s6)
  LA s6, sum
  ADDW s2, s5, s4
  SW s5, 0(s8)
  LA s5, count
  ADDW s4, s2, s3
  SW s2, 0(s7)
  LA s7, sum
  ADDIW s2, s1, 26
  SW s4, 0(s6)
  LA s6, count
  ADDW s4, s4, s3
  SW s2, 0(s5)
  LA s5, sum
  ADDIW s2, s1, 27
  SW s4, 0(s7)
  LA s7, count
  ADDW s4, s4, s2
  SW s2, 0(s6)
  LA s6, sum
  ADDIW s2, s1, 28
  SW s4, 0(s5)
  LA s8, count
  ADDW s4, s4, s2
  SW s2, 0(s7)
  LA s7, sum
  ADDIW s5, s1, 29
  SW s4, 0(s6)
  LA s6, count
  ADDW s2, s4, s2
  SW s5, 0(s8)
  LA s5, sum
  ADDIW s4, s1, 30
  SW s2, 0(s7)
  LA s7, count
  ADDW s2, s2, s4
  SW s4, 0(s6)
  LA s6, sum
  ADDIW s4, s1, 31
  SW s2, 0(s5)
  LA s8, count
  ADDW s2, s2, s4
  SW s4, 0(s7)
  LA s7, sum
  ADDIW s5, s1, 32
  SW s2, 0(s6)
  LA s6, sum
  ADDW s2, s2, s5
  SW s5, 0(s8)
  LA s8, sum
  ADDW s5, s2, s4
  SW s2, 0(s7)
  LA s7, sum
  ADDW s2, s5, s4
  SW s5, 0(s6)
  LA s5, count
  ADDW s4, s2, s3
  SW s2, 0(s8)
  LA s6, sum
  ADDIW s2, s1, 33
  SW s4, 0(s7)
  LA s7, count
  ADDW s4, s4, s3
  SW s2, 0(s5)
  LA s5, sum
  ADDIW s2, s1, 34
  SW s4, 0(s6)
  LA s6, count
  ADDW s4, s4, s2
  SW s2, 0(s7)
  LA s7, sum
  ADDIW s2, s1, 35
  SW s4, 0(s5)
  LA s8, count
  ADDW s4, s4, s2
  SW s2, 0(s6)
  LA s6, sum
  ADDIW s5, s1, 36
  SW s4, 0(s7)
  LA s7, count
  ADDW s2, s4, s2
  SW s5, 0(s8)
  LA s5, sum
  ADDIW s4, s1, 37
  SW s2, 0(s6)
  LA s6, count
  ADDW s2, s2, s4
  SW s4, 0(s7)
  LA s7, sum
  ADDIW s4, s1, 38
  SW s2, 0(s5)
  LA s8, count
  ADDW s2, s2, s4
  SW s4, 0(s6)
  LA s6, sum
  ADDIW s5, s1, 39
  SW s2, 0(s7)
  LA s7, sum
  ADDW s2, s2, s5
  SW s5, 0(s8)
  LA s8, sum
  ADDW s5, s2, s4
  SW s2, 0(s6)
  LA s6, sum
  ADDW s2, s5, s4
  SW s5, 0(s7)
  LA s5, count
  ADDW s4, s2, s3
  SW s2, 0(s8)
  LA s7, sum
  ADDIW s2, s1, 40
  SW s4, 0(s6)
  LA s6, count
  ADDW s4, s4, s3
  SW s2, 0(s5)
  LA s5, sum
  ADDIW s2, s1, 41
  SW s4, 0(s7)
  LA s7, count
  ADDW s4, s4, s2
  SW s2, 0(s6)
  LA s6, sum
  ADDIW s2, s1, 42
  SW s4, 0(s5)
  LA s8, count
  ADDW s4, s4, s2
  SW s2, 0(s7)
  LA s7, sum
  ADDIW s5, s1, 43
  SW s4, 0(s6)
  LA s6, sum
  ADDW s2, s4, s2
  SW s5, 0(s8)
  LA s5, count
  ADDW s4, s2, s0
  SW s2, 0(s7)
  LA s7, sum
  ADDIW s2, s1, 44
  SW s4, 0(s6)
  LA s6, count
  ADDW s4, s4, s2
  SW s2, 0(s5)
  LA s8, sum
  ADDIW s5, s1, 45
  SW s4, 0(s7)
  LA s7, sum
  ADDW s4, s4, s5
  SW s5, 0(s6)
  LA s6, sum
  ADDW s5, s4, s2
  SW s4, 0(s8)
  LA s8, sum
  ADDW s2, s5, s2
  SW s5, 0(s7)
  LA s5, count
  ADDW s4, s2, s3
  SW s2, 0(s6)
  LA s6, sum
  ADDIW s2, s1, 46
  SW s4, 0(s8)
  LA s7, count
  ADDW s4, s4, s3
  SW s2, 0(s5)
  LA s5, sum
  ADDIW s2, s1, 47
  SW s4, 0(s6)
  LA s6, count
  ADDW s4, s4, s2
  SW s2, 0(s7)
  LA s7, sum
  ADDIW s2, s1, 48
  SW s4, 0(s5)
  LA s5, count
  ADDW s4, s4, s2
  SW s2, 0(s6)
  LA s6, sum
  ADDIW s1, s1, 49
  SW s4, 0(s7)
  ADDW s2, s4, s2
  SW s1, 0(s5)
  ADD s1, zero, zero
  ADD a0, zero, zero
  SW s2, 0(s6)
  # implict jump to bb1
bb1:   # loop depth 1
  SW a0, 0(sp)
  SLTI s2, s1, 3
  BNE s2, zero, bb3
  # implict jump to bb2
bb2:   # loop depth 0
  LA a0, sum
  LW a0, 0(a0)
  CALL putint
  ADD a0, zero, zero
  LD ra, 136(sp)
  LD s0, 144(sp)
  LD s1, 152(sp)
  LD s2, 160(sp)
  LD s3, 168(sp)
  LD s4, 176(sp)
  LD s5, 184(sp)
  LD s6, 192(sp)
  LD s7, 200(sp)
  LD s8, 208(sp)
  LD s9, 216(sp)
  LD s10, 224(sp)
  ADDI sp, sp, 432
  JALR zero, 0(ra)
bb3:   # loop depth 1
  # implict jump to bb4
bb4:   # loop depth 1
  LA s2, sum
  LA s4, sum
  LA s5, count
  LA a0, count
  SD a0, 16(sp)
  LW s2, 0(s2)
  LA a0, sum
  SD a0, 112(sp)
  LA a0, count
  SD a0, 104(sp)
  LA a0, sum
  SD a0, 96(sp)
  LA a0, sum
  SD a0, 88(sp)
  LA a0, sum
  SD a0, 376(sp)
  ADDW s2, s2, s0
  LA a0, sum
  SD a0, 368(sp)
  SW s2, 0(s4)
  LA a0, count
  SD a0, 360(sp)
  LW s4, 0(s5)
  LA a0, sum
  SD a0, 80(sp)
  LA a0, count
  SD a0, 352(sp)
  LA a0, sum
  SD a0, 344(sp)
  LA a0, count
  SD a0, 232(sp)
  LA a0, sum
  SD a0, 328(sp)
  ADDIW s5, s4, 1
  ADDIW s6, s4, 2
  ADDW s2, s2, s5
  LD a0, 16(sp)
  SW s5, 0(a0)
  LD a0, 112(sp)
  SW s2, 0(a0)
  ADDW s2, s2, s6
  LD a0, 104(sp)
  SW s6, 0(a0)
  ADDW s6, s2, s5
  LD a0, 96(sp)
  SW s2, 0(a0)
  ADDW s2, s6, s5
  LD a0, 88(sp)
  SW s6, 0(a0)
  ADDW s5, s2, s3
  LD a0, 376(sp)
  SW s2, 0(a0)
  ADDIW s2, s4, 3
  LD a0, 368(sp)
  SW s5, 0(a0)
  ADDW s5, s5, s3
  LD a0, 360(sp)
  SW s2, 0(a0)
  ADDIW s2, s4, 4
  LD a0, 80(sp)
  SW s5, 0(a0)
  ADDW s5, s5, s2
  LD a0, 352(sp)
  SW s2, 0(a0)
  ADDIW s2, s4, 5
  LD a0, 344(sp)
  SW s5, 0(a0)
  LA s7, count
  ADDW s5, s5, s2
  LD a0, 232(sp)
  SW s2, 0(a0)
  LA s8, sum
  ADDIW s4, s4, 6
  LD a0, 328(sp)
  SW s5, 0(a0)
  XORI s6, s1, 1
  ADDW s2, s5, s2
  SW s4, 0(s7)
  ADDIW a0, s1, 1
  SW a0, 4(sp)
  SLTIU s4, s6, 1
  SW s2, 0(s8)
  BNE s4, zero, bb6
  # implict jump to bb5
bb5:   # loop depth 1
  LA s2, sum
  LA s4, sum
  LA s5, count
  LA s6, count
  LW s2, 0(s2)
  LA s7, sum
  LA a0, count
  SD a0, 272(sp)
  LA a0, sum
  SD a0, 264(sp)
  LA a0, sum
  SD a0, 256(sp)
  LA a0, sum
  SD a0, 248(sp)
  ADDW s0, s2, s0
  LA a0, sum
  SD a0, 120(sp)
  SW s0, 0(s4)
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
  ADDIW s4, s2, 1
  ADDIW s5, s2, 2
  ADDW s0, s0, s4
  SW s4, 0(s6)
  SW s0, 0(s7)
  ADDW s0, s0, s5
  LD a0, 272(sp)
  SW s5, 0(a0)
  ADDW s5, s0, s4
  LD a0, 264(sp)
  SW s0, 0(a0)
  ADDW s0, s5, s4
  LD a0, 256(sp)
  SW s5, 0(a0)
  ADDW s4, s0, s3
  LD a0, 248(sp)
  SW s0, 0(a0)
  ADDIW s0, s2, 3
  LD a0, 120(sp)
  SW s4, 0(a0)
  ADDW s4, s4, s3
  LD a0, 424(sp)
  SW s0, 0(a0)
  ADDIW s0, s2, 4
  LD a0, 416(sp)
  SW s4, 0(a0)
  ADDW s4, s4, s0
  LD a0, 408(sp)
  SW s0, 0(a0)
  ADDIW s0, s2, 5
  LD a0, 400(sp)
  SW s4, 0(a0)
  LA s6, count
  ADDW s4, s4, s0
  LD a0, 392(sp)
  SW s0, 0(a0)
  LA s7, sum
  ADDIW s5, s2, 6
  LD a0, 240(sp)
  SW s4, 0(a0)
  LA s8, count
  ADDW s0, s4, s0
  SW s5, 0(s6)
  ADDIW s2, s2, 7
  SW s0, 0(s7)
  LW s1, 4(sp)
  ADD s0, s2, zero
  LW a0, 0(sp)
  SW s2, 0(s8)
  JAL zero, bb1
bb6:   # loop depth 1
  LA a0, count
  LA s4, count
  LA s7, sum
  LA s1, sum
  SD s1, 56(sp)
  LW s2, 0(a0)
  LA s8, count
  LA a0, sum
  SD a0, 48(sp)
  LA a0, count
  SD a0, 40(sp)
  LA a0, sum
  SD a0, 320(sp)
  LA a0, sum
  SD a0, 312(sp)
  ADDIW a0, s2, 1
  ADDIW s5, s2, 2
  SW a0, 0(s4)
  ADDIW s6, s2, 3
  LW s4, 0(s7)
  LA s1, sum
  SD s1, 304(sp)
  LA s1, sum
  SD s1, 296(sp)
  LA s1, count
  SD s1, 288(sp)
  LA s1, sum
  SD s1, 280(sp)
  ADDIW s1, s2, 4
  SW s1, 8(sp)
  ADDW s4, s4, a0
  LA s1, count
  SD s1, 336(sp)
  LD s1, 56(sp)
  SW s4, 0(s1)
  ADDW s4, s4, s5
  SW s5, 0(s8)
  ADDW s7, s4, s6
  LD s1, 48(sp)
  SW s4, 0(s1)
  ADDW s4, s7, s5
  LD s1, 40(sp)
  SW s6, 0(s1)
  ADDW s5, s4, s5
  LD s1, 320(sp)
  SW s7, 0(s1)
  ADDW s6, s5, s3
  LD s1, 312(sp)
  SW s4, 0(s1)
  ADDW s4, s6, s3
  LD s1, 304(sp)
  SW s5, 0(s1)
  LA s7, sum
  LD s1, 296(sp)
  SW s6, 0(s1)
  ADDIW s5, s2, 5
  LD s1, 288(sp)
  LW s6, 8(sp)
  SW s6, 0(s1)
  LA s6, count
  LD s1, 280(sp)
  SW s4, 0(s1)
  ADDW s4, s4, s5
  LD s1, 336(sp)
  SW s5, 0(s1)
  LA s8, sum
  ADDIW s5, s2, 6
  SW s4, 0(s7)
  LA s7, count
  ADDW s4, s4, s5
  SW s5, 0(s6)
  LA s6, sum
  ADDIW s2, s2, 7
  SW s4, 0(s8)
  ADDW s4, s4, s5
  SW s2, 0(s7)
  LW s1, 4(sp)
  SW s4, 0(s6)
  JAL zero, bb1
