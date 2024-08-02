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
main:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s4, 16(sp)
  SD s5, 24(sp)
  SD s6, 32(sp)
  SD s7, 40(sp)
  SD s8, 48(sp)
  SD s9, 56(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  CALL getint
  ADD s0, a0, zero
  LA a0, hashmod
  SW s0, 0(a0)
  LA a0, keys
  CALL getarray
  ADD s2, a0, zero
  LA a0, values
  CALL getarray
  LA a0, requests
  CALL getarray
  ADD s0, a0, zero
  ADDI a0, zero, 78
  CALL _sysy_starttime
  ADDI a0, zero, 0
  BLT a0, s2, bb18
  # implict jump to bb1
bb1:
  BLT zero, s0, bb3
  # implict jump to bb2
bb2:
  ADDI a0, zero, 90
  CALL _sysy_stoptime
  ADD a0, s0, zero
  LA a1, ans
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s4, 16(sp)
  LD s5, 24(sp)
  LD s6, 32(sp)
  LD s7, 40(sp)
  LD s8, 48(sp)
  LD s9, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb3:
  LA a0, hashmod
  LW s2, 0(a0)
  ADD a0, zero, zero
  # implict jump to bb4
bb4:
  ADD s1, a0, zero
  SLLIW s4, s1, 2
  LA a0, ans
  ADD s3, a0, s4
  LA a0, requests
  ADD a0, a0, s4
  LW s4, 0(a0)
  REMW a0, s4, s2
  SLLIW s5, a0, 2
  LA a0, head
  ADD a0, a0, s5
  LW a0, 0(a0)
  # implict jump to bb5
bb5:
  ADD s5, a0, zero
  BNE s5, zero, bb9
  # implict jump to bb6
bb6:
  ADD a0, zero, zero
  # implict jump to bb7
bb7:
  SW a0, 0(s3)
  ADDIW a0, s1, 1
  BLT a0, s0, bb8
  JAL zero, bb2
bb8:
  JAL zero, bb4
bb9:
  SLLIW s6, s5, 2
  LA a0, key
  ADD a0, a0, s6
  LW a0, 0(a0)
  XOR a0, a0, s4
  SLTIU a0, a0, 1
  BNE a0, zero, bb11
  # implict jump to bb10
bb10:
  LA a0, next
  ADD a0, a0, s6
  LW a0, 0(a0)
  JAL zero, bb5
bb11:
  BNE s5, zero, bb14
  # implict jump to bb12
bb12:
  ADD a0, zero, zero
  # implict jump to bb13
bb13:
  JAL zero, bb7
bb14:
  ADD s4, zero, zero
  ADD a0, s5, zero
  # implict jump to bb15
bb15:
  SLLIW s5, a0, 2
  LA a0, value
  ADD a0, a0, s5
  LW a0, 0(a0)
  ADDW s4, s4, a0
  LA a0, nextvalue
  ADD a0, a0, s5
  LW a0, 0(a0)
  BNE a0, zero, bb17
  # implict jump to bb16
bb16:
  ADD a0, s4, zero
  JAL zero, bb13
bb17:
  JAL zero, bb15
bb18:
  LA a0, hashmod
  LW s1, 0(a0)
  ADD a0, zero, zero
  # implict jump to bb19
bb19:
  ADD s3, a0, zero
  SLLIW s4, s3, 2
  LA a0, keys
  ADD a0, a0, s4
  LW s5, 0(a0)
  LA a0, values
  ADD a0, a0, s4
  LW s4, 0(a0)
  REMW a0, s5, s1
  SLLIW s6, a0, 2
  LA a0, head
  ADD s7, a0, s6
  LW a0, 0(s7)
  SLTIU s6, a0, 1
  BNE s6, zero, bb28
  # implict jump to bb20
bb20:
  # implict jump to bb21
bb21:
  BNE a0, zero, bb25
  # implict jump to bb22
bb22:
  LA a0, cnt
  LW a0, 0(a0)
  ADDIW s8, a0, 1
  LA a0, cnt
  SW s8, 0(a0)
  SLLIW s6, s8, 2
  LA a0, next
  ADD s9, a0, s6
  LW a0, 0(s7)
  SW a0, 0(s9)
  SW s8, 0(s7)
  LA a0, key
  ADD a0, a0, s6
  SW s5, 0(a0)
  LA a0, value
  ADD a0, a0, s6
  SW s4, 0(a0)
  LA a0, nextvalue
  ADD a0, a0, s6
  SW zero, 0(a0)
  # implict jump to bb23
bb23:
  ADDIW a0, s3, 1
  BLT a0, s2, bb24
  JAL zero, bb1
bb24:
  JAL zero, bb19
bb25:
  SLLIW s6, a0, 2
  LA a0, key
  ADD a0, a0, s6
  LW a0, 0(a0)
  XOR a0, a0, s5
  SLTIU a0, a0, 1
  BNE a0, zero, bb27
  # implict jump to bb26
bb26:
  LA a0, next
  ADD a0, a0, s6
  LW a0, 0(a0)
  JAL zero, bb21
bb27:
  LA a0, cnt
  LW a0, 0(a0)
  ADDIW s7, a0, 1
  LA a0, cnt
  SW s7, 0(a0)
  SLLIW s5, s7, 2
  LA a0, nextvalue
  ADD s8, a0, s5
  LA a0, nextvalue
  ADD a0, a0, s6
  LW s6, 0(a0)
  SW s6, 0(s8)
  SW s7, 0(a0)
  LA a0, value
  ADD a0, a0, s5
  SW s4, 0(a0)
  JAL zero, bb23
bb28:
  LA a0, cnt
  LW a0, 0(a0)
  ADDIW s6, a0, 1
  LA a0, cnt
  SW s6, 0(a0)
  SW s6, 0(s7)
  SLLIW s6, s6, 2
  LA a0, key
  ADD a0, a0, s6
  SW s5, 0(a0)
  LA a0, value
  ADD a0, a0, s6
  SW s4, 0(a0)
  LA a0, next
  ADD a0, a0, s6
  SW zero, 0(a0)
  LA a0, nextvalue
  ADD a0, a0, s6
  SW zero, 0(a0)
  JAL zero, bb23
