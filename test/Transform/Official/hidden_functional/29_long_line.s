.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.global fib
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADDI t0, zero, 20
  SLTI t0, t0, 1
  BEQ t0, zero, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:   # loop depth 0
  ADDI s1, zero, 1
  # implict jump to bb3
bb3:   # loop depth 1
  ADDI a0, zero, 102
  ADD s0, s1, zero
  ADDI s2, zero, 20
  ADDIW s1, s0, 1
  CALL putch
  ADDI a0, zero, 105
  CALL putch
  ADDI a0, zero, 98
  CALL putch
  ADDI a0, zero, 40
  CALL putch
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 41
  CALL putch
  ADDI a0, zero, 32
  CALL putch
  ADDI a0, zero, 61
  CALL putch
  ADDI a0, zero, 32
  CALL putch
  ADD a0, s0, zero
  CALL fib
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  BGE s2, s1, bb4
  JAL zero, bb1
bb4:   # loop depth 1
  JAL zero, bb3
fib:   # loop depth 0
  LUI t0, 1048575
  ADDIW t0, t0, 1888
  ADD sp, sp, t0
  LUI t6, 1
  ADDIW t6, t6, -2000
  ADD t6, t6, sp
  SD ra, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1992
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1984
  ADD t6, t6, sp
  SD s1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1976
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1968
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  SD s4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1952
  ADD t6, t6, sp
  SD s5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1944
  ADD t6, t6, sp
  SD s6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1936
  ADD t6, t6, sp
  SD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1928
  ADD t6, t6, sp
  SD s8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SD s9, 0(t6)
  LUI t0, 1
  ADDIW t0, t0, -1912
  ADD t0, t0, sp
  SD s10, 0(t0)
  LUI t0, 1
  ADDIW t0, t0, -1904
  ADD t0, t0, sp
  SD s11, 0(t0)
  ADDI t0, zero, 2
  BGE t0, a0, bb253
  # implict jump to bb6
bb6:   # loop depth 0
  ADDI t0, zero, 0
  BNE t0, zero, bb252
  # implict jump to bb7
bb7:   # loop depth 0
  ADD t2, zero, zero
  # implict jump to bb8
bb8:   # loop depth 0
  ADDI a1, zero, 0
  BNE a1, zero, bb251
  # implict jump to bb9
bb9:   # loop depth 0
  ADDI t0, zero, 1
  # implict jump to bb10
bb10:   # loop depth 0
  SLTU t2, zero, t2
  SLTU t0, zero, t0
  SB t0, 288(sp)
  SLTU t0, zero, t2
  SW t0, 524(sp)
  LB t0, 288(sp)
  SLTU t0, zero, t0
  SB t0, 289(sp)
  LW t0, 524(sp)
  SLTU a1, zero, t0
  LB t0, 289(sp)
  SLTU t0, zero, t0
  SB t0, 256(sp)
  LW t0, 524(sp)
  XORI t0, t0, 1
  LB t1, 256(sp)
  AND a2, t1, a1
  SLLI t1, a0, 1
  SW t1, 1356(sp)
  SLTU a3, zero, a2
  LB t1, 256(sp)
  OR a2, t1, a1
  OR a4, a3, zero
  XORI a1, a3, 1
  SLTU a4, zero, a4
  SLTU a3, zero, a1
  LB t1, 256(sp)
  AND a5, t1, a4
  LB t1, 256(sp)
  OR a1, t1, a4
  SLTU a4, zero, a5
  SLTU a5, zero, a1
  OR a6, a4, zero
  XORI a1, a4, 1
  SLTU a4, zero, a6
  SLTU a1, zero, a1
  LB t1, 256(sp)
  AND a6, t1, a4
  LB t1, 256(sp)
  OR a4, t1, a4
  SLTU a6, zero, a6
  SLTU a7, zero, a4
  OR t3, a6, zero
  XORI a4, a6, 1
  SLTU a6, zero, t3
  SLTU a4, zero, a4
  LB t1, 256(sp)
  AND t3, t1, a6
  LB t1, 256(sp)
  OR a6, t1, a6
  SLTU t3, zero, t3
  SLTU t4, zero, a6
  OR t5, t3, zero
  XORI a6, t3, 1
  SLTU t3, zero, t5
  SLTU a6, zero, a6
  LB t1, 256(sp)
  AND t5, t1, t3
  LB t1, 256(sp)
  OR t3, t1, t3
  SLTU t5, zero, t5
  SLTU s0, zero, t3
  OR s1, t5, zero
  XORI t3, t5, 1
  SLTU t5, zero, s1
  SLTU t3, zero, t3
  LB t1, 256(sp)
  AND s1, t1, t5
  LB t1, 256(sp)
  OR t5, t1, t5
  SLTU s1, zero, s1
  SLTU s2, zero, t5
  OR s3, s1, zero
  XORI t5, s1, 1
  SLTU s1, zero, s3
  SLTU t5, zero, t5
  LB t1, 256(sp)
  AND s3, t1, s1
  LB t1, 256(sp)
  OR s1, t1, s1
  SLTU s3, zero, s3
  SLTU s4, zero, s1
  OR s5, s3, zero
  XORI s1, s3, 1
  SLTU s3, zero, s5
  SLTU s1, zero, s1
  LB t1, 256(sp)
  AND s5, t1, s3
  LB t1, 256(sp)
  OR s3, t1, s3
  SLTU s5, zero, s5
  SLTU s6, zero, s3
  OR s7, s5, zero
  XORI s3, s5, 1
  SLTU s5, zero, s7
  SLTU s3, zero, s3
  LB t1, 256(sp)
  AND s7, t1, s5
  LB t1, 256(sp)
  OR s5, t1, s5
  SLTU s7, zero, s7
  SLTU t1, zero, s5
  SB t1, 290(sp)
  OR s8, s7, zero
  XORI s5, s7, 1
  SLTU s7, zero, s8
  SLTU s5, zero, s5
  LB t1, 256(sp)
  AND s8, t1, s7
  LB t1, 256(sp)
  OR s7, t1, s7
  SLTU s8, zero, s8
  SLTU t1, zero, s7
  SB t1, 292(sp)
  OR s10, s8, zero
  XORI s7, s8, 1
  SLTU s8, zero, s10
  SLTU t1, zero, s7
  SW t1, 1304(sp)
  LB t1, 256(sp)
  AND s10, t1, s8
  LB t1, 256(sp)
  OR s8, t1, s8
  SLTU s10, zero, s10
  SLTU t1, zero, s8
  SB t1, 295(sp)
  OR t1, s10, zero
  SW t1, 836(sp)
  XORI s8, s10, 1
  LW t1, 836(sp)
  SLTU s10, zero, t1
  SLTU t1, zero, s8
  SW t1, 1300(sp)
  LB t1, 256(sp)
  AND t1, t1, s10
  SW t1, 828(sp)
  LB t1, 256(sp)
  OR s10, t1, s10
  LW t1, 828(sp)
  SLTU t1, zero, t1
  SB t1, 252(sp)
  SLTU t1, zero, s10
  SB t1, 297(sp)
  LB t1, 252(sp)
  OR t1, t1, zero
  SW t1, 812(sp)
  LB t1, 252(sp)
  XORI s10, t1, 1
  LW t1, 812(sp)
  SLTU t1, zero, t1
  SB t1, 248(sp)
  SLTU t1, zero, s10
  SW t1, 1296(sp)
  LB t1, 248(sp)
  LB s7, 256(sp)
  AND t1, s7, t1
  SW t1, 856(sp)
  LB t1, 248(sp)
  LB s7, 256(sp)
  OR t1, s7, t1
  SW t1, 808(sp)
  LW t1, 856(sp)
  SLTU t1, zero, t1
  SB t1, 296(sp)
  LW t1, 808(sp)
  SLTU t1, zero, t1
  SB t1, 298(sp)
  LB t1, 296(sp)
  OR t1, t1, zero
  SW t1, 972(sp)
  LB t1, 296(sp)
  XORI t1, t1, 1
  SW t1, 1000(sp)
  LW t1, 972(sp)
  SLTU t1, zero, t1
  SB t1, 284(sp)
  LW t1, 1000(sp)
  SLTU t1, zero, t1
  SW t1, 988(sp)
  LB t1, 284(sp)
  LB s7, 256(sp)
  AND t1, s7, t1
  SW t1, 908(sp)
  LB t1, 284(sp)
  LB s7, 256(sp)
  OR t1, s7, t1
  SW t1, 964(sp)
  LW t1, 908(sp)
  SLTU t1, zero, t1
  SB t1, 281(sp)
  LW t1, 964(sp)
  SLTU t1, zero, t1
  SB t1, 259(sp)
  LB t1, 281(sp)
  OR t1, t1, zero
  SW t1, 936(sp)
  LB t1, 281(sp)
  XORI t1, t1, 1
  SW t1, 952(sp)
  LW t1, 936(sp)
  SLTU t1, zero, t1
  SB t1, 278(sp)
  LW t1, 952(sp)
  SLTU t1, zero, t1
  SW t1, 948(sp)
  LB t1, 278(sp)
  LB s7, 256(sp)
  AND t1, s7, t1
  SW t1, 924(sp)
  LB t1, 278(sp)
  LB s7, 256(sp)
  OR t1, s7, t1
  SW t1, 932(sp)
  LW t1, 924(sp)
  SLTU t1, zero, t1
  SB t1, 363(sp)
  LW t1, 932(sp)
  SLTU t1, zero, t1
  SB t1, 413(sp)
  LB t1, 363(sp)
  XORI t1, t1, 1
  SW t1, 756(sp)
  LW t1, 948(sp)
  SLTU t1, zero, t1
  SB t1, 280(sp)
  LW t1, 756(sp)
  SLTU t1, zero, t1
  SW t1, 700(sp)
  LB t1, 259(sp)
  LB s7, 280(sp)
  AND t1, t1, s7
  SW t1, 940(sp)
  LW t1, 700(sp)
  SLTU t1, zero, t1
  SB t1, 407(sp)
  LW t1, 988(sp)
  SLTU t1, zero, t1
  SB t1, 286(sp)
  LB t1, 407(sp)
  LB s7, 413(sp)
  AND t1, s7, t1
  SW t1, 676(sp)
  LB t1, 298(sp)
  LB s7, 286(sp)
  AND t1, t1, s7
  SW t1, 980(sp)
  LW t1, 676(sp)
  SLLIW t1, t1, 1
  SW t1, 668(sp)
  LW t1, 1296(sp)
  SLTU s10, zero, t1
  LW t1, 668(sp)
  LW s7, 940(sp)
  ADDW t1, t1, s7
  SW t1, 660(sp)
  LB t1, 297(sp)
  AND t1, t1, s10
  SW t1, 820(sp)
  LW t1, 660(sp)
  SLLIW s10, t1, 1
  LW t1, 1300(sp)
  SLTU s8, zero, t1
  LW t1, 980(sp)
  ADDW t1, s10, t1
  SW t1, 492(sp)
  LB t1, 295(sp)
  AND s10, t1, s8
  LW t1, 492(sp)
  SLLIW s8, t1, 1
  LW t1, 1304(sp)
  SLTU s7, zero, t1
  LW t1, 820(sp)
  ADDW s11, s8, t1
  LB t1, 292(sp)
  AND s8, t1, s7
  SLLIW s7, s11, 1
  SLTU s5, zero, s5
  ADDW s9, s7, s10
  LB t1, 290(sp)
  AND s7, t1, s5
  SLLIW s5, s9, 1
  SLTU s3, zero, s3
  ADDW s8, s5, s8
  AND s5, s6, s3
  SLLIW s3, s8, 1
  SLTU s1, zero, s1
  ADDW s6, s3, s7
  AND s3, s4, s1
  SLLIW s1, s6, 1
  SLTU t5, zero, t5
  ADDW s4, s1, s5
  AND s1, s2, t5
  SLLIW t5, s4, 1
  SLTU t3, zero, t3
  ADDW s2, t5, s3
  AND t5, s0, t3
  SLLIW t3, s2, 1
  SLTU a6, zero, a6
  ADDW s0, t3, s1
  AND t3, t4, a6
  SLLIW a6, s0, 1
  SLTU a4, zero, a4
  ADDW t4, a6, t5
  AND a6, a7, a4
  SLLIW a4, t4, 1
  SLTU a1, zero, a1
  ADDW a7, a4, t3
  AND a4, a5, a1
  SLLIW a5, a7, 1
  SLTU a1, zero, t0
  ADDW a5, a5, a6
  ORI t0, t2, 1
  SLLIW t2, a5, 1
  LW t1, 1356(sp)
  SRLI a5, t1, 63
  ADDW a4, t2, a4
  SLTU a3, zero, a3
  SLTU a2, zero, a2
  SLTU t2, zero, a1
  SLTU t0, zero, t0
  ADD a5, a0, a5
  SLLIW a4, a4, 1
  AND a1, a2, a3
  AND t0, t0, t2
  ANDI t2, a5, -2
  ADDW a1, a4, a1
  SLTU t0, zero, t0
  SUBW t2, a0, t2
  SLLIW a2, a1, 1
  SLTU a1, zero, t0
  SUB s2, zero, t2
  ADDW a4, a2, a1
  BLT t2, zero, bb250
  # implict jump to bb11
bb11:   # loop depth 0
  ADD s2, t2, zero
  # implict jump to bb12
bb12:   # loop depth 0
  SRAIW t2, a0, 31
  SRLIW t0, t2, 31
  ADD t0, a0, t0
  SRAIW t2, t0, 1
  SLLI t0, t2, 1
  SRLI t0, t0, 63
  ADD t0, t2, t0
  ANDI t0, t0, -2
  SUBW s1, t2, t0
  SUB t1, zero, s1
  BLT s1, zero, bb249
  # implict jump to bb13
bb13:   # loop depth 0
  # implict jump to bb14
bb14:   # loop depth 0
  SRAIW t1, t2, 31
  SRLIW t0, t1, 31
  ADD t0, t2, t0
  SRAIW t2, t0, 1
  SLLI t0, t2, 1
  SRLI t0, t0, 63
  ADD t0, t2, t0
  ANDI t0, t0, -2
  SUBW t0, t2, t0
  SW t0, 656(sp)
  LW t0, 656(sp)
  SUB t1, zero, t0
  LW t0, 656(sp)
  BLT t0, zero, bb248
  # implict jump to bb15
bb15:   # loop depth 0
  LW t0, 656(sp)
  SW t0, 656(sp)
  # implict jump to bb16
bb16:   # loop depth 0
  SRAIW t1, t2, 31
  LW t0, 656(sp)
  SW t0, 656(sp)
  SRLIW t0, t1, 31
  ADD t0, t2, t0
  SRAIW t2, t0, 1
  SLLI t0, t2, 1
  SRLI t0, t0, 63
  ADD t0, t2, t0
  ANDI t0, t0, -2
  SUBW s0, t2, t0
  SUB t1, zero, s0
  BLT s0, zero, bb247
  # implict jump to bb17
bb17:   # loop depth 0
  # implict jump to bb18
bb18:   # loop depth 0
  SRAIW t1, t2, 31
  SRLIW t0, t1, 31
  ADD t0, t2, t0
  SRAIW t2, t0, 1
  SLLI t0, t2, 1
  SRLI t0, t0, 63
  ADD t0, t2, t0
  ANDI t0, t0, -2
  SUBW t1, t2, t0
  SUB s6, zero, t1
  BLT t1, zero, bb246
  # implict jump to bb19
bb19:   # loop depth 0
  ADD s6, t1, zero
  # implict jump to bb20
bb20:   # loop depth 0
  SRAIW t1, t2, 31
  SRLIW t0, t1, 31
  ADD t0, t2, t0
  SRAIW t2, t0, 1
  SLLI t0, t2, 1
  SRLI t0, t0, 63
  ADD t0, t2, t0
  ANDI t0, t0, -2
  SUBW s8, t2, t0
  SUB t1, zero, s8
  BLT s8, zero, bb245
  # implict jump to bb21
bb21:   # loop depth 0
  # implict jump to bb22
bb22:   # loop depth 0
  SRAIW t1, t2, 31
  SRLIW t0, t1, 31
  ADD t0, t2, t0
  SRAIW t2, t0, 1
  SLLI t0, t2, 1
  SRLI t0, t0, 63
  ADD t0, t2, t0
  ANDI t0, t0, -2
  SUBW t1, t2, t0
  SUB s4, zero, t1
  BLT t1, zero, bb244
  # implict jump to bb23
bb23:   # loop depth 0
  ADD s4, t1, zero
  # implict jump to bb24
bb24:   # loop depth 0
  SRAIW t1, t2, 31
  SRLIW t0, t1, 31
  ADD t0, t2, t0
  SRAIW t2, t0, 1
  SLLI t0, t2, 1
  SRLI t0, t0, 63
  ADD t0, t2, t0
  ANDI t0, t0, -2
  SUBW t1, t2, t0
  SUB t3, zero, t1
  BLT t1, zero, bb243
  # implict jump to bb25
bb25:   # loop depth 0
  ADD t3, t1, zero
  # implict jump to bb26
bb26:   # loop depth 0
  SRAIW t1, t2, 31
  SRLIW t0, t1, 31
  ADD t0, t2, t0
  SRAIW t2, t0, 1
  SLLI t0, t2, 1
  SRLI t0, t0, 63
  ADD t0, t2, t0
  ANDI t0, t0, -2
  SUBW t1, t2, t0
  SUB t5, zero, t1
  BLT t1, zero, bb242
  # implict jump to bb27
bb27:   # loop depth 0
  ADD t5, t1, zero
  # implict jump to bb28
bb28:   # loop depth 0
  SRAIW t1, t2, 31
  SRLIW t0, t1, 31
  ADD t0, t2, t0
  SRAIW t2, t0, 1
  SLLI t0, t2, 1
  SRLI t0, t0, 63
  ADD t0, t2, t0
  ANDI t0, t0, -2
  SUBW t4, t2, t0
  SUB t1, zero, t4
  BLT t4, zero, bb241
  # implict jump to bb29
bb29:   # loop depth 0
  # implict jump to bb30
bb30:   # loop depth 0
  SRAIW t1, t2, 31
  SRLIW t0, t1, 31
  ADD t0, t2, t0
  SRAIW t2, t0, 1
  SLLI t0, t2, 1
  SRLI t0, t0, 63
  ADD t0, t2, t0
  ANDI t0, t0, -2
  SUBW t1, t2, t0
  SUB s3, zero, t1
  BLT t1, zero, bb240
  # implict jump to bb31
bb31:   # loop depth 0
  ADD s3, t1, zero
  # implict jump to bb32
bb32:   # loop depth 0
  SRAIW t1, t2, 31
  SRLIW t0, t1, 31
  ADD t0, t2, t0
  SRAIW t2, t0, 1
  SLLI t0, t2, 1
  SRLI t0, t0, 63
  ADD t0, t2, t0
  ANDI t0, t0, -2
  SUBW t0, t2, t0
  SUB t1, zero, t0
  BLT t0, zero, bb239
  # implict jump to bb33
bb33:   # loop depth 0
  # implict jump to bb34
bb34:   # loop depth 0
  SRAIW t1, t2, 31
  SW t0, 1292(sp)
  SRLIW t1, t1, 31
  ADD t1, t2, t1
  SRAIW a0, t1, 1
  SLLI t1, a0, 1
  SRLI t1, t1, 63
  ADD t1, a0, t1
  ANDI t1, t1, -2
  SUBW t1, a0, t1
  SUB t2, zero, t1
  BLT t1, zero, bb238
  # implict jump to bb35
bb35:   # loop depth 0
  # implict jump to bb36
bb36:   # loop depth 0
  SRAIW t2, a0, 31
  SW t1, 1288(sp)
  SRLIW t2, t2, 31
  ADD t2, a0, t2
  SRAIW a1, t2, 1
  SLLI t2, a1, 1
  SRLI t2, t2, 63
  ADD t2, a1, t2
  ANDI t2, t2, -2
  SUBW a0, a1, t2
  SUB t2, zero, a0
  BLT a0, zero, bb237
  # implict jump to bb37
bb37:   # loop depth 0
  ADD t2, a0, zero
  # implict jump to bb38
bb38:   # loop depth 0
  SRAIW a0, a1, 31
  SW t2, 1284(sp)
  SRLIW a0, a0, 31
  ADD a0, a1, a0
  SRAIW a2, a0, 1
  SLLI a0, a2, 1
  SRLI a0, a0, 63
  ADD a0, a2, a0
  ANDI a0, a0, -2
  SUBW a1, a2, a0
  SUB a0, zero, a1
  BLT a1, zero, bb236
  # implict jump to bb39
