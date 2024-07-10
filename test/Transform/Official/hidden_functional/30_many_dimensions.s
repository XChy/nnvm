.global main
.global sum
.section .bss
.section .data
.section .text
main:
  LUI t0, 1048064
  ADDIW t0, t0, -640
  ADD sp, sp, t0
  LUI t5, 512
  ADDIW t5, t5, 536
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t5, 512
  ADDIW t5, t5, 544
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 512
  ADDIW t5, t5, 552
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t5, 512
  ADDIW t5, t5, 560
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 512
  ADDIW t5, t5, 568
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 512
  ADDIW t5, t5, 576
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t5, 512
  ADDIW t5, t5, 584
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 512
  ADDIW t5, t5, 592
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 512
  ADDIW t5, t5, 600
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 512
  ADDIW t5, t5, 608
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 512
  ADDIW t5, t5, 616
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t5, 512
  ADDIW t5, t5, 624
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t5, 512
  ADDIW t5, t5, 632
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI s0, 128
  ADDIW s0, s0, 0
  ADD t4, zero, s0
  LUI t5, 512
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb1
bb1:
  LUI t3, 512
  ADDIW t3, t3, 0
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDIW t5, t5, 4
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 512
  ADDIW t4, t4, 4
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s2, t4, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb60
  # implict jump to bb2
bb2:
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD t4, zero, zero
  LUI t5, 512
  ADDIW t5, t5, 68
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t5, 512
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t5, 512
  ADDIW t5, t5, 60
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t5, 512
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t5, 512
  ADDIW t5, t5, 52
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t5, 512
  ADDIW t5, t5, 48
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t5, 512
  ADDIW t5, t5, 44
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t5, 512
  ADDIW t5, t5, 40
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t5, 512
  ADDIW t5, t5, 36
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t5, 512
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t5, 512
  ADDIW t5, t5, 28
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t5, 512
  ADDIW t5, t5, 20
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t5, 512
  ADDIW t5, t5, 16
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t5, 512
  ADDIW t5, t5, 12
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t5, 512
  ADDIW t5, t5, 8
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb3
bb3:
  LUI t3, 512
  ADDIW t3, t3, 8
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDIW t3, t3, 80
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 12
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDIW t3, t3, 112
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 16
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDIW t3, t3, 76
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 20
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDIW t5, t5, 100
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 512
  ADDIW t4, t4, 28
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 32
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  LUI t3, 512
  ADDIW t3, t3, 36
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDIW t3, t3, 108
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 40
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDIW t3, t3, 84
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 44
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDIW t3, t3, 88
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 48
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDIW t3, t3, 116
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 52
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDIW t3, t3, 24
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 56
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDIW t3, t3, 72
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 60
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDIW t3, t3, 92
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 64
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDIW t3, t3, 120
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 68
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s5, zero
  LUI t5, 512
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD s11, s4, zero
  ADD s10, s3, zero
  ADD s9, s2, zero
  LUI t4, 512
  ADDIW t4, t4, 24
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s8, t4, 2
  BNE s8, zero, bb5
  # implict jump to bb4
