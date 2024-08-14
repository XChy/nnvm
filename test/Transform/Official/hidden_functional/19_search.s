.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global search
.global main
.section .bss







a:
.space 3600
.section .data
y_1:
.word 0x00000000
x_1:
.word 0x00000000
x_0:
.word 0x00000000
h:
.word 0x00000000
y_0:
.word 0x00000000
w:
.word 0x00000000
step:
.byte 1, 0, 0, 0, 0, 0, 0, 0, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 255, 255, 255, 255

.section .text
search:   # loop depth 0
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
  SD s10, 88(sp)
  ADDI t0, zero, 10
  ADD s10, a1, zero
  ADD s9, a0, zero
  BLT t0, a2, bb32
  # implict jump to bb1
bb1:   # loop depth 0
  LUI t0, 262144
  ADD a4, zero, zero
  ADDIW t0, t0, 0
  ADD a0, zero, zero
  ADD t2, zero, zero
  ADD t1, zero, zero
  ADD a3, zero, zero
  ADD a1, zero, t0
  ADD t0, zero, zero
  ADDIW s8, a2, 1
  # implict jump to bb2
bb2:   # loop depth 1
  ADD s1, a1, zero
  SLTI a1, t0, 4
  BNE a1, zero, bb6
  # implict jump to bb3
bb3:   # loop depth 0
  ADDI t0, zero, 10
  BLT t0, s1, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  ADD a0, s1, zero
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
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb5:   # loop depth 0
  LUI t0, 262144
  ADDIW t0, t0, 0
  ADD a0, zero, t0
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
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb6:   # loop depth 1
  LA a1, step
  LA t3, x_1
  LA a2, y_1
  ADD a6, s9, zero
  ADD a5, s10, zero
  ADD a7, zero, zero
  SH3ADD a1, t0, a1
  # implict jump to bb7
bb7:   # loop depth 2
  ADDI t4, zero, 120
  MULW t4, a6, t4
  LA t5, a
  ADD t4, t5, t4
  SH2ADD s0, a5, t4
  LW t4, 0(s0)
  XORI t4, t4, 1
  BNE t4, zero, bb26
  # implict jump to bb8
bb8:   # loop depth 2
  # implict jump to bb9
bb9:   # loop depth 1
  LW t3, 0(t3)
  ADD s5, a3, zero
  BEQ a6, t3, bb25
  # implict jump to bb10
bb10:   # loop depth 1
  ADD a2, zero, zero
  # implict jump to bb11
bb11:   # loop depth 1
  BNE a2, zero, bb24
  # implict jump to bb12
bb12:   # loop depth 1
  ADDIW s6, t0, 1
  ADDI t0, zero, 1
  BGE t0, a7, bb23
  # implict jump to bb13
bb13:   # loop depth 1
  BEQ a6, zero, bb22
  # implict jump to bb14
bb14:   # loop depth 1
  LA t0, h
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  XOR t0, a6, t0
  SLTIU t0, t0, 1
  # implict jump to bb15
bb15:   # loop depth 1
  SLTIU t1, a5, 1
  OR t1, t0, t1
  BNE t1, zero, bb21
  # implict jump to bb16
bb16:   # loop depth 1
  LA t2, w
  LW t2, 0(t2)
  ADDIW t2, t2, 1
  XOR t2, a5, t2
  SLTIU t2, t2, 1
  # implict jump to bb17
bb17:   # loop depth 1
  BNE t2, zero, bb20
  # implict jump to bb18
bb18:   # loop depth 1
  SW zero, 0(s0)
  ADD a2, s8, zero
  LW a0, 0(a1)
  ADDI s7, zero, 1
  ADD s4, t0, zero
  ADD s3, t1, zero
  ADD s2, t2, zero
  LW t0, 4(a1)
  SUBW a0, a6, a0
  SUBW a1, a5, t0
  CALL search
  SW s7, 0(s0)
  ADDIW a4, a0, 1
  MIN a1, a4, s1
  # implict jump to bb19
bb19:   # loop depth 1
  ADD a0, s2, zero
  ADD t2, s3, zero
  ADD t1, s4, zero
  ADD a3, s5, zero
  ADD t0, s6, zero
  JAL zero, bb2
bb20:   # loop depth 1
  ADD a1, s1, zero
  ADD s4, t0, zero
  ADD s3, t1, zero
  ADD s2, t2, zero
  JAL zero, bb19
bb21:   # loop depth 1
  ADDI t2, zero, 1
  JAL zero, bb17
bb22:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb15
bb23:   # loop depth 1
  ADD a1, s1, zero
  ADD s4, t1, zero
  ADD s3, t2, zero
  ADD s2, a0, zero
  JAL zero, bb19
bb24:   # loop depth 0
  ADDI a0, zero, 1
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
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb25:   # loop depth 1
  LW a2, 0(a2)
  XOR a2, a5, a2
  SLTIU a2, a2, 1
  JAL zero, bb11
bb26:   # loop depth 2
  LW a3, 0(t3)
  BEQ a6, a3, bb31
  # implict jump to bb27
bb27:   # loop depth 2
  ADD a3, zero, zero
  # implict jump to bb28
bb28:   # loop depth 2
  BNE a3, zero, bb30
  # implict jump to bb29
bb29:   # loop depth 2
  LW t4, 0(a1)
  ADDIW a7, a7, 1
  LW t5, 4(a1)
  ADDW a6, a6, t4
  ADDW a5, a5, t5
  JAL zero, bb7
bb30:   # loop depth 1
  JAL zero, bb9