bb39:   # loop depth 0
  ADD a0, a1, zero
  # implict jump to bb40
bb40:   # loop depth 0
  SRAIW a1, a2, 31
  SW a0, 1316(sp)
  SRLIW a1, a1, 31
  ADD a1, a2, a1
  SRAIW a1, a1, 1
  SLLI a2, a1, 1
  SRLI a2, a2, 63
  ADD a2, a1, a2
  ANDI a2, a2, -2
  SUBW a2, a1, a2
  SUB a1, zero, a2
  BLT a2, zero, bb235
  # implict jump to bb41
bb41:   # loop depth 0
  ADD a1, a2, zero
  # implict jump to bb42
bb42:   # loop depth 0
  SLLI a2, a4, 1
  SW a1, 1412(sp)
  SRLI a2, a2, 63
  ADD a2, a4, a2
  ANDI a2, a2, -2
  SUBW a2, a4, a2
  SUB t0, zero, a2
  SW t0, 644(sp)
  BLT a2, zero, bb234
  # implict jump to bb43
bb43:   # loop depth 0
  SW a2, 644(sp)
  # implict jump to bb44
bb44:   # loop depth 0
  SRAIW a2, a4, 31
  LW t0, 644(sp)
  SW t0, 644(sp)
  SRLIW a2, a2, 31
  ADD a2, a4, a2
  SRAIW a4, a2, 1
  SLLI a2, a4, 1
  SRLI a2, a2, 63
  ADD a2, a4, a2
  ANDI a2, a2, -2
  SUBW a3, a4, a2
  SUB s10, zero, a3
  BLT a3, zero, bb233
  # implict jump to bb45
bb45:   # loop depth 0
  ADD s10, a3, zero
  # implict jump to bb46
bb46:   # loop depth 0
  SRAIW a3, a4, 31
  SRLIW a2, a3, 31
  ADD a2, a4, a2
  SRAIW a4, a2, 1
  SLLI a2, a4, 1
  SRLI a2, a2, 63
  ADD a2, a4, a2
  ANDI a2, a2, -2
  SUBW a3, a4, a2
  SUB s9, zero, a3
  BLT a3, zero, bb232
  # implict jump to bb47
bb47:   # loop depth 0
  ADD s9, a3, zero
  # implict jump to bb48
bb48:   # loop depth 0
  SRAIW a3, a4, 31
  SRLIW a2, a3, 31
  ADD a2, a4, a2
  SRAIW a4, a2, 1
  SLLI a2, a4, 1
  SRLI a2, a2, 63
  ADD a2, a4, a2
  ANDI a2, a2, -2
  SUBW s7, a4, a2
  SUB a3, zero, s7
  BLT s7, zero, bb231
  # implict jump to bb49
bb49:   # loop depth 0
  # implict jump to bb50
bb50:   # loop depth 0
  SRAIW a3, a4, 31
  SRLIW a2, a3, 31
  ADD a2, a4, a2
  SRAIW a4, a2, 1
  SLLI a2, a4, 1
  SRLI a2, a2, 63
  ADD a2, a4, a2
  ANDI a2, a2, -2
  SUBW a3, a4, a2
  SUB s11, zero, a3
  BLT a3, zero, bb230
  # implict jump to bb51
bb51:   # loop depth 0
  ADD s11, a3, zero
  # implict jump to bb52
bb52:   # loop depth 0
  SRAIW a3, a4, 31
  SRLIW a2, a3, 31
  ADD a2, a4, a2
  SRAIW a4, a2, 1
  SLLI a2, a4, 1
  SRLI a2, a2, 63
  ADD a2, a4, a2
  ANDI a2, a2, -2
  SUBW a2, a4, a2
  SUB t0, zero, a2
  SW t0, 640(sp)
  BLT a2, zero, bb229
  # implict jump to bb53
bb53:   # loop depth 0
  SW a2, 640(sp)
  # implict jump to bb54
bb54:   # loop depth 0
  SRAIW a2, a4, 31
  LW t0, 640(sp)
  SW t0, 640(sp)
  SRLIW a2, a2, 31
  ADD a2, a4, a2
  SRAIW a4, a2, 1
  SLLI a2, a4, 1
  SRLI a2, a2, 63
  ADD a2, a4, a2
  ANDI a2, a2, -2
  SUBW t0, a4, a2
  SW t0, 464(sp)
  LW t0, 464(sp)
  SUB a3, zero, t0
  LW t0, 464(sp)
  BLT t0, zero, bb228
  # implict jump to bb55
bb55:   # loop depth 0
  LW t0, 464(sp)
  SW t0, 464(sp)
  # implict jump to bb56
bb56:   # loop depth 0
  SRAIW a3, a4, 31
  LW t0, 464(sp)
  SW t0, 464(sp)
  SRLIW a2, a3, 31
  ADD a2, a4, a2
  SRAIW a4, a2, 1
  SLLI a2, a4, 1
  SRLI a2, a2, 63
  ADD a2, a4, a2
  ANDI a2, a2, -2
  SUBW a2, a4, a2
  SUB t0, zero, a2
  SW t0, 632(sp)
  BLT a2, zero, bb227
  # implict jump to bb57
bb57:   # loop depth 0
  SW a2, 632(sp)
  # implict jump to bb58
bb58:   # loop depth 0
  SRAIW a2, a4, 31
  LW t0, 632(sp)
  SW t0, 632(sp)
  SRLIW a2, a2, 31
  ADD a2, a4, a2
  SRAIW a4, a2, 1
  SLLI a2, a4, 1
  SRLI a2, a2, 63
  ADD a2, a4, a2
  ANDI a2, a2, -2
  SUBW a2, a4, a2
  SUB t0, zero, a2
  SW t0, 624(sp)
  BLT a2, zero, bb226
  # implict jump to bb59
bb59:   # loop depth 0
  SW a2, 624(sp)
  # implict jump to bb60
bb60:   # loop depth 0
  SRAIW a2, a4, 31
  LW t0, 624(sp)
  SW t0, 624(sp)
  SRLIW a2, a2, 31
  ADD a2, a4, a2
  SRAIW a4, a2, 1
  SLLI a2, a4, 1
  SRLI a2, a2, 63
  ADD a2, a4, a2
  ANDI a2, a2, -2
  SUBW s5, a4, a2
  SUB a3, zero, s5
  BLT s5, zero, bb225
  # implict jump to bb61
bb61:   # loop depth 0
  # implict jump to bb62
bb62:   # loop depth 0
  SRAIW a3, a4, 31
  SRLIW a2, a3, 31
  ADD a2, a4, a2
  SRAIW a4, a2, 1
  SLLI a2, a4, 1
  SRLI a2, a2, 63
  ADD a2, a4, a2
  ANDI a2, a2, -2
  SUBW a3, a4, a2
  SUB a2, zero, a3
  BLT a3, zero, bb224
  # implict jump to bb63
bb63:   # loop depth 0
  ADD a2, a3, zero
  # implict jump to bb64
bb64:   # loop depth 0
  SRAIW a3, a4, 31
  SW a2, 1408(sp)
  SRLIW a3, a3, 31
  ADD a3, a4, a3
  SRAIW a5, a3, 1
  SLLI a3, a5, 1
  SRLI a3, a3, 63
  ADD a3, a5, a3
  ANDI a3, a3, -2
  SUBW a4, a5, a3
  SUB a3, zero, a4
  BLT a4, zero, bb223
  # implict jump to bb65
bb65:   # loop depth 0
  ADD a3, a4, zero
  # implict jump to bb66
bb66:   # loop depth 0
  SRAIW a4, a5, 31
  SW a3, 1404(sp)
  SRLIW a4, a4, 31
  ADD a4, a5, a4
  SRAIW a6, a4, 1
  SLLI a4, a6, 1
  SRLI a4, a4, 63
  ADD a4, a6, a4
  ANDI a4, a4, -2
  SUBW a5, a6, a4
  SUB a4, zero, a5
  BLT a5, zero, bb222
  # implict jump to bb67
bb67:   # loop depth 0
  ADD a4, a5, zero
  # implict jump to bb68
bb68:   # loop depth 0
  SRAIW a5, a6, 31
  SW a4, 1400(sp)
  SRLIW a5, a5, 31
  ADD a5, a6, a5
  SRAIW t0, a5, 1
  SW t0, 620(sp)
  LW t0, 620(sp)
  SLLI a5, t0, 1
  SRLI a5, a5, 63
  LW t0, 620(sp)
  ADD a5, t0, a5
  ANDI a5, a5, -2
  LW t0, 620(sp)
  SUBW a6, t0, a5
  SUB a5, zero, a6
  BLT a6, zero, bb221
  # implict jump to bb69
bb69:   # loop depth 0
  ADD a5, a6, zero
  # implict jump to bb70
bb70:   # loop depth 0
  LW t0, 620(sp)
  SRAIW a6, t0, 31
  SW a5, 1396(sp)
  SRLIW a6, a6, 31
  LW t0, 620(sp)
  ADD a6, t0, a6
  SRAIW t0, a6, 1
  SW t0, 616(sp)
  LW t0, 616(sp)
  SLLI a6, t0, 1
  SRLI a6, a6, 63
  LW t0, 616(sp)
  ADD a6, t0, a6
  ANDI a6, a6, -2
  LW t0, 616(sp)
  SUBW a6, t0, a6
  SUB t0, zero, a6
  SW t0, 612(sp)
  BLT a6, zero, bb220
  # implict jump to bb71
bb71:   # loop depth 0
  # implict jump to bb72
bb72:   # loop depth 0
  LW t0, 616(sp)
  SRAIW t0, t0, 31
  SW t0, 1496(sp)
  SW a6, 1392(sp)
  LW t0, 1496(sp)
  SRLIW t0, t0, 31
  SW t0, 1492(sp)
  LW t0, 1492(sp)
  LW t1, 616(sp)
  ADD t0, t1, t0
  SW t0, 1488(sp)
  LW t0, 1488(sp)
  SRAIW t0, t0, 1
  SW t0, 604(sp)
  LW t0, 604(sp)
  SLLI t0, t0, 1
  SW t0, 1384(sp)
  LW t0, 1384(sp)
  SRLI t0, t0, 63
  SW t0, 1344(sp)
  LW t0, 1344(sp)
  LW t1, 604(sp)
  ADD t0, t1, t0
  SW t0, 1336(sp)
  LW t0, 1336(sp)
  ANDI t0, t0, -2
  SW t0, 1340(sp)
  LW t0, 1340(sp)
  LW t1, 604(sp)
  SUBW t0, t1, t0
  SW t0, 800(sp)
  LW t0, 800(sp)
  SUB t0, zero, t0
  SW t0, 796(sp)
  LW t0, 800(sp)
  BLT t0, zero, bb219
  # implict jump to bb73
bb73:   # loop depth 0
  LW t0, 800(sp)
  SW t0, 796(sp)
  # implict jump to bb74
