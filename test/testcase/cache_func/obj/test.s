
main.elf:     file format elf32-tradlittlemips
main.elf


Disassembly of section .text:

bfc00000 <_ftext>:
/home/chooaa/cs_lab/cache_func/start.S:18
bfc00000:	3c1bbfb0 	lui	k1,0xbfb0
bfc00004:	af608ffc 	sw	zero,-28676(k1)
bfc00008:	af608ffc 	sw	zero,-28676(k1)
bfc0000c:	af60fff8 	sw	zero,-8(k1)
bfc00010:	af608ffc 	sw	zero,-28676(k1)
bfc00014:	af608ffc 	sw	zero,-28676(k1)
bfc00018:	8f608ffc 	lw	zero,-28676(k1)
bfc0001c:	8f7bfff8 	lw	k1,-8(k1)
/home/chooaa/cs_lab/cache_func/start.S:22
bfc00020:	40088000 	mfc0	t0,$16
/home/chooaa/cs_lab/cache_func/start.S:23
bfc00024:	3108fff8 	andi	t0,t0,0xfff8
/home/chooaa/cs_lab/cache_func/start.S:24
bfc00028:	35080003 	ori	t0,t0,0x3
/home/chooaa/cs_lab/cache_func/start.S:25
bfc0002c:	40888000 	mtc0	t0,$16
/home/chooaa/cs_lab/cache_func/start.S:28
bfc00030:	3c08bfc0 	lui	t0,0xbfc0
bfc00034:	25080394 	addiu	t0,t0,916
/home/chooaa/cs_lab/cache_func/start.S:29
bfc00038:	3c09dfff 	lui	t1,0xdfff
bfc0003c:	3529ffff 	ori	t1,t1,0xffff
/home/chooaa/cs_lab/cache_func/start.S:30
bfc00040:	01094024 	and	t0,t0,t1
/home/chooaa/cs_lab/cache_func/start.S:31
bfc00044:	01000008 	jr	t0
bfc00048:	00000000 	nop
/home/chooaa/cs_lab/cache_func/start.S:32
bfc0004c:	00000000 	nop
/home/chooaa/cs_lab/cache_func/start.S:35
bfc00050:	3c088000 	lui	t0,0x8000
/home/chooaa/cs_lab/cache_func/start.S:36
bfc00054:	25290001 	addiu	t1,t1,1
/home/chooaa/cs_lab/cache_func/start.S:37
bfc00058:	01005025 	move	t2,t0
/home/chooaa/cs_lab/cache_func/start.S:38
bfc0005c:	01ae5821 	addu	t3,t5,t6
/home/chooaa/cs_lab/cache_func/start.S:39
bfc00060:	8d0c0000 	lw	t4,0(t0)
	...
/home/chooaa/cs_lab/cache_func/start.S:44
bfc000e8:	3c088000 	lui	t0,0x8000
/home/chooaa/cs_lab/cache_func/start.S:45
bfc000ec:	25290001 	addiu	t1,t1,1
/home/chooaa/cs_lab/cache_func/start.S:46
bfc000f0:	01005025 	move	t2,t0
/home/chooaa/cs_lab/cache_func/start.S:47
bfc000f4:	01ae5821 	addu	t3,t5,t6
/home/chooaa/cs_lab/cache_func/start.S:48
bfc000f8:	8d0c0000 	lw	t4,0(t0)
/home/chooaa/cs_lab/cache_func/start.S:49
bfc000fc:	00000000 	nop

bfc00100 <test_finish>:
/home/chooaa/cs_lab/cache_func/start.S:52
bfc00100:	1000ffff 	b	bfc00100 <test_finish>
/home/chooaa/cs_lab/cache_func/start.S:53
bfc00104:	25080001 	addiu	t0,t0,1
/home/chooaa/cs_lab/cache_func/start.S:54
bfc00108:	00000000 	nop
/home/chooaa/cs_lab/cache_func/start.S:56
bfc0010c:	3c088000 	lui	t0,0x8000
/home/chooaa/cs_lab/cache_func/start.S:57
bfc00110:	25290001 	addiu	t1,t1,1
/home/chooaa/cs_lab/cache_func/start.S:58
bfc00114:	01005025 	move	t2,t0
/home/chooaa/cs_lab/cache_func/start.S:59
bfc00118:	01ae5821 	addu	t3,t5,t6
/home/chooaa/cs_lab/cache_func/start.S:60
bfc0011c:	8d0c0000 	lw	t4,0(t0)
	...
/home/chooaa/cs_lab/cache_func/start.S:67
bfc00200:	1000005f 	b	bfc00380 <cache_fail>
bfc00204:	00000000 	nop
	...

bfc00380 <cache_fail>:
/home/chooaa/cs_lab/cache_func/start.S:72
bfc00380:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cache_func/start.S:73
bfc00384:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cache_func/start.S:74
bfc00388:	03e00008 	jr	ra
/home/chooaa/cs_lab/cache_func/start.S:75
bfc0038c:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cache_func/start.S:76
bfc00390:	00000000 	nop

bfc00394 <locate>:
/home/chooaa/cs_lab/cache_func/start.S:82
bfc00394:	3c04bfb0 	lui	a0,0xbfb0
bfc00398:	2484f008 	addiu	a0,a0,-4088
/home/chooaa/cs_lab/cache_func/start.S:83
bfc0039c:	3c05bfb0 	lui	a1,0xbfb0
bfc003a0:	24a5f004 	addiu	a1,a1,-4092
/home/chooaa/cs_lab/cache_func/start.S:84
bfc003a4:	3c06bfb0 	lui	a2,0xbfb0
bfc003a8:	24c6f000 	addiu	a2,a2,-4096
/home/chooaa/cs_lab/cache_func/start.S:85
bfc003ac:	3c11bfb0 	lui	s1,0xbfb0
bfc003b0:	2631f010 	addiu	s1,s1,-4080
/home/chooaa/cs_lab/cache_func/start.S:87
bfc003b4:	3c090000 	lui	t1,0x0
bfc003b8:	25290002 	addiu	t1,t1,2
/home/chooaa/cs_lab/cache_func/start.S:88
bfc003bc:	3c0a0000 	lui	t2,0x0
bfc003c0:	254a0001 	addiu	t2,t2,1
/home/chooaa/cs_lab/cache_func/start.S:89
bfc003c4:	3c0b0001 	lui	t3,0x1
bfc003c8:	256bffff 	addiu	t3,t3,-1
/home/chooaa/cs_lab/cache_func/start.S:90
bfc003cc:	3c130000 	lui	s3,0x0
/home/chooaa/cs_lab/cache_func/start.S:92
bfc003d0:	ac890000 	sw	t1,0(a0)
/home/chooaa/cs_lab/cache_func/start.S:93
bfc003d4:	acaa0000 	sw	t2,0(a1)
/home/chooaa/cs_lab/cache_func/start.S:94
bfc003d8:	accb0000 	sw	t3,0(a2)
/home/chooaa/cs_lab/cache_func/start.S:95
bfc003dc:	ae330000 	sw	s3,0(s1)
/home/chooaa/cs_lab/cache_func/start.S:96
bfc003e0:	3c100000 	lui	s0,0x0

