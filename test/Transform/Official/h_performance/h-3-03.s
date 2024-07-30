.global main
.section .bss
stddev:
.space 3200
corr:
.space 2560000
data:
.space 2560000
mean:
.space 3200


.section .data




n:
.word 0x00000320
m:
.word 0x00000320
.section .text
main:
  ADDI sp, sp, -256
  SD ra, 120(sp)
  SD s0, 128(sp)
  SD s1, 136(sp)
  SD s2, 144(sp)
  SD s3, 152(sp)
  SD s4, 160(sp)
  SD s5, 168(sp)
  SD s6, 176(sp)
  SD s7, 184(sp)
  SD s8, 192(sp)
  SD s9, 200(sp)
  SD s10, 208(sp)
  SD s11, 216(sp)
  LA s0, data
  ADD a0, s0, zero
  CALL getarray
  ADDI a0, zero, 79
  CALL _sysy_starttime
  LA s0, m
  LW t4, 0(s0)
  SW t4, 76(sp)
  LA s1, n
  LW t4, 0(s1)
  SW t4, 80(sp)
  ADDI t4, zero, 0
  SW t4, 96(sp)
  LW t4, 96(sp)
  LW t3, 76(sp)
  BLT t4, t3, bb38
  # implict jump to bb1
bb1:
  LW t4, 96(sp)
  LW t3, 76(sp)
  BLT t4, t3, bb29
  # implict jump to bb2
bb2:
  LW t4, 80(sp)
  BLT zero, t4, bb22
  # implict jump to bb3
bb3:
  ADDI s5, zero, 1
  LW t4, 76(sp)
  SUBW s5, t4, s5
  BLT zero, s5, bb6
  # implict jump to bb4
bb4:
  ADD s7, s5, zero
  # implict jump to bb5
bb5:
  LUI s2, 1
  ADDIW s2, s2, -896
  MULW s2, s7, s2
  LA s8, corr
  ADD s2, s8, s2
  SLLIW s7, s7, 2
  ADD s2, s2, s7
  ADDI s7, zero, 1
  SW s7, 0(s2)
  ADDI a0, zero, 81
  CALL _sysy_stoptime
  LA s2, m
  LW s2, 0(s2)
  MULW s2, s2, s2
  ADD a0, s2, zero
  LA s2, corr
  ADD a1, s2, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 120(sp)
  LD s0, 128(sp)
  LD s1, 136(sp)
  LD s2, 144(sp)
  LD s3, 152(sp)
  LD s4, 160(sp)
  LD s5, 168(sp)
  LD s6, 176(sp)
  LD s7, 184(sp)
  LD s8, 192(sp)
  LD s9, 200(sp)
  LD s10, 208(sp)
  LD s11, 216(sp)
  ADDI sp, sp, 256
  JALR zero, 0(ra)
bb6:
  ADD s11, zero, zero
  ADD s10, zero, zero
  # implict jump to bb7
bb7:
  ADD s1, s10, zero
  ADD s9, s11, zero
  LUI s4, 1
  ADDIW s4, s4, -896
  MULW s4, s9, s4
  LA s8, corr
  ADD t4, s8, s4
  SD t4, 224(sp)
  SLLIW t4, s9, 2
  SW t4, 104(sp)
  LD t4, 224(sp)
  LW t3, 104(sp)
  ADD s6, t4, t3
  ADDI s0, zero, 1
  SW s0, 0(s6)
  ADDIW t4, s9, 1
  SW t4, 92(sp)
  LW t4, 92(sp)
  LW t3, 76(sp)
  BLT t4, t3, bb12
  # implict jump to bb8
bb8:
  # implict jump to bb9
bb9:
  LW t4, 92(sp)
  BLT t4, s5, bb11
  # implict jump to bb10
bb10:
  ADD s7, s5, zero
  JAL zero, bb5
bb11:
  LW t4, 92(sp)
  ADD s11, t4, zero
  ADD s10, s1, zero
  JAL zero, bb7
bb12:
  LW t4, 92(sp)
  ADD s6, t4, zero
  # implict jump to bb13
