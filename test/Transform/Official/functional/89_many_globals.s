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
  ADDI sp, sp, -624
  SD ra, 176(sp)
  LA t0, a0
  LA t2, a1
  ADDI t1, zero, 0
  LA a1, a2
  ADDI a0, zero, 1
  SW t1, 0(t0)
  LA t1, a3
  ADDI t0, zero, 2
  SW a0, 0(t2)
  LA a0, a4
  ADDI t2, zero, 3
  SW t0, 0(a1)
  LA a1, a5
  ADDI t0, zero, 4
  SW t2, 0(t1)
  LA t2, a6
  ADDI t1, zero, 5
  SW t0, 0(a0)
  LA a0, a7
  ADDI t0, zero, 6
  SW t1, 0(a1)
  LA a1, a8
  ADDI t1, zero, 7
  SW t0, 0(t2)
  LA t2, a9
  ADDI t0, zero, 8
  SW t1, 0(a0)
  LA a0, a10
  ADDI t1, zero, 9
  SW t0, 0(a1)
  LA a1, a11
  ADDI t0, zero, 0
  SW t1, 0(t2)
  LA t2, a12
  ADDI t1, zero, 1
  SW t0, 0(a0)
  LA a0, a13
  ADDI t0, zero, 2
  SW t1, 0(a1)
  LA a1, a14
  ADDI t1, zero, 3
  SW t0, 0(t2)
  LA t2, a15
  ADDI t0, zero, 4
  SW t1, 0(a0)
  LA a0, a16
  ADDI t1, zero, 5
  SW t0, 0(a1)
  LA a1, a17
  ADDI t0, zero, 6
  SW t1, 0(t2)
  LA t2, a18
  ADDI t1, zero, 7
  SW t0, 0(a0)
  LA a0, a19
  ADDI t0, zero, 8
  SW t1, 0(a1)
  LA a1, a20
  ADDI t1, zero, 9
  SW t0, 0(t2)
  LA t2, a21
  ADDI t0, zero, 0
  SW t1, 0(a0)
  LA a0, a22
  ADDI t1, zero, 1
  SW t0, 0(a1)
  LA a1, a23
  ADDI t0, zero, 2
  SW t1, 0(t2)
  LA t2, a24
  ADDI t1, zero, 3
  SW t0, 0(a0)
  LA a0, a25
  ADDI t0, zero, 4
  SW t1, 0(a1)
  LA a1, a26
  ADDI t1, zero, 5
  SW t0, 0(t2)
  LA t2, a27
  ADDI t0, zero, 6
  SW t1, 0(a0)
  LA a0, a28
  ADDI t1, zero, 7
  SW t0, 0(a1)
  LA a1, a29
  ADDI t0, zero, 8
  SW t1, 0(t2)
  LA t2, a30
  ADDI t1, zero, 9
  SW t0, 0(a0)
  LA a0, a31
  ADDI t0, zero, 0
  SW t1, 0(a1)
  LA a1, a32
  ADDI t1, zero, 1
  SW t0, 0(t2)
  LA t2, a33
  ADDI t0, zero, 4
  SW t1, 0(a0)
  LA a0, a34
  ADDI t1, zero, 5
  SW t0, 0(a1)
  LA a1, a35
  ADDI t0, zero, 6
  SW t1, 0(t2)
  LA t2, a36
  ADDI t1, zero, 7
  SW t0, 0(a0)
  LA a0, a37
  ADDI t0, zero, 8
  SW t1, 0(a1)
  LA a1, a38
  ADDI t1, zero, 9
  SW t0, 0(t2)
  LA t2, a39
  ADDI t0, zero, 0
  SW t1, 0(a0)
  LA a2, a0
  ADDI t1, zero, 1
  SW t0, 0(a1)
  ADDI t0, zero, 28
  SW t1, 0(t2)
  LA t1, a32
  SD t1, 184(sp)
  ADDI a0, zero, 28
  SW t0, 0(a2)
  LA t0, a33
  SD t0, 192(sp)
  LA t0, a34
  SD t0, 200(sp)
  LA t0, a35
  SD t0, 208(sp)
  LA t0, a36
  SD t0, 216(sp)
  LA t0, a37
  SD t0, 224(sp)
  LA t0, a38
  SD t0, 232(sp)
  LA t0, a39
  SD t0, 240(sp)
  LA t0, a8
  SD t0, 168(sp)
  LA t0, a9
  SD t0, 256(sp)
  LA t0, a10
  SD t0, 264(sp)
  LA t0, a11
  SD t0, 272(sp)
  LA t0, a12
  SD t0, 160(sp)
  LA t0, a13
  SD t0, 248(sp)
  LA t0, a14
  SD t0, 472(sp)
  LA t0, a15
  SD t0, 480(sp)
  LA t0, a0
  SD t0, 488(sp)
  LA t0, a0
  SD t0, 496(sp)
  LA t0, a1
  SD t0, 504(sp)
  LA t0, a2
  SD t0, 512(sp)
  LA t0, a3
  SD t0, 520(sp)
  LA t0, a4
  SD t0, 528(sp)
  LA t0, a5
  SD t0, 536(sp)
  LA t0, a6
  SD t0, 464(sp)
  LA t0, a7
  SD t0, 544(sp)
  LA t0, a8
  SD t0, 552(sp)
  LA t0, a9
  SD t0, 560(sp)
  LA t0, a10
  SD t0, 568(sp)
  LA t0, a11
  SD t0, 576(sp)
  LA t0, a12
  SD t0, 584(sp)
  LA t0, a13
  SD t0, 592(sp)
  LA t0, a14
  SD t0, 600(sp)
  LA t0, a15
  SD t0, 608(sp)
  LA t0, a16
  SD t0, 408(sp)
  LA t0, a17
  SD t0, 336(sp)
  LA t0, a18
  SD t0, 344(sp)
  LA t0, a19
  SD t0, 352(sp)
  LA t0, a20
  SD t0, 360(sp)
  LA t0, a21
  SD t0, 368(sp)
  LA t0, a22
  SD t0, 376(sp)
  LA t0, a23
  SD t0, 384(sp)
  LA t0, a24
  SD t0, 392(sp)
  LA t0, a25
  SD t0, 400(sp)
  LA t0, a26
  SD t0, 328(sp)
  LA t0, a27
  SD t0, 416(sp)
  LA t0, a28
  SD t0, 424(sp)
  LA t0, a29
  SD t0, 432(sp)
  LA t0, a30
  SD t0, 440(sp)
  LA t0, a31
  SD t0, 448(sp)
  LA t0, a0
  SD t0, 456(sp)
  CALL putint
  LD t0, 184(sp)
  LW t0, 0(t0)
  LD t1, 192(sp)
  LW t1, 0(t1)
  LD t2, 200(sp)
  LW t2, 0(t2)
  ADDW t1, t0, t1
  LD t0, 208(sp)
  LW t0, 0(t0)
  ADDW t2, t1, t2
  LD t1, 216(sp)
  LW t1, 0(t1)
  SUBW t2, t2, t0
  LD t0, 224(sp)
  LW t0, 0(t0)
  SUBW t2, t2, t1
  LD t1, 232(sp)
  LW t1, 0(t1)
  SUBW t2, t2, t0
  LD t0, 240(sp)
  LW t0, 0(t0)
  SUBW t2, t2, t1
  LD t1, 168(sp)
  LW t1, 0(t1)
  SUBW t2, t2, t0
  LD t0, 256(sp)
  LW t0, 0(t0)
  ADDW t2, t2, t1
  LD t1, 264(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 272(sp)
  LW t0, 0(t0)
  ADDW t2, t2, t1
  LD t1, 160(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 248(sp)
  LW t0, 0(t0)
  ADDW t2, t2, t1
  LD t1, 472(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 480(sp)
  LW t0, 0(t0)
  ADDW t1, t2, t1
  ADDW t0, t1, t0
  ADD a0, t0, zero
  LD t1, 488(sp)
  SW t0, 0(t1)
  CALL putint
  LD t0, 496(sp)
  LW t0, 0(t0)
  LD t1, 504(sp)
  LW t1, 0(t1)
  LD t2, 512(sp)
  LW t2, 0(t2)
  ADDW t1, t0, t1
  LD t0, 520(sp)
  LW t0, 0(t0)
  ADDW t2, t1, t2
  LD t1, 528(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 536(sp)
  LW t0, 0(t0)
  ADDW t2, t2, t1
  LD t1, 464(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 544(sp)
  LW t0, 0(t0)
  ADDW t2, t2, t1
  LD t1, 552(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 560(sp)
  LW t0, 0(t0)
  ADDW t2, t2, t1
  LD t1, 568(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 576(sp)
  LW t0, 0(t0)
  ADDW t2, t2, t1
  LD t1, 584(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 592(sp)
  LW t0, 0(t0)
  ADDW t2, t2, t1
  LD t1, 600(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 608(sp)
  LW t0, 0(t0)
  ADDW t2, t2, t1
  LD t1, 408(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 336(sp)
  LW t0, 0(t0)
  ADDW t2, t2, t1
  LD t1, 344(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 352(sp)
  LW t0, 0(t0)
  SUBW t2, t2, t1
  LD t1, 360(sp)
  LW t1, 0(t1)
  SUBW t2, t2, t0
  LD t0, 368(sp)
  LW t0, 0(t0)
  SUBW t2, t2, t1
  LD t1, 376(sp)
  LW t1, 0(t1)
  SUBW t2, t2, t0
  LD t0, 384(sp)
  LW t0, 0(t0)
  SUBW t2, t2, t1
  LD t1, 392(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 400(sp)
  LW t0, 0(t0)
  ADDW t2, t2, t1
  LD t1, 328(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 416(sp)
  LW t0, 0(t0)
  ADDW t2, t2, t1
  LD t1, 424(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 432(sp)
  LW t0, 0(t0)
  ADDW t2, t2, t1
  LD t1, 440(sp)
  LW t1, 0(t1)
  ADDW t2, t2, t0
  LD t0, 448(sp)
  LW t0, 0(t0)
  ADDW t1, t2, t1
  ADDW t0, t1, t0
  ADD a0, t0, zero
  LD t1, 456(sp)
  SW t0, 0(t1)
  CALL putint
  ADD a0, zero, zero
  LD ra, 176(sp)
  ADDI sp, sp, 624
  JALR zero, 0(ra)
