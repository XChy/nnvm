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
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s7, 48(sp)
  SD s5, 56(sp)
  SD s0, 64(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  LA s2, hashmod
  LW s3, 0(s2)
  REMW s2, s0, s3
  SLLIW s3, s2, 2
  LA s2, head
  ADD s4, s2, s3
  LW s2, 0(s4)
  XOR s3, s2, zero
  SLTIU s2, s3, 1
  BNE s2, zero, bb7
  # implict jump to bb1
bb1:
  LW s2, 0(s4)
  ADD s3, s2, zero
  # implict jump to bb2
bb2:
  ADD s2, s3, zero
  XOR s5, s2, zero
  SLTU s6, zero, s5
  BNE s6, zero, bb4
  # implict jump to bb3
bb3:
  LA s5, cnt
  LW s6, 0(s5)
  ADDIW s5, s6, 1
  LA s6, cnt
  SW s5, 0(s6)
  SLLIW s6, s5, 2
  LA s5, next
  ADD s7, s5, s6
  LW s5, 0(s4)
  SW s5, 0(s7)
  LA s5, cnt
  LW s6, 0(s5)
  SW s6, 0(s4)
  LA s5, cnt
  LW s6, 0(s5)
  SLLIW s5, s6, 2
  LA s6, key
  ADD s7, s6, s5
  SW s0, 0(s7)
  LA s5, cnt
  LW s6, 0(s5)
  SLLIW s5, s6, 2
  LA s6, value
  ADD s7, s6, s5
  SW s1, 0(s7)
  LA s5, cnt
  LW s6, 0(s5)
  SLLIW s5, s6, 2
  LA s6, nextvalue
  ADD s7, s6, s5
  SW zero, 0(s7)
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s7, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb4:
  SLLIW s5, s2, 2
  LA s2, key
  ADD s6, s2, s5
  LW s2, 0(s6)
  XOR s6, s2, s0
  SLTIU s2, s6, 1
  BNE s2, zero, bb6
  # implict jump to bb5
bb5:
  LA s2, next
  ADD s6, s2, s5
  LW s2, 0(s6)
  ADD s3, s2, zero
  JAL zero, bb2
bb6:
  LA s2, cnt
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, cnt
  SW s2, 0(s3)
  SLLIW s3, s2, 2
  LA s2, nextvalue
  ADD s6, s2, s3
  LA s2, nextvalue
  ADD s3, s2, s5
  LW s2, 0(s3)
  SW s2, 0(s6)
  LA s2, cnt
  LW s5, 0(s2)
  SW s5, 0(s3)
  LA s2, cnt
  LW s3, 0(s2)
  SLLIW s2, s3, 2
  LA s3, value
  ADD s5, s3, s2
  SW s1, 0(s5)
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s7, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb7:
  LA s2, cnt
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, cnt
  SW s2, 0(s3)
  SW s2, 0(s4)
  LA s2, cnt
  LW s3, 0(s2)
  SLLIW s2, s3, 2
  LA s3, key
  ADD s4, s3, s2
  SW s0, 0(s4)
  LA s0, cnt
  LW s2, 0(s0)
  SLLIW s0, s2, 2
  LA s2, value
  ADD s3, s2, s0
  SW s1, 0(s3)
  LA s0, cnt
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, next
  ADD s2, s1, s0
  SW zero, 0(s2)
  LA s0, cnt
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, nextvalue
  ADD s2, s1, s0
  SW zero, 0(s2)
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s7, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s5, 24(sp)
  SD s7, 32(sp)
  SD s10, 40(sp)
  SD s1, 48(sp)
  SD s6, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
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
  ADD s1, a0, zero
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
  SLT s4, s3, s0
  BNE s4, zero, bb23
  # implict jump to bb10
bb10:
  ADD s4, zero, zero
  # implict jump to bb11
bb11:
  ADD s5, s4, zero
  SLT s6, s5, s1
  BNE s6, zero, bb13
  # implict jump to bb12
bb12:
  ADDI a0, zero, 90
  CALL _sysy_stoptime
  ADD a0, s1, zero
  LA s6, ans
  ADD a1, s6, zero
  CALL putarray
  ADD a0, zero, zero
  LD s11, 0(sp)
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s7, 32(sp)
  LD s10, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb13:
  SLLIW s6, s5, 2
  LA s7, ans
  ADD s8, s7, s6
  LA s7, requests
  ADD s9, s7, s6
  LW s6, 0(s9)
  LA s7, hashmod
  LW s9, 0(s7)
  REMW s7, s6, s9
  SLLIW s9, s7, 2
  LA s7, head
  ADD s10, s7, s9
  LW s7, 0(s10)
  ADD s9, s7, zero
  # implict jump to bb14
bb14:
  ADD s7, s9, zero
  XOR s10, s7, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb17
  # implict jump to bb15
bb15:
  ADD s10, zero, zero
  # implict jump to bb16
bb16:
  ADD ra, s10, zero
  SW ra, 0(s8)
  ADDIW s10, s5, 1
  ADD s4, s10, zero
  JAL zero, bb11
bb17:
  SLLIW s11, s7, 2
  LA ra, key
  ADD t0, ra, s11
  LW ra, 0(t0)
  XOR t0, ra, s6
  SLTIU ra, t0, 1
  BNE ra, zero, bb19
  # implict jump to bb18
bb18:
  LA ra, next
  ADD t0, ra, s11
  LW s11, 0(t0)
  ADD s9, s11, zero
  JAL zero, bb14
bb19:
  ADD s6, s7, zero
  ADD s7, zero, zero
  # implict jump to bb20
bb20:
  ADD s9, s7, zero
  ADD s11, s6, zero
  XOR ra, s11, zero
  SLTU t0, zero, ra
  BNE t0, zero, bb22
  # implict jump to bb21
bb21:
  ADD s10, s9, zero
  JAL zero, bb16
bb22:
  SLLIW s4, s11, 2
  LA s10, value
  ADD s11, s10, s4
  LW s10, 0(s11)
  ADDW s11, s9, s10
  LA s9, nextvalue
  ADD s10, s9, s4
  LW s4, 0(s10)
  ADD s6, s4, zero
  ADD s7, s11, zero
  JAL zero, bb20
bb23:
  SLLIW s4, s3, 2
  LA s5, keys
  ADD s6, s5, s4
  LW s5, 0(s6)
  LA s6, values
  ADD s7, s6, s4
  LW s4, 0(s7)
  LA s6, hashmod
  LW s7, 0(s6)
  REMW s6, s5, s7
  SLLIW s7, s6, 2
  LA s6, head
  ADD s8, s6, s7
  LW s6, 0(s8)
  XOR s7, s6, zero
  SLTIU s6, s7, 1
  BNE s6, zero, bb31
  # implict jump to bb24
bb24:
  LW s6, 0(s8)
  ADD s7, s6, zero
  # implict jump to bb25
bb25:
  ADD s6, s7, zero
  XOR s9, s6, zero
  SLTU s10, zero, s9
  BNE s10, zero, bb28
  # implict jump to bb26
bb26:
  LA s9, cnt
  LW s10, 0(s9)
  ADDIW s9, s10, 1
  LA s10, cnt
  SW s9, 0(s10)
  SLLIW s10, s9, 2
  LA s9, next
  ADD s11, s9, s10
  LW s9, 0(s8)
  SW s9, 0(s11)
  LA s9, cnt
  LW s10, 0(s9)
  SW s10, 0(s8)
  LA s9, cnt
  LW s10, 0(s9)
  SLLIW s9, s10, 2
  LA s10, key
  ADD s11, s10, s9
  SW s5, 0(s11)
  LA s9, cnt
  LW s10, 0(s9)
  SLLIW s9, s10, 2
  LA s10, value
  ADD s11, s10, s9
  SW s4, 0(s11)
  LA s9, cnt
  LW s10, 0(s9)
  SLLIW s9, s10, 2
  LA s10, nextvalue
  ADD s11, s10, s9
  SW zero, 0(s11)
  # implict jump to bb27
bb27:
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb9
bb28:
  SLLIW s9, s6, 2
  LA s6, key
  ADD s10, s6, s9
  LW s6, 0(s10)
  XOR s10, s6, s5
  SLTIU s6, s10, 1
  BNE s6, zero, bb30
  # implict jump to bb29
bb29:
  LA s6, next
  ADD s10, s6, s9
  LW s6, 0(s10)
  ADD s7, s6, zero
  JAL zero, bb25
bb30:
  LA s6, cnt
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, cnt
  SW s6, 0(s7)
  SLLIW s7, s6, 2
  LA s6, nextvalue
  ADD s10, s6, s7
  LA s6, nextvalue
  ADD s7, s6, s9
  LW s6, 0(s7)
  SW s6, 0(s10)
  LA s6, cnt
  LW s9, 0(s6)
  SW s9, 0(s7)
  LA s6, cnt
  LW s7, 0(s6)
  SLLIW s6, s7, 2
  LA s7, value
  ADD s9, s7, s6
  SW s4, 0(s9)
  JAL zero, bb27
bb31:
  LA s6, cnt
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, cnt
  SW s6, 0(s7)
  SW s6, 0(s8)
  LA s6, cnt
  LW s7, 0(s6)
  SLLIW s6, s7, 2
  LA s7, key
  ADD s8, s7, s6
  SW s5, 0(s8)
  LA s5, cnt
  LW s6, 0(s5)
  SLLIW s5, s6, 2
  LA s6, value
  ADD s7, s6, s5
  SW s4, 0(s7)
  LA s4, cnt
  LW s5, 0(s4)
  SLLIW s4, s5, 2
  LA s5, next
  ADD s6, s5, s4
  SW zero, 0(s6)
  LA s4, cnt
  LW s5, 0(s4)
  SLLIW s4, s5, 2
  LA s5, nextvalue
  ADD s6, s5, s4
  SW zero, 0(s6)
  JAL zero, bb27
reduce:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  LA s1, hashmod
  LW s2, 0(s1)
  REMW s1, s0, s2
  SLLIW s2, s1, 2
  LA s1, head
  ADD s3, s1, s2
  LW s1, 0(s3)
  ADD s2, s1, zero
  # implict jump to bb33
bb33:
  ADD s1, s2, zero
  XOR s3, s1, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb35
  # implict jump to bb34
bb34:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb35:
  SLLIW s3, s1, 2
  LA s4, key
  ADD s5, s4, s3
  LW s4, 0(s5)
  XOR s5, s4, s0
  SLTIU s4, s5, 1
  BNE s4, zero, bb37
  # implict jump to bb36
bb36:
  LA s4, next
  ADD s5, s4, s3
  LW s3, 0(s5)
  ADD s2, s3, zero
  JAL zero, bb33
bb37:
  ADD s0, s1, zero
  ADD s1, zero, zero
  # implict jump to bb38
bb38:
  ADD s2, s1, zero
  ADD s3, s0, zero
  XOR s4, s3, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb40
  # implict jump to bb39
bb39:
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb40:
  SLLIW s4, s3, 2
  LA s3, value
  ADD s5, s3, s4
  LW s3, 0(s5)
  ADDW s5, s2, s3
  LA s2, nextvalue
  ADD s3, s2, s4
  LW s2, 0(s3)
  ADD s0, s2, zero
  ADD s1, s5, zero
  JAL zero, bb38
hash:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  LA s1, hashmod
  LW s2, 0(s1)
  REMW s1, s0, s2
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
