.global main
.global func
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -512
  SD ra, 0(sp)
  SD s9, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  ADDI a0, zero, 324
  CALL _sysy_starttime
  CALL getint
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  ADDI t5, sp, 104
  ADD s3, t5, s3
  SW zero, 0(s3)
  ADDIW s2, s2, 1
  SLTI s3, s2, 100
  BNE s3, zero, bb13
  # implict jump to bb2
bb2:
  BLT zero, s0, bb5
  # implict jump to bb3
bb3:
  ADD s3, zero, zero
  # implict jump to bb4
bb4:
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 328
  CALL _sysy_stoptime
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s9, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 512
  JALR zero, 0(ra)
bb5:
  ADDI s4, zero, 1
  SW s4, 108(sp)
  ADDI s4, zero, 2
  SW s4, 112(sp)
  ADDI s4, zero, 3
  SW s4, 116(sp)
  ADDI s4, zero, 4
  SW s4, 120(sp)
  ADDI s4, zero, 5
  SW s4, 124(sp)
  ADDI s4, zero, 6
  SW s4, 128(sp)
  ADDI s4, zero, 7
  SW s4, 132(sp)
  ADDI s4, zero, 8
  SW s4, 136(sp)
  ADDI s4, zero, 9
  SW s4, 140(sp)
  ADDI s4, zero, 10
  SW s4, 144(sp)
  ADDI s4, zero, 11
  SW s4, 148(sp)
  ADDI s4, zero, 12
  SW s4, 152(sp)
  ADDI s4, zero, 13
  SW s4, 156(sp)
  ADDI s4, zero, 14
  SW s4, 160(sp)
  ADDI s4, zero, 15
  SW s4, 164(sp)
  ADDI s4, zero, 16
  SW s4, 168(sp)
  ADDI s4, zero, 17
  SW s4, 172(sp)
  ADDI s4, zero, 18
  SW s4, 176(sp)
  ADDI s4, zero, 19
  SW s4, 180(sp)
  ADDI s4, zero, 20
  SW s4, 184(sp)
  ADDI s4, zero, 21
  SW s4, 188(sp)
  ADDI s4, zero, 22
  SW s4, 192(sp)
  ADDI s4, zero, 23
  SW s4, 196(sp)
  ADDI s4, zero, 24
  SW s4, 200(sp)
  ADDI s4, zero, 25
  SW s4, 204(sp)
  ADDI s4, zero, 26
  SW s4, 208(sp)
  ADDI s4, zero, 27
  SW s4, 212(sp)
  ADDI s4, zero, 28
  SW s4, 216(sp)
  ADDI s4, zero, 29
  SW s4, 220(sp)
  ADDI s4, zero, 30
  SW s4, 224(sp)
  ADDI s4, zero, 31
  SW s4, 228(sp)
  ADDI s4, zero, 32
  SW s4, 232(sp)
  ADDI s4, zero, 33
  SW s4, 236(sp)
  ADDI s4, zero, 34
  SW s4, 240(sp)
  ADDI s4, zero, 35
  SW s4, 244(sp)
  ADDI s4, zero, 36
  SW s4, 248(sp)
  ADDI s4, zero, 37
  SW s4, 252(sp)
  ADDI s4, zero, 38
  SW s4, 256(sp)
  ADDI s4, zero, 39
  SW s4, 260(sp)
  ADDI s4, zero, 40
  SW s4, 264(sp)
  ADDI s4, zero, 41
  SW s4, 268(sp)
  ADDI s4, zero, 42
  SW s4, 272(sp)
  ADDI s4, zero, 43
  SW s4, 276(sp)
  ADDI s4, zero, 44
  SW s4, 280(sp)
  ADDI s4, zero, 45
  SW s4, 284(sp)
  ADDI s4, zero, 46
  SW s4, 288(sp)
  ADDI s4, zero, 47
  SW s4, 292(sp)
  ADDI s4, zero, 48
  SW s4, 296(sp)
  ADDI s4, zero, 49
  SW s4, 300(sp)
  ADDI s4, zero, 50
  SW s4, 304(sp)
  ADDI s4, zero, 51
  SW s4, 308(sp)
  ADDI s4, zero, 52
  SW s4, 312(sp)
  ADDI s4, zero, 53
  SW s4, 316(sp)
  ADDI s4, zero, 54
  SW s4, 320(sp)
  ADDI s4, zero, 55
  SW s4, 324(sp)
  ADDI s4, zero, 56
  SW s4, 328(sp)
  ADDI s4, zero, 57
  SW s4, 332(sp)
  ADDI s4, zero, 58
  SW s4, 336(sp)
  ADDI s4, zero, 59
  SW s4, 340(sp)
  ADDI s4, zero, 60
  SW s4, 344(sp)
  ADDI s4, zero, 61
  SW s4, 348(sp)
  ADDI s4, zero, 62
  SW s4, 352(sp)
  ADDI s4, zero, 63
  SW s4, 356(sp)
  ADDI s4, zero, 64
  SW s4, 360(sp)
  ADDI s4, zero, 65
  SW s4, 364(sp)
  ADDI s4, zero, 66
  SW s4, 368(sp)
  ADDI s4, zero, 67
  SW s4, 372(sp)
  ADDI s4, zero, 68
  SW s4, 376(sp)
  ADDI s4, zero, 69
  SW s4, 380(sp)
  ADDI s4, zero, 70
  SW s4, 384(sp)
  ADDI s4, zero, 71
  SW s4, 388(sp)
  ADDI s4, zero, 72
  SW s4, 392(sp)
  ADDI s4, zero, 73
  SW s4, 396(sp)
  ADDI s4, zero, 74
  SW s4, 400(sp)
  ADDI s4, zero, 75
  SW s4, 404(sp)
  ADDI s4, zero, 76
  SW s4, 408(sp)
  ADDI s4, zero, 77
  SW s4, 412(sp)
  ADDI s4, zero, 78
  SW s4, 416(sp)
  ADDI s4, zero, 79
  SW s4, 420(sp)
  ADDI s4, zero, 80
  SW s4, 424(sp)
  ADDI s4, zero, 81
  SW s4, 428(sp)
  ADDI s4, zero, 82
  SW s4, 432(sp)
  ADDI s4, zero, 83
  SW s4, 436(sp)
  ADDI s4, zero, 84
  SW s4, 440(sp)
  ADDI s4, zero, 85
  SW s4, 444(sp)
  ADDI s4, zero, 86
  SW s4, 448(sp)
  ADDI s4, zero, 87
  SW s4, 452(sp)
  ADDI s4, zero, 88
  SW s4, 456(sp)
  ADDI s4, zero, 89
  SW s4, 460(sp)
  ADDI s4, zero, 90
  SW s4, 464(sp)
  ADDI s4, zero, 91
  SW s4, 468(sp)
  ADDI s4, zero, 92
  SW s4, 472(sp)
  ADDI s4, zero, 93
  SW s4, 476(sp)
  ADDI s4, zero, 94
  SW s4, 480(sp)
  ADDI s4, zero, 95
  SW s4, 484(sp)
  ADDI s4, zero, 96
  SW s4, 488(sp)
  ADDI s4, zero, 97
  SW s4, 492(sp)
  ADDI s4, zero, 98
  SW s4, 496(sp)
  ADDI s4, zero, 99
  SW s4, 500(sp)
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb6
bb6:
  ADD s6, s5, zero
  ADD s7, s4, zero
  ADDIW s7, s7, 1
  ADD s8, zero, zero
  # implict jump to bb7