bb74:   # loop depth 0
  SLTU t0, zero, s10
  SB t0, 398(sp)
  SLTU t0, zero, s1
  SB t0, 260(sp)
  LB t0, 260(sp)
  LB t1, 398(sp)
  AND s1, t0, t1
  LB t0, 289(sp)
  SLTU t0, zero, t0
  SB t0, 300(sp)
  SLTU t0, zero, s1
  SB t0, 393(sp)
  LW t0, 524(sp)
  SLTU t0, zero, t0
  SB t0, 313(sp)
  LB t0, 393(sp)
  XORI t0, t0, 1
  SW t0, 768(sp)
  SLTU t0, zero, s9
  SB t0, 424(sp)
  LW t0, 656(sp)
  SLTU t0, zero, t0
  SB t0, 264(sp)
  LW t0, 768(sp)
  SLTU t0, zero, t0
  SW t0, 764(sp)
  LB t0, 260(sp)
  LB t1, 398(sp)
  OR t0, t0, t1
  SW t0, 776(sp)
  LW t0, 644(sp)
  SLTU t0, zero, t0
  SB t0, 258(sp)
  SLTU t0, zero, s2
  SB t0, 257(sp)
  LB t0, 300(sp)
  LB t1, 313(sp)
  AND t0, t1, t0
  SW t0, 484(sp)
  LB t0, 264(sp)
  LB t1, 424(sp)
  AND t0, t0, t1
  SW t0, 732(sp)
  LW t0, 764(sp)
  SLTU t0, zero, t0
  SB t0, 379(sp)
  LW t0, 776(sp)
  SLTU t0, zero, t0
  SB t0, 385(sp)
  LB t0, 258(sp)
  LB t1, 257(sp)
  AND s1, t1, t0
  LW t0, 484(sp)
  SLTU t0, zero, t0
  SB t0, 315(sp)
  LW t0, 732(sp)
  SLTU t0, zero, t0
  SB t0, 440(sp)
  LB t0, 379(sp)
  LB t1, 385(sp)
  AND t0, t1, t0
  SW t0, 748(sp)
  SLTU t0, zero, s1
  SB t0, 245(sp)
  LB t0, 315(sp)
  OR t0, t0, zero
  SW t0, 480(sp)
  LB t0, 440(sp)
  XORI t0, t0, 1
  SW t0, 724(sp)
  LB t0, 245(sp)
  SLTU t0, zero, t0
  SB t0, 262(sp)
  LW t0, 748(sp)
  SLTU t0, zero, t0
  SB t0, 261(sp)
  LW t0, 480(sp)
  SLTU t0, zero, t0
  SB t0, 316(sp)
  SLTU t0, zero, s7
  SB t0, 88(sp)
  SLTU t0, zero, s0
  SB t0, 269(sp)
  LW t0, 724(sp)
  SLTU t0, zero, t0
  SW t0, 712(sp)
  LB t0, 264(sp)
  LB t1, 424(sp)
  OR s2, t0, t1
  LB t0, 262(sp)
  LB t1, 261(sp)
  AND s0, t1, t0
  LB t0, 316(sp)
  LB t1, 256(sp)
  AND t0, t1, t0
  SW t0, 476(sp)
  LB t0, 269(sp)
  LB t1, 88(sp)
  AND t0, t0, t1
  SW t0, 716(sp)
  LW t0, 712(sp)
  SLTU t0, zero, t0
  SB t0, 421(sp)
  SLTU s2, zero, s2
  SLTU t0, zero, s0
  SB t0, 263(sp)
  LW t0, 476(sp)
  SLTU t0, zero, t0
  SB t0, 318(sp)
  LW t0, 716(sp)
  SLTU t0, zero, t0
  SB t0, 83(sp)
  LB t0, 421(sp)
  AND t0, s2, t0
  SW t0, 708(sp)
  LB t0, 263(sp)
  LB t1, 393(sp)
  OR s2, t1, t0
  LB t0, 318(sp)
  OR t0, t0, zero
  SW t0, 488(sp)
  LB t0, 83(sp)
  XORI t0, t0, 1
  SW t0, 720(sp)
  SLTU t0, zero, s2
  SB t0, 267(sp)
  LW t0, 708(sp)
  SLTU t0, zero, t0
  SB t0, 265(sp)
  LW t0, 488(sp)
  SLTU t0, zero, t0
  SB t0, 319(sp)
  SLTU t0, zero, s11
  SB t0, 71(sp)
  SLTU t0, zero, s6
  SB t0, 73(sp)
  LW t0, 720(sp)
  SLTU t0, zero, t0
  SW t0, 728(sp)
  LB t0, 269(sp)
  LB t1, 88(sp)
  OR s7, t0, t1
  LB t0, 267(sp)
  LB t1, 265(sp)
  AND s6, t1, t0
  LB t0, 319(sp)
  LB t1, 256(sp)
  AND t0, t1, t0
  SW t0, 528(sp)
  LB t0, 71(sp)
  LB t1, 73(sp)
  AND t0, t1, t0
  SW t0, 752(sp)
  LW t0, 728(sp)
  SLTU t0, zero, t0
  SB t0, 81(sp)
  SLTU s7, zero, s7
  SLTU t0, zero, s6
  SB t0, 268(sp)
  LW t0, 528(sp)
  SLTU t0, zero, t0
  SB t0, 320(sp)
  LW t0, 752(sp)
  SLTU t0, zero, t0
  SB t0, 67(sp)
  LB t0, 81(sp)
  AND t0, s7, t0
  SW t0, 736(sp)
  LB t0, 268(sp)
  LB t1, 440(sp)
  OR s7, t1, t0
  LB t0, 320(sp)
  OR t0, t0, zero
  SW t0, 472(sp)
  LB t0, 67(sp)
  XORI t0, t0, 1
  SW t0, 704(sp)
  SLTU t0, zero, s7
  SB t0, 272(sp)
  LW t0, 736(sp)
  SLTU t0, zero, t0
  SB t0, 270(sp)
  LW t0, 472(sp)
  SLTU t0, zero, t0
  SB t0, 321(sp)
  LW t0, 640(sp)
  SLTU t0, zero, t0
  SB t0, 112(sp)
  SLTU t0, zero, s8
  SB t0, 115(sp)
  LW t0, 704(sp)
  SLTU t0, zero, t0
  SW t0, 760(sp)
  LB t0, 71(sp)
  LB t1, 73(sp)
  OR t0, t1, t0
  SW t0, 744(sp)
  LB t0, 272(sp)
  LB t1, 270(sp)
  AND s8, t1, t0
  LB t0, 321(sp)
  LB t1, 256(sp)
  AND t0, t1, t0
  SW t0, 548(sp)
  LB t0, 112(sp)
  LB t1, 115(sp)
  AND t0, t1, t0
  SW t0, 784(sp)
  LW t0, 760(sp)
  SLTU t0, zero, t0
  SB t0, 120(sp)
  LW t0, 744(sp)
  SLTU t0, zero, t0
  SB t0, 64(sp)
  SLTU t0, zero, s8
  SB t0, 287(sp)
  LW t0, 548(sp)
  SLTU t0, zero, t0
  SB t0, 322(sp)
  LW t0, 784(sp)
  SLTU t0, zero, t0
  SB t0, 109(sp)
  LB t0, 120(sp)
  LB t1, 64(sp)
  AND t0, t1, t0
  SW t0, 772(sp)
  LB t0, 287(sp)
  LB t1, 83(sp)
  OR t0, t1, t0
  SW t0, 740(sp)
  LB t0, 322(sp)
  OR t0, t0, zero
  SW t0, 552(sp)
  LB t0, 109(sp)
  XORI t0, t0, 1
  SW t0, 788(sp)
  LW t0, 740(sp)
  SLTU t0, zero, t0
  SB t0, 330(sp)
  LW t0, 772(sp)
  SLTU t0, zero, t0
  SB t0, 329(sp)
  LW t0, 552(sp)
  SLTU t0, zero, t0
  SB t0, 323(sp)
  LW t0, 464(sp)
  SLTU t0, zero, t0
  SB t0, 95(sp)
  SLTU t0, zero, s4
  SB t0, 97(sp)
  LW t0, 788(sp)
  SLTU t0, zero, t0
  SW t0, 792(sp)
  LB t0, 112(sp)
  LB t1, 115(sp)
  OR s10, t1, t0
  LB t0, 330(sp)
  LB t1, 329(sp)
  AND s4, t1, t0
  LB t0, 323(sp)
  LB t1, 256(sp)
  AND t0, t1, t0
  SW t0, 564(sp)
  LB t0, 95(sp)
  LB t1, 97(sp)
  AND t0, t1, t0
  SW t0, 636(sp)
  LW t0, 792(sp)
  SLTU t0, zero, t0
  SB t0, 104(sp)
  SLTU s10, zero, s10
  SLTU t0, zero, s4
  SB t0, 331(sp)
  LW t0, 564(sp)
  SLTU t0, zero, t0
  SB t0, 324(sp)
  LW t0, 636(sp)
  SLTU t0, zero, t0
  SB t0, 29(sp)
  LB t0, 104(sp)
  AND t0, s10, t0
  SW t0, 652(sp)
  LB t0, 331(sp)
  LB t1, 67(sp)
  OR s10, t1, t0
  LB t0, 324(sp)
  OR t0, t0, zero
  SW t0, 568(sp)
  LB t0, 29(sp)
  XORI t0, t0, 1
  SW t0, 648(sp)
  SLTU t0, zero, s10
  SB t0, 333(sp)
  LW t0, 652(sp)
  SLTU t0, zero, t0
  SB t0, 332(sp)
  LW t0, 568(sp)
  SLTU t0, zero, t0
  SB t0, 325(sp)
  LW t0, 632(sp)
  SLTU t0, zero, t0
  SB t0, 19(sp)
  SLTU t0, zero, t3
  SB t0, 20(sp)
  LW t0, 648(sp)
  SLTU t0, zero, t0
  SW t0, 600(sp)
  LB t0, 95(sp)
  LB t1, 97(sp)
  OR t0, t1, t0
  SW t0, 628(sp)
  LB t0, 333(sp)
  LB t1, 332(sp)
  AND t3, t1, t0
  LB t0, 325(sp)
  LB t1, 256(sp)
  AND t0, t1, t0
  SW t0, 576(sp)
  LB t0, 19(sp)
  LB t1, 20(sp)
  AND t0, t1, t0
  SW t0, 684(sp)
  LW t0, 600(sp)
  SLTU t0, zero, t0
  SB t0, 23(sp)
  LW t0, 628(sp)
  SLTU t0, zero, t0
  SB t0, 26(sp)
  SLTU t0, zero, t3
  SB t0, 334(sp)
  LW t0, 576(sp)
  SLTU t0, zero, t0
  SB t0, 326(sp)
  LW t0, 684(sp)
  SLTU t0, zero, t0
  SB t0, 18(sp)
  LB t0, 23(sp)
  LB t1, 26(sp)
  AND t0, t1, t0
  SW t0, 664(sp)
  LB t0, 334(sp)
  LB t1, 109(sp)
  OR t0, t1, t0
  SW t0, 608(sp)
  LB t0, 326(sp)
  OR t0, t0, zero
  SW t0, 444(sp)
  LB t0, 18(sp)
  XORI t0, t0, 1
  SW t0, 688(sp)
  LW t0, 608(sp)
  SLTU t0, zero, t0
  SB t0, 336(sp)
  LW t0, 664(sp)
  SLTU t0, zero, t0
  SB t0, 335(sp)
  LW t0, 444(sp)
  SLTU t0, zero, t0
  SB t0, 317(sp)
  LW t0, 624(sp)
  SLTU t0, zero, t0
  SB t0, 12(sp)
  SLTU t0, zero, t5
  SB t0, 343(sp)
  LW t0, 688(sp)
  SLTU t0, zero, t0
  SW t0, 692(sp)
  LB t0, 19(sp)
  LB t1, 20(sp)
  OR t0, t1, t0
  SW t0, 680(sp)
  LB t0, 336(sp)
  LB t1, 335(sp)
  AND t5, t1, t0
  LB t0, 317(sp)
  LB t1, 256(sp)
  AND t0, t1, t0
  SW t0, 584(sp)
  LB t0, 343(sp)
  LB t1, 12(sp)
  AND t0, t0, t1
  SW t0, 912(sp)
  LW t0, 692(sp)
  SLTU t0, zero, t0
  SB t0, 0(sp)
  LW t0, 680(sp)
  SLTU t0, zero, t0
  SB t0, 17(sp)
  SLTU t0, zero, t5
  SB t0, 338(sp)
  LW t0, 584(sp)
  SLTU t0, zero, t0
  SB t0, 311(sp)
  LW t0, 912(sp)
  SLTU t0, zero, t0
  SB t0, 11(sp)
  LB t0, 0(sp)
  LB t1, 17(sp)
  AND t0, t1, t0
  SW t0, 696(sp)
  LB t0, 338(sp)
  LB t1, 29(sp)
  OR t0, t1, t0
  SW t0, 672(sp)
  LB t0, 311(sp)
  OR t0, t0, zero
  SW t0, 588(sp)
  LB t0, 11(sp)
  XORI t0, t0, 1
  SW t0, 916(sp)
  LW t0, 672(sp)
  SLTU t0, zero, t0
  SB t0, 327(sp)
  LW t0, 696(sp)
  SLTU t0, zero, t0
  SB t0, 339(sp)
  LW t0, 588(sp)
  SLTU t0, zero, t0
  SB t0, 308(sp)
  SLTU t0, zero, s5
  SB t0, 5(sp)
  SLTU t0, zero, t4
  SB t0, 346(sp)
  LW t0, 916(sp)
  SLTU t0, zero, t0
  SW t0, 920(sp)
  LB t0, 343(sp)
  LB t1, 12(sp)
  OR s5, t0, t1
  LB t0, 327(sp)
  LB t1, 339(sp)
  AND t4, t1, t0
  LB t0, 308(sp)
  LB t1, 256(sp)
  AND t0, t1, t0
  SW t0, 536(sp)
  LB t0, 346(sp)
  LB t1, 5(sp)
  AND t0, t0, t1
  SW t0, 944(sp)
  LW t0, 920(sp)
  SLTU t0, zero, t0
  SB t0, 10(sp)
  SLTU s5, zero, s5
  SLTU t0, zero, t4
  SB t0, 342(sp)
  LW t0, 536(sp)
  SLTU t0, zero, t0
  SB t0, 305(sp)
  LW t0, 944(sp)
  SLTU t0, zero, t0
  SB t0, 3(sp)
  LB t0, 10(sp)
  AND t0, s5, t0
  SW t0, 928(sp)
  LB t0, 342(sp)
  LB t1, 18(sp)
  OR s5, t1, t0
  LB t0, 305(sp)
  OR t0, t0, zero
  SW t0, 448(sp)
  LB t0, 3(sp)
  XORI t0, t0, 1
  SW t0, 956(sp)
  SLTU t0, zero, s5
  SB t0, 345(sp)
  LW t0, 928(sp)
  SLTU t0, zero, t0
  SB t0, 344(sp)
  LW t0, 448(sp)
  SLTU t0, zero, t0
  SB t0, 303(sp)
  LW t0, 1408(sp)
  SLTU t0, zero, t0
  SB t0, 55(sp)
  SLTU t0, zero, s3
  SB t0, 351(sp)
  LW t0, 956(sp)
  SLTU t0, zero, t0
  SW t0, 968(sp)
  LB t0, 346(sp)
  LB t1, 5(sp)
  OR s3, t0, t1
  LB t0, 345(sp)
  LB t1, 344(sp)
  AND a2, t1, t0
  LB t0, 303(sp)
  LB t1, 256(sp)
  AND t0, t1, t0
  SW t0, 468(sp)
  LB t0, 351(sp)
  LB t1, 55(sp)
  AND t0, t0, t1
  SW t0, 984(sp)
  LW t0, 968(sp)
  SLTU t0, zero, t0
  SB t0, 60(sp)
  SLTU s3, zero, s3
  SLTU a2, zero, a2
  LW t0, 468(sp)
  SLTU t0, zero, t0
  SB t0, 350(sp)
  LW t0, 984(sp)
  SLTU t0, zero, t0
  SB t0, 52(sp)
  LB t0, 60(sp)
  AND t0, s3, t0
  SW t0, 976(sp)
  LB t0, 11(sp)
  OR s3, t0, a2
  LB t0, 350(sp)
  OR t0, t0, zero
  SW t0, 460(sp)
  LB t0, 52(sp)
  XORI t0, t0, 1
  SW t0, 992(sp)
  SLTU t0, zero, s3
  SB t0, 349(sp)
  LW t0, 976(sp)
  SLTU t0, zero, t0
  SB t0, 347(sp)
  LW t0, 460(sp)
  SLTU t0, zero, t0
  SB t0, 348(sp)
  LW t0, 1404(sp)
  SLTU t0, zero, t0
  SB t0, 42(sp)
  LW t0, 1292(sp)
  SLTU t0, zero, t0
  SB t0, 314(sp)
  LW t0, 992(sp)
  SLTU t0, zero, t0
  SW t0, 996(sp)
  LB t0, 351(sp)
  LB t1, 55(sp)
  OR a3, t0, t1
  LB t0, 349(sp)
  LB t1, 347(sp)
  AND t0, t1, t0
  LB t1, 348(sp)
  LB t2, 256(sp)
  AND t1, t2, t1
  SW t1, 1520(sp)
  LB t1, 314(sp)
  LB t2, 42(sp)
  AND t1, t1, t2
  SW t1, 816(sp)
  LW t1, 996(sp)
  SLTU t1, zero, t1
  SB t1, 48(sp)
  SLTU s11, zero, a3
  SLTU a3, zero, t0
  LW t0, 1520(sp)
  SLTU t0, zero, t0
  SB t0, 340(sp)
  LW t0, 816(sp)
  SLTU t0, zero, t0
  SB t0, 40(sp)
  LB t0, 48(sp)
  AND t0, s11, t0
  SW t0, 1004(sp)
  LB t0, 3(sp)
  OR t0, t0, a3
  LB t1, 340(sp)
  OR t1, t1, zero
  SW t1, 1736(sp)
  LB t1, 40(sp)
  XORI t1, t1, 1
  SW t1, 824(sp)
  SLTU t0, zero, t0
  SB t0, 352(sp)
  LW t0, 1004(sp)
  SLTU s11, zero, t0
  LW t0, 1736(sp)
  SLTU t0, zero, t0
  SB t0, 337(sp)
  LW t0, 1400(sp)
  SLTU t0, zero, t0
  SB t0, 213(sp)
  LW t0, 1288(sp)
  SLTU t0, zero, t0
  SB t0, 304(sp)
  LW t0, 824(sp)
  SLTU t0, zero, t0
  SW t0, 832(sp)
  LB t0, 314(sp)
  LB t1, 42(sp)
  OR t1, t0, t1
  LB t0, 352(sp)
  AND t0, s11, t0
  LB t2, 337(sp)
  LB a0, 256(sp)
  AND t2, a0, t2
  SW t2, 1728(sp)
  LB t2, 304(sp)
  LB a0, 213(sp)
  AND t2, t2, a0
  SW t2, 844(sp)
  LW t2, 832(sp)
  SLTU t2, zero, t2
  SB t2, 34(sp)
  SLTU t1, zero, t1
  SLTU t0, zero, t0
  SB t0, 353(sp)
  LW t0, 1728(sp)
  SLTU t0, zero, t0
  SB t0, 328(sp)
  LW t0, 844(sp)
  SLTU t0, zero, t0
  SB t0, 207(sp)
  LB t0, 34(sp)
  AND t0, t1, t0
  SW t0, 840(sp)
  LB t0, 353(sp)
  LB t1, 52(sp)
  OR t1, t1, t0
  LB t0, 328(sp)
  OR t0, t0, zero
  SW t0, 1712(sp)
  LB t0, 207(sp)
  XORI t0, t0, 1
  SW t0, 848(sp)
  SLTU t0, zero, t1
  SB t0, 302(sp)
  LW t0, 840(sp)
  SLTU t0, zero, t0
  SB t0, 301(sp)
  LW t0, 1712(sp)
  SLTU t0, zero, t0
  SB t0, 271(sp)
  LW t0, 1396(sp)
  SLTU t0, zero, t0
  SB t0, 197(sp)
  LW t0, 1284(sp)
  SLTU t0, zero, t0
  SB t0, 307(sp)
  LW t0, 848(sp)
  SLTU t0, zero, t0
  SW t0, 852(sp)
  LB t0, 304(sp)
  LB t1, 213(sp)
  OR a4, t0, t1
  LB t0, 302(sp)
  LB t1, 301(sp)
  AND t2, t1, t0
  LB t0, 271(sp)
  LB t1, 256(sp)
  AND t0, t1, t0
  SW t0, 1704(sp)
  LB t0, 307(sp)
  LB t1, 197(sp)
  AND t0, t0, t1
  SW t0, 860(sp)
  LW t0, 852(sp)
  SLTU t0, zero, t0
  SB t0, 205(sp)
  SLTU a4, zero, a4
  SLTU t2, zero, t2
  LW t0, 1704(sp)
  SLTU t0, zero, t0
  SB t0, 171(sp)
  LW t0, 860(sp)
  SLTU t0, zero, t0
  SB t0, 195(sp)
  LB t0, 205(sp)
  AND t0, a4, t0
  SW t0, 804(sp)
  LB t0, 40(sp)
  OR a4, t0, t2
  LB t0, 171(sp)
  OR t0, t0, zero
  SW t0, 1724(sp)
  LB t0, 195(sp)
  XORI t0, t0, 1
  SW t0, 864(sp)
  SLTU t0, zero, a4
  SB t0, 306(sp)
  LW t0, 804(sp)
  SLTU a4, zero, t0
  LW t0, 1724(sp)
  SLTU t0, zero, t0
  SB t0, 176(sp)
  LW t0, 1392(sp)
  SLTU t0, zero, t0
  SB t0, 241(sp)
  LW t0, 1316(sp)
  SLTU t0, zero, t0
  SB t0, 310(sp)
  LW t0, 864(sp)
  SLTU t0, zero, t0
  SW t0, 868(sp)
  LB t0, 307(sp)
  LB t1, 197(sp)
  OR a5, t0, t1
  LB t0, 306(sp)
  AND a0, a4, t0
  LB t0, 176(sp)
  LB t1, 256(sp)
  AND t0, t1, t0
  SW t0, 1816(sp)
  LB t0, 310(sp)
  LB t1, 241(sp)
  AND t0, t0, t1
  SW t0, 888(sp)
  LW t0, 868(sp)
  SLTU t0, zero, t0
  SB t0, 189(sp)
  SLTU a5, zero, a5
  SLTU a0, zero, a0
  LW t0, 1816(sp)
  SLTU t0, zero, t0
  SB t0, 178(sp)
  LW t0, 888(sp)
  SLTU t0, zero, t0
  SB t0, 239(sp)
  LB t0, 189(sp)
  AND t0, a5, t0
  SW t0, 872(sp)
  LB t0, 207(sp)
  OR a5, t0, a0
  LB t0, 178(sp)
  OR t0, t0, zero
  SW t0, 1800(sp)
  LB t0, 239(sp)
  XORI t0, t0, 1
  SW t0, 892(sp)
  SLTU t0, zero, a5
  SB t0, 309(sp)
  LW t0, 872(sp)
  SLTU a5, zero, t0
  LW t0, 796(sp)
  SW t0, 796(sp)
  LW t0, 1800(sp)
  SLTU t0, zero, t0
  SB t0, 183(sp)
  LW t0, 796(sp)
  SLTU t0, zero, t0
  SB t0, 151(sp)
  LW t0, 1412(sp)
  SLTU t0, zero, t0
  SB t0, 312(sp)
  LW t0, 892(sp)
  SLTU t0, zero, t0
  SW t0, 896(sp)
  LB t0, 310(sp)
  LB t1, 241(sp)
  OR t0, t0, t1
  SW t0, 884(sp)
  LB t0, 309(sp)
  AND a1, a5, t0
  LB t0, 183(sp)
  LB t1, 256(sp)
  AND t0, t1, t0
  SW t0, 1756(sp)
  LB t0, 312(sp)
  LB t1, 151(sp)
  AND t0, t0, t1
  SW t0, 572(sp)
  LW t0, 896(sp)
  SLTU t0, zero, t0
  SB t0, 232(sp)
  LW t0, 884(sp)
  SLTU t0, zero, t0
  SB t0, 233(sp)
  SLTU a1, zero, a1
  LW t0, 1756(sp)
  SLTU t0, zero, t0
  SB t0, 124(sp)
  LW t0, 572(sp)
  SLTU t0, zero, t0
  SB t0, 146(sp)
  LB t0, 232(sp)
  LB t1, 233(sp)
  AND t0, t1, t0
  SW t0, 900(sp)
  LB t0, 195(sp)
  OR t0, t0, a1
  SW t0, 880(sp)
  LB t0, 124(sp)
  OR t0, t0, zero
  SW t0, 1776(sp)
  LB t0, 146(sp)
  XORI t0, t0, 1
  SW t0, 560(sp)
  LW t0, 880(sp)
  SLTU t0, zero, t0
  SB t0, 228(sp)
  LW t0, 900(sp)
  SLTU t0, zero, t0
  SB t0, 215(sp)
  LW t0, 1776(sp)
  SLTU t0, zero, t0
  SB t0, 129(sp)
  LW t0, 560(sp)
  SLTU t0, zero, t0
  SW t0, 556(sp)
  LB t0, 312(sp)
  LB t1, 151(sp)
  OR t0, t0, t1
  SW t0, 580(sp)
  LB t0, 228(sp)
  LB t1, 215(sp)
  AND t0, t1, t0
  SW t0, 960(sp)
  LB t0, 129(sp)
  LB t1, 256(sp)
  AND t0, t1, t0
  SW t0, 1768(sp)
  LW t0, 556(sp)
  SLTU t0, zero, t0
  SB t0, 142(sp)
  LW t0, 580(sp)
  SLTU t0, zero, t0
  SB t0, 144(sp)
  LW t0, 960(sp)
  SLTU t0, zero, t0
  SB t0, 223(sp)
  LW t0, 1768(sp)
  SLTU t0, zero, t0
  SB t0, 131(sp)
  LB t0, 142(sp)
  LB t1, 144(sp)
  AND t0, t1, t0
  SW t0, 544(sp)
  LB t0, 223(sp)
  LB t1, 239(sp)
  OR t0, t1, t0
  SW t0, 592(sp)
  LB t0, 131(sp)
  XORI t0, t0, 1
  SW t0, 1764(sp)
  LW t0, 592(sp)
  SLTU t0, zero, t0
  SB t0, 123(sp)
  LW t0, 544(sp)
  SLTU t0, zero, t0
  SB t0, 140(sp)
  LW t0, 1764(sp)
  SLTU t0, zero, t0
  SW t0, 1760(sp)
  LB t0, 129(sp)
  LB t1, 256(sp)
  OR t0, t1, t0
  SW t0, 1772(sp)
  LB t0, 124(sp)
  XORI t0, t0, 1
  SW t0, 1788(sp)
  LB t0, 123(sp)
  LB t1, 140(sp)
  AND t0, t1, t0
  SW t0, 520(sp)
  LW t0, 1760(sp)
  SLTU t0, zero, t0
  SB t0, 134(sp)
  LW t0, 1772(sp)
  SLTU t0, zero, t0
  SB t0, 133(sp)
  LW t0, 1788(sp)
  SLTU t0, zero, t0
  SW t0, 1784(sp)
  LB t0, 183(sp)
  LB t1, 256(sp)
  OR t0, t1, t0
  SW t0, 1796(sp)
  LW t0, 520(sp)
  SLTU t0, zero, t0
  SB t0, 137(sp)
  LB t0, 134(sp)
  LB t1, 133(sp)
  AND t0, t1, t0
  SW t0, 1656(sp)
  LW t0, 1784(sp)
  SLTU t0, zero, t0
  SB t0, 127(sp)
  LW t0, 1796(sp)
  SLTU t0, zero, t0
  SB t0, 126(sp)
  LB t0, 178(sp)
  XORI t0, t0, 1
  SW t0, 1812(sp)
  LB t0, 137(sp)
  XORI t0, t0, 1
  SW t0, 516(sp)
  LW t0, 1656(sp)
  SLLIW t0, t0, 1
  SW t0, 1616(sp)
  LB t0, 127(sp)
  LB t1, 126(sp)
  AND t0, t1, t0
  SW t0, 1780(sp)
  LW t0, 1812(sp)
  SLTU t0, zero, t0
  SW t0, 1808(sp)
  LB t0, 176(sp)
  LB t1, 256(sp)
  OR t0, t1, t0
  SW t0, 1820(sp)
  LW t0, 516(sp)
  SLTU t0, zero, t0
  SW t0, 512(sp)
  LB t0, 123(sp)
  LB t1, 140(sp)
  OR t0, t1, t0
  SW t0, 532(sp)
  LB t0, 223(sp)
  XORI t0, t0, 1
  SW t0, 452(sp)
  LW t0, 1616(sp)
  LW t1, 1780(sp)
  ADDW t0, t0, t1
  SW t0, 1612(sp)
  LW t0, 1808(sp)
  SLTU t0, zero, t0
  SB t0, 181(sp)
  LW t0, 1820(sp)
  SLTU t0, zero, t0
  SB t0, 180(sp)
  LB t0, 171(sp)
  XORI t0, t0, 1
  SW t0, 1700(sp)
  LW t0, 512(sp)
  SLTU t0, zero, t0
  SB t0, 135(sp)
  LW t0, 532(sp)
  SLTU t0, zero, t0
  SB t0, 136(sp)
  LW t0, 452(sp)
  SLTU t0, zero, t0
  SW t0, 456(sp)
  LB t0, 228(sp)
  LB t1, 215(sp)
  OR t0, t1, t0
  SW t0, 904(sp)
  LW t0, 1612(sp)
  SLLIW t0, t0, 1
  SW t0, 1608(sp)
  LB t0, 181(sp)
  LB t1, 180(sp)
  AND t0, t1, t0
  SW t0, 1804(sp)
  LW t0, 1700(sp)
  SLTU t0, zero, t0
  SW t0, 1696(sp)
  LB t0, 271(sp)
  LB t1, 256(sp)
  OR t0, t1, t0
  SW t0, 1708(sp)
  LB t0, 135(sp)
  LB t1, 136(sp)
  AND t0, t1, t0
  SW t0, 508(sp)
  LW t0, 456(sp)
  SLTU t0, zero, t0
  SB t0, 217(sp)
  LW t0, 904(sp)
  SLTU t0, zero, t0
  SB t0, 220(sp)
  XORI a1, a1, 1
  LW t0, 1608(sp)
  LW t1, 1804(sp)
  ADDW t0, t0, t1
  SW t0, 1604(sp)
  LW t0, 1696(sp)
  SLTU t0, zero, t0
  SB t0, 174(sp)
  LW t0, 1708(sp)
  SLTU t0, zero, t0
  SB t0, 173(sp)
  LB t0, 328(sp)
  XORI t0, t0, 1
  SW t0, 1688(sp)
  LW t0, 508(sp)
  SLLIW t0, t0, 1
  SW t0, 504(sp)
  LB t0, 217(sp)
  LB t1, 220(sp)
  AND t0, t1, t0
  SW t0, 596(sp)
  SLTU t0, zero, a1
  SW t0, 876(sp)
  LB t0, 309(sp)
  OR a1, a5, t0
  LW t0, 1604(sp)
  SLLIW t0, t0, 1
  SW t0, 1600(sp)
  LB t0, 174(sp)
  LB t1, 173(sp)
  AND t0, t1, t0
  SW t0, 1692(sp)
  LW t0, 1688(sp)
  SLTU t0, zero, t0
  SW t0, 1720(sp)
  LB t0, 337(sp)
  LB t1, 256(sp)
  OR t0, t1, t0
  SW t0, 1732(sp)
  LW t0, 504(sp)
  LW t1, 596(sp)
  ADDW t0, t0, t1
  SW t0, 500(sp)
  LW t0, 876(sp)
  SLTU a5, zero, t0
  SLTU a1, zero, a1
  XORI a0, a0, 1
  LW t0, 1600(sp)
  LW t1, 1692(sp)
  ADDW t0, t0, t1
  SW t0, 1596(sp)
  LW t0, 1720(sp)
  SLTU t0, zero, t0
  SB t0, 167(sp)
  LW t0, 1732(sp)
  SLTU t0, zero, t0
  SB t0, 166(sp)
  LB t0, 340(sp)
  XORI t0, t0, 1
  SW t0, 1748(sp)
  LW t0, 500(sp)
  SLLIW t0, t0, 1
  SW t0, 496(sp)
  AND a5, a1, a5
  SLTU a1, zero, a0
  LB t0, 306(sp)
  OR a0, a4, t0
  LW t0, 1596(sp)
  SLLIW t0, t0, 1
  SW t0, 1592(sp)
  LB t0, 167(sp)
  LB t1, 166(sp)
  AND t0, t1, t0
  SW t0, 1716(sp)
  LW t0, 1748(sp)
  SLTU t0, zero, t0
  SW t0, 1744(sp)
  LB t0, 348(sp)
  LB t1, 256(sp)
  OR t0, t1, t0
  SW t0, 1752(sp)
  LW t0, 496(sp)
  ADDW a4, t0, a5
  SLTU a1, zero, a1
  SLTU a0, zero, a0
  XORI t2, t2, 1
  LW t0, 1592(sp)
  LW t1, 1716(sp)
  ADDW t0, t0, t1
  SW t0, 1552(sp)
  LW t0, 1744(sp)
  SLTU t0, zero, t0
  SB t0, 160(sp)
  LW t0, 1752(sp)
  SLTU t0, zero, t0
  SB t0, 159(sp)
  LB t0, 350(sp)
  XORI a5, t0, 1
  SLLIW a4, a4, 1
  AND a0, a0, a1
  SLTU t2, zero, t2
  LB t0, 302(sp)
  LB t1, 301(sp)
  OR t1, t1, t0
  LW t0, 1552(sp)
  SLLIW t0, t0, 1
  SW t0, 1584(sp)
  LB t0, 160(sp)
  LB a1, 159(sp)
  AND t0, a1, t0
  SW t0, 1740(sp)
  SLTU a5, zero, a5
  LB t0, 303(sp)
  LB a1, 256(sp)
  OR a1, a1, t0
  ADDW a0, a4, a0
  SLTU t2, zero, t2
  SLTU t1, zero, t1
  LB t0, 353(sp)
  XORI t0, t0, 1
  LW a4, 1584(sp)
  LW a6, 1740(sp)
  ADDW a4, a4, a6
  SW a4, 1580(sp)
  SLTU a5, zero, a5
  SLTU a4, zero, a1
  LB a1, 305(sp)
  XORI a1, a1, 1
  SLLIW a0, a0, 1
  AND t2, t1, t2
  SLTU t1, zero, t0
  LB t0, 352(sp)
  OR t0, s11, t0
  LW a6, 1580(sp)
  SLLIW a6, a6, 1
  SW a6, 1576(sp)
  AND a5, a4, a5
  SLTU a4, zero, a1
  LB a1, 308(sp)
  LB a6, 256(sp)
  OR a1, a6, a1
  ADDW a0, a0, t2
  SLTU t2, zero, t1
  SLTU t1, zero, t0
  XORI t0, a3, 1
  LW a3, 1576(sp)
  ADDW a5, a3, a5
  SLTU a4, zero, a4
  SLTU a3, zero, a1
  LB a1, 311(sp)
  XORI a1, a1, 1
  SLLIW a0, a0, 1
  AND t2, t1, t2
  SLTU t1, zero, t0
  LB t0, 349(sp)
  LB a6, 347(sp)
  OR t0, a6, t0
  SLLIW a5, a5, 1
  AND a4, a3, a4
  SLTU a3, zero, a1
  LB a1, 317(sp)
  LB a6, 256(sp)
  OR a1, a6, a1
  ADDW a0, a0, t2
  SLTU t2, zero, t1
  SLTU t1, zero, t0
  XORI t0, a2, 1
  ADDW a4, a5, a4
  SLTU a3, zero, a3
  SLTU a2, zero, a1
  LB a1, 326(sp)
  XORI a1, a1, 1
  SLLIW a0, a0, 1
  AND t2, t1, t2
  SLTU t1, zero, t0
  LB t0, 345(sp)
  LB a5, 344(sp)
  OR t0, a5, t0
  SLLIW a4, a4, 1
  AND a3, a2, a3
  SLTU a2, zero, a1
  LB a1, 325(sp)
  LB a5, 256(sp)
  OR a1, a5, a1
  ADDW a0, a0, t2
  SLTU t2, zero, t1
  SLTU t1, zero, t0
  LB t0, 342(sp)
  XORI t0, t0, 1
  ADDW a4, a4, a3
  SLTU a3, zero, a2
  SLTU a2, zero, a1
  LB a1, 324(sp)
  XORI a1, a1, 1
  SLLIW a0, a0, 1
  AND t2, t1, t2
  SLTU t1, zero, t0
  LB t0, 327(sp)
  LB a5, 339(sp)
  OR t0, a5, t0
  SLLIW a4, a4, 1
  AND a3, a2, a3
  SLTU a2, zero, a1
  LB a1, 323(sp)
  LB a5, 256(sp)
  OR a1, a5, a1
  ADDW a0, a0, t2
  SLTU t2, zero, t1
  SLTU t1, zero, t0
  LB t0, 338(sp)
  XORI t0, t0, 1
  ADDW a4, a4, a3
  SLTU a3, zero, a2
  SLTU a2, zero, a1
  LB a1, 322(sp)
  XORI a1, a1, 1
  SLLIW a0, a0, 1
  AND t2, t1, t2
  SLTU t1, zero, t0
  LB t0, 336(sp)
  LB a5, 335(sp)
  OR t0, a5, t0
  SLLIW a4, a4, 1
  AND a3, a2, a3
  SLTU a2, zero, a1
  LB a1, 321(sp)
  LB a5, 256(sp)
  OR a1, a5, a1
  ADDW a0, a0, t2
  SLTU t2, zero, t1
  SLTU t1, zero, t0
  LB t0, 334(sp)
  XORI t0, t0, 1
  ADDW a4, a4, a3
  SLTU a3, zero, a2
  SLTU a2, zero, a1
  LB a1, 320(sp)
  XORI a1, a1, 1
  SLLIW a0, a0, 1
  AND t2, t1, t2
  SLTU t1, zero, t0
  LB t0, 333(sp)
  LB a5, 332(sp)
  OR t0, a5, t0
  SLLIW a4, a4, 1
  AND a3, a2, a3
  SLTU a2, zero, a1
  LB a1, 319(sp)
  LB a5, 256(sp)
  OR a1, a5, a1
  ADDW a0, a0, t2
  SLTU t2, zero, t1
  SLTU t1, zero, t0
  LB t0, 331(sp)
  XORI t0, t0, 1
  ADDW a4, a4, a3
  SLTU a3, zero, a2
  SLTU a2, zero, a1
  LB a1, 318(sp)
  XORI a1, a1, 1
  SLLIW a0, a0, 1
  AND t2, t1, t2
  SLTU t1, zero, t0
  LB t0, 330(sp)
  LB a5, 329(sp)
  OR t0, a5, t0
  SLLIW a4, a4, 1
  AND a3, a2, a3
  SLTU a2, zero, a1
  LB a1, 316(sp)
  LB a5, 256(sp)
  OR a1, a5, a1
  ADDW a0, a0, t2
  SLTU t2, zero, t1
  SLTU t1, zero, t0
  LB t0, 287(sp)
  XORI t0, t0, 1
  ADDW a5, a4, a3
  SLTU a4, zero, a2
  SLTU a3, zero, a1
  LB a1, 315(sp)
  XORI a2, a1, 1
  LB a1, 289(sp)
  XORI a1, a1, 1
  SLLIW a0, a0, 1
  AND t2, t1, t2
  SLTU t1, zero, t0
  LB t0, 272(sp)
  LB a6, 270(sp)
  OR t0, a6, t0
  SLLIW a6, a5, 1
  AND a5, a3, a4
  SLTU a4, zero, a2
  LB a2, 300(sp)
  LB a3, 313(sp)
  OR a3, a3, a2
  SLTU a2, zero, a1
  LB a1, 288(sp)
  ORI a1, a1, 1
  ADDW a0, a0, t2
  SLTU t2, zero, t1
  SLTU t1, zero, t0
  LB t0, 268(sp)
  XORI t0, t0, 1
  ADDW a5, a6, a5
  SLTU a4, zero, a4
  SLTU a3, zero, a3
  SLTU a2, zero, a2
  SLTU a1, zero, a1
  SLLIW a0, a0, 1
  AND t2, t1, t2
  SLTU t1, zero, t0
  LB t0, 267(sp)
  LB a6, 265(sp)
  OR t0, a6, t0
  SLLIW a5, a5, 1
  AND a3, a3, a4
  AND a2, a1, a2
  ADDW a1, a0, t2
  SLTU a0, zero, t1
  SLTU t2, zero, t0
  LB t0, 263(sp)
  XORI t1, t0, 1
  LB t0, 245(sp)
  XORI t0, t0, 1
  ADDW a4, a5, a3
  SLTU a3, zero, a2
  SLLIW a2, a1, 1
  AND a1, t2, a0
  SLTU a0, zero, t1
  LB t1, 262(sp)
  LB t2, 261(sp)
  OR t2, t2, t1
  SLTU t1, zero, t0
  LB t0, 258(sp)
  LB a5, 257(sp)
  OR t0, a5, t0
  SLLIW a4, a4, 1
  SLTU a3, zero, a3
  ADDW a1, a2, a1
  SLTU a0, zero, a0
  SLTU t2, zero, t2
  SLTU t1, zero, t1
  SLTU t0, zero, t0
  ADDW s2, a4, a3
  SLLIW a1, a1, 1
  AND t2, t2, a0
  AND t0, t0, t1
  SLLI a0, s2, 1
  ADDW t1, a1, t2
  SLTU t0, zero, t0
  SRLI t2, a0, 63
  SLLIW t1, t1, 1
  SLTU t0, zero, t0
  ADD t2, s2, t2
  ADDW a0, t1, t0
  ANDI t1, t2, -2
  SUBW s0, s2, t1
  CALL fib
  SUB a6, zero, s0
  ADD s1, a0, zero
  BLT s0, zero, bb218
  # implict jump to bb75
