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
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  SD s10, 104(sp)
  SD s11, 112(sp)
  ADD a7, zero, zero
  ADD s2, zero, zero
  ADD s5, zero, zero
  ADD s6, zero, zero
  ADD s4, zero, zero
  ADD s7, zero, zero
  ADD t0, zero, zero
  SW a2, 0(sp)
  SW a1, 20(sp)
  SW a0, 16(sp)
  # implict jump to bb1
bb1:   # loop depth 1
  SLTI a0, s7, 10
  BNE a0, zero, bb4
  # implict jump to bb2
bb2:   # loop depth 1
  ADD a0, a7, zero
  # implict jump to bb3
bb3:   # loop depth 0
  LD ra, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s10, 104(sp)
  LD s11, 112(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb4:   # loop depth 1
  LUI a1, 3
  LUI a0, 1
  ADDIW a1, a1, -1536
  ADDIW a0, a0, 1664
  MULW s8, s7, a1
  MULW s3, s7, a0
  LA s9, arr2
  LA s11, arr1
  ADD s1, zero, zero
  ADD s10, s9, s8
  ADD s8, s11, s3
  # implict jump to bb5
bb5:   # loop depth 2
  SLTI s3, s1, 100
  BNE s3, zero, bb10
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
  LUI a2, 1
  ADDIW t2, t2, 1280
  ADDIW a2, a2, -1216
  MULW t1, s1, t2
  SW t1, 4(sp)
  MULW s3, s1, a2
  ADD s6, zero, zero
  LW t1, 4(sp)
  ADD t1, s10, t1
  SD t1, 128(sp)
  ADD t1, s8, s3
  SD t1, 120(sp)
  # implict jump to bb11
bb11:   # loop depth 3
  SLTI s3, s6, 1000
  BNE s3, zero, bb16
  # implict jump to bb12
bb12:   # loop depth 3
  # implict jump to bb13
bb13:   # loop depth 2
  ADDIW s1, s1, 1
  LW t1, 20(sp)
  BGE s1, t1, bb15
  # implict jump to bb14
bb14:   # loop depth 2
  JAL zero, bb5
bb15:   # loop depth 1
  JAL zero, bb7
bb16:   # loop depth 3
  ADDI a0, zero, 1792
  ADDI s3, zero, 960
  MULW s9, s6, a0
  MULW t1, s6, s3
  SW t1, 8(sp)
  ADD s5, zero, zero
  LD t1, 128(sp)
  ADD t1, t1, s9
  SD t1, 136(sp)
  LW t1, 8(sp)
  LD t2, 120(sp)
  ADD s9, t2, t1
  # implict jump to bb17
bb17:   # loop depth 4
  LUI s3, 2
  ADDIW s3, s3, 1808
  SLT s3, s5, s3
  BNE s3, zero, bb22
  # implict jump to bb18
bb18:   # loop depth 4
  # implict jump to bb19
bb19:   # loop depth 3
  ADDIW s6, s6, 1
  LW t1, 0(sp)
  BGE s6, t1, bb21
  # implict jump to bb20
bb20:   # loop depth 3
  JAL zero, bb11
bb21:   # loop depth 2
  JAL zero, bb13
bb22:   # loop depth 4
  ADDI t1, zero, 896
  ADDI s3, zero, 240
  MULW s11, s5, t1
  MULW s3, s5, s3
  ADD s4, zero, zero
  LD t1, 136(sp)
  ADD t1, t1, s11
  SD t1, 160(sp)
  ADD t1, s9, s3
  SD t1, 144(sp)
  # implict jump to bb23
bb23:   # loop depth 5
  LUI s3, 24
  ADDIW s3, s3, 1696
  SLT s3, s4, s3
  BNE s3, zero, bb28
  # implict jump to bb24
bb24:   # loop depth 5
  # implict jump to bb25
bb25:   # loop depth 4
  ADDIW s5, s5, 1
  BGE s5, a3, bb27
  # implict jump to bb26
bb26:   # loop depth 4
  JAL zero, bb17
bb27:   # loop depth 3
  JAL zero, bb19
bb28:   # loop depth 5
  ADDI t0, zero, 224
  ADDI a2, zero, 48
  MULW s11, s4, t0
  MULW s3, s4, a2
  ADD t0, zero, zero
  LD t1, 160(sp)
  ADD t1, t1, s11
  SD t1, 168(sp)
  LD t1, 144(sp)
  ADD t1, t1, s3
  SD t1, 152(sp)
  # implict jump to bb29
bb29:   # loop depth 6
  LUI s3, 244
  ADDIW s3, s3, 576
  SLT s3, t0, s3
  BNE s3, zero, bb34
  # implict jump to bb30
bb30:   # loop depth 6
  # implict jump to bb31
bb31:   # loop depth 5
  ADDIW s4, s4, 1
  BGE s4, a4, bb33
  # implict jump to bb32
bb32:   # loop depth 5
  JAL zero, bb23
bb33:   # loop depth 4
  JAL zero, bb25
bb34:   # loop depth 6
  ADDI a1, zero, 28
  MULW s3, t0, a1
  ADD s2, zero, zero
  LD t1, 152(sp)
  SH3ADD t1, t0, t1
  SD t1, 176(sp)
  LD t1, 168(sp)
  ADD t1, t1, s3
  SD t1, 184(sp)
  # implict jump to bb35
bb35:   # loop depth 7
  LUI s3, 2441
  ADDIW s3, s3, 1664
  SLT s3, s2, s3
  BNE s3, zero, bb40
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
  ADDI s11, zero, 817
  LD t1, 176(sp)
  SH2ADD s3, s2, t1
  REMW t1, a7, s11
  SW t1, 12(sp)
  LW a7, 0(s3)
  LD t1, 184(sp)
  SH2ADD a2, s2, t1
  ADDIW s2, s2, 1
  LW s3, 0(a2)
  LW t1, 12(sp)
  ADDW a2, t1, a7
  ADDW a7, a2, s3
  BGE s2, a6, bb42
  # implict jump to bb41
bb41:   # loop depth 7
  JAL zero, bb35
bb42:   # loop depth 6
  JAL zero, bb37
main:   # loop depth 0
  ADDI sp, sp, -144
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s5, 80(sp)
  SD s6, 88(sp)
  SD s7, 96(sp)
  SD s8, 104(sp)
  SD s9, 112(sp)
  SD s10, 120(sp)
  SD s11, 128(sp)
  CALL getint
  ADD s8, a0, zero
  CALL getint
  SLT s0, zero, s8
  ADD s7, a0, zero
  SLT s1, zero, s7
  CALL getint
  SW a0, 36(sp)
  AND s0, s0, s1
  CALL getint
  ADD s6, a0, zero
  CALL getint
  ADD s5, a0, zero
  CALL getint
  ADD s4, a0, zero
  CALL getint
  ADD s3, a0, zero
  CALL getint
  ADD s1, a0, zero
  CALL getint
  BNE s0, zero, bb63
  # implict jump to bb44
bb44:   # loop depth 0
  ADD a4, zero, zero
  # implict jump to bb45
bb45:   # loop depth 1
  LUI t2, 3
  ADDIW t2, t2, -1536
  LA a1, arr2
  MULW t2, a4, t2
  ADD a3, zero, zero
  ADD a5, a1, t2
  # implict jump to bb46
bb46:   # loop depth 2
  LUI t2, 1
  ADDIW t2, t2, 1280
  ADD a2, zero, zero
  MULW t2, a3, t2
  ADDW a7, a4, a3
  ADD a6, a5, t2
  # implict jump to bb47
bb47:   # loop depth 3
  ADDI t2, zero, 1792
  MULW t2, a2, t2
  ADD a1, zero, zero
  ADD t3, a6, t2
  # implict jump to bb48
bb48:   # loop depth 4
  ADDI t2, zero, 896
  MULW t4, a1, t2
  ADD t2, zero, zero
  ADDW t5, a7, a1
  ADD t4, t3, t4
  # implict jump to bb49
bb49:   # loop depth 5
  ADDI s0, zero, 224
  MULW s0, t2, s0
  ADD t1, zero, zero
  ADD s0, t4, s0
  # implict jump to bb50
bb50:   # loop depth 6
  ADDI s7, zero, 28
  MULW s7, t1, s7
  ADDIW s8, t5, 1
  ADDIW s9, t5, 2
  ADDIW s10, t5, 3
  ADDIW s11, t5, 4
  ADDIW t0, t5, 5
  SW t0, 4(sp)
  ADD s7, s0, s7
  ADDIW t1, t1, 1
  SW t5, 0(s7)
  ADDIW t0, t5, 6
  SW t0, 8(sp)
  SW s8, 4(s7)
  SLTI s8, t1, 8
  SW s9, 8(s7)
  SW s10, 12(s7)
  SW s11, 16(s7)
  LW t0, 4(sp)
  SW t0, 20(s7)
  LW t0, 8(sp)
  SW t0, 24(s7)
  BNE s8, zero, bb62
  # implict jump to bb51
bb51:   # loop depth 5
  ADDIW t2, t2, 1
  SLTI s0, t2, 4
  BNE s0, zero, bb61
  # implict jump to bb52
bb52:   # loop depth 4
  ADDIW a1, a1, 1
  SLTI t2, a1, 2
  BNE t2, zero, bb60
  # implict jump to bb53
bb53:   # loop depth 3
  ADDIW a2, a2, 1
  SLTI t2, a2, 3
  BNE t2, zero, bb59
  # implict jump to bb54
bb54:   # loop depth 2
  ADDIW a3, a3, 1
  SLTI t2, a3, 2
  BNE t2, zero, bb58
  # implict jump to bb55
bb55:   # loop depth 1
  ADDIW a4, a4, 1
  SLTI t2, a4, 10
  BNE t2, zero, bb57
  # implict jump to bb56
bb56:   # loop depth 0
  ADD a6, a0, zero
  ADD a5, s1, zero
  ADD a4, s3, zero
  ADD a3, s4, zero
  ADD a2, s5, zero
  ADD a1, s6, zero
  LW a0, 36(sp)
  CALL loop3
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  LD s7, 96(sp)
  LD s8, 104(sp)
  LD s9, 112(sp)
  LD s10, 120(sp)
  LD s11, 128(sp)
  ADDI sp, sp, 144
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
  ADD a4, zero, zero
  # implict jump to bb64
bb64:   # loop depth 1
  LUI t2, 1
  ADDIW t2, t2, 1664
  LA a1, arr1
  MULW t2, a4, t2
  ADD a3, zero, zero
  ADD a5, a1, t2
  # implict jump to bb65
bb65:   # loop depth 2
  LUI t2, 1
  ADDIW t2, t2, -1216
  ADD a2, zero, zero
  MULW t2, a3, t2
  ADDW a7, a4, a3
  ADD a6, a5, t2
  # implict jump to bb66
bb66:   # loop depth 3
  ADDI t2, zero, 960
  MULW t2, a2, t2
  ADD a1, zero, zero
  ADDW t4, a7, a2
  ADD t3, a6, t2
  # implict jump to bb67
bb67:   # loop depth 4
  ADDI t2, zero, 240
  MULW t5, a1, t2
  ADD t2, zero, zero
  ADDW s0, t4, a1
  ADD t5, t3, t5
  # implict jump to bb68
bb68:   # loop depth 5
  ADDI s9, zero, 48
  MULW s9, t2, s9
  ADD t1, zero, zero
  ADDW s10, s0, t2
  ADD s9, t5, s9
  # implict jump to bb69
bb69:   # loop depth 6
  ADDW t0, s10, t1
  SW t0, 12(sp)
  SH3ADD s11, t1, s9
  LW t0, 12(sp)
  ADDIW t0, t0, 1
  SW t0, 24(sp)
  LW t0, 12(sp)
  ADDW t0, t0, s8
  SW t0, 16(sp)
  LW t0, 24(sp)
  ADDW t0, t0, s8
  SW t0, 28(sp)
  LW t0, 16(sp)
  ADDW t0, t0, s7
  SW t0, 20(sp)
  ADDIW t1, t1, 1
  LW t0, 28(sp)
  ADDW t0, t0, s7
  SW t0, 32(sp)
  LW t0, 20(sp)
  SW t0, 0(s11)
  SLTI t0, t1, 6
  SB t0, 0(sp)
  LW t0, 32(sp)
  SW t0, 4(s11)
  LB t0, 0(sp)
  BNE t0, zero, bb80
  # implict jump to bb70
bb70:   # loop depth 5
  ADDIW t2, t2, 1
  SLTI s9, t2, 5
  BNE s9, zero, bb79
  # implict jump to bb71
bb71:   # loop depth 4
  ADDIW a1, a1, 1
  SLTI t2, a1, 4
  BNE t2, zero, bb78
  # implict jump to bb72
bb72:   # loop depth 3
  ADDIW a2, a2, 1
  SLTI t2, a2, 3
  BNE t2, zero, bb77
  # implict jump to bb73
bb73:   # loop depth 2
  ADDIW a3, a3, 1
  SLTI t2, a3, 2
  BNE t2, zero, bb76
  # implict jump to bb74
bb74:   # loop depth 1
  ADDIW a4, a4, 1
  SLT a1, a4, s7
  SLT t2, a4, s8
  AND t2, t2, a1
  BNE t2, zero, bb75
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
