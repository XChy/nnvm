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
  LA t4, output_length
  LA t0, program_length
  SW zero, 0(t4)
  LW a5, 0(t0)
  BLT zero, a5, bb4
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
  LA t3, program
  LA a7, tape
  ADD a1, zero, zero
  ADD a2, zero, zero
  ADD a6, zero, zero
  ADD a0, zero, zero
  ADD a4, zero, zero
  ADD t0, zero, zero
  ADD t2, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  SH2ADD t1, t2, t3
  LW t1, 0(t1)
  XORI a3, t1, 62
  BEQ a3, zero, bb48
  # implict jump to bb6
bb6:   # loop depth 1
  XORI a3, t1, 60
  BEQ a3, zero, bb47
  # implict jump to bb7
bb7:   # loop depth 1
  XORI a3, t1, 43
  BEQ a3, zero, bb46
  # implict jump to bb8
bb8:   # loop depth 1
  XORI a3, t1, 45
  BEQ a3, zero, bb45
  # implict jump to bb9
bb9:   # loop depth 1
  SLLIW a3, a0, 2
  XORI t5, t1, 91
  BEQ t5, zero, bb32
  # implict jump to bb10
bb10:   # loop depth 1
  XORI t5, t1, 93
  BEQ t5, zero, bb28
  # implict jump to bb11
bb11:   # loop depth 1
  XORI a3, t1, 46
  BEQ a3, zero, bb27
  # implict jump to bb12
bb12:   # loop depth 1
  XORI t1, t1, 44
  BEQ t1, zero, bb23
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
  BLT t2, a5, bb22
  JAL zero, bb3
bb22:   # loop depth 1
  JAL zero, bb5
bb23:   # loop depth 1
  LA t1, input_length
  LW t1, 0(t1)
  BGE t0, t1, bb26
  # implict jump to bb24
bb24:   # loop depth 1
  LA t5, input
  ADDIW t1, t0, 1
  SH2ADD a3, a4, a7
  SH2ADD t0, t0, t5
  LW t0, 0(t0)
  SW t0, 0(a3)
  # implict jump to bb25
bb25:   # loop depth 1
  ADD t0, t1, zero
  JAL zero, bb14
bb26:   # loop depth 1
  SH2ADD a3, a4, a7
  ADD t1, t0, zero
  SW zero, 0(a3)
  JAL zero, bb25
bb27:   # loop depth 1
  LW t1, 0(t4)
  SH2ADD a3, a4, a7
  LA t5, output
  LW a3, 0(a3)
  SH2ADD t1, t1, t5
  SW a3, 0(t1)
  LW t1, 0(t4)
  ADDIW t1, t1, 1
  SW t1, 0(t4)
  JAL zero, bb15
bb28:   # loop depth 1
  SH2ADD t1, a4, a7
  LW a1, 0(t1)
  BEQ a1, zero, bb31
  # implict jump to bb29
bb29:   # loop depth 1
  ADDI t1, sp, 0
  ADD t1, t1, a3
  LW t2, -4(t1)
  # implict jump to bb30
bb30:   # loop depth 1
  JAL zero, bb16
bb31:   # loop depth 1
  ADDIW a0, a0, -1
  JAL zero, bb30
bb32:   # loop depth 1
  SH2ADD t1, a4, a7
  LW a6, 0(t1)
  BNE a6, zero, bb44
  # implict jump to bb33
bb33:   # loop depth 1
  ADDI a2, zero, 1
  ADD a3, t2, zero
  # implict jump to bb34
bb34:   # loop depth 2
  SH2ADD t2, a3, t3
  ADDIW t1, a2, -1
  LW t2, 4(t2)
  ADDIW a3, a3, 1
  XORI t5, t2, 93
  BEQ t5, zero, bb43
  # implict jump to bb35
bb35:   # loop depth 2
  ADD t1, a2, zero
  # implict jump to bb36
bb36:   # loop depth 2
  XORI t2, t2, 91
  ADDIW a2, t1, 1
  BEQ t2, zero, bb42
  # implict jump to bb37
bb37:   # loop depth 2
  ADD a2, t1, zero
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
  JAL zero, bb34
bb42:   # loop depth 2
  JAL zero, bb38
bb43:   # loop depth 2
  JAL zero, bb36
bb44:   # loop depth 1
  ADDIW a0, a0, 1
  ADDI t1, sp, 0
  ADD t1, t1, a3
  ADD a3, t2, zero
  SW t2, 0(t1)
  JAL zero, bb40
bb45:   # loop depth 1
  SH2ADD t1, a4, a7
  LW a3, 0(t1)
  ADDIW a3, a3, -1
  SW a3, 0(t1)
  JAL zero, bb18
bb46:   # loop depth 1
  SH2ADD t1, a4, a7
  LW a3, 0(t1)
  ADDIW a3, a3, 1
  SW a3, 0(t1)
  JAL zero, bb19
bb47:   # loop depth 1
  ADDIW a4, a4, -1
  JAL zero, bb20
bb48:   # loop depth 1
  ADDIW a4, a4, 1
  JAL zero, bb21
bb49:   # loop depth 1
  JAL zero, bb1
main:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  CALL getch
  XORI t1, a0, 60
  XORI t0, a0, 62
  XORI t2, a0, 43
  SLTU t1, zero, t1
  SLTU t0, zero, t0
  XORI a1, a0, 45
  SLTU t2, zero, t2
  AND t0, t0, t1
  XORI a2, a0, 91
  SLTU t1, zero, a1
  AND t0, t0, t2
  XORI a1, a0, 93
  SLTU t2, zero, a2
  AND t0, t0, t1
  XORI a2, a0, 46
  SLTU t1, zero, a1
  AND t0, t0, t2
  XORI a1, a0, 44
  SLTU t2, zero, a2
  AND t0, t0, t1
  XORI a2, a0, 35
  SLTU t1, zero, a1
  AND t0, t0, t2
  SLTU t2, zero, a2
  AND t0, t0, t1
  AND t0, t0, t2
  BNE t0, zero, bb70
  # implict jump to bb51
