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
  ADDI sp, sp, -96
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
  ADD t0, zero, zero
  ADD t1, zero, zero
  ADD t2, zero, zero
  ADD a7, zero, zero
  ADD t4, zero, zero
  ADD t5, zero, zero
  ADD s0, zero, zero
  # implict jump to bb1
bb1:   # loop depth 1
  SLTI t3, t5, 10
  BNE t3, zero, bb4
  # implict jump to bb2
bb2:   # loop depth 1
  ADD a0, t0, zero
  # implict jump to bb3
bb3:   # loop depth 0
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
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb4:   # loop depth 1
  ADD t3, zero, zero
  # implict jump to bb5
bb5:   # loop depth 2
  SLTI s1, t3, 100
  BNE s1, zero, bb10
  # implict jump to bb6
bb6:   # loop depth 2
  # implict jump to bb7
bb7:   # loop depth 1
  ADDIW t5, t5, 1
  BGE t5, a0, bb9
  # implict jump to bb8
bb8:   # loop depth 1
  JAL zero, bb1
bb9:   # loop depth 0
  ADD a0, t0, zero
  JAL zero, bb3
bb10:   # loop depth 2
  ADD a7, zero, zero
  # implict jump to bb11
bb11:   # loop depth 3
  SLTI s1, a7, 1000
  BNE s1, zero, bb16
  # implict jump to bb12
bb12:   # loop depth 3
  # implict jump to bb13
bb13:   # loop depth 2
  ADDIW t3, t3, 1
  BGE t3, a1, bb15
  # implict jump to bb14
bb14:   # loop depth 2
  JAL zero, bb5
bb15:   # loop depth 1
  JAL zero, bb7
bb16:   # loop depth 3
  ADD t2, zero, zero
  # implict jump to bb17
bb17:   # loop depth 4
  LUI s1, 2
  ADDIW s1, s1, 1808
  SLT s1, t2, s1
  BNE s1, zero, bb22
  # implict jump to bb18
bb18:   # loop depth 4
  # implict jump to bb19
bb19:   # loop depth 3
  ADDIW a7, a7, 1
  BGE a7, a2, bb21
  # implict jump to bb20
bb20:   # loop depth 3
  JAL zero, bb11
bb21:   # loop depth 2
  JAL zero, bb13
bb22:   # loop depth 4
  ADD t4, zero, zero
  # implict jump to bb23
bb23:   # loop depth 5
  LUI s1, 24
  ADDIW s1, s1, 1696
  SLT s1, t4, s1
  BNE s1, zero, bb28
  # implict jump to bb24
bb24:   # loop depth 5
  # implict jump to bb25
bb25:   # loop depth 4
  ADDIW t2, t2, 1
  BGE t2, a3, bb27
  # implict jump to bb26
bb26:   # loop depth 4
  JAL zero, bb17
bb27:   # loop depth 3
  JAL zero, bb19
bb28:   # loop depth 5
  ADD s0, zero, zero
  # implict jump to bb29
bb29:   # loop depth 6
  LUI s1, 244
  ADDIW s1, s1, 576
  SLT s1, s0, s1
  BNE s1, zero, bb34
  # implict jump to bb30
bb30:   # loop depth 6
  # implict jump to bb31
bb31:   # loop depth 5
  ADDIW t4, t4, 1
  BGE t4, a4, bb33
  # implict jump to bb32
bb32:   # loop depth 5
  JAL zero, bb23
bb33:   # loop depth 4
  JAL zero, bb25
bb34:   # loop depth 6
  ADD t1, zero, zero
  # implict jump to bb35
bb35:   # loop depth 7
  LUI s1, 2441
  ADDIW s1, s1, 1664
  SLT s1, t1, s1
  BNE s1, zero, bb40
  # implict jump to bb36
bb36:   # loop depth 7
  # implict jump to bb37
bb37:   # loop depth 6
  ADDIW s0, s0, 1
  BGE s0, a5, bb39
  # implict jump to bb38
bb38:   # loop depth 6
  JAL zero, bb29
bb39:   # loop depth 5
  JAL zero, bb31
bb40:   # loop depth 7
  ADDI s1, zero, 817
  LUI s2, 1
  REMW t0, t0, s1
  LUI s3, 1
  ADDIW s2, s2, 1664
  ADDIW s3, s3, -1216
  MULW s1, t5, s2
  LUI s5, 3
  ADDI s4, zero, 960
  MULW s2, t3, s3
  LA s7, arr1
  LUI s8, 1
  ADDIW s5, s5, -1536
  ADDI s9, zero, 240
  MULW s3, a7, s4
  ADDIW s8, s8, 1280
  MULW s6, t5, s5
  ADDI s5, zero, 48
  MULW s4, t2, s9
  ADD s1, s7, s1
  ADDI s9, zero, 1792
  MULW s7, t3, s8
  LA s8, arr2
  MULW s5, t4, s5
  ADD s1, s1, s2
  ADDI s2, zero, 896
  MULW s9, a7, s9
  ADD s1, s1, s3
  ADDI s3, zero, 224
  MULW s2, t2, s2
  ADD s6, s8, s6
  ADD s1, s1, s4
  ADDI s4, zero, 28
  MULW s3, t4, s3
  ADD s6, s6, s7
  ADD s1, s1, s5
  MULW s5, s0, s4
  ADD s4, s6, s9
  SH3ADD s1, s0, s1
  ADD s2, s4, s2
  SH2ADD s1, t1, s1
  ADD s2, s2, s3
  LW s1, 0(s1)
  ADD s2, s2, s5
  SH2ADD s2, t1, s2
  ADDIW t1, t1, 1
  LW s2, 0(s2)
  ADDW t0, t0, s1
  ADDW t0, t0, s2
  BGE t1, a6, bb43
  # implict jump to bb41
