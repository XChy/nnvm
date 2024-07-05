.global main
.global sum
.section .bss
.section .data
.section .text
main:
  LUI t0, 1048064
  ADDI t0, t0, -1744
  ADD sp, sp, t0
  LUI t5, 512
  ADDI t5, t5, 1640
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t6, 512
  ADDI t6, t6, 1648
  ADD t6, t6, sp
  SD s11, 0(t6)
  LUI t5, 512
  ADDI t5, t5, 1656
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t6, 512
  ADDI t6, t6, 1664
  ADD t6, t6, sp
  SD s9, 0(t6)
  LUI t5, 512
  ADDI t5, t5, 1672
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t6, 512
  ADDI t6, t6, 1680
  ADD t6, t6, sp
  SD s5, 0(t6)
  LUI t5, 512
  ADDI t5, t5, 1688
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t6, 512
  ADDI t6, t6, 1696
  ADD t6, t6, sp
  SD s6, 0(t6)
  LUI t5, 512
  ADDI t5, t5, 1704
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t6, 512
  ADDI t6, t6, 1712
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t5, 512
  ADDI t5, t5, 1720
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t6, 512
  ADDI t6, t6, 1728
  ADD t6, t6, sp
  SD s7, 0(t6)
  LUI t5, 512
  ADDI t5, t5, 1736
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI s0, 128
  ADDI s0, s0, 0
  ADD s1, zero, s0
  JAL zero, bb1
bb1:
  XOR s0, s1, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADDW s0, zero, s3
  ADDI t6, sp, 96
  ADD s3, t6, s0
  SW zero, 0(s3)
  ADD s1, s2, zero
  JAL zero, bb1
bb3:
  ADD t4, zero, zero
  LUI t5, 512
  ADDI t5, t5, 384
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 512
  ADDI t6, t6, 368
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 512
  ADDI t5, t5, 352
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 512
  ADDI t6, t6, 336
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 512
  ADDI t5, t5, 320
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 512
  ADDI t6, t6, 304
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 512
  ADDI t5, t5, 288
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 512
  ADDI t6, t6, 272
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 512
  ADDI t5, t5, 256
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 512
  ADDI t6, t6, 240
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 512
  ADDI t5, t5, 224
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 512
  ADDI t6, t6, 208
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 512
  ADDI t5, t5, 144
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 512
  ADDI t6, t6, 136
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 512
  ADDI t5, t5, 128
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 512
  ADDI t6, t6, 120
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 512
  ADDI t5, t5, 112
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 512
  ADDI t6, t6, 96
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 512
  ADDI t5, t5, 104
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb4
bb4:
  LUI t4, 512
  ADDI t4, t4, 96
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI a3, t4, 2
  XOR a4, a3, zero
  SLTU a3, zero, a4
  BNE a3, zero, bb5
  JAL zero, bb6