bb75:   # loop depth 0
  ADD a6, s0, zero
  # implict jump to bb76
bb76:   # loop depth 0
  SRAIW t1, s2, 31
  SRLIW t0, t1, 31
  ADD t0, s2, t0
  SRAIW t2, t0, 1
  SLLI t0, t2, 1
  SRLI t0, t0, 63
  ADD t0, t2, t0
  ANDI t0, t0, -2
  SUBW a7, t2, t0
  SUB t1, zero, a7
  BLT a7, zero, bb217
  # implict jump to bb77
bb77:   # loop depth 0
  # implict jump to bb78
bb78:   # loop depth 0
  SRAIW t1, t2, 31
  SRLIW t0, t1, 31
  ADD t0, t2, t0
  SRAIW t2, t0, 1
  SLLI t0, t2, 1
  SRLI t0, t0, 63
  ADD t0, t2, t0
  ANDI t0, t0, -2
  SUBW t1, t2, t0
  SUB t4, zero, t1
  BLT t1, zero, bb216
  # implict jump to bb79
bb79:   # loop depth 0
  ADD t4, t1, zero
  # implict jump to bb80
bb80:   # loop depth 0
  SRAIW t1, t2, 31
  SRLIW t0, t1, 31
  ADD t0, t2, t0
  SRAIW t2, t0, 1
  SLLI t0, t2, 1
  SRLI t0, t0, 63
  ADD t0, t2, t0
  ANDI t0, t0, -2
  SUBW t1, t2, t0
  SUB t3, zero, t1
  BLT t1, zero, bb215
  # implict jump to bb81
bb81:   # loop depth 0
  ADD t3, t1, zero
  # implict jump to bb82
bb82:   # loop depth 0
  SRAIW t1, t2, 31
  SRLIW t0, t1, 31
  ADD t0, t2, t0
  SRAIW t2, t0, 1
  SLLI t0, t2, 1
  SRLI t0, t0, 63
  ADD t0, t2, t0
  ANDI t0, t0, -2
  SUBW t1, t2, t0
  SUB s2, zero, t1
  BLT t1, zero, bb214
  # implict jump to bb83
bb83:   # loop depth 0
  ADD s2, t1, zero
  # implict jump to bb84
bb84:   # loop depth 0
  SRAIW t1, t2, 31
  SRLIW t0, t1, 31
  ADD t0, t2, t0
  SRAIW t2, t0, 1
  SLLI t0, t2, 1
  SRLI t0, t0, 63
  ADD t0, t2, t0
  ANDI t0, t0, -2
  SUBW t1, t2, t0
  SUB s0, zero, t1
  BLT t1, zero, bb213
  # implict jump to bb85
bb85:   # loop depth 0
  ADD s0, t1, zero
  # implict jump to bb86
bb86:   # loop depth 0
  SRAIW t1, t2, 31
  SRLIW t0, t1, 31
  ADD t0, t2, t0
  SRAIW t2, t0, 1
  SLLI t0, t2, 1
  SRLI t0, t0, 63
  ADD t0, t2, t0
  ANDI t0, t0, -2
  SUBW t5, t2, t0
  SUB t1, zero, t5
  BLT t5, zero, bb212
  # implict jump to bb87
bb87:   # loop depth 0
  # implict jump to bb88
bb88:   # loop depth 0
  SRAIW t1, t2, 31
  SRLIW t0, t1, 31
  ADD t0, t2, t0
  SRAIW t2, t0, 1
  SLLI t0, t2, 1
  SRLI t0, t0, 63
  ADD t0, t2, t0
  ANDI t0, t0, -2
  SUBW t1, t2, t0
  SUB a2, zero, t1
  BLT t1, zero, bb211
  # implict jump to bb89
bb89:   # loop depth 0
  ADD a2, t1, zero
  # implict jump to bb90
bb90:   # loop depth 0
  SRAIW t1, t2, 31
  SRLIW t0, t1, 31
  ADD t0, t2, t0
  SRAIW t2, t0, 1
  SLLI t0, t2, 1
  SRLI t0, t0, 63
  ADD t0, t2, t0
  ANDI t0, t0, -2
  SUBW t1, t2, t0
  SUB s3, zero, t1
  BLT t1, zero, bb210
  # implict jump to bb91
bb91:   # loop depth 0
  ADD s3, t1, zero
  # implict jump to bb92
bb92:   # loop depth 0
  SRAIW t1, t2, 31
  SRLIW t0, t1, 31
  ADD t0, t2, t0
  SRAIW t2, t0, 1
  SLLI t0, t2, 1
  SRLI t0, t0, 63
  ADD t0, t2, t0
  ANDI t0, t0, -2
  SUBW a3, t2, t0
  SUB t1, zero, a3
  BLT a3, zero, bb209
  # implict jump to bb93
bb93:   # loop depth 0
  # implict jump to bb94
bb94:   # loop depth 0
  SRAIW t1, t2, 31
  SRLIW t0, t1, 31
  ADD t0, t2, t0
  SRAIW t2, t0, 1
  SLLI t0, t2, 1
  SRLI t0, t0, 63
  ADD t0, t2, t0
  ANDI t0, t0, -2
  SUBW t1, t2, t0
  SUB a5, zero, t1
  BLT t1, zero, bb208
  # implict jump to bb95
bb95:   # loop depth 0
  ADD a5, t1, zero
  # implict jump to bb96
bb96:   # loop depth 0
  SRAIW t1, t2, 31
  SRLIW t0, t1, 31
  ADD t0, t2, t0
  SRAIW t2, t0, 1
  SLLI t0, t2, 1
  SRLI t0, t0, 63
  ADD t0, t2, t0
  ANDI t0, t0, -2
  SUBW t1, t2, t0
  SUB a4, zero, t1
  BLT t1, zero, bb207
  # implict jump to bb97
bb97:   # loop depth 0
  ADD a4, t1, zero
  # implict jump to bb98
bb98:   # loop depth 0
  SRAIW t1, t2, 31
  SRLIW t0, t1, 31
  ADD t0, t2, t0
  SRAIW t2, t0, 1
  SLLI t0, t2, 1
  SRLI t0, t0, 63
  ADD t0, t2, t0
  ANDI t0, t0, -2
  SUBW t1, t2, t0
  SUB a0, zero, t1
  BLT t1, zero, bb206
  # implict jump to bb99
bb99:   # loop depth 0
  ADD a0, t1, zero
  # implict jump to bb100
bb100:   # loop depth 0
  SRAIW t1, t2, 31
  SRLIW t0, t1, 31
  ADD t0, t2, t0
  SRAIW a1, t0, 1
  SLLI t0, a1, 1
  SRLI t0, t0, 63
  ADD t0, a1, t0
  ANDI t0, t0, -2
  SUBW t1, a1, t0
  SUB t2, zero, t1
  BLT t1, zero, bb205
  # implict jump to bb101
bb101:   # loop depth 0
  ADD t2, t1, zero
  # implict jump to bb102
bb102:   # loop depth 0
  SRAIW t1, a1, 31
  SRLIW t0, t1, 31
  ADD t0, a1, t0
  SRAIW s4, t0, 1
  SLLI t0, s4, 1
  SRLI t0, t0, 63
  ADD t0, s4, t0
  ANDI t0, t0, -2
  SUBW t1, s4, t0
  SUB a1, zero, t1
  BLT t1, zero, bb204
  # implict jump to bb103
bb103:   # loop depth 0
  ADD a1, t1, zero
  # implict jump to bb104
bb104:   # loop depth 0
  SRAIW t1, s4, 31
  SRLIW t0, t1, 31
  ADD t0, s4, t0
  SRAIW t0, t0, 1
  SLLI t1, t0, 1
  SRLI t1, t1, 63
  ADD t1, t0, t1
  ANDI t1, t1, -2
  SUBW t1, t0, t1
  SUB t0, zero, t1
  BLT t1, zero, bb203
  # implict jump to bb105