bb31:   # loop depth 2
  LW a3, 0(a2)
  XOR a3, a5, a3
  SLTIU a3, a3, 1
  JAL zero, bb28
bb32:   # loop depth 0
  LUI t0, 262144
  ADDIW t0, t0, 0
  ADD a0, zero, t0
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
  ADDI sp, sp, 96
  JALR zero, 0(ra)
main:   # loop depth 0
  ADDI sp, sp, -80
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
  LA s2, w
  LA s8, h
  CALL getint
  SW a0, 0(s2)
  CALL getint
  SW a0, 0(s8)
  LW t0, 0(s2)
  BNE t0, zero, bb35
  # implict jump to bb34
bb34:   # loop depth 0
  ADD a0, zero, zero
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb35:   # loop depth 1
  LA s4, a
  ADD t1, zero, zero
  ADD t0, zero, zero
  # implict jump to bb36
bb36:   # loop depth 2
  ADDI a0, zero, 1
  ADD t2, s4, t0
  ADDI a1, zero, 1
  SW a0, 0(t2)
  ADDI a0, zero, 1
  SW a1, 4(t2)
  ADDI a1, zero, 1
  SW a0, 8(t2)
  ADDI a0, zero, 1
  SW a1, 12(t2)
  ADDI a1, zero, 1
  SW a0, 16(t2)
  ADDI a0, zero, 1
  SW a1, 20(t2)
  ADDI a1, zero, 1
  SW a0, 24(t2)
  ADDI a0, zero, 1
  SW a1, 28(t2)
  ADDI a1, zero, 1
  SW a0, 32(t2)
  ADDI a0, zero, 1
  SW a1, 36(t2)
  ADDI a1, zero, 1
  SW a0, 40(t2)
  ADDI a0, zero, 1
  SW a1, 44(t2)
  ADDI a1, zero, 1
  SW a0, 48(t2)
  ADDI a0, zero, 1
  SW a1, 52(t2)
  ADDI a1, zero, 1
  SW a0, 56(t2)
  ADDI a0, zero, 1
  SW a1, 60(t2)
  ADDI a1, zero, 1
  SW a0, 64(t2)
  ADDI a0, zero, 1
  SW a1, 68(t2)
  ADDI a1, zero, 1
  SW a0, 72(t2)
  ADDI a0, zero, 1
  SW a1, 76(t2)
  ADDI a1, zero, 1
  SW a0, 80(t2)
  ADDI a0, zero, 1
  SW a1, 84(t2)
  ADDI a1, zero, 1
  SW a0, 88(t2)
  ADDI a0, zero, 1
  SW a1, 92(t2)
  ADDI a1, zero, 1
  SW a0, 96(t2)
  ADDI a0, zero, 1
  SW a1, 100(t2)
  ADDI a1, zero, 1
  SW a0, 104(t2)
  ADDI a0, zero, 1
  SW a1, 108(t2)
  ADDIW t1, t1, 1
  ADDI a1, zero, 1
  SW a0, 112(t2)
  ADDIW t0, t0, 120
  SLTI a0, t1, 30
  SW a1, 116(t2)
  BNE a0, zero, bb53
  # implict jump to bb37
bb37:   # loop depth 1
  LW t0, 0(s8)
  LA s6, x_0
  LA s5, y_0
  SLTI t0, t0, 1
  BEQ t0, zero, bb42
  # implict jump to bb38
bb38:   # loop depth 1
  LW a0, 0(s6)
  ADDI a2, zero, 1
  ADDI s0, zero, 10
  LW a1, 0(s5)
  CALL search
  BGE s0, a0, bb41
  # implict jump to bb39
bb39:   # loop depth 1
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb40
bb40:   # loop depth 1
  CALL getint
  SW a0, 0(s2)
  CALL getint
  SW a0, 0(s8)
  LW t0, 0(s2)
  BNE t0, zero, bb35
  JAL zero, bb34
bb41:   # loop depth 1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb40
bb42:   # loop depth 1
  ADDI s1, zero, 1
  ADDI s3, zero, 120
  # implict jump to bb43
bb43:   # loop depth 2
  LW t0, 0(s2)
  SLTI t0, t0, 1
  BEQ t0, zero, bb46
  # implict jump to bb44
bb44:   # loop depth 2
  LW t0, 0(s8)
  ADDIW s3, s3, 120
  ADDIW s1, s1, 1
  BGE t0, s1, bb45
  JAL zero, bb38
bb45:   # loop depth 2
  JAL zero, bb43
bb46:   # loop depth 2
  ADDI s0, zero, 1
  ADD s7, s4, s3
  # implict jump to bb47
bb47:   # loop depth 3
  CALL getint
  SH2ADD t0, s0, s7
  XORI t1, a0, 2
  SW a0, 0(t0)
  BEQ t1, zero, bb52
  # implict jump to bb48
bb48:   # loop depth 3
  XORI t0, a0, 3
  BEQ t0, zero, bb51
  # implict jump to bb49
bb49:   # loop depth 3
  LW t0, 0(s2)
  ADDIW s0, s0, 1
  BGE t0, s0, bb50
  JAL zero, bb44
bb50:   # loop depth 3
  JAL zero, bb47
bb51:   # loop depth 3
  LA t0, x_1
  LA t1, y_1
  SW s1, 0(t0)
  SW s0, 0(t1)
  JAL zero, bb49
bb52:   # loop depth 3
  SW s1, 0(s6)
  SW s0, 0(s5)
  JAL zero, bb49
bb53:   # loop depth 2
  JAL zero, bb36
