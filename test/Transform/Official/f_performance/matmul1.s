.global main
.section .bss
c:
.space 4000000
b:
.space 4000000
a:
.space 4000000
.section .data



.section .text
main:
  ADDI sp, sp, -272
  SD ra, 128(sp)
  SD s0, 136(sp)
  SD s1, 144(sp)
  SD s2, 152(sp)
  SD s3, 160(sp)
  SD s4, 168(sp)
  SD s5, 176(sp)
  SD s6, 184(sp)
  SD s7, 192(sp)
  SD s8, 200(sp)
  SD s9, 208(sp)
  SD s10, 224(sp)
  SD s11, 264(sp)
  ADD t4, zero, zero
  SW t4, 80(sp)
  # implict jump to bb1
bb1:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t4, 88(sp)
  SLTI s3, t4, 1000
  BNE s3, zero, bb47
  # implict jump to bb2
bb2:
  ADDI a0, zero, 23
  CALL _sysy_starttime
  ADD t4, zero, zero
  SW t4, 108(sp)
  # implict jump to bb3
bb3:
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LUI s5, 1
  ADDIW s5, s5, -96
  LW t4, 96(sp)
  MULW s5, t4, s5
  LA s6, b
  ADD t4, s6, s5
  SD t4, 256(sp)
  LW t3, 96(sp)
  SLLIW t4, t3, 2
  SW t4, 92(sp)
  ADD t4, zero, zero
  SW t4, 100(sp)
  # implict jump to bb4
bb4:
  LW t4, 100(sp)
  ADD s8, t4, zero
  SLLIW s9, s8, 2
  LD t4, 256(sp)
  ADD s9, t4, s9
  LUI s10, 1
  ADDIW s10, s10, -96
  MULW s10, s8, s10
  LA s11, a
  ADD s10, s11, s10
  LW t4, 92(sp)
  ADD s10, s10, t4
  LW s10, 0(s10)
  SW s10, 0(s9)
  ADDIW t4, s8, 1
  SW t4, 104(sp)
  LW t4, 104(sp)
  SLTI s9, t4, 1000
  BNE s9, zero, bb46
  # implict jump to bb5
bb5:
  LW t3, 96(sp)
  ADDIW t4, t3, 1
  SW t4, 112(sp)
  LW t4, 112(sp)
  SLTI s10, t4, 1000
  BNE s10, zero, bb45
  # implict jump to bb6
bb6:
  ADD t4, zero, zero
  SW t4, 24(sp)
  # implict jump to bb7
