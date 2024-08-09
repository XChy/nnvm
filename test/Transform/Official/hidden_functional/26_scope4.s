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
  ADDI s0, zero, 0
  LA s1, count
  LA s2, count
  SW s0, 0(a0)
  LA s5, a
  LW s0, 0(s1)
  LA s6, sum
  LA s7, count
  LA s8, sum
  LA s9, count
  LA s10, sum
  ADDIW s4, s0, 1
  ADDIW s3, s0, 2
  SW s4, 0(s2)
  ADDW s1, s4, s3
  SW s4, 0(s5)
  ADDIW s2, s0, 3
  SW s4, 0(s6)
  LA s6, count
  SW s3, 0(s7)
  ADDW s5, s1, s2
  SW s1, 0(s8)
  LA s7, sum
  SW s2, 0(s9)
  ADDIW s1, s0, 4
  SW s5, 0(s10)
  LA s8, sum
  ADDW s5, s5, s1
  SW s1, 0(s6)
  LA s6, sum
  SW s5, 0(s7)
  ADDW s1, s5, s2
  LA s5, sum
  ADDW s2, s1, s2
  SW s1, 0(s8)
  LA s7, count
  SW s2, 0(s6)
  ADDW s1, s2, s4
  LA s6, sum
  ADDIW s2, s0, 5
  SW s1, 0(s5)
  LA s5, count
  ADDW s1, s1, s4
  SW s2, 0(s7)
  LA s7, sum
  ADDIW s2, s0, 6
  SW s1, 0(s6)
  LA s6, count
  ADDW s1, s1, s2
  SW s2, 0(s5)
  LA s8, sum
  ADDIW s2, s0, 7
  SW s1, 0(s7)
  LA s7, count
  ADDW s1, s1, s2
  SW s2, 0(s6)
  LA s6, sum
  ADDIW s5, s0, 8
  SW s1, 0(s8)
  LA s8, sum
  ADDW s1, s1, s2
  SW s5, 0(s7)
  LA s5, count
  ADDW s2, s1, s3
  SW s1, 0(s6)
  LA s6, sum
  ADDIW s1, s0, 9
  SW s2, 0(s8)
  LA s7, count
  ADDW s2, s2, s1
  SW s1, 0(s5)
  LA s8, sum
  ADDIW s5, s0, 10
  SW s2, 0(s6)
  LA s6, sum
  ADDW s2, s2, s5
  SW s5, 0(s7)
  LA s7, sum
  ADDW s5, s2, s1
  SW s2, 0(s8)
  LA s8, sum
  ADDW s1, s5, s1
  SW s5, 0(s6)
  LA s5, count
  SW s1, 0(s7)
  ADDW s1, s1, s4
  LA s6, sum
  ADDIW s2, s0, 11
  SW s1, 0(s8)
  LA s7, count
  ADDW s1, s1, s4
  SW s2, 0(s5)
  LA s5, sum
  ADDIW s2, s0, 12
  SW s1, 0(s6)
  LA s6, count
  ADDW s1, s1, s2
  SW s2, 0(s7)
  LA s7, sum
  ADDIW s2, s0, 13
  SW s1, 0(s5)
  LA s8, count
  ADDW s1, s1, s2
  SW s2, 0(s6)
  LA s6, sum
  ADDIW s5, s0, 14
  SW s1, 0(s7)
  LA s7, count
  ADDW s1, s1, s2
  SW s5, 0(s8)
  LA s5, sum
  ADDIW s2, s0, 15
  SW s1, 0(s6)
  LA s6, count
  ADDW s1, s1, s3
  SW s2, 0(s7)
  LA s7, sum
  ADDIW s2, s0, 16
  SW s1, 0(s5)
  LA s8, count
  SW s2, 0(s6)
  ADDW s1, s1, s2
  LA s6, sum
  ADDIW s5, s0, 17
  SW s1, 0(s7)
  LA s7, sum
  SW s5, 0(s8)
  ADDW s1, s1, s5
  LA s8, sum
  ADDW s5, s1, s2
  SW s1, 0(s6)
  LA s6, sum
  ADDW s1, s5, s2
  SW s5, 0(s7)
  LA s5, count
  ADDW s2, s1, s4
  SW s1, 0(s8)
  LA s7, sum
  ADDIW s1, s0, 18
  SW s2, 0(s6)
  LA s6, count
  ADDW s2, s2, s4
  SW s1, 0(s5)
  LA s5, sum
  ADDIW s1, s0, 19
  SW s2, 0(s7)
  LA s7, count
  ADDW s2, s2, s1
  SW s1, 0(s6)
  LA s6, sum
  ADDIW s1, s0, 20
  SW s2, 0(s5)
  LA s8, count
  ADDW s2, s2, s1
  SW s1, 0(s7)
  LA s7, sum
  ADDIW s5, s0, 21
  SW s2, 0(s6)
  LA s6, count
  ADDW s1, s2, s1
  SW s5, 0(s8)
  LA s8, count
  ADDIW s2, s0, 22
  SW s1, 0(s7)
  LA s7, sum
  ADDIW s5, s0, 23
  SW s2, 0(s6)
  LA s6, count
  ADDW s1, s1, s5
  SW s5, 0(s8)
  LA s8, sum
  ADDIW s2, s0, 24
  SW s1, 0(s7)
  LA s7, count
  ADDW s1, s1, s2
  SW s2, 0(s6)
  LA s6, sum
  ADDIW s5, s0, 25
  SW s1, 0(s8)
  LA s8, sum
  ADDW s1, s1, s5
  SW s5, 0(s7)
  LA s7, sum
  ADDW s5, s1, s2
  SW s1, 0(s6)
  LA s6, sum
  ADDW s1, s5, s2
  SW s5, 0(s8)
  LA s5, count
  ADDW s2, s1, s4
  SW s1, 0(s7)
  LA s7, sum
  ADDIW s1, s0, 26
  SW s2, 0(s6)
  LA s6, count
  ADDW s2, s2, s4
  SW s1, 0(s5)
  LA s5, sum
  ADDIW s1, s0, 27
  SW s2, 0(s7)
  LA s7, count
  ADDW s2, s2, s1
  SW s1, 0(s6)
  LA s6, sum
  ADDIW s1, s0, 28
  SW s2, 0(s5)
  LA s8, count
  ADDW s2, s2, s1
  SW s1, 0(s7)
  LA s7, sum
  ADDIW s5, s0, 29
  SW s2, 0(s6)
  LA s6, count
  ADDW s1, s2, s1
  SW s5, 0(s8)
  LA s5, sum
  ADDIW s2, s0, 30
  SW s1, 0(s7)
  LA s7, count
  ADDW s1, s1, s2
  SW s2, 0(s6)
  LA s6, sum
  ADDIW s2, s0, 31
  SW s1, 0(s5)
  LA s8, count
  ADDW s1, s1, s2
  SW s2, 0(s7)
  LA s7, sum
  ADDIW s5, s0, 32
  SW s1, 0(s6)
  LA s6, sum
  ADDW s1, s1, s5
  SW s5, 0(s8)
  LA s5, sum
  SW s1, 0(s7)
  ADDW s1, s1, s2
  LA s7, sum
  ADDW s2, s1, s2
  SW s1, 0(s6)
  LA s6, count
  SW s2, 0(s5)
  ADDW s1, s2, s4
  LA s5, sum
  ADDIW s2, s0, 33
  SW s1, 0(s7)
  LA s7, count
  ADDW s1, s1, s4
  SW s2, 0(s6)
  LA s6, sum
  ADDIW s2, s0, 34
  SW s1, 0(s5)
  LA s5, count
  ADDW s1, s1, s2
  SW s2, 0(s7)
  LA s7, sum
  ADDIW s2, s0, 35
  SW s1, 0(s6)
  LA s6, count
  SW s2, 0(s5)
  ADDW s1, s1, s2
  LA s8, sum
  ADDIW s5, s0, 36
  SW s1, 0(s7)
  LA s7, count
  ADDW s1, s1, s2
  SW s5, 0(s6)
  LA s5, sum
  ADDIW s2, s0, 37
  SW s1, 0(s8)
  LA s6, count
  ADDW s1, s1, s2
  SW s2, 0(s7)
  LA s7, sum
  ADDIW s2, s0, 38
  SW s1, 0(s5)
  LA s8, count
  SW s2, 0(s6)
  ADDW s1, s1, s2
  LA s6, sum
  ADDIW s5, s0, 39
  SW s1, 0(s7)
  LA s7, sum
  ADDW s1, s1, s5
  SW s5, 0(s8)
  LA s8, sum
  ADDW s5, s1, s2
  SW s1, 0(s6)
  LA s6, sum
  SW s5, 0(s7)
  ADDW s1, s5, s2
  LA s5, count
  SW s1, 0(s8)
  ADDW s1, s1, s4
  LA s7, sum
  ADDIW s2, s0, 40
  SW s1, 0(s6)
  LA s6, count
  ADDW s1, s1, s4
  SW s2, 0(s5)
  LA s5, sum
  ADDIW s2, s0, 41
  SW s1, 0(s7)
  LA s7, count
  ADDW s1, s1, s2
  SW s2, 0(s6)
  LA s6, sum
  ADDIW s2, s0, 42
  SW s1, 0(s5)
  LA s8, count
  ADDW s1, s1, s2
  SW s2, 0(s7)
  LA s7, sum
  ADDIW s5, s0, 43
  SW s1, 0(s6)
  LA s6, sum
  ADDW s1, s1, s2
  SW s5, 0(s8)
  LA s5, count
  ADDW s2, s1, s3
  SW s1, 0(s7)
  LA s7, sum
  ADDIW s1, s0, 44
  SW s2, 0(s6)
  LA s6, count
  SW s1, 0(s5)
  ADDW s2, s2, s1
  LA s8, sum
  ADDIW s5, s0, 45
  SW s2, 0(s7)
  LA s7, sum
  ADDW s2, s2, s5
  SW s5, 0(s6)
  LA s6, sum
  ADDW s5, s2, s1
  SW s2, 0(s8)
  LA s8, sum
  SW s5, 0(s7)
  ADDW s1, s5, s1
  LA s5, count
  SW s1, 0(s6)
  ADDW s1, s1, s4
  LA s6, sum
  ADDIW s2, s0, 46
  SW s1, 0(s8)
  LA s7, count
  ADDW s1, s1, s4
  SW s2, 0(s5)
  LA s5, sum
  ADDIW s2, s0, 47
  SW s1, 0(s6)
  LA s6, count
  ADDW s1, s1, s2
  SW s2, 0(s7)
  LA s7, sum
  ADDIW s2, s0, 48
  SW s1, 0(s5)
  LA s8, count
  ADDW s1, s1, s2
  SW s2, 0(s6)
  LA s6, sum
  ADDIW s0, s0, 49
  SW s1, 0(s7)
  ADDW s5, s1, s2
  SW s0, 0(s8)
  ADD s2, zero, zero
  ADD s1, zero, zero
  SW s5, 0(s6)
  # implict jump to bb1
