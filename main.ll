.global main
.global EightWhile
.section .data
e:
.byte 0, 0, 0, 0
f:
.byte 0, 0, 0, 0
h:
.byte 0, 0, 0, 0
g:
.byte 0, 0, 0, 0
.section .text
main:
  ADDI sp, sp, -48
  SD ra, 40(sp)
  SD s1, 32(sp)
  SD s0, 24(sp)
  SD s2, 16(sp)
  SD s3, 8(sp)
  SD s4, 0(sp)
  LA s1, g
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s2, h
  ADDI s0, zero, 2
  SW s0, 0(s2)
  LA s3, e
  ADDI s0, zero, 4
  SW s0, 0(s3)
  LA s4, f
  ADDI s0, zero, 6
  SW s0, 0(s4)
  CALL EightWhile
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD ra, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
EightWhile:
  ADDI sp, sp, -112
  SD s11, 104(sp)
  SD s10, 96(sp)
  SD s9, 88(sp)
  SD s7, 80(sp)
  SD s4, 72(sp)
  SD s8, 64(sp)
  SD s3, 56(sp)
  SD s2, 48(sp)
  SD s6, 40(sp)
  SD s1, 32(sp)
  SD s5, 24(sp)
  SD s0, 16(sp)
  ADDI s0, zero, 5
  SW s0, 12(sp)
  ADDI s0, zero, 6
  SW s0, 8(sp)
  ADDI s0, zero, 7
  SW s0, 4(sp)
  ADDI s0, zero, 10
  SW s0, 0(sp)
  JAL zero, bb139714724660738
bb139714724660738:
  LW s0, 12(sp)
  SLTI s1, s0, 20
  BNE s1, zero, bb139714724660739
  JAL zero, bb139714724660740
bb139714724660739:
  LW s0, 12(sp)
  ADDIW s0, s0, 3
  SW s0, 12(sp)
  JAL zero, bb139714724660741
bb139714724660740:
  LW s2, 12(sp)
  LW s0, 8(sp)
  LW s1, 0(sp)
  ADDW s3, s0, s1
  ADDW s2, s2, s3
  LW s0, 4(sp)
  ADDW s8, s2, s0
  LA s0, e
  LW s4, 0(s0)
  LW s0, 0(sp)
  ADDW s6, s4, s0
  LA s0, g
  LW s5, 0(s0)
  SUBW s7, s6, s5
  LA s0, h
  LW s5, 0(s0)
  ADDW s0, s7, s5
  SUBW s5, s8, s0
  ADD a0, s5, zero
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s8, 64(sp)
  LD s4, 72(sp)
  LD s7, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb139714724660741:
  LW s0, 8(sp)
  SLTI s5, s0, 10
  BNE s5, zero, bb139714724660742
  JAL zero, bb139714724660743
bb139714724660742:
  LW s0, 8(sp)
  ADDIW s0, s0, 1
  SW s0, 8(sp)
  JAL zero, bb139714724660744
bb139714724660743:
  LW s5, 8(sp)
  ADDI s0, zero, 2
  SUBW s0, s5, s0
  SW s0, 8(sp)
  JAL zero, bb139714724660738
bb139714724660744:
  LW s0, 4(sp)
  XORI s9, s0, 7
  SLTIU s0, s9, 1
  BNE s0, zero, bb139714724660745
  JAL zero, bb139714724660746
bb139714724660745:
  LW s9, 4(sp)
  ADDI s0, zero, 1
  SUBW s0, s9, s0
  SW s0, 4(sp)
  JAL zero, bb139714724660747
bb139714724660746:
  LW s0, 4(sp)
  ADDIW s0, s0, 1
  SW s0, 4(sp)
  JAL zero, bb139714724660741
bb139714724660747:
  LW s0, 0(sp)
  SLTI s10, s0, 20
  BNE s10, zero, bb139714724660748
  JAL zero, bb139714724660749
bb139714724660748:
  LW s0, 0(sp)
  ADDIW s0, s0, 3
  SW s0, 0(sp)
  JAL zero, bb139714724660750
bb139714724660749:
  LW s10, 0(sp)
  ADDI s0, zero, 1
  SUBW s0, s10, s0
  SW s0, 0(sp)
  JAL zero, bb139714724660744
bb139714724660750:
  LA s0, e
  LW s11, 0(s0)
  ADDI s0, zero, 1
  SLT ra, s0, s11
  BNE ra, zero, bb139714724660751
  JAL zero, bb139714724660752
bb139714724660751:
  LA s0, e
  LW ra, 0(s0)
  ADDI s0, zero, 1
  SUBW t0, ra, s0
  LA s0, e
  SW t0, 0(s0)
  JAL zero, bb139714724660753
bb139714724660752:
  LA s0, e
  LW t1, 0(s0)
  ADDIW t1, t1, 1
  LA s0, e
  SW t1, 0(s0)
  JAL zero, bb139714724660747
bb139714724660753:
  LA s0, f
  LW t2, 0(s0)
  ADDI s0, zero, 2
  SLT a0, s0, t2
  BNE a0, zero, bb139714724660754
  JAL zero, bb139714724660755
bb139714724660754:
  LA s0, f
  LW a0, 0(s0)
  ADDI s0, zero, 2
  SUBW a1, a0, s0
  LA s0, f
  SW a1, 0(s0)
  JAL zero, bb139714724660756
bb139714724660755:
  LA s0, f
  LW a2, 0(s0)
  ADDIW a2, a2, 1
  LA s0, f
  SW a2, 0(s0)
  JAL zero, bb139714724660750
bb139714724660756:
  LA s0, g
  LW a3, 0(s0)
  SLTI s0, a3, 3
  BNE s0, zero, bb139714724660757
  JAL zero, bb139714724660758
bb139714724660757:
  LA s0, g
  LW a3, 0(s0)
  ADDIW a3, a3, 10
  LA s0, g
  SW a3, 0(s0)
  JAL zero, bb139714724660759
bb139714724660758:
  LA s0, g
  LW a4, 0(s0)
  ADDI s0, zero, 8
  SUBW a5, a4, s0
  LA s0, g
  SW a5, 0(s0)
  JAL zero, bb139714724660753
bb139714724660759:
  LA s0, h
  LW a6, 0(s0)
  SLTI s0, a6, 10
  BNE s0, zero, bb139714724660760
  JAL zero, bb139714724660761
bb139714724660760:
  LA s0, h
  LW a6, 0(s0)
  ADDIW a6, a6, 8
  LA s0, h
  SW a6, 0(s0)
  JAL zero, bb139714724660759
bb139714724660761:
  LA s0, h
  LW a7, 0(s0)
  ADDI s0, zero, 1
  SUBW t3, a7, s0
  LA s0, h
  SW t3, 0(s0)
  JAL zero, bb139714724660756
