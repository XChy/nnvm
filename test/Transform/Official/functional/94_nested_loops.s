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
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD t4, zero, zero
  ADD t3, zero, zero
  ADD s0, zero, zero
  ADD t2, zero, zero
  ADD t1, zero, zero
  ADD a7, zero, zero
  ADD t0, zero, zero
  # implict jump to bb1
bb1:
  SLTI t5, t3, 10
  BNE t5, zero, bb4
  # implict jump to bb2
bb2:
  ADD a0, t0, zero
  # implict jump to bb3
bb3:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb4:
  ADD t5, zero, zero
  # implict jump to bb5
bb5:
  SLTI s1, t5, 100
  BNE s1, zero, bb10
  # implict jump to bb6
bb6:
  # implict jump to bb7
bb7:
  ADDIW t3, t3, 1
  SLT t5, t3, a0
  XORI t5, t5, 1
  BNE t5, zero, bb9
  # implict jump to bb8
bb8:
  JAL zero, bb1
bb9:
  ADD a0, t0, zero
  JAL zero, bb3
bb10:
  ADD t4, zero, zero
  # implict jump to bb11
bb11:
  SLTI s1, t4, 1000
  BNE s1, zero, bb16
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  ADDIW t5, t5, 1
  SLT s1, t5, a1
  XORI s1, s1, 1
  BNE s1, zero, bb15
  # implict jump to bb14
bb14:
  JAL zero, bb5
bb15:
  JAL zero, bb7
bb16:
  ADD s0, zero, zero
  # implict jump to bb17
bb17:
  LUI s1, 2
  ADDIW s1, s1, 1808
  SLT s1, s0, s1
  BNE s1, zero, bb22
  # implict jump to bb18
bb18:
  # implict jump to bb19
bb19:
  ADDIW t4, t4, 1
  SLT s1, t4, a2
  XORI s1, s1, 1
  BNE s1, zero, bb21
  # implict jump to bb20
bb20:
  JAL zero, bb11
bb21:
  JAL zero, bb13
bb22:
  ADD a7, zero, zero
  # implict jump to bb23
bb23:
  LUI s1, 24
  ADDIW s1, s1, 1696
  SLT s1, a7, s1
  BNE s1, zero, bb28
  # implict jump to bb24
bb24:
  # implict jump to bb25
bb25:
  ADDIW s0, s0, 1
  SLT s1, s0, a3
  XORI s1, s1, 1
  BNE s1, zero, bb27
  # implict jump to bb26
bb26:
  JAL zero, bb17
bb27:
  JAL zero, bb19
bb28:
  ADD t2, zero, zero
  # implict jump to bb29
bb29:
  LUI s1, 244
  ADDIW s1, s1, 576
  SLT s1, t2, s1
  BNE s1, zero, bb34
  # implict jump to bb30
bb30:
  # implict jump to bb31
bb31:
  ADDIW a7, a7, 1
  SLT s1, a7, a4
  XORI s1, s1, 1
  BNE s1, zero, bb33
  # implict jump to bb32
bb32:
  JAL zero, bb23
bb33:
  JAL zero, bb25
bb34:
  ADD t1, zero, zero
  # implict jump to bb35
bb35:
  LUI s1, 2441
  ADDIW s1, s1, 1664
  SLT s1, t1, s1
  BNE s1, zero, bb40
  # implict jump to bb36
bb36:
  # implict jump to bb37
bb37:
  ADDIW t2, t2, 1
  SLT s1, t2, a5
  XORI s1, s1, 1
  BNE s1, zero, bb39
  # implict jump to bb38
bb38:
  JAL zero, bb29
bb39:
  JAL zero, bb31
