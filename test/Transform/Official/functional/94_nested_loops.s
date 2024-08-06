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
bb1:   # loop depth 1
  SLTI t5, t3, 10
  BNE t5, zero, bb4
  # implict jump to bb2
bb2:   # loop depth 1
  # implict jump to bb3
bb3:   # loop depth 0
  ADD a0, t0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb4:   # loop depth 1
  ADD t5, zero, zero
  # implict jump to bb5
bb5:   # loop depth 2
  SLTI s1, t5, 100
  BNE s1, zero, bb10
  # implict jump to bb6
bb6:   # loop depth 2
  # implict jump to bb7
bb7:   # loop depth 1
  ADDIW t3, t3, 1
  SLT t5, t3, a0
  XORI t5, t5, 1
  BNE t5, zero, bb9
  # implict jump to bb8
bb8:   # loop depth 1
  JAL zero, bb1
bb9:   # loop depth 0
  JAL zero, bb3
bb10:   # loop depth 2
  ADD t4, zero, zero
  # implict jump to bb11
bb11:   # loop depth 3
  SLTI s1, t4, 1000
  BNE s1, zero, bb16
  # implict jump to bb12
bb12:   # loop depth 3
  # implict jump to bb13
bb13:   # loop depth 2
  ADDIW t5, t5, 1
  SLT s1, t5, a1
  XORI s1, s1, 1
  BNE s1, zero, bb15
  # implict jump to bb14
bb14:   # loop depth 2
  JAL zero, bb5
bb15:   # loop depth 1
  JAL zero, bb7
bb16:   # loop depth 3
  ADD s0, zero, zero
  # implict jump to bb17
bb17:   # loop depth 4
  LUI s1, 2
  ADDIW s1, s1, 1808
  SLT s1, s0, s1
  BNE s1, zero, bb22
  # implict jump to bb18
bb18:   # loop depth 4
  # implict jump to bb19
bb19:   # loop depth 3
  ADDIW t4, t4, 1
  SLT s1, t4, a2
  XORI s1, s1, 1
  BNE s1, zero, bb21
  # implict jump to bb20
bb20:   # loop depth 3
  JAL zero, bb11
bb21:   # loop depth 2
  JAL zero, bb13
bb22:   # loop depth 4
  ADD a7, zero, zero
  # implict jump to bb23
bb23:   # loop depth 5
  LUI s1, 24
  ADDIW s1, s1, 1696
  SLT s1, a7, s1
  BNE s1, zero, bb28
  # implict jump to bb24
bb24:   # loop depth 5
  # implict jump to bb25
bb25:   # loop depth 4
  ADDIW s0, s0, 1
  SLT s1, s0, a3
  XORI s1, s1, 1
  BNE s1, zero, bb27
  # implict jump to bb26
bb26:   # loop depth 4
  JAL zero, bb17
bb27:   # loop depth 3
  JAL zero, bb19
bb28:   # loop depth 5
  ADD t2, zero, zero
  # implict jump to bb29
bb29:   # loop depth 6
  LUI s1, 244
  ADDIW s1, s1, 576
  SLT s1, t2, s1
  BNE s1, zero, bb34
  # implict jump to bb30
bb30:   # loop depth 6
  # implict jump to bb31
bb31:   # loop depth 5
  ADDIW a7, a7, 1
  SLT s1, a7, a4
  XORI s1, s1, 1
  BNE s1, zero, bb33
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
  ADDIW t2, t2, 1
  SLT s1, t2, a5
  XORI s1, s1, 1
  BNE s1, zero, bb39
  # implict jump to bb38
bb38:   # loop depth 6
  JAL zero, bb29
bb39:   # loop depth 5
  JAL zero, bb31
bb40:   # loop depth 7
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
bb41:   # loop depth 7
  JAL zero, bb35
bb42:   # loop depth 6
  JAL zero, bb37
main:   # loop depth 0
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
  ADD s10, a0, zero
  CALL getint
  ADD a6, a0, zero
  ADD a0, zero, zero
  # implict jump to bb44
bb44:   # loop depth 1
  BLT a0, s0, bb82
  # implict jump to bb45
bb45:   # loop depth 1
  ADD a1, zero, zero
  # implict jump to bb46
bb46:   # loop depth 1
  BNE a1, zero, bb66
  # implict jump to bb47
bb47:   # loop depth 0
  ADD a2, zero, zero
  # implict jump to bb48
bb48:   # loop depth 1
  ADD a3, zero, zero
  # implict jump to bb49
bb49:   # loop depth 2
  ADD a4, zero, zero
  # implict jump to bb50
bb50:   # loop depth 3
  ADD a5, zero, zero
  # implict jump to bb51
bb51:   # loop depth 4
  ADD a1, zero, zero
  # implict jump to bb52
bb52:   # loop depth 5
  ADD a0, zero, zero
  # implict jump to bb53
