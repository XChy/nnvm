.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
arr2:
.space 107520
arr1:
.space 57600
.section .data


.section .text
main:   # loop depth 0
  ADDI sp, sp, -352
  SD s6, 152(sp)
  SD s7, 160(sp)
  SD s8, 168(sp)
  SD s9, 176(sp)
  SD ra, 192(sp)
  SD s0, 200(sp)
  SD s1, 208(sp)
  SD s2, 216(sp)
  SD s3, 224(sp)
  SD s4, 232(sp)
  SD s10, 240(sp)
  LUI s4, 1
  LUI s3, 1
  ADDI s2, zero, 0
  ADDI s0, zero, 0
  LA t0, arr1
  SD t0, 256(sp)
  CALL getint
  ADD s6, a0, zero
  ADDIW s4, s4, 1664
  SLT s1, s0, s6
  ADDIW s3, s3, -1216
  ADD t0, zero, s4
  SW t0, 132(sp)
  CALL getint
  ADD s7, a0, zero
  ADD t0, zero, s3
  SW t0, 104(sp)
  SLT s2, s2, s7
  CALL getint
  SW a0, 128(sp)
  AND s8, s1, s2
  CALL getint
  SW a0, 148(sp)
  CALL getint
  SW a0, 124(sp)
  CALL getint
  SW a0, 120(sp)
  CALL getint
  SW a0, 116(sp)
  CALL getint
  SW a0, 112(sp)
  CALL getint
  BNE s8, zero, bb63
  # implict jump to bb1
bb1:   # loop depth 0
  LUI a1, 3
  LA t0, arr2
  SD t0, 280(sp)
  ADDIW a1, a1, -1536
  ADD s6, zero, zero
  ADD t1, zero, zero
  ADD t0, zero, a1
  SW t0, 96(sp)
  # implict jump to bb2
bb2:   # loop depth 1
  LUI a3, 1
  SW t1, 108(sp)
  ADDIW a3, a3, 1280
  ADD t3, zero, zero
  ADD t4, zero, zero
  LW t0, 108(sp)
  LD t1, 280(sp)
  ADD t0, t1, t0
  SD t0, 272(sp)
  ADD t0, zero, a3
  SW t0, 92(sp)
  # implict jump to bb3
bb3:   # loop depth 2
  ADD t5, zero, zero
  ADD a7, zero, zero
  ADDW s9, s6, t3
  LD t0, 272(sp)
  ADD s8, t0, t4
  # implict jump to bb4
bb4:   # loop depth 3
  ADD a5, zero, zero
  ADD a6, zero, zero
  ADD t0, s8, a7
  SD t0, 264(sp)
  # implict jump to bb5
bb5:   # loop depth 4
  ADD a2, zero, zero
  ADD a4, zero, zero
  ADDW t0, s9, a5
  SW t0, 80(sp)
  LD t0, 264(sp)
  ADD t0, t0, a6
  SD t0, 336(sp)
  # implict jump to bb6
bb6:   # loop depth 5
  ADD a3, zero, zero
  ADD a1, zero, zero
  LD t0, 336(sp)
  ADD t0, t0, a4
  SD t0, 328(sp)
  # implict jump to bb7
bb7:   # loop depth 6
  LW t0, 80(sp)
  ADDIW t0, t0, 1
  SW t0, 72(sp)
  LD t0, 328(sp)
  ADD t0, t0, a1
  SD t0, 320(sp)
  LW t0, 80(sp)
  ADDIW t0, t0, 2
  SW t0, 68(sp)
  LD t0, 320(sp)
  LW t1, 80(sp)
  SW t1, 0(t0)
  LW t0, 80(sp)
  ADDIW t0, t0, 3
  SW t0, 64(sp)
  LW t0, 72(sp)
  LD t1, 320(sp)
  SW t0, 4(t1)
  LW t0, 80(sp)
  ADDIW t0, t0, 4
  SW t0, 60(sp)
  LW t0, 68(sp)
  LD t1, 320(sp)
  SW t0, 8(t1)
  LW t0, 80(sp)
  ADDIW t0, t0, 5
  SW t0, 56(sp)
  LW t0, 64(sp)
  LD t1, 320(sp)
  SW t0, 12(t1)
  LW t0, 60(sp)
  LD t1, 320(sp)
  SW t0, 16(t1)
  ADDIW a3, a3, 1
  LW t0, 80(sp)
  ADDIW t0, t0, 6
  SW t0, 52(sp)
  LW t0, 56(sp)
  LD t1, 320(sp)
  SW t0, 20(t1)
  ADDIW a1, a1, 28
  SLTI t0, a3, 8
  SB t0, 2(sp)
  LW t0, 52(sp)
  LD t1, 320(sp)
  SW t0, 24(t1)
  LB t0, 2(sp)
  BNE t0, zero, bb62
  # implict jump to bb8
