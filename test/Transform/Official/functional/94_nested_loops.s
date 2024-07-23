.global loop3
.global loop2
.global loop1
.global main
.section .bss
arr2:
.space 107520
arr1:
.space 57600
.section .data


.section .text
loop3:
  ADDI sp, sp, -416
  SD ra, 240(sp)
  SD s0, 248(sp)
  SD s1, 256(sp)
  SD s2, 264(sp)
  SD s3, 272(sp)
  SD s4, 280(sp)
  SD s5, 288(sp)
  SD s6, 296(sp)
  SD s7, 304(sp)
  SD s8, 312(sp)
  SD s9, 320(sp)
  SD s10, 328(sp)
  SD s11, 336(sp)
  ADD t4, a0, zero
  SW t4, 152(sp)
  ADD t4, a1, zero
  SW t4, 148(sp)
  ADD t4, a2, zero
  SW t4, 144(sp)
  ADD t4, a3, zero
  SW t4, 140(sp)
  ADD t4, a4, zero
  SW t4, 136(sp)
  ADD t4, a5, zero
  SW t4, 132(sp)
  ADD t4, a6, zero
  SW t4, 128(sp)
  ADD t4, zero, zero
  SW t4, 180(sp)
  ADD t4, zero, zero
  SW t4, 176(sp)
  ADD t4, zero, zero
  SW t4, 172(sp)
  ADD t4, zero, zero
  SW t4, 168(sp)
  ADD t4, zero, zero
  SW t4, 164(sp)
  ADD t4, zero, zero
  SW t4, 160(sp)
  ADD t4, zero, zero
  SW t4, 156(sp)
  # implict jump to bb1
bb1:
  LW t4, 156(sp)
  ADD s8, t4, zero
  LW t4, 160(sp)
  ADD s9, t4, zero
  LW t4, 164(sp)
  ADD s10, t4, zero
  LW t4, 168(sp)
  ADD s11, t4, zero
  LW t4, 172(sp)
  ADD t0, t4, zero
  LW t4, 176(sp)
  ADD t1, t4, zero
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LW t4, 184(sp)
  SLTI a7, t4, 10
  BNE a7, zero, bb4
  # implict jump to bb2
bb2:
  ADD t4, s8, zero
  SW t4, 64(sp)
  # implict jump to bb3
bb3:
  LW t4, 64(sp)
  ADD s0, t4, zero
  ADD a0, s0, zero
  LD ra, 240(sp)
  LD s0, 248(sp)
  LD s1, 256(sp)
  LD s2, 264(sp)
  LD s3, 272(sp)
  LD s4, 280(sp)
  LD s5, 288(sp)
  LD s6, 296(sp)
  LD s7, 304(sp)
  LD s8, 312(sp)
  LD s9, 320(sp)
  LD s10, 328(sp)
  LD s11, 336(sp)
  ADDI sp, sp, 416
  JALR zero, 0(ra)
bb4:
  LUI t6, 1
  ADDIW t6, t6, 1664
  LW t4, 184(sp)
  MULW t6, t4, t6
  LA a7, arr1
  ADD t4, a7, t6
  SD t4, 392(sp)
  LUI t6, 3
  ADDIW t6, t6, -1536
  LW t4, 184(sp)
  MULW t6, t4, t6
  LA a6, arr2
  ADD t4, a6, t6
  SD t4, 400(sp)
  ADD t4, t1, zero
  SW t4, 192(sp)
  ADD t4, zero, zero
  SW t4, 124(sp)
  ADD t4, t0, zero
  SW t4, 196(sp)
  ADD t4, s11, zero
  SW t4, 200(sp)
  ADD t4, s10, zero
  SW t4, 204(sp)
  ADD t4, s9, zero
  SW t4, 208(sp)
  ADD t4, s8, zero
  SW t4, 212(sp)
  # implict jump to bb5
bb5:
  LW t4, 212(sp)
  ADD a5, t4, zero
  LW t4, 208(sp)
  ADD a4, t4, zero
  LW t4, 204(sp)
  ADD a3, t4, zero
  LW t4, 200(sp)
  ADD a2, t4, zero
  LW t4, 196(sp)
  ADD a1, t4, zero
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t4, 192(sp)
  ADD s7, t4, zero
  LW t4, 4(sp)
  SLTI s6, t4, 100
  BNE s6, zero, bb10
  # implict jump to bb6
bb6:
  ADD t4, s7, zero
  SW t4, 216(sp)
  ADD t4, a1, zero
  SW t4, 188(sp)
  ADD t4, a2, zero
  SW t4, 220(sp)
  ADD t4, a3, zero
  SW t4, 224(sp)
  ADD t4, a4, zero
  SW t4, 232(sp)
  ADD t4, a5, zero
  SW t4, 228(sp)
  # implict jump to bb7
