#include <asm.h>
#include <regdef.h>
#include <cpu_cde.h>

LEAF(n69_clz_test)
    .set noreorder
    addiu s0, s0 ,1
    li  s2, 0x00
###test inst
    LI(a1, 0x00000000)      # in:  0x00000000
    LI(v1, 32)              # out: 32
    clz v0, a1
    bne v0, v1, inst_error
    nop

    LI(a1, 0x23712223)      # in:  0x23712223
    LI(v1, 2)               # out: 2
    clz v0, a1
    bne v0, v1, inst_error
    nop

    LI(a1, 0xefffffff)      # in:  0xefffffff
    LI(v1, 0)               # out: 0
    clz v0, a1
    bne v0, v1, inst_error
    nop

    LI(a1, 0x00007f00)      # in:  0x00007f00
    LI(v1, 17)              # out: 17
    clz v0, a1
    bne v0, v1, inst_error
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
END(n69_clz_test)
