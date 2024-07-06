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
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  LA s0, a
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  ADDI a0, zero, 90
  CALL _sysy_starttime
  ADDI a0, zero, 8
  LA s1, a
  ADD a1, s1, zero
  ADD a2, zero, zero
  ADD a3, s0, zero
  CALL radixSort
  ADD s1, zero, zero
  JAL zero, bb1
bb1:
  ADD s2, s1, zero
  SLT s3, s2, s0
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb2
  JAL zero, bb3
bb2:
  LA s3, ans
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s2, s3
  LA s3, a
  ADD s6, s3, s5
  LW s3, 0(s6)
  ADDIW s5, s2, 2
  REMW s6, s3, s5
  MULW s3, s2, s6
  ADDW s5, s4, s3
  LA s3, ans
  SW s5, 0(s3)
  ADDIW s3, s2, 1
  ADD s1, s3, zero
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
  CALL _sysy_stoptime
  LA s0, ans
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
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
getNumPos:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, zero, zero
  ADD s3, s0, zero
  JAL zero, bb7
bb7:
  ADD s0, s3, zero
  ADD s4, s2, zero
  SLT s5, s4, s1
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb8
  JAL zero, bb9
bb8:
  LA s5, base
  LW s6, 0(s5)
  DIVW s5, s0, s6
  ADDIW s6, s4, 1
  ADD s2, s6, zero
  ADD s3, s5, zero
  JAL zero, bb7
bb9:
  LA s1, base
  LW s2, 0(s1)
  REMW s1, s0, s2
  ADD a0, s1, zero
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
radixSort:
  ADDI sp, sp, -384
  SD s2, 272(sp)
  SD s3, 280(sp)
  SD s11, 288(sp)
  SD s10, 296(sp)
  SD s9, 304(sp)
  SD s8, 312(sp)
  SD s7, 320(sp)
  SD s4, 328(sp)
  SD s5, 336(sp)
  SD s0, 344(sp)
  SD s6, 352(sp)
  SD s1, 360(sp)
  SD ra, 368(sp)
  ADD t4, a0, zero
  SW t4, 216(sp)
  ADD t4, a1, zero
  SD t4, 208(sp)
  ADD t4, a2, zero
  SW t4, 200(sp)
  ADD t4, a3, zero
  SW t4, 192(sp)
  ADDI s4, zero, 16
  JAL zero, bb11
bb11:
  ADD s5, s4, zero
  XOR s6, s5, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb12
  JAL zero, bb13
bb12:
  ADDI s6, zero, 1
  SUBW s7, s5, s6
  ADDI s5, zero, 4
  MULW s6, s7, s5
  ADD s5, zero, s6
  ADDI t5, sp, 128
  ADD s6, t5, s5
  SW zero, 0(s6)
  ADD s4, s7, zero
  JAL zero, bb11
bb13:
  ADDI s4, zero, 16
  JAL zero, bb14
bb14:
  ADD s5, s4, zero
  XOR s6, s5, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb15
  JAL zero, bb16
bb15:
  ADDI s6, zero, 1
  SUBW s7, s5, s6
  ADDI s5, zero, 4
  MULW s6, s7, s5
  ADD s5, zero, s6
  ADDI t6, sp, 64
  ADD s6, t6, s5
  SW zero, 0(s6)
  ADD s4, s7, zero
  JAL zero, bb14
bb16:
  ADDI s4, zero, 16
  JAL zero, bb17
bb17:
  ADD s5, s4, zero
  XOR s6, s5, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb18
  JAL zero, bb19
bb18:
  ADDI s6, zero, 1
  SUBW s7, s5, s6
  ADDI s5, zero, 4
  MULW s6, s7, s5
  ADD s5, zero, s6
  ADDI t5, sp, 0
  ADD s6, t5, s5
  SW zero, 0(s6)
  ADD s4, s7, zero
  JAL zero, bb17
bb19:
  LW t4, 216(sp)
  XORI s4, t4, -1
  SLTIU s5, s4, 1
  BNE s5, zero, bb20
  JAL zero, bb21
