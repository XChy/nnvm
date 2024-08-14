.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -688
  SD ra, 280(sp)
  SD s0, 288(sp)
  SD s2, 296(sp)
  SD s3, 304(sp)
  SD s4, 312(sp)
  SD s6, 320(sp)
  SD s7, 328(sp)
  SD s8, 336(sp)
  SD s9, 344(sp)
  SD s10, 352(sp)
  SD s11, 360(sp)
  CALL getint
  ADD s11, zero, zero
  SW a0, 68(sp)
  ADD s10, zero, zero
  CALL getint
  SW a0, 72(sp)
  CALL getint
  SW a0, 76(sp)
  CALL getint
  SW a0, 80(sp)
  CALL getint
  SW a0, 124(sp)
  CALL getint
  SW a0, 164(sp)
  CALL getint
  SW a0, 228(sp)
  CALL getint
  SW a0, 232(sp)
  CALL getint
  ADD s8, a0, zero
  CALL getint
  ADD s9, a0, zero
  CALL getint
  SW a0, 148(sp)
  CALL getint
  SW a0, 152(sp)
  CALL getint
  SW a0, 156(sp)
  CALL getint
  SW a0, 160(sp)
  CALL getint
  SW a0, 44(sp)
  CALL getint
  LW t0, 68(sp)
  SW t0, 368(sp)
  LW t1, 72(sp)
  SW t1, 372(sp)
  LW t1, 76(sp)
  SW t1, 376(sp)
  LW t1, 80(sp)
  SW t1, 380(sp)
  LW t1, 124(sp)
  SW t1, 384(sp)
  LW t1, 164(sp)
  SW t1, 388(sp)
  LW t1, 228(sp)
  SW t1, 392(sp)
  LW t1, 232(sp)
  SW t1, 396(sp)
  SW s8, 400(sp)
  SW s9, 404(sp)
  LW t1, 148(sp)
  SW t1, 408(sp)
  LW t1, 152(sp)
  SW t1, 412(sp)
  LW t1, 156(sp)
  SW t1, 416(sp)
  LW t1, 160(sp)
  SW t1, 420(sp)
  LW t1, 44(sp)
  SW t1, 424(sp)
  SW a0, 428(sp)
  # implict jump to bb1
bb1:   # loop depth 1
  ADDIW a1, s10, 1
  SLTI t2, a1, 16
  BNE t2, zero, bb15
  # implict jump to bb2
bb2:   # loop depth 1
  # implict jump to bb3
bb3:   # loop depth 1
  SLTI t2, a1, 15
  BNE t2, zero, bb14
  # implict jump to bb4
bb4:   # loop depth 0
  LW t0, 368(sp)
  SW t0, 184(sp)
  LW t0, 372(sp)
  SW t0, 188(sp)
  LW t1, 376(sp)
  SW t1, 252(sp)
  LW t1, 380(sp)
  SW t1, 256(sp)
  LW t1, 384(sp)
  SW t1, 260(sp)
  LW t1, 388(sp)
  SW t1, 264(sp)
  LW t1, 392(sp)
  SW t1, 268(sp)
  LW t0, 396(sp)
  SW t0, 92(sp)
  LW t0, 400(sp)
  LW t4, 404(sp)
  LW t1, 408(sp)
  SW t1, 116(sp)
  LW t1, 412(sp)
  SW t1, 120(sp)
  LW t1, 416(sp)
  SW t1, 84(sp)
  LW t1, 420(sp)
  SW t1, 128(sp)
  LW t1, 424(sp)
  SW t1, 132(sp)
  LW t1, 428(sp)
  SW t1, 136(sp)
  LW t1, 184(sp)
  BEQ t1, zero, bb13
  # implict jump to bb5
