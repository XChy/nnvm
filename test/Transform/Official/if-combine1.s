.global main
.global func
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -528
  SD ra, 24(sp)
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s5, 72(sp)
  SD s7, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  SD s10, 104(sp)
  SD s11, 112(sp)
  SD s6, 120(sp)
  ADDI a0, zero, 324
  CALL _sysy_starttime
  CALL getint
  ADD t4, a0, zero
  SW t4, 4(sp)
  ADDI s7, zero, 0
  SLTI s7, s7, 100
  BNE s7, zero, bb18
  # implict jump to bb1
bb1:
  ADDI s8, zero, 0
  LW t4, 4(sp)
  BLT s8, t4, bb4
  # implict jump to bb2
bb2:
  ADD s8, zero, zero
  # implict jump to bb3
bb3:
  ADD a0, s8, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 328
  CALL _sysy_stoptime
  ADD a0, zero, zero
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s10, 104(sp)
  LD s11, 112(sp)
  LD s6, 120(sp)
  ADDI sp, sp, 528
  JALR zero, 0(ra)
bb4:
  # implict jump to bb5
bb5:
  ADDI s9, zero, 1
  SW s9, 132(sp)
  ADDI s9, zero, 2
  SW s9, 136(sp)
  ADDI s9, zero, 3
  SW s9, 140(sp)
  ADDI s9, zero, 4
  SW s9, 144(sp)
  ADDI s9, zero, 5
  SW s9, 148(sp)
  ADDI s9, zero, 6
  SW s9, 152(sp)
  ADDI s9, zero, 7
  SW s9, 156(sp)
  ADDI s9, zero, 8
  SW s9, 160(sp)
  ADDI s9, zero, 9
  SW s9, 164(sp)
  ADDI s9, zero, 10
  SW s9, 168(sp)
  ADDI s9, zero, 11
  SW s9, 172(sp)
  ADDI s9, zero, 12
  SW s9, 176(sp)
  ADDI s9, zero, 13
  SW s9, 180(sp)
  ADDI s9, zero, 14
  SW s9, 184(sp)
  ADDI s9, zero, 15
  SW s9, 188(sp)
  ADDI s9, zero, 16
  SW s9, 192(sp)
  ADDI s9, zero, 17
  SW s9, 196(sp)
  ADDI s9, zero, 18
  SW s9, 200(sp)
  ADDI s9, zero, 19
  SW s9, 204(sp)
  ADDI s9, zero, 20
  SW s9, 208(sp)
  ADDI s9, zero, 21
  SW s9, 212(sp)
  ADDI s9, zero, 22
  SW s9, 216(sp)
  ADDI s9, zero, 23
  SW s9, 220(sp)
  ADDI s9, zero, 24
  SW s9, 224(sp)
  ADDI s9, zero, 25
  SW s9, 228(sp)
  ADDI s9, zero, 26
  SW s9, 232(sp)
  ADDI s9, zero, 27
  SW s9, 236(sp)
  ADDI s9, zero, 28
  SW s9, 240(sp)
  ADDI s9, zero, 29
  SW s9, 244(sp)
  ADDI s9, zero, 30
  SW s9, 248(sp)
  ADDI s9, zero, 31
  SW s9, 252(sp)
  ADDI s9, zero, 32
  SW s9, 256(sp)
  ADDI s9, zero, 33
  SW s9, 260(sp)
  ADDI s9, zero, 34
  SW s9, 264(sp)
  ADDI s9, zero, 35
  SW s9, 268(sp)
  ADDI s9, zero, 36
  SW s9, 272(sp)
  ADDI s9, zero, 37
  SW s9, 276(sp)
  ADDI s9, zero, 38
  SW s9, 280(sp)
  ADDI s9, zero, 39
  SW s9, 284(sp)
  ADDI s9, zero, 40
  SW s9, 288(sp)
  ADDI s9, zero, 41
  SW s9, 292(sp)
  ADDI s9, zero, 42
  SW s9, 296(sp)
  ADDI s9, zero, 43
  SW s9, 300(sp)
  ADDI s9, zero, 44
  SW s9, 304(sp)
  ADDI s9, zero, 45
  SW s9, 308(sp)
  ADDI s9, zero, 46
  SW s9, 312(sp)
  ADDI s9, zero, 47
  SW s9, 316(sp)
  ADDI s9, zero, 48
  SW s9, 320(sp)
  ADDI s9, zero, 49
  SW s9, 324(sp)
  ADDI s9, zero, 50
  SW s9, 328(sp)
  ADDI s9, zero, 51
  SW s9, 332(sp)
  ADDI s9, zero, 52
  SW s9, 336(sp)
  ADDI s9, zero, 53
  SW s9, 340(sp)
  ADDI s9, zero, 54
  SW s9, 344(sp)
  ADDI s9, zero, 55
  SW s9, 348(sp)
  ADDI s9, zero, 56
  SW s9, 352(sp)
  ADDI s9, zero, 57
  SW s9, 356(sp)
  ADDI s9, zero, 58
  SW s9, 360(sp)
  ADDI s9, zero, 59
  SW s9, 364(sp)
  ADDI s9, zero, 60
  SW s9, 368(sp)
  ADDI s9, zero, 61
  SW s9, 372(sp)
  ADDI s9, zero, 62
  SW s9, 376(sp)
  ADDI s9, zero, 63
  SW s9, 380(sp)
  ADDI s9, zero, 64
  SW s9, 384(sp)
  ADDI s9, zero, 65
  SW s9, 388(sp)
  ADDI s9, zero, 66
  SW s9, 392(sp)
  ADDI s9, zero, 67
  SW s9, 396(sp)
  ADDI s9, zero, 68
  SW s9, 400(sp)
  ADDI s9, zero, 69
  SW s9, 404(sp)
  ADDI s9, zero, 70
  SW s9, 408(sp)
  ADDI s9, zero, 71
  SW s9, 412(sp)
  ADDI s9, zero, 72
  SW s9, 416(sp)
  ADDI s9, zero, 73
  SW s9, 420(sp)
  ADDI s9, zero, 74
  SW s9, 424(sp)
  ADDI s9, zero, 75
  SW s9, 428(sp)
  ADDI s9, zero, 76
  SW s9, 432(sp)
  ADDI s9, zero, 77
  SW s9, 436(sp)
  ADDI s9, zero, 78
  SW s9, 440(sp)
  ADDI s9, zero, 79
  SW s9, 444(sp)
  ADDI s9, zero, 80
  SW s9, 448(sp)
  ADDI s9, zero, 81
  SW s9, 452(sp)
  ADDI s9, zero, 82
  SW s9, 456(sp)
  ADDI s9, zero, 83
  SW s9, 460(sp)
  ADDI s9, zero, 84
  SW s9, 464(sp)
  ADDI s9, zero, 85
  SW s9, 468(sp)
  ADDI s9, zero, 86
  SW s9, 472(sp)
  ADDI s9, zero, 87
  SW s9, 476(sp)
  ADDI s9, zero, 88
  SW s9, 480(sp)
  ADDI s9, zero, 89
  SW s9, 484(sp)
  ADDI s9, zero, 90
  SW s9, 488(sp)
  ADDI s9, zero, 91
  SW s9, 492(sp)
  ADDI s9, zero, 92
  SW s9, 496(sp)
  ADDI s9, zero, 93
  SW s9, 500(sp)
  ADDI s9, zero, 94
  SW s9, 504(sp)
  ADDI s9, zero, 95
  SW s9, 508(sp)
  ADDI s9, zero, 96
  SW s9, 512(sp)
  ADDI s9, zero, 97
  SW s9, 516(sp)
  ADDI s9, zero, 98
  SW s9, 520(sp)
  ADDI s9, zero, 99
  SW s9, 524(sp)
  ADDI s9, zero, 0
  SLTI t4, s9, 100
  SB t4, 0(sp)
  ADD s9, zero, zero
  ADD s10, zero, zero
  # implict jump to bb6
