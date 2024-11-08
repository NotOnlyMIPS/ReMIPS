#include <asm.h>
#include <regdef.h>
#include <inst_test.h>

LEAF(n27_trap_ex_test)
    .set noreorder
    addiu s0, s0, 1
    li    t0, 0x800d0000
    LI(s2, 9)
    sw    s2, 0(t0)
##clear cause.TI, status.EXL
    mtc0  zero, c0_compare
    lui   s7,0x0040
	mtc0  s7, c0_status
    nop
    LI(s7, 9)               #trap ex, ref return value.
###test inst
    LI(s2, 0)
    ori   a0, zero, 0x1000   # in: 0x00001000
    ori   a1, zero, 0x1000   # in: 0x00001000
    la    s4, 1f
1:  teq   a0, a1             # trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 9)
    ori   a0, zero, 0x1000   # in: 0x00001000
    ori   a1, zero, 0x1110   # in: 0x00001110
    la    s4, 1f
1:  teq   a0, a1             # no trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 9)
    ori   a0, zero, 0x1000   # in: 0x00001000
    ori   a1, zero, 0x1000   # in: 0x00001000
    la    s4, 1f
1:  tne   a0, a1             # no trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 0)
    ori   a0, zero, 0x1000   # in: 0x00001000
    ori   a1, zero, 0x1110   # in: 0x00001110
    la    s4, 1f
1:  tne   a0, a1             # trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 0)
    ori   a0, zero, 0x1000   # in: 0x00001000
	la    s4, 1f
1:  tnei  a0, 0x1110         # trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 9)
    ori   a0, zero, 0x1110   # in: 0x00001110
	la    s4, 1f
1:  tnei  a0, 0x1110         # no trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 0)
    LI(a0, 0xffff8000)       # in: 0xffff8000
    la    s4, 1f
1:  teqi  a0, 0x8000         # trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 9)
    LI(a0, 0xffff7fff)       # in: 0xffff7fff
    teqi  a0, 0x7fff         # no trap
    la    s4, 1f
1:  bne   s2, s7, inst_error
    nop

    LI(s2, 0)
    LI(a0, 0x00007fff)       # in: 0x00007fff
    la    s4, 1f
1:  teqi  a0, 0x7fff         # trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 0)
    ori   a0, zero, 0x4000   # in: 0x00004000
    ori   a1, zero, 0x1000   # in: 0x00001000
    la    s4, 1f
1:  tge   a0, a1             # trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 9)
    LI(a0, 0xffff4000)       # in: 0xffff4000
    ori   a1, zero, 0x1000   # in: 0x00001000
    la    s4, 1f
1:  tge   a0, a1             # no trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 9)
    ori   a0, zero, 0x1000   # in: 0x00001000
    ori   a1, zero, 0x4000   # in: 0x00004000
    la    s4, 1f
1:  tge   a0, a1             # no trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 0)
    ori   a0, zero, 0x1000   # in: 0x00001000
    ori   a1, zero, 0x1000   # in: 0x00001000
    la    s4, 1f
1:  tge  a0, a1              # trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 0)
    ori   a0, zero, 0x4000   # in: 0x00004000
    ori   a1, zero, 0x1000   # in: 0x00001000
    la    s4, 1f
1:  tgeu  a0, a1             # trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 0)
    LI(a0, 0xffff4000)       # in: 0xffff4000
    ori   a1, zero, 0x1000   # in: 0x00001000
    la    s4, 1f
1:  tgeu  a0, a1             # trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 9)
    ori   a0, zero, 0x1000   # in: 0x00001000
    ori   a1, zero, 0x4000   # in: 0x00004000
    la    s4, 1f
1:  tgeu  a0, a1             # no trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 0)
    ori   a0, zero, 0x1000   # in: 0x00001000
    ori   a1, zero, 0x1000   # in: 0x00001000
    la    s4, 1f
