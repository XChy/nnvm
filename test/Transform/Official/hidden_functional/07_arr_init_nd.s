.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -480
  SD ra, 416(sp)
  SD s0, 424(sp)
  SD s1, 432(sp)
  SD s2, 440(sp)
  SD s3, 448(sp)
  SD s4, 456(sp)
  SD s5, 464(sp)
  ADDI s2, zero, 0
  XORI s2, s2, 15
  BNE s2, zero, bb8
  # implict jump to bb1
bb1:
  ADDI s3, zero, 1
  SW s3, 288(sp)
  ADDI s3, zero, 2
  SW s3, 292(sp)
  ADDI s3, zero, 3
  SW s3, 296(sp)
  ADDI s3, zero, 4
  SW s3, 300(sp)
  ADDI s3, zero, 5
  SW s3, 304(sp)
  ADDI s3, zero, 6
  SW s3, 308(sp)
  ADDI s3, zero, 7
  SW s3, 312(sp)
  ADDI s3, zero, 8
  SW s3, 316(sp)
  ADDI s3, zero, 9
  SW s3, 320(sp)
  ADDI s3, zero, 10
  SW s3, 324(sp)
  ADDI s3, zero, 11
  SW s3, 328(sp)
  ADDI s3, zero, 12
  SW s3, 332(sp)
  ADDI s3, zero, 13
  SW s3, 336(sp)
  ADDI s3, zero, 14
  SW s3, 340(sp)
  ADDI s3, zero, 15
  SW s3, 344(sp)
  ADDI s3, zero, 1
  SW s3, 224(sp)
  ADDI s3, zero, 2
  SW s3, 228(sp)
  ADDI s3, zero, 3
  SW s3, 232(sp)
  ADDI s3, zero, 4
  SW s3, 236(sp)
  ADDI s3, zero, 5
  SW s3, 240(sp)
  ADDI s3, zero, 6
  SW s3, 244(sp)
  ADDI s3, zero, 7
  SW s3, 248(sp)
  ADDI s3, zero, 8
  SW s3, 252(sp)
  ADDI s3, zero, 9
  SW s3, 256(sp)
  ADDI s3, zero, 10
  SW s3, 260(sp)
  ADDI s3, zero, 11
  SW s3, 264(sp)
  ADDI s3, zero, 12
  SW s3, 268(sp)
  ADDI s3, zero, 13
  SW s3, 272(sp)
  ADDI s3, zero, 14
  SW s3, 276(sp)
  ADDI s3, zero, 15
  SW s3, 280(sp)
  ADDI s3, zero, 1
  SW s3, 160(sp)
  ADDI s3, zero, 2
  SW s3, 164(sp)
  ADDI s3, zero, 3
  SW s3, 168(sp)
  ADDI s3, zero, 4
  SW s3, 172(sp)
  ADDI s3, zero, 5
  SW s3, 176(sp)
  ADDI s3, zero, 6
  SW s3, 180(sp)
  ADDI s3, zero, 7
  SW s3, 184(sp)
  ADDI s3, zero, 8
  SW s3, 188(sp)
  ADDI s3, zero, 9
  SW s3, 192(sp)
  ADDI s3, zero, 10
  SW s3, 196(sp)
  ADDI s3, zero, 11
  SW s3, 200(sp)
  ADDI s3, zero, 12
  SW s3, 204(sp)
  ADDI s3, zero, 13
  SW s3, 208(sp)
  ADDI s3, zero, 14
  SW s3, 212(sp)
  ADDI s3, zero, 15
  SW s3, 216(sp)
  ADDI s3, zero, 1
  SW s3, 96(sp)
  ADDI s3, zero, 2
  SW s3, 100(sp)
  ADDI s3, zero, 3
  SW s3, 104(sp)
  ADDI s3, zero, 4
  SW s3, 108(sp)
  SW zero, 112(sp)
  SW zero, 116(sp)
  ADDI s3, zero, 7
  SW s3, 120(sp)
  SW zero, 124(sp)
  SW zero, 128(sp)
  ADDI s3, zero, 10
  SW s3, 132(sp)
  ADDI s3, zero, 11
  SW s3, 136(sp)
  ADDI s3, zero, 12
  SW s3, 140(sp)
  SW zero, 144(sp)
  SW zero, 148(sp)
  SW zero, 152(sp)
  ADDI s3, zero, 1
  SW s3, 0(sp)
  ADDI s3, zero, 2
  SW s3, 4(sp)
  ADDI s3, zero, 3
  SW s3, 8(sp)
  ADDI s3, zero, 4
  SW s3, 12(sp)
  ADDI s3, zero, 5
  SW s3, 16(sp)
  XORI s3, zero, 19
  BNE s3, zero, bb3
  # implict jump to bb2
bb2:
  ADDI a0, zero, 4
  LD ra, 416(sp)
  LD s0, 424(sp)
  LD s1, 432(sp)
  LD s2, 440(sp)
  LD s3, 448(sp)
  LD s4, 456(sp)
  LD s5, 464(sp)
  ADDI sp, sp, 480
  JALR zero, 0(ra)
bb3:
  ADDI s3, zero, 19
  # implict jump to bb4
bb4:
  # implict jump to bb5
bb5:
  ADD s4, s3, zero
  ADDI s5, zero, 1
  SUBW s0, s4, s5
  SLLIW s4, s0, 2
  ADDIW s4, s4, 20
  ADDI t5, sp, 0
  ADD s4, t5, s4
  SW zero, 0(s4)
  # implict jump to bb6
bb6:
  BNE s0, zero, bb7
  JAL zero, bb2
bb7:
  ADD s3, s0, zero
  JAL zero, bb5
bb8:
  ADDI s2, zero, 15
  # implict jump to bb9
bb9:
  # implict jump to bb10
bb10:
  ADD s3, s2, zero
  ADDI s4, zero, 1
  SUBW s1, s3, s4
  SLLIW s3, s1, 2
  ADDI t5, sp, 352
  ADD s3, t5, s3
  SW zero, 0(s3)
  # implict jump to bb11
bb11:
  BNE s1, zero, bb12
  JAL zero, bb1
bb12:
  ADD s2, s1, zero
  JAL zero, bb10
