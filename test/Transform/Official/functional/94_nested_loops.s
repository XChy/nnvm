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
  ADDI sp, sp, -336
  SD ra, 224(sp)
  SD s0, 232(sp)
  SD s1, 240(sp)
  SD s2, 248(sp)
  SD s3, 256(sp)
  SD s4, 264(sp)
  SD s5, 272(sp)
  SD s6, 280(sp)
  SD s7, 288(sp)
  SD s8, 296(sp)
  SD s9, 304(sp)
  SD s10, 312(sp)
  SD s11, 320(sp)
  ADD t4, a0, zero
  SW t4, 144(sp)
  ADD t4, a1, zero
  SW t4, 140(sp)
  ADD t4, a2, zero
  SW t4, 136(sp)
  ADD t4, a3, zero
  SW t4, 132(sp)
  ADD t4, a4, zero
  SW t4, 128(sp)
  ADD t4, a5, zero
  SW t4, 124(sp)
  ADD t4, a6, zero
  SW t4, 120(sp)
  ADD t4, zero, zero
  SW t4, 176(sp)
  ADD t4, zero, zero
  SW t4, 168(sp)
  ADD t4, zero, zero
  SW t4, 164(sp)
  ADD t4, zero, zero
  SW t4, 160(sp)
  ADD t4, zero, zero
  SW t4, 156(sp)
  ADD t4, zero, zero
  SW t4, 152(sp)
  ADD t4, zero, zero
  SW t4, 148(sp)
  # implict jump to bb1
bb1:
  LW t4, 148(sp)
  ADD s8, t4, zero
  LW t4, 152(sp)
  ADD s9, t4, zero
  LW t4, 156(sp)
  ADD s10, t4, zero
  LW t4, 160(sp)
  ADD s11, t4, zero
  LW t4, 164(sp)
  ADD t0, t4, zero
  LW t4, 168(sp)
  ADD t1, t4, zero
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  LW t4, 172(sp)
  SLTI a7, t4, 10
  BNE a7, zero, bb4
  # implict jump to bb2
bb2:
  ADD t4, s8, zero
  SW t4, 60(sp)
  # implict jump to bb3
bb3:
  LW t4, 60(sp)
  ADD s0, t4, zero
  ADD a0, s0, zero
  LD ra, 224(sp)
  LD s0, 232(sp)
  LD s1, 240(sp)
  LD s2, 248(sp)
  LD s3, 256(sp)
  LD s4, 264(sp)
  LD s5, 272(sp)
  LD s6, 280(sp)
  LD s7, 288(sp)
  LD s8, 296(sp)
  LD s9, 304(sp)
  LD s10, 312(sp)
  LD s11, 320(sp)
  ADDI sp, sp, 336
  JALR zero, 0(ra)
bb4:
  ADD t4, t1, zero
  SW t4, 4(sp)
  ADD t4, zero, zero
  SW t4, 180(sp)
  ADD t4, t0, zero
  SW t4, 116(sp)
  ADD t4, s11, zero
  SW t4, 184(sp)
  ADD t4, s10, zero
  SW t4, 188(sp)
  ADD t4, s9, zero
  SW t4, 192(sp)
  ADD t4, s8, zero
  SW t4, 196(sp)
  # implict jump to bb5
bb5:
  LW t4, 196(sp)
  ADD a7, t4, zero
  LW t4, 192(sp)
  ADD a6, t4, zero
  LW t4, 188(sp)
  ADD a5, t4, zero
  LW t4, 184(sp)
  ADD a4, t4, zero
  LW t4, 116(sp)
  ADD a3, t4, zero
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 4(sp)
  ADD a1, t4, zero
  LW t4, 8(sp)
  SLTI s0, t4, 100
  BNE s0, zero, bb10
  # implict jump to bb6
bb6:
  ADD t4, a1, zero
  SW t4, 216(sp)
  ADD t4, a3, zero
  SW t4, 212(sp)
  ADD t4, a4, zero
  SW t4, 208(sp)
  ADD t4, a5, zero
  SW t4, 204(sp)
  ADD t4, a6, zero
  SW t4, 200(sp)
  ADD t4, a7, zero
  SW t4, 220(sp)
  # implict jump to bb7
bb7:
  LW t4, 220(sp)
  ADD s0, t4, zero
  LW t4, 200(sp)
  ADD s1, t4, zero
  LW t4, 204(sp)
  ADD s2, t4, zero
  LW t4, 208(sp)
  ADD s3, t4, zero
  LW t4, 212(sp)
  ADD s4, t4, zero
  LW t4, 216(sp)
  ADD s5, t4, zero
  LW t4, 172(sp)
  ADDIW s6, t4, 1
  LW t4, 144(sp)
  SLT s7, s6, t4
  XORI s7, s7, 1
  BNE s7, zero, bb9
  # implict jump to bb8
bb8:
  ADD t4, s6, zero
  SW t4, 176(sp)
  ADD t4, s5, zero
  SW t4, 168(sp)
  ADD t4, s4, zero
  SW t4, 164(sp)
  ADD t4, s3, zero
  SW t4, 160(sp)
  ADD t4, s2, zero
  SW t4, 156(sp)
  ADD t4, s1, zero
  SW t4, 152(sp)
  ADD t4, s0, zero
  SW t4, 148(sp)
  JAL zero, bb1
bb9:
  ADD t4, s0, zero
  SW t4, 60(sp)
  JAL zero, bb3
bb10:
  ADD t4, a1, zero
  SW t4, 56(sp)
  ADD t4, zero, zero
  SW t4, 52(sp)
  ADD t4, a4, zero
  SW t4, 48(sp)
  ADD t4, a5, zero
  SW t4, 44(sp)
  ADD t4, a6, zero
  SW t4, 40(sp)
  ADD t4, a7, zero
  SW t4, 36(sp)
  # implict jump to bb11
bb11:
  LW t4, 36(sp)
  ADD s2, t4, zero
  LW t4, 40(sp)
  ADD s1, t4, zero
  LW t4, 44(sp)
  ADD t2, t4, zero
  LW t4, 48(sp)
  ADD s0, t4, zero
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 56(sp)
  ADD s7, t4, zero
  LW t4, 0(sp)
  SLTI s6, t4, 1000
  BNE s6, zero, bb16
  # implict jump to bb12
bb12:
  ADD t4, s7, zero
  SW t4, 12(sp)
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  ADD t4, s0, zero
  SW t4, 20(sp)
  ADD t4, t2, zero
  SW t4, 24(sp)
  ADD t4, s1, zero
  SW t4, 28(sp)
  ADD t4, s2, zero
  SW t4, 32(sp)
  # implict jump to bb13
bb13:
  LW t4, 32(sp)
  ADD s0, t4, zero
  LW t4, 28(sp)
  ADD s1, t4, zero
  LW t4, 24(sp)
  ADD s2, t4, zero
  LW t4, 20(sp)
  ADD s3, t4, zero
  LW t4, 16(sp)
  ADD s4, t4, zero
  LW t4, 12(sp)
  ADD s5, t4, zero
  LW t4, 8(sp)
  ADDIW s6, t4, 1
  LW t4, 140(sp)
  SLT s7, s6, t4
  XORI s7, s7, 1
  BNE s7, zero, bb15
  # implict jump to bb14
bb14:
  ADD t4, s5, zero
  SW t4, 4(sp)
  ADD t4, s6, zero
  SW t4, 180(sp)
  ADD t4, s4, zero
  SW t4, 116(sp)
  ADD t4, s3, zero
  SW t4, 184(sp)
  ADD t4, s2, zero
  SW t4, 188(sp)
  ADD t4, s1, zero
  SW t4, 192(sp)
  ADD t4, s0, zero
  SW t4, 196(sp)
  JAL zero, bb5
bb15:
  ADD t4, s5, zero
  SW t4, 216(sp)
  ADD t4, s4, zero
  SW t4, 212(sp)
  ADD t4, s3, zero
  SW t4, 208(sp)
  ADD t4, s2, zero
  SW t4, 204(sp)
  ADD t4, s1, zero
  SW t4, 200(sp)
  ADD t4, s0, zero
  SW t4, 220(sp)
  JAL zero, bb7