bfc003e4 <inst_test>:
/home/chooaa/cs_lab/cache_func/start.S:98
bfc003e4:	0ff00148 	jal	bfc00520 <n1_ic_idx_inv_test>
/home/chooaa/cs_lab/cache_func/start.S:99
bfc003e8:	00000000 	nop
/home/chooaa/cs_lab/cache_func/start.S:100
bfc003ec:	0ff00134 	jal	bfc004d0 <wait_1s>
/home/chooaa/cs_lab/cache_func/start.S:101
bfc003f0:	00000000 	nop
/home/chooaa/cs_lab/cache_func/start.S:102
bfc003f4:	0ff001d8 	jal	bfc00760 <n2_ic_idx_sttag_test>
/home/chooaa/cs_lab/cache_func/start.S:103
bfc003f8:	00000000 	nop
/home/chooaa/cs_lab/cache_func/start.S:104
bfc003fc:	0ff00134 	jal	bfc004d0 <wait_1s>
/home/chooaa/cs_lab/cache_func/start.S:105
bfc00400:	00000000 	nop
/home/chooaa/cs_lab/cache_func/start.S:106
bfc00404:	0ff00238 	jal	bfc008e0 <n3_ic_hit_inv_test>
/home/chooaa/cs_lab/cache_func/start.S:107
bfc00408:	00000000 	nop
/home/chooaa/cs_lab/cache_func/start.S:108
bfc0040c:	0ff00134 	jal	bfc004d0 <wait_1s>
/home/chooaa/cs_lab/cache_func/start.S:109
bfc00410:	00000000 	nop
/home/chooaa/cs_lab/cache_func/start.S:110
bfc00414:	0ff00210 	jal	bfc00840 <n4_dc_idx_wbinv_test>
/home/chooaa/cs_lab/cache_func/start.S:111
bfc00418:	00000000 	nop
/home/chooaa/cs_lab/cache_func/start.S:112
bfc0041c:	0ff00134 	jal	bfc004d0 <wait_1s>
/home/chooaa/cs_lab/cache_func/start.S:113
bfc00420:	00000000 	nop
/home/chooaa/cs_lab/cache_func/start.S:114
bfc00424:	0ff00178 	jal	bfc005e0 <n5_dc_idx_sttag_test>
/home/chooaa/cs_lab/cache_func/start.S:115
bfc00428:	00000000 	nop
/home/chooaa/cs_lab/cache_func/start.S:116
bfc0042c:	0ff00134 	jal	bfc004d0 <wait_1s>
/home/chooaa/cs_lab/cache_func/start.S:117
bfc00430:	00000000 	nop
/home/chooaa/cs_lab/cache_func/start.S:118
bfc00434:	0ff0019c 	jal	bfc00670 <n6_dc_hit_inv_test>
/home/chooaa/cs_lab/cache_func/start.S:119
bfc00438:	00000000 	nop
/home/chooaa/cs_lab/cache_func/start.S:120
bfc0043c:	0ff00134 	jal	bfc004d0 <wait_1s>
/home/chooaa/cs_lab/cache_func/start.S:121
bfc00440:	00000000 	nop
/home/chooaa/cs_lab/cache_func/start.S:122
bfc00444:	0ff001b8 	jal	bfc006e0 <n7_dc_hit_wbinv_test>
/home/chooaa/cs_lab/cache_func/start.S:123
bfc00448:	00000000 	nop
/home/chooaa/cs_lab/cache_func/start.S:124
bfc0044c:	0ff00134 	jal	bfc004d0 <wait_1s>
/home/chooaa/cs_lab/cache_func/start.S:125
bfc00450:	00000000 	nop

bfc00454 <test_end>:
/home/chooaa/cs_lab/cache_func/start.S:128
bfc00454:	3c100000 	lui	s0,0x0
bfc00458:	26100007 	addiu	s0,s0,7
/home/chooaa/cs_lab/cache_func/start.S:129
bfc0045c:	1213000e 	beq	s0,s3,bfc00498 <test_end+0x44>
/home/chooaa/cs_lab/cache_func/start.S:130
bfc00460:	00000000 	nop
/home/chooaa/cs_lab/cache_func/start.S:132
bfc00464:	3c04bfb0 	lui	a0,0xbfb0
bfc00468:	2484f000 	addiu	a0,a0,-4096
/home/chooaa/cs_lab/cache_func/start.S:133
bfc0046c:	3c05bfb0 	lui	a1,0xbfb0
bfc00470:	24a5f008 	addiu	a1,a1,-4088
/home/chooaa/cs_lab/cache_func/start.S:134
bfc00474:	3c06bfb0 	lui	a2,0xbfb0
bfc00478:	24c6f004 	addiu	a2,a2,-4092
/home/chooaa/cs_lab/cache_func/start.S:136
bfc0047c:	3c090000 	lui	t1,0x0
bfc00480:	25290002 	addiu	t1,t1,2
/home/chooaa/cs_lab/cache_func/start.S:138
bfc00484:	ac800000 	sw	zero,0(a0)
/home/chooaa/cs_lab/cache_func/start.S:139
bfc00488:	aca90000 	sw	t1,0(a1)
/home/chooaa/cs_lab/cache_func/start.S:140
bfc0048c:	acc90000 	sw	t1,0(a2)
/home/chooaa/cs_lab/cache_func/start.S:141
bfc00490:	10000009 	b	bfc004b8 <test_end+0x64>
/home/chooaa/cs_lab/cache_func/start.S:142
bfc00494:	00000000 	nop
/home/chooaa/cs_lab/cache_func/start.S:144
bfc00498:	3c090000 	lui	t1,0x0
bfc0049c:	25290001 	addiu	t1,t1,1
/home/chooaa/cs_lab/cache_func/start.S:145
bfc004a0:	3c04bfb0 	lui	a0,0xbfb0
bfc004a4:	2484f008 	addiu	a0,a0,-4088
/home/chooaa/cs_lab/cache_func/start.S:146
bfc004a8:	3c05bfb0 	lui	a1,0xbfb0
bfc004ac:	24a5f004 	addiu	a1,a1,-4092
/home/chooaa/cs_lab/cache_func/start.S:147
bfc004b0:	ac890000 	sw	t1,0(a0)
/home/chooaa/cs_lab/cache_func/start.S:148
bfc004b4:	aca90000 	sw	t1,0(a1)
/home/chooaa/cs_lab/cache_func/start.S:151
bfc004b8:	3c08bfc0 	lui	t0,0xbfc0
bfc004bc:	25080100 	addiu	t0,t0,256
/home/chooaa/cs_lab/cache_func/start.S:152
bfc004c0:	3c092000 	lui	t1,0x2000
/home/chooaa/cs_lab/cache_func/start.S:153
bfc004c4:	01284025 	or	t0,t1,t0
/home/chooaa/cs_lab/cache_func/start.S:154
bfc004c8:	01000008 	jr	t0
/home/chooaa/cs_lab/cache_func/start.S:155
bfc004cc:	00000000 	nop

bfc004d0 <wait_1s>:
/home/chooaa/cs_lab/cache_func/start.S:158
bfc004d0:	3c08bfb0 	lui	t0,0xbfb0
bfc004d4:	2508f02c 	addiu	t0,t0,-4052
/home/chooaa/cs_lab/cache_func/start.S:159
bfc004d8:	3c090001 	lui	t1,0x1
bfc004dc:	2529aaaa 	addiu	t1,t1,-21846
/home/chooaa/cs_lab/cache_func/start.S:162
bfc004e0:	8d0a0000 	lw	t2,0(t0)
/home/chooaa/cs_lab/cache_func/start.S:164
bfc004e4:	01495026 	xor	t2,t2,t1
/home/chooaa/cs_lab/cache_func/start.S:166
bfc004e8:	000a5a40 	sll	t3,t2,0x9
/home/chooaa/cs_lab/cache_func/start.S:168
bfc004ec:	256b0001 	addiu	t3,t3,1

bfc004f0 <sub1>:
/home/chooaa/cs_lab/cache_func/start.S:172
bfc004f0:	256bffff 	addiu	t3,t3,-1
/home/chooaa/cs_lab/cache_func/start.S:175
bfc004f4:	8d0a0000 	lw	t2,0(t0)
/home/chooaa/cs_lab/cache_func/start.S:177
bfc004f8:	01495026 	xor	t2,t2,t1
/home/chooaa/cs_lab/cache_func/start.S:179
bfc004fc:	000a5240 	sll	t2,t2,0x9
/home/chooaa/cs_lab/cache_func/start.S:181
bfc00500:	016a602b 	sltu	t4,t3,t2
/home/chooaa/cs_lab/cache_func/start.S:183
bfc00504:	15800002 	bnez	t4,bfc00510 <sub1+0x20>
/home/chooaa/cs_lab/cache_func/start.S:184
bfc00508:	00000000 	nop
/home/chooaa/cs_lab/cache_func/start.S:185
bfc0050c:	254b0000 	addiu	t3,t2,0
/home/chooaa/cs_lab/cache_func/start.S:188
bfc00510:	1560fff7 	bnez	t3,bfc004f0 <sub1>
/home/chooaa/cs_lab/cache_func/start.S:189
bfc00514:	00000000 	nop
/home/chooaa/cs_lab/cache_func/start.S:190
bfc00518:	03e00008 	jr	ra
/home/chooaa/cs_lab/cache_func/start.S:191
bfc0051c:	00000000 	nop

bfc00520 <n1_ic_idx_inv_test>:
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:7
bfc00520:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:8
bfc00524:	24120000 	li	s2,0
	...

bfc00540 <code_block>:
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:15
bfc00540:	1000000b 	b	bfc00570 <change_code>
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:16
bfc00544:	00000000 	nop
	...

bfc00550 <code_to_be_changed>:
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:20
bfc00550:	0bf00172 	j	bfc005c8 <inst_error>
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:21
bfc00554:	00000000 	nop
	...

bfc00560 <new_code>:
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:28
bfc00560:	0bf0016f 	j	bfc005bc <inst_pass>
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:29
bfc00564:	00000000 	nop
	...

