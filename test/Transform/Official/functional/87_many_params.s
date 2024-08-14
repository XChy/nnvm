.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -688
  SD ra, 272(sp)
  SD s0, 280(sp)
  SD s2, 288(sp)
  SD s4, 296(sp)
  SD s5, 304(sp)
  SD s6, 312(sp)
  SD s7, 320(sp)
  SD s8, 328(sp)
  SD s9, 336(sp)
  SD s10, 344(sp)
  SD s11, 352(sp)
  CALL getint
  ADD s11, zero, zero
  SW a0, 60(sp)
  ADD s10, zero, zero
  CALL getint
  SW a0, 64(sp)
  CALL getint
  SW a0, 68(sp)
  CALL getint
  SW a0, 72(sp)
  CALL getint
  SW a0, 76(sp)
  CALL getint
  SW a0, 120(sp)
  CALL getint
  SW a0, 160(sp)
  CALL getint
  SW a0, 224(sp)
  CALL getint
  ADD s8, a0, zero
  CALL getint
  ADD s9, a0, zero
  CALL getint
  SW a0, 136(sp)
  CALL getint
  SW a0, 140(sp)
  CALL getint
  SW a0, 144(sp)
  CALL getint
  SW a0, 148(sp)
  CALL getint
  SW a0, 152(sp)
  CALL getint
  LW t0, 60(sp)
  SW t0, 360(sp)
  LW t1, 64(sp)
  SW t1, 364(sp)
  LW t1, 68(sp)
  SW t1, 368(sp)
  LW t1, 72(sp)
  SW t1, 372(sp)
  LW t1, 76(sp)
  SW t1, 376(sp)
  LW t1, 120(sp)
  SW t1, 380(sp)
  LW t1, 160(sp)
  SW t1, 384(sp)
  LW t1, 224(sp)
  SW t1, 388(sp)
  SW s8, 392(sp)
  SW s9, 396(sp)
  LW t1, 136(sp)
  SW t1, 400(sp)
  LW t1, 140(sp)
  SW t1, 404(sp)
  LW t1, 144(sp)
  SW t1, 408(sp)
  LW t1, 148(sp)
  SW t1, 412(sp)
  LW t1, 152(sp)
  SW t1, 416(sp)
  SW a0, 420(sp)
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
  LW t0, 360(sp)
  SW t0, 84(sp)
  LW s10, 364(sp)
  LW t1, 368(sp)
  SW t1, 268(sp)
  LW t1, 372(sp)
  SW t1, 248(sp)
  LW t1, 376(sp)
  SW t1, 252(sp)
  LW t1, 380(sp)
  SW t1, 256(sp)
  LW t1, 384(sp)
  SW t1, 260(sp)
  LW t0, 388(sp)
  SW t0, 192(sp)
  LW t0, 392(sp)
  LW t1, 396(sp)
  SW t1, 172(sp)
  LW t1, 400(sp)
  SW t1, 196(sp)
  LW t1, 404(sp)
  SW t1, 104(sp)
  LW t1, 408(sp)
  SW t1, 108(sp)
  LW t1, 412(sp)
  SW t1, 112(sp)
  LW t1, 416(sp)
  SW t1, 116(sp)
  LW t1, 420(sp)
  SW t1, 80(sp)
  LW t1, 84(sp)
  BEQ t1, zero, bb13
  # implict jump to bb5
bb5:   # loop depth 0
  SW a0, 200(sp)
  LW t1, 152(sp)
  SW t1, 204(sp)
  LW t1, 148(sp)
  SW t1, 208(sp)
  LW t1, 144(sp)
  SW t1, 212(sp)
  LW t1, 140(sp)
  SW t1, 216(sp)
  LW t1, 136(sp)
  SW t1, 264(sp)
  SW s9, 220(sp)
  SW s8, 32(sp)
  LW t1, 224(sp)
  SW t1, 28(sp)
  LW t1, 160(sp)
  SW t1, 24(sp)
  LW t1, 120(sp)
  SW t1, 20(sp)
  LW t1, 76(sp)
  SW t1, 128(sp)
  LW t1, 128(sp)
  SW t1, 128(sp)
  LW s5, 72(sp)
  LW t1, 68(sp)
  SW t1, 124(sp)
  LW s2, 64(sp)
  LW t1, 60(sp)
  LW t2, 80(sp)
  SW t2, 80(sp)
  LW t2, 116(sp)
  SW t2, 116(sp)
  LW t2, 112(sp)
  SW t2, 112(sp)
  LW t2, 108(sp)
  SW t2, 108(sp)
  LW t2, 104(sp)
  SW t2, 104(sp)
  LW t2, 196(sp)
  SW t2, 196(sp)
  LW t2, 172(sp)
  SW t2, 172(sp)
  LW t2, 192(sp)
  SW t2, 192(sp)
  LW a6, 260(sp)
  LW a5, 256(sp)
  LW a4, 252(sp)
  LW a7, 248(sp)
  LW a0, 268(sp)
  LW t2, 84(sp)
  SW t2, 84(sp)
  # implict jump to bb6
