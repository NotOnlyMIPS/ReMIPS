
main.elf:     file format elf32-tradlittlemips
main.elf


Disassembly of section .text:

bfc00000 <_ftext>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:24
bfc00000:	3c1bbfb0 	lui	k1,0xbfb0
bfc00004:	af608ffc 	sw	zero,-28676(k1)
bfc00008:	af608ffc 	sw	zero,-28676(k1)
bfc0000c:	af60fff8 	sw	zero,-8(k1)
bfc00010:	af608ffc 	sw	zero,-28676(k1)
bfc00014:	af608ffc 	sw	zero,-28676(k1)
bfc00018:	8f608ffc 	lw	zero,-28676(k1)
bfc0001c:	8f7bfff8 	lw	k1,-8(k1)
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:25
bfc00020:	0bf00158 	j	bfc00560 <locate>
bfc00024:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:26
bfc00028:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:29
bfc0002c:	3c088000 	lui	t0,0x8000
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:30
bfc00030:	25290001 	addiu	t1,t1,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:31
bfc00034:	01005025 	move	t2,t0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:32
bfc00038:	01ae5821 	addu	t3,t5,t6
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:33
bfc0003c:	8d0c0000 	lw	t4,0(t0)
	...
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:38
bfc000e8:	3c088000 	lui	t0,0x8000
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:39
bfc000ec:	25290001 	addiu	t1,t1,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:40
bfc000f0:	01005025 	move	t2,t0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:41
bfc000f4:	01ae5821 	addu	t3,t5,t6
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:42
bfc000f8:	8d0c0000 	lw	t4,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:43
bfc000fc:	00000000 	nop

bfc00100 <test_finish>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:46
bfc00100:	1000ffff 	b	bfc00100 <test_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:47
bfc00104:	25080001 	addiu	t0,t0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:48
bfc00108:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:50
bfc0010c:	3c088000 	lui	t0,0x8000
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:51
bfc00110:	25290001 	addiu	t1,t1,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:52
bfc00114:	01005025 	move	t2,t0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:53
bfc00118:	01ae5821 	addu	t3,t5,t6
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:54
bfc0011c:	8d0c0000 	lw	t4,0(t0)
	...

bfc00200 <tlb_refill>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:60
bfc00200:	401a6800 	mfc0	k0,c0_cause
bfc00204:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:61
bfc00208:	335a007c 	andi	k0,k0,0x7c
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:62
bfc0020c:	241b0001 	li	k1,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:63
bfc00210:	125b000c 	beq	s2,k1,bfc00244 <load_refill_ex>
bfc00214:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:64
bfc00218:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:65
bfc0021c:	241b0002 	li	k1,2
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:66
bfc00220:	125b001d 	beq	s2,k1,bfc00298 <store_refill_ex>
bfc00224:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:67
bfc00228:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:68
bfc0022c:	241b0003 	li	k1,3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:69
bfc00230:	125b002e 	beq	s2,k1,bfc002ec <fetch_refill_ex>
bfc00234:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:70
bfc00238:	100000c4 	b	bfc0054c <tlb_fail>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:71
bfc0023c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:72
bfc00240:	00000000 	nop

bfc00244 <load_refill_ex>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:74
bfc00244:	241b0008 	li	k1,8
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:75
bfc00248:	175b00c0 	bne	k0,k1,bfc0054c <tlb_fail>
bfc0024c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:76
bfc00250:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:77
bfc00254:	401a7000 	mfc0	k0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:78
bfc00258:	3c1bbfc0 	lui	k1,0xbfc0
bfc0025c:	277b0f28 	addiu	k1,k1,3880
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:79
bfc00260:	175b00ba 	bne	k0,k1,bfc0054c <tlb_fail>
bfc00264:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:80
bfc00268:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:81
bfc0026c:	3c090023 	lui	t1,0x23
bfc00270:	35294500 	ori	t1,t1,0x4500
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:82
bfc00274:	40891000 	mtc0	t1,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:83
bfc00278:	3c0a0078 	lui	t2,0x78
bfc0027c:	354a9a00 	ori	t2,t2,0x9a00
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:84
bfc00280:	408a1800 	mtc0	t2,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:85
bfc00284:	240b0001 	li	t3,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:86
bfc00288:	408b0000 	mtc0	t3,c0_index
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:87
bfc0028c:	42000002 	tlbwi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:88
bfc00290:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:90
bfc00294:	42000018 	c0	0x18

bfc00298 <store_refill_ex>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:93
bfc00298:	241b000c 	li	k1,12
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:94
bfc0029c:	175b00ab 	bne	k0,k1,bfc0054c <tlb_fail>
bfc002a0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:95
bfc002a4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:96
bfc002a8:	401a7000 	mfc0	k0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:97
bfc002ac:	3c1bbfc0 	lui	k1,0xbfc0
bfc002b0:	277b0f94 	addiu	k1,k1,3988
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:98
bfc002b4:	175b00a5 	bne	k0,k1,bfc0054c <tlb_fail>
bfc002b8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:99
bfc002bc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:100
bfc002c0:	3c090023 	lui	t1,0x23
bfc002c4:	35294500 	ori	t1,t1,0x4500
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:101
bfc002c8:	40891000 	mtc0	t1,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:102
bfc002cc:	3c0a0078 	lui	t2,0x78
bfc002d0:	354a9a00 	ori	t2,t2,0x9a00
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:103
bfc002d4:	408a1800 	mtc0	t2,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:104
bfc002d8:	240b0002 	li	t3,2
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:105
bfc002dc:	408b0000 	mtc0	t3,c0_index
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:106
bfc002e0:	42000002 	tlbwi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:107
bfc002e4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:109
bfc002e8:	42000018 	c0	0x18

bfc002ec <fetch_refill_ex>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:112
bfc002ec:	241b0008 	li	k1,8
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:113
bfc002f0:	175b0096 	bne	k0,k1,bfc0054c <tlb_fail>
bfc002f4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:114
bfc002f8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:115
bfc002fc:	3c1bbfc0 	lui	k1,0xbfc0
bfc00300:	277b073c 	addiu	k1,k1,1852
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:116
bfc00304:	337b0fff 	andi	k1,k1,0xfff
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:117
bfc00308:	3c1a3333 	lui	k0,0x3333
bfc0030c:	375a3000 	ori	k0,k0,0x3000
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:118
bfc00310:	037ad825 	or	k1,k1,k0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:119
bfc00314:	401a7000 	mfc0	k0,c0_epc
bfc00318:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:120
bfc0031c:	175b008b 	bne	k0,k1,bfc0054c <tlb_fail>
bfc00320:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:121
bfc00324:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:122
bfc00328:	3c090023 	lui	t1,0x23
bfc0032c:	35294500 	ori	t1,t1,0x4500
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:123
bfc00330:	40891000 	mtc0	t1,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:124
bfc00334:	3c0a0078 	lui	t2,0x78
bfc00338:	354a9a00 	ori	t2,t2,0x9a00
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:125
bfc0033c:	408a1800 	mtc0	t2,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:126
bfc00340:	240b0003 	li	t3,3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:127
bfc00344:	408b0000 	mtc0	t3,c0_index
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:128
bfc00348:	42000002 	tlbwi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:129
bfc0034c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:131
bfc00350:	42000018 	c0	0x18
	...
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:135
bfc00380:	401a6800 	mfc0	k0,c0_cause
bfc00384:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:136
bfc00388:	335a007c 	andi	k0,k0,0x7c
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:137
bfc0038c:	241b0001 	li	k1,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:138
bfc00390:	125b000c 	beq	s2,k1,bfc003c4 <load_inv_ex>
bfc00394:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:139
bfc00398:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:140
bfc0039c:	241b0002 	li	k1,2
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:141
bfc003a0:	125b0020 	beq	s2,k1,bfc00424 <store_inv_mod_ex>
bfc003a4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:142
bfc003a8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:143
bfc003ac:	241b0003 	li	k1,3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:144
bfc003b0:	125b0046 	beq	s2,k1,bfc004cc <fetch_inv_ex>
bfc003b4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:145
bfc003b8:	10000064 	b	bfc0054c <tlb_fail>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:146
bfc003bc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:147
bfc003c0:	00000000 	nop

bfc003c4 <load_inv_ex>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:149
bfc003c4:	241b0008 	li	k1,8
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:150
bfc003c8:	135b0004 	beq	k0,k1,bfc003dc <load_tlb_invalid>
bfc003cc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:151
bfc003d0:	1000005e 	b	bfc0054c <tlb_fail>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:152
bfc003d4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:153
bfc003d8:	00000000 	nop

bfc003dc <load_tlb_invalid>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:155
bfc003dc:	42000008 	tlbp
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:156
bfc003e0:	401a7000 	mfc0	k0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:157
bfc003e4:	3c1bbfc0 	lui	k1,0xbfc0
bfc003e8:	277b0f28 	addiu	k1,k1,3880
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:158
bfc003ec:	175b0057 	bne	k0,k1,bfc0054c <tlb_fail>
bfc003f0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:159
bfc003f4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:160
bfc003f8:	275a0008 	addiu	k0,k0,8
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:161
bfc003fc:	409a7000 	mtc0	k0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:162
bfc00400:	3c1a02ff 	lui	k0,0x2ff
bfc00404:	375a37d2 	ori	k0,k0,0x37d2
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:163
bfc00408:	409a1000 	mtc0	k0,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:164
bfc0040c:	3c1b02ff 	lui	k1,0x2ff
bfc00410:	377b3412 	ori	k1,k1,0x3412
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:165
bfc00414:	409b1800 	mtc0	k1,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:166
bfc00418:	42000002 	tlbwi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:167
bfc0041c:	24121111 	li	s2,4369
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:169
bfc00420:	42000018 	c0	0x18

bfc00424 <store_inv_mod_ex>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:173
bfc00424:	241b000c 	li	k1,12
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:174
bfc00428:	135b0008 	beq	k0,k1,bfc0044c <store_tlb_invalid>
bfc0042c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:175
bfc00430:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:176
bfc00434:	241b0004 	li	k1,4
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:177
bfc00438:	135b0013 	beq	k0,k1,bfc00488 <store_tlb_modified>
bfc0043c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:178
bfc00440:	10000042 	b	bfc0054c <tlb_fail>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:179
bfc00444:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:180
bfc00448:	00000000 	nop

bfc0044c <store_tlb_invalid>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:182
bfc0044c:	42000008 	tlbp
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:183
bfc00450:	401a7000 	mfc0	k0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:184
bfc00454:	3c1bbfc0 	lui	k1,0xbfc0
bfc00458:	277b0f94 	addiu	k1,k1,3988
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:185
bfc0045c:	175b003b 	bne	k0,k1,bfc0054c <tlb_fail>
bfc00460:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:186
bfc00464:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:187
bfc00468:	3c1a02ff 	lui	k0,0x2ff
bfc0046c:	375a3452 	ori	k0,k0,0x3452
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:188
bfc00470:	409a1000 	mtc0	k0,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:189
bfc00474:	3c1b02ff 	lui	k1,0x2ff
bfc00478:	377b0812 	ori	k1,k1,0x812
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:190
bfc0047c:	409b1800 	mtc0	k1,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:191
bfc00480:	42000002 	tlbwi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:193
bfc00484:	42000018 	c0	0x18

bfc00488 <store_tlb_modified>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:196
bfc00488:	401a7000 	mfc0	k0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:197
bfc0048c:	3c1bbfc0 	lui	k1,0xbfc0
bfc00490:	277b0f94 	addiu	k1,k1,3988
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:198
bfc00494:	175b002d 	bne	k0,k1,bfc0054c <tlb_fail>
bfc00498:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:199
bfc0049c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:200
bfc004a0:	275a0008 	addiu	k0,k0,8
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:201
bfc004a4:	409a7000 	mtc0	k0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:202
bfc004a8:	3c1a02ff 	lui	k0,0x2ff
bfc004ac:	375a3456 	ori	k0,k0,0x3456
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:203
bfc004b0:	409a1000 	mtc0	k0,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:204
bfc004b4:	3c1b02ff 	lui	k1,0x2ff
bfc004b8:	377b0812 	ori	k1,k1,0x812
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:205
bfc004bc:	409b1800 	mtc0	k1,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:206
bfc004c0:	42000002 	tlbwi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:207
bfc004c4:	24122222 	li	s2,8738
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:209
bfc004c8:	42000018 	c0	0x18