bb5:
  LUI t3, 512
  ADDI t3, t3, 384
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 376
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 368
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 360
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 352
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 344
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 336
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 328
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 320
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 312
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 304
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 296
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 288
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 280
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 272
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 264
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 256
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 248
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 240
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 232
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 224
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 216
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 208
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 192
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 144
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 152
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 136
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 160
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 128
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 168
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 120
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 176
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 112
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 184
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t3, 512
  ADDI t3, t3, 392
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 104
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 200
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb7
bb6:
  LUI s0, 256
  ADDI s0, s0, 0
  MULW s1, zero, s0
  ADDI t6, sp, 96
  ADD s0, t6, s1
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
  ADDI t5, sp, 96
  ADD s0, t5, s2
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
  ADDI t6, sp, 96
  ADD s2, t6, s3
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
  ADDI t5, sp, 96
  ADD s2, t5, s4
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
  ADDI t6, sp, 96
  ADD s4, t6, s5
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
  ADDI t5, sp, 96
  ADD s4, t5, s6
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
  ADDI t6, sp, 96
  ADD s6, t6, s7
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
  ADDI t5, sp, 96
  ADD s6, t5, s8
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
  ADDI t6, sp, 96
  ADD s8, t6, s9
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
  ADDI t5, sp, 96
  ADD s8, t5, s10
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
  ADDI t6, sp, 96
  ADD s10, t6, s11
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
  ADDI t5, sp, 96
  ADD s10, t5, ra
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
  ADDI ra, sp, 96
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
  ADDI ra, ra, 1632
  ADD ra, ra, sp
  SD t4, 0(ra)
  LUI ra, 256
  ADDI ra, ra, 0
  MULW t1, zero, ra
  ADDI ra, sp, 96
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
  ADDI t1, t1, 1624
  ADD t1, t1, sp
  SD t4, 0(t1)
  LUI t1, 256
  ADDI t1, t1, 0
  MULW t2, zero, t1
  ADDI t1, sp, 96
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
  ADDI t1, t1, 1608
  ADD t1, t1, sp
  SD t4, 0(t1)
  LUI t1, 256
  ADDI t1, t1, 0
  MULW a0, zero, t1
  ADDI t1, sp, 96
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
  ADDI a0, a0, 1616
  ADD a0, a0, sp
  SD t4, 0(a0)
  LUI a0, 256
  ADDI a0, a0, 0
  MULW a1, zero, a0
  ADDI a0, sp, 96
  ADD a0, a0, a1
  LUI a1, 128
  ADDI a1, a1, 0
  MULW a2, zero, a1
  ADD t4, a0, a2
  LUI a0, 512
  ADDI a0, a0, 1600
  ADD a0, a0, sp
  SD t4, 0(a0)
  LUI a0, 256
  ADDI a0, a0, 0
  MULW a2, zero, a0
  ADDI t4, sp, 96
  ADD t4, t4, a2
  LUI a0, 512
  ADDI a0, a0, 1592
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
  ADDI t6, sp, 0
  ADD s0, t6, zero
  SD s9, 0(s0)
  ADDI s0, sp, 8
  SD s8, 0(s0)
  ADDI s0, sp, 16
  SD s11, 0(s0)
  ADDI s0, sp, 24
  SD s10, 0(s0)
  ADDI s0, sp, 32
  LUI t4, 512
  ADDI t4, t4, 1632
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 40
  LUI t4, 512
  ADDI t4, t4, 1624
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 48
  LUI t4, 512
  ADDI t4, t4, 1608
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 56
  LUI t4, 512
  ADDI t4, t4, 1616
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 64
  LUI t4, 512
  ADDI t4, t4, 1600
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 72
  LUI t4, 512
  ADDI t4, t4, 1592
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 80
  ADDI t4, sp, 96
  SD t4, 0(s0)
  LUI t4, 512
  ADDI t4, t4, 1632
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 512
  ADDI t3, t3, 1624
  ADD t3, t3, sp
  LD t3, 0(t3)
  LUI t4, 512
  ADDI t4, t4, 1608
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 512
  ADDI t3, t3, 1616
  ADD t3, t3, sp
  LD t3, 0(t3)
  LUI t4, 512
  ADDI t4, t4, 1600
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 512
  ADDI t3, t3, 1592
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADDI t5, sp, 96
  CALL sum
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADD a0, zero, zero
  LUI ra, 512
  ADDI ra, ra, 1640
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 512
  ADDI t6, t6, 1648
  ADD t6, t6, sp
  LD s11, 0(t6)
  LUI t5, 512
  ADDI t5, t5, 1656
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t6, 512
  ADDI t6, t6, 1664
  ADD t6, t6, sp
  LD s9, 0(t6)
  LUI t5, 512
  ADDI t5, t5, 1672
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t6, 512
  ADDI t6, t6, 1680
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t5, 512
  ADDI t5, t5, 1688
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 512
  ADDI t6, t6, 1696
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t5, 512
  ADDI t5, t5, 1704
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t6, 512
  ADDI t6, t6, 1712
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t5, 512
  ADDI t5, t5, 1720
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t6, 512
  ADDI t6, t6, 1728
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t5, 512
  ADDI t5, t5, 1736
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t0, 512
  ADDI t0, t0, 1744
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb7:
  LUI t4, 512
  ADDI t4, t4, 392
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s11, t4, 2
  XOR t0, s11, zero
  SLTU s11, zero, t0
  BNE s11, zero, bb8
  JAL zero, bb9
