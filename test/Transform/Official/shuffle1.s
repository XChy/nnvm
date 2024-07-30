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
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s4, 32(sp)
  SD s8, 40(sp)
  SD s9, 48(sp)
  SD ra, 56(sp)
  SD s0, 64(sp)
  SD s3, 72(sp)
  SD s5, 80(sp)
  SD s6, 88(sp)
  SD s7, 96(sp)
  SD s11, 104(sp)
  SD s10, 112(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, hashmod
  SW s0, 0(s1)
  LA s0, keys
  ADD a0, s0, zero
  CALL getarray
  ADD t4, a0, zero
  SW t4, 8(sp)
  LA s1, values
  ADD a0, s1, zero
  CALL getarray
  LA s1, requests
  ADD a0, s1, zero
  CALL getarray
  ADD t4, a0, zero
  SW t4, 4(sp)
  ADDI a0, zero, 78
  CALL _sysy_starttime
  LW t4, 8(sp)
  BLT zero, t4, bb26
  # implict jump to bb9
bb9:
  LW t4, 4(sp)
  BLT zero, t4, bb11
  # implict jump to bb10
bb10:
  ADDI a0, zero, 90
  CALL _sysy_stoptime
  LW t4, 4(sp)
  ADD a0, t4, zero
  LA s10, ans
  ADD a1, s10, zero
  CALL putarray
  ADD a0, zero, zero
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s4, 32(sp)
  LD s8, 40(sp)
  LD s9, 48(sp)
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s3, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  LD s7, 96(sp)
  LD s11, 104(sp)
  LD s10, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb11:
  LA s2, hashmod
  LW s2, 0(s2)
  ADD s4, zero, zero
  # implict jump to bb12
bb12:
  ADD s5, s4, zero
  SLLIW s6, s5, 2
  LA s7, ans
  ADD s7, s7, s6
  LA s8, requests
  ADD s6, s8, s6
  LW s6, 0(s6)
  REMW s8, s6, s2
  SLLIW s8, s8, 2
  LA s9, head
  ADD s8, s9, s8
  LW s8, 0(s8)
  # implict jump to bb13
bb13:
  ADD s9, s8, zero
  BNE s9, zero, bb17
  # implict jump to bb14
bb14:
  ADD s10, zero, zero
  # implict jump to bb15
bb15:
  SW s10, 0(s7)
  ADDIW s0, s5, 1
  LW t4, 4(sp)
  BLT s0, t4, bb16
  JAL zero, bb10
bb16:
  ADD s4, s0, zero
  JAL zero, bb12
bb17:
  SLLIW s11, s9, 2
  LA s0, key
  ADD s0, s0, s11
  LW s0, 0(s0)
  XOR s0, s0, s6
  SLTIU s0, s0, 1
  BNE s0, zero, bb19
  # implict jump to bb18
bb18:
  LA s0, next
  ADD s0, s0, s11
  LW s0, 0(s0)
  ADD s8, s0, zero
  JAL zero, bb13
bb19:
  BNE s9, zero, bb22
  # implict jump to bb20
bb20:
  ADD s0, zero, zero
  # implict jump to bb21
bb21:
  ADD s10, s0, zero
  JAL zero, bb15
bb22:
  ADD s6, zero, zero
  ADD s8, s9, zero
  # implict jump to bb23
bb23:
  ADD s9, s8, zero
  ADD s11, s6, zero
  SLLIW s9, s9, 2
  LA s3, value
  ADD s3, s3, s9
  LW s3, 0(s3)
  ADDW s3, s11, s3
  LA s11, nextvalue
  ADD s9, s11, s9
  LW s9, 0(s9)
  BNE s9, zero, bb25
  # implict jump to bb24
bb24:
  ADD s0, s3, zero
  JAL zero, bb21
bb25:
  ADD s6, s3, zero
  ADD s8, s9, zero
  JAL zero, bb23
bb26:
  LA s2, hashmod
  LW t4, 0(s2)
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb27
bb27:
  LW t4, 12(sp)
  ADD s4, t4, zero
  SLLIW s5, s4, 2
  LA s6, keys
  ADD s6, s6, s5
  LW s6, 0(s6)
  LA s7, values
  ADD s5, s7, s5
  LW s5, 0(s5)
  LW t4, 0(sp)
  REMW s7, s6, t4
  SLLIW s7, s7, 2
  LA s8, head
  ADD s7, s8, s7
  LW s8, 0(s7)
  SLTIU s9, s8, 1
  BNE s9, zero, bb36
  # implict jump to bb28
bb28:
  # implict jump to bb29
bb29:
  ADD s9, s8, zero
  BNE s9, zero, bb33
  # implict jump to bb30
bb30:
  LA s10, cnt
  LW s10, 0(s10)
  ADDIW s10, s10, 1
  LA s11, cnt
  SW s10, 0(s11)
  SLLIW s11, s10, 2
  LA s2, next
  ADD s2, s2, s11
  LW s1, 0(s7)
  SW s1, 0(s2)
  SW s10, 0(s7)
  LA s1, key
  ADD s1, s1, s11
  SW s6, 0(s1)
  LA s1, value
  ADD s1, s1, s11
  SW s5, 0(s1)
  LA s1, nextvalue
  ADD s1, s1, s11
  SW zero, 0(s1)
  # implict jump to bb31
bb31:
  ADDIW s1, s4, 1
  LW t4, 8(sp)
  BLT s1, t4, bb32
  JAL zero, bb9
bb32:
  ADD t4, s1, zero
  SW t4, 12(sp)
  JAL zero, bb27
bb33:
  SLLIW s1, s9, 2
  LA s2, key
  ADD s2, s2, s1
  LW s2, 0(s2)
  XOR s2, s2, s6
  SLTIU s2, s2, 1
  BNE s2, zero, bb35
  # implict jump to bb34
bb34:
  LA s2, next
  ADD s2, s2, s1
  LW s2, 0(s2)
  ADD s8, s2, zero
  JAL zero, bb29
bb35:
  LA s2, cnt
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s8, cnt
  SW s2, 0(s8)
  SLLIW s8, s2, 2
  LA s9, nextvalue
  ADD s9, s9, s8
  LA s10, nextvalue
  ADD s1, s10, s1
  LW s10, 0(s1)
  SW s10, 0(s9)
  SW s2, 0(s1)
  LA s1, value
  ADD s1, s1, s8
  SW s5, 0(s1)
  JAL zero, bb31
bb36:
  LA s1, cnt
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, cnt
  SW s1, 0(s2)
  SW s1, 0(s7)
  SLLIW s1, s1, 2
  LA s2, key
  ADD s2, s2, s1
  SW s6, 0(s2)
  LA s2, value
  ADD s2, s2, s1
  SW s5, 0(s2)
  LA s2, next
  ADD s2, s2, s1
  SW zero, 0(s2)
  LA s2, nextvalue
  ADD s1, s2, s1
  SW zero, 0(s1)
  JAL zero, bb31
reduce:
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
  LW s1, 0(s1)
  # implict jump to bb38
bb38:
  ADD s2, s1, zero
  BNE s2, zero, bb40
  # implict jump to bb39
bb39:
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
bb40:
  SLLIW s3, s2, 2
  LA s4, key
  ADD s4, s4, s3
  LW s4, 0(s4)
  XOR s4, s4, s0
  SLTIU s4, s4, 1
  BNE s4, zero, bb42
  # implict jump to bb41
bb41:
  LA s4, next
  ADD s3, s4, s3
  LW s3, 0(s3)
  ADD s1, s3, zero
  JAL zero, bb38
bb42:
  BNE s2, zero, bb45
  # implict jump to bb43
bb43:
  ADD s0, zero, zero
  # implict jump to bb44
bb44:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb45:
  ADD s1, zero, zero
  # implict jump to bb46
bb46:
  ADD s3, s2, zero
  ADD s4, s1, zero
  SLLIW s3, s3, 2
  LA s5, value
  ADD s5, s5, s3
  LW s5, 0(s5)
  ADDW s4, s4, s5
  LA s5, nextvalue
  ADD s3, s5, s3
  LW s3, 0(s3)
  BNE s3, zero, bb48
  # implict jump to bb47
bb47:
  ADD s0, s4, zero
  JAL zero, bb44
bb48:
  ADD s1, s4, zero
  ADD s2, s3, zero
  JAL zero, bb46
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