bb7:
  ADD s9, s8, zero
  ADD s10, s6, zero
  SLLIW s11, s9, 2
  ADDI t5, sp, 104
  ADD s11, t5, s11
  LW s11, 0(s11)
  ADDW s10, s10, s11
  ADDIW s9, s9, 1
  SLTI s11, s9, 100
  BNE s11, zero, bb12
  # implict jump to bb8
bb8:
  # implict jump to bb9
bb9:
  LUI s11, 16
  ADDIW s11, s11, -1
  REMW s11, s10, s11
  BLT s7, s0, bb11
  # implict jump to bb10
bb10:
  ADD s3, s11, zero
  JAL zero, bb4
bb11:
  ADD s4, s7, zero
  ADD s5, s11, zero
  JAL zero, bb6
bb12:
  ADD s6, s10, zero
  ADD s8, s9, zero
  JAL zero, bb7
bb13:
  ADD s1, s2, zero
  JAL zero, bb1
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
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb15
bb15:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  ADDI t5, sp, 0
  ADD s3, t5, s3
  SW zero, 0(s3)
  ADDIW s2, s2, 1
  SLTI s3, s2, 100
  BNE s3, zero, bb27
  # implict jump to bb16
bb16:
  BLT zero, s0, bb19
  # implict jump to bb17
