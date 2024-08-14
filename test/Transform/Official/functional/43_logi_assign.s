.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss


.section .data
b:
.word 0x00000000
a:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  LA s0, a
  CALL getint
  LA s1, b
  SW a0, 0(s0)
  LA s0, a
  CALL getint
  SW a0, 0(s1)
  LW t0, 0(s0)
  XORI t1, t0, 3
  XOR t0, t0, a0
  SLTU t1, zero, t1
  SLTIU t0, t0, 1
  AND a0, t0, t1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
