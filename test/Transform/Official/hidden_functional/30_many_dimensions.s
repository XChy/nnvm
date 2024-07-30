.global main
.section .bss
.section .data
.section .text
main:
  LUI t0, 1048064
  ADDIW t0, t0, -384
  ADD sp, sp, t0
  SD ra, 272(sp)
  SD s0, 280(sp)
  SD s1, 288(sp)
  SD s2, 296(sp)
  SD s3, 304(sp)
  SD s4, 312(sp)
  SD s5, 320(sp)
  SD s6, 328(sp)
  SD s8, 336(sp)
  SD s10, 344(sp)
  SD s11, 352(sp)
  SD s7, 368(sp)
  SD s9, 376(sp)
  LUI s1, 128
  ADDIW s1, s1, 0
  ADD t4, zero, s1
  SW t4, 200(sp)
  # implict jump to bb1
bb1:
  LW t4, 200(sp)
  ADD s2, t4, zero
  ADDI s3, zero, 1
  SUBW t4, s2, s3
  SW t4, 196(sp)
  LW t4, 196(sp)
  SLLIW s3, t4, 2
  ADDI t5, sp, 384
  ADD s3, t5, s3
  ADDI s4, zero, 0
  SW s4, 0(s3)
  LW t4, 196(sp)
  BNE t4, zero, bb78
  # implict jump to bb2
bb2:
  ADD s3, zero, zero
  ADD s4, zero, zero
  # implict jump to bb3
bb3:
  ADD t4, s4, zero
  SW t4, 152(sp)
  ADD s6, s3, zero
  ADD s7, zero, zero
  # implict jump to bb4
bb4:
  ADD t4, s7, zero
  SW t4, 156(sp)
  ADD s9, s6, zero
  ADD s10, zero, zero
  # implict jump to bb5
bb5:
  ADD t4, s10, zero
  SW t4, 164(sp)
  ADD ra, s9, zero
  ADD t4, ra, zero
  SW t4, 100(sp)
  ADD t4, zero, zero
  SW t4, 92(sp)
  # implict jump to bb6
bb6:
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LW t4, 100(sp)
  ADD t2, t4, zero
  ADD t4, t2, zero
  SW t4, 72(sp)
  ADD t4, zero, zero
  SW t4, 120(sp)
  # implict jump to bb7
bb7:
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t4, 72(sp)
  ADD a2, t4, zero
  ADD t4, a2, zero
  SW t4, 80(sp)
  ADD t4, zero, zero
  SW t4, 76(sp)
  # implict jump to bb8
bb8:
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  LW t4, 80(sp)
  ADD a5, t4, zero
  ADD t4, a5, zero
  SW t4, 204(sp)
  ADD t4, zero, zero
  SW t4, 116(sp)
  # implict jump to bb9
bb9:
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  LW t4, 204(sp)
  ADD t6, t4, zero
  ADD t4, t6, zero
  SW t4, 104(sp)
  ADD t4, zero, zero
  SW t4, 124(sp)
  # implict jump to bb10
bb10:
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  LW t4, 104(sp)
  ADD s2, t4, zero
  ADD t4, s2, zero
  SW t4, 128(sp)
  ADD t4, zero, zero
  SW t4, 136(sp)
  # implict jump to bb11