bb1:   # loop depth 1
  SW s2, 0(sp)
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
  ADDI sp, sp, 448
  JALR zero, 0(ra)
bb3:   # loop depth 1
  # implict jump to bb4
bb4:   # loop depth 1
  LA s2, sum
  LA s5, sum
  LA s6, count
  LA a0, count
  SD a0, 112(sp)
  LW s2, 0(s2)
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
  ADDW s2, s2, s3
  LA a0, sum
  SD a0, 368(sp)
  SW s2, 0(s5)
  LA a0, count
  SD a0, 360(sp)
  LW s5, 0(s6)
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
  ADDIW s6, s5, 1
  ADDIW s7, s5, 2
  LD a0, 112(sp)
  SW s6, 0(a0)
  ADDW s2, s2, s6
  LD a0, 104(sp)
  SW s2, 0(a0)
  ADDW s2, s2, s7
  LD a0, 96(sp)
  SW s7, 0(a0)
  ADDW s7, s2, s6
  LD a0, 88(sp)
  SW s2, 0(a0)
  ADDW s2, s7, s6
  LD a0, 80(sp)
  SW s7, 0(a0)
  ADDW s6, s2, s4
  LD a0, 376(sp)
  SW s2, 0(a0)
  ADDIW s2, s5, 3
  LD a0, 368(sp)
  SW s6, 0(a0)
  ADDW s6, s6, s4
  LD a0, 360(sp)
  SW s2, 0(a0)
  ADDIW s2, s5, 4
  LD a0, 72(sp)
  SW s6, 0(a0)
  ADDW s6, s6, s2
  LD a0, 352(sp)
  SW s2, 0(a0)
  ADDIW s2, s5, 5
  LD a0, 344(sp)
  SW s6, 0(a0)
  LA s8, count
  ADDW s6, s6, s2
  LD a0, 232(sp)
  SW s2, 0(a0)
  LA s9, sum
  ADDIW s5, s5, 6
  LD a0, 328(sp)
  SW s6, 0(a0)
  XORI s7, s1, 1
  ADDW s2, s6, s2
  SW s5, 0(s8)
  ADDIW a0, s1, 1
  SW a0, 4(sp)
  SLTIU s5, s7, 1
  SW s2, 0(s9)
  BNE s5, zero, bb6
  # implict jump to bb5
