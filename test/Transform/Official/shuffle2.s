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
  SD s3, 32(sp)
  SD ra, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s0, 64(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 24(sp)
  SW s1, 16(sp)
  LW s0, 24(sp)
  ADD a0, s0, zero
  CALL hash
  ADD s0, a0, zero
  SW s0, 8(sp)
  LW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, head
  ADD s1, s0, s2
  LW s0, 0(s1)
  XOR s1, s0, zero
  SLTIU s0, s1, 1
  BNE s0, zero, bb1
  JAL zero, bb2
bb1:
  LA s0, cnt
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, cnt
  SW s0, 0(s1)
  LW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, head
  ADD s1, s0, s2
  LA s0, cnt
  LW s2, 0(s0)
  SW s2, 0(s1)
  LA s0, cnt
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, key
  ADD s1, s0, s2
  LW s0, 24(sp)
  SW s0, 0(s1)
  LA s0, cnt
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, value
  ADD s1, s0, s2
  LW s0, 16(sp)
  SW s0, 0(s1)
  LA s0, cnt
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, next
  ADD s1, s0, s2
  SW zero, 0(s1)
  LA s0, cnt
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, nextvalue
  ADD s1, s0, s2
  SW zero, 0(s1)
  ADD a0, zero, zero
  LD s3, 32(sp)
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb2:
  LW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, head
  ADD s1, s0, s2
  LW s0, 0(s1)
  SW s0, 0(sp)
  JAL zero, bb3
bb3:
  LW s0, 0(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb4
  JAL zero, bb5
bb4:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, key
  ADD s1, s0, s2
  LW s0, 0(s1)
  LW s1, 24(sp)
  XOR s2, s0, s1
  SLTIU s0, s2, 1
  BNE s0, zero, bb6
  JAL zero, bb7
bb5:
  LA s0, cnt
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, cnt
  SW s0, 0(s1)
  LA s0, cnt
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, next
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, head
  ADD s2, s0, s3
  LW s0, 0(s2)
  SW s0, 0(s1)
  LW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, head
  ADD s1, s0, s2
  LA s0, cnt
  LW s2, 0(s0)
  SW s2, 0(s1)
  LA s0, cnt
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, key
  ADD s1, s0, s2
  LW s0, 24(sp)
  SW s0, 0(s1)
  LA s0, cnt
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, value
  ADD s1, s0, s2
  LW s0, 16(sp)
  SW s0, 0(s1)
  LA s0, cnt
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, nextvalue
  ADD s1, s0, s2
  SW zero, 0(s1)
  ADD a0, zero, zero
  LD s3, 32(sp)
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb6:
  LA s0, cnt
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, cnt
  SW s0, 0(s1)
  LA s0, cnt
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, nextvalue
  ADD s1, s0, s2
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, nextvalue
  ADD s2, s0, s3
  LW s0, 0(s2)
  SW s0, 0(s1)
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, nextvalue
  ADD s1, s0, s2
  LA s0, cnt
  LW s2, 0(s0)
  SW s2, 0(s1)
  LA s0, cnt
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, value
  ADD s1, s0, s2
  LW s0, 16(sp)
  SW s0, 0(s1)
  ADDI a0, zero, 1
  LD s3, 32(sp)
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb7:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, next
  ADD s1, s0, s2
  LW s0, 0(s1)
  SW s0, 0(sp)
  JAL zero, bb3
main:
  ADDI sp, sp, -80
  SD ra, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s0, 64(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, hashmod
  SW s0, 0(s1)
  LA s0, keys
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  SW s0, 24(sp)
  LA s0, values
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  SW s0, 16(sp)
  LA s0, requests
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  SW s0, 8(sp)
  ADDI a0, zero, 78
  CALL _sysy_starttime
  SW zero, 0(sp)
  JAL zero, bb9
bb9:
  LW s0, 0(sp)
  LW s1, 24(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb10
  JAL zero, bb11
bb10:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, keys
  ADD s1, s0, s2
  LW s0, 0(s1)
  LW s1, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, values
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL insert
  ADD s0, a0, zero
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb9
bb11:
  SW zero, 0(sp)
  JAL zero, bb12
bb12:
  LW s0, 0(sp)
  LW s1, 8(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb13
  JAL zero, bb14
bb13:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, ans
  ADD s1, s0, s2
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, requests
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADD a0, s0, zero
  CALL reduce
  ADD s0, a0, zero
  SW s0, 0(s1)
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb12
bb14:
  ADDI a0, zero, 90
  CALL _sysy_starttime
  LW s0, 8(sp)
  ADD a0, s0, zero
  LA s0, ans
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
reduce:
  ADDI sp, sp, -80
  SD s3, 40(sp)
  SD ra, 48(sp)
  SD s2, 56(sp)
  SD s1, 64(sp)
  SD s0, 72(sp)
  ADD s0, a0, zero
  SW s0, 32(sp)
  LW s0, 32(sp)
  ADD a0, s0, zero
  CALL hash
  ADD s0, a0, zero
  SW s0, 24(sp)
  LW s0, 24(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, head
  ADD s1, s0, s2
  LW s0, 0(s1)
  SW s0, 16(sp)
  JAL zero, bb16
bb16:
  LW s0, 16(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb17
  JAL zero, bb18
bb17:
  LW s0, 16(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, key
  ADD s1, s0, s2
  LW s0, 0(s1)
  LW s1, 32(sp)
  XOR s2, s0, s1
  SLTIU s0, s2, 1
  BNE s0, zero, bb19
  JAL zero, bb20
bb18:
  ADD a0, zero, zero
  LD s3, 40(sp)
  LD ra, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb19:
  SW zero, 8(sp)
  LW s0, 16(sp)
  SW s0, 0(sp)
  JAL zero, bb21
bb20:
  LW s0, 16(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, next
  ADD s1, s0, s2
  LW s0, 0(s1)
  SW s0, 16(sp)
  JAL zero, bb16
bb21:
  LW s0, 0(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb22
  JAL zero, bb23
bb22:
  LW s0, 8(sp)
  LW s1, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, value
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDW s2, s0, s1
  SW s2, 8(sp)
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, nextvalue
  ADD s1, s0, s2
  LW s0, 0(s1)
  SW s0, 0(sp)
  JAL zero, bb21
bb23:
  LW s0, 8(sp)
  ADD a0, s0, zero
  LD s3, 40(sp)
  LD ra, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
hash:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  SW s0, 0(sp)
  LW s0, 0(sp)
  LA s1, hashmod
  LW s2, 0(s1)
  REMW s1, s0, s2
  ADD a0, s1, zero
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
