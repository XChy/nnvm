.global main
.global sum
.section .bss
.section .data
.section .text
main:
  LUI t0, 1048063
  ADDI t0, t0, 832
  ADD sp, sp, t0
  LUI t5, 513
  ADDI t5, t5, -936
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t6, 513
  ADDI t6, t6, -928
  ADD t6, t6, sp
  SD s5, 0(t6)
  LUI t5, 513
  ADDI t5, t5, -920
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t6, 513
  ADDI t6, t6, -912
  ADD t6, t6, sp
  SD s7, 0(t6)
  LUI t5, 513
  ADDI t5, t5, -904
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t6, 513
  ADDI t6, t6, -896
  ADD t6, t6, sp
  SD s9, 0(t6)
  LUI t5, 513
  ADDI t5, t5, -888
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t6, 513
  ADDI t6, t6, -880
  ADD t6, t6, sp
  SD s11, 0(t6)
  LUI t5, 513
  ADDI t5, t5, -872
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t6, 513
  ADDI t6, t6, -864
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t5, 513
  ADDI t5, t5, -856
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t6, 513
  ADDI t6, t6, -848
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t5, 513
  ADDI t5, t5, -840
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI s0, 128
  ADDI s0, s0, 0
  ADD s1, zero, s0
  JAL zero, bb1
bb1:
  ADD s0, s1, zero
  XOR s2, s0, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  ADDI s0, zero, 4
  MULW s2, s3, s0
  ADDW s0, zero, s2
  ADDI t6, sp, 96
  ADD s2, t6, s0
  SW zero, 0(s2)
  ADD s1, s3, zero
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
  ADDI t6, t6, 216
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 512
  ADDI t5, t5, 208
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 512
  ADDI t6, t6, 200
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 512
  ADDI t5, t5, 192
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 512
  ADDI t6, t6, 184
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 512
  ADDI t5, t5, 176
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 512
  ADDI t6, t6, 168
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 512
  ADDI t5, t5, 160
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 512
  ADDI t6, t6, 152
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
  ADDI t6, t6, 104
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 512
  ADDI t5, t5, 96
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb4
bb4:
  LUI t4, 512
  ADDI t4, t4, 96
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a3, t4, zero
  LUI t3, 512
  ADDI t3, t3, 104
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI a5, 512
  ADDI a5, a5, 392
  ADD a5, a5, sp
  SW t4, 0(a5)
  LUI t4, 512
  ADDI t4, t4, 112
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a5, t4, zero
  LUI t4, 512
  ADDI t4, t4, 120
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a6, t4, zero
  LUI t4, 512
  ADDI t4, t4, 128
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a7, t4, zero
  LUI t4, 512
  ADDI t4, t4, 136
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a2, t4, zero
  LUI t4, 512
  ADDI t4, t4, 144
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a1, t4, zero
  LUI t4, 512
  ADDI t4, t4, 152
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a0, t4, zero
  LUI t4, 512
  ADDI t4, t4, 160
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t2, t4, zero
  LUI t4, 512
  ADDI t4, t4, 168
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t1, t4, zero
  LUI t4, 512
  ADDI t4, t4, 176
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t0, t4, zero
  LUI t4, 512
  ADDI t4, t4, 184
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD ra, t4, zero
  LUI t4, 512
  ADDI t4, t4, 192
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  LUI t4, 512
  ADDI t4, t4, 200
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s10, t4, zero
  LUI t4, 512
  ADDI t4, t4, 208
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s9, t4, zero
  LUI t4, 512
  ADDI t4, t4, 216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  LUI t4, 512
  ADDI t4, t4, 352
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  LUI t4, 512
  ADDI t4, t4, 368
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s6, t4, zero
  LUI t4, 512
  ADDI t4, t4, 384
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s5, t4, zero
  LUI t4, 512
  ADDI t4, t4, 392
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s4, t4, 2
  XOR s3, s4, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb5
  JAL zero, bb6
