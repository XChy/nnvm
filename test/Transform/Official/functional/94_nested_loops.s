.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global loop3
.global main
.section .bss
arr2:
.space 107520
arr1:
.space 57600
.section .data


.section .text
loop3:   # loop depth 0
  ADDI sp, sp, -192
  SD ra, 24(sp)
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s5, 72(sp)
  SD s6, 80(sp)
  SD s7, 88(sp)
  SD s8, 96(sp)
  SD s9, 104(sp)
  SD s10, 112(sp)
  ADD a7, zero, zero
  ADD s2, zero, zero
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD s3, zero, zero
  ADD s7, zero, zero
  ADD t0, zero, zero
  SW a2, 0(sp)
  SW a1, 20(sp)
  SW a0, 16(sp)
  # implict jump to bb1
bb1:   # loop depth 1
  SLTI a1, s7, 10
  BNE a1, zero, bb4
  # implict jump to bb2
bb2:   # loop depth 1
  ADD a0, a7, zero
  # implict jump to bb3
bb3:   # loop depth 0
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD s10, 112(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb4:   # loop depth 1
  LUI a2, 3
  LUI a1, 1
  ADDIW a2, a2, -1536
  ADDIW a1, a1, 1664
  MULW s1, s7, a2
  MULW s0, s7, a1
  LA s8, arr2
  LA s10, arr1
  ADD s6, zero, zero
  ADD s9, s8, s1
  ADD s8, s10, s0
  # implict jump to bb5
bb5:   # loop depth 2
  SLTI s0, s6, 100
  BNE s0, zero, bb10
  # implict jump to bb6
bb6:   # loop depth 2
  # implict jump to bb7
bb7:   # loop depth 1
  ADDIW s7, s7, 1
  LW t1, 16(sp)
  BGE s7, t1, bb9
  # implict jump to bb8
bb8:   # loop depth 1
  JAL zero, bb1
bb9:   # loop depth 0
  ADD a0, a7, zero
  JAL zero, bb3
bb10:   # loop depth 2
  LUI t2, 1
  LUI s0, 1
  ADDIW t2, t2, 1280
  ADDIW s0, s0, -1216
  MULW s10, s6, t2
  MULW s1, s6, s0
  ADD s5, zero, zero
  ADD t1, s9, s10
  SD t1, 120(sp)
  ADD s10, s8, s1
  # implict jump to bb11
bb11:   # loop depth 3
  SLTI s1, s5, 1000
  BNE s1, zero, bb16
  # implict jump to bb12
bb12:   # loop depth 3
  # implict jump to bb13
bb13:   # loop depth 2
  ADDIW s6, s6, 1
  LW t1, 20(sp)
  BGE s6, t1, bb15
  # implict jump to bb14
bb14:   # loop depth 2
  JAL zero, bb5
bb15:   # loop depth 1
  JAL zero, bb7
bb16:   # loop depth 3
  ADDI s0, zero, 1792
  ADDI t2, zero, 960
  MULW t1, s5, s0
  SW t1, 8(sp)
  MULW t1, s5, t2
  SW t1, 4(sp)
  ADD s4, zero, zero
  LW t1, 8(sp)
  LD t2, 120(sp)
  ADD t1, t2, t1
  SD t1, 136(sp)
  LW t1, 4(sp)
  ADD t1, s10, t1
  SD t1, 128(sp)
  # implict jump to bb17
bb17:   # loop depth 4
  LUI a2, 2
  ADDIW a2, a2, 1808
  SLT s0, s4, a2
  BNE s0, zero, bb22
  # implict jump to bb18
bb18:   # loop depth 4
  # implict jump to bb19
bb19:   # loop depth 3
  ADDIW s5, s5, 1
  LW t1, 0(sp)
  BGE s5, t1, bb21
  # implict jump to bb20
bb20:   # loop depth 3
  JAL zero, bb11
bb21:   # loop depth 2
  JAL zero, bb13
bb22:   # loop depth 4
  ADDI s0, zero, 896
  ADDI t1, zero, 240
  MULW s1, s4, s0
  MULW s0, s4, t1
  ADD s3, zero, zero
  LD t1, 136(sp)
  ADD t1, t1, s1
  SD t1, 152(sp)
  LD t1, 128(sp)
  ADD t1, t1, s0
  SD t1, 144(sp)
  # implict jump to bb23
bb23:   # loop depth 5
  LUI s0, 24
  ADDIW s0, s0, 1696
  SLT s0, s3, s0
  BNE s0, zero, bb28
  # implict jump to bb24
bb24:   # loop depth 5
  # implict jump to bb25
bb25:   # loop depth 4
  ADDIW s4, s4, 1
  BGE s4, a3, bb27
  # implict jump to bb26
bb26:   # loop depth 4
  JAL zero, bb17
bb27:   # loop depth 3
  JAL zero, bb19
bb28:   # loop depth 5
  ADDI s0, zero, 224
  ADDI t0, zero, 48
  MULW s1, s3, s0
  MULW s0, s3, t0
  ADD t0, zero, zero
  LD t1, 152(sp)
  ADD t1, t1, s1
  SD t1, 168(sp)
  LD t1, 144(sp)
  ADD t1, t1, s0
  SD t1, 160(sp)
  # implict jump to bb29
bb29:   # loop depth 6
  LUI s0, 244
  ADDIW s0, s0, 576
  SLT s0, t0, s0
  BNE s0, zero, bb34
  # implict jump to bb30
bb30:   # loop depth 6
  # implict jump to bb31
bb31:   # loop depth 5
  ADDIW s3, s3, 1
  BGE s3, a4, bb33
  # implict jump to bb32
bb32:   # loop depth 5
  JAL zero, bb23
bb33:   # loop depth 4
  JAL zero, bb25
bb34:   # loop depth 6
  ADDI a1, zero, 28
  MULW s0, t0, a1
  ADD s2, zero, zero
  LD t1, 160(sp)
  SH3ADD t1, t0, t1
  SD t1, 176(sp)
  LD t1, 168(sp)
  ADD t1, t1, s0
  SD t1, 184(sp)
  # implict jump to bb35
bb35:   # loop depth 7
  LUI s0, 2441
  ADDIW s0, s0, 1664
  SLT s0, s2, s0
  BNE s0, zero, bb40
  # implict jump to bb36
bb36:   # loop depth 7
  # implict jump to bb37
bb37:   # loop depth 6
  ADDIW t0, t0, 1
  BGE t0, a5, bb39
  # implict jump to bb38
bb38:   # loop depth 6
  JAL zero, bb29
bb39:   # loop depth 5
  JAL zero, bb31
bb40:   # loop depth 7
  ADDI s1, zero, 817
  LD t1, 176(sp)
  SH2ADD s0, s2, t1
  REMW t1, a7, s1
  SW t1, 12(sp)
  LW a2, 0(s0)
  LD t1, 184(sp)
  SH2ADD a7, s2, t1
  ADDIW s2, s2, 1
  LW a7, 0(a7)
  LW t1, 12(sp)
  ADDW a2, t1, a2
  ADDW a7, a2, a7
  BGE s2, a6, bb42
  # implict jump to bb41
bb41:   # loop depth 7
  JAL zero, bb35
bb42:   # loop depth 6
  JAL zero, bb37
main:   # loop depth 0
  ADDI sp, sp, -256
  SD s2, 128(sp)
  SD s6, 136(sp)
  SD s7, 144(sp)
  SD s8, 152(sp)
  SD s9, 160(sp)
  SD s10, 168(sp)
  SD s11, 176(sp)
  SD ra, 192(sp)
  SD s0, 200(sp)
  SD s1, 208(sp)
  CALL getint
  ADD s7, a0, zero
  CALL getint
  SLT s1, zero, s7
  ADD s6, a0, zero
  SLT s2, zero, s6
  CALL getint
  ADD s0, a0, zero
  SW s0, 76(sp)
  AND s8, s1, s2
  CALL getint
  ADD s0, a0, zero
  SW s0, 80(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 84(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 88(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 92(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 96(sp)
  CALL getint
  SW a0, 100(sp)
  BNE s8, zero, bb63
  # implict jump to bb44
bb44:   # loop depth 0
  ADD a6, zero, zero
  # implict jump to bb45
bb45:   # loop depth 1
  LUI a2, 3
  ADDIW a2, a2, -1536
  LA a3, arr2
  MULW a2, a6, a2
  ADD a5, zero, zero
  ADD a0, a3, a2
  SD a0, 232(sp)
  # implict jump to bb46
bb46:   # loop depth 2
  LUI a2, 1
  ADDIW a2, a2, 1280
  ADD a4, zero, zero
  MULW a2, a5, a2
  ADDW s8, a6, a5
  LD a0, 232(sp)
  ADD s7, a0, a2
  # implict jump to bb47
bb47:   # loop depth 3
  ADDI a2, zero, 1792
  MULW a2, a4, a2
  ADD a3, zero, zero
  ADD s9, s7, a2
  # implict jump to bb48
bb48:   # loop depth 4
  ADDI a2, zero, 896
  MULW s10, a3, a2
  ADD a2, zero, zero
  ADDW a0, s8, a3
  SW a0, 32(sp)
  ADD s10, s9, s10
  # implict jump to bb49
bb49:   # loop depth 5
  ADDI s11, zero, 224
  MULW s11, a2, s11
  ADD a1, zero, zero
  ADD s11, s10, s11
  # implict jump to bb50
bb50:   # loop depth 6
  ADDI a0, zero, 28
  SW a0, 112(sp)
  LW a0, 112(sp)
  MULW a0, a1, a0
  SW a0, 4(sp)
  LW a0, 32(sp)
  ADDIW a0, a0, 1
  SW a0, 40(sp)
  LW a0, 32(sp)
  ADDIW a0, a0, 2
  SW a0, 72(sp)
  LW a0, 32(sp)
  ADDIW a0, a0, 3
  SW a0, 68(sp)
  LW a0, 32(sp)
  ADDIW a0, a0, 4
  SW a0, 64(sp)
  LW a0, 32(sp)
  ADDIW a0, a0, 5
  SW a0, 60(sp)
  LW a0, 4(sp)
  ADD a0, s11, a0
  SD a0, 184(sp)
  ADDIW a1, a1, 1
  LD a0, 184(sp)
  LW s0, 32(sp)
  SW s0, 0(a0)
  LW a0, 32(sp)
  ADDIW a0, a0, 6
  SW a0, 56(sp)
  LW a0, 40(sp)
  LD s0, 184(sp)
  SW a0, 4(s0)
  SLTI a0, a1, 8
  SB a0, 2(sp)
  LW a0, 72(sp)
  LD s0, 184(sp)
  SW a0, 8(s0)
  LW a0, 68(sp)
  LD s0, 184(sp)
  SW a0, 12(s0)
  LW a0, 64(sp)
  LD s0, 184(sp)
  SW a0, 16(s0)
  LW a0, 60(sp)
  LD s0, 184(sp)
  SW a0, 20(s0)
  LW a0, 56(sp)
  LD s0, 184(sp)
  SW a0, 24(s0)
  LB a0, 2(sp)
  BNE a0, zero, bb62
  # implict jump to bb51
bb51:   # loop depth 5
  ADDIW a2, a2, 1
  SLTI s11, a2, 4
  BNE s11, zero, bb61
  # implict jump to bb52
bb52:   # loop depth 4
  ADDIW a3, a3, 1
  SLTI a2, a3, 2
  BNE a2, zero, bb60
  # implict jump to bb53
bb53:   # loop depth 3
  ADDIW a4, a4, 1
  SLTI a2, a4, 3
  BNE a2, zero, bb59
  # implict jump to bb54
bb54:   # loop depth 2
  ADDIW a5, a5, 1
  SLTI a2, a5, 2
  BNE a2, zero, bb58
  # implict jump to bb55
bb55:   # loop depth 1
  ADDIW a6, a6, 1
  SLTI a2, a6, 10
  BNE a2, zero, bb57
  # implict jump to bb56
bb56:   # loop depth 0
  LW a6, 100(sp)
  LW a5, 96(sp)
  LW a4, 92(sp)
  LW a3, 88(sp)
  LW a2, 84(sp)
  LW a1, 80(sp)
  LW a0, 76(sp)
  CALL loop3
  LD s2, 128(sp)
  LD s6, 136(sp)
  LD s7, 144(sp)
  LD s8, 152(sp)
  LD s9, 160(sp)
  LD s10, 168(sp)
  LD s11, 176(sp)
  LD ra, 192(sp)
  LD s0, 200(sp)
  LD s1, 208(sp)
  ADDI sp, sp, 256
  JALR zero, 0(ra)
bb57:   # loop depth 1
  JAL zero, bb45
bb58:   # loop depth 2
  JAL zero, bb46
bb59:   # loop depth 3
  JAL zero, bb47
bb60:   # loop depth 4
  JAL zero, bb48
bb61:   # loop depth 5
  JAL zero, bb49
bb62:   # loop depth 6
  JAL zero, bb50
bb63:   # loop depth 0
  ADD a6, zero, zero
  # implict jump to bb64
bb64:   # loop depth 1
  LUI a2, 1
  ADDIW a2, a2, 1664
  LA a3, arr1
  MULW a2, a6, a2
  ADD a5, zero, zero
  ADD a0, a3, a2
  SD a0, 240(sp)
  # implict jump to bb65
bb65:   # loop depth 2
  LUI a2, 1
  ADDIW a2, a2, -1216
  ADD a4, zero, zero
  MULW a2, a5, a2
  ADDW s10, a6, a5
  LD a0, 240(sp)
  ADD s9, a0, a2
  # implict jump to bb66
bb66:   # loop depth 3
  ADDI a2, zero, 960
  MULW a2, a4, a2
  ADD a3, zero, zero
  ADDW a0, s10, a4
  SW a0, 52(sp)
  ADD s11, s9, a2
  # implict jump to bb67
bb67:   # loop depth 4
  ADDI a2, zero, 240
  MULW a0, a3, a2
  SW a0, 108(sp)
  ADD a2, zero, zero
  LW a0, 52(sp)
  ADDW a0, a0, a3
  SW a0, 48(sp)
  LW a0, 108(sp)
  ADD a0, s11, a0
  SD a0, 216(sp)
  # implict jump to bb68
bb68:   # loop depth 5
  ADDI a0, zero, 48
  SW a0, 104(sp)
  LW a0, 104(sp)
  MULW a0, a2, a0
  SW a0, 44(sp)
  ADD a1, zero, zero
  LW a0, 48(sp)
  ADDW a0, a0, a2
  SW a0, 36(sp)
  LW a0, 44(sp)
  LD s0, 216(sp)
  ADD a0, s0, a0
  SD a0, 224(sp)
  # implict jump to bb69
bb69:   # loop depth 6
  LW a0, 36(sp)
  ADDW a0, a0, a1
  SW a0, 28(sp)
  LD a0, 224(sp)
  SH3ADD a0, a1, a0
  SD a0, 120(sp)
  LW a0, 28(sp)
  ADDIW a0, a0, 1
  SW a0, 16(sp)
  LW a0, 28(sp)
  ADDW a0, a0, s7
  SW a0, 24(sp)
  LW a0, 16(sp)
  ADDW a0, a0, s7
  SW a0, 12(sp)
  LW a0, 24(sp)
  ADDW a0, a0, s6
  SW a0, 20(sp)
  ADDIW a1, a1, 1
  LW a0, 12(sp)
  ADDW a0, a0, s6
  SW a0, 8(sp)
  LW a0, 20(sp)
  LD s0, 120(sp)
  SW a0, 0(s0)
  SLTI a0, a1, 6
  SB a0, 1(sp)
  LW a0, 8(sp)
  LD s0, 120(sp)
  SW a0, 4(s0)
  LB a0, 1(sp)
  BNE a0, zero, bb80
  # implict jump to bb70
bb70:   # loop depth 5
  ADDIW a2, a2, 1
  SLTI a0, a2, 5
  SB a0, 0(sp)
  LB a0, 0(sp)
  BNE a0, zero, bb79
  # implict jump to bb71
bb71:   # loop depth 4
  ADDIW a3, a3, 1
  SLTI a2, a3, 4
  BNE a2, zero, bb78
  # implict jump to bb72
bb72:   # loop depth 3
  ADDIW a4, a4, 1
  SLTI a2, a4, 3
  BNE a2, zero, bb77
  # implict jump to bb73
bb73:   # loop depth 2
  ADDIW a5, a5, 1
  SLTI a2, a5, 2
  BNE a2, zero, bb76
  # implict jump to bb74
bb74:   # loop depth 1
  ADDIW a6, a6, 1
  SLT a3, a6, s6
  SLT a2, a6, s7
  AND a2, a2, a3
  BNE a2, zero, bb75
  JAL zero, bb44
bb75:   # loop depth 1
  JAL zero, bb64
bb76:   # loop depth 2
  JAL zero, bb65
bb77:   # loop depth 3
  JAL zero, bb66
bb78:   # loop depth 4
  JAL zero, bb67
bb79:   # loop depth 5
  JAL zero, bb68
bb80:   # loop depth 6
  JAL zero, bb69