bb53:   # loop depth 6
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
  ADDIW s7, s1, 1
  SW s7, 4(s0)
  ADDIW s7, s1, 2
  SW s7, 8(s0)
  ADDIW s7, s1, 3
  SW s7, 12(s0)
  ADDIW s7, s1, 4
  SW s7, 16(s0)
  ADDIW s7, s1, 5
  SW s7, 20(s0)
  ADDIW s1, s1, 6
  SW s1, 24(s0)
  ADDIW a0, a0, 1
  SLTI s0, a0, 8
  BNE s0, zero, bb65
  # implict jump to bb54
bb54:   # loop depth 5
  ADDIW a1, a1, 1
  SLTI a0, a1, 4
  BNE a0, zero, bb64
  # implict jump to bb55
bb55:   # loop depth 4
  ADDIW a5, a5, 1
  SLTI a0, a5, 2
  BNE a0, zero, bb63
  # implict jump to bb56
bb56:   # loop depth 3
  ADDIW a4, a4, 1
  SLTI a0, a4, 3
  BNE a0, zero, bb62
  # implict jump to bb57
bb57:   # loop depth 2
  ADDIW a3, a3, 1
  SLTI a0, a3, 2
  BNE a0, zero, bb61
  # implict jump to bb58
bb58:   # loop depth 1
  ADDIW a2, a2, 1
  SLTI a0, a2, 10
  BNE a0, zero, bb60
  # implict jump to bb59
bb59:   # loop depth 0
  ADD a0, s2, zero
  ADD a1, s3, zero
  ADD a2, s4, zero
  ADD a3, s5, zero
  ADD a4, s6, zero
  ADD a5, s10, zero
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
bb60:   # loop depth 1
  JAL zero, bb48
bb61:   # loop depth 2
  JAL zero, bb49
bb62:   # loop depth 3
  JAL zero, bb50
bb63:   # loop depth 4
  JAL zero, bb51
bb64:   # loop depth 5
  JAL zero, bb52
bb65:   # loop depth 6
  JAL zero, bb53
bb66:   # loop depth 1
  ADD a1, zero, zero
  # implict jump to bb67
bb67:   # loop depth 2
  ADD a2, zero, zero
  # implict jump to bb68
bb68:   # loop depth 3
  ADD a3, zero, zero
  # implict jump to bb69
bb69:   # loop depth 4
  ADD a4, zero, zero
  # implict jump to bb70
bb70:   # loop depth 5
  ADD a5, zero, zero
  # implict jump to bb71
bb71:   # loop depth 6
  LUI s7, 1
  ADDIW s7, s7, 1664
  MULW s7, a0, s7
  LA s8, arr1
  ADD s7, s8, s7
  LUI s8, 1
  ADDIW s8, s8, -1216
  MULW s8, a1, s8
  ADD s7, s7, s8
  ADDI s8, zero, 960
  MULW s8, a2, s8
  ADD s7, s7, s8
  ADDI s8, zero, 240
  MULW s8, a3, s8
  ADD s7, s7, s8
  ADDI s8, zero, 48
  MULW s8, a4, s8
  ADD s7, s7, s8
  SLLIW s8, a5, 3
  ADD s7, s7, s8
  ADDW s8, a0, a1
  ADDW s8, s8, a2
  ADDW s8, s8, a3
  ADDW s8, s8, a4
  ADDW s8, s8, a5
  ADDW s9, s8, s0
  ADDW s9, s9, s1
  SW s9, 0(s7)
  ADDIW s8, s8, 1
  ADDW s8, s8, s0
  ADDW s8, s8, s1
  SW s8, 4(s7)
  ADDIW a5, a5, 1
  SLTI s7, a5, 6
  BNE s7, zero, bb81
  # implict jump to bb72
bb72:   # loop depth 5
  ADDIW a4, a4, 1
  SLTI a5, a4, 5
  BNE a5, zero, bb80
  # implict jump to bb73
bb73:   # loop depth 4
  ADDIW a3, a3, 1
  SLTI a4, a3, 4
  BNE a4, zero, bb79
  # implict jump to bb74
bb74:   # loop depth 3
  ADDIW a2, a2, 1
  SLTI a3, a2, 3
  BNE a3, zero, bb78
  # implict jump to bb75
bb75:   # loop depth 2
  ADDIW a1, a1, 1
  SLTI a2, a1, 2
  BNE a2, zero, bb77
  # implict jump to bb76
bb76:   # loop depth 1
  ADDIW a0, a0, 1
  JAL zero, bb44
bb77:   # loop depth 2
  JAL zero, bb67
bb78:   # loop depth 3
  JAL zero, bb68
bb79:   # loop depth 4
  JAL zero, bb69
bb80:   # loop depth 5
  JAL zero, bb70
bb81:   # loop depth 6
  JAL zero, bb71
bb82:   # loop depth 1
  SLT a1, a0, s1
  JAL zero, bb46
