.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss

program:
.space 131072
tape:
.space 262144
.section .data
ptr:
.word 0x00000000


.section .text
main:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  LA s2, program
  CALL getint
  ADDI t0, zero, 0
  ADD s1, a0, zero
  BLT t0, s1, bb40
  # implict jump to bb1
bb1:   # loop depth 0
  ADD s3, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  ADD t0, s2, s3
  SW zero, 0(t0)
  LW t0, 0(s2)
  BNE t0, zero, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb4:   # loop depth 0
  ADD s1, zero, zero
  ADD s3, zero, zero
  ADD s0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  LA a0, ptr
  XORI t1, t0, 62
  BEQ t1, zero, bb39
  # implict jump to bb6
bb6:   # loop depth 1
  XORI t1, t0, 60
  BEQ t1, zero, bb38
  # implict jump to bb7
bb7:   # loop depth 1
  LA t2, tape
  XORI t1, t0, 43
  BEQ t1, zero, bb37
  # implict jump to bb8
bb8:   # loop depth 1
  XORI t1, t0, 45
  BEQ t1, zero, bb36
  # implict jump to bb9
bb9:   # loop depth 1
  XORI t1, t0, 46
  BEQ t1, zero, bb35
  # implict jump to bb10
bb10:   # loop depth 1
  XORI t1, t0, 44
  BEQ t1, zero, bb34
  # implict jump to bb11
bb11:   # loop depth 1
  XORI t0, t0, 93
  BEQ t0, zero, bb33
  # implict jump to bb12
bb12:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb13
bb13:   # loop depth 1
  BNE s1, zero, bb23
  # implict jump to bb14
bb14:   # loop depth 1
  # implict jump to bb15
bb15:   # loop depth 1
  # implict jump to bb16
bb16:   # loop depth 1
  # implict jump to bb17
bb17:   # loop depth 1
  # implict jump to bb18
bb18:   # loop depth 1
  # implict jump to bb19
bb19:   # loop depth 1
  # implict jump to bb20
bb20:   # loop depth 1
  # implict jump to bb21
bb21:   # loop depth 1
  ADDIW s3, s3, 1
  SH2ADD t0, s3, s2
  LW t0, 0(t0)
  BNE t0, zero, bb22
  JAL zero, bb3
bb22:   # loop depth 1
  JAL zero, bb5
bb23:   # loop depth 1
  ADDI s0, zero, 1
  # implict jump to bb24
bb24:   # loop depth 2
  SH2ADD t0, s3, s2
  ADDIW s3, s3, -1
  LW t1, -4(t0)
  XORI t0, t1, 91
  BEQ t0, zero, bb32
  # implict jump to bb25
bb25:   # loop depth 2
  ADDIW t0, s0, 1
  XORI t1, t1, 93
  BEQ t1, zero, bb31
  # implict jump to bb26
bb26:   # loop depth 2
  # implict jump to bb27
bb27:   # loop depth 2
  # implict jump to bb28
bb28:   # loop depth 2
  BLT zero, s0, bb30
  # implict jump to bb29
bb29:   # loop depth 2
  JAL zero, bb15
bb30:   # loop depth 2
  JAL zero, bb24
bb31:   # loop depth 2
  ADD s0, t0, zero
  JAL zero, bb27
bb32:   # loop depth 2
  ADDIW s0, s0, -1
  JAL zero, bb28
bb33:   # loop depth 1
  LW t0, 0(a0)
  SH2ADD t0, t0, t2
  LW t0, 0(t0)
  SLTU s1, zero, t0
  JAL zero, bb13
bb34:   # loop depth 1
  LW t0, 0(a0)
  SH2ADD s4, t0, t2
  CALL getch
  SW a0, 0(s4)
  JAL zero, bb16
bb35:   # loop depth 1
  LW t0, 0(a0)
  SH2ADD t0, t0, t2
  LW a0, 0(t0)
  CALL putch
  JAL zero, bb17
bb36:   # loop depth 1
  LW t0, 0(a0)
  SH2ADD t0, t0, t2
  LW t1, 0(t0)
  ADDIW t1, t1, -1
  SW t1, 0(t0)
  JAL zero, bb18
bb37:   # loop depth 1
  LW t0, 0(a0)
  SH2ADD t0, t0, t2
  LW t1, 0(t0)
  ADDIW t1, t1, 1
  SW t1, 0(t0)
  JAL zero, bb19
bb38:   # loop depth 1
  LW t0, 0(a0)
  ADDIW t0, t0, -1
  SW t0, 0(a0)
  JAL zero, bb20
bb39:   # loop depth 1
  LW t0, 0(a0)
  ADDIW t0, t0, 1
  SW t0, 0(a0)
  JAL zero, bb21
bb40:   # loop depth 0
  ADD s0, zero, zero
  ADD s3, zero, zero
  # implict jump to bb41
bb41:   # loop depth 1
  CALL getch
  ADDIW s0, s0, 1
  ADD t0, s2, s3
  SLLIW s3, s0, 2
  SW a0, 0(t0)
  BLT s0, s1, bb43
  # implict jump to bb42
bb42:   # loop depth 1
  JAL zero, bb2
bb43:   # loop depth 1
  JAL zero, bb41