bfc00570 <change_code>:
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:35
bfc00570:	3c08bfc0 	lui	t0,0xbfc0
bfc00574:	25080550 	addiu	t0,t0,1360
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:37
bfc00578:	3c092000 	lui	t1,0x2000
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:38
bfc0057c:	01284025 	or	t0,t1,t0
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:40
bfc00580:	3c09bfc0 	lui	t1,0xbfc0
bfc00584:	25290560 	addiu	t1,t1,1376
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:41
bfc00588:	8d2a0000 	lw	t2,0(t1)
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:42
bfc0058c:	ad0a0000 	sw	t2,0(t0)
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:46
bfc00590:	3c08bfc0 	lui	t0,0xbfc0
bfc00594:	25080550 	addiu	t0,t0,1360
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:48
bfc00598:	24090ff0 	li	t1,4080
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:49
bfc0059c:	01284024 	and	t0,t1,t0
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:51
bfc005a0:	3c098000 	lui	t1,0x8000
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:52
bfc005a4:	01094025 	or	t0,t0,t1
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:55
bfc005a8:	bd000000 	0xbd000000
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:58
bfc005ac:	35081000 	ori	t0,t0,0x1000
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:60
bfc005b0:	bd000000 	0xbd000000
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:64
bfc005b4:	1000ffe6 	b	bfc00550 <code_to_be_changed>
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:65
bfc005b8:	00000000 	nop

bfc005bc <inst_pass>:
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:69
bfc005bc:	16400002 	bnez	s2,bfc005c8 <inst_error>
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:70
bfc005c0:	00000000 	nop
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:72
bfc005c4:	26730001 	addiu	s3,s3,1

bfc005c8 <inst_error>:
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:75
bfc005c8:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:76
bfc005cc:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:77
bfc005d0:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:78
bfc005d4:	03e00008 	jr	ra
/home/chooaa/cs_lab/cache_func/inst/n1_ic_idx_inv.S:79
bfc005d8:	00000000 	nop
inst_error():
bfc005dc:	00000000 	nop

bfc005e0 <n5_dc_idx_sttag_test>:
/home/chooaa/cs_lab/cache_func/inst/n5_dc_idx_sttag.S:7
bfc005e0:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cache_func/inst/n5_dc_idx_sttag.S:8
bfc005e4:	24120000 	li	s2,0
/home/chooaa/cs_lab/cache_func/inst/n5_dc_idx_sttag.S:13
bfc005e8:	3c08a00d 	lui	t0,0xa00d
bfc005ec:	35080020 	ori	t0,t0,0x20
/home/chooaa/cs_lab/cache_func/inst/n5_dc_idx_sttag.S:14
bfc005f0:	3c09bad0 	lui	t1,0xbad0
bfc005f4:	3529beef 	ori	t1,t1,0xbeef
/home/chooaa/cs_lab/cache_func/inst/n5_dc_idx_sttag.S:15
bfc005f8:	ad090000 	sw	t1,0(t0)
/home/chooaa/cs_lab/cache_func/inst/n5_dc_idx_sttag.S:17
bfc005fc:	3c08800d 	lui	t0,0x800d
bfc00600:	35080020 	ori	t0,t0,0x20
/home/chooaa/cs_lab/cache_func/inst/n5_dc_idx_sttag.S:18
bfc00604:	3c0ac0ff 	lui	t2,0xc0ff
bfc00608:	354aee00 	ori	t2,t2,0xee00
/home/chooaa/cs_lab/cache_func/inst/n5_dc_idx_sttag.S:19
bfc0060c:	ad0a0000 	sw	t2,0(t0)
/home/chooaa/cs_lab/cache_func/inst/n5_dc_idx_sttag.S:21
bfc00610:	3c098000 	lui	t1,0x8000
bfc00614:	35290fe0 	ori	t1,t1,0xfe0
/home/chooaa/cs_lab/cache_func/inst/n5_dc_idx_sttag.S:22
bfc00618:	01094024 	and	t0,t0,t1
/home/chooaa/cs_lab/cache_func/inst/n5_dc_idx_sttag.S:24
bfc0061c:	bd090000 	0xbd090000
/home/chooaa/cs_lab/cache_func/inst/n5_dc_idx_sttag.S:26
bfc00620:	00000000 	nop
/home/chooaa/cs_lab/cache_func/inst/n5_dc_idx_sttag.S:28
bfc00624:	35081000 	ori	t0,t0,0x1000
/home/chooaa/cs_lab/cache_func/inst/n5_dc_idx_sttag.S:30
bfc00628:	bd090000 	0xbd090000
/home/chooaa/cs_lab/cache_func/inst/n5_dc_idx_sttag.S:32
bfc0062c:	00000000 	nop
/home/chooaa/cs_lab/cache_func/inst/n5_dc_idx_sttag.S:34
bfc00630:	3c08800d 	lui	t0,0x800d
bfc00634:	35080020 	ori	t0,t0,0x20
/home/chooaa/cs_lab/cache_func/inst/n5_dc_idx_sttag.S:35
bfc00638:	8d080000 	lw	t0,0(t0)
/home/chooaa/cs_lab/cache_func/inst/n5_dc_idx_sttag.S:36
bfc0063c:	3c09bad0 	lui	t1,0xbad0
bfc00640:	3529beef 	ori	t1,t1,0xbeef
/home/chooaa/cs_lab/cache_func/inst/n5_dc_idx_sttag.S:37
bfc00644:	15090004 	bne	t0,t1,bfc00658 <inst_error>
/home/chooaa/cs_lab/cache_func/inst/n5_dc_idx_sttag.S:38
bfc00648:	00000000 	nop
/home/chooaa/cs_lab/cache_func/inst/n5_dc_idx_sttag.S:40
bfc0064c:	16400002 	bnez	s2,bfc00658 <inst_error>
/home/chooaa/cs_lab/cache_func/inst/n5_dc_idx_sttag.S:41
bfc00650:	00000000 	nop
/home/chooaa/cs_lab/cache_func/inst/n5_dc_idx_sttag.S:43
bfc00654:	26730001 	addiu	s3,s3,1

bfc00658 <inst_error>:
/home/chooaa/cs_lab/cache_func/inst/n5_dc_idx_sttag.S:46
bfc00658:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cache_func/inst/n5_dc_idx_sttag.S:47
bfc0065c:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cache_func/inst/n5_dc_idx_sttag.S:48
bfc00660:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cache_func/inst/n5_dc_idx_sttag.S:49
bfc00664:	03e00008 	jr	ra
/home/chooaa/cs_lab/cache_func/inst/n5_dc_idx_sttag.S:50
bfc00668:	00000000 	nop
bfc0066c:	00000000 	nop

bfc00670 <n6_dc_hit_inv_test>:
/home/chooaa/cs_lab/cache_func/inst/n6_dc_hit_inv.S:7
bfc00670:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cache_func/inst/n6_dc_hit_inv.S:8
bfc00674:	24120000 	li	s2,0
/home/chooaa/cs_lab/cache_func/inst/n6_dc_hit_inv.S:13
bfc00678:	3c08a00d 	lui	t0,0xa00d
bfc0067c:	35080020 	ori	t0,t0,0x20
/home/chooaa/cs_lab/cache_func/inst/n6_dc_hit_inv.S:14
bfc00680:	3c09bad0 	lui	t1,0xbad0
bfc00684:	3529beef 	ori	t1,t1,0xbeef
/home/chooaa/cs_lab/cache_func/inst/n6_dc_hit_inv.S:15
bfc00688:	ad090000 	sw	t1,0(t0)
/home/chooaa/cs_lab/cache_func/inst/n6_dc_hit_inv.S:17
bfc0068c:	3c08800d 	lui	t0,0x800d
bfc00690:	35080020 	ori	t0,t0,0x20
/home/chooaa/cs_lab/cache_func/inst/n6_dc_hit_inv.S:18
bfc00694:	3c0ac0ff 	lui	t2,0xc0ff
bfc00698:	354aee00 	ori	t2,t2,0xee00
/home/chooaa/cs_lab/cache_func/inst/n6_dc_hit_inv.S:19
bfc0069c:	ad0a0000 	sw	t2,0(t0)
/home/chooaa/cs_lab/cache_func/inst/n6_dc_hit_inv.S:22
bfc006a0:	bd110000 	0xbd110000
/home/chooaa/cs_lab/cache_func/inst/n6_dc_hit_inv.S:25
bfc006a4:	3c08800d 	lui	t0,0x800d
bfc006a8:	35080020 	ori	t0,t0,0x20
/home/chooaa/cs_lab/cache_func/inst/n6_dc_hit_inv.S:26
bfc006ac:	8d080000 	lw	t0,0(t0)
/home/chooaa/cs_lab/cache_func/inst/n6_dc_hit_inv.S:27
bfc006b0:	3c09bad0 	lui	t1,0xbad0
bfc006b4:	3529beef 	ori	t1,t1,0xbeef
/home/chooaa/cs_lab/cache_func/inst/n6_dc_hit_inv.S:28
bfc006b8:	15090004 	bne	t0,t1,bfc006cc <inst_error>
/home/chooaa/cs_lab/cache_func/inst/n6_dc_hit_inv.S:29
bfc006bc:	00000000 	nop
/home/chooaa/cs_lab/cache_func/inst/n6_dc_hit_inv.S:31
bfc006c0:	16400002 	bnez	s2,bfc006cc <inst_error>
/home/chooaa/cs_lab/cache_func/inst/n6_dc_hit_inv.S:32
bfc006c4:	00000000 	nop
/home/chooaa/cs_lab/cache_func/inst/n6_dc_hit_inv.S:34
bfc006c8:	26730001 	addiu	s3,s3,1