bb5:
  ADD t4, s5, zero
  LUI t6, 512
  ADDI t6, t6, 688
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s6, zero
  LUI t5, 512
  ADDI t5, t5, 672
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s7, zero
  LUI t6, 512
  ADDI t6, t6, 656
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s8, zero
  LUI t5, 512
  ADDI t5, t5, 640
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s9, zero
  LUI t6, 512
  ADDI t6, t6, 624
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s10, zero
  LUI t5, 512
  ADDI t5, t5, 504
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s11, zero
  LUI t6, 512
  ADDI t6, t6, 496
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, ra, zero
  LUI t5, 512
  ADDI t5, t5, 488
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t0, zero
  LUI t6, 512
  ADDI t6, t6, 480
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, t1, zero
  LUI t5, 512
  ADDI t5, t5, 472
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, t2, zero
  LUI t6, 512
  ADDI t6, t6, 464
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, a0, zero
  LUI t5, 512
  ADDI t5, t5, 456
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a1, zero
  LUI t6, 512
  ADDI t6, t6, 448
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, a2, zero
  LUI t5, 512
  ADDI t5, t5, 440
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a7, zero
  LUI t6, 512
  ADDI t6, t6, 432
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, a6, zero
  LUI t5, 512
  ADDI t5, t5, 424
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a5, zero
  LUI t6, 512
  ADDI t6, t6, 416
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 512
  ADDI t5, t5, 408
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a3, zero
  LUI t6, 512
  ADDI t6, t6, 400
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb7
bb6:
  ADDI t5, sp, 96
  ADD s0, t5, zero
  ADD s1, s0, zero
  ADD s0, s1, zero
  ADD s1, s0, zero
  ADD s0, s1, zero
  ADD s1, s0, zero
  ADD s0, s1, zero
  ADD s1, s0, zero
  ADD s0, s1, zero
  ADD s1, s0, zero
  ADD s0, s1, zero
  ADD s1, s0, zero
  ADD s0, s1, zero
  ADD s1, s0, zero
  ADD s0, s1, zero
  ADD s1, s0, zero
  ADD s0, s1, zero
  ADD s1, s0, zero
  ADDI t6, sp, 96
  ADD s0, t6, zero
  ADD s2, s0, zero
  ADD s0, s2, zero
  ADD s2, s0, zero
  ADD s0, s2, zero
  ADD s2, s0, zero
  ADD s0, s2, zero
  ADD s2, s0, zero
  ADD s0, s2, zero
  ADD s2, s0, zero
  ADD s0, s2, zero
  ADD s2, s0, zero
  ADD s0, s2, zero
  ADD s2, s0, zero
  ADD s0, s2, zero
  ADD s2, s0, zero
  ADD s0, s2, zero
  ADDI t5, sp, 96
  ADD s2, t5, zero
  ADD s3, s2, zero
  ADD s2, s3, zero
  ADD s3, s2, zero
  ADD s2, s3, zero
  ADD s3, s2, zero
  ADD s2, s3, zero
  ADD s3, s2, zero
  ADD s2, s3, zero
  ADD s3, s2, zero
  ADD s2, s3, zero
  ADD s3, s2, zero
  ADD s2, s3, zero
  ADD s3, s2, zero
  ADD s2, s3, zero
  ADD s3, s2, zero
  ADDI t6, sp, 96
  ADD s2, t6, zero
  ADD s4, s2, zero
  ADD s2, s4, zero
  ADD s4, s2, zero
  ADD s2, s4, zero
  ADD s4, s2, zero
  ADD s2, s4, zero
  ADD s4, s2, zero
  ADD s2, s4, zero
  ADD s4, s2, zero
  ADD s2, s4, zero
  ADD s4, s2, zero
  ADD s2, s4, zero
  ADD s4, s2, zero
  ADD s2, s4, zero
  ADDI t5, sp, 96
  ADD s4, t5, zero
  ADD s5, s4, zero
  ADD s4, s5, zero
  ADD s5, s4, zero
  ADD s4, s5, zero
  ADD s5, s4, zero
  ADD s4, s5, zero
  ADD s5, s4, zero
  ADD s4, s5, zero
  ADD s5, s4, zero
  ADD s4, s5, zero
  ADD s5, s4, zero
  ADD s4, s5, zero
  ADD s5, s4, zero
  ADDI t6, sp, 96
  ADD s4, t6, zero
  ADD s6, s4, zero
  ADD s4, s6, zero
  ADD s6, s4, zero
  ADD s4, s6, zero
  ADD s6, s4, zero
  ADD s4, s6, zero
  ADD s6, s4, zero
  ADD s4, s6, zero
  ADD s6, s4, zero
  ADD s4, s6, zero
  ADD s6, s4, zero
  ADD s4, s6, zero
  ADDI t5, sp, 96
  ADD s6, t5, zero
  ADD s7, s6, zero
  ADD s6, s7, zero
  ADD s7, s6, zero
  ADD s6, s7, zero
  ADD s7, s6, zero
  ADD s6, s7, zero
  ADD s7, s6, zero
  ADD s6, s7, zero
  ADD s7, s6, zero
  ADD s6, s7, zero
  ADD s7, s6, zero
  ADDI t6, sp, 96
  ADD s6, t6, zero
  ADD s8, s6, zero
  ADD s6, s8, zero
  ADD s8, s6, zero
  ADD s6, s8, zero
  ADD s8, s6, zero
  ADD s6, s8, zero
  ADD s8, s6, zero
  ADD s6, s8, zero
  ADD s8, s6, zero
  ADD s6, s8, zero
  ADDI t5, sp, 96
  ADD s8, t5, zero
  ADD s9, s8, zero
  ADD s8, s9, zero
  ADD s9, s8, zero
  ADD s8, s9, zero
  ADD s9, s8, zero
  ADD s8, s9, zero
  ADD s9, s8, zero
  ADD s8, s9, zero
  ADD s9, s8, zero
  ADDI t6, sp, 96
  ADD s8, t6, zero
  ADD s10, s8, zero
  ADD s8, s10, zero
  ADD s10, s8, zero
  ADD s8, s10, zero
  ADD s10, s8, zero
  ADD s8, s10, zero
  ADD s10, s8, zero
  ADD s8, s10, zero
  ADDI t5, sp, 96
  ADD s10, t5, zero
  ADD s11, s10, zero
  ADD s10, s11, zero
  ADD s11, s10, zero
  ADD s10, s11, zero
  ADD s11, s10, zero
  ADD s10, s11, zero
  ADD s11, s10, zero
  ADDI t6, sp, 96
  ADD s10, t6, zero
  ADD ra, s10, zero
  ADD s10, ra, zero
  ADD ra, s10, zero
  ADD s10, ra, zero
  ADD ra, s10, zero
  ADD s10, ra, zero
  ADDI ra, sp, 96
  ADD ra, ra, zero
  ADD t0, ra, zero
  ADD ra, t0, zero
  ADD t0, ra, zero
  ADD ra, t0, zero
  ADD t4, ra, zero
  LUI ra, 513
  ADDI ra, ra, -960
  ADD ra, ra, sp
  SD t4, 0(ra)
  ADDI ra, sp, 96
  ADD ra, ra, zero
  ADD t1, ra, zero
  ADD ra, t1, zero
  ADD t1, ra, zero
  ADD t4, t1, zero
  LUI t1, 513
  ADDI t1, t1, -968
  ADD t1, t1, sp
  SD t4, 0(t1)
  ADDI t1, sp, 96
  ADD t1, t1, zero
  ADD t2, t1, zero
  ADD t1, t2, zero
  ADD t4, t1, zero
  LUI t1, 513
  ADDI t1, t1, -944
  ADD t1, t1, sp
  SD t4, 0(t1)
  ADDI t1, sp, 96
  ADD t1, t1, zero
  ADD a0, t1, zero
  ADD t4, a0, zero
  LUI a0, 513
  ADDI a0, a0, -952
  ADD a0, a0, sp
  SD t4, 0(a0)
  ADDI a0, sp, 96
  ADD a0, a0, zero
  ADD t4, a0, zero
  LUI t5, 513
  ADDI t5, t5, -976
  ADD t5, t5, sp
  SD t4, 0(t5)
  ADDI t4, sp, 96
  ADD t4, t4, zero
  LUI a0, 513
  ADDI a0, a0, -984
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
  LUI t4, 513
  ADDI t4, t4, -960
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 40
  LUI t4, 513
  ADDI t4, t4, -968
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 48
  LUI t4, 513
  ADDI t4, t4, -944
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 56
  LUI t4, 513
  ADDI t4, t4, -952
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 64
  LUI t4, 513
  ADDI t4, t4, -976
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 72
  LUI t4, 513
  ADDI t4, t4, -984
  ADD t4, t4, sp
  LD t4, 0(t4)
  SD t4, 0(s0)
  ADDI s0, sp, 80
  ADDI t4, sp, 96
  SD t4, 0(s0)
  LUI t4, 513
  ADDI t4, t4, -960
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 513
  ADDI t3, t3, -968
  ADD t3, t3, sp
  LD t3, 0(t3)
  LUI t4, 513
  ADDI t4, t4, -944
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 513
  ADDI t3, t3, -952
  ADD t3, t3, sp
  LD t3, 0(t3)
  LUI t4, 513
  ADDI t4, t4, -976
  ADD t4, t4, sp
  LD t4, 0(t4)
  LUI t3, 513
  ADDI t3, t3, -984
  ADD t3, t3, sp
  LD t3, 0(t3)
  ADDI t5, sp, 96
  CALL sum
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADD a0, zero, zero
  LUI t6, 513
  ADDI t6, t6, -936
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t5, 513
  ADDI t5, t5, -928
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t6, 513
  ADDI t6, t6, -920
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t5, 513
  ADDI t5, t5, -912
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t6, 513
  ADDI t6, t6, -904
  ADD t6, t6, sp
  LD s8, 0(t6)
  LUI t5, 513
  ADDI t5, t5, -896
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t6, 513
  ADDI t6, t6, -888
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI t5, 513
  ADDI t5, t5, -880
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI ra, 513
  ADDI ra, ra, -872
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 513
  ADDI t6, t6, -864
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t5, 513
  ADDI t5, t5, -856
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 513
  ADDI t6, t6, -848
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t5, 513
  ADDI t5, t5, -840
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t0, 513
  ADDI t0, t0, -832
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb7:
  LUI t3, 512
  ADDI t3, t3, 400
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 224
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 408
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 696
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 416
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 232
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 424
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 240
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 432
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 248
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 440
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 256
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 448
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 264
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 456
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 272
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 464
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 280
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 472
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 288
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 480
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
  ADDI t3, t3, 304
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 496
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 312
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 504
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 320
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 624
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 328
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 640
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 336
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 656
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 344
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 672
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 360
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 688
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 376
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 512
  ADDI t4, t4, 696
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s1, t4, 2
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb8
  JAL zero, bb9
