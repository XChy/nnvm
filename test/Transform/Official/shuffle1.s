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
  LA s2, cnt
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, cnt
  SW s2, 0(s3)
  SLLIW s3, s2, 2
  LA s2, next
  ADD s5, s2, s3
  LW s2, 0(s4)
  SW s2, 0(s5)
  LA s2, cnt
  LW s3, 0(s2)
  SW s3, 0(s4)
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
  LW s6, 0(s2)
  ADDIW s2, s6, 1
  LA s6, cnt
  SW s2, 0(s6)
  SLLIW s6, s2, 2
  LA s2, nextvalue
  ADD s7, s2, s6
  LA s2, nextvalue
  ADD s6, s2, s5
  LW s2, 0(s6)
  SW s2, 0(s7)
  LA s2, cnt
  LW s7, 0(s2)
  SW s7, 0(s6)
  LA s2, cnt
  LW s6, 0(s2)
  SLLIW s2, s6, 2
  LA s6, value
  ADD s7, s6, s2
  SW s1, 0(s7)
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
  ADD s5, s3, s2
  SW s0, 0(s5)
  LA s2, cnt
  LW s3, 0(s2)
  SLLIW s2, s3, 2
  LA s3, value
  ADD s5, s3, s2
  SW s1, 0(s5)
  LA s2, cnt
  LW s3, 0(s2)
  SLLIW s2, s3, 2
  LA s3, next
  ADD s5, s3, s2
  SW zero, 0(s5)
  LA s2, cnt
  LW s3, 0(s2)
  SLLIW s2, s3, 2
  LA s3, nextvalue
  ADD s5, s3, s2
  SW zero, 0(s5)
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
  ADDI sp, sp, -128
  SD s11, 16(sp)
  SD s10, 24(sp)
  SD s9, 32(sp)
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s5, 56(sp)
  SD s7, 64(sp)
  SD s1, 72(sp)
  SD s6, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  SD s8, 112(sp)
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
  ADD t4, a0, zero
  SW t4, 0(sp)
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
  ADD s0, zero, zero
  # implict jump to bb11
bb11:
  ADD s2, s0, zero
  LW t4, 0(sp)
  SLT s3, s2, t4
  BNE s3, zero, bb13
  # implict jump to bb12
bb12:
  ADDI a0, zero, 90
  CALL _sysy_stoptime
  LW t4, 0(sp)
  ADD a0, t4, zero
  LA s0, ans
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD s11, 16(sp)
  LD s10, 24(sp)
  LD s9, 32(sp)
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s5, 56(sp)
  LD s7, 64(sp)
  LD s1, 72(sp)
  LD s6, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD s8, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb13:
  SLLIW s3, s2, 2
  LA s4, ans
  ADD t4, s4, s3
  SD t4, 8(sp)
  LA s4, requests
  ADD s6, s4, s3
  LW s3, 0(s6)
  LA s4, hashmod
  LW s6, 0(s4)
  REMW s4, s3, s6
  SLLIW s6, s4, 2
  LA s4, head
  ADD s7, s4, s6
  LW s4, 0(s7)
  ADD s6, s4, zero
  # implict jump to bb14
bb14:
  ADD s4, s6, zero
  XOR s7, s4, zero
  SLTU s8, zero, s7
  BNE s8, zero, bb17
  # implict jump to bb15
bb15:
  ADD s1, zero, zero
  # implict jump to bb16
bb16:
  ADD s4, s1, zero
  LD t4, 8(sp)
  SW s4, 0(t4)
  ADDIW s4, s2, 1
  ADD s0, s4, zero
  JAL zero, bb11
bb17:
  SLLIW s7, s4, 2
  LA s8, key
  ADD s9, s8, s7
  LW s8, 0(s9)
  XOR s9, s8, s3
  SLTIU s8, s9, 1
  BNE s8, zero, bb19
  # implict jump to bb18
bb18:
  LA s0, next
  ADD s4, s0, s7
  LW s0, 0(s4)
  ADD s6, s0, zero
  JAL zero, bb14
bb19:
  ADD s8, s4, zero
  ADD s4, zero, zero
  # implict jump to bb20
bb20:
  ADD s9, s4, zero
  ADD s10, s8, zero
  XOR s11, s10, zero
  SLTU s1, zero, s11
  BNE s1, zero, bb22
  # implict jump to bb21
bb21:
  ADD s1, s9, zero
  JAL zero, bb16
bb22:
  SLLIW s1, s10, 2
  LA s10, value
  ADD s11, s10, s1
  LW s10, 0(s11)
  ADDW s11, s9, s10
  LA s10, nextvalue
  ADD s5, s10, s1
  LW s1, 0(s5)
  ADD s8, s1, zero
  ADD s4, s11, zero
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
  LW s2, 0(s8)
  ADD s6, s2, zero
  # implict jump to bb25