bb5:   # loop depth 0
  SW a0, 204(sp)
  LW t1, 44(sp)
  SW t1, 208(sp)
  LW t1, 160(sp)
  SW t1, 212(sp)
  LW t1, 156(sp)
  SW t1, 216(sp)
  LW t1, 152(sp)
  SW t1, 220(sp)
  LW t1, 148(sp)
  SW t1, 272(sp)
  SW s9, 224(sp)
  SW s8, 40(sp)
  LW t1, 232(sp)
  SW t1, 36(sp)
  LW t1, 228(sp)
  SW t1, 32(sp)
  LW t1, 164(sp)
  SW t1, 28(sp)
  LW t1, 124(sp)
  SW t1, 140(sp)
  LW t1, 140(sp)
  SW t1, 140(sp)
  LW s3, 80(sp)
  LW s4, 76(sp)
  LW s7, 72(sp)
  LW t1, 68(sp)
  LW t2, 136(sp)
  SW t2, 136(sp)
  LW t2, 132(sp)
  SW t2, 132(sp)
  LW t2, 128(sp)
  SW t2, 128(sp)
  LW t2, 84(sp)
  SW t2, 84(sp)
  LW t2, 120(sp)
  SW t2, 120(sp)
  LW t2, 116(sp)
  SW t2, 116(sp)
  LW t2, 92(sp)
  SW t2, 92(sp)
  LW a6, 268(sp)
  LW a5, 264(sp)
  LW a7, 260(sp)
  LW t3, 256(sp)
  LW a0, 252(sp)
  LW t2, 188(sp)
  SW t2, 188(sp)
  LW t2, 184(sp)
  SW t2, 184(sp)
  # implict jump to bb6
bb6:   # loop depth 1
  LUI a1, 243712
  LW t2, 188(sp)
  SW t2, 188(sp)
  ADDIW a1, a1, 1
  LW t2, 188(sp)
  ADDW a0, t2, a0
  LW t2, 184(sp)
  SW t2, 184(sp)
  REMW t2, a0, a1
  SW t2, 188(sp)
  LW t2, 184(sp)
  ADDIW t2, t2, -1
  SW t2, 184(sp)
  ADD a0, t3, zero
  ADD t3, a7, zero
  ADD a7, a5, zero
  ADD a5, a6, zero
  LW a6, 92(sp)
  SW t0, 92(sp)
  ADD t0, t4, zero
  LW t4, 116(sp)
  LW t2, 120(sp)
  SW t2, 180(sp)
  LW t2, 180(sp)
  SW t2, 180(sp)
  LW t2, 84(sp)
  SW t2, 176(sp)
  LW t2, 176(sp)
  SW t2, 176(sp)
  LW t5, 128(sp)
  LW t2, 132(sp)
  SW t2, 172(sp)
  LW t2, 172(sp)
  SW t2, 172(sp)
  LW s0, 136(sp)
  SW t1, 168(sp)
  SW s7, 96(sp)
  SW s4, 100(sp)
  SW s3, 104(sp)
  LW t1, 140(sp)
  SW t1, 108(sp)
  LW t1, 28(sp)
  SW t1, 4(sp)
  LW t2, 32(sp)
  LW s2, 36(sp)
  LW t1, 40(sp)
  SW t1, 112(sp)
  LW s3, 224(sp)
  LW s4, 272(sp)
  LW s6, 220(sp)
  SW s6, 236(sp)
  LW s6, 216(sp)
  SW s6, 240(sp)
  LW s6, 212(sp)
  SW s6, 244(sp)
  LW s6, 208(sp)
  SW s6, 248(sp)
  LW s6, 204(sp)
  SW s6, 276(sp)
  LW t1, 184(sp)
  BEQ t1, zero, bb8
  # implict jump to bb7
