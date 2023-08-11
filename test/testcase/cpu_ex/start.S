#include <asm.h>
#include <regdef.h>
#include <cpu_cde.h>

#define TEST_NUM 27

##s0, number
##s1, number adress
##s2, exception use
##s3, score
##s4, exception pc
	.set	noreorder
	.globl	_start
	.globl	start
	.globl	__main
_start:
start:
    li    t0, 0xffffffff
    addiu t0, zero, 0xffff
	b	locate
	nop

##avoid "j locate" not taken
    lui   t0, 0x8000
    addiu t1, t1, 1
    or    t2, t0, zero
    addu  t3, t5, t6
    lw    t4, 0(t0)
    nop

##avoid cpu run error
.org 0x0ec
    lui   t0, 0x8000
    addiu t1, t1, 1
    or    t2, t0, zero
    addu  t3, t5, t6
    lw    t4, 0(t0)
.org 0x100
test_finish:
    addiu t0, t0, 1
    li t1, 0xff
    LI (t2, UART_ADDR)
    sw t1, 0x0(t2)
    b test_finish
    nop
##avoid cpu run error
    lui   t0, 0x8000
    addiu t1, t1, 1
    or    t2, t0, zero
    addu  t3, t5, t6
    lw    t4, 0(t0)
/*
 *  exception handle
 */
.org 0x380
1:
    mfhi k0
    mflo k1
    li  k0, 0x800d0000
    lbu k1, 0x0(k0)
    li  k0, 0x01 # syscall
    beq k1, k0, syscall_ex
    nop
    li  k0, 0x02 # break
    beq k1, k0, break_ex
    nop
    li  k0, 0x03 # overflow
    beq k1, k0, overflow_ex
    nop
    li  k0, 0x04 # adel(load)
    beq k1, k0, adel_load_ex
    nop
    li  k0, 0x05 # ades
    beq k1, k0, ades_ex
    nop
    li  k0, 0x06 # adel(inst fetch)
    beq k1, k0, adel_if_ex
    nop
    li  k0, 0x07 # reserved inst
    beq k1, k0, reserved_inst_ex
    nop
    li  k0, 0x08 # int
    beq k1, k0, int_ex
    nop
    li  k0, 0x09 # trap
    beq k1, k0, trap_ex
    nop

syscall_ex:
    addu  s2, zero, zero
    mfc0 k0, c0_epc
    bne  k0, s4, ex_finish
    nop
    mfc0 k0, c0_cause
    andi k0, k0, 0x7c # 6..2
    li   k1, 0x20 # 010_0000
    bne  k0, k1, ex_finish
    nop
    mfc0 k0, c0_status
    andi k0, k0, 0x02
    li   k1, 0x02
    bne  k0, k1, ex_finish
    nop
    lui  s2, 0x1
    b ex_finish
    nop

break_ex:
    addu  s2, zero, zero
    mfc0 k0, c0_epc
    bne  k0, s4, ex_finish
    nop
    mfc0 k0, c0_cause
    andi k0, k0, 0x7c # 6..2
    li   k1, 0x24 # 010_0100
    bne  k0, k1, ex_finish
    nop
    mfc0 k0, c0_status
    andi k0, k0, 0x02 # exl
    li   k1, 0x02 # exl = 1
    bne  k0, k1, ex_finish
    nop
    lui  s2, 0x2
    b ex_finish
    nop

overflow_ex:
    addu s2, zero, zero
    mfc0 k0, c0_epc
    bne  k0, s4, ex_finish
    mfc0 k0, c0_cause
    andi k0, k0, 0x7c # 6..2 exc code
    li   k1, 0x30 # 011_0000
    bne  k0, k1, ex_finish
    nop
    mfc0 k0, c0_status
    andi k0, k0, 0x02 # exl
    li k1, 0x02 # exl = 1
    bne k0, k1, ex_finish
    nop
    lui s2, 0x3
    b ex_finish
    nop

adel_load_ex:
    addu s2, zero, zero
    mfc0 k0, c0_epc
    bne  k0, s4, ex_finish
    nop
    mfc0 k0, c0_cause
    andi k0, k0, 0x7c # 6..2 exc code
    li   k1, 0x10 # 001_0000
    bne  k0, k1, ex_finish
    nop
    mfc0 k0, c0_status
    andi k0, k0, 0x02 # exl
    li k1, 0x02 # exl = 1
    bne k0, k1, ex_finish
    nop
    lui s2, 0x4
    b ex_finish
    nop

