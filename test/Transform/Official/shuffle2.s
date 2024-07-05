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
  ADD a0, s0, zero
  CALL hash
  ADD s2, a0, zero
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s3, head
  ADD s5, s3, s4
  LW s3, 0(s5)
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb1
  JAL zero, bb2
bb1:
  LA s3, cnt
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, cnt
  SW s3, 0(s4)
  ADDI s4, zero, 4
  MULW s5, s2, s4
  LA s4, head
  ADD s6, s4, s5
  SW s3, 0(s6)
  LA s3, cnt
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  LA s3, key
  ADD s4, s3, s5
  SW s0, 0(s4)
  LA s3, cnt
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  LA s3, value
  ADD s4, s3, s5
  SW s1, 0(s4)
  LA s3, cnt
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  LA s3, next
  ADD s4, s3, s5
  SW zero, 0(s4)
  LA s3, cnt
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  LA s3, nextvalue
  ADD s4, s3, s5
  SW zero, 0(s4)
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
bb2:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s3, head
  ADD s5, s3, s4
  LW s3, 0(s5)
  ADD s4, s3, zero
  JAL zero, bb3
bb3:
  XOR s3, s4, zero
  SLTU s5, zero, s3
  XOR s3, s5, zero
  SLTU s5, zero, s3
  BNE s5, zero, bb4
  JAL zero, bb5
bb4:
  ADDI s3, zero, 4
  MULW s5, s4, s3
  LA s3, key
  ADD s6, s3, s5
  LW s3, 0(s6)
  XOR s5, s3, s0
  SLTIU s3, s5, 1
  BNE s3, zero, bb6
  JAL zero, bb7
bb5:
  LA s3, cnt
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, cnt
  SW s3, 0(s4)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LA s3, next
  ADD s4, s3, s5
  ADDI s3, zero, 4
  MULW s5, s2, s3
  LA s3, head
  ADD s6, s3, s5
  LW s3, 0(s6)
  SW s3, 0(s4)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s2, head
  ADD s3, s2, s4
  LA s2, cnt
  LW s4, 0(s2)
  SW s4, 0(s3)
  LA s2, cnt
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  LA s2, key
  ADD s3, s2, s4
  SW s0, 0(s3)
  LA s0, cnt
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  LA s0, value
  ADD s2, s0, s3
  SW s1, 0(s2)
  LA s0, cnt
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, nextvalue
  ADD s1, s0, s2
  SW zero, 0(s1)
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
bb6:
  LA s3, cnt
  LW s5, 0(s3)
  ADDIW s3, s5, 1
  LA s5, cnt
  SW s3, 0(s5)
  ADDI s5, zero, 4
  MULW s6, s3, s5
  LA s3, nextvalue
  ADD s5, s3, s6
  ADDI s3, zero, 4
  MULW s6, s4, s3
  LA s3, nextvalue
  ADD s7, s3, s6
  LW s3, 0(s7)
  SW s3, 0(s5)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  LA s3, nextvalue
  ADD s6, s3, s5
  LA s3, cnt
  LW s5, 0(s3)
  SW s5, 0(s6)
  LA s3, cnt
  LW s5, 0(s3)
  ADDI s3, zero, 4
  MULW s6, s5, s3
  LA s3, value
  ADD s5, s3, s6
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
  ADDI s3, zero, 4
  MULW s5, s4, s3
  LA s3, next
  ADD s6, s3, s5
  LW s3, 0(s6)
  ADD s4, s3, zero
  JAL zero, bb3
main:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
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
  JAL zero, bb9
bb9:
  SLT s3, s2, s0
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb10
  JAL zero, bb11
bb10:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s3, keys
  ADD s5, s3, s4
  LW s3, 0(s5)
  ADDI s4, zero, 4
  MULW s5, s2, s4
  LA s4, values
  ADD s6, s4, s5
  LW s4, 0(s6)
  ADD a0, s3, zero
  ADD a1, s4, zero
  CALL insert
  ADD s3, a0, zero
  ADDIW s3, s2, 1
  ADD s2, s3, zero
  JAL zero, bb9
bb11:
  ADD s0, zero, zero
  JAL zero, bb12
bb12:
  SLT s2, s0, s1
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb13
  JAL zero, bb14
bb13:
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, ans
  ADD s4, s2, s3
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, requests
  ADD s5, s2, s3
  LW s2, 0(s5)
  ADD a0, s2, zero
  CALL reduce
  ADD s2, a0, zero
  SW s2, 0(s4)
  ADDIW s2, s0, 1
  ADD s0, s2, zero
  JAL zero, bb12
bb14:
  ADDI a0, zero, 90
  CALL _sysy_stoptime
  ADD a0, s1, zero
  LA s0, ans
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
reduce:
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
  ADD a0, s0, zero
  CALL hash
  ADD s1, a0, zero
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, head
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADD s2, s1, zero
  JAL zero, bb16
bb16:
  XOR s1, s2, zero
  SLTU s3, zero, s1
  XOR s1, s3, zero
  SLTU s3, zero, s1
  BNE s3, zero, bb17
  JAL zero, bb18
bb17:
  ADDI s1, zero, 4
  MULW s3, s2, s1
  LA s1, key
  ADD s4, s1, s3
  LW s1, 0(s4)
  XOR s3, s1, s0
  SLTIU s1, s3, 1
  BNE s1, zero, bb19
  JAL zero, bb20
bb18:
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
bb19:
  ADD s1, s2, zero
  ADD s3, zero, zero
  JAL zero, bb21
bb20:
  ADDI s1, zero, 4
  MULW s3, s2, s1
  LA s1, next
  ADD s4, s1, s3
  LW s1, 0(s4)
  ADD s2, s1, zero
  JAL zero, bb16
bb21:
  XOR s4, s1, zero
  SLTU s5, zero, s4
  XOR s4, s5, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb22
  JAL zero, bb23
bb22:
  ADDI s4, zero, 4
  MULW s5, s1, s4
  LA s4, value
  ADD s6, s4, s5
  LW s4, 0(s6)
  ADDW s5, s3, s4
  ADDI s4, zero, 4
  MULW s6, s1, s4
  LA s4, nextvalue
  ADD s7, s4, s6
  LW s4, 0(s7)
  ADD s1, s4, zero
  ADD s3, s5, zero
  JAL zero, bb21
bb23:
  ADD a0, s3, zero
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