bb4:
  LW s8, 0(sp)
  ADDI s7, sp, 8
  LW s6, 0(s7)
  ADDW s7, s8, s6
  ADDI s6, sp, 4
  LW s8, 0(s6)
  ADDW s6, s7, s8
  ADDI s7, sp, 40
  LW s8, 0(s7)
  ADDW s7, s6, s8
  ADDI s6, sp, 24
  LW s8, 0(s6)
  ADDW s6, s7, s8
  ADDI s7, sp, 228
  LW s8, 0(s7)
  ADDW s7, s6, s8
  ADDI s6, sp, 56
  LW s8, 0(s6)
  ADDW s6, s7, s8
  ADDI s7, sp, 964
  LW s8, 0(s7)
  ADDW s7, s6, s8
  ADDI s6, sp, 224
  LW s8, 0(s6)
  ADDW s6, s7, s8
  ADDI s7, sp, 804
  LW s8, 0(s7)
  ADDW s7, s6, s8
  ADDI s6, sp, 1996
  LW s8, 0(s6)
  ADDW s6, s7, s8
  LUI s7, 1
  ADDIW s7, s7, -872
  ADDI t5, sp, 0
  ADD s8, t5, s7
  LW s7, 0(s8)
  ADDW s8, s6, s7
  LUI s6, 6
  ADDIW s6, s6, 1824
  ADDI t5, sp, 0
  ADD s7, t5, s6
  LW s6, 0(s7)
  ADDW s7, s8, s6
  ADDI s6, sp, 508
  LW s8, 0(s6)
  ADDW s6, s7, s8
  ADDI s7, sp, 124
  LW s8, 0(s7)
  ADDW s7, s6, s8
  LUI s6, 60
  ADDIW s6, s6, 912
  ADDI t5, sp, 0
  ADD s8, t5, s6
  LW s6, 0(s8)
  ADDW s8, s7, s6
  LUI s6, 4
  ADDIW s6, s6, -428
  ADDI t5, sp, 0
  ADD s7, t5, s6
  LW s6, 0(s7)
  ADDW s7, s8, s6
  LUI s6, 202
  ADDIW s6, s6, 972
  ADDI t5, sp, 0
  ADD s8, t5, s6
  LW s6, 0(s8)
  ADDW s8, s7, s6
  LUI s6, 69
  ADDIW s6, s6, -1024
  ADDI t5, sp, 0
  ADD s7, t5, s6
  LW s6, 0(s7)
  ADDW s7, s8, s6
  ADD a0, s7, zero
  CALL putint
  ADD a0, zero, zero
  LUI ra, 512
  ADDIW ra, ra, 536
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 512
  ADDIW t5, t5, 544
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 512
  ADDIW t5, t5, 552
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 512
  ADDIW t5, t5, 560
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 512
  ADDIW t5, t5, 568
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 512
  ADDIW t5, t5, 576
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 512
  ADDIW t5, t5, 584
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 512
  ADDIW t5, t5, 592
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 512
  ADDIW t5, t5, 600
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 512
  ADDIW t5, t5, 608
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 512
  ADDIW t5, t5, 616
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t5, 512
  ADDIW t5, t5, 624
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 512
  ADDIW t5, t5, 632
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t0, 512
  ADDIW t0, t0, 640
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb5:
  ADD s6, s9, zero
  ADD s7, s10, zero
  ADD t4, s11, zero
  LUI t3, 512
  ADDIW t3, t3, 192
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 96
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDIW t3, t3, 188
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 104
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDIW t3, t3, 184
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 120
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDIW t3, t3, 180
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 92
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDIW t3, t3, 176
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 72
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDIW t5, t5, 172
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t3, 512
  ADDIW t3, t3, 168
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 116
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDIW t3, t3, 164
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 88
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDIW t3, t3, 160
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 84
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDIW t3, t3, 152
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 108
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDIW t5, t5, 148
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s0, zero
  LUI t5, 512
  ADDIW t5, t5, 144
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s1, zero
  LUI t3, 512
  ADDIW t3, t3, 140
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 100
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDIW t3, t3, 136
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 76
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDIW t3, t3, 132
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 112
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDIW t3, t3, 128
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 80
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDIW t5, t5, 124
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb6
bb6:
  LUI t4, 512
  ADDIW t4, t4, 124
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a7, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 128
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t6, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 132
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a6, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 136
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a5, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 140
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a4, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 144
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 148
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 152
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a3, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 160
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a2, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 164
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a1, t4, zero
  LUI t3, 512
  ADDIW t3, t3, 168
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI a0, 512
  ADDIW a0, a0, 156
  ADD a0, a0, sp
  SW t4, 0(a0)
  LUI t4, 512
  ADDIW t4, t4, 172
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a0, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 176
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t2, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 180
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t1, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 184
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t0, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 188
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD ra, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 192
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  ADD s10, s7, zero
  ADD s9, s6, zero
  LUI t4, 512
  ADDIW t4, t4, 156
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s8, t4, 2
  BNE s8, zero, bb8
  # implict jump to bb7
bb7:
  LUI t4, 512
  ADDIW t4, t4, 24
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s8, t4, 1
  ADD s2, s9, zero
  ADD s3, s10, zero
  ADD s4, s11, zero
  ADD s5, ra, zero
  ADD t4, t0, zero
  LUI t5, 512
  ADDIW t5, t5, 68
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t1, zero
  LUI t5, 512
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t2, zero
  LUI t5, 512
  ADDIW t5, t5, 60
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a0, zero
  LUI t5, 512
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s8, zero
  LUI t5, 512
  ADDIW t5, t5, 52
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a1, zero
  LUI t5, 512
  ADDIW t5, t5, 48
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a2, zero
  LUI t5, 512
  ADDIW t5, t5, 44
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a3, zero
  LUI t5, 512
  ADDIW t5, t5, 40
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s0, zero
  LUI t5, 512
  ADDIW t5, t5, 36
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s1, zero
  LUI t5, 512
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a4, zero
  LUI t5, 512
  ADDIW t5, t5, 28
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a5, zero
  LUI t5, 512
  ADDIW t5, t5, 20
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a6, zero
  LUI t5, 512
  ADDIW t5, t5, 16
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t6, zero
  LUI t5, 512
  ADDIW t5, t5, 12
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a7, zero
  LUI t5, 512
  ADDIW t5, t5, 8
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb3
bb8:
  ADD s1, s9, zero
  ADD s2, s10, zero
  ADD s3, s11, zero
  ADD s4, ra, zero
  ADD s5, t0, zero
  ADD t4, t1, zero
  LUI t5, 512
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t2, zero
  LUI t5, 512
  ADDIW t5, t5, 244
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a0, zero
  LUI t5, 512
  ADDIW t5, t5, 240
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a1, zero
  LUI t5, 512
  ADDIW t5, t5, 236
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a2, zero
  LUI t5, 512
  ADDIW t5, t5, 232
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a3, zero
  LUI t5, 512
  ADDIW t5, t5, 228
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s0, zero
  LUI t5, 512
  ADDIW t5, t5, 224
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t5, 512
  ADDIW t5, t5, 220
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a4, zero
  LUI t5, 512
  ADDIW t5, t5, 216
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a5, zero
  LUI t5, 512
  ADDIW t5, t5, 212
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a6, zero
  LUI t5, 512
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t6, zero
  LUI t5, 512
  ADDIW t5, t5, 204
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a7, zero
  LUI t5, 512
  ADDIW t5, t5, 200
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb9
bb9:
  LUI t4, 512
  ADDIW t4, t4, 200
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a4, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 204
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a5, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 208
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a6, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 212
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a7, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t6, t4, zero
  LUI t3, 512
  ADDIW t3, t3, 220
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI a3, 512
  ADDIW a3, a3, 196
  ADD a3, a3, sp
  SW t4, 0(a3)
  LUI t4, 512
  ADDIW t4, t4, 224
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a3, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 228
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a2, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 232
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a1, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 236
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a0, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 240
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t2, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 244
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 248
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t1, t4, zero
  ADD t0, s5, zero
  ADD ra, s4, zero
  ADD s11, s3, zero
  ADD s10, s2, zero
  ADD s9, s1, zero
  LUI t4, 512
  ADDIW t4, t4, 196
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s8, t4, 2
  BNE s8, zero, bb11
  # implict jump to bb10