bb17:
  ADD s3, zero, zero
  # implict jump to bb18
bb18:
  ADD a0, s3, zero
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
bb19:
  ADDI s4, zero, 1
  SW s4, 4(sp)
  ADDI s4, zero, 2
  SW s4, 8(sp)
  ADDI s4, zero, 3
  SW s4, 12(sp)
  ADDI s4, zero, 4
  SW s4, 16(sp)
  ADDI s4, zero, 5
  SW s4, 20(sp)
  ADDI s4, zero, 6
  SW s4, 24(sp)
  ADDI s4, zero, 7
  SW s4, 28(sp)
  ADDI s4, zero, 8
  SW s4, 32(sp)
  ADDI s4, zero, 9
  SW s4, 36(sp)
  ADDI s4, zero, 10
  SW s4, 40(sp)
  ADDI s4, zero, 11
  SW s4, 44(sp)
  ADDI s4, zero, 12
  SW s4, 48(sp)
  ADDI s4, zero, 13
  SW s4, 52(sp)
  ADDI s4, zero, 14
  SW s4, 56(sp)
  ADDI s4, zero, 15
  SW s4, 60(sp)
  ADDI s4, zero, 16
  SW s4, 64(sp)
  ADDI s4, zero, 17
  SW s4, 68(sp)
  ADDI s4, zero, 18
  SW s4, 72(sp)
  ADDI s4, zero, 19
  SW s4, 76(sp)
  ADDI s4, zero, 20
  SW s4, 80(sp)
  ADDI s4, zero, 21
  SW s4, 84(sp)
  ADDI s4, zero, 22
  SW s4, 88(sp)
  ADDI s4, zero, 23
  SW s4, 92(sp)
  ADDI s4, zero, 24
  SW s4, 96(sp)
  ADDI s4, zero, 25
  SW s4, 100(sp)
  ADDI s4, zero, 26
  SW s4, 104(sp)
  ADDI s4, zero, 27
  SW s4, 108(sp)
  ADDI s4, zero, 28
  SW s4, 112(sp)
  ADDI s4, zero, 29
  SW s4, 116(sp)
  ADDI s4, zero, 30
  SW s4, 120(sp)
  ADDI s4, zero, 31
  SW s4, 124(sp)
  ADDI s4, zero, 32
  SW s4, 128(sp)
  ADDI s4, zero, 33
  SW s4, 132(sp)
  ADDI s4, zero, 34
  SW s4, 136(sp)
  ADDI s4, zero, 35
  SW s4, 140(sp)
  ADDI s4, zero, 36
  SW s4, 144(sp)
  ADDI s4, zero, 37
  SW s4, 148(sp)
  ADDI s4, zero, 38
  SW s4, 152(sp)
  ADDI s4, zero, 39
  SW s4, 156(sp)
  ADDI s4, zero, 40
  SW s4, 160(sp)
  ADDI s4, zero, 41
  SW s4, 164(sp)
  ADDI s4, zero, 42
  SW s4, 168(sp)
  ADDI s4, zero, 43
  SW s4, 172(sp)
  ADDI s4, zero, 44
  SW s4, 176(sp)
  ADDI s4, zero, 45
  SW s4, 180(sp)
  ADDI s4, zero, 46
  SW s4, 184(sp)
  ADDI s4, zero, 47
  SW s4, 188(sp)
  ADDI s4, zero, 48
  SW s4, 192(sp)
  ADDI s4, zero, 49
  SW s4, 196(sp)
  ADDI s4, zero, 50
  SW s4, 200(sp)
  ADDI s4, zero, 51
  SW s4, 204(sp)
  ADDI s4, zero, 52
  SW s4, 208(sp)
  ADDI s4, zero, 53
  SW s4, 212(sp)
  ADDI s4, zero, 54
  SW s4, 216(sp)
  ADDI s4, zero, 55
  SW s4, 220(sp)
  ADDI s4, zero, 56
  SW s4, 224(sp)
  ADDI s4, zero, 57
  SW s4, 228(sp)
  ADDI s4, zero, 58
  SW s4, 232(sp)
  ADDI s4, zero, 59
  SW s4, 236(sp)
  ADDI s4, zero, 60
  SW s4, 240(sp)
  ADDI s4, zero, 61
  SW s4, 244(sp)
  ADDI s4, zero, 62
  SW s4, 248(sp)
  ADDI s4, zero, 63
  SW s4, 252(sp)
  ADDI s4, zero, 64
  SW s4, 256(sp)
  ADDI s4, zero, 65
  SW s4, 260(sp)
  ADDI s4, zero, 66
  SW s4, 264(sp)
  ADDI s4, zero, 67
  SW s4, 268(sp)
  ADDI s4, zero, 68
  SW s4, 272(sp)
  ADDI s4, zero, 69
  SW s4, 276(sp)
  ADDI s4, zero, 70
  SW s4, 280(sp)
  ADDI s4, zero, 71
  SW s4, 284(sp)
  ADDI s4, zero, 72
  SW s4, 288(sp)
  ADDI s4, zero, 73
  SW s4, 292(sp)
  ADDI s4, zero, 74
  SW s4, 296(sp)
  ADDI s4, zero, 75
  SW s4, 300(sp)
  ADDI s4, zero, 76
  SW s4, 304(sp)
  ADDI s4, zero, 77
  SW s4, 308(sp)
  ADDI s4, zero, 78
  SW s4, 312(sp)
  ADDI s4, zero, 79
  SW s4, 316(sp)
  ADDI s4, zero, 80
  SW s4, 320(sp)
  ADDI s4, zero, 81
  SW s4, 324(sp)
  ADDI s4, zero, 82
  SW s4, 328(sp)
  ADDI s4, zero, 83
  SW s4, 332(sp)
  ADDI s4, zero, 84
  SW s4, 336(sp)
  ADDI s4, zero, 85
  SW s4, 340(sp)
  ADDI s4, zero, 86
  SW s4, 344(sp)
  ADDI s4, zero, 87
  SW s4, 348(sp)
  ADDI s4, zero, 88
  SW s4, 352(sp)
  ADDI s4, zero, 89
  SW s4, 356(sp)
  ADDI s4, zero, 90
  SW s4, 360(sp)
  ADDI s4, zero, 91
  SW s4, 364(sp)
  ADDI s4, zero, 92
  SW s4, 368(sp)
  ADDI s4, zero, 93
  SW s4, 372(sp)
  ADDI s4, zero, 94
  SW s4, 376(sp)
  ADDI s4, zero, 95
  SW s4, 380(sp)
  ADDI s4, zero, 96
  SW s4, 384(sp)
  ADDI s4, zero, 97
  SW s4, 388(sp)
  ADDI s4, zero, 98
  SW s4, 392(sp)
  ADDI s4, zero, 99
  SW s4, 396(sp)
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb20
bb20:
  ADD s6, s5, zero
  ADD s7, s4, zero
  ADDIW s7, s7, 1
  ADD s8, zero, zero
  # implict jump to bb21
bb21:
  ADD s9, s8, zero
  ADD s10, s6, zero
  SLLIW s11, s9, 2
  ADDI t5, sp, 0
  ADD s11, t5, s11
  LW s11, 0(s11)
  ADDW s10, s10, s11
  ADDIW s9, s9, 1
  SLTI s11, s9, 100
  BNE s11, zero, bb26
  # implict jump to bb22
bb22:
  # implict jump to bb23
bb23:
  LUI s11, 16
  ADDIW s11, s11, -1
  REMW s11, s10, s11
  BLT s7, s0, bb25
  # implict jump to bb24
bb24:
  ADD s3, s11, zero
  JAL zero, bb18
bb25:
  ADD s4, s7, zero
  ADD s5, s11, zero
  JAL zero, bb20
bb26:
  ADD s6, s10, zero
  ADD s8, s9, zero
  JAL zero, bb21
bb27:
  ADD s1, s2, zero
  JAL zero, bb15
