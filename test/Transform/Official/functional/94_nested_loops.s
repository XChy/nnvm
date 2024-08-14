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
  ADDI sp, sp, -320
  SD ra, 96(sp)
  SD s3, 104(sp)
  SD s4, 112(sp)
  SD s5, 120(sp)
  SD s6, 128(sp)
  SD s7, 136(sp)
  SD s8, 160(sp)
  SD s9, 168(sp)
  SD s10, 176(sp)
  ADD t3, zero, zero
  ADD s4, zero, zero
  ADD s9, zero, zero
  ADD t0, zero, zero
  SW t0, 16(sp)
  ADD s7, zero, zero
  ADD s8, zero, zero
  ADD s5, zero, zero
  ADD s10, zero, zero
  ADD t4, zero, zero
  ADD s3, a6, zero
  SW a5, 4(sp)
  SW a4, 76(sp)
  SW a3, 72(sp)
  SW a2, 68(sp)
  SW a1, 64(sp)
  SW a0, 60(sp)
  # implict jump to bb1
bb1:   # loop depth 1
  SW s8, 88(sp)
  SW t4, 84(sp)
  LW t0, 88(sp)
  SLTI a3, t0, 10
  SW s10, 56(sp)
  LW t0, 16(sp)
  SW t0, 16(sp)
  BNE a3, zero, bb4
  # implict jump to bb2
bb2:   # loop depth 1
  ADD a0, t3, zero
  # implict jump to bb3
bb3:   # loop depth 0
  LD ra, 96(sp)
  LD s3, 104(sp)
  LD s4, 112(sp)
  LD s5, 120(sp)
  LD s6, 128(sp)
  LD s7, 136(sp)
  LD s8, 160(sp)
  LD s9, 168(sp)
  LD s10, 176(sp)
  ADDI sp, sp, 320
  JALR zero, 0(ra)
bb4:   # loop depth 1
  LA a6, arr2
  LA s8, arr1
  LW t0, 16(sp)
  SW t0, 16(sp)
  ADD s6, zero, zero
  ADD t0, zero, zero
  SW t0, 12(sp)
  ADD t0, zero, zero
  SW t0, 8(sp)
  LW t0, 84(sp)
  ADD t0, a6, t0
  SD t0, 296(sp)
  LW t0, 56(sp)
  ADD t0, s8, t0
  SD t0, 304(sp)
  # implict jump to bb5
bb5:   # loop depth 2
  SW s6, 80(sp)
  LW t0, 8(sp)
  SW t0, 8(sp)
  LW t0, 80(sp)
  SLTI a6, t0, 100
  LW t0, 12(sp)
  SW t0, 12(sp)
  LW t0, 16(sp)
  SW t0, 16(sp)
  BNE a6, zero, bb10
  # implict jump to bb6
bb6:   # loop depth 2
  LW t0, 16(sp)
  SW t0, 16(sp)
  # implict jump to bb7
bb7:   # loop depth 1
  LW t0, 88(sp)
  ADDIW s8, t0, 1
  LW t0, 16(sp)
  SW t0, 16(sp)
  LW t0, 60(sp)
  BGE s8, t0, bb9
  # implict jump to bb8
bb8:   # loop depth 1
  LUI a2, 3
  LUI a3, 1
  ADDIW a2, a2, -1536
  ADDIW a3, a3, 1664
  LW t0, 84(sp)
  ADDW t4, t0, a2
  LW t0, 56(sp)
  ADDW s10, t0, a3
  LW t0, 16(sp)
  SW t0, 16(sp)
  JAL zero, bb1
bb9:   # loop depth 0
  ADD a0, t3, zero
  JAL zero, bb3
bb10:   # loop depth 2
  ADD t0, zero, zero
  SW t0, 16(sp)
  ADD t0, zero, zero
  SW t0, 24(sp)
  ADD t0, zero, zero
  SW t0, 20(sp)
  LD t0, 296(sp)
  LW t1, 8(sp)
  ADD t0, t0, t1
  SD t0, 184(sp)
  LD t0, 304(sp)
  LW t1, 12(sp)
  ADD t0, t0, t1
  SD t0, 192(sp)
  # implict jump to bb11