bb11:
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LW t4, 128(sp)
  ADD a4, t4, zero
  ADD t4, a4, zero
  SW t4, 36(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb12
bb12:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  LW t4, 36(sp)
  ADD t1, t4, zero
  ADD t4, t1, zero
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb13
bb13:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  LW t4, 12(sp)
  ADD s8, t4, zero
  ADD t4, s8, zero
  SW t4, 64(sp)
  ADD t4, zero, zero
  SW t4, 68(sp)
  # implict jump to bb14
bb14:
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  LW t4, 64(sp)
  ADD s0, t4, zero
  ADD t4, s0, zero
  SW t4, 268(sp)
  ADD t4, zero, zero
  SW t4, 176(sp)
  # implict jump to bb15
bb15:
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 240(sp)
  LW t4, 268(sp)
  ADD s0, t4, zero
  ADD t4, s0, zero
  SW t4, 256(sp)
  ADD t4, zero, zero
  SW t4, 264(sp)
  # implict jump to bb16
bb16:
  LW t3, 264(sp)
  ADD t4, t3, zero
  SW t4, 260(sp)
  LW t4, 256(sp)
  ADD s0, t4, zero
  ADD t4, s0, zero
  SW t4, 244(sp)
  ADD t4, zero, zero
  SW t4, 252(sp)
  # implict jump to bb17
bb17:
  LW t3, 252(sp)
  ADD t4, t3, zero
  SW t4, 248(sp)
  LW t4, 244(sp)
  ADD s0, t4, zero
  ADD t4, s0, zero
  SW t4, 232(sp)
  ADD t4, zero, zero
  SW t4, 208(sp)
  # implict jump to bb18
bb18:
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 236(sp)
  LW t4, 232(sp)
  ADD s0, t4, zero
  ADD t4, s0, zero
  SW t4, 220(sp)
  ADD t4, zero, zero
  SW t4, 228(sp)
  # implict jump to bb19
bb19:
  LW t3, 228(sp)
  ADD t4, t3, zero
  SW t4, 224(sp)
  LW t4, 220(sp)
  ADD s0, t4, zero
  ADD t4, s0, zero
  SW t4, 108(sp)
  ADD t4, zero, zero
  SW t4, 216(sp)
  # implict jump to bb20
bb20:
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 212(sp)
  LW t4, 108(sp)
  ADD s0, t4, zero
  LW t4, 152(sp)
  SLLIW s5, t4, 20
  ADDI t4, sp, 384
  ADD s5, t4, s5
  LW t4, 156(sp)
  SLLIW s8, t4, 19
  ADD s5, s5, s8
  LW t4, 164(sp)
  SLLIW s8, t4, 18
  ADD s5, s5, s8
  LW t4, 168(sp)
  SLLIW s8, t4, 17
  ADD s5, s5, s8
  LW t4, 140(sp)
  SLLIW s8, t4, 16
  ADD s5, s5, s8
  LW t4, 180(sp)
  SLLIW s8, t4, 15
  ADD s5, s5, s8
  LW t4, 188(sp)
  SLLIW s8, t4, 14
  ADD s5, s5, s8
  LW t4, 192(sp)
  SLLIW s8, t4, 13
  ADD s5, s5, s8
  LW t4, 184(sp)
  SLLIW s8, t4, 12
  ADD s5, s5, s8
  LW t4, 172(sp)
  SLLIW s8, t4, 11
  ADD s5, s5, s8
  LW t4, 160(sp)
  SLLIW s8, t4, 10
  ADD s5, s5, s8
  LW t4, 148(sp)
  SLLIW s8, t4, 9
  ADD s5, s5, s8
  LW t4, 240(sp)
  SLLIW s8, t4, 8
  ADD s5, s5, s8
  LW t4, 260(sp)
  SLLIW s8, t4, 7
  ADD s5, s5, s8
  LW t4, 248(sp)
  SLLIW s8, t4, 6
  ADD s5, s5, s8
  LW t4, 236(sp)
  SLLIW s8, t4, 5
  ADD s5, s5, s8
  LW t4, 224(sp)
  SLLIW s8, t4, 4
  ADD s5, s5, s8
  LW t4, 212(sp)
  SLLIW s8, t4, 3
  ADD t4, s5, s8
  SD t4, 360(sp)
  ADD t4, s0, zero
  SW t4, 56(sp)
  ADD t4, zero, zero
  SW t4, 60(sp)
  # implict jump to bb21
bb21:
  LW t4, 60(sp)
  ADD s5, t4, zero
  LW t4, 56(sp)
  ADD s8, t4, zero
  SLLIW s0, s5, 2
  LD t4, 360(sp)
  ADD s0, t4, s0
  SW s8, 0(s0)
  ADDIW t4, s8, 1
  SW t4, 144(sp)
  ADDIW t4, s5, 1
  SW t4, 52(sp)
  LW t4, 52(sp)
  SLTI s5, t4, 2
  BNE s5, zero, bb77
  # implict jump to bb22
bb22:
  # implict jump to bb23
bb23:
  LW t3, 212(sp)
  ADDIW t4, t3, 1
  SW t4, 48(sp)
  LW t4, 48(sp)
  SLTI s8, t4, 2
  BNE s8, zero, bb76
  # implict jump to bb24
bb24:
  # implict jump to bb25
bb25:
  LW t3, 224(sp)
  ADDIW t4, t3, 1
  SW t4, 44(sp)
  LW t4, 44(sp)
  SLTI s0, t4, 2
  BNE s0, zero, bb75
  # implict jump to bb26
bb26:
  # implict jump to bb27
bb27:
  LW t3, 236(sp)
  ADDIW t4, t3, 1
  SW t4, 40(sp)
  LW t4, 40(sp)
  SLTI s5, t4, 2
  BNE s5, zero, bb74
  # implict jump to bb28
bb28:
  # implict jump to bb29
bb29:
  LW t3, 248(sp)
  ADDIW t4, t3, 1
  SW t4, 0(sp)
  LW t4, 0(sp)
  SLTI s8, t4, 2
  BNE s8, zero, bb73
  # implict jump to bb30
bb30:
  # implict jump to bb31
bb31:
  LW t3, 260(sp)
  ADDIW t4, t3, 1
  SW t4, 32(sp)
  LW t4, 32(sp)
  SLTI s0, t4, 2
  BNE s0, zero, bb72
  # implict jump to bb32
bb32:
  # implict jump to bb33
bb33:
  LW t3, 240(sp)
  ADDIW t4, t3, 1
  SW t4, 28(sp)
  LW t4, 28(sp)
  SLTI s5, t4, 2
  BNE s5, zero, bb71
  # implict jump to bb34
bb34:
  # implict jump to bb35
bb35:
  LW t3, 148(sp)
  ADDIW t4, t3, 1
  SW t4, 24(sp)
  LW t4, 24(sp)
  SLTI s8, t4, 2
  BNE s8, zero, bb70
  # implict jump to bb36
bb36:
  # implict jump to bb37
bb37:
  LW t3, 160(sp)
  ADDIW t4, t3, 1
  SW t4, 16(sp)
  LW t4, 16(sp)
  SLTI s0, t4, 2
  BNE s0, zero, bb69
  # implict jump to bb38
bb38:
  # implict jump to bb39
bb39:
  LW t3, 172(sp)
  ADDIW t4, t3, 1
  SW t4, 4(sp)
  LW t4, 4(sp)
  SLTI s5, t4, 2
  BNE s5, zero, bb68
  # implict jump to bb40
bb40:
  # implict jump to bb41
bb41:
  LW t3, 184(sp)
  ADDIW t4, t3, 1
  SW t4, 132(sp)
  LW t4, 132(sp)
  SLTI s11, t4, 2
  BNE s11, zero, bb67
  # implict jump to bb42
bb42:
  # implict jump to bb43
bb43:
  LW t4, 192(sp)
  ADDIW s11, t4, 1
  SLTI s8, s11, 2
  BNE s8, zero, bb66
  # implict jump to bb44
bb44:
  # implict jump to bb45
bb45:
  LW t4, 188(sp)
  ADDIW s8, t4, 1
  SLTI t1, s8, 2
  BNE t1, zero, bb65
  # implict jump to bb46
bb46:
  # implict jump to bb47
bb47:
  LW t3, 180(sp)
  ADDIW t4, t3, 1
  SW t4, 88(sp)
  LW t4, 88(sp)
  SLTI a1, t4, 2
  BNE a1, zero, bb64
  # implict jump to bb48
bb48:
  # implict jump to bb49
bb49:
  LW t3, 140(sp)
  ADDIW t4, t3, 1
  SW t4, 84(sp)
  LW t4, 84(sp)
  SLTI s0, t4, 2
  BNE s0, zero, bb63
  # implict jump to bb50
bb50:
  # implict jump to bb51
bb51:
  LW t4, 168(sp)
  ADDIW s0, t4, 1
  SLTI a4, s0, 2
  BNE a4, zero, bb62
  # implict jump to bb52
bb52:
  # implict jump to bb53
bb53:
  LW t3, 164(sp)
  ADDIW t4, t3, 1
  SW t4, 112(sp)
  LW t4, 112(sp)
  SLTI a7, t4, 2
  BNE a7, zero, bb61
  # implict jump to bb54
bb54:
  # implict jump to bb55
bb55:
  LW t3, 156(sp)
  ADDIW t4, t3, 1
  SW t4, 96(sp)
  LW t4, 96(sp)
  SLTI s5, t4, 2
  BNE s5, zero, bb60
  # implict jump to bb56
bb56:
  # implict jump to bb57
bb57:
  LW t4, 152(sp)
  ADDIW s5, t4, 1
  SLTI s2, s5, 2
  BNE s2, zero, bb59
  # implict jump to bb58
bb58:
  LW s2, 384(sp)
  LW s1, 392(sp)
  ADDW s1, s2, s1
  LW s2, 388(sp)
  ADDW s1, s1, s2
  LW s2, 424(sp)
  ADDW s1, s1, s2
  LW s2, 408(sp)
  ADDW s1, s1, s2
  LW s2, 612(sp)
  ADDW s1, s1, s2
  LW s2, 440(sp)
  ADDW s1, s1, s2
  LW s2, 1348(sp)
  ADDW s1, s1, s2
  LW s2, 608(sp)
  ADDW s1, s1, s2
  LW s2, 1188(sp)
  ADDW s1, s1, s2
  ADDI t5, sp, 384
  LW s2, 1996(t5)
  ADDW s1, s1, s2
  LUI s2, 1
  ADDIW s2, s2, -872
  ADDI t5, sp, 384
  ADD s2, t5, s2
  LW s2, 0(s2)
  ADDW s1, s1, s2
  LUI s2, 6
  ADDIW s2, s2, 1824
  ADDI t5, sp, 384
  ADD s2, t5, s2
  LW s2, 0(s2)
  ADDW s1, s1, s2
  LW s2, 892(sp)
  ADDW s1, s1, s2
  LW s2, 508(sp)
  ADDW s1, s1, s2
  LUI s2, 60
  ADDIW s2, s2, 912
  ADDI t5, sp, 384
  ADD s2, t5, s2
  LW s2, 0(s2)
  ADDW s1, s1, s2
  LUI s2, 4
  ADDIW s2, s2, -428
  ADDI t5, sp, 384
  ADD s2, t5, s2
  LW s2, 0(s2)
  ADDW s1, s1, s2
  LUI s2, 202
  ADDIW s2, s2, 972
  ADDI t5, sp, 384
  ADD s2, t5, s2
  LW s2, 0(s2)
  ADDW s1, s1, s2
  LUI s2, 69
  ADDIW s2, s2, -1024
  ADDI a0, sp, 384
  ADD s2, a0, s2
  LW s2, 0(s2)
  ADDW s1, s1, s2
  ADD a0, s1, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 272(sp)
  LD s0, 280(sp)
  LD s1, 288(sp)
  LD s2, 296(sp)
  LD s3, 304(sp)
  LD s4, 312(sp)
  LD s5, 320(sp)
  LD s6, 328(sp)
  LD s8, 336(sp)
  LD s10, 344(sp)
  LD s11, 352(sp)
  LD s7, 368(sp)
  LD s9, 376(sp)
  LUI t0, 512
  ADDIW t0, t0, 384
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb59:
  LW t4, 144(sp)
  ADD s3, t4, zero
  ADD s4, s5, zero
  JAL zero, bb3
bb60:
  LW t4, 144(sp)
  ADD s6, t4, zero
  LW t4, 96(sp)
  ADD s7, t4, zero
  JAL zero, bb4
bb61:
  LW t4, 144(sp)
  ADD s9, t4, zero
  LW t4, 112(sp)
  ADD s10, t4, zero
  JAL zero, bb5
bb62:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  ADD t4, s0, zero
  SW t4, 92(sp)
  JAL zero, bb6
bb63:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  JAL zero, bb7
bb64:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  JAL zero, bb8
bb65:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 204(sp)
  ADD t4, s8, zero
  SW t4, 116(sp)
  JAL zero, bb9
bb66:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  ADD t4, s11, zero
  SW t4, 124(sp)
  JAL zero, bb10
bb67:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  JAL zero, bb11
bb68:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb12
bb69:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb13
bb70:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  JAL zero, bb14
bb71:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 268(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  JAL zero, bb15
bb72:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 256(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 264(sp)
  JAL zero, bb16
bb73:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 244(sp)
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 252(sp)
  JAL zero, bb17
bb74:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 232(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  JAL zero, bb18
bb75:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 220(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 228(sp)
  JAL zero, bb19
bb76:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  JAL zero, bb20
bb77:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  JAL zero, bb21
bb78:
  LW t3, 196(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  JAL zero, bb1
