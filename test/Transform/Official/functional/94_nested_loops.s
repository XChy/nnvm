.global loop3
.global main
.section .bss
arr2:
.space 107520
arr1:
.space 57600
.section .data


.section .text
loop3:
  ADDI sp, sp, -336
  SD ra, 224(sp)
  SD s0, 232(sp)
  SD s1, 240(sp)
  SD s2, 248(sp)
  SD s3, 256(sp)
  SD s4, 264(sp)
  SD s5, 272(sp)
  SD s6, 280(sp)
  SD s7, 288(sp)
  SD s8, 296(sp)
  SD s9, 304(sp)
  SD s10, 312(sp)
  SD s11, 320(sp)
  ADD t4, a0, zero
  SW t4, 144(sp)
  ADD t4, a1, zero
  SW t4, 140(sp)
  ADD t4, a2, zero
  SW t4, 136(sp)
  ADD t4, a3, zero
  SW t4, 132(sp)
  ADD t4, a4, zero
  SW t4, 128(sp)
  ADD t4, a5, zero
  SW t4, 124(sp)
  ADD t4, a6, zero
  SW t4, 120(sp)
  ADD t4, zero, zero
  SW t4, 176(sp)
  ADD t4, zero, zero
  SW t4, 168(sp)
  ADD t4, zero, zero
  SW t4, 164(sp)
  ADD t4, zero, zero
  SW t4, 160(sp)
  ADD t4, zero, zero
  SW t4, 156(sp)
  ADD t4, zero, zero
  SW t4, 152(sp)
  ADD t4, zero, zero
  SW t4, 148(sp)
  # implict jump to bb1
bb1:
  LW t4, 148(sp)
  ADD s8, t4, zero
  LW t4, 152(sp)
  ADD s9, t4, zero
  LW t4, 156(sp)
  ADD s10, t4, zero
  LW t4, 160(sp)
  ADD s11, t4, zero
  LW t4, 164(sp)
  ADD t0, t4, zero
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  LW t4, 176(sp)
  ADD t2, t4, zero
  LW t4, 172(sp)
  SLTI a7, t4, 10
  BNE a7, zero, bb4
  # implict jump to bb2
bb2:
  ADD t4, s10, zero
  SW t4, 60(sp)
  # implict jump to bb3
bb3:
  LW t4, 60(sp)
  ADD s0, t4, zero
  ADD a0, s0, zero
  LD ra, 224(sp)
  LD s0, 232(sp)
  LD s1, 240(sp)
  LD s2, 248(sp)
  LD s3, 256(sp)
  LD s4, 264(sp)
  LD s5, 272(sp)
  LD s6, 280(sp)
  LD s7, 288(sp)
  LD s8, 296(sp)
  LD s9, 304(sp)
  LD s10, 312(sp)
  LD s11, 320(sp)
  ADDI sp, sp, 336
  JALR zero, 0(ra)
bb4:
  ADD t4, t2, zero
  SW t4, 4(sp)
  ADD t4, t0, zero
  SW t4, 180(sp)
  ADD t4, zero, zero
  SW t4, 116(sp)
  ADD t4, s11, zero
  SW t4, 184(sp)
  ADD t4, s10, zero
  SW t4, 188(sp)
  ADD t4, s9, zero
  SW t4, 192(sp)
  ADD t4, s8, zero
  SW t4, 196(sp)
  # implict jump to bb5
bb5:
  LW t4, 196(sp)
  ADD a7, t4, zero
  LW t4, 192(sp)
  ADD a6, t4, zero
  LW t4, 188(sp)
  ADD a5, t4, zero
  LW t4, 184(sp)
  ADD a4, t4, zero
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 180(sp)
  ADD a2, t4, zero
  LW t4, 4(sp)
  ADD a1, t4, zero
  LW t4, 8(sp)
  SLTI s0, t4, 100
  BNE s0, zero, bb10
  # implict jump to bb6
bb6:
  ADD t4, a1, zero
  SW t4, 216(sp)
  ADD t4, a2, zero
  SW t4, 212(sp)
  ADD t4, a4, zero
  SW t4, 208(sp)
  ADD t4, a5, zero
  SW t4, 204(sp)
  ADD t4, a6, zero
  SW t4, 200(sp)
  ADD t4, a7, zero
  SW t4, 220(sp)
  # implict jump to bb7