bb11:   # loop depth 3
  LW t0, 16(sp)
  SW t0, 16(sp)
  LW t0, 20(sp)
  SW t0, 20(sp)
  LW t0, 16(sp)
  SLTI a5, t0, 1000
  LW t0, 24(sp)
  SW t0, 24(sp)
  BNE a5, zero, bb16
  # implict jump to bb12
bb12:   # loop depth 3
  LW t0, 16(sp)
  SW t0, 16(sp)
  # implict jump to bb13
bb13:   # loop depth 2
  LW t0, 80(sp)
  ADDIW s6, t0, 1
  LW t0, 16(sp)
  SW t0, 16(sp)
  LW t0, 64(sp)
  BGE s6, t0, bb15
  # implict jump to bb14
bb14:   # loop depth 2
  LUI a6, 1
  LUI a2, 1
  ADDIW a6, a6, 1280
  ADDIW a2, a2, -1216
  LW t0, 8(sp)
  ADDW t0, t0, a6
  SW t0, 8(sp)
  LW t0, 12(sp)
  ADDW t0, t0, a2
  SW t0, 12(sp)
  LW t0, 16(sp)
  SW t0, 16(sp)
  LW t0, 12(sp)
  SW t0, 12(sp)
  LW t0, 8(sp)
  SW t0, 8(sp)
  JAL zero, bb5
bb15:   # loop depth 1
  LW t0, 16(sp)
  SW t0, 16(sp)
  JAL zero, bb7
bb16:   # loop depth 3
  ADD s9, zero, zero
  ADD s10, zero, zero
  ADD t0, zero, zero
  SW t0, 28(sp)
  LD t0, 184(sp)
  LW t1, 20(sp)
  ADD t0, t0, t1
  SD t0, 224(sp)
  LD t0, 192(sp)
  LW t1, 24(sp)
  ADD t0, t0, t1
  SD t0, 216(sp)
  # implict jump to bb17
bb17:   # loop depth 4
  LUI a4, 2
  ADDIW a4, a4, 1808
  LW t0, 28(sp)
  SW t0, 28(sp)
  SLT a5, s9, a4
  BNE a5, zero, bb22
  # implict jump to bb18
bb18:   # loop depth 4
  # implict jump to bb19
bb19:   # loop depth 3
  LW t0, 16(sp)
  ADDIW t0, t0, 1
  SW t0, 16(sp)
  LW t0, 68(sp)
  LW t1, 16(sp)
  BGE t1, t0, bb21
  # implict jump to bb20
bb20:   # loop depth 3
  LW t0, 20(sp)
  ADDIW t0, t0, 1792
  SW t0, 20(sp)
  LW t0, 24(sp)
  ADDIW t0, t0, 960
  SW t0, 24(sp)
  LW t0, 16(sp)
  SW t0, 16(sp)
  LW t0, 24(sp)
  SW t0, 24(sp)
  LW t0, 20(sp)
  SW t0, 20(sp)
  JAL zero, bb11
bb21:   # loop depth 2
  LW t0, 16(sp)
  SW t0, 16(sp)
  JAL zero, bb13
bb22:   # loop depth 4
  ADD s7, zero, zero
  ADD s6, zero, zero
  ADD s8, zero, zero
  LD t0, 224(sp)
  LW t1, 28(sp)
  ADD t0, t0, t1
  SD t0, 240(sp)
  LD t0, 216(sp)
  ADD t0, t0, s10
  SD t0, 232(sp)
  # implict jump to bb23
bb23:   # loop depth 5
  LUI t0, 24
  SW t0, 48(sp)
  LW t0, 48(sp)
  ADDIW t0, t0, 1696
  SW t0, 48(sp)
  LW t0, 48(sp)
  SLT t0, s7, t0
  SB t0, 0(sp)
  LB t0, 0(sp)
  BNE t0, zero, bb28
  # implict jump to bb24
bb24:   # loop depth 5
  # implict jump to bb25
bb25:   # loop depth 4
  ADDIW s9, s9, 1
  LW t0, 72(sp)
  BGE s9, t0, bb27
  # implict jump to bb26
