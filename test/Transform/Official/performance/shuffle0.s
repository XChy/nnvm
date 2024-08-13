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
  ADDI sp, sp, -128
  SD s5, 8(sp)
  SD s6, 16(sp)
  SD s7, 24(sp)
  SD s8, 32(sp)
  SD s9, 40(sp)
  SD s10, 48(sp)
  SD s11, 56(sp)
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  LA s1, keys
  LA s4, hashmod
  CALL getint
  LA s3, values
  ADD s0, a0, zero
  LA s2, requests
  ADD a0, s1, zero
  SW s0, 0(s4)
  ADDI s1, zero, 0
  CALL getarray
  SW a0, 0(sp)
  ADD a0, s3, zero
  CALL getarray
  ADD a0, s2, zero
  CALL getarray
  ADD s3, a0, zero
  ADDI a0, zero, 78
  CALL _sysy_starttime
  LW a0, 0(sp)
  BLT s1, a0, bb18
  # implict jump to bb1
bb1:   # loop depth 0
  BLT zero, s3, bb3
  # implict jump to bb2
bb2:   # loop depth 0
  LA s0, ans
  ADDI a0, zero, 90
  CALL _sysy_stoptime
  ADD a1, s0, zero
  ADD a0, s3, zero
  CALL putarray
  ADD a0, zero, zero
  LD s5, 8(sp)
  LD s6, 16(sp)
  LD s7, 24(sp)
  LD s8, 32(sp)
  LD s9, 40(sp)
  LD s10, 48(sp)
  LD s11, 56(sp)
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb3:   # loop depth 0
  LA s0, hashmod
  ADD s2, zero, zero
  LW s4, 0(s0)
  # implict jump to bb4
bb4:   # loop depth 1
  LA s0, requests
  LA s6, head
  LA s1, ans
  SH2ADD a0, s2, s0
  LW s0, 0(a0)
  SH2ADD s5, s2, s1
  REMW a0, s0, s4
  SH2ADD a0, a0, s6
  LW s1, 0(a0)
  # implict jump to bb5
bb5:   # loop depth 2
  BNE s1, zero, bb9
  # implict jump to bb6
bb6:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  ADDIW s2, s2, 1
  SW s0, 0(s5)
  BLT s2, s3, bb8
  JAL zero, bb2
bb8:   # loop depth 1
  JAL zero, bb4
bb9:   # loop depth 2
  LA s6, key
  SH2ADD s6, s1, s6
  LW s6, 0(s6)
  XOR s6, s6, s0
  SLTIU s6, s6, 1
  BNE s6, zero, bb11
  # implict jump to bb10
bb10:   # loop depth 2
  LA s6, next
  SH2ADD a0, s1, s6
  LW s1, 0(a0)
  JAL zero, bb5
bb11:   # loop depth 1
  BNE s1, zero, bb14
  # implict jump to bb12
bb12:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb13
bb13:   # loop depth 1
  JAL zero, bb7
bb14:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb15
bb15:   # loop depth 2
  LA s6, value
  LA s7, nextvalue
  SH2ADD s6, s1, s6
  LW s6, 0(s6)
  SH2ADD s1, s1, s7
  LW s1, 0(s1)
  ADDW s0, s0, s6
  BNE s1, zero, bb17
  # implict jump to bb16
bb16:   # loop depth 1
  JAL zero, bb13
bb17:   # loop depth 2
  JAL zero, bb15
bb18:   # loop depth 0
  LA s2, hashmod
  ADD s1, zero, zero
  LW s2, 0(s2)
  # implict jump to bb19
bb19:   # loop depth 1
  LA s4, keys
  LA s5, values
  LA s7, head
  SH2ADD a0, s1, s4
  LW s4, 0(a0)
  SH2ADD a0, s1, s5
  REMW s6, s4, s2
  LW s5, 0(a0)
  SH2ADD s6, s6, s7
  LW a0, 0(s6)
  SLTIU s7, a0, 1
  BNE s7, zero, bb28
  # implict jump to bb20
bb20:   # loop depth 1
  # implict jump to bb21
bb21:   # loop depth 2
  BNE a0, zero, bb25
  # implict jump to bb22
bb22:   # loop depth 1
  LA a0, cnt
  LA s8, cnt
  LA s9, next
  LA s10, key
  LW a0, 0(a0)
  LA s11, value
  LA s0, nextvalue
  SD s0, 112(sp)
  ADDIW s7, a0, 1
  SH2ADD a0, a0, s9
  SW s7, 0(s8)
  SH2ADD s9, s7, s10
  LW s8, 0(s6)
  SH2ADD s10, s7, s11
  LD s0, 112(sp)
  SH2ADD s11, s7, s0
  SW s8, 4(a0)
  SW s7, 0(s6)
  SW s4, 0(s9)
  SW s5, 0(s10)
  SW zero, 0(s11)
  # implict jump to bb23
bb23:   # loop depth 1
  ADDIW s1, s1, 1
  LW s0, 0(sp)
  BLT s1, s0, bb24
  JAL zero, bb1
bb24:   # loop depth 1
  JAL zero, bb19
bb25:   # loop depth 2
  LA s7, key
  SH2ADD s7, a0, s7
  LW s7, 0(s7)
  XOR s7, s7, s4
  SLTIU s7, s7, 1
  BNE s7, zero, bb27
  # implict jump to bb26
bb26:   # loop depth 2
  LA s7, next
  SH2ADD a0, a0, s7
  LW a0, 0(a0)
  JAL zero, bb21
bb27:   # loop depth 1
  LA s4, cnt
  LA s6, nextvalue
  LA s7, cnt
  LA s8, nextvalue
  LW s4, 0(s4)
  SH2ADD s6, a0, s6
  LA s9, value
  ADDIW a0, s4, 1
  SH2ADD s4, s4, s8
  SW a0, 0(s7)
  SH2ADD s8, a0, s9
  LW s7, 0(s6)
  SW s7, 4(s4)
  SW a0, 0(s6)
  SW s5, 0(s8)
  JAL zero, bb23
bb28:   # loop depth 1
  LA a0, cnt
  LA s7, cnt
  LA s8, key
  LA s9, value
  LW a0, 0(a0)
  LA s10, next
  LA s11, nextvalue
  ADDIW a0, a0, 1
  SW a0, 0(s7)
  SH2ADD s7, a0, s8
  SW a0, 0(s6)
  SH2ADD s6, a0, s9
  SW s4, 0(s7)
  SH2ADD s4, a0, s10
  SW s5, 0(s6)
  SH2ADD a0, a0, s11
  SW zero, 0(s4)
  SW zero, 0(a0)
  JAL zero, bb23
