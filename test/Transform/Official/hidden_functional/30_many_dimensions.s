.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  LUI t0, 1048064
  ADDIW t0, t0, -400
  ADD sp, sp, t0
  SD ra, 160(sp)
  SD s0, 168(sp)
  SD s1, 176(sp)
  SD s2, 184(sp)
  SD s3, 192(sp)
  SD s4, 200(sp)
  SD s6, 208(sp)
  SD s7, 216(sp)
  SD s8, 224(sp)
  SD s9, 232(sp)
  SD s10, 240(sp)
  SD s11, 248(sp)
  LUI a0, 128
  ADDIW a0, a0, 0
  ADD a0, zero, a0
  # implict jump to bb1
bb1:   # loop depth 1
  ADDIW a0, a0, -1
  SLLIW s0, a0, 2
  ADDI t6, sp, 264
  ADD s0, t6, s0
  ADDI s1, zero, 0
  SW s1, 0(s0)
  BNE a0, zero, bb57
  # implict jump to bb2
bb2:   # loop depth 0
  ADD s3, zero, zero
  ADD a0, zero, zero
  # implict jump to bb3
bb3:   # loop depth 1
  SW a0, 116(sp)
  ADD s1, zero, zero
  # implict jump to bb4
bb4:   # loop depth 2
  SW s1, 124(sp)
  ADD a0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 3
  SW a0, 128(sp)
  ADD a0, zero, zero
  # implict jump to bb6
bb6:   # loop depth 4
  SW a0, 92(sp)
  ADD s6, zero, zero
  # implict jump to bb7
bb7:   # loop depth 5
  SW s6, 136(sp)
  ADD s6, zero, zero
  # implict jump to bb8
bb8:   # loop depth 6
  SW s6, 140(sp)
  ADD s6, zero, zero
  # implict jump to bb9
bb9:   # loop depth 7
  SW s6, 144(sp)
  ADD s4, zero, zero
  # implict jump to bb10
bb10:   # loop depth 8
  SW s4, 152(sp)
  ADD s11, zero, zero
  # implict jump to bb11
bb11:   # loop depth 9
  ADD s4, zero, zero
  # implict jump to bb12
bb12:   # loop depth 10
  ADD s6, s4, zero
  ADD s4, zero, zero
  # implict jump to bb13
bb13:   # loop depth 11
  ADD s7, s4, zero
  ADD s4, zero, zero
  # implict jump to bb14
bb14:   # loop depth 12
  ADD s8, s4, zero
  ADD s4, zero, zero
  # implict jump to bb15
bb15:   # loop depth 13
  ADD s9, s4, zero
  ADD a0, zero, zero
  SW a0, 32(sp)
  # implict jump to bb16
bb16:   # loop depth 14
  LW a0, 32(sp)
  SW a0, 32(sp)
  ADD s4, zero, zero
  # implict jump to bb17
bb17:   # loop depth 15
  ADD s10, zero, zero
  # implict jump to bb18
bb18:   # loop depth 16
  ADD a0, zero, zero
  SW a0, 100(sp)
  # implict jump to bb19
bb19:   # loop depth 17
  LW a0, 100(sp)
  SW a0, 72(sp)
  ADD a0, zero, zero
  SW a0, 96(sp)
  # implict jump to bb20