bb26:   # loop depth 4
  LW t0, 28(sp)
  ADDIW t0, t0, 896
  SW t0, 28(sp)
  ADDIW s10, s10, 240
  LW t0, 28(sp)
  SW t0, 28(sp)
  JAL zero, bb17
bb27:   # loop depth 3
  JAL zero, bb19
bb28:   # loop depth 5
  ADD s5, zero, zero
  ADD a6, zero, zero
  LD t0, 240(sp)
  ADD t0, t0, s8
  SD t0, 256(sp)
  LD t0, 232(sp)
  ADD t0, t0, s6
  SD t0, 248(sp)
  # implict jump to bb29
bb29:   # loop depth 6
  LUI a7, 244
  ADDIW a7, a7, 576
  SLT a4, s5, a7
  BNE a4, zero, bb34
  # implict jump to bb30
bb30:   # loop depth 6
  # implict jump to bb31
bb31:   # loop depth 5
  ADDIW s7, s7, 1
  LW t0, 76(sp)
  BGE s7, t0, bb33
  # implict jump to bb32
bb32:   # loop depth 5
  ADDIW s8, s8, 224
  ADDIW s6, s6, 48
  JAL zero, bb23
bb33:   # loop depth 4
  JAL zero, bb25
bb34:   # loop depth 6
  ADD s4, zero, zero
  LD t0, 256(sp)
  ADD t0, t0, a6
  SD t0, 272(sp)
  LD t0, 248(sp)
  SH3ADD t0, s5, t0
  SD t0, 264(sp)
  # implict jump to bb35
bb35:   # loop depth 7
  LUI t0, 2441
  SW t0, 52(sp)
  LW t0, 52(sp)
  ADDIW t0, t0, 1664
  SW t0, 52(sp)
  LW t0, 52(sp)
  SLT a4, s4, t0
  BNE a4, zero, bb40
  # implict jump to bb36
bb36:   # loop depth 7
  # implict jump to bb37
bb37:   # loop depth 6
  ADDIW s5, s5, 1
  LW t0, 4(sp)
  BGE s5, t0, bb39
  # implict jump to bb38
bb38:   # loop depth 6
  ADDIW a6, a6, 28
  JAL zero, bb29
bb39:   # loop depth 5
  JAL zero, bb31
bb40:   # loop depth 7
  ADDI a4, zero, 817
  LD t0, 264(sp)
  SH2ADD t0, s4, t0
  SD t0, 280(sp)
  REMW a4, t3, a4
  LD t0, 280(sp)
  LW a5, 0(t0)
  LD t0, 272(sp)
  SH2ADD t0, s4, t0
  SD t0, 288(sp)
  ADDIW s4, s4, 1
  LD t0, 288(sp)
  LW t0, 0(t0)
  SW t0, 40(sp)
  ADDW a4, a4, a5
  LW t0, 40(sp)
  ADDW t3, a4, t0
  BGE s4, s3, bb42
  # implict jump to bb41
bb41:   # loop depth 7
  JAL zero, bb35
bb42:   # loop depth 6
  JAL zero, bb37
main:   # loop depth 0
  ADDI sp, sp, -224
  SD s6, 104(sp)
  SD s7, 112(sp)
  SD s8, 120(sp)
  SD s9, 128(sp)
  SD s10, 136(sp)
  SD s11, 144(sp)
  SD ra, 160(sp)
  SD s0, 168(sp)
  SD s1, 176(sp)
  CALL getint
  ADD s7, a0, zero
  CALL getint
  SLT s1, zero, s7
  ADD s6, a0, zero
  SLT s0, zero, s6
  CALL getint
  SW a0, 88(sp)
  AND s8, s1, s0
  CALL getint
  SW a0, 68(sp)
  CALL getint
  SW a0, 72(sp)
  CALL getint
  SW a0, 76(sp)
  CALL getint
  SW a0, 80(sp)
  CALL getint
  SW a0, 84(sp)
  CALL getint
  BNE s8, zero, bb63
  # implict jump to bb44
