#include <asm.h>
#include <regdef.h>
#include <cpu_cde.h>

LEAF(n71_movn_test)
    .set noreorder
    addiu s0, s0 ,1
    li  s2, 0x00
###test inst
    LI(v1, 0xbeefbeef)  # expected origin value
    LI(t0, 0xcfcfcfcf)  # expected new value

    LI(a0, 0)           # in:  0
                        # out: v1
    move v0, v1
    movn v0, t0, a0
    bne v0, v1, inst_error
    nop

    LI(a0, 1)           # in:  1
                        # out: t0
    move v0, v1
    movn v0, t0, a0
    bne v0, t0, inst_error
    nop

    LI(a0, 0xffffffff)  # in:  0xffffffff
                        # out: t0
    move v0, v1
    movn v0, t0, a0
    bne v0, t0, inst_error
    nop

    LI(a0, 0x1234bf00)  # in:  0x1234bf00
                        # out: t0
    move v0, v1
    movn v0, t0, a0
    bne v0, t0, inst_error
    nop
###detect exception
    bne s2, zero, inst_error
    nop
###score ++
    addiu s3, s3, 1
###output (s0<<24)|s3
inst_error:
    sll t1, s0, 24
    NOP4
    or t0, t1, s3
    NOP4
    sw t0, 0(s1)
    jr ra
    nop
END(n71_movn_test)