bb13:
  ADD t4, s6, zero
  SW t4, 28(sp)
  LW t3, 28(sp)
  SLLIW t4, t3, 2
  SW t4, 4(sp)
  LD t3, 224(sp)
  LW t4, 4(sp)
  ADD t4, t3, t4
  SD t4, 232(sp)
  LD t4, 232(sp)
  SW zero, 0(t4)
  LW t4, 80(sp)
  BLT zero, t4, bb18
  # implict jump to bb14
bb14:
  ADD s2, zero, zero
  # implict jump to bb15
bb15:
  LUI s4, 1
  ADDIW s4, s4, -896
  LW t4, 28(sp)
  MULW s4, t4, s4
  LA s8, corr
  ADD s4, s8, s4
  LW t4, 104(sp)
  ADD s4, s4, t4
  LD t4, 232(sp)
  LW s8, 0(t4)
  SW s8, 0(s4)
  LW t4, 28(sp)
  ADDIW s4, t4, 1
  LW t4, 76(sp)
  BLT s4, t4, bb17
  # implict jump to bb16
bb16:
  ADD s1, s2, zero
  JAL zero, bb9
bb17:
  ADD s6, s4, zero
  JAL zero, bb13
bb18:
  ADD s3, zero, zero
  # implict jump to bb19
bb19:
  ADD s9, s3, zero
  LD t4, 232(sp)
  LW s0, 0(t4)
  LUI s8, 1
  ADDIW s8, s8, -896
  MULW s8, s9, s8
  LA s4, data
  ADD s4, s4, s8
  LW t4, 104(sp)
  ADD s8, s4, t4
  LW s8, 0(s8)
  LW t4, 4(sp)
  ADD s4, s4, t4
  LW s4, 0(s4)
  MULW s4, s8, s4
  ADDW s0, s0, s4
  LD t4, 232(sp)
  SW s0, 0(t4)
  ADDIW s0, s9, 1
  LW t4, 80(sp)
  BLT s0, t4, bb21
  # implict jump to bb20
bb20:
  ADD s2, s0, zero
  JAL zero, bb15
bb21:
  ADD s3, s0, zero
  JAL zero, bb19
bb22:
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb23
bb23:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t4, 96(sp)
  LW t3, 76(sp)
  BLT t4, t3, bb26
  # implict jump to bb24
bb24:
  LW t3, 24(sp)
  ADDIW t4, t3, 1
  SW t4, 8(sp)
  LW t4, 8(sp)
  LW t3, 80(sp)
  BLT t4, t3, bb25
  JAL zero, bb3