bb44:   # loop depth 0
  ADD s7, zero, zero
  ADD a7, zero, zero
  # implict jump to bb45
bb45:   # loop depth 1
  LA t2, arr2
  ADD s6, zero, zero
  ADD a6, zero, zero
  ADD s8, t2, a7
  # implict jump to bb46
bb46:   # loop depth 2
  ADD t5, zero, zero
  ADD a5, zero, zero
  ADDW s10, s7, s6
  ADD s9, s8, a6
  # implict jump to bb47
bb47:   # loop depth 3
  ADD t4, zero, zero
  ADD a4, zero, zero
  ADD s11, s9, a5
  # implict jump to bb48
bb48:   # loop depth 4
  ADD t3, zero, zero
  ADD a3, zero, zero
  ADDW t0, s10, t4
  SW t0, 32(sp)
  ADD t0, s11, a4
  SD t0, 184(sp)
  # implict jump to bb49
bb49:   # loop depth 5
  ADD a1, zero, zero
  ADD t2, zero, zero
  LD t0, 184(sp)
  ADD t0, t0, a3
  SD t0, 152(sp)
  # implict jump to bb50
bb50:   # loop depth 6
  LW t0, 32(sp)
  ADDIW t0, t0, 1
  SW t0, 36(sp)
  LD t0, 152(sp)
  ADD t0, t0, t2
  SD t0, 192(sp)
  LW t0, 32(sp)
  ADDIW t0, t0, 2
  SW t0, 64(sp)
  LD t0, 192(sp)
  LW t1, 32(sp)
  SW t1, 0(t0)
  LW t0, 32(sp)
  ADDIW t0, t0, 3
  SW t0, 60(sp)
  LW t0, 36(sp)
  LD t1, 192(sp)
  SW t0, 4(t1)
  LW t0, 32(sp)
  ADDIW t0, t0, 4
  SW t0, 56(sp)
  LW t0, 64(sp)
  LD t1, 192(sp)
  SW t0, 8(t1)
  LW t0, 32(sp)
  ADDIW t0, t0, 5
  SW t0, 52(sp)
  LW t0, 60(sp)
  LD t1, 192(sp)
  SW t0, 12(t1)
  LW t0, 56(sp)
  LD t1, 192(sp)
  SW t0, 16(t1)
  ADDIW a1, a1, 1
  LW t0, 32(sp)
  ADDIW t0, t0, 6
  SW t0, 48(sp)
  LW t0, 52(sp)
  LD t1, 192(sp)
  SW t0, 20(t1)
  ADDIW t2, t2, 28
  SLTI t0, a1, 8
  SB t0, 2(sp)
  LW t0, 48(sp)
  LD t1, 192(sp)
  SW t0, 24(t1)
  LB t0, 2(sp)
  BNE t0, zero, bb62
  # implict jump to bb51
bb51:   # loop depth 5
  ADDIW t3, t3, 1
  ADDIW a3, a3, 224
  SLTI a2, t3, 4
  BNE a2, zero, bb61
  # implict jump to bb52
bb52:   # loop depth 4
  ADDIW t4, t4, 1
  ADDIW a4, a4, 896
  SLTI a1, t4, 2
  BNE a1, zero, bb60
  # implict jump to bb53
bb53:   # loop depth 3
  ADDIW t5, t5, 1
  ADDIW a5, a5, 1792
  SLTI a2, t5, 3
  BNE a2, zero, bb59
  # implict jump to bb54
bb54:   # loop depth 2
  LUI t2, 1
  ADDIW s6, s6, 1
  ADDIW t2, t2, 1280
  SLTI a1, s6, 2
  ADDW a6, a6, t2
  BNE a1, zero, bb58
  # implict jump to bb55
bb55:   # loop depth 1
  LUI t2, 3
  ADDIW s7, s7, 1
  ADDIW t2, t2, -1536
  SLTI a2, s7, 10
  ADDW a7, a7, t2
  BNE a2, zero, bb57
  # implict jump to bb56
