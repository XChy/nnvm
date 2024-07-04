.global main
.global sum
.section .bss
.section .data
.section .text
main:
  LUI t0, 1048064
  ADDI t0, t0, -416
  ADD sp, sp, t0
  LUI t5, 512
  ADDI t5, t5, 312
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t6, 512
  ADDI t6, t6, 320
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t5, 512
  ADDI t5, t5, 328
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t6, 512
  ADDI t6, t6, 336
  ADD t6, t6, sp
  SD s10, 0(t6)
  LUI t5, 512
  ADDI t5, t5, 344
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t6, 512
  ADDI t6, t6, 352
  ADD t6, t6, sp
  SD s6, 0(t6)
  LUI t5, 512
  ADDI t5, t5, 360
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t6, 512
  ADDI t6, t6, 368
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t5, 512
  ADDI t5, t5, 376
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t6, 512
  ADDI t6, t6, 384
  ADD t6, t6, sp
  SD s7, 0(t6)
  LUI t5, 512
  ADDI t5, t5, 392
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t6, 512
  ADDI t6, t6, 400
  ADD t6, t6, sp
  SD s9, 0(t6)
  LUI t5, 512
  ADDI t5, t5, 408
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI s0, 128
  ADDI s0, s0, 0
  SW s0, 256(sp)
  JAL zero, bb1