bfc006cc <inst_error>:
/home/chooaa/cs_lab/cache_func/inst/n6_dc_hit_inv.S:37
bfc006cc:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cache_func/inst/n6_dc_hit_inv.S:38
bfc006d0:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cache_func/inst/n6_dc_hit_inv.S:39
bfc006d4:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cache_func/inst/n6_dc_hit_inv.S:40
bfc006d8:	03e00008 	jr	ra
/home/chooaa/cs_lab/cache_func/inst/n6_dc_hit_inv.S:41
bfc006dc:	00000000 	nop

bfc006e0 <n7_dc_hit_wbinv_test>:
/home/chooaa/cs_lab/cache_func/inst/n7_dc_hit_wbinv.S:7
bfc006e0:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cache_func/inst/n7_dc_hit_wbinv.S:8
bfc006e4:	24120000 	li	s2,0
/home/chooaa/cs_lab/cache_func/inst/n7_dc_hit_wbinv.S:13
bfc006e8:	3c08a00d 	lui	t0,0xa00d
bfc006ec:	35080020 	ori	t0,t0,0x20
/home/chooaa/cs_lab/cache_func/inst/n7_dc_hit_wbinv.S:14
bfc006f0:	3c09bad0 	lui	t1,0xbad0
bfc006f4:	3529beef 	ori	t1,t1,0xbeef
/home/chooaa/cs_lab/cache_func/inst/n7_dc_hit_wbinv.S:15
bfc006f8:	ad090000 	sw	t1,0(t0)
/home/chooaa/cs_lab/cache_func/inst/n7_dc_hit_wbinv.S:17
bfc006fc:	3c08800d 	lui	t0,0x800d
bfc00700:	35080020 	ori	t0,t0,0x20
/home/chooaa/cs_lab/cache_func/inst/n7_dc_hit_wbinv.S:18
bfc00704:	3c0ac0ff 	lui	t2,0xc0ff
bfc00708:	354aee00 	ori	t2,t2,0xee00
/home/chooaa/cs_lab/cache_func/inst/n7_dc_hit_wbinv.S:19
bfc0070c:	ad0a0000 	sw	t2,0(t0)
/home/chooaa/cs_lab/cache_func/inst/n7_dc_hit_wbinv.S:22
bfc00710:	bd150000 	0xbd150000
/home/chooaa/cs_lab/cache_func/inst/n7_dc_hit_wbinv.S:25
bfc00714:	3c08a00d 	lui	t0,0xa00d
bfc00718:	35080020 	ori	t0,t0,0x20
/home/chooaa/cs_lab/cache_func/inst/n7_dc_hit_wbinv.S:26
bfc0071c:	8d080000 	lw	t0,0(t0)
/home/chooaa/cs_lab/cache_func/inst/n7_dc_hit_wbinv.S:27
bfc00720:	150a0004 	bne	t0,t2,bfc00734 <inst_error>
/home/chooaa/cs_lab/cache_func/inst/n7_dc_hit_wbinv.S:28
bfc00724:	00000000 	nop
/home/chooaa/cs_lab/cache_func/inst/n7_dc_hit_wbinv.S:30
bfc00728:	16400002 	bnez	s2,bfc00734 <inst_error>
/home/chooaa/cs_lab/cache_func/inst/n7_dc_hit_wbinv.S:31
bfc0072c:	00000000 	nop
/home/chooaa/cs_lab/cache_func/inst/n7_dc_hit_wbinv.S:33
bfc00730:	26730001 	addiu	s3,s3,1

bfc00734 <inst_error>:
/home/chooaa/cs_lab/cache_func/inst/n7_dc_hit_wbinv.S:36
bfc00734:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cache_func/inst/n7_dc_hit_wbinv.S:37
bfc00738:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cache_func/inst/n7_dc_hit_wbinv.S:38
bfc0073c:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cache_func/inst/n7_dc_hit_wbinv.S:39
bfc00740:	03e00008 	jr	ra
/home/chooaa/cs_lab/cache_func/inst/n7_dc_hit_wbinv.S:40
bfc00744:	00000000 	nop
	...

bfc00760 <n2_ic_idx_sttag_test>:
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:7
bfc00760:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:8
bfc00764:	24120000 	li	s2,0
	...

bfc00780 <code_block>:
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:15
bfc00780:	1000000b 	b	bfc007b0 <change_code>
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:16
bfc00784:	00000000 	nop
	...

bfc00790 <code_to_be_changed>:
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:20
bfc00790:	0bf00207 	j	bfc0081c <inst_error>
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:21
bfc00794:	00000000 	nop
	...

bfc007a0 <new_code>:
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:28
bfc007a0:	0bf00204 	j	bfc00810 <inst_pass>
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:29
bfc007a4:	00000000 	nop
	...

bfc007b0 <change_code>:
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:35
bfc007b0:	3c08bfc0 	lui	t0,0xbfc0
bfc007b4:	25080790 	addiu	t0,t0,1936
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:37
bfc007b8:	3c092000 	lui	t1,0x2000
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:38
bfc007bc:	01284025 	or	t0,t1,t0
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:40
bfc007c0:	3c09bfc0 	lui	t1,0xbfc0
bfc007c4:	252907a0 	addiu	t1,t1,1952
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:41
bfc007c8:	8d2a0000 	lw	t2,0(t1)
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:42
bfc007cc:	ad0a0000 	sw	t2,0(t0)
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:46
bfc007d0:	3c08bfc0 	lui	t0,0xbfc0
bfc007d4:	25080790 	addiu	t0,t0,1936
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:48
bfc007d8:	24090ff0 	li	t1,4080
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:49
bfc007dc:	01284024 	and	t0,t1,t0
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:51
bfc007e0:	3c098000 	lui	t1,0x8000
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:52
bfc007e4:	01094025 	or	t0,t0,t1
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:55
bfc007e8:	bd080000 	0xbd080000
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:58
bfc007ec:	35081000 	ori	t0,t0,0x1000
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:60
bfc007f0:	bd080000 	0xbd080000
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:64
bfc007f4:	3c08bfc0 	lui	t0,0xbfc0
bfc007f8:	25080790 	addiu	t0,t0,1936
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:65
bfc007fc:	3c09dfff 	lui	t1,0xdfff
bfc00800:	3529ffff 	ori	t1,t1,0xffff
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:66
bfc00804:	01284024 	and	t0,t1,t0
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:67
bfc00808:	01000008 	jr	t0
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:68
bfc0080c:	00000000 	nop

bfc00810 <inst_pass>:
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:72
bfc00810:	16400002 	bnez	s2,bfc0081c <inst_error>
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:73
bfc00814:	00000000 	nop
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:75
bfc00818:	26730001 	addiu	s3,s3,1

bfc0081c <inst_error>:
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:78
bfc0081c:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:79
bfc00820:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:80
bfc00824:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:81
bfc00828:	03e00008 	jr	ra
/home/chooaa/cs_lab/cache_func/inst/n2_ic_idx_sttag.S:82
bfc0082c:	00000000 	nop
	...

