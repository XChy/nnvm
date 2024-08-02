.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -448
  SD ra, 400(sp)
  SD s0, 408(sp)
  SD s1, 416(sp)
  SD s2, 424(sp)
  SD s3, 432(sp)
  ADDI a0, zero, 324
  CALL _sysy_starttime
  CALL getint
  ADD s0, a0, zero
  ADD a0, zero, zero
  # implict jump to bb1
bb1:
  ADD s1, a0, zero
  SLLIW a0, s1, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  SW zero, 0(a0)
  ADDIW a0, s1, 1
  SLTI s1, a0, 100
  BNE s1, zero, bb13
  # implict jump to bb2
bb2:
  BLT zero, s0, bb5
  # implict jump to bb3
bb3:
  ADD a0, zero, zero
  # implict jump to bb4
bb4:
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
  LD s3, 432(sp)
  ADDI sp, sp, 448
  JALR zero, 0(ra)
bb5:
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
  ADD s1, zero, zero
  ADD a0, zero, zero
  # implict jump to bb6
bb6:
  ADDIW s2, a0, 1
  ADD a0, zero, zero
  # implict jump to bb7
bb7:
  ADD s3, a0, zero
  SLLIW a0, s3, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW a0, 0(a0)
  ADDW s1, s1, a0
  ADDIW s3, s3, 1
  SLTI a0, s3, 100
  BNE a0, zero, bb12
  # implict jump to bb8
bb8:
  # implict jump to bb9
bb9:
  LUI a0, 16
  ADDIW a0, a0, -1
  REMW a0, s1, a0
  BLT s2, s0, bb11
  # implict jump to bb10
bb10:
  JAL zero, bb4
bb11:
  ADD s1, a0, zero
  ADD a0, s2, zero
  JAL zero, bb6
bb12:
  ADD a0, s3, zero
  JAL zero, bb7
bb13:
  JAL zero, bb1
