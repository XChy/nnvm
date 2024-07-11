.global insert
.global main
.global reduce
.global hash
.section .bss
ans:
.space 40000000




bucket:
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
maxn:
.word 0x00989680
cnt:
.word 0x00000000
maxm:
.word 0x00989680









.section .text
insert:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  ADD s0, a0, zero
  LA s1, hashmod
  LW s1, 0(s1)
  REMW s1, s0, s1
  SLLIW s1, s1, 2
  LA s2, head
  ADD s1, s2, s1
  LW s2, 0(s1)
  SLTIU s2, s2, 1
  BNE s2, zero, bb7
  # implict jump to bb1
bb1:
  LW s2, 0(s1)
  # implict jump to bb2
bb2:
  ADD s3, s2, zero
  BNE s3, zero, bb4
  # implict jump to bb3
bb3:
  LA s4, cnt
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, cnt
  SW s4, 0(s5)
  SLLIW s4, s4, 2
  LA s5, next
  ADD s4, s5, s4
  LW s5, 0(s1)
  SW s5, 0(s4)
  LA s4, cnt
  LW s4, 0(s4)
  SW s4, 0(s1)
  LA s4, cnt
  LW s4, 0(s4)
  SLLIW s4, s4, 2
  LA s5, key
  ADD s4, s5, s4
  SW s0, 0(s4)
  LA s4, cnt
  LW s4, 0(s4)
  SLLIW s4, s4, 2
  LA s5, value
  ADD s4, s5, s4
  SW a1, 0(s4)
  LA s4, cnt
  LW s4, 0(s4)
  SLLIW s4, s4, 2
  LA s5, nextvalue
  ADD s4, s5, s4
  SW zero, 0(s4)
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb4:
  SLLIW s3, s3, 2
  LA s4, key
  ADD s4, s4, s3
  LW s4, 0(s4)
  XOR s4, s4, s0
  SLTIU s4, s4, 1
  BNE s4, zero, bb6
  # implict jump to bb5
bb5:
  LA s4, next
  ADD s4, s4, s3
  LW s4, 0(s4)
  ADD s2, s4, zero
  JAL zero, bb2
bb6:
  LA s2, cnt
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s4, cnt
  SW s2, 0(s4)
  SLLIW s2, s2, 2
  LA s4, nextvalue
  ADD s2, s4, s2
  LA s4, nextvalue
  ADD s3, s4, s3
  LW s4, 0(s3)
  SW s4, 0(s2)
  LA s2, cnt
  LW s2, 0(s2)
  SW s2, 0(s3)
  LA s2, cnt
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s3, value
  ADD s2, s3, s2
  SW a1, 0(s2)
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb7:
  LA s2, cnt
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s3, cnt
  SW s2, 0(s3)
  SW s2, 0(s1)
  LA s1, cnt
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  LA s2, key
  ADD s1, s2, s1
  SW s0, 0(s1)
  LA s0, cnt
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s1, value
  ADD s0, s1, s0
  SW a1, 0(s0)
  LA s0, cnt
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s1, next
  ADD s0, s1, s0
  SW zero, 0(s0)
  LA s0, cnt
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s1, nextvalue
  ADD s0, s1, s0
  SW zero, 0(s0)
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s2, 16(sp)
  SD s3, 24(sp)
  SD s4, 32(sp)
  SD s8, 40(sp)
  SD s9, 48(sp)
  SD s0, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, hashmod
  SW s0, 0(s1)
  LA s0, keys
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  LA s1, values
  ADD a0, s1, zero
  CALL getarray
  LA s1, requests
  ADD a0, s1, zero
  CALL getarray
  ADD s1, a0, zero
  ADDI a0, zero, 78
  CALL _sysy_starttime
  ADD s2, zero, zero
  # implict jump to bb9
bb9:
  ADD s3, s2, zero
  BLT s3, s0, bb23
  # implict jump to bb10
bb10:
  ADD s4, zero, zero
  # implict jump to bb11
bb11:
  ADD s5, s4, zero
  BLT s5, s1, bb13
  # implict jump to bb12
bb12:
  ADDI a0, zero, 90
  CALL _sysy_stoptime
  ADD a0, s1, zero
  LA s6, ans
  ADD a1, s6, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s2, 16(sp)
  LD s3, 24(sp)
  LD s4, 32(sp)
  LD s8, 40(sp)
  LD s9, 48(sp)
  LD s0, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb13:
  SLLIW s6, s5, 2
  LA s7, ans
  ADD s7, s7, s6
  LA s8, requests
  ADD s6, s8, s6
  LW s6, 0(s6)
  LA s8, hashmod
  LW s8, 0(s8)
  REMW s8, s6, s8
  SLLIW s8, s8, 2
  LA s9, head
  ADD s8, s9, s8
  LW s8, 0(s8)
  # implict jump to bb14
bb14:
  ADD s9, s8, zero
  BNE s9, zero, bb17
  # implict jump to bb15
bb15:
  ADD s10, zero, zero
  # implict jump to bb16
bb16:
  SW s10, 0(s7)
  ADDIW s10, s5, 1
  ADD s4, s10, zero
  JAL zero, bb11
bb17:
  SLLIW s11, s9, 2
  LA ra, key
  ADD ra, ra, s11
  LW ra, 0(ra)
  XOR ra, ra, s6
  SLTIU ra, ra, 1
  BNE ra, zero, bb19
  # implict jump to bb18
bb18:
  LA ra, next
  ADD s11, ra, s11
  LW s11, 0(s11)
  ADD s8, s11, zero
  JAL zero, bb14
bb19:
  ADD s6, s9, zero
  ADD s8, zero, zero
  # implict jump to bb20
