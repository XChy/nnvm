.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss




sheet2:
.space 1000000
sheet1:
.space 1000000
.section .data
steps:
.word 0x00000000
height:
.word 0x00000000
width:
.word 0x00000000
active:
.word 0x00000001


.section .text
main:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  LA s0, width
  CALL getint
  LA s2, height
  SW a0, 0(s0)
  LA s0, steps
  LA s1, height
  CALL getint
  SW a0, 0(s2)
  CALL getint
  SW a0, 0(s0)
  CALL getch
  LW t0, 0(s1)
  SLTI t0, t0, 1
  BEQ t0, zero, bb57
  # implict jump to bb1
bb1:   # loop depth 0
  LA s0, steps
  ADDI a0, zero, 95
  CALL _sysy_starttime
  LW t0, 0(s0)
  BLT zero, t0, bb23
  # implict jump to bb2
bb2:   # loop depth 0
  LA s0, active
  ADDI a0, zero, 106
  CALL _sysy_stoptime
  LW t0, 0(s0)
  XORI t0, t0, 2
  BEQ t0, zero, bb15
  # implict jump to bb3
bb3:   # loop depth 0
  LA t0, height
  LW t0, 0(t0)
  SLTI t0, t0, 1
  BEQ t0, zero, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb5:   # loop depth 0
  ADDI s3, zero, 1
  ADDI s1, zero, 2000
  # implict jump to bb6
bb6:   # loop depth 1
  LA t0, width
  LW t0, 0(t0)
  SLTI t0, t0, 1
  BEQ t0, zero, bb9
  # implict jump to bb7
bb7:   # loop depth 1
  LA s0, height
  ADDI a0, zero, 10
  ADDIW s1, s1, 2000
  ADDIW s3, s3, 1
  CALL putch
  LW t0, 0(s0)
  BGE t0, s3, bb8
  JAL zero, bb4
bb8:   # loop depth 1
  JAL zero, bb6
bb9:   # loop depth 1
  LA t0, sheet1
  ADDI s0, zero, 1
  ADD s2, t0, s1
  # implict jump to bb10
bb10:   # loop depth 2
  SH2ADD t0, s0, s2
  LW t0, 0(t0)
  XORI t0, t0, 1
  BEQ t0, zero, bb14
  # implict jump to bb11
bb11:   # loop depth 2
  ADDI a0, zero, 46
  CALL putch
  # implict jump to bb12
bb12:   # loop depth 2
  LA t0, width
  ADDIW s0, s0, 1
  LW t0, 0(t0)
  BGE t0, s0, bb13
  JAL zero, bb7
bb13:   # loop depth 2
  JAL zero, bb10
bb14:   # loop depth 2
  ADDI a0, zero, 35
  CALL putch
  JAL zero, bb12
bb15:   # loop depth 0
  LA t0, height
  LW a0, 0(t0)
  SLTI t0, a0, 1
  BEQ t0, zero, bb16
  JAL zero, bb3
bb16:   # loop depth 0
  LA t0, width
  ADDI t1, zero, 1
  ADDI t2, zero, 2000
  LW a1, 0(t0)
  SLTI a6, a1, 1
  # implict jump to bb17
bb17:   # loop depth 1
  BEQ a6, zero, bb20
  # implict jump to bb18
bb18:   # loop depth 1
  ADDIW t2, t2, 2000
  ADDIW t1, t1, 1
  BGE a0, t1, bb19
  JAL zero, bb3
bb19:   # loop depth 1
  JAL zero, bb17
bb20:   # loop depth 1
  LA a3, sheet2
  LA a2, sheet1
  ADDI t0, zero, 1
  ADD a3, a3, t2
  ADD a2, a2, t2
  # implict jump to bb21
bb21:   # loop depth 2
  SH2ADD a5, t0, a3
  SH2ADD a4, t0, a2
  LW a5, 0(a5)
  ADDIW t0, t0, 1
  SW a5, 0(a4)
  BGE a1, t0, bb22
  JAL zero, bb18
bb22:   # loop depth 2
  JAL zero, bb21
