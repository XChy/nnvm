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
  ADD s1, a0, zero
  ADDI a0, zero, 0
  SW a0, 0(sp)
  ADDI a0, zero, 0
  SW a0, 4(sp)
  ADDI a0, zero, 0
  SW a0, 8(sp)
  ADDI a0, zero, 0
  SW a0, 12(sp)
  ADDI a0, zero, 0
  SW a0, 16(sp)
  ADDI a0, zero, 0
  SW a0, 20(sp)
  ADDI a0, zero, 0
  SW a0, 24(sp)
  ADDI a0, zero, 0
  SW a0, 28(sp)
  ADDI a0, zero, 0
  SW a0, 32(sp)
  ADDI a0, zero, 0
  SW a0, 36(sp)
  ADDI a0, zero, 0
  SW a0, 40(sp)
  ADDI a0, zero, 0
  SW a0, 44(sp)
  ADDI a0, zero, 0
  SW a0, 48(sp)
  ADDI a0, zero, 0
  SW a0, 52(sp)
  ADDI a0, zero, 0
  SW a0, 56(sp)
  ADDI a0, zero, 0
  SW a0, 60(sp)
  ADDI a0, zero, 0
  SW a0, 64(sp)
  ADDI a0, zero, 0
  SW a0, 68(sp)
  ADDI a0, zero, 0
  SW a0, 72(sp)
  ADDI a0, zero, 0
  SW a0, 76(sp)
  ADDI a0, zero, 0
  SW a0, 80(sp)
  ADDI a0, zero, 0
  SW a0, 84(sp)
  ADDI a0, zero, 0
  SW a0, 88(sp)
  ADDI a0, zero, 0
  SW a0, 92(sp)
  ADDI a0, zero, 0
  SW a0, 96(sp)
  ADDI a0, zero, 0
  SW a0, 100(sp)
  ADDI a0, zero, 0
  SW a0, 104(sp)
  ADDI a0, zero, 0
  SW a0, 108(sp)
  ADDI a0, zero, 0
  SW a0, 112(sp)
  ADDI a0, zero, 0
  SW a0, 116(sp)
  ADDI a0, zero, 0
  SW a0, 120(sp)
  ADDI a0, zero, 0
  SW a0, 124(sp)
  ADDI a0, zero, 0
  SW a0, 128(sp)
  ADDI a0, zero, 0
  SW a0, 132(sp)
  ADDI a0, zero, 0
  SW a0, 136(sp)
  ADDI a0, zero, 0
  SW a0, 140(sp)
  ADDI a0, zero, 0
  SW a0, 144(sp)
  ADDI a0, zero, 0
  SW a0, 148(sp)
  ADDI a0, zero, 0
  SW a0, 152(sp)
  ADDI a0, zero, 0
  SW a0, 156(sp)
  ADDI a0, zero, 0
  SW a0, 160(sp)
  ADDI a0, zero, 0
  SW a0, 164(sp)
  ADDI a0, zero, 0
  SW a0, 168(sp)
  ADDI a0, zero, 0
  SW a0, 172(sp)
  ADDI a0, zero, 0
  SW a0, 176(sp)
  ADDI a0, zero, 0
  SW a0, 180(sp)
  ADDI a0, zero, 0
  SW a0, 184(sp)
  ADDI a0, zero, 0
  SW a0, 188(sp)
  ADDI a0, zero, 0
  SW a0, 192(sp)
  ADDI a0, zero, 0
  SW a0, 196(sp)
  ADDI a0, zero, 0
  SW a0, 200(sp)
  ADDI a0, zero, 0
  SW a0, 204(sp)
  ADDI a0, zero, 0
  SW a0, 208(sp)
  ADDI a0, zero, 0
  SW a0, 212(sp)
  ADDI a0, zero, 0
  SW a0, 216(sp)
  ADDI a0, zero, 0
  SW a0, 220(sp)
  ADDI a0, zero, 0
  SW a0, 224(sp)
  ADDI a0, zero, 0
  SW a0, 228(sp)
  ADDI a0, zero, 0
  SW a0, 232(sp)
  ADDI a0, zero, 0
  SW a0, 236(sp)
  ADDI a0, zero, 0
  SW a0, 240(sp)
  ADDI a0, zero, 0
  SW a0, 244(sp)
  ADDI a0, zero, 0
  SW a0, 248(sp)
  ADDI a0, zero, 0
  SW a0, 252(sp)
  ADDI a0, zero, 0
  SW a0, 256(sp)
  ADDI a0, zero, 0
  SW a0, 260(sp)
  ADDI a0, zero, 0
  SW a0, 264(sp)
  ADDI a0, zero, 0
  SW a0, 268(sp)
  ADDI a0, zero, 0
  SW a0, 272(sp)
  ADDI a0, zero, 0
  SW a0, 276(sp)
  ADDI a0, zero, 0
  SW a0, 280(sp)
  ADDI a0, zero, 0
  SW a0, 284(sp)
  ADDI a0, zero, 0
  SW a0, 288(sp)
  ADDI a0, zero, 0
  SW a0, 292(sp)
  ADDI a0, zero, 0
  SW a0, 296(sp)
  ADDI a0, zero, 0
  SW a0, 300(sp)
  ADDI a0, zero, 0
  SW a0, 304(sp)
  ADDI a0, zero, 0
  SW a0, 308(sp)
  ADDI a0, zero, 0
  SW a0, 312(sp)
  ADDI a0, zero, 0
  SW a0, 316(sp)
  ADDI a0, zero, 0
  SW a0, 320(sp)
  ADDI a0, zero, 0
  SW a0, 324(sp)
  ADDI a0, zero, 0
  SW a0, 328(sp)
  ADDI a0, zero, 0
  SW a0, 332(sp)
  ADDI a0, zero, 0
  SW a0, 336(sp)
  ADDI a0, zero, 0
  SW a0, 340(sp)
  ADDI a0, zero, 0
  SW a0, 344(sp)
  ADDI a0, zero, 0
  SW a0, 348(sp)
  ADDI a0, zero, 0
  SW a0, 352(sp)
  ADDI a0, zero, 0
  SW a0, 356(sp)
  ADDI a0, zero, 0
  SW a0, 360(sp)
  ADDI a0, zero, 0
  SW a0, 364(sp)
  ADDI a0, zero, 0
  SW a0, 368(sp)
  ADDI a0, zero, 0
  SW a0, 372(sp)
  ADDI a0, zero, 0
  SW a0, 376(sp)
  ADDI a0, zero, 0
  SW a0, 380(sp)
  ADDI a0, zero, 0
  SW a0, 384(sp)
  ADDI a0, zero, 0
  SW a0, 388(sp)
  ADDI a0, zero, 0
  SW a0, 392(sp)
  ADDI a0, zero, 0
  SW a0, 396(sp)
  ADDI a0, zero, 0
  BLT a0, s1, bb3
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
  ADDI a0, zero, 1
  SW a0, 4(sp)
  ADDI a0, zero, 2
  SW a0, 8(sp)
  ADDI a0, zero, 3
  SW a0, 12(sp)
  ADDI a0, zero, 4
  SW a0, 16(sp)
  ADDI a0, zero, 5
  SW a0, 20(sp)
  ADDI a0, zero, 6
  SW a0, 24(sp)
  ADDI a0, zero, 7
  SW a0, 28(sp)
  ADDI a0, zero, 8
  SW a0, 32(sp)
  ADDI a0, zero, 9
  SW a0, 36(sp)
  ADDI a0, zero, 10
  SW a0, 40(sp)
  ADDI a0, zero, 11
  SW a0, 44(sp)
  ADDI a0, zero, 12
  SW a0, 48(sp)
  ADDI a0, zero, 13
  SW a0, 52(sp)
  ADDI a0, zero, 14
  SW a0, 56(sp)
  ADDI a0, zero, 15
  SW a0, 60(sp)
  ADDI a0, zero, 16
  SW a0, 64(sp)
  ADDI a0, zero, 17
  SW a0, 68(sp)
  ADDI a0, zero, 18
  SW a0, 72(sp)
  ADDI a0, zero, 19
  SW a0, 76(sp)
  ADDI a0, zero, 20
  SW a0, 80(sp)
  ADDI a0, zero, 21
  SW a0, 84(sp)
  ADDI a0, zero, 22
  SW a0, 88(sp)
  ADDI a0, zero, 23
  SW a0, 92(sp)
  ADDI a0, zero, 24
  SW a0, 96(sp)
  ADDI a0, zero, 25
  SW a0, 100(sp)
  ADDI a0, zero, 26
  SW a0, 104(sp)
  ADDI a0, zero, 27
  SW a0, 108(sp)
  ADDI a0, zero, 28
  SW a0, 112(sp)
  ADDI a0, zero, 29
  SW a0, 116(sp)
  ADDI a0, zero, 30
  SW a0, 120(sp)
  ADDI a0, zero, 31
  SW a0, 124(sp)
  ADDI a0, zero, 32
  SW a0, 128(sp)
  ADDI a0, zero, 33
  SW a0, 132(sp)
  ADDI a0, zero, 34
  SW a0, 136(sp)
  ADDI a0, zero, 35
  SW a0, 140(sp)
  ADDI a0, zero, 36
  SW a0, 144(sp)
  ADDI a0, zero, 37
  SW a0, 148(sp)
  ADDI a0, zero, 38
  SW a0, 152(sp)
  ADDI a0, zero, 39
  SW a0, 156(sp)
  ADDI a0, zero, 40
  SW a0, 160(sp)
  ADDI a0, zero, 41
  SW a0, 164(sp)
  ADDI a0, zero, 42
  SW a0, 168(sp)
  ADDI a0, zero, 43
  SW a0, 172(sp)
  ADDI a0, zero, 44
  SW a0, 176(sp)
  ADDI a0, zero, 45
  SW a0, 180(sp)
  ADDI a0, zero, 46
  SW a0, 184(sp)
  ADDI a0, zero, 47
  SW a0, 188(sp)
  ADDI a0, zero, 48
  SW a0, 192(sp)
  ADDI a0, zero, 49
  SW a0, 196(sp)
  ADDI a0, zero, 50
  SW a0, 200(sp)
  ADDI a0, zero, 51
  SW a0, 204(sp)
  ADDI a0, zero, 52
  SW a0, 208(sp)
  ADDI a0, zero, 53
  SW a0, 212(sp)
  ADDI a0, zero, 54
  SW a0, 216(sp)
  ADDI a0, zero, 55
  SW a0, 220(sp)
  ADDI a0, zero, 56
  SW a0, 224(sp)
  ADDI a0, zero, 57
  SW a0, 228(sp)
  ADDI a0, zero, 58
  SW a0, 232(sp)
  ADDI a0, zero, 59
  SW a0, 236(sp)
  ADDI a0, zero, 60
  SW a0, 240(sp)
  ADDI a0, zero, 61
  SW a0, 244(sp)
  ADDI a0, zero, 62
  SW a0, 248(sp)
  ADDI a0, zero, 63
  SW a0, 252(sp)
  ADDI a0, zero, 64
  SW a0, 256(sp)
  ADDI a0, zero, 65
  SW a0, 260(sp)
  ADDI a0, zero, 66
  SW a0, 264(sp)
  ADDI a0, zero, 67
  SW a0, 268(sp)
  ADDI a0, zero, 68
  SW a0, 272(sp)
  ADDI a0, zero, 69
  SW a0, 276(sp)
  ADDI a0, zero, 70
  SW a0, 280(sp)
  ADDI a0, zero, 71
  SW a0, 284(sp)
  ADDI a0, zero, 72
  SW a0, 288(sp)
  ADDI a0, zero, 73
  SW a0, 292(sp)
  ADDI a0, zero, 74
  SW a0, 296(sp)
  ADDI a0, zero, 75
  SW a0, 300(sp)
  ADDI a0, zero, 76
  SW a0, 304(sp)
  ADDI a0, zero, 77
  SW a0, 308(sp)
  ADDI a0, zero, 78
  SW a0, 312(sp)
  ADDI a0, zero, 79
  SW a0, 316(sp)
  ADDI a0, zero, 80
  SW a0, 320(sp)
  ADDI a0, zero, 81
  SW a0, 324(sp)
  ADDI a0, zero, 82
  SW a0, 328(sp)
  ADDI a0, zero, 83
  SW a0, 332(sp)
  ADDI a0, zero, 84
  SW a0, 336(sp)
  ADDI a0, zero, 85
  SW a0, 340(sp)
  ADDI a0, zero, 86
  SW a0, 344(sp)
  ADDI a0, zero, 87
  SW a0, 348(sp)
  ADDI a0, zero, 88
  SW a0, 352(sp)
  ADDI a0, zero, 89
  SW a0, 356(sp)
  ADDI a0, zero, 90
  SW a0, 360(sp)
  ADDI a0, zero, 91
  SW a0, 364(sp)
  ADDI a0, zero, 92
  SW a0, 368(sp)
  ADDI a0, zero, 93
  SW a0, 372(sp)
  ADDI a0, zero, 94
  SW a0, 376(sp)
  ADDI a0, zero, 95
  SW a0, 380(sp)
  ADDI a0, zero, 96
  SW a0, 384(sp)
  ADDI a0, zero, 97
  SW a0, 388(sp)
  ADDI a0, zero, 98
  SW a0, 392(sp)
  ADDI a0, zero, 99
  SW a0, 396(sp)
  ADD s0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb4