bb41:   # loop depth 7
  # implict jump to bb42
bb42:   # loop depth 7
  JAL zero, bb35
bb43:   # loop depth 6
  JAL zero, bb37
main:   # loop depth 0
  ADDI sp, sp, -208
  SD s6, 104(sp)
  SD s7, 112(sp)
  SD s8, 120(sp)
  SD s9, 128(sp)
  SD s10, 136(sp)
  SD s11, 144(sp)
  SD s1, 160(sp)
  SD ra, 176(sp)
  SD s0, 184(sp)
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
  SW a0, 64(sp)
  CALL getint
  SW a0, 68(sp)
  CALL getint
  SW a0, 72(sp)
  CALL getint
  SW a0, 76(sp)
  CALL getint
  SW a0, 80(sp)
  CALL getint
  BNE s8, zero, bb64
  # implict jump to bb45
bb45:   # loop depth 0
  ADD a6, zero, zero
  ADD a3, zero, zero
  # implict jump to bb46
bb46:   # loop depth 1
  LA t2, arr2
  ADD a5, zero, zero
  ADD a7, zero, zero
  ADD s7, t2, a3
  # implict jump to bb47
bb47:   # loop depth 2
  ADD t4, zero, zero
  ADD t5, zero, zero
  ADDW s9, a6, a5
  ADD s8, s7, a7
  # implict jump to bb48
bb48:   # loop depth 3
  ADD a4, zero, zero
  ADD t3, zero, zero
  ADD s10, s8, t5
  # implict jump to bb49
bb49:   # loop depth 4
  ADD a1, zero, zero
  ADD s6, zero, zero
  ADDW t0, s9, a4
  SW t0, 84(sp)
  ADD s11, s10, t3
  # implict jump to bb50
bb50:   # loop depth 5
  ADD t1, zero, zero
  ADD t2, zero, zero
  ADD t0, s11, s6
  SD t0, 168(sp)
  # implict jump to bb51
bb51:   # loop depth 6
  LW t0, 84(sp)
  ADDIW t0, t0, 1
  SW t0, 32(sp)
  LD t0, 168(sp)
  ADD t0, t0, t2
  SD t0, 152(sp)
  LW t0, 84(sp)
  ADDIW t0, t0, 2
  SW t0, 60(sp)
  LD t0, 152(sp)
  LW a2, 84(sp)
  SW a2, 0(t0)
  LW t0, 84(sp)
  ADDIW t0, t0, 3
  SW t0, 56(sp)
  LW t0, 32(sp)
  LD a2, 152(sp)
  SW t0, 4(a2)
  LW t0, 84(sp)
  ADDIW t0, t0, 4
  SW t0, 52(sp)
  LW t0, 60(sp)
  LD a2, 152(sp)
  SW t0, 8(a2)
  LW t0, 84(sp)
  ADDIW t0, t0, 5
  SW t0, 48(sp)
  LW t0, 56(sp)
  LD a2, 152(sp)
  SW t0, 12(a2)
  LW t0, 52(sp)
  LD a2, 152(sp)
  SW t0, 16(a2)
  ADDIW t1, t1, 1
  LW t0, 84(sp)
  ADDIW t0, t0, 6
  SW t0, 44(sp)
  LW t0, 48(sp)
  LD a2, 152(sp)
  SW t0, 20(a2)
  ADDIW t2, t2, 28
  SLTI t0, t1, 8
  SB t0, 2(sp)
  LW t0, 44(sp)
  LD a2, 152(sp)
  SW t0, 24(a2)
  LB t0, 2(sp)
  BNE t0, zero, bb63
  # implict jump to bb52
bb52:   # loop depth 5
  ADDIW a1, a1, 1
  ADDIW s6, s6, 224
  SLTI a2, a1, 4
  BNE a2, zero, bb62
  # implict jump to bb53
bb53:   # loop depth 4
  ADDIW a4, a4, 1
  ADDIW t3, t3, 896
  SLTI a2, a4, 2
  BNE a2, zero, bb61
  # implict jump to bb54
