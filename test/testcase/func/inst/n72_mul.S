#include <asm.h>
#include <regdef.h>
#include <cpu_cde.h>

LEAF(n72_mul_test)
    .set noreorder
    addiu s0, s0 ,1
    li  s2, 0x00
###test inst
    LI(t0, 0)               # in:  0
    LI(t1, 0)               # in:  0
    LI(v1, 0)               # out: 0
    mul v0, t0, t1
    nop
    bne v0, v1, inst_error
    nop

    LI(t0, 126)             # in:  126
    LI(t1, 0)               # in:  0
    LI(v1, 0)               # out: 0
    mul v0, t0, t1
    nop
    bne v0, v1, inst_error
    nop

    LI(t0, 0)               # in:  0
    LI(t1, 126)             # in:  126
    LI(v1, 0)               # out: 0
    mul v0, t0, t1
    nop
    bne v0, v1, inst_error
    nop

    LI(t0, 1)               # in:  1
    LI(t1, 126)             # in:  126
    LI(v1, 126)             # out: 126
    mul v0, t0, t1
    nop
    bne v0, v1, inst_error
    nop

    LI(t0, -1)              # in:  -1
    LI(t1, 126)             # in:  126
    LI(v1, -126)            # out: -126
    mul v0, t0, t1
    nop
    bne v0, v1, inst_error
    nop

    LI(t0, 38)              # in:  38
    LI(t1, 126)             # in:  126
    LI(v1, 0x12b4)          # out: 0x12b4
    mul v0, t0, t1
    nop
    bne v0, v1, inst_error
    nop

    LI(t0, 38)              # in:  38
    LI(t1, 126)             # in:  126
    LI(v1, 0x12b4)          # out: 0x12b4
    mul v0, t0, t1
    nop
    bne v0, v1, inst_error
    nop

    LI(t0, 0xffff)          # in:  0xffff
    LI(t1, 0xffff)          # in:  0xffff
    LI(v1, 0xfffe0001)      # out: 0xfffe0001
    mul v0, t0, t1
    nop
    bne v0, v1, inst_error
    nop

    LI(t0, 0xffff0)         # in:  0xffff0
    LI(t1, 0xffff0)         # in:  0xffff0
                            # out: 0x000000fffe000100
    LI(t3, 0x000000ff)      # out  0x000000ff
    LI(v1, 0xfe000100)      # out: 0xfe000100
    mul v0, t0, t1
    nop
    bne v0, v1, inst_error
    nop

    LI(t0, 0xffff9b25)      # in:  0xffff9b25
    LI(t1, 0x7cffeb)        # in:  0x7cffeb
                            # out: 0xffffffec11945f07
    LI(t3, 0xffffffec)      # out: 0xffffffec
    LI(v1, 0xc11945f7)      # out: 0xc11945f7
    mul v0, t0, t1
    nop
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
    nop
    or t0, t1, s3
    nop
    sw t0, 0(s1)
    jr ra
    nop
END(n72_mul_test)