bb23:   # loop depth 1
  LA t0, active
  LW t0, 0(t0)
  XORI t0, t0, 1
  BEQ t0, zero, bb41
  # implict jump to bb24
bb24:   # loop depth 1
  LA t0, height
  LW a3, 0(t0)
  SLTI t0, a3, 1
  BEQ t0, zero, bb27
  # implict jump to bb25
bb25:   # loop depth 1
  LA t0, active
  ADDI t1, zero, 1
  SW t1, 0(t0)
  # implict jump to bb26
bb26:   # loop depth 1
  LA t0, steps
  LA t1, steps
  ADDI t2, zero, 0
  LW t0, 0(t0)
  ADDIW t0, t0, -1
  SW t0, 0(t1)
  BLT t2, t0, bb23
  JAL zero, bb2
bb27:   # loop depth 1
  LA t2, width
  ADD t0, zero, zero
  ADD t1, zero, zero
  ADDI a2, zero, 1
  LW a4, 0(t2)
  ADDI a1, zero, 2000
  SLTI a7, a4, 1
  # implict jump to bb28
bb28:   # loop depth 2
  BEQ a7, zero, bb32
  # implict jump to bb29
bb29:   # loop depth 2
  # implict jump to bb30
bb30:   # loop depth 2
  ADDIW a1, a1, 2000
  ADDIW a2, a2, 1
  BGE a3, a2, bb31
  JAL zero, bb25
bb31:   # loop depth 2
  JAL zero, bb28
bb32:   # loop depth 2
  LA t1, sheet1
  LA t0, sheet2
  ADDI t2, zero, 1
  ADD a6, t1, a1
  ADD a5, t0, a1
  # implict jump to bb33
bb33:   # loop depth 3
  SH2ADD t0, t2, a5
  ADDIW a0, t2, 1
  LW t1, -2004(t0)
  LW t3, -2000(t0)
  LW t4, -1996(t0)
  ADDW t1, t1, t3
  LW t3, -4(t0)
  ADDW t1, t1, t4
  LW t4, 4(t0)
  ADDW t1, t1, t3
  LW t3, 1996(t0)
  ADDW t1, t1, t4
  LW t4, 2000(t0)
  ADDW t1, t1, t3
  LW t3, 2004(t0)
  ADDW t1, t1, t4
  LW t0, 0(t0)
  ADDW t1, t1, t3
  XORI t3, t1, 2
  SLTIU t3, t3, 1
  XORI t0, t0, 1
  SLTIU t0, t0, 1
  AND t0, t0, t3
  BNE t0, zero, bb40
  # implict jump to bb34
bb34:   # loop depth 3
  XORI t3, t1, 3
  BEQ t3, zero, bb39
  # implict jump to bb35
bb35:   # loop depth 3
  SH2ADD t2, t2, a6
  SW zero, 0(t2)
  # implict jump to bb36
bb36:   # loop depth 3
  BGE a4, a0, bb38
  # implict jump to bb37
bb37:   # loop depth 2
  JAL zero, bb30
bb38:   # loop depth 3
  ADD t2, a0, zero
  JAL zero, bb33
bb39:   # loop depth 3
  ADDI t3, zero, 1
  SH2ADD t2, t2, a6
  SW t3, 0(t2)
  JAL zero, bb36
bb40:   # loop depth 3
  ADDI t3, zero, 1
  SH2ADD t2, t2, a6
  SW t3, 0(t2)
  JAL zero, bb36
bb41:   # loop depth 1
  LA t0, height
  LW a3, 0(t0)
  SLTI t0, a3, 1
  BEQ t0, zero, bb43
  # implict jump to bb42
bb42:   # loop depth 1
  LA t0, active
  ADDI t1, zero, 2
  SW t1, 0(t0)
  JAL zero, bb26
bb43:   # loop depth 1
  LA t2, width
  ADD t0, zero, zero
  ADD t1, zero, zero
  ADDI a1, zero, 1
  LW a4, 0(t2)
  ADDI a2, zero, 2000
  SLTI a7, a4, 1
  # implict jump to bb44
