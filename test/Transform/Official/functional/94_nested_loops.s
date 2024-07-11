.global loop3
.global loop2
.global loop1
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
  LW t4, 168(sp)
  ADD t1, t4, zero
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  LW t4, 172(sp)
  SLTI a7, t4, 10
  BNE a7, zero, bb4
  # implict jump to bb2
bb2:
  ADD t4, s8, zero
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
  ADD t4, t1, zero
  SW t4, 4(sp)
  ADD t4, zero, zero
  SW t4, 180(sp)
  ADD t4, t0, zero
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
  LW t4, 116(sp)
  ADD a3, t4, zero
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 4(sp)
  ADD a1, t4, zero
  LW t4, 8(sp)
  SLTI s0, t4, 100
  BNE s0, zero, bb10
  # implict jump to bb6
bb6:
  ADD t4, a1, zero
  SW t4, 216(sp)
  ADD t4, a3, zero
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
  ADD t4, s6, zero
  SW t4, 176(sp)
  ADD t4, s5, zero
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
  ADD t4, s0, zero
  SW t4, 60(sp)
  JAL zero, bb3
bb10:
  ADD t4, a1, zero
  SW t4, 56(sp)
  ADD t4, zero, zero
  SW t4, 52(sp)
  ADD t4, a4, zero
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
  ADD t2, t4, zero
  LW t4, 48(sp)
  ADD s0, t4, zero
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 56(sp)
  ADD s7, t4, zero
  LW t4, 0(sp)
  SLTI s6, t4, 1000
  BNE s6, zero, bb16
  # implict jump to bb12
bb12:
  ADD t4, s7, zero
  SW t4, 12(sp)
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  ADD t4, s0, zero
  SW t4, 20(sp)
  ADD t4, t2, zero
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
  ADD t4, s6, zero
  SW t4, 180(sp)
  ADD t4, s4, zero
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
  ADD t4, s7, zero
  SW t4, 100(sp)
  ADD t4, zero, zero
  SW t4, 96(sp)
  ADD t4, t2, zero
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
  ADD t0, t4, zero
  LW t4, 92(sp)
  ADD t6, t4, zero
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t4, 100(sp)
  ADD a2, t4, zero
  LUI s6, 2
  ADDIW s6, s6, 1808
  LW t4, 104(sp)
  SLT s6, t4, s6
  BNE s6, zero, bb22
  # implict jump to bb18
