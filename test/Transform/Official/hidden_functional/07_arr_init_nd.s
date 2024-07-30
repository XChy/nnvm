.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -464
  SD ra, 416(sp)
  SD s0, 424(sp)
  SD s1, 432(sp)
  SD s2, 440(sp)
  SD s3, 448(sp)
  SD s4, 456(sp)
  ADDI s0, zero, 15
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  ADDI s2, zero, 1
  SUBW s1, s1, s2
  SLLIW s2, s1, 2
  ADDI t5, sp, 352
  ADD s2, t5, s2
  ADDI s3, zero, 0
  SW s3, 0(s2)
  BNE s1, zero, bb6
  # implict jump to bb2
bb2:
  ADDI s2, zero, 1
  SW s2, 288(sp)
  ADDI s2, zero, 2
  SW s2, 292(sp)
  ADDI s2, zero, 3
  SW s2, 296(sp)
  ADDI s2, zero, 4
  SW s2, 300(sp)
  ADDI s2, zero, 5
  SW s2, 304(sp)
  ADDI s2, zero, 6
  SW s2, 308(sp)
  ADDI s2, zero, 7
  SW s2, 312(sp)
  ADDI s2, zero, 8
  SW s2, 316(sp)
  ADDI s2, zero, 9
  SW s2, 320(sp)
  ADDI s2, zero, 10
  SW s2, 324(sp)
  ADDI s2, zero, 11
  SW s2, 328(sp)
  ADDI s2, zero, 12
  SW s2, 332(sp)
  ADDI s2, zero, 13
  SW s2, 336(sp)
  ADDI s2, zero, 14
  SW s2, 340(sp)
  ADDI s2, zero, 15
  SW s2, 344(sp)
  ADDI s2, zero, 1
  SW s2, 224(sp)
  ADDI s2, zero, 2
  SW s2, 228(sp)
  ADDI s2, zero, 3
  SW s2, 232(sp)
  ADDI s2, zero, 4
  SW s2, 236(sp)
  ADDI s2, zero, 5
  SW s2, 240(sp)
  ADDI s2, zero, 6
  SW s2, 244(sp)
  ADDI s2, zero, 7
  SW s2, 248(sp)
  ADDI s2, zero, 8
  SW s2, 252(sp)
  ADDI s2, zero, 9
  SW s2, 256(sp)
  ADDI s2, zero, 10
  SW s2, 260(sp)
  ADDI s2, zero, 11
  SW s2, 264(sp)
  ADDI s2, zero, 12
  SW s2, 268(sp)
  ADDI s2, zero, 13
  SW s2, 272(sp)
  ADDI s2, zero, 14
  SW s2, 276(sp)
  ADDI s2, zero, 15
  SW s2, 280(sp)
  ADDI s2, zero, 1
  SW s2, 160(sp)
  ADDI s2, zero, 2
  SW s2, 164(sp)
  ADDI s2, zero, 3
  SW s2, 168(sp)
  ADDI s2, zero, 4
  SW s2, 172(sp)
  ADDI s2, zero, 5
  SW s2, 176(sp)
  ADDI s2, zero, 6
  SW s2, 180(sp)
  ADDI s2, zero, 7
  SW s2, 184(sp)
  ADDI s2, zero, 8
  SW s2, 188(sp)
  ADDI s2, zero, 9
  SW s2, 192(sp)
  ADDI s2, zero, 10
  SW s2, 196(sp)
  ADDI s2, zero, 11
  SW s2, 200(sp)
  ADDI s2, zero, 12
  SW s2, 204(sp)
  ADDI s2, zero, 13
  SW s2, 208(sp)
  ADDI s2, zero, 14
  SW s2, 212(sp)
  ADDI s2, zero, 15
  SW s2, 216(sp)
  ADDI s2, zero, 1
  SW s2, 96(sp)
  ADDI s2, zero, 2
  SW s2, 100(sp)
  ADDI s2, zero, 3
  SW s2, 104(sp)
  ADDI s2, zero, 4
  SW s2, 108(sp)
  SW zero, 112(sp)
  SW zero, 116(sp)
  ADDI s2, zero, 7
  SW s2, 120(sp)
  SW zero, 124(sp)
  SW zero, 128(sp)
  ADDI s2, zero, 10
  SW s2, 132(sp)
  ADDI s2, zero, 11
  SW s2, 136(sp)
  ADDI s2, zero, 12
  SW s2, 140(sp)
  SW zero, 144(sp)
  SW zero, 148(sp)
  SW zero, 152(sp)
  ADDI s2, zero, 1
  SW s2, 0(sp)
  ADDI s2, zero, 2
  SW s2, 4(sp)
  ADDI s2, zero, 3
  SW s2, 8(sp)
  ADDI s2, zero, 4
  SW s2, 12(sp)
  ADDI s2, zero, 5
  SW s2, 16(sp)
  ADDI s2, zero, 19
  # implict jump to bb3
bb3:
  ADD s3, s2, zero
  ADDI s4, zero, 1
  SUBW s3, s3, s4
  SLLIW s4, s3, 2
  ADDIW s4, s4, 20
  ADDI t5, sp, 0
  ADD s4, t5, s4
  SW zero, 0(s4)
  BNE s3, zero, bb5
  # implict jump to bb4
bb4:
  ADDI a0, zero, 4
  LD ra, 416(sp)
  LD s0, 424(sp)
  LD s1, 432(sp)
  LD s2, 440(sp)
  LD s3, 448(sp)
  LD s4, 456(sp)
  ADDI sp, sp, 464
  JALR zero, 0(ra)
bb5:
  ADD s2, s3, zero
  JAL zero, bb3
bb6:
  ADD s0, s1, zero
  JAL zero, bb1
