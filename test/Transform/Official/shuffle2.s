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
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  ADD s0, a0, zero
  LA s1, hashmod
  LW s1, 0(s1)
  REMW s1, s0, s1
  SLLIW s1, s1, 2
  LA s2, head
  ADD s1, s2, s1
  LW s2, 0(s1)
  SLTIU s3, s2, 1
  BNE s3, zero, bb7
  # implict jump to bb1
bb1:
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
  SLLIW s5, s4, 2
  LA s6, next
  ADD s6, s6, s5
  LW s7, 0(s1)
  SW s7, 0(s6)
  SW s4, 0(s1)
  LA s4, key
  ADD s4, s4, s5
  SW s0, 0(s4)
  LA s4, value
  ADD s4, s4, s5
  SW a1, 0(s4)
  LA s4, nextvalue
  ADD s4, s4, s5
  SW zero, 0(s4)
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 80
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
  SLLIW s4, s2, 2
  LA s5, nextvalue
  ADD s5, s5, s4
  LA s6, nextvalue
  ADD s3, s6, s3
  LW s6, 0(s3)
  SW s6, 0(s5)
  SW s2, 0(s3)
  LA s2, value
  ADD s2, s2, s4
  SW a1, 0(s2)
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb7:
  LA s2, cnt
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s3, cnt
  SW s2, 0(s3)
  SW s2, 0(s1)
  SLLIW s1, s2, 2
  LA s2, key
  ADD s2, s2, s1
  SW s0, 0(s2)
  LA s0, value
  ADD s0, s0, s1
  SW a1, 0(s0)
  LA s0, next
  ADD s0, s0, s1
  SW zero, 0(s0)
  LA s0, nextvalue
  ADD s0, s0, s1
  SW zero, 0(s0)
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -128
  SD ra, 24(sp)
  SD s0, 32(sp)
  SD s2, 40(sp)
  SD s1, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s10, 88(sp)
  SD s3, 96(sp)
  SD s8, 104(sp)
  SD s9, 112(sp)
  SD s11, 120(sp)
  CALL getint
  ADD s4, a0, zero
  LA s5, hashmod
  SW s4, 0(s5)
  LA s4, keys
  ADD a0, s4, zero
  CALL getarray
  ADD t4, a0, zero
  SW t4, 16(sp)
  LA s5, values
  ADD a0, s5, zero
  CALL getarray
  LA s5, requests
  ADD a0, s5, zero
  CALL getarray
  ADD t4, a0, zero
  SW t4, 12(sp)
  ADDI a0, zero, 78
  CALL _sysy_starttime
  LW t4, 16(sp)
  BLT zero, t4, bb28
  # implict jump to bb9
bb9:
  LW t4, 12(sp)
  BLT zero, t4, bb11
  # implict jump to bb10
bb10:
  ADDI a0, zero, 90
  CALL _sysy_stoptime
  LW t4, 12(sp)
  ADD a0, t4, zero
  LA s4, ans
  ADD a1, s4, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s2, 40(sp)
  LD s1, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s10, 88(sp)
  LD s3, 96(sp)
  LD s8, 104(sp)
  LD s9, 112(sp)
  LD s11, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb11:
  ADD s0, zero, zero
  # implict jump to bb12
bb12:
  ADD s2, s0, zero
  SLLIW s4, s2, 2
  LA s5, ans
  ADD s5, s5, s4
  LA s6, requests
  ADD s4, s6, s4
  LW s4, 0(s4)
  LA s6, hashmod
  LW s6, 0(s6)
  REMW s6, s4, s6
  SLLIW s6, s6, 2
  LA s7, head
  ADD s6, s7, s6
  LW s6, 0(s6)
  # implict jump to bb13
bb13:
  ADD s7, s6, zero
  BNE s7, zero, bb18
  # implict jump to bb14
bb14:
  ADD s8, zero, zero
  # implict jump to bb15
bb15:
  SW s8, 0(s5)
  ADDIW s3, s2, 1
  # implict jump to bb16
bb16:
  LW t4, 12(sp)
  BLT s3, t4, bb17
  JAL zero, bb10
bb17:
  ADD s0, s3, zero
  JAL zero, bb12
bb18:
  SLLIW s9, s7, 2
  LA s10, key
  ADD s10, s10, s9
  LW s10, 0(s10)
  XOR s10, s10, s4
  SLTIU s10, s10, 1
  BNE s10, zero, bb20
  # implict jump to bb19
bb19:
  LA s10, next
  ADD s9, s10, s9
  LW s9, 0(s9)
  ADD s6, s9, zero
  JAL zero, bb13
bb20:
  BNE s7, zero, bb23
  # implict jump to bb21
bb21:
  ADD s4, zero, zero
  # implict jump to bb22
bb22:
  ADD s8, s4, zero
  JAL zero, bb15
bb23:
  ADD s6, zero, zero
  # implict jump to bb24
bb24:
  ADD s9, s7, zero
  ADD s10, s6, zero
  SLLIW s9, s9, 2
  LA s11, value
  ADD s11, s11, s9
  LW s11, 0(s11)
  ADDW s1, s10, s11
  LA s10, nextvalue
  ADD s9, s10, s9
  LW t4, 0(s9)
  SW t4, 0(sp)
  # implict jump to bb25
