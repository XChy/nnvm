.global main
.section .bss




book:
.space 64

e:
.space 1024
dis:
.space 64
.section .data
w:
.word 0x00000000
v2:
.word 0x00000000
v1:
.word 0x00000000
m:
.word 0x00000000

n:
.word 0x00000000


.section .text
main:
  ADDI sp, sp, -208
  SD ra, 88(sp)
  SD s0, 96(sp)
  SD s1, 104(sp)
  SD s4, 112(sp)
  SD s5, 120(sp)
  SD s6, 128(sp)
  SD s7, 136(sp)
  SD s8, 144(sp)
  SD s9, 152(sp)
  SD s10, 160(sp)
  SD s2, 168(sp)
  SD s3, 176(sp)
  SD s11, 184(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, n
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, m
  SW s0, 0(s1)
  LA s0, n
  LW s0, 0(s0)
  SLTI s1, s0, 1
  XORI s1, s1, 1
  BNE s1, zero, bb39
  # implict jump to bb1
bb1:
  LA s8, m
  LW s8, 0(s8)
  SLTI s8, s8, 1
  XORI s8, s8, 1
  BNE s8, zero, bb36
  # implict jump to bb2
bb2:
  LA s9, n
  LW s9, 0(s9)
  SLTI s10, s9, 1
  XORI s10, s10, 1
  BNE s10, zero, bb32
  # implict jump to bb3
bb3:
  # implict jump to bb4
bb4:
  ADD t4, s9, zero
  SW t4, 60(sp)
  LA s3, book
  ADDI s4, zero, 1
  SW s4, 4(s3)
  ADDI s3, zero, 1
  LW t3, 60(sp)
  SUBW t4, t3, s3
  SW t4, 20(sp)
  LW t4, 20(sp)
  SLTI s4, t4, 1
  XORI s4, s4, 1
  BNE s4, zero, bb10
  # implict jump to bb5
bb5:
  LA s3, n
  LW s3, 0(s3)
  SLTI s3, s3, 1
  XORI s3, s3, 1
  BNE s3, zero, bb7
  # implict jump to bb6
bb6:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 88(sp)
  LD s0, 96(sp)
  LD s1, 104(sp)
  LD s4, 112(sp)
  LD s5, 120(sp)
  LD s6, 128(sp)
  LD s7, 136(sp)
  LD s8, 144(sp)
  LD s9, 152(sp)
  LD s10, 160(sp)
  LD s2, 168(sp)
  LD s3, 176(sp)
  LD s11, 184(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb7:
  ADDI s3, zero, 1
  # implict jump to bb8
bb8:
  ADD s4, s3, zero
  SLLIW s10, s4, 2
  LA s11, dis
  ADD s10, s11, s10
  LW s10, 0(s10)
  ADD a0, s10, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s4, s4, 1
  LA s10, n
  LW s10, 0(s10)
  SLT s10, s10, s4
  XORI s10, s10, 1
  BNE s10, zero, bb9
  JAL zero, bb6
bb9:
  ADD s3, s4, zero
  JAL zero, bb8
bb10:
  LW t4, 60(sp)
  SLTI s4, t4, 1
  XORI t4, s4, 1
  SB t4, 0(sp)
  ADDI s5, zero, 1
  ADD s6, zero, zero
  # implict jump to bb11
bb11:
  ADD s0, s6, zero
  ADD t4, s5, zero
  SW t4, 8(sp)
  LB t4, 0(sp)
  BNE t4, zero, bb22
  # implict jump to bb12
bb12:
  ADD s8, zero, zero
  # implict jump to bb13
bb13:
  SLLIW s7, s8, 2
  LA s9, book
  ADD s9, s9, s7
  ADDI s10, zero, 1
  SW s10, 0(s9)
  LB t4, 0(sp)
  BNE t4, zero, bb16
  # implict jump to bb14
bb14:
  LW t4, 8(sp)
  ADDIW s2, t4, 1
  LW t4, 20(sp)
  SLT s3, t4, s2
  XORI s3, s3, 1
  BNE s3, zero, bb15
  JAL zero, bb5
bb15:
  ADD s5, s2, zero
  ADD s6, s0, zero
  JAL zero, bb11
bb16:
  SLLIW s8, s8, 6
  LA s9, e
  ADD s8, s9, s8
  ADDI s9, zero, 1
  # implict jump to bb17
bb17:
  ADD s10, s9, zero
  SLLIW s11, s10, 2
  ADD s1, s8, s11
  LW s1, 0(s1)
  LUI s3, 16
  ADDIW s3, s3, -1
  SLT s3, s1, s3
  BNE s3, zero, bb20
  # implict jump to bb18
bb18:
  ADDIW s1, s10, 1
  LW t4, 60(sp)
  SLT s2, t4, s1
  XORI s2, s2, 1
  BNE s2, zero, bb19
  JAL zero, bb14
bb19:
  ADD s9, s1, zero
  JAL zero, bb17
bb20:
  LA s3, dis
  ADD s3, s3, s11
  LW s11, 0(s3)
  LA s2, dis
  ADD s2, s2, s7
  LW s4, 0(s2)
  ADDW s4, s4, s1
  BLT s4, s11, bb21
  JAL zero, bb18
bb21:
  LW s2, 0(s2)
  ADDW s1, s2, s1
  SW s1, 0(s3)
  JAL zero, bb18
bb22:
  LUI s2, 16
  ADDIW s2, s2, -1
  ADD t4, zero, s2
  SW t4, 80(sp)
  ADD t4, zero, zero
  SW t4, 68(sp)
  ADDI t4, zero, 1
  SW t4, 64(sp)
  # implict jump to bb23
bb23:
  LW t4, 64(sp)
  ADD s1, t4, zero
  LW t4, 68(sp)
  ADD s7, t4, zero
  LW t4, 80(sp)
  ADD s4, t4, zero
  SLLIW s3, s1, 2
  LA s9, dis
  ADD s9, s9, s3
  LW s9, 0(s9)
  BLT s9, s4, bb31
  # implict jump to bb24
bb24:
  ADD s11, zero, zero
  # implict jump to bb25
bb25:
  BNE s11, zero, bb30
  # implict jump to bb26
bb26:
  ADD s3, s7, zero
  # implict jump to bb27
bb27:
  ADD t4, s4, zero
  SW t4, 84(sp)
  ADD t4, s3, zero
  SW t4, 76(sp)
  ADDIW t4, s1, 1
  SW t4, 72(sp)
  LW t4, 60(sp)
  LW t3, 72(sp)
  SLT s7, t4, t3
  XORI s7, s7, 1
  BNE s7, zero, bb29
  # implict jump to bb28
bb28:
  LW t4, 76(sp)
  ADD s8, t4, zero
  ADD s0, s11, zero
  JAL zero, bb13
bb29:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  JAL zero, bb23
bb30:
  ADD s3, s1, zero
  ADD s4, s9, zero
  JAL zero, bb27
bb31:
  LA s10, book
  ADD s3, s10, s3
  LW s3, 0(s3)
  SLTIU s3, s3, 1
  ADD s11, s3, zero
  JAL zero, bb25
bb32:
  LA s10, e
  ADDI t4, s10, 64
  SD t4, 192(sp)
  ADDI t4, zero, 1
  SW t4, 16(sp)
  # implict jump to bb33
bb33:
  LW t4, 16(sp)
  ADD s3, t4, zero
  SLLIW s4, s3, 2
  LA s5, dis
  ADD s5, s5, s4
  LD t4, 192(sp)
  ADD s1, t4, s4
  LW s1, 0(s1)
  SW s1, 0(s5)
  LA s1, book
  ADD s1, s1, s4
  SW zero, 0(s1)
  ADDIW t4, s3, 1
  SW t4, 12(sp)
  LA s3, n
  LW s3, 0(s3)
  LW t4, 12(sp)
  SLT s4, s3, t4
  XORI s4, s4, 1
  BNE s4, zero, bb35
  # implict jump to bb34
bb34:
  ADD s9, s3, zero
  JAL zero, bb4
bb35:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb33
bb36:
  ADDI t4, zero, 1
  SW t4, 28(sp)
  # implict jump to bb37
bb37:
  LW t4, 28(sp)
  ADD s9, t4, zero
  CALL getint
  ADD s10, a0, zero
  CALL getint
  ADD s11, a0, zero
  SLLIW s10, s10, 6
  LA s2, e
  ADD s2, s2, s10
  SLLIW s10, s11, 2
  ADD s2, s2, s10
  CALL getint
  ADD s10, a0, zero
  SW s10, 0(s2)
  ADDIW t4, s9, 1
  SW t4, 24(sp)
  LA s9, m
  LW s9, 0(s9)
  LW t4, 24(sp)
  SLT s9, s9, t4
  XORI s9, s9, 1
  BNE s9, zero, bb38
  JAL zero, bb2
bb38:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  JAL zero, bb37
bb39:
  ADD t4, s0, zero
  SW t4, 36(sp)
  ADDI t4, zero, 1
  SW t4, 44(sp)
  # implict jump to bb40
bb40:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t4, 52(sp)
  SLTI s4, t4, 1
  XORI s4, s4, 1
  BNE s4, zero, bb43
  # implict jump to bb41
bb41:
  LW t3, 56(sp)
  ADDIW t4, t3, 1
  SW t4, 40(sp)
  LA s7, n
  LW t4, 0(s7)
  SW t4, 32(sp)
  LW t4, 32(sp)
  LW t3, 40(sp)
  SLT s8, t4, t3
  XORI s8, s8, 1
  BNE s8, zero, bb42
  JAL zero, bb1
bb42:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  JAL zero, bb40
bb43:
  ADDI t4, zero, 1
  SW t4, 48(sp)
  # implict jump to bb44
bb44:
  LW t4, 48(sp)
  ADD s5, t4, zero
  LW t4, 56(sp)
  XOR s6, t4, s5
  SLTIU s6, s6, 1
  BNE s6, zero, bb48
  # implict jump to bb45
bb45:
  LW t4, 56(sp)
  SLLIW s6, t4, 6
  LA s7, e
  ADD s6, s7, s6
  SLLIW s7, s5, 2
  ADD s6, s6, s7
  LUI s7, 16
  ADDIW s7, s7, -1
  SW s7, 0(s6)
  # implict jump to bb46
bb46:
  ADDIW t4, s5, 1
  SW t4, 4(sp)
  LW t4, 52(sp)
  LW t3, 4(sp)
  SLT s6, t4, t3
  XORI s6, s6, 1
  BNE s6, zero, bb47
  JAL zero, bb41
bb47:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb44
bb48:
  LW t4, 56(sp)
  SLLIW s6, t4, 6
  LA s7, e
  ADD s6, s7, s6
  SLLIW s7, s5, 2
  ADD s6, s6, s7
  ADDI s7, zero, 0
  SW s7, 0(s6)
  JAL zero, bb46