bb10:
  LUI t4, 512
  ADDIW t4, t4, 156
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s8, t4, 1
  ADD s6, s9, zero
  ADD s7, s10, zero
  ADD t4, s11, zero
  LUI t5, 512
  ADDIW t5, t5, 192
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, ra, zero
  LUI t5, 512
  ADDIW t5, t5, 188
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t0, zero
  LUI t5, 512
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t1, zero
  LUI t5, 512
  ADDIW t5, t5, 180
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s0, zero
  LUI t5, 512
  ADDIW t5, t5, 176
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t2, zero
  LUI t5, 512
  ADDIW t5, t5, 172
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s8, zero
  LUI t5, 512
  ADDIW t5, t5, 168
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a0, zero
  LUI t5, 512
  ADDIW t5, t5, 164
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a1, zero
  LUI t5, 512
  ADDIW t5, t5, 160
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a2, zero
  LUI t5, 512
  ADDIW t5, t5, 152
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a3, zero
  LUI t3, 512
  ADDIW t3, t3, 148
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 196
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDIW t5, t5, 144
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t6, zero
  LUI t5, 512
  ADDIW t5, t5, 140
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a7, zero
  LUI t5, 512
  ADDIW t5, t5, 136
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a6, zero
  LUI t5, 512
  ADDIW t5, t5, 132
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a5, zero
  LUI t5, 512
  ADDIW t5, t5, 128
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a4, zero
  LUI t5, 512
  ADDIW t5, t5, 124
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb6
bb11:
  ADD s6, s9, zero
  ADD s7, s10, zero
  ADD s8, s11, zero
  ADD t4, ra, zero
  LUI t5, 512
  ADDIW t5, t5, 308
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t0, zero
  LUI t5, 512
  ADDIW t5, t5, 304
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t1, zero
  LUI t5, 512
  ADDIW t5, t5, 300
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s0, zero
  LUI t5, 512
  ADDIW t5, t5, 296
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t2, zero
  LUI t5, 512
  ADDIW t5, t5, 292
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a0, zero
  LUI t5, 512
  ADDIW t5, t5, 288
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a1, zero
  LUI t5, 512
  ADDIW t5, t5, 284
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a2, zero
  LUI t5, 512
  ADDIW t5, t5, 280
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a3, zero
  LUI t5, 512
  ADDIW t5, t5, 276
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t6, zero
  LUI t5, 512
  ADDIW t5, t5, 272
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t5, 512
  ADDIW t5, t5, 268
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a6, zero
  LUI t5, 512
  ADDIW t5, t5, 264
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a5, zero
  LUI t5, 512
  ADDIW t5, t5, 260
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a4, zero
  LUI t5, 512
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb12
bb12:
  LUI t4, 512
  ADDIW t4, t4, 256
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a4, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 260
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a7, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 264
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t6, t4, zero
  LUI t3, 512
  ADDIW t3, t3, 268
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI a5, 512
  ADDIW a5, a5, 252
  ADD a5, a5, sp
  SW t4, 0(a5)
  LUI t4, 512
  ADDIW t4, t4, 272
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a5, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 276
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a6, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 280
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a3, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 284
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a2, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 288
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a1, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 292
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a0, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 296
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t2, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 300
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t1, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 304
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t0, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 308
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  ADD ra, s8, zero
  ADD s11, s7, zero
  ADD s10, s6, zero
  LUI t4, 512
  ADDIW t4, t4, 252
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s9, t4, 2
  BNE s9, zero, bb14
  # implict jump to bb13
