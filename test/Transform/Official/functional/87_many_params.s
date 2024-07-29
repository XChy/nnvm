.global param16
.global param32_arr
.global param32_rec
.global main
.global sort
.section .bss
.section .data
.section .text
param16:
  ADDI sp, sp, -384
  SD ra, 208(sp)
  SD s0, 216(sp)
  SD s1, 224(sp)
  SD s2, 232(sp)
  SD s3, 240(sp)
  SD s4, 248(sp)
  SD s5, 256(sp)
  SD s6, 264(sp)
  SD s7, 272(sp)
  SD s8, 288(sp)
  SD s9, 296(sp)
  SD s10, 304(sp)
  SD s11, 312(sp)
  ADD t4, a0, zero
  SW t4, 140(sp)
  ADD t4, a1, zero
  SW t4, 144(sp)
  ADD t4, a2, zero
  SW t4, 148(sp)
  ADD t4, a3, zero
  SW t4, 152(sp)
  ADD t4, a4, zero
  SW t4, 96(sp)
  ADD t4, a5, zero
  SW t4, 156(sp)
  ADD t4, a6, zero
  SW t4, 160(sp)
  ADD t4, a7, zero
  SW t4, 164(sp)
  ADDI t0, sp, 384
  ADD t0, t0, zero
  LW t4, 0(t0)
  SW t4, 168(sp)
  LW t4, 388(sp)
  SW t4, 172(sp)
  LW t4, 392(sp)
  SW t4, 176(sp)
  LW t4, 396(sp)
  SW t4, 180(sp)
  LW t4, 400(sp)
  SW t4, 196(sp)
  LW t4, 404(sp)
  SW t4, 192(sp)
  LW t4, 408(sp)
  SW t4, 188(sp)
  LW t4, 412(sp)
  SW t4, 184(sp)
  LW t4, 140(sp)
  SW t4, 320(sp)
  LW t4, 144(sp)
  SW t4, 324(sp)
  LW t4, 148(sp)
  SW t4, 328(sp)
  LW t4, 152(sp)
  SW t4, 332(sp)
  LW t4, 96(sp)
  SW t4, 336(sp)
  LW t4, 156(sp)
  SW t4, 340(sp)
  LW t4, 160(sp)
  SW t4, 344(sp)
  LW t4, 164(sp)
  SW t4, 348(sp)
  LW t4, 168(sp)
  SW t4, 352(sp)
  LW t4, 172(sp)
  SW t4, 356(sp)
  LW t4, 176(sp)
  SW t4, 360(sp)
  LW t4, 180(sp)
  SW t4, 364(sp)
  LW t4, 196(sp)
  SW t4, 368(sp)
  LW t4, 192(sp)
  SW t4, 372(sp)
  LW t4, 188(sp)
  SW t4, 376(sp)
  LW t4, 184(sp)
  SW t4, 380(sp)
  ADDI t6, zero, 0
  SLTI t6, t6, 15
  BNE t6, zero, bb2
  # implict jump to bb1