bb8:
  LUI t3, 512
  ADDI t3, t3, 376
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 976
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 360
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 960
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 344
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 944
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 336
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 928
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 328
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 912
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 320
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 896
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 312
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 880
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 304
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 784
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 296
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 776
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 288
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 768
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 280
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 760
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 272
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 752
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t3, 512
  ADDI t3, t3, 744
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 256
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 736
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 248
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 728
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 240
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 720
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 232
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 712
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 224
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 704
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb10
bb9:
  LUI t4, 512
  ADDI t4, t4, 392
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
  ADDI t3, t3, 336
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 216
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 328
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 208
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 320
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 200
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 312
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 192
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 304
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 184
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 296
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 176
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 288
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 168
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 280
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 160
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 272
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 152
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 264
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 144
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 256
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 136
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 248
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 128
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 240
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 120
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 232
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 112
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s0, zero
  LUI t3, 512
  ADDI t3, t3, 104
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 224
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 96
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb4
bb10:
  LUI t3, 512
  ADDI t3, t3, 704
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 512
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 712
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 520
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 720
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 528
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 728
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 536
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 736
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 544
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 744
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 552
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 752
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 560
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 760
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 568
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 768
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 576
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 776
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 584
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 784
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 592
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 880
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 600
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 896
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 608
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 912
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 616
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 928
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 632
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 944
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 648
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 960
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 664
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 976
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 680
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 512
  ADDI t4, t4, 552
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s5, t4, 2
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb11
  JAL zero, bb12
bb11:
  LUI t3, 512
  ADDI t3, t3, 680
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1240
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 664
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1224
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 648
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1208
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 632
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1192
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 616
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1176
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 608
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1160
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 600
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1144
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 592
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1128
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 584
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1048
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 576
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1040
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 568
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1032
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 560
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1024
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 544
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 1016
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t3, 512
  ADDI t3, t3, 1008
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 528
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1000
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 520
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 992
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 512
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 984
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb13
bb12:
  LUI t4, 512
  ADDI t4, t4, 696
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  LUI t3, 512
  ADDI t3, t3, 680
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 688
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 664
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 672
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 648
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 656
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 632
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 640
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 616
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 624
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 608
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 504
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 600
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 496
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 592
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 488
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 584
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 480
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 576
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 472
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 568
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 464
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 560
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 456
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 552
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 448
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 544
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 440
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 536
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 432
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 528
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 424
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 520
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 416
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s0, zero
  LUI t3, 512
  ADDI t3, t3, 408
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 512
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 400
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb7
bb13:
  LUI t3, 512
  ADDI t3, t3, 984
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 792
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 992
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 800
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1000
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 808
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1008
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 816
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1016
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 824
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1024
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 832
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1032
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 840
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1040
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 848
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1048
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 856
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1128
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 864
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1144
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 872
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1160
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 888
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1176
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 904
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1192
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 920
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1208
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 936
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1224
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 952
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1240
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI a4, 512
  ADDI a4, a4, 968
  ADD a4, a4, sp
  SW t4, 0(a4)
  LUI t4, 512
  ADDI t4, t4, 816
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI a4, t4, 2
  XOR a6, a4, zero
  SLTU a4, zero, a6
  BNE a4, zero, bb14
  JAL zero, bb15
