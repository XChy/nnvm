.global main
.global long_func
.section .bss

.section .data
SHIFT_TABLE:
.byte 1, 0, 0, 0, 2, 0, 0, 0, 4, 0, 0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 32, 0, 0, 0, 64, 0, 0, 0, 128, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 4, 0, 0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 32, 0, 0, 0, 64, 0, 0, 0, 128, 0, 0
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  CALL long_func
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
long_func:
  ADDI sp, sp, -1104
  SD ra, 1064(sp)
  SD s3, 1072(sp)
  SD s2, 1080(sp)
  SD s1, 1088(sp)
  SD s0, 1096(sp)
  ADDI s0, zero, 2
  SW s0, 1016(sp)
  ADDI s0, zero, 0
  SW s0, 1008(sp)
  ADDI s0, zero, 1
  SW s0, 1000(sp)
  JAL zero, bb2
bb2:
  LW s0, 1008(sp)
  ADDI s1, zero, 0
  SLT s2, s1, s0
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb3
  JAL zero, bb4
bb3:
  ADDI s0, zero, 0
  SW s0, 1056(sp)
  ADDI s0, zero, 0
  SW s0, 1048(sp)
  LW s0, 1008(sp)
  SW s0, 1040(sp)
  ADDI s0, zero, 1
  SW s0, 1032(sp)
  JAL zero, bb5
bb4:
  LW s0, 1000(sp)
  SW s0, 1056(sp)
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s0, zero, 2
  SW s0, 760(sp)
  ADDI s0, zero, 1
  SW s0, 752(sp)
  ADDI s0, zero, 1
  SW s0, 744(sp)
  JAL zero, bb205
bb5:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb6
  JAL zero, bb7
bb6:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb8
  JAL zero, bb9