1:  tgeu  a0, a1             # trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 0)
    LI(a0, 0xffff8000)       # in: 0xffff8000
	la    s4, 1f
1:  tgei  a0, 0x8000         # trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 9)
    LI(a0, 0xffff7f00)       # in: 0xffff7f00
	la    s4, 1f
1:  tgei  a0, 0x7f00         # no trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 0)
    LI(a0, 0x00007f00)       # in: 0x00007f00
	la    s4, 1f
1:  tgei  a0, 0x7f00         # trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 0)
    LI(a0, 0xffff8000)       # in: 0xffff8000
	la    s4, 1f
1:  tgeiu a0, 0x8000         # trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 0)
    LI(a0, 0xffff7f00)       # in: 0xffff7f00
	la    s4, 1f
1:  tgeiu a0, 0x7f00         # trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 0)
    LI(a0, 0x00007f00)       # in: 0x00007f00
	la    s4, 1f
1:  tgeiu a0, 0x7f00         # trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 9)
    ori   a0, zero, 0x4000   # in: 0x00004000
    ori   a1, zero, 0x1000   # in: 0x00001000
    la    s4, 1f
1:  tlt   a0, a1             # no trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 0)
    LI(a0, 0xffff4000)       # in: 0xffff4000
    ori   a1, zero, 0x1000   # in: 0x00001000
    la    s4, 1f
1:  tlt   a0, a1             # trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 0)
    ori   a0, zero, 0x1000   # in: 0x00001000
    ori   a1, zero, 0x4000   # in: 0x00004000
    la    s4, 1f
1:  tlt   a0, a1             # trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 9)
    ori   a0, zero, 0x1000   # in: 0x00001000
    ori   a1, zero, 0x1000   # in: 0x00001000
    la    s4, 1f
1:  tlt   a0, a1             # no trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 9)
    ori   a0, zero, 0x4000   # in: 0x00004000
    ori   a1, zero, 0x1000   # in: 0x00001000
    la    s4, 1f
1:  tltu  a0, a1             # no trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 9)
    LI(a0, 0xffff4000)       # in: 0xffff4000
    ori   a1, zero, 0x1000   # in: 0x00001000
    la    s4, 1f
1:  tltu  a0, a1             # no trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 0)
    ori   a0, zero, 0x1000   # in: 0x00001000
    ori   a1, zero, 0x4000   # in: 0x00004000
    la    s4, 1f
1:  tltu  a0, a1             # trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 9)
    ori   a0, zero, 0x1000   # in: 0x00001000
    ori   a1, zero, 0x1000   # in: 0x00001000
    la    s4, 1f
1:  tltu  a0, a1             # no trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 9)
    LI(a0, 0xffff8000)       # in: 0xffff8000
	la    s4, 1f
1:  tlti  a0, 0x8000         # no trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 0)
    LI(a0, 0xffff7f00)       # in: 0xffff7f00
	la    s4, 1f
1:  tlti  a0, 0x7f00         # trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 9)
    LI(a0, 0x00007f00)       # in: 0x00007f00
	la    s4, 1f
1:  tlti  a0, 0x7f00         # no trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 9)
    LI(a0, 0xffff8000)       # in: 0xffff8000
	la    s4, 1f
1:  tltiu a0, 0x8000         # no trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 9)
    LI(a0, 0xffff7f00)       # in: 0xffff7f00
	la    s4, 1f
1:  tltiu a0, 0x7f00         # no trap
    bne   s2, s7, inst_error
    nop

    LI(s2, 9)
    LI(a0, 0x00007f00)       # in: 0x00007f00
	la    s4, 1f
1:  tltiu a0, 0x7f00         # no trap
    bne   s2, s7, inst_error
    nop
###score ++
    addiu s3, s3, 1
###output (s0<<24)|s3
inst_error:
    sll t1, s0, 24
    or t0, t1, s3
    sw t0, 0(s1)
    jr ra
    nop
END(n27_trap_ex_test)
