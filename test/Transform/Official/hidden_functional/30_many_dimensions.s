.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  LUI t0, 1048064
  ADDIW t0, t0, -480
  ADD sp, sp, t0
  SD ra, 144(sp)
  SD s0, 152(sp)
  SD s1, 160(sp)
  SD s2, 168(sp)
  SD s3, 176(sp)
  SD s5, 184(sp)
  SD s4, 200(sp)
  SD s6, 208(sp)
  SD s7, 216(sp)
  SD s11, 232(sp)
  LUI a0, 128
  ADDIW a0, a0, 0
  ADD a0, zero, a0
  # implict jump to bb1
bb1:   # loop depth 1
  ADDI s1, zero, 0
  SLLIW s0, a0, 2
  ADDIW a0, a0, -1
  ADDI t6, sp, 304
  ADD s0, t6, s0
  SW s1, -4(s0)
  BNE a0, zero, bb57
  # implict jump to bb2
bb2:   # loop depth 0
  ADD s5, zero, zero
  ADD a0, zero, zero
  # implict jump to bb3
bb3:   # loop depth 1
  SW a0, 48(sp)
  LW a0, 48(sp)
  SLLIW s2, a0, 20
  ADD s0, zero, zero
  ADDI a0, sp, 304
  ADD a0, a0, s2
  LUI t6, 512
  ADDIW t6, t6, 424
  ADD t6, t6, sp
  SD a0, 0(t6)
  # implict jump to bb4
bb4:   # loop depth 2
  SW s0, 8(sp)
  LW a0, 8(sp)
  SLLIW s4, a0, 19
  ADD s1, zero, zero
  LUI a0, 512
  ADDIW a0, a0, 424
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s4
  LUI t6, 512
  ADDIW t6, t6, 416
  ADD t6, t6, sp
  SD a0, 0(t6)
  # implict jump to bb5
bb5:   # loop depth 3
  SW s1, 140(sp)
  LW a0, 140(sp)
  SLLIW s4, a0, 18
  ADD s2, zero, zero
  LUI a0, 512
  ADDIW a0, a0, 416
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s4
  LUI t6, 512
  ADDIW t6, t6, 408
  ADD t6, t6, sp
  SD a0, 0(t6)
  # implict jump to bb6
bb6:   # loop depth 4
  SW s2, 132(sp)
  LW a0, 132(sp)
  SLLIW s6, a0, 17
  ADD s4, zero, zero
  LUI a0, 512
  ADDIW a0, a0, 408
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s6
  LUI t6, 512
  ADDIW t6, t6, 400
  ADD t6, t6, sp
  SD a0, 0(t6)
  # implict jump to bb7
bb7:   # loop depth 5
  SW s4, 124(sp)
  LW a0, 124(sp)
  SLLIW s6, a0, 16
  ADD s4, zero, zero
  LUI a0, 512
  ADDIW a0, a0, 400
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s6
  LUI t6, 512
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  SD a0, 0(t6)
  # implict jump to bb8
bb8:   # loop depth 6
  SW s4, 120(sp)
  LW a0, 120(sp)
  SLLIW s6, a0, 15
  ADD s4, zero, zero
  LUI a0, 512
  ADDIW a0, a0, 392
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s6
  SD a0, 296(sp)
  # implict jump to bb9
bb9:   # loop depth 7
  SW s4, 112(sp)
  LW a0, 112(sp)
  SLLIW s6, a0, 14
  ADD s4, zero, zero
  LD a0, 296(sp)
  ADD a0, a0, s6
  LUI t6, 512
  ADDIW t6, t6, 376
  ADD t6, t6, sp
  SD a0, 0(t6)
  # implict jump to bb10
bb10:   # loop depth 8
  SW s4, 108(sp)
  LW a0, 108(sp)
  SLLIW s6, a0, 13
  ADD s4, zero, zero
  LUI a0, 512
  ADDIW a0, a0, 376
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s6
  LUI t6, 512
  ADDIW t6, t6, 368
  ADD t6, t6, sp
  SD a0, 0(t6)
  # implict jump to bb11