bb13:
  LUI t4, 512
  ADDIW t4, t4, 196
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s9, t4, 1
  ADD s1, s10, zero
  ADD s2, s11, zero
  ADD s3, ra, zero
  ADD s4, s0, zero
  ADD s5, t0, zero
  ADD t4, t1, zero
  LUI t5, 512
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t2, zero
  LUI t5, 512
  ADDIW t5, t5, 244
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a0, zero
  LUI t5, 512
  ADDIW t5, t5, 240
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a1, zero
  LUI t5, 512
  ADDIW t5, t5, 236
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a2, zero
  LUI t5, 512
  ADDIW t5, t5, 232
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a3, zero
  LUI t5, 512
  ADDIW t5, t5, 228
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a6, zero
  LUI t5, 512
  ADDIW t5, t5, 224
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s9, zero
  LUI t5, 512
  ADDIW t5, t5, 220
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a5, zero
  LUI t3, 512
  ADDIW t3, t3, 216
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 252
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDIW t5, t5, 212
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t6, zero
  LUI t5, 512
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a7, zero
  LUI t5, 512
  ADDIW t5, t5, 204
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a4, zero
  LUI t5, 512
  ADDIW t5, t5, 200
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb9
bb14:
  ADD s1, s10, zero
  ADD s2, s11, zero
  ADD s3, ra, zero
  ADD s4, s0, zero
  ADD s0, t0, zero
  ADD s5, t1, zero
  ADD t4, t2, zero
  LUI t5, 512
  ADDIW t5, t5, 352
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a0, zero
  LUI t5, 512
  ADDIW t5, t5, 348
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a1, zero
  LUI t5, 512
  ADDIW t5, t5, 344
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a2, zero
  LUI t5, 512
  ADDIW t5, t5, 340
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a3, zero
  LUI t5, 512
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a6, zero
  LUI t5, 512
  ADDIW t5, t5, 332
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a5, zero
  LUI t5, 512
  ADDIW t5, t5, 328
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t6, zero
  LUI t5, 512
  ADDIW t5, t5, 324
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t5, 512
  ADDIW t5, t5, 320
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a4, zero
  LUI t5, 512
  ADDIW t5, t5, 316
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb15
bb15:
  LUI t4, 512
  ADDIW t4, t4, 316
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a3, t4, zero
  LUI t3, 512
  ADDIW t3, t3, 320
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI a5, 512
  ADDIW a5, a5, 312
  ADD a5, a5, sp
  SW t4, 0(a5)
  LUI t4, 512
  ADDIW t4, t4, 324
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a5, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 328
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a6, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 332
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a7, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 336
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t6, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 340
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a4, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 344
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a2, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 348
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a1, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 352
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a0, t4, zero
  ADD t2, s5, zero
  ADD t1, s0, zero
  ADD t0, s4, zero
  ADD ra, s3, zero
  ADD s11, s2, zero
  ADD s10, s1, zero
  LUI t4, 512
  ADDIW t4, t4, 312
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s9, t4, 2
  BNE s9, zero, bb17
  # implict jump to bb16
bb16:
  LUI t4, 512
  ADDIW t4, t4, 252
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s9, t4, 1
  ADD s6, s10, zero
  ADD s7, s11, zero
  ADD s8, ra, zero
  ADD t4, t0, zero
  LUI t5, 512
  ADDIW t5, t5, 308
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t1, zero
  LUI t5, 512
  ADDIW t5, t5, 304
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t2, zero
  LUI t5, 512
  ADDIW t5, t5, 300
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a0, zero
  LUI t5, 512
  ADDIW t5, t5, 296
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a1, zero
  LUI t5, 512
  ADDIW t5, t5, 292
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a2, zero
  LUI t5, 512
  ADDIW t5, t5, 288
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a4, zero
  LUI t5, 512
  ADDIW t5, t5, 284
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t6, zero
  LUI t5, 512
  ADDIW t5, t5, 280
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a7, zero
  LUI t5, 512
  ADDIW t5, t5, 276
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a6, zero
  LUI t5, 512
  ADDIW t5, t5, 272
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s9, zero
  LUI t5, 512
  ADDIW t5, t5, 268
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a5, zero
  LUI t3, 512
  ADDIW t3, t3, 264
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 312
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDIW t5, t5, 260
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a3, zero
  LUI t5, 512
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb12
bb17:
  ADD s6, s10, zero
  ADD s7, s11, zero
  ADD s8, ra, zero
  ADD s9, t0, zero
  ADD t4, t1, zero
  LUI t5, 512
  ADDIW t5, t5, 400
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t2, zero
  LUI t5, 512
  ADDIW t5, t5, 396
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a0, zero
  LUI t5, 512
  ADDIW t5, t5, 392
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a1, zero
  LUI t5, 512
  ADDIW t5, t5, 388
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a2, zero
  LUI t5, 512
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a4, zero
  LUI t5, 512
  ADDIW t5, t5, 380
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t6, zero
  LUI t5, 512
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a7, zero
  LUI t5, 512
  ADDIW t5, t5, 372
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a6, zero
  LUI t5, 512
  ADDIW t5, t5, 368
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t5, 512
  ADDIW t5, t5, 364
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a3, zero
  LUI t5, 512
  ADDIW t5, t5, 360
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb18
bb18:
  LUI t4, 512
  ADDIW t4, t4, 360
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a3, t4, zero
  LUI t3, 512
  ADDIW t3, t3, 364
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI a7, 512
  ADDIW a7, a7, 356
  ADD a7, a7, sp
  SW t4, 0(a7)
  LUI t4, 512
  ADDIW t4, t4, 368
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a7, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 372
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t6, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 376
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a6, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 380
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a5, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 384
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a4, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 388
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a2, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 392
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a1, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 396
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a0, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 400
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t2, t4, zero
  ADD t1, s9, zero
  ADD t0, s8, zero
  ADD ra, s7, zero
  ADD s11, s6, zero
  LUI t4, 512
  ADDIW t4, t4, 356
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s10, t4, 2
  BNE s10, zero, bb20
  # implict jump to bb19