bb6:   # loop depth 1
  LUI a1, 243712
  ADDIW a1, a1, 1
  ADDW a0, s10, a0
  LW t2, 84(sp)
  SW t2, 84(sp)
  REMW s10, a0, a1
  LW t2, 84(sp)
  ADDIW t2, t2, -1
  SW t2, 84(sp)
  ADD a0, a7, zero
  ADD a7, a4, zero
  ADD a4, a5, zero
  ADD a5, a6, zero
  LW a6, 192(sp)
  SW t0, 192(sp)
  LW t0, 172(sp)
  LW t2, 196(sp)
  SW t2, 172(sp)
  LW t2, 104(sp)
  SW t2, 196(sp)
  LW t2, 196(sp)
  SW t2, 196(sp)
  LW t3, 108(sp)
  LW t4, 112(sp)
  LW t5, 116(sp)
  LW s0, 80(sp)
  SW t1, 176(sp)
  ADD t1, s2, zero
  LW s2, 124(sp)
  SW s5, 124(sp)
  LW t2, 128(sp)
  SW t2, 88(sp)
  LW t2, 20(sp)
  SW t2, 156(sp)
  LW t2, 24(sp)
  SW t2, 92(sp)
  LW s4, 28(sp)
  LW s5, 32(sp)
  LW s6, 220(sp)
  LW s7, 264(sp)
  LW s9, 216(sp)
  SW s9, 228(sp)
  LW s9, 212(sp)
  SW s9, 232(sp)
  LW s9, 208(sp)
  SW s9, 236(sp)
  LW s9, 204(sp)
  SW s9, 240(sp)
  LW s9, 200(sp)
  SW s9, 244(sp)
  LW t2, 84(sp)
  BEQ t2, zero, bb8
  # implict jump to bb7
bb7:   # loop depth 1
  ADD s9, zero, zero
  SW s9, 200(sp)
  LW s9, 244(sp)
  SW s9, 204(sp)
  LW s9, 240(sp)
  SW s9, 208(sp)
  LW s9, 236(sp)
  SW s9, 212(sp)
  LW s9, 232(sp)
  SW s9, 216(sp)
  LW s9, 228(sp)
  SW s9, 264(sp)
  SW s7, 220(sp)
  SW s6, 32(sp)
  SW s5, 28(sp)
  SW s4, 24(sp)
  LW t2, 92(sp)
  SW t2, 20(sp)
  LW t2, 156(sp)
  SW t2, 128(sp)
  LW t2, 128(sp)
  SW t2, 128(sp)
  LW s5, 88(sp)
  LW t2, 124(sp)
  SW t2, 124(sp)
  LW t2, 176(sp)
  SW t2, 176(sp)
  LW t2, 176(sp)
  SW t2, 80(sp)
  SW s0, 116(sp)
  SW t5, 112(sp)
  SW t4, 108(sp)
  SW t3, 104(sp)
  LW t2, 196(sp)
  SW t2, 196(sp)
  LW t2, 172(sp)
  SW t2, 172(sp)
  LW t2, 192(sp)
  SW t2, 192(sp)
  LW t2, 84(sp)
  SW t2, 84(sp)
  JAL zero, bb6
bb8:   # loop depth 0
  # implict jump to bb9
bb9:   # loop depth 0
  LUI t1, 2
  ADDIW t1, t1, 656
  SW s10, 424(sp)
  ADDI t0, zero, 62
  SW t1, 428(sp)
  # implict jump to bb10
bb10:   # loop depth 1
  ADDIW t0, t0, -1
  SLLIW t1, t0, 2
  ADDIW t1, t1, 8
  ADDI t6, sp, 424
  ADD t1, t6, t1
  SW zero, 0(t1)
  BNE t0, zero, bb12
  # implict jump to bb11
bb11:   # loop depth 0
  LW t0, 428(sp)
  LW t2, 424(sp)
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
  LD ra, 272(sp)
  LD s0, 280(sp)
  LD s2, 288(sp)
  LD s4, 296(sp)
  LD s5, 304(sp)
  LD s6, 312(sp)
  LD s7, 320(sp)
  LD s8, 328(sp)
  LD s9, 336(sp)
  LD s10, 344(sp)
  LD s11, 352(sp)
  ADDI sp, sp, 688
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
  ADDI t6, sp, 360
  ADD a3, t6, a3
  # implict jump to bb16
bb16:   # loop depth 2
  LW a4, 0(a3)
  SLLIW t2, a2, 2
  ADDI a5, sp, 360
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
