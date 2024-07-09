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
  ADD s3, s2, zero
  JAL zero, bb1
bb1:
  ADD s2, s3, zero
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s2, head
  ADD s3, s2, s4
  LW s2, 0(s3)
  XOR s4, s2, zero
  SLTIU s2, s4, 1
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  LA s2, cnt
  LW s4, 0(s2)
  ADDIW s2, s4, 1
  LA s4, cnt
  SW s2, 0(s4)
  SW s2, 0(s3)
  LA s2, cnt
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s5, s4, s2
  LA s2, key
  ADD s4, s2, s5
  SW s0, 0(s4)
  LA s2, cnt
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s5, s4, s2
  LA s2, value
  ADD s4, s2, s5
  SW s1, 0(s4)
  LA s2, cnt
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s5, s4, s2
  LA s2, next
  ADD s4, s2, s5
  SW zero, 0(s4)
  LA s2, cnt
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s5, s4, s2
  LA s2, nextvalue
  ADD s4, s2, s5
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
bb3:
  LW s2, 0(s3)
  ADD s4, s2, zero
  JAL zero, bb4
bb4:
  ADD s2, s4, zero
  XOR s5, s2, zero
  SLTU s6, zero, s5
  BNE s6, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s5, zero, 4
  MULW s6, s2, s5
  LA s2, key
  ADD s5, s2, s6
  LW s2, 0(s5)
  XOR s5, s2, s0
  SLTIU s2, s5, 1
  BNE s2, zero, bb7
  JAL zero, bb8
bb6:
  LA s2, cnt
  LW s4, 0(s2)
  ADDIW s2, s4, 1
  LA s4, cnt
  SW s2, 0(s4)
  ADDI s4, zero, 4
  MULW s5, s2, s4
  LA s2, next
  ADD s4, s2, s5
  LW s2, 0(s3)
  SW s2, 0(s4)
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
bb7:
  LA s2, cnt
  LW s5, 0(s2)
  ADDIW s2, s5, 1
  LA s5, cnt
  SW s2, 0(s5)
  ADDI s5, zero, 4
  MULW s7, s2, s5
  LA s2, nextvalue
  ADD s5, s2, s7
  LA s2, nextvalue
  ADD s7, s2, s6
  LW s2, 0(s7)
  SW s2, 0(s5)
  LA s2, cnt
  LW s5, 0(s2)
  SW s5, 0(s7)
  LA s2, cnt
  LW s5, 0(s2)
  ADDI s2, zero, 4
  MULW s7, s5, s2
  LA s2, value
  ADD s5, s2, s7
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
bb8:
  LA s2, next
  ADD s5, s2, s6
  LW s2, 0(s5)
  ADD s4, s2, zero
  JAL zero, bb4
main:
  ADDI sp, sp, -128
  SD s11, 16(sp)
  SD s10, 24(sp)
  SD s9, 32(sp)
  SD s8, 40(sp)
  SD s0, 48(sp)
  SD s5, 56(sp)
  SD s7, 64(sp)
  SD s1, 72(sp)
  SD s6, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  SD ra, 112(sp)
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
  JAL zero, bb10
bb10:
  ADD s3, s2, zero
  SLT s4, s3, s0
  BNE s4, zero, bb11
  JAL zero, bb13
bb11:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LA s4, keys
  ADD s6, s4, s5
  LW s4, 0(s6)
  LA s6, values
  ADD s7, s6, s5
  LW s5, 0(s7)
  LA s6, hashmod
  LW s7, 0(s6)
  REMW s6, s4, s7
  ADD s7, s6, zero
  JAL zero, bb18
bb12:
  ADDIW s6, s3, 1
  ADD s2, s6, zero
  JAL zero, bb10
bb13:
  ADD s0, zero, zero
  JAL zero, bb14
bb14:
  ADD s2, s0, zero
  LW t4, 0(sp)
  SLT s3, s2, t4
  BNE s3, zero, bb15
  JAL zero, bb17
