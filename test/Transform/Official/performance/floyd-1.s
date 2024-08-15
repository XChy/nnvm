.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
dst:
.space 8388608
w:
.space 8388608
temp:
.space 8388608
.section .data



.section .text
main:   # loop depth 0
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  LA s3, w
  LA s1, temp
  CALL getint
  ADDI s2, zero, 0
  ADD s0, a0, zero
  ADD a0, s3, zero
  CALL getarray
  ADDI a0, zero, 62
  CALL _sysy_starttime
  BLT s2, s0, bb57
  # implict jump to bb1
bb1:   # loop depth 0
  BLT s2, s0, bb7
  # implict jump to bb2
bb2:   # loop depth 0
  MULW s0, s0, s0
  LA s2, dst
  BLT zero, s0, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  ADDI a0, zero, 64
  CALL _sysy_stoptime
  ADD a1, s2, zero
  ADD a0, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb4:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  SH2ADD t2, t0, s1
  SH2ADD t1, t0, s2
  LW t2, 0(t2)
  ADDIW t0, t0, 1
  SW t2, 0(t1)
  BLT t0, s0, bb6
  JAL zero, bb3
bb6:   # loop depth 1
  JAL zero, bb5
bb7:   # loop depth 0
  ADD t1, zero, zero
  ADD t2, zero, zero
  ADD a0, zero, zero
  # implict jump to bb8
bb8:   # loop depth 1
  BLT s2, s0, bb12
  # implict jump to bb9
bb9:   # loop depth 1
  # implict jump to bb10
bb10:   # loop depth 1
  ADDIW a0, a0, 1
  BLT a0, s0, bb11
  JAL zero, bb2
bb11:   # loop depth 1
  JAL zero, bb8
bb12:   # loop depth 1
  MULW a4, a0, s0
  SLT t0, a0, s0
  XORI a2, t0, 1
  SLT a1, a0, zero
  ADD a5, zero, zero
  OR a3, a1, a2
  # implict jump to bb13
bb13:   # loop depth 2
  BLT s2, s0, bb18
  # implict jump to bb14
bb14:   # loop depth 2
  ADD t2, zero, zero
  # implict jump to bb15
bb15:   # loop depth 2
  ADDIW a5, a5, 1
  BLT a5, s0, bb17
  # implict jump to bb16
bb16:   # loop depth 1
  JAL zero, bb10
bb17:   # loop depth 2
  JAL zero, bb13
bb18:   # loop depth 2
  MULW t3, a5, s0
  SLT t0, a5, s0
  XORI t1, t0, 1
  SLT t0, a5, zero
  OR a6, t0, t1
  ADD t2, zero, zero
  ADDW t1, t3, a0
  OR t0, a6, a1
  SH2ADD t4, t1, s1
  OR a7, t0, a2
  # implict jump to bb19
bb19:   # loop depth 3
  BNE a7, zero, bb56
  # implict jump to bb20
bb20:   # loop depth 3
  LW t0, 0(t4)
  # implict jump to bb21
bb21:   # loop depth 3
  SLT t1, t2, s0
  SLT s3, t2, zero
  XORI t5, t1, 1
  BGE t0, zero, bb52
  # implict jump to bb22
bb22:   # loop depth 3
  ADD t1, zero, zero
  # implict jump to bb23
bb23:   # loop depth 3
  BNE t1, zero, bb27
  # implict jump to bb24
bb24:   # loop depth 3
  ADDIW t2, t2, 1
  BLT t2, s0, bb26
  # implict jump to bb25
bb25:   # loop depth 2
  JAL zero, bb15
bb26:   # loop depth 3
  JAL zero, bb19
bb27:   # loop depth 3
  OR t0, a6, s3
  OR t0, t0, t5
  BNE t0, zero, bb51
  # implict jump to bb28
bb28:   # loop depth 3
  ADDW t0, t3, t2
  SH2ADD t0, t0, s1
  LW t0, 0(t0)
  # implict jump to bb29
bb29:   # loop depth 3
  BLT t0, zero, bb44
  # implict jump to bb30
bb30:   # loop depth 3
  ADDW t0, t3, t2
  SH2ADD s5, t0, s1
  LW s6, 0(s5)
  BNE a7, zero, bb43
  # implict jump to bb31
bb31:   # loop depth 3
  LW s4, 0(t4)
  # implict jump to bb32