bb51:   # loop depth 0
  # implict jump to bb52
bb52:   # loop depth 0
  XORI t0, a0, 35
  BNE t0, zero, bb63
  # implict jump to bb53
bb53:   # loop depth 0
  CALL getch
  XORI t0, a0, 105
  BNE t0, zero, bb55
  # implict jump to bb54
bb54:   # loop depth 0
  LA s2, input_length
  CALL getint
  SW a0, 0(s2)
  CALL getch
  LW t0, 0(s2)
  BLT zero, t0, bb60
  # implict jump to bb55
bb55:   # loop depth 0
  ADDI a0, zero, 116
  LA s1, output_length
  CALL _sysy_starttime
  CALL run_program
  ADDI a0, zero, 118
  CALL _sysy_stoptime
  LW t0, 0(s1)
  BLT zero, t0, bb57
  # implict jump to bb56
bb56:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb57:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb58
bb58:   # loop depth 1
  LA t1, output
  ADDIW s0, t0, 1
  SH2ADD t0, t0, t1
  LW a0, 0(t0)
  CALL putch
  LW t0, 0(s1)
  BLT s0, t0, bb59
  JAL zero, bb56
bb59:   # loop depth 1
  ADD t0, s0, zero
  JAL zero, bb58
bb60:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb61
bb61:   # loop depth 1
  LA s1, input
  CALL getch
  ADDIW t0, s0, 1
  SH2ADD t1, s0, s1
  SW a0, 0(t1)
  LW t1, 0(s2)
  BLT t0, t1, bb62
  JAL zero, bb55
bb62:   # loop depth 1
  ADD s0, t0, zero
  JAL zero, bb61
bb63:   # loop depth 0
  LA s0, program_length
  # implict jump to bb64
bb64:   # loop depth 1
  LW t0, 0(s0)
  LA t1, program
  SH2ADD t0, t0, t1
  SW a0, 0(t0)
  CALL getch
  XORI t1, a0, 60
  XORI t0, a0, 62
  XORI t2, a0, 43
  SLTU t1, zero, t1
  SLTU t0, zero, t0
  XORI a1, a0, 45
  SLTU t2, zero, t2
  AND t0, t0, t1
  XORI a2, a0, 91
  SLTU t1, zero, a1
  AND t0, t0, t2
  XORI a1, a0, 93
  SLTU t2, zero, a2
  AND t0, t0, t1
  XORI a2, a0, 46
  SLTU t1, zero, a1
  AND t0, t0, t2
  XORI a1, a0, 44
  SLTU t2, zero, a2
  AND t0, t0, t1
  XORI a2, a0, 35
  SLTU t1, zero, a1
  AND t0, t0, t2
  SLTU t2, zero, a2
  AND t0, t0, t1
  AND t0, t0, t2
  BNE t0, zero, bb68
  # implict jump to bb65
bb65:   # loop depth 1
  # implict jump to bb66
bb66:   # loop depth 1
  LW t0, 0(s0)
  XORI t1, a0, 35
  ADDIW t0, t0, 1
  SW t0, 0(s0)
  BNE t1, zero, bb67
  JAL zero, bb53
bb67:   # loop depth 1
  JAL zero, bb64
bb68:   # loop depth 2
  CALL getch
  XORI t1, a0, 60
  XORI t0, a0, 62
  XORI t2, a0, 43
  SLTU t1, zero, t1
  SLTU t0, zero, t0
  XORI a1, a0, 45
  SLTU t2, zero, t2
  AND t0, t0, t1
  XORI a2, a0, 91
  SLTU t1, zero, a1
  AND t0, t0, t2
  XORI a1, a0, 93
  SLTU t2, zero, a2
  AND t0, t0, t1
  XORI a2, a0, 46
  SLTU t1, zero, a1
  AND t0, t0, t2
  XORI a1, a0, 44
  SLTU t2, zero, a2
  AND t0, t0, t1
  XORI a2, a0, 35
  SLTU t1, zero, a1
  AND t0, t0, t2
  SLTU t2, zero, a2
  AND t0, t0, t1
  AND t0, t0, t2
  BNE t0, zero, bb68
  # implict jump to bb69
bb69:   # loop depth 1
  JAL zero, bb66
bb70:   # loop depth 1
  CALL getch
  XORI t1, a0, 60
  XORI t0, a0, 62
  XORI t2, a0, 43
  SLTU t1, zero, t1
  SLTU t0, zero, t0
  XORI a1, a0, 45
  SLTU t2, zero, t2
  AND t0, t0, t1
  XORI a2, a0, 91
  SLTU t1, zero, a1
  AND t0, t0, t2
  XORI a1, a0, 93
  SLTU t2, zero, a2
  AND t0, t0, t1
  XORI a2, a0, 46
  SLTU t1, zero, a1
  AND t0, t0, t2
  XORI a1, a0, 44
  SLTU t2, zero, a2
  AND t0, t0, t1
  XORI a2, a0, 35
  SLTU t1, zero, a1
  AND t0, t0, t2
  SLTU t2, zero, a2
  AND t0, t0, t1
  AND t0, t0, t2
  BNE t0, zero, bb70
  # implict jump to bb71
bb71:   # loop depth 0
  JAL zero, bb52
