.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  LUI t0, 1048064
  ADDIW t0, t0, -256
  ADD sp, sp, t0
  SD ra, 96(sp)
  SD s0, 104(sp)
  SD s1, 112(sp)
  SD s2, 120(sp)
  SD s3, 128(sp)
  SD s4, 136(sp)
  SD s5, 144(sp)
  LUI t0, 128
  ADDIW t0, t0, 0
  ADD t0, zero, t0
  # implict jump to bb1
bb1:   # loop depth 1
  ADDI t2, zero, 0
  SLLIW t1, t0, 2
  ADDIW t0, t0, -1
  ADDI t6, sp, 248
  ADD t1, t6, t1
  SW t2, -4(t1)
  BNE t0, zero, bb57
  # implict jump to bb2
bb2:   # loop depth 0
  ADD a2, zero, zero
  ADD t0, zero, zero
  # implict jump to bb3
bb3:   # loop depth 1
  SW t0, 20(sp)
  LW t0, 20(sp)
  SLLIW a0, t0, 20
  ADD t1, zero, zero
  ADDI t0, sp, 248
  ADD t0, t0, a0
  SD t0, 184(sp)
  # implict jump to bb4
bb4:   # loop depth 2
  SW t1, 28(sp)
  LW t0, 28(sp)
  SLLIW a1, t0, 19
  ADD t2, zero, zero
  LD t0, 184(sp)
  ADD t0, t0, a1
  SD t0, 192(sp)
  # implict jump to bb5
bb5:   # loop depth 3
  SW t2, 24(sp)
  LW t0, 24(sp)
  SLLIW a3, t0, 18
  ADD a0, zero, zero
  LD t0, 192(sp)
  ADD t0, t0, a3
  SD t0, 200(sp)
  # implict jump to bb6
bb6:   # loop depth 4
  SW a0, 16(sp)
  LW t0, 16(sp)
  SLLIW a3, t0, 17
  ADD a1, zero, zero
  LD t0, 200(sp)
  ADD t0, t0, a3
  SD t0, 208(sp)
  # implict jump to bb7
bb7:   # loop depth 5
  SW a1, 12(sp)
  LW t0, 12(sp)
  SLLIW a4, t0, 16
  ADD s3, zero, zero
  LD t0, 208(sp)
  ADD t0, t0, a4
  SD t0, 216(sp)
  # implict jump to bb8
bb8:   # loop depth 6
  SLLIW a4, s3, 15
  ADD s0, zero, zero
  LD t0, 216(sp)
  ADD t0, t0, a4
  SD t0, 224(sp)
  # implict jump to bb9
bb9:   # loop depth 7
  SLLIW a4, s0, 14
  ADD s1, zero, zero
  LD t0, 224(sp)
  ADD t0, t0, a4
  SD t0, 232(sp)
  # implict jump to bb10
bb10:   # loop depth 8
  SLLIW a4, s1, 13
  ADD a5, zero, zero
  LD t0, 232(sp)
  ADD t0, t0, a4
  SD t0, 240(sp)
  # implict jump to bb11
bb11:   # loop depth 9
  SLLIW a4, a5, 12
  ADD s2, zero, zero
  LD t0, 240(sp)
  ADD t0, t0, a4
  SD t0, 72(sp)
  # implict jump to bb12
bb12:   # loop depth 10
  SLLIW a4, s2, 11
  ADD a6, zero, zero
  LD t0, 72(sp)
  ADD t0, t0, a4
  SD t0, 64(sp)
  # implict jump to bb13
bb13:   # loop depth 11
  SLLIW a4, a6, 10
  ADD s5, zero, zero
  LD t0, 64(sp)
  ADD t0, t0, a4
  SD t0, 56(sp)
  # implict jump to bb14
bb14:   # loop depth 12
  SLLIW a4, s5, 9
  ADD t5, zero, zero
  LD t0, 56(sp)
  ADD t0, t0, a4
  SD t0, 48(sp)
  # implict jump to bb15
bb15:   # loop depth 13
  SLLIW a4, t5, 8
  ADD t4, zero, zero
  LD t0, 48(sp)
  ADD t0, t0, a4
  SD t0, 32(sp)
  # implict jump to bb16
bb16:   # loop depth 14
  SLLIW a4, t4, 7
  ADD t3, zero, zero
  LD t0, 32(sp)
  ADD t0, t0, a4
  SD t0, 152(sp)
  # implict jump to bb17
bb17:   # loop depth 15
  SLLIW a4, t3, 6
  ADD a7, zero, zero
  LD t0, 152(sp)
  ADD t0, t0, a4
  SD t0, 160(sp)
  # implict jump to bb18
bb18:   # loop depth 16
  SLLIW a3, a7, 5
  ADD s4, zero, zero
  LD t0, 160(sp)
  ADD t0, t0, a3
  SD t0, 168(sp)
  # implict jump to bb19
bb19:   # loop depth 17
  SLLIW t0, s4, 4
  SW t0, 4(sp)
  ADD a3, zero, zero
  LW t0, 4(sp)
  LD t1, 168(sp)
  ADD t0, t1, t0
  SD t0, 40(sp)
  # implict jump to bb20
bb20:   # loop depth 18
  LD t0, 40(sp)
  SH3ADD t0, a3, t0
  SD t0, 176(sp)
  ADDIW a3, a3, 1
  ADDIW t0, a2, 1
  SW t0, 8(sp)
  LD t0, 176(sp)
  SW a2, 0(t0)
  SLTI t0, a3, 2
  SB t0, 0(sp)
  ADDIW a2, a2, 2
  LW t0, 8(sp)
  LD t1, 176(sp)
  SW t0, 4(t1)
  LB t0, 0(sp)
  BNE t0, zero, bb56
  # implict jump to bb21