bb19:
  LUI t4, 512
  ADDIW t4, t4, 312
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s10, t4, 1
  ADD s1, s11, zero
  ADD s2, ra, zero
  ADD s3, t0, zero
  ADD s4, t1, zero
  ADD s0, t2, zero
  ADD s5, a0, zero
  ADD t4, a1, zero
  LUI t5, 512
  ADDIW t5, t5, 352
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a2, zero
  LUI t5, 512
  ADDIW t5, t5, 348
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a4, zero
  LUI t5, 512
  ADDIW t5, t5, 344
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a5, zero
  LUI t5, 512
  ADDIW t5, t5, 340
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a6, zero
  LUI t5, 512
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t6, zero
  LUI t5, 512
  ADDIW t5, t5, 332
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a7, zero
  LUI t3, 512
  ADDIW t3, t3, 328
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 356
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDIW t5, t5, 324
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s10, zero
  LUI t5, 512
  ADDIW t5, t5, 320
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a3, zero
  LUI t5, 512
  ADDIW t5, t5, 316
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb15
bb20:
  ADD s0, s11, zero
  ADD s1, ra, zero
  ADD s2, t0, zero
  ADD s3, t1, zero
  ADD s4, t2, zero
  ADD s5, a0, zero
  ADD s10, a1, zero
  ADD t4, a2, zero
  LUI t5, 512
  ADDIW t5, t5, 432
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a4, zero
  LUI t5, 512
  ADDIW t5, t5, 428
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a5, zero
  LUI t5, 512
  ADDIW t5, t5, 424
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t5, 512
  ADDIW t5, t5, 420
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t6, zero
  LUI t5, 512
  ADDIW t5, t5, 416
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a7, zero
  LUI t5, 512
  ADDIW t5, t5, 412
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a3, zero
  LUI t5, 512
  ADDIW t5, t5, 408
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb21
bb21:
  LUI t4, 512
  ADDIW t4, t4, 408
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a2, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 412
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a3, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 416
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a4, t4, zero
  LUI t3, 512
  ADDIW t3, t3, 420
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI a6, 512
  ADDIW a6, a6, 404
  ADD a6, a6, sp
  SW t4, 0(a6)
  LUI t4, 512
  ADDIW t4, t4, 424
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a6, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 428
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a7, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 432
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t6, t4, zero
  ADD a5, s10, zero
  ADD a1, s5, zero
  ADD a0, s4, zero
  ADD t2, s3, zero
  ADD t1, s2, zero
  ADD t0, s1, zero
  ADD ra, s0, zero
  LUI t4, 512
  ADDIW t4, t4, 404
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s11, t4, 2
  BNE s11, zero, bb23
  # implict jump to bb22
bb22:
  LUI t4, 512
  ADDIW t4, t4, 356
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s11, t4, 1
  ADD s6, ra, zero
  ADD s7, t0, zero
  ADD s8, t1, zero
  ADD s9, t2, zero
  ADD t4, a0, zero
  LUI t5, 512
  ADDIW t5, t5, 400
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a1, zero
  LUI t5, 512
  ADDIW t5, t5, 396
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a5, zero
  LUI t5, 512
  ADDIW t5, t5, 392
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t6, zero
  LUI t5, 512
  ADDIW t5, t5, 388
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a7, zero
  LUI t5, 512
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a6, zero
  LUI t3, 512
  ADDIW t3, t3, 380
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 404
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a4, zero
  LUI t5, 512
  ADDIW t5, t5, 372
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a3, zero
  LUI t5, 512
  ADDIW t5, t5, 368
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s11, zero
  LUI t5, 512
  ADDIW t5, t5, 364
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a2, zero
  LUI t5, 512
  ADDIW t5, t5, 360
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb18
bb23:
  ADD s6, zero, zero
  ADD s7, t0, zero
  ADD s8, t1, zero
  ADD s9, t2, zero
  ADD s11, a0, zero
  ADD t4, a1, zero
  LUI t5, 512
  ADDIW t5, t5, 468
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a5, zero
  LUI t5, 512
  ADDIW t5, t5, 460
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t6, zero
  LUI t5, 512
  ADDIW t5, t5, 456
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a7, zero
  LUI t5, 512
  ADDIW t5, t5, 452
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a6, zero
  LUI t5, 512
  ADDIW t5, t5, 448
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a4, zero
  LUI t5, 512
  ADDIW t5, t5, 444
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a3, zero
  LUI t5, 512
  ADDIW t5, t5, 440
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a2, zero
  LUI t5, 512
  ADDIW t5, t5, 436
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb24
bb24:
  LUI t4, 512
  ADDIW t4, t4, 436
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a2, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 440
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a5, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 444
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a6, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 448
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a7, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 452
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t6, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 456
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a3, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 460
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a4, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 468
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a1, t4, zero
  ADD a0, s11, zero
  ADD t2, s9, zero
  ADD t1, s8, zero
  ADD t0, s7, zero
  ADD t4, s6, zero
  LUI ra, 512
  ADDIW ra, ra, 464
  ADD ra, ra, sp
  SW t4, 0(ra)
  LUI t4, 512
  ADDIW t4, t4, 464
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI ra, t4, 2
  BNE ra, zero, bb26
  # implict jump to bb25
