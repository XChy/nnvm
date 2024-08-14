.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -672
  SD ra, 264(sp)
  SD s0, 272(sp)
  SD s1, 280(sp)
  SD s2, 288(sp)
  SD s3, 296(sp)
  SD s4, 304(sp)
  SD s6, 312(sp)
  SD s8, 320(sp)
  SD s9, 328(sp)
  SD s10, 336(sp)
  SD s11, 344(sp)
  CALL getint
  ADD s11, zero, zero
  SW a0, 52(sp)
  ADD s10, zero, zero
  CALL getint
  SW a0, 56(sp)
  CALL getint
  SW a0, 60(sp)
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
  ADD s8, a0, zero
  CALL getint
  ADD s9, a0, zero
  CALL getint
  SW a0, 124(sp)
  CALL getint
  SW a0, 128(sp)
  CALL getint
  SW a0, 132(sp)
  CALL getint
  SW a0, 136(sp)
  CALL getint
  SW a0, 140(sp)
  CALL getint
  LW t0, 52(sp)
  SW t0, 352(sp)
  LW t1, 56(sp)
  SW t1, 356(sp)
  LW t1, 60(sp)
  SW t1, 360(sp)
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
  SW s8, 384(sp)
  SW s9, 388(sp)
  LW t1, 124(sp)
  SW t1, 392(sp)
  LW t1, 128(sp)
  SW t1, 396(sp)
  LW t1, 132(sp)
  SW t1, 400(sp)
  LW t1, 136(sp)
  SW t1, 404(sp)
  LW t1, 140(sp)
  SW t1, 408(sp)
  SW a0, 412(sp)
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
  LW s10, 352(sp)
  LW s11, 356(sp)
  LW t1, 360(sp)
  SW t1, 236(sp)
  LW t1, 364(sp)
  SW t1, 240(sp)
  LW t1, 368(sp)
  SW t1, 244(sp)
  LW t1, 372(sp)
  SW t1, 248(sp)
  LW t1, 376(sp)
  SW t1, 252(sp)
  LW t0, 380(sp)
  SW t0, 176(sp)
  LW t1, 384(sp)
  LW t4, 388(sp)
  LW t0, 392(sp)
  SW t0, 88(sp)
  LW t0, 396(sp)
  SW t0, 92(sp)
  LW t0, 400(sp)
  SW t0, 96(sp)
  LW t0, 404(sp)
  SW t0, 100(sp)
  LW t0, 408(sp)
  SW t0, 104(sp)
  LW t0, 412(sp)
  SW t0, 108(sp)
  BEQ s10, zero, bb13
  # implict jump to bb5
bb5:   # loop depth 0
  SW a0, 196(sp)
  LW t0, 140(sp)
  SW t0, 200(sp)
  LW t0, 136(sp)
  SW t0, 204(sp)
  LW t0, 132(sp)
  SW t0, 208(sp)
  LW t0, 128(sp)
  SW t0, 216(sp)
  LW t0, 124(sp)
  SW t0, 212(sp)
  SW s9, 256(sp)
  SW s8, 24(sp)
  LW t0, 120(sp)
  SW t0, 20(sp)
  LW t0, 76(sp)
  SW t0, 16(sp)
  LW t0, 72(sp)
  SW t0, 12(sp)
  LW t0, 68(sp)
  SW t0, 116(sp)
  LW t0, 116(sp)
  SW t0, 116(sp)
  LW t0, 64(sp)
  SW t0, 112(sp)
  LW t0, 112(sp)
  SW t0, 112(sp)
  LW s3, 60(sp)
  LW s4, 56(sp)
  LW s1, 52(sp)
  LW t0, 108(sp)
  SW t0, 108(sp)
  LW t0, 104(sp)
  SW t0, 104(sp)
  LW t0, 100(sp)
  SW t0, 100(sp)
  LW t0, 96(sp)
  SW t0, 96(sp)
  LW t0, 92(sp)
  SW t0, 92(sp)
  LW t0, 88(sp)
  SW t0, 88(sp)
  LW t0, 176(sp)
  SW t0, 176(sp)
  LW t0, 252(sp)
  SW t0, 164(sp)
  LW t0, 164(sp)
  SW t0, 164(sp)
  LW a4, 248(sp)
  LW t0, 244(sp)
  LW t2, 240(sp)
  SW t2, 160(sp)
  LW t2, 160(sp)
  SW t2, 160(sp)
  LW a3, 236(sp)
  # implict jump to bb6
