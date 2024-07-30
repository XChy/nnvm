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
  ADDI s2, zero, 0
  LW t4, 8(sp)
  BLT s2, t4, bb18
  # implict jump to bb1
bb1:
  LW t4, 4(sp)
  BLT zero, t4, bb3
  # implict jump to bb2
bb2:
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
bb3:
  LA s2, hashmod
  LW s2, 0(s2)
  ADD s4, zero, zero
  # implict jump to bb4
bb4:
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
  # implict jump to bb5
bb5:
  ADD s9, s8, zero
  BNE s9, zero, bb9
  # implict jump to bb6
bb6:
  ADD s10, zero, zero
  # implict jump to bb7
bb7:
  SW s10, 0(s7)
  ADDIW s0, s5, 1
  LW t4, 4(sp)
  BLT s0, t4, bb8
  JAL zero, bb2
bb8:
  ADD s4, s0, zero
  JAL zero, bb4
bb9:
  SLLIW s11, s9, 2
  LA s0, key
  ADD s0, s0, s11
  LW s0, 0(s0)
  XOR s0, s0, s6
  SLTIU s0, s0, 1
  BNE s0, zero, bb11
  # implict jump to bb10
bb10:
  LA s0, next
  ADD s0, s0, s11
  LW s0, 0(s0)
  ADD s8, s0, zero
  JAL zero, bb5
bb11:
  BNE s9, zero, bb14
  # implict jump to bb12
bb12:
  ADD s0, zero, zero
  # implict jump to bb13
bb13:
  ADD s10, s0, zero
  JAL zero, bb7
bb14:
  ADD s6, zero, zero
  ADD s8, s9, zero
  # implict jump to bb15
bb15:
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
  BNE s9, zero, bb17
  # implict jump to bb16
bb16:
  ADD s0, s3, zero
  JAL zero, bb13
bb17:
  ADD s6, s3, zero
  ADD s8, s9, zero
  JAL zero, bb15
bb18:
  LA s2, hashmod
  LW t4, 0(s2)
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb19
bb19:
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
  BNE s9, zero, bb28
  # implict jump to bb20
bb20:
  # implict jump to bb21
bb21:
  ADD s9, s8, zero
  BNE s9, zero, bb25
  # implict jump to bb22
bb22:
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
  # implict jump to bb23
bb23:
  ADDIW s1, s4, 1
  LW t4, 8(sp)
  BLT s1, t4, bb24
  JAL zero, bb1
bb24:
  ADD t4, s1, zero
  SW t4, 12(sp)
  JAL zero, bb19
bb25:
  SLLIW s1, s9, 2
  LA s2, key
  ADD s2, s2, s1
  LW s2, 0(s2)
  XOR s2, s2, s6
  SLTIU s2, s2, 1
  BNE s2, zero, bb27
  # implict jump to bb26
bb26:
  LA s2, next
  ADD s2, s2, s1
  LW s2, 0(s2)
  ADD s8, s2, zero
  JAL zero, bb21
bb27:
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
  JAL zero, bb23
bb28:
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
  JAL zero, bb23
