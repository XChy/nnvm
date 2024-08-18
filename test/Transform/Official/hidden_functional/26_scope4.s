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
  ADDI sp, sp, -144
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
  LA t0, count
  SD t0, 120(sp)
  LA t0, a
  SD t0, 136(sp)
  LA t0, sum
  SD t0, 128(sp)
  LD t0, 120(sp)
  LW t0, 0(t0)
  ADDIW t2, t0, 2
  ADDIW t1, t0, 1
  ADDIW a1, t0, 3
  ADDW a0, t1, t2
  ADDIW a2, t0, 4
  ADDW a0, a0, a1
  ADDW a0, a0, a2
  ADDIW a2, t0, 6
  ADDW a0, a0, a1
  ADDIW a3, t0, 7
  ADDW a0, a0, a1
  ADDIW a1, t0, 9
  ADDW a0, a0, t1
  ADDIW a4, t0, 10
  ADDW a0, a0, t1
  ADDIW a5, t0, 12
  ADDW a0, a0, a2
  ADDIW a2, t0, 13
  ADDW a0, a0, a3
  ADDIW a6, t0, 16
  ADDW a0, a0, a3
  ADDIW a3, t0, 17
  ADDW a0, a0, t2
  ADDIW a7, t0, 19
  ADDW a0, a0, a1
  ADDIW t3, t0, 20
  ADDW a0, a0, a4
  ADDIW a4, t0, 23
  ADDW a0, a0, a1
  ADDIW t4, t0, 24
  ADDW a0, a0, a1
  ADDIW a1, t0, 25
  ADDW a0, a0, t1
  ADDIW t5, t0, 27
  ADDW a0, a0, t1
  ADDIW s0, t0, 28
  ADDW a0, a0, a5
  ADDIW a5, t0, 30
  ADDW a0, a0, a2
  ADDIW s1, t0, 31
  ADDW a0, a0, a2
  ADDIW a2, t0, 32
  ADDW a0, a0, t2
  ADDIW s2, t0, 34
  ADDW a0, a0, a6
  ADDIW s3, t0, 35
  ADDW a0, a0, a3
  ADDIW a3, t0, 37
  ADDW a0, a0, a6
  ADDIW s4, t0, 38
  ADDW a0, a0, a6
  ADDIW a6, t0, 39
  ADDW a0, a0, t1
  ADDIW s5, t0, 41
  ADDW a0, a0, t1
  ADDIW s6, t0, 42
  ADDW a0, a0, a7
  ADDIW a7, t0, 44
  ADDW a0, a0, t3
  ADDIW s7, t0, 45
  ADDW a0, a0, t3
  ADDIW t3, t0, 47
  ADDW a0, a0, a4
  ADDIW a4, t0, 48
  ADDW a0, a0, t4
  ADDIW s8, t0, 50
  ADDW a0, a0, a1
  ADDIW a1, t0, 51
  ADDW a0, a0, t4
  ADDIW s9, t0, 53
  SW s9, 8(sp)
  ADDW a0, a0, t4
  ADDIW t4, t0, 54
  ADDW a0, a0, t1
  ADDIW s10, t0, 56
  ADDW a0, a0, t1
  ADDIW s9, t0, 57
  SW s9, 4(sp)
  ADDW a0, a0, t5
  ADDIW t5, t0, 59
  SW t5, 0(sp)
  ADDW a0, a0, s0
  ADDIW t5, t0, 60
  SW t5, 12(sp)
  ADDW a0, a0, s0
  LD t5, 136(sp)
  SW t1, 0(t5)
  ADDW a0, a0, a5
  ADDIW a5, t0, 62
  ADDW t0, a0, s1
  ADDW t0, t0, a2
  ADDW t0, t0, s1
  ADDW t0, t0, s1
  ADDW t0, t0, t1
  ADDW t0, t0, t1
  ADDW t0, t0, s2
  ADDW t0, t0, s3
  ADDW t0, t0, s3
  ADDW t0, t0, a3
  ADDW t0, t0, s4
  ADDW t0, t0, a6
  ADDW t0, t0, s4
  ADDW t0, t0, s4
  ADDW t0, t0, t1
  ADDW t0, t0, t1
  ADDW t0, t0, s5
  ADDW t0, t0, s6
  ADDW t0, t0, s6
  ADDW t0, t0, t2
  ADDW t0, t0, a7
  ADDW t0, t0, s7
  ADDW t0, t0, a7
  ADDW t0, t0, a7
  ADDW t0, t0, t1
  ADDW t0, t0, t1
  ADDW t0, t0, t3
  ADDW t0, t0, a4
  ADDW t0, t0, a4
  ADDW t0, t0, t2
  ADDW t0, t0, s8
  ADDW t0, t0, a1
  ADDW t0, t0, s8
  ADDW t0, t0, s8
  ADDW t0, t0, t1
  ADDW t0, t0, t1
  LW a0, 8(sp)
  ADDW t0, t0, a0
  ADDW t0, t0, t4
  ADDW t0, t0, t4
  ADDW t0, t0, t2
  ADDW t0, t0, s10
  LW t2, 4(sp)
  ADDW t0, t0, t2
  ADDW t0, t0, s10
  ADDW t0, t0, s10
  ADDW t0, t0, t1
  ADDW t0, t0, t1
  LW t2, 0(sp)
  ADDW t0, t0, t2
  LW t2, 12(sp)
  ADDW t0, t0, t2
  LW t2, 12(sp)
  ADDW t0, t0, t2
  LD t2, 128(sp)
  SW t0, 0(t2)
  LD t0, 120(sp)
  SW a5, 0(t0)
  # implict jump to bb1