bb20:   # loop depth 18
  LW a0, 96(sp)
  SW a0, 84(sp)
  LW a0, 116(sp)
  SLLIW a0, a0, 20
  SW a0, 88(sp)
  LW a0, 88(sp)
  ADDI t6, sp, 264
  ADD a0, t6, a0
  LUI t6, 512
  ADDIW t6, t6, 320
  ADD t6, t6, sp
  SD a0, 0(t6)
  LW a0, 124(sp)
  SLLIW a0, a0, 19
  SW a0, 80(sp)
  LW s0, 80(sp)
  LUI a0, 512
  ADDIW a0, a0, 320
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s0
  LUI t6, 512
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  SD a0, 0(t6)
  LW a0, 128(sp)
  SLLIW a0, a0, 18
  SW a0, 76(sp)
  LW s0, 76(sp)
  LUI a0, 512
  ADDIW a0, a0, 392
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s0
  LUI t6, 512
  ADDIW t6, t6, 384
  ADD t6, t6, sp
  SD a0, 0(t6)
  LW a0, 92(sp)
  SLLIW a0, a0, 17
  SW a0, 68(sp)
  LW s0, 68(sp)
  LUI a0, 512
  ADDIW a0, a0, 384
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s0
  LUI t6, 512
  ADDIW t6, t6, 376
  ADD t6, t6, sp
  SD a0, 0(t6)
  LW a0, 136(sp)
  SLLIW a0, a0, 16
  SW a0, 60(sp)
  LW s0, 60(sp)
  LUI a0, 512
  ADDIW a0, a0, 376
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s0
  LUI t6, 512
  ADDIW t6, t6, 368
  ADD t6, t6, sp
  SD a0, 0(t6)
  LW a0, 140(sp)
  SLLIW a0, a0, 15
  SW a0, 52(sp)
  LW s0, 52(sp)
  LUI a0, 512
  ADDIW a0, a0, 368
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s0
  LUI t6, 512
  ADDIW t6, t6, 360
  ADD t6, t6, sp
  SD a0, 0(t6)
  LW a0, 144(sp)
  SLLIW a0, a0, 14
  SW a0, 44(sp)
  LW s0, 44(sp)
  LUI a0, 512
  ADDIW a0, a0, 360
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s0
  LUI t6, 512
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SD a0, 0(t6)
  LW a0, 152(sp)
  SLLIW a0, a0, 13
  SW a0, 36(sp)
  LW s0, 36(sp)
  LUI a0, 512
  ADDIW a0, a0, 352
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s0
  LUI t6, 512
  ADDIW t6, t6, 344
  ADD t6, t6, sp
  SD a0, 0(t6)
  SLLIW a0, s11, 12
  SW a0, 28(sp)
  LW s0, 28(sp)
  LUI a0, 512
  ADDIW a0, a0, 344
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s0
  LUI t6, 512
  ADDIW t6, t6, 336
  ADD t6, t6, sp
  SD a0, 0(t6)
  SLLIW a0, s6, 11
  SW a0, 24(sp)
  LW s0, 24(sp)
  LUI a0, 512
  ADDIW a0, a0, 336
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s0
  LUI t6, 512
  ADDIW t6, t6, 328
  ADD t6, t6, sp
  SD a0, 0(t6)
  SLLIW a0, s7, 10
  SW a0, 20(sp)
  LW s0, 20(sp)
  LUI a0, 512
  ADDIW a0, a0, 328
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s0
  SD a0, 256(sp)
  SLLIW a0, s8, 9
  SW a0, 16(sp)
  LW s0, 16(sp)
  LD a0, 256(sp)
  ADD a0, a0, s0
  LUI t6, 512
  ADDIW t6, t6, 312
  ADD t6, t6, sp
  SD a0, 0(t6)
  SLLIW a0, s9, 8
  SW a0, 12(sp)
  LW s0, 12(sp)
  LUI a0, 512
  ADDIW a0, a0, 312
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s0
  LUI t6, 512
  ADDIW t6, t6, 304
  ADD t6, t6, sp
  SD a0, 0(t6)
  LW a0, 32(sp)
  SLLIW a0, a0, 7
  SW a0, 48(sp)
  LW s0, 48(sp)
  LUI a0, 512
  ADDIW a0, a0, 304
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s0
  LUI t6, 512
  ADDIW t6, t6, 296
  ADD t6, t6, sp
  SD a0, 0(t6)
  SLLIW a0, s4, 6
  SW a0, 8(sp)
  LW s0, 8(sp)
  LUI a0, 512
  ADDIW a0, a0, 296
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s0
  LUI t6, 512
  ADDIW t6, t6, 288
  ADD t6, t6, sp
  SD a0, 0(t6)
  SLLIW a0, s10, 5
  SW a0, 148(sp)
  LW s0, 148(sp)
  LUI a0, 512
  ADDIW a0, a0, 288
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s0
  LUI t6, 512
  ADDIW t6, t6, 280
  ADD t6, t6, sp
  SD a0, 0(t6)
  LW a0, 72(sp)
  SLLIW a0, a0, 4
  SW a0, 132(sp)
  LW s0, 132(sp)
  LUI a0, 512
  ADDIW a0, a0, 280
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s0
  LUI t6, 512
  ADDIW t6, t6, 272
  ADD t6, t6, sp
  SD a0, 0(t6)
  LW a0, 84(sp)
  SLLIW a0, a0, 3
  SW a0, 120(sp)
  LW s0, 120(sp)
  LUI a0, 512
  ADDIW a0, a0, 272
  ADD a0, a0, sp
  LD a0, 0(a0)
  ADD a0, a0, s0
  LUI t6, 512
  ADDIW t6, t6, 264
  ADD t6, t6, sp
  SD a0, 0(t6)
  LUI a0, 512
  ADDIW a0, a0, 264
  ADD a0, a0, sp
  LD a0, 0(a0)
  SW s3, 0(a0)
  ADDIW a0, s3, 1
  SW a0, 112(sp)
  LW s0, 112(sp)
  LUI a0, 512
  ADDIW a0, a0, 264
  ADD a0, a0, sp
  LD a0, 0(a0)
  SW s0, 4(a0)
  ADDIW s3, s3, 2
  LW a0, 84(sp)
  ADDIW a0, a0, 1
  SW a0, 108(sp)
  LW a0, 108(sp)
  SLTI a0, a0, 2
  SB a0, 1(sp)
  LB a0, 1(sp)
  BNE a0, zero, bb56
  # implict jump to bb21
