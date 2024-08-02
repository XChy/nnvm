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
  LA s0, hashmod
  SW a0, 0(s0)
  LA a0, keys
  CALL getarray
  ADD s0, a0, zero
  LA a0, values
  CALL getarray
  LA a0, requests
  CALL getarray
  ADD s1, a0, zero
  ADDI a0, zero, 78
  CALL _sysy_starttime
  ADDI a0, zero, 0
  BLT a0, s0, bb18
  # implict jump to bb1
bb1:
  BLT zero, s1, bb3
  # implict jump to bb2
bb2:
  ADDI a0, zero, 90
  CALL _sysy_stoptime
  ADD a0, s1, zero
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
  LW a0, 0(a0)
  ADD s0, zero, zero
  # implict jump to bb4
bb4:
  SLLIW s2, s0, 2
  LA s3, ans
  ADD s3, s3, s2
  LA s4, requests
  ADD s2, s4, s2
  LW s2, 0(s2)
  REMW s4, s2, a0
  SLLIW s4, s4, 2
  LA s5, head
  ADD s4, s5, s4
  LW s4, 0(s4)
  # implict jump to bb5
bb5:
  BNE s4, zero, bb9
  # implict jump to bb6
bb6:
  ADD s2, zero, zero
  # implict jump to bb7
bb7:
  SW s2, 0(s3)
  ADDIW s0, s0, 1
  BLT s0, s1, bb8
  JAL zero, bb2
bb8:
  JAL zero, bb4
bb9:
  SLLIW s5, s4, 2
  LA s6, key
  ADD s6, s6, s5
  LW s6, 0(s6)
  XOR s6, s6, s2
  SLTIU s6, s6, 1
  BNE s6, zero, bb11
  # implict jump to bb10
bb10:
  LA s4, next
  ADD s4, s4, s5
  LW s4, 0(s4)
  JAL zero, bb5
bb11:
  BNE s4, zero, bb14
  # implict jump to bb12
bb12:
  ADD s2, zero, zero
  # implict jump to bb13
bb13:
  JAL zero, bb7
bb14:
  ADD s2, zero, zero
  # implict jump to bb15
bb15:
  SLLIW s4, s4, 2
  LA s5, value
  ADD s5, s5, s4
  LW s5, 0(s5)
  ADDW s2, s2, s5
  LA s5, nextvalue
  ADD s4, s5, s4
  LW s4, 0(s4)
  BNE s4, zero, bb17
  # implict jump to bb16
bb16:
  JAL zero, bb13
bb17:
  JAL zero, bb15
bb18:
  LA a0, hashmod
  LW a0, 0(a0)
  ADD s2, zero, zero
  # implict jump to bb19
bb19:
  SLLIW s3, s2, 2
  LA s4, keys
  ADD s4, s4, s3
  LW s4, 0(s4)
  LA s5, values
  ADD s3, s5, s3
  LW s3, 0(s3)
  REMW s5, s4, a0
  SLLIW s5, s5, 2
  LA s6, head
  ADD s5, s6, s5
  LW s6, 0(s5)
  SLTIU s7, s6, 1
  BNE s7, zero, bb28
  # implict jump to bb20
bb20:
  # implict jump to bb21
bb21:
  BNE s6, zero, bb25
  # implict jump to bb22
bb22:
  LA s6, cnt
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, cnt
  SW s6, 0(s7)
  SLLIW s7, s6, 2
  LA s8, next
  ADD s8, s8, s7
  LW s9, 0(s5)
  SW s9, 0(s8)
  SW s6, 0(s5)
  LA s5, key
  ADD s5, s5, s7
  SW s4, 0(s5)
  LA s4, value
  ADD s4, s4, s7
  SW s3, 0(s4)
  LA s3, nextvalue
  ADD s3, s3, s7
  SW zero, 0(s3)
  # implict jump to bb23
bb23:
  ADDIW s2, s2, 1
  BLT s2, s0, bb24
  JAL zero, bb1
bb24:
  JAL zero, bb19
bb25:
  SLLIW s6, s6, 2
  LA s7, key
  ADD s7, s7, s6
  LW s7, 0(s7)
  XOR s7, s7, s4
  SLTIU s7, s7, 1
  BNE s7, zero, bb27
  # implict jump to bb26
bb26:
  LA s7, next
  ADD s6, s7, s6
  LW s6, 0(s6)
  JAL zero, bb21
bb27:
  LA s4, cnt
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, cnt
  SW s4, 0(s5)
  SLLIW s5, s4, 2
  LA s7, nextvalue
  ADD s7, s7, s5
  LA s8, nextvalue
  ADD s6, s8, s6
  LW s8, 0(s6)
  SW s8, 0(s7)
  SW s4, 0(s6)
  LA s4, value
  ADD s4, s4, s5
  SW s3, 0(s4)
  JAL zero, bb23
bb28:
  LA s6, cnt
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, cnt
  SW s6, 0(s7)
  SW s6, 0(s5)
  SLLIW s5, s6, 2
  LA s6, key
  ADD s6, s6, s5
  SW s4, 0(s6)
  LA s4, value
  ADD s4, s4, s5
  SW s3, 0(s4)
  LA s3, next
  ADD s3, s3, s5
  SW zero, 0(s3)
  LA s3, nextvalue
  ADD s3, s3, s5
  SW zero, 0(s3)
  JAL zero, bb23
