.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -432
  SD ra, 400(sp)
  SD s0, 408(sp)
  SD s1, 416(sp)
  SD s2, 424(sp)
  ADDI a0, zero, 324
  CALL _sysy_starttime
  CALL getint
  ADDI s0, zero, 0
  SW s0, 0(sp)
  ADDI s0, zero, 0
  SW s0, 4(sp)
  ADDI s0, zero, 0
  SW s0, 8(sp)
  ADDI s0, zero, 0
  SW s0, 12(sp)
  ADDI s0, zero, 0
  SW s0, 16(sp)
  ADDI s0, zero, 0
  SW s0, 20(sp)
  ADDI s0, zero, 0
  SW s0, 24(sp)
  ADDI s0, zero, 0
  SW s0, 28(sp)
  ADDI s0, zero, 0
  SW s0, 32(sp)
  ADDI s0, zero, 0
  SW s0, 36(sp)
  ADDI s0, zero, 0
  SW s0, 40(sp)
  ADDI s0, zero, 0
  SW s0, 44(sp)
  ADDI s0, zero, 0
  SW s0, 48(sp)
  ADDI s0, zero, 0
  SW s0, 52(sp)
  ADDI s0, zero, 0
  SW s0, 56(sp)
  ADDI s0, zero, 0
  SW s0, 60(sp)
  ADDI s0, zero, 0
  SW s0, 64(sp)
  ADDI s0, zero, 0
  SW s0, 68(sp)
  ADDI s0, zero, 0
  SW s0, 72(sp)
  ADDI s0, zero, 0
  SW s0, 76(sp)
  ADDI s0, zero, 0
  SW s0, 80(sp)
  ADDI s0, zero, 0
  SW s0, 84(sp)
  ADDI s0, zero, 0
  SW s0, 88(sp)
  ADDI s0, zero, 0
  SW s0, 92(sp)
  ADDI s0, zero, 0
  SW s0, 96(sp)
  ADDI s0, zero, 0
  SW s0, 100(sp)
  ADDI s0, zero, 0
  SW s0, 104(sp)
  ADDI s0, zero, 0
  SW s0, 108(sp)
  ADDI s0, zero, 0
  SW s0, 112(sp)
  ADDI s0, zero, 0
  SW s0, 116(sp)
  ADDI s0, zero, 0
  SW s0, 120(sp)
  ADDI s0, zero, 0
  SW s0, 124(sp)
  ADDI s0, zero, 0
  SW s0, 128(sp)
  ADDI s0, zero, 0
  SW s0, 132(sp)
  ADDI s0, zero, 0
  SW s0, 136(sp)
  ADDI s0, zero, 0
  SW s0, 140(sp)
  ADDI s0, zero, 0
  SW s0, 144(sp)
  ADDI s0, zero, 0
  SW s0, 148(sp)
  ADDI s0, zero, 0
  SW s0, 152(sp)
  ADDI s0, zero, 0
  SW s0, 156(sp)
  ADDI s0, zero, 0
  SW s0, 160(sp)
  ADDI s0, zero, 0
  SW s0, 164(sp)
  ADDI s0, zero, 0
  SW s0, 168(sp)
  ADDI s0, zero, 0
  SW s0, 172(sp)
  ADDI s0, zero, 0
  SW s0, 176(sp)
  ADDI s0, zero, 0
  SW s0, 180(sp)
  ADDI s0, zero, 0
  SW s0, 184(sp)
  ADDI s0, zero, 0
  SW s0, 188(sp)
  ADDI s0, zero, 0
  SW s0, 192(sp)
  ADDI s0, zero, 0
  SW s0, 196(sp)
  ADDI s0, zero, 0
  SW s0, 200(sp)
  ADDI s0, zero, 0
  SW s0, 204(sp)
  ADDI s0, zero, 0
  SW s0, 208(sp)
  ADDI s0, zero, 0
  SW s0, 212(sp)
  ADDI s0, zero, 0
  SW s0, 216(sp)
  ADDI s0, zero, 0
  SW s0, 220(sp)
  ADDI s0, zero, 0
  SW s0, 224(sp)
  ADDI s0, zero, 0
  SW s0, 228(sp)
  ADDI s0, zero, 0
  SW s0, 232(sp)
  ADDI s0, zero, 0
  SW s0, 236(sp)
  ADDI s0, zero, 0
  SW s0, 240(sp)
  ADDI s0, zero, 0
  SW s0, 244(sp)
  ADDI s0, zero, 0
  SW s0, 248(sp)
  ADDI s0, zero, 0
  SW s0, 252(sp)
  ADDI s0, zero, 0
  SW s0, 256(sp)
  ADDI s0, zero, 0
  SW s0, 260(sp)
  ADDI s0, zero, 0
  SW s0, 264(sp)
  ADDI s0, zero, 0
  SW s0, 268(sp)
  ADDI s0, zero, 0
  SW s0, 272(sp)
  ADDI s0, zero, 0
  SW s0, 276(sp)
  ADDI s0, zero, 0
  SW s0, 280(sp)
  ADDI s0, zero, 0
  SW s0, 284(sp)
  ADDI s0, zero, 0
  SW s0, 288(sp)
  ADDI s0, zero, 0
  SW s0, 292(sp)
  ADDI s0, zero, 0
  SW s0, 296(sp)
  ADDI s0, zero, 0
  SW s0, 300(sp)
  ADDI s0, zero, 0
  SW s0, 304(sp)
  ADDI s0, zero, 0
  SW s0, 308(sp)
  ADDI s0, zero, 0
  SW s0, 312(sp)
  ADDI s0, zero, 0
  SW s0, 316(sp)
  ADDI s0, zero, 0
  SW s0, 320(sp)
  ADDI s0, zero, 0
  SW s0, 324(sp)
  ADDI s0, zero, 0
  SW s0, 328(sp)
  ADDI s0, zero, 0
  SW s0, 332(sp)
  ADDI s0, zero, 0
  SW s0, 336(sp)
  ADDI s0, zero, 0
  SW s0, 340(sp)
  ADDI s0, zero, 0
  SW s0, 344(sp)
  ADDI s0, zero, 0
  SW s0, 348(sp)
  ADDI s0, zero, 0
  SW s0, 352(sp)
  ADDI s0, zero, 0
  SW s0, 356(sp)
  ADDI s0, zero, 0
  SW s0, 360(sp)
  ADDI s0, zero, 0
  SW s0, 364(sp)
  ADDI s0, zero, 0
  SW s0, 368(sp)
  ADDI s0, zero, 0
  SW s0, 372(sp)
  ADDI s0, zero, 0
  SW s0, 376(sp)
  ADDI s0, zero, 0
  SW s0, 380(sp)
  ADDI s0, zero, 0
  SW s0, 384(sp)
  ADDI s0, zero, 0
  SW s0, 388(sp)
  ADDI s0, zero, 0
  SW s0, 392(sp)
  ADDI s0, zero, 0
  SW s0, 396(sp)
  ADDI s0, zero, 0
  BLT s0, a0, bb3
  # implict jump to bb1
