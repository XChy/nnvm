.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
ans:
.space 40000000


head:
.space 40000000
value:
.space 40000000
next:
.space 40000000
keys:
.space 40000000
values:
.space 40000000
key:
.space 40000000
nextvalue:
.space 40000000
requests:
.space 40000000
.section .data

hashmod:
.word 0x00000000
cnt:
.word 0x00000000








.section .text
main:   # loop depth 0
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s5, 8(sp)
  SD s6, 16(sp)
  SD s7, 24(sp)
  SD s8, 32(sp)
  SD s9, 40(sp)
  SD s10, 48(sp)
  SD s11, 56(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  LA s10, hashmod
  LA s7, keys
  LA s6, values
  LA s9, requests
  LA s4, head
  LA s2, next
  LA s0, nextvalue
  LA s1, key
  LA s3, value
  CALL getint
  ADD t0, a0, zero
  ADDI s11, zero, 0
  ADD a0, s7, zero
  SW t0, 0(s10)
  CALL getarray
  ADD s5, a0, zero
  ADD a0, s6, zero
  CALL getarray
  ADD a0, s9, zero
  CALL getarray
  ADD s8, a0, zero
  ADDI a0, zero, 78
  CALL _sysy_starttime
  BLT s11, s5, bb18
  # implict jump to bb1
bb1:   # loop depth 0
  LA s5, ans
  BLT zero, s8, bb3
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI a0, zero, 90
  CALL _sysy_stoptime
  ADD a1, s5, zero
  ADD a0, s8, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s5, 8(sp)
  LD s6, 16(sp)
  LD s7, 24(sp)
  LD s8, 32(sp)
  LD s9, 40(sp)
  LD s10, 48(sp)
  LD s11, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb3:   # loop depth 0
  LW a0, 0(s10)
  ADD t2, zero, zero
  # implict jump to bb4
bb4:   # loop depth 1
  SH2ADD t0, t2, s9
  SH2ADD a1, t2, s5
  LW t0, 0(t0)
  REMW t1, t0, a0
  SH2ADD t1, t1, s4
  LW t1, 0(t1)
  # implict jump to bb5
bb5:   # loop depth 2
  BNE t1, zero, bb9
  # implict jump to bb6
bb6:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  ADDIW t2, t2, 1
  SW t0, 0(a1)
  BLT t2, s8, bb8
  JAL zero, bb2
bb8:   # loop depth 1
  JAL zero, bb4
bb9:   # loop depth 2
  SH2ADD a2, t1, s1
  LW a2, 0(a2)
  BEQ a2, t0, bb11
  # implict jump to bb10
bb10:   # loop depth 2
  SH2ADD t1, t1, s2
  LW t1, 0(t1)
  JAL zero, bb5
bb11:   # loop depth 1
  BNE t1, zero, bb14
  # implict jump to bb12
bb12:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb13
bb13:   # loop depth 1
  JAL zero, bb7
bb14:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb15
bb15:   # loop depth 2
  SH2ADD a2, t1, s3
  SH2ADD t1, t1, s0
  LW a2, 0(a2)
  LW t1, 0(t1)
  ADDW t0, t0, a2
  BNE t1, zero, bb17
  # implict jump to bb16
bb16:   # loop depth 1
  JAL zero, bb13
bb17:   # loop depth 2
  JAL zero, bb15
bb18:   # loop depth 0
  LW t2, 0(s10)
  LA a3, cnt
  ADD t1, zero, zero
  # implict jump to bb19
bb19:   # loop depth 1
  SH2ADD t0, t1, s7
  SH2ADD a1, t1, s6
  LW a0, 0(t0)
  REMW t0, a0, t2
  LW a1, 0(a1)
  SH2ADD a2, t0, s4
  LW t0, 0(a2)
  BEQ t0, zero, bb28
  # implict jump to bb20
bb20:   # loop depth 1
  # implict jump to bb21
bb21:   # loop depth 2
  BNE t0, zero, bb25
  # implict jump to bb22
bb22:   # loop depth 1
  LW t0, 0(a3)
  ADDIW a4, t0, 1
  SH2ADD t0, t0, s2
  SW a4, 0(a3)
  SH2ADD a6, a4, s1
  LW a5, 0(a2)
  SH2ADD a7, a4, s3
  SH2ADD t3, a4, s0
  SW a5, 4(t0)
  SW a4, 0(a2)
  SW a0, 0(a6)
  SW a1, 0(a7)
  SW zero, 0(t3)
  # implict jump to bb23
bb23:   # loop depth 1
  ADDIW t1, t1, 1
  BLT t1, s5, bb24
  JAL zero, bb1
bb24:   # loop depth 1
  JAL zero, bb19
bb25:   # loop depth 2
  SH2ADD a4, t0, s1
  LW a4, 0(a4)
  BEQ a4, a0, bb27
  # implict jump to bb26
bb26:   # loop depth 2
  SH2ADD t0, t0, s2
  LW t0, 0(t0)
  JAL zero, bb21
bb27:   # loop depth 1
  LW a0, 0(a3)
  SH2ADD a2, t0, s0
  ADDIW t0, a0, 1
  SH2ADD a0, a0, s0
  SW t0, 0(a3)
  SH2ADD a5, t0, s3
  LW a4, 0(a2)
  SW a4, 4(a0)
  SW t0, 0(a2)
  SW a1, 0(a5)
  JAL zero, bb23
bb28:   # loop depth 1
  LW t0, 0(a3)
  ADDIW t0, t0, 1
  SW t0, 0(a3)
  SH2ADD a4, t0, s1
  SW t0, 0(a2)
  SH2ADD a2, t0, s3
  SW a0, 0(a4)
  SH2ADD a0, t0, s2
  SW a1, 0(a2)
  SH2ADD t0, t0, s0
  SW zero, 0(a0)
  SW zero, 0(t0)
  JAL zero, bb23