bb1:
  LW s0, 256(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb2
  JAL zero, bb3
bb2:
  LW s0, 256(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 256(sp)
  ADDI s0, zero, 4
  MULW s1, s2, s0
  ADDW s0, zero, s1
  ADDI t6, sp, 264
  ADD s1, t6, s0
  SW zero, 0(s1)
  JAL zero, bb1
bb3:
  SW zero, 248(sp)
  SW zero, 240(sp)
  JAL zero, bb4
bb4:
  LW s0, 240(sp)
  SLTI s1, s0, 2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb5
  JAL zero, bb6
bb5:
  SW zero, 232(sp)
  JAL zero, bb7
bb6:
  LUI s0, 256
  ADDI s0, s0, 0
  MULW s1, zero, s0
  ADDI t5, sp, 264
  ADD s0, t5, s1
  LUI s1, 128
  ADDI s1, s1, 0
  MULW s2, zero, s1
  ADD s1, s0, s2
  LUI s0, 64
  ADDI s0, s0, 0
  MULW s2, zero, s0
  ADD s0, s1, s2
  LUI s1, 32
  ADDI s1, s1, 0
  MULW s2, zero, s1
  ADD s1, s0, s2
  LUI s0, 16
  ADDI s0, s0, 0
  MULW s2, zero, s0
  ADD s0, s1, s2
  LUI s1, 8
  ADDI s1, s1, 0
  MULW s2, zero, s1
  ADD s1, s0, s2
  LUI s0, 4
  ADDI s0, s0, 0
  MULW s2, zero, s0
  ADD s0, s1, s2
  LUI s1, 2
  ADDI s1, s1, 0
  MULW s2, zero, s1
  ADD s1, s0, s2
  LUI s0, 1
  ADDI s0, s0, 0
  MULW s2, zero, s0
  ADD s0, s1, s2
  LUI s1, 1
  ADDI s1, s1, -2048
  MULW s2, zero, s1
  ADD s1, s0, s2
  ADDI s0, zero, 1024
  MULW s2, zero, s0
  ADD s0, s1, s2
  ADDI s1, zero, 512
  MULW s2, zero, s1
  ADD s1, s0, s2
  ADDI s0, zero, 256
  MULW s2, zero, s0
  ADD s0, s1, s2
  ADDI s1, zero, 128
  MULW s2, zero, s1
  ADD s1, s0, s2
  ADDI s0, zero, 64
  MULW s2, zero, s0
  ADD s0, s1, s2
  ADDI s1, zero, 32
  MULW s2, zero, s1
  ADD s1, s0, s2
  ADDI s0, zero, 16
  MULW s2, zero, s0
  ADD s0, s1, s2
  ADDI s1, zero, 8
  MULW s2, zero, s1
  ADD s1, s0, s2
  LUI s0, 256
  ADDI s0, s0, 0
  MULW s2, zero, s0
  ADDI t6, sp, 264
  ADD s0, t6, s2
  LUI s2, 128
  ADDI s2, s2, 0
  MULW s3, zero, s2
  ADD s2, s0, s3
  LUI s0, 64
  ADDI s0, s0, 0
  MULW s3, zero, s0
  ADD s0, s2, s3
  LUI s2, 32
  ADDI s2, s2, 0
  MULW s3, zero, s2
  ADD s2, s0, s3
  LUI s0, 16
  ADDI s0, s0, 0
  MULW s3, zero, s0
  ADD s0, s2, s3
  LUI s2, 8
  ADDI s2, s2, 0
  MULW s3, zero, s2
  ADD s2, s0, s3
  LUI s0, 4
  ADDI s0, s0, 0
  MULW s3, zero, s0
  ADD s0, s2, s3
  LUI s2, 2
  ADDI s2, s2, 0
  MULW s3, zero, s2
  ADD s2, s0, s3
  LUI s0, 1
  ADDI s0, s0, 0
  MULW s3, zero, s0
  ADD s0, s2, s3
  LUI s2, 1
  ADDI s2, s2, -2048
  MULW s3, zero, s2
  ADD s2, s0, s3
  ADDI s0, zero, 1024
  MULW s3, zero, s0
  ADD s0, s2, s3
  ADDI s2, zero, 512
  MULW s3, zero, s2
  ADD s2, s0, s3
  ADDI s0, zero, 256
  MULW s3, zero, s0
  ADD s0, s2, s3
  ADDI s2, zero, 128
  MULW s3, zero, s2
  ADD s2, s0, s3
  ADDI s0, zero, 64
  MULW s3, zero, s0
  ADD s0, s2, s3
  ADDI s2, zero, 32
  MULW s3, zero, s2
  ADD s2, s0, s3
  ADDI s0, zero, 16
  MULW s3, zero, s0
  ADD s0, s2, s3
  LUI s2, 256
  ADDI s2, s2, 0
  MULW s3, zero, s2
  ADDI t5, sp, 264
  ADD s2, t5, s3
  LUI s3, 128
  ADDI s3, s3, 0
  MULW s4, zero, s3
  ADD s3, s2, s4
  LUI s2, 64
  ADDI s2, s2, 0
  MULW s4, zero, s2
  ADD s2, s3, s4
  LUI s3, 32
  ADDI s3, s3, 0
  MULW s4, zero, s3
  ADD s3, s2, s4
  LUI s2, 16
  ADDI s2, s2, 0
  MULW s4, zero, s2
  ADD s2, s3, s4
  LUI s3, 8
  ADDI s3, s3, 0
  MULW s4, zero, s3
  ADD s3, s2, s4
  LUI s2, 4
  ADDI s2, s2, 0
  MULW s4, zero, s2
  ADD s2, s3, s4
  LUI s3, 2
  ADDI s3, s3, 0
  MULW s4, zero, s3
  ADD s3, s2, s4
  LUI s2, 1
  ADDI s2, s2, 0
  MULW s4, zero, s2
  ADD s2, s3, s4
  LUI s3, 1
  ADDI s3, s3, -2048
  MULW s4, zero, s3
  ADD s3, s2, s4
  ADDI s2, zero, 1024
  MULW s4, zero, s2
  ADD s2, s3, s4
  ADDI s3, zero, 512
  MULW s4, zero, s3
  ADD s3, s2, s4
  ADDI s2, zero, 256
  MULW s4, zero, s2
  ADD s2, s3, s4
  ADDI s3, zero, 128
  MULW s4, zero, s3
  ADD s3, s2, s4
  ADDI s2, zero, 64
  MULW s4, zero, s2
  ADD s2, s3, s4
  ADDI s3, zero, 32
  MULW s4, zero, s3
  ADD s3, s2, s4
  LUI s2, 256
  ADDI s2, s2, 0
  MULW s4, zero, s2
  ADDI t6, sp, 264
  ADD s2, t6, s4
  LUI s4, 128
  ADDI s4, s4, 0
  MULW s5, zero, s4
  ADD s4, s2, s5
  LUI s2, 64
  ADDI s2, s2, 0
  MULW s5, zero, s2
  ADD s2, s4, s5
  LUI s4, 32
  ADDI s4, s4, 0
  MULW s5, zero, s4
  ADD s4, s2, s5
  LUI s2, 16
  ADDI s2, s2, 0
  MULW s5, zero, s2
  ADD s2, s4, s5
  LUI s4, 8
  ADDI s4, s4, 0
  MULW s5, zero, s4
  ADD s4, s2, s5
  LUI s2, 4
  ADDI s2, s2, 0
  MULW s5, zero, s2
  ADD s2, s4, s5
  LUI s4, 2
  ADDI s4, s4, 0
  MULW s5, zero, s4
  ADD s4, s2, s5
  LUI s2, 1
  ADDI s2, s2, 0
  MULW s5, zero, s2
  ADD s2, s4, s5
  LUI s4, 1
  ADDI s4, s4, -2048
  MULW s5, zero, s4
  ADD s4, s2, s5
  ADDI s2, zero, 1024
  MULW s5, zero, s2
  ADD s2, s4, s5
  ADDI s4, zero, 512
  MULW s5, zero, s4
  ADD s4, s2, s5
  ADDI s2, zero, 256
  MULW s5, zero, s2
  ADD s2, s4, s5
  ADDI s4, zero, 128
  MULW s5, zero, s4
  ADD s4, s2, s5
  ADDI s2, zero, 64
  MULW s5, zero, s2
  ADD s2, s4, s5
  LUI s4, 256
  ADDI s4, s4, 0
  MULW s5, zero, s4
  ADDI t5, sp, 264
  ADD s4, t5, s5
  LUI s5, 128
  ADDI s5, s5, 0
  MULW s6, zero, s5
  ADD s5, s4, s6
  LUI s4, 64
  ADDI s4, s4, 0
  MULW s6, zero, s4
  ADD s4, s5, s6
  LUI s5, 32
  ADDI s5, s5, 0
  MULW s6, zero, s5
  ADD s5, s4, s6
  LUI s4, 16
  ADDI s4, s4, 0
  MULW s6, zero, s4
  ADD s4, s5, s6
  LUI s5, 8
  ADDI s5, s5, 0
  MULW s6, zero, s5
  ADD s5, s4, s6
  LUI s4, 4
  ADDI s4, s4, 0
  MULW s6, zero, s4
  ADD s4, s5, s6
  LUI s5, 2
  ADDI s5, s5, 0
  MULW s6, zero, s5
  ADD s5, s4, s6
  LUI s4, 1
  ADDI s4, s4, 0
  MULW s6, zero, s4
  ADD s4, s5, s6
  LUI s5, 1
  ADDI s5, s5, -2048
  MULW s6, zero, s5
  ADD s5, s4, s6
  ADDI s4, zero, 1024
  MULW s6, zero, s4
  ADD s4, s5, s6
  ADDI s5, zero, 512
  MULW s6, zero, s5
  ADD s5, s4, s6
  ADDI s4, zero, 256
  MULW s6, zero, s4
  ADD s4, s5, s6
  ADDI s5, zero, 128
  MULW s6, zero, s5
  ADD s5, s4, s6
  LUI s4, 256
  ADDI s4, s4, 0
  MULW s6, zero, s4
  ADDI t6, sp, 264
  ADD s4, t6, s6
  LUI s6, 128
  ADDI s6, s6, 0
  MULW s7, zero, s6
  ADD s6, s4, s7
  LUI s4, 64
  ADDI s4, s4, 0
  MULW s7, zero, s4
  ADD s4, s6, s7
  LUI s6, 32
  ADDI s6, s6, 0
  MULW s7, zero, s6
  ADD s6, s4, s7
  LUI s4, 16
  ADDI s4, s4, 0
  MULW s7, zero, s4
  ADD s4, s6, s7
  LUI s6, 8
  ADDI s6, s6, 0
  MULW s7, zero, s6
  ADD s6, s4, s7
  LUI s4, 4
  ADDI s4, s4, 0
  MULW s7, zero, s4
  ADD s4, s6, s7
  LUI s6, 2
  ADDI s6, s6, 0
  MULW s7, zero, s6
  ADD s6, s4, s7
  LUI s4, 1
  ADDI s4, s4, 0
  MULW s7, zero, s4
  ADD s4, s6, s7
  LUI s6, 1
  ADDI s6, s6, -2048
  MULW s7, zero, s6
  ADD s6, s4, s7
  ADDI s4, zero, 1024
  MULW s7, zero, s4
  ADD s4, s6, s7
  ADDI s6, zero, 512
  MULW s7, zero, s6
  ADD s6, s4, s7
  ADDI s4, zero, 256
  MULW s7, zero, s4
  ADD s4, s6, s7
  LUI s6, 256
  ADDI s6, s6, 0
  MULW s7, zero, s6
  ADDI t5, sp, 264
  ADD s6, t5, s7
  LUI s7, 128
  ADDI s7, s7, 0
  MULW s8, zero, s7
  ADD s7, s6, s8
  LUI s6, 64
  ADDI s6, s6, 0
  MULW s8, zero, s6
  ADD s6, s7, s8
  LUI s7, 32
  ADDI s7, s7, 0
  MULW s8, zero, s7
  ADD s7, s6, s8
  LUI s6, 16
  ADDI s6, s6, 0
  MULW s8, zero, s6
  ADD s6, s7, s8
  LUI s7, 8
  ADDI s7, s7, 0
  MULW s8, zero, s7
  ADD s7, s6, s8
  LUI s6, 4
  ADDI s6, s6, 0
  MULW s8, zero, s6
  ADD s6, s7, s8
  LUI s7, 2
  ADDI s7, s7, 0
  MULW s8, zero, s7
  ADD s7, s6, s8
  LUI s6, 1
  ADDI s6, s6, 0
  MULW s8, zero, s6
  ADD s6, s7, s8
  LUI s7, 1
  ADDI s7, s7, -2048
  MULW s8, zero, s7
  ADD s7, s6, s8
  ADDI s6, zero, 1024
  MULW s8, zero, s6
  ADD s6, s7, s8
  ADDI s7, zero, 512
  MULW s8, zero, s7
  ADD s7, s6, s8
  LUI s6, 256
  ADDI s6, s6, 0
  MULW s8, zero, s6
  ADDI t6, sp, 264
  ADD s6, t6, s8
  LUI s8, 128
  ADDI s8, s8, 0
  MULW s9, zero, s8
  ADD s8, s6, s9
  LUI s6, 64
  ADDI s6, s6, 0
  MULW s9, zero, s6
  ADD s6, s8, s9
  LUI s8, 32
  ADDI s8, s8, 0
  MULW s9, zero, s8
  ADD s8, s6, s9
  LUI s6, 16
  ADDI s6, s6, 0
  MULW s9, zero, s6
  ADD s6, s8, s9
  LUI s8, 8
  ADDI s8, s8, 0
  MULW s9, zero, s8
  ADD s8, s6, s9
  LUI s6, 4
  ADDI s6, s6, 0
  MULW s9, zero, s6
  ADD s6, s8, s9
  LUI s8, 2
  ADDI s8, s8, 0
  MULW s9, zero, s8
  ADD s8, s6, s9
  LUI s6, 1
  ADDI s6, s6, 0
  MULW s9, zero, s6
  ADD s6, s8, s9
  LUI s8, 1
  ADDI s8, s8, -2048
  MULW s9, zero, s8
  ADD s8, s6, s9
  ADDI s6, zero, 1024
  MULW s9, zero, s6
  ADD s6, s8, s9
  LUI s8, 256
  ADDI s8, s8, 0
  MULW s9, zero, s8
  ADDI t5, sp, 264
  ADD s8, t5, s9
  LUI s9, 128
  ADDI s9, s9, 0
  MULW s10, zero, s9
  ADD s9, s8, s10
  LUI s8, 64
  ADDI s8, s8, 0
  MULW s10, zero, s8
  ADD s8, s9, s10
  LUI s9, 32
  ADDI s9, s9, 0
  MULW s10, zero, s9
  ADD s9, s8, s10
  LUI s8, 16
  ADDI s8, s8, 0
  MULW s10, zero, s8
  ADD s8, s9, s10
  LUI s9, 8
  ADDI s9, s9, 0
  MULW s10, zero, s9
  ADD s9, s8, s10
  LUI s8, 4
  ADDI s8, s8, 0
  MULW s10, zero, s8
  ADD s8, s9, s10
  LUI s9, 2
  ADDI s9, s9, 0
  MULW s10, zero, s9
  ADD s9, s8, s10
  LUI s8, 1
  ADDI s8, s8, 0
  MULW s10, zero, s8
  ADD s8, s9, s10
  LUI s9, 1
  ADDI s9, s9, -2048
  MULW s10, zero, s9
  ADD s9, s8, s10
  LUI s8, 256
  ADDI s8, s8, 0
  MULW s10, zero, s8
  ADDI t6, sp, 264
  ADD s8, t6, s10
  LUI s10, 128
  ADDI s10, s10, 0
  MULW s11, zero, s10
  ADD s10, s8, s11
  LUI s8, 64
  ADDI s8, s8, 0
  MULW s11, zero, s8
  ADD s8, s10, s11
  LUI s10, 32
  ADDI s10, s10, 0
  MULW s11, zero, s10
  ADD s10, s8, s11
  LUI s8, 16
  ADDI s8, s8, 0
  MULW s11, zero, s8
  ADD s8, s10, s11
  LUI s10, 8
  ADDI s10, s10, 0
  MULW s11, zero, s10
  ADD s10, s8, s11
  LUI s8, 4
  ADDI s8, s8, 0
  MULW s11, zero, s8
  ADD s8, s10, s11
  LUI s10, 2
  ADDI s10, s10, 0
  MULW s11, zero, s10
  ADD s10, s8, s11
  LUI s8, 1
  ADDI s8, s8, 0
  MULW s11, zero, s8
  ADD s8, s10, s11
  LUI s10, 256
  ADDI s10, s10, 0
  MULW s11, zero, s10
  ADDI t5, sp, 264
  ADD s10, t5, s11
  LUI s11, 128
  ADDI s11, s11, 0
  MULW ra, zero, s11
  ADD s11, s10, ra
  LUI s10, 64
  ADDI s10, s10, 0
  MULW ra, zero, s10
  ADD s10, s11, ra
  LUI s11, 32
  ADDI s11, s11, 0
  MULW ra, zero, s11
  ADD s11, s10, ra
  LUI s10, 16
  ADDI s10, s10, 0
  MULW ra, zero, s10
  ADD s10, s11, ra
  LUI s11, 8
  ADDI s11, s11, 0
  MULW ra, zero, s11
  ADD s11, s10, ra
  LUI s10, 4
  ADDI s10, s10, 0
  MULW ra, zero, s10
  ADD s10, s11, ra
  LUI s11, 2
  ADDI s11, s11, 0
  MULW ra, zero, s11
  ADD s11, s10, ra
  LUI s10, 256
  ADDI s10, s10, 0
  MULW ra, zero, s10
  ADDI t6, sp, 264
  ADD s10, t6, ra
  LUI ra, 128
  ADDI ra, ra, 0
  MULW t0, zero, ra
  ADD ra, s10, t0
  LUI s10, 64
  ADDI s10, s10, 0
  MULW t0, zero, s10
  ADD s10, ra, t0
  LUI ra, 32
  ADDI ra, ra, 0
  MULW t0, zero, ra
  ADD ra, s10, t0
  LUI s10, 16
  ADDI s10, s10, 0
  MULW t0, zero, s10
  ADD s10, ra, t0
  LUI ra, 8
  ADDI ra, ra, 0
  MULW t0, zero, ra
  ADD ra, s10, t0
  LUI s10, 4
  ADDI s10, s10, 0
  MULW t0, zero, s10
  ADD s10, ra, t0
  LUI ra, 256
  ADDI ra, ra, 0
  MULW t0, zero, ra
  ADDI ra, sp, 264
  ADD ra, ra, t0
  LUI t0, 128
  ADDI t0, t0, 0
  MULW t1, zero, t0
  ADD t0, ra, t1
  LUI ra, 64
  ADDI ra, ra, 0
  MULW t1, zero, ra
  ADD ra, t0, t1
  LUI t0, 32
  ADDI t0, t0, 0
  MULW t1, zero, t0
  ADD t0, ra, t1
  LUI ra, 16
  ADDI ra, ra, 0
  MULW t1, zero, ra
  ADD ra, t0, t1
  LUI t0, 8
  ADDI t0, t0, 0
  MULW t1, zero, t0
  ADD t4, ra, t1
  LUI ra, 512
  ADDI ra, ra, 304
  ADD ra, ra, sp
  SD t4, 0(ra)
  LUI ra, 256
  ADDI ra, ra, 0
  MULW t1, zero, ra
  ADDI ra, sp, 264
  ADD ra, ra, t1
  LUI t1, 128
  ADDI t1, t1, 0
  MULW t2, zero, t1
  ADD t1, ra, t2
  LUI ra, 64
  ADDI ra, ra, 0
  MULW t2, zero, ra
  ADD ra, t1, t2
  LUI t1, 32
  ADDI t1, t1, 0
  MULW t2, zero, t1
  ADD t1, ra, t2
  LUI ra, 16
  ADDI ra, ra, 0
  MULW t2, zero, ra
  ADD t4, t1, t2
  LUI t1, 512
  ADDI t1, t1, 288
  ADD t1, t1, sp
  SD t4, 0(t1)
  LUI t1, 256
  ADDI t1, t1, 0
  MULW t2, zero, t1
  ADDI t1, sp, 264
  ADD t1, t1, t2
  LUI t2, 128
  ADDI t2, t2, 0
  MULW a0, zero, t2
  ADD t2, t1, a0
  LUI t1, 64
  ADDI t1, t1, 0
  MULW a0, zero, t1
  ADD t1, t2, a0
  LUI t2, 32
  ADDI t2, t2, 0
  MULW a0, zero, t2
  ADD t4, t1, a0
  LUI t1, 512
  ADDI t1, t1, 280
  ADD t1, t1, sp
  SD t4, 0(t1)
  LUI t1, 256
  ADDI t1, t1, 0
  MULW a0, zero, t1
  ADDI t1, sp, 264
  ADD t1, t1, a0
  LUI a0, 128
  ADDI a0, a0, 0
  MULW a1, zero, a0
  ADD a0, t1, a1
  LUI t1, 64
  ADDI t1, t1, 0
  MULW a1, zero, t1
  ADD t4, a0, a1
  LUI a0, 512
  ADDI a0, a0, 296
  ADD a0, a0, sp
  SD t4, 0(a0)
  LUI a0, 256
  ADDI a0, a0, 0
  MULW a1, zero, a0
  ADDI a0, sp, 264
  ADD a0, a0, a1
  LUI a1, 128
  ADDI a1, a1, 0
  MULW a2, zero, a1
  ADD t4, a0, a2
  LUI a0, 512
  ADDI a0, a0, 272
  ADD a0, a0, sp
  SD t4, 0(a0)
  LUI a0, 256
  ADDI a0, a0, 0
  MULW a2, zero, a0
  ADDI t4, sp, 264
  ADD t4, t4, a2
  LUI a0, 512
  ADDI a0, a0, 264
  ADD a0, a0, sp
  SD t4, 0(a0)
  ADD a0, s1, zero
  ADD a1, s0, zero
  ADD a2, s3, zero
  ADD a3, s2, zero
  ADD a4, s5, zero
  ADD a5, s4, zero
  ADD a6, s7, zero
  ADD a7, s6, zero
  ADDI t5, sp, 0
  ADD s0, t5, zero
  SD s9, 0(s0)
  ADDI s0, sp, 8
  SD s8, 0(s0)
  ADDI s0, sp, 16
  SD s11, 0(s0)
  ADDI s0, sp, 24
  SD s10, 0(s0)
  ADDI s0, sp, 32
  LUI t4, 512
  ADDI t4, t4, 304
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 40
  LUI t4, 512
  ADDI t4, t4, 288
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 48
  LUI t4, 512
  ADDI t4, t4, 280
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 56
  LUI t4, 512
  ADDI t4, t4, 296
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 64
  LUI t4, 512
  ADDI t4, t4, 272
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 72
  LUI t4, 512
  ADDI t4, t4, 264
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 80
  ADDI t4, sp, 264
  SD t4, 0(s0)
  LUI t4, 512
  ADDI t4, t4, 304
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 512
  ADDI t3, t3, 288
  ADD t3, t3, sp
  LD t3, 0(t3)
  LUI t4, 512
  ADDI t4, t4, 280
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 512
  ADDI t3, t3, 296
  ADD t3, t3, sp
  LD t3, 0(t3)
  LUI t4, 512
  ADDI t4, t4, 272
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 512
  ADDI t3, t3, 264
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADDI t6, sp, 264
  CALL sum
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADD a0, zero, zero
  LUI ra, 512
  ADDI ra, ra, 312
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 512
  ADDI t5, t5, 320
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t6, 512
  ADDI t6, t6, 328
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t5, 512
  ADDI t5, t5, 336
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t6, 512
  ADDI t6, t6, 344
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t5, 512
  ADDI t5, t5, 352
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t6, 512
  ADDI t6, t6, 360
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t5, 512
  ADDI t5, t5, 368
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t6, 512
  ADDI t6, t6, 376
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t5, 512
  ADDI t5, t5, 384
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t6, 512
  ADDI t6, t6, 392
  ADD t6, t6, sp
  LD s8, 0(t6)
  LUI t5, 512
  ADDI t5, t5, 400
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t6, 512
  ADDI t6, t6, 408
  ADD t6, t6, sp
  LD s11, 0(t6)
  LUI t0, 512
  ADDI t0, t0, 416
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb7:
  LW s0, 232(sp)
  SLTI s1, s0, 2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb8
  JAL zero, bb9
bb8:
  SW zero, 224(sp)
  JAL zero, bb10
bb9:
  LW s0, 240(sp)
  ADDIW s1, s0, 1
  SW s1, 240(sp)
  JAL zero, bb4
bb10:
  LW s0, 224(sp)
  SLTI s1, s0, 2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb11
  JAL zero, bb12
bb11:
  SW zero, 216(sp)
  JAL zero, bb13
bb12:
  LW s0, 232(sp)
  ADDIW s1, s0, 1
  SW s1, 232(sp)
  JAL zero, bb7
bb13:
  LW s0, 216(sp)
  SLTI s1, s0, 2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb14
  JAL zero, bb15
bb14:
  SW zero, 208(sp)
  JAL zero, bb16
bb15:
  LW s0, 224(sp)
  ADDIW s1, s0, 1
  SW s1, 224(sp)
  JAL zero, bb10
bb16:
  LW s0, 208(sp)
  SLTI s1, s0, 2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb17
  JAL zero, bb18
bb17:
  SW zero, 200(sp)
  JAL zero, bb19
bb18:
  LW s0, 216(sp)
  ADDIW s1, s0, 1
  SW s1, 216(sp)
  JAL zero, bb13
bb19:
  LW s0, 200(sp)
  SLTI s1, s0, 2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb20
  JAL zero, bb21
bb20:
  SW zero, 192(sp)
  JAL zero, bb22
bb21:
  LW s0, 208(sp)
  ADDIW s1, s0, 1
  SW s1, 208(sp)
  JAL zero, bb16
bb22:
  LW s0, 192(sp)
  SLTI s1, s0, 2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb23
  JAL zero, bb24
bb23:
  SW zero, 184(sp)
  JAL zero, bb25
bb24:
  LW s0, 200(sp)
  ADDIW s1, s0, 1
  SW s1, 200(sp)
  JAL zero, bb19
bb25:
  LW s0, 184(sp)
  SLTI s1, s0, 2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb26
  JAL zero, bb27
bb26:
  SW zero, 176(sp)
  JAL zero, bb28
bb27:
  LW s0, 192(sp)
  ADDIW s1, s0, 1
  SW s1, 192(sp)
  JAL zero, bb22
bb28:
  LW s0, 176(sp)
  SLTI s1, s0, 2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb29
  JAL zero, bb30
bb29:
  SW zero, 168(sp)
  JAL zero, bb31
bb30:
  LW s0, 184(sp)
  ADDIW s1, s0, 1
  SW s1, 184(sp)
  JAL zero, bb25
bb31:
  LW s0, 168(sp)
  SLTI s1, s0, 2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb32
  JAL zero, bb33
bb32:
  SW zero, 160(sp)
  JAL zero, bb34
bb33:
  LW s0, 176(sp)
  ADDIW s1, s0, 1
  SW s1, 176(sp)
  JAL zero, bb28
bb34:
  LW s0, 160(sp)
  SLTI s1, s0, 2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb35
  JAL zero, bb36
bb35:
  SW zero, 152(sp)
  JAL zero, bb37
bb36:
  LW s0, 168(sp)
  ADDIW s1, s0, 1
  SW s1, 168(sp)
  JAL zero, bb31
bb37:
  LW s0, 152(sp)
  SLTI s1, s0, 2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb38
  JAL zero, bb39
bb38:
  SW zero, 144(sp)
  JAL zero, bb40
bb39:
  LW s0, 160(sp)
  ADDIW s1, s0, 1
  SW s1, 160(sp)
  JAL zero, bb34
bb40:
  LW s0, 144(sp)
  SLTI s1, s0, 2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb41
  JAL zero, bb42
bb41:
  SW zero, 136(sp)
  JAL zero, bb43
bb42:
  LW s0, 152(sp)
  ADDIW s1, s0, 1
  SW s1, 152(sp)
  JAL zero, bb37
bb43:
  LW s0, 136(sp)
  SLTI s1, s0, 2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb44
  JAL zero, bb45
bb44:
  SW zero, 128(sp)
  JAL zero, bb46
bb45:
  LW s0, 144(sp)
  ADDIW s1, s0, 1
  SW s1, 144(sp)
  JAL zero, bb40
bb46:
  LW s0, 128(sp)
  SLTI s1, s0, 2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb47
  JAL zero, bb48
bb47:
  SW zero, 120(sp)
  JAL zero, bb49
bb48:
  LW s0, 136(sp)
  ADDIW s1, s0, 1
  SW s1, 136(sp)
  JAL zero, bb43
bb49:
  LW s0, 120(sp)
  SLTI s1, s0, 2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb50
  JAL zero, bb51
bb50:
  SW zero, 112(sp)
  JAL zero, bb52
bb51:
  LW s0, 128(sp)
  ADDIW s1, s0, 1
  SW s1, 128(sp)
  JAL zero, bb46
bb52:
  LW s0, 112(sp)
  SLTI s1, s0, 2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb53
  JAL zero, bb54
bb53:
  SW zero, 104(sp)
  JAL zero, bb55
bb54:
  LW s0, 120(sp)
  ADDIW s1, s0, 1
  SW s1, 120(sp)
  JAL zero, bb49
bb55:
  LW s0, 104(sp)
  SLTI s1, s0, 2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb56
  JAL zero, bb57
bb56:
  SW zero, 96(sp)
  JAL zero, bb58
bb57:
  LW s0, 112(sp)
  ADDIW s1, s0, 1
  SW s1, 112(sp)
  JAL zero, bb52
bb58:
  LW s0, 96(sp)
  SLTI s1, s0, 2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb59
  JAL zero, bb60
bb59:
  LW s0, 240(sp)
  LUI s1, 256
  ADDI s1, s1, 0
  MULW s2, s0, s1
  ADDI t5, sp, 264
  ADD s0, t5, s2
  LW s1, 232(sp)
  LUI s2, 128
  ADDI s2, s2, 0
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 224(sp)
  LUI s2, 64
  ADDI s2, s2, 0
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 216(sp)
  LUI s2, 32
  ADDI s2, s2, 0
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 208(sp)
  LUI s2, 16
  ADDI s2, s2, 0
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 200(sp)
  LUI s2, 8
  ADDI s2, s2, 0
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 192(sp)
  LUI s2, 4
  ADDI s2, s2, 0
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 184(sp)
  LUI s2, 2
  ADDI s2, s2, 0
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 176(sp)
  LUI s2, 1
  ADDI s2, s2, 0
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 168(sp)
  LUI s2, 1
  ADDI s2, s2, -2048
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 160(sp)
  ADDI s2, zero, 1024
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 152(sp)
  ADDI s2, zero, 512
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 144(sp)
  ADDI s2, zero, 256
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 136(sp)
  ADDI s2, zero, 128
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 128(sp)
  ADDI s2, zero, 64
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 120(sp)
  ADDI s2, zero, 32
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 112(sp)
  ADDI s2, zero, 16
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 104(sp)
  ADDI s2, zero, 8
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 96(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 248(sp)
  SW s1, 0(s0)
  LW s0, 248(sp)
  ADDIW s1, s0, 1
  SW s1, 248(sp)
  LW s0, 96(sp)
  ADDIW s1, s0, 1
  SW s1, 96(sp)
  JAL zero, bb58
bb60:
  LW s0, 104(sp)
  ADDIW s1, s0, 1
  SW s1, 104(sp)
  JAL zero, bb55
sum:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s11, 8(sp)
  SD s10, 16(sp)
  SD s9, 24(sp)
  SD s8, 32(sp)
  SD s7, 40(sp)
  SD s6, 48(sp)
  SD s0, 56(sp)
  SD s5, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  ADD s6, a6, zero
  ADD s7, a7, zero
  ADDI t5, sp, 112
  ADD s8, t5, zero
  LD s9, 0(s8)
  ADDI s8, sp, 120
  LD s10, 0(s8)
  ADDI s8, sp, 128
  LD s11, 0(s8)
  ADDI s8, sp, 136
  LD ra, 0(s8)
  ADDI s8, sp, 144
  LD t0, 0(s8)
  ADDI s8, sp, 152
  LD t1, 0(s8)
  ADDI s8, sp, 160
  LD t2, 0(s8)
  ADDI s8, sp, 168
  LD a1, 0(s8)
  ADDI s8, sp, 176
  LD a2, 0(s8)
  ADDI s8, sp, 184
  LD a3, 0(s8)
  ADDI s8, sp, 192
  LD a4, 0(s8)
  ADDI s8, zero, 4
  MUL a5, zero, s8
  ADD s8, s0, a5
  LW s0, 0(s8)
  ADDI s8, zero, 8
  ADDI a5, zero, 1
  MULW a6, s8, a5
  ADD s8, s1, a6
  ADDI s1, zero, 4
  MUL a5, zero, s1
  ADD s1, s8, a5
  LW s8, 0(s1)
  ADDW s1, s0, s8
  ADDI s0, zero, 16
  MUL s8, zero, s0
  ADD s0, s2, s8
  ADDI s2, zero, 8
  MUL s8, zero, s2
  ADD s2, s0, s8
  ADDI s0, zero, 4
  ADDI s8, zero, 1
  MULW a5, s0, s8
  ADD s0, s2, a5
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 32
  ADDI s2, zero, 1
  MULW s8, s1, s2
  ADD s1, s3, s8
  ADDI s2, zero, 16
  MUL s3, zero, s2
  ADD s2, s1, s3
  ADDI s1, zero, 8
  ADDI s3, zero, 1
  MULW s8, s1, s3
  ADD s1, s2, s8
  ADDI s2, zero, 4
  MUL s3, zero, s2
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDW s2, s0, s1
  ADDI s0, zero, 64
  MUL s1, zero, s0
  ADD s0, s4, s1
  ADDI s1, zero, 32
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s0, zero, 16
  ADDI s3, zero, 1
  MULW s4, s0, s3
  ADD s0, s1, s4
  ADDI s1, zero, 8
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s0, s4
  ADDI s0, zero, 4
  MUL s3, zero, s0
  ADD s0, s1, s3
  LW s1, 0(s0)
  ADDW s0, s2, s1
  ADDI s1, zero, 128
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADD s1, s5, s3
  ADDI s2, zero, 64
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADD s2, s1, s4
  ADDI s1, zero, 32
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s2, s4
  ADDI s2, zero, 16
  MUL s3, zero, s2
  ADD s2, s1, s3
  ADDI s1, zero, 8
  MUL s3, zero, s1
  ADD s1, s2, s3
  ADDI s2, zero, 4
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADD s2, s1, s4
  LW s1, 0(s2)
  ADDW s2, s0, s1
  ADDI s0, zero, 256
  MUL s1, zero, s0
  ADD s0, s6, s1
  ADDI s1, zero, 128
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s0, zero, 64
  MUL s3, zero, s0
  ADD s0, s1, s3
  ADDI s1, zero, 32
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s0, s4
  ADDI s0, zero, 16
  ADDI s3, zero, 1
  MULW s4, s0, s3
  ADD s0, s1, s4
  ADDI s1, zero, 8
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s0, s4
  ADDI s0, zero, 4
  MUL s3, zero, s0
  ADD s0, s1, s3
  LW s1, 0(s0)
  ADDW s0, s2, s1
  ADDI s1, zero, 512
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADD s1, s7, s3
  ADDI s2, zero, 256
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADD s2, s1, s4
  ADDI s1, zero, 128
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s2, s4
  ADDI s2, zero, 64
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADD s2, s1, s4
  ADDI s1, zero, 32
  MUL s3, zero, s1
  ADD s1, s2, s3
  ADDI s2, zero, 16
  MUL s3, zero, s2
  ADD s2, s1, s3
  ADDI s1, zero, 8
  MUL s3, zero, s1
  ADD s1, s2, s3
  ADDI s2, zero, 4
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADD s2, s1, s4
  LW s1, 0(s2)
  ADDW s2, s0, s1
  ADDI s0, zero, 1024
  MUL s1, zero, s0
  ADD s0, s9, s1
  ADDI s1, zero, 512
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s0, zero, 256
  MUL s3, zero, s0
  ADD s0, s1, s3
  ADDI s1, zero, 128
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s0, s4
  ADDI s0, zero, 64
  ADDI s3, zero, 1
  MULW s4, s0, s3
  ADD s0, s1, s4
  ADDI s1, zero, 32
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s0, s4
  ADDI s0, zero, 16
  MUL s3, zero, s0
  ADD s0, s1, s3
  ADDI s1, zero, 8
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s0, zero, 4
  MUL s3, zero, s0
  ADD s0, s1, s3
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LUI s1, 1
  ADDI s1, s1, -2048
  MUL s2, zero, s1
  ADD s1, s10, s2
  ADDI s2, zero, 1024
  MUL s3, zero, s2
  ADD s2, s1, s3
  ADDI s1, zero, 512
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s2, s4
  ADDI s2, zero, 256
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADD s2, s1, s4
  ADDI s1, zero, 128
  MUL s3, zero, s1
  ADD s1, s2, s3
  ADDI s2, zero, 64
  MUL s3, zero, s2
  ADD s2, s1, s3
  ADDI s1, zero, 32
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s2, s4
  ADDI s2, zero, 16
  MUL s3, zero, s2
  ADD s2, s1, s3
  ADDI s1, zero, 8
  MUL s3, zero, s1
  ADD s1, s2, s3
  ADDI s2, zero, 4
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADD s2, s1, s4
  LW s1, 0(s2)
  ADDW s2, s0, s1
  LUI s0, 1
  ADDI s0, s0, 0
  MUL s1, zero, s0
  ADD s0, s11, s1
  LUI s1, 1
  ADDI s1, s1, -2048
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s0, zero, 1024
  ADDI s3, zero, 1
  MULW s4, s0, s3
  ADD s0, s1, s4
  ADDI s1, zero, 512
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s0, s4
  ADDI s0, zero, 256
  ADDI s3, zero, 1
  MULW s4, s0, s3
  ADD s0, s1, s4
  ADDI s1, zero, 128
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s0, s4
  ADDI s0, zero, 64
  ADDI s3, zero, 1
  MULW s4, s0, s3
  ADD s0, s1, s4
  ADDI s1, zero, 32
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s0, zero, 16
  MUL s3, zero, s0
  ADD s0, s1, s3
  ADDI s1, zero, 8
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s0, s4
  ADDI s0, zero, 4
  ADDI s3, zero, 1
  MULW s4, s0, s3
  ADD s0, s1, s4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LUI s1, 2
  ADDI s1, s1, 0
  MUL s2, zero, s1
  ADD s1, ra, s2
  LUI s2, 1
  ADDI s2, s2, 0
  MUL s3, zero, s2
  ADD s2, s1, s3
  LUI s1, 1
  ADDI s1, s1, -2048
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s2, s4
  ADDI s2, zero, 1024
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADD s2, s1, s4
  ADDI s1, zero, 512
  MUL s3, zero, s1
  ADD s1, s2, s3
  ADDI s2, zero, 256
  MUL s3, zero, s2
  ADD s2, s1, s3
  ADDI s1, zero, 128
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s2, s4
  ADDI s2, zero, 64
  MUL s3, zero, s2
  ADD s2, s1, s3
  ADDI s1, zero, 32
  MUL s3, zero, s1
  ADD s1, s2, s3
  ADDI s2, zero, 16
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADD s2, s1, s4
  ADDI s1, zero, 8
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s2, s4
  ADDI s2, zero, 4
  MUL s3, zero, s2
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDW s2, s0, s1
  LUI s0, 4
  ADDI s0, s0, 0
  ADDI s1, zero, 1
  MULW s3, s0, s1
  ADD s0, t0, s3
  LUI s1, 2
  ADDI s1, s1, 0
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s0, s4
  LUI s0, 1
  ADDI s0, s0, 0
  MUL s3, zero, s0
  ADD s0, s1, s3
  LUI s1, 1
  ADDI s1, s1, -2048
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s0, zero, 1024
  ADDI s3, zero, 1
  MULW s4, s0, s3
  ADD s0, s1, s4
  ADDI s1, zero, 512
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s0, s4
  ADDI s0, zero, 256
  ADDI s3, zero, 1
  MULW s4, s0, s3
  ADD s0, s1, s4
  ADDI s1, zero, 128
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s0, zero, 64
  MUL s3, zero, s0
  ADD s0, s1, s3
  ADDI s1, zero, 32
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s0, s4
  ADDI s0, zero, 16
  MUL s3, zero, s0
  ADD s0, s1, s3
  ADDI s1, zero, 8
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s0, zero, 4
  MUL s3, zero, s0
  ADD s0, s1, s3
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LUI s1, 8
  ADDI s1, s1, 0
  MUL s2, zero, s1
  ADD s1, t1, s2
  LUI s2, 4
  ADDI s2, s2, 0
  MUL s3, zero, s2
  ADD s2, s1, s3
  LUI s1, 2
  ADDI s1, s1, 0
  MUL s3, zero, s1
  ADD s1, s2, s3
  LUI s2, 1
  ADDI s2, s2, 0
  MUL s3, zero, s2
  ADD s2, s1, s3
  LUI s1, 1
  ADDI s1, s1, -2048
  MUL s3, zero, s1
  ADD s1, s2, s3
  ADDI s2, zero, 1024
  MUL s3, zero, s2
  ADD s2, s1, s3
  ADDI s1, zero, 512
  MUL s3, zero, s1
  ADD s1, s2, s3
  ADDI s2, zero, 256
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADD s2, s1, s4
  ADDI s1, zero, 128
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s2, s4
  ADDI s2, zero, 64
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADD s2, s1, s4
  ADDI s1, zero, 32
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s2, s4
  ADDI s2, zero, 16
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADD s2, s1, s4
  ADDI s1, zero, 8
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s2, s4
  ADDI s2, zero, 4
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADD s2, s1, s4
  LW s1, 0(s2)
  ADDW s2, s0, s1
  LUI s0, 16
  ADDI s0, s0, 0
  MUL s1, zero, s0
  ADD s0, t2, s1
  LUI s1, 8
  ADDI s1, s1, 0
  MUL s3, zero, s1
  ADD s1, s0, s3
  LUI s0, 4
  ADDI s0, s0, 0
  MUL s3, zero, s0
  ADD s0, s1, s3
  LUI s1, 2
  ADDI s1, s1, 0
  MUL s3, zero, s1
  ADD s1, s0, s3
  LUI s0, 1
  ADDI s0, s0, 0
  MUL s3, zero, s0
  ADD s0, s1, s3
  LUI s1, 1
  ADDI s1, s1, -2048
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s0, zero, 1024
  MUL s3, zero, s0
  ADD s0, s1, s3
  ADDI s1, zero, 512
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s0, zero, 256
  MUL s3, zero, s0
  ADD s0, s1, s3
  ADDI s1, zero, 128
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s0, zero, 64
  ADDI s3, zero, 1
  MULW s4, s0, s3
  ADD s0, s1, s4
  ADDI s1, zero, 32
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s0, s4
  ADDI s0, zero, 16
  ADDI s3, zero, 1
  MULW s4, s0, s3
  ADD s0, s1, s4
  ADDI s1, zero, 8
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s0, s4
  ADDI s0, zero, 4
  ADDI s3, zero, 1
  MULW s4, s0, s3
  ADD s0, s1, s4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LUI s1, 32
  ADDI s1, s1, 0
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADD s1, a1, s3
  LUI s2, 16
  ADDI s2, s2, 0
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADD s2, s1, s4
  LUI s1, 8
  ADDI s1, s1, 0
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s2, s4
  LUI s2, 4
  ADDI s2, s2, 0
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADD s2, s1, s4
  LUI s1, 2
  ADDI s1, s1, 0
  MUL s3, zero, s1
  ADD s1, s2, s3
  LUI s2, 1
  ADDI s2, s2, 0
  MUL s3, zero, s2
  ADD s2, s1, s3
  LUI s1, 1
  ADDI s1, s1, -2048
  MUL s3, zero, s1
  ADD s1, s2, s3
  ADDI s2, zero, 1024
  MUL s3, zero, s2
  ADD s2, s1, s3
  ADDI s1, zero, 512
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s2, s4
  ADDI s2, zero, 256
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADD s2, s1, s4
  ADDI s1, zero, 128
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s2, s4
  ADDI s2, zero, 64
  MUL s3, zero, s2
  ADD s2, s1, s3
  ADDI s1, zero, 32
  MUL s3, zero, s1
  ADD s1, s2, s3
  ADDI s2, zero, 16
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADD s2, s1, s4
  ADDI s1, zero, 8
  MUL s3, zero, s1
  ADD s1, s2, s3
  ADDI s2, zero, 4
  MUL s3, zero, s2
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDW s2, s0, s1
  LUI s0, 64
  ADDI s0, s0, 0
  MUL s1, zero, s0
  ADD s0, a2, s1
  LUI s1, 32
  ADDI s1, s1, 0
  MUL s3, zero, s1
  ADD s1, s0, s3
  LUI s0, 16
  ADDI s0, s0, 0
  MUL s3, zero, s0
  ADD s0, s1, s3
  LUI s1, 8
  ADDI s1, s1, 0
  MUL s3, zero, s1
  ADD s1, s0, s3
  LUI s0, 4
  ADDI s0, s0, 0
  MUL s3, zero, s0
  ADD s0, s1, s3
  LUI s1, 2
  ADDI s1, s1, 0
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s0, s4
  LUI s0, 1
  ADDI s0, s0, 0
  ADDI s3, zero, 1
  MULW s4, s0, s3
  ADD s0, s1, s4
  LUI s1, 1
  ADDI s1, s1, -2048
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s0, s4
  ADDI s0, zero, 1024
  ADDI s3, zero, 1
  MULW s4, s0, s3
  ADD s0, s1, s4
  ADDI s1, zero, 512
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s0, s4
  ADDI s0, zero, 256
  MUL s3, zero, s0
  ADD s0, s1, s3
  ADDI s1, zero, 128
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s0, zero, 64
  ADDI s3, zero, 1
  MULW s4, s0, s3
  ADD s0, s1, s4
  ADDI s1, zero, 32
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s0, zero, 16
  ADDI s3, zero, 1
  MULW s4, s0, s3
  ADD s0, s1, s4
  ADDI s1, zero, 8
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s0, zero, 4
  ADDI s3, zero, 1
  MULW s4, s0, s3
  ADD s0, s1, s4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LUI s1, 128
  ADDI s1, s1, 0
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADD s1, a3, s3
  LUI s2, 64
  ADDI s2, s2, 0
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADD s2, s1, s4
  LUI s1, 32
  ADDI s1, s1, 0
  MUL s3, zero, s1
  ADD s1, s2, s3
  LUI s2, 16
  ADDI s2, s2, 0
  MUL s3, zero, s2
  ADD s2, s1, s3
  LUI s1, 8
  ADDI s1, s1, 0
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s2, s4
  LUI s2, 4
  ADDI s2, s2, 0
  MUL s3, zero, s2
  ADD s2, s1, s3
  LUI s1, 2
  ADDI s1, s1, 0
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s2, s4
  LUI s2, 1
  ADDI s2, s2, 0
  MUL s3, zero, s2
  ADD s2, s1, s3
  LUI s1, 1
  ADDI s1, s1, -2048
  MUL s3, zero, s1
  ADD s1, s2, s3
  ADDI s2, zero, 1024
  MUL s3, zero, s2
  ADD s2, s1, s3
  ADDI s1, zero, 512
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s2, s4
  ADDI s2, zero, 256
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADD s2, s1, s4
  ADDI s1, zero, 128
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s2, s4
  ADDI s2, zero, 64
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADD s2, s1, s4
  ADDI s1, zero, 32
  MUL s3, zero, s1
  ADD s1, s2, s3
  ADDI s2, zero, 16
  MUL s3, zero, s2
  ADD s2, s1, s3
  ADDI s1, zero, 8
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s2, s4
  ADDI s2, zero, 4
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADD s2, s1, s4
  LW s1, 0(s2)
  ADDW s2, s0, s1
  LUI s0, 256
  ADDI s0, s0, 0
  MUL s1, zero, s0
  ADD s0, a4, s1
  LUI s1, 128
  ADDI s1, s1, 0
  MUL s3, zero, s1
  ADD s1, s0, s3
  LUI s0, 64
  ADDI s0, s0, 0
  ADDI s3, zero, 1
  MULW s4, s0, s3
  ADD s0, s1, s4
  LUI s1, 32
  ADDI s1, s1, 0
  MUL s3, zero, s1
  ADD s1, s0, s3
  LUI s0, 16
  ADDI s0, s0, 0
  MUL s3, zero, s0
  ADD s0, s1, s3
  LUI s1, 8
  ADDI s1, s1, 0
  MUL s3, zero, s1
  ADD s1, s0, s3
  LUI s0, 4
  ADDI s0, s0, 0
  ADDI s3, zero, 1
  MULW s4, s0, s3
  ADD s0, s1, s4
  LUI s1, 2
  ADDI s1, s1, 0
  MUL s3, zero, s1
  ADD s1, s0, s3
  LUI s0, 1
  ADDI s0, s0, 0
  MUL s3, zero, s0
  ADD s0, s1, s3
  LUI s1, 1
  ADDI s1, s1, -2048
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s0, s4
  ADDI s0, zero, 1024
  ADDI s3, zero, 1
  MULW s4, s0, s3
  ADD s0, s1, s4
  ADDI s1, zero, 512
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s0, zero, 256
  MUL s3, zero, s0
  ADD s0, s1, s3
  ADDI s1, zero, 128
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s0, zero, 64
  MUL s3, zero, s0
  ADD s0, s1, s3
  ADDI s1, zero, 32
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s0, zero, 16
  MUL s3, zero, s0
  ADD s0, s1, s3
  ADDI s1, zero, 8
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s0, zero, 4
  MUL s3, zero, s0
  ADD s0, s1, s3
  LW s1, 0(s0)
  ADDW s0, s2, s1
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s11, 8(sp)
  LD s10, 16(sp)
  LD s9, 24(sp)
  LD s8, 32(sp)
  LD s7, 40(sp)
  LD s6, 48(sp)
  LD s0, 56(sp)
  LD s5, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