bb7:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb8
bb8:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LUI s6, 1
  ADDIW s6, s6, -96
  LW t4, 72(sp)
  MULW s6, t4, s6
  LA s5, a
  ADD t4, s5, s6
  SD t4, 248(sp)
  LW t3, 124(sp)
  SLLIW t4, t3, 2
  SW t4, 116(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb9
bb9:
  LW t4, 4(sp)
  ADD s8, t4, zero
  LW t4, 8(sp)
  ADD s3, t4, zero
  SLLIW s9, s3, 2
  LD t4, 248(sp)
  ADD s9, t4, s9
  LW s9, 0(s9)
  LUI s6, 1
  ADDIW s6, s6, -96
  MULW s6, s3, s6
  LA s5, b
  ADD s5, s5, s6
  LW t4, 116(sp)
  ADD s5, s5, t4
  LW s5, 0(s5)
  MULW s5, s9, s5
  ADDW t4, s8, s5
  SW t4, 36(sp)
  ADDIW t4, s3, 1
  SW t4, 12(sp)
  LW t4, 12(sp)
  SLTI s6, t4, 1000
  BNE s6, zero, bb44
  # implict jump to bb10
bb10:
  # implict jump to bb11
bb11:
  LUI s6, 1
  ADDIW s6, s6, -96
  LW t4, 72(sp)
  MULW s6, t4, s6
  LA s8, c
  ADD s6, s8, s6
  LW t4, 124(sp)
  SLLIW s8, t4, 2
  ADD s6, s6, s8
  LW t4, 36(sp)
  SW t4, 0(s6)
  LW t3, 124(sp)
  ADDIW t4, t3, 1
  SW t4, 20(sp)
  LW t4, 20(sp)
  SLTI s8, t4, 1000
  BNE s8, zero, bb43
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  LW t3, 72(sp)
  ADDIW t4, t3, 1
  SW t4, 28(sp)
  LW t4, 28(sp)
  SLTI s9, t4, 1000
  BNE s9, zero, bb42
  # implict jump to bb14
bb14:
  ADD t4, zero, zero
  SW t4, 60(sp)
  # implict jump to bb15
bb15:
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LUI s11, 1
  ADDIW s11, s11, -96
  LW t4, 32(sp)
  MULW s11, t4, s11
  LA s7, c
  ADD t4, s7, s11
  SD t4, 240(sp)
  ADD t4, zero, zero
  SW t4, 44(sp)
  LUI s5, 524288
  ADDIW s5, s5, -1
  ADD t4, zero, s5
  SW t4, 0(sp)
  # implict jump to bb16
bb16:
  LW t4, 0(sp)
  ADD s4, t4, zero
  LW t4, 44(sp)
  ADD s3, t4, zero
  SLLIW s1, s3, 2
  LD t4, 240(sp)
  ADD s1, t4, s1
  LW s1, 0(s1)
  BLT s1, s4, bb41
  # implict jump to bb17
bb17:
  # implict jump to bb18
bb18:
  ADD t4, s4, zero
  SW t4, 40(sp)
  ADDIW t4, s3, 1
  SW t4, 48(sp)
  LW t4, 48(sp)
  SLTI s3, t4, 1000
  BNE s3, zero, bb40
  # implict jump to bb19
bb19:
  # implict jump to bb20
bb20:
  LUI s3, 1
  ADDIW s3, s3, -96
  LW t4, 32(sp)
  MULW s3, t4, s3
  LA s4, c
  ADD t4, s4, s3
  SD t4, 232(sp)
  ADD t4, zero, zero
  SW t4, 52(sp)
  # implict jump to bb21
bb21:
  LW t4, 52(sp)
  ADD s6, t4, zero
  SLLIW s10, s6, 2
  LD t4, 232(sp)
  ADD s10, t4, s10
  LW t4, 40(sp)
  SW t4, 0(s10)
  ADDIW t4, s6, 1
  SW t4, 56(sp)
  LW t4, 56(sp)
  SLTI s10, t4, 1000
  BNE s10, zero, bb39
  # implict jump to bb22
bb22:
  LW t3, 32(sp)
  ADDIW t4, t3, 1
  SW t4, 64(sp)
  LW t4, 64(sp)
  SLTI s8, t4, 1000
  BNE s8, zero, bb38
  # implict jump to bb23
bb23:
  ADD s8, zero, zero
  # implict jump to bb24
bb24:
  ADD t4, s8, zero
  SW t4, 120(sp)
  LUI s2, 1
  ADDIW s2, s2, -96
  LW t4, 120(sp)
  MULW s2, t4, s2
  LA s5, c
  ADD t4, s5, s2
  SD t4, 216(sp)
  LW t3, 120(sp)
  SLLIW t4, t3, 2
  SW t4, 68(sp)
  ADD t4, zero, zero
  SW t4, 76(sp)
  # implict jump to bb25
bb25:
  LW t4, 76(sp)
  ADD s11, t4, zero
  SLLIW s1, s11, 2
  LD t4, 216(sp)
  ADD s1, t4, s1
  LUI s3, 1
  ADDIW s3, s3, -96
  MULW s3, s11, s3
  LA s4, c
  ADD s3, s4, s3
  LW t4, 68(sp)
  ADD s3, s3, t4
  LW s3, 0(s3)
  SUBW s3, zero, s3
  SW s3, 0(s1)
  ADDIW t4, s11, 1
  SW t4, 84(sp)
  LW t4, 84(sp)
  SLTI s3, t4, 1000
  BNE s3, zero, bb37
  # implict jump to bb26
bb26:
  LW t4, 120(sp)
  ADDIW s3, t4, 1
  SLTI s4, s3, 1000
  BNE s4, zero, bb36
  # implict jump to bb27
bb27:
  ADD s4, zero, zero
  ADD s11, zero, zero
  # implict jump to bb28
bb28:
  ADD s6, s11, zero
  ADD s9, s4, zero
  LUI s10, 1
  ADDIW s10, s10, -96
  MULW s10, s6, s10
  LA s5, c
  ADD s5, s5, s10
  ADD s10, zero, zero
  # implict jump to bb29
bb29:
  ADD s2, s9, zero
  ADD s7, s10, zero
  SLLIW s0, s7, 2
  ADD s0, s5, s0
  LW s0, 0(s0)
  ADDW s0, s2, s0
  ADDIW s2, s7, 1
  SLTI s7, s2, 1000
  BNE s7, zero, bb35
  # implict jump to bb30
bb30:
  # implict jump to bb31
bb31:
  ADDIW s7, s6, 1
  SLTI s1, s7, 1000
  BNE s1, zero, bb34
  # implict jump to bb32
bb32:
  # implict jump to bb33
bb33:
  ADDI a0, zero, 92
  CALL _sysy_stoptime
  ADD a0, s0, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 128(sp)
  LD s0, 136(sp)
  LD s1, 144(sp)
  LD s2, 152(sp)
  LD s3, 160(sp)
  LD s4, 168(sp)
  LD s5, 176(sp)
  LD s6, 184(sp)
  LD s7, 192(sp)
  LD s8, 200(sp)
  LD s9, 208(sp)
  LD s10, 224(sp)
  LD s11, 264(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb34:
  ADD s4, s0, zero
  ADD s11, s7, zero
  JAL zero, bb28
bb35:
  ADD s10, s2, zero
  ADD s9, s0, zero
  JAL zero, bb29
bb36:
  ADD s8, s3, zero
  JAL zero, bb24
bb37:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  JAL zero, bb25
bb38:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  JAL zero, bb15
bb39:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  JAL zero, bb21
bb40:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  JAL zero, bb16
bb41:
  ADD s4, s1, zero
  JAL zero, bb18
bb42:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  JAL zero, bb7
bb43:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb8
bb44:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb9
bb45:
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  JAL zero, bb3
bb46:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  JAL zero, bb4
bb47:
  LUI s0, 1
  ADDIW s0, s0, -96
  LW t4, 88(sp)
  MULW s0, t4, s0
  LA s1, a
  ADD s0, s1, s0
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  XORI s1, s0, 1000
  BNE s1, zero, bb49
  # implict jump to bb48
bb48:
  LW t4, 88(sp)
  ADDIW s1, t4, 1
  ADD t4, s1, zero
  SW t4, 80(sp)
  JAL zero, bb1
bb49:
  ADD a0, s0, zero
  LD ra, 128(sp)
  LD s0, 136(sp)
  LD s1, 144(sp)
  LD s2, 152(sp)
  LD s3, 160(sp)
  LD s4, 168(sp)
  LD s5, 176(sp)
  LD s6, 184(sp)
  LD s7, 192(sp)
  LD s8, 200(sp)
  LD s9, 208(sp)
  LD s10, 224(sp)
  LD s11, 264(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