bb54:   # loop depth 3
  ADDIW t4, t4, 1
  ADDIW t5, t5, 1792
  SLTI a1, t4, 3
  BNE a1, zero, bb60
  # implict jump to bb55
bb55:   # loop depth 2
  LUI t2, 1
  ADDIW a5, a5, 1
  ADDIW t2, t2, 1280
  SLTI a1, a5, 2
  ADDW a7, a7, t2
  BNE a1, zero, bb59
  # implict jump to bb56
bb56:   # loop depth 1
  LUI t2, 3
  ADDIW a6, a6, 1
  ADDIW t2, t2, -1536
  SLTI a2, a6, 10
  ADDW a3, a3, t2
  BNE a2, zero, bb58
  # implict jump to bb57
bb57:   # loop depth 0
  ADD a6, a0, zero
  LW a5, 80(sp)
  LW a4, 76(sp)
  LW a3, 72(sp)
  LW a2, 68(sp)
  LW a1, 64(sp)
  LW a0, 88(sp)
  CALL loop3
  LD s6, 104(sp)
  LD s7, 112(sp)
  LD s8, 120(sp)
  LD s9, 128(sp)
  LD s10, 136(sp)
  LD s11, 144(sp)
  LD s1, 160(sp)
  LD ra, 176(sp)
  LD s0, 184(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb58:   # loop depth 1
  JAL zero, bb46
bb59:   # loop depth 2
  JAL zero, bb47
bb60:   # loop depth 3
  JAL zero, bb48
bb61:   # loop depth 4
  JAL zero, bb49
bb62:   # loop depth 5
  JAL zero, bb50
bb63:   # loop depth 6
  JAL zero, bb51
bb64:   # loop depth 0
  ADD t3, zero, zero
  ADD t4, zero, zero
  # implict jump to bb65
bb65:   # loop depth 1
  LA a2, arr1
  ADD a7, zero, zero
  ADD a4, zero, zero
  ADD t5, a2, t4
  # implict jump to bb66
bb66:   # loop depth 2
  ADD a6, zero, zero
  ADD a3, zero, zero
  ADDW s9, t3, a7
  ADD s8, t5, a4
  # implict jump to bb67
bb67:   # loop depth 3
  ADD a5, zero, zero
  ADD a2, zero, zero
  ADDW t0, s9, a6
  SW t0, 4(sp)
  ADD s10, s8, a3
  # implict jump to bb68
bb68:   # loop depth 4
  ADD a1, zero, zero
  ADD t2, zero, zero
  LW t0, 4(sp)
  ADDW t0, t0, a5
  SW t0, 40(sp)
  ADD t0, s10, a2
  SD t0, 192(sp)
  # implict jump to bb69
bb69:   # loop depth 5
  ADD t1, zero, zero
  LW t0, 40(sp)
  ADDW t0, t0, a1
  SW t0, 36(sp)
  LD t0, 192(sp)
  ADD t0, t0, t2
  SD t0, 200(sp)
  # implict jump to bb70
bb70:   # loop depth 6
  LW t0, 36(sp)
  ADDW t0, t0, t1
  SW t0, 28(sp)
  LD t0, 200(sp)
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
  SB t0, 1(sp)
  LW t0, 8(sp)
  LD s0, 96(sp)
  SW t0, 4(s0)
  LB t0, 1(sp)
  BNE t0, zero, bb81
  # implict jump to bb71
bb71:   # loop depth 5
  ADDIW a1, a1, 1
  ADDIW t2, t2, 48
  SLTI t0, a1, 5
  SB t0, 0(sp)
  LB t0, 0(sp)
  BNE t0, zero, bb80
  # implict jump to bb72
bb72:   # loop depth 4
  ADDIW a5, a5, 1
  ADDIW a2, a2, 240
  SLTI s11, a5, 4
  BNE s11, zero, bb79
  # implict jump to bb73
bb73:   # loop depth 3
  ADDIW a6, a6, 1
  ADDIW a3, a3, 960
  SLTI a2, a6, 3
  BNE a2, zero, bb78
  # implict jump to bb74
bb74:   # loop depth 2
  LUI t2, 1
  ADDIW a7, a7, 1
  ADDIW t2, t2, -1216
  SLTI a2, a7, 2
  ADDW a4, a4, t2
  BNE a2, zero, bb77
  # implict jump to bb75
bb75:   # loop depth 1
  LUI t2, 1
  ADDIW t3, t3, 1
  ADDIW t2, t2, 1664
  SLT a2, t3, s6
  SLT a1, t3, s7
  ADDW t4, t4, t2
  AND a1, a1, a2
  BNE a1, zero, bb76
  JAL zero, bb45
bb76:   # loop depth 1
  JAL zero, bb65
bb77:   # loop depth 2
  JAL zero, bb66
bb78:   # loop depth 3
  JAL zero, bb67
bb79:   # loop depth 4
  JAL zero, bb68
bb80:   # loop depth 5
  JAL zero, bb69
bb81:   # loop depth 6
  JAL zero, bb70
