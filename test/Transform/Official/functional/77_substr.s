.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -1168
  SD ra, 1144(sp)
  SD s0, 1152(sp)
  ADDI t0, zero, 8
  ADDI t1, zero, 7
  SW t0, 1080(sp)
  ADDI t0, zero, 4
  SW t1, 1084(sp)
  ADDI t1, zero, 1
  SW t0, 1088(sp)
  ADDI t0, zero, 2
  SW t1, 1092(sp)
  ADDI t1, zero, 7
  SW t0, 1096(sp)
  ADDI t0, zero, 0
  SW t1, 1100(sp)
  ADDI t1, zero, 1
  SW t0, 1104(sp)
  ADDI t0, zero, 9
  SW t1, 1108(sp)
  ADDI t1, zero, 3
  SW t0, 1112(sp)
  ADDI t0, zero, 4
  SW t1, 1116(sp)
  ADDI t1, zero, 8
  SW t0, 1120(sp)
  ADDI t0, zero, 3
  SW t1, 1124(sp)
  ADDI t1, zero, 7
  SW t0, 1128(sp)
  ADDI t0, zero, 0
  SW t1, 1132(sp)
  ADDI t1, zero, 3
  SW t0, 1136(sp)
  ADDI t0, zero, 9
  SW t1, 1024(sp)
  ADDI t1, zero, 7
  SW t0, 1028(sp)
  ADDI t0, zero, 1
  SW t1, 1032(sp)
  ADDI t1, zero, 4
  SW t0, 1036(sp)
  ADDI t0, zero, 2
  SW t1, 1040(sp)
  ADDI t1, zero, 4
  SW t0, 1044(sp)
  ADDI t0, zero, 3
  SW t1, 1048(sp)
  ADDI t1, zero, 6
  SW t0, 1052(sp)
  ADDI t0, zero, 8
  SW t1, 1056(sp)
  ADDI t1, zero, 0
  SW t0, 1060(sp)
  ADDI t0, zero, 1
  SW t1, 1064(sp)
  ADDI t1, zero, 5
  SW t0, 1068(sp)
  ADDI t0, zero, 0
  SW t1, 1072(sp)
  BNE t0, zero, bb84
  # implict jump to bb1
bb1:   # loop depth 0
  ADDI t0, zero, 1
  BNE t0, zero, bb83
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI t0, zero, 8
  # implict jump to bb3
bb3:   # loop depth 0
  XORI t1, t0, 9
  BEQ t1, zero, bb82
  # implict jump to bb4
bb4:   # loop depth 0
  SLTI t1, t0, 9
  BNE t1, zero, bb81
  # implict jump to bb5
bb5:   # loop depth 0
  ADD t2, t0, zero
  # implict jump to bb6
bb6:   # loop depth 0
  ADDIW t1, t0, 2
  BEQ t1, t2, bb80
  # implict jump to bb7
bb7:   # loop depth 0
  BLT t2, t1, bb79
  # implict jump to bb8
bb8:   # loop depth 0
  ADD t1, t2, zero
  # implict jump to bb9
bb9:   # loop depth 0
  ADDIW t0, t2, 7
  BEQ t0, t1, bb78
  # implict jump to bb10
bb10:   # loop depth 0
  BLT t1, t0, bb77
  # implict jump to bb11
bb11:   # loop depth 0
  ADD t0, t1, zero
  # implict jump to bb12
bb12:   # loop depth 0
  BEQ t1, t0, bb76
  # implict jump to bb13
bb13:   # loop depth 0
  BLT t0, t1, bb75
  # implict jump to bb14
bb14:   # loop depth 0
  ADD t1, t0, zero
  # implict jump to bb15
bb15:   # loop depth 0
  ADDIW t0, t0, 1
  BEQ t0, t1, bb74
  # implict jump to bb16
bb16:   # loop depth 0
  BLT t1, t0, bb73
  # implict jump to bb17
bb17:   # loop depth 0
  ADD t0, t1, zero
  # implict jump to bb18
bb18:   # loop depth 0
  ADDIW t1, t1, 9
  BEQ t1, t0, bb72
  # implict jump to bb19
bb19:   # loop depth 0
  BLT t0, t1, bb71
  # implict jump to bb20
bb20:   # loop depth 0
  ADD t1, t0, zero
  # implict jump to bb21
bb21:   # loop depth 0
  ADDIW t0, t0, 3
  BEQ t0, t1, bb70
  # implict jump to bb22
bb22:   # loop depth 0
  BLT t1, t0, bb69
  # implict jump to bb23
bb23:   # loop depth 0
  ADD t0, t1, zero
  # implict jump to bb24
bb24:   # loop depth 0
  ADDIW t1, t1, 4
  BEQ t1, t0, bb68
  # implict jump to bb25
bb25:   # loop depth 0
  BLT t0, t1, bb67
  # implict jump to bb26
bb26:   # loop depth 0
  ADD t1, t0, zero
  # implict jump to bb27
bb27:   # loop depth 0
  ADDIW t0, t0, 8
  BEQ t0, t1, bb66
  # implict jump to bb28
bb28:   # loop depth 0
  BLT t1, t0, bb65
  # implict jump to bb29
bb29:   # loop depth 0
  ADD t0, t1, zero
  # implict jump to bb30
bb30:   # loop depth 0
  ADDIW a0, t1, 3
  BEQ a0, t0, bb64
  # implict jump to bb31