bb14:
  LUI t3, 512
  ADDI t3, t3, 968
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1488
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 952
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1472
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 936
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1456
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 920
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1440
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 904
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1424
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 888
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1408
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 872
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1392
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 864
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1376
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 856
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1360
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 848
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1296
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 840
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1288
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 832
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1280
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 824
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1272
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 808
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 1264
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t3, 512
  ADDI t3, t3, 1256
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 792
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 1248
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb16
bb15:
  LUI t4, 512
  ADDI t4, t4, 552
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  LUI t3, 512
  ADDI t3, t3, 968
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 976
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 952
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 960
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 936
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 944
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 920
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 928
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 904
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 912
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 888
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 896
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 872
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 880
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 864
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 784
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 856
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 776
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 848
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 768
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 840
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 760
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 832
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 752
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s0, zero
  LUI t3, 512
  ADDI t3, t3, 744
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 824
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 736
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 816
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 728
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 808
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 720
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 800
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 712
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 792
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 704
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb10
bb16:
  LUI t3, 512
  ADDI t3, t3, 1248
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1056
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1256
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1064
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1264
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1072
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1272
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1080
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1280
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1088
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1288
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1096
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1296
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1104
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1360
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1112
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1376
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1120
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1392
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1136
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1408
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1152
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1424
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1168
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1440
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1184
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1456
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1200
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1472
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1216
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1488
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 1232
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 512
  ADDI t4, t4, 1064
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s9, t4, 2
  XOR s7, s9, zero
  SLTU s9, zero, s7
  BNE s9, zero, bb17
  JAL zero, bb18
bb17:
  LUI t3, 512
  ADDI t3, t3, 1232
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1720
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1216
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1704
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1200
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1688
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1184
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1672
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1168
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1656
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1152
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1640
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1136
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1624
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1120
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1608
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1112
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1592
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1104
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1576
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1096
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1528
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1088
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1520
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1080
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 1512
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t3, 512
  ADDI t3, t3, 1504
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1056
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 1496
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb19
bb18:
  LUI t4, 512
  ADDI t4, t4, 816
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  LUI t3, 512
  ADDI t3, t3, 1232
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1240
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1216
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1224
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1200
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1208
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1184
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1192
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1168
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1176
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1152
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1160
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1136
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1144
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1120
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1128
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1112
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1048
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1104
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1040
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1096
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1032
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1088
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1024
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1080
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 1016
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s0, zero
  LUI t3, 512
  ADDI t3, t3, 1008
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1072
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1000
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1064
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 992
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1056
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 984
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb13
bb19:
  LUI t3, 512
  ADDI t3, t3, 1496
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1304
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1504
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1312
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1512
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1320
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1520
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1328
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1528
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1336
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1576
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1344
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1592
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1352
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1608
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1368
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1624
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1384
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1640
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1400
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1656
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1416
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1672
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1432
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1688
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1448
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1704
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1464
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1720
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 1480
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 512
  ADDI t4, t4, 1312
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s2, t4, 2
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb20
  JAL zero, bb21
bb20:
  LUI t3, 512
  ADDI t3, t3, 1480
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1936
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1464
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1920
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1448
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1904
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1432
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1888
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1416
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1872
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1400
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1856
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1384
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1840
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1368
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 1824
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t3, 512
  ADDI t3, t3, 1808
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1344
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1800
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1336
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1784
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1328
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1744
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1320
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1736
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1304
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 1728
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb22
bb21:
  LUI t4, 512
  ADDI t4, t4, 1064
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  LUI t3, 512
  ADDI t3, t3, 1480
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1488
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1464
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1472
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1448
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1456
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1432
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1440
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1416
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1424
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1400
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1408
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1384
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1392
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1368
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1376
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1352
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1360
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1344
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1296
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1336
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1288
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1328
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1280
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1320
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1272
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1312
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 1264
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s0, zero
  LUI t3, 512
  ADDI t3, t3, 1256
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1304
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 1248
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb16
bb22:
  LUI t3, 512
  ADDI t3, t3, 1728
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1536
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1736
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1544
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1744
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1552
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1784
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1560
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1800
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1568
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1808
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1584
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1824
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1600
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1840
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1616
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1856
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1632
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1872
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1648
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1888
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1664
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1904
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1680
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1920
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1696
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1936
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 1712
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 512
  ADDI t4, t4, 1584
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s5, t4, 2
  XOR s8, s5, zero
  SLTU s5, zero, s8
  BNE s5, zero, bb23
  JAL zero, bb24
bb23:
  ADD t4, zero, zero
  LUI t3, 513
  ADDI t3, t3, -1960
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1696
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1968
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1680
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1984
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1664
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -2000
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1648
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -2016
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1632
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -2032
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1616
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -2048
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1600
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 2032
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1568
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 2016
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1560
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 2000
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1552
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1984
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1544
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1968
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1536
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 1944
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb25
bb24:
  LUI t4, 512
  ADDI t4, t4, 1312
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  LUI t3, 512
  ADDI t3, t3, 1712
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1720
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1696
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1704
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1680
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1688
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1664
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1672
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1648
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1656
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1632
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1640
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1616
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1624
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1600
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1608
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1584
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1592
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1568
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1576
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1560
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1528
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1552
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1520
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1544
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 1512
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s0, zero
  LUI t3, 512
  ADDI t3, t3, 1504
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1536
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 1496
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb19
bb25:
  LUI t3, 512
  ADDI t3, t3, 1944
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1752
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1968
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1760
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1984
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1768
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 2000
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1776
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 2016
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1792
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 2032
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1816
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -2048
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1832
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -2032
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1848
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -2016
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1864
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -2000
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1880
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1984
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1896
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1968
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1912
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1960
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI a5, 512
  ADDI a5, a5, 1928
  ADD a5, a5, sp
  SW t4, 0(a5)
  LUI t4, 512
  ADDI t4, t4, 1928
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI a5, t4, 2
  XOR t2, a5, zero
  SLTU a5, zero, t2
  BNE a5, zero, bb26
  JAL zero, bb27