bb20:
  ADD s9, s8, zero
  ADD s11, s6, zero
  BNE s11, zero, bb22
  # implict jump to bb21
bb21:
  ADD s10, s9, zero
  JAL zero, bb16
bb22:
  SLLIW s4, s11, 2
  LA s10, value
  ADD s10, s10, s4
  LW s10, 0(s10)
  ADDW s9, s9, s10
  LA s10, nextvalue
  ADD s4, s10, s4
  LW s4, 0(s4)
  ADD s6, s4, zero
  ADD s8, s9, zero
  JAL zero, bb20
bb23:
  SLLIW s4, s3, 2
  LA s5, keys
  ADD s5, s5, s4
  LW s5, 0(s5)
  LA s6, values
  ADD s4, s6, s4
  LW s4, 0(s4)
  LA s6, hashmod
  LW s6, 0(s6)
  REMW s6, s5, s6
  SLLIW s6, s6, 2
  LA s7, head
  ADD s6, s7, s6
  LW s7, 0(s6)
  SLTIU s7, s7, 1
  BNE s7, zero, bb31
  # implict jump to bb24
bb24:
  LW s7, 0(s6)
  # implict jump to bb25
bb25:
  ADD s8, s7, zero
  BNE s8, zero, bb28
  # implict jump to bb26
bb26:
  LA s9, cnt
  LW s9, 0(s9)
  ADDIW s9, s9, 1
  LA s10, cnt
  SW s9, 0(s10)
  SLLIW s9, s9, 2
  LA s10, next
  ADD s9, s10, s9
  LW s10, 0(s6)
  SW s10, 0(s9)
  LA s9, cnt
  LW s9, 0(s9)
  SW s9, 0(s6)
  LA s9, cnt
  LW s9, 0(s9)
  SLLIW s9, s9, 2
  LA s10, key
  ADD s9, s10, s9
  SW s5, 0(s9)
  LA s9, cnt
  LW s9, 0(s9)
  SLLIW s9, s9, 2
  LA s10, value
  ADD s9, s10, s9
  SW s4, 0(s9)
  LA s9, cnt
  LW s9, 0(s9)
  SLLIW s9, s9, 2
  LA s10, nextvalue
  ADD s9, s10, s9
  SW zero, 0(s9)
  # implict jump to bb27
bb27:
  ADDIW s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb9
bb28:
  SLLIW s8, s8, 2
  LA s9, key
  ADD s9, s9, s8
  LW s9, 0(s9)
  XOR s9, s9, s5
  SLTIU s9, s9, 1
  BNE s9, zero, bb30
  # implict jump to bb29
bb29:
  LA s9, next
  ADD s9, s9, s8
  LW s9, 0(s9)
  ADD s7, s9, zero
  JAL zero, bb25
bb30:
  LA s7, cnt
  LW s7, 0(s7)
  ADDIW s7, s7, 1
  LA s9, cnt
  SW s7, 0(s9)
  SLLIW s7, s7, 2
  LA s9, nextvalue
  ADD s7, s9, s7
  LA s9, nextvalue
  ADD s8, s9, s8
  LW s9, 0(s8)
  SW s9, 0(s7)
  LA s7, cnt
  LW s7, 0(s7)
  SW s7, 0(s8)
  LA s7, cnt
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s8, value
  ADD s7, s8, s7
  SW s4, 0(s7)
  JAL zero, bb27
bb31:
  LA s7, cnt
  LW s7, 0(s7)
  ADDIW s7, s7, 1
  LA s8, cnt
  SW s7, 0(s8)
  SW s7, 0(s6)
  LA s6, cnt
  LW s6, 0(s6)
  SLLIW s6, s6, 2
  LA s7, key
  ADD s6, s7, s6
  SW s5, 0(s6)
  LA s5, cnt
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, value
  ADD s5, s6, s5
  SW s4, 0(s5)
  LA s4, cnt
  LW s4, 0(s4)
  SLLIW s4, s4, 2
  LA s5, next
  ADD s4, s5, s4
  SW zero, 0(s4)
  LA s4, cnt
  LW s4, 0(s4)
  SLLIW s4, s4, 2
  LA s5, nextvalue
  ADD s4, s5, s4
  SW zero, 0(s4)
  JAL zero, bb27
reduce:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  ADD s0, a0, zero
  LA s1, hashmod
  LW s1, 0(s1)
  REMW s1, s0, s1
  SLLIW s1, s1, 2
  LA s2, head
  ADD s1, s2, s1
  LW s1, 0(s1)
  # implict jump to bb33
bb33:
  ADD s2, s1, zero
  BNE s2, zero, bb35
  # implict jump to bb34
bb34:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb35:
  SLLIW s3, s2, 2
  LA s4, key
  ADD s4, s4, s3
  LW s4, 0(s4)
  XOR s4, s4, s0
  SLTIU s4, s4, 1
  BNE s4, zero, bb37
  # implict jump to bb36
bb36:
  LA s4, next
  ADD s3, s4, s3
  LW s3, 0(s3)
  ADD s1, s3, zero
  JAL zero, bb33
bb37:
  ADD s0, s2, zero
  ADD s1, zero, zero
  # implict jump to bb38
bb38:
  ADD s2, s1, zero
  ADD s3, s0, zero
  BNE s3, zero, bb40
  # implict jump to bb39
bb39:
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb40:
  SLLIW s3, s3, 2
  LA s4, value
  ADD s4, s4, s3
  LW s4, 0(s4)
  ADDW s2, s2, s4
  LA s4, nextvalue
  ADD s3, s4, s3
  LW s3, 0(s3)
  ADD s0, s3, zero
  ADD s1, s2, zero
  JAL zero, bb38
hash:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  LA s1, hashmod
  LW s1, 0(s1)
  REMW s0, s0, s1
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