bb31:   # loop depth 0
  BLT t0, a0, bb63
  # implict jump to bb32
bb32:   # loop depth 0
  ADD a0, t0, zero
  # implict jump to bb33
bb33:   # loop depth 0
  ADDIW t0, t0, 7
  BEQ t0, a0, bb62
  # implict jump to bb34
bb34:   # loop depth 0
  BLT a0, t0, bb61
  # implict jump to bb35
bb35:   # loop depth 0
  ADD t0, a0, zero
  # implict jump to bb36
bb36:   # loop depth 0
  BEQ a0, t0, bb60
  # implict jump to bb37
bb37:   # loop depth 0
  BLT t0, a0, bb59
  # implict jump to bb38
bb38:   # loop depth 0
  ADD a0, t0, zero
  # implict jump to bb39
bb39:   # loop depth 0
  ADDI s0, zero, 256
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb40
bb40:   # loop depth 1
  ADDI t1, zero, 0
  SLLIW t0, s0, 2
  ADDIW s0, s0, -1
  ADDI t6, sp, 0
  ADD t0, t6, t0
  SW t1, -4(t0)
  BNE s0, zero, bb58
  # implict jump to bb41
bb41:   # loop depth 0
  ADDI t0, zero, 15
  SLTI t0, t0, 1
  BEQ t0, zero, bb43
  # implict jump to bb42
bb42:   # loop depth 0
  LW a0, 1012(sp)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 1144(sp)
  LD s0, 1152(sp)
  ADDI sp, sp, 1168
  JALR zero, 0(ra)
bb43:   # loop depth 0
  ADDI t0, zero, 13
  ADDI t1, zero, 1
  SLTI a4, t0, 1
  # implict jump to bb44
bb44:   # loop depth 1
  BEQ a4, zero, bb47
  # implict jump to bb45
bb45:   # loop depth 1
  ADDI t0, zero, 15
  ADDIW t1, t1, 1
  BGE t0, t1, bb46
  JAL zero, bb42
bb46:   # loop depth 1
  JAL zero, bb44
bb47:   # loop depth 1
  SLLIW t0, t1, 2
  SLLIW a0, t1, 6
  ADDI t2, sp, 1080
  ADD t0, t2, t0
  ADDI t2, zero, 1
  LW a1, -4(t0)
  ADDI a2, sp, 0
  ADD a2, a2, a0
  # implict jump to bb48
bb48:   # loop depth 2
  SLLIW t0, t2, 2
  ADDI t6, sp, 1024
  ADD t0, t6, t0
  LW t0, -4(t0)
  BEQ a1, t0, bb57
  # implict jump to bb49
bb49:   # loop depth 2
  SH2ADD a3, t2, a2
  LW t0, -64(a3)
  LW a0, -4(a3)
  BEQ t0, a0, bb56
  # implict jump to bb50
bb50:   # loop depth 2
  BLT a0, t0, bb55
  # implict jump to bb51
bb51:   # loop depth 2
  ADD t0, a0, zero
  # implict jump to bb52
bb52:   # loop depth 2
  SW t0, 0(a3)
  # implict jump to bb53
bb53:   # loop depth 2
  ADDI t0, zero, 13
  ADDIW t2, t2, 1
  BGE t0, t2, bb54
  JAL zero, bb45
bb54:   # loop depth 2
  JAL zero, bb48
bb55:   # loop depth 2
  JAL zero, bb52
bb56:   # loop depth 2
  JAL zero, bb52
bb57:   # loop depth 2
  SH2ADD t0, t2, a2
  LW a0, -68(t0)
  ADDIW a0, a0, 1
  SW a0, 0(t0)
  JAL zero, bb53
bb58:   # loop depth 1
  JAL zero, bb40
bb59:   # loop depth 0
  JAL zero, bb39
bb60:   # loop depth 0
  JAL zero, bb39
bb61:   # loop depth 0
  JAL zero, bb36
bb62:   # loop depth 0
  JAL zero, bb36
bb63:   # loop depth 0
  JAL zero, bb33
bb64:   # loop depth 0
  JAL zero, bb33
bb65:   # loop depth 0
  JAL zero, bb30
bb66:   # loop depth 0
  JAL zero, bb30
bb67:   # loop depth 0
  JAL zero, bb27
bb68:   # loop depth 0
  JAL zero, bb27
bb69:   # loop depth 0
  JAL zero, bb24
bb70:   # loop depth 0
  JAL zero, bb24
bb71:   # loop depth 0
  JAL zero, bb21
bb72:   # loop depth 0
  JAL zero, bb21
bb73:   # loop depth 0
  JAL zero, bb18
bb74:   # loop depth 0
  JAL zero, bb18
bb75:   # loop depth 0
  JAL zero, bb15
bb76:   # loop depth 0
  JAL zero, bb15
bb77:   # loop depth 0
  JAL zero, bb12
bb78:   # loop depth 0
  JAL zero, bb12
bb79:   # loop depth 0
  JAL zero, bb9
bb80:   # loop depth 0
  JAL zero, bb9
bb81:   # loop depth 0
  ADDI t2, zero, 9
  JAL zero, bb6
bb82:   # loop depth 0
  ADDI t2, zero, 9
  JAL zero, bb6
bb83:   # loop depth 0
  ADDI t0, zero, 12
  JAL zero, bb3
bb84:   # loop depth 0
  ADDI t0, zero, 12
  JAL zero, bb3