bb40:
  ADDI s1, zero, 817
  REMW t0, t0, s1
  LUI s1, 1
  ADDIW s1, s1, 1664
  MULW s1, t3, s1
  LA s2, arr1
  ADD s1, s2, s1
  LUI s2, 1
  ADDIW s2, s2, -1216
  MULW s2, t5, s2
  ADD s1, s1, s2
  ADDI s2, zero, 960
  MULW s2, t4, s2
  ADD s1, s1, s2
  ADDI s2, zero, 240
  MULW s2, s0, s2
  ADD s1, s1, s2
  ADDI s2, zero, 48
  MULW s2, a7, s2
  ADD s1, s1, s2
  SLLIW s2, t2, 3
  ADD s1, s1, s2
  SLLIW s2, t1, 2
  ADD s1, s1, s2
  LW s1, 0(s1)
  ADDW t0, t0, s1
  LUI s1, 3
  ADDIW s1, s1, -1536
  MULW s1, t3, s1
  LA s3, arr2
  ADD s1, s3, s1
  LUI s3, 1
  ADDIW s3, s3, 1280
  MULW s3, t5, s3
  ADD s1, s1, s3
  ADDI s3, zero, 1792
  MULW s3, t4, s3
  ADD s1, s1, s3
  ADDI s3, zero, 896
  MULW s3, s0, s3
  ADD s1, s1, s3
  ADDI s3, zero, 224
  MULW s3, a7, s3
  ADD s1, s1, s3
  ADDI s3, zero, 28
  MULW s3, t2, s3
  ADD s1, s1, s3
  ADD s1, s1, s2
  LW s1, 0(s1)
  ADDW t0, t0, s1
  ADDIW t1, t1, 1
  SLT s1, t1, a6
  XORI s1, s1, 1
  BNE s1, zero, bb42
  # implict jump to bb41
bb41:
  JAL zero, bb35
bb42:
  JAL zero, bb37
main:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s2, 16(sp)
  SD s3, 24(sp)
  SD s4, 32(sp)
  SD s5, 40(sp)
  SD s6, 48(sp)
  SD s7, 56(sp)
  SD s8, 64(sp)
  SD s9, 72(sp)
  SD s10, 80(sp)
  SD s0, 88(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  CALL getint
  ADD s2, a0, zero
  CALL getint
  ADD s3, a0, zero
  CALL getint
  ADD s4, a0, zero
  CALL getint
  ADD s5, a0, zero
  CALL getint
  ADD s6, a0, zero
  CALL getint
  ADD s7, a0, zero
  CALL getint
  ADD a6, a0, zero
  ADD a0, zero, zero
  # implict jump to bb44
bb44:
  BLT a0, s0, bb82
  # implict jump to bb45
bb45:
  ADD a1, zero, zero
  # implict jump to bb46
bb46:
  BNE a1, zero, bb66
  # implict jump to bb47
bb47:
  ADD a2, zero, zero
  # implict jump to bb48
bb48:
  ADD a3, zero, zero
  # implict jump to bb49
bb49:
  ADD a4, zero, zero
  # implict jump to bb50
bb50:
  ADD a5, zero, zero
  # implict jump to bb51
bb51:
  ADD a1, zero, zero
  # implict jump to bb52
bb52:
  ADD a0, zero, zero
  # implict jump to bb53
bb53:
  LUI s0, 3
  ADDIW s0, s0, -1536
  MULW s0, a2, s0
  LA s1, arr2
  ADD s0, s1, s0
  LUI s1, 1
  ADDIW s1, s1, 1280
  MULW s1, a3, s1
  ADD s0, s0, s1
  ADDI s1, zero, 1792
  MULW s1, a4, s1
  ADD s0, s0, s1
  ADDI s1, zero, 896
  MULW s1, a5, s1
  ADD s0, s0, s1
  ADDI s1, zero, 224
  MULW s1, a1, s1
  ADD s0, s0, s1
  ADDI s1, zero, 28
  MULW s1, a0, s1
  ADD s0, s0, s1
  ADDW s1, a2, a3
  ADDW s1, s1, a5
  SW s1, 0(s0)
  ADDIW s8, s1, 1
  SW s8, 4(s0)
  ADDIW s8, s1, 2
  SW s8, 8(s0)
  ADDIW s8, s1, 3
  SW s8, 12(s0)
  ADDIW s8, s1, 4
  SW s8, 16(s0)
  ADDIW s8, s1, 5
  SW s8, 20(s0)
  ADDIW s1, s1, 6
  SW s1, 24(s0)
  ADDIW a0, a0, 1
  SLTI s0, a0, 8
  BNE s0, zero, bb65
  # implict jump to bb54
bb54:
  ADDIW a1, a1, 1
  SLTI a0, a1, 4
  BNE a0, zero, bb64
  # implict jump to bb55
bb55:
  ADDIW a5, a5, 1
  SLTI a0, a5, 2
  BNE a0, zero, bb63
  # implict jump to bb56
bb56:
  ADDIW a4, a4, 1
  SLTI a0, a4, 3
  BNE a0, zero, bb62
  # implict jump to bb57
bb57:
  ADDIW a3, a3, 1
  SLTI a0, a3, 2
  BNE a0, zero, bb61
  # implict jump to bb58
bb58:
  ADDIW a2, a2, 1
  SLTI a0, a2, 10
  BNE a0, zero, bb60
  # implict jump to bb59
bb59:
  ADD a0, s2, zero
  ADD a1, s3, zero
  ADD a2, s4, zero
  ADD a3, s5, zero
  ADD a4, s6, zero
  ADD a5, s7, zero
  CALL loop3
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s2, 16(sp)
  LD s3, 24(sp)
  LD s4, 32(sp)
  LD s5, 40(sp)
  LD s6, 48(sp)
  LD s7, 56(sp)
  LD s8, 64(sp)
  LD s9, 72(sp)
  LD s10, 80(sp)
  LD s0, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb60:
  JAL zero, bb48
bb61:
  JAL zero, bb49
bb62:
  JAL zero, bb50
bb63:
  JAL zero, bb51
bb64:
  JAL zero, bb52
bb65:
  JAL zero, bb53
bb66:
  ADD a1, zero, zero
  # implict jump to bb67
bb67:
  ADD a2, zero, zero
  # implict jump to bb68
bb68:
  ADD a3, zero, zero
  # implict jump to bb69
bb69:
  ADD a4, zero, zero
  # implict jump to bb70
bb70:
  ADD a5, zero, zero
  # implict jump to bb71
bb71:
  LUI s8, 1
  ADDIW s8, s8, 1664
  MULW s8, a0, s8
  LA s9, arr1
  ADD s8, s9, s8
  LUI s9, 1
  ADDIW s9, s9, -1216
  MULW s9, a1, s9
  ADD s8, s8, s9
  ADDI s9, zero, 960
  MULW s9, a2, s9
  ADD s8, s8, s9
  ADDI s9, zero, 240
  MULW s9, a3, s9
  ADD s8, s8, s9
  ADDI s9, zero, 48
  MULW s9, a4, s9
  ADD s8, s8, s9
  SLLIW s9, a5, 3
  ADD s8, s8, s9
  ADDW s9, a0, a1
  ADDW s9, s9, a2
  ADDW s9, s9, a3
  ADDW s9, s9, a4
  ADDW s9, s9, a5
  ADDW s10, s9, s0
  ADDW s10, s10, s1
  SW s10, 0(s8)
  ADDIW s9, s9, 1
  ADDW s9, s9, s0
  ADDW s9, s9, s1
  SW s9, 4(s8)
  ADDIW a5, a5, 1
  SLTI s8, a5, 6
  BNE s8, zero, bb81
  # implict jump to bb72
bb72:
  ADDIW a4, a4, 1
  SLTI a5, a4, 5
  BNE a5, zero, bb80
  # implict jump to bb73
bb73:
  ADDIW a3, a3, 1
  SLTI a4, a3, 4
  BNE a4, zero, bb79
  # implict jump to bb74
bb74:
  ADDIW a2, a2, 1
  SLTI a3, a2, 3
  BNE a3, zero, bb78
  # implict jump to bb75
bb75:
  ADDIW a1, a1, 1
  SLTI a2, a1, 2
  BNE a2, zero, bb77
  # implict jump to bb76
bb76:
  ADDIW a0, a0, 1
  JAL zero, bb44
bb77:
  JAL zero, bb67
bb78:
  JAL zero, bb68
bb79:
  JAL zero, bb69
bb80:
  JAL zero, bb70
bb81:
  JAL zero, bb71
bb82:
  SLT a1, a0, s1
  JAL zero, bb46