bb7:
  LW s0, 1056(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb13
  JAL zero, bb14
bb8:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 992(sp)
  JAL zero, bb10
bb9:
  SB zero, 992(sp)
  JAL zero, bb10
bb10:
  LB s0, 992(sp)
  BNE s0, zero, bb11
  JAL zero, bb12
bb11:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb12
bb12:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb5
bb13:
  LW s0, 1000(sp)
  SW s0, 984(sp)
  LW s0, 1016(sp)
  SW s0, 976(sp)
  SW zero, 968(sp)
  JAL zero, bb15
bb14:
  LW s0, 1016(sp)
  SW s0, 872(sp)
  LW s0, 1016(sp)
  SW s0, 864(sp)
  SW zero, 856(sp)
  JAL zero, bb104
bb15:
  LW s0, 976(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb16
  JAL zero, bb17
bb16:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 976(sp)
  SW s0, 1040(sp)
  ADDI s0, zero, 1
  SW s0, 1032(sp)
  JAL zero, bb18
bb17:
  LW s0, 968(sp)
  SW s0, 1056(sp)
  SW s0, 1000(sp)
  JAL zero, bb14
bb18:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb19
  JAL zero, bb20
bb19:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb21
  JAL zero, bb22
bb20:
  LW s0, 1056(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb26
  JAL zero, bb27
bb21:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 960(sp)
  JAL zero, bb23
bb22:
  SB zero, 960(sp)
  JAL zero, bb23
bb23:
  LB s0, 960(sp)
  BNE s0, zero, bb24
  JAL zero, bb25
bb24:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb25
bb25:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb18
bb26:
  LW s0, 968(sp)
  SW s0, 952(sp)
  LW s0, 984(sp)
  SW s0, 944(sp)
  JAL zero, bb28
bb27:
  LW s0, 984(sp)
  SW s0, 912(sp)
  LW s0, 984(sp)
  SW s0, 904(sp)
  JAL zero, bb60
bb28:
  LW s0, 944(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb29
  JAL zero, bb30
bb29:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 952(sp)
  SW s0, 1040(sp)
  LW s0, 944(sp)
  SW s0, 1032(sp)
  JAL zero, bb31
bb30:
  LW s0, 952(sp)
  SW s0, 1056(sp)
  SW s0, 968(sp)
  JAL zero, bb27
bb31:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb32
  JAL zero, bb33
bb32:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb34
  JAL zero, bb36
bb33:
  LW s0, 1056(sp)
  SW s0, 936(sp)
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 952(sp)
  SW s0, 1040(sp)
  LW s0, 944(sp)
  SW s0, 1032(sp)
  JAL zero, bb41
bb34:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb37
  JAL zero, bb38
bb35:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb31
bb36:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb39
  JAL zero, bb40
bb37:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb38
bb38:
  JAL zero, bb35
bb39:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb40
bb40:
  JAL zero, bb35
bb41:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb42
  JAL zero, bb43
bb42:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb44
  JAL zero, bb45
bb43:
  LW s0, 1056(sp)
  SW s0, 944(sp)
  ADDI s0, zero, 15
  SLTI s1, s0, 1
  BNE s1, zero, bb49
  JAL zero, bb51
bb44:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 928(sp)
  JAL zero, bb46
bb45:
  SB zero, 928(sp)
  JAL zero, bb46
bb46:
  LB s0, 928(sp)
  BNE s0, zero, bb47
  JAL zero, bb48
bb47:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb48
bb48:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb41
bb49:
  SW zero, 1056(sp)
  JAL zero, bb50
bb50:
  LW s0, 1056(sp)
  SW s0, 944(sp)
  LW s0, 936(sp)
  SW s0, 952(sp)
  JAL zero, bb28
bb51:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 944(sp)
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  MULW s2, s0, s1
  SW s2, 1040(sp)
  LUI s0, 16
  ADDI s0, s0, -1
  SW s0, 1032(sp)
  JAL zero, bb52
bb52:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb53
  JAL zero, bb54
bb53:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb55
  JAL zero, bb56
bb54:
  JAL zero, bb50
bb55:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 920(sp)
  JAL zero, bb57
bb56:
  SB zero, 920(sp)
  JAL zero, bb57
bb57:
  LB s0, 920(sp)
  BNE s0, zero, bb58
  JAL zero, bb59
bb58:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb59
bb59:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb52
bb60:
  LW s0, 904(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb61
  JAL zero, bb62
bb61:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 912(sp)
  SW s0, 1040(sp)
  LW s0, 904(sp)
  SW s0, 1032(sp)
  JAL zero, bb63
bb62:
  LW s0, 912(sp)
  SW s0, 1056(sp)
  SW s0, 984(sp)
  LW s0, 976(sp)
  SW s0, 1040(sp)
  ADDI s0, zero, 1
  SW s0, 1032(sp)
  ADDI s0, zero, 1
  SLTI s1, s0, 15
  XORI s0, s1, 1
  BNE s0, zero, bb92
  JAL zero, bb94
bb63:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb64
  JAL zero, bb65
bb64:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb66
  JAL zero, bb68
bb65:
  LW s0, 1056(sp)
  SW s0, 896(sp)
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 912(sp)
  SW s0, 1040(sp)
  LW s0, 904(sp)
  SW s0, 1032(sp)
  JAL zero, bb73
bb66:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb69
  JAL zero, bb70
bb67:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb63
bb68:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb71
  JAL zero, bb72
bb69:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb70
bb70:
  JAL zero, bb67
bb71:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb72
bb72:
  JAL zero, bb67
bb73:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb74
  JAL zero, bb75
bb74:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb76
  JAL zero, bb77
bb75:
  LW s0, 1056(sp)
  SW s0, 904(sp)
  ADDI s0, zero, 15
  SLTI s1, s0, 1
  BNE s1, zero, bb81
  JAL zero, bb83
bb76:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 888(sp)
  JAL zero, bb78
bb77:
  SB zero, 888(sp)
  JAL zero, bb78
bb78:
  LB s0, 888(sp)
  BNE s0, zero, bb79
  JAL zero, bb80
bb79:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb80
bb80:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb73
bb81:
  SW zero, 1056(sp)
  JAL zero, bb82
bb82:
  LW s0, 1056(sp)
  SW s0, 904(sp)
  LW s0, 896(sp)
  SW s0, 912(sp)
  JAL zero, bb60
bb83:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 904(sp)
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  MULW s2, s0, s1
  SW s2, 1040(sp)
  LUI s0, 16
  ADDI s0, s0, -1
  SW s0, 1032(sp)
  JAL zero, bb84
bb84:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb85
  JAL zero, bb86
bb85:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb87
  JAL zero, bb88
bb86:
  JAL zero, bb82
bb87:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 880(sp)
  JAL zero, bb89
bb88:
  SB zero, 880(sp)
  JAL zero, bb89
bb89:
  LB s0, 880(sp)
  BNE s0, zero, bb90
  JAL zero, bb91
bb90:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb91
bb91:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb84
bb92:
  LW s0, 1040(sp)
  SLT s1, s0, zero
  BNE s1, zero, bb95
  JAL zero, bb97
bb93:
  LW s0, 1056(sp)
  SW s0, 976(sp)
  JAL zero, bb15
bb94:
  LW s0, 1032(sp)
  SLT s1, zero, s0
  BNE s1, zero, bb98
  JAL zero, bb100
bb95:
  LUI s0, 16
  ADDI s0, s0, -1
  SW s0, 1056(sp)
  JAL zero, bb96
bb96:
  JAL zero, bb93
bb97:
  SW zero, 1056(sp)
  JAL zero, bb96
bb98:
  LW s0, 1040(sp)
  LUI s1, 8
  ADDI s1, s1, -1
  SLT s2, s1, s0
  BNE s2, zero, bb101
  JAL zero, bb103
bb99:
  JAL zero, bb93
bb100:
  LW s0, 1040(sp)
  SW s0, 1056(sp)
  JAL zero, bb99
bb101:
  LW s0, 1040(sp)
  LW s1, 1032(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LUI s0, 16
  ADDI s0, s0, 0
  ADDW s1, s2, s0
  LW s0, 1032(sp)
  ADDI s2, zero, 15
  SUBW s3, s2, s0
  ADDIW s0, s3, 1
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, SHIFT_TABLE
  ADD s2, s0, s3
  LW s0, 0(s2)
  SUBW s2, s1, s0
  SW s2, 1056(sp)
  JAL zero, bb102
bb102:
  JAL zero, bb99
bb103:
  LW s0, 1040(sp)
  LW s1, 1032(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  DIVW s2, s0, s1
  SW s2, 1056(sp)
  JAL zero, bb102
bb104:
  LW s0, 864(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb105
  JAL zero, bb106
bb105:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 864(sp)
  SW s0, 1040(sp)
  ADDI s0, zero, 1
  SW s0, 1032(sp)
  JAL zero, bb107
bb106:
  LW s0, 856(sp)
  SW s0, 1056(sp)
  SW s0, 1016(sp)
  LW s0, 1008(sp)
  SW s0, 1040(sp)
  ADDI s0, zero, 1
  SW s0, 1032(sp)
  ADDI s0, zero, 1
  SLTI s1, s0, 15
  XORI s0, s1, 1
  BNE s0, zero, bb193
  JAL zero, bb195
bb107:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb108
  JAL zero, bb109
bb108:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb110
  JAL zero, bb111
bb109:
  LW s0, 1056(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb115
  JAL zero, bb116
bb110:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 848(sp)
  JAL zero, bb112
bb111:
  SB zero, 848(sp)
  JAL zero, bb112
bb112:
  LB s0, 848(sp)
  BNE s0, zero, bb113
  JAL zero, bb114
bb113:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb114
bb114:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb107
bb115:
  LW s0, 856(sp)
  SW s0, 840(sp)
  LW s0, 872(sp)
  SW s0, 832(sp)
  JAL zero, bb117
bb116:
  LW s0, 872(sp)
  SW s0, 800(sp)
  LW s0, 872(sp)
  SW s0, 792(sp)
  JAL zero, bb149
bb117:
  LW s0, 832(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb118
  JAL zero, bb119
bb118:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 840(sp)
  SW s0, 1040(sp)
  LW s0, 832(sp)
  SW s0, 1032(sp)
  JAL zero, bb120
bb119:
  LW s0, 840(sp)
  SW s0, 1056(sp)
  SW s0, 856(sp)
  JAL zero, bb116
bb120:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb121
  JAL zero, bb122
bb121:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb123
  JAL zero, bb125
bb122:
  LW s0, 1056(sp)
  SW s0, 824(sp)
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 840(sp)
  SW s0, 1040(sp)
  LW s0, 832(sp)
  SW s0, 1032(sp)
  JAL zero, bb130
bb123:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb126
  JAL zero, bb127
bb124:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb120
bb125:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb128
  JAL zero, bb129
bb126:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb127
bb127:
  JAL zero, bb124
bb128:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb129
bb129:
  JAL zero, bb124
bb130:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb131
  JAL zero, bb132
bb131:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb133
  JAL zero, bb134
bb132:
  LW s0, 1056(sp)
  SW s0, 832(sp)
  ADDI s0, zero, 15
  SLTI s1, s0, 1
  BNE s1, zero, bb138
  JAL zero, bb140
bb133:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 816(sp)
  JAL zero, bb135
bb134:
  SB zero, 816(sp)
  JAL zero, bb135
bb135:
  LB s0, 816(sp)
  BNE s0, zero, bb136
  JAL zero, bb137
bb136:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb137
bb137:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb130
bb138:
  SW zero, 1056(sp)
  JAL zero, bb139
bb139:
  LW s0, 1056(sp)
  SW s0, 832(sp)
  LW s0, 824(sp)
  SW s0, 840(sp)
  JAL zero, bb117
bb140:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 832(sp)
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  MULW s2, s0, s1
  SW s2, 1040(sp)
  LUI s0, 16
  ADDI s0, s0, -1
  SW s0, 1032(sp)
  JAL zero, bb141
bb141:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb142
  JAL zero, bb143
bb142:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb144
  JAL zero, bb145
bb143:
  JAL zero, bb139
bb144:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 808(sp)
  JAL zero, bb146
bb145:
  SB zero, 808(sp)
  JAL zero, bb146
bb146:
  LB s0, 808(sp)
  BNE s0, zero, bb147
  JAL zero, bb148
bb147:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb148
bb148:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb141
bb149:
  LW s0, 792(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb150
  JAL zero, bb151
bb150:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 800(sp)
  SW s0, 1040(sp)
  LW s0, 792(sp)
  SW s0, 1032(sp)
  JAL zero, bb152
bb151:
  LW s0, 800(sp)
  SW s0, 1056(sp)
  SW s0, 872(sp)
  LW s0, 864(sp)
  SW s0, 1040(sp)
  ADDI s0, zero, 1
  SW s0, 1032(sp)
  ADDI s0, zero, 1
  SLTI s1, s0, 15
  XORI s0, s1, 1
  BNE s0, zero, bb181
  JAL zero, bb183
bb152:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb153
  JAL zero, bb154
bb153:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb155
  JAL zero, bb157
bb154:
  LW s0, 1056(sp)
  SW s0, 784(sp)
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 800(sp)
  SW s0, 1040(sp)
  LW s0, 792(sp)
  SW s0, 1032(sp)
  JAL zero, bb162
bb155:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb158
  JAL zero, bb159
bb156:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb152
bb157:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb160
  JAL zero, bb161
bb158:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb159
bb159:
  JAL zero, bb156
bb160:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb161
bb161:
  JAL zero, bb156
bb162:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb163
  JAL zero, bb164
bb163:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb165
  JAL zero, bb166
bb164:
  LW s0, 1056(sp)
  SW s0, 792(sp)
  ADDI s0, zero, 15
  SLTI s1, s0, 1
  BNE s1, zero, bb170
  JAL zero, bb172
bb165:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 776(sp)
  JAL zero, bb167
bb166:
  SB zero, 776(sp)
  JAL zero, bb167
bb167:
  LB s0, 776(sp)
  BNE s0, zero, bb168
  JAL zero, bb169
bb168:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb169
bb169:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb162
bb170:
  SW zero, 1056(sp)
  JAL zero, bb171
bb171:
  LW s0, 1056(sp)
  SW s0, 792(sp)
  LW s0, 784(sp)
  SW s0, 800(sp)
  JAL zero, bb149
bb172:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 792(sp)
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  MULW s2, s0, s1
  SW s2, 1040(sp)
  LUI s0, 16
  ADDI s0, s0, -1
  SW s0, 1032(sp)
  JAL zero, bb173
bb173:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb174
  JAL zero, bb175
bb174:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb176
  JAL zero, bb177
bb175:
  JAL zero, bb171
bb176:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 768(sp)
  JAL zero, bb178
bb177:
  SB zero, 768(sp)
  JAL zero, bb178
bb178:
  LB s0, 768(sp)
  BNE s0, zero, bb179
  JAL zero, bb180
bb179:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb180
bb180:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb173
bb181:
  LW s0, 1040(sp)
  SLT s1, s0, zero
  BNE s1, zero, bb184
  JAL zero, bb186
bb182:
  LW s0, 1056(sp)
  SW s0, 864(sp)
  JAL zero, bb104
bb183:
  LW s0, 1032(sp)
  SLT s1, zero, s0
  BNE s1, zero, bb187
  JAL zero, bb189
bb184:
  LUI s0, 16
  ADDI s0, s0, -1
  SW s0, 1056(sp)
  JAL zero, bb185
bb185:
  JAL zero, bb182
bb186:
  SW zero, 1056(sp)
  JAL zero, bb185
bb187:
  LW s0, 1040(sp)
  LUI s1, 8
  ADDI s1, s1, -1
  SLT s2, s1, s0
  BNE s2, zero, bb190
  JAL zero, bb192
bb188:
  JAL zero, bb182
bb189:
  LW s0, 1040(sp)
  SW s0, 1056(sp)
  JAL zero, bb188
bb190:
  LW s0, 1040(sp)
  LW s1, 1032(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LUI s0, 16
  ADDI s0, s0, 0
  ADDW s1, s2, s0
  LW s0, 1032(sp)
  ADDI s2, zero, 15
  SUBW s3, s2, s0
  ADDIW s0, s3, 1
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, SHIFT_TABLE
  ADD s2, s0, s3
  LW s0, 0(s2)
  SUBW s2, s1, s0
  SW s2, 1056(sp)
  JAL zero, bb191
bb191:
  JAL zero, bb188
bb192:
  LW s0, 1040(sp)
  LW s1, 1032(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  DIVW s2, s0, s1
  SW s2, 1056(sp)
  JAL zero, bb191
bb193:
  LW s0, 1040(sp)
  SLT s1, s0, zero
  BNE s1, zero, bb196
  JAL zero, bb198
bb194:
  LW s0, 1056(sp)
  SW s0, 1008(sp)
  JAL zero, bb2
bb195:
  LW s0, 1032(sp)
  SLT s1, zero, s0
  BNE s1, zero, bb199
  JAL zero, bb201
bb196:
  LUI s0, 16
  ADDI s0, s0, -1
  SW s0, 1056(sp)
  JAL zero, bb197
bb197:
  JAL zero, bb194
bb198:
  SW zero, 1056(sp)
  JAL zero, bb197
bb199:
  LW s0, 1040(sp)
  LUI s1, 8
  ADDI s1, s1, -1
  SLT s2, s1, s0
  BNE s2, zero, bb202
  JAL zero, bb204
bb200:
  JAL zero, bb194
bb201:
  LW s0, 1040(sp)
  SW s0, 1056(sp)
  JAL zero, bb200
bb202:
  LW s0, 1040(sp)
  LW s1, 1032(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LUI s0, 16
  ADDI s0, s0, 0
  ADDW s1, s2, s0
  LW s0, 1032(sp)
  ADDI s2, zero, 15
  SUBW s3, s2, s0
  ADDIW s0, s3, 1
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, SHIFT_TABLE
  ADD s2, s0, s3
  LW s0, 0(s2)
  SUBW s2, s1, s0
  SW s2, 1056(sp)
  JAL zero, bb203
bb203:
  JAL zero, bb200
bb204:
  LW s0, 1040(sp)
  LW s1, 1032(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  DIVW s2, s0, s1
  SW s2, 1056(sp)
  JAL zero, bb203
bb205:
  LW s0, 752(sp)
  SLT s1, zero, s0
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb206
  JAL zero, bb207
bb206:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 752(sp)
  SW s0, 1040(sp)
  ADDI s0, zero, 1
  SW s0, 1032(sp)
  JAL zero, bb208
bb207:
  LW s0, 744(sp)
  SW s0, 1056(sp)
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s0, zero, 2
  SW s0, 1024(sp)
  JAL zero, bb408
bb208:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb209
  JAL zero, bb210
bb209:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb211
  JAL zero, bb212
bb210:
  LW s0, 1056(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb216
  JAL zero, bb217
bb211:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 736(sp)
  JAL zero, bb213
bb212:
  SB zero, 736(sp)
  JAL zero, bb213
bb213:
  LB s0, 736(sp)
  BNE s0, zero, bb214
  JAL zero, bb215
bb214:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb215
bb215:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb208
bb216:
  LW s0, 744(sp)
  SW s0, 728(sp)
  LW s0, 760(sp)
  SW s0, 720(sp)
  SW zero, 712(sp)
  JAL zero, bb218
bb217:
  LW s0, 760(sp)
  SW s0, 616(sp)
  LW s0, 760(sp)
  SW s0, 608(sp)
  SW zero, 600(sp)
  JAL zero, bb307
bb218:
  LW s0, 720(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb219
  JAL zero, bb220
bb219:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 720(sp)
  SW s0, 1040(sp)
  ADDI s0, zero, 1
  SW s0, 1032(sp)
  JAL zero, bb221
bb220:
  LW s0, 712(sp)
  SW s0, 1056(sp)
  SW s0, 744(sp)
  JAL zero, bb217
bb221:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb222
  JAL zero, bb223
bb222:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb224
  JAL zero, bb225
bb223:
  LW s0, 1056(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb229
  JAL zero, bb230
bb224:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 704(sp)
  JAL zero, bb226
bb225:
  SB zero, 704(sp)
  JAL zero, bb226
bb226:
  LB s0, 704(sp)
  BNE s0, zero, bb227
  JAL zero, bb228
bb227:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb228
bb228:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb221
bb229:
  LW s0, 712(sp)
  SW s0, 696(sp)
  LW s0, 728(sp)
  SW s0, 688(sp)
  JAL zero, bb231
bb230:
  LW s0, 728(sp)
  SW s0, 656(sp)
  LW s0, 728(sp)
  SW s0, 648(sp)
  JAL zero, bb263
bb231:
  LW s0, 688(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb232
  JAL zero, bb233
bb232:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 696(sp)
  SW s0, 1040(sp)
  LW s0, 688(sp)
  SW s0, 1032(sp)
  JAL zero, bb234
bb233:
  LW s0, 696(sp)
  SW s0, 1056(sp)
  SW s0, 712(sp)
  JAL zero, bb230
bb234:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb235
  JAL zero, bb236
bb235:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb237
  JAL zero, bb239
bb236:
  LW s0, 1056(sp)
  SW s0, 680(sp)
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 696(sp)
  SW s0, 1040(sp)
  LW s0, 688(sp)
  SW s0, 1032(sp)
  JAL zero, bb244
bb237:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb240
  JAL zero, bb241
bb238:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb234
bb239:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb242
  JAL zero, bb243
bb240:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb241
bb241:
  JAL zero, bb238
bb242:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb243
bb243:
  JAL zero, bb238
bb244:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb245
  JAL zero, bb246
bb245:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb247
  JAL zero, bb248
bb246:
  LW s0, 1056(sp)
  SW s0, 688(sp)
  ADDI s0, zero, 15
  SLTI s1, s0, 1
  BNE s1, zero, bb252
  JAL zero, bb254
bb247:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 672(sp)
  JAL zero, bb249
bb248:
  SB zero, 672(sp)
  JAL zero, bb249
bb249:
  LB s0, 672(sp)
  BNE s0, zero, bb250
  JAL zero, bb251
bb250:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb251
bb251:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb244
bb252:
  SW zero, 1056(sp)
  JAL zero, bb253
bb253:
  LW s0, 1056(sp)
  SW s0, 688(sp)
  LW s0, 680(sp)
  SW s0, 696(sp)
  JAL zero, bb231
bb254:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 688(sp)
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  MULW s2, s0, s1
  SW s2, 1040(sp)
  LUI s0, 16
  ADDI s0, s0, -1
  SW s0, 1032(sp)
  JAL zero, bb255
bb255:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb256
  JAL zero, bb257
bb256:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb258
  JAL zero, bb259
bb257:
  JAL zero, bb253
bb258:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 664(sp)
  JAL zero, bb260
bb259:
  SB zero, 664(sp)
  JAL zero, bb260
bb260:
  LB s0, 664(sp)
  BNE s0, zero, bb261
  JAL zero, bb262
bb261:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb262
bb262:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb255
bb263:
  LW s0, 648(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb264
  JAL zero, bb265
bb264:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 656(sp)
  SW s0, 1040(sp)
  LW s0, 648(sp)
  SW s0, 1032(sp)
  JAL zero, bb266
bb265:
  LW s0, 656(sp)
  SW s0, 1056(sp)
  SW s0, 728(sp)
  LW s0, 720(sp)
  SW s0, 1040(sp)
  ADDI s0, zero, 1
  SW s0, 1032(sp)
  ADDI s0, zero, 1
  SLTI s1, s0, 15
  XORI s0, s1, 1
  BNE s0, zero, bb295
  JAL zero, bb297
bb266:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb267
  JAL zero, bb268
bb267:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb269
  JAL zero, bb271
bb268:
  LW s0, 1056(sp)
  SW s0, 640(sp)
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 656(sp)
  SW s0, 1040(sp)
  LW s0, 648(sp)
  SW s0, 1032(sp)
  JAL zero, bb276
bb269:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb272
  JAL zero, bb273
bb270:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb266
bb271:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb274
  JAL zero, bb275
bb272:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb273
bb273:
  JAL zero, bb270
bb274:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb275
bb275:
  JAL zero, bb270
bb276:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb277
  JAL zero, bb278
bb277:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb279
  JAL zero, bb280
bb278:
  LW s0, 1056(sp)
  SW s0, 648(sp)
  ADDI s0, zero, 15
  SLTI s1, s0, 1
  BNE s1, zero, bb284
  JAL zero, bb286
bb279:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 632(sp)
  JAL zero, bb281
bb280:
  SB zero, 632(sp)
  JAL zero, bb281
bb281:
  LB s0, 632(sp)
  BNE s0, zero, bb282
  JAL zero, bb283
bb282:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb283
bb283:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb276
bb284:
  SW zero, 1056(sp)
  JAL zero, bb285
bb285:
  LW s0, 1056(sp)
  SW s0, 648(sp)
  LW s0, 640(sp)
  SW s0, 656(sp)
  JAL zero, bb263
bb286:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 648(sp)
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  MULW s2, s0, s1
  SW s2, 1040(sp)
  LUI s0, 16
  ADDI s0, s0, -1
  SW s0, 1032(sp)
  JAL zero, bb287
bb287:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb288
  JAL zero, bb289
bb288:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb290
  JAL zero, bb291
bb289:
  JAL zero, bb285
bb290:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 624(sp)
  JAL zero, bb292
bb291:
  SB zero, 624(sp)
  JAL zero, bb292
bb292:
  LB s0, 624(sp)
  BNE s0, zero, bb293
  JAL zero, bb294
bb293:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb294
bb294:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb287
bb295:
  LW s0, 1040(sp)
  SLT s1, s0, zero
  BNE s1, zero, bb298
  JAL zero, bb300
bb296:
  LW s0, 1056(sp)
  SW s0, 720(sp)
  JAL zero, bb218
bb297:
  LW s0, 1032(sp)
  SLT s1, zero, s0
  BNE s1, zero, bb301
  JAL zero, bb303
bb298:
  LUI s0, 16
  ADDI s0, s0, -1
  SW s0, 1056(sp)
  JAL zero, bb299
bb299:
  JAL zero, bb296
bb300:
  SW zero, 1056(sp)
  JAL zero, bb299
bb301:
  LW s0, 1040(sp)
  LUI s1, 8
  ADDI s1, s1, -1
  SLT s2, s1, s0
  BNE s2, zero, bb304
  JAL zero, bb306
bb302:
  JAL zero, bb296
bb303:
  LW s0, 1040(sp)
  SW s0, 1056(sp)
  JAL zero, bb302
bb304:
  LW s0, 1040(sp)
  LW s1, 1032(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LUI s0, 16
  ADDI s0, s0, 0
  ADDW s1, s2, s0
  LW s0, 1032(sp)
  ADDI s2, zero, 15
  SUBW s3, s2, s0
  ADDIW s0, s3, 1
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, SHIFT_TABLE
  ADD s2, s0, s3
  LW s0, 0(s2)
  SUBW s2, s1, s0
  SW s2, 1056(sp)
  JAL zero, bb305
bb305:
  JAL zero, bb302
bb306:
  LW s0, 1040(sp)
  LW s1, 1032(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  DIVW s2, s0, s1
  SW s2, 1056(sp)
  JAL zero, bb305
bb307:
  LW s0, 608(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb308
  JAL zero, bb309
bb308:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 608(sp)
  SW s0, 1040(sp)
  ADDI s0, zero, 1
  SW s0, 1032(sp)
  JAL zero, bb310
bb309:
  LW s0, 600(sp)
  SW s0, 1056(sp)
  SW s0, 760(sp)
  LW s0, 752(sp)
  SW s0, 1040(sp)
  ADDI s0, zero, 1
  SW s0, 1032(sp)
  ADDI s0, zero, 1
  SLTI s1, s0, 15
  XORI s0, s1, 1
  BNE s0, zero, bb396
  JAL zero, bb398
bb310:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb311
  JAL zero, bb312
bb311:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb313
  JAL zero, bb314
bb312:
  LW s0, 1056(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb318
  JAL zero, bb319
bb313:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 592(sp)
  JAL zero, bb315
bb314:
  SB zero, 592(sp)
  JAL zero, bb315
bb315:
  LB s0, 592(sp)
  BNE s0, zero, bb316
  JAL zero, bb317
bb316:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb317
bb317:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb310
bb318:
  LW s0, 600(sp)
  SW s0, 584(sp)
  LW s0, 616(sp)
  SW s0, 576(sp)
  JAL zero, bb320
bb319:
  LW s0, 616(sp)
  SW s0, 544(sp)
  LW s0, 616(sp)
  SW s0, 536(sp)
  JAL zero, bb352
bb320:
  LW s0, 576(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb321
  JAL zero, bb322
bb321:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 584(sp)
  SW s0, 1040(sp)
  LW s0, 576(sp)
  SW s0, 1032(sp)
  JAL zero, bb323
bb322:
  LW s0, 584(sp)
  SW s0, 1056(sp)
  SW s0, 600(sp)
  JAL zero, bb319
bb323:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb324
  JAL zero, bb325
bb324:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb326
  JAL zero, bb328
bb325:
  LW s0, 1056(sp)
  SW s0, 568(sp)
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 584(sp)
  SW s0, 1040(sp)
  LW s0, 576(sp)
  SW s0, 1032(sp)
  JAL zero, bb333
bb326:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb329
  JAL zero, bb330
bb327:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb323
bb328:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb331
  JAL zero, bb332
bb329:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb330
bb330:
  JAL zero, bb327
bb331:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb332
bb332:
  JAL zero, bb327
bb333:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb334
  JAL zero, bb335
bb334:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb336
  JAL zero, bb337
bb335:
  LW s0, 1056(sp)
  SW s0, 576(sp)
  ADDI s0, zero, 15
  SLTI s1, s0, 1
  BNE s1, zero, bb341
  JAL zero, bb343
bb336:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 560(sp)
  JAL zero, bb338
bb337:
  SB zero, 560(sp)
  JAL zero, bb338
bb338:
  LB s0, 560(sp)
  BNE s0, zero, bb339
  JAL zero, bb340
bb339:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb340
bb340:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb333
bb341:
  SW zero, 1056(sp)
  JAL zero, bb342
bb342:
  LW s0, 1056(sp)
  SW s0, 576(sp)
  LW s0, 568(sp)
  SW s0, 584(sp)
  JAL zero, bb320
bb343:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 576(sp)
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  MULW s2, s0, s1
  SW s2, 1040(sp)
  LUI s0, 16
  ADDI s0, s0, -1
  SW s0, 1032(sp)
  JAL zero, bb344
bb344:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb345
  JAL zero, bb346
bb345:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb347
  JAL zero, bb348
bb346:
  JAL zero, bb342
bb347:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 552(sp)
  JAL zero, bb349
bb348:
  SB zero, 552(sp)
  JAL zero, bb349
bb349:
  LB s0, 552(sp)
  BNE s0, zero, bb350
  JAL zero, bb351
bb350:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb351
bb351:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb344
bb352:
  LW s0, 536(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb353
  JAL zero, bb354
bb353:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 544(sp)
  SW s0, 1040(sp)
  LW s0, 536(sp)
  SW s0, 1032(sp)
  JAL zero, bb355
bb354:
  LW s0, 544(sp)
  SW s0, 1056(sp)
  SW s0, 616(sp)
  LW s0, 608(sp)
  SW s0, 1040(sp)
  ADDI s0, zero, 1
  SW s0, 1032(sp)
  ADDI s0, zero, 1
  SLTI s1, s0, 15
  XORI s0, s1, 1
  BNE s0, zero, bb384
  JAL zero, bb386
bb355:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb356
  JAL zero, bb357
bb356:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb358
  JAL zero, bb360
bb357:
  LW s0, 1056(sp)
  SW s0, 528(sp)
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 544(sp)
  SW s0, 1040(sp)
  LW s0, 536(sp)
  SW s0, 1032(sp)
  JAL zero, bb365
bb358:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb361
  JAL zero, bb362
bb359:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb355
bb360:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb363
  JAL zero, bb364
bb361:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb362
bb362:
  JAL zero, bb359
bb363:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb364
bb364:
  JAL zero, bb359
bb365:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb366
  JAL zero, bb367
bb366:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb368
  JAL zero, bb369
bb367:
  LW s0, 1056(sp)
  SW s0, 536(sp)
  ADDI s0, zero, 15
  SLTI s1, s0, 1
  BNE s1, zero, bb373
  JAL zero, bb375
bb368:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 520(sp)
  JAL zero, bb370
bb369:
  SB zero, 520(sp)
  JAL zero, bb370
bb370:
  LB s0, 520(sp)
  BNE s0, zero, bb371
  JAL zero, bb372
bb371:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb372
bb372:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb365
bb373:
  SW zero, 1056(sp)
  JAL zero, bb374
bb374:
  LW s0, 1056(sp)
  SW s0, 536(sp)
  LW s0, 528(sp)
  SW s0, 544(sp)
  JAL zero, bb352
bb375:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 536(sp)
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  MULW s2, s0, s1
  SW s2, 1040(sp)
  LUI s0, 16
  ADDI s0, s0, -1
  SW s0, 1032(sp)
  JAL zero, bb376
bb376:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb377
  JAL zero, bb378
bb377:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb379
  JAL zero, bb380
bb378:
  JAL zero, bb374
bb379:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 512(sp)
  JAL zero, bb381
bb380:
  SB zero, 512(sp)
  JAL zero, bb381
bb381:
  LB s0, 512(sp)
  BNE s0, zero, bb382
  JAL zero, bb383
bb382:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb383
bb383:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb376
bb384:
  LW s0, 1040(sp)
  SLT s1, s0, zero
  BNE s1, zero, bb387
  JAL zero, bb389
bb385:
  LW s0, 1056(sp)
  SW s0, 608(sp)
  JAL zero, bb307
bb386:
  LW s0, 1032(sp)
  SLT s1, zero, s0
  BNE s1, zero, bb390
  JAL zero, bb392
bb387:
  LUI s0, 16
  ADDI s0, s0, -1
  SW s0, 1056(sp)
  JAL zero, bb388
bb388:
  JAL zero, bb385
bb389:
  SW zero, 1056(sp)
  JAL zero, bb388
bb390:
  LW s0, 1040(sp)
  LUI s1, 8
  ADDI s1, s1, -1
  SLT s2, s1, s0
  BNE s2, zero, bb393
  JAL zero, bb395
bb391:
  JAL zero, bb385
bb392:
  LW s0, 1040(sp)
  SW s0, 1056(sp)
  JAL zero, bb391
bb393:
  LW s0, 1040(sp)
  LW s1, 1032(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LUI s0, 16
  ADDI s0, s0, 0
  ADDW s1, s2, s0
  LW s0, 1032(sp)
  ADDI s2, zero, 15
  SUBW s3, s2, s0
  ADDIW s0, s3, 1
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, SHIFT_TABLE
  ADD s2, s0, s3
  LW s0, 0(s2)
  SUBW s2, s1, s0
  SW s2, 1056(sp)
  JAL zero, bb394
bb394:
  JAL zero, bb391
bb395:
  LW s0, 1040(sp)
  LW s1, 1032(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  DIVW s2, s0, s1
  SW s2, 1056(sp)
  JAL zero, bb394
bb396:
  LW s0, 1040(sp)
  SLT s1, s0, zero
  BNE s1, zero, bb399
  JAL zero, bb401
bb397:
  LW s0, 1056(sp)
  SW s0, 752(sp)
  JAL zero, bb205
bb398:
  LW s0, 1032(sp)
  SLT s1, zero, s0
  BNE s1, zero, bb402
  JAL zero, bb404
bb399:
  LUI s0, 16
  ADDI s0, s0, -1
  SW s0, 1056(sp)
  JAL zero, bb400
bb400:
  JAL zero, bb397
bb401:
  SW zero, 1056(sp)
  JAL zero, bb400
bb402:
  LW s0, 1040(sp)
  LUI s1, 8
  ADDI s1, s1, -1
  SLT s2, s1, s0
  BNE s2, zero, bb405
  JAL zero, bb407
bb403:
  JAL zero, bb397
bb404:
  LW s0, 1040(sp)
  SW s0, 1056(sp)
  JAL zero, bb403
bb405:
  LW s0, 1040(sp)
  LW s1, 1032(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LUI s0, 16
  ADDI s0, s0, 0
  ADDW s1, s2, s0
  LW s0, 1032(sp)
  ADDI s2, zero, 15
  SUBW s3, s2, s0
  ADDIW s0, s3, 1
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, SHIFT_TABLE
  ADD s2, s0, s3
  LW s0, 0(s2)
  SUBW s2, s1, s0
  SW s2, 1056(sp)
  JAL zero, bb406
bb406:
  JAL zero, bb403
bb407:
  LW s0, 1040(sp)
  LW s1, 1032(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  DIVW s2, s0, s1
  SW s2, 1056(sp)
  JAL zero, bb406
bb408:
  LW s0, 1024(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb409
  JAL zero, bb410
bb409:
  ADDI s0, zero, 2
  SW s0, 504(sp)
  LW s0, 1024(sp)
  SW s0, 496(sp)
  ADDI s0, zero, 1
  SW s0, 488(sp)
  JAL zero, bb411
bb410:
  SW zero, 1024(sp)
  JAL zero, bb614
bb411:
  LW s0, 496(sp)
  SLT s1, zero, s0
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb412
  JAL zero, bb413
bb412:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 496(sp)
  SW s0, 1040(sp)
  ADDI s0, zero, 1
  SW s0, 1032(sp)
  JAL zero, bb414
bb413:
  LW s0, 488(sp)
  SW s0, 1056(sp)
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW s0, 1024(sp)
  ADDIW s1, s0, 1
  SW s1, 1024(sp)
  JAL zero, bb408
bb414:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb415
  JAL zero, bb416
bb415:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb417
  JAL zero, bb418
bb416:
  LW s0, 1056(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb422
  JAL zero, bb423
bb417:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 480(sp)
  JAL zero, bb419
bb418:
  SB zero, 480(sp)
  JAL zero, bb419
bb419:
  LB s0, 480(sp)
  BNE s0, zero, bb420
  JAL zero, bb421
bb420:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb421
bb421:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb414
bb422:
  LW s0, 488(sp)
  SW s0, 472(sp)
  LW s0, 504(sp)
  SW s0, 464(sp)
  SW zero, 456(sp)
  JAL zero, bb424
bb423:
  LW s0, 504(sp)
  SW s0, 360(sp)
  LW s0, 504(sp)
  SW s0, 352(sp)
  SW zero, 344(sp)
  JAL zero, bb513
bb424:
  LW s0, 464(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb425
  JAL zero, bb426
bb425:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 464(sp)
  SW s0, 1040(sp)
  ADDI s0, zero, 1
  SW s0, 1032(sp)
  JAL zero, bb427
bb426:
  LW s0, 456(sp)
  SW s0, 1056(sp)
  SW s0, 488(sp)
  JAL zero, bb423
bb427:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb428
  JAL zero, bb429
bb428:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb430
  JAL zero, bb431
bb429:
  LW s0, 1056(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb435
  JAL zero, bb436
bb430:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 448(sp)
  JAL zero, bb432
bb431:
  SB zero, 448(sp)
  JAL zero, bb432
bb432:
  LB s0, 448(sp)
  BNE s0, zero, bb433
  JAL zero, bb434
bb433:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb434
bb434:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb427
bb435:
  LW s0, 456(sp)
  SW s0, 440(sp)
  LW s0, 472(sp)
  SW s0, 432(sp)
  JAL zero, bb437
bb436:
  LW s0, 472(sp)
  SW s0, 400(sp)
  LW s0, 472(sp)
  SW s0, 392(sp)
  JAL zero, bb469
bb437:
  LW s0, 432(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb438
  JAL zero, bb439
bb438:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 440(sp)
  SW s0, 1040(sp)
  LW s0, 432(sp)
  SW s0, 1032(sp)
  JAL zero, bb440
bb439:
  LW s0, 440(sp)
  SW s0, 1056(sp)
  SW s0, 456(sp)
  JAL zero, bb436
bb440:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb441
  JAL zero, bb442
bb441:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb443
  JAL zero, bb445
bb442:
  LW s0, 1056(sp)
  SW s0, 424(sp)
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 440(sp)
  SW s0, 1040(sp)
  LW s0, 432(sp)
  SW s0, 1032(sp)
  JAL zero, bb450
bb443:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb446
  JAL zero, bb447
bb444:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb440
bb445:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb448
  JAL zero, bb449
bb446:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb447
bb447:
  JAL zero, bb444
bb448:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb449
bb449:
  JAL zero, bb444
bb450:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb451
  JAL zero, bb452
bb451:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb453
  JAL zero, bb454
bb452:
  LW s0, 1056(sp)
  SW s0, 432(sp)
  ADDI s0, zero, 15
  SLTI s1, s0, 1
  BNE s1, zero, bb458
  JAL zero, bb460
bb453:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 416(sp)
  JAL zero, bb455
bb454:
  SB zero, 416(sp)
  JAL zero, bb455
bb455:
  LB s0, 416(sp)
  BNE s0, zero, bb456
  JAL zero, bb457
bb456:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb457
bb457:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb450
bb458:
  SW zero, 1056(sp)
  JAL zero, bb459
bb459:
  LW s0, 1056(sp)
  SW s0, 432(sp)
  LW s0, 424(sp)
  SW s0, 440(sp)
  JAL zero, bb437
bb460:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 432(sp)
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  MULW s2, s0, s1
  SW s2, 1040(sp)
  LUI s0, 16
  ADDI s0, s0, -1
  SW s0, 1032(sp)
  JAL zero, bb461
bb461:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb462
  JAL zero, bb463
bb462:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb464
  JAL zero, bb465
bb463:
  JAL zero, bb459
bb464:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 408(sp)
  JAL zero, bb466
bb465:
  SB zero, 408(sp)
  JAL zero, bb466
bb466:
  LB s0, 408(sp)
  BNE s0, zero, bb467
  JAL zero, bb468
bb467:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb468
bb468:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb461
bb469:
  LW s0, 392(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb470
  JAL zero, bb471
bb470:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 400(sp)
  SW s0, 1040(sp)
  LW s0, 392(sp)
  SW s0, 1032(sp)
  JAL zero, bb472
bb471:
  LW s0, 400(sp)
  SW s0, 1056(sp)
  SW s0, 472(sp)
  LW s0, 464(sp)
  SW s0, 1040(sp)
  ADDI s0, zero, 1
  SW s0, 1032(sp)
  ADDI s0, zero, 1
  SLTI s1, s0, 15
  XORI s0, s1, 1
  BNE s0, zero, bb501
  JAL zero, bb503
bb472:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb473
  JAL zero, bb474
bb473:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb475
  JAL zero, bb477
bb474:
  LW s0, 1056(sp)
  SW s0, 384(sp)
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 400(sp)
  SW s0, 1040(sp)
  LW s0, 392(sp)
  SW s0, 1032(sp)
  JAL zero, bb482
bb475:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb478
  JAL zero, bb479
bb476:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb472
bb477:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb480
  JAL zero, bb481
bb478:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb479
bb479:
  JAL zero, bb476
bb480:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb481
bb481:
  JAL zero, bb476
bb482:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb483
  JAL zero, bb484
bb483:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb485
  JAL zero, bb486
bb484:
  LW s0, 1056(sp)
  SW s0, 392(sp)
  ADDI s0, zero, 15
  SLTI s1, s0, 1
  BNE s1, zero, bb490
  JAL zero, bb492
bb485:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 376(sp)
  JAL zero, bb487
bb486:
  SB zero, 376(sp)
  JAL zero, bb487
bb487:
  LB s0, 376(sp)
  BNE s0, zero, bb488
  JAL zero, bb489
bb488:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb489
bb489:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb482
bb490:
  SW zero, 1056(sp)
  JAL zero, bb491
bb491:
  LW s0, 1056(sp)
  SW s0, 392(sp)
  LW s0, 384(sp)
  SW s0, 400(sp)
  JAL zero, bb469
bb492:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 392(sp)
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  MULW s2, s0, s1
  SW s2, 1040(sp)
  LUI s0, 16
  ADDI s0, s0, -1
  SW s0, 1032(sp)
  JAL zero, bb493
bb493:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb494
  JAL zero, bb495
bb494:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb496
  JAL zero, bb497
bb495:
  JAL zero, bb491
bb496:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 368(sp)
  JAL zero, bb498
bb497:
  SB zero, 368(sp)
  JAL zero, bb498
bb498:
  LB s0, 368(sp)
  BNE s0, zero, bb499
  JAL zero, bb500
bb499:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb500
bb500:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb493
bb501:
  LW s0, 1040(sp)
  SLT s1, s0, zero
  BNE s1, zero, bb504
  JAL zero, bb506
bb502:
  LW s0, 1056(sp)
  SW s0, 464(sp)
  JAL zero, bb424
bb503:
  LW s0, 1032(sp)
  SLT s1, zero, s0
  BNE s1, zero, bb507
  JAL zero, bb509
bb504:
  LUI s0, 16
  ADDI s0, s0, -1
  SW s0, 1056(sp)
  JAL zero, bb505
bb505:
  JAL zero, bb502
bb506:
  SW zero, 1056(sp)
  JAL zero, bb505
bb507:
  LW s0, 1040(sp)
  LUI s1, 8
  ADDI s1, s1, -1
  SLT s2, s1, s0
  BNE s2, zero, bb510
  JAL zero, bb512
bb508:
  JAL zero, bb502
bb509:
  LW s0, 1040(sp)
  SW s0, 1056(sp)
  JAL zero, bb508
bb510:
  LW s0, 1040(sp)
  LW s1, 1032(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LUI s0, 16
  ADDI s0, s0, 0
  ADDW s1, s2, s0
  LW s0, 1032(sp)
  ADDI s2, zero, 15
  SUBW s3, s2, s0
  ADDIW s0, s3, 1
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, SHIFT_TABLE
  ADD s2, s0, s3
  LW s0, 0(s2)
  SUBW s2, s1, s0
  SW s2, 1056(sp)
  JAL zero, bb511
bb511:
  JAL zero, bb508
bb512:
  LW s0, 1040(sp)
  LW s1, 1032(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  DIVW s2, s0, s1
  SW s2, 1056(sp)
  JAL zero, bb511
bb513:
  LW s0, 352(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb514
  JAL zero, bb515
bb514:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 352(sp)
  SW s0, 1040(sp)
  ADDI s0, zero, 1
  SW s0, 1032(sp)
  JAL zero, bb516
bb515:
  LW s0, 344(sp)
  SW s0, 1056(sp)
  SW s0, 504(sp)
  LW s0, 496(sp)
  SW s0, 1040(sp)
  ADDI s0, zero, 1
  SW s0, 1032(sp)
  ADDI s0, zero, 1
  SLTI s1, s0, 15
  XORI s0, s1, 1
  BNE s0, zero, bb602
  JAL zero, bb604
bb516:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb517
  JAL zero, bb518
bb517:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb519
  JAL zero, bb520
bb518:
  LW s0, 1056(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb524
  JAL zero, bb525
bb519:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 336(sp)
  JAL zero, bb521
bb520:
  SB zero, 336(sp)
  JAL zero, bb521
bb521:
  LB s0, 336(sp)
  BNE s0, zero, bb522
  JAL zero, bb523
bb522:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb523
bb523:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb516
bb524:
  LW s0, 344(sp)
  SW s0, 328(sp)
  LW s0, 360(sp)
  SW s0, 320(sp)
  JAL zero, bb526
bb525:
  LW s0, 360(sp)
  SW s0, 288(sp)
  LW s0, 360(sp)
  SW s0, 280(sp)
  JAL zero, bb558
bb526:
  LW s0, 320(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb527
  JAL zero, bb528
bb527:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 328(sp)
  SW s0, 1040(sp)
  LW s0, 320(sp)
  SW s0, 1032(sp)
  JAL zero, bb529
bb528:
  LW s0, 328(sp)
  SW s0, 1056(sp)
  SW s0, 344(sp)
  JAL zero, bb525
bb529:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb530
  JAL zero, bb531
bb530:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb532
  JAL zero, bb534
bb531:
  LW s0, 1056(sp)
  SW s0, 312(sp)
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 328(sp)
  SW s0, 1040(sp)
  LW s0, 320(sp)
  SW s0, 1032(sp)
  JAL zero, bb539
bb532:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb535
  JAL zero, bb536
bb533:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb529
bb534:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb537
  JAL zero, bb538
bb535:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb536
bb536:
  JAL zero, bb533
bb537:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb538
bb538:
  JAL zero, bb533
bb539:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb540
  JAL zero, bb541
bb540:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb542
  JAL zero, bb543
bb541:
  LW s0, 1056(sp)
  SW s0, 320(sp)
  ADDI s0, zero, 15
  SLTI s1, s0, 1
  BNE s1, zero, bb547
  JAL zero, bb549
bb542:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 304(sp)
  JAL zero, bb544
bb543:
  SB zero, 304(sp)
  JAL zero, bb544
bb544:
  LB s0, 304(sp)
  BNE s0, zero, bb545
  JAL zero, bb546
bb545:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb546
bb546:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb539
bb547:
  SW zero, 1056(sp)
  JAL zero, bb548
bb548:
  LW s0, 1056(sp)
  SW s0, 320(sp)
  LW s0, 312(sp)
  SW s0, 328(sp)
  JAL zero, bb526
bb549:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 320(sp)
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  MULW s2, s0, s1
  SW s2, 1040(sp)
  LUI s0, 16
  ADDI s0, s0, -1
  SW s0, 1032(sp)
  JAL zero, bb550
bb550:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb551
  JAL zero, bb552
bb551:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb553
  JAL zero, bb554
bb552:
  JAL zero, bb548
bb553:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 296(sp)
  JAL zero, bb555
bb554:
  SB zero, 296(sp)
  JAL zero, bb555
bb555:
  LB s0, 296(sp)
  BNE s0, zero, bb556
  JAL zero, bb557
bb556:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb557
bb557:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb550
bb558:
  LW s0, 280(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb559
  JAL zero, bb560
bb559:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 288(sp)
  SW s0, 1040(sp)
  LW s0, 280(sp)
  SW s0, 1032(sp)
  JAL zero, bb561
bb560:
  LW s0, 288(sp)
  SW s0, 1056(sp)
  SW s0, 360(sp)
  LW s0, 352(sp)
  SW s0, 1040(sp)
  ADDI s0, zero, 1
  SW s0, 1032(sp)
  ADDI s0, zero, 1
  SLTI s1, s0, 15
  XORI s0, s1, 1
  BNE s0, zero, bb590
  JAL zero, bb592
bb561:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb562
  JAL zero, bb563
bb562:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb564
  JAL zero, bb566
bb563:
  LW s0, 1056(sp)
  SW s0, 272(sp)
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 288(sp)
  SW s0, 1040(sp)
  LW s0, 280(sp)
  SW s0, 1032(sp)
  JAL zero, bb571
bb564:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb567
  JAL zero, bb568
bb565:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb561
bb566:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb569
  JAL zero, bb570
bb567:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb568
bb568:
  JAL zero, bb565
bb569:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb570
bb570:
  JAL zero, bb565
bb571:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb572
  JAL zero, bb573
bb572:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb574
  JAL zero, bb575
bb573:
  LW s0, 1056(sp)
  SW s0, 280(sp)
  ADDI s0, zero, 15
  SLTI s1, s0, 1
  BNE s1, zero, bb579
  JAL zero, bb581
bb574:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 264(sp)
  JAL zero, bb576
bb575:
  SB zero, 264(sp)
  JAL zero, bb576
bb576:
  LB s0, 264(sp)
  BNE s0, zero, bb577
  JAL zero, bb578
bb577:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb578
bb578:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb571
bb579:
  SW zero, 1056(sp)
  JAL zero, bb580
bb580:
  LW s0, 1056(sp)
  SW s0, 280(sp)
  LW s0, 272(sp)
  SW s0, 288(sp)
  JAL zero, bb558
bb581:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 280(sp)
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  MULW s2, s0, s1
  SW s2, 1040(sp)
  LUI s0, 16
  ADDI s0, s0, -1
  SW s0, 1032(sp)
  JAL zero, bb582
bb582:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb583
  JAL zero, bb584
bb583:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb585
  JAL zero, bb586
bb584:
  JAL zero, bb580
bb585:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 256(sp)
  JAL zero, bb587
bb586:
  SB zero, 256(sp)
  JAL zero, bb587
bb587:
  LB s0, 256(sp)
  BNE s0, zero, bb588
  JAL zero, bb589
bb588:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb589
bb589:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb582
bb590:
  LW s0, 1040(sp)
  SLT s1, s0, zero
  BNE s1, zero, bb593
  JAL zero, bb595
bb591:
  LW s0, 1056(sp)
  SW s0, 352(sp)
  JAL zero, bb513
bb592:
  LW s0, 1032(sp)
  SLT s1, zero, s0
  BNE s1, zero, bb596
  JAL zero, bb598
bb593:
  LUI s0, 16
  ADDI s0, s0, -1
  SW s0, 1056(sp)
  JAL zero, bb594
bb594:
  JAL zero, bb591
bb595:
  SW zero, 1056(sp)
  JAL zero, bb594
bb596:
  LW s0, 1040(sp)
  LUI s1, 8
  ADDI s1, s1, -1
  SLT s2, s1, s0
  BNE s2, zero, bb599
  JAL zero, bb601
bb597:
  JAL zero, bb591
bb598:
  LW s0, 1040(sp)
  SW s0, 1056(sp)
  JAL zero, bb597
bb599:
  LW s0, 1040(sp)
  LW s1, 1032(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LUI s0, 16
  ADDI s0, s0, 0
  ADDW s1, s2, s0
  LW s0, 1032(sp)
  ADDI s2, zero, 15
  SUBW s3, s2, s0
  ADDIW s0, s3, 1
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, SHIFT_TABLE
  ADD s2, s0, s3
  LW s0, 0(s2)
  SUBW s2, s1, s0
  SW s2, 1056(sp)
  JAL zero, bb600
bb600:
  JAL zero, bb597
bb601:
  LW s0, 1040(sp)
  LW s1, 1032(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  DIVW s2, s0, s1
  SW s2, 1056(sp)
  JAL zero, bb600
bb602:
  LW s0, 1040(sp)
  SLT s1, s0, zero
  BNE s1, zero, bb605
  JAL zero, bb607
bb603:
  LW s0, 1056(sp)
  SW s0, 496(sp)
  JAL zero, bb411
bb604:
  LW s0, 1032(sp)
  SLT s1, zero, s0
  BNE s1, zero, bb608
  JAL zero, bb610
bb605:
  LUI s0, 16
  ADDI s0, s0, -1
  SW s0, 1056(sp)
  JAL zero, bb606
bb606:
  JAL zero, bb603
bb607:
  SW zero, 1056(sp)
  JAL zero, bb606
bb608:
  LW s0, 1040(sp)
  LUI s1, 8
  ADDI s1, s1, -1
  SLT s2, s1, s0
  BNE s2, zero, bb611
  JAL zero, bb613
bb609:
  JAL zero, bb603
bb610:
  LW s0, 1040(sp)
  SW s0, 1056(sp)
  JAL zero, bb609
bb611:
  LW s0, 1040(sp)
  LW s1, 1032(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LUI s0, 16
  ADDI s0, s0, 0
  ADDW s1, s2, s0
  LW s0, 1032(sp)
  ADDI s2, zero, 15
  SUBW s3, s2, s0
  ADDIW s0, s3, 1
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, SHIFT_TABLE
  ADD s2, s0, s3
  LW s0, 0(s2)
  SUBW s2, s1, s0
  SW s2, 1056(sp)
  JAL zero, bb612
bb612:
  JAL zero, bb609
bb613:
  LW s0, 1040(sp)
  LW s1, 1032(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  DIVW s2, s0, s1
  SW s2, 1056(sp)
  JAL zero, bb612
bb614:
  LW s0, 1024(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb615
  JAL zero, bb616
bb615:
  ADDI s0, zero, 2
  SW s0, 248(sp)
  LW s0, 1024(sp)
  SW s0, 240(sp)
  ADDI s0, zero, 1
  SW s0, 232(sp)
  JAL zero, bb617
bb616:
  ADD a0, zero, zero
  LD ra, 1064(sp)
  LD s3, 1072(sp)
  LD s2, 1080(sp)
  LD s1, 1088(sp)
  LD s0, 1096(sp)
  ADDI sp, sp, 1104
  JALR zero, 0(ra)
bb617:
  LW s0, 240(sp)
  SLT s1, zero, s0
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb618
  JAL zero, bb619
bb618:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 240(sp)
  SW s0, 1040(sp)
  ADDI s0, zero, 1
  SW s0, 1032(sp)
  JAL zero, bb620
bb619:
  LW s0, 232(sp)
  SW s0, 1056(sp)
  LW s1, 1024(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  XOR s2, s1, s0
  SLTU s0, zero, s2
  BNE s0, zero, bb820
  JAL zero, bb821
bb620:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb621
  JAL zero, bb622
bb621:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb623
  JAL zero, bb624
bb622:
  LW s0, 1056(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb628
  JAL zero, bb629
bb623:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 224(sp)
  JAL zero, bb625
bb624:
  SB zero, 224(sp)
  JAL zero, bb625
bb625:
  LB s0, 224(sp)
  BNE s0, zero, bb626
  JAL zero, bb627
bb626:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb627
bb627:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb620
bb628:
  LW s0, 232(sp)
  SW s0, 216(sp)
  LW s0, 248(sp)
  SW s0, 208(sp)
  SW zero, 200(sp)
  JAL zero, bb630
bb629:
  LW s0, 248(sp)
  SW s0, 104(sp)
  LW s0, 248(sp)
  SW s0, 96(sp)
  SW zero, 88(sp)
  JAL zero, bb719
bb630:
  LW s0, 208(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb631
  JAL zero, bb632
bb631:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 208(sp)
  SW s0, 1040(sp)
  ADDI s0, zero, 1
  SW s0, 1032(sp)
  JAL zero, bb633
bb632:
  LW s0, 200(sp)
  SW s0, 1056(sp)
  SW s0, 232(sp)
  JAL zero, bb629
bb633:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb634
  JAL zero, bb635
bb634:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb636
  JAL zero, bb637
bb635:
  LW s0, 1056(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb641
  JAL zero, bb642
bb636:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 192(sp)
  JAL zero, bb638
bb637:
  SB zero, 192(sp)
  JAL zero, bb638
bb638:
  LB s0, 192(sp)
  BNE s0, zero, bb639
  JAL zero, bb640
bb639:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb640
bb640:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb633
bb641:
  LW s0, 200(sp)
  SW s0, 184(sp)
  LW s0, 216(sp)
  SW s0, 176(sp)
  JAL zero, bb643
bb642:
  LW s0, 216(sp)
  SW s0, 144(sp)
  LW s0, 216(sp)
  SW s0, 136(sp)
  JAL zero, bb675
bb643:
  LW s0, 176(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb644
  JAL zero, bb645
bb644:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 184(sp)
  SW s0, 1040(sp)
  LW s0, 176(sp)
  SW s0, 1032(sp)
  JAL zero, bb646
bb645:
  LW s0, 184(sp)
  SW s0, 1056(sp)
  SW s0, 200(sp)
  JAL zero, bb642
bb646:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb647
  JAL zero, bb648
bb647:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb649
  JAL zero, bb651
bb648:
  LW s0, 1056(sp)
  SW s0, 168(sp)
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 184(sp)
  SW s0, 1040(sp)
  LW s0, 176(sp)
  SW s0, 1032(sp)
  JAL zero, bb656
bb649:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb652
  JAL zero, bb653
bb650:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb646
bb651:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb654
  JAL zero, bb655
bb652:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb653
bb653:
  JAL zero, bb650
bb654:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb655
bb655:
  JAL zero, bb650
bb656:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb657
  JAL zero, bb658
bb657:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb659
  JAL zero, bb660
bb658:
  LW s0, 1056(sp)
  SW s0, 176(sp)
  ADDI s0, zero, 15
  SLTI s1, s0, 1
  BNE s1, zero, bb664
  JAL zero, bb666
bb659:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 160(sp)
  JAL zero, bb661
bb660:
  SB zero, 160(sp)
  JAL zero, bb661
bb661:
  LB s0, 160(sp)
  BNE s0, zero, bb662
  JAL zero, bb663
bb662:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb663
bb663:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb656
bb664:
  SW zero, 1056(sp)
  JAL zero, bb665
bb665:
  LW s0, 1056(sp)
  SW s0, 176(sp)
  LW s0, 168(sp)
  SW s0, 184(sp)
  JAL zero, bb643
bb666:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 176(sp)
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  MULW s2, s0, s1
  SW s2, 1040(sp)
  LUI s0, 16
  ADDI s0, s0, -1
  SW s0, 1032(sp)
  JAL zero, bb667
bb667:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb668
  JAL zero, bb669
bb668:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb670
  JAL zero, bb671
bb669:
  JAL zero, bb665
bb670:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 152(sp)
  JAL zero, bb672
bb671:
  SB zero, 152(sp)
  JAL zero, bb672
bb672:
  LB s0, 152(sp)
  BNE s0, zero, bb673
  JAL zero, bb674
bb673:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb674
bb674:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb667
bb675:
  LW s0, 136(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb676
  JAL zero, bb677
bb676:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 144(sp)
  SW s0, 1040(sp)
  LW s0, 136(sp)
  SW s0, 1032(sp)
  JAL zero, bb678
bb677:
  LW s0, 144(sp)
  SW s0, 1056(sp)
  SW s0, 216(sp)
  LW s0, 208(sp)
  SW s0, 1040(sp)
  ADDI s0, zero, 1
  SW s0, 1032(sp)
  ADDI s0, zero, 1
  SLTI s1, s0, 15
  XORI s0, s1, 1
  BNE s0, zero, bb707
  JAL zero, bb709
bb678:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb679
  JAL zero, bb680
bb679:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb681
  JAL zero, bb683
bb680:
  LW s0, 1056(sp)
  SW s0, 128(sp)
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 144(sp)
  SW s0, 1040(sp)
  LW s0, 136(sp)
  SW s0, 1032(sp)
  JAL zero, bb688
bb681:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb684
  JAL zero, bb685
bb682:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb678
bb683:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb686
  JAL zero, bb687
bb684:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb685
bb685:
  JAL zero, bb682
bb686:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb687
bb687:
  JAL zero, bb682
bb688:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb689
  JAL zero, bb690
bb689:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb691
  JAL zero, bb692
bb690:
  LW s0, 1056(sp)
  SW s0, 136(sp)
  ADDI s0, zero, 15
  SLTI s1, s0, 1
  BNE s1, zero, bb696
  JAL zero, bb698
bb691:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 120(sp)
  JAL zero, bb693
bb692:
  SB zero, 120(sp)
  JAL zero, bb693
bb693:
  LB s0, 120(sp)
  BNE s0, zero, bb694
  JAL zero, bb695
bb694:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb695
bb695:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb688
bb696:
  SW zero, 1056(sp)
  JAL zero, bb697
bb697:
  LW s0, 1056(sp)
  SW s0, 136(sp)
  LW s0, 128(sp)
  SW s0, 144(sp)
  JAL zero, bb675
bb698:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 136(sp)
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  MULW s2, s0, s1
  SW s2, 1040(sp)
  LUI s0, 16
  ADDI s0, s0, -1
  SW s0, 1032(sp)
  JAL zero, bb699
bb699:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb700
  JAL zero, bb701
bb700:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb702
  JAL zero, bb703
bb701:
  JAL zero, bb697
bb702:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 112(sp)
  JAL zero, bb704
bb703:
  SB zero, 112(sp)
  JAL zero, bb704
bb704:
  LB s0, 112(sp)
  BNE s0, zero, bb705
  JAL zero, bb706
bb705:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb706
bb706:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb699
bb707:
  LW s0, 1040(sp)
  SLT s1, s0, zero
  BNE s1, zero, bb710
  JAL zero, bb712
bb708:
  LW s0, 1056(sp)
  SW s0, 208(sp)
  JAL zero, bb630
bb709:
  LW s0, 1032(sp)
  SLT s1, zero, s0
  BNE s1, zero, bb713
  JAL zero, bb715
bb710:
  LUI s0, 16
  ADDI s0, s0, -1
  SW s0, 1056(sp)
  JAL zero, bb711
bb711:
  JAL zero, bb708
bb712:
  SW zero, 1056(sp)
  JAL zero, bb711
bb713:
  LW s0, 1040(sp)
  LUI s1, 8
  ADDI s1, s1, -1
  SLT s2, s1, s0
  BNE s2, zero, bb716
  JAL zero, bb718
bb714:
  JAL zero, bb708
bb715:
  LW s0, 1040(sp)
  SW s0, 1056(sp)
  JAL zero, bb714
bb716:
  LW s0, 1040(sp)
  LW s1, 1032(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LUI s0, 16
  ADDI s0, s0, 0
  ADDW s1, s2, s0
  LW s0, 1032(sp)
  ADDI s2, zero, 15
  SUBW s3, s2, s0
  ADDIW s0, s3, 1
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, SHIFT_TABLE
  ADD s2, s0, s3
  LW s0, 0(s2)
  SUBW s2, s1, s0
  SW s2, 1056(sp)
  JAL zero, bb717
bb717:
  JAL zero, bb714
bb718:
  LW s0, 1040(sp)
  LW s1, 1032(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  DIVW s2, s0, s1
  SW s2, 1056(sp)
  JAL zero, bb717
bb719:
  LW s0, 96(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb720
  JAL zero, bb721
bb720:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 96(sp)
  SW s0, 1040(sp)
  ADDI s0, zero, 1
  SW s0, 1032(sp)
  JAL zero, bb722
bb721:
  LW s0, 88(sp)
  SW s0, 1056(sp)
  SW s0, 248(sp)
  LW s0, 240(sp)
  SW s0, 1040(sp)
  ADDI s0, zero, 1
  SW s0, 1032(sp)
  ADDI s0, zero, 1
  SLTI s1, s0, 15
  XORI s0, s1, 1
  BNE s0, zero, bb808
  JAL zero, bb810
bb722:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb723
  JAL zero, bb724
bb723:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb725
  JAL zero, bb726
bb724:
  LW s0, 1056(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb730
  JAL zero, bb731
bb725:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 80(sp)
  JAL zero, bb727
bb726:
  SB zero, 80(sp)
  JAL zero, bb727
bb727:
  LB s0, 80(sp)
  BNE s0, zero, bb728
  JAL zero, bb729
bb728:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb729
bb729:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb722
bb730:
  LW s0, 88(sp)
  SW s0, 72(sp)
  LW s0, 104(sp)
  SW s0, 64(sp)
  JAL zero, bb732
bb731:
  LW s0, 104(sp)
  SW s0, 32(sp)
  LW s0, 104(sp)
  SW s0, 24(sp)
  JAL zero, bb764
bb732:
  LW s0, 64(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb733
  JAL zero, bb734
bb733:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 72(sp)
  SW s0, 1040(sp)
  LW s0, 64(sp)
  SW s0, 1032(sp)
  JAL zero, bb735
bb734:
  LW s0, 72(sp)
  SW s0, 1056(sp)
  SW s0, 88(sp)
  JAL zero, bb731
bb735:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb736
  JAL zero, bb737
bb736:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb738
  JAL zero, bb740
bb737:
  LW s0, 1056(sp)
  SW s0, 56(sp)
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 72(sp)
  SW s0, 1040(sp)
  LW s0, 64(sp)
  SW s0, 1032(sp)
  JAL zero, bb745
bb738:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb741
  JAL zero, bb742
bb739:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb735
bb740:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb743
  JAL zero, bb744
bb741:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb742
bb742:
  JAL zero, bb739
bb743:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb744
bb744:
  JAL zero, bb739
bb745:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb746
  JAL zero, bb747
bb746:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb748
  JAL zero, bb749
bb747:
  LW s0, 1056(sp)
  SW s0, 64(sp)
  ADDI s0, zero, 15
  SLTI s1, s0, 1
  BNE s1, zero, bb753
  JAL zero, bb755
bb748:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 48(sp)
  JAL zero, bb750
bb749:
  SB zero, 48(sp)
  JAL zero, bb750
bb750:
  LB s0, 48(sp)
  BNE s0, zero, bb751
  JAL zero, bb752
bb751:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb752
bb752:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb745
bb753:
  SW zero, 1056(sp)
  JAL zero, bb754
bb754:
  LW s0, 1056(sp)
  SW s0, 64(sp)
  LW s0, 56(sp)
  SW s0, 72(sp)
  JAL zero, bb732
bb755:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 64(sp)
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  MULW s2, s0, s1
  SW s2, 1040(sp)
  LUI s0, 16
  ADDI s0, s0, -1
  SW s0, 1032(sp)
  JAL zero, bb756
bb756:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb757
  JAL zero, bb758
bb757:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb759
  JAL zero, bb760
bb758:
  JAL zero, bb754
bb759:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 40(sp)
  JAL zero, bb761
bb760:
  SB zero, 40(sp)
  JAL zero, bb761
bb761:
  LB s0, 40(sp)
  BNE s0, zero, bb762
  JAL zero, bb763
bb762:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb763
bb763:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb756
bb764:
  LW s0, 24(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb765
  JAL zero, bb766
bb765:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 32(sp)
  SW s0, 1040(sp)
  LW s0, 24(sp)
  SW s0, 1032(sp)
  JAL zero, bb767
bb766:
  LW s0, 32(sp)
  SW s0, 1056(sp)
  SW s0, 104(sp)
  LW s0, 96(sp)
  SW s0, 1040(sp)
  ADDI s0, zero, 1
  SW s0, 1032(sp)
  ADDI s0, zero, 1
  SLTI s1, s0, 15
  XORI s0, s1, 1
  BNE s0, zero, bb796
  JAL zero, bb798
bb767:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb768
  JAL zero, bb769
bb768:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb770
  JAL zero, bb772
bb769:
  LW s0, 1056(sp)
  SW s0, 16(sp)
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 32(sp)
  SW s0, 1040(sp)
  LW s0, 24(sp)
  SW s0, 1032(sp)
  JAL zero, bb777
bb770:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb773
  JAL zero, bb774
bb771:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb767
bb772:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb775
  JAL zero, bb776
bb773:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb774
bb774:
  JAL zero, bb771
bb775:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb776
bb776:
  JAL zero, bb771
bb777:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb778
  JAL zero, bb779
bb778:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb780
  JAL zero, bb781
bb779:
  LW s0, 1056(sp)
  SW s0, 24(sp)
  ADDI s0, zero, 15
  SLTI s1, s0, 1
  BNE s1, zero, bb785
  JAL zero, bb787
bb780:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 8(sp)
  JAL zero, bb782
bb781:
  SB zero, 8(sp)
  JAL zero, bb782
bb782:
  LB s0, 8(sp)
  BNE s0, zero, bb783
  JAL zero, bb784
bb783:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb784
bb784:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb777
bb785:
  SW zero, 1056(sp)
  JAL zero, bb786
bb786:
  LW s0, 1056(sp)
  SW s0, 24(sp)
  LW s0, 16(sp)
  SW s0, 32(sp)
  JAL zero, bb764
bb787:
  SW zero, 1056(sp)
  SW zero, 1048(sp)
  LW s0, 24(sp)
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  MULW s2, s0, s1
  SW s2, 1040(sp)
  LUI s0, 16
  ADDI s0, s0, -1
  SW s0, 1032(sp)
  JAL zero, bb788
bb788:
  LW s0, 1048(sp)
  SLTI s1, s0, 16
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb789
  JAL zero, bb790
bb789:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb791
  JAL zero, bb792
bb790:
  JAL zero, bb786
bb791:
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 0(sp)
  JAL zero, bb793
bb792:
  SB zero, 0(sp)
  JAL zero, bb793
bb793:
  LB s0, 0(sp)
  BNE s0, zero, bb794
  JAL zero, bb795
bb794:
  LW s0, 1056(sp)
  LW s1, 1048(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADDW s1, s0, s3
  SW s1, 1056(sp)
  JAL zero, bb795
bb795:
  LW s0, 1040(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LW s0, 1032(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 1032(sp)
  LW s0, 1048(sp)
  ADDIW s1, s0, 1
  SW s1, 1048(sp)
  JAL zero, bb788
bb796:
  LW s0, 1040(sp)
  SLT s1, s0, zero
  BNE s1, zero, bb799
  JAL zero, bb801
bb797:
  LW s0, 1056(sp)
  SW s0, 96(sp)
  JAL zero, bb719
bb798:
  LW s0, 1032(sp)
  SLT s1, zero, s0
  BNE s1, zero, bb802
  JAL zero, bb804
bb799:
  LUI s0, 16
  ADDI s0, s0, -1
  SW s0, 1056(sp)
  JAL zero, bb800
bb800:
  JAL zero, bb797
bb801:
  SW zero, 1056(sp)
  JAL zero, bb800
bb802:
  LW s0, 1040(sp)
  LUI s1, 8
  ADDI s1, s1, -1
  SLT s2, s1, s0
  BNE s2, zero, bb805
  JAL zero, bb807
bb803:
  JAL zero, bb797
bb804:
  LW s0, 1040(sp)
  SW s0, 1056(sp)
  JAL zero, bb803
bb805:
  LW s0, 1040(sp)
  LW s1, 1032(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LUI s0, 16
  ADDI s0, s0, 0
  ADDW s1, s2, s0
  LW s0, 1032(sp)
  ADDI s2, zero, 15
  SUBW s3, s2, s0
  ADDIW s0, s3, 1
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, SHIFT_TABLE
  ADD s2, s0, s3
  LW s0, 0(s2)
  SUBW s2, s1, s0
  SW s2, 1056(sp)
  JAL zero, bb806
bb806:
  JAL zero, bb803
bb807:
  LW s0, 1040(sp)
  LW s1, 1032(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  DIVW s2, s0, s1
  SW s2, 1056(sp)
  JAL zero, bb806
bb808:
  LW s0, 1040(sp)
  SLT s1, s0, zero
  BNE s1, zero, bb811
  JAL zero, bb813
bb809:
  LW s0, 1056(sp)
  SW s0, 240(sp)
  JAL zero, bb617
bb810:
  LW s0, 1032(sp)
  SLT s1, zero, s0
  BNE s1, zero, bb814
  JAL zero, bb816
bb811:
  LUI s0, 16
  ADDI s0, s0, -1
  SW s0, 1056(sp)
  JAL zero, bb812
bb812:
  JAL zero, bb809
bb813:
  SW zero, 1056(sp)
  JAL zero, bb812
bb814:
  LW s0, 1040(sp)
  LUI s1, 8
  ADDI s1, s1, -1
  SLT s2, s1, s0
  BNE s2, zero, bb817
  JAL zero, bb819
bb815:
  JAL zero, bb809
bb816:
  LW s0, 1040(sp)
  SW s0, 1056(sp)
  JAL zero, bb815
bb817:
  LW s0, 1040(sp)
  LW s1, 1032(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  DIVW s2, s0, s1
  SW s2, 1040(sp)
  LUI s0, 16
  ADDI s0, s0, 0
  ADDW s1, s2, s0
  LW s0, 1032(sp)
  ADDI s2, zero, 15
  SUBW s3, s2, s0
  ADDIW s0, s3, 1
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, SHIFT_TABLE
  ADD s2, s0, s3
  LW s0, 0(s2)
  SUBW s2, s1, s0
  SW s2, 1056(sp)
  JAL zero, bb818
bb818:
  JAL zero, bb815
bb819:
  LW s0, 1040(sp)
  LW s1, 1032(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, SHIFT_TABLE
  ADD s2, s1, s3
  LW s1, 0(s2)
  DIVW s2, s0, s1
  SW s2, 1056(sp)
  JAL zero, bb818
bb820:
  ADDI a0, zero, 1
  LD ra, 1064(sp)
  LD s3, 1072(sp)
  LD s2, 1080(sp)
  LD s1, 1088(sp)
  LD s0, 1096(sp)
  ADDI sp, sp, 1104
  JALR zero, 0(ra)
bb821:
  LW s0, 1024(sp)
  ADDIW s1, s0, 1
  SW s1, 1024(sp)
  JAL zero, bb614
