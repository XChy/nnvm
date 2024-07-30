.global main
.section .bss
x:
.space 5600
b:
.space 5600
y:
.space 5600
A:
.space 7840000

.section .data




n:
.word 0x00000578
.section .text
main:
  ADDI sp, sp, -288
  SD ra, 136(sp)
  SD s0, 144(sp)
  SD s1, 152(sp)
  SD s2, 160(sp)
  SD s3, 168(sp)
  SD s4, 176(sp)
  SD s8, 184(sp)
  SD s9, 192(sp)
  SD s11, 200(sp)
  SD s5, 208(sp)
  SD s6, 216(sp)
  SD s7, 224(sp)
  SD s10, 232(sp)
  LA s0, A
  ADD a0, s0, zero
  CALL getarray
  LA s0, b
  ADD a0, s0, zero
  CALL getarray
  LA s0, x
  ADD a0, s0, zero
  CALL getarray
  LA s0, y
  ADD a0, s0, zero
  CALL getarray
  ADDI a0, zero, 68
  CALL _sysy_starttime
  LA s0, n
  LW t4, 0(s0)
  SW t4, 112(sp)
  ADDI t4, zero, 0
  SW t4, 92(sp)
  LW t4, 92(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb22
  # implict jump to bb1
bb1:
  LW t4, 92(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb13
  # implict jump to bb2
bb2:
  ADDI s5, zero, 1
  LW t4, 112(sp)
  SUBW s5, t4, s5
  SLT s6, s5, zero
  XORI s6, s6, 1
  BNE s6, zero, bb4
  # implict jump to bb3
bb3:
  ADDI a0, zero, 70
  CALL _sysy_stoptime
  LA s9, n
  LW s9, 0(s9)
  ADD a0, s9, zero
  LA s9, x
  ADD a1, s9, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 136(sp)
  LD s0, 144(sp)
  LD s1, 152(sp)
  LD s2, 160(sp)
  LD s3, 168(sp)
  LD s4, 176(sp)
  LD s8, 184(sp)
  LD s9, 192(sp)
  LD s11, 200(sp)
  LD s5, 208(sp)
  LD s6, 216(sp)
  LD s7, 224(sp)
  LD s10, 232(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb4:
  # implict jump to bb5
bb5:
  ADD s6, s5, zero
  SLLIW s8, s6, 2
  LA s4, y
  ADD s4, s4, s8
  LW s4, 0(s4)
  ADDIW s11, s6, 1
  LW t4, 112(sp)
  BLT s11, t4, bb9
  # implict jump to bb6
bb6:
  ADD s10, s4, zero
  # implict jump to bb7
bb7:
  LA s7, x
  ADD s7, s7, s8
  LUI s9, 1
  ADDIW s9, s9, 1504
  MULW s9, s6, s9
  LA s11, A
  ADD s9, s11, s9
  ADD s9, s9, s8
  LW s9, 0(s9)
  DIVW s9, s10, s9
  SW s9, 0(s7)
  ADDI s7, zero, 1
  SUBW s7, s6, s7
  SLT s9, s7, zero
  XORI s9, s9, 1
  BNE s9, zero, bb8
  JAL zero, bb3
bb8:
  ADD s5, s7, zero
  JAL zero, bb5
bb9:
  LUI s0, 1
  ADDIW s0, s0, 1504
  MULW s0, s6, s0
  LA s1, A
  ADD s0, s1, s0
  ADD s1, s11, zero
  # implict jump to bb10
bb10:
  ADD s11, s4, zero
  ADD s9, s1, zero
  SLLIW s2, s9, 2
  ADD s7, s0, s2
  LW s7, 0(s7)
  LA s3, x
  ADD s2, s3, s2
  LW s2, 0(s2)
  MULW s2, s7, s2
  SUBW s2, s11, s2
  ADDIW s3, s9, 1
  LW t4, 112(sp)
  BLT s3, t4, bb12
  # implict jump to bb11
bb11:
  ADD s10, s2, zero
  JAL zero, bb7
bb12:
  ADD s1, s3, zero
  ADD s4, s2, zero
  JAL zero, bb10
bb13:
  ADD t4, zero, zero
  SW t4, 88(sp)
  # implict jump to bb14
bb14:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t3, 76(sp)
  SLLIW t4, t3, 2
  SW t4, 72(sp)
  LA s0, b
  LW t4, 72(sp)
  ADD s0, s0, t4
  LW s0, 0(s0)
  LW t4, 76(sp)
  BLT zero, t4, bb18
  # implict jump to bb15
bb15:
  ADD s8, s0, zero
  # implict jump to bb16
bb16:
  LA s3, y
  LW t4, 72(sp)
  ADD s3, s3, t4
  SW s8, 0(s3)
  LW t3, 76(sp)
  ADDIW t4, t3, 1
  SW t4, 84(sp)
  LW t4, 84(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb17
  JAL zero, bb2
bb17:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  JAL zero, bb14
bb18:
  LUI s9, 1
  ADDIW s9, s9, 1504
  LW t4, 76(sp)
  MULW s9, t4, s9
  LA s4, A
  ADD t4, s4, s9
  SD t4, 240(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  ADD t4, s0, zero
  SW t4, 68(sp)
  # implict jump to bb19
bb19:
  LW t4, 68(sp)
  ADD s5, t4, zero
  LW t4, 4(sp)
  ADD s3, t4, zero
  SLLIW s6, s3, 2
  LD t4, 240(sp)
  ADD s2, t4, s6
  LW s2, 0(s2)
  LA s1, y
  ADD s1, s1, s6
  LW s1, 0(s1)
  MULW s1, s2, s1
  SUBW t4, s5, s1
  SW t4, 16(sp)
  ADDIW t4, s3, 1
  SW t4, 104(sp)
  LW t4, 104(sp)
  LW t3, 76(sp)
  BLT t4, t3, bb21
  # implict jump to bb20
bb20:
  LW t4, 16(sp)
  ADD s8, t4, zero
  JAL zero, bb16
bb21:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  JAL zero, bb19
bb22:
  ADD t4, zero, zero
  SW t4, 60(sp)
  ADD t4, zero, zero
  SW t4, 52(sp)
  ADD t4, zero, zero
  SW t4, 44(sp)
  # implict jump to bb23
bb23:
  LW t4, 44(sp)
  ADD s5, t4, zero
  LW t4, 52(sp)
  ADD s6, t4, zero
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  LW t4, 108(sp)
  BLT zero, t4, bb39
  # implict jump to bb24
bb24:
  # implict jump to bb25
bb25:
  LW t4, 108(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb29
  # implict jump to bb26
bb26:
  # implict jump to bb27
bb27:
  ADD t4, s5, zero
  SW t4, 48(sp)
  ADD t4, s6, zero
  SW t4, 56(sp)
  LW t3, 108(sp)
  ADDIW t4, t3, 1
  SW t4, 64(sp)
  LW t4, 64(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb28
  JAL zero, bb1
bb28:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  JAL zero, bb23
bb29:
  LUI s8, 1
  ADDIW s8, s8, 1504
  LW t4, 108(sp)
  MULW s8, t4, s8
  LA s9, A
  ADD t4, s9, s8
  SD t4, 272(sp)
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  # implict jump to bb30
bb30:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 12(sp)
  SLLIW t4, t3, 2
  SW t4, 8(sp)
  LD t3, 272(sp)
  LW t4, 8(sp)
  ADD t4, t3, t4
  SD t4, 264(sp)
  LD t4, 264(sp)
  LW s0, 0(t4)
  LW t4, 108(sp)
  BLT zero, t4, bb35
  # implict jump to bb31
bb31:
  ADD s7, zero, zero
  ADD s1, s0, zero
  # implict jump to bb32
bb32:
  LD t4, 264(sp)
  SW s1, 0(t4)
  LW t3, 12(sp)
  ADDIW t4, t3, 1
  SW t4, 0(sp)
  LW t4, 0(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb34
  # implict jump to bb33
bb33:
  ADD s6, s7, zero
  ADD s5, s1, zero
  JAL zero, bb27
bb34:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  JAL zero, bb30
bb35:
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, s0, zero
  SW t4, 20(sp)
  # implict jump to bb36
bb36:
  LW t4, 20(sp)
  ADD s10, t4, zero
  LW t4, 24(sp)
  ADD s8, t4, zero
  SLLIW s0, s8, 2
  LD t4, 272(sp)
  ADD s0, t4, s0
  LW s0, 0(s0)
  LUI s11, 1
  ADDIW s11, s11, 1504
  MULW s11, s8, s11
  LA s9, A
  ADD s9, s9, s11
  LW t4, 8(sp)
  ADD s9, s9, t4
  LW s9, 0(s9)
  MULW s0, s0, s9
  SUBW t4, s10, s0
  SW t4, 32(sp)
  ADDIW t4, s8, 1
  SW t4, 36(sp)
  LW t4, 36(sp)
  LW t3, 108(sp)
  BLT t4, t3, bb38
  # implict jump to bb37
bb37:
  LW t4, 36(sp)
  ADD s7, t4, zero
  LW t4, 32(sp)
  ADD s1, t4, zero
  JAL zero, bb32
bb38:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb36
bb39:
  LUI s8, 1
  ADDIW s8, s8, 1504
  LW t4, 108(sp)
  MULW s8, t4, s8
  LA s9, A
  ADD t4, s9, s8
  SD t4, 256(sp)
  ADD t4, zero, zero
  SW t4, 124(sp)
  # implict jump to bb40
bb40:
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  LW t3, 100(sp)
  SLLIW t4, t3, 2
  SW t4, 96(sp)
  LD t3, 256(sp)
  LW t4, 96(sp)
  ADD t4, t3, t4
  SD t4, 248(sp)
  LD t4, 248(sp)
  LW s1, 0(t4)
  LW t4, 100(sp)
  BLT zero, t4, bb45
  # implict jump to bb41
bb41:
  ADD s11, zero, zero
  ADD s10, s1, zero
  # implict jump to bb42
bb42:
  LUI s7, 1
  ADDIW s7, s7, 1504
  LW t4, 100(sp)
  MULW s7, t4, s7
  LA s8, A
  ADD s7, s8, s7
  LW t4, 96(sp)
  ADD s7, s7, t4
  LW s7, 0(s7)
  DIVW s7, s10, s7
  LD t4, 248(sp)
  SW s7, 0(t4)
  LW t3, 100(sp)
  ADDIW t4, t3, 1
  SW t4, 40(sp)
  LW t4, 40(sp)
  LW t3, 108(sp)
  BLT t4, t3, bb44
  # implict jump to bb43
bb43:
  ADD s6, s11, zero
  ADD s5, s10, zero
  JAL zero, bb25
bb44:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  JAL zero, bb40
bb45:
  ADD t4, zero, zero
  SW t4, 120(sp)
  ADD t4, s1, zero
  SW t4, 116(sp)
  # implict jump to bb46
bb46:
  LW t4, 116(sp)
  ADD s7, t4, zero
  LW t4, 120(sp)
  ADD s0, t4, zero
  SLLIW s1, s0, 2
  LD t4, 256(sp)
  ADD s1, t4, s1
  LW s1, 0(s1)
  LUI s8, 1
  ADDIW s8, s8, 1504
  MULW s8, s0, s8
  LA s9, A
  ADD s8, s9, s8
  LW t4, 96(sp)
  ADD s8, s8, t4
  LW s8, 0(s8)
  MULW s1, s1, s8
  SUBW t4, s7, s1
  SW t4, 128(sp)
  ADDIW t4, s0, 1
  SW t4, 80(sp)
  LW t4, 80(sp)
  LW t3, 100(sp)
  BLT t4, t3, bb48
  # implict jump to bb47
bb47:
  LW t4, 80(sp)
  ADD s11, t4, zero
  LW t4, 128(sp)
  ADD s10, t4, zero
  JAL zero, bb42
bb48:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  JAL zero, bb46
