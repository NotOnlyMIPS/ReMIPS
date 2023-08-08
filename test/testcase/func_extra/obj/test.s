
main.elf:     file format elf32-tradlittlemips
main.elf


Disassembly of section .text:

9fc00000 <_ftext>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:18
9fc00000:	2408ffff 	li	t0,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:19
9fc00004:	2408ffff 	li	t0,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:20
9fc00008:	100001a8 	b	9fc006ac <locate>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:21
9fc0000c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:24
9fc00010:	3c088000 	lui	t0,0x8000
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:25
9fc00014:	25290001 	addiu	t1,t1,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:26
9fc00018:	01005025 	move	t2,t0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:27
9fc0001c:	01ae5821 	addu	t3,t5,t6
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:28
9fc00020:	8d0c0000 	lw	t4,0(t0)
	...
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:33
9fc000ec:	3c088000 	lui	t0,0x8000
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:34
9fc000f0:	25290001 	addiu	t1,t1,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:35
9fc000f4:	01005025 	move	t2,t0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:36
9fc000f8:	01ae5821 	addu	t3,t5,t6
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:37
9fc000fc:	8d0c0000 	lw	t4,0(t0)

9fc00100 <test_finish>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:40
9fc00100:	25080001 	addiu	t0,t0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:41
9fc00104:	240900ff 	li	t1,255
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:42
9fc00108:	3c0abfb0 	lui	t2,0xbfb0
9fc0010c:	254afff0 	addiu	t2,t2,-16
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:43
9fc00110:	ad490000 	sw	t1,0(t2)
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:44
9fc00114:	1000fffa 	b	9fc00100 <test_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:45
9fc00118:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:47
9fc0011c:	3c088000 	lui	t0,0x8000
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:48
9fc00120:	25290001 	addiu	t1,t1,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:49
9fc00124:	01005025 	move	t2,t0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:50
9fc00128:	01ae5821 	addu	t3,t5,t6
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:51
9fc0012c:	8d0c0000 	lw	t4,0(t0)
	...
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:57
9fc00380:	0000d010 	mfhi	k0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:58
9fc00384:	0000d812 	mflo	k1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:59
9fc00388:	3c1a800d 	lui	k0,0x800d
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:60
9fc0038c:	935b0000 	lbu	k1,0(k0)
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:61
9fc00390:	241a0001 	li	k0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:62
9fc00394:	137a0016 	beq	k1,k0,9fc003f0 <syscall_ex>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:63
9fc00398:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:64
9fc0039c:	241a0002 	li	k0,2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:65
9fc003a0:	137a0024 	beq	k1,k0,9fc00434 <break_ex>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:66
9fc003a4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:67
9fc003a8:	241a0003 	li	k0,3
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:68
9fc003ac:	137a0032 	beq	k1,k0,9fc00478 <overflow_ex>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:69
9fc003b0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:70
9fc003b4:	241a0004 	li	k0,4
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:71
9fc003b8:	137a003f 	beq	k1,k0,9fc004b8 <adel_load_ex>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:72
9fc003bc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:73
9fc003c0:	241a0005 	li	k0,5
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:74
9fc003c4:	137a004d 	beq	k1,k0,9fc004fc <ades_ex>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:75
9fc003c8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:76
9fc003cc:	241a0006 	li	k0,6
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:77
9fc003d0:	137a005b 	beq	k1,k0,9fc00540 <adel_if_ex>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:78
9fc003d4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:79
9fc003d8:	241a0007 	li	k0,7
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:80
9fc003dc:	137a006a 	beq	k1,k0,9fc00588 <reserved_inst_ex>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:81
9fc003e0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:82
9fc003e4:	241a0008 	li	k0,8
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:83
9fc003e8:	137a0078 	beq	k1,k0,9fc005cc <int_ex>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:84
9fc003ec:	00000000 	nop

9fc003f0 <syscall_ex>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:87
9fc003f0:	00009021 	move	s2,zero
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:88
9fc003f4:	401a7000 	mfc0	k0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:89
9fc003f8:	1754009d 	bne	k0,s4,9fc00670 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:90
9fc003fc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:91
9fc00400:	401a6800 	mfc0	k0,c0_cause
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:92
9fc00404:	335a007c 	andi	k0,k0,0x7c
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:93
9fc00408:	241b0020 	li	k1,32
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:94
9fc0040c:	175b0098 	bne	k0,k1,9fc00670 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:95
9fc00410:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:96
9fc00414:	401a6000 	mfc0	k0,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:97
9fc00418:	335a0002 	andi	k0,k0,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:98
9fc0041c:	241b0002 	li	k1,2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:99
9fc00420:	175b0093 	bne	k0,k1,9fc00670 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:100
9fc00424:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:101
9fc00428:	3c120001 	lui	s2,0x1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:102
9fc0042c:	10000090 	b	9fc00670 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:103
9fc00430:	00000000 	nop

9fc00434 <break_ex>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:106
9fc00434:	00009021 	move	s2,zero
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:107
9fc00438:	401a7000 	mfc0	k0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:108
9fc0043c:	1754008c 	bne	k0,s4,9fc00670 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:109
9fc00440:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:110
9fc00444:	401a6800 	mfc0	k0,c0_cause
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:111
9fc00448:	335a007c 	andi	k0,k0,0x7c
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:112
9fc0044c:	241b0024 	li	k1,36
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:113
9fc00450:	175b0087 	bne	k0,k1,9fc00670 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:114
9fc00454:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:115
9fc00458:	401a6000 	mfc0	k0,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:116
9fc0045c:	335a0002 	andi	k0,k0,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:117
9fc00460:	241b0002 	li	k1,2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:118
9fc00464:	175b0082 	bne	k0,k1,9fc00670 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:119
9fc00468:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:120
9fc0046c:	3c120002 	lui	s2,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:121
9fc00470:	1000007f 	b	9fc00670 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:122
9fc00474:	00000000 	nop

9fc00478 <overflow_ex>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:125
9fc00478:	00009021 	move	s2,zero
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:126
9fc0047c:	401a7000 	mfc0	k0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:127
9fc00480:	1754007b 	bne	k0,s4,9fc00670 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:128
9fc00484:	401a6800 	mfc0	k0,c0_cause
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:129
9fc00488:	335a007c 	andi	k0,k0,0x7c
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:130
9fc0048c:	241b0030 	li	k1,48
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:131
9fc00490:	175b0077 	bne	k0,k1,9fc00670 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:132
9fc00494:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:133
9fc00498:	401a6000 	mfc0	k0,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:134
9fc0049c:	335a0002 	andi	k0,k0,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:135
9fc004a0:	241b0002 	li	k1,2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:136
9fc004a4:	175b0072 	bne	k0,k1,9fc00670 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:137
9fc004a8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:138
9fc004ac:	3c120003 	lui	s2,0x3
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:139
9fc004b0:	1000006f 	b	9fc00670 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:140
9fc004b4:	00000000 	nop

9fc004b8 <adel_load_ex>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:143
9fc004b8:	00009021 	move	s2,zero
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:144
9fc004bc:	401a7000 	mfc0	k0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:145
9fc004c0:	1754006b 	bne	k0,s4,9fc00670 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:146
9fc004c4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:147
9fc004c8:	401a6800 	mfc0	k0,c0_cause
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:148
9fc004cc:	335a007c 	andi	k0,k0,0x7c
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:149
9fc004d0:	241b0010 	li	k1,16
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:150
9fc004d4:	175b0066 	bne	k0,k1,9fc00670 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:151
9fc004d8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:152
9fc004dc:	401a6000 	mfc0	k0,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:153
9fc004e0:	335a0002 	andi	k0,k0,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:154
9fc004e4:	241b0002 	li	k1,2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:155
9fc004e8:	175b0061 	bne	k0,k1,9fc00670 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:156
9fc004ec:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:157
9fc004f0:	3c120004 	lui	s2,0x4
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:158
9fc004f4:	1000005e 	b	9fc00670 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:159
9fc004f8:	00000000 	nop

