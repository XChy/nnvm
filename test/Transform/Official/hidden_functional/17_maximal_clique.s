.global main
.global is_clique
.global maxCliques
.section .bss


store:
.space 120

graph:
.space 3600

.section .data
m:
.word 0x00000000
n:
.word 0x00000000

maxM:
.word 0x00000258

maxN:
.word 0x0000001e
.section .text
main:
  LUI t0, 1048575
  ADDIW t0, t0, -784
  ADD sp, sp, t0
  LUI t5, 1
  ADDIW t5, t5, 704
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 712
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 720
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 728
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 736
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 744
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 752
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 760
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 768
  ADD t5, t5, sp
  SD s0, 0(t5)
  CALL getint
  ADD s0, a0, zero
  LA s1, n
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, m
  SW s0, 0(s1)
  ADD s0, zero, zero
  JAL zero, bb1
bb1:
  ADD s1, s0, zero
  LA s2, m
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s2, zero, 8
  MULW s3, s1, s2
  ADDI t5, sp, 0
  ADD s2, t5, s3
  CALL getint
  ADD s3, a0, zero
  SW s3, 0(s2)
  ADDI s3, s2, 4
  CALL getint
  ADD s2, a0, zero
  SW s2, 0(s3)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb1
bb3:
  ADD s0, zero, zero
  JAL zero, bb4
bb4:
  ADD s1, s0, zero
  LA s2, m
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s2, zero, 8
  MULW s3, s1, s2
  ADDI t5, sp, 0
  ADD s2, t5, s3
  LW s3, 0(s2)
  ADDI s4, zero, 120
  MULW s5, s3, s4
  LA s3, graph
  ADD s4, s3, s5
  ADDI s3, s2, 4
  LW s5, 0(s3)
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADD s5, s4, s7
  ADDI s4, zero, 1
  SW s4, 0(s5)
  LW s4, 0(s3)
  ADDI s3, zero, 120
  MULW s5, s4, s3
  LA s3, graph
  ADD s4, s3, s5
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s5, s3, s2
  ADD s2, s4, s5
  ADDI s3, zero, 1
  SW s3, 0(s2)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb4
bb6:
  ADD a0, zero, zero
  ADDI a1, zero, 1
  CALL maxCliques
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADD a0, zero, zero
  LUI ra, 1
  ADDIW ra, ra, 704
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDIW t5, t5, 712
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 720
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 728
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 736
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 744
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 752
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 760
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 768
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, 784
  ADD sp, sp, t0
  JALR zero, 0(ra)