bb25:
  LUI t4, 512
  ADDIW t4, t4, 404
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW ra, t4, 1
  LUI t4, 512
  ADDIW t4, t4, 464
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  ADD s1, t0, zero
  ADD s2, t1, zero
  ADD s3, t2, zero
  ADD s4, a0, zero
  ADD s5, a1, zero
  ADD s10, a4, zero
  ADD t4, a3, zero
  LUI t5, 512
  ADDIW t5, t5, 432
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t6, zero
  LUI t5, 512
  ADDIW t5, t5, 428
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a7, zero
  LUI t5, 512
  ADDIW t5, t5, 424
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, ra, zero
  LUI t5, 512
  ADDIW t5, t5, 420
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a6, zero
  LUI t5, 512
  ADDIW t5, t5, 416
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a5, zero
  LUI t5, 512
  ADDIW t5, t5, 412
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a2, zero
  LUI t5, 512
  ADDIW t5, t5, 408
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb21
bb26:
  ADD s0, t0, zero
  ADD s1, t1, zero
  ADD s2, t2, zero
  ADD s3, a0, zero
  ADD s4, a1, zero
  ADD s5, zero, zero
  ADD s10, a3, zero
  ADD ra, t6, zero
  ADD t4, a7, zero
  LUI t5, 512
  ADDIW t5, t5, 488
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a6, zero
  LUI t5, 512
  ADDIW t5, t5, 484
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a5, zero
  LUI t5, 512
  ADDIW t5, t5, 480
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a2, zero
  LUI t5, 512
  ADDIW t5, t5, 476
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb27
bb27:
  LUI t4, 512
  ADDIW t4, t4, 476
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a1, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 480
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a2, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 484
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a3, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 488
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a4, t4, zero
  ADD a5, ra, zero
  ADD a6, s10, zero
  ADD t4, s5, zero
  LUI t6, 512
  ADDIW t6, t6, 472
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t6, s4, zero
  ADD a7, s3, zero
  ADD a0, s2, zero
  ADD t2, s1, zero
  ADD t1, s0, zero
  LUI t4, 512
  ADDIW t4, t4, 472
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI t0, t4, 2
  BNE t0, zero, bb29
  # implict jump to bb28
bb28:
  LUI t4, 512
  ADDIW t4, t4, 464
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW t0, t4, 1
  ADD s6, t0, zero
  ADD s7, t1, zero
  ADD s8, t2, zero
  ADD s9, a0, zero
  ADD s11, a7, zero
  ADD t4, t6, zero
  LUI t3, 512
  ADDIW t3, t3, 468
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDIW t3, t3, 472
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDIW t5, t5, 460
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a6, zero
  LUI t5, 512
  ADDIW t5, t5, 456
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a5, zero
  LUI t5, 512
  ADDIW t5, t5, 452
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a4, zero
  LUI t5, 512
  ADDIW t5, t5, 448
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a3, zero
  LUI t5, 512
  ADDIW t5, t5, 444
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a2, zero
  LUI t5, 512
  ADDIW t5, t5, 440
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a1, zero
  LUI t5, 512
  ADDIW t5, t5, 436
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb24
bb29:
  ADD s6, zero, zero
  ADD s7, t2, zero
  ADD s8, a0, zero
  ADD s9, a7, zero
  ADD s11, t6, zero
  ADD t0, a6, zero
  ADD t4, a5, zero
  LUI t5, 512
  ADDIW t5, t5, 512
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a4, zero
  LUI t5, 512
  ADDIW t5, t5, 504
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a3, zero
  LUI t5, 512
  ADDIW t5, t5, 500
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a2, zero
  LUI t5, 512
  ADDIW t5, t5, 496
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a1, zero
  LUI t5, 512
  ADDIW t5, t5, 492
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb30
bb30:
  LUI t4, 512
  ADDIW t4, t4, 492
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a1, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 496
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a4, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 500
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a5, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 504
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a6, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 512
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a7, t4, zero
  ADD t6, t0, zero
  ADD a2, s11, zero
  ADD a3, s9, zero
  ADD a0, s8, zero
  ADD t2, s7, zero
  ADD t4, s6, zero
  LUI t1, 512
  ADDIW t1, t1, 508
  ADD t1, t1, sp
  SW t4, 0(t1)
  LUI t4, 512
  ADDIW t4, t4, 508
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI t1, t4, 2
  BNE t1, zero, bb32
  # implict jump to bb31
bb31:
  LUI t4, 512
  ADDIW t4, t4, 472
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW t1, t4, 1
  LUI t4, 512
  ADDIW t4, t4, 508
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  ADD s1, t2, zero
  ADD s2, a0, zero
  ADD s3, a3, zero
  ADD s4, a2, zero
  ADD s5, t1, zero
  ADD s10, t6, zero
  ADD ra, a7, zero
  ADD t4, a6, zero
  LUI t5, 512
  ADDIW t5, t5, 488
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a5, zero
  LUI t5, 512
  ADDIW t5, t5, 484
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a4, zero
  LUI t5, 512
  ADDIW t5, t5, 480
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a1, zero
  LUI t5, 512
  ADDIW t5, t5, 476
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb27
bb32:
  ADD s0, t2, zero
  ADD s1, a0, zero
  ADD s2, a3, zero
  ADD s3, a2, zero
  ADD s4, t6, zero
  ADD s5, zero, zero
  ADD s10, a6, zero
  ADD ra, a5, zero
  ADD t1, a4, zero
  ADD t4, a1, zero
  LUI t5, 512
  ADDIW t5, t5, 520
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb33
bb33:
  LUI t4, 512
  ADDIW t4, t4, 520
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a0, t4, zero
  ADD a1, t1, zero
  ADD a2, ra, zero
  ADD a3, s10, zero
  ADD t4, s5, zero
  LUI a5, 512
  ADDIW a5, a5, 516
  ADD a5, a5, sp
  SW t4, 0(a5)
  ADD a5, s4, zero
  ADD a6, s3, zero
  ADD a7, s2, zero
  ADD t6, s1, zero
  ADD a4, s0, zero
  LUI t4, 512
  ADDIW t4, t4, 516
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI t2, t4, 2
  BNE t2, zero, bb35
  # implict jump to bb34