bb105:   # loop depth 0
  ADD t0, t1, zero
  # implict jump to bb106
bb106:   # loop depth 0
  SLTU t1, zero, a7
  SLTU s5, zero, t4
  LB a7, 260(sp)
  AND t4, a7, t1
  LB a7, 260(sp)
  OR a7, a7, t1
  SLTU t4, zero, t4
  SLTU t1, zero, a6
  SB t1, 266(sp)
  XORI a6, t4, 1
  LB t1, 264(sp)
  AND s6, t1, s5
  SLTU a6, zero, a6
  SLTU a7, zero, a7
  SLTU s4, zero, a6
  LB t1, 266(sp)
  LB a6, 257(sp)
  AND a6, a6, t1
  SLTU s6, zero, s6
  AND a7, a7, s4
  SLTU t1, zero, a6
  SB t1, 255(sp)
  XORI s7, s6, 1
  LB t1, 255(sp)
  SLTU t1, zero, t1
  SB t1, 253(sp)
  SLTU t1, zero, a7
  SB t1, 254(sp)
  SLTU s8, zero, t3
  SLTU s7, zero, s7
  LB t1, 264(sp)
  OR s5, t1, s5
  LB t1, 253(sp)
  LB a6, 254(sp)
  AND t3, a6, t1
  LB t1, 269(sp)
  AND s10, t1, s8
  SLTU s7, zero, s7
  SLTU s5, zero, s5
  SLTU t1, zero, t3
  SB t1, 250(sp)
  SLTU s10, zero, s10
  AND s5, s5, s7
  LB t1, 250(sp)
  OR t4, t4, t1
  XORI s11, s10, 1
  SLTU t1, zero, t4
  SB t1, 247(sp)
  SLTU t1, zero, s5
  SB t1, 249(sp)
  SLTU t1, zero, s2
  SB t1, 138(sp)
  SLTU s11, zero, s11
  LB t1, 269(sp)
  OR s5, t1, s8
  LB t1, 247(sp)
  LB a6, 249(sp)
  AND s2, a6, t1
  LB t1, 138(sp)
  LB a6, 73(sp)
  AND t1, a6, t1
  SW t1, 1572(sp)
  SLTU s8, zero, s11
  SLTU s5, zero, s5
  SLTU t1, zero, s2
  SB t1, 246(sp)
  LW t1, 1572(sp)
  SLTU s11, zero, t1
  AND s8, s5, s8
  LB t1, 246(sp)
  OR s5, s6, t1
  XORI t1, s11, 1
  SW t1, 1568(sp)
  SLTU t1, zero, s5
  SB t1, 294(sp)
  SLTU t1, zero, s8
  SB t1, 299(sp)
  SLTU t1, zero, s0
  SB t1, 143(sp)
  LW t1, 1568(sp)
  SLTU t1, zero, t1
  SW t1, 1564(sp)
  LB t1, 138(sp)
  LB a6, 73(sp)
  OR s8, a6, t1
  LB t1, 294(sp)
  LB a6, 299(sp)
  AND s0, a6, t1
  LB t1, 143(sp)
  LB a6, 115(sp)
  AND t1, a6, t1
  SW t1, 1588(sp)
  LW t1, 1564(sp)
  SLTU t1, zero, t1
  SB t1, 141(sp)
  SLTU s8, zero, s8
  SLTU t1, zero, s0
  SB t1, 293(sp)
  LW t1, 1588(sp)
  SLTU t1, zero, t1
  SB t1, 145(sp)
  LB t1, 141(sp)
  AND t1, s8, t1
  SW t1, 1560(sp)
  LB t1, 293(sp)
  OR s8, s10, t1
  LB t1, 145(sp)
  XORI t1, t1, 1
  SW t1, 1684(sp)
  SLTU t1, zero, s8
  SB t1, 285(sp)
  LW t1, 1560(sp)
  SLTU t1, zero, t1
  SB t1, 291(sp)
  SLTU t1, zero, t5
  SB t1, 150(sp)
  LW t1, 1684(sp)
  SLTU t1, zero, t1
  SW t1, 1680(sp)
  LB t1, 143(sp)
  LB a6, 115(sp)
  OR t1, a6, t1
  SW t1, 1556(sp)
  LB t1, 285(sp)
  LB a6, 291(sp)
  AND t5, a6, t1
  LB t1, 150(sp)
  LB a6, 97(sp)
  AND t1, a6, t1
  SW t1, 1664(sp)
  LW t1, 1680(sp)
  SLTU t1, zero, t1
  SB t1, 148(sp)
  LW t1, 1556(sp)
  SLTU t1, zero, t1
  SB t1, 147(sp)
  SLTU t1, zero, t5
  SB t1, 283(sp)
  LW t1, 1664(sp)
  SLTU t1, zero, t1
  SB t1, 153(sp)
  LB t1, 148(sp)
  LB a6, 147(sp)
  AND t1, a6, t1
  SW t1, 1676(sp)
  LB t1, 283(sp)
  OR s11, s11, t1
  LB t1, 153(sp)
  XORI t1, t1, 1
  SW t1, 1660(sp)
  SLTU t1, zero, s11
  SB t1, 279(sp)
  LW t1, 1676(sp)
  SLTU t1, zero, t1
  SB t1, 282(sp)
  SLTU t1, zero, a2
  SB t1, 221(sp)
  LW t1, 1660(sp)
  SLTU t1, zero, t1
  SW t1, 1620(sp)
  LB t1, 150(sp)
  LB a2, 97(sp)
  OR t1, a2, t1
  SW t1, 1668(sp)
  LB t1, 279(sp)
  LB a2, 282(sp)
  AND a2, a2, t1
  LB t1, 221(sp)
  LB a6, 20(sp)
  AND t1, a6, t1
  SW t1, 1640(sp)
  LW t1, 1620(sp)
  SLTU t1, zero, t1
  SB t1, 216(sp)
  LW t1, 1668(sp)
  SLTU t1, zero, t1
  SB t1, 169(sp)
  SLTU t1, zero, a2
  SB t1, 277(sp)
  LW t1, 1640(sp)
  SLTU t1, zero, t1
  SB t1, 222(sp)
  LB t1, 216(sp)
  LB a2, 169(sp)
  AND t1, a2, t1
  SW t1, 1652(sp)
  LB t1, 277(sp)
  LB a2, 145(sp)
  OR t1, a2, t1
  SW t1, 1672(sp)
  LB t1, 222(sp)
  XORI t1, t1, 1
  SW t1, 1636(sp)
  LW t1, 1672(sp)
  SLTU t1, zero, t1
  SB t1, 275(sp)
  LW t1, 1652(sp)
  SLTU t1, zero, t1
  SB t1, 276(sp)
  SLTU t1, zero, s3
  SB t1, 229(sp)
  LW t1, 1636(sp)
  SLTU t1, zero, t1
  SW t1, 1632(sp)
  LB t1, 221(sp)
  LB a2, 20(sp)
  OR t1, a2, t1
  SW t1, 1644(sp)
  LB t1, 275(sp)
  LB a2, 276(sp)
  AND s3, a2, t1
  LB t1, 343(sp)
  LB a2, 229(sp)
  AND t1, t1, a2
  SW t1, 1928(sp)
  LW t1, 1632(sp)
  SLTU t1, zero, t1
  SB t1, 225(sp)
  LW t1, 1644(sp)
  SLTU t1, zero, t1
  SB t1, 224(sp)
  SLTU s3, zero, s3
  LW t1, 1928(sp)
  SLTU t1, zero, t1
  SB t1, 231(sp)
  LB t1, 225(sp)
  LB a2, 224(sp)
  AND t1, a2, t1
  SW t1, 1628(sp)
  LB t1, 153(sp)
  OR t1, t1, s3
  SW t1, 1648(sp)
  LB t1, 231(sp)
  XORI t1, t1, 1
  SW t1, 2020(sp)
  LW t1, 1648(sp)
  SLTU t1, zero, t1
  SB t1, 227(sp)
  LW t1, 1628(sp)
  SLTU t1, zero, t1
  SB t1, 226(sp)
  SLTU t1, zero, a3
  SB t1, 238(sp)
  LW t1, 2020(sp)
  SLTU t1, zero, t1
  SW t1, 2016(sp)
  LB t1, 343(sp)
  LB a2, 229(sp)
  OR t1, t1, a2
  SW t1, 2024(sp)
  LB t1, 227(sp)
  LB a2, 226(sp)
  AND a3, a2, t1
  LB t1, 346(sp)
  LB a2, 238(sp)
  AND t1, t1, a2
  SW t1, 2000(sp)
  LW t1, 2016(sp)
  SLTU t1, zero, t1
  SB t1, 235(sp)
  LW t1, 2024(sp)
  SLTU t1, zero, t1
  SB t1, 234(sp)
  SLTU a3, zero, a3
  LW t1, 2000(sp)
  SLTU t1, zero, t1
  SB t1, 240(sp)
  LB t1, 235(sp)
  LB a2, 234(sp)
  AND t1, a2, t1
  SW t1, 2012(sp)
  LB t1, 222(sp)
  OR t1, t1, a3
  SW t1, 1624(sp)
  LB t1, 240(sp)
  XORI t1, t1, 1
  SW t1, 1960(sp)
  LW t1, 1624(sp)
  SLTU t1, zero, t1
  SB t1, 420(sp)
  LW t1, 2012(sp)
  SLTU t1, zero, t1
  SB t1, 274(sp)
  SLTU t1, zero, a5
  SB t1, 186(sp)
  LW t1, 1960(sp)
  SLTU t1, zero, t1
  SW t1, 1992(sp)
  LB t1, 346(sp)
  LB a2, 238(sp)
  OR t1, t1, a2
  SW t1, 2004(sp)
  LB t1, 420(sp)
  LB a2, 274(sp)
  AND a5, a2, t1
  LB t1, 351(sp)
  LB a2, 186(sp)
  AND t1, t1, a2
  SW t1, 1976(sp)
  LW t1, 1992(sp)
  SLTU t1, zero, t1
  SB t1, 243(sp)
  LW t1, 2004(sp)
  SLTU t1, zero, t1
  SB t1, 242(sp)
  SLTU a5, zero, a5
  LW t1, 1976(sp)
  SLTU t1, zero, t1
  SB t1, 188(sp)
  LB t1, 243(sp)
  LB a2, 242(sp)
  AND t1, a2, t1
  SW t1, 1988(sp)
  LB t1, 231(sp)
  OR t1, t1, a5
  SW t1, 2008(sp)
  LB t1, 188(sp)
  XORI t1, t1, 1
  SW t1, 1972(sp)
  LW t1, 2008(sp)
  SLTU t1, zero, t1
  SB t1, 185(sp)
  LW t1, 1988(sp)
  SLTU t1, zero, t1
  SB t1, 200(sp)
  SLTU t1, zero, a4
  SB t1, 194(sp)
  LW t1, 1972(sp)
  SLTU t1, zero, t1
  SW t1, 1968(sp)
  LB t1, 351(sp)
  LB a2, 186(sp)
  OR t1, t1, a2
  SW t1, 1980(sp)
  LB t1, 185(sp)
  LB a2, 200(sp)
  AND a4, a2, t1
  LB t1, 314(sp)
  LB a2, 194(sp)
  AND t1, t1, a2
  LUI t6, 1
  ADDIW t6, t6, -2012
  ADD t6, t6, sp
  SW t1, 0(t6)
  LW t1, 1968(sp)
  SLTU t1, zero, t1
  SB t1, 191(sp)
  LW t1, 1980(sp)
  SLTU t1, zero, t1
  SB t1, 190(sp)
  SLTU a4, zero, a4
  LUI t1, 1
  ADDIW t1, t1, -2012
  ADD t1, t1, sp
  LW t1, 0(t1)
  SLTU t1, zero, t1
  SB t1, 196(sp)
  LB t1, 191(sp)
  LB a2, 190(sp)
  AND t1, a2, t1
  SW t1, 1964(sp)
  LB t1, 240(sp)
  OR t1, t1, a4
  SW t1, 1984(sp)
  LB t1, 196(sp)
  XORI t1, t1, 1
  LUI t6, 1
  ADDIW t6, t6, -2016
  ADD t6, t6, sp
  SW t1, 0(t6)
  LW t1, 1984(sp)
  SLTU t1, zero, t1
  SB t1, 193(sp)
  LW t1, 1964(sp)
  SLTU t1, zero, t1
  SB t1, 192(sp)
  SLTU t1, zero, a0
  SB t1, 204(sp)
  LUI t1, 1
  ADDIW t1, t1, -2016
  ADD t1, t1, sp
  LW t1, 0(t1)
  SLTU t1, zero, t1
  LUI a0, 1
  ADDIW a0, a0, -2020
  ADD a0, a0, sp
  SW t1, 0(a0)
  LB t1, 314(sp)
  LB a0, 194(sp)
  OR t1, t1, a0
  SW t1, 2028(sp)
  LB t1, 193(sp)
  LB a0, 192(sp)
  AND a0, a0, t1
  LB t1, 304(sp)
  LB a2, 204(sp)
  AND t1, t1, a2
  LUI t6, 1
  ADDIW t6, t6, -2032
  ADD t6, t6, sp
  SW t1, 0(t6)
  LUI t1, 1
  ADDIW t1, t1, -2020
  ADD t1, t1, sp
  LW t1, 0(t1)
  SLTU t1, zero, t1
  SB t1, 184(sp)
  LW t1, 2028(sp)
  SLTU t1, zero, t1
  SB t1, 199(sp)
  SLTU a0, zero, a0
  LUI t1, 1
  ADDIW t1, t1, -2032
  ADD t1, t1, sp
  LW t1, 0(t1)
  SLTU t1, zero, t1
  SB t1, 206(sp)
  LB t1, 184(sp)
  LB a2, 199(sp)
  AND t1, a2, t1
  SW t1, 780(sp)
  LB t1, 188(sp)
  OR t1, t1, a0
  LUI t6, 1
  ADDIW t6, t6, -2008
  ADD t6, t6, sp
  SW t1, 0(t6)
  LB t1, 206(sp)
  XORI t1, t1, 1
  LUI t6, 1
  ADDIW t6, t6, -2036
  ADD t6, t6, sp
  SW t1, 0(t6)
  LUI t1, 1
  ADDIW t1, t1, -2008
  ADD t1, t1, sp
  LW t1, 0(t1)
  SLTU t1, zero, t1
  SB t1, 203(sp)
  LW t1, 780(sp)
  SLTU t1, zero, t1
  SB t1, 202(sp)
  SLTU t1, zero, t2
  SB t1, 214(sp)
  LUI t1, 1
  ADDIW t1, t1, -2036
  ADD t1, t1, sp
  LW t1, 0(t1)
  SLTU t1, zero, t1
  LUI t2, 1
  ADDIW t2, t2, -2040
  ADD t2, t2, sp
  SW t1, 0(t2)
  LB t1, 304(sp)
  LB t2, 204(sp)
  OR t1, t1, t2
  LUI t2, 1
  ADDIW t2, t2, -2028
  ADD t2, t2, sp
  SW t1, 0(t2)
  LB t1, 203(sp)
  LB t2, 202(sp)
  AND t2, t2, t1
  LB t1, 307(sp)
  LB a2, 214(sp)
  AND t1, t1, a2
  SW t1, 2040(sp)
  LUI t1, 1
  ADDIW t1, t1, -2040
  ADD t1, t1, sp
  LW t1, 0(t1)
  SLTU t1, zero, t1
  SB t1, 209(sp)
  LUI t1, 1
  ADDIW t1, t1, -2028
  ADD t1, t1, sp
  LW t1, 0(t1)
  SLTU t1, zero, t1
  SB t1, 208(sp)
  SLTU t2, zero, t2
  LW t1, 2040(sp)
  SLTU t1, zero, t1
  SB t1, 33(sp)
  LB t1, 209(sp)
  LB a2, 208(sp)
  AND t1, a2, t1
  LUI t6, 1
  ADDIW t6, t6, -2044
  ADD t6, t6, sp
  SW t1, 0(t6)
  LB t1, 196(sp)
  OR t1, t1, t2
  LUI t6, 1
  ADDIW t6, t6, -2024
  ADD t6, t6, sp
  SW t1, 0(t6)
  LB t1, 33(sp)
  XORI t1, t1, 1
  SW t1, 2036(sp)
  LUI t1, 1
  ADDIW t1, t1, -2024
  ADD t1, t1, sp
  LW t1, 0(t1)
  SLTU t1, zero, t1
  SB t1, 211(sp)
  LUI t1, 1
  ADDIW t1, t1, -2044
  ADD t1, t1, sp
  LW t1, 0(t1)
  SLTU t1, zero, t1
  SB t1, 210(sp)
  SLTU t1, zero, a1
  SB t1, 41(sp)
  LW t1, 2036(sp)
  SLTU t1, zero, t1
  SW t1, 1996(sp)
  LB t1, 307(sp)
  LB a1, 214(sp)
  OR t1, t1, a1
  SW t1, 2044(sp)
  LB t1, 211(sp)
  LB a1, 210(sp)
  AND a1, a1, t1
  LB t1, 310(sp)
  LB a2, 41(sp)
  AND t1, t1, a2
  SW t1, 1872(sp)
  LW t1, 1996(sp)
  SLTU t1, zero, t1
  SB t1, 36(sp)
  LW t1, 2044(sp)
  SLTU t1, zero, t1
  SB t1, 35(sp)
  SLTU a1, zero, a1
  LW t1, 1872(sp)
  SLTU t1, zero, t1
  SB t1, 44(sp)
  LB t1, 36(sp)
  LB a2, 35(sp)
  AND t1, a2, t1
  SW t1, 2032(sp)
  LB t1, 206(sp)
  OR t1, t1, a1
  LUI t6, 1
  ADDIW t6, t6, -2048
  ADD t6, t6, sp
  SW t1, 0(t6)
  LB t1, 44(sp)
  XORI t1, t1, 1
  SW t1, 1868(sp)
  LUI t1, 1
  ADDIW t1, t1, -2048
  ADD t1, t1, sp
  LW t1, 0(t1)
  SLTU t1, zero, t1
  SB t1, 417(sp)
  LW t1, 2032(sp)
  SLTU t1, zero, t1
  SB t1, 37(sp)
  LW t1, 1868(sp)
  SLTU t1, zero, t1
  SW t1, 1864(sp)
  SLTU t0, zero, t0
  SB t0, 57(sp)
  LB t0, 310(sp)
  LB t1, 41(sp)
  OR t0, t0, t1
  SW t0, 1876(sp)
  LB t0, 417(sp)
  LB t1, 37(sp)
  AND t0, t1, t0
  LB t1, 312(sp)
  LB a2, 57(sp)
  AND t1, t1, a2
  SW t1, 1828(sp)
  LW t1, 1864(sp)
  SLTU t1, zero, t1
  SB t1, 31(sp)
  LW t1, 1876(sp)
  SLTU t1, zero, t1
  SB t1, 46(sp)
  SLTU t0, zero, t0
  LW t1, 1828(sp)
  SLTU t1, zero, t1
  SB t1, 59(sp)
  LB t1, 31(sp)
  LB a2, 46(sp)
  AND t1, a2, t1
  SW t1, 1824(sp)
  LB t1, 33(sp)
  OR t1, t1, t0
  SW t1, 1880(sp)
  LB t1, 59(sp)
  XORI t1, t1, 1
  SW t1, 1860(sp)
  LW t1, 1880(sp)
  SLTU t1, zero, t1
  SB t1, 50(sp)
  LW t1, 1824(sp)
  SLTU t1, zero, t1
  SB t1, 49(sp)
  LW t1, 1860(sp)
  SLTU t1, zero, t1
  SW t1, 1956(sp)
  LB t1, 312(sp)
  LB a2, 57(sp)
  OR t1, t1, a2
  SW t1, 1832(sp)
  LB t1, 50(sp)
  LB a2, 49(sp)
  AND t1, a2, t1
  SW t1, 1852(sp)
  LW t1, 1956(sp)
  SLTU t1, zero, t1
  SB t1, 16(sp)
  LW t1, 1832(sp)
  SLTU t1, zero, t1
  SB t1, 61(sp)
  LW t1, 1852(sp)
  SLTU t1, zero, t1
  SB t1, 51(sp)
  LB t1, 16(sp)
  LB a2, 61(sp)
  AND t1, a2, t1
  SW t1, 1952(sp)
  LB t1, 51(sp)
  LB a2, 44(sp)
  OR t1, a2, t1
  SW t1, 1836(sp)
  LW t1, 1952(sp)
  SLTU t1, zero, t1
  SB t1, 1(sp)
  LW t1, 1836(sp)
  SLTU t1, zero, t1
  SB t1, 2(sp)
  LB t1, 51(sp)
  XORI t1, t1, 1
  SW t1, 1848(sp)
  LB t1, 2(sp)
  LB a2, 1(sp)
  AND t1, a2, t1
  SW t1, 1944(sp)
  LB t1, 2(sp)
  LB a2, 1(sp)
  OR t1, a2, t1
  SW t1, 1948(sp)
  LW t1, 1944(sp)
  SLTU t1, zero, t1
  SB t1, 4(sp)
  LW t1, 1948(sp)
  SLTU t1, zero, t1
  SB t1, 7(sp)
  LB t1, 4(sp)
  XORI t1, t1, 1
  SW t1, 1940(sp)
  LW t1, 1848(sp)
  SLTU t1, zero, t1
  SW t1, 1844(sp)
  LW t1, 1940(sp)
  SLTU t1, zero, t1
  SW t1, 1936(sp)
  LB t1, 50(sp)
  LB a2, 49(sp)
  OR t1, a2, t1
  SW t1, 1856(sp)
  LW t1, 1936(sp)
  SLTU t1, zero, t1
  SB t1, 8(sp)
  LW t1, 1844(sp)
  SLTU t1, zero, t1
  SB t1, 54(sp)
  LB t1, 8(sp)
  LB a2, 7(sp)
  AND t1, a2, t1
  SW t1, 1932(sp)
  LW t1, 1856(sp)
  SLTU t1, zero, t1
  SB t1, 53(sp)
  XORI t0, t0, 1
  LW t1, 1932(sp)
  SLLIW t1, t1, 1
  SW t1, 1892(sp)
  LB t1, 54(sp)
  LB a2, 53(sp)
  AND t1, a2, t1
  SW t1, 1840(sp)
  SLTU t0, zero, t0
  SW t0, 1888(sp)
  LB t0, 417(sp)
  LB t1, 37(sp)
  OR t0, t1, t0
  LW t1, 1892(sp)
  LW a2, 1840(sp)
  ADDW t1, t1, a2
  SW t1, 1924(sp)
  LW t1, 1888(sp)
  SLTU t1, zero, t1
  SB t1, 39(sp)
  SLTU t0, zero, t0
  SB t0, 435(sp)
  XORI t0, a1, 1
  LW t1, 1924(sp)
  SLLIW t1, t1, 1
  SW t1, 1920(sp)
  LB t1, 39(sp)
  LB a1, 435(sp)
  AND t1, a1, t1
  SW t1, 1884(sp)
  SLTU a1, zero, t0
  LB t0, 211(sp)
  LB t1, 210(sp)
  OR t0, t1, t0
  LW t1, 1920(sp)
  LW a2, 1884(sp)
  ADDW t1, t1, a2
  SW t1, 1916(sp)
  SLTU t1, zero, a1
  SB t1, 212(sp)
  SLTU a1, zero, t0
  XORI t0, t2, 1
  LW t1, 1916(sp)
  SLLIW t1, t1, 1
  SW t1, 1912(sp)
  LB t1, 212(sp)
  AND a1, a1, t1
  SLTU t2, zero, t0
  LB t0, 203(sp)
  LB t1, 202(sp)
  OR t0, t1, t0
  LW t1, 1912(sp)
  ADDW t1, t1, a1
  SW t1, 1908(sp)
  SLTU a1, zero, t2
  SLTU t2, zero, t0
  XORI t0, a0, 1
  LW t1, 1908(sp)
  SLLIW t1, t1, 1
  SW t1, 1904(sp)
  AND a0, t2, a1
  SLTU t2, zero, t0
  LB t0, 193(sp)
  LB t1, 192(sp)
  OR t0, t1, t0
  LW t1, 1904(sp)
  ADDW a1, t1, a0
  SLTU a0, zero, t2
  SLTU t2, zero, t0
  XORI t0, a4, 1
  SLLIW a1, a1, 1
  AND a0, t2, a0
  SLTU t2, zero, t0
  LB t0, 185(sp)
  LB t1, 200(sp)
  OR t0, t1, t0
  ADDW a1, a1, a0
  SLTU a0, zero, t2
  SLTU t2, zero, t0
  XORI t0, a5, 1
  SLLIW a1, a1, 1
  AND a0, t2, a0
  SLTU t2, zero, t0
  LB t0, 420(sp)
  LB t1, 274(sp)
  OR t0, t1, t0
  ADDW a1, a1, a0
  SLTU a0, zero, t2
  SLTU t2, zero, t0
  XORI t0, a3, 1
  SLLIW a1, a1, 1
  AND a0, t2, a0
  SLTU t2, zero, t0
  LB t0, 227(sp)
  LB t1, 226(sp)
  OR t0, t1, t0
  ADDW a1, a1, a0
  SLTU a0, zero, t2
  SLTU t2, zero, t0
  XORI t0, s3, 1
  SLLIW a1, a1, 1
  AND a0, t2, a0
  SLTU t2, zero, t0
  LB t0, 275(sp)
  LB t1, 276(sp)
  OR t0, t1, t0
  ADDW a1, a1, a0
  SLTU a0, zero, t2
  SLTU t2, zero, t0
  LB t0, 277(sp)
  XORI t0, t0, 1
  SLLIW a1, a1, 1
  AND a0, t2, a0
  SLTU t2, zero, t0
  LB t0, 279(sp)
  LB t1, 282(sp)
  OR t0, t1, t0
  ADDW a1, a1, a0
  SLTU a0, zero, t2
  SLTU t2, zero, t0
  LB t0, 283(sp)
  XORI t0, t0, 1
  SLLIW a1, a1, 1
  AND a0, t2, a0
  SLTU t2, zero, t0
  LB t0, 285(sp)
  LB t1, 291(sp)
  OR t0, t1, t0
  ADDW a1, a1, a0
  SLTU a0, zero, t2
  SLTU t2, zero, t0
  LB t0, 293(sp)
  XORI t0, t0, 1
  SLLIW a1, a1, 1
  AND a0, t2, a0
  SLTU t2, zero, t0
  LB t0, 294(sp)
  LB t1, 299(sp)
  OR t0, t1, t0
  ADDW a1, a1, a0
  SLTU a0, zero, t2
  SLTU t2, zero, t0
  LB t0, 246(sp)
  XORI t0, t0, 1
  SLLIW a1, a1, 1
  AND a0, t2, a0
  SLTU t2, zero, t0
  LB t0, 247(sp)
  LB t1, 249(sp)
  OR t0, t1, t0
  ADDW a2, a1, a0
  SLTU a1, zero, t2
  SLTU a0, zero, t0
  LB t0, 250(sp)
  XORI t2, t0, 1
  LB t0, 255(sp)
  XORI t0, t0, 1
  SLLIW a3, a2, 1
  AND a2, a0, a1
  SLTU a1, zero, t2
  LB t1, 253(sp)
  LB t2, 254(sp)
  OR a0, t2, t1
  SLTU t2, zero, t0
  LB t0, 266(sp)
  LB t1, 257(sp)
  OR t0, t1, t0
  ADDW a2, a3, a2
  SLTU a1, zero, a1
  SLTU a0, zero, a0
  SLTU t1, zero, t2
  SLTU t0, zero, t0
  SLLIW a2, a2, 1
  AND t2, a0, a1
  AND t0, t0, t1
  SLLI a0, s1, 1
  ADDW t1, a2, t2
  SLTU t0, zero, t0
  SRLI t2, a0, 63
  SLLIW t1, t1, 1
  SLTU t0, zero, t0
  ADD t2, s1, t2
  ADDW a0, t1, t0
  ANDI t1, t2, -2
  SUBW s0, s1, t1
  CALL fib
  SUB a5, zero, s0
  BLT s0, zero, bb202
  # implict jump to bb107