bb8:
  LUI t3, 512
  ADDI t3, t3, 376
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 536
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 360
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 528
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 344
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 520
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 328
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 512
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 312
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 504
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 296
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 496
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 280
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 488
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 264
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 480
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 248
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 472
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 232
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 464
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 216
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 456
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 192
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 448
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t3, 512
  ADDI t3, t3, 440
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 160
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 432
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 168
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 424
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 176
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 416
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 184
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 408
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 200
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 400
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb10
bb9:
  LUI t4, 512
  ADDI t4, t4, 96
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  LUI t3, 512
  ADDI t3, t3, 376
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 384
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 360
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 368
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 344
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 352
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 328
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 336
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 312
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 320
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 296
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 304
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 280
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 288
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 264
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 272
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 248
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 256
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 232
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 240
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 216
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 224
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 192
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 208
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 152
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 144
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 160
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 136
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 168
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 128
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 176
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 120
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 184
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 112
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s0, zero
  LUI t3, 512
  ADDI t3, t3, 96
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 200
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 104
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb4
bb10:
  LUI t4, 512
  ADDI t4, t4, 440
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s2, t4, 2
  XOR a4, s2, zero
  SLTU s2, zero, a4
  BNE s2, zero, bb11
  JAL zero, bb12
bb11:
  LUI t3, 512
  ADDI t3, t3, 536
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 672
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 528
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 664
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 520
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 656
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 512
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 648
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 504
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 640
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 496
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 632
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 488
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 624
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 480
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 616
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 472
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 608
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 464
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 600
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 456
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 592
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 448
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 584
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 432
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 576
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t3, 512
  ADDI t3, t3, 568
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 416
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 560
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 408
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 552
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 400
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 544
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb13
bb12:
  LUI t4, 512
  ADDI t4, t4, 392
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  LUI t3, 512
  ADDI t3, t3, 536
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 376
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 528
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 360
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 520
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 344
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 512
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 328
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 504
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 312
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 496
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 296
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 488
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 280
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 480
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 264
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 472
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 248
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 464
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 232
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 456
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 216
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 448
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 192
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 440
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 152
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 432
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 160
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 424
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 168
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 416
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 176
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 408
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 184
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s0, zero
  LUI t3, 512
  ADDI t3, t3, 392
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 400
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 200
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb7
bb13:
  LUI t4, 512
  ADDI t4, t4, 568
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s8, t4, 2
  XOR t2, s8, zero
  SLTU s8, zero, t2
  BNE s8, zero, bb14
  JAL zero, bb15
bb14:
  LUI t3, 512
  ADDI t3, t3, 672
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 800
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 664
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 792
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 656
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 784
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 648
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 776
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 640
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 768
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 632
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 760
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 624
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 752
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 616
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 744
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 608
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 736
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 600
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 728
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 592
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 720
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 584
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 712
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 576
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 704
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 560
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 696
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t3, 512
  ADDI t3, t3, 688
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 544
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 680
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb16
bb15:
  LUI t4, 512
  ADDI t4, t4, 440
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  LUI t3, 512
  ADDI t3, t3, 672
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 536
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 664
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 528
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 656
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 520
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 648
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 512
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 640
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 504
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 632
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 496
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 624
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 488
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 616
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 480
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 608
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 472
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 600
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 464
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 592
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 456
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 584
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 448
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s0, zero
  LUI t3, 512
  ADDI t3, t3, 440
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 576
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 432
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 568
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 424
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 560
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 416
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 552
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 408
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 544
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 400
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb10
bb16:
  LUI t4, 512
  ADDI t4, t4, 688
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s3, t4, 2
  XOR a5, s3, zero
  SLTU s3, zero, a5
  BNE s3, zero, bb17
  JAL zero, bb18