bb26:
  ADD t4, zero, zero
  LUI t3, 513
  ADDI t3, t3, -1776
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1896
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1784
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1880
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1800
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1864
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1816
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1848
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1832
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1832
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1848
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1816
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1864
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1792
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1880
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1776
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1896
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1768
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1912
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1760
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1928
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1752
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 513
  ADDI t6, t6, -1944
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb28
bb27:
  LUI t4, 512
  ADDI t4, t4, 1584
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  LUI t3, 512
  ADDI t3, t3, 1928
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1936
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1912
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1920
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1896
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1904
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1880
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1888
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1864
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1872
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1848
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1856
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1832
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1840
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1816
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 1824
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s0, zero
  LUI t3, 512
  ADDI t3, t3, 1808
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1792
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1800
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1776
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1784
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1768
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1744
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1760
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1736
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1752
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 512
  ADDI t6, t6, 1728
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb22
bb28:
  LUI t3, 513
  ADDI t3, t3, -1944
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1952
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1928
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1960
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1912
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1976
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1896
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1992
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1880
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 2008
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1864
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 2024
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1848
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 2040
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1832
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -2040
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1816
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -2024
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1800
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -2008
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1784
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1992
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1776
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 513
  ADDI t5, t5, -1976
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 513
  ADDI t4, t4, -1976
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s11, t4, 2
  XOR ra, s11, zero
  SLTU s11, zero, ra
  BNE s11, zero, bb29
  JAL zero, bb30
bb29:
  ADD t4, zero, zero
  LUI t3, 513
  ADDI t3, t3, -1608
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -2008
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1616
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -2024
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1632
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -2040
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1648
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 2040
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1664
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 2024
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1680
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 2008
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1696
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1992
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1712
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1976
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1728
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1960
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1744
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1952
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 513
  ADDI t6, t6, -1760
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb31
bb30:
  LUI t4, 512
  ADDI t4, t4, 1928
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  LUI t3, 513
  ADDI t3, t3, -1960
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1976
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1968
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1992
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1984
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -2008
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -2000
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -2024
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -2016
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -2040
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -2032
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 2040
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -2048
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 2024
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 2032
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 2008
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 2016
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1992
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 2000
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1976
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1984
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1960
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 512
  ADDI t3, t3, 1968
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 512
  ADDI t3, t3, 1952
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 512
  ADDI t5, t5, 1944
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb25
bb31:
  LUI t3, 513
  ADDI t3, t3, -1760
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1952
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1744
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1936
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1728
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1920
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1712
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1904
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1696
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1888
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1680
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1872
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1664
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1856
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1648
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1840
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1632
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1824
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1616
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1808
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1608
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t1, 513
  ADDI t1, t1, -1792
  ADD t1, t1, sp
  SW t4, 0(t1)
  LUI t4, 513
  ADDI t4, t4, -1792
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI t1, t4, 2
  XOR a7, t1, zero
  SLTU t1, zero, a7
  BNE t1, zero, bb32
  JAL zero, bb33
bb32:
  LUI t3, 513
  ADDI t3, t3, -1808
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1456
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1824
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1472
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1840
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1488
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1856
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1504
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1872
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 513
  ADDI t6, t6, -1520
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t3, 513
  ADDI t3, t3, -1536
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1904
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1544
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1920
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1560
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1936
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1576
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1952
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 513
  ADDI t5, t5, -1592
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb34
bb33:
  LUI t4, 513
  ADDI t4, t4, -1976
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  LUI t3, 513
  ADDI t3, t3, -1776
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1792
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1784
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1808
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1800
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1824
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1816
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1840
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1832
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1856
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1848
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1872
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1864
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1888
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1880
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1904
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1896
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1920
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1912
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1936
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1928
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1952
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 513
  ADDI t6, t6, -1944
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb28
bb34:
  LUI t3, 513
  ADDI t3, t3, -1592
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1768
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1576
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1752
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1560
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1736
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1544
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1720
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1536
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1704
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1520
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1688
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1504
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1672
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1488
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1656
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1472
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1640
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1456
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 513
  ADDI t5, t5, -1624
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 513
  ADDI t4, t4, -1704
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s9, t4, 2
  XOR s8, s9, zero
  SLTU s9, zero, s8
  BNE s9, zero, bb35
  JAL zero, bb36
bb35:
  LUI t3, 513
  ADDI t3, t3, -1624
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1320
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1640
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1336
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1656
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1352
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1672
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1368
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1688
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1384
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1720
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 513
  ADDI t6, t6, -1400
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t3, 513
  ADDI t3, t3, -1416
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1752
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1424
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1768
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 513
  ADDI t5, t5, -1440
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb37
bb36:
  LUI t4, 513
  ADDI t4, t4, -1792
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  LUI t3, 513
  ADDI t3, t3, -1608
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1624
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1616
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1640
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1632
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1656
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1648
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1672
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1664
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1688
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1680
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1704
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1696
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1720
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1712
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1736
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1728
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1752
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1744
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1768
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 513
  ADDI t6, t6, -1760
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb31
bb37:
  LUI t3, 513
  ADDI t3, t3, -1440
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1600
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1424
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1584
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1416
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1568
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1400
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1552
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1384
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1528
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1368
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1512
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1352
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1496
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1336
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1480
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1320
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI a6, 513
  ADDI a6, a6, -1464
  ADD a6, a6, sp
  SW t4, 0(a6)
  LUI t4, 513
  ADDI t4, t4, -1568
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI a6, t4, 2
  XOR a1, a6, zero
  SLTU a6, zero, a1
  BNE a6, zero, bb38
  JAL zero, bb39
bb38:
  ADD t4, zero, zero
  LUI t3, 513
  ADDI t3, t3, -1200
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1480
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1208
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1496
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1224
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1512
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1240
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1528
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1256
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1552
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1272
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1584
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1288
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1600
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 513
  ADDI t5, t5, -1304
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb40
bb39:
  LUI t4, 513
  ADDI t4, t4, -1704
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  LUI t3, 513
  ADDI t3, t3, -1464
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1456
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1480
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1472
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1496
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1488
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1512
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1504
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1528
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 513
  ADDI t6, t6, -1520
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s0, zero
  LUI t3, 513
  ADDI t3, t3, -1536
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1552
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1544
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1568
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1560
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1584
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1576
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1600
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 513
  ADDI t5, t5, -1592
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb34
bb40:
  LUI t3, 513
  ADDI t3, t3, -1304
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1448
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1288
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1432
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1272
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1408
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1256
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1392
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1240
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1376
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1224
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1360
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1208
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1344
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1200
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 513
  ADDI t6, t6, -1328
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 513
  ADDI t4, t4, -1328
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI s6, t4, 2
  XOR s0, s6, zero
  SLTU s6, zero, s0
  BNE s6, zero, bb41
  JAL zero, bb42