bb107:   # loop depth 0
  ADD a5, s0, zero
  # implict jump to bb108
bb108:   # loop depth 0
  SRAIW t2, s1, 31
  SRLIW t1, t2, 31
  ADD t1, s1, t1
  SRAIW a1, t1, 1
  SLLI t1, a1, 1
  SRLI t1, t1, 63
  ADD t1, a1, t1
  ANDI t1, t1, -2
  SUBW a6, a1, t1
  SUB t2, zero, a6
  BLT a6, zero, bb201
  # implict jump to bb109
bb109:   # loop depth 0
  # implict jump to bb110
bb110:   # loop depth 0
  SRAIW t2, a1, 31
  SRLIW t1, t2, 31
  ADD t1, a1, t1
  SRAIW a1, t1, 1
  SLLI t1, a1, 1
  SRLI t1, t1, 63
  ADD t1, a1, t1
  ANDI t1, t1, -2
  SUBW t2, a1, t1
  SUB t3, zero, t2
  BLT t2, zero, bb200
  # implict jump to bb111
bb111:   # loop depth 0
  ADD t3, t2, zero
  # implict jump to bb112
bb112:   # loop depth 0
  SRAIW t2, a1, 31
  SRLIW t1, t2, 31
  ADD t1, a1, t1
  SRAIW a1, t1, 1
  SLLI t1, a1, 1
  SRLI t1, t1, 63
  ADD t1, a1, t1
  ANDI t1, t1, -2
  SUBW t2, a1, t1
  SUB a7, zero, t2
  BLT t2, zero, bb199
  # implict jump to bb113
bb113:   # loop depth 0
  ADD a7, t2, zero
  # implict jump to bb114
bb114:   # loop depth 0
  SRAIW t2, a1, 31
  SRLIW t1, t2, 31
  ADD t1, a1, t1
  SRAIW a1, t1, 1
  SLLI t1, a1, 1
  SRLI t1, t1, 63
  ADD t1, a1, t1
  ANDI t1, t1, -2
  SUBW t2, a1, t1
  SUB t4, zero, t2
  BLT t2, zero, bb198
  # implict jump to bb115
bb115:   # loop depth 0
  ADD t4, t2, zero
  # implict jump to bb116
bb116:   # loop depth 0
  SRAIW t2, a1, 31
  SRLIW t1, t2, 31
  ADD t1, a1, t1
  SRAIW a1, t1, 1
  SLLI t1, a1, 1
  SRLI t1, t1, 63
  ADD t1, a1, t1
  ANDI t1, t1, -2
  SUBW t2, a1, t1
  SUB s0, zero, t2
  BLT t2, zero, bb197
  # implict jump to bb117
bb117:   # loop depth 0
  ADD s0, t2, zero
  # implict jump to bb118
bb118:   # loop depth 0
  SRAIW t2, a1, 31
  SRLIW t1, t2, 31
  ADD t1, a1, t1
  SRAIW a1, t1, 1
  SLLI t1, a1, 1
  SRLI t1, t1, 63
  ADD t1, a1, t1
  ANDI t1, t1, -2
  SUBW t5, a1, t1
  SUB t2, zero, t5
  BLT t5, zero, bb196
  # implict jump to bb119
bb119:   # loop depth 0
  # implict jump to bb120
bb120:   # loop depth 0
  SRAIW t2, a1, 31
  SRLIW t1, t2, 31
  ADD t1, a1, t1
  SRAIW a1, t1, 1
  SLLI t1, a1, 1
  SRLI t1, t1, 63
  ADD t1, a1, t1
  ANDI t1, t1, -2
  SUBW t2, a1, t1
  SUB s2, zero, t2
  BLT t2, zero, bb195
  # implict jump to bb121
bb121:   # loop depth 0
  ADD s2, t2, zero
  # implict jump to bb122
bb122:   # loop depth 0
  SRAIW t2, a1, 31
  SRLIW t1, t2, 31
  ADD t1, a1, t1
  SRAIW a1, t1, 1
  SLLI t1, a1, 1
  SRLI t1, t1, 63
  ADD t1, a1, t1
  ANDI t1, t1, -2
  SUBW t2, a1, t1
  SUB s1, zero, t2
  BLT t2, zero, bb194
  # implict jump to bb123
bb123:   # loop depth 0
  ADD s1, t2, zero
  # implict jump to bb124
bb124:   # loop depth 0
  SRAIW t2, a1, 31
  SRLIW t1, t2, 31
  ADD t1, a1, t1
  SRAIW a1, t1, 1
  SLLI t1, a1, 1
  SRLI t1, t1, 63
  ADD t1, a1, t1
  ANDI t1, t1, -2
  SUBW s3, a1, t1
  SUB t2, zero, s3
  BLT s3, zero, bb193
  # implict jump to bb125
bb125:   # loop depth 0
  # implict jump to bb126
bb126:   # loop depth 0
  SRAIW t2, a1, 31
  SRLIW t1, t2, 31
  ADD t1, a1, t1
  SRAIW a1, t1, 1
  SLLI t1, a1, 1
  SRLI t1, t1, 63
  ADD t1, a1, t1
  ANDI t1, t1, -2
  SUBW t2, a1, t1
  SUB s4, zero, t2
  BLT t2, zero, bb192
  # implict jump to bb127
bb127:   # loop depth 0
  ADD s4, t2, zero
  # implict jump to bb128
bb128:   # loop depth 0
  SRAIW t2, a1, 31
  SRLIW t1, t2, 31
  ADD t1, a1, t1
  SRAIW a1, t1, 1
  SLLI t1, a1, 1
  SRLI t1, t1, 63
  ADD t1, a1, t1
  ANDI t1, t1, -2
  SUBW t2, a1, t1
  SUB t1, zero, t2
  BLT t2, zero, bb191
  # implict jump to bb129
bb129:   # loop depth 0
  ADD t1, t2, zero
  # implict jump to bb130
bb130:   # loop depth 0
  SRAIW t2, a1, 31
  SW t1, 1388(sp)
  SRLIW t2, t2, 31
  ADD t2, a1, t2
  SRAIW a2, t2, 1
  SLLI t2, a2, 1
  SRLI t2, t2, 63
  ADD t2, a2, t2
  ANDI t2, t2, -2
  SUBW a1, a2, t2
  SUB t2, zero, a1
  BLT a1, zero, bb190
  # implict jump to bb131
bb131:   # loop depth 0
  ADD t2, a1, zero
  # implict jump to bb132
bb132:   # loop depth 0
  SRAIW a1, a2, 31
  SW t2, 1348(sp)
  SRLIW a1, a1, 31
  ADD a1, a2, a1
  SRAIW a3, a1, 1
  SLLI a1, a3, 1
  SRLI a1, a1, 63
  ADD a1, a3, a1
  ANDI a1, a1, -2
  SUBW a2, a3, a1
  SUB a1, zero, a2
  BLT a2, zero, bb189
  # implict jump to bb133
bb133:   # loop depth 0
  ADD a1, a2, zero
  # implict jump to bb134
bb134:   # loop depth 0
  SRAIW a2, a3, 31
  SW a1, 1380(sp)
  SRLIW a2, a2, 31
  ADD a2, a3, a2
  SRAIW a4, a2, 1
  SLLI a2, a4, 1
  SRLI a2, a2, 63
  ADD a2, a4, a2
  ANDI a2, a2, -2
  SUBW a2, a4, a2
  SUB a3, zero, a2
  BLT a2, zero, bb188
  # implict jump to bb135
bb135:   # loop depth 0
  # implict jump to bb136
bb136:   # loop depth 0
  SRAIW a3, a4, 31
  SW a2, 1376(sp)
  SRLIW a3, a3, 31
  ADD a3, a4, a3
  SRAIW a3, a3, 1
  SLLI a4, a3, 1
  SRLI a4, a4, 63
  ADD a4, a3, a4
  ANDI a4, a4, -2
  SUBW a4, a3, a4
  SUB a3, zero, a4
  BLT a4, zero, bb187
  # implict jump to bb137
bb137:   # loop depth 0
  ADD a3, a4, zero
  # implict jump to bb138
bb138:   # loop depth 0
  SLLI a4, a0, 1
  SW a3, 1372(sp)
  SRLI a4, a4, 63
  ADD a4, a0, a4
  ANDI a4, a4, -2
  SUBW s5, a0, a4
  SUB s6, zero, s5
  BLT s5, zero, bb186
  # implict jump to bb139
bb139:   # loop depth 0
  ADD s6, s5, zero
  # implict jump to bb140
bb140:   # loop depth 0
  SRAIW s5, a0, 31
  SRLIW a4, s5, 31
  ADD t0, a0, a4
  SRAIW a4, t0, 1
  SLLI t0, a4, 1
  SRLI t0, t0, 63
  ADD t0, a4, t0
  ANDI t0, t0, -2
  SUBW s5, a4, t0
  SUB a0, zero, s5
  BLT s5, zero, bb185
  # implict jump to bb141
bb141:   # loop depth 0
  # implict jump to bb142
bb142:   # loop depth 0
  SRAIW a0, a4, 31
  SRLIW t0, a0, 31
  ADD t0, a4, t0
  SRAIW a4, t0, 1
  SLLI t0, a4, 1
  SRLI t0, t0, 63
  ADD t0, a4, t0
  ANDI t0, t0, -2
  SUBW a0, a4, t0
  SUB s8, zero, a0
  BLT a0, zero, bb184
  # implict jump to bb143
bb143:   # loop depth 0
  ADD s8, a0, zero
  # implict jump to bb144
bb144:   # loop depth 0
  SRAIW a0, a4, 31
  SRLIW t0, a0, 31
  ADD t0, a4, t0
  SRAIW a4, t0, 1
  SLLI t0, a4, 1
  SRLI t0, t0, 63
  ADD t0, a4, t0
  ANDI t0, t0, -2
  SUBW a0, a4, t0
  SUB s7, zero, a0
  BLT a0, zero, bb183
  # implict jump to bb145
bb145:   # loop depth 0
  ADD s7, a0, zero
  # implict jump to bb146
bb146:   # loop depth 0
  SRAIW a0, a4, 31
  SRLIW t0, a0, 31
  ADD t0, a4, t0
  SRAIW a4, t0, 1
  SLLI t0, a4, 1
  SRLI t0, t0, 63
  ADD t0, a4, t0
  ANDI t0, t0, -2
  SUBW a0, a4, t0
  SUB s9, zero, a0
  BLT a0, zero, bb182
  # implict jump to bb147
bb147:   # loop depth 0
  ADD s9, a0, zero
  # implict jump to bb148
bb148:   # loop depth 0
  SRAIW a0, a4, 31
  SRLIW t0, a0, 31
  ADD t0, a4, t0
  SRAIW a4, t0, 1
  SLLI t0, a4, 1
  SRLI t0, t0, 63
  ADD t0, a4, t0
  ANDI t0, t0, -2
  SUBW a0, a4, t0
  SUB s11, zero, a0
  BLT a0, zero, bb181
  # implict jump to bb149
bb149:   # loop depth 0
  ADD s11, a0, zero
  # implict jump to bb150
bb150:   # loop depth 0
  SRAIW a0, a4, 31
  SRLIW t0, a0, 31
  ADD t0, a4, t0
  SRAIW a4, t0, 1
  SLLI t0, a4, 1
  SRLI t0, t0, 63
  ADD t0, a4, t0
  ANDI t0, t0, -2
  SUBW s10, a4, t0
  SUB a0, zero, s10
  BLT s10, zero, bb180
  # implict jump to bb151
bb151:   # loop depth 0
  # implict jump to bb152
bb152:   # loop depth 0
  SRAIW a0, a4, 31
  SRLIW t0, a0, 31
  ADD t0, a4, t0
  SRAIW a4, t0, 1
  SLLI t0, a4, 1
  SRLI t0, t0, 63
  ADD t0, a4, t0
  ANDI t0, t0, -2
  SUBW t0, a4, t0
  SUB t1, zero, t0
  SW t1, 1900(sp)
  BLT t0, zero, bb179
  # implict jump to bb153
bb153:   # loop depth 0
  SW t0, 1900(sp)
  # implict jump to bb154
bb154:   # loop depth 0
  SRAIW t0, a4, 31
  SW t0, 1352(sp)
  LW t0, 1900(sp)
  SW t0, 1900(sp)
  LW t0, 1352(sp)
  SRLIW t0, t0, 31
  ADD t0, a4, t0
  SRAIW t0, t0, 1
  SW t0, 1792(sp)
  LW t0, 1792(sp)
  SLLI t0, t0, 1
  SRLI t0, t0, 63
  LW t1, 1792(sp)
  ADD t0, t1, t0
  ANDI t0, t0, -2
  LW t1, 1792(sp)
  SUBW t0, t1, t0
  SUB t1, zero, t0
  SW t1, 540(sp)
  BLT t0, zero, bb178
  # implict jump to bb155
