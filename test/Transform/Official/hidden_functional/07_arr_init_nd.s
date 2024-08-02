.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -432
  SD ra, 416(sp)
  ADDI t0, zero, 15
  # implict jump to bb1
bb1:
  ADD t1, t0, zero
  ADDI t0, zero, 1
  SUBW t2, t1, t0
  SLLIW t0, t2, 2
  ADDI t1, sp, 352
  ADD t1, t1, t0
  ADDI t0, zero, 0
  SW t0, 0(t1)
  BNE t2, zero, bb6
  # implict jump to bb2
bb2:
  ADDI t0, zero, 1
  SW t0, 288(sp)
  ADDI t0, zero, 2
  SW t0, 292(sp)
  ADDI t0, zero, 3
  SW t0, 296(sp)
  ADDI t0, zero, 4
  SW t0, 300(sp)
  ADDI t0, zero, 5
  SW t0, 304(sp)
  ADDI t0, zero, 6
  SW t0, 308(sp)
  ADDI t0, zero, 7
  SW t0, 312(sp)
  ADDI t0, zero, 8
  SW t0, 316(sp)
  ADDI t0, zero, 9
  SW t0, 320(sp)
  ADDI t0, zero, 10
  SW t0, 324(sp)
  ADDI t0, zero, 11
  SW t0, 328(sp)
  ADDI t0, zero, 12
  SW t0, 332(sp)
  ADDI t0, zero, 13
  SW t0, 336(sp)
  ADDI t0, zero, 14
  SW t0, 340(sp)
  ADDI t0, zero, 15
  SW t0, 344(sp)
  ADDI t0, zero, 1
  SW t0, 224(sp)
  ADDI t0, zero, 2
  SW t0, 228(sp)
  ADDI t0, zero, 3
  SW t0, 232(sp)
  ADDI t0, zero, 4
  SW t0, 236(sp)
  ADDI t0, zero, 5
  SW t0, 240(sp)
  ADDI t0, zero, 6
  SW t0, 244(sp)
  ADDI t0, zero, 7
  SW t0, 248(sp)
  ADDI t0, zero, 8
  SW t0, 252(sp)
  ADDI t0, zero, 9
  SW t0, 256(sp)
  ADDI t0, zero, 10
  SW t0, 260(sp)
  ADDI t0, zero, 11
  SW t0, 264(sp)
  ADDI t0, zero, 12
  SW t0, 268(sp)
  ADDI t0, zero, 13
  SW t0, 272(sp)
  ADDI t0, zero, 14
  SW t0, 276(sp)
  ADDI t0, zero, 15
  SW t0, 280(sp)
  ADDI t0, zero, 1
  SW t0, 160(sp)
  ADDI t0, zero, 2
  SW t0, 164(sp)
  ADDI t0, zero, 3
  SW t0, 168(sp)
  ADDI t0, zero, 4
  SW t0, 172(sp)
  ADDI t0, zero, 5
  SW t0, 176(sp)
  ADDI t0, zero, 6
  SW t0, 180(sp)
  ADDI t0, zero, 7
  SW t0, 184(sp)
  ADDI t0, zero, 8
  SW t0, 188(sp)
  ADDI t0, zero, 9
  SW t0, 192(sp)
  ADDI t0, zero, 10
  SW t0, 196(sp)
  ADDI t0, zero, 11
  SW t0, 200(sp)
  ADDI t0, zero, 12
  SW t0, 204(sp)
  ADDI t0, zero, 13
  SW t0, 208(sp)
  ADDI t0, zero, 14
  SW t0, 212(sp)
  ADDI t0, zero, 15
  SW t0, 216(sp)
  ADDI t0, zero, 1
  SW t0, 96(sp)
  ADDI t0, zero, 2
  SW t0, 100(sp)
  ADDI t0, zero, 3
  SW t0, 104(sp)
  ADDI t0, zero, 4
  SW t0, 108(sp)
  SW zero, 112(sp)
  SW zero, 116(sp)
  ADDI t0, zero, 7
  SW t0, 120(sp)
  SW zero, 124(sp)
  SW zero, 128(sp)
  ADDI t0, zero, 10
  SW t0, 132(sp)
  ADDI t0, zero, 11
  SW t0, 136(sp)
  ADDI t0, zero, 12
  SW t0, 140(sp)
  SW zero, 144(sp)
  SW zero, 148(sp)
  SW zero, 152(sp)
  ADDI t0, zero, 1
  SW t0, 0(sp)
  ADDI t0, zero, 2
  SW t0, 4(sp)
  ADDI t0, zero, 3
  SW t0, 8(sp)
  ADDI t0, zero, 4
  SW t0, 12(sp)
  ADDI t0, zero, 5
  SW t0, 16(sp)
  ADDI t0, zero, 19
  # implict jump to bb3
bb3:
  ADD t1, t0, zero
  ADDI t0, zero, 1
  SUBW t1, t1, t0
  SLLIW t0, t1, 2
  ADDIW t0, t0, 20
  ADDI t5, sp, 0
  ADD t0, t5, t0
  SW zero, 0(t0)
  BNE t1, zero, bb5
  # implict jump to bb4
bb4:
  ADDI a0, zero, 4
  LD ra, 416(sp)
  ADDI sp, sp, 432
  JALR zero, 0(ra)
bb5:
  ADD t0, t1, zero
  JAL zero, bb3
bb6:
  ADD t0, t2, zero
  JAL zero, bb1