bb34:
  LUI t4, 512
  ADDIW t4, t4, 508
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW t2, t4, 1
  ADD s6, t2, zero
  ADD s7, a4, zero
  ADD s8, t6, zero
  ADD s9, a7, zero
  ADD s11, a6, zero
  ADD t0, a5, zero
  LUI t3, 512
  ADDIW t3, t3, 516
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDIW t5, t5, 512
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a3, zero
  LUI t5, 512
  ADDIW t5, t5, 504
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a2, zero
  LUI t5, 512
  ADDIW t5, t5, 500
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a1, zero
  LUI t5, 512
  ADDIW t5, t5, 496
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a0, zero
  LUI t5, 512
  ADDIW t5, t5, 492
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb30
bb35:
  ADD s6, a4, zero
  ADD s7, t6, zero
  ADD s8, a7, zero
  ADD s9, a6, zero
  ADD s11, a5, zero
  ADD t0, a3, zero
  ADD t2, zero, zero
  ADD t4, a1, zero
  LUI t5, 512
  ADDIW t5, t5, 532
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a0, zero
  LUI t5, 512
  ADDIW t5, t5, 528
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb36
bb36:
  LUI t4, 512
  ADDIW t4, t4, 528
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a0, t4, zero
  LUI t4, 512
  ADDIW t4, t4, 532
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a3, t4, zero
  ADD t4, t2, zero
  LUI a5, 512
  ADDIW a5, a5, 524
  ADD a5, a5, sp
  SW t4, 0(a5)
  ADD a5, t0, zero
  ADD a6, s11, zero
  ADD a7, s9, zero
  ADD t6, s8, zero
  ADD a4, s7, zero
  ADD a1, s6, zero
  LUI t4, 512
  ADDIW t4, t4, 524
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI a2, t4, 2
  BNE a2, zero, bb38
  # implict jump to bb37
bb37:
  LUI t4, 512
  ADDIW t4, t4, 516
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW a2, t4, 1
  ADD s0, a1, zero
  ADD s1, a4, zero
  ADD s2, t6, zero
  ADD s3, a7, zero
  ADD s4, a6, zero
  ADD s5, a2, zero
  ADD s10, a5, zero
  LUI t4, 512
  ADDIW t4, t4, 524
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD ra, t4, zero
  ADD t1, a3, zero
  ADD t4, a0, zero
  LUI t5, 512
  ADDIW t5, t5, 520
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb33
bb38:
  ADD s0, zero, zero
  ADD s1, a4, zero
  ADD s2, t6, zero
  ADD s3, a7, zero
  ADD s4, a6, zero
  ADD s5, a5, zero
  ADD s10, a3, zero
  ADD ra, a0, zero
  # implict jump to bb39
bb39:
  ADD t1, ra, zero
  ADD a0, s10, zero
  ADD a1, s5, zero
  ADD a2, s4, zero
  ADD a3, s3, zero
  ADD a4, s2, zero
  ADD a5, s1, zero
  ADD a6, s0, zero
  SLTI a7, a6, 2
  BNE a7, zero, bb41
  # implict jump to bb40
bb40:
  LUI t4, 512
  ADDIW t4, t4, 524
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW a7, t4, 1
  ADD s6, a6, zero
  ADD s7, a5, zero
  ADD s8, a4, zero
  ADD s9, a3, zero
  ADD s11, a2, zero
  ADD t0, a1, zero
  ADD t2, a7, zero
  ADD t4, a0, zero
  LUI t5, 512
  ADDIW t5, t5, 532
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t1, zero
  LUI t5, 512
  ADDIW t5, t5, 528
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb36
bb41:
  ADD s6, zero, zero
  ADD s7, a4, zero
  ADD s8, a3, zero
  ADD s9, a2, zero
  ADD s11, a1, zero
  ADD t0, a0, zero
  ADD t2, t1, zero
  # implict jump to bb42
bb42:
  ADD t1, t2, zero
  ADD a0, t0, zero
  ADD a1, s11, zero
  ADD a2, s9, zero
  ADD a3, s8, zero
  ADD a4, s7, zero
  ADD a5, s6, zero
  SLTI a7, a5, 2
  BNE a7, zero, bb44
  # implict jump to bb43
bb43:
  ADDIW a7, a6, 1
  ADD s0, a7, zero
  ADD s1, a5, zero
  ADD s2, a4, zero
  ADD s3, a3, zero
  ADD s4, a2, zero
  ADD s5, a1, zero
  ADD s10, a0, zero
  ADD ra, t1, zero
  JAL zero, bb39
bb44:
  ADD s0, zero, zero
  ADD s1, a3, zero
  ADD s2, a2, zero
  ADD s3, a1, zero
  ADD s4, a0, zero
  ADD s5, t1, zero
  # implict jump to bb45
bb45:
  ADD s10, s5, zero
  ADD ra, s4, zero
  ADD t1, s3, zero
  ADD a0, s2, zero
  ADD a1, s1, zero
  ADD a2, s0, zero
  SLTI a3, a2, 2
  BNE a3, zero, bb47
  # implict jump to bb46
bb46:
  ADDIW a3, a5, 1
  ADD s6, a3, zero
  ADD s7, a2, zero
  ADD s8, a1, zero
  ADD s9, a0, zero
  ADD s11, t1, zero
  ADD t0, ra, zero
  ADD t2, s10, zero
  JAL zero, bb42
bb47:
  ADD s6, zero, zero
  ADD s7, a0, zero
  ADD s8, t1, zero
  ADD s9, ra, zero
  ADD s11, s10, zero
  # implict jump to bb48