bb11:   # loop depth 9
  SW s4, 100(sp)
  LW a0, 100(sp)
  SLLIW s6, a0, 12
  ADD s4, zero, zero
  LUI a0, 512
  ADDIW a0, a0, 368
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s6
  LUI t6, 512
  ADDIW t6, t6, 360
  ADD t6, t6, sp
  SD a0, 0(t6)
  # implict jump to bb12
bb12:   # loop depth 10
  SW s4, 104(sp)
  LW a0, 104(sp)
  SLLIW s7, a0, 11
  ADD s6, zero, zero
  LUI a0, 512
  ADDIW a0, a0, 360
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s7
  LUI t6, 512
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SD a0, 0(t6)
  # implict jump to bb13
bb13:   # loop depth 11
  SLLIW a0, s6, 10
  SW a0, 116(sp)
  ADD s7, zero, zero
  LUI a0, 512
  ADDIW a0, a0, 352
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 116(sp)
  ADD a0, a0, s0
  LUI t6, 512
  ADDIW t6, t6, 344
  ADD t6, t6, sp
  SD a0, 0(t6)
  # implict jump to bb14
bb14:   # loop depth 12
  SLLIW a0, s7, 9
  SW a0, 92(sp)
  ADD s4, zero, zero
  LUI a0, 512
  ADDIW a0, a0, 344
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 92(sp)
  ADD a0, a0, s0
  LUI t6, 512
  ADDIW t6, t6, 336
  ADD t6, t6, sp
  SD a0, 0(t6)
  # implict jump to bb15
bb15:   # loop depth 13
  SW s4, 88(sp)
  LW a0, 88(sp)
  SLLIW a0, a0, 8
  SW a0, 84(sp)
  ADD s4, zero, zero
  LUI a0, 512
  ADDIW a0, a0, 336
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 84(sp)
  ADD a0, a0, s0
  LUI t6, 512
  ADDIW t6, t6, 328
  ADD t6, t6, sp
  SD a0, 0(t6)
  # implict jump to bb16
bb16:   # loop depth 14
  SW s4, 80(sp)
  LW a0, 80(sp)
  SLLIW a0, a0, 7
  SW a0, 76(sp)
  ADD s4, zero, zero
  LUI a0, 512
  ADDIW a0, a0, 328
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 76(sp)
  ADD a0, a0, s0
  LUI t6, 512
  ADDIW t6, t6, 320
  ADD t6, t6, sp
  SD a0, 0(t6)
  # implict jump to bb17
bb17:   # loop depth 15
  SW s4, 68(sp)
  LW a0, 68(sp)
  SLLIW a0, a0, 6
  SW a0, 64(sp)
  ADD s4, zero, zero
  LUI a0, 512
  ADDIW a0, a0, 320
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 64(sp)
  ADD a0, a0, s0
  LUI t6, 512
  ADDIW t6, t6, 312
  ADD t6, t6, sp
  SD a0, 0(t6)
  # implict jump to bb18
bb18:   # loop depth 16
  SW s4, 60(sp)
  LW a0, 60(sp)
  SLLIW a0, a0, 5
  SW a0, 56(sp)
  ADD s4, zero, zero
  LUI a0, 512
  ADDIW a0, a0, 312
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 56(sp)
  ADD a0, a0, s0
  LUI t6, 512
  ADDIW t6, t6, 304
  ADD t6, t6, sp
  SD a0, 0(t6)
  # implict jump to bb19
bb19:   # loop depth 17
  SLLIW a0, s4, 4
  SW a0, 4(sp)
  ADD a0, zero, zero
  SW a0, 12(sp)
  LUI a0, 512
  ADDIW a0, a0, 304
  ADD a0, a0, sp
  LD a0, 0(a0)
  LW s0, 4(sp)
  ADD a0, a0, s0
  SD a0, 280(sp)
  # implict jump to bb20