bfc00840 <n4_dc_idx_wbinv_test>:
/home/chooaa/cs_lab/cache_func/inst/n4_dc_idx_wbinv.S:7
bfc00840:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cache_func/inst/n4_dc_idx_wbinv.S:8
bfc00844:	24120000 	li	s2,0
/home/chooaa/cs_lab/cache_func/inst/n4_dc_idx_wbinv.S:13
bfc00848:	3c08a00d 	lui	t0,0xa00d
bfc0084c:	35080020 	ori	t0,t0,0x20
/home/chooaa/cs_lab/cache_func/inst/n4_dc_idx_wbinv.S:14
bfc00850:	3c09bad0 	lui	t1,0xbad0
bfc00854:	3529beef 	ori	t1,t1,0xbeef
/home/chooaa/cs_lab/cache_func/inst/n4_dc_idx_wbinv.S:15
bfc00858:	ad090000 	sw	t1,0(t0)
/home/chooaa/cs_lab/cache_func/inst/n4_dc_idx_wbinv.S:17
bfc0085c:	3c08800d 	lui	t0,0x800d
bfc00860:	35080020 	ori	t0,t0,0x20
/home/chooaa/cs_lab/cache_func/inst/n4_dc_idx_wbinv.S:18
bfc00864:	3c0ac0ff 	lui	t2,0xc0ff
bfc00868:	354aee00 	ori	t2,t2,0xee00
/home/chooaa/cs_lab/cache_func/inst/n4_dc_idx_wbinv.S:19
bfc0086c:	ad0a0000 	sw	t2,0(t0)
/home/chooaa/cs_lab/cache_func/inst/n4_dc_idx_wbinv.S:21
bfc00870:	3c098000 	lui	t1,0x8000
bfc00874:	35290fe0 	ori	t1,t1,0xfe0
/home/chooaa/cs_lab/cache_func/inst/n4_dc_idx_wbinv.S:22
bfc00878:	01094024 	and	t0,t0,t1
/home/chooaa/cs_lab/cache_func/inst/n4_dc_idx_wbinv.S:24
bfc0087c:	bd010000 	0xbd010000
/home/chooaa/cs_lab/cache_func/inst/n4_dc_idx_wbinv.S:26
bfc00880:	00000000 	nop
/home/chooaa/cs_lab/cache_func/inst/n4_dc_idx_wbinv.S:28
bfc00884:	35081000 	ori	t0,t0,0x1000
/home/chooaa/cs_lab/cache_func/inst/n4_dc_idx_wbinv.S:30
bfc00888:	bd010000 	0xbd010000
/home/chooaa/cs_lab/cache_func/inst/n4_dc_idx_wbinv.S:32
bfc0088c:	00000000 	nop
/home/chooaa/cs_lab/cache_func/inst/n4_dc_idx_wbinv.S:34
bfc00890:	3c08a00d 	lui	t0,0xa00d
bfc00894:	35080020 	ori	t0,t0,0x20
/home/chooaa/cs_lab/cache_func/inst/n4_dc_idx_wbinv.S:35
bfc00898:	8d080000 	lw	t0,0(t0)
/home/chooaa/cs_lab/cache_func/inst/n4_dc_idx_wbinv.S:36
bfc0089c:	150a0004 	bne	t0,t2,bfc008b0 <inst_error>
/home/chooaa/cs_lab/cache_func/inst/n4_dc_idx_wbinv.S:37
bfc008a0:	00000000 	nop
/home/chooaa/cs_lab/cache_func/inst/n4_dc_idx_wbinv.S:39
bfc008a4:	16400002 	bnez	s2,bfc008b0 <inst_error>
/home/chooaa/cs_lab/cache_func/inst/n4_dc_idx_wbinv.S:40
bfc008a8:	00000000 	nop
/home/chooaa/cs_lab/cache_func/inst/n4_dc_idx_wbinv.S:42
bfc008ac:	26730001 	addiu	s3,s3,1

bfc008b0 <inst_error>:
/home/chooaa/cs_lab/cache_func/inst/n4_dc_idx_wbinv.S:45
bfc008b0:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cache_func/inst/n4_dc_idx_wbinv.S:46
bfc008b4:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cache_func/inst/n4_dc_idx_wbinv.S:47
bfc008b8:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cache_func/inst/n4_dc_idx_wbinv.S:48
bfc008bc:	03e00008 	jr	ra
/home/chooaa/cs_lab/cache_func/inst/n4_dc_idx_wbinv.S:49
bfc008c0:	00000000 	nop
	...

bfc008e0 <n3_ic_hit_inv_test>:
/home/chooaa/cs_lab/cache_func/inst/n3_ic_hit_inv.S:7
bfc008e0:	26100001 	addiu	s0,s0,1
/home/chooaa/cs_lab/cache_func/inst/n3_ic_hit_inv.S:8
bfc008e4:	24120000 	li	s2,0
	...

bfc00900 <code_block>:
/home/chooaa/cs_lab/cache_func/inst/n3_ic_hit_inv.S:15
bfc00900:	1000000b 	b	bfc00930 <change_code>
/home/chooaa/cs_lab/cache_func/inst/n3_ic_hit_inv.S:16
bfc00904:	00000000 	nop
	...

bfc00910 <code_to_be_changed>:
/home/chooaa/cs_lab/cache_func/inst/n3_ic_hit_inv.S:20
bfc00910:	0bf0025f 	j	bfc0097c <inst_error>
/home/chooaa/cs_lab/cache_func/inst/n3_ic_hit_inv.S:21
bfc00914:	00000000 	nop
	...

bfc00920 <new_code>:
/home/chooaa/cs_lab/cache_func/inst/n3_ic_hit_inv.S:28
bfc00920:	0bf0025c 	j	bfc00970 <inst_pass>
/home/chooaa/cs_lab/cache_func/inst/n3_ic_hit_inv.S:29
bfc00924:	00000000 	nop
	...

bfc00930 <change_code>:
/home/chooaa/cs_lab/cache_func/inst/n3_ic_hit_inv.S:35
bfc00930:	3c08bfc0 	lui	t0,0xbfc0
bfc00934:	25080910 	addiu	t0,t0,2320
/home/chooaa/cs_lab/cache_func/inst/n3_ic_hit_inv.S:37
bfc00938:	3c092000 	lui	t1,0x2000
/home/chooaa/cs_lab/cache_func/inst/n3_ic_hit_inv.S:38
bfc0093c:	01284025 	or	t0,t1,t0
/home/chooaa/cs_lab/cache_func/inst/n3_ic_hit_inv.S:40
bfc00940:	3c09bfc0 	lui	t1,0xbfc0
bfc00944:	25290920 	addiu	t1,t1,2336
/home/chooaa/cs_lab/cache_func/inst/n3_ic_hit_inv.S:41
bfc00948:	8d2a0000 	lw	t2,0(t1)
/home/chooaa/cs_lab/cache_func/inst/n3_ic_hit_inv.S:42
bfc0094c:	ad0a0000 	sw	t2,0(t0)
/home/chooaa/cs_lab/cache_func/inst/n3_ic_hit_inv.S:46
bfc00950:	3c08bfc0 	lui	t0,0xbfc0
bfc00954:	25080910 	addiu	t0,t0,2320
/home/chooaa/cs_lab/cache_func/inst/n3_ic_hit_inv.S:48
bfc00958:	3c09dfff 	lui	t1,0xdfff
bfc0095c:	3529ffff 	ori	t1,t1,0xffff
/home/chooaa/cs_lab/cache_func/inst/n3_ic_hit_inv.S:49
bfc00960:	01094024 	and	t0,t0,t1
/home/chooaa/cs_lab/cache_func/inst/n3_ic_hit_inv.S:52
bfc00964:	bd100000 	0xbd100000
/home/chooaa/cs_lab/cache_func/inst/n3_ic_hit_inv.S:56
bfc00968:	1000ffe9 	b	bfc00910 <code_to_be_changed>
/home/chooaa/cs_lab/cache_func/inst/n3_ic_hit_inv.S:57
bfc0096c:	00000000 	nop

bfc00970 <inst_pass>:
/home/chooaa/cs_lab/cache_func/inst/n3_ic_hit_inv.S:61
bfc00970:	16400002 	bnez	s2,bfc0097c <inst_error>
/home/chooaa/cs_lab/cache_func/inst/n3_ic_hit_inv.S:62
bfc00974:	00000000 	nop
/home/chooaa/cs_lab/cache_func/inst/n3_ic_hit_inv.S:64
bfc00978:	26730001 	addiu	s3,s3,1

bfc0097c <inst_error>:
/home/chooaa/cs_lab/cache_func/inst/n3_ic_hit_inv.S:67
bfc0097c:	00104e00 	sll	t1,s0,0x18
/home/chooaa/cs_lab/cache_func/inst/n3_ic_hit_inv.S:68
bfc00980:	01334025 	or	t0,t1,s3
/home/chooaa/cs_lab/cache_func/inst/n3_ic_hit_inv.S:69
bfc00984:	ae280000 	sw	t0,0(s1)
/home/chooaa/cs_lab/cache_func/inst/n3_ic_hit_inv.S:70
bfc00988:	03e00008 	jr	ra
/home/chooaa/cs_lab/cache_func/inst/n3_ic_hit_inv.S:71
bfc0098c:	00000000 	nop
	...
bfc009a0:	980b7f70 	lwr	t3,32624(zero)
	...

Disassembly of section .data:

80000000 <__CTOR_LIST__>:
	...

80000008 <__CTOR_END__>:
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	0x1c
   4:	00000002 	srl	zero,zero,0x0
   8:	00040000 	sll	zero,a0,0x0
   c:	00000000 	nop
  10:	bfc00000 	0xbfc00000
  14:	00000520 	0x520
	...
  20:	0000001c 	0x1c
  24:	00500002 	0x500002
  28:	00040000 	sll	zero,a0,0x0
  2c:	00000000 	nop
  30:	bfc00520 	0xbfc00520
  34:	000000bc 	0xbc
	...
  40:	0000001c 	0x1c
  44:	00ad0002 	0xad0002
  48:	00040000 	sll	zero,a0,0x0
  4c:	00000000 	nop
  50:	bfc005e0 	0xbfc005e0
  54:	0000008c 	syscall	0x2
	...
  60:	0000001c 	0x1c
  64:	010c0002 	0x10c0002
  68:	00040000 	sll	zero,a0,0x0
  6c:	00000000 	nop
  70:	bfc00670 	0xbfc00670
  74:	00000070 	0x70
	...
  80:	0000001c 	0x1c
  84:	01690002 	0x1690002
  88:	00040000 	sll	zero,a0,0x0
  8c:	00000000 	nop
  90:	bfc006e0 	0xbfc006e0
  94:	00000068 	0x68
	...
  a0:	0000001c 	0x1c
  a4:	01c80002 	0x1c80002
  a8:	00040000 	sll	zero,a0,0x0
  ac:	00000000 	nop
  b0:	bfc00760 	0xbfc00760
  b4:	000000d0 	0xd0
	...
  c0:	0000001c 	0x1c
  c4:	02270002 	0x2270002
  c8:	00040000 	sll	zero,a0,0x0
  cc:	00000000 	nop
  d0:	bfc00840 	0xbfc00840
  d4:	00000084 	0x84
	...
  e0:	0000001c 	0x1c
  e4:	02860002 	0x2860002
  e8:	00040000 	sll	zero,a0,0x0
  ec:	00000000 	nop
  f0:	bfc008e0 	0xbfc008e0
  f4:	000000b0 	0xb0
	...

Disassembly of section .pdr:

