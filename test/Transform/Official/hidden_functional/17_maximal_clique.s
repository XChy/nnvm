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
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  LA s2, m
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb6
  # implict jump to bb2
bb2:
  ADD s0, zero, zero
  # implict jump to bb3
bb3:
  ADD s1, s0, zero
  LA s2, m
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb5
  # implict jump to bb4
bb4:
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
  JAL zero, bb3
bb6:
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
  # implict jump to bb8
bb8:
  ADD s2, s1, zero
  SLT s3, s2, s0
  BNE s3, zero, bb10
  # implict jump to bb9
bb9:
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
bb10:
  ADDIW s3, s2, 1
  ADD s4, s3, zero
  # implict jump to bb11
bb11:
  ADD s5, s4, zero
  SLT s6, s5, s0
  BNE s6, zero, bb13
  # implict jump to bb12
bb12:
  ADD s1, s3, zero
  JAL zero, bb8
bb13:
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
  BNE s7, zero, bb15
  # implict jump to bb14
bb14:
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb11
bb15:
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
  # implict jump to bb17
bb17:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  LA s7, n
  LW s8, 0(s7)
  SLT s7, s8, s5
  XORI s8, s7, 1
  BNE s8, zero, bb19
  # implict jump to bb18
bb18:
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
bb19:
  ADDI s7, zero, 4
  MULW s8, s0, s7
  LA s7, store
  ADD s9, s7, s8
  SW s5, 0(s9)
  ADDIW s7, s0, 1
  ADDI s8, zero, 1
  # implict jump to bb20
bb20:
  ADD s9, s8, zero
  SLT s10, s9, s7
  BNE s10, zero, bb32
  # implict jump to bb21
bb21:
  ADDI t4, zero, 1
  SW t4, 4(sp)
  # implict jump to bb22
bb22:
  LW t4, 4(sp)
  ADD t2, t4, zero
  XOR a2, t2, zero
  SLTU t2, zero, a2
  BNE t2, zero, bb25
  # implict jump to bb23
bb23:
  ADD a1, s6, zero
  ADD a2, s4, zero
  # implict jump to bb24
bb24:
  ADD t2, a2, zero
  ADD a3, a1, zero
  ADDIW a4, s5, 1
  ADD s1, a3, zero
  ADD s2, a4, zero
  ADD s3, t2, zero
  JAL zero, bb17
bb25:
  SLT t2, s4, s0
  BNE t2, zero, bb31
  # implict jump to bb26
bb26:
  ADD t4, s4, zero
  SW t4, 0(sp)
  # implict jump to bb27
bb27:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  ADD a0, s5, zero
  ADD a1, s7, zero
  CALL maxCliques
  ADD t0, a0, zero
  LW t4, 12(sp)
  SLT t1, t4, t0
  BNE t1, zero, bb30
  # implict jump to bb28
bb28:
  LW t4, 12(sp)
  ADD t1, t4, zero
  # implict jump to bb29
bb29:
  ADD t2, t1, zero
  ADD a1, t0, zero
  ADD a2, t2, zero
  JAL zero, bb24
bb30:
  ADD t1, t0, zero
  JAL zero, bb29
bb31:
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb27
bb32:
  ADDIW s10, s9, 1
  ADD s11, s10, zero
  # implict jump to bb33
bb33:
  ADD t4, s11, zero
  SW t4, 8(sp)
  LW t4, 8(sp)
  SLT t1, t4, s7
  BNE t1, zero, bb35
  # implict jump to bb34
bb34:
  ADD s8, s10, zero
  JAL zero, bb20
bb35:
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
  LW t4, 8(sp)
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
  BNE t2, zero, bb37
  # implict jump to bb36
bb36:
  LW t4, 8(sp)
  ADDIW s1, t4, 1
  ADD s11, s1, zero
  JAL zero, bb33
bb37:
  ADD t4, zero, zero
  SW t4, 4(sp)
  JAL zero, bb22