bb7:   # loop depth 1
  ADD s6, zero, zero
  SW s6, 204(sp)
  LW s6, 276(sp)
  SW s6, 208(sp)
  LW s6, 248(sp)
  SW s6, 212(sp)
  LW s6, 244(sp)
  SW s6, 216(sp)
  LW s6, 240(sp)
  SW s6, 220(sp)
  LW s6, 236(sp)
  SW s6, 272(sp)
  SW s4, 224(sp)
  SW s3, 40(sp)
  LW t1, 112(sp)
  SW t1, 36(sp)
  SW s2, 32(sp)
  SW t2, 28(sp)
  LW t1, 4(sp)
  SW t1, 140(sp)
  LW t1, 140(sp)
  SW t1, 140(sp)
  LW s3, 108(sp)
  LW s4, 104(sp)
  LW s7, 100(sp)
  LW t1, 96(sp)
  LW t2, 168(sp)
  SW t2, 168(sp)
  LW t2, 168(sp)
  SW t2, 136(sp)
  SW s0, 132(sp)
  LW t2, 172(sp)
  SW t2, 172(sp)
  LW t2, 172(sp)
  SW t2, 128(sp)
  SW t5, 84(sp)
  LW t2, 176(sp)
  SW t2, 176(sp)
  LW t2, 176(sp)
  SW t2, 120(sp)
  LW t2, 180(sp)
  SW t2, 180(sp)
  LW t2, 180(sp)
  SW t2, 116(sp)
  LW t2, 92(sp)
  SW t2, 92(sp)
  LW t2, 188(sp)
  SW t2, 188(sp)
  LW t2, 184(sp)
  SW t2, 184(sp)
  JAL zero, bb6
bb8:   # loop depth 0
  LW t0, 188(sp)
  SW t0, 188(sp)
  # implict jump to bb9
bb9:   # loop depth 0
  LUI t1, 2
  LW t0, 188(sp)
  SW t0, 188(sp)
  ADDIW t1, t1, 656
  LW t0, 188(sp)
  SW t0, 432(sp)
  ADDI t0, zero, 62
  SW t1, 436(sp)
  # implict jump to bb10
bb10:   # loop depth 1
  ADDIW t0, t0, -1
  SLLIW t1, t0, 2
  ADDIW t1, t1, 8
  ADDI t6, sp, 432
  ADD t1, t6, t1
  SW zero, 0(t1)
  BNE t0, zero, bb12
  # implict jump to bb11