bb20:
  ADDI t4, zero, 1
  SB t4, 224(sp)
  JAL zero, bb22
bb21:
  LW t4, 200(sp)
  ADDIW s0, t4, 1
  LW t4, 192(sp)
  SLT s1, s0, t4
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 224(sp)
  JAL zero, bb22
bb22:
  LB t4, 224(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb23
  JAL zero, bb24
bb23:
  LD s2, 272(sp)
  LD s3, 280(sp)
  LD s11, 288(sp)
  LD s10, 296(sp)
  LD s9, 304(sp)
  LD s8, 312(sp)
  LD s7, 320(sp)
  LD s4, 328(sp)
  LD s5, 336(sp)
  LD s0, 344(sp)
  LD s6, 352(sp)
  LD s1, 360(sp)
  LD ra, 368(sp)
  ADDI sp, sp, 384
  JALR zero, 0(ra)
bb24:
  LW t4, 200(sp)
  ADD s5, t4, zero
  JAL zero, bb25
bb25:
  ADD s6, s5, zero
  LW t4, 192(sp)
  SLT s7, s6, t4
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb26
  JAL zero, bb27
bb26:
  ADDI s7, zero, 4
  MULW s8, s6, s7
  LD t4, 208(sp)
  ADD s7, t4, s8
  LW s8, 0(s7)
  ADD a0, s8, zero
  LW t4, 216(sp)
  ADD a1, t4, zero
  CALL getNumPos
  ADD s7, a0, zero
  ADDI s8, zero, 4
  MULW s9, s7, s8
  ADDI t6, sp, 0
  ADD s7, t6, s9
  ADDI s8, zero, 4
  MULW s9, s6, s8
  LD t4, 208(sp)
  ADD s8, t4, s9
  LW s9, 0(s8)
  ADD a0, s9, zero
  LW t4, 216(sp)
  ADD a1, t4, zero
  CALL getNumPos
  ADD s8, a0, zero
  ADDI s9, zero, 4
  MULW s10, s8, s9
  ADDI t5, sp, 0
  ADD s8, t5, s10
  LW s9, 0(s8)
  ADDIW s8, s9, 1
  SW s8, 0(s7)
  ADDIW s7, s6, 1
  ADD s5, s7, zero
  JAL zero, bb25
bb27:
  ADDI t6, sp, 128
  ADD s5, t6, zero
  LW t4, 200(sp)
  SW t4, 0(s5)
  ADDI t5, sp, 64
  ADD s5, t5, zero
  ADDI t6, sp, 0
  ADD s6, t6, zero
  LW s7, 0(s6)
  LW t4, 200(sp)
  ADDW s6, t4, s7
  SW s6, 0(s5)
  ADDI s5, zero, 1
  JAL zero, bb28
bb28:
  ADD s6, s5, zero
  LA s7, base
  LW s8, 0(s7)
  SLT s7, s6, s8
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb29
  JAL zero, bb30
bb29:
  ADDI s7, zero, 4
  MULW s8, s6, s7
  ADDI t5, sp, 128
  ADD s7, t5, s8
  ADDI s8, zero, 1
  SUBW s9, s6, s8
  ADDI s8, zero, 4
  MULW s10, s9, s8
  ADDI t6, sp, 64
  ADD s8, t6, s10
  LW s9, 0(s8)
  SW s9, 0(s7)
  ADDI s7, zero, 4
  MULW s8, s6, s7
  ADDI t5, sp, 64
  ADD s7, t5, s8
  ADDI s8, zero, 4
  MULW s9, s6, s8
  ADDI t6, sp, 128
  ADD s8, t6, s9
  LW s9, 0(s8)
  ADDI s8, zero, 4
  MULW s10, s6, s8
  ADDI t5, sp, 0
  ADD s8, t5, s10
  LW s10, 0(s8)
  ADDW s8, s9, s10
  SW s8, 0(s7)
  ADDIW s7, s6, 1
  ADD s5, s7, zero
  JAL zero, bb28
bb30:
  ADD t4, zero, zero
  SW t4, 264(sp)
  ADD t4, zero, zero
  SW t4, 248(sp)
  ADD t4, zero, zero
  SW t4, 232(sp)
  JAL zero, bb31
bb31:
  LW t4, 232(sp)
  ADD s8, t4, zero
  LW t4, 248(sp)
  ADD s9, t4, zero
  LW t4, 264(sp)
  ADD s10, t4, zero
  LA s11, base
  LW s3, 0(s11)
  SLT s11, s8, s3
  XOR s3, s11, zero
  SLTU s11, zero, s3
  BNE s11, zero, bb32
  JAL zero, bb33
bb32:
  ADD s3, s10, zero
  ADD s10, s9, zero
  JAL zero, bb34
bb33:
  ADDI t6, sp, 128
  ADD s0, t6, zero
  LW t4, 200(sp)
  SW t4, 0(s0)
  ADDI t5, sp, 64
  ADD s0, t5, zero
  ADDI t6, sp, 0
  ADD s1, t6, zero
  LW s2, 0(s1)
  LW t4, 200(sp)
  ADDW s1, t4, s2
  SW s1, 0(s0)
  ADD s0, zero, zero
  JAL zero, bb40
bb34:
  ADD t4, s10, zero
  SW t4, 240(sp)
  ADD t4, s3, zero
  SW t4, 256(sp)
  ADDI s2, zero, 4
  MULW s1, s8, s2
  ADDI t5, sp, 128
  ADD s2, t5, s1
  LW s1, 0(s2)
  ADDI s2, zero, 4
  MULW s0, s8, s2
  ADDI t6, sp, 64
  ADD s2, t6, s0
  LW s0, 0(s2)
  SLT s2, s1, s0
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb35
  JAL zero, bb36
bb35:
  ADDI s0, zero, 4
  MULW s1, s8, s0
  ADDI t5, sp, 128
  ADD s0, t5, s1
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LD t4, 208(sp)
  ADD s0, t4, s2
  LW s1, 0(s0)
  LW t4, 256(sp)
  ADD s0, t4, zero
  ADD s2, s1, zero
  JAL zero, bb37
bb36:
  ADDIW s0, s8, 1
  LW t3, 256(sp)
  ADD t4, t3, zero
  SW t4, 264(sp)
  LW t3, 240(sp)
  ADD t4, t3, zero
  SW t4, 248(sp)
  ADD t4, s0, zero
  SW t4, 232(sp)
  JAL zero, bb31
bb37:
  ADD s1, s2, zero
  ADD s4, s0, zero
  ADD a0, s1, zero
  LW t4, 216(sp)
  ADD a1, t4, zero
  CALL getNumPos
  ADD s7, a0, zero
  XOR s9, s7, s8
  SLTU s7, zero, s9
  XOR s9, s7, zero
  SLTU s7, zero, s9
  BNE s7, zero, bb38
  JAL zero, bb39
bb38:
  ADD a0, s1, zero
  LW t4, 216(sp)
  ADD a1, t4, zero
  CALL getNumPos
  ADD s7, a0, zero
  ADDI s9, zero, 4
  MULW s6, s7, s9
  ADDI t6, sp, 128
  ADD s7, t6, s6
  LW s6, 0(s7)
  ADDI s7, zero, 4
  MULW s9, s6, s7
  LD t4, 208(sp)
  ADD s6, t4, s9
  LW s7, 0(s6)
  ADD a0, s1, zero
  LW t4, 216(sp)
  ADD a1, t4, zero
  CALL getNumPos
  ADD s6, a0, zero
  ADDI s9, zero, 4
  MULW s11, s6, s9
  ADDI t5, sp, 128
  ADD s6, t5, s11
  LW s9, 0(s6)
  ADDI s6, zero, 4
  MULW s11, s9, s6
  LD t4, 208(sp)
  ADD s6, t4, s11
  SW s1, 0(s6)
  ADD a0, s1, zero
  LW t4, 216(sp)
  ADD a1, t4, zero
  CALL getNumPos
  ADD s6, a0, zero
  ADDI s9, zero, 4
  MULW s11, s6, s9
  ADDI t6, sp, 128
  ADD s6, t6, s11
  ADD a0, s1, zero
  LW t4, 216(sp)
  ADD a1, t4, zero
  CALL getNumPos
  ADD s9, a0, zero
  ADDI s11, zero, 4
  MULW s5, s9, s11
  ADDI t5, sp, 128
  ADD s9, t5, s5
  LW s5, 0(s9)
  ADDIW s9, s5, 1
  SW s9, 0(s6)
  ADD s0, s1, zero
  ADD s2, s7, zero
  JAL zero, bb37
bb39:
  ADDI s0, zero, 4
  MULW s2, s8, s0
  ADDI t6, sp, 128
  ADD s0, t6, s2
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s5, s2, s0
  LD t4, 208(sp)
  ADD s0, t4, s5
  SW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s8, s0
  ADDI t5, sp, 128
  ADD s0, t5, s2
  ADDI s2, zero, 4
  MULW s5, s8, s2
  ADDI t6, sp, 128
  ADD s2, t6, s5
  LW s5, 0(s2)
  ADDIW s2, s5, 1
  SW s2, 0(s0)
  ADD s3, s4, zero
  ADD s10, s1, zero
  JAL zero, bb34
bb40:
  ADD s1, s0, zero
  LA s2, base
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb41
  JAL zero, bb42
bb41:
  SLT s2, zero, s1
  BNE s2, zero, bb43
  JAL zero, bb44
bb42:
  LD s2, 272(sp)
  LD s3, 280(sp)
  LD s11, 288(sp)
  LD s10, 296(sp)
  LD s9, 304(sp)
  LD s8, 312(sp)
  LD s7, 320(sp)
  LD s4, 328(sp)
  LD s5, 336(sp)
  LD s0, 344(sp)
  LD s6, 352(sp)
  LD s1, 360(sp)
  LD ra, 368(sp)
  ADDI sp, sp, 384
  JALR zero, 0(ra)
bb43:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 128
  ADD s2, t5, s3
  ADDI s3, zero, 1
  SUBW s4, s1, s3
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADDI t6, sp, 64
  ADD s3, t6, s5
  LW s4, 0(s3)
  SW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 64
  ADD s2, t5, s3
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADDI t6, sp, 128
  ADD s3, t6, s4
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s1, s3
  ADDI t5, sp, 0
  ADD s3, t5, s5
  LW s5, 0(s3)
  ADDW s3, s4, s5
  SW s3, 0(s2)
  JAL zero, bb44
bb44:
  ADDI s2, zero, 1
  LW t4, 216(sp)
  SUBW s3, t4, s2
  ADDI s2, zero, 4
  MULW s4, s1, s2
  ADDI t6, sp, 128
  ADD s2, t6, s4
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s5, s1, s2
  ADDI t5, sp, 64
  ADD s2, t5, s5
  LW s5, 0(s2)
  ADD a0, s3, zero
  LD t4, 208(sp)
  ADD a1, t4, zero
  ADD a2, s4, zero
  ADD a3, s5, zero
  CALL radixSort
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb40
getMaxNum:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s8, 32(sp)
  SD s6, 40(sp)
  SD s1, 48(sp)
  SD s7, 56(sp)
  SD s5, 64(sp)
  SD s0, 72(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  JAL zero, bb46
bb46:
  ADD s4, s3, zero
  ADD s5, s2, zero
  SLT s6, s5, s0
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb47
  JAL zero, bb48
bb47:
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADD s6, s1, s7
  LW s7, 0(s6)
  SLT s6, s4, s7
  BNE s6, zero, bb49
  JAL zero, bb51
bb48:
  ADD a0, s4, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s8, 32(sp)
  LD s6, 40(sp)
  LD s1, 48(sp)
  LD s7, 56(sp)
  LD s5, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb49:
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADD s6, s1, s7
  LW s7, 0(s6)
  ADD s6, s7, zero
  JAL zero, bb50
bb50:
  ADD s7, s6, zero
  ADDIW s8, s5, 1
  ADD s2, s8, zero
  ADD s3, s7, zero
  JAL zero, bb46
bb51:
  ADD s6, s4, zero
  JAL zero, bb50