bb6:   # loop depth 1
  LUI a0, 243712
  ADDIW a0, a0, 1
  ADDW t2, s11, a3
  REMW s11, t2, a0
  ADDIW s10, s10, -1
  LW a3, 160(sp)
  SW t0, 160(sp)
  ADD t0, a4, zero
  LW a4, 164(sp)
  LW t2, 176(sp)
  SW t2, 164(sp)
  LW t2, 164(sp)
  SW t2, 164(sp)
  SW t1, 176(sp)
  ADD t1, t4, zero
  LW t4, 88(sp)
  LW a6, 92(sp)
  LW a7, 96(sp)
  LW t3, 100(sp)
  LW t2, 104(sp)
  SW t2, 168(sp)
  LW t2, 168(sp)
  SW t2, 168(sp)
  LW t5, 108(sp)
  ADD s0, s1, zero
  ADD s1, s4, zero
  SW s3, 180(sp)
  LW t2, 112(sp)
  SW t2, 184(sp)
  LW t2, 116(sp)
  SW t2, 188(sp)
  LW t2, 12(sp)
  SW t2, 144(sp)
  LW t2, 16(sp)
  SW t2, 192(sp)
  LW t2, 192(sp)
  SW t2, 192(sp)
  LW s2, 20(sp)
  LW t2, 24(sp)
  SW t2, 84(sp)
  LW t2, 84(sp)
  SW t2, 84(sp)
  LW s3, 256(sp)
  LW s4, 212(sp)
  LW s6, 216(sp)
  SW s6, 156(sp)
  LW s6, 208(sp)
  SW s6, 220(sp)
  LW s6, 204(sp)
  SW s6, 224(sp)
  LW s6, 200(sp)
  SW s6, 228(sp)
  LW s6, 196(sp)
  SW s6, 232(sp)
  BEQ s10, zero, bb8
  # implict jump to bb7
bb7:   # loop depth 1
  ADD s6, zero, zero
  SW s6, 196(sp)
  LW s6, 232(sp)
  SW s6, 200(sp)
  LW s6, 228(sp)
  SW s6, 204(sp)
  LW s6, 224(sp)
  SW s6, 208(sp)
  LW s6, 220(sp)
  SW s6, 216(sp)
  LW s6, 156(sp)
  SW s6, 212(sp)
  SW s4, 256(sp)
  SW s3, 24(sp)
  LW t2, 84(sp)
  SW t2, 20(sp)
  SW s2, 16(sp)
  LW t2, 192(sp)
  SW t2, 12(sp)
  LW t2, 144(sp)
  SW t2, 116(sp)
  LW t2, 116(sp)
  SW t2, 116(sp)
  LW t2, 188(sp)
  SW t2, 112(sp)
  LW s3, 184(sp)
  LW s4, 180(sp)
  SW s0, 108(sp)
  SW t5, 104(sp)
  LW t2, 168(sp)
  SW t2, 168(sp)
  LW t2, 168(sp)
  SW t2, 100(sp)
  SW t3, 96(sp)
  SW a7, 92(sp)
  SW a6, 88(sp)
  LW t2, 176(sp)
  SW t2, 176(sp)
  LW t2, 164(sp)
  SW t2, 164(sp)
  LW t2, 160(sp)
  SW t2, 160(sp)
  JAL zero, bb6
bb8:   # loop depth 0
  # implict jump to bb9
bb9:   # loop depth 0
  LUI t1, 2
  ADDIW t1, t1, 656
  SW s11, 416(sp)
  ADDI t0, zero, 62
  SW t1, 420(sp)
  # implict jump to bb10
bb10:   # loop depth 1
  ADDIW t0, t0, -1
  SLLIW t1, t0, 2
  ADDIW t1, t1, 8
  ADDI t6, sp, 416
  ADD t1, t6, t1
  SW zero, 0(t1)
  BNE t0, zero, bb12
  # implict jump to bb11
bb11:   # loop depth 0
  LW t0, 420(sp)
  LW t2, 416(sp)
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
  LD ra, 264(sp)
  LD s0, 272(sp)
  LD s1, 280(sp)
  LD s2, 288(sp)
  LD s3, 296(sp)
  LD s4, 304(sp)
  LD s6, 312(sp)
  LD s8, 320(sp)
  LD s9, 328(sp)
  LD s10, 336(sp)
  LD s11, 344(sp)
  ADDI sp, sp, 672
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
  ADDI t6, sp, 352
  ADD a3, t6, a3
  # implict jump to bb16
bb16:   # loop depth 2
  LW a4, 0(a3)
  SLLIW t2, a2, 2
  ADDI a5, sp, 352
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