bb15:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s3, ans
  ADD t4, s3, s4
  SD t4, 8(sp)
  LA s3, requests
  ADD s6, s3, s4
  LW s3, 0(s6)
  LA s4, hashmod
  LW s6, 0(s4)
  REMW s4, s3, s6
  ADD s6, s4, zero
  JAL zero, bb26
bb16:
  ADD s4, s1, zero
  LD t4, 8(sp)
  SW s4, 0(t4)
  ADDIW s4, s2, 1
  ADD s0, s4, zero
  JAL zero, bb14
bb17:
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
  LD s8, 40(sp)
  LD s0, 48(sp)
  LD s5, 56(sp)
  LD s7, 64(sp)
  LD s1, 72(sp)
  LD s6, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD ra, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb18:
  ADD s6, s7, zero
  ADDI s7, zero, 4
  MULW s8, s6, s7
  LA s6, head
  ADD s7, s6, s8
  LW s6, 0(s7)
  XOR s8, s6, zero
  SLTIU s6, s8, 1
  BNE s6, zero, bb19
  JAL zero, bb20
bb19:
  LA s6, cnt
  LW s8, 0(s6)
  ADDIW s6, s8, 1
  LA s8, cnt
  SW s6, 0(s8)
  SW s6, 0(s7)
  LA s6, cnt
  LW s8, 0(s6)
  ADDI s6, zero, 4
  MULW s9, s8, s6
  LA s6, key
  ADD s8, s6, s9
  SW s4, 0(s8)
  LA s6, cnt
  LW s8, 0(s6)
  ADDI s6, zero, 4
  MULW s9, s8, s6
  LA s6, value
  ADD s8, s6, s9
  SW s5, 0(s8)
  LA s6, cnt
  LW s8, 0(s6)
  ADDI s6, zero, 4
  MULW s9, s8, s6
  LA s6, next
  ADD s8, s6, s9
  SW zero, 0(s8)
  LA s6, cnt
  LW s8, 0(s6)
  ADDI s6, zero, 4
  MULW s9, s8, s6
  LA s6, nextvalue
  ADD s8, s6, s9
  SW zero, 0(s8)
  JAL zero, bb12
bb20:
  LW s2, 0(s7)
  ADD s6, s2, zero
  JAL zero, bb21
bb21:
  ADD s2, s6, zero
  XOR s8, s2, zero
  SLTU s9, zero, s8
  BNE s9, zero, bb22
  JAL zero, bb23
bb22:
  ADDI s8, zero, 4
  MULW s9, s2, s8
  LA s2, key
  ADD s8, s2, s9
  LW s2, 0(s8)
  XOR s8, s2, s4
  SLTIU s2, s8, 1
  BNE s2, zero, bb24
  JAL zero, bb25
bb23:
  LA s2, cnt
  LW s6, 0(s2)
  ADDIW s2, s6, 1
  LA s6, cnt
  SW s2, 0(s6)
  ADDI s6, zero, 4
  MULW s8, s2, s6
  LA s2, next
  ADD s6, s2, s8
  LW s2, 0(s7)
  SW s2, 0(s6)
  LA s2, cnt
  LW s6, 0(s2)
  SW s6, 0(s7)
  LA s2, cnt
  LW s6, 0(s2)
  ADDI s2, zero, 4
  MULW s7, s6, s2
  LA s2, key
  ADD s6, s2, s7
  SW s4, 0(s6)
  LA s2, cnt
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s6, s4, s2
  LA s2, value
  ADD s4, s2, s6
  SW s5, 0(s4)
  LA s2, cnt
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s5, s4, s2
  LA s2, nextvalue
  ADD s4, s2, s5
  SW zero, 0(s4)
  JAL zero, bb12