bb17:
  LUI t3, 512
  ADDI t3, t3, 800
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 920
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 792
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 912
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 784
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 904
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 776
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 896
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 768
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 888
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 760
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 880
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 752
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 872
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 744
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 864
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 736
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 856
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 728
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 848
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 720
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 840
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 712
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 832
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 704
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 824
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t3, 512
  ADDI t3, t3, 816
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 680
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 808
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb19
bb18:
  LUI t4, 512
  ADDI t4, t4, 568
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  LUI t3, 512
  ADDI t3, t3, 800
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 672
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 792
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 664
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 784
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 656
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 776
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 648
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 768
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 640
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 760
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 632
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 752
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 624
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 744
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 616
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 736
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 608
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 728
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 600
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 720
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 592
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 712
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 584
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 704
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 576
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s0, zero
  LUI t3, 512
  ADDI t3, t3, 568
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 696
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 560
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 688
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 552
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 680
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 544
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb13
bb19:
  LUI t4, 512
  ADDI t4, t4, 816
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s7, t4, 2
  XOR a0, s7, zero
  SLTU s7, zero, a0
  BNE s7, zero, bb20
  JAL zero, bb21
bb20:
  LUI t3, 512
  ADDI t3, t3, 920
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1032
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 912
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1024
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 904
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1016
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 896
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1008
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 888
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1000
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 880
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 992
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 872
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 984
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 864
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 976
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t3, 512
  ADDI t3, t3, 968
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 848
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 960
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 840
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 952
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 832
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 944
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 824
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 936
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 808
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 928
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb22
bb21:
  LUI t4, 512
  ADDI t4, t4, 688
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  LUI t3, 512
  ADDI t3, t3, 920
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 800
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 912
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 792
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 904
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 784
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 896
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 776
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 888
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 768
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 880
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 760
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 872
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 752
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 864
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 744
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 856
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 736
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 848
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 728
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 840
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 720
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 832
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 712
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 824
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 704
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 816
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 696
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s0, zero
  LUI t3, 512
  ADDI t3, t3, 688
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 808
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 680
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb16
bb22:
  LUI t4, 512
  ADDI t4, t4, 968
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s4, t4, 2
  XOR a6, s4, zero
  SLTU s4, zero, a6
  BNE s4, zero, bb23
  JAL zero, bb24
bb23:
  ADD t4, zero, zero
  LUI t3, 512
  ADDI t3, t3, 1136
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1024
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1128
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1016
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1120
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1008
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1112
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1000
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1104
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 992
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1096
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 984
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1088
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 976
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1080
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 960
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1072
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 952
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1064
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 944
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1056
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 936
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1048
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 928
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 1040
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb25
bb24:
  LUI t4, 512
  ADDI t4, t4, 816
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  LUI t3, 512
  ADDI t3, t3, 1032
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 920
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1024
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 912
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1016
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 904
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1008
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 896
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1000
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 888
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 992
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 880
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 984
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 872
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 976
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 864
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 968
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 856
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 960
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 848
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 952
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 840
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 944
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 832
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 936
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 824
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s0, zero
  LUI t3, 512
  ADDI t3, t3, 816
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 928
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 808
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb19
bb25:
  LUI t4, 512
  ADDI t4, t4, 1136
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s6, t4, 2
  XOR a2, s6, zero
  SLTU s6, zero, a2
  BNE s6, zero, bb26
  JAL zero, bb27