bb11:   # loop depth 0
  LW t0, 436(sp)
  LW t2, 432(sp)
  ADDIW t1, t0, -1
  ADDIW a1, t0, -3
  ADDIW a2, t0, -4
  ADDIW a3, t0, -6
  ADDIW a4, t0, -7
  ADDW a5, t2, t0
  ADDIW a0, t2, -2
  ADDW a5, a5, t1
  ADDIW t1, t2, -3
  ADDW a5, a5, a0
  ADDIW a0, t2, -5
  ADDW a5, a5, t1
  ADDIW t1, t2, -6
  ADDW a5, a5, a1
  ADDIW a1, t2, -8
  ADDW a5, a5, a2
  ADDIW a2, t2, -9
  ADDW a5, a5, a0
  ADDIW a0, t0, -9
  ADDW a5, a5, t1
  ADDIW t1, t0, -10
  ADDW a5, a5, a3
  ADDIW a3, t2, -11
  ADDW a5, a5, a4
  ADDIW a4, t2, -12
  ADDW a5, a5, a1
  ADDIW a1, t0, -12
  ADDW a5, a5, a2
  ADDIW a2, t0, -13
  ADDW a5, a5, a0
  ADDIW a0, t2, -14
  ADDW a5, a5, t1
  ADDIW t1, t2, -15
  ADDW a5, a5, a3
  ADDIW a3, t0, -15
  ADDW a5, a5, a4
  ADDIW a4, t0, -16
  ADDW a5, a5, a1
  ADDIW a1, t2, -17
  ADDW a5, a5, a2
  ADDIW a2, t2, -18
  ADDW a5, a5, a0
  ADDIW a0, t0, -18
  ADDW a5, a5, t1
  ADDIW t1, t0, -19
  ADDW a5, a5, a3
  ADDIW a3, t2, -20
  ADDW a5, a5, a4
  ADDIW a4, t2, -21
  ADDW a5, a5, a1
  ADDIW a1, t0, -21
  ADDW a5, a5, a2
  ADDIW a2, t0, -22
  ADDW a5, a5, a0
  ADDIW a0, t2, -23
  ADDW a5, a5, t1
  ADDIW t1, t2, -24
  ADDW a5, a5, a3
  ADDIW a3, t0, -24
  ADDW a5, a5, a4
  ADDIW a4, t0, -25
  ADDW a5, a5, a1
  ADDIW a1, t2, -26
  ADDW a5, a5, a2
  ADDIW a2, t2, -27
  ADDW a5, a5, a0
  ADDIW a0, t0, -27
  ADDW a5, a5, t1
  ADDIW t1, t0, -28
  ADDW a5, a5, a3
  ADDIW a3, t2, -29
  ADDW a5, a5, a4
  ADDIW a4, t2, -30
  ADDW a5, a5, a1
  ADDIW a1, t0, -30
  ADDW a5, a5, a2
  ADDIW a2, t0, -31
  ADDW a5, a5, a0
  ADDIW a0, t2, -32
  ADDW a5, a5, t1
  ADDIW t1, t2, -33
  ADDW a5, a5, a3
  ADDIW a3, t0, -33
  ADDW a5, a5, a4
  ADDIW a4, t0, -34
  ADDW a5, a5, a1
  ADDIW a1, t2, -35
  ADDW a5, a5, a2
  ADDIW a2, t2, -36
  ADDW a5, a5, a0
  ADDIW a0, t0, -36
  ADDW a5, a5, t1
  ADDIW t1, t0, -37
  ADDW a5, a5, a3
  ADDIW a3, t2, -38
  ADDW a5, a5, a4
  ADDIW a4, t2, -39
  ADDW a5, a5, a1
  ADDIW a1, t0, -39
  ADDW a5, a5, a2
  ADDIW a2, t0, -40
  ADDW a5, a5, a0
  ADDIW a0, t2, -41
  ADDW a5, a5, t1
  ADDIW t1, t2, -42
  ADDW a5, a5, a3
  ADDIW a3, t0, -42
  ADDW a5, a5, a4
  ADDIW a4, t0, -43
  ADDW a5, a5, a1
  ADDIW a1, t2, -44
  ADDW a5, a5, a2
  ADDIW a2, t2, -45
  ADDW a5, a5, a0
  ADDIW a0, t0, -45
  ADDW t1, a5, t1
  ADDIW t0, t0, -46
  ADDW a3, t1, a3
  ADDIW t1, t2, -47
  ADDW t2, a3, a4
  ADDW t2, t2, a1
  ADDW t2, t2, a2
  ADDW t2, t2, a0
  ADDW t0, t2, t0
  ADDW a0, t0, t1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 280(sp)
  LD s0, 288(sp)
  LD s2, 296(sp)
  LD s3, 304(sp)
  LD s4, 312(sp)
  LD s6, 320(sp)
  LD s7, 328(sp)
  LD s8, 336(sp)
  LD s9, 344(sp)
  LD s10, 352(sp)
  LD s11, 360(sp)
  ADDI sp, sp, 688
  JALR zero, 0(ra)
bb12:   # loop depth 1
  JAL zero, bb10
bb13:   # loop depth 0
  LW t0, 188(sp)
  SW t0, 188(sp)
  JAL zero, bb9
bb14:   # loop depth 1
  ADD s10, a1, zero
  JAL zero, bb1
bb15:   # loop depth 1
  SLLIW a3, s10, 2
  ADD a2, a1, zero
  ADDI t6, sp, 368
  ADD a3, t6, a3
  # implict jump to bb16
bb16:   # loop depth 2
  LW a4, 0(a3)
  SLLIW t2, a2, 2
  ADDI a5, sp, 368
  ADD a5, a5, t2
  LW t2, 0(a5)
  BLT a4, t2, bb21
  # implict jump to bb17
bb17:   # loop depth 2
  # implict jump to bb18
bb18:   # loop depth 2
  ADDIW a2, a2, 1
  SLTI a4, a2, 16
  BNE a4, zero, bb20
  # implict jump to bb19
bb19:   # loop depth 1
  JAL zero, bb3
bb20:   # loop depth 2
  JAL zero, bb16
bb21:   # loop depth 2
  LW t2, 0(a3)
  LW a4, 0(a5)
  ADD s11, t2, zero
  SW a4, 0(a3)
  SW t2, 0(a5)
  JAL zero, bb18