bb24:
  LA s2, cnt
  LW s8, 0(s2)
  ADDIW s2, s8, 1
  LA s8, cnt
  SW s2, 0(s8)
  ADDI s8, zero, 4
  MULW s10, s2, s8
  LA s2, nextvalue
  ADD s8, s2, s10
  LA s2, nextvalue
  ADD s10, s2, s9
  LW s2, 0(s10)
  SW s2, 0(s8)
  LA s2, cnt
  LW s8, 0(s2)
  SW s8, 0(s10)
  LA s2, cnt
  LW s8, 0(s2)
  ADDI s2, zero, 4
  MULW s10, s8, s2
  LA s2, value
  ADD s8, s2, s10
  SW s5, 0(s8)
  JAL zero, bb12
bb25:
  LA s2, next
  ADD s8, s2, s9
  LW s2, 0(s8)
  ADD s6, s2, zero
  JAL zero, bb21
bb26:
  ADD s4, s6, zero
  ADDI s6, zero, 4
  MULW s7, s4, s6
  LA s4, head
  ADD s6, s4, s7
  LW s4, 0(s6)
  ADD s6, s4, zero
  JAL zero, bb27
bb27:
  ADD s4, s6, zero
  XOR s7, s4, zero
  SLTU s8, zero, s7
  BNE s8, zero, bb28
  JAL zero, bb29
bb28:
  ADDI s7, zero, 4
  MULW s8, s4, s7
  LA s7, key
  ADD s9, s7, s8
  LW s7, 0(s9)
  XOR s9, s7, s3
  SLTIU s7, s9, 1
  BNE s7, zero, bb30
  JAL zero, bb31
bb29:
  ADD s1, zero, zero
  JAL zero, bb16
bb30:
  ADD s7, s4, zero
  ADD s4, zero, zero
  JAL zero, bb32
bb31:
  LA s0, next
  ADD s4, s0, s8
  LW s0, 0(s4)
  ADD s6, s0, zero
  JAL zero, bb27
bb32:
  ADD s9, s4, zero
  ADD s10, s7, zero
  XOR s11, s10, zero
  SLTU s1, zero, s11
  BNE s1, zero, bb33
  JAL zero, bb34
bb33:
  ADDI s1, zero, 4
  MULW s11, s10, s1
  LA s1, value
  ADD s10, s1, s11
  LW s1, 0(s10)
  ADDW s10, s9, s1
  LA s1, nextvalue
  ADD s5, s1, s11
  LW s1, 0(s5)
  ADD s7, s1, zero
  ADD s4, s10, zero
  JAL zero, bb32
bb34:
  ADD s1, s9, zero
  JAL zero, bb16
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
  ADD s2, s1, zero
  JAL zero, bb36
bb36:
  ADD s1, s2, zero
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, head
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADD s2, s1, zero
  JAL zero, bb37
bb37:
  ADD s1, s2, zero
  XOR s3, s1, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb38
  JAL zero, bb39
bb38:
  ADDI s3, zero, 4
  MULW s4, s1, s3
  LA s3, key
  ADD s5, s3, s4
  LW s3, 0(s5)
  XOR s5, s3, s0
  SLTIU s3, s5, 1
  BNE s3, zero, bb40
  JAL zero, bb41
bb39:
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
bb40:
  ADD s3, s1, zero
  ADD s1, zero, zero
  JAL zero, bb42
bb41:
  LA s1, next
  ADD s3, s1, s4
  LW s1, 0(s3)
  ADD s2, s1, zero
  JAL zero, bb37
bb42:
  ADD s5, s1, zero
  ADD s6, s3, zero
  XOR s7, s6, zero
  SLTU s8, zero, s7
  BNE s8, zero, bb43
  JAL zero, bb44
bb43:
  ADDI s7, zero, 4
  MULW s8, s6, s7
  LA s6, value
  ADD s7, s6, s8
  LW s6, 0(s7)
  ADDW s7, s5, s6
  LA s6, nextvalue
  ADD s9, s6, s8
  LW s6, 0(s9)
  ADD s3, s6, zero
  ADD s1, s7, zero
  JAL zero, bb42
bb44:
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