bb6:
  ADD s11, s10, zero
  ADD s6, s9, zero
  ADDIW t4, s11, 1
  SW t4, 16(sp)
  LB t4, 0(sp)
  BNE t4, zero, bb12
  # implict jump to bb7
bb7:
  ADD s11, s6, zero
  # implict jump to bb8
bb8:
  LUI s2, 16
  ADDIW s2, s2, -1
  REMW s5, s11, s2
  # implict jump to bb9
bb9:
  LW t4, 16(sp)
  LW t3, 4(sp)
  BLT t4, t3, bb11
  # implict jump to bb10
bb10:
  ADD s8, s5, zero
  JAL zero, bb3
bb11:
  ADD s9, s5, zero
  LW t4, 16(sp)
  ADD s10, t4, zero
  JAL zero, bb6
bb12:
  # implict jump to bb13
bb13:
  ADD s7, zero, zero
  # implict jump to bb14
bb14:
  ADD s2, s7, zero
  ADD s4, s6, zero
  SLLIW s3, s2, 2
  ADDI t5, sp, 128
  ADD s3, t5, s3
  LW s3, 0(s3)
  ADDW s1, s4, s3
  ADDIW s0, s2, 1
  # implict jump to bb15
bb15:
  SLTI s2, s0, 100
  BNE s2, zero, bb17
  # implict jump to bb16