ades_ex:
    addu s2, zero, zero
    mfc0 k0, c0_epc
    bne  k0, s4, ex_finish
    nop
    mfc0 k0, c0_cause
    andi k0, k0, 0x7c # 6..2 exc code
    li   k1, 0x14 # 001_0100
    bne  k0, k1, ex_finish
    nop
    mfc0 k0, c0_status
    andi k0, k0, 0x02 # exl
    li k1, 0x02 # exl = 1
    bne k0, k1, ex_finish
    nop
    lui s2, 0x5
    b ex_finish
    nop

adel_if_ex:
    addu s2, zero, zero
    mfc0 k0, c0_epc
    bne  k0, s4, ex_finish
    nop
    mtc0 s5, c0_epc
    mfc0 k0, c0_cause
    andi k0, k0, 0x7c # 6..2 exc code
    li   k1, 0x10 # 001_0000
    bne  k0, k1, ex_finish
    nop
    mfc0 k0, c0_status
    andi k0, k0, 0x02 # exl
    li k1, 0x02 # exl = 1
    bne k0, k1, ex_finish
    nop
    lui s2, 0x6
    b ex_finish
    nop

reserved_inst_ex:
    addu s2, zero, zero
    mfc0 k0, c0_epc
    bne  k0, s4, ex_finish
    nop
    mfc0 k0, c0_cause
    andi k0, k0, 0x7c # 6..2 exc code
    li   k1, 0x28 # 010_1000
    bne  k0, k1, ex_finish
    nop
    mfc0 k0, c0_status
    andi k0, k0, 0x02 # exl
    li k1, 0x02 # exl = 1
    bne k0, k1, ex_finish
    nop
    lui s2, 0x7
    b ex_finish
    nop

int_ex:
    addu s2, zero, zero
    mfc0 k0, c0_epc
    bne  k0, s4, ex_finish
    nop
    addiu k0, k0, 8
    mtc0  k0, c0_epc   //epc+8
    disable_trace_cmp_s
    mfc0 k0, c0_cause  //do not compare cause.bd
    enable_trace_cmp_s
    andi k0, k0, 0x7c # 6..2 exc code
    li   k1, 0x00 # 000_0000
    bne  k0, k1, ex_finish
    nop
    mfc0 k0, c0_status
    andi k0, k0, 0x02 # exl
    li k1, 0x02 # exl = 1
    bne k0, k1, ex_finish
    nop
    li   k0, 0xffffffff
    li   k1, 0x00000000
    mtc0 k0, c0_compare //clear compare
    mtc0 k1, c0_cause
    lui s2, 0x8
    b ex_ret
    nop

trap_ex:
    addu s2, zero, zero
    mfc0 k0, c0_epc
    bne  k0, s4, ex_finish
    mfc0 k0, c0_cause
    andi k0, k0, 0x7c # 6..2 exc code
    li   k1, 0x34     # 011_0100
    bne  k0, k1, ex_finish
    nop
    mfc0 k0, c0_status
    andi k0, k0, 0x02 # exl
    li k1, 0x02 # exl = 1
    bne k0, k1, ex_finish
    nop
    lui s2, 0x9
    b ex_finish
    nop

ex_finish:
    mfc0 k0,c0_cause
    lui k1,0x8000
    and k0,k0,k1
    mfc0 k1,c0_epc
    addiu k1,k1,0x4
    beq k0,zero, 1f
    nop
    addiu k1,k1,0x4
1:
    mtc0  k1,c0_epc
    nop
    bne s2, zero, ex_ret
    nop
    lui s2, 0xffff
ex_ret:
    .set mips32
    eret
    .set mips1
    nop


locate:
	.set noreorder

    LI (a0, LED_RG1_ADDR)
    LI (a1, LED_RG0_ADDR)
    LI (a2, LED_ADDR)
    LI (s1, NUM_ADDR)

    LI (t1, 0x0002)
    LI (t2, 0x0001)
    LI (t3, 0x0000ffff)
    lui s3, 0
    NOP4

    sw t1, 0(a0)
    sw t2, 0(a1)
    sw t3, 0(a2)
    sw s3, 0(s1)
    lui s0, 0
    NOP4

############################
###Kseg1 -> Kseg0
#if 1
    la t9, kseg1_kseg0 #####
    jr t9              ###
    nop                #####
kseg1_kseg0:
#endif
############################

