.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -704
  SD ra, 280(sp)
  SD s0, 288(sp)
  SD s1, 296(sp)
  SD s2, 304(sp)
  SD s3, 312(sp)
  SD s4, 320(sp)
  SD s5, 328(sp)
  SD s6, 336(sp)
  SD s8, 344(sp)
  SD s9, 352(sp)
  SD s10, 360(sp)
  SD s11, 368(sp)
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
  SW a0, 232(sp)
  CALL getint
  SW a0, 236(sp)
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
  SW t0, 376(sp)
  LW t1, 72(sp)
  SW t1, 380(sp)
  LW t1, 76(sp)
  SW t1, 384(sp)
  LW t1, 80(sp)
  SW t1, 388(sp)
  LW t1, 124(sp)
  SW t1, 392(sp)
  LW t1, 164(sp)
  SW t1, 396(sp)
  LW t1, 232(sp)
  SW t1, 400(sp)
  LW t1, 236(sp)
  SW t1, 404(sp)
  SW s8, 408(sp)
  SW s9, 412(sp)
  LW t1, 148(sp)
  SW t1, 416(sp)
  LW t1, 152(sp)
  SW t1, 420(sp)
  LW t1, 156(sp)
  SW t1, 424(sp)
  LW t1, 160(sp)
  SW t1, 428(sp)
  LW t1, 44(sp)
  SW t1, 432(sp)
  SW a0, 436(sp)
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
  LW t0, 376(sp)
  SW t0, 92(sp)
  LW s10, 380(sp)
  LW a1, 384(sp)
  SW a1, 260(sp)
  LW a1, 388(sp)
  SW a1, 264(sp)
  LW a1, 392(sp)
  SW a1, 268(sp)
  LW a1, 396(sp)
  SW a1, 272(sp)
  LW a1, 400(sp)
  SW a1, 224(sp)
  LW t0, 404(sp)
  SW t0, 192(sp)
  LW t0, 408(sp)
  SW t0, 196(sp)
  LW t0, 412(sp)
  SW t0, 176(sp)
  LW t0, 416(sp)
  SW t0, 88(sp)
  LW t0, 420(sp)
  SW t0, 116(sp)
  LW t0, 424(sp)
  SW t0, 120(sp)
  LW t0, 428(sp)
  SW t0, 84(sp)
  LW t0, 432(sp)
  SW t0, 128(sp)
  LW t0, 436(sp)
  SW t0, 132(sp)
  LW t0, 92(sp)
  BEQ t0, zero, bb13
  # implict jump to bb5
bb5:   # loop depth 0
  SW a0, 200(sp)
  LW a0, 44(sp)
  SW a0, 204(sp)
  LW a0, 160(sp)
  SW a0, 208(sp)
  LW a0, 156(sp)
  SW a0, 212(sp)
  LW a0, 152(sp)
  SW a0, 216(sp)
  LW a0, 148(sp)
  SW a0, 220(sp)
  SW s9, 228(sp)
  SW s8, 40(sp)
  LW a0, 236(sp)
  SW a0, 36(sp)
  LW a0, 232(sp)
  SW a0, 32(sp)
  LW a0, 164(sp)
  SW a0, 28(sp)
  LW t0, 124(sp)
  SW t0, 140(sp)
  LW t0, 140(sp)
  SW t0, 140(sp)
  LW t0, 80(sp)
  SW t0, 136(sp)
  LW t0, 136(sp)
  SW t0, 136(sp)
  LW s3, 76(sp)
  LW s4, 72(sp)
  LW s1, 68(sp)
  LW t0, 132(sp)
  SW t0, 132(sp)
  LW t0, 128(sp)
  SW t0, 128(sp)
  LW t0, 84(sp)
  SW t0, 84(sp)
  LW t0, 120(sp)
  SW t0, 120(sp)
  LW t0, 116(sp)
  SW t0, 116(sp)
  LW t0, 88(sp)
  SW t0, 88(sp)
  LW t0, 176(sp)
  SW t0, 176(sp)
  LW t0, 196(sp)
  SW t0, 196(sp)
  LW t0, 192(sp)
  SW t0, 192(sp)
  LW a5, 224(sp)
  LW a6, 272(sp)
  LW a7, 268(sp)
  LW t3, 264(sp)
  LW t1, 260(sp)
  LW t0, 92(sp)
  SW t0, 92(sp)
  # implict jump to bb6