bb20:   # loop depth 18
  LW a0, 12(sp)
  SW a0, 44(sp)
  LW a0, 44(sp)
  LD s0, 280(sp)
  SH3ADD a0, a0, s0
  LUI t6, 512
  ADDIW t6, t6, 432
  ADD t6, t6, sp
  SD a0, 0(t6)
  LW a0, 44(sp)
  ADDIW a0, a0, 1
  SW a0, 32(sp)
  ADDIW a0, s5, 1
  SW a0, 36(sp)
  LUI a0, 512
  ADDIW a0, a0, 432
  ADD a0, a0, sp
  LD a0, 0(a0)
  SW s5, 0(a0)
  LW a0, 32(sp)
  SLTI a0, a0, 2
  SB a0, 1(sp)
  ADDIW s5, s5, 2
  LW a0, 36(sp)
  LUI t6, 512
  ADDIW t6, t6, 432
  ADD t6, t6, sp
  LD s0, 0(t6)
  SW a0, 4(s0)
  LB a0, 1(sp)
  BNE a0, zero, bb56
  # implict jump to bb21
bb21:   # loop depth 17
  ADDIW s4, s4, 1
  SLTI a0, s4, 2
  SB a0, 0(sp)
  LB a0, 0(sp)
  BNE a0, zero, bb55
  # implict jump to bb22
bb22:   # loop depth 16
  LW a0, 60(sp)
  ADDIW a0, a0, 1
  SW a0, 28(sp)
  LW a0, 28(sp)
  SLTI s4, a0, 2
  BNE s4, zero, bb54
  # implict jump to bb23
bb23:   # loop depth 15
  LW a0, 68(sp)
  ADDIW a0, a0, 1
  SW a0, 24(sp)
  LW a0, 24(sp)
  SLTI s4, a0, 2
  BNE s4, zero, bb53
  # implict jump to bb24
bb24:   # loop depth 14
  LW a0, 80(sp)
  ADDIW a0, a0, 1
  SW a0, 20(sp)
  LW a0, 20(sp)
  SLTI s4, a0, 2
  BNE s4, zero, bb52
  # implict jump to bb25
bb25:   # loop depth 13
  LW a0, 88(sp)
  ADDIW a0, a0, 1
  SW a0, 16(sp)
  LW a0, 16(sp)
  SLTI s4, a0, 2
  BNE s4, zero, bb51
  # implict jump to bb26
bb26:   # loop depth 12
  ADDIW s7, s7, 1
  SLTI s11, s7, 2
  BNE s11, zero, bb50
  # implict jump to bb27
bb27:   # loop depth 11
  ADDIW s6, s6, 1
  SLTI s7, s6, 2
  BNE s7, zero, bb49
  # implict jump to bb28
bb28:   # loop depth 10
  LW a0, 104(sp)
  ADDIW s4, a0, 1
  SLTI s6, s4, 2
  BNE s6, zero, bb48
  # implict jump to bb29
bb29:   # loop depth 9
  LW a0, 100(sp)
  ADDIW s4, a0, 1
  SLTI s6, s4, 2
  BNE s6, zero, bb47
  # implict jump to bb30
bb30:   # loop depth 8
  LW a0, 108(sp)
  ADDIW s4, a0, 1
  SLTI s6, s4, 2
  BNE s6, zero, bb46
  # implict jump to bb31
bb31:   # loop depth 7
  LW a0, 112(sp)
  ADDIW s4, a0, 1
  SLTI s6, s4, 2
  BNE s6, zero, bb45
  # implict jump to bb32
bb32:   # loop depth 6
  LW a0, 120(sp)
  ADDIW s4, a0, 1
  SLTI s6, s4, 2
  BNE s6, zero, bb44
  # implict jump to bb33
bb33:   # loop depth 5
  LW a0, 124(sp)
  ADDIW s4, a0, 1
  SLTI s6, s4, 2
  BNE s6, zero, bb43
  # implict jump to bb34
bb34:   # loop depth 4
  LW a0, 132(sp)
  ADDIW s2, a0, 1
  SLTI s4, s2, 2
  BNE s4, zero, bb42
  # implict jump to bb35
bb35:   # loop depth 3
  LW a0, 140(sp)
  ADDIW s1, a0, 1
  SLTI s2, s1, 2
  BNE s2, zero, bb41
  # implict jump to bb36
bb36:   # loop depth 2
  LW a0, 8(sp)
  ADDIW s0, a0, 1
  SLTI s1, s0, 2
  BNE s1, zero, bb40
  # implict jump to bb37