bb4:
  ADD s2, a0, zero
  ADD a0, s0, zero
  ADDIW s2, s2, 1
  LW s0, 0(sp)
  ADDW s0, a0, s0
  LW a0, 4(sp)
  ADDW a0, s0, a0
  LW s0, 8(sp)
  ADDW s0, a0, s0
  LW a0, 12(sp)
  ADDW s0, s0, a0
  LW a0, 16(sp)
  ADDW s0, s0, a0
  LW a0, 20(sp)
  ADDW s0, s0, a0
  LW a0, 24(sp)
  ADDW a0, s0, a0
  LW s0, 28(sp)
  ADDW s0, a0, s0
  LW a0, 32(sp)
  ADDW s0, s0, a0
  LW a0, 36(sp)
  ADDW a0, s0, a0
  LW s0, 40(sp)
  ADDW a0, a0, s0
  LW s0, 44(sp)
  ADDW s0, a0, s0
  LW a0, 48(sp)
  ADDW s0, s0, a0
  LW a0, 52(sp)
  ADDW a0, s0, a0
  LW s0, 56(sp)
  ADDW a0, a0, s0
  LW s0, 60(sp)
  ADDW a0, a0, s0
  LW s0, 64(sp)
  ADDW a0, a0, s0
  LW s0, 68(sp)
  ADDW a0, a0, s0
  LW s0, 72(sp)
  ADDW a0, a0, s0
  LW s0, 76(sp)
  ADDW a0, a0, s0
  LW s0, 80(sp)
  ADDW a0, a0, s0
  LW s0, 84(sp)
  ADDW a0, a0, s0
  LW s0, 88(sp)
  ADDW a0, a0, s0
  LW s0, 92(sp)
  ADDW a0, a0, s0
  LW s0, 96(sp)
  ADDW a0, a0, s0
  LW s0, 100(sp)
  ADDW a0, a0, s0
  LW s0, 104(sp)
  ADDW a0, a0, s0
  LW s0, 108(sp)
  ADDW a0, a0, s0
  LW s0, 112(sp)
  ADDW a0, a0, s0
  LW s0, 116(sp)
  ADDW a0, a0, s0
  LW s0, 120(sp)
  ADDW a0, a0, s0
  LW s0, 124(sp)
  ADDW a0, a0, s0
  LW s0, 128(sp)
  ADDW a0, a0, s0
  LW s0, 132(sp)
  ADDW a0, a0, s0
  LW s0, 136(sp)
  ADDW a0, a0, s0
  LW s0, 140(sp)
  ADDW a0, a0, s0
  LW s0, 144(sp)
  ADDW a0, a0, s0
  LW s0, 148(sp)
  ADDW a0, a0, s0
  LW s0, 152(sp)
  ADDW a0, a0, s0
  LW s0, 156(sp)
  ADDW a0, a0, s0
  LW s0, 160(sp)
  ADDW a0, a0, s0
  LW s0, 164(sp)
  ADDW a0, a0, s0
  LW s0, 168(sp)
  ADDW a0, a0, s0
  LW s0, 172(sp)
  ADDW a0, a0, s0
  LW s0, 176(sp)
  ADDW a0, a0, s0
  LW s0, 180(sp)
  ADDW s0, a0, s0
  LW a0, 184(sp)
  ADDW s0, s0, a0
  LW a0, 188(sp)
  ADDW a0, s0, a0
  LW s0, 192(sp)
  ADDW s0, a0, s0
  LW a0, 196(sp)
  ADDW s0, s0, a0
  LW a0, 200(sp)
  ADDW s0, s0, a0
  LW a0, 204(sp)
  ADDW s0, s0, a0
  LW a0, 208(sp)
  ADDW s0, s0, a0
  LW a0, 212(sp)
  ADDW a0, s0, a0
  LW s0, 216(sp)
  ADDW s0, a0, s0
  LW a0, 220(sp)
  ADDW a0, s0, a0
  LW s0, 224(sp)
  ADDW a0, a0, s0
  LW s0, 228(sp)
  ADDW a0, a0, s0
  LW s0, 232(sp)
  ADDW a0, a0, s0
  LW s0, 236(sp)
  ADDW s0, a0, s0
  LW a0, 240(sp)
  ADDW a0, s0, a0
  LW s0, 244(sp)
  ADDW a0, a0, s0
  LW s0, 248(sp)
  ADDW a0, a0, s0
  LW s0, 252(sp)
  ADDW s0, a0, s0
  LW a0, 256(sp)
  ADDW s0, s0, a0
  LW a0, 260(sp)
  ADDW s0, s0, a0
  LW a0, 264(sp)
  ADDW a0, s0, a0
  LW s0, 268(sp)
  ADDW s0, a0, s0
  LW a0, 272(sp)
  ADDW s0, s0, a0
  LW a0, 276(sp)
  ADDW s0, s0, a0
  LW a0, 280(sp)
  ADDW s0, s0, a0
  LW a0, 284(sp)
  ADDW a0, s0, a0
  LW s0, 288(sp)
  ADDW s0, a0, s0
  LW a0, 292(sp)
  ADDW s0, s0, a0
  LW a0, 296(sp)
  ADDW s0, s0, a0
  LW a0, 300(sp)
  ADDW s0, s0, a0
  LW a0, 304(sp)
  ADDW s0, s0, a0
  LW a0, 308(sp)
  ADDW s0, s0, a0
  LW a0, 312(sp)
  ADDW s0, s0, a0
  LW a0, 316(sp)
  ADDW s0, s0, a0
  LW a0, 320(sp)
  ADDW s0, s0, a0
  LW a0, 324(sp)
  ADDW s0, s0, a0
  LW a0, 328(sp)
  ADDW s0, s0, a0
  LW a0, 332(sp)
  ADDW s0, s0, a0
  LW a0, 336(sp)
  ADDW s0, s0, a0
  LW a0, 340(sp)
  ADDW s0, s0, a0
  LW a0, 344(sp)
  ADDW s0, s0, a0
  LW a0, 348(sp)
  ADDW s0, s0, a0
  LW a0, 352(sp)
  ADDW s0, s0, a0
  LW a0, 356(sp)
  ADDW s0, s0, a0
  LW a0, 360(sp)
  ADDW s0, s0, a0
  LW a0, 364(sp)
  ADDW s0, s0, a0
  LW a0, 368(sp)
  ADDW s0, s0, a0
  LW a0, 372(sp)
  ADDW s0, s0, a0
  LW a0, 376(sp)
  ADDW s0, s0, a0
  LW a0, 380(sp)
  ADDW s0, s0, a0
  LW a0, 384(sp)
  ADDW s0, s0, a0
  LW a0, 388(sp)
  ADDW s0, s0, a0
  LW a0, 392(sp)
  ADDW s0, s0, a0
  LW a0, 396(sp)
  ADDW a0, s0, a0
  LUI s0, 16
  ADDIW s0, s0, -1
  REMW a0, a0, s0
  BLT s2, s1, bb6
  # implict jump to bb5
bb5:
  JAL zero, bb2
bb6:
  ADD s0, a0, zero
  ADD a0, s2, zero
  JAL zero, bb4
