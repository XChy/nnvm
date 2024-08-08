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
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s3, 16(sp)
  SD s4, 24(sp)
  SD s5, 32(sp)
  SD s6, 40(sp)
  SD s7, 48(sp)
  SD s8, 56(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
  CALL getint
  LA s0, hashmod
  SW a0, 0(s0)
  LA a0, keys
  CALL getarray
  ADD s2, a0, zero
  LA a0, values
  CALL getarray
  LA a0, requests
  CALL getarray
  ADD s1, a0, zero
  ADDI a0, zero, 78
  CALL _sysy_starttime
  ADDI a0, zero, 0
  BLT a0, s2, bb18
  # implict jump to bb1
bb1:   # loop depth 0
  BLT zero, s1, bb3
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI a0, zero, 90
  CALL _sysy_stoptime
  ADD a0, s1, zero
  LA a1, ans
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s3, 16(sp)
  LD s4, 24(sp)
  LD s5, 32(sp)
  LD s6, 40(sp)
  LD s7, 48(sp)
  LD s8, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb3:   # loop depth 0
  LA a0, hashmod
  LW s2, 0(a0)
  ADD s3, zero, zero
  # implict jump to bb4
bb4:   # loop depth 1
  SLLIW a0, s3, 2
  LA s0, ans
  ADD s4, s0, a0
  LA s0, requests
  ADD a0, s0, a0
  LW a0, 0(a0)
  REMW s0, a0, s2
  SLLIW s0, s0, 2
  LA s5, head
  ADD s0, s5, s0
  LW s0, 0(s0)
  # implict jump to bb5
bb5:   # loop depth 2
  BNE s0, zero, bb9
  # implict jump to bb6
bb6:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  SW a0, 0(s4)
  ADDIW s3, s3, 1
  BLT s3, s1, bb8
  JAL zero, bb2
bb8:   # loop depth 1
  JAL zero, bb4
bb9:   # loop depth 2
  SLLIW s5, s0, 2
  LA s6, key
  ADD s6, s6, s5
  LW s6, 0(s6)
  XOR s6, s6, a0
  SLTIU s6, s6, 1
  BNE s6, zero, bb11
  # implict jump to bb10
bb10:   # loop depth 2
  LA s0, next
  ADD s0, s0, s5
  LW s0, 0(s0)
  JAL zero, bb5
bb11:   # loop depth 1
  BNE s0, zero, bb14
  # implict jump to bb12
bb12:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb13
bb13:   # loop depth 1
  JAL zero, bb7
bb14:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb15
bb15:   # loop depth 2
  SLLIW s0, s0, 2
  LA s5, value
  ADD s5, s5, s0
  LW s5, 0(s5)
  ADDW a0, a0, s5
  LA s5, nextvalue
  ADD s0, s5, s0
  LW s0, 0(s0)
  BNE s0, zero, bb17
  # implict jump to bb16
bb16:   # loop depth 1
  JAL zero, bb13
bb17:   # loop depth 2
  JAL zero, bb15
bb18:   # loop depth 0
  LA a0, hashmod
  LW s3, 0(a0)
  ADD s0, zero, zero
  # implict jump to bb19
bb19:   # loop depth 1
  SLLIW a0, s0, 2
  LA s4, keys
  ADD s4, s4, a0
  LW s4, 0(s4)
  LA s5, values
  ADD a0, s5, a0
  LW s5, 0(a0)
  REMW a0, s4, s3
  SLLIW a0, a0, 2
  LA s6, head
  ADD s6, s6, a0
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
  LW a0, 0(a0)
  ADDIW s7, a0, 1
  LA s8, cnt
  SW s7, 0(s8)
  SLLIW a0, a0, 2
  LA s8, next
  ADD a0, s8, a0
  LW s8, 0(s6)
  SW s8, 4(a0)
  SW s7, 0(s6)
  SLLIW a0, s7, 2
  LA s6, key
  ADD s6, s6, a0
  SW s4, 0(s6)
  LA s4, value
  ADD s4, s4, a0
  SW s5, 0(s4)
  LA s4, nextvalue
  ADD a0, s4, a0
  SW zero, 0(a0)
  # implict jump to bb23
bb23:   # loop depth 1
  ADDIW s0, s0, 1
  BLT s0, s2, bb24
  JAL zero, bb1
bb24:   # loop depth 1
  JAL zero, bb19
bb25:   # loop depth 2
  SLLIW a0, a0, 2
  LA s7, key
  ADD s7, s7, a0
  LW s7, 0(s7)
  XOR s7, s7, s4
  SLTIU s7, s7, 1
  BNE s7, zero, bb27
  # implict jump to bb26
bb26:   # loop depth 2
  LA s7, next
  ADD a0, s7, a0
  LW a0, 0(a0)
  JAL zero, bb21
bb27:   # loop depth 1
  LA s4, cnt
  LW s4, 0(s4)
  ADDIW s6, s4, 1
  LA s7, cnt
  SW s6, 0(s7)
  SLLIW s4, s4, 2
  LA s7, nextvalue
  ADD s4, s7, s4
  LA s7, nextvalue
  ADD a0, s7, a0
  LW s7, 0(a0)
  SW s7, 4(s4)
  SW s6, 0(a0)
  SLLIW a0, s6, 2
  LA s4, value
  ADD a0, s4, a0
  SW s5, 0(a0)
  JAL zero, bb23
bb28:   # loop depth 1
  LA a0, cnt
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s7, cnt
  SW a0, 0(s7)
  SW a0, 0(s6)
  SLLIW a0, a0, 2
  LA s6, key
  ADD s6, s6, a0
  SW s4, 0(s6)
  LA s4, value
  ADD s4, s4, a0
  SW s5, 0(s4)
  LA s4, next
  ADD s4, s4, a0
  SW zero, 0(s4)
  LA s4, nextvalue
  ADD a0, s4, a0
  SW zero, 0(a0)
  JAL zero, bb23