bb1:
  ADD a0, zero, zero
  # implict jump to bb2
bb2:
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 328
  CALL _sysy_stoptime
  ADD a0, zero, zero
  LD ra, 400(sp)
  LD s0, 408(sp)
  LD s1, 416(sp)
  LD s2, 424(sp)
  ADDI sp, sp, 432
  JALR zero, 0(ra)
bb3:
  ADDI s0, zero, 1
  SW s0, 4(sp)
  ADDI s0, zero, 2
  SW s0, 8(sp)
  ADDI s0, zero, 3
  SW s0, 12(sp)
  ADDI s0, zero, 4
  SW s0, 16(sp)
  ADDI s0, zero, 5
  SW s0, 20(sp)
  ADDI s0, zero, 6
  SW s0, 24(sp)
  ADDI s0, zero, 7
  SW s0, 28(sp)
  ADDI s0, zero, 8
  SW s0, 32(sp)
  ADDI s0, zero, 9
  SW s0, 36(sp)
  ADDI s0, zero, 10
  SW s0, 40(sp)
  ADDI s0, zero, 11
  SW s0, 44(sp)
  ADDI s0, zero, 12
  SW s0, 48(sp)
  ADDI s0, zero, 13
  SW s0, 52(sp)
  ADDI s0, zero, 14
  SW s0, 56(sp)
  ADDI s0, zero, 15
  SW s0, 60(sp)
  ADDI s0, zero, 16
  SW s0, 64(sp)
  ADDI s0, zero, 17
  SW s0, 68(sp)
  ADDI s0, zero, 18
  SW s0, 72(sp)
  ADDI s0, zero, 19
  SW s0, 76(sp)
  ADDI s0, zero, 20
  SW s0, 80(sp)
  ADDI s0, zero, 21
  SW s0, 84(sp)
  ADDI s0, zero, 22
  SW s0, 88(sp)
  ADDI s0, zero, 23
  SW s0, 92(sp)
  ADDI s0, zero, 24
  SW s0, 96(sp)
  ADDI s0, zero, 25
  SW s0, 100(sp)
  ADDI s0, zero, 26
  SW s0, 104(sp)
  ADDI s0, zero, 27
  SW s0, 108(sp)
  ADDI s0, zero, 28
  SW s0, 112(sp)
  ADDI s0, zero, 29
  SW s0, 116(sp)
  ADDI s0, zero, 30
  SW s0, 120(sp)
  ADDI s0, zero, 31
  SW s0, 124(sp)
  ADDI s0, zero, 32
  SW s0, 128(sp)
  ADDI s0, zero, 33
  SW s0, 132(sp)
  ADDI s0, zero, 34
  SW s0, 136(sp)
  ADDI s0, zero, 35
  SW s0, 140(sp)
  ADDI s0, zero, 36
  SW s0, 144(sp)
  ADDI s0, zero, 37
  SW s0, 148(sp)
  ADDI s0, zero, 38
  SW s0, 152(sp)
  ADDI s0, zero, 39
  SW s0, 156(sp)
  ADDI s0, zero, 40
  SW s0, 160(sp)
  ADDI s0, zero, 41
  SW s0, 164(sp)
  ADDI s0, zero, 42
  SW s0, 168(sp)
  ADDI s0, zero, 43
  SW s0, 172(sp)
  ADDI s0, zero, 44
  SW s0, 176(sp)
  ADDI s0, zero, 45
  SW s0, 180(sp)
  ADDI s0, zero, 46
  SW s0, 184(sp)
  ADDI s0, zero, 47
  SW s0, 188(sp)
  ADDI s0, zero, 48
  SW s0, 192(sp)
  ADDI s0, zero, 49
  SW s0, 196(sp)
  ADDI s0, zero, 50
  SW s0, 200(sp)
  ADDI s0, zero, 51
  SW s0, 204(sp)
  ADDI s0, zero, 52
  SW s0, 208(sp)
  ADDI s0, zero, 53
  SW s0, 212(sp)
  ADDI s0, zero, 54
  SW s0, 216(sp)
  ADDI s0, zero, 55
  SW s0, 220(sp)
  ADDI s0, zero, 56
  SW s0, 224(sp)
  ADDI s0, zero, 57
  SW s0, 228(sp)
  ADDI s0, zero, 58
  SW s0, 232(sp)
  ADDI s0, zero, 59
  SW s0, 236(sp)
  ADDI s0, zero, 60
  SW s0, 240(sp)
  ADDI s0, zero, 61
  SW s0, 244(sp)
  ADDI s0, zero, 62
  SW s0, 248(sp)
  ADDI s0, zero, 63
  SW s0, 252(sp)
  ADDI s0, zero, 64
  SW s0, 256(sp)
  ADDI s0, zero, 65
  SW s0, 260(sp)
  ADDI s0, zero, 66
  SW s0, 264(sp)
  ADDI s0, zero, 67
  SW s0, 268(sp)
  ADDI s0, zero, 68
  SW s0, 272(sp)
  ADDI s0, zero, 69
  SW s0, 276(sp)
  ADDI s0, zero, 70
  SW s0, 280(sp)
  ADDI s0, zero, 71
  SW s0, 284(sp)
  ADDI s0, zero, 72
  SW s0, 288(sp)
  ADDI s0, zero, 73
  SW s0, 292(sp)
  ADDI s0, zero, 74
  SW s0, 296(sp)
  ADDI s0, zero, 75
  SW s0, 300(sp)
  ADDI s0, zero, 76
  SW s0, 304(sp)
  ADDI s0, zero, 77
  SW s0, 308(sp)
  ADDI s0, zero, 78
  SW s0, 312(sp)
  ADDI s0, zero, 79
  SW s0, 316(sp)
  ADDI s0, zero, 80
  SW s0, 320(sp)
  ADDI s0, zero, 81
  SW s0, 324(sp)
  ADDI s0, zero, 82
  SW s0, 328(sp)
  ADDI s0, zero, 83
  SW s0, 332(sp)
  ADDI s0, zero, 84
  SW s0, 336(sp)
  ADDI s0, zero, 85
  SW s0, 340(sp)
  ADDI s0, zero, 86
  SW s0, 344(sp)
  ADDI s0, zero, 87
  SW s0, 348(sp)
  ADDI s0, zero, 88
  SW s0, 352(sp)
  ADDI s0, zero, 89
  SW s0, 356(sp)
  ADDI s0, zero, 90
  SW s0, 360(sp)
  ADDI s0, zero, 91
  SW s0, 364(sp)
  ADDI s0, zero, 92
  SW s0, 368(sp)
  ADDI s0, zero, 93
  SW s0, 372(sp)
  ADDI s0, zero, 94
  SW s0, 376(sp)
  ADDI s0, zero, 95
  SW s0, 380(sp)
  ADDI s0, zero, 96
  SW s0, 384(sp)
  ADDI s0, zero, 97
  SW s0, 388(sp)
  ADDI s0, zero, 98
  SW s0, 392(sp)
  ADDI s0, zero, 99
  SW s0, 396(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb4
bb4:
  ADDIW s1, s1, 1
  LUI s2, 1
  ADDIW s2, s2, 854
  ADDW s0, s0, s2
  LUI s2, 16
  ADDIW s2, s2, -1
  REMW s0, s0, s2
  BLT s1, a0, bb6
  # implict jump to bb5
bb5:
  ADD a0, s0, zero
  JAL zero, bb2
bb6:
  JAL zero, bb4
