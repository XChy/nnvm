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
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  LA s1, keys
  LA s0, hashmod
  CALL getint
  LA s3, values
  ADD t0, a0, zero
  LA s4, requests
  ADD a0, s1, zero
  SW t0, 0(s0)
  ADDI s2, zero, 0
  CALL getarray
  ADD s1, a0, zero
  ADD a0, s3, zero
  CALL getarray
  ADD a0, s4, zero
  CALL getarray
  ADD s0, a0, zero
  ADDI a0, zero, 78
  CALL _sysy_starttime
  BLT s2, s1, bb18
  # implict jump to bb1
bb1:   # loop depth 0
  BLT zero, s0, bb3
  # implict jump to bb2
bb2:   # loop depth 0
  LA s1, ans
  ADDI a0, zero, 90
  CALL _sysy_stoptime
  ADD a1, s1, zero
  ADD a0, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb3:   # loop depth 0
  LA t0, hashmod
  ADD t2, zero, zero
  LW a0, 0(t0)
  # implict jump to bb4
bb4:   # loop depth 1
  LA t0, requests
  LA a2, head
  LA t1, ans
  SH2ADD t0, t2, t0
  LW t0, 0(t0)
  SH2ADD a1, t2, t1
  REMW t1, t0, a0
  SH2ADD t1, t1, a2
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
  BLT t2, s0, bb8
  JAL zero, bb2
bb8:   # loop depth 1
  JAL zero, bb4
bb9:   # loop depth 2
  LA a2, key
  SH2ADD a2, t1, a2
  LW a2, 0(a2)
  BEQ a2, t0, bb11
  # implict jump to bb10
bb10:   # loop depth 2
  LA a2, next
  SH2ADD t1, t1, a2
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
  LA a2, value
  LA a3, nextvalue
  SH2ADD a2, t1, a2
  LW a2, 0(a2)
  SH2ADD t1, t1, a3
  LW t1, 0(t1)
  ADDW t0, t0, a2
  BNE t1, zero, bb17
  # implict jump to bb16
bb16:   # loop depth 1
  JAL zero, bb13
bb17:   # loop depth 2
  JAL zero, bb15
bb18:   # loop depth 0
  LA t0, hashmod
  ADD t1, zero, zero
  LW t2, 0(t0)
  # implict jump to bb19
bb19:   # loop depth 1
  LA t0, keys
  LA a1, values
  LA a3, head
  SH2ADD t0, t1, t0
  LW a0, 0(t0)
  SH2ADD t0, t1, a1
  REMW a2, a0, t2
  LW a1, 0(t0)
  SH2ADD a2, a2, a3
  LW t0, 0(a2)
  BEQ t0, zero, bb28
  # implict jump to bb20
bb20:   # loop depth 1
  # implict jump to bb21
bb21:   # loop depth 2
  BNE t0, zero, bb25
  # implict jump to bb22
bb22:   # loop depth 1
  LA t0, cnt
  LA a4, cnt
  LA a5, next
  LA a6, key
  LW t0, 0(t0)
  LA a7, value
  LA t3, nextvalue
  ADDIW a3, t0, 1
  SH2ADD t0, t0, a5
  SW a3, 0(a4)
  SH2ADD a5, a3, a6
  LW a4, 0(a2)
  SH2ADD a6, a3, a7
  SH2ADD a7, a3, t3
  SW a4, 4(t0)
  SW a3, 0(a2)
  SW a0, 0(a5)
  SW a1, 0(a6)
  SW zero, 0(a7)
  # implict jump to bb23
bb23:   # loop depth 1
  ADDIW t1, t1, 1
  BLT t1, s1, bb24
  JAL zero, bb1
bb24:   # loop depth 1
  JAL zero, bb19
bb25:   # loop depth 2
  LA a3, key
  SH2ADD a3, t0, a3
  LW a3, 0(a3)
  BEQ a3, a0, bb27
  # implict jump to bb26
bb26:   # loop depth 2
  LA a3, next
  SH2ADD t0, t0, a3
  LW t0, 0(t0)
  JAL zero, bb21
bb27:   # loop depth 1
  LA a0, cnt
  LA a2, nextvalue
  LA a3, cnt
  LA a4, nextvalue
  LW a0, 0(a0)
  SH2ADD a2, t0, a2
  LA a5, value
  ADDIW t0, a0, 1
  SH2ADD a0, a0, a4
  SW t0, 0(a3)
  SH2ADD a4, t0, a5
  LW a3, 0(a2)
  SW a3, 4(a0)
  SW t0, 0(a2)
  SW a1, 0(a4)
  JAL zero, bb23
bb28:   # loop depth 1
  LA t0, cnt
  LA a3, cnt
  LA a4, key
  LA a5, value
  LW t0, 0(t0)
  LA a6, next
  LA a7, nextvalue
  ADDIW t0, t0, 1
  SW t0, 0(a3)
  SH2ADD a3, t0, a4
  SW t0, 0(a2)
  SH2ADD a2, t0, a5
  SW a0, 0(a3)
  SH2ADD a0, t0, a6
  SW a1, 0(a2)
  SH2ADD t0, t0, a7
  SW zero, 0(a0)
  SW zero, 0(t0)
  JAL zero, bb23
