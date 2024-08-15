.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss








































.section .data
a36:
.word 0x00000000
a32:
.word 0x00000000
a31:
.word 0x00000000
a30:
.word 0x00000000
a39:
.word 0x00000000
a29:
.word 0x00000000
a5:
.word 0x00000000
a4:
.word 0x00000000
a38:
.word 0x00000000
a6:
.word 0x00000000
a0:
.word 0x00000000
a3:
.word 0x00000000
a33:
.word 0x00000000
a2:
.word 0x00000000
a12:
.word 0x00000000
a11:
.word 0x00000000
a26:
.word 0x00000000
a10:
.word 0x00000000
a37:
.word 0x00000000
a1:
.word 0x00000000
a8:
.word 0x00000000
a17:
.word 0x00000000
a35:
.word 0x00000000
a24:
.word 0x00000000
a13:
.word 0x00000000
a9:
.word 0x00000000
a14:
.word 0x00000000
a16:
.word 0x00000000
a34:
.word 0x00000000
a7:
.word 0x00000000
a15:
.word 0x00000000
a25:
.word 0x00000000
a21:
.word 0x00000000
a18:
.word 0x00000000
a19:
.word 0x00000000
a27:
.word 0x00000000
a20:
.word 0x00000000
a22:
.word 0x00000000
a23:
.word 0x00000000
a28:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -464
  SD ra, 240(sp)
  LA t0, a0
  SD t0, 16(sp)
  ADDI t0, zero, 0
  LA t1, a1
  SD t1, 256(sp)
  ADDI t1, zero, 1
  LD t2, 16(sp)
  SW t0, 0(t2)
  LA t0, a2
  SD t0, 264(sp)
  ADDI t0, zero, 2
  LD t2, 256(sp)
  SW t1, 0(t2)
  LA t1, a3
  SD t1, 272(sp)
  ADDI t1, zero, 3
  LD t2, 264(sp)
  SW t0, 0(t2)
  LA t0, a4
  SD t0, 280(sp)
  ADDI t0, zero, 4
  LD t2, 272(sp)
  SW t1, 0(t2)
  LA t1, a5
  SD t1, 288(sp)
  ADDI t1, zero, 5
  LD t2, 280(sp)
  SW t0, 0(t2)
  LA t0, a6
  SD t0, 296(sp)
  ADDI t0, zero, 6
  LD t2, 288(sp)
  SW t1, 0(t2)
  LA t1, a7
  SD t1, 304(sp)
  ADDI t1, zero, 7
  LD t2, 296(sp)
  SW t0, 0(t2)
  LA t0, a8
  SD t0, 24(sp)
  ADDI t0, zero, 8
  LD t2, 304(sp)
  SW t1, 0(t2)
  LA t1, a9
  SD t1, 32(sp)
  ADDI t1, zero, 9
  LD t2, 24(sp)
  SW t0, 0(t2)
  LA t0, a10
  SD t0, 40(sp)
  ADDI t0, zero, 0
  LD t2, 32(sp)
  SW t1, 0(t2)
  LA t1, a11
  SD t1, 48(sp)
  ADDI t1, zero, 1
  LD t2, 40(sp)
  SW t0, 0(t2)
  LA t0, a12
  SD t0, 56(sp)
  ADDI t0, zero, 2
  LD t2, 48(sp)
  SW t1, 0(t2)
  LA t1, a13
  SD t1, 64(sp)
  ADDI t1, zero, 3
  LD t2, 56(sp)
  SW t0, 0(t2)
  LA t0, a14
  SD t0, 72(sp)
  ADDI t0, zero, 4
  LD t2, 64(sp)
  SW t1, 0(t2)
  LA t1, a15
  SD t1, 80(sp)
  ADDI t1, zero, 5
  LD t2, 72(sp)
  SW t0, 0(t2)
  LA t0, a16
  SD t0, 312(sp)
  ADDI t0, zero, 6
  LD t2, 80(sp)
  SW t1, 0(t2)
  LA t1, a17
  SD t1, 320(sp)
  ADDI t1, zero, 7
  LD t2, 312(sp)
  SW t0, 0(t2)
  LA t0, a18
  SD t0, 328(sp)
  ADDI t0, zero, 8
  LD t2, 320(sp)
  SW t1, 0(t2)
  LA t1, a19
  SD t1, 336(sp)
  ADDI t1, zero, 9
  LD t2, 328(sp)
  SW t0, 0(t2)
  LA t0, a20
  SD t0, 248(sp)
  ADDI t0, zero, 0
  LD t2, 336(sp)
  SW t1, 0(t2)
  LA t1, a21
  SD t1, 344(sp)
  ADDI t1, zero, 1
  LD t2, 248(sp)
  SW t0, 0(t2)
  LA t0, a22
  SD t0, 352(sp)
  ADDI t0, zero, 2
  LD t2, 344(sp)
  SW t1, 0(t2)
  LA t1, a23
  SD t1, 360(sp)
  ADDI t1, zero, 3
  LD t2, 352(sp)
  SW t0, 0(t2)
  LA t0, a24
  SD t0, 368(sp)
  ADDI t0, zero, 4
  LD t2, 360(sp)
  SW t1, 0(t2)
  LA t1, a25
  SD t1, 376(sp)
  ADDI t1, zero, 5
  LD t2, 368(sp)
  SW t0, 0(t2)
  LA t0, a26
  SD t0, 384(sp)
  ADDI t0, zero, 6
  LD t2, 376(sp)
  SW t1, 0(t2)
  LA t1, a27
  SD t1, 392(sp)
  ADDI t1, zero, 7
  LD t2, 384(sp)
  SW t0, 0(t2)
  LA t0, a28
  SD t0, 400(sp)
  ADDI t0, zero, 8
  LD t2, 392(sp)
  SW t1, 0(t2)
  LA t1, a29
  SD t1, 408(sp)
  ADDI t1, zero, 9
  LD t2, 400(sp)
  SW t0, 0(t2)
  LA t0, a30
  SD t0, 416(sp)
  ADDI t0, zero, 0
  LD t2, 408(sp)
  SW t1, 0(t2)
  LA t1, a31
  SD t1, 424(sp)
  ADDI t1, zero, 1
  LD t2, 416(sp)
  SW t0, 0(t2)
  LA t0, a32
  SD t0, 432(sp)
  ADDI t0, zero, 4
  LD t2, 424(sp)
  SW t1, 0(t2)
  LA t1, a33
  SD t1, 440(sp)
  ADDI t1, zero, 5
  LD t2, 432(sp)
  SW t0, 0(t2)
  LA t0, a34
  SD t0, 448(sp)
  ADDI t0, zero, 6
  LD t2, 440(sp)
  SW t1, 0(t2)
  LA t1, a35
  SD t1, 128(sp)
  ADDI t1, zero, 7
  LD t2, 448(sp)
  SW t0, 0(t2)
  LA t0, a36
  SD t0, 8(sp)
  ADDI t0, zero, 8
  LD t2, 128(sp)
  SW t1, 0(t2)
  LA t1, a37
  SD t1, 216(sp)
  ADDI t1, zero, 9
  LD t2, 8(sp)
  SW t0, 0(t2)
  LA t0, a38
  SD t0, 224(sp)
  ADDI t0, zero, 0
  LD t2, 216(sp)
  SW t1, 0(t2)
  LA t1, a39
  SD t1, 232(sp)
  ADDI t1, zero, 1
  LD t2, 224(sp)
  SW t0, 0(t2)
  ADDI t0, zero, 28
  LD t2, 232(sp)
  SW t1, 0(t2)
  ADDI a0, zero, 28
  LD t1, 16(sp)
  SW t0, 0(t1)
  CALL putint
  LD t0, 432(sp)
  LW t0, 0(t0)
  LD t1, 440(sp)
  LW t1, 0(t1)
  LD t2, 448(sp)
  LW t2, 0(t2)
  ADDW t1, t0, t1
  LD t0, 128(sp)
  LW t0, 0(t0)
  ADDW t2, t1, t2
  LD t1, 8(sp)
  LW t1, 0(t1)
  SUBW t2, t2, t0
  LD t0, 216(sp)
  LW t0, 0(t0)
  SUBW t2, t2, t1
  LD t1, 224(sp)
  LW t1, 0(t1)
  SUBW t2, t2, t0
  LD t0, 232(sp)
  LW t0, 0(t0)
  SUBW t2, t2, t1
  LD t1, 24(sp)
  LW t1, 0(t1)
  SUBW t2, t2, t0
  LD t0, 32(sp)
  LW t0, 0(t0)
  ADDW t2, t2, t1
  LD t1, 40(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 48(sp)
  LW t0, 0(t0)
  ADDW t2, t2, t1
  LD t1, 56(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 64(sp)
  LW t0, 0(t0)
  ADDW t2, t2, t1
  LD t1, 72(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 80(sp)
  LW t0, 0(t0)
  ADDW t1, t2, t1
  ADDW t0, t1, t0
  ADD a0, t0, zero
  LD t1, 16(sp)
  SW t0, 0(t1)
  CALL putint
  LD t0, 16(sp)
  LW t0, 0(t0)
  LD t1, 256(sp)
  LW t1, 0(t1)
  LD t2, 264(sp)
  LW t2, 0(t2)
  ADDW t1, t0, t1
  LD t0, 272(sp)
  LW t0, 0(t0)
  ADDW t2, t1, t2
  LD t1, 280(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 288(sp)
  LW t0, 0(t0)
  ADDW t2, t2, t1
  LD t1, 296(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 304(sp)
  LW t0, 0(t0)
  ADDW t2, t2, t1
  LD t1, 24(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 32(sp)
  LW t0, 0(t0)
  ADDW t2, t2, t1
  LD t1, 40(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 48(sp)
  LW t0, 0(t0)
  ADDW t2, t2, t1
  LD t1, 56(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 64(sp)
  LW t0, 0(t0)
  ADDW t2, t2, t1
  LD t1, 72(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 80(sp)
  LW t0, 0(t0)
  ADDW t2, t2, t1
  LD t1, 312(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 320(sp)
  LW t0, 0(t0)
  ADDW t2, t2, t1
  LD t1, 328(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 336(sp)
  LW t0, 0(t0)
  SUBW t2, t2, t1
  LD t1, 248(sp)
  LW t1, 0(t1)
  SUBW t2, t2, t0
  LD t0, 344(sp)
  LW t0, 0(t0)
  SUBW t2, t2, t1
  LD t1, 352(sp)
  LW t1, 0(t1)
  SUBW t2, t2, t0
  LD t0, 360(sp)
  LW t0, 0(t0)
  SUBW t2, t2, t1
  LD t1, 368(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 376(sp)
  LW t0, 0(t0)
  ADDW t2, t2, t1
  LD t1, 384(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 392(sp)
  LW t0, 0(t0)
  ADDW t2, t2, t1
  LD t1, 400(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 408(sp)
  LW t0, 0(t0)
  ADDW t2, t2, t1
  LD t1, 416(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 424(sp)
  LW t0, 0(t0)
  ADDW t1, t2, t1
  ADDW t0, t1, t0
  ADD a0, t0, zero
  LD t1, 16(sp)
  SW t0, 0(t1)
  CALL putint
  ADD a0, zero, zero
  LD ra, 240(sp)
  ADDI sp, sp, 464
  JALR zero, 0(ra)
