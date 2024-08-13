.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global run_program
.global main
.section .bss

output:
.space 262144

input:
.space 262144
tape:
.space 262144
program:
.space 262144

.section .data
output_length:
.word 0x00000000

input_length:
.word 0x00000000



program_length:
.word 0x00000000
.section .text
run_program:   # loop depth 0
  LUI t0, 1048575
  ADDIW t0, t0, 2032
  ADD sp, sp, t0
  LUI t0, 1
  ADDIW t0, t0, -2048
  ADD t0, t0, sp
  SD ra, 0(t0)
  ADDI t0, zero, 512
  # implict jump to bb1
bb1:   # loop depth 1
  ADDI t2, zero, 0
  SLLIW t1, t0, 2
  ADDIW t0, t0, -1
  ADDI t6, sp, 0
  ADD t1, t6, t1
  SW t2, -4(t1)
  BNE t0, zero, bb49
  # implict jump to bb2
bb2:   # loop depth 0
  LA t0, output_length
  LA t1, program_length
  SW zero, 0(t0)
  LW a6, 0(t1)
  BLT zero, a6, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  LUI ra, 1
  ADDIW ra, ra, -2048
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t0, 1
  ADDIW t0, t0, -2032
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb4:   # loop depth 0
  ADD a1, zero, zero
  ADD a2, zero, zero
  ADD a4, zero, zero
  ADD a0, zero, zero
  ADD a5, zero, zero
  ADD t1, zero, zero
  ADD t2, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  LA t0, program
  SH2ADD t0, t2, t0
  LW t0, 0(t0)
  XORI a3, t0, 62
  SLTIU a3, a3, 1
  BNE a3, zero, bb48
  # implict jump to bb6
bb6:   # loop depth 1
  XORI a3, t0, 60
  SLTIU a3, a3, 1
  BNE a3, zero, bb47
  # implict jump to bb7
bb7:   # loop depth 1
  XORI a3, t0, 43
  SLTIU a3, a3, 1
  BNE a3, zero, bb46
  # implict jump to bb8
bb8:   # loop depth 1
  XORI a3, t0, 45
  SLTIU a3, a3, 1
  BNE a3, zero, bb45
  # implict jump to bb9
bb9:   # loop depth 1
  XORI a3, t0, 91
  SLLIW a7, a0, 2
  SLTIU a3, a3, 1
  BNE a3, zero, bb32
  # implict jump to bb10
bb10:   # loop depth 1
  XORI a3, t0, 93
  SLTIU a3, a3, 1
  BNE a3, zero, bb28
  # implict jump to bb11
bb11:   # loop depth 1
  XORI a3, t0, 46
  SLTIU a3, a3, 1
  BNE a3, zero, bb27
  # implict jump to bb12
bb12:   # loop depth 1
  XORI t0, t0, 44
  SLTIU t0, t0, 1
  BNE t0, zero, bb23
  # implict jump to bb13
bb13:   # loop depth 1
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
  ADDIW t2, t2, 1
  BLT t2, a6, bb22
  JAL zero, bb3
bb22:   # loop depth 1
  JAL zero, bb5
bb23:   # loop depth 1
  LA t0, input_length
  LW t0, 0(t0)
  SLT t0, t1, t0
  XORI t0, t0, 1
  BNE t0, zero, bb26
  # implict jump to bb24
bb24:   # loop depth 1
  LA a3, input
  LA a7, tape
  ADDIW t0, t1, 1
  SH2ADD a3, t1, a3
  SH2ADD t1, a5, a7
  LW a3, 0(a3)
  SW a3, 0(t1)
  # implict jump to bb25
bb25:   # loop depth 1
  ADD t1, t0, zero
  JAL zero, bb14
bb26:   # loop depth 1
  LA a3, tape
  ADD t0, t1, zero
  SH2ADD t1, a5, a3
  SW zero, 0(t1)
  JAL zero, bb25
bb27:   # loop depth 1
  LA t0, output_length
  LA a3, tape
  LA a7, output
  LA t3, output_length
  LW t0, 0(t0)
  SH2ADD a3, a5, a3
  LA t4, output_length
  LW a3, 0(a3)
  SH2ADD t0, t0, a7
  SW a3, 0(t0)
  LW t0, 0(t3)
  ADDIW t0, t0, 1
  SW t0, 0(t4)
  JAL zero, bb15
bb28:   # loop depth 1
  LA t0, tape
  SH2ADD t0, a5, t0
  LW a1, 0(t0)
  SLTIU t0, a1, 1
  BNE t0, zero, bb31
  # implict jump to bb29