bb25:
  ADD s2, s6, zero
  XOR s7, s2, zero
  SLTU s9, zero, s7
  BNE s9, zero, bb28
  # implict jump to bb26
bb26:
  LA s2, cnt
  LW s6, 0(s2)
  ADDIW s2, s6, 1
  LA s6, cnt
  SW s2, 0(s6)
  SLLIW s6, s2, 2
  LA s2, next
  ADD s7, s2, s6
  LW s2, 0(s8)
  SW s2, 0(s7)
  LA s2, cnt
  LW s6, 0(s2)
  SW s6, 0(s8)
  LA s2, cnt
  LW s6, 0(s2)
  SLLIW s2, s6, 2
  LA s6, key
  ADD s7, s6, s2
  SW s5, 0(s7)
  LA s2, cnt
  LW s5, 0(s2)
  SLLIW s2, s5, 2
  LA s5, value
  ADD s6, s5, s2
  SW s4, 0(s6)
  LA s2, cnt
  LW s4, 0(s2)
  SLLIW s2, s4, 2
  LA s4, nextvalue
  ADD s5, s4, s2
  SW zero, 0(s5)
  # implict jump to bb27
bb27:
  ADDIW s6, s3, 1
  ADD s2, s6, zero
  JAL zero, bb9
bb28:
  SLLIW s7, s2, 2
  LA s2, key
  ADD s9, s2, s7
  LW s2, 0(s9)
  XOR s9, s2, s5
  SLTIU s2, s9, 1
  BNE s2, zero, bb30
  # implict jump to bb29
bb29:
  LA s2, next
  ADD s9, s2, s7
  LW s2, 0(s9)
  ADD s6, s2, zero
  JAL zero, bb25
bb30:
  LA s2, cnt
  LW s9, 0(s2)
  ADDIW s2, s9, 1
  LA s9, cnt
  SW s2, 0(s9)
  SLLIW s9, s2, 2
  LA s2, nextvalue
  ADD s10, s2, s9
  LA s2, nextvalue
  ADD s9, s2, s7
  LW s2, 0(s9)
  SW s2, 0(s10)
  LA s2, cnt
  LW s10, 0(s2)
  SW s10, 0(s9)
  LA s2, cnt
  LW s9, 0(s2)
  SLLIW s2, s9, 2
  LA s9, value
  ADD s10, s9, s2
  SW s4, 0(s10)
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
  ADD s9, s7, s6
  SW s5, 0(s9)
  LA s6, cnt
  LW s7, 0(s6)
  SLLIW s6, s7, 2
  LA s7, value
  ADD s9, s7, s6
  SW s4, 0(s9)
  LA s6, cnt
  LW s7, 0(s6)
  SLLIW s6, s7, 2
  LA s7, next
  ADD s9, s7, s6
  SW zero, 0(s9)
  LA s6, cnt
  LW s7, 0(s6)
  SLLIW s6, s7, 2
  LA s7, nextvalue
  ADD s9, s7, s6
  SW zero, 0(s9)
  JAL zero, bb27
reduce:
  ADDI sp, sp, -96
  SD s9, 0(sp)
  SD s8, 8(sp)
  SD ra, 16(sp)
  SD s4, 24(sp)
  SD s3, 32(sp)
  SD s2, 40(sp)
  SD s6, 48(sp)
  SD s1, 56(sp)
  SD s7, 64(sp)
  SD s5, 72(sp)
  SD s0, 80(sp)
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
  LD s9, 0(sp)
  LD s8, 8(sp)
  LD ra, 16(sp)
  LD s4, 24(sp)
  LD s3, 32(sp)
  LD s2, 40(sp)
  LD s6, 48(sp)
  LD s1, 56(sp)
  LD s7, 64(sp)
  LD s5, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
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
  LA s1, next
  ADD s4, s1, s3
  LW s1, 0(s4)
  ADD s2, s1, zero
  JAL zero, bb33
bb37:
  ADD s4, s1, zero
  ADD s1, zero, zero
  # implict jump to bb38
bb38:
  ADD s5, s1, zero
  ADD s6, s4, zero
  XOR s7, s6, zero
  SLTU s8, zero, s7
  BNE s8, zero, bb40
  # implict jump to bb39
bb39:
  ADD a0, s5, zero
  LD s9, 0(sp)
  LD s8, 8(sp)
  LD ra, 16(sp)
  LD s4, 24(sp)
  LD s3, 32(sp)
  LD s2, 40(sp)
  LD s6, 48(sp)
  LD s1, 56(sp)
  LD s7, 64(sp)
  LD s5, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb40:
  SLLIW s7, s6, 2
  LA s6, value
  ADD s8, s6, s7
  LW s6, 0(s8)
  ADDW s8, s5, s6
  LA s6, nextvalue
  ADD s9, s6, s7
  LW s6, 0(s9)
  ADD s4, s6, zero
  ADD s1, s8, zero
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
