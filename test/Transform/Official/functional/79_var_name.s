.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADDI a0, zero, 1
  SW a0, 24(sp)
  ADDI a0, zero, 2
  SW a0, 28(sp)
  ADDI a0, zero, 18
  # implict jump to bb1
bb1:
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  ADDIW s0, s0, 8
  ADDI t6, sp, 24
  ADD s0, t6, s0
  ADDI s1, zero, 0
  SW s1, 0(s0)
  BNE a0, zero, bb3
  # implict jump to bb2
bb2:
  LW a0, 32(sp)
  LW s0, 28(sp)
  ADDW a0, a0, s0
  LW s0, 24(sp)
  ADDW s0, a0, s0
  SW s0, 32(sp)
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW a0, 36(sp)
  LW s1, 32(sp)
  ADDW a0, a0, s1
  LW s1, 28(sp)
  ADDW a0, a0, s1
  SW a0, 36(sp)
  ADDW s0, s0, a0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW a0, 40(sp)
  LW s1, 36(sp)
  ADDW a0, a0, s1
  LW s1, 32(sp)
  ADDW a0, a0, s1
  SW a0, 40(sp)
  ADDW s0, s0, a0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW a0, 44(sp)
  LW s1, 40(sp)
  ADDW a0, a0, s1
  LW s1, 36(sp)
  ADDW a0, a0, s1
  SW a0, 44(sp)
  ADDW s0, s0, a0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW a0, 48(sp)
  LW s1, 44(sp)
  ADDW a0, a0, s1
  LW s1, 40(sp)
  ADDW a0, a0, s1
  SW a0, 48(sp)
  ADDW s0, s0, a0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW a0, 52(sp)
  LW s1, 48(sp)
  ADDW a0, a0, s1
  LW s1, 44(sp)
  ADDW a0, a0, s1
  SW a0, 52(sp)
  ADDW s0, s0, a0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW a0, 56(sp)
  LW s1, 52(sp)
  ADDW a0, a0, s1
  LW s1, 48(sp)
  ADDW a0, a0, s1
  SW a0, 56(sp)
  ADDW s0, s0, a0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW a0, 60(sp)
  LW s1, 56(sp)
  ADDW a0, a0, s1
  LW s1, 52(sp)
  ADDW a0, a0, s1
  SW a0, 60(sp)
  ADDW s0, s0, a0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW a0, 64(sp)
  LW s1, 60(sp)
  ADDW a0, a0, s1
  LW s1, 56(sp)
  ADDW a0, a0, s1
  SW a0, 64(sp)
  ADDW s0, s0, a0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW a0, 68(sp)
  LW s1, 64(sp)
  ADDW a0, a0, s1
  LW s1, 60(sp)
  ADDW a0, a0, s1
  SW a0, 68(sp)
  ADDW s0, s0, a0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW a0, 72(sp)
  LW s1, 68(sp)
  ADDW a0, a0, s1
  LW s1, 64(sp)
  ADDW a0, a0, s1
  SW a0, 72(sp)
  ADDW s0, s0, a0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW a0, 76(sp)
  LW s1, 72(sp)
  ADDW a0, a0, s1
  LW s1, 68(sp)
  ADDW a0, a0, s1
  SW a0, 76(sp)
  ADDW s0, s0, a0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW a0, 80(sp)
  LW s1, 76(sp)
  ADDW a0, a0, s1
  LW s1, 72(sp)
  ADDW a0, a0, s1
  SW a0, 80(sp)
  ADDW s0, s0, a0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW a0, 84(sp)
  LW s1, 80(sp)
  ADDW a0, a0, s1
  LW s1, 76(sp)
  ADDW a0, a0, s1
  SW a0, 84(sp)
  ADDW s0, s0, a0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW a0, 88(sp)
  LW s1, 84(sp)
  ADDW a0, a0, s1
  LW s1, 80(sp)
  ADDW a0, a0, s1
  SW a0, 88(sp)
  ADDW s0, s0, a0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW a0, 92(sp)
  LW s1, 88(sp)
  ADDW a0, a0, s1
  LW s1, 84(sp)
  ADDW a0, a0, s1
  SW a0, 92(sp)
  ADDW s0, s0, a0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW a0, 96(sp)
  LW s1, 92(sp)
  ADDW a0, a0, s1
  LW s1, 88(sp)
  ADDW a0, a0, s1
  SW a0, 96(sp)
  ADDW s0, s0, a0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW a0, 100(sp)
  LW s1, 96(sp)
  ADDW a0, a0, s1
  LW s1, 92(sp)
  ADDW a0, a0, s1
  SW a0, 100(sp)
  ADDW s0, s0, a0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb3:
  JAL zero, bb1