bb29:   # loop depth 1
  ADDI t0, sp, 0
  ADD t0, t0, a7
  LW t2, -4(t0)
  # implict jump to bb30
bb30:   # loop depth 1
  JAL zero, bb16
bb31:   # loop depth 1
  ADDIW a0, a0, -1
  JAL zero, bb30
bb32:   # loop depth 1
  LA t0, tape
  SH2ADD t0, a5, t0
  LW a4, 0(t0)
  BNE a4, zero, bb44
  # implict jump to bb33
bb33:   # loop depth 1
  ADDI a2, zero, 1
  # implict jump to bb34
bb34:   # loop depth 2
  LA t0, program
  ADDIW a3, t2, 1
  SH2ADD t2, t2, t0
  ADDIW t0, a2, -1
  LW t2, 4(t2)
  XORI a7, t2, 93
  SLTIU a7, a7, 1
  BNE a7, zero, bb43
  # implict jump to bb35
bb35:   # loop depth 2
  ADD t0, a2, zero
  # implict jump to bb36
bb36:   # loop depth 2
  XORI t2, t2, 91
  ADDIW a2, t0, 1
  SLTIU t2, t2, 1
  BNE t2, zero, bb42
  # implict jump to bb37
bb37:   # loop depth 2
  ADD a2, t0, zero
  # implict jump to bb38
bb38:   # loop depth 2
  BLT zero, a2, bb41
  # implict jump to bb39
bb39:   # loop depth 1
  # implict jump to bb40
bb40:   # loop depth 1
  ADD t2, a3, zero
  JAL zero, bb17
bb41:   # loop depth 2
  ADD t2, a3, zero
  JAL zero, bb34
bb42:   # loop depth 2
  JAL zero, bb38
bb43:   # loop depth 2
  JAL zero, bb36
bb44:   # loop depth 1
  ADDIW a0, a0, 1
  ADDI t0, sp, 0
  ADD t0, t0, a7
  ADD a3, t2, zero
  SW t2, 0(t0)
  JAL zero, bb40
bb45:   # loop depth 1
  LA t0, tape
  SH2ADD t0, a5, t0
  LW a3, 0(t0)
  ADDIW a3, a3, -1
  SW a3, 0(t0)
  JAL zero, bb18
bb46:   # loop depth 1
  LA t0, tape
  SH2ADD t0, a5, t0
  LW a3, 0(t0)
  ADDIW a3, a3, 1
  SW a3, 0(t0)
  JAL zero, bb19
bb47:   # loop depth 1
  ADDIW a5, a5, -1
  JAL zero, bb20
bb48:   # loop depth 1
  ADDIW a5, a5, 1
  JAL zero, bb21
bb49:   # loop depth 1
  JAL zero, bb1
main:   # loop depth 0
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  CALL getch
  ADD s0, a0, zero
  XORI s2, s0, 60
  XORI s1, s0, 62
  XORI s3, s0, 43
  SLTU s2, zero, s2
  SLTU s1, zero, s1
  XORI s4, s0, 45
  SLTU s3, zero, s3
  AND s1, s1, s2
  XORI s5, s0, 91
  SLTU s2, zero, s4
  AND s1, s1, s3
  XORI s4, s0, 93
  SLTU s3, zero, s5
  AND s1, s1, s2
  XORI s5, s0, 46
  SLTU s2, zero, s4
  AND s1, s1, s3
  XORI s4, s0, 44
  SLTU s3, zero, s5
  AND s1, s1, s2
  XORI s5, s0, 35
  SLTU s2, zero, s4
  AND s1, s1, s3
  SLTU s3, zero, s5
  AND s1, s1, s2
  AND s1, s1, s3
  BNE s1, zero, bb70
  # implict jump to bb51
bb51:   # loop depth 0
  # implict jump to bb52
bb52:   # loop depth 0
  XORI s1, s0, 35
  BNE s1, zero, bb63
  # implict jump to bb53
bb53:   # loop depth 0
  CALL getch
  ADD s0, a0, zero
  XORI s0, s0, 105
  BNE s0, zero, bb55
  # implict jump to bb54
bb54:   # loop depth 0
  LA s1, input_length
  CALL getint
  ADD s0, a0, zero
  LA s2, input_length
  SW s0, 0(s1)
  CALL getch
  LW s0, 0(s2)
  BLT zero, s0, bb60
  # implict jump to bb55
bb55:   # loop depth 0
  ADDI a0, zero, 116
  LA s0, output_length
  CALL _sysy_starttime
  CALL run_program
  ADDI a0, zero, 118
  CALL _sysy_stoptime
  LW a0, 0(s0)
  BLT zero, a0, bb57
  # implict jump to bb56