bb41:
  ADD t4, zero, zero
  LUI t3, 513
  ADDI t3, t3, -1096
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1360
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1104
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1376
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1120
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1392
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1136
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1408
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1152
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1432
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1168
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1448
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 513
  ADDI t5, t5, -1184
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb43
bb42:
  LUI t4, 513
  ADDI t4, t4, -1568
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  LUI t3, 513
  ADDI t3, t3, -1328
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1320
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1344
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1336
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1360
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1352
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1376
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1368
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1392
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1384
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1408
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 513
  ADDI t6, t6, -1400
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s0, zero
  LUI t3, 513
  ADDI t3, t3, -1416
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1432
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1424
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1448
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 513
  ADDI t5, t5, -1440
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb37
bb43:
  LUI t3, 513
  ADDI t3, t3, -1184
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1312
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1168
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1296
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1152
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1280
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1136
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1264
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1120
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1248
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1104
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1232
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1096
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI a0, 513
  ADDI a0, a0, -1216
  ADD a0, a0, sp
  SW t4, 0(a0)
  LUI t4, 513
  ADDI t4, t4, -1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI a0, t4, 2
  XOR s8, a0, zero
  SLTU a0, zero, s8
  BNE a0, zero, bb44
  JAL zero, bb45
bb44:
  ADD t4, zero, zero
  LUI t3, 513
  ADDI t3, t3, -1008
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1248
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1016
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1264
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1032
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1280
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1048
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1296
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1064
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1312
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 513
  ADDI t6, t6, -1080
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb46
bb45:
  LUI t4, 513
  ADDI t4, t4, -1328
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  LUI t3, 513
  ADDI t3, t3, -1200
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1216
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1208
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1232
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1224
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1248
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1240
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1264
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1256
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1280
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1272
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1296
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1288
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1312
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 513
  ADDI t5, t5, -1304
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb40
bb46:
  LUI t3, 513
  ADDI t3, t3, -1080
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1192
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1064
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1176
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1048
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1160
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1032
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1144
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1016
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1128
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1008
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t1, 513
  ADDI t1, t1, -1112
  ADD t1, t1, sp
  SW t4, 0(t1)
  LUI t4, 513
  ADDI t4, t4, -1112
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI t1, t4, 2
  XOR ra, t1, zero
  SLTU t1, zero, ra
  BNE t1, zero, bb47
  JAL zero, bb48
bb47:
  ADD ra, zero, zero
  LUI t4, 513
  ADDI t4, t4, -1144
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t1, t4, zero
  LUI t4, 513
  ADDI t4, t4, -1160
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s9, t4, zero
  LUI t4, 513
  ADDI t4, t4, -1176
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a6, t4, zero
  LUI t3, 513
  ADDI t3, t3, -1192
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 513
  ADDI t6, t6, -992
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb49
bb48:
  LUI t4, 513
  ADDI t4, t4, -1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  LUI t3, 513
  ADDI t3, t3, -1096
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1112
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1104
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1128
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1120
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1144
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1136
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1160
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1152
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1176
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1168
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1192
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 513
  ADDI t5, t5, -1184
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb43
bb49:
  LUI t3, 513
  ADDI t3, t3, -992
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 513
  ADDI t6, t6, -1088
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, a6, zero
  LUI t5, 513
  ADDI t5, t5, -1072
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s9, zero
  LUI t6, 513
  ADDI t6, t6, -1056
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, t1, zero
  LUI t5, 513
  ADDI t5, t5, -1040
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, ra, zero
  LUI a4, 513
  ADDI a4, a4, -1024
  ADD a4, a4, sp
  SW t4, 0(a4)
  LUI t4, 513
  ADDI t4, t4, -1024
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLTI a4, t4, 2
  XOR a2, a4, zero
  SLTU a4, zero, a2
  BNE a4, zero, bb50
  JAL zero, bb51
bb50:
  ADD a2, zero, zero
  LUI t4, 513
  ADDI t4, t4, -1056
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a4, t4, zero
  LUI t4, 513
  ADDI t4, t4, -1072
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  LUI t4, 513
  ADDI t4, t4, -1088
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s4, t4, zero
  JAL zero, bb52
bb51:
  LUI t4, 513
  ADDI t4, t4, -1112
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  LUI t3, 513
  ADDI t3, t3, -1008
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1024
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1016
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1040
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1032
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1056
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1048
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1072
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 513
  ADDI t3, t3, -1064
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 513
  ADDI t3, t3, -1088
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 513
  ADDI t6, t6, -1080
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb46
bb52:
  ADD t4, s4, zero
  LUI t5, 513
  ADDI t5, t5, -1000
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD s2, s3, zero
  ADD s6, a4, zero
  ADD s0, a2, zero
  SLTI a5, s0, 2
  XOR s5, a5, zero
  SLTU a5, zero, s5
  BNE a5, zero, bb53
  JAL zero, bb54
bb53:
  ADD s5, zero, zero
  ADD a5, s2, zero
  LUI t4, 513
  ADDI t4, t4, -1000
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a3, t4, zero
  JAL zero, bb55
bb54:
  LUI t4, 513
  ADDI t4, t4, -1024
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s1, t4, 1
  ADD ra, s1, zero
  ADD t1, s0, zero
  ADD s9, s6, zero
  ADD a6, s2, zero
  LUI t3, 513
  ADDI t3, t3, -1000
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 513
  ADDI t6, t6, -992
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb49
bb55:
  ADD a7, a3, zero
  ADD s11, a5, zero
  ADD s10, s5, zero
  SLTI s7, s10, 2
  XOR t0, s7, zero
  SLTU s7, zero, t0
  BNE s7, zero, bb56
  JAL zero, bb57