bb6:   # loop depth 1
  LUI t2, 243712
  ADDIW t2, t2, 1
  ADDW t1, s10, t1
  LW t0, 92(sp)
  SW t0, 92(sp)
  REMW s10, t1, t2
  LW t0, 92(sp)
  ADDIW t0, t0, -1
  SW t0, 92(sp)
  ADD t1, t3, zero
  ADD t3, a7, zero
  ADD a7, a6, zero
  ADD a6, a5, zero
  LW a5, 192(sp)
  LW t0, 196(sp)
  SW t0, 192(sp)
  LW t0, 176(sp)
  SW t0, 196(sp)
  LW t0, 88(sp)
  SW t0, 176(sp)
  LW t0, 116(sp)
  SW t0, 88(sp)
  LW t0, 88(sp)
  SW t0, 88(sp)
  LW t0, 120(sp)
  SW t0, 184(sp)
  LW t0, 184(sp)
  SW t0, 184(sp)
  LW t0, 84(sp)
  SW t0, 180(sp)
  LW t0, 180(sp)
  SW t0, 180(sp)
  LW t4, 128(sp)
  LW t5, 132(sp)
  ADD s0, s1, zero
  ADD s1, s4, zero
  SW s3, 96(sp)
  LW t0, 136(sp)
  SW t0, 100(sp)
  LW t0, 140(sp)
  SW t0, 104(sp)
  LW s2, 28(sp)
  SW s2, 4(sp)
  LW s2, 32(sp)
  LW s3, 36(sp)
  SW s3, 108(sp)
  LW s3, 40(sp)
  LW s4, 228(sp)
  LW s5, 220(sp)
  LW s6, 216(sp)
  SW s6, 240(sp)
  LW s6, 212(sp)
  SW s6, 244(sp)
  LW s6, 208(sp)
  SW s6, 248(sp)
  LW s6, 204(sp)
  SW s6, 252(sp)
  LW s6, 200(sp)
  SW s6, 256(sp)
  LW t0, 92(sp)
  BEQ t0, zero, bb8
  # implict jump to bb7
bb7:   # loop depth 1
  ADD s6, zero, zero
  SW s6, 200(sp)
  LW s6, 256(sp)
  SW s6, 204(sp)
  LW s6, 252(sp)
  SW s6, 208(sp)
  LW s6, 248(sp)
  SW s6, 212(sp)
  LW s6, 244(sp)
  SW s6, 216(sp)
  LW s6, 240(sp)
  SW s6, 220(sp)
  SW s5, 228(sp)
  SW s4, 40(sp)
  SW s3, 36(sp)
  LW s3, 108(sp)
  SW s3, 32(sp)
  SW s2, 28(sp)
  LW t0, 4(sp)
  SW t0, 140(sp)
  LW t0, 140(sp)
  SW t0, 140(sp)
  LW t0, 104(sp)
  SW t0, 136(sp)
  LW s3, 100(sp)
  LW s4, 96(sp)
  SW s0, 132(sp)
  SW t5, 128(sp)
  SW t4, 84(sp)
  LW t0, 180(sp)
  SW t0, 180(sp)
  LW t0, 180(sp)
  SW t0, 120(sp)
  LW t0, 184(sp)
  SW t0, 184(sp)
  LW t0, 184(sp)
  SW t0, 116(sp)
  LW t0, 88(sp)
  SW t0, 88(sp)
  LW t0, 176(sp)
  SW t0, 176(sp)
  LW t0, 196(sp)
  SW t0, 196(sp)
  LW t0, 192(sp)
  SW t0, 192(sp)
  LW t0, 92(sp)
  SW t0, 92(sp)
  JAL zero, bb6
bb8:   # loop depth 0
  # implict jump to bb9
bb9:   # loop depth 0
  LUI t1, 2
  ADDIW t1, t1, 656
  SW s10, 440(sp)
  ADDI t0, zero, 62
  SW t1, 444(sp)
  # implict jump to bb10
bb10:   # loop depth 1
  ADDIW t0, t0, -1
  SLLIW t1, t0, 2
  ADDIW t1, t1, 8
  ADDI t6, sp, 440
  ADD t1, t6, t1
  SW zero, 0(t1)
  BNE t0, zero, bb12
  # implict jump to bb11
bb11:   # loop depth 0
  LW t0, 444(sp)
  LW t2, 440(sp)
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
  LD s1, 296(sp)
  LD s2, 304(sp)
  LD s3, 312(sp)
  LD s4, 320(sp)
  LD s5, 328(sp)
  LD s6, 336(sp)
  LD s8, 344(sp)
  LD s9, 352(sp)
  LD s10, 360(sp)
  LD s11, 368(sp)
  ADDI sp, sp, 704
  JALR zero, 0(ra)
bb12:   # loop depth 1
  JAL zero, bb10
bb13:   # loop depth 0
  JAL zero, bb9
bb14:   # loop depth 1
  ADD s10, a1, zero
  JAL zero, bb1
bb15:   # loop depth 1
  SLLIW a3, s10, 2
  ADD a2, a1, zero
  ADDI t6, sp, 376
  ADD a3, t6, a3
  # implict jump to bb16
bb16:   # loop depth 2
  LW a4, 0(a3)
  SLLIW t2, a2, 2
  ADDI a5, sp, 376
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