bb25:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  JAL zero, bb23
bb26:
  LUI s4, 1
  ADDIW s4, s4, -896
  LW t4, 24(sp)
  MULW s4, t4, s4
  LA s9, data
  ADD t4, s9, s4
  SD t4, 112(sp)
  LW t3, 80(sp)
  LW t4, 80(sp)
  MULW t4, t3, t4
  SW t4, 32(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb27
bb27:
  LW t4, 20(sp)
  ADD s7, t4, zero
  SLLIW s2, s7, 2
  LD t4, 112(sp)
  ADD s11, t4, s2
  LW s5, 0(s11)
  LA s0, mean
  ADD s0, s0, s2
  LW s0, 0(s0)
  SUBW s0, s5, s0
  SW s0, 0(s11)
  LA s5, stddev
  ADD s2, s5, s2
  LW s2, 0(s2)
  LW t4, 32(sp)
  MULW s2, t4, s2
  DIVW s0, s0, s2
  SW s0, 0(s11)
  ADDIW t4, s7, 1
  SW t4, 16(sp)
  LW t4, 16(sp)
  LW t3, 76(sp)
  BLT t4, t3, bb28
  JAL zero, bb24
bb28:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb27
bb29:
  ADD t4, zero, zero
  SW t4, 40(sp)
  # implict jump to bb30
bb30:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t3, 52(sp)
  SLLIW t4, t3, 2
  SW t4, 56(sp)
  LA s7, stddev
  LW t3, 56(sp)
  ADD t4, s7, t3
  SD t4, 240(sp)
  LD t4, 240(sp)
  SW zero, 0(t4)
  LW t4, 80(sp)
  BLT zero, t4, bb35
  # implict jump to bb31
bb31:
  LD t4, 240(sp)
  LW s1, 0(t4)
  LW t4, 80(sp)
  DIVW s1, s1, t4
  LD t4, 240(sp)
  SW s1, 0(t4)
  MULW s1, s1, s1
  LD t4, 240(sp)
  SW s1, 0(t4)
  ADDI s3, zero, 1
  SLT s1, s3, s1
  XORI s1, s1, 1
  BNE s1, zero, bb34
  # implict jump to bb32
bb32:
  LW t3, 52(sp)
  ADDIW t4, t3, 1
  SW t4, 36(sp)
  LW t4, 36(sp)
  LW t3, 76(sp)
  BLT t4, t3, bb33
  JAL zero, bb2
bb33:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb30
bb34:
  ADDI s1, zero, 1
  LD t4, 240(sp)
  SW s1, 0(t4)
  JAL zero, bb32
bb35:
  LA s6, mean
  LW t4, 56(sp)
  ADD s6, s6, t4
  LW t4, 0(s6)
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  # implict jump to bb36
bb36:
  LW t4, 48(sp)
  ADD s1, t4, zero
  LD t4, 240(sp)
  LW s0, 0(t4)
  LUI s8, 1
  ADDIW s8, s8, -896
  MULW s8, s1, s8
  LA s3, data
  ADD s3, s3, s8
  LW t4, 56(sp)
  ADD s3, s3, t4
  LW s3, 0(s3)
  LW t4, 0(sp)
  SUBW s3, s3, t4
  MULW s3, s3, s3
  ADDW s0, s0, s3
  LD t4, 240(sp)
  SW s0, 0(t4)
  ADDIW t4, s1, 1
  SW t4, 44(sp)
  LW t4, 44(sp)
  LW t3, 80(sp)
  BLT t4, t3, bb37
  JAL zero, bb31
bb37:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb36
bb38:
  ADDI t4, zero, 0
  SW t4, 100(sp)
  ADD t4, zero, zero
  SW t4, 64(sp)
  # implict jump to bb39
bb39:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LW t3, 84(sp)
  SLLIW t4, t3, 2
  SW t4, 88(sp)
  LA s7, mean
  LW t3, 88(sp)
  ADD t4, s7, t3
  SD t4, 248(sp)
  LD t4, 248(sp)
  SW zero, 0(t4)
  LW t4, 100(sp)
  LW t3, 80(sp)
  BLT t4, t3, bb42
  # implict jump to bb40
bb40:
  LD t4, 248(sp)
  LW s9, 0(t4)
  LW t4, 80(sp)
  DIVW s9, s9, t4
  LD t4, 248(sp)
  SW s9, 0(t4)
  LW t3, 84(sp)
  ADDIW t4, t3, 1
  SW t4, 60(sp)
  LW t4, 60(sp)
  LW t3, 76(sp)
  BLT t4, t3, bb41
  JAL zero, bb1
bb41:
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  JAL zero, bb39
bb42:
  ADD t4, zero, zero
  SW t4, 72(sp)
  # implict jump to bb43
bb43:
  LW t4, 72(sp)
  ADD s9, t4, zero
  LD t4, 248(sp)
  LW s10, 0(t4)
  LUI s11, 1
  ADDIW s11, s11, -896
  MULW s11, s9, s11
  LA s3, data
  ADD s3, s3, s11
  LW t4, 88(sp)
  ADD s3, s3, t4
  LW s3, 0(s3)
  ADDW s3, s10, s3
  LD t4, 248(sp)
  SW s3, 0(t4)
  ADDIW t4, s9, 1
  SW t4, 68(sp)
  LW t4, 68(sp)
  LW t3, 80(sp)
  BLT t4, t3, bb44
  JAL zero, bb40
bb44:
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  JAL zero, bb43