bb5:   # loop depth 1
  LA s2, sum
  LA s5, sum
  LA s6, count
  LA s7, count
  LW s2, 0(s2)
  LA s8, sum
  LA a0, count
  SD a0, 272(sp)
  LA a0, sum
  SD a0, 264(sp)
  LA a0, sum
  SD a0, 256(sp)
  LA a0, sum
  SD a0, 248(sp)
  ADDW s0, s2, s3
  LA a0, sum
  SD a0, 432(sp)
  SW s0, 0(s5)
  LA a0, count
  SD a0, 424(sp)
  LW s2, 0(s6)
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
  SW s3, 0(s7)
  ADDW s0, s0, s3
  SW s0, 0(s8)
  ADDW s0, s0, s5
  LD a0, 272(sp)
  SW s5, 0(a0)
  ADDW s5, s0, s3
  LD a0, 264(sp)
  SW s0, 0(a0)
  ADDW s0, s5, s3
  LD a0, 256(sp)
  SW s5, 0(a0)
  ADDW s3, s0, s4
  LD a0, 248(sp)
  SW s0, 0(a0)
  ADDIW s0, s2, 3
  LD a0, 432(sp)
  SW s3, 0(a0)
  ADDW s3, s3, s4
  LD a0, 424(sp)
  SW s0, 0(a0)
  ADDIW s0, s2, 4
  LD a0, 416(sp)
  SW s3, 0(a0)
  ADDW s3, s3, s0
  LD a0, 408(sp)
  SW s0, 0(a0)
  ADDIW s0, s2, 5
  LD a0, 400(sp)
  SW s3, 0(a0)
  LA s7, count
  ADDW s3, s3, s0
  LD a0, 392(sp)
  SW s0, 0(a0)
  LA s8, sum
  ADDIW s5, s2, 6
  LD a0, 240(sp)
  SW s3, 0(a0)
  LA s9, count
  ADDW s6, s3, s0
  SW s5, 0(s7)
  ADDIW s3, s2, 7
  SW s6, 0(s8)
  LW s2, 0(sp)
  LW s1, 4(sp)
  SW s3, 0(s9)
  JAL zero, bb1