bb16:
  ADD s11, s1, zero
  JAL zero, bb8
bb17:
  ADD s6, s1, zero
  ADD s7, s0, zero
  JAL zero, bb14
bb18:
  # implict jump to bb19
bb19:
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb20
bb20:
  LW t4, 8(sp)
  ADD s8, t4, zero
  SLLIW s9, s8, 2
  ADDI t5, sp, 128
  ADD s9, t5, s9
  ADDI s10, zero, 0
  SW s10, 0(s9)
  ADDIW t4, s8, 1
  SW t4, 12(sp)
  # implict jump to bb21
bb21:
  LW t4, 12(sp)
  SLTI s8, t4, 100
  BNE s8, zero, bb22
  JAL zero, bb1
bb22:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb20
func:
  ADDI sp, sp, -512
  SD ra, 400(sp)
  SD s0, 408(sp)
  SD s1, 416(sp)
  SD s2, 424(sp)
  SD s3, 432(sp)
  SD s4, 440(sp)
  SD s5, 448(sp)
  SD s6, 456(sp)
  SD s7, 464(sp)
  SD s8, 472(sp)
  SD s9, 480(sp)
  SD s10, 488(sp)
  SD s11, 496(sp)
  ADD s6, a0, zero
  SLTI s7, zero, 100
  BNE s7, zero, bb41
  # implict jump to bb24
bb24:
  BLT zero, s6, bb27
  # implict jump to bb25
bb25:
  ADD s8, zero, zero
  # implict jump to bb26
bb26:
  ADD a0, s8, zero
  LD ra, 400(sp)
  LD s0, 408(sp)
  LD s1, 416(sp)
  LD s2, 424(sp)
  LD s3, 432(sp)
  LD s4, 440(sp)
  LD s5, 448(sp)
  LD s6, 456(sp)
  LD s7, 464(sp)
  LD s8, 472(sp)
  LD s9, 480(sp)
  LD s10, 488(sp)
  LD s11, 496(sp)
  ADDI sp, sp, 512
  JALR zero, 0(ra)
bb27:
  # implict jump to bb28