bb37:   # loop depth 1
  LW a0, 48(sp)
  ADDIW a0, a0, 1
  SLTI s0, a0, 2
  BNE s0, zero, bb39
  # implict jump to bb38
bb38:   # loop depth 0
  LW a0, 304(sp)
  LUI s0, 1
  ADDIW s0, s0, -872
  LUI s1, 6
  ADDI t6, sp, 304
  ADD s2, t6, s0
  ADDIW s1, s1, 1824
  LW s0, 312(sp)
  ADDI t6, sp, 304
  ADD s3, t6, s1
  LUI s4, 60
  LUI s5, 4
  ADDIW s4, s4, 912
  ADDIW s5, s5, -428
  LW s1, 308(sp)
  ADDW a0, a0, s0
  ADDI t6, sp, 304
  ADD s4, t6, s4
  ADDI t6, sp, 304
  ADD s5, t6, s5
  LUI s6, 202
  LUI s7, 69
  LW s0, 344(sp)
  ADDW a0, a0, s1
  ADDIW s6, s6, 972
  ADDIW s7, s7, -1024
  ADDI t6, sp, 304
  ADD s6, t6, s6
  ADDI t6, sp, 304
  ADD s7, t6, s7
  LW s1, 328(sp)
  ADDW a0, a0, s0
  LW s0, 532(sp)
  ADDW a0, a0, s1
  LW s1, 360(sp)
  ADDW a0, a0, s0
  LW s0, 1268(sp)
  ADDW a0, a0, s1
  LW s1, 528(sp)
  ADDW a0, a0, s0
  LW s0, 1108(sp)
  ADDW a0, a0, s1
  ADDI t6, sp, 304
  LW s1, 1996(t6)
  ADDW a0, a0, s0
  LW s0, 0(s2)
  ADDW a0, a0, s1
  LW s1, 0(s3)
  ADDW a0, a0, s0
  LW s0, 812(sp)
  ADDW a0, a0, s1
  LW s1, 428(sp)
  ADDW a0, a0, s0
  LW s0, 0(s4)
  ADDW a0, a0, s1
  LW s1, 0(s5)
  ADDW a0, a0, s0
  LW s0, 0(s6)
  ADDW a0, a0, s1
  LW s1, 0(s7)
  ADDW a0, a0, s0
  ADDW a0, a0, s1
  CALL putint
  ADD a0, zero, zero
  LD ra, 144(sp)
  LD s0, 152(sp)
  LD s1, 160(sp)
  LD s2, 168(sp)
  LD s3, 176(sp)
  LD s5, 184(sp)
  LD s4, 200(sp)
  LD s6, 208(sp)
  LD s7, 216(sp)
  LD s11, 232(sp)
  LUI t0, 512
  ADDIW t0, t0, 480
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb39:   # loop depth 1
  JAL zero, bb3
bb40:   # loop depth 2
  JAL zero, bb4
bb41:   # loop depth 3
  JAL zero, bb5
bb42:   # loop depth 4
  JAL zero, bb6
bb43:   # loop depth 5
  JAL zero, bb7
bb44:   # loop depth 6
  JAL zero, bb8
bb45:   # loop depth 7
  JAL zero, bb9
bb46:   # loop depth 8
  JAL zero, bb10
bb47:   # loop depth 9
  JAL zero, bb11
bb48:   # loop depth 10
  JAL zero, bb12
bb49:   # loop depth 11
  JAL zero, bb13
bb50:   # loop depth 12
  JAL zero, bb14
bb51:   # loop depth 13
  LW s4, 16(sp)
  JAL zero, bb15
bb52:   # loop depth 14
  LW s4, 20(sp)
  JAL zero, bb16
bb53:   # loop depth 15
  LW s4, 24(sp)
  JAL zero, bb17
bb54:   # loop depth 16
  LW s4, 28(sp)
  JAL zero, bb18
bb55:   # loop depth 17
  JAL zero, bb19
bb56:   # loop depth 18
  LW a0, 32(sp)
  SW a0, 12(sp)
  JAL zero, bb20
bb57:   # loop depth 1
  JAL zero, bb1