bb6:   # loop depth 1
  LA a0, count
  LA s6, count
  LA s9, sum
  LA s0, sum
  SD s0, 48(sp)
  LW s5, 0(a0)
  LA s10, count
  LA a0, sum
  SD a0, 40(sp)
  LA a0, count
  SD a0, 32(sp)
  LA a0, sum
  SD a0, 320(sp)
  LA a0, sum
  SD a0, 312(sp)
  ADDIW s2, s5, 1
  ADDIW s7, s5, 2
  SW s2, 0(s6)
  ADDIW s8, s5, 3
  LW s6, 0(s9)
  LA s1, sum
  SD s1, 304(sp)
  LA s1, sum
  SD s1, 296(sp)
  LA s1, count
  SD s1, 288(sp)
  LA s1, sum
  SD s1, 280(sp)
  ADDIW a0, s5, 4
  SW a0, 8(sp)
  ADDW s6, s6, s2
  LA a0, count
  SD a0, 24(sp)
  LD a0, 48(sp)
  SW s6, 0(a0)
  ADDW s6, s6, s7
  SW s7, 0(s10)
  ADDW s9, s6, s8
  LD a0, 40(sp)
  SW s6, 0(a0)
  ADDW s6, s9, s7
  LD a0, 32(sp)
  SW s8, 0(a0)
  ADDW s7, s6, s7
  LD s1, 320(sp)
  SW s9, 0(s1)
  ADDW s8, s7, s4
  LD s1, 312(sp)
  SW s6, 0(s1)
  ADDW s6, s8, s4
  LD s1, 304(sp)
  SW s7, 0(s1)
  LA s9, sum
  LD s1, 296(sp)
  SW s8, 0(s1)
  ADDIW s7, s5, 5
  LD s1, 288(sp)
  LW a0, 8(sp)
  SW a0, 0(s1)
  LA s8, count
  LD s1, 280(sp)
  SW s6, 0(s1)
  ADDW s6, s6, s7
  LD a0, 24(sp)
  SW s7, 0(a0)
  LA s10, sum
  ADDIW s7, s5, 6
  SW s6, 0(s9)
  LA s9, count
  SW s7, 0(s8)
  ADDW s6, s6, s7
  LA s8, sum
  ADDIW s5, s5, 7
  SW s6, 0(s10)
  ADDW s6, s6, s7
  SW s5, 0(s9)
  LW s1, 4(sp)
  SW s6, 0(s8)
  JAL zero, bb1
