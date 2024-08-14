.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  LUI t0, 1048564
  ADDIW t0, t0, -16
  ADD sp, sp, t0
  LUI t0, 12
  ADDIW t0, t0, 0
  ADD t0, t0, sp
  SD ra, 0(t0)
  LUI t0, 12
  ADDIW t0, t0, 8
  ADD t0, t0, sp
  SD s0, 0(t0)
  CALL getch
  XORI t0, a0, 10
  LUI t6, 8
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  SW a0, 0(t6)
  BEQ t0, zero, bb37
  # implict jump to bb1
bb1:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb2
bb2:   # loop depth 1
  CALL getch
  ADDIW s0, s0, 1
  SLLIW t0, s0, 2
  XORI t1, a0, 10
  LUI t6, 8
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  ADD t0, t6, t0
  SW a0, 0(t0)
  BEQ t1, zero, bb4
  # implict jump to bb3
bb3:   # loop depth 1
  JAL zero, bb2
bb4:   # loop depth 0
  # implict jump to bb5
bb5:   # loop depth 0
  SW zero, 0(t0)
  CALL getch
  XORI t0, a0, 10
  LUI t6, 4
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  SW a0, 0(t6)
  BEQ t0, zero, bb36
  # implict jump to bb6
bb6:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  CALL getch
  ADDIW s0, s0, 1
  SLLIW t0, s0, 2
  XORI t1, a0, 10
  LUI t6, 4
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  ADD t0, t6, t0
  SW a0, 0(t0)
  BEQ t1, zero, bb9
  # implict jump to bb8
bb8:   # loop depth 1
  JAL zero, bb7
bb9:   # loop depth 0
  # implict jump to bb10
bb10:   # loop depth 0
  ADDI t1, zero, -1
  SW zero, 0(t0)
  SW t1, 0(sp)
  LUI t2, 8
  ADDIW t2, t2, 0
  ADD t2, t2, sp
  LW t2, 0(t2)
  BNE t2, zero, bb27
  # implict jump to bb11
bb11:   # loop depth 0
  ADD t0, zero, zero
  ADD t2, zero, zero
  # implict jump to bb12
bb12:   # loop depth 1
  SLLIW t1, t2, 2
  LUI t6, 4
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  ADD t1, t6, t1
  LW t1, 0(t1)
  BNE t1, zero, bb15
  # implict jump to bb13
bb13:   # loop depth 0
  ADDI a0, zero, -1
  # implict jump to bb14
bb14:   # loop depth 0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LUI ra, 12
  ADDIW ra, ra, 0
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 12
  ADDIW t6, t6, 8
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t0, 12
  ADDIW t0, t0, 16
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb15:   # loop depth 1
  SLLIW a1, t0, 2
  ADDIW a0, t2, 1
  LUI a2, 8
  ADDIW a2, a2, 0
  ADD a2, a2, sp
  ADD a2, a2, a1
  LW a3, 0(a2)
  BEQ a3, t1, bb24
  # implict jump to bb16
bb16:   # loop depth 1
  ADDI t0, sp, 0
  ADD t0, t0, a1
  LW t1, 0(t0)
  ADDIW t0, t1, 1
  XORI a1, t1, -1
  BEQ a1, zero, bb23
  # implict jump to bb17
bb17:   # loop depth 1
  # implict jump to bb18
bb18:   # loop depth 1
  BEQ a1, zero, bb22
  # implict jump to bb19
bb19:   # loop depth 1
  ADD t0, t1, zero
  # implict jump to bb20
bb20:   # loop depth 1
  # implict jump to bb21
bb21:   # loop depth 1
  JAL zero, bb12
bb22:   # loop depth 1
  JAL zero, bb20
bb23:   # loop depth 1
  ADD t2, a0, zero
  JAL zero, bb18
bb24:   # loop depth 1
  LW t1, 4(a2)
  ADDIW t0, t0, 1
  SLTU t1, zero, t1
  BEQ t1, zero, bb26
  # implict jump to bb25
bb25:   # loop depth 1
  ADD t2, a0, zero
  JAL zero, bb21
bb26:   # loop depth 0
  JAL zero, bb14
bb27:   # loop depth 0
  ADDI t1, zero, -1
  ADD t0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb28
bb28:   # loop depth 1
  SLLIW a1, t1, 2
  XORI a2, t1, -1
  BEQ a2, zero, bb35
  # implict jump to bb29
bb29:   # loop depth 1
  LUI a2, 8
  ADDIW a2, a2, 0
  ADD a2, a2, sp
  ADD a2, a2, a1
  LW a2, 0(a2)
  XOR t2, t2, a2
  SLTIU t2, t2, 1
  # implict jump to bb30
bb30:   # loop depth 1
  BNE t2, zero, bb34
  # implict jump to bb31
bb31:   # loop depth 1
  ADDI t1, sp, 0
  ADD t1, t1, a1
  LW t1, 0(t1)
  # implict jump to bb32
bb32:   # loop depth 1
  SLLIW a0, t0, 2
  LUI t2, 8
  ADDIW t2, t2, 0
  ADD t2, t2, sp
  ADD t2, t2, a0
  LW t2, 0(t2)
  BNE t2, zero, bb33
  JAL zero, bb11
bb33:   # loop depth 1
  JAL zero, bb28
bb34:   # loop depth 1
  ADDI t2, sp, 0
  ADD a0, t2, a0
  ADDIW t0, t0, 1
  ADDIW t2, t1, 1
  ADD t1, t2, zero
  SW t2, 4(a0)
  JAL zero, bb32
bb35:   # loop depth 1
  ADDI t2, zero, 1
  JAL zero, bb30
bb36:   # loop depth 0
  LUI t0, 4
  ADDIW t0, t0, 0
  ADD t0, t0, sp
  ADD t0, t0, zero
  JAL zero, bb10
bb37:   # loop depth 0
  LUI t0, 8
  ADDIW t0, t0, 0
  ADD t0, t0, sp
  ADD t0, t0, zero
  JAL zero, bb5