00000000 <.pdr>:
   0:	bfc00520 	0xbfc00520
	...
  18:	0000001d 	0x1d
  1c:	0000001f 	0x1f
  20:	bfc005e0 	0xbfc005e0
	...
  38:	0000001d 	0x1d
  3c:	0000001f 	0x1f
  40:	bfc00670 	0xbfc00670
	...
  58:	0000001d 	0x1d
  5c:	0000001f 	0x1f
  60:	bfc006e0 	0xbfc006e0
	...
  78:	0000001d 	0x1d
  7c:	0000001f 	0x1f
  80:	bfc00760 	0xbfc00760
	...
  98:	0000001d 	0x1d
  9c:	0000001f 	0x1f
  a0:	bfc00840 	0xbfc00840
	...
  b8:	0000001d 	0x1d
  bc:	0000001f 	0x1f
  c0:	bfc008e0 	0xbfc008e0
	...
  d8:	0000001d 	0x1d
  dc:	0000001f 	0x1f

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	000000b2 	0xb2
   4:	001e0002 	srl	zero,s8,0x0
   8:	01010000 	0x1010000
   c:	000d0efb 	0xd0efb
  10:	01010101 	0x1010101
  14:	01000000 	0x1000000
  18:	00010000 	sll	zero,at,0x0
  1c:	72617473 	0x72617473
  20:	00532e74 	0x532e74
  24:	00000000 	nop
  28:	00020500 	sll	zero,v0,0x14
  2c:	03bfc000 	0x3bfc000
  30:	e8080111 	swc2	$8,273(zero)
  34:	4d4b4b4b 	0x4d4b4b4b
  38:	834b8383 	lb	t3,-31869(k0)
  3c:	4b4b4b4d 	c2	0x14b4b4d
  40:	84024b4b 	lh	v0,19275(zero)
  44:	4b4b1601 	c2	0x14b1601
  48:	4d4b4b4b 	0x4d4b4b4b
  4c:	4b4c4b4b 	c2	0x14c4b4b
  50:	024b4b4b 	0x24b4b4b
  54:	831901e4 	lb	t9,484(t8)
  58:	1602f802 	bne	s0,v0,ffffe064 <_etext+0x403fd6ac>
  5c:	4b4b4b4b 	c2	0x14b4b4b
  60:	83838350 	lb	v1,-31920(gp)
  64:	83838384 	lb	v1,-31868(gp)
  68:	4b4b4b4c 	c2	0x14b4b4c
  6c:	4b4b4c4b 	c2	0x14b4c4b
  70:	4b4b4b4b 	c2	0x14b4b4b
  74:	4b4b4b4b 	c2	0x14b4b4b
  78:	4b4b4b4b 	c2	0x14b4b4b
  7c:	4b4b4b4b 	c2	0x14b4b4b
  80:	4b4b4b4b 	c2	0x14b4b4b
  84:	4b4b4b4b 	c2	0x14b4b4b
  88:	4b834d4b 	c2	0x1834d4b
  8c:	8483834c 	lh	v1,-31924(a0)
  90:	4b4b4b84 	c2	0x14b4b84
  94:	83834c4b 	lb	v1,19531(gp)
  98:	834d4b83 	lb	t5,19331(k0)
  9c:	4d4b4b4b 	0x4d4b4b4b
  a0:	4c4c8583 	0x4c4c8583
  a4:	4c4d4e4c 	0x4c4d4e4c
  a8:	4b4c4c4c 	c2	0x14c4c4c
  ac:	4b4b4d4b 	c2	0x14b4d4b
  b0:	0004024b 	0x4024b
  b4:	005f0101 	0x5f0101
  b8:	00020000 	sll	zero,v0,0x0
  bc:	00000026 	xor	zero,zero,zero
  c0:	0efb0101 	jal	bec0404 <data_size+0xbec03f4>
  c4:	0101000d 	break	0x101
  c8:	00000101 	0x101
  cc:	00000100 	sll	zero,zero,0x4
  d0:	316e0001 	andi	t6,t3,0x1
  d4:	5f63695f 	0x5f63695f
  d8:	5f786469 	0x5f786469
  dc:	2e766e69 	sltiu	s6,s3,28265
  e0:	00000053 	0x53
  e4:	05000000 	bltz	t0,e8 <data_size+0xd8>
  e8:	c0052002 	lwc0	$5,8194(zero)
  ec:	084b18bf 	j	12c62fc <data_size+0x12c62ec>
  f0:	4b4b4bb3 	c2	0x14b4bb3
  f4:	4b4b4b4c 	c2	0x14b4b4c
  f8:	4b4b4b4f 	c2	0x14b4b4f
  fc:	4c4b844e 	0x4c4b844e
 100:	844e4b83 	lh	t6,19331(v0)
 104:	4d4b4c4b 	0x4d4b4c4b
 108:	4b4e4c4d 	c2	0x14e4c4d
 10c:	4d4c4b4e 	0x4d4c4b4e
 110:	4b4b4b4b 	c2	0x14b4b4b
 114:	01000402 	0x1000402
 118:	00005601 	0x5601
 11c:	28000200 	slti	zero,zero,512
 120:	01000000 	0x1000000
 124:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
 128:	01010100 	0x1010100
 12c:	00000001 	0x1
 130:	01000001 	0x1000001
 134:	5f356e00 	0x5f356e00
 138:	695f6364 	0x695f6364
 13c:	735f7864 	0x735f7864
 140:	67617474 	0x67617474
 144:	0000532e 	0x532e
 148:	00000000 	nop
 14c:	05e00205 	bltz	t7,964 <data_size+0x954>
 150:	4b18bfc0 	c2	0x118bfc0
 154:	4c83834f 	0x4c83834f
 158:	834c8383 	lb	t4,-31869(k0)
 15c:	4c4c4c4c 	0x4c4c4c4c
 160:	4b834c4c 	c2	0x1834c4c
 164:	4b4c4b83 	c2	0x14c4b83
 168:	4b4b4d4c 	c2	0x14b4d4c
 16c:	04024b4b 	0x4024b4b
 170:	4e010100 	c3	0x10100
 174:	02000000 	0x2000000
 178:	00002600 	sll	a0,zero,0x18
 17c:	fb010100 	0xfb010100
 180:	01000d0e 	0x1000d0e
 184:	00010101 	0x10101
 188:	00010000 	sll	zero,at,0x0
 18c:	6e000100 	0x6e000100
 190:	63645f36 	0x63645f36
 194:	7469685f 	jalx	1a5a17c <data_size+0x1a5a16c>
 198:	766e695f 	jalx	9b9a57c <data_size+0x9b9a56c>
 19c:	0000532e 	0x532e
 1a0:	00000000 	nop
 1a4:	06700205 	bltzal	s3,9bc <data_size+0x9ac>
 1a8:	4b18bfc0 	c2	0x118bfc0
 1ac:	4c83834f 	0x4c83834f
 1b0:	4d4d8383 	0x4d4d8383
 1b4:	4b834b83 	c2	0x1834b83
 1b8:	4d4c4b4c 	0x4d4c4b4c
 1bc:	4b4b4b4b 	c2	0x14b4b4b
 1c0:	01000402 	0x1000402
 1c4:	00004f01 	0x4f01
 1c8:	28000200 	slti	zero,zero,512
 1cc:	01000000 	0x1000000
 1d0:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
 1d4:	01010100 	0x1010100
 1d8:	00000001 	0x1
 1dc:	01000001 	0x1000001
 1e0:	5f376e00 	0x5f376e00
 1e4:	685f6364 	0x685f6364
 1e8:	775f7469 	jalx	d7dd1a4 <data_size+0xd7dd194>
 1ec:	766e6962 	jalx	9b9a588 <data_size+0x9b9a578>
 1f0:	0000532e 	0x532e
 1f4:	00000000 	nop
 1f8:	06e00205 	bltz	s7,a10 <data_size+0xa00>
 1fc:	4b18bfc0 	c2	0x118bfc0
 200:	4c83834f 	0x4c83834f
 204:	4d4d8383 	0x4d4d8383
 208:	4c4b4b83 	0x4c4b4b83
 20c:	4b4d4c4b 	c2	0x14d4c4b
 210:	024b4b4b 	0x24b4b4b
 214:	01010004 	sllv	zero,at,t0
 218:	00000064 	0x64
 21c:	00280002 	0x280002
 220:	01010000 	0x1010000
 224:	000d0efb 	0xd0efb
 228:	01010101 	0x1010101
 22c:	01000000 	0x1000000
 230:	00010000 	sll	zero,at,0x0
 234:	695f326e 	0x695f326e
 238:	64695f63 	0x64695f63
 23c:	74735f78 	jalx	1cd7de0 <data_size+0x1cd7dd0>
 240:	2e676174 	sltiu	a3,s3,24948
 244:	00000053 	0x53
 248:	05000000 	bltz	t0,24c <data_size+0x23c>
 24c:	c0076002 	lwc0	$7,24578(zero)
 250:	084b18bf 	j	12c62fc <data_size+0x12c62ec>
 254:	4b4b4bb3 	c2	0x14b4bb3
 258:	4b4b4b4c 	c2	0x14b4b4c
 25c:	4b4b4b4f 	c2	0x14b4b4f
 260:	4c4b844e 	0x4c4b844e
 264:	844e4b83 	lh	t6,19331(v0)
 268:	4d4b4c4b 	0x4d4b4c4b
 26c:	834e4c4d 	lb	t6,19533(k0)
 270:	4e4b4b83 	c3	0x4b4b83
 274:	4b4d4c4b 	c2	0x14d4c4b
 278:	024b4b4b 	0x24b4b4b
 27c:	01010004 	sllv	zero,at,t0
 280:	00000055 	0x55
 284:	00280002 	0x280002
 288:	01010000 	0x1010000
 28c:	000d0efb 	0xd0efb
 290:	01010101 	0x1010101
 294:	01000000 	0x1000000
 298:	00010000 	sll	zero,at,0x0
 29c:	645f346e 	0x645f346e
 2a0:	64695f63 	0x64695f63
 2a4:	62775f78 	0x62775f78
 2a8:	2e766e69 	sltiu	s6,s3,28265
 2ac:	00000053 	0x53
 2b0:	05000000 	bltz	t0,2b4 <data_size+0x2a4>
 2b4:	c0084002 	lwc0	$8,16386(zero)
 2b8:	4f4b18bf 	c3	0x14b18bf
 2bc:	834c8383 	lb	t4,-31869(k0)
 2c0:	4c834c83 	0x4c834c83
 2c4:	4c4c4c4c 	0x4c4c4c4c
 2c8:	4b4b834c 	c2	0x14b834c
 2cc:	4d4c4b4c 	0x4d4c4b4c
 2d0:	4b4b4b4b 	c2	0x14b4b4b
 2d4:	01000402 	0x1000402
 2d8:	00005b01 	0x5b01
 2dc:	26000200 	addiu	zero,s0,512
 2e0:	01000000 	0x1000000
 2e4:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
 2e8:	01010100 	0x1010100
 2ec:	00000001 	0x1
 2f0:	01000001 	0x1000001
 2f4:	5f336e00 	0x5f336e00
 2f8:	685f6369 	0x685f6369
 2fc:	695f7469 	0x695f7469
 300:	532e766e 	0x532e766e
 304:	00000000 	nop
 308:	02050000 	0x2050000
 30c:	bfc008e0 	0xbfc008e0
 310:	b3084b18 	0xb3084b18
 314:	4c4b4b4b 	0x4c4b4b4b
 318:	4f4b4b4b 	c3	0x14b4b4b
 31c:	4e4b4b4b 	c3	0x4b4b4b
 320:	834c4b84 	lb	t4,19332(k0)
 324:	83844e4b 	lb	a0,20043(gp)
 328:	4e4b4e4d 	c3	0x4b4e4d
 32c:	4b4d4c4b 	c2	0x14d4c4b
 330:	024b4b4b 	0x24b4b4b
 334:	01010004 	sllv	zero,at,t0

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	0000004c 	syscall	0x1
   4:	00000002 	srl	zero,zero,0x0
   8:	01040000 	0x1040000
   c:	00000000 	nop
  10:	bfc00000 	0xbfc00000
  14:	bfc00520 	0xbfc00520
  18:	72617473 	0x72617473
  1c:	00532e74 	0x532e74
  20:	6d6f682f 	0x6d6f682f
  24:	68632f65 	0x68632f65
  28:	61616f6f 	0x61616f6f
  2c:	5f73632f 	0x5f73632f
  30:	2f62616c 	sltiu	v0,k1,24940
  34:	68636163 	0x68636163
  38:	75665f65 	jalx	5997d94 <data_size+0x5997d84>
  3c:	4700636e 	c1	0x100636e
  40:	4120554e 	0x4120554e
  44:	2e322053 	sltiu	s2,s1,8275
  48:	352e3831 	ori	t6,t1,0x3831
  4c:	80010030 	lb	at,48(zero)
  50:	00000059 	0x59
  54:	00140002 	srl	zero,s4,0x0
  58:	01040000 	0x1040000
  5c:	000000b6 	0xb6
  60:	bfc00520 	0xbfc00520
  64:	bfc005dc 	0xbfc005dc
  68:	695f316e 	0x695f316e
  6c:	64695f63 	0x64695f63
  70:	6e695f78 	0x6e695f78
  74:	00532e76 	0x532e76
  78:	6d6f682f 	0x6d6f682f
  7c:	68632f65 	0x68632f65
  80:	61616f6f 	0x61616f6f
  84:	5f73632f 	0x5f73632f
  88:	2f62616c 	sltiu	v0,k1,24940
  8c:	68636163 	0x68636163
  90:	75665f65 	jalx	5997d94 <data_size+0x5997d84>
  94:	692f636e 	0x692f636e
  98:	0074736e 	0x74736e
  9c:	20554e47 	addi	s5,v0,20039
  a0:	32205341 	andi	zero,s1,0x5341
  a4:	2e38312e 	sltiu	t8,s1,12590
  a8:	01003035 	0x1003035
  ac:	00005b80 	sll	t3,zero,0xe
  b0:	28000200 	slti	zero,zero,512
  b4:	04000000 	bltz	zero,b8 <data_size+0xa8>
  b8:	00011901 	0x11901
  bc:	c005e000 	lwc0	$5,-8192(zero)
  c0:	c0066cbf 	lwc0	$6,27839(zero)
  c4:	5f356ebf 	0x5f356ebf
  c8:	695f6364 	0x695f6364
  cc:	735f7864 	0x735f7864
  d0:	67617474 	0x67617474
  d4:	2f00532e 	sltiu	zero,t8,21294
  d8:	656d6f68 	0x656d6f68
  dc:	6f68632f 	0x6f68632f
  e0:	2f61616f 	sltiu	at,k1,24943
  e4:	6c5f7363 	0x6c5f7363
  e8:	632f6261 	0x632f6261
  ec:	65686361 	0x65686361
  f0:	6e75665f 	0x6e75665f
  f4:	6e692f63 	0x6e692f63
  f8:	47007473 	c1	0x1007473
  fc:	4120554e 	0x4120554e
 100:	2e322053 	sltiu	s2,s1,8275
 104:	352e3831 	ori	t6,t1,0x3831
 108:	80010030 	lb	at,48(zero)
 10c:	00000059 	0x59
 110:	003c0002 	0x3c0002
 114:	01040000 	0x1040000
 118:	00000173 	0x173
 11c:	bfc00670 	0xbfc00670
 120:	bfc006e0 	0xbfc006e0
 124:	645f366e 	0x645f366e
 128:	69685f63 	0x69685f63
 12c:	6e695f74 	0x6e695f74
 130:	00532e76 	0x532e76
 134:	6d6f682f 	0x6d6f682f
 138:	68632f65 	0x68632f65
 13c:	61616f6f 	0x61616f6f
 140:	5f73632f 	0x5f73632f
 144:	2f62616c 	sltiu	v0,k1,24940
 148:	68636163 	0x68636163
 14c:	75665f65 	jalx	5997d94 <data_size+0x5997d84>
 150:	692f636e 	0x692f636e
 154:	0074736e 	0x74736e
 158:	20554e47 	addi	s5,v0,20039
 15c:	32205341 	andi	zero,s1,0x5341
 160:	2e38312e 	sltiu	t8,s1,12590
 164:	01003035 	0x1003035
 168:	00005b80 	sll	t3,zero,0xe
 16c:	50000200 	0x50000200
 170:	04000000 	bltz	zero,174 <data_size+0x164>
 174:	0001c501 	0x1c501
 178:	c006e000 	lwc0	$6,-8192(zero)
 17c:	c00748bf 	lwc0	$7,18623(zero)
 180:	5f376ebf 	0x5f376ebf
 184:	685f6364 	0x685f6364
 188:	775f7469 	jalx	d7dd1a4 <data_size+0xd7dd194>
 18c:	766e6962 	jalx	9b9a588 <data_size+0x9b9a578>
 190:	2f00532e 	sltiu	zero,t8,21294
 194:	656d6f68 	0x656d6f68
 198:	6f68632f 	0x6f68632f
 19c:	2f61616f 	sltiu	at,k1,24943
 1a0:	6c5f7363 	0x6c5f7363
 1a4:	632f6261 	0x632f6261
 1a8:	65686361 	0x65686361
 1ac:	6e75665f 	0x6e75665f
 1b0:	6e692f63 	0x6e692f63
 1b4:	47007473 	c1	0x1007473
 1b8:	4120554e 	0x4120554e
 1bc:	2e322053 	sltiu	s2,s1,8275
 1c0:	352e3831 	ori	t6,t1,0x3831
 1c4:	80010030 	lb	at,48(zero)
 1c8:	0000005b 	0x5b
 1cc:	00640002 	0x640002
 1d0:	01040000 	0x1040000
 1d4:	00000218 	0x218
 1d8:	bfc00760 	0xbfc00760
 1dc:	bfc00830 	0xbfc00830
 1e0:	695f326e 	0x695f326e
 1e4:	64695f63 	0x64695f63
 1e8:	74735f78 	jalx	1cd7de0 <data_size+0x1cd7dd0>
 1ec:	2e676174 	sltiu	a3,s3,24948
 1f0:	682f0053 	0x682f0053
 1f4:	2f656d6f 	sltiu	a1,k1,28015
 1f8:	6f6f6863 	0x6f6f6863
 1fc:	632f6161 	0x632f6161
 200:	616c5f73 	0x616c5f73
 204:	61632f62 	0x61632f62
 208:	5f656863 	0x5f656863
 20c:	636e7566 	0x636e7566
 210:	736e692f 	0x736e692f
 214:	4e470074 	c3	0x470074
 218:	53412055 	0x53412055
 21c:	312e3220 	andi	t6,t1,0x3220
 220:	30352e38 	andi	s5,at,0x2e38
 224:	5b800100 	0x5b800100
 228:	02000000 	0x2000000
 22c:	00007800 	sll	t7,zero,0x0
 230:	80010400 	lb	at,1024(zero)
 234:	40000002 	0x40000002
 238:	c4bfc008 	lwc1	$f31,-16376(a1)
 23c:	6ebfc008 	0x6ebfc008
 240:	63645f34 	0x63645f34
 244:	7864695f 	0x7864695f
 248:	6962775f 	0x6962775f
 24c:	532e766e 	0x532e766e
 250:	6f682f00 	0x6f682f00
 254:	632f656d 	0x632f656d
 258:	616f6f68 	0x616f6f68
 25c:	73632f61 	0x73632f61
 260:	62616c5f 	0x62616c5f
 264:	6361632f 	0x6361632f
 268:	665f6568 	0x665f6568
 26c:	2f636e75 	sltiu	v1,k1,28277
 270:	74736e69 	jalx	1cdb9a4 <data_size+0x1cdb994>
 274:	554e4700 	0x554e4700
 278:	20534120 	addi	s3,v0,16672
 27c:	38312e32 	xori	s1,at,0x2e32
 280:	0030352e 	0x30352e
 284:	00598001 	0x598001
 288:	00020000 	sll	zero,v0,0x0
 28c:	0000008c 	syscall	0x2
 290:	02d90104 	0x2d90104
 294:	08e00000 	j	3800000 <data_size+0x37ffff0>
 298:	0990bfc0 	j	642ff00 <data_size+0x642fef0>
 29c:	336ebfc0 	andi	t6,k1,0xbfc0
 2a0:	5f63695f 	0x5f63695f
 2a4:	5f746968 	0x5f746968
 2a8:	2e766e69 	sltiu	s6,s3,28265
 2ac:	682f0053 	0x682f0053
 2b0:	2f656d6f 	sltiu	a1,k1,28015
 2b4:	6f6f6863 	0x6f6f6863
 2b8:	632f6161 	0x632f6161
 2bc:	616c5f73 	0x616c5f73
 2c0:	61632f62 	0x61632f62
 2c4:	5f656863 	0x5f656863
 2c8:	636e7566 	0x636e7566
 2cc:	736e692f 	0x736e692f
 2d0:	4e470074 	c3	0x470074
 2d4:	53412055 	0x53412055
 2d8:	312e3220 	andi	t6,t1,0x3220
 2dc:	30352e38 	andi	s5,at,0x2e38
 2e0:	Address 0x00000000000002e0 is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	10001101 	b	4408 <data_size+0x43f8>
   4:	12011106 	beq	s0,at,4420 <data_size+0x4410>
   8:	1b080301 	0x1b080301
   c:	13082508 	beq	t8,t0,9430 <data_size+0x9420>
  10:	00000005 	0x5
  14:	10001101 	b	441c <data_size+0x440c>
  18:	12011106 	beq	s0,at,4434 <data_size+0x4424>
  1c:	1b080301 	0x1b080301
  20:	13082508 	beq	t8,t0,9444 <data_size+0x9434>
  24:	00000005 	0x5
  28:	10001101 	b	4430 <data_size+0x4420>
  2c:	12011106 	beq	s0,at,4448 <data_size+0x4438>
  30:	1b080301 	0x1b080301
  34:	13082508 	beq	t8,t0,9458 <data_size+0x9448>
  38:	00000005 	0x5
  3c:	10001101 	b	4444 <data_size+0x4434>
  40:	12011106 	beq	s0,at,445c <data_size+0x444c>
  44:	1b080301 	0x1b080301
  48:	13082508 	beq	t8,t0,946c <data_size+0x945c>
  4c:	00000005 	0x5
  50:	10001101 	b	4458 <data_size+0x4448>
  54:	12011106 	beq	s0,at,4470 <data_size+0x4460>
  58:	1b080301 	0x1b080301
  5c:	13082508 	beq	t8,t0,9480 <data_size+0x9470>
  60:	00000005 	0x5
  64:	10001101 	b	446c <data_size+0x445c>
  68:	12011106 	beq	s0,at,4484 <data_size+0x4474>
  6c:	1b080301 	0x1b080301
  70:	13082508 	beq	t8,t0,9494 <data_size+0x9484>
  74:	00000005 	0x5
  78:	10001101 	b	4480 <data_size+0x4470>
  7c:	12011106 	beq	s0,at,4498 <data_size+0x4488>
  80:	1b080301 	0x1b080301
  84:	13082508 	beq	t8,t0,94a8 <data_size+0x9498>
  88:	00000005 	0x5
  8c:	10001101 	b	4494 <data_size+0x4484>
  90:	12011106 	beq	s0,at,44ac <data_size+0x449c>
  94:	1b080301 	0x1b080301
  98:	13082508 	beq	t8,t0,94bc <data_size+0x94ac>
  9c:	00000005 	0x5