bb7:
  LW t4, 220(sp)
  ADD s0, t4, zero
  LW t4, 200(sp)
  ADD s1, t4, zero
  LW t4, 204(sp)
  ADD s2, t4, zero
  LW t4, 208(sp)
  ADD s3, t4, zero
  LW t4, 212(sp)
  ADD s4, t4, zero
  LW t4, 216(sp)
  ADD s5, t4, zero
  LW t4, 172(sp)
  ADDIW s6, t4, 1
  LW t4, 144(sp)
  SLT s7, s6, t4
  XORI s7, s7, 1
  BNE s7, zero, bb9
  # implict jump to bb8
bb8:
  ADD t4, s5, zero
  SW t4, 176(sp)
  ADD t4, s6, zero
  SW t4, 168(sp)
  ADD t4, s4, zero
  SW t4, 164(sp)
  ADD t4, s3, zero
  SW t4, 160(sp)
  ADD t4, s2, zero
  SW t4, 156(sp)
  ADD t4, s1, zero
  SW t4, 152(sp)
  ADD t4, s0, zero
  SW t4, 148(sp)
  JAL zero, bb1
bb9:
  ADD t4, s2, zero
  SW t4, 60(sp)
  JAL zero, bb3
bb10:
  ADD t4, a1, zero
  SW t4, 56(sp)
  ADD t4, a2, zero
  SW t4, 52(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  ADD t4, a5, zero
  SW t4, 44(sp)
  ADD t4, a6, zero
  SW t4, 40(sp)
  ADD t4, a7, zero
  SW t4, 36(sp)
  # implict jump to bb11
bb11:
  LW t4, 36(sp)
  ADD s2, t4, zero
  LW t4, 40(sp)
  ADD s1, t4, zero
  LW t4, 44(sp)
  ADD t1, t4, zero
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 52(sp)
  ADD s7, t4, zero
  LW t4, 56(sp)
  ADD a4, t4, zero
  LW t4, 0(sp)
  SLTI s6, t4, 1000
  BNE s6, zero, bb16
  # implict jump to bb12
bb12:
  ADD t4, a4, zero
  SW t4, 12(sp)
  ADD t4, s7, zero
  SW t4, 16(sp)
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  ADD t4, t1, zero
  SW t4, 24(sp)
  ADD t4, s1, zero
  SW t4, 28(sp)
  ADD t4, s2, zero
  SW t4, 32(sp)
  # implict jump to bb13
bb13:
  LW t4, 32(sp)
  ADD s0, t4, zero
  LW t4, 28(sp)
  ADD s1, t4, zero
  LW t4, 24(sp)
  ADD s2, t4, zero
  LW t4, 20(sp)
  ADD s3, t4, zero
  LW t4, 16(sp)
  ADD s4, t4, zero
  LW t4, 12(sp)
  ADD s5, t4, zero
  LW t4, 8(sp)
  ADDIW s6, t4, 1
  LW t4, 140(sp)
  SLT s7, s6, t4
  XORI s7, s7, 1
  BNE s7, zero, bb15
  # implict jump to bb14
bb14:
  ADD t4, s5, zero
  SW t4, 4(sp)
  ADD t4, s4, zero
  SW t4, 180(sp)
  ADD t4, s6, zero
  SW t4, 116(sp)
  ADD t4, s3, zero
  SW t4, 184(sp)
  ADD t4, s2, zero
  SW t4, 188(sp)
  ADD t4, s1, zero
  SW t4, 192(sp)
  ADD t4, s0, zero
  SW t4, 196(sp)
  JAL zero, bb5
bb15:
  ADD t4, s5, zero
  SW t4, 216(sp)
  ADD t4, s4, zero
  SW t4, 212(sp)
  ADD t4, s3, zero
  SW t4, 208(sp)
  ADD t4, s2, zero
  SW t4, 204(sp)
  ADD t4, s1, zero
  SW t4, 200(sp)
  ADD t4, s0, zero
  SW t4, 220(sp)
  JAL zero, bb7
bb16:
  ADD t4, zero, zero
  SW t4, 100(sp)
  ADD t4, s7, zero
  SW t4, 96(sp)
  ADD t4, t1, zero
  SW t4, 92(sp)
  ADD t4, s1, zero
  SW t4, 88(sp)
  ADD t4, s2, zero
  SW t4, 84(sp)
  # implict jump to bb17
bb17:
  LW t4, 84(sp)
  ADD s11, t4, zero
  LW t4, 88(sp)
  ADD t6, t4, zero
  LW t4, 92(sp)
  ADD t0, t4, zero
  LW t4, 96(sp)
  ADD t2, t4, zero
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LUI s6, 2
  ADDIW s6, s6, 1808
  LW t4, 104(sp)
  SLT s6, t4, s6
  BNE s6, zero, bb22
  # implict jump to bb18
bb18:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  ADD t4, t2, zero
  SW t4, 68(sp)
  ADD t4, t0, zero
  SW t4, 72(sp)
  ADD t4, t6, zero
  SW t4, 76(sp)
  ADD t4, s11, zero
  SW t4, 80(sp)
  # implict jump to bb19
bb19:
  LW t4, 80(sp)
  ADD s0, t4, zero
  LW t4, 76(sp)
  ADD s1, t4, zero
  LW t4, 72(sp)
  ADD s2, t4, zero
  LW t4, 68(sp)
  ADD s3, t4, zero
  LW t4, 64(sp)
  ADD s4, t4, zero
  LW t4, 0(sp)
  ADDIW s5, t4, 1
  LW t4, 136(sp)
  SLT s6, s5, t4
  XORI s6, s6, 1
  BNE s6, zero, bb21
  # implict jump to bb20
bb20:
  ADD t4, s4, zero
  SW t4, 56(sp)
  ADD t4, s3, zero
  SW t4, 52(sp)
  ADD t4, s5, zero
  SW t4, 48(sp)
  ADD t4, s2, zero
  SW t4, 44(sp)
  ADD t4, s1, zero
  SW t4, 40(sp)
  ADD t4, s0, zero
  SW t4, 36(sp)
  JAL zero, bb11
bb21:
  ADD t4, s4, zero
  SW t4, 12(sp)
  ADD t4, s3, zero
  SW t4, 16(sp)
  ADD t4, s5, zero
  SW t4, 20(sp)
  ADD t4, s2, zero
  SW t4, 24(sp)
  ADD t4, s1, zero
  SW t4, 28(sp)
  ADD t4, s0, zero
  SW t4, 32(sp)
  JAL zero, bb13
bb22:
  ADD s8, zero, zero
  # implict jump to bb23
bb23:
  ADD s9, s11, zero
  ADD a7, s8, zero
  ADD a6, t0, zero
  ADD a5, t2, zero
  LUI s3, 24
  ADDIW s3, s3, 1696
  SLT s3, a7, s3
  BNE s3, zero, bb28
  # implict jump to bb24
bb24:
  ADD t4, a5, zero
  SW t4, 108(sp)
  ADD t4, a6, zero
  SW t4, 112(sp)
  ADD a1, a7, zero
  # implict jump to bb25
bb25:
  LW t4, 112(sp)
  ADD s0, t4, zero
  LW t4, 108(sp)
  ADD s1, t4, zero
  LW t4, 104(sp)
  ADDIW s2, t4, 1
  LW t4, 132(sp)
  SLT s3, s2, t4
  XORI s3, s3, 1
  BNE s3, zero, bb27
  # implict jump to bb26
bb26:
  ADD t4, s2, zero
  SW t4, 100(sp)
  ADD t4, s1, zero
  SW t4, 96(sp)
  ADD t4, s0, zero
  SW t4, 92(sp)
  ADD t4, a1, zero
  SW t4, 88(sp)
  ADD t4, s9, zero
  SW t4, 84(sp)
  JAL zero, bb17
bb27:
  ADD t4, s2, zero
  SW t4, 64(sp)
  ADD t4, s1, zero
  SW t4, 68(sp)
  ADD t4, s0, zero
  SW t4, 72(sp)
  ADD t4, a1, zero
  SW t4, 76(sp)
  ADD t4, s9, zero
  SW t4, 80(sp)
  JAL zero, bb19
bb28:
  ADD s0, zero, zero
  # implict jump to bb29
bb29:
  ADD s6, s0, zero
  ADD a4, a6, zero
  ADD s5, a5, zero
  LUI t6, 244
  ADDIW t6, t6, 576
  SLT t6, s6, t6
  BNE t6, zero, bb34
  # implict jump to bb30
bb30:
  ADD t6, a4, zero
  ADD s4, s6, zero
  # implict jump to bb31
bb31:
  ADDIW s0, a7, 1
  LW t4, 128(sp)
  SLT s1, s0, t4
  XORI s1, s1, 1
  BNE s1, zero, bb33
  # implict jump to bb32
bb32:
  ADD t2, s5, zero
  ADD t0, t6, zero
  ADD s8, s0, zero
  ADD s11, s4, zero
  JAL zero, bb23
bb33:
  ADD t4, s5, zero
  SW t4, 108(sp)
  ADD t4, t6, zero
  SW t4, 112(sp)
  ADD a1, s0, zero
  ADD s9, s4, zero
  JAL zero, bb25
bb34:
  ADD s2, zero, zero
  # implict jump to bb35
bb35:
  ADD s1, a4, zero
  ADD t1, s2, zero
  LUI s7, 2441
  ADDIW s7, s7, 1664
  SLT s7, t1, s7
  BNE s7, zero, bb40
  # implict jump to bb36
bb36:
  ADD s7, t1, zero
  ADD s10, s1, zero
  # implict jump to bb37
bb37:
  ADDIW s1, s6, 1
  LW t4, 124(sp)
  SLT s2, s1, t4
  XORI s2, s2, 1
  BNE s2, zero, bb39
  # implict jump to bb38
bb38:
  ADD a5, s7, zero
  ADD a6, s10, zero
  ADD s0, s1, zero
  JAL zero, bb29
bb39:
  ADD s5, s7, zero
  ADD t6, s10, zero
  ADD s4, s1, zero
  JAL zero, bb31
bb40:
  ADDI a3, zero, 817
  REMW s1, s1, a3
  LUI a3, 1
  ADDIW a3, a3, 1664
  LW t4, 172(sp)
  MULW a3, t4, a3
  LA s3, arr1
  ADD s3, s3, a3
  LUI a3, 1
  ADDIW a3, a3, -1216
  LW t4, 8(sp)
  MULW a3, t4, a3
  ADD s3, s3, a3
  ADDI a3, zero, 960
  LW t4, 0(sp)
  MULW a3, t4, a3
  ADD s3, s3, a3
  ADDI a3, zero, 240
  LW t4, 104(sp)
  MULW a3, t4, a3
  ADD s3, s3, a3
  ADDI a3, zero, 48
  MULW a3, a7, a3
  ADD s3, s3, a3
  SLLIW a3, s6, 3
  ADD s3, s3, a3
  SLLIW a3, t1, 2
  ADD s3, s3, a3
  LW s3, 0(s3)
  ADDW s1, s1, s3
  LUI s3, 3
  ADDIW s3, s3, -1536
  LW t4, 172(sp)
  MULW s3, t4, s3
  LA a2, arr2
  ADD s3, a2, s3
  LUI a2, 1
  ADDIW a2, a2, 1280
  LW t4, 8(sp)
  MULW a2, t4, a2
  ADD s3, s3, a2
  ADDI a2, zero, 1792
  LW t4, 0(sp)
  MULW a2, t4, a2
  ADD s3, s3, a2
  ADDI a2, zero, 896
  LW t4, 104(sp)
  MULW a2, t4, a2
  ADD s3, s3, a2
  ADDI a2, zero, 224
  MULW a2, a7, a2
  ADD s3, s3, a2
  ADDI a2, zero, 28
  MULW a2, s6, a2
  ADD s3, s3, a2
  ADD s3, s3, a3
  LW s3, 0(s3)
  ADDW s1, s1, s3
  ADDIW s3, t1, 1
  LW t4, 120(sp)
  SLT t1, s3, t4
  XORI t1, t1, 1
  BNE t1, zero, bb42
  # implict jump to bb41
bb41:
  ADD s2, s3, zero
  ADD a4, s1, zero
  JAL zero, bb35
bb42:
  ADD s7, s3, zero
  ADD s10, s1, zero
  JAL zero, bb37
main:
  ADDI sp, sp, -208
  SD s0, 88(sp)
  SD ra, 104(sp)
  SD s7, 112(sp)
  SD s1, 120(sp)
  SD s2, 128(sp)
  SD s4, 136(sp)
  SD s6, 144(sp)
  SD s3, 152(sp)
  SD s5, 160(sp)
  SD s11, 168(sp)
  SD s9, 176(sp)
  SD s8, 184(sp)
  SD s10, 192(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 20(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 24(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 28(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 32(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 36(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 40(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 44(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 48(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb44
bb44:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t4, 52(sp)
  LW t3, 20(sp)
  BLT t4, t3, bb100
  # implict jump to bb45
bb45:
  ADD s11, zero, zero
  # implict jump to bb46
bb46:
  BNE s11, zero, bb75
  # implict jump to bb47
bb47:
  ADD s10, zero, zero
  # implict jump to bb48
bb48:
  ADD t4, s10, zero
  SW t4, 68(sp)
  ADD s8, zero, zero
  # implict jump to bb49
bb49:
  ADD t4, s8, zero
  SW t4, 64(sp)
  ADD s6, zero, zero
  # implict jump to bb50
bb50:
  ADD t4, s6, zero
  SW t4, 60(sp)
  ADD s4, zero, zero
  # implict jump to bb51
bb51:
  ADD t4, s4, zero
  SW t4, 56(sp)
  ADD s2, zero, zero
  # implict jump to bb52
bb52:
  ADD t4, s2, zero
  SW t4, 8(sp)
  ADD t4, zero, zero
  SW t4, 80(sp)
  # implict jump to bb53
bb53:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LUI s9, 3
  ADDIW s9, s9, -1536
  LW t4, 68(sp)
  MULW s9, t4, s9
  LA s1, arr2
  ADD s1, s1, s9
  LUI s9, 1
  ADDIW s9, s9, 1280
  LW t4, 64(sp)
  MULW s9, t4, s9
  ADD s1, s1, s9
  ADDI s9, zero, 1792
  LW t4, 60(sp)
  MULW s9, t4, s9
  ADD s1, s1, s9
  ADDI s9, zero, 896
  LW t4, 56(sp)
  MULW s9, t4, s9
  ADD s1, s1, s9
  ADDI s9, zero, 224
  LW t4, 8(sp)
  MULW s9, t4, s9
  ADD s1, s1, s9
  ADDI s9, zero, 28
  LW t4, 12(sp)
  MULW s9, t4, s9
  ADD t4, s1, s9
  SD t4, 96(sp)
  LW t4, 68(sp)
  LW t3, 64(sp)
  ADDW s9, t4, t3
  LW t3, 56(sp)
  ADDW t4, s9, t3
  SW t4, 4(sp)
  ADD t4, zero, zero
  SW t4, 72(sp)
  # implict jump to bb54
bb54:
  LW t4, 72(sp)
  ADD s1, t4, zero
  SLLIW s3, s1, 2
  LD t4, 96(sp)
  ADD s3, t4, s3
  LW t4, 4(sp)
  ADDW s5, t4, s1
  SW s5, 0(s3)
  ADDIW t4, s1, 1
  SW t4, 76(sp)
  LW t4, 76(sp)
  SLTI s3, t4, 7
  BNE s3, zero, bb74
  # implict jump to bb55
bb55:
  # implict jump to bb56
bb56:
  LW t4, 12(sp)
  ADDIW s3, t4, 1
  SLTI s5, s3, 8
  BNE s5, zero, bb73
  # implict jump to bb57
bb57:
  # implict jump to bb58
bb58:
  LW t4, 8(sp)
  ADDIW s5, t4, 1
  SLTI s7, s5, 4
  BNE s7, zero, bb72
  # implict jump to bb59
bb59:
  # implict jump to bb60
bb60:
  LW t4, 56(sp)
  ADDIW s7, t4, 1
  SLTI s11, s7, 2
  BNE s11, zero, bb71
  # implict jump to bb61
bb61:
  # implict jump to bb62
bb62:
  LW t4, 60(sp)
  ADDIW s11, t4, 1
  SLTI s9, s11, 3
  BNE s9, zero, bb70
  # implict jump to bb63
bb63:
  # implict jump to bb64
bb64:
  LW t4, 64(sp)
  ADDIW s9, t4, 1
  SLTI s1, s9, 2
  BNE s1, zero, bb69
  # implict jump to bb65
bb65:
  # implict jump to bb66
bb66:
  LW t4, 68(sp)
  ADDIW s1, t4, 1
  SLTI s0, s1, 10
  BNE s0, zero, bb68
  # implict jump to bb67
bb67:
  LW t4, 28(sp)
  ADD a0, t4, zero
  LW t4, 32(sp)
  ADD a1, t4, zero
  LW t4, 36(sp)
  ADD a2, t4, zero
  LW t4, 40(sp)
  ADD a3, t4, zero
  LW t4, 44(sp)
  ADD a4, t4, zero
  LW t4, 48(sp)
  ADD a5, t4, zero
  LW t4, 0(sp)
  ADD a6, t4, zero
  CALL loop3
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD s0, 88(sp)
  LD ra, 104(sp)
  LD s7, 112(sp)
  LD s1, 120(sp)
  LD s2, 128(sp)
  LD s4, 136(sp)
  LD s6, 144(sp)
  LD s3, 152(sp)
  LD s5, 160(sp)
  LD s11, 168(sp)
  LD s9, 176(sp)
  LD s8, 184(sp)
  LD s10, 192(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb68:
  ADD s10, s1, zero
  JAL zero, bb48
bb69:
  ADD s8, s9, zero
  JAL zero, bb49
bb70:
  ADD s6, s11, zero
  JAL zero, bb50
bb71:
  ADD s4, s7, zero
  JAL zero, bb51
bb72:
  ADD s2, s5, zero
  JAL zero, bb52
bb73:
  ADD t4, s3, zero
  SW t4, 80(sp)
  JAL zero, bb53
bb74:
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  JAL zero, bb54
bb75:
  ADD s0, zero, zero
  # implict jump to bb76
bb76:
  ADD s1, s0, zero
  ADD s2, zero, zero
  # implict jump to bb77
bb77:
  ADD s3, s2, zero
  ADD s4, zero, zero
  # implict jump to bb78
bb78:
  ADD s5, s4, zero
  ADD s6, zero, zero
  # implict jump to bb79
bb79:
  ADD s7, s6, zero
  ADD s8, zero, zero
  # implict jump to bb80
bb80:
  ADD s9, s8, zero
  LUI s10, 1
  ADDIW s10, s10, 1664
  LW t4, 52(sp)
  MULW s10, t4, s10
  LA s11, arr1
  ADD s10, s11, s10
  LUI s11, 1
  ADDIW s11, s11, -1216
  MULW s11, s1, s11
  ADD s10, s10, s11
  ADDI s11, zero, 960
  MULW s11, s3, s11
  ADD s10, s10, s11
  ADDI s11, zero, 240
  MULW s11, s5, s11
  ADD s10, s10, s11
  ADDI s11, zero, 48
  MULW s11, s7, s11
  ADD s10, s10, s11
  SLLIW s11, s9, 3
  ADD s10, s10, s11
  LW t4, 52(sp)
  ADDW s11, t4, s1
  ADDW s11, s11, s3
  ADDW s11, s11, s5
  ADDW s11, s11, s7
  ADDW s11, s11, s9
  ADD ra, zero, zero
  # implict jump to bb81
bb81:
  ADD t0, ra, zero
  SLLIW t1, t0, 2
  ADD t1, s10, t1
  ADDW t2, s11, t0
  LW t4, 20(sp)
  ADDW t2, t2, t4
  LW t4, 24(sp)
  ADDW t2, t2, t4
  SW t2, 0(t1)
  ADDIW t0, t0, 1
  SLTI t1, t0, 2
  BNE t1, zero, bb99
  # implict jump to bb82
bb82:
  # implict jump to bb83
bb83:
  ADDIW t1, s9, 1
  SLTI t2, t1, 6
  BNE t2, zero, bb98
  # implict jump to bb84
bb84:
  # implict jump to bb85
bb85:
  ADDIW t2, s7, 1
  SLTI a0, t2, 5
  BNE a0, zero, bb97
  # implict jump to bb86
bb86:
  # implict jump to bb87
bb87:
  ADDIW a0, s5, 1
  SLTI a1, a0, 4
  BNE a1, zero, bb96
  # implict jump to bb88
bb88:
  # implict jump to bb89
bb89:
  ADDIW a1, s3, 1
  SLTI a2, a1, 3
  BNE a2, zero, bb95
  # implict jump to bb90
bb90:
  # implict jump to bb91
bb91:
  ADDIW a2, s1, 1
  SLTI a3, a2, 2
  BNE a3, zero, bb94
  # implict jump to bb92
bb92:
  # implict jump to bb93
bb93:
  LW t4, 52(sp)
  ADDIW a3, t4, 1
  ADD t4, a3, zero
  SW t4, 16(sp)
  JAL zero, bb44
bb94:
  ADD s0, a2, zero
  JAL zero, bb76
bb95:
  ADD s2, a1, zero
  JAL zero, bb77
bb96:
  ADD s4, a0, zero
  JAL zero, bb78
bb97:
  ADD s6, t2, zero
  JAL zero, bb79
bb98:
  ADD s8, t1, zero
  JAL zero, bb80
bb99:
  ADD ra, t0, zero
  JAL zero, bb81
bb100:
  LW t4, 52(sp)
  LW t3, 24(sp)
  SLT s10, t4, t3
  ADD s11, s10, zero
  JAL zero, bb46