bb8:   # loop depth 5
  ADDIW a2, a2, 1
  ADDIW a4, a4, 224
  SLTI a3, a2, 4
  BNE a3, zero, bb61
  # implict jump to bb9
bb9:   # loop depth 4
  ADDIW a5, a5, 1
  ADDIW a6, a6, 896
  SLTI a3, a5, 2
  BNE a3, zero, bb60
  # implict jump to bb10
bb10:   # loop depth 3
  ADDIW t5, t5, 1
  ADDIW a7, a7, 1792
  SLTI a2, t5, 3
  BNE a2, zero, bb59
  # implict jump to bb11
bb11:   # loop depth 2
  ADDIW t3, t3, 1
  LW t0, 92(sp)
  ADDW t4, t4, t0
  SLTI a3, t3, 2
  BNE a3, zero, bb58
  # implict jump to bb12
bb12:   # loop depth 1
  ADDIW s6, s6, 1
  LW t0, 108(sp)
  LW t1, 96(sp)
  ADDW t1, t0, t1
  SLTI a1, s6, 10
  BNE a1, zero, bb57
  # implict jump to bb13
bb13:   # loop depth 1
  ADD t5, zero, zero
  ADD a3, zero, zero
  ADD s6, zero, zero
  ADD s7, zero, zero
  ADD a6, zero, zero
  ADD s8, zero, zero
  ADD t4, zero, zero
  # implict jump to bb14
bb14:   # loop depth 1
  SLTI s9, s8, 10
  BNE s9, zero, bb17
  # implict jump to bb15
bb15:   # loop depth 1
  # implict jump to bb16
bb16:   # loop depth 0
  ADD a0, t5, zero
  LD s6, 152(sp)
  LD s7, 160(sp)
  LD s8, 168(sp)
  LD s9, 176(sp)
  LD ra, 192(sp)
  LD s0, 200(sp)
  LD s1, 208(sp)
  LD s2, 216(sp)
  LD s3, 224(sp)
  LD s4, 232(sp)
  LD s10, 240(sp)
  ADDI sp, sp, 352
  JALR zero, 0(ra)
bb17:   # loop depth 1
  ADD t0, zero, zero
  SW t0, 24(sp)
  # implict jump to bb18
bb18:   # loop depth 2
  LW t0, 24(sp)
  SW t0, 24(sp)
  LW t0, 24(sp)
  SLTI a7, t0, 100
  BNE a7, zero, bb23
  # implict jump to bb19
bb19:   # loop depth 2
  # implict jump to bb20
bb20:   # loop depth 1
  ADDIW s8, s8, 1
  LW t0, 128(sp)
  BGE s8, t0, bb22
  # implict jump to bb21
bb21:   # loop depth 1
  JAL zero, bb14
bb22:   # loop depth 1
  JAL zero, bb16
bb23:   # loop depth 2
  ADD s7, zero, zero
  LW t0, 24(sp)
  SW t0, 24(sp)
  # implict jump to bb24
bb24:   # loop depth 3
  SLTI s9, s7, 1000
  LW t0, 24(sp)
  SW t0, 24(sp)
  BNE s9, zero, bb29
  # implict jump to bb25
bb25:   # loop depth 3
  LW t0, 24(sp)
  SW t0, 24(sp)
  # implict jump to bb26
bb26:   # loop depth 2
  LW t0, 24(sp)
  SW t0, 24(sp)
  LW t0, 24(sp)
  ADDIW t0, t0, 1
  SW t0, 24(sp)
  LW t0, 148(sp)
  LW t1, 24(sp)
  BGE t1, t0, bb28
  # implict jump to bb27
bb27:   # loop depth 2
  LW t0, 24(sp)
  SW t0, 24(sp)
  JAL zero, bb18
bb28:   # loop depth 2
  JAL zero, bb20
bb29:   # loop depth 3
  ADD s6, zero, zero
  LW t0, 24(sp)
  SW t0, 24(sp)
  # implict jump to bb30
bb30:   # loop depth 4
  LUI a1, 2
  ADDIW a1, a1, 1808
  SLT t3, s6, a1
  LW t0, 24(sp)
  SW t0, 24(sp)
  BNE t3, zero, bb35
  # implict jump to bb31
bb31:   # loop depth 4
  LW t0, 24(sp)
  SW t0, 24(sp)
  # implict jump to bb32
bb32:   # loop depth 3
  ADDIW s7, s7, 1
  LW t0, 24(sp)
  SW t0, 24(sp)
  LW t0, 124(sp)
  BGE s7, t0, bb34
  # implict jump to bb33