bb56:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb57:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb58
bb58:   # loop depth 1
  LA s1, output
  LA s2, output_length
  ADDIW s0, a0, 1
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  CALL putch
  LW a0, 0(s2)
  BLT s0, a0, bb59
  JAL zero, bb56
bb59:   # loop depth 1
  ADD a0, s0, zero
  JAL zero, bb58
bb60:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb61
bb61:   # loop depth 1
  LA s2, input
  CALL getch
  LA s3, input_length
  ADD s1, a0, zero
  SH2ADD s2, s0, s2
  SW s1, 0(s2)
  ADDIW s0, s0, 1
  LW s1, 0(s3)
  BLT s0, s1, bb62
  JAL zero, bb55
bb62:   # loop depth 1
  JAL zero, bb61
bb63:   # loop depth 0
  # implict jump to bb64
bb64:   # loop depth 1
  LA s1, program_length
  LA s2, program
  LW s1, 0(s1)
  SH2ADD s1, s1, s2
  SW s0, 0(s1)
  CALL getch
  ADD s0, a0, zero
  XORI s2, s0, 60
  XORI s1, s0, 62
  XORI s3, s0, 43
  SLTU s2, zero, s2
  SLTU s1, zero, s1
  XORI s4, s0, 45
  SLTU s3, zero, s3
  AND s1, s1, s2
  XORI s5, s0, 91
  SLTU s2, zero, s4
  AND s1, s1, s3
  XORI s4, s0, 93
  SLTU s3, zero, s5
  AND s1, s1, s2
  XORI s5, s0, 46
  SLTU s2, zero, s4
  AND s1, s1, s3
  XORI s4, s0, 44
  SLTU s3, zero, s5
  AND s1, s1, s2
  XORI s5, s0, 35
  SLTU s2, zero, s4
  AND s1, s1, s3
  SLTU s3, zero, s5
  AND s1, s1, s2
  AND s1, s1, s3
  BNE s1, zero, bb68
  # implict jump to bb65
bb65:   # loop depth 1
  # implict jump to bb66
bb66:   # loop depth 1
  LA s1, program_length
  LA s3, program_length
  LW s1, 0(s1)
  XORI s2, s0, 35
  ADDIW s1, s1, 1
  SW s1, 0(s3)
  BNE s2, zero, bb67
  JAL zero, bb53
bb67:   # loop depth 1
  JAL zero, bb64
bb68:   # loop depth 2
  CALL getch
  ADD s0, a0, zero
  XORI s2, s0, 60
  XORI s1, s0, 62
  XORI s3, s0, 43
  SLTU s2, zero, s2
  SLTU s1, zero, s1
  XORI s4, s0, 45
  SLTU s3, zero, s3
  AND s1, s1, s2
  XORI s5, s0, 91
  SLTU s2, zero, s4
  AND s1, s1, s3
  XORI s4, s0, 93
  SLTU s3, zero, s5
  AND s1, s1, s2
  XORI s5, s0, 46
  SLTU s2, zero, s4
  AND s1, s1, s3
  XORI s4, s0, 44
  SLTU s3, zero, s5
  AND s1, s1, s2
  XORI s5, s0, 35
  SLTU s2, zero, s4
  AND s1, s1, s3
  SLTU s3, zero, s5
  AND s1, s1, s2
  AND s1, s1, s3
  BNE s1, zero, bb68
  # implict jump to bb69
bb69:   # loop depth 1
  JAL zero, bb66
bb70:   # loop depth 1
  CALL getch
  ADD s0, a0, zero
  XORI s2, s0, 60
  XORI s1, s0, 62
  XORI s3, s0, 43
  SLTU s2, zero, s2
  SLTU s1, zero, s1
  XORI s4, s0, 45
  SLTU s3, zero, s3
  AND s1, s1, s2
  XORI s5, s0, 91
  SLTU s2, zero, s4
  AND s1, s1, s3
  XORI s4, s0, 93
  SLTU s3, zero, s5
  AND s1, s1, s2
  XORI s5, s0, 46
  SLTU s2, zero, s4
  AND s1, s1, s3
  XORI s4, s0, 44
  SLTU s3, zero, s5
  AND s1, s1, s2
  XORI s5, s0, 35
  SLTU s2, zero, s4
  AND s1, s1, s3
  SLTU s3, zero, s5
  AND s1, s1, s2
  AND s1, s1, s3
  BNE s1, zero, bb70
  # implict jump to bb71
bb71:   # loop depth 0
  JAL zero, bb52