bb1:
  LW s7, 320(sp)
  LW s8, 324(sp)
  LW s9, 328(sp)
  LW s10, 332(sp)
  LW s11, 336(sp)
  LW ra, 340(sp)
  LW s6, 344(sp)
  LW s5, 348(sp)
  LW s0, 352(sp)
  LW s4, 356(sp)
  LW t4, 360(sp)
  SW t4, 200(sp)
  LW s1, 364(sp)
  LW t4, 368(sp)
  SW t4, 136(sp)
  LW s2, 372(sp)
  LW t4, 376(sp)
  SW t4, 100(sp)
  LW s3, 380(sp)
  ADD a0, s7, zero
  ADD a1, s8, zero
  ADD a2, s9, zero
  ADD a3, s10, zero
  ADD a4, s11, zero
  ADD a5, ra, zero
  ADD a6, s6, zero
  ADD a7, s5, zero
  ADDI t5, sp, 0
  ADD s5, t5, zero
  SW s0, 0(s5)
  SW s4, 4(sp)
  LW t4, 200(sp)
  SW t4, 8(sp)
  SW s1, 12(sp)
  LW t4, 136(sp)
  SW t4, 16(sp)
  SW s2, 20(sp)
  LW t4, 100(sp)
  SW t4, 24(sp)
  SW s3, 28(sp)
  LW t4, 140(sp)
  SW t4, 32(sp)
  LW t4, 144(sp)
  SW t4, 36(sp)
  LW t4, 148(sp)
  SW t4, 40(sp)
  LW t4, 152(sp)
  SW t4, 44(sp)
  LW t4, 96(sp)
  SW t4, 48(sp)
  LW t4, 156(sp)
  SW t4, 52(sp)
  LW t4, 160(sp)
  SW t4, 56(sp)
  LW t4, 164(sp)
  SW t4, 60(sp)
  LW t4, 168(sp)
  SW t4, 64(sp)
  LW t4, 172(sp)
  SW t4, 68(sp)
  LW t4, 176(sp)
  SW t4, 72(sp)
  LW t4, 180(sp)
  SW t4, 76(sp)
  LW t4, 196(sp)
  SW t4, 80(sp)
  LW t4, 192(sp)
  SW t4, 84(sp)
  LW t4, 188(sp)
  SW t4, 88(sp)
  LW t4, 184(sp)
  SW t4, 92(sp)
  LW t4, 200(sp)
  LW t3, 136(sp)
  LW t4, 100(sp)
  LW t3, 140(sp)
  LW t4, 144(sp)
  LW t3, 148(sp)
  LW t4, 152(sp)
  LW t3, 96(sp)
  LW t4, 156(sp)
  LW t3, 160(sp)
  LW t4, 164(sp)
  LW t3, 168(sp)
  LW t4, 172(sp)
  LW t3, 176(sp)
  LW t4, 180(sp)
  LW t3, 196(sp)
  LW t4, 192(sp)
  LW t3, 188(sp)
  LW t4, 184(sp)
  CALL param32_rec
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 208(sp)
  LD s0, 216(sp)
  LD s1, 224(sp)
  LD s2, 232(sp)
  LD s3, 240(sp)
  LD s4, 248(sp)
  LD s5, 256(sp)
  LD s6, 264(sp)
  LD s7, 272(sp)
  LD s8, 288(sp)
  LD s9, 296(sp)
  LD s10, 304(sp)
  LD s11, 312(sp)
  ADDI sp, sp, 384
  JALR zero, 0(ra)
bb2:
  # implict jump to bb3
bb3:
  ADD t4, zero, zero
  SW t4, 104(sp)
  ADD t4, zero, zero
  SW t4, 112(sp)
  # implict jump to bb4
bb4:
  LW t4, 112(sp)
  ADD t1, t4, zero
  LW t4, 104(sp)
  ADD t0, t4, zero
  ADDIW t4, t0, 1
  SW t4, 132(sp)
  LW t4, 132(sp)
  SLTI ra, t4, 16
  BNE ra, zero, bb9
  # implict jump to bb5
bb5:
  ADD ra, t1, zero
  # implict jump to bb6
bb6:
  ADD t4, ra, zero
  SW t4, 108(sp)
  # implict jump to bb7
bb7:
  LW t4, 132(sp)
  SLTI s7, t4, 15
  BNE s7, zero, bb8
  JAL zero, bb1
bb8:
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  JAL zero, bb4
bb9:
  # implict jump to bb10
bb10:
  SLLIW t0, t0, 2
  ADDI t4, sp, 320
  ADD t4, t4, t0
  SD t4, 280(sp)
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  ADD t4, t1, zero
  SW t4, 128(sp)
  # implict jump to bb11
bb11:
  LW t4, 128(sp)
  ADD s11, t4, zero
  LW t4, 120(sp)
  ADD s10, t4, zero
  LD t4, 280(sp)
  LW s9, 0(t4)
  SLLIW s8, s10, 2
  ADDI t5, sp, 320
  ADD s8, t5, s8
  LW s7, 0(s8)
  BLT s9, s7, bb17
  # implict jump to bb12
bb12:
  ADD s7, s11, zero
  # implict jump to bb13
bb13:
  ADD t4, s7, zero
  SW t4, 124(sp)
  ADDIW t4, s10, 1
  SW t4, 116(sp)
  # implict jump to bb14
bb14:
  LW t4, 116(sp)
  SLTI s7, t4, 16
  BNE s7, zero, bb16
  # implict jump to bb15
bb15:
  LW t4, 124(sp)
  ADD ra, t4, zero
  JAL zero, bb6
bb16:
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  JAL zero, bb11
bb17:
  LD t4, 280(sp)
  LW s9, 0(t4)
  LW s11, 0(s8)
  LD t4, 280(sp)
  SW s11, 0(t4)
  SW s9, 0(s8)
  ADD s7, s9, zero
  JAL zero, bb13