bb33:   # loop depth 3
  LW t0, 24(sp)
  SW t0, 24(sp)
  JAL zero, bb24
bb34:   # loop depth 3
  LW t0, 24(sp)
  SW t0, 24(sp)
  JAL zero, bb26
bb35:   # loop depth 4
  LW t0, 24(sp)
  SW t0, 24(sp)
  ADD a6, zero, zero
  # implict jump to bb36
bb36:   # loop depth 5
  LUI a7, 24
  ADDIW a7, a7, 1696
  SLT s9, a6, a7
  LW t0, 24(sp)
  SW t0, 24(sp)
  BNE s9, zero, bb41
  # implict jump to bb37
bb37:   # loop depth 5
  LW t0, 24(sp)
  SW t0, 24(sp)
  # implict jump to bb38
bb38:   # loop depth 4
  ADDIW s6, s6, 1
  LW t0, 24(sp)
  SW t0, 24(sp)
  LW t0, 120(sp)
  BGE s6, t0, bb40
  # implict jump to bb39
bb39:   # loop depth 4
  LW t0, 24(sp)
  SW t0, 24(sp)
  JAL zero, bb30
bb40:   # loop depth 4
  LW t0, 24(sp)
  SW t0, 24(sp)
  JAL zero, bb32
bb41:   # loop depth 5
  LW t0, 24(sp)
  SW t0, 24(sp)
  ADD t4, zero, zero
  # implict jump to bb42
bb42:   # loop depth 6
  LUI a7, 244
  ADDIW a7, a7, 576
  SLT a7, t4, a7
  LW t0, 24(sp)
  SW t0, 24(sp)
  BNE a7, zero, bb47
  # implict jump to bb43
bb43:   # loop depth 6
  LW t0, 24(sp)
  SW t0, 24(sp)
  # implict jump to bb44
bb44:   # loop depth 5
  ADDIW a6, a6, 1
  LW t0, 24(sp)
  SW t0, 24(sp)
  LW t0, 116(sp)
  BGE a6, t0, bb46
  # implict jump to bb45
bb45:   # loop depth 5
  LW t0, 24(sp)
  SW t0, 24(sp)
  JAL zero, bb36
bb46:   # loop depth 5
  LW t0, 24(sp)
  SW t0, 24(sp)
  JAL zero, bb38
bb47:   # loop depth 6
  ADD a3, zero, zero
  LW t0, 24(sp)
  SW t0, 24(sp)
  # implict jump to bb48
bb48:   # loop depth 7
  LUI a5, 2441
  ADDIW a5, a5, 1664
  SLT a5, a3, a5
  LW t0, 24(sp)
  SW t0, 24(sp)
  BNE a5, zero, bb53
  # implict jump to bb49
bb49:   # loop depth 7
  # implict jump to bb50
bb50:   # loop depth 6
  ADDIW t4, t4, 1
  LW t0, 112(sp)
  BGE t4, t0, bb52
  # implict jump to bb51
bb51:   # loop depth 6
  LW t0, 24(sp)
  SW t0, 24(sp)
  JAL zero, bb42
bb52:   # loop depth 6
  LW t0, 24(sp)
  SW t0, 24(sp)
  JAL zero, bb44
bb53:   # loop depth 7
  ADDI a5, zero, 817
  LW t0, 132(sp)
  MULW t3, s8, t0
  REMW a5, t5, a5
  ADDI a7, zero, 960
  LW t0, 24(sp)
  LW t1, 104(sp)
  MULW t5, t0, t1
  ADDI s10, zero, 240
  MULW s9, s7, a7
  LW t0, 96(sp)
  MULW t0, s8, t0
  SW t0, 40(sp)
  ADDI t0, zero, 48
  SW t0, 84(sp)
  MULW s10, s6, s10
  LD t0, 256(sp)
  ADD a7, t0, t3
  ADDI t0, zero, 1792
  SW t0, 144(sp)
  LW t0, 92(sp)
  LW t1, 24(sp)
  MULW t0, t1, t0
  SW t0, 48(sp)
  LW t0, 84(sp)
  MULW t0, a6, t0
  SW t0, 32(sp)
  ADD a7, a7, t5
  ADDI t3, zero, 896
  LW t0, 144(sp)
  MULW t0, s7, t0
  SW t0, 88(sp)
  ADD a7, a7, s9
  ADDI t0, zero, 224
  SW t0, 140(sp)
  MULW t0, s6, t3
  SW t0, 76(sp)
  LD t0, 280(sp)
  LW t1, 40(sp)
  ADD t3, t0, t1
  ADD a7, a7, s10
  ADDI s9, zero, 28
  LW t0, 140(sp)
  MULW t5, a6, t0
  LW t0, 48(sp)
  ADD t3, t3, t0
  LW t0, 32(sp)
  ADD a7, a7, t0
  MULW s9, t4, s9
  LW t0, 88(sp)
  ADD t3, t3, t0
  SH3ADD a7, t4, a7
  LW t0, 76(sp)
  ADD t3, t3, t0
  SH2ADD a7, a3, a7
  ADD t3, t3, t5
  LW a7, 0(a7)
  ADD t3, t3, s9
  SH2ADD t3, a3, t3
  ADDIW a3, a3, 1
  LW t3, 0(t3)
  ADDW a5, a5, a7
  ADDW t5, a5, t3
  BGE a3, a0, bb56
  # implict jump to bb54