9fc004fc <ades_ex>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:162
9fc004fc:	00009021 	move	s2,zero
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:163
9fc00500:	401a7000 	mfc0	k0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:164
9fc00504:	1754005a 	bne	k0,s4,9fc00670 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:165
9fc00508:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:166
9fc0050c:	401a6800 	mfc0	k0,c0_cause
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:167
9fc00510:	335a007c 	andi	k0,k0,0x7c
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:168
9fc00514:	241b0014 	li	k1,20
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:169
9fc00518:	175b0055 	bne	k0,k1,9fc00670 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:170
9fc0051c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:171
9fc00520:	401a6000 	mfc0	k0,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:172
9fc00524:	335a0002 	andi	k0,k0,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:173
9fc00528:	241b0002 	li	k1,2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:174
9fc0052c:	175b0050 	bne	k0,k1,9fc00670 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:175
9fc00530:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:176
9fc00534:	3c120005 	lui	s2,0x5
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:177
9fc00538:	1000004d 	b	9fc00670 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:178
9fc0053c:	00000000 	nop

9fc00540 <adel_if_ex>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:181
9fc00540:	00009021 	move	s2,zero
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:182
9fc00544:	401a7000 	mfc0	k0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:183
9fc00548:	17540049 	bne	k0,s4,9fc00670 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:184
9fc0054c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:185
9fc00550:	40957000 	mtc0	s5,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:186
9fc00554:	401a6800 	mfc0	k0,c0_cause
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:187
9fc00558:	335a007c 	andi	k0,k0,0x7c
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:188
9fc0055c:	241b0010 	li	k1,16
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:189
9fc00560:	175b0043 	bne	k0,k1,9fc00670 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:190
9fc00564:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:191
9fc00568:	401a6000 	mfc0	k0,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:192
9fc0056c:	335a0002 	andi	k0,k0,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:193
9fc00570:	241b0002 	li	k1,2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:194
9fc00574:	175b003e 	bne	k0,k1,9fc00670 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:195
9fc00578:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:196
9fc0057c:	3c120006 	lui	s2,0x6
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:197
9fc00580:	1000003b 	b	9fc00670 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:198
9fc00584:	00000000 	nop

9fc00588 <reserved_inst_ex>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:201
9fc00588:	00009021 	move	s2,zero
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:202
9fc0058c:	401a7000 	mfc0	k0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:203
9fc00590:	17540037 	bne	k0,s4,9fc00670 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:204
9fc00594:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:205
9fc00598:	401a6800 	mfc0	k0,c0_cause
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:206
9fc0059c:	335a007c 	andi	k0,k0,0x7c
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:207
9fc005a0:	241b0028 	li	k1,40
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:208
9fc005a4:	175b0032 	bne	k0,k1,9fc00670 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:209
9fc005a8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:210
9fc005ac:	401a6000 	mfc0	k0,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:211
9fc005b0:	335a0002 	andi	k0,k0,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:212
9fc005b4:	241b0002 	li	k1,2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:213
9fc005b8:	175b002d 	bne	k0,k1,9fc00670 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:214
9fc005bc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:215
9fc005c0:	3c120007 	lui	s2,0x7
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:216
9fc005c4:	1000002a 	b	9fc00670 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:217
9fc005c8:	00000000 	nop

9fc005cc <int_ex>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:220
9fc005cc:	00009021 	move	s2,zero
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:221
9fc005d0:	401a7000 	mfc0	k0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:222
9fc005d4:	17540026 	bne	k0,s4,9fc00670 <ex_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:223
9fc005d8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:224
9fc005dc:	275a0008 	addiu	k0,k0,8
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:225
9fc005e0:	409a7000 	mtc0	k0,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:226
9fc005e4:	3c1bbfb0 	lui	k1,0xbfb0
9fc005e8:	af608ffc 	sw	zero,-28676(k1)
9fc005ec:	af608ffc 	sw	zero,-28676(k1)
9fc005f0:	af60fff8 	sw	zero,-8(k1)
9fc005f4:	af608ffc 	sw	zero,-28676(k1)
9fc005f8:	af608ffc 	sw	zero,-28676(k1)
9fc005fc:	8f608ffc 	lw	zero,-28676(k1)
9fc00600:	8f7bfff8 	lw	k1,-8(k1)
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:227
9fc00604:	401a6800 	mfc0	k0,c0_cause
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:228
9fc00608:	3c1bbfb0 	lui	k1,0xbfb0
9fc0060c:	af608ffc 	sw	zero,-28676(k1)
9fc00610:	af608ffc 	sw	zero,-28676(k1)
9fc00614:	af7bfff8 	sw	k1,-8(k1)
9fc00618:	af608ffc 	sw	zero,-28676(k1)
9fc0061c:	af608ffc 	sw	zero,-28676(k1)
9fc00620:	8f608ffc 	lw	zero,-28676(k1)
9fc00624:	8f7bfff8 	lw	k1,-8(k1)
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:229
9fc00628:	335a007c 	andi	k0,k0,0x7c
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:230
9fc0062c:	241b0000 	li	k1,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:231
9fc00630:	175b000f 	bne	k0,k1,9fc00670 <ex_finish>
9fc00634:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:232
9fc00638:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:233
9fc0063c:	401a6000 	mfc0	k0,c0_status
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:234
9fc00640:	335a0002 	andi	k0,k0,0x2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:235
9fc00644:	241b0002 	li	k1,2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:236
9fc00648:	175b0009 	bne	k0,k1,9fc00670 <ex_finish>
9fc0064c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:237
9fc00650:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:238
9fc00654:	241affff 	li	k0,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:239
9fc00658:	241b0000 	li	k1,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:240
9fc0065c:	409a5800 	mtc0	k0,c0_compare
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:241
9fc00660:	409b6800 	mtc0	k1,c0_cause
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:242
9fc00664:	1000000f 	b	9fc006a4 <ex_ret>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:243
9fc00668:	3c120008 	lui	s2,0x8
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:244
9fc0066c:	00000000 	nop

9fc00670 <ex_finish>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:247
9fc00670:	401a6800 	mfc0	k0,c0_cause
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:248
9fc00674:	3c1b8000 	lui	k1,0x8000
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:249
9fc00678:	035bd024 	and	k0,k0,k1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:250
9fc0067c:	401b7000 	mfc0	k1,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:251
9fc00680:	13400003 	beqz	k0,9fc00690 <ex_finish+0x20>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:252
9fc00684:	277b0004 	addiu	k1,k1,4
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:253
9fc00688:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:254
9fc0068c:	277b0004 	addiu	k1,k1,4
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:256
9fc00690:	409b7000 	mtc0	k1,c0_epc
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:257
9fc00694:	16400003 	bnez	s2,9fc006a4 <ex_ret>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:258
9fc00698:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:259
9fc0069c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:260
9fc006a0:	3c12ffff 	lui	s2,0xffff

9fc006a4 <ex_ret>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:263
9fc006a4:	42000018 	eret
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:265
9fc006a8:	00000000 	nop