bb26:
  ADD t4, zero, zero
  LUI t3, 512
  ADDI t3, t3, 1232
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1120
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1224
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1112
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1216
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1104
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1208
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1096
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1200
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1088
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1192
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1080
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1184
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1072
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1176
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1064
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1168
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1056
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1160
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1048
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1152
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1040
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 1144
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb28
bb27:
  LUI t4, 512
  ADDI t4, t4, 968
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  LUI t3, 512
  ADDI t3, t3, 1136
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1032
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1128
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1024
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1120
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1016
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1112
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1008
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1104
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1000
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1096
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 992
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1088
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 984
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1080
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 976
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s0, zero
  LUI t3, 512
  ADDI t3, t3, 968
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1072
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 960
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1064
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 952
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1056
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 944
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1048
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 936
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1040
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 928
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb22
bb28:
  LUI t4, 512
  ADDI t4, t4, 1232
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s5, t4, 2
  XOR a7, s5, zero
  SLTU s5, zero, a7
  BNE s5, zero, bb29
  JAL zero, bb30
bb29:
  ADD t4, zero, zero
  LUI t3, 512
  ADDI t3, t3, 1320
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1216
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1312
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1208
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1304
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1200
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1296
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1192
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1288
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1184
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1280
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1176
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1272
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1168
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1264
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1160
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1256
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1152
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1248
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1144
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 1240
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb31
bb30:
  LUI t4, 512
  ADDI t4, t4, 1136
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  LUI t3, 512
  ADDI t3, t3, 1136
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1232
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1128
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1224
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1120
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1216
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1112
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1208
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1104
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1200
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1096
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1192
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1088
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1184
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1080
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1176
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1072
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1168
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1064
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1160
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1056
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1152
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1048
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1144
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 1040
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb25
bb31:
  LUI t4, 512
  ADDI t4, t4, 1320
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s4, t4, 2
  XOR a1, s4, zero
  SLTU s4, zero, a1
  BNE s4, zero, bb32
  JAL zero, bb33
bb32:
  LUI t3, 512
  ADDI t3, t3, 1312
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1400
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1304
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1392
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1296
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1384
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1288
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1376
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1280
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 1368
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t3, 512
  ADDI t3, t3, 1360
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1264
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1352
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1256
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1344
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1248
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1336
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1240
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 1328
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb34
bb33:
  LUI t4, 512
  ADDI t4, t4, 1232
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  LUI t3, 512
  ADDI t3, t3, 1232
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1320
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1224
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1312
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1216
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1304
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1208
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1296
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1200
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1288
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1192
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1280
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1184
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1272
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1176
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1264
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1168
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1256
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1160
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1248
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1152
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1240
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 1144
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb28
bb34:
  LUI t4, 512
  ADDI t4, t4, 1360
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s8, t4, 2
  XOR a2, s8, zero
  SLTU s8, zero, a2
  BNE s8, zero, bb35
  JAL zero, bb36
bb35:
  LUI t3, 512
  ADDI t3, t3, 1400
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1472
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1392
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1464
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1384
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1456
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1376
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1448
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1368
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1440
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1352
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 1432
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t3, 512
  ADDI t3, t3, 1424
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1336
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1416
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1328
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 1408
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb37
bb36:
  LUI t4, 512
  ADDI t4, t4, 1320
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  LUI t3, 512
  ADDI t3, t3, 1320
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1400
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1312
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1392
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1304
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1384
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1296
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1376
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1288
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1368
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1280
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1360
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1272
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1352
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1264
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1344
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1256
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1336
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1248
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1328
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 1240
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb31
bb37:
  LUI t4, 512
  ADDI t4, t4, 1424
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI ra, t4, 2
  XOR a5, ra, zero
  SLTU ra, zero, a5
  BNE ra, zero, bb38
  JAL zero, bb39
bb38:
  ADD t4, zero, zero
  LUI t3, 512
  ADDI t3, t3, 1536
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1464
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1528
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1456
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1520
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1448
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1512
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1440
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1504
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1432
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1496
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1416
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1488
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1408
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 1480
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb40
bb39:
  LUI t4, 512
  ADDI t4, t4, 1360
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  LUI t3, 512
  ADDI t3, t3, 1472
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1400
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1464
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1392
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1456
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1384
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1448
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1376
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1440
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 1368
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s0, zero
  LUI t3, 512
  ADDI t3, t3, 1360
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1432
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1352
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1424
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1344
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1416
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1336
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1408
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 1328
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb34
bb40:
  LUI t4, 512
  ADDI t4, t4, 1536
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s10, t4, 2
  XOR t0, s10, zero
  SLTU s10, zero, t0
  BNE s10, zero, bb41
  JAL zero, bb42