bfc004cc <fetch_inv_ex>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:213
bfc004cc:	241b0008 	li	k1,8
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:214
bfc004d0:	135b0004 	beq	k0,k1,bfc004e4 <fetch_tlb_invalid>
bfc004d4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:215
bfc004d8:	1000001c 	b	bfc0054c <tlb_fail>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:216
bfc004dc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:217
bfc004e0:	00000000 	nop

bfc004e4 <fetch_tlb_invalid>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:219
bfc004e4:	42000008 	tlbp
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:220
bfc004e8:	3c1bbfc0 	lui	k1,0xbfc0
bfc004ec:	277b073c 	addiu	k1,k1,1852
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:221
bfc004f0:	337b0fff 	andi	k1,k1,0xfff
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:222
bfc004f4:	3c1a3333 	lui	k0,0x3333
bfc004f8:	375a3000 	ori	k0,k0,0x3000
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:223
bfc004fc:	037ad825 	or	k1,k1,k0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:224
bfc00500:	401a7000 	mfc0	k0,c0_epc
bfc00504:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:225
bfc00508:	175b0010 	bne	k0,k1,bfc0054c <tlb_fail>
bfc0050c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:226
bfc00510:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:227
bfc00514:	3c1a02ff 	lui	k0,0x2ff
bfc00518:	375a37d2 	ori	k0,k0,0x37d2
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:228
bfc0051c:	409a1000 	mtc0	k0,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:229
bfc00520:	3c1bbfc0 	lui	k1,0xbfc0
bfc00524:	277b073c 	addiu	k1,k1,1852
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:230
bfc00528:	001bdb02 	srl	k1,k1,0xc
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:231
bfc0052c:	001bd980 	sll	k1,k1,0x6
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:232
bfc00530:	377b0012 	ori	k1,k1,0x12
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:233
bfc00534:	409b1800 	mtc0	k1,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:234
bfc00538:	42000002 	tlbwi
	...
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:237
bfc00544:	24123333 	li	s2,13107
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:239
bfc00548:	42000018 	c0	0x18

bfc0054c <tlb_fail>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:243
bfc0054c:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:244
bfc00550:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:245
bfc00554:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:246
bfc00558:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:247
bfc0055c:	00000000 	nop