9fc006ac <locate>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:271
9fc006ac:	3c04bfb0 	lui	a0,0xbfb0
9fc006b0:	2484f008 	addiu	a0,a0,-4088
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:272
9fc006b4:	3c05bfb0 	lui	a1,0xbfb0
9fc006b8:	24a5f004 	addiu	a1,a1,-4092
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:273
9fc006bc:	3c06bfb0 	lui	a2,0xbfb0
9fc006c0:	24c6f000 	addiu	a2,a2,-4096
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:274
9fc006c4:	3c11bfb0 	lui	s1,0xbfb0
9fc006c8:	2631f010 	addiu	s1,s1,-4080
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:276
9fc006cc:	3c090000 	lui	t1,0x0
9fc006d0:	25290002 	addiu	t1,t1,2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:277
9fc006d4:	3c0a0000 	lui	t2,0x0
9fc006d8:	254a0001 	addiu	t2,t2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:278
9fc006dc:	3c0b0001 	lui	t3,0x1
9fc006e0:	256bffff 	addiu	t3,t3,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:279
9fc006e4:	3c130000 	lui	s3,0x0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:282
9fc006e8:	ac890000 	sw	t1,0(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:283
9fc006ec:	acaa0000 	sw	t2,0(a1)
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:284
9fc006f0:	accb0000 	sw	t3,0(a2)
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:285
9fc006f4:	ae330000 	sw	s3,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:286
9fc006f8:	3c100000 	lui	s0,0x0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:292
9fc006fc:	3c199fc0 	lui	t9,0x9fc0
9fc00700:	2739070c 	addiu	t9,t9,1804
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:293
9fc00704:	03200008 	jr	t9
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:294
9fc00708:	00000000 	nop

9fc0070c <inst_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:300
9fc0070c:	0ff0021c 	jal	9fc00870 <n1_clz_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:301
9fc00710:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:302
9fc00714:	0ff00208 	jal	9fc00820 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:303
9fc00718:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:304
9fc0071c:	0ff00240 	jal	9fc00900 <n2_clo_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:305
9fc00720:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:306
9fc00724:	0ff00208 	jal	9fc00820 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:307
9fc00728:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:308
9fc0072c:	0ff0025c 	jal	9fc00970 <n3_movn_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:309
9fc00730:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:310
9fc00734:	0ff00208 	jal	9fc00820 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:311
9fc00738:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:312
9fc0073c:	0ff00280 	jal	9fc00a00 <n4_movz_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:313
9fc00740:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:314
9fc00744:	0ff00208 	jal	9fc00820 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:315
9fc00748:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:316
9fc0074c:	0ff002a4 	jal	9fc00a90 <n5_mul_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:317
9fc00750:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:318
9fc00754:	0ff00208 	jal	9fc00820 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:319
9fc00758:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:320
9fc0075c:	0ff00318 	jal	9fc00c60 <n6_madd_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:321
9fc00760:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:322
9fc00764:	0ff00208 	jal	9fc00820 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:323
9fc00768:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:324
9fc0076c:	0ff00378 	jal	9fc00de0 <n7_maddu_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:325
9fc00770:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:326
9fc00774:	0ff00208 	jal	9fc00820 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:327
9fc00778:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:328
9fc0077c:	0ff003d8 	jal	9fc00f60 <n8_msub_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:329
9fc00780:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:330
9fc00784:	0ff00208 	jal	9fc00820 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:331
9fc00788:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:332
9fc0078c:	0ff00438 	jal	9fc010e0 <n9_msubu_test>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:333
9fc00790:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:334
9fc00794:	0ff00208 	jal	9fc00820 <wait_1s>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:335
9fc00798:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:340
9fc0079c:	3c099fc0 	lui	t1,0x9fc0
9fc007a0:	252907b4 	addiu	t1,t1,1972
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:341
9fc007a4:	3c0a2000 	lui	t2,0x2000
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:342
9fc007a8:	012ac821 	addu	t9,t1,t2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:343
9fc007ac:	03200008 	jr	t9
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:344
9fc007b0:	00000000 	nop

9fc007b4 <kseg0_kseg1>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:351
9fc007b4:	3c100000 	lui	s0,0x0
9fc007b8:	26100009 	addiu	s0,s0,9
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:353
9fc007bc:	1213000e 	beq	s0,s3,9fc007f8 <kseg0_kseg1+0x44>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:354
9fc007c0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:356
9fc007c4:	3c04bfb0 	lui	a0,0xbfb0
9fc007c8:	2484f000 	addiu	a0,a0,-4096
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:357
9fc007cc:	3c05bfb0 	lui	a1,0xbfb0
9fc007d0:	24a5f008 	addiu	a1,a1,-4088
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:358
9fc007d4:	3c06bfb0 	lui	a2,0xbfb0
9fc007d8:	24c6f004 	addiu	a2,a2,-4092
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:360
9fc007dc:	3c090000 	lui	t1,0x0
9fc007e0:	25290002 	addiu	t1,t1,2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:363
9fc007e4:	ac800000 	sw	zero,0(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:364
9fc007e8:	aca90000 	sw	t1,0(a1)
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:365
9fc007ec:	acc90000 	sw	t1,0(a2)
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:366
9fc007f0:	10000009 	b	9fc00818 <kseg0_kseg1+0x64>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:367
9fc007f4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:369
9fc007f8:	3c090000 	lui	t1,0x0
9fc007fc:	25290001 	addiu	t1,t1,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:370
9fc00800:	3c04bfb0 	lui	a0,0xbfb0
9fc00804:	2484f008 	addiu	a0,a0,-4088
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:371
9fc00808:	3c05bfb0 	lui	a1,0xbfb0
9fc0080c:	24a5f004 	addiu	a1,a1,-4092
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:373
9fc00810:	ac890000 	sw	t1,0(a0)
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:374
9fc00814:	aca90000 	sw	t1,0(a1)
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:381
9fc00818:	0ff00040 	jal	9fc00100 <test_finish>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:382
9fc0081c:	00000000 	nop

9fc00820 <wait_1s>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:385
9fc00820:	3c08bfb0 	lui	t0,0xbfb0
9fc00824:	2508f02c 	addiu	t0,t0,-4052
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:386
9fc00828:	3c090001 	lui	t1,0x1
9fc0082c:	2529aaaa 	addiu	t1,t1,-21846
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:389
9fc00830:	8d0a0000 	lw	t2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:391
9fc00834:	01495026 	xor	t2,t2,t1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:393
9fc00838:	000a5a40 	sll	t3,t2,0x9
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:395
9fc0083c:	256b0001 	addiu	t3,t3,1

9fc00840 <sub1>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:399
9fc00840:	256bffff 	addiu	t3,t3,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:402
9fc00844:	8d0a0000 	lw	t2,0(t0)
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:404
9fc00848:	01495026 	xor	t2,t2,t1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:406
9fc0084c:	000a5240 	sll	t2,t2,0x9
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:408
9fc00850:	016a602b 	sltu	t4,t3,t2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:410
9fc00854:	15800002 	bnez	t4,9fc00860 <sub1+0x20>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:411
9fc00858:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:412
9fc0085c:	254b0000 	addiu	t3,t2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:415
9fc00860:	1560fff7 	bnez	t3,9fc00840 <sub1>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:416
9fc00864:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:417
9fc00868:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/start.S:418
9fc0086c:	00000000 	nop

9fc00870 <n1_clz_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n1_clz.S:7
9fc00870:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n1_clz.S:8
9fc00874:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n1_clz.S:10
9fc00878:	3c050000 	lui	a1,0x0
9fc0087c:	24a50000 	addiu	a1,a1,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n1_clz.S:11
9fc00880:	3c030000 	lui	v1,0x0
9fc00884:	24630020 	addiu	v1,v1,32
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n1_clz.S:12
9fc00888:	70a21020 	clz	v0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n1_clz.S:13
9fc0088c:	14430015 	bne	v0,v1,9fc008e4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n1_clz.S:15
9fc00890:	3c052371 	lui	a1,0x2371
9fc00894:	24a52223 	addiu	a1,a1,8739
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n1_clz.S:16
9fc00898:	3c030000 	lui	v1,0x0
9fc0089c:	24630002 	addiu	v1,v1,2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n1_clz.S:17
9fc008a0:	70a21020 	clz	v0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n1_clz.S:18
9fc008a4:	1443000f 	bne	v0,v1,9fc008e4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n1_clz.S:20
9fc008a8:	3c05f000 	lui	a1,0xf000
9fc008ac:	24a5ffff 	addiu	a1,a1,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n1_clz.S:21
9fc008b0:	3c030000 	lui	v1,0x0
9fc008b4:	24630000 	addiu	v1,v1,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n1_clz.S:22
9fc008b8:	70a21020 	clz	v0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n1_clz.S:23
9fc008bc:	14430009 	bne	v0,v1,9fc008e4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n1_clz.S:25
9fc008c0:	3c050000 	lui	a1,0x0
9fc008c4:	24a57f00 	addiu	a1,a1,32512
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n1_clz.S:26
9fc008c8:	3c030000 	lui	v1,0x0
9fc008cc:	24630000 	addiu	v1,v1,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n1_clz.S:27
9fc008d0:	70a21020 	clz	v0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n1_clz.S:28
9fc008d4:	14430003 	bne	v0,v1,9fc008e4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n1_clz.S:30
9fc008d8:	16400002 	bnez	s2,9fc008e4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n1_clz.S:31
9fc008dc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n1_clz.S:33
9fc008e0:	26730001 	addiu	s3,s3,1

9fc008e4 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n1_clz.S:36
9fc008e4:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n1_clz.S:38
9fc008e8:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n1_clz.S:40
9fc008ec:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n1_clz.S:41
9fc008f0:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n1_clz.S:42
9fc008f4:	00000000 	nop
	...

9fc00900 <n2_clo_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n2_clo.S:7
9fc00900:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n2_clo.S:8
9fc00904:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n2_clo.S:10
9fc00908:	3c050000 	lui	a1,0x0
9fc0090c:	24a50000 	addiu	a1,a1,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n2_clo.S:11
9fc00910:	3c030000 	lui	v1,0x0
9fc00914:	24630000 	addiu	v1,v1,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n2_clo.S:12
9fc00918:	70a21021 	clo	v0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n2_clo.S:13
9fc0091c:	1443000f 	bne	v0,v1,9fc0095c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n2_clo.S:15
9fc00920:	3c05f000 	lui	a1,0xf000
9fc00924:	24a5efff 	addiu	a1,a1,-4097
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n2_clo.S:16
9fc00928:	3c030000 	lui	v1,0x0
9fc0092c:	24630003 	addiu	v1,v1,3
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n2_clo.S:17
9fc00930:	70a21021 	clo	v0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n2_clo.S:18
9fc00934:	14430009 	bne	v0,v1,9fc0095c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n2_clo.S:20
9fc00938:	3c050000 	lui	a1,0x0
9fc0093c:	24a5fffe 	addiu	a1,a1,-2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n2_clo.S:21
9fc00940:	3c030000 	lui	v1,0x0
9fc00944:	2463001f 	addiu	v1,v1,31
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n2_clo.S:22
9fc00948:	70a21021 	clo	v0,a1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n2_clo.S:23
9fc0094c:	14430003 	bne	v0,v1,9fc0095c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n2_clo.S:25
9fc00950:	16400002 	bnez	s2,9fc0095c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n2_clo.S:26
9fc00954:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n2_clo.S:28
9fc00958:	26730001 	addiu	s3,s3,1

9fc0095c <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n2_clo.S:31
9fc0095c:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n2_clo.S:33
9fc00960:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n2_clo.S:35
9fc00964:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n2_clo.S:36
9fc00968:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n2_clo.S:37
9fc0096c:	00000000 	nop

9fc00970 <n3_movn_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n3_movn.S:7
9fc00970:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n3_movn.S:8
9fc00974:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n3_movn.S:10
9fc00978:	3c03bef0 	lui	v1,0xbef0
9fc0097c:	2463beef 	addiu	v1,v1,-16657
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n3_movn.S:11
9fc00980:	3c08cfd0 	lui	t0,0xcfd0
9fc00984:	2508cfcf 	addiu	t0,t0,-12337
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n3_movn.S:13
9fc00988:	3c040000 	lui	a0,0x0
9fc0098c:	24840000 	addiu	a0,a0,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n3_movn.S:15
9fc00990:	00601021 	move	v0,v1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n3_movn.S:16
9fc00994:	0104100b 	movn	v0,t0,a0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n3_movn.S:17
9fc00998:	14430012 	bne	v0,v1,9fc009e4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n3_movn.S:19
9fc0099c:	3c040000 	lui	a0,0x0
9fc009a0:	24840001 	addiu	a0,a0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n3_movn.S:21
9fc009a4:	00601021 	move	v0,v1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n3_movn.S:22
9fc009a8:	0104100b 	movn	v0,t0,a0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n3_movn.S:23
9fc009ac:	1448000d 	bne	v0,t0,9fc009e4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n3_movn.S:25
9fc009b0:	3c040000 	lui	a0,0x0
9fc009b4:	2484ffff 	addiu	a0,a0,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n3_movn.S:27
9fc009b8:	00601021 	move	v0,v1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n3_movn.S:28
9fc009bc:	0104100b 	movn	v0,t0,a0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n3_movn.S:29
9fc009c0:	14480008 	bne	v0,t0,9fc009e4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n3_movn.S:31
9fc009c4:	3c041235 	lui	a0,0x1235
9fc009c8:	2484bf00 	addiu	a0,a0,-16640
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n3_movn.S:33
9fc009cc:	00601021 	move	v0,v1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n3_movn.S:34
9fc009d0:	0104100b 	movn	v0,t0,a0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n3_movn.S:35
9fc009d4:	14480003 	bne	v0,t0,9fc009e4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n3_movn.S:37
9fc009d8:	16400002 	bnez	s2,9fc009e4 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n3_movn.S:38
9fc009dc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n3_movn.S:40
9fc009e0:	26730001 	addiu	s3,s3,1

9fc009e4 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n3_movn.S:43
9fc009e4:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n3_movn.S:45
9fc009e8:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n3_movn.S:47
9fc009ec:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n3_movn.S:48
9fc009f0:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n3_movn.S:49
9fc009f4:	00000000 	nop
	...

9fc00a00 <n4_movz_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n4_movz.S:7
9fc00a00:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n4_movz.S:8
9fc00a04:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n4_movz.S:10
9fc00a08:	3c03bef0 	lui	v1,0xbef0
9fc00a0c:	2463beef 	addiu	v1,v1,-16657
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n4_movz.S:11
9fc00a10:	3c08cfd0 	lui	t0,0xcfd0
9fc00a14:	2508cfcf 	addiu	t0,t0,-12337
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n4_movz.S:13
9fc00a18:	3c040000 	lui	a0,0x0
9fc00a1c:	24840000 	addiu	a0,a0,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n4_movz.S:15
9fc00a20:	00601021 	move	v0,v1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n4_movz.S:16
9fc00a24:	0104100b 	movn	v0,t0,a0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n4_movz.S:17
9fc00a28:	14480012 	bne	v0,t0,9fc00a74 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n4_movz.S:19
9fc00a2c:	3c040000 	lui	a0,0x0
9fc00a30:	24840001 	addiu	a0,a0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n4_movz.S:21
9fc00a34:	00601021 	move	v0,v1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n4_movz.S:22
9fc00a38:	0104100b 	movn	v0,t0,a0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n4_movz.S:23
9fc00a3c:	1443000d 	bne	v0,v1,9fc00a74 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n4_movz.S:25
9fc00a40:	3c040000 	lui	a0,0x0
9fc00a44:	2484ffff 	addiu	a0,a0,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n4_movz.S:27
9fc00a48:	00601021 	move	v0,v1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n4_movz.S:28
9fc00a4c:	0104100b 	movn	v0,t0,a0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n4_movz.S:29
9fc00a50:	14430008 	bne	v0,v1,9fc00a74 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n4_movz.S:31
9fc00a54:	3c041235 	lui	a0,0x1235
9fc00a58:	2484bf00 	addiu	a0,a0,-16640
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n4_movz.S:33
9fc00a5c:	00601021 	move	v0,v1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n4_movz.S:34
9fc00a60:	0104100b 	movn	v0,t0,a0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n4_movz.S:35
9fc00a64:	14430003 	bne	v0,v1,9fc00a74 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n4_movz.S:37
9fc00a68:	16400002 	bnez	s2,9fc00a74 <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n4_movz.S:38
9fc00a6c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n4_movz.S:40
9fc00a70:	26730001 	addiu	s3,s3,1

9fc00a74 <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n4_movz.S:43
9fc00a74:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n4_movz.S:45
9fc00a78:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n4_movz.S:47
9fc00a7c:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n4_movz.S:48
9fc00a80:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n4_movz.S:49
9fc00a84:	00000000 	nop
	...

9fc00a90 <n5_mul_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:7
9fc00a90:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:8
9fc00a94:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:10
9fc00a98:	3c080000 	lui	t0,0x0
9fc00a9c:	25080000 	addiu	t0,t0,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:11
9fc00aa0:	3c090000 	lui	t1,0x0
9fc00aa4:	25290000 	addiu	t1,t1,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:12
9fc00aa8:	3c030000 	lui	v1,0x0
9fc00aac:	24630000 	addiu	v1,v1,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:13
9fc00ab0:	71091002 	mul	v0,t0,t1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:14
9fc00ab4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:15
9fc00ab8:	14430060 	bne	v0,v1,9fc00c3c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:17
9fc00abc:	3c080000 	lui	t0,0x0
9fc00ac0:	2508007e 	addiu	t0,t0,126
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:18
9fc00ac4:	3c090000 	lui	t1,0x0
9fc00ac8:	25290000 	addiu	t1,t1,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:19
9fc00acc:	3c030000 	lui	v1,0x0
9fc00ad0:	24630000 	addiu	v1,v1,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:20
9fc00ad4:	71091002 	mul	v0,t0,t1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:21
9fc00ad8:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:22
9fc00adc:	14430057 	bne	v0,v1,9fc00c3c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:24
9fc00ae0:	3c080000 	lui	t0,0x0
9fc00ae4:	25080000 	addiu	t0,t0,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:25
9fc00ae8:	3c090000 	lui	t1,0x0
9fc00aec:	2529007e 	addiu	t1,t1,126
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:26
9fc00af0:	3c030000 	lui	v1,0x0
9fc00af4:	24630000 	addiu	v1,v1,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:27
9fc00af8:	71091002 	mul	v0,t0,t1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:28
9fc00afc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:29
9fc00b00:	1443004e 	bne	v0,v1,9fc00c3c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:31
9fc00b04:	3c080000 	lui	t0,0x0
9fc00b08:	25080001 	addiu	t0,t0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:32
9fc00b0c:	3c090000 	lui	t1,0x0
9fc00b10:	2529007e 	addiu	t1,t1,126
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:33
9fc00b14:	3c030000 	lui	v1,0x0
9fc00b18:	2463007e 	addiu	v1,v1,126
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:34
9fc00b1c:	71091002 	mul	v0,t0,t1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:35
9fc00b20:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:36
9fc00b24:	14430045 	bne	v0,v1,9fc00c3c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:38
9fc00b28:	3c080000 	lui	t0,0x0
9fc00b2c:	2508ffff 	addiu	t0,t0,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:39
9fc00b30:	3c090000 	lui	t1,0x0
9fc00b34:	2529007e 	addiu	t1,t1,126
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:40
9fc00b38:	3c030000 	lui	v1,0x0
9fc00b3c:	2463ff82 	addiu	v1,v1,-126
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:41
9fc00b40:	71091002 	mul	v0,t0,t1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:42
9fc00b44:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:43
9fc00b48:	1443003c 	bne	v0,v1,9fc00c3c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:45
9fc00b4c:	3c080000 	lui	t0,0x0
9fc00b50:	25080026 	addiu	t0,t0,38
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:46
9fc00b54:	3c090000 	lui	t1,0x0
9fc00b58:	2529007e 	addiu	t1,t1,126
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:47
9fc00b5c:	3c030000 	lui	v1,0x0
9fc00b60:	246312b4 	addiu	v1,v1,4788
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:48
9fc00b64:	71091002 	mul	v0,t0,t1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:49
9fc00b68:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:50
9fc00b6c:	14430033 	bne	v0,v1,9fc00c3c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:52
9fc00b70:	3c080000 	lui	t0,0x0
9fc00b74:	25080026 	addiu	t0,t0,38
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:53
9fc00b78:	3c090000 	lui	t1,0x0
9fc00b7c:	2529007e 	addiu	t1,t1,126
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:54
9fc00b80:	3c030000 	lui	v1,0x0
9fc00b84:	246312b4 	addiu	v1,v1,4788
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:55
9fc00b88:	71091002 	mul	v0,t0,t1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:56
9fc00b8c:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:57
9fc00b90:	1443002a 	bne	v0,v1,9fc00c3c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:59
9fc00b94:	3c080001 	lui	t0,0x1
9fc00b98:	2508ffff 	addiu	t0,t0,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:60
9fc00b9c:	3c090001 	lui	t1,0x1
9fc00ba0:	2529ffff 	addiu	t1,t1,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:61
9fc00ba4:	3c03fffe 	lui	v1,0xfffe
9fc00ba8:	24630001 	addiu	v1,v1,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:62
9fc00bac:	71091002 	mul	v0,t0,t1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:63
9fc00bb0:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:64
9fc00bb4:	14430021 	bne	v0,v1,9fc00c3c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:66
9fc00bb8:	3c080010 	lui	t0,0x10
9fc00bbc:	2508fff0 	addiu	t0,t0,-16
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:67
9fc00bc0:	3c090010 	lui	t1,0x10
9fc00bc4:	2529fff0 	addiu	t1,t1,-16
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:69
9fc00bc8:	3c0b0000 	lui	t3,0x0
9fc00bcc:	256b00ff 	addiu	t3,t3,255
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:70
9fc00bd0:	3c03fe00 	lui	v1,0xfe00
9fc00bd4:	24630100 	addiu	v1,v1,256
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:71
9fc00bd8:	71091002 	mul	v0,t0,t1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:72
9fc00bdc:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:73
9fc00be0:	14430016 	bne	v0,v1,9fc00c3c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:74
9fc00be4:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:75
9fc00be8:	152b0014 	bne	t1,t3,9fc00c3c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:76
9fc00bec:	00005012 	mflo	t2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:77
9fc00bf0:	15430012 	bne	t2,v1,9fc00c3c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:79
9fc00bf4:	3c080000 	lui	t0,0x0
9fc00bf8:	25089b25 	addiu	t0,t0,-25819
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:80
9fc00bfc:	3c09007d 	lui	t1,0x7d
9fc00c00:	2529ffeb 	addiu	t1,t1,-21
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:82
9fc00c04:	3c0b0000 	lui	t3,0x0
9fc00c08:	256bffec 	addiu	t3,t3,-20
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:83
9fc00c0c:	3c031194 	lui	v1,0x1194
9fc00c10:	24635f07 	addiu	v1,v1,24327
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:84
9fc00c14:	71091002 	mul	v0,t0,t1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:85
9fc00c18:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:86
9fc00c1c:	14430007 	bne	v0,v1,9fc00c3c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:87
9fc00c20:	00004810 	mfhi	t1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:88
9fc00c24:	152b0005 	bne	t1,t3,9fc00c3c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:89
9fc00c28:	00005012 	mflo	t2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:90
9fc00c2c:	15430003 	bne	t2,v1,9fc00c3c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:92
9fc00c30:	16400002 	bnez	s2,9fc00c3c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:93
9fc00c34:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:95
9fc00c38:	26730001 	addiu	s3,s3,1

9fc00c3c <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:98
9fc00c3c:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:99
9fc00c40:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:100
9fc00c44:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:101
9fc00c48:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:102
9fc00c4c:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:103
9fc00c50:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n5_mul.S:104
9fc00c54:	00000000 	nop
	...

9fc00c60 <n6_madd_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:7
9fc00c60:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:8
9fc00c64:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:10
9fc00c68:	3c040000 	lui	a0,0x0
9fc00c6c:	24840000 	addiu	a0,a0,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:11
9fc00c70:	00800011 	mthi	a0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:12
9fc00c74:	00800013 	mtlo	a0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:13
9fc00c78:	00001010 	mfhi	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:14
9fc00c7c:	14440053 	bne	v0,a0,9fc00dcc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:15
9fc00c80:	00001012 	mflo	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:16
9fc00c84:	14440051 	bne	v0,a0,9fc00dcc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:18
9fc00c88:	3c090000 	lui	t1,0x0
9fc00c8c:	2529ffff 	addiu	t1,t1,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:19
9fc00c90:	3c0a0000 	lui	t2,0x0
9fc00c94:	254a0001 	addiu	t2,t2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:20
9fc00c98:	3c0b0000 	lui	t3,0x0
9fc00c9c:	256bffff 	addiu	t3,t3,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:21
9fc00ca0:	3c0c0000 	lui	t4,0x0
9fc00ca4:	258cffff 	addiu	t4,t4,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:22
9fc00ca8:	712a0000 	madd	t1,t2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:23
9fc00cac:	00001010 	mfhi	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:24
9fc00cb0:	144b0046 	bne	v0,t3,9fc00dcc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:25
9fc00cb4:	00001012 	mflo	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:26
9fc00cb8:	144c0044 	bne	v0,t4,9fc00dcc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:28
9fc00cbc:	3c090000 	lui	t1,0x0
9fc00cc0:	25290001 	addiu	t1,t1,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:29
9fc00cc4:	3c0a0000 	lui	t2,0x0
9fc00cc8:	254a0001 	addiu	t2,t2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:30
9fc00ccc:	3c0b0000 	lui	t3,0x0
9fc00cd0:	256b0000 	addiu	t3,t3,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:31
9fc00cd4:	3c0c0000 	lui	t4,0x0
9fc00cd8:	258c0000 	addiu	t4,t4,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:32
9fc00cdc:	712a0000 	madd	t1,t2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:33
9fc00ce0:	00001010 	mfhi	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:34
9fc00ce4:	144b0039 	bne	v0,t3,9fc00dcc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:35
9fc00ce8:	00001012 	mflo	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:36
9fc00cec:	144c0037 	bne	v0,t4,9fc00dcc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:38
9fc00cf0:	3c090000 	lui	t1,0x0
9fc00cf4:	25290003 	addiu	t1,t1,3
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:39
9fc00cf8:	3c0a0000 	lui	t2,0x0
9fc00cfc:	254a0004 	addiu	t2,t2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:40
9fc00d00:	3c0b0000 	lui	t3,0x0
9fc00d04:	256b0000 	addiu	t3,t3,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:41
9fc00d08:	3c0c0000 	lui	t4,0x0
9fc00d0c:	258c000c 	addiu	t4,t4,12
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:42
9fc00d10:	712a0000 	madd	t1,t2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:43
9fc00d14:	00001010 	mfhi	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:44
9fc00d18:	144b002c 	bne	v0,t3,9fc00dcc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:45
9fc00d1c:	00001012 	mflo	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:46
9fc00d20:	144c002a 	bne	v0,t4,9fc00dcc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:48
9fc00d24:	3c090000 	lui	t1,0x0
9fc00d28:	25293051 	addiu	t1,t1,12369
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:49
9fc00d2c:	3c0a0002 	lui	t2,0x2
9fc00d30:	254a81fc 	addiu	t2,t2,-32260
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:50
9fc00d34:	3c0b0000 	lui	t3,0x0
9fc00d38:	256b0000 	addiu	t3,t3,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:51
9fc00d3c:	3c0c48d9 	lui	t4,0x48d9
9fc00d40:	258c60c8 	addiu	t4,t4,24776
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:52
9fc00d44:	712a0000 	madd	t1,t2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:53
9fc00d48:	00001010 	mfhi	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:54
9fc00d4c:	144b001f 	bne	v0,t3,9fc00dcc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:55
9fc00d50:	00001012 	mflo	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:56
9fc00d54:	144c001d 	bne	v0,t4,9fc00dcc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:58
9fc00d58:	3c094000 	lui	t1,0x4000
9fc00d5c:	25290000 	addiu	t1,t1,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:59
9fc00d60:	3c0a0000 	lui	t2,0x0
9fc00d64:	254a0080 	addiu	t2,t2,128
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:60
9fc00d68:	3c0b0000 	lui	t3,0x0
9fc00d6c:	256b0020 	addiu	t3,t3,32
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:61
9fc00d70:	3c0c48d9 	lui	t4,0x48d9
9fc00d74:	258c60c8 	addiu	t4,t4,24776
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:62
9fc00d78:	712a0000 	madd	t1,t2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:63
9fc00d7c:	00001010 	mfhi	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:64
9fc00d80:	144b0012 	bne	v0,t3,9fc00dcc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:65
9fc00d84:	00001012 	mflo	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:66
9fc00d88:	144c0010 	bne	v0,t4,9fc00dcc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:68
9fc00d8c:	3c090002 	lui	t1,0x2
9fc00d90:	2529869f 	addiu	t1,t1,-31073
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:69
9fc00d94:	3c0a0002 	lui	t2,0x2
9fc00d98:	254a869f 	addiu	t2,t2,-31073
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:70
9fc00d9c:	3c0b0000 	lui	t3,0x0
9fc00da0:	256b0022 	addiu	t3,t3,34
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:71
9fc00da4:	3c0c9ce2 	lui	t4,0x9ce2
9fc00da8:	258c3789 	addiu	t4,t4,14217
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:72
9fc00dac:	712a0000 	madd	t1,t2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:73
9fc00db0:	00001010 	mfhi	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:74
9fc00db4:	144b0005 	bne	v0,t3,9fc00dcc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:75
9fc00db8:	00001012 	mflo	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:76
9fc00dbc:	144c0003 	bne	v0,t4,9fc00dcc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:78
9fc00dc0:	16400002 	bnez	s2,9fc00dcc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:79
9fc00dc4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:81
9fc00dc8:	26730001 	addiu	s3,s3,1

9fc00dcc <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:84
9fc00dcc:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:86
9fc00dd0:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:88
9fc00dd4:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:89
9fc00dd8:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n6_madd.S:90
9fc00ddc:	00000000 	nop

9fc00de0 <n7_maddu_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:7
9fc00de0:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:8
9fc00de4:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:10
9fc00de8:	3c040000 	lui	a0,0x0
9fc00dec:	24840000 	addiu	a0,a0,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:11
9fc00df0:	00800011 	mthi	a0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:12
9fc00df4:	00800013 	mtlo	a0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:13
9fc00df8:	00001010 	mfhi	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:14
9fc00dfc:	14440053 	bne	v0,a0,9fc00f4c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:15
9fc00e00:	00001012 	mflo	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:16
9fc00e04:	14440051 	bne	v0,a0,9fc00f4c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:18
9fc00e08:	3c090000 	lui	t1,0x0
9fc00e0c:	2529ffff 	addiu	t1,t1,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:19
9fc00e10:	3c0a0000 	lui	t2,0x0
9fc00e14:	254a0001 	addiu	t2,t2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:20
9fc00e18:	3c0b0000 	lui	t3,0x0
9fc00e1c:	256b0000 	addiu	t3,t3,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:21
9fc00e20:	3c0c0000 	lui	t4,0x0
9fc00e24:	258cffff 	addiu	t4,t4,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:22
9fc00e28:	712a0001 	maddu	t1,t2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:23
9fc00e2c:	00001010 	mfhi	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:24
9fc00e30:	144b0046 	bne	v0,t3,9fc00f4c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:25
9fc00e34:	00001012 	mflo	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:26
9fc00e38:	144c0044 	bne	v0,t4,9fc00f4c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:28
9fc00e3c:	3c090000 	lui	t1,0x0
9fc00e40:	25290001 	addiu	t1,t1,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:29
9fc00e44:	3c0a0000 	lui	t2,0x0
9fc00e48:	254a0001 	addiu	t2,t2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:30
9fc00e4c:	3c0b0000 	lui	t3,0x0
9fc00e50:	256b0001 	addiu	t3,t3,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:31
9fc00e54:	3c0c0000 	lui	t4,0x0
9fc00e58:	258c0000 	addiu	t4,t4,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:32
9fc00e5c:	712a0001 	maddu	t1,t2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:33
9fc00e60:	00001010 	mfhi	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:34
9fc00e64:	144b0039 	bne	v0,t3,9fc00f4c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:35
9fc00e68:	00001012 	mflo	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:36
9fc00e6c:	144c0037 	bne	v0,t4,9fc00f4c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:38
9fc00e70:	3c090000 	lui	t1,0x0
9fc00e74:	25290003 	addiu	t1,t1,3
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:39
9fc00e78:	3c0a0000 	lui	t2,0x0
9fc00e7c:	254a0004 	addiu	t2,t2,4
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:40
9fc00e80:	3c0b0000 	lui	t3,0x0
9fc00e84:	256b0001 	addiu	t3,t3,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:41
9fc00e88:	3c0c0000 	lui	t4,0x0
9fc00e8c:	258c000c 	addiu	t4,t4,12
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:42
9fc00e90:	712a0001 	maddu	t1,t2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:43
9fc00e94:	00001010 	mfhi	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:44
9fc00e98:	144b002c 	bne	v0,t3,9fc00f4c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:45
9fc00e9c:	00001012 	mflo	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:46
9fc00ea0:	144c002a 	bne	v0,t4,9fc00f4c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:48
9fc00ea4:	3c090000 	lui	t1,0x0
9fc00ea8:	25293051 	addiu	t1,t1,12369
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:49
9fc00eac:	3c0a0002 	lui	t2,0x2
9fc00eb0:	254a81fc 	addiu	t2,t2,-32260
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:50
9fc00eb4:	3c0b0000 	lui	t3,0x0
9fc00eb8:	256b0001 	addiu	t3,t3,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:51
9fc00ebc:	3c0c48d9 	lui	t4,0x48d9
9fc00ec0:	258c60c8 	addiu	t4,t4,24776
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:52
9fc00ec4:	712a0001 	maddu	t1,t2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:53
9fc00ec8:	00001010 	mfhi	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:54
9fc00ecc:	144b001f 	bne	v0,t3,9fc00f4c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:55
9fc00ed0:	00001012 	mflo	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:56
9fc00ed4:	144c001d 	bne	v0,t4,9fc00f4c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:58
9fc00ed8:	3c094000 	lui	t1,0x4000
9fc00edc:	25290000 	addiu	t1,t1,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:59
9fc00ee0:	3c0a0000 	lui	t2,0x0
9fc00ee4:	254a0080 	addiu	t2,t2,128
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:60
9fc00ee8:	3c0b0000 	lui	t3,0x0
9fc00eec:	256b0021 	addiu	t3,t3,33
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:61
9fc00ef0:	3c0c48d9 	lui	t4,0x48d9
9fc00ef4:	258c60c8 	addiu	t4,t4,24776
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:62
9fc00ef8:	712a0001 	maddu	t1,t2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:63
9fc00efc:	00001010 	mfhi	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:64
9fc00f00:	144b0012 	bne	v0,t3,9fc00f4c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:65
9fc00f04:	00001012 	mflo	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:66
9fc00f08:	144c0010 	bne	v0,t4,9fc00f4c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:68
9fc00f0c:	3c090002 	lui	t1,0x2
9fc00f10:	2529869f 	addiu	t1,t1,-31073
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:69
9fc00f14:	3c0a0002 	lui	t2,0x2
9fc00f18:	254a869f 	addiu	t2,t2,-31073
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:70
9fc00f1c:	3c0b0000 	lui	t3,0x0
9fc00f20:	256b0023 	addiu	t3,t3,35
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:71
9fc00f24:	3c0c9ce2 	lui	t4,0x9ce2
9fc00f28:	258c3789 	addiu	t4,t4,14217
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:72
9fc00f2c:	712a0001 	maddu	t1,t2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:73
9fc00f30:	00001010 	mfhi	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:74
9fc00f34:	144b0005 	bne	v0,t3,9fc00f4c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:75
9fc00f38:	00001012 	mflo	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:76
9fc00f3c:	144c0003 	bne	v0,t4,9fc00f4c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:78
9fc00f40:	16400002 	bnez	s2,9fc00f4c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:79
9fc00f44:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:81
9fc00f48:	26730001 	addiu	s3,s3,1

9fc00f4c <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:84
9fc00f4c:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:86
9fc00f50:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:88
9fc00f54:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:89
9fc00f58:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n7_maddu.S:90
9fc00f5c:	00000000 	nop

9fc00f60 <n8_msub_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:7
9fc00f60:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:8
9fc00f64:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:10
9fc00f68:	3c040000 	lui	a0,0x0
9fc00f6c:	24840000 	addiu	a0,a0,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:11
9fc00f70:	00800011 	mthi	a0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:12
9fc00f74:	00800013 	mtlo	a0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:13
9fc00f78:	00001010 	mfhi	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:14
9fc00f7c:	14440053 	bne	v0,a0,9fc010cc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:15
9fc00f80:	00001012 	mflo	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:16
9fc00f84:	14440051 	bne	v0,a0,9fc010cc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:18
9fc00f88:	3c090000 	lui	t1,0x0
9fc00f8c:	2529ffff 	addiu	t1,t1,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:19
9fc00f90:	3c0a0000 	lui	t2,0x0
9fc00f94:	254a0001 	addiu	t2,t2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:20
9fc00f98:	3c0b0000 	lui	t3,0x0
9fc00f9c:	256b0000 	addiu	t3,t3,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:21
9fc00fa0:	3c0c0000 	lui	t4,0x0
9fc00fa4:	258c0001 	addiu	t4,t4,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:22
9fc00fa8:	712a0004 	msub	t1,t2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:23
9fc00fac:	00001010 	mfhi	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:24
9fc00fb0:	144b0046 	bne	v0,t3,9fc010cc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:25
9fc00fb4:	00001012 	mflo	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:26
9fc00fb8:	144c0044 	bne	v0,t4,9fc010cc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:28
9fc00fbc:	3c090000 	lui	t1,0x0
9fc00fc0:	25290001 	addiu	t1,t1,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:29
9fc00fc4:	3c0a0000 	lui	t2,0x0
9fc00fc8:	254a0001 	addiu	t2,t2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:30
9fc00fcc:	3c0b0000 	lui	t3,0x0
9fc00fd0:	256b0000 	addiu	t3,t3,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:31
9fc00fd4:	3c0c0000 	lui	t4,0x0
9fc00fd8:	258c0000 	addiu	t4,t4,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:32
9fc00fdc:	712a0004 	msub	t1,t2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:33
9fc00fe0:	00001010 	mfhi	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:34
9fc00fe4:	144b0039 	bne	v0,t3,9fc010cc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:35
9fc00fe8:	00001012 	mflo	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:36
9fc00fec:	144c0037 	bne	v0,t4,9fc010cc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:38
9fc00ff0:	3c090000 	lui	t1,0x0
9fc00ff4:	25290003 	addiu	t1,t1,3
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:39
9fc00ff8:	3c0a0000 	lui	t2,0x0
9fc00ffc:	254afffc 	addiu	t2,t2,-4
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:40
9fc01000:	3c0b0000 	lui	t3,0x0
9fc01004:	256b0000 	addiu	t3,t3,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:41
9fc01008:	3c0c0000 	lui	t4,0x0
9fc0100c:	258c000c 	addiu	t4,t4,12
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:42
9fc01010:	712a0004 	msub	t1,t2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:43
9fc01014:	00001010 	mfhi	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:44
9fc01018:	144b002c 	bne	v0,t3,9fc010cc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:45
9fc0101c:	00001012 	mflo	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:46
9fc01020:	144c002a 	bne	v0,t4,9fc010cc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:48
9fc01024:	3c090000 	lui	t1,0x0
9fc01028:	25293051 	addiu	t1,t1,12369
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:49
9fc0102c:	3c0afffe 	lui	t2,0xfffe
9fc01030:	254a7e04 	addiu	t2,t2,32260
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:50
9fc01034:	3c0b0000 	lui	t3,0x0
9fc01038:	256b0000 	addiu	t3,t3,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:51
9fc0103c:	3c0c48d9 	lui	t4,0x48d9
9fc01040:	258c60c8 	addiu	t4,t4,24776
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:52
9fc01044:	712a0004 	msub	t1,t2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:53
9fc01048:	00001010 	mfhi	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:54
9fc0104c:	144b001f 	bne	v0,t3,9fc010cc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:55
9fc01050:	00001012 	mflo	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:56
9fc01054:	144c001d 	bne	v0,t4,9fc010cc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:58
9fc01058:	3c094000 	lui	t1,0x4000
9fc0105c:	25290000 	addiu	t1,t1,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:59
9fc01060:	3c0a0000 	lui	t2,0x0
9fc01064:	254a0080 	addiu	t2,t2,128
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:60
9fc01068:	3c0b8000 	lui	t3,0x8000
9fc0106c:	256b001f 	addiu	t3,t3,31
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:61
9fc01070:	3c0cb727 	lui	t4,0xb727
9fc01074:	258c9f38 	addiu	t4,t4,-24776
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:62
9fc01078:	712a0004 	msub	t1,t2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:63
9fc0107c:	00001010 	mfhi	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:64
9fc01080:	144b0012 	bne	v0,t3,9fc010cc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:65
9fc01084:	00001012 	mflo	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:66
9fc01088:	144c0010 	bne	v0,t4,9fc010cc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:68
9fc0108c:	3c090002 	lui	t1,0x2
9fc01090:	2529869f 	addiu	t1,t1,-31073
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:69
9fc01094:	3c0afffe 	lui	t2,0xfffe
9fc01098:	254a7961 	addiu	t2,t2,31073
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:70
9fc0109c:	3c0b8000 	lui	t3,0x8000
9fc010a0:	256b001d 	addiu	t3,t3,29
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:71
9fc010a4:	3c0c631e 	lui	t4,0x631e
9fc010a8:	258cc877 	addiu	t4,t4,-14217
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:72
9fc010ac:	712a0004 	msub	t1,t2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:73
9fc010b0:	00001010 	mfhi	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:74
9fc010b4:	144b0005 	bne	v0,t3,9fc010cc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:75
9fc010b8:	00001012 	mflo	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:76
9fc010bc:	144c0003 	bne	v0,t4,9fc010cc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:78
9fc010c0:	16400002 	bnez	s2,9fc010cc <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:79
9fc010c4:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:81
9fc010c8:	26730001 	addiu	s3,s3,1

9fc010cc <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:84
9fc010cc:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:86
9fc010d0:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:88
9fc010d4:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:89
9fc010d8:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n8_msub.S:90
9fc010dc:	00000000 	nop

9fc010e0 <n9_msubu_test>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:7
9fc010e0:	26100001 	addiu	s0,s0,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:8
9fc010e4:	24120000 	li	s2,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:10
9fc010e8:	3c040000 	lui	a0,0x0
9fc010ec:	24840000 	addiu	a0,a0,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:11
9fc010f0:	00800011 	mthi	a0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:12
9fc010f4:	00800013 	mtlo	a0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:13
9fc010f8:	00001010 	mfhi	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:14
9fc010fc:	14440053 	bne	v0,a0,9fc0124c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:15
9fc01100:	00001012 	mflo	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:16
9fc01104:	14440051 	bne	v0,a0,9fc0124c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:18
9fc01108:	3c090000 	lui	t1,0x0
9fc0110c:	2529ffff 	addiu	t1,t1,-1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:19
9fc01110:	3c0a0000 	lui	t2,0x0
9fc01114:	254a0001 	addiu	t2,t2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:20
9fc01118:	3c0b0000 	lui	t3,0x0
9fc0111c:	256b0000 	addiu	t3,t3,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:21
9fc01120:	3c0c0000 	lui	t4,0x0
9fc01124:	258c0001 	addiu	t4,t4,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:22
9fc01128:	712a0005 	msubu	t1,t2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:23
9fc0112c:	00001010 	mfhi	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:24
9fc01130:	144b0046 	bne	v0,t3,9fc0124c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:25
9fc01134:	00001012 	mflo	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:26
9fc01138:	144c0044 	bne	v0,t4,9fc0124c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:28
9fc0113c:	3c090000 	lui	t1,0x0
9fc01140:	25290001 	addiu	t1,t1,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:29
9fc01144:	3c0a0000 	lui	t2,0x0
9fc01148:	254a0001 	addiu	t2,t2,1
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:30
9fc0114c:	3c0b0000 	lui	t3,0x0
9fc01150:	256b0000 	addiu	t3,t3,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:31
9fc01154:	3c0c0000 	lui	t4,0x0
9fc01158:	258c0000 	addiu	t4,t4,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:32
9fc0115c:	712a0005 	msubu	t1,t2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:33
9fc01160:	00001010 	mfhi	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:34
9fc01164:	144b0039 	bne	v0,t3,9fc0124c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:35
9fc01168:	00001012 	mflo	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:36
9fc0116c:	144c0037 	bne	v0,t4,9fc0124c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:38
9fc01170:	3c090000 	lui	t1,0x0
9fc01174:	25290003 	addiu	t1,t1,3
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:39
9fc01178:	3c0a0000 	lui	t2,0x0
9fc0117c:	254afffc 	addiu	t2,t2,-4
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:40
9fc01180:	3c0b0000 	lui	t3,0x0
9fc01184:	256b0000 	addiu	t3,t3,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:41
9fc01188:	3c0c0000 	lui	t4,0x0
9fc0118c:	258c000c 	addiu	t4,t4,12
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:42
9fc01190:	712a0005 	msubu	t1,t2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:43
9fc01194:	00001010 	mfhi	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:44
9fc01198:	144b002c 	bne	v0,t3,9fc0124c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:45
9fc0119c:	00001012 	mflo	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:46
9fc011a0:	144c002a 	bne	v0,t4,9fc0124c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:48
9fc011a4:	3c090000 	lui	t1,0x0
9fc011a8:	25293051 	addiu	t1,t1,12369
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:49
9fc011ac:	3c0afffe 	lui	t2,0xfffe
9fc011b0:	254a7e04 	addiu	t2,t2,32260
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:50
9fc011b4:	3c0b0000 	lui	t3,0x0
9fc011b8:	256b0000 	addiu	t3,t3,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:51
9fc011bc:	3c0c48d9 	lui	t4,0x48d9
9fc011c0:	258c60c8 	addiu	t4,t4,24776
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:52
9fc011c4:	712a0005 	msubu	t1,t2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:53
9fc011c8:	00001010 	mfhi	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:54
9fc011cc:	144b001f 	bne	v0,t3,9fc0124c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:55
9fc011d0:	00001012 	mflo	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:56
9fc011d4:	144c001d 	bne	v0,t4,9fc0124c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:58
9fc011d8:	3c094000 	lui	t1,0x4000
9fc011dc:	25290000 	addiu	t1,t1,0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:59
9fc011e0:	3c0a0000 	lui	t2,0x0
9fc011e4:	254a0080 	addiu	t2,t2,128
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:60
9fc011e8:	3c0b0000 	lui	t3,0x0
9fc011ec:	256bffe0 	addiu	t3,t3,-32
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:61
9fc011f0:	3c0c48d9 	lui	t4,0x48d9
9fc011f4:	258c60c8 	addiu	t4,t4,24776
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:62
9fc011f8:	712a0005 	msubu	t1,t2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:63
9fc011fc:	00001010 	mfhi	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:64
9fc01200:	144b0012 	bne	v0,t3,9fc0124c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:65
9fc01204:	00001012 	mflo	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:66
9fc01208:	144c0010 	bne	v0,t4,9fc0124c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:68
9fc0120c:	3c090002 	lui	t1,0x2
9fc01210:	2529869f 	addiu	t1,t1,-31073
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:69
9fc01214:	3c0afffe 	lui	t2,0xfffe
9fc01218:	254a7961 	addiu	t2,t2,31073
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:70
9fc0121c:	3c0b0000 	lui	t3,0x0
9fc01220:	256bffe2 	addiu	t3,t3,-30
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:71
9fc01224:	3c0c9ce2 	lui	t4,0x9ce2
9fc01228:	258c3789 	addiu	t4,t4,14217
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:72
9fc0122c:	712a0005 	msubu	t1,t2
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:73
9fc01230:	00001010 	mfhi	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:74
9fc01234:	144b0005 	bne	v0,t3,9fc0124c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:75
9fc01238:	00001012 	mflo	v0
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:76
9fc0123c:	144c0003 	bne	v0,t4,9fc0124c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:78
9fc01240:	16400002 	bnez	s2,9fc0124c <inst_error>
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:79
9fc01244:	00000000 	nop
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:81
9fc01248:	26730001 	addiu	s3,s3,1

9fc0124c <inst_error>:
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:84
9fc0124c:	00104e00 	sll	t1,s0,0x18
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:86
9fc01250:	01334025 	or	t0,t1,s3
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:88
9fc01254:	ae280000 	sw	t0,0(s1)
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:89
9fc01258:	03e00008 	jr	ra
/home/zymelaii/workspace/ReMIPS/test/testcase/func_extra/inst/n9_msubu.S:90
9fc0125c:	00000000 	nop
inst_error():
9fc01260:	9e3f7f70 	0x9e3f7f70
	...