bb21:   # loop depth 17
  ADDIW s4, s4, 1
  SLTI a4, s4, 2
  BNE a4, zero, bb55
  # implict jump to bb22
bb22:   # loop depth 16
  ADDIW a7, a7, 1
  SLTI a4, a7, 2
  BNE a4, zero, bb54
  # implict jump to bb23
bb23:   # loop depth 15
  ADDIW t3, t3, 1
  SLTI a4, t3, 2
  BNE a4, zero, bb53
  # implict jump to bb24
bb24:   # loop depth 14
  ADDIW t4, t4, 1
  SLTI a4, t4, 2
  BNE a4, zero, bb52
  # implict jump to bb25
bb25:   # loop depth 13
  ADDIW t5, t5, 1
  SLTI a4, t5, 2
  BNE a4, zero, bb51
  # implict jump to bb26
bb26:   # loop depth 12
  ADDIW s5, s5, 1
  SLTI a4, s5, 2
  BNE a4, zero, bb50
  # implict jump to bb27
bb27:   # loop depth 11
  ADDIW a6, a6, 1
  SLTI a4, a6, 2
  BNE a4, zero, bb49
  # implict jump to bb28
bb28:   # loop depth 10
  ADDIW s2, s2, 1
  SLTI a4, s2, 2
  BNE a4, zero, bb48
  # implict jump to bb29
bb29:   # loop depth 9
  ADDIW a5, a5, 1
  SLTI a4, a5, 2
  BNE a4, zero, bb47
  # implict jump to bb30
bb30:   # loop depth 8
  ADDIW s1, s1, 1
  SLTI a4, s1, 2
  BNE a4, zero, bb46
  # implict jump to bb31
bb31:   # loop depth 7
  ADDIW s0, s0, 1
  SLTI a4, s0, 2
  BNE a4, zero, bb45
  # implict jump to bb32
bb32:   # loop depth 6
  ADDIW s3, s3, 1
  SLTI a4, s3, 2
  BNE a4, zero, bb44
  # implict jump to bb33
bb33:   # loop depth 5
  LW t0, 12(sp)
  ADDIW a1, t0, 1
  SLTI a3, a1, 2
  BNE a3, zero, bb43
  # implict jump to bb34
bb34:   # loop depth 4
  LW t0, 16(sp)
  ADDIW a0, t0, 1
  SLTI a1, a0, 2
  BNE a1, zero, bb42
  # implict jump to bb35
bb35:   # loop depth 3
  LW t0, 24(sp)
  ADDIW t2, t0, 1
  SLTI a0, t2, 2
  BNE a0, zero, bb41
  # implict jump to bb36
bb36:   # loop depth 2
  LW t0, 28(sp)
  ADDIW t1, t0, 1
  SLTI t2, t1, 2
  BNE t2, zero, bb40
  # implict jump to bb37
bb37:   # loop depth 1
  LW t0, 20(sp)
  ADDIW t0, t0, 1
  SLTI t1, t0, 2
  BNE t1, zero, bb39
  # implict jump to bb38
bb38:   # loop depth 0
  LW t0, 248(sp)
  LUI t1, 1
  ADDIW t1, t1, -872
  LUI t2, 6
  ADDI a0, sp, 248
  ADD a0, a0, t1
  ADDIW t2, t2, 1824
  LW t1, 256(sp)
  ADDI a1, sp, 248
  ADD a1, a1, t2
  LUI a2, 60
  LUI a3, 4
  ADDIW a2, a2, 912
  ADDIW a3, a3, -428
  LW t2, 252(sp)
  ADDW t0, t0, t1
  ADDI a4, sp, 248
  ADD a2, a4, a2
  ADDI a4, sp, 248
  ADD a3, a4, a3
  LUI a4, 202
  LUI a5, 69
  LW t1, 288(sp)
  ADDW t0, t0, t2
  ADDIW a4, a4, 972
  ADDIW a5, a5, -1024
  ADDI t2, sp, 248
  ADD a4, t2, a4
  ADDI t2, sp, 248
  ADD a5, t2, a5
  LW t2, 272(sp)
  ADDW t0, t0, t1
  LW t1, 476(sp)
  ADDW t0, t0, t2
  LW t2, 304(sp)
  ADDW t0, t0, t1
  LW t1, 1212(sp)
  ADDW t0, t0, t2
  LW t2, 472(sp)
  ADDW t0, t0, t1
  LW t1, 1052(sp)
  ADDW t0, t0, t2
  ADDI t2, sp, 248
  LW t2, 1996(t2)
  ADDW t0, t0, t1
  LW t1, 0(a0)
  ADDW t0, t0, t2
  LW t2, 0(a1)
  ADDW t0, t0, t1
  LW t1, 756(sp)
  ADDW t0, t0, t2
  LW t2, 372(sp)
  ADDW t0, t0, t1
  LW t1, 0(a2)
  ADDW t0, t0, t2
  LW t2, 0(a3)
  ADDW t0, t0, t1
  LW t1, 0(a4)
  ADDW t0, t0, t2
  LW t2, 0(a5)
  ADDW t0, t0, t1
  ADDW a0, t0, t2
  CALL putint
  ADD a0, zero, zero
  LD ra, 96(sp)
  LD s0, 104(sp)
  LD s1, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD s5, 144(sp)
  LUI t0, 512
  ADDIW t0, t0, 256
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
  JAL zero, bb16
bb53:   # loop depth 15
  JAL zero, bb17
bb54:   # loop depth 16
  JAL zero, bb18
bb55:   # loop depth 17
  JAL zero, bb19
bb56:   # loop depth 18
  JAL zero, bb20
bb57:   # loop depth 1
  JAL zero, bb1