bb28:
  ADDI s9, zero, 1
  SW s9, 4(sp)
  ADDI s9, zero, 2
  SW s9, 8(sp)
  ADDI s9, zero, 3
  SW s9, 12(sp)
  ADDI s9, zero, 4
  SW s9, 16(sp)
  ADDI s9, zero, 5
  SW s9, 20(sp)
  ADDI s9, zero, 6
  SW s9, 24(sp)
  ADDI s9, zero, 7
  SW s9, 28(sp)
  ADDI s9, zero, 8
  SW s9, 32(sp)
  ADDI s9, zero, 9
  SW s9, 36(sp)
  ADDI s9, zero, 10
  SW s9, 40(sp)
  ADDI s9, zero, 11
  SW s9, 44(sp)
  ADDI s9, zero, 12
  SW s9, 48(sp)
  ADDI s9, zero, 13
  SW s9, 52(sp)
  ADDI s9, zero, 14
  SW s9, 56(sp)
  ADDI s9, zero, 15
  SW s9, 60(sp)
  ADDI s9, zero, 16
  SW s9, 64(sp)
  ADDI s9, zero, 17
  SW s9, 68(sp)
  ADDI s9, zero, 18
  SW s9, 72(sp)
  ADDI s9, zero, 19
  SW s9, 76(sp)
  ADDI s9, zero, 20
  SW s9, 80(sp)
  ADDI s9, zero, 21
  SW s9, 84(sp)
  ADDI s9, zero, 22
  SW s9, 88(sp)
  ADDI s9, zero, 23
  SW s9, 92(sp)
  ADDI s9, zero, 24
  SW s9, 96(sp)
  ADDI s9, zero, 25
  SW s9, 100(sp)
  ADDI s9, zero, 26
  SW s9, 104(sp)
  ADDI s9, zero, 27
  SW s9, 108(sp)
  ADDI s9, zero, 28
  SW s9, 112(sp)
  ADDI s9, zero, 29
  SW s9, 116(sp)
  ADDI s9, zero, 30
  SW s9, 120(sp)
  ADDI s9, zero, 31
  SW s9, 124(sp)
  ADDI s9, zero, 32
  SW s9, 128(sp)
  ADDI s9, zero, 33
  SW s9, 132(sp)
  ADDI s9, zero, 34
  SW s9, 136(sp)
  ADDI s9, zero, 35
  SW s9, 140(sp)
  ADDI s9, zero, 36
  SW s9, 144(sp)
  ADDI s9, zero, 37
  SW s9, 148(sp)
  ADDI s9, zero, 38
  SW s9, 152(sp)
  ADDI s9, zero, 39
  SW s9, 156(sp)
  ADDI s9, zero, 40
  SW s9, 160(sp)
  ADDI s9, zero, 41
  SW s9, 164(sp)
  ADDI s9, zero, 42
  SW s9, 168(sp)
  ADDI s9, zero, 43
  SW s9, 172(sp)
  ADDI s9, zero, 44
  SW s9, 176(sp)
  ADDI s9, zero, 45
  SW s9, 180(sp)
  ADDI s9, zero, 46
  SW s9, 184(sp)
  ADDI s9, zero, 47
  SW s9, 188(sp)
  ADDI s9, zero, 48
  SW s9, 192(sp)
  ADDI s9, zero, 49
  SW s9, 196(sp)
  ADDI s9, zero, 50
  SW s9, 200(sp)
  ADDI s9, zero, 51
  SW s9, 204(sp)
  ADDI s9, zero, 52
  SW s9, 208(sp)
  ADDI s9, zero, 53
  SW s9, 212(sp)
  ADDI s9, zero, 54
  SW s9, 216(sp)
  ADDI s9, zero, 55
  SW s9, 220(sp)
  ADDI s9, zero, 56
  SW s9, 224(sp)
  ADDI s9, zero, 57
  SW s9, 228(sp)
  ADDI s9, zero, 58
  SW s9, 232(sp)
  ADDI s9, zero, 59
  SW s9, 236(sp)
  ADDI s9, zero, 60
  SW s9, 240(sp)
  ADDI s9, zero, 61
  SW s9, 244(sp)
  ADDI s9, zero, 62
  SW s9, 248(sp)
  ADDI s9, zero, 63
  SW s9, 252(sp)
  ADDI s9, zero, 64
  SW s9, 256(sp)
  ADDI s9, zero, 65
  SW s9, 260(sp)
  ADDI s9, zero, 66
  SW s9, 264(sp)
  ADDI s9, zero, 67
  SW s9, 268(sp)
  ADDI s9, zero, 68
  SW s9, 272(sp)
  ADDI s9, zero, 69
  SW s9, 276(sp)
  ADDI s9, zero, 70
  SW s9, 280(sp)
  ADDI s9, zero, 71
  SW s9, 284(sp)
  ADDI s9, zero, 72
  SW s9, 288(sp)
  ADDI s9, zero, 73
  SW s9, 292(sp)
  ADDI s9, zero, 74
  SW s9, 296(sp)
  ADDI s9, zero, 75
  SW s9, 300(sp)
  ADDI s9, zero, 76
  SW s9, 304(sp)
  ADDI s9, zero, 77
  SW s9, 308(sp)
  ADDI s9, zero, 78
  SW s9, 312(sp)
  ADDI s9, zero, 79
  SW s9, 316(sp)
  ADDI s9, zero, 80
  SW s9, 320(sp)
  ADDI s9, zero, 81
  SW s9, 324(sp)
  ADDI s9, zero, 82
  SW s9, 328(sp)
  ADDI s9, zero, 83
  SW s9, 332(sp)
  ADDI s9, zero, 84
  SW s9, 336(sp)
  ADDI s9, zero, 85
  SW s9, 340(sp)
  ADDI s9, zero, 86
  SW s9, 344(sp)
  ADDI s9, zero, 87
  SW s9, 348(sp)
  ADDI s9, zero, 88
  SW s9, 352(sp)
  ADDI s9, zero, 89
  SW s9, 356(sp)
  ADDI s9, zero, 90
  SW s9, 360(sp)
  ADDI s9, zero, 91
  SW s9, 364(sp)
  ADDI s9, zero, 92
  SW s9, 368(sp)
  ADDI s9, zero, 93
  SW s9, 372(sp)
  ADDI s9, zero, 94
  SW s9, 376(sp)
  ADDI s9, zero, 95
  SW s9, 380(sp)
  ADDI s9, zero, 96
  SW s9, 384(sp)
  ADDI s9, zero, 97
  SW s9, 388(sp)
  ADDI s9, zero, 98
  SW s9, 392(sp)
  ADDI s9, zero, 99
  SW s9, 396(sp)
  SLTI s2, zero, 100
  ADD s9, zero, zero
  ADD s10, zero, zero
  # implict jump to bb29