bb7:
  LW t4, 228(sp)
  ADD s0, t4, zero
  LW t4, 232(sp)
  ADD s1, t4, zero
  LW t4, 224(sp)
  ADD s2, t4, zero
  LW t4, 220(sp)
  ADD s3, t4, zero
  LW t4, 188(sp)
  ADD s4, t4, zero
  LW t4, 216(sp)
  ADD s5, t4, zero
  LW t4, 184(sp)
  ADDIW s6, t4, 1
  LW t4, 152(sp)
  SLT s7, s6, t4
  XORI s7, s7, 1
  BNE s7, zero, bb9
  # implict jump to bb8
bb8:
  ADD t4, s6, zero
  SW t4, 180(sp)
  ADD t4, s5, zero
  SW t4, 176(sp)
  ADD t4, s4, zero
  SW t4, 172(sp)
  ADD t4, s3, zero
  SW t4, 168(sp)
  ADD t4, s2, zero
  SW t4, 164(sp)
  ADD t4, s1, zero
  SW t4, 160(sp)
  ADD t4, s0, zero
  SW t4, 156(sp)
  JAL zero, bb1
bb9:
  ADD t4, s0, zero
  SW t4, 64(sp)
  JAL zero, bb3
bb10:
  LUI s1, 1
  ADDIW s1, s1, -1216
  LW t4, 4(sp)
  MULW s1, t4, s1
  LD t3, 392(sp)
  ADD t4, t3, s1
  SD t4, 376(sp)
  LUI t2, 1
  ADDIW t2, t2, 1280
  LW t4, 4(sp)
  MULW t2, t4, t2
  LD t3, 400(sp)
  ADD t4, t3, t2
  SD t4, 384(sp)
  ADD t4, s7, zero
  SW t4, 52(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  ADD t4, a2, zero
  SW t4, 44(sp)
  ADD t4, a3, zero
  SW t4, 40(sp)
  ADD t4, a4, zero
  SW t4, 36(sp)
  ADD t4, a5, zero
  SW t4, 32(sp)
  # implict jump to bb11
bb11:
  LW t4, 32(sp)
  ADD a1, t4, zero
  LW t4, 36(sp)
  ADD s5, t4, zero
  LW t4, 40(sp)
  ADD s4, t4, zero
  LW t4, 44(sp)
  ADD s3, t4, zero
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t4, 52(sp)
  ADD a6, t4, zero
  LW t4, 56(sp)
  SLTI a7, t4, 1000
  BNE a7, zero, bb16
  # implict jump to bb12
bb12:
  ADD t4, a6, zero
  SW t4, 8(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  ADD t4, s3, zero
  SW t4, 16(sp)
  ADD t4, s4, zero
  SW t4, 20(sp)
  ADD t4, s5, zero
  SW t4, 24(sp)
  ADD t4, a1, zero
  SW t4, 28(sp)
  # implict jump to bb13
bb13:
  LW t4, 28(sp)
  ADD s0, t4, zero
  LW t4, 24(sp)
  ADD s1, t4, zero
  LW t4, 20(sp)
  ADD s2, t4, zero
  LW t4, 16(sp)
  ADD s3, t4, zero
  LW t4, 12(sp)
  ADD s4, t4, zero
  LW t4, 8(sp)
  ADD s5, t4, zero
  LW t4, 4(sp)
  ADDIW s6, t4, 1
  LW t4, 148(sp)
  SLT s7, s6, t4
  XORI s7, s7, 1
  BNE s7, zero, bb15
  # implict jump to bb14
bb14:
  ADD t4, s5, zero
  SW t4, 192(sp)
  ADD t4, s6, zero
  SW t4, 124(sp)
  ADD t4, s4, zero
  SW t4, 196(sp)
  ADD t4, s3, zero
  SW t4, 200(sp)
  ADD t4, s2, zero
  SW t4, 204(sp)
  ADD t4, s1, zero
  SW t4, 208(sp)
  ADD t4, s0, zero
  SW t4, 212(sp)
  JAL zero, bb5
bb15:
  ADD t4, s5, zero
  SW t4, 216(sp)
  ADD t4, s4, zero
  SW t4, 188(sp)
  ADD t4, s3, zero
  SW t4, 220(sp)
  ADD t4, s2, zero
  SW t4, 224(sp)
  ADD t4, s1, zero
  SW t4, 232(sp)
  ADD t4, s0, zero
  SW t4, 228(sp)
  JAL zero, bb7
bb16:
  ADDI t0, zero, 960
  LW t4, 56(sp)
  MULW t0, t4, t0
  LD t3, 376(sp)
  ADD t4, t3, t0
  SD t4, 360(sp)
  ADDI t6, zero, 1792
  LW t4, 56(sp)
  MULW t6, t4, t6
  LD t3, 384(sp)
  ADD t4, t3, t6
  SD t4, 368(sp)
  ADD t4, a6, zero
  SW t4, 96(sp)
  ADD t4, zero, zero
  SW t4, 92(sp)
  ADD t4, s4, zero
  SW t4, 88(sp)
  ADD t4, s5, zero
  SW t4, 84(sp)
  ADD t4, a1, zero
  SW t4, 80(sp)
  # implict jump to bb17
bb17:
  LW t4, 80(sp)
  ADD s0, t4, zero
  LW t4, 84(sp)
  ADD a7, t4, zero
  LW t4, 88(sp)
  ADD s8, t4, zero
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  LW t4, 96(sp)
  ADD s9, t4, zero
  LUI s10, 2
  ADDIW s10, s10, 1808
  LW t4, 100(sp)
  SLT s10, t4, s10
  BNE s10, zero, bb22
  # implict jump to bb18
bb18:
  ADD t4, s9, zero
  SW t4, 60(sp)
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  ADD t4, s8, zero
  SW t4, 68(sp)
  ADD t4, a7, zero
  SW t4, 72(sp)
  ADD t4, s0, zero
  SW t4, 76(sp)
  # implict jump to bb19
bb19:
  LW t4, 76(sp)
  ADD s0, t4, zero
  LW t4, 72(sp)
  ADD s1, t4, zero
  LW t4, 68(sp)
  ADD s2, t4, zero
  LW t4, 0(sp)
  ADD s3, t4, zero
  LW t4, 60(sp)
  ADD s4, t4, zero
  LW t4, 56(sp)
  ADDIW s5, t4, 1
  LW t4, 144(sp)
  SLT s6, s5, t4
  XORI s6, s6, 1
  BNE s6, zero, bb21
  # implict jump to bb20
bb20:
  ADD t4, s4, zero
  SW t4, 52(sp)
  ADD t4, s5, zero
  SW t4, 48(sp)
  ADD t4, s3, zero
  SW t4, 44(sp)
  ADD t4, s2, zero
  SW t4, 40(sp)
  ADD t4, s1, zero
  SW t4, 36(sp)
  ADD t4, s0, zero
  SW t4, 32(sp)
  JAL zero, bb11
bb21:
  ADD t4, s4, zero
  SW t4, 8(sp)
  ADD t4, s5, zero
  SW t4, 12(sp)
  ADD t4, s3, zero
  SW t4, 16(sp)
  ADD t4, s2, zero
  SW t4, 20(sp)
  ADD t4, s1, zero
  SW t4, 24(sp)
  ADD t4, s0, zero
  SW t4, 28(sp)
  JAL zero, bb13
bb22:
  ADDI a5, zero, 240
  LW t4, 100(sp)
  MULW a5, t4, a5
  LD t3, 360(sp)
  ADD t4, t3, a5
  SD t4, 344(sp)
  ADDI a4, zero, 896
  LW t4, 100(sp)
  MULW a4, t4, a4
  LD t3, 368(sp)
  ADD t4, t3, a4
  SD t4, 352(sp)
  ADD a3, zero, zero
  ADD t4, s0, zero
  SW t4, 120(sp)
  # implict jump to bb23
bb23:
  LW t4, 120(sp)
  ADD a2, t4, zero
  ADD s6, a3, zero
  ADD s7, s8, zero
  ADD s2, s9, zero
  LUI s10, 24
  ADDIW s10, s10, 1696
  SLT s10, s6, s10
  BNE s10, zero, bb28
  # implict jump to bb24
bb24:
  ADD t4, s2, zero
  SW t4, 104(sp)
  ADD t4, s7, zero
  SW t4, 108(sp)
  ADD t4, s6, zero
  SW t4, 112(sp)
  ADD t4, a2, zero
  SW t4, 116(sp)
  # implict jump to bb25
bb25:
  LW t4, 116(sp)
  ADD s0, t4, zero
  LW t4, 112(sp)
  ADD s1, t4, zero
  LW t4, 108(sp)
  ADD s2, t4, zero
  LW t4, 104(sp)
  ADD s3, t4, zero
  LW t4, 100(sp)
  ADDIW s4, t4, 1
  LW t4, 140(sp)
  SLT s5, s4, t4
  XORI s5, s5, 1
  BNE s5, zero, bb27
  # implict jump to bb26
bb26:
  ADD t4, s3, zero
  SW t4, 96(sp)
  ADD t4, s4, zero
  SW t4, 92(sp)
  ADD t4, s2, zero
  SW t4, 88(sp)
  ADD t4, s1, zero
  SW t4, 84(sp)
  ADD t4, s0, zero
  SW t4, 80(sp)
  JAL zero, bb17
bb27:
  ADD t4, s3, zero
  SW t4, 60(sp)
  ADD t4, s4, zero
  SW t4, 0(sp)
  ADD t4, s2, zero
  SW t4, 68(sp)
  ADD t4, s1, zero
  SW t4, 72(sp)
  ADD t4, s0, zero
  SW t4, 76(sp)
  JAL zero, bb19
bb28:
  ADDI a7, zero, 48
  MULW a7, s6, a7
  LD t4, 344(sp)
  ADD a7, t4, a7
  ADDI s1, zero, 224
  MULW s1, s6, s1
  LD t4, 352(sp)
  ADD s1, t4, s1
  ADD t6, zero, zero
  # implict jump to bb29
bb29:
  ADD t0, a2, zero
  ADD a1, t6, zero
  ADD s5, s2, zero
  LUI s4, 244
  ADDIW s4, s4, 576
  SLT s4, a1, s4
  BNE s4, zero, bb34
  # implict jump to bb30
bb30:
  ADD s4, s5, zero
  ADD s5, a1, zero
  ADD t1, t0, zero
  # implict jump to bb31
bb31:
  ADDIW s0, s6, 1
  LW t4, 136(sp)
  SLT s1, s0, t4
  XORI s1, s1, 1
  BNE s1, zero, bb33
  # implict jump to bb32
bb32:
  ADD s9, s4, zero
  ADD s8, s5, zero
  ADD a3, s0, zero
  ADD t4, t1, zero
  SW t4, 120(sp)
  JAL zero, bb23
bb33:
  ADD t4, s4, zero
  SW t4, 104(sp)
  ADD t4, s5, zero
  SW t4, 108(sp)
  ADD t4, s0, zero
  SW t4, 112(sp)
  ADD t4, t1, zero
  SW t4, 116(sp)
  JAL zero, bb25
bb34:
  SLLIW a6, a1, 3
  ADD a6, a7, a6
  ADDI s3, zero, 28
  MULW s3, a1, s3
  ADD s3, s1, s3
  ADD s10, zero, zero
  # implict jump to bb35
bb35:
  ADD s7, t0, zero
  ADD s11, s10, zero
  LUI t2, 2441
  ADDIW t2, t2, 1664
  SLT t2, s11, t2
  BNE t2, zero, bb40
  # implict jump to bb36
bb36:
  ADD t2, s11, zero
  ADD a4, s7, zero
  # implict jump to bb37
bb37:
  ADDIW s0, a1, 1
  LW t4, 132(sp)
  SLT s3, s0, t4
  XORI s3, s3, 1
  BNE s3, zero, bb39
  # implict jump to bb38
bb38:
  ADD s2, t2, zero
  ADD t6, s0, zero
  ADD a2, a4, zero
  JAL zero, bb29
bb39:
  ADD s4, t2, zero
  ADD s5, s0, zero
  ADD t1, a4, zero
  JAL zero, bb31
bb40:
  ADDI a5, zero, 817
  REMW s7, s7, a5
  SLLIW a5, s11, 2
  ADD s0, a6, a5
  LW s0, 0(s0)
  ADDW s0, s7, s0
  ADD s7, s3, a5
  LW s7, 0(s7)
  ADDW s0, s0, s7
  ADDIW s7, s11, 1
  LW t4, 128(sp)
  SLT s11, s7, t4
  XORI s11, s11, 1
  BNE s11, zero, bb42
  # implict jump to bb41
bb41:
  ADD s10, s7, zero
  ADD t0, s0, zero
  JAL zero, bb35
bb42:
  ADD t2, s7, zero
  ADD a4, s0, zero
  JAL zero, bb37
loop2:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb44
bb44:
  ADD s6, s5, zero
  ADD s7, s4, zero
  ADD s8, s3, zero
  ADD s9, s2, zero
  ADD s10, s1, zero
  ADD s11, s0, zero
  SLTI t0, s6, 10
  BNE t0, zero, bb46
  # implict jump to bb45
bb45:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb46:
  LUI t0, 3
  ADDIW t0, t0, -1536
  MULW t0, s6, t0
  LA t1, arr2
  ADD t0, t1, t0
  ADD t1, zero, zero
  # implict jump to bb47
bb47:
  ADD t2, t1, zero
  ADD a0, s7, zero
  ADD a1, s8, zero
  ADD a2, s9, zero
  ADD a3, s10, zero
  ADD a4, s11, zero
  SLTI a5, t2, 2
  BNE a5, zero, bb49
  # implict jump to bb48
bb48:
  ADDIW a5, s6, 1
  ADD s0, a4, zero
  ADD s1, a3, zero
  ADD s2, a2, zero
  ADD s3, a1, zero
  ADD s4, a0, zero
  ADD s5, a5, zero
  JAL zero, bb44
bb49:
  LUI s0, 1
  ADDIW s0, s0, 1280
  MULW s0, t2, s0
  ADD s0, t0, s0
  ADDW s1, s6, t2
  ADD s2, a4, zero
  ADD s3, a3, zero
  ADD s4, a2, zero
  ADD s5, a1, zero
  ADD a0, zero, zero
  # implict jump to bb50
bb50:
  ADD a1, a0, zero
  ADD a2, s5, zero
  ADD a3, s4, zero
  ADD a4, s3, zero
  ADD a5, s2, zero
  SLTI a6, a1, 3
  BNE a6, zero, bb52
  # implict jump to bb51
bb51:
  ADDIW a6, t2, 1
  ADD s11, a5, zero
  ADD s10, a4, zero
  ADD s9, a3, zero
  ADD s8, a2, zero
  ADD s7, a1, zero
  ADD t1, a6, zero
  JAL zero, bb47
bb52:
  ADDI s7, zero, 1792
  MULW s7, a1, s7
  ADD s7, s0, s7
  ADD s8, a5, zero
  ADD s9, a4, zero
  ADD s10, a3, zero
  ADD s11, zero, zero
  # implict jump to bb53
bb53:
  ADD t1, s11, zero
  ADD a2, s10, zero
  ADD a3, s9, zero
  ADD a4, s8, zero
  SLTI a5, t1, 2
  BNE a5, zero, bb55
  # implict jump to bb54
bb54:
  ADDIW a5, a1, 1
  ADD s2, a4, zero
  ADD s3, a3, zero
  ADD s4, a2, zero
  ADD s5, t1, zero
  ADD a0, a5, zero
  JAL zero, bb50
bb55:
  ADDI s2, zero, 896
  MULW s2, t1, s2
  ADD s2, s7, s2
  ADDW s3, s1, t1
  ADD s4, a4, zero
  ADD s5, a3, zero
  ADD a0, zero, zero
  # implict jump to bb56
bb56:
  ADD a2, a0, zero
  ADD a3, s5, zero
  ADD a4, s4, zero
  SLTI a5, a2, 4
  BNE a5, zero, bb58
  # implict jump to bb57
bb57:
  ADDIW a5, t1, 1
  ADD s8, a4, zero
  ADD s9, a3, zero
  ADD s10, a2, zero
  ADD s11, a5, zero
  JAL zero, bb53
bb58:
  ADDI s8, zero, 224
  MULW s8, a2, s8
  ADD s8, s2, s8
  ADD s9, a4, zero
  ADD s10, zero, zero
  # implict jump to bb59
bb59:
  ADD s11, s10, zero
  ADD a3, s9, zero
  SLTI a4, s11, 8
  BNE a4, zero, bb61
  # implict jump to bb60
bb60:
  ADDIW a4, a2, 1
  ADD s4, a3, zero
  ADD s5, s11, zero
  ADD a0, a4, zero
  JAL zero, bb56
bb61:
  ADDI s4, zero, 28
  MULW s4, s11, s4
  ADD s4, s8, s4
  ADD s5, zero, zero
  # implict jump to bb62
bb62:
  ADD a0, s5, zero
  SLTI a3, a0, 7
  BNE a3, zero, bb64
  # implict jump to bb63
bb63:
  ADDIW a3, s11, 1
  ADD s9, a0, zero
  ADD s10, a3, zero
  JAL zero, bb59
bb64:
  SLLIW s9, a0, 2
  ADD s9, s4, s9
  ADDW s10, s3, a0
  SW s10, 0(s9)
  ADDIW s9, a0, 1
  ADD s5, s9, zero
  JAL zero, bb62
loop1:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb66
bb66:
  ADD s6, s5, zero
  ADD s7, s4, zero
  ADD s8, s3, zero
  ADD s9, s2, zero
  ADD s10, s1, zero
  ADD s11, s0, zero
  BLT s6, a0, bb89
  # implict jump to bb67
bb67:
  ADD t0, zero, zero
  # implict jump to bb68
bb68:
  BNE t0, zero, bb70
  # implict jump to bb69
bb69:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb70:
  LUI t0, 1
  ADDIW t0, t0, 1664
  MULW t0, s6, t0
  LA t1, arr1
  ADD t0, t1, t0
  ADD t1, zero, zero
  # implict jump to bb71
bb71:
  ADD t2, t1, zero
  ADD a2, s7, zero
  ADD a3, s8, zero
  ADD a4, s9, zero
  ADD a5, s10, zero
  ADD a6, s11, zero
  SLTI a7, t2, 2
  BNE a7, zero, bb73
  # implict jump to bb72
bb72:
  ADDIW a7, s6, 1
  ADD s0, a6, zero
  ADD s1, a5, zero
  ADD s2, a4, zero
  ADD s3, a3, zero
  ADD s4, a2, zero
  ADD s5, a7, zero
  JAL zero, bb66
bb73:
  LUI s0, 1
  ADDIW s0, s0, -1216
  MULW s0, t2, s0
  ADD s0, t0, s0
  ADDW s1, s6, t2
  ADD s2, a6, zero
  ADD s3, a5, zero
  ADD s4, a4, zero
  ADD s5, a3, zero
  ADD a2, zero, zero
  # implict jump to bb74
bb74:
  ADD a3, a2, zero
  ADD a4, s5, zero
  ADD a5, s4, zero
  ADD a6, s3, zero
  ADD a7, s2, zero
  SLTI t6, a3, 3
  BNE t6, zero, bb76
  # implict jump to bb75
bb75:
  ADDIW t6, t2, 1
  ADD s11, a7, zero
  ADD s10, a6, zero
  ADD s9, a5, zero
  ADD s8, a4, zero
  ADD s7, a3, zero
  ADD t1, t6, zero
  JAL zero, bb71
bb76:
  ADDI s7, zero, 960
  MULW s7, a3, s7
  ADD s7, s0, s7
  ADDW s8, s1, a3
  ADD s9, a7, zero
  ADD s10, a6, zero
  ADD s11, a5, zero
  ADD t1, zero, zero
  # implict jump to bb77
bb77:
  ADD a4, t1, zero
  ADD a5, s11, zero
  ADD a6, s10, zero
  ADD a7, s9, zero
  SLTI t6, a4, 4
  BNE t6, zero, bb79
  # implict jump to bb78
bb78:
  ADDIW t6, a3, 1
  ADD s2, a7, zero
  ADD s3, a6, zero
  ADD s4, a5, zero
  ADD s5, a4, zero
  ADD a2, t6, zero
  JAL zero, bb74
bb79:
  ADDI s2, zero, 240
  MULW s2, a4, s2
  ADD s2, s7, s2
  ADDW s3, s8, a4
  ADD s4, zero, zero
  ADD s5, a6, zero
  ADD a2, a5, zero
  # implict jump to bb80
bb80:
  ADD a5, a2, zero
  ADD a6, s5, zero
  ADD a7, s4, zero
  SLTI t6, a7, 5
  BNE t6, zero, bb82
  # implict jump to bb81
bb81:
  ADDIW t6, a4, 1
  ADD s9, a7, zero
  ADD s10, a6, zero
  ADD s11, a5, zero
  ADD t1, t6, zero
  JAL zero, bb77
bb82:
  ADDI s9, zero, 48
  MULW s9, a7, s9
  ADD s9, s2, s9
  ADDW s10, s3, a7
  ADD s11, a6, zero
  ADD t1, zero, zero
  # implict jump to bb83
bb83:
  ADD a5, t1, zero
  ADD a6, s11, zero
  SLTI t6, a5, 6
  BNE t6, zero, bb85
  # implict jump to bb84
bb84:
  ADDIW t6, a7, 1
  ADD s4, t6, zero
  ADD s5, a6, zero
  ADD a2, a5, zero
  JAL zero, bb80
bb85:
  SLLIW s4, a5, 3
  ADD s4, s9, s4
  ADDW s5, s10, a5
  ADD a2, zero, zero
  # implict jump to bb86
bb86:
  ADD a6, a2, zero
  SLTI t6, a6, 2
  BNE t6, zero, bb88
  # implict jump to bb87
bb87:
  ADDIW t6, a5, 1
  ADD s11, a6, zero
  ADD t1, t6, zero
  JAL zero, bb83
bb88:
  SLLIW s11, a6, 2
  ADD s11, s4, s11
  ADDW t1, s5, a6
  ADDW t1, t1, a0
  ADDW t1, t1, a1
  SW t1, 0(s11)
  ADDIW s11, a6, 1
  ADD a2, s11, zero
  JAL zero, bb86
bb89:
  SLT t1, s6, a1
  ADD t0, t1, zero
  JAL zero, bb68
main:
  ADDI sp, sp, -192
  SD ra, 88(sp)
  SD s0, 96(sp)
  SD s1, 104(sp)
  SD s7, 112(sp)
  SD s2, 120(sp)
  SD s3, 128(sp)
  SD s4, 136(sp)
  SD s5, 144(sp)
  SD s6, 152(sp)
  SD s9, 160(sp)
  SD s10, 168(sp)
  SD s11, 176(sp)
  SD s8, 184(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 24(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 28(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 32(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 36(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 40(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 44(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 0(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 52(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 56(sp)
  ADD t4, zero, zero
  SW t4, 60(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb91
bb91:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t4, 48(sp)
  LW t3, 24(sp)
  BLT t4, t3, bb135
  # implict jump to bb92
bb92:
  ADD s0, zero, zero
  # implict jump to bb93
bb93:
  BNE s0, zero, bb116
  # implict jump to bb94
bb94:
  ADD s0, zero, zero
  ADD s6, zero, zero
  ADD s7, zero, zero
  ADD s8, zero, zero
  ADD s11, zero, zero
  ADD s10, zero, zero
  # implict jump to bb95
bb95:
  ADD t4, s10, zero
  SW t4, 84(sp)
  ADD s5, s11, zero
  ADD s4, s8, zero
  ADD s3, s7, zero
  ADD s2, s6, zero
  ADD s1, s0, zero
  LW t4, 84(sp)
  SLTI s9, t4, 10
  BNE s9, zero, bb97
  # implict jump to bb96
bb96:
  LW t4, 32(sp)
  ADD a0, t4, zero
  LW t4, 36(sp)
  ADD a1, t4, zero
  LW t4, 40(sp)
  ADD a2, t4, zero
  LW t4, 44(sp)
  ADD a3, t4, zero
  LW t4, 0(sp)
  ADD a4, t4, zero
  LW t4, 52(sp)
  ADD a5, t4, zero
  LW t4, 56(sp)
  ADD a6, t4, zero
  CALL loop3
  ADD s9, a0, zero
  ADD a0, s9, zero
  LD ra, 88(sp)
  LD s0, 96(sp)
  LD s1, 104(sp)
  LD s7, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD s5, 144(sp)
  LD s6, 152(sp)
  LD s9, 160(sp)
  LD s10, 168(sp)
  LD s11, 176(sp)
  LD s8, 184(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb97:
  LUI s9, 3
  ADDIW s9, s9, -1536
  LW t4, 84(sp)
  MULW s9, t4, s9
  LA ra, arr2
  ADD s9, ra, s9
  ADD ra, zero, zero
  # implict jump to bb98
bb98:
  ADD t0, ra, zero
  ADD t1, s5, zero
  ADD t2, s4, zero
  ADD a0, s3, zero
  ADD a1, s2, zero
  ADD a2, s1, zero
  SLTI a3, t0, 2
  BNE a3, zero, bb100
  # implict jump to bb99
bb99:
  LW t4, 84(sp)
  ADDIW a3, t4, 1
  ADD s0, a2, zero
  ADD s6, a1, zero
  ADD s7, a0, zero
  ADD s8, t2, zero
  ADD s11, t1, zero
  ADD s10, a3, zero
  JAL zero, bb95
bb100:
  LUI s0, 1
  ADDIW s0, s0, 1280
  MULW s0, t0, s0
  ADD s0, s9, s0
  LW t4, 84(sp)
  ADDW s6, t4, t0
  ADD s7, a2, zero
  ADD s8, a1, zero
  ADD s10, a0, zero
  ADD s11, t2, zero
  ADD t1, zero, zero
  # implict jump to bb101
bb101:
  ADD t2, t1, zero
  ADD a0, s11, zero
  ADD a1, s10, zero
  ADD a2, s8, zero
  ADD a3, s7, zero
  SLTI a4, t2, 3
  BNE a4, zero, bb103
  # implict jump to bb102
bb102:
  ADDIW a4, t0, 1
  ADD s1, a3, zero
  ADD s2, a2, zero
  ADD s3, a1, zero
  ADD s4, a0, zero
  ADD s5, t2, zero
  ADD ra, a4, zero
  JAL zero, bb98
bb103:
  ADDI s1, zero, 1792
  MULW s1, t2, s1
  ADD s1, s0, s1
  ADD s2, a3, zero
  ADD s3, a2, zero
  ADD s4, a1, zero
  ADD s5, zero, zero
  # implict jump to bb104
bb104:
  ADD ra, s5, zero
  ADD a0, s4, zero
  ADD a1, s3, zero
  ADD a2, s2, zero
  SLTI a3, ra, 2
  BNE a3, zero, bb106
  # implict jump to bb105
bb105:
  ADDIW a3, t2, 1
  ADD s7, a2, zero
  ADD s8, a1, zero
  ADD s10, a0, zero
  ADD s11, ra, zero
  ADD t1, a3, zero
  JAL zero, bb101
bb106:
  ADDI s7, zero, 896
  MULW s7, ra, s7
  ADD s7, s1, s7
  ADDW s8, s6, ra
  ADD s10, a2, zero
  ADD s11, a1, zero
  ADD t1, zero, zero
  # implict jump to bb107
bb107:
  ADD a0, t1, zero
  ADD a1, s11, zero
  ADD a2, s10, zero
  SLTI a3, a0, 4
  BNE a3, zero, bb109
  # implict jump to bb108
bb108:
  ADDIW a3, ra, 1
  ADD s2, a2, zero
  ADD s3, a1, zero
  ADD s4, a0, zero
  ADD s5, a3, zero
  JAL zero, bb104
bb109:
  ADDI s2, zero, 224
  MULW s2, a0, s2
  ADD s2, s7, s2
  ADD s3, a2, zero
  ADD s4, zero, zero
  # implict jump to bb110
bb110:
  ADD s5, s4, zero
  ADD a1, s3, zero
  SLTI a2, s5, 8
  BNE a2, zero, bb112
  # implict jump to bb111
bb111:
  ADDIW a2, a0, 1
  ADD s10, a1, zero
  ADD s11, s5, zero
  ADD t1, a2, zero
  JAL zero, bb107
bb112:
  ADDI s10, zero, 28
  MULW s10, s5, s10
  ADD s10, s2, s10
  ADD s11, zero, zero
  # implict jump to bb113
bb113:
  ADD t1, s11, zero
  SLTI a1, t1, 7
  BNE a1, zero, bb115
  # implict jump to bb114
bb114:
  ADDIW a1, s5, 1
  ADD s3, t1, zero
  ADD s4, a1, zero
  JAL zero, bb110
bb115:
  SLLIW s3, t1, 2
  ADD s3, s10, s3
  ADDW s4, s8, t1
  SW s4, 0(s3)
  ADDIW s3, t1, 1
  ADD s11, s3, zero
  JAL zero, bb113
bb116:
  LUI s0, 1
  ADDIW s0, s0, 1664
  LW t4, 48(sp)
  MULW s0, t4, s0
  LA s1, arr1
  ADD s0, s1, s0
  LW t4, 80(sp)
  ADD s1, t4, zero
  LW t4, 76(sp)
  ADD s2, t4, zero
  LW t4, 72(sp)
  ADD s3, t4, zero
  LW t4, 68(sp)
  ADD s4, t4, zero
  LW t4, 64(sp)
  ADD s5, t4, zero
  ADD s6, zero, zero
  # implict jump to bb117
bb117:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  ADD s10, s3, zero
  ADD s11, s2, zero
  ADD ra, s1, zero
  SLTI t0, s7, 2
  BNE t0, zero, bb119
  # implict jump to bb118
bb118:
  LW t4, 48(sp)
  ADDIW t0, t4, 1
  ADD t4, ra, zero
  SW t4, 60(sp)
  ADD t4, s11, zero
  SW t4, 4(sp)
  ADD t4, s10, zero
  SW t4, 8(sp)
  ADD t4, s9, zero
  SW t4, 12(sp)
  ADD t4, s8, zero
  SW t4, 16(sp)
  ADD t4, t0, zero
  SW t4, 20(sp)
  JAL zero, bb91
bb119:
  LUI s8, 1
  ADDIW s8, s8, -1216
  MULW s8, s7, s8
  ADD s8, s0, s8
  LW t4, 48(sp)
  ADDW t0, t4, s7
  ADD t1, zero, zero
  # implict jump to bb120
bb120:
  ADD t2, t1, zero
  ADD a0, s9, zero
  ADD a1, s10, zero
  ADD a2, s11, zero
  ADD a3, ra, zero
  SLTI a4, t2, 3
  BNE a4, zero, bb122
  # implict jump to bb121
bb121:
  ADDIW a4, s7, 1
  ADD s1, a3, zero
  ADD s2, a2, zero
  ADD s3, a1, zero
  ADD s4, a0, zero
  ADD s5, t2, zero
  ADD s6, a4, zero
  JAL zero, bb117
bb122:
  ADDI s1, zero, 960
  MULW s1, t2, s1
  ADD s1, s8, s1
  ADDW s2, t0, t2
  ADD s3, a3, zero
  ADD s4, a2, zero
  ADD s5, a1, zero
  ADD s6, zero, zero
  # implict jump to bb123
bb123:
  ADD a0, s6, zero
  ADD a1, s5, zero
  ADD a2, s4, zero
  ADD a3, s3, zero
  SLTI a4, a0, 4
  BNE a4, zero, bb125
  # implict jump to bb124
bb124:
  ADDIW a4, t2, 1
  ADD ra, a3, zero
  ADD s11, a2, zero
  ADD s10, a1, zero
  ADD s9, a0, zero
  ADD t1, a4, zero
  JAL zero, bb120
bb125:
  ADDI s9, zero, 240
  MULW s9, a0, s9
  ADD s9, s1, s9
  ADDW s10, s2, a0
  ADD s11, zero, zero
  ADD ra, a2, zero
  ADD t1, a1, zero
  # implict jump to bb126
bb126:
  ADD a1, t1, zero
  ADD a2, ra, zero
  ADD a3, s11, zero
  SLTI a4, a3, 5
  BNE a4, zero, bb128
  # implict jump to bb127
bb127:
  ADDIW a4, a0, 1
  ADD s3, a3, zero
  ADD s4, a2, zero
  ADD s5, a1, zero
  ADD s6, a4, zero
  JAL zero, bb123
bb128:
  ADDI s3, zero, 48
  MULW s3, a3, s3
  ADD s3, s9, s3
  ADDW s4, s10, a3
  ADD s5, a2, zero
  ADD s6, zero, zero
  # implict jump to bb129
bb129:
  ADD a1, s6, zero
  ADD a2, s5, zero
  SLTI a4, a1, 6
  BNE a4, zero, bb131
  # implict jump to bb130
bb130:
  ADDIW a4, a3, 1
  ADD s11, a4, zero
  ADD ra, a2, zero
  ADD t1, a1, zero
  JAL zero, bb126
bb131:
  SLLIW s11, a1, 3
  ADD s11, s3, s11
  ADDW ra, s4, a1
  ADD t1, zero, zero
  # implict jump to bb132
bb132:
  ADD a2, t1, zero
  SLTI a4, a2, 2
  BNE a4, zero, bb134
  # implict jump to bb133
bb133:
  ADDIW a4, a1, 1
  ADD s5, a2, zero
  ADD s6, a4, zero
  JAL zero, bb129
bb134:
  SLLIW s5, a2, 2
  ADD s5, s11, s5
  ADDW s6, ra, a2
  LW t4, 24(sp)
  ADDW s6, s6, t4
  LW t4, 28(sp)
  ADDW s6, s6, t4
  SW s6, 0(s5)
  ADDIW s5, a2, 1
  ADD t1, s5, zero
  JAL zero, bb132
bb135:
  LW t4, 48(sp)
  LW t3, 28(sp)
  SLT s6, t4, t3
  ADD s0, s6, zero
  JAL zero, bb93