bb1:   # loop depth 0
  LD t0, 128(sp)
  LW t0, 0(t0)
  LD t2, 120(sp)
  LW t2, 0(t2)
  ADDW t0, t0, a5
  ADDIW a0, t2, 1
  ADDIW a1, t2, 2
  ADDW t0, t0, a0
  ADDIW a2, t2, 4
  ADDW t0, t0, a1
  ADDIW a1, t2, 5
  ADDW t0, t0, a0
  ADDIW a3, t2, 7
  ADDW t0, t0, a0
  ADDIW a0, t2, 8
  ADDW t0, t0, t1
  ADDIW a4, t2, 9
  ADDW t0, t0, t1
  ADDIW a6, t2, 11
  ADDW t0, t0, a2
  ADDIW a2, t2, 12
  ADDW t0, t0, a1
  ADDIW t2, t2, 13
  ADDW t0, t0, a1
  LD a1, 120(sp)
  SW t2, 0(a1)
  ADDW t0, t0, a3
  ADDW t0, t0, a0
  ADDW t0, t0, a4
  ADDW t0, t0, a0
  ADDW t0, t0, a0
  ADDW t0, t0, t1
  ADDW t0, t0, t1
  ADDW t0, t0, a6
  ADDW t0, t0, a2
  ADDW t0, t0, a2
  LD t2, 128(sp)
  SW t0, 0(t2)
  # implict jump to bb2
bb2:   # loop depth 0
  LD t0, 128(sp)
  LW t0, 0(t0)
  LD t2, 120(sp)
  LW t2, 0(t2)
  ADDW t0, t0, a5
  ADDIW a0, t2, 1
  ADDIW a1, t2, 2
  ADDW t0, t0, a0
  ADDIW a2, t2, 4
  ADDW t0, t0, a1
  ADDIW a1, t2, 5
  ADDW t0, t0, a0
  ADDIW a3, t2, 7
  ADDW t0, t0, a0
  ADDIW a0, t2, 8
  ADDW t0, t0, t1
  ADDIW a4, t2, 10
  ADDW t0, t0, t1
  ADDIW a6, t2, 11
  ADDW t0, t0, a2
  ADDIW t2, t2, 13
  ADDW t0, t0, a1
  ADDW t0, t0, a1
  ADDW t0, t0, a5
  ADDW t0, t0, a3
  ADDW t0, t0, a0
  ADDW t0, t0, a3
  ADDW t0, t0, a3
  ADDW t0, t0, t1
  ADDW t0, t0, t1
  ADDW t0, t0, a4
  ADDW t0, t0, a6
  ADDW a0, t0, a6
  LD t0, 128(sp)
  SW a0, 0(t0)
  LD t0, 120(sp)
  SW t2, 0(t0)
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
  ADDI sp, sp, 144
  JALR zero, 0(ra)