bb48:
  ADD s10, s11, zero
  ADD ra, s9, zero
  ADD t0, s8, zero
  ADD t1, s7, zero
  ADD t2, s6, zero
  SLTI a0, t2, 2
  BNE a0, zero, bb50
  # implict jump to bb49
bb49:
  ADDIW a0, a2, 1
  ADD s0, a0, zero
  ADD s1, t2, zero
  ADD s2, t1, zero
  ADD s3, t0, zero
  ADD s4, ra, zero
  ADD s5, s10, zero
  JAL zero, bb45
bb50:
  ADD s0, zero, zero
  ADD s1, t0, zero
  ADD s2, ra, zero
  ADD s3, s10, zero
  # implict jump to bb51
bb51:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s10, s1, zero
  ADD ra, s0, zero
  SLTI t0, ra, 2
  BNE t0, zero, bb53
  # implict jump to bb52
bb52:
  ADDIW t0, t2, 1
  ADD s6, t0, zero
  ADD s7, ra, zero
  ADD s8, s10, zero
  ADD s9, s5, zero
  ADD s11, s4, zero
  JAL zero, bb48
bb53:
  ADD s6, zero, zero
  ADD s7, s5, zero
  ADD s5, s4, zero
  # implict jump to bb54
bb54:
  ADD s4, s5, zero
  ADD s8, s7, zero
  ADD s9, s6, zero
  SLTI s10, s9, 2
  BNE s10, zero, bb56
  # implict jump to bb55
bb55:
  ADDIW s10, ra, 1
  ADD s0, s10, zero
  ADD s1, s9, zero
  ADD s2, s8, zero
  ADD s3, s4, zero
  JAL zero, bb51
bb56:
  ADD s0, zero, zero
  ADD s1, s4, zero
  # implict jump to bb57
bb57:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s3, 2
  BNE s4, zero, bb59
  # implict jump to bb58
bb58:
  ADDIW s4, s9, 1
  ADD s6, s4, zero
  ADD s7, s3, zero
  ADD s5, s2, zero
  JAL zero, bb54
bb59:
  LUI t4, 512
  ADDIW t4, t4, 24
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s4, t4, 20
  ADDI t5, sp, 0
  ADD s5, t5, s4
  LUI t4, 512
  ADDIW t4, t4, 156
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s4, t4, 19
  ADD s6, s5, s4
  LUI t4, 512
  ADDIW t4, t4, 196
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s4, t4, 18
  ADD s5, s6, s4
  LUI t4, 512
  ADDIW t4, t4, 252
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s4, t4, 17
  ADD s6, s5, s4
  LUI t4, 512
  ADDIW t4, t4, 312
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s4, t4, 16
  ADD s5, s6, s4
  LUI t4, 512
  ADDIW t4, t4, 356
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s4, t4, 15
  ADD s6, s5, s4
  LUI t4, 512
  ADDIW t4, t4, 404
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s4, t4, 14
  ADD s5, s6, s4
  LUI t4, 512
  ADDIW t4, t4, 464
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s4, t4, 13
  ADD s6, s5, s4
  LUI t4, 512
  ADDIW t4, t4, 472
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s4, t4, 12
  ADD s5, s6, s4
  LUI t4, 512
  ADDIW t4, t4, 508
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s4, t4, 11
  ADD s6, s5, s4
  LUI t4, 512
  ADDIW t4, t4, 516
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s4, t4, 10
  ADD s5, s6, s4
  LUI t4, 512
  ADDIW t4, t4, 524
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLLIW s4, t4, 9
  ADD s6, s5, s4
  SLLIW s4, a6, 8
  ADD s5, s6, s4
  SLLIW s4, a5, 7
  ADD s6, s5, s4
  SLLIW s4, a2, 6
  ADD s5, s6, s4
  SLLIW s4, t2, 5
  ADD s6, s5, s4
  SLLIW s4, ra, 4
  ADD s5, s6, s4
  SLLIW s4, s9, 3
  ADD s6, s5, s4
  SLLIW s4, s3, 2
  ADD s5, s6, s4
  SW s2, 0(s5)
  ADDIW s4, s2, 1
  ADDIW s2, s3, 1
  ADD s0, s2, zero
  ADD s1, s4, zero
  JAL zero, bb57
bb60:
  ADDI s0, zero, 1
  LUI t4, 512
  ADDIW t4, t4, 4
  ADD t4, t4, sp
  LW t4, 0(t4)
  SUBW s1, t4, s0
  SLLIW s0, s1, 2
  ADDI t5, sp, 0
  ADD s2, t5, s0
  SW zero, 0(s2)
  ADD t4, s1, zero
  LUI t5, 512
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb1
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
  LW s8, 0(s0)
  ADDI s0, s1, 8
  LW s1, 0(s0)
  ADDW s0, s8, s1
  ADDI s1, s2, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, s3, 40
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, s4, 24
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, s5, 228
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, s6, 56
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, s7, 964
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, s9, 224
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, s10, 804
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, s11, 1996
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LUI s0, 1
  ADDIW s0, s0, -872
  ADD s2, ra, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 6
  ADDIW s0, s0, 1824
  ADD s1, t0, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  ADDI s0, t1, 508
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, t2, 124
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LUI s0, 60
  ADDIW s0, s0, 912
  ADD s2, a1, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 4
  ADDIW s0, s0, -428
  ADD s1, a2, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 202
  ADDIW s0, s0, 972
  ADD s2, a3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 69
  ADDIW s0, s0, -1024
  ADD s1, a4, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  ADD a0, s1, zero
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