bb155:   # loop depth 0
  SW t0, 540(sp)
  # implict jump to bb156
bb156:   # loop depth 0
  LW t0, 1792(sp)
  SRAIW a4, t0, 31
  LW t0, 540(sp)
  SW t0, 540(sp)
  SRLIW t0, a4, 31
  LW t1, 1792(sp)
  ADD t0, t1, t0
  SRAIW t0, t0, 1
  SW t0, 1896(sp)
  LW t0, 1896(sp)
  SLLI t0, t0, 1
  SRLI t0, t0, 63
  LW t1, 1896(sp)
  ADD t0, t1, t0
  ANDI t0, t0, -2
  LW t1, 1896(sp)
  SUBW t0, t1, t0
  SW t0, 1208(sp)
  LW t0, 1208(sp)
  SUB a0, zero, t0
  LW t0, 1208(sp)
  BLT t0, zero, bb177
  # implict jump to bb157
bb157:   # loop depth 0
  LW t0, 1208(sp)
  SW t0, 1208(sp)
  # implict jump to bb158
bb158:   # loop depth 0
  LW t0, 1896(sp)
  SRAIW a0, t0, 31
  LW t0, 1208(sp)
  SW t0, 1208(sp)
  SRLIW t0, a0, 31
  LW t1, 1896(sp)
  ADD t0, t1, t0
  SRAIW t0, t0, 1
  SW t0, 1204(sp)
  LW t0, 1204(sp)
  SLLI t0, t0, 1
  SRLI t0, t0, 63
  LW t1, 1204(sp)
  ADD t0, t1, t0
  ANDI t0, t0, -2
  LW t1, 1204(sp)
  SUBW t0, t1, t0
  SUB t1, zero, t0
  SW t1, 1200(sp)
  BLT t0, zero, bb176
  # implict jump to bb159
bb159:   # loop depth 0
  SW t0, 1200(sp)
  # implict jump to bb160
bb160:   # loop depth 0
  LW t0, 1204(sp)
  SRAIW a4, t0, 31
  LW t0, 1200(sp)
  SW t0, 1200(sp)
  SRLIW t0, a4, 31
  LW t1, 1204(sp)
  ADD t0, t1, t0
  SRAIW t0, t0, 1
  SW t0, 1196(sp)
  LW t0, 1196(sp)
  SLLI t0, t0, 1
  SRLI t0, t0, 63
  LW t1, 1196(sp)
  ADD t0, t1, t0
  ANDI t0, t0, -2
  LW t1, 1196(sp)
  SUBW t0, t1, t0
  SUB t1, zero, t0
  SW t1, 1192(sp)
  BLT t0, zero, bb175
  # implict jump to bb161
bb161:   # loop depth 0
  SW t0, 1192(sp)
  # implict jump to bb162
bb162:   # loop depth 0
  LW t0, 1196(sp)
  SRAIW a4, t0, 31
  LW t0, 1192(sp)
  SW t0, 1192(sp)
  SRLIW t0, a4, 31
  LW t1, 1196(sp)
  ADD t0, t1, t0
  SRAIW t0, t0, 1
  SW t0, 1188(sp)
  LW t0, 1188(sp)
  SLLI t0, t0, 1
  SRLI t0, t0, 63
  LW t1, 1188(sp)
  ADD t0, t1, t0
  ANDI t0, t0, -2
  LW t1, 1188(sp)
  SUBW a0, t1, t0
  SUB t0, zero, a0
  BLT a0, zero, bb174
  # implict jump to bb163
bb163:   # loop depth 0
  ADD t0, a0, zero
  # implict jump to bb164
bb164:   # loop depth 0
  LW t1, 1188(sp)
  SRAIW t1, t1, 31
  SW t1, 1332(sp)
  SW t0, 1368(sp)
  LW t0, 1332(sp)
  SRLIW a0, t0, 31
  LW t0, 1188(sp)
  ADD a0, t0, a0
  SRAIW t0, a0, 1
  SW t0, 1184(sp)
  LW t0, 1184(sp)
  SLLI a0, t0, 1
  SRLI a0, a0, 63
  LW t0, 1184(sp)
  ADD a0, t0, a0
  ANDI a0, a0, -2
  LW t0, 1184(sp)
  SUBW t0, t0, a0
  SW t0, 1144(sp)
  LW t0, 1144(sp)
  SUB a0, zero, t0
  LW t0, 1144(sp)
  BLT t0, zero, bb173
  # implict jump to bb165
bb165:   # loop depth 0
  LW a0, 1144(sp)
  # implict jump to bb166
bb166:   # loop depth 0
  LW t0, 1184(sp)
  SRAIW t0, t0, 31
  SW t0, 1328(sp)
  SW a0, 1364(sp)
  LW t0, 1328(sp)
  SRLIW a0, t0, 31
  LW t0, 1184(sp)
  ADD a0, t0, a0
  SRAIW t0, a0, 1
  SW t0, 1172(sp)
  LW t0, 1172(sp)
  SLLI a0, t0, 1
  SRLI a0, a0, 63
  LW t0, 1172(sp)
  ADD a0, t0, a0
  ANDI a0, a0, -2
  LW t0, 1172(sp)
  SUBW a0, t0, a0
  SUB t0, zero, a0
  SW t0, 1168(sp)
  BLT a0, zero, bb172
  # implict jump to bb167
bb167:   # loop depth 0
  # implict jump to bb168
bb168:   # loop depth 0
  LW t0, 1172(sp)
  SRAIW t0, t0, 31
  SW t0, 1324(sp)
  SW a0, 1360(sp)
  LW t0, 1324(sp)
  SRLIW a0, t0, 31
  LW t0, 1172(sp)
  ADD a0, t0, a0
  SRAIW a0, a0, 1
  SLLI t0, a0, 1
  SW t0, 1320(sp)
  LW t0, 1320(sp)
  SRLI t0, t0, 63
  SW t0, 1280(sp)
  LW t0, 1280(sp)
  ADD t0, a0, t0
  SW t0, 1308(sp)
  LW t0, 1308(sp)
  ANDI t0, t0, -2
  SW t0, 1312(sp)
  LW t0, 1312(sp)
  SUBW a0, a0, t0
  SUB t0, zero, a0
  SW t0, 1160(sp)
  BLT a0, zero, bb171
  # implict jump to bb169
bb169:   # loop depth 0
  SW a0, 1160(sp)
  # implict jump to bb170
bb170:   # loop depth 0
  SLTU s5, zero, s5
  SLTU a4, zero, a6
  AND t0, a4, s5
  SW t0, 1156(sp)
  SLTU t0, zero, s8
  SB t0, 25(sp)
  LW t0, 1156(sp)
  SLTU s8, zero, t0
  SLTU t0, zero, t3
  SB t0, 24(sp)
  XORI t0, s8, 1
  SW t0, 1152(sp)
  OR t3, a4, s5
  LW t0, 1152(sp)
  SLTU s5, zero, t0
  SLTU t0, zero, s6
  SB t0, 430(sp)
  SLTU t0, zero, a5
  SB t0, 432(sp)
  LB t0, 25(sp)
  LB t1, 24(sp)
  AND t0, t1, t0
  SW t0, 1148(sp)
  SLTU s5, zero, s5
  SLTU t3, zero, t3
  LB t0, 430(sp)
  LB t1, 432(sp)
  AND a5, t1, t0
  LW t0, 1148(sp)
  SLTU t0, zero, t0
  SB t0, 27(sp)
  AND t3, t3, s5
  SLTU t0, zero, a5
  SB t0, 427(sp)
  LB t0, 27(sp)
  XORI t0, t0, 1
  SW t0, 1180(sp)
  LB t0, 427(sp)
  SLTU t0, zero, t0
  SB t0, 390(sp)
  SLTU t0, zero, t3
  SB t0, 428(sp)
  SLTU t0, zero, s7
  SB t0, 47(sp)
  SLTU t0, zero, a7
  SB t0, 30(sp)
  LW t0, 1180(sp)
  SLTU t0, zero, t0
  SW t0, 1276(sp)
  LB t0, 25(sp)
  LB t1, 24(sp)
  OR s6, t1, t0
  LB t0, 390(sp)
  LB t1, 428(sp)
  AND a7, t1, t0
  LB t0, 47(sp)
  LB t1, 30(sp)
  AND t0, t1, t0
  SW t0, 1268(sp)
  LW t0, 1276(sp)
  SLTU t0, zero, t0
  SB t0, 28(sp)
  SLTU s6, zero, s6
  SLTU t0, zero, a7
  SB t0, 376(sp)
  LW t0, 1268(sp)
  SLTU t0, zero, t0
  SB t0, 94(sp)
  LB t0, 28(sp)
  AND t0, s6, t0
  SW t0, 1272(sp)
  LB t0, 376(sp)
  OR s6, s8, t0
  LB t0, 94(sp)
  XORI t0, t0, 1
  SW t0, 1264(sp)
  SLTU t0, zero, s6
  SB t0, 372(sp)
  LW t0, 1272(sp)
  SLTU t0, zero, t0
  SB t0, 373(sp)
  SLTU t0, zero, s9
  SB t0, 100(sp)
  SLTU t0, zero, t4
  SB t0, 99(sp)
  LW t0, 1264(sp)
  SLTU t0, zero, t0
  SW t0, 1260(sp)
  LB t0, 47(sp)
  LB t1, 30(sp)
  OR s8, t1, t0
  LB t0, 372(sp)
  LB t1, 373(sp)
  AND t4, t1, t0
  LB t0, 100(sp)
  LB t1, 99(sp)
  AND t0, t1, t0
  SW t0, 1252(sp)
  LW t0, 1260(sp)
  SLTU t0, zero, t0
  SB t0, 96(sp)
  SLTU s8, zero, s8
  SLTU t0, zero, t4
  SB t0, 370(sp)
  LW t0, 1252(sp)
  SLTU t0, zero, t0
  SB t0, 101(sp)
  LB t0, 96(sp)
  AND t0, s8, t0
  SW t0, 1256(sp)
  LB t0, 370(sp)
  LB t1, 27(sp)
  OR s8, t1, t0
  LB t0, 101(sp)
  XORI t0, t0, 1
  SW t0, 1212(sp)
  SLTU t0, zero, s8
  SB t0, 354(sp)
  LW t0, 1256(sp)
  SLTU t0, zero, t0
  SB t0, 367(sp)
  SLTU t0, zero, s11
  SB t0, 107(sp)
  SLTU t0, zero, s0
  SB t0, 106(sp)
  LW t0, 1212(sp)
  SLTU t0, zero, t0
  SW t0, 1244(sp)
  LB t0, 100(sp)
  LB t1, 99(sp)
  OR s9, t1, t0
  LB t0, 354(sp)
  LB t1, 367(sp)
  AND s0, t1, t0
  LB t0, 107(sp)
  LB t1, 106(sp)
  AND t0, t1, t0
  SW t0, 1236(sp)
  LW t0, 1244(sp)
  SLTU t0, zero, t0
  SB t0, 103(sp)
  SLTU s9, zero, s9
  SLTU t0, zero, s0
  SB t0, 360(sp)
  LW t0, 1236(sp)
  SLTU t0, zero, t0
  SB t0, 93(sp)
  LB t0, 103(sp)
  AND t0, s9, t0
  SW t0, 1240(sp)
  LB t0, 360(sp)
  LB t1, 94(sp)
  OR s9, t1, t0
  LB t0, 93(sp)
  XORI t0, t0, 1
  SW t0, 1232(sp)
  SLTU t0, zero, s9
  SB t0, 396(sp)
  LW t0, 1240(sp)
  SLTU t0, zero, t0
  SB t0, 357(sp)
  SLTU t0, zero, s10
  SB t0, 114(sp)
  SLTU t0, zero, t5
  SB t0, 113(sp)
  LW t0, 1232(sp)
  SLTU t0, zero, t0
  SW t0, 1228(sp)
  LB t0, 107(sp)
  LB t1, 106(sp)
  OR s10, t1, t0
  LB t0, 396(sp)
  LB t1, 357(sp)
  AND t5, t1, t0
  LB t0, 114(sp)
  LB t1, 113(sp)
  AND t0, t1, t0
  SW t0, 1112(sp)
  LW t0, 1228(sp)
  SLTU t0, zero, t0
  SB t0, 110(sp)
  SLTU s10, zero, s10
  SLTU t0, zero, t5
  SB t0, 395(sp)
  LW t0, 1112(sp)
  SLTU t0, zero, t0
  SB t0, 230(sp)
  LB t0, 110(sp)
  AND t0, s10, t0
  SW t0, 1224(sp)
  LB t0, 395(sp)
  LB t1, 101(sp)
  OR s10, t1, t0
  LB t0, 230(sp)
  XORI t0, t0, 1
  SW t0, 1072(sp)
  SLTU t0, zero, s10
  SB t0, 383(sp)
  LW t0, 1224(sp)
  SLTU t0, zero, t0
  SB t0, 392(sp)
  LW t0, 1900(sp)
  SLTU t0, zero, t0
  SB t0, 63(sp)
  SLTU t0, zero, s2
  SB t0, 78(sp)
  LW t0, 1072(sp)
  SLTU t0, zero, t0
  SW t0, 1068(sp)
  LB t0, 114(sp)
  LB t1, 113(sp)
  OR t0, t1, t0
  SW t0, 1216(sp)
  LB t0, 383(sp)
  LB t1, 392(sp)
  AND s2, t1, t0
  LB t0, 63(sp)
  LB t1, 78(sp)
  AND t0, t1, t0
  SW t0, 1060(sp)
  LW t0, 1068(sp)
  SLTU t0, zero, t0
  SB t0, 119(sp)
  LW t0, 1216(sp)
  SLTU t0, zero, t0
  SB t0, 118(sp)
  SLTU t0, zero, s2
  SB t0, 382(sp)
  LW t0, 1060(sp)
  SLTU t0, zero, t0
  SB t0, 65(sp)
  LB t0, 119(sp)
  LB t1, 118(sp)
  AND t0, t1, t0
  SW t0, 1064(sp)
  LB t0, 382(sp)
  LB t1, 93(sp)
  OR t0, t1, t0
  SW t0, 1220(sp)
  LB t0, 65(sp)
  XORI t0, t0, 1
  SW t0, 1056(sp)
  LW t0, 1220(sp)
  SLTU t0, zero, t0
  SB t0, 389(sp)
  LW t0, 1064(sp)
  SLTU t0, zero, t0
  SB t0, 384(sp)
  LW t0, 540(sp)
  SLTU t0, zero, t0
  SB t0, 70(sp)
  SLTU t0, zero, s1
  SB t0, 69(sp)
  LW t0, 1056(sp)
  SLTU t0, zero, t0
  SW t0, 1052(sp)
  LB t0, 63(sp)
  LB t1, 78(sp)
  OR s11, t1, t0
  LB t0, 389(sp)
  LB t1, 384(sp)
  AND s1, t1, t0
  LB t0, 70(sp)
  LB t1, 69(sp)
  AND t0, t1, t0
  SW t0, 1036(sp)
  LW t0, 1052(sp)
  SLTU t0, zero, t0
  SB t0, 66(sp)
  SLTU s11, zero, s11
  SLTU s1, zero, s1
  LW t0, 1036(sp)
  SLTU t0, zero, t0
  SB t0, 72(sp)
  LB t0, 66(sp)
  AND t0, s11, t0
  SW t0, 1048(sp)
  LB t0, 230(sp)
  OR s11, t0, s1
  LB t0, 72(sp)
  XORI t0, t0, 1
  SW t0, 1032(sp)
  SLTU t0, zero, s11
  SB t0, 68(sp)
  LW t0, 1048(sp)
  SLTU s11, zero, t0
  LW t0, 1208(sp)
  SLTU t0, zero, t0
  SB t0, 80(sp)
  SLTU t0, zero, s3
  SB t0, 79(sp)
  LW t0, 1032(sp)
  SLTU t0, zero, t0
  SW t0, 1028(sp)
  LB t0, 70(sp)
  LB t1, 69(sp)
  OR t0, t1, t0
  SW t0, 1040(sp)
  LB t0, 68(sp)
  AND s3, s11, t0
  LB t0, 80(sp)
  LB t1, 79(sp)
  AND t0, t1, t0
  SW t0, 1012(sp)
  LW t0, 1028(sp)
  SLTU t0, zero, t0
  SB t0, 75(sp)
  LW t0, 1040(sp)
  SLTU t0, zero, t0
  SB t0, 74(sp)
  SLTU s3, zero, s3
  LW t0, 1012(sp)
  SLTU t0, zero, t0
  SB t0, 82(sp)
  LB t0, 75(sp)
  LB t1, 74(sp)
  AND t0, t1, t0
  SW t0, 1024(sp)
  LB t0, 65(sp)
  OR t0, t0, s3
  SW t0, 1008(sp)
  LB t0, 82(sp)
  XORI t0, t0, 1
  SW t0, 1044(sp)
  LW t0, 1008(sp)
  SLTU t0, zero, t0
  SB t0, 62(sp)
  LW t0, 1024(sp)
  SLTU t0, zero, t0
  SB t0, 77(sp)
  LW t0, 1200(sp)
  SLTU t0, zero, t0
  SB t0, 90(sp)
  SLTU t0, zero, s4
  SB t0, 89(sp)
  LW t0, 1044(sp)
  SLTU t0, zero, t0
  SW t0, 1140(sp)
  LB t0, 80(sp)
  LB t1, 79(sp)
  OR t0, t1, t0
  SW t0, 1016(sp)
  LB t0, 62(sp)
  LB t1, 77(sp)
  AND s4, t1, t0
  LB t0, 90(sp)
  LB t1, 89(sp)
  AND t0, t1, t0
  SW t0, 1124(sp)
  LW t0, 1140(sp)
  SLTU t0, zero, t0
  SB t0, 85(sp)
  LW t0, 1016(sp)
  SLTU t0, zero, t0
  SB t0, 84(sp)
  SLTU s4, zero, s4
  LW t0, 1124(sp)
  SLTU t0, zero, t0
  SB t0, 422(sp)
  LB t0, 85(sp)
  LB t1, 84(sp)
  AND t0, t1, t0
  SW t0, 1136(sp)
  LB t0, 72(sp)
  OR t0, t0, s4
  SW t0, 1020(sp)
  LB t0, 422(sp)
  XORI t0, t0, 1
  SW t0, 1120(sp)
  LW t0, 1020(sp)
  SLTU t0, zero, t0
  SB t0, 87(sp)
  LW t0, 1136(sp)
  SLTU t0, zero, t0
  SB t0, 86(sp)
  LW t0, 1192(sp)
  SLTU t0, zero, t0
  SB t0, 406(sp)
  LW t0, 1388(sp)
  SLTU t0, zero, t0
  SB t0, 408(sp)
  LW t0, 1120(sp)
  SLTU t0, zero, t0
  SW t0, 1116(sp)
  LB t0, 90(sp)
  LB t1, 89(sp)
  OR t0, t1, t0
  SW t0, 1128(sp)
  LB t0, 87(sp)
  LB t1, 86(sp)
  AND t1, t1, t0
  LB t0, 406(sp)
  LB t2, 408(sp)
  AND t0, t2, t0
  SW t0, 1108(sp)
  LW t0, 1116(sp)
  SLTU t0, zero, t0
  SB t0, 415(sp)
  LW t0, 1128(sp)
  SLTU t0, zero, t0
  SB t0, 416(sp)
  SLTU t1, zero, t1
  LW t0, 1108(sp)
  SLTU t0, zero, t0
  SB t0, 441(sp)
  LB t0, 415(sp)
  LB t2, 416(sp)
  AND t0, t2, t0
  SW t0, 1076(sp)
  LB t0, 82(sp)
  OR t0, t0, t1
  SW t0, 1132(sp)
  LB t0, 441(sp)
  XORI t0, t0, 1
  SW t0, 1104(sp)
  LW t0, 1132(sp)
  SLTU t0, zero, t0
  SB t0, 410(sp)
  LW t0, 1076(sp)
  SLTU t0, zero, t0
  SB t0, 414(sp)
  LW t0, 1368(sp)
  SLTU t0, zero, t0
  SB t0, 369(sp)
  LW t0, 1348(sp)
  SLTU t0, zero, t0
  SB t0, 375(sp)
  LW t0, 1104(sp)
  SLTU t0, zero, t0
  SW t0, 1100(sp)
  LB t0, 406(sp)
  LB t2, 408(sp)
  OR t2, t2, t0
  LB t0, 410(sp)
  LB a0, 414(sp)
  AND t0, a0, t0
  LB a0, 369(sp)
  LB a1, 375(sp)
  AND a0, a1, a0
  SW a0, 1084(sp)
  LW a0, 1100(sp)
  SLTU a0, zero, a0
  SB a0, 429(sp)
  SLTU t2, zero, t2
  SB t2, 402(sp)
  SLTU t2, zero, t0
  LW t0, 1084(sp)
  SLTU t0, zero, t0
  SB t0, 388(sp)
  LB t0, 429(sp)
  LB a0, 402(sp)
  AND t0, a0, t0
  SW t0, 1096(sp)
  LB t0, 422(sp)
  OR t0, t0, t2
  LB a0, 388(sp)
  XORI a0, a0, 1
  SW a0, 1080(sp)
  SLTU t0, zero, t0
  SB t0, 431(sp)
  LW t0, 1096(sp)
  SLTU t0, zero, t0
  SB t0, 404(sp)
  LW t0, 1364(sp)
  SLTU t0, zero, t0
  SB t0, 391(sp)
  LW t0, 1380(sp)
  SLTU t0, zero, t0
  SB t0, 378(sp)
  LW t0, 1080(sp)
  SLTU t0, zero, t0
  SW t0, 1248(sp)
  LB t0, 369(sp)
  LB a0, 375(sp)
  OR t0, a0, t0
  SW t0, 1088(sp)
  LB t0, 431(sp)
  LB a0, 404(sp)
  AND t0, a0, t0
  LB a0, 391(sp)
  LB a1, 378(sp)
  AND a0, a1, a0
  SW a0, 1468(sp)
  LW a0, 1248(sp)
  SLTU a0, zero, a0
  SB a0, 381(sp)
  LW a0, 1088(sp)
  SLTU a0, zero, a0
  SB a0, 380(sp)
  SLTU a1, zero, t0
  LW t0, 1468(sp)
  SLTU t0, zero, t0
  SB t0, 394(sp)
  LB t0, 381(sp)
  LB a0, 380(sp)
  AND t0, a0, t0
  SW t0, 1480(sp)
  LB t0, 441(sp)
  OR t0, t0, a1
  SW t0, 1092(sp)
  LB t0, 394(sp)
  XORI t0, t0, 1
  SW t0, 1464(sp)
  LW t0, 1092(sp)
  SLTU t0, zero, t0
  SB t0, 437(sp)
  LW t0, 1480(sp)
  SLTU t0, zero, t0
  SB t0, 434(sp)
  LW t0, 1360(sp)
  SLTU t0, zero, t0
  SB t0, 362(sp)
  LW t0, 1376(sp)
  SLTU t0, zero, t0
  SB t0, 359(sp)
  LW t0, 1464(sp)
  SLTU t0, zero, t0
  SW t0, 1460(sp)
  LB t0, 391(sp)
  LB a0, 378(sp)
  OR t0, a0, t0
  SW t0, 1472(sp)
  LB t0, 437(sp)
  LB a0, 434(sp)
  AND t0, a0, t0
  LB a0, 362(sp)
  LB a2, 359(sp)
  AND a0, a2, a0
  SW a0, 1416(sp)
  LW a0, 1460(sp)
  SLTU a0, zero, a0
  SB a0, 400(sp)
  LW a0, 1472(sp)
  SLTU a0, zero, a0
  SB a0, 399(sp)
  SLTU a2, zero, t0
  LW t0, 1416(sp)
  SLTU t0, zero, t0
  SB t0, 365(sp)
  LB t0, 400(sp)
  LB a0, 399(sp)
  AND t0, a0, t0
  SW t0, 1456(sp)
  LB t0, 388(sp)
  OR t0, t0, a2
  SW t0, 1476(sp)
  LB t0, 365(sp)
  XORI t0, t0, 1
  SW t0, 1448(sp)
  LW t0, 1476(sp)
  SLTU t0, zero, t0
  SB t0, 439(sp)
  LW t0, 1456(sp)
  SLTU t0, zero, t0
  SB t0, 355(sp)
  LW t0, 1160(sp)
  SW t0, 1160(sp)
  LW t0, 1160(sp)
  SLTU t0, zero, t0
  SB t0, 426(sp)
  LW t0, 1372(sp)
  SLTU t0, zero, t0
  SB t0, 425(sp)
  LW t0, 1448(sp)
  SLTU t0, zero, t0
  SW t0, 1444(sp)
  LB t0, 362(sp)
  LB a0, 359(sp)
  OR a0, a0, t0
  LB t0, 439(sp)
  LB a3, 355(sp)
  AND t0, a3, t0
  LB a3, 426(sp)
  LB a4, 425(sp)
  AND a3, a4, a3
  SW a3, 1548(sp)
  LW a3, 1444(sp)
  SLTU a3, zero, a3
  SB a3, 368(sp)
  SLTU a0, zero, a0
  SLTU t0, zero, t0
  LW a3, 1548(sp)
  SLTU a3, zero, a3
  SB a3, 423(sp)
  LB a3, 368(sp)
  AND a0, a0, a3
  SW a0, 1440(sp)
  LB a0, 394(sp)
  OR a0, a0, t0
  LB a3, 423(sp)
  XORI a3, a3, 1
  SW a3, 1544(sp)
  SLTU a0, zero, a0
  SB a0, 371(sp)
  LW a0, 1440(sp)
  SLTU a0, zero, a0
  LW a3, 1544(sp)
  SLTU a3, zero, a3
  SW a3, 1540(sp)
  LB a3, 426(sp)
  LB a4, 425(sp)
  OR a3, a4, a3
  SW a3, 1452(sp)
  LB a3, 371(sp)
  AND a3, a0, a3
  SW a3, 1436(sp)
  LW a3, 1540(sp)
  SLTU a3, zero, a3
  SB a3, 438(sp)
  LW a3, 1452(sp)
  SLTU a3, zero, a3
  SB a3, 436(sp)
  LW a3, 1436(sp)
  SLTU a3, zero, a3
  SB a3, 374(sp)
  LB a3, 438(sp)
  LB a4, 436(sp)
  AND a3, a4, a3
  SW a3, 1536(sp)
  LB a3, 374(sp)
  LB a4, 365(sp)
  OR a3, a4, a3
  SW a3, 1420(sp)
  LW a3, 1536(sp)
  SLTU a3, zero, a3
  SB a3, 442(sp)
  LW a3, 1420(sp)
  SLTU a3, zero, a3
  SB a3, 412(sp)
  LB a3, 374(sp)
  XORI a3, a3, 1
  SW a3, 1432(sp)
  LB a3, 412(sp)
  LB a4, 442(sp)
  AND a3, a4, a3
  SW a3, 1528(sp)
  LB a3, 412(sp)
  LB a4, 442(sp)
  OR a3, a4, a3
  SW a3, 1532(sp)
  LW a3, 1528(sp)
  SLTU a3, zero, a3
  SB a3, 401(sp)
  LW a3, 1532(sp)
  SLTU a3, zero, a3
  SB a3, 418(sp)
  LB a3, 401(sp)
  XORI a3, a3, 1
  SW a3, 1524(sp)
  LW a3, 1432(sp)
  SLTU a3, zero, a3
  SW a3, 1428(sp)
  LW a3, 1524(sp)
  SLTU a3, zero, a3
  SW a3, 1484(sp)
  LB a3, 371(sp)
  OR a0, a0, a3
  LW a3, 1484(sp)
  SLTU a3, zero, a3
  SB a3, 419(sp)
  LW a3, 1428(sp)
  SLTU a3, zero, a3
  SB a3, 377(sp)
  LB a3, 419(sp)
  LB a4, 418(sp)
  AND a3, a4, a3
  SW a3, 1516(sp)
  SLTU a0, zero, a0
  XORI t0, t0, 1
  LW a3, 1516(sp)
  SLLIW a3, a3, 1
  SW a3, 1512(sp)
  LB a3, 377(sp)
  AND a0, a0, a3
  SW a0, 1424(sp)
  SLTU a0, zero, t0
  LB t0, 439(sp)
  LB a3, 355(sp)
  OR t0, a3, t0
  LW a3, 1512(sp)
  LW a4, 1424(sp)
  ADDW a3, a3, a4
  SW a3, 1508(sp)
  SLTU a0, zero, a0
  SB a0, 358(sp)
  SLTU a0, zero, t0
  XORI t0, a2, 1
  LW a2, 1508(sp)
  SLLIW a2, a2, 1
  SW a2, 1504(sp)
  LB a2, 358(sp)
  AND a2, a0, a2
  SLTU a0, zero, t0
  LB t0, 437(sp)
  LB a3, 434(sp)
  OR t0, a3, t0
  LW a3, 1504(sp)
  ADDW a3, a3, a2
  SLTU a2, zero, a0
  SLTU a0, zero, t0
  XORI t0, a1, 1
  SLLIW a3, a3, 1
  AND a1, a0, a2
  SLTU a0, zero, t0
  LB t0, 431(sp)
  LB a2, 404(sp)
  OR t0, a2, t0
  ADDW a2, a3, a1
  SLTU a1, zero, a0
  SLTU a0, zero, t0
  XORI t0, t2, 1
  SLLIW a2, a2, 1
  AND a0, a0, a1
  SLTU t2, zero, t0
  LB t0, 410(sp)
  LB a1, 414(sp)
  OR t0, a1, t0
  ADDW a1, a2, a0
  SLTU a0, zero, t2
  SLTU t2, zero, t0
  XORI t0, t1, 1
  SLLIW a1, a1, 1
  AND t2, t2, a0
  SLTU t1, zero, t0
  LB t0, 87(sp)
  LB a0, 86(sp)
  OR t0, a0, t0
  ADDW a0, a1, t2
  SLTU t2, zero, t1
  SLTU t1, zero, t0
  XORI t0, s4, 1
  SLLIW a0, a0, 1
  AND t2, t1, t2
  SLTU t1, zero, t0
  LB t0, 62(sp)
  LB a1, 77(sp)
  OR t0, a1, t0
  ADDW a0, a0, t2
  SLTU t2, zero, t1
  SLTU t1, zero, t0
  XORI t0, s3, 1
  SLLIW a0, a0, 1
  AND t2, t1, t2
  SLTU t1, zero, t0
  LB t0, 68(sp)
  OR t0, s11, t0
  ADDW a0, a0, t2
  SLTU t2, zero, t1
  SLTU t1, zero, t0
  XORI t0, s1, 1
  SLLIW a0, a0, 1
  AND t2, t1, t2
  SLTU t1, zero, t0
  LB t0, 389(sp)
  LB a1, 384(sp)
  OR t0, a1, t0
  ADDW a0, a0, t2
  SLTU t2, zero, t1
  SLTU t1, zero, t0
  LB t0, 382(sp)
  XORI t0, t0, 1
  SLLIW a0, a0, 1
  AND t2, t1, t2
  SLTU t1, zero, t0
  LB t0, 383(sp)
  LB a1, 392(sp)
  OR t0, a1, t0
  ADDW a0, a0, t2
  SLTU t2, zero, t1
  SLTU t1, zero, t0
  LB t0, 395(sp)
  XORI t0, t0, 1
  SLLIW a0, a0, 1
  AND t2, t1, t2
  SLTU t1, zero, t0
  LB t0, 396(sp)
  LB a1, 357(sp)
  OR t0, a1, t0
  ADDW a0, a0, t2
  SLTU t2, zero, t1
  SLTU t1, zero, t0
  LB t0, 360(sp)
  XORI t0, t0, 1
  SLLIW a0, a0, 1
  AND t2, t1, t2
  SLTU t1, zero, t0
  LB t0, 354(sp)
  LB a1, 367(sp)
  OR t0, a1, t0
  ADDW a0, a0, t2
  SLTU t2, zero, t1
  SLTU t1, zero, t0
  LB t0, 370(sp)
  XORI t0, t0, 1
  SLLIW a0, a0, 1
  AND t2, t1, t2
  SLTU t1, zero, t0
  LB t0, 372(sp)
  LB a1, 373(sp)
  OR t0, a1, t0
  ADDW a1, a0, t2
  SLTU a0, zero, t1
  SLTU t2, zero, t0
  LB t0, 376(sp)
  XORI t1, t0, 1
  LB t0, 427(sp)
  XORI t0, t0, 1
  SLLIW a2, a1, 1
  AND a1, t2, a0
  SLTU a0, zero, t1
  LB t1, 390(sp)
  LB t2, 428(sp)
  OR t2, t2, t1
  SLTU t1, zero, t0
  LB t0, 430(sp)
  LB a3, 432(sp)
  OR t0, a3, t0
  ADDW a1, a2, a1
  SLTU a0, zero, a0
  SLTU t2, zero, t2
  SLTU t1, zero, t1
  SLTU t0, zero, t0
  SLLIW a1, a1, 1
  AND t2, t2, a0
  AND t0, t0, t1
  ADDW t1, a1, t2
  SLTU t0, zero, t0
  SLLIW t1, t1, 1
  SLTU t0, zero, t0
  ADDW a0, t1, t0
  LUI ra, 1
  ADDIW ra, ra, -2000
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 1
  ADDIW t6, t6, -1992
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1984
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1976
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1968
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1952
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1944
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1936
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1928
  ADD t6, t6, sp
  LD s8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  LD s9, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1912
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1904
  ADD t6, t6, sp
  LD s11, 0(t6)
  LUI t0, 1
  ADDIW t0, t0, -1888
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb171:   # loop depth 0
  LW t0, 1160(sp)
  SW t0, 1160(sp)
  JAL zero, bb170