bb32:   # loop depth 3
  OR t0, a3, s3
  OR s3, t0, t5
  BNE s3, zero, bb42
  # implict jump to bb33
bb33:   # loop depth 3
  ADDW t0, a4, t2
  SH2ADD t0, t0, s1
  LW t0, 0(t0)
  # implict jump to bb34
bb34:   # loop depth 3
  ADDW t0, s4, t0
  BLT t0, s6, bb35
  JAL zero, bb24
bb35:   # loop depth 3
  BNE a7, zero, bb41
  # implict jump to bb36
bb36:   # loop depth 3
  LW t5, 0(t4)
  # implict jump to bb37
bb37:   # loop depth 3
  BNE s3, zero, bb40
  # implict jump to bb38
bb38:   # loop depth 3
  ADDW t0, a4, t2
  SH2ADD t0, t0, s1
  LW t0, 0(t0)
  # implict jump to bb39
bb39:   # loop depth 3
  ADDW t0, t5, t0
  SW t0, 0(s5)
  JAL zero, bb24
bb40:   # loop depth 3
  ADDI t0, zero, -1
  JAL zero, bb39
bb41:   # loop depth 3
  ADDI t5, zero, -1
  JAL zero, bb37
bb42:   # loop depth 3
  ADDI t0, zero, -1
  JAL zero, bb34
bb43:   # loop depth 3
  ADDI s4, zero, -1
  JAL zero, bb32
bb44:   # loop depth 3
  ADDW t0, t3, t2
  SH2ADD s4, t0, s1
  BNE a7, zero, bb50
  # implict jump to bb45
bb45:   # loop depth 3
  LW t0, 0(t4)
  # implict jump to bb46
bb46:   # loop depth 3
  OR s3, a3, s3
  OR t5, s3, t5
  BNE t5, zero, bb49
  # implict jump to bb47
bb47:   # loop depth 3
  ADDW t5, a4, t2
  SH2ADD t5, t5, s1
  LW t5, 0(t5)
  # implict jump to bb48
bb48:   # loop depth 3
  ADDW t0, t0, t5
  SW t0, 0(s4)
  JAL zero, bb24
bb49:   # loop depth 3
  ADDI t5, zero, -1
  JAL zero, bb48
bb50:   # loop depth 3
  ADDI t0, zero, -1
  JAL zero, bb46
bb51:   # loop depth 3
  ADDI t0, zero, -1
  JAL zero, bb29
bb52:   # loop depth 3
  OR t0, a3, s3
  OR t0, t0, t5
  BNE t0, zero, bb55
  # implict jump to bb53
bb53:   # loop depth 3
  ADDW t0, a4, t2
  SH2ADD t0, t0, s1
  LW t0, 0(t0)
  # implict jump to bb54
bb54:   # loop depth 3
  SLT t0, t0, zero
  XORI t1, t0, 1
  JAL zero, bb23
bb55:   # loop depth 3
  ADDI t0, zero, -1
  JAL zero, bb54
bb56:   # loop depth 3
  ADDI t0, zero, -1
  JAL zero, bb21
bb57:   # loop depth 0
  ADD t1, zero, zero
  # implict jump to bb58
bb58:   # loop depth 1
  BLT s2, s0, bb61
  # implict jump to bb59
bb59:   # loop depth 1
  ADDIW t1, t1, 1
  BLT t1, s0, bb60
  JAL zero, bb1
bb60:   # loop depth 1
  JAL zero, bb58
bb61:   # loop depth 1
  SLT t2, t1, s0
  ADD t0, zero, zero
  XORI a1, t2, 1
  SLT a0, t1, zero
  # implict jump to bb62
bb62:   # loop depth 2
  SLT a2, t0, s0
  MULW t2, t0, s0
  XORI a3, a2, 1
  SLT a2, t0, zero
  OR a2, a2, a3
  OR a2, a2, a0
  ADDW t2, t2, t1
  OR a3, a2, a1
  SH2ADD a2, t2, s1
  BNE a3, zero, bb66
  # implict jump to bb63
bb63:   # loop depth 2
  SH2ADD t2, t2, s3
  LW t2, 0(t2)
  # implict jump to bb64
bb64:   # loop depth 2
  ADDIW t0, t0, 1
  SW t2, 0(a2)
  BLT t0, s0, bb65
  JAL zero, bb59
bb65:   # loop depth 2
  JAL zero, bb62
bb66:   # loop depth 2
  ADDI t2, zero, -1
  JAL zero, bb64