bb56:   # loop depth 0
  ADD a6, a0, zero
  LW a5, 84(sp)
  LW a4, 80(sp)
  LW a3, 76(sp)
  LW a2, 72(sp)
  LW a1, 68(sp)
  LW a0, 88(sp)
  CALL loop3
  LD s6, 104(sp)
  LD s7, 112(sp)
  LD s8, 120(sp)
  LD s9, 128(sp)
  LD s10, 136(sp)
  LD s11, 144(sp)
  LD ra, 160(sp)
  LD s0, 168(sp)
  LD s1, 176(sp)
  ADDI sp, sp, 224
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
  ADD t4, zero, zero
  ADD a5, zero, zero
  # implict jump to bb64
bb64:   # loop depth 1
  LA t2, arr1
  ADD t3, zero, zero
  ADD a4, zero, zero
  ADD t5, t2, a5
  # implict jump to bb65
bb65:   # loop depth 2
  ADD a7, zero, zero
  ADD a3, zero, zero
  ADDW s9, t4, t3
  ADD s8, t5, a4
  # implict jump to bb66
bb66:   # loop depth 3
  ADD a6, zero, zero
  ADD a2, zero, zero
  ADDW t0, s9, a7
  SW t0, 40(sp)
  ADD s10, s8, a3
  # implict jump to bb67
bb67:   # loop depth 4
  ADD a1, zero, zero
  ADD t2, zero, zero
  LW t0, 40(sp)
  ADDW t0, t0, a6
  SW t0, 44(sp)
  ADD t0, s10, a2
  SD t0, 200(sp)
  # implict jump to bb68
bb68:   # loop depth 5
  ADD t1, zero, zero
  LW t0, 44(sp)
  ADDW t0, t0, a1
  SW t0, 4(sp)
  LD t0, 200(sp)
  ADD t0, t0, t2
  SD t0, 208(sp)
  # implict jump to bb69
bb69:   # loop depth 6
  LW t0, 4(sp)
  ADDW t0, t0, t1
  SW t0, 28(sp)
  LD t0, 208(sp)
  SH3ADD t0, t1, t0
  SD t0, 96(sp)
  LW t0, 28(sp)
  ADDIW t0, t0, 1
  SW t0, 16(sp)
  LW t0, 28(sp)
  ADDW t0, t0, s7
  SW t0, 24(sp)
  LW t0, 16(sp)
  ADDW t0, t0, s7
  SW t0, 12(sp)
  LW t0, 24(sp)
  ADDW t0, t0, s6
  SW t0, 20(sp)
  ADDIW t1, t1, 1
  LW t0, 12(sp)
  ADDW t0, t0, s6
  SW t0, 8(sp)
  LW t0, 20(sp)
  LD s0, 96(sp)
  SW t0, 0(s0)
  SLTI t0, t1, 6
  SB t0, 0(sp)
  LW t0, 8(sp)
  LD s0, 96(sp)
  SW t0, 4(s0)
  LB t0, 0(sp)
  BNE t0, zero, bb80
  # implict jump to bb70
bb70:   # loop depth 5
  ADDIW a1, a1, 1
  ADDIW t2, t2, 48
  SLTI t0, a1, 5
  SB t0, 1(sp)
  LB t0, 1(sp)
  BNE t0, zero, bb79
  # implict jump to bb71
bb71:   # loop depth 4
  ADDIW a6, a6, 1
  ADDIW a2, a2, 240
  SLTI s11, a6, 4
  BNE s11, zero, bb78
  # implict jump to bb72
bb72:   # loop depth 3
  ADDIW a7, a7, 1
  ADDIW a3, a3, 960
  SLTI a2, a7, 3
  BNE a2, zero, bb77
  # implict jump to bb73
bb73:   # loop depth 2
  LUI t2, 1
  ADDIW t3, t3, 1
  ADDIW t2, t2, -1216
  SLTI a1, t3, 2
  ADDW a4, a4, t2
  BNE a1, zero, bb76
  # implict jump to bb74
bb74:   # loop depth 1
  LUI t2, 1
  ADDIW t4, t4, 1
  ADDIW t2, t2, 1664
  SLT a3, t4, s6
  SLT a2, t4, s7
  ADDW a5, a5, t2
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