bb172:   # loop depth 0
  LW a0, 1168(sp)
  JAL zero, bb168
bb173:   # loop depth 0
  JAL zero, bb166
bb174:   # loop depth 0
  JAL zero, bb164
bb175:   # loop depth 0
  LW t0, 1192(sp)
  SW t0, 1192(sp)
  JAL zero, bb162
bb176:   # loop depth 0
  LW t0, 1200(sp)
  SW t0, 1200(sp)
  JAL zero, bb160
bb177:   # loop depth 0
  SW a0, 1208(sp)
  JAL zero, bb158
bb178:   # loop depth 0
  LW t0, 540(sp)
  SW t0, 540(sp)
  JAL zero, bb156
bb179:   # loop depth 0
  LW t0, 1900(sp)
  SW t0, 1900(sp)
  JAL zero, bb154
bb180:   # loop depth 0
  ADD s10, a0, zero
  JAL zero, bb152
bb181:   # loop depth 0
  JAL zero, bb150
bb182:   # loop depth 0
  JAL zero, bb148
bb183:   # loop depth 0
  JAL zero, bb146
bb184:   # loop depth 0
  JAL zero, bb144
bb185:   # loop depth 0
  ADD s5, a0, zero
  JAL zero, bb142
bb186:   # loop depth 0
  JAL zero, bb140
bb187:   # loop depth 0
  JAL zero, bb138
bb188:   # loop depth 0
  ADD a2, a3, zero
  JAL zero, bb136
bb189:   # loop depth 0
  JAL zero, bb134
bb190:   # loop depth 0
  JAL zero, bb132
bb191:   # loop depth 0
  JAL zero, bb130
bb192:   # loop depth 0
  JAL zero, bb128
bb193:   # loop depth 0
  ADD s3, t2, zero
  JAL zero, bb126
bb194:   # loop depth 0
  JAL zero, bb124
bb195:   # loop depth 0
  JAL zero, bb122
bb196:   # loop depth 0
  ADD t5, t2, zero
  JAL zero, bb120
bb197:   # loop depth 0
  JAL zero, bb118
bb198:   # loop depth 0
  JAL zero, bb116
bb199:   # loop depth 0
  JAL zero, bb114
bb200:   # loop depth 0
  JAL zero, bb112
bb201:   # loop depth 0
  ADD a6, t2, zero
  JAL zero, bb110
bb202:   # loop depth 0
  JAL zero, bb108
bb203:   # loop depth 0
  JAL zero, bb106
bb204:   # loop depth 0
  JAL zero, bb104
bb205:   # loop depth 0
  JAL zero, bb102
bb206:   # loop depth 0
  JAL zero, bb100
bb207:   # loop depth 0
  JAL zero, bb98
bb208:   # loop depth 0
  JAL zero, bb96
bb209:   # loop depth 0
  ADD a3, t1, zero
  JAL zero, bb94
bb210:   # loop depth 0
  JAL zero, bb92
bb211:   # loop depth 0
  JAL zero, bb90
bb212:   # loop depth 0
  ADD t5, t1, zero
  JAL zero, bb88
bb213:   # loop depth 0
  JAL zero, bb86
bb214:   # loop depth 0
  JAL zero, bb84
bb215:   # loop depth 0
  JAL zero, bb82
bb216:   # loop depth 0
  JAL zero, bb80
bb217:   # loop depth 0
  ADD a7, t1, zero
  JAL zero, bb78
bb218:   # loop depth 0
  JAL zero, bb76
bb219:   # loop depth 0
  LW t0, 796(sp)
  SW t0, 796(sp)
  JAL zero, bb74
bb220:   # loop depth 0
  LW a6, 612(sp)
  JAL zero, bb72
bb221:   # loop depth 0
  JAL zero, bb70
bb222:   # loop depth 0
  JAL zero, bb68
bb223:   # loop depth 0
  JAL zero, bb66
bb224:   # loop depth 0
  JAL zero, bb64
bb225:   # loop depth 0
  ADD s5, a3, zero
  JAL zero, bb62
bb226:   # loop depth 0
  LW t0, 624(sp)
  SW t0, 624(sp)
  JAL zero, bb60
bb227:   # loop depth 0
  LW t0, 632(sp)
  SW t0, 632(sp)
  JAL zero, bb58
bb228:   # loop depth 0
  SW a3, 464(sp)
  JAL zero, bb56
bb229:   # loop depth 0
  LW t0, 640(sp)
  SW t0, 640(sp)
  JAL zero, bb54
bb230:   # loop depth 0
  JAL zero, bb52
bb231:   # loop depth 0
  ADD s7, a3, zero
  JAL zero, bb50
bb232:   # loop depth 0
  JAL zero, bb48
bb233:   # loop depth 0
  JAL zero, bb46
bb234:   # loop depth 0
  LW t0, 644(sp)
  SW t0, 644(sp)
  JAL zero, bb44
bb235:   # loop depth 0
  JAL zero, bb42
bb236:   # loop depth 0
  JAL zero, bb40
bb237:   # loop depth 0
  JAL zero, bb38
bb238:   # loop depth 0
  ADD t1, t2, zero
  JAL zero, bb36
bb239:   # loop depth 0
  ADD t0, t1, zero
  JAL zero, bb34
bb240:   # loop depth 0
  JAL zero, bb32
bb241:   # loop depth 0
  ADD t4, t1, zero
  JAL zero, bb30
bb242:   # loop depth 0
  JAL zero, bb28
bb243:   # loop depth 0
  JAL zero, bb26
bb244:   # loop depth 0
  JAL zero, bb24
bb245:   # loop depth 0
  ADD s8, t1, zero
  JAL zero, bb22
bb246:   # loop depth 0
  JAL zero, bb20
bb247:   # loop depth 0
  ADD s0, t1, zero
  JAL zero, bb18
bb248:   # loop depth 0
  SW t1, 656(sp)
  JAL zero, bb16
bb249:   # loop depth 0
  ADD s1, t1, zero
  JAL zero, bb14
bb250:   # loop depth 0
  JAL zero, bb12
bb251:   # loop depth 0
  ADDI t0, zero, -1
  JAL zero, bb10
bb252:   # loop depth 0
  ADD t2, zero, zero
  JAL zero, bb8
bb253:   # loop depth 0
  ADDI a0, zero, 1
  LUI ra, 1
  ADDIW ra, ra, -2000
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 1
  ADDIW t6, t6, -1992
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1984
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1976
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1968
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1952
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1944
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1936
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1928
  ADD t6, t6, sp
  LD s8, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  LD s9, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1912
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, -1904
  ADD t6, t6, sp
  LD s11, 0(t6)
  LUI t0, 1
  ADDIW t0, t0, -1888
  ADD sp, sp, t0
  JALR zero, 0(ra)