bb29:
  ADD s11, s10, zero
  ADD t0, s9, zero
  ADDIW s3, s11, 1
  BNE s2, zero, bb35
  # implict jump to bb30
bb30:
  ADD s11, t0, zero
  # implict jump to bb31
bb31:
  LUI t2, 16
  ADDIW t2, t2, -1
  REMW s1, s11, t2
  # implict jump to bb32
bb32:
  BLT s3, s6, bb34
  # implict jump to bb33
bb33:
  ADD s8, s1, zero
  JAL zero, bb26
bb34:
  ADD s9, s1, zero
  ADD s10, s3, zero
  JAL zero, bb29
bb35:
  # implict jump to bb36
bb36:
  ADD t1, zero, zero
  # implict jump to bb37
bb37:
  ADD t2, t1, zero
  ADD a1, t0, zero
  SLLIW a2, t2, 2
  ADDI t5, sp, 0
  ADD a2, t5, a2
  LW a2, 0(a2)
  ADDW s5, a1, a2
  ADDIW s4, t2, 1
  # implict jump to bb38
bb38:
  SLTI t2, s4, 100
  BNE t2, zero, bb40
  # implict jump to bb39
bb39:
  ADD s11, s5, zero
  JAL zero, bb31
bb40:
  ADD t0, s5, zero
  ADD t1, s4, zero
  JAL zero, bb37
bb41:
  # implict jump to bb42
bb42:
  ADD s7, zero, zero
  # implict jump to bb43
bb43:
  ADD s8, s7, zero
  SLLIW s9, s8, 2
  ADDI t5, sp, 0
  ADD s9, t5, s9
  SW zero, 0(s9)
  ADDIW s0, s8, 1
  # implict jump to bb44
bb44:
  SLTI s8, s0, 100
  BNE s8, zero, bb45
  JAL zero, bb24
bb45:
  ADD s7, s0, zero
  JAL zero, bb43
