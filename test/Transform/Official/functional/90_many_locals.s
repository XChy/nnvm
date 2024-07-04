.global main
.global foo
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -272
  SD ra, 224(sp)
  SD s3, 232(sp)
  SD s2, 240(sp)
  SD s1, 248(sp)
  SD s0, 256(sp)
  ADDI s0, zero, 3
  SW s0, 216(sp)
  ADDI s0, zero, 7
  SW s0, 208(sp)
  ADDI s0, zero, 5
  SW s0, 200(sp)
  ADDI s0, zero, 6
  SW s0, 192(sp)
  ADDI s0, zero, 1
  SW s0, 184(sp)
  ADDI s0, zero, 0
  SW s0, 176(sp)
  ADDI s0, zero, 3
  SW s0, 168(sp)
  ADDI s0, zero, 5
  SW s0, 160(sp)
  ADDI s0, zero, 4
  SW s0, 152(sp)
  ADDI s0, zero, 2
  SW s0, 144(sp)
  ADDI s0, zero, 7
  SW s0, 136(sp)
  ADDI s0, zero, 9
  SW s0, 128(sp)
  ADDI s0, zero, 8
  SW s0, 120(sp)
  ADDI s0, zero, 1
  SW s0, 112(sp)
  ADDI s0, zero, 4
  SW s0, 104(sp)
  ADDI s0, zero, 6
  SW s0, 96(sp)
  ADDI s0, zero, 7
  ADDIW s1, s0, 3
  ADDIW s0, s1, 5
  ADDIW s1, s0, 6
  ADDIW s0, s1, 1
  ADDW s1, s0, zero
  ADDIW s0, s1, 3
  ADDIW s1, s0, 5
  SW s1, 88(sp)
  ADDI s0, zero, 2
  ADDIW s2, s0, 4
  ADDIW s0, s2, 7
  ADDIW s2, s0, 9
  ADDIW s0, s2, 8
  ADDIW s2, s0, 1
  ADDIW s0, s2, 4
  ADDIW s2, s0, 6
  SW s2, 80(sp)
  CALL foo
  ADD s0, a0, zero
  ADDW s2, s1, s0
  SW s2, 88(sp)
  ADDI s0, zero, 4
  SW s0, 72(sp)
  ADDI s0, zero, 7
  SW s0, 64(sp)
  ADDI s0, zero, 2
  SW s0, 56(sp)
  ADDI s0, zero, 5
  SW s0, 48(sp)
  ADDI s0, zero, 8
  SW s0, 40(sp)
  SW zero, 32(sp)
  ADDI s0, zero, 6
  SW s0, 24(sp)
  ADDI s0, zero, 3
  SW s0, 16(sp)
  LW s0, 80(sp)
  CALL foo
  ADD s1, a0, zero
  ADDW s2, s0, s1
  SW s2, 80(sp)
  LW s0, 152(sp)
  SW s0, 216(sp)
  LW s0, 144(sp)
  SW s0, 208(sp)
  LW s0, 136(sp)
  SW s0, 200(sp)
  LW s0, 128(sp)
  SW s0, 192(sp)
  LW s0, 120(sp)
  SW s0, 184(sp)
  LW s0, 112(sp)
  SW s0, 176(sp)
  LW s0, 104(sp)
  SW s0, 168(sp)
  LW s0, 96(sp)
  SW s0, 160(sp)
  LW s0, 72(sp)
  LW s1, 64(sp)
  ADDW s3, s0, s1
  LW s0, 56(sp)
  ADDW s1, s3, s0
  LW s0, 48(sp)
  ADDW s3, s1, s0
  LW s0, 40(sp)
  ADDW s1, s3, s0
  LW s0, 32(sp)
  ADDW s3, s1, s0
  LW s0, 24(sp)
  ADDW s1, s3, s0
  LW s0, 16(sp)
  ADDW s3, s1, s0
  SW s3, 8(sp)
  LW s0, 88(sp)
  ADDW s1, s0, s2
  ADDW s0, s1, s3
  SW s0, 0(sp)
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 224(sp)
  LD s3, 232(sp)
  LD s2, 240(sp)
  LD s1, 248(sp)
  LD s0, 256(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
foo:
  ADDI sp, sp, -256
  SD ra, 208(sp)
  SD s3, 216(sp)
  SD s2, 224(sp)
  SD s1, 232(sp)
  SD s0, 240(sp)
  ADDI t5, sp, 144
  ADD s0, t5, zero
  SW zero, 0(s0)
  ADDI s0, sp, 148
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 152
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 156
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 160
  SW zero, 0(s0)
  ADDI s0, sp, 164
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 168
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 172
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 176
  SW zero, 0(s0)
  ADDI s0, sp, 180
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 184
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 188
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 192
  SW zero, 0(s0)
  ADDI s0, sp, 196
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 200
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 204
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, zero, 3
  SW s0, 136(sp)
  ADDI s0, zero, 7
  SW s0, 128(sp)
  ADDI s0, zero, 5
  SW s0, 120(sp)
  ADDI s0, zero, 6
  SW s0, 112(sp)
  ADDI s0, zero, 1
  SW s0, 104(sp)
  SW zero, 96(sp)
  ADDI s0, zero, 3
  SW s0, 88(sp)
  ADDI s0, zero, 5
  SW s0, 80(sp)
  ADDI s0, zero, 4
  SW s0, 72(sp)
  ADDI s0, zero, 2
  SW s0, 64(sp)
  ADDI s0, zero, 7
  SW s0, 56(sp)
  ADDI s0, zero, 9
  SW s0, 48(sp)
  ADDI s0, zero, 8
  SW s0, 40(sp)
  ADDI s0, zero, 1
  SW s0, 32(sp)
  ADDI s0, zero, 4
  SW s0, 24(sp)
  ADDI s0, zero, 6
  SW s0, 16(sp)
  ADDI s0, zero, 7
  ADDIW s1, s0, 3
  ADDIW s0, s1, 5
  ADDIW s1, s0, 6
  ADDIW s0, s1, 1
  ADDW s1, s0, zero
  ADDIW s0, s1, 3
  ADDIW s1, s0, 5
  SW s1, 8(sp)
  ADDI s0, zero, 2
  ADDIW s2, s0, 4
  ADDIW s0, s2, 7
  ADDIW s2, s0, 9
  ADDIW s0, s2, 8
  ADDIW s2, s0, 1
  ADDIW s0, s2, 4
  ADDIW s2, s0, 6
  SW s2, 0(sp)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 3
  MULW s3, s1, s2
  ADDI t6, sp, 144
  ADD s1, t6, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADD a0, s1, zero
  LD ra, 208(sp)
  LD s3, 216(sp)
  LD s2, 224(sp)
  LD s1, 232(sp)
  LD s0, 240(sp)
  ADDI sp, sp, 256
  JALR zero, 0(ra)