bb16:
  ADD t4, s7, zero
  SW t4, 100(sp)
  ADD t4, zero, zero
  SW t4, 96(sp)
  ADD t4, t2, zero
  SW t4, 92(sp)
  ADD t4, s1, zero
  SW t4, 88(sp)
  ADD t4, s2, zero
  SW t4, 84(sp)
  # implict jump to bb17
bb17:
  LW t4, 84(sp)
  ADD s11, t4, zero
  LW t4, 88(sp)
  ADD t0, t4, zero
  LW t4, 92(sp)
  ADD t6, t4, zero
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t4, 100(sp)
  ADD a2, t4, zero
  LUI s6, 2
  ADDIW s6, s6, 1808
  LW t4, 104(sp)
  SLT s6, t4, s6
  BNE s6, zero, bb22
  # implict jump to bb18
bb18:
  ADD t4, a2, zero
  SW t4, 64(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  ADD t4, t6, zero
  SW t4, 72(sp)
  ADD t4, t0, zero
  SW t4, 76(sp)
  ADD t4, s11, zero
  SW t4, 80(sp)
  # implict jump to bb19
bb19:
  LW t4, 80(sp)
  ADD s0, t4, zero
  LW t4, 76(sp)
  ADD s1, t4, zero
  LW t4, 72(sp)
  ADD s2, t4, zero
  LW t4, 68(sp)
  ADD s3, t4, zero
  LW t4, 64(sp)
  ADD s4, t4, zero
  LW t4, 0(sp)
  ADDIW s5, t4, 1
  LW t4, 136(sp)
  SLT s6, s5, t4
  XORI s6, s6, 1
  BNE s6, zero, bb21
  # implict jump to bb20
bb20:
  ADD t4, s4, zero
  SW t4, 56(sp)
  ADD t4, s5, zero
  SW t4, 52(sp)
  ADD t4, s3, zero
  SW t4, 48(sp)
  ADD t4, s2, zero
  SW t4, 44(sp)
  ADD t4, s1, zero
  SW t4, 40(sp)
  ADD t4, s0, zero
  SW t4, 36(sp)
  JAL zero, bb11
bb21:
  ADD t4, s4, zero
  SW t4, 12(sp)
  ADD t4, s5, zero
  SW t4, 16(sp)
  ADD t4, s3, zero
  SW t4, 20(sp)
  ADD t4, s2, zero
  SW t4, 24(sp)
  ADD t4, s1, zero
  SW t4, 28(sp)
  ADD t4, s0, zero
  SW t4, 32(sp)
  JAL zero, bb13
bb22:
  ADD s8, zero, zero
  # implict jump to bb23
bb23:
  ADD s9, s11, zero
  ADD a7, s8, zero
  ADD a6, t6, zero
  ADD a5, a2, zero
  LUI a4, 24
  ADDIW a4, a4, 1696
  SLT a4, a7, a4
  BNE a4, zero, bb28
  # implict jump to bb24
bb24:
  ADD t4, a5, zero
  SW t4, 108(sp)
  ADD t4, a6, zero
  SW t4, 112(sp)
  ADD s3, a7, zero
  ADD a1, s9, zero
  # implict jump to bb25
bb25:
  LW t4, 112(sp)
  ADD s0, t4, zero
  LW t4, 108(sp)
  ADD s1, t4, zero
  LW t4, 104(sp)
  ADDIW s2, t4, 1
  LW t4, 132(sp)
  SLT s4, s2, t4
  XORI s4, s4, 1
  BNE s4, zero, bb27
  # implict jump to bb26
bb26:
  ADD t4, s1, zero
  SW t4, 100(sp)
  ADD t4, s2, zero
  SW t4, 96(sp)
  ADD t4, s0, zero
  SW t4, 92(sp)
  ADD t4, s3, zero
  SW t4, 88(sp)
  ADD t4, a1, zero
  SW t4, 84(sp)
  JAL zero, bb17
bb27:
  ADD t4, s1, zero
  SW t4, 64(sp)
  ADD t4, s2, zero
  SW t4, 68(sp)
  ADD t4, s0, zero
  SW t4, 72(sp)
  ADD t4, s3, zero
  SW t4, 76(sp)
  ADD t4, a1, zero
  SW t4, 80(sp)
  JAL zero, bb19
bb28:
  ADD a3, zero, zero
  # implict jump to bb29
bb29:
  ADD s6, s9, zero
  ADD s5, a3, zero
  ADD s0, a5, zero
  LUI t0, 244
  ADDIW t0, t0, 576
  SLT t0, s5, t0
  BNE t0, zero, bb34
  # implict jump to bb30
bb30:
  ADD t0, s5, zero
  ADD s4, s6, zero
  # implict jump to bb31
bb31:
  ADDIW s1, a7, 1
  LW t4, 128(sp)
  SLT s2, s1, t4
  XORI s2, s2, 1
  BNE s2, zero, bb33
  # implict jump to bb32
bb32:
  ADD a2, s0, zero
  ADD t6, t0, zero
  ADD s8, s1, zero
  ADD s11, s4, zero
  JAL zero, bb23
bb33:
  ADD t4, s0, zero
  SW t4, 108(sp)
  ADD t4, t0, zero
  SW t4, 112(sp)
  ADD s3, s1, zero
  ADD a1, s4, zero
  JAL zero, bb25
bb34:
  ADD s2, zero, zero
  # implict jump to bb35
bb35:
  ADD s1, s6, zero
  ADD t2, s2, zero
  LUI s10, 2441
  ADDIW s10, s10, 1664
  SLT s10, t2, s10
  BNE s10, zero, bb40
  # implict jump to bb36
bb36:
  ADD s10, t2, zero
  ADD s7, s1, zero
  # implict jump to bb37
bb37:
  ADDIW s1, s5, 1
  LW t4, 124(sp)
  SLT s2, s1, t4
  XORI s2, s2, 1
  BNE s2, zero, bb39
  # implict jump to bb38
bb38:
  ADD a5, s10, zero
  ADD a3, s1, zero
  ADD s9, s7, zero
  JAL zero, bb29
bb39:
  ADD s0, s10, zero
  ADD t0, s1, zero
  ADD s4, s7, zero
  JAL zero, bb31
bb40:
  ADDI t1, zero, 817
  REMW s1, s1, t1
  LUI t1, 1
  ADDIW t1, t1, 1664
  LW t4, 172(sp)
  MULW t1, t4, t1
  LA a4, arr1
  ADD t1, a4, t1
  LUI a4, 1
  ADDIW a4, a4, -1216
  LW t4, 8(sp)
  MULW a4, t4, a4
  ADD t1, t1, a4
  ADDI a4, zero, 960
  LW t4, 0(sp)
  MULW a4, t4, a4
  ADD t1, t1, a4
  ADDI a4, zero, 240
  LW t4, 104(sp)
  MULW a4, t4, a4
  ADD t1, t1, a4
  ADDI a4, zero, 48
  MULW a4, a7, a4
  ADD t1, t1, a4
  SLLIW a4, s5, 3
  ADD t1, t1, a4
  SLLIW a4, t2, 2
  ADD t1, t1, a4
  LW t1, 0(t1)
  ADDW s1, s1, t1
  LUI t1, 3
  ADDIW t1, t1, -1536
  LW t4, 172(sp)
  MULW t1, t4, t1
  LA a6, arr2
  ADD t1, a6, t1
  LUI a6, 1
  ADDIW a6, a6, 1280
  LW t4, 8(sp)
  MULW a6, t4, a6
  ADD t1, t1, a6
  ADDI a6, zero, 1792
  LW t4, 0(sp)
  MULW a6, t4, a6
  ADD t1, t1, a6
  ADDI a6, zero, 896
  LW t4, 104(sp)
  MULW a6, t4, a6
  ADD t1, t1, a6
  ADDI a6, zero, 224
  MULW a6, a7, a6
  ADD t1, t1, a6
  ADDI a6, zero, 28
  MULW a6, s5, a6
  ADD t1, t1, a6
  ADD t1, t1, a4
  LW t1, 0(t1)
  ADDW s1, s1, t1
  ADDIW t1, t2, 1
  LW t4, 120(sp)
  SLT t2, t1, t4
  XORI t2, t2, 1
  BNE t2, zero, bb42
  # implict jump to bb41
bb41:
  ADD s2, t1, zero
  ADD s6, s1, zero
  JAL zero, bb35
bb42:
  ADD s10, t1, zero
  ADD s7, s1, zero
  JAL zero, bb37
loop2:
  ADDI sp, sp, -352
  SD ra, 232(sp)
  SD s0, 240(sp)
  SD s1, 248(sp)
  SD s2, 256(sp)
  SD s3, 264(sp)
  SD s4, 272(sp)
  SD s5, 280(sp)
  SD s6, 288(sp)
  SD s7, 296(sp)
  SD s8, 304(sp)
  SD s9, 312(sp)
  SD s10, 320(sp)
  SD s11, 328(sp)
  SLTI s7, zero, 10
  BNE s7, zero, bb45
  # implict jump to bb44
bb44:
  LD ra, 232(sp)
  LD s0, 240(sp)
  LD s1, 248(sp)
  LD s2, 256(sp)
  LD s3, 264(sp)
  LD s4, 272(sp)
  LD s5, 280(sp)
  LD s6, 288(sp)
  LD s7, 296(sp)
  LD s8, 304(sp)
  LD s9, 312(sp)
  LD s10, 320(sp)
  LD s11, 328(sp)
  ADDI sp, sp, 352
  JALR zero, 0(ra)
bb45:
  # implict jump to bb46
bb46:
  SLTI t4, zero, 2
  SB t4, 4(sp)
  ADD t4, zero, zero
  SW t4, 92(sp)
  ADD t4, zero, zero
  SW t4, 72(sp)
  ADD t4, zero, zero
  SW t4, 28(sp)
  ADD t4, zero, zero
  SW t4, 56(sp)
  ADD t4, zero, zero
  SW t4, 64(sp)
  ADD t4, zero, zero
  SW t4, 196(sp)
  # implict jump to bb47
bb47:
  LW t4, 196(sp)
  ADD s2, t4, zero
  LW t4, 64(sp)
  ADD t2, t4, zero
  LW t4, 56(sp)
  ADD s3, t4, zero
  LW t4, 28(sp)
  ADD t0, t4, zero
  LW t4, 72(sp)
  ADD s8, t4, zero
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  LB t4, 4(sp)
  BNE t4, zero, bb52
  # implict jump to bb48
bb48:
  ADD t4, s8, zero
  SW t4, 104(sp)
  ADD t4, t0, zero
  SW t4, 108(sp)
  ADD t4, s3, zero
  SW t4, 112(sp)
  ADD t4, t2, zero
  SW t4, 120(sp)
  ADD s0, s2, zero
  # implict jump to bb49
bb49:
  ADD t4, s0, zero
  SW t4, 220(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t3, 180(sp)
  ADDIW t4, t3, 1
  SW t4, 80(sp)
  # implict jump to bb50
bb50:
  LW t4, 80(sp)
  SLTI s0, t4, 10
  BNE s0, zero, bb51
  JAL zero, bb44
bb51:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 220(sp)
  ADD t4, t3, zero
  SW t4, 196(sp)
  JAL zero, bb47
bb52:
  # implict jump to bb53
bb53:
  SLTI t4, zero, 3
  SB t4, 3(sp)
  ADD t4, zero, zero
  SW t4, 200(sp)
  ADD t4, t0, zero
  SW t4, 216(sp)
  ADD t4, s3, zero
  SW t4, 212(sp)
  ADD t4, t2, zero
  SW t4, 208(sp)
  ADD t4, s2, zero
  SW t4, 204(sp)
  # implict jump to bb54
bb54:
  LW t4, 204(sp)
  ADD s2, t4, zero
  LW t4, 208(sp)
  ADD t2, t4, zero
  LW t4, 212(sp)
  ADD s3, t4, zero
  LW t4, 216(sp)
  ADD t0, t4, zero
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LB t4, 3(sp)
  BNE t4, zero, bb60
  # implict jump to bb55
bb55:
  ADD s9, zero, zero
  ADD a1, s3, zero
  ADD a5, t2, zero
  ADD a7, s2, zero
  # implict jump to bb56
bb56:
  ADD t4, a7, zero
  SW t4, 224(sp)
  ADD t4, a5, zero
  SW t4, 176(sp)
  ADD t4, a1, zero
  SW t4, 184(sp)
  ADD t4, t0, zero
  SW t4, 188(sp)
  ADD s10, s9, zero
  LW t3, 124(sp)
  ADDIW t4, t3, 1
  SW t4, 192(sp)
  # implict jump to bb57
bb57:
  LW t4, 192(sp)
  SLTI s1, t4, 2
  BNE s1, zero, bb59
  # implict jump to bb58
bb58:
  ADD t4, s10, zero
  SW t4, 104(sp)
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t4, 224(sp)
  ADD s0, t4, zero
  JAL zero, bb49
bb59:
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 212(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  LW t3, 224(sp)
  ADD t4, t3, zero
  SW t4, 204(sp)
  JAL zero, bb54
bb60:
  # implict jump to bb61
bb61:
  SLTI t4, zero, 2
  SB t4, 5(sp)
  ADD t4, zero, zero
  SW t4, 52(sp)
  ADD t4, s3, zero
  SW t4, 40(sp)
  ADD t4, t2, zero
  SW t4, 44(sp)
  ADD t4, s2, zero
  SW t4, 8(sp)
  # implict jump to bb62
bb62:
  LW t4, 8(sp)
  ADD s2, t4, zero
  LW t4, 44(sp)
  ADD t2, t4, zero
  LW t4, 40(sp)
  ADD s3, t4, zero
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LB t4, 5(sp)
  BNE t4, zero, bb68
  # implict jump to bb63
bb63:
  ADD s1, zero, zero
  ADD a0, t2, zero
  ADD a6, s2, zero
  # implict jump to bb64
bb64:
  ADD t4, a6, zero
  SW t4, 160(sp)
  ADD t4, a0, zero
  SW t4, 164(sp)
  ADD t4, s3, zero
  SW t4, 168(sp)
  ADD s4, s1, zero
  LW t3, 36(sp)
  ADDIW t4, t3, 1
  SW t4, 172(sp)
  # implict jump to bb65
bb65:
  LW t4, 172(sp)
  SLTI s1, t4, 3
  BNE s1, zero, bb67
  # implict jump to bb66
bb66:
  LW t4, 172(sp)
  ADD s9, t4, zero
  ADD t0, s4, zero
  LW t4, 168(sp)
  ADD a1, t4, zero
  LW t4, 164(sp)
  ADD a5, t4, zero
  LW t4, 160(sp)
  ADD a7, t4, zero
  JAL zero, bb56
bb67:
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb62
bb68:
  # implict jump to bb69
bb69:
  SLTI t4, zero, 4
  SB t4, 2(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  ADD t4, t2, zero
  SW t4, 12(sp)
  ADD t4, s2, zero
  SW t4, 16(sp)
  # implict jump to bb70
bb70:
  LW t4, 16(sp)
  ADD s2, t4, zero
  LW t4, 12(sp)
  ADD t2, t4, zero
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LB t4, 2(sp)
  BNE t4, zero, bb76
  # implict jump to bb71
bb71:
  ADD s11, zero, zero
  ADD t6, s2, zero
  # implict jump to bb72
bb72:
  ADD t4, t6, zero
  SW t4, 148(sp)
  ADD t4, t2, zero
  SW t4, 152(sp)
  ADD s5, s11, zero
  LW t3, 68(sp)
  ADDIW t4, t3, 1
  SW t4, 156(sp)
  # implict jump to bb73
bb73:
  LW t4, 156(sp)
  SLTI s2, t4, 2
  BNE s2, zero, bb75
  # implict jump to bb74
bb74:
  LW t4, 156(sp)
  ADD s1, t4, zero
  ADD s3, s5, zero
  LW t4, 152(sp)
  ADD a0, t4, zero
  LW t4, 148(sp)
  ADD a6, t4, zero
  JAL zero, bb64
bb75:
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb70
bb76:
  # implict jump to bb77
bb77:
  SLTI t4, zero, 8
  SB t4, 1(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  ADD t4, s2, zero
  SW t4, 84(sp)
  # implict jump to bb78
bb78:
  LW t4, 84(sp)
  ADD s2, t4, zero
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LB t4, 1(sp)
  BNE t4, zero, bb84
  # implict jump to bb79
bb79:
  ADD s7, zero, zero
  # implict jump to bb80
bb80:
  ADD t4, s2, zero
  SW t4, 140(sp)
  ADD a4, s7, zero
  LW t3, 88(sp)
  ADDIW t4, t3, 1
  SW t4, 144(sp)
  # implict jump to bb81
bb81:
  LW t4, 144(sp)
  SLTI s2, t4, 4
  BNE s2, zero, bb83
  # implict jump to bb82
bb82:
  LW t4, 144(sp)
  ADD s11, t4, zero
  ADD t2, a4, zero
  LW t4, 140(sp)
  ADD t6, t4, zero
  JAL zero, bb72
bb83:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  JAL zero, bb78
bb84:
  # implict jump to bb85
bb85:
  SLTI t4, zero, 7
  SB t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 96(sp)
  # implict jump to bb86
bb86:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  LB t4, 0(sp)
  BNE t4, zero, bb92
  # implict jump to bb87
bb87:
  ADD s8, zero, zero
  # implict jump to bb88
bb88:
  ADD a3, s8, zero
  LW t3, 100(sp)
  ADDIW t4, t3, 1
  SW t4, 132(sp)
  # implict jump to bb89
bb89:
  LW t4, 132(sp)
  SLTI s6, t4, 8
  BNE s6, zero, bb91
  # implict jump to bb90
bb90:
  LW t4, 132(sp)
  ADD s7, t4, zero
  ADD s2, a3, zero
  JAL zero, bb80
bb91:
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  JAL zero, bb86
bb92:
  # implict jump to bb93
bb93:
  LUI a2, 3
  ADDIW a2, a2, -1536
  LW t4, 180(sp)
  MULW a2, t4, a2
  LA t1, arr2
  ADD t1, t1, a2
  LUI a2, 1
  ADDIW a2, a2, 1280
  LW t4, 124(sp)
  MULW a2, t4, a2
  ADD t1, t1, a2
  ADDI a2, zero, 1792
  LW t4, 36(sp)
  MULW a2, t4, a2
  ADD t1, t1, a2
  ADDI a2, zero, 896
  LW t4, 68(sp)
  MULW a2, t4, a2
  ADD t1, t1, a2
  ADDI a2, zero, 224
  LW t4, 88(sp)
  MULW a2, t4, a2
  ADD t1, t1, a2
  ADDI a2, zero, 28
  LW t4, 100(sp)
  MULW a2, t4, a2
  ADD t4, t1, a2
  SD t4, 336(sp)
  LW t4, 180(sp)
  LW t3, 124(sp)
  ADDW t1, t4, t3
  LW t3, 68(sp)
  ADDW t4, t1, t3
  SW t4, 136(sp)
  ADD t4, zero, zero
  SW t4, 116(sp)
  # implict jump to bb94
bb94:
  LW t4, 116(sp)
  ADD a2, t4, zero
  SLLIW t1, a2, 2
  LD t4, 336(sp)
  ADD t1, t4, t1
  LW t4, 136(sp)
  ADDW s6, t4, a2
  SW s6, 0(t1)
  ADDIW t4, a2, 1
  SW t4, 128(sp)
  # implict jump to bb95
bb95:
  LW t4, 128(sp)
  SLTI s6, t4, 7
  BNE s6, zero, bb97
  # implict jump to bb96
bb96:
  LW t4, 128(sp)
  ADD s8, t4, zero
  JAL zero, bb88
bb97:
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  JAL zero, bb94
loop1:
  ADDI sp, sp, -336
  SD ra, 216(sp)
  SD s0, 224(sp)
  SD s1, 232(sp)
  SD s2, 240(sp)
  SD s3, 248(sp)
  SD s4, 256(sp)
  SD s5, 264(sp)
  SD s6, 272(sp)
  SD s7, 280(sp)
  SD s8, 288(sp)
  SD s9, 296(sp)
  SD s10, 304(sp)
  SD s11, 312(sp)
  ADD t4, a0, zero
  SW t4, 128(sp)
  ADD t4, a1, zero
  SW t4, 124(sp)
  ADD t4, zero, zero
  SW t4, 84(sp)
  ADD t4, zero, zero
  SW t4, 68(sp)
  ADD t4, zero, zero
  SW t4, 64(sp)
  ADD t4, zero, zero
  SW t4, 28(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb99
bb99:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t4, 32(sp)
  ADD s3, t4, zero
  LW t4, 28(sp)
  ADD t2, t4, zero
  LW t4, 64(sp)
  ADD a6, t4, zero
  LW t4, 68(sp)
  ADD a7, t4, zero
  LW t4, 84(sp)
  ADD t6, t4, zero
  LW t4, 140(sp)
  LW t3, 128(sp)
  BLT t4, t3, bb152
  # implict jump to bb100
bb100:
  ADD a2, zero, zero
  # implict jump to bb101
bb101:
  BNE a2, zero, bb103
  # implict jump to bb102
bb102:
  LD ra, 216(sp)
  LD s0, 224(sp)
  LD s1, 232(sp)
  LD s2, 240(sp)
  LD s3, 248(sp)
  LD s4, 256(sp)
  LD s5, 264(sp)
  LD s6, 272(sp)
  LD s7, 280(sp)
  LD s8, 288(sp)
  LD s9, 296(sp)
  LD s10, 304(sp)
  LD s11, 312(sp)
  ADDI sp, sp, 336
  JALR zero, 0(ra)
bb103:
  SLTI a2, zero, 2
  BNE a2, zero, bb106
  # implict jump to bb104
bb104:
  ADD t4, s3, zero
  SW t4, 96(sp)
  ADD t4, t2, zero
  SW t4, 100(sp)
  ADD t4, a6, zero
  SW t4, 104(sp)
  ADD t4, a7, zero
  SW t4, 112(sp)
  ADD a3, t6, zero
  # implict jump to bb105
bb105:
  LW t4, 112(sp)
  ADD s0, t4, zero
  LW t4, 104(sp)
  ADD s1, t4, zero
  LW t4, 100(sp)
  ADD s2, t4, zero
  LW t4, 96(sp)
  ADD s3, t4, zero
  LW t4, 140(sp)
  ADDIW s4, t4, 1
  ADD t4, a3, zero
  SW t4, 84(sp)
  ADD t4, s0, zero
  SW t4, 68(sp)
  ADD t4, s1, zero
  SW t4, 64(sp)
  ADD t4, s2, zero
  SW t4, 28(sp)
  ADD t4, s3, zero
  SW t4, 32(sp)
  ADD t4, s4, zero
  SW t4, 36(sp)
  JAL zero, bb99
bb106:
  # implict jump to bb107
bb107:
  SLTI t4, zero, 3
  SB t4, 4(sp)
  ADD t4, zero, zero
  SW t4, 204(sp)
  ADD t4, t2, zero
  SW t4, 200(sp)
  ADD t4, a6, zero
  SW t4, 188(sp)
  ADD t4, a7, zero
  SW t4, 184(sp)
  ADD t4, t6, zero
  SW t4, 180(sp)
  # implict jump to bb108
bb108:
  LW t4, 180(sp)
  ADD t6, t4, zero
  LW t4, 184(sp)
  ADD a7, t4, zero
  LW t4, 188(sp)
  ADD a6, t4, zero
  LW t4, 200(sp)
  ADD s6, t4, zero
  LW t3, 204(sp)
  ADD t4, t3, zero
  SW t4, 196(sp)
  LB t4, 4(sp)
  BNE t4, zero, bb114
  # implict jump to bb109
bb109:
  ADD t2, zero, zero
  ADD s2, a6, zero
  ADD s10, a7, zero
  ADD t1, t6, zero
  # implict jump to bb110
bb110:
  ADD t4, t1, zero
  SW t4, 172(sp)
  ADD t4, s10, zero
  SW t4, 176(sp)
  ADD t4, s2, zero
  SW t4, 192(sp)
  ADD t4, s6, zero
  SW t4, 116(sp)
  ADD s8, t2, zero
  LW t3, 196(sp)
  ADDIW t4, t3, 1
  SW t4, 60(sp)
  # implict jump to bb111
bb111:
  LW t4, 60(sp)
  SLTI s0, t4, 2
  BNE s0, zero, bb113
  # implict jump to bb112
bb112:
  ADD t4, s8, zero
  SW t4, 96(sp)
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t4, 172(sp)
  ADD a3, t4, zero
  JAL zero, bb105
bb113:
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 204(sp)
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  JAL zero, bb108
bb114:
  # implict jump to bb115
bb115:
  SLTI t4, zero, 4
  SB t4, 3(sp)
  ADD t4, zero, zero
  SW t4, 56(sp)
  ADD t4, a6, zero
  SW t4, 44(sp)
  ADD t4, a7, zero
  SW t4, 48(sp)
  ADD t4, t6, zero
  SW t4, 52(sp)
  # implict jump to bb116
bb116:
  LW t4, 52(sp)
  ADD t6, t4, zero
  LW t4, 48(sp)
  ADD a7, t4, zero
  LW t4, 44(sp)
  ADD a6, t4, zero
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LB t4, 3(sp)
  BNE t4, zero, bb122
  # implict jump to bb117
bb117:
  ADD a5, zero, zero
  ADD t0, a6, zero
  ADD s9, a7, zero
  # implict jump to bb118
bb118:
  ADD t4, t6, zero
  SW t4, 120(sp)
  ADD t4, s9, zero
  SW t4, 208(sp)
  ADD t4, t0, zero
  SW t4, 164(sp)
  ADD s0, a5, zero
  LW t3, 40(sp)
  ADDIW t4, t3, 1
  SW t4, 168(sp)
  # implict jump to bb119
bb119:
  LW t4, 168(sp)
  SLTI s1, t4, 3
  BNE s1, zero, bb121
  # implict jump to bb120
bb120:
  LW t4, 168(sp)
  ADD t2, t4, zero
  ADD s6, s0, zero
  LW t4, 164(sp)
  ADD s2, t4, zero
  LW t4, 208(sp)
  ADD s10, t4, zero
  LW t4, 120(sp)
  ADD t1, t4, zero
  JAL zero, bb110
bb121:
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  JAL zero, bb116
bb122:
  # implict jump to bb123
bb123:
  SLTI t4, zero, 5
  SB t4, 2(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, a6, zero
  SW t4, 16(sp)
  ADD t4, a7, zero
  SW t4, 20(sp)
  # implict jump to bb124
bb124:
  LW t4, 20(sp)
  ADD a7, t4, zero
  LW t4, 16(sp)
  ADD a6, t4, zero
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LB t4, 2(sp)
  BNE t4, zero, bb130
  # implict jump to bb125
bb125:
  ADD s11, a7, zero
  ADD a0, zero, zero
  # implict jump to bb126
bb126:
  ADD s1, a0, zero
  ADD t4, s11, zero
  SW t4, 152(sp)
  ADD t4, a6, zero
  SW t4, 156(sp)
  LW t3, 8(sp)
  ADDIW t4, t3, 1
  SW t4, 160(sp)
  # implict jump to bb127
bb127:
  LW t4, 160(sp)
  SLTI s3, t4, 4
  BNE s3, zero, bb129
  # implict jump to bb128
bb128:
  LW t4, 160(sp)
  ADD a5, t4, zero
  LW t4, 156(sp)
  ADD t0, t4, zero
  LW t4, 152(sp)
  ADD s9, t4, zero
  ADD t6, s1, zero
  JAL zero, bb118
bb129:
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb124
bb130:
  # implict jump to bb131
bb131:
  SLTI t4, zero, 6
  SB t4, 0(sp)
  ADD t4, a7, zero
  SW t4, 80(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb132
bb132:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t4, 80(sp)
  ADD a7, t4, zero
  LB t4, 0(sp)
  BNE t4, zero, bb138
  # implict jump to bb133
bb133:
  ADD a1, zero, zero
  # implict jump to bb134
bb134:
  ADD t4, a7, zero
  SW t4, 148(sp)
  ADD s4, a1, zero
  LW t3, 76(sp)
  ADDIW t4, t3, 1
  SW t4, 144(sp)
  # implict jump to bb135
bb135:
  LW t4, 144(sp)
  SLTI s3, t4, 5
  BNE s3, zero, bb137
  # implict jump to bb136
bb136:
  ADD a6, s4, zero
  LW t4, 148(sp)
  ADD s11, t4, zero
  LW t4, 144(sp)
  ADD a0, t4, zero
  JAL zero, bb126
bb137:
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  JAL zero, bb132
bb138:
  # implict jump to bb139
bb139:
  SLTI t4, zero, 2
  SB t4, 1(sp)
  ADD t4, zero, zero
  SW t4, 88(sp)
  # implict jump to bb140
bb140:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LB t4, 1(sp)
  BNE t4, zero, bb146
  # implict jump to bb141
bb141:
  ADD s3, zero, zero
  # implict jump to bb142
bb142:
  ADD s7, s3, zero
  LW t3, 92(sp)
  ADDIW t4, t3, 1
  SW t4, 136(sp)
  # implict jump to bb143
bb143:
  LW t4, 136(sp)
  SLTI s3, t4, 6
  BNE s3, zero, bb145
  # implict jump to bb144
bb144:
  LW t4, 136(sp)
  ADD a1, t4, zero
  ADD a7, s7, zero
  JAL zero, bb134
bb145:
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  JAL zero, bb140
bb146:
  # implict jump to bb147
bb147:
  LUI a2, 1
  ADDIW a2, a2, 1664
  LW t4, 140(sp)
  MULW a2, t4, a2
  LA a4, arr1
  ADD a2, a4, a2
  LUI a4, 1
  ADDIW a4, a4, -1216
  LW t4, 196(sp)
  MULW a4, t4, a4
  ADD a2, a2, a4
  ADDI a4, zero, 960
  LW t4, 40(sp)
  MULW a4, t4, a4
  ADD a2, a2, a4
  ADDI a4, zero, 240
  LW t4, 8(sp)
  MULW a4, t4, a4
  ADD a2, a2, a4
  ADDI a4, zero, 48
  LW t4, 76(sp)
  MULW a4, t4, a4
  ADD a2, a2, a4
  LW t4, 92(sp)
  SLLIW a4, t4, 3
  ADD t4, a2, a4
  SD t4, 320(sp)
  LW t4, 140(sp)
  LW t3, 196(sp)
  ADDW a2, t4, t3
  LW t4, 40(sp)
  ADDW a2, a2, t4
  LW t4, 8(sp)
  ADDW a2, a2, t4
  LW t4, 76(sp)
  ADDW a2, a2, t4
  LW t3, 92(sp)
  ADDW t4, a2, t3
  SW t4, 72(sp)
  ADD t4, zero, zero
  SW t4, 108(sp)
  # implict jump to bb148
bb148:
  LW t4, 108(sp)
  ADD a4, t4, zero
  SLLIW a2, a4, 2
  LD t4, 320(sp)
  ADD a2, t4, a2
  LW t4, 72(sp)
  ADDW s5, t4, a4
  LW t4, 128(sp)
  ADDW s5, s5, t4
  LW t4, 124(sp)
  ADDW s5, s5, t4
  SW s5, 0(a2)
  ADDIW t4, a4, 1
  SW t4, 132(sp)
  # implict jump to bb149
bb149:
  LW t4, 132(sp)
  SLTI s5, t4, 2
  BNE s5, zero, bb151
  # implict jump to bb150
bb150:
  LW t4, 132(sp)
  ADD s3, t4, zero
  JAL zero, bb142
bb151:
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  JAL zero, bb148
bb152:
  LW t4, 140(sp)
  LW t3, 124(sp)
  SLT a4, t4, t3
  ADD a2, a4, zero
  JAL zero, bb101
main:
  ADDI sp, sp, -656
  SD ra, 528(sp)
  SD s0, 536(sp)
  SD s1, 544(sp)
  SD s2, 552(sp)
  SD s3, 560(sp)
  SD s8, 568(sp)
  SD s6, 576(sp)
  SD s4, 584(sp)
  SD s7, 592(sp)
  SD s5, 608(sp)
  SD s9, 616(sp)
  SD s10, 624(sp)
  SD s11, 632(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 524(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 464(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 460(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 456(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 452(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 448(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 444(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 440(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 436(sp)
  ADD t4, zero, zero
  SW t4, 432(sp)
  ADD t4, zero, zero
  SW t4, 428(sp)
  ADD t4, zero, zero
  SW t4, 68(sp)
  ADD t4, zero, zero
  SW t4, 424(sp)
  ADD t4, zero, zero
  SW t4, 420(sp)
  ADD t4, zero, zero
  SW t4, 416(sp)
  # implict jump to bb154
bb154:
  LW t3, 416(sp)
  ADD t4, t3, zero
  SW t4, 348(sp)
  LW t3, 420(sp)
  ADD t4, t3, zero
  SW t4, 412(sp)
  LW t3, 424(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 428(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t3, 432(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t4, 348(sp)
  LW t3, 524(sp)
  BLT t4, t3, bb261
  # implict jump to bb155
bb155:
  ADD s0, zero, zero
  # implict jump to bb156
bb156:
  BNE s0, zero, bb212
  # implict jump to bb157
bb157:
  SLTI s0, zero, 10
  BNE s0, zero, bb159
  # implict jump to bb158
bb158:
  LW t4, 460(sp)
  ADD a0, t4, zero
  LW t4, 456(sp)
  ADD a1, t4, zero
  LW t4, 452(sp)
  ADD a2, t4, zero
  LW t4, 448(sp)
  ADD a3, t4, zero
  LW t4, 444(sp)
  ADD a4, t4, zero
  LW t4, 440(sp)
  ADD a5, t4, zero
  LW t4, 436(sp)
  ADD a6, t4, zero
  CALL loop3
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 528(sp)
  LD s0, 536(sp)
  LD s1, 544(sp)
  LD s2, 552(sp)
  LD s3, 560(sp)
  LD s8, 568(sp)
  LD s6, 576(sp)
  LD s4, 584(sp)
  LD s7, 592(sp)
  LD s5, 608(sp)
  LD s9, 616(sp)
  LD s10, 624(sp)
  LD s11, 632(sp)
  ADDI sp, sp, 656
  JALR zero, 0(ra)
bb159:
  # implict jump to bb160
bb160:
  SLTI t4, zero, 2
  SB t4, 1(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 124(sp)
  ADD t4, zero, zero
  SW t4, 120(sp)
  ADD t4, zero, zero
  SW t4, 112(sp)
  ADD t4, zero, zero
  SW t4, 100(sp)
  ADD t4, zero, zero
  SW t4, 64(sp)
  # implict jump to bb161
bb161:
  LW t4, 64(sp)
  ADD s7, t4, zero
  LW t4, 100(sp)
  ADD s4, t4, zero
  LW t4, 112(sp)
  ADD s1, t4, zero
  LW t4, 120(sp)
  ADD s6, t4, zero
  LW t4, 124(sp)
  ADD s3, t4, zero
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LB t4, 1(sp)
  BNE t4, zero, bb166
  # implict jump to bb162
bb162:
  ADD t4, s3, zero
  SW t4, 104(sp)
  ADD t4, s6, zero
  SW t4, 40(sp)
  ADD t4, s1, zero
  SW t4, 44(sp)
  ADD t4, s4, zero
  SW t4, 48(sp)
  ADD t4, s7, zero
  SW t4, 52(sp)
  # implict jump to bb163
bb163:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 316(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  LW t3, 128(sp)
  ADDIW t4, t3, 1
  SW t4, 140(sp)
  # implict jump to bb164
bb164:
  LW t4, 140(sp)
  SLTI s0, t4, 10
  BNE s0, zero, bb165
  JAL zero, bb158
bb165:
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t3, 316(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  JAL zero, bb161
bb166:
  # implict jump to bb167
bb167:
  SLTI t4, zero, 3
  SB t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, s6, zero
  SW t4, 32(sp)
  ADD t4, s1, zero
  SW t4, 28(sp)
  ADD t4, s4, zero
  SW t4, 24(sp)
  ADD t4, s7, zero
  SW t4, 20(sp)
  # implict jump to bb168
bb168:
  LW t4, 20(sp)
  ADD s7, t4, zero
  LW t4, 24(sp)
  ADD s4, t4, zero
  LW t4, 28(sp)
  ADD s1, t4, zero
  LW t4, 32(sp)
  ADD s6, t4, zero
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LB t4, 0(sp)
  BNE t4, zero, bb174
  # implict jump to bb169
bb169:
  ADD t4, zero, zero
  SW t4, 228(sp)
  ADD t4, s6, zero
  SW t4, 232(sp)
  ADD t4, s1, zero
  SW t4, 236(sp)
  ADD t4, s4, zero
  SW t4, 256(sp)
  ADD t4, s7, zero
  SW t4, 260(sp)
  # implict jump to bb170
bb170:
  LW t3, 260(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t3, 256(sp)
  ADD t4, t3, zero
  SW t4, 476(sp)
  LW t3, 236(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LW t3, 232(sp)
  ADD t4, t3, zero
  SW t4, 468(sp)
  LW t3, 228(sp)
  ADD t4, t3, zero
  SW t4, 340(sp)
  LW t3, 36(sp)
  ADDIW t4, t3, 1
  SW t4, 332(sp)
  # implict jump to bb171
bb171:
  LW t4, 332(sp)
  SLTI s0, t4, 2
  BNE s0, zero, bb173
  # implict jump to bb172
bb172:
  LW t3, 340(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t3, 468(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 476(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  JAL zero, bb163
bb173:
  LW t3, 332(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 468(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 476(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb168
bb174:
  # implict jump to bb175
bb175:
  SLTI t4, zero, 2
  SB t4, 2(sp)
  ADD t4, zero, zero
  SW t4, 56(sp)
  ADD t4, s1, zero
  SW t4, 220(sp)
  ADD t4, s4, zero
  SW t4, 252(sp)
  ADD t4, s7, zero
  SW t4, 60(sp)
  # implict jump to bb176
bb176:
  LW t4, 60(sp)
  ADD s7, t4, zero
  LW t4, 252(sp)
  ADD s4, t4, zero
  LW t4, 220(sp)
  ADD s1, t4, zero
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 224(sp)
  LB t4, 2(sp)
  BNE t4, zero, bb182
  # implict jump to bb177
bb177:
  ADD t4, zero, zero
  SW t4, 148(sp)
  ADD t4, s1, zero
  SW t4, 152(sp)
  ADD t4, s4, zero
  SW t4, 156(sp)
  ADD t4, s7, zero
  SW t4, 164(sp)
  # implict jump to bb178
bb178:
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 512(sp)
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 384(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 376(sp)
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 276(sp)
  LW t3, 224(sp)
  ADDIW t4, t3, 1
  SW t4, 84(sp)
  # implict jump to bb179
bb179:
  LW t4, 84(sp)
  SLTI s0, t4, 3
  BNE s0, zero, bb181
  # implict jump to bb180
bb180:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 228(sp)
  LW t3, 276(sp)
  ADD t4, t3, zero
  SW t4, 232(sp)
  LW t3, 376(sp)
  ADD t4, t3, zero
  SW t4, 236(sp)
  LW t3, 384(sp)
  ADD t4, t3, zero
  SW t4, 256(sp)
  LW t3, 512(sp)
  ADD t4, t3, zero
  SW t4, 260(sp)
  JAL zero, bb170
bb181:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 376(sp)
  ADD t4, t3, zero
  SW t4, 220(sp)
  LW t3, 384(sp)
  ADD t4, t3, zero
  SW t4, 252(sp)
  LW t3, 512(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  JAL zero, bb176
bb182:
  # implict jump to bb183
bb183:
  SLTI t4, zero, 4
  SB t4, 3(sp)
  ADD t4, zero, zero
  SW t4, 240(sp)
  ADD t4, s4, zero
  SW t4, 248(sp)
  ADD t4, s7, zero
  SW t4, 244(sp)
  # implict jump to bb184
bb184:
  LW t4, 244(sp)
  ADD s7, t4, zero
  LW t4, 248(sp)
  ADD s4, t4, zero
  LW t3, 240(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  LB t4, 3(sp)
  BNE t4, zero, bb190
  # implict jump to bb185
bb185:
  ADD s9, zero, zero
  ADD s3, s7, zero
  # implict jump to bb186
bb186:
  ADD t4, s3, zero
  SW t4, 324(sp)
  ADD t4, s4, zero
  SW t4, 292(sp)
  ADD s10, s9, zero
  LW t3, 216(sp)
  ADDIW t4, t3, 1
  SW t4, 472(sp)
  # implict jump to bb187
bb187:
  LW t4, 472(sp)
  SLTI s0, t4, 2
  BNE s0, zero, bb189
  # implict jump to bb188
bb188:
  LW t3, 472(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  ADD t4, s10, zero
  SW t4, 152(sp)
  LW t3, 292(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LW t3, 324(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  JAL zero, bb178
bb189:
  LW t3, 472(sp)
  ADD t4, t3, zero
  SW t4, 240(sp)
  LW t3, 292(sp)
  ADD t4, t3, zero
  SW t4, 248(sp)
  LW t3, 324(sp)
  ADD t4, t3, zero
  SW t4, 244(sp)
  JAL zero, bb184
bb190:
  # implict jump to bb191
bb191:
  SLTI t4, zero, 8
  SB t4, 5(sp)
  ADD t4, zero, zero
  SW t4, 264(sp)
  ADD t4, s7, zero
  SW t4, 268(sp)
  # implict jump to bb192
bb192:
  LW t4, 268(sp)
  ADD s7, t4, zero
  LW t3, 264(sp)
  ADD t4, t3, zero
  SW t4, 272(sp)
  LB t4, 5(sp)
  BNE t4, zero, bb198
  # implict jump to bb193
bb193:
  ADD s5, zero, zero
  # implict jump to bb194
bb194:
  ADD t4, s7, zero
  SW t4, 408(sp)
  ADD s8, s5, zero
  LW t3, 272(sp)
  ADDIW t4, t3, 1
  SW t4, 480(sp)
  # implict jump to bb195
bb195:
  LW t4, 480(sp)
  SLTI s0, t4, 4
  BNE s0, zero, bb197
  # implict jump to bb196
bb196:
  LW t4, 480(sp)
  ADD s9, t4, zero
  ADD s4, s8, zero
  LW t4, 408(sp)
  ADD s3, t4, zero
  JAL zero, bb186
bb197:
  LW t3, 480(sp)
  ADD t4, t3, zero
  SW t4, 264(sp)
  LW t3, 408(sp)
  ADD t4, t3, zero
  SW t4, 268(sp)
  JAL zero, bb192
bb198:
  # implict jump to bb199
bb199:
  SLTI t4, zero, 7
  SB t4, 6(sp)
  ADD t4, zero, zero
  SW t4, 280(sp)
  # implict jump to bb200
bb200:
  LW t3, 280(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  LB t4, 6(sp)
  BNE t4, zero, bb206
  # implict jump to bb201
bb201:
  ADD s11, zero, zero
  # implict jump to bb202
bb202:
  ADD s2, s11, zero
  LW t3, 180(sp)
  ADDIW t4, t3, 1
  SW t4, 304(sp)
  # implict jump to bb203
bb203:
  LW t4, 304(sp)
  SLTI s0, t4, 8
  BNE s0, zero, bb205
  # implict jump to bb204
bb204:
  LW t4, 304(sp)
  ADD s5, t4, zero
  ADD s7, s2, zero
  JAL zero, bb194
bb205:
  LW t3, 304(sp)
  ADD t4, t3, zero
  SW t4, 280(sp)
  JAL zero, bb200
bb206:
  # implict jump to bb207
bb207:
  LUI s1, 3
  ADDIW s1, s1, -1536
  LW t4, 128(sp)
  MULW s1, t4, s1
  LA s6, arr2
  ADD s1, s6, s1
  LUI s6, 1
  ADDIW s6, s6, 1280
  LW t4, 36(sp)
  MULW s6, t4, s6
  ADD s1, s1, s6
  ADDI s6, zero, 1792
  LW t4, 224(sp)
  MULW s6, t4, s6
  ADD s1, s1, s6
  ADDI s6, zero, 896
  LW t4, 216(sp)
  MULW s6, t4, s6
  ADD s1, s1, s6
  ADDI s6, zero, 224
  LW t4, 272(sp)
  MULW s6, t4, s6
  ADD s1, s1, s6
  ADDI s6, zero, 28
  LW t4, 180(sp)
  MULW s6, t4, s6
  ADD t4, s1, s6
  SD t4, 640(sp)
  LW t4, 128(sp)
  LW t3, 36(sp)
  ADDW s1, t4, t3
  LW t3, 216(sp)
  ADDW t4, s1, t3
  SW t4, 488(sp)
  ADD t4, zero, zero
  SW t4, 160(sp)
  # implict jump to bb208
bb208:
  LW t4, 160(sp)
  ADD s6, t4, zero
  SLLIW s1, s6, 2
  LD t4, 640(sp)
  ADD s1, t4, s1
  LW t4, 488(sp)
  ADDW s0, t4, s6
  SW s0, 0(s1)
  ADDIW t4, s6, 1
  SW t4, 484(sp)
  # implict jump to bb209
bb209:
  LW t4, 484(sp)
  SLTI s0, t4, 7
  BNE s0, zero, bb211
  # implict jump to bb210
bb210:
  LW t4, 484(sp)
  ADD s11, t4, zero
  JAL zero, bb202
bb211:
  LW t3, 484(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  JAL zero, bb208
bb212:
  SLTI s0, zero, 2
  BNE s0, zero, bb215
  # implict jump to bb213
bb213:
  LW t4, 412(sp)
  ADD s0, t4, zero
  LW t4, 136(sp)
  ADD s1, t4, zero
  LW t4, 72(sp)
  ADD s2, t4, zero
  LW t4, 76(sp)
  ADD s3, t4, zero
  LW t4, 80(sp)
  ADD s4, t4, zero
  # implict jump to bb214
bb214:
  LW t4, 348(sp)
  ADDIW s7, t4, 1
  ADD t4, s4, zero
  SW t4, 432(sp)
  ADD t4, s3, zero
  SW t4, 428(sp)
  ADD t4, s2, zero
  SW t4, 68(sp)
  ADD t4, s1, zero
  SW t4, 424(sp)
  ADD t4, s0, zero
  SW t4, 420(sp)
  ADD t4, s7, zero
  SW t4, 416(sp)
  JAL zero, bb154
bb215:
  # implict jump to bb216
bb216:
  SLTI t4, zero, 3
  SB t4, 4(sp)
  ADD s5, zero, zero
  LW t4, 136(sp)
  ADD s6, t4, zero
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 404(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 396(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 392(sp)
  # implict jump to bb217
bb217:
  LW t4, 392(sp)
  ADD s10, t4, zero
  LW t4, 396(sp)
  ADD s11, t4, zero
  LW t4, 404(sp)
  ADD ra, t4, zero
  ADD t0, s6, zero
  ADD t4, s5, zero
  SW t4, 172(sp)
  LB t4, 4(sp)
  BNE t4, zero, bb223
  # implict jump to bb218
bb218:
  ADD t2, zero, zero
  ADD a0, ra, zero
  ADD a1, s11, zero
  ADD a2, s10, zero
  # implict jump to bb219
bb219:
  ADD t4, a2, zero
  SW t4, 492(sp)
  ADD t4, a1, zero
  SW t4, 336(sp)
  ADD t4, a0, zero
  SW t4, 300(sp)
  ADD t4, t0, zero
  SW t4, 328(sp)
  ADD t4, t2, zero
  SW t4, 320(sp)
  LW t3, 172(sp)
  ADDIW t4, t3, 1
  SW t4, 496(sp)
  # implict jump to bb220
bb220:
  LW t4, 496(sp)
  SLTI s7, t4, 2
  BNE s7, zero, bb222
  # implict jump to bb221
bb221:
  LW t4, 320(sp)
  ADD s0, t4, zero
  LW t4, 328(sp)
  ADD s1, t4, zero
  LW t4, 300(sp)
  ADD s2, t4, zero
  LW t4, 336(sp)
  ADD s3, t4, zero
  LW t4, 492(sp)
  ADD s4, t4, zero
  JAL zero, bb214
bb222:
  LW t4, 496(sp)
  ADD s5, t4, zero
  LW t4, 328(sp)
  ADD s6, t4, zero
  LW t3, 300(sp)
  ADD t4, t3, zero
  SW t4, 404(sp)
  LW t3, 336(sp)
  ADD t4, t3, zero
  SW t4, 396(sp)
  LW t3, 492(sp)
  ADD t4, t3, zero
  SW t4, 392(sp)
  JAL zero, bb217
bb223:
  # implict jump to bb224
bb224:
  SLTI t4, zero, 4
  SB t4, 9(sp)
  ADD t4, zero, zero
  SW t4, 388(sp)
  ADD t4, ra, zero
  SW t4, 212(sp)
  ADD t4, s11, zero
  SW t4, 196(sp)
  ADD t4, s10, zero
  SW t4, 192(sp)
  # implict jump to bb225
bb225:
  LW t4, 192(sp)
  ADD a4, t4, zero
  LW t4, 196(sp)
  ADD a5, t4, zero
  LW t4, 212(sp)
  ADD a6, t4, zero
  LW t3, 388(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LB t4, 9(sp)
  BNE t4, zero, bb231
  # implict jump to bb226
bb226:
  ADD t6, zero, zero
  ADD a7, a6, zero
  ADD t1, a5, zero
  # implict jump to bb227
bb227:
  ADD t4, a4, zero
  SW t4, 344(sp)
  ADD t4, t1, zero
  SW t4, 308(sp)
  ADD t4, a7, zero
  SW t4, 380(sp)
  ADD t4, t6, zero
  SW t4, 372(sp)
  LW t3, 168(sp)
  ADDIW t4, t3, 1
  SW t4, 500(sp)
  # implict jump to bb228
bb228:
  LW t4, 500(sp)
  SLTI s7, t4, 3
  BNE s7, zero, bb230
  # implict jump to bb229
bb229:
  LW t4, 500(sp)
  ADD t2, t4, zero
  LW t4, 372(sp)
  ADD t0, t4, zero
  LW t4, 380(sp)
  ADD a0, t4, zero
  LW t4, 308(sp)
  ADD a1, t4, zero
  LW t4, 344(sp)
  ADD a2, t4, zero
  JAL zero, bb219
bb230:
  LW t3, 500(sp)
  ADD t4, t3, zero
  SW t4, 388(sp)
  LW t3, 380(sp)
  ADD t4, t3, zero
  SW t4, 212(sp)
  LW t3, 308(sp)
  ADD t4, t3, zero
  SW t4, 196(sp)
  LW t3, 344(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  JAL zero, bb225
bb231:
  # implict jump to bb232
bb232:
  SLTI t4, zero, 5
  SB t4, 10(sp)
  ADD t4, zero, zero
  SW t4, 176(sp)
  ADD t4, a6, zero
  SW t4, 184(sp)
  ADD t4, a5, zero
  SW t4, 144(sp)
  # implict jump to bb233
bb233:
  LW t4, 144(sp)
  ADD a5, t4, zero
  LW t4, 184(sp)
  ADD a6, t4, zero
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  LB t4, 10(sp)
  BNE t4, zero, bb239
  # implict jump to bb234
bb234:
  ADD s10, a5, zero
  ADD s11, zero, zero
  # implict jump to bb235
bb235:
  ADD t4, s11, zero
  SW t4, 312(sp)
  ADD t4, s10, zero
  SW t4, 356(sp)
  ADD t4, a6, zero
  SW t4, 520(sp)
  LW t3, 188(sp)
  ADDIW t4, t3, 1
  SW t4, 284(sp)
  # implict jump to bb236
bb236:
  LW t4, 284(sp)
  SLTI s7, t4, 4
  BNE s7, zero, bb238
  # implict jump to bb237
bb237:
  LW t4, 284(sp)
  ADD t6, t4, zero
  LW t4, 520(sp)
  ADD a7, t4, zero
  LW t4, 356(sp)
  ADD t1, t4, zero
  LW t4, 312(sp)
  ADD a4, t4, zero
  JAL zero, bb227
bb238:
  LW t3, 284(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LW t3, 520(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LW t3, 356(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  JAL zero, bb233
bb239:
  # implict jump to bb240
bb240:
  SLTI t4, zero, 6
  SB t4, 8(sp)
  ADD t4, a5, zero
  SW t4, 208(sp)
  ADD t4, zero, zero
  SW t4, 200(sp)
  # implict jump to bb241
bb241:
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 204(sp)
  LW t4, 208(sp)
  ADD a5, t4, zero
  LB t4, 8(sp)
  BNE t4, zero, bb247
  # implict jump to bb242
bb242:
  ADD ra, zero, zero
  # implict jump to bb243
bb243:
  ADD t4, a5, zero
  SW t4, 360(sp)
  ADD t4, ra, zero
  SW t4, 352(sp)
  LW t3, 204(sp)
  ADDIW t4, t3, 1
  SW t4, 364(sp)
  # implict jump to bb244
bb244:
  LW t4, 364(sp)
  SLTI s7, t4, 5
  BNE s7, zero, bb246
  # implict jump to bb245
bb245:
  LW t4, 352(sp)
  ADD a6, t4, zero
  LW t4, 360(sp)
  ADD s10, t4, zero
  LW t4, 364(sp)
  ADD s11, t4, zero
  JAL zero, bb235
bb246:
  LW t3, 360(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  LW t3, 364(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  JAL zero, bb241
bb247:
  # implict jump to bb248
bb248:
  SLTI t4, zero, 2
  SB t4, 7(sp)
  ADD t4, zero, zero
  SW t4, 508(sp)
  # implict jump to bb249
bb249:
  LW t3, 508(sp)
  ADD t4, t3, zero
  SW t4, 296(sp)
  LB t4, 7(sp)
  BNE t4, zero, bb255
  # implict jump to bb250
bb250:
  ADD a3, zero, zero
  # implict jump to bb251
bb251:
  ADD t4, a3, zero
  SW t4, 516(sp)
  LW t3, 296(sp)
  ADDIW t4, t3, 1
  SW t4, 368(sp)
  # implict jump to bb252
bb252:
  LW t4, 368(sp)
  SLTI s7, t4, 6
  BNE s7, zero, bb254
  # implict jump to bb253
bb253:
  LW t4, 368(sp)
  ADD ra, t4, zero
  LW t4, 516(sp)
  ADD a5, t4, zero
  JAL zero, bb243
bb254:
  LW t3, 368(sp)
  ADD t4, t3, zero
  SW t4, 508(sp)
  JAL zero, bb249
bb255:
  # implict jump to bb256
bb256:
  LUI s9, 1
  ADDIW s9, s9, 1664
  LW t4, 348(sp)
  MULW s9, t4, s9
  LA s8, arr1
  ADD s8, s8, s9
  LUI s9, 1
  ADDIW s9, s9, -1216
  LW t4, 172(sp)
  MULW s9, t4, s9
  ADD s8, s8, s9
  ADDI s9, zero, 960
  LW t4, 168(sp)
  MULW s9, t4, s9
  ADD s8, s8, s9
  ADDI s9, zero, 240
  LW t4, 188(sp)
  MULW s9, t4, s9
  ADD s8, s8, s9
  ADDI s9, zero, 48
  LW t4, 204(sp)
  MULW s9, t4, s9
  ADD s8, s8, s9
  LW t4, 296(sp)
  SLLIW s9, t4, 3
  ADD t4, s8, s9
  SD t4, 600(sp)
  LW t4, 348(sp)
  LW t3, 172(sp)
  ADDW s8, t4, t3
  LW t4, 168(sp)
  ADDW s8, s8, t4
  LW t4, 188(sp)
  ADDW s8, s8, t4
  LW t4, 204(sp)
  ADDW s8, s8, t4
  LW t3, 296(sp)
  ADDW t4, s8, t3
  SW t4, 288(sp)
  ADD t4, zero, zero
  SW t4, 400(sp)
  # implict jump to bb257
bb257:
  LW t4, 400(sp)
  ADD s9, t4, zero
  SLLIW s8, s9, 2
  LD t4, 600(sp)
  ADD s8, t4, s8
  LW t4, 288(sp)
  ADDW s7, t4, s9
  LW t4, 524(sp)
  ADDW s7, s7, t4
  LW t4, 464(sp)
  ADDW s7, s7, t4
  SW s7, 0(s8)
  ADDIW t4, s9, 1
  SW t4, 504(sp)
  # implict jump to bb258
bb258:
  LW t4, 504(sp)
  SLTI s7, t4, 2
  BNE s7, zero, bb260
  # implict jump to bb259
bb259:
  LW t4, 504(sp)
  ADD a3, t4, zero
  JAL zero, bb251
bb260:
  LW t3, 504(sp)
  ADD t4, t3, zero
  SW t4, 400(sp)
  JAL zero, bb257
bb261:
  LW t4, 348(sp)
  LW t3, 464(sp)
  SLT s3, t4, t3
  ADD s0, s3, zero
  JAL zero, bb156