param32_arr:
  ADDI sp, sp, -176
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  ADD s0, a0, zero
  ADDI t5, sp, 176
  ADD s1, t5, zero
  LD s1, 0(s1)
  LD s2, 184(sp)
  LD s3, 192(sp)
  LD s4, 200(sp)
  LD s5, 208(sp)
  LD s6, 216(sp)
  LD s7, 224(sp)
  LD s8, 232(sp)
  LD s9, 240(sp)
  LD s10, 248(sp)
  LD s11, 256(sp)
  LD ra, 264(sp)
  LD t0, 272(sp)
  LD t1, 280(sp)
  LD t2, 288(sp)
  LD t4, 296(sp)
  SD t4, 104(sp)
  LD t4, 304(sp)
  SD t4, 168(sp)
  LD t4, 312(sp)
  SD t4, 160(sp)
  LD t4, 320(sp)
  SD t4, 152(sp)
  LD t4, 328(sp)
  SD t4, 144(sp)
  LD t4, 336(sp)
  SD t4, 136(sp)
  LD t4, 344(sp)
  SD t4, 128(sp)
  LD t4, 352(sp)
  SD t4, 120(sp)
  LD t4, 360(sp)
  SD t4, 112(sp)
  LW t6, 0(s0)
  LW s0, 4(s0)
  ADDW s0, t6, s0
  LW t6, 0(a1)
  ADDW s0, s0, t6
  LW a1, 4(a1)
  ADDW s0, s0, a1
  LW a1, 0(a2)
  ADDW s0, s0, a1
  LW a1, 4(a2)
  ADDW s0, s0, a1
  LW a1, 0(a3)
  ADDW s0, s0, a1
  LW a1, 4(a3)
  ADDW s0, s0, a1
  LW a1, 0(a4)
  ADDW s0, s0, a1
  LW a1, 4(a4)
  ADDW s0, s0, a1
  LW a1, 0(a5)
  ADDW s0, s0, a1
  LW a1, 4(a5)
  ADDW s0, s0, a1
  LW a1, 0(a6)
  ADDW s0, s0, a1
  LW a1, 4(a6)
  ADDW s0, s0, a1
  LW a1, 0(a7)
  ADDW s0, s0, a1
  LW a1, 4(a7)
  ADDW s0, s0, a1
  LW a1, 0(s1)
  ADDW s0, s0, a1
  LW s1, 4(s1)
  ADDW s0, s0, s1
  LW s1, 0(s2)
  ADDW s0, s0, s1
  LW s1, 4(s2)
  ADDW s0, s0, s1
  LW s1, 0(s3)
  ADDW s0, s0, s1
  LW s1, 4(s3)
  ADDW s0, s0, s1
  LW s1, 0(s4)
  ADDW s0, s0, s1
  LW s1, 4(s4)
  ADDW s0, s0, s1
  LW s1, 0(s5)
  ADDW s0, s0, s1
  LW s1, 4(s5)
  ADDW s0, s0, s1
  LW s1, 0(s6)
  ADDW s0, s0, s1
  LW s1, 4(s6)
  ADDW s0, s0, s1
  LW s1, 0(s7)
  ADDW s0, s0, s1
  LW s1, 4(s7)
  ADDW s0, s0, s1
  LW s1, 0(s8)
  ADDW s0, s0, s1
  LW s1, 4(s8)
  ADDW s0, s0, s1
  LW s1, 0(s9)
  ADDW s0, s0, s1
  LW s1, 4(s9)
  ADDW s0, s0, s1
  LW s1, 0(s10)
  ADDW s0, s0, s1
  LW s1, 4(s10)
  ADDW s0, s0, s1
  LW s1, 0(s11)
  ADDW s0, s0, s1
  LW s1, 4(s11)
  ADDW s0, s0, s1
  LW s1, 0(ra)
  ADDW s0, s0, s1
  LW s1, 4(ra)
  ADDW s0, s0, s1
  LW s1, 0(t0)
  ADDW s0, s0, s1
  LW s1, 4(t0)
  ADDW s0, s0, s1
  LW s1, 0(t1)
  ADDW s0, s0, s1
  LW s1, 4(t1)
  ADDW s0, s0, s1
  LW s1, 0(t2)
  ADDW s0, s0, s1
  LW s1, 4(t2)
  ADDW s0, s0, s1
  LD t4, 104(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  LD t4, 104(sp)
  LW s1, 4(t4)
  ADDW s0, s0, s1
  LD t4, 168(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  LD t4, 168(sp)
  LW s1, 4(t4)
  ADDW s0, s0, s1
  LD t4, 160(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  LD t4, 160(sp)
  LW s1, 4(t4)
  ADDW s0, s0, s1
  LD t4, 152(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  LD t4, 152(sp)
  LW s1, 4(t4)
  ADDW s0, s0, s1
  LD t4, 144(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  LD t4, 144(sp)
  LW s1, 4(t4)
  ADDW s0, s0, s1
  LD t4, 136(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  LD t4, 136(sp)
  LW s1, 4(t4)
  ADDW s0, s0, s1
  LD t4, 128(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  LD t4, 128(sp)
  LW s1, 4(t4)
  ADDW s0, s0, s1
  LD t4, 120(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  LD t4, 120(sp)
  LW s1, 4(t4)
  ADDW s0, s0, s1
  LD t4, 112(sp)
  LW s1, 0(t4)
  ADDW s0, s0, s1
  LD t4, 112(sp)
  LW s1, 4(t4)
  ADDW s0, s0, s1
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
param32_rec:
  ADDI sp, sp, -288
  SD ra, 184(sp)
  SD s0, 192(sp)
  SD s1, 200(sp)
  SD s2, 208(sp)
  SD s3, 216(sp)
  SD s4, 224(sp)
  SD s5, 232(sp)
  SD s6, 240(sp)
  SD s7, 248(sp)
  SD s8, 256(sp)
  SD s9, 264(sp)
  SD s10, 272(sp)
  SD s11, 280(sp)
  ADD s0, a0, zero
  ADD t4, a1, zero
  SW t4, 176(sp)
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  ADD s6, a6, zero
  ADD s7, a7, zero
  ADDI t5, sp, 288
  ADD s8, t5, zero
  LW s8, 0(s8)
  LW s9, 292(sp)
  LW s10, 296(sp)
  LW s11, 300(sp)
  LW t4, 304(sp)
  SW t4, 108(sp)
  LW t4, 308(sp)
  SW t4, 104(sp)
  LW t4, 312(sp)
  SW t4, 112(sp)
  LW t4, 316(sp)
  SW t4, 100(sp)
  LW t4, 320(sp)
  SW t4, 116(sp)
  LW t4, 324(sp)
  SW t4, 172(sp)
  LW t4, 328(sp)
  SW t4, 168(sp)
  LW t4, 332(sp)
  SW t4, 164(sp)
  LW t4, 336(sp)
  SW t4, 160(sp)
  LW t4, 340(sp)
  SW t4, 156(sp)
  LW t4, 344(sp)
  SW t4, 152(sp)
  LW t4, 348(sp)
  SW t4, 148(sp)
  LW t4, 352(sp)
  SW t4, 144(sp)
  LW t4, 356(sp)
  SW t4, 96(sp)
  LW t4, 360(sp)
  SW t4, 140(sp)
  LW t4, 364(sp)
  SW t4, 136(sp)
  LW t4, 368(sp)
  SW t4, 132(sp)
  LW t4, 372(sp)
  SW t4, 128(sp)
  LW t4, 376(sp)
  SW t4, 124(sp)
  LW t4, 380(sp)
  SW t4, 120(sp)
  SLTIU s1, s0, 1
  BNE s1, zero, bb21
  # implict jump to bb20
bb20:
  ADDI s1, zero, 1
  SUBW s0, s0, s1
  LW t4, 176(sp)
  ADDW s1, t4, s2
  LUI s2, 243712
  ADDIW s2, s2, 1
  REMW s1, s1, s2
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s3, zero
  ADD a3, s4, zero
  ADD a4, s5, zero
  ADD a5, s6, zero
  ADD a6, s7, zero
  ADD a7, s8, zero
  ADDI t5, sp, 0
  ADD s0, t5, zero
  SW s9, 0(s0)
  SW s10, 4(sp)
  SW s11, 8(sp)
  LW t4, 108(sp)
  SW t4, 12(sp)
  LW t4, 104(sp)
  SW t4, 16(sp)
  LW t4, 112(sp)
  SW t4, 20(sp)
  LW t4, 100(sp)
  SW t4, 24(sp)
  LW t4, 116(sp)
  SW t4, 28(sp)
  LW t4, 172(sp)
  SW t4, 32(sp)
  LW t4, 168(sp)
  SW t4, 36(sp)
  LW t4, 164(sp)
  SW t4, 40(sp)
  LW t4, 160(sp)
  SW t4, 44(sp)
  LW t4, 156(sp)
  SW t4, 48(sp)
  LW t4, 152(sp)
  SW t4, 52(sp)
  LW t4, 148(sp)
  SW t4, 56(sp)
  LW t4, 144(sp)
  SW t4, 60(sp)
  LW t4, 96(sp)
  SW t4, 64(sp)
  LW t4, 140(sp)
  SW t4, 68(sp)
  LW t4, 136(sp)
  SW t4, 72(sp)
  LW t4, 132(sp)
  SW t4, 76(sp)
  LW t4, 128(sp)
  SW t4, 80(sp)
  LW t4, 124(sp)
  SW t4, 84(sp)
  LW t4, 120(sp)
  SW t4, 88(sp)
  SW zero, 92(sp)
  LW t4, 108(sp)
  LW t3, 104(sp)
  LW t4, 112(sp)
  LW t3, 100(sp)
  LW t4, 116(sp)
  LW t3, 172(sp)
  LW t4, 168(sp)
  LW t3, 164(sp)
  LW t4, 160(sp)
  LW t3, 156(sp)
  LW t4, 152(sp)
  LW t3, 148(sp)
  LW t4, 144(sp)
  LW t3, 96(sp)
  LW t4, 140(sp)
  LW t3, 136(sp)
  LW t4, 132(sp)
  LW t3, 128(sp)
  LW t4, 124(sp)
  LW t3, 120(sp)
  CALL param32_rec
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 184(sp)
  LD s0, 192(sp)
  LD s1, 200(sp)
  LD s2, 208(sp)
  LD s3, 216(sp)
  LD s4, 224(sp)
  LD s5, 232(sp)
  LD s6, 240(sp)
  LD s7, 248(sp)
  LD s8, 256(sp)
  LD s9, 264(sp)
  LD s10, 272(sp)
  LD s11, 280(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb21:
  LW t4, 176(sp)
  ADD a0, t4, zero
  LD ra, 184(sp)
  LD s0, 192(sp)
  LD s1, 200(sp)
  LD s2, 208(sp)
  LD s3, 216(sp)
  LD s4, 224(sp)
  LD s5, 232(sp)
  LD s6, 240(sp)
  LD s7, 248(sp)
  LD s8, 256(sp)
  LD s9, 264(sp)
  LD s10, 272(sp)
  LD s11, 280(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -656
  SD ra, 216(sp)
  SD s0, 224(sp)
  SD s1, 232(sp)
  SD s2, 240(sp)
  SD s3, 248(sp)
  SD s4, 256(sp)
  SD s5, 264(sp)
  SD s6, 272(sp)
  SD s7, 280(sp)
  SD s8, 288(sp)
  SD s9, 296(sp)
  SD s10, 304(sp)
  SD s11, 320(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 164(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 160(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 156(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 152(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 148(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 140(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 100(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 104(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 108(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 112(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 116(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 120(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 124(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 128(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 132(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 136(sp)
  LW t4, 164(sp)
  SW t4, 328(sp)
  LW t4, 160(sp)
  SW t4, 332(sp)
  LW t4, 156(sp)
  SW t4, 336(sp)
  LW t4, 152(sp)
  SW t4, 340(sp)
  LW t4, 148(sp)
  SW t4, 344(sp)
  LW t4, 140(sp)
  SW t4, 348(sp)
  LW t4, 100(sp)
  SW t4, 352(sp)
  LW t4, 104(sp)
  SW t4, 356(sp)
  LW t4, 108(sp)
  SW t4, 360(sp)
  LW t4, 112(sp)
  SW t4, 364(sp)
  LW t4, 116(sp)
  SW t4, 368(sp)
  LW t4, 120(sp)
  SW t4, 372(sp)
  LW t4, 124(sp)
  SW t4, 376(sp)
  LW t4, 128(sp)
  SW t4, 380(sp)
  LW t4, 132(sp)
  SW t4, 384(sp)
  LW t4, 136(sp)
  SW t4, 388(sp)
  SLTI s1, zero, 15
  BNE s1, zero, bb36
  # implict jump to bb23
bb23:
  LW s0, 328(sp)
  LW s7, 332(sp)
  LW s8, 336(sp)
  LW s9, 340(sp)
  LW s10, 344(sp)
  LW s11, 348(sp)
  LW s4, 352(sp)
  LW s3, 356(sp)
  LW s2, 360(sp)
  LW s1, 364(sp)
  LW s5, 368(sp)
  LW s6, 372(sp)
  LW t4, 376(sp)
  SW t4, 200(sp)
  LW t4, 380(sp)
  SW t4, 204(sp)
  LW t4, 384(sp)
  SW t4, 208(sp)
  LW t4, 388(sp)
  SW t4, 212(sp)
  ADD a0, s0, zero
  ADD a1, s7, zero
  ADD a2, s8, zero
  ADD a3, s9, zero
  ADD a4, s10, zero
  ADD a5, s11, zero
  ADD a6, s4, zero
  ADD a7, s3, zero
  ADDI t5, sp, 0
  ADD s0, t5, zero
  SW s2, 0(s0)
  SW s1, 4(sp)
  SW s5, 8(sp)
  SW s6, 12(sp)
  LW t4, 200(sp)
  SW t4, 16(sp)
  LW t4, 204(sp)
  SW t4, 20(sp)
  LW t4, 208(sp)
  SW t4, 24(sp)
  LW t4, 212(sp)
  SW t4, 28(sp)
  LW t4, 164(sp)
  SW t4, 32(sp)
  LW t4, 160(sp)
  SW t4, 36(sp)
  LW t4, 156(sp)
  SW t4, 40(sp)
  LW t4, 152(sp)
  SW t4, 44(sp)
  LW t4, 148(sp)
  SW t4, 48(sp)
  LW t4, 140(sp)
  SW t4, 52(sp)
  LW t4, 100(sp)
  SW t4, 56(sp)
  LW t4, 104(sp)
  SW t4, 60(sp)
  LW t4, 108(sp)
  SW t4, 64(sp)
  LW t4, 112(sp)
  SW t4, 68(sp)
  LW t4, 116(sp)
  SW t4, 72(sp)
  LW t4, 120(sp)
  SW t4, 76(sp)
  LW t4, 124(sp)
  SW t4, 80(sp)
  LW t4, 128(sp)
  SW t4, 84(sp)
  LW t4, 132(sp)
  SW t4, 88(sp)
  LW t4, 136(sp)
  SW t4, 92(sp)
  LW t4, 200(sp)
  LW t3, 204(sp)
  LW t4, 208(sp)
  LW t3, 212(sp)
  LW t4, 164(sp)
  LW t3, 160(sp)
  LW t4, 156(sp)
  LW t3, 152(sp)
  LW t4, 148(sp)
  LW t3, 140(sp)
  LW t4, 100(sp)
  LW t3, 104(sp)
  LW t4, 108(sp)
  LW t3, 112(sp)
  LW t4, 116(sp)
  LW t3, 120(sp)
  LW t4, 124(sp)
  LW t3, 128(sp)
  LW t4, 132(sp)
  LW t3, 136(sp)
  CALL param32_rec
  ADD s0, a0, zero
  SW s0, 392(sp)
  LUI s0, 2
  ADDIW s0, s0, 656
  SW s0, 396(sp)
  XORI s0, zero, 62
  BNE s0, zero, bb31
  # implict jump to bb24
bb24:
  ADDI s1, zero, 1
  SLTI s1, s1, 32
  BNE s1, zero, bb26
  # implict jump to bb25
bb25:
  LW s2, 392(sp)
  LW s3, 396(sp)
  ADDW s2, s2, s3
  LW s3, 400(sp)
  ADDW s2, s2, s3
  LW s3, 404(sp)
  ADDW s2, s2, s3
  LW s3, 408(sp)
  ADDW s2, s2, s3
  LW s3, 412(sp)
  ADDW s2, s2, s3
  LW s3, 416(sp)
  ADDW s2, s2, s3
  LW s3, 420(sp)
  ADDW s2, s2, s3
  LW s3, 424(sp)
  ADDW s2, s2, s3
  LW s3, 428(sp)
  ADDW s2, s2, s3
  LW s3, 432(sp)
  ADDW s2, s2, s3
  LW s3, 436(sp)
  ADDW s2, s2, s3
  LW s3, 440(sp)
  ADDW s2, s2, s3
  LW s3, 444(sp)
  ADDW s2, s2, s3
  LW s3, 448(sp)
  ADDW s2, s2, s3
  LW s3, 452(sp)
  ADDW s2, s2, s3
  LW s3, 456(sp)
  ADDW s2, s2, s3
  LW s3, 460(sp)
  ADDW s2, s2, s3
  LW s3, 464(sp)
  ADDW s2, s2, s3
  LW s3, 468(sp)
  ADDW s2, s2, s3
  LW s3, 472(sp)
  ADDW s2, s2, s3
  LW s3, 476(sp)
  ADDW s2, s2, s3
  LW s3, 480(sp)
  ADDW s2, s2, s3
  LW s3, 484(sp)
  ADDW s2, s2, s3
  LW s3, 488(sp)
  ADDW s2, s2, s3
  LW s3, 492(sp)
  ADDW s2, s2, s3
  LW s3, 496(sp)
  ADDW s2, s2, s3
  LW s3, 500(sp)
  ADDW s2, s2, s3
  LW s3, 504(sp)
  ADDW s2, s2, s3
  LW s3, 508(sp)
  ADDW s2, s2, s3
  LW s3, 512(sp)
  ADDW s2, s2, s3
  LW s3, 516(sp)
  ADDW s2, s2, s3
  LW s3, 520(sp)
  ADDW s2, s2, s3
  LW s3, 524(sp)
  ADDW s2, s2, s3
  LW s3, 528(sp)
  ADDW s2, s2, s3
  LW s3, 532(sp)
  ADDW s2, s2, s3
  LW s3, 536(sp)
  ADDW s2, s2, s3
  LW s3, 540(sp)
  ADDW s2, s2, s3
  LW s3, 544(sp)
  ADDW s2, s2, s3
  LW s3, 548(sp)
  ADDW s2, s2, s3
  LW s3, 552(sp)
  ADDW s2, s2, s3
  LW s3, 556(sp)
  ADDW s2, s2, s3
  LW s3, 560(sp)
  ADDW s2, s2, s3
  LW s3, 564(sp)
  ADDW s2, s2, s3
  LW s3, 568(sp)
  ADDW s2, s2, s3
  LW s3, 572(sp)
  ADDW s2, s2, s3
  LW s3, 576(sp)
  ADDW s2, s2, s3
  LW s3, 580(sp)
  ADDW s2, s2, s3
  LW s3, 584(sp)
  ADDW s2, s2, s3
  LW s3, 588(sp)
  ADDW s2, s2, s3
  LW s3, 592(sp)
  ADDW s2, s2, s3
  LW s3, 596(sp)
  ADDW s2, s2, s3
  LW s3, 600(sp)
  ADDW s2, s2, s3
  LW s3, 604(sp)
  ADDW s2, s2, s3
  LW s3, 608(sp)
  ADDW s2, s2, s3
  LW s3, 612(sp)
  ADDW s2, s2, s3
  LW s3, 616(sp)
  ADDW s2, s2, s3
  LW s3, 620(sp)
  ADDW s2, s2, s3
  LW s3, 624(sp)
  ADDW s2, s2, s3
  LW s3, 628(sp)
  ADDW s2, s2, s3
  LW s3, 632(sp)
  ADDW s2, s2, s3
  LW s3, 636(sp)
  ADDW s2, s2, s3
  LW s3, 640(sp)
  ADDW s2, s2, s3
  LW s3, 644(sp)
  ADDW s2, s2, s3
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 216(sp)
  LD s0, 224(sp)
  LD s1, 232(sp)
  LD s2, 240(sp)
  LD s3, 248(sp)
  LD s4, 256(sp)
  LD s5, 264(sp)
  LD s6, 272(sp)
  LD s7, 280(sp)
  LD s8, 288(sp)
  LD s9, 296(sp)
  LD s10, 304(sp)
  LD s11, 320(sp)
  ADDI sp, sp, 656
  JALR zero, 0(ra)
bb26:
  ADDI s1, zero, 1
  # implict jump to bb27
bb27:
  # implict jump to bb28
bb28:
  ADD s2, s1, zero
  SLLIW s3, s2, 3
  ADDI t5, sp, 392
  ADD s3, t5, s3
  ADDI s4, zero, 1
  SUBW s4, s2, s4
  SLLIW s4, s4, 3
  ADDI t5, sp, 392
  ADD s4, t5, s4
  LW s5, 4(s4)
  ADDI s6, zero, 1
  SUBW s5, s5, s6
  SW s5, 0(s3)
  LW s4, 0(s4)
  ADDI s5, zero, 2
  SUBW s4, s4, s5
  SW s4, 4(s3)
  ADDIW t4, s2, 1
  SW t4, 196(sp)
  # implict jump to bb29
bb29:
  LW t4, 196(sp)
  SLTI s2, t4, 32
  BNE s2, zero, bb30
  JAL zero, bb25
bb30:
  LW t4, 196(sp)
  ADD s1, t4, zero
  JAL zero, bb28
bb31:
  ADDI s0, zero, 62
  # implict jump to bb32
bb32:
  # implict jump to bb33
bb33:
  ADD s1, s0, zero
  ADDI s2, zero, 1
  SUBW t4, s1, s2
  SW t4, 192(sp)
  LW t4, 192(sp)
  SLLIW s1, t4, 2
  ADDIW s1, s1, 8
  ADDI t5, sp, 392
  ADD s1, t5, s1
  SW zero, 0(s1)
  # implict jump to bb34
bb34:
  LW t4, 192(sp)
  BNE t4, zero, bb35
  JAL zero, bb24
bb35:
  LW t4, 192(sp)
  ADD s0, t4, zero
  JAL zero, bb33
bb36:
  # implict jump to bb37
bb37:
  ADD t4, zero, zero
  SW t4, 188(sp)
  ADD t4, zero, zero
  SW t4, 96(sp)
  # implict jump to bb38
bb38:
  LW t4, 96(sp)
  ADD s11, t4, zero
  LW t4, 188(sp)
  ADD s10, t4, zero
  ADDIW t4, s10, 1
  SW t4, 144(sp)
  LW t4, 144(sp)
  SLTI s9, t4, 16
  BNE s9, zero, bb43
  # implict jump to bb39
bb39:
  ADD s9, s11, zero
  # implict jump to bb40
bb40:
  ADD t4, s9, zero
  SW t4, 184(sp)
  # implict jump to bb41
bb41:
  LW t4, 144(sp)
  SLTI s0, t4, 15
  BNE s0, zero, bb42
  JAL zero, bb23
bb42:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  JAL zero, bb38
bb43:
  # implict jump to bb44
bb44:
  SLLIW s10, s10, 2
  ADDI t4, sp, 328
  ADD t4, t4, s10
  SD t4, 312(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  ADD t4, s11, zero
  SW t4, 168(sp)
  # implict jump to bb45
bb45:
  LW t4, 168(sp)
  ADD s8, t4, zero
  LW t4, 176(sp)
  ADD s7, t4, zero
  LD t4, 312(sp)
  LW s11, 0(t4)
  SLLIW s0, s7, 2
  ADDI t5, sp, 328
  ADD s0, t5, s0
  LW s10, 0(s0)
  BLT s11, s10, bb51
  # implict jump to bb46
bb46:
  # implict jump to bb47
bb47:
  ADD t4, s8, zero
  SW t4, 172(sp)
  ADDIW t4, s7, 1
  SW t4, 180(sp)
  # implict jump to bb48
bb48:
  LW t4, 180(sp)
  SLTI s0, t4, 16
  BNE s0, zero, bb50
  # implict jump to bb49
bb49:
  LW t4, 172(sp)
  ADD s9, t4, zero
  JAL zero, bb40
bb50:
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  JAL zero, bb45
bb51:
  LD t4, 312(sp)
  LW s10, 0(t4)
  LW s11, 0(s0)
  LD t4, 312(sp)
  SW s11, 0(t4)
  SW s10, 0(s0)
  ADD s8, s10, zero
  JAL zero, bb47
sort:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  ADDI s5, zero, 1
  SUBW s5, a1, s5
  BLT zero, s5, bb54
  # implict jump to bb53
bb53:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb54:
  # implict jump to bb55
bb55:
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb56
bb56:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADDIW s0, s8, 1
  BLT s0, a1, bb61
  # implict jump to bb57
bb57:
  ADD s9, s7, zero
  # implict jump to bb58
bb58:
  ADD s1, s9, zero
  # implict jump to bb59
bb59:
  ADDI s9, zero, 1
  SUBW s9, a1, s9
  BLT s0, s9, bb60
  JAL zero, bb53
bb60:
  ADD s5, s0, zero
  ADD s6, s1, zero
  JAL zero, bb56
bb61:
  # implict jump to bb62
bb62:
  SLLIW s8, s8, 2
  ADD s3, a0, s8
  ADD s8, s0, zero
  # implict jump to bb63
bb63:
  ADD s10, s7, zero
  ADD s11, s8, zero
  LW t0, 0(s3)
  SLLIW t1, s11, 2
  ADD t1, a0, t1
  LW t2, 0(t1)
  BLT t0, t2, bb69
  # implict jump to bb64
bb64:
  # implict jump to bb65
bb65:
  ADD s2, s10, zero
  ADDIW s4, s11, 1
  # implict jump to bb66
bb66:
  BLT s4, a1, bb68
  # implict jump to bb67
bb67:
  ADD s9, s2, zero
  JAL zero, bb58
bb68:
  ADD s8, s4, zero
  ADD s7, s2, zero
  JAL zero, bb63
bb69:
  LW t0, 0(s3)
  LW t2, 0(t1)
  SW t2, 0(s3)
  SW t0, 0(t1)
  ADD s10, t0, zero
  JAL zero, bb65