bb54:   # loop depth 7
  # implict jump to bb55
bb55:   # loop depth 7
  LW t0, 24(sp)
  SW t0, 24(sp)
  JAL zero, bb48
bb56:   # loop depth 7
  JAL zero, bb50
bb57:   # loop depth 1
  JAL zero, bb2
bb58:   # loop depth 2
  JAL zero, bb3
bb59:   # loop depth 3
  JAL zero, bb4
bb60:   # loop depth 4
  JAL zero, bb5
bb61:   # loop depth 5
  JAL zero, bb6
bb62:   # loop depth 6
  JAL zero, bb7
bb63:   # loop depth 0
  ADD t4, zero, zero
  ADD a5, zero, zero
  # implict jump to bb64
bb64:   # loop depth 1
  ADD t3, zero, zero
  ADD a4, zero, zero
  LD t0, 256(sp)
  ADD t0, t0, a5
  SD t0, 248(sp)
  # implict jump to bb65
bb65:   # loop depth 2
  ADD a7, zero, zero
  ADD a3, zero, zero
  ADDW s8, t4, t3
  LD t0, 248(sp)
  ADD t5, t0, a4
  # implict jump to bb66
bb66:   # loop depth 3
  ADD a6, zero, zero
  ADD a2, zero, zero
  ADDW t0, s8, a7
  SW t0, 44(sp)
  ADD t0, t5, a3
  SD t0, 312(sp)
  # implict jump to bb67
bb67:   # loop depth 4
  ADD a1, zero, zero
  ADD t2, zero, zero
  LW t0, 44(sp)
  ADDW t0, t0, a6
  SW t0, 36(sp)
  LD t0, 312(sp)
  ADD t0, t0, a2
  SD t0, 304(sp)
  # implict jump to bb68
bb68:   # loop depth 5
  ADD t1, zero, zero
  LW t0, 36(sp)
  ADDW t0, t0, a1
  SW t0, 28(sp)
  LD t0, 304(sp)
  ADD t0, t0, t2
  SD t0, 296(sp)
  # implict jump to bb69
bb69:   # loop depth 6
  LW t0, 28(sp)
  ADDW t0, t0, t1
  SW t0, 20(sp)
  LD t0, 296(sp)
  SH3ADD t0, t1, t0
  SD t0, 288(sp)
  LW t0, 20(sp)
  ADDIW t0, t0, 1
  SW t0, 4(sp)
  LW t0, 20(sp)
  ADDW t0, t0, s6
  SW t0, 16(sp)
  LW t0, 4(sp)
  ADDW t0, t0, s6
  SW t0, 8(sp)
  LW t0, 16(sp)
  ADDW t0, t0, s7
  SW t0, 12(sp)
  ADDIW t1, t1, 1
  LW t0, 8(sp)
  ADDW t0, t0, s7
  SW t0, 100(sp)
  LW t0, 12(sp)
  LD s0, 288(sp)
  SW t0, 0(s0)
  SLTI t0, t1, 6
  SB t0, 0(sp)
  LW t0, 100(sp)
  LD s0, 288(sp)
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
  SLTI s9, a6, 4
  BNE s9, zero, bb78
  # implict jump to bb72
bb72:   # loop depth 3
  ADDIW a7, a7, 1
  ADDIW a3, a3, 960
  SLTI a2, a7, 3
  BNE a2, zero, bb77
  # implict jump to bb73
bb73:   # loop depth 2
  ADDIW t3, t3, 1
  LW t0, 104(sp)
  ADDW a4, a4, t0
  SLTI a1, t3, 2
  BNE a1, zero, bb76
  # implict jump to bb74
bb74:   # loop depth 1
  ADDIW t4, t4, 1
  LW t0, 132(sp)
  ADDW a5, a5, t0
  SLT a3, t4, s7
  SLT a2, t4, s6
  AND a2, a2, a3
  BNE a2, zero, bb75
  JAL zero, bb1
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