bb21:   # loop depth 17
  LW a0, 72(sp)
  ADDIW a0, a0, 1
  SW a0, 104(sp)
  LW a0, 104(sp)
  SLTI a0, a0, 2
  SB a0, 2(sp)
  LB a0, 2(sp)
  BNE a0, zero, bb55
  # implict jump to bb22
bb22:   # loop depth 16
  ADDIW s10, s10, 1
  SLTI a0, s10, 2
  SB a0, 0(sp)
  LB a0, 0(sp)
  BNE a0, zero, bb54
  # implict jump to bb23
bb23:   # loop depth 15
  ADDIW s4, s4, 1
  SLTI s10, s4, 2
  BNE s10, zero, bb53
  # implict jump to bb24
bb24:   # loop depth 14
  LW a0, 32(sp)
  ADDIW a0, a0, 1
  SW a0, 32(sp)
  LW a0, 32(sp)
  SLTI s10, a0, 2
  BNE s10, zero, bb52
  # implict jump to bb25
bb25:   # loop depth 13
  ADDIW s4, s9, 1
  SLTI s9, s4, 2
  BNE s9, zero, bb51
  # implict jump to bb26
bb26:   # loop depth 12
  ADDIW s4, s8, 1
  SLTI s8, s4, 2
  BNE s8, zero, bb50
  # implict jump to bb27
bb27:   # loop depth 11
  ADDIW s4, s7, 1
  SLTI s7, s4, 2
  BNE s7, zero, bb49
  # implict jump to bb28
bb28:   # loop depth 10
  ADDIW s4, s6, 1
  SLTI s6, s4, 2
  BNE s6, zero, bb48
  # implict jump to bb29
bb29:   # loop depth 9
  ADDIW s11, s11, 1
  SLTI s6, s11, 2
  BNE s6, zero, bb47
  # implict jump to bb30
bb30:   # loop depth 8
  LW a0, 152(sp)
  ADDIW s4, a0, 1
  SLTI s6, s4, 2
  BNE s6, zero, bb46
  # implict jump to bb31
bb31:   # loop depth 7
  LW a0, 144(sp)
  ADDIW s6, a0, 1
  SLTI s4, s6, 2
  BNE s4, zero, bb45
  # implict jump to bb32