is_clique:
  ADDI sp, sp, -96
  SD s9, 0(sp)
  SD s8, 8(sp)
  SD ra, 16(sp)
  SD s4, 24(sp)
  SD s3, 32(sp)
  SD s2, 40(sp)
  SD s6, 48(sp)
  SD s1, 56(sp)
  SD s7, 64(sp)
  SD s5, 72(sp)
  SD s0, 80(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 1
  JAL zero, bb8
bb8:
  ADD s2, s1, zero
  SLT s3, s2, s0
  BNE s3, zero, bb9
  JAL zero, bb10
bb9:
  ADDIW s3, s2, 1
  ADD s4, s3, zero
  JAL zero, bb11
bb10:
  ADDI a0, zero, 1
  LD s9, 0(sp)
  LD s8, 8(sp)
  LD ra, 16(sp)
  LD s4, 24(sp)
  LD s3, 32(sp)
  LD s2, 40(sp)
  LD s6, 48(sp)
  LD s1, 56(sp)
  LD s7, 64(sp)
  LD s5, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb11:
  ADD s5, s4, zero
  SLT s6, s5, s0
  BNE s6, zero, bb12
  JAL zero, bb13
bb12:
  ADDI s6, zero, 4
  MULW s7, s2, s6
  LA s6, store
  ADD s8, s6, s7
  LW s6, 0(s8)
  ADDI s7, zero, 120
  MULW s8, s6, s7
  LA s6, graph
  ADD s7, s6, s8
  ADDI s6, zero, 4
  MULW s8, s5, s6
  LA s6, store
  ADD s9, s6, s8
  LW s6, 0(s9)
  ADDI s8, zero, 4
  MULW s9, s6, s8
  ADD s6, s7, s9
  LW s7, 0(s6)
  XOR s6, s7, zero
  SLTIU s7, s6, 1
  BNE s7, zero, bb14
  JAL zero, bb15
bb13:
  ADD s1, s3, zero
  JAL zero, bb8
bb14:
  ADD a0, zero, zero
  LD s9, 0(sp)
  LD s8, 8(sp)
  LD ra, 16(sp)
  LD s4, 24(sp)
  LD s3, 32(sp)
  LD s2, 40(sp)
  LD s6, 48(sp)
  LD s1, 56(sp)
  LD s7, 64(sp)
  LD s5, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb15:
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb11
maxCliques:
  ADDI sp, sp, -128
  SD s11, 16(sp)
  SD s10, 24(sp)
  SD ra, 32(sp)
  SD s0, 40(sp)
  SD s5, 48(sp)
  SD s7, 56(sp)
  SD s8, 64(sp)
  SD s1, 72(sp)
  SD s6, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  SD s9, 112(sp)
  ADD s0, a0, zero
  ADD s0, a1, zero
  ADD s1, zero, zero
  ADDI s2, zero, 1
  ADD s3, zero, zero
  JAL zero, bb17
bb17:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  LA s7, n
  LW s8, 0(s7)
  SLT s7, s8, s5
  XORI s8, s7, 1
  BNE s8, zero, bb18
  JAL zero, bb20
bb18:
  ADDI s7, zero, 4
  MULW s8, s0, s7
  LA s7, store
  ADD s9, s7, s8
  SW s5, 0(s9)
  ADDIW s7, s0, 1
  ADDI s8, zero, 1
  JAL zero, bb27
bb19:
  LW t4, 8(sp)
  ADD t2, t4, zero
  XOR a2, t2, zero
  SLTU t2, zero, a2
  BNE t2, zero, bb21
  JAL zero, bb35
bb20:
  ADD a0, s4, zero
  LD s11, 16(sp)
  LD s10, 24(sp)
  LD ra, 32(sp)
  LD s0, 40(sp)
  LD s5, 48(sp)
  LD s7, 56(sp)
  LD s8, 64(sp)
  LD s1, 72(sp)
  LD s6, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD s9, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb21:
  SLT t2, s4, s0
  BNE t2, zero, bb23
  JAL zero, bb36
bb22:
  ADD t2, a2, zero
  ADD a3, a1, zero
  ADDIW a4, s5, 1
  ADD s1, a3, zero
  ADD s2, a4, zero
  ADD s3, t2, zero
  JAL zero, bb17
bb23:
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb24
bb24:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  ADD a0, s5, zero
  ADD a1, s7, zero
  CALL maxCliques
  ADD t0, a0, zero
  LW t4, 12(sp)
  SLT t1, t4, t0
  BNE t1, zero, bb25
  JAL zero, bb37
bb25:
  ADD t1, t0, zero
  JAL zero, bb26
bb26:
  ADD t2, t1, zero
  ADD a1, t0, zero
  ADD a2, t2, zero
  JAL zero, bb22
bb27:
  ADD s9, s8, zero
  SLT s10, s9, s7
  BNE s10, zero, bb28
  JAL zero, bb29
bb28:
  ADDIW s10, s9, 1
  ADD s11, s10, zero
  JAL zero, bb30
bb29:
  ADDI t4, zero, 1
  SW t4, 8(sp)
  JAL zero, bb19
bb30:
  ADD t4, s11, zero
  SW t4, 4(sp)
  LW t4, 4(sp)
  SLT t1, t4, s7
  BNE t1, zero, bb31
  JAL zero, bb32
bb31:
  ADDI t1, zero, 4
  MULW t2, s9, t1
  LA t1, store
  ADD a2, t1, t2
  LW t1, 0(a2)
  ADDI t2, zero, 120
  MULW a2, t1, t2
  LA t1, graph
  ADD t2, t1, a2
  ADDI t1, zero, 4
  LW t4, 4(sp)
  MULW a2, t4, t1
  LA t1, store
  ADD a3, t1, a2
  LW t1, 0(a3)
  ADDI a2, zero, 4
  MULW a3, t1, a2
  ADD t1, t2, a3
  LW t2, 0(t1)
  XOR t1, t2, zero
  SLTIU t2, t1, 1
  BNE t2, zero, bb33
  JAL zero, bb34
bb32:
  ADD s8, s10, zero
  JAL zero, bb27
bb33:
  ADD t4, zero, zero
  SW t4, 8(sp)
  JAL zero, bb19
bb34:
  LW t4, 4(sp)
  ADDIW s1, t4, 1
  ADD s11, s1, zero
  JAL zero, bb30
bb35:
  ADD a1, s6, zero
  ADD a2, s4, zero
  JAL zero, bb22
bb36:
  ADD t4, s4, zero
  SW t4, 0(sp)
  JAL zero, bb24
bb37:
  LW t4, 12(sp)
  ADD t1, t4, zero
  JAL zero, bb26