bb44:   # loop depth 2
  BEQ a7, zero, bb48
  # implict jump to bb45
bb45:   # loop depth 2
  # implict jump to bb46
bb46:   # loop depth 2
  ADDIW a2, a2, 2000
  ADDIW a1, a1, 1
  BGE a3, a1, bb47
  JAL zero, bb42
bb47:   # loop depth 2
  JAL zero, bb44
bb48:   # loop depth 2
  LA t1, sheet2
  LA t0, sheet1
  ADDI t2, zero, 1
  ADD a6, t1, a2
  ADD a5, t0, a2
  # implict jump to bb49
bb49:   # loop depth 3
  SH2ADD t0, t2, a5
  ADDIW a0, t2, 1
  LW t1, -2004(t0)
  LW t3, -2000(t0)
  LW t4, -1996(t0)
  ADDW t1, t1, t3
  LW t3, -4(t0)
  ADDW t1, t1, t4
  LW t4, 4(t0)
  ADDW t1, t1, t3
  LW t3, 1996(t0)
  ADDW t1, t1, t4
  LW t4, 2000(t0)
  ADDW t1, t1, t3
  LW t3, 2004(t0)
  ADDW t1, t1, t4
  LW t0, 0(t0)
  ADDW t1, t1, t3
  XORI t3, t1, 2
  SLTIU t3, t3, 1
  XORI t0, t0, 1
  SLTIU t0, t0, 1
  AND t0, t0, t3
  BNE t0, zero, bb56
  # implict jump to bb50
bb50:   # loop depth 3
  XORI t3, t1, 3
  BEQ t3, zero, bb55
  # implict jump to bb51
bb51:   # loop depth 3
  SH2ADD t2, t2, a6
  SW zero, 0(t2)
  # implict jump to bb52
bb52:   # loop depth 3
  BGE a4, a0, bb54
  # implict jump to bb53
bb53:   # loop depth 2
  JAL zero, bb46
bb54:   # loop depth 3
  ADD t2, a0, zero
  JAL zero, bb49
bb55:   # loop depth 3
  ADDI t3, zero, 1
  SH2ADD t2, t2, a6
  SW t3, 0(t2)
  JAL zero, bb52
bb56:   # loop depth 3
  ADDI t3, zero, 1
  SH2ADD t2, t2, a6
  SW t3, 0(t2)
  JAL zero, bb52
bb57:   # loop depth 0
  ADD s0, zero, zero
  ADDI s3, zero, 1
  ADDI s2, zero, 2000
  # implict jump to bb58
bb58:   # loop depth 1
  LA t0, width
  LW t0, 0(t0)
  SLTI t0, t0, 1
  BEQ t0, zero, bb62
  # implict jump to bb59
bb59:   # loop depth 1
  # implict jump to bb60
bb60:   # loop depth 1
  LA s1, height
  ADDIW s3, s3, 1
  CALL getch
  LW t0, 0(s1)
  ADDIW s2, s2, 2000
  BGE t0, s3, bb61
  JAL zero, bb1
bb61:   # loop depth 1
  JAL zero, bb58
bb62:   # loop depth 1
  LA t0, sheet1
  ADDI s0, zero, 1
  ADD s1, t0, s2
  # implict jump to bb63
bb63:   # loop depth 2
  CALL getch
  XORI t0, a0, 35
  BEQ t0, zero, bb68
  # implict jump to bb64
bb64:   # loop depth 2
  SH2ADD t0, s0, s1
  SW zero, 0(t0)
  # implict jump to bb65
bb65:   # loop depth 2
  LA t0, width
  ADDIW s0, s0, 1
  LW t0, 0(t0)
  BGE t0, s0, bb67
  # implict jump to bb66
bb66:   # loop depth 1
  ADD s0, a0, zero
  JAL zero, bb60
bb67:   # loop depth 2
  JAL zero, bb63
bb68:   # loop depth 2
  ADDI t1, zero, 1
  SH2ADD t0, s0, s1
  SW t1, 0(t0)
  JAL zero, bb65