bb32:   # loop depth 6
  LW a0, 140(sp)
  ADDIW s6, a0, 1
  SLTI s4, s6, 2
  BNE s4, zero, bb44
  # implict jump to bb33
bb33:   # loop depth 5
  LW a0, 136(sp)
  ADDIW s6, a0, 1
  SLTI s4, s6, 2
  BNE s4, zero, bb43
  # implict jump to bb34
bb34:   # loop depth 4
  LW a0, 92(sp)
  ADDIW a0, a0, 1
  SLTI s4, a0, 2
  BNE s4, zero, bb42
  # implict jump to bb35
bb35:   # loop depth 3
  LW a0, 128(sp)
  ADDIW a0, a0, 1
  SLTI s2, a0, 2
  BNE s2, zero, bb41
  # implict jump to bb36
bb36:   # loop depth 2
  LW a0, 124(sp)
  ADDIW s1, a0, 1
  SLTI a0, s1, 2
  BNE a0, zero, bb40
  # implict jump to bb37
bb37:   # loop depth 1
  LW a0, 116(sp)
  ADDIW a0, a0, 1
  SLTI s0, a0, 2
  BNE s0, zero, bb39
  # implict jump to bb38
bb38:   # loop depth 0
  LW a0, 264(sp)
  LW s0, 272(sp)
  ADDW a0, a0, s0
  LW s0, 268(sp)
  ADDW a0, a0, s0
  LW s0, 304(sp)
  ADDW a0, a0, s0
  LW s0, 288(sp)
  ADDW a0, a0, s0
  LW s0, 492(sp)
  ADDW a0, a0, s0
  LW s0, 320(sp)
  ADDW a0, a0, s0
  LW s0, 1228(sp)
  ADDW a0, a0, s0
  LW s0, 488(sp)
  ADDW a0, a0, s0
  LW s0, 1068(sp)
  ADDW a0, a0, s0
  ADDI t6, sp, 264
  LW s0, 1996(t6)
  ADDW a0, a0, s0
  LUI s0, 1
  ADDIW s0, s0, -872
  ADDI t6, sp, 264
  ADD s0, t6, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LUI s0, 6
  ADDIW s0, s0, 1824
  ADDI t6, sp, 264
  ADD s0, t6, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LW s0, 772(sp)
  ADDW a0, a0, s0
  LW s0, 388(sp)
  ADDW a0, a0, s0
  LUI s0, 60
  ADDIW s0, s0, 912
  ADDI t6, sp, 264
  ADD s0, t6, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LUI s0, 4
  ADDIW s0, s0, -428
  ADDI t6, sp, 264
  ADD s0, t6, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LUI s0, 202
  ADDIW s0, s0, 972
  ADDI t6, sp, 264
  ADD s0, t6, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LUI s0, 69
  ADDIW s0, s0, -1024
  ADDI ra, sp, 264
  ADD s0, ra, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  CALL putint
  ADD a0, zero, zero
  LD ra, 160(sp)
  LD s0, 168(sp)
  LD s1, 176(sp)
  LD s2, 184(sp)
  LD s3, 192(sp)
  LD s4, 200(sp)
  LD s6, 208(sp)
  LD s7, 216(sp)
  LD s8, 224(sp)
  LD s9, 232(sp)
  LD s10, 240(sp)
  LD s11, 248(sp)
  LUI t0, 512
  ADDIW t0, t0, 400
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
  JAL zero, bb15
bb52:   # loop depth 14
  LW a0, 32(sp)
  SW a0, 32(sp)
  JAL zero, bb16
bb53:   # loop depth 15
  JAL zero, bb17
bb54:   # loop depth 16
  JAL zero, bb18
bb55:   # loop depth 17
  LW a0, 104(sp)
  SW a0, 100(sp)
  JAL zero, bb19
bb56:   # loop depth 18
  LW a0, 108(sp)
  SW a0, 96(sp)
  JAL zero, bb20
bb57:   # loop depth 1
  JAL zero, bb1