bb18:
  ADD t4, a2, zero
  SW t4, 64(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  ADD t4, t6, zero
  SW t4, 72(sp)
  ADD t4, t0, zero
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
  ADD t4, s5, zero
  SW t4, 52(sp)
  ADD t4, s3, zero
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
  ADD t4, s5, zero
  SW t4, 16(sp)
  ADD t4, s3, zero
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
  ADD a6, t6, zero
  ADD a5, a2, zero
  LUI a4, 24
  ADDIW a4, a4, 1696
  SLT a4, a7, a4
  BNE a4, zero, bb28
  # implict jump to bb24
bb24:
  ADD t4, a5, zero
  SW t4, 108(sp)
  ADD t4, a6, zero
  SW t4, 112(sp)
  ADD s3, a7, zero
  ADD a1, s9, zero
  # implict jump to bb25
bb25:
  LW t4, 112(sp)
  ADD s0, t4, zero
  LW t4, 108(sp)
  ADD s1, t4, zero
  LW t4, 104(sp)
  ADDIW s2, t4, 1
  LW t4, 132(sp)
  SLT s4, s2, t4
  XORI s4, s4, 1
  BNE s4, zero, bb27
  # implict jump to bb26
bb26:
  ADD t4, s1, zero
  SW t4, 100(sp)
  ADD t4, s2, zero
  SW t4, 96(sp)
  ADD t4, s0, zero
  SW t4, 92(sp)
  ADD t4, s3, zero
  SW t4, 88(sp)
  ADD t4, a1, zero
  SW t4, 84(sp)
  JAL zero, bb17
bb27:
  ADD t4, s1, zero
  SW t4, 64(sp)
  ADD t4, s2, zero
  SW t4, 68(sp)
  ADD t4, s0, zero
  SW t4, 72(sp)
  ADD t4, s3, zero
  SW t4, 76(sp)
  ADD t4, a1, zero
  SW t4, 80(sp)
  JAL zero, bb19
bb28:
  ADD a3, zero, zero
  # implict jump to bb29
bb29:
  ADD s6, s9, zero
  ADD s5, a3, zero
  ADD s0, a5, zero
  LUI t0, 244
  ADDIW t0, t0, 576
  SLT t0, s5, t0
  BNE t0, zero, bb34
  # implict jump to bb30
bb30:
  ADD t0, s5, zero
  ADD s4, s6, zero
  # implict jump to bb31
bb31:
  ADDIW s1, a7, 1
  LW t4, 128(sp)
  SLT s2, s1, t4
  XORI s2, s2, 1
  BNE s2, zero, bb33
  # implict jump to bb32
bb32:
  ADD a2, s0, zero
  ADD t6, t0, zero
  ADD s8, s1, zero
  ADD s11, s4, zero
  JAL zero, bb23
bb33:
  ADD t4, s0, zero
  SW t4, 108(sp)
  ADD t4, t0, zero
  SW t4, 112(sp)
  ADD s3, s1, zero
  ADD a1, s4, zero
  JAL zero, bb25
bb34:
  ADD s2, zero, zero
  # implict jump to bb35
bb35:
  ADD s1, s6, zero
  ADD t2, s2, zero
  LUI s10, 2441
  ADDIW s10, s10, 1664
  SLT s10, t2, s10
  BNE s10, zero, bb40
  # implict jump to bb36
bb36:
  ADD s10, t2, zero
  ADD s7, s1, zero
  # implict jump to bb37
bb37:
  ADDIW s1, s5, 1
  LW t4, 124(sp)
  SLT s2, s1, t4
  XORI s2, s2, 1
  BNE s2, zero, bb39
  # implict jump to bb38
bb38:
  ADD a5, s10, zero
  ADD a3, s1, zero
  ADD s9, s7, zero
  JAL zero, bb29
bb39:
  ADD s0, s10, zero
  ADD t0, s1, zero
  ADD s4, s7, zero
  JAL zero, bb31
bb40:
  ADDI t1, zero, 817
  REMW s1, s1, t1
  LUI t1, 1
  ADDIW t1, t1, 1664
  LW t4, 172(sp)
  MULW t1, t4, t1
  LA a4, arr1
  ADD t1, a4, t1
  LUI a4, 1
  ADDIW a4, a4, -1216
  LW t4, 8(sp)
  MULW a4, t4, a4
  ADD t1, t1, a4
  ADDI a4, zero, 960
  LW t4, 0(sp)
  MULW a4, t4, a4
  ADD t1, t1, a4
  ADDI a4, zero, 240
  LW t4, 104(sp)
  MULW a4, t4, a4
  ADD t1, t1, a4
  ADDI a4, zero, 48
  MULW a4, a7, a4
  ADD t1, t1, a4
  SLLIW a4, s5, 3
  ADD t1, t1, a4
  SLLIW a4, t2, 2
  ADD t1, t1, a4
  LW t1, 0(t1)
  ADDW s1, s1, t1
  LUI t1, 3
  ADDIW t1, t1, -1536
  LW t4, 172(sp)
  MULW t1, t4, t1
  LA a6, arr2
  ADD t1, a6, t1
  LUI a6, 1
  ADDIW a6, a6, 1280
  LW t4, 8(sp)
  MULW a6, t4, a6
  ADD t1, t1, a6
  ADDI a6, zero, 1792
  LW t4, 0(sp)
  MULW a6, t4, a6
  ADD t1, t1, a6
  ADDI a6, zero, 896
  LW t4, 104(sp)
  MULW a6, t4, a6
  ADD t1, t1, a6
  ADDI a6, zero, 224
  MULW a6, a7, a6
  ADD t1, t1, a6
  ADDI a6, zero, 28
  MULW a6, s5, a6
  ADD t1, t1, a6
  ADD t1, t1, a4
  LW t1, 0(t1)
  ADDW s1, s1, t1
  ADDIW t1, t2, 1
  LW t4, 120(sp)
  SLT t2, t1, t4
  XORI t2, t2, 1
  BNE t2, zero, bb42
  # implict jump to bb41
bb41:
  ADD s2, t1, zero
  ADD s6, s1, zero
  JAL zero, bb35
bb42:
  ADD s10, t1, zero
  ADD s7, s1, zero
  JAL zero, bb37
loop2:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb44
bb44:
  ADD s6, s5, zero
  ADD s7, s4, zero
  ADD s8, s3, zero
  ADD s9, s2, zero
  ADD s10, s1, zero
  ADD s11, s0, zero
  SLTI t0, s6, 10
  BNE t0, zero, bb46
  # implict jump to bb45
bb45:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb46:
  ADD t0, zero, zero
  # implict jump to bb47
bb47:
  ADD t1, t0, zero
  ADD t2, s7, zero
  ADD a0, s8, zero
  ADD a1, s9, zero
  ADD a2, s10, zero
  ADD a3, s11, zero
  SLTI a4, t1, 2
  BNE a4, zero, bb49
  # implict jump to bb48
bb48:
  ADDIW a4, s6, 1
  ADD s0, a3, zero
  ADD s1, a2, zero
  ADD s2, a1, zero
  ADD s3, a0, zero
  ADD s4, t2, zero
  ADD s5, a4, zero
  JAL zero, bb44
bb49:
  ADD s0, a3, zero
  ADD s1, a2, zero
  ADD s2, a1, zero
  ADD s3, a0, zero
  ADD s4, zero, zero
  # implict jump to bb50
bb50:
  ADD s5, s4, zero
  ADD t2, s3, zero
  ADD a0, s2, zero
  ADD a1, s1, zero
  ADD a2, s0, zero
  SLTI a3, s5, 3
  BNE a3, zero, bb52
  # implict jump to bb51
bb51:
  ADDIW a3, t1, 1
  ADD s11, a2, zero
  ADD s10, a1, zero
  ADD s9, a0, zero
  ADD s8, t2, zero
  ADD s7, s5, zero
  ADD t0, a3, zero
  JAL zero, bb47
bb52:
  ADD s7, a2, zero
  ADD s8, a1, zero
  ADD s9, a0, zero
  ADD s10, zero, zero
  # implict jump to bb53
bb53:
  ADD s11, s10, zero
  ADD t0, s9, zero
  ADD t2, s8, zero
  ADD a0, s7, zero
  SLTI a1, s11, 2
  BNE a1, zero, bb55
  # implict jump to bb54
bb54:
  ADDIW a1, s5, 1
  ADD s0, a0, zero
  ADD s1, t2, zero
  ADD s2, t0, zero
  ADD s3, s11, zero
  ADD s4, a1, zero
  JAL zero, bb50
bb55:
  ADD s0, a0, zero
  ADD s1, t2, zero
  ADD s2, zero, zero
  # implict jump to bb56
bb56:
  ADD s3, s2, zero
  ADD s4, s1, zero
  ADD t0, s0, zero
  SLTI t2, s3, 4
  BNE t2, zero, bb58
  # implict jump to bb57
bb57:
  ADDIW t2, s11, 1
  ADD s7, t0, zero
  ADD s8, s4, zero
  ADD s9, s3, zero
  ADD s10, t2, zero
  JAL zero, bb53
bb58:
  ADD s4, t0, zero
  ADD s7, zero, zero
  # implict jump to bb59
bb59:
  ADD s8, s7, zero
  ADD s9, s4, zero
  SLTI s10, s8, 8
  BNE s10, zero, bb61
  # implict jump to bb60
bb60:
  ADDIW s10, s3, 1
  ADD s0, s9, zero
  ADD s1, s8, zero
  ADD s2, s10, zero
  JAL zero, bb56
bb61:
  ADD s0, zero, zero
  # implict jump to bb62
bb62:
  ADD s1, s0, zero
  SLTI s2, s1, 7
  BNE s2, zero, bb64
  # implict jump to bb63
bb63:
  ADDIW s2, s8, 1
  ADD s4, s1, zero
  ADD s7, s2, zero
  JAL zero, bb59
bb64:
  LUI s2, 3
  ADDIW s2, s2, -1536
  MULW s2, s6, s2
  LA s4, arr2
  ADD s2, s4, s2
  LUI s4, 1
  ADDIW s4, s4, 1280
  MULW s4, t1, s4
  ADD s2, s2, s4
  ADDI s4, zero, 1792
  MULW s4, s5, s4
  ADD s2, s2, s4
  ADDI s4, zero, 896
  MULW s4, s11, s4
  ADD s2, s2, s4
  ADDI s4, zero, 224
  MULW s4, s3, s4
  ADD s2, s2, s4
  ADDI s4, zero, 28
  MULW s4, s8, s4
  ADD s2, s2, s4
  SLLIW s4, s1, 2
  ADD s2, s2, s4
  ADDW s4, s6, t1
  ADDW s4, s4, s11
  ADDW s4, s4, s1
  SW s4, 0(s2)
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb62
loop1:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb66
bb66:
  ADD s6, s5, zero
  ADD s7, s4, zero
  ADD s8, s3, zero
  ADD s9, s2, zero
  ADD s10, s1, zero
  ADD s11, s0, zero
  BLT s6, a0, bb89
  # implict jump to bb67
bb67:
  ADD t0, zero, zero
  # implict jump to bb68
bb68:
  BNE t0, zero, bb70
  # implict jump to bb69
bb69:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb70:
  ADD t0, zero, zero
  # implict jump to bb71
bb71:
  ADD t1, t0, zero
  ADD t2, s7, zero
  ADD a2, s8, zero
  ADD a3, s9, zero
  ADD a4, s10, zero
  ADD a5, s11, zero
  SLTI a6, t1, 2
  BNE a6, zero, bb73
  # implict jump to bb72
bb72:
  ADDIW a6, s6, 1
  ADD s0, a5, zero
  ADD s1, a4, zero
  ADD s2, a3, zero
  ADD s3, a2, zero
  ADD s4, t2, zero
  ADD s5, a6, zero
  JAL zero, bb66
bb73:
  ADD s0, a5, zero
  ADD s1, a4, zero
  ADD s2, a3, zero
  ADD s3, a2, zero
  ADD s4, zero, zero
  # implict jump to bb74
bb74:
  ADD s5, s4, zero
  ADD t2, s3, zero
  ADD a2, s2, zero
  ADD a3, s1, zero
  ADD a4, s0, zero
  SLTI a5, s5, 3
  BNE a5, zero, bb76
  # implict jump to bb75
bb75:
  ADDIW a5, t1, 1
  ADD s11, a4, zero
  ADD s10, a3, zero
  ADD s9, a2, zero
  ADD s8, t2, zero
  ADD s7, s5, zero
  ADD t0, a5, zero
  JAL zero, bb71
bb76:
  ADD s7, a4, zero
  ADD s8, a3, zero
  ADD s9, a2, zero
  ADD s10, zero, zero
  # implict jump to bb77
bb77:
  ADD s11, s10, zero
  ADD t0, s9, zero
  ADD t2, s8, zero
  ADD a2, s7, zero
  SLTI a3, s11, 4
  BNE a3, zero, bb79
  # implict jump to bb78
bb78:
  ADDIW a3, s5, 1
  ADD s0, a2, zero
  ADD s1, t2, zero
  ADD s2, t0, zero
  ADD s3, s11, zero
  ADD s4, a3, zero
  JAL zero, bb74
bb79:
  ADD s0, zero, zero
  ADD s1, t2, zero
  ADD s2, t0, zero
  # implict jump to bb80
bb80:
  ADD s3, s2, zero
  ADD s4, s1, zero
  ADD t0, s0, zero
  SLTI t2, t0, 5
  BNE t2, zero, bb82
  # implict jump to bb81
bb81:
  ADDIW t2, s11, 1
  ADD s7, t0, zero
  ADD s8, s4, zero
  ADD s9, s3, zero
  ADD s10, t2, zero
  JAL zero, bb77
bb82:
  ADD s3, s4, zero
  ADD s4, zero, zero
  # implict jump to bb83
bb83:
  ADD s7, s4, zero
  ADD s8, s3, zero
  SLTI s9, s7, 6
  BNE s9, zero, bb85
  # implict jump to bb84
bb84:
  ADDIW s9, t0, 1
  ADD s0, s9, zero
  ADD s1, s8, zero
  ADD s2, s7, zero
  JAL zero, bb80
bb85:
  ADD s0, zero, zero
  # implict jump to bb86
bb86:
  ADD s1, s0, zero
  SLTI s2, s1, 2
  BNE s2, zero, bb88
  # implict jump to bb87
bb87:
  ADDIW s2, s7, 1
  ADD s3, s1, zero
  ADD s4, s2, zero
  JAL zero, bb83
bb88:
  LUI s2, 1
  ADDIW s2, s2, 1664
  MULW s2, s6, s2
  LA s3, arr1
  ADD s2, s3, s2
  LUI s3, 1
  ADDIW s3, s3, -1216
  MULW s3, t1, s3
  ADD s2, s2, s3
  ADDI s3, zero, 960
  MULW s3, s5, s3
  ADD s2, s2, s3
  ADDI s3, zero, 240
  MULW s3, s11, s3
  ADD s2, s2, s3
  ADDI s3, zero, 48
  MULW s3, t0, s3
  ADD s2, s2, s3
  SLLIW s3, s7, 3
  ADD s2, s2, s3
  SLLIW s3, s1, 2
  ADD s2, s2, s3
  ADDW s3, s6, t1
  ADDW s3, s3, s5
  ADDW s3, s3, s11
  ADDW s3, s3, t0
  ADDW s3, s3, s7
  ADDW s3, s3, s1
  ADDW s3, s3, a0
  ADDW s3, s3, a1
  SW s3, 0(s2)
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb86
bb89:
  SLT t1, s6, a1
  ADD t0, t1, zero
  JAL zero, bb68
main:
  ADDI sp, sp, -192
  SD ra, 88(sp)
  SD s0, 96(sp)
  SD s1, 104(sp)
  SD s7, 112(sp)
  SD s2, 120(sp)
  SD s3, 128(sp)
  SD s4, 136(sp)
  SD s5, 144(sp)
  SD s6, 152(sp)
  SD s9, 160(sp)
  SD s10, 168(sp)
  SD s11, 176(sp)
  SD s8, 184(sp)
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
  SW t4, 0(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 52(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 56(sp)
  ADD t4, zero, zero
  SW t4, 60(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb91
bb91:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t4, 48(sp)
  LW t3, 24(sp)
  BLT t4, t3, bb135
  # implict jump to bb92
bb92:
  ADD s0, zero, zero
  # implict jump to bb93
bb93:
  BNE s0, zero, bb116
  # implict jump to bb94
bb94:
  ADD s0, zero, zero
  ADD s6, zero, zero
  ADD s7, zero, zero
  ADD s8, zero, zero
  ADD s11, zero, zero
  ADD s10, zero, zero
  # implict jump to bb95
bb95:
  ADD t4, s10, zero
  SW t4, 84(sp)
  ADD s5, s11, zero
  ADD s4, s8, zero
  ADD s3, s7, zero
  ADD s2, s6, zero
  ADD s1, s0, zero
  LW t4, 84(sp)
  SLTI s9, t4, 10
  BNE s9, zero, bb97
  # implict jump to bb96
bb96:
  LW t4, 32(sp)
  ADD a0, t4, zero
  LW t4, 36(sp)
  ADD a1, t4, zero
  LW t4, 40(sp)
  ADD a2, t4, zero
  LW t4, 44(sp)
  ADD a3, t4, zero
  LW t4, 0(sp)
  ADD a4, t4, zero
  LW t4, 52(sp)
  ADD a5, t4, zero
  LW t4, 56(sp)
  ADD a6, t4, zero
  CALL loop3
  ADD s9, a0, zero
  ADD a0, s9, zero
  LD ra, 88(sp)
  LD s0, 96(sp)
  LD s1, 104(sp)
  LD s7, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD s5, 144(sp)
  LD s6, 152(sp)
  LD s9, 160(sp)
  LD s10, 168(sp)
  LD s11, 176(sp)
  LD s8, 184(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb97:
  ADD s9, zero, zero
  # implict jump to bb98
bb98:
  ADD ra, s9, zero
  ADD t0, s5, zero
  ADD t1, s4, zero
  ADD t2, s3, zero
  ADD a0, s2, zero
  ADD a1, s1, zero
  SLTI a2, ra, 2
  BNE a2, zero, bb100
  # implict jump to bb99
bb99:
  LW t4, 84(sp)
  ADDIW a2, t4, 1
  ADD s0, a1, zero
  ADD s6, a0, zero
  ADD s7, t2, zero
  ADD s8, t1, zero
  ADD s11, t0, zero
  ADD s10, a2, zero
  JAL zero, bb95
bb100:
  ADD s0, a1, zero
  ADD s6, a0, zero
  ADD s7, t2, zero
  ADD s8, t1, zero
  ADD s10, zero, zero
  # implict jump to bb101
bb101:
  ADD s11, s10, zero
  ADD t0, s8, zero
  ADD t1, s7, zero
  ADD t2, s6, zero
  ADD a0, s0, zero
  SLTI a1, s11, 3
  BNE a1, zero, bb103
  # implict jump to bb102
bb102:
  ADDIW a1, ra, 1
  ADD s1, a0, zero
  ADD s2, t2, zero
  ADD s3, t1, zero
  ADD s4, t0, zero
  ADD s5, s11, zero
  ADD s9, a1, zero
  JAL zero, bb98
bb103:
  ADD s1, a0, zero
  ADD s2, t2, zero
  ADD s3, t1, zero
  ADD s4, zero, zero
  # implict jump to bb104
bb104:
  ADD s5, s4, zero
  ADD s9, s3, zero
  ADD t0, s2, zero
  ADD t1, s1, zero
  SLTI t2, s5, 2
  BNE t2, zero, bb106
  # implict jump to bb105
bb105:
  ADDIW t2, s11, 1
  ADD s0, t1, zero
  ADD s6, t0, zero
  ADD s7, s9, zero
  ADD s8, s5, zero
  ADD s10, t2, zero
  JAL zero, bb101
bb106:
  ADD s0, t1, zero
  ADD s6, t0, zero
  ADD s7, zero, zero
  # implict jump to bb107
bb107:
  ADD s8, s7, zero
  ADD s9, s6, zero
  ADD s10, s0, zero
  SLTI t0, s8, 4
  BNE t0, zero, bb109
  # implict jump to bb108
bb108:
  ADDIW t0, s5, 1
  ADD s1, s10, zero
  ADD s2, s9, zero
  ADD s3, s8, zero
  ADD s4, t0, zero
  JAL zero, bb104
bb109:
  ADD s1, s10, zero
  ADD s2, zero, zero
  # implict jump to bb110
bb110:
  ADD s3, s2, zero
  ADD s4, s1, zero
  SLTI s9, s3, 8
  BNE s9, zero, bb112
  # implict jump to bb111
bb111:
  ADDIW s9, s8, 1
  ADD s0, s4, zero
  ADD s6, s3, zero
  ADD s7, s9, zero
  JAL zero, bb107
bb112:
  ADD s0, zero, zero
  # implict jump to bb113
bb113:
  ADD s4, s0, zero
  SLTI s6, s4, 7
  BNE s6, zero, bb115
  # implict jump to bb114
bb114:
  ADDIW s6, s3, 1
  ADD s1, s4, zero
  ADD s2, s6, zero
  JAL zero, bb110
bb115:
  LUI s1, 3
  ADDIW s1, s1, -1536
  LW t4, 84(sp)
  MULW s1, t4, s1
  LA s2, arr2
  ADD s1, s2, s1
  LUI s2, 1
  ADDIW s2, s2, 1280
  MULW s2, ra, s2
  ADD s1, s1, s2
  ADDI s2, zero, 1792
  MULW s2, s11, s2
  ADD s1, s1, s2
  ADDI s2, zero, 896
  MULW s2, s5, s2
  ADD s1, s1, s2
  ADDI s2, zero, 224
  MULW s2, s8, s2
  ADD s1, s1, s2
  ADDI s2, zero, 28
  MULW s2, s3, s2
  ADD s1, s1, s2
  SLLIW s2, s4, 2
  ADD s1, s1, s2
  LW t4, 84(sp)
  ADDW s2, t4, ra
  ADDW s2, s2, s5
  ADDW s2, s2, s4
  SW s2, 0(s1)
  ADDIW s1, s4, 1
  ADD s0, s1, zero
  JAL zero, bb113
bb116:
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
  ADD s5, zero, zero
  # implict jump to bb117
bb117:
  ADD s6, s5, zero
  ADD s7, s4, zero
  ADD s8, s3, zero
  ADD s9, s2, zero
  ADD s10, s1, zero
  ADD s11, s0, zero
  SLTI ra, s6, 2
  BNE ra, zero, bb119
  # implict jump to bb118
bb118:
  LW t4, 48(sp)
  ADDIW ra, t4, 1
  ADD t4, s11, zero
  SW t4, 60(sp)
  ADD t4, s10, zero
  SW t4, 4(sp)
  ADD t4, s9, zero
  SW t4, 8(sp)
  ADD t4, s8, zero
  SW t4, 12(sp)
  ADD t4, s7, zero
  SW t4, 16(sp)
  ADD t4, ra, zero
  SW t4, 20(sp)
  JAL zero, bb91
bb119:
  ADD s7, s11, zero
  ADD s11, zero, zero
  # implict jump to bb120
bb120:
  ADD ra, s11, zero
  ADD t0, s8, zero
  ADD t1, s9, zero
  ADD t2, s10, zero
  ADD a0, s7, zero
  SLTI a1, ra, 3
  BNE a1, zero, bb122
  # implict jump to bb121
bb121:
  ADDIW a1, s6, 1
  ADD s0, a0, zero
  ADD s1, t2, zero
  ADD s2, t1, zero
  ADD s3, t0, zero
  ADD s4, ra, zero
  ADD s5, a1, zero
  JAL zero, bb117
bb122:
  ADD s0, a0, zero
  ADD s1, t2, zero
  ADD s2, t1, zero
  ADD s3, zero, zero
  # implict jump to bb123
bb123:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD t0, s1, zero
  ADD t1, s0, zero
  SLTI t2, s4, 4
  BNE t2, zero, bb125
  # implict jump to bb124
bb124:
  ADDIW t2, ra, 1
  ADD s7, t1, zero
  ADD s10, t0, zero
  ADD s9, s5, zero
  ADD s8, s4, zero
  ADD s11, t2, zero
  JAL zero, bb120
bb125:
  ADD s7, zero, zero
  ADD s8, t0, zero
  # implict jump to bb126
bb126:
  ADD s9, s5, zero
  ADD s10, s8, zero
  ADD s11, s7, zero
  SLTI t0, s11, 5
  BNE t0, zero, bb128
  # implict jump to bb127
bb127:
  ADDIW t0, s4, 1
  ADD s0, s11, zero
  ADD s1, s10, zero
  ADD s2, s9, zero
  ADD s3, t0, zero
  JAL zero, bb123
bb128:
  ADD s0, s10, zero
  ADD s1, zero, zero
  # implict jump to bb129
bb129:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s9, s2, 6
  BNE s9, zero, bb131
  # implict jump to bb130
bb130:
  ADDIW s9, s11, 1
  ADD s7, s9, zero
  ADD s8, s3, zero
  ADD s5, s2, zero
  JAL zero, bb126
bb131:
  ADD s3, zero, zero
  # implict jump to bb132
bb132:
  ADD s5, s3, zero
  SLTI s7, s5, 2
  BNE s7, zero, bb134
  # implict jump to bb133
bb133:
  ADDIW s7, s2, 1
  ADD s0, s5, zero
  ADD s1, s7, zero
  JAL zero, bb129
bb134:
  LUI s0, 1
  ADDIW s0, s0, 1664
  LW t4, 48(sp)
  MULW s0, t4, s0
  LA s1, arr1
  ADD s0, s1, s0
  LUI s1, 1
  ADDIW s1, s1, -1216
  MULW s1, s6, s1
  ADD s0, s0, s1
  ADDI s1, zero, 960
  MULW s1, ra, s1
  ADD s0, s0, s1
  ADDI s1, zero, 240
  MULW s1, s4, s1
  ADD s0, s0, s1
  ADDI s1, zero, 48
  MULW s1, s11, s1
  ADD s0, s0, s1
  SLLIW s1, s2, 3
  ADD s0, s0, s1
  SLLIW s1, s5, 2
  ADD s0, s0, s1
  LW t4, 48(sp)
  ADDW s1, t4, s6
  ADDW s1, s1, ra
  ADDW s1, s1, s4
  ADDW s1, s1, s11
  ADDW s1, s1, s2
  ADDW s1, s1, s5
  LW t4, 24(sp)
  ADDW s1, s1, t4
  LW t4, 28(sp)
  ADDW s1, s1, t4
  SW s1, 0(s0)
  ADDIW s0, s5, 1
  ADD s3, s0, zero
  JAL zero, bb132
bb135:
  LW t4, 48(sp)
  LW t3, 28(sp)
  SLT s6, t4, t3
  ADD s0, s6, zero
  JAL zero, bb93