bb56:
  ADD s7, zero, zero
  ADD t0, a7, zero
  JAL zero, bb58
bb57:
  ADDIW s1, s0, 1
  ADD a2, s1, zero
  ADD a4, s10, zero
  ADD s3, s11, zero
  ADD s4, a7, zero
  JAL zero, bb52
bb58:
  ADD s1, t0, zero
  ADD a0, s7, zero
  SLTI s8, a0, 2
  XOR t2, s8, zero
  SLTU s8, zero, t2
  BNE s8, zero, bb59
  JAL zero, bb60
bb59:
  LUI s8, 256
  ADDI s8, s8, 0
  LUI t4, 512
  ADDI t4, t4, 392
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW t2, t4, s8
  ADDI t5, sp, 96
  ADD s8, t5, t2
  LUI t2, 128
  ADDI t2, t2, 0
  LUI t4, 512
  ADDI t4, t4, 696
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a1, t4, t2
  ADD t2, s8, a1
  LUI s8, 64
  ADDI s8, s8, 0
  LUI t4, 512
  ADDI t4, t4, 552
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a1, t4, s8
  ADD s8, t2, a1
  LUI t2, 32
  ADDI t2, t2, 0
  LUI t4, 512
  ADDI t4, t4, 816
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a1, t4, t2
  ADD t2, s8, a1
  LUI s8, 16
  ADDI s8, s8, 0
  LUI t4, 512
  ADDI t4, t4, 1064
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a1, t4, s8
  ADD s8, t2, a1
  LUI t2, 8
  ADDI t2, t2, 0
  LUI t4, 512
  ADDI t4, t4, 1312
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a1, t4, t2
  ADD t2, s8, a1
  LUI s8, 4
  ADDI s8, s8, 0
  LUI t4, 512
  ADDI t4, t4, 1584
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a1, t4, s8
  ADD s8, t2, a1
  LUI t2, 2
  ADDI t2, t2, 0
  LUI t4, 512
  ADDI t4, t4, 1928
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a1, t4, t2
  ADD t2, s8, a1
  LUI s8, 1
  ADDI s8, s8, 0
  LUI t4, 513
  ADDI t4, t4, -1976
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a1, t4, s8
  ADD s8, t2, a1
  LUI t2, 1
  ADDI t2, t2, -2048
  LUI t4, 513
  ADDI t4, t4, -1792
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a1, t4, t2
  ADD t2, s8, a1
  ADDI s8, zero, 1024
  LUI t4, 513
  ADDI t4, t4, -1704
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a1, t4, s8
  ADD s8, t2, a1
  ADDI t2, zero, 512
  LUI t4, 513
  ADDI t4, t4, -1568
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a1, t4, t2
  ADD t2, s8, a1
  ADDI s8, zero, 256
  LUI t4, 513
  ADDI t4, t4, -1328
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a1, t4, s8
  ADD s8, t2, a1
  ADDI t2, zero, 128
  LUI t4, 513
  ADDI t4, t4, -1216
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a1, t4, t2
  ADD t2, s8, a1
  ADDI s8, zero, 64
  LUI t4, 513
  ADDI t4, t4, -1112
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a1, t4, s8
  ADD s8, t2, a1
  ADDI t2, zero, 32
  LUI t4, 513
  ADDI t4, t4, -1024
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a1, t4, t2
  ADD t2, s8, a1
  ADDI s8, zero, 16
  MULW a1, s0, s8
  ADD s8, t2, a1
  ADDI t2, zero, 8
  MULW a1, s10, t2
  ADD t2, s8, a1
  ADDI s8, zero, 4
  MULW a1, a0, s8
  ADD s8, t2, a1
  SW s1, 0(s8)
  ADDIW s8, s1, 1
  ADDIW t2, a0, 1
  ADD s7, t2, zero
  ADD t0, s8, zero
  JAL zero, bb58
