.global main
.global getNumPos
.global radixSort
.global getMaxNum
.section .bss

a:
.space 120000040

.section .data
ans:
.word 0x00000000

base:
.word 0x00000010
.section .text
main:
  ADDI sp, sp, -64
  SD ra, 16(sp)
  SD s4, 24(sp)
  SD s3, 32(sp)
  SD s2, 40(sp)
  SD s1, 48(sp)
  SD s0, 56(sp)
  LA s0, a
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  SW s0, 8(sp)
  ADDI a0, zero, 90
  CALL _sysy_starttime
  LW s0, 8(sp)
  ADDI a0, zero, 8
  LA s1, a
  ADD a1, s1, zero
  ADD a2, zero, zero
  ADD a3, s0, zero
  CALL radixSort
  SW zero, 0(sp)
  JAL zero, bb1
bb1:
  LW s0, 0(sp)
  LW s1, 8(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  LA s0, ans
  LW s1, 0(s0)
  LW s0, 0(sp)
  LW s2, 0(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s2, a
  ADD s3, s2, s4
  LW s2, 0(s3)
  LW s3, 0(sp)
  ADDIW s4, s3, 2
  REMW s3, s2, s4
  MULW s2, s0, s3
  ADDW s0, s1, s2
  LA s1, ans
  SW s0, 0(s1)
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb1
bb3:
  LA s0, ans
  LW s1, 0(s0)
  SLT s0, s1, zero
  BNE s0, zero, bb4
  JAL zero, bb5
bb4:
  LA s0, ans
  LW s1, 0(s0)
  SUBW s0, zero, s1
  LA s1, ans
  SW s0, 0(s1)
  JAL zero, bb5
bb5:
  ADDI a0, zero, 102
  CALL _sysy_starttime
  LA s0, ans
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s4, 24(sp)
  LD s3, 32(sp)
  LD s2, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
getNumPos:
  ADDI sp, sp, -64
  SD ra, 32(sp)
  SD s2, 40(sp)
  SD s1, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 24(sp)
  SW s1, 16(sp)
  ADDI s0, zero, 1
  SW s0, 8(sp)
  SW zero, 0(sp)
  JAL zero, bb7
bb7:
  LW s0, 0(sp)
  LW s1, 16(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb8
  JAL zero, bb9
bb8:
  LW s0, 24(sp)
  LA s1, base
  LW s2, 0(s1)
  DIVW s1, s0, s2
  SW s1, 24(sp)
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb7
bb9:
  LW s0, 24(sp)
  LA s1, base
  LW s2, 0(s1)
  REMW s1, s0, s2
  ADD a0, s1, zero
  LD ra, 32(sp)
  LD s2, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
radixSort:
  ADDI sp, sp, -336
  SD s4, 280(sp)
  SD ra, 288(sp)
  SD s3, 296(sp)
  SD s2, 304(sp)
  SD s1, 312(sp)
  SD s5, 320(sp)
  SD s0, 328(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  SW s0, 272(sp)
  SW s2, 264(sp)
  SW s3, 256(sp)
  ADDI s0, zero, 16
  SW s0, 184(sp)
  JAL zero, bb11
bb11:
  LW s0, 184(sp)
  XOR s2, s0, zero
  SLTU s0, zero, s2
  BNE s0, zero, bb12
  JAL zero, bb13
bb12:
  LW s0, 184(sp)
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  SW s3, 184(sp)
  ADDI s0, zero, 4
  MULW s2, s3, s0
  ADD s0, zero, s2
  ADDI t5, sp, 192
  ADD s2, t5, s0
  SW zero, 0(s2)
  JAL zero, bb11
bb13:
  ADDI s0, zero, 16
  SW s0, 112(sp)
  JAL zero, bb14
bb14:
  LW s0, 112(sp)
  XOR s2, s0, zero
  SLTU s0, zero, s2
  BNE s0, zero, bb15
  JAL zero, bb16
bb15:
  LW s0, 112(sp)
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  SW s3, 112(sp)
  ADDI s0, zero, 4
  MULW s2, s3, s0
  ADD s0, zero, s2
  ADDI t6, sp, 120
  ADD s2, t6, s0
  SW zero, 0(s2)
  JAL zero, bb14
bb16:
  ADDI s0, zero, 16
  SW s0, 40(sp)
  JAL zero, bb17
bb17:
  LW s0, 40(sp)
  XOR s2, s0, zero
  SLTU s0, zero, s2
  BNE s0, zero, bb18
  JAL zero, bb19
bb18:
  LW s0, 40(sp)
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  SW s3, 40(sp)
  ADDI s0, zero, 4
  MULW s2, s3, s0
  ADD s0, zero, s2
  ADDI t5, sp, 48
  ADD s2, t5, s0
  SW zero, 0(s2)
  JAL zero, bb17
bb19:
  LW s0, 272(sp)
  ADDI s2, zero, 1
  SUB s3, zero, s2
  XOR s2, s0, s3
  SLTIU s0, s2, 1
  BNE s0, zero, bb20
  JAL zero, bb21
bb20:
  ADDI s0, zero, 1
  SB s0, 32(sp)
  JAL zero, bb22
bb21:
  LW s0, 264(sp)
  ADDIW s2, s0, 1
  LW s0, 256(sp)
  SLT s3, s2, s0
  XORI s0, s3, 1
  XOR s2, s0, zero
  SLTU s0, zero, s2
  SB s0, 32(sp)
  JAL zero, bb22
bb22:
  LB s0, 32(sp)
  BNE s0, zero, bb23
  JAL zero, bb24
bb23:
  LD s4, 280(sp)
  LD ra, 288(sp)
  LD s3, 296(sp)
  LD s2, 304(sp)
  LD s1, 312(sp)
  LD s5, 320(sp)
  LD s0, 328(sp)
  ADDI sp, sp, 336
  JALR zero, 0(ra)
bb24:
  LW s0, 264(sp)
  SW s0, 24(sp)
  JAL zero, bb25
bb25:
  LW s0, 24(sp)
  LW s2, 256(sp)
  SLT s3, s0, s2
  XOR s0, s3, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb26
  JAL zero, bb27
bb26:
  LW s0, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s2, 0(s0)
  LW s0, 272(sp)
  ADD a0, s2, zero
  ADD a1, s0, zero
  CALL getNumPos
  ADD s0, a0, zero
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADDI t6, sp, 48
  ADD s0, t6, s3
  LW s2, 24(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s1, s4
  LW s3, 0(s2)
  LW s2, 272(sp)
  ADD a0, s3, zero
  ADD a1, s2, zero
  CALL getNumPos
  ADD s2, a0, zero
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADDI t5, sp, 48
  ADD s2, t5, s4
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  SW s2, 0(s0)
  LW s0, 24(sp)
  ADDIW s2, s0, 1
  SW s2, 24(sp)
  JAL zero, bb25
bb27:
  ADDI s0, zero, 4
  MUL s2, zero, s0
  ADDI t6, sp, 192
  ADD s0, t6, s2
  LW s2, 264(sp)
  SW s2, 0(s0)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  ADDI t5, sp, 120
  ADD s0, t5, s2
  LW s2, 264(sp)
  ADDI s3, zero, 4
  MUL s4, zero, s3
  ADDI t6, sp, 48
  ADD s3, t6, s4
  LW s4, 0(s3)
  ADDW s3, s2, s4
  SW s3, 0(s0)
  ADDI s0, zero, 1
  SW s0, 24(sp)
  JAL zero, bb28
bb28:
  LW s0, 24(sp)
  LA s2, base
  LW s3, 0(s2)
  SLT s2, s0, s3
  XOR s0, s2, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb29
  JAL zero, bb30
bb29:
  LW s0, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADDI t5, sp, 192
  ADD s0, t5, s3
  LW s2, 24(sp)
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  ADDI s2, zero, 4
  MULW s3, s4, s2
  ADDI t6, sp, 120
  ADD s2, t6, s3
  LW s3, 0(s2)
  SW s3, 0(s0)
  LW s0, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADDI t5, sp, 120
  ADD s0, t5, s3
  LW s2, 24(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADDI t6, sp, 192
  ADD s2, t6, s4
  LW s3, 0(s2)
  LW s2, 24(sp)
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADDI t5, sp, 48
  ADD s2, t5, s5
  LW s4, 0(s2)
  ADDW s2, s3, s4
  SW s2, 0(s0)
  LW s0, 24(sp)
  ADDIW s2, s0, 1
  SW s2, 24(sp)
  JAL zero, bb28
bb30:
  SW zero, 24(sp)
  JAL zero, bb31
bb31:
  LW s0, 24(sp)
  LA s2, base
  LW s3, 0(s2)
  SLT s2, s0, s3
  XOR s0, s2, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb32
  JAL zero, bb33
bb32:
  JAL zero, bb34
bb33:
  LW s0, 264(sp)
  SW s0, 0(sp)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  ADDI t6, sp, 192
  ADD s0, t6, s2
  LW s2, 264(sp)
  SW s2, 0(s0)
  ADDI s0, zero, 4
  MUL s2, zero, s0
  ADDI t5, sp, 120
  ADD s0, t5, s2
  LW s2, 264(sp)
  ADDI s3, zero, 4
  MUL s4, zero, s3
  ADDI t6, sp, 48
  ADD s3, t6, s4
  LW s4, 0(s3)
  ADDW s3, s2, s4
  SW s3, 0(s0)
  SW zero, 0(sp)
  JAL zero, bb40
bb34:
  LW s0, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADDI t5, sp, 192
  ADD s0, t5, s3
  LW s2, 0(s0)
  LW s0, 24(sp)
  ADDI s3, zero, 4
  MULW s4, s0, s3
  ADDI t6, sp, 120
  ADD s0, t6, s4
  LW s3, 0(s0)
  SLT s0, s2, s3
  XOR s2, s0, zero
  SLTU s0, zero, s2
  BNE s0, zero, bb35
  JAL zero, bb36
bb35:
  LW s0, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADDI t5, sp, 192
  ADD s0, t5, s3
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  SW s2, 16(sp)
  JAL zero, bb37
bb36:
  LW s0, 24(sp)
  ADDIW s2, s0, 1
  SW s2, 24(sp)
  JAL zero, bb31
bb37:
  LW s0, 16(sp)
  LW s2, 272(sp)
  ADD a0, s0, zero
  ADD a1, s2, zero
  CALL getNumPos
  ADD s0, a0, zero
  LW s2, 24(sp)
  XOR s3, s0, s2
  SLTU s0, zero, s3
  XOR s2, s0, zero
  SLTU s0, zero, s2
  BNE s0, zero, bb38
  JAL zero, bb39
bb38:
  LW s0, 16(sp)
  SW s0, 8(sp)
  LW s0, 8(sp)
  LW s2, 272(sp)
  ADD a0, s0, zero
  ADD a1, s2, zero
  CALL getNumPos
  ADD s0, a0, zero
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADDI t6, sp, 192
  ADD s0, t6, s3
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  SW s2, 16(sp)
  LW s0, 8(sp)
  LW s2, 272(sp)
  ADD a0, s0, zero
  ADD a1, s2, zero
  CALL getNumPos
  ADD s0, a0, zero
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADDI t5, sp, 192
  ADD s0, t5, s3
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 8(sp)
  SW s2, 0(s0)
  LW s0, 8(sp)
  LW s2, 272(sp)
  ADD a0, s0, zero
  ADD a1, s2, zero
  CALL getNumPos
  ADD s0, a0, zero
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADDI t6, sp, 192
  ADD s0, t6, s3
  LW s2, 8(sp)
  LW s3, 272(sp)
  ADD a0, s2, zero
  ADD a1, s3, zero
  CALL getNumPos
  ADD s2, a0, zero
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADDI t5, sp, 192
  ADD s2, t5, s4
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  SW s2, 0(s0)
  JAL zero, bb37
bb39:
  LW s0, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADDI t6, sp, 192
  ADD s0, t6, s3
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 16(sp)
  SW s2, 0(s0)
  LW s0, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADDI t5, sp, 192
  ADD s0, t5, s3
  LW s2, 24(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADDI t6, sp, 192
  ADD s2, t6, s4
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  SW s2, 0(s0)
  JAL zero, bb34
bb40:
  LW s0, 0(sp)
  LA s2, base
  LW s3, 0(s2)
  SLT s2, s0, s3
  XOR s0, s2, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb41
  JAL zero, bb42
bb41:
  LW s0, 0(sp)
  SLT s2, zero, s0
  BNE s2, zero, bb43
  JAL zero, bb44
bb42:
  LD s4, 280(sp)
  LD ra, 288(sp)
  LD s3, 296(sp)
  LD s2, 304(sp)
  LD s1, 312(sp)
  LD s5, 320(sp)
  LD s0, 328(sp)
  ADDI sp, sp, 336
  JALR zero, 0(ra)
bb43:
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADDI t5, sp, 192
  ADD s0, t5, s3
  LW s2, 0(sp)
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  ADDI s2, zero, 4
  MULW s3, s4, s2
  ADDI t6, sp, 120
  ADD s2, t6, s3
  LW s3, 0(s2)
  SW s3, 0(s0)
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADDI t5, sp, 120
  ADD s0, t5, s3
  LW s2, 0(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADDI t6, sp, 192
  ADD s2, t6, s4
  LW s3, 0(s2)
  LW s2, 0(sp)
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADDI t5, sp, 48
  ADD s2, t5, s5
  LW s4, 0(s2)
  ADDW s2, s3, s4
  SW s2, 0(s0)
  JAL zero, bb44
bb44:
  LW s0, 272(sp)
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s4, s0, s2
  ADDI t6, sp, 192
  ADD s0, t6, s4
  LW s2, 0(s0)
  LW s0, 0(sp)
  ADDI s4, zero, 4
  MULW s5, s0, s4
  ADDI t5, sp, 120
  ADD s0, t5, s5
  LW s4, 0(s0)
  ADD a0, s3, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  ADD a3, s4, zero
  CALL radixSort
  LW s0, 0(sp)
  ADDIW s2, s0, 1
  SW s2, 0(sp)
  JAL zero, bb40
getMaxNum:
  ADDI sp, sp, -64
  SD ra, 24(sp)
  SD s3, 32(sp)
  SD s2, 40(sp)
  SD s1, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 16(sp)
  SW zero, 8(sp)
  SW zero, 0(sp)
  JAL zero, bb46
bb46:
  LW s0, 0(sp)
  LW s2, 16(sp)
  SLT s3, s0, s2
  XOR s0, s3, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb47
  JAL zero, bb48
bb47:
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s2, 0(s0)
  LW s0, 8(sp)
  SLT s3, s0, s2
  BNE s3, zero, bb49
  JAL zero, bb50
bb48:
  LW s0, 8(sp)
  ADD a0, s0, zero
  LD ra, 24(sp)
  LD s3, 32(sp)
  LD s2, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb49:
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s2, 0(s0)
  SW s2, 8(sp)
  JAL zero, bb50
bb50:
  LW s0, 0(sp)
  ADDIW s2, s0, 1
  SW s2, 0(sp)
  JAL zero, bb46