bb41:
  ADD s10, zero, zero
  LUI t3, 512
  ADDI t3, t3, 1520
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1584
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1512
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1576
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1504
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1568
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1496
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1560
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1488
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1552
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1480
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 1544
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb43
bb42:
  LUI t4, 512
  ADDI t4, t4, 1424
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  LUI t3, 512
  ADDI t3, t3, 1536
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1472
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1528
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1464
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1520
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1456
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1512
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1448
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1504
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1440
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1496
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 1432
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s0, zero
  LUI t3, 512
  ADDI t3, t3, 1424
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1488
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1416
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1480
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 1408
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb37
bb43:
  SLTI s0, s10, 2
  XOR a3, s0, zero
  SLTU s0, zero, a3
  BNE s0, zero, bb44
  JAL zero, bb45
bb44:
  ADD s0, zero, zero
  LUI t4, 512
  ADDI t4, t4, 1576
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a3, t4, zero
  LUI t4, 512
  ADDI t4, t4, 1568
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  LUI t4, 512
  ADDI t4, t4, 1560
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a4, t4, zero
  LUI t4, 512
  ADDI t4, t4, 1552
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  LUI t4, 512
  ADDI t4, t4, 1544
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a6, t4, zero
  JAL zero, bb46
bb45:
  LUI t4, 512
  ADDI t4, t4, 1536
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  LUI t6, 512
  ADDI t6, t6, 1536
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s10, zero
  LUI t3, 512
  ADDI t3, t3, 1528
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1584
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1520
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1576
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1512
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1568
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1504
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1560
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1496
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1552
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1488
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1544
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 1480
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb40
bb46:
  SLTI s6, s0, 2
  XOR a2, s6, zero
  SLTU s6, zero, a2
  BNE s6, zero, bb47
  JAL zero, bb48
bb47:
  ADD s6, zero, zero
  ADD a2, s1, zero
  ADD s8, a4, zero
  ADD t1, s2, zero
  ADD s9, a6, zero
  JAL zero, bb49
bb48:
  ADDIW s3, s10, 1
  ADD s10, s3, zero
  ADD t4, s0, zero
  LUI t6, 512
  ADDI t6, t6, 1584
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, a3, zero
  LUI t5, 512
  ADDI t5, t5, 1576
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s1, zero
  LUI t6, 512
  ADDI t6, t6, 1568
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, a4, zero
  LUI t5, 512
  ADDI t5, t5, 1560
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s2, zero
  LUI t6, 512
  ADDI t6, t6, 1552
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, a6, zero
  LUI t5, 512
  ADDI t5, t5, 1544
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb43
bb49:
  SLTI t2, s6, 2
  XOR s5, t2, zero
  SLTU t2, zero, s5
  BNE t2, zero, bb50
  JAL zero, bb51
bb50:
  ADD s5, zero, zero
  ADD t2, s8, zero
  ADD a7, t1, zero
  ADD s3, s9, zero
  JAL zero, bb52
bb51:
  ADDIW s3, s0, 1
  ADD s0, s3, zero
  ADD a3, s6, zero
  ADD s1, a2, zero
  ADD a4, s8, zero
  ADD s2, t1, zero
  ADD a6, s9, zero
  JAL zero, bb46
bb52:
  SLTI a5, s5, 2
  XOR ra, a5, zero
  SLTU a5, zero, ra
  BNE a5, zero, bb53
  JAL zero, bb54
bb53:
  ADD ra, zero, zero
  ADD a5, a7, zero
  ADD s4, s3, zero
  JAL zero, bb55
bb54:
  ADDIW s4, s6, 1
  ADD s6, s4, zero
  ADD a2, s5, zero
  ADD s8, t2, zero
  ADD t1, a7, zero
  ADD s9, s3, zero
  JAL zero, bb49