bb60:
  ADDIW s7, s10, 1
  ADD s5, s7, zero
  ADD a5, a0, zero
  ADD a3, s1, zero
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
  ADD s8, s0, zero
  LW s0, 0(s8)
  ADDI s8, s1, 8
  ADD s1, s8, zero
  LW s8, 0(s1)
  ADDW s1, s0, s8
  ADD s0, s2, zero
  ADD s2, s0, zero
  ADDI s0, s2, 4
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, s3, 32
  ADD s2, s1, zero
  ADDI s1, s2, 8
  ADD s2, s1, zero
  LW s1, 0(s2)
  ADDW s2, s0, s1
  ADD s0, s4, zero
  ADD s1, s0, zero
  ADDI s0, s1, 16
  ADDI s1, s0, 8
  ADD s0, s1, zero
  LW s1, 0(s0)
  ADDW s0, s2, s1
  ADDI s1, s5, 128
  ADDI s2, s1, 64
  ADDI s1, s2, 32
  ADD s2, s1, zero
  ADD s1, s2, zero
  ADDI s2, s1, 4
  LW s1, 0(s2)
  ADDW s2, s0, s1
  ADD s0, s6, zero
  ADD s1, s0, zero
  ADD s0, s1, zero
  ADDI s1, s0, 32
  ADDI s0, s1, 16
  ADDI s1, s0, 8
  ADD s0, s1, zero
  LW s1, 0(s0)
  ADDW s0, s2, s1
  ADDI s1, s7, 512
  ADDI s2, s1, 256
  ADDI s1, s2, 128
  ADDI s2, s1, 64
  ADD s1, s2, zero
  ADD s2, s1, zero
  ADD s1, s2, zero
  ADDI s2, s1, 4
  LW s1, 0(s2)
  ADDW s2, s0, s1
  ADD s0, s9, zero
  ADD s1, s0, zero
  ADD s0, s1, zero
  ADDI s1, s0, 128
  ADDI s0, s1, 64
  ADDI s1, s0, 32
  ADD s0, s1, zero
  ADD s1, s0, zero
  ADD s0, s1, zero
  LW s1, 0(s0)
  ADDW s0, s2, s1
  ADD s1, s10, zero
  ADD s2, s1, zero
  ADDI s1, s2, 512
  ADDI s2, s1, 256
  ADD s1, s2, zero
  ADD s2, s1, zero
  ADDI s1, s2, 32
  ADD s2, s1, zero
  ADD s1, s2, zero
  ADDI s2, s1, 4
  LW s1, 0(s2)
  ADDW s2, s0, s1
  ADD s0, s11, zero
  ADD s1, s0, zero
  ADDI s0, s1, 1024
  ADDI s1, s0, 512
  ADDI s0, s1, 256
  ADDI s1, s0, 128
  ADDI s0, s1, 64
  ADD s1, s0, zero
  ADD s0, s1, zero
  ADDI s1, s0, 8
  ADDI s0, s1, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  ADD s1, ra, zero
  ADD s2, s1, zero
  LUI s1, 1
  ADDI s1, s1, -2048
  ADD s3, s2, s1
  ADDI s1, s3, 1024
  ADD s2, s1, zero
  ADD s1, s2, zero
  ADDI s2, s1, 128
  ADD s1, s2, zero
  ADD s2, s1, zero
  ADDI s1, s2, 16
  ADDI s2, s1, 8
  ADD s1, s2, zero
  LW s2, 0(s1)
  ADDW s1, s0, s2
  LUI s0, 4
  ADDI s0, s0, 0
  ADD s2, t0, s0
  LUI s0, 2
  ADDI s0, s0, 0
  ADD s3, s2, s0
  ADD s0, s3, zero
  ADD s2, s0, zero
  ADDI s0, s2, 1024
  ADDI s2, s0, 512
  ADDI s0, s2, 256
  ADD s2, s0, zero
  ADD s0, s2, zero
  ADDI s2, s0, 32
  ADD s0, s2, zero
  ADD s2, s0, zero
  ADD s0, s2, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADD s1, t1, zero
  ADD s2, s1, zero
  ADD s1, s2, zero
  ADD s2, s1, zero
  ADD s1, s2, zero
  ADD s2, s1, zero
  ADD s1, s2, zero
  ADDI s2, s1, 256
  ADDI s1, s2, 128
  ADDI s2, s1, 64
  ADDI s1, s2, 32
  ADDI s2, s1, 16
  ADDI s1, s2, 8
  ADDI s2, s1, 4
  LW s1, 0(s2)
  ADDW s2, s0, s1
  ADD s0, t2, zero
  ADD s1, s0, zero
  ADD s0, s1, zero
  ADD s1, s0, zero
  ADD s0, s1, zero
  ADD s1, s0, zero
  ADD s0, s1, zero
  ADD s1, s0, zero
  ADD s0, s1, zero
  ADD s1, s0, zero
  ADDI s0, s1, 64
  ADDI s1, s0, 32
  ADDI s0, s1, 16
  ADDI s1, s0, 8
  ADDI s0, s1, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LUI s1, 32
  ADDI s1, s1, 0
  ADD s2, a1, s1
  LUI s1, 16
  ADDI s1, s1, 0
  ADD s3, s2, s1
  LUI s1, 8
  ADDI s1, s1, 0
  ADD s2, s3, s1
  LUI s1, 4
  ADDI s1, s1, 0
  ADD s3, s2, s1
  ADD s1, s3, zero
  ADD s2, s1, zero
  ADD s1, s2, zero
  ADD s2, s1, zero
  ADDI s1, s2, 512
  ADDI s2, s1, 256
  ADDI s1, s2, 128
  ADD s2, s1, zero
  ADD s1, s2, zero
  ADDI s2, s1, 16
  ADD s1, s2, zero
  ADD s2, s1, zero
  LW s1, 0(s2)
  ADDW s2, s0, s1
  ADD s0, a2, zero
  ADD s1, s0, zero
  ADD s0, s1, zero
  ADD s1, s0, zero
  ADD s0, s1, zero
  LUI s1, 2
  ADDI s1, s1, 0
  ADD s3, s0, s1
  LUI s0, 1
  ADDI s0, s0, 0
  ADD s1, s3, s0
  LUI s0, 1
  ADDI s0, s0, -2048
  ADD s3, s1, s0
  ADDI s0, s3, 1024
  ADDI s1, s0, 512
  ADD s0, s1, zero
  ADD s1, s0, zero
  ADDI s0, s1, 64
  ADD s1, s0, zero
  ADDI s0, s1, 16
  ADD s1, s0, zero
  ADDI s0, s1, 4
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LUI s1, 128
  ADDI s1, s1, 0
  ADD s2, a3, s1
  LUI s1, 64
  ADDI s1, s1, 0
  ADD s3, s2, s1
  ADD s1, s3, zero
  ADD s2, s1, zero
  LUI s1, 8
  ADDI s1, s1, 0
  ADD s3, s2, s1
  ADD s1, s3, zero
  LUI s2, 2
  ADDI s2, s2, 0
  ADD s3, s1, s2
  ADD s1, s3, zero
  ADD s2, s1, zero
  ADD s1, s2, zero
  ADDI s2, s1, 512
  ADDI s1, s2, 256
  ADDI s2, s1, 128
  ADDI s1, s2, 64
  ADD s2, s1, zero
  ADD s1, s2, zero
  ADDI s2, s1, 8
  ADDI s1, s2, 4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADD s0, a4, zero
  ADD s2, s0, zero
  LUI s0, 64
  ADDI s0, s0, 0
  ADD s3, s2, s0
  ADD s0, s3, zero
  ADD s2, s0, zero
  ADD s0, s2, zero
  LUI s2, 4
  ADDI s2, s2, 0
  ADD s3, s0, s2
  ADD s0, s3, zero
  ADD s2, s0, zero
  LUI s0, 1
  ADDI s0, s0, -2048
  ADD s3, s2, s0
  ADDI s0, s3, 1024
  ADD s2, s0, zero
  ADD s0, s2, zero
  ADD s2, s0, zero
  ADD s0, s2, zero
  ADD s2, s0, zero
  ADD s0, s2, zero
  ADD s2, s0, zero
  ADD s0, s2, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
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