inst_test:
    jal n1_syscall_ex_test       # syscall_ex
    nop
    jal wait_1s
    nop
    jal n2_break_ex_test         # break_ex
    nop
    jal wait_1s
    nop
    jal n3_add_ov_ex_test        # add_ov_ex
    nop
    jal wait_1s
    nop
    jal n4_addi_ov_ex_test       # addi_ov_ex
    nop
    jal wait_1s
    nop
    jal n5_sub_ov_ex_test        # sub_ov_ex
    nop
    jal wait_1s
    nop
    jal n6_lw_adel_ex_test       # lw_adel_ex
    nop
    jal wait_1s
    nop
    jal n7_lh_adel_ex_test       # lh_adel_ex
    nop
    jal wait_1s
    nop
    jal n8_lhu_adel_ex_test      # lhu_adel_ex
    nop
    jal wait_1s
    nop
    jal n9_sw_ades_ex_test       # sw_ades_ex
    nop
    jal wait_1s
    nop
    jal n10_sh_ades_ex_test      # sh_ades_ex
    nop
    jal wait_1s
    nop
    jal n11_ft_adel_ex_test      # ft_adel_ex
    nop
    jal wait_1s
    nop
    jal n12_ri_ex_test           # ri_ex
    nop
    jal wait_1s
    nop
    jal n13_ti_ex_test           # ti_ex
    nop
    jal wait_1s
    nop
    jal n14_soft_int_ex_test     # soft_int_ex
    nop
    jal wait_1s
    nop
    jal n15_beq_ds_ex_test       # beq_ds_ex
    nop
    jal wait_1s
    nop
    jal n16_bne_ds_ex_test       # bne_ds_ex
    nop
    jal wait_1s
    nop
    jal n17_bgez_ds_ex_test      # bgez_ds_ex
    nop
    jal wait_1s
    nop
    jal n18_bgtz_ds_ex_test      # bgtz_ds_ex
    nop
    jal wait_1s
    nop
    jal n19_blez_ds_ex_test      # blez_ds_ex
    nop
    jal wait_1s
    nop
    jal n20_bltz_ds_ex_test      # bltz_ds_ex
    nop
    jal wait_1s
    nop
    jal n21_bltzal_ds_ex_test    # bltzal_ds_ex
    nop
    jal wait_1s
    nop
    jal n22_bgezal_ds_ex_test    # bgezal_ds_ex
    nop
    jal wait_1s
    nop
    jal n23_j_ds_ex_test         # j_ds_ex
    nop
    jal wait_1s
    nop
    jal n24_jal_ds_ex_test       # jal_ds_ex
    nop
    jal wait_1s
    nop
    jal n25_jr_ds_ex_test        # jr_ds_ex
    nop
    jal wait_1s
    nop
    jal n26_jalr_ds_ex_test      # jalr_ds_ex
    nop
    jal wait_1s
    nop
    jal n27_trap_ex_test         # trap_ex
    nop
    jal wait_1s
    nop

############################
###Kseg0 -> Kseg1
#if 1
    la t1, kseg0_kseg1 #####
    li t2, 0x20000000  ###
    addu t9, t1, t2    #kseg0 -> kseg1
    jr t9
    nop                #####
kseg0_kseg1:
#endif
############################


test_end:
    LI  (s0, TEST_NUM)
    NOP4
    beq s0, s3, 1f
    nop

    LI (a0, LED_ADDR)
	LI (a1, LED_RG1_ADDR)
    LI (a2, LED_RG0_ADDR)

    LI (t1, 0x0002)
    NOP4

	sw zero, 0(a0)
    sw t1, 0(a1)
    sw t1, 0(a2)
    b  2f
    nop
1:
    LI (t1, 0x0001)
    LI (a0, LED_RG1_ADDR)
	LI (a1, LED_RG0_ADDR)
    NOP4
    sw t1, 0(a0)
    sw t1, 0(a1)

2:
	//LI (t1, 0xff)
	//LI (t0, UART_ADDR)
	//sw t1, 0(t0)

	jal test_finish
    nop

wait_1s:
    LI (t0,SW_INTER_ADDR)
    LI (t1, 0xaaaa)

    #initial t3
    lw    t2, 0x0(t0)   #switch_interleave: {switch[7],1'b0, switch[6],1'b0...switch[0],1'b0}
    NOP4
    xor   t2, t2, t1
    NOP4
    sll   t3, t2, 9     #t3 = switch interleave << 9
    NOP4
    addiu t3, t3, 1
    NOP4

sub1:
    addiu t3, t3, -1

    #select min{t3, switch_interleave}
    lw    t2, 0x0(t0)   #switch_interleave: {switch[7],1'b0, switch[6],1'b0...switch[0],1'b0}
    NOP4
    xor   t2, t2, t1
    NOP4
    sll   t2, t2, 9     #switch interleave << 9
    NOP4
    sltu  t4, t3, t2
    NOP4
    bnez  t4, 1f
    nop
    addu  t3, t2, 0
    NOP4
1:
    bne   t3,zero, sub1
    nop
    jr ra
    nop