bb55:
  SLTI a1, ra, 2
  XOR s7, a1, zero
  SLTU a1, zero, s7
  BNE a1, zero, bb56
  JAL zero, bb57
bb56:
  ADD s7, zero, zero
  ADD a1, s4, zero
  JAL zero, bb58
bb57:
  ADDIW s7, s5, 1
  ADD s5, s7, zero
  ADD t2, ra, zero
  ADD a7, a5, zero
  ADD s3, s4, zero
  JAL zero, bb52
bb58:
  SLTI a0, s7, 2
  XOR s11, a0, zero
  SLTU a0, zero, s11
  BNE a0, zero, bb59
  JAL zero, bb60
bb59:
  LUI s11, 256
  ADDI s11, s11, 0
  LUI t4, 512
  ADDI t4, t4, 96
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a0, t4, s11
  ADDI t6, sp, 96
  ADD s11, t6, a0
  LUI a0, 128
  ADDI a0, a0, 0
  LUI t4, 512
  ADDI t4, t4, 392
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW t0, t4, a0
  ADD a0, s11, t0
  LUI s11, 64
  ADDI s11, s11, 0
  LUI t4, 512
  ADDI t4, t4, 440
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW t0, t4, s11
  ADD s11, a0, t0
  LUI t0, 32
  ADDI t0, t0, 0
  LUI t4, 512
  ADDI t4, t4, 568
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a0, t4, t0
  ADD t0, s11, a0
  LUI s11, 16
  ADDI s11, s11, 0
  LUI t4, 512
  ADDI t4, t4, 688
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a0, t4, s11
  ADD s11, t0, a0
  LUI t0, 8
  ADDI t0, t0, 0
  LUI t4, 512
  ADDI t4, t4, 816
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a0, t4, t0
  ADD t0, s11, a0
  LUI s11, 4
  ADDI s11, s11, 0
  LUI t4, 512
  ADDI t4, t4, 968
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a0, t4, s11
  ADD s11, t0, a0
  LUI t0, 2
  ADDI t0, t0, 0
  LUI t4, 512
  ADDI t4, t4, 1136
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a0, t4, t0
  ADD t0, s11, a0
  LUI s11, 1
  ADDI s11, s11, 0
  LUI t4, 512
  ADDI t4, t4, 1232
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a0, t4, s11
  ADD s11, t0, a0
  LUI t0, 1
  ADDI t0, t0, -2048
  LUI t4, 512
  ADDI t4, t4, 1320
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a0, t4, t0
  ADD t0, s11, a0
  ADDI s11, zero, 1024
  LUI t4, 512
  ADDI t4, t4, 1360
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a0, t4, s11
  ADD s11, t0, a0
  ADDI t0, zero, 512
  LUI t4, 512
  ADDI t4, t4, 1424
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a0, t4, t0
  ADD t0, s11, a0
  ADDI s11, zero, 256
  LUI t4, 512
  ADDI t4, t4, 1536
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a0, t4, s11
  ADD s11, t0, a0
  ADDI t0, zero, 128
  MULW a0, s10, t0
  ADD t0, s11, a0
  ADDI s11, zero, 64
  MULW a0, s0, s11
  ADD s11, t0, a0
  ADDI t0, zero, 32
  MULW a0, s6, t0
  ADD t0, s11, a0
  ADDI s11, zero, 16
  MULW a0, s5, s11
  ADD s11, t0, a0
  ADDI t0, zero, 8
  MULW a0, ra, t0
  ADD t0, s11, a0
  ADDI s11, zero, 4
  MULW a0, s7, s11
  ADD s11, t0, a0
  SW a1, 0(s11)
  ADDIW s11, a1, 1
  ADDIW t0, s7, 1
  ADD s7, t0, zero
  ADD a1, s11, zero
  JAL zero, bb58
bb60:
  ADDIW s11, ra, 1
  ADD ra, s11, zero
  ADD a5, s7, zero
  ADD s4, a1, zero
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