bfc00560 <locate>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:252
bfc00560:	3c04bfb0 	lui	a0,0xbfb0
bfc00564:	2484f008 	addiu	a0,a0,-4088
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:253
bfc00568:	3c05bfb0 	lui	a1,0xbfb0
bfc0056c:	24a5f004 	addiu	a1,a1,-4092
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:254
bfc00570:	3c06bfb0 	lui	a2,0xbfb0
bfc00574:	24c6f000 	addiu	a2,a2,-4096
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:255
bfc00578:	3c11bfb0 	lui	s1,0xbfb0
bfc0057c:	2631f010 	addiu	s1,s1,-4080
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:257
bfc00580:	3c090000 	lui	t1,0x0
bfc00584:	25290002 	addiu	t1,t1,2
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:258
bfc00588:	3c0a0000 	lui	t2,0x0
bfc0058c:	254a0001 	addiu	t2,t2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:259
bfc00590:	3c0b0001 	lui	t3,0x1
bfc00594:	256bffff 	addiu	t3,t3,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:260
bfc00598:	3c130000 	lui	s3,0x0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:262
bfc0059c:	ac890000 	sw	t1,0(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:263
bfc005a0:	acaa0000 	sw	t2,0(a1)
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:264
bfc005a4:	accb0000 	sw	t3,0(a2)
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:265
bfc005a8:	ae330000 	sw	s3,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:266
bfc005ac:	3c100000 	lui	s0,0x0

bfc005b0 <inst_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:268
bfc005b0:	0ff001e0 	jal	bfc00780 <n1_index_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:269
bfc005b4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:270
bfc005b8:	0ff001ae 	jal	bfc006b8 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:271
bfc005bc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:272
bfc005c0:	0ff0020c 	jal	bfc00830 <n2_entryhi_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:273
bfc005c4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:274
bfc005c8:	0ff001ae 	jal	bfc006b8 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:275
bfc005cc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:276
bfc005d0:	0ff00238 	jal	bfc008e0 <n3_entrylo0_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:277
bfc005d4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:278
bfc005d8:	0ff001ae 	jal	bfc006b8 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:279
bfc005dc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:280
bfc005e0:	0ff00264 	jal	bfc00990 <n4_entrylo1_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:281
bfc005e4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:282
bfc005e8:	0ff001ae 	jal	bfc006b8 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:283
bfc005ec:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:284
bfc005f0:	0ff00290 	jal	bfc00a40 <n5_tlbwi_tlbr_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:285
bfc005f4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:286
bfc005f8:	0ff001ae 	jal	bfc006b8 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:287
bfc005fc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:288
bfc00600:	0ff00314 	jal	bfc00c50 <n6_tlbp_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:289
bfc00604:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:290
bfc00608:	0ff001ae 	jal	bfc006b8 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:291
bfc0060c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:292
bfc00610:	0ff0033c 	jal	bfc00cf0 <n7_tlbwr_tlbr_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:293
bfc00614:	0ff001ae 	jal	bfc006b8 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:294
bfc00618:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:296
bfc0061c:	0ff003c0 	jal	bfc00f00 <n8_load_tlb_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:297
bfc00620:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:298
bfc00624:	0ff001ae 	jal	bfc006b8 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:299
bfc00628:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:300
bfc0062c:	0ff003dc 	jal	bfc00f70 <n9_store_tlb_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:301
bfc00630:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:302
bfc00634:	0ff001ae 	jal	bfc006b8 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:303
bfc00638:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:304
bfc0063c:	0ff001c4 	jal	bfc00710 <n10_fetch_tlb_ex_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:305
bfc00640:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:306
bfc00644:	0ff001ae 	jal	bfc006b8 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:307
bfc00648:	00000000 	nop

bfc0064c <test_end>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:311
bfc0064c:	3c100000 	lui	s0,0x0
bfc00650:	2610000a 	addiu	s0,s0,10
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:312
bfc00654:	1213000e 	beq	s0,s3,bfc00690 <test_end+0x44>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:313
bfc00658:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:315
bfc0065c:	3c04bfb0 	lui	a0,0xbfb0
bfc00660:	2484f000 	addiu	a0,a0,-4096
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:316
bfc00664:	3c05bfb0 	lui	a1,0xbfb0
bfc00668:	24a5f008 	addiu	a1,a1,-4088
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:317
bfc0066c:	3c06bfb0 	lui	a2,0xbfb0
bfc00670:	24c6f004 	addiu	a2,a2,-4092
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:319
bfc00674:	3c090000 	lui	t1,0x0
bfc00678:	25290002 	addiu	t1,t1,2
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:321
bfc0067c:	ac800000 	sw	zero,0(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:322
bfc00680:	aca90000 	sw	t1,0(a1)
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:323
bfc00684:	acc90000 	sw	t1,0(a2)
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:324
bfc00688:	10000009 	b	bfc006b0 <test_end+0x64>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:325
bfc0068c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:327
bfc00690:	3c090000 	lui	t1,0x0
bfc00694:	25290001 	addiu	t1,t1,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:328
bfc00698:	3c04bfb0 	lui	a0,0xbfb0
bfc0069c:	2484f008 	addiu	a0,a0,-4088
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:329
bfc006a0:	3c05bfb0 	lui	a1,0xbfb0
bfc006a4:	24a5f004 	addiu	a1,a1,-4092
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:330
bfc006a8:	ac890000 	sw	t1,0(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:331
bfc006ac:	aca90000 	sw	t1,0(a1)
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:334
bfc006b0:	0bf00040 	j	bfc00100 <test_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:335
bfc006b4:	00000000 	nop

bfc006b8 <wait_1s>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:338
bfc006b8:	3c09bfb0 	lui	t1,0xbfb0
bfc006bc:	2529fff4 	addiu	t1,t1,-12
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:339
bfc006c0:	3c080000 	lui	t0,0x0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:340
bfc006c4:	8d2a0000 	lw	t2,0(t1)
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:341
bfc006c8:	15400008 	bnez	t2,bfc006ec <wait_1s+0x34>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:342
bfc006cc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:343
bfc006d0:	3c08bfb0 	lui	t0,0xbfb0
bfc006d4:	2508f020 	addiu	t0,t0,-4064
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:344
bfc006d8:	8d080000 	lw	t0,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:345
bfc006dc:	3c090000 	lui	t1,0x0
bfc006e0:	252900ff 	addiu	t1,t1,255
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:346
bfc006e4:	01094026 	xor	t0,t0,t1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:347
bfc006e8:	00084400 	sll	t0,t0,0x10
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:349
bfc006ec:	25080001 	addiu	t0,t0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:351
bfc006f0:	2508ffff 	addiu	t0,t0,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:352
bfc006f4:	1500fffe 	bnez	t0,bfc006f0 <wait_1s+0x38>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:353
bfc006f8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:354
bfc006fc:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/start.S:355
bfc00700:	00000000 	nop
	...

bfc00710 <n10_fetch_tlb_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n10_fetch_tlb_ex.S:6
bfc00710:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n10_fetch_tlb_ex.S:7
bfc00714:	24120003 	li	s2,3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n10_fetch_tlb_ex.S:8
bfc00718:	3c0a0001 	lui	t2,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n10_fetch_tlb_ex.S:12
bfc0071c:	3c08bfc0 	lui	t0,0xbfc0
bfc00720:	2508073c 	addiu	t0,t0,1852
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n10_fetch_tlb_ex.S:13
bfc00724:	31040fff 	andi	a0,t0,0xfff
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n10_fetch_tlb_ex.S:14
bfc00728:	3c053333 	lui	a1,0x3333
bfc0072c:	34a53000 	ori	a1,a1,0x3000
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n10_fetch_tlb_ex.S:15
bfc00730:	00a42825 	or	a1,a1,a0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n10_fetch_tlb_ex.S:16
bfc00734:	00a00008 	jr	a1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n10_fetch_tlb_ex.S:17
bfc00738:	00000000 	nop

bfc0073c <fetch_tlb_pc_2>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n10_fetch_tlb_ex.S:20
bfc0073c:	3c09bfc0 	lui	t1,0xbfc0
bfc00740:	25290754 	addiu	t1,t1,1876
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n10_fetch_tlb_ex.S:21
bfc00744:	01200008 	jr	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n10_fetch_tlb_ex.S:22
bfc00748:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n10_fetch_tlb_ex.S:23
bfc0074c:	10000006 	b	bfc00768 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n10_fetch_tlb_ex.S:24
bfc00750:	00000000 	nop

bfc00754 <fetch_tlb_pc_3>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n10_fetch_tlb_ex.S:27
bfc00754:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n10_fetch_tlb_ex.S:29
bfc00758:	24093333 	li	t1,13107
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n10_fetch_tlb_ex.S:30
bfc0075c:	16490002 	bne	s2,t1,bfc00768 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n10_fetch_tlb_ex.S:31
bfc00760:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n10_fetch_tlb_ex.S:33
bfc00764:	26730001 	addiu	s3,s3,1

bfc00768 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n10_fetch_tlb_ex.S:36
bfc00768:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n10_fetch_tlb_ex.S:37
bfc0076c:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n10_fetch_tlb_ex.S:38
bfc00770:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n10_fetch_tlb_ex.S:39
bfc00774:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n10_fetch_tlb_ex.S:40
bfc00778:	00000000 	nop
inst_error():
bfc0077c:	00000000 	nop

bfc00780 <n1_index_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:6
bfc00780:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:7
bfc00784:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:8
bfc00788:	3c0a0001 	lui	t2,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:11
bfc0078c:	24090003 	li	t1,3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:12
bfc00790:	240a0000 	li	t2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:13
bfc00794:	40890000 	mtc0	t1,c0_index
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:14
bfc00798:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:15
bfc0079c:	400a0000 	mfc0	t2,c0_index
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:16
bfc007a0:	152a001c 	bne	t1,t2,bfc00814 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:17
bfc007a4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:18
bfc007a8:	2409001f 	li	t1,31
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:19
bfc007ac:	240a0000 	li	t2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:20
bfc007b0:	40890000 	mtc0	t1,c0_index
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:21
bfc007b4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:22
bfc007b8:	400a0000 	mfc0	t2,c0_index
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:23
bfc007bc:	2409000f 	li	t1,15
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:24
bfc007c0:	152a0014 	bne	t1,t2,bfc00814 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:25
bfc007c4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:26
bfc007c8:	2409003a 	li	t1,58
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:27
bfc007cc:	240a0000 	li	t2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:28
bfc007d0:	40890000 	mtc0	t1,c0_index
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:29
bfc007d4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:30
bfc007d8:	400a0000 	mfc0	t2,c0_index
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:31
bfc007dc:	2409000a 	li	t1,10
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:32
bfc007e0:	152a000c 	bne	t1,t2,bfc00814 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:33
bfc007e4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:34
bfc007e8:	2409fff0 	li	t1,-16
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:35
bfc007ec:	240a000a 	li	t2,10
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:36
bfc007f0:	40890000 	mtc0	t1,c0_index
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:37
bfc007f4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:38
bfc007f8:	400a0000 	mfc0	t2,c0_index
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:39
bfc007fc:	24090000 	li	t1,0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:40
bfc00800:	152a0004 	bne	t1,t2,bfc00814 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:42
bfc00804:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:44
bfc00808:	16400002 	bnez	s2,bfc00814 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:45
bfc0080c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:47
bfc00810:	26730001 	addiu	s3,s3,1

bfc00814 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:50
bfc00814:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:51
bfc00818:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:52
bfc0081c:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:53
bfc00820:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n1_index.S:54
bfc00824:	00000000 	nop
	...

bfc00830 <n2_entryhi_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:6
bfc00830:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:7
bfc00834:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:8
bfc00838:	3c0a0001 	lui	t2,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:11
bfc0083c:	2409e0ff 	li	t1,-7937
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:12
bfc00840:	240a0000 	li	t2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:13
bfc00844:	40895000 	mtc0	t1,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:14
bfc00848:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:15
bfc0084c:	400a5000 	mfc0	t2,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:16
bfc00850:	152a001c 	bne	t1,t2,bfc008c4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:17
bfc00854:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:18
bfc00858:	3c091000 	lui	t1,0x1000
bfc0085c:	35290001 	ori	t1,t1,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:19
bfc00860:	240a0000 	li	t2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:20
bfc00864:	40895000 	mtc0	t1,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:21
bfc00868:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:22
bfc0086c:	400a5000 	mfc0	t2,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:23
bfc00870:	152a0014 	bne	t1,t2,bfc008c4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:24
bfc00874:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:25
bfc00878:	2409ffff 	li	t1,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:26
bfc0087c:	240a0000 	li	t2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:27
bfc00880:	40895000 	mtc0	t1,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:28
bfc00884:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:29
bfc00888:	400a5000 	mfc0	t2,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:30
bfc0088c:	2409e0ff 	li	t1,-7937
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:31
bfc00890:	152a000c 	bne	t1,t2,bfc008c4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:32
bfc00894:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:33
bfc00898:	24091f00 	li	t1,7936
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:34
bfc0089c:	240a0001 	li	t2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:35
bfc008a0:	40895000 	mtc0	t1,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:36
bfc008a4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:37
bfc008a8:	400a5000 	mfc0	t2,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:38
bfc008ac:	24090000 	li	t1,0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:39
bfc008b0:	152a0004 	bne	t1,t2,bfc008c4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:41
bfc008b4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:43
bfc008b8:	16400002 	bnez	s2,bfc008c4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:44
bfc008bc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:46
bfc008c0:	26730001 	addiu	s3,s3,1

bfc008c4 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:49
bfc008c4:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:50
bfc008c8:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:51
bfc008cc:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:52
bfc008d0:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n2_entryhi.S:53
bfc008d4:	00000000 	nop
	...

bfc008e0 <n3_entrylo0_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:6
bfc008e0:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:7
bfc008e4:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:8
bfc008e8:	3c0a0001 	lui	t2,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:11
bfc008ec:	3c0903ff 	lui	t1,0x3ff
bfc008f0:	3529ffff 	ori	t1,t1,0xffff
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:12
bfc008f4:	240a0000 	li	t2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:13
bfc008f8:	40891000 	mtc0	t1,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:14
bfc008fc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:15
bfc00900:	400a1000 	mfc0	t2,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:16
bfc00904:	152a001c 	bne	t1,t2,bfc00978 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:17
bfc00908:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:18
bfc0090c:	2409001f 	li	t1,31
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:19
bfc00910:	240a0000 	li	t2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:20
bfc00914:	40891000 	mtc0	t1,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:21
bfc00918:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:22
bfc0091c:	400a1000 	mfc0	t2,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:23
bfc00920:	152a0015 	bne	t1,t2,bfc00978 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:24
bfc00924:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:25
bfc00928:	2409ffff 	li	t1,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:26
bfc0092c:	240a0000 	li	t2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:27
bfc00930:	40891000 	mtc0	t1,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:28
bfc00934:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:29
bfc00938:	400a1000 	mfc0	t2,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:30
bfc0093c:	3c0903ff 	lui	t1,0x3ff
bfc00940:	3529ffff 	ori	t1,t1,0xffff
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:31
bfc00944:	152a000c 	bne	t1,t2,bfc00978 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:32
bfc00948:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:33
bfc0094c:	3c09fc00 	lui	t1,0xfc00
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:34
bfc00950:	240a0001 	li	t2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:35
bfc00954:	40891000 	mtc0	t1,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:36
bfc00958:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:37
bfc0095c:	400a1000 	mfc0	t2,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:38
bfc00960:	24090000 	li	t1,0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:39
bfc00964:	152a0004 	bne	t1,t2,bfc00978 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:41
bfc00968:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:43
bfc0096c:	16400002 	bnez	s2,bfc00978 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:44
bfc00970:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:46
bfc00974:	26730001 	addiu	s3,s3,1

bfc00978 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:49
bfc00978:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:50
bfc0097c:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:51
bfc00980:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:52
bfc00984:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n3_entrylo0.S:53
bfc00988:	00000000 	nop
bfc0098c:	00000000 	nop

bfc00990 <n4_entrylo1_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:6
bfc00990:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:7
bfc00994:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:8
bfc00998:	3c0a0001 	lui	t2,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:11
bfc0099c:	3c0903ff 	lui	t1,0x3ff
bfc009a0:	3529ffff 	ori	t1,t1,0xffff
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:12
bfc009a4:	240a0000 	li	t2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:13
bfc009a8:	40891800 	mtc0	t1,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:14
bfc009ac:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:15
bfc009b0:	400a1800 	mfc0	t2,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:16
bfc009b4:	152a001c 	bne	t1,t2,bfc00a28 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:17
bfc009b8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:18
bfc009bc:	2409001f 	li	t1,31
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:19
bfc009c0:	240a0000 	li	t2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:20
bfc009c4:	40891800 	mtc0	t1,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:21
bfc009c8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:22
bfc009cc:	400a1800 	mfc0	t2,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:23
bfc009d0:	152a0015 	bne	t1,t2,bfc00a28 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:24
bfc009d4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:25
bfc009d8:	2409ffff 	li	t1,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:26
bfc009dc:	240a0000 	li	t2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:27
bfc009e0:	40891800 	mtc0	t1,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:28
bfc009e4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:29
bfc009e8:	400a1800 	mfc0	t2,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:30
bfc009ec:	3c0903ff 	lui	t1,0x3ff
bfc009f0:	3529ffff 	ori	t1,t1,0xffff
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:31
bfc009f4:	152a000c 	bne	t1,t2,bfc00a28 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:32
bfc009f8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:33
bfc009fc:	3c09fc00 	lui	t1,0xfc00
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:34
bfc00a00:	240a0001 	li	t2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:35
bfc00a04:	40891800 	mtc0	t1,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:36
bfc00a08:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:37
bfc00a0c:	400a1800 	mfc0	t2,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:38
bfc00a10:	24090000 	li	t1,0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:39
bfc00a14:	152a0004 	bne	t1,t2,bfc00a28 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:41
bfc00a18:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:43
bfc00a1c:	16400002 	bnez	s2,bfc00a28 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:44
bfc00a20:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:46
bfc00a24:	26730001 	addiu	s3,s3,1

bfc00a28 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:49
bfc00a28:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:50
bfc00a2c:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:51
bfc00a30:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:52
bfc00a34:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n4_entrylo1.S:53
bfc00a38:	00000000 	nop
bfc00a3c:	00000000 	nop

bfc00a40 <n5_tlbwi_tlbr_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:6
bfc00a40:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:7
bfc00a44:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:8
bfc00a48:	3c0a0001 	lui	t2,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:11
bfc00a4c:	3c090023 	lui	t1,0x23
bfc00a50:	35294500 	ori	t1,t1,0x4500
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:12
bfc00a54:	40891000 	mtc0	t1,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:13
bfc00a58:	3c0a0078 	lui	t2,0x78
bfc00a5c:	354a9a00 	ori	t2,t2,0x9a00
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:14
bfc00a60:	408a1800 	mtc0	t2,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:15
bfc00a64:	24020000 	li	v0,0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:16
bfc00a68:	2403000d 	li	v1,13
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:17
bfc00a6c:	3c08bfc0 	lui	t0,0xbfc0
bfc00a70:	35080010 	ori	t0,t0,0x10
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:20
bfc00a74:	40885000 	mtc0	t0,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:21
bfc00a78:	40820000 	mtc0	v0,c0_index
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:22
bfc00a7c:	42000002 	tlbwi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:23
bfc00a80:	240bffff 	li	t3,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:24
bfc00a84:	408b5000 	mtc0	t3,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:25
bfc00a88:	408b1000 	mtc0	t3,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:26
bfc00a8c:	408b1800 	mtc0	t3,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:27
bfc00a90:	42000001 	tlbr
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:28
bfc00a94:	40045000 	mfc0	a0,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:29
bfc00a98:	40051000 	mfc0	a1,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:30
bfc00a9c:	40061800 	mfc0	a2,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:31
bfc00aa0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:32
bfc00aa4:	14880062 	bne	a0,t0,bfc00c30 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:33
bfc00aa8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:34
bfc00aac:	14a90060 	bne	a1,t1,bfc00c30 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:35
bfc00ab0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:36
bfc00ab4:	14ca005e 	bne	a2,t2,bfc00c30 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:37
bfc00ab8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:38
bfc00abc:	24420001 	addiu	v0,v0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:39
bfc00ac0:	25082000 	addiu	t0,t0,8192
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:40
bfc00ac4:	1443ffeb 	bne	v0,v1,bfc00a74 <n5_tlbwi_tlbr_test+0x34>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:41
bfc00ac8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:43
bfc00acc:	3c090023 	lui	t1,0x23
bfc00ad0:	35294500 	ori	t1,t1,0x4500
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:44
bfc00ad4:	40891000 	mtc0	t1,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:45
bfc00ad8:	3c0a0078 	lui	t2,0x78
bfc00adc:	354a9a01 	ori	t2,t2,0x9a01
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:46
bfc00ae0:	408a1800 	mtc0	t2,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:47
bfc00ae4:	3c0a0078 	lui	t2,0x78
bfc00ae8:	354a9a00 	ori	t2,t2,0x9a00
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:48
bfc00aec:	40885000 	mtc0	t0,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:49
bfc00af0:	40820000 	mtc0	v0,c0_index
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:50
bfc00af4:	42000002 	tlbwi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:51
bfc00af8:	240bffff 	li	t3,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:52
bfc00afc:	408b5000 	mtc0	t3,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:53
bfc00b00:	408b1000 	mtc0	t3,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:54
bfc00b04:	408b1800 	mtc0	t3,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:55
bfc00b08:	42000001 	tlbr
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:56
bfc00b0c:	40045000 	mfc0	a0,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:57
bfc00b10:	40051000 	mfc0	a1,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:58
bfc00b14:	40061800 	mfc0	a2,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:59
bfc00b18:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:60
bfc00b1c:	14880044 	bne	a0,t0,bfc00c30 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:61
bfc00b20:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:62
bfc00b24:	14a90042 	bne	a1,t1,bfc00c30 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:63
bfc00b28:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:64
bfc00b2c:	14ca0040 	bne	a2,t2,bfc00c30 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:65
bfc00b30:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:66
bfc00b34:	24420001 	addiu	v0,v0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:67
bfc00b38:	25082000 	addiu	t0,t0,8192
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:68
bfc00b3c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:70
bfc00b40:	3c090023 	lui	t1,0x23
bfc00b44:	35294501 	ori	t1,t1,0x4501
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:71
bfc00b48:	40891000 	mtc0	t1,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:72
bfc00b4c:	3c090023 	lui	t1,0x23
bfc00b50:	35294500 	ori	t1,t1,0x4500
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:73
bfc00b54:	3c0a0078 	lui	t2,0x78
bfc00b58:	354a9a1c 	ori	t2,t2,0x9a1c
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:74
bfc00b5c:	408a1800 	mtc0	t2,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:75
bfc00b60:	40885000 	mtc0	t0,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:76
bfc00b64:	40820000 	mtc0	v0,c0_index
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:77
bfc00b68:	42000002 	tlbwi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:78
bfc00b6c:	240bffff 	li	t3,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:79
bfc00b70:	408b5000 	mtc0	t3,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:80
bfc00b74:	408b1000 	mtc0	t3,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:81
bfc00b78:	408b1800 	mtc0	t3,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:82
bfc00b7c:	42000001 	tlbr
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:83
bfc00b80:	40045000 	mfc0	a0,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:84
bfc00b84:	40051000 	mfc0	a1,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:85
bfc00b88:	40061800 	mfc0	a2,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:86
bfc00b8c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:87
bfc00b90:	14880027 	bne	a0,t0,bfc00c30 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:88
bfc00b94:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:89
bfc00b98:	14a90025 	bne	a1,t1,bfc00c30 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:90
bfc00b9c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:91
bfc00ba0:	14ca0023 	bne	a2,t2,bfc00c30 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:92
bfc00ba4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:93
bfc00ba8:	24420001 	addiu	v0,v0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:94
bfc00bac:	25082000 	addiu	t0,t0,8192
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:95
bfc00bb0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:97
bfc00bb4:	3c090023 	lui	t1,0x23
bfc00bb8:	35294505 	ori	t1,t1,0x4505
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:98
bfc00bbc:	40891000 	mtc0	t1,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:99
bfc00bc0:	3c0a0078 	lui	t2,0x78
bfc00bc4:	354a9a11 	ori	t2,t2,0x9a11
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:100
bfc00bc8:	408a1800 	mtc0	t2,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:101
bfc00bcc:	40885000 	mtc0	t0,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:102
bfc00bd0:	40820000 	mtc0	v0,c0_index
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:103
bfc00bd4:	42000002 	tlbwi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:104
bfc00bd8:	240bffff 	li	t3,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:105
bfc00bdc:	408b5000 	mtc0	t3,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:106
bfc00be0:	408b1000 	mtc0	t3,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:107
bfc00be4:	408b1800 	mtc0	t3,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:108
bfc00be8:	42000001 	tlbr
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:109
bfc00bec:	40045000 	mfc0	a0,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:110
bfc00bf0:	40051000 	mfc0	a1,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:111
bfc00bf4:	40061800 	mfc0	a2,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:112
bfc00bf8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:113
bfc00bfc:	1488000c 	bne	a0,t0,bfc00c30 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:114
bfc00c00:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:115
bfc00c04:	14a9000a 	bne	a1,t1,bfc00c30 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:116
bfc00c08:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:117
bfc00c0c:	14ca0008 	bne	a2,t2,bfc00c30 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:118
bfc00c10:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:119
bfc00c14:	24420001 	addiu	v0,v0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:120
bfc00c18:	25082000 	addiu	t0,t0,8192
	...
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:125
bfc00c24:	16400002 	bnez	s2,bfc00c30 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:126
bfc00c28:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:128
bfc00c2c:	26730001 	addiu	s3,s3,1

bfc00c30 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:131
bfc00c30:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:132
bfc00c34:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:133
bfc00c38:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:134
bfc00c3c:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n5_tlbwi_tlbr.S:135
bfc00c40:	00000000 	nop
	...

bfc00c50 <n6_tlbp_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:6
bfc00c50:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:7
bfc00c54:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:8
bfc00c58:	3c0a0001 	lui	t2,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:12
bfc00c5c:	40800000 	mtc0	zero,c0_index
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:13
bfc00c60:	3c08bfc0 	lui	t0,0xbfc0
bfc00c64:	35084010 	ori	t0,t0,0x4010
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:14
bfc00c68:	40885000 	mtc0	t0,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:15
bfc00c6c:	42000008 	tlbp
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:16
bfc00c70:	40040000 	mfc0	a0,c0_index
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:17
bfc00c74:	24080002 	li	t0,2
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:18
bfc00c78:	15040018 	bne	t0,a0,bfc00cdc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:19
bfc00c7c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:21
bfc00c80:	40800000 	mtc0	zero,c0_index
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:22
bfc00c84:	3c08bfc1 	lui	t0,0xbfc1
bfc00c88:	3508e011 	ori	t0,t0,0xe011
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:23
bfc00c8c:	40885000 	mtc0	t0,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:24
bfc00c90:	42000008 	tlbp
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:25
bfc00c94:	40040000 	mfc0	a0,c0_index
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:26
bfc00c98:	2408000f 	li	t0,15
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:27
bfc00c9c:	1504000f 	bne	t0,a0,bfc00cdc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:28
bfc00ca0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:30
bfc00ca4:	40800000 	mtc0	zero,c0_index
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:31
bfc00ca8:	3c08bfc3 	lui	t0,0xbfc3
bfc00cac:	3508c013 	ori	t0,t0,0xc013
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:32
bfc00cb0:	40885000 	mtc0	t0,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:33
bfc00cb4:	42000008 	tlbp
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:34
bfc00cb8:	40040000 	mfc0	a0,c0_index
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:35
bfc00cbc:	000427c2 	srl	a0,a0,0x1f
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:36
bfc00cc0:	24080001 	li	t0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:37
bfc00cc4:	15040005 	bne	t0,a0,bfc00cdc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:38
bfc00cc8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:40
bfc00ccc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:42
bfc00cd0:	16400002 	bnez	s2,bfc00cdc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:43
bfc00cd4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:45
bfc00cd8:	26730001 	addiu	s3,s3,1

bfc00cdc <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:48
bfc00cdc:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:49
bfc00ce0:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:50
bfc00ce4:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:51
bfc00ce8:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n6_tlbp.S:52
bfc00cec:	00000000 	nop

bfc00cf0 <n7_tlbwr_tlbr_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:6
bfc00cf0:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:7
bfc00cf4:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:8
bfc00cf8:	3c0a0001 	lui	t2,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:11
bfc00cfc:	3c090023 	lui	t1,0x23
bfc00d00:	35294500 	ori	t1,t1,0x4500
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:12
bfc00d04:	40891000 	mtc0	t1,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:13
bfc00d08:	3c0a0078 	lui	t2,0x78
bfc00d0c:	354a9a00 	ori	t2,t2,0x9a00
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:14
bfc00d10:	408a1800 	mtc0	t2,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:15
bfc00d14:	24020000 	li	v0,0
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:16
bfc00d18:	2403000d 	li	v1,13
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:17
bfc00d1c:	3c08bfc0 	lui	t0,0xbfc0
bfc00d20:	35080010 	ori	t0,t0,0x10
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:20
bfc00d24:	40885000 	mtc0	t0,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:21
bfc00d28:	40820000 	mtc0	v0,c0_index
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:22
bfc00d2c:	42000006 	tlbwr
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:23
bfc00d30:	240bffff 	li	t3,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:24
bfc00d34:	408b5000 	mtc0	t3,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:25
bfc00d38:	408b1000 	mtc0	t3,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:26
bfc00d3c:	408b1800 	mtc0	t3,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:27
bfc00d40:	42000001 	tlbr
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:28
bfc00d44:	40045000 	mfc0	a0,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:29
bfc00d48:	40051000 	mfc0	a1,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:30
bfc00d4c:	40061800 	mfc0	a2,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:31
bfc00d50:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:32
bfc00d54:	14880062 	bne	a0,t0,bfc00ee0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:33
bfc00d58:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:34
bfc00d5c:	14a90060 	bne	a1,t1,bfc00ee0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:35
bfc00d60:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:36
bfc00d64:	14ca005e 	bne	a2,t2,bfc00ee0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:37
bfc00d68:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:38
bfc00d6c:	24420001 	addiu	v0,v0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:39
bfc00d70:	25082000 	addiu	t0,t0,8192
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:40
bfc00d74:	1443ffeb 	bne	v0,v1,bfc00d24 <n7_tlbwr_tlbr_test+0x34>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:41
bfc00d78:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:43
bfc00d7c:	3c090023 	lui	t1,0x23
bfc00d80:	35294500 	ori	t1,t1,0x4500
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:44
bfc00d84:	40891000 	mtc0	t1,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:45
bfc00d88:	3c0a0078 	lui	t2,0x78
bfc00d8c:	354a9a01 	ori	t2,t2,0x9a01
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:46
bfc00d90:	408a1800 	mtc0	t2,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:47
bfc00d94:	3c0a0078 	lui	t2,0x78
bfc00d98:	354a9a00 	ori	t2,t2,0x9a00
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:48
bfc00d9c:	40885000 	mtc0	t0,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:49
bfc00da0:	40820000 	mtc0	v0,c0_index
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:50
bfc00da4:	42000006 	tlbwr
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:51
bfc00da8:	240bffff 	li	t3,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:52
bfc00dac:	408b5000 	mtc0	t3,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:53
bfc00db0:	408b1000 	mtc0	t3,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:54
bfc00db4:	408b1800 	mtc0	t3,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:55
bfc00db8:	42000001 	tlbr
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:56
bfc00dbc:	40045000 	mfc0	a0,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:57
bfc00dc0:	40051000 	mfc0	a1,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:58
bfc00dc4:	40061800 	mfc0	a2,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:59
bfc00dc8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:60
bfc00dcc:	14880044 	bne	a0,t0,bfc00ee0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:61
bfc00dd0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:62
bfc00dd4:	14a90042 	bne	a1,t1,bfc00ee0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:63
bfc00dd8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:64
bfc00ddc:	14ca0040 	bne	a2,t2,bfc00ee0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:65
bfc00de0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:66
bfc00de4:	24420001 	addiu	v0,v0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:67
bfc00de8:	25082000 	addiu	t0,t0,8192
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:68
bfc00dec:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:70
bfc00df0:	3c090023 	lui	t1,0x23
bfc00df4:	35294501 	ori	t1,t1,0x4501
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:71
bfc00df8:	40891000 	mtc0	t1,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:72
bfc00dfc:	3c090023 	lui	t1,0x23
bfc00e00:	35294500 	ori	t1,t1,0x4500
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:73
bfc00e04:	3c0a0078 	lui	t2,0x78
bfc00e08:	354a9a1c 	ori	t2,t2,0x9a1c
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:74
bfc00e0c:	408a1800 	mtc0	t2,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:75
bfc00e10:	40885000 	mtc0	t0,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:76
bfc00e14:	40820000 	mtc0	v0,c0_index
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:77
bfc00e18:	42000006 	tlbwr
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:78
bfc00e1c:	240bffff 	li	t3,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:79
bfc00e20:	408b5000 	mtc0	t3,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:80
bfc00e24:	408b1000 	mtc0	t3,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:81
bfc00e28:	408b1800 	mtc0	t3,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:82
bfc00e2c:	42000001 	tlbr
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:83
bfc00e30:	40045000 	mfc0	a0,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:84
bfc00e34:	40051000 	mfc0	a1,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:85
bfc00e38:	40061800 	mfc0	a2,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:86
bfc00e3c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:87
bfc00e40:	14880027 	bne	a0,t0,bfc00ee0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:88
bfc00e44:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:89
bfc00e48:	14a90025 	bne	a1,t1,bfc00ee0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:90
bfc00e4c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:91
bfc00e50:	14ca0023 	bne	a2,t2,bfc00ee0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:92
bfc00e54:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:93
bfc00e58:	24420001 	addiu	v0,v0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:94
bfc00e5c:	25082000 	addiu	t0,t0,8192
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:95
bfc00e60:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:97
bfc00e64:	3c090023 	lui	t1,0x23
bfc00e68:	35294505 	ori	t1,t1,0x4505
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:98
bfc00e6c:	40891000 	mtc0	t1,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:99
bfc00e70:	3c0a0078 	lui	t2,0x78
bfc00e74:	354a9a11 	ori	t2,t2,0x9a11
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:100
bfc00e78:	408a1800 	mtc0	t2,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:101
bfc00e7c:	40885000 	mtc0	t0,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:102
bfc00e80:	40820000 	mtc0	v0,c0_index
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:103
bfc00e84:	42000006 	tlbwr
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:104
bfc00e88:	240bffff 	li	t3,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:105
bfc00e8c:	408b5000 	mtc0	t3,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:106
bfc00e90:	408b1000 	mtc0	t3,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:107
bfc00e94:	408b1800 	mtc0	t3,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:108
bfc00e98:	42000001 	tlbr
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:109
bfc00e9c:	40045000 	mfc0	a0,c0_entryhi
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:110
bfc00ea0:	40051000 	mfc0	a1,c0_entrylo
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:111
bfc00ea4:	40061800 	mfc0	a2,$3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:112
bfc00ea8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:113
bfc00eac:	1488000c 	bne	a0,t0,bfc00ee0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:114
bfc00eb0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:115
bfc00eb4:	14a9000a 	bne	a1,t1,bfc00ee0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:116
bfc00eb8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:117
bfc00ebc:	14ca0008 	bne	a2,t2,bfc00ee0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:118
bfc00ec0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:119
bfc00ec4:	24420001 	addiu	v0,v0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:120
bfc00ec8:	25082000 	addiu	t0,t0,8192
	...
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:125
bfc00ed4:	16400002 	bnez	s2,bfc00ee0 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:126
bfc00ed8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:128
bfc00edc:	26730001 	addiu	s3,s3,1

bfc00ee0 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:131
bfc00ee0:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:132
bfc00ee4:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:133
bfc00ee8:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:134
bfc00eec:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n7_tlbwr_tlbr.S:135
bfc00ef0:	00000000 	nop
	...

bfc00f00 <n8_load_tlb_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n8_load_tlb_ex.S:6
bfc00f00:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n8_load_tlb_ex.S:7
bfc00f04:	24120001 	li	s2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n8_load_tlb_ex.S:8
bfc00f08:	3c0a0001 	lui	t2,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n8_load_tlb_ex.S:12
bfc00f0c:	3c081234 	lui	t0,0x1234
bfc00f10:	35085678 	ori	t0,t0,0x5678
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n8_load_tlb_ex.S:13
bfc00f14:	3c04bfcd 	lui	a0,0xbfcd
bfc00f18:	34840080 	ori	a0,a0,0x80
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n8_load_tlb_ex.S:14
bfc00f1c:	3c051111 	lui	a1,0x1111
bfc00f20:	34a51080 	ori	a1,a1,0x1080
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n8_load_tlb_ex.S:15
bfc00f24:	ac880000 	sw	t0,0(a0)

bfc00f28 <load_tlb_pc_1>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n8_load_tlb_ex.S:18
bfc00f28:	8ca90000 	lw	t1,0(a1)
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n8_load_tlb_ex.S:19
bfc00f2c:	10000009 	b	bfc00f54 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n8_load_tlb_ex.S:20
bfc00f30:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n8_load_tlb_ex.S:21
bfc00f34:	8ca90000 	lw	t1,0(a1)
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n8_load_tlb_ex.S:22
bfc00f38:	15280006 	bne	t1,t0,bfc00f54 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n8_load_tlb_ex.S:23
bfc00f3c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n8_load_tlb_ex.S:25
bfc00f40:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n8_load_tlb_ex.S:27
bfc00f44:	24091111 	li	t1,4369
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n8_load_tlb_ex.S:28
bfc00f48:	16490002 	bne	s2,t1,bfc00f54 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n8_load_tlb_ex.S:29
bfc00f4c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n8_load_tlb_ex.S:31
bfc00f50:	26730001 	addiu	s3,s3,1

bfc00f54 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n8_load_tlb_ex.S:34
bfc00f54:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n8_load_tlb_ex.S:35
bfc00f58:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n8_load_tlb_ex.S:36
bfc00f5c:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n8_load_tlb_ex.S:37
bfc00f60:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n8_load_tlb_ex.S:38
bfc00f64:	00000000 	nop
	...

bfc00f70 <n9_store_tlb_ex_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n9_store_tlb_ex.S:6
bfc00f70:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n9_store_tlb_ex.S:7
bfc00f74:	24120002 	li	s2,2
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n9_store_tlb_ex.S:8
bfc00f78:	3c0a0001 	lui	t2,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n9_store_tlb_ex.S:12
bfc00f7c:	3c082345 	lui	t0,0x2345
bfc00f80:	35086789 	ori	t0,t0,0x6789
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n9_store_tlb_ex.S:13
bfc00f84:	3c04bfcd 	lui	a0,0xbfcd
bfc00f88:	34841040 	ori	a0,a0,0x1040
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n9_store_tlb_ex.S:14
bfc00f8c:	3c052222 	lui	a1,0x2222
bfc00f90:	34a52040 	ori	a1,a1,0x2040

bfc00f94 <store_tlb_pc_1>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n9_store_tlb_ex.S:17
bfc00f94:	aca80000 	sw	t0,0(a1)
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n9_store_tlb_ex.S:18
bfc00f98:	1000000b 	b	bfc00fc8 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n9_store_tlb_ex.S:19
bfc00f9c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n9_store_tlb_ex.S:20
bfc00fa0:	aca80000 	sw	t0,0(a1)
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n9_store_tlb_ex.S:21
bfc00fa4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n9_store_tlb_ex.S:22
bfc00fa8:	8c890000 	lw	t1,0(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n9_store_tlb_ex.S:23
bfc00fac:	15280006 	bne	t1,t0,bfc00fc8 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n9_store_tlb_ex.S:24
bfc00fb0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n9_store_tlb_ex.S:26
bfc00fb4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n9_store_tlb_ex.S:28
bfc00fb8:	24092222 	li	t1,8738
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n9_store_tlb_ex.S:29
bfc00fbc:	16490002 	bne	s2,t1,bfc00fc8 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n9_store_tlb_ex.S:30
bfc00fc0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n9_store_tlb_ex.S:32
bfc00fc4:	26730001 	addiu	s3,s3,1

bfc00fc8 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n9_store_tlb_ex.S:35
bfc00fc8:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n9_store_tlb_ex.S:36
bfc00fcc:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n9_store_tlb_ex.S:37
bfc00fd0:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n9_store_tlb_ex.S:38
bfc00fd4:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/tlb_func/inst/n9_store_tlb_ex.S:39
bfc00fd8:	00000000 	nop
bfc00fdc:	00000000 	nop
bfc00fe0:	9c0f7f70 	0x9c0f7f70
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
  14:	00000704 	0x704
	...
  20:	0000001c 	0x1c
  24:	00680002 	0x680002
  28:	00040000 	sll	zero,a0,0x0
  2c:	00000000 	nop
  30:	bfc00710 	0xbfc00710
  34:	0000006c 	0x6c
	...
  40:	0000001c 	0x1c
  44:	00e00002 	0xe00002
  48:	00040000 	sll	zero,a0,0x0
  4c:	00000000 	nop
  50:	bfc00780 	0xbfc00780
  54:	000000a8 	0xa8
	...
  60:	0000001c 	0x1c
  64:	01500002 	0x1500002
  68:	00040000 	sll	zero,a0,0x0
  6c:	00000000 	nop
  70:	bfc00830 	0xbfc00830
  74:	000000a8 	0xa8
	...
  80:	0000001c 	0x1c
  84:	01c20002 	0x1c20002
  88:	00040000 	sll	zero,a0,0x0
  8c:	00000000 	nop
  90:	bfc008e0 	0xbfc008e0
  94:	000000ac 	0xac
	...
  a0:	0000001c 	0x1c
  a4:	02350002 	0x2350002
  a8:	00040000 	sll	zero,a0,0x0
  ac:	00000000 	nop
  b0:	bfc00990 	0xbfc00990
  b4:	000000ac 	0xac
	...
  c0:	0000001c 	0x1c
  c4:	02a80002 	0x2a80002
  c8:	00040000 	sll	zero,a0,0x0
  cc:	00000000 	nop
  d0:	bfc00a40 	0xbfc00a40
  d4:	00000204 	0x204
	...
  e0:	0000001c 	0x1c
  e4:	031d0002 	0x31d0002
  e8:	00040000 	sll	zero,a0,0x0
  ec:	00000000 	nop
  f0:	bfc00c50 	0xbfc00c50
  f4:	000000a0 	0xa0
	...
 100:	0000001c 	0x1c
 104:	038c0002 	0x38c0002
 108:	00040000 	sll	zero,a0,0x0
 10c:	00000000 	nop
 110:	bfc00cf0 	0xbfc00cf0
 114:	00000204 	0x204
	...
 120:	0000001c 	0x1c
 124:	04010002 	b	130 <data_size+0x120>
 128:	00040000 	sll	zero,a0,0x0
 12c:	00000000 	nop
 130:	bfc00f00 	0xbfc00f00
 134:	00000068 	0x68
	...
 140:	0000001c 	0x1c
 144:	04770002 	0x4770002
 148:	00040000 	sll	zero,a0,0x0
 14c:	00000000 	nop
 150:	bfc00f70 	0xbfc00f70
 154:	0000006c 	0x6c
	...

Disassembly of section .pdr:

00000000 <.pdr>:
   0:	bfc00710 	0xbfc00710
	...
  18:	0000001d 	0x1d
  1c:	0000001f 	0x1f
  20:	bfc00780 	0xbfc00780
	...
  38:	0000001d 	0x1d
  3c:	0000001f 	0x1f
  40:	bfc00830 	0xbfc00830
	...
  58:	0000001d 	0x1d
  5c:	0000001f 	0x1f
  60:	bfc008e0 	0xbfc008e0
	...
  78:	0000001d 	0x1d
  7c:	0000001f 	0x1f
  80:	bfc00990 	0xbfc00990
	...
  98:	0000001d 	0x1d
  9c:	0000001f 	0x1f
  a0:	bfc00a40 	0xbfc00a40
	...
  b8:	0000001d 	0x1d
  bc:	0000001f 	0x1f
  c0:	bfc00c50 	0xbfc00c50
	...
  d8:	0000001d 	0x1d
  dc:	0000001f 	0x1f
  e0:	bfc00cf0 	0xbfc00cf0
	...
  f8:	0000001d 	0x1d
  fc:	0000001f 	0x1f
 100:	bfc00f00 	0xbfc00f00
	...
 118:	0000001d 	0x1d
 11c:	0000001f 	0x1f
 120:	bfc00f70 	0xbfc00f70
	...
 138:	0000001d 	0x1d
 13c:	0000001f 	0x1f

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000147 	0x147
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
  30:	e5080117 	swc1	$f8,279(t0)
  34:	4b4b4d83 	c2	0x14b4d83
  38:	024b4b4b 	0x24b4b4b
  3c:	4b1601a8 	c2	0x11601a8
  40:	4b4b4b4b 	c2	0x14b4b4b
  44:	4c4b4b4d 	0x4c4b4b4d
  48:	4b4b4b4b 	c2	0x14b4b4b
  4c:	1801e402 	0x1801e402
  50:	834b4b83 	lb	t3,19331(k0)
  54:	4b834b4b 	c2	0x1834b4b
  58:	4b4b834b 	c2	0x14b834b
  5c:	4b834b4c 	c2	0x1834b4c
  60:	4b83834b 	c2	0x183834b
  64:	4b834b83 	c2	0x1834b83
  68:	4c4b4b4b 	0x4c4b4b4b
  6c:	4b834b4d 	c2	0x1834b4d
  70:	4b83834b 	c2	0x183834b
  74:	4b834b83 	c2	0x1834b83
  78:	4c4b4b4b 	0x4c4b4b4b
  7c:	4b834b4d 	c2	0x1834b4d
  80:	4b834b83 	c2	0x1834b83
  84:	834b8383 	lb	t3,-31869(k0)
  88:	4b4b834b 	c2	0x14b834b
  8c:	024c4b4b 	0x24c4b4b
  90:	4b831630 	c2	0x1831630
  94:	4b4b834b 	c2	0x14b834b
  98:	834b4b83 	lb	t3,19331(k0)
  9c:	4b4c4b4b 	c2	0x14c4b4b
  a0:	4c4b4b83 	0x4c4b4b83
  a4:	83834b4b 	lb	v1,19275(gp)
  a8:	834b4b4b 	lb	t3,19275(k0)
  ac:	4b4b834b 	c2	0x14b834b
  b0:	834b4e4c 	lb	t3,20044(k0)
  b4:	4b834b4b 	c2	0x1834b4b
  b8:	4b4b4c4b 	c2	0x14b4c4b
  bc:	834b8383 	lb	t3,-31869(k0)
  c0:	4c4b834b 	0x4c4b834b
  c4:	83834b4d 	lb	v1,19277(gp)
  c8:	834b4b4b 	lb	t3,19275(k0)
  cc:	4b4b834b 	c2	0x14b834b
  d0:	834b4e4c 	lb	t3,20044(k0)
  d4:	4b4c4b4b 	c2	0x14c4b4b
  d8:	4b834b83 	c2	0x1834b83
  dc:	834b8383 	lb	t3,-31869(k0)
  e0:	4b4b834b 	c2	0x14b834b
  e4:	4b4b4b4b 	c2	0x14b4b4b
  e8:	4b4e4c4b 	c2	0x14e4c4b
  ec:	4f4b4b4b 	c3	0x14b4b4b
  f0:	84838383 	lh	v1,-31869(a0)
  f4:	4c838383 	0x4c838383
  f8:	4b4b4b4b 	c2	0x14b4b4b
  fc:	4b4b4b4c 	c2	0x14b4b4c
 100:	4b4b4b4b 	c2	0x14b4b4b
 104:	4b4b4b4b 	c2	0x14b4b4b
 108:	4b4b4b4b 	c2	0x14b4b4b
 10c:	4b4b4b4b 	c2	0x14b4b4b
 110:	4b4b4b4b 	c2	0x14b4b4b
 114:	4c4b4b4b 	0x4c4b4b4b
 118:	4b4b4b4b 	c2	0x14b4b4b
 11c:	4b4b4b4b 	c2	0x14b4b4b
 120:	4e4b4b4b 	c3	0x4b4b4b
 124:	834c4b83 	lb	t4,19331(k0)
 128:	4b848483 	c2	0x1848483
 12c:	4c4b4b4b 	0x4c4b4b4b
 130:	4b838383 	c2	0x1838383
 134:	834d4b4d 	lb	t5,19277(k0)
 138:	4b4b4b4b 	c2	0x14b4b4b
 13c:	4b834b83 	c2	0x1834b83
 140:	4b4b4c4c 	c2	0x14b4c4c
 144:	04024b4b 	0x4024b4b
 148:	53010100 	0x53010100
 14c:	02000000 	0x2000000
 150:	00002900 	sll	a1,zero,0x4
 154:	fb010100 	0xfb010100
 158:	01000d0e 	0x1000d0e
 15c:	00010101 	0x10101
 160:	00010000 	sll	zero,at,0x0
 164:	6e000100 	0x6e000100
 168:	665f3031 	0x665f3031
 16c:	68637465 	0x68637465
 170:	626c745f 	0x626c745f
 174:	2e78655f 	sltiu	t8,s3,25951
 178:	00000053 	0x53
 17c:	05000000 	bltz	t0,180 <data_size+0x170>
 180:	c0071002 	lwc0	$7,4098(zero)
 184:	4b4b17bf 	c2	0x14b17bf
 188:	834b834e 	lb	t3,-31922(k0)
 18c:	834d4b4b 	lb	t5,19275(k0)
 190:	4d4b4b4b 	0x4d4b4b4b
 194:	4c4b4b4c 	0x4c4b4b4c
 198:	4b4b4b4d 	c2	0x14b4b4d
 19c:	0004024b 	0x4024b
 1a0:	005d0101 	0x5d0101
 1a4:	00020000 	sll	zero,v0,0x0
 1a8:	00000021 	move	zero,zero
 1ac:	0efb0101 	jal	bec0404 <data_size+0xbec03f4>
 1b0:	0101000d 	break	0x101
 1b4:	00000101 	0x101
 1b8:	00000100 	sll	zero,zero,0x4
 1bc:	316e0001 	andi	t6,t3,0x1
 1c0:	646e695f 	0x646e695f
 1c4:	532e7865 	0x532e7865
 1c8:	00000000 	nop
 1cc:	02050000 	0x2050000
 1d0:	bfc00780 	0xbfc00780
 1d4:	4d4b4b17 	0x4d4b4b17
 1d8:	4b4b4b4b 	c2	0x14b4b4b
 1dc:	4b4b4b4b 	c2	0x14b4b4b
 1e0:	4b4b4b4b 	c2	0x14b4b4b
 1e4:	4b4b4b4b 	c2	0x14b4b4b
 1e8:	4b4b4b4b 	c2	0x14b4b4b
 1ec:	4b4b4b4b 	c2	0x14b4b4b
 1f0:	4b4b4b4b 	c2	0x14b4b4b
 1f4:	4b4c4c4b 	c2	0x14c4c4b
 1f8:	4b4b4d4c 	c2	0x14b4d4c
 1fc:	04024b4b 	0x4024b4b
 200:	5e010100 	0x5e010100
 204:	02000000 	0x2000000
 208:	00002300 	sll	a0,zero,0xc
 20c:	fb010100 	0xfb010100
 210:	01000d0e 	0x1000d0e
 214:	00010101 	0x10101
 218:	00010000 	sll	zero,at,0x0
 21c:	6e000100 	0x6e000100
 220:	6e655f32 	0x6e655f32
 224:	68797274 	0x68797274
 228:	00532e69 	0x532e69
 22c:	00000000 	nop
 230:	30020500 	andi	v0,zero,0x500
 234:	17bfc008 	bne	sp,ra,ffff0258 <_etext+0x403ef260>
 238:	4b4d4b4b 	c2	0x14d4b4b
 23c:	4b4b4b4b 	c2	0x14b4b4b
 240:	4b834b4b 	c2	0x1834b4b
 244:	4b4b4b4b 	c2	0x14b4b4b
 248:	4b4b4b4b 	c2	0x14b4b4b
 24c:	4b4b4b4b 	c2	0x14b4b4b
 250:	4b4b4b4b 	c2	0x14b4b4b
 254:	4c4b4b4b 	0x4c4b4b4b
 258:	4d4c4b4c 	0x4d4c4b4c
 25c:	4b4b4b4b 	c2	0x14b4b4b
 260:	01000402 	0x1000402
 264:	00005f01 	0x5f01
 268:	24000200 	li	zero,512
 26c:	01000000 	0x1000000
 270:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
 274:	01010100 	0x1010100
 278:	00000001 	0x1
 27c:	01000001 	0x1000001
 280:	5f336e00 	0x5f336e00
 284:	72746e65 	0x72746e65
 288:	306f6c79 	andi	t7,v1,0x6c79
 28c:	0000532e 	0x532e
 290:	00000000 	nop
 294:	08e00205 	j	3800814 <data_size+0x3800804>
 298:	4b17bfc0 	c2	0x117bfc0
 29c:	4b834d4b 	c2	0x1834d4b
 2a0:	4b4b4b4b 	c2	0x14b4b4b
 2a4:	4b4b4b4b 	c2	0x14b4b4b
 2a8:	4b4b4b4b 	c2	0x14b4b4b
 2ac:	4b4b4b4b 	c2	0x14b4b4b
 2b0:	4b4b834b 	c2	0x14b834b
 2b4:	4b4b4b4b 	c2	0x14b4b4b
 2b8:	4c4c4b4b 	0x4c4c4b4b
 2bc:	4b4d4c4b 	c2	0x14d4c4b
 2c0:	024b4b4b 	0x24b4b4b
 2c4:	01010004 	sllv	zero,at,t0
 2c8:	0000005f 	0x5f
 2cc:	00240002 	0x240002
 2d0:	01010000 	0x1010000
 2d4:	000d0efb 	0xd0efb
 2d8:	01010101 	0x1010101
 2dc:	01000000 	0x1000000
 2e0:	00010000 	sll	zero,at,0x0
 2e4:	655f346e 	0x655f346e
 2e8:	7972746e 	0x7972746e
 2ec:	2e316f6c 	sltiu	s1,s1,28524
 2f0:	00000053 	0x53
 2f4:	05000000 	bltz	t0,2f8 <data_size+0x2e8>
 2f8:	c0099002 	lwc0	$9,-28670(zero)
 2fc:	4b4b17bf 	c2	0x14b17bf
 300:	4b4b834d 	c2	0x14b834d
 304:	4b4b4b4b 	c2	0x14b4b4b
 308:	4b4b4b4b 	c2	0x14b4b4b
 30c:	4b4b4b4b 	c2	0x14b4b4b
 310:	4b4b4b4b 	c2	0x14b4b4b
 314:	4b4b4b83 	c2	0x14b4b83
 318:	4b4b4b4b 	c2	0x14b4b4b
 31c:	4b4c4c4b 	c2	0x14c4c4b
 320:	4b4b4d4c 	c2	0x14b4d4c
 324:	04024b4b 	0x4024b4b
 328:	ae010100 	sw	at,256(s0)
 32c:	02000000 	0x2000000
 330:	00002600 	sll	a0,zero,0x18
 334:	fb010100 	0xfb010100
 338:	01000d0e 	0x1000d0e
 33c:	00010101 	0x10101
 340:	00010000 	sll	zero,at,0x0
 344:	6e000100 	0x6e000100
 348:	6c745f35 	0x6c745f35
 34c:	5f697762 	0x5f697762
 350:	72626c74 	0x72626c74
 354:	0000532e 	0x532e
 358:	00000000 	nop
 35c:	0a400205 	j	9000814 <data_size+0x9000804>
 360:	4b17bfc0 	c2	0x117bfc0
 364:	4b834d4b 	c2	0x1834d4b
 368:	4b4b4b83 	c2	0x14b4b83
 36c:	4b4b4b85 	c2	0x14b4b85
 370:	4b4b4b4b 	c2	0x14b4b4b
 374:	4b4b4b4b 	c2	0x14b4b4b
 378:	4b4b4b4b 	c2	0x14b4b4b
 37c:	4b4b4b4b 	c2	0x14b4b4b
 380:	834c4b4b 	lb	t4,19275(k0)
 384:	834b834b 	lb	t3,-31925(k0)
 388:	4b4b4b4b 	c2	0x14b4b4b
 38c:	4b4b4b4b 	c2	0x14b4b4b
 390:	4b4b4b4b 	c2	0x14b4b4b
 394:	4b4b4b4b 	c2	0x14b4b4b
 398:	4b4b4b4b 	c2	0x14b4b4b
 39c:	834b834c 	lb	t3,-31924(k0)
 3a0:	4b4b4b83 	c2	0x14b4b83
 3a4:	4b4b4b4b 	c2	0x14b4b4b
 3a8:	4b4b4b4b 	c2	0x14b4b4b
 3ac:	4b4b4b4b 	c2	0x14b4b4b
 3b0:	4b4b4b4b 	c2	0x14b4b4b
 3b4:	834c4b4b 	lb	t4,19275(k0)
 3b8:	4b4b834b 	c2	0x14b834b
 3bc:	4b4b4b4b 	c2	0x14b4b4b
 3c0:	4b4b4b4b 	c2	0x14b4b4b
 3c4:	4b4b4b4b 	c2	0x14b4b4b
 3c8:	4b4b4b4b 	c2	0x14b4b4b
 3cc:	4c4b4b4b 	0x4c4b4b4b
 3d0:	4d4c4b4c 	0x4d4c4b4c
 3d4:	4b4b4b4b 	c2	0x14b4b4b
 3d8:	01000402 	0x1000402
 3dc:	00005701 	0x5701
 3e0:	20000200 	addi	zero,zero,512
 3e4:	01000000 	0x1000000
 3e8:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
 3ec:	01010100 	0x1010100
 3f0:	00000001 	0x1
 3f4:	01000001 	0x1000001
 3f8:	5f366e00 	0x5f366e00
 3fc:	70626c74 	0x70626c74
 400:	0000532e 	0x532e
 404:	00000000 	nop
 408:	0c500205 	jal	1400814 <data_size+0x1400804>
 40c:	4b17bfc0 	c2	0x117bfc0
 410:	834b4e4b 	lb	t3,20043(k0)
 414:	4b4b4b4b 	c2	0x14b4b4b
 418:	834b4c4b 	lb	t3,19531(k0)
 41c:	4b4b4b4b 	c2	0x14b4b4b
 420:	834b4c4b 	lb	t3,19531(k0)
 424:	4b4b4b4b 	c2	0x14b4b4b
 428:	4c4c4b4b 	0x4c4c4b4b
 42c:	4b4d4c4b 	c2	0x14d4c4b
 430:	024b4b4b 	0x24b4b4b
 434:	01010004 	sllv	zero,at,t0
 438:	000000ae 	0xae
 43c:	00260002 	0x260002
 440:	01010000 	0x1010000
 444:	000d0efb 	0xd0efb
 448:	01010101 	0x1010101
 44c:	01000000 	0x1000000
 450:	00010000 	sll	zero,at,0x0
 454:	745f376e 	jalx	17cddb8 <data_size+0x17cdda8>
 458:	7277626c 	0x7277626c
 45c:	626c745f 	0x626c745f
 460:	00532e72 	0x532e72
 464:	00000000 	nop
 468:	f0020500 	0xf0020500
 46c:	17bfc00c 	bne	sp,ra,ffff04a0 <_etext+0x403ef4a8>
 470:	834d4b4b 	lb	t5,19275(k0)
 474:	4b4b834b 	c2	0x14b834b
 478:	4b4b854b 	c2	0x14b854b
 47c:	4b4b4b4b 	c2	0x14b4b4b
 480:	4b4b4b4b 	c2	0x14b4b4b
 484:	4b4b4b4b 	c2	0x14b4b4b
 488:	4b4b4b4b 	c2	0x14b4b4b
 48c:	4c4b4b4b 	0x4c4b4b4b
 490:	4b834b83 	c2	0x1834b83
 494:	4b4b4b83 	c2	0x14b4b83
 498:	4b4b4b4b 	c2	0x14b4b4b
 49c:	4b4b4b4b 	c2	0x14b4b4b
 4a0:	4b4b4b4b 	c2	0x14b4b4b
 4a4:	4b4b4b4b 	c2	0x14b4b4b
 4a8:	4b834c4b 	c2	0x1834c4b
 4ac:	4b4b8383 	c2	0x14b8383
 4b0:	4b4b4b4b 	c2	0x14b4b4b
 4b4:	4b4b4b4b 	c2	0x14b4b4b
 4b8:	4b4b4b4b 	c2	0x14b4b4b
 4bc:	4b4b4b4b 	c2	0x14b4b4b
 4c0:	4c4b4b4b 	0x4c4b4b4b
 4c4:	4b834b83 	c2	0x1834b83
 4c8:	4b4b4b4b 	c2	0x14b4b4b
 4cc:	4b4b4b4b 	c2	0x14b4b4b
 4d0:	4b4b4b4b 	c2	0x14b4b4b
 4d4:	4b4b4b4b 	c2	0x14b4b4b
 4d8:	4b4b4b4b 	c2	0x14b4b4b
 4dc:	4c4b4c4c 	0x4c4b4c4c
 4e0:	4b4b4b4d 	c2	0x14b4b4d
 4e4:	0004024b 	0x4024b
 4e8:	00500101 	0x500101
 4ec:	00020000 	sll	zero,v0,0x0
 4f0:	00000027 	nor	zero,zero,zero
 4f4:	0efb0101 	jal	bec0404 <data_size+0xbec03f4>
 4f8:	0101000d 	break	0x101
 4fc:	00000101 	0x101
 500:	00000100 	sll	zero,zero,0x4
 504:	386e0001 	xori	t6,v1,0x1
 508:	616f6c5f 	0x616f6c5f
 50c:	6c745f64 	0x6c745f64
 510:	78655f62 	0x78655f62
 514:	0000532e 	0x532e
 518:	00000000 	nop
 51c:	0f000205 	jal	c000814 <data_size+0xc000804>
 520:	4b17bfc0 	c2	0x117bfc0
 524:	83834e4b 	lb	v1,20043(gp)
 528:	4b4b4d83 	c2	0x14b4d83
 52c:	4c4b4b4b 	0x4c4b4b4b
 530:	4c4b4b4c 	0x4c4b4b4c
 534:	4b4b4b4d 	c2	0x14b4b4d
 538:	0004024b 	0x4024b
 53c:	00520101 	0x520101
 540:	00020000 	sll	zero,v0,0x0
 544:	00000028 	0x28
 548:	0efb0101 	jal	bec0404 <data_size+0xbec03f4>
 54c:	0101000d 	break	0x101
 550:	00000101 	0x101
 554:	00000100 	sll	zero,zero,0x4
 558:	396e0001 	xori	t6,t3,0x1
 55c:	6f74735f 	0x6f74735f
 560:	745f6572 	jalx	17d95c8 <data_size+0x17d95b8>
 564:	655f626c 	0x655f626c
 568:	00532e78 	0x532e78
 56c:	00000000 	nop
 570:	70020500 	0x70020500
 574:	17bfc00f 	bne	sp,ra,ffff05b4 <_etext+0x403ef5bc>
 578:	834e4b4b 	lb	t6,19275(k0)
 57c:	4b4b8583 	c2	0x14b8583
 580:	4b4b4b4b 	c2	0x14b4b4b
 584:	4b4c4c4b 	c2	0x14c4c4b
 588:	4b4d4c4b 	c2	0x14d4c4b
 58c:	024b4b4b 	0x24b4b4b
 590:	01010004 	sllv	zero,at,t0

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000064 	0x64
   4:	00000002 	srl	zero,zero,0x0
   8:	01040000 	0x1040000
   c:	00000000 	nop
  10:	bfc00000 	0xbfc00000
  14:	bfc00704 	0xbfc00704
  18:	72617473 	0x72617473
  1c:	00532e74 	0x532e74
  20:	6d6f682f 	0x6d6f682f
  24:	797a2f65 	0x797a2f65
  28:	616c656d 	0x616c656d
  2c:	772f6969 	jalx	cbda5a4 <data_size+0xcbda594>
  30:	736b726f 	0x736b726f
  34:	65636170 	0x65636170
  38:	4d65522f 	0x4d65522f
  3c:	2f535049 	sltiu	s3,k0,20553
  40:	74736574 	jalx	1cd95d0 <data_size+0x1cd95c0>
  44:	7365742f 	0x7365742f
  48:	73616374 	0x73616374
  4c:	6c742f65 	0x6c742f65
  50:	75665f62 	jalx	5997d88 <data_size+0x5997d78>
  54:	4700636e 	c1	0x100636e
  58:	4120554e 	0x4120554e
  5c:	2e322053 	sltiu	s2,s1,8275
  60:	352e3831 	ori	t6,t1,0x3831
  64:	80010030 	lb	at,48(zero)
  68:	00000074 	0x74
  6c:	00140002 	srl	zero,s4,0x0
  70:	01040000 	0x1040000
  74:	0000014b 	0x14b
  78:	bfc00710 	0xbfc00710
  7c:	bfc0077c 	0xbfc0077c
  80:	5f30316e 	0x5f30316e
  84:	63746566 	0x63746566
  88:	6c745f68 	0x6c745f68
  8c:	78655f62 	0x78655f62
  90:	2f00532e 	sltiu	zero,t8,21294
  94:	656d6f68 	0x656d6f68
  98:	6d797a2f 	0x6d797a2f
  9c:	69616c65 	0x69616c65
  a0:	6f772f69 	0x6f772f69
  a4:	70736b72 	0x70736b72
  a8:	2f656361 	sltiu	a1,k1,25441
  ac:	494d6552 	0x494d6552
  b0:	742f5350 	jalx	bd4d40 <data_size+0xbd4d30>
  b4:	2f747365 	sltiu	s4,k1,29541
  b8:	74736574 	jalx	1cd95d0 <data_size+0x1cd95c0>
  bc:	65736163 	0x65736163
  c0:	626c742f 	0x626c742f
  c4:	6e75665f 	0x6e75665f
  c8:	6e692f63 	0x6e692f63
  cc:	47007473 	c1	0x1007473
  d0:	4120554e 	0x4120554e
  d4:	2e322053 	sltiu	s2,s1,8275
  d8:	352e3831 	ori	t6,t1,0x3831
  dc:	80010030 	lb	at,48(zero)
  e0:	0000006c 	0x6c
  e4:	00280002 	0x280002
  e8:	01040000 	0x1040000
  ec:	000001a2 	0x1a2
  f0:	bfc00780 	0xbfc00780
  f4:	bfc00828 	0xbfc00828
  f8:	695f316e 	0x695f316e
  fc:	7865646e 	0x7865646e
 100:	2f00532e 	sltiu	zero,t8,21294
 104:	656d6f68 	0x656d6f68
 108:	6d797a2f 	0x6d797a2f
 10c:	69616c65 	0x69616c65
 110:	6f772f69 	0x6f772f69
 114:	70736b72 	0x70736b72
 118:	2f656361 	sltiu	a1,k1,25441
 11c:	494d6552 	0x494d6552
 120:	742f5350 	jalx	bd4d40 <data_size+0xbd4d30>
 124:	2f747365 	sltiu	s4,k1,29541
 128:	74736574 	jalx	1cd95d0 <data_size+0x1cd95c0>
 12c:	65736163 	0x65736163
 130:	626c742f 	0x626c742f
 134:	6e75665f 	0x6e75665f
 138:	6e692f63 	0x6e692f63
 13c:	47007473 	c1	0x1007473
 140:	4120554e 	0x4120554e
 144:	2e322053 	sltiu	s2,s1,8275
 148:	352e3831 	ori	t6,t1,0x3831
 14c:	80010030 	lb	at,48(zero)
 150:	0000006e 	0x6e
 154:	003c0002 	0x3c0002
 158:	01040000 	0x1040000
 15c:	00000203 	sra	zero,zero,0x8
 160:	bfc00830 	0xbfc00830
 164:	bfc008d8 	0xbfc008d8
 168:	655f326e 	0x655f326e
 16c:	7972746e 	0x7972746e
 170:	532e6968 	0x532e6968
 174:	6f682f00 	0x6f682f00
 178:	7a2f656d 	0x7a2f656d
 17c:	6c656d79 	0x6c656d79
 180:	2f696961 	sltiu	t1,k1,26977
 184:	6b726f77 	0x6b726f77
 188:	63617073 	0x63617073
 18c:	65522f65 	0x65522f65
 190:	5350494d 	0x5350494d
 194:	7365742f 	0x7365742f
 198:	65742f74 	0x65742f74
 19c:	61637473 	0x61637473
 1a0:	742f6573 	jalx	bd95cc <data_size+0xbd95bc>
 1a4:	665f626c 	0x665f626c
 1a8:	2f636e75 	sltiu	v1,k1,28277
 1ac:	74736e69 	jalx	1cdb9a4 <data_size+0x1cdb994>
 1b0:	554e4700 	0x554e4700
 1b4:	20534120 	addi	s3,v0,16672
 1b8:	38312e32 	xori	s1,at,0x2e32
 1bc:	0030352e 	0x30352e
 1c0:	006f8001 	0x6f8001
 1c4:	00020000 	sll	zero,v0,0x0
 1c8:	00000050 	0x50
 1cc:	02650104 	0x2650104
 1d0:	08e00000 	j	3800000 <data_size+0x37ffff0>
 1d4:	098cbfc0 	j	632ff00 <data_size+0x632fef0>
 1d8:	336ebfc0 	andi	t6,k1,0xbfc0
 1dc:	746e655f 	jalx	1b9957c <data_size+0x1b9956c>
 1e0:	6f6c7972 	0x6f6c7972
 1e4:	00532e30 	0x532e30
 1e8:	6d6f682f 	0x6d6f682f
 1ec:	797a2f65 	0x797a2f65
 1f0:	616c656d 	0x616c656d
 1f4:	772f6969 	jalx	cbda5a4 <data_size+0xcbda594>
 1f8:	736b726f 	0x736b726f
 1fc:	65636170 	0x65636170
 200:	4d65522f 	0x4d65522f
 204:	2f535049 	sltiu	s3,k0,20553
 208:	74736574 	jalx	1cd95d0 <data_size+0x1cd95c0>
 20c:	7365742f 	0x7365742f
 210:	73616374 	0x73616374
 214:	6c742f65 	0x6c742f65
 218:	75665f62 	jalx	5997d88 <data_size+0x5997d78>
 21c:	692f636e 	0x692f636e
 220:	0074736e 	0x74736e
 224:	20554e47 	addi	s5,v0,20039
 228:	32205341 	andi	zero,s1,0x5341
 22c:	2e38312e 	sltiu	t8,s1,12590
 230:	01003035 	0x1003035
 234:	00006f80 	sll	t5,zero,0x1e
 238:	64000200 	0x64000200
 23c:	04000000 	bltz	zero,240 <data_size+0x230>
 240:	0002c801 	0x2c801
 244:	c0099000 	lwc0	$9,-28672(zero)
 248:	c00a3cbf 	lwc0	$10,15551(zero)
 24c:	5f346ebf 	0x5f346ebf
 250:	72746e65 	0x72746e65
 254:	316f6c79 	andi	t7,t3,0x6c79
 258:	2f00532e 	sltiu	zero,t8,21294
 25c:	656d6f68 	0x656d6f68
 260:	6d797a2f 	0x6d797a2f
 264:	69616c65 	0x69616c65
 268:	6f772f69 	0x6f772f69
 26c:	70736b72 	0x70736b72
 270:	2f656361 	sltiu	a1,k1,25441
 274:	494d6552 	0x494d6552
 278:	742f5350 	jalx	bd4d40 <data_size+0xbd4d30>
 27c:	2f747365 	sltiu	s4,k1,29541
 280:	74736574 	jalx	1cd95d0 <data_size+0x1cd95c0>
 284:	65736163 	0x65736163
 288:	626c742f 	0x626c742f
 28c:	6e75665f 	0x6e75665f
 290:	6e692f63 	0x6e692f63
 294:	47007473 	c1	0x1007473
 298:	4120554e 	0x4120554e
 29c:	2e322053 	sltiu	s2,s1,8275
 2a0:	352e3831 	ori	t6,t1,0x3831
 2a4:	80010030 	lb	at,48(zero)
 2a8:	00000071 	0x71
 2ac:	00780002 	0x780002
 2b0:	01040000 	0x1040000
 2b4:	0000032b 	0x32b
 2b8:	bfc00a40 	0xbfc00a40
 2bc:	bfc00c44 	0xbfc00c44
 2c0:	745f356e 	jalx	17cd5b8 <data_size+0x17cd5a8>
 2c4:	6977626c 	0x6977626c
 2c8:	626c745f 	0x626c745f
 2cc:	00532e72 	0x532e72
 2d0:	6d6f682f 	0x6d6f682f
 2d4:	797a2f65 	0x797a2f65
 2d8:	616c656d 	0x616c656d
 2dc:	772f6969 	jalx	cbda5a4 <data_size+0xcbda594>
 2e0:	736b726f 	0x736b726f
 2e4:	65636170 	0x65636170
 2e8:	4d65522f 	0x4d65522f
 2ec:	2f535049 	sltiu	s3,k0,20553
 2f0:	74736574 	jalx	1cd95d0 <data_size+0x1cd95c0>
 2f4:	7365742f 	0x7365742f
 2f8:	73616374 	0x73616374
 2fc:	6c742f65 	0x6c742f65
 300:	75665f62 	jalx	5997d88 <data_size+0x5997d78>
 304:	692f636e 	0x692f636e
 308:	0074736e 	0x74736e
 30c:	20554e47 	addi	s5,v0,20039
 310:	32205341 	andi	zero,s1,0x5341
 314:	2e38312e 	sltiu	t8,s1,12590
 318:	01003035 	0x1003035
 31c:	00006b80 	sll	t5,zero,0xe
 320:	8c000200 	lw	zero,512(zero)
 324:	04000000 	bltz	zero,328 <data_size+0x318>
 328:	0003dd01 	0x3dd01
 32c:	c00c5000 	lwc0	$12,20480(zero)
 330:	c00cf0bf 	lwc0	$12,-3905(zero)
 334:	5f366ebf 	0x5f366ebf
 338:	70626c74 	0x70626c74
 33c:	2f00532e 	sltiu	zero,t8,21294
 340:	656d6f68 	0x656d6f68
 344:	6d797a2f 	0x6d797a2f
 348:	69616c65 	0x69616c65
 34c:	6f772f69 	0x6f772f69
 350:	70736b72 	0x70736b72
 354:	2f656361 	sltiu	a1,k1,25441
 358:	494d6552 	0x494d6552
 35c:	742f5350 	jalx	bd4d40 <data_size+0xbd4d30>
 360:	2f747365 	sltiu	s4,k1,29541
 364:	74736574 	jalx	1cd95d0 <data_size+0x1cd95c0>
 368:	65736163 	0x65736163
 36c:	626c742f 	0x626c742f
 370:	6e75665f 	0x6e75665f
 374:	6e692f63 	0x6e692f63
 378:	47007473 	c1	0x1007473
 37c:	4120554e 	0x4120554e
 380:	2e322053 	sltiu	s2,s1,8275
 384:	352e3831 	ori	t6,t1,0x3831
 388:	80010030 	lb	at,48(zero)
 38c:	00000071 	0x71
 390:	00a00002 	0xa00002
 394:	01040000 	0x1040000
 398:	00000438 	0x438
 39c:	bfc00cf0 	0xbfc00cf0
 3a0:	bfc00ef4 	0xbfc00ef4
 3a4:	745f376e 	jalx	17cddb8 <data_size+0x17cdda8>
 3a8:	7277626c 	0x7277626c
 3ac:	626c745f 	0x626c745f
 3b0:	00532e72 	0x532e72
 3b4:	6d6f682f 	0x6d6f682f
 3b8:	797a2f65 	0x797a2f65
 3bc:	616c656d 	0x616c656d
 3c0:	772f6969 	jalx	cbda5a4 <data_size+0xcbda594>
 3c4:	736b726f 	0x736b726f
 3c8:	65636170 	0x65636170
 3cc:	4d65522f 	0x4d65522f
 3d0:	2f535049 	sltiu	s3,k0,20553
 3d4:	74736574 	jalx	1cd95d0 <data_size+0x1cd95c0>
 3d8:	7365742f 	0x7365742f
 3dc:	73616374 	0x73616374
 3e0:	6c742f65 	0x6c742f65
 3e4:	75665f62 	jalx	5997d88 <data_size+0x5997d78>
 3e8:	692f636e 	0x692f636e
 3ec:	0074736e 	0x74736e
 3f0:	20554e47 	addi	s5,v0,20039
 3f4:	32205341 	andi	zero,s1,0x5341
 3f8:	2e38312e 	sltiu	t8,s1,12590
 3fc:	01003035 	0x1003035
 400:	00007280 	sll	t6,zero,0xa
 404:	b4000200 	0xb4000200
 408:	04000000 	bltz	zero,40c <data_size+0x3fc>
 40c:	0004ea01 	0x4ea01
 410:	c00f0000 	lwc0	$15,0(zero)
 414:	c00f68bf 	lwc0	$15,26815(zero)
 418:	5f386ebf 	0x5f386ebf
 41c:	64616f6c 	0x64616f6c
 420:	626c745f 	0x626c745f
 424:	2e78655f 	sltiu	t8,s3,25951
 428:	682f0053 	0x682f0053
 42c:	2f656d6f 	sltiu	a1,k1,28015
 430:	656d797a 	0x656d797a
 434:	6969616c 	0x6969616c
 438:	726f772f 	0x726f772f
 43c:	6170736b 	0x6170736b
 440:	522f6563 	0x522f6563
 444:	50494d65 	0x50494d65
 448:	65742f53 	0x65742f53
 44c:	742f7473 	jalx	bdd1cc <data_size+0xbdd1bc>
 450:	63747365 	0x63747365
 454:	2f657361 	sltiu	a1,k1,29537
 458:	5f626c74 	0x5f626c74
 45c:	636e7566 	0x636e7566
 460:	736e692f 	0x736e692f
 464:	4e470074 	c3	0x470074
 468:	53412055 	0x53412055
 46c:	312e3220 	andi	t6,t1,0x3220
 470:	30352e38 	andi	s5,at,0x2e38
 474:	73800100 	0x73800100
 478:	02000000 	0x2000000
 47c:	0000c800 	sll	t9,zero,0x0
 480:	3e010400 	0x3e010400
 484:	70000005 	0x70000005
 488:	dcbfc00f 	0xdcbfc00f
 48c:	6ebfc00f 	0x6ebfc00f
 490:	74735f39 	jalx	1cd7ce4 <data_size+0x1cd7cd4>
 494:	5f65726f 	0x5f65726f
 498:	5f626c74 	0x5f626c74
 49c:	532e7865 	0x532e7865
 4a0:	6f682f00 	0x6f682f00
 4a4:	7a2f656d 	0x7a2f656d
 4a8:	6c656d79 	0x6c656d79
 4ac:	2f696961 	sltiu	t1,k1,26977
 4b0:	6b726f77 	0x6b726f77
 4b4:	63617073 	0x63617073
 4b8:	65522f65 	0x65522f65
 4bc:	5350494d 	0x5350494d
 4c0:	7365742f 	0x7365742f
 4c4:	65742f74 	0x65742f74
 4c8:	61637473 	0x61637473
 4cc:	742f6573 	jalx	bd95cc <data_size+0xbd95bc>
 4d0:	665f626c 	0x665f626c
 4d4:	2f636e75 	sltiu	v1,k1,28277
 4d8:	74736e69 	jalx	1cdb9a4 <data_size+0x1cdb994>
 4dc:	554e4700 	0x554e4700
 4e0:	20534120 	addi	s3,v0,16672
 4e4:	38312e32 	xori	s1,at,0x2e32
 4e8:	0030352e 	0x30352e
 4ec:	Address 0x00000000000004ec is out of bounds.


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
  a0:	10001101 	b	44a8 <data_size+0x4498>
  a4:	12011106 	beq	s0,at,44c0 <data_size+0x44b0>
  a8:	1b080301 	0x1b080301
  ac:	13082508 	beq	t8,t0,94d0 <data_size+0x94c0>
  b0:	00000005 	0x5
  b4:	10001101 	b	44bc <data_size+0x44ac>
  b8:	12011106 	beq	s0,at,44d4 <data_size+0x44c4>
  bc:	1b080301 	0x1b080301
  c0:	13082508 	beq	t8,t0,94e4 <data_size+0x94d4>
  c4:	00000005 	0x5
  c8:	10001101 	b	44d0 <data_size+0x44c0>
  cc:	12011106 	beq	s0,at,44e8 <data_size+0x44d8>
  d0:	1b080301 	0x1b080301
  d4:	13082508 	beq	t8,t0,94f8 <data_size+0x94e8>
  d8:	00000005 	0x5