bb25:
  LW t4, 0(sp)
  BNE t4, zero, bb27
  # implict jump to bb26
bb26:
  ADD s4, s1, zero
  JAL zero, bb22
bb27:
  ADD s6, s1, zero
  LW t4, 0(sp)
  ADD s7, t4, zero
  JAL zero, bb24
bb28:
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb29
bb29:
  LW t4, 8(sp)
  ADD s7, t4, zero
  SLLIW s8, s7, 2
  LA s9, keys
  ADD s9, s9, s8
  LW s9, 0(s9)
  LA s10, values
  ADD s8, s10, s8
  LW s8, 0(s8)
  LA s10, hashmod
  LW s10, 0(s10)
  REMW s10, s9, s10
  SLLIW s10, s10, 2
  LA s11, head
  ADD s10, s11, s10
  LW s11, 0(s10)
  SLTIU s5, s11, 1
  BNE s5, zero, bb39
  # implict jump to bb30
bb30:
  ADD s5, s11, zero
  # implict jump to bb31
bb31:
  ADD s11, s5, zero
  BNE s11, zero, bb36
  # implict jump to bb32
bb32:
  LA s4, cnt
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s6, cnt
  SW s4, 0(s6)
  SLLIW s6, s4, 2
  LA s2, next
  ADD s2, s2, s6
  LW s0, 0(s10)
  SW s0, 0(s2)
  SW s4, 0(s10)
  LA s0, key
  ADD s0, s0, s6
  SW s9, 0(s0)
  LA s0, value
  ADD s0, s0, s6
  SW s8, 0(s0)
  LA s0, nextvalue
  ADD s0, s0, s6
  SW zero, 0(s0)
  # implict jump to bb33
bb33:
  ADDIW t4, s7, 1
  SW t4, 4(sp)
  # implict jump to bb34
bb34:
  LW t4, 4(sp)
  LW t3, 16(sp)
  BLT t4, t3, bb35
  JAL zero, bb9
bb35:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb29
bb36:
  SLLIW s0, s11, 2
  LA s2, key
  ADD s2, s2, s0
  LW s2, 0(s2)
  XOR s2, s2, s9
  SLTIU s2, s2, 1
  BNE s2, zero, bb38
  # implict jump to bb37
bb37:
  LA s2, next
  ADD s2, s2, s0
  LW s2, 0(s2)
  ADD s5, s2, zero
  JAL zero, bb31
bb38:
  LA s2, cnt
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s4, cnt
  SW s2, 0(s4)
  SLLIW s4, s2, 2
  LA s5, nextvalue
  ADD s5, s5, s4
  LA s6, nextvalue
  ADD s0, s6, s0
  LW s6, 0(s0)
  SW s6, 0(s5)
  SW s2, 0(s0)
  LA s0, value
  ADD s0, s0, s4
  SW s8, 0(s0)
  JAL zero, bb33
bb39:
  LA s0, cnt
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s2, cnt
  SW s0, 0(s2)
  SW s0, 0(s10)
  SLLIW s0, s0, 2
  LA s2, key
  ADD s2, s2, s0
  SW s9, 0(s2)
  LA s2, value
  ADD s2, s2, s0
  SW s8, 0(s2)
  LA s2, next
  ADD s2, s2, s0
  SW zero, 0(s2)
  LA s2, nextvalue
  ADD s0, s2, s0
  SW zero, 0(s0)
  JAL zero, bb33
reduce:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  ADD s2, a0, zero
  LA s3, hashmod
  LW s3, 0(s3)
  REMW s3, s2, s3
  SLLIW s3, s3, 2
  LA s4, head
  ADD s3, s4, s3
  LW s3, 0(s3)
  # implict jump to bb41
bb41:
  ADD s4, s3, zero
  BNE s4, zero, bb43
  # implict jump to bb42
bb42:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb43:
  SLLIW s5, s4, 2
  LA s6, key
  ADD s6, s6, s5
  LW s6, 0(s6)
  XOR s6, s6, s2
  SLTIU s6, s6, 1
  BNE s6, zero, bb45
  # implict jump to bb44
bb44:
  LA s6, next
  ADD s5, s6, s5
  LW s5, 0(s5)
  ADD s3, s5, zero
  JAL zero, bb41
bb45:
  BNE s4, zero, bb48
  # implict jump to bb46
bb46:
  ADD s2, zero, zero
  # implict jump to bb47
bb47:
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb48:
  ADD s3, zero, zero
  # implict jump to bb49
bb49:
  ADD s5, s4, zero
  ADD s6, s3, zero
  SLLIW s5, s5, 2
  LA s7, value
  ADD s7, s7, s5
  LW s7, 0(s7)
  ADDW s1, s6, s7
  LA s6, nextvalue
  ADD s5, s6, s5
  LW s0, 0(s5)
  # implict jump to bb50
bb50:
  BNE s0, zero, bb52
  # implict jump to bb51
bb51:
  ADD s2, s1, zero
  JAL zero, bb47
bb52:
  ADD s3, s1, zero
  ADD s4, s0, zero
  JAL zero, bb49
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
