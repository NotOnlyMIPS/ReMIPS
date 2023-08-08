#include <asm.h>
#include <regdef.h>
#include <cpu_cde.h>

LEAF(n8_msub_test)
    .set noreorder
    addiu s0, s0 ,1
    li  s2, 0x00
###test inst
    LI(a0, 0)
    mthi a0
    mtlo a0                 # reset hilo
    mfhi v0
    bne v0, a0, inst_error
    mflo v0
    bne v0, a0, inst_error

    LI(t1, -1)              # in:  -1
    LI(t2, 1)               # in:  1
    LI(t3, 0)               # out: 0
    LI(t4, 1)               # out: 1
    msub t1, t2
    mfhi v0
    bne v0, t3, inst_error
    mflo v0
    bne v0, t4, inst_error

    LI(t1, 1)               # in:  1
    LI(t2, 1)               # in:  1
    LI(t3, 0)               # out: 0
    LI(t4, 0)               # out: 0
    msub t1, t2
    mfhi v0
    bne v0, t3, inst_error
    mflo v0
    bne v0, t4, inst_error

    LI(t1, 3)               # in:  3
    LI(t2, -4)              # in:  -4
    LI(t3, 0)               # out: 0
    LI(t4, 12)              # out: 12
    msub t1, t2
    mfhi v0
    bne v0, t3, inst_error
    mflo v0
    bne v0, t4, inst_error

    LI(t1, 12369)           # in:  12369
    LI(t2, -98812)          # in:  -98812
    LI(t3, 0)               # out: 0
    LI(t4, 0x48d960c8)      # out: 0x48d960c8
    msub t1, t2
    mfhi v0
    bne v0, t3, inst_error
    mflo v0
    bne v0, t4, inst_error

    LI(t1, 0x40000000)      # in:  0x40000000
    LI(t2, 0x80)            # in:  0x80
    LI(t3, 0x8000001f)      # out: 0x8000001f
    LI(t4, 0xb7269f38)      # out: 0xb7269f38
    msub t1, t2
    mfhi v0
    bne v0, t3, inst_error
    mflo v0
    bne v0, t4, inst_error

    LI(t1, 99999)           # in:  99999
    LI(t2, -99999)          # in: -99999
    LI(t3, 0x8000001d)      # out: 0x8000001d
    LI(t4, 0x631dc877)      # out: 0x631dc877
    msub t1, t2
    mfhi v0
    bne v0, t3, inst_error
    mflo v0
    bne v0, t4, inst_error
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
END(n8_msub_test)
